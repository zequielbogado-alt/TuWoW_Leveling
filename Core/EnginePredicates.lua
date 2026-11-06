-- Engine step/goal predicates, manual/skip flags, candidates, and spawn spots
-- Modular part of ns.Engine (< 1000 lines).

local ADDON, ns = ...
setfenv(1, ns.Engine._env)

function manualFor(id, create)
	local all = ns.CharState().manual
	local m = all[id]
	if not m and create then
		m = {}
		all[id] = m
	end
	return m
end

function skippedFor(id, create)
	local all = ns.CharState().skipped
	local s = all[id]
	if not s and create then
		s = {}
		all[id] = s
	end
	return s
end

function isSkipped(s)
	local sk = skippedFor(guide.id)
	return sk and sk[s] and true or false
end

-- `along` steps (format 4; docs/GUIDE_FORMAT.md, "Along the way"): the route
-- passes over them (stepDone), and while the live step is past one, its open
-- goals are listed under it (Engine.GetAlong) until they are done or, with
-- `along = "<label>"`, until the live step reaches the step so labelled.
-- Per guide: { labels = { name -> step }, along = { step, ... } }.
Own.marks = setmetatable({}, { __mode = "k" })
function Own.marksOf()
	local m = Own.marks[guide]
	if not m then
		m = { labels = {}, along = {} }
		for s, st in ipairs(guide.steps) do
			if type(st.label) == "string" then m.labels[st.label] = s end
			if st.along then m.along[#m.along + 1] = s end
		end
		Own.marks[guide] = m
	end
	return m
end

-- Step s is an along step behind the live step whose goals are listed: it
-- applies, the player did not skip it, and the live step has not reached the
-- step its `along` names.
function Own.alongListed(s)
	local live = computed
	if not (guide and live) or type(s) ~= "number" or s >= live then return false end
	local step = guide.steps[s]
	if not (step and step.along) or isSkipped(s) or not stepApplies(step) then return false end
	if step.along ~= true then
		local stop = Own.marksOf().labels[step.along]
		if stop and live >= stop then return false end
	end
	return true
end

-- The listed along step holding `goal`, and its index there, or nil.
function Own.alongOf(goal)
	if not (guide and goal) then return nil end
	for _, s in ipairs(Own.marksOf().along) do
		if Own.alongListed(s) then
			for g, other in ipairs(guide.steps[s].goals) do
				if other == goal then return s, g end
			end
		end
	end
	-- A pinned quest's (Own.pinGoals).
	if goal.quest and ns.CharState().pinnedQuests[goal.quest] then
		for _, e in ipairs(Own.pinGoals(goal.quest)) do
			if e[3] == goal then return e[1], e[2] end
		end
	end
	return nil
end

-- An optional goal the player skipped: CharState().skipped[guideId]["s:g"]
-- (next to the step skips, which use the step number).
function Own.goalSkipped(s, g)
	local sk = ns.CharState().skipped[guide.id]
	return sk ~= nil and sk[Own.key(s, g)] and true or false
end

-- Prerequisites during play. An accept is unavailable before any visit
-- (unavailableFor, reason "pre") while it lacks a prerequisite the route no
-- longer brings: one of `preAll`, or of `pre` when none of those is done,
-- that is not done and that this guide does not still turn in (Own.coming).
-- A missing prerequisite the guide still turns in, before the accept or
-- (against lint's order) after it, is the route's own business or a gap in
-- the data: the accept keeps its place and its giver's window has the last
-- word. So is one this guide has only for other characters (Own.coming).
-- Returns the prerequisite that blocks, or nil.
function Own.preBlocked(a, depth)
	if not (guide and missingPre(a)) then return nil end
	if type(a.preAll) == "table" then
		for _, p in ipairs(a.preAll) do
			if not questDone(p) and not Own.coming(p, depth) then return p end
		end
	end
	local any = a.pre
	if type(any) == "table" and #any > 0 then
		for _, p in ipairs(any) do
			if questDone(p) or Own.coming(p, depth) then return nil end
		end
		return any[1]
	end
	return nil
end

-- Whether quest p is no missing prerequisite this guide can tell of: the
-- guide still turns it in (a turn-in of it, not optional, that applies to
-- the character, in a step the player has not skipped, not skipped or
-- ticked itself, and not unavailable down the chain of prerequisites), or
-- every goal of p in the guide is for other characters (`only`): another
-- race's or class's version of the chain, whose own the data does not list
-- (Emphasis on Sacrifice names the Human Lord Grayson Shadowbreaker, 7638,
-- not the Dwarf's 7670).
function Own.coming(p, depth)
	local state = ns.CharState()
	local skipped, manual = state.skipped[guide.id], state.manual[guide.id]
	local l = layoutOf(guide)
	local turnins, mine = l.turnins[p] or NONE, false
	for _, t in ipairs(turnins) do
		local tg = t.goal
		if stepApplies(t.step) and Guides.Matches(tg.only, player) then
			mine = true
			if not tg.optional and goalApplies(tg)
				and not (skipped and (skipped[t.s] or skipped[t.key])) and not (manual and manual[t.key])
				and not unavailableFor(tg, (depth or 0) + 1) then
				return true
			end
		end
	end
	if mine then return false end
	local accepts = l.accepts[p] or NONE
	for _, t in ipairs(accepts) do
		if stepApplies(t.step) and Guides.Matches(t.goal.only, player) then return false end
	end
	return #turnins + #accepts > 0
end

-- "s:g", built once per step and goal: check-offs and goal skips are looked
-- up for every goal on every evaluation.
Own.keys = {}
function Own.key(s, g)
	local row = Own.keys[s]
	if not row then
		row = {}
		Own.keys[s] = row
	end
	local k = row[g]
	if not k then
		k = s .. ":" .. g
		row[g] = k
	end
	return k
end

-- A Class guide this character cannot start yet: nothing of it played (no
-- step skipped, no goal ticked, none of its quests taken or done) and its
-- opening, the first step for this character with an accept or a `level`
-- goal, waits on them: a `level` goal above their level, or accepts none of
-- which they can take yet (level first, then a missing prerequisite). Such a
-- guide shows a notice instead of its steps, points nowhere and marks
-- nothing unavailable, and starts by itself once the gate opens (level-up,
-- turn-in). { step, level } or { step, pre, preTitles }, with the opening's
-- first accept as `giver`; else nil. Cached per evaluation.
Own.gateCache = setmetatable({}, { __mode = "k" })
function Own.startGate(g)
	if not (g and g.category == "Class" and player) then return nil end
	local level = player.level or 1
	local c = Own.gateCache[g]
	if c and c.gen == generation and c.level == level then return c.gate or nil end
	local gate = Own.findGate(g, level)
	Own.gateCache[g] = { gen = generation, level = level, gate = gate or false }
	return gate
end

-- Nothing of guide g played: no step skipped, no goal ticked, none of its
-- quests taken or done.
function Own.untouched(g)
	local s = ns.CharState()
	local sk, ticks = s.skipped[g.id], s.manual[g.id]
	if (type(sk) == "table" and next(sk)) or (type(ticks) == "table" and next(ticks)) then return false end
	local C = Compat()
	for _, step in ipairs(g.steps) do
		for _, goal in ipairs(step.goals) do
			local q = goal.quest
			if q and (C.IsOnQuest(q) or questDone(q)) then return false end
		end
	end
	return true
end

-- Another race's starting zone on the character's side (Guides.OtherStart),
-- per guide for the character's race and class.
Own.otherCache = setmetatable({}, { __mode = "k" })
function Own.otherStart(g)
	if not (g and player) then return false end
	local c = Own.otherCache[g]
	if not (c and c.race == player.race and c.class == player.class) then
		c = { race = player.race, class = player.class, v = Guides.OtherStart(g, player) }
		Own.otherCache[g] = c
	end
	return c.v
end

-- Such a guide the character has not reached: Polestar does not guide them
-- there (Fitz, 2026-10-30). While none of it is played (Own.untouched) and
-- the player is outside its zone, the guide window shows a notice instead of
-- its live step (Engine.AwayStart) and the arrow points nowhere; arriving
-- lifts it, and once a quest of it is taken it does not come back. Cached
-- per evaluation.
Own.awayCache = setmetatable({}, { __mode = "k" })
function Own.awayStart(g)
	if not (Own.otherStart(g) and type(g.zone) == "number") then return false end
	local c = Own.awayCache[g]
	if c and c.gen == generation then return c.v end
	local v = Compat().GetPlayerMapPosition() ~= g.zone and Own.untouched(g)
	Own.awayCache[g] = { gen = generation, v = v }
	return v
end

-- In such a guide, a quest the character can never take (the quest
-- database's race, class or faction: the Human class letters for a Night Elf
-- Warrior in Elwynn, Tauren-only Mulgore quests for a Troll) is not theirs,
-- like another class's goals. Without the quest database those goals stay.
Own.questCtx = {}
function Own.barred(goal)
	local q = goal.quest
	if not (q and guide and Own.otherStart(guide)) then return false end
	local Q = ns.QuestDB
	local r = Q and Q.IsLoaded() and Q.QuestRecord(q)
	if not r then return false end
	return not Q.IsEligible(r, Q.PlayerContext(player, Own.questCtx))
end

function Own.findGate(g, level)
	if not Own.untouched(g) then return nil end
	local C = Compat()
	for i, step in ipairs(g.steps) do
		if Guides.Matches(step.only, player) then
			local opening, need, doable, acceptLevel, pre, giver = false, 0, false, nil, nil, nil
			for _, goal in ipairs(step.goals) do
				if Guides.Matches(goal.only, player) then
					if goal.t == "level" then
						opening = true
						if (goal.level or 0) > need then need = goal.level end
					elseif goal.t == "accept" then
						opening = true
						giver = giver or goal
						local lvl = tonumber(goal.minLevel)
						if lvl and level < lvl then
							if not acceptLevel or lvl < acceptLevel then acceptLevel = lvl end
						else
							local p = missingPre(goal)
							if p then
								pre = pre or { quest = p, titles = goal.preTitles }
							else
								local closed = false
								for _, by in ipairs(type(goal.closedBy) == "table" and goal.closedBy or NONE) do
									if C.IsOnQuest(by) or questDone(by) then closed = true end
								end
								if not closed then doable = true end
							end
						end
					end
				end
			end
			if opening then
				if not doable and acceptLevel and acceptLevel > need then need = acceptLevel end
				if need > level then return { step = i, level = need, giver = giver } end
				if not doable and pre then return { step = i, pre = pre.quest, preTitles = pre.titles, giver = giver } end
				return nil
			end
		end
	end
	return nil
end

MANUAL = { talk = true, hearth = true, getfp = true, fly = true, train = true, vendor = true, task = true }

-- Whether the client can answer for a feature (Compat.Supports); a missing
-- API turns the goal into a manual check-off instead of a dead end.
function supports(feature)
	local fn = Compat().Supports
	return fn and fn(feature) or false
end

-- How a craft goal is tracked: "skill" (untilSkill on a known skill line),
-- "count" (created item in bags) or "manual".
function craftMode(goal)
	if goal.untilSkill and (goal.skillLine or goal.skill) and supports("skill") then return "skill" end
	if goal.item then return "count" end
	return "manual"
end

-- Profession `train` goals: skill line plus the rank to reach (1 Apprentice
-- .. 4 Artisan, a rank name, or the cap itself).
RANK_CAPS = { 75, 150, 225, 300 }
RANK_NAMES = { apprentice = 1, journeyman = 2, expert = 3, artisan = 4 }
function rankCap(goal)
	local r = goal.rank
	if type(r) == "string" then r = RANK_NAMES[r:lower()] or tonumber(r) end
	if type(r) ~= "number" then return nil end
	if r <= 4 then return RANK_CAPS[r] end
	return r
end

function isProfessionTrain(goal)
	return goal.t == "train" and (goal.skillLine or goal.skill) and rankCap(goal) and supports("skill")
end

function isManual(goal)
	local t = goal.t
	if t == "train" and isProfessionTrain(goal) then return false end
	if MANUAL[t] then return true end
	if (t == "kill" or t == "interact" or t == "use") and not goal.quest then return true end
	if t == "skill" then return not supports("skill") end
	if t == "learn" then return not supports("spell") end
	if t == "rep" then return not supports("faction") end
	if t == "achieve" then return not supports("achievement") end
	if t == "craft" then return craftMode(goal) == "manual" end
	return false
end

---------------------------------------------------------------------------
-- Candidate goals: `candidates` lists every NPC that would do; the Engine
-- keeps those the character may use and picks the cheapest to reach. Picks
-- are redone on step start, zone change and landing (contextGen), never per
-- frame; CycleCandidate moves to the next-best.
---------------------------------------------------------------------------

contextGen = 0
picks = setmetatable({}, { __mode = "k" }) -- goal -> { list = { candidate, ... }, i, gen }

-- Ranking: candidates on the player's continent always come before others,
-- even when frames are missing and travel cannot be measured; candidates in a
-- zone far above the character (ZoneLevels) come after both. Within a
-- tier: travel cost. Only the PLANNED nearest by straight line get the travel
-- planner's estimate (a set can hold one vendor per town in the world); the
-- rest count their straight-line running time. An unplaceable candidate counts
-- as right here when it is on the player's own map, else after every placed one.
UNMEASURED = 1e9
PLANNED = 8
RUN_SPEED = 7 -- yards per second, unmounted
-- Farm spots (`collect … nearest`): seconds to farm the items still missing
-- there, and how many levels the spot's weakest mobs are above the player
-- (3 or more: too high).
TOO_HIGH = 3
function farmSeconds(goal, c)
	local level = player.level or 1
	local lo, hi = level, level
	if type(c.lvl) == "table" then lo, hi = c.lvl[1] or c.lvl.min or level, c.lvl[2] or c.lvl.max or level end
	local gap = lo - level
	local mob = math.floor((lo + hi) / 2 + 0.5)
	local diff = mob - level
	local kpm
	if Compat().IsQuestTrivial(mob, level) then
		kpm = 2.5 -- grey
	elseif diff >= 1 then
		kpm = 1.0
	elseif diff >= -4 then
		kpm = 1.5
	else
		kpm = 2.0 -- green, not yet grey
	end
	kpm = kpm * math.min(1, (tonumber(c.spawns) or 8) / 8)
	local need = (goal.count or 1) - (goal.item and Compat().GetItemCount(goal.item) or 0)
	if need < 1 then need = 1 end
	local rate = tonumber(c.rate) or 1
	if rate <= 0 or kpm <= 0 then return UNMEASURED, gap end
	return need / (rate * kpm) * 60, gap
end

function pickFor(goal)
	local p = picks[goal]
	if p and p.gen == contextGen then return p end
	local C = Compat()
	local here = ns.PlayerPoint()
	local hereCont = here and C.GetContinentMap and C.GetContinentMap(here.map)
	local hc, hx, hy
	if here then hc, hx, hy = C.MapToWorld(here.map, here.x, here.y, here.f) end
	local farm = goal.t == "collect" and not goal.quest
	local zoneLevels = ns.Maps and ns.Maps.GetZoneLevels
	local list, tier, cost, extra, order, gap = {}, {}, {}, {}, {}, {}
	local reasonable = false
	for i, c in ipairs(goal.candidates) do
		if Guides.CandidateMatches(c, player) then
			list[#list + 1] = c
			order[c] = i * 1e-6 -- stable among equals
			if farm then
				extra[c], gap[c] = farmSeconds(goal, c)
				if gap[c] < TOO_HIGH then reasonable = true end
			else
				extra[c], gap[c] = 0, 0
			end
			local cc, cx, cy = C.MapToWorld(c.map, c.x, c.y, c.f)
			local line = hc and cc == hc and ((cx - hx) ^ 2 + (cy - hy) ^ 2) ^ 0.5 / RUN_SPEED or nil
			local cont = C.GetContinentMap and C.GetContinentMap(c.map)
			local same
			if hereCont and cont then
				same = hereCont == cont
			else
				same = line ~= nil
			end
			tier[c] = same and 0 or 1
			-- A zone whose mobs start more than 10 levels above the character
			-- (Mount Hyjal's vendors seen from Darkshore at 18) comes after
			-- every other choice, other continents included.
			local zoneMin = not farm and zoneLevels and zoneLevels(c.map)
			if zoneMin and zoneMin > (player.level or 1) + 10 then tier[c] = tier[c] + 2 end
			cost[c] = line or ((here and c.map == here.map) and 0 or UNMEASURED)
		end
	end
	-- Farm spots whose mobs are too high go, unless nothing else is left:
	-- then the smallest level gap first.
	if farm and reasonable then
		local kept = {}
		for _, c in ipairs(list) do
			if gap[c] < TOO_HIGH then kept[#kept + 1] = c end
		end
		list = kept
	end
	local function better(a, b)
		if tier[a] ~= tier[b] then return tier[a] < tier[b] end
		if not reasonable and gap[a] ~= gap[b] then return gap[a] < gap[b] end
		return cost[a] + extra[a] + order[a] < cost[b] + extra[b] + order[b]
	end
	table.sort(list, better)
	if here then
		for k = 1, math.min(PLANNED, #list) do
			local c = list[k]
			local s = ns.TravelCost(here, c)
			if s then cost[c] = s end
		end
		table.sort(list, better)
	end
	p = { list = list, i = #list > 0 and 1 or 0, gen = contextGen, tier = tier }
	picks[goal] = p
	return p
end

-- The chosen candidate of a goal, or nil (no candidates, or none usable).
function chosen(goal)
	if not goal.candidates then return nil end
	local p = pickFor(goal)
	return p.list[p.i]
end

-- The NPC a goal is done with (the chosen candidate's, if any), named in
-- the client's language where Polestar.Names has it.
function npcOf(goal)
	local c = chosen(goal)
	local npc, name
	if c then npc, name = c.npc, c.npcName else npc, name = goal.npc, goal.npcName end
	return npc, name and (ns.Names.Npc(npc) or name)
end

---------------------------------------------------------------------------
-- Spawn areas: `spots` on a goal are the places its target (mobs, objects,
-- an NPC) spawns ({ x, y, r, n, alt } in the goal's map and frame, r in
-- yards). Distances are to an area's edge (0 inside). Re-picked by the
-- arrival poll while the waypoint's goal has spots. One table (Lua 5.1 caps
-- a chunk at 200 locals).
--
-- Camps: the spot nearest the player; another takes over only once it is
-- Spots.SWITCH yards nearer, so standing between two camps never flaps.
-- Area objectives (`spread`): the player searches spot by spot. A spot is
-- visited once the player has been within its arrival radius; the current
-- spot stays while the player is within LEAVE yards of it, then the nearest
-- spot not visited for FORGET seconds takes over (all visited: the one
-- visited longest ago), so a circuit forms. CycleSpot moves on by hand (or
-- to a given spot); a spot picked that way holds until reached.
-- Alternatives (`alt`): other places the target spawns. The automatic picks
-- above never choose one; moving on by hand walks them too, so every place
-- is reachable, and one picked that way holds like any other current spot.
---------------------------------------------------------------------------

Spots = {
	SWITCH = 40, -- yards
	LEAVE = 4, -- yards past the arrival radius
	FORGET = 300, -- seconds a visited spot is skipped
	chosen = setmetatable({}, { __mode = "k" }), -- goal -> chosen spot
	pinned = setmetatable({}, { __mode = "k" }), -- goal -> spot picked by hand, until reached
	seen = setmetatable({}, { __mode = "k" }), -- spot -> GetTime() of the last visit
	world = setmetatable({}, { __mode = "k" }), -- spot -> { c, wx, wy } | false
}

-- Yards from the player to a spot's edge (0 inside), nil on another continent.
function Spots.edge(goal, s, c, px, py)
	local w = Spots.world[s]
	if w == nil then
		local sc, wx, wy = Compat().MapToWorld(goal.map, s.x, s.y, goal.f)
		w = sc and { sc, wx, wy } or false
		Spots.world[s] = w
	end
	if not (w and w[1] == c) then return nil end
	local d = ((w[2] - px) ^ 2 + (w[3] - py) ^ 2) ^ 0.5 - (s.r or 0)
	return d > 0 and d or 0
end

-- Re-pick a goal's spot from the player's world position (c nil: unknown).
-- moveOn: leave the current spot (CycleSpot marked it visited first); spots
-- visited lately are then skipped for camps too, so cycling walks them all.
-- True if the spot changed.
function Spots.repick(goal, c, px, py, moveOn)
	local now, spread, reach = GetTime(), goal.spread, goal.r or DEFAULT_RADIUS
	local spots = goal.spots
	local cur = Spots.chosen[goal]
	if cur and not c and not moveOn then return false end
	local curD = cur and c and Spots.edge(goal, cur, c, px, py)
	-- On another continent nothing is measurable: the spot holds (ranking by
	-- list order alone would walk to the next spot at every poll).
	if cur and not curD and not moveOn then return false end
	if c and spread then
		for _, s in ipairs(spots) do
			local d = Spots.edge(goal, s, c, px, py)
			if d and d <= reach then Spots.seen[s] = now end
		end
	end
	if not moveOn and cur then
		if Spots.pinned[goal] == cur then
			if not (curD and curD <= reach) then return false end
			Spots.pinned[goal] = nil
		end
		if spread and curD and curD <= reach + Spots.LEAVE then return false end
	end
	-- Not visited lately; the spot the player stands in counts as fresh too
	-- (search it now), unless moving on.
	local function fresh(s)
		local t = (spread or moveOn) and Spots.seen[s]
		if not t or now - t > Spots.FORGET then return true end
		if moveOn or not c then return false end
		local d = Spots.edge(goal, s, c, px, py)
		return d ~= nil and d <= reach
	end
	-- Nearest fresh spot (unknown distances rank after known ones, in order
	-- from the current spot); with none fresh, the one visited longest ago.
	local at = 0
	for i, s in ipairs(spots) do
		if s == cur then at = i end
	end
	local best, bestKey, old, oldT
	for i, s in ipairs(spots) do
		if not (moveOn and s == cur) and (moveOn or not s.alt) then
			if fresh(s) then
				local d = c and Spots.edge(goal, s, c, px, py)
				local key = d or (1e9 + (i - at - 1) % #spots)
				if not bestKey or key < bestKey then best, bestKey = s, key end
			elseif not oldT or Spots.seen[s] < oldT then
				old, oldT = s, Spots.seen[s]
			end
		end
	end
	best = best or old
	local new = cur
	if best and (moveOn or not cur or not fresh(cur) or not curD or bestKey < curD - Spots.SWITCH) then new = best end
	new = new or spots[1]
	if new == cur then return false end
	Spots.chosen[goal] = new
	return true
end

-- The goal's spot, picked from where the player stands on first use.
function Spots.get(goal)
	if not Spots.chosen[goal] then Spots.repick(goal, Compat().GetPlayerWorldPosition()) end
	return Spots.chosen[goal]
end

-- Position of the goal's spot in goal.spots.
function Spots.index(goal)
	local s = Spots.get(goal)
	for i, t in ipairs(goal.spots) do
		if t == s then return i end
	end
end

-- The active tab's waypoint goal when it has spots, else nil.
function Spots.waypointGoal()
	if not (waypoint and guide and current and waypoint.stepIndex == current) then return nil end
	local goal = guide.steps[current].goals[waypoint.goalIndex]
	return goal and goal.spots and goal or nil
end

-- map, x, y, f of the goal (the chosen candidate's when it has candidates,
-- the chosen spawn area's when it has spots), then that area's radius in
-- yards, then the height `z` there (the compiler's, from the spawn of the
-- NPC or object it stands for): the candidate's or spawn area's own, else the
-- goal's while the position is the goal's own point.
function posOf(goal)
	local c = chosen(goal)
	if c then return c.map, c.x, c.y, c.f, nil, c.z end
	local s = goal.spots and Spots.get(goal)
	if s then return goal.map, s.x, s.y, goal.f, s.r, s.z or (s.x == goal.x and s.y == goal.y and goal.z) or nil end
	return goal.map, goal.x, goal.y, goal.f, nil, goal.z
end

-- One of the goal's candidates, and, for a candidate that names the classes
-- it serves (class trainers), one for the character's class.
function isCandidate(goal, npc)
	for _, c in ipairs(goal.candidates) do
		if c.npc == npc then
			if type(c.classes) ~= "table" or not player then return true end
			for _, cls in ipairs(c.classes) do
				if cls == player.class then return true end
			end
		end
	end
	return false
end

-- Whether `npc` is an innkeeper a `sethome` goal binds at: a located goal's
-- inn's (goal.npc, else the innkeeper of the inn its location names, in
-- Nav/Travel.lua's data); `sethome nearest`, one of its candidates. The
-- latch below and QoL's bind helper both ask this.
function Engine.IsSethomeInnkeeper(goal, npc)
	if not (npc and type(goal) == "table" and goal.t == "sethome") then return false end
	if not goal.location then return goal.candidates ~= nil and isCandidate(goal, npc) end
	local nav = ns.Nav
	local inn = nav and nav.FindInn and nav.FindInn(goal.npc, goal.location)
	return npc == (inn and inn.npc or goal.npc)
end

-- Goals whose live condition can stop holding after the step is passed
-- (leaving the zone, rebinding, selling the items, walking away). Their done
-- state is stored once the route moves past them, so the guide never jumps
-- back; quest goals stay live on purpose (abandoning reopens the step once
-- the player says to go back for it: Own.holdLost), but an `abandon` is
-- kept, or taking the quest again would reopen it.
function latchable(goal)
	local t = goal.t
	return t == "goto" or t == "explore" or t == "die" or t == "sethome" or t == "hearth" or t == "fly" or t == "getfp" or t == "enter"
		or t == "buy" or (t == "collect" and (not goal.quest or Own.bagCollect(goal))) or (t == "craft" and craftMode(goal) == "count")
		or (t == "train" and goal.class == true) or t == "money" or t == "destroy" or t == "wait" or t == "abandon"
end

-- Check-offs and latched results share CharState().manual[guideId]["s:g"].
function checked(s, g)
	local m = ns.CharState().manual[guide.id]
	return m ~= nil and m[Own.key(s, g)] and true or false
end

-- The client's word for a standing (ns.StandingName), else its number.
function standingName(n)
	return ns.StandingName(n) or tostring(n)
end

-- A skill goal's profession or skill in the client's language: the client's
-- skill-line name (by goal.skillLine, or the line of its English name), else
-- its English name through L (a Lookup.PROFESSIONS key, or "Riding"), or
-- "first aid" -> "First Aid" for goals that only carry a skill line ID.
skillNames = nil
function skillName(goal)
	local C = Compat()
	local line = goal.skillLine or (goal.skill and C.SKILL_LINES and C.SKILL_LINES[goal.skill:lower()])
	local client = line and C.GetSkillLineName and C.GetSkillLineName(line)
	if client then return client end
	if goal.skill then return L[goal.skill] end
	if not skillNames then
		skillNames = {}
		for name, id in pairs(C.SKILL_LINES or {}) do
			skillNames[id] = name:gsub("(%a)(%w*)", function(a, b) return a:upper() .. b end)
		end
	end
	local name = goal.skillLine and skillNames[goal.skillLine]
	return name and L[name] or nil
end

function skillRank(goal)
	local C = Compat()
	if not C.GetSkillRank then return nil end
	local rank = goal.skillLine and C.GetSkillRank(goal.skillLine)
	if not rank and goal.skill then rank = C.GetSkillRank(goal.skill) end
	return rank
end

-- Live-frame percent of an explore goal (Era coordinates converted once).
livePos = setmetatable({}, { __mode = "k" })
function liveXY(goal)
	if not goal.f then return goal.x, goal.y end
	local p = livePos[goal]
	if p == nil then
		p = false
		local C = Compat()
		local c, wx, wy = C.MapToWorld(goal.map, goal.x, goal.y, goal.f)
		if c then
			local x, y = C.WorldToMap(c, wx, wy, goal.map)
			if x then p = { x, y } end
		end
		livePos[goal] = p
	end
	if not p then return nil end
	return p[1], p[2]
end

---------------------------------------------------------------------------
