-- Widgets base: paint, tooltips, buttons, pills, and setting bindings
local ADDON, ns = ...
local _env = ns.ModuleEnv({}, { "Anim", "bound", "catcher", "CHECK_ON", "CHECK_UP", "colored", "conditional", "CONTROL_KINDS", "dependents", "DROPDOWN_ARROW", "DROPDOWN_MIN", "DROPDOWN_W", "ELLIPSIS", "floor", "fontHandlers", "fontKey", "FRAMES", "gameTip", "GEAR", "GEAR_GAP", "HELP_MAX", "HOUSE_SHELL", "ipairs", "KNOB", "L", "max", "menu", "MENU_PAD", "MENU_ROW", "MENU_SEP", "min", "modal", "MODAL_FOOT", "MODAL_PAD", "MODAL_SCRIM", "MODAL_W", "NAV_ROW", "NAV_SEP", "painters", "pairs", "PLACEHOLDER_PAD", "PLACEHOLDER_X", "RAIL_ROW", "registry", "registryListeners", "RESET_W", "RIM_EDGE", "RIM_HI", "RIM_MID", "RIM_OUTER", "ROW_MIN", "ROW_PAD", "SCALE_HI", "SCALE_LO", "SCALE_STEP", "SCALE_TRACK", "SHELL", "SHELL_METRIC", "SLIDER_MIN", "SLIDER_THUMB", "SLIDER_W", "SUBTITLE_H", "SUBTITLE_LINES", "Theme", "THROW_A", "THROW_H", "TILE_H", "TILE_PAD", "TOGGLE_H", "TOGGLE_W", "type", "VALUE_W", "W", "WHITE" })
ns._widgetsEnv = _env
setfenv(1, _env)

-- Polestar.Widgets: the widget kit the guide window, picker and options are
-- built from. Every piece paints itself from Polestar.Theme.
--
-- Setting controls (Toggle, Slider, Dropdown, Swatch) are rows, 40px high
-- at least, label left and control right; their description is the row's
-- tooltip, or shown under the label (W.RowDetails: the options window).
-- Each is bound to a settings path: it reads Polestar.Get, writes
-- Polestar.Set, and refreshes on SETTING_CHANGED, so a change made anywhere
-- (slash command, another control, a reset) shows up everywhere.
--
-- W.Shell is the window both the options and the guide picker live in: a
-- sidebar (emblem, wordmark and tagline, search, navigation, the version and
-- its stage chip), a night-sky header
-- band with the page title, a tab row, a scrolling body over a faint emblem
-- watermark, and a footer bar.


W = {}
ns.Widgets = W

Theme, Anim = ns.Theme, ns.Anim
type, pairs, ipairs, floor, max, min = type, pairs, ipairs, math.floor, math.max, math.min
L = ns.L

WHITE = Theme.Media("white")

W.ROW_H = 40

-- A setting row's height in the skin in use (Halo 34, Blizzard 28).
function W.RowH()
	return Theme.Metric("row", W.ROW_H)
end

---------------------------------------------------------------------------
-- Theme-following paint
---------------------------------------------------------------------------

colored = setmetatable({}, { __mode = "k" }) -- region -> colour name
painters = setmetatable({}, { __mode = "k" }) -- object -> fn(object)

-- Colour a font string or texture by palette name, and keep it coloured
-- through theme changes. alpha multiplies the palette alpha.
function W.Color(region, name, alpha)
	colored[region] = name
	region.psAlpha = alpha
	local r, g, b, a = Theme.Color(name)
	a = (a or 1) * (alpha or 1)
	if region:GetObjectType() == "Texture" then
		region:SetVertexColor(r, g, b, a)
	else
		region:SetTextColor(r, g, b, a)
	end
	return region
end

-- Stop following the theme (the caller colours the region itself).
function W.Uncolor(region)
	colored[region] = nil
end

-- Run fn(obj) now and on every theme change.
function W.Painter(obj, fn)
	painters[obj] = fn
	fn(obj)
	return obj
end

Theme.OnChanged(function()
	for region, name in pairs(colored) do W.Color(region, name, region.psAlpha) end
	for obj, fn in pairs(painters) do fn(obj) end
end)

-- One line by default, cut with an ellipsis at its width: that is how a
-- single-line string stays single, not SetMaxLines(1). On a cold client start
-- Forever left max-lines strings blank until their text changed (the guide
-- window's name, tip and "Then:" lines) while no-wrap strings drew.
function W.Text(parent, role, color, layer)
	local fs = parent:CreateFontString(nil, layer or "OVERLAY")
	Theme.Font(fs, role or "body")
	W.Color(fs, color or "text")
	fs:SetJustifyH("LEFT")
	fs:SetJustifyV("MIDDLE")
	fs:SetWordWrap(false)
	return fs
end

-- A texture: a glyph or "white", tinted by palette name or left untinted.
function W.Tex(parent, layer, media, color, sub)
	local t = parent:CreateTexture(nil, layer or "ARTWORK", nil, sub)
	t:SetTexture(media and Theme.Media(media) or WHITE)
	if color then W.Color(t, color) end
	return t
end

-- A one-pixel rule in the divider wash.
function W.Divider(parent, vertical, alpha)
	local t = parent:CreateTexture(nil, "BORDER")
	t:SetTexture(WHITE)
	W.Painter(t, function(tex)
		local r, g, b, a = Theme.Wash("divider")
		tex:SetVertexColor(r, g, b, a * (alpha or 1))
		if vertical then tex:SetWidth(Theme.Pixel(parent)) else tex:SetHeight(Theme.Pixel(parent)) end
	end)
	return t
end

-- A flat fill in a palette colour.
function W.Fill(parent, color, layer, sub)
	local t = parent:CreateTexture(nil, layer or "BACKGROUND", nil, sub or -6)
	t:SetTexture(WHITE)
	t:SetAllPoints(parent)
	W.Color(t, color)
	return t
end

---------------------------------------------------------------------------
-- Tooltips (the game tooltip; EllesmereUI skins it when present)
---------------------------------------------------------------------------

-- lines: strings, or { left = , right = } pairs, or { text, r, g, b }.
function W.Tooltip(owner, anchor, title, lines)
	if not GameTooltip then return end
	GameTooltip:SetOwner(owner, anchor or "ANCHOR_RIGHT")
	GameTooltip:SetText(title or "", 1, 1, 1)
	if lines then
		for i = 1, #lines do
			local l = lines[i]
			if type(l) == "table" then
				if l.right ~= nil then
					local r, g, b = Theme.Color("textDim")
					GameTooltip:AddDoubleLine(l.left, l.right, r, g, b, 1, 1, 1)
				else
					GameTooltip:AddLine(l[1], l[2], l[3], l[4], true)
				end
			else
				local r, g, b = Theme.Color("textDim")
				GameTooltip:AddLine(l, r, g, b, true)
			end
		end
	end
	GameTooltip:Show()
end

function W.HideTooltip(owner)
	if GameTooltip and (not owner or GameTooltip:GetOwner() == owner) then GameTooltip:Hide() end
end

function simpleTip(self)
	if self.psTip then W.Tooltip(self, self.psTipAnchor or "ANCHOR_TOP", self.psTip, self.psTipLines) end
end
function hideTip(self) W.HideTooltip(self) end
W.SimpleTip, W.HideTip = simpleTip, hideTip

-- The game's own item and spell tooltips on Polestar's buttons (reward
-- tiles, loot tiles, gear picks, rare drops), and their modified clicks.
--   W.ItemTip(owner, itemID, extra?)   -- extra(tooltip): lines after the game's
--   W.SpellTip(owner, spellID, extra?)
--   W.ItemClick(itemID) -> handled     -- Shift links, Ctrl tries on, Alt guides
--   W.SpellClick(spellID) -> handled   -- Shift links
--   W.PrefetchItem(itemID), W.PrefetchSpell(spellID)
-- An item or spell the client has not cached yet shows "Retrieving item
-- information" and the client's own refresh does not reliably redraw it, so
-- the tooltip is set again when GET_ITEM_INFO_RECEIVED / SPELL_DATA_LOAD_RESULT
-- brings that ID while the same button still owns it.
gameTip = nil -- { owner, kind, id, extra } of the tooltip last set here

function setGameTip(owner, kind, id, extra)
	local tip = GameTooltip
	if not (tip and owner and type(id) == "number") then return end
	local C = ns.Compat
	if kind == "item" then
		if C.RequestItem then C.RequestItem(id) end
	elseif not tip.SetSpellByID then
		return
	elseif C.RequestSpell then
		C.RequestSpell(id)
	end
	tip:SetOwner(owner, "ANCHOR_RIGHT")
	if kind == "item" then tip:SetHyperlink("item:" .. id) else tip:SetSpellByID(id) end
	if extra then extra(tip) end
	tip:Show()
	gameTip = { owner = owner, kind = kind, id = id, extra = extra }
end

function W.ItemTip(owner, itemID, extra) setGameTip(owner, "item", itemID, extra) end
function W.SpellTip(owner, spellID, extra) setGameTip(owner, "spell", spellID, extra) end

function owns(owner)
	local tip = GameTooltip
	if not tip then return false end
	if tip.IsOwned then return tip:IsOwned(owner) and true or false end
	return tip.GetOwner and tip:GetOwner() == owner or false
end

function arrived(kind, id)
	local g = gameTip
	if not (g and g.kind == kind and (id == nil or id == g.id)) then return end
	if GameTooltip and GameTooltip.IsShown and not GameTooltip:IsShown() then gameTip = nil return end
	if not owns(g.owner) then gameTip = nil return end
	setGameTip(g.owner, kind, g.id, g.extra)
end

if ns.RegisterEvent then
	ns.RegisterEvent("GET_ITEM_INFO_RECEIVED", function(_, itemID) arrived("item", itemID) end)
	ns.RegisterEvent("SPELL_DATA_LOAD_RESULT", function(_, spellID) arrived("spell", spellID) end)
end

function W.PrefetchItem(itemID) if ns.Compat.RequestItem then ns.Compat.RequestItem(itemID) end end
function W.PrefetchSpell(spellID) if ns.Compat.RequestSpell then ns.Compat.RequestSpell(spellID) end end

-- A modified click on an item button, as on a bag item: the client's
-- HandleModifiedItemClick (Shift: chat link, Ctrl: dressing room), whose
-- post-hook (Core/Hooks.lua) runs Polestar's Alt-click guide. An item not
-- cached yet has no link: it is requested, and the Alt-click still guides.
function W.ItemClick(itemID)
	if type(itemID) ~= "number" or not (IsModifiedClick and IsModifiedClick()) then return false end
	local C = ns.Compat
	local link = C.ItemLink and C.ItemLink(itemID)
	if link and HandleModifiedItemClick then
		HandleModifiedItemClick(link)
	else
		if C.RequestItem then C.RequestItem(itemID) end
		if ns.Hooks and ns.Hooks.OnItemClick then ns.Hooks.OnItemClick("item:" .. itemID) end
	end
	return true
end

-- Shift-click on a spell button links the spell in chat.
function W.SpellClick(spellID)
	if type(spellID) ~= "number" or not (IsModifiedClick and IsModifiedClick("CHATLINK")) then return false end
	local link = ns.Compat.SpellLink and ns.Compat.SpellLink(spellID)
	local insert = (ChatFrameUtil and ChatFrameUtil.InsertLink) or ChatEdit_InsertLink
	if link and insert then insert(link) end
	return true
end

---------------------------------------------------------------------------
-- Buttons
---------------------------------------------------------------------------

function hoverTexture(frame, alphaScale)
	local hl = frame:CreateTexture(nil, "HIGHLIGHT")
	hl:SetTexture(WHITE)
	hl:SetAllPoints(frame)
	W.Painter(hl, function(t)
		local r, g, b, a = Theme.Wash("hover")
		t:SetVertexColor(r, g, b, a * (alphaScale or 1))
	end)
	return hl
end
W.Hover = hoverTexture

-- A glyph-only button: the glyph sits in the dim text colour and brightens
-- under the cursor; a press nudges it down a pixel, like a key going in.
-- The framed square a Blizzard icon button sits in, on the buttons that ask
-- for it (b.psFramed; DIRECTION_A_BLIZZARD.md §3): "icon" #3A2C14 to #1A1309
-- with a #8A6A2A edge, "red" (the small square buttons, ‹ ›) #8A1C10 to
-- #420B05 with a #C79C3E edge. Hidden in the other skins.
FRAMES = {
	icon = { top = { 0.227, 0.173, 0.078 }, bottom = { 0.102, 0.075, 0.035 }, edge = { 0.541, 0.416, 0.165 } },
	red = { top = { 0.541, 0.11, 0.063 }, bottom = { 0.259, 0.043, 0.02 }, edge = { 0.78, 0.612, 0.243 } },
}
function iconFrame(b)
	-- The game's looks draw their own plates, page arrows and close button.
	Theme.KitIconButton(b)
	local spec = FRAMES[rawget(b, "psFramed") or ""]
	local bliz = Theme.SkinKey() == "hearth" and spec ~= nil
	local f = rawget(b, "psFrame")
	if not f and bliz then
		f = b:CreateTexture(nil, "BACKGROUND", nil, -6)
		f:SetTexture(WHITE)
		f:SetAllPoints(b)
		b.psFrame = f
	end
	if not f then return end
	f:SetShown(bliz)
	if bliz then
		local t, bo, e = spec.top, spec.bottom, spec.edge
		if f.SetGradient and CreateColor then
			f:SetGradient("VERTICAL", CreateColor(bo[1], bo[2], bo[3], 1), CreateColor(t[1], t[2], t[3], 1))
		else
			f:SetVertexColor(t[1], t[2], t[3], 1)
		end
		Theme.Border(b, e[1], e[2], e[3], 1)
	elseif b.psBorder then
		for i = 1, 4 do b.psBorder[i]:Hide() end
	end
end

function W.IconButton(parent, icon, size, tip, onClick, glyphSize)
	local b = CreateFrame("Button", nil, parent)
	size = size or 22
	b:SetSize(size, size)
	hoverTexture(b)
	local g = b:CreateTexture(nil, "ARTWORK")
	b.psIconName = icon
	g:SetTexture(Theme.Media(Theme.Icon(icon)))
	local gs = glyphSize or floor(size * 0.6 + 0.5)
	g:SetSize(gs, gs)
	g:SetPoint("CENTER", b, "CENTER", 0, 0)
	b.Icon = g
	W.Color(g, "icon")
	b.psTip = tip
	W.Painter(b, function(self)
		self.Icon:SetTexture(Theme.Media(Theme.Icon(self.psIconName)))
		iconFrame(self)
	end)
	b:SetScript("OnEnter", function(self)
		if self:IsEnabled() then W.Color(self.Icon, self.psActive and "accent" or "iconHover") end
		simpleTip(self)
		if self.psOnEnter then self.psOnEnter(self) end
	end)
	b:SetScript("OnLeave", function(self)
		W.Color(self.Icon, self.psActive and "accent" or "icon", self:IsEnabled() and 1 or 0.35)
		hideTip(self)
		if self.psOnLeave then self.psOnLeave(self) end
	end)
	b:SetScript("OnMouseDown", function(self) if self:IsEnabled() then self.Icon:SetPoint("CENTER", self, "CENTER", 0, -1) end end)
	b:SetScript("OnMouseUp", function(self) self.Icon:SetPoint("CENTER", self, "CENTER", 0, 0) end)
	if onClick then b:SetScript("OnClick", onClick) end
	return b
end

function W.SetIcon(b, icon)
	b.psIconName = icon
	b.Icon:SetTexture(Theme.Media(Theme.Icon(icon)))
end

-- Ask for Blizzard's framed square on an icon button ("icon" or "red").
function W.SetFramed(b, kind)
	b.psFramed = kind
	iconFrame(b)
end

-- Mark an icon button as "on" (accent glyph) or dim it when disabled.
function W.SetIconState(b, active, enabled)
	b.psActive = active and true or false
	if enabled == false then b:Disable() else b:Enable() end
	W.Color(b.Icon, b.psActive and "accent" or "icon", b:IsEnabled() and 1 or 0.35)
end

-- A text button. opts: { primary = true, ghost = true, danger = true,
-- width = n, icon = name, height = n }.
function W.Button(parent, text, onClick, opts)
	opts = opts or {}
	local b = CreateFrame("Button", nil, parent)
	b.psHeight = opts.height
	b:SetHeight(opts.height or Theme.Metric("buttonH", 28))
	local label = W.Text(b, "label", opts.danger and "danger" or "buttonText")
	label:SetPoint("CENTER", b, "CENTER", 0, 0)
	b.Label = label
	if opts.icon then
		local g = b:CreateTexture(nil, "ARTWORK")
		g:SetTexture(Theme.Media(opts.icon))
		g:SetSize(13, 13)
		b.Icon = g
	end
	b.psPrimary, b.psGhost, b.psDanger = opts.primary, opts.ghost, opts.danger
	b.psFixedWidth = opts.width
	if opts.ghost then
		hoverTexture(b)
	else
		b.psTextButton = true
		Theme.Skin(b, "button")
	end
	W.Painter(b, function(self)
		local icon = rawget(self, "Icon")
		if not self.psHeight then self:SetHeight(Theme.Metric("buttonH", 28)) end
		-- Hearth's primary buttons, and every text button in the game's looks.
		local bliz = Theme.GameSkin() and (self.psPrimary or Theme.Kit() ~= nil)
		if bliz and not self.psGhost then
			-- The game's red button, as the others: an edge of its own would read
			-- as the gamepad's selection.
			W.Color(self.Label, "buttonText")
			if self.psBorder then for i = 1, 4 do self.psBorder[i]:Hide() end end
			if icon then icon:SetVertexColor(Theme.Color("buttonText")) end
			Theme.SetShadow(self.Label, true)
			if rawget(self, "psTopHi") then self.psTopHi:Hide() end
			return
		end
		local d = self.psSkin
		local hi = rawget(self, "psTopHi")
		if self.psPrimary then
			local r, g, bb = Theme.Accent()
			if d and d.bg then d.bg:SetVertexColor(r, g, bb, 1) end
			if self.psBorder then for i = 1, 4 do self.psBorder[i]:SetVertexColor(r, g, bb, 1) end end
			W.Uncolor(self.Label)
			self.Label:SetTextColor(Theme.Color("onAccent"))
			if icon then icon:SetVertexColor(Theme.Color("onAccent")) end
			-- The house primary: one lit line inside its top edge.
			if Theme.SkinKey() == "polestar" and not self.psGhost then
				if not hi then
					hi = self:CreateTexture(nil, "ARTWORK", nil, 7)
					hi:SetTexture(WHITE)
					hi:SetPoint("TOPLEFT", self, "TOPLEFT", 1, -1)
					hi:SetPoint("TOPRIGHT", self, "TOPRIGHT", -1, -1)
					self.psTopHi = hi
				end
				hi:SetHeight(Theme.Pixel(self))
				hi:SetVertexColor(1, 1, 1, 0.55)
				hi:Show()
			elseif hi then
				hi:Hide()
			end
		else
			if hi then hi:Hide() end
			-- The house danger button: red text over a red hairline and the
			-- faintest red ground.
			if self.psDanger and not self.psGhost and Theme.SkinKey() == "polestar" then
				local r, g, bb = Theme.Color("danger")
				if d and d.bg then d.bg:SetVertexColor(r, g, bb, 0.07) end
				if self.psBorder then for i = 1, 4 do self.psBorder[i]:SetVertexColor(r, g, bb, 0.45) end end
			end
			if icon then icon:SetVertexColor(Theme.Color(self.psDanger and "danger" or "textDim")) end
		end
		Theme.SetShadow(self.Label, not self.psPrimary)
	end)
	b:SetScript("OnMouseDown", function(self) if self:IsEnabled() then self.Label:SetPoint("CENTER", self, "CENTER", self.psLabelX or 0, -1) end end)
	b:SetScript("OnMouseUp", function(self) self.Label:SetPoint("CENTER", self, "CENTER", self.psLabelX or 0, 0) end)
	b:SetScript("OnEnter", simpleTip)
	b:SetScript("OnLeave", hideTip)
	if onClick then b:SetScript("OnClick", onClick) end
	W.SetButtonText(b, text)
	return b
end

function W.SetButtonText(b, text)
	b.Label:SetText(text or "")
	local w = b.Label:GetStringWidth()
	local icon = rawget(b, "Icon")
	local iconW = icon and 19 or 0
	if icon then
		b.psLabelX = iconW / 2
		b.Icon:ClearAllPoints()
		b.Icon:SetPoint("RIGHT", b.Label, "LEFT", -6, 0)
	end
	b.Label:SetPoint("CENTER", b, "CENTER", b.psLabelX or 0, 0)
	-- A tight button (the footer's ghosts): 8px either side, no minimum.
	local pad = b.psTight and 8 or Theme.Metric("buttonPad", 16)
	b:SetWidth(b.psFixedWidth or max(b.psTight and 0 or 72, floor(w + iconW + 2 * pad + 0.5)))
end

-- A link: an address shown as text in the accent, no box. Under the cursor
-- it turns to the text colour over a 1px accent underline, with "Click to
-- copy" as its tooltip; the click (onClick) opens the copy window holding
-- it. opts: { role = "label" (default) | "note" | any type role }.
function W.Link(parent, text, onClick, opts)
	local b = CreateFrame("Button", nil, parent)
	b.Label = W.Text(b, opts and opts.role or "label", "accent")
	b.Label:SetPoint("LEFT", b, "LEFT", 0, 0)
	b.Line = b:CreateTexture(nil, "ARTWORK")
	b.Line:SetTexture(WHITE)
	b.Line:SetPoint("TOPLEFT", b.Label, "BOTTOMLEFT", 0, -2)
	b.Line:SetPoint("TOPRIGHT", b.Label, "BOTTOMRIGHT", 0, -2)
	W.Painter(b.Line, function(t)
		t:SetHeight(Theme.Pixel(b))
		t:SetVertexColor(Theme.Accent())
	end)
	b.Line:Hide()
	b.psTip = L["Click to copy"]
	b:SetScript("OnEnter", function(self)
		W.Color(self.Label, "text")
		self.Line:Show()
		simpleTip(self)
	end)
	b:SetScript("OnLeave", function(self)
		W.Color(self.Label, "accent")
		self.Line:Hide()
		hideTip(self)
	end)
	if onClick then b:SetScript("OnClick", onClick) end
	W.SetLinkText(b, text)
	return b
end

-- A link's text; the hit area hugs it, 20px tall.
function W.SetLinkText(b, text)
	b.Label:SetText(text or "")
	b:SetSize(floor(b.Label:GetStringWidth() + 0.5), 20)
end

-- Buttons that act only on a second click within three seconds.
function W.Confirm(b, text, fn)
	b.psConfirmText, b.psConfirmFn = text, fn
	b:SetScript("OnClick", function(self)
		local now = GetTime()
		if self.psArmed and now - self.psArmed < 3 then
			self.psArmed = nil
			if self.psSetText then self.psSetText(self, self.psConfirmText) end
			self.psConfirmFn()
			return
		end
		self.psArmed = now
		if self.psSetText then self.psSetText(self, L["Click again to confirm"]) end
		ns.After(3, function()
			if self.psArmed and GetTime() - self.psArmed >= 2.9 then
				self.psArmed = nil
				if self.psSetText then self.psSetText(self, self.psConfirmText) end
			end
		end)
	end)
	return b
end

-- A real CheckButton (manual goals).
function W.Checkbox(parent, onClick)
	local c = CreateFrame("CheckButton", nil, parent)
	c:SetSize(18, 18)
	Theme.Skin(c, "checkbox")
	if onClick then c:SetScript("OnClick", onClick) end
	return c
end

---------------------------------------------------------------------------
-- Pills and chips
---------------------------------------------------------------------------

-- A horizontal capsule (two half circles and a middle).
function pill(parent, w, h)
	local f = CreateFrame("Frame", nil, parent)
	f:SetSize(w, h)
	local l = f:CreateTexture(nil, "ARTWORK")
	l:SetTexture(Theme.Media("circle"))
	l:SetTexCoord(0, 0.5, 0, 1)
	l:SetSize(h / 2, h)
	l:SetPoint("LEFT", f, "LEFT", 0, 0)
	local r = f:CreateTexture(nil, "ARTWORK")
	r:SetTexture(Theme.Media("circle"))
	r:SetTexCoord(0.5, 1, 0, 1)
	r:SetSize(h / 2, h)
	r:SetPoint("RIGHT", f, "RIGHT", 0, 0)
	local m = f:CreateTexture(nil, "ARTWORK")
	m:SetTexture(WHITE)
	m:SetPoint("TOPLEFT", l, "TOPRIGHT", 0, 0)
	m:SetPoint("BOTTOMRIGHT", r, "BOTTOMLEFT", 0, 0)
	f.parts = { l, m, r }
	function f.SetColor(self, cr, cg, cb, ca)
		for i = 1, 3 do self.parts[i]:SetVertexColor(cr, cg, cb, ca) end
	end
	return f
end
W.Pill = pill

-- A small labelled capsule: level ranges, races, states. kind: "neutral" |
-- "accent" | "success" | "warning" (the release stage) | "dungeon" (group
-- content).
W.CHIP_H = 20
function W.Chip(parent)
	local c = CreateFrame("Frame", nil, parent)
	c:SetHeight(W.CHIP_H)
	c.Bg = pill(c, 40, W.CHIP_H)
	c.Bg:SetAllPoints(c)
	c.Text = W.Text(c, "caption", "textDim")
	c.Text:SetPoint("CENTER", c, "CENTER", 0, 0)
	return c
end

function W.SetChip(c, text, kind)
	c.Text:SetText(text)
	local w = floor(c.Text:GetStringWidth() + 18 + 0.5)
	c:SetWidth(w)
	c.Bg:SetSize(w, W.CHIP_H)
	if kind == "accent" then
		local r, g, b = Theme.Accent()
		c.Bg:SetColor(r, g, b, 0.16)
		W.Color(c.Text, "accent")
	elseif kind == "success" or kind == "warning" or kind == "dungeon" then
		local r, g, b = Theme.Color(kind)
		c.Bg:SetColor(r, g, b, 0.14)
		W.Color(c.Text, kind)
	else
		c.Bg:SetColor(Theme.Wash("chip"))
		W.Color(c.Text, "textDim")
	end
	c:Show()
	return w
end

-- A slim progress line: a hairline track and an accent fill.
function W.ProgressLine(parent, height)
	local f = CreateFrame("Frame", nil, parent)
	f:SetHeight(height or 2)
	f.Track = f:CreateTexture(nil, "BACKGROUND")
	f.Track:SetTexture(WHITE)
	f.Track:SetAllPoints(f)
	W.Painter(f.Track, function(t) t:SetVertexColor(Theme.Wash("progress")) end)
	f.Fill = f:CreateTexture(nil, "ARTWORK")
	f.Fill:SetTexture(WHITE)
	f.Fill:SetPoint("TOPLEFT", f, "TOPLEFT", 0, 0)
	f.Fill:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", 0, 0)
	f.Fill:SetWidth(0.01)
	W.Color(f.Fill, "accent")
	f.psFrac = 0
	return f
end

-- Set a progress line's fraction; animate eases from the old value.
function W.SetProgress(f, frac, width, animate)
	if frac < 0 then frac = 0 elseif frac > 1 then frac = 1 end
	local w = max(0.01, (width or f:GetWidth()) * frac)
	if animate and f.psFrac ~= frac and f.Fill:GetWidth() > 0 then
		Anim.To(f.Fill, "width", f.Fill:GetWidth(), w, Anim.SLOW, "out")
	elseif not Anim.IsRunning(f.Fill, "width") then
		f.Fill:SetWidth(w)
	end
	f.Fill:SetShown(frac > 0)
	f.psFrac = frac
end

---------------------------------------------------------------------------
-- Setting bindings
---------------------------------------------------------------------------

bound = {} -- path -> { control, ... }
dependents = {} -- path -> { control, ... }

function track(map, path, control)
	local list = map[path]
	if not list then
		list = {}
		map[path] = list
	end
	list[#list + 1] = control
end

-- control.Refresh(control) paints it from the current value.
function W.Bind(control, path, depends)
	control.psPath = path
	control.psDepends = depends
	if path then track(bound, path, control) end
	if depends then track(dependents, depends, control) end
	control:Refresh()
	return control
end

-- Controls with a `disabled` function, re-evaluated on every setting change.
conditional = setmetatable({}, { __mode = "k" })

function W.SetDisabledWhen(control, fn)
	control.psDisabledFn = fn
	conditional[control] = fn and true or nil
	if control.Refresh then control:Refresh() end
end

function W.Enabled(control)
	local fn = control.psDisabledFn
	if fn then
		local ok, off = pcall(fn)
		if ok and off then return false end
	end
	if not control.psDepends then return true end
	return ns.Get(control.psDepends) and true or false
end

function refreshList(list)
	if not list then return end
	for i = 1, #list do list[i]:Refresh() end
end

function W.RefreshAll()
	for _, list in pairs(bound) do refreshList(list) end
end

ns.On("SETTING_CHANGED", function(path)
	path = path or ""
	if path == "" or not path:find(".", 1, true) then
		-- A section (or everything) was reset.
		for p, list in pairs(bound) do
			if path == "" or p:sub(1, #path + 1) == path .. "." then refreshList(list) end
		end
		for p, list in pairs(dependents) do
			if path == "" or p:sub(1, #path + 1) == path .. "." then refreshList(list) end
		end
		return
	end
	refreshList(bound[path])
	refreshList(dependents[path])
	for control in pairs(conditional) do control:Refresh() end
end)

Theme.OnChanged(W.RefreshAll)

-- fn() after the font changes (ui.font, EllesmereUI's font): text that
-- sized its row, column or control measures differently, so a window shown
-- lays itself out again. Colour and look changes do not call it.
fontHandlers, fontKey = {}, nil
function currentFont()
	local path, _, flags = Theme.FontSpec("body")
	return tostring(path) .. "|" .. tostring(flags)
end
function W.OnFontChanged(fn)
	fontHandlers[#fontHandlers + 1] = fn
end
Theme.OnChanged(function()
	local key = currentFont()
	if key == fontKey then return end
	fontKey = key
	for _, fn in ipairs(fontHandlers) do fn() end
end)

-- A grid row: label left, bound by the control and wrapping onto more lines
-- rather than cut, a faint hairline underneath, the description as the
-- row's tooltip. W.LayoutRow sizes it.
function settingRow(parent, label, desc)
	local row = CreateFrame("Button", nil, parent)
	row:SetHeight(W.RowH())
	hoverTexture(row, 0.6)
	row.Rule = W.Divider(row, false, 0.6)
	row.Rule:SetPoint("BOTTOMLEFT", row, "BOTTOMLEFT", 0, 0)
	row.Rule:SetPoint("BOTTOMRIGHT", row, "BOTTOMRIGHT", 0, 0)
	-- A setting's label: the text colour, gold in the game's looks (the
	-- Settings panel's GameFontNormal).
	row.Label = W.Text(row, "body", "rowLabel")
	row.Label:SetWordWrap(true)
	row.Label:SetText(label)
	row.Label:SetPoint("LEFT", row, "LEFT", 12, 0)
	row.psLabel, row.psDesc = label, desc
	row.psTip = label
	row.psTipLines = desc and { desc } or nil
	row.psTipAnchor = "ANCHOR_TOPLEFT"
	return row
end

-- Bound the label on the left of a row's control. span(row, width) -> the
-- width the control takes from the row's right edge, its 12px inset and the
-- 10px gap before the label included; it may size the control to fit.
function fitLabel(row, control, span)
	row.Label:SetPoint("RIGHT", control, "LEFT", -10, 0)
	row.psSpan = span
end

-- A font string's text width, unbound by its anchors or width (with `text`
-- set first when given).
function textWidth(fs, text)
	if text then fs:SetText(text) end
	if fs.GetUnboundedStringWidth then return fs:GetUnboundedStringWidth() end
	return fs:GetStringWidth()
end
W.TextWidth = textWidth

-- Size a settings row (toggle, slider, dropdown, swatch, info) to `width`:
-- its control takes what its text needs, the label the rest, on as many
-- lines as it needs; the row grows past ROW_H when they do not fit in it.
-- A row given W.RowDetails shows its description under the label and
-- grows to both (50 at least), the pair centred on the control's line.
-- -> the row's height
ROW_PAD, ROW_MIN, HELP_MAX, RESET_W = 9, 50, 440, 22
function W.LayoutRow(row, width)
	row:SetWidth(width)
	local span = row.psSpan and row.psSpan(row, width) or 22
	if not row.psDetails then
		row.Label:SetWidth(max(1, width - 12 - span))
		local h = max(W.ROW_H, math.ceil(row.Label:GetStringHeight()) + 16)
		row.psLaidH = h
		row:SetHeight(h)
		return h
	end
	span = span + (row.psKitGap or 0)
	local inset = row.psInset or 12
	local lw = max(1, width - inset - span - (row.psMarks and RESET_W + 8 or 0))
	local label, help = row.Label, row.Help
	label:ClearAllPoints()
	label:SetWidth(lw)
	local lh = math.ceil(label:GetStringHeight())
	-- 50 at least in the house style; the other skins keep their own row.
	local least = Theme.SkinKey() == "polestar" and ROW_MIN or W.RowH()
	local h, top
	if help:IsShown() then
		help:SetWidth(min(lw, HELP_MAX))
		local content = lh + 2 + math.ceil(help:GetStringHeight())
		h = max(least, content + 2 * ROW_PAD)
		top = floor((h - content) / 2)
	else
		h = max(least, lh + 2 * ROW_PAD)
		top = floor((h - lh) / 2)
	end
	label:SetPoint("TOPLEFT", row, "TOPLEFT", inset, -top)
	-- A child's connector: down from the row's top, then in to the label's
	-- first line.
	local c = row.psConnector
	if c then
		local px = Theme.Pixel(row)
		local mid = top + 8
		c[1]:ClearAllPoints()
		c[1]:SetPoint("TOPLEFT", row, "TOPLEFT", inset - 18, 0)
		c[1]:SetSize(px, mid)
		c[2]:ClearAllPoints()
		c[2]:SetPoint("TOPLEFT", row, "TOPLEFT", inset - 18, -mid)
		c[2]:SetSize(8, px)
	end
	local reset = row.psResetButton
	if reset then
		reset:ClearAllPoints()
		reset:SetPoint("RIGHT", row, "RIGHT", -(span - 2), 0)
	end
	row.psLaidH = h
	row:SetHeight(h)
	return h
end

-- Deep equality, numbers within rounding.
function sameValue(a, b)
	if type(a) == "table" and type(b) == "table" then
		for k, v in pairs(a) do if not sameValue(v, b[k]) then return false end end
		for k in pairs(b) do if a[k] == nil then return false end end
		return true
	end
	if type(a) == "number" and type(b) == "number" then return math.abs(a - b) < 1e-6 end
	return a == b
end

-- Whether a setting holds something other than its default.
function W.Modified(path)
	if not (path and ns.GetDefault) then return false end
	local d = ns.GetDefault(path)
	if d == nil then return false end
	return not sameValue(ns.Get(path), d)
end

function markRow(row)
	if not row.psMarks then return end
	local mod = W.Modified(row.psPath)
	row.psModified = mod
	row.ModDot:SetShown(mod)
	if not (mod and W.Enabled(row) and row.IsMouseOver and row:IsMouseOver()) then row.psResetButton:Hide() end
end

function dimRow(row, enabled)
	row:SetAlpha(enabled and 1 or 0.45)
	if enabled then row:Enable() else row:Disable() end
	markRow(row)
end

function resetEnter(self) W.Color(self.Glyph, "text"); simpleTip(self) end
function resetLeave(self) W.Color(self.Glyph, "textDim"); hideTip(self) end

-- A row as the options window shows it: the description visible under the
-- label (note type, muted, wrapping; no tooltip then), the label from
-- `inset`; a setting off its default marked with a 6px accent dot before
-- the label and, under the cursor, a small reset square left of the control
-- (the right-click's reset). opts: { inset = 12, child = true (a setting
-- under the one above it: a connector line from it), marks = true }.
-- W.LayoutRow lays it out.
function W.RowDetails(row, opts)
	opts = opts or {}
	row.psDetails, row.psInset = true, opts.inset
	if not rawget(row, "Help") then
		row.Help = W.Text(row, "note", "textMuted")
		row.Help:SetWordWrap(true)
		row.Help:SetSpacing(2)
		row.Help:SetJustifyV("TOP")
		row.Help:SetPoint("TOPLEFT", row.Label, "BOTTOMLEFT", 0, -2)
	end
	local desc = row.psDesc
	row.Help:SetText(desc or "")
	row.Help:SetShown(desc ~= nil and desc ~= "")
	if row.Help:IsShown() then row.psTip, row.psTipLines = nil, nil end
	if opts.child and not row.psConnector then
		local c = {}
		for i = 1, 2 do
			c[i] = row:CreateTexture(nil, "BORDER")
			c[i]:SetTexture(WHITE)
			W.Painter(c[i], function(t) t:SetVertexColor(Theme.Wash("border")) end)
		end
		row.psConnector = c
	end
	if opts.marks ~= false and row.psPath and not row.psMarks then
		row.psMarks = true
		row.ModDot = W.Tex(row, "ARTWORK", "circle", "accent")
		row.ModDot:SetSize(6, 6)
		row.ModDot:SetPoint("RIGHT", row.Label, "TOPLEFT", -6, -8)
		local b = CreateFrame("Button", nil, row)
		b:SetSize(RESET_W, RESET_W)
		b.Ground = W.Tex(b, "BACKGROUND")
		b.Ground:SetAllPoints(b)
		W.Painter(b, function(self)
			self.Ground:SetVertexColor(Theme.Wash("hover"))
			Theme.Border(self, Theme.Wash("border"))
		end)
		b.Glyph = W.Tex(b, "ARTWORK", "reset", "textDim")
		b.Glyph:SetSize(11, 11)
		b.Glyph:SetPoint("CENTER", b, "CENTER", 0, 0)
		b.psTip = L["Reset to default"]
		b:SetScript("OnEnter", resetEnter)
		b:SetScript("OnLeave", resetLeave)
		b:SetScript("OnClick", function()
			local click = row:GetScript("OnClick")
			if click and W.Enabled(row) then click(row, "RightButton") end
			b:Hide()
		end)
		-- Gone once the cursor leaves the row (its controls are in it).
		b:SetScript("OnUpdate", function(self)
			if not (row.IsMouseOver and row:IsMouseOver()) then self:Hide() end
		end)
		b:Hide()
		row.psResetButton = b
		row:HookScript("OnEnter", function(self)
			if self.psModified and W.Enabled(self) then self.psResetButton:Show() end
		end)
		markRow(row)
	end
	return row
end

function rowEnter(self)
	simpleTip(self)
end

---------------------------------------------------------------------------
