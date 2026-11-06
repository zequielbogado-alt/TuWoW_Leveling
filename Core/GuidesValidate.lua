-- Guide conditions, travel cost helpers, packed spots, and guide/step/goal
-- validation for TuWoW_Leveling. Split from Guides.lua for modularity (< 1000 lines).

local ADDON, ns = ...

local type, pairs, ipairs, tostring, tonumber = type, pairs, ipairs, tostring, tonumber

local Guides = ns.Guides or {}
ns.Guides = Guides
local Own = Guides._own or {}
Guides._own = Own

---------------------------------------------------------------------------
-- Conditions (`only` on steps and goals, races/classes on guides)
---------------------------------------------------------------------------

local RACE_ALIAS = { scourge = "undead" }
local function normRace(r)
	if not r then return "" end
	r = r:lower()
	return RACE_ALIAS[r] or r
end
Guides.NormRace = normRace

local function identity(v) return v and v:lower() or "" end

local function listMatches(list, value, norm)
	if type(list) ~= "table" or #list == 0 then return true end
	norm = norm or identity
	value = norm(value)
	local positives, hit = false, false
	for i = 1, #list do
		local e = list[i]
		local neg = e:sub(1, 1) == "!"
		if neg then e = e:sub(2) end
		e = norm(e)
		if neg then
			if e == value then return false end
		else
			positives = true
			if e == value then hit = true end
		end
	end
	return hit or not positives
end
Guides.ListMatches = listMatches

function Guides.Matches(only, player)
	if type(only) ~= "table" then return true end
	return listMatches(only.classes, player.class)
		and listMatches(only.races, player.race, normRace)
		and listMatches(only.factions, player.faction)
end

local function guideMatches(g, player)
	if g.faction and player.faction and g.faction:lower() ~= player.faction:lower() then return false end
	return listMatches(g.races, player.race, normRace) and listMatches(g.classes, player.class)
end
Guides.GuideMatches = guideMatches

function Guides.OtherStart(g, player)
	if type(g) ~= "table" or type(player) ~= "table" then return false end
	if g.category ~= nil and g.category ~= "Leveling" then return false end
	if (g.minLevel or 1) > 1 or type(g.races) ~= "table" or #g.races == 0 then return false end
	if not (g.faction and player.faction and g.faction:lower() == player.faction:lower()) then return false end
	return not listMatches(g.races, player.race, normRace) and listMatches(g.classes, player.class)
end

local FACTION_CODE = { Alliance = "A", Horde = "H" }
function Guides.CandidateMatches(c, player)
	if c.faction and c.faction ~= "AH" then
		local code = FACTION_CODE[player.faction]
		if not code or not c.faction:find(code, 1, true) then return false end
	end
	return listMatches(c.races, player.race, normRace) and listMatches(c.classes, player.class)
end

---------------------------------------------------------------------------
-- Travel cost between two points { map, x, y, f }
---------------------------------------------------------------------------

local RUN_SPEED = 7 -- yards per second
local CROSS_CONTINENT = 3600 -- seconds
ns.TRAVEL_CROSS_CONTINENT = CROSS_CONTINENT

local function directTravelCost(from, to)
	local C = ns.Compat
	local c1, x1, y1 = C.MapToWorld(from.map, from.x, from.y, from.f)
	local c2, x2, y2 = C.MapToWorld(to.map, to.x, to.y, to.f)
	if not (c1 and c2) then return nil end
	if c1 ~= c2 then return CROSS_CONTINENT end
	local dx, dy = x2 - x1, y2 - y1
	return (dx * dx + dy * dy) ^ 0.5 / RUN_SPEED
end
ns.DirectTravelCost = directTravelCost

function ns.TravelCost(from, to)
	local nav = ns.Nav
	if nav and nav.EstimateTravel then
		local ok, s = pcall(nav.EstimateTravel, from, to)
		if ok and type(s) == "number" then return s end
	end
	return directTravelCost(from, to)
end

function ns.PlayerPoint()
	local map, x, y = ns.Compat.GetPlayerMapPosition()
	if not map then return nil end
	return { map = map, x = x, y = y }
end

---------------------------------------------------------------------------
-- Validation
---------------------------------------------------------------------------

local function isNum(v) return type(v) == "number" end
local function isStr(v) return type(v) == "string" and v ~= "" end
Own.isNum = isNum
Own.isStr = isStr

local REQUIRED = {
	accept = { quest = isNum, title = isStr },
	turnin = { quest = isNum, title = isStr },
	complete = { quest = isNum, title = isStr },
	abandon = { quest = isNum, title = isStr },
	destroy = { item = isNum, itemName = isStr },
	kill = { target = isStr },
	collect = { item = isNum, itemName = isStr },
	["goto"] = { map = isNum, x = isNum, y = isNum },
	talk = { npc = isNum, npcName = isStr },
	interact = { object = isNum, objName = isStr },
	use = { item = isNum, itemName = isStr },
	sethome = {},
	hearth = { location = isStr },
	die = { location = isStr, map = isNum, x = isNum, y = isNum },
	getfp = { location = isStr },
	fly = { location = isStr },
	enter = { location = isStr },
	train = {},
	buy = { item = isNum, itemName = isStr },
	vendor = {},
	level = { level = isNum },
	money = { money = isNum },
	task = { text = isStr },
	note = { text = isStr },
	skill = { skill = isStr, level = isNum },
	learn = { spell = isNum, spellName = isStr },
	cast = { spell = isNum, spellName = isStr },
	craft = { spell = isNum, spellName = isStr },
	rep = { faction = isNum, factionName = isStr, standing = isNum },
	explore = { map = isNum, x = isNum, y = isNum },
	achieve = { achievement = isNum, achievementName = isStr },
	wait = { seconds = isNum },
}
Guides.VERBS = REQUIRED

local REQUIRED_ORDER = {}
for verb, rules in pairs(REQUIRED) do
	local fields = {}
	for field in pairs(rules) do fields[#fields + 1] = field end
	table.sort(fields)
	REQUIRED_ORDER[verb] = fields
end

local KEYS = {
	only = { "classes", "races", "factions" },
	goalNumbers = { "skillLine", "untilSkill", "criteria", "level", "profLine", "profRank" },
	goalRanks = { "rank", "qlvl" },
	rewardLists = { "items", "choices" },
	guideMaps = { "names", "written" },
	guideLists = { "races", "classes", "nextChoices", "pros", "cons", "keywords" },
}

local function checkOnly(only)
	if only == nil then return true end
	if type(only) ~= "table" then return false end
	for _, key in ipairs(KEYS.only) do
		local list = only[key]
		if list ~= nil then
			if type(list) ~= "table" then return false end
			for i = 1, #list do
				if type(list[i]) ~= "string" then return false end
			end
		end
	end
	return true
end

local WHEN_OPS = { ["<"] = true, ["<="] = true, [">"] = true, [">="] = true }
local WHEN_QUEST = { complete = true, turnedin = true, available = true, group = true }
local WHEN_PLACE = { zone = true, subzone = true, bound = true }
local function isFrac(v) return isNum(v) and v > 0 and v < 1 end

local function checkWhen(list)
	if list == nil then return true end
	if type(list) ~= "table" or #list == 0 then return false end
	for i = 1, #list do
		local p = list[i]
		if type(p) ~= "table" then return false end
		local k = p.k
		if k == "level" then
			if not (WHEN_OPS[p.op] and isNum(p.n)) then return false end
			if p.frac ~= nil and not isFrac(p.frac) then return false end
		elseif k == "money" then
			if not (WHEN_OPS[p.op] and isNum(p.n)) then return false end
		elseif k == "onquest" then
			if type(p.q) ~= "table" or #p.q == 0 then return false end
			for j = 1, #p.q do
				if not isNum(p.q[j]) then return false end
			end
		elseif WHEN_QUEST[k] then
			if not isNum(p.q) then return false end
		elseif k == "has" or k == "upgrade" then
			if not isNum(p.item) then return false end
		elseif k == "dungeon" then
			if not (isStr(p.name) and (p.map == nil or isNum(p.map))) then return false end
		elseif k == "done" then
			if not isStr(p.label) then return false end
		elseif k == "skill" then
			if not (isStr(p.name) and isNum(p.n) and (p.skillLine == nil or isNum(p.skillLine))) then return false end
		elseif k == "cooldown" then
			if not ((isNum(p.item) and p.spell == nil) or (isNum(p.spell) and p.item == nil)) then return false end
		elseif k == "knows" then
			if not isNum(p.spell) then return false end
		elseif not (WHEN_PLACE[k] and isStr(p.name)) then
			return false
		end
	end
	return true
end

local function checkImage(image)
	if image == nil then return true end
	if type(image) ~= "table" or not isStr(image.file) then return false end
	for _, key in ipairs({ "w", "h" }) do
		local v = image[key]
		if v ~= nil and not (isNum(v) and v > 0) then return false end
	end
	local file = image.file
	local ext = file:match("%.(%w+)$")
	if ext then
		ext = ext:lower()
		if ext ~= "tga" and ext ~= "blp" then return false end
		file = file:sub(1, #file - #ext - 1)
	end
	for part in (file:gsub("/", "\\") .. "\\"):gmatch("(.-)\\") do
		if not part:find("^[%w_%-]+$") then return false end
	end
	return true
end

---------------------------------------------------------------------------
-- Packed spawn spots (format 8)
---------------------------------------------------------------------------

local strfind, strbyte, gmatch = string.find, string.byte, string.gmatch
local SEMICOLON = 59
local SPOT_HEAD = "^%-?%d+%.?%d*,%-?%d+%.?%d*,%-?%d*%.?%d*,%d+%.?%d*"
local SPOT_FIELDS = { "x", "y", "z", "r", "n" }

function Own.spotsPackedOk(s)
	if type(s) ~= "string" or s == "" then return false end
	local i, last = 1, #s
	while true do
		local _, e = strfind(s, SPOT_HEAD, i)
		if not e then return false end
		local _, n = strfind(s, "^,%d*%.?%d*", e + 1)
		if n then
			e = n
			local _, alt = strfind(s, "^,1", e + 1)
			if alt then e = alt end
		end
		if e == last then return true end
		if strbyte(s, e + 1) ~= SEMICOLON then return false end
		i = e + 2
	end
end

function Own.unpackSpots(s)
	local out = {}
	for rec in gmatch(s, "[^;]+") do
		local spot, i = {}, 0
		for f in gmatch(rec .. ",", "([^,]*),") do
			i = i + 1
			if f ~= "" then
				if i == 6 then
					spot.alt = true
				else
					local v = tonumber(f)
					if not v then return nil end
					spot[SPOT_FIELDS[i]] = v
				end
			end
		end
		out[#out + 1] = spot
	end
	return out
end

Own.PACKED = { __index = function(goal, k)
	if k ~= "spots" then return nil end
	local s = rawget(goal, "spotsPacked")
	local spots = s and Own.unpackSpots(s)
	if spots then rawset(goal, "spots", spots) end
	return spots
end }

function Own.packedGoals(steps)
	for _, step in ipairs(steps) do
		for _, goal in ipairs(step.goals) do
			if rawget(goal, "spotsPacked") ~= nil and getmetatable(goal) == nil then setmetatable(goal, Own.PACKED) end
		end
	end
end

local function checkGoal(goal)
	if type(goal) ~= "table" then return "not a table" end
	local rules = REQUIRED[goal.t]
	if not rules then return "unknown verb " .. tostring(goal.t) end
	local fields = REQUIRED_ORDER[goal.t]
	for i = 1, #fields do
		local field = fields[i]
		if not rules[field](goal[field]) then return goal.t .. " needs " .. field end
	end
	if goal.x ~= nil or goal.y ~= nil then
		if not (isNum(goal.map) and isNum(goal.x) and isNum(goal.y)) then return "coordinates need map, x and y" end
		if goal.x < 0 or goal.x > 100 or goal.y < 0 or goal.y > 100 then return "coordinates outside 0-100" end
	end
	if goal.f ~= nil and goal.f ~= "e" then return "unknown frame " .. tostring(goal.f) end
	if goal.r ~= nil and not (isNum(goal.r) and goal.r > 0) then return "bad radius" end
	if goal.oi ~= nil and not (isNum(goal.oi) and goal.oi >= 1) then return "bad objective index" end
	if goal.count ~= nil and not isNum(goal.count) then return "bad count" end
	if goal.text ~= nil and type(goal.text) ~= "string" then return "bad text" end
	if goal.t == "rep" and (goal.standing < 1 or goal.standing > 8) then return "standing outside 1-8" end
	if goal.t == "level" and goal.frac ~= nil and not isFrac(goal.frac) then return "bad frac" end
	for _, key in ipairs(KEYS.goalNumbers) do
		if goal[key] ~= nil and not isNum(goal[key]) then return "bad " .. key end
	end
	if goal.profName ~= nil and not isStr(goal.profName) then return "bad profName" end
	if goal.reagents ~= nil then
		if type(goal.reagents) ~= "table" then return "bad reagents" end
		for i = 1, #goal.reagents do
			local r = goal.reagents[i]
			if type(r) ~= "table" or not isNum(r.item) then return "bad reagent " .. i end
		end
	end
	if goal.t == "sethome" and not isStr(goal.location) and type(goal.candidates) ~= "table" then
		return "sethome needs location"
	end
	if goal.candidates ~= nil then
		if type(goal.candidates) ~= "table" or #goal.candidates == 0 then return "bad candidates" end
		for i = 1, #goal.candidates do
			local c = goal.candidates[i]
			if type(c) ~= "table" or not (isNum(c.map) and isNum(c.x) and isNum(c.y)) then return "bad candidate " .. i end
			if c.faction ~= nil and c.faction ~= "A" and c.faction ~= "H" and c.faction ~= "AH" then
				return "bad candidate faction " .. i
			end
		end
	end
	local spots, packed = rawget(goal, "spots"), rawget(goal, "spotsPacked")
	if packed ~= nil then
		if (spots ~= nil and getmetatable(goal) ~= Own.PACKED) or not Own.spotsPackedOk(packed) or not isNum(goal.map) then return "bad spots" end
	elseif spots ~= nil then
		if type(spots) ~= "table" or #spots == 0 or not isNum(goal.map) then return "bad spots" end
		for i = 1, #spots do
			local s = spots[i]
			if type(s) ~= "table" or not (isNum(s.x) and isNum(s.y) and isNum(s.r) and s.r >= 0) or (s.alt ~= nil and s.alt ~= true) then return "bad spot " .. i end
		end
	end
	if goal.spread ~= nil and not (goal.spread == true and (spots ~= nil or packed ~= nil)) then return "bad spread" end
	if goal.from ~= nil and not isStr(goal.from) then return "bad from" end
	if goal.fromAlso ~= nil and not isStr(goal.fromAlso) then return "bad fromAlso" end
	if goal.fromId ~= nil and not isNum(goal.fromId) then return "bad fromId" end
	if goal.fromAlsoId ~= nil and not isNum(goal.fromAlsoId) then return "bad fromAlsoId" end
	if goal.fromKind ~= nil and goal.fromKind ~= "npc" and goal.fromKind ~= "object" then return "bad fromKind" end
	if goal.fromRank ~= nil and not isNum(goal.fromRank) then return "bad fromRank" end
	if goal.fromFaction ~= nil and goal.fromFaction ~= "A" and goal.fromFaction ~= "H" and goal.fromFaction ~= "AH" then
		return "bad fromFaction"
	end
	for _, key in ipairs(KEYS.goalRanks) do
		if goal[key] ~= nil and not isNum(goal[key]) and not isStr(goal[key]) then return "bad " .. key end
	end
	if goal.pre ~= nil and type(goal.pre) ~= "table" then return "bad pre" end
	if goal.preAll ~= nil and type(goal.preAll) ~= "table" then return "bad preAll" end
	if goal.closedBy ~= nil and type(goal.closedBy) ~= "table" then return "bad closedBy" end
	if goal.rewards ~= nil then
		local r = goal.rewards
		if type(r) ~= "table" then return "bad rewards" end
		if (r.xp ~= nil and not isNum(r.xp)) or (r.money ~= nil and not isNum(r.money)) then return "bad rewards" end
		for _, key in ipairs(KEYS.rewardLists) do
			local list = r[key]
			if list ~= nil then
				if type(list) ~= "table" then return "bad rewards" end
				for i = 1, #list do
					local it = list[i]
					if type(it) ~= "table" or not isNum(it.item) then return "bad reward " .. i end
				end
			end
		end
	end
	if not checkOnly(goal.only) then return "bad only" end
	return nil
end

local function validate(def)
	if type(def) ~= "table" then return "guide is not a table" end
	if not isStr(def.id) then return "missing id" end
	if not isStr(def.title) then return "missing title" end
	local deferred = rawget(def, "steps") == nil and isStr(def.stepsSrc)
	if deferred then
		if not (isNum(def.stepCount) and def.stepCount > 0) then return "no steps" end
	elseif type(def.steps) ~= "table" or #def.steps == 0 then return "no steps" end
	if def.minLevel ~= nil and not isNum(def.minLevel) then return "bad minLevel" end
	if def.maxLevel ~= nil and not isNum(def.maxLevel) then return "bad maxLevel" end
	if def.next ~= nil and not isStr(def.next) then return "bad next" end
	if def.faction ~= nil and not isStr(def.faction) then return "bad faction" end
	if def.category ~= nil and not isStr(def.category) then return "bad category" end
	if def.pitch ~= nil and not isStr(def.pitch) then return "bad pitch" end
	if def.folder ~= nil and not isStr(def.folder) then return "bad folder" end
	if def.collects ~= nil then
		if type(def.collects) ~= "table" then return "bad collects" end
		for i = 1, #def.collects do
			if not isNum(def.collects[i]) then return "bad collects" end
		end
	end
	if def.reward ~= nil then
		if type(def.reward) ~= "table" then return "bad reward" end
		for i = 1, #def.reward do
			local r = def.reward[i]
			if type(r) ~= "table" or not (isNum(r.item) or isNum(r.spell) or isStr(r.text)) then return "bad reward " .. i end
		end
	end
	if def.why ~= nil and not isStr(def.why) then return "bad why" end
	for _, key in ipairs(KEYS.guideMaps) do
		local map = def[key]
		if map ~= nil then
			if type(map) ~= "table" then return "bad " .. key end
			for k, v in pairs(map) do
				if not (isStr(k) and isStr(v)) then return "bad " .. key end
			end
		end
	end
	for _, key in ipairs(KEYS.guideLists) do
		local list = def[key]
		if list ~= nil then
			if type(list) ~= "table" then return "bad " .. key end
			for i = 1, #list do
				if not isStr(list[i]) then return "bad " .. key end
			end
		end
	end
	if def.nextWhen ~= nil then
		if type(def.nextWhen) ~= "table" or type(def.nextChoices) ~= "table" then return "bad nextWhen" end
		for id, list in pairs(def.nextWhen) do
			local listed = false
			for i = 1, #def.nextChoices do
				if def.nextChoices[i] == id then listed = true end
			end
			if not (listed and list ~= nil and checkWhen(list)) then return "bad nextWhen" end
			for i = 1, #list do
				if list[i].k == "done" or list[i].k == "group" then return "bad nextWhen" end
			end
		end
	end
	if deferred then return nil end
	return Own.validateSteps(def.steps)
end

function Own.validateSteps(steps)
	local labelAt = {}
	for s, step in ipairs(steps) do
		if type(step) ~= "table" then return ("step %d is not a table"):format(s) end
		if type(step.goals) ~= "table" or #step.goals == 0 then return ("step %d has no goals"):format(s) end
		if not checkOnly(step.only) then return ("step %d: bad only"):format(s) end
		if not checkWhen(step.when) then return ("step %d: bad when"):format(s) end
		if step.label ~= nil then
			if not isStr(step.label) then return ("step %d: bad label"):format(s) end
			if labelAt[step.label] then return ("step %d: duplicate label %s"):format(s, step.label) end
			labelAt[step.label] = s
		end
		if not checkImage(step.image) then return ("step %d: bad image"):format(s) end
		for g, goal in ipairs(step.goals) do
			local err = checkGoal(goal)
			if err then return ("step %d goal %d: %s"):format(s, g, err) end
		end
	end
	for s, step in ipairs(steps) do
		local along = step.along
		if along ~= nil and along ~= true and not (isStr(along) and (labelAt[along] or 0) > s) then
			return ("step %d: bad along"):format(s)
		end
		if step.skipto ~= nil then
			if type(step.skipto) ~= "table" or #step.skipto == 0 then return ("step %d: bad skipto"):format(s) end
			for _, k in ipairs(step.skipto) do
				if type(k) ~= "table" or not (isStr(k.to) and (labelAt[k.to] or 0) > s) or type(k.when) ~= "table"
					or not checkWhen({ k.when }) or k.when.k == "group" then
					return ("step %d: bad skipto"):format(s)
				end
			end
		end
		for _, p in ipairs(step.when or {}) do
			if p.k == "done" and not labelAt[p.label] then return ("step %d: bad when"):format(s) end
		end
		for _, k in ipairs(step.skipto or {}) do
			if k.when.k == "done" and not labelAt[k.when.label] then return ("step %d: bad skipto"):format(s) end
		end
	end
	return nil
end
Guides.Validate = validate

