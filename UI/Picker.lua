local ADDON, ns = ...
setfenv(1, ns._uiPickerEnv)
---------------------------------------------------------------------------
-- The hub (docs/SUITE.md "UI"): sections on a rail at the window's left
-- (icon over label, from the 152 line down; Options at the rail's foot).
-- Guides is the built-in section. The sidebar holds the hub search and the
-- active section's index: the guide categories under Guides, a section's
-- own `nav` under it. A section other than Guides gets one frame spanning
-- the list and details panes under the header band (and its tab row when it
-- sets tabs: W.ShellTabs on the hub is for views inside it).
--
--   UI.RegisterSection({
--     key, label, icon, order,
--     build = fn(parent, hub), render = fn(),
--     nav = fn() -> items, activeKey,  -- optional: its index ({ key, label, icon, count })
--     onNav = fn(key),                 -- with nav: set the state, then UI.Picker.Render()
--     search = fn(text), enter = fn(), step = fn(delta), -- optional: the hub search drives it
--     searchPlaceholder = "...",       -- optional; or a list of wordings, longest first (the first that fits shows)
--   })
---------------------------------------------------------------------------

GUIDES = { key = "Guides", label = L["Guides"], icon = "guides", order = 10, builtin = true }
sections, section = { GUIDES }, nil
P.GUIDES = GUIDES.key

function UI.RegisterSection(spec)
	if type(spec) ~= "table" or type(spec.key) ~= "string" or type(spec.build) ~= "function" or type(spec.render) ~= "function" then return false end
	if spec.key == GUIDES.key then return false end
	for i = #sections, 1, -1 do if sections[i].key == spec.key then table.remove(sections, i) end end
	sections[#sections + 1] = spec
	table.sort(sections, function(a, b) return (a.order or 100) < (b.order or 100) end)
	if win and win:IsShown() then P.Render() end
	return true
end

function P.Sections() return sections end
function P.Section() return section or GUIDES.key end

function activeSection()
	if not section then return nil end
	for _, s in ipairs(sections) do if s.key == section and not s.builtin then return s end end
	return nil
end
P.ActiveSection = activeSection

function P.Query() return query end

-- Show a section ("Guides" or nil: the guide list). The hub search starts
-- empty in every section.
function P.ShowSection(key)
	if key == GUIDES.key then key = nil end
	if key ~= section and win then
		query = ""
		win.Search:SetText("")
	end
	section = key
	if win and win:IsShown() then P.Render() end
end

-- The section `delta` away on the rail (LB / RB on a gamepad).
function P.StepSection(delta)
	local cur = P.Section()
	for i, s in ipairs(sections) do
		if s.key == cur then
			local to = sections[i + delta]
			if to then P.ShowSection(to.key) end
			return
		end
	end
end

-- The hub's search wordings, longest first: the box shows the first that fits.
HUB_SEARCH = { L["Search guides, items, NPCs"], L["Search guides, items"], L["Search"] }

function sectionLayout(s)
	local on = s ~= nil
	details:SetShown(not on)
	win.Content:SetShown(not on)
	for _, b in ipairs(segButtons) do b:SetShown(not on) end
	win.Header:ClearAllPoints()
	win.Header:SetPoint("TOPLEFT", win.Main, "TOPLEFT", 0, 0)
	win.Header:SetPoint("TOPRIGHT", win.Main, "TOPRIGHT", on and 0 or -DETAIL_W, 0)
	win.Band:SetTexCoord(Theme.BandCoords(on and (MID_W + DETAIL_W) or MID_W, SH.header))
	win.Close:SetParent(on and win.Header or details.Art.Over)
	win.Close:ClearAllPoints()
	win.Close:SetPoint("TOPRIGHT", on and win.Header or details.Art, "TOPRIGHT", -12, -12)
	if not on then win.Close:SetFrameLevel(details.Scrim:GetFrameLevel() + 2) end
	if win.PlaceThanks then win.PlaceThanks() end
	W.SetSearchPlaceholder(win.Search, (s and s.searchPlaceholder) or (s and s.search and L["Search"]) or HUB_SEARCH)
	win.Search:SetShown(not s or s.search ~= nil)
end

function renderSection(s)
	if not s.psFrame then
		local f = CreateFrame("Frame", nil, win.Main)
		s.psFrame = f
		s.build(f, win)
	end
	for _, o in ipairs(sections) do
		if o.psFrame then o.psFrame:SetShown(o == s) end
	end
	-- No tabs until the section sets its own (its render may).
	W.ShellTabs(win, nil)
	s.render()
	-- Under the tab row when the section set one, else under the header.
	local f = s.psFrame
	f:ClearAllPoints()
	f:SetPoint("TOPLEFT", win.TabRow:IsShown() and win.TabRow or win.Header, "BOTTOMLEFT", 0, 0)
	f:SetPoint("BOTTOMRIGHT", win.Main, "BOTTOMRIGHT", 0, 0)
end

-- The hub's sections as rail items (the settings window shows the same rail);
-- a section with `foot = true` sits at the rail's foot instead, above
-- Options (P.FootItems).
function P.RailItems()
	local items = {}
	for _, s in ipairs(sections) do
		if not s.foot then items[#items + 1] = { key = s.key, label = s.label or s.key, icon = s.icon } end
	end
	return items
end

-- The rail's foot from the bottom up: Options (onOptions opens the settings;
-- nil: the shell's own onSelect), then every `foot` section above it.
function P.FootItems(onOptions)
	local items = { { key = "Options", label = L["Options"], icon = "sliders", tip = L["Options"], onClick = onOptions } }
	for _, s in ipairs(sections) do
		if s.foot then items[#items + 1] = { key = s.key, label = s.label or s.key, icon = s.icon } end
	end
	return items
end

-- Open `to` where `from` stands when switching between the hub and the
-- settings: their top-left corners meet, so the rail stays put.
function P.TakePlace(to, from)
	local left, top = from:GetLeft(), from:GetTop()
	if not (left and top) then return end
	local k = from:GetEffectiveScale() / to:GetEffectiveScale()
	to:ClearAllPoints()
	to:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", left * k, top * k)
end

-- The rail: every section, Options at its foot with the foot sections above it.
function renderRail()
	P.railShown = W.ShellRail(win, P.RailItems(), P.FootItems(function() if UI.ShowOptions then UI.ShowOptions() end end),
		section or GUIDES.key, function(key) P.ShowSection(key) end)
end

-- The sidebar index of a section: its own nav, or for a one-view section
-- the section itself, marked (the sidebar never stands empty).
function sectionNav(s)
	if not s.nav then
		W.ShellNav(win, { { key = s.key, label = s.label or s.key, icon = s.icon } }, s.key, nil)
		return
	end
	local ok, items, activeKey = pcall(s.nav)
	if not ok or type(items) ~= "table" then items, activeKey = {}, nil end
	-- onNav changes the section's state and re-renders the hub (P.Render).
	W.ShellNav(win, items, activeKey, function(key) if s.onNav then s.onNav(key) end end)
end

function P.Render()
	if not (win and win:IsShown()) then return end
	local active = activeSection()
	if not active then section = nil end
	renderRail()
	sectionLayout(active)
	if active then
		sectionNav(active)
		navTips("All")
		renderSection(active)
		return
	end
	for _, s in ipairs(sections) do if s.psFrame then s.psFrame:Hide() end end
	local filter = factionFilter()
	-- The other faction's guides come in when the filter asks for them
	-- (Guides.LoadFaction): their load fires GUIDES_REGISTERED, which renders.
	if filter ~= UI.PlayerFaction() and ns.Guides and ns.Guides.LoadFaction and ns.Guides.LoadFaction(filter) then return end
	-- A pack entry whose pack was hidden or holds no guides, or a category no
	-- shown guide is in (its pack was switched off): back to All.
	if category:sub(1, #PACK) == PACK then
		local r = packOfKey(category)
		if not (r and r.status == "on" and (r.guideCount or 0) > 0) then category = "All" end
	elseif category ~= "All" and category ~= "Favorites" then
		local shown = false
		for _, g in ipairs(ns.Guides and ns.Guides.List and ns.Guides.List() or {}) do
			if not packOf(g) and categoryOf(g) == category then
				shown = true
				break
			end
		end
		if not shown then category = "All" end
	end
	local entries, n, counts = P.Entries(filter, query, view == "browse" and category or "All")
	local total = 0
	for c, k in pairs(counts) do if c ~= "Favorites" then total = total + k end end
	W.ShellNav(win, navItems(counts, total), view == "browse" and category or nil, function(key) P.SetCategory(key) end)
	navTips(filter)
	local tabsList = {}
	for i, v in ipairs(VIEWS) do tabsList[i] = { key = v, label = VIEW_LABEL[v] } end
	W.ShellTabs(win, tabsList, view, function(key) P.SetView(key) end)
	paintSegments(filter)

	local byId = headersById()
	local tabs, active = tabsInfo()
	local openIndex = {}
	for i, t in ipairs(tabs or {}) do openIndex[t.guideId] = i end

	-- The header: where you are, and what the list holds.
	local title, subtitle
	if view == "browse" then
		title = query ~= "" and L["Search"] or (category == "All" and L["All guides"] or bucketLabel(category))
		if query ~= "" then
			subtitle = n == 1 and string.format(L["1 result for \226\128\156%s\226\128\157"], query)
				or string.format(L["%d results for \226\128\156%s\226\128\157"], n, query)
		else
			local parts = { filter == "All" and L["All factions"] or ns.FactionName(filter), n == 1 and L["1 guide"] or string.format(L["%d guides"], n) }
			local open = tabs and #tabs or 0
			if open > 0 then parts[#parts + 1] = string.format(L["%d open"], open) end
			subtitle = table.concat(parts, DOT)
		end
	else
		title = VIEW_LABEL[view]
		if view == "home" then
			subtitle = L["Pick up where you left off, or start something new."]
		elseif view == "current" then
			subtitle = L["The guides open in your tabs."]
		else
			subtitle = L["The last guides you loaded."]
		end
	end
	if newTabMode then subtitle = L["Pick a guide to open in a new tab."] end
	W.ShellTitle(win, title, subtitle)

	local width = MID_W - ROW_X * 2
	local y, nf, ng, nc = 8, 0, 0, 0
	visibleIds = {}
	local function folder(text, count)
		nf = nf + 1
		local f = folderRow(nf)
		f.Text:SetText(text)
		f.Count:SetText(count or "")
		f:ClearAllPoints()
		f:SetPoint("TOPLEFT", win.Body, "TOPLEFT", ROW_X, -y)
		f:SetWidth(width)
		f:Show()
		y = y + FOLDER_H + 4
	end
	-- note: the tab an open guide sits in, with its progress where asked.
	local function tabNote(id, withPct)
		local i = openIndex[id]
		if not i then return nil end
		if not withPct then return string.format(L["Tab %d"], i) end
		local t = tabs[i]
		local tot = t.total or t.stepCount or 0
		local pct = tot > 0 and floor((t.done or 0) / tot * 100 + 0.5) or 0
		return string.format(L["Tab %d  \194\183  %d%%"], i, pct)
	end
	local function row(g, note)
		ng = ng + 1
		local r = guideRow(ng)
		paintRow(r, g, note, width)
		r:ClearAllPoints()
		r:SetPoint("TOPLEFT", win.Body, "TOPLEFT", ROW_X, -y)
		r:Show()
		y = y + ROW_H
		visibleIds[#visibleIds + 1] = g.id
	end
	local empty
	-- The last search's Codex matches go away first; a browse with a query
	-- draws them again below.
	if UI.HideLookupRows then UI.HideLookupRows(win.Body) end
	if view == "browse" then
		local lastFolder = false
		for _, e in ipairs(entries) do
			if e.kind == "folder" then
				if lastFolder then y = y + 10 end
				folder(e.text, e.count)
				lastFolder = true
			else
				row(e.guide, tabNote(e.guide.id))
			end
		end
		-- Items, NPCs and quests that match, under the guides (UI/Lookup.lua).
		if query ~= "" and UI.LookupRows then
			y = UI.LookupRows(win.Body, y, query, width, ROW_X)
			-- The header counts both: "1 guide · 8 in the Codex for “west”".
			local codex = UI.LookupTotal and UI.LookupTotal() or 0
			if codex > 0 and not newTabMode then
				W.ShellTitle(win, title, string.format(L["%s  \194\183  %d in the Codex for \226\128\156%s\226\128\157"],
					n == 1 and L["1 guide"] or string.format(L["%d guides"], n), codex, query))
			end
		end
		if n == 0 and not (query ~= "" and UI.LookupCount and UI.LookupCount() > 0) then
			if #(ns.Guides and ns.Guides.List and ns.Guides.List() or {}) == 0 then
				local Pk = UI.Packs
				if Pk and Pk.OursSwitchedOff() then
					empty = L["No guides shown: Polestar's own guides are switched off. Turn them on under Options, Community guides (/polestar packs)."]
				elseif Pk and Pk.AnySwitchedOff() then
					empty = L["No guides shown: the community addons are switched off. Turn one on under Options, Community guides (/polestar packs)."]
				else
					empty = L["No guides installed. Enable Polestar Guides or a community addon in the AddOns list on the character screen, then reload."]
				end
			elseif query ~= "" then
				empty = string.format(L["No guides match \226\128\156%s\226\128\157."], query)
			elseif category == "Favorites" then
				empty = L["No favourites yet. Select a guide and click its star."]
			elseif category ~= "All" then
				empty = string.format(L["No %s guides for this faction."], bucketLabel(category))
			else
				empty = L["No guides for this faction."]
			end
		end
	elseif view == "home" then
		if tabs and #tabs > 0 then
			folder(L["Continue"], #tabs)
			y = y + 4
			y = layoutCards(tabs, active, byId, y) + 6
			nc = #tabs
		end
		local sugg = suggestions(byId, tabs, openIndex)
		if #sugg > 0 then
			folder(L["Suggested for you"], #sugg)
			for _, g in ipairs(sugg) do row(g, tabNote(g.id)) end
		end
		if nc == 0 and #sugg == 0 then empty = L["Nothing open yet. Pick a category on the left to find a guide."] end
	elseif view == "current" then
		if tabs and #tabs > 0 then
			folder(L["Open tabs"], #tabs)
			for i, t in ipairs(tabs) do
				local g = byId[t.guideId]
				if g then row(g, tabNote(g.id, true)) end
			end
		else
			empty = L["No guide is open. Load one and it shows up here."]
		end
	else
		local recent = {}
		for _, id in ipairs(P.Recent()) do if byId[id] then recent[#recent + 1] = byId[id] end end
		if #recent > 0 then
			folder(L["Recently loaded"], #recent)
			for _, g in ipairs(recent) do row(g, tabNote(g.id)) end
		else
			empty = L["Guides you load show up here."]
		end
	end
	if view ~= "home" or nc == 0 then
		for _, c in ipairs(cardPool) do c:Hide() end
	end
	for i = ng + 1, #rowPool do rowPool[i]:Hide() end
	for i = nf + 1, #folderPool do folderPool[i]:Hide() end
	if empty then
		-- Where guides can show up, say how to load one once they do.
		if #(ns.Guides and ns.Guides.List and ns.Guides.List() or {}) > 0 then empty = empty .. "\n\n" .. loadHint() end
		win.Empty:SetText(empty)
		win.Empty:ClearAllPoints()
		win.Empty:SetPoint("TOPLEFT", win.Body, "TOPLEFT", SH.pad, -(y + 16))
		win.Empty:Show()
		y = y + 16 + win.Empty:GetStringHeight()
	else
		win.Empty:Hide()
	end
	W.ShellWatermark(win, empty ~= nil)
	W.ShellBody(win, y + 16)
	renderDetails(byId, tabs, active)
	P.shown = { view = view, guides = ng, folders = nf, cards = nc }
end

-- Searching: keep the selection among the results, so Enter loads what
-- the list shows.
function selectFirstResult()
	local sel = P.Selected()
	for _, id in ipairs(visibleIds) do if id == sel then return end end
	if visibleIds[1] then P.Select(visibleIds[1]) end
end

function P.SetView(v)
	view = v or "home"
	section = nil
	if view ~= "browse" and query ~= "" then
		query = ""
		if win then win.Search:SetText("") end
	end
	if win and win:IsShown() then
		W.ScrollTo(win.Scroll, 0)
		P.Render()
	end
end

function P.View() return view end

function P.SetCategory(c)
	category = c or "All"
	P.SetView("browse")
end

function P.Category() return category end
function P.IsNewTabMode() return newTabMode end

-- Arrow keys in the search box walk the visible guides.
function step(delta)
	if #visibleIds == 0 then return end
	local sel, at = P.Selected(), nil
	for i, id in ipairs(visibleIds) do if id == sel then at = i end end
	at = at and min(#visibleIds, max(1, at + delta)) or 1
	P.Select(visibleIds[at])
end
P.Step = step

---------------------------------------------------------------------------
-- Build
---------------------------------------------------------------------------

function onSearch(text)
	text = text or ""
	if questContext and text ~= questContext.query then questContext = nil end
	if text == query then return end
	-- A section with its own search takes the box while it is shown; in any
	-- other section typing goes back to the guides.
	local s = activeSection()
	if s and s.search then
		query = text
		s.search(text)
		return
	end
	if s and text ~= "" then section = nil end
	-- A new search looks through every guide; a category picked while
	-- searching narrows it.
	if query == "" and text ~= "" then category = "All" end
	query = text
	if not (win and win:IsShown()) then return end
	if query ~= "" then view = "browse" end
	W.ScrollTo(win.Scroll, 0)
	P.Render()
	if query ~= "" then selectFirstResult() end
end

function build()
	readSizes()
	win = W.Shell("TuWoW_LevelingPicker", {
		width = WIN_W, height = Theme.Metric("pickerH", SH.height), sidebar = SIDE_W,
		rail = true, title = "TuWoW Leveling", scalePath = "ui.menuScale", searchPlaceholder = HUB_SEARCH,
		onSearch = onSearch,
	})
	_G.TuWoW_LevelingPicker = win
	_G.PolestarPicker = win
	P.frame = win
	UI.Report.SidebarLink(win)
	UI.Thanks.HeaderLink(win)
	P.search = win.Search
	P.scroll = win.Scroll
	local main = win.Main

	-- Left: the rail (sections, Options at its foot), then the sidebar with
	-- the search in the tab band and the section's index from the 152 line.
	win.Search:SetScript("OnEnterPressed", function(self)
		self:ClearFocus()
		local s = activeSection()
		if s and s.enter then s.enter() elseif not s then P.LoadSelected() end
	end)
	pcall(win.Search.SetScript, win.Search, "OnArrowPressed", function(_, key)
		local d = key == "UP" and -1 or (key == "DOWN" and 1 or nil)
		if not d then return end
		local s = activeSection()
		if s and s.step then s.step(d) elseif not s then step(d) end
	end)

	-- Middle: the header, tab row and list end where the details begin; no
	-- footer, the list runs to the window's bottom.
	win.Header:ClearAllPoints()
	win.Header:SetPoint("TOPLEFT", main, "TOPLEFT", 0, 0)
	win.Header:SetPoint("TOPRIGHT", main, "TOPRIGHT", -DETAIL_W, 0)
	win.Band:SetTexCoord(Theme.BandCoords(MID_W, SH.header))
	win.BodyWidth = MID_W - SH.pad * 2
	win.Empty = W.Text(win.Body, "note", "textMuted")
	win.Empty:SetWordWrap(true)
	win.Empty:SetJustifyV("TOP")
	win.Empty:SetWidth(win.BodyWidth)
	win.Empty:Hide()
	W.ShellFooter(win, nil, nil)

	-- The faction filter, at the right of the tab row, centred in it; its
	-- right edge mirrors the first tab's left (SH.pad - 12).
	local x = -(SH.pad - 12)
	for i = #FACTIONS, 1, -1 do
		local f = FACTIONS[i]
		local b = CreateFrame("Button", nil, win.TabRow)
		b:SetHeight(24)
		b.psKey = f
		W.Hover(b)
		b.Selected = W.Fill(b, "panelAlt", "BACKGROUND", 0)
		b.Label = W.Text(b, "small", "textMuted")
		b.Label:SetPoint("CENTER", b, "CENTER", 0, 0)
		b.Label:SetText(f == "All" and L["All"] or ns.FactionName(f))
		b:SetWidth(floor(b.Label:GetStringWidth() + 20 + 0.5))
		b:SetPoint("RIGHT", win.TabRow, "RIGHT", x, 0)
		b:SetScript("OnClick", function(self) ns.Set("ui.pickerFaction", self.psKey) end)
		b.psTip = L["Faction filter"]
		x = x - b:GetWidth() - 2
		segButtons[i] = b
	end
	win.factionButtons = segButtons

	buildDetails()
	win:HookScript("OnShow", function() P.Render() end)
	-- A gamepad moves through the hub (UI/Gamepad.lua): LB / RB step the
	-- rail's sections, X loads the guide on a focused row.
	if ns.Gamepad and ns.Gamepad.Register then
		ns.Gamepad.Register(win, {
			initial = function(rows)
				local first
				for i, w in ipairs(rows) do
					if ns.Gamepad.Within(w, win.Main) and w.psKey == nil and w ~= win.ThanksLink then
						if w.psGuide and w.psGuide.id == P.Selected() then return i end
						first = first or i
					end
				end
				return first
			end,
			prevTab = function() P.StepSection(-1) end,
			nextTab = function() P.StepSection(1) end,
			tabsLabel = L["Sections"],
			-- The close sits among the details' own buttons: B goes in the hint bar.
			close = false,
			x = function(w)
				if w and w.psGuide and w.psGuide.id then
					P.Select(w.psGuide.id)
					P.LoadSelected()
				end
			end,
			xLabel = function(w) return w.psGuide and L["Load guide"] or nil end,
		})
	end
end

-- opts: { newTab = true } when loading should open a new tab.
function UI.ShowPicker(opts)
	if not win then build() end
	newTabMode = type(opts) == "table" and opts.newTab and true or false
	-- Remember the last selection; without one, start on the open guide or
	-- the suggestion.
	local byId = headersById()
	local sel = P.Selected()
	if not (sel and byId[sel]) then
		sel = nil
		local tabs, active = tabsInfo()
		if tabs and active and tabs[active] then sel = tabs[active].guideId end
		local G = ns.Guides
		if not sel and G and G.Suggest then sel = G.Suggest() end
		uiState().pickerSelected = sel and byId[sel] and sel or nil
	end
	local settings = UI.Options and UI.Options.frame
	if win:IsShown() then
		win:SetAlpha(1)
		P.Render()
	else
		if settings and settings:IsShown() then P.TakePlace(win, settings) end
		win:Show()
		win:SetAlpha(1)
	end
	if settings then settings:Hide() end
end

function UI.TogglePicker(opts)
	local w = win or P.frame or _G.TuWoW_LevelingPicker
	if w and w:IsShown() then
		w:Hide()
	else
		UI.ShowPicker(opts)
	end
end

-- A new font measures the rail, the sidebar and the details' label column
-- anew: the hub on screen renders again.
W.OnFontChanged(function()
	if win and win:IsShown() then P.Render() end
end)

function P.SetQuery(text)
	if not win then build() end
	win.Search:SetText(text or "")
	onSearch(text or "")
end

-- A quest menu searches installed guides, including those without a Codex.
function P.ShowQuest(id)
	id = readable(id)
	if type(id) ~= "number" or id <= 0 or id >= math.huge or id % 1 ~= 0 then return false end
	UI.ShowPicker()
	P.ShowSection("Guides")
	P.SetCategory("All")
	-- The filter is account-wide: only lift one that hides this character's
	-- faction, and back to "auto" so an alt of the other faction is not left
	-- filtered to this one.
	local filter = factionFilter()
	if filter ~= "All" and filter ~= UI.PlayerFaction() then ns.Set("ui.pickerFaction", "auto") end
	local name = UI.QuestTitle(id) or (ns.Names and ns.Names.Quest(id))
	questContext = { id = id, query = name or tostring(id), steps = {} }
	P.SetQuery(questContext.query)
	P.Render()
	if #visibleIds == 0 then P.Select(nil) else selectFirstResult() end
	win.Search:SetFocus()
	return true
end

ns.On("GUIDE_CHANGED", function(id)
	remember(id)
	P.Render()
end)
ns.On("SETTING_CHANGED", function(path)
	if path == "ui.pickerFaction" or path == "" or path == "ui" then P.Render() end
end)
-- The filter is account-wide: a character of the other faction logging in
-- after "Horde" or "Alliance" was picked would open on the wrong side's
-- guides. Back to "auto" (this character's faction) at login; "All" stays.
ns.OnLogin(function()
	local f = ns.Get("ui.pickerFaction")
	local mine = UI.PlayerFaction()
	if mine and (f == "Alliance" or f == "Horde") and f ~= mine then ns.Set("ui.pickerFaction", "auto") end
end)
function guidesChanged()
	factCache = {}
	if questContext then questContext.steps = {} end
	P.Render()
end
ns.On("GUIDES_REGISTERED", guidesChanged)
ns.On("PACKS_CHANGED", guidesChanged)
ns.On("TABS_CHANGED", function() P.Render() end)
