-- ============================================================================
-- TuWoW_Leveling — Core/Names.lua
-- Quest, NPC, object and item names in the player's language (enUS / esES).
-- Supports WoW 3.3.5a hex UnitGUID parsing and QuestieDB fallback.
-- ============================================================================

local ADDON, ns = ...

local Names = {}
ns.Names = Names
ns.Names.quests = {}

local type, pairs, ipairs, tonumber, floor = type, pairs, ipairs, tonumber, math.floor

local locale = (ns.ClientLocale and ns.ClientLocale()) or "enUS"
local localised = (locale == "esES")
local PACK = localised and "Polestar_esES" or nil

local LuaChunks = ns.LuaChunks
local chunkStore = LuaChunks.New()
local svReady = false
local LEARN_CAP = 2000
local ready = not localised
local asked = { quest = {}, item = {} }
local redrawing = false
local deferred = false

function Names.Localised() return localised end
function Names.Ready() return ready end
function Names.PackName() return PACK end

function Names.AddChunk(loc, kind, lo, hi, text)
	if loc == "esMX" then loc = "esES" end
	if loc ~= locale or type(kind) ~= "string" or type(text) ~= "string" then return end
	chunkStore:Add(kind, lo, hi, text)
end

local function redraw()
	redrawing = false
	local E = ns.Engine
	local step = E and E.GetStepIndex and E.GetStepIndex()
	if step then ns.Fire("STEP_UPDATED", step) end
end

local function scheduleRedraw()
	if redrawing then return end
	redrawing = true
	ns.After(0.2, redraw)
end

local function load()
	local Data = ns.Data
	if not (Data and Data.Pack) then
		ready = true
		return
	end
	local ok, reason = Data.Pack(PACK)
	if not ok and reason == "combat" then
		deferred = true
		return
	end
	ready = true
	if ok and deferred then
		deferred = false
		ns.Fire("NAMES_LOADED")
		scheduleRedraw()
	end
end

local function fromPack(kind, id)
	if not ready then load() end
	return LuaChunks.Unesc(chunkStore:Raw(kind, id))
end

local function learnedStore()
	if not svReady then return nil end
	local db = ns.DB()
	if type(db.names) ~= "table" then db.names = {} end
	local mine = db.names[locale]
	if type(mine) ~= "table" then
		mine = {}
		db.names[locale] = mine
	end
	if type(mine.npc) ~= "table" then mine.npc = {} end
	if type(mine.object) ~= "table" then mine.object = {} end
	if type(mine.order) ~= "table" then
		local order = {}
		for id in pairs(mine.npc) do order[#order + 1] = "n" .. id end
		for id in pairs(mine.object) do order[#order + 1] = "o" .. id end
		mine.order = order
	end
	return mine
end

local function fromPlay(kind, id)
	local mine = learnedStore()
	local t = mine and mine[kind]
	return t and t[id]
end

local function ask(kind, id)
	if asked[kind][id] then return end
	asked[kind][id] = 1
	local C = ns.Compat
	if kind == "quest" and C.RequestQuest then
		C.RequestQuest(id)
	elseif kind == "item" and C.RequestItem then
		C.RequestItem(id)
	end
end

local function valid(id)
	return localised and type(id) == "number"
end

local inQuestLookup = false
function Names.Quest(id)
	if not valid(id) then return nil end
	-- 1. Spanish translation chunks (Names_esES_*.lua)
	local p = fromPack("quest", id)
	if p and p ~= "" then return p end

	-- 2. Quest log title if quest is active in the player's quest log
	if not inQuestLookup then
		inQuestLookup = true
		local logIdx, title
		if ns.Compat and ns.Compat.FindQuestLogIndexByID then
			logIdx, title = ns.Compat.FindQuestLogIndexByID(id)
		end
		inQuestLookup = false
		if title and title ~= "" then return title end
	end

	ask("quest", id)
	return nil
end

function Names.Item(id)
	if not valid(id) then return nil end
	local p = fromPack("item", id)
	if p and p ~= "" then return p end
	local n = ns.Compat and ns.Compat.GetItemName and ns.Compat.GetItemName(id)
	if n and n ~= "" then return n end
	ask("item", id)
	return nil
end

function Names.Npc(id)
	if not valid(id) then return nil end
	return fromPlay("npc", id) or fromPack("npc", id)
end

function Names.Object(id)
	if not valid(id) then return nil end
	return fromPlay("object", id) or fromPack("object", id)
end

local function clientName(fn, ...)
	if not fn then return nil end
	local ok, name = pcall(fn, ...)
	if not ok then return nil end
	if type(name) == "table" then name = name.name end
	name = ns.Compat.Readable(name)
	if type(name) ~= "string" or name == "" then return nil end
	return name
end

function Names.Spell(id)
	if not valid(id) then return nil end
	return clientName(C_Spell and C_Spell.GetSpellName, id) or clientName(GetSpellInfo, id)
end

function Names.Faction(id)
	if not valid(id) then return nil end
	return clientName(C_Reputation and C_Reputation.GetFactionDataByID, id) or clientName(GetFactionInfoByID, id)
		or fromPack("faction", id)
end

function Names.Instance(id)
	if not valid(id) then return nil end
	local n = fromPack("map", id)
	if n or not GetRealZoneText then return n end
	n = clientName(GetRealZoneText, id)
	if not n then return nil end
	local here = GetInstanceInfo and select(8, GetInstanceInfo())
	if here == id or n ~= clientName(GetRealZoneText) then return n end
	return nil
end

function Names.Area(id)
	if not valid(id) then return nil end
	return ns.Compat.GetAreaName and ns.Compat.GetAreaName(id) or nil
end

function Names.Taxi(id)
	if not valid(id) then return nil end
	return fromPack("taxi", id)
end

function Names.Encounter(id)
	if not valid(id) then return nil end
	return fromPack("encounter", id)
end

local BY_KIND = {
	quest = Names.Quest, item = Names.Item, npc = Names.Npc, object = Names.Object,
	spell = Names.Spell, faction = Names.Faction, map = Names.Instance, area = Names.Area,
	taxi = Names.Taxi, encounter = Names.Encounter,
}

function Names.Get(kind, id)
	local fn = BY_KIND[kind]
	if fn then return fn(id) end
	if not valid(id) then return nil end
	return fromPack(kind, id)
end

function Names.Cached(kind, id)
	if not valid(id) then return nil end
	if kind == "quest" then
		local t = ns.Compat.GetQuestTitle(id)
		if t then return t end
	end
	return fromPlay(kind, id) or fromPack(kind, id)
end

local function prune(mine)
	local order = mine.order
	local drop = #order - LEARN_CAP + floor(LEARN_CAP / 10)
	local last = {}
	for i, key in ipairs(order) do last[key] = i end
	local keep = {}
	for i, key in ipairs(order) do
		local kind, id = key:sub(1, 1) == "n" and "npc" or "object", tonumber(key:sub(2))
		if last[key] == i then
			if i <= drop then
				if id then mine[kind][id] = nil end
			elseif id and mine[kind][id] ~= nil then
				keep[#keep + 1] = key
			end
		end
	end
	mine.order = keep
end

local function onStep(kind, id)
	local E = ns.Engine
	local g = E and E.GetGuide and E.GetGuide()
	local cur = E and E.GetStepIndex and E.GetStepIndex()
	if not (g and g.steps and cur) then return false end
	for s = cur, cur + 1 do
		local step = g.steps[s]
		for _, goal in ipairs(step and step.goals or {}) do
			if goal[kind] == id then return true end
		end
	end
	return false
end

function Names.Learn(unit)
	if not (localised and UnitGUID and UnitName) then return nil end
	local mine = learnedStore()
	if not mine then return nil end
	local C = ns.Compat
	local guid = C.Readable(UnitGUID(unit))
	if type(guid) ~= "string" then return nil end
	local uType, id = C.ParseGUID335(guid)
	local kind
	if uType == 3 or uType == 5 then
		kind = "npc"
	elseif uType == 1 then
		kind = "object"
	end
	if not (kind and id) then return nil end
	if kind == "npc" and UnitPlayerControlled and C.Readable(UnitPlayerControlled(unit)) then return nil end
	local name = C.Readable(UnitName(unit))
	if type(name) ~= "string" or name == "" or name == UNKNOWNOBJECT then return nil end
	local t = mine[kind]
	local old = t[id]
	if old == name then return name end
	if name == fromPack(kind, id) then
		if old == nil then return name end
		t[id] = nil
	else
		if old == nil then
			local order = mine.order
			order[#order + 1] = (kind == "npc" and "n" or "o") .. id
			if #order > LEARN_CAP then prune(mine) end
		end
		t[id] = name
	end
	ns.Fire("NAME_LEARNED", kind, id)
	if onStep(kind, id) then scheduleRedraw() end
	return name
end

ns.OnInit(function() svReady = true end)

if localised then
	ns.RegisterEvent("PLAYER_REGEN_ENABLED", function() if deferred and not ready then load() end end)
	ns.RegisterEvent("PLAYER_TARGET_CHANGED", function() Names.Learn("target") end)
	ns.RegisterEvent("UPDATE_MOUSEOVER_UNIT", function() Names.Learn("mouseover") end)
	local function talking() if not Names.Learn("npc") then Names.Learn("questnpc") end end
	for _, e in pairs({ "GOSSIP_SHOW", "QUEST_GREETING", "QUEST_DETAIL", "QUEST_PROGRESS", "QUEST_COMPLETE", "MERCHANT_SHOW", "TRAINER_SHOW" }) do
		ns.RegisterEvent(e, talking)
	end
end

