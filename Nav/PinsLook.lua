local ADDON, ns = ...
ns._pinsEnv = ns.ModuleEnv(function(e) e.ADDON = ADDON; e.ns = ns end)
setfenv(1, ns._pinsEnv)
-- Polestar.Pins: map and minimap icons for every module (quests, maps, QoL,
-- Nav's own target). Contract: docs/ARCHITECTURE.md, "Pins".
--
--   Pins.SetLayer(layer, pins, opts)   replace a layer; opts = { world = true, minimap = true, edge = false, scale = 1,
--                                      minimapAreas = false, minMapType = nil, worldLayout = nil }
--   minMapType limits world-map pins to that UIMapType or narrower views; the minimap is unaffected.
--   worldLayout(projected, view) -> { { pin, x, y }, ... } lays out this layer on the world map only.
--   Pins.ClearLayer(layer)
--   Pins.SetLayerVisible(layer, visible)
--   pin = { map, x, y, f, icon, size, color = { r, g, b, a }, tooltip = string | function(tooltip),
--           onClick = function(button, owner), priority, text }
--   text: a few characters (a step number) drawn on the pin, outlined, in its colour's alpha.
--   Additive pin fields: c, wx, wy (world position instead of map/x/y), glow (soft halo),
--   area (yards: a soft disc of that radius under the pin, in the pin's colour, on the world
--   map; on the minimap too in a layer with minimapAreas, cut at the minimap's rim),
--   hull ({ wx1, wy1, wx2, wy2, ... }: a convex region in world yards on the pin's continent,
--   filled softly with a rim in the pin's colour, drawn like area), areaOnly (true: only the
--   area or hull draws, no pin), backdrop (true: icon pins sit on a dark
--   Theme "scrim" disc), ring ({ r, g, b, a }: a thin circle around the pin), minimapSize
--   (size on the minimap instead of size).
--   Map marks (icon "map:<name>", Media/Map/icon-<name>, tools/media/map.js): the glyph
--   sits in the skin's medallion (medal = false: bare, for the target's other spots and
--   dots); ring2 ({ r, g, b, a }: a dashed circle further out), badge (a number or text in
--   an accent capsule at the top right: a cluster's count, "?" for an unknown flight
--   master), state ("focus": 1.3 times the size in an accent ring; "dim": at 60%),
--   medalSize (the medallion's own size, a cluster's). A map mark clamped to the minimap's
--   rim keeps medallion and glyph, the edge pointer on its side toward the target.
--   Sizes (size, minimapSize, times the layer's scale) are drawn smaller as the view
--   widens (PIN_ZOOM below), so a medallion matches the game's own marks at the
--   default zoom; a pin's hit area stays at least its medallion and PIN_ZOOM's hit
--   across.
--   Pins.SetTrail(runs, opts)          the travel route's dots; runs = { { live = true, point, ... }, ... },
--                                      point = { c, wx, wy }; opts = { world = true, minimap = true, color }
--   Pins.ClearTrail()
--   Pins.MinimapCursor() -> dNorth, dWest | nil   yards from the player to the cursor on the minimap
--   Pins.MinimapView() -> radius, facing | nil, square   what the minimap shows (facing nil: north-up)
--
-- Positions are converted to world yards once per SetLayer (Era-frame `f = "e"`
-- included), then to map percent of whatever map the world map shows, and
-- projected onto the minimap honouring its zoom, indoor scale, rotation and
-- shape. Frames are pooled on both surfaces.
--
-- Cost model: the minimap is only touched when something it depends on
-- changed (position, facing on a rotating minimap, zoom, size, layers). A
-- 10 Hz watcher compares those scalars; while they keep changing a driver
-- frame repositions pins at most 30 times a second and hides itself after
-- 0.3 s of stillness, so standing still costs no per-frame work at all.
-- Movement events wake the driver at once. Layer changes redraw once on the
-- next frame however many layers changed in this one. Each layer indexes its
-- pins by continent and by CELL-yard grid square, so a redraw visits the
-- pins around the player, not every pin a module published. A hull on the
-- minimap is laid out again only when the zoom, the minimap's size or (when
-- it rotates) the facing changed; walking moves one anchor.
--
-- The trail is dots along the straight lines between a run's points (`live`:
-- the player's position goes first), anchored to the run's end: a dot every
-- spacing yards counted back from the destination, so dots keep their place
-- in the world as the player walks and run on across joints. A continent
-- change breaks a run. Minimap dots sit MM_SPACING apart inside the visible
-- disc (or square); world map dots a WORLD_DIVS-th of the viewed map's width
-- apart (at least WORLD_MIN_SPACING), inside its rectangle, under every pin;
-- on OpenMap's stitched map, inside what the view shows, through OpenMap's
-- placement (see "OpenMap" below).
-- Segment lengths are measured once per SetTrail. The dots crawl toward the
-- destination, one spacing per TRAIL_PERIOD, from a 20 Hz driver that runs
-- only while dots show on a visible minimap or an open world map; with
-- ui.reduceMotion they hold still and move only with the minimap's redraws.

-- local ADDON, ns = ...

type, pairs, ipairs, tonumber, pcall = type, pairs, ipairs, tonumber, pcall
sqrt, atan2, sin, cos, abs, max, pi, ceil = math.sqrt, math.atan2, math.sin, math.cos, math.abs, math.max, math.pi, math.ceil
floor, min = math.floor, math.min

Pins = {}
ns.Pins = Pins
L = ns.L

MEDIA = "Interface\\AddOns\\" .. ADDON .. "\\Media\\Nav\\"
MAP_MEDIA = "Interface\\AddOns\\" .. ADDON .. "\\Media\\Map\\"
-- Map marks (see the header): the medallion is MEDAL_SCALE times the mark (an
-- even size), the glyph texture GLYPH_FRAME times it (its 1.5-unit contour
-- margin on the 24-unit grid), the rings 5 and 11 px wider than the medallion,
-- the glow GLOW_SCALE times it, the edge pointer EDGE_W by EDGE_H of it.
MEDAL_SCALE, GLYPH_FRAME, GLOW_SCALE = 1.4, 27 / 24, 2.3
RING_PAD, RING2_PAD = 5, 11
EDGE_W, EDGE_H = 0.42, 0.3
FOCUS_SCALE, DIM_ALPHA = 1.3, 0.6
BADGE_H = 14
AREA_ALPHA = 0.32 -- area disc opacity, times the pin colour's alpha
-- Hulls: fill and rim opacity (times the pin colour's alpha), the rim's width
-- on screen (UI units), and the solid texture their pieces are cut from.
HULL_FILL, HULL_RIM, HULL_RIM_WIDTH = 0.2, 0.7, 1.5
WHITE = "Interface\\Buttons\\WHITE8X8"
WORLD_SIZE, MINIMAP_SIZE = 16, 14
-- Zoom (Fitz, 0.3.0: the marks were far larger than the game's): on each
-- surface a pin is drawn at `wide` of its size at the widest zoom (the
-- default) up to `close` at the closest; no medallion grows past `max` (on
-- screen), and a pin takes the mouse over at least its medallion and `hit`
-- across. World map: a 16 px mark's 22 px medallion at 15.4 zoomed out (the
-- game's 16 px POI icons), 19.8 zoomed in (the game's grow 1.2 times).
-- Minimap: a 14 px mark's medallion at 14 at zoom 0 (as the game's blips), 20
-- at zoom 5.
PIN_ZOOM = {
	world = { wide = 0.7, close = 0.9, max = 28, hit = 20 },
	minimap = { wide = 0.7, close = 1, max = 24, hit = 14 },
}
WATCH_INTERVAL = 0.1
DRIVE_INTERVAL = 1 / 30
IDLE_AFTER = 0.3
MINIMAP_REACH = 1.0 -- fraction of the view radius a non-edge pin may sit at
CELL = 500 -- yards per grid square of a layer's minimap index

-- View diameters in yards per zoom level, for clients without
-- C_Minimap.GetViewRadius (outdoor / indoor scale).
OUTDOOR = { [0] = 466 + 2 / 3, 400, 333 + 1 / 3, 266 + 2 / 3, 200, 133 + 1 / 3 }
INDOOR = { [0] = 300, 240, 180, 120, 80, 50 }

-- Trail dots (see the header).
TRAIL_PERIOD = 1.5             -- seconds for the dots to crawl one spacing
TRAIL_INTERVAL = 1 / 20        -- animation rate cap
TRAIL_STILL = 0.5              -- phase while ui.reduceMotion holds the dots still
TRAIL_ALPHA = 0.85
MM_SPACING, MM_DOT, MM_CAP = 40, 5, 40 -- minimap: yards apart, px, most dots
WORLD_DIVS, WORLD_MIN_SPACING = 60, 15  -- world map: spacing = map width in yards / 60, at least 15 yd
WORLD_DOT, WORLD_CAP = 6, 300

---------------------------------------------------------------------------
-- Layers
---------------------------------------------------------------------------

layers = {}  -- name -> layer
order = {}   -- layer names, in first-SetLayer order
hidden = {}  -- name -> true (SetLayerVisible(false) may precede SetLayer)

refreshWorld, refreshMinimap = refreshWorld, refreshMinimap -- forward
drawTrailWorld, updateTrailDriver = drawTrailWorld, updateTrailDriver -- forward (trail)

function resolveLayer(layer)
	local C = ns.Compat
	local pins = layer.pins
	local wc, wxs, wys, reach = layer.c, layer.wx, layer.wy, layer.reach
	local unresolved = 0
	-- byC[c] = { i, ... } (edge layers draw every pin on the continent);
	-- grid[c][gx][gy] = { i, ... } for the others.
	local byC, grid = {}, {}
	local floor = math.floor
	for i = 1, #pins do
		local p = pins[i]
		local c, wx, wy = p.c, p.wx, p.wy
		if not (c and wx and wy) then
			c, wx, wy = nil, nil, nil
			if C and C.MapToWorld and p.map and p.x and p.y then c, wx, wy = C.MapToWorld(p.map, p.x, p.y, p.f) end
		end
		wc[i], wxs[i], wys[i] = c or false, wx or 0, wy or 0
		-- How far the pin's area or hull reaches from its position (yards).
		local r = tonumber(p.area) or 0
		local hull = p.hull
		if c and type(hull) == "table" then
			for k = 1, #hull - 1, 2 do
				local dx, dy = hull[k] - wx, hull[k + 1] - wy
				local d = sqrt(dx * dx + dy * dy)
				if d > r then r = d end
			end
			-- 3.3.5a fallback: Texture:SetVertexOffset does not exist on 3.3.5a,
			-- so convert convex hulls into soft circular area discs of radius r.
			p.hull = nil
			if r > 0 then p.area = r end
		end
		reach[i] = r
		if c then
			local list = byC[c]
			if not list then
				list = {}
				byC[c] = list
			end
			list[#list + 1] = i
			local gc = grid[c]
			if not gc then
				gc = {}
				grid[c] = gc
			end
			local gx, gy = floor(wx / CELL), floor(wy / CELL)
			local col = gc[gx]
			if not col then
				col = {}
				gc[gx] = col
			end
			local cell = col[gy]
			if not cell then
				cell = {}
				col[gy] = cell
			end
			cell[#cell + 1] = i
		else
			unresolved = unresolved + 1
		end
	end
	layer.byC, layer.grid = byC, grid
	layer.resolved = C ~= nil and C.MapToWorld ~= nil
	layer.unresolved = unresolved
	-- The widest area or hull decides how far past the minimap's view a pin
	-- may still reach into it.
	local maxArea = 0
	if layer.minimapAreas then
		for i = 1, #pins do
			if reach[i] > maxArea then maxArea = reach[i] end
		end
	end
	layer.maxArea = maxArea
end

function Pins.SetLayer(name, pins, opts)
	if type(name) ~= "string" then return end
	opts = type(opts) == "table" and opts or {}
	local layer = layers[name]
	if not layer then
		layer = { name = name }
		layers[name] = layer
		order[#order + 1] = name
	end
	layer.pins = type(pins) == "table" and pins or {}
	layer.world = opts.world ~= false
	layer.minMapType = tonumber(opts.minMapType)
	layer.worldLayout = type(opts.worldLayout) == "function" and opts.worldLayout or nil
	layer.minimap = opts.minimap ~= false
	layer.edge = opts.edge == true
	layer.scale = tonumber(opts.scale) or 1
	layer.minimapAreas = opts.minimapAreas == true
	layer.c, layer.wx, layer.wy, layer.reach = {}, {}, {}, {}
	resolveLayer(layer)
	layer.version = (layer.version or 0) + 1
	refreshWorld()
	refreshMinimap(true)
end

function Pins.ClearLayer(name)
	local layer = layers[name]
	if not layer then return end
	layers[name] = nil
	for i = #order, 1, -1 do
		if order[i] == name then table.remove(order, i) end
	end
	refreshWorld()
	refreshMinimap(true)
end

function Pins.SetLayerVisible(name, visible)
	local now = not visible or nil
	if hidden[name] == now then return end
	hidden[name] = now
	refreshWorld()
	refreshMinimap(true)
end

function Pins.IsLayerVisible(name)
	return layers[name] ~= nil and not hidden[name]
end

function Pins.GetLayer(name)
	local layer = layers[name]
	return layer and layer.pins
end

---------------------------------------------------------------------------
-- Shared look
---------------------------------------------------------------------------

function iconPath(icon)
	if type(icon) ~= "string" or icon == "" then return nil end
	local mark = icon:match("^map:(.+)$")
	if mark then return MAP_MEDIA .. "icon-" .. mark, true end
	if icon:find("[\\/]") then return icon end
	local T = ns.Theme
	if type(T) == "table" and type(T.Media) == "function" then
		local ok, path = pcall(T.Media, icon)
		if ok and type(path) == "string" then return path end
	end
	return MEDIA .. icon
end

function pinColor(p)
	local c = p.color
	if type(c) == "table" then return c[1] or c.r or 1, c[2] or c.g or 1, c[3] or c.b or 1, c[4] or c.a or 1 end
	local T = ns.Theme
	if type(T) == "table" and type(T.Accent) == "function" then
		local ok, r, g, b = pcall(T.Accent)
		if ok and type(r) == "number" then return r, g, b, 1 end
	end
	return 0.902, 0.729, 0.4, 1 -- Dusk gold, when Theme is absent
end

-- Textures of a pin frame: either the Polestar pin (fill tinted + ring) or
-- one tinted icon, optionally on a dark disc (`backdrop`, Theme scrim) and
-- circled (`ring` colour); an optional glow; an edge pointer for clamped
-- minimap pins.
BACKDROP_ALPHA, BACKDROP_SCALE = 0.55, 1.2

function backdropColor()
	local T = ns.Theme
	if type(T) == "table" and type(T.Color) == "function" then
		local ok, r, g, b = pcall(T.Color, "scrim")
		if ok and type(r) == "number" then return r, g, b end
	end
	return 0.04, 0.05, 0.08
end

BADGE_COORDS = { { 0, 0.25 }, { 0.25, 0.75 }, { 0.75, 1 } }
function badgeSlices(f, sublevel)
	local slices = {}
	for i, c in ipairs(BADGE_COORDS) do
		local t = f:CreateTexture(nil, "OVERLAY", nil, sublevel)
		t:SetTexture(MAP_MEDIA .. "badge")
		t:SetTexCoord(c[1], c[2], 0, 1)
		slices[i] = t
	end
	return slices
end

-- Lays three slices out as a capsule w by h whose top-left corner is (x, y)
-- from the pin's centre.
function placeSlices(f, slices, x, y, w, h)
	local l, m, r = slices[1], slices[2], slices[3]
	l:ClearAllPoints()
	l:SetPoint("TOPLEFT", f, "CENTER", x, y)
	l:SetSize(h / 2, h)
	m:ClearAllPoints()
	m:SetPoint("TOPLEFT", l, "TOPRIGHT")
	m:SetSize(max(w - h, 0.01), h)
	r:ClearAllPoints()
	r:SetPoint("TOPLEFT", m, "TOPRIGHT")
	r:SetSize(h / 2, h)
end

function showBadge(f, on)
	local b = f.badge
	for i = 1, 3 do
		b.rim[i]:SetShown(on)
		b.fill[i]:SetShown(on)
	end
	b.text:SetShown(on)
end

function buildLook(f)
	f.glow = f:CreateTexture(nil, "BACKGROUND")
	f.glow:SetTexture(MEDIA .. "glow")
	f.glow:SetPoint("CENTER")
	f.glow:SetBlendMode("ADD")
	f.back = f:CreateTexture(nil, "BORDER")
	f.back:SetTexture(MEDIA .. "pin-fill")
	f.back:SetPoint("CENTER")
	f.fill = f:CreateTexture(nil, "ARTWORK")
	f.fill:SetTexture(MEDIA .. "pin-fill")
	f.fill:SetAllPoints()
	f.ring = f:CreateTexture(nil, "OVERLAY")
	f.ring:SetTexture(MEDIA .. "pin")
	f.ring:SetAllPoints()
	f.icon = f:CreateTexture(nil, "ARTWORK")
	f.icon:SetAllPoints()
	f.mark = f:CreateTexture(nil, "OVERLAY")
	f.mark:SetTexture(MEDIA .. "ring")
	f.mark:SetPoint("CENTER")
	f.edge = f:CreateTexture(nil, "OVERLAY", nil, 1)
	f.edge:SetTexture(MEDIA .. "edge")
	f.edge:SetPoint("CENTER")
	f.edge:Hide()
	f.text = f:CreateFontString(nil, "OVERLAY")
	f.text:SetPoint("CENTER", 0, 0)
	f.text:Hide()
	-- Map marks: the skin's medallion under the glyph, a dashed ring, a badge.
	f.medal = f:CreateTexture(nil, "BORDER")
	f.medal:SetPoint("CENTER")
	f.ring2 = f:CreateTexture(nil, "OVERLAY")
	f.ring2:SetTexture(MAP_MEDIA .. "ring-dashed")
	f.ring2:SetPoint("CENTER")
	-- The badge: a capsule in three slices (8 + 16 + 8 px of a 32 by 16
	-- texture), so its width follows the text, over a black rim 1.5 px wider;
	-- regions of the pin itself, as a minimap pin may hold no frame of its own.
	f.badge = { rim = badgeSlices(f, 2), fill = badgeSlices(f, 3), text = f:CreateFontString(nil, "OVERLAY") }
	if f.badge.text.SetDrawLayer then f.badge.text:SetDrawLayer("OVERLAY", 4) end
	showBadge(f, false)
end

-- The icon pack (nav.mapIcons): the medallion under every map mark
-- (Media/Map/medallion-<pack>), or "bare" for the glyphs alone. "skin", the
-- default, takes the skin's: Polestar's, Halo's, or Hearth's for Hearth and
-- the game's own looks.
ns.RegisterDefaults("nav", { mapIcons = "skin" })
MEDALS = {
	polestar = MAP_MEDIA .. "medallion-polestar", halo = MAP_MEDIA .. "medallion-halo", hearth = MAP_MEDIA .. "medallion-hearth",
}
function Pins.IconPack(v)
	if v == nil then v = ns.Get and ns.Get("nav.mapIcons") end
	if MEDALS[v] or v == "bare" then return v end
	local T = ns.Theme
	local key = type(T) == "table" and type(T.SkinKey) == "function" and T.SkinKey() or "polestar"
	return MEDALS[key] and key or "hearth"
end

function themeColor(name, r, g, b)
	local T = ns.Theme
	if type(T) == "table" and type(T.Color) == "function" then
		local ok, cr, cg, cb = pcall(T.Color, name)
		if ok and type(cr) == "number" then return cr, cg, cb end
	end
	return r, g, b
end

function rgba(c)
	return c[1] or c.r or 1, c[2] or c.g or 1, c[3] or c.b or 1, c[4] or c.a or 1
end

-- A map mark's badge: `text` in an accent capsule, 14 px high, its top-right
-- corner over the medallion's (x = 0.22 of the medallion right of centre,
-- 2 px above its top).
function applyBadge(f, text, medal, a)
	local b = f.badge
	if text == nil then
		showBadge(f, false)
		return
	end
	local r, g, bl = themeColor("accent", 0.902, 0.729, 0.4)
	for i = 1, 3 do
		b.fill[i]:SetVertexColor(r, g, bl, a)
		b.rim[i]:SetVertexColor(0, 0, 0, a)
	end
	local T = ns.Theme
	if type(T) == "table" and type(T.FontSpec) == "function" then
		local ok, path = pcall(T.FontSpec, "body")
		if ok and path then b.text:SetFont(path, 9, "") end
	end
	if not b.text:GetFont() then b.text:SetFontObject("GameFontNormalSmall") end
	b.text:SetText(tostring(text))
	b.text:SetTextColor(themeColor("onAccent", 0.04, 0.05, 0.08))
	b.text:SetAlpha(a)
	local w = max(BADGE_H, ceil((b.text:GetStringWidth() or 0) + 7))
	local x, y = medal * 0.22 - BADGE_H / 2, medal / 2 + 2
	placeSlices(f, b.fill, x, y, w, BADGE_H)
	placeSlices(f, b.rim, x - 1.5, y + 1.5, w + 3, BADGE_H + 3)
	b.text:ClearAllPoints()
	b.text:SetPoint("CENTER", f, "CENTER", x + w / 2, y - BADGE_H / 2 + 0.5)
	showBadge(f, true)
end

-- In every skin but the house style each glyph pin sits on a dark disc
-- (DIRECTION_B_HALO.md, "Carte": a dark disc, the glyph in its subject's colour).
function skinDisc()
	local T = ns.Theme
	return type(T) == "table" and type(T.SkinKey) == "function" and T.SkinKey() ~= "polestar"
end

-- Shows the parts of a pin's look for its current state (clamped minimap
-- pins show only the edge pointer).
function showParts(f, p, clamped)
	if f.mapMark then
		-- A map mark keeps medallion and glyph on the minimap's rim, with the pointer.
		f.fill:Hide()
		f.ring:Hide()
		f.back:Hide()
		f.icon:Show()
		f.medal:SetShown(not f.bare)
		f.mark:SetShown(not clamped and f.ringOn and true or false)
		f.ring2:SetShown(not clamped and type(p.ring2) == "table")
		f.glow:SetShown(not clamped and p.glow and true or false)
		showBadge(f, not clamped and p.badge ~= nil)
		f.edge:SetShown(clamped and true or false)
		return
	end
	local icon = f.hasIcon
	f.fill:SetShown(not clamped and not icon)
	f.ring:SetShown(not clamped and not icon)
	f.icon:SetShown(not clamped and icon)
	f.back:SetShown(not clamped and icon and (p.backdrop or skinDisc()) and true or false)
	f.mark:SetShown(not clamped and type(p.ring) == "table")
	f.glow:SetShown(not clamped and p.glow and true or false)
	f.edge:SetShown(clamped and true or false)
	f.text:SetShown(not clamped and p.text ~= nil)
end

-- A map mark (see the header): the glyph, tinted, in the skin's medallion,
-- with its ring, dashed ring, glow, badge and edge pointer.
function applyMark(f, p, size, path)
	if p.state == "focus" then size = size * FOCUS_SCALE end
	f:SetSize(size, size)
	local r, g, b, a = pinColor(p)
	if p.state == "dim" then a = a * DIM_ALPHA end
	f.mapMark, f.hasIcon = true, true
	f.icon:ClearAllPoints()
	f.icon:SetPoint("CENTER")
	f.icon:SetSize(size * GLYPH_FRAME, size * GLYPH_FRAME)
	f.icon:SetTexture(path)
	f.icon:SetVertexColor(r, g, b, a)
	local medal = tonumber(p.medalSize) or (2 * floor(size * MEDAL_SCALE / 2 + 0.5))
	local pack = Pins.IconPack()
	f.bare = p.medal == false or pack == "bare"
	if p.medal == false then medal = size end
	f.medalPx, f.sizePx, f.footPx = medal, size, medal
	f.medal:SetTexture(MEDALS[pack] or MEDALS.polestar)
	f.medal:SetSize(medal, medal)
	f.medal:SetVertexColor(1, 1, 1, a)
	local ring = type(p.ring) == "table" and p.ring or nil
	if p.state == "focus" and not ring then ring = { themeColor("accent", 0.902, 0.729, 0.4) } end
	f.ringOn = ring ~= nil
	f.mark:SetTexture(MAP_MEDIA .. "ring")
	if ring then
		local rr, rg, rb, ra = rgba(ring)
		f.mark:SetSize(medal + RING_PAD, medal + RING_PAD)
		f.mark:SetVertexColor(rr, rg, rb, ra * a)
	end
	if type(p.ring2) == "table" then
		local rr, rg, rb, ra = rgba(p.ring2)
		f.ring2:SetSize(medal + RING2_PAD, medal + RING2_PAD)
		f.ring2:SetVertexColor(rr, rg, rb, ra * a)
	end
	f.glow:SetTexture(MAP_MEDIA .. "glow")
	f.glow:SetBlendMode("BLEND")
	if p.glow then
		f.glow:SetSize(medal * GLOW_SCALE, medal * GLOW_SCALE)
		f.glow:SetVertexColor(r, g, b, a)
	end
	applyBadge(f, p.badge, medal, a)
	f.edge:SetTexture(MAP_MEDIA .. "edge")
	-- The pointer is 32 by 24 in a 32 px square: EDGE_W wide, about EDGE_H high.
	f.edge:SetSize(medal * EDGE_W, medal * EDGE_W)
	f.edge:SetVertexColor(r, g, b, a)
	f.edgeReach = medal / 2 + medal * EDGE_H / 2 - 0.5
	f.clamped = nil
	showParts(f, p, false)
end

function applyLook(f, p, size)
	local path, mark = iconPath(p.icon)
	if mark then return applyMark(f, p, size, path) end
	if f.mapMark then
		-- Back to the older looks: their textures and placements.
		f.mapMark, f.ringOn, f.edgeReach = nil, nil, nil
		f.icon:ClearAllPoints()
		f.icon:SetAllPoints()
		f.medal:Hide()
		f.ring2:Hide()
		showBadge(f, false)
		f.mark:SetTexture(MEDIA .. "ring")
		f.glow:SetTexture(MEDIA .. "glow")
		f.glow:SetBlendMode("ADD")
		f.edge:SetTexture(MEDIA .. "edge")
		f.edge:ClearAllPoints()
		f.edge:SetPoint("CENTER")
	end
	f:SetSize(size, size)
	f.sizePx, f.footPx = size, size
	local r, g, b, a = pinColor(p)
	if path then
		f.icon:SetTexture(path)
		f.icon:SetVertexColor(r, g, b, a)
		f.hasIcon = true
	else
		f.fill:SetVertexColor(r, g, b, a)
		f.ring:SetVertexColor(1, 1, 1, a)
		f.hasIcon = false
	end
	local disc = size * BACKDROP_SCALE
	if p.backdrop or (path and skinDisc()) then
		local br, bg, bb = backdropColor()
		f.back:SetSize(disc, disc)
		f.footPx = disc
		f.back:SetVertexColor(br, bg, bb, BACKDROP_ALPHA * a)
	end
	local ring = p.ring
	if type(ring) == "table" then
		f.mark:SetSize(disc, disc)
		f.mark:SetVertexColor(ring[1] or ring.r or 1, ring[2] or ring.g or 1, ring[3] or ring.b or 1, ring[4] or ring.a or 1)
	end
	if p.glow then
		f.glow:SetSize(size * 1.8, size * 1.8)
		f.glow:SetVertexColor(r, g, b, 0.5)
	end
	f.edge:SetSize(size, size)
	f.edge:SetVertexColor(r, g, b, a)
	f.clamped = nil
	if p.text then
		f.text:SetFont(STANDARD_TEXT_FONT or "Fonts\\FRIZQT__.TTF", math.max(8, size * 0.6), "OUTLINE")
		f.text:SetText(p.text)
		f.text:SetTextColor(1, 1, 1, a)
	end
	showParts(f, p, false)
end

-- The mouse takes f over its medallion (its footprint) and at least `hit`
-- across, in f's own units: SetHitRectInsets past its edges where it is smaller.
function setHit(f, hit)
	local inset = (f.sizePx - max(hit, f.footPx)) / 2
	if inset > 0 then inset = 0 end
	if inset ~= f.hitInset then
		f.hitInset = inset
		f:SetHitRectInsets(inset, inset, inset, inset)
	end
end

function showTooltip(owner, p)
	local tip = p and p.tooltip
	if not tip then return end
	GameTooltip:SetOwner(owner, "ANCHOR_RIGHT")
	if type(tip) == "function" then
		ns.SafeCall(tip, GameTooltip)
	else
		GameTooltip:SetText(tostring(tip))
	end
	GameTooltip:Show()
end

function click(p, button, owner)
	if p and type(p.onClick) == "function" then ns.SafeCall(p.onClick, button, owner) end
end

---------------------------------------------------------------------------
-- Hulls, shared by both surfaces: a convex polygon cut from solid textures
-- whose quads SetVertexOffset bends into place. Pieces that share an edge
-- are rasterised without a seam or an overlap, so the fill is even at any
-- alpha. The polygon inset by the rim's width is filled with quads fanned
-- from its first point; the rim is one quad per edge between the polygon
-- and its inset. Every piece keeps one rectangle (the polygon's box around
-- its centre), so moving that rectangle moves the whole hull.
---------------------------------------------------------------------------

hx, hy, inX, inY = {}, {}, {}, {} -- a polygon in local units (y up), and its inset
HULL_EPSILON = 0.01                -- local units: closer points are one

function hullTexture(parent)
	local t = parent:CreateTexture(nil, "BACKGROUND")
	t:SetTexture(WHITE)
	-- Snapping each piece's rectangle to the pixel grid on its own would
	-- open or overlap the edges they share.
	if t.SetSnapToPixelGrid then t:SetSnapToPixelGrid(false) end
	if t.SetTexelSnappingBias then t:SetTexelSnappingBias(0) end
	return t
end

-- Bend texture t's quad onto a, b, c, d (clockwise, local units around the
-- centre of its rectangle of half extents hw, hh).
function bend(t, hw, hh, ax, ay, bx, by, cx, cy, dx, dy)
	t:SetVertexOffset(1, ax + hw, ay - hh) -- upper left
	t:SetVertexOffset(3, bx - hw, by - hh) -- upper right
	t:SetVertexOffset(4, cx - hw, cy + hh) -- lower right
	t:SetVertexOffset(2, dx + hw, dy + hh) -- lower left
end

-- Lay out the n points in hx/hy (local units around the rectangle's centre,
-- y up, convex, either winding) on textures get(1), get(2), ...: the rim
-- `rim` units wide (at most 0.4 of the way to the centre), in r, g, b at
-- alpha a. Leaves the polygon clockwise in hx/hy. Returns the textures used,
-- the rectangle's half extents and the point count.
function layHull(n, rim, get, r, g, b, a)
	local m = 0
	for i = 1, n do
		local x, y = hx[i], hy[i]
		if m == 0 or abs(x - hx[m]) > HULL_EPSILON or abs(y - hy[m]) > HULL_EPSILON then
			m = m + 1
			hx[m], hy[m] = x, y
		end
	end
	if m > 1 and abs(hx[m] - hx[1]) <= HULL_EPSILON and abs(hy[m] - hy[1]) <= HULL_EPSILON then m = m - 1 end
	n = m
	if n < 3 then return 0, 0, 0, n end
	local area2, hw, hh, mx, my = 0, 0, 0, 0, 0
	for i = 1, n do
		local j = i % n + 1
		area2 = area2 + hx[i] * hy[j] - hx[j] * hy[i]
		hw, hh = max(hw, abs(hx[i])), max(hh, abs(hy[i]))
		mx, my = mx + hx[i] / n, my + hy[i] / n
	end
	if area2 > 0 then -- counter-clockwise: the quads' corners run clockwise
		for i = 1, floor(n / 2) do
			local j = n + 1 - i
			hx[i], hx[j] = hx[j], hx[i]
			hy[i], hy[j] = hy[j], hy[i]
		end
	end
	-- Outward edge normals (inX/inY hold them for now) and how far the
	-- centre is from the nearest edge.
	local inner = math.huge
	for i = 1, n do
		local j = i % n + 1
		local dx, dy = hx[j] - hx[i], hy[j] - hy[i]
		local len = sqrt(dx * dx + dy * dy)
		local nx, ny = -dy / len, dx / len
		inX[i], inY[i] = nx, ny
		local d = (hx[i] - mx) * nx + (hy[i] - my) * ny
		if d < inner then inner = d end
	end
	local w = rim
	if w > inner * 0.4 then w = inner * 0.4 end
	if w < 0 then w = 0 end
	-- The inset: each point moved in along the bisector of its two edges'
	-- normals, w from both edges.
	local px, py = inX[n], inY[n]
	for i = 1, n do
		local nx, ny = inX[i], inY[i]
		local k = w / (1 + px * nx + py * ny)
		inX[i], inY[i] = hx[i] - (px + nx) * k, hy[i] - (py + ny) * k
		px, py = nx, ny
	end
	local used = 0
	for k = 2, n - 1, 2 do
		local k2 = k + 2 > n and n or k + 2
		used = used + 1
		local t = get(used)
		bend(t, hw, hh, inX[1], inY[1], inX[k], inY[k], inX[k + 1], inY[k + 1], inX[k2], inY[k2])
		t:SetVertexColor(r, g, b, a * HULL_FILL)
	end
	for i = 1, n do
		local j = i % n + 1
		used = used + 1
		local t = get(used)
		bend(t, hw, hh, hx[i], hy[i], hx[j], hy[j], inX[j], inY[j], inX[i], inY[i])
		t:SetVertexColor(r, g, b, a * HULL_RIM)
	end
	return used, hw, hh, n
end

-- Copy the polygon in hx/hy into out (diagnostics and tests).
function outline(out, n)
	for i = 1, n do out[2 * i - 1], out[2 * i] = hx[i], hy[i] end
	for i = #out, 2 * n + 1, -1 do out[i] = nil end
	return out
end

---------------------------------------------------------------------------
-- Trail placement, shared by both surfaces and allocation-free: a run's
-- points go into scratch arrays in the surface's units (yards around the
-- player, or map percent), each segment is clipped to what shows, and dots
-- fill the clipped part.
---------------------------------------------------------------------------

trail = trail -- { runs, world, minimap, r, g, b, version } or nil
trailVersion = 0

-- World -> surface for loadRun: u = ua * wx + ub * wy + uc, v = va * wx + vb * wy + vc.
ua, ub, uc, va, vb, vc = 1, 0, 0, 0, 1, 0
-- Clip bounds of the current draw: a rectangle, or a circle around (0, 0) (radius squared).
cx0, cy0, cx1, cy1, cr2 = 0, 0, 100, 100, 0
tx, ty, tr = {}, {}, {} -- one run in surface units, and yards from each point to its end
dotX, dotY = {}, {}     -- placed dots, in surface units

-- One Liang-Barsky edge: p * t <= q narrows [t0, t1], or nil when nothing is left.
function clipEdge(p, q, t0, t1)
	if p == 0 then
		if q < 0 then return nil end
		return t0, t1
	end
	local r = q / p
	if p < 0 then
		if r > t1 then return nil end
		if r > t0 then t0 = r end
	else
		if r < t0 then return nil end
		if r < t1 then t1 = r end
	end
	return t0, t1
end

-- The part of segment a -> b inside the rectangle, as t0 < t1 along it, or nil.
function clipRect(ax, ay, bx, by)
	local dx, dy = bx - ax, by - ay
	local t0, t1 = clipEdge(-dx, ax - cx0, 0, 1)
	if t0 then t0, t1 = clipEdge(dx, cx1 - ax, t0, t1) end
	if t0 then t0, t1 = clipEdge(-dy, ay - cy0, t0, t1) end
	if t0 then t0, t1 = clipEdge(dy, cy1 - ay, t0, t1) end
	return t0, t1
end

-- The part of segment a -> b inside the circle, as t0 < t1 along it, or nil.
function clipCircle(ax, ay, bx, by)
	local dx, dy = bx - ax, by - ay
	local a = dx * dx + dy * dy
	if a == 0 then return nil end
	local b = ax * dx + ay * dy
	local disc = b * b - a * (ax * ax + ay * ay - cr2)
	if disc <= 0 then return nil end
	local s = sqrt(disc)
	local t0, t1 = (-b - s) / a, (-b + s) / a
	if t0 < 0 then t0 = 0 end
	if t1 > 1 then t1 = 1 end
	if t0 >= t1 then return nil end
	return t0, t1
end

-- Dots along the n points in tx/ty (tr: yards to the end), `spacing` yards
-- apart and anchored to the end: dot k sits (k + frac) * spacing yards
-- before it. clip(ax, ay, bx, by) -> t0, t1 keeps the part of a segment that
-- shows. Appends to dotX/dotY after `count`, from the start, at most `cap`
-- in all; returns the new count. A segment owns its end point, not its start.
function runDots(n, spacing, frac, clip, cap, count)
	for i = 1, n - 1 do
		if count >= cap then break end
		local dA = tr[i]
		local len = dA - tr[i + 1]
		if len > 0 then
			local ax, ay, bx, by = tx[i], ty[i], tx[i + 1], ty[i + 1]
			local t0, t1 = 0, 1
			if clip then t0, t1 = clip(ax, ay, bx, by) end
			if t0 then
				local lo, hi = dA - t1 * len, dA - t0 * len -- yards before the end
				local k = ceil(hi / spacing - frac) - 1
				local d = (k + frac) * spacing
				while d >= lo and count < cap do
					local t = (dA - d) / len
					count = count + 1
					dotX[count], dotY[count] = ax + (bx - ax) * t, ay + (by - ay) * t
					k = k - 1
					d = (k + frac) * spacing
				end
			end
		end
	end
	return count
end

-- A run's points into tx/ty/tr in surface units, the player first when the
-- run is live and the player is on its continent. Returns the point count.
function loadRun(run, pc, px, py)
	local wxs, wys, rem = run.wx, run.wy, run.rem
	local n = 0
	if run.live and pc == run.c and px then
		local dx, dy = wxs[1] - px, wys[1] - py
		n = 1
		tx[1], ty[1], tr[1] = ua * px + ub * py + uc, va * px + vb * py + vc, rem[1] + sqrt(dx * dx + dy * dy)
	end
	for i = 1, run.n do
		local wx, wy = wxs[i], wys[i]
		n = n + 1
		tx[n], ty[n], tr[n] = ua * wx + ub * wy + uc, va * wx + vb * wy + vc, rem[i]
	end
	return n
end

function stillTrail()
	return ns.Get("ui.reduceMotion") and true or false
end

-- The dots' phase: the fraction of a spacing between a run's end and its
-- nearest dot. It falls as time passes, so the dots crawl toward the end.
function trailFrac()
	if stillTrail() then return TRAIL_STILL end
	return (-GetTime() / TRAIL_PERIOD) % 1
end

-- Placement alone (tests): dots along pts = { { x, y }, ... } (yards),
-- `spacing` apart, dot k at (k + phase) * spacing before the last point,
-- inside rect = { x0, y0, x1, y1 } when given, at most `cap`.
-- Returns the count and { { x, y }, ... } from the line's start.
function Pins.TrailDots(pts, spacing, phase, rect, cap)
	local n = #pts
	if n < 2 then return 0, {} end
	for i = 1, n do tx[i], ty[i] = pts[i][1], pts[i][2] end
	tr[n] = 0
	for i = n - 1, 1, -1 do
		local dx, dy = tx[i + 1] - tx[i], ty[i + 1] - ty[i]
		tr[i] = tr[i + 1] + sqrt(dx * dx + dy * dy)
	end
	if rect then cx0, cy0, cx1, cy1 = rect[1], rect[2], rect[3], rect[4] end
	local count = runDots(n, spacing, phase or 0, rect and clipRect or nil, cap or math.huge, 0)
	local out = {}
	for i = 1, count do out[i] = { dotX[i], dotY[i] } end
	return count, out
end

-- runs = { { live = true?, point, ... }, ... }, point = { c, wx, wy } (world
-- yards). Each run is one line; a live run starts at the player when they
-- are on its continent; a continent change inside a run breaks it there.
-- opts = { world = true, minimap = true, color = { r, g, b } }.
function Pins.SetTrail(runs, opts)
	opts = type(opts) == "table" and opts or {}
	local list = {}
	local function close(run)
		if not run or run.n < (run.live and 1 or 2) then return end
		local wx, wy, rem = run.wx, run.wy, run.rem
		rem[run.n] = 0
		for i = run.n - 1, 1, -1 do
			local dx, dy = wx[i + 1] - wx[i], wy[i + 1] - wy[i]
			rem[i] = rem[i + 1] + sqrt(dx * dx + dy * dy)
		end
		list[#list + 1] = run
	end
	for _, src in ipairs(type(runs) == "table" and runs or {}) do
		local live, run = src.live and true or false, nil
		for _, p in ipairs(src) do
			local c, wx, wy = p.c, tonumber(p.wx), tonumber(p.wy)
			if c and wx and wy then
				if run and run.c ~= c then
					close(run)
					run, live = nil, false
				end
				if not run then run = { c = c, live = live, n = 0, wx = {}, wy = {}, rem = {} } end
				local n = run.n
				if n == 0 or run.wx[n] ~= wx or run.wy[n] ~= wy then
					n = n + 1
					run.n, run.wx[n], run.wy[n] = n, wx, wy
				end
			end
		end
		close(run)
	end
	local world, minimap = opts.world ~= false, opts.minimap ~= false
	if #list == 0 or not (world or minimap) then
		Pins.ClearTrail()
		return
	end
	trailVersion = trailVersion + 1
	local r, g, b = pinColor(opts)
	trail = { runs = list, world = world, minimap = minimap, r = r, g = g, b = b, version = trailVersion }
	refreshWorld()
	refreshMinimap(true)
end

function Pins.ClearTrail()
	if not trail then return end
	trail = nil
	refreshWorld()
	refreshMinimap(true)
end

-- The trail as drawn from: { runs = { { c, live, n, wx, wy, rem }, ... }, world, minimap, ... } or nil.
function Pins.GetTrail()
	return trail
end

---------------------------------------------------------------------------
