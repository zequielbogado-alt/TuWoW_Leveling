local ADDON, ns = ...
setfenv(1, ns._walkEnv)
-- The planner's walks into the target (Travel.lua: p.walkCost, p.places)
--
-- One Path.FindMany per target, from the target to the places a walk to it
-- can start from, reversed so each cost is the walk from that place to the
-- target (after Shortest Path Forever's goal batch, Journey/JourneySearch.lua).
-- Travel prices those walks by these running yards instead of straight x1.25.
--   Places: those on the target's continent within MEASURE_YARDS of it, the
--     nearest MEASURE_MAX, the player among them. Farther ones keep their
--     straight estimate. With no place but the player nothing is measured (a
--     lone walk is the arrow's own search, above).
--   No walk found (false: a flight master on a tower the engine cannot snap
--     from, Thunder Bluff's), a failed batch, or none found at all (the target
--     snapped off the ground): those keep their straight estimate.
--   The player's measure holds within START_NEAR yards of where it was taken;
--     farther, the player's walk is measured again with the next plan (once
--     per replan), and until it lands it is that measure less the yards
--     moved, never less than the straight distance (x1.0: a walk is never
--     priced dearer for having come closer).
--   Fixed per target and kept for the last MEASURE_KEEP targets, so plans
--     never flip-flop on them: a target is measured again only when its plan
--     has a place the measure lacks (a flight master learned, a new bind, the
--     player come within reach or walked away, above).
--     When a measure lands, Travel.Remeasured plans once more and changes the
--     route only if it goes another way (the same way takes its new prices).
--   The target's height (Nav.GetTargetWorld) goes with the batch, so a walk
--     into an Undercity quarter is measured to that floor; a batch with it
--     that finds nothing is asked once more without it (as Z2).
--   The batch's danger table leaves out the target's zone only: one batch
--     takes one opts for all its places, so a place inside a dangerous zone
--     is priced through its own zone (the walk out of it).
--   One batch at a time; a new target cancels the old one's. None is started
--     in combat (owed until it ends; the engine pauses a running one), with
--     Walk real paths off, or while Shortest Path Forever guides.
---------------------------------------------------------------------------

MEASURE_YARDS = 3000  -- straight yards from the target: places farther keep the estimate
MEASURE_MAX = 16      -- places measured, nearest first
MEASURE_KEEP = 4      -- targets whose measures are kept
START_NEAR = 50       -- yards from where the player's walk was measured: its measure holds

measures = {}         -- finished measures, oldest first
measuring = measuring             -- the measure being taken: { c, x, y, water, pts, si, sx, sy, job }
measureOwed = measureOwed           -- { c, x, y, water, places } put off by combat

function sameTarget(e, c, x, y, water)
	local dx, dy = x - e.x, y - e.y
	return e.c == c and e.water == water and dx * dx + dy * dy <= GOAL_MOVED * GOAL_MOVED
end

function findMeasure(c, x, y, water)
	for i = #measures, 1, -1 do
		if sameTarget(measures[i], c, x, y, water) then return measures[i] end
	end
	return nil
end

function cancelMeasure()
	local e = measuring
	measuring, measureOwed = nil, nil
	if e and e.job then
		local P = Nav.Path
		if P then pcall(P.Cancel, e.job) end
	end
end

function storeMeasure(e)
	for i = #measures, 1, -1 do
		if sameTarget(measures[i], e.c, e.x, e.y, e.water) then table.remove(measures, i) end
	end
	measures[#measures + 1] = e
	if #measures > MEASURE_KEEP then table.remove(measures, 1) end
end

-- The index of the place (x, y) among a measure's points (not the player's), or nil.
function placeIndex(e, x, y)
	local pts = e.pts
	for i = 1, #pts do
		if i ~= e.si and pts[i].x == x and pts[i].y == y then return i end
	end
	return nil
end

-- The walk from (c, wx, wy) to the measure's target (the player's walk when
-- start): its cost (chooses) and its yards (times it; FindMany's job.yards[i],
-- the cost itself from a router without them), or nil for the straight
-- estimate. The player's walk measured more than START_NEAR yards away is
-- that walk's yards less the yards moved, never below the straight distance,
-- its cost scaled alike.
function measuredCost(e, c, wx, wy, start)
	if c ~= e.c then return nil end
	local costs, yards = e.costs, e.yards
	local i
	if start then i = e.si else i = placeIndex(e, wx, wy) end
	local m = i and costs[i]
	if type(m) ~= "number" then return nil end
	local y = yards and yards[i]
	if type(y) ~= "number" then y = m end
	if not start then return m, y end
	local dx, dy = wx - e.sx, wy - e.sy
	local moved = sqrt(dx * dx + dy * dy)
	if moved <= START_NEAR then return m, y end
	dx, dy = e.x - wx, e.y - wy
	local least = sqrt(dx * dx + dy * dy)
	local rate = y > 0 and m / y or 1
	y = y - moved
	if y < least then y = least end
	return y * rate, y
end

-- The target's measured walks for the planner: walkCost(c, wx, wy, start) -> cost, yards | nil, or nil (none).
function Walk.Measured(c, x, y, water)
	if not engine() then return nil end
	local e = findMeasure(c, x, y, water or false)
	return e and e.lookup
end

-- One FindMany for a measure: from the target (at height z, when it has one) to
-- its places, reversed. A batch with the height that finds nothing is asked once
-- more without it.
function batch(P, mine, z)
	local pts, water = mine.pts, mine.water
	local ok, handle = pcall(P.FindMany, mine.c, { x = mine.x, y = mine.y, z = z }, pts, function(costs, _, answer)
		if measuring ~= mine then return end
		mine.job = nil
		costs = type(costs) == "table" and costs or {}
		mine.yards = type(answer) == "table" and type(answer.yards) == "table" and answer.yards or nil
		local found = false
		for i = 1, #pts do
			if type(costs[i]) == "number" then found = true end
		end
		if not found and z then return batch(P, mine, nil) end
		measuring, mine.costs = nil, costs
		-- Kept either way: a target whose measure found nothing is not asked again.
		if found then
			mine.lookup = function(wc, wx, wy, start) return measuredCost(mine, wc, wx, wy, start) end
		end
		storeMeasure(mine)
		local T = Nav.travel
		local tc, tx, ty = Nav.GetTargetWorld()
		if found and tc and T and T.Remeasured and sameTarget(mine, tc, tx, ty, water) then T.Remeasured() end
		pumpLegs()
	end, opts(water, mine.c, nil, nil, mine.x, mine.y, mine.sx, mine.sy), true)
	if not ok then
		if z then return batch(P, mine, nil) end
		measuring = nil
		return
	end
	if measuring == mine then mine.job = handle end
end

-- Measure the walks into the target (c, x, y) from the plan's places (Travel's
-- p.places), unless they are measured or being measured, or c's walking maps
-- may not be searched yet (canSearch: the target is on another continent).
function Walk.Measure(c, x, y, water, places)
	water = water or false
	if measuring and not sameTarget(measuring, c, x, y, water) then cancelMeasure() end
	local P = engine()
	if not (P and P.FindMany) or type(places) ~= "table" or not canSearch(P, c) then return end
	if inCombat() then
		measureOwed = { c = c, x = x, y = y, water = water, places = places }
		return
	end
	measureOwed = nil
	if measuring then return end
	-- The nearest places within MEASURE_YARDS, nearest first.
	local pick, far = {}, {}
	local reach = MEASURE_YARDS * MEASURE_YARDS
	local others = false
	for _, p in ipairs(places) do
		local dx, dy = p.wx - x, p.wy - y
		local d = dx * dx + dy * dy
		if d <= reach then
			local at = #pick + 1
			while at > 1 and far[at - 1] > d do
				pick[at], far[at] = pick[at - 1], far[at - 1]
				at = at - 1
			end
			pick[at], far[at] = p, d
			if #pick > MEASURE_MAX then pick[#pick], far[#far] = nil, nil end
		end
	end
	for _, p in ipairs(pick) do
		if not p.start then others = true end
	end
	if not others then return end
	local e = findMeasure(c, x, y, water)
	if e then
		local missing = false
		for _, p in ipairs(pick) do
			if p.start then
				-- The player was out of reach, or has walked away from where their walk was measured.
				local dx, dy = p.wx - (e.sx or p.wx), p.wy - (e.sy or p.wy)
				if not e.si or dx * dx + dy * dy > START_NEAR * START_NEAR then missing = true end
			elseif not placeIndex(e, p.wx, p.wy) then
				missing = true
			end
			if missing then break end
		end
		if not missing then return end
	end
	-- The places picked, the player's walk, and those the last measure had.
	local pts, si = {}, nil
	for _, p in ipairs(pick) do
		local z = p.z or (p.start and (startZ(c, p.wx, p.wy))) or nil
		pts[#pts + 1] = { x = p.wx, y = p.wy, z = z, floors = p.start and z == nil and startFloors(c, p.wx, p.wy) or nil }
		if p.start then si = #pts end
	end
	if e then
		for i, p in ipairs(e.pts) do
			if i ~= e.si then
				local seen = false
				for k = 1, #pts do
					if k ~= si and pts[k].x == p.x and pts[k].y == p.y then seen = true end
				end
				if not seen then pts[#pts + 1] = p end
			end
		end
	end
	local mine = { c = c, x = x, y = y, water = water, pts = pts, si = si, sx = si and pts[si].x, sy = si and pts[si].y }
	measuring = mine
	batch(P, mine, targetZ(c, x, y))
end

---------------------------------------------------------------------------
-- Every later walk's own path (Travel.PricePaths, the route lines)
--
-- As soon as the route is planned, each later walk leg's abstract route
-- (Path.FindCoarse: its border crossings, in milliseconds) is asked for, one
-- at a time and whatever else runs, so the route lines follow the ground at
-- once. Once the plan has settled (no measure being taken) and the arrow's
-- own search for the walk it is on is in (or there is none: a flight, a
-- ride, a hand-made walk), each one is searched with Path.Find, one at a
-- time; the path replaces the abstract route (which prices nothing) and is
-- kept by its ends and water mode (the last LEG_KEEP), so the route lines
-- and the journey draw it along the ground and price it by its path. A walk
-- with neither is drawn straight and keeps its estimate; a failed search is
-- kept too, and its leg stays straight. The last walk goes with the target's
-- height (once more without it, as Z2). Hand-made walks along an approach
-- chain, the pieces of a split walk and the last walk to a target after a
-- guide `goto` (the arrow goes straight from the mouth) are never searched;
-- a crossing, walked straight by the arrow, is searched for its line, which
-- keeps the data's straight one when the path is more than CROSS_DETOUR
-- times as long, and is never priced by it. A search whose leg leaves the
-- route is cancelled; none starts in combat, with Walk real paths off, or
-- while Shortest Path Forever guides.
---------------------------------------------------------------------------

LEG_KEEP = 32
CROSS_DETOUR = 2
-- [ends] = { xs, ys, n, yards, hubs, coarse (the abstract route: n 0 when it found none) } | false (no path); keys oldest first
legPaths, legOrder = {}, {}
legToken, legJob, legKey = legToken, legJob, legKey    -- the leg search in flight
legsWanted = false          -- a leg search waits for its turn
shapeToken, shapeJob, shapeKey = shapeToken, shapeJob, shapeKey -- the abstract route asked for
shapesOwed = false          -- abstract routes wait for the engine to load

function ghostNow()
	local T = Nav.travel
	return T and T.IsGhost and T.IsGhost() or false
end

function legKeyOf(from, to, ghost)
	return from.c .. ":" .. from.wx .. ":" .. from.wy .. ":" .. to.wx .. ":" .. to.wy .. (ghost and ":w" or "")
end

function cancelLeg()
	local handle = legJob
	legToken, legJob, legKey = nil, nil, nil
	if handle then
		local P = Nav.Path
		if P then pcall(P.Cancel, handle) end
	end
end

function cancelShape()
	local handle = shapeJob
	shapeToken, shapeJob, shapeKey = nil, nil, nil
	if handle then
		local P = Nav.Path
		if P then pcall(P.Cancel, handle) end
	end
end

function keepLeg(key, e)
	if legPaths[key] == nil then legOrder[#legOrder + 1] = key end
	legPaths[key] = e
	if #legOrder > LEG_KEEP then legPaths[table.remove(legOrder, 1)] = nil end
end

-- The line of the walk from `from` to `to`: its searched path, else its abstract route; or nil.
function legPath(from, to)
	if not (from and to and from.c == to.c and from.wx and to.wx) then return nil end
	local e = legPaths[legKeyOf(from, to, ghostNow())]
	return e and e.n > 1 and e or nil
end

-- The searched path of the walk from `from` to `to`: its yards (Find's
-- job.yards, the drawn line's length, never its cost) and the other faction's
-- towns it enters (job.hubs; nil: none), or nil (an abstract route is none).
function Walk.LegPath(from, to)
	local e = legPath(from, to)
	if not e or e.coarse then return nil end
	return e.yards, e.hubs
end

-- Leg i of the route is the last walk to a target after a guide `goto`: straight.
function afterGoto(legs, i)
	return i == #legs and Walk.FollowsGoto(Nav.GetTarget())
end

-- Leg i is a walk drawn from its own search: not a piece of a split walk,
-- not along an approach chain (a crossing is), on one continent with walking
-- data the router may search now (canSearch), and not the last walk after a
-- guide `goto`.
function searchable(legs, i, P)
	local leg = legs[i]
	return leg.kind == "walk" and (not leg.handmade or leg.crossing ~= nil) and not leg.parent and leg.from.c == leg.to.c
		and canSearch(P, leg.from.c) and not afterGoto(legs, i)
end

-- The first leg drawn from its own search: the one after the arrow's, or the
-- arrow's own when it walks it hand-made (a crossing, straight).
function firstOwn(legs, ci)
	return legs[ci] and legs[ci].handmade and ci or ci + 1
end

-- The arrow's own search for the walk it is on is still to come or running:
-- the current leg is a walk it searches (not hand-made) whose goal (the whole
-- walk's end, for a piece of a split walk) has no answer yet.
function arrowPending(legs, ci)
	local leg = legs[ci]
	if not (leg and leg.kind == "walk") or leg.handmade or afterGoto(legs, ci) then return false end
	local goal = leg.parent or leg.to
	if gc ~= goal.c or not gx then return true end
	local dx, dy = goal.wx - gx, goal.wy - gy
	if dx * dx + dy * dy > GOAL_MOVED * GOAL_MOVED then return true end
	return count == 0 and not failed
end

-- Search one later walk (to at height z, when it has one; from at its own
-- height, a dock's board point on a deck); its answer is kept by key. A
-- search with a height that fails, or that ends off the goal's floor, is
-- asked once more without either (flat).
function searchLeg(P, mine, key, from, to, z, ghost, flat)
	local T = Nav.travel
	local fz = not flat and from.z or nil
	if flat then z = nil end
	local ok, handle = pcall(P.Find, from.c, { x = from.wx, y = from.wy, z = fz }, { x = to.wx, y = to.wy, z = z }, function(points, _, answer)
		if legToken ~= mine then return end
		legJob = nil
		local got = type(points) == "table" and #points > 0
		if (z or fz) and (not got or (z and offFloor(points, z))) then return searchLeg(P, mine, key, from, to, nil, ghost, true) end
		legToken, legKey = nil, nil
		local e = false
		if got then
			local xs, ys, n, yards = line(points)
			if n > 1 then
				local a = type(answer) == "table" and answer or nil
				local h = a and a.hubs
				if a and type(a.yards) == "number" then yards = a.yards end
				e = { xs = xs, ys = ys, n = n, yards = yards, hubs = type(h) == "table" and #h > 0 and h or nil }
			end
		end
		keepLeg(key, e)
		-- Priced: ROUTE_CHANGED redraws; a failure keeps the straight line.
		if not (e and T and T.PricePaths and T.PricePaths()) then changed() end
		pumpLegs()
	end, opts(ghost, from.c, from.wx, from.wy, to.wx, to.wy))
	if not ok then
		if z or fz then return searchLeg(P, mine, key, from, to, nil, ghost, true) end
		legToken, legKey = nil, nil
		keepLeg(key, false)
		return
	end
	if legToken == mine then legJob = handle end
end

pumpLegs = function()
	local P = engine()
	local T = Nav.travel
	local legs, ci = Nav.GetRoute()
	if not (P and legs and ci and T and T.Active and T.Active()) then
		cancelLeg()
		legsWanted = false
		return
	end
	local ghost = ghostNow()
	local nextLeg, nextKey, nextAt, kept = nil, nil, nil, false
	for i = firstOwn(legs, ci), #legs do
		local leg = legs[i]
		if searchable(legs, i, P) then
			local key = legKeyOf(leg.from, leg.to, ghost)
			local e = legPaths[key]
			if key == legKey then
				kept = true
			elseif (e == nil or (e and e.coarse)) and not nextLeg then
				nextLeg, nextKey, nextAt = leg, key, i
			end
		end
	end
	if legJob and not kept then cancelLeg() end
	if legToken then return end
	if not nextLeg then
		legsWanted = false
		return
	end
	-- After the plan settles and the arrow's own search (its answer pumps again).
	if measuring or token or wanted or inCombat() or arrowPending(legs, ci) then
		legsWanted = true
		return
	end
	legsWanted = false
	local mine, to = {}, nextLeg.to
	legToken, legKey = mine, nextKey
	searchLeg(P, mine, nextKey, nextLeg.from, to, (nextAt == #legs and targetZ(to.c, to.wx, to.wy)) or to.z, ghost)
end

-- The shape of the next later walk with no line yet (Path.FindCoarse),
-- whatever else runs: its abstract route, or for a walk inside one cluster
-- its path itself, kept as its search's answer (one ending off the goal's
-- floor is drawn, and searched again as later walks are). Without the engine
-- yet (loaded on demand) it is owed (Walk:Refresh).
pumpShapes = function()
	local P = engine()
	local T = Nav.travel
	local legs, ci = Nav.GetRoute()
	shapesOwed = not P and ns.Get("nav.navRouting") and true or false
	if not (P and P.FindCoarse and legs and ci and T and T.Active and T.Active()) then
		cancelShape()
		return
	end
	local ghost = ghostNow()
	-- Every sketch first (milliseconds each), then the walks inside one cluster (their search, once the arrow's own is in).
	local nextLeg, nextKey, nextAt, kept, whole = nil, nil, nil, false, false
	local oneLeg, oneKey, oneAt
	for i = firstOwn(legs, ci), #legs do
		local leg = legs[i]
		if searchable(legs, i, P) then
			local key = legKeyOf(leg.from, leg.to, ghost)
			local e = legPaths[key]
			if key == shapeKey then
				kept = true
			elseif e == nil and not nextLeg then
				nextLeg, nextKey, nextAt = leg, key, i
			elseif e and e.cluster and not oneLeg then
				oneLeg, oneKey, oneAt = leg, key, i
			end
		end
	end
	if shapeJob and not kept then cancelShape() end
	if shapeToken then return end
	if not nextLeg then
		-- A whole search is a later walk's: never ahead of the arrow's own (Walk:Refresh asks again).
		if oneLeg and (token or wanted or arrowPending(legs, ci)) then
			shapesOwed = true
			return
		end
		nextLeg, nextKey, nextAt, whole = oneLeg, oneKey, oneAt, true
	end
	if not nextLeg then return end
	local mine, from, to = {}, nextLeg.from, nextLeg.to
	local z = (nextAt == #legs and targetZ(to.c, to.wx, to.wy)) or to.z
	shapeToken, shapeKey = mine, nextKey
	local ok, handle = pcall(P.FindCoarse, from.c, { x = from.wx, y = from.wy, z = from.z }, { x = to.wx, y = to.wy, z = z }, function(points, reason, answer)
		if shapeToken ~= mine then return end
		shapeToken, shapeJob, shapeKey = nil, nil, nil
		-- Never over the walk's own path (its search may have answered first).
		local was = legPaths[nextKey]
		if was == nil or was.cluster then
			local e = { coarse = true, n = 0, cluster = not whole and reason == "cluster" or nil }
			if type(points) == "table" then
				e.xs, e.ys, e.n, e.yards = line(points)
				local a = type(answer) == "table" and answer or nil
				if not points.coarse and e.n > 1 and not (z and offFloor(points, z)) then
					local h = a and a.hubs
					e.coarse, e.hubs = nil, type(h) == "table" and #h > 0 and h or nil
					if a and type(a.yards) == "number" then e.yards = a.yards end
				end
			end
			keepLeg(nextKey, e)
			-- Priced (a path): ROUTE_CHANGED redraws.
			if e.n > 1 and not (not e.coarse and T.PricePaths and T.PricePaths()) then changed() end
		end
		pumpShapes()
	end, opts(ghost, from.c, from.wx, from.wy, to.wx, to.wy), whole)
	if not ok then
		shapeToken, shapeKey = nil, nil
		keepLeg(nextKey, { coarse = true, n = 0 })
		return
	end
	if shapeToken == mine then shapeJob = handle end
end

---------------------------------------------------------------------------
-- Chokepoints: the walk is split where its path passes a lift, gate,
-- bridge, tunnel, pass, or a cave or building mouth (Polestar_Nav's
-- PolestarNavChokepoints[map], else the lifts Nav/Transit.lua knows).
-- Travel.SplitWalk turns them into legs with captions; this finds them. A
-- chokepoint counts within its radius of the path (2D) and, when both have a
-- height, on the path's floor: one more than STOP_DZ yards above or below the
-- path's segment there is on another floor (the Undercity's canals 110 yd
-- under the Ruins) and is no stop. STOP_DZ is generous: the engine's path
-- heights are coarse and a mouth's packed height is its indoor floor (the
-- Fargodeep Mine's is 14-34 yd under the path's points beside it).
--   stop = { kind, name, zone, to (passages: the area beyond), wx, wy (on the
--     path), r, along (yards from here), seg, lift (Transit id), side
--     ("top"|"bottom": the landing boarded), endX, endY (the other landing) }
--   (name, zone, to in the client's language when it names them: the
--   chokepoints' AreaTable areas and lift objects, Polestar.Names)
---------------------------------------------------------------------------

SNAP = 15        -- yards: a chokepoint without a radius counts within this of the path
MIN_STEP = 20    -- yards: closer stops, or this close to either end, are dropped
LOOK = 25        -- yards past a passage that tell which side is ahead
STOP_DZ = 30     -- yards above or below the path: a chokepoint on another floor
RIDE_DZ = 20     -- yards the path's height changes across a lift it rides

-- Nearest point on the path to (x, y): distance, segment, point, yards from the path's start.
function project(x, y)
	local bestD, bestA, bestT = huge, 1, 0
	for a = 1, count - 1 do
		local ax, ay = ptsX[a], ptsY[a]
		local dx, dy = ptsX[a + 1] - ax, ptsY[a + 1] - ay
		local len2 = dx * dx + dy * dy
		local t = 0
		if len2 > 0 then
			t = ((x - ax) * dx + (y - ay) * dy) / len2
			if t < 0 then t = 0 elseif t > 1 then t = 1 end
		end
		local ex, ey = ax + dx * t - x, ay + dy * t - y
		local d = ex * ex + ey * ey
		if d < bestD then bestD, bestA, bestT = d, a, t end
	end
	local a = bestA
	local dx, dy = ptsX[a + 1] - ptsX[a], ptsY[a + 1] - ptsY[a]
	return sqrt(bestD), a, ptsX[a] + dx * bestT, ptsY[a] + dy * bestT, left[1] - left[a] + sqrt(dx * dx + dy * dy) * bestT
end

-- The point `along` yards from the path's start.
function pointAt(along)
	local total = left[1] - left[count]
	if along >= total then return ptsX[count], ptsY[count] end
	for a = 1, count - 1 do
		local s, e = left[1] - left[a], left[1] - left[a + 1]
		if along <= e then
			local t = e > s and (along - s) / (e - s) or 0
			return ptsX[a] + (ptsX[a + 1] - ptsX[a]) * t, ptsY[a] + (ptsY[a + 1] - ptsY[a]) * t
		end
	end
	return ptsX[count], ptsY[count]
end

-- The path's height a little before and after segment a: which way a lift goes.
function climbs(a)
	local before, after = ptsZ[a > 1 and a - 1 or 1], ptsZ[a + 2 <= count and a + 2 or count]
	if not (before and after) or before == after then return nil end
	return after > before
end

-- Whether the path rides a lift at segment a: its height changes RIDE_DZ yards or more from the point before the
-- segment to the one after it (the walking engine's path steps from one landing to the other).
function rides(a)
	local before, after = ptsZ[a > 1 and a - 1 or 1], ptsZ[a + 2 <= count and a + 2 or count]
	return type(before) == "number" and type(after) == "number" and abs(after - before) >= RIDE_DZ
end

function liftId(c, wx, wy)
	local X = ns.Transit
	if not (X and X.LiftNear) then return nil end
	local ok, id, name = pcall(X.LiftNear, c, wx, wy)
	if ok then return id, name end
	return nil
end

-- A chokepoint's area name in the client's language, else the pack's English.
function areaName(id, english)
	local N = ns.Names
	return (N and id and N.Area(id)) or english
end

-- The stops along the current path from where the player is, in order.
-- -> stops, total (yards along the path from the player to the goal)
function Walk.Stops(pc, px, py)
	if count < 2 or not gc then return nil end
	local _, _, _, _, here = project(px, py)
	local total = left[1] - here
	local minX, maxX, minY, maxY = huge, -huge, huge, -huge
	for i = 1, count do
		local x, y = ptsX[i], ptsY[i]
		if x < minX then minX = x end
		if x > maxX then maxX = x end
		if y < minY then minY = y end
		if y > maxY then maxY = y end
	end
	local found = {}
	local function consider(e, kind)
		local r = tonumber(e.r) or SNAP
		if e.wx + r < minX or e.wx - r > maxX or e.wy + r < minY or e.wy - r > maxY then return end
		local d, a, sx, sy, along = project(e.wx, e.wy)
		along = along - here
		-- A lift the path rides is a step however near the walk's ends (the Great Lift's
		-- bottom landing a few yards from the Thousand Needles crossing).
		local ridden = kind == "lift" and rides(a)
		if d > r or along < (ridden and -r or MIN_STEP) or (not ridden and along > total - MIN_STEP) then return end
		-- Another floor: the path's segment there runs STOP_DZ yards or more above or below the
		-- chokepoint at both its ends (a cave entry at the Undercity's canals under a walk over the Ruins);
		-- never a lift the path rides (its landings join the floors).
		local ez, za, zb = tonumber(e.z), ptsZ[a], ptsZ[a + 1]
		if not ridden and ez and za and zb and abs(za - ez) > STOP_DZ and abs(zb - ez) > STOP_DZ then return end
		found[#found + 1] = { kind = kind, entry = e, wx = sx, wy = sy, r = r < 5 and 5 or r > 20 and 20 or r, along = along, seg = a, ridden = ridden }
	end
	local packed = type(_G.PolestarNavChokepoints) == "table" and _G.PolestarNavChokepoints[gc]
	if type(packed) == "table" then
		for _, e in ipairs(packed) do
			if type(e) == "table" and e.wx and e.wy and e.kind then consider(e, e.kind) end
		end
	else
		local X = ns.Transit
		local ok, lifts = false, nil
		if X and X.Lifts then ok, lifts = pcall(X.Lifts) end
		if ok and type(lifts) == "table" then
			for _, e in ipairs(lifts) do
				if e.c == gc and e.wx and e.wy then consider(e, "lift") end
			end
		end
	end
	table.sort(found, function(a, b) return a.along < b.along end)

	local stops, lastAlong, used = {}, -huge, {}
	for _, f in ipairs(found) do
		local e = f.entry
		if not used[e] and (f.along - lastAlong >= MIN_STEP or f.ridden) then
			local s = { kind = f.kind, name = areaName(e.area, e.name), zone = areaName(e.zoneArea, e.zone), wx = f.wx, wy = f.wy, r = f.r, along = f.along, seg = f.seg }
			if f.kind == "lift" then
				-- The landing boarded and the ride to its pair. The side comes from
				-- the path's height when it has one (K4): a packed lift's two
				-- landings lie a few yards apart, too close for the order along
				-- the path to tell them apart; else the landing reached first.
				local other = packed and e.pair and packed[e.pair]
				local up = climbs(f.seg)
				local side = up ~= nil and (up and "bottom" or "top") or e.liftEnd
				if other and side and e.liftEnd and other.liftEnd == side and e.liftEnd ~= side then
					e, other = other, e
					s.name, s.zone = areaName(e.area, e.name), areaName(e.zoneArea, e.zone)
				end
				if other then
					used[other] = true
					s.endX, s.endY = other.wx, other.wy
				end
				s.side = side
				local id, name = liftId(gc, e.wx, e.wy)
				if packed then
					-- The lift object's own name; on another client's language,
					-- else the Transit lift's (its area's), before the English.
					local N = ns.Names
					local own = N and e.liftObject and N.Object(e.liftObject)
					s.lift, s.name = id or e.id, own or (N and N.Localised() and name) or e.lift or name or s.name
				else
					s.lift, s.name = e.id or id, e.name or name
				end
			elseif type(e.sides) == "table" then
				-- A passage: the side the path reaches after it is where it leads.
				local ax, ay = pointAt(f.along + here + LOOK)
				local best, bestD = nil, huge
				for _, side in ipairs(e.sides) do
					if type(side) == "table" and side.wx and side.wy then
						local dx, dy = side.wx - ax, side.wy - ay
						local d = dx * dx + dy * dy
						if d < bestD then best, bestD = side, d end
					end
				end
				s.to = best and areaName(best.zoneArea, best.area) or nil
			end
			stops[#stops + 1] = s
			lastAlong = f.along
		end
	end
	return stops, total
end

-- Split the walk the arrow is on at its chokepoints (Travel.SplitWalk), once
-- per path and once per plan.
function Walk.Split()
	local T = Nav.travel
	if not (T and T.SplitWalk and gc) or count < 2 then return end
	local C = ns.Compat
	local pc, px, py
	if C and C.GetPlayerWorldPosition then pc, px, py = C.GetPlayerWorldPosition() end
	if pc ~= gc then return end
	local stops, total = Walk.Stops(pc, px, py)
	if stops then T.SplitWalk(gc, gx, gy, stops, total, hubs) end
end

---------------------------------------------------------------------------
-- Hand-made guide waypoints
---------------------------------------------------------------------------

gotoTarget, gotoAnswer = gotoTarget, gotoAnswer

-- The guide's last located goal before this target is a `goto`: the
-- author's way in (a cave's mouth), so the arrow goes straight from there.
function Walk.FollowsGoto(target)
	if target == gotoTarget then return gotoAnswer end
	gotoTarget, gotoAnswer = target, false
	if type(target) ~= "table" or not (target.stepIndex and target.goalIndex) then return false end
	local E = ns.Engine
	local guide = E and E.GetGuide and E.GetGuide()
	local steps = type(guide) == "table" and guide.steps
	if type(steps) ~= "table" then return false end
	local s, g = target.stepIndex, target.goalIndex - 1
	while s >= 1 do
		local goals = steps[s] and steps[s].goals
		if type(goals) == "table" then
			if g == nil then g = #goals end
			for k = g, 1, -1 do
				local goal = goals[k]
				if type(goal) == "table" and goal.map ~= nil and goal.x ~= nil then
					gotoAnswer = goal.t == "goto"
					return gotoAnswer
				end
			end
		end
		s, g = s - 1, nil
	end
	return false
end

---------------------------------------------------------------------------
-- Route geometry for the map lines
---------------------------------------------------------------------------

KIND = { fly = "flight" }
geom, geomBuilt, geomRoute = nil, -1, -1

function pt(list, c, wx, wy)
	if c and wx and wy then list[#list + 1] = { c, wx, wy } end
end

-- The engine's path points a..b into `pts` when the path is for the goal (c, wx, wy).
function walkPoints(pts, c, wx, wy, a, b)
	if not isGoal(c, wx, wy) then return false end
	for i = a or 1, b or count do pt(pts, c, ptsX[i], ptsY[i]) end
	return true
end

-- The arrow's search's abstract route into `pts` while its path is still to
-- come, when that search is for the goal (c, wx, wy).
function shapePoints(pts, c, wx, wy)
	local s = shape
	if not s or count > 0 or gc ~= c or (wx - gx) * (wx - gx) + (wy - gy) * (wy - gy) > GOAL_MOVED * GOAL_MOVED then return false end
	for i = 1, s.n do pt(pts, c, s.xs[i], s.ys[i]) end
	return true
end

-- The line of later walk leg i (or the arrow's own hand-made one) from its
-- own search, else its abstract route; a crossing's only when it is at most
-- CROSS_DETOUR times as long as the data's straight line; or nil.
function ownLine(legs, i, ci, P)
	local leg = legs[i]
	if i == ci and not leg.handmade then return nil end
	if not (P and searchable(legs, i, P)) then return nil end
	local lp = legPath(leg.from, leg.to)
	if lp and leg.handmade then
		local dx, dy = leg.to.wx - leg.from.wx, leg.to.wy - leg.from.wy
		if lp.yards > CROSS_DETOUR * sqrt(dx * dx + dy * dy) then return nil end
	end
	return lp
end

function build()
	local out = {}
	local E = engine()
	local T = Nav.travel
	local legs, ci = Nav.GetRoute()
	local C = ns.Compat
	local pc, px, py
	if C and C.GetPlayerWorldPosition then pc, px, py = C.GetPlayerWorldPosition() end
	if legs and ci and T and T.Active() then
		local lastParent, prevSeg = nil, 0
		for i = ci, #legs do
			local leg = legs[i]
			local from, to = leg.from, leg.to
			local pts = {}
			local P = leg.parent
			if P ~= lastParent then
				lastParent, prevSeg = P, 0
				for k = i - 1, 1, -1 do
					local before = legs[k]
					if not P or before.parent ~= P then break end
					if before.seg then
						prevSeg = before.seg
						break
					end
				end
			end
			if leg.kind == "walk" and P then
				-- A piece of a split walk: its stretch of the path.
				pt(pts, from.c, from.wx, from.wy)
				walkPoints(pts, P.c, P.wx, P.wy, prevSeg + 1, leg.seg)
				if leg.seg then
					pt(pts, to.c, to.wx, to.wy)
					prevSeg = leg.seg
				end
			elseif leg.kind == "walk" then
				-- A later walk (or a crossing the arrow walks straight) along its own searched
				-- path or abstract route; the current one along the arrow's path, or its
				-- search's abstract route until that is in (a walk after a guide goto:
				-- straight from the mouth).
				local lp = ownLine(legs, i, ci, E)
				if lp then
					for k = 1, lp.n do pt(pts, from.c, lp.xs[k], lp.ys[k]) end
				elseif not walkPoints(pts, to.c, to.wx, to.wy) and not (i == ci and shapePoints(pts, to.c, to.wx, to.wy)) then
					if i == ci and pc == from.c then pt(pts, pc, px, py) else pt(pts, from.c, from.wx, from.wy) end
					pt(pts, to.c, to.wx, to.wy)
				end
			elseif leg.kind == "fly" and leg.stops then
				for _, node in ipairs(leg.stops) do pt(pts, node.c, node.wx, node.wy) end
			elseif leg.kind == "hearth" or leg.kind == "teleport" then
				if i == ci and pc then pt(pts, pc, px, py) else pt(pts, from.c, from.wx, from.wy) end
				pt(pts, to.c, to.wx, to.wy)
			else
				pt(pts, from.c, from.wx, from.wy)
				pt(pts, to.c, to.wx, to.wy)
			end
			out[#out + 1] = { kind = KIND[leg.kind] or leg.kind, pts = pts, current = i == ci, choke = leg.choke }
		end
	else
		local tc, tx, ty = Nav.GetTargetWorld()
		if tc then
			local pts = {}
			if not walkPoints(pts, tc, tx, ty) and not shapePoints(pts, tc, tx, ty) and pc == tc then
				pt(pts, pc, px, py)
				pt(pts, tc, tx, ty)
			end
			if #pts > 0 then out[1] = { kind = "walk", pts = pts, current = true } end
		end
	end
	return { legs = out }
end

function Nav.GetRouteGeometry()
	if not Nav.GetTarget() or Nav.HandedOff() then return nil end
	local T = Nav.travel
	local route = T and T.version or 0
	if not geom or geomBuilt ~= geomVersion or geomRoute ~= route then
		geom, geomBuilt, geomRoute = build(), geomVersion, route
	end
	return geom
end

-- A fresh plan of the same walk (a zone change, a re-plan on the way) is
-- split again from the path already in: the steps stay the same. Its later
-- walks are drawn along their abstract routes at once and searched in turn.
ns.On("ROUTE_CHANGED", function(legs)
	local _, ci = Nav.GetRoute()
	local leg = legs and ci and legs[ci]
	if leg and leg.kind == "walk" and not leg.parent and not leg.handmade and count > 1 then Walk.Split() end
	changed()
	pumpShapes()
	pumpLegs()
end)
ns.On("ROUTE_ADVANCED", function()
	changed()
	pumpShapes()
	pumpLegs()
end)

---------------------------------------------------------------------------
-- Module
---------------------------------------------------------------------------

function Walk:OnTarget(target)
	if not target then
		Walk.Clear()
		release()
		cancelMeasure()
		cancelLeg()
		cancelShape()
	end
	changed()
end

-- Every walk priced under the old options (a route style, a level) is
-- dropped: the arrow's path (straight until the new one is in), the measure
-- in flight and the kept measures, the later walk in flight and the kept
-- later paths; then the route is planned again at once, so each is measured
-- and searched again under the new ones.
function searchAgain()
	Walk.Clear()
	cancelMeasure()
	for i = #measures, 1, -1 do measures[i] = nil end
	cancelLeg()
	cancelShape()
	for i = #legOrder, 1, -1 do legPaths[legOrder[i]], legOrder[i] = nil, nil end
	local T = Nav.travel
	if T and T.Replan then T.Replan() end
end

function Walk:OnSettings()
	if ns.Get("nav.navRouting") then
		load()
	else
		if gc then Walk.Clear() end
		cancelMeasure()
		cancelLeg()
		cancelShape()
	end
	-- Another route style: every walk priced in the old one is searched again (searchAgain).
	local style = ns.Get("nav.routeStyle")
	if styleSeen ~= nil and style ~= styleSeen then searchAgain() end
	styleSeen = style
end

-- A level-up: the zones far above the player are others now (Nav/Danger.lua,
-- whose own handler, run first, keeps the event's level: the client's can lag
-- it), so every walk priced at the old level is searched again (searchAgain).
ns.RegisterEvent("PLAYER_LEVEL_UP", function()
	searchAgain()
end)

function Walk:Refresh()
	if ns.Get("nav.navRouting") and not Nav.Path and not loadTried then load() end
	-- No arrow update for FRESH seconds (a taxi, an instance, arrived): the floor's cluster may go.
	if aimAt and GetTime() - aimAt > FRESH then release() end
	if not engine() then
		-- Off, or Shortest Path Forever guides: nothing of ours runs.
		if measuring or measureOwed then cancelMeasure() end
		if legToken then cancelLeg() end
		if shapeToken then cancelShape() end
		return
	end
	local o = measureOwed
	if o and not inCombat() then
		measureOwed = nil
		local tc, tx, ty = Nav.GetTargetWorld()
		if tc and sameTarget(o, tc, tx, ty, o.water) then Walk.Measure(o.c, o.x, o.y, o.water, o.places) end
	end
	if shapesOwed and not shapeToken then pumpShapes() end
	if legsWanted then pumpLegs() end
end

ns.OnLogin(function()
	if ns.Get("nav.navRouting") then load() end
end)

Nav.RegisterModule(Walk)
