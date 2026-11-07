-- Engine client event wiring, NPC frame hooks, and login restoration
-- Modular part of ns.Engine (< 1000 lines).

local ADDON, ns = ...
setfenv(1, ns.Engine._env)

-- Events
---------------------------------------------------------------------------

function onUpdateEvent() requestUpdate() end

-- Every name below is declared in Forever's API documentation; RegisterEvent
-- skips any a client build does not know.
for _, event in ipairs({
	"QUEST_ACCEPTED", "QUEST_REMOVED", "QUEST_LOG_UPDATE", "QUEST_WATCH_UPDATE",
	"BAG_UPDATE_DELAYED", "PLAYER_ENTERING_WORLD", "PLAYER_MONEY",
	-- level (a point inside a level: `level 12.5`)
	"PLAYER_XP_UPDATE",
	-- skill / craft
	"SKILL_LINES_CHANGED", "CHAT_MSG_SKILL", "TRADE_SKILL_SHOW", "TRADE_SKILL_LIST_UPDATE",
	-- learn
	"LEARNED_SPELL_IN_SKILL_LINE", "SPELLS_CHANGED", "NEW_RECIPE_LEARNED",
	-- rep
	"UPDATE_FACTION", "CHAT_MSG_COMBAT_FACTION_CHANGE",
	-- explore
	"MAP_EXPLORATION_UPDATED",
	-- achieve (and Legacy Challenges)
	"ACHIEVEMENT_EARNED", "CRITERIA_UPDATE", "CRITERIA_EARNED",
}) do
	ns.RegisterEvent(event, onUpdateEvent)
end
-- The quest database says which quest collects count the bags (Own.bagCollect).
ns.On("QUESTDB_LOADED", onUpdateEvent)
-- The Hearthstone's cooldown started, ended or the bind moved (QoL/Hearth.lua).
ns.On("QOL_HEARTH_CHANGED", onUpdateEvent)

-- New gear verdicts (equipment, spec, level, item data): `when upgrade`.
ns.On("GEAR_UPDATED", onUpdateEvent)

-- A new answer for every group quest (`when group`, Own.groupAnswer), and
-- deathskips turned on or off (`die` goals, Own.deathskips).
ns.On("SETTING_CHANGED", function(path)
	if path == "behavior.groupQuests" or path == "behavior.deathskips" then requestUpdate() end
end)

-- An item or spell going on cooldown: `when cooldown` (Own.onCooldown), once a
-- guide has asked, since SPELL_UPDATE_COOLDOWN comes with every cast.
for _, event in ipairs({ "BAG_UPDATE_COOLDOWN", "SPELL_UPDATE_COOLDOWN" }) do
	ns.RegisterEvent(event, function() if Own.cooldownAsked then requestUpdate() end end)
end

-- Where the player is changed enough to re-pick candidates: a zone change or
-- landing (control comes back after a flight).
function onContextEvent()
	contextGen = contextGen + 1
	requestUpdate()
end
for _, event in ipairs({ "ZONE_CHANGED", "ZONE_CHANGED_INDOORS", "ZONE_CHANGED_NEW_AREA", "PLAYER_CONTROL_GAINED" }) do
	ns.RegisterEvent(event, onContextEvent)
end

-- Binding during the step completes `sethome nearest`, and a located
-- `sethome` when the innkeeper bound at is its inn's, in every tab.
ns.RegisterEvent("HEARTHSTONE_BOUND", function()
	if player then
		local npc = Compat().GetNpcID("npc")
		for i = 1, #tabs do
			use(tabs[i])
			latch("sethome", npc)
		end
		useActive()
	end
	requestUpdate()
end)

-- The client fills the quest log after PLAYER_LOGIN; placing a tab waits for
-- the first QUEST_LOG_UPDATE (onUpdateEvent evaluates after it).
ns.RegisterEvent("QUEST_LOG_UPDATE", function() logReady = true end)

-- A quest leaving the log (abandoned, failed, or handed in) may be held
-- (Own.holdLost); taking it again ends that.
ns.RegisterEvent("QUEST_REMOVED", function(_, questID)
	if type(questID) == "number" then Own.removed[questID] = true end
end)
ns.RegisterEvent("QUEST_ACCEPTED", function(_, a, b)
	local q = type(b) == "number" and b or a
	if type(q) == "number" then Own.removed[q] = nil end
end)

ns.RegisterEvent("UNIT_QUEST_LOG_CHANGED", function(_, unit)
	if unit == "player" then requestUpdate() end
end)

ns.RegisterEvent("QUEST_TURNED_IN", function(_, questID)
	if questID then turnedIn[questID] = true end
	if questID and player then
		for i = 1, #tabs do
			use(tabs[i])
			Own.latchTurnin(questID)
		end
		useActive()
	end
	Own.clearMarks()
	requestUpdate()
end)

-- The player's own successful casts: `cast` goals (Own.latchCast).
ns.RegisterEvent("UNIT_SPELLCAST_SUCCEEDED", function(_, unit, _, spellID)
	local C = Compat()
	spellID = C.Readable(spellID)
	if C.Readable(unit) ~= "player" or type(spellID) ~= "number" or not player then return end
	local hit = false
	for i = 1, #tabs do
		use(tabs[i])
		if Own.latchCast(spellID) then hit = true end
	end
	useActive()
	if hit then requestUpdate() end
end)

ns.RegisterEvent("PLAYER_LEVEL_UP", function(_, level)
	if type(level) == "number" and level > levelSeen then levelSeen = level end
	Own.clearMarks()
	requestUpdate()
end)

-- kind: "talk" for gossip/quest frames, "train"/"vendor"/"taxi" for those
-- windows. A vendor or flight window is the service itself: it counts at
-- once, for the current step of every open tab (and as talking to that NPC).
-- A trainer window counts as talking to the trainer; its `train` goals wait
-- for a spell learned there (Own.trainerLearned). A gossip or quest window only opens
-- the chat, which proves nothing (#741: an NPC with nothing for the player):
-- a talk goal counts from what the player does in it (Own.talkAct), never
-- from the window opening.
function onNpcFrame(kind)
	local npc = Compat().GetNpcID("npc")
	openNpc, openKind = npc, kind
	if player and kind ~= "talk" then
		for i = 1, #tabs do
			use(tabs[i])
			if npc then latch("talk", npc) end
			if kind ~= "train" then latch(kind, npc) end
		end
		useActive()
	end
	requestUpdate()
end
function onTalkFrame() onNpcFrame("talk") end
for _, event in ipairs({ "GOSSIP_SHOW", "QUEST_DETAIL", "QUEST_GREETING", "QUEST_PROGRESS", "QUEST_COMPLETE" }) do
	ns.RegisterEvent(event, onTalkFrame)
end

-- The player's own act at the open NPC: a gossip option picked, a quest
-- accepted, completed or handed in there (the client's calls, post-hooked,
-- and the quest log's QUEST_ACCEPTED / QUEST_TURNED_IN). That is what checks
-- off the NPC's talk goals. Accepting closes the quest window before the
-- quest log says so: an act within 2 seconds of the NPC's window closing
-- still counts for that NPC. (No new main-chunk local: it is at Lua's 200.)
function Own.talkAct()
	local npc = openNpc
	if not npc and Own.closedNpc and GetTime() - Own.closedAt < 2 then npc = Own.closedNpc end
	if not (npc and player) then return end
	local hit = false
	for i = 1, #tabs do
		use(tabs[i])
		hit = latch("talk", npc) or hit
	end
	useActive()
	if hit then requestUpdate() end
end

-- A spell learned while a trainer's window is open: that is training done
-- there (Fitz: a train goal ticks only on a learned spell, never on the
-- window opening). It checks off the step's `train` goals for that trainer
-- (latch: the NPC named, a candidate of the character's class, or a class
-- trainer for `train class`), and at a class trainer of the character's
-- class it is the visit `train class` remembers for the level
-- (Own.nothingToTrain).
function Own.trainerLearned()
	if openKind ~= "train" or not (openNpc and player) then return end
	refreshPlayer()
	if Engine.IsClassTrainer(openNpc) then ns.CharState().classTrainVisit = player.level or 1 end
	for i = 1, #tabs do
		use(tabs[i])
		latch("train", openNpc)
	end
	useActive()
	requestUpdate()
end
if hooksecurefunc then
	for _, name in ipairs({ "SelectOption", "SelectOptionByIndex" }) do
		if C_GossipInfo and type(C_GossipInfo[name]) == "function" then hooksecurefunc(C_GossipInfo, name, function() Own.talkAct() end) end
	end
	for _, name in ipairs({ "SelectGossipOption", "AcceptQuest", "CompleteQuest", "GetQuestReward" }) do
		if type(_G[name]) == "function" then hooksecurefunc(name, function() Own.talkAct() end) end
	end
end
for _, event in ipairs({ "QUEST_ACCEPTED", "QUEST_TURNED_IN" }) do
	ns.RegisterEvent(event, function() Own.talkAct() end)
end

-- Unavailable quests. A gossip, greeting or quest-detail window from an
-- `accept` goal's own giver (current step of any tab) that does not offer
-- its quest marks it unavailable when the data says why (its level not
-- reached, a prerequisite missing); one that offers it clears the mark. A
-- refusal the data does not explain is never a skip (Fitz, #741: a giver the
-- server lacks would take the quest and its later steps out of the guide):
-- the accept stays open, the arrow stays on the giver, and its line says
-- "Not offered by <giver>? Report it with /polestar" (Own.notListed, this
-- session, until the giver's window lists the quest or it is taken). A
-- detail window opened from that giver's list, popped up by a turn-in at
-- that giver (the follow-up quest), or started by an item, says nothing
-- about the others.
LIST_WINDOW = 30 -- seconds a list or a turn-in covers the detail windows opened from it
listedAt = {} -- npc -> GetTime() of its last gossip/greeting list or turn-in
Own.notListed = {} -- questID -> the accept goal whose giver's window did not list it

function unavailableReason(goal)
	local lvl = tonumber(goal.minLevel)
	if lvl and (player.level or 1) < lvl then return "level" end
	if missingPre(goal) then return "pre" end
	return nil
end

-- A level-up or a turn-in (either can unlock a quest) clears the marks, so
-- the giver's next window decides afresh. A mark whose accept is in a step a
-- tab has moved past is cleared only when the data says the quest has just
-- opened: its level reached and prerequisites done (the guide goes back to
-- it, as for #70). A mark still gated stays, its reason brought up to date
-- (a level reached, a prerequisite still missing).
function Own.clearMarks()
	if not player then
		wipe(unavailable)
		return
	end
	refreshPlayer() -- the new level: UnitLevel can lag PLAYER_LEVEL_UP
	local passed = {}
	for i = 1, #tabs do
		use(tabs[i])
		if guide then
			local stepOf = layoutOf(guide).stepOf
			for q, u in pairs(unavailable) do
				local s = stepOf[u.accept]
				if s and s <= passedUpTo and u.reason ~= "closed" then passed[q] = true end
			end
		end
	end
	useActive()
	for q, u in pairs(unavailable) do
		local now = passed[q] and unavailableReason(u.accept)
		if now then
			u.reason = now
		else
			unavailable[q] = nil
		end
	end
end

function Own.listed(q)
	unavailable[q] = nil
	Own.notListed[q] = nil
end

function checkOffers(source, startItem)
	if not player then return end
	local C = Compat()
	local npc = C.GetNpcID("npc")
	if not npc then return end
	if source == "detail" then
		if startItem and startItem ~= 0 then return end
		local t = listedAt[npc]
		if t and GetTime() - t < LIST_WINDOW then
			local list = C.GetOfferedQuests("detail")
			if list and list[1] then
				Own.listed(list[1])
				Own.offered[list[1]] = true
			end
			return
		end
	else
		listedAt[npc] = GetTime()
	end
	local list = C.GetOfferedQuests(source)
	if not list then return end
	local offered = {}
	for i = 1, #list do
		offered[list[i]] = true
		Own.listed(list[i])
		Own.offered[list[i]] = true
	end
	-- The window lists a quest just accepted as active a moment before the
	-- quest log has it (#127): taken, not refused.
	local active = source ~= "detail" and C.GetActiveQuests(source) or nil
	for i = 1, active and #active or 0 do
		offered[active[i]] = true
		Own.listed(active[i])
	end
	for i = 1, #tabs do
		use(tabs[i])
		if guide and current then
			for _, goal in ipairs(guide.steps[current].goals) do
				local q = goal.quest
				if goal.t == "accept" and q and (goal.npc == npc or goal.object == npc) and goalApplies(goal)
					and not offered[q] and not C.IsOnQuest(q) and not questDone(q) and not unavailable[q] then
					local why = unavailableReason(goal)
					if why then
						unavailable[q] = { reason = why, accept = goal }
					else
						Own.notListed[q] = goal
					end
				end
			end
		end
	end
	useActive()
end

ns.RegisterEvent("GOSSIP_SHOW", function() checkOffers("gossip") end)
ns.RegisterEvent("QUEST_GREETING", function() checkOffers("greeting") end)
ns.RegisterEvent("QUEST_DETAIL", function(_, startItem) checkOffers("detail", startItem) end)
ns.RegisterEvent("QUEST_ACCEPTED", function(_, q)
	if type(q) == "number" then Own.listed(q) end
end)
for _, event in ipairs({ "QUEST_COMPLETE", "QUEST_TURNED_IN" }) do
	ns.RegisterEvent(event, function()
		local npc = Compat().GetNpcID("npc")
		if npc then listedAt[npc] = GetTime() end
	end)
end

ns.RegisterEvent("PLAYER_LOGOUT", function() sync() end)

ns.RegisterEvent("TRAINER_SHOW", function()
	onNpcFrame("train")
	noteClassTrainer(openNpc)
end)
ns.RegisterEvent("LEARNED_SPELL_IN_SKILL_LINE", function() Own.trainerLearned() end)
ns.RegisterEvent("MERCHANT_SHOW", function() onNpcFrame("vendor") end)

-- The NPC whose window just closed, for an act the client reports after it
-- (Own.talkAct).
function onNpcFrameClosed()
	if openNpc then Own.closedNpc, Own.closedAt = openNpc, GetTime() end
	openNpc, openKind = nil, nil
end
ns.RegisterEvent("GOSSIP_CLOSED", onNpcFrameClosed)
ns.RegisterEvent("QUEST_FINISHED", onNpcFrameClosed)
ns.RegisterEvent("TRAINER_CLOSED", onNpcFrameClosed)
ns.RegisterEvent("MERCHANT_CLOSED", onNpcFrameClosed)
ns.RegisterEvent("TAXIMAP_CLOSED", onNpcFrameClosed)

ns.RegisterEvent("TAXIMAP_OPENED", function()
	local C = Compat()
	local node = C.GetCurrentTaxiNode()
	if not node then
		local zone, sub = C.GetZoneText()
		node = sub or zone
	end
	if node then fpTable()[node] = true end
	onNpcFrame("taxi")
end)

-- "direct": a `turnin ... direct` goal not done yet, whose quest its giver
-- lists among the quests it offers rather than the ones in the log, so
-- Automation picks it from there. A done one is not wanted: the giver of a
-- repeatable keeps offering it, and a second visit must not hand in again.
function matchesVerb(goal, verb)
	if verb == "direct" then return goal.t == "turnin" and goal.direct == true end
	return goal.t == verb
end

-- True when an applicable `verb` goal ("accept"/"turnin"/"direct") for questID
-- sits in the live step (or the next `span` applicable steps after it, 0 by
-- default) of any open tab. Automation's gate (Fitz): it acts on the live
-- step only, never ahead of it nor on a step the player is only looking at
-- (Prev/Next/Goto), so no quest is taken or handed in that the live step
-- does not name.
function wantsFrom(from, verb, questID, span)
	local left = span + 1
	local steps = guide.steps
	for s = from, #steps do
		local step = steps[s]
		if stepApplies(step) then
			-- A group quest the player has not answered for yet is not taken or handed in for them.
			local waits = Own.groupPending(step)
			for g, goal in ipairs(step.goals) do
				if matchesVerb(goal, verb) and goal.quest == questID and questID ~= waits and goalApplies(goal)
					and not Own.questSkipped(questID)
					and not (verb == "direct" and goalDone(s, g, goal)) then
					return true
				end
			end
			left = left - 1
			if left == 0 then break end
		end
	end
	return false
end

function wantsLoaded(verb, questID, span)
	return guide ~= nil and computed ~= nil and wantsFrom(computed, verb, questID, span)
end

function Engine.WantsQuest(verb, questID, span)
	if not questID then return false end
	if not player then refreshPlayer() end
	-- The live step after what just happened: a hand-in that finished the step
	-- whose next one takes the follow-up the game offers at once.
	if scheduled then flush() end
	local found = false
	for i = 1, #tabs do
		use(tabs[i])
		if wantsLoaded(verb, questID, span or 0) then
			found = true
			break
		end
	end
	useActive()
	return found
end

-- A saved tab coming back: at the step the player was looking at (a pack
-- update carries it to the step's new place first).
function restoredTab(g)
	checkShape(g)
	local pins = ns.CharState().pins
	local p = type(pins) == "table" and pins[g.id]
	return { guide = g, passedUpTo = 0, autoChain = true, sawIncomplete = false, placing = GetTime() + PLACE_SECONDS,
		pin = type(p) == "table" and tonumber(p.step) or nil, pinDone = type(p) == "table" and p.done or nil }
end

function byPlace(list)
	for i, a in ipairs(list) do a.order = i end
	table.sort(list, function(x, y)
		if x.at ~= y.at then return x.at < y.at end
		return x.order < y.order
	end)
	return list
end

-- Reopen the saved tabs (registered and shown guides only, no duplicates, at
-- most MAX_TABS); a guide that was absent returns to its old place, and the
-- tabs of guides still absent stay saved. With none open, one tab with
-- Guides.Suggest(). A fresh start at the bottom of a level bracket whose
-- guide is one of a route choice also offers that choice (the suggested
-- route stays loaded meanwhile).
ns.OnLogin(function()
	fpTable()
	refreshPlayer()
	local s = ns.CharState()
	local ids, seen, back = {}, {}, {}
	local function add(id)
		if type(id) == "string" and not seen[id] and #ids < MAX_TABS then
			local g = Guides.Get(id)
			if g and Guides.GuideMatches(g, player) then
				ids[#ids + 1] = id
				seen[id] = true
			end
		end
	end
	local list = type(s.tabs) == "table" and s.tabs or {}
	local absentAt = type(s.absentAt) == "table" and s.absentAt or {}
	for i = 1, MAX_TABS * 2 do
		local id = list[i]
		-- A guide a cutover retired: its successor in its place (Guides.Successor).
		local successor = type(id) == "string" and not Guides.Get(id) and Guides.Successor(id)
		if successor then id = successor end
		if type(id) == "string" and not seen[id] then
			local at = tonumber(absentAt[id])
			if not Guides.Get(id) then
				seen[id] = true
				rememberAbsent(id, at or i)
			elseif at then
				seen[id] = true
				back[#back + 1] = { id = id, at = at }
			else
				add(id)
			end
		end
	end
	for _, b in ipairs(byPlace(back)) do
		if #ids < MAX_TABS then
			table.insert(ids, math.min(math.max(b.at, 1), #ids + 1), b.id)
		else
			rememberAbsent(b.id, b.at)
		end
	end
	local saved = s.guide
	if type(saved) == "string" and not Guides.Get(saved) then saved = Guides.Successor(saved) or saved end
	add(saved) -- saved before tabs existed
	local activeId = s.tabs and list[tonumber(s.activeTab) or 0] or s.guide
	if type(activeId) == "string" and not Guides.Get(activeId) then activeId = Guides.Successor(activeId) or activeId end
	if activeId and Guides.Get(activeId) and not Guides.GuideMatches(Guides.Get(activeId), player) then activeId = nil end
	local offerFrom
	if #ids == 0 and ns.Get("behavior.autoSelectGuide") then
		local suggested = Engine.StartingGuide()
		add(suggested)
		if suggested then Own.opened[suggested] = true end -- opened for the player
		local g = suggested and Guides.Get(suggested)
		local from = g and choiceOffering(suggested)
		if from and routesTable()[from.id] == nil and (player.level or 1) <= (g.minLevel or 1) + 1 then offerFrom = from.id end
	end
	if #ids == 0 then
		persist()
		return
	end
	for i = 1, #ids do
		tabs[i] = restoredTab(Guides.Get(ids[i]))
		if ids[i] == activeId then activeIndex = i end
	end
	if activeIndex == 0 then activeIndex = 1 end
	-- Older saves kept "not offered" marks across a logout; no mark is kept now.
	s.offers = nil
	useActive()
	persist()
	tabsDirty = true
	ns.Fire("GUIDE_CHANGED", guide.id)
	evaluate()
	if offerFrom then ns.Fire("ROUTE_CHOICE", offerFrom) end
end)

-- A pack switched off (or on): tabs whose guide is gone close and stay saved
-- where they were; saved tabs whose guide is back reopen there, up to the
-- tab limit, at their pinned step.
ns.On("PACKS_CHANGED", function()
	if not ns.IsLoggedIn() then return end
	sync()
	-- A guide registered again in its place (an import updated on the Import
	-- page): its tab takes the new guide where it stands, at the step the
	-- player was looking at, as a reload would bring it back (checkShape
	-- carries ticks and skips to the steps it kept).
	local replacedActive, replaced = false, false
	for i = 1, #tabs do
		local g = Guides.Get(tabs[i].guide.id)
		if g and g ~= tabs[i].guide then
			tabs[i] = restoredTab(g)
			replaced = true
			if i == activeIndex then replacedActive = true end
		end
	end
	if replaced then
		tabsDirty = true
		useActive()
		persist()
		if replacedActive then ns.Fire("GUIDE_CHANGED", guide.id) end
		evaluate()
	end
	-- Tabs whose guide is gone close together and become absent at their
	-- place before anything is saved, so their pins stay. The active tab, if
	-- it goes, hands over to its right neighbour (else the left), as CloseTab.
	local activeTab, activeGone, before = tabs[activeIndex], false, 0
	local gone = {}
	for i = #tabs, 1, -1 do
		local id = tabs[i].guide.id
		if not Guides.Get(id) then
			if i == activeIndex then activeGone = true elseif i < activeIndex then before = before + 1 end
			table.insert(gone, 1, { id = id, at = i })
			table.remove(tabs, i)
		end
	end
	if #gone > 0 then
		for _, t in ipairs(gone) do rememberAbsent(t.id, t.at) end
		tabsDirty = true
		if activeGone then
			activeIndex = math.min(activeIndex - before, #tabs)
		else
			for i = 1, #tabs do
				if tabs[i] == activeTab then activeIndex = i end
			end
		end
		useActive()
		persist()
		if activeGone then announceActive() end
		evaluate()
	end
	local back = {}
	for _, a in ipairs(absent) do
		if Guides.Get(a.id) then back[#back + 1] = { id = a.id, at = a.at } end
	end
	if #back == 0 then return end
	local activeTab = tabs[activeIndex]
	local opened = false
	for _, b in ipairs(byPlace(back)) do
		if #tabs >= MAX_TABS then break end
		if not tabIndexOf(b.id) then
			table.insert(tabs, math.min(math.max(b.at, 1), #tabs + 1), restoredTab(Guides.Get(b.id)))
			opened = true
		end
	end
	if not opened then
		persist()
		return
	end
	tabsDirty = true
	activeIndex = 1
	for i = 1, #tabs do
		if tabs[i] == activeTab then activeIndex = i end
	end
	useActive()
	persist()
	if not activeTab then announceActive() end
	evaluate()
end)
