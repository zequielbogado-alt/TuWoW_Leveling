-- Engine route choices, class trainer reminders, and step evaluation loop
-- Modular part of ns.Engine (< 1000 lines).

local ADDON, ns = ...
setfenv(1, ns.Engine._env)

-- Route choice: a guide whose `next` names several guides (`nextChoices`)
-- lets the player choose where to level next. At completion the Engine
-- continues with the remembered choice (CharState().routes[fromId]), the only
-- option that fits the character, or, with behavior.routeChoice =
-- "recommended", the recommended one; otherwise the finished guide stays in
-- its tab and ROUTE_CHOICE(fromId) asks the UI. Recommended: an option the
-- character has not outlevelled, then the quickest to reach from where they
-- stand (1-minute bands), then the author's order. An option with `when`
-- (`nextWhen`) is offered only while it holds (Own.optionHolds): with one
-- option left the Engine continues to it, with none the guide ends there.
---------------------------------------------------------------------------

ROUTE_TIE = 60 -- seconds of travel that count as a tie

function routesTable()
	local s = ns.CharState()
	if type(s.routes) ~= "table" then s.routes = {} end
	return s.routes
end

-- The options of `from` that fit the character and are offered now (their
-- `when`, if any, holds), in the author's order:
-- { guide = g, outleveled = bool }.
function routeOptions(from)
	local list = {}
	if not (from and from.nextChoices) then return list end
	if not player then refreshPlayer() end
	local level = player.level or 1
	for _, id in ipairs(from.nextChoices) do
		local g = Guides.Get(id)
		if g and Guides.GuideMatches(g, player) and Own.optionHolds(from, id) then
			list[#list + 1] = { guide = g, outleveled = (g.maxLevel ~= nil and level >= g.maxLevel) }
		end
	end
	return list
end

-- Fills each option's `seconds` (travel from the player to the guide's start,
-- or nil) and returns the recommended option.
function rankRoutes(options)
	local here = ns.PlayerPoint()
	local best, k1, k2
	for _, o in ipairs(options) do
		local start = here and Guides.Start(o.guide)
		o.seconds = start and ns.TravelCost(here, start) or nil
		local a = o.outleveled and 1 or 0
		local b = o.seconds and math.floor(o.seconds / ROUTE_TIE) or math.huge
		if not best or a < k1 or (a == k1 and b < k2) then best, k1, k2 = o, a, b end
	end
	return best
end

-- Quest work done in guide g: its accepts and turn-ins of quests the
-- character has done or holds.
function Own.doneIn(g)
	local C, done = Compat(), 0
	for _, step in ipairs(g.steps) do
		for _, goal in ipairs(step.goals) do
			if (goal.t == "accept" or goal.t == "turnin") and goal.quest and (questDone(goal.quest) or C.IsOnQuest(goal.quest)) then done = done + 1 end
		end
	end
	return done
end

-- Whether every quest of guide g this character can take is turned in (its
-- accepts, turn-ins and completes, optional ones aside), nil for a guide
-- without quests. The picker's check: a guide the catch-up passed with grey
-- quests never done is not done.
function Own.allQuestsDone(g)
	local any = false
	for _, step in ipairs(g.steps) do
		if Guides.Matches(step.only, player) then
			for _, goal in ipairs(step.goals) do
				local t = goal.t
				if goal.quest and (t == "accept" or t == "turnin" or t == "complete") and not goal.optional
					and Guides.Matches(goal.only, player) then
					any = true
					if not questDone(goal.quest) then return false end
				end
			end
		end
	end
	if any then return true end
	return nil
end

-- The guide to start with, with no guide open (the login's pick, the guide
-- window's and the welcome's Start guide): with the catch-up, the race's
-- first guide when the character did quests in it, so placement goes
-- through the guides from there to where they are, for them to see; else
-- the guide for their level (Guides.Suggest).
function Engine.StartingGuide()
	if not player then refreshPlayer() end
	local first = ns.Get("behavior.skipGrey") and Guides.FirstGuide()
	local g = first and Guides.Get(first)
	if g and Own.doneIn(g) > 0 then return first end
	return Guides.Suggest()
end

-- Start guide (the guide window with no guide, the welcome): opens
-- Engine.StartingGuide() in a new tab, for the catch-up to go through the
-- guides from there to where the character is, finished ones included. The
-- tab's index, or nil.
function Engine.StartGuide()
	local id = Engine.StartingGuide()
	if not id then return nil end
	return Engine.OpenTab(id, true, true)
end

-- The route a catch-up takes where a guide passed whole offers several: the
-- option with the most quest work done (Own.doneIn), the recommended one
-- among equals.
function Own.likeliestRoute(from)
	local options = routeOptions(from)
	if #options == 0 then return nil end
	local best, bestDone = {}, -1
	for _, o in ipairs(options) do
		local done = Own.doneIn(o.guide)
		if done > bestDone then best, bestDone = { o }, done elseif done == bestDone then best[#best + 1] = o end
	end
	return #best == 1 and best[1].guide.id or rankRoutes(best).guide.id
end

-- The guide to continue with after `from` (or nil), and whether the player
-- has to choose it first.
function routeNext(from)
	if not from.nextChoices then return from.next, false end
	local options = routeOptions(from)
	if #options == 0 then return nil, false end
	if #options == 1 then return options[1].guide.id, false end
	local remembered = routesTable()[from.id]
	for _, o in ipairs(options) do
		if o.guide.id == remembered then return remembered, false end
	end
	if ns.Get("behavior.routeChoice") == "recommended" then return rankRoutes(options).guide.id, false end
	return nil, true
end

-- The route choice that offered `id`, to offer again: a guide the character
-- fits whose choice has 2+ options for them, or nil.
function choiceOffering(id)
	if not player then refreshPlayer() end
	for _, from in ipairs(Guides.OfferedBy(id)) do
		if Guides.GuideMatches(from, player) and #routeOptions(from) >= 2 then return from end
	end
	return nil
end

---------------------------------------------------------------------------
-- Class training reminder: Core/ClassTrainers.lua registers every known class
-- trainer; opening one of the character's class stores the level
-- (CharState().classTrainLevel). With behavior.trainReminder "2" (default)
-- or "1", TRAIN_DUE(level, trainer) fires once per level when that many
-- levels have passed (with "2", on even levels, when classes learn spells),
-- unless the active guide trains the class within its next few steps. A
-- character first seen without a stored level counts as trained.
---------------------------------------------------------------------------

classTrainers = { candidates = {} } -- a pseudo goal, so pickFor ranks them
trainerClasses = {} -- npc -> { [classFile] = true }, every class trainer
TRAIN_LOOKAHEAD = 4 -- applicable steps, from the current one

function ns.RegisterClassTrainers(list)
	if type(list) ~= "table" then return end
	local c = classTrainers.candidates
	for _, t in ipairs(list) do
		if type(t) == "table" and type(t.npc) == "number" and type(t.map) == "number" and type(t.x) == "number"
			and type(t.y) == "number" and type(t.classes) == "table" then
			c[#c + 1] = t
		end
	end
	picks[classTrainers] = nil
end

-- Every class trainer's npc id by class ({ WARRIOR = { 914, ... } }), not only
-- the reminder's one per town: what Engine.IsClassTrainer answers from.
function ns.RegisterClassTrainerIds(byClass)
	if type(byClass) ~= "table" then return end
	for cls, ids in pairs(byClass) do
		if type(cls) == "string" and type(ids) == "table" then
			for _, id in ipairs(ids) do
				if type(id) == "number" then
					trainerClasses[id] = trainerClasses[id] or {}
					trainerClasses[id][cls] = true
				end
			end
		end
	end
end

-- Where the guide goes next: the first open goal with coordinates of each of
-- the next ROUTE_STEPS applicable steps from the live step (not the one on
-- screen), in order.
-- (On Own: the main chunk is at 200 locals.)
Own.ROUTE_STEPS = 8
Own.ROUTE_TIE = 15 -- seconds of detour that count as no difference
function Own.routePoints()
	local pts = {}
	local from = computed or current
	if not (guide and from) then return pts end
	local seen = 0
	for s = from, #guide.steps do
		local step = guide.steps[s]
		if stepApplies(step) then
			for g, goal in ipairs(step.goals) do
				if goalApplies(goal) and goal.map and goal.x and goal.y and not goalDone(s, g, goal) then
					pts[#pts + 1] = { map = goal.map, x = goal.x, y = goal.y, f = goal.f }
					break
				end
			end
			seen = seen + 1
			if seen >= Own.ROUTE_STEPS then break end
		end
	end
	return pts
end

-- Seconds added to walking from `here` through `pts` by a stop at `t`, by
-- `cost` (a travel function), on the cheapest leg to leave and rejoin the
-- route at; and that leg's end index. Nil when no leg can be measured.
function Own.routeDetour(here, pts, t, cost)
	local best, at_, a = nil, nil, here
	for i, b in ipairs(pts) do
		local ab, at, tb = cost(a, b), cost(a, t), cost(t, b)
		if ab and at and tb and (not best or at + tb - ab < best) then best, at_ = at + tb - ab, i end
		a = b
	end
	return best, at_
end

-- The trainer of the best pickFor tier (continent, zone level) among `list`
-- (nearest first) that costs the least detour on the guide's next steps; a
-- trainer within ROUTE_TIE of a nearer one loses to it. Straight lines pick
-- the Own.ROUTE_PLANNED likeliest, then the route planner prices each one's
-- best leg, so a trainer on the far side of a mountain does not win by
-- being close as the crow flies. Nil when the guide has no route ahead of
-- the player to measure against.
Own.ROUTE_PLANNED = 4
function Own.trainerOnRoute(list, tier)
	local here = ns.PlayerPoint()
	local pts = here and Own.routePoints()
	if not pts or #pts == 0 then return nil end
	local rough = {}
	for order, c in ipairs(list) do
		if tier[c] == tier[list[1]] then
			local d, leg = Own.routeDetour(here, pts, c, ns.DirectTravelCost)
			if d then rough[#rough + 1] = { c = c, d = d, leg = leg, order = order } end
		end
	end
	table.sort(rough, function(x, y)
		if x.d ~= y.d then return x.d < y.d end
		return x.order < y.order
	end)
	local best, bestCost
	for k = 1, math.min(Own.ROUTE_PLANNED, #rough) do
		local r = rough[k]
		local from = r.leg == 1 and here or pts[r.leg - 1]
		local to = pts[r.leg]
		local ab, at, tb = ns.TravelCost(from, to), ns.TravelCost(from, r.c), ns.TravelCost(r.c, to)
		r.cost = ab and at and tb and at + tb - ab or r.d
	end
	local planned = {}
	for k = 1, math.min(Own.ROUTE_PLANNED, #rough) do planned[#planned + 1] = rough[k] end
	table.sort(planned, function(x, y) return x.order < y.order end)
	for _, r in ipairs(planned) do
		if not best or r.cost < bestCost - Own.ROUTE_TIE then best, bestCost = r.c, r.cost end
	end
	return best
end

-- The best class trainer for the character from where they stand, or nil;
-- its npcName in the client's language where Names has it. `onRoute`: the one
-- that costs the least detour on the guide's route instead, when it has one.
function Engine.NearestClassTrainer(onRoute)
	if #classTrainers.candidates == 0 then return nil end
	if not player then refreshPlayer() end
	local p = pickFor(classTrainers)
	local t = p.list[p.i]
	if onRoute and t then t = Own.trainerOnRoute(p.list, p.tier) or t end
	if t then
		t.npcEnglish = t.npcEnglish or t.npcName
		t.npcName = ns.Names.Npc(t.npc) or t.npcEnglish
	end
	return t
end

-- Whether `npc` is a class trainer of the character's class.
function Engine.IsClassTrainer(npc)
	local classes = npc and trainerClasses[npc]
	if not classes then return false end
	if not player then refreshPlayer() end
	return classes[player.class] == true
end

-- The active guide's next class training stop from the live step, whichever
-- step is on screen: its place among the applicable steps (the live step is
-- 1) and the step's title. A `train` goal that already reads done (trained
-- there, or ticked) is no stop. False when the guide trains the class nowhere
-- ahead; nil with no guide.
function Engine.GuideTrainStop()
	local from = computed or current
	if not (guide and from) then return nil end
	local seen = 0
	for s = from, #guide.steps do
		local step = guide.steps[s]
		if stepApplies(step) then
			seen = seen + 1
			for g, goal in ipairs(step.goals) do
				if goal.t == "train" and goalApplies(goal) and (goal.class or (goal.npc and trainerClasses[goal.npc]))
					and not goalDone(s, g, goal) then
					return seen, step.title
				end
			end
		end
	end
	return false
end

-- The active guide sends the character to their class trainer soon: within
-- TRAIN_LOOKAHEAD steps of the live step.
function guideTrainsSoon()
	local n = Engine.GuideTrainStop()
	return n and n <= TRAIN_LOOKAHEAD or false
end

trainChecked = nil -- the level last checked this session
function checkTrainDue()
	local mode = ns.Get("behavior.trainReminder")
	local every = (mode == "1" and 1) or (mode == "2" and 2) or nil
	local level = player and player.level
	if not (every and level) or trainChecked == level then return end
	trainChecked = level
	local s = ns.CharState()
	local last = tonumber(s.classTrainLevel)
	if not last or last > level then
		s.classTrainLevel = level
		return
	end
	if level - last < every or (every == 2 and level % 2 == 1) or tonumber(s.trainDueShown) == level then return end
	if guideTrainsSoon() then return end
	local t = Engine.NearestClassTrainer(true)
	if not t then return end
	s.trainDueShown = level
	ns.Fire("TRAIN_DUE", level, t)
end

-- A trainer window of the character's class: the reminder's level
-- (classTrainLevel, also set on first sight). classTrainVisit, which `train
-- class` trusts, is set only when that trainer taught a spell
-- (Own.trainerLearned).
function noteClassTrainer(npc)
	if not Engine.IsClassTrainer(npc) then return end
	refreshPlayer()
	local s = ns.CharState()
	s.classTrainLevel = player.level or 1
	ns.Fire("CLASS_TRAINED", s.classTrainLevel)
end

-- `train class` has nothing to teach: the character's class trainer taught
-- a spell (Own.trainerLearned) at this level or at
-- the even level below an odd one (class trainers teach on even levels
-- only). Latched once the route moves past (latchable), so the next level
-- does not send the player back.
function Own.nothingToTrain()
	local visit, level = tonumber(ns.CharState().classTrainVisit), player and player.level
	return visit ~= nil and level ~= nil and visit <= level and level - visit <= level % 2
end

-- Fresh step state for a new guide in the loaded tab.
function resetLoaded(id, auto)
	-- Opened by the player: finished or passed whole earlier this session, it
	-- may finish and chain again.
	if not auto then completedFired[id] = nil end
	guide = Guides.Get(id)
	current, computed, pin, pinDone, aim, lastSig, passedUpTo = nil, nil, nil, nil, nil, nil, 0
	Own.skipQueue[id] = nil
	autoChain, sawIncomplete, placing = auto and true or false, false, GetTime() + PLACE_SECONDS
	Own.opened[id] = true
	Own.endOpen[id], Own.lastOpen[id] = nil, nil -- seen afresh once placed (Own.noteEnd)
	tabsDirty = true
end

-- Notices of quests passed over, per guide, until the player is on the live
-- step: { from = the first step passed, skips = { { quest, title, reason,
-- text }, ... }, seen = { [quest] = true } }.
Own.skipQueue = {}

-- Queue the unavailable quests of step s the route just moved past: its
-- blocking goals that apply, not done, unavailable (once per quest). A step
-- the player skipped, or one not for the character, says nothing.
function Own.queueSkips(s)
	local step = guide.steps[s]
	if not step or isSkipped(s) or not stepApplies(step) then return end
	local q = Own.skipQueue[guide.id]
	for g, goal in ipairs(step.goals) do
		local u = blocks(goal) and goalApplies(goal) and unavailableFor(goal)
		if u and not (q and q.seen[goal.quest]) and not goalDone(s, g, goal) then
			if not q then
				q = { from = s, skips = {}, seen = {} }
				Own.skipQueue[guide.id] = q
			end
			q.seen[goal.quest] = true
			q.skips[#q.skips + 1] = { quest = goal.quest, title = questTitle(goal), reason = u.reason, text = unavailableText(u) }
		end
	end
end

-- The live step went back from `to` to `from`: hold it at `to` for every
-- accept in between whose quest left the log (not done, not skipped), and
-- ask (Engine.LostQuestion). A held quest back in the log, done or skipped
-- is forgotten first. True if a quest is newly held.
function Own.holdLost(from, to)
	local st, C = ns.CharState(), Compat()
	local mine = st.lostQuests and st.lostQuests[guide.id]
	local held = false
	for s = from, to - 1 do
		local step = guide.steps[s]
		if stepApplies(step) and not isSkipped(s) then
			for g, goal in ipairs(step.goals) do
				local q = goal.quest
				if goal.t == "accept" and q and blocks(goal) and goalApplies(goal) and not goalDone(s, g, goal)
					and Own.removed[q] and not C.IsOnQuest(q) and not questDone(q) and not Own.questSkipped(q) then
					if not mine then
						st.lostQuests = st.lostQuests or {}
						mine = st.lostQuests[guide.id] or {}
						st.lostQuests[guide.id] = mine
					end
					mine[q] = math.max(mine[q] or 0, to)
					held = true
				end
			end
		end
	end
	return held
end

-- Forget the held quests of the loaded guide that are back in the log, done
-- or skipped.
function Own.pruneLost()
	local all = ns.CharState().lostQuests
	local mine = all and all[guide.id]
	if not mine then return end
	local C = Compat()
	for q in pairs(mine) do
		if C.IsOnQuest(q) or questDone(q) or Own.questSkipped(q) then mine[q] = nil end
	end
	if not next(mine) then all[guide.id] = nil end
	if not next(all) then ns.CharState().lostQuests = nil end
end

---------------------------------------------------------------------------
-- The end of a leveling guide (category Leveling: the starting zones and
-- community leveling guides too). With behavior.guideEnd "ask" (default)
-- it does not hand off by itself: GUIDE_END(guideId, info) asks the player
-- (UI/GuideEnd.lua), who starts the next guide (Engine.StartNext), chooses
-- a route, or stays. With "continue" the hand-off loads the next guide as
-- before and GUIDE_CONTINUED(fromId, toId) says so. Other guides always go on.
--
-- The end is reached when the guide is done, or when its last step with
-- work for the character (Own.lastWork) is done ahead of the live step,
-- whatever steps before it were skipped or left open (Own.endDoneAhead: by
-- the kinds of its goals). The guide must have been seen unfinished once
-- placed this session (Own.endOpen), and for the last step done ahead, that
-- step seen open (Own.lastOpen), so a guide opened, or brought back by a
-- login, already at its end does not ask; and once per guide per character
-- (CharState().guideEnds[guideId], kept over a reload or relog).
-- info = { guideId, undone (open steps left), live (the live step, nil when
-- all are done), next (the guide the hand-off goes to, nil with none or a
-- choice to make), choose (true: a route choice the player makes) }.
---------------------------------------------------------------------------

Own.endOpen = {} -- guideId -> true: seen unfinished once placed, this session
Own.lastOpen = {} -- guideId -> the last step (Own.lastWork) seen open once placed, this session
Own.pendingEnds, Own.pendingContinued = {}, {} -- fired at the end of the evaluation

function Own.leveling(g)
	return g ~= nil and not Own.everyStep(g)
end

function Own.endAsks(g)
	return Own.leveling(g) and ns.Get("behavior.guideEnd") ~= "continue"
end

-- The last step of the loaded guide with work for the character, after step
-- `after` (0: any): it applies, is not an along step, and has a goal that
-- applies and is neither a note nor optional (a closing note-only step, or a
-- class's training step another class reads empty, is no end). -> index | nil
function Own.lastWork(after)
	local steps = guide.steps
	for s = #steps, after + 1, -1 do
		local step = steps[s]
		if not step.along and stepApplies(step) then
			for _, goal in ipairs(step.goals) do
				if goal.t ~= "note" and not goal.optional and goalApplies(goal) then return s end
			end
		end
	end
	return nil
end

-- The loaded tab's guide: note its end (see above).
function Own.noteEnd()
	if placing or not Own.endAsks(guide) then return end
	local id, steps = guide.id, guide.steps
	local ends = ns.CharState().guideEnds
	if ends[id] then return end
	local last = Own.lastWork(0)
	if computed then
		-- Seen unfinished once placed: finishing it from now on reaches its end.
		Own.endOpen[id] = true
		-- Its last step done ahead of the live step (Own.endDoneAhead; on
		-- screen as any step), once that same step was seen open: one that
		-- reads done from the start (its quest not offered to this character),
		-- or a `when` step that applies late already done, ends the guide only
		-- when the rest is done. Trailing steps of only optional goals or notes
		-- are offered, not the end (Own.lastWork).
		local done = last ~= nil and not isSkipped(last) and (last == current and stepDone(last) or last ~= current and Own.endDoneAhead(last))
		if not done then
			if last then Own.lastOpen[id] = last end
			return
		end
		if Own.lastOpen[id] ~= last then return end
	elseif not Own.endOpen[id] then
		return
	end
	ends[id] = true
	local undone = 0
	for s = computed or #steps + 1, #steps do
		if stepApplies(steps[s]) and not isSkipped(s) and not stepDone(s) then undone = undone + 1 end
	end
	local nextId, asks = routeNext(guide)
	if nextId and not Guides.Get(nextId) then nextId = nil end
	Own.pendingEnds[#Own.pendingEnds + 1] = { guideId = id, undone = undone, live = computed, next = nextId, choose = asks or nil }
end

-- Evaluate the loaded tab. Only the active tab announces step and waypoint
-- changes; background tabs keep their state for GetTabs and automation.
function evaluateLoaded(active)
	if not guide then
		current, computed, pin = nil, nil, nil
		if active and waypoint ~= nil then
			waypoint = nil
			ns.Fire("WAYPOINT_CHANGED", nil)
		end
		return
	end
	-- A Class guide the character cannot start yet holds at its opening
	-- without placing (which would mark its accepts unavailable and move on).
	local gate = Own.startGate(guide)
	local wasComputed = computed
	Own.pruneLost()
	computed = gate and gate.step or computeCurrent()
	-- Placed once the quest log could be read (it can lag PLAYER_LOGIN).
	local wasPlacing = placing
	if placing and (logReady or GetTime() >= placing) then placing = nil end
	local placed = wasPlacing and not placing
	-- A quest the route had passed left the log: the live step stays and the
	-- window asks whether to go back for it (Own.holdLost), never silently.
	if not (gate or wasPlacing) and computed and wasComputed and computed < wasComputed and Own.holdLost(computed, wasComputed) then
		computed = computeCurrent()
		lastSig = nil
	end
	if computed then
		sawIncomplete = true
		Own.startWaits(computed)
	end
	local passed = (computed or #guide.steps + 1) - 1
	if passed > passedUpTo then latchPassed(passedUpTo + 1, passed) end
	Own.latchCaughtUp(passed)
	passedUpTo = passed

	-- The view of another step: released once it is the live step (or no
	-- longer applies); while the step looked at gets done it follows forward,
	-- behind the live step up to it, ahead of it to the next open step, its
	-- transient goals latched like any step the route moves past.
	local oldPin = pin
	if pin and ((computed and pin == computed) or not guide.steps[pin] or not stepApplies(guide.steps[pin])) then pin = nil end
	if pin then
		local done = stepDone(pin)
		if done and not pinDone then
			latchPassed(pin, pin)
			pin = nextOpen(pin, (computed and computed > pin) and computed or nil)
			pinDone = pin and stepDone(pin) or nil
		else
			pinDone = done
		end
	end

	local newCurrent = pin or computed
	local changed = newCurrent ~= current
	-- Bag-count goals already met in the step about to be (or still) current
	-- stay met for the rest of it, even if the items get used up (crafted,
	-- handed in) before the step's other goals are done.
	if newCurrent then latchInStep(newCurrent, newCurrent == computed) end
	if pin and computed then latchInStep(computed, true) end
	-- Quests passed over as unavailable (not offered at the giver, or closed
	-- for good) are said, never silently: when the live step moves past its
	-- step, and when the step looked at follows forward past its own. While
	-- the player looks at another step the notice waits, and comes with the
	-- live step when they are back on it (#741, #739: Fitz pages a lot).
	-- STEP_SKIPPED(fromStep, toStep, { { quest, title, reason, text }, ... }),
	-- before STEP_CHANGED, so the window shows it with the step.
	if active and not wasPlacing then
		if wasComputed and (not computed or computed > wasComputed) then Own.queueSkips(wasComputed) end
		if oldPin and pin ~= oldPin and oldPin ~= wasComputed and (not newCurrent or newCurrent > oldPin) then Own.queueSkips(oldPin) end
		local q = Own.skipQueue[guide.id]
		if q and not pin then
			Own.skipQueue[guide.id] = nil
			ns.Fire("STEP_SKIPPED", q.from, newCurrent, q.skips)
			-- Back on the live step without a step change: repaint for the notice.
			if not changed then lastSig = nil end
		end
	end
	if changed then
		current = newCurrent
		-- The arrow's choice was for the old step; an along goal's lasts while it is listed.
		if not (aim and Own.alongOf(aim)) then aim = nil end
		-- Step start: pick candidates and spawn spots afresh from where the
		-- player stands. A spot picked earlier (the step shown as "Then:" or
		-- looked at ahead, from elsewhere) would otherwise only move at the
		-- next arrival poll: a second evaluation right after the step change.
		-- A goto's place counts as entered only from outside seen from now on
		-- (Own.enteredPlace), also when the player comes back to the step.
		if current then
			local c, px, py
			for _, goal in ipairs(guide.steps[current].goals) do
				Own.outside[goal] = nil
				if goal.candidates then picks[goal] = nil end
				if goal.spots and Spots.chosen[goal] then
					if px == nil then c, px, py = Compat().GetPlayerWorldPosition() end
					if c then Spots.repick(goal, c, px, py) end
				end
			end
		end
		lastSig = signature()
		tabsDirty = true
		if active then ns.Fire("STEP_CHANGED", current) end
	else
		local sig = signature()
		if sig ~= lastSig then
			lastSig = sig
			tabsDirty = true
			if active and current then ns.Fire("STEP_UPDATED", current) end
		end
	end

	if active then
		local wp = findWaypoint()
		if not sameWaypoint(wp, waypoint) then
			waypoint = wp
			ns.Fire("WAYPOINT_CHANGED", wp)
		end
	end

	if not current then
		local id = guide.id
		if not completedFired[id] then
			completedFired[id] = true
			if active then
				ns.Fire("GUIDE_COMPLETED", id)
			else
				pendingCompleted[#pendingCompleted + 1] = id
			end
			-- The hand-off replaces the finished guide within its own tab,
			-- unless the next guide is already open in another one. A route
			-- choice the player has to make keeps the finished guide and asks.
			-- A leveling guide hands off by itself only with behavior.guideEnd
			-- "continue" (else its end asks: Own.noteEnd); the catch-up
			-- passes through whatever the setting.
			local through = Own.placedThrough[id]
			Own.placedThrough[id] = nil
			local mayChain = (autoChain or sawIncomplete or through) and (through or not Own.endAsks(guide))
			local nextId, asks = routeNext(guide)
			if through and asks then nextId, asks = Own.likeliestRoute(guide), false end
			if mayChain and asks then pendingChoices[#pendingChoices + 1] = id end
			-- A catch-up goes on through guides finished earlier this session
			-- (another try): only a guide it already passed on this run stops
			-- it, against a loop of `next`.
			local again = through and not Own.chainSeen[nextId] and nextId ~= id
			if mayChain and nextId and Guides.Get(nextId) and (again or not completedFired[nextId]) and not tabIndexOf(nextId) then
				if through then
					Own.chainSeen[id] = true
					completedFired[nextId] = nil
					if active then Own.placedChain[#Own.placedChain + 1] = id end
				end
				Own.opened[id] = nil
				-- "Continue automatically" says so (GUIDE_CONTINUED, after the evaluation).
				if not through and Own.leveling(guide) then
					ns.CharState().guideEnds[id] = true
					Own.pendingContinued[#Own.pendingContinued + 1] = { id, nextId }
				end
				resetLoaded(nextId, true)
				persist()
				if active then ns.Fire("GUIDE_CHANGED", nextId) end
				evaluateLoaded(active)
				return
			end
		end
	end
	Own.noteEnd()
	-- Placed: where a guide just opened resumes, and the guides passed whole
	-- on the way (the guide window shows the catch-up). A guide a login or
	-- reload brings back is placed without it.
	if placed then
		local opened = Own.opened[guide.id]
		local chain = Own.placedChain
		Own.chainSeen, Own.placedChain, Own.opened[guide.id] = {}, {}, nil
		if active and opened then ns.Fire("GUIDE_PLACED", guide.id, computed, chain) end
	end
end

-- Start the countdown of each `wait` goal of step s whose earlier goals (the
-- ones that hold the route) are all done.
function Own.startWaits(s)
	local goals = guide.steps[s].goals
	local ready = true
	for g = 1, #goals do
		local goal = goals[g]
		if goal.t == "wait" and goalApplies(goal) and not Own.waitStart[goal] and ready then
			Own.waitStart[goal] = GetTime()
		end
		if ready and blocks(goal) and goalApplies(goal) and not Own.goalSkipped(s, g) and not goalDone(s, g, goal) then ready = false end
	end
end

-- While the live step has a `wait` counting down: evaluate again each second,
-- so its countdown line moves and it is done on time. One timer at a time.
function Own.watchWait()
	if Own.waitTimer or not (guide and computed and guide.steps[computed]) then return end
	for g, goal in ipairs(guide.steps[computed].goals) do
		if goal.t == "wait" and Own.waitStart[goal] and not checked(computed, g) and not goalDone(computed, g, goal) then
			Own.waitTimer = true
			ns.After(1, function()
				Own.waitTimer = false
				requestUpdate()
			end)
			return
		end
	end
end

-- While the shown step has an open hearth goal whose Hearthstone waits:
-- evaluate again when its minute changes and once it is ready, so the time
-- left and the walk to the inn follow it (#576). One timer at a time
-- (Own.hearthTimer: the main chunk is at 200 locals).
function Own.watchHearth()
	if Own.hearthTimer or not (guide and current and guide.steps[current]) then return end
	local wait
	for g, goal in ipairs(guide.steps[current].goals) do
		if goal.t == "hearth" and goalApplies(goal) and not goalDone(current, g, goal) then
			local w = Own.hearthWait(goal)
			if w and w > 0 and (not wait or w < wait) then wait = w end
		end
	end
	if not wait then return end
	local nextIn = wait % 60
	if nextIn < 0.5 then nextIn = 60 end
	Own.hearthTimer = true
	ns.After(math.min(nextIn, wait) + 0.1, function()
		Own.hearthTimer = false
		requestUpdate()
	end)
end

-- Evaluate every tab, the active one last.
function evaluate()
	lastEval = GetTime()
	generation = generation + 1
	refreshPlayer()
	for i = 1, #tabs do
		if i ~= activeIndex then
			use(tabs[i])
			evaluateLoaded(false)
		end
	end
	useActive()
	evaluateLoaded(true)
	Own.watchHearth()
	Own.watchWait()
	-- Out-levelled: once per guide per session; for a guide the catch-up may
	-- pass whole for the player (Own.opened, autoChain), once it is placed.
	local mayPass = placing and autoChain and Own.opened[guide and guide.id or ""] and ns.Get("behavior.skipGrey")
	if guide and guide.maxLevel and (player.level or 1) >= guide.maxLevel + 2 and not outleveled[guide.id] and not mayPass then
		outleveled[guide.id] = true
		local suggested = Guides.Suggest()
		ns.Fire("GUIDE_OUTLEVELED", guide.id, suggested ~= guide.id and suggested or nil)
	end
	checkTrainDue()
	updateTicker()
	if #pendingCompleted > 0 then
		local list = pendingCompleted
		pendingCompleted = {}
		for i = 1, #list do ns.Fire("GUIDE_COMPLETED", list[i]) end
	end
	if tabsDirty then fireTabs() end
	if #pendingChoices > 0 then
		local list = pendingChoices
		pendingChoices = {}
		for i = 1, #list do ns.Fire("ROUTE_CHOICE", list[i]) end
	end
	if #Own.pendingContinued > 0 then
		local list = Own.pendingContinued
		Own.pendingContinued = {}
		for i = 1, #list do ns.Fire("GUIDE_CONTINUED", list[i][1], list[i][2]) end
	end
	if #Own.pendingEnds > 0 then
		local list = Own.pendingEnds
		Own.pendingEnds = {}
		for i = 1, #list do ns.Fire("GUIDE_END", list[i].guideId, list[i]) end
	end
end

scheduled = false
function flush()
	scheduled = false
	evaluate()
end

requestUpdate = function()
	if scheduled or #tabs == 0 or not ns.IsLoggedIn() then return end
	scheduled = true
	local wait = lastEval + MIN_INTERVAL - GetTime()
	ns.After(wait > 0 and wait or 0, flush)
end
Engine.RequestUpdate = requestUpdate

-- The active tab changed: announce its guide, step and waypoint.
function announceActive()
	generation = generation + 1
	if not player then refreshPlayer() end
	ns.Fire("GUIDE_CHANGED", guide and guide.id or nil)
	if guide then ns.Fire("STEP_CHANGED", current) end
	waypoint = findWaypoint()
	ns.Fire("WAYPOINT_CHANGED", waypoint)
end

---------------------------------------------------------------------------
