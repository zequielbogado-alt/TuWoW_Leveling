local ADDON, ns = ...
setfenv(1, ns._pinsEnv)
-- World map: frames of Polestar's own on the map's canvas, driven by the
-- world map's view (Core/MapCanvas.lua). The map is only read: no data
-- provider, no pin pool of the map's, no AcquirePin, so the gamepad
-- interface's secure code never meets a value of Polestar's (see the
-- header of Core/MapCanvas.lua). Each kind sits at the frame level the map
-- gives Blizzard's own pins of that sort:
--   pins        PIN_FRAME_LEVEL_SUPER_TRACKED_QUEST, counter-scaled as a
--               map pin with SetScalingLimits(1, 0.7, 0.9) is (PIN_ZOOM:
--               smaller than its size zoomed out, growing as the map
--               zooms in, a medallion held to its max on screen); tooltip
--               and click over at least its hit size on screen, with the mouse
--               and with the gamepad's map cursor and A (below), the right
--               button passed through to the map (zoom out)
--   areas, hulls, trail dots
--               PIN_FRAME_LEVEL_QUEST_BLOB, under every pin, no mouse; areas
--               and hulls in canvas units (they scale with the terrain),
--               dots counter-scaled with SetScalingLimits(1, 1, 1.25)
-- A kind's frames are used in order, made in that order: the i-th pin of a
-- draw is always the i-th frame, so a redraw hands every frame back the pin
-- it showed, and higher priorities, drawn last, sit on top. Layer changes
-- while the map is open are drawn once, on its next frame.
---------------------------------------------------------------------------

-- What the rest of the file reads: the view, the frames drawn (n of each
-- kind), the trail's textures, install, flush and dotsShown.
world = { pins = { n = 0 }, areas = { n = 0 }, hulls = { n = 0 } }

do
	local PIN_LEVEL, BLOB_LEVEL = "PIN_FRAME_LEVEL_SUPER_TRACKED_QUEST", "PIN_FRAME_LEVEL_QUEST_BLOB"
	local PIN_ZOOMED = 1.25 -- trail dot scale zoomed in (1 zoomed out)

	local wView              -- the world map's view, once Blizzard_WorldMap is loaded
	local wDirty = false     -- something to draw on the map's next frame
	local wPins, wAreas, wHulls = world.pins, world.areas, world.hulls
	local wTrail             -- { host, dots = { texture, ... }, n, size, version }
	local passPending = false -- pin frames made in combat wait for its end to pass the right button through
	-- The viewed map (viewMap): its continent, world yards -> percent, and the
	-- trail's dot spacing (nil continent: no trail or hull can show there).
	local wC, wLeft, wTop, wKx, wKy, wSpacing
	local viewMap -- forward

	-- Centre frame f on (x, y), percent of the viewed map, at scale s.
	local function placeAt(f, x, y, s)
		local v = wView
		f:SetScale(s)
		f:ClearAllPoints()
		f:SetPoint("CENTER", v.canvas, "TOPLEFT", v.width * x / 100 / s, -v.height * y / 100 / s)
	end

	-- Place pin frame f for view v at its scale on screen (PIN_ZOOM.world:
	-- from the zoom, its medallion held to the max), the mouse taking it over
	-- the hit size at least.
	local function placePin(f, v)
		local z = PIN_ZOOM.world
		local k = z.wide + (z.close - z.wide) * (v.zoom or 0)
		if f.footPx * k > z.max then k = z.max / f.footPx end
		setHit(f, z.hit / k)
		local d = f.data
		placeAt(f, d.x, d.y, v:PinScale(k, k))
	end

	-- SetPassThroughButtons is restricted in combat on Forever
	-- (SimpleScriptRegionAPI: IsProtectedFunction + HasRestrictions): set once
	-- per frame, and for frames made in combat once it ends (PLAYER_REGEN_ENABLED).
	local function passRightButton(f)
		if InCombatLockdown and InCombatLockdown() then
			passPending = true
			return
		end
		if f.SetPassThroughButtons then f:SetPassThroughButtons("RightButton") end
		f.passThroughSet = true
	end
	ns.RegisterEvent("PLAYER_REGEN_ENABLED", function()
		if not passPending then return end
		passPending = false
		for i = 1, #wPins do
			if not wPins[i].passThroughSet then passRightButton(wPins[i]) end
		end
	end)

	-- A pin takes clicks without a click script. As the gamepad interface
	-- focuses the map, Blizzard_GamepadSmartNavigation scans every frame
	-- under it for buttons (Utility.lua, SmartNavigation_CanFocusFrame) and
	-- takes a frame with an OnMouseDown or OnMouseUp script for one, reading
	-- that script back with GetScript: Polestar's function in its secure
	-- code. Seen in game: the map's FocusGamepad then registered its
	-- SmartNavigation callbacks tainted, and the next close blocked the
	-- interface's actions. So a pin only takes the mouse (a left click stays
	-- off the map under it; the right button passes through), its OnEnter
	-- and OnLeave say which pin the pointer is on, and a click is a
	-- GLOBAL_MOUSE_DOWN and a GLOBAL_MOUSE_UP of one button on that pin.
	-- Pins.OnWorldClick(fn): fn(pin, layer, button) -> true takes a click
	-- on a world map pin before the pin's onClick (Nav/Journey.lua: Shift
	-- lets the target go).
	local mousePin, pressedPin, pressedButton
	local clickFilters = {}
	function Pins.OnWorldClick(fn) clickFilters[#clickFilters + 1] = fn end
	ns.RegisterEvent("GLOBAL_MOUSE_DOWN", function(_, button)
		if button == "RightButton" then return end
		pressedPin, pressedButton = mousePin, button
	end)
	ns.RegisterEvent("GLOBAL_MOUSE_UP", function(_, button)
		local f = pressedPin
		pressedPin = nil
		if not (f and f == mousePin and button == pressedButton and f:IsVisible()) then return end
		local d = f.data
		for i = 1, #clickFilters do
			if clickFilters[i](d.pin, d.layer, button) then return end
		end
		click(d.pin, button, f)
	end)

	local function worldPin(i)
		local f = wPins[i]
		if f then return f end
		f = ns.CreateFrameUnder("Frame", nil, wView.canvas)
		buildLook(f)
		f.data = {}
		f:EnableMouse(true)
		f:SetScript("OnEnter", function(self)
			mousePin = self
			showTooltip(self, self.data.pin)
		end)
		f:SetScript("OnLeave", function(self)
			if mousePin == self then mousePin = nil end
			GameTooltip:Hide()
		end)
		f:SetScript("OnMouseDown", function(self, button)
			if button == "RightButton" then return end
			pressedPin, pressedButton = self, button
		end)
		f:SetScript("OnMouseUp", function(self, button)
			if button == "RightButton" then
				if WorldMapButton_OnClick and WorldMapButton then
					WorldMapButton_OnClick(WorldMapButton, "RightButton")
				end
				return
			end
			local p = pressedPin
			pressedPin = nil
			if not (p == self and button == pressedButton and self:IsVisible()) then return end
			local d = self.data
			for k = 1, #clickFilters do
				if clickFilters[k](d.pin, d.layer, button) then return end
			end
			click(d.pin, button, self)
		end)
		passRightButton(f)
		wPins[i] = f
		return f
	end

	-- Areas: a pin's `area` (yards) as a disc, its diameter dx / 50 of the
	-- canvas's width (dx: the radius in percent of the map's width).
	local function worldArea(i)
		local f = wAreas[i]
		if f then return f end
		f = ns.CreateFrameUnder("Frame", nil, wView.canvas)
		f.tex = f:CreateTexture(nil, "BACKGROUND")
		f.tex:SetTexture(MEDIA .. "area")
		f.tex:SetAllPoints()
		f.data = {}
		wAreas[i] = f
		return f
	end

	local function layoutArea(f)
		local d = f.data
		local size = d.dx / 50 * wView.width
		f:SetSize(size, size)
		placeAt(f, d.x, d.y, 1)
	end

	-- Hulls: a pin's `hull` as a region in canvas units; the rim stays
	-- HULL_RIM_WIDTH wide on screen at any zoom.
	local function worldHull(i)
		local f = wHulls[i]
		if f then return f end
		f = ns.CreateFrameUnder("Frame", nil, wView.canvas)
		f.texs, f.used, f.outline = {}, 0, {}
		f.get = function(k)
			local t = f.texs[k]
			if not t then
				t = hullTexture(f)
				t:SetAllPoints(f)
				f.texs[k] = t
			end
			t:Show()
			return t
		end
		f.data = { xs = {}, ys = {} }
		wHulls[i] = f
		return f
	end

	local function rimWidth()
		return HULL_RIM_WIDTH / (wView.scale or 1)
	end

	local function layoutHull(f)
		local d, v = f.data, wView
		local w, h = v.width, v.height
		local xs, ys, x, y = d.xs, d.ys, d.x, d.y
		for i = 1, d.n do hx[i], hy[i] = (xs[i] - x) / 100 * w, (y - ys[i]) / 100 * h end
		f.rim = rimWidth()
		local r, g, b, a = pinColor(d.pin)
		local used, hw, hh, n = layHull(d.n, f.rim, f.get, r, g, b, a)
		for k = used + 1, f.used do f.texs[k]:Hide() end
		f.used = used
		f:SetSize(max(2 * hw, 1), max(2 * hh, 1))
		outline(f.outline, used > 0 and n or 0)
		placeAt(f, x, y, 1)
	end

	-- Hide a kind's frames from index `from` on; they keep no pin.
	local function hideFrom(list, from)
		for i = from, list.n do
			local f = list[i]
			f:Hide()
			f.data.pin, f.data.layer = nil, nil
		end
	end

	-- Radius of a pin's area in percent of the viewed map's width, or nil.
	-- World y runs along the map's x axis (Compat.MapToWorld).
	local function areaRadius(p, layer, i, x, mapID, C)
		local r = tonumber(p.area)
		local c = layer.c[i]
		if not (r and r > 0 and c and C and C.WorldToMap) then return nil end
		local wx, wy = layer.wx[i], layer.wy[i]
		local x2 = C.WorldToMap(c, wx, wy + r, mapID) or C.WorldToMap(c, wx, wy - r, mapID)
		if not x2 then return nil end
		local dx = abs(x2 - x)
		return dx > 0 and dx or nil
	end

	-- A pin's hull in percent of the viewed map (same continent), drawn as the
	-- count + 1st hull when any of it lies on that map. Returns the new count.
	local sx, sy = {}, {}
	local function hullOn(p, layer, i, count, level)
		local hull, c = p.hull, layer.c[i]
		if not (c and c == wC) then return count end
		local n = 0
		local x0, y0, x1, y1 = math.huge, math.huge, -math.huge, -math.huge
		for k = 1, #hull - 1, 2 do
			local x, y = (hull[k + 1] - wLeft) * wKx, (hull[k] - wTop) * wKy
			n = n + 1
			sx[n], sy[n] = x, y
			if x < x0 then x0 = x end
			if x > x1 then x1 = x end
			if y < y0 then y0 = y end
			if y > y1 then y1 = y end
		end
		if n < 3 or x1 < 0 or x0 > 100 or y1 < 0 or y0 > 100 then return count end
		local f = worldHull(count + 1)
		local d = f.data
		local xs, ys = d.xs, d.ys
		for k = 1, n do xs[k], ys[k] = sx[k], sy[k] end
		d.pin, d.layer, d.n = p, layer, n
		d.x, d.y = (layer.wy[i] - wLeft) * wKx, (layer.wx[i] - wTop) * wKy
		f:SetFrameLevel(level)
		layoutHull(f)
		f:Show()
		return count + 1
	end

	-- Higher priority draws last, so it lands on top.
	local queue, qPin, qLayer, qX, qY, qPri = {}, {}, {}, {}, {}, {}
	local function byPriority(a, b)
		if qPri[a] ~= qPri[b] then return qPri[a] < qPri[b] end
		return a < b
	end

	-- Compact service groups: up to three glyphs in one medallion, 0.4 of
	-- it each, in a triangle (one above, two below; two side by side). These
	-- extra regions stay pooled.
	local STACK_AT = {
		[1] = { { 0, 0 } },
		[2] = { { -0.21, 0 }, { 0.21, 0 } },
		[3] = { { 0, 0.2 }, { -0.21, -0.15 }, { 0.21, -0.15 } },
	}
	local function stackLook(f, p)
		if not p.stack then
			for _, t in ipairs(f.stackIcons or {}) do t:Hide() end
			return
		end
		if not f.stackIcons then f.stackIcons = {} end
		f.icon:Hide()
		local n = min(#p.stack, 3)
		local medal = f.medalPx or 30
		local r, g, b, a = pinColor(p)
		for i = 1, 3 do
			local t = f.stackIcons[i]
			if i <= n then
				if not t then t = f:CreateTexture(nil, "ARTWORK", nil, i); f.stackIcons[i] = t end
				local at = STACK_AT[n][i]
				t:SetTexture((iconPath(p.stack[i])))
				t:SetSize(medal * 0.4 * GLYPH_FRAME, medal * 0.4 * GLYPH_FRAME)
				t:SetVertexColor(r, g, b, a)
				t:ClearAllPoints()
				t:SetPoint("CENTER", f, "CENTER", at[1] * medal, at[2] * medal)
				t:Show()
			elseif t then t:Hide() end
		end
	end

	-- Every layer's pins, areas and hulls, and the trail, for the viewed map.
	local function drawWorld()
		wDirty = false
		local v = wView
		local mapID = v.mapID
		local C = ns.Compat
		local n, areas, hulls = 0, 0, 0
		if mapID then
			viewMap(mapID)
			local info = C_Map and C_Map.GetMapInfo and C_Map.GetMapInfo(mapID)
			local pinLevel, blobLevel = v:Level(PIN_LEVEL), v:Level(BLOB_LEVEL)
			for _, name in ipairs(order) do
				local layer = layers[name]
				if layer and layer.world and not hidden[name]
					and (not layer.minMapType or (info and info.mapType and info.mapType >= layer.minMapType)) then
					if not layer.resolved then resolveLayer(layer) end
					local pins = layer.pins
					local first = n + 1
					for i = 1, #pins do
						local p = pins[i]
						if type(p.hull) == "table" then hulls = hullOn(p, layer, i, hulls, blobLevel) end
						if not (p.areaOnly and not p.area) then
							local x, y
							if p.map == mapID and p.x and p.y and not p.f then
								x, y = p.x, p.y
							elseif layer.c[i] and C and C.WorldToMap then
								x, y = C.WorldToMap(layer.c[i], layer.wx[i], layer.wy[i], mapID)
							end
							if x and x >= 0 and x <= 100 and y >= 0 and y <= 100 then
								if not p.areaOnly then
									n = n + 1
									queue[n], qPin[n], qLayer[n], qX[n], qY[n], qPri[n] = n, p, layer, x, y, tonumber(p.priority) or 0
								end
								if p.area then
									local dx = areaRadius(p, layer, i, x, mapID, C)
									if dx then
										areas = areas + 1
										local f = worldArea(areas)
										local d = f.data
										d.pin, d.layer, d.x, d.y, d.dx = p, layer, x, y, dx
										local r, g, b, a = pinColor(p)
										f.tex:SetVertexColor(r, g, b, a * AREA_ALPHA)
										f:SetFrameLevel(blobLevel)
										layoutArea(f)
										f:Show()
									end
								end
							end
						end
					end
					if layer.worldLayout then
						local projected = {}
						for i = first, n do projected[#projected + 1] = { pin = qPin[i], x = qX[i], y = qY[i] } end
						local arranged = layer.worldLayout(projected, v)
						for i = first, n do qPin[i], qLayer[i] = nil, nil end
						n = first - 1
						for _, d in ipairs(arranged) do
							n = n + 1
							queue[n], qPin[n], qLayer[n], qX[n], qY[n], qPri[n] = n, d.pin, layer, d.x, d.y, tonumber(d.pin.priority) or 0
						end
					end
				end
			end
			for i = #queue, n + 1, -1 do queue[i] = nil end
			table.sort(queue, byPriority)
			for k = 1, n do
				local i = queue[k]
				local f = worldPin(k)
				local d = f.data
				d.pin, d.layer, d.x, d.y = qPin[i], qLayer[i], qX[i], qY[i]
				applyLook(f, d.pin, (tonumber(d.pin.size) or WORLD_SIZE) * d.layer.scale)
				stackLook(f, d.pin)
				f:SetFrameLevel(pinLevel)
				placePin(f, v)
				f:Show()
			end
			for i = 1, n do qPin[i], qLayer[i] = nil, nil end
		else
			wC = nil
		end
		hideFrom(wPins, n + 1)
		hideFrom(wAreas, areas + 1)
		hideFrom(wHulls, hulls + 1)
		wPins.n, wAreas.n, wHulls.n = n, areas, hulls
		drawTrailWorld(trailFrac())
		updateTrailDriver()
	end

	-- Zooming: pins grow with the zoom (PIN_ZOOM), dots keep their size on
	-- screen, hull rims their width (within a quarter); areas and hulls scale
	-- with the terrain.
	local function rescaleWorld()
		for i = 1, wPins.n do placePin(wPins[i], wView) end
		local scale = wView:PinScale(1, PIN_ZOOMED)
		local rim = rimWidth()
		for i = 1, wHulls.n do
			local f = wHulls[i]
			if not f.rim or rim > f.rim * 1.25 or rim < f.rim * 0.8 then layoutHull(f) end
		end
		local t = wTrail
		local size = WORLD_DOT * scale
		if t and t.size ~= size then
			t.size = size
			local dots = t.dots
			for i = 1, t.n do dots[i]:SetSize(size, size) end
			for i = t.n + 1, #dots do dots[i].styled = nil end
		end
	end

	function world.dotsShown()
		return wTrail ~= nil and wTrail.n > 0 and wView ~= nil and wView.shown
	end

	-- The gamepad interface's map cursor (Blizzard_GamepadSoftCursor's
	-- SoftCursor, moved by the stick while the map has the gamepad's focus)
	-- is no mouse: the map hovers its own pins near it
	-- (MapCanvasMixin:UpdateGamepadCursor, within 12 units) and clicks them
	-- on A (WorldMapMixin:GamepadMapClick). Polestar's pins do the same on
	-- the view's frames, reading the cursor: the nearest pin with a tooltip
	-- or a click within CURSOR_REACH shows its tooltip, and a press of A
	-- clicks it. A is polled with IsKeyDown, as Blizzard_GamepadActionBars'
	-- ClassActionFlyout polls its buttons, so the press still reaches the map.
	local CURSOR_REACH, CURSOR_INTERVAL = 12, 0.05 -- UI units; seconds between searches
	local hovered, hoveredPin, cursorAcc, padDown = nil, nil, 0, false

	local function unhover()
		if hovered and GameTooltip:GetOwner() == hovered then GameTooltip:Hide() end
		hovered, hoveredPin = nil, nil
	end

	-- The pin frame nearest screen point (cx, cy) that shows a tooltip or
	-- takes a click, within reach; its place from its map percent and the
	-- canvas's (no layout read per pin).
	local function pinAt(cx, cy)
		local v = wView
		local canvas = v.canvas
		local left, top = canvas:GetLeft(), canvas:GetTop()
		if not (left and top) then return nil end
		local cs = canvas:GetEffectiveScale()
		local reach = CURSOR_REACH * UIParent:GetEffectiveScale()
		local best, bestD = nil, reach * reach
		for i = 1, wPins.n do
			local f = wPins[i]
			local d = f.data
			if d.pin.tooltip or d.pin.onClick then
				local dx = (left + v.width * d.x / 100) * cs - cx
				local dy = (top - v.height * d.y / 100) * cs - cy
				local dd = dx * dx + dy * dy
				if dd <= bestD then best, bestD = f, dd end
			end
		end
		return best
	end

	local function followGamepadCursor(elapsed)
		if ns.Widgets and ns.Widgets.MenuShown() then
			if hovered then unhover() end
			-- The popup owns A until it closes and the button is released.
			padDown = true
			return
		end
		local cursor = SoftCursor
		if not (cursor and cursor:IsShown()) then
			if hovered then unhover() end
			padDown = false
			return
		end
		cursorAcc = cursorAcc + elapsed
		if cursorAcc >= CURSOR_INTERVAL or (hovered and not hovered:IsShown()) then
			cursorAcc = 0
			local x, y = cursor:GetCenter()
			local s = cursor:GetEffectiveScale()
			local f = x and pinAt(x * s, y * s)
			local p = f and f.data.pin
			if p ~= hoveredPin or f ~= hovered then
				unhover()
				if f then
					hovered, hoveredPin = f, p
					showTooltip(f, p)
				end
			end
		end
		local down = IsKeyDown and IsKeyDown(GAMEPAD_FACE_BOTTOM or "PAD1") and true or false
		if down and not padDown and hovered then click(hoveredPin, "LeftButton", hovered) end
		padDown = down
	end

	local function onWorldView(_, what, elapsed)
		if what == "tick" then
			if wDirty then drawWorld() else world.followView() end
			followGamepadCursor(elapsed)
		elseif what == "show" or what == "map" or what == "size" then
			drawWorld()
		elseif what == "scale" then
			rescaleWorld()
		elseif what == "hide" then
			unhover()
			padDown = false
			updateTrailDriver()
		end
	end

	function world.install()
		if wView then return true end
		local M = ns.MapCanvas
		wView = WorldMapFrame and M and M.Watch(WorldMapFrame, onWorldView) or nil
		world.view = wView
		world.openMap() -- OpenMap's menu switch, when it is loaded (an optional dependency: before Polestar)
		return wView ~= nil
	end

	-- Layers and the trail changed: drawn on the open map's next frame (a
	-- closed map draws everything as it opens).
	function refreshWorld()
		if wView and wView.shown then wDirty = true end
	end

	-- A draw still due this frame runs now (diagnostics and tests).
	function world.flush()
		if wDirty and wView and wView.shown then drawWorld() end
	end

	---------------------------------------------------------------------------
	-- OpenMap (an optional world map addon, its OpenMapAPI: docs/api.md in
	-- its repository). While its stitched map shows, the world map frame's
	-- map is only the zone or continent under the view's centre (or the
	-- whole world, 947), and the art around it is OpenMap's: the trail is
	-- drawn wherever it shows on screen, through OpenMap's own placement of
	-- every map on the stitched world, so the dots carry on into the
	-- neighbouring zones and across the world view. Only OpenMap's table is
	-- called (read-only, plus a switch of Polestar's in its menu); the map
	-- frame is read as everywhere else.
	--   nav.openmapDots   the trail on OpenMap's stitched map (on; its menu's switch)
	---------------------------------------------------------------------------
	local OM_MARGIN = 0.04   -- of the view's size: dots placed just past its edges
	local omHooked = false
	local omOn = false       -- the last trail draw went through OpenMap
	local omX0, omY0, omX1, omY1 = 0, 0, 0, 0 -- the view it was drawn for (map percent)
	local omRefs = {}        -- host map -> { [continent] = { map, left, top, kx, ky } }, measured once
	local omFit = {}         -- host map -> { [continent] = { ub, uc, va, vc } }: world yards -> host percent

	-- A map's continent and world yards -> percent (viewMap's measure), or nil.
	local function frameOf(C, mapID)
		local c1, top, left = C.MapToWorld(mapID, 0, 0)
		local c2, bottom, right = C.MapToWorld(mapID, 100, 100)
		if not (c1 and c1 == c2 and top ~= bottom and left ~= right) then return nil end
		return { map = mapID, c = c1, left = left, top = top, kx = 100 / (right - left), ky = 100 / (bottom - top) }
	end

	-- The maps that tell each continent's world yards on the host map: the
	-- host itself on one continent, else (the world map) its children.
	local function refsFor(C, host)
		local refs = omRefs[host]
		if refs then return refs end
		refs = {}
		local own = frameOf(C, host)
		if own then
			refs[own.c] = own
		elseif C_Map and C_Map.GetMapChildrenInfo then
			local ok, kids = pcall(C_Map.GetMapChildrenInfo, host)
			if ok and type(kids) == "table" then
				for _, kid in ipairs(kids) do
					local f = kid and kid.mapID and frameOf(C, kid.mapID)
					if f and not refs[f.c] then refs[f.c] = f end
				end
			end
		end
		omRefs[host] = refs
		return refs
	end

	-- World yards on continent c -> percent of the host map, as OpenMap
	-- places the reference map on its stitched world; nil when it can't.
	local function fitFor(OM, C, host, c)
		local byC = omFit[host]
		if not byC then
			byC = {}
			omFit[host] = byC
		end
		local fit = byC[c]
		if fit ~= nil then return fit or nil end
		local ref = refsFor(C, host)[c]
		if not ref then
			byC[c] = false
			return nil
		end
		local ok, u0, v0 = pcall(OM.WorldFromMap, ref.map, 0, 0)
		local ok1, u1, v1 = pcall(OM.WorldFromMap, ref.map, 1, 1)
		if not (ok and ok1 and u0 and u1) then return nil end -- (not built yet: asked again next draw)
		local okA, hx0, hy0 = pcall(OM.MapFromWorld, host, u0, v0)
		local okB, hx1, hy1 = pcall(OM.MapFromWorld, host, u1, v1)
		if not (okA and okB and hx0 and hx1) or hx0 == hx1 or hy0 == hy1 then return nil end
		-- reference percent: x = (wy - left) * kx, y = (wx - top) * ky; host percent = 100 * h0 + ref * (h1 - h0)
		local ub, va = ref.kx * (hx1 - hx0), ref.ky * (hy1 - hy0)
		fit = { ub = ub, uc = 100 * hx0 - ref.left * ub, va = va, vc = 100 * hy0 - ref.top * va }
		byC[c] = fit
		return fit
	end

	-- Dot spacing for a view `pct` percent of the host wide, at `perYard`
	-- percent a yard: a WORLD_DIVS-th of the view, at least
	-- WORLD_MIN_SPACING, in steps of twice the last, so the dots keep their
	-- places while a zoom stays within a step.
	local LOG2 = math.log(2)
	local function stitchedSpacing(pct, perYard)
		local raw = pct / abs(perYard) / WORLD_DIVS
		if raw <= WORLD_MIN_SPACING then return WORLD_MIN_SPACING end
		return WORLD_MIN_SPACING * 2 ^ ceil(math.log(raw / WORLD_MIN_SPACING) / LOG2 - 1e-9)
	end

	-- What the map's scroll frame shows of the canvas, in percent of the
	-- viewed map: x0, y0, x1, y1 (reads only: the canvas and its parent's place).
	local function viewRect()
		local v = wView
		local canvas = v.canvas
		local frame = canvas.GetParent and canvas:GetParent()
		local w, h = v.width or 0, v.height or 0
		if not frame or w <= 0 or h <= 0 then return 0, 0, 100, 100 end
		local cl, ct, cs = canvas:GetLeft(), canvas:GetTop(), canvas:GetEffectiveScale()
		local fl, ft, fr, fb, fs = frame:GetLeft(), frame:GetTop(), frame:GetRight(), frame:GetBottom(), frame:GetEffectiveScale()
		if not (cl and ct and fl and ft and fr and fb and cs and fs and cs > 0) then return 0, 0, 100, 100 end
		local kx, ky = 100 / (w * cs), 100 / (h * cs)
		return (fl * fs - cl * cs) * kx, (ct * cs - ft * fs) * ky, (fr * fs - cl * cs) * kx, (ct * cs - fb * fs) * ky
	end

	-- OpenMap's switch: the trail on its map.
	local function hookOpenMap(OM)
		if omHooked then return end
		omHooked = true
		if type(OM.RegisterCallback) == "function" then
			pcall(OM.RegisterCallback, Pins, "OpenMap_StitchedChanged", function() refreshWorld() end)
		end
		if type(OM.RegisterMenuToggle) == "function" then
			pcall(OM.RegisterMenuToggle, ADDON, {
				id = "trailDots",
				label = L["Polestar trail dots"],
				section = "Polestar",
				icon = MEDIA .. "pin-fill",
				get = function() return ns.Get("nav.openmapDots") and true or false end,
				set = function(on) ns.Set("nav.openmapDots", on and true or false) end,
			})
		end
	end
	ns.On("SETTING_CHANGED", function(path)
		if path == "nav.openmapDots" or path == "" or path == "nav" then refreshWorld() end
	end)

	-- OpenMapAPI while its stitched map shows, else nil.
	local function openMap()
		local OM = OpenMapAPI
		if type(OM) ~= "table" or OM.major ~= 1 or type(OM.IsStitched) ~= "function"
			or type(OM.WorldFromMap) ~= "function" or type(OM.MapFromWorld) ~= "function" then
			return nil
		end
		hookOpenMap(OM)
		local ok, on = pcall(OM.IsStitched)
		return ok and on and OM or nil
	end
	world.openMap = openMap

	-- The trail on OpenMap's stitched map: every run whose continent the
	-- host map can place, clipped to the view (and a margin). Returns the count.
	local function stitchedTrail(OM, frac, pc, px, py)
		if not ns.Get("nav.openmapDots") then return 0 end
		local C = ns.Compat
		local host = wView.mapID
		if not (C and C.MapToWorld and host) then return 0 end
		local x0, y0, x1, y1 = viewRect()
		omX0, omY0, omX1, omY1 = x0, y0, x1, y1
		local mx, my = (x1 - x0) * OM_MARGIN, (y1 - y0) * OM_MARGIN
		cx0, cy0, cx1, cy1 = x0 - mx, y0 - my, x1 + mx, y1 + my
		local count, runs = 0, trail.runs
		for k = 1, #runs do
			local run = runs[k]
			local fit = fitFor(OM, C, host, run.c)
			if fit then
				ua, ub, uc, va, vb, vc = 0, fit.ub, fit.uc, fit.va, 0, fit.vc
				count = runDots(loadRun(run, pc, px, py), stitchedSpacing(x1 - x0, fit.ub), frac, clipRect, WORLD_CAP, count)
			end
		end
		return count
	end

	-- Every frame of the open map: on OpenMap's map a pan or zoom moves the
	-- view without changing the map, so the trail follows it here.
	function world.followView()
		if not (omOn and trail and trail.world) then return end
		local x0, y0, x1, y1 = viewRect()
		local eps = (omX1 - omX0) * 0.002
		if abs(x0 - omX0) > eps or abs(y0 - omY0) > eps or abs(x1 - omX1) > eps or abs(y1 - omY1) > eps then
			drawTrailWorld(trailFrac())
			updateTrailDriver()
		end
	end

	function viewMap(mapID)
		wC = nil
		local C = ns.Compat
		if not (mapID and C and C.MapToWorld) then return end
		local c1, top, left = C.MapToWorld(mapID, 0, 0)
		local c2, bottom, right = C.MapToWorld(mapID, 100, 100)
		if not (c1 and c1 == c2 and top ~= bottom and left ~= right) then return end
		wC, wLeft, wTop = c1, left, top
		wKx, wKy = 100 / (right - left), 100 / (bottom - top)
		wSpacing = max(WORLD_MIN_SPACING, abs(right - left) / WORLD_DIVS)
	end

	-- The trail's dots: textures on one frame at the canvas's top left, laid out
	-- in canvas units; WORLD_DOT on screen like a pin.
	local function trailHost()
		if wTrail then return wTrail end
		local host = ns.CreateFrameUnder("Frame", nil, wView.canvas)
		host:SetPoint("TOPLEFT", wView.canvas, "TOPLEFT", 0, 0)
		host:SetSize(1, 1)
		wTrail = { host = host, dots = {}, n = 0 }
		world.trail = wTrail
		return wTrail
	end

	-- Place the world map's trail dots, reusing the textures already made and
	-- hiding the rest (on the map viewMap last measured).
	function drawTrailWorld(frac)
		local count = 0
		local v = wView
		omOn = false
		if trail and trail.world and v and v.shown then
			local C = ns.Compat
			local pc, px, py
			if C and C.GetPlayerWorldPosition then pc, px, py = C.GetPlayerWorldPosition() end
			local OM = openMap()
			if OM then
				omOn = true
				count = stitchedTrail(OM, frac, pc, px, py)
			elseif wC then
				ua, ub, uc, va, vb, vc = 0, wKx, -wLeft * wKx, wKy, 0, -wTop * wKy
				cx0, cy0, cx1, cy1 = 0, 0, 100, 100
				local runs = trail.runs
				for k = 1, #runs do
					local run = runs[k]
					if run.c == wC then count = runDots(loadRun(run, pc, px, py), wSpacing, frac, clipRect, WORLD_CAP, count) end
				end
			end
		end
		local t = wTrail
		if count > 0 then
			t = trailHost()
			t.host:SetFrameLevel(v:Level(BLOB_LEVEL))
			local size = WORLD_DOT * v:PinScale(1, PIN_ZOOMED)
			local restyle = t.size ~= size or t.version ~= trail.version
			t.size, t.version = size, trail.version
			local w, h, dots = v.width, v.height, t.dots
			for i = 1, count do
				local dot = dots[i]
				if not dot then
					dot = t.host:CreateTexture(nil, "ARTWORK")
					dot:SetTexture(MEDIA .. "pin-fill")
					dots[i] = dot
				end
				if restyle or not dot.styled then
					dot:SetSize(size, size)
					dot:SetVertexColor(trail.r, trail.g, trail.b, TRAIL_ALPHA)
					dot.styled = true
				end
				if i > t.n then dot:Show() end
				dot:ClearAllPoints()
				dot:SetPoint("CENTER", t.host, "TOPLEFT", dotX[i] / 100 * w, -dotY[i] / 100 * h)
			end
			-- Dots past the count wait unstyled: the size may change before they show again.
			for i = count + 1, #dots do dots[i].styled = nil end
		end
		if t then
			for i = count + 1, t.n do t.dots[i]:Hide() end
			t.n = count
		end
	end
end

---------------------------------------------------------------------------
