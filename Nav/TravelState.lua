local ADDON, ns = ...
setfenv(1, ns._travelEnv)
---------------------------------------------------------------------------
-- Character state: known flight masters, bind location, speed, faction
---------------------------------------------------------------------------

function knownSet()
	local flags = ns.CharState().flags
	if type(flags.taxi) ~= "table" then flags.taxi = {} end
	return flags.taxi
end

playerFaction = 0
function refreshFaction()
	local C = ns.Compat
	local info = C and C.GetPlayerInfo and C.GetPlayerInfo()
	local f = info and info.faction
	playerFaction = f == "Alliance" and 1 or f == "Horde" and 2 or 0
end

function markByName(known, name)
	local ids = name and taxiByName[lower(name)]
	if not ids then return false end
	local added = false
	for _, id in ipairs(ids) do
		if allowed(taxi[id].faction, playerFaction, taxi[id].class) and not known[id] then
			known[id] = true
			added = true
		end
	end
	return added
end

-- Known nodes, plus any flight master the Engine recorded by name (flags.fp).
function knownNodes()
	local known = knownSet()
	local fp = ns.CharState().flags.fp
	if type(fp) == "table" then
		for name in pairs(fp) do markByName(known, name) end
	end
	return known
end

-- Flight masters this character knows: { [nodeID] = true } (read-only).
function Nav.GetKnownTaxiNodes()
	refreshFaction()
	return knownNodes()
end

-- Discovered states (Blizzard_APIDocumentationGenerated/TaxiMapDocumentation:
-- FlightPathState Current 0, Reachable 1, Unreachable 2). The flight map hides
-- Unreachable nodes unless a route passes through them, and the legacy taxi
-- frame hides DISTANT ones: neither proves the character discovered them.
function discoveredState(state)
	local S = Enum and Enum.FlightPathState
	local current = S and S.Current or 0
	local reachable = S and S.Reachable or 1
	return state == current or state == reachable
end
DISCOVERED_TYPE = { CURRENT = true, REACHABLE = true, UNREACHABLE = true }

-- The flight map lists the nodes this character knows on that continent.
function recordTaxiMap()
	refreshFaction()
	local known = knownSet()
	local added = false
	local mapID = GetTaxiMapID and GetTaxiMapID()
	if mapID and C_TaxiMap and C_TaxiMap.GetAllTaxiNodes then
		local ok, list = pcall(C_TaxiMap.GetAllTaxiNodes, mapID)
		if ok and type(list) == "table" then
			for _, info in ipairs(list) do
				local id = type(info) == "table" and info.nodeID
				if id and taxi[id] and not known[id] and discoveredState(info.state) then
					known[id] = true
					added = true
				end
			end
		end
	end
	if NumTaxiNodes and TaxiNodeName and TaxiNodeGetType then
		for i = 1, NumTaxiNodes() or 0 do
			if DISCOVERED_TYPE[TaxiNodeGetType(i)] and markByName(known, TaxiNodeName(i)) then added = true end
		end
	end
	return added
end

function runSpeed()
	local fn = ns.Compat and ns.Compat.GetRunSpeed
	local ok, s
	if fn then
		ok, s = pcall(fn)
	elseif GetUnitSpeed then
		ok, s = pcall(function()
			local _, run = GetUnitSpeed("player")
			if type(run) ~= "number" then return nil end
			return run + 0
		end)
	end
	if not ok or type(s) ~= "number" or s < MIN_SPEED then return RUN_SPEED end
	if s > MAX_SPEED then return MAX_SPEED end
	return s
end

function hearthReady()
	local C = ns.Compat
	if not (C and C.GetItemCount) or (C.GetItemCount(HEARTH_ITEM) or 0) < 1 then return false end
	local fn = (C_Container and C_Container.GetItemCooldown) or (C_Item and C_Item.GetItemCooldown) or GetItemCooldown
	if not fn then return true end
	local ok, start, duration = pcall(fn, HEARTH_ITEM)
	if not ok or type(start) ~= "number" or type(duration) ~= "number" then return true end
	if start > 0 and duration > GCD and start + duration > GetTime() then return false end
	return true
end

-- The inn the bind location stands for: the one learned when the character
-- bound there (flags.inn, from the innkeeper), else the inn whose area
-- (`area`, C_Map.GetAreaInfo) the client names so, in its language, else
-- the inn of that English name. Returns the inn (or nil) and the location.
function bindInn()
	local C = ns.Compat
	local loc = C and C.GetBindLocation and C.GetBindLocation()
	if not loc then return nil end
	local key = lower(loc)
	local learned = ns.CharState().flags.inn
	local npc = type(learned) == "table" and learned[key]
	local inn = npc and innByNpc[npc]
	if not inn and C.GetAreaName then
		for _, candidate in ipairs(inns) do
			local name = C.GetAreaName(candidate.area)
			if name and lower(name) == key then
				inn = candidate
				break
			end
		end
	end
	return inn or innByName[key], loc
end

-- The inn an innkeeper (NPC ID) or a bind location name ("Darkshire")
-- stands for, or nil: what the Engine's located `sethome` means.
function Nav.FindInn(npc, name)
	return (npc and innByNpc[npc]) or (type(name) == "string" and innByName[lower(name)]) or nil
end

-- The inn this character is bound at (bindInn), or nil.
function Nav.BoundInn()
	return (bindInn())
end

-- Bound at an innkeeper: remember which inn that bind location means.
function onBound()
	local C = ns.Compat
	local loc = C and C.GetBindLocation and C.GetBindLocation()
	if loc then
		local npc = C.GetNpcID and C.GetNpcID("npc")
		local inn = npc and innByNpc[npc]
		if not inn and C.GetPlayerWorldPosition then
			local pc, px, py = C.GetPlayerWorldPosition()
			local best = BIND_MATCH
			for _, candidate in ipairs(inns) do
				local d = yards(pc, px, py, candidate.c, candidate.wx, candidate.wy)
				if d <= best then
					best, inn = d, candidate
				end
			end
		end
		if inn then
			local flags = ns.CharState().flags
			if type(flags.inn) ~= "table" then flags.inn = {} end
			flags.inn[lower(loc)] = inn.npc
		end
	end
	Travel.Replan()
end

---------------------------------------------------------------------------
-- The live route
---------------------------------------------------------------------------

legs = legs          -- current plan, or nil
ci = 1        -- current leg
boarded = false
boardDeadline = 0
floorless = false -- the plan was made with the player's floor unknown (Walk.Floor, Walk.Floors): planned again once it is known
atLift = false -- the walk the arrow is on ends at a lift and the player is at its landing (boardingRide)
dirty = false
wasTaxi = false
lastHearth = lastHearth
planSpeed = RUN_SPEED
planAt, planC, planX, planY = 0, nil, 0, 0 -- when and where the route was planned
lastMoveCheck = 0
skipFor = skipFor      -- the target the skipped legs below were for
skipped = { hearth = false, spells = {}, transports = {}, taxi = {}, cross = {} } -- left out of its plans
progressYards = progressYards -- yards left on the current walk leg at the last Aim (nil: not measured)
legSince = 0 -- GetTime() when the current leg became current
remeasureOwed = false -- the engine's measures came in on a flight or boat: weighed after it
walkHooks = {} -- Travel.WalkCostHook's rules, in the order registered

-- A planner rule that scales walk costs:
-- fn(walk, cost) -> cost, called for every walk the planner weighs, with
-- walk = { from = { c, wx, wy }, to = { c, wx, wy }, seconds } and the walk's
-- cost in the planner's seconds; it changes which way is taken, never a time.
-- The next plan uses it (Travel.Replan to plan again now).
function Travel.WalkCostHook(fn)
	if type(fn) == "function" then walkHooks[#walkHooks + 1] = fn end
end

-- The same hostile towns, by id, in order (a fresh search gives a new table).
function sameHubs(a, b)
	local na, nb = a and #a or 0, b and #b or 0
	if na ~= nb then return false end
	for i = 1, na do
		if type(a[i]) ~= "table" or type(b[i]) ~= "table" or a[i].id ~= b[i].id then return false end
	end
	return true
end

-- "Hostile town: <names>" for a walk whose engine path enters the other
-- faction's towns (leg.hubs, from Find's job.hubs), else nil. Each town is
-- named in the client's language by its area (Compat.GetAreaName(areaId)),
-- else by the packed English name; each shown name once (two towns can
-- share one).
function Travel.HubText(leg)
	local hubs = type(leg) == "table" and leg.hubs
	if type(hubs) ~= "table" or #hubs == 0 then return nil end
	local C = ns.Compat
	local names, seen = {}, {}
	for _, h in ipairs(hubs) do
		local name = type(h) == "table" and (C and C.GetAreaName and C.GetAreaName(h.areaId) or h.name)
		if type(name) == "string" and name ~= "" and not seen[name] then
			seen[name] = true
			names[#names + 1] = name
		end
	end
	if #names == 0 then return nil end
	return format(L["Hostile town: %s"], table.concat(names, ", "))
end

-- The warning the arrow says once when a walk starts: the current walk's
-- hostile towns, the first time they are asked for that walk (its end and
-- the towns), until the target changes; else nil.
warned, warnedFor = {}, nil
function Travel.TakeWarning()
	local leg = legs and legs[ci]
	if not (leg and leg.kind == "walk") then return nil end
	local text = Travel.HubText(leg)
	if not text then return nil end
	local target = Nav.GetTarget()
	if target ~= warnedFor then warned, warnedFor = {}, target end
	-- The whole walk's end: a split walk's pieces all carry its towns, said once.
	local to = (leg.parent and leg.parent.leg or leg).to
	local key = to.c .. ":" .. floor(to.wx + 0.5) .. ":" .. floor(to.wy + 0.5) .. ":" .. text
	if warned[key] then return nil end
	warned[key] = true
	return text
end

-- The player's uiMap (the zone crossings are looked up in), or nil.
function playerMap()
	local C = ns.Compat
	if not (C and C.GetPlayerMapPosition) then return nil end
	local ok, map = pcall(C.GetPlayerMapPosition)
	return ok and map or nil
end

function onTaxi()
	local C = ns.Compat
	return C and C.IsOnTaxi and C.IsOnTaxi() or false
end

-- A ghost walks: no flights, rides, portals, hearth or teleports.
function isGhost()
	return UnitIsGhost ~= nil and UnitIsGhost("player") == true
end
Travel.IsGhost = isGhost

function transitNow()
	local X = ns.Transit
	if X and X.Now then return X.Now() end
	return GetServerTime and GetServerTime() or 0
end

-- The timetables' waits for the planner (Nav/Transit.lua), counted from when
-- the player gets to the dock; nil without them (the average waits). A
-- timetable that raises or answers nonsense never breaks planning: that
-- ride falls back to its average wait (review P0-1).
function departureFn()
	local X = ns.Transit
	if not (X and X.NextDeparture) then return nil end
	local now = transitNow()
	local next = X.NextDeparture
	return function(t, side, after)
		local ok, wait, ride = pcall(next, t.kind, t.id, now + after, side)
		if ok and type(wait) == "number" and type(ride) == "number" and wait >= 0 and ride >= 0
			and wait < huge and ride < huge then
			return wait, ride
		end
		return nil
	end
end

-- Class teleports this character can cast now or soon (Nav/Transit.lua), or nil.
function teleportList()
	local X = ns.Transit
	if not (X and X.Teleports) then return nil end
	local ok, list = pcall(X.Teleports, transitNow())
	return ok and type(list) == "table" and list or nil
end

-- Each leg's rest: the seconds after it.
function setRests()
	local rest = 0
	for k = #legs, 1, -1 do
		legs[k].rest = rest
		rest = rest + legs[k].seconds
	end
end

-- Later rides' timetable waits again, from when the player now reaches their
-- docks: a walk before them priced by its path arrives earlier or later than
-- the plan's straight estimate did. The current leg counts whole.
function retime()
	local dep = departureFn()
	if not dep then return end
	local after = legs[ci] and legs[ci].seconds or 0
	for k = ci + 1, #legs do
		local leg = legs[k]
		if leg.transport and leg.kind ~= "portal" then
			local wait, ride = dep(leg.transport, leg.side, after)
			if wait then leg.seconds = floor(wait + ride + 0.5) end
		end
		after = after + leg.seconds
	end
end

-- Walk legs after the current one take the measure of their engine path once
-- Nav/Walk.lua has searched it (Walk.LegPath): yards along it, seconds at run
-- speed; the rides after them are timed again (retime). Hand-made walks, the
-- pieces of a split walk and the last walk to a target after a guide `goto`
-- (walked straight from the mouth) keep theirs. -> true when a leg changed.
function pricePaths()
	local W = Nav.walk
	if not (legs and W and W.LegPath) then return false end
	local changed = false
	local gotoLast = W.FollowsGoto and W.FollowsGoto(Nav.GetTarget())
	for k = ci + 1, #legs do
		local leg = legs[k]
		if leg.kind == "walk" and leg.engine ~= "path" and not leg.handmade and not leg.parent and not (gotoLast and k == #legs) then
			local yd, hubs = W.LegPath(leg.from, leg.to)
			if yd then
				leg.yards, leg.seconds, leg.engine, leg.hubs = floor(yd + 0.5), floor(yd / RUN_SPEED + 0.5), "path", hubs
				changed = true
			end
		end
	end
	if changed then
		retime()
		setRests()
	end
	return changed
end

-- The plan's p.walkDanger: the danger table at the player's level
-- (Nav/Danger.lua), without the player's and the target's zones (as the
-- engine's walks leave out their start's and goal's); nil when no zone
-- counts, and with routing off or handed to Shortest Path Forever (the
-- engine, once loaded, stays: its zones would still be read), so turning
-- routing off brings back today's estimates at once.
function walkDanger(pc, px, py, tc, tx, ty)
	if not ns.Get("nav.navRouting") or Nav.HandedOff() then return nil end
	local D = Nav.danger
	local level = D and D.Level()
	local danger = level and D.Table(level, D.ZoneAt(pc, px, py), D.ZoneAt(tc, tx, ty))
	if not danger then return nil end
	return function(c, x1, y1, x2, y2) return D.Along(danger, c, x1, y1, x2, y2) end
end

-- A plan from where the player stands to the target, or nil; and where from.
function plan(target)
	-- Handed to Shortest Path Forever (Nav/Handoff.lua): it plans the way; no route here.
	if not (target and ns.Get("nav.travel") and not Nav.HandedOff() and #taxiList + #transports + #portals + #inns + pathCount + #crossEnds + #chains > 0) then return nil end
	local tc, twx, twy, tz = Nav.GetTargetWorld()
	local C = ns.Compat
	local pc, px, py
	if C and C.GetPlayerWorldPosition then pc, px, py = C.GetPlayerWorldPosition() end
	if not (tc and pc) then return nil end
	refreshFaction()
	planSpeed = runSpeed()
	lastHearth = hearthReady()
	local ghost = isGhost()
	local inn, bindName
	if lastHearth and not ghost then inn, bindName = bindInn() end
	-- The walks to the target the walking engine measured, and the places it measures next (Nav/Walk.lua).
	local W = Nav.walk
	local places = W and W.Measure and {} or nil
	local pz, pfloors = W and W.Floor and W.Floor(pc, px, py) or nil, W and W.Floors and W.Floors(pc, px, py) or nil
	floorless = pz == nil and pfloors == nil
	local route = Nav.PlanRoute({
		c = pc, wx = px, wy = py, map = playerMap(), z = pz, floors = pfloors,
		target = { c = tc, wx = twx, wy = twy, z = tz, label = target.label, map = target.map, x = target.x, y = target.y, f = target.f, kind = target.kind },
		faction = playerFaction,
		known = knownNodes(),
		-- Walk edges are priced unmounted: straight lines may cross water, and a
		-- mount's speed would make swimming a sea look faster than the boat.
		-- planSpeed (the live speed) only scales the ETA of the current walk.
		speed = RUN_SPEED,
		hearth = inn,
		hearthName = bindName,
		noHearth = skipped.hearth,
		skip = skipped,
		teleports = not ghost and teleportList() or nil,
		departure = departureFn(),
		walkOnly = ghost,
		walkCost = W and W.Measured and W.Measured(tc, twx, twy, ghost) or nil,
		walkHooks = walkHooks,
		walkDanger = walkDanger(pc, px, py, tc, twx, twy),
		places = places,
	})
	if places then W.Measure(tc, twx, twy, ghost, places) end
	return route, pc, px, py
end

function Travel.Replan()
	if onTaxi() then
		dirty = true
		return
	end
	local old = legs
	legs, ci, boarded, dirty, progressYards, legSince, remeasureOwed = nil, 1, false, false, nil, GetTime(), false
	local target = Nav.GetTarget()
	if skipFor ~= target then
		skipFor = nil
		skipped = { hearth = false, spells = {}, transports = {}, taxi = {}, cross = {} }
	end
	local pc, px, py
	legs, pc, px, py = plan(target)
	if pc then planAt, planC, planX, planY = GetTime(), pc, px, py end
	pricePaths()
	Travel.version = Travel.version + 1
	if old or legs then ns.Fire("ROUTE_CHANGED", legs) end
end

-- Legs of the current route (read-only) and the current leg's index.
function Nav.GetRoute()
	return legs, legs and ci or nil
end

---------------------------------------------------------------------------
