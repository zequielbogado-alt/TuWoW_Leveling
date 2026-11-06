-- Guide registry: packs, guides and Era map frames registered by guide
-- packs at load time, plus the picker queries (List, Suggestions, Suggest).
-- Validation and conditions live in GuidesValidate.lua.

local ADDON, ns = ...
local L = ns.L

local type, pairs, ipairs, tostring, tonumber = type, pairs, ipairs, tostring, tonumber

local Guides = ns.Guides
local Own = Guides._own
local isNum, isStr = Own.isNum, Own.isStr
local validate = Guides.Validate
local guideMatches = Guides.GuideMatches

local guides = {} -- id -> guide
local order = {} -- ids in first-registration order
local headers = {} -- id -> header (guide without steps, plus stepCount)
local packs = {} -- pack id -> the record holding that id
local records = {} -- every pack record, refused ones included, in registration order
local early = {} -- pack id -> { guide id, ... } registered before their pack

ns.MapFrames = ns.MapFrames or { era = {} }
local ourFrames = {} -- uiMapID -> true: a frame from Polestar itself or our guide pack

---------------------------------------------------------------------------
-- Packs
---------------------------------------------------------------------------

Guides.FORMATS = { [1] = true, [2] = true, [3] = true, [4] = true, [5] = true, [6] = true, [7] = true, [8] = true, [9] = true }
Guides.RESERVED = { guides = true, forever = true, lookup = true, draft = true, polestar = true, imported = true }
local OFFICIAL_ADDONS = { Polestar_Guides = true, TuWoW_Leveling = true, [ADDON] = true }
local REQUIRED_META = { "addon", "title", "author", "version", "license" }
local OPTIONAL_META = { "website", "source", "notes" }

local find = string.find

function Guides.OwnsId(packId, guideId)
	if type(packId) ~= "string" or type(guideId) ~= "string" then return false end
	if packId == "guides" then
		return guideId:sub(1, 8) == "forever/" or guideId:sub(1, 6) == "draft/"
			or guideId:sub(1, 6) == "tuwow/" or guideId:sub(1, 6) == "zygor/" or guideId:sub(1, 8) == "classic/"
	end
	if packId == "lookup" then return guideId:sub(1, 7) == "lookup/" end
	if packId == "imported" then
		local prefix = guideId:match("^([a-z0-9][a-z0-9%-]*)/.")
		return prefix ~= nil and #prefix >= 2 and #prefix <= 32 and not Guides.RESERVED[prefix]
	end
	return guideId:sub(1, #packId + 1) == packId .. "/"
end
local ownsId = Guides.OwnsId

local function prefixOf(packId)
	if packId == "guides" then return "forever/, tuwow/, zygor/, draft/" end
	if packId == "imported" then return "<author>/" end
	return packId .. "/"
end

local function validPackId(id)
	return type(id) == "string" and #id >= 2 and #id <= 32 and find(id, "^[a-z0-9][a-z0-9%-]*$") ~= nil
end

local function accepted(r)
	return r.status == "on" or r.status == "off"
end

local function tooNewReason(needs)
	return needs and (L["Needs Polestar %s or newer."]):format(needs) or L["Needs a newer Polestar."]
end

local function problem(r, kind, message, guideId)
	r.problems[#r.problems + 1] = { kind = kind, guide = guideId, message = message }
	ns.Debug(("pack %s: %s"):format(tostring(r.id), message))
end

local escape = ns.EscapeText
local ID_KEYS = { id = true, pack = true, next = true, nextChoices = true }
local DEFERRED_SKIP = { id = true, pack = true, next = true, nextChoices = true, stepsSrc = true }
local function escapeTree(t, seen, skip)
	seen[t] = true
	for k, v in pairs(t) do
		if not (skip and skip[k]) then
			local tv = type(v)
			if tv == "string" then
				if find(v, "|", 1, true) then t[k] = escape(v) end
			elseif tv == "table" and not seen[v] then
				escapeTree(v, seen)
			end
		end
	end
end

local function newRecord(meta, addon)
	local r = {
		id = type(meta.id) == "string" and meta.id or tostring(meta.id),
		addon = type(addon) == "string" and addon or nil,
		format = meta.format,
		official = meta.id == "guides" and OFFICIAL_ADDONS[addon] or false,
		problems = {},
		guides = {},
		guideCount = 0,
	}
	for _, key in ipairs(REQUIRED_META) do
		if key ~= "addon" and type(meta[key]) == "string" then r[key] = escape(meta[key]) end
	end
	for _, key in ipairs(OPTIONAL_META) do
		if type(meta[key]) == "string" then r[key] = escape(meta[key]) end
	end
	r.english = { title = type(meta.title) == "string" and meta.title or nil, notes = type(meta.notes) == "string" and meta.notes or nil }
	records[#records + 1] = r
	return r
end

local function refuse(r, message)
	r.status = "refused"
	r.reason = message
	r.refusal = message
	problem(r, "pack-refused", message)
	r.refusalProblem = r.problems[#r.problems]
	return false, message
end

local loadingRefused = nil
local loaded = {}

local function dropGuide(r, id)
	r.dropped = (r.dropped or 0) + 1
	local n = r.dropped == 1 and L["1 guide dropped."] or (L["%d guides dropped."]):format(r.dropped)
	r.reason = r.refusal .. " " .. n
	r.refusalProblem.message = r.reason
	ns.Debug(("guide %s dropped: pack %s from %s was refused"):format(id, tostring(r.id), tostring(r.addon)))
	return false, "pack refused"
end

function ns.RegisterPack(meta)
	if type(meta) ~= "table" then
		ns.Debug("RegisterPack: the pack is not a table")
		return false, "pack is not a table"
	end
	local id = meta.id
	if id == "lookup" and meta.internal and not packs[id] then
		local r = newRecord(meta, nil)
		r.internal = true
		packs[id] = r
		r.status = "on"
		return true
	end
	if id == "imported" and meta.imported and not packs[id] then
		local r = newRecord(meta, nil)
		r.imported = true
		packs[id] = r
		r.status = "on"
		return true
	end
	local addon = meta.addon
	local r = newRecord(meta, addon)
	loadingRefused = nil
	if meta.internal then
		if Guides.RESERVED[id] or packs[id] then loadingRefused = r end
		return refuse(r, L["Only Polestar's own Lookup pack may register as internal."])
	end
	if not validPackId(id) then
		return refuse(r, (L["Pack id %s is not valid: 2 to 32 lower-case letters, digits or hyphens, starting with a letter or digit."]):format(escape(r.id)))
	end
	if Guides.RESERVED[id] and not (id == "guides" and OFFICIAL_ADDONS[addon]) then
		loadingRefused = r
		return refuse(r, (L["Pack id %s is reserved for Polestar."]):format(id))
	end
	local holder = packs[id]
	if holder then
		loadingRefused = r
		return refuse(r, (L["Pack id %s is already taken by %s; %s was refused."]):format(id,
			escape(tostring(holder.addon or "?")), escape(tostring(addon or "?"))))
	end
	packs[id] = r
	if type(meta.format) ~= "number" then return refuse(r, L["The pack is missing format."]) end
	if not Guides.FORMATS[meta.format] then
		local needs = type(addon) == "string" and C_AddOns and C_AddOns.GetAddOnMetadata
			and C_AddOns.GetAddOnMetadata(addon, "X-Polestar-Needs") or nil
		r.status = "too-new"
		r.needs = type(needs) == "string" and needs ~= "" and escape(needs) or nil
		r.reason = tooNewReason(r.needs)
		problem(r, "pack-refused", r.reason)
		return false, r.reason
	end
	for _, key in ipairs(REQUIRED_META) do
		if not isStr(meta[key]) then return refuse(r, (L["The pack is missing %s."]):format(key)) end
	end
	r.status = "on"
	local before = early[id]
	if before then
		early[id] = nil
		for _, gid in ipairs(before) do
			problem(r, "guide-refused", (L["Guide %s was refused: it was registered before its pack."]):format(escape(gid)), gid)
		end
	end
	return true
end

function Own.stepImages(steps, r)
	for _, step in ipairs(steps) do
		local image = step.image
		if image then
			image.texture = r and r.addon and ("Interface\\AddOns\\" .. r.addon .. "\\" .. (image.file:gsub("/", "\\"))) or nil
		end
	end
end

---------------------------------------------------------------------------
-- Deferred steps
---------------------------------------------------------------------------

Own.live = {}

function Guides.Steps(def)
	local steps = rawget(def, "steps")
	if steps or type(rawget(def, "stepsSrc")) ~= "string" then return steps end
	local fn = loadstring(def.stepsSrc, "=" .. tostring(def.id))
	local ok, list = false, nil
	if fn then setfenv(fn, {}); ok, list = pcall(fn) end
	local err = not (ok and type(list) == "table") and "bad steps" or Own.validateSteps(list)
	if err then
		local r = packs[def.pack]
		if r then problem(r, "guide-refused", (L["Guide %s was refused: %s."]):format(escape(def.id), escape(err)), def.id) end
		list = { { title = def.title, goals = { { t = "note", text = L["This guide could not be read."] } } } }
	end
	Own.stepImages(list, packs[def.pack])
	Own.packedGoals(list)
	rawset(def, "steps", list)
	ns.GuideTexts.PrepareSteps(def)
	escapeTree(list, {}, ID_KEYS)
	Own.live[def.id] = true
	return list
end

Own.DEFERRED = { __index = function(def, k) if k == "steps" then return Guides.Steps(def) end end }

function Guides.Release(id)
	local def = guides[id]
	if not (def and Own.live[id] and type(rawget(def, "stepsSrc")) == "string") then return false end
	ns.GuideTexts.DropSteps(def)
	rawset(def, "steps", nil)
	Own.live[id] = nil
	return true
end

function Guides.ReleaseExcept(keep)
	for id in pairs(Own.live) do
		if not keep[id] then Guides.Release(id) end
	end
end

function Own.sweep()
	local E = ns.Engine
	if E and E.TabIds then Guides.ReleaseExcept(E.TabIds()) end
end
ns.On("TABS_CHANGED", Own.sweep)
ns.On("GUIDE_CHANGED", Own.sweep)

function ns.PartWants(classes)
	if type(classes) ~= "table" or #classes == 0 then return true end
	if not UnitClass then return true end
	local _, cls = UnitClass("player")
	if not cls then return true end
	for i = 1, #classes do
		if classes[i] == cls then return true end
	end
	return false
end

function ns.RegisterGuide(def)
	if type(def) ~= "table" or not isStr(def.id) then
		local err = type(def) ~= "table" and "guide is not a table" or "missing id"
		ns.Debug("RegisterGuide: rejected:", err)
		return false, err
	end
	local id, packId = def.id, def.pack
	if not isStr(packId) then
		ns.Debug(("guide %s rejected: no pack"):format(id))
		return false, "no pack"
	end
	if loadingRefused and loadingRefused.id == packId then return dropGuide(loadingRefused, id) end
	local r = packs[packId]
	if not r then
		local list = early[packId]
		if not list then
			list = {}
			early[packId] = list
		end
		list[#list + 1] = id
		ns.Debug(("guide %s rejected: pack %s is not registered"):format(id, packId))
		return false, "pack not registered"
	end
	if not accepted(r) then
		ns.Debug(("guide %s dropped: pack %s was not loaded"):format(id, packId))
		return false, "pack " .. r.status
	end
	if not ownsId(packId, id) then
		local message = (L["Guide %s was refused: its id must start with %s."]):format(escape(id), prefixOf(packId))
		problem(r, "guide-refused", message, id)
		return false, message
	end
	local held = guides[id]
	if held and held.pack ~= packId then
		local message = (L["Guide %s was refused: %s already holds that id."]):format(escape(id), escape(tostring(held.pack)))
		problem(r, "guide-refused", message, id)
		return false, message
	end
	local err = validate(def)
	if err then
		problem(r, "guide-refused", (L["Guide %s was refused: %s."]):format(escape(id), escape(err)), id)
		return false, err
	end
	local deferred = rawget(def, "steps") == nil
	if not deferred then
		Own.stepImages(def.steps, r)
		Own.packedGoals(def.steps)
	end
	ns.GuideTexts.Prepare(def, not (r.addon and not loaded[r.addon]))
	escapeTree(def, {}, DEFERRED_SKIP)
	if deferred then setmetatable(def, Own.DEFERRED) end
	if not guides[id] then
		order[#order + 1] = id
		r.guides[#r.guides + 1] = id
		r.guideCount = #r.guides
	end
	guides[id] = def
	local h = {}
	for k, v in pairs(def) do
		if k ~= "steps" and k ~= "stepsSrc" then h[k] = v end
	end
	h.stepCount = deferred and def.stepCount or #def.steps
	headers[id] = h
	return true
end

function ns.RegisterMapFrames(frames, packId)
	if type(frames) ~= "table" then return end
	local era = frames.era
	if type(era) ~= "table" then return end
	if loadingRefused and loadingRefused.id == packId then
		ns.Debug("RegisterMapFrames: pack", tostring(packId), "was refused")
		return
	end
	local ours = packId == nil or packId == "guides"
	if not ours then
		local r = packs[packId]
		if not (r and accepted(r)) then
			ns.Debug("RegisterMapFrames: pack not registered", tostring(packId))
			return
		end
	end
	for map, b in pairs(era) do
		if type(b) == "table" and isNum(b.c) and isNum(b.left) and isNum(b.right) and isNum(b.top) and isNum(b.bottom) then
			local key = tonumber(map) or map
			if ours then
				ns.MapFrames.era[key] = b
				ourFrames[key] = true
			elseif not ourFrames[key] then
				ns.MapFrames.era[key] = b
			else
				ns.Debug("RegisterMapFrames: pack", packId, "differs from ours for map", tostring(map))
			end
		else
			ns.Debug("RegisterMapFrames: bad bounds for map", tostring(map))
		end
	end
end

---------------------------------------------------------------------------
-- Switching packs off and on
---------------------------------------------------------------------------

local function packState(id)
	local db = PolestarDB
	local all = type(db) == "table" and db.packs
	local p = type(all) == "table" and all[id]
	return type(p) == "table" and p or nil
end

function Guides.PackShown(id)
	local r = packs[id]
	if r and r.internal then return true end
	local p = packState(id)
	return not (p and p.off)
end
local packShown = Guides.PackShown

local function packVisible(r)
	return accepted(r) and packShown(r.id)
end

local function visible(g)
	local r = packs[g.pack]
	return r ~= nil and packVisible(r)
end

local function syncStatus(r)
	if accepted(r) then r.status = packShown(r.id) and "on" or "off" end
	return r
end

function Guides.SetPackShown(id, shown)
	if type(id) ~= "string" or (packs[id] and packs[id].internal) then return end
	shown = shown and true or false
	if packShown(id) == shown then return end
	local db = ns.DB()
	if type(db.packs) ~= "table" then db.packs = {} end
	if shown then
		local p = db.packs[id]
		if type(p) == "table" then
			p.off = nil
			if next(p) == nil then db.packs[id] = nil end
		end
	else
		if type(db.packs[id]) ~= "table" then db.packs[id] = {} end
		db.packs[id].off = true
	end
	if packs[id] then syncStatus(packs[id]) end
	ns.Fire("PACKS_CHANGED", id)
end

function Guides.Pack(id)
	if id == nil then return nil end
	local r = packs[id]
	if r then return syncStatus(r) end
	for i = 1, #records do
		if records[i].id == id then return syncStatus(records[i]) end
	end
	return nil
end

function Guides.Packs()
	local out = {}
	for i = 1, #records do
		if not (records[i].internal or records[i].imported) then out[#out + 1] = syncStatus(records[i]) end
	end
	table.sort(out, function(a, b)
		if a.official ~= b.official then return a.official end
		local ta, tb = (a.title or a.id):lower(), (b.title or b.id):lower()
		if ta ~= tb then return ta < tb end
		if a.id ~= b.id then return a.id < b.id end
		return tostring(a.addon) < tostring(b.addon)
	end)
	return out
end

function Guides.ProblemCount()
	local n = 0
	for _, r in ipairs(Guides.Packs()) do n = n + #r.problems end
	return n
end

---------------------------------------------------------------------------
-- Packs on disk
---------------------------------------------------------------------------

local installed = {}

local function meta(addon, field)
	local v = C_AddOns.GetAddOnMetadata(addon, field)
	return type(v) == "string" and v ~= "" and v or nil
end

local function registeredBy(addon)
	for i = 1, #records do
		local r = records[i]
		if r.addon == addon and r ~= installed[addon] then return r end
	end
end

local function forget(r)
	for i = #records, 1, -1 do
		if records[i] == r then table.remove(records, i) end
	end
end

local function noGuides(r)
	r.status = "broken"
	r.reason = L["Registered no guides."]
	if not r.noGuides then
		r.noGuides = true
		problem(r, "no-guides", r.reason)
	end
end

local function fromToc(r, name, reason, enabled)
	local title = meta(name, "Title")
	if title then title = title:gsub("^Polestar Community: ", ""):gsub("^Polestar Pack: ", "") end
	r.title = escape(title or name)
	for key, field in pairs({ author = "Author", version = "Version", license = "X-License", website = "X-Website" }) do
		local v = meta(name, field)
		r[key] = v and escape(v) or nil
	end
	r.format = tonumber(meta(name, "X-Polestar-Format"))
	local needs = meta(name, "X-Polestar-Needs")
	r.needs = needs and escape(needs) or nil
	r.reason = nil
	if r.format and not Guides.FORMATS[r.format] then
		r.status = "too-new"
		r.reason = tooNewReason(r.needs)
	elseif reason == "DISABLED" or not enabled then
		r.status = "disabled"
	elseif not C_AddOns.IsAddOnLoaded(name) then
		r.status = "not-loaded"
		local text = type(reason) == "string" and reason ~= "" and (_G["ADDON_" .. reason] or reason) or nil
		r.reason = text and escape(text) or nil
	else
		noGuides(r)
	end
end

function Guides.ScanInstalled()
	local A = C_AddOns
	if not (A and A.GetNumAddOns and A.GetAddOnInfo and A.GetAddOnMetadata and A.IsAddOnLoaded) then return end
	local player = UnitName and UnitName("player") or nil
	for i = 1, A.GetNumAddOns() do
		local name, _, _, _, reason = A.GetAddOnInfo(i)
		local id = type(name) == "string" and meta(name, "X-Polestar-Pack") or nil
		if id then
			local r = registeredBy(name)
			if r then
				if installed[name] then
					forget(installed[name])
					installed[name] = nil
				end
				if accepted(r) and r.guideCount == 0 then noGuides(r) end
			else
				r = installed[name]
				if not r then
					r = newRecord({ id = id }, name)
					installed[name] = r
				end
				local enabled = true
				if A.GetAddOnEnableState then
					local ok, state = pcall(A.GetAddOnEnableState, name, player)
					enabled = not (ok and state == 0)
				end
				fromToc(r, name, reason, enabled)
			end
		end
	end
end

---------------------------------------------------------------------------
-- Texts in the client's language
---------------------------------------------------------------------------

local GuideTexts = ns.GuideTexts
local loggedIn = false

local function relocalise(packId)
	local changed = false
	for id, def in pairs(guides) do
		if (packId == nil or def.pack == packId) and GuideTexts.Refresh(def) then
			changed = true
			local h = headers[id]
			if h then
				for _, k in ipairs(GuideTexts.GUIDE_FIELDS) do h[k] = def[k] end
			end
		end
	end
	for _, r in ipairs(records) do
		if (packId == nil or r.id == packId) and r.english then
			if r.english.title then r.title = escape(GuideTexts.PackText(r.id, r.english.title)) end
			if r.english.notes then r.notes = escape(GuideTexts.PackText(r.id, r.english.notes)) end
		end
	end
	if changed and loggedIn then ns.Fire("GUIDES_REGISTERED") end
end

local FACTIONS = { "Alliance", "Horde" }
local partsWaiting = {}

local function loadParts(name)
	local faction = ns.Compat.GetPlayerFaction()
	if not faction and not loggedIn then
		partsWaiting[name] = true
		return
	end
	partsWaiting[name] = nil
	for _, f in ipairs(FACTIONS) do
		if not faction or f == faction then
			local _, reason = ns.Data.Pack(name .. "_" .. f)
			if reason == "combat" then partsWaiting[name] = true end
		end
	end
	if partsWaiting[name] or not UnitRace then return end
	local _, race = UnitRace("player")
	race = ns.Compat.Readable(race)
	if type(race) ~= "string" or race == "" then return end
	local _, reason = ns.Data.Pack(name .. "_" .. race)
	if reason == "combat" then partsWaiting[name] = true end
end

local function registering(fn)
	local before = {}
	for _, r in ipairs(records) do before[r] = #r.guides end
	local count = #order
	fn()
	if #order == count then return false end
	if loggedIn then
		ns.Fire("GUIDES_REGISTERED")
		for _, r in ipairs(records) do
			if #r.guides > (before[r] or 0) then ns.Fire("PACKS_CHANGED", r.id) end
		end
	end
	return true
end

function Own.loadFactions(faction)
	for _, r in ipairs(records) do
		if r.addon and loaded[r.addon] and accepted(r) then
			for _, f in ipairs(FACTIONS) do
				if faction == "All" or f == faction then ns.Data.Pack(r.addon .. "_" .. f) end
			end
		end
	end
end

function Guides.LoadFaction(faction)
	return registering(function() Own.loadFactions(faction) end)
end

ns.RegisterEvent("ADDON_LOADED", function(_, name)
	loadingRefused = nil
	if type(name) ~= "string" then return end
	loaded[name] = true
	for _, r in ipairs(records) do
		if r.addon == name and accepted(r) then loadParts(name) end
	end
	if not ns.Names.Localised() then return end
	for _, r in ipairs(records) do
		if r.addon == name and accepted(r) then
			GuideTexts.Load(name)
			relocalise(r.id)
		end
	end
end)

ns.On("NAMES_LOADED", function() relocalise(nil) end)

ns.RegisterEvent("PLAYER_REGEN_ENABLED", function()
	for _, addon in ipairs(GuideTexts.Pending()) do
		if GuideTexts.Load(addon) == "loaded" then
			for _, r in ipairs(records) do
				if r.addon == addon and accepted(r) then relocalise(r.id) end
			end
		end
	end
	if next(partsWaiting) then
		registering(function()
			for name in pairs(partsWaiting) do loadParts(name) end
		end)
	end
end)

---------------------------------------------------------------------------
-- Queries
---------------------------------------------------------------------------

function Guides.Get(id)
	local g = id and guides[id]
	if g and visible(g) then return g end
	return nil
end

function Guides.List()
	local out = {}
	for i = 1, #order do
		local g = guides[order[i]]
		if visible(g) then out[#out + 1] = headers[order[i]] end
	end
	return out
end

local startOf = setmetatable({}, { __mode = "k" })
local function guideStart(g)
	local p = startOf[g]
	if p == nil then
		p = false
		for _, step in ipairs(g.steps) do
			for _, goal in ipairs(step.goals) do
				if goal.map and goal.x and goal.y then
					p = { map = goal.map, x = goal.x, y = goal.y, f = goal.f }
					break
				end
			end
			if p then break end
		end
		startOf[g] = p
	end
	return p or nil
end
Guides.Start = guideStart

function Guides.OfferedBy(id)
	local out = {}
	local E = ns.Engine
	for i = 1, #order do
		local g = guides[order[i]]
		if g.nextChoices and visible(g) then
			for _, c in ipairs(g.nextChoices) do
				if c == id then
					if not (E and E.RouteOffered) or E.RouteOffered(g.id, id) then out[#out + 1] = g end
					break
				end
			end
		end
	end
	return out
end

local function hasLeveling(r)
	for _, id in ipairs(r.guides) do
		local g = guides[id]
		if g and (g.category == nil or g.category == "Leveling") then return true end
	end
	return false
end

local function canSuggest(id)
	if id == "guides" then return true end
	local r = type(id) == "string" and packs[id]
	return r and not r.internal and not r.imported and packVisible(r) and hasLeveling(r) or false
end

function Guides.SuggestSources()
	local out = { "guides" }
	for _, r in ipairs(Guides.Packs()) do
		if r.id ~= "guides" and packs[r.id] == r and canSuggest(r.id) then out[#out + 1] = r.id end
	end
	return out
end

function Guides.SuggestSource()
	local from = ns.Get and ns.Get("behavior.suggestFrom")
	if type(from) == "string" and canSuggest(from) then return from end
	return "guides"
end

local TRAVEL_TIE = 120

local function less(a, b)
	for i = 1, #a do
		if a[i] ~= b[i] then return a[i] < b[i] end
	end
	return false
end

local function rank(packId, player, here, zone)
	local r = packs[packId]
	if not (r and packVisible(r)) then return {}, nil end
	local level = player.level or 1
	local fitting, best, bestKey = {}, nil, nil
	for i, id in ipairs(r.guides) do
		local g = guides[id]
		if (g.category == nil or g.category == "Leveling") and guideMatches(g, player) then
			local lo, hi = g.minLevel or 1, g.maxLevel or g.minLevel or 1
			if hi < lo then hi = lo end
			if level >= lo and level <= hi then
				local specific = ((g.races and #g.races > 0) or (g.classes and #g.classes > 0)) and 0 or 1
				local inZone = ((here and g.zone == here.map) or (zone and g.zoneName == zone)) and 0 or 1
				local band = math.huge
				local start = here and guideStart(g)
				if start then
					local cost = ns.TravelCost(here, start)
					if cost then band = math.floor(cost / TRAVEL_TIE) end
				end
				fitting[#fitting + 1] = { id = g.id, key = { inZone, band, specific, hi - lo, lo, i } }
			elseif #fitting == 0 then
				local key = lo > level and { 1, lo - level, hi - lo, i } or { 2, level - hi, hi - lo, i }
				if not bestKey or less(key, bestKey) then best, bestKey = g.id, key end
			end
		end
	end
	table.sort(fitting, function(a, b) return less(a.key, b.key) end)
	local out = {}
	for i = 1, #fitting do out[i] = fitting[i].id end
	return out, best
end

function Guides.Suggestions()
	local player = ns.Compat.GetPlayerInfo()
	local here = ns.PlayerPoint()
	local zone = ns.Compat.GetZoneText()
	local source = Guides.SuggestSource()
	local fitting, best = rank(source, player, here, zone)
	if #fitting > 0 then return fitting end
	if source ~= "guides" then
		local ours, oursBest = rank("guides", player, here, zone)
		if #ours > 0 then return ours end
		best = oursBest or best
	end
	return { best }
end

function Guides.Suggest()
	return Guides.Suggestions()[1]
end

function Guides.DropImported(id)
	local g = type(id) == "string" and guides[id]
	if not (g and g.pack == "imported") then return false end
	guides[id], headers[id] = nil, nil
	for i = #order, 1, -1 do
		if order[i] == id then table.remove(order, i) end
	end
	local r = packs.imported
	for i = #r.guides, 1, -1 do
		if r.guides[i] == id then table.remove(r.guides, i) end
	end
	r.guideCount = #r.guides
	return true
end

local retired = {}

function ns.RetireGuides(packId, list)
	if type(packId) ~= "string" or type(list) ~= "table" then return end
	for _, id in ipairs(list) do
		if type(id) == "string" then retired[id] = packId end
	end
end

function Guides.IsRetired(id)
	return retired[id] ~= nil
end

local bakedLegs = {}

function ns.RegisterLegs(packId, grid, list)
	if type(packId) ~= "string" or type(grid) ~= "string" or type(list) ~= "table" or not packs[packId] then return end
	local mine = ns.Compat and ns.Compat.GetPlayerFaction and ns.Compat.GetPlayerFaction()
	mine = mine and mine:lower()
	for id, steps in pairs(list) do
		local g = type(id) == "string" and guides[id]
		local side = g and type(g.faction) == "string" and g.faction:lower()
		if g and type(steps) == "table" and ownsId(packId, id) and not (mine and side and side ~= mine) then
			local kept = {}
			for s, leg in pairs(steps) do
				if type(s) == "number" and type(leg) == "string" then kept[s] = leg end
			end
			bakedLegs[id] = kept
		end
	end
end

function Guides.Legs(id)
	return bakedLegs[id]
end

function Guides.Successor(id)
	if not retired[id] or guides[id] then return nil end
	local fitting, best = rank(retired[id], ns.Compat.GetPlayerInfo(), ns.PlayerPoint(), ns.Compat.GetZoneText())
	return fitting[1] or best
end

function Guides.FirstGuide()
	local p = {}
	for k, v in pairs(ns.Compat.GetPlayerInfo()) do p[k] = v end
	p.level = 1
	local source = Guides.SuggestSource()
	local fitting = rank(source, p, nil, nil)
	if #fitting == 0 and source ~= "guides" then fitting = rank("guides", p, nil, nil) end
	return fitting[1]
end

function Own.loadForSaved()
	local s = ns.CharState and ns.CharState()
	if type(s) ~= "table" then return end
	local function absent(id)
		if type(id) ~= "string" or guides[id] or retired[id] then return false end
		for _, r in ipairs(records) do
			if r.addon and accepted(r) and ownsId(r.id, id) then return true end
		end
		return false
	end
	local missing = absent(s.guide)
	for _, id in ipairs(type(s.tabs) == "table" and s.tabs or {}) do missing = missing or absent(id) end
	if missing then Own.loadFactions("All") end
end

ns.OnLogin(function()
	loggedIn = true
	for name in pairs(partsWaiting) do loadParts(name) end
	Own.loadForSaved()
	Guides.ScanInstalled()
	if ns.Import then ns.Import.Load() end
	ns.Fire("GUIDES_REGISTERED")
end)
