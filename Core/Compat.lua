-- ============================================================================
-- TuWoW_Leveling — Core/Compat.lua
-- Submódulo de jugador, GUID 3.3.5a, misiones, diálogos, objetos, hechizos,
-- profesiones, reputaciones y logros sobre APIs nativas 3.3.5a.
-- ============================================================================

local ADDON, ns = ...

local Compat = ns.Compat or {}
ns.Compat = Compat

local type, tonumber, ipairs, pairs, pcall, select = type, tonumber, ipairs, pairs, pcall, select
local math_floor = math.floor

-------------------------------------------------------------------------------
-- 1. Player & Unit Info (3.3.5a)
-------------------------------------------------------------------------------

function Compat.IsSecret(_) return false end
function Compat.Readable(v) return v end
function Compat.IsGamepadActive() return false end

function Compat.Now()
	if time then return time() end
	return GetTime and math_floor(GetTime()) or 0
end

function Compat.GetPlayerFaction()
	local faction = UnitFactionGroup and UnitFactionGroup("player")
	if faction == "Alliance" or faction == "Horde" then return faction end
	return nil
end

function Compat.GetPlayerLevel()
	return UnitLevel("player") or 1
end

function Compat.GetPlayerXP()
	local cur = UnitXP("player") or 0
	local max = UnitXPMax("player") or 1
	if max <= 0 then max = 1 end
	return cur, max, cur / max
end

function Compat.GetPlayerRace()
	local _, raceFile = UnitRace("player")
	return raceFile or "Human"
end

function Compat.GetPlayerClass()
	local _, classFile = UnitClass("player")
	return classFile or "WARRIOR"
end

function Compat.GetPlayerInfo()
	local _, race = UnitRace("player")
	local _, class = UnitClass("player")
	local faction = Compat.GetPlayerFaction() or "Neutral"
	return {
		name = UnitName("player"),
		realm = GetRealmName and GetRealmName() or nil,
		guid = UnitGUID and UnitGUID("player") or nil,
		level = UnitLevel("player") or 1,
		xp = UnitXP and UnitXP("player") or 0,
		xpMax = UnitXPMax and UnitXPMax("player") or 0,
		race = race,
		class = class,
		faction = faction,
	}
end

local RACE_ID_BY_FILE = {
	Human = 1, Orc = 2, Dwarf = 3, NightElf = 4,
	Scourge = 5, Undead = 5, Tauren = 6, Gnome = 7,
	Troll = 8, BloodElf = 10, Draenei = 11,
}

local CLASS_ID_BY_FILE = {
	WARRIOR = 1, PALADIN = 2, HUNTER = 3, ROGUE = 4,
	PRIEST = 5, DEATHKNIGHT = 6, SHAMAN = 7, MAGE = 8,
	WARLOCK = 9, DRUID = 11,
}

function Compat.PlayerRaceId()
	local _, raceFile = UnitRace("player")
	return raceFile and RACE_ID_BY_FILE[raceFile] or nil
end

function Compat.PlayerClassMask()
	local _, classFile = UnitClass("player")
	local classID = classFile and CLASS_ID_BY_FILE[classFile]
	return classID and (2 ^ (classID - 1)) or nil
end

function Compat.GetPlayerFacing()
	return GetPlayerFacing and GetPlayerFacing() or 0
end

function Compat.GetPlayerSpeed()
	return GetUnitSpeed and GetUnitSpeed("player") or 0
end

function Compat.GetZoneText()
	local zone = GetZoneText and GetZoneText() or (GetRealZoneText and GetRealZoneText())
	local sub = GetSubZoneText and GetSubZoneText() or nil
	if zone == "" then zone = nil end
	if sub == "" then sub = nil end
	return zone, sub
end

function Compat.GetBindLocation()
	local loc = GetBindLocation and GetBindLocation() or nil
	if loc == "" then return nil end
	return loc
end

function Compat.GetMoney()
	return GetMoney and GetMoney() or 0
end

function Compat.IsOnTaxi()
	return UnitOnTaxi and UnitOnTaxi("player") and true or false
end

function Compat.GetSpellCooldown(spellID)
	if not GetSpellCooldown then return 0, 0 end
	local ok, s, d = pcall(GetSpellCooldown, spellID)
	if not ok or type(s) ~= "number" or type(d) ~= "number" then return 0, 0 end
	return s, d
end

function Compat.GetItemCooldown(itemID)
	if not GetItemCooldown then return 0, 0 end
	local ok, s, d = pcall(GetItemCooldown, itemID)
	if not ok or type(s) ~= "number" or type(d) ~= "number" then return 0, 0 end
	return s, d
end

function Compat.InCombat()
	if InCombatLockdown and InCombatLockdown() then return true end
	return UnitAffectingCombat and UnitAffectingCombat("player") and true or false
end

function Compat.IsInInstance()
	if not IsInInstance then return false end
	local inside, kind = IsInInstance()
	if not inside then return false end
	return true, kind
end

function Compat.GetInstanceMapID()
	if not (Compat.IsInInstance() and GetInstanceInfo) then return nil end
	local id = select(8, GetInstanceInfo())
	return type(id) == "number" and id or nil
end

function Compat.IsIndoors()
	if not IsIndoors then return nil end
	local ok, inside = pcall(IsIndoors)
	if not ok then return nil end
	return inside and true or false
end

function Compat.IsShiftKeyDown()
	return IsShiftKeyDown and IsShiftKeyDown() and true or false
end

function Compat.ParseGUID335(guid)
	if type(guid) ~= "string" or #guid < 12 then return nil, nil end
	if guid:sub(1, 2) == "0x" then
		local highNibble = tonumber(guid:sub(5, 5), 16)
		if not highNibble then return nil, nil end
		local unitType = highNibble % 8
		local id = tonumber(guid:sub(6, 12), 16)
		return unitType, id
	end
	local uType, _, _, _, _, npcID = strsplit("-", guid)
	if uType == "Creature" or uType == "Vehicle" then
		return 3, tonumber(npcID)
	elseif uType == "GameObject" then
		return 1, tonumber(npcID)
	end
	return nil, nil
end

function Compat.GetNpcID(unit)
	local guid = UnitGUID and UnitGUID(unit or "npc")
	if not guid then return nil end
	local unitType, id = Compat.ParseGUID335(guid)
	if unitType == 3 or unitType == 5 or unitType == 1 then
		return id
	end
	return nil
end

function Compat.GetObjectIDFromGUID(guid)
	local unitType, id = Compat.ParseGUID335(guid)
	if unitType == 1 then return id end
	return nil
end

function Compat.GetCurrentTaxiNode()
	if NumTaxiNodes and TaxiNodeGetType and TaxiNodeName then
		for i = 1, NumTaxiNodes() or 0 do
			if TaxiNodeGetType(i) == "CURRENT" then return TaxiNodeName(i) end
		end
	end
	return nil
end

function Compat.AddOnPresent(name)
	local A = C_AddOns
	if not A then return false end
	if A.IsAddOnLoaded and A.IsAddOnLoaded(name) then return true end
	if not (A.DoesAddOnExist and A.GetAddOnInfo) or not A.DoesAddOnExist(name) then return false end
	return select(4, A.GetAddOnInfo(name)) and true or false
end

-------------------------------------------------------------------------------
-- 2. Quests & QuestLog (3.3.5a)
-------------------------------------------------------------------------------

local completedQuests = {}

local function RefreshCompletedQuestsFromServer()
	if GetQuestsCompleted then
		GetQuestsCompleted(completedQuests)
	end
end

local questCompatFrame = CreateFrame("Frame")
questCompatFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
questCompatFrame:RegisterEvent("QUEST_QUERY_COMPLETE")
questCompatFrame:SetScript("OnEvent", function(_, event)
	if event == "PLAYER_ENTERING_WORLD" then
		if QueryQuestsCompleted then QueryQuestsCompleted() end
		RefreshCompletedQuestsFromServer()
	elseif event == "QUEST_QUERY_COMPLETE" then
		RefreshCompletedQuestsFromServer()
		if ns.Fire then ns.Fire("QUEST_STATE_CHANGED") end
	end
end)

function Compat.MarkQuestCompleted(questID)
	if questID then completedQuests[questID] = true end
end

function Compat.IsQuestCompleted(questID)
	if not questID then return false end
	if completedQuests[questID] then return true end
	if Questie and Questie.db and Questie.db.char and Questie.db.char.complete and Questie.db.char.complete[questID] then
		return true
	end
	return false
end

local function FindQuestLogIndexByID(questID)
	if not questID or not GetNumQuestLogEntries then return nil end
	local numEntries = GetNumQuestLogEntries() or 0
	for i = 1, numEntries do
		local title, level, questTag, suggestedGroup, isHeader, isCollapsed, isComplete, isDaily, qID = GetQuestLogTitle(i)
		if not isHeader and qID == questID then
			return i, title, level, isComplete
		end
	end
	return nil
end
Compat.FindQuestLogIndexByID = FindQuestLogIndexByID

function Compat.IsOnQuest(questID)
	return FindQuestLogIndexByID(questID) ~= nil
end

function Compat.IsQuestReadyForTurnIn(questID)
	local logIdx, _, _, isComplete = FindQuestLogIndexByID(questID)
	if not logIdx then return false end
	if isComplete == 1 or isComplete == true then return true end
	if isComplete == -1 then return false end
	local numObj = GetNumQuestLeaderBoards and GetNumQuestLeaderBoards(logIdx) or 0
	if numObj == 0 then return true end
	for j = 1, numObj do
		local _, _, finished = GetQuestLogLeaderBoard(j, logIdx)
		if not finished then return false end
	end
	return true
end

function Compat.GetQuestObjectives(questID)
	local logIdx = FindQuestLogIndexByID(questID)
	if not logIdx then return nil end
	local numObj = GetNumQuestLeaderBoards and GetNumQuestLeaderBoards(logIdx) or 0
	if numObj == 0 then return nil end
	local results = {}
	for j = 1, numObj do
		local text, objType, finished = GetQuestLogLeaderBoard(j, logIdx)
		local isDone = finished == 1 or finished == true
		local numFulfilled, numRequired = 0, 1
		if text then
			local cur, max = text:match("(%d+)%s*/%s*(%d+)")
			if cur and max then
				numFulfilled = tonumber(cur) or 0
				numRequired = tonumber(max) or 1
			elseif isDone then
				numFulfilled = 1
				numRequired = 1
			end
		end
		if numRequired <= 0 then
			numRequired = 1
			numFulfilled = isDone and 1 or 0
		end
		results[j] = {
			text = text or "",
			type = objType or "",
			finished = isDone,
			numFulfilled = numFulfilled,
			numRequired = numRequired,
		}
	end
	return results
end

function Compat.ObjectiveLabel(text)
	if type(text) ~= "string" then return "" end
	local s = text:gsub("^%s*%d+%s*/%s*%d+%s+", ""):gsub("%s*:%s*%d+%s*/%s*%d+%s*$", "")
	s = s:gsub("^%s+", ""):gsub("%s+$", "")
	if s == "slain" or s == "muertos" or s == "eliminados" then return "" end
	s = s:gsub("%s+slain$", ""):gsub("%s+muertos?$", ""):gsub("%s+eliminados?$", "")
	return s
end

local inQuestTitleLookup = false
function Compat.GetQuestTitle(questID)
	if not questID or inQuestTitleLookup then return nil end
	inQuestTitleLookup = true

	-- 1. Check active quest log
	local _, title = FindQuestLogIndexByID(questID)
	if title and title ~= "" then
		inQuestTitleLookup = false
		return title
	end

	-- 2. Check localized Spanish names pack
	if ns.Names and ns.Names.Quest then
		local t = ns.Names.Quest(questID)
		if t and t ~= "" then
			inQuestTitleLookup = false
			return t
		end
	end

	-- 3. Check Questie Classic 3.3.5a DB
	if QuestieLoader then
		local ok, qdb = pcall(QuestieLoader.ImportModule, QuestieLoader, "QuestieDB")
		if ok and qdb and qdb.GetQuest then
			local ok2, q = pcall(qdb.GetQuest, qdb, questID)
			if ok2 and q and q.name then
				inQuestTitleLookup = false
				return q.name
			end
		end
	end

	-- 4. Check QuestDB raw title (English fallback without recursing)
	if ns.QuestDB and ns.QuestDB.IsLoaded and ns.QuestDB.IsLoaded() then
		local raw = ns.QuestDB.GetRawQuestTitle and ns.QuestDB.GetRawQuestTitle(questID)
		if raw and raw ~= "" then
			inQuestTitleLookup = false
			return raw
		end
	end

	inQuestTitleLookup = false
	return nil
end

function Compat.GetLogQuests()
	local ids = {}
	local numEntries = GetNumQuestLogEntries and GetNumQuestLogEntries() or 0
	for i = 1, numEntries do
		local _, _, _, _, isHeader, _, _, _, qID = GetQuestLogTitle(i)
		if not isHeader and type(qID) == "number" and qID > 0 then
			ids[#ids + 1] = qID
		end
	end
	return ids
end

Compat.GetActiveQuestIDs = Compat.GetLogQuests

function Compat.GetLogCap()
	return MAX_QUESTLOG_QUESTS or 25
end

function Compat.AskAbandonQuest(questID)
	local logIdx = FindQuestLogIndexByID(questID)
	if not (logIdx and SelectQuestLogEntry and SetAbandonQuest and StaticPopup_Show) then return false end
	SelectQuestLogEntry(logIdx)
	SetAbandonQuest()
	StaticPopup_Show("ABANDON_QUEST", Compat.GetQuestTitle(questID) or "")
	return true
end

function Compat.ShareQuest(questID)
	local logIdx = FindQuestLogIndexByID(questID)
	if not (logIdx and SelectQuestLogEntry and QuestLogPushQuest) then return false end
	SelectQuestLogEntry(logIdx)
	if GetQuestLogPushable and not GetQuestLogPushable() then return false end
	QuestLogPushQuest()
	return true
end

function Compat.ResolveQuestIDByTitle(title, isActive)
	if not title or title == "" then return nil end
	local cleanTitle = title:gsub("^%[%d+%+?%a?%]%s*", ""):gsub("^%s+", ""):gsub("%s+$", "")

	if isActive then
		local numEntries = GetNumQuestLogEntries and GetNumQuestLogEntries() or 0
		for i = 1, numEntries do
			local qTitle, _, _, _, isHeader, _, _, _, qID = GetQuestLogTitle(i)
			if not isHeader and qID and (qTitle == title or qTitle == cleanTitle) then
				return qID
			end
		end
	end

	if ns.Engine and ns.Engine.GetGuide then
		local g = ns.Engine.GetGuide()
		local stepIdx = ns.Engine.GetLiveStep and ns.Engine.GetLiveStep() or (ns.Engine.GetStepIndex and ns.Engine.GetStepIndex())
		if g and g.steps and stepIdx then
			for s = math.max(1, stepIdx - 1), math.min(#g.steps, stepIdx + 2) do
				local step = g.steps[s]
				for _, goal in ipairs(step and step.goals or {}) do
					local q = goal.quest or goal.questID
					if q then
						local qName = Compat.GetQuestTitle(q)
						local gName = goal.title or goal.questName
						if qName == cleanTitle or gName == cleanTitle or qName == title or gName == title then
							return q
						end
					end
				end
			end
		end
	end

	return nil
end

function Compat.GetOfferedQuests(source)
	local out = {}
	if source == "gossip" then
		local list = Compat.GetGossipAvailableQuests() or {}
		for i = 1, #list do
			if list[i].questID then out[#out + 1] = list[i].questID end
		end
	elseif source == "greeting" then
		if not GetNumAvailableQuests then return nil end
		for i = 1, GetNumAvailableQuests() or 0 do
			local q = (GetAvailableQuestInfo and select(5, GetAvailableQuestInfo(i)))
				or (GetAvailableTitle and Compat.ResolveQuestIDByTitle(GetAvailableTitle(i), false))
			if q then out[#out + 1] = q end
		end
	elseif source == "detail" then
		local q = GetQuestID and GetQuestID()
		if not q or q == 0 then return nil end
		out[1] = q
	else
		return nil
	end
	return out
end

function Compat.GetActiveQuests(source)
	local out = {}
	if source == "gossip" then
		local list = Compat.GetGossipActiveQuests() or {}
		for i = 1, #list do
			if list[i].questID then out[#out + 1] = list[i].questID end
		end
	elseif source == "greeting" then
		if not GetNumActiveQuests then return nil end
		for i = 1, GetNumActiveQuests() or 0 do
			local q = (GetActiveQuestID and GetActiveQuestID(i))
				or (GetActiveTitle and Compat.ResolveQuestIDByTitle(GetActiveTitle(i), true))
			if q then out[#out + 1] = q end
		end
	else
		return nil
	end
	return out
end

local function greyLevel(level)
	if level <= 5 then return 0 end
	if level <= 39 then return level - 5 - math_floor(level / 10) end
	if level <= 59 then return level - 1 - math_floor(level / 5) end
	return level - 9
end

function Compat.IsQuestTrivial(qlvl, level)
	if not (qlvl and level) then return false end
	return qlvl <= greyLevel(level)
end

C_QuestLog = C_QuestLog or {}
function C_QuestLog.GetNumQuestLogEntries()
	if GetNumQuestLogEntries then return GetNumQuestLogEntries() end
	return 0, 0
end

function C_QuestLog.GetInfo(questLogIndex)
	if not GetQuestLogTitle then return nil end
	local title, level, questTag, suggestedGroup, isHeader, isCollapsed, isComplete, isDaily, questID = GetQuestLogTitle(questLogIndex)
	if not title then return nil end
	return {
		title = title,
		questLogIndex = questLogIndex,
		questID = questID or 0,
		level = level or 0,
		difficultyLevel = level or 0,
		isHeader = isHeader == 1 or isHeader == true,
		isCollapsed = isCollapsed == 1 or isCollapsed == true,
		isComplete = isComplete == 1 or isComplete == true,
		frequency = isDaily and 1 or 0,
	}
end

function C_QuestLog.GetQuestObjectives(questID) return Compat.GetQuestObjectives(questID) or {} end
function C_QuestLog.IsQuestFlaggedCompleted(questID) return Compat.IsQuestCompleted(questID) end
function C_QuestLog.IsOnQuest(questID) return Compat.IsOnQuest(questID) end
function C_QuestLog.IsComplete(questID) return Compat.IsQuestReadyForTurnIn(questID) end
C_QuestLog.ReadyForTurnIn = C_QuestLog.IsComplete
function C_QuestLog.GetTitleForQuestID(questID) return Compat.GetQuestTitle(questID) end
function C_QuestLog.GetLogIndexForQuestID(questID) return (FindQuestLogIndexByID(questID)) end

function C_QuestLog.SetSelectedQuest(questID)
	local idx = FindQuestLogIndexByID(questID)
	if idx and SelectQuestLogEntry then SelectQuestLogEntry(idx) end
end

function C_QuestLog.GetSelectedQuest()
	if not (GetQuestLogSelection and GetQuestLogTitle) then return nil end
	local idx = GetQuestLogSelection()
	if not idx or idx <= 0 then return nil end
	local _, _, _, _, isHeader, _, _, _, qID = GetQuestLogTitle(idx)
	return (not isHeader and qID and qID > 0) and qID or nil
end

function C_QuestLog.SetAbandonQuest()
	if SetAbandonQuest then SetAbandonQuest() end
end

function C_QuestLog.IsUnitOnQuest(unit, questID)
	local idx = FindQuestLogIndexByID(questID)
	if idx and IsUnitOnQuest then
		return IsUnitOnQuest(idx, unit) == 1
	end
	return nil
end

C_Item = C_Item or {}
function C_Item.GetItemInfo(id)
	if not GetItemInfo or not id then return nil end
	return GetItemInfo(id)
end
function C_Item.GetItemInfoInstant(id)
	if not id then return nil end
	if type(id) == "string" then
		local found = id:match("item:(%d+)")
		if found then id = tonumber(found) end
	end
	if GetItemInfo then
		local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipLoc, icon, price, classID, subclassID = GetItemInfo(id)
		return id, nil, nil, equipLoc, icon, classID, subclassID
	end
	return id
end
function C_Item.GetItemNameByID(id)
	if not GetItemInfo or not id then return nil end
	return (GetItemInfo(id))
end
function C_Item.GetItemIconByID(id)
	if not id then return nil end
	if GetItemIcon then
		local icon = GetItemIcon(id)
		if icon then return icon end
	end
	if GetItemInfo then
		local _, _, _, _, _, _, _, _, _, icon = GetItemInfo(id)
		return icon
	end
	return nil
end
function C_Item.GetItemCount(id, includeBank)
	if not GetItemCount or not id then return 0 end
	return GetItemCount(id, includeBank) or 0
end
function C_Item.GetItemCooldown(id)
	if not GetItemCooldown or not id then return 0, 0, 0 end
	return GetItemCooldown(id)
end
function C_Item.IsUsableItem(id)
	if not IsUsableItem or not id then return true end
	return IsUsableItem(id)
end
function C_Item.IsItemInRange(id, unit)
	if not IsItemInRange or not id then return nil end
	return IsItemInRange(id, unit or "target") == 1
end
function C_Item.GetItemSpell(id)
	if not GetItemSpell or not id then return nil end
	return GetItemSpell(id)
end
function C_Item.EquipItemByName(name, slot)
	if not EquipItemByName or not name then return false end
	if slot then EquipItemByName(name, slot) else EquipItemByName(name) end
	return true
end

C_Container = C_Container or {}
function C_Container.GetItemCooldown(bag, slot)
	if not GetContainerItemCooldown or not bag or not slot then return 0, 0, 0 end
	return GetContainerItemCooldown(bag, slot)
end

C_Spell = C_Spell or {}
function C_Spell.GetSpellName(id)
	if not GetSpellInfo or not id then return nil end
	return (GetSpellInfo(id))
end
function C_Spell.GetSpellTexture(id)
	if not GetSpellInfo or not id then return nil end
	local _, _, icon = GetSpellInfo(id)
	return icon
end

-------------------------------------------------------------------------------
-- 3. Gossip & Dialogs (3.3.5a)
-------------------------------------------------------------------------------

function Compat.GetGossipAvailableQuests()
	if not GetGossipAvailableQuests then return {} end
	local raw = { GetGossipAvailableQuests() }
	local results = {}
	local stride = 5
	local idx = 1
	for i = 1, #raw, stride do
		local title = raw[i]
		if title then
			results[idx] = {
				index = idx,
				title = title,
				questLevel = raw[i + 1] or 0,
				isTrivial = raw[i + 2] == 1 or raw[i + 2] == true,
				frequency = raw[i + 3] and 1 or 0,
				repeatable = raw[i + 4] == 1 or raw[i + 4] == true,
				questID = Compat.ResolveQuestIDByTitle(title, false),
			}
			idx = idx + 1
		end
	end
	return results
end

function Compat.GetGossipActiveQuests()
	if not GetGossipActiveQuests then return {} end
	local raw = { GetGossipActiveQuests() }
	local results = {}
	local stride = 4
	local idx = 1
	for i = 1, #raw, stride do
		local title = raw[i]
		if title then
			local qID = Compat.ResolveQuestIDByTitle(title, true)
			local isComplete = raw[i + 3] == 1 or raw[i + 3] == true
			if not isComplete and qID and Compat.IsQuestReadyForTurnIn(qID) then
				isComplete = true
			end
			results[idx] = {
				index = idx,
				title = title,
				questLevel = raw[i + 1] or 0,
				isTrivial = raw[i + 2] == 1 or raw[i + 2] == true,
				isComplete = isComplete,
				questID = qID,
			}
			idx = idx + 1
		end
	end
	return results
end

function Compat.SelectGossipAvailableQuest(indexOrQuestID)
	if not SelectGossipAvailableQuest or not indexOrQuestID then return end
	if indexOrQuestID > 30 then
		for _, info in ipairs(Compat.GetGossipAvailableQuests()) do
			if info.questID == indexOrQuestID then
				SelectGossipAvailableQuest(info.index)
				return
			end
		end
	end
	SelectGossipAvailableQuest(indexOrQuestID)
end

function Compat.SelectGossipActiveQuest(indexOrQuestID)
	if not SelectGossipActiveQuest or not indexOrQuestID then return end
	if indexOrQuestID > 30 then
		for _, info in ipairs(Compat.GetGossipActiveQuests()) do
			if info.questID == indexOrQuestID then
				SelectGossipActiveQuest(info.index)
				return
			end
		end
	end
	SelectGossipActiveQuest(indexOrQuestID)
end

function Compat.GetGossipOptions()
	if not GetGossipOptions then return {} end
	local raw = { GetGossipOptions() }
	local results = {}
	local idx = 1
	for i = 1, #raw, 2 do
		if raw[i] then
			results[idx] = {
				index = idx,
				gossipOptionID = idx,
				name = raw[i],
				type = raw[i + 1],
			}
			idx = idx + 1
		end
	end
	return results
end

function Compat.SelectGossipOption(index)
	if SelectGossipOption then SelectGossipOption(index) end
end

C_GossipInfo = C_GossipInfo or {}
C_GossipInfo.GetAvailableQuests = Compat.GetGossipAvailableQuests
C_GossipInfo.GetActiveQuests = Compat.GetGossipActiveQuests
C_GossipInfo.GetOptions = Compat.GetGossipOptions
C_GossipInfo.SelectAvailableQuest = Compat.SelectGossipAvailableQuest
C_GossipInfo.SelectActiveQuest = Compat.SelectGossipActiveQuest
C_GossipInfo.SelectOption = Compat.SelectGossipOption
C_GossipInfo.CloseGossip = CloseGossip or function() end

-------------------------------------------------------------------------------
-- 4. Items, Spells, Skills, Reputations & Achievements (3.3.5a)
-------------------------------------------------------------------------------

function Compat.GetItemCount(itemID, includeBank)
	if not (itemID and GetItemCount) then return 0 end
	return GetItemCount(itemID, includeBank and true or nil) or 0
end

function Compat.GetItemInfo(itemID)
	if not (itemID and GetItemInfo) then return nil end
	return GetItemInfo(itemID)
end

function Compat.GetItemQuality(itemID)
	if type(itemID) ~= "number" or not GetItemInfo then return nil end
	local ok, _, _, q = pcall(GetItemInfo, itemID)
	if ok and type(q) == "number" then return q end
	return nil
end

function Compat.ItemQualityHex(quality)
	local colors = type(quality) == "number" and ITEM_QUALITY_COLORS
	local c = type(colors) == "table" and colors[quality]
	if type(c) ~= "table" or type(c.r) ~= "number" then return nil end
	return string.format("ff%02x%02x%02x", math_floor(c.r * 255 + 0.5), math_floor(c.g * 255 + 0.5), math_floor(c.b * 255 + 0.5))
end

function Compat.ItemIcon(itemID)
	if type(itemID) ~= "number" or not GetItemIcon then return nil end
	local ok, icon = pcall(GetItemIcon, itemID)
	if ok and icon then return icon end
	return nil
end

function Compat.SpellIcon(spellID)
	if type(spellID) ~= "number" or not GetSpellInfo then return nil end
	local ok, _, _, icon = pcall(GetSpellInfo, spellID)
	if ok and icon then return icon end
	return nil
end

function Compat.ItemLink(itemID)
	if type(itemID) ~= "number" or not GetItemInfo then return nil end
	local ok, _, link = pcall(GetItemInfo, itemID)
	if ok and type(link) == "string" then return link end
	return nil
end

function Compat.RequestItem(itemID)
	if type(itemID) ~= "number" or not GetItemInfo then return false end
	return GetItemInfo(itemID) ~= nil
end

function Compat.GetItemName(itemID)
	if type(itemID) ~= "number" or not GetItemInfo then return nil end
	local ok, name = pcall(GetItemInfo, itemID)
	if ok and type(name) == "string" and name ~= "" then return name end
	return nil
end

function Compat.RequestQuest(_) end

function Compat.SpellLink(spellID)
	if type(spellID) ~= "number" or not GetSpellLink then return nil end
	local ok, link = pcall(GetSpellLink, spellID)
	if ok and type(link) == "string" then return link end
	return nil
end

function Compat.RequestSpell(spellID)
	if type(spellID) ~= "number" or not GetSpellInfo then return false end
	return GetSpellInfo(spellID) ~= nil
end

local SKILL_LINES = {
	alchemy = 171, blacksmithing = 164, enchanting = 333, engineering = 202,
	herbalism = 182, leatherworking = 165, mining = 186, skinning = 393,
	tailoring = 197, cooking = 185, fishing = 356, ["first aid"] = 129,
	riding = 762,
}
Compat.SKILL_LINES = SKILL_LINES

local SKILL_ID_TO_NAMES = {
	[171] = { "Alchemy", "Alquimia" },
	[164] = { "Blacksmithing", "Herrería" },
	[185] = { "Cooking", "Cocina" },
	[333] = { "Enchanting", "Encantamiento" },
	[202] = { "Engineering", "Ingeniería" },
	[129] = { "First Aid", "Primeros auxilios" },
	[356] = { "Fishing", "Pesca" },
	[182] = { "Herbalism", "Herboristería" },
	[755] = { "Jewelcrafting", "Joyería" },
	[165] = { "Leatherworking", "Peletería" },
	[186] = { "Mining", "Minería" },
	[762] = { "Riding", "Equitación" },
	[393] = { "Skinning", "Desuello" },
	[197] = { "Tailoring", "Sastrería" },
}

function Compat.Supports(feature)
	if feature == "skill" then
		return (GetNumSkillLines and GetSkillLineInfo) and true or false
	elseif feature == "spell" then
		return (IsSpellKnown or IsPlayerSpell) and true or false
	elseif feature == "faction" then
		return (GetFactionInfoByID or GetFactionInfo) and true or false
	elseif feature == "achievement" then
		return GetAchievementInfo and true or false
	end
	return false
end

function Compat.GetSkillRank(skillLineOrName)
	if not (GetNumSkillLines and GetSkillLineInfo) then return nil end
	local id, name
	if type(skillLineOrName) == "number" then
		id = skillLineOrName
	elseif type(skillLineOrName) == "string" then
		name = skillLineOrName:lower()
		id = SKILL_LINES[name]
	else
		return nil
	end
	local candidates = id and SKILL_ID_TO_NAMES[id] or (name and { name }) or {}
	local numSkills = GetNumSkillLines() or 0
	for i = 1, numSkills do
		local sName, isHeader, _, rank, _, _, maxRank = GetSkillLineInfo(i)
		if not isHeader and sName then
			local sLower = sName:lower()
			if name and sLower == name then
				return rank or 0, maxRank or 0
			end
			for _, cand in ipairs(candidates) do
				if sLower == cand:lower() then
					return rank or 0, maxRank or 0
				end
			end
		end
	end
	return nil
end

function Compat.GetSkillLineName(skillLine)
	local names = type(skillLine) == "number" and SKILL_ID_TO_NAMES[skillLine]
	if not names then return nil end
	if ns.IsSpanish and ns.IsSpanish() then
		return names[2] or names[1]
	end
	return names[1]
end

function Compat.IsPlayerSpell(spellID)
	if not spellID then return nil end
	if IsSpellKnown then
		local ok, known = pcall(IsSpellKnown, spellID)
		if ok then return known and true or false end
	end
	return nil
end

function Compat.IsSpellKnown(spellID)
	if not spellID then return false end
	if IsSpellKnown and IsSpellKnown(spellID) then return true end
	if IsPlayerSpell and IsPlayerSpell(spellID) then return true end
	return false
end

function Compat.GetFactionStanding(factionID)
	if not factionID then return nil end
	if type(factionID) == "number" and GetFactionInfoByID then
		local name, _, standingID, barMin, barMax, barValue = GetFactionInfoByID(factionID)
		if not standingID then return nil end
		return standingID, barValue or 0, barMin or 0, barMax or 0, name
	end
	if GetNumFactions and GetFactionInfo then
		local target = tostring(factionID):lower()
		for i = 1, GetNumFactions() or 0 do
			local name, _, standingID, barMin, barMax, barValue, _, _, isHeader = GetFactionInfo(i)
			if not isHeader and name and name:lower() == target then
				return standingID, barValue or 0, barMin or 0, barMax or 0, name
			end
		end
	end
	return nil
end

function Compat.IsAreaExploredAt() return nil end

function Compat.GetAchievement(id)
	if not (id and GetAchievementInfo) then return nil end
	local aid, name, _, completed, _, _, _, _, _, _, _, _, earnedByMe = GetAchievementInfo(id)
	if earnedByMe ~= nil then completed = completed and earnedByMe end
	if not aid then return nil end
	local criteria = {}
	local n = GetAchievementNumCriteria and GetAchievementNumCriteria(id) or 0
	if GetAchievementCriteriaInfo then
		for i = 1, n do
			local text, _, done, cur, max = GetAchievementCriteriaInfo(id, i)
			done = done and true or false
			cur, max = tonumber(cur) or 0, tonumber(max) or 0
			if max <= 0 then cur, max = done and 1 or 0, 1 end
			criteria[i] = { text = text or "", completed = done, cur = cur, max = max }
		end
	end
	return { completed = completed and true or false, name = name, criteria = criteria }
end

function Compat.IsNearCoord(mapID, x, y, radius)
	radius = radius or 15
	local playerMap, px, py = Compat.GetPlayerMapPosition()
	if not playerMap or not px or not py then return false end
	local dist = Compat.DistanceYards(playerMap, px, py, mapID, x, y)
	return dist ~= nil and dist <= radius
end
