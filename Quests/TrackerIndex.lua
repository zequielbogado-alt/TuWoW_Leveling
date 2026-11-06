-- Quest log reader, objective line matcher, and per-entity objective indexes
-- for TuWoW_Leveling. Split from Quests/Tracker.lua for modularity (< 1000 lines).

local ADDON, ns = ...

local Q = ns.QuestDB
local F = Q.F
local client = Q._client

local pairs, type, ipairs, string, table = pairs, type, ipairs, string, table

local LAYER_OBJECTIVES = "quests.objectives"
local LAYER_TURNIN = "quests.turnin"
local LAYER_AVAILABLE = "quests.available"
Q.LAYERS = { objectives = LAYER_OBJECTIVES, turnin = LAYER_TURNIN, available = LAYER_AVAILABLE }

local KIND_KILL, KIND_ITEM, KIND_OBJECT, KIND_EVENT = 1, 2, 3, 4

local STYLE = {
	kill = { icon = "map:kill", color = "danger", size = 16, mini = 14, priority = 2, area = true, rank = 5 },
	skull = { icon = "map:kill", color = "danger", size = 16, mini = 14, priority = 2, area = true, rank = 5 },
	loot = { icon = "map:loot", color = "item", size = 16, mini = 14, priority = 2, area = true, rank = 4 },
	collect = { icon = "map:loot", color = "item", size = 16, mini = 14, priority = 2, area = true, rank = 2 },
	gear = { icon = "map:use", color = "item", size = 16, mini = 14, priority = 2, area = true, rank = 2 },
	vendor = { icon = "map:vendor", color = "item", size = 16, mini = 14, priority = 2, rank = 1 },
	interact = { icon = "map:use", color = "place", size = 16, mini = 14, priority = 2, area = true, rank = 3 },
	event = { icon = "map:explore", color = "place", size = 16, mini = 14, priority = 2 },
	turnin = { icon = "map:quest-turnin", color = "quest", size = 18, mini = 16, priority = 3 },
	available = { icon = "map:quest-available", color = "quest", size = 16, mini = 14, priority = 1 },
}
local FOCUS_SCALE, FOCUS_PRIORITY, DIM_ALPHA = 1.3, 3, 0.6
local MIN_AREA = 12
Q.STYLE, Q.FOCUS_SCALE, Q.FOCUS_PRIORITY, Q.DIM_ALPHA, Q.MIN_AREA = STYLE, FOCUS_SCALE, FOCUS_PRIORITY, DIM_ALPHA, MIN_AREA

local FALLBACK_COLORS = {
	danger = { 0.96, 0.45, 0.45, 1 }, item = { 0.78, 0.68, 1, 1 }, place = { 0.96, 0.68, 0.52, 1 },
	quest = { 1, 0.84, 0.45, 1 }, textDim = { 0.765, 0.793, 0.868, 1 }, success = { 0.42, 0.85, 0.6, 1 }, text = { 0.969, 0.973, 0.992, 1 },
	accent = { 0.902, 0.729, 0.4, 1 }, white = { 1, 1, 1, 1 },
}

local colors = {}
local dimmed = {}
local function color(name)
	local c = colors[name]
	if c then return c end
	local r, g, b, a
	local Theme = ns.Theme
	if Theme and Theme.Color then r, g, b, a = Theme.Color(name) end
	if not r then
		local fb = FALLBACK_COLORS[name] or FALLBACK_COLORS.text
		r, g, b, a = fb[1], fb[2], fb[3], fb[4]
	end
	a = a or 1
	c = { r, g, b, a, r = r, g = g, b = b, a = a }
	colors[name] = c
	return c
end
Q.Color = color

local function dimColor(name)
	local d = dimmed[name]
	if d then return d end
	local c = color(name)
	local a = c.a * DIM_ALPHA
	d = { c.r, c.g, c.b, a, r = c.r, g = c.g, b = c.b, a = a }
	dimmed[name] = d
	return d
end
Q.DimColor = dimColor

---------------------------------------------------------------------------
-- Shared Tracker State
---------------------------------------------------------------------------

local TS = {
	entries = {},
	logIDs = {},
	generation = 0,
	hidden = {},
	dirtyAvailable = false,
	colors = colors,
	dimmed = dimmed,
}
Q._trackerState = TS

local index = { npc = {}, item = {}, object = {}, objectName = {} }
Q._index = index

local stats = { scans = 0, changes = 0, rebuilds = 0, availableScans = 0, availableChecks = 0, publishes = 0 }
Q.stats = stats

---------------------------------------------------------------------------
-- Quest log
---------------------------------------------------------------------------

local function entityName(kind, id)
	local N = ns.Names
	if kind == KIND_KILL then
		local r = Q.NpcRecord(id)
		return r and ((N and N.Npc(id)) or r[1])
	elseif kind == KIND_ITEM then
		local r = Q.ItemRecord(id)
		return r and ((N and N.Item(id)) or r[1])
	elseif kind == KIND_OBJECT then
		local r = Q.ObjectRecord(id)
		return r and ((N and N.Object(id)) or r[1])
	end
end
TS.entityName = entityName

local function newEntry(q)
	local r = Q.QuestRecord(q)
	local e = { q = q, rec = r, objs = {}, ready = nil, seen = 0 }
	local obj = r and r[F.OBJ]
	if obj then
		for i = 1, #obj, 3 do
			local kind, id = obj[i], obj[i + 1]
			e.objs[#e.objs + 1] = {
				q = q, entry = e, kind = kind, id = id, count = obj[i + 2],
				name = entityName(kind, id), cur = 0, max = obj[i + 2] or 1, done = false, ci = nil,
			}
		end
	end
	return e
end

local find, sort = string.find, table.sort
local lineLabel = ns.Compat.ObjectiveLabel

local function nameGroups(objs)
	local groups, byName = {}, {}
	for i = 1, #objs do
		local o = objs[i]
		if o.name then
			local g = byName[o.name]
			if not g then
				g = { name = o.name, first = i }
				byName[o.name] = g
				groups[#groups + 1] = g
			end
			g[#g + 1] = o
		end
	end
	sort(groups, function(a, b)
		local la, lb = #a.name, #b.name
		if la ~= lb then return la > lb end
		return a.first < b.first
	end)
	return groups
end

local function claim(g, clientLines, n, used, fits)
	for pass = 1, 2 do
		for j = 1, #g do
			local o = g[j]
			if not o.ci then
				for k = 1, n do
					if not used[k] and fits(k) and (pass == 2 or clientLines[k].numRequired == o.count) then
						o.ci, used[k] = k, true
						break
					end
				end
			end
		end
	end
end

local function matchLines(objs, clientLines, n)
	local labels, used, settled = {}, {}, true
	for k = 1, n do
		local text = clientLines[k].text
		local label = type(text) == "string" and lineLabel(text) or ""
		if label ~= "" then
			labels[k] = label
		else
			settled = false
		end
	end
	for i = 1, #objs do objs[i].ci = nil end
	local groups = nameGroups(objs)
	for j = 1, #groups do
		local name = groups[j].name
		claim(groups[j], clientLines, n, used, function(k) return labels[k] == name end)
	end
	for j = 1, #groups do
		local name = groups[j].name
		claim(groups[j], clientLines, n, used, function(k)
			return labels[k] ~= nil and find(clientLines[k].text, name, 1, true) ~= nil
		end)
	end
	for i = 1, #objs do
		local o = objs[i]
		if not o.ci and o.name then
			for j = 1, #objs do
				local p = objs[j]
				if p.ci and p.name == o.name then
					o.ci = p.ci
					break
				end
			end
		end
	end
	for i = 1, #objs do
		local o = objs[i]
		if not o.ci and i <= n and not used[i] then o.ci, used[i] = i, true end
	end
	local left, free = {}, {}
	for i = 1, #objs do
		if not objs[i].ci then left[#left + 1] = objs[i] end
	end
	for k = 1, n do
		if not used[k] then free[#free + 1] = k end
	end
	if #left == #free then
		for j = 1, #left do left[j].ci = free[j] end
	end
	return settled
end

local function readProgress(e)
	local shape, progress = false, false
	local title = ns.Compat.GetQuestTitle(e.q) or (e.rec and e.rec[F.TITLE]) or ("Quest " .. e.q)
	if title ~= e.title then
		e.title = title
		shape = true
	end
	local ready = ns.Compat.IsQuestReadyForTurnIn(e.q) and true or false
	if ready ~= e.ready then
		e.ready = ready
		shape = true
	end
	local objs = e.objs
	if #objs == 0 then return shape, progress end
	local clientLines = ns.Compat.GetQuestObjectives(e.q)
	local n = clientLines and #clientLines or 0
	if e.lines ~= n then e.lines = matchLines(objs, clientLines, n) and n or nil end
	for i = 1, #objs do
		local o = objs[i]
		local ci = o.ci
		local cur, max, done
		if ci then
			local c = clientLines[ci]
			cur, max, done = c.numFulfilled or 0, c.numRequired or o.max, c.finished and true or false
		else
			cur, max, done = 0, o.max, ready
		end
		if ready then done = true end
		if done ~= o.done then
			o.done = done
			shape = true
		end
		if cur ~= o.cur or max ~= o.max then
			o.cur, o.max = cur, max
			progress = true
		end
	end
	return shape, progress
end

local function visit(q)
	local entries = TS.entries
	local e = entries[q]
	local added = false
	if not e then
		e = newEntry(q)
		entries[q] = e
		added = true
		TS.dirtyAvailable = true
	end
	e.seen = TS.generation
	local shape, progress = readProgress(e)
	return shape or added, progress
end

function TS.scanLog()
	local entries, logIDs, hidden = TS.entries, TS.logIDs, TS.hidden
	stats.scans = stats.scans + 1
	TS.generation = TS.generation + 1
	local gen = TS.generation
	local shape, progress = false, false
	client.LogQuestIDs(logIDs)
	for i = 1, #logIDs do
		local s, p = visit(logIDs[i])
		shape, progress = shape or s, progress or p
	end
	for q in pairs(hidden) do
		local e = entries[q]
		if not (e and e.seen == gen) and ns.Compat.IsOnQuest(q) then
			local s, p = visit(q)
			shape, progress = shape or s, progress or p
		end
		hidden[q] = nil
	end
	for q, e in pairs(entries) do
		if e.seen ~= gen then
			if ns.Compat.IsOnQuest(q) then
				e.seen = gen
				local s, p = readProgress(e)
				shape, progress = shape or s, progress or p
			else
				entries[q] = nil
				shape = true
				TS.dirtyAvailable = true
			end
		end
	end
	return shape, progress
end

function TS.sweepLog()
	local hidden = TS.hidden
	for _, q in ipairs(Q.QuestIds()) do
		if ns.Compat.IsOnQuest(q) then hidden[q] = true end
	end
end

---------------------------------------------------------------------------
-- Indexes (tooltips, nameplates)
---------------------------------------------------------------------------

local function push(t, id, o)
	local list = t[id]
	if not list then
		t[id] = { o }
		return
	end
	for i = 1, #list do
		if list[i] == o then return end
	end
	list[#list + 1] = o
end

function TS.rebuildIndex()
	for _, t in pairs(index) do
		for k in pairs(t) do t[k] = nil end
	end
	for _, e in pairs(TS.entries) do
		for i = 1, #e.objs do
			local o = e.objs[i]
			if o.kind == KIND_KILL then
				push(index.npc, o.id, o)
			elseif o.kind == KIND_OBJECT then
				push(index.object, o.id, o)
				if o.name then push(index.objectName, o.name, o) end
			elseif o.kind == KIND_ITEM then
				push(index.item, o.id, o)
				local r = Q.ItemRecord(o.id)
				if r then
					local nd = r[2] or 0
					for k = 1, nd do push(index.npc, r[1 + 2 * k], o) end
					local j = 3 + 2 * nd
					for k = 1, (r[j] or 0) do
						local obj = r[j + 2 * k - 1]
						push(index.object, obj, o)
						if Q.ObjectRecord(obj) then push(index.objectName, Q.EntityName(-obj), o) end
					end
				end
			end
		end
	end
end

function Q.ObjectivesForNpc(id) return id and index.npc[id] or nil end
function Q.ObjectivesForItem(id) return id and index.item[id] or nil end
function Q.ObjectivesForObject(id) return id and index.object[id] or nil end
function Q.ObjectivesForObjectName(name) return name and index.objectName[name] or nil end

function Q.ProgressText(o)
	if o.kind == KIND_EVENT or (o.max or 0) <= 1 then
		return o.done and ns.L["Done"] or ns.L["Not done"]
	end
	return (o.cur or 0) .. "/" .. (o.max or 0)
end

