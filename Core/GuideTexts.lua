-- ============================================================================
-- TuWoW_Leveling — Core/GuideTexts.lua
-- Guide text token replacement and localization (enUS / esES).
-- ============================================================================

local ADDON, ns = ...
local L = ns.L

local GuideTexts = {}
ns.GuideTexts = GuideTexts

local type, pairs, ipairs, tonumber, next = type, pairs, ipairs, tonumber, next
local find, sub, upper, concat = string.find, string.sub, string.upper, table.concat

local locale = (ns.ClientLocale and ns.ClientLocale()) or "enUS"
local english = (locale == "enUS")

GuideTexts.GUIDE_FIELDS = { "title", "why", "pitch", "folder" }
local GUIDE_FIELDS = { "title", "why", "pitch" }
local GUIDE_LISTS = { "pros", "cons" }
local STEP_FIELDS = { "title", "note" }
local GOAL_FIELDS = { "note", "text" }

local texts = {}
local prepared = setmetatable({}, { __mode = "k" })
local tried = {}

local function valid(s) return type(s) == "string" and s ~= "" end

function ns.RegisterGuideTexts(loc, packId, t)
	if loc == "esMX" then loc = "esES" end
	if loc ~= locale or english or type(packId) ~= "string" or type(t) ~= "table" then return false end
	local into = { pack = {}, guides = {} }
	if type(t.pack) == "table" then
		for k, v in pairs(t.pack) do if valid(k) and valid(v) then into.pack[k] = v end end
	end
	if type(t.guides) == "table" then
		for id, list in pairs(t.guides) do
			if valid(id) and type(list) == "table" then
				local g = {}
				for k, v in pairs(list) do if valid(k) and valid(v) then g[k] = v end end
				into.guides[id] = g
			end
		end
	end
	texts[packId] = into
	return true
end

local function localName(kind, id, en)
	if kind == "zone" then return ns.Names.Localised() and ns.Compat.GetMapName(id) or nil end
	if kind == "skill" then return L[en] end
	if kind == "spell" or kind == "faction" or kind == "area" then return ns.Names.Get(kind, id) end
	return ns.Names.Cached(kind, id)
end

local FILL_CAP = 8192

local function fill(s, names, live)
	if not find(s, "{", 1, true) then return s end
	local parts, n, at, total = {}, 0, 1, 0
	while true do
		local a, b, kind, id = find(s, "{(%l+):(%d+)}", at)
		if not a then break end
		local prefix = sub(s, at, a - 1)
		n = n + 1; parts[n] = prefix; total = total + #prefix
		local en = names[kind .. ":" .. id]
		local name = en and live and not english and localName(kind, tonumber(id), en) or nil
		local token
		if valid(name) then token = name
		elseif en then token = en
		else token = sub(s, a, b) end
		n = n + 1; parts[n] = token; total = total + #token
		at = b + 1
		if total >= FILL_CAP then break end
	end
	n = n + 1; parts[n] = sub(s, at)
	return concat(parts, "", 1, n)
end

local function render(def, entry, en, live)
	if english and entry.written[en] then return entry.written[en] end
	local t = texts[def.pack]
	local g = t and t.guides[def.id]
	return fill(g and g[en] or en, entry.names, live)
end

function GuideTexts.PackText(packId, s)
	local t = texts[packId]
	return t and valid(s) and t.pack[s] or s
end

local function collect(def, fields)
	local function add(holder, key)
		local v = holder[key]
		if valid(v) then
			fields[#fields + 1] = holder
			fields[#fields + 1] = key
			fields[#fields + 1] = v
		end
	end
	for _, f in ipairs(GUIDE_FIELDS) do add(def, f) end
	for _, f in ipairs(GUIDE_LISTS) do
		local list = def[f]
		if type(list) == "table" then for i = 1, #list do add(list, i) end end
	end
	if type(def.reward) == "table" then
		for _, r in ipairs(def.reward) do if type(r) == "table" then add(r, "text") end end
	end
	for _, step in ipairs(rawget(def, "steps") or {}) do
		for _, f in ipairs(STEP_FIELDS) do add(step, f) end
		for _, goal in ipairs(step.goals) do
			if type(goal) == "table" then
				for _, f in ipairs(GOAL_FIELDS) do add(goal, f) end
				if goal.t == "kill" and goal.npc == nil then add(goal, "target") end
			end
		end
	end
end

local function apply(def, entry, live, escape, from)
	local changed = false
	local f = entry.fields
	for i = from or 1, #f, 3 do
		local v = render(def, entry, f[i + 2], live)
		if escape then v = escape(v) end
		if f[i][f[i + 1]] ~= v then
			f[i][f[i + 1]] = v
			changed = true
		end
	end
	if valid(entry.folder) then
		local v = GuideTexts.PackText(def.pack, entry.folder)
		local class = v == entry.folder and LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE[upper(v)]
		if valid(class) then v = class end
		if escape then v = escape(v) end
		if def.folder ~= v then
			def.folder = v
			changed = true
		end
	end
	return changed
end

function GuideTexts.Prepare(def, live)
	local names, written = {}, {}
	if type(def.names) == "table" then
		for k, v in pairs(def.names) do if valid(k) and valid(v) then names[k] = v end end
	end
	if type(def.written) == "table" then
		for k, v in pairs(def.written) do if valid(k) and valid(v) then written[k] = v end end
	end
	local entry = { names = names, written = written, fields = {}, folder = def.folder }
	collect(def, entry.fields)
	if not english then prepared[def] = entry end
	apply(def, entry, live, nil)
end

function GuideTexts.PrepareSteps(def)
	local entry = prepared[def]
	if not entry then
		local names, written = {}, {}
		for k, v in pairs(type(def.names) == "table" and def.names or {}) do if valid(k) and valid(v) then names[k] = v end end
		for k, v in pairs(type(def.written) == "table" and def.written or {}) do if valid(k) and valid(v) then written[k] = v end end
		entry = { names = names, written = written, fields = {} }
	end
	entry.header = entry.header or #entry.fields
	local from = #entry.fields + 1
	local f = entry.fields
	local function add(holder, key)
		local v = holder[key]
		if valid(v) then
			f[#f + 1] = holder
			f[#f + 1] = key
			f[#f + 1] = v
		end
	end
	for _, step in ipairs(rawget(def, "steps") or {}) do
		for _, k in ipairs(STEP_FIELDS) do add(step, k) end
		for _, goal in ipairs(step.goals or {}) do
			if type(goal) == "table" then
				for _, k in ipairs(GOAL_FIELDS) do add(goal, k) end
				if goal.t == "kill" and goal.npc == nil then add(goal, "target") end
			end
		end
	end
	apply(def, entry, true, nil, from)
end

function GuideTexts.DropSteps(def)
	local entry = prepared[def]
	if not (entry and entry.header) then return end
	for i = #entry.fields, entry.header + 1, -1 do entry.fields[i] = nil end
end

function GuideTexts.Refresh(def)
	local entry = prepared[def]
	if not entry then return false end
	return apply(def, entry, true, ns.EscapeText)
end

local OWN = "Polestar_Guides"

function GuideTexts.TextsAddon(addon)
	if english or not valid(addon) then return nil end
	if addon == OWN or addon == ADDON then return "Polestar_" .. locale end
	return addon .. "_" .. locale
end

function GuideTexts.Load(addon)
	local name = GuideTexts.TextsAddon(addon)
	if not name then return nil end
	local was = tried[addon]
	if was == "loaded" or was == "missing" then return was == "loaded" and "loaded" or nil end
	local ok, reason = ns.Data.Pack(name)
	tried[addon] = ok and "loaded" or (reason == "combat" and "combat" or "missing")
	return tried[addon] ~= "missing" and tried[addon] or nil
end

function GuideTexts.Pending()
	local out = {}
	for addon, state in pairs(tried) do
		if state == "combat" then out[#out + 1] = addon end
	end
	return out
end

