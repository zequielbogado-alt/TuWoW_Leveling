-- Engine multi-tab state, persistence, arrival polling, and goal latching
-- Modular part of ns.Engine (< 1000 lines).

local ADDON, ns = ...
setfenv(1, ns.Engine._env)

-- Tabs. Each open guide is a tab with its own step state. The locals at the
-- top (guide, current, computed, pin, ...) hold one tab's state at a time,
-- the "loaded" tab; at rest that is always the active tab. Work on another
-- tab loads it with use(tab) and switches back with useActive().
---------------------------------------------------------------------------

MAX_TABS = 6
Engine.MAX_TABS = MAX_TABS

tabs = {} -- { { guide, current, computed, pin, ... }, ... }
activeIndex = 0 -- 0 when no tab is open
loaded = nil -- tab whose state is in the locals
tabsDirty = false -- TABS_CHANGED pending

-- The loaded tab's view of another step than the live one, saved as
-- CharState().pins[guideId] = { step, done } so a reload shows the step the
-- player was looking at.
function Own.savePin()
	if not guide then return end
	local s = ns.CharState()
	local pins = s.pins
	local stored = type(pins) == "table" and pins[guide.id] or nil
	if pin then
		local done = pinDone and true or false
		if not (type(stored) == "table" and stored.step == pin and stored.done == done) then
			if type(pins) ~= "table" then
				pins = {}
				s.pins = pins
			end
			pins[guide.id] = { step = pin, done = done }
		end
	elseif stored ~= nil then
		pins[guide.id] = nil
	end
end

-- Write the loaded state back into its tab.
function sync()
	local t = loaded
	if not t then return end
	t.guide, t.current, t.computed, t.pin, t.pinDone, t.aim = guide, current, computed, pin, pinDone, aim
	t.passedUpTo, t.autoChain, t.sawIncomplete, t.lastSig, t.placing = passedUpTo, autoChain, sawIncomplete, lastSig, placing
	-- Saved only when the view moved (sync runs on every tab switch).
	if t.savedPin ~= pin or t.savedPinDone ~= pinDone or t.savedGuide ~= guide then
		Own.savePin()
		t.savedPin, t.savedPinDone, t.savedGuide = pin, pinDone, guide
	end
end

function use(tab)
	if loaded == tab then return end
	sync()
	loaded = tab
	if tab then
		guide, current, computed, pin, pinDone, aim = tab.guide, tab.current, tab.computed, tab.pin, tab.pinDone, tab.aim
		passedUpTo, autoChain, sawIncomplete, lastSig = tab.passedUpTo or 0, tab.autoChain, tab.sawIncomplete, tab.lastSig
		placing = tab.placing
	else
		guide, current, computed, pin, pinDone, aim = nil, nil, nil, nil, nil, nil
		passedUpTo, autoChain, sawIncomplete, lastSig, placing = 0, nil, nil, nil, nil
	end
end

function useActive() use(tabs[activeIndex]) end

function tabIndexOf(id)
	sync()
	for i = 1, #tabs do
		if tabs[i].guide.id == id then return i end
	end
	return nil
end

-- Guides ever opened in a tab, for the picker's "started" state.
function markStarted(id)
	local flags = ns.CharState().flags
	if type(flags.started) ~= "table" then flags.started = {} end
	flags.started[id] = true
end

-- A guide's shape: its steps' verbs and ids, hashed. Check-offs, skips and the
-- saved view are stored by step/goal position, so when a pack update changes
-- the shape they are carried over to the steps it kept (Own.remap); steps it
-- changed or dropped lose theirs.
Own.partsCache = setmetatable({}, { __mode = "k" })

-- Each step's verbs and ids ("turnin:783,accept:7"), per guide.
function Own.stepParts(g)
	local parts = Own.partsCache[g]
	if parts then return parts end
	parts = {}
	for s, step in ipairs(g.steps) do
		local ids = {}
		for i, goal in ipairs(step.goals) do
			ids[i] = goal.t .. ":" .. tostring(goal.quest or goal.npc or goal.item or goal.spell or goal.object
				or goal.faction or goal.achievement or goal.level or goal.location or goal.map or "")
		end
		parts[s] = table.concat(ids, ",")
	end
	Own.partsCache[g] = parts
	return parts
end

function Own.hash(str)
	local h = 5381
	for i = 1, #str do h = (h * 33 + str:byte(i)) % 4294967296 end
	return h
end

shapeCache = setmetatable({}, { __mode = "k" })
function shapeOf(g)
	local h = shapeCache[g]
	if h then return h end
	h = #g.steps .. "-" .. Own.hash(table.concat(Own.stepParts(g), "|"))
	shapeCache[g] = h
	return h
end

-- Per step, the hash of its verbs and ids (CharState().stepKeys[guideId]).
function Own.stepKeys(g)
	local keys = {}
	for s, part in ipairs(Own.stepParts(g)) do keys[s] = Own.hash(part) end
	return keys
end

-- Old step index -> new index for the steps a pack update kept, in order:
-- the longest common subsequence of the two key lists.
function Own.matchSteps(old, new)
	local n, m = #old, #new
	local len = {}
	for i = n + 1, 1, -1 do
		local row, below = {}, len[i + 1]
		for j = m + 1, 1, -1 do
			if i > n or j > m then
				row[j] = 0
			elseif old[i] == new[j] then
				row[j] = below[j + 1] + 1
			else
				row[j] = math.max(below[j], row[j + 1])
			end
		end
		len[i] = row
	end
	local map, i, j = {}, 1, 1
	while i <= n and j <= m do
		if old[i] == new[j] then
			map[i] = j
			i, j = i + 1, j + 1
		elseif len[i + 1][j] >= len[i][j + 1] then
			i = i + 1
		else
			j = j + 1
		end
	end
	return map
end

-- Move guide `id`'s check-offs ("s:g"), skips (s, "s:g"), stored `when`
-- outcomes (s) and saved view to the new step numbers; entries of steps not
-- kept are dropped.
function Own.remap(id, map)
	local s = ns.CharState()
	local function moved(k)
		if type(k) == "number" then return map[k] end
		local a, b = tostring(k):match("^(%d+):(%d+)$")
		local j = a and map[tonumber(a)]
		return j and (j .. ":" .. b) or nil
	end
	for _, field in ipairs({ "manual", "skipped", "when" }) do
		local old = s[field][id]
		if type(old) == "table" then
			local out = {}
			for k, v in pairs(old) do
				local nk = moved(k)
				if nk then out[nk] = v end
			end
			s[field][id] = next(out) and out or nil
		end
	end
	local p = type(s.pins) == "table" and s.pins[id]
	if p then s.pins[id] = type(p) == "table" and map[p.step] and { step = map[p.step], done = p.done } or nil end
end

function checkShape(g)
	local s = ns.CharState()
	if type(s.shapes) ~= "table" then s.shapes = {} end
	if type(s.stepKeys) ~= "table" then s.stepKeys = {} end
	local h = shapeOf(g)
	local stored = s.shapes[g.id]
	if stored ~= nil and stored ~= h then
		local old = s.stepKeys[g.id]
		-- Saved before step keys existed: nothing to match them by, all dropped.
		Own.remap(g.id, type(old) == "table" and Own.matchSteps(old, Own.stepKeys(g)) or {})
	end
	s.shapes[g.id] = h
	if stored ~= h or type(s.stepKeys[g.id]) ~= "table" then s.stepKeys[g.id] = Own.stepKeys(g) end
end

-- Tabs of guides that are not there (pack missing or switched off), oldest
-- first: { id, at } with `at` the tab's place when it was last open. They
-- stay saved, with their pins, and reopen there when the guide is back.
absent = {}

function forgetAbsent(id)
	for i = #absent, 1, -1 do
		if absent[i].id == id then table.remove(absent, i) end
	end
end

function rememberAbsent(id, at)
	forgetAbsent(id)
	absent[#absent + 1] = { id = id, at = at }
	while #absent > MAX_TABS do table.remove(absent, 1) end
end

-- CharState().tabs = { guideId, ... } (open tabs, then the absent ones),
-- .absentAt = { [guideId] = place }, .activeTab, and .guide (the active
-- tab's guide, as before tabs existed). Saved views (pins) are kept for open
-- and absent guides only. A guide open in a tab is never absent too: however
-- it got into the tab (OpenTab, SetGuide, a `next` chain, a route choice),
-- its absent entry goes here, so closing it later forgets it.
function persist()
	sync()
	local s = ns.CharState()
	local ids, keep = {}, {}
	for i = 1, #tabs do
		ids[i] = tabs[i].guide.id
		keep[ids[i]] = true
		markStarted(ids[i])
		checkShape(tabs[i].guide)
	end
	for i = #absent, 1, -1 do
		if keep[absent[i].id] then table.remove(absent, i) end
	end
	local at
	for _, a in ipairs(absent) do
		ids[#ids + 1] = a.id
		keep[a.id] = true
		at = at or {}
		at[a.id] = a.at
	end
	s.tabs = ids
	s.absentAt = at
	s.activeTab = activeIndex > 0 and activeIndex or nil
	s.guide = ids[activeIndex]
	if type(s.pins) == "table" then
		for id in pairs(s.pins) do
			if not keep[id] then s.pins[id] = nil end
		end
	end
end

-- Done and total applicable steps of the loaded tab; steps the player skipped
-- count as done. Counting runs the done
-- rules over every step after the current one, so the result is kept on the
-- tab until the next evaluation (or until its guide or current step moves):
-- the guide frame, tab strip and picker all ask for it on every repaint.
function progressLoaded()
	if not guide then return 0, 0 end
	local t = loaded
	if t and t.progGen == generation and t.progGuide == guide and t.progComputed == computed then
		return t.progDone, t.progTotal
	end
	local done, total = 0, 0
	for s, step in ipairs(guide.steps) do
		if stepApplies(step) then
			total = total + 1
			if (not computed or s < computed) or isSkipped(s) or stepDone(s) then done = done + 1 end
		end
	end
	if t then
		t.progGen, t.progGuide, t.progComputed, t.progDone, t.progTotal = generation, guide, computed, done, total
	end
	return done, total
end

-- done = done steps (progress bar), complete = the guide is finished.
-- The guide ids the tabs hold (id -> true), without reading their steps.
function Engine.TabIds()
	local out = {}
	for i = 1, #tabs do out[tabs[i].guide.id] = true end
	return out
end

function Engine.GetTabs()
	sync()
	if not player and #tabs > 0 then refreshPlayer() end
	local out = {}
	for i = 1, #tabs do
		local t = tabs[i]
		use(t)
		local g = t.guide
		local done, total = progressLoaded()
		out[i] = {
			guideId = g.id, title = g.title, category = g.category or "Leveling",
			stepIndex = t.current, stepCount = #g.steps, done = done, total = total, complete = t.computed == nil,
		}
	end
	useActive()
	return out, activeIndex
end

function fireTabs()
	tabsDirty = false
	local list, active = Engine.GetTabs()
	ns.Fire("TABS_CHANGED", list, active)
end

---------------------------------------------------------------------------
-- goto/explore arrival, polled for every tab while one has such a goal open;
-- the same poll re-picks the spawn area of the active waypoint's goal
---------------------------------------------------------------------------

ticker = nil
requestUpdate = nil

-- A `die` arrives only alive: a ghost at the graveyard has not resurrected yet.
function isArrivalGoal(goal)
	local t = goal.t
	if t == "die" then return not (UnitIsDeadOrGhost and UnitIsDeadOrGhost("player")) end
	return t == "goto" or t == "explore"
end

-- Whether the player (c, px, py) is within reach of a goal's place: its
-- arrival margin, around its spawn area when it has one.
function Own.reached(goal, c, px, py)
	local map, x, y, f, area = posOf(goal)
	if not (map and x and y) then return false end
	local gc, gx, gy = Compat().MapToWorld(map, x, y, f)
	if gc ~= c then return false end
	local dx, dy, r = gx - px, gy - py, (area or 0) + (goal.r or DEFAULT_RADIUS)
	return dx * dx + dy * dy <= r * r
end

-- A goto whose label names a subzone (`area`) arrives on going in there, a
-- cave or mine past its mouth's point (#177): in that subzone and indoors.
-- Indoors, as a cave's subzone can also cover the ground around and above
-- it (Fargodeep Mine), where the step's point still leads the way in. Only
-- once the player was seen elsewhere while the goal was open: being inside
-- when the goal comes up does not count, nor for a later goto of the step
-- naming the same place (a waypoint further in). Own.outside: the gotos with
-- a place the player was seen elsewhere while the goal was open.
Own.outside = setmetatable({}, { __mode = "k" })
function Own.enteredPlace(goals, g, goal)
	local inside = Own.inSubzone(goal)
	if inside == nil then return false end
	local C = Compat()
	inside = inside and C.IsIndoors ~= nil and C.IsIndoors()
	if not inside then
		Own.outside[goal] = true
		return false
	end
	if not Own.outside[goal] then return false end
	for j = 1, g - 1 do
		local other = goals[j]
		if other.t == "goto" and other.area == goal.area then return false end
	end
	return true
end

-- The end of a leveling guide reached ahead of the live step (a player who
-- skipped ahead: Own.noteEnd). Its last step for the character is
-- Own.endLast(), with behavior.guideEnd "ask", before the end was told, and
-- while the live step is an earlier one. Its goals count by kind:
-- - quest state, level, bags, flight paths, spells: as they are;
-- - goto and explore: by arrival, watched out of turn (Own.endWatch: Dun
--   Morogh's walk on to Westfall), or a later goal of the step;
-- - fly, hearth, enter, explore's map: being there, and a named NPC (train,
--   vendor, talk): visited, latched out of turn (latch);
-- - none of these while an open step before it still has work in that place
--   (Own.placeClear: Darkshore visits Elwynn before it ends there), so passing
--   by mid-guide never ends it;
-- - `train class` (any trainer of the class, Own.nothingToTrain): not out of
--   turn; it counts once the step is on screen, or ticked.
function Own.endLast()
	if not (guide and computed) or not Own.endAsks(guide) or ns.CharState().guideEnds[guide.id] then return nil end
	local s = Own.lastWork(computed)
	return s
end

-- Whether no open step from the live one up to step s has work in goal's
-- place (its area, location or map).
function Own.placeClear(s, goal)
	local steps = guide.steps
	local area, map = goal.area, goal.map
	local loc = type(goal.location) == "string" and goal.location:lower() or nil
	for i = computed, s - 1 do
		local step = steps[i]
		if stepApplies(step) and not isSkipped(i) then
			for _, o in ipairs(step.goals) do
				if goalApplies(o) and ((area and o.area == area) or (map and o.map == map)
					or (loc and type(o.location) == "string" and o.location:lower() == loc)) then
					if not stepDone(i) then return false end
					break
				end
			end
		end
	end
	return true
end

-- The last step watched for arrival out of turn: Own.endLast() with a goto or
-- explore whose place is clear. Worked out once per evaluation (the poll
-- between them reuses it). -> step index | nil
Own.endWatchCache = setmetatable({}, { __mode = "k" })
function Own.endWatch()
	local last = Own.endLast()
	if not last then return nil end
	local c = Own.endWatchCache[guide]
	if c and c.gen == generation and c.computed == computed then return c.s or nil end
	local watch = false
	for _, goal in ipairs(guide.steps[last].goals) do
		if (goal.t == "goto" or goal.t == "explore") and goalApplies(goal) then
			if not Own.placeClear(last, goal) then
				watch = false
				break
			end
			watch = true
		end
	end
	Own.endWatchCache[guide] = { gen = generation, computed = computed, s = watch and last or false }
	return watch and last or nil
end

-- Whether step s, the last one, is done out of turn (see above).
function Own.endDoneAhead(s)
	if not stepDone(s) then return false end
	local goals = guide.steps[s].goals
	for g = 1, #goals do
		local goal = goals[g]
		local t = goal.t
		if not goal.optional and goalApplies(goal) and not checked(s, g) then
			if t == "train" and goal.class then return false end
			if (t == "fly" or t == "hearth" or t == "enter" or t == "explore") and not arrived[goal] and not Own.placeClear(s, goal) then return false end
		end
	end
	return true
end

-- Loaded tab: mark arrived goals of step s; true if any. A "Go to" naming
-- its step is the area the step's work is in: reaching the place of any
-- other goal of the step (where the arrow leads) arrives there too.
function Own.arriveStep(s, c, px, py)
	local step = guide.steps[s]
	local goals = step.goals
	local hit = false
	for g = 1, #goals do
		local goal = goals[g]
		if isArrivalGoal(goal) and not arrived[goal] and goalApplies(goal) then
			local gc, gx, gy = goalWorld(goal)
			local dx, dy, r = (gx or 0) - px, (gy or 0) - py, goal.r or (goal.t == "die" and Own.DIE_RADIUS) or DEFAULT_RADIUS
			local here = gc == c and dx * dx + dy * dy <= r * r
			if not here and goal.t == "goto" and Own.enteredPlace(goals, g, goal) then here = true end
			if not here and goal.t == "goto" and step.title and goal.text == step.title then
				for j = 1, #goals do
					local other = goals[j]
					if j ~= g and other.t ~= "goto" and other.t ~= "note" and goalApplies(other) and Own.reached(other, c, px, py) then
						here = true
						break
					end
				end
			end
			if here then
				arrived[goal] = true
				hit = true
			end
		end
	end
	return hit
end

-- Loaded tab: the current step's arrivals, and a watched last step's
-- (Own.endWatch); true if any.
function arriveLoaded(c, px, py)
	if not (guide and current) then return false end
	local hit = Own.arriveStep(current, c, px, py)
	local last = Own.endWatch()
	if last and last ~= current and Own.arriveStep(last, c, px, py) then hit = true end
	return hit
end

function checkArrival()
	if #tabs == 0 then return end
	local c, px, py = Compat().GetPlayerWorldPosition()
	if not c then return end
	local hit = false
	for i = 1, #tabs do
		use(tabs[i])
		if arriveLoaded(c, px, py) then hit = true end
	end
	useActive()
	local sg = Spots.waypointGoal()
	if sg and Spots.repick(sg, c, px, py) then hit = true end
	-- A step with several open field goals: the nearest may have changed.
	if guide and current and Own.nearPick[guide.steps[current]] then
		Own.nearMoved = false
		local groups, focus = stepGroups(current)
		Own.currentGoal(current, groups, focus)
		if Own.nearMoved then hit = true end
	end
	if hit then requestUpdate() end
end

-- Whether step s has an arrival goal still open.
function Own.arrivalOpen(s)
	local goals = guide.steps[s].goals
	for g = 1, #goals do
		local goal = goals[g]
		if isArrivalGoal(goal) and goalApplies(goal) and not goalDone(s, g, goal) then return true end
	end
	return false
end

-- The current step, or a watched last step (Own.endWatch), waits on an arrival.
function needsArrival()
	if not (guide and current) then return false end
	if Own.arrivalOpen(current) then return true end
	local last = Own.endWatch()
	return last ~= nil and last ~= current and Own.arrivalOpen(last)
end

function updateTicker()
	local need = false
	for i = 1, #tabs do
		use(tabs[i])
		if needsArrival() then
			need = true
			break
		end
	end
	useActive()
	if not need then need = Spots.waypointGoal() ~= nil or (guide ~= nil and current ~= nil and Own.nearPick[guide.steps[current]] ~= nil) end
	if need and not ticker then
		ticker = ns.NewTicker(ARRIVAL_POLL, checkArrival)
	elseif not need and ticker then
		ticker:Cancel()
		ticker = nil
	end
end

-- A `die` goal (deathskip) is done on being back alive this close (yards) to
-- its Spirit Healer: the resurrection puts the player beside him. Back alive,
-- the goal (no arrival goal while dead) may arrive now.
Own.DIE_RADIUS = 40
function Own.backAlive()
	checkArrival()
	requestUpdate()
end
ns.RegisterEvent("PLAYER_ALIVE", Own.backAlive)
ns.RegisterEvent("PLAYER_UNGHOST", Own.backAlive)

---------------------------------------------------------------------------
-- Evaluation
---------------------------------------------------------------------------

sigParts = {}

function signature()
	local n = 0
	if current then
		-- A gate opening (level-up, turn-in) or arriving in another race's
		-- starting zone changes the view, not the step.
		n = n + 1
		sigParts[n] = Own.startGate(guide) and "gated" or Own.awayStart(guide) and "away" or "open"
		local goals = guide.steps[current].goals
		for g = 1, #goals do
			local goal = goals[g]
			local status, cur, max = goalStatus(current, g, goal, true)
			n = n + 1
			sigParts[n] = status
			n = n + 1
			sigParts[n] = cur and (cur .. "/" .. (max or "")) or "-"
			if goal.candidates then
				local c = chosen(goal)
				n = n + 1
				sigParts[n] = c and (tostring(c.npc) .. "@" .. c.map .. ":" .. c.x .. "," .. c.y) or "none"
			elseif goal.spots and Spots.chosen[goal] then
				-- The chosen spawn area moves the goal's position in the view.
				n = n + 1
				sigParts[n] = "spot" .. (Spots.index(goal) or 0)
			elseif goal.t == "accept" and goal.quest then
				-- Its line's notice (not in the log, not listed by its giver).
				n = n + 1
				sigParts[n] = Own.acceptNotice(current, g, goal, status) and "notice" or "-"
			end
		end
		local _, focus = stepGroups(current)
		n = n + 1
		sigParts[n] = "focus" .. tostring(focus)
		-- The along goals listed under the step (Engine.GetAlong): their progress updates the view.
		for _, s in ipairs(Own.marksOf().along) do
			if Own.alongListed(s) then
				for g, goal in ipairs(guide.steps[s].goals) do
					local status, cur, max = goalStatus(s, g, goal, true)
					n = n + 1
					sigParts[n] = "a" .. s .. ":" .. g .. ":" .. status .. ":" .. (cur and (cur .. "/" .. (max or "")) or "-")
				end
			end
		end
		-- The pinned quests' (Own.pinGoals): which lines are open, and their counts.
		for _, q in ipairs(Own.pinList()) do
			for _, e in ipairs(Own.pinGoals(q)) do
				local status, cur, max = goalStatus(e[1], e[2], e[3], true)
				n = n + 1
				sigParts[n] = "p" .. e[1] .. ":" .. e[2] .. ":" .. status .. ":" .. (cur and (cur .. "/" .. (max or "")) or "-")
			end
		end
	end
	for i = #sigParts, n + 1, -1 do sigParts[i] = nil end
	return table.concat(sigParts, ",")
end

-- An NPC interaction while a step is current checks off its talk/train/
-- vendor goals (sethome: binding); while the player looks at another step,
-- the live step's too. Stored with the manual check-offs, so the result
-- survives the step moving on and a reload. Only that NPC counts: a goal
-- with candidates for one of them (a class trainer's for the character's
-- class), one naming its NPC for that NPC, `train class` for a trainer of
-- the character's class; profession trains complete from the skill's max
-- rank instead. A window still open when the step changes counts for nothing
-- in the new step: only what opens, or what the player does, while it is
-- current (Fitz: "clear signals from the game"). Returns true if anything
-- changed.
function latch(kind, npc)
	if not (guide and current and player) then return false end
	local hit = false
	-- Pass 3: the end of a leveling guide ahead of the live step
	-- (Own.endLast), at the NPC its goal names only.
	for pass = 1, 3 do
		local s = pass == 1 and current or pass == 2 and computed or Own.endLast()
		if s and (pass == 1 or s ~= current) and (pass ~= 3 or s ~= computed) then
			local goals = guide.steps[s].goals
			for g = 1, #goals do
				local goal = goals[g]
				local ok = goal.t == kind and goalApplies(goal) and (pass ~= 3 or goal.npc ~= nil)
				if ok then
					if kind == "talk" then
						ok = goal.npc == npc
					elseif kind == "sethome" then
						-- `sethome nearest` on any bind; a located one at its inn's
						-- innkeeper (Engine.IsSethomeInnkeeper).
						ok = not goal.location or Engine.IsSethomeInnkeeper(goal, npc)
					elseif kind == "train" and isProfessionTrain(goal) then
						ok = false
					elseif goal.candidates then
						ok = npc ~= nil and isCandidate(goal, npc)
					elseif goal.npc then
						ok = goal.npc == npc
					elseif kind == "train" and goal.class then
						ok = Engine.IsClassTrainer(npc)
					end
				end
				if ok then
					local m = manualFor(guide.id, true)
					local key = s .. ":" .. g
					if not m[key] then
						m[key] = true
						hit = true
					end
				end
			end
		end
	end
	return hit
end

-- A hand-in the client never flags completed (a repeatable quest, and every
-- `turnin ... direct` is one in practice) is stored like the latches above, so
-- it stays done after a /reload. The quest's own goal in the live step, and in
-- the step in view when the player looks elsewhere: one hand-in checks off one
-- goal, so a guide that repeats the same quest keeps its later steps open.
function Own.latchTurnin(questID)
	if not (guide and questID) then return false end
	local hit = false
	for pass = 1, 2 do
		local s = pass == 1 and current or computed
		if s and (pass == 1 or s ~= current) then
			for g, goal in ipairs(guide.steps[s].goals) do
				if goal.t == "turnin" and goal.direct and goal.quest == questID and goalApplies(goal) then
					local m = manualFor(guide.id, true)
					local key = s .. ":" .. g
					if not m[key] then
						m[key] = true
						hit = true
					end
				end
			end
		end
	end
	return hit
end

-- A `cast` goal that is open (in the step the guide is at, the step in view,
-- or an along step listed under them) for spellID: ticked, as the player
-- would tick it. A cast before the goal is open does not count.
function Own.latchCast(spellID)
	if not (guide and spellID) then return false end
	local hit = false
	local function tick(s)
		for g, goal in ipairs(guide.steps[s].goals) do
			if goal.t == "cast" and goal.spell == spellID and goalApplies(goal) then
				local m = manualFor(guide.id, true)
				local key = s .. ":" .. g
				if not m[key] then
					m[key] = true
					hit = true
				end
			end
		end
	end
	if current then tick(current) end
	if computed and computed ~= current then tick(computed) end
	for _, s in ipairs(Own.marksOf().along) do
		if s ~= current and s ~= computed and Own.alongListed(s) then tick(s) end
	end
	return hit
end

lastEval = -math.huge
pendingCompleted = {} -- background tabs' GUIDE_COMPLETED, fired once the active tab is loaded again
pendingChoices = {} -- ROUTE_CHOICE from-guide ids, fired at the end of the evaluation

---------------------------------------------------------------------------
