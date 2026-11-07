local ADDON, ns = ...
ns._uiWelcomeEnv = ns.ModuleEnv(function(e) e.ADDON = ADDON; e.ns = ns end)
setfenv(1, ns._uiWelcomeEnv)
-- The welcome: a Polestar window, 600 wide and centred, that greets a
-- character Polestar has not seen before. Each page opens under its own hero
-- (the night sky: a gradient, the faint haze, the starlit band); the page
-- below on the 32 edge; a footer with Skip (Back on the last page) on the
-- left, the step dots in the middle (not buttons) and Back and Next on the
-- right. The gold rim (W.Rim) runs along the window's top.
--   1. welcome: a 208px hero with the start zone's painting engraved faintly
--      into the night, the Little Dipper leading to the emblem in its glow
--      and beam, the wordmark and tagline centred under it; Hello, <name>,
--      one line on what Polestar does, then three cards, each a miniature
--      of the real thing: a goal row of the suggested guide with its accent
--      bar and progress line (the guide window), the gold dart with the
--      guide's first walk (the arrow), the library's Leveling, Professions
--      and Reputation rows with their counts (every guide);
--   2. setup: quest automation (behavior.autoAccept and autoTurnin as one
--      switch) and the guide at login (behavior.autoSelectGuide), each with
--      its description inline, and the colour scheme (ui.scheme) as preview
--      cards in each scheme's own colours, that apply live; Skip keeps them;
--   3. route: the start zone's painting with the suggested guide's first
--      walk drawn on it and its place named, then the route style
--      (nav.routeStyle, the setting Options' Route style dropdown writes) as
--      three rows, Fastest, Balanced (Recommended) and Roads, each saying
--      what it does, that apply live; a line on what every style keeps you
--      away from. Shown with setup;
--   4. start: the suggested guide on its painting (its level range, who it
--      is for), its pitch; what Start guide does; the beta note while
--      ns.routesBeta is true; the Discord community (its invite as a link
--      to the copy window); community guides (Browse guides opens the guide
--      menu). Start guide (Choose a guide without one).
--
-- Per character: PolestarCharDB.welcomeSeen, the welcome's version (SEEN).
-- A new character (ns.IsNewCharacter: no saved PolestarCharDB when Polestar
-- loaded) gets 0, so the welcome is due; a character with saved data and no
-- flag gets SEEN without seeing it, so nobody who already plays gets it
-- unasked. At login it opens while the character's flag is below SEEN, and
-- opening it sets the flag, so a /reload or a logout with it still up does
-- not bring it back; a due welcome that never opened (a logout in combat or
-- under the route choice) stays due for the next login.
--
-- Per account: PolestarDB.welcomeSeen, the account has had its welcome. Its
-- settings are account-wide, so setup and the route style are in a welcome
-- shown at login only while the account's flag is below SEEN; a later
-- character skips them. The page set is fixed when a showing starts. Any
-- close (Skip, Start guide, Browse guides, the ✕, Escape) sets both flags.
-- The beta notice's old flag (betaNoticeSeen) is dropped.
--
-- It opens a moment after login, never in combat (it waits for the fight to
-- end), never during a cinematic, and never over the route choice: while that
-- window is up the welcome waits for it to close, and if a route choice opens
-- over the welcome it steps aside until it is done, then comes back on the
-- page it left. A new character's first login plays the intro cinematic,
-- whose start closes every special window (CloseAllWindows) and hides the UI:
-- a welcome closed that way is not marked seen and comes back on the page it
-- left once the cinematic stops. About's "Show the welcome again" and
-- /polestar welcome (SHOW_WELCOME) open it with every page.
--
-- The window takes the height of its tallest page, laid out in the current
-- language and font, so it never jumps. Motion: the window fades in and the
-- hero settles 8px up as it fades in (180ms); a page change fades the old
-- page out (120ms) and the new one in, rising 6px (180ms). Reduced motion
-- (Anim) snaps the movement. The night's extras (gradient, haze, engraving,
-- beam) are the house style's; the other skins keep the band. Built on
-- first use; colours are Theme tokens only.

-- local ADDON, ns = ...
UI, Theme, W, Anim = ns.UI, ns.Theme, ns.Widgets, ns.Anim
L = ns.L
floor, max, min, sqrt, cos, sin, rad = math.floor, math.max, math.min, math.sqrt, math.cos, math.sin, math.rad
atan2 = math.atan2 or math.atan

WEL = {}
UI.Welcome = WEL

SEEN = 1 -- the welcome's version; a later welcome raises it
WIDTH = 600
PAD = 32
CW = WIDTH - PAD * 2 -- the page's width
INNER = WIDTH - 2 -- inside the window's 1px edge
EDGE = PAD - 1 -- the 32 edge, in hero coordinates
HELLO_H = 208 -- the first page's hero
START_H = 184 -- the last page's hero
BAND_H = 128 -- the band at 1:1
BAND_SHIFT = 180 / 1024 -- the stretch of the band the welcome shows
BOTTOM = 24 -- under a page's last line
FOOT_H = 56
FOOT_PAD = 24
DELAY = 2 -- seconds after login, so the world and the other windows settle first
OUT = 0.11 -- a page leaving fades this long

F = F -- the window
current = "welcome" -- the page shown (its key)
pending = pending -- nil | "login" (due at login) | "asked" (opened on request, or coming back), waiting for combat or the route choice
stepping = stepping -- hidden to make way for the route choice, not closed
full = true -- this showing has every page (false: setup left out); fixed when it starts
unasked = false -- this showing came by itself (open's deferred): a gamepad waits to be asked
hookedRC = hookedRC

function inCombat()
	return InCombatLockdown and InCombatLockdown() or false
end

-- The intro cinematic or a cinematic scene is playing.
function inCinematic()
	return (InCinematic and InCinematic()) or (IsInCinematicScene and IsInCinematicScene()) or false
end

-- This character has had its welcome.
function seen()
	return (tonumber(ns.CharState().welcomeSeen) or 0) >= SEEN
end

-- This account has had its welcome.
function accountSeen()
	return (tonumber(ns.DB().welcomeSeen) or 0) >= SEEN
end

function routeChoiceUp()
	local RC = UI.RouteChoice
	return RC and RC.IsShown and RC.IsShown() or false
end

-- The house style draws the night's extras; the other skins keep the band.
function house()
	return Theme.SkinKey() == "polestar"
end

function colored(name, text)
	return "|c" .. Theme.Hex(name) .. text .. "|r"
end

function cmd(text)
	return colored("text", text)
end

function known(s)
	return type(s) == "string" and s ~= "" and s or nil
end

-- A wrapped block of text, `width` wide.
function para(parent, role, color, width, spacing)
	local fs = W.Text(parent, role, color)
	fs:SetWidth(width)
	fs:SetWordWrap(true)
	fs:SetSpacing(spacing or 3)
	fs:SetJustifyH("LEFT")
	fs:SetJustifyV("TOP")
	return fs
end

function place(region, x, y)
	region:ClearAllPoints()
	region:SetPoint("TOPLEFT", region:GetParent(), "TOPLEFT", x, -y)
end

function solid(parent, layer, sub)
	local t = parent:CreateTexture(nil, layer or "BACKGROUND", nil, sub or 0)
	t:SetTexture(Theme.Media("white"))
	return t
end

-- A vertical gradient, top colour then bottom colour.
function vgrad(t, r1, g1, b1, a1, r2, g2, b2, a2)
	if t.SetGradient and CreateColor then
		t:SetVertexColor(1, 1, 1, 1)
		t:SetGradient("VERTICAL", CreateColor(r2, g2, b2, a2), CreateColor(r1, g1, b1, a1))
	else
		t:SetVertexColor(r1, g1, b1, (a1 + a2) / 2)
	end
end

-- A horizontal gradient, left colour then right colour.
function hgrad(t, r1, g1, b1, a1, r2, g2, b2, a2)
	if W.Gradient then return W.Gradient(t, r1, g1, b1, a1, r2, g2, b2, a2) end
	if t.SetGradient and CreateColor then
		t:SetVertexColor(1, 1, 1, 1)
		t:SetGradient("HORIZONTAL", CreateColor(r1, g1, b1, a1), CreateColor(r2, g2, b2, a2))
	else
		t:SetVertexColor(r2, g2, b2, (a1 + a2) / 2)
	end
end

function accentHi()
	if W.AccentHi then return W.AccentHi() end
	return Theme.Accent()
end

-- A frame's 1px outline in a wash (or the accent while `on`).
function outline(c)
	c.psEdge = {}
	for i, pts in ipairs({ { "TOPLEFT", "TOPRIGHT" }, { "BOTTOMLEFT", "BOTTOMRIGHT" }, { "TOPLEFT", "BOTTOMLEFT" }, { "TOPRIGHT", "BOTTOMRIGHT" } }) do
		local e = solid(c, "BORDER", 2)
		e:SetPoint(pts[1], c, pts[1], 0, 0)
		e:SetPoint(pts[2], c, pts[2], 0, 0)
		c.psEdge[i] = e
	end
end

function paintOutline(c, r, g, b, a)
	local px = Theme.Pixel(c)
	for i = 1, 4 do
		local e = c.psEdge[i]
		if i <= 2 then e:SetHeight(px) else e:SetWidth(px) end
		e:SetVertexColor(r, g, b, a)
	end
end

-- A line from (ax, ay) to (bx, by) in `parent`'s top-left coordinates.
function segment(t, parent, ax, ay, bx, by, thick)
	local dx, dy = bx - ax, by - ay
	t:SetTexCoord(0, 1, 0, 1) -- drawn as an image, so it turns
	t:SetSize(max(1, sqrt(dx * dx + dy * dy)), thick)
	t:ClearAllPoints()
	t:SetPoint("CENTER", parent, "TOPLEFT", (ax + bx) / 2, -(ay + by) / 2)
	t:SetRotation(-atan2(dy, dx))
end

-- A footer button's chevron after its label (Next, Start guide).
function chevron(b)
	local c = b:CreateTexture(nil, "ARTWORK")
	c:SetTexture(Theme.Media("chevron-right"))
	c:SetSize(11, 11)
	b.psChevron = c
	W.Painter(c, function(t)
		if b.Label.GetTextColor then t:SetVertexColor(b.Label:GetTextColor()) end
	end)
end

function setChevronText(b, text)
	W.SetButtonText(b, text)
	b:SetWidth(b:GetWidth() + 16)
	b.psLabelX = -8
	b.Label:SetPoint("CENTER", b, "CENTER", -8, 0)
	b.psChevron:ClearAllPoints()
	b.psChevron:SetPoint("LEFT", b.Label, "RIGHT", 5, 0)
	if b.Label.GetTextColor then b.psChevron:SetVertexColor(b.Label:GetTextColor()) end
end

function close()
	if F then F:Hide() end
end

---------------------------------------------------------------------------
-- The night: gradient, haze, band; the emblem; the Little Dipper
---------------------------------------------------------------------------

-- The night ground of a hero `height` tall: the gradient (house style), the
-- haze and the starlit band. opts: { haze = alpha, band = alpha, bottom =
-- the palette colour the gradient ends in }. Textures on `h` (under every
-- child frame) and on `sky` (above the painting, if any).
function night(h, sky, height, opts)
	local n = {}
	n.Ground = solid(h, "BACKGROUND", -8)
	n.Ground:SetAllPoints(h)
	n.Band = Theme.Band(sky, "BACKGROUND", -5)
	n.Band:SetPoint("TOPLEFT", sky, "TOPLEFT", 0, 0)
	n.Band:SetPoint("TOPRIGHT", sky, "TOPRIGHT", 0, 0)
	n.Band:SetHeight(min(BAND_H, height))
	local x0, x1, y0, y1 = Theme.BandCoords(INNER, min(BAND_H, height))
	n.Band:SetTexCoord(x0 + BAND_SHIFT, x1 + BAND_SHIFT, y0, y1)
	n.Band:SetAlpha(opts.band or 0.7)
	if W.Haze then
		n.Haze = W.Haze(sky, { width = floor(INNER * 1.2), height = floor(height * 0.75), sub = -6 })
		n.Haze:SetAlpha(opts.haze or 1)
	end
	W.Painter(n.Ground, function(t)
		t:SetShown(house())
		local tr, tg, tb = Theme.Color("scrim")
		local br, bg, bb = Theme.Color(opts.bottom or "bg")
		vgrad(t, tr, tg, tb, 1, br, bg, bb, 1)
	end)
	return n
end

-- The emblem, `size` px, centred on (x, y) of `parent`, in its glow, a
-- 1px beam rising from it (house style). bloom: the glow's size.
function emblem(parent, size, x, y, bloom, beamH)
	local e = W.Tex(parent, "ARTWORK", "emblem", "accent")
	e:SetSize(size, size)
	e:SetPoint("CENTER", parent, "TOPLEFT", x, -y)
	local glow = W.Tex(parent, "BORDER", "glow", nil, 3)
	glow:SetSize(bloom, bloom)
	glow:SetPoint("CENTER", e, "CENTER", 0, 0)
	local beam = solid(parent, "BORDER", 4)
	beam:SetSize(1, beamH)
	beam:SetPoint("BOTTOM", e, "TOP", 0, -4)
	W.Painter(glow, function(t)
		local r, g, b = Theme.Accent()
		t:SetVertexColor(r, g, b, house() and 0.3 or 0.12)
		local hr, hg, hb = accentHi()
		beam:SetShown(house())
		vgrad(beam, r, g, b, 0, hr, hg, hb, 0.7)
	end)
	return e
end

-- The Little Dipper as the mock draws it, in px from the end of its handle
-- (x right, y down): { x, y, radius }. The handle's end has no star of its
-- own (Polaris: the emblem beside it, or the sky).
DIPPER = {
	{ 0, 0, 0 }, { 62, -24, 1.6 }, { 114, -34, 1.5 }, { 162, -27, 1.5 },
	{ 236, -52, 2.2 }, { 262, -10, 1.9 }, { 196, 13, 1.3 },
}
LINKS = { { 1, 2 }, { 2, 3 }, { 3, 4 }, { 4, 5 }, { 5, 6 }, { 6, 7 }, { 7, 4 } }

-- Draws the Dipper on `parent`, its handle's end at (ox, oy), scaled and
-- turned `deg` degrees clockwise, in the neutral star colour.
function dipper(parent, ox, oy, scale, deg)
	local a = rad(deg or 0)
	local c, s = cos(a), sin(a)
	local pts = {}
	for i, st in ipairs(DIPPER) do
		local x, y = st[1], st[2]
		pts[i] = { ox + (x * c - y * s) * scale, oy + (x * s + y * c) * scale }
		if st[3] > 0 then
			local halo = W.Tex(parent, "BORDER", "glow", nil, 1)
			halo:SetSize(st[3] * 6, st[3] * 6)
			halo:SetPoint("CENTER", parent, "TOPLEFT", pts[i][1], -pts[i][2])
			local core = W.Tex(parent, "BORDER", "circle", nil, 2)
			core:SetSize(max(2, st[3] * 2), max(2, st[3] * 2))
			core:SetPoint("CENTER", halo, "CENTER", 0, 0)
			W.Painter(halo, function(t)
				local r, g, b = Theme.Color("star")
				t:SetVertexColor(r, g, b, 0.3)
				core:SetVertexColor(r, g, b, 1)
			end)
		end
	end
	for _, link in ipairs(LINKS) do
		local p, q = pts[link[1]], pts[link[2]]
		local t = solid(parent, "BORDER", 0)
		segment(t, parent, p[1], p[2], q[1], q[2], 1)
		W.Painter(t, function(tex)
			tex:SetHeight(Theme.Pixel(parent))
			local r, g, b = Theme.Color("star")
			tex:SetVertexColor(r, g, b, 0.28)
		end)
	end
end

---------------------------------------------------------------------------
-- What the pages show of the suggested guide
---------------------------------------------------------------------------

-- The player as Polestar reads them; a field is nil when the client cannot say.
function playerInfo()
	local C = ns.Compat
	local ok, info = pcall(C.GetPlayerInfo)
	return ok and type(info) == "table" and info or {}
end

-- The guide Polestar suggests, or nil.
function suggested()
	local G = ns.Guides
	local id = G and G.Suggest and G.Suggest()
	local g = id and G.Get and G.Get(id)
	if g and known(g.title) then return id, g end
	return nil
end

-- A name a guide gives (its tokens filled), or nil.
function nameOf(...)
	for i = 1, select("#", ...) do
		local s = known((select(i, ...)))
		if s and not s:find("{", 1, true) then return s end
	end
	return nil
end

-- A goal's place on the guide's zone map (live-frame percent, as the
-- Engine's GuideFocus reads it), or nil: elsewhere, or for some only.
function zonePoint(g, goal)
	if goal.only or not (g.zone and goal.map == g.zone and goal.x and goal.y) then return nil end
	local x, y = goal.x, goal.y
	local C = ns.Compat
	if goal.f and C.MapToWorld and C.WorldToMap then
		local c, wx, wy = C.MapToWorld(goal.map, goal.x, goal.y, goal.f)
		if c then x, y = C.WorldToMap(c, wx, wy, goal.map) end
	end
	if x and y then return x, y end
	return nil
end

WALK_MIN = 12 -- a walk is at least this far (percent of the map)
SCAN = 40 -- steps read from the guide's start

-- The guide's first walk: the first stretch between two of its places on
-- its zone map at least WALK_MIN apart, ending at a named place.
-- -> { x0, y0, x1, y1, name } | nil (cached per guide)
walks = setmetatable({}, { __mode = "k" })
function firstWalk(g)
	local w = walks[g]
	if w == nil then
		w = false
		local ok, found = pcall(function()
			local lx, ly
			for si, step in ipairs(g.steps or {}) do
				if si > SCAN then break end
				if not step.only then
					for _, goal in ipairs(step.goals or {}) do
						local x, y = zonePoint(g, goal)
						if x then
							local name = goal.t == "goto" and nameOf(goal.text, goal.subject)
							if lx and name and (x - lx) ^ 2 + (y - ly) ^ 2 >= WALK_MIN ^ 2 then
								return { lx, ly, x, y, name }
							end
							lx, ly = x, y
						end
					end
				end
			end
		end)
		if ok and found then w = found end
		walks[g] = w
	end
	return w or nil
end

-- A goal of the guide to show as a goal row: a collect or a kill with a
-- count. -> kind, name, count | nil
function sampleGoal(g)
	for si, step in ipairs(g and g.steps or {}) do
		if si > SCAN then break end
		for _, goal in ipairs(step.goals or {}) do
			if (goal.t == "collect" or goal.t == "kill") and not goal.only then
				-- In the client's language where Polestar.Names has it.
				local N = ns.Names
				local name = nameOf(N and N.Item(goal.item), goal.itemName, N and N.Npc(goal.npc), goal.target, goal.subject)
				local n = tonumber(goal.count) or (type(goal.progress) == "table" and tonumber(goal.progress.max))
				if name and n and n > 1 then return goal.t, name, n end
			end
		end
	end
	return nil
end

-- The library's guides of a category.
function countOf(category)
	local G = ns.Guides
	local list = G and G.List and G.List() or {}
	local n = 0
	for _, h in ipairs(list) do if h.category == category then n = n + 1 end end
	return n
end

-- "Your first guide, for your level 1 Human Warrior in Elwynn Forest",
-- leaving out what is unknown.
function forWhom(g)
	local info = playerInfo()
	local race, class = known(UI.RaceName(info.race)), known(UI.ClassName(info.class))
	local level = tonumber(info.level)
	local who
	if race or class then
		who = race and class and (race .. " " .. class) or race or class
		if level then who = (L["level %d %s"]):format(level, who) end
	elseif level then
		who = (L["level %d character"]):format(level)
	end
	local zone = known((ns.Compat.GetZoneText()))
	-- A guide named for the zone already says where.
	if zone and g.title:lower():find(zone:lower(), 1, true) then zone = nil end
	if who and zone then return (L["Your first guide, for your %s in %s"]):format(who, zone) end
	if who then return (L["Your first guide, for your %s"]):format(who) end
	if zone then return (L["Your first guide, in %s"]):format(zone) end
	return L["Your first guide"]
end

---------------------------------------------------------------------------
-- Pages: build(P) once; layout(P) -> the hero's height, the page's height,
-- on every show. P.Hero is the hero, P.Body the page under it.
---------------------------------------------------------------------------

PAGES = {}

-- The compact hero (setup, route): the night, the emblem on the right, the
-- title and its line on the 32 edge.
SIDE_X, SIDE_Y = INNER - 64 - 20, 64
CHERO_TEXT_W = 440

function compactHero(h, title, sub, withDipper)
	h.Sky = CreateFrame("Frame", nil, h)
	h.Sky:SetAllPoints(h)
	h.Night = night(h, h.Sky, 160, { haze = 0.8, band = 0.6, bottom = "bg" })
	if withDipper then dipper(h.Sky, 400, 52, 0.62, -8) end
	emblem(h.Sky, 40, SIDE_X, SIDE_Y, 120, 44)
	h.Title = para(h.Sky, "hero", "text", CHERO_TEXT_W, 2)
	h.Title:SetText(title)
	h.Sub = para(h.Sky, "body", "textDim", CHERO_TEXT_W, 3)
	h.Sub:SetText(sub)
end

function layoutCompactHero(h)
	place(h.Title, EDGE, 40)
	local y = 40 + h.Title:GetStringHeight() + 8
	place(h.Sub, EDGE, y)
	return y + h.Sub:GetStringHeight() + 22
end

-- 1. Welcome --------------------------------------------------------------

CARD_GAP = 16
CARD_W = floor((CW - CARD_GAP * 2) / 3)
MEDIA_H = 72

-- A card: the panel, a hairline, an inset night for its miniature, its
-- title and line.
function card(p, title, desc)
	local c = CreateFrame("Frame", nil, p)
	c:SetWidth(CARD_W)
	W.Fill(c, "panel", "BACKGROUND", -6)
	outline(c)
	c.Media = CreateFrame("Frame", nil, c)
	c.Media:SetPoint("TOPLEFT", c, "TOPLEFT", 6, -6)
	c.Media:SetPoint("TOPRIGHT", c, "TOPRIGHT", -6, -6)
	c.Media:SetHeight(MEDIA_H)
	if c.Media.SetClipsChildren then c.Media:SetClipsChildren(true) end
	local m = c.Media
	m.Ground = solid(m, "BACKGROUND", -7)
	m.Ground:SetAllPoints(m)
	m.Stars = m:CreateTexture(nil, "BACKGROUND", nil, -6)
	m.Stars:SetTexture(Theme.Media("band-stars"))
	m.Stars:SetAllPoints(m)
	m.Stars:SetTexCoord(0.4, 0.4 + (CARD_W - 12) / Theme.BAND_W, 0.2, 0.2 + MEDIA_H / Theme.BAND_H)
	outline(m)
	W.Painter(c, function(self)
		paintOutline(self, Theme.Wash("divider"))
		local sr, sg, sb = Theme.Color("shade")
		paintOutline(self.Media, sr, sg, sb, 0.6)
		local r, g, b = Theme.Color("scrim")
		self.Media.Ground:SetVertexColor(r, g, b, 1)
		local tr, tg, tb = Theme.Color("star")
		self.Media.Stars:SetVertexColor(tr, tg, tb, 0.5)
	end)
	c.Title = para(c, "heading", "text", CARD_W - 24, 2)
	c.Title:SetText(title)
	c.Desc = para(c, "note", "textMuted", CARD_W - 24, 3)
	c.Desc:SetText(desc)
	return c
end

-- The guide window's miniature: a goal row with the accent bar, its count
-- and the progress line under it.
function goalMini(m)
	local box = CreateFrame("Frame", nil, m)
	box:SetPoint("TOPLEFT", m, "TOPLEFT", 10, -14)
	box:SetPoint("TOPRIGHT", m, "TOPRIGHT", -10, -14)
	box:SetHeight(34)
	W.Fill(box, "bg", "BACKGROUND", -5)
	outline(box)
	W.Painter(box, function(self) paintOutline(self, Theme.Wash("border")) end)
	box.Bar = solid(box, "ARTWORK", 1)
	box.Bar:SetSize(2, 15)
	box.Bar:SetPoint("TOPLEFT", box, "TOPLEFT", 0, -6)
	W.Color(box.Bar, "accent")
	box.Glyph = W.Tex(box, "ARTWORK", "icon-collect", "text")
	box.Glyph:SetSize(11, 11)
	box.Glyph:SetPoint("CENTER", box, "TOPLEFT", 12 + 5.5, -13)
	box.Count = W.Text(box, "caption", "success")
	box.Count:SetPoint("RIGHT", box, "TOPRIGHT", -8, -13)
	box.Name = W.Text(box, "small", "item")
	box.Name:SetPoint("LEFT", box.Glyph, "RIGHT", 6, 0)
	box.Name:SetPoint("RIGHT", box.Count, "LEFT", -6, 0)
	box.Name:SetJustifyH("LEFT")
	box.Name:SetWordWrap(false)
	box.Line = CreateFrame("Frame", nil, box)
	box.Line:SetPoint("TOPLEFT", box, "TOPLEFT", 12, -24)
	box.Line:SetPoint("TOPRIGHT", box, "TOPRIGHT", -8, -24)
	box.Line:SetHeight(3)
	box.Line.Track = solid(box.Line, "BACKGROUND", 0)
	box.Line.Track:SetAllPoints(box.Line)
	W.Painter(box.Line.Track, function(t) t:SetVertexColor(Theme.Wash("track")) end)
	box.Line.Fill = solid(box.Line, "ARTWORK", 0)
	box.Line.Fill:SetPoint("TOPLEFT", box.Line, "TOPLEFT", 0, 0)
	box.Line.Fill:SetPoint("BOTTOMLEFT", box.Line, "BOTTOMLEFT", 0, 0)
	W.Color(box.Line.Fill, "success")
	return box
end

function paintGoalMini(box, g)
	local kind, name, n = sampleGoal(g)
	if not kind then kind, name, n = "collect", L["Supplies"], 5 end
	local cur = max(1, floor(n * 0.6))
	box.Glyph:SetTexture(Theme.Media(kind == "kill" and "icon-kill" or "icon-collect"))
	box.Name:SetText(name)
	W.Color(box.Name, kind == "kill" and "npc" or "item")
	box.Count:SetText(cur .. "/" .. n)
	box.Line.Fill:SetWidth(max(1, (CARD_W - 12 - 20 - 20) * cur / n))
end

-- The arrow's miniature: the gold dart, a distance and where it leads.
function arrowMini(m)
	local a = CreateFrame("Frame", nil, m)
	a:SetAllPoints(m)
	a.Dart = W.Tex(a, "ARTWORK", "dart-gold")
	a.Dart:SetSize(40, 40)
	a.Dart:SetTexCoord(0, 1, 0, 1)
	a.Dart:SetRotation(rad(30))
	a.Yd = W.Text(a, "display", "text")
	a.Yd:SetText((L["%d yd"]):format(412)) -- an illustration of the arrow's readout
	a.To = W.Text(a, "small", "textDim")
	a.To:SetWordWrap(false)
	return a
end

function paintArrowMini(a, g)
	local walk = g and firstWalk(g)
	local to = walk and walk[5] or L["your next stop"]
	a.To:SetText(L["Go to"] .. " " .. colored("place", to))
	local room = CARD_W - 12 - 16 - 40 - 10
	local textW = min(room, max(W.TextWidth(a.Yd), W.TextWidth(a.To)))
	a.To:SetWidth(textW)
	local total = 40 + 10 + textW
	local x = floor((CARD_W - 12 - total) / 2)
	a.Dart:ClearAllPoints()
	a.Dart:SetPoint("CENTER", a, "LEFT", x + 20, 0)
	local h = a.Yd:GetStringHeight() + 3 + a.To:GetStringHeight()
	a.Yd:ClearAllPoints()
	a.Yd:SetPoint("TOPLEFT", a, "LEFT", x + 50, h / 2)
	a.To:ClearAllPoints()
	a.To:SetPoint("TOPLEFT", a.Yd, "BOTTOMLEFT", 0, -3)
end

-- The library's miniature: three rows with their counts, the first chosen.
LIBRARY = {
	{ "Leveling", "icon-level" },
	{ "Professions", "icon-craft" },
	{ "Reputation", "icon-rep" },
}

function libraryMini(m)
	local rows = {}
	for i, it in ipairs(LIBRARY) do
		local r = CreateFrame("Frame", nil, m)
		r:SetPoint("TOPLEFT", m, "TOPLEFT", 10, -(9 + (i - 1) * 20))
		r:SetPoint("TOPRIGHT", m, "TOPRIGHT", -10, -(9 + (i - 1) * 20))
		r:SetHeight(17)
		local sel = i == 1
		r.Fill = solid(r, "BACKGROUND", -4)
		r.Fill:SetAllPoints(r)
		W.Painter(r.Fill, function(t) t:SetVertexColor(Theme.Wash(sel and "selected" or "hover")) end)
		if sel then
			r.Bar = solid(r, "ARTWORK", 1)
			r.Bar:SetPoint("TOPLEFT", r, "TOPLEFT", 0, 0)
			r.Bar:SetPoint("BOTTOMLEFT", r, "BOTTOMLEFT", 0, 0)
			r.Bar:SetWidth(2)
			W.Color(r.Bar, "accent")
		end
		r.Glyph = W.Tex(r, "ARTWORK", it[2], sel and "accent" or "textMuted")
		r.Glyph:SetSize(11, 11)
		r.Glyph:SetPoint("LEFT", r, "LEFT", 6, 0)
		r.Count = W.Text(r, "caption", "textMuted")
		r.Count:SetPoint("RIGHT", r, "RIGHT", -6, 0)
		r.Name = W.Text(r, "small", sel and "text" or "textDim")
		r.Name:SetPoint("LEFT", r.Glyph, "RIGHT", 7, 0)
		r.Name:SetPoint("RIGHT", r.Count, "LEFT", -6, 0)
		r.Name:SetJustifyH("LEFT")
		r.Name:SetWordWrap(false)
		r.Name:SetText(L[it[1]])
		r.psCategory = it[1]
		rows[i] = r
	end
	return rows
end

PAGES[#PAGES + 1] = {
	key = "welcome",
	build = function(P)
		local h = P.Hero
		h:SetHeight(HELLO_H)
		-- The start zone's painting, engraved: no colour, multiplied into
		-- the night's blue, faint.
		h.Art = UI.ZoneArt.Create(h, INNER, HELLO_H, "bg")
		h.Art:SetPoint("TOPLEFT", h, "TOPLEFT", 0, 0)
		h.Art.psZoom = 1.2
		h.Art.psDesat = 1
		h.Art.Fade:Hide()
		h.Art.Top:Hide()
		h.Art.Rule:Hide()
		h.Sky = CreateFrame("Frame", nil, h)
		h.Sky:SetAllPoints(h)
		h.Sky:SetFrameLevel(h.Art.Over:GetFrameLevel() + 1)
		h.Night = night(h, h.Sky, HELLO_H, {})
		-- Over the painting, the night again from the top; under it all, the
		-- fade into the page's ground.
		h.Dark = solid(h.Sky, "BACKGROUND", -7)
		h.Dark:SetPoint("TOPLEFT", h.Sky, "TOPLEFT", 0, 0)
		h.Dark:SetPoint("TOPRIGHT", h.Sky, "TOPRIGHT", 0, 0)
		h.Dark:SetHeight(floor(HELLO_H * 0.55))
		h.Under = solid(h.Sky, "BORDER", -2)
		h.Under:SetPoint("BOTTOMLEFT", h.Sky, "BOTTOMLEFT", 0, 0)
		h.Under:SetPoint("BOTTOMRIGHT", h.Sky, "BOTTOMRIGHT", 0, 0)
		h.Under:SetHeight(120)
		W.Painter(h.Under, function(t)
			local r, g, b = Theme.Color("bg")
			vgrad(t, r, g, b, 0, r, g, b, 1)
			local sr, sg, sb = Theme.Color("scrim")
			vgrad(h.Dark, sr, sg, sb, 0.85, sr, sg, sb, 0)
			local kr, kg, kb = Theme.Color("sky")
			h.Art.psTint = { min(1, kr * 1.5), min(1, kg * 1.5), min(1, kb * 1.5) }
		end)
		-- The lockup: the emblem (Polaris) with the Dipper's handle leading
		-- to it, the wordmark and tagline centred under it.
		local cx = floor(INNER / 2)
		dipper(h.Sky, cx + 30, 70, 1, 0)
		emblem(h.Sky, 60, cx, 70, 170, 70)
		h.Word = W.Tex(h.Sky, "ARTWORK", "wordmark", "text")
		h.Word:Hide()
		local brandTitle = W.Text(h.Sky, "title", "accent")
		brandTitle:SetText("|cffffd24aTUWOW|r |cffffffffLEVELING|r")
		brandTitle:SetPoint("CENTER", h.Sky, "TOPLEFT", cx, -130)
		h.BrandTitle = brandTitle
		h.Tagline = W.Text(h.Sky, "note", "textDim")
		h.Tagline:SetWidth(CW)
		h.Tagline:SetJustifyH("CENTER")
		h.Tagline:SetText(L["Leveling guides for TuWoW"])
		h.Tagline:SetPoint("TOP", h.Sky, "TOPLEFT", cx, -151)

		local p = P.Body
		p.Title = para(p, "hero", "text", CW, 2)
		p.Line = para(p, "body", "textDim", CW)
		p.Line:SetText(L["TuWoW_Leveling guides you step by step: who to talk to, what to kill or collect, and where to go."])
		p.Cards = {
			card(p, L["The guide window"], L["Goals tick off as you play."]),
			card(p, L["The arrow"], L["Points the way. The map marks each place."]),
			card(p, L["Every guide"], L["Leveling, professions, reputations, mounts and pets."]),
		}
		p.Goal = goalMini(p.Cards[1].Media)
		p.Arrow = arrowMini(p.Cards[2].Media)
		p.Library = libraryMini(p.Cards[3].Media)
	end,
	layout = function(P)
		local h, p = P.Hero, P.Body
		local id, g = suggested()
		local painted = false
		if g and house() then
			local fx, fy
			local E = ns.Engine
			if E and E.GuideFocus then fx, fy = E.GuideFocus(id) end
			painted = UI.ZoneArt.Paint(h.Art, g.zone, fx, fy, 1) and true or false
		end
		h.Art:SetShown(painted)
		h.Art:SetAlpha(0.55)
		h.Dark:SetShown(painted)

		local name = known(playerInfo().name)
		p.Title:SetText(name and (L["Hello, %s"]):format(name) or L["Welcome to TuWoW Leveling"])
		place(p.Title, 0, 4)
		local y = 4 + p.Title:GetStringHeight() + 8
		place(p.Line, 0, y)
		y = y + p.Line:GetStringHeight() + 22
		paintGoalMini(p.Goal, g)
		paintArrowMini(p.Arrow, g)
		for _, r in ipairs(p.Library) do
			local n = countOf(r.psCategory)
			r.Count:SetText(n > 0 and tostring(n) or "")
		end
		-- Every card as tall as the tallest.
		local textH = 0
		for _, c in ipairs(p.Cards) do
			textH = max(textH, c.Title:GetStringHeight() + 4 + c.Desc:GetStringHeight())
		end
		for i, c in ipairs(p.Cards) do
			place(c, (i - 1) * (CARD_W + CARD_GAP), y)
			c:SetHeight(6 + MEDIA_H + 10 + textH + 12)
			c.Title:ClearAllPoints()
			c.Title:SetPoint("TOPLEFT", c, "TOPLEFT", 12, -(6 + MEDIA_H + 10))
			c.Desc:ClearAllPoints()
			c.Desc:SetPoint("TOPLEFT", c.Title, "BOTTOMLEFT", 0, -4)
		end
		return HELLO_H, y + 6 + MEDIA_H + 10 + textH + 12
	end,
	title = function(P) return P.Body.Title:GetText() end,
}

-- 2. Setup ------------------------------------------------------------------

-- Quest automation is one switch for two settings: on while both are.
function autoQuestGet()
	return ns.Get("behavior.autoAccept") and ns.Get("behavior.autoTurnin")
end

function autoQuestSet(v)
	ns.Set("behavior.autoAccept", v)
	ns.Set("behavior.autoTurnin", v)
end

-- A toggle row with its description under the label, not only in the
-- tooltip, a hairline under it: the row reaches 12px past the 32 edge on
-- both sides, so the label and the switch sit on the page's edges.
ROW_PAD = 11
TEXT_W = CW - 30 - 24

function toggleRow(p, label, path, desc, opts)
	local row = W.Toggle(p, label, path, desc, nil, opts)
	row:SetWidth(CW + 24)
	row.Desc = para(row, "note", "textMuted", TEXT_W, 3)
	row.Desc:SetText(desc)
	row.Track:ClearAllPoints()
	row.Track:SetPoint("RIGHT", row, "RIGHT", -12, 0)
	row.Label:ClearAllPoints()
	row.Label:SetPoint("TOPLEFT", row, "TOPLEFT", 12, -ROW_PAD)
	row.Label:SetWidth(TEXT_W)
	row.Label:SetWordWrap(true)
	row.Desc:SetPoint("TOPLEFT", row.Label, "BOTTOMLEFT", 0, -3)
	row.Rule:ClearAllPoints() -- the row's own hairline, on the page's edges
	row.Rule:SetPoint("BOTTOMLEFT", row, "BOTTOMLEFT", 12, 0)
	row.Rule:SetPoint("BOTTOMRIGHT", row, "BOTTOMRIGHT", -12, 0)
	return row
end

function toggleRowHeight(row)
	return ROW_PAD + row.Label:GetStringHeight() + 3 + row.Desc:GetStringHeight() + ROW_PAD
end

-- Scheme cards: a small window in that scheme's colours (the sidebar strip,
-- the ground, the sky along its top, a title and a line, the selection bar
-- and the primary button), the name under it; the chosen one in a 1px
-- accent outline. The scheme's own colours come from Theme.SCHEMES;
-- EllesmereUI derives its grounds from its panel, shown as they are while
-- it is in use.
SCHEME_GAP, PREVIEW_H, SCHEME_NAME_H = 12, 54, 28

function schemeColours(key)
	if key == "ellesmere" then
		if Theme.SchemeKey() == "ellesmere" then return Theme.Palette() end
		return Theme.SCHEMES.graphite
	end
	return Theme.SCHEMES[key] or Theme.SCHEMES.dusk
end

function paintScheme(c)
	local pal = schemeColours(c.psValue)
	local function rgb(name) local v = pal[name]; return v[1], v[2], v[3] end
	c.Ground:SetVertexColor(rgb("bg"))
	c.Side:SetVertexColor(rgb("sidebar"))
	c.Sky:SetVertexColor(rgb("sky"))
	c.Line1:SetVertexColor(rgb("text"))
	c.Line2:SetVertexColor(rgb("textMuted"))
	local ar, ag, ab = Theme.Accent()
	c.Button:SetVertexColor(ar, ag, ab, 1)
	c.Bar:SetVertexColor(ar, ag, ab, 1)
	local on = Theme.SchemeKey() == c.psValue
	c.psSelected = on
	if on then paintOutline(c, ar, ag, ab, 1) else paintOutline(c, Theme.Wash("border")) end
	W.Color(c.Name, on and "text" or "textDim")
end

function schemeCard(p)
	local c = CreateFrame("Button", nil, p)
	W.Hover(c)
	outline(c)
	c.Side = solid(c, "BORDER", 0)
	c.Side:SetPoint("TOPLEFT", c, "TOPLEFT", 5, -5)
	c.Side:SetSize(22, PREVIEW_H)
	c.Ground = solid(c, "BORDER", 0)
	c.Ground:SetPoint("TOPLEFT", c.Side, "TOPRIGHT", 0, 0)
	c.Ground:SetPoint("TOPRIGHT", c, "TOPRIGHT", -5, -5)
	c.Ground:SetHeight(PREVIEW_H)
	c.Sky = solid(c, "BORDER", 1)
	c.Sky:SetPoint("TOPLEFT", c.Ground, "TOPLEFT", 0, 0)
	c.Sky:SetPoint("TOPRIGHT", c.Ground, "TOPRIGHT", 0, 0)
	c.Sky:SetHeight(14)
	c.Line1 = solid(c, "ARTWORK", 0)
	c.Line1:SetSize(52, 4)
	c.Line1:SetPoint("TOPLEFT", c.Ground, "TOPLEFT", 8, -20)
	c.Line2 = solid(c, "ARTWORK", 0)
	c.Line2:SetPoint("TOPLEFT", c.Ground, "TOPLEFT", 8, -29)
	c.Line2:SetHeight(3)
	c.Bar = solid(c, "ARTWORK", 1)
	c.Bar:SetSize(2, 15)
	c.Bar:SetPoint("TOPLEFT", c.Ground, "TOPLEFT", 0, -18)
	c.Button = solid(c, "ARTWORK", 0)
	c.Button:SetSize(22, 7)
	c.Button:SetPoint("BOTTOMRIGHT", c.Ground, "BOTTOMRIGHT", -6, 6)
	c.Name = W.Text(c, "label", "textDim")
	c.Name:SetPoint("TOPLEFT", c.Side, "BOTTOMLEFT", 3, 0)
	c.Name:SetPoint("TOPRIGHT", c.Ground, "BOTTOMRIGHT", -3, 0)
	c.Name:SetHeight(SCHEME_NAME_H)
	c.Name:SetJustifyH("LEFT")
	c.Name:SetWordWrap(false)
	-- Click applies it live; right-click puts the default back.
	c:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	c:SetScript("OnClick", function(self, button)
		if button == "RightButton" then ns.Set("ui.scheme", nil) else ns.Set("ui.scheme", self.psValue) end
	end)
	return c
end

PAGES[#PAGES + 1] = {
	key = "setup",
	shown = function() return full end,
	build = function(P)
		compactHero(P.Hero, L["Make it yours"],
			(L["Three choices to start with. Everything else is in %s."]):format(cmd("/twl options")), true)
		local p = P.Body
		F.AutoQuest = toggleRow(p, L["Accept and turn in guide quests for me"], "behavior.autoAccept",
			L["Only quests in the next steps of your open guides. Never picks between rewards. Hold Shift to skip."],
			{ get = autoQuestGet, set = autoQuestSet })
		F.AutoGuide = toggleRow(p, L["Load a guide for me when I log in"], "behavior.autoSelectGuide",
			L["Opens the suggested guide when no tab is open."])
		p.SchemeTitle = para(p, "body", "text", CW, 2)
		p.SchemeTitle:SetText(L["Colour scheme"])
		p.SchemeNote = para(p, "note", "textMuted", CW, 3)
		p.SchemeNote:SetText(L["The background of every TuWoW Leveling window. It changes as you pick."])
		p.Keep = para(p, "note", "textMuted", CW, 3)
		p.Keep:SetText(L["Skip keeps these as they are."])
		F.Schemes = {}
	end,
	layout = function(P)
		local heroH = layoutCompactHero(P.Hero)
		local p = P.Body
		local y = 0
		for _, row in ipairs({ F.AutoQuest, F.AutoGuide }) do
			place(row, -12, y)
			row:Refresh()
			local rh = toggleRowHeight(row)
			row:SetHeight(rh)
			y = y + rh
		end
		y = y + 16
		place(p.SchemeTitle, 0, y)
		y = y + p.SchemeTitle:GetStringHeight() + 4
		place(p.SchemeNote, 0, y)
		y = y + p.SchemeNote:GetStringHeight() + 10
		local choices = Theme.SchemeChoices()
		local n = #choices
		local cw = floor((CW - SCHEME_GAP * (n - 1)) / n)
		for i, ch in ipairs(choices) do
			local c = F.Schemes[i] or schemeCard(p)
			F.Schemes[i] = c
			c.psValue = ch.value
			c.Name:SetText(ch.text)
			c:SetSize(cw, 5 + PREVIEW_H + SCHEME_NAME_H)
			c.Line2:SetWidth(floor((cw - 10 - 22) * 0.8))
			place(c, (i - 1) * (cw + SCHEME_GAP), y)
			if not c.psPainted then
				c.psPainted = true
				W.Painter(c, paintScheme)
			else
				paintScheme(c)
			end
			c:Show()
		end
		for i = n + 1, #F.Schemes do F.Schemes[i]:Hide() end
		y = y + 5 + PREVIEW_H + SCHEME_NAME_H + 14
		place(p.Keep, 0, y)
		return heroH, y + p.Keep:GetStringHeight()
	end,
	title = function(P) return P.Hero.Title:GetText() end,
}

