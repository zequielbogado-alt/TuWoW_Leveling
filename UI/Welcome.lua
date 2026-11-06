local ADDON, ns = ...
setfenv(1, ns._uiWelcomeEnv)
-- 3. Route style -------------------------------------------------------------

-- The styles: the setting's value, the name, what it does, the
-- Recommended tag. Options' Route style dropdown writes the same setting;
-- Nav/Walk.lua searches its walks again when it changes.
STYLES = {
	{ "fastest", L["Fastest"], L["The shortest walk. Cuts across fields and goes straight over hills."] },
	{ "balanced", L["Balanced"], L["Takes roads when they aren't much longer, and goes round steep hills."], true },
	{ "roads", L["Roads"], L["Stays on roads, even when it's longer. Slower, but easy to follow."] },
}
MAP_H = 150
OPT_L, OPT_R, OPT_T, OPT_B = 12, 14, 8, 9
OPT_TEXT_X = OPT_L + 16 + 12
OPT_TEXT_W = CW - OPT_TEXT_X - OPT_R

-- The style in use: the router reads anything but Fastest or Roads as
-- Balanced, the default.
function routeStyle()
	local s = ns.Get("nav.routeStyle")
	if s == "fastest" or s == "roads" then return s end
	return "balanced"
end

function paintStyle(c)
	local on = routeStyle() == c.psStyle
	c.psSelected = on
	c.Fill:SetShown(on)
	c.Bar:SetShown(on)
	c.Dot:SetShown(on)
	paintOutline(c, Theme.Wash("divider"))
	if on then c.Ring:SetVertexColor(Theme.Accent()) else c.Ring:SetVertexColor(Theme.Color("textMuted")) end
	W.Color(c.Name, "text")
	if c.psChip then W.SetChip(c.psChip, L["Recommended"], "accent") end
end

-- A style's row: the radio, its name (and tag), what it does. Click sets
-- the style live; right-click puts Balanced back.
function styleRow(p, st)
	local c = CreateFrame("Button", nil, p)
	c:SetWidth(CW)
	c.Fill = W.Fill(c, "panelAlt", "BACKGROUND", -6)
	W.Hover(c)
	outline(c)
	c.Bar = solid(c, "ARTWORK", 2)
	c.Bar:SetPoint("TOPLEFT", c, "TOPLEFT", 0, 0)
	c.Bar:SetPoint("BOTTOMLEFT", c, "BOTTOMLEFT", 0, 0)
	c.Bar:SetWidth(2)
	W.Color(c.Bar, "accent")
	c.psStyle = st[1]
	-- The radio: a ring, the accent dot in it while chosen.
	c.Ring = W.Tex(c, "ARTWORK", "skin-ring", nil, 0)
	c.Ring:SetSize(19, 19) -- the ring's ink is 14px of it
	c.Ring:SetPoint("CENTER", c, "LEFT", OPT_L + 8, 0)
	c.Dot = W.Tex(c, "ARTWORK", "circle", "accent", 2)
	c.Dot:SetSize(7, 7)
	c.Dot:SetPoint("CENTER", c.Ring, "CENTER", 0, 0)
	c.Name = W.Text(c, "heading", "text")
	c.Name:SetText(st[2])
	c.Desc = para(c, "note", "textMuted", OPT_TEXT_W, 3)
	c.Desc:SetText(st[3])
	if st[4] then c.psChip = W.Chip(c) end
	c:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	c:SetScript("OnClick", function(self, button)
		if button == "RightButton" then ns.Set("nav.routeStyle", nil) else ns.Set("nav.routeStyle", self.psStyle) end
	end)
	W.Painter(c, paintStyle)
	return c
end

function layoutStyleRow(c)
	paintStyle(c)
	local chipH = c.psChip and W.CHIP_H or 0
	local nameH = max(c.Name:GetStringHeight(), chipH)
	c.Name:ClearAllPoints()
	c.Name:SetPoint("LEFT", c, "TOPLEFT", OPT_TEXT_X, -(OPT_T + nameH / 2))
	if c.psChip then
		c.psChip:ClearAllPoints()
		c.psChip:SetPoint("LEFT", c.Name, "RIGHT", 8, 0)
	end
	place(c.Desc, OPT_TEXT_X, OPT_T + nameH + 2)
	local h = OPT_T + nameH + 2 + c.Desc:GetStringHeight() + OPT_B
	c:SetHeight(h)
	return h
end

-- The map: the start zone's painting, darkened on the left for the
-- readout, the guide's first walk drawn on it.
function routeMap(p)
	local m = CreateFrame("Frame", nil, p)
	m:SetSize(CW, MAP_H)
	m.Art = UI.ZoneArt.Create(m, CW, MAP_H, "bg")
	m.Art:SetPoint("TOPLEFT", m, "TOPLEFT", 0, 0)
	m.Art.psZoom = 1.5
	m.Art.psFocusY = MAP_H / 2
	m.Art.Fade:Hide()
	m.Art.Rule:Hide()
	m.Draw = CreateFrame("Frame", nil, m)
	m.Draw:SetAllPoints(m)
	m.Draw:SetFrameLevel(m.Art.Over:GetFrameLevel() + 1)
	local d = m.Draw
	-- The readout's ground: dark on the left, clear by 60 %.
	m.Vig1 = solid(d, "BACKGROUND", -4)
	m.Vig1:SetPoint("TOPLEFT", d, "TOPLEFT", 0, 0)
	m.Vig1:SetPoint("BOTTOMLEFT", d, "BOTTOMLEFT", 0, 0)
	m.Vig1:SetWidth(floor(CW * 0.38))
	m.Vig2 = solid(d, "BACKGROUND", -4)
	m.Vig2:SetPoint("TOPLEFT", m.Vig1, "TOPRIGHT", 0, 0)
	m.Vig2:SetPoint("BOTTOMLEFT", m.Vig1, "BOTTOMRIGHT", 0, 0)
	m.Vig2:SetWidth(floor(CW * 0.22))
	m.Under = solid(d, "ARTWORK", 0)
	m.Line = solid(d, "ARTWORK", 1)
	m.Start = W.Tex(d, "OVERLAY", "circle", nil, 0)
	m.Start:SetSize(9, 9)
	m.StartHole = W.Tex(d, "OVERLAY", "circle", nil, 1)
	m.StartHole:SetSize(7, 7)
	m.StartHole:SetPoint("CENTER", m.Start, "CENTER", 0, 0)
	m.End = W.Tex(d, "OVERLAY", "circle", nil, 0)
	m.End:SetSize(13, 13)
	m.EndDot = W.Tex(d, "OVERLAY", "circle", nil, 1)
	m.EndDot:SetSize(10, 10)
	m.EndDot:SetPoint("CENTER", m.End, "CENTER", 0, 0)
	m.Place = W.Text(d, "display", "text")
	m.Place:SetPoint("TOPLEFT", d, "TOPLEFT", 14, -12)
	m.Place:SetWidth(floor(CW * 0.45))
	m.Place:SetJustifyH("LEFT")
	m.Place:SetWordWrap(false)
	m.Note = para(d, "note", "textDim", floor(CW * 0.45), 2)
	m.Note:SetPoint("TOPLEFT", m.Place, "BOTTOMLEFT", 0, -4)
	outline(m)
	W.Painter(m, function(self)
		local s1, s2, s3 = Theme.Color("scrim")
		hgrad(self.Vig1, s1, s2, s3, 0.85, s1, s2, s3, 0.35)
		hgrad(self.Vig2, s1, s2, s3, 0.35, s1, s2, s3, 0)
		local sr, sg, sb = Theme.Color("shade")
		self.Under:SetVertexColor(sr, sg, sb, 0.85)
		self.Line:SetVertexColor(Theme.Accent())
		self.Start:SetVertexColor(Theme.Color("text"))
		self.StartHole:SetVertexColor(Theme.Color("sidebar"))
		self.End:SetVertexColor(Theme.Color("onAccent"))
		self.EndDot:SetVertexColor(Theme.Accent())
		paintOutline(self, Theme.Wash("border"))
	end)
	return m
end

-- Where the walk shows when the band stands in for the painting: its shape
-- kept, fitted into the map's right part.
function fitWalk(walk)
	local x0, y0, x1, y1 = walk[1], walk[2], walk[3], walk[4]
	local dx, dy = (x1 - x0) * 1.5, y1 - y0 -- a zone map is about 3:2
	local len = max(1, sqrt(dx * dx + dy * dy))
	local want = min(CW * 0.4, MAP_H * 0.75 * len / max(1, math.abs(dy)))
	local k = min(want / len, CW * 0.4 / max(1, math.abs(dx)), MAP_H * 0.7 / max(1, math.abs(dy)))
	local cx, cy = CW * 0.7, MAP_H * 0.5
	return cx - dx * k / 2, cy - dy * k / 2, cx + dx * k / 2, cy + dy * k / 2
end

function paintMap(m, id, g)
	local walk = g and firstWalk(g)
	local painted = false
	if g then
		local fx, fy
		if walk then
			fx, fy = (walk[1] + walk[3]) / 2, (walk[2] + walk[4]) / 2
		else
			local E = ns.Engine
			if E and E.GuideFocus then fx, fy = E.GuideFocus(id) end
		end
		painted = UI.ZoneArt.Paint(m.Art, g.zone, fx, fy, 3) and true or false
		-- The walk's middle a little right of centre, clear of the readout.
		local cv = painted and m.Art.psCanvas
		if cv and walk and fx then
			painted = UI.ZoneArt.Paint(m.Art, g.zone, fx - (CW * 0.15) / cv[3] * 100, fy, 3) and true or false
		end
	else
		UI.ZoneArt.Paint(m.Art, nil, nil, nil, 3)
	end
	local ax, ay, bx, by
	local cv = painted and m.Art.psCanvas
	if walk and cv then
		ax, ay = cv[1] + walk[1] / 100 * cv[3], cv[2] + walk[2] / 100 * cv[4]
		bx, by = cv[1] + walk[3] / 100 * cv[3], cv[2] + walk[4] / 100 * cv[4]
	elseif walk then
		ax, ay, bx, by = fitWalk(walk)
	else
		-- No walk to show: a neutral line, the shape of a walk.
		ax, ay, bx, by = CW * 0.56, MAP_H * 0.85, CW * 0.91, MAP_H * 0.27
	end
	segment(m.Under, m.Draw, ax, ay, bx, by, 5)
	segment(m.Line, m.Draw, ax, ay, bx, by, 2)
	m.Start:ClearAllPoints()
	m.Start:SetPoint("CENTER", m.Draw, "TOPLEFT", ax, -ay)
	m.End:ClearAllPoints()
	m.End:SetPoint("CENTER", m.Draw, "TOPLEFT", bx, -by)
	m.Place:SetShown(walk ~= nil)
	m.Note:SetShown(walk ~= nil)
	if walk then
		m.Place:SetText(colored("place", walk[5]))
		m.Note:SetText((L["The first walk of %s"]):format(g.title))
	end
end

PAGES[#PAGES + 1] = {
	key = "route",
	shown = function() return full end,
	build = function(P)
		compactHero(P.Hero, L["Route style"], L["How the arrow walks you. Change it any time in Options."])
		local p = P.Body
		p.Map = routeMap(p)
		F.Styles = {}
		for i, st in ipairs(STYLES) do F.Styles[i] = styleRow(p, st) end
		p.Foot = para(p, "note", "textMuted", CW, 3)
		p.Foot:SetText(L["Every style keeps you out of the other faction's towns and away from zones far above your level."])
	end,
	layout = function(P)
		local heroH = layoutCompactHero(P.Hero)
		local p = P.Body
		local id, g = suggested()
		place(p.Map, 0, 0)
		paintMap(p.Map, id, g)
		local y = MAP_H + 10
		for _, c in ipairs(F.Styles) do
			place(c, 0, y)
			y = y + layoutStyleRow(c) + 6
		end
		y = y - 6 + 14
		place(p.Foot, 0, y)
		return heroH, y + p.Foot:GetStringHeight()
	end,
	title = function(P) return P.Hero.Title:GetText() end,
}

-- 4. Start ------------------------------------------------------------------

function startSuggested()
	local G, E = ns.Guides, ns.Engine
	local id = E and E.StartingGuide and E.StartingGuide() or (G and G.Suggest and G.Suggest())
	close()
	if id and E and E.StartGuide then
		E.StartGuide()
	elseif id and E and E.OpenTab then
		E.OpenTab(id)
	elseif id and E and E.SetGuide then
		E.SetGuide(id)
	else
		UI.ShowPicker()
		return
	end
	ns.Fire("SHOW_FRAME")
end

-- A note under a hairline: its glyph, a heading, its line, a link on the
-- right if any.
NOTE_X = 18 + 10

function noteRow(p, glyph, color, heading)
	local n = {}
	n.Rule = W.Divider(p)
	n.Glyph = W.Tex(p, "ARTWORK", glyph, color)
	n.Glyph:SetSize(14, 14)
	n.Head = W.Text(p, "heading", "text")
	n.Head:SetText(heading)
	n.Text = para(p, "note", "textMuted", CW - NOTE_X, 3)
	return n
end

PAGES[#PAGES + 1] = {
	key = "start",
	build = function(P)
		local h = P.Hero
		h:SetHeight(START_H)
		-- The suggested guide's painting fills the hero; without one the
		-- band stands in and the emblem keeps its place on the right.
		h.Art = UI.ZoneArt.Create(h, INNER, START_H, "bg")
		h.Art.psZoom = 1.3
		h.Art:SetPoint("TOPLEFT", h, "TOPLEFT", 0, 0)
		h.Art.Band:ClearAllPoints() -- the stand-in at its own 1:1 height
		h.Art.Band:SetPoint("TOPLEFT", h.Art, "TOPLEFT", 0, 0)
		h.Art.Band:SetPoint("TOPRIGHT", h.Art, "TOPRIGHT", 0, 0)
		h.Art.Band:SetHeight(BAND_H)
		h.Art.Rule:Hide()
		-- The corner the title sits in, darker.
		h.Corner = W.Tex(h.Art.Over, "BACKGROUND", "glow", nil, 1)
		h.Corner:SetSize(INNER * 1.4, START_H * 1.8)
		h.Corner:SetPoint("CENTER", h.Art.Over, "BOTTOMLEFT", 0, 0)
		W.Painter(h.Corner, function(t)
			local r, g, b = Theme.Color("scrim")
			t:SetVertexColor(r, g, b, 0.8)
		end)
		h.Sky = CreateFrame("Frame", nil, h)
		h.Sky:SetAllPoints(h)
		h.Sky:SetFrameLevel(h.Art.Over:GetFrameLevel() + 1)
		h.SkyGround = night(h, h.Sky, START_H, { haze = 0.8, band = 0, bottom = "bg" })
		h.SkyGround.Band:Hide()
		dipper(h.Sky, 400, 52, 0.62, -8)
		emblem(h.Sky, 40, SIDE_X, SIDE_Y, 120, 44)
		h.Text = CreateFrame("Frame", nil, h)
		h.Text:SetAllPoints(h)
		h.Text:SetFrameLevel(h.Sky:GetFrameLevel() + 1)
		h.Title = para(h.Text, "hero", "text", CW, 2)
		h.Chip = W.Chip(h.Text)
		h.For = W.Text(h.Text, "body", "textDim")
		h.For:SetWordWrap(true) -- a second line where the chip leaves too little room
		h.For:SetJustifyH("LEFT")

		local p = P.Body
		p.Pitch = para(p, "body", "textDim", CW, 5)
		-- What Start guide does.
		p.Next = CreateFrame("Frame", nil, p)
		p.Next:SetWidth(CW)
		W.Fill(p.Next, "panel", "BACKGROUND", -6)
		outline(p.Next)
		W.Painter(p.Next, function(self) paintOutline(self, Theme.Wash("divider")) end)
		p.Next.Glyph = W.Tex(p.Next, "ARTWORK", "dart-gold")
		p.Next.Glyph:SetSize(14, 14)
		p.Next.Glyph:SetPoint("TOPLEFT", p.Next, "TOPLEFT", 12, -11)
		p.Next.Text = para(p.Next, "note", "textDim", CW - 24 - 24, 3)
		p.Next.Text:SetPoint("TOPLEFT", p.Next, "TOPLEFT", 12 + 24, -10)

		p.Beta = noteRow(p, "flag", "warning", L["Our routes are still in beta"])
		p.Beta.Chip = W.Chip(p)
		p.Beta.Chip:SetPoint("LEFT", p.Beta.Head, "RIGHT", 8, 0)
		p.Discord = noteRow(p, "discord", "discord", L["Join us on Discord"])
		-- The invite as a link (the scheme left off); a click opens the copy
		-- window holding it, since the game cannot open links.
		F.Discord = W.Link(p, (ns.DiscordURL:gsub("^%a+://", "")), function() UI.ShowDiscord() end)
		p.Discord.Link = F.Discord
		p.Packs = noteRow(p, "guides", "textMuted", L["Community guides"])
		F.Browse = W.Link(p, L["Browse guides"], function()
			close()
			UI.ShowPicker()
		end)
		F.Browse.psTip = nil -- it opens the guide menu, nothing to copy
		p.Packs.Link = F.Browse
	end,
	layout = function(P)
		local h, p = P.Hero, P.Body
		local id, g = suggested()
		-- The hero: the painting, or the band with the emblem and the Dipper.
		local painted = false
		if g then
			local fx, fy
			local E = ns.Engine
			if E and E.GuideFocus then fx, fy = E.GuideFocus(id) end
			painted = UI.ZoneArt.Paint(h.Art, g.zone, fx, fy, 1) and true or false
		else
			UI.ZoneArt.Paint(h.Art, nil, nil, nil, 1)
		end
		h.psPainted = painted
		h.Sky:SetShown(not painted)
		h.Corner:SetShown(painted)
		h.Title:SetWidth(painted and CW or CW - 120)
		h.Title:SetText(g and g.title or L["Choose your first guide"])
		local lv = g and UI.LevelRange(g.minLevel, g.maxLevel)
		local chipW = 0
		if lv then
			chipW = W.SetChip(h.Chip, L["Levels"] .. " " .. lv, "accent") + 10
		else
			h.Chip:Hide()
		end
		h.For:SetText(g and forWhom(g) or L["TuWoW_Leveling has no guide to suggest for where you are."])
		h.For:SetWidth(min(W.TextWidth(h.For) + 1, CW - chipW))
		local factY = START_H - 12 - W.CHIP_H
		h.Chip:ClearAllPoints()
		h.Chip:SetPoint("TOPLEFT", h.Text, "TOPLEFT", EDGE, -factY)
		h.For:ClearAllPoints()
		h.For:SetPoint("LEFT", h.Text, "TOPLEFT", EDGE + chipW, -(factY + W.CHIP_H / 2))
		-- Centred on the chip, a wrapped line reaches above it: the title
		-- keeps its 8px over whichever is higher.
		local lift = max(0, (h.For:GetStringHeight() - W.CHIP_H) / 2)
		h.Title:ClearAllPoints()
		h.Title:SetPoint("TOPLEFT", h.Text, "TOPLEFT", EDGE, -(factY - lift - 8 - h.Title:GetStringHeight()))

		-- The page: the pitch, what Start guide does, the notes.
		local y = 8
		local pitch = g and known(g.pitch)
		p.Pitch:SetShown(pitch ~= nil)
		if pitch then
			p.Pitch:SetText(pitch)
			place(p.Pitch, 0, y)
			y = y + p.Pitch:GetStringHeight() + 12
		end
		p.Next.Text:SetText((L["%s opens the guide window on the right. The arrow points at your first stop."]):format(cmd(g and L["Start guide"] or L["Choose a guide"])))
		place(p.Next, 0, y)
		p.Next:SetHeight(10 + p.Next.Text:GetStringHeight() + 10)
		y = y + p.Next:GetHeight() + 14

		local function lay(n, shown)
			for _, k in ipairs({ "Rule", "Glyph", "Head", "Text", "Link" }) do
				if n[k] then n[k]:SetShown(shown) end
			end
			if not shown then return end
			n.Rule:ClearAllPoints()
			n.Rule:SetPoint("TOPLEFT", p, "TOPLEFT", 0, -y)
			n.Rule:SetPoint("TOPRIGHT", p, "TOPRIGHT", 0, -y)
			local top = y + 10
			place(n.Glyph, 0, top + 2)
			place(n.Head, NOTE_X, top)
			local linkW = n.Link and (n.Link:GetWidth() + 16) or 0
			n.Text:SetWidth(CW - NOTE_X - linkW)
			place(n.Text, NOTE_X, top + n.Head:GetStringHeight() + 3)
			if n.Link then
				n.Link:ClearAllPoints()
				n.Link:SetPoint("TOPRIGHT", p, "TOPRIGHT", 0, -(top - 2))
			end
			y = top + n.Head:GetStringHeight() + 3 + n.Text:GetStringHeight() + 10
		end
		local beta = ns.routesBeta and true or false
		p.Beta.Text:SetText((L["Played to the end in tests, but not yet by players. If a step is wrong, press %s in the guide window and tell us on Discord."]):format(cmd(L["Skip"])))
		lay(p.Beta, beta)
		if beta then W.SetChip(p.Beta.Chip, string.upper(L["Beta"]), "warning") else p.Beta.Chip:Hide() end
		p.Discord.Text:SetText(L["Feedback, bug reports and news."])
		lay(p.Discord, true)
		p.Packs.Text:SetText(L["Guides by other players, installed like any addon. They show under Community guides in the guide list."])
		lay(p.Packs, true)
		setChevronText(F.Start, g and L["Start guide"] or L["Choose a guide"])
		return START_H, y - 10
	end,
	title = function(P) return P.Hero.Title:GetText() end,
}

-- The pages shown now, in order.
function pageList()
	local out = {}
	for _, pg in ipairs(PAGES) do
		if not pg.shown or pg.shown() then out[#out + 1] = pg end
	end
	return out
end

---------------------------------------------------------------------------
-- The window
---------------------------------------------------------------------------

render = render -- forward

-- The hero settles 8px up as it fades in (on open).
function settle(P)
	Anim.Anchor(P.Hero, "TOPLEFT", P, "TOPLEFT", 0, 0)
	Anim.To(P.Hero, "alpha", 0, 1, Anim.BASE, "out")
	Anim.To(P.Hero, "offset", -8, 0, Anim.BASE, "out")
end

function go(delta)
	local list = pageList()
	local at = 1
	for i, pg in ipairs(list) do if pg.key == current then at = i end end
	local to = at + delta
	if to > #list then return close() end
	if to < 1 then to = 1 end
	if list[to].key == current then return end
	local from = current
	current = list[to].key
	render(from)
end

DOT, DOT_ON, DOT_GAP = 4, 16, 6

function drag(frame)
	frame:EnableMouse(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", function() F:StartMoving() end)
	frame:SetScript("OnDragStop", function() F:StopMovingOrSizing() end)
end

function build()
	F = CreateFrame("Frame", "TuWoW_LevelingWelcome", UIParent)
	F:SetFrameStrata("DIALOG")
	F:SetToplevel(true)
	F:SetClampedToScreen(true)
	F:EnableMouse(true)
	F:SetMovable(true)
	F:SetWidth(WIDTH)
	F:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
	F:Hide()
	Theme.Skin(F, "window")
	drag(F)

	-- Over the pages: the ✕ (with a dark disc of its own on a painting).
	local top = CreateFrame("Frame", nil, F)
	top:SetPoint("TOPLEFT", F, "TOPLEFT", 0, 0)
	top:SetPoint("TOPRIGHT", F, "TOPRIGHT", 0, 0)
	top:SetHeight(52)
	top:SetFrameLevel(F:GetFrameLevel() + 40)
	F.Close = W.IconButton(top, "close", 28, L["Close"], close, 12)
	F.Close:SetPoint("TOPRIGHT", F, "TOPRIGHT", -12, -12)
	F.CloseScrim = W.Pill(top, 28, 28)
	F.CloseScrim:SetPoint("CENTER", F.Close, "CENTER", 0, 0)
	W.Painter(F.CloseScrim, function(s) local r, g, b = Theme.Color("scrim"); s:SetColor(r, g, b, 0.6) end)
	F.CloseScrim:SetFrameLevel(top:GetFrameLevel())
	F.Close:SetFrameLevel(top:GetFrameLevel() + 2)
	F.CloseScrim:Hide()

	-- The footer: Skip (Back on the last page) on the left, the step dots
	-- in the middle, Back and Next (Start guide on the last page) on the
	-- right.
	local foot = CreateFrame("Frame", nil, F)
	foot:SetPoint("BOTTOMLEFT", F, "BOTTOMLEFT", 1, 1)
	foot:SetPoint("BOTTOMRIGHT", F, "BOTTOMRIGHT", -1, 1)
	foot:SetHeight(FOOT_H)
	foot:SetFrameLevel(F:GetFrameLevel() + 30)
	W.Fill(foot, "footer")
	local rule = W.Divider(foot)
	rule:SetPoint("TOPLEFT", foot, "TOPLEFT", 0, 0)
	rule:SetPoint("TOPRIGHT", foot, "TOPRIGHT", 0, 0)
	F.Foot = foot
	F.Skip = W.Button(foot, L["Skip"], close, { ghost = true })
	F.Skip:SetPoint("LEFT", foot, "LEFT", FOOT_PAD, 0)
	F.Next = W.Button(foot, L["Next"], function() go(1) end, { primary = true })
	chevron(F.Next)
	setChevronText(F.Next, L["Next"])
	F.Next:SetPoint("RIGHT", foot, "RIGHT", -FOOT_PAD, 0)
	F.Back = W.Button(foot, L["Back"], function() go(-1) end)
	F.Start = W.Button(foot, L["Start guide"], startSuggested, { primary = true })
	chevron(F.Start)
	F.Start:SetPoint("RIGHT", foot, "RIGHT", -FOOT_PAD, 0)
	F.Dots = CreateFrame("Frame", nil, foot)
	F.Dots:SetHeight(DOT)
	F.Dots:SetPoint("CENTER", foot, "CENTER", 0, 0)
	F.Dots.list = {}

	-- The pages: each its hero and the page under it on the 32 edge.
	F.pages = {}
	for _, pg in ipairs(PAGES) do
		local P = CreateFrame("Frame", nil, F)
		P:SetWidth(INNER)
		P:SetHeight(1)
		Anim.Anchor(P, "TOPLEFT", F, "TOPLEFT", 1, -1)
		P:Hide()
		local h = CreateFrame("Frame", nil, P)
		h:SetSize(INNER, HELLO_H)
		Anim.Anchor(h, "TOPLEFT", P, "TOPLEFT", 0, 0)
		if h.SetClipsChildren then h:SetClipsChildren(true) end
		drag(h)
		local b = CreateFrame("Frame", nil, P)
		b:SetWidth(CW)
		b:SetHeight(1)
		P.Hero, P.Body, P.psKey = h, b, pg.key
		pg.build(P)
		F.pages[pg.key] = P
	end
	if W.Rim then F.Rim = W.Rim(F) end

	F:SetScript("OnShow", function(self)
		Anim.To(self, "alpha", 0, 1, Anim.BASE, "out")
		settle(F.pages[current])
	end)
	-- Any close marks it seen, for the character and the account; stepping
	-- aside for the route choice does not, nor does a cinematic closing it
	-- (it comes back after the cinematic, on the same page).
	F:SetScript("OnHide", function()
		if stepping then return end
		if inCinematic() then
			pending = "asked"
			return
		end
		ns.CharState().welcomeSeen = SEEN
		ns.DB().welcomeSeen = SEEN
		pending = nil
	end)
	ns.CloseOnEscape("TuWoW_LevelingWelcome")
	WEL.frame = F
	-- A gamepad (UI/Gamepad.lua): LB / RB turn the pages, A on Next by default.
	-- Shown by itself, it waits for the player before it takes the gamepad.
	if ns.Gamepad and ns.Gamepad.Register then
		ns.Gamepad.Register(F, {
			unasked = function() return unasked end,
			initial = function(rows)
				for i, w in ipairs(rows) do if w == F.Next or w == F.Start then return i end end
			end,
			prevTab = function() go(-1) end,
			nextTab = function()
				local _, at, count = WEL.Page()
				if at and count and at < count then go(1) end
			end,
			tabsLabel = L["Pages"],
			-- A colour scheme's card or a route style's row: Y puts the
			-- default (Dusk, Balanced) back.
			reset = function(w)
				if w and (w.psValue or w.psStyle) then
					w:Click("RightButton")
					return true
				end
			end,
			resetLabel = function(w) return (w.psValue or w.psStyle) and L["Default"] or nil end,
		})
	end
end

-- The step dots: the current one a 16x4 accent capsule, those done muted,
-- the rest faint. They show where you are; they are not buttons.
function paintDots(at, n, animate)
	local list = F.Dots.list
	for i = 1, max(n, #list) do
		local d = list[i]
		if i <= n then
			if not d then
				d = W.Pill(F.Dots, DOT, DOT)
				list[i] = d
			end
			local on = i == at
			if on then
				local r, g, b = Theme.Accent()
				d:SetColor(r, g, b, 1)
			elseif i < at then
				local r, g, b = Theme.Color("textMuted")
				d:SetColor(r, g, b, 1)
			else
				local r, g, b = Theme.Color("ink")
				d:SetColor(r, g, b, 0.22)
			end
			local w = on and DOT_ON or DOT
			if animate and d.psW and d.psW ~= w then
				Anim.To(d, "width", d.psW, w, Anim.FAST, "out")
			else
				d:SetWidth(w)
			end
			d.psW = w
			d:Show()
		elseif d then
			d:Hide()
		end
	end
	local total, x = 0, 0
	for i = 1, n do total = total + (i == at and DOT_ON or DOT) + (i > 1 and DOT_GAP or 0) end
	F.Dots:SetWidth(total)
	for i = 1, n do
		list[i]:ClearAllPoints()
		list[i]:SetPoint("LEFT", F.Dots, "LEFT", x, 0)
		x = x + (i == at and DOT_ON or DOT) + DOT_GAP
	end
end

-- Lays every page shown out (the window takes the tallest) and shows the
-- current one; `from`: the page left, faded out.
function render(from)
	local list = pageList()
	local at
	for i, pg in ipairs(list) do if pg.key == current then at = i end end
	if not at then
		at = 1
		current = list[1].key
	end
	local tallest = 0
	for _, pg in ipairs(list) do
		local P = F.pages[pg.key]
		local heroH, bodyH = pg.layout(P)
		P.Hero:SetHeight(heroH)
		P.Body:ClearAllPoints()
		P.Body:SetPoint("TOPLEFT", P, "TOPLEFT", EDGE, -heroH)
		P.Body:SetHeight(max(1, bodyH))
		tallest = max(tallest, heroH + bodyH + BOTTOM)
	end
	tallest = math.ceil(tallest)
	for _, pg in ipairs(list) do F.pages[pg.key]:SetHeight(tallest) end
	F:SetHeight(1 + tallest + FOOT_H + 1)
	if F.Rim and W.LayoutRim then W.LayoutRim(F) end

	local animate = from ~= nil and F:IsShown()
	for key, P in pairs(F.pages) do
		if key == current then
			P:Show()
			P.Hero:SetAlpha(1)
			if animate then
				Anim.To(P, "alpha", 0, 1, Anim.BASE, "out")
				Anim.To(P, "offset", -6, 0, Anim.BASE, "out")
			else
				Anim.Stop(P, "offset")
				P:SetAlpha(1)
			end
		elseif animate and key == from then
			Anim.To(P, "alpha", P:GetAlpha(), 0, OUT, "out", function(o) if o.psKey ~= current then o:Hide() end end)
		else
			P:Hide()
		end
	end
	F.CloseScrim:SetShown(current == "start" and F.pages.start.Hero.psPainted or false)

	local last = at == #list
	paintDots(at, #list, animate)
	F.Skip:SetShown(not last)
	F.Next:SetShown(not last)
	F.Start:SetShown(last)
	-- Back sits beside Next; on the last page it takes Skip's place, so
	-- Start guide keeps the right.
	F.Back:SetShown(at > 1)
	F.Back:ClearAllPoints()
	if last then
		F.Back:SetPoint("LEFT", F.Foot, "LEFT", FOOT_PAD, 0)
	else
		F.Back:SetPoint("RIGHT", F.Next, "LEFT", -8, 0)
	end
	-- The dots stay centred unless the buttons come within 12px; then they
	-- centre in the room between them.
	local leftW = (last and F.Back or F.Skip):GetWidth()
	local rightW = last and F.Start:GetWidth() or (F.Next:GetWidth() + (at > 1 and (8 + F.Back:GetWidth()) or 0))
	local lo, hi = FOOT_PAD + leftW + 12, INNER - FOOT_PAD - rightW - 12
	local dw, mid = F.Dots:GetWidth(), INNER / 2
	if mid - dw / 2 < lo or mid + dw / 2 > hi then mid = (lo + hi) / 2 end
	F.Dots:ClearAllPoints()
	F.Dots:SetPoint("CENTER", F.Foot, "LEFT", mid, 0)
	F.psAt, F.psCount = at, #list
end

try = try -- forward; defined below

-- Wait for the route choice to close, then try again.
function afterRouteChoice()
	local RC = UI.RouteChoice
	if not hookedRC and RC and RC.frame then
		hookedRC = true
		RC.frame:HookScript("OnHide", function() try() end)
	end
end

-- Open now on the current page, or as soon as combat and the route choice
-- allow. A showing at login starts on the first page, with setup and the
-- route style while the account has not had its welcome. deferred: opened by
-- itself (at login, or after the fight or the route choice that held it
-- back), not on request.
function open(why, deferred)
	if inCombat() or inCinematic() then
		pending = pending == "asked" and "asked" or why
		return
	end
	if routeChoiceUp() then
		pending = pending == "asked" and "asked" or why
		afterRouteChoice()
		return
	end
	pending = nil
	if why == "login" then
		ns.CharState().welcomeSeen = SEEN -- shown: a reload or logout from here does not repeat it
		full = not accountSeen()
		current = PAGES[1].key
	end
	if not F then build() end
	unasked = deferred and true or false
	render()
	F:Show()
	F:Raise()
end

-- Open the welcome at `page` (a page key: "welcome", "setup", "route",
-- "start"; or its number among the pages shown), the first by default, with
-- every page. Opens even when already seen (About, /polestar welcome, the
-- preview).
function WEL.Show(page)
	full = true
	local list = pageList()
	current = list[1].key
	if type(page) == "number" and list[page] then
		current = list[page].key
	elseif type(page) == "string" then
		for _, pg in ipairs(list) do if pg.key == page then current = page end end
	end
	open("asked")
end

function WEL.Hide()
	pending = nil
	if F then F:Hide() end
end

function WEL.IsShown()
	return F ~= nil and F:IsShown()
end

-- The page shown: its key, its place and the number of pages, its title.
function WEL.Page()
	if not F then return nil end
	local title
	for _, pg in ipairs(PAGES) do
		if pg.key == current then title = pg.title(F.pages[current]) end
	end
	return current, F.psAt, F.psCount, title
end

function try()
	if pending == "asked" or (pending and not seen()) then open(pending, true) end
end

-- A route choice opened over the welcome: step aside, come back after it
-- with the same pages.
function yieldToRouteChoice()
	if not (F and F:IsShown() and routeChoiceUp()) then return end
	stepping = true
	F:Hide()
	stepping = nil
	pending = "asked"
	afterRouteChoice()
end

-- The character's flag, set as the addon loads: due (0) for a new character,
-- seen for one Polestar already knew, so only new characters get it unasked.
ns.OnInit(function()
	local s = ns.CharState()
	if s.welcomeSeen == nil then s.welcomeSeen = ns.IsNewCharacter() and 0 or SEEN end
end)

ns.OnLogin(function()
	local db = ns.DB()
	db.betaNoticeSeen = nil -- the beta notice's flag; the welcome has its own
	if seen() then return end
	pending = "login"
	if C_Timer and C_Timer.After then ns.After(DELAY, try) else try() end
end)

-- RouteChoice.lua registers first, so its window is already up (or still
-- waiting out combat) when these run.
ns.RegisterEvent("PLAYER_REGEN_ENABLED", function()
	yieldToRouteChoice()
	try()
end)
-- After a cinematic, once the UI is back.
ns.RegisterEvent("CINEMATIC_STOP", function()
	if C_Timer and C_Timer.After then ns.After(1, try) else try() end
end)
ns.On("ROUTE_CHOICE", yieldToRouteChoice)
ns.On("SHOW_WELCOME", function(page) WEL.Show(page) end)

-- The quest switch stands for two settings; the widgets refresh it for the
-- one it is bound to (behavior.autoAccept), this for the other. A route
-- style set anywhere (the rows, Options) moves the rows' pick. A theme
-- change repaints the dots (the cards repaint with the theme).
ns.On("SETTING_CHANGED", function(path)
	if path == "behavior.autoTurnin" and F and F.AutoQuest then F.AutoQuest:Refresh() end
	if (path == "nav.routeStyle" or path == "nav" or path == "") and F and F.Styles then
		for _, c in ipairs(F.Styles) do paintStyle(c) end
	end
end)
Theme.OnChanged(function()
	if F and F.psAt then paintDots(F.psAt, F.psCount, false) end
end)
