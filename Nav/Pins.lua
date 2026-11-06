local ADDON, ns = ...
setfenv(1, ns._pinsEnv)
-- Minimap
---------------------------------------------------------------------------

mmActive = {}   -- frames in use
mmFree = {}     -- released frames
assigned = {}   -- pin table -> frame
gen = 0
driver, watcher = driver, watcher
sPc, sPx, sPy, sFacing, sRadius, sRotate, sHalf, sSquare, sZoomK = sPc, sPx, sPy, sFacing, sRadius, sRotate, sHalf, sSquare, sZoomK -- last drawn state
dirty = true

function viewRadius()
	if C_Minimap and C_Minimap.GetViewRadius then
		local r = C_Minimap.GetViewRadius()
		if type(r) == "number" and r > 0 then return r end
	end
	local zoom = Minimap.GetZoom and Minimap:GetZoom() or 0
	local indoors = IsIndoors and IsIndoors()
	local d = (indoors and INDOOR or OUTDOOR)[zoom] or OUTDOOR[0]
	return d / 2
end

function isRotating()
	if not GetCVar or GetCVar("rotateMinimap") ~= "1" then return false end
	if C_Minimap and C_Minimap.IsRotateMinimapIgnored and C_Minimap.IsRotateMinimapIgnored() then return false end
	return true
end

function isSquare()
	return GetMinimapShape ~= nil and GetMinimapShape() == "SQUARE"
end

function hasMinimapPins()
	if trail and trail.minimap then return true end
	for _, name in ipairs(order) do
		local layer = layers[name]
		if layer and layer.minimap and not hidden[name] and #layer.pins > 0 then return true end
	end
	return false
end

-- Pixel offset from the minimap centre for a world delta (north, west), and
-- whether it was clamped to the rim. limit = nil: no clamping.
function Pins.Project(dNorth, dWest, facing, radius, half, rotate, square, limit)
	local scale = half / radius
	local x, y = -dWest * scale, dNorth * scale -- east, north
	if rotate and facing then
		local c, s = cos(facing), sin(facing)
		x, y = x * c + y * s, -x * s + y * c
	end
	if limit then
		local reach
		if square then reach = max(abs(x), abs(y)) else reach = sqrt(x * x + y * y) end
		if reach > limit then
			local k = limit / reach
			return x * k, y * k, true
		end
	end
	return x, y, false
end

-- What the minimap shows: radius (yards from its centre to its rim), facing
-- (radians when it rotates with the player, else nil), square (bool).
function Pins.MinimapView()
	local C = ns.Compat
	local facing = isRotating() and C and C.GetPlayerFacing and C.GetPlayerFacing() or nil
	return viewRadius(), facing, isSquare()
end

-- The world delta (dNorth, dWest yards) from the player to the cursor on the
-- minimap: Pins.Project undone. nil when the cursor is off the minimap's face.
function Pins.MinimapCursor()
	if not (Minimap and GetCursorPosition and Minimap.GetCenter) then return nil end
	local cx, cy = Minimap:GetCenter()
	if not cx then return nil end
	local scale = Minimap:GetEffectiveScale()
	local mx, my = GetCursorPosition()
	local x, y = mx / scale - cx, my / scale - cy -- east, north, in pixels
	local half = Minimap:GetWidth() / 2
	if half <= 0 then return nil end
	if isSquare() then
		if max(abs(x), abs(y)) > half then return nil end
	elseif x * x + y * y > half * half then
		return nil
	end
	local _, facing = Pins.MinimapView()
	if facing then
		local c, s = cos(facing), sin(facing)
		x, y = x * c - y * s, x * s + y * c
	end
	local k = (Pins.MinimapView()) / half
	return y * k, -x * k
end

function acquireMinimap()
	local f = table.remove(mmFree)
	if not f then
		f = ns.CreateFrameUnder("Frame", nil, Minimap)
		buildLook(f)
		f:SetScript("OnEnter", function(self) showTooltip(self, self.pin) end)
		f:SetScript("OnLeave", function() GameTooltip:Hide() end)
		f:SetScript("OnMouseUp", function(self, button) click(self.pin, button, self) end)
	end
	mmActive[#mmActive + 1] = f
	return f
end

function releaseAt(i)
	local f = mmActive[i]
	local n = #mmActive
	mmActive[i] = mmActive[n]
	mmActive[n] = nil
	if f.pin then assigned[f.pin] = nil end
	f.pin, f.layer = nil, nil
	f:Hide()
	f:ClearAllPoints()
	mmFree[#mmFree + 1] = f
end

function releaseAllMinimap()
	for i = #mmActive, 1, -1 do releaseAt(i) end
end

-- Pin indexes of `layer` that may be in reach, in pin order (scratch list):
-- every pin on the player's continent for an edge layer, else the pins in
-- the grid squares the reach circle touches.
near = {}
function nearPins(layer, reach)
	local n = 0
	if layer.edge then
		local list = layer.byC and layer.byC[sPc]
		if list then
			for k = 1, #list do near[k] = list[k] end
			n = #list
		end
	else
		local gc = layer.grid and layer.grid[sPc]
		if gc then
			local floor = math.floor
			for gx = floor((sPx - reach) / CELL), floor((sPx + reach) / CELL) do
				local col = gc[gx]
				if col then
					for gy = floor((sPy - reach) / CELL), floor((sPy + reach) / CELL) do
						local cell = col[gy]
						if cell then
							for k = 1, #cell do
								n = n + 1
								near[n] = cell[k]
							end
						end
					end
				end
			end
		end
	end
	for k = #near, n + 1, -1 do near[k] = nil end
	if n > 1 then table.sort(near) end
	return near, n
end

-- Minimap redraws and pins they examined (diagnostics and tests).
stats = { draws = 0, visited = 0 }
Pins.stats = stats

-- Trail dots on the minimap: textures on one frame just under the pins.
mmTrail = mmTrail
mmDots, mmDotCount, mmTrailAt = {}, 0, -1

function minimapDot(i)
	if not mmTrail then
		mmTrail = ns.CreateFrameUnder("Frame", nil, Minimap)
		mmTrail:SetAllPoints(Minimap)
		mmTrail:SetFrameLevel((Minimap:GetFrameLevel() or 1) + 4)
	end
	local t = mmTrail:CreateTexture(nil, "ARTWORK")
	t:SetTexture(MEDIA .. "pin-fill")
	t:SetSize(MM_DOT, MM_DOT)
	mmDots[i] = t
	return t
end

-- Place the trail's dots for the current state (sPc, sPx, ...) and phase;
-- with no trail (or none on the minimap) this hides them.
function drawTrailMinimap(frac)
	local shown = 0
	if trail and trail.minimap and sPc then
		local half, radius, square = sHalf, sRadius, sSquare
		local lim = half - MM_DOT / 2
		ua, ub, uc, va, vb, vc = 1, 0, -sPx, 0, 1, -sPy
		cr2 = radius * radius * (square and 2 or 1) -- a square's corners reach radius * sqrt(2)
		local count = 0
		local runs = trail.runs
		for k = 1, #runs do
			local run = runs[k]
			if run.c == sPc then count = runDots(loadRun(run, sPc, sPx, sPy), MM_SPACING, frac, clipCircle, MM_CAP, count) end
		end
		local project, version = Pins.Project, trail.version
		for i = 1, count do
			local x, y = project(dotX[i], dotY[i], sFacing, radius, half, sRotate, square, nil)
			local inside
			if square then inside = abs(x) <= lim and abs(y) <= lim else inside = x * x + y * y <= lim * lim end
			if inside then
				shown = shown + 1
				local t = mmDots[shown] or minimapDot(shown)
				if t.trailVersion ~= version then
					t:SetVertexColor(trail.r, trail.g, trail.b, TRAIL_ALPHA)
					t.trailVersion = version
				end
				t:ClearAllPoints()
				t:SetPoint("CENTER", Minimap, "CENTER", x, y)
				t:Show()
			end
		end
	end
	for i = shown + 1, mmDotCount do mmDots[i]:Hide() end
	mmDotCount = shown
	mmTrailAt = GetTime()
end

-- Areas on the minimap (layers with minimapAreas): textures on one frame
-- just under the trail, masked to the minimap's shape so a disc or hull
-- reaching past the rim is cut there (a round minimap: pin-fill's disc, which
-- covers 42 of its 64 pixels; a square one: a plain square). A client
-- without mask textures shows only the ones that fit inside.
SQUARE_MASK = "Interface\\Buttons\\WHITE8X8"
mmArea, mmMask, mmMaskSquare, mmMaskHalf = mmArea, mmMask, mmMaskSquare, mmMaskHalf
mmAreas, mmAreaCount = {}, 0
-- Hulls: one record per hull drawn, { pin, texs, used, outline, ... }.
mmHulls, mmHullCount = {}, 0

-- The mask follows the minimap's shape and size.
function shapeMask(square, half)
	if not mmMask or (square == mmMaskSquare and half == mmMaskHalf) then return end
	mmMaskSquare, mmMaskHalf = square, half
	local d = square and half * 2 or half * 2 * 64 / 42
	mmMask:SetTexture(square and SQUARE_MASK or MEDIA .. "pin-fill", "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
	mmMask:SetSize(d, d)
end

function areaFrame()
	if mmArea then return end
	mmArea = ns.CreateFrameUnder("Frame", nil, Minimap)
	mmArea:SetAllPoints(Minimap)
	mmArea:SetFrameLevel((Minimap:GetFrameLevel() or 1) + 3)
	-- SetClipsChildren clips all child textures to the frame boundary, so hulls
	-- that extend past the minimap edge are cut there. On a square minimap this
	-- gives exact clipping; on a round one the mask (below) does the round clip.
	if mmArea.SetClipsChildren then mmArea:SetClipsChildren(true) end
	if mmArea.CreateMaskTexture then
		mmMask = mmArea:CreateMaskTexture()
		mmMask:SetPoint("CENTER", mmArea, "CENTER", 0, 0)
		shapeMask(sSquare, sHalf)
	end
end

function minimapArea(i)
	local t = mmArea:CreateTexture(nil, "BACKGROUND")
	t:SetTexture(MEDIA .. "area")
	if mmMask and t.AddMaskTexture then t:AddMaskTexture(mmMask) end
	mmAreas[i] = t
	return t
end

-- Place pin p's area (yards) at the world offset (dn, dw) from the player as
-- the count-th disc; returns the new count.
function placeArea(count, p, layer, dn, dw, area)
	local half, radius = sHalf, sRadius
	areaFrame()
	if not mmMask and sqrt(dn * dn + dw * dw) + area > radius then return count end
	count = count + 1
	local t = mmAreas[count] or minimapArea(count)
	if t.pin ~= p or t.version ~= layer.version then
		local r, g, b, a = pinColor(p)
		t:SetVertexColor(r, g, b, a * AREA_ALPHA)
		t.pin, t.layer, t.version = p, layer, layer.version
	end
	local d = 2 * area * half / radius
	local x, y = Pins.Project(dn, dw, sFacing, radius, half, sRotate, sSquare, nil)
	t:SetSize(d, d)
	t:ClearAllPoints()
	t:SetPoint("CENTER", Minimap, "CENTER", x, y)
	t:Show()
	return count
end

function hideAreasFrom(count)
	for i = count + 1, mmAreaCount do
		local t = mmAreas[i]
		t:Hide()
		t.pin, t.layer = nil, nil
	end
	mmAreaCount = count
end

function hullRecord(i)
	local rec = { texs = {}, used = 0, outline = {} }
	-- Piece k shares piece 1's rectangle, so placing piece 1 places the hull.
	rec.get = function(k)
		local t = rec.texs[k]
		if not t then
			t = hullTexture(mmArea)
			if mmMask and t.AddMaskTexture then t:AddMaskTexture(mmMask) end
			if k > 1 then t:SetAllPoints(rec.texs[1]) end
			rec.texs[k] = t
		end
		t:Show()
		return t
	end
	mmHulls[i] = rec
	return rec
end

-- Place layer pin i's hull, its centre at the world offset (dn, dw) from the
-- player, as the count-th hull; returns the new count. Its shape is laid out
-- again only when the pin, the zoom, the minimap's size or (rotating) the
-- facing changed; walking only moves it.
function placeHull(count, p, layer, i, dn, dw)
	areaFrame()
	-- Without a round mask, the hull may slightly overflow the circular rim;
	-- that is preferable to the area not showing at all (regression from d8e93587
	-- replacing per-spot discs with convex hulls whose reach typically exceeds the
	-- minimap radius).
	count = count + 1
	local rec = mmHulls[count] or hullRecord(count)
	local facing = sRotate and sFacing or false
	if rec.pin ~= p or rec.version ~= layer.version or rec.radius ~= sRadius or rec.half ~= sHalf or rec.facing ~= facing then
		local hull, cx, cy, n = p.hull, layer.wx[i], layer.wy[i], 0
		local project = Pins.Project
		for k = 1, #hull - 1, 2 do
			n = n + 1
			hx[n], hy[n] = project(hull[k] - cx, hull[k + 1] - cy, sFacing, sRadius, sHalf, sRotate, sSquare, nil)
		end
		local r, g, b, a = pinColor(p)
		local used, hw, hh
		used, hw, hh, n = layHull(n, HULL_RIM_WIDTH, rec.get, r, g, b, a)
		for k = used + 1, rec.used do rec.texs[k]:Hide() end
		rec.used = used
		if used > 0 then rec.texs[1]:SetSize(2 * hw, 2 * hh) end
		outline(rec.outline, used > 0 and n or 0)
		rec.pin, rec.layer, rec.version, rec.radius, rec.half, rec.facing = p, layer, layer.version, sRadius, sHalf, facing
	end
	if rec.used > 0 then
		local x, y = Pins.Project(dn, dw, sFacing, sRadius, sHalf, sRotate, sSquare, nil)
		local t = rec.texs[1]
		t:ClearAllPoints()
		t:SetPoint("CENTER", Minimap, "CENTER", x, y)
		rec.x, rec.y = x, y
	end
	return count
end

function hideHullsFrom(count)
	for i = count + 1, mmHullCount do
		local rec = mmHulls[i]
		for k = 1, rec.used do rec.texs[k]:Hide() end
		rec.used, rec.pin, rec.layer = 0, nil, nil
	end
	mmHullCount = count
end

-- Place every visible pin for the current state (sPc, sPx, ...).
function drawMinimap()
	gen = gen + 1
	stats.draws = stats.draws + 1
	local half = sHalf
	local base = (Minimap:GetFrameLevel() or 1) + 5
	local areas, hulls = 0, 0
	if sPc then
		local reach = sRadius * MINIMAP_REACH
		local reach2 = reach * reach
		-- How far from the player the view reaches: a square's corners reach
		-- radius * sqrt(2).
		local view = sSquare and sRadius * 1.415 or sRadius
		shapeMask(sSquare, half)
		for _, name in ipairs(order) do
			local layer = layers[name]
			if layer and layer.minimap and not hidden[name] then
				if not layer.resolved then resolveLayer(layer) end
				local pins, lx, ly = layer.pins, layer.wx, layer.wy
				local edge = layer.edge
				-- A pin's size at this zoom, its medallion held to the max.
				local scale, most = layer.scale * sZoomK, PIN_ZOOM.minimap.max / MEDAL_SCALE
				local maxArea = layer.maxArea or 0
				local list, n = nearPins(layer, maxArea > 0 and max(reach, view + maxArea) or reach)
				stats.visited = stats.visited + n
				for k = 1, n do
					local i = list[k]
					local dn, dw = lx[i] - sPx, ly[i] - sPy
					local d2 = dn * dn + dw * dw
					local p = pins[i]
					if maxArea > 0 then
						local r = layer.reach[i]
						if r > 0 and d2 <= (view + r) * (view + r) then
							if type(p.hull) == "table" then
								hulls = placeHull(hulls, p, layer, i, dn, dw)
							elseif p.area then
								areas = placeArea(areas, p, layer, dn, dw, r)
							end
						end
					end
					if not p.areaOnly and (edge or d2 <= reach2) then
						local f = assigned[p]
						local size = (tonumber(p.minimapSize) or tonumber(p.size) or MINIMAP_SIZE) * scale
						local cap = p.state == "focus" and most / FOCUS_SCALE or most
						if size > cap then size = cap end
						if not f or f.layer ~= layer or f.version ~= layer.version or f.zoomK ~= sZoomK then
							if not f then
								f = acquireMinimap()
								assigned[p] = f
							end
							f.pin, f.layer, f.version, f.zoomK = p, layer, layer.version, sZoomK
							applyLook(f, p, size)
							setHit(f, PIN_ZOOM.minimap.hit)
							f:SetFrameLevel(base + max(0, tonumber(p.priority) or 0))
							f:EnableMouse(p.tooltip ~= nil or p.onClick ~= nil)
							f:Show()
						end
						f.gen = gen
						-- A map mark stops its medallion at the rim, the pointer over it.
						local inset = size * (f.mapMark and MEDAL_SCALE * 0.5 or 0.35)
						local x, y, clamped = Pins.Project(dn, dw, sFacing, sRadius, half, sRotate, sSquare,
							edge and (half - inset) or nil)
						f:ClearAllPoints()
						f:SetPoint("CENTER", Minimap, "CENTER", x, y)
						if clamped ~= f.clamped then
							f.clamped = clamped
							showParts(f, p, clamped)
						end
						if clamped then
							local ang = atan2(y, x)
							f.edge:SetRotation(ang - pi / 2)
							if f.edgeReach then
								f.edge:ClearAllPoints()
								f.edge:SetPoint("CENTER", f, "CENTER", cos(ang) * f.edgeReach, sin(ang) * f.edgeReach)
							end
						end
					end
				end
			end
		end
	end
	for i = #mmActive, 1, -1 do
		if mmActive[i].gen ~= gen then releaseAt(i) end
	end
	hideAreasFrom(areas)
	hideHullsFrom(hulls)
	drawTrailMinimap(trailFrac())
	-- Held still, the world map's dots follow the player with these redraws.
	if world.dotsShown() and stillTrail() then drawTrailWorld(TRAIL_STILL) end
	updateTrailDriver()
end

-- Compare the state the minimap pins depend on; redraw when it changed.
-- Returns true when something changed.
function sample(force)
	if not Minimap then return false end
	local C = ns.Compat
	local pc, px, py
	if C and C.GetPlayerWorldPosition then pc, px, py = C.GetPlayerWorldPosition() end
	local rotate = isRotating()
	local facing = rotate and C and C.GetPlayerFacing and C.GetPlayerFacing() or nil
	local radius, half, square = viewRadius(), Minimap:GetWidth() / 2, isSquare()
	-- The zoom's factor on pin sizes: `wide` at the widest zoom (0) to `close` at the closest.
	local zoom, levels = Minimap.GetZoom and Minimap:GetZoom() or 0, Minimap.GetZoomLevels and Minimap:GetZoomLevels() or 6
	local t = levels > 1 and zoom / (levels - 1) or 0
	if t > 1 then t = 1 elseif t < 0 then t = 0 end
	local z = PIN_ZOOM.minimap
	local zoomK = z.wide + (z.close - z.wide) * t
	if not force and not dirty and pc == sPc and px == sPx and py == sPy and facing == sFacing
		and radius == sRadius and rotate == sRotate and half == sHalf and square == sSquare and zoomK == sZoomK then
		return false
	end
	sPc, sPx, sPy, sFacing, sRadius, sRotate, sHalf, sSquare, sZoomK = pc, px, py, facing, radius, rotate, half, square, zoomK
	dirty = false
	drawMinimap()
	return true
end

idle, accum = 0, 0

function wake()
	if driver and not driver:IsShown() then
		idle, accum = 0, 0
		driver:Show()
	end
end

function ensureMinimap()
	if driver or not Minimap then return end
	driver = CreateFrame("Frame", nil, UIParent)
	driver:Hide()
	driver:SetScript("OnUpdate", ns.Safe(function(self, elapsed)
		accum = accum + elapsed
		if accum < DRIVE_INTERVAL then return end
		local step = accum
		accum = 0
		if sample(false) then
			idle = 0
		else
			idle = idle + step
			if idle >= IDLE_AFTER then self:Hide() end
		end
	end))
	Pins.driver = driver
end

function updateWatcher()
	local want = hasMinimapPins()
	if want and not watcher and C_Timer and C_Timer.NewTicker then
		watcher = ns.NewTicker(WATCH_INTERVAL, function()
			if sample(false) then
				wake()
			elseif mmDotCount > 0 then
				updateTrailDriver() -- the minimap may have been shown again
			end
		end)
	elseif not want and watcher then
		watcher:Cancel()
		watcher = nil
	end
end

function redraw(force)
	updateWatcher()
	if not hasMinimapPins() then
		releaseAllMinimap()
		hideAreasFrom(0)
		hideHullsFrom(0)
		drawTrailMinimap(0) -- no trail: hides its dots
		dirty = true
		return
	end
	sample(force)
end

-- Layer changes in one frame share one redraw on the next (unless the
-- watcher drew them first).
queued = false
function flushQueued()
	if not queued then return end
	queued = false
	redraw(dirty)
end

-- layersChanged: pins or visibility changed, redraw on the next frame.
function refreshMinimap(layersChanged)
	if not Minimap then return end
	ensureMinimap()
	if layersChanged then
		dirty = true
		if C_Timer and C_Timer.After then
			if not queued then
				queued = true
				ns.After(0, flushQueued)
			end
			return
		end
	end
	redraw(layersChanged)
end

-- The pin a world map frame of Pins shows: { pin, layer, x, y } (x, y in
-- percent of the viewed map), or nil for any other frame (Nav/Journey.lua
-- tells Polestar's pins under the mouse by it).
function Pins.WorldPinOf(frame)
	local list = world.pins
	for i = 1, list.n do
		if list[i] == frame then return frame.data end
	end
	return nil
end

-- Frames drawn on the open world map, in draw order (diagnostics and tests;
-- a draw still due this frame runs first): kind "pins" (a frame's `data`:
-- { pin, layer, x, y }, x and y in percent of the viewed map), "areas" (the
-- same and dx, the radius in percent of the map's width) or "hulls" (the
-- same and xs, ys, n, the corners; the frame's `used` pieces of `texs`, its
-- `outline`).
function Pins.GetWorldFrames(kind)
	world.flush()
	local list = kind == "areas" and world.areas or kind == "hulls" and world.hulls or world.pins
	local out = {}
	if world.view and world.view.shown then
		for i = 1, list.n do out[i] = list[i] end
	end
	return out
end

-- Frames currently drawn on the minimap for a layer (diagnostics and tests;
-- a redraw still queued for this frame runs first).
function Pins.GetMinimapFrames(name)
	flushQueued()
	local out = {}
	for _, f in ipairs(mmActive) do
		if f.layer and f.layer.name == name then out[#out + 1] = f end
	end
	return out
end

-- Area discs currently drawn on the minimap for a layer (diagnostics and
-- tests; a redraw still queued for this frame runs first).
function Pins.GetMinimapAreas(name)
	flushQueued()
	local out = {}
	for i = 1, mmAreaCount do
		local t = mmAreas[i]
		if t.layer and t.layer.name == name then out[#out + 1] = t end
	end
	return out
end

-- Hulls currently drawn on the minimap for a layer (diagnostics and tests; a
-- redraw still queued for this frame runs first): { pin, texs, used,
-- outline = { x1, y1, ... } (pixels around x, y, its centre's place on the
-- minimap, y up), x, y }.
function Pins.GetMinimapHulls(name)
	flushQueued()
	local out = {}
	for i = 1, mmHullCount do
		local rec = mmHulls[i]
		if rec.layer and rec.layer.name == name and rec.used > 0 then out[#out + 1] = rec end
	end
	return out
end

-- What the areas draw now, per surface: hulls and the textures they are cut
-- from, and discs (in game: /dump Polestar.Pins.AreaStats()).
function Pins.AreaStats()
	flushQueued()
	local out = { world = { hulls = 0, pieces = 0, discs = 0 }, minimap = { hulls = 0, pieces = 0, discs = mmAreaCount } }
	world.flush()
	if world.view and world.view.shown then
		local hulls = world.hulls
		for i = 1, hulls.n do
			out.world.hulls = out.world.hulls + 1
			out.world.pieces = out.world.pieces + hulls[i].used
		end
		out.world.discs = world.areas.n
	end
	for i = 1, mmHullCount do
		local used = mmHulls[i].used
		if used > 0 then
			out.minimap.hulls = out.minimap.hulls + 1
			out.minimap.pieces = out.minimap.pieces + used
		end
	end
	return out
end

---------------------------------------------------------------------------
-- Trail animation: one driver for both surfaces, at most every
-- TRAIL_INTERVAL, awake only while dots show on a visible minimap or an
-- open world map and motion is not reduced.
---------------------------------------------------------------------------

trailDriver = trailDriver
trailAccum = 0

function minimapTrailShown()
	return mmDotCount > 0 and Minimap ~= nil and Minimap:IsVisible() and true or false
end


function trailTick(self, elapsed)
	trailAccum = trailAccum + elapsed
	if trailAccum < TRAIL_INTERVAL then return end
	trailAccum = 0
	local frac = trailFrac()
	-- The pins' own redraw may have drawn the minimap's dots this frame.
	if minimapTrailShown() and GetTime() - mmTrailAt >= TRAIL_INTERVAL / 2 then drawTrailMinimap(frac) end
	if world.dotsShown() then drawTrailWorld(frac) end
	updateTrailDriver()
end

function updateTrailDriver()
	if not stillTrail() and (minimapTrailShown() or world.dotsShown()) then
		if not trailDriver then
			trailDriver = CreateFrame("Frame", nil, UIParent)
			trailDriver:Hide()
			trailDriver:SetScript("OnUpdate", ns.Safe(trailTick))
			Pins.trailDriver = trailDriver
		end
		if not trailDriver:IsShown() then
			trailAccum = 0
			trailDriver:Show()
		end
	elseif trailDriver and trailDriver:IsShown() then
		trailDriver:Hide()
	end
end

-- Trail dots drawn on a surface (textures: "minimap" or "world"), from the
-- line's start (diagnostics and tests; a queued redraw runs first).
function Pins.GetTrailFrames(surface)
	local out = {}
	if surface == "world" then
		world.flush()
		local t = world.trail
		for i = 1, t and t.n or 0 do out[i] = t.dots[i] end
	else
		flushQueued()
		for i = 1, mmDotCount do out[i] = mmDots[i] end
	end
	return out
end

-- ui.reduceMotion stops or restarts the crawl at once.
ns.On("SETTING_CHANGED", function(path)
	if path ~= "" and path ~= "ui" and path ~= "ui.reduceMotion" then return end
	if not trail then return end
	local frac = trailFrac()
	if Minimap then drawTrailMinimap(frac) end
	if world.view and world.view.shown then drawTrailWorld(frac) end
	updateTrailDriver()
end)

function moved()
	if hasMinimapPins() then wake() end
end
for _, event in ipairs({
	"PLAYER_STARTED_MOVING", "PLAYER_STARTED_TURNING", "MINIMAP_UPDATE_ZOOM", "CVAR_UPDATE",
	"ZONE_CHANGED", "ZONE_CHANGED_INDOORS", "ZONE_CHANGED_NEW_AREA", "PLAYER_ENTERING_WORLD",
}) do
	ns.RegisterEvent(event, moved)
end

-- A late Compat (or a map frame registered after SetLayer) resolves pins again.
function reresolve()
	for _, name in ipairs(order) do
		local layer = layers[name]
		if layer and (not layer.resolved or layer.unresolved > 0) then resolveLayer(layer) end
	end
	refreshWorld()
	refreshMinimap(true)
end
ns.OnInit(reresolve)

ns.OnLogin(function()
	reresolve()
	if world.install() then return end
	local function onLoaded(_, name)
		if name == "Blizzard_WorldMap" and world.install() then ns.UnregisterEvent("ADDON_LOADED", onLoaded) end
	end
	ns.RegisterEvent("ADDON_LOADED", onLoaded)
end)

if type(ns.Theme) == "table" and type(ns.Theme.OnChanged) == "function" then
	ns.Theme.OnChanged(function()
		for _, name in ipairs(order) do
			local layer = layers[name]
			if layer then layer.version = layer.version + 1 end
		end
		refreshWorld()
		refreshMinimap(true)
	end)
end
