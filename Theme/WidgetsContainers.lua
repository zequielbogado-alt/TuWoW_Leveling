-- Widgets containers: rows, tiles, search box, scroll area, gold rim, confirm dialog
local ADDON, ns = ...
setfenv(1, ns._widgetsEnv)

-- A read-only value row (status pages): label left, value right.
---------------------------------------------------------------------------

function W.InfoRow(parent, label, desc)
	local row = settingRow(parent, label, desc)
	row.Value = W.Text(row, "label", "textDim")
	row.Value:SetJustifyH("RIGHT")
	row.Value:SetPoint("RIGHT", row, "RIGHT", -12, 0)
	fitLabel(row, row.Value, function(self) return 12 + math.ceil(textWidth(self.Value)) + 10 end)
	row:SetScript("OnEnter", rowEnter)
	row:SetScript("OnLeave", hideTip)
	return row
end

---------------------------------------------------------------------------
-- An action row: label (and description) left, a button right that acts
-- (reset a position, forget a history). opts: { icon = glyph, danger = true }.
-- The button's click is onClick(row); a row with a `disabled` function
-- (W.SetDisabledWhen) dims and stops it.
---------------------------------------------------------------------------

function actionRowRefresh(self)
	local on = W.Enabled(self)
	dimRow(self, on)
	if on then self.Button:Enable() else self.Button:Disable() end
end

function W.ActionRow(parent, label, desc, text, onClick, opts)
	opts = opts or {}
	local row = settingRow(parent, label, desc)
	local b = W.Button(row, text, function() if W.Enabled(row) then onClick(row) end end,
		{ icon = opts.icon, danger = opts.danger })
	b:SetPoint("RIGHT", row, "RIGHT", -12, 0)
	row.Button = b
	fitLabel(row, b, function(self) return 12 + math.ceil(self.Button:GetWidth()) + 10 end)
	row:SetScript("OnEnter", rowEnter)
	row:SetScript("OnLeave", hideTip)
	row.Refresh = actionRowRefresh
	return row
end

---------------------------------------------------------------------------
-- Action tile: icon, title and a description; for consequential actions
-- (reset all, reset positions). confirm = a second click acts. Title and
-- description wrap; W.LayoutTile sizes the tile to them.
---------------------------------------------------------------------------

TILE_H, TILE_PAD = 60, 13

function W.ActionTile(parent, icon, title, desc, onClick, opts)
	opts = opts or {}
	local b = CreateFrame("Button", nil, parent)
	b:SetHeight(TILE_H)
	Theme.Skin(b, "tile")
	b.Icon = b:CreateTexture(nil, "ARTWORK")
	b.Icon:SetTexture(Theme.Media(icon))
	b.Icon:SetSize(18, 18)
	b.Icon:SetPoint("LEFT", b, "LEFT", 16, 0)
	W.Color(b.Icon, opts.danger and "danger" or "accent")
	b.Title = W.Text(b, "body", "text")
	b.Title:SetWordWrap(true)
	b.Title:SetPoint("TOPLEFT", b, "TOPLEFT", 48, -TILE_PAD)
	b.Title:SetPoint("TOPRIGHT", b, "TOPRIGHT", -12, -TILE_PAD)
	b.Title:SetText(title)
	b.Desc = W.Text(b, "small", "textMuted")
	b.Desc:SetWordWrap(true)
	b.Desc:SetPoint("TOPLEFT", b.Title, "BOTTOMLEFT", 0, -5)
	b.Desc:SetPoint("TOPRIGHT", b.Title, "BOTTOMRIGHT", 0, -5)
	b.Desc:SetText(desc or "")
	b.psTitle = title
	b.psSetText = function(self, text)
		self.Title:SetText(text)
		W.Color(self.Title, text == self.psTitle and "text" or "danger")
	end
	if opts.confirm then
		W.Confirm(b, title, onClick)
	else
		b:SetScript("OnClick", onClick)
	end
	return b
end

-- Size an action tile to `width`, as tall as its title and description
-- need (the title's "Click again to confirm" too), at least TILE_H. -> height
function W.LayoutTile(b, width)
	b:SetWidth(width)
	local tw = max(1, width - 48 - 12)
	b.Title:SetWidth(tw)
	b.Desc:SetWidth(tw)
	local titleH = b.Title:GetStringHeight()
	if b.psConfirmText then
		local shown = b.Title:GetText()
		b.Title:SetText(L["Click again to confirm"])
		titleH = max(titleH, b.Title:GetStringHeight())
		b.Title:SetText(shown)
	end
	local descH = (b.Desc:GetText() or "") ~= "" and (5 + b.Desc:GetStringHeight()) or 0
	local h = max(TILE_H, math.ceil(TILE_PAD + titleH + descH + TILE_PAD))
	b:SetHeight(h)
	return h
end

---------------------------------------------------------------------------
-- Search box
---------------------------------------------------------------------------

PLACEHOLDER_X, PLACEHOLDER_PAD = 30, 10

-- The placeholder takes the first of its wordings (longest first) that fits
-- inside the box in the current font; the last one is cut with an ellipsis
-- if even it does not. Refitted when the box's size or the font changes.
function fitPlaceholder(e)
	local ph, list = e.Placeholder, e.psPlaceholders
	if not list then return end
	local room = floor(e:GetWidth() - PLACEHOLDER_X - PLACEHOLDER_PAD)
	for i, text in ipairs(list) do
		ph:SetWidth(0) -- unbound, to measure the whole wording
		ph:SetText(text)
		if i == #list or room <= 0 or ph:GetStringWidth() <= room then break end
	end
	if room > 0 then ph:SetWidth(room) end
end

-- placeholder: a string, or a list of wordings, longest first.
function W.SetSearchPlaceholder(e, placeholder)
	e.psPlaceholders = type(placeholder) == "table" and placeholder or { placeholder or L["Search"] }
	fitPlaceholder(e)
end

function W.SearchBox(parent, placeholder, onChange)
	local e = CreateFrame("EditBox", nil, parent)
	e:SetHeight(30)
	e:SetAutoFocus(false)
	e:SetTextInsets(30, 26, 0, 0)
	Theme.Font(e, "label")
	W.Color(e, "text")
	-- The glyph and placeholder live on an overlay frame above the box.
	local deco = CreateFrame("Frame", nil, e)
	deco:SetAllPoints(e)
	e.Icon = deco:CreateTexture(nil, "ARTWORK")
	e.Icon:SetTexture(Theme.Media("search"))
	e.Icon:SetSize(13, 13)
	e.Icon:SetPoint("LEFT", e, "LEFT", 10, 0)
	W.Color(e.Icon, "textMuted")
	e.Placeholder = W.Text(deco, "label", "textMuted")
	e.Placeholder:SetPoint("LEFT", e, "LEFT", PLACEHOLDER_X, 0)
	W.SetSearchPlaceholder(e, placeholder)
	e:HookScript("OnSizeChanged", fitPlaceholder)
	W.Painter(e.Placeholder, function() fitPlaceholder(e) end)
	e.Clear = W.IconButton(e, "close", 20, nil, function()
		e:SetText("")
		e:ClearFocus()
		if onChange then onChange("") end
	end)
	e.Clear:SetPoint("RIGHT", e, "RIGHT", -4, 0)
	e.Clear:Hide()
	Theme.Skin(e, "editbox")
	e:SetScript("OnEditFocusGained", function(self) Theme.SetFocused(self, true) end)
	e:SetScript("OnEditFocusLost", function(self) Theme.SetFocused(self, false) end)
	e:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	e:SetScript("OnEnterPressed", function(self) self:ClearFocus() end)
	e:SetScript("OnTextChanged", function(self)
		local text = self:GetText() or ""
		self.Placeholder:SetShown(text == "")
		self.Clear:SetShown(text ~= "")
		if onChange then onChange(text) end
	end)
	return e
end

-- A read-only field holding text to copy (a link, a report, a position):
-- the search field's well and border, the text selected whenever it takes
-- focus, typing puts the text back. opts.lines > 1: a multi-line box that
-- tall. W.SetCopyText(box, text) fills it.
function W.CopyBox(parent, opts)
	opts = opts or {}
	local e = CreateFrame("EditBox", nil, parent)
	local lines = opts.lines or 1
	e:SetAutoFocus(false)
	Theme.Font(e, "label")
	W.Color(e, "text")
	if lines > 1 then
		e:SetMultiLine(true)
		e:SetHeight(lines * 16 + 16)
		e:SetTextInsets(10, 10, 8, 8)
	else
		e:SetHeight(30)
		e:SetTextInsets(10, 10, 0, 0)
	end
	Theme.Skin(e, "editbox")
	e:SetScript("OnEditFocusGained", function(self)
		Theme.SetFocused(self, true)
		self:HighlightText()
	end)
	e:SetScript("OnEditFocusLost", function(self)
		Theme.SetFocused(self, false)
		self:HighlightText(0, 0)
	end)
	e:SetScript("OnMouseUp", function(self) self:SetFocus(); self:HighlightText() end)
	e:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	e:SetScript("OnEnterPressed", function(self) self:ClearFocus() end)
	e:SetScript("OnTextChanged", function(self, userInput)
		if userInput and self:GetText() ~= self.psText then
			self:SetText(self.psText or "")
			self:HighlightText()
		end
	end)
	return e
end

function W.SetCopyText(e, text)
	e.psText = text or ""
	e:SetText(e.psText)
	e:SetCursorPosition(0)
end

---------------------------------------------------------------------------
-- Scroll area: a ScrollFrame with a thin thumb strip. Wheel scrolls; the
-- thumb can be dragged.
---------------------------------------------------------------------------

function scrollUpdate(sf)
	local view = sf.psView or sf:GetHeight()
	local content = sf.psContent or 0
	local range = max(0, content - view)
	local cur = min(range, max(0, sf:GetVerticalScroll()))
	if cur ~= sf:GetVerticalScroll() then sf:SetVerticalScroll(cur) end
	local bar = sf.Bar
	if range <= 0 or view <= 0 then
		bar:Hide()
		return
	end
	bar:Show()
	-- A game look's scroll bar keeps its arrow buttons at the ends
	-- (bar.psInset, Theme/GameSkins.lua): the thumb runs between them.
	local inset = bar.psInset or 0
	local track = max(1, view - 2 * inset)
	local h = max(24, track * view / content)
	bar.Thumb:SetHeight(h)
	bar.Thumb:ClearAllPoints()
	bar.Thumb:SetPoint("TOPRIGHT", bar, "TOPRIGHT", 0, -(inset + (track - h) * (cur / range)))
end

function scrollDrag(bar)
	local sf = bar.psScroll
	local _, y = GetCursorPosition()
	local scale = bar:GetEffectiveScale()
	local view = sf.psView or sf:GetHeight()
	local range = max(0, (sf.psContent or 0) - view)
	local h = bar.Thumb:GetHeight()
	local track = view - 2 * (bar.psInset or 0)
	if track - h <= 0 then return end
	local dy = (bar.psStartY - y / scale)
	sf:SetVerticalScroll(min(range, max(0, bar.psStartScroll + dy * range / (track - h))))
	scrollUpdate(sf)
end

function W.Scroll(parent)
	local sf = CreateFrame("ScrollFrame", nil, parent)
	local child = CreateFrame("Frame", nil, sf)
	child:SetSize(1, 1)
	sf:SetScrollChild(child)
	sf.Child = child
	sf:EnableMouseWheel(true)
	sf:SetScript("OnMouseWheel", function(self, delta)
		self:SetVerticalScroll(self:GetVerticalScroll() - delta * 60)
		scrollUpdate(self)
	end)
	sf:SetScript("OnSizeChanged", scrollUpdate)
	local bar = CreateFrame("Button", nil, sf)
	bar:SetWidth(6)
	bar:SetPoint("TOPRIGHT", sf, "TOPRIGHT", -2, 0)
	bar:SetPoint("BOTTOMRIGHT", sf, "BOTTOMRIGHT", -2, 0)
	bar.Thumb = bar:CreateTexture(nil, "OVERLAY")
	bar.Thumb:SetTexture(WHITE)
	bar.Thumb:SetWidth(2)
	bar.psScroll = sf
	bar.psThumb = bar.Thumb
	bar:SetScript("OnMouseDown", function(self)
		local _, y = GetCursorPosition()
		self.psStartY = y / self:GetEffectiveScale()
		self.psStartScroll = sf:GetVerticalScroll()
		self:SetScript("OnUpdate", ns.Safe(scrollDrag))
	end)
	bar:SetScript("OnMouseUp", function(self) self:SetScript("OnUpdate", nil) end)
	-- Escape can hide the window mid-drag, before any mouse-up arrives.
	bar:SetScript("OnHide", function(self) self:SetScript("OnUpdate", nil) end)
	-- The house thumb widens under the cursor; a game look's keeps its art.
	bar:SetScript("OnEnter", function(self) if not Theme.Kit() then self.Thumb:SetWidth(4) end end)
	bar:SetScript("OnLeave", function(self) if not Theme.Kit() then self.Thumb:SetWidth(2) end end)
	bar:Hide()
	sf.Bar = bar
	Theme.Skin(bar, "scrollbar")
	return sf
end

-- Tell the scroll area its content and view heights (view nil = measured).
function W.SetScrollContent(sf, contentHeight, viewHeight)
	sf.psContent = contentHeight
	sf.psView = viewHeight
	sf.Child:SetHeight(max(1, contentHeight))
	scrollUpdate(sf)
end

function W.ScrollTo(sf, offset)
	sf:SetVerticalScroll(max(0, offset or 0))
	scrollUpdate(sf)
end

---------------------------------------------------------------------------
-- The gold rim: a line of light along the top edge of a Polestar window,
-- clear at the corners, accent at 22 % and 78 % of the way, bright at the
-- centre, with a soft light thrown down from it. The house style alone: the
-- other skins draw their own frames.
---------------------------------------------------------------------------

-- The accent lifted toward white: the rim's bright centre (#f5d898 on
-- Polestar gold). -> r, g, b
function W.AccentHi()
	local r, g, b = Theme.Accent()
	return r + (1 - r) * 0.4, g + (1 - g) * 0.4, b + (1 - b) * 0.4
end

RIM_EDGE, RIM_MID, RIM_HI = 0, 0.18, 0.9 -- alphas at 0, 22 % and 50 %
RIM_OUTER = 0.22 -- the outer segment's share of the width
THROW_H, THROW_A = 110, 0.1

function gradient(t, r1, g1, b1, a1, r2, g2, b2, a2)
	if t.SetGradient and CreateColor then
		t:SetVertexColor(1, 1, 1, 1)
		t:SetGradient("HORIZONTAL", CreateColor(r1, g1, b1, a1), CreateColor(r2, g2, b2, a2))
	else
		t:SetVertexColor(r2, g2, b2, (a1 + a2) / 2)
	end
end
W.Gradient = gradient

function layoutRim(rim)
	local w = rim.psOwner:GetWidth() or 0
	if w <= 0 then return end
	local inner = w * (0.5 - RIM_OUTER)
	rim.parts[2]:SetWidth(inner)
	rim.parts[3]:SetWidth(inner)
	local tw = rim.psWidth or w * 0.6
	local th = rim.psHeight or THROW_H
	rim:SetHeight(th)
	rim.Throw:SetSize(tw, th)
	rim.Throw:ClearAllPoints()
	rim.Throw:SetPoint("TOP", rim, "TOP", rim.psOffset or 0, 0)
end

function paintRim(rim)
	local on = Theme.SkinKey() == "polestar" and not rim.psOwner.psBare
	rim:SetShown(on)
	if not on then return end
	local px = Theme.Pixel(rim)
	local r, g, b = Theme.Accent()
	local hr, hg, hb = W.AccentHi()
	local p = rim.parts
	for i = 1, 4 do p[i]:SetHeight(px) end
	gradient(p[1], r, g, b, RIM_EDGE, r, g, b, RIM_MID)
	gradient(p[2], r, g, b, RIM_MID, hr, hg, hb, RIM_HI)
	gradient(p[3], hr, hg, hb, RIM_HI, r, g, b, RIM_MID)
	gradient(p[4], r, g, b, RIM_MID, r, g, b, RIM_EDGE)
	rim.Throw:SetVertexColor(hr, hg, hb, THROW_A)
	layoutRim(rim)
end

-- W.Rim(frame, opts) -> rim: the rim on `frame`'s top edge, over its
-- children (its own frame, mouse-transparent, levels above), repainted on
-- theme changes and hidden outside the house style or on a bare frame.
-- opts: { width = the thrown light's width (60 % of the frame's by default),
-- offset = its centre's x from the frame's centre (0), height = how far it
-- falls (110; less on a short window, so it stays inside) }.
-- rim.parts: the four line segments, left to right; rim.Throw: the light.
-- W.LayoutRim(frame) after resizing a frame whose size scripts do not run.
function W.Rim(frame, opts)
	opts = opts or {}
	local rim = rawget(frame, "psRim")
	if rim then
		rim.psWidth, rim.psOffset, rim.psHeight = opts.width, opts.offset, opts.height
		paintRim(rim)
		return rim
	end
	rim = CreateFrame("Frame", nil, frame)
	rim:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, 0)
	rim:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, 0)
	rim:SetHeight(opts.height or THROW_H)
	rim:SetFrameLevel(frame:GetFrameLevel() + 30)
	rim.psOwner, rim.psWidth, rim.psOffset, rim.psHeight = frame, opts.width, opts.offset, opts.height
	local p = {}
	for i = 1, 4 do
		p[i] = rim:CreateTexture(nil, "OVERLAY", nil, 7)
		p[i]:SetTexture(WHITE)
	end
	p[2]:SetPoint("TOPRIGHT", rim, "TOP", 0, 0)
	p[3]:SetPoint("TOPLEFT", rim, "TOP", 0, 0)
	p[1]:SetPoint("TOPLEFT", rim, "TOPLEFT", 0, 0)
	p[1]:SetPoint("TOPRIGHT", p[2], "TOPLEFT", 0, 0)
	p[4]:SetPoint("TOPLEFT", p[3], "TOPRIGHT", 0, 0)
	p[4]:SetPoint("TOPRIGHT", rim, "TOPRIGHT", 0, 0)
	rim.parts = p
	-- The light: the lower half of the glow, flattened under the line.
	rim.Throw = rim:CreateTexture(nil, "OVERLAY", nil, 6)
	rim.Throw:SetTexture(Theme.Media("glow"))
	rim.Throw:SetTexCoord(0, 1, 0.5, 1)
	frame.psRim = rim
	frame:HookScript("OnSizeChanged", function() layoutRim(rim) end)
	W.Painter(rim, paintRim)
	return rim
end

function W.LayoutRim(frame)
	local rim = rawget(frame, "psRim")
	if rim then layoutRim(rim) end
end

-- The night header's haze: the lower half of the glow, wide and flat, hung
-- from the top of `parent` (a header band) in the "haze" tint, over the band
-- and under the text. House style with the band on only.
-- opts: { width = (80 % of parent's), height = 120, offset = x from centre,
--         layer = "BACKGROUND", sub = -4 } -> the texture
function W.Haze(parent, opts)
	opts = opts or {}
	local t = parent:CreateTexture(nil, opts.layer or "BACKGROUND", nil, opts.sub or -4)
	t:SetTexture(Theme.Media("glow"))
	t:SetTexCoord(0, 1, 0.5, 1)
	t:SetPoint("TOP", parent, "TOP", opts.offset or 0, 0)
	W.Painter(t, function(tex)
		local w = opts.width or (parent:GetWidth() or 0) * 0.8
		tex:SetSize(math.max(1, w), opts.height or 120)
		tex:SetVertexColor(Theme.Color("haze"))
		tex:SetShown(Theme.SkinKey() == "polestar" and Theme.ShowsBand())
	end)
	return t
end

---------------------------------------------------------------------------
-- The shared confirm dialog: a scrim over the screen, a 400 wide box on the
-- window ground with its hairline and the rim, a title (an optional glyph
-- before it), the body text, and a footer band with Cancel and the action.
-- Escape, Cancel or a click on the scrim close it.
--   W.Modal({ title, text, icon = glyph, action = label, danger = true,
--             onAccept = fn, cancel = label, onCancel = fn }) -> the dialog
--   W.HideModal(), W.ModalShown()
---------------------------------------------------------------------------

modal = nil
MODAL_W, MODAL_PAD, MODAL_FOOT, MODAL_SCRIM = 400, 24, 54, 0.55

function W.HideModal()
	if modal and modal:IsShown() then modal:Hide() end
end

function W.ModalShown()
	return modal ~= nil and modal:IsShown()
end

function closeModal(accept)
	local spec = modal.psSpec
	modal:Hide()
	local fn = spec and (accept and spec.onAccept or (not accept and spec.onCancel))
	if fn then fn() end
end

function buildModal()
	local s = CreateFrame("Button", "PolestarModal", UIParent)
	s:SetAllPoints(UIParent)
	s:SetFrameStrata("FULLSCREEN_DIALOG")
	s:EnableMouse(true)
	s:Hide()
	s.Scrim = W.Fill(s, "scrim", "BACKGROUND")
	s.Scrim:SetAlpha(MODAL_SCRIM)
	s:SetScript("OnClick", function() closeModal(false) end)
	local box = CreateFrame("Frame", nil, s)
	box:SetWidth(MODAL_W)
	box:SetPoint("CENTER", UIParent, "CENTER", 0, 40)
	box:EnableMouse(true)
	W.Painter(box, function(f)
		local d = rawget(f, "Ground") or W.Fill(f, "bg", "BACKGROUND")
		f.Ground = d
		local r, g, b = Theme.Color("bg")
		d:SetVertexColor(r, g, b, 1)
		Theme.Border(f, Theme.Wash("border"))
	end)
	s.Box = box
	box.Icon = W.Tex(box, "ARTWORK")
	box.Icon:SetSize(16, 16)
	box.Title = W.Text(box, "title", "text")
	box.Text = W.Text(box, "note", "textDim")
	box.Text:SetWordWrap(true)
	box.Text:SetSpacing(3)
	box.Text:SetJustifyV("TOP")
	box.Text:SetWidth(MODAL_W - 2 * MODAL_PAD)
	local foot = CreateFrame("Frame", nil, box)
	foot:SetPoint("BOTTOMLEFT", box, "BOTTOMLEFT", 0, 0)
	foot:SetPoint("BOTTOMRIGHT", box, "BOTTOMRIGHT", 0, 0)
	foot:SetHeight(MODAL_FOOT)
	W.Fill(foot, "footer")
	local rule = W.Divider(foot)
	rule:SetPoint("TOPLEFT", foot, "TOPLEFT", 0, 0)
	rule:SetPoint("TOPRIGHT", foot, "TOPRIGHT", 0, 0)
	box.Foot = foot
	box.Action = W.Button(foot, "", function() closeModal(true) end)
	box.Action:SetPoint("RIGHT", foot, "RIGHT", -16, 0)
	box.Cancel = W.Button(foot, L["Cancel"], function() closeModal(false) end)
	box.Cancel:SetPoint("RIGHT", box.Action, "LEFT", -8, 0)
	W.Rim(box, { width = MODAL_W * 0.7 })
	-- Escape closes the dialog alone; every other key goes on to the game.
	-- En 3.3.5a SetPropagateKeyboardInput no existe, por lo que no activamos EnableKeyboard(true)
	-- salvo que el cliente soporte propagacion de teclado.
	if box.SetPropagateKeyboardInput then
		box:EnableKeyboard(true)
		box:SetScript("OnKeyDown", function(self, key)
			local esc = key == "ESCAPE"
			if self.SetPropagateKeyboardInput and not (InCombatLockdown and InCombatLockdown()) then
				self:SetPropagateKeyboardInput(not esc)
			end
			if esc then closeModal(false) end
		end)
	end
	s:HookScript("OnShow", function(self) Anim.To(self, "alpha", 0, 1, Anim.FAST, "out") end)
	modal = s
end

function W.Modal(spec)
	if not modal then buildModal() end
	W.HideMenu()
	local box = modal.Box
	modal.psSpec = spec
	local x = MODAL_PAD
	box.Icon:SetShown(spec.icon ~= nil)
	if spec.icon then
		box.Icon:SetTexture(Theme.Media(spec.icon))
		W.Color(box.Icon, spec.danger and "danger" or "accent")
		box.Icon:ClearAllPoints()
		box.Icon:SetPoint("TOPLEFT", box, "TOPLEFT", MODAL_PAD, -(MODAL_PAD + 2))
		x = x + 16 + 10
	end
	box.Title:ClearAllPoints()
	box.Title:SetPoint("TOPLEFT", box, "TOPLEFT", x, -MODAL_PAD)
	box.Title:SetPoint("RIGHT", box, "RIGHT", -MODAL_PAD, 0)
	box.Title:SetText(spec.title or "")
	if box.Icon:IsShown() then
		box.Icon:ClearAllPoints()
		box.Icon:SetPoint("RIGHT", box.Title, "LEFT", -10, 0)
		box.Icon:SetPoint("TOP", box.Title, "TOP", 0, 0)
	end
	local th = math.ceil(box.Title:GetStringHeight())
	box.Text:ClearAllPoints()
	box.Text:SetPoint("TOPLEFT", box, "TOPLEFT", MODAL_PAD, -(MODAL_PAD + th + 8))
	box.Text:SetText(spec.text or "")
	box.Text:SetShown((spec.text or "") ~= "")
	local body = box.Text:IsShown() and math.ceil(box.Text:GetStringHeight()) + 8 or 0
	box:SetHeight(MODAL_PAD + th + body + 20 + MODAL_FOOT)
	local a = box.Action
	a.psDanger, a.psPrimary = spec.danger and true or false, not spec.danger
	W.SetButtonText(a, spec.action or L["OK"])
	W.RepaintButton(a)
	W.SetButtonText(box.Cancel, spec.cancel or L["Cancel"])
	modal:Show()
	modal:Raise()
	return modal
end

---------------------------------------------------------------------------
