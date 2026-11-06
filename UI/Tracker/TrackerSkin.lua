-- ============================================================================
-- TuWoW_Leveling — UI/Tracker/TrackerSkin.lua
-- Visual identity for the "TuWoW Leveling" floating step tracker:
-- Ornate metallic gold & obsidian frame inspired by classic WoW, with Zygor's
-- step tracking workflow, individual quest cards, and bottom XP bar.
-- ============================================================================

local ADDON, ns = ...
ns.UI = ns.UI or {}
local Tracker = ns.UI.Tracker or {}
ns.UI.Tracker = Tracker

local Skin = {}
Tracker.Skin = Skin

local max, min = math.max, math.min

local MEDIA_BASE    = "Interface\\AddOns\\" .. ADDON .. "\\Media\\"
local MEDIA_UI      = MEDIA_BASE .. "UI\\"
local MEDIA_NAV     = MEDIA_BASE .. "Nav\\"
local MEDIA_MAP     = MEDIA_BASE .. "Map\\"
local MEDIA_TRACKER = MEDIA_BASE .. "Tracker\\"
local WHITE         = "Interface\\Buttons\\WHITE8X8"

Skin.WHITE            = WHITE
Skin.MEDIA_BASE       = MEDIA_BASE
Skin.MEDIA_UI         = MEDIA_UI
Skin.MEDIA_ICONS      = MEDIA_UI
Skin.MEDIA_BAND       = MEDIA_UI
Skin.MEDIA_NAV        = MEDIA_NAV
Skin.MEDIA_MAP        = MEDIA_MAP
Skin.MEDIA_TRACKER    = MEDIA_TRACKER

-- High-fidelity textures for the TuWoW Leveling redesign
Skin.EMBLEM_W         = MEDIA_UI .. "emblem-w"
Skin.STAR_MEDALLION   = MEDIA_UI .. "star-medallion"
Skin.ICON_MINUS       = MEDIA_UI .. "icon-minus"
Skin.ICON_EXCLAMATION = MEDIA_UI .. "icon-exclamation"
Skin.XP_FILL          = MEDIA_UI .. "xp-bar-fill"
Skin.CORNER_GOLD      = MEDIA_UI .. "corner-gold"

---------------------------------------------------------------------------
-- 1. Master Palette (Ornate Gold & Obsidian Charcoal)
---------------------------------------------------------------------------

Skin.PALETTE = {
	-- Frame backgrounds (deep obsidian & dark charcoal)
	bgMain       = { 0.055, 0.050, 0.045, 0.96 },
	bgHeader     = { 0.082, 0.075, 0.065, 0.98 },
	bgNav        = { 0.065, 0.060, 0.055, 0.95 },
	bgCard       = { 0.086, 0.082, 0.078, 0.92 },
	bgSticky     = { 0.100, 0.080, 0.050, 0.88 },
	bgFooter     = { 0.050, 0.045, 0.040, 0.95 },

	-- Card styles (Active Gold vs Pending Charcoal vs Done)
	cardActiveBg    = { 0.280, 0.170, 0.020, 0.96 },
	cardActiveBgBot = { 0.140, 0.080, 0.010, 0.96 },
	cardActiveBorder= { 1.000, 0.824, 0.180, 1.00 },
	cardActiveGleam = { 1.000, 0.920, 0.450, 0.45 },

	cardPendingBg    = { 0.080, 0.080, 0.090, 0.92 },
	cardPendingBorder= { 0.380, 0.400, 0.450, 0.80 },

	cardDoneBg       = { 0.045, 0.045, 0.050, 0.65 },
	cardDoneBorder   = { 0.180, 0.380, 0.220, 0.60 },

	-- Metals & Filigree
	goldBright   = { 1.000, 0.824, 0.000, 1.00 },
	goldWarm     = { 0.922, 0.745, 0.314, 1.00 },
	goldTitle    = { 1.000, 0.855, 0.290, 1.00 },
	bronzeBorder = { 0.620, 0.510, 0.280, 0.95 },
	bronzeDim    = { 0.380, 0.310, 0.195, 0.75 },
	silverBorder = { 0.500, 0.520, 0.560, 0.80 },

	-- Text hierarchy
	textGold     = { 1.000, 0.840, 0.240, 1.00 },
	textIvory    = { 0.960, 0.935, 0.880, 1.00 },
	textSilver   = { 0.780, 0.760, 0.720, 1.00 },
	textMuted    = { 0.550, 0.520, 0.460, 1.00 },
	textCoords   = { 0.550, 0.720, 0.880, 1.00 }, -- Soft ice-blue coordinates for pending
	textDone     = { 0.420, 0.860, 0.520, 0.92 },

	-- Zygor Goal Progress Colors
	goalZero     = { 0.255, 0.078, 0.078, 0.80 },
	goalMid      = { 0.440, 0.295, 0.055, 0.82 },
	goalAlmost   = { 0.220, 0.390, 0.105, 0.82 },
	goalDone     = { 0.075, 0.365, 0.145, 0.84 },
	goalQuest    = { 0.225, 0.168, 0.065, 0.80 },
	goalTravel   = { 0.075, 0.155, 0.265, 0.78 },
	goalNote     = { 0.125, 0.112, 0.095, 0.72 },
	goalSticky   = { 0.205, 0.150, 0.055, 0.78 },
	goalSkipped  = { 0.090, 0.085, 0.080, 0.45 },

	barZero      = { 0.880, 0.260, 0.240, 0.95 },
	barMid       = { 0.980, 0.720, 0.180, 0.95 },
	barDone      = { 0.240, 0.880, 0.420, 0.98 },
	barQuest     = { 1.000, 0.820, 0.180, 0.95 },
	barTravel    = { 0.380, 0.720, 0.980, 0.95 },
	barNote      = { 0.620, 0.540, 0.380, 0.75 },
}

function Skin.Color(key)
	local c = Skin.PALETTE[key] or Skin.PALETTE.textIvory
	return c[1], c[2], c[3], c[4] or 1
end

---------------------------------------------------------------------------
-- 2. Zygor 3-Stop Gradient & Goal State Coloring
---------------------------------------------------------------------------

local function lerp(a, b, t)
	return a + (b - a) * t
end

local function gradient3(t, c1, c2, c3)
	t = max(0, min(1, t or 0))
	if t <= 0.5 then
		local k = t * 2
		return lerp(c1[1], c2[1], k), lerp(c1[2], c2[2], k), lerp(c1[3], c2[3], k), lerp(c1[4], c2[4], k)
	else
		local k = (t - 0.5) * 2
		return lerp(c2[1], c3[1], k), lerp(c2[2], c3[2], k), lerp(c2[3], c3[3], k), lerp(c2[4], c3[4], k)
	end
end

function Skin.GoalColors(goal, isSticky)
	local P = Skin.PALETTE
	if not goal then
		local c, b = P.goalNote, P.barNote
		return c[1], c[2], c[3], c[4], b[1], b[2], b[3], b[4], nil
	end

	if goal.status == "skipped" or goal.dismissed then
		local c = P.goalSkipped
		return c[1], c[2], c[3], c[4], 0.35, 0.33, 0.30, 0.5, nil
	end

	if goal.status == "done" then
		local c, b = P.goalDone, P.barDone
		return c[1], c[2], c[3], c[4], b[1], b[2], b[3], b[4], 1
	end

	local prog = goal.progress
	if type(prog) == "table" and type(prog.max) == "number" and prog.max > 0 then
		local cur = max(0, min(prog.max, tonumber(prog.cur) or 0))
		local frac = cur / prog.max
		if frac >= 1 then
			local c, b = P.goalDone, P.barDone
			return c[1], c[2], c[3], c[4], b[1], b[2], b[3], b[4], 1
		elseif frac > 0 then
			local r, g, bl, a = gradient3(frac, P.goalZero, P.goalMid, P.goalAlmost)
			local br, bg, bbl, ba = gradient3(frac, P.barZero, P.barMid, P.barDone)
			return r, g, bl, a, br, bg, bbl, ba, frac
		else
			local c = isSticky and P.goalSticky or P.goalZero
			local b = P.barZero
			return c[1], c[2], c[3], c[4], b[1], b[2], b[3], b[4], 0
		end
	end

	if isSticky then
		local c, b = P.goalSticky, P.barMid
		return c[1], c[2], c[3], c[4], b[1], b[2], b[3], b[4], nil
	end

	local t = goal.t
	if t == "accept" or t == "turnin" or t == "talk" then
		local c, b = P.goalQuest, P.barQuest
		return c[1], c[2], c[3], c[4], b[1], b[2], b[3], b[4], nil
	elseif t == "kill" or t == "collect" or t == "buy" or t == "grind" or t == "ding" then
		local c, b = P.goalZero, P.barZero
		return c[1], c[2], c[3], c[4], b[1], b[2], b[3], b[4], 0
	elseif t == "goto" or t == "fly" or t == "hearth" or t == "fpath" or t == "home" then
		local c, b = P.goalTravel, P.barTravel
		return c[1], c[2], c[3], c[4], b[1], b[2], b[3], b[4], nil
	end

	local c, b = P.goalNote, P.barNote
	return c[1], c[2], c[3], c[4], b[1], b[2], b[3], b[4], nil
end

---------------------------------------------------------------------------
-- 3. Verb Icons & Font Helpers
---------------------------------------------------------------------------

local VERB_ICONS = {
	accept     = "icon-accept",
	turnin     = "icon-turnin",
	kill       = "icon-kill",
	collect    = "icon-collect",
	talk       = "icon-talk",
	["goto"]   = "icon-goto",
	hearth     = "icon-hearth",
	home       = "icon-sethome",
	bind       = "icon-sethome",
	fly        = "icon-fly",
	fpath      = "icon-getfp",
	buy        = "icon-buy",
	vendor     = "icon-vendor",
	train      = "icon-train",
	use        = "icon-use",
	equip      = "icon-use",
	ding       = "icon-level",
	grind      = "icon-kill",
	skill      = "icon-skill",
	reputation = "icon-rep",
	note       = "icon-note",
}

function Skin.VerbIcon(verb, status, isCurrent)
	if status == "done" then
		return MEDIA_UI .. "check"
	elseif status == "skipped" then
		return MEDIA_UI .. "close"
	end
	-- In the reference mockup, the active quest card features the bright golden exclamation mark
	if isCurrent and (verb == "accept" or verb == "turnin" or verb == "buy" or not verb or verb == "note") then
		return Skin.ICON_EXCLAMATION
	end
	return MEDIA_UI .. (VERB_ICONS[verb] or "icon-note")
end

function Skin.VerbTint(verb, status, isCurrent)
	if status == "done" then
		return 0.30, 0.95, 0.48
	elseif status == "skipped" then
		return 0.55, 0.52, 0.46
	end
	if isCurrent then
		return 1.00, 0.90, 0.35
	end
	if verb == "accept" or verb == "turnin" then
		return 1.00, 0.84, 0.18
	elseif verb == "kill" then
		return 0.96, 0.38, 0.34
	elseif verb == "collect" or verb == "buy" or verb == "use" or verb == "equip" then
		return 0.96, 0.76, 0.28
	elseif verb == "talk" then
		return 0.70, 0.86, 1.00
	elseif verb == "goto" or verb == "fly" or verb == "fpath" or verb == "hearth" or verb == "home" then
		return 0.48, 0.80, 1.00
	end
	return 0.88, 0.82, 0.68
end

function Skin.ApplyFont(fs, size, flags)
	local scale = tonumber(ns.Get and ns.Get("ui.textSize")) or 1
	local px = math.floor((size or 12) * scale + 0.5)
	local T = ns.Theme
	if T and T.FontSpec then
		local ok, path = pcall(T.FontSpec, "body")
		if ok and path and fs:SetFont(path, px, flags or "") then return end
	end
	local std = STANDARD_TEXT_FONT or "Fonts\\FRIZQT__.TTF"
	fs:SetFont(std, px, flags or "")
end

---------------------------------------------------------------------------
-- 4. Ornate Gold & Obsidian Frame Chrome
---------------------------------------------------------------------------

function Skin.ApplyForeverFrame(f, bgKey)
	local bg = Skin.PALETTE[bgKey or "bgMain"] or Skin.PALETTE.bgMain
	if not f._twBg then
		local back = f:CreateTexture(nil, "BACKGROUND", nil, -7)
		back:SetAllPoints()
		back:SetTexture(WHITE)
		f._twBg = back

		-- Inner dark bevel
		local inner = CreateFrame("Frame", nil, f)
		inner:SetPoint("TOPLEFT", 1, -1)
		inner:SetPoint("BOTTOMRIGHT", -1, 1)
		inner:SetBackdrop({
			edgeFile = WHITE,
			edgeSize = 1,
		})
		inner:SetBackdropBorderColor(0.02, 0.02, 0.02, 0.95)
		f._twInner = inner

		-- Outer burnished bronze/gold border
		local border = CreateFrame("Frame", nil, f)
		border:SetAllPoints()
		border:SetBackdrop({
			edgeFile = WHITE,
			edgeSize = 1,
		})
		local b = Skin.PALETTE.bronzeBorder
		border:SetBackdropBorderColor(b[1], b[2], b[3], b[4])
		f._twBorder = border

		-- 4 Ornate corner gold brackets
		f._twCorners = {}
		local corners = {
			{ point = "TOPLEFT",     x = -2, y =  2, u1 = 0, u2 = 1, v1 = 0, v2 = 1 },
			{ point = "TOPRIGHT",    x =  2, y =  2, u1 = 1, u2 = 0, v1 = 0, v2 = 1 },
			{ point = "BOTTOMLEFT",  x = -2, y = -2, u1 = 0, u2 = 1, v1 = 1, v2 = 0 },
			{ point = "BOTTOMRIGHT", x =  2, y = -2, u1 = 1, u2 = 0, v1 = 1, v2 = 0 },
		}
		for i, c in ipairs(corners) do
			local tex = f:CreateTexture(nil, "OVERLAY", nil, 6)
			tex:SetSize(18, 18)
			tex:SetPoint(c.point, f, c.point, c.x, c.y)
			tex:SetTexture(Skin.CORNER_GOLD)
			tex:SetTexCoord(c.u1, c.u2, c.v1, c.v2)
			f._twCorners[i] = tex
		end

		-- Top gold highlight gleam
		local gleam = f:CreateTexture(nil, "BORDER", nil, 2)
		gleam:SetTexture(WHITE)
		gleam:SetHeight(1)
		gleam:SetPoint("TOPLEFT", f, "TOPLEFT", 4, -1)
		gleam:SetPoint("TOPRIGHT", f, "TOPRIGHT", -4, -1)
		gleam:SetVertexColor(1.0, 0.88, 0.40, 0.50)
		f._twGleam = gleam
	end
	local opacity = tonumber(ns.Get and ns.Get("ui.bgOpacity")) or 0.96
	f._twBg:SetVertexColor(bg[1], bg[2], bg[3], min(1, bg[4] * (opacity / 0.96)))
end

-- Styles a button with a dark charcoal center and ornate bright gold border
function Skin.ApplyGoldButton(btn)
	btn:SetBackdrop({
		bgFile = WHITE,
		edgeFile = WHITE,
		tile = false, tileSize = 0, edgeSize = 1,
		insets = { left = 1, right = 1, top = 1, bottom = 1 }
	})
	btn:SetBackdropColor(0.10, 0.09, 0.08, 0.95)
	btn:SetBackdropBorderColor(0.92, 0.76, 0.28, 0.95)

	-- Top gleam line
	if not btn._gleam then
		local g = btn:CreateTexture(nil, "BORDER", nil, 1)
		g:SetHeight(1)
		g:SetPoint("TOPLEFT", 1, -1)
		g:SetPoint("TOPRIGHT", -1, -1)
		g:SetTexture(WHITE)
		g:SetVertexColor(1.0, 0.92, 0.55, 0.6)
		btn._gleam = g
	end
end
