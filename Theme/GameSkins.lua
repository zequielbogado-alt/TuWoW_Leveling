-- Game skin window frames and control paints
local ADDON, ns = ...
setfenv(1, ns._gameSkinsEnv)

function bigMetal(f, kit)
	local a = opacity(f)
	local t = body(f, 0.063, 0.055, 0.047, a)
	t:SetTexture(WHITE)
	t:SetVertexColor(0.063, 0.055, 0.047, a)
	local streaks = tex(f, "streaks", "BACKGROUND", -5)
	local w, h = draw(streaks, kit, kit.streaks)
	if w and h then
		streaks:ClearAllPoints()
		streaks:SetPoint("TOPLEFT", f, "TOPLEFT", -1, 0)
		streaks:SetPoint("TOPRIGHT", f, "TOPRIGHT", 0, 0)
		streaks:SetHeight(h or 43)
	else
		streaks:Hide()
	end
	local frame = child(f, "frame", 0)
	frame:EnableMouse(false)
	frame:ClearAllPoints()
	frame:SetPoint("TOPLEFT", f, "TOPLEFT", -3, 21)
	frame:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", 2, -2)
	local o = child(f, "metal", 500)
	o:EnableMouse(false)
	o:SetAllPoints(frame)
	nine(f, "metalArt", kit, kit.metal, o, kit.metalOut, "OVERLAY", 0, kit.metalSize)
	if not o._twBorder then
		o:SetBackdrop({
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			edgeSize = 14,
			insets = { left = 3, right = 3, top = 3, bottom = 3 },
		})
		o:SetBackdropBorderColor(0.85, 0.70, 0.28, 0.95)
		o._twBorder = true
	end
	local fs = title(f, o, "TOP", o, 0, -5)
	fs:SetPoint("LEFT", o, "LEFT", 60, 0)
	fs:SetPoint("RIGHT", o, "RIGHT", -60, 0)
	local bar = dragBar(f, o)
	bar:ClearAllPoints()
	bar:SetPoint("TOPLEFT", o, "TOPLEFT", 0, 0)
	bar:SetPoint("TOPRIGHT", o, "TOPRIGHT", -30, 0)
	bar:SetHeight(21)
	closeButton(f, o, kit, kit.closeSize, "TOPRIGHT", kit.closeAt[1], kit.closeAt[2])
end

BIG = {
	forever = bigMetal,
	blizzard = bigMetal,
	-- The vanilla options window: the dialog box (its border 11 units
	-- in), the header plate on its top edge with the title in it, the panel
	-- close button in its corner.
	classic = function(f, kit)
		local a = opacity(f)
		body(f, 0, 0, 0, a)
		local d = backdrop(f, "dialog", DIALOG, 1, 1, 1, a, 11, 0)
		local o = child(f, "metal", 500)
		o:EnableMouse(false)
		o:SetAllPoints(d)
		local plate = tex(f, "plate", "ARTWORK", 0, o)
		file(plate, CLASSIC.header[1])
		plate:ClearAllPoints()
		plate:SetPoint("TOP", o, "TOP", 0, 12)
		plate:SetSize(256, 64)
		title(f, o, "TOP", plate, 0, -14)
		local bar = dragBar(f, o)
		bar:ClearAllPoints()
		bar:SetPoint("TOPLEFT", plate, "TOPLEFT", 50, 0)
		bar:SetPoint("BOTTOMRIGHT", plate, "BOTTOMRIGHT", -50, 24)
		closeButton(f, o, kit, 32, "TOPRIGHT", -4, -4)
	end,
}

-- Menus, popups and the other panels: the dropdown menu's ground (Menu
-- Style1: common-dropdown-bg stretched 10 out, 92.5 %), the tooltip in
-- Classic.
function panel(f, kit)
	if f.psBare then return P.bare(f) end
	if kit.source == "file" then
		P.fill(f):Hide()
		backdrop(f, "tipBd", TOOLTIP, 0, 0, 0, 0.92, 0, 0)
		return
	end
	P.fill(f):Hide()
	-- Wide enough round the items for the art's own margins (MenuStyle1
	-- insets its items 8 from the top and 15 from the bottom).
	local p = sliced(f, "menuBg", kit, kit.menu, f, { 10, 8, 10, 15 }, "BACKGROUND", -7)
	for i = 1, 9 do p[i]:SetAlpha(0.925) end
end

-- A text button: UIPanelButtonTemplate (UI-Panel-Button-Up, the same file in
-- every look).
function textButton(f)
	return P.redButton(f)
end

function card(f, kit, selected)
	if kit.card then
		sliced(f, "card", kit, selected and kit.cardSelected or kit.card, f, nil, "BACKGROUND", -6)
		local lp = sliced(f, "cardLit", kit, kit.cardHover, f, nil, "HIGHLIGHT", 0)
		for i = 1, 9 do if lp[i] then lp[i]:SetBlendMode("ADD") end end
		return
	end
	if kit.source == "file" then
		P.fill(f):Hide()
		local o = backdrop(f, "tipBd", TOOLTIP, 0.1, 0.1, 0.1, 0.6, 0, 0)
		if o.SetBackdropBorderColor then o:SetBackdropBorderColor(0.4, 0.4, 0.4, 1) end
		P.hoverWash(f)
		return
	end
	body(f, 0, 0, 0, 0.45)
	Theme.Border(f, 1, 1, 1, 0.12)
	P.hoverWash(f)
end

-- An inset (InsetFrameTemplate: the marble tile and the inner frame), the
-- options box in Classic (a tooltip border at 40 % grey on a dark ground).
function inset(f, kit)
	if kit.source == "file" then
		P.fill(f):Hide()
		local o = backdrop(f, "tipBd", TOOLTIP, 0.1, 0.1, 0.1, 0.5, 0, 0)
		if o.SetBackdropBorderColor then o:SetBackdropBorderColor(0.4, 0.4, 0.4, 1) end
		return
	end
	local t = body(f, 1, 1, 1, 1)
	file(t, MARBLE, true)
	local o = child(f, "insetFrame", 1)
	o:EnableMouse(false)
	o:SetAllPoints(f)
	nine(f, "insetArt", kit, kit.inset, o, { 0, 0, 0, 1 }, "BORDER", -5)
end

-- A dropdown's field: WowStyle2DropdownTemplate (the Settings panel's: its
-- button art 7 out, the arrow only under the cursor), UIDropDownMenu's
-- frame in Classic (64 high round its 32, the arrow button at its right).
function field(f, kit)
	if kit.source == "file" then
		local host = child(f, "ddHost", -1)
		host:EnableMouse(false)
		host:ClearAllPoints()
		host:SetPoint("TOPLEFT", f, "TOPLEFT", -16, 19)
		host:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", 16, -21)
		three(f, "ddArt", kit, { "ddLeft", "ddMiddle", "ddRight" }, host, 25, nil, "ARTWORK", 0)
		P.hoverWash(f):SetVertexColor(1, 1, 1, 0)
		return
	end
	sliced(f, "dd", kit, kit.dropdown, f, { 7, 7, 7, 7 }, "BACKGROUND", -6)
	local dp = sliced(f, "ddLit", kit, kit.dropdownLit, f, { 7, 7, 7, 7 }, "HIGHLIGHT", 0)
	for i = 1, 9 do if dp[i] then dp[i]:SetBlendMode("ADD") end end
	local arrow = tex(f, "ddArrow", "HIGHLIGHT", 1)
	draw(arrow, kit, kit.dropdownArrow)
	arrow:ClearAllPoints()
	arrow:SetPoint("BOTTOM", f, "BOTTOM", 0, -5)
	arrow:SetSize(12, 5)
	P.hoverWash(f):SetVertexColor(1, 1, 1, 0)
end

function checkbox(f, kit)
	P.house.checkbox(f)
	local d = f.psSkin
	d.box:Hide()
	local box = tex(f, "check", "ARTWORK", 0)
	-- The art (30 x 29 with its glow) at 26 x 25 on the Settings panel's 18
	-- unit box, and in that proportion on a smaller one (the guide window's
	-- tick boxes), so it stays inside the control's own room.
	local function size()
		local side = max(f:GetWidth(), f:GetHeight())
		if side <= 0 then side = 18 end
		local w, h = side * 26 / 18, side * 25 / 18
		box:SetSize(w, h)
		if d.check then d.check:SetSize(w, h) end
	end
	draw(box, kit, kit.check)
	box:ClearAllPoints()
	box:SetPoint("CENTER", f, "CENTER", 0, 0)
	if d.check then
		draw(d.check, kit, kit.checkOn)
		d.check:SetVertexColor(1, 1, 1, 1)
	end
	size()
	local k = store(f)
	if not k.checkSized then
		k.checkSized = true
		f:HookScript("OnSizeChanged", function() if k.check and k.check:IsShown() then size() end end)
	end
	P.hoverWash(f):SetVertexColor(1, 1, 1, 0)
end

function tab(f)
	Theme.KitTab(f, f.psSelected and true or false, rawget(f, "Label"))
	local d = f.psSkin
	if d.bar then d.bar:Hide() end
	P.hoverWash(f):SetVertexColor(1, 1, 1, 0)
end

-- The scroll bar: MinimalScrollBar (8 wide, its track between the arrow
-- buttons, the proportional thumb in three pieces), UIPanelScrollBar in
-- Classic (16 wide, the arrow buttons and the knob).
function scrollbar(bar, kit)
	local s = kit.scroll
	local thumb = bar.thumb or bar.psThumb
	bar:SetWidth(s.width)
	bar.psInset = s.inset
	local sf = bar.psScroll
	local function arrow(key, name, point, dir)
		local b = child(bar, key, 1, "Button")
		b:SetSize(s.width == 8 and 17 or 16, s.width == 8 and 11 or 16)
		b:ClearAllPoints()
		b:SetPoint(point, bar, point, 0, 0)
		local t = tex(b, key .. "Art", "ARTWORK", 0)
		draw(t, kit, name)
		t:SetAllPoints(b)
		if not b.psWired then
			b:SetScript("OnClick", function()
				if sf then
					sf:SetVerticalScroll(max(0, sf:GetVerticalScroll() + dir * 40))
					local fn = sf:GetScript("OnMouseWheel")
					if fn then fn(sf, 0) end
				end
			end)
			b.psWired = true
		end
	end
	arrow("up", s.up, "TOP", -1)
	arrow("down", s.down, "BOTTOM", 1)
	if not thumb then return end
	thumb:SetWidth(s.width)
	if s.track then
		local host = child(bar, "trackHost", -1)
		host:EnableMouse(false)
		host:ClearAllPoints()
		host:SetPoint("TOP", bar, "TOP", 0, -s.inset)
		host:SetPoint("BOTTOM", bar, "BOTTOM", 0, s.inset)
		host:SetWidth(s.width)
		local p = store(bar).track
		if not p then
			p = { host:CreateTexture(nil, "ARTWORK"), host:CreateTexture(nil, "ARTWORK"), host:CreateTexture(nil, "ARTWORK") }
			store(bar).track = p
		end
		for i = 1, 3 do draw(p[i], kit, s.track[i]); p[i]:ClearAllPoints() end
		p[1]:SetPoint("TOP", host, "TOP"); p[1]:SetSize(8, 8)
		p[3]:SetPoint("BOTTOM", host, "BOTTOM"); p[3]:SetSize(8, 8)
		p[2]:SetPoint("TOP", p[1], "BOTTOM"); p[2]:SetPoint("BOTTOM", p[3], "TOP"); p[2]:SetWidth(8)
		draw(thumb, kit, s.thumb[2])
		local top = tex(bar, "thumbTop", "OVERLAY", 1)
		local bottom = tex(bar, "thumbBottom", "OVERLAY", 1)
		draw(top, kit, s.thumb[1])
		draw(bottom, kit, s.thumb[3])
		top:ClearAllPoints(); top:SetPoint("BOTTOM", thumb, "TOP"); top:SetSize(8, 8)
		bottom:ClearAllPoints(); bottom:SetPoint("TOP", thumb, "BOTTOM"); bottom:SetSize(8, 8)
	else
		draw(thumb, kit, s.knob)
	end
end

function paints(name)
	local kit = KITS[name]
	return {
		window = function(f)
			if f.psBare then
				P.bare(f)
				for _, key in ipairs({ "edge", "band", "dialog", "frame", "metal", "streaks" }) do hideKey(f, key) end
				return
			end
			P.hideBorder(f)
			if f.psShadow then f.psShadow:Hide() end
			if f.psGuide or f.psLight then GUIDE[name](f, kit) else BIG[name](f, kit) end
		end,
		panel = function(f) panel(f, kit) end,
		sidebar = function(f) inset(f, kit) end,
		inset = function(f) inset(f, kit) end,
		button = function(f)
			if f.psTextButton then return textButton(f) end
			card(f, kit)
		end,
		tile = function(f) card(f, kit) end,
		dropdown = function(f) field(f, kit) end,
		editbox = function(f)
			if kit.source == "file" then
				P.fill(f):Hide()
				backdrop(f, "tipBd", TOOLTIP, 0, 0, 0, 0.8, 0, 0)
			else
				P.fill(f):Hide()
				three(f, "field", kit, { "common-search-border-left", "common-search-border-middle", "common-search-border-right" }, f, 8, nil, "BACKGROUND", -6)
			end
		end,
		checkbox = function(f) checkbox(f, kit) end,
		tab = function(f) tab(f) end,
		scrollbar = function(f) scrollbar(f, kit) end,
	}
end

for name in pairs(KITS) do Theme.SKIN_PAINT[name] = paints(name) end

---------------------------------------------------------------------------
-- Parts the widgets and the guide window ask for
---------------------------------------------------------------------------

-- An icon button in a kit: the close art, a plate under the glyph (or, in
-- Classic, the page arrows for ‹ ›). -> true when the kit drew it.
function Theme.KitIconButton(b)
	local kit = Theme.Kit()
	local framed = rawget(b, "psFramed")
	local isClose = rawget(b, "psIconName") == "close"
	for _, key in ipairs({ "plate", "plateLit", "closeN", "closeD", "closeL" }) do hideKey(b, key) end
	if not kit or not (framed or isClose) then
		if b.Icon then b.Icon:SetAlpha(1) end
		return false
	end
	if isClose then
		closeArt(b, kit, min(32, b:GetWidth() + 2))
		b.Icon:SetAlpha(0)
		return true
	end
	if kit.source == "file" then
		if framed == "red" then
			local t = tex(b, "plate", "ARTWORK", 1)
			draw(t, kit, b.psIconName == "chevron-left" and kit.prev or kit.next)
			t:ClearAllPoints()
			t:SetPoint("CENTER", b, "CENTER", 0, 0)
			t:SetSize(b:GetWidth() + 4, b:GetHeight() + 4)
			b.Icon:SetAlpha(0)
		else
			b.Icon:SetAlpha(1)
		end
		return true
	end
	local t = tex(b, "plate", "BACKGROUND", -6)
	draw(t, kit, kit.plate)
	t:SetAllPoints(b)
	local hl = tex(b, "plateLit", "HIGHLIGHT")
	draw(hl, kit, kit.plateHover)
	hl:SetAllPoints(b)
	hl:SetBlendMode("ADD")
	b.Icon:SetAlpha(1)
	return true
end

-- The check box in place of a toggle switch (SettingsCheckboxTemplate), on
-- `host` round `anchor`. -> the box texture (its .Check the tick)
function Theme.KitCheck(owner, host, anchor, on)
	local kit = Theme.Kit()
	local k = store(owner)
	local box = k.toggle
	if not box then
		box = host:CreateTexture(nil, "ARTWORK")
		box.Check = host:CreateTexture(nil, "OVERLAY")
		k.toggle, k.toggleCheck = box, box.Check
	end
	box:Show()
	draw(box, kit, kit.check)
	box:SetSize(26, 25)
	box:ClearAllPoints()
	box:SetPoint("CENTER", anchor, "CENTER", 0, 0)
	draw(box.Check, kit, kit.checkOn)
	box.Check:SetAllPoints(box)
	box.Check:SetShown(on and true or false)
	return box
end

-- A slider's track, thumb and steppers (MinimalSliderWithSteppersTemplate:
-- the back button 4 left of the track, the forward one 4 right of it; the
-- options slider in Classic). -> true when the kit drew them.
function Theme.KitSlider(owner, s, thumb)
	local kit = Theme.Kit()
	for _, key in ipairs({ "trackBd", "trackHost", "back", "forward" }) do hideKey(owner, key) end
	if not kit then return false end
	if kit.source == "file" then
		local o = backdrop(owner, "trackBd", SLIDER, 1, 1, 1, 1, 0, 0, s)
		o:ClearAllPoints()
		o:SetPoint("LEFT", s, "LEFT", 0, 0)
		o:SetPoint("RIGHT", s, "RIGHT", 0, 0)
		o:SetHeight(17)
		o:SetFrameLevel(s:GetFrameLevel())
		draw(thumb, kit, kit.slThumb)
		thumb:SetSize(32, 32)
		return true
	end
	local host = child(owner, "trackHost", 0)
	host:SetParent(s)
	host:EnableMouse(false)
	host:ClearAllPoints()
	host:SetPoint("LEFT", s, "LEFT", 0, 0)
	host:SetPoint("RIGHT", s, "RIGHT", 0, 0)
	host:SetHeight(17)
	host:SetFrameLevel(s:GetFrameLevel())
	three(owner, "trackArt", kit, kit.slider, host, 11, nil, "BACKGROUND", 0)
	draw(thumb, kit, kit.slThumb)
	thumb:SetSize(20, 19)
	local function stepper(key, name, w, h, point, rel, x, dir)
		local b = child(owner, key, 2, "Button")
		b:SetParent(s:GetParent())
		b:SetFrameLevel(s:GetFrameLevel() + 2)
		b:SetSize(w, h)
		b:ClearAllPoints()
		b:SetPoint(point, s, rel, x, 0)
		local t = tex(b, key .. "Art", "ARTWORK", 0)
		draw(t, kit, name)
		t:SetAllPoints(b)
		if not b.psWired then
			b:SetScript("OnClick", function()
				local lo, hi = s:GetMinMaxValues()
				local step = s:GetValueStep() or 1
				local v = min(hi, max(lo, s:GetValue() + dir * (step > 0 and step or 1)))
				-- A click is the player's change, as a drag is.
				local fn = s:GetScript("OnValueChanged")
				s:SetValue(v)
				if fn then fn(s, v, true) end
			end)
			b.psWired = true
		end
	end
	stepper("back", kit.slBack, 11, 19, "RIGHT", "LEFT", -4, -1)
	stepper("forward", kit.slForward, 9, 18, "LEFT", "RIGHT", 4, 1)
	return true
end

-- A dropdown's arrow: Classic's arrow button; the atlas looks draw theirs
-- with the field (under the cursor only). -> true when the kit drew it.
function Theme.KitDropArrow(arrow)
	local kit = Theme.Kit()
	if not kit then return false end
	if kit.source == "file" then
		draw(arrow, kit, kit.ddArrow)
		arrow:SetSize(26, 26)
		arrow:SetAlpha(1)
	else
		arrow:SetAlpha(0)
	end
	return true
end

-- A tab in the kit's art (MinimalTabTemplate: Options_Tab_* along its
-- bottom, the active one 3 higher; the vanilla option tabs in Classic) with
-- its label on the art: BOTTOM 0,6 when active, 0,4 otherwise. -> true
-- `flush`: the tab's top lies on the window's edge (the guide window's
-- strip). Forever's tab art is an outline whose top and left run along that
-- edge, leaving its right side as a lone line by the rest of the strip
-- (#312); there the active tab is the Settings list's selected row instead.
function Theme.KitTab(b, active, label, flush)
	local kit = Theme.Kit()
	if not kit then
		hideKey(b, "tab")
		return false
	end
	local isFile = kit.source == "file"
	local lit = flush and active and kit.source == "atlas" and kit.navLit
	local host = child(b, "tab", -1)
	host:EnableMouse(false)
	host:ClearAllPoints()
	host:SetPoint("BOTTOMLEFT", b, "BOTTOMLEFT", 0, 0)
	host:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", 0, 0)
	if lit then
		host:SetPoint("TOP", b, "TOP", 0, 0)
		hideKey(b, "tabArt")
		local t = tex(b, "tabLit", "BACKGROUND", 0, host)
		draw(t, kit, lit)
		t:SetAllPoints(host)
	else
		hideKey(b, "tabLit")
		host:SetHeight(active and (isFile and 28 or 26) or (isFile and 24 or 23))
		three(b, "tabArt", kit, active and kit.tabActive or kit.tab, host, isFile and 14 or 7, isFile and 16 / 112 or nil, "BACKGROUND", 0)
	end
	if label then
		b.psKitLabel = true
		label:ClearAllPoints()
		label:SetPoint("BOTTOM", b, "BOTTOM", 0, active and 6 or 4)
	end
	return true
end

-- The highlight under the guide window's current goal and a selected
-- navigation row: Forever's selected card / the Settings list's active row,
-- Blizzard's gold wash, Classic's quest title or list highlight.
function Theme.KitRowLit(r, shown, key, inset)
	key = key or "rowLit"
	local kit = Theme.Kit()
	hideKey(r, key .. "Edge")
	hideKey(r, key .. "Hover")
	if not kit then
		hideKey(r, key)
		return false
	end
	-- The Settings list's rows: Options_List_Hover under the cursor too.
	if key == "navLit" and kit.navHover then
		local hv = tex(r, key .. "Hover", "HIGHLIGHT", 0)
		draw(hv, kit, kit.navHover)
		hv:SetBlendMode("ADD")
		hv:ClearAllPoints()
		hv:SetPoint("LEFT", r, "LEFT", inset or 4, 0)
		hv:SetPoint("RIGHT", r, "RIGHT", -(inset or 4), 0)
		hv:SetHeight(24)
	end
	if not shown then
		hideKey(r, key)
		return false
	end
	local t = tex(r, key, "BACKGROUND", -4)
	t:ClearAllPoints()
	if key == "navLit" and kit.navHover then
		t:SetPoint("LEFT", r, "LEFT", inset or 4, 0)
		t:SetPoint("RIGHT", r, "RIGHT", -(inset or 4), 0)
		t:SetHeight(24)
		draw(t, kit, kit.navLit)
		return true
	end
	t:SetPoint("TOPLEFT", r, "TOPLEFT", inset or 4, 0)
	t:SetPoint("BOTTOMRIGHT", r, "BOTTOMRIGHT", -(inset or 4), 0)
	if kit.source == "retail" then
		file(t, Theme.Media("white"))
		if t.SetGradient and CreateColor then
			t:SetGradient("HORIZONTAL", CreateColor(1, 0.82, 0, 0.2), CreateColor(1, 0.82, 0, 0))
		else
			t:SetVertexColor(1, 0.82, 0, 0.12)
		end
		local e = tex(r, key .. "Edge", "BORDER", 0)
		file(e, Theme.Media("white"))
		e:SetVertexColor(1, 0.82, 0, 1)
		e:ClearAllPoints()
		e:SetPoint("TOPLEFT", t, "TOPLEFT")
		e:SetPoint("BOTTOMLEFT", t, "BOTTOMLEFT")
		e:SetWidth(2)
		return true
	end
	draw(t, kit, (key == "navLit" and kit.navLit) or kit.rowLit)
	if kit.source == "file" then t:SetBlendMode("ADD") end
	return true
end

-- The quest tracker's header behind the guide window's focus (Forever's
-- bronze rods, Blizzard's gold filigree). -> true when drawn
function Theme.KitHeader(f, shown)
	local kit = Theme.Kit()
	if not (kit and kit.header and shown) then
		hideKey(f, "header")
		return false
	end
	-- The band's own rows: 4..39 of its 40, its ends' rods 25 of its 300.
	local parts = three(f, "header", kit, kit.header, f, 12, 25 / 300, "BACKGROUND", -3)
	local _, l, r, tp, b = region(kit, kit.header)
	if l then
		local du, dv = r - l, b - tp
		local us = { { 0, 25 / 300 }, { 25 / 300, 1 - 25 / 300 }, { 1 - 25 / 300, 1 } }
		for i = 1, 3 do parts[i]:SetTexCoord(l + du * us[i][1], l + du * us[i][2], tp + dv * 4 / 40, tp + dv * 39 / 40) end
	end
	return true
end

-- The guide window's tab strip ground: Blizzard's damage meter header bar.
function Theme.KitStrip(f, shown)
	local kit = Theme.Kit()
	if not (kit and kit.headerBar and shown) then
		hideKey(f, "strip")
		return false
	end
	local t = tex(f, "strip", "BACKGROUND", -6)
	draw(t, kit, kit.headerBar)
	t:SetAllPoints(f)
	return true
end

-- The guide window's progress bar in a kit, on StatusBar b (its Bg, a frame
-- piece). -> true when the kit drew it
--
-- Forever's fill is drawn as a texture of its own, cropped to the bar's value
-- (statusFill): a status bar recomputes its own texture's coordinates as it
-- fills, which lost the atlas region set on it, so the fill never showed
-- (#306). Its frame is Legacy-Progressbar-Frame round the bar as the client's
-- legacy bars wear it: 7 out a side (its 262 x 52 against the fill's 234 x 24,
-- in 2x pixels), the slice margins drawn at half their 2x size.
-- statusFill to b's value: the fill's left share of its art, as wide as that
-- share of the bar (nothing at none).
function paintFill(b)
	local k = store(b)
	local kit, t = k.fillKit, k.statusFill
	if not (kit and t) then return end
	local lo, hi = b:GetMinMaxValues()
	local share = hi > lo and (b:GetValue() - lo) / (hi - lo) or 0
	share = max(0, min(1, share))
	local w = b:GetWidth() * share
	if w < 0.5 then
		t:Hide()
		return
	end
	draw(t, kit, kit.status.fill, 0, share, 0, 1)
	t:ClearAllPoints()
	t:SetPoint("TOPLEFT", b, "TOPLEFT", 0, 0)
	t:SetPoint("BOTTOMLEFT", b, "BOTTOMLEFT", 0, 0)
	t:SetWidth(w)
end
Theme.KitPaintFill = paintFill
function Theme.KitStatus(b)
	local kit = Theme.Kit()
	for _, key in ipairs({ "statusFrame", "statusEdge", "statusArt", "statusNine", "statusFill" }) do hideKey(b, key) end
	local own = b:GetStatusBarTexture()
	if own then own:SetAlpha(1) end
	local k = store(b)
	k.fillKit = nil
	if not kit then return false end
	local fill = own
	if kit.source == "atlas" then
		-- The bar's own fill stays (others read and colour it) but unseen.
		if own then own:SetAlpha(0) end
		draw(b.Bg, kit, kit.status.bg)
		local t = tex(b, "statusFill", "ARTWORK", 0)
		k.fillKit = kit
		if not k.fillHooked then
			k.fillHooked = true
			b:HookScript("OnValueChanged", paintFill)
			b:HookScript("OnSizeChanged", paintFill)
		end
		paintFill(b)
		local o = child(b, "statusFrame", 2)
		o:EnableMouse(false)
		o:ClearAllPoints()
		o:SetPoint("TOPLEFT", b, "TOPLEFT", -7, 6)
		o:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", 7, -7)
		sliced(b, "statusArt", kit, kit.status.frame, o, nil, "ARTWORK", 0, true, 0.5)
	elseif kit.source == "retail" then
		b:SetStatusBarTexture(CLASSIC.statusFill[1])
		fill = b:GetStatusBarTexture()
		fill:SetTexCoord(0, 1, 0, 1)
		fill:SetVertexColor(1, 0.67, 0, 1)
		draw(b.Bg, kit, kit.status.bg)
		local e = tex(b, "statusEdge", "OVERLAY", 6)
		draw(e, kit, kit.status.edge)
		e:ClearAllPoints()
		e:SetPoint("TOPLEFT", b, "TOPLEFT", -2, 2)
		e:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", 2, -2)
	else
		b:SetStatusBarTexture(CLASSIC.statusFill[1])
		fill = b:GetStatusBarTexture()
		fill:SetTexCoord(0, 1, 0, 1)
		fill:SetVertexColor(0, 0.8, 0, 1)
		file(b.Bg, Theme.Media("white"))
		b.Bg:SetVertexColor(0, 0, 0, 0.5)
		local o = child(b, "statusFrame", 2)
		o:EnableMouse(false)
		o:SetAllPoints(b)
		-- The cast bar frame at 60 % of its sheet: caps 19 wide, the bands
		-- 7 over and under the bar.
		local parts = nineOf(b, "statusNine", kit, "castbar", 32 / 224, 12 / 32, 19, 7, o, { 10, 7, 10, 7 }, "ARTWORK", 0, true)
		parts[5]:Hide()
	end
	if b.psBorder then for i = 1, 4 do b.psBorder[i]:Hide() end end
	return true
end
