local ADDON, ns = ...
setfenv(1, ns._travelEnv)
WALK_TO = {
	boat = L["Walk to the boat"],
	zeppelin = L["Walk to the zeppelin tower"],
	tram = L["Walk to the Deeprun Tram"],
	portal = L["Walk to the portal"],
}
TAKE = {
	boat = L["Take the boat to %s"],
	zeppelin = L["Take the zeppelin to %s"],
	tram = L["Take the tram to %s"],
	portal = L["Take the portal to %s"],
}

function planRoute(p)
	local clock = debugprofilestop
	local t0 = clock and clock()
	local tg = p.target
	local speed = p.speed or RUN_SPEED
	local walkRate = WALK_DETOUR / speed
	local faction = p.faction or 0
	local known = p.known or {}
	local zoned = next(covered) ~= nil
	local walkOnly = p.walkOnly -- a ghost: no flights, rides, portals, hearth or teleports

	-- Vertices (vzone: the zone on a continent with crossing data)
	local vc, vx, vy, vkind, vref, vzone = {}, {}, {}, {}, {}, {}
	local n = 0
	local function add(kind, c, wx, wy, ref, map)
		n = n + 1
		vc[n], vx[n], vy[n], vkind[n], vref[n] = c, wx, wy, kind, ref
		if covered[c] then vzone[n] = zoneOf(map, c, wx, wy) end
		return n
	end
	add(START, p.c, p.wx, p.wy, nil, p.map)
	add(TARGET, tg.c, tg.wx, tg.wy, tg, tg.map)
	local taxiV = {}
	local skip = p.skip
	for _, node in ipairs(walkOnly and {} or taxiList) do
		if skip and skip.taxi[node.id] then
			-- skipped: never flown from or through
		elseif (known[node.id] or node.class) and allowed(node.faction, faction, node.class) then
			taxiV[node.id] = add(TAXI, node.c, node.wx, node.wy, node, node.map)
		end
	end
	local rideTo, rideCost, dockEnd, dockOf, dockSide = {}, {}, {}, {}, {}
	for _, t in ipairs(walkOnly and {} or transports) do
		if allowed(t.faction, faction) and not (skip and skip.transports[t]) then
			-- The dock: the end's board point on the deck when its ship lies off the pier.
			local da, db = t.a.board or t.a, t.b.board or t.b
			local va = add(DOCK, da.c, da.wx, da.wy, t, da.map)
			local vb = add(DOCK, db.c, db.wx, db.wy, t, db.map)
			rideTo[va], rideTo[vb] = vb, va
			rideCost[va], rideCost[vb] = t.waitA + t.ab, t.waitB + t.ba
			dockEnd[va], dockEnd[vb] = da, db
			dockOf[va], dockOf[vb] = t, t
			dockSide[va], dockSide[vb] = "a", "b"
		end
	end
	-- Walk-in portals: a ride one way, from a to b.
	for _, t in ipairs(walkOnly and {} or portals) do
		if allowed(t.faction, faction) and not (skip and skip.transports[t]) then
			local va = add(DOCK, t.a.c, t.a.wx, t.a.wy, t, t.a.map)
			local vb = add(DOCK, t.b.c, t.b.wx, t.b.wy, t, t.b.map)
			rideTo[va], rideCost[va] = vb, t.seconds
			dockEnd[va], dockEnd[vb] = t.a, t.b
			dockOf[va], dockOf[vb] = t, t
			dockSide[va], dockSide[vb] = "a", "b"
		end
	end
	local departure = p.departure
	local innV = not walkOnly and not p.noHearth and p.hearth and add(INN, p.hearth.c, p.hearth.wx, p.hearth.wy, p.hearth, p.hearth.map)
	-- Class teleports: { spell, name, to = point, cast = seconds, ready = seconds until castable }.
	local teleV = {}
	for _, e in ipairs(walkOnly and {} or p.teleports or {}) do
		local to = e.to
		if to and to.c and to.wx and to.wy and not (skip and skip.spells[e.spell]) then
			-- Arrived at like an inn: walked from, never walked to.
			teleV[add(INN, to.c, to.wx, to.wy, to, to.map)] = e
		end
	end
	-- Crossing ends and chain nodes, on continents walked through crossing data.
	local crossV, chainV = {}, {}
	if zoned then
		for _, e in ipairs(crossEnds) do
			if covered[e.c] then crossV[e] = add(CROSS, e.c, e.wx, e.wy, e, e.map) end
		end
		for _, ch in ipairs(chains) do
			local nodes = ch.nodes
			for k, nd in ipairs(nodes) do
				if covered[nd.c] then
					local mouth = k == 1 or (k == #nodes and ch.open == "both")
					chainV[nd] = add(mouth and CHAIN or DARK, nd.c, nd.wx, nd.wy, nd, nd.map)
				end
			end
		end
	end
	local keys = n
	local pathV = {}
	for i = 1, pathCount do
		local c = pathC[i]
		if (c == p.c or c == tg.c) and n - keys < MAX_PATH_VERTICES then
			pathV[i] = add(PATH, c, pathX[i], pathY[i], i)
			if covered[c] then vzone[n] = pathZoneOf(i) end
		end
	end

	-- Inside a chain: the start and the target attach only to its nearest node and that node's neighbours.
	local startIn = zoned and covered[p.c] and insideChain(p.c, p.wx, p.wy, p.z, nil, p.floors) or nil
	local targetIn = zoned and covered[tg.c] and insideChain(tg.c, tg.wx, tg.wy, tg.z, true) or nil

	-- Explicit walk links: crossing pairs, chain neighbours, attachments.
	local extra = {}
	local onCross = {} -- [far end vertex] = true: the start is on that crossing
	local function link(u, v)
		if not (u and v) then return end
		local l = extra[u]
		if not l then
			l = {}
			extra[u] = l
		end
		l[#l + 1] = v
		l[#l + 1] = yards(vc[u], vx[u], vy[u], vc[v], vx[v], vy[v])
	end
	if zoned then
		for _, e in ipairs(crossEnds) do
			if crossV[e] and not e.noCross then link(crossV[e], crossV[e.partner]) end
		end
		-- A start already on a crossing (walked past its near end, or that end
		-- skipped and still nearer the far end than the ends are to each other)
		-- walks on to the far end, never back to the near one: the ends can be
		-- hundreds of yards apart along a road. Farther off, the near end comes
		-- first again, so a skip never sends anyone over the zone border elsewhere.
		if not startIn then
			local cross = skip and skip.cross
			-- A start whose walks to a crossing's two ends sum within this of the
			-- ends' distance is on it. Local here: PlanRoute is at Lua 5.1's 60
			-- upvalues.
			local ON_CROSSING = 1.1
			for _, e in ipairs(crossEnds) do
				local f = e.partner
				if crossV[e] and crossV[f] and not e.noCross and vzone[1] ~= nil and vzone[1] == vzone[crossV[e]] then
					local span = yards(e.c, e.wx, e.wy, f.c, f.wx, f.wy)
					local toE = yards(p.c, p.wx, p.wy, e.c, e.wx, e.wy)
					local toF = yards(p.c, p.wx, p.wy, f.c, f.wx, f.wy)
					local on = toE > e.r and toF < span and toE + toF <= span * ON_CROSSING
					if on or (cross and cross[e] and toF < span) then
						link(1, crossV[f])
						onCross[crossV[f]] = true
					end
				end
			end
		end
		for _, ch in ipairs(chains) do
			local nodes = ch.nodes
			for k = 1, #nodes - 1 do
				local a, b = chainV[nodes[k]], chainV[nodes[k + 1]]
				link(a, b)
				link(b, a)
			end
		end
		local function near(nd, fn)
			local nodes = nd.chain.nodes
			fn(chainV[nd])
			if nodes[nd.idx - 1] then fn(chainV[nodes[nd.idx - 1]]) end
			if nodes[nd.idx + 1] then fn(chainV[nodes[nd.idx + 1]]) end
		end
		if startIn then near(startIn, function(v) link(1, v) end) end
		if targetIn then near(targetIn, function(v) link(v, 2) end) end
		if startIn and targetIn and startIn.chain == targetIn.chain then link(1, 2) end
	end
	-- Vertices only explicit links reach: chain nodes past a mouth, an inside start or target.
	local function sealed(v)
		return vkind[v] == DARK or (v == 1 and startIn ~= nil) or (v == 2 and targetIn ~= nil)
	end

	-- The walks to the target the walking engine measured (p.walkCost, Nav/Walk.lua):
	-- tw[v] = the walk's cost from key vertex v (chooses), ty[v] its yards
	-- (times and measures it); nil to keep the straight estimate.
	-- p.places collects the places a walk to the target can start from, for
	-- Walk.Measure: the player, flight masters, docks and portal ends, the inn and
	-- teleport landings, crossing ends and chain mouths (a walk from those stays
	-- hand-made, drawn straight; only its price is the engine's).
	local tw, ty = {}, {}
	local walkCost, places = p.walkCost, p.places
	if walkCost or places then
		for v = 1, keys do
			if v ~= 2 and vc[v] == tg.c and not sealed(v) then
				-- A dock carries its height (a board point's deck, a tram or zeppelin end's floor): the walk from it starts there.
				if places then places[#places + 1] = { wx = vx[v], wy = vy[v], z = vkind[v] == DOCK and dockEnd[v].z or nil, start = v == 1 or nil } end
				if walkCost then
					local cost, yd = walkCost(vc[v], vx[v], vy[v], v == 1)
					if type(cost) == "number" then
						tw[v], ty[v] = cost, type(yd) == "number" and yd or cost
					end
				end
			end
		end
	end

	-- Links between key vertices and their nearest learned path nodes (zone rules apply).
	local links = {}
	if n > keys then
		for k = 1, keys do
			if not sealed(k) then
				local best = {}
				for v = keys + 1, n do
					local d = yards(vc[k], vx[k], vy[k], vc[v], vx[v], vy[v])
					if d <= LINK_YARDS then
						local pos = #best + 1
						while pos > 1 and best[pos - 1].d > d do
							best[pos] = best[pos - 1]
							pos = pos - 1
						end
						best[pos] = { v = v, d = d }
						if #best > MAX_LINKS then best[#best] = nil end
					end
				end
				for _, b in ipairs(best) do
					local zk, zv = vzone[k], vzone[b.v]
					if zonesWalk(zk, zv) then
						local lk = links[k] or {}
						links[k] = lk
						lk[#lk + 1], lk[#lk + 2] = b.v, b.d
					end
					if zonesWalk(zv, zk) then
						local lv = links[b.v] or {}
						links[b.v] = lv
						lv[#lv + 1], lv[#lv + 2] = k, b.d
					end
				end
			end
		end
	end

	-- Straight walks on a continent with crossing data: vertices by zone, and those with none.
	local byZone, free = {}, {}
	if zoned then
		for v = 2, keys do
			local c = vc[v]
			if covered[c] and vkind[v] ~= INN and not sealed(v) then
				local z = vzone[v]
				local list
				if z then
					list = byZone[z] or {}
					byZone[z] = list
				else
					list = free[c] or {}
					free[c] = list
				end
				list[#list + 1] = v
			end
		end
	end

	-- Dijkstra with a binary heap (lazy deletion), ordered by cost; tm = real seconds.
	local dist, tm, prev, via, done = {}, {}, {}, {}, {}
	for i = 1, n do dist[i] = huge end
	dist[1], tm[1] = 0, 0
	local hk, hv, size = {}, {}, 0
	local function push(k, v)
		size = size + 1
		local i = size
		while i > 1 do
			local parent = floor(i / 2)
			if hk[parent] <= k then break end
			hk[i], hv[i] = hk[parent], hv[parent]
			i = parent
		end
		hk[i], hv[i] = k, v
	end
	local function pop()
		local v = hv[1]
		local k, last = hk[size], hv[size]
		hk[size], hv[size] = nil, nil
		size = size - 1
		if size > 0 then
			local i = 1
			while true do
				local child = i * 2
				if child > size then break end
				if child < size and hk[child + 1] < hk[child] then child = child + 1 end
				if hk[child] >= k then break end
				hk[i], hv[i] = hk[child], hv[child]
				i = child
			end
			hk[i], hv[i] = k, last
		end
		return v
	end
	local function relax(v, d, t, how, from)
		if d < dist[v] then
			dist[v], tm[v], prev[v], via[v] = d, t, from, how
			push(d, v)
		end
	end
	-- A walk from u to v: `cost` seconds to the search, `secs` real seconds.
	-- The walk cost hooks (p.walkHooks, Travel.WalkCostHook) may scale the
	-- cost; the time stays.
	local hooks = p.walkHooks
	if hooks and #hooks == 0 then hooks = nil end
	local hookWalk = hooks and { from = {}, to = {} }
	local function walk(u, v, cost, secs, du, tu)
		if hooks then
			local f, t = hookWalk.from, hookWalk.to
			f.c, f.wx, f.wy, t.c, t.wx, t.wy = vc[u], vx[u], vy[u], vc[v], vx[v], vy[v]
			hookWalk.seconds = secs
			for i = 1, #hooks do
				local ok, c = pcall(hooks[i], hookWalk, cost)
				if ok and type(c) == "number" and c >= 0 and c < huge then cost = c end
			end
		end
		relax(v, du + cost, tu + secs, WALK, u)
	end
	-- A straight walk from u to v of `s` seconds (yards x1.25 at run speed):
	-- its cost takes the share of its length in zones far above the player,
	-- x3 dangerous, x20 far above (p.walkDanger, Nav/Danger.lua Danger.Along:
	-- the zone every 100 yd, its two ends' zones never counting); its time
	-- stays. The zone danger idea and its 4-level threshold come from Ding! by
	-- Yendi (ding-travel 2bccf01). The factor is at least 1, so a walk that
	-- cannot beat v's cost unscaled is not looked at (unless a hook may lower it).
	local walkDanger = p.walkDanger
	local function straight(u, v, s, du, tu)
		local cost = s
		if walkDanger and s < huge and (hooks or du + s < dist[v]) then
			local f = walkDanger(vc[u], vx[u], vy[u], vx[v], vy[v])
			if type(f) == "number" and f > 1 and f < huge then cost = s * f end
		end
		walk(u, v, cost, s, du, tu)
	end
	-- Walks from u to every vertex of `list`: straight x1.25, or the measured walk into the target.
	local function walkTo(list, u, du, tu, xu, yu)
		if not list then return end
		local mu = tw[u]
		for i = 1, #list do
			local v = list[i]
			if v == 2 and mu then
				walk(u, 2, mu / speed, ty[u] / speed, du, tu)
			elseif v ~= u then
				local dx, dy = vx[v] - xu, vy[v] - yu
				straight(u, v, sqrt(dx * dx + dy * dy) * walkRate, du, tu)
			end
		end
	end

	push(0, 1)
	local pops = 0
	while size > 0 do
		local u = pop()
		if not done[u] then
			done[u] = true
			if u == 2 then break end
			pops = pops + 1
			if pops > MAX_POPS or (clock and clock() - t0 > MAX_MS) then return nil, "budget" end
			local du, tu, cu, xu, yu, kind = dist[u], tm[u], vc[u], vx[u], vy[u], vkind[u]
			if kind == PATH then
				local adj = pathAdj[vref[u]]
				if adj then
					for i = 1, #adj - 1, 2 do
						local v = pathV[adj[i]]
						if v then
							local s = adj[i + 1] / speed
							walk(u, v, s, s, du, tu)
						end
					end
				end
			elseif sealed(u) then
				-- explicit links only (below)
			elseif not covered[cu] then
				local mu = tw[u]
				for v = 2, keys do
					if v == 2 and mu then
						walk(u, 2, mu / speed, ty[u] / speed, du, tu)
					elseif v ~= u and vc[v] == cu and vkind[v] ~= INN then
						local dx, dy = vx[v] - xu, vy[v] - yu
						straight(u, v, sqrt(dx * dx + dy * dy) * walkRate, du, tu)
					end
				end
			else
				local zu = vzone[u]
				if zu == nil then
					for z, list in pairs(byZone) do
						if zoneInfo[z] and zoneInfo[z].c == cu then walkTo(list, u, du, tu, xu, yu) end
					end
				else
					walkTo(byZone[zu], u, du, tu, xu, yu)
					local o = openPair[zu]
					if o then
						for z in pairs(o) do walkTo(byZone[z], u, du, tu, xu, yu) end
					end
				end
				walkTo(free[cu], u, du, tu, xu, yu)
			end
			local ex = extra[u]
			if ex then
				for i = 1, #ex - 1, 2 do
					straight(u, ex[i], ex[i + 1] * walkRate, du, tu)
				end
			end
			local lk = links[u]
			if lk then
				for i = 1, #lk - 1, 2 do
					straight(u, lk[i], lk[i + 1] * walkRate, du, tu)
				end
			end
			if kind == TAXI then
				local fl = flights[vref[u].id]
				if fl then
					for i = 1, #fl - 1, 2 do
						local v = taxiV[fl[i]]
						if v then
							local s = fl[i + 1] / FLIGHT_SPEED + FLIGHT_STOP
							relax(v, du + s, tu + s, FLY, u)
						end
					end
				end
			elseif kind == DOCK then
				-- The timetable's wait from when the player gets to the dock, else the average.
				local cost = rideCost[u]
				if cost and departure and dockOf[u].kind ~= "portal" then
					local wait, ride = departure(dockOf[u], dockSide[u], tu)
					if wait and ride then cost = wait + ride end
				end
				if cost then relax(rideTo[u], du + cost, tu + cost, RIDE, u) end
			elseif kind == START then
				if innV then relax(innV, du + HEARTH_SECONDS + HEARTH_MARGIN, tu + HEARTH_SECONDS, HEARTH, u) end
				for v, e in pairs(teleV) do
					-- 10 s: reagents are cheap, but a walk this much shorter still wins.
					local s = (e.ready or 0) + (e.cast or HEARTH_SECONDS)
					relax(v, du + s + 10, tu + s, HEARTH, u)
				end
			end
		end
	end
	if dist[2] == huge then return nil, "unreachable" end

	-- Vertex chain, start first.
	local chain = {}
	local v = 2
	while v do
		chain[#chain + 1] = v
		v = prev[v]
	end
	for i = 1, floor(#chain / 2) do
		local j = #chain - i + 1
		chain[i], chain[j] = chain[j], chain[i]
	end

	local function isWaypoint(w)
		local k = vkind[w]
		return k == CROSS or k == CHAIN or k == DARK
	end

	local function pointOf(w)
		local kind = vkind[w]
		if kind == TARGET then return point(tg.label, tg.c, tg.wx, tg.wy, tg.map, tg.x, tg.y, tg.f) end
		if kind == TAXI or kind == INN then return vref[w] end
		if kind == DOCK then return dockEnd[w] end
		if isWaypoint(w) then
			local p = point(nil, vc[w], vx[w], vy[w], vref[w].map)
			local nd = vref[w]
			p.z = nd.z
			if nd.chain then p.chain, p.idx = nd.chain.id or tostring(nd.chain), nd.idx end
			return p
		end
		return point(nil, vc[w], vx[w], vy[w])
	end

	-- Caption for walking to waypoint w, coming from vertex `before`, going on to `after`.
	local function waypointLabel(before, w, after)
		local nd = vref[w]
		if vkind[w] == CROSS then
			if before == 1 and onCross[w] then return crossCaption(nd.partner) end
			if before and vkind[before] == CROSS and vref[before].partner == nd then return crossCaption(vref[before]) end
			if after and vkind[after] == CROSS and vref[after] == nd.partner then return crossCaption(nd) end
			return L["Walk"]
		end
		local inward = true
		local nx, pv = after and vref[after], before and vref[before]
		if after and (vkind[after] == CHAIN or vkind[after] == DARK) and nx.chain == nd.chain then
			inward = nx.idx > nd.idx
		elseif before and (vkind[before] == CHAIN or vkind[before] == DARK) and pv.chain == nd.chain then
			inward = pv.idx < nd.idx
		end
		if inward then return nd.caption or L["Follow the path"] end
		return nd.back or L["Follow the path out"]
	end

	local legs = {}
	local i = 1
	while i < #chain do
		local u = chain[i]
		local how = via[chain[i + 1]]
		local j = i + 1
		if how == WALK then
			while j < #chain and via[chain[j + 1]] == WALK and not isWaypoint(chain[j]) do j = j + 1 end
		elseif how == FLY then
			while j < #chain and via[chain[j + 1]] == FLY do j = j + 1 end
		end
		local to = chain[j]
		local leg = { from = pointOf(u), to = pointOf(to), seconds = floor(tm[to] - tm[u] + 0.5) }
		-- yards: straight hops (a walk x1.25, as priced, or the engine's measured
		-- yards into the target: engine = "cost"; the walking engine's path replaces it
		-- when it splits the walk or searches it, engine = "path"); a ride's two
		-- ends; none for a hearth.
		if how ~= HEARTH then
			local d = 0
			for k = i, j - 1 do
				local a, b = chain[k], chain[k + 1]
				-- A target inside a chain is reached by its straight links, never the measure.
				local m = how == WALK and b == 2 and not sealed(2) and tw[a] and ty[a]
				if m then
					d = d + m
					leg.engine = "cost"
				else
					local h = yards(vc[a], vx[a], vy[a], vc[b], vx[b], vy[b])
					d = d + (how == WALK and h * WALK_DETOUR or h)
				end
			end
			if d < huge then leg.yards = floor(d + 0.5) end
		end
		if how == WALK then
			-- Hand-made: on a crossing or an approach chain past its mouth (from
			-- a crossing end or chain node along the data's own link: to the
			-- crossing's other end, to a chain neighbour), the arrow walks the
			-- data's waypoints, never a walking-engine path. A walk from a
			-- crossing's far end or a chain's mouth out into the open is the
			-- engine's, like any other. A
			-- crossing whose ends' floors lie 20 yards apart or more (Thunder
			-- Bluff's mesas, the Great Lift) is a lift: walked by the engine's
			-- path, which rides it, so the ride becomes a step (Travel.SplitWalk).
			local cross = vkind[u] == CROSS and vref[u].partner == vref[to]
			local za, zb = cross and vref[u].z, cross and vref[to].z
			local lift = za and zb and (za - zb >= 20 or zb - za >= 20)
			local linked = false
			local ex = isWaypoint(u) and j == i + 1 and extra[u]
			if ex then
				for k = 1, #ex - 1, 2 do
					if ex[k] == to then linked = true break end
				end
			end
			if (linked and not lift) or vkind[to] == DARK or (u == 1 and startIn ~= nil) then leg.handmade = true end
			if cross and vref[u].id ~= nil then
				leg.crossing, leg.side = vref[u].id, vref[u].side
			end
		elseif how == FLY then
			local stops = {}
			for k = i, j do stops[#stops + 1] = vref[chain[k]] end
			leg.stops = stops
		end
		if how == WALK then
			leg.kind = "walk"
			local k = vkind[to]
			if isWaypoint(to) then
				leg.label = waypointLabel(chain[j - 1], to, chain[j + 1])
				leg.radius, leg.waypoint = vref[to].r, true
				leg.step = k == CROSS and "crossing" or "chain"
			elseif k == TAXI then
				leg.label = L["Walk to the flight master"]
			elseif k == DOCK then
				leg.label = WALK_TO[dockOf[to].kind] or WALK_TO.boat
			elseif k == TARGET then
				leg.label = tg.label
				if tg.kind == "goto" then leg.step = "goto" end
			else
				leg.label = L["Walk"]
			end
		elseif how == FLY then
			leg.kind = "fly"
			leg.label = format(L["Fly to %s"], Travel.TaxiName(vref[to], true))
		elseif how == RIDE then
			local t = dockOf[u]
			leg.kind = t.kind
			leg.label = format(TAKE[t.kind] or TAKE.boat, Travel.PlaceName(dockEnd[to]))
			leg.transport, leg.side = t, dockSide[u]
		elseif teleV[to] then
			local e = teleV[to]
			leg.kind = "teleport"
			leg.spell = e.spell
			leg.label = format(L["Cast %s"], spellName(e.spell, e.name) or "")
		else
			leg.kind = "hearth"
			leg.item = 6948 -- the Hearthstone
			leg.seconds = HEARTH_SECONDS
			leg.label = format(L["Hearth to %s"], p.hearthName or Travel.PlaceName(vref[to]))
		end
		legs[#legs + 1] = leg
		i = j
	end

	-- Leading walks to a point the player already stands on (the flight master,
	-- inside a waypoint's radius) are noise.
	while #legs > 1 and legs[1].kind == "walk" do
		local first = legs[1]
		local reach = first.radius or SKIP_WALK
		if reach < SKIP_WALK then reach = SKIP_WALK end
		local to = first.to
		local d = yards(p.c, p.wx, p.wy, to.c, to.wx, to.wy)
		if d >= reach then break end
		-- An end with a floor height is there only on that floor (p.z within 20 yd of it; unknown: within 5 yd,
		-- as Travel.Aim's offFloor): under the Undercity's entrance hall, in the Trade Quarter, the walk to it
		-- stays (it rides a lift).
		if to.z and (p.z and (p.z - to.z > 20 or to.z - p.z > 20) or (not p.z and d > 5)) then break end
		table.remove(legs, 1)
	end
	local rest = 0
	for k = #legs, 1, -1 do
		legs[k].rest = rest
		rest = rest + legs[k].seconds
	end
	return legs
end

