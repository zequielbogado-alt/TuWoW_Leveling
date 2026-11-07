-- Engine goal completion rules, objective matching, step anchoring, and placement
-- Modular part of ns.Engine (< 1000 lines).

local ADDON, ns = ...
setfenv(1, ns.Engine._env)

-- Done rules (contract table "Goal fields")
---------------------------------------------------------------------------

goalDone = nil

-- The quest-log line an objective goal reads (#223, #279, #335). The game
-- does not always list a quest's objectives in the order the guide was
-- compiled with: Slimy Menace counts Murlocs first where the quest data
-- lists Murloc Streamrunners first, so `oi` alone read the other
-- objective's count and ticked the other line. With more than one line: the
-- line labelled with the goal's target (its NPC, item or object, in the
-- client's language where Polestar.Names has it) wins, else the line holding
-- that name with the least else in its label ("Murloc" never takes "Murloc
-- Streamrunner slain"), the compiled `oi` among equals; with no name, or no
-- line holding it (a label not filled in yet, another language), `oi` as
-- compiled. (On Own: the main chunk is at 200 locals.)
Own.OBJECTIVE_NAME = {
	kill = function(g, N) return N.Npc(g.npc) or g.target end,
	collect = function(g, N) return N.Item(g.item) or g.itemName end,
	interact = function(g, N) return N.Object(g.object) or g.objName end,
}
function Own.objectiveLine(goal, objs)
	local oi = goal.oi
	local nameOf = #objs > 1 and Own.OBJECTIVE_NAME[goal.t]
	local name = nameOf and nameOf(goal, ns.Names)
	if type(name) ~= "string" or name == "" then return oi end
	local label = Compat().ObjectiveLabel
	local best, bestScore
	for k = 1, #objs do
		local l = label(objs[k].text)
		local score
		if l == name then
			score = 0
		elseif l ~= "" and l:find(name, 1, true) then
			score = #l - #name
		end
		if score and (not bestScore or score < bestScore or (score == bestScore and k == oi)) then
			best, bestScore = k, score
		end
	end
	return best or oi
end

-- The quest-log line (an index into Compat.GetQuestObjectives) objective goal
-- `goal` reads, as Own.objectiveLine picks it; its `oi` while the quest is not in
-- the log. Party sync reads members' counts by it: theirs come in the same
-- game order. Nil for a goal that counts the bags (Own.bagCollect): no line
-- counts its item.
function Engine.ObjectiveLine(goal)
	if type(goal) ~= "table" or not goal.quest or not goal.oi then return goal and goal.oi end
	if Own.bagCollect(goal) then return nil end
	local objs = Compat().GetQuestObjectives(goal.quest)
	return objs and Own.objectiveLine(goal, objs) or goal.oi
end

-- Whether quest `collect` goal `goal` counts the bags: the quest uses its
-- item without asking for it (QuestDB.UsesOnly), so no quest-log line counts
-- it, whichever line the goal was bound to (#538: a pack's Sunscale Feather
-- on "Blue Raptor Nest visited", its Fresh Zhevra Carcass on "Ishamuhale's
-- Fang"). Without the quest database (every quest feature off) the goal
-- reads its line. (On Own: the main chunk is at 200 locals.)
function Own.bagCollect(goal)
	if goal.t ~= "collect" or not goal.quest or not goal.item then return false end
	local Q = ns.QuestDB
	return Q and Q.IsLoaded() and Q.UsesOnly(goal.quest, goal.item) or false
end

-- Objective goals: done when objective `oi` (its line, Own.objectiveLine) is
-- finished or the quest is ready for turn-in or turned in. Returns done, cur, max.
function objectiveState(goal)
	local q = goal.quest
	if questDone(q) then return true end
	local C = Compat()
	if not C.IsOnQuest(q) then return false end
	local cur, max, finished
	if goal.oi then
		local objs = C.GetQuestObjectives(q)
		-- No objectives at all while the quest is in the log: the client has
		-- not filled them in yet (right after the accept), and its ready flag
		-- says nothing until it has.
		if not objs then return false end
		local o = objs[Own.objectiveLine(goal, objs)]
		if o then cur, max, finished = o.numFulfilled, o.numRequired, o.finished end
	end
	if C.IsQuestReadyForTurnIn(q) then return true, cur, max end
	return finished and true or false, cur, max
end

-- A `complete` goal's quest in the log: its objectives' counts summed, each
-- capped at what it needs ("Plainstrider Meat 3/7, Feathers 5/7": 8/14), and
-- with `open`, when it has more than one, the open ones in the game's words
-- ("Plainstrider Meat: 3/7"; the count alone says it for one). Nil when the
-- quest is not in the log. (On Own: the main chunk is at 200 locals.)
function Own.completeState(q, open)
	local objs = Compat().GetQuestObjectives(q)
	if not objs then return nil end
	local cur, max, list = 0, 0, nil
	for i = 1, #objs do
		local o = objs[i]
		max = max + o.numRequired
		cur = cur + math.min(o.numFulfilled, o.numRequired)
		if open and #objs > 1 and not o.finished and o.text ~= "" then
			local text = o.text
			if not text:find("%d+%s*/%s*%d+") then text = ("%s %d/%d"):format(text, o.numFulfilled, o.numRequired) end
			list = list or {}
			list[#list + 1] = text
		end
	end
	return cur, max, list
end

function countState(goal)
	local need = goal.count or 1
	local have = Compat().GetItemCount(goal.item)
	return have >= need, have < need and have or need, need
end

-- done, cur, max, label, kind of a skill-rank target.
function skillState(goal, target)
	local rank = skillRank(goal) or 0
	return rank >= target, rank < target and rank or target, target, skillName(goal), "skill"
end

function repState(goal)
	local fn = Compat().GetFactionStanding
	if not fn then return false end
	local standing, value, barMin, barMax = fn(goal.faction)
	if not standing then return false end
	local done = standing >= goal.standing
	if barMax and barMin and barMax > barMin then
		return done, (value or barMin) - barMin, barMax - barMin, standingName(standing), "rep"
	end
	return done
end

function achieveState(goal)
	local fn = Compat().GetAchievement
	local a = fn and fn(goal.achievement)
	if not a then return false end
	local list = a.criteria or {}
	if goal.criteria then
		local c = list[goal.criteria]
		if not c then return a.completed end
		return a.completed or c.completed, c.cur, c.max, nil, "count"
	end
	if #list == 1 then return a.completed, list[1].cur, list[1].max, nil, "count" end
	if #list == 0 then return a.completed end
	local n = 0
	for i = 1, #list do
		if list[i].completed then n = n + 1 end
	end
	return a.completed, n, #list, nil, "count"
end

function exploredAt(goal)
	local fn = Compat().IsAreaExploredAt
	if not fn then return false end
	local x, y = liveXY(goal)
	return x and fn(goal.map, x, y) or false
end

-- Whether bag-count collect g of step s gets the one item that starts a
-- quest: the next `accept Q item I` of that item in the step, before any
-- other collect of it (the pairing GetStepView folds into one line), and that
-- quest is in the log or done. Accepting uses the item up, and a player who
-- took the quest before the route reached the step never held it there
-- (#309). (On Own: the main chunk is at 200 locals.)
function Own.starterTaken(s, g, goal)
	if (goal.count or 1) ~= 1 then return false end
	local goals = guide.steps[s].goals
	for j = g + 1, #goals do
		local a = goals[j]
		if a.item == goal.item then
			if a.t == "collect" and not a.quest then return false end
			if a.t == "accept" and not a.npc and not a.object and goalApplies(a) then
				local C = Compat()
				return C.IsOnQuest(a.quest) or questDone(a.quest) or false
			end
		end
	end
	return false
end

-- Whether the guide abandoned quest q after step s (an `abandon` goal latched,
-- or the live route is at or past one and the quest is out of the log; a step
-- the player only looks at does not count). An accept at step s then stays
-- done, so the route does not go back to the giver; a player's own abandon
-- still reopens it, and an accept after the abandon (taking it again) is not
-- done by it.
function Own.abandonedByGuide(q, s)
	local list = layoutOf(guide).abandons[q]
	if not list then return false end
	local m = ns.CharState().manual[guide.id]
	for _, a in ipairs(list) do
		if a.s >= s then
			if m and m[a.key] == true then return true end
			if computed and a.s <= computed and not Compat().IsOnQuest(q) then return true end
		end
	end
	return false
end

-- Quests that left the log after the route had passed their accept, held
-- until the player answers (Engine.LostQuestion): per character, per guide,
-- quest id -> the live step when it left (CharState().lostQuests). Such an
-- accept before that step reads done, so the live step stays where it was
-- instead of jumping back to the giver unasked.
function Own.lostHeld(q, s)
	local all = ns.CharState().lostQuests
	local mine = all and guide and all[guide.id]
	local upTo = mine and mine[q]
	return upTo ~= nil and s < upTo
end

-- done, cur, max[, label, kind] for goal g of step s. Notes are never done
-- (and never block). A stored check-off (the player's tick, or a result the
-- Engine latched) is done whatever the live state says, as is a goal the
-- catch-up passed for the session (Own.passedNow); but an accept is done
-- only by the quest log (in it, completed, abandoned by the guide, or held
-- after it left the log: Own.lostHeld): a tick
-- on it never stands for the quest (#739), and its view says the quest is
-- not in the log (`notInLog`).
goalDone = function(s, g, goal)
	local t = goal.t
	local C = Compat()
	if t ~= "accept" and checked(s, g) then return true end
	local now = Own.passedNow[guide.id]
	if now and now[Own.key(s, g)] then return true end
	if t == "accept" then
		return C.IsOnQuest(goal.quest) or questDone(goal.quest) or Own.abandonedByGuide(goal.quest, s) or Own.lostHeld(goal.quest, s)
	elseif t == "turnin" then
		-- `direct`: only its latched QUEST_TURNED_IN (checked above) or the
		-- completed flag. The session's turn-ins would close every later goal
		-- of a repeatable at the first hand-in; one hand-in closes one goal.
		if goal.direct then return C.IsQuestCompleted(goal.quest) and true or false end
		return questDone(goal.quest) and true or false
	elseif t == "complete" then
		if questDone(goal.quest) or C.IsQuestReadyForTurnIn(goal.quest) then return true end
		local cur, max = Own.completeState(goal.quest)
		return false, cur, max
	elseif t == "kill" or t == "interact" or t == "use" then
		if goal.quest then return objectiveState(goal) end
		return false
	elseif t == "collect" then
		if goal.quest then
			if not (Own.bagCollect(goal) and C.IsOnQuest(goal.quest)) then return objectiveState(goal) end
			if C.IsQuestReadyForTurnIn(goal.quest) then return true end
			return countState(goal)
		end
		if Own.starterTaken(s, g, goal) then return true end
		return countState(goal)
	elseif t == "buy" then
		return countState(goal)
	elseif t == "goto" then
		if arrived[goal] then return true end
		-- Done once any later goal of the step is. A later goto counts by its
		-- own arrival or check-off only: whatever would make it done through
		-- its own later goals is scanned here already (recursing would make a
		-- step of n waypoints cost 2^n checks).
		local goals = guide.steps[s].goals
		local leads = true -- nothing but gotos after it: it leads into the next step
		for j = g + 1, #goals do
			local later = goals[j]
			if later.t == "goto" then
				if (arrived[later] or checked(s, j)) and goalApplies(later) then return true end
			elseif later.t ~= "note" and goalApplies(later) then
				if goalDone(s, j, later) then return true end
				leads = false
			end
		end
		-- The way into the next step (a cave's mouth, a dock): done once that
		-- step's quest work is, so work done ahead of the guide never sends the
		-- player back to the way in (#240). A goto with optional work after it
		-- is where that work is, and holds.
		return leads and Own.nextStepDone(s) or false
	elseif t == "train" and isProfessionTrain(goal) then
		-- Done once the profession's max rank reaches this rank's cap, at
		-- whichever trainer.
		local fn = C.GetSkillRank
		local _, maxRank = fn(goal.skillLine or goal.skill)
		if not maxRank and goal.skillLine and goal.skill then _, maxRank = fn(goal.skill) end
		return (maxRank or 0) >= rankCap(goal)
	elseif t == "train" and goal.class and Own.nothingToTrain() then
		return true
	elseif t == "talk" or t == "train" or t == "vendor" then
		-- Interactions during the step are stored as check-offs (see latch).
		return false
	elseif t == "task" then
		-- Done only by the player's tick (checked above).
		return false
	elseif t == "wait" then
		-- Its countdown starts once the goals before it are done (Own.startWaits).
		local secs = tonumber(goal.seconds) or 0
		local at = Own.waitStart[goal]
		if not at then return false, secs, secs, nil, "wait" end
		local left = secs - (GetTime() - at)
		if left <= 0 then return true end
		return false, math.ceil(left), secs, nil, "wait"
	elseif t == "abandon" then
		return not C.IsOnQuest(goal.quest)
	elseif t == "destroy" then
		return (C.GetItemCount(goal.item) or 0) == 0
	elseif t == "money" then
		return C.GetMoney() >= (goal.money or 0)
	elseif t == "sethome" or t == "home" then
		-- `sethome nearest` has no location: binding during the step latches it.
		local targetLoc = goal.location or goal.text
		if not targetLoc then return false end
		-- Bound at the goal's inn (its innkeeper, else the inn its location
		-- names, in Nav/Travel.lua's data) by any of: the inn Travel finds for
		-- the bind location (the innkeeper learned at bind time, else the inn
		-- whose area the client names so, else its English names); the bind
		-- location reading as that inn's or the goal's area in the client's
		-- language; last, as its English location.
		local nav = ns.Nav
		local want = nav and nav.FindInn and nav.FindInn(goal.npc, targetLoc)
		if want and nav.BoundInn and nav.BoundInn() == want then return true end
		local loc, areaName = C.GetBindLocation(), C.GetAreaName
		if areaName and (same(loc, areaName(want and want.area)) or same(loc, areaName(goal.area))) then return true end
		return same(loc, targetLoc)
	elseif t == "enter" then
		-- In the zone or area: its zone or subzone text (inPlace).
		return inPlace(goal)
	elseif t == "hearth" or t == "fly" then
		if inPlace(goal) then return true end
		-- Done once any later goal of the step is, like goto: a hearth followed
		-- by a flight is behind the player once the flight lands. Later travel
		-- goals count by their own place or check-off only (no recursion).
		local goals = guide.steps[s].goals
		for j = g + 1, #goals do
			local later = goals[j]
			if goalApplies(later) then
				local lt = later.t
				if lt == "hearth" or lt == "fly" then
					if inPlace(later) or checked(s, j) then return true end
				elseif lt == "goto" then
					if arrived[later] or checked(s, j) then return true end
				elseif lt ~= "note" and goalDone(s, j, later) then
					return true
				end
			end
		end
		return false
	elseif t == "getfp" or t == "fpath" then
		return fpKnown(goal)
	elseif t == "level" then
		return Own.levelReached(goal.level, goal.frac)
	elseif t == "skill" then
		if isManual(goal) then return false end
		return skillState(goal, goal.level)
	elseif t == "cast" then
		return false -- ticked by the cast itself (Own.latchCast) or the player
	elseif t == "learn" then
		if isManual(goal) then return false end
		return C.IsSpellKnown(goal.spell)
	elseif t == "craft" then
		local mode = craftMode(goal)
		if mode == "skill" then return skillState(goal, goal.untilSkill) end
		if mode == "count" then return countState(goal) end
		return false
	elseif t == "rep" then
		if isManual(goal) then return false end
		return repState(goal)
	elseif t == "explore" then
		return arrived[goal] or exploredAt(goal)
	elseif t == "die" then
		return arrived[goal] and true or false
	elseif t == "achieve" then
		if isManual(goal) then return false end
		return achieveState(goal)
	end
	return false -- note
end

function blocks(goal)
	return goal.t ~= "note" and not goal.optional
end

-- Every goal of step s that holds the route is done (or cannot be done).
function Own.goalsDone(s)
	local goals = guide.steps[s].goals
	for g = 1, #goals do
		local goal = goals[g]
		if blocks(goal) and goalApplies(goal) and not unavailableFor(goal) and not goalDone(s, g, goal) then return false end
	end
	return true
end

function stepDone(s)
	if guide.steps[s].along then return true end -- the route passes over it (Own.alongListed)
	if Own.groupPending(guide.steps[s]) then return false end -- waits for the player's answer
	return Own.goalsDone(s)
end

-- `when done <label>` (format 5): the step so labelled applies and its goals
-- are done, and it was not skipped (by the player, a failed `when` or a
-- `skipto` jump). An along step counts by its own goals. A step whose own
-- `when` asks, through other steps, whether it is done is not (Own.asking).
Own.asking = {}
function Own.labelDone(label)
	local s = guide and Own.marksOf().labels[label]
	if not s or isSkipped(s) or Own.asking[s] then return false end
	Own.asking[s] = true
	local ok = stepApplies(guide.steps[s]) and Own.goalsDone(s)
	Own.asking[s] = nil
	return ok
end

-- Bag-count goals (non-quest buy/collect, count-mode craft, money, abandon,
-- destroy), latched within their own step so using the items up does not
-- reopen it.
function isBagCount(goal)
	return goal.t == "buy" or (goal.t == "collect" and (not goal.quest or Own.bagCollect(goal)))
		or (goal.t == "craft" and craftMode(goal) == "count") or goal.t == "money"
		or goal.t == "abandon" or goal.t == "destroy"
end

-- Quest goals checked live from the quest log.
QUEST_VERBS = { accept = true, turnin = true, complete = true }
function isQuestGoal(goal)
	return goal.quest and (QUEST_VERBS[goal.t] or goal.t == "kill" or goal.t == "collect"
		or goal.t == "interact" or goal.t == "use")
end

-- Whether the step after s that applies to the character is done with quest
-- work done in it, as anchorStep counts it: a step passed only because its
-- quests are unavailable (their goals are not done then), or with no quest
-- goal (`train`, `level`, travel), is no sign the player went there; nor are
-- class and race steps and goals (`only`), whose quests run on their own
-- schedule (The Islander, taken by a Warrior anywhere, does not put him in
-- Orgrimmar). A step the player skipped vouches for nothing. (On Own: the
-- main chunk is at 200 locals.)
function Own.nextStepDone(s)
	local steps = guide.steps
	local sk = skippedFor(guide.id)
	for n = s + 1, #steps do
		local step = steps[n]
		if stepApplies(step) then
			if step.only or (sk and sk[n]) then return false end
			for g, goal in ipairs(step.goals) do
				if not goal.only and blocks(goal) and isQuestGoal(goal) and goalApplies(goal) and goalDone(n, g, goal) then
					return stepDone(n)
				end
			end
			return false
		end
	end
	return false
end

-- The last step with quest progress in the live quest log, or 0: a done quest
-- goal, or an objective with some progress. The route has demonstrably got
-- that far. Class and race steps and goals (`only`) and optional goals are no
-- evidence: class chains and item-started quests run on their own schedule (a
-- Warlock may finish the succubus chain long before the route reaches it).
function anchorStep()
	local steps = guide.steps
	for s = #steps, 1, -1 do
		local step = steps[s]
		if not step.only then
			for g, goal in ipairs(step.goals) do
				if not goal.only and not goal.optional and isQuestGoal(goal) and goalApplies(goal) then
					local done, cur = goalDone(s, g, goal)
					if done or (goal.oi and (cur or 0) > 0) then return s end
				end
			end
		end
	end
	return 0
end

-- The catch-up: behind the last quest progress (anchor), the guide leaves out
-- what is too low to be worth going back for, as "Skip grey quests" does for
-- grey quests anywhere: an accept that is green for the character (more than
-- 2 levels below) and not taken yet, unless a quest worth doing needs it first
-- (down the guide and the guides after it). Worth doing: an accept that is
-- not grey, behind the anchor only from yellow up (2 levels below or more). A
-- quest in the log by the same rules ("log"): left out while not done, kept
-- once it only has to be handed in. Only for leveling guides, with "Skip grey
-- quests" on.
function Own.catchUp(anchor, level)
	if guide.maxLevel and level >= guide.maxLevel + 2 then return Own.catchUpPast(level) end
	local out = {}
	if anchor <= 1 then return out end
	local C = Compat()
	local stepOf = layoutOf(guide).stepOf
	local chain = Own.chainOf(guide)
	local function low(goal)
		local qlvl = tonumber(goal.qlvl)
		return qlvl ~= nil and qlvl < level - 2
	end
	local worth = {}
	for _, goal in ipairs(chain.accepts) do
		local s = stepOf[goal]
		local qlvl = tonumber(goal.qlvl)
		if not (qlvl and C.IsQuestTrivial(qlvl, level)) and not (s and s < anchor and low(goal)) then
			worth[#worth + 1] = goal
		end
	end
	local needs = Own.needsFrom(chain.pres, worth)
	local steps = guide.steps
	for s = 1, anchor - 1 do
		if stepApplies(steps[s]) then
			for _, goal in ipairs(steps[s].goals) do
				local q = goal.quest
				if (goal.t == "accept" or goal.direct) and q and not goal.optional and Guides.Matches(goal.only, player)
					and low(goal) and not needs[q] and not questDone(q) then
					if C.IsOnQuest(q) then
						-- In the log: left out until done, kept to hand in.
						if not C.IsQuestReadyForTurnIn(q) then out[q] = "log" end
					elseif not C.IsQuestTrivial(tonumber(goal.qlvl), level) then
						out[q] = true -- grey ones: greyNeed
					end
				end
			end
		end
	end
	return out
end

-- In a guide the character is past (2 levels over its top, as the
-- out-levelled banner counts), going back is a detour: every grey or green
-- accept not taken yet is left out, unless at least CHAIN_WORTH quests from
-- yellow up need it, down the chain (The Tower of Althalaxx at 30: five
-- grey and green quests in Darkshore lead to four at 28 and 31 in
-- Ashenvale, so the chain stays). A quest in the log by the same rules,
-- kept once it only has to be handed in.
Own.CHAIN_WORTH = 3
function Own.catchUpPast(level)
	local C = Compat()
	local chain = Own.chainOf(guide)
	local cache = chainNeedsCache[guide]
	local key = "past:" .. level
	local counts = cache[key]
	if not counts then
		-- For each quest, how many distinct accepts from yellow up need it.
		counts = {}
		local targets = {}
		for _, goal in ipairs(chain.accepts) do
			local qlvl = tonumber(goal.qlvl)
			if qlvl and qlvl >= level - 2 and not targets[goal.quest] then
				targets[goal.quest] = true
				local seen, queue, head = { [goal.quest] = true }, { goal.quest }, 1
				while queue[head] do
					local q = queue[head]
					head = head + 1
					for _, list in ipairs(chain.pres[q] or NONE) do
						for _, p in ipairs(list) do
							if not seen[p] then
								seen[p] = true
								counts[p] = (counts[p] or 0) + 1
								queue[#queue + 1] = p
							end
						end
					end
				end
			end
		end
		cache[key] = counts
	end
	local out = {}
	for _, step in ipairs(guide.steps) do
		if stepApplies(step) then
			for _, goal in ipairs(step.goals) do
				local q, qlvl = goal.quest, tonumber(goal.qlvl)
				if (goal.t == "accept" or goal.direct) and q and qlvl and qlvl < level - 2 and not goal.optional
					and Guides.Matches(goal.only, player) and not questDone(q)
					and (counts[q] or 0) < Own.CHAIN_WORTH then
					if not C.IsOnQuest(q) then
						out[q] = true
					elseif not C.IsQuestReadyForTurnIn(q) then
						out[q] = "log" -- in the log, not done: left out; done, kept to hand in
					end
				end
			end
		end
	end
	return out
end

-- Placement: where the quest log puts the player in the guide. Runs while the
-- tab is being placed (`placing`: its guide was just loaded at login, reload,
-- in a new tab, after /polestar reset).
--
-- The start is the first open step with work the player has started (a goal
-- of a quest in the log: objectives in progress, ready to turn in) or can do
-- now (an accept their level and prerequisites allow). Steps the player
-- skipped are never the start, even with their quest in the log, and ticked
-- or skipped goals are not open work: a reload never pulls the player back to
-- what they chose to pass. Before the start (or, with none, before the last
-- quest progress), a step holds unless all its open goals are:
-- - accepts the character cannot take yet (level, prerequisite): marked
--   unavailable for the session, so they come back when the level is
--   reached or the prerequisite done (Own.clearMarks);
-- - goals the quest log cannot vouch for (goto, fly, getfp, train, vendor,
--   hearth, non-quest kill/collect...) in a step before the last quest
--   progress (anchorStep): the player is demonstrably past them;
-- - travel goals (goto, fly, hearth, explore) when the player already stands
--   within HERE yards of the start step's work: no travel needed;
-- - with the catch-up, travel goals on the way to a quest it left out, and in
--   a guide it passes whole.
-- Soft goals passed are latched. So soft steps never hold the player behind
-- quest work done further on, yet a fresh guide still begins with its
-- travel and training stops: a flight path, a hearth or training ahead of
-- the last quest progress holds, unless every quest of the guide is done,
-- or the guide is passed for the player (opened for them, Own.opened), where
-- it passes for the session only (Own.passedNow).
function place()
	local steps, C = guide.steps, Compat()
	local level = player.level or 1
	local sk = skippedFor(guide.id)
	local catchUp = ns.Get("behavior.skipGrey") and not Own.everyStep(guide)
	Own.leftOut[guide.id] = nil
	local anchor = anchorStep()
	if catchUp then Own.leftOut[guide.id] = Own.catchUp(anchor, level) end
	Own.passedNow[guide.id], Own.passedWhole[guide.id] = nil, nil
	local function open(s, g, goal)
		return blocks(goal) and goalApplies(goal) and not unavailableFor(goal) and not goalDone(s, g, goal)
	end
	local function gated(goal)
		if goal.t ~= "accept" then return nil end
		local lvl = tonumber(goal.minLevel)
		if lvl and level < lvl then return "level" end
		if missingPre(goal) then return "pre" end
		return nil
	end
	local out = Own.leftOut[guide.id]
	local start, later, anyOut
	for s = 1, #steps do
		for _, goal in ipairs(steps[s].goals) do
			if (goal.t == "accept" or goal.direct) and goal.quest and ((out and out[goal.quest]) or greyNeed(goal) == false) then anyOut = true end
		end
		if stepApplies(steps[s]) and not (sk and sk[s]) and not stepDone(s) then
			local started, doable = false, false
			for g, goal in ipairs(steps[s].goals) do
				if open(s, g, goal) then
					if goal.t == "accept" then
						doable = doable or not gated(goal)
						-- Only a level to reach holds a guide the catch-up could
						-- pass: a missing prerequisite is often a grey quest it
						-- left out, which will never come.
						later = later or gated(goal) == "level"
					elseif isQuestGoal(goal) and C.IsOnQuest(goal.quest) then
						started = true
					end
				end
			end
			if not start and (started or doable) then start = s end
		end
	end
	local limit = start or anchor
	-- Caught up on a guide the character is past (quests left out as too low,
	-- or its top level reached) with no quest left to do, none waiting for a
	-- level or a prerequisite: it passes whole. Opened for the player (the
	-- login's pick, Start guide, a guide chained to), it then chains to the
	-- next (evaluateLoaded); opened by the player or brought back by a reload,
	-- it stays, finished.
	local past = anyOut or (guide.maxLevel ~= nil and level >= guide.maxLevel)
	local whole = catchUp and not start and not later and logReady and past
	local through = whole and autoChain and Own.opened[guide.id]
	local allDone = whole and Own.allQuestsDone(guide)
	if whole then
		limit = #steps + 1
		Own.passedWhole[guide.id] = true
		if through then Own.placedThrough[guide.id] = true end
	end
	-- The last step before the start with an accept left out: the way there
	-- passes with it.
	local lastOut = 0
	for s = 1, limit - 1 do
		for _, goal in ipairs(steps[s].goals) do
			if (goal.t == "accept" or goal.direct) and goal.quest and ((out and out[goal.quest]) or greyNeed(goal) == false) then lastOut = s end
		end
	end
	local here = false
	if start and anchor < start then
		local HERE = 150 -- yards: the player stands where the start step's work is
		local c, px, py = C.GetPlayerWorldPosition()
		for g, goal in ipairs(steps[start].goals) do
			local map, x, y, f = posOf(goal)
			if c and map and x and y and open(start, g, goal) then
				local gc, gx, gy = C.MapToWorld(map, x, y, f)
				if gc == c and (gx - px) ^ 2 + (gy - py) ^ 2 <= HERE * HERE then
					here = true
					break
				end
			end
		end
	end
	local function travel(t) return t == "goto" or t == "fly" or t == "hearth" or t == "explore" or t == "die" end
	for s = 1, limit - 1 do
		if stepApplies(steps[s]) and not (sk and sk[s]) and not stepDone(s) then
			local goals, passes = steps[s].goals, true
			-- Soft goals this step passes: all of them behind the progress or
			-- with every quest done; travel to a quest left out or through a
			-- guide passed whole; the rest only in a guide passed for the
			-- player, for the session.
			local behind = s < anchor or allDone
			local now = not behind and through
			for g, goal in ipairs(goals) do
				local t = goal.t
				local soft = isManual(goal) or latchable(goal) or isBagCount(goal)
				if open(s, g, goal) and not gated(goal)
					and not (soft and (behind or now or ((s < lastOut or whole) and travel(t))))
					and not (here and travel(t)) then
					passes = false
					break
				end
			end
			if passes then
				local m = manualFor(guide.id, true)
				for g, goal in ipairs(goals) do
					if open(s, g, goal) then
						local why = gated(goal)
						if why then
							unavailable[goal.quest] = { reason = why, accept = goal }
						elseif now and not travel(goal.t) then
							local n = Own.passedNow[guide.id] or {}
							Own.passedNow[guide.id] = n
							n[Own.key(s, g)] = true
						else
							m[s .. ":" .. g] = true
						end
					end
				end
			end
		end
	end
end

-- `skipto` jumps (format 5; docs/GUIDE_FORMAT.md, "Jumps"): the route has
-- reached step s. The first of its jumps whose predicate holds skips s and
-- every step up to the labelled one for the character, saved as "jump" in
-- CharState().skipped next to the player's skips, so the jump does not undo
-- itself when the predicate turns false later; Unskip brings a step back. A
-- step skipped already keeps its skip. Not before the quest log
-- can be read (a `!turnedin` would hold on an empty log), nor for a step the
-- player brought back (Own.keep). True if the route jumped.
function Own.jump(s)
	local step = guide.steps[s]
	if not (step.skipto and logReady) then return false end
	local kept = ns.CharState().when[guide.id]
	if kept and kept[s] then return false end
	for _, k in ipairs(step.skipto) do
		local to = Own.marksOf().labels[k.to]
		if to and to > s and Own.predicateHolds(k.when) then
			local sk = skippedFor(guide.id, true)
			for t = s, to - 1 do
				if not sk[t] then sk[t] = "jump" end
			end
			return true
		end
	end
	return false
end

-- The player brought step s back (Unskip, Goto): a step with `when` applies
-- from now on, whatever its predicates, and one with `skipto` takes no jump
-- (CharState().when[guideId][s]).
function Own.keep(s)
	local step = guide.steps[s]
	if not (step and (step.when or step.skipto)) then return end
	local held = ns.CharState().when
	held[guide.id] = held[guide.id] or {}
	held[guide.id][s] = true
end

-- First applicable, not skipped, not done step, after placing the tab when
-- it was just loaded (place). During play soft steps hold as usual, so a
-- quest taken out of order never jumps a training stop. A step the route
-- reaches may jump ahead (Own.jump).
function computeCurrent()
	if placing then place() end
	local steps = guide.steps
	local sk = skippedFor(guide.id)
	for s = 1, #steps do
		if stepApplies(steps[s]) and not (sk and sk[s]) and not stepDone(s) then
			if not Own.jump(s) then return s end
			sk = skippedFor(guide.id)
		end
	end
	return nil
end

-- Store the live-done latchable goals of steps from..to (steps the route has
-- just moved past), and whether their `when` held (Own.latchWhen).
function latchPassed(from, to)
	local steps = guide.steps
	for s = from, to do
		local step = steps[s]
		Own.latchWhen(s)
		if stepApplies(step) then
			for g, goal in ipairs(step.goals) do
				if latchable(goal) and goalApplies(goal) and not checked(s, g) and goalDone(s, g, goal) then
					manualFor(guide.id, true)[s .. ":" .. g] = true
				end
			end
		end
	end
end

-- isBagCount: see computeCurrent above.

-- Latch step s's met bag counts and, when s is the live step (`live`), its
-- flights and hearths that landed: walking out of the arrival's subzone, or
-- through Rut'theran's portal, must not send the player back to the flight
-- master while the step's other goals are open (#362). Only the live step's:
-- looking ahead at a step while standing at its flight's end is no landing.
-- Unlike bag counts they are kept when the step is left backwards (the
-- player did land).
function latchInStep(s, live)
	local step = guide.steps[s]
	if not stepApplies(step) then return end
	for g, goal in ipairs(step.goals) do
		local t = goal.t
		-- An abandon latches on the live step only: on a step looked at ahead it
		-- reads done for a quest not taken yet (Own.abandonedByGuide).
		if ((isBagCount(goal) and (live or t ~= "abandon")) or (live and (t == "fly" or t == "hearth" or t == "enter" or t == "wait"))) and goalApplies(goal) and not checked(s, g) and goalDone(s, g, goal) then
			manualFor(guide.id, true)[s .. ":" .. g] = true
		end
	end
end

-- Forget the in-step bag-count latches of step s (the player's ticks stay).
function clearInStep(s)
	local m = manualFor(guide.id)
	if not m then return end
	for g, goal in ipairs(guide.steps[s].goals) do
		local key = s .. ":" .. g
		if isBagCount(goal) and m[key] == true then m[key] = nil end
	end
end

-- First applicable step after `from` that is still open, below `limit`.
function nextOpen(from, limit)
	local steps = guide.steps
	for s = from + 1, (limit or #steps + 1) - 1 do
		if stepApplies(steps[s]) and not isSkipped(s) and not stepDone(s) then return s end
	end
	return nil
end

function nextApplicable(from)
	local steps = guide.steps
	for s = from + 1, #steps do
		if stepApplies(steps[s]) then return s end
	end
	return nil
end

function goalStatus(s, g, goal, stepIsCurrent)
	if not goalApplies(goal) then return "na" end
	local done, cur, max, label, kind = goalDone(s, g, goal)
	if done then return "done", cur, max, label, kind end
	if unavailableFor(goal) or Own.goalSkipped(s, g) then return "skipped", cur, max, label, kind end
	return stepIsCurrent and "active" or "pending", cur, max, label, kind
end

---------------------------------------------------------------------------
