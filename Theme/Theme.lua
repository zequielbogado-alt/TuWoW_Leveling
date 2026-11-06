-- Theme sizes, pixel lines, skins, paints, and change notifications
local ADDON, ns = ...
setfenv(1, ns._themeEnv)

-- Sizes (units) that change with the skin. Each module keeps the house
-- style's value as its own constant and asks Theme.Metric(key, house): a
-- skin's value when it has one (DIRECTION_B_HALO.md §3; Blizzard takes
-- Halo's layout, DIRECTION_A_BLIZZARD.md §4, and its own controls, §3).
---------------------------------------------------------------------------

METRICS = {
	halo = {
		row = 34, menuRow = 26, menuPad = 6, menuWidth = 260, servicesWidth = 290,
		buttonH = 28, buttonPad = 14, dropdownW = 166, dropdownH = 26, chevron = 10, chevronInset = 8,
		sliderW = 112, valueW = 56, checkbox = 16,
		shellW = 930, shellH = 690, shellSidebar = 200, shellTabs = 32, shellPad = 28, shellFooter = 56,
		pickerW = 1100, pickerH = 640, pickerDetail = 380, pickerSidebar = 230,
		guidePad = 12, guideIconGap = 9, guideTabs = 28, guideNav = 32, guideNavBtn = 22, guideNavIcon = 12,
		guideIconBtnW = 24, guideIconBtnH = 22, guideIcon = 13, guideRow = 22, guideCheck = 16,
		guideProgress = 3, guideGrip = 8, guideFoot = 17, guideUpRow = 20, guideUpToggle = 26, guideNavGap = 2,
	},
	hearth = {
		row = 28, menuRow = 22, menuPad = 6, menuWidth = 260, servicesWidth = 290,
		buttonH = 22, buttonPad = 14, dropdownW = 170, dropdownH = 24, chevron = 10, chevronInset = 6,
		sliderW = 120, valueW = 56, checkbox = 18,
		shellW = 930, shellH = 690, shellSidebar = 200, shellTabs = 32, shellPad = 28, shellFooter = 56,
		pickerW = 1100, pickerH = 640, pickerDetail = 380, pickerSidebar = 230,
		guidePad = 12, guideIconGap = 9, guideTabs = 28, guideNav = 32, guideNavBtn = 20, guideNavIcon = 12,
		guideIconBtnW = 20, guideIconBtnH = 20, guideIcon = 11, guideRow = 22, guideCheck = 15,
		guideProgress = 14, guideGrip = 8, guideFoot = 28, guideUpRow = 20, guideUpToggle = 26, guideNavGap = 4,
	},
}
-- The game's looks take Hearth's sizes and type; WoW Forever's guide window
-- keeps its rows and the lit goal clear of its bronze border (#306).
for _, k in ipairs({ "forever", "blizzard", "classic" }) do
	METRICS[k] = METRICS.hearth
	SKIN_ROLES[k] = SKIN_ROLES.hearth
end
METRICS.forever = setmetatable({ guidePad = 18, guideLitInset = 10, guideRowPad = 4, guideCheckIn = 10, guideCheckMiddle = true }, { __index = METRICS.hearth })
Theme.METRICS = METRICS

function Theme.Metric(key, house)
	local m = METRICS[Theme.SkinKey()]
	local v = m and m[key]
	if v == nil then return house end
	return v
end

-- Inter and Fira Sans cover Latin, Greek and Cyrillic; these locales need
-- the client font.
CJK = { zhCN = true, zhTW = true, koKR = true }

-- The face in use: "game", "inter" or "fira" (ui.font; "skin" follows the skin).
function Theme.FontKey()
	local f = get("ui.font")
	local skin = Theme.SkinKey()
	-- No setting at all (a Nav-only load, before UI registers its defaults):
	-- Inter in the house style, as before skins.
	if f == nil and skin == "polestar" then return "inter" end
	if f == nil or f == "skin" or not (f == "game" or FAMILIES[f]) then f = SKIN_FONT[skin] end
	return f
end

-- The text size against every role's own (ui.textSize, 0.8 to 1.4): the
-- window scale leaves the text as it is, this only the text.
function Theme.TextScale()
	local v = tonumber(get("ui.textSize")) or 1
	return math.max(0.8, math.min(1.4, v))
end

function Theme.FontSpec(role)
	local own = SKIN_ROLES[Theme.SkinKey()]
	local spec = (own and own[role]) or ROLES[role] or ROLES.body
	local size = math.floor(spec[2] * Theme.TextScale() * 2 + 0.5) / 2
	if Theme.FollowsEllesmereFont() and S.GetFont then
		local ok, path, flag = pcall(S.GetFont)
		if ok and type(path) == "string" then return path, size, flag or "" end
	end
	local locale = GetLocale and GetLocale()
	local face = Theme.FontKey()
	-- The ruRU client font (FRIZQT___CYR) has no middle dot, which the UI and
	-- guide text use as a separator; Fira Sans has it and covers Cyrillic.
	-- Only when the skin picks the face: choosing "the game's" font keeps it.
	local f = get("ui.font")
	if face == "game" and locale == "ruRU" and (f == nil or f == "skin") then face = "fira" end
	if face == "game" or CJK[locale] then
		return STANDARD_TEXT_FONT or "Fonts\\FRIZQT__.TTF", size, ""
	end
	return FAMILIES[face][spec[1]], size, ""
end

-- Polestar's faces, and a Latin or Cyrillic client's own font, have no
-- Hangul, kana or Chinese characters, and a font set by its file keeps none
-- of the game's per-script fallback, so a Chinese name came out as boxes
-- (#353). Text with them takes the client's font for that script, as the
-- game's own font families name it (Blizzard_Fonts_Shared/Shared/Fonts.xml),
-- unless the client's own locale already draws that script. -> path | nil
-- UTF-8 lead bytes E3-E9: U+3000-U+9FFF (CJK punctuation, kana, Chinese);
-- EA-ED: U+A000-U+DFFF (Hangul syllables).
SCRIPT_FONTS = {
	hangul = { path = "Fonts\\2002.TTF", locales = { koKR = true } },
	han = { path = "Fonts\\ARKai_T.ttf", locales = { zhCN = true, zhTW = true } },
}
function Theme.ScriptFont(text)
	if type(text) ~= "string" then return nil end
	local at = text:find("[\227-\237]")
	if not at then return nil end
	local b = text:byte(at)
	local script = SCRIPT_FONTS[b >= 234 and "hangul" or "han"]
	local locale = GetLocale and GetLocale()
	if script.locales[locale] then return nil end
	return script.path
end

fonted = setmetatable({}, { __mode = "k" }) -- fontString -> role
outlined = setmetatable({}, { __mode = "k" }) -- fontString -> true
flat = setmetatable({}, { __mode = "k" }) -- fontString -> true: no drop shadow
scripted = setmetatable({}, { __mode = "k" }) -- fontString -> its text's script font, or false

-- Text shadows: the house style's soft 1, -1; Halo's 1 down at 90 % black
-- (DIRECTION_B_HALO.md §2); Blizzard's hard 1, -1 black, as the game's.
HARD = { 1, -1, 1 }
SKIN_SHADOW = { halo = { 0, -1, 0.9 }, hearth = HARD, forever = HARD, blizzard = HARD, classic = HARD }

function paintShadow(fs)
	if not fs.SetShadowOffset then return end
	local r, g, b = Theme.Color("shade")
	local own = SKIN_SHADOW[Theme.SkinKey()]
	if own then
		fs:SetShadowOffset(own[1], own[2])
		fs:SetShadowColor(0, 0, 0, flat[fs] and 0 or own[3])
		return
	end
	fs:SetShadowOffset(1, -1)
	fs:SetShadowColor(r, g, b, flat[fs] and 0 or (outlined[fs] and 1 or 0.6))
end

-- Forever leaves a string blank after a new font until its text changes
-- (the options' values and tiles after a skin change): set it again.
function textAgain(fs)
	local text = fs.GetText and fs:GetText()
	if text and text ~= "" then
		fs:SetText(text .. " ")
		fs:SetText(text)
	end
end

retextQueued = false

function paintFont(fs, role)
	local path, size, flags = Theme.FontSpec(role)
	local text = fs.GetText and fs:GetText()
	local script = Theme.ScriptFont(text)
	scripted[fs] = script or false
	if script then path = script end
	if outlined[fs] then flags = "OUTLINE" end
	-- Dark ink on an accent fill takes no outline either: a font that follows
	-- EllesmereUI's brings its OUTLINE, and black round dark glyphs on a
	-- bright accent smears them (#521). MONOCHROME and the like stay.
	if flat[fs] and flags then flags = flags:gsub("THICKOUTLINE", ""):gsub("OUTLINE", ""):gsub("^,+", ""):gsub(",+$", ""):gsub(",,+", ",") end
	if not fs:SetFont(path, size, flags) then
		fs:SetFont(STANDARD_TEXT_FONT or "Fonts\\FRIZQT__.TTF", size, flags)
	end
	paintShadow(fs)
	textAgain(fs)
end

-- New text in another script than the font drawn (a name in Chinese, #353):
-- the string is painted again for it.
function retext(fs)
	local role = fonted[fs]
	if role and (Theme.ScriptFont(fs:GetText()) or false) ~= scripted[fs] then paintFont(fs, role) end
end

function Theme.Font(fs, role)
	if type(fs) ~= "table" or not fs.SetFont then return fs end
	role = ROLES[role] and role or "body"
	if fonted[fs] == nil and hooksecurefunc and fs.GetText then
		hooksecurefunc(fs, "SetText", retext)
		if fs.SetFormattedText then hooksecurefunc(fs, "SetFormattedText", retext) end
	end
	fonted[fs] = role
	paintFont(fs, role)
	return fs
end

-- Outlined text with a hard shadow, legible over any terrain (the guide
-- window's transparent mode). Survives theme changes.
function Theme.SetOutline(fs, on)
	outlined[fs] = on and true or nil
	if fonted[fs] then paintFont(fs, fonted[fs]) end
end

-- Dark ink on an accent fill (a primary button's label) takes no drop
-- shadow and no outline: under dark glyphs on a light ground they read as a
-- smear.
function Theme.SetShadow(fs, on)
	local was = flat[fs]
	flat[fs] = (not on) or nil
	if fonted[fs] and was ~= flat[fs] then paintFont(fs, fonted[fs]) else paintShadow(fs) end
end

---------------------------------------------------------------------------
-- Pixel-exact lines
---------------------------------------------------------------------------

-- One physical pixel in a region's coordinate space.
function Theme.Pixel(region)
	local scale = region and region.GetEffectiveScale and region:GetEffectiveScale() or 1
	if PixelUtil and PixelUtil.GetNearestPixelSize then
		local ok, v = pcall(PixelUtil.GetNearestPixelSize, 1, scale, 1)
		if ok and v and v > 0 then return v end
	end
	return 1
end

-- A border as four edge textures, kept on frame.psBorder: one physical
-- pixel by default; `size` pixels grow outward from that pixel (a window's
-- chosen thickness), so the frame's own children never cover it.
function Theme.Border(frame, r, g, b, a, layer, size)
	local e = frame.psBorder
	if not e then
		e = {}
		for i = 1, 4 do
			local t = frame:CreateTexture(nil, layer or "BORDER", nil, 7)
			t:SetTexture(Theme.Media("white"))
			e[i] = t
		end
		frame.psBorder = e
	end
	local px = Theme.Pixel(frame)
	local n = (type(size) == "number" and size > 1) and floor(size + 0.5) or 1
	local w, o = px * n, px * (n - 1)
	local top, bottom, left, right = e[1], e[2], e[3], e[4]
	top:ClearAllPoints(); top:SetPoint("TOPLEFT", frame, "TOPLEFT", -o, o); top:SetPoint("TOPRIGHT", frame, "TOPRIGHT", o, o); top:SetHeight(w)
	bottom:ClearAllPoints(); bottom:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", -o, -o); bottom:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", o, -o); bottom:SetHeight(w)
	left:ClearAllPoints(); left:SetPoint("TOPLEFT", top, "BOTTOMLEFT", 0, 0); left:SetPoint("BOTTOMLEFT", bottom, "TOPLEFT", 0, 0); left:SetWidth(w)
	right:ClearAllPoints(); right:SetPoint("TOPRIGHT", top, "BOTTOMRIGHT", 0, 0); right:SetPoint("BOTTOMRIGHT", bottom, "TOPRIGHT", 0, 0); right:SetWidth(w)
	for i = 1, 4 do
		e[i]:SetVertexColor(r, g, b, a)
		e[i]:Show()
	end
	frame.psBorderSize = n
	return e
end

function hideBorder(frame)
	local e = frame.psBorder
	if e then for i = 1, 4 do e[i]:Hide() end end
end

-- A soft drop shadow around a window: nine slices of Media/UI/shadow, offset
-- down a little so it reads as depth, not a halo.
SHADOW_OUT = 16
SHADOW_DROP = 4
SLICE = 20 / 64
function shadowFor(frame)
	local s = frame.psShadow
	if s then return s end
	s = CreateFrame("Frame", nil, frame)
	s:SetFrameLevel(math.max(0, frame:GetFrameLevel() - 1))
	s:SetPoint("TOPLEFT", frame, "TOPLEFT", -SHADOW_OUT, SHADOW_OUT - SHADOW_DROP)
	s:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", SHADOW_OUT, -SHADOW_OUT - SHADOW_DROP)
	local tex = Theme.Media("shadow")
	local parts = {}
	local spec = {
		{ "TOPLEFT", 0, 0, SLICE, SLICE },
		{ "TOPRIGHT", 1 - SLICE, 0, 1, SLICE },
		{ "BOTTOMLEFT", 0, 1 - SLICE, SLICE, 1 },
		{ "BOTTOMRIGHT", 1 - SLICE, 1 - SLICE, 1, 1 },
	}
	local C = SHADOW_OUT + 6
	for i = 1, 4 do
		local t = s:CreateTexture(nil, "BACKGROUND", nil, -8)
		t:SetTexture(tex)
		t:SetTexCoord(spec[i][2], spec[i][4], spec[i][3], spec[i][5])
		t:SetSize(C, C)
		t:SetPoint(spec[i][1], s, spec[i][1], 0, 0)
		parts[i] = t
	end
	local function edge(a, b, ul, ur, vt, vb)
		local t = s:CreateTexture(nil, "BACKGROUND", nil, -8)
		t:SetTexture(tex)
		t:SetTexCoord(ul, ur, vt, vb)
		t:SetPoint(a[1], a[2], a[3], 0, 0)
		t:SetPoint(b[1], b[2], b[3], 0, 0)
		parts[#parts + 1] = t
	end
	edge({ "TOPLEFT", parts[1], "TOPRIGHT" }, { "BOTTOMRIGHT", parts[2], "BOTTOMLEFT" }, SLICE, 1 - SLICE, 0, SLICE)
	edge({ "TOPLEFT", parts[3], "TOPRIGHT" }, { "BOTTOMRIGHT", parts[4], "BOTTOMLEFT" }, SLICE, 1 - SLICE, 1 - SLICE, 1)
	edge({ "TOPLEFT", parts[1], "BOTTOMLEFT" }, { "BOTTOMRIGHT", parts[3], "TOPRIGHT" }, 0, SLICE, SLICE, 1 - SLICE)
	edge({ "TOPLEFT", parts[2], "BOTTOMLEFT" }, { "BOTTOMRIGHT", parts[4], "TOPRIGHT" }, 1 - SLICE, 1, SLICE, 1 - SLICE)
	s.parts = parts
	frame.psShadow = s
	return s
end

---------------------------------------------------------------------------
-- Skins (always the house style; see the header comment)
---------------------------------------------------------------------------

skinned = setmetatable({}, { __mode = "k" }) -- frame -> kind

function fill(frame, layer, sub)
	local d = frame.psSkin
	if not d.bg then
		d.bg = frame:CreateTexture(nil, layer or "BACKGROUND", nil, sub or -7)
		d.bg:SetTexture(Theme.Media("white"))
		d.bg:SetAllPoints(frame)
	end
	d.bg:Show()
	return d.bg
end

function hoverWash(frame)
	local d = frame.psSkin
	if not d.hover then
		d.hover = frame:CreateTexture(nil, "HIGHLIGHT")
		d.hover:SetTexture(Theme.Media("white"))
		d.hover:SetAllPoints(frame)
	end
	d.hover:SetVertexColor(Theme.Wash("hover"))
	return d.hover
end

function glyph(frame, name, size, layer)
	local d = frame.psSkin
	if not d.glyph then
		d.glyph = frame:CreateTexture(nil, layer or "ARTWORK")
		d.glyph:SetPoint("CENTER", frame, "CENTER", 0, 0)
	end
	d.glyph:SetTexture(Theme.Media(name))
	d.glyph:SetSize(size, size)
	d.glyph:Show()
	return d.glyph
end

-- A skin can be turned off on a frame (the transparent guide window):
-- frame.psBare = true hides every fill, border and shadow it painted.
function bare(f)
	local d = f.psSkin
	if d.bg then d.bg:Hide() end
	hideBorder(f)
	if f.psShadow then f.psShadow:Hide() end
	if d.veil then d.veil:Hide() end
	if d.nine then for _, n in pairs(d.nine) do if n then n:Hide() end end end
end

HOUSE_PAINT = {
	-- Every window: the ground at the player's opacity, the window border
	-- (Theme.WindowBorder: on or off, its colour and thickness) and the
	-- drop shadow unless the player turned it off.
	window = function(f)
		if f.psBare then return bare(f) end
		local r, g, b = Theme.Color("bg")
		local alpha = f.psBgAlpha or Theme.GroundAlpha()
		fill(f):SetVertexColor(r, g, b, alpha)
		local shown, size = Theme.WindowBorder()
		if shown then
			local br, bg, bb, ba = Theme.Color("windowBorder")
			Theme.Border(f, br, bg, bb, ba, nil, size)
		else
			hideBorder(f)
		end
		if get("ui.shadow") == false then
			if f.psShadow then f.psShadow:Hide() end
			return
		end
		local s = shadowFor(f)
		local sr, sg, sb, sa = Theme.Color("shadow")
		for i = 1, #s.parts do s.parts[i]:SetVertexColor(sr, sg, sb, sa * math.min(1, alpha + 0.1)) end
		s:Show()
	end,
	panel = function(f)
		if f.psBare then return bare(f) end
		fill(f):SetVertexColor(Theme.Color("panel"))
		Theme.Border(f, Theme.Color("border"))
	end,
	sidebar = function(f)
		fill(f):SetVertexColor(Theme.Color("sidebar"))
	end,
	inset = function(f)
		local r, g, b = Theme.Color("shade")
		fill(f):SetVertexColor(r, g, b, 0.25)
		hideBorder(f)
	end,
	button = function(f)
		fill(f):SetVertexColor(Theme.Color("panelAlt"))
		Theme.Border(f, Theme.Color("border"))
		hoverWash(f)
	end,
	dropdown = function(f)
		fill(f):SetVertexColor(Theme.Color("panelAlt"))
		Theme.Border(f, Theme.Color("border"))
		hoverWash(f)
	end,
	-- An action tile (W.ActionTile): a button's ground in the house style.
	tile = function(f)
		fill(f):SetVertexColor(Theme.Color("panelAlt"))
		Theme.Border(f, Theme.Color("border"))
		hoverWash(f)
	end,
	editbox = function(f)
		local r, g, b = Theme.Color("shade")
		fill(f):SetVertexColor(r, g, b, 0.35)
		if f.psFocused then
			local r, g, b = Theme.Accent()
			Theme.Border(f, r, g, b, 0.8)
		else
			Theme.Border(f, Theme.Color("border"))
		end
	end,
	checkbox = function(f)
		local d = f.psSkin
		if not d.box then
			d.box = CreateFrame("Frame", nil, f)
			d.box:SetPoint("CENTER", f, "CENTER", 0, 0)
			d.box:SetSize(14, 14)
			d.box.psSkin = {}
			if f.SetCheckedTexture then
				local check = f:CreateTexture(nil, "OVERLAY")
				check:SetTexture(Theme.Media("check"))
				check:SetSize(12, 12)
				check:SetPoint("CENTER", f, "CENTER", 0, 0)
				f:SetCheckedTexture(check)
				d.check = check
			end
		end
		local r, g, b = Theme.Color("shade")
		fill(d.box):SetVertexColor(r, g, b, 0.35)
		Theme.Border(d.box, Theme.Wash("box"))
		if d.check then d.check:SetVertexColor(Theme.Accent()) end
		d.box:Show()
		hoverWash(f)
	end,
	tab = function(f)
		local d = f.psSkin
		if not d.bar then
			d.bar = f:CreateTexture(nil, "OVERLAY")
			d.bar:SetTexture(Theme.Media("white"))
			d.bar:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", 0, 0)
			d.bar:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", 0, 0)
		end
		d.bar:SetHeight(2)
		d.bar:SetVertexColor(Theme.Accent())
		d.bar:SetShown(f.psSelected and true or false)
		hoverWash(f)
		-- Back from a game look's tab, whose label sat on its art.
		local label = rawget(f, "Label")
		if f.psKitLabel and label then
			label:ClearAllPoints()
			label:SetPoint("CENTER", f, "CENTER", 0, 0)
			f.psKitLabel = nil
		end
	end,
	close = function(f)
		glyph(f, "close", 14):SetVertexColor(Theme.Color("textDim"))
		hoverWash(f):SetVertexColor(Theme.Wash("hover"))
	end,
	scrollbar = function(f)
		-- Back from a game look's scroll bar (Theme/GameSkins.lua): the slim
		-- white thumb over the whole bar.
		local thumb = f.thumb or f.psThumb
		if f.psInset then
			f.psInset = nil
			f:SetWidth(6)
			if thumb and thumb.SetTexture then
				thumb:SetTexture(Theme.Media("white"))
				thumb:SetTexCoord(0, 1, 0, 1)
				thumb:SetWidth(2)
			end
		end
		if thumb and thumb.SetVertexColor then thumb:SetVertexColor(Theme.Wash("thumb")) end
	end,
}

---------------------------------------------------------------------------
-- Halo and Blizzard paints (DIRECTION_B_HALO.md §4 and §7,
-- DIRECTION_A_BLIZZARD.md §3 and §6). A kind a skin does not paint falls
-- back to the house paint.
---------------------------------------------------------------------------

-- The soft veil: Media/UI/veil-soft (64 px, its 24 px edge fading to clear)
-- in nine slices, laid 24 units out from the frame so the frame itself sits
-- on the solid middle. Tinted with `token` at `alpha`.
VEIL_OUT = 24
VEIL_SLICE = 24 / 64
function veilFor(frame)
	local v = frame.psSkin.veil
	if v then return v end
	v = CreateFrame("Frame", nil, frame)
	v:SetFrameLevel(math.max(0, frame:GetFrameLevel() - 1))
	v:SetPoint("TOPLEFT", frame, "TOPLEFT", -VEIL_OUT, VEIL_OUT)
	v:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", VEIL_OUT, -VEIL_OUT)
	local tex, a, b = Theme.Media("veil-soft"), VEIL_SLICE, 1 - VEIL_SLICE
	-- { point, relative point x/y in slices, texcoords }
	local cells = {
		{ 0, a, 0, a }, { a, b, 0, a }, { b, 1, 0, a },
		{ 0, a, a, b }, { a, b, a, b }, { b, 1, a, b },
		{ 0, a, b, 1 }, { a, b, b, 1 }, { b, 1, b, 1 },
	}
	v.parts = {}
	for i, c in ipairs(cells) do
		local t = v:CreateTexture(nil, "BACKGROUND", nil, -8)
		t:SetTexture(tex)
		t:SetTexCoord(c[1], c[2], c[3], c[4])
		v.parts[i] = t
	end
	local p, E = v.parts, VEIL_OUT
	p[1]:SetPoint("TOPLEFT", v, "TOPLEFT"); p[1]:SetSize(E, E)
	p[3]:SetPoint("TOPRIGHT", v, "TOPRIGHT"); p[3]:SetSize(E, E)
	p[7]:SetPoint("BOTTOMLEFT", v, "BOTTOMLEFT"); p[7]:SetSize(E, E)
	p[9]:SetPoint("BOTTOMRIGHT", v, "BOTTOMRIGHT"); p[9]:SetSize(E, E)
	p[2]:SetPoint("TOPLEFT", p[1], "TOPRIGHT"); p[2]:SetPoint("BOTTOMRIGHT", p[3], "BOTTOMLEFT")
	p[8]:SetPoint("TOPLEFT", p[7], "TOPRIGHT"); p[8]:SetPoint("BOTTOMRIGHT", p[9], "BOTTOMLEFT")
	p[4]:SetPoint("TOPLEFT", p[1], "BOTTOMLEFT"); p[4]:SetPoint("BOTTOMRIGHT", p[7], "TOPRIGHT")
	p[6]:SetPoint("TOPLEFT", p[3], "BOTTOMLEFT"); p[6]:SetPoint("BOTTOMRIGHT", p[9], "TOPRIGHT")
	p[5]:SetPoint("TOPLEFT", p[1], "BOTTOMRIGHT"); p[5]:SetPoint("BOTTOMRIGHT", p[9], "TOPLEFT")
	frame.psSkin.veil = v
	return v
end

function showVeil(frame, token, alpha)
	local v = veilFor(frame)
	local r, g, b, a = Theme.Color(token)
	a = alpha or a
	for i = 1, #v.parts do v.parts[i]:SetVertexColor(r, g, b, a) end
	v:Show()
	return v
end

-- A vertical two-colour fill (top, bottom), the gradients of Blizzard's
-- frames and buttons where the client has no texture of the exact tint.
function gradientFill(frame, top, bottom, layer, sub)
	local t = fill(frame, layer, sub)
	t:SetVertexColor(1, 1, 1, 1)
	if t.SetGradient and CreateColor then
		t:SetGradient("VERTICAL", CreateColor(bottom[1], bottom[2], bottom[3], bottom[4] or 1), CreateColor(top[1], top[2], top[3], top[4] or 1))
	else
		t:SetVertexColor(top[1], top[2], top[3], top[4] or 1)
	end
	return t
end

-- The game's red panel button (Interface\Buttons\UI-Panel-Button-*, as
-- UIPanelButtonNoTooltipTemplate lays it: left 12, middle, right 12).
PANEL_BUTTON = { "Interface\\Buttons\\UI-Panel-Button-Up", "Interface\\Buttons\\UI-Panel-Button-Down",
	"Interface\\Buttons\\UI-Panel-Button-Disabled", "Interface\\Buttons\\UI-Panel-Button-Highlight" }
function redButton(f)
	local d = f.psSkin
	if not d.red then
		local red = {}
		for i, coords in ipairs({ { 0, 0.09375 }, { 0.09375, 0.53125 }, { 0.53125, 0.625 } }) do
			local t = f:CreateTexture(nil, "BACKGROUND", nil, -6)
			t:SetTexCoord(coords[1], coords[2], 0, 0.6875)
			red[i] = t
		end
		red[1]:SetPoint("TOPLEFT"); red[1]:SetPoint("BOTTOMLEFT"); red[1]:SetWidth(12)
		red[3]:SetPoint("TOPRIGHT"); red[3]:SetPoint("BOTTOMRIGHT"); red[3]:SetWidth(12)
		red[2]:SetPoint("TOPLEFT", red[1], "TOPRIGHT"); red[2]:SetPoint("BOTTOMRIGHT", red[3], "BOTTOMLEFT")
		local hl = f:CreateTexture(nil, "HIGHLIGHT")
		hl:SetTexture(PANEL_BUTTON[4])
		hl:SetTexCoord(0, 0.625, 0, 0.6875)
		hl:SetBlendMode("ADD")
		hl:SetAllPoints(f)
		red.hl = hl
		d.red = red
	end
	local enabled = not (f.IsEnabled and not f:IsEnabled())
	local file = enabled and (f.psPressed and PANEL_BUTTON[2] or PANEL_BUTTON[1]) or PANEL_BUTTON[3]
	for i = 1, 3 do
		d.red[i]:SetTexture(file)
		d.red[i]:SetVertexColor(1, 1, 1, 1)
		d.red[i]:Show()
	end
	d.red.hl:Show()
	return d.red
end

-- Hide whatever another skin painted on a frame before this one paints it.
function hideAll(v)
	if type(v) ~= "table" then return end
	if v.Hide then v:Hide() return end
	for _, x in pairs(v) do hideAll(x) end
end

function clearSkin(f)
	local d = f.psSkin
	if d.bg then d.bg:Hide() end
	if d.bg and d.kitFill then
		-- A game look drew its own art in the fill: back to the house fill,
		-- white over the whole frame, untiled.
		d.bg:SetTexture(Theme.Media("white"))
		d.bg:SetTexCoord(0, 1, 0, 1)
		if d.bg.SetHorizTile then d.bg:SetHorizTile(false); d.bg:SetVertTile(false) end
		d.bg:ClearAllPoints()
		d.bg:SetAllPoints(f)
		d.kitFill = nil
	end
	hideBorder(f)
	if f.psShadow then f.psShadow:Hide() end
	if d.veil then d.veil:Hide() end
	if d.nine then for _, n in pairs(d.nine) do if n then n:Hide() end end end
	if d.red then for i = 1, 3 do d.red[i]:Hide() end; d.red.hl:Hide() end
	if d.line then d.line:Hide() end
	if d.hover then d.hover:SetVertexColor(1, 1, 1, 0) end
	-- The game's looks (Theme/GameSkins.lua) keep their pieces here.
	if d.kit then hideAll(d.kit) end
end

-- One 1-unit line along a frame's bottom edge (the dropdowns' accentLine).
function bottomLine(f, token)
	local d = f.psSkin
	if not d.line then
		d.line = f:CreateTexture(nil, "BORDER")
		d.line:SetTexture(Theme.Media("white"))
		d.line:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", 0, 0)
		d.line:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", 0, 0)
		d.line:SetHeight(1)
	end
	d.line:SetVertexColor(Theme.Color(token))
	d.line:Show()
end

-- A window's veil opacity: the skin's (84 %, the guide window's 60 %) scaled
-- by the player's window opacity against its default (ui.bgOpacity, 94 %).
function veilAlpha(f, token)
	local _, _, _, a = Theme.Color(token)
	local scale = (f.psBgAlpha or Theme.GroundAlpha()) / 0.94
	return math.min(1, a * scale)
end

SKIN_PAINT = {
	halo = {
		window = function(f)
			if f.psBare then return bare(f) end
			local token = f.psGuide and "veil" or "veilWindow"
			showVeil(f, token, veilAlpha(f, token))
			local shown, size = Theme.WindowBorder()
			if shown and (isColor(get("ui.borderColor")) or get("ui.borderAccent")) then
				Theme.Border(f, Theme.Color("windowBorder"))
			end
		end,
		panel = function(f)
			if f.psBare then return bare(f) end
			fill(f):SetVertexColor(Theme.Color("menuBg"))
			Theme.Border(f, Theme.Color("separator"))
		end,
		sidebar = function(f) end,
		inset = function(f)
			fill(f):SetVertexColor(1, 1, 1, 0.04)
		end,
		button = function(f)
			fill(f):SetVertexColor(Theme.Color("control"))
			Theme.Border(f, Theme.Color("border"))
			hoverWash(f)
		end,
		dropdown = function(f)
			fill(f):SetVertexColor(Theme.Color("control"))
			Theme.Border(f, Theme.Color("divider"))
			bottomLine(f, "accentLine")
			hoverWash(f)
		end,
		tile = function(f)
			fill(f):SetVertexColor(1, 1, 1, 0.05)
			hideBorder(f)
			hoverWash(f)
		end,
		editbox = function(f)
			fill(f):SetVertexColor(Theme.Color("inputBg"))
			if f.psFocused then
				local r, g, b = Theme.Accent()
				Theme.Border(f, r, g, b, 0.8)
			else
				Theme.Border(f, Theme.Color("border"))
			end
		end,
		checkbox = function(f)
			HOUSE_PAINT.checkbox(f)
			local d = f.psSkin
			d.box:SetSize(16, 16)
			fill(d.box):SetVertexColor(Theme.Color("inputBg"))
			Theme.Border(d.box, Theme.Color("box"))
		end,
	},
	hearth = {
		-- Flat windows (Yendi, after playing it): the handoff's brown gradient
		-- without the game's metal frame, edged by the window border setting
		-- in a brown hairline (#5C4518) unless the player picked their own.
		window = function(f)
			if f.psBare then return bare(f) end
			local a = veilAlpha(f, "bg")
			local top, bottom = { Theme.Color("bg") }, { Theme.Color("bgBottom") }
			top[4], bottom[4] = a, a
			gradientFill(f, top, bottom)
			local shown, size = Theme.WindowBorder()
			if shown then
				local br, bg, bb, ba = Theme.Color("windowBorder")
				Theme.Border(f, br, bg, bb, ba, nil, size)
			else
				hideBorder(f)
			end
		end,
		panel = function(f)
			if f.psBare then return bare(f) end
			local top, bottom = { Theme.Color("bg") }, { Theme.Color("bgBottom") }
			top[4], bottom[4] = 0.97, 0.97
			gradientFill(f, top, bottom)
			Theme.Border(f, Theme.Color("frameEdgeDark"))
		end,
		tile = function(f)
			fill(f):SetVertexColor(0, 0, 0, 0.4)
			Theme.Border(f, Theme.Color("titleLine"))
			hoverWash(f)
		end,
		sidebar = function(f)
			fill(f):SetVertexColor(Theme.Color("sidebar"))
		end,
		inset = function(f)
			fill(f):SetVertexColor(0, 0, 0, 0.45)
		end,
		-- The game's red button for text buttons (W.Button) alone; anything
		-- else painted as a button (cards, rows, tiles) is a dark well edged
		-- in brown.
		button = function(f)
			if f.psTextButton then return redButton(f) end
			fill(f):SetVertexColor(0, 0, 0, 0.4)
			Theme.Border(f, Theme.Color("titleLine"))
			hoverWash(f)
		end,
		dropdown = function(f)
			fill(f):SetVertexColor(Theme.Color("control"))
			Theme.Border(f, Theme.Color("border"))
			hoverWash(f)
		end,
		editbox = function(f)
			fill(f):SetVertexColor(Theme.Color("inputBg"))
			if f.psFocused then
				local r, g, b = Theme.Accent()
				Theme.Border(f, r, g, b, 0.8)
			else
				Theme.Border(f, Theme.Color("border"))
			end
		end,
		checkbox = function(f)
			HOUSE_PAINT.checkbox(f)
			local d = f.psSkin
			d.box:SetSize(15, 15)
			gradientFill(d.box, { 0, 0, 0, 1 }, { 0.11, 0.11, 0.11, 1 })
			Theme.Border(d.box, Theme.Color("box"))
		end,
	},
}
Theme.SKIN_PAINT = SKIN_PAINT
-- The paint helpers Theme/GameSkins.lua builds the game's looks from.
Theme.Paint = { fill = fill, hoverWash = hoverWash, bare = bare, hideBorder = hideBorder, redButton = redButton, house = HOUSE_PAINT }

function paint(frame, kind)
	frame.psSkin = frame.psSkin or {}
	local skin = Theme.SkinKey()
	if frame.psSkin.skin ~= skin then
		if frame.psSkin.skin then clearSkin(frame) end
		frame.psSkin.skin = skin
	end
	local own = SKIN_PAINT[skin]
	local fn = (own and own[kind]) or HOUSE_PAINT[kind] or HOUSE_PAINT.panel
	fn(frame)
end

function Theme.Skin(frame, kind)
	if type(frame) ~= "table" then return frame end
	kind = kind or "panel"
	skinned[frame] = kind
	paint(frame, kind)
	return frame
end

-- Repaint one skinned frame (after changing psBare / psBgAlpha).
function Theme.Repaint(frame)
	local kind = skinned[frame]
	if kind then paint(frame, kind) end
end

-- Tabs we switch ourselves.
function Theme.SetTabSelected(tab, selected)
	tab.psSelected = selected and true or false
	if skinned[tab] then paint(tab, "tab") end
end

-- Edit boxes light their border in the accent while focused.
function Theme.SetFocused(box, focused)
	box.psFocused = focused and true or false
	if skinned[box] == "editbox" then paint(box, "editbox") end
end

---------------------------------------------------------------------------
-- Change notification
---------------------------------------------------------------------------

handlers = {}

function Theme.OnChanged(fn)
	if type(fn) == "function" then handlers[#handlers + 1] = fn end
end

-- Repaint everything we skinned or fonted, then tell the listeners.
function Theme.Refresh()
	P = nil
	for sky in pairs(bands) do paintBand(sky) end
	for frame, kind in pairs(skinned) do paint(frame, kind) end
	for fs, role in pairs(fonted) do paintFont(fs, role) end
	-- EllesmereUI's font is handed over at login, in the frame the window is
	-- first drawn: a string set again in that frame can stay blank, so once more
	-- a frame later.
	if Theme.FollowsEllesmereFont() and C_Timer and C_Timer.After and not retextQueued then
		retextQueued = true
		ns.After(0, function()
			retextQueued = false
			for fs in pairs(fonted) do textAgain(fs) end
		end)
	end
	for i = 1, #handlers do
		local ok, err = pcall(handlers[i])
		if not ok and geterrorhandler then geterrorhandler()(err) end
	end
end

LOOKS = {
	["ui.accent"] = true, ["ui.font"] = true, ["ui.textSize"] = true, ["ui.skin"] = true, ["ui.scheme"] = true, ["ui.bgColor"] = true, ["ui.bgOpacity"] = true,
	["ui.brightness"] = true, ["ui.matchAccent"] = true, ["ui.classAccent"] = true, ["ui.matchFont"] = true,
	["ui.border"] = true, ["ui.borderColor"] = true, ["ui.borderAccent"] = true, ["ui.borderSize"] = true,
	["ui.band"] = true, ["ui.shadow"] = true, ["nav.arrowColor"] = true, ["nav.arrowNearColor"] = true, ["nav.mapIcons"] = true,
	["ui"] = true, ["nav"] = true, [""] = true,
}

-- Settings that hold a colour ({ r, g, b }, or false for none of your own).
COLOURS = { ["ui.accent"] = true, ["ui.borderColor"] = true }

-- Turn a colour source off; true when it was on.
function sourceOff(path)
	if COLOURS[path] then
		if not isColor(get(path)) then return false end
		ns.Set(path, nil)
	else
		if not get(path) then return false end
		ns.Set(path, false)
	end
	return true
end

-- Choosing one colour source (your own colour, your class's, EllesmereUI's;
-- for the window border your own or the accent) turns the others off.
RIVALS = {
	["ui.accent"] = { "ui.matchAccent", "ui.classAccent" },
	["ui.matchAccent"] = { "ui.accent", "ui.classAccent" },
	["ui.classAccent"] = { "ui.accent", "ui.matchAccent" },
	["ui.borderColor"] = { "ui.borderAccent" },
	["ui.borderAccent"] = { "ui.borderColor" },
}

if ns.On then
	ns.On("SETTING_CHANGED", function(path, value)
		local rivals = RIVALS[path]
		if rivals and (COLOURS[path] and isColor(value) or not COLOURS[path] and value) then
			local changed = false
			for _, rival in ipairs(rivals) do changed = sourceOff(rival) or changed end
			-- Each change above already repainted through its own event.
			if changed then return end
		end
		if LOOKS[path] then Theme.Refresh() end
	end)
end

-- Settings from before colour schemes: a stored accent equal to Polestar
-- gold was the old default written back, not a choice; any other stored
-- accent is the user's own and stays.
function migrate()
	local db = ns.DB and ns.DB()
	local ui = db and db.settings and db.settings.ui
	if type(ui) ~= "table" then return end
	local c = ui.accent
	if isColor(c) then
		local same = true
		for i = 1, 3 do
			if math.abs(c[i] - DEFAULT_ACCENT[i]) > 0.002 then same = false end
		end
		if same then ui.accent = nil end
	elseif c ~= nil then
		ui.accent = nil
	end
	P = nil
end
if ns.OnInit then ns.OnInit(migrate) end
-- The class is certain once logged in; a palette read earlier is redone.
if ns.OnLogin then ns.OnLogin(function() if get("ui.classAccent") then Theme.Refresh() end end) end

---------------------------------------------------------------------------
-- EllesmereUI. Registering is free: when the user turned third-party
-- skinning off for us, the callback never runs and Polestar's own accent
-- and font stay.
---------------------------------------------------------------------------

function onSkin(primitives)
	S = primitives
	if S.OnLooksChanged then
		pcall(S.OnLooksChanged, function() Theme.Refresh() end)
	end
	Theme.Refresh()
end

if EllesmereUI and EllesmereUI.RegisterSkin then
	pcall(EllesmereUI.RegisterSkin, ADDON, onSkin)
end

-- Keep the shadow and border crisp when the pixel grid moves.
if ns.RegisterEvent then
	ns.RegisterEvent("UI_SCALE_CHANGED", function() Theme.Refresh() end)
	ns.RegisterEvent("DISPLAY_SIZE_CHANGED", function() Theme.Refresh() end)
end
