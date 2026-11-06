-- Quest map markers, guide focus, available quest scanning, and publishing
-- to Polestar.Pins. Quest log scanning and indexes live in TrackerIndex.lua.

local ADDON, ns = ...

local Q = ns.QuestDB
local F = Q.F
local Each = Q.Each
local client = Q._client
local TS = Q._trackerState
local entries = TS.entries
local hidden = TS.hidden
local color, dimColor = Q.Color, Q.DimColor
local STYLE, FOCUS_SCALE, FOCUS_PRIORITY, MIN_AREA = Q.STYLE, Q.FOCUS_SCALE, Q.FOCUS_PRIORITY, Q.MIN_AREA
local stats = Q.stats

local pairs, type, tostring, tonumber, ipairs = pairs, type, tostring, tonumber, ipairs

local THROTTLE = 0.25
local TURNIN_BRIDGE = 10

local LAYER_OBJECTIVES = Q.LAYERS.objectives
local LAYER_TURNIN = Q.LAYERS.turnin
local LAYER_AVAILABLE = Q.LAYERS.available

local KIND_KILL, KIND_ITEM, KIND_OBJECT, KIND_EVENT = 1, 2, 3, 4

local running = false
local ctx = {}
local candidates = nil
local available = {}
local availableCount = 0
local completed = {}
local haveCompletedSet = false
local turnedIn = {}
local dirtyLog, dirtyPublish = false, false
local pending = false

local markers = { [LAYER_OBJECTIVES] = {}, [LAYER_TURNIN] = {}, [LAYER_AVAILABLE] = {} }
local flat = { [LAYER_OBJECTIVES] = {}, [LAYER_TURNIN] = {}, [LAYER_AVAILABLE] = {} }

---------------------------------------------------------------------------
-- Markers
---------------------------------------------------------------------------

local function addTooltipLines(tt, pin)
	local head = pin.header
	if head then tt:AddLine(head, 1, 1, 1) end
	local qc, dim = color("quest"), color("textDim")
	local refs = pin.refs
	for i = 1, #refs do
		local ref = refs[i]
		if pin.kind == "turnin" then
			tt:AddLine(ns.L["Turn in"] .. ": " .. (ref.title or ""), qc.r, qc.g, qc.b)
		elseif pin.kind == "available" then
			local r = Q.QuestRecord(ref)
			local lvl = r and r[F.LEVEL]
			local title = (r and Q.GetQuestTitle(ref) or tostring(ref)) .. ((lvl and lvl > 0) and (" (" .. lvl .. ")") or "")
			tt:AddLine(title, qc.r, qc.g, qc.b)
		else
			local e = ref.entry
			tt:AddLine(e.title or ("Quest " .. e.q), qc.r, qc.g, qc.b)
			local what = ref.name and (ref.name .. ": ") or ""
			tt:AddLine("  " .. what .. Q.ProgressText(ref), dim.r, dim.g, dim.b)
		end
	end
end

local pools = { [LAYER_OBJECTIVES] = {}, [LAYER_TURNIN] = {}, [LAYER_AVAILABLE] = {} }
local poolGen = 0

local function prune(layer)
	local pool = pools[layer]
	for key, pin in pairs(pool) do
		if pin.gen ~= poolGen then pool[key] = nil end
	end
end

local function newPin(layer, key, kind, style, map, f, x, y, header, byKey, radius)
	local s = STYLE[style]
	local area = s.area and radius and radius >= MIN_AREA and radius or nil
	local pin = byKey[key]
	if pin then
		if (s.rank or 0) > (STYLE[pin.style].rank or 0) then pin.style, pin.icon = style, s.icon end
		if area and area > (pin.radius or 0) then pin.radius = area end
		return pin
	end
	local pool = pools[layer]
	pin = pool[key]
	if pin then
		local refs = pin.refs
		for i = #refs, 1, -1 do refs[i] = nil end
		pin.kind, pin.header, pin.style, pin.icon, pin.radius = kind, header, style, s.icon, area
	else
		pin = {
			map = map, x = x, y = y, f = f,
			icon = s.icon, size = s.size, color = color(s.color), priority = s.priority,
			kind = kind, header = header, refs = {}, layer = layer, style = style, radius = area,
		}
		local C = ns.Compat
		if C and C.MapToWorld then pin.c, pin.wx, pin.wy = C.MapToWorld(map, x, y, f) end
		pin.tooltip = function(tt) addTooltipLines(tt, pin) end
		pool[key] = pin
	end
	pin.gen = poolGen
	byKey[key] = pin
	local byMap = markers[layer]
	local list = byMap[map]
	if not list then
		list = {}
		byMap[map] = list
	end
	list[#list + 1] = pin
	return pin
end

local function addRef(pin, ref)
	local refs = pin.refs
	for i = 1, #refs do
		if refs[i] == ref then return end
	end
	refs[#refs + 1] = ref
end

local spawnCtx = {}
local function onSpawn(c, _, map, f, x, y, r, ci)
	local key = c.prefix .. map .. ":" .. ci
	local pin = newPin(c.layer, key, c.kind, c.style, map, f, x, y, c.header, c.byKey, r)
	addRef(pin, c.ref)
end

local function spawnPins(layer, kind, style, entity, ref, byKey)
	local c = spawnCtx
	c.layer, c.kind, c.style, c.ref, c.byKey = layer, kind, style, ref, byKey
	c.prefix = layer .. ":" .. entity .. ":"
	c.header = Q.EntityName(entity)
	Q.EachSpawn(entity, onSpawn, c)
end

---------------------------------------------------------------------------
-- Guide focus: the active Polestar guide step's quests stand out
---------------------------------------------------------------------------

local guideQuests, nextGuideQuests = {}, {}
local guideRunning = false

local function readGuide()
	local set = nextGuideQuests
	for k in pairs(set) do set[k] = nil end
	local E = ns.Engine
	local guide = E and E.GetGuide and E.GetGuide()
	local i = guide and E.GetStepIndex()
	local step = i and type(guide.steps) == "table" and guide.steps[i]
	local runningNow = type(step) == "table"
	if runningNow and type(step.goals) == "table" then
		for g = 1, #step.goals do
			local q = step.goals[g].quest
			if type(q) == "number" then set[q] = true end
		end
	end
	local changed = runningNow ~= guideRunning
	if not changed then
		for q in pairs(set) do
			if not guideQuests[q] then changed = true break end
		end
		for q in pairs(guideQuests) do
			if not set[q] then changed = true break end
		end
	end
	guideRunning = runningNow
	guideQuests, nextGuideQuests = set, guideQuests
	return changed
end

function Q.IsGuideQuest(q) return guideQuests[q] == true end

local function refQuest(ref)
	if type(ref) == "number" then return ref end
	return ref.q
end

local function focusWith(pin, highlight, dim)
	if not (guideRunning and highlight) then return nil end
	local refs = pin.refs
	for i = 1, #refs do
		if guideQuests[refQuest(refs[i])] then return "focus" end
	end
	if dim then return "dim" end
	return nil
end

local function focusOf(pin)
	return focusWith(pin, ns.Get("qol.guideHighlight"), ns.Get("qol.guideDim"))
end
Q.FocusOf = focusOf

local function stylePin(pin, areas, highlight, dim)
	local s = STYLE[pin.style]
	local focus = focusWith(pin, highlight, dim)
	local k = focus == "focus" and FOCUS_SCALE or 1
	pin.focus = focus
	pin.icon = s.icon
	pin.size, pin.minimapSize = s.size * k, s.mini * k
	pin.priority = s.priority + (focus == "focus" and FOCUS_PRIORITY or 0)
	pin.ring = focus == "focus" and color("accent") or nil
	pin.glow = focus == "focus" and pin.style == "turnin" or nil
	pin.color = focus == "dim" and dimColor(s.color) or color(s.color)
	pin.area = areas and pin.radius or nil
end

local function clearMarkers(layer)
	local byMap = markers[layer]
	for k in pairs(byMap) do byMap[k] = nil end
end

local function objectivePins(e, byKey)
	local r = e.rec
	if not r then return end
	if e.ready then
		for _, ref in Each(r[F.FINISH]) do spawnPins(LAYER_TURNIN, "turnin", "turnin", ref, e, byKey) end
		return
	end
	local ev = r[F.EVENTS]
	for i = 1, #e.objs do
		local o = e.objs[i]
		if not o.done then
			if o.kind == KIND_KILL then
				spawnPins(LAYER_OBJECTIVES, "objective", "skull", o.id, o, byKey)
			elseif o.kind == KIND_OBJECT then
				spawnPins(LAYER_OBJECTIVES, "objective", "gear", -o.id, o, byKey)
			elseif o.kind == KIND_ITEM then
				local ir = Q.ItemRecord(o.id)
				if ir then
					local nd = ir[2] or 0
					for k = 1, nd do spawnPins(LAYER_OBJECTIVES, "objective", "loot", ir[1 + 2 * k], o, byKey) end
					local j = 3 + 2 * nd
					local no = ir[j] or 0
					for k = 1, no do spawnPins(LAYER_OBJECTIVES, "objective", "gear", -ir[j + 2 * k - 1], o, byKey) end
					for k = j + 2 * no + 1, #ir do spawnPins(LAYER_OBJECTIVES, "objective", "vendor", ir[k], o, byKey) end
				end
			elseif o.kind == KIND_EVENT and ev and o.id and o.id > 0 then
				local k = (o.id - 1) * 4
				local map = ev[k + 1]
				local pin = newPin(LAYER_OBJECTIVES, "event:" .. e.q .. ":" .. o.id, "objective", "event", map,
					ev[k + 2] == 0 and "e" or nil, ev[k + 3], ev[k + 4], e.title, byKey)
				addRef(pin, o)
			end
		end
	end
end

local rebuildIDs = {}
local function rebuildObjectiveMarkers()
	stats.rebuilds = stats.rebuilds + 1
	poolGen = poolGen + 1
	clearMarkers(LAYER_OBJECTIVES)
	clearMarkers(LAYER_TURNIN)
	local byKey = {}
	local n = 0
	for q in pairs(entries) do
		n = n + 1
		rebuildIDs[n] = q
	end
	for i = #rebuildIDs, n + 1, -1 do rebuildIDs[i] = nil end
	table.sort(rebuildIDs)
	for i = 1, n do objectivePins(entries[rebuildIDs[i]], byKey) end
	prune(LAYER_OBJECTIVES)
	prune(LAYER_TURNIN)
end

---------------------------------------------------------------------------
-- Available quests
---------------------------------------------------------------------------

local function bridged(q, listed)
	local t = turnedIn[q]
	if not t then return false end
	if listed or GetTime() >= t then
		turnedIn[q] = nil
		return false
	end
	return true
end

local function isDone(q)
	if haveCompletedSet then return completed[q] == true end
	if ns.Compat.IsQuestCompleted(q) then
		turnedIn[q] = nil
		return true
	end
	return bridged(q, false)
end

local function isOn(q)
	return entries[q] ~= nil
end

local function skillRank(line)
	if not (ns.Compat.Supports and ns.Compat.Supports("skill")) then return nil end
	return ns.Compat.GetSkillRank(line) or 0
end
local checkOpts = { lowLevel = false, skillRank = skillRank, levelAbove = nil }

function Q.RefreshCheckOptions()
	checkOpts.lowLevel = ns.Get("qol.lowLevelQuests") and true or false
	local window = tonumber(ns.Get("qol.questLevelWindow"))
	checkOpts.levelAbove = (window and window < Q.LEVEL_WINDOW_ANY) and window or nil
	return checkOpts
end

local function hasGiver(r)
	for _, ref in Each(r[F.START]) do
		if Q.HasSpawns(ref) then return true end
	end
	return false
end

local dependents = {}
local skillCandidates = {}
local fullAvailable = true
local lastCompleted = {}
local lastOn = {}

local function buildCandidates()
	candidates, dependents, skillCandidates = {}, {}, {}
	for _, q in ipairs(Q.QuestIds()) do
		local r = Q.QuestRecord(q)
		if Q.IsEligible(r, ctx) and hasGiver(r) then candidates[#candidates + 1] = q end
	end
	for i = 1, #candidates do
		local q = candidates[i]
		local needsSkill = Q.EachAvailabilityRef(q, function(ref)
			local list = dependents[ref]
			if not list then
				list = {}
				dependents[ref] = list
			end
			if list[#list] ~= q then list[#list + 1] = q end
		end)
		if needsSkill then skillCandidates[#skillCandidates + 1] = q end
	end
	fullAvailable = true
end

local function recheck(q)
	stats.availableChecks = stats.availableChecks + 1
	local ok = Q.CheckAvailable(q, ctx, isDone, isOn, checkOpts)
	if ok then
		if not available[q] then
			available[q] = true
			availableCount = availableCount + 1
			return true
		end
	elseif available[q] then
		available[q] = nil
		availableCount = availableCount - 1
		return true
	end
	return false
end

local function scanAvailable()
	stats.availableScans = stats.availableScans + 1
	local changed = false
	if not candidates then
		buildCandidates()
		if next(available) then
			for q in pairs(available) do available[q] = nil end
			changed = true
		end
		availableCount = 0
	end
	local prev = completed
	completed, lastCompleted = lastCompleted, prev
	local hadSet = haveCompletedSet
	haveCompletedSet = client.CompletedSet(completed)
	if haveCompletedSet then
		for q in pairs(turnedIn) do
			if bridged(q, completed[q]) then completed[q] = true end
		end
	end
	Q.RefreshCheckOptions()
	if fullAvailable or not (haveCompletedSet and hadSet) then
		for i = 1, #candidates do
			if recheck(candidates[i]) then changed = true end
		end
	else
		local touched = {}
		for q in pairs(completed) do
			if not prev[q] then touched[q] = true end
		end
		for q in pairs(prev) do
			if not completed[q] then touched[q] = true end
		end
		for q in pairs(entries) do
			if not lastOn[q] then touched[q] = true end
		end
		for q in pairs(lastOn) do
			if not entries[q] then touched[q] = true end
		end
		for q in pairs(touched) do
			local list = dependents[q]
			if list then
				for i = 1, #list do
					if recheck(list[i]) then changed = true end
				end
			end
		end
		for i = 1, #skillCandidates do
			if recheck(skillCandidates[i]) then changed = true end
		end
	end
	for q in pairs(lastOn) do lastOn[q] = nil end
	for q in pairs(entries) do lastOn[q] = true end
	fullAvailable = false
	return changed
end

local function rebuildAvailableMarkers()
	poolGen = poolGen + 1
	clearMarkers(LAYER_AVAILABLE)
	local byKey = {}
	for i = 1, #candidates do
		local q = candidates[i]
		if available[q] then
			for _, ref in Each(Q.QuestRecord(q)[F.START]) do spawnPins(LAYER_AVAILABLE, "available", "available", ref, q, byKey) end
		end
	end
	prune(LAYER_AVAILABLE)
end

function Q.GetAvailableQuests()
	local out = {}
	if candidates then
		for i = 1, #candidates do
			if available[candidates[i]] then out[#out + 1] = candidates[i] end
		end
	end
	return out
end

function Q.IsAvailable(q) return available[q] == true end

function Q.WhyUnavailable(q)
	local ok, reason = Q.CheckAvailable(q, ctx, isDone, isOn, checkOpts)
	return ok and nil or reason
end

---------------------------------------------------------------------------
-- Publishing to Polestar.Pins
---------------------------------------------------------------------------

local function layerOpts(layer)
	local mm = ns.Get("qol.minimapObjectives") and true or false
	local world
	if layer == LAYER_AVAILABLE then
		world = ns.Get("qol.availableQuests") and true or false
		return world, mm and world
	elseif layer == LAYER_TURNIN then
		world = ns.Get("qol.turnInMarkers") and true or false
		return world, mm and world
	end
	return ns.Get("qol.mapObjectives") and true or false, mm
end

local function flatten(layer)
	local out = {}
	local byMap = markers[layer]
	local maps = {}
	for map in pairs(byMap) do maps[#maps + 1] = map end
	table.sort(maps)
	local areas = layer == LAYER_OBJECTIVES and ns.Get("qol.objectiveAreas") and true or false
	local highlight, dim = ns.Get("qol.guideHighlight"), ns.Get("qol.guideDim")
	for i = 1, #maps do
		local list = byMap[maps[i]]
		for k = 1, #list do
			local pin = list[k]
			stylePin(pin, areas, highlight, dim)
			out[#out + 1] = pin
		end
	end
	flat[layer] = out
	return out
end

local published = {}

local function publish(layer)
	local Pins = ns.Pins
	if not (Pins and Pins.SetLayer) then return end
	local world, minimap = layerOpts(layer)
	local pins = flatten(layer)
	if not running or (not world and not minimap) or #pins == 0 then
		if published[layer] then
			Pins.ClearLayer(layer)
			published[layer] = nil
			stats.publishes = stats.publishes + 1
		end
		return
	end
	Pins.SetLayer(layer, pins, { world = world, minimap = minimap, edge = false, scale = 1 })
	published[layer] = true
	stats.publishes = stats.publishes + 1
end

function Q.GetMarkers(map, which)
	local out = {}
	for name, layer in pairs(Q.LAYERS) do
		if not which or which == name then
			local list = markers[layer][map]
			if list then
				for i = 1, #list do out[#out + 1] = list[i] end
			end
		end
	end
	return out
end

---------------------------------------------------------------------------
-- Flush
---------------------------------------------------------------------------

local function flush()
	pending = false
	if not running then return end
	local logChanged, progressChanged, availChanged = false, false, false
	if dirtyLog then
		dirtyLog = false
		logChanged, progressChanged = TS.scanLog()
	end
	if logChanged then
		stats.changes = stats.changes + 1
		TS.rebuildIndex()
		rebuildObjectiveMarkers()
		publish(LAYER_OBJECTIVES)
		publish(LAYER_TURNIN)
		ns.Fire("QUESTDB_UPDATED")
	elseif progressChanged then
		stats.changes = stats.changes + 1
		ns.Fire("QUESTDB_UPDATED")
	end
	if TS.dirtyAvailable then
		TS.dirtyAvailable = false
		if ns.Get("qol.availableQuests") then
			availChanged = scanAvailable()
		else
			fullAvailable = true
			if availableCount > 0 or next(available) then
				for k in pairs(available) do available[k] = nil end
				availableCount = 0
				availChanged = true
			end
		end
		if availChanged then
			rebuildAvailableMarkers()
			publish(LAYER_AVAILABLE)
		end
	end
	if dirtyPublish then
		dirtyPublish = false
		if not logChanged then
			publish(LAYER_OBJECTIVES)
			publish(LAYER_TURNIN)
		end
		if not availChanged then publish(LAYER_AVAILABLE) end
	end
end

local function schedule()
	if pending or not running then return end
	pending = true
	ns.After(THROTTLE, flush)
end

local function onLogEvent(event, arg)
	if event == "UNIT_QUEST_LOG_CHANGED" and arg ~= "player" then return end
	if event == "QUEST_ACCEPTED" and type(arg) == "number" then
		hidden[arg] = true
		turnedIn[arg] = nil
	elseif event == "QUEST_TURNED_IN" and type(arg) == "number" then
		turnedIn[arg] = GetTime() + TURNIN_BRIDGE
		ns.After(TURNIN_BRIDGE, function()
			if not running then return end
			TS.dirtyAvailable = true
			schedule()
		end)
	end
	dirtyLog = true
	if event == "QUEST_TURNED_IN" or event == "QUEST_ACCEPTED" or event == "QUEST_REMOVED" then TS.dirtyAvailable = true end
	schedule()
end

local function onLevel(_, level)
	Q.PlayerContext(nil, ctx)
	if type(level) == "number" and level > ctx.level then ctx.level = level end
	TS.dirtyAvailable, fullAvailable = true, true
	schedule()
end

local function onSkill()
	TS.dirtyAvailable, fullAvailable = true, true
	schedule()
end

local LOG_EVENTS = { "QUEST_LOG_UPDATE", "UNIT_QUEST_LOG_CHANGED", "QUEST_ACCEPTED", "QUEST_REMOVED", "QUEST_TURNED_IN", "QUEST_WATCH_UPDATE" }

function Q.Start()
	if running or not Q.IsEnabled() then return false end
	running = true
	Q.PlayerContext(nil, ctx)
	candidates = nil
	TS.sweepLog()
	for i = 1, #LOG_EVENTS do ns.RegisterEvent(LOG_EVENTS[i], onLogEvent) end
	ns.RegisterEvent("PLAYER_LEVEL_UP", onLevel)
	ns.RegisterEvent("SKILL_LINES_CHANGED", onSkill)
	dirtyLog, TS.dirtyAvailable = true, true
	schedule()
	ns.Fire("QUESTDB_STARTED")
	return true
end

function Q.Stop()
	if not running then return end
	running = false
	for i = 1, #LOG_EVENTS do ns.UnregisterEvent(LOG_EVENTS[i], onLogEvent) end
	ns.UnregisterEvent("PLAYER_LEVEL_UP", onLevel)
	ns.UnregisterEvent("SKILL_LINES_CHANGED", onSkill)
	for q in pairs(entries) do entries[q] = nil end
	for q in pairs(available) do available[q] = nil end
	availableCount = 0
	candidates = nil
	for q in pairs(hidden) do hidden[q] = nil end
	for q in pairs(turnedIn) do turnedIn[q] = nil end
	TS.rebuildIndex()
	for layer in pairs(markers) do
		clearMarkers(layer)
		local pool = pools[layer]
		for key in pairs(pool) do pool[key] = nil end
		publish(layer)
	end
	ns.Fire("QUESTDB_UPDATED")
end

function Q.IsRunning() return running end

function Q.Flush()
	if pending or dirtyLog or TS.dirtyAvailable or dirtyPublish then flush() end
end

---------------------------------------------------------------------------
-- Settings and lifecycle
---------------------------------------------------------------------------

local retryAfterCombat = false
local function enable()
	if not Q.IsWanted() then
		Q.Stop()
		return
	end
	local ok, reason = Q.Load()
	if ok then
		Q.Start()
	elseif reason == "combat" and not retryAfterCombat then
		retryAfterCombat = true
		local function again()
			ns.UnregisterEvent("PLAYER_REGEN_ENABLED", again)
			retryAfterCombat = false
			enable()
		end
		ns.RegisterEvent("PLAYER_REGEN_ENABLED", again)
	end
end

local function onGuide()
	if not running then return end
	if readGuide() then
		dirtyPublish = true
		schedule()
	end
end

local WANT = { ["qol.questDB"] = true, ["qol.mapObjectives"] = true, ["qol.minimapObjectives"] = true, ["qol.availableQuests"] = true,
	["qol.turnInMarkers"] = true, ["qol.questTooltips"] = true, ["qol.nameplateIcons"] = true }
local FILTER = { ["qol.availableQuests"] = true, ["qol.lowLevelQuests"] = true, ["qol.questLevelWindow"] = true }
local LOOK = { ["qol.mapObjectives"] = true, ["qol.minimapObjectives"] = true, ["qol.availableQuests"] = true,
	["qol.turnInMarkers"] = true, ["qol.objectiveAreas"] = true, ["qol.guideHighlight"] = true, ["qol.guideDim"] = true }

ns.On("SETTING_CHANGED", function(path)
	if type(path) ~= "string" then return end
	local all = path == "" or path == "qol"
	if not (all or path:sub(1, 4) == "qol.") then return end
	if all or WANT[path] then enable() end
	if not running then return end
	if all or FILTER[path] then TS.dirtyAvailable, fullAvailable = true, true end
	if all or LOOK[path] then
		readGuide()
		dirtyPublish = true
	end
	schedule()
end)

ns.On("STEP_CHANGED", onGuide)
ns.On("GUIDE_CHANGED", onGuide)
ns.On("QUESTDB_STARTED", onGuide)

ns.On("NAMES_LOADED", function()
	for _, e in pairs(entries) do
		for i = 1, #e.objs do
			local o = e.objs[i]
			o.name = TS.entityName(o.kind, o.id)
		end
		e.lines = nil
	end
	if not running then return end
	TS.rebuildIndex()
	rebuildObjectiveMarkers()
	publish(LAYER_OBJECTIVES)
	dirtyLog = true
	schedule()
end)

local function onTheme()
	for k in pairs(TS.colors) do TS.colors[k] = nil end
	for k in pairs(TS.dimmed) do TS.dimmed[k] = nil end
	if not running then return end
	dirtyPublish = true
	schedule()
end

ns.OnInit(function()
	if ns.Theme and ns.Theme.OnChanged then ns.Theme.OnChanged(onTheme) end
end)

ns.OnLogin(enable)
