-- Widgets controls: toggle, slider, menu, dropdown, and colour swatch
local ADDON, ns = ...
setfenv(1, ns._widgetsEnv)

-- Toggle: a pill switch. The knob slides (120 ms, ease-out); with reduced
-- motion it simply lands.
---------------------------------------------------------------------------

TOGGLE_W, TOGGLE_H, KNOB = 30, 16, 12

function toggleValue(self)
	if self.psGet then return self.psGet() and true or false end
	return ns.Get(self.psPath) and true or false
end

CHECK_UP, CHECK_ON = "Interface\\Buttons\\UI-CheckBox-Up", "Interface\\Buttons\\UI-CheckBox-Check"

-- The game's check box in place of the switch: true when it drew one
-- (Hearth the vanilla box, the game's looks their kit's).
function gameCheck(self, on)
	local game, kit = Theme.GameSkin(), Theme.Kit()
	local bliz = game and not kit
	local box = rawget(self, "psGameBox")
	if bliz and not box then
		box = self.Track:GetParent():CreateTexture(nil, "ARTWORK")
		box:SetTexture(CHECK_UP)
		box:SetSize(24, 24)
		box:SetPoint("CENTER", self.Track, "CENTER", 0, 0)
		local check = self.Track:GetParent():CreateTexture(nil, "OVERLAY")
		check:SetTexture(CHECK_ON)
		check:SetAllPoints(box)
		box.Check = check
		self.psGameBox = box
	end
	for i = 1, #self.Track.parts do self.Track.parts[i]:SetShown(not game) end
	self.Knob:SetShown(not game)
	if box then
		box:SetShown(bliz)
		box.Check:SetShown(bliz and on)
	end
	if kit then
		Theme.KitCheck(self, self.Track:GetParent(), self.Track, on)
	else
		Theme.KitHide(self, "toggle")
		Theme.KitHide(self, "toggleCheck")
	end
	return game
end

function toggleRefresh(self)
	local on = toggleValue(self)
	local enabled = W.Enabled(self)
	if self.SetHeight and self.psRow then self:SetHeight(max(W.RowH(), self.psDetails and self.psLaidH or 0)) end
	dimRow(self, enabled)
	if gameCheck(self, on) then
		self.psOn = on
		self.checked = on
		return
	end
	if on then
		local r, g, b = Theme.Accent()
		self.Track:SetColor(r, g, b, 1)
		self.Knob:SetVertexColor(Theme.Color("onAccent"))
	else
		self.Track:SetColor(Theme.Wash("toggle"))
		self.Knob:SetVertexColor(Theme.Color("textDim"))
	end
	local x = on and (TOGGLE_W - KNOB - 2) or 2
	if self.psOn ~= nil and self.psOn ~= on then
		self.Knob.psAnchor[4] = x
		Anim.To(self.Knob, "offsetX", (self.psKnobX or x) - x, 0, Anim.FAST, "out")
	else
		Anim.Anchor(self.Knob, "LEFT", self.Track, "LEFT", x, 0)
	end
	self.psKnobX = x
	self.psOn = on
	self.checked = on
end

-- opts.get() / opts.set(value) stand in for reading and writing the path when
-- one switch stands for several settings, or for state that is no setting
-- (path nil); set(nil) on right-click: defaults.
-- opts.gear = { tip, onClick }: a gear before the switch that opens the
-- setting's own options (the route lines' style).
GEAR, GEAR_GAP = 22, 6
function W.Toggle(parent, label, path, desc, depends, opts)
	local row = settingRow(parent, label, desc)
	row.psRow = true
	row.Track = pill(row, TOGGLE_W, TOGGLE_H)
	row.psGet, row.psSet = opts and opts.get, opts and opts.set
	row.Track:SetPoint("RIGHT", row, "RIGHT", -12, 0)
	row.Knob = row.Track:CreateTexture(nil, "OVERLAY")
	row.Knob:SetTexture(Theme.Media("circle"))
	row.Knob:SetSize(KNOB, KNOB)
	local gear = opts and opts.gear
	if gear then
		row.Gear = W.IconButton(row, "gear", GEAR, gear.tip, function() gear.onClick() end)
		row.Gear:SetPoint("RIGHT", row.Track, "LEFT", -GEAR_GAP, 0)
		fitLabel(row, row.Gear, function() return 12 + TOGGLE_W + GEAR_GAP + GEAR + 10 end)
	else
		fitLabel(row, row.Track, function() return 12 + TOGGLE_W + 10 end)
	end
	-- Left-click flips it; right-click puts the setting back to its default.
	row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	row:SetScript("OnClick", function(self, button)
		if not W.Enabled(self) then return end
		if self.psSet then
			if button == "RightButton" then self.psSet(nil) else self.psSet(not toggleValue(self)) end
			self:Refresh()
		elseif button == "RightButton" then
			ns.Set(self.psPath, nil)
		else
			ns.Set(self.psPath, not ns.Get(self.psPath))
		end
	end)
	row:SetScript("OnEnter", rowEnter)
	row:SetScript("OnLeave", hideTip)
	row.Refresh = toggleRefresh
	return W.Bind(row, path, depends)
end

-- The same switch without a row or a setting, for state that is not a
-- setting (a guide pack shown or hidden): get() -> on, set(on). Click
-- flips it; the owner repaints it with :Refresh().
function W.Switch(parent, get, set, tip)
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(TOGGLE_W + 8, 24)
	b.Track = pill(b, TOGGLE_W, TOGGLE_H)
	b.Track:SetPoint("CENTER", b, "CENTER", 0, 0)
	b.Knob = b.Track:CreateTexture(nil, "OVERLAY")
	b.Knob:SetTexture(Theme.Media("circle"))
	b.Knob:SetSize(KNOB, KNOB)
	b.psGet, b.psTip = get, tip
	b:SetScript("OnClick", function(self)
		set(not toggleValue(self))
		self:Refresh()
	end)
	b:SetScript("OnEnter", simpleTip)
	b:SetScript("OnLeave", hideTip)
	b.Refresh = toggleRefresh
	return W.Painter(b, toggleRefresh)
end

---------------------------------------------------------------------------
-- Slider: a native Slider for dragging, drawn as a 2px track with an accent
-- fill and a round thumb, its value right of it. Wheel steps it.
---------------------------------------------------------------------------

SLIDER_W, SLIDER_MIN, VALUE_W = 112, 64, 44

function roundTo(v, stepSize)
	return floor(v / stepSize + 0.5) * stepSize
end

function sliderText(self, v)
	local fmt = self.psFormat
	if type(fmt) == "function" then return fmt(v) end
	return string.format(fmt or "%.2f", v)
end

SLIDER_THUMB = "Interface\\Buttons\\UI-SliderBar-Button-Horizontal"

function sliderPaint(self, value)
	local s = self.Slider
	local lo, hi = s:GetMinMaxValues()
	local v = value or s:GetValue()
	local w = self.psTrackW or Theme.Metric("sliderW", SLIDER_W)
	local frac = hi > lo and (v - lo) / (hi - lo) or 0
	self.Fill:SetWidth(max(0.01, w * frac))
	self.Value:SetText(sliderText(self, v))
end

function sliderValue(self)
	if self.psGet then return self.psGet() end
	return ns.Get(self.psPath)
end

function sliderWrite(self, value)
	if self.psSet then
		self.psSet(value)
		self:Refresh()
	else
		ns.Set(self.psPath, value)
	end
end

function sliderRefresh(self)
	local v = sliderValue(self)
	if type(v) ~= "number" then v = self.psMin end
	self.psRefreshing = true
	self.Slider:SetValue(v)
	self.psRefreshing = false
	dimRow(self, W.Enabled(self))
	W.SkinSlider(self)
	sliderPaint(self)
end

-- A slider's parts in the skin in use (rows and the guide window's own).
function W.SkinSlider(self)
	local bliz = Theme.SkinKey() == "hearth"
	local s = self.Slider
	if self.psRow then
		self:SetHeight(max(W.RowH(), self.psDetails and self.psLaidH or 0))
		s:SetWidth(self.psTrackW or Theme.Metric("sliderW", SLIDER_W))
		self.Value:SetWidth(Theme.Metric("valueW", VALUE_W))
	end
	self.Thumb:SetTexCoord(0, 1, 0, 1)
	-- A row's label ends short of the slider: further in the game's looks,
	-- where the back stepper stands left of the track.
	local kitDrawn = Theme.KitSlider(self, s, self.Thumb)
	self.psKitGap = kitDrawn and 10 or 0
	if self.psRow and self.Label and not self.psDetails then self.Label:SetPoint("RIGHT", s, "LEFT", kitDrawn and -20 or -10, 0) end
	if kitDrawn then
		-- The game's looks: their own track and thumb, the value in gold.
		self.Track:Hide()
		self.Fill:Hide()
		if s.psBorder then for i = 1, 4 do s.psBorder[i]:Hide() end end
		if self.Value then W.Color(self.Value, "accent") end
		return
	end
	self.Track:Show()
	if bliz then
		self.Track:SetHeight(8)
		self.Track:SetVertexColor(0, 0, 0, 1)
		Theme.Border(s, 0.42, 0.42, 0.42, 1)
		self.Fill:Hide()
		self.Thumb:SetTexture(SLIDER_THUMB)
		self.Thumb:SetSize(32, 32)
		self.Thumb:SetVertexColor(1, 1, 1, 1)
		if self.Value then W.Color(self.Value, "accent") end
	else
		self.Track:SetHeight(2)
		self.Track:SetVertexColor(Theme.Wash("track"))
		if s.psBorder then for i = 1, 4 do s.psBorder[i]:Hide() end end
		self.Fill:Show()
		self.Fill:SetVertexColor(Theme.Accent())
		self.Thumb:SetTexture(Theme.Media("circle"))
		self.Thumb:SetSize(12, 12)
		self.Thumb:SetVertexColor(Theme.Color("text"))
		if self.Value then W.Color(self.Value, "textDim") end
	end
end

-- The track, fill and thumb of a slider, on `owner`.
function sliderParts(owner, parent, width)
	local s = CreateFrame("Slider", nil, parent)
	s:SetOrientation("HORIZONTAL")
	s:SetSize(width, 16)
	s:EnableMouseWheel(true)
	if s.SetObeyStepOnDrag then s:SetObeyStepOnDrag(true) end
	local trk = s:CreateTexture(nil, "BACKGROUND")
	trk:SetTexture(WHITE)
	trk:SetHeight(2)
	trk:SetPoint("LEFT", s, "LEFT", 0, 0)
	trk:SetPoint("RIGHT", s, "RIGHT", 0, 0)
	W.Painter(trk, function(t) t:SetVertexColor(Theme.Wash("track")) end)
	owner.Track = trk
	local fillTex = s:CreateTexture(nil, "ARTWORK")
	fillTex:SetTexture(WHITE)
	fillTex:SetHeight(2)
	fillTex:SetPoint("LEFT", trk, "LEFT", 0, 0)
	owner.Fill = fillTex
	local thumb = s:CreateTexture(nil, "OVERLAY")
	thumb:SetTexture(Theme.Media("circle"))
	thumb:SetSize(12, 12)
	s:SetThumbTexture(thumb)
	owner.Thumb = thumb
	owner.Slider = s
	return s
end

-- A slider row's control: the value as wide as its widest end ("60
-- minutes"), the track giving up to SLIDER_W - SLIDER_MIN of its width to a
-- label that needs it.
function sliderSpan(row, width)
	local v = row.Value
	local shown = v:GetText()
	local need = max(textWidth(v, sliderText(row, row.psMin)), textWidth(v, sliderText(row, row.psMax)))
	v:SetText(shown or "")
	local valueW = max(VALUE_W, math.ceil(need))
	v:SetWidth(valueW)
	local fixed = 12 + valueW + 8 + 10
	local trackW = max(SLIDER_MIN, min(SLIDER_W, width - 12 - fixed - math.ceil(textWidth(row.Label))))
	row.Slider:SetWidth(trackW)
	row.psTrackW = trackW
	sliderPaint(row)
	return fixed + trackW
end

-- opts.release: write the value when the drag ends, not on every step (a
-- setting that rescales the window the slider sits in).
-- opts.get() / opts.set(value) stand in for reading and writing the path,
-- for state that is no setting (path nil; per character); set(nil) on
-- right-click: the default.
function W.Slider(parent, label, path, lo, hi, stepSize, fmt, desc, depends, opts)
	local row = settingRow(parent, label, desc)
	row.psRow = true
	row.psGet, row.psSet = opts and opts.get, opts and opts.set
	row.psMin, row.psMax, row.psStep, row.psFormat = lo, hi, stepSize, fmt
	row.Value = W.Text(row, "number", "textDim")
	row.Value:SetJustifyH("RIGHT")
	row.Value:SetWidth(VALUE_W)
	row.Value:SetPoint("RIGHT", row, "RIGHT", -12, 0)
	local s = sliderParts(row, row, SLIDER_W)
	s:SetPoint("RIGHT", row.Value, "LEFT", -8, 0)
	s:SetMinMaxValues(lo, hi)
	s:SetValueStep(stepSize)
	fitLabel(row, s, sliderSpan)
	s:SetScript("OnValueChanged", function(_, value, userInput)
		value = roundTo(value, stepSize)
		sliderPaint(row, value)
		if userInput and not row.psRefreshing and W.Enabled(row) and sliderValue(row) ~= value then
			if opts and opts.release then row.psPending = value else sliderWrite(row, value) end
		end
	end)
	s:SetScript("OnMouseUp", function()
		if row.psPending ~= nil then
			local v = row.psPending
			row.psPending = nil
			sliderWrite(row, v)
		end
	end)
	s:SetScript("OnMouseWheel", function(_, delta)
		if not W.Enabled(row) then return end
		local v = roundTo((sliderValue(row) or lo) + delta * stepSize, stepSize)
		sliderWrite(row, min(hi, max(lo, v)))
	end)
	-- Right-click puts the setting back to its default.
	row:RegisterForClicks("RightButtonUp")
	row:SetScript("OnClick", function(self, button)
		if button == "RightButton" and W.Enabled(self) then sliderWrite(self, nil) end
	end)
	row:SetScript("OnEnter", rowEnter)
	row:SetScript("OnLeave", hideTip)
	row.Refresh = sliderRefresh
	return W.Bind(row, path, depends)
end

---------------------------------------------------------------------------
-- Menu: one shared popup list (header menu, dropdown choices). A click
-- anywhere else closes it; Escape closes it. On the panel ground inside its
-- hairline, 26px rows in textDim; the chosen one in the text colour with the
-- accent check, the one under the cursor in the text colour on the hover
-- wash. It opens with a 120ms fade and a 4px drop (reduced motion: none).
---------------------------------------------------------------------------

menu, catcher = nil, nil
MENU_ROW, MENU_SEP, MENU_PAD = 26, 9, 4

-- A row's resting colours: the item's own, else the text colour while
-- chosen or under the cursor, textDim otherwise.
function paintMenuRow(row, lit)
	local item = row.psItem
	if not item then return end
	local off = item.disabled and 0.45 or 1
	local on = (lit and not item.disabled) or item.checked
	W.Color(row.Text, item.color or (on and "text" or "textDim"), off)
	if item.icon then W.Color(row.Icon, item.color or (on and "text" or "textDim"), off) end
end

-- Items with confirm = true need a second click: the first relabels the row
-- and keeps the menu open.
function menuRowClick(self)
	local item = self.psItem
	if not item or item.disabled then return end
	if item.confirm and not self.psArmed then
		self.psArmed = true
		self.Text:SetText(L["Click again to confirm"])
		W.Color(self.Text, "danger")
		return
	end
	W.HideMenu()
	local fn = item.onClick or item.func
	if fn then fn(item) end
end

function menuRowEnter(self)
	if not self.psArmed then paintMenuRow(self, true) end
	if self.psItem and self.psItem.tip then W.Tooltip(self, "ANCHOR_RIGHT", self.psItem.text, { self.psItem.tip }) end
end

function menuRowLeave(self)
	if not self.psArmed then paintMenuRow(self, false) end
	hideTip(self)
end

function buildMenu()
	catcher = CreateFrame("Button", nil, UIParent)
	catcher:SetAllPoints(UIParent)
	catcher:SetFrameStrata("FULLSCREEN_DIALOG")
	catcher:SetFrameLevel(1)
	catcher:RegisterForClicks("AnyUp")
	catcher:SetScript("OnClick", function() W.HideMenu() end)
	catcher:Hide()

	menu = CreateFrame("Frame", "PolestarMenu", UIParent)
	menu:SetFrameStrata("FULLSCREEN_DIALOG")
	menu:SetFrameLevel(20)
	menu:SetClampedToScreen(true)
	menu:EnableMouse(true)
	Theme.Skin(menu, "panel")
	menu.rows = {}
	menu.seps = {}
	menu:SetScript("OnHide", function() catcher:Hide() end)
	menu:Hide()
	ns.CloseOnEscape("PolestarMenu")
	-- A gamepad (UI/Gamepad.lua) picks a row, starting on the current choice; B closes.
	if ns.Gamepad and ns.Gamepad.Register then
		ns.Gamepad.Register(menu, {
			rows = function()
				local out = {}
				for _, r in ipairs(menu.rows) do
					if r:IsShown() and not (r.psItem and r.psItem.disabled) then out[#out + 1] = r end
				end
				return out
			end,
			initial = function(rows)
				for i, r in ipairs(rows) do if r.psItem and r.psItem.checked then return i end end
			end,
			back = function() W.HideMenu() end,
		})
	end
end

function menuRow(i)
	local row = menu.rows[i]
	if row then return row end
	row = CreateFrame("Button", nil, menu)
	row:SetHeight(MENU_ROW)
	hoverTexture(row)
	row.Icon = row:CreateTexture(nil, "ARTWORK")
	row.Icon:SetSize(14, 14)
	row.Icon:SetPoint("LEFT", row, "LEFT", 10, 0)
	row.Text = W.Text(row, "label", "text")
	row.Text:SetPoint("LEFT", row, "LEFT", 32, 0)
	row.Check = row:CreateTexture(nil, "ARTWORK")
	row.Check:SetTexture(Theme.Media("check"))
	row.Check:SetSize(12, 12)
	row.Check:SetPoint("RIGHT", row, "RIGHT", -10, 0)
	row:SetScript("OnClick", menuRowClick)
	row:SetScript("OnEnter", menuRowEnter)
	row:SetScript("OnLeave", menuRowLeave)
	menu.rows[i] = row
	return row
end

-- items: { { text, icon, checked, disabled, onClick, tip, color, confirm }, { separator = true }, ... }
-- opts: { point = "TOPRIGHT", relPoint = "BOTTOMRIGHT", x = 0, y = -4, minWidth = 168 }
function W.ShowMenu(anchor, items, opts)
	if not menu then buildMenu() end
	opts = opts or {}
	local pad, rowH = Theme.Metric("menuPad", MENU_PAD), Theme.Metric("menuRow", MENU_ROW)
	local y, width, nrow, nsep = -pad, opts.minWidth or Theme.Metric(opts.wide and "servicesWidth" or "menuWidth", 176), 0, 0
	local anyIcon = false
	for i = 1, #items do if items[i].icon then anyIcon = true end end
	for i = 1, #menu.rows do menu.rows[i]:Hide() end
	for i = 1, #menu.seps do menu.seps[i]:Hide() end
	for i = 1, #items do
		local item = items[i]
		if item.separator then
			nsep = nsep + 1
			local sep = menu.seps[nsep]
			if not sep then
				sep = W.Divider(menu)
				menu.seps[nsep] = sep
			end
			sep:ClearAllPoints()
			sep:SetPoint("TOPLEFT", menu, "TOPLEFT", 8, y - 4)
			sep:SetPoint("TOPRIGHT", menu, "TOPRIGHT", -8, y - 4)
			sep:Show()
			y = y - MENU_SEP
		else
			nrow = nrow + 1
			local row = menuRow(nrow)
			row.psItem = item
			row.psArmed = nil
			row.Text:SetText(item.text)
			row.Text:SetPoint("LEFT", row, "LEFT", anyIcon and 32 or 12, 0)
			if item.icon then
				row.Icon:SetTexture(Theme.Media(Theme.Icon(item.icon)))
				row.Icon:Show()
			else
				row.Icon:Hide()
			end
			paintMenuRow(row, false)
			row.Check:SetShown(item.checked and true or false)
			W.Color(row.Check, "accent")
			row:ClearAllPoints()
			row:SetHeight(rowH)
			row:SetPoint("TOPLEFT", menu, "TOPLEFT", 1, y)
			row:SetPoint("TOPRIGHT", menu, "TOPRIGHT", -1, y)
			row:Show()
			width = max(width, row.Text:GetStringWidth() + (anyIcon and 32 or 12) + 36)
			y = y - rowH
		end
	end
	menu:SetSize(floor(width + 0.5), -y + pad)
	menu:ClearAllPoints()
	menu.psOwner = anchor
	local point, relPoint = opts.point or "TOPRIGHT", opts.relPoint or "BOTTOMRIGHT"
	Anim.Anchor(menu, point, anchor, relPoint, opts.x or 0, opts.y or -4)
	catcher:Show()
	menu:Show()
	-- Popovers grow out of their trigger: a short fade with a 4px drop.
	Anim.To(menu, "alpha", 0, 1, Anim.FAST, "out")
	Anim.To(menu, "offset", 4, 0, Anim.FAST, "out")
	return menu
end

function W.HideMenu()
	if menu and menu:IsShown() then menu:Hide() end
end

function W.MenuShown(owner)
	return menu and menu:IsShown() and (not owner or menu.psOwner == owner) or false
end

---------------------------------------------------------------------------
-- Dropdown: a button showing the current choice; the list is the menu.
-- choices: a list or a function returning one (choices that come and go).
-- opts.get() / opts.set(value) stand in for reading and writing the path
-- when the shown value is derived (the font: Inter, or EllesmereUI's while
-- following it).
---------------------------------------------------------------------------

DROPDOWN_W, DROPDOWN_MIN = 150, 72

function choicesOf(row)
	local c = row.psChoices
	if type(c) == "function" then c = c() end
	local list = {}
	for i, ch in ipairs(c or {}) do
		local txt = ch.text or ch.label or tostring(ch.value or "")
		list[i] = { value = ch.value, text = txt, label = txt }
	end
	return list
end

function valueOf(row)
	if row.psGet then return row.psGet() end
	return ns.Get(row.psPath)
end

function choiceText(choices, v)
	for i = 1, #choices do
		if choices[i].value == v then
			return choices[i].text or choices[i].label or tostring(choices[i].value)
		end
	end
	return tostring(v == nil and "" or v)
end

DROPDOWN_ARROW = "Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Up"

function dropdownRefresh(self)
	self.Button.Label:SetText(choiceText(choicesOf(self), valueOf(self)))
	self:SetHeight(max(W.RowH(), self.psDetails and self.psLaidH or 0))
	local b = self.Button
	b:SetSize(self.psBoxW or Theme.Metric("dropdownW", DROPDOWN_W), Theme.Metric("dropdownH", 28))
	local bliz = Theme.GameSkin()
	local size = bliz and 22 or Theme.Metric("chevron", 12)
	b.Arrow:SetTexture(bliz and DROPDOWN_ARROW or Theme.Media("chevron-down"))
	b.Arrow:SetTexCoord(0, 1, 0, 1)
	b.Arrow:SetAlpha(1)
	-- The Settings panel's dropdown centres its value.
	b.Label:SetJustifyH((Theme.Kit() and Theme.Kit().dropdown) and "CENTER" or "LEFT")
	b.Arrow:SetSize(size, size)
	-- The game's looks: their own arrow button.
	Theme.KitDropArrow(b.Arrow)
	b.Arrow:ClearAllPoints()
	b.Arrow:SetPoint("RIGHT", b, "RIGHT", bliz and (Theme.Kit() and -3 or 0) or -Theme.Metric("chevronInset", 9), 0)
	if bliz then W.Uncolor(b.Arrow); b.Arrow:SetVertexColor(1, 1, 1, 1) else W.Color(b.Arrow, "textDim") end
	dimRow(self, W.Enabled(self))
end

function openChoices(self)
	local row = self.psRow
	if W.MenuShown(self) then return W.HideMenu() end
	local items = {}
	local cur = valueOf(row)
	local list = choicesOf(row)
	for i = 1, #list do
		local c = list[i]
		items[i] = { text = c.text, checked = c.value == cur, onClick = function()
			if row.psSet then row.psSet(c.value) else ns.Set(row.psPath, c.value) end
		end }
	end
	W.ShowMenu(self, items, { minWidth = self:GetWidth() })
end

-- The widest word of a row's label: the least it can wrap to uncut.
function widestWord(row)
	local w = 0
	for word in (row.psLabel or ""):gmatch("%S+") do w = max(w, textWidth(row.Label, word)) end
	row.Label:SetText(row.psLabel)
	return w
end

-- A dropdown row's control: as wide as its longest choice, DROPDOWN_W at
-- least, but never so wide that the label loses room for its widest word
-- (the label then wraps between words, never inside one): the box gives
-- way first, down to DROPDOWN_MIN.
function dropdownSpan(row, width)
	local b = row.Button
	local shown = b.Label:GetText()
	local need = 0
	for _, c in ipairs(choicesOf(row)) do need = max(need, textWidth(b.Label, c.text)) end
	b.Label:SetText(shown or "")
	local desired = max(DROPDOWN_W, math.ceil(need) + 36)
	local room = width - 12 - 10 - 12 - math.ceil(widestWord(row))
	local bw = max(DROPDOWN_MIN, min(desired, room))
	b:SetWidth(bw)
	row.psBoxW = bw
	return 12 + bw + 10
end

function W.Dropdown(parent, label, path, choices, desc, depends, opts)
	local row = settingRow(parent, label, desc)
	row.psChoices = choices
	row.psGet, row.psSet = opts and opts.get, opts and opts.set
	local b = CreateFrame("Button", nil, row)
	b:SetSize(DROPDOWN_W, 28)
	b:SetPoint("RIGHT", row, "RIGHT", -12, 0)
	b.Label = W.Text(b, "label", "text")
	-- Where the box gave way to the label, the choice takes a second line
	-- (two 12px lines fit its 28px); set on every refresh, so the cold-start
	-- blank of a max-lines string (W.Text) does not stick.
	b.Label:SetWordWrap(true)
	b.Label:SetMaxLines(2)
	b.Label:SetPoint("LEFT", b, "LEFT", 10, 0)
	b.Label:SetPoint("RIGHT", b, "RIGHT", -26, 0)
	b.Arrow = b:CreateTexture(nil, "ARTWORK")
	b.Arrow:SetTexture(Theme.Media("chevron-down"))
	b.Arrow:SetSize(12, 12)
	b.Arrow:SetPoint("RIGHT", b, "RIGHT", -9, 0)
	W.Color(b.Arrow, "textDim")
	Theme.Skin(b, "dropdown")
	b.psRow = row
	b:SetScript("OnClick", openChoices)
	row.Button = b
	fitLabel(row, b, dropdownSpan)
	-- Right-click on the row puts the setting back to its default.
	row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	row:SetScript("OnClick", function(_, button)
		if button == "RightButton" then
			if W.Enabled(row) then W.HideMenu(); ns.Set(path, nil) end
			return
		end
		openChoices(b)
	end)
	row:SetScript("OnEnter", rowEnter)
	row:SetScript("OnLeave", hideTip)
	row.Refresh = dropdownRefresh
	return W.Bind(row, path, depends)
end

---------------------------------------------------------------------------
-- Colour swatch: opens the game's colour picker; right-click restores the
-- default. Always editable. opts:
--   shown() -> r, g, b: the colour in effect when the setting holds none
--     (the scheme's accent, EllesmereUI's, the scheme's ground);
--   source() -> text: where that colour comes from, shown left of the chip
--     while the setting holds none ("EllesmereUI", "Dusk");
--   linked: other paths a cancelled pick restores too (picking an accent
--     turns Match EllesmereUI accent off).
---------------------------------------------------------------------------

function swatchColor(self)
	local c = ns.Get(self.psPath)
	if type(c) == "table" and type(c[1]) == "number" then return c[1], c[2], c[3], true end
	if self.psShown then
		local r, g, b = self.psShown()
		return r, g, b, false
	end
	c = ns.GetDefault(self.psPath)
	if type(c) == "table" then return c[1], c[2], c[3], false end
	return 1, 1, 1, false
end

function swatchRefresh(self)
	local r, g, b, own = swatchColor(self)
	self.Chip:SetVertexColor(r, g, b, 1)
	self.Note:SetText((not own and self.psSource and self.psSource()) or "")
	dimRow(self, W.Enabled(self))
end

function openPicker(self)
	if not ColorPickerFrame or not ColorPickerFrame.SetupColorPickerAndShow then return end
	local path = self.psPath
	local r, g, b = swatchColor(self)
	local previous = ns.Get(path)
	local linked = {}
	for i, p in ipairs(self.psLinked or {}) do linked[i] = ns.Get(p) end
	ColorPickerFrame:SetupColorPickerAndShow({
		r = r, g = g, b = b,
		hasOpacity = false,
		swatchFunc = function()
			local nr, ng, nb = ColorPickerFrame:GetColorRGB()
			ns.Set(path, { nr, ng, nb })
		end,
		cancelFunc = function()
			ns.Set(path, previous)
			for i, p in ipairs(self.psLinked or {}) do ns.Set(p, linked[i]) end
		end,
	})
end

function W.Swatch(parent, label, path, desc, opts)
	opts = opts or {}
	local row = settingRow(parent, label, desc)
	row.psShown, row.psSource, row.psLinked = opts.shown, opts.source, opts.linked
	local chip = CreateFrame("Frame", nil, row)
	chip:SetSize(34, 18)
	chip:SetPoint("RIGHT", row, "RIGHT", -12, 0)
	local fillTex = chip:CreateTexture(nil, "ARTWORK")
	fillTex:SetTexture(WHITE)
	fillTex:SetPoint("TOPLEFT", chip, "TOPLEFT", 2, -2)
	fillTex:SetPoint("BOTTOMRIGHT", chip, "BOTTOMRIGHT", -2, 2)
	W.Painter(chip, function(f) Theme.Border(f, Theme.Wash("swatch")) end)
	row.Chip = fillTex
	row.Note = W.Text(row, "small", "textMuted")
	row.Note:SetPoint("RIGHT", chip, "LEFT", -8, 0)
	fitLabel(row, row.Note, function(self) return 12 + 34 + 8 + math.ceil(textWidth(self.Note)) + 10 end)
	row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	row:SetScript("OnClick", function(self, button)
		if not W.Enabled(self) then return end
		if button == "RightButton" then ns.Set(self.psPath, nil) else openPicker(self) end
	end)
	row:SetScript("OnEnter", rowEnter)
	row:SetScript("OnLeave", hideTip)
	row.Refresh = swatchRefresh
	return W.Bind(row, path)
end

---------------------------------------------------------------------------
