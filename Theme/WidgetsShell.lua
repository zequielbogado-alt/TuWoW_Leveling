-- Widgets shell (W.Shell) and options registry
local ADDON, ns = ...
setfenv(1, ns._widgetsEnv)

-- The shell
---------------------------------------------------------------------------

HOUSE_SHELL = {
	width = 960, height = 680, sidebar = 240, header = 112, tabs = 40, footer = 56, pad = 32,
	side = 24, -- the sidebar's left edge
	top = 152, -- header + tab band: where navigation and content begin
	rail = 88, -- the section rail of a hub shell (opts.rail): "Nachschlagen" fits
	brand = 69, -- a hub's brand block ends here: the rail's hairline starts below it
	foot = 23, -- the version line's bottom, level with the rail's foot label
}
-- The shell's sizes follow the skin (Theme.Metric; DIRECTION_B_HALO.md §3:
-- 930 x 690, a 200 sidebar, 32 tabs, the body 28 from the edge, a 56 foot).
-- A window takes them as it is built: one built before a skin change keeps
-- its sizes until the interface reloads.
SHELL_METRIC = { width = "shellW", height = "shellH", sidebar = "shellSidebar", header = "shellHeader",
	tabs = "shellTabs", footer = "shellFooter", pad = "shellPad" }
SHELL = setmetatable({}, {
	__index = function(_, k)
		if k == "top" then
			return Theme.Metric("shellHeader", HOUSE_SHELL.header) + Theme.Metric("shellTabs", HOUSE_SHELL.tabs)
		end
		local m = SHELL_METRIC[k]
		if m then return Theme.Metric(m, HOUSE_SHELL[k]) end
		return HOUSE_SHELL[k]
	end,
})
W.SHELL = SHELL

-- Polestar's memory in KB (nil when the client hides it), for About.
function W.AddonMemory()
	if not (UpdateAddOnMemoryUsage and GetAddOnMemoryUsage) then return nil end
	local ok = pcall(UpdateAddOnMemoryUsage)
	if not ok then return nil end
	local ok2, kb = pcall(GetAddOnMemoryUsage, ADDON)
	if ok2 and type(kb) == "number" then return kb end
	return nil
end

-- The sidebar status line: the version (memory is a developer's number; it
-- lives on About).
function statusText()
	return L["Version"] .. " " .. tostring(ns.version or "dev")
end

-- The release stage (ns.stage, "Beta") as a warning chip beside the version,
-- or nothing once there is none. -> the chip's width (0 when hidden).
function W.SetStageChip(c)
	if not ns.stage then
		c:Hide()
		return 0
	end
	return W.SetChip(c, string.upper(L[ns.stage]), "warning")
end

-- Navigation rows in the sidebar, on the nav scroll area's child.
NAV_ROW = 36
function navButton(f, i)
	local b = f.navButtons[i]
	if b then return b end
	b = CreateFrame("Button", nil, f.NavScroll.Child)
	b:SetHeight(NAV_ROW)
	hoverTexture(b)
	-- The selected row: in the house style an accent wash fading out to the
	-- right (12 % to clear at 85 % of the row), elsewhere the selected wash.
	b.Selected = b:CreateTexture(nil, "BACKGROUND")
	b.Selected:SetTexture(WHITE)
	b.Selected:SetPoint("TOPLEFT", b, "TOPLEFT", 0, 0)
	b.Selected:SetPoint("BOTTOMLEFT", b, "BOTTOMLEFT", 0, 0)
	W.Painter(b.Selected, function(t)
		local w = (f.psSidebar or SHELL.sidebar) - 1
		if Theme.SkinKey() == "polestar" then
			local r, g, bb = Theme.Accent()
			t:SetWidth(w * 0.85)
			gradient(t, r, g, bb, 0.12, r, g, bb, 0)
		else
			t:SetWidth(w)
			if t.SetGradient and CreateColor then
				local r, g, bb, a = Theme.Wash("selected")
				t:SetGradient("HORIZONTAL", CreateColor(r, g, bb, a), CreateColor(r, g, bb, a))
			else
				t:SetVertexColor(Theme.Wash("selected"))
			end
		end
	end)
	b.Bar = b:CreateTexture(nil, "ARTWORK")
	b.Bar:SetTexture(WHITE)
	b.Bar:SetWidth(2)
	b.Bar:SetPoint("TOPLEFT", b, "TOPLEFT", 0, 0)
	b.Bar:SetPoint("BOTTOMLEFT", b, "BOTTOMLEFT", 0, 0)
	W.Color(b.Bar, "accent")
	b.Icon = b:CreateTexture(nil, "ARTWORK")
	b.Icon:SetSize(16, 16)
	b.Icon:SetPoint("LEFT", b, "LEFT", SHELL.side, 0)
	b.Label = W.Text(b, "body", "textDim")
	-- Two lines at most: both fit the 36px row (13px type); past that it is
	-- cut. Its text is set on every ShellNav, so the cold-start blank of a
	-- max-lines string (W.Text) does not stick.
	b.Label:SetWordWrap(true)
	b.Label:SetMaxLines(2)
	b.Label:SetPoint("LEFT", b.Icon, "RIGHT", 12, 0)
	b.Count = W.Text(b, "number", "textMuted")
	b.Count:SetJustifyH("RIGHT")
	b.Count:SetPoint("RIGHT", b, "RIGHT", -SHELL.side, 0)
	-- A warning dot: something on that page needs the player's attention.
	b.Dot = b:CreateTexture(nil, "ARTWORK")
	b.Dot:SetTexture(Theme.Media("circle"))
	b.Dot:SetSize(6, 6)
	b.Dot:SetPoint("RIGHT", b, "RIGHT", -SHELL.side, 0)
	W.Color(b.Dot, "warning")
	b.Dot:Hide()
	b:SetScript("OnClick", function(self) if f.psOnNav and not self.psHeading then f.psOnNav(self.psKey) end end)
	f.navButtons[i] = b
	return b
end

-- items: { { key, label, icon, count, dot }, ... }; the active one is marked.
-- A row whose count is 0 recedes (no number, faded) but stays reachable; a
-- row with `dot` carries a warning dot at its right edge (no count then).
-- { heading = true, label } is a muted heading over the rows after it, at
-- the text edge, not a choice.
--
-- The rows live in their own scroll area, from 12px under the search down
-- to the line of the main column's footer bar (SHELL.footer from the
-- bottom), so the version and stage chip below it keep their band however
-- many rows there are: past that line the list scrolls (wheel, thumb) and
-- the active row is scrolled into view.
-- { separator = true } is a hairline between groups of rows, at the text
-- edges, not a row.
NAV_SEP = 17

function navRow(b, item, on)
	b.psKey = item.key
	local empty = item.count == 0
	b.Icon:SetTexture(Theme.Media(item.icon or "compact"))
	b.Label:SetText(item.label)
	b.Count:SetText(item.count or "")
	b.Count:SetShown(item.count ~= nil and not empty)
	b.Dot:SetShown(item.dot and true or false)
	if item.dot then b.Count:Hide() end
	b.Selected:SetShown(on)
	b.Bar:SetShown(on)
	-- The game's looks mark the row with their own selection art.
	if Theme.KitRowLit(b, on, "navLit", 10) then
		b.Selected:Hide()
		b.Bar:Hide()
	end
	W.Color(b.Label, on and "text" or (empty and "textMuted" or "navRest"))
	W.Color(b.Icon, on and "accent" or (empty and "textMuted" or "textDim"))
	b:SetAlpha((empty and not on) and 0.55 or 1)
	b.psEmpty = empty
	b.psHeading = item.heading and true or false
	b.Icon:SetShown(not item.heading)
	-- The label ends short of the count (or dot), as wide as that is, and
	-- takes a second line rather than run under it or off the sidebar.
	b.Label:ClearAllPoints()
	if item.heading then
		b.Label:SetPoint("LEFT", b, "LEFT", SHELL.side, 0)
		b.Label:SetPoint("RIGHT", b, "RIGHT", -SHELL.side, 0)
		W.Color(b.Label, "textMuted")
		b:SetAlpha(1)
		b:Disable()
	else
		local reserve = b.Dot:IsShown() and 6 + 8 or b.Count:IsShown() and math.ceil(textWidth(b.Count)) + 8 or 0
		b.Label:SetPoint("LEFT", b.Icon, "RIGHT", 12, 0)
		b.Label:SetPoint("RIGHT", b, "RIGHT", -(SHELL.side + reserve), 0)
		b:Enable()
	end
end

function W.ShellNav(f, items, active, onSelect)
	f.psOnNav = onSelect
	local sf = f.NavScroll
	local y, activeY = 0, nil
	local rules = rawget(f, "navRules") or {}
	f.navRules = rules
	local bi, ri = 0, 0
	for _, item in ipairs(items) do
		if item.separator then
			ri = ri + 1
			local t = rules[ri]
			if not t then
				t = W.Divider(sf.Child)
				rules[ri] = t
			end
			t:ClearAllPoints()
			t:SetPoint("TOPLEFT", sf.Child, "TOPLEFT", SHELL.side, -(y + 8))
			t:SetPoint("TOPRIGHT", sf.Child, "TOPRIGHT", -SHELL.side, -(y + 8))
			t:Show()
			y = y + NAV_SEP
		else
			bi = bi + 1
			local b = navButton(f, bi)
			local on = item.key == active
			navRow(b, item, on)
			b:ClearAllPoints()
			b:SetPoint("TOPLEFT", sf.Child, "TOPLEFT", 0, -y)
			b:SetPoint("TOPRIGHT", sf.Child, "TOPRIGHT", 0, -y)
			b:Show()
			if on then activeY = y end
			y = y + NAV_ROW
		end
	end
	for i = bi + 1, #f.navButtons do f.navButtons[i]:Hide() end
	for i = ri + 1, #rules do rules[i]:Hide() end
	local view = W.ShellNavHeight(f)
	sf.Child:SetWidth((f.psSidebar or SHELL.sidebar) - 1)
	W.SetScrollContent(sf, y, view)
	if activeY then
		local cur = sf:GetVerticalScroll()
		if activeY < cur then
			W.ScrollTo(sf, activeY)
		elseif activeY + NAV_ROW > cur + view then
			W.ScrollTo(sf, activeY + NAV_ROW - view)
		end
	end
end

-- The height the navigation rows may fill: from their top line to the
-- footer bar's line.
function W.ShellNavHeight(f)
	return f:GetHeight() - 2 - f.psNavTop - SHELL.footer
end

function shellTab(f, i)
	local t = f.tabButtons[i]
	if t then return t end
	t = CreateFrame("Button", nil, f.TabRow)
	t:SetHeight(SHELL.tabs)
	t.Label = W.Text(t, "label", "textDim")
	t.Label:SetPoint("CENTER", t, "CENTER", 0, 0)
	Theme.Skin(t, "tab")
	t:SetScript("OnClick", function(self) if f.psOnTab then f.psOnTab(self.psKey) end end)
	f.tabButtons[i] = t
	return t
end

-- Where the body runs: from under the tab row (or the header without one) to
-- the footer bar, or through its place to the bottom when there is none (a
-- hidden footer still marks the column's width).
function layoutBody(f)
	local tabs, foot = f.TabRow:IsShown(), f.Footer:IsShown()
	f.Content:ClearAllPoints()
	f.Content:SetPoint("TOPLEFT", tabs and f.TabRow or f.Header, "BOTTOMLEFT", 0, 0)
	f.Content:SetPoint("BOTTOMRIGHT", f.Footer, foot and "TOPRIGHT" or "BOTTOMRIGHT", 0, 0)
	f.psViewH = f:GetHeight() - SHELL.header - (tabs and SHELL.tabs or 0) - (foot and SHELL.footer or 0)
end

-- tabs: { { key, label }, ... } or nil (no tab row; the body moves up). A
-- single tab is no choice: its row is left out too.
function W.ShellTabs(f, tabs, active, onSelect)
	f.psOnTab = onSelect
	local n = tabs and #tabs or 0
	if n == 1 and not f.psKeepOneTab then n = 0 end
	local x = SHELL.pad - 12
	for i = 1, n do
		local t = shellTab(f, i)
		t.psKey = tabs[i].key
		t.Label:SetText(tabs[i].label)
		local on = tabs[i].key == active
		Theme.SetTabSelected(t, on)
		-- The game's looks: MinimalTabTemplate, its small label on the art,
		-- the tab 40 wider than it; the house tab 24 wider, its label centred.
		local kit = Theme.KitTab(t, on, t.Label)
		if not kit then
			t.Label:ClearAllPoints()
			t.Label:SetPoint("CENTER", t, "CENTER", 0, 0)
		end
		Theme.Font(t.Label, kit and "small" or "label")
		t:SetWidth(floor(t.Label:GetStringWidth() + (kit and 40 or 24) + 0.5))
		W.Color(t.Label, on and "text" or (kit and "tabRest" or "textDim"))
		t:ClearAllPoints()
		t:SetPoint("BOTTOMLEFT", f.TabRow, "BOTTOMLEFT", x, 0)
		t:Show()
		x = x + t:GetWidth() + 4
	end
	for i = n + 1, #f.tabButtons do f.tabButtons[i]:Hide() end
	f.TabRow:SetShown(n > 0 or f.psKeepTabRow and true or false)
	layoutBody(f)
end

-- Footer buttons: left and right lists of { label, onClick, opts }.
-- opts.confirm: a second click acts; opts.ghost: a borderless button (its
-- glyph on the content edge when first on the left). Buttons are reused
-- per position and kind.
function footerButton(f, side, i, ghost)
	local list = f.footerButtons[side]
	local b = list[i]
	if b and (b.psGhost and true or false) == ghost then return b end
	if b then b:Hide() end
	b = W.Button(f.Footer, "", nil, { ghost = ghost })
	b.psTight = ghost or nil
	b.psSetText = W.SetButtonText
	list[i] = b
	return b
end

-- Without any button the footer bar goes and the body runs to the bottom.
function W.ShellFooter(f, left, right)
	f.Footer:SetShown(#(left or {}) + #(right or {}) > 0)
	layoutBody(f)
	for _, side in ipairs({ "left", "right" }) do
		local specs
		if side == "left" then specs = left or {} else specs = right or {} end
		local list = f.footerButtons[side]
		local prev
		for i, spec in ipairs(specs) do
			local ghost = spec.opts and spec.opts.ghost and true or false
			local b = footerButton(f, side, i, ghost)
			b.psPrimary = spec.opts and spec.opts.primary
			b.psArmed = nil
			if spec.opts and spec.opts.icon then
				if not rawget(b, "Icon") then
					b.Icon = b:CreateTexture(nil, "ARTWORK")
					b.Icon:SetSize(13, 13)
				end
				b.Icon:SetTexture(Theme.Media(spec.opts.icon))
				b.Icon:Show()
			elseif rawget(b, "Icon") then
				b.Icon:Hide()
				b.Icon = nil
			end
			W.SetButtonText(b, spec.label)
			if spec.opts and spec.opts.confirm then
				W.Confirm(b, spec.label, spec.onClick)
			else
				b:SetScript("OnClick", spec.onClick)
			end
			Theme.Repaint(b)
			W.RepaintButton(b)
			b:ClearAllPoints()
			if side == "left" then
				if prev then b:SetPoint("LEFT", prev, "RIGHT", 8, 0) else b:SetPoint("LEFT", f.Footer, "LEFT", SHELL.pad - (ghost and 8 or 0), 0) end
			else
				if prev then b:SetPoint("RIGHT", prev, "LEFT", -8, 0) else b:SetPoint("RIGHT", f.Footer, "RIGHT", -SHELL.pad, 0) end
			end
			b:Show()
			prev = b
		end
		for i = #specs + 1, #list do list[i]:Hide() end
	end
end

-- Re-run a button's paint (after toggling psPrimary).
function W.RepaintButton(b)
	local fn = painters[b]
	if fn then
		if not b.psPrimary then W.Color(b.Label, b.psDanger and "danger" or (b.psGhost and "textDim" or "text")) end
		fn(b)
	end
end

-- The page subtitle: at most two lines, in a box of 32px (two lines of the
-- note role in any font, short of a third). Its top sits at 66 (the title's
-- foot at 58, 8px gap), its foot at 98, 14px above the tab row.
SUBTITLE_LINES, SUBTITLE_H = 2, 32
ELLIPSIS = "\226\128\166"

-- Set `text` on a wrapping string bound in width; past `lines` lines, the
-- last words give way to an ellipsis.
function fitLines(fs, text, lines)
	fs:SetText(text)
	local numLines = fs.GetNumLines and fs:GetNumLines() or 1
	if numLines <= lines then return end
	local words = {}
	for w in text:gmatch("%S+") do words[#words + 1] = w end
	for k = #words - 1, 1, -1 do
		fs:SetText(table.concat(words, " ", 1, k):gsub("[,;:%.%s]+$", "") .. ELLIPSIS)
		local curLines = fs.GetNumLines and fs:GetNumLines() or 1
		if curLines <= lines then return end
	end
end

-- The window's scale in its header, left of the close button (or on the
-- main column's pad where the frame's own close button stands): its label,
-- a small track and the value. The value follows the drag; the window
-- rescales when it ends (the slider sits in what it scales), the wheel
-- steps it. -> the control (control:Place() after the close button comes
-- or goes).
SCALE_TRACK, SCALE_LO, SCALE_HI, SCALE_STEP = 64, 0.7, 1.4, 0.05
function scaleText(v) return floor(v * 100 + 0.5) .. "%" end

function W.HeaderScale(f, path)
	local head = f.Header
	local t = CreateFrame("Frame", nil, head)
	t:SetHeight(20)
	t.Label = W.Text(t, "small", "textMuted")
	t.Label:SetText(L["Menu scale"])
	t.Value = W.Text(t, "number", "textDim")
	t.Value:SetJustifyH("RIGHT")
	local s = sliderParts(t, t, SCALE_TRACK)
	s:SetMinMaxValues(SCALE_LO, SCALE_HI)
	s:SetValueStep(SCALE_STEP)
	t.Thumb:SetSize(9, 9)
	local function paint(v)
		v = v or s:GetValue()
		t.Fill:SetWidth(max(0.01, SCALE_TRACK * (v - SCALE_LO) / (SCALE_HI - SCALE_LO)))
		t.Value:SetText(scaleText(v))
	end
	function t.Refresh()
		local v = ns.Get(path)
		if type(v) ~= "number" then v = 1 end
		t.psRefreshing = true
		s:SetValue(min(SCALE_HI, max(SCALE_LO, v)))
		t.psRefreshing = false
		paint()
	end
	function t.Place()
		local vw = math.ceil(max(textWidth(t.Value, scaleText(SCALE_HI)), textWidth(t.Value, scaleText(1))))
		paint()
		t.Value:SetWidth(vw)
		t.Value:ClearAllPoints()
		t.Value:SetPoint("RIGHT", t, "RIGHT", 0, 0)
		s:ClearAllPoints()
		s:SetPoint("RIGHT", t.Value, "LEFT", -10, 0)
		t.Label:ClearAllPoints()
		t.Label:SetPoint("RIGHT", s, "LEFT", -10, 0)
		t:SetWidth(math.ceil(textWidth(t.Label)) + 10 + SCALE_TRACK + 10 + vw)
		t:ClearAllPoints()
		-- Where the close button has left the header (the hub's details pane
		-- holds it) the header is too narrow for it: the scale stays under
		-- Options, Appearance, Windows.
		local inHeader = f.Close:GetParent() == head
		t:SetShown(inHeader or not f.Close:IsShown())
		if f.Close:IsShown() and inHeader then
			t:SetPoint("RIGHT", f.Close, "LEFT", -14, 0)
		else
			t:SetPoint("TOPRIGHT", head, "TOPRIGHT", -SHELL.pad, -16)
		end
		if t:IsShown() then
			f.Title:SetPoint("TOPRIGHT", t, "TOPLEFT", -16, -16)
		else
			f.Title:SetPoint("TOPRIGHT", head, "TOPRIGHT", -(12 + 28 + 12), -32)
		end
	end
	W.Painter(t.Track, function(tex) tex:SetHeight(4); tex:SetVertexColor(0.18, 0.22, 0.32, 0.9) end)
	W.Painter(t.Fill, function(tex) tex:SetHeight(4); tex:SetVertexColor(1.0, 0.82, 0.25, 1.0) end)
	W.Painter(t.Thumb, function(tex)
		tex:SetSize(16, 16)
		tex:SetTexture(Theme.Media("qol-coin"))
		tex:SetVertexColor(1, 1, 1, 1)
	end)
	s:SetScript("OnValueChanged", function(_, v, userInput)
		v = roundTo(v, SCALE_STEP)
		paint(v)
		if userInput and not t.psRefreshing then t.psPending = v end
	end)
	s:SetScript("OnMouseUp", function(_, button)
		local v = t.psPending
		t.psPending = nil
		if button == "RightButton" then
			ns.Set(path, nil)
		elseif v ~= nil and ns.Get(path) ~= v then
			ns.Set(path, v)
		end
	end)
	s:SetScript("OnMouseWheel", function(_, delta)
		local v = roundTo((ns.Get(path) or 1) + delta * SCALE_STEP, SCALE_STEP)
		ns.Set(path, min(SCALE_HI, max(SCALE_LO, v)))
	end)
	s.psTip = L["Menu scale"]
	s.psTipLines = { L["The guide menu and this window; applies when you let go. Right-click to reset."] }
	s:SetScript("OnEnter", simpleTip)
	s:SetScript("OnLeave", hideTip)
	ns.On("SETTING_CHANGED", function(p)
		if p == path or p == "" or p == "ui" or p == nil then t.Refresh() end
	end)
	t.Place()
	t.Refresh()
	return t
end

-- opts: { width, height, title, subtitle, searchPlaceholder, onSearch,
--         scalePath = "ui.menuScale" (the window's scale setting) }
--
-- The grid every shell shares, top down: the header band (0-112: brand in
-- the sidebar, page title in the main column), the tab band (112-152: the
-- search in the sidebar, the tabs in the main column), then one hairline
-- across both columns at 152 where navigation and content begin. Left edges:
-- 24 in the sidebar, 32 in the main column.
--
-- opts.sidebar: the sidebar's width (SHELL.sidebar by default).
-- opts.rail: a section rail (SHELL.rail wide) left of the sidebar, for a
-- hub of several sections (W.ShellRail); the emblem moves into it and the
-- window grows by the rail's width.
function W.Shell(name, opts)
	opts = opts or {}
	local RAIL = opts.rail and SHELL.rail or 0
	local Wd, Hd = opts.width or (SHELL.width + RAIL), opts.height or SHELL.height
	local SB = opts.sidebar or SHELL.sidebar
	local f = CreateFrame("Frame", name, UIParent)
	f.psSidebar = SB
	f:SetSize(Wd, Hd)
	f:SetPoint("CENTER", UIParent, "CENTER", 0, 20)
	f:SetFrameStrata("HIGH")
	f:SetToplevel(true)
	f:SetClampedToScreen(true)
	f:EnableMouse(true)
	f:SetMovable(true)
	f:Hide()
	f.psTitle = opts.title or "TuWoW Leveling"
	Theme.Skin(f, "window")
	f.navButtons, f.tabButtons, f.footerButtons, f.railButtons = {}, {}, { left = {}, right = {} }, {}
	f.psRail = RAIL

	-- Marco Cinematico Retail de Oro Forjado (9-Slice con esquinas ornamentales)
	local goldFrame = CreateFrame("Frame", nil, f)
	goldFrame:SetPoint("TOPLEFT", f, "TOPLEFT", -3, 3)
	goldFrame:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", 3, -3)
	goldFrame:SetFrameLevel(f:GetFrameLevel() + 25)
	f.GoldFrame = goldFrame

	local goldBorder = CreateFrame("Frame", nil, goldFrame)
	goldBorder:SetAllPoints(goldFrame)
	goldBorder:SetBackdrop({
		edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Border",
		edgeSize = 20,
		insets = { left = 5, right = 5, top = 5, bottom = 5 },
	})
	goldBorder:SetBackdropBorderColor(1.0, 0.88, 0.50, 0.95)
	goldFrame.Border = goldBorder

	local corners = {
		{ point = "TOPLEFT",     x = -2, y =  2, u1 = 0, u2 = 1, v1 = 0, v2 = 1 },
		{ point = "TOPRIGHT",    x =  2, y =  2, u1 = 1, u2 = 0, v1 = 0, v2 = 1 },
		{ point = "BOTTOMLEFT",  x = -2, y = -2, u1 = 0, u2 = 1, v1 = 1, v2 = 0 },
		{ point = "BOTTOMRIGHT", x =  2, y = -2, u1 = 1, u2 = 0, v1 = 1, v2 = 0 },
	}
	goldFrame.Corners = {}
	for i, c in ipairs(corners) do
		local ctex = goldFrame:CreateTexture(nil, "OVERLAY", nil, 7)
		ctex:SetSize(28, 28)
		ctex:SetPoint(c.point, goldFrame, c.point, c.x, c.y)
		ctex:SetTexture(Theme.Media("corner-gold"))
		ctex:SetTexCoord(c.u1, c.u2, c.v1, c.v2)
		goldFrame.Corners[i] = ctex
	end

	local cosmic = f:CreateTexture(nil, "BACKGROUND", nil, -7)
	cosmic:SetAllPoints(f)
	cosmic:SetTexture(Theme.Media("band-stars"))
	cosmic:SetVertexColor(0.08, 0.12, 0.22, 0.45)
	f.CosmicBg = cosmic

	local function draggable(frame)
		frame:EnableMouse(true)
		frame:RegisterForDrag("LeftButton")
		frame:SetScript("OnDragStart", function() f:StartMoving() end)
		frame:SetScript("OnDragStop", function() f:StopMovingOrSizing() end)
	end

	-- The section rail: the emblem on the title's line, then one button per
	-- section from the content line down, and its bottom items.
	if RAIL > 0 then
		local rail = CreateFrame("Frame", nil, f)
		rail:SetPoint("TOPLEFT", f, "TOPLEFT", 1, -1)
		rail:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", 1, 1)
		rail:SetWidth(RAIL)
		Theme.Skin(rail, "sidebar")
		draggable(rail)
		f.Rail = rail
		-- A hairline parts the rail from the sidebar below the brand.
		local railRule = W.Divider(rail, true)
		railRule:SetPoint("TOPRIGHT", rail, "TOPRIGHT", 0, -SHELL.brand)
		railRule:SetPoint("BOTTOMRIGHT", rail, "BOTTOMRIGHT", 0, 0)
	end

	-- Sidebar: brand, search, navigation, status at the bottom.
	local side = CreateFrame("Frame", nil, f)
	side:SetPoint("TOPLEFT", f, "TOPLEFT", 1 + RAIL, -1)
	side:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", 1 + RAIL, 1)
	side:SetWidth(SB)
	Theme.Skin(side, "sidebar")
	draggable(side)
	f.Sidebar = side
	local rule = W.Divider(side, true)
	rule:SetPoint("TOPRIGHT", side, "TOPRIGHT", 0, 0)
	rule:SetPoint("BOTTOMRIGHT", side, "BOTTOMRIGHT", 0, 0)

	-- The sidebar's own rhythm, one compact block from the top: the lockup
	-- (emblem, wordmark, and "A community project" under the wordmark)
	-- centred on the page title's line (centre y 47); the search under it,
	-- its foot on the band's 112 line; the navigation 12px under the search.
	-- Wordmark, tagline, search and navigation share the 24 edge. With a rail
	-- the emblem heads the rail column, centred like the section glyphs under
	-- it; without one it stands left of the wordmark, its ink on the 24 edge.
	-- Placed by their ink, not their texture boxes: the small wordmark's
	-- glyphs start 2px into its box and fill rows 7-24 of its 32
	-- (Media/UI/wordmark-small.tga, drawn 1:1); the emblem's ink starts 6px
	-- into its 44px box and is 32px wide (emblem.tga).
	local WORD_INK, WORD_TOP, EMBLEM, EMBLEM_INK, EMBLEM_INK_W = 2, 22, 40, 6, 32
	local railFrame = rawget(f, "Rail")
	f.Emblem = W.Tex(railFrame or side, "ARTWORK", "emblem-w", nil)
	f.Emblem:SetSize(EMBLEM, EMBLEM)
	local textX = SHELL.side
	if railFrame then
		f.Emblem:SetPoint("TOP", railFrame, "TOP", 0, -(47 - EMBLEM / 2))
	else
		f.Emblem:SetPoint("TOPLEFT", side, "TOPLEFT", SHELL.side - EMBLEM_INK, -(47 - EMBLEM / 2))
		textX = SHELL.side + EMBLEM_INK_W + 12
	end

	local emblemParent = railFrame or side
	f.Emblem.Hot = W.Tex(emblemParent, "OVERLAY", "emblem-hot")
	f.Emblem.Hot:Hide()
	f.Emblem.Glow = W.Tex(emblemParent, "BORDER", "glow")
	f.Emblem.Glow:SetSize(EMBLEM + 26, EMBLEM + 26)
	f.Emblem.Glow:SetPoint("CENTER", f.Emblem, "CENTER", 0, 0)
	f.Emblem.Glow:SetVertexColor(0.15, 0.50, 0.95, 0.85)
	f.Emblem.Glow:Show()

	f.Wordmark = W.Tex(side, "ARTWORK", "wordmark-small", "text")
	f.Wordmark:Hide()
	local brandTitle = W.Text(side, "title", "accent")
	brandTitle:SetPoint("TOPLEFT", side, "TOPLEFT", textX, -WORD_TOP)
	brandTitle:SetText("|cffffd24aTUWOW|r |cffffffffLEVELING|r")
	f.BrandTitle = brandTitle

	f.Tagline = W.Text(side, "small", "textDim")
	f.Tagline:SetPoint("TOPLEFT", side, "TOPLEFT", textX, -(WORD_TOP + 24))
	f.Tagline:SetText("Guías y Leveo para TuWoW")
	local searchTop = SHELL.header - 30
	f.Search = W.SearchBox(side, opts.searchPlaceholder or L["Search"], opts.onSearch)
	f.Search:SetPoint("TOPLEFT", side, "TOPLEFT", SHELL.side, -searchTop)
	f.Search:SetPoint("TOPRIGHT", side, "TOPRIGHT", -SHELL.side, -searchTop)
	f.psNavTop = searchTop + 30 + 12
	-- The navigation: its own scroll area, ending on the footer bar's line
	-- (W.ShellNav), so the version band below it is never crowded.
	f.NavScroll = W.Scroll(side)
	f.NavScroll:SetPoint("TOPLEFT", side, "TOPLEFT", 0, -f.psNavTop)
	f.NavScroll:SetPoint("BOTTOMRIGHT", side, "BOTTOMRIGHT", -1, SHELL.footer)
	f.NavScroll.Child:SetWidth(SB - 1)

	-- The version, on the line of the rail's foot label (Options) when there
	-- is a rail, and the release stage's chip after it while there is one.
	f.Status = W.Text(side, "small", "textMuted")
	f.Status:SetPoint("BOTTOMLEFT", side, "BOTTOMLEFT", SHELL.side, SHELL.foot)
	f.Stage = W.Chip(side)
	f.Stage:SetPoint("LEFT", f.Status, "RIGHT", 8, 0)

	-- Header band: the night sky, cropped to fit, never stretched.
	local main = CreateFrame("Frame", nil, f)
	main:SetPoint("TOPLEFT", side, "TOPRIGHT", 0, 0)
	main:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -1, 1)
	f.Main = main
	local head = CreateFrame("Frame", nil, main)
	head:SetPoint("TOPLEFT", main, "TOPLEFT", 0, 0)
	head:SetPoint("TOPRIGHT", main, "TOPRIGHT", 0, 0)
	head:SetHeight(SHELL.header)
	head:EnableMouse(true)
	head:RegisterForDrag("LeftButton")
	head:SetScript("OnDragStart", function() f:StartMoving() end)
	head:SetScript("OnDragStop", function() f:StopMovingOrSizing() end)
	f.Header = head
	f.Band = Theme.Band(head, "BACKGROUND", -5)
	f.Band:SetAllPoints(head)
	f.Band:SetTexCoord(Theme.BandCoords(Wd - RAIL - SB - 2, SHELL.header))
	-- The night: a faint blue haze over the band (house style, band on).
	f.Haze = W.Haze(head, { width = (Wd - RAIL - SB - 2) * 0.9, height = SHELL.header })
	f.Title = W.Text(head, "hero", "text")
	f.Title:SetPoint("TOPLEFT", head, "TOPLEFT", SHELL.pad, -32)
	-- Clear of the close button (28px, 12px in, 12px gap), or of the scale
	-- control left of it: a long title (a guide pack's) ends in an ellipsis.
	f.Title:SetPoint("TOPRIGHT", head, "TOPRIGHT", -(12 + 28 + 12), -32)
	-- The subtitle: up to two lines between the pads, under the close button
	-- and clear of it, cut with an ellipsis after the second (W.ShellTitle).
	f.Subtitle = W.Text(head, "note", "textDim")
	f.Subtitle:SetPoint("TOPLEFT", f.Title, "BOTTOMLEFT", 0, -8)
	f.Subtitle:SetHeight(SUBTITLE_H)
	f.Subtitle:SetWordWrap(true)
	f.Subtitle:SetJustifyV("TOP")
	f.Subtitle:SetSpacing(2)
	f.Close = W.IconButton(head, "close", 28, L["Close"], function() f:Hide() end, 14)
	f.Close:SetPoint("TOPRIGHT", head, "TOPRIGHT", -12, -12)
	-- The game's looks put the close button on the window frame's corner.
	f.Close:SetShown(not Theme.Kit())
	Theme.OnChanged(function()
		f.Close:SetShown(not Theme.Kit())
		if rawget(f, "HeaderTools") then f.HeaderTools:Place() end
	end)
	-- The window frame's own close button (the game's looks) stands for this
	-- one: paint again now that it exists.
	Theme.Repaint(f)
	if opts.scalePath then
		f.HeaderTools = W.HeaderScale(f, opts.scalePath)
		f.Title:SetPoint("TOPRIGHT", f.HeaderTools, "TOPLEFT", -16, -16)
	end
	-- The gold rim along the window's top, its light thrown under the
	-- main column.
	W.Rim(f, { offset = Wd * 0.1 })

	-- Tab row: tabs sit on its bottom hairline.
	f.TabRow = CreateFrame("Frame", nil, main)
	f.TabRow:SetPoint("TOPLEFT", head, "BOTTOMLEFT", 0, 0)
	f.TabRow:SetPoint("TOPRIGHT", head, "BOTTOMRIGHT", 0, 0)
	f.TabRow:SetHeight(SHELL.tabs)
	local tabRule = W.Divider(f.TabRow)
	tabRule:SetPoint("BOTTOMLEFT", f.TabRow, "BOTTOMLEFT", 0, 0)
	tabRule:SetPoint("BOTTOMRIGHT", f.TabRow, "BOTTOMRIGHT", 0, 0)

	-- Footer bar.
	f.Footer = CreateFrame("Frame", nil, main)
	f.Footer:SetPoint("BOTTOMLEFT", main, "BOTTOMLEFT", 0, 0)
	f.Footer:SetPoint("BOTTOMRIGHT", main, "BOTTOMRIGHT", 0, 0)
	f.Footer:SetHeight(SHELL.footer)
	W.Fill(f.Footer, "footer")
	local footRule = W.Divider(f.Footer)
	footRule:SetPoint("TOPLEFT", f.Footer, "TOPLEFT", 0, 0)
	footRule:SetPoint("TOPRIGHT", f.Footer, "TOPRIGHT", 0, 0)

	-- Body: a scrolling column. The emblem engraving shows only behind an
	-- empty state (W.ShellWatermark), never behind content.
	f.Content = CreateFrame("Frame", nil, main)
	f.Watermark = f.Content:CreateTexture(nil, "BACKGROUND", nil, -4)
	f.Watermark:SetTexture(Theme.Media("watermark"))
	f.Watermark:SetSize(300, 300)
	f.Watermark:SetPoint("CENTER", f.Content, "CENTER", 0, 0)
	W.Painter(f.Watermark, function(t) t:SetVertexColor(Theme.Wash("watermark")) end)
	f.Watermark:Hide()
	f.Scroll = W.Scroll(f.Content)
	f.Scroll:SetPoint("TOPLEFT", f.Content, "TOPLEFT", 0, -4)
	f.Scroll:SetPoint("BOTTOMRIGHT", f.Content, "BOTTOMRIGHT", -4, 4)
	f.Body = f.Scroll.Child
	f.BodyWidth = Wd - RAIL - SB - 2 - SHELL.pad * 2
	W.ShellTitle(f, opts.title, opts.subtitle)
	-- Refit the subtitle in a new font.
	W.Painter(f.Subtitle, function(fs) fitLines(fs, f.psSubtitle or "", SUBTITLE_LINES) end)
	W.ShellTabs(f, nil)

	if opts.scalePath then
		local function applyScale() f:SetScale(ns.Get(opts.scalePath) or 1) end
		applyScale()
		ns.On("SETTING_CHANGED", function(path)
			if path == opts.scalePath or path == "" or path == "ui" then applyScale() end
		end)
	end
	f:HookScript("OnShow", function(self)
		self.Status:SetText(statusText())
		W.SetStageChip(self.Stage)
		self:SetAlpha(1)
	end)
	f:HookScript("OnHide", function() W.HideMenu() end)
	ns.CloseOnEscape(name)
	return f
end

-- The emblem engraving behind the body, for empty states.
function W.ShellWatermark(f, shown)
	f.Watermark:SetShown(shown and true or false)
end

-- Section rail buttons: the icon over its 11px label; the active one gets
-- the selection wash, a 2px accent bar at the window's edge and the accent
-- icon.
RAIL_ROW = 56

function railButton(f, i)
	local b = f.railButtons[i]
	if b then return b end
	b = CreateFrame("Button", nil, f.Rail)
	b:SetSize(f.psRail, RAIL_ROW)
	hoverTexture(b)
	b.Selected = b:CreateTexture(nil, "BACKGROUND")
	b.Selected:SetTexture(WHITE)
	b.Selected:SetAllPoints(b)
	W.Painter(b.Selected, function(t) t:SetVertexColor(Theme.Wash("selected")) end)
	local p = CreateFrame("Frame", nil, b)
	p:SetPoint("TOPLEFT", b, "TOPLEFT", 4, -2); p:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", -4, 2)
	p:SetBackdrop({ edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 } })
	p:SetBackdropBorderColor(1.0, 0.82, 0.28, 0.95); p:Hide()
	b.Plate = p
	b.Bar = b:CreateTexture(nil, "ARTWORK")
	b.Bar:SetTexture(WHITE)
	b.Bar:SetWidth(2)
	b.Bar:SetPoint("TOPLEFT", b, "TOPLEFT", 0, 0)
	b.Bar:SetPoint("BOTTOMLEFT", b, "BOTTOMLEFT", 0, 0)
	W.Color(b.Bar, "accent")
	b.Icon = b:CreateTexture(nil, "ARTWORK")
	b.Icon:SetSize(18, 18)
	b.Icon:SetPoint("TOP", b, "TOP", 0, -10)
	b.Label = W.Text(b, "caption", "textDim")
	b.Label:SetJustifyH("CENTER")
	b.Label:SetWidth(f.psRail - 4)
	b.Label:SetPoint("TOP", b.Icon, "BOTTOM", 0, -6)
	b:SetScript("OnClick", function(self)
		if self.psOnClick then self.psOnClick(self.psKey) end
	end)
	b:SetScript("OnEnter", simpleTip)
	b:SetScript("OnLeave", hideTip)
	b.psTipAnchor = "ANCHOR_RIGHT"
	f.railButtons[i] = b
	return b
end

-- The rail as wide as its widest label needs, SHELL.rail at least
-- ("Lookup" is "Nachschlagen" in German); the window grows by as much, so the
-- sidebar and the content keep their widths.
function fitRail(f, items, bottom)
	local probe = rawget(f, "psRailProbe")
	if not probe then
		probe = W.Text(f.Rail, "caption", "textDim")
		probe:Hide()
		f.psRailProbe = probe
	end
	local need = 0
	for _, list in ipairs({ items, bottom or {} }) do
		for _, item in ipairs(list) do need = max(need, textWidth(probe, item.label or "")) end
	end
	local rail = max(SHELL.rail, math.ceil(need) + 8)
	local grow = rail - f.psRail
	if grow == 0 then return end
	f.psRail = rail
	f.Rail:SetWidth(rail)
	f.Sidebar:SetPoint("TOPLEFT", f, "TOPLEFT", 1 + rail, -1)
	f.Sidebar:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", 1 + rail, 1)
	f:SetWidth(f:GetWidth() + grow)
	W.LayoutRim(f)
	for _, b in ipairs(f.railButtons) do
		b:SetWidth(rail)
		b.Label:SetWidth(rail - 4)
	end
end

-- items: { { key, label, icon, tip }, ... } stacked from the content line
-- down; bottom: the same, stacked up from the rail's foot (Options). The
-- active key is marked. -> the number of top items that fit.
function W.ShellRail(f, items, bottom, active, onSelect)
	if not rawget(f, "Rail") then return 0 end
	fitRail(f, items, bottom)
	local n = 0
	local function place(item, i, y, fromBottom)
		local b = railButton(f, i)
		b.psKey, b.psOnClick = item.key, item.onClick or onSelect
		b.psTip = item.tip or item.label
		local on = item.key == active
		b.Icon:SetTexture(Theme.Media(item.icon or "compact"))
		b.Label:SetText(item.label)
		b.Selected:SetShown(on)
		b.Bar:SetShown(on)
		if b.Plate then b.Plate:SetShown(on) end
		if on then
			b.Selected:SetVertexColor(0.85, 0.65, 0.20, 0.24)
			b.Label:SetTextColor(1.0, 0.92, 0.70, 1.0)
			W.Color(b.Icon, "accent")
		else
			W.Color(b.Icon, "textDim"); W.Color(b.Label, "textDim")
		end
		b:ClearAllPoints()
		if fromBottom then
			b:SetPoint("BOTTOMLEFT", f.Rail, "BOTTOMLEFT", 0, y)
		else
			b:SetPoint("TOPLEFT", f.Rail, "TOPLEFT", 0, -y)
		end
		b:Show()
	end
	local i = 0
	local y = 12
	for k = 1, #(bottom or {}) do
		i = i + 1
		place(bottom[k], i, y, true)
		y = y + RAIL_ROW
	end
	local limit = f:GetHeight() - 2 - y -- the top of the bottom group
	y = f.psNavTop -- the first section level with the sidebar's first row
	for k = 1, #items do
		if y + RAIL_ROW > limit then break end
		i = i + 1
		n = n + 1
		place(items[k], i, y)
		y = y + RAIL_ROW
	end
	for k = i + 1, #f.railButtons do f.railButtons[k]:Hide() end
	f.psRailFloor = limit
	return n
end

-- Page title and subtitle. The title keeps its place with or without a
-- subtitle, so it never jumps between pages.
function W.ShellTitle(f, title, subtitle)
	f.Title:SetText(title or "")
	f.psSubtitle = subtitle or ""
	-- The main column's width between its pads (a hub's narrower column too).
	f.Subtitle:SetWidth(f.BodyWidth)
	fitLines(f.Subtitle, f.psSubtitle, SUBTITLE_LINES)
	f.Subtitle:SetShown(subtitle ~= nil and subtitle ~= "")
end

-- Lay the body out for `height` px of content (the scroll range).
function W.ShellBody(f, height)
	f.Body:SetWidth(f.BodyWidth + SHELL.pad * 2)
	W.SetScrollContent(f.Scroll, height, f.psViewH)
end

-- A section header in a shell body: the heading itself, a hairline after it.
-- opts.plain: the heading alone over a panel of rows (W.PLAIN_SECTION_H
-- tall, its text 8 above the panel), no hairline.
W.PLAIN_SECTION_H = 30
function W.SectionHeader(parent, opts)
	local plain = opts and opts.plain
	local h = CreateFrame("Frame", nil, parent)
	h:SetHeight(plain and W.PLAIN_SECTION_H or 44)
	h.Text = W.Text(h, "heading", "accent")
	h.Text:SetPoint("BOTTOMLEFT", h, "BOTTOMLEFT", 0, plain and 8 or 10)
	h.Text:SetTextColor(1.0, 0.84, 0.35, 1.0)
	local j = h:CreateTexture(nil, "ARTWORK")
	j:SetTexture(Theme.Media("dart-gold"))
	j:SetSize(14, 14); j:SetVertexColor(1.0, 0.84, 0.35, 0.95); j:SetShown(not plain)
	h.Jewel = j
	h.Rule = W.Divider(h)
	h.Rule:SetPoint("LEFT", j, "RIGHT", 6, 0); h.Rule:SetPoint("RIGHT", h, "RIGHT", 0, 0); h.Rule:SetShown(not plain)
	h.Count = W.Text(h, "number", "textMuted")
	h.Count:SetJustifyH("RIGHT"); h.Count:SetPoint("BOTTOMRIGHT", h, "BOTTOMRIGHT", 0, plain and 8 or 10); h.Count:Hide()
	return h
end

-- A panel the rows of one section sit in: the raised ground and its inner
-- hairline in the skin in use, under the rows (its parent's own level).
function W.RowPanel(parent)
	local p = CreateFrame("Frame", nil, parent)
	p:SetFrameLevel(parent:GetFrameLevel())
	Theme.Skin(p, "panel")
	return p
end

function W.SetSection(h, text, count)
	h.Text:SetText(text)
	h.Text:SetTextColor(1.0, 0.84, 0.35, 1.0)
	if h.Jewel then
		h.Jewel:ClearAllPoints()
		h.Jewel:SetPoint("LEFT", h.Text, "RIGHT", 8, 0)
		h.Rule:SetPoint("LEFT", h.Jewel, "RIGHT", 6, 0)
	end
	if count then
		h.Count:SetText(count); h.Count:Show()
		h.Rule:SetPoint("RIGHT", h.Count, "LEFT", -12, 0)
	else
		h.Count:Hide(); h.Rule:SetPoint("RIGHT", h, "RIGHT", 0, 0)
	end
end

---------------------------------------------------------------------------
-- Options registry (docs/ARCHITECTURE.md, UI -> "Options registry").
-- Lives here, not in UI, because modules loading before UI.xml register at
-- file load: entries are kept in order and handed to the options window
-- whenever it exists (now or later).
---------------------------------------------------------------------------

registry = {} -- { spec, ... } in registration order
registryListeners = {}
W.OptionsRegistry = registry

-- binding: a key binding row (UI/GamepadGuide.lua): { kind = "binding", action = "POLESTAR_NEXT", label, help }.
CONTROL_KINDS = { toggle = true, slider = true, dropdown = true, color = true, button = true, binding = true }

-- spec = { page, key, icon, order, tab, section, controls = { { kind, key, label, help, ... } } }
-- page is the title as shown, key (optional) the page's stable key.
-- -> true | false, err
function ns.RegisterOptions(spec)
	if type(spec) ~= "table" then return false, "RegisterOptions: spec must be a table" end
	if type(spec.page) ~= "string" or spec.page == "" then return false, "RegisterOptions: page must be a string" end
	if spec.key ~= nil and (type(spec.key) ~= "string" or spec.key == "") then return false, "RegisterOptions: key must be a string" end
	if type(spec.controls) ~= "table" then return false, "RegisterOptions: controls must be a list" end
	for i, c in ipairs(spec.controls) do
		if type(c) ~= "table" or not CONTROL_KINDS[c.kind] then
			return false, ("RegisterOptions(%s): control %d has unknown kind %s"):format(spec.page, i, tostring(c and c.kind))
		end
		-- A toggle or slider may hold state that is no setting: get/set and no key.
		local state = (c.kind == "toggle" or c.kind == "slider") and c.key == nil and type(c.get) == "function" and type(c.set) == "function"
		if c.kind ~= "button" and c.kind ~= "binding" and not state and type(c.key) ~= "string" then
			return false, ("RegisterOptions(%s): control %d needs a settings key"):format(spec.page, i)
		end
		if c.kind == "binding" and type(c.action) ~= "string" then
			return false, ("RegisterOptions(%s): binding %d needs an action"):format(spec.page, i)
		end
		if c.kind == "button" and type(c.onClick) ~= "function" then
			return false, ("RegisterOptions(%s): button %d needs onClick"):format(spec.page, i)
		end
	end
	registry[#registry + 1] = spec
	for i = 1, #registryListeners do
		local ok, err = pcall(registryListeners[i], spec)
		if not ok and geterrorhandler then geterrorhandler()(err) end
	end
	return true
end

-- fn(spec) for every registration so far and every later one.
function W.OnOptionsRegistered(fn)
	registryListeners[#registryListeners + 1] = fn
	for i = 1, #registry do fn(registry[i]) end
end
