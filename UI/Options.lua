local ADDON, ns = ...
setfenv(1, ns._uiOptionsEnv)
---------------------------------------------------------------------------
-- Appearance's live preview: a small guide window (its band, a tab, the
-- step's title, a goal done, the current goal on its accent bar, the
-- progress line) and the arrow with its distance, over the night sky. All
-- of it is painted from the theme, so the accent, scheme, skin, ground
-- opacity, band and font show in it as they change.
---------------------------------------------------------------------------

PREVIEW_H, MINI_W, MINI_PAD = 168, 270, 10

function O.LookPreview(view)
	local f = CreateFrame("Frame", nil, view)
	f:SetHeight(PREVIEW_H)
	if f.SetClipsChildren then f:SetClipsChildren(true) end
	-- The sky: the deepest ground, the starlit band (gone with ui.band off),
	-- a soft lift of the sky colour behind the window, the inner hairline.
	W.Fill(f, "scrim", "BACKGROUND", -8)
	f.Lift = W.Tex(f, "BACKGROUND", "glow", nil, -7)
	W.Painter(f.Lift, function(t)
		local r, g, b = Theme.Color("sky")
		t:SetVertexColor(r, g, b, 0.75)
	end)
	f.Band = Theme.Band(f, "BACKGROUND", -6)
	f.Band:SetPoint("TOPLEFT", f, "TOPLEFT", 0, 0)
	f.Band:SetPoint("TOPRIGHT", f, "TOPRIGHT", 0, 0)
	f.Band:SetHeight(Theme.BAND_H)
	W.Painter(f, function(self) Theme.Border(self, Theme.Wash("divider")) end)

	local label = W.Text(f, "caption", "textMuted")
	label:SetText(L["Preview"])
	label:SetPoint("TOPLEFT", f, "TOPLEFT", 14, -12)
	local live = W.Text(f, "small", "textMuted")
	live:SetText(L["Live"])
	live:SetPoint("TOPRIGHT", f, "TOPRIGHT", -14, -12)
	local dot = W.Tex(f, "ARTWORK", "circle", "success")
	dot:SetSize(6, 6)
	dot:SetPoint("RIGHT", live, "LEFT", -6, 0)

	-- The guide window, in the window paint of the skin in use.
	local gw = CreateFrame("Frame", nil, f)
	gw:SetWidth(MINI_W)
	Theme.Skin(gw, "window")
	local band = Theme.Band(gw, "BACKGROUND", -5)
	band:SetPoint("TOPLEFT", gw, "TOPLEFT", 0, 0)
	band:SetPoint("TOPRIGHT", gw, "TOPRIGHT", 0, 0)
	band:SetHeight(48)
	band:SetTexCoord(Theme.BandCoords(MINI_W, 48))
	local tabGlyph = W.Tex(gw, "ARTWORK", "icon-level", "accent")
	tabGlyph:SetSize(10, 10)
	tabGlyph:SetPoint("LEFT", gw, "TOPLEFT", MINI_PAD, -12)
	local tab = W.Text(gw, "small", "text")
	tab:SetText(L["Tirisfal Glades"])
	tab:SetPoint("LEFT", tabGlyph, "RIGHT", 6, 0)
	local range = W.Text(gw, "small", "textMuted")
	range:SetText("(1\226\128\14713)")
	range:SetPoint("LEFT", tab, "RIGHT", 4, 0)
	local tabRule = W.Divider(gw)
	tabRule:SetPoint("TOPLEFT", gw, "TOPLEFT", 0, -24)
	tabRule:SetPoint("TOPRIGHT", gw, "TOPRIGHT", 0, -24)
	local tabBar = W.Tex(gw, "ARTWORK", nil, "accent")
	tabBar:SetHeight(2)
	tabBar:SetPoint("BOTTOMLEFT", gw, "TOPLEFT", MINI_PAD - 2, -24)
	W.Painter(tabBar, function(t) t:SetWidth(math.ceil(W.TextWidth(tab) + 10 + 6 + 4)) end)
	local title = W.Text(gw, "heading", "text")
	title:SetText(L["Garren's Haunt"])
	title:SetPoint("TOPLEFT", gw, "TOPLEFT", MINI_PAD, -32)
	local zone = W.Text(gw, "small", "textMuted")
	zone:SetText(L["Tirisfal Glades"])
	zone:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -2)
	local function goal(y, glyph, glyphColor, textColor)
		local g = W.Tex(gw, "ARTWORK", glyph, glyphColor)
		g:SetSize(11, 11)
		g:SetPoint("LEFT", gw, "TOPLEFT", MINI_PAD + 2, -y)
		local t = W.Text(gw, "note", textColor)
		t:SetPoint("LEFT", g, "LEFT", 18, 0)
		t:SetWidth(MINI_W - 2 * MINI_PAD - 20)
		return g, t
	end
	local _, done = goal(76, "check", "success", "textMuted")
	done:SetText(L["Collect Doom Weed"] .. " 10/10")
	local curGlyph, cur = goal(96, "icon-kill", "text", "text")
	W.Painter(cur, function(fs)
		fs:SetText(string.format(L["Kill %s"], "|c" .. Theme.Hex("npc") .. L["Rot Hide Mongrel"] .. "|r") .. "  2/5")
	end)
	local curBar = W.Tex(gw, "ARTWORK", nil, "accent")
	curBar:SetSize(2, 16)
	curBar:SetPoint("LEFT", gw, "LEFT", 0, 0)
	curBar:SetPoint("TOP", curGlyph, "CENTER", 0, 8)
	local progress = W.ProgressLine(gw, 3)
	progress:SetPoint("TOPLEFT", gw, "TOPLEFT", MINI_PAD, -112)
	progress:SetPoint("TOPRIGHT", gw, "TOPRIGHT", -MINI_PAD, -112)
	W.SetProgress(progress, 0.38, MINI_W - 2 * MINI_PAD)
	gw:SetHeight(112 + 3 + 9)

	-- The arrow toward the goal, its distance and where it goes.
	local arrow = W.Tex(f, "ARTWORK", "dart", "arrow")
	arrow:SetSize(56, 56)
	if arrow.SetRotation then arrow:SetRotation(-0.35) end
	local dist = W.Text(f, "display", "text")
	dist:SetText(L["381 yd"])
	dist:SetPoint("TOP", arrow, "BOTTOM", 0, -2)
	local to = W.Text(f, "small", "textDim")
	to:SetPoint("TOP", dist, "BOTTOM", 0, -2)
	W.Painter(to, function(fs)
		fs:SetText(string.format(L["Go to %s"], "|c" .. Theme.Hex("place") .. L["Brill"] .. "|r"))
	end)

	-- -> the preview's height, its parts placed across `width`.
	function f:Layout(width)
		self:SetWidth(width)
		local x = max(110, floor(width * 0.255))
		gw:ClearAllPoints()
		gw:SetPoint("TOPLEFT", self, "TOPLEFT", x, -28)
		local right = x + MINI_W
		arrow:ClearAllPoints()
		arrow:SetPoint("TOP", self, "TOPLEFT", right + floor((width - right) / 2), -28)
		f.Lift:ClearAllPoints()
		f.Lift:SetSize(width * 0.7, PREVIEW_H * 1.6)
		f.Lift:SetPoint("CENTER", self, "TOPLEFT", width * 0.4, -PREVIEW_H * 0.4)
		f.Band:SetTexCoord(Theme.BandCoords(width, Theme.BAND_H))
		return PREVIEW_H
	end
	return f
end

---------------------------------------------------------------------------
-- Controls and the grid
---------------------------------------------------------------------------

function available(c)
	if c.needs and not c.needs() then return false end
	if c.kind == "button" then return true end
	if c.kind == "binding" then return ns.Gamepad ~= nil and ns.Gamepad.BindingRow ~= nil end
	-- A toggle or slider with get/set and no key holds state that is no setting (per character).
	if (c.kind == "toggle" or c.kind == "slider") and not c.key and c.get and c.set then return true end
	return ns.GetDefault and ns.GetDefault(c.key) ~= nil
end

-- A control's label: a string, or a function that names it when it is drawn
-- (a name in the client's language that is not loaded at registration).
function labelOf(c)
	if type(c.label) == "function" then return c.label() or "" end
	return c.label
end

function choicesOf(c)
	local out = {}
	local list = c.choices
	if type(list) == "function" then list = list() end
	for i, ch in ipairs(list or {}) do out[i] = { value = ch.value, text = ch.text or ch.label or tostring(ch.value) } end
	return out
end

function makeControl(parent, c)
	local w
	if c.kind == "toggle" then
		w = W.Toggle(parent, labelOf(c), c.key, c.help, nil, (c.gear or c.get or c.set) and { gear = c.gear, get = c.get, set = c.set } or nil)
	elseif c.kind == "slider" then
		local opts
		if c.release or c.get or c.set then opts = { release = c.release, get = c.get, set = c.set } end
		w = W.Slider(parent, c.label, c.key, c.min or 0, c.max or 1, c.step or 0.1, c.format, c.help, nil, opts)
	elseif c.kind == "dropdown" then
		local choices = type(c.choices) == "function" and function() return choicesOf(c) end or choicesOf(c)
		w = W.Dropdown(parent, c.label, c.key, choices, c.help, nil, (c.get or c.set) and { get = c.get, set = c.set } or nil)
	elseif c.kind == "color" then
		w = W.Swatch(parent, c.label, c.key, c.help, { shown = c.shown, source = c.source, linked = c.linked })
	elseif c.kind == "button" then
		-- A row with its button at the right; a consequential one (confirm)
		-- asks first, in the shared dialog.
		w = W.ActionRow(parent, labelOf(c), c.help, c.button or L["Run"], function()
			if not c.confirm then return c.onClick() end
			local text = c.confirmText
			if type(text) == "function" then text = text() end
			W.Modal({ title = c.confirmTitle or labelOf(c), text = text or c.help, icon = c.icon or "reset",
				action = c.confirmAction or c.button or labelOf(c), danger = true, onAccept = c.onClick })
		end, { icon = c.icon, danger = c.danger })
	elseif c.kind == "binding" then
		w = ns.Gamepad.BindingRow(parent, c)
		w.psControl = c
		return w
	end
	if c.disabled then W.SetDisabledWhen(w, c.disabled) end
	w.psControl = c
	return w
end
-- A control from its spec, as the pages make them (UI/LineStyle.lua).
O.Control = makeControl

-- A section's controls in one column from y, each row showing its
-- description under its label and marking a setting off its default. In the
-- house style they sit in one panel (its ground and inner hairline, a
-- hairline between rows). A child (c.child: a setting that depends on the
-- one above it) is indented on a connector, dimmed while that one is off.
-- `cache` maps control spec -> widget; `panel` is the section's (W.RowPanel)
-- or nil. -> new y
ROW_INSET, CHILD_INSET, SECTION_GAP = 16, 40, 22
function O.Rows(view, controls, y, cache, panel)
	local width = win.BodyWidth
	local top = y
	for i, c in ipairs(controls) do
		local w = cache[c]
		if not w then
			w = makeControl(view, c)
			W.RowDetails(w, { inset = c.child and CHILD_INSET or ROW_INSET, child = c.child })
			cache[c] = w
		end
		w:ClearAllPoints()
		w:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -y)
		w:Show()
		if w.Refresh then w:Refresh() end
		y = y + W.LayoutRow(w, width)
		if w.Rule then w.Rule:SetShown(i < #controls) end
	end
	if panel then
		panel:ClearAllPoints()
		panel:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -top)
		panel:SetSize(width, max(1, y - top))
		panel:SetShown(Theme.SkinKey() == "polestar")
	end
	return y
end

-- The visible controls of a section.
function visible(section)
	local out = {}
	for _, c in ipairs(section.controls) do
		if available(c) then out[#out + 1] = c end
	end
	return out
end

-- Sections top down from y: each its plain heading over its panel of rows.
-- groups: { { name, controls }, ... }; the view keeps its headers and
-- panels (view.headers, view.panels). Controls not placed are hidden.
-- -> new y
function layoutSections(view, groups, y)
	for _, w in pairs(view.cache) do w:Hide() end
	local n = 0
	for gi, g in ipairs(groups) do
		n = n + 1
		local h = view.headers[n]
		if not h then
			h = W.SectionHeader(view, { plain = true })
			view.headers[n] = h
		end
		local panel = view.panels[n]
		if not panel then
			panel = W.RowPanel(view)
			view.panels[n] = panel
		end
		if g.name ~= "" then
			W.SetSection(h, g.name)
			h:ClearAllPoints()
			h:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -y)
			h:SetWidth(win.BodyWidth)
			h:Show()
			y = y + W.PLAIN_SECTION_H
		else
			h:Hide()
		end
		y = O.Rows(view, g.controls, y, view.cache, panel)
		if gi < #groups then y = y + SECTION_GAP end
	end
	for i = n + 1, #view.headers do view.headers[i]:Hide() end
	for i = n + 1, #view.panels do view.panels[i]:Hide() end
	return y
end

-- A view = one page tab rendered into its own frame (built once).
function buildView(p, t)
	local view = CreateFrame("Frame", nil, win.Body)
	view:SetPoint("TOPLEFT", win.Body, "TOPLEFT", 0, 0)
	view:SetPoint("RIGHT", win.Body, "RIGHT", 0, 0)
	view.cache, view.headers, view.panels = {}, {}, {}
	if p.custom then
		p.custom(view)
	else
		view.Refresh = function()
			local y = 16
			local groups = {}
			for _, s in ipairs(t.sections) do
				local list = visible(s)
				if #list > 0 then groups[#groups + 1] = { name = s.name, controls = list } end
			end
			if #groups == 0 then
				for _, w in pairs(view.cache) do w:Hide() end
				for _, h in ipairs(view.headers) do h:Hide() end
				for _, pn in ipairs(view.panels) do pn:Hide() end
				if rawget(view, "Preview") then view.Preview:Hide() end
				if not rawget(view, "Empty") then
					view.Empty = W.Text(view, "note", "textMuted")
					view.Empty:SetWordWrap(true)
				end
				view.Empty:SetText(p.empty or L["Nothing to set here yet: the module behind this page is not loaded."])
				view.Empty:SetWidth(win.BodyWidth)
				view.Empty:ClearAllPoints()
				view.Empty:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -24)
				view.Empty:Show()
				view.empty = true
				return 80
			end
			view.empty = false
			if rawget(view, "Empty") then view.Empty:Hide() end
			-- The tab's preview over its sections.
			if t.preview then
				if not rawget(view, "Preview") then view.Preview = t.preview(view) end
				view.Preview:ClearAllPoints()
				view.Preview:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -y)
				view.Preview:Show()
				y = y + view.Preview:Layout(win.BodyWidth) + SECTION_GAP
			end
			y = layoutSections(view, groups, y)
			return y + 24
		end
	end
	return view
end

---------------------------------------------------------------------------
-- Search: every searchable control across pages, as one page of results.
---------------------------------------------------------------------------

searchView = searchView

function matches(c, words)
	local hay = ((labelOf(c) or "") .. " " .. (c.help or "") .. " " .. (c.page and c.page.name or "") .. " " .. (c.tab or "") .. " " .. (c.section or "")):lower()
	for _, w in ipairs(words) do
		if not hay:find(w, 1, true) then return false end
	end
	return true
end

-- -> { { title = "Page · Tab", controls = { ... } }, ... }, count
function O.Search(q)
	local words = {}
	for w in (q or ""):lower():gmatch("%S+") do words[#words + 1] = w end
	local groups, count = {}, 0
	if #words == 0 then return groups, 0 end
	for _, p in ipairs(pageList) do
		for _, t in ipairs(p.tabs) do
			local list = {}
			for _, s in ipairs(t.sections) do
				for _, c in ipairs(s.controls) do
					if available(c) and matches(c, words) then list[#list + 1] = c end
				end
			end
			if #list > 0 then
				groups[#groups + 1] = { title = t.name ~= "" and (p.name .. "  \194\183  " .. t.name) or p.name, controls = list }
				count = count + #list
			end
		end
	end
	return groups, count
end

function renderSearch()
	if not searchView then
		searchView = CreateFrame("Frame", nil, win.Body)
		searchView:SetPoint("TOPLEFT", win.Body, "TOPLEFT", 0, 0)
		searchView:SetPoint("RIGHT", win.Body, "RIGHT", 0, 0)
		searchView.cache, searchView.headers, searchView.panels = {}, {}, {}
		searchView.Empty = W.Text(searchView, "note", "textMuted")
	end
	local groups, count = O.Search(query)
	local sections = {}
	for i, g in ipairs(groups) do sections[i] = { name = g.title, controls = g.controls } end
	local y = layoutSections(searchView, sections, 16)
	searchView.Empty:SetShown(count == 0)
	if count == 0 then
		searchView.Empty:SetText(string.format(L["No settings match \226\128\156%s\226\128\157."], query))
		searchView.Empty:ClearAllPoints()
		searchView.Empty:SetPoint("TOPLEFT", searchView, "TOPLEFT", SH.pad, -24)
		y = 80
	end
	W.ShellTitle(win, L["Search"], count == 1 and L["1 setting matches"] or string.format(L["%d settings match"], count))
	W.ShellTabs(win, nil)
	searchView:Show()
	W.ShellBody(win, y + 16)
	O.results = { groups = groups, count = count }
	return groups, count
end

---------------------------------------------------------------------------
-- Selection and rendering
---------------------------------------------------------------------------

-- A tab with nothing to show (its module is not loaded, or every control
-- needs something missing) is left out of the tab row, and a page with no
-- such tab out of the sidebar; declared pages fill as modules register.
function tabHasControls(t)
	for _, s in ipairs(t.sections) do
		for _, c in ipairs(s.controls) do
			if available(c) then return true end
		end
	end
	return false
end

function shownTabs(p)
	if p.custom then return p.tabs end
	local out = {}
	for _, t in ipairs(p.tabs) do
		if tabHasControls(t) then out[#out + 1] = t end
	end
	if #out == 0 then out[1] = p.tabs[1] end
	return out
end

function pageShown(p)
	if p.custom or p.empty then return true end
	for _, t in ipairs(p.tabs) do
		if tabHasControls(t) then return true end
	end
	return false
end

-- The sidebar in three groups, a hairline between them: the pages of
-- playing (Guide to Quality of Life), those of other addons, guides and
-- tools (Integrations on), and About.
function navGroup(p)
	if p.key == "about" then return 3 end
	return p.order >= 65 and 2 or 1
end

function navItems()
	local items, group = {}, nil
	for _, p in ipairs(pageList) do
		if pageShown(p) or p == current then
			local g = navGroup(p)
			if group and g ~= group then items[#items + 1] = { separator = true } end
			group = g
			items[#items + 1] = { key = p.key, label = p.name, icon = p.icon, dot = p.dot and p.dot() or nil }
		end
	end
	return items
end

function O.RefreshNav()
	if win then W.ShellNav(win, navItems(), query == "" and current and current.key or nil, function(k) O.Select(k) end) end
end

-- -> page, the tab an old page key points at (nil: the page's first). A
-- page's own key wins over an alias of the same name.
function pageByKey(key)
	key = key and keyOf(key)
	for _, p in ipairs(pageList) do
		if p.key == key then return p end
	end
	local alias = key and ALIASES[key]
	if not alias then return nil end
	for _, p in ipairs(pageList) do
		if p.key == alias[1] then return p, alias[2] end
	end
end

function hideViews()
	for _, p in ipairs(pageList) do
		if p.views then for _, v in pairs(p.views) do v:Hide() end end
	end
	if searchView then searchView:Hide() end
end

function pageKeys(p)
	local keys = {}
	for _, t in ipairs(p.tabs) do
		for _, s in ipairs(t.sections) do
			for _, c in ipairs(s.controls) do
				if c.key and available(c) then keys[#keys + 1] = c.key end
			end
		end
	end
	return keys
end

function renderFooter(p)
	local left = {}
	if p and #pageKeys(p) > 0 then
		left[#left + 1] = { label = L["Reset page"], opts = { icon = "reset", ghost = true }, onClick = function()
			W.Modal({ title = L["Reset this page?"], icon = "reset", danger = true, action = L["Reset page"],
				text = string.format(L["Every setting on %s goes back to its default."], p.name),
				onAccept = function() O.ResetPage(p) end })
		end }
	end
	left[#left + 1] = { label = L["Reload UI"], onClick = function() if ReloadUI then ReloadUI() end end, opts = { icon = "reload", ghost = true } }
	W.ShellFooter(win, left, { { label = L["Close"], onClick = function() win:Hide() end } })
end

function O.ResetPage(p)
	for _, key in ipairs(pageKeys(p)) do ns.Set(key, nil) end
	-- Toggles and sliders of state that is no setting go back to their default too.
	for _, t in ipairs(p.tabs) do
		for _, s in ipairs(t.sections) do
			for _, c in ipairs(s.controls) do
				if (c.kind == "toggle" or c.kind == "slider") and not c.key and c.set and available(c) then c.set(nil) end
			end
		end
	end
	for _, v in pairs(p.views or {}) do
		for _, w in pairs(v.cache or {}) do
			if w.psControl and not w.psControl.key and w.Refresh then w:Refresh() end
		end
	end
end

-- Show page `key` (and tab name), or the search results when searching.
function O.Select(key, tabName)
	if not win then return end
	local p, aliasTab = pageByKey(key)
	p = p or pageList[1]
	tabName = tabName or aliasTab
	current = p
	W.HideMenu()
	hideViews()
	if query ~= "" then
		win.Search:SetText("")
		query = ""
	end
	local list = shownTabs(p)
	local t
	for _, tt in ipairs(list) do if tt.name == tabName then t = tt end end
	t = t or list[1]
	currentTab = t
	p.views = p.views or {}
	local view = p.views[t.name]
	if not view then
		view = buildView(p, t)
		p.views[t.name] = view
	end
	W.ShellNav(win, navItems(), p.key, function(k) O.Select(k) end)
	local tabs
	if #list > 1 or (list[1] and list[1].name ~= "") then
		tabs = {}
		for i, tt in ipairs(list) do tabs[i] = { key = tt.name, label = tt.name } end
	end
	W.ShellTabs(win, tabs, t.name, function(name) O.Select(p.key, name) end)
	W.ShellTitle(win, p.name, p.subtitle)
	local h = view.Refresh()
	view:SetHeight(h)
	view:Show()
	W.ScrollTo(win.Scroll, 0)
	W.ShellBody(win, h)
	renderFooter(p)
	-- Switching pages is frequent: snap to full alpha immediately
	view:SetAlpha(1)
	O.page, O.view = p, view
end

function O.SetQuery(text)
	query = text or ""
	if not win then return end
	if query == "" then
		O.Select(current and current.key, currentTab and currentTab.name)
		return
	end
	hideViews()
	W.ShellNav(win, navItems(), nil, function(k) O.Select(k) end)
	renderSearch()
	renderFooter(nil)
end

-- The next (delta 1) or previous tab, running on into the next page's
-- first tab or the previous page's last (LB / RB on a gamepad).
function O.StepTab(delta)
	if not win then return end
	local list, at = {}, nil
	for _, p in ipairs(pageList) do
		if pageShown(p) then
			for _, t in ipairs(shownTabs(p)) do
				list[#list + 1] = { p.key, t.name }
				if p == current and t == currentTab then at = #list end
			end
		end
	end
	local to = list[(at or 0) + delta]
	if to then O.Select(to[1], to[2]) end
end

-- The settings are the hub's Options section in their own shell: the same
-- rail, Options marked, so any section is one click back.
function build()
	win = W.Shell("TuWoW_LevelingOptions", {
		rail = true, title = "TuWoW Leveling", scalePath = "ui.menuScale", searchPlaceholder = L["Search settings"],
		onSearch = function(text)
			if (text or "") == query then return end
			O.SetQuery(text)
		end,
	})
	O.frame = win
	UI.Report.SidebarLink(win)
	UI.Thanks.HeaderLink(win)
	-- A gamepad moves through the page (UI/Gamepad.lua); LB / RB step the tabs.
	if ns.Gamepad and ns.Gamepad.Register then
		ns.Gamepad.Register(win, {
			initial = function(rows)
				for i, w in ipairs(rows) do if ns.Gamepad.Within(w, win.Body) then return i end end
			end,
			prevTab = function() O.StepTab(-1) end,
			nextTab = function() O.StepTab(1) end,
		})
	end
end

function renderRail()
	local P = UI.Picker
	local foot = P and P.FootItems and P.FootItems() or { { key = "Options", label = L["Options"], icon = "sliders", tip = L["Options"] } }
	W.ShellRail(win, P and P.RailItems and P.RailItems() or {}, foot, "Options", function(key)
		if P and P.ShowSection then P.ShowSection(key) end
		UI.ShowPicker()
	end)
end

function UI.ShowOptions(section)
	local ok, err = pcall(function()
		if not win then build() end
		local hub = UI.Picker and UI.Picker.frame
		if hub and hub:IsShown() then
			if not win:IsShown() then UI.Picker.TakePlace(win, hub) end
			hub:Hide()
		end
		renderRail()
		win:Show()
		win:SetAlpha(1)
		local defaultKey = (pageList and pageList[1] and pageList[1].key) or "guide"
		O.Select(section or (current and current.key) or defaultKey)
	end)
	if not ok then
		if ns.NoteError then ns.NoteError(err) end
		if DEFAULT_CHAT_FRAME then
			DEFAULT_CHAT_FRAME:AddMessage("|cffff2222[TuWoW Error Opciones]|r: " .. tostring(err))
		end
	end
end

function UI.ToggleOptions(section)
	if win and win:IsShown() then
		win:Hide()
	else
		UI.ShowOptions(section)
	end
end

-- A new font measures every label, value and description anew: the rail,
-- the sidebar and the page on screen are laid out again where they are
-- (other tabs lay out when selected).
W.OnFontChanged(function()
	if not (win and win:IsShown()) then return end
	renderRail()
	if query ~= "" then
		W.ShellNav(win, navItems(), nil, function(k) O.Select(k) end)
		renderSearch()
		return
	end
	O.RefreshNav()
	local view = O.view
	if view and view:IsShown() and view.Refresh then
		local h = view.Refresh()
		view:SetHeight(h)
		W.ShellBody(win, h)
	end
end)

-- The widgets on a page tab (tests and preview): key -> widget.
function O.Controls(key, tabName)
	local p = pageByKey(key)
	local out = {}
	if not p or not p.views then return out end
	for name, view in pairs(p.views) do
		if not tabName or name == tabName then
			for c, w in pairs(view.cache) do
				if c.key then out[c.key] = w else out[labelOf(c)] = w end
			end
		end
	end
	return out
end

-- The pages and tabs the sidebar and tab row show, in order.
function O.Pages()
	local out = {}
	for _, p in ipairs(pageList) do
		if pageShown(p) then
			local tabs = {}
			for j, t in ipairs(shownTabs(p)) do tabs[j] = t.name end
			out[#out + 1] = { name = p.name, key = p.key, builtin = p.builtin and true or false, tabs = tabs }
		end
	end
	return out
end

-- Every module's registrations, now and later.
W.OnOptionsRegistered(function(spec) add(spec, false) end)

---------------------------------------------------------------------------
-- Blizzard Settings: a "TuWoW_Leveling" entry under AddOns that opens our window.
---------------------------------------------------------------------------

function registerSettingsCategory()
	if not (Settings and Settings.RegisterCanvasLayoutCategory and Settings.RegisterAddOnCategory) then return end
	local canvas = CreateFrame("Frame")
	canvas:Hide()
	-- The About lockup at 48: the emblem's ink on the canvas's 16 edge, the
	-- wordmark (1:1) and the tagline centred on it, then the pitch.
	local emblem = W.Tex(canvas, "ARTWORK", "emblem", "accent")
	emblem:SetSize(48, 48)
	emblem:SetPoint("TOPLEFT", canvas, "TOPLEFT", 16 - 7, -16)
	local word = W.Tex(canvas, "ARTWORK", "wordmark", "text")
	word:SetSize(256, 32)
	word:SetPoint("TOPLEFT", canvas, "TOPLEFT", 66 - 3, -14)
	local tag = W.Text(canvas, "note", "textDim")
	tag:SetText(L["A community project"])
	tag:SetPoint("TOPLEFT", canvas, "TOPLEFT", 66, -48)
	local stage = W.Chip(canvas)
	stage:SetPoint("LEFT", tag, "RIGHT", 8, 0)
	W.SetStageChip(stage)
	local sub = W.Text(canvas, "note", "textDim")
	sub:SetText(L["Leveling guides for World of Warcraft: Forever."])
	sub:SetPoint("TOPLEFT", canvas, "TOPLEFT", 16, -80)
	local open = W.Button(canvas, L["Open Polestar settings"], function()
		-- Closing the game's Settings panel is protected in combat: from addon
		-- code it would fail and blame Polestar. Leave it open then, and with
		-- the gamepad interface, whose focus a panel closed from addon code
		-- leaves blocked (ns.GamepadUI): B closes it.
		local panel = SettingsPanel
		if panel and panel.IsShown and panel:IsShown() and HideUIPanel then
			if ns.GamepadUI() then
				ns.Print(L["Close the game menu to see Polestar's settings."])
			elseif InCombatLockdown and InCombatLockdown() then
				ns.Print(L["Close the game menu to see Polestar's settings (it cannot be closed for you in combat)."])
			else
				HideUIPanel(panel)
			end
		end
		UI.ShowOptions()
	end, { primary = true })
	open:SetPoint("TOPLEFT", sub, "BOTTOMLEFT", 0, -16)
	local ok, category = pcall(Settings.RegisterCanvasLayoutCategory, canvas, "TuWoW_Leveling")
	if ok and category then
		pcall(Settings.RegisterAddOnCategory, category)
		UI.settingsCategory = category
	end
end

ns.OnInit(registerSettingsCategory)
