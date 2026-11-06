local ADDON, ns = ...
setfenv(1, ns._travelEnv)
-- Estimates for other modules (the Engine picks the nearest trainer, vendor
-- or inn with it; Polestar.Nav.API.Estimate). Same costs as the live route:
-- known flights, transports, and the Hearthstone when it is ready and the
-- trip starts at the player. Never touches the active route or fires
-- messages. Each answer the cache lacks is a full plan (up to 40 ms), so:
-- cached per (start cell, destination) for a few seconds (a burst of ~10
-- calls on a step change plans each candidate once), the oldest entry
-- evicted when 64 are held. A `budgeted` call (only the public API's, for
-- other addons) starts no new plan once this frame has spent ESTIMATE_MS
-- planning estimates and answers nil, "busy" until the next frame; the plan
-- it does start may still run to its 40 ms cap (security L6). Polestar's own
-- callers are never refused: a ranking compares full plans only, bounded by
-- its own caps and the cache (second review P2).
---------------------------------------------------------------------------

CACHE_SECONDS, CACHE_CELL, CACHE_MAX = 5, 25, 64
ESTIMATE_MS = 25
estimates, estimateOrder = {}, {}
budgetFrame, budgetSpent = nil, 0

function pointWorld(p)
	if type(p) ~= "table" then return nil end
	if p.c and p.wx and p.wy then return p.c, p.wx, p.wy end
	local C = ns.Compat
	if not (C and C.MapToWorld and p.map and p.x and p.y) then return nil end
	return C.MapToWorld(p.map, p.x, p.y, p.f)
end

-- from, to = { map, x, y, f } (from = nil: the player); budgeted = true: the public API's call;
-- noHearth = true: the way without the Hearthstone (the Engine's hearth goal weighs the two)
--   -> seconds | nil (unknown position or unreachable) | nil, "busy" (budgeted, this frame's budget is spent)
function Nav.EstimateTravel(from, to, budgeted, noHearth)
	local tc, twx, twy = pointWorld(to)
	if not tc then return nil end
	local fc, fwx, fwy
	if from == nil then
		local C = ns.Compat
		if C and C.GetPlayerWorldPosition then fc, fwx, fwy = C.GetPlayerWorldPosition() end
	else
		fc, fwx, fwy = pointWorld(from)
	end
	if not fc then return nil end
	-- The level too: the plan's walk danger is the level's (Nav/Danger.lua).
	local D = Nav.danger
	local key = format("%d:%d:%d>%d:%.1f:%.1f:%d:%d", fc, floor(fwx / CACHE_CELL), floor(fwy / CACHE_CELL),
		tc, twx, twy, from ~= nil and 0 or noHearth and 2 or 1, D and D.Level() or 0)
	local now = GetTime()
	local hit = estimates[key]
	if hit and now - hit.at < CACHE_SECONDS then return hit.seconds end
	if budgetFrame ~= now then budgetFrame, budgetSpent = now, 0 end
	if budgeted and budgetSpent >= ESTIMATE_MS then return nil, "busy" end
	local clock = debugprofilestop
	local t0 = clock and clock()
	refreshFaction()
	local ghost = from == nil and isGhost()
	local inn, bindName
	if from == nil and not ghost and not noHearth and hearthReady() then inn, bindName = bindInn() end
	local plan = Nav.PlanRoute({
		c = fc, wx = fwx, wy = fwy, map = from == nil and playerMap() or from.map,
		target = { c = tc, wx = twx, wy = twy, map = to.map },
		faction = playerFaction,
		known = knownNodes(),
		speed = RUN_SPEED,
		hearth = inn,
		hearthName = bindName,
		teleports = from == nil and not ghost and teleportList() or nil,
		departure = departureFn(),
		walkOnly = ghost,
		-- The same way the plan takes (its walks through zones far above dearer).
		walkDanger = walkDanger(fc, fwx, fwy, tc, twx, twy),
	})
	if t0 then budgetSpent = budgetSpent + (clock() - t0) end
	local seconds
	if plan then seconds = plan[1] and (plan[1].seconds + plan[1].rest) or 0 end
	if not hit then
		if #estimateOrder >= CACHE_MAX then estimates[table.remove(estimateOrder, 1)] = nil end
		estimateOrder[#estimateOrder + 1] = key
	end
	estimates[key] = { at = now, seconds = seconds }
	return seconds
end

-- A route worth following: more than one leg. A lone walk is the direct arrow.
function Travel.Active()
	return legs ~= nil and #legs > 1 and ci <= #legs
end

function Travel.CurrentLeg()
	return legs and legs[ci]
end

-- The walk the arrow is on ends at a lift's landing and the player stands
-- within LIFT_LEAVE of it: the lift ride (the next leg), shown in its place.
function boardingRide(leg)
	local ride = legs and legs[ci + 1]
	local f, t = ride and ride.from, leg and leg.to
	if not (leg and leg.kind == "walk" and ride and ride.kind == "lift" and f and t and f.c == t.c and f.wx == t.wx and f.wy == t.wy) then return nil end
	local C = ns.Compat
	local pc, px, py
	if C and C.GetPlayerWorldPosition then pc, px, py = C.GetPlayerWorldPosition() end
	local to = leg.to
	if not pc or yards(pc, px, py, to.c, to.wx, to.wy) > LIFT_LEAVE then return nil end
	return ride
end

-- The current leg's caption, with the next departure while waiting for a
-- boat, zeppelin or tram, or at a lift (Nav/Transit.lua).
function departureCaption(leg)
	local X = ns.Transit
	if not (X and X.Caption) then return nil end
	if leg.transport and leg.kind ~= "portal" then
		-- At the dock (the boarded flag is set there too) or on the way: the next
		-- departure; once the ride has left the dock, nothing.
		if boarded then
			local C = ns.Compat
			local pc, px, py
			if C and C.GetPlayerWorldPosition then pc, px, py = C.GetPlayerWorldPosition() end
			local from = leg.from
			if not pc or yards(pc, px, py, from.c, from.wx, from.wy) > BOARD then return nil end
		end
		return X.Caption(leg.kind, leg.transport.id, transitNow(), leg.side)
	end
	if leg.crossing and X.LiftNear then
		local from = leg.from
		local lift = X.LiftNear(from.c, from.wx, from.wy)
		if lift then return X.Caption("lift", lift, transitNow(), nil) end
	end
	if leg.kind == "lift" and leg.lift then return X.Caption("lift", leg.lift, transitNow(), leg.side) end
	return nil
end

-- The current leg's instruction and caption; at a lift's landing, the ride's.
function Travel.CurrentLabel()
	local leg = legs and legs[ci]
	if not leg then return nil end
	leg = boardingRide(leg) or leg
	local caption = departureCaption(leg)
	if caption and leg.label then return leg.label .. "\n" .. caption end
	return caption or leg.label
end

-- Seconds to the target from here; `dist` = yards to the current aim when
-- walking, `measured` = true when dist is along a path (no detour added: review P2-5).
-- Other legs count down from when they became current, as Progress does
-- (second review P3).
function Travel.Remaining(dist, measured)
	local leg = legs and legs[ci]
	if not leg then return nil end
	local here = leg.seconds
	if leg.kind == "walk" then
		if dist then here = dist * (measured and 1 or WALK_DETOUR) / planSpeed end
	else
		here = here - (GetTime() - legSince)
		if here < 0 then here = 0 end
	end
	return here + leg.rest
end

-- The current leg only: seconds and yards left (a walk: along the walking
-- engine's path when it has one, else straight x1.25; other legs: the
-- planned seconds less the time since the leg became current, review P2-4;
-- a flight's since take-off). Allocation-free; always finite.
function Travel.Progress()
	local leg = legs and legs[ci]
	if not leg then return nil end
	if leg.kind == "walk" then
		local y = progressYards
		if ci == #legs or not y then
			local to = leg.to
			local W = Nav.walk
			y = W and W.Left(to.c, to.wx, to.wy)
			if not y then
				local C = ns.Compat
				local pc, px, py
				if C and C.GetPlayerWorldPosition then pc, px, py = C.GetPlayerWorldPosition() end
				local d = pc and yards(pc, px, py, to.c, to.wx, to.wy)
				y = d and d < huge and d * WALK_DETOUR or nil
			end
		end
		if y then return y / planSpeed, y end
	end
	local s = leg.seconds - (GetTime() - legSince)
	return s > 0 and s or 0, leg.yards
end

function advance()
	ci = ci + 1
	boarded, atLift = false, false
	progressYards, legSince = nil, GetTime()
	Travel.version = Travel.version + 1
	ns.Fire("ROUTE_ADVANCED", legs, ci)
end

---------------------------------------------------------------------------
-- Chokepoint steps: the walk the arrow is on, split where the walking
-- engine's path passes a lift, gate, bridge, tunnel, pass, or a cave or
-- building mouth (Nav/Walk.lua finds them). Each piece is a walk leg with a
-- caption and `step`/`choke`; a lift adds a ride leg (kind "lift").
---------------------------------------------------------------------------

HANDMADE_NEAR = 30 -- yards: a chokepoint (not a lift: its ride is a step of its own) this close to a crossing, chain node or goto keeps the hand-made caption
LIFT_SECONDS = 30  -- a lift's wait and ride without timetables

-- A lift ride's instruction, by the landing boarded.
RIDE = { bottom = L["Ride the elevator up"], top = L["Ride the elevator down"] }

-- An approach chain's hop between two neighbouring nodes whose floors lie 20 yd or more apart within 15 yd on the
-- map is a lift (the Undercity's fixed way in and out, its south lift): the hop becomes a lift ride leg ("Ride the
-- elevator up/down", Transit's lift id and timetable), and the walk to it says "Walk to the lift".
function chainLifts(route)
	if not route then return route end
	local X = ns.Transit
	local changed = false
	for k, leg in ipairs(route) do
		local a, b = leg.from, leg.to
		if leg.kind == "walk" and a and b and a.chain and a.chain == b.chain and (a.idx - b.idx == 1 or b.idx - a.idx == 1)
			and a.z and b.z and (a.z - b.z >= 20 or b.z - a.z >= 20) and yards(a.c, a.wx, a.wy, b.c, b.wx, b.wy) <= 15 then
			local side = a.z < b.z and "bottom" or "top"
			leg.kind, leg.label, leg.side = "lift", RIDE[side], side
			leg.lift = X and X.LiftNear and X.LiftNear(a.c, a.wx, a.wy) or nil
			leg.handmade, leg.waypoint, leg.radius, leg.step, leg.crossing = nil, nil, nil, nil, nil
			local wait, ride
			if leg.lift and X.NextDeparture then wait, ride = X.NextDeparture("lift", leg.lift, nil, side) end
			leg.seconds = (wait and ride) and floor(wait + ride + 0.5) or LIFT_SECONDS
			changed = true
			local before = route[k - 1]
			local bt = before and before.to
			if bt and before.kind == "walk" and bt.c == a.c and bt.wx == a.wx and bt.wy == a.wy then before.label = L["Walk to the lift"] end
		end
	end
	if changed then
		local rest = 0
		for k = #route, 1, -1 do
			route[k].rest = rest
			rest = rest + route[k].seconds
		end
	end
	return route
end

function Nav.PlanRoute(p)
	return chainLifts(planRoute(p))
end

CHOKE_TO = {
	gate = L["Through the gate into %s"],
	bridge = L["Cross the bridge to %s"],
	tunnel = L["Through the tunnel to %s"],
	pass = L["Through the pass to %s"],
	cave = L["Walk to the %s cave mouth"],
	building = L["Walk to the %s entrance"],
	lift = L["Walk to %s"],
}
CHOKE_IN = {
	gate = L["Through the gate in %s"],
	bridge = L["Cross the bridge in %s"],
	tunnel = L["Through the tunnel in %s"],
	pass = L["Through the pass in %s"],
	cave = L["Walk to the cave mouth in %s"],
	building = L["Walk to the entrance in %s"],
	lift = L["Walk to the lift in %s"],
}
CHOKE_BARE = {
	gate = L["Through the gate"],
	bridge = L["Cross the bridge"],
	tunnel = L["Through the tunnel"],
	pass = L["Through the pass"],
	cave = L["Walk to the cave mouth"],
	building = L["Walk to the entrance"],
	lift = L["Walk to the lift"],
}

function present(s)
	return type(s) == "string" and s ~= "" and s ~= "Unknown" and s or nil
end

-- The zone a stop lies in, for a caption without a place name.
function stopZone(s, c)
	local z = present(s.zone)
	if z then return z end
	local map = zoneOf(nil, c, s.wx, s.wy)
	if map then return present(zoneName(map)) end
	local here = playerMap()
	local C = ns.Compat
	return here and C and C.GetMapName and present(C.GetMapName(here)) or nil
end

-- A stop's caption: never empty, never "Unknown".
function stopLabel(s, c)
	local kind = CHOKE_BARE[s.kind] and s.kind or "pass"
	local place = s.kind == "lift" and present(s.name) or present(s.to) or present(s.name)
	if place then
		if s.kind == "lift" and (s.side == "top" or s.side == "bottom") then
			place = format(s.side == "top" and L["%s, Top"] or L["%s, Bottom"], place)
		end
		return format(CHOKE_TO[kind], place)
	end
	local zone = stopZone(s, c)
	if zone then return format(CHOKE_IN[kind], zone) end
	return CHOKE_BARE[kind]
end

-- A crossing, a chain node, or the walk's own hand-made end near (c, wx, wy).
function handmadeNear(c, wx, wy, whole)
	local to = whole.to
	if (whole.waypoint or whole.step == "goto") and yards(c, wx, wy, to.c, to.wx, to.wy) <= HANDMADE_NEAR then return true end
	for _, e in ipairs(crossEnds) do
		if yards(c, wx, wy, e.c, e.wx, e.wy) <= HANDMADE_NEAR then return true end
	end
	for _, ch in ipairs(chains) do
		for _, nd in ipairs(ch.nodes) do
			if yards(c, wx, wy, nd.c, nd.wx, nd.wy) <= HANDMADE_NEAR then return true end
		end
	end
	return false
end

-- The route's legs changed in place: each leg's rest again, and ROUTE_CHANGED.
function relink()
	setRests()
	progressYards = nil
	Travel.version = Travel.version + 1
	ns.Fire("ROUTE_CHANGED", legs)
end

-- Nav/Walk.lua has searched a later walk's path: the legs that walk it take
-- its measure (pricePaths). -> true when the route changed.
function Travel.PricePaths()
	if not pricePaths() then return false end
	Travel.version = Travel.version + 1
	ns.Fire("ROUTE_CHANGED", legs)
	return true
end

-- Split the current walk leg to (c, x, y), or the pieces it was split into
-- before, at `stops` (Nav/Walk.lua Walk.Stops; `total` = yards along the path
-- from the player to its end). Piece times are whole seconds that add up to
-- the path's time at run speed. With no stops the walk stays one leg and
-- takes the path's measure (yards, seconds), its straight estimate kept in
-- straightYards/straightSeconds for Travel.RestoreWalk (second review).
-- `hubs` = the other faction's towns the path enters (Find's job.hubs): on
-- the unsplit walk, or on every piece of the split one (the walk enters them).
-- -> true when the route changed.
function Travel.SplitWalk(c, x, y, stops, total, hubs)
	local leg = legs and legs[ci]
	if not leg or leg.kind ~= "walk" or leg.handmade or type(stops) ~= "table" then return false end
	local parent = leg.parent
	local whole = parent and parent.leg or leg
	local to = whole.to
	if to.c ~= c or (to.wx - x) * (to.wx - x) + (to.wy - y) * (to.wy - y) > 1 then return false end
	if type(hubs) ~= "table" or #hubs == 0 then hubs = nil end
	local kept = {}
	for _, s in ipairs(stops) do
		if s.kind == "lift" or not handmadeNear(c, s.wx, s.wy, whole) then kept[#kept + 1] = s end
	end
	if #kept == 0 and not parent then
		if type(total) ~= "number" or total ~= total or total < 0 or total == huge then return false end
		local py, ps = floor(total + 0.5), floor(total / RUN_SPEED + 0.5)
		if leg.yards == py and leg.seconds == ps and sameHubs(leg.hubs, hubs) then return false end
		if not leg.straightSeconds then leg.straightYards, leg.straightSeconds = leg.yards, leg.seconds end
		leg.yards, leg.seconds, leg.hubs = py, ps, hubs
		relink()
		return true
	end
	local P = { c = c, wx = x, wy = y, leg = whole }
	local pieces, from, doneYards, doneSecs = {}, leg.from, 0, 0
	local X = ns.Transit
	local now = transitNow()
	for _, s in ipairs(kept) do
		local at = point(nil, c, s.wx, s.wy)
		local secs = floor(s.along / RUN_SPEED + 0.5)
		pieces[#pieces + 1] = {
			kind = "walk", from = from, to = at, label = stopLabel(s, c), step = s.kind,
			choke = { kind = s.kind, name = present(s.to) or present(s.name) or stopZone(s, c) },
			radius = s.r, seg = s.seg, tail = total - s.along, parent = P,
			yards = floor(s.along - doneYards + 0.5), seconds = secs - doneSecs,
			hubs = hubs,
		}
		doneYards, doneSecs, from = s.along, secs, at
		if s.kind == "lift" then
			local other = point(nil, c, s.endX or s.wx, s.endY or s.wy)
			local wait, ride
			if X and X.NextDeparture and s.lift then wait, ride = X.NextDeparture("lift", s.lift, now + secs, s.side) end
			pieces[#pieces + 1] = {
				kind = "lift", from = at, to = other, parent = P, lift = s.lift, side = s.side,
				label = RIDE[s.side] or L["Ride the elevator"],
				seconds = (wait and ride) and floor(wait + ride + 0.5) or LIFT_SECONDS,
				yards = floor(yards(c, at.wx, at.wy, c, other.wx, other.wy) + 0.5),
			}
			from = other
		end
	end
	local totalSecs = floor(total / RUN_SPEED + 0.5)
	pieces[#pieces + 1] = {
		kind = "walk", from = from, to = whole.to, label = whole.label, step = whole.step,
		radius = whole.radius, waypoint = whole.waypoint, tail = 0, parent = P,
		yards = floor(total - doneYards + 0.5), seconds = totalSecs - doneSecs,
		hubs = hubs,
	}

	local m = ci
	if parent then
		while legs[m + 1] and legs[m + 1].parent == parent do m = m + 1 end
	end
	local out = {}
	for k = 1, ci - 1 do out[k] = legs[k] end
	for _, piece in ipairs(pieces) do out[#out + 1] = piece end
	for k = m + 1, #legs do out[#out + 1] = legs[k] end
	legs = out
	relink()
	return true
end

-- The walking engine's path to (c, x, y) failed or was cleared: the current
-- walk, measured by that path, goes back to its straight estimate.
-- -> true when the route changed.
function Travel.RestoreWalk(c, x, y)
	local leg = legs and legs[ci]
	if not (leg and leg.kind == "walk" and leg.straightSeconds) then return false end
	local to = leg.to
	if to.c ~= c or (to.wx - x) * (to.wx - x) + (to.wy - y) * (to.wy - y) > 1 then return false end
	leg.yards, leg.seconds, leg.hubs = leg.straightYards, leg.straightSeconds, nil
	leg.straightYards, leg.straightSeconds = nil, nil
	relink()
	return true
end

-- Whether skipping `leg` plans the rest of the way without it (a hearth,
-- teleport, flight, ride or portal) rather than moving on to the next leg
-- (a walk or a lift step). Nav/Prompts.lua words its menu by it.
function Travel.SkipReplans(leg)
	local kind = leg.kind
	return kind == "hearth" or (kind == "teleport" and leg.spell ~= nil)
		or (kind == "fly" and leg.from ~= nil and leg.from.id ~= nil)
		or (leg.transport ~= nil and kind ~= "lift")
end

-- Skip the current leg (review P2-6): a hearth, teleport, flight, ride or
-- portal is left out of the plans for this target (another target may use
-- it again) and the rest of the way is planned at once; a walk or a lift
-- step moves on to the next leg. -> true when something changed.
function Travel.SkipLeg()
	local leg = legs and legs[ci]
	if not leg then return false end
	if not Travel.SkipReplans(leg) then
		-- A crossing's near end: the plans for this target walk on from it, so
		-- the next plan (moving on, a zone change) near the crossing never sends
		-- you back to it.
		local nextLeg = legs[ci + 1]
		local id, side = nextLeg and nextLeg.crossing, nextLeg and nextLeg.side
		if leg.waypoint and id then
			for _, e in ipairs(crossEnds) do
				if e.id == id and e.side == side then skipped.cross[e] = true end
			end
			skipFor = Nav.GetTarget()
		elseif leg.waypoint then
			dirty = true
		end
		advance()
		return true
	end
	local kind = leg.kind
	if kind == "hearth" then
		skipped.hearth = true
	elseif kind == "teleport" then
		skipped.spells[leg.spell] = true
	elseif kind == "fly" then
		skipped.taxi[leg.from.id] = true
	else
		skipped.transports[leg.transport] = true
	end
	skipFor = Nav.GetTarget()
	Travel.Replan()
	return true
end

-- Where the arrow should point, for a player at (pc, px, py). Allocation-free.
--   nil                          no route, or the last leg: point at the target
--   "walk", c, wx, wy[, left]    walk to that point (left: yards along the walking
--                                engine's path to the leg's end, when it has one)
--   "instruction", c, wx, wy     do the leg's action here (fly, ride, portal, hearth, teleport)
-- A walk's end with a floor height (a crossing end: the Undercity's entrance hall over the Trade Quarter) that the
-- player stands within its radius of on the map but not on its floor: the player's floor (Walk.Floor) more than
-- FLOOR_DZ yards from it; while that is unknown (the walking engine, asked without a height, may start on the end's
-- own floor above the player), farther than FLAT_ARRIVE yards. PlanRoute drops a leading walk by the same rule.
FLOOR_DZ, FLAT_ARRIVE = 20, 5
function offFloor(to, pc, px, py, d)
	if not to.z then return false end
	local W = Nav.walk
	local fz = W and W.Floor and W.Floor(pc, px, py)
	if fz then return fz - to.z > FLOOR_DZ or to.z - fz > FLOOR_DZ end
	return d > FLAT_ARRIVE
end

function Travel.Aim(pc, px, py)
	if not Travel.Active() then return nil end
	while legs[ci] do
		local leg = legs[ci]
		local kind = leg.kind
		if kind == "walk" then
			if ci == #legs then return nil end
			local to = leg.to
			local W = Nav.walk
			local P = leg.parent -- a piece of a split walk: the path is to the whole walk's end
			local passed = P ~= nil and W ~= nil and W.Passed(P.c, P.wx, P.wy, leg.seg)
			-- At the landing of the lift it ends at, the label shows the ride (Travel.CurrentLabel).
			local ride = legs[ci + 1]
			local rf = ride and ride.kind == "lift" and ride.from
			local near = rf and rf.c == to.c and rf.wx == to.wx and rf.wy == to.wy and yards(pc, px, py, to.c, to.wx, to.wy) <= LIFT_LEAVE or false
			if near ~= atLift then
				atLift = near
				Travel.version = Travel.version + 1
			end
			-- On a crossing's walk from an end with a floor height, near that end but found on another floor
			-- (the floor became known after the plan took the player for there): plan again.
			local from = leg.from
			if leg.crossing and from.z and W and W.Floor and yards(pc, px, py, from.c, from.wx, from.wy) <= (leg.radius or REACH) then
				local fz = W.Floor(pc, px, py)
				if fz and (fz - from.z > FLOOR_DZ or from.z - fz > FLOOR_DZ) then dirty = true end
			end
			local d, reach = yards(pc, px, py, to.c, to.wx, to.wy), leg.radius or REACH
			if not passed and (d > reach or offFloor(to, pc, px, py, d)) then
				-- Along the walking engine's path when it has one (Nav/Walk.lua).
				if W then
					local gc, gx, gy, gz = to.c, to.wx, to.wy, to.z
					if P then gc, gx, gy, gz = P.c, P.wx, P.wy, P.leg.to.z end
					-- A piece aims no further than the path point before its chokepoint (leg.seg).
					local wc, wx, wy, left = W.Aim(pc, px, py, gc, gx, gy, leg.handmade, gz, P and leg.seg)
					if wc then
						left = left - (leg.tail or 0)
						if left < 0 then left = 0 end
						progressYards = left
						return "walk", wc, wx, wy, left
					end
				end
				progressYards = yards(pc, px, py, to.c, to.wx, to.wy) * WALK_DETOUR
				return "walk", to.c, to.wx, to.wy
			end
			-- At a crossing or chain waypoint: plan again from here (the next Refresh).
			if leg.waypoint then dirty = true end
			advance()
		elseif kind == "lift" then
			-- Ride it; walking away from the landing boarded ends the ride.
			local from = leg.from
			if yards(pc, px, py, from.c, from.wx, from.wy) <= LIFT_LEAVE then return "instruction", from.c, from.wx, from.wy end
			advance()
		elseif kind == "fly" then
			local from = leg.from
			if yards(pc, px, py, from.c, from.wx, from.wy) > LEAVE then dirty = true end
			return "instruction", from.c, from.wx, from.wy
		else
			local to = leg.to
			if yards(pc, px, py, to.c, to.wx, to.wy) <= DOCK_ARRIVE then
				advance()
			elseif kind == "hearth" or kind == "teleport" then
				return "instruction", to.c, to.wx, to.wy
			else
				local from = leg.from
				local d = yards(pc, px, py, from.c, from.wx, from.wy)
				if not boarded and d <= BOARD then
					boarded = true
					boardDeadline = GetTime() + 2 * (leg.seconds + 60)
				elseif boarded and GetTime() > boardDeadline then
					dirty = true
				elseif not boarded and d > LEAVE then
					dirty = true
				end
				return "instruction", from.c, from.wx, from.wy
			end
		end
	end
	return nil
end

-- On a boat or zeppelin, zone changes and distance from the dock are the
-- ride itself, not a reason to plan again.
function riding()
	local leg = legs and legs[ci]
	return boarded and leg ~= nil and (leg.kind == "boat" or leg.kind == "zeppelin" or leg.kind == "tram")
end

function samePoint(a, b)
	return a == b or (a ~= nil and b ~= nil and a.c == b.c and a.wx == b.wx and a.wy == b.wy)
end

-- A walk sameWay steps over: one between the route's waypoints (a crossing or
-- chain walk names its waypoint and is compared), or a lift ride.
function between(leg)
	return (leg.kind == "walk" and not leg.waypoint) or leg.kind == "lift"
end

-- Whether routes a (from leg i) and b (from leg j) go the same way: the same
-- flights, rides, portals, hearth, teleports, crossings and chain waypoints in
-- order; the plain walks between follow from them.
function sameWay(a, i, b, j)
	while true do
		while a[i] and between(a[i]) do i = i + 1 end
		while b[j] and between(b[j]) do j = j + 1 end
		local x, y = a[i], b[j]
		if not (x and y) then return x == y end
		if x.kind ~= y.kind or not samePoint(x.to, y.to) or x.crossing ~= y.crossing then return false end
		-- A hearth or teleport leaves from wherever the player stood; a walk to a waypoint from wherever the walk began.
		if x.kind ~= "hearth" and x.kind ~= "teleport" and x.kind ~= "walk" and not samePoint(x.from, y.from) then return false end
		i, j = i + 1, j + 1
	end
end

-- The same way, freshly priced: each later walk of the route takes the fresh
-- plan's yards, seconds and pricing for the same ends (one priced by its own
-- path keeps that). -> true when a leg changed.
function takePrices(fresh)
	local changed = false
	for k = ci + 1, #legs do
		local leg = legs[k]
		if leg.kind == "walk" and not leg.parent and leg.engine ~= "path" then
			for _, f in ipairs(fresh) do
				if f.kind == "walk" and samePoint(f.from, leg.from) and samePoint(f.to, leg.to) then
					if f.yards ~= leg.yards or f.seconds ~= leg.seconds then
						leg.yards, leg.seconds, leg.engine = f.yards, f.seconds, f.engine
						changed = true
					end
					break
				end
			end
		end
	end
	if changed then
		retime()
		setRests()
	end
	return changed
end

-- The walking engine has measured the walks to the target (Nav/Walk.lua): plan
-- again with them, and take that plan only when it goes another way; the same
-- way keeps the route and its progress, its later walks taking the new prices.
-- The measures are fixed for the target, so this happens once per measure. On
-- a flight or a boat it waits for the landing (a landing plans again anyway)
-- or the end of the ride. -> true when the route changed.
function Travel.Remeasured()
	if onTaxi() or riding() then
		remeasureOwed = true
		return false
	end
	remeasureOwed = false
	if not legs then
		Travel.Replan()
		return legs ~= nil
	end
	local fresh, pc, px, py = plan(Nav.GetTarget())
	if not fresh then return false end
	if sameWay(fresh, 1, legs, ci) then
		if not takePrices(fresh) then return false end
	else
		legs, ci, boarded, progressYards, legSince = fresh, 1, false, nil, GetTime()
		planAt, planC, planX, planY = GetTime(), pc, px, py
		pricePaths()
	end
	Travel.version = Travel.version + 1
	ns.Fire("ROUTE_CHANGED", legs)
	return true
end

function Travel:OnSettings()
	local on = ns.Get("nav.travel") and true or false
	if on ~= self.enabled then
		self.enabled = on
		Travel.Replan()
	end
end

-- Walked far from where the route was planned (crossing data only): plan
-- again, at most once a second and only once the plan is REPLAN_AFTER old.
function movedAway()
	if next(covered) == nil or not legs then return false end
	local now = GetTime()
	if now - planAt < REPLAN_AFTER or now - lastMoveCheck < 1 then return false end
	lastMoveCheck = now
	local C = ns.Compat
	local pc, px, py
	if C and C.GetPlayerWorldPosition then pc, px, py = C.GetPlayerWorldPosition() end
	return pc ~= nil and yards(pc, px, py, planC, planX, planY) > REPLAN_MOVED
end

-- Nav's once-a-second tick and situation events.
lastGhost = false
function Travel:Refresh()
	local taxiNow = onTaxi()
	if wasTaxi and not taxiNow then dirty = true end
	-- Taking off: the flight counts down from here, not from reaching the
	-- flight master (second review P3).
	if taxiNow and not wasTaxi and legs and legs[ci] and legs[ci].kind == "fly" then legSince = GetTime() end
	wasTaxi = taxiNow
	if taxiNow or not Nav.GetTarget() or not ns.Get("nav.travel") then return end
	-- A Hearthstone coming off cooldown mid-ride is no reason to plan from the deck.
	if not riding() and hearthReady() ~= lastHearth then dirty = true end
	local ghost = isGhost()
	if ghost ~= lastGhost then
		lastGhost = ghost
		dirty = true
	end
	if not dirty and not riding() and movedAway() then dirty = true end
	-- A shared time held back by the NAV_TRANSIT limit (below).
	if not dirty and not riding() and Travel.TransitOwed and Travel.TransitOwed() then dirty = true end
	-- The player's floor (or the floors they may be on) known after a plan made without it: once more with it (a start
	-- in the Undercity's entrance hall is on the fixed way out, not under it).
	if not dirty and floorless and not riding() then
		local W, C = Nav.walk, ns.Compat
		local pc, px, py
		if C and C.GetPlayerWorldPosition then pc, px, py = C.GetPlayerWorldPosition() end
		if pc and W and ((W.Floor and W.Floor(pc, px, py)) or (W.Floors and W.Floors(pc, px, py))) then dirty = true end
	end
	if not dirty and remeasureOwed and not riding() then
		Travel.Remeasured()
	elseif dirty then
		Travel.Replan()
	elseif legs and legs[ci] and departureCaption(boardingRide(legs[ci]) or legs[ci]) then
		Travel.version = Travel.version + 1 -- the departure countdown in the label
	end
end

-- "New flight path discovered": the flight master the player stands at is known now.
function onInfoMessage(_, _, message)
	if message == nil or message ~= ERR_NEWTAXIPATH then return end
	local C = ns.Compat
	local pc, px, py
	if C and C.GetPlayerWorldPosition then pc, px, py = C.GetPlayerWorldPosition() end
	if not pc then return end
	refreshFaction()
	local known, best, node = knownSet(), LEARN_FP, nil
	for _, t in ipairs(taxiList) do
		local d = yards(pc, px, py, t.c, t.wx, t.wy)
		if d <= best and allowed(t.faction, playerFaction) then best, node = d, t end
	end
	if node and not known[node.id] then
		known[node.id] = true
		dirty = true
		Travel:Refresh()
	end
end

function onZone()
	if riding() then return end
	dirty = true
	Travel:Refresh()
end

for _, event in ipairs({ "ZONE_CHANGED_NEW_AREA", "ZONE_CHANGED", "ZONE_CHANGED_INDOORS", "PLAYER_ENTERING_WORLD", "PLAYER_CONTROL_GAINED" }) do
	ns.RegisterEvent(event, onZone)
end
ns.RegisterEvent("HEARTHSTONE_BOUND", onBound)
-- A sighting moved a timetable, or a teleport became castable (Nav/Transit.lua):
-- NAV_TRANSIT(changed, own), changed = { [transport or lift id] = kind } or nil
-- (everything). The player's own rides and teleports plan again at once;
-- other players' shared times only when the route uses a changed service,
-- and at most every TRANSIT_EVERY seconds (security M3).
TRANSIT_EVERY = 20
transitAt, transitOwed = -huge, false
function usesChanged(changed)
	if not legs then return false end
	for k = ci, #legs do
		local leg = legs[k]
		if (leg.transport and leg.transport.id ~= nil and changed[leg.transport.id])
			or (leg.lift ~= nil and changed[leg.lift]) then
			return true
		end
	end
	return false
end
ns.On("NAV_TRANSIT", function(changed, own)
	if riding() then return end
	if not own and type(changed) == "table" then
		if not usesChanged(changed) then return end
		if GetTime() - transitAt < TRANSIT_EVERY then
			transitOwed = true
			return
		end
	end
	transitAt, transitOwed = GetTime(), false
	dirty = true
	Travel:Refresh()
end)
function Travel.TransitOwed()
	if transitOwed and GetTime() - transitAt >= TRANSIT_EVERY then
		transitAt, transitOwed = GetTime(), false
		return true
	end
	return false
end
ns.RegisterEvent("TAXIMAP_OPENED", function()
	if recordTaxiMap() then Travel.Replan() end
end)
ns.RegisterEvent("UI_INFO_MESSAGE", onInfoMessage)

ns.OnLogin(function()
	refreshFaction()
	Travel.enabled = ns.Get("nav.travel") and true or false
end)

Nav.RegisterModule(Travel)

ns.RegisterCommand("route", function()
	if Nav.SayHandedOff() then return end
	local list = legs
	if not list then
		ns.Print(L["No route: walk straight to the target."])
		return
	end
	for i = ci, #list do
		local leg = list[i]
		ns.Print(format("%d. %s (%d:%02d)", i, leg.label or leg.kind, floor(leg.seconds / 60), leg.seconds % 60))
	end
end, L["Show the travel route to the current target"])
