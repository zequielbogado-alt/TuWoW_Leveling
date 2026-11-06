-- ForeverUI, Blizzard, and Classic skin kits and nine-slice helpers
local ADDON, ns = ...
local _env = ns.ModuleEnv({}, { "BIG", "CLASSIC", "DIALOG", "GUIDE", "INSET", "ipairs", "KITS", "MARBLE", "max", "METAL", "min", "P", "pairs", "RIM", "ROCK", "SLIDER", "Theme", "TOOLTIP", "TOOLTIP_NINE", "type" })
ns._gameSkinsEnv = _env
setfenv(1, _env)

-- Polestar.Theme, the game's own skins (docs/ARCHITECTURE.md, "Skins"):
-- Polestar drawn in the client's art, the three looks EllesmereUI offers on
-- the Forever client (only their visual spec is followed; nothing of that
-- addon is used), composed the way the client's own templates compose them
-- (SharedUIPanelTemplates, NineSliceLayouts and the Settings panel of the
-- Forever client's FrameXML):
--   "forever"   WoW Forever: Forever's own art, by atlas name (the client
--               draws its -c60 members). The big windows wear
--               ButtonFrameTemplateNoPortrait's bronze metal with Forever's
--               offsets; the guide window the micro menu box's bronze line.
--   "blizzard"  Blizzard Style: the same templates in the retail art that
--               still ships with the client (ns.GameArt, by file and
--               coordinates: SetAtlas draws Forever's there).
--   "classic"   Classic WoW UI: the vanilla files. The dialog box and its
--               header plate round the big windows, the tooltip tile under
--               the chat tab's rim round the guide window, the panel
--               buttons, check boxes, option slider, dropdown and scroll bar.
-- Every piece drawn here lives in frame.psSkin.kit, so Theme's clearSkin
-- hides it when another skin paints the frame.


Theme = ns.Theme
P = Theme.Paint

pairs, ipairs, type, max, min = pairs, ipairs, type, math.max, math.min

-- [name] = { file, w, h, left, right, top, bottom } (sizes at 1x)
CLASSIC = {
	tile = { "Interface\\Tooltips\\UI-Tooltip-Background", 64, 64, 0, 1, 0, 1 },
	rim = { "Interface\\ChatFrame\\ChatFrameTab", 64, 32, 0, 1, 0, 1 },
	header = { "Interface\\DialogFrame\\UI-DialogBox-Header", 256, 64, 0, 1, 0, 1 },
	tab = { "Interface\\OptionsFrame\\UI-OptionsFrame-InActiveTab", 111, 25, 9 / 128, 120 / 128, 7 / 32, 1 },
	tabActive = { "Interface\\OptionsFrame\\UI-OptionsFrame-ActiveTab", 114, 31, 7 / 128, 121 / 128, 0, 31 / 32 },
	check = { "Interface\\Buttons\\UI-CheckBox-Up", 32, 32, 0, 1, 0, 1 },
	checkOn = { "Interface\\Buttons\\UI-CheckBox-Check", 32, 32, 0, 1, 0, 1 },
	slThumb = { "Interface\\Buttons\\UI-SliderBar-Button-Horizontal", 32, 32, 0, 1, 0, 1 },
	ddArrow = { "Interface\\Buttons\\UI-ScrollBar-ScrollDownButton-Up", 32, 32, 0, 1, 0, 1 },
	-- UIDropDownMenuTemplate's frame: left 25, middle, right 25 of its 128.
	ddLeft = { "Interface\\Glues\\CharacterCreate\\CharacterCreate-LabelFrame", 25, 64, 0, 0.1953125, 0, 1 },
	ddMiddle = { "Interface\\Glues\\CharacterCreate\\CharacterCreate-LabelFrame", 115, 64, 0.1953125, 0.8046875, 0, 1 },
	ddRight = { "Interface\\Glues\\CharacterCreate\\CharacterCreate-LabelFrame", 25, 64, 0.8046875, 1, 0, 1 },
	close = { "Interface\\Buttons\\UI-Panel-MinimizeButton-Up", 32, 32, 0, 1, 0, 1 },
	closeDown = { "Interface\\Buttons\\UI-Panel-MinimizeButton-Down", 32, 32, 0, 1, 0, 1 },
	closeLit = { "Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight", 32, 32, 0, 1, 0, 1 },
	prev = { "Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up", 32, 32, 0, 1, 0, 1 },
	next = { "Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up", 32, 32, 0, 1, 0, 1 },
	rowLit = { "Interface\\QuestFrame\\UI-QuestTitleHighlight", 128, 16, 0, 1, 0, 1 },
	selected = { "Interface\\Buttons\\UI-Listbox-Highlight2", 128, 16, 0, 1, 0, 1 },
	statusFill = { "Interface\\TargetingFrame\\UI-StatusBar", 64, 8, 0, 1, 0, 1 },
	-- UIPanelScrollBarTemplate: the arrow buttons and the knob (their art
	-- sits in the middle of 32 x 32 sheets).
	scrollUp = { "Interface\\Buttons\\UI-ScrollBar-ScrollUpButton-Up", 16, 16, 0.2, 0.8, 0.25, 0.75 },
	scrollDown = { "Interface\\Buttons\\UI-ScrollBar-ScrollDownButton-Up", 16, 16, 0.2, 0.8, 0.25, 0.75 },
	knob = { "Interface\\Buttons\\UI-ScrollBar-Knob", 16, 16, 0.25, 0.75, 0.25, 0.75 },
	-- The cast bar's frame, cut at columns 16 | 48 | 208 | 240 and rows
	-- 16 | 28 | 37 | 48 of its 256 x 64 sheet.
	castbar = { "Interface\\CastingBar\\UI-CastingBar-Border", 224, 32, 16 / 256, 240 / 256, 16 / 64, 48 / 64 },
}

METAL = { "UI-Frame-Metal-CornerTopLeft", "_UI-Frame-Metal-EdgeTop", "UI-Frame-Metal-CornerTopRight",
	"!UI-Frame-Metal-EdgeLeft", false, "!UI-Frame-Metal-EdgeRight",
	"UI-Frame-Metal-CornerBottomLeft", "_UI-Frame-Metal-EdgeBottom", "UI-Frame-Metal-CornerBottomRight" }
INSET = { "UI-Frame-InnerTopLeft", "_UI-Frame-InnerTopTile", "UI-Frame-InnerTopRight",
	"!UI-Frame-InnerLeftTile", false, "!UI-Frame-InnerRightTile",
	"UI-Frame-InnerBotLeftCorner", "_UI-Frame-InnerBotTile", "UI-Frame-InnerBotRight" }
TOOLTIP_NINE = { "Tooltip-NineSlice-CornerTopLeft", "_Tooltip-NineSlice-EdgeTop", "Tooltip-NineSlice-CornerTopRight",
	"!Tooltip-NineSlice-EdgeLeft", false, "!Tooltip-NineSlice-EdgeRight",
	"Tooltip-NineSlice-CornerBottomLeft", "_Tooltip-NineSlice-EdgeBottom", "Tooltip-NineSlice-CornerBottomRight" }

-- The parts both atlas looks share (the Settings panel's controls).
function settingsParts(k)
	k.metal, k.inset, k.tooltip = METAL, INSET, TOOLTIP_NINE
	k.tab = { "Options_Tab_Left", "Options_Tab_Middle", "Options_Tab_Right" }
	k.tabActive = { "Options_Tab_Active_Left", "Options_Tab_Active_Middle", "Options_Tab_Active_Right" }
	k.check, k.checkOn = "checkbox-minimal", "checkmark-minimal"
	k.slider = { "Minimal_SliderBar_Left", "_Minimal_SliderBar_Middle", "Minimal_SliderBar_Right" }
	k.slThumb, k.slBack, k.slForward = "Minimal_SliderBar_Button", "Minimal_SliderBar_Button_Left", "Minimal_SliderBar_Button_Right"
	k.dropdown, k.dropdownLit, k.dropdownArrow = "common-dropdown-c-button", "common-dropdown-c-button-hover-1", "common-dropdown-c-button-hover-arrow"
	k.menu = "common-dropdown-bg"
	k.close, k.closeDown, k.closeLit = "RedButton-Exit", "RedButton-exit-pressed", "RedButton-Highlight"
	k.plate, k.plateHover = "common-button-tertiary-square-normal", "common-button-tertiary-square-hover"
	k.navLit, k.navHover = "Options_List_Active", "Options_List_Hover"
	k.streaks = "_UI-Frame-TopTileStreaks"
	k.header = "UI-QuestTracker-Primary-Objective-Header"
	k.scroll = { track = { "minimal-scrollbar-track-top", "!minimal-scrollbar-track-middle", "minimal-scrollbar-track-bottom" },
		thumb = { "minimal-scrollbar-small-thumb-top", "minimal-scrollbar-small-thumb-middle", "minimal-scrollbar-small-thumb-bottom" },
		up = "minimal-scrollbar-arrow-top", down = "minimal-scrollbar-arrow-bottom", width = 8, inset = 19 }
	return k
end

KITS = {
	-- ButtonFrameTemplateNoPortrait with the Forever client's offsets
	-- (camelot/NineSliceLayoutOverrides.lua: the right corners 2 in, the
	-- bottom ones 8 down) and its art's sizes (2x only: 95 a side).
	forever = settingsParts({
		source = "atlas",
		metalOut = { 8, 16, 2, 8 },
		metalSize = { { 95, 95 }, { 128, 95 }, { 95, 95 }, { 95, 128 }, false, { 95, 128 }, { 95, 100 }, { 128, 100 }, { 95, 100 } },
		closeSize = 28, closeAt = { 0, 3 },
		slim = "UI-HUD-ActionBar-Frame",
		card = "common-button-list-small", cardHover = "common-button-list-small-hover", cardSelected = "common-button-list-small-selected",
		rowLit = "common-button-list-small-selected",
		status = { bg = "Legacy-Progressbar-BG", fill = "Legacy-Progressbar-Fill", frame = "Legacy-Progressbar-Frame" },
	}),
	-- ButtonFrameTemplateNoPortrait's mainline offsets, the retail art.
	blizzard = settingsParts({
		source = "retail",
		metalOut = { 8, 16, 4, 3 },
		closeSize = 24, closeAt = { 1, 0 },
		headerBar = "ui-damagemeters-header-bar",
		status = { bg = "ui-damagemeters-bar-shadowbg", edge = "ui-damagemeters-bar-shadowedge" },
	}),
	classic = {
		source = "file",
		tab = { "tab" }, tabActive = { "tabActive" },
		check = "check", checkOn = "checkOn",
		slThumb = "slThumb",
		ddArrow = "ddArrow",
		close = "close", closeDown = "closeDown", closeLit = "closeLit",
		prev = "prev", next = "next",
		rowLit = "rowLit", navLit = "selected",
		scroll = { up = "scrollUp", down = "scrollDown", knob = "knob", width = 16, inset = 16 },
	},
}
Theme.KITS = KITS

-- The kit of the skin in use, or nil (the house style, Halo, Hearth).
function Theme.Kit()
	return KITS[Theme.SkinKey()]
end

---------------------------------------------------------------------------
-- Art: one named piece of a kit -> file, coordinates and size
---------------------------------------------------------------------------

ROCK = "Interface\\Buttons\\WHITE8X8"
MARBLE = "Interface\\Buttons\\WHITE8X8"

function region(kit, name)
	if not name then return nil end
	if kit.source == "file" then
		local a = CLASSIC[name]
		if a then return a[1], a[4], a[5], a[6], a[7], a[2], a[3] end
	elseif kit.source == "retail" then
		local a = ns.GameArt and ns.GameArt[name]
		if a and type(a[1]) == "string" then return a[1], a[4], a[5], a[6], a[7], a[2], a[3] end
		local info = C_Texture and C_Texture.GetAtlasInfo and C_Texture.GetAtlasInfo(name)
		if info then
			return info.file or info.filename, info.leftTexCoord, info.rightTexCoord, info.topTexCoord, info.bottomTexCoord, info.width, info.height
		end
	else
		local info = C_Texture and C_Texture.GetAtlasInfo and C_Texture.GetAtlasInfo(name)
		if info then
			return info.file or info.filename, info.leftTexCoord, info.rightTexCoord, info.topTexCoord, info.bottomTexCoord, info.width, info.height
		end
	end
end
Theme.KitRegion = region

-- Draw `name` on texture t, or the part of it between fractions u0..u1,
-- v0..v1 of its box. -> width, height of the whole piece (nil: not there).
function draw(t, kit, name, u0, u1, v0, v1)
	local file, l, r, tp, b, w, h = region(kit, name)
	if not file then
		t:Hide()
		return nil
	end
	t:SetTexture(file)
	u0, u1, v0, v1 = u0 or 0, u1 or 1, v0 or 0, v1 or 1
	local du, dv = r - l, b - tp
	t:SetTexCoord(l + du * u0, l + du * u1, tp + dv * v0, tp + dv * v1)
	t:SetVertexColor(1, 1, 1, 1)
	t:SetBlendMode("BLEND")
	t:Show()
	return w, h
end
Theme.KitDraw = draw

-- A plain client file, tiled or stretched.
function file(t, path, tile)
	t:SetTexture(path, tile and "REPEAT" or nil, tile and "REPEAT" or nil)
	t:SetTexCoord(0, 1, 0, 1)
	if t.SetHorizTile then t:SetHorizTile(tile and true or false); t:SetVertTile(tile and true or false) end
	t:SetVertexColor(1, 1, 1, 1)
	t:Show()
	return t
end

-- frame.psSkin.kit[key]: textures (and frames) a kit painted on a frame,
-- made once and kept for every later paint.
function store(f)
	f.psSkin = f.psSkin or {}
	local k = f.psSkin.kit
	if not k then
		k = {}
		f.psSkin.kit = k
	end
	return k
end

function tex(f, key, layer, sub, host)
	local k = store(f)
	local t = k[key]
	if not t then
		t = (host or f):CreateTexture(nil, layer or "BACKGROUND", nil, sub or -6)
		k[key] = t
	end
	return t
end

-- A child frame of f kept in its kit store, at f's level + levelUp.
function child(f, key, levelUp, kind)
	local k = store(f)
	local o = k[key]
	if not o then
		o = CreateFrame(kind or "Frame", nil, f)
		k[key] = o
	end
	o:SetFrameLevel(max(0, f:GetFrameLevel() + (levelUp or 6)))
	o:Show()
	return o
end

function hideKey(f, key)
	local k = f.psSkin and f.psSkin.kit
	local v = k and k[key]
	if not v then return end
	if v.Hide then v:Hide() else for _, t in pairs(v) do if t and t.Hide then t:Hide() end end end
end
Theme.KitHide = hideKey

-- Nine pieces round host as NineSliceUtil lays them: corners at their own
-- size, placed `out` past host's corners (l, t, r, b: TL at -l,t; TR at
-- r,t; BL at -l,-b; BR at r,-b), edges between the corners at their own
-- thickness, the centre (when named) inside. sizes[i] = { w, h } stands for
-- a piece's own size where the atlas reports its 2x size.
function nine(f, key, kit, names, host, out, layer, sub, sizes)
	out = out or { 0, 0, 0, 0 }
	local k = store(f)
	local p = k[key]
	if not p then
		p = {}
		for i = 1, 9 do p[i] = host:CreateTexture(nil, layer or "BORDER", nil, sub or 0) end
		k[key] = p
	end
	local sz = {}
	for i = 1, 9 do
		local w, h
		if names[i] then w, h = draw(p[i], kit, names[i]) else p[i]:Hide() end
		if sizes and sizes[i] then w, h = sizes[i][1], sizes[i][2] end
		sz[i] = { w or 0, h or 0 }
		p[i]:ClearAllPoints()
	end
	p[1]:SetPoint("TOPLEFT", host, "TOPLEFT", -out[1], out[2]); p[1]:SetSize(sz[1][1], sz[1][2])
	p[3]:SetPoint("TOPRIGHT", host, "TOPRIGHT", out[3], out[2]); p[3]:SetSize(sz[3][1], sz[3][2])
	p[7]:SetPoint("BOTTOMLEFT", host, "BOTTOMLEFT", -out[1], -out[4]); p[7]:SetSize(sz[7][1], sz[7][2])
	p[9]:SetPoint("BOTTOMRIGHT", host, "BOTTOMRIGHT", out[3], -out[4]); p[9]:SetSize(sz[9][1], sz[9][2])
	p[2]:SetPoint("TOPLEFT", p[1], "TOPRIGHT"); p[2]:SetPoint("TOPRIGHT", p[3], "TOPLEFT"); p[2]:SetHeight(sz[2][2])
	p[8]:SetPoint("BOTTOMLEFT", p[7], "BOTTOMRIGHT"); p[8]:SetPoint("BOTTOMRIGHT", p[9], "BOTTOMLEFT"); p[8]:SetHeight(sz[8][2])
	p[4]:SetPoint("TOPLEFT", p[1], "BOTTOMLEFT"); p[4]:SetPoint("BOTTOMLEFT", p[7], "TOPLEFT"); p[4]:SetWidth(sz[4][1])
	p[6]:SetPoint("TOPRIGHT", p[3], "BOTTOMRIGHT"); p[6]:SetPoint("BOTTOMRIGHT", p[9], "TOPRIGHT"); p[6]:SetWidth(sz[6][1])
	p[5]:SetPoint("TOPLEFT", p[1], "BOTTOMRIGHT"); p[5]:SetPoint("BOTTOMRIGHT", p[9], "TOPLEFT")
	return p
end

-- One piece of art cut into nine: corners `cu` x `cv` of its box (fractions),
-- drawn `cw` x `ch` units.
function nineOf(f, key, kit, name, cu, cv, cw, ch, host, out, layer, sub, noCentre)
	out = out or { 0, 0, 0, 0 }
	local k = store(f)
	local p = k[key]
	if not p then
		p = {}
		for i = 1, 9 do p[i] = host:CreateTexture(nil, layer or "BORDER", nil, sub or 0) end
		k[key] = p
	end
	local us = { { 0, cu }, { cu, 1 - cu }, { 1 - cu, 1 } }
	local vs = { { 0, cv }, { cv, 1 - cv }, { 1 - cv, 1 } }
	for row = 1, 3 do
		for col = 1, 3 do
			local i = (row - 1) * 3 + col
			draw(p[i], kit, name, us[col][1], us[col][2], vs[row][1], vs[row][2])
			p[i]:ClearAllPoints()
		end
	end
	if noCentre then p[5]:Hide() end
	p[1]:SetPoint("TOPLEFT", host, "TOPLEFT", -out[1], out[2]); p[1]:SetSize(cw, ch)
	p[3]:SetPoint("TOPRIGHT", host, "TOPRIGHT", out[3], out[2]); p[3]:SetSize(cw, ch)
	p[7]:SetPoint("BOTTOMLEFT", host, "BOTTOMLEFT", -out[1], -out[4]); p[7]:SetSize(cw, ch)
	p[9]:SetPoint("BOTTOMRIGHT", host, "BOTTOMRIGHT", out[3], -out[4]); p[9]:SetSize(cw, ch)
	p[2]:SetPoint("TOPLEFT", p[1], "TOPRIGHT"); p[2]:SetPoint("BOTTOMRIGHT", p[3], "BOTTOMLEFT")
	p[8]:SetPoint("TOPLEFT", p[7], "TOPRIGHT"); p[8]:SetPoint("BOTTOMRIGHT", p[9], "BOTTOMLEFT")
	p[4]:SetPoint("TOPLEFT", p[1], "BOTTOMLEFT"); p[4]:SetPoint("BOTTOMRIGHT", p[7], "TOPRIGHT")
	p[6]:SetPoint("TOPLEFT", p[3], "BOTTOMLEFT"); p[6]:SetPoint("BOTTOMRIGHT", p[9], "TOPRIGHT")
	p[5]:SetPoint("TOPLEFT", p[1], "BOTTOMRIGHT"); p[5]:SetPoint("BOTTOMRIGHT", p[9], "TOPLEFT")
	return p
end
Theme.KitNineOf = nineOf

-- An atlas cut the way the client cuts it when it draws it
-- (UiTextureAtlasElementSliceData, ns.GameArtSlice): its margins (in its own
-- units, at 1x) drawn at their size, the edges and middle stretched between.
-- out = { l, t, r, b } past host's edges. Without slice data, one stretched
-- piece. scale: the margins' drawn size per unit of slice data (0.5 for an
-- atlas whose slice data counts its 2x pixels; default 1). -> the nine textures
function sliced(f, key, kit, name, host, out, layer, sub, noCentre, scale)
	out = out or { 0, 0, 0, 0 }
	local k = store(f)
	local p = k[key]
	if not p then
		p = {}
		for i = 1, 9 do p[i] = host:CreateTexture(nil, layer or "BORDER", nil, sub or 0) end
		k[key] = p
	end
	local _, _, _, _, _, w, h = region(kit, name)
	local m = ns.GameArtSlice and ns.GameArtSlice[name]
	for i = 1, 9 do p[i]:ClearAllPoints(); p[i]:Hide() end
	if not w then return p end
	if not m then
		draw(p[5], kit, name)
		p[5]:SetPoint("TOPLEFT", host, "TOPLEFT", -out[1], out[2])
		p[5]:SetPoint("BOTTOMRIGHT", host, "BOTTOMRIGHT", out[3], -out[4])
		return p
	end
	local l, t, r, b = m[1], m[2], m[3], m[4]
	local us = { { 0, l / w }, { l / w, 1 - r / w }, { 1 - r / w, 1 } }
	local vs = { { 0, t / h }, { t / h, 1 - b / h }, { 1 - b / h, 1 } }
	-- The pieces' texture coordinates come from the art's own size above;
	-- only their drawn size scales.
	scale = scale or 1
	l, t, r, b = l * scale, t * scale, r * scale, b * scale
	-- A row or column with no margin collapses into its neighbour.
	local rows = { t > 0, true, b > 0 }
	local cols = { l > 0, true, r > 0 }
	local x0, y0, x1, y1 = -out[1], out[2], out[3], -out[4]
	-- Each piece's edges: { host side, offset } for left, right, top, bottom.
	local L = { { "LEFT", x0 }, { "LEFT", x0 + l }, { "RIGHT", x1 - r } }
	local Rt = { { "LEFT", x0 + l }, { "RIGHT", x1 - r }, { "RIGHT", x1 } }
	local T = { { "TOP", y0 }, { "TOP", y0 - t }, { "BOTTOM", y1 + b } }
	local B = { { "TOP", y0 - t }, { "BOTTOM", y1 + b }, { "BOTTOM", y1 } }
	for row = 1, 3 do
		for col = 1, 3 do
			local i = (row - 1) * 3 + col
			if rows[row] and cols[col] and not (noCentre and i == 5) then
				local tx = p[i]
				draw(tx, kit, name, us[col][1], us[col][2], vs[row][1], vs[row][2])
				tx:SetPoint("TOPLEFT", host, T[row][1] .. L[col][1], L[col][2], T[row][2])
				tx:SetPoint("BOTTOMRIGHT", host, B[row][1] .. Rt[col][1], Rt[col][2], B[row][2])
			end
		end
	end
	return p
end
Theme.KitSliced = sliced

-- Three pieces across host (left, middle, right): the ends `capW` units
-- wide (their art's aspect kept when capW is nil), the middle stretched.
-- names: { left, middle, right }, or one name cut at `cut` (a fraction).
function three(f, key, kit, names, host, capW, cut, layer, sub)
	local k = store(f)
	local p = k[key]
	if not p then
		p = {}
		for i = 1, 3 do p[i] = host:CreateTexture(nil, layer or "BACKGROUND", nil, sub or -5) end
		k[key] = p
	end
	local h = host:GetHeight()
	local wl, hl
	if type(names) == "string" or #names == 1 then
		local name = type(names) == "string" and names or names[1]
		cut = cut or 0.15
		wl, hl = draw(p[1], kit, name, 0, cut, 0, 1)
		draw(p[2], kit, name, cut, 1 - cut, 0, 1)
		draw(p[3], kit, name, 1 - cut, 1, 0, 1)
		if wl then wl = wl * cut end
	else
		wl, hl = draw(p[1], kit, names[1])
		draw(p[2], kit, names[2])
		draw(p[3], kit, names[3])
	end
	local cw = capW or ((wl and hl and hl > 0 and h > 0) and wl * h / hl) or 8
	for i = 1, 3 do p[i]:ClearAllPoints() end
	p[1]:SetPoint("TOPLEFT", host, "TOPLEFT"); p[1]:SetPoint("BOTTOMLEFT", host, "BOTTOMLEFT"); p[1]:SetWidth(cw)
	p[3]:SetPoint("TOPRIGHT", host, "TOPRIGHT"); p[3]:SetPoint("BOTTOMRIGHT", host, "BOTTOMRIGHT"); p[3]:SetWidth(cw)
	p[2]:SetPoint("TOPLEFT", p[1], "TOPRIGHT"); p[2]:SetPoint("BOTTOMRIGHT", p[3], "BOTTOMLEFT")
	return p
end
Theme.KitThree = three

-- A backdrop of the classic files (BackdropTemplate), out units past f.
function backdrop(f, key, spec, r, g, b, a, out, levelUp, host)
	local k = store(f)
	local o = k[key]
	if not o then
		o = CreateFrame("Frame", nil, host or f, BackdropTemplateMixin and "BackdropTemplate" or nil)
		o:EnableMouse(false)
		k[key] = o
	end
	out = out or 0
	o:ClearAllPoints()
	o:SetPoint("TOPLEFT", f, "TOPLEFT", -out, out)
	o:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", out, -out)
	o:SetFrameLevel(max(0, f:GetFrameLevel() + (levelUp or 0)))
	if o.SetBackdrop then
		o:SetBackdrop(spec)
		o:SetBackdropColor(r or 0, g or 0, b or 0, a or 1)
		if o.SetBackdropBorderColor then o:SetBackdropBorderColor(1, 1, 1, 1) end
	end
	o:Show()
	return o
end

DIALOG = { bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
	tile = true, tileSize = 32, edgeSize = 32, insets = { left = 11, right = 12, top = 12, bottom = 11 } }
TOOLTIP = { bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = true, tileSize = 16, edgeSize = 16, insets = { left = 4, right = 4, top = 4, bottom = 4 } }
SLIDER = { bgFile = "Interface\\Buttons\\UI-SliderBar-Background", edgeFile = "Interface\\Buttons\\UI-SliderBar-Border",
	tile = true, tileSize = 8, edgeSize = 8, insets = { left = 3, right = 3, top = 6, bottom = 6 } }
Theme.CLASSIC_SLIDER = SLIDER
Theme.CLASSIC_TOOLTIP = TOOLTIP

-- The chat tab's 5-unit rim (corners 5 x 5, the bottom ones the top ones
-- flipped; edges stretched between them), cut from its 64 x 32 sheet.
RIM = {
	{ "TOPLEFT", 0.03125, 0.109375, 0.28125, 0.4375 }, { "TOPRIGHT", 0.890625, 0.96875, 0.28125, 0.4375 },
	{ "BOTTOMLEFT", 0.03125, 0.109375, 0.4375, 0.28125 }, { "BOTTOMRIGHT", 0.890625, 0.96875, 0.4375, 0.28125 },
	{ "TOP", 0.375, 0.5, 0.28125, 0.4375 }, { "BOTTOM", 0.375, 0.5, 0.4375, 0.28125 },
	{ "LEFT", 0.03125, 0.109375, 0.625, 0.75 }, { "RIGHT", 0.890625, 0.96875, 0.625, 0.75 },
}
function rim(f, host)
	local k = store(f)
	local p = k.rim
	if not p then
		p = {}
		for i = 1, 8 do
			local t = host:CreateTexture(nil, "BORDER", nil, 1)
			t:SetTexture(CLASSIC.rim[1])
			t:SetTexCoord(RIM[i][2], RIM[i][3], RIM[i][4], RIM[i][5])
			p[i] = t
		end
		for i = 1, 4 do p[i]:SetSize(5, 5); p[i]:SetPoint(RIM[i][1], host, RIM[i][1]) end
		p[5]:SetPoint("TOPLEFT", p[1], "TOPRIGHT"); p[5]:SetPoint("BOTTOMRIGHT", p[2], "BOTTOMLEFT")
		p[6]:SetPoint("TOPLEFT", p[3], "TOPRIGHT"); p[6]:SetPoint("BOTTOMRIGHT", p[4], "BOTTOMLEFT")
		p[7]:SetPoint("TOPLEFT", p[1], "BOTTOMLEFT"); p[7]:SetPoint("BOTTOMRIGHT", p[3], "TOPRIGHT")
		p[8]:SetPoint("TOPLEFT", p[2], "BOTTOMLEFT"); p[8]:SetPoint("BOTTOMRIGHT", p[4], "TOPRIGHT")
		k.rim = p
	end
	for i = 1, 8 do p[i]:Show() end
end

-- A close button in the kit's art (UIPanelCloseButton): normal, pushed and
-- the additive highlight.
function closeArt(b, kit, size)
	local k = store(b)
	local n, d, l = k.closeN, k.closeD, k.closeL
	if not n then
		n = b:CreateTexture(nil, "ARTWORK", nil, 1)
		d = b:CreateTexture(nil, "ARTWORK", nil, 2)
		l = b:CreateTexture(nil, "HIGHLIGHT")
		k.closeN, k.closeD, k.closeL = n, d, l
		b:HookScript("OnMouseDown", function() if Theme.Kit() then k.closeN:SetAlpha(0); k.closeD:SetAlpha(1) end end)
		b:HookScript("OnMouseUp", function() k.closeN:SetAlpha(1); k.closeD:SetAlpha(0) end)
	end
	for _, t in ipairs({ n, d, l }) do
		t:ClearAllPoints()
		t:SetPoint("CENTER", b, "CENTER", 0, 0)
		t:SetSize(size, size)
	end
	draw(n, kit, kit.close)
	draw(d, kit, kit.closeDown)
	d:SetAlpha(0)
	n:SetAlpha(1)
	draw(l, kit, kit.closeLit)
	l:SetBlendMode("ADD")
end

---------------------------------------------------------------------------
-- Windows
---------------------------------------------------------------------------

function opacity(f)
	return min(1, (f.psBgAlpha or Theme.GroundAlpha()) / 0.94)
end

-- The body fill inside the frame's rect: the house fill's texture on f.
function body(f, r, g, b, a, inset)
	local t = P.fill(f)
	f.psSkin.kitFill = true
	t:ClearAllPoints()
	inset = inset or 0
	t:SetPoint("TOPLEFT", f, "TOPLEFT", inset, -inset)
	t:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -inset, inset)
	t:SetTexture(Theme.Media("white"))
	t:SetTexCoord(0, 1, 0, 1)
	if t.SetHorizTile then t:SetHorizTile(false); t:SetVertTile(false) end
	t:SetVertexColor(r, g, b, a)
	return t
end

-- The window title (GameFontNormal: the game font at 12, gold).
function title(f, host, point, rel, x, y)
	local k = store(f)
	local fs = k.title
	if not fs then
		fs = host:CreateFontString(nil, "OVERLAY")
		Theme.Font(fs, "label")
		fs:SetWordWrap(false)
		k.title = fs
	end
	fs:SetParent(host)
	fs:SetDrawLayer("OVERLAY", 7)
	fs:ClearAllPoints()
	fs:SetPoint(point, rel, point, x, y)
	fs:SetText(f.psTitle or "TuWoW Leveling")
	fs:SetTextColor(Theme.Color("title"))
	fs:Show()
	return fs
end

-- Title-bar dragging (PanelDragBarTemplate): a strip that moves f.
function dragBar(f, host)
	local bar = child(f, "drag", 7, "Button")
	bar:SetParent(host)
	bar:SetFrameLevel(host:GetFrameLevel() + 1)
	bar:EnableMouse(true)
	bar:RegisterForDrag("LeftButton")
	if not bar.psWired then
		bar:SetScript("OnDragStart", function() if f:IsMovable() then f:StartMoving() end end)
		bar:SetScript("OnDragStop", function() f:StopMovingOrSizing() end)
		bar.psWired = true
	end
	return bar
end

-- The window's own close action: the shell's close button, else hiding it.
function closeWindow(f)
	local c = rawget(f, "Close")
	if c and c.Click then c:Click() else f:Hide() end
end

function closeButton(f, host, kit, size, point, x, y)
	local b = child(f, "closeButton", 9, "Button")
	b:SetParent(host)
	b:SetFrameLevel(host:GetFrameLevel() + 4)
	b:SetSize(size, size)
	b:ClearAllPoints()
	b:SetPoint(point, host, point, x, y)
	if not b.psWired then
		b:SetScript("OnClick", function() closeWindow(f) end)
		b.psWired = true
	end
	closeArt(b, kit, size)
	b:SetShown(rawget(f, "Close") ~= nil or f.psClosable == true)
	return b
end

-- The guide window (and the toasts, psLight).
GUIDE = {
	forever = function(f, kit)
		body(f, 0, 0, 0, 0.96 * opacity(f))
		-- The micro menu box's bronze line (55 units, its chamfered corners 12),
		-- the line 3 units in from the art's edge: laid 3 out so it runs on the
		-- window's edge. Its filled middle is left out: the body is the window's own.
		-- The border starts at the tab strip's foot (f.psStrip), anchored so it
		-- follows the strip as it shows and hides (compact mode) without a repaint.
		-- At the window's own level, under its content: the art's inner shade
		-- (all but its outer 3 units) drew over the nav row and the progress
		-- bar at f+6 (#306).
		local o = child(f, "edge", 0)
		o:EnableMouse(false)
		o:ClearAllPoints()
		if f.psStrip then
			o:SetPoint("TOPLEFT", f.psStrip, "BOTTOMLEFT", 0, 0)
		else
			o:SetPoint("TOPLEFT", f, "TOPLEFT", 0, 0)
		end
		o:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", 0, 0)
		sliced(f, "slim", kit, kit.slim, o, { 3, 0, 3, 3 }, "BORDER", 0, true)
	end,
	blizzard = function(f)
		local a = opacity(f)
		local t = body(f, 0, 0, 0, 0.96 * a)
		t:SetPoint("TOPLEFT", f, "TOPLEFT", 0, -20)
		local band = tex(f, "band", "BACKGROUND", -7)
		band:ClearAllPoints()
		band:SetPoint("TOPLEFT", f, "TOPLEFT")
		band:SetPoint("TOPRIGHT", f, "TOPRIGHT")
		band:SetHeight(20)
		file(band, Theme.Media("white"))
		if band.SetGradient and CreateColor then
			band:SetGradient("VERTICAL", CreateColor(0, 0, 0, 0.96 * a), CreateColor(0, 0, 0, 0.48 * a))
		else
			band:SetVertexColor(0, 0, 0, 0.8 * a)
		end
	end,
	classic = function(f)
		local a = opacity(f)
		local t = body(f, 0.063, 0.063, 0.063, 0.9 * a, 3)
		t:SetTexture(CLASSIC.tile[1], "REPEAT", "REPEAT")
		if t.SetHorizTile then t:SetHorizTile(true); t:SetVertTile(true) end
		local o = child(f, "edge", 6)
		o:EnableMouse(false)
		o:SetAllPoints(f)
		rim(f, o)
	end,
}

