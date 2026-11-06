-- Engine pinned quests along-the-way system
-- Modular part of ns.Engine (< 1000 lines).

local ADDON, ns = ...
setfenv(1, ns.Engine._env)

-- Pinned quests (#644): the player pins a quest of the log as along the way
-- (the step menu, the quest log's menu). Its open objectives join the Along
-- the way list under whatever step is current (Engine.GetAlong), with their
-- map marks, the target button and the arrow (Engine.AimAlong), until they
-- are done or the player unpins it; a step ahead that turns it in while
-- they are open says so (goal view `pinOpen`). Each objective is the
-- guide's own goal for its quest-log line when the guide has one (the first
-- open one: located, with its spawn areas), else one built from the quest
-- database (Own.pinBuild). Pins are per character (CharState().pinnedQuests, quest
-- id -> true); a quest turned in drops its pin. (On Own: the main chunk is
-- at 200 locals.)
---------------------------------------------------------------------------

Own.PIN_STEP = 0 -- the step of a built pin goal: no guide step has index 0
Own.PIN_VERBS = { kill = true, collect = true, interact = true, use = true }
Own.pinBuilt = {} -- quest -> { [quest-log line] = goal | false }

-- Pin quest q (on: true or nil) or unpin it (on: false). True when done.
function Engine.PinQuest(q, on)
	q = tonumber(q)
	if not q then return false end
	local pins = ns.CharState().pinnedQuests
	if on == false then pins[q] = nil else pins[q] = true end
	Own.pinBuilt[q] = nil
	if on == false and aim and aim.quest == q then aim = nil end
	ns.Fire("PINS_CHANGED", q, pins[q] == true)
	if guide then evaluate() end
	return true
end

function Engine.IsPinned(q)
	return ns.CharState().pinnedQuests[tonumber(q) or 0] == true
end

-- The pinned quests listed now: in the log with an objective open, by id.
-- A pinned quest turned in is unpinned.
function Own.pinList()
	local C = Compat()
	local pins, out = ns.CharState().pinnedQuests, {}
	for q in pairs(pins) do
		if C.IsQuestCompleted(q) then
			pins[q] = nil
		elseif C.IsOnQuest(q) and not C.IsQuestReadyForTurnIn(q) then
			out[#out + 1] = q
		end
	end
	table.sort(out)
	return out
end

-- Pinned quest q's open quest-log lines, each as { step, goal index, goal,
-- line }, in the log's order: the guide's first open goal on that line, else
-- the built one.
function Own.pinGoals(q)
	local objs = Compat().GetQuestObjectives(q)
	local out, have = {}, {}
	if not objs then return out end
	for s, step in ipairs(guide.steps) do
		for g, goal in ipairs(step.goals) do
			if goal.quest == q and goal.oi and Own.PIN_VERBS[goal.t] and goalApplies(goal) then
				local line = Own.objectiveLine(goal, objs)
				local o = objs[line]
				if o and not o.finished and not have[line] and not goalDone(s, g, goal) then
					have[line] = true
					out[#out + 1] = { s, g, goal, line }
				end
			end
		end
	end
	for line, o in ipairs(objs) do
		if not o.finished and not have[line] then
			local goal = Own.pinBuild(q, line, o)
			if goal then out[#out + 1] = { Own.PIN_STEP, q * 100 + line, goal, line } end
		end
	end
	table.sort(out, function(a, b) return a[4] < b[4] end)
	return out
end

-- An objective goal for line `line` (objective `o`) of quest q, from the
-- quest database: a kill of its mob, a collect of its item or a click on its
-- object, at that NPC's (the item's best dropper's, else its object's)
-- spawns on the player's map, else on the map with most of them; the
-- objective's own words, by the line's type, when the database has nothing
-- to name.
function Own.pinBuild(q, line, o)
	local built = Own.pinBuilt[q]
	if not built then
		built = {}
		Own.pinBuilt[q] = built
	end
	if built[line] ~= nil then return built[line] or nil end
	local Q = ns.QuestDB
	local rec = Q and Q.IsLoaded() and Q.GetQuest(q)
	local ob = rec and rec.objectives[line]
	local goal = { quest = q, oi = line, title = rec and rec.title or nil, t = "kill", text = Compat().ObjectiveLabel(o.text) }
	local at
	if ob and ob.kind == "kill" then
		at = Q.GetNpc(ob.id)
		goal.npc, goal.target = ob.id, at and at.name
	elseif ob and ob.kind == "item" then
		local item = Q.GetItem(ob.id)
		goal.t, goal.item, goal.itemName = "collect", ob.id, item and item.name
		at = item and ((item.droppers[1] and Q.GetNpc(item.droppers[1].id)) or (item.objects[1] and Q.GetObject(item.objects[1].id)))
	elseif ob and ob.kind == "object" then
		at = Q.GetObject(ob.id)
		goal.t, goal.object, goal.objName = "interact", ob.id, at and at.name
	elseif ob and ob.kind == "event" and ob.map then
		goal.map, goal.x, goal.y, goal.f = ob.map, ob.x, ob.y, ob.f
	elseif not ob and goal.text ~= "" then
		-- No database line: the log's own label, by the line's type.
		if o.type == "monster" then
			goal.target = goal.text
		elseif o.type == "item" then
			goal.t, goal.itemName = "collect", goal.text
		elseif o.type == "object" then
			goal.t, goal.objName = "interact", goal.text
		end
	end
	if goal.target or goal.itemName or goal.objName then goal.text = nil end
	if at and at.spawns and #at.spawns > 0 then
		local here = Compat().GetPlayerMapPosition()
		local count, best = {}, nil
		for _, sp in ipairs(at.spawns) do
			count[sp.map] = (count[sp.map] or 0) + 1
			if not best or count[sp.map] > count[best] then best = sp.map end
		end
		local map = count[here or 0] and here or best
		local spots = {}
		for _, sp in ipairs(at.spawns) do
			if sp.map == map then
				spots[#spots + 1] = { x = sp.x, y = sp.y, r = sp.r or 0 }
				goal.f = goal.f or sp.f
			end
		end
		goal.map, goal.x, goal.y, goal.spots = map, spots[1].x, spots[1].y, spots
	end
	built[line] = goal
	return goal
end

-- The goal at `s`, `g` of an Along the way row (Engine.GetAlong's goal view
-- `step` and `index`): a guide goal, or a pinned quest's built one.
function Own.alongGoal(s, g)
	if not guide then return nil end
	if s == Own.PIN_STEP then
		local q = math.floor(g / 100)
		local built = Own.pinBuilt[q]
		return built and built[g - q * 100] or nil
	end
	local step = guide.steps[s]
	return step and step.goals[g] or nil
end
Engine.AlongGoal = Own.alongGoal

-- Whether `s`, `g` is a goal listed now as a pinned quest's (Own.pinGoals).
function Own.pinListed(s, g)
	if not guide then return false end
	for _, q in ipairs(Own.pinList()) do
		for _, e in ipairs(Own.pinGoals(q)) do
			if e[1] == s and e[2] == g then return true end
		end
	end
	return false
end

-- A step's turn-in of a pinned quest whose objectives are still open: goal
-- `goal` at step `s` (current or ahead) says so.
function Own.pinOpen(s, goal)
	if goal.t ~= "turnin" or not goal.quest or not ns.CharState().pinnedQuests[goal.quest] then return false end
	if not current or s < current then return false end
	local C = Compat()
	return C.IsOnQuest(goal.quest) and not C.IsQuestReadyForTurnIn(goal.quest) or false
end

function Engine.GetWaypoint() return waypoint or nil end

function Engine.GetProgress()
	if not guide then return 0, 0 end
	if not player then refreshPlayer() end
	return progressLoaded()
end

-- The live step: the first applicable, not skipped, not done one (nil when
-- the guide is complete), whatever step the player is looking at.
function Engine.GetLiveStep() return computed end

-- The level the guide expects next (QoL/XPMark): the first `level N` goal at
-- or after the step shown that is for this character (the step's `only` and
-- `when`, the goal's `only`), neither skipped, with N above `level` (the
-- caller's reading; the character's level by default), or a point inside
-- that level (`level 12.4`, `frac`) the character has not reached yet.
-- N, its step, its frac (nil for a whole level); or nil.
function Engine.LevelTarget(level)
	if not (guide and current) then return nil end
	if not player then refreshPlayer() end
	level = level or player.level or 1
	local sk = skippedFor(guide.id)
	for s = current, #guide.steps do
		local step = guide.steps[s]
		if not (sk and sk[s]) and stepApplies(step) then
			for g, goal in ipairs(step.goals) do
				local n = goal.level or 0
				local ahead = n > level or (goal.frac and n == level and not Own.levelReached(n, goal.frac))
				if goal.t == "level" and ahead and not (sk and sk[Own.key(s, g)]) and goalApplies(goal) then
					return n, s, goal.frac
				end
			end
		end
	end
	return nil
end

-- Items the active guide still needs in the bags, so they are kept, never
-- sold (QoL/Vendor.lua, QoL/Keep.lua): from the live step on, a `use` goal's
-- item, a `collect`'s, a `buy`'s, a `craft`'s reagents and the item an
-- `accept` starts from; and before it, a quest `collect` whose quest is in
-- the log and handed in at a later step (the turn-in takes the items). Only
-- steps and goals for this character, none the player skipped.
-- -> { [itemID] = the first step that needs it }, built once per evaluation
-- (read it, do not keep it).
Own.kept = {}
function Engine.KeptItems()
	local k = Own.kept
	if k.items and k.generation == generation and k.guide == guide then return k.items end
	local items = {}
	k.items, k.generation, k.guide = items, generation, guide
	local live = computed
	if not (guide and live) then return items end
	if not player then refreshPlayer() end
	local C, sk = Compat(), skippedFor(guide.id)
	local function keep(item, s)
		if type(item) == "number" and not (items[item] and items[item] <= s) then items[item] = s end
	end
	local function wanted(s, g, goal)
		return not (sk and sk[Own.key(s, g)]) and goalApplies(goal)
	end
	local handIn, early = {}, {}
	for s, step in ipairs(guide.steps) do
		if not (sk and sk[s]) and stepApplies(step) then
			for g, goal in ipairs(step.goals) do
				local t = goal.t
				if s < live then
					if t == "collect" and goal.quest and C.IsOnQuest(goal.quest) and wanted(s, g, goal) then early[#early + 1] = goal end
				elseif wanted(s, g, goal) then
					if t == "use" or t == "collect" or t == "buy" or (t == "accept" and goal.item) then
						keep(goal.item, s)
					elseif t == "craft" and type(goal.reagents) == "table" then
						for _, r in ipairs(goal.reagents) do keep(r.item, s) end
					elseif t == "turnin" and goal.quest and not handIn[goal.quest] then
						handIn[goal.quest] = s
					end
				end
			end
		end
	end
	for _, goal in ipairs(early) do
		local s = handIn[goal.quest]
		if s then keep(goal.item, s) end
	end
	return items
end

-- Another race's starting zone the player has not reached (Own.awayStart),
-- for the guide window's notice: { races, zone, zoneName }; nil once they
-- are there (or it is under way), and for any other guide.
function Engine.AwayStart(id)
	local g = id and Guides.Get(id)
	if not g then return nil end
	if not player then refreshPlayer() end
	if not Own.awayStart(g) then return nil end
	return { races = g.races, zone = g.zone, zoneName = g.zoneName }
end

-- What a Class guide waits on before this character can start it
-- (Own.startGate), for the guide window's notice and the guide menu's row:
-- { level } or { pre, preTitle }, with who starts it (giver: the opening's
-- first accept's NPC, object or item name, and its map); nil when it can be
-- started (or is under way).
function Engine.StartGate(id)
	local g = id and Guides.Get(id)
	if not g then return nil end
	if not player then refreshPlayer() end
	local gate = Own.startGate(g)
	if not gate then return nil end
	local a = gate.giver
	return {
		level = gate.level,
		pre = gate.pre,
		preTitle = gate.pre and titleOfQuest(gate.pre, gate.preTitles) or nil,
		giver = a and (ns.Names.Npc(a.npc) or a.npcName or ns.Names.Object(a.object) or a.objName or ns.Names.Item(a.item) or a.itemName) or nil,
		map = a and a.map or nil,
	}
end

-- Look at step s instead of the live one (nil, or the live step: back to it).
function Own.view(s)
	if not s or (computed and s == computed) then
		pin, pinDone = nil, nil
	else
		pin, pinDone = s, stepDone(s)
	end
end

-- Navigation, ticks and skips are the player's word: they end the tab's
-- placement (place).
--
-- Skip the step on screen for good (saved): the guide moves on from it.
-- Looking at another step than the live one, the view moves to the next
-- applicable step. Undone by Unskip. Fires PLAYER_SKIPPED_STEP(guideId,
-- step) after the evaluation (the window offers the undo). Returns the
-- skipped step.
function Engine.Skip()
	if not (guide and current) then return nil end
	refreshPlayer()
	placing = nil
	local s, id = current, guide.id
	skippedFor(id, true)[s] = true
	if pin then Own.view(nextApplicable(pin)) end
	evaluate()
	ns.Fire("PLAYER_SKIPPED_STEP", id, s)
	return s
end

-- Undo a skip: step i is open again (the live step when it is the first open
-- one). True if it was skipped.
function Engine.Unskip(i)
	if not guide or type(i) ~= "number" then return false end
	local sk = skippedFor(guide.id)
	if not (sk and sk[i]) then return false end
	refreshPlayer()
	placing = nil
	sk[i] = nil
	if not next(sk) then ns.CharState().skipped[guide.id] = nil end
	Own.keep(i)
	evaluate()
	return true
end

-- One applicable step forward, done, skipped or open alike: a look at it
-- that changes nothing (the counterpart of Prev); reaching the live step
-- hands back to it.
function Engine.Next()
	if not (guide and current) then return end
	refreshPlayer()
	placing = nil
	local s = nextApplicable(current)
	if not s then return end
	Own.view(s)
	evaluate()
end

-- Look at step i: a jump back or ahead that changes nothing, except that a
-- skipped step jumped to is open again.
function Engine.Goto(i)
	if not guide or type(i) ~= "number" or not guide.steps[i] then return end
	refreshPlayer()
	if not stepApplies(guide.steps[i]) then return end
	placing = nil
	local sk = skippedFor(guide.id)
	if sk and sk[i] then
		sk[i] = nil
		-- A jumped step looked at again takes no jump, or the route would jump straight back.
		if guide.steps[i].skipto then Own.keep(i) end
	end
	local comp = computeCurrent()
	-- Leaving the open step backwards forgets its in-step latches.
	if comp and i < comp and current and current == comp then clearInStep(current) end
	computed = comp
	Own.view(i)
	evaluate()
end

-- One applicable step back, done, skipped or open alike: a look at it like
-- Goto's, but it never un-skips the step, so Next walks the same steps
-- forward and hands back to the live step where Prev started.
function Engine.Prev()
	if not guide then return end
	refreshPlayer()
	placing = nil
	for s = (current or #guide.steps + 1) - 1, 1, -1 do
		if stepApplies(guide.steps[s]) then
			if current and current == computed then clearInStep(current) end
			Own.view(s)
			evaluate()
			return
		end
	end
end

Engine.NextStep = Engine.Next
Engine.PrevStep = Engine.Prev
Engine.SkipStep = Engine.Skip
Engine.UnskipStep = Engine.Unskip


-- Tick a goal done, or clear its check-off: any goal but a note, quest goals
-- included (the player's word over the quest log). Saved as "tick" in
-- CharState().manual. False when there is nothing to change (no such goal, a
-- note, or a goal already done by live state).
function Engine.ToggleGoal(stepIndex, goalIndex)
	if not guide then return false end
	local step = guide.steps[stepIndex]
	local goal = step and step.goals[goalIndex]
	if not goal or goal.t == "note" then return false end
	refreshPlayer()
	local m = manualFor(guide.id, true)
	local key = stepIndex .. ":" .. goalIndex
	if m[key] then
		m[key] = nil
	elseif goalDone(stepIndex, goalIndex, goal) then
		return false
	else
		m[key] = "tick"
	end
	placing = nil
	evaluate()
	return true
end

-- Skip a quest, or bring it back (on = false): its goals in every guide read
-- as skipped, and the quests that need it go with it; the guide moves on.
-- The quest may already be in the log: it stays there, the guide no longer
-- leads to it (the player abandons it or not). Saved per character. False
-- for no quest id.
function Engine.SkipQuest(questID, on)
	if type(questID) ~= "number" then return false end
	local st = ns.CharState()
	if type(st.skippedQuests) ~= "table" then st.skippedQuests = {} end
	st.skippedQuests[questID] = on ~= false or nil
	if not next(st.skippedQuests) then st.skippedQuests = nil end
	refreshPlayer()
	placing = nil
	evaluate()
	-- PLAYER_SKIPPED_QUEST(questID, title): the guide window offers the undo.
	if on ~= false then
		local title
		for _, step in ipairs(guide and guide.steps or NONE) do
			for _, goal in ipairs(step.goals) do
				if goal.quest == questID and goal.title then title = goal.title break end
			end
			if title then break end
		end
		ns.Fire("PLAYER_SKIPPED_QUEST", questID, title)
	end
	return true
end

function Engine.IsQuestSkipped(questID)
	return Own.questSkipped(questID)
end

-- Skip an optional goal, or bring it back: it no longer leads the arrow and
-- reads as skipped (saved as CharState().skipped[guideId]["s:g"]). A quest
-- started by an item is one thing to do: its accept and the collect of its
-- item in the same step skip and come back together. False for goals that
-- are not optional.
function Engine.SkipGoal(stepIndex, goalIndex)
	if not guide then return false end
	local step = guide.steps[stepIndex]
	local goal = step and step.goals[goalIndex]
	if not (goal and goal.optional) then return false end
	local sk = skippedFor(guide.id, true)
	local on = not sk[stepIndex .. ":" .. goalIndex] or nil
	local starter = goal.item and ((goal.t == "accept" and not goal.npc and not goal.object) or (goal.t == "collect" and not goal.quest))
	for g, other in ipairs(step.goals) do
		local partner = starter and other ~= goal and other.item == goal.item and other.optional
			and ((other.t == "accept" and not other.npc and not other.object) or (other.t == "collect" and not other.quest))
			and other.t ~= goal.t
		if g == goalIndex or partner then
			sk[stepIndex .. ":" .. g] = on
			if aim == other then aim = nil end
		end
	end
	if not next(sk) then ns.CharState().skipped[guide.id] = nil end
	placing = nil
	evaluate()
	return true
end

-- Point the arrow at a goal of the current step the player chose (its place,
-- spawn areas included) until the step changes or the goal is done. True if
-- the arrow can lead there.
function Engine.AimGoal(stepIndex, goalIndex)
	if not (guide and current) or stepIndex ~= current then return false end
	local goal = guide.steps[current].goals[goalIndex]
	if not (goal and waypointOf(goalIndex, goal)) then return false end
	aim = goal
	evaluate()
	return true
end

-- Lead the arrow to an open, located goal of a listed along step (a row
-- click under the step). The choice lasts while the goal is listed and open,
-- also when the route moves on. True if the arrow can lead there.
function Engine.AimAlong(stepIndex, goalIndex)
	if not (guide and current) or not (Own.alongListed(stepIndex) or Own.pinListed(stepIndex, goalIndex)) then return false end
	local goal = Own.alongGoal(stepIndex, goalIndex)
	if not goal or goal.t == "note" or not waypointOf(goalIndex, goal, nil, stepIndex) then return false end
	aim = goal
	evaluate()
	return true
end

-- Move a candidate goal to its next-best candidate (wrapping); in the current
-- step the arrow follows it there. Returns the new candidate's position in
-- the ranking, or nil.
function Engine.CycleCandidate(stepIndex, goalIndex)
	if not guide then return nil end
	local step = guide.steps[stepIndex]
	local goal = step and step.goals[goalIndex]
	if not (goal and goal.candidates) then return nil end
	if not player then refreshPlayer() end
	local p = pickFor(goal)
	if #p.list < 2 then return p.i > 0 and p.i or nil end
	p.i = p.i % #p.list + 1
	if stepIndex == current then aim = goal else ns.Fire("STEP_UPDATED", current) end
	evaluate()
	return p.i
end

-- Move a goal with spawn areas on to its next spot: the nearest one not
-- visited lately (the current one counts as visited now), or spot `index`.
-- The new spot holds until the player reaches it; in the current step the
-- arrow follows the goal there, whichever goal it pointed at. Returns its
-- index in goal.spots, or nil (no such goal, or fewer than two spots).
function Engine.CycleSpot(stepIndex, goalIndex, index)
	if not guide then return nil end
	local step = guide.steps[stepIndex]
	local goal = step and step.goals[goalIndex]
	if not (goal and goal.spots and #goal.spots > 1) then return nil end
	local cur = Spots.get(goal)
	if cur then Spots.seen[cur] = GetTime() end
	local target = index and goal.spots[index]
	if target then
		Spots.chosen[goal] = target
	else
		local c, px, py = Compat().GetPlayerWorldPosition()
		Spots.repick(goal, c, px, py, true)
	end
	Spots.pinned[goal] = Spots.chosen[goal]
	if stepIndex == current then aim = goal else ns.Fire("STEP_UPDATED", current) end
	evaluate()
	return Spots.index(goal)
end

-- The waypoint keys (Bindings.xml): the next (dir 1) or previous (-1) place
-- the arrow can lead to on the step on screen. A goal with spawn spots moves
-- on to its next or previous spot (CycleSpot); else the arrow moves to the
-- next or previous open goal of the step that has a place, in goal order,
-- round the step. True if the arrow moved.
function Engine.CycleWaypoint(dir)
	if not (guide and current) then return false end
	dir = dir == -1 and -1 or 1
	local step = guide.steps[current]
	local gi = waypoint and waypoint.stepIndex == current and waypoint.goalIndex or nil
	local goal = gi and step.goals[gi]
	if goal and goal.spots and #goal.spots > 1 then
		local n = #goal.spots
		return Engine.CycleSpot(current, gi, ((Spots.index(goal) or 1) - 1 + dir) % n + 1) ~= nil
	end
	local n = #step.goals
	for k = 1, n do
		local g = ((gi or (dir == 1 and 0 or 1)) - 1 + dir * k) % n + 1
		local cand = step.goals[g]
		if cand ~= goal and goalApplies(cand) and not Own.goalSkipped(current, g) and not goalDone(current, g, cand) and waypointOf(g, cand) then
			aim = cand
			evaluate()
			return true
		end
	end
	return false
end

-- Forget check-offs, skips and the saved view for the active guide.
function Engine.ResetProgress()
	if not guide then return end
	local state = ns.CharState()
	state.manual[guide.id] = nil
	state.skipped[guide.id] = nil
	state.when[guide.id] = nil
	pin, pinDone, aim, passedUpTo, placing = nil, nil, nil, 0, GetTime() + PLACE_SECONDS
	evaluate()
end

---------------------------------------------------------------------------
