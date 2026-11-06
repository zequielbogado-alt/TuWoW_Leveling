-- Theme palettes, colour math, resolution, media, and fonts
local ADDON, ns = ...
local _env = ns.ModuleEnv({}, { "ART", "bands", "BRAND", "CJK", "CLASS_COLORS", "COLOURS", "DEFAULT_ACCENT", "DERIVE", "FACES", "FAMILIES", "FIRA", "flat", "floor", "fonted", "format", "GAME_ICON", "GAME_SKINS", "handlers", "HARD", "HIDDEN_SKINS", "HOUSE_EXTRA", "HOUSE_PAINT", "ipairs", "LOOKS", "MEDIA", "METRICS", "outlined", "P", "pairs", "PANEL_BUTTON", "pcall", "retextQueued", "RIVALS", "ROLES", "S", "SCHEME_WASH", "SCHEMES", "SCRIPT_FONTS", "scripted", "SHADOW_DROP", "SHADOW_OUT", "SHARED", "SKIN_FONT", "SKIN_ICON", "SKIN_PAINT", "SKIN_PALETTES", "SKIN_ROLES", "SKIN_SHADOW", "skinned", "SLICE", "Theme", "type", "VEIL_OUT", "VEIL_SLICE", "VERB_ICON", "WASH" })
ns._themeEnv = _env
setfenv(1, _env)

-- Polestar.Theme: colours, fonts, media and frame skins for the UI and Nav.
-- Contract: docs/ARCHITECTURE.md, "Theme". Direction:
-- docs/DESIGN.md ("The Guiding-Star Instrument").
--
-- One world, always Polestar's own: night grounds under a starlit band, 1px
-- hairlines, a white text ladder, the game's own font for the UI by default
-- (Inter or EllesmereUI's on request) and the engraved wordmark for the
-- identity. The user picks how deep the night runs (a colour
-- scheme: Dusk, Night, Graphite, or EllesmereUI's own panel colour when it
-- is installed) and may set their own accent, ground colour, ground opacity
-- and brightness on top. Every colour resolves in this order:
--   the user's own value > "Match EllesmereUI" (installed and on) > scheme.
-- Whatever they pick, the text ladder stays legible: a ground that would
-- drop text below 7:1 (primary) or 4.5:1 (the rest) is darkened until it
-- reads (tests/theme.test.js holds every scheme to it).
-- EllesmereUI is read only through its documented skinning API (accent,
-- panel colour, font; repainted on S.OnLooksChanged); its frame primitives
-- are deliberately not applied: its shell art would replace Polestar's
-- composition.


Theme = {}
ns.Theme = Theme

type, pairs, ipairs, pcall, floor = type, pairs, ipairs, pcall, math.floor
format = string.format

MEDIA = "Interface\\AddOns\\" .. ADDON .. "\\Media\\"

---------------------------------------------------------------------------
-- Palette data
---------------------------------------------------------------------------

-- Polestar gold: the accent of every scheme.
DEFAULT_ACCENT = { 0.9, 0.73, 0.4 }

-- Status and subject colours: one set for every scheme (all schemes are
-- night grounds), so a quest is the same gold everywhere.
SHARED = {
	success = { 0.42, 0.85, 0.6, 1 },
	warning = { 0.98, 0.75, 0.3, 1 },
	danger = { 0.96, 0.45, 0.45, 1 },
	quest = { 1, 0.84, 0.45, 1 },
	npc = { 0.58, 0.79, 1, 1 },
	item = { 0.78, 0.68, 1, 1 },
	place = { 0.96, 0.68, 0.52, 1 },
	object = { 0.86, 0.79, 0.66, 1 },
	level = { 0.96, 0.97, 0.99, 1 },
	skill = { 0.6, 0.88, 0.46, 1 },
	spell = { 0.47, 0.86, 0.93, 1 },
	faction = { 0.97, 0.6, 0.79, 1 },
	area = { 0.93, 0.75, 0.6, 1 },
	achievement = { 1, 0.64, 0.32, 1 },
	dungeon = { 0.64, 0.52, 1, 1 }, -- dungeon and raid entrances (portal violet)
	rare = { 1, 0.5, 0.32, 1 }, -- rare NPCs (ember; treasures keep object)
}

-- Tints laid on the game's own art (the world map), and light laid over
-- a Polestar ground (the night header's haze), never under text: the same
-- in every scheme and outside the legibility guard.
ART = {
	mapUnexplored = { 0.6, 0.66, 0.9, 1 }, -- multiplied onto unexplored map overlays
	haze = { 0.29, 0.376, 0.667, 0.25 }, -- the faint blue haze in a night header (Media glow)
}

-- Another brand's colour, for its mark only: Discord's Blurple, as its
-- brand guidelines give it, on the Discord logo wherever Polestar links its
-- Discord (UI/Report.lua: the report window, the invite's copy window, the
-- sidebars' link). A logo, never text, so it sits outside the legibility
-- guard, the same in every scheme.
BRAND = {
	discord = { 0.345, 0.396, 0.949, 1 },
}

-- A scheme: the grounds (bg window, panel raised panels and popups, panelAlt
-- controls, sidebar, footer, sky the top of the header band), the text
-- ladder (100/70/50, tinted toward the ground so secondary text stays in the
-- world), ink (the colour of hairlines and washes), shade (wells, text
-- shadows, art fades), scrim (dark grounds for text on zone art), onAccent
-- (text and glyphs on an accent fill) and shadow (window drop shadow).
SCHEMES = {
	-- The default: Night lifted to dusk, still navy, clearly lighter.
	dusk = {
		bg = { 0.095, 0.115, 0.178, 0.97 },
		panel = { 0.11, 0.133, 0.203, 0.98 },
		panelAlt = { 0.139, 0.166, 0.249, 1 },
		sidebar = { 0.072, 0.088, 0.14, 1 },
		footer = { 0.08, 0.097, 0.151, 1 },
		sky = { 0.156, 0.196, 0.329, 1 },
		text = { 0.967, 0.974, 0.991, 1 },
		textDim = { 0.765, 0.793, 0.868, 1 },
		textMuted = { 0.606, 0.637, 0.726, 1 },
		ink = { 1, 1, 1, 1 },
		star = { 1, 1, 1, 1 },
		shade = { 0, 0, 0.02, 1 },
		scrim = { 0.02, 0.03, 0.06, 1 },
		onAccent = { 0.04, 0.05, 0.08, 1 },
		shadow = { 0, 0, 0.02, 0.6 },
	},
	-- The original deep night navy-black, unchanged.
	night = {
		bg = { 0.039, 0.051, 0.086, 0.97 },
		panel = { 0.051, 0.066, 0.11, 0.98 },
		panelAlt = { 0.075, 0.094, 0.149, 1 },
		sidebar = { 0.027, 0.035, 0.063, 1 },
		footer = { 0.031, 0.04, 0.071, 1 },
		sky = { 0.075, 0.106, 0.2, 1 },
		text = { 0.96, 0.97, 0.99, 1 },
		textDim = { 0.69, 0.72, 0.8, 1 },
		textMuted = { 0.5, 0.54, 0.63, 1 },
		ink = { 1, 1, 1, 1 },
		star = { 1, 1, 1, 1 },
		shade = { 0, 0, 0.02, 1 },
		scrim = { 0.02, 0.03, 0.06, 1 },
		onAccent = { 0.04, 0.05, 0.08, 1 },
		shadow = { 0, 0, 0.02, 0.6 },
	},
	-- Neutral and lighter: slate grey, the faintest cool cast.
	graphite = {
		bg = { 0.131, 0.137, 0.146, 0.97 },
		panel = { 0.15, 0.156, 0.165, 0.98 },
		panelAlt = { 0.182, 0.19, 0.202, 1 },
		sidebar = { 0.104, 0.109, 0.116, 1 },
		footer = { 0.113, 0.118, 0.125, 1 },
		sky = { 0.2, 0.215, 0.239, 1 },
		text = { 0.974, 0.974, 0.974, 1 },
		textDim = { 0.793, 0.801, 0.813, 1 },
		textMuted = { 0.635, 0.646, 0.663, 1 },
		ink = { 1, 1, 1, 1 },
		star = { 1, 1, 1, 1 },
		shade = { 0, 0, 0, 1 },
		scrim = { 0.03, 0.03, 0.035, 1 },
		onAccent = { 0.05, 0.05, 0.06, 1 },
		shadow = { 0, 0, 0, 0.6 },
	},
}
Theme.SCHEMES = SCHEMES
Theme.SCHEME_ORDER = { "dusk", "night", "graphite" }

-- "#rrggbb" and an alpha -> { r, g, b, a }.
function hex(s, a)
	local r, g, b = s:match("#?(%x%x)(%x%x)(%x%x)")
	return { tonumber(r, 16) / 255, tonumber(g, 16) / 255, tonumber(b, 16) / 255, a or 1 }
end
Theme.HexColor = hex

-- Skins (ui.skin): "polestar", the house style above (the default), the
-- two directions of the design handoff, and the game's own looks
-- (docs/ARCHITECTURE.md, "Skins"):
--   "halo"      Forever · Halo: no frame, a dark veil with soft edges under
--               the text, an off-white ladder, the game's gold, Fira Sans
--   "hearth"    Forever · Hearth: Polestar in warm game colours, a brown
--               gradient window, the client's red buttons, font and text
--               colours
--   "forever", "blizzard", "classic"   the client's own art: WoW Forever's,
--               the retail art (Blizzard Style) and the vanilla files
--               (Theme/GameSkins.lua draws them)
-- A skin brings its whole palette, its fonts, its frame paints and its sizes.
-- The colour scheme, ground colour and brightness belong to the house style;
-- the player's own accent, window border and arrow colours win in every skin.
-- The palettes are the handoff's tokens as given (DIRECTION_B_HALO.md §1,
-- DIRECTION_A_BLIZZARD.md §1); the washes of a skin are its own colours, not
-- the house ink at the house alphas.
SKIN_PALETTES = {
	halo = {
		bg = hex("080604", 0.84), panel = hex("120E0A", 0.97), panelAlt = hex("FFFFFF", 0.06),
		sidebar = hex("080604", 0), footer = hex("080604", 0), sky = hex("080604", 0),
		text = hex("F4EFE6"), textDim = hex("C2B9A9"), textMuted = hex("8F8778"), textOff = hex("6E675C"),
		title = hex("F4EFE6"), ink = hex("FFFFFF"), star = hex("FFFFFF", 0), shade = hex("000000"),
		scrim = hex("080604"), onAccent = hex("17130E"), shadow = hex("080604", 0.72),
		accent = hex("FFD100"),
		veil = hex("080604", 0.6), veilWindow = hex("080604", 0.84), menuBg = hex("120E0A", 0.97),
		inputBg = hex("000000", 0.35), control = hex("FFFFFF", 0.06),
		accentLine = hex("FFD100", 0.35), padSelect = hex("FFD100", 0.12), chipAccent = hex("FFD100", 0.16),
		separator = hex("FFFFFF", 0.12), rowLine = hex("FFFFFF", 0.08),
		border = hex("FFFFFF", 0.14), divider = hex("FFFFFF", 0.12), hover = hex("FFFFFF", 0.07),
		selected = hex("FFFFFF", 0.08), toggle = hex("FFFFFF", 0.16), track = hex("FFFFFF", 0.18),
		progress = hex("FFFFFF", 0.12), chip = hex("FFFFFF", 0.08), box = hex("FFFFFF", 0.35),
		thumb = hex("F4EFE6"), swatch = hex("FFFFFF", 0.25), watermark = hex("FFFFFF", 0.028), mover = hex("FFFFFF", 0.06),
		success = hex("5FD068"), arrive = hex("5FD068"), todo = hex("FFD100"), warning = hex("FF9A3C"),
		later = hex("FF9A3C"), danger = hex("FF9A3C"), manual = hex("B49CFF"), skipped = hex("5CC8D6"),
		icon = hex("C2B9A9"), iconHover = hex("F4EFE6"), buttonText = hex("F4EFE6"), personName = hex("8CCBFF"), tabRest = hex("C2B9A9"),
		rowLabel = hex("F4EFE6"), navRest = hex("C2B9A9"),
		link = hex("8CCBFF"), npc = hex("8CCBFF"), quest = hex("FFE07A"), place = hex("F5AD85"),
		rare = hex("FF8052"), dungeon = hex("A385FF"), discord = hex("5865F2"),
	},
	hearth = {
		bg = hex("1E170D", 0.95), bgBottom = hex("090704", 0.95), panel = hex("000000", 0.92), panelAlt = hex("000000"),
		sidebar = hex("000000", 0.3), footer = hex("000000", 0), sky = hex("2C200C"), skyBottom = hex("150F06"),
		text = hex("FFFFFF"), textDim = hex("CCCCCC"), textMuted = hex("9D9D9D"), textOff = hex("808080"),
		title = hex("FFD100"), ink = hex("FFFFFF"), star = hex("FFFFFF", 0), shade = hex("000000"),
		scrim = hex("000000"), onAccent = hex("17130E"), shadow = hex("000000", 0.7),
		accent = hex("FFD100"),
		veil = hex("000000", 0), veilWindow = hex("000000", 0), menuBg = hex("000000", 0.92),
		inputBg = hex("000000"), control = hex("000000"),
		accentLine = hex("9A7A34", 0.6), padSelect = hex("FFD100", 0.14), chipAccent = hex("FFD100", 0.16),
		separator = hex("9A7A34", 0.45), rowLine = hex("FFFFFF", 0.06),
		border = hex("6B6B6B"), windowEdge = hex("5C4518"), divider = hex("9A7A34", 0.45), hover = hex("FFD100", 0.12),
		selected = hex("6E96FF", 0.28), toggle = hex("000000"), track = hex("000000"),
		progress = hex("000000", 0.75), chip = hex("000000", 0.6), box = hex("8A7A5A"),
		thumb = hex("FFE27A"), swatch = hex("FFFFFF", 0.25), watermark = hex("FFFFFF", 0.028), mover = hex("FFD100", 0.12),
		frameEdge = hex("9A7A34"), frameEdgeDark = hex("5C4518"), titleLine = hex("6B5420"),
		success = hex("1EFF00"), arrive = hex("58C04A"), todo = hex("FFD100"), warning = hex("FF8040"),
		later = hex("FF8040"), danger = hex("FF8040"), manual = hex("C77DFF"), skipped = hex("71D5FF"),
		icon = hex("FFD100"), iconHover = hex("FFD100"), buttonText = hex("FFD100"), personName = hex("FFD100"), tabRest = hex("A38D58"),
		rowLabel = hex("FFFFFF"), navRest = hex("CCCCCC"),
		link = hex("FFD100"), npc = hex("FFFFFF"), discord = hex("5865F2"),
	},
}

-- The game's looks start from Hearth's game colours (white text, gold
-- titles, the client's quality greens and oranges) with their own grounds,
-- glyph tints and rules.
function gamePalette(over)
	local p = {}
	for k, v in pairs(SKIN_PALETTES.hearth) do p[k] = v end
	for k, v in pairs(over) do p[k] = v end
	return p
end
SKIN_PALETTES.forever = gamePalette({
	bg = hex("080604", 0.96), bgBottom = hex("080604", 0.96), sidebar = hex("0C0906", 0.98), panel = hex("120E0A", 0.97),
	textDim = hex("AE9D81"), tabRest = hex("FFD100"), icon = hex("CEB282"), iconHover = hex("F2D199"),
	-- The Settings panel's labels and its list's rows: GameFontNormal, gold.
	rowLabel = hex("FFD100"), navRest = hex("FFD100"),
	separator = hex("AE9D81", 0.35), divider = hex("AE9D81", 0.35), accentLine = hex("AE9D81", 0.5),
	border = hex("5C4A30"), windowEdge = hex("5C4A30"), hover = hex("FFD100", 0.1), selected = hex("FFD100", 0.14),
})
SKIN_PALETTES.blizzard = gamePalette({
	bg = hex("000000", 0.96), bgBottom = hex("000000", 0.96), sidebar = hex("000000", 0.25),
	icon = hex("E8E8E8"), iconHover = hex("FFFFFF"), tabRest = hex("FFD100"), rowLabel = hex("FFD100"), navRest = hex("FFD100"),
	separator = hex("FFD100", 0.35), divider = hex("FFFFFF", 0.15), accentLine = hex("FFD100", 0.45),
	border = hex("404040"), windowEdge = hex("404040"), hover = hex("FFFFFF", 0.08), selected = hex("FFD100", 0.14),
})
SKIN_PALETTES.classic = gamePalette({
	bg = hex("101010", 0.85), bgBottom = hex("101010", 0.85), sidebar = hex("000000", 0),
	icon = hex("FFD100"), iconHover = hex("FFFFFF"), tabRest = hex("FFD100"), rowLabel = hex("FFD100"), navRest = hex("FFD100"),
	separator = hex("969696", 0.45), divider = hex("969696", 0.45), accentLine = hex("969696", 0.6),
	border = hex("696969"), windowEdge = hex("696969"), hover = hex("FFFFFF", 0.08), selected = hex("FFD100", 0.14),
})
Theme.SKIN_PALETTES = SKIN_PALETTES
Theme.SKIN_ORDER = { "polestar", "halo", "hearth", "forever", "blizzard", "classic" }
-- Skins hidden from the picker while their issues are fixed. A saved value
-- naming a hidden skin resolves to the house style at load; the raw saved
-- value is left alone so the player's choice restores when the skin returns.
-- See issue #306.
-- Each entry holds the skin's label so its translations survive in every locale
-- until the skin returns (the i18n scanner would otherwise flag it as stale).
HIDDEN_SKINS = {}
-- Tests may set Theme._testShowHidden = true to render hidden skins directly.
Theme._testShowHidden = false
-- The skins drawn in game colours and controls (the client's check boxes,
-- sliders, red buttons, the game font with its hard shadow).
GAME_SKINS = { hearth = true, forever = true, blizzard = true, classic = true }
Theme.GROUNDS = { "bg", "panel", "panelAlt", "sidebar", "footer", "sky" }

-- Alphas of the ink washes, by role.
WASH = {
	border = 0.08, divider = 0.08, hover = 0.06, selected = 0.09, progress = 0.08, track = 0.12,
	toggle = 0.14, box = 0.22, thumb = 0.22, swatch = 0.25, chip = 0.07, watermark = 0.028, mover = 0.06,
}
Theme.WASH = WASH
-- On the lighter schemes white hairlines and selections read weaker, so they
-- carry a little more ink.
SCHEME_WASH = {
	dusk = { border = 0.1, divider = 0.1, selected = 0.12, hover = 0.07 },
	graphite = { border = 0.1, divider = 0.1, selected = 0.12, hover = 0.07 },
	ellesmere = { border = 0.1, divider = 0.1, selected = 0.12, hover = 0.07 },
}

-- Text roles held to the legibility floor, and their minimum contrast.
Theme.LEGIBLE = { text = 7, textDim = 4.5, textMuted = 4.5 }

---------------------------------------------------------------------------
-- Colour maths (sRGB, OKLab for perceptual lightness)
---------------------------------------------------------------------------

function toLinear(c)
	if c <= 0.04045 then return c / 12.92 end
	return ((c + 0.055) / 1.055) ^ 2.4
end

function toGamma(c)
	if c <= 0 then return 0 end
	c = c <= 0.0031308 and 12.92 * c or 1.055 * c ^ (1 / 2.4) - 0.055
	return c > 1 and 1 or c
end

function cbrt(x)
	if x < 0 then return -((-x) ^ (1 / 3)) end
	return x ^ (1 / 3)
end

function toLab(r, g, b)
	r, g, b = toLinear(r), toLinear(g), toLinear(b)
	local l = cbrt(0.4122214708 * r + 0.5363151677 * g + 0.0514459929 * b)
	local m = cbrt(0.2119034982 * r + 0.6806995451 * g + 0.1073969566 * b)
	local s = cbrt(0.0883024619 * r + 0.2817188376 * g + 0.6299787005 * b)
	return 0.2104542553 * l + 0.793617785 * m - 0.0040720468 * s,
		1.9779984951 * l - 2.428592205 * m + 0.4505937099 * s,
		0.0259040371 * l + 0.7827717662 * m - 0.808675766 * s
end

function fromLab(L, a, b)
	local l = (L + 0.3963377774 * a + 0.2158037573 * b) ^ 3
	local m = (L - 0.1055613458 * a - 0.0638541728 * b) ^ 3
	local s = (L - 0.0894841775 * a - 1.291485548 * b) ^ 3
	return toGamma(4.0767416621 * l - 3.3077115913 * m + 0.2309699292 * s),
		toGamma(-1.2684380046 * l + 2.6097574011 * m - 0.3413193965 * s),
		toGamma(-0.0041960863 * l - 0.7034186147 * m + 1.707614701 * s)
end

-- WCAG relative luminance and contrast ratio.
function Theme.Luminance(r, g, b)
	return 0.2126 * toLinear(r) + 0.7152 * toLinear(g) + 0.0722 * toLinear(b)
end

function Theme.Contrast(c1, c2)
	local a, b = Theme.Luminance(c1[1], c1[2], c1[3]), Theme.Luminance(c2[1], c2[2], c2[3])
	if a < b then a, b = b, a end
	return (a + 0.05) / (b + 0.05)
end

-- c with its OKLab lightness moved by dL (chroma scaled by k), alpha kept.
function shifted(c, dL, k)
	local L, a, b = toLab(c[1], c[2], c[3])
	k = k or 1
	L = L + dL
	if L < 0 then L = 0 elseif L > 1 then L = 1 end
	local r, g, bb = fromLab(L, a * k, b * k)
	return { r, g, bb, c[4] or 1 }
end

-- Grounds around one colour (a custom ground, EllesmereUI's panel colour):
-- the same lightness steps Dusk takes around its window ground.
DERIVE = { sidebar = -0.03, footer = -0.02, bg = 0, panel = 0.02, panelAlt = 0.055, sky = 0.09 }

function deriveGrounds(P, c)
	for name, dL in pairs(DERIVE) do
		local g = shifted(c, dL, name == "sky" and 1.6 or 1)
		g[4] = P[name][4]
		P[name] = g
	end
end

-- The lowest contrast any held role reaches, as a ratio of its floor (>= 1
-- is legible): the text ladder on every ground, the subject and status
-- colours on every ground but the sky (only titles sit on the band).
function legibility(P)
	local worst = math.huge
	for _, gname in ipairs(Theme.GROUNDS) do
		for role, floorRatio in pairs(Theme.LEGIBLE) do
			local q = Theme.Contrast(P[role], P[gname]) / floorRatio
			if q < worst then worst = q end
		end
		if gname ~= "sky" then
			for role in pairs(SHARED) do
				local q = Theme.Contrast(P[role], P[gname]) / 4.5
				if q < worst then worst = q end
			end
		end
	end
	return worst
end
Theme.Legibility = legibility

-- Darken every ground together, by the least lightness that makes all text
-- legible again.
function keepLegible(P)
	if legibility(P) >= 1 then return P end
	local base = {}
	for _, gname in ipairs(Theme.GROUNDS) do base[gname] = P[gname] end
	local lo, hi = -1, 0 -- lightness shift: lo is legible, hi is not
	for _ = 1, 14 do
		local mid = (lo + hi) / 2
		for _, gname in ipairs(Theme.GROUNDS) do P[gname] = shifted(base[gname], mid) end
		if legibility(P) >= 1 then lo = mid else hi = mid end
	end
	for _, gname in ipairs(Theme.GROUNDS) do P[gname] = shifted(base[gname], lo) end
	return P
end

---------------------------------------------------------------------------
-- Resolution: the user's own value > Match EllesmereUI > scheme
---------------------------------------------------------------------------

S = nil -- EllesmereUI's primitive table, once its callback ran

function Theme.IsEllesmere()
	return S ~= nil
end

function get(path)
	if ns.Get then return ns.Get(path) end
end

function isColor(c)
	return type(c) == "table" and type(c[1]) == "number" and type(c[2]) == "number" and type(c[3]) == "number"
end

function euiAccent()
	if S and S.GetAccentColor then
		local ok, r, g, b = pcall(S.GetAccentColor)
		if ok and type(r) == "number" then return r, g, b end
	end
end

function euiPanel()
	if S and S.GetPanelColor then
		local ok, r, g, b, a = pcall(S.GetPanelColor)
		if ok and type(r) == "number" then return { r, g, b, type(a) == "number" and a or 1 } end
	end
end

-- The scheme in use: "ellesmere" only while EllesmereUI is there, and an
-- unknown value (an older or newer build) falls back to Dusk.
function Theme.SchemeKey()
	local k = get("ui.scheme")
	if k == "ellesmere" then return S and "ellesmere" or "dusk" end
	return SCHEMES[k] and k or "dusk"
end

-- The scheme choices for the options dropdown.
function Theme.SchemeChoices()
	local out = {
		{ value = "dusk", text = ns.L["Dusk"] },
		{ value = "night", text = ns.L["Night"] },
		{ value = "graphite", text = ns.L["Graphite"] },
	}
	if S then out[#out + 1] = { value = "ellesmere", text = "EllesmereUI" } end
	return out
end

-- The game's class colours, for a client that has no table of them.
CLASS_COLORS = {
	WARRIOR = { 0.78, 0.61, 0.43 }, PALADIN = { 0.96, 0.55, 0.73 }, HUNTER = { 0.67, 0.83, 0.45 },
	ROGUE = { 1, 0.96, 0.41 }, PRIEST = { 1, 1, 1 }, SHAMAN = { 0, 0.44, 0.87 },
	MAGE = { 0.25, 0.78, 0.92 }, WARLOCK = { 0.53, 0.53, 0.93 }, DRUID = { 1, 0.49, 0.04 },
}

-- A class's colour (the player's when `file` is nil), from the client (class
-- colour addons may change it). -> r, g, b | nil
function classColor(file)
	if not file then
		if not UnitClass then return nil end
		local _
		_, file = UnitClass("player")
		if not file then return nil end
	end
	local c = C_ClassColor and C_ClassColor.GetClassColor and C_ClassColor.GetClassColor(file)
	if not (c and type(c.r) == "number") then c = RAID_CLASS_COLORS and RAID_CLASS_COLORS[file] end
	if c and type(c.r) == "number" then return c.r, c.g, c.b end
	return nil
end

-- The colour of class `file` (a client class file such as "DRUID"; the
-- player's when nil), raw for fills and rules: the client's, else the
-- game's own. -> r, g, b | nil
function Theme.ClassColor(file)
	local r, g, b = classColor(file)
	if r then return r, g, b end
	local own = CLASS_COLORS[file or ""]
	if own then return own[1], own[2], own[3] end
	return nil
end

-- One accent source at a time: your own colour, your class's (ui.classAccent)
-- or EllesmereUI's. Whether the accent currently comes from the class:
function Theme.FollowsClassAccent()
	if isColor(get("ui.accent")) or not get("ui.classAccent") then return false end
	return classColor() ~= nil
end

-- Whether the accent / font currently come from EllesmereUI.
function Theme.FollowsEllesmereAccent()
	if not S or isColor(get("ui.accent")) or Theme.FollowsClassAccent() then return false end
	return get("ui.matchAccent") and true or Theme.SchemeKey() == "ellesmere"
end

function Theme.FollowsEllesmereFont()
	return S ~= nil and get("ui.matchFont") and true or false
end

function copy(c) return { c[1], c[2], c[3], c[4] or 1 } end

-- c moved toward the text colour t until it reads at 4.5:1 on ground (the
-- subject colours' floor). -> r, g, b
function liftTo(ground, t, c)
	local r, g, b = c[1], c[2], c[3]
	for _ = 1, 24 do
		if Theme.Contrast({ r, g, b }, ground) >= 4.5 then break end
		r, g, b = r + (t[1] - r) * 0.15, g + (t[2] - g) * 0.15, b + (t[3] - b) * 0.15
	end
	return r, g, b
end

-- A class colour carries text like any accent: lifted until it reads on
-- the panel ground of the palette being built. -> r, g, b
function legibleOn(out, r, g, b)
	return liftTo(out.panel, out.text, { r, g, b })
end

-- The lightest place a name sits in a palette: the panel ground under the
-- selected wash (a selected row). -> { r, g, b }
function lightestOf(pal)
	local p, w = pal.panel, pal.selected
	local a = w[4] or 0
	return { p[1] + (w[1] - p[1]) * a, p[2] + (w[2] - p[2]) * a, p[3] + (w[3] - p[3]) * a }
end

P = nil -- the resolved palette; rebuilt on the next read after a change

-- The skin in use (ui.skin); an unknown value (an older or newer build) or
-- a hidden skin is the house style (the raw saved value is kept so the
-- player's choice restores when a hidden skin returns).
function Theme.SkinKey()
	local k = get("ui.skin")
	return (SKIN_PALETTES[k] and (Theme._testShowHidden or not HIDDEN_SKINS[k])) and k or "polestar"
end

-- Whether the skin in use (or `key`) is drawn in the game's colours and
-- controls: Hearth and the game's own looks.
function Theme.GameSkin(key)
	return GAME_SKINS[key or Theme.SkinKey()] or false
end

function Theme.SkinChoices()
	return {
		{ value = "polestar", text = ns.L["Polestar"] },
		{ value = "halo", text = ns.L["Halo"] },
		{ value = "hearth", text = ns.L["Hearth"] },
		{ value = "forever", text = ns.L["WoW Forever"] },
		{ value = "blizzard", text = ns.L["Blizzard"] },
		{ value = "classic", text = ns.L["Classic"] },
	}
end

-- The tokens the skins added, in the house style: what each one stands for
-- there, so a module may read them in any skin.
HOUSE_EXTRA = {
	textOff = "textMuted", title = "text", link = "npc", todo = "accent", later = "warning", arrive = "success",
	manual = "item", skipped = "spell", separator = "divider", rowLine = "divider", veil = "bg", veilWindow = "bg",
	menuBg = "panel", control = "panelAlt", icon = "textDim", iconHover = "text", buttonText = "text",
	personName = "npc", tabRest = "textDim", rowLabel = "text", navRest = "textDim",
}

-- A skin's palette, with the player's own accent, window border and arrow
-- colours over it.
function resolveSkin(skin)
	local out = {}
	for name, c in pairs(SHARED) do out[name] = copy(c) end
	for name, c in pairs(ART) do out[name] = copy(c) end
	for name, c in pairs(BRAND) do out[name] = copy(c) end
	for name, c in pairs(SKIN_PALETTES[skin]) do out[name] = copy(c) end
	local r, g, b
	local own = get("ui.accent")
	if isColor(own) then
		r, g, b = own[1], own[2], own[3]
	elseif Theme.FollowsClassAccent() then
		r, g, b = classColor()
	elseif Theme.FollowsEllesmereAccent() then
		r, g, b = euiAccent()
	end
	if r then out.accent = { r, g, b, 1 } end
	r, g, b = out.accent[1], out.accent[2], out.accent[3]
	out.scheme, out.skin = skin, skin
	local edge = get("ui.borderColor")
	if isColor(edge) then
		out.windowBorder = { edge[1], edge[2], edge[3], 1 }
	elseif get("ui.borderAccent") then
		out.windowBorder = { r, g, b, 0.8 }
	else
		out.windowBorder = copy(out.windowEdge or out.border)
	end
	local far, near = get("nav.arrowColor"), get("nav.arrowNearColor")
	out.arrow = isColor(far) and { far[1], far[2], far[3], 1 } or copy(out.accent)
	out.arrowNear = isColor(near) and { near[1], near[2], near[3], 1 } or copy(out.arrive)
	out.arrowText = copy(out.arrow)
	out.arrowNearText = copy(out.arrowNear)
	return out
end

function resolve()
	local skin = Theme.SkinKey()
	if skin ~= "polestar" then return resolveSkin(skin) end
	local key = Theme.SchemeKey()
	local src = SCHEMES[key == "ellesmere" and "graphite" or key]
	local out = {}
	for name, c in pairs(SHARED) do out[name] = copy(c) end
	for name, c in pairs(ART) do out[name] = copy(c) end
	for name, c in pairs(BRAND) do out[name] = copy(c) end
	for name, c in pairs(src) do out[name] = copy(c) end
	if key == "ellesmere" then
		local panel = euiPanel()
		if panel then
			deriveGrounds(out, panel)
			out.bg[4] = panel[4]
		end
	end
	local custom = get("ui.bgColor")
	if isColor(custom) then deriveGrounds(out, custom) end
	local bright = get("ui.brightness")
	if type(bright) == "number" and bright ~= 0 then
		for _, gname in ipairs(Theme.GROUNDS) do out[gname] = shifted(out[gname], bright * 0.2) end
	end
	keepLegible(out)
	local r, g, b
	local own = get("ui.accent")
	if isColor(own) then
		r, g, b = own[1], own[2], own[3]
	elseif Theme.FollowsClassAccent() then
		r, g, b = legibleOn(out, classColor())
	elseif Theme.FollowsEllesmereAccent() then
		r, g, b = euiAccent()
	end
	if not r then r, g, b = DEFAULT_ACCENT[1], DEFAULT_ACCENT[2], DEFAULT_ACCENT[3] end
	out.accent = { r, g, b, 1 }
	-- Text on an accent fill: the scheme's dark ink, or the light text when
	-- the accent is too dark to carry dark text.
	if Theme.Contrast(out.text, out.accent) > Theme.Contrast(out.onAccent, out.accent) then out.onAccent = copy(out.text) end
	out.scheme = key
	-- The washes as colours too (Theme.Color("border") for 1px borders).
	local own = SCHEME_WASH[key]
	for name, a in pairs(WASH) do
		if not out[name] then out[name] = { out.ink[1], out.ink[2], out.ink[3], (own and own[name]) or a } end
	end
	-- The window border: the player's own colour > the accent
	-- (ui.borderAccent, at the focus ring's 80%) > the scheme's hairline.
	local edge = get("ui.borderColor")
	if isColor(edge) then
		out.windowBorder = { edge[1], edge[2], edge[3], 1 }
	elseif get("ui.borderAccent") then
		out.windowBorder = { r, g, b, 0.8 }
	else
		out.windowBorder = copy(out.border)
	end
	-- The waypoint arrow, its route stops and the map's target pin: the
	-- player's own colour > the accent while far; the player's own > success
	-- as it closes in and on arrival. Their *Text forms carry the arrow's
	-- distance line, held to the subject colours' floor (Theme.Legible's
	-- rule, on this palette): a dark pick is lifted toward the text colour.
	local far, near = get("nav.arrowColor"), get("nav.arrowNearColor")
	out.arrow = isColor(far) and { far[1], far[2], far[3], 1 } or copy(out.accent)
	out.arrowNear = isColor(near) and { near[1], near[2], near[3], 1 } or copy(out.success)
	local lightest = lightestOf(out)
	out.arrowText = { liftTo(lightest, out.text, out.arrow) }
	out.arrowNearText = { liftTo(lightest, out.text, out.arrowNear) }
	out.arrowText[4], out.arrowNearText[4] = 1, 1
	for name, from in pairs(HOUSE_EXTRA) do
		if not out[name] then out[name] = copy(out[from]) end
	end
	out.accentLine = { r, g, b, 0.35 }
	out.padSelect = { r, g, b, 0.12 }
	out.chipAccent = { r, g, b, 0.16 }
	out.inputBg = { out.shade[1], out.shade[2], out.shade[3], 0.35 }
	out.skin = "polestar"
	return out
end

-- The whole resolved palette (read-only), e.g. for tests and the options.
function Theme.Palette()
	if not P then P = resolve() end
	return P
end

function Theme.Accent()
	local c = Theme.Palette().accent
	return c[1], c[2], c[3]
end

function Theme.Color(name)
	local pal = Theme.Palette()
	local c = pal[name] or pal.text
	return c[1], c[2], c[3], c[4]
end

-- "ffrrggbb" for |c escapes.
function Theme.Hex(name)
	local r, g, b = Theme.Color(name)
	return format("ff%02x%02x%02x", floor(r * 255 + 0.5), floor(g * 255 + 0.5), floor(b * 255 + 0.5))
end

-- An ink wash at one of the house alphas (Theme.WASH), as a colour.
function Theme.Wash(name)
	local pal = Theme.Palette()
	local c = pal[WASH[name] and name or "border"]
	return c[1], c[2], c[3], c[4]
end

-- The lightest place a list or detail name sits: the panel ground under the
-- selected wash (a selected row). -> { r, g, b }
function Theme.LightestGround()
	return lightestOf(Theme.Palette())
end

-- A colour from outside the palette (an item quality, a quest difficulty)
-- moved toward the text colour until it reads at 4.5:1 on the lightest
-- ground (the subject colours' floor). -> r, g, b
function Theme.Legible(r, g, b)
	local pal = Theme.Palette()
	return liftTo(lightestOf(pal), pal.text, { r, g, b })
end

-- The window border: shown (ui.border), and its thickness in physical
-- pixels (ui.borderSize, 1-4). Its colour is the "windowBorder" token.
-- -> shown, size
function Theme.WindowBorder()
	if get("ui.border") == false then return false, 0 end
	local n = get("ui.borderSize")
	if type(n) ~= "number" then n = 1 end
	return true, math.max(1, math.min(4, floor(n + 0.5)))
end

-- Whether the starlit header band is drawn (ui.band).
function Theme.ShowsBand()
	return get("ui.band") ~= false
end

-- The window ground's opacity (ui.bgOpacity, every Polestar window).
function Theme.GroundAlpha()
	local a = get("ui.bgOpacity")
	if type(a) ~= "number" then a = 0.94 end
	return a
end

---------------------------------------------------------------------------
-- Media
---------------------------------------------------------------------------

function Theme.Media(name)
	if name == "icon-skull" then return "Interface\\TargetingFrame\\UI-RaidTargetingIcon_8" end
	return MEDIA .. "UI\\" .. name
end

-- Glyphs a skin draws its own way (DIRECTION_B_HALO.md §7: the report flag
-- and the Nearby services house).
GAME_ICON = { bug = "flag", ["icon-goto"] = "house" }
SKIN_ICON = { halo = GAME_ICON, hearth = GAME_ICON, forever = GAME_ICON, blizzard = GAME_ICON, classic = GAME_ICON }

-- A glyph's name in the skin in use.
function Theme.Icon(name)
	local own = SKIN_ICON[Theme.SkinKey()]
	return own and own[name] or name
end

-- The night-sky band is drawn 1024x128 at 1:1. A header shows the top-left
-- w x h of it (texcoords), so stars never stretch.
Theme.BAND_W, Theme.BAND_H = 1024, 128
function Theme.BandCoords(w, h, yOffset)
	local x1 = w / Theme.BAND_W
	if x1 > 1 then x1 = 1 end
	local y0 = (yOffset or 0) / Theme.BAND_H
	local y1 = y0 + h / Theme.BAND_H
	if y1 > 1 then y1 = 1 end
	return 0, x1, y0, y1
end

-- The band itself: the sky (a mask tinted with the scheme's sky colour,
-- fading into whatever ground is under it) with the stars over it. Returns
-- the sky texture; position, size, texcoords and visibility set on it carry
-- to the stars. A header band goes when the player turns the band off
-- (ui.band; painted clear, so its callers keep their own show/hide); `art`
-- marks a band standing in for missing zone art, which always stays.
bands = setmetatable({}, { __mode = "k" }) -- sky texture -> true

function paintBand(sky)
	local on = sky.psArt or Theme.ShowsBand()
	local r, g, b = Theme.Color("sky")
	sky:SetVertexColor(r, g, b, on and 1 or 0)
	local sr, sg, sb, sa = Theme.Color("star")
	sky.psStars:SetVertexColor(sr, sg, sb, on and (sa or 1) or 0)
end

function Theme.Band(parent, layer, sub, art)
	sub = sub or -5
	local sky = parent:CreateTexture(nil, layer or "BACKGROUND", nil, sub)
	sky:SetTexture(Theme.Media("band"))
	local stars = parent:CreateTexture(nil, layer or "BACKGROUND", nil, sub + 1)
	stars:SetTexture(Theme.Media("band-stars"))
	stars:SetAllPoints(sky)
	sky.psStars = stars
	sky.psArt = art and true or nil
	for _, method in ipairs({ "SetTexCoord", "Show", "Hide", "SetShown", "SetAlpha" }) do
		local own, theirs = sky[method], stars[method]
		sky[method] = function(self, ...)
			own(self, ...)
			theirs(stars, ...)
		end
	end
	bands[sky] = true
	paintBand(sky)
	return sky
end

-- Glyph for a goal verb. Every verb in the guide format has one; anything
-- else (a verb newer than this build) gets the note glyph, never a missing
-- texture.
VERB_ICON = {}
for _, v in ipairs({ "accept", "turnin", "complete", "kill", "collect", "goto", "talk", "interact", "use", "sethome",
	"hearth", "getfp", "fly", "train", "buy", "vendor", "level", "note", "skill", "learn", "craft", "rep", "explore", "achieve" }) do
	VERB_ICON[v] = MEDIA .. "UI\\icon-" .. v
end
VERB_ICON.enter = VERB_ICON.goto
VERB_ICON.cast = VERB_ICON.use
VERB_ICON.wait = MEDIA .. "UI\\hourglass"

function Theme.VerbIcon(t)
	return VERB_ICON[t] or VERB_ICON.note
end

---------------------------------------------------------------------------
-- Fonts
---------------------------------------------------------------------------

FACES = {
	regular = MEDIA .. "Fonts\\Inter-Regular.ttf",
	medium = MEDIA .. "Fonts\\Inter-Medium.ttf",
	semibold = MEDIA .. "Fonts\\Inter-SemiBold.ttf",
}

-- The size ladder, read at arm's length over a busy game world.
ROLES = {
	hero = { "semibold", 26 },     -- shell page titles
	display = { "semibold", 18 },  -- the guide's step title, empty-state titles
	title = { "semibold", 15 },    -- window and guide titles
	heading = { "semibold", 13 },  -- section headers
	body = { "medium", 13 },       -- goal lines, row labels
	label = { "medium", 12 },      -- controls
	note = { "regular", 12 },      -- tips and descriptions
	small = { "medium", 11 },      -- secondary lines
	number = { "semibold", 12 },   -- counters
	caption = { "semibold", 11 },  -- pills and chips
	goal = { "medium", 14 },        -- the guide window's goal lines
	name = { "semibold", 15 },     -- the person to talk to now
	mono = { "medium", 12 },
}

-- Fira Sans (SIL OFL 1.1), the Halo skin's face: Latin, Greek and Cyrillic.
FIRA = {
	regular = MEDIA .. "Fonts\\FiraSans-Regular.ttf",
	medium = MEDIA .. "Fonts\\FiraSans-Medium.ttf",
	semibold = MEDIA .. "Fonts\\FiraSans-SemiBold.ttf",
}
FAMILIES = { inter = FACES, fira = FIRA }

-- The font a skin starts with (ui.font "skin", the default): the house
-- style and Blizzard the game's own, Halo Fira Sans.
SKIN_FONT = { polestar = "game", halo = "fira", hearth = "game", forever = "game", blizzard = "game", classic = "game" }

-- A skin's own sizes, where they differ from the ladder above (the handoff's
-- typography: DIRECTION_B_HALO.md §2, the same in DIRECTION_A_BLIZZARD.md §2).
SKIN_ROLES = {
	halo = { hero = { "semibold", 24 } },
	hearth = { hero = { "semibold", 24 } },
}

---------------------------------------------------------------------------
