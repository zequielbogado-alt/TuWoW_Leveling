local ADDON, ns = ...
ns._walkEnv = ns.ModuleEnv(function(e) e.ADDON = ADDON; e.ns = ns end)
setfenv(1, ns._walkEnv)
-- Walking paths: the arrow follows real paths on the ground instead of a
-- straight line, from Polestar's walking router in the load-on-demand addon
-- Polestar_Nav, started from the walking engine of Shortest Path Forever by
-- Cillian Berragan (https://github.com/cjber/shortest-path-forever, GPL-3.0-or-later).
-- Portions Copyright (C) 2026 Cillian Berragan (Shortest Path Forever, GPL-3.0-or-later); adapted for Polestar, 2026-10-15.
-- Portions Copyright (C) 2026 Cillian Berragan (Shortest Path Forever v1.16.0, Journey/JourneySearch.lua's goal batch, GPL-3.0-or-later); adapted for Polestar, 2026-10-16.
--
-- The travel planner (Travel.lua) picks flights, rides, the Hearthstone and
-- teleports; the walks into the target are priced by one reversed
-- Path.FindMany per target from here (Walk.Measure, below), the others by
-- straight-line estimates. Here the
-- walk the arrow is on right now (the player to the current walk leg's end,
-- or to the target) is searched asynchronously with Path.Find on the
-- player's continent; once the path arrives the arrow aims at its next point.
-- Straying more than STRAY yards from it, or a new goal, asks again (a stale
-- search is cancelled); nothing is asked for in combat. Hand-made walks win:
-- a crossing, an approach chain past its mouth (Travel's leg.handmade), and a
-- guide goal after a guide `goto` (the author's way in, a cave mouth) keep
-- the straight arrow. No engine, nav.navRouting off, no walking data for the
-- continent, or a failed search: the straight arrow, as without this file.
-- Every later walk leg is sketched at once (Path.FindCoarse, its border
-- crossings), then searched once after it (Walk.LegPath), for the route
-- lines and its price; the arrow's own walk is drawn by its sketch until its
-- path is in. Walks on another continent than the player's are neither
-- measured nor searched until its walking maps are in memory (canSearch: a
-- continent's part of Polestar_Nav loads when the player gets there); until
-- then they keep the planner's straight estimates.
--
-- Baked legs: a guide step whose walk was routed at build time (Nav/Baked.lua,
-- a race part's Legs.lua) needs no search: for a new goal that the current
-- step's leg ends at, with the player within STRAY yards of the leg, the
-- arrow follows the leg from the player's place on it (takeBaked). Straying
-- from it asks for a search as from any path (the re-plan); a goal the leg
-- does not end at (a walk leg's end before a flight, a hand-set target) is
-- searched as before.
--
-- Floors: a goal at the target's point carries the target's height (a guide
-- goal at an NPC or object: its spawn's z, Nav.GetTargetWorld) to Path.Find,
-- so the path ends on that floor (an Undercity quarter, not the street
-- above); a walk leg's end with a height of its own (a dock's board point on
-- a pier deck, a tram, zeppelin or portal end's floor, Nav/Travel.lua)
-- carries that one, so the walk ends on the deck or at the tram's entrance,
-- not in the water under it or on the roof above it. A search with the height that fails, or whose
-- path ends more than Z_OFF yards above or below it (the last engine point
-- before the goal), is asked once more without it, and that answer is the
-- one used. A hand-set target has no height: searched as before.
--
-- The player's floor (#234, Ruling 36): Forever's client gives no player
-- height (Compat reads its 0 as none), and a search from a point without one
-- starts from the cheapest surface within a cell of it: a roof, rock top,
-- bridge or upper floor above the player. So Walk follows the height of the
-- surface under the player as they move: from Walk.Aim, at most every EVERY
-- (0.25) seconds, reading the cell's surfaces (Path.SurfacesAt, into one
-- reused table: nothing is allocated) only after moving MOVE (1) yard.
--   Seed (the floor unknown): the cell's surfaces all within ZTOL (10, the
--     router's: it stands on them alike): the lowest of them. Else, when the
--     client says whether the player is indoors (Compat.IsIndoors) and the
--     surfaces differ in it (an indoor or indoor city class against the
--     rest), indoors the indoor ones when they lie within ZTOL: off the
--     Undercity's lifts, the city under Tirisfal's outdoor ground. Outdoors
--     says nothing (a city's streets and gates are of the indoor city class
--     under the open sky: Stormwind's over its canal, Ironforge's gate under
--     the mountain). Never to override a followed floor (a doorway can
--     disagree for a moment).
--   Candidates (seed cannot tell: the Undercity, every cell with indoor
--     layers more than ZTOL apart): each surface read (indoors: the indoor
--     ones) is a floor the player may be on; each follows the surface within
--     ZTOL of it at every read, and one with none there two reads in a row is
--     gone. While any are followed they decide (not seed). One left: the
--     floor. A few dozen yards on the Trade Quarter's ring rule out the
--     entrance hall above it. Indoors, until then, a search from the player
--     starts only on the candidate floors (Path.Find's from.floors): the
--     canal ring keeps canal and walkway under every step, never the roofs.
--   Named: on a map whose surfaces carry their area (Path.AreaFormat: each
--     WMO group's WMOAreaTable row), the surfaces the client's subzone names
--     (Compat.GetZoneText; the rows' English names, Path.AreaName; other
--     languages wait for WMOAreaTable names in Polestar_Names)
--     are the floor at once when they lie within ZTOL, before seed and the
--     candidates, and they correct a followed floor on another level. A
--     subzone two levels share, or none, leaves it to movement.
--   Follow: the surface nearest the floor, never more than RISE (4) yards
--     above it (a ramp or stairs at mount speed, plus a jump); any drop (a
--     fall). None: unknown.
--   Unknown again: another continent; more than JUMP (30) yards since the
--     last read (a hearth, teleport, landing, loading screen); moving after
--     more than FRESH (2) seconds without a check; on a taxi, a transport
--     (Transit.Riding) or within LIFT (8) yards of a lift (Transit.LiftNear:
--     it changes level without moving); a ghost state change; a read that
--     raises an error.
--   Decoding: the read never decodes. A cell whose cluster is not decoded
--     reads nil and the router decodes it under its frame budget
--     (Path.Prefetch, as a search's clusters; not in combat); meanwhile the
--     floor is kept, checked but not read again, so JUMP and NEAR still
--     count from where it was last read, and it is followed from there once
--     the cluster is in. The router keeps that one cluster decoded at rest
--     until Path.ReleaseSurfaces: the target cleared (Walk:OnTarget) or no
--     Walk.Aim for FRESH seconds (Walk:Refresh); never on Walk.Clear alone (a
--     style change, a level-up, a hand-made walk: the arrow goes on).
-- The arrow's search starts from the client's height when it gives one, else
-- from the floor when it is known, checked within FRESH seconds and read
-- within NEAR (5) yards of the player; a search with it that finds nothing is
-- asked once more without it, keeping the goal's height (Z2 still drops the
-- goal's, keeping the start as it was). The player's place in Walk.Measure
-- takes the same height. Unknown: searched without a height, as before; and
-- when the floor then becomes known within REASK (5) seconds of that search
-- (an arrival: login, hearth, a landing; ambiguous ground walked off), asked
-- once more with it (Ruling 36b), once per such search, never in combat.
--
-- Steps: the walk is split at the lifts Nav/Transit.lua knows, and keeps the
-- crossings, approach chains and guide gotos the planner already makes legs
-- of. Gates, bridges, tunnels, passes, lift landings and cave or building
-- mouths come from Polestar_Nav's PolestarNavChokepoints (Nav/Chokepoints.lua,
-- generated by `nav pack`); without it, the lifts Nav/Transit.lua knows.
--
--   Walk.Aim(pc, px, py, gc, gx, gy, handmade, gz, stop) -> c, wx, wy, left | nil
--     where to point for walking from the player to (gc, gx, gy; gz: its
--     height, else the target's when it is the target's point): Nav/Follow.lua's
--     aim along the path (the furthest point within 35 yd of the player and
--     45 yd along it, sliding between points, stopped at a corner, another
--     floor and path point `stop`, a piece of a split walk's last point
--     before its chokepoint); and the yards left along the path from the
--     player's place on it plus their way to it; nil = straight at the goal.
--     Allocation-free once the path is in.
--   Walk.Progress(c, x, y) -> along, off | nil: at the last Aim for that goal,
--     the yards along the path from its start to the player's place on it,
--     and the yards between the player and that place
--   Walk.Left(c, x, y) -> yards left along the path to that goal at the last Aim | nil
--   Walk.Passed(c, x, y, seg) -> the player is past segment `seg` of that goal's path
--   Walk.Stops(pc, px, py) -> stops, total: the chokepoints along the path
--   Walk.Split(): Travel.SplitWalk at them (on each path, and after a fresh plan);
--     with none, the walk leg takes the path's yards and time, and goes back
--     to its straight estimate when the path fails or is cleared (Travel.RestoreWalk)
--   Walk.FollowsGoto(target) -> true when the guide's last located goal before
--     this target is a `goto`
--   Walk.Clear()
--   Walk.Measure(c, x, y, water, places): measure the walks into that target
--     from the planner's places (one FindMany; Travel.Remeasured when in)
--   Walk.Measured(c, x, y, water) -> walkCost(c, wx, wy, start) -> cost, yards | nil, or nil
--   Walk.LegPath(from, to) -> yards along that later walk's searched path, its hubs | nil
--   Nav.GetRouteGeometry() -> { legs = { { kind, pts = { { c, wx, wy }, ... },
--     current, choke }, ... } } or nil without a target or while handed off
--     (Nav.HandedOff); NAV_ROUTE_GEOMETRY on change.
--     kind: walk | flight | boat | zeppelin | tram | portal | hearth | teleport | lift.
--
-- Every search goes with opts { waterWalking, profile, style, danger }: the
-- player's faction (Compat.GetPlayerFaction; none when neutral or unread),
-- the Route style option (nav.routeStyle: "fastest", "balanced" (the default)
-- or "roads"; the router reads anything else as Balanced) and the zones far
-- above the player's level (Nav/Danger.lua's table at the player's level,
-- without the walk's own start and goal zones, Path.ZoneAt), so the router
-- prices each step by its ground in that style (roads cheaper, slopes and
-- indoors dearer), the other faction's towns twenty times over and a step
-- into a dangerous zone three or twenty times. A change of style, or a level-up
-- (PLAYER_LEVEL_UP), drops the arrow's path, the measures and the later
-- walks' paths, and re-plans at once (Walk:OnSettings, searchAgain): every
-- walk is searched and measured again in it. The router's cost chooses (the
-- planner's walkCost); every distance and time shown comes from yards: the
-- arrow's walk from its path's points (the drawn line, Find's job.yards), a
-- later walk from Find's job.yards, a measured walk from FindMany's
-- job.yards[i] (the no-profile path's yards per graph edge: low for a walk
-- that goes round a hostile town inside one cluster). Find's job.hubs, the
-- hostile towns the drawn line enters, go to the walk's leg (leg.hubs:
-- Travel.SplitWalk for the arrow's walk, every piece of a split one; Travel.PricePaths for later ones).

-- local ADDON, ns = ...
Nav = ns.Nav

type, ipairs, pcall = type, ipairs, pcall
sqrt, huge, abs = math.sqrt, math.huge, math.abs

Walk = {}
Nav.walk = Walk

ns.RegisterDefaults("nav", { navRouting = true, routeStyle = "balanced" })

PACK = "Polestar_Nav"
STRAY = 25            -- yards off the path: ask again
JOIN = 50             -- yards from a path's start: its first turn there, outdoors, is joining a road (Nav/Follow.lua)
ASK_EVERY = 2         -- seconds between asks for the same goal
GOAL_MOVED = 1        -- yards: the goal is another one
FAIL_RETRY, FAIL_MOVED = 15, 25 -- a failed search is asked again this late, this far away
Z_OFF = 30            -- yards: a path ending this far above or below the goal's height missed its floor

---------------------------------------------------------------------------
-- The engine (Polestar_Nav's API.lua hands it over as Polestar_NavEngine)
---------------------------------------------------------------------------

loadTried = false
styleSeen = styleSeen             -- nav.routeStyle the searches were made in (nil until the first settings pass)

function inCombat()
	local C = ns.Compat
	if C and C.InCombat then return C.InCombat() end
	return InCombatLockdown ~= nil and InCombatLockdown() and true or false
end

-- Load Polestar_Nav once (at login or later, never in combat: loading builds
-- about 26 MB of packed map strings), and never while Shortest Path Forever
-- guides instead (Nav/Handoff.lua): it walks its own maps.
function load()
	if Nav.Path or loadTried then return end
	if inCombat() or Nav.HandedOff() then return end
	loadTried = true
	if ns.Data and ns.Data.Pack then pcall(ns.Data.Pack, PACK) end
	local P = _G.Polestar_NavEngine
	if type(P) == "table" and type(P.Find) == "function" and type(P.Cancel) == "function" then
		Nav.Path = P
	end
end

function engine()
	if not ns.Get("nav.navRouting") or Nav.HandedOff() then return nil end
	return Nav.Path
end

-- May the router search walks on continent c now? Its maps are in memory
-- (Path.Resident: Polestar_Nav's own, or the continent's part addon loaded),
-- or c is the player's continent: its part loads with the first search there.
-- A walk on another continent keeps the planner's straight estimate until the
-- player gets there, so Polestar holds one continent's walking maps at a time.
function canSearch(P, c)
	if P.Available and not P.Available(c) then return false end
	if not P.Resident or P.Resident(c) then return true end
	local C = ns.Compat
	return C and C.GetPlayerWorldPosition and C.GetPlayerWorldPosition() == c or false
end

-- The router's options (Routing/Path.lua): water walking (a ghost), the
-- player's faction (Compat.GetPlayerFaction: nil when neutral or unread),
-- the route style (nav.routeStyle, as saved: the router reads an unknown one
-- as Balanced) and the danger table (Nav.danger.Table at Nav.danger.Level,
-- without the zones (Nav.danger.ZoneAt) of the walk's start (sx, sy) and
-- goal (tx, ty) on map; nil for either leaves no zone out there), so each
-- step is priced for them: roads cheaper, slopes and indoors dearer, the
-- other faction's towns twenty times over, a zone far above the player three
-- or twenty times. A walk that starts or ends in a town of the other faction
-- (Path.HubAt at its start, its goal, or (hx, hy): the player's place in a
-- measure) is priced as for no faction (opts.homeHub): it leaves or enters
-- by the town's own streets and gate, never by the shortest way off the
-- town's ground over its walls or the mountains (a Tauren in Stormwind), and
-- the towns its line enters are still named.
function opts(water, map, sx, sy, tx, ty, hx, hy)
	local C = ns.Compat
	local profile = C and C.GetPlayerFaction and C.GetPlayerFaction() or nil
	local D = Nav.danger
	local level = D and D.Level()
	local danger = level and D.Table(level, D.ZoneAt(map, sx, sy), D.ZoneAt(map, tx, ty)) or nil
	local P, home = Nav.Path, nil
	if profile and P and P.HubAt then
		home = (sx and P.HubAt(map, sx, sy, profile)) or (tx and P.HubAt(map, tx, ty, profile)) or (hx and P.HubAt(map, hx, hy, profile)) or nil
	end
	return { waterWalking = water and true or false, profile = profile, style = ns.Get("nav.routeStyle"), danger = danger, homeHub = home and true or nil }
end

---------------------------------------------------------------------------
-- The current walk
---------------------------------------------------------------------------

gc, gx, gy = gc, gx, gy             -- the goal searched for (nil: none)
gzFor = gzFor                  -- the target's height when that goal was taken (targetZ; false: none)
gz = gz                     -- the height searches still send (nil: none, or dropped after a miss)
token = token                  -- the live search's identity
job = job                    -- its Cancel handle
sketchJob = sketchJob              -- its shape's (Path.FindCoarse) Cancel handle
ptsX, ptsY, ptsZ = {}, {}, {} -- the path, reused (z false where unknown)
hubs = hubs                   -- the other faction's towns the path enters (Find's job.hubs; nil: none)
left = {}              -- left[i] = yards from point i to the end of the path
lastLeft = lastLeft               -- yards left along the path at the last Aim
count = 0              -- points in the path (0: none yet)
idx = 1                -- the end point of the segment the player is on (Nav/Follow.lua)
fstate = {}           -- the follower's state (Nav/Follow.lua's Follow.Step)
wanted = false         -- a search is owed (deferred in combat)
askedAt = -huge
failed = false
failAt, failX, failY = 0, 0, 0
shape = shape                  -- the live search's abstract route ({ xs, ys, n }; Find's coarse), drawn until the path is in
geomVersion = 0
pumpLegs = pumpLegs              -- searches the route's later walks (below)
pumpShapes = pumpShapes            -- draws the route's later walks' abstract routes at once (below)
release = release               -- lets the router drop the floor's cluster (below, "The walking floor")

-- A search's points as flat lists for drawing: xs, ys, n (points with x and y) and the yards along them.
function line(points)
	local xs, ys, n, yards = {}, {}, 0, 0
	for i = 1, #points do
		local p = points[i]
		if type(p) == "table" and p.x and p.y then
			n = n + 1
			xs[n], ys[n] = p.x, p.y
			if n > 1 then
				local dx, dy = xs[n] - xs[n - 1], ys[n] - ys[n - 1]
				yards = yards + sqrt(dx * dx + dy * dy)
			end
		end
	end
	return xs, ys, n, yards
end

function changed()
	geomVersion = geomVersion + 1
	ns.Fire("NAV_ROUTE_GEOMETRY")
end

function dropSketch()
	if sketchJob then
		local P = Nav.Path
		if P then pcall(P.Cancel, sketchJob) end
		sketchJob = nil
	end
end

function cancel()
	token = nil
	if job then
		local P = Nav.Path
		if P then pcall(P.Cancel, job) end
		job = nil
	end
	dropSketch()
end

-- The walk the path measured goes back to its straight estimate (Travel.RestoreWalk).
function restore(c, x, y)
	local T = Nav.travel
	if c and T and T.RestoreWalk then T.RestoreWalk(c, x, y) end
end

function Walk.Clear()
	local had, c, x, y = gc ~= nil, gc, gx, gy
	cancel()
	gc, gx, gy, gzFor, gz, count, idx, wanted, failed, hubs, shape = nil, nil, nil, nil, nil, 0, 1, false, false, nil, nil
	Nav.follow.Reset(fstate)
	if had then
		restore(c, x, y)
		changed()
	end
end

function took(points)
	local n = 0
	for i = 1, #points do
		local p = points[i]
		if type(p) == "table" and p.x and p.y then
			n = n + 1
			ptsX[n], ptsY[n], ptsZ[n] = p.x, p.y, type(p.z) == "number" and p.z or false
		end
	end
	for i = n + 1, count do ptsX[i], ptsY[i], ptsZ[i] = nil, nil, nil end
	count = n
	left[n + 1] = nil
	if n > 0 then
		local dx, dy = gx - ptsX[n], gy - ptsY[n]
		left[n] = sqrt(dx * dx + dy * dy)
		for i = n - 1, 1, -1 do
			dx, dy = ptsX[i + 1] - ptsX[i], ptsY[i + 1] - ptsY[i]
			left[i] = left[i + 1] + sqrt(dx * dx + dy * dy)
		end
	end
	idx, shape = 1, nil
	Nav.follow.Reset(fstate)
end

-- The player's height, when the client gives it on this continent (picks the
-- floor), through Compat's one player-position gate.
function playerZ(pc)
	local C = ns.Compat
	if not (C and C.GetPlayerUnitPosition) then return nil end
	local ok, _, _, z, instance = pcall(C.GetPlayerUnitPosition)
	if ok and instance == pc and type(z) == "number" then return z end
	return nil
end

---------------------------------------------------------------------------
-- The walking floor (#234, Ruling 36): Forever gives no player height, so
-- the height of the surface under the player is followed as they move
-- (Path.SurfacesAt), from Walk.Aim. The rules are in the header ("The
-- player's floor").
---------------------------------------------------------------------------

RISE = 4        -- yards a reading may climb above the floor: a ramp or stairs at mount speed, plus a jump
MOVE = 1        -- yards moved before the surfaces are read again
EVERY = 0.25    -- seconds between checks
JUMP = 30       -- yards between checks: a hearth, a teleport, a landing, a loading screen
FRESH = 2       -- seconds: a floor checked longer ago is not used (and moving after such a gap loses it)
NEAR = 5        -- yards from where the floor was read: farther, it is not used
ZTOL = 10       -- Routing/PathGrid.lua's ZTOL: surfaces this close the router stands on alike
LIFT = 8        -- yards from a lift (Transit.LiftNear): it changes level without moving
INDOOR = 2      -- Path.SURFACE_INDOOR

surf = {}       -- Path.SurfacesAt's out, reused
surfArea = {}   -- Path.SurfacesAt's areas (each surface's AreaTable id, 0: none), reused
areaNames = {}  -- WMOAreaTable row id -> its English name (false: none), read once each
isNamed = {}    -- per surface of the last read: its area is the client's subzone (named), reused
floorZ = floorZ          -- the floor's height (nil: unknown)
cand, candMiss, candN = {}, {}, 0 -- while the floor is unknown and seed cannot tell: the floors the player may be on, and reads each has missed (reused)
candIndoor = false  -- the candidates are the indoor surfaces (the client said indoors): the player is on one of them
fC, fX, fY, fAt, fGhost = nil, 0, 0, -huge, false -- the last check: continent, point read, time, ghost
aimAt = aimAt               -- GetTime of the last Walk.Aim (nil: the reader's cluster released)
flatAt = flatAt              -- GetTime of the last ask sent without a start height (nil: none owed a re-ask)
floorAsk = false    -- the floor became known soon after that ask: ask once more with it (Ruling 36b)
REASK = 5           -- seconds after a flat ask within which a floor found re-asks

-- On a taxi, a transport (Transit.Riding) or at a lift: the floor can change without walking.
function carried(pc, px, py)
	local C, X = ns.Compat, ns.Transit
	if C and C.IsOnTaxi and C.IsOnTaxi() then return true end
	if X and X.Riding and X.Riding() then return true end
	return X and X.LiftNear and X.LiftNear(pc, px, py, LIFT) ~= nil or false
end

-- An unknown floor from the n surfaces read: their height when they lie
-- within ZTOL (the lowest); else, when the client says the player is indoors
-- and the surfaces differ in it, the indoor ones (an indoor or indoor city
-- class) when they lie within ZTOL; else nil. Outdoors says nothing: a city's
-- streets and gates are of the indoor city class under the open sky
-- (Stormwind's Trade District over its canal, Ironforge's gate under the
-- mountain), so the one outdoor surface there is the ground below or above.
function seed(n)
	if n == 0 then return nil end
	local lo, hi = huge, -huge
	for i = 1, n do
		local z = surf[i]
		if z < lo then lo = z end
		if z > hi then hi = z end
	end
	if hi - lo <= ZTOL then return lo end
	local C = ns.Compat
	if not (C and C.IsIndoors and C.IsIndoors()) then return nil end
	local mlo, mhi, other = huge, -huge, false
	for i = 1, n do
		local z = surf[i]
		if surf[-i] % (2 * INDOOR) >= INDOOR then
			if z < mlo then mlo = z end
			if z > mhi then mhi = z end
		else
			other = true
		end
	end
	if other and mhi >= mlo and mhi - mlo <= ZTOL then return mlo end
	return nil
end

-- A known floor from the n surfaces read: the one nearest it, never more
-- than RISE above it (any drop is a fall); none: unknown.
function follow(n)
	local best, gap = nil, huge
	for i = 1, n do
		local z = surf[i]
		if z <= floorZ + RISE and abs(z - floorZ) < gap then best, gap = z, abs(z - floorZ) end
	end
	return best
end

-- Whether surface i of the read may be where the player stands, by what the client says of indoors: only indoors is
-- evidence (an indoor or city surface); outdoors is none, as a city's open streets are city class (Stormwind's).
function fits(i, indoors)
	return not indoors or surf[-i] % (2 * INDOOR) >= INDOOR
end

-- Where seed cannot tell (the Undercity: every cell has indoor layers more than ZTOL apart), the floor is found by
-- walking: each surface of the first read (those matching indoors, when any do) is a candidate, and at each read every
-- candidate follows the surface nearest it within ZTOL (the router stands on such surfaces alike: a seed of -48 beside
-- -43 is the street at -43 too). A candidate with no surface there
-- for MISSES reads in a row is gone (the real floor may miss one read: a fall, a step between reads); candidates
-- within ZTOL merge. The one left is the floor; none left: unknown, and the next read starts again. -> it, or nil.
MISSES = 2
function candidates(n)
	local C = ns.Compat
	local indoors = C and C.IsIndoors and C.IsIndoors()
	if candN == 0 then
		local any = false
		for i = 1, n do
			if fits(i, indoors) then any = true end
		end
		for i = 1, n do
			local z, near = surf[i], false
			for j = 1, candN do
				if abs(cand[j] - z) <= ZTOL then near = true end
			end
			if not near and (not any or fits(i, indoors)) then
				candN = candN + 1
				cand[candN], candMiss[candN] = z, 0
			end
		end
		candIndoor = any and indoors and true or false
		return nil
	end
	local kept = 0
	for j = 1, candN do
		local c, miss, best, gap = cand[j], candMiss[j], nil, huge
		for i = 1, n do
			local z = surf[i]
			if abs(z - c) <= ZTOL and abs(z - c) < gap and fits(i, indoors) then best, gap = z, abs(z - c) end
		end
		if best then
			miss = 0
		else
			best, miss = c, miss + 1
		end
		local merged = false
		for k = 1, kept do
			if abs(cand[k] - best) <= ZTOL then
				merged = true
				if miss < candMiss[k] then cand[k], candMiss[k] = best, miss end
			end
		end
		if not merged and miss < MISSES then
			kept = kept + 1
			cand[kept], candMiss[kept] = best, miss
		end
	end
	for j = kept + 1, candN do cand[j], candMiss[j] = nil, nil end
	candN = kept
	-- One left, and on a surface of this read (not one riding out a miss).
	if candN == 1 and candMiss[1] == 0 then
		local z = cand[1]
		candN, cand[1], candMiss[1] = 0, nil, nil
		return z
	end
	return nil
end

-- Forget the candidates (the floor is lost, or found by seed).
function dropCandidates()
	for j = 1, candN do cand[j], candMiss[j] = nil, nil end
	candN, candIndoor = 0, false
end

-- The floor the client names: of the n surfaces read, those whose area (the WMO group's WMOAreaTable row, maps with
-- areas: Path.AreaFormat; its English name Path.AreaName) is named as the client's subzone (the Undercity's "The
-- Canals", its quarters, the "Ruins of Lordaeron" hall over them), when they lie within ZTOL: the lowest. nil when the
-- map has no areas, the client names no subzone, or no surface or surfaces on several floors match (an area shared
-- by two levels: movement decides). English names only: on another client's language no subzone matches until
-- Polestar_Names carries WMOAreaTable names, and movement decides as before.
function named(P, pc, n)
	if not (P.AreaFormat and P.AreaFormat(pc)) then return nil end
	local C = ns.Compat
	local sub = C and C.GetZoneText and select(2, C.GetZoneText())
	if not sub then return nil end
	local lo, hi = huge, -huge
	for i = 1, n do
		local id = surfArea[i]
		isNamed[i] = false
		if id and id ~= 0 then
			local name = areaNames[id]
			if name == nil then
				name = P.AreaName and P.AreaName(pc, id) or false
				areaNames[id] = name
			end
			if name == sub then
				isNamed[i] = true
				local z = surf[i]
				if z < lo then lo = z end
				if z > hi then hi = z end
			end
		end
	end
	if lo == huge then return nil end
	if hi - lo > ZTOL then return nil, true end
	return lo
end

-- The subzone names surfaces on several levels (the Undercity's hall at 62 and its gallery at 74, both "Ruins of
-- Lordaeron"; the Trade Quarter's ring, walkway and canal): the candidate floors are kept to those levels (seeded from
-- them when none is), so the planner and the searches from the player know at least which part of the city it is.
function restrict(n)
	local kept = 0
	for j = 1, candN do
		local c, ok = cand[j], false
		for i = 1, n do
			if isNamed[i] and abs(surf[i] - c) <= ZTOL then ok = true end
		end
		if ok then
			kept = kept + 1
			cand[kept], candMiss[kept] = c, candMiss[j]
		end
	end
	for j = kept + 1, candN do cand[j], candMiss[j] = nil, nil end
	candN = kept
	if candN == 0 then
		for i = 1, n do
			if isNamed[i] then
				local z, near = surf[i], false
				for j = 1, candN do
					if abs(cand[j] - z) <= ZTOL then near = true end
				end
				if not near then
					candN = candN + 1
					cand[candN], candMiss[candN] = z, 0
				end
			end
		end
	end
	candIndoor = true
end

function track(P, pc, px, py)
	local now = GetTime()
	aimAt = now
	if pc == fC and now - fAt < EVERY then return end
	local dx, dy = px - fX, py - fY
	local d2 = dx * dx + dy * dy
	local T = Nav.travel
	local ghost = T and T.IsGhost and T.IsGhost() or false
	local held = carried(pc, px, py)
	if held or pc ~= fC or ghost ~= fGhost or d2 > JUMP * JUMP or (d2 >= MOVE * MOVE and now - fAt > FRESH) then
		floorZ = nil
		dropCandidates()
	elseif d2 < MOVE * MOVE then
		fAt = now
		return
	end
	if held then
		fC, fX, fY, fAt, fGhost = pc, px, py, now, ghost
		return
	end
	-- Decoded clusters only: nil queues the cluster's decode under the router's
	-- frame budget (Path.Prefetch), and the floor is kept meanwhile, checked
	-- now but read where it was (so the JUMP and NEAR checks still count from
	-- there). An error is unknown.
	local ok, n = pcall(P.SurfacesAt, pc, px, py, surf, surfArea)
	if ok and n == nil then
		fC, fAt, fGhost = pc, now, ghost
		return
	end
	fC, fX, fY, fAt, fGhost = pc, px, py, now, ghost
	if not ok then
		floorZ = nil
		dropCandidates()
	elseif floorZ == nil then
		-- Candidates being followed decide (a cell whose one level is the hall above, the street missing under it,
		-- is no seed for a player followed on the street); else seed, and the candidates start where it cannot tell.
		-- The client's subzone first, where the map names each floor's area; else movement.
		local z, several = named(P, pc, n)
		if several then restrict(n) end
		if z ~= nil then
			floorZ = z
			dropCandidates()
		elseif candN > 0 then
			floorZ = candidates(n)
		else
			floorZ = seed(n)
			if floorZ == nil then candidates(n) end
		end
		if floorZ ~= nil and flatAt and now - flatAt <= REASK then flatAt, floorAsk = nil, true end
		-- Still unknown, indoors: a path asked without a height that starts on no candidate floor left (the
		-- entrance hall over the Trade Quarter, ruled out a few steps on) is asked again from those left.
		if floorZ == nil and flatAt and candIndoor and count > 1 and type(ptsZ[2]) == "number" then
			local on = false
			for j = 1, candN do
				if abs(cand[j] - ptsZ[2]) <= ZTOL then on = true end
			end
			if not on then flatAt, floorAsk = nil, true end
		end
	else
		-- Known: followed, unless the client's subzone names another floor here (a floor found by elimination on
		-- the wrong level, or a fall the follow missed).
		local z = named(P, pc, n)
		if z ~= nil and abs(z - floorZ) > ZTOL then floorZ = z else floorZ = follow(n) end
	end
end

-- The router may drop the cluster the floor reads (at rest it keeps only
-- that one): no target, or no Walk.Aim for FRESH seconds.
release = function()
	aimAt = nil
	local P = Nav.Path
	if P and P.ReleaseSurfaces then pcall(P.ReleaseSurfaces) end
end

-- The tracked floor under (px, py) on pc: known, checked within FRESH
-- seconds and read within NEAR yards of it; else nil.
function trackedZ(pc, px, py)
	if floorZ == nil or fC ~= pc or GetTime() - fAt > FRESH then return nil end
	local dx, dy = px - fX, py - fY
	if dx * dx + dy * dy > NEAR * NEAR then return nil end
	return floorZ
end

-- The height a walk from the player at (px, py) starts from: the client's,
-- else the tracked floor; nil, tracked.
function startZ(pc, px, py)
	local z = playerZ(pc)
	if z ~= nil then return z, false end
	z = trackedZ(pc, px, py)
	return z, z ~= nil
end

-- While the floor is unknown indoors: the candidate floors (a new list) the player stands on one of, checked within
-- FRESH seconds and read within NEAR yards; nil otherwise. A search from the player starts only on surfaces near them
-- (Path.Find's from.floors): in the Undercity its canals and streets, never the roofs or the Ruins over them.
function startFloors(pc, px, py)
	if floorZ ~= nil or candN == 0 or not candIndoor or fC ~= pc or GetTime() - fAt > FRESH then return nil end
	local dx, dy = px - fX, py - fY
	if dx * dx + dy * dy > NEAR * NEAR then return nil end
	local out = {}
	for j = 1, candN do out[j] = cand[j] end
	return out
end

-- While the floor is unknown indoors: the floors the player may be on (a new list, Nav/Travel.lua: a chain node with
-- a height holds the start when every one of them lies on its floor), or nil.
function Walk.Floors(pc, px, py)
	return startFloors(pc, px, py)
end

-- The player's floor at (px, py) on pc for the planner (Nav/Travel.lua: a crossing end with a height is reached
-- only on its floor): the client's height, else the tracked floor; nil while unknown.
function Walk.Floor(pc, px, py)
	return (startZ(pc, px, py))
end

-- The target's height when the goal (c, x, y) is the target's own point.
function targetZ(c, x, y)
	local tc, tx, ty, tz = Nav.GetTargetWorld()
	if tz == nil or tc ~= c then return nil end
	local dx, dy = x - tx, y - ty
	if dx * dx + dy * dy > GOAL_MOVED * GOAL_MOVED then return nil end
	return tz
end

-- A path searched with height z that ends on another floor: its last engine
-- point before the goal (the last point is the goal itself) is more than
-- Z_OFF yards from z.
function offFloor(points, z)
	for i = #points - 1, 2, -1 do
		local pz = type(points[i]) == "table" and points[i].z
		if type(pz) == "number" then return abs(pz - z) > Z_OFF end
	end
	return false
end

-- flat: the retry without the tracked floor. A search with it that finds
-- nothing is asked again without it (the goal's height kept); one with the
-- goal's height that finds nothing or ends off its floor, again without that
-- (Z2, for good), the start as it was.
function ask(P, pc, px, py, flat)
	wanted = true
	if inCombat() then return end -- after combat, on the next sample
	wanted = false
	askedAt, failed = GetTime(), false
	cancel()
	if P.Available and not P.Available(pc) then
		failed, failAt, failX, failY = true, askedAt, px, py
		return
	end
	local mine = {}
	token = mine
	local ghost = Nav.travel and Nav.travel.IsGhost and Nav.travel.IsGhost() or false
	local z = gz
	local sz, tracked = startZ(pc, px, py)
	if flat and tracked then sz, tracked = nil, false end
	-- The floor unknown indoors: from the candidate floors; a search with them that finds nothing is asked flat.
	local floors = sz == nil and not flat and startFloors(pc, px, py) or nil
	if floors then tracked = true end
	-- A start without a height (not the retry that dropped the floor) owes one re-ask once the floor is found.
	floorAsk = false
	if sz == nil and not flat then flatAt = GetTime() else flatAt = nil end
	local o = opts(ghost, pc, px, py, gx, gy) -- a ghost walks on water
	local ok, handle = pcall(P.Find, pc, { x = px, y = py, z = sz, floors = floors }, { x = gx, y = gy, z = z }, function(points, _, answer)
		if token ~= mine then return end
		token, job = nil, nil
		dropSketch()
		local got = type(points) == "table" and #points > 0
		if tracked and not got then
			ask(P, pc, px, py, true)
			return
		end
		if z and (not got or offFloor(points, z)) then
			gz = nil
			ask(P, pc, px, py, flat)
			return
		end
		if got then
			failed = false
			took(points)
			local h = type(answer) == "table" and answer.hubs
			hubs = type(h) == "table" and #h > 0 and h or nil
			if Walk.Split then Walk.Split() end
		else
			failed, failAt, failX, failY = true, GetTime(), px, py
			count, hubs, shape = 0, nil, nil
			restore(gc, gx, gy)
		end
		changed()
		pumpLegs()
	end, o)
	if not ok then
		token = nil
		if tracked then return ask(P, pc, px, py, true) end
		if z then
			gz = nil
			return ask(P, pc, px, py, flat)
		end
		failed, failAt, failX, failY = true, askedAt, px, py
		return
	end
	if token == mine then job = handle end
	-- No path yet: the walk's shape at once (Path.FindCoarse across clusters), drawn until the path is in.
	if count == 0 and not shape and P.FindCoarse then
		local okShape, h = pcall(P.FindCoarse, pc, { x = px, y = py, z = sz }, { x = gx, y = gy, z = z }, function(points)
			if token ~= mine then return end
			sketchJob = nil
			if type(points) ~= "table" or count > 0 then return end
			local xs, ys, n = line(points)
			if n < 2 then return end
			shape = { xs = xs, ys = ys, n = n }
			changed()
		end, o)
		if okShape and token == mine then sketchJob = h end
	end
end

-- The current step's baked leg (Nav/Baked.lua) as the path to the goal just
-- taken, from the player's place on it: the nearest point of the leg, then
-- its points after that. Taken when the leg is on the player's continent,
-- ends at this goal (its last point within its tail and BAKED_END yards of
-- it) and the player is within STRAY yards of it; else false (search as
-- before). Straying from it later asks for a search like any path (Walk.Aim).
BAKED_END = 3 -- yards: a leg's end this much past its tail is another goal's
function takeBaked(pc, px, py)
	local E = ns.Engine
	local step = E and E.GetStepIndex and E.GetStepIndex()
	local leg = step and Nav.BakedLeg and Nav.BakedLeg(step)
	if not (leg and leg.c == pc and leg.n >= 2) then return false end
	local n, xs, ys, zs = leg.n, leg.xs, leg.ys, leg.zs
	local ex, ey, reach = xs[n] - gx, ys[n] - gy, leg.left[n] + BAKED_END
	if ex * ex + ey * ey > reach * reach then return false end
	local best, bk, bt = huge, 1, 0
	for k = 1, n - 1 do
		local ax, ay = xs[k], ys[k]
		local dx, dy = xs[k + 1] - ax, ys[k + 1] - ay
		local len2 = dx * dx + dy * dy
		local t = len2 > 0 and ((px - ax) * dx + (py - ay) * dy) / len2 or 0
		if t < 0 then t = 0 elseif t > 1 then t = 1 end
		local qx, qy = ax + dx * t - px, ay + dy * t - py
		local d = qx * qx + qy * qy
		if d < best then best, bk, bt = d, k, t end
	end
	if best > STRAY * STRAY then return false end
	local za, zb = zs[bk], zs[bk + 1]
	ptsX[1], ptsY[1], ptsZ[1] = xs[bk] + (xs[bk + 1] - xs[bk]) * bt, ys[bk] + (ys[bk + 1] - ys[bk]) * bt, za + (zb - za) * bt
	local m = 1
	for k = bk + 1, n do
		m = m + 1
		ptsX[m], ptsY[m], ptsZ[m] = xs[k], ys[k], zs[k]
	end
	for i = m + 1, count do ptsX[i], ptsY[i], ptsZ[i] = nil, nil, nil end
	count = m
	left[m + 1] = nil
	left[m] = leg.left[n]
	for i = m - 1, 1, -1 do
		local dx, dy = ptsX[i + 1] - ptsX[i], ptsY[i + 1] - ptsY[i]
		left[i] = left[i + 1] + sqrt(dx * dx + dy * dy)
	end
	idx, failed, wanted, hubs = 1, false, false, nil
	Nav.follow.Reset(fstate)
	if Walk.Split then Walk.Split() end
	changed()
	pumpLegs()
	return true
end

function Walk.Aim(pc, px, py, goalC, goalX, goalY, handmade, goalZ, stop)
	local P = engine()
	if P and P.SurfacesAt and pc then track(P, pc, px, py) end
	if handmade or not P or pc ~= goalC then
		if gc then Walk.Clear() end
		return nil
	end
	local tz = (type(goalZ) == "number" and goalZ) or targetZ(goalC, goalX, goalY) or false
	if gc ~= goalC or gx == nil or tz ~= gzFor or (goalX - gx) * (goalX - gx) + (goalY - gy) * (goalY - gy) > GOAL_MOVED * GOAL_MOVED then
		local had = count > 0 or shape ~= nil
		cancel()
		gc, gx, gy, count, idx, failed, hubs, shape = goalC, goalX, goalY, 0, 1, false, nil, nil
		Nav.follow.Reset(fstate)
		gzFor, gz = tz, tz or nil
		askedAt = -huge
		if had then changed() end
		if not takeBaked(pc, px, py) then ask(P, pc, px, py) end
	elseif floorAsk then
		-- Ruling 36b: arrived (login, hearth, a landing) or off ambiguous ground,
		-- the floor found after a search without a height: once more with it.
		floorAsk = false
		ask(P, pc, px, py)
	elseif failed then
		local dx, dy = px - failX, py - failY
		if GetTime() - failAt >= FAIL_RETRY and dx * dx + dy * dy > FAIL_MOVED * FAIL_MOVED then ask(P, pc, px, py) end
	elseif wanted then
		ask(P, pc, px, py)
	end
	if count == 0 then return nil end

	-- Outdoors, the path's first turn near its start (joining a road) may be cut
	-- (Nav/Follow.lua `join`); indoors every turn is a wall's.
	local join = not (IsIndoors and IsIndoors()) and JOIN or nil
	local ax, ay = Nav.follow.Step(ptsX, ptsY, ptsZ, left, count, fstate, px, py, stop, join)
	idx = fstate.idx
	if not ax then
		lastLeft = nil
		return nil
	end
	-- Yards left: straight to the end of the segment the player is on, then along the path.
	local ix, iy = ptsX[idx] or ptsX[count], ptsY[idx] or ptsY[count]
	local dx, dy = ix - px, iy - py
	lastLeft = sqrt(dx * dx + dy * dy) + left[idx <= count and idx or count]
	-- Re-ask only when the player has strayed from the path: walking beside it,
	-- or coming at it from the side, is the follower's to handle. (A stale path
	-- left behind the player cannot hold the arrow back: the follower's
	-- projection moves on with the player, and past WINDOW yards the player is
	-- off the path and STRAY asks again.)
	if fstate.off > STRAY and token == nil and not wanted and GetTime() - askedAt >= ASK_EVERY then ask(P, pc, px, py) end
	return pc, ax, ay, lastLeft
end

function isGoal(c, x, y)
	return count > 0 and gc == c and (x - gx) * (x - gx) + (y - gy) * (y - gy) <= GOAL_MOVED * GOAL_MOVED
end

-- Yards left along the path to (c, x, y) at the last Aim, or nil (no path for it).
function Walk.Left(c, x, y)
	if not isGoal(c, x, y) then return nil end
	return lastLeft
end

-- At the last Aim for (c, x, y): yards along the path from its start to the
-- player's place on it, and yards between the player and that place; or nil.
function Walk.Progress(c, x, y)
	if not isGoal(c, x, y) or fstate.off == nil then return nil end
	return fstate.along, fstate.off
end

-- Has the player gone past segment `seg` of the path to (c, x, y)?
function Walk.Passed(c, x, y, seg)
	return seg ~= nil and isGoal(c, x, y) and idx > seg + 1
end

---------------------------------------------------------------------------
