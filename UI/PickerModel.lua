local ADDON, ns = ...
ns._uiPickerEnv = ns.ModuleEnv(function(e) e.ADDON = ADDON; e.ns = ns end)
setfenv(1, ns._uiPickerEnv)
-- The guide menu, in the Polestar shell, read in three panes on the shell's
-- grid: the zone art and the tab row end on the one 152 line; text in the
-- middle pane starts at x=32 (a finished guide's check sits in the gutter
-- left of it); the sidebar and the details keep the shell's 24 inset.
--
-- Left: the hub rail (sections, Options at its foot; below), then the
-- sidebar: the search under the wordmark, then the categories with their
-- icons and counts (All, Leveling, Professions, Reputation, Exploration,
-- Legacy, Collectibles, Miscellaneous, Favorites). A category with no guide for any faction
-- is left out; one empty only for this faction fades and says how to reach
-- its guides. Dungeons have their own hub section, not a category.
-- Middle: tabs (Home: Continue cards for the open tabs and the suggested
-- guides; Browse: the last category or the search; Current: the open tabs;
-- Recent: the last guides loaded), one always active, over one line per
-- guide, "Title (min-max)", a "Group" chip on a guide with group content
-- (elites, dungeons, raids: the compiled `group`; on the Continue cards
-- too), a check on finished guides and a muted "Tab N"
-- on open ones, under small folder headers (leveling by faction and band:
-- "Horde 30-40"; the rest by category). The faction filter sits at the
-- right of the tab row. The header says what the list holds ("Horde · 65
-- guides · 1 open", or the search's result count). The list runs to the
-- window's bottom.
-- Right: the selected guide's details: its zone's art from the client (the
-- night band without it) with the title on it, chips (levels, on a leveling
-- guide what its turn-ins are worth in levels with a panel on hover
-- (UI/LevelTip.lua), group, faction, races, classes), progress, the facts (what the guide's goal gives
-- and why: a Class guide's `reward`, item and spell icons with the game's
-- tooltip on hover, and its `why`; steps, the quests this character takes,
-- the zones in route order, what comes next), pitch, pros and cons,
-- the favourite star, "Load guide" (into the current tab) and "Open in new
-- tab"; on an open guide Load reads "Continue" and the new-tab button goes.
--
-- Selecting shows details; loading is explicit: the buttons, a double-click,
-- or Enter in the search box (a row's tooltip says so). Opened from the guide
-- window's + (UI.ShowPicker({ newTab = true })), loading opens a new tab.
--
-- Per character, in CharState().ui: recentGuides (the last 10 guides loaded,
-- newest first, kept on GUIDE_CHANGED), favoriteGuides ({ [id] = true }) and
-- pickerSelected (the last selection).

-- local ADDON, ns = ...
UI, Theme, W = ns.UI, ns.Theme, ns.Widgets
L = ns.L
floor, max, min, type, ipairs, pairs = math.floor, math.max, math.min, type, ipairs, pairs
ZoneArt = UI.ZoneArt
readable = ns.Compat.Readable

SH = W.SHELL
WIN_W = 1120 + SH.rail -- the section rail, then the three panes
DETAIL_W = 372 -- the details pane, right
MID_W = WIN_W - SH.rail - SH.sidebar - 2 - DETAIL_W -- the list pane, middle

SIDE_W = SH.sidebar -- the sidebar, left of the list

-- The skin's sizes (Theme.Metric; DIRECTION_B_HALO.md §3: 1100 x 640 beside the rail,
-- a 230 sidebar, a 380 details pane), read as the window is built.
function readSizes()
	WIN_W = Theme.Metric("pickerW", 1120) + SH.rail
	DETAIL_W = Theme.Metric("pickerDetail", 372)
	SIDE_W = Theme.Metric("pickerSidebar", SH.sidebar)
	MID_W = WIN_W - SH.rail - SIDE_W - 2 - DETAIL_W
end
ROW_X = 12 -- where list rows' grounds start in the middle pane
TEXT_X = SH.pad - ROW_X -- text inside a row, on the column's x=32 edge
ROW_H, FOLDER_H, CARD_H, CARD_GAP = 28, 32, 78, 10
ART_H = SH.top -- the art ends on the tab row's hairline
DPAD = SH.side -- details pane inset, the sidebar's
FACT_W, FACT_GAP = 84, 10 -- the facts' label column and row gap
RECENT_MAX = 10
SUGGEST_MAX = 5
DOT = "  \194\183  "
-- "›", not "→": many fonts the window may follow (EllesmereUI's Expressway
-- included) have no arrow glyph and draw a box.
ARROW, ELLIPSIS = " \226\128\186 ", "\226\128\166"

P = {}
UI.Picker = P
P.RECENT_MAX = RECENT_MAX

win, details = win, details
factCache = {} -- guide id -> { quests, zones } (guideFacts)
folderPool, rowPool, cardPool, segButtons = {}, {}, {}, {}
query = ""
questContext = questContext -- { id, query, steps = { [guideId] = matching steps } }
category = "All"
view = "home" -- "home" | "current" | "recent" | "browse"
newTabMode = false
visibleIds = {} -- guide ids in the middle pane, top to bottom (arrow keys)

FACTIONS = { "Alliance", "Horde", "All" }
VIEWS = { "home", "browse", "current", "recent" }
VIEW_LABEL = { home = L["Home"], browse = L["Browse"], current = L["Current"], recent = L["Recent"] }

-- The guide format's categories, in the order players look for them.
CATEGORIES = { "Leveling", "Dungeons", "Class", "Professions", "Reputation", "Events", "Exploration", "Collectibles", "Legacy", "Miscellaneous" }
P.CATEGORIES = CATEGORIES
CATEGORY_RANK = {}
for i, c in ipairs(CATEGORIES) do CATEGORY_RANK[c] = i end
CATEGORY_ICON = {
	Leveling = "icon-level", Dungeons = "icon-enter", Class = "icon-train", Professions = "icon-craft",
	Reputation = "icon-rep", Events = "icon-achieve", Exploration = "icon-explore",
	Legacy = "icon-achieve", Collectibles = "icon-collect", Miscellaneous = "icon-treasure", Favorites = "star",
}
P.CATEGORY_ICON = CATEGORY_ICON

categoryOf = UI.Category

-- Community guide packs: their guides are not in our categories but under
-- the "Community guides" heading, one entry per pack (key "pack:<id>"); All,
-- Favorites and search cover every shown guide.
PACK = "pack:"

-- The community pack a guide (header) comes from; nil for ours (`guides`)
-- and Polestar's internal packs.
function packOf(g)
	local id = g and g.pack
	if id == nil or id == "guides" then return nil end
	local G = ns.Guides
	local r = G and G.Pack and G.Pack(id)
	if r and not r.internal then return r end
	return nil
end
P.PackOf = packOf

-- Where a guide is listed: its pack's entry, else its category.
function bucketOf(g)
	local r = packOf(g)
	return r and (PACK .. r.id) or categoryOf(g)
end

-- The pack record behind a "pack:<id>" key, or nil.
function packOfKey(key)
	if type(key) ~= "string" or key:sub(1, #PACK) ~= PACK then return nil end
	local G = ns.Guides
	return G and G.Pack and G.Pack(key:sub(#PACK + 1)) or nil
end

-- A category's or a pack entry's name. The "Favorites" key is shown as
-- "Favourites".
function bucketLabel(key)
	if key == "Favorites" then return L["Favourites"] end
	local r = packOfKey(key)
	return r and (r.title or r.id) or L[key]
end

function categoryLess(a, b)
	local ra, rb = CATEGORY_RANK[a] or 100, CATEGORY_RANK[b] or 100
	if ra ~= rb then return ra < rb end
	return a < b
end

function factionFilter()
	local f = ns.Get("ui.pickerFaction")
	if f == "auto" or f == nil then f = UI.PlayerFaction() or "All" end
	return f
end

---------------------------------------------------------------------------
-- Character state: recent guides, favourites, the last selection
---------------------------------------------------------------------------

function uiState()
	local s = ns.CharState()
	local u = s.ui
	if type(u) ~= "table" then
		u = {}
		s.ui = u
	end
	if type(u.recentGuides) ~= "table" then u.recentGuides = {} end
	if type(u.favoriteGuides) ~= "table" then u.favoriteGuides = {} end
	return u
end

function P.Recent() return uiState().recentGuides end

function remember(id)
	if type(id) ~= "string" then return end
	local list = uiState().recentGuides
	for i = #list, 1, -1 do
		if list[i] == id then table.remove(list, i) end
	end
	table.insert(list, 1, id)
	for i = #list, RECENT_MAX + 1, -1 do list[i] = nil end
end

function P.IsFavorite(id) return id ~= nil and uiState().favoriteGuides[id] == true end

function P.ToggleFavorite(id)
	if not id then return end
	local favs = uiState().favoriteGuides
	favs[id] = (not favs[id]) and true or nil
	P.Render()
end

---------------------------------------------------------------------------
-- Model: the browse list, grouped into folders
---------------------------------------------------------------------------

function haystack(g)
	local c = categoryOf(g)
	local parts = { g.title or "", g.zoneName or "", c, L[c], g.id or "", g.folder or "" }
	if type(g.keywords) == "table" then
		for _, k in ipairs(g.keywords) do parts[#parts + 1] = k end
	end
	if type(g.races) == "table" then
		for _, r in ipairs(g.races) do parts[#parts + 1] = r; parts[#parts + 1] = UI.RaceName(r) end
	end
	if type(g.classes) == "table" then
		for _, cl in ipairs(g.classes) do parts[#parts + 1] = cl; parts[#parts + 1] = UI.ClassName(cl) end
	end
	return table.concat(parts, " "):lower()
end

-- Match IDs, not translated titles: two quests can share a name.
function questSteps(g)
	local cached = questContext.steps[g.id]
	if cached then return cached end
	local G, C = ns.Guides, ns.Compat
	local full = G.Get(g.id)
	local player = C.GetPlayerInfo()
	local found = {}
	questContext.steps[g.id] = found
	if not full or (G.GuideMatches and not G.GuideMatches(g, player) and not (G.OtherStart and G.OtherStart(g, player))) then return found end
	local function applies(only) return not G.Matches or G.Matches(only, player) end
	for i, step in ipairs(full.steps or {}) do
		if applies(step.only) then
			for _, goal in ipairs(step.goals or {}) do
				if goal.quest == questContext.id and applies(goal.only) then
					found[#found + 1] = { index = i, step = step }
					break
				end
			end
		end
	end
	return found
end

function matches(g, q)
	if questContext and q == questContext.query:lower() then return #questSteps(g) > 0 end
	if q == "" then return true end
	local hay = haystack(g)
	for word in q:gmatch("%S+") do
		if not hay:find(word, 1, true) then return false end
	end
	return true
end

-- A leveling guide's band: the id's band folder ("forever/horde/30-40/..."),
-- else from its first level (1-30, then by tens). -> low, high
function band(g)
	for lo, hi in (g.id or ""):gmatch("/(%d+)%-(%d+)/") do return tonumber(lo), tonumber(hi) end
	local lv = g.minLevel or 1
	if lv < 30 then return 1, 30 end
	local lo = floor(lv / 10) * 10
	return lo, lo + 10
end
P.Band = band

FACTION_ORDER = { Alliance = 1, Horde = 2 }

-- The folder a guide is listed under -> label, sort key. A guide's own
-- `folder` wins; guides sharing it still sort by faction, then level.
function folderOf(g, mine)
	local c = categoryOf(g)
	if type(g.folder) == "string" and g.folder ~= "" then
		return g.folder, string.format("%02d", CATEGORY_RANK[c] or 99) .. c .. "/" .. g.folder
	end
	if c == "Leveling" then
		local lo, hi = band(g)
		local f = g.faction
		local rank = f == nil and 3 or (f == mine and 0 or (FACTION_ORDER[f] or 4))
		local label = (f and ns.FactionName(f) or L["Leveling"]) .. " " .. UI.LevelRange(lo, hi)
		return label, string.format("%02d%d%03d", CATEGORY_RANK.Leveling, rank, lo)
	end
	return L[c], string.format("%02d", CATEGORY_RANK[c] or 99) .. c
end

function rankOfFaction(f, mine)
	if f == nil then return 3 end
	if f == mine then return 0 end
	return FACTION_ORDER[f] or 4
end

-- filter: faction ("Alliance" | "Horde" | "All"); q: search text; cat: a
-- category, "Favorites" or "All". On the player's own faction only the
-- guides this character can follow are listed (none for other classes, nor
-- other races' but their starting zones: those, Guides.OtherStart, go in an
-- "Other starting zones" folder after the player's own levels 1-30); the
-- other faction and "All" list every guide.
-- -> entries { kind = "folder"|"guide", text, count, guide },
--    number of guides listed, { [category] = matching guides, Favorites = n }
--    (before the category filter)
function P.Entries(filter, q, cat)
	local G, C = ns.Guides, ns.Compat
	local list = G and G.List and G.List() or {}
	q = (q or ""):lower():gsub("^%s+", ""):gsub("%s+$", "")
	cat = cat or "All"
	local mine = UI.PlayerFaction()
	local player
	if filter == mine and G and G.GuideMatches and C and C.GetPlayerInfo then
		local ok, info = pcall(C.GetPlayerInfo)
		if ok and type(info) == "table" then player = info end
	end
	local favs = uiState().favoriteGuides
	local counts, picked, other = { Favorites = 0 }, {}, {}
	for _, g in ipairs(list) do
		local hit = matches(g, q)
		if hit and favs[g.id] then
			counts.Favorites = counts.Favorites + 1
			if cat == "Favorites" then picked[#picked + 1] = g end
		end
		local okFaction = filter == "All" or g.faction == nil or g.faction == filter
		if okFaction and player and not G.GuideMatches(g, player) then
			if G.OtherStart and G.OtherStart(g, player) then other[g] = true else okFaction = false end
		end
		if okFaction and hit then
			local c = bucketOf(g)
			counts[c] = (counts[c] or 0) + 1
			if cat == "All" or c == cat then picked[#picked + 1] = g end
		end
	end
	local key, label = {}, {}
	for _, g in ipairs(picked) do
		if other[g] then
			label[g], key[g] = L["Other starting zones"], string.format("%02d0001~", CATEGORY_RANK.Leveling)
		else
			label[g], key[g] = folderOf(g, mine)
		end
	end
	table.sort(picked, function(a, b)
		if key[a] ~= key[b] then return key[a] < key[b] end
		local fa, fb = rankOfFaction(a.faction, mine), rankOfFaction(b.faction, mine)
		if fa ~= fb then return fa < fb end
		local la, lb = a.minLevel or 0, b.minLevel or 0
		if la ~= lb then return la < lb end
		-- Same first level: a guide that hands over to the other comes first,
		-- as it is played (a race's lead-in "(12)" before the shared "(12-16)").
		if a.next == b.id then return true end
		if b.next == a.id then return false end
		if categoryOf(a) == "Leveling" then return (a.id or "") < (b.id or "") end
		return (a.title or "") < (b.title or "")
	end)
	local out, folder = {}, nil
	for _, g in ipairs(picked) do
		if label[g] ~= (folder and folder.text) then
			folder = { kind = "folder", text = label[g], count = 0 }
			out[#out + 1] = folder
		end
		folder.count = folder.count + 1
		out[#out + 1] = { kind = "guide", guide = g }
	end
	return out, #picked, counts
end

---------------------------------------------------------------------------
-- Engine glue
---------------------------------------------------------------------------

function tabsInfo()
	local E = ns.Engine
	if not (E and E.GetTabs) then return nil, nil end
	local ok, tabs, active = pcall(E.GetTabs)
	if not ok or type(tabs) ~= "table" then return nil, nil end
	return tabs, active
end

function guideState(id)
	local E = ns.Engine
	if not (E and E.GetGuideState) then return nil end
	return E.GetGuideState(id)
end

function headersById()
	local G = ns.Guides
	local byId = {}
	for _, g in ipairs(G and G.List and G.List() or {}) do byId[g.id] = g end
	return byId
end

-- How to load from the list: a row's tooltip and the empty states.
function loadHint()
	return newTabMode and L["Double-click a guide or press Enter to open it in a new tab."]
		or L["Double-click a guide or press Enter to load it."]
end

mapName = ns.Compat.MapName

-- What a guide's steps hold for this character: the quests it accepts
-- (steps and goals filtered by `only`, as the route choice counts them) and
-- the zones its goals visit, in step order (its own zone without any).
-- Cached per guide until guides register again.
function guideFacts(g)
	local f = factCache[g.id]
	if f then return f end
	f = { quests = 0, zones = {} }
	local G, C = ns.Guides, ns.Compat
	local full = G and G.Get and G.Get(g.id)
	local player
	if C and C.GetPlayerInfo then
		local ok, info = pcall(C.GetPlayerInfo)
		if ok and type(info) == "table" then player = info end
	end
	local fits = G and G.Matches
	local function applies(only)
		if type(only) ~= "table" or not fits then return true end
		return player ~= nil and fits(only, player)
	end
	local seen = {}
	for _, step in ipairs(full and type(full.steps) == "table" and full.steps or {}) do
		if applies(step.only) and type(step.goals) == "table" then
			for _, goal in ipairs(step.goals) do
				if applies(goal.only) then
					if goal.t == "accept" then f.quests = f.quests + 1 end
					local name = mapName(goal.map)
					if name and not seen[name] then
						seen[name] = true
						f.zones[#f.zones + 1] = name
					end
				end
			end
		end
	end
	if #f.zones == 0 then f.zones[1] = UI.GuidePlace(g) end
	if player then factCache[g.id] = f end
	return f
end

-- What a guide's turn-ins are worth to this character (Levels.ForGuide),
-- kept while their level and XP stay the same: a turn-in moves the XP.
xpCache = {}
function guideXP(id)
	local Lv = ns.Levels
	if not (Lv and Lv.ForGuide) then return nil end
	local p = Lv.Player()
	local key = (p.level or 0) .. ":" .. (p.xp or 0)
	local hit = xpCache[id]
	if hit and hit.key == key then return hit.s end
	local s = Lv.ForGuide(id, p)
	-- Nothing yet (no Codex) is asked again: the Codex may load later.
	if s then xpCache[id] = { key = key, s = s } end
	return s
end

-- Whether guide `fromId`'s `next` offers `id` now (an option with `when`
-- only while it holds: Engine.RouteOffered).
function offered(fromId, id)
	local E = ns.Engine
	return not (E and E.RouteOffered) or E.RouteOffered(fromId, id)
end

-- Where a guide leads: "Title (lo-hi)", or "Your choice: A or B" for a
-- route choice; nil at the end of a line. Only the options offered now.
function nextFact(g, byId)
	local function named(id)
		local h = byId[id]
		if not h then return nil end
		local lv = UI.LevelRange(h.minLevel, h.maxLevel)
		return (h.title or id) .. (lv and (" (" .. lv .. ")") or "")
	end
	if type(g.nextChoices) == "table" then
		local ids = {}
		for _, id in ipairs(g.nextChoices) do if byId[id] and offered(g.id, id) then ids[#ids + 1] = id end end
		if #ids > 1 then
			local titles = {}
			for i, id in ipairs(ids) do titles[i] = byId[id].title or id end
			local last = table.remove(titles)
			return string.format(L["Your choice: %s or %s"], table.concat(titles, ", "), last)
		elseif #ids == 1 then
			return named(ids[1])
		end
		if g.nextWhen then return nil end
	end
	return g.next and named(g.next) or nil
end

function load(id, inNewTab)
	local E = ns.Engine
	if not (E and id) then return end
	if inNewTab and E.OpenTab then
		if not E.OpenTab(id) then
			ns.Print(L["Six tabs is the limit. Close one to open another."])
			return
		end
	elseif E.SetGuide then
		E.SetGuide(id)
	end
	ns.Set("ui.shown", true)
	if win then win:Hide() end
end
P.Load = load

function P.Selected() return uiState().pickerSelected end

function P.Select(id)
	uiState().pickerSelected = id
	P.Render()
end

-- The primary action on the selection: continue it where it is open, else
-- load it (into a new tab when the menu came from the guide window's +).
function P.LoadSelected()
	local id = P.Selected()
	if not id then return end
	local tabs = tabsInfo()
	local open = false
	for _, t in ipairs(tabs or {}) do if t.guideId == id then open = true end end
	load(id, newTabMode and not open)
end

-- "Suggested for you": every leveling guide for the player's level, best
-- first (Guides.Suggestions), open ones included (their row says "Tab N"),
-- so the list always answers "what fits me now"; then where the open tabs
-- lead (`next` and route choices) once the player is within two levels of
-- them (a level 2 player in a 1-12 guide is not sent on to a 12-19 one).
-- Finished guides are left out.
FOLLOW_REACH = 2 -- levels below a follow-up's minimum at which it shows

function suggestions(byId, tabs, openIndex)
	local G, C = ns.Guides, ns.Compat
	local level
	if C and C.GetPlayerInfo then
		local ok, info = pcall(C.GetPlayerInfo)
		if ok and type(info) == "table" then level = info.level end
	end
	local out, seen = {}, {}
	local function add(id, followUp)
		if #out >= SUGGEST_MAX or not id or seen[id] or not byId[id] then return end
		if followUp and (openIndex[id] or (level and level + FOLLOW_REACH < (byId[id].minLevel or 1))) then return end
		seen[id] = true
		if guideState(id) == "done" then return end
		out[#out + 1] = byId[id]
	end
	for _, id in ipairs(G and G.Suggestions and G.Suggestions() or {}) do add(id) end
	for _, t in ipairs(tabs or {}) do
		local h = byId[t.guideId]
		if h then
			for _, c in ipairs(type(h.nextChoices) == "table" and h.nextChoices or { h.next }) do
				if offered(h.id, c) then add(c, true) end
			end
		end
	end
	return out
end

---------------------------------------------------------------------------
-- Middle pane: folders, guide lines, Continue cards
---------------------------------------------------------------------------

function folderRow(i)
	local f = folderPool[i]
	if f then return f end
	f = CreateFrame("Frame", nil, win.Body)
	f:SetHeight(FOLDER_H)
	f.Text = W.Text(f, "label", "textMuted")
	f.Text:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", TEXT_X, 7)
	f.Count = W.Text(f, "number", "textMuted")
	f.Count:SetJustifyH("RIGHT")
	f.Count:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -TEXT_X, 7)
	f.Rule = W.Divider(f, false, 0.7)
	f.Rule:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", TEXT_X, 0)
	f.Rule:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -TEXT_X, 0)
	folderPool[i] = f
	return f
end

function rowClick(self)
	if self.psGuide then P.Select(self.psGuide.id) end
end

function rowDoubleClick(self)
	if not self.psGuide then return end
	uiState().pickerSelected = self.psGuide.id
	P.LoadSelected()
end

function guideRow(i)
	local r = rowPool[i]
	if r then return r end
	r = CreateFrame("Button", nil, win.Body)
	r:SetHeight(ROW_H)
	W.Hover(r)
	r.Selected = r:CreateTexture(nil, "BACKGROUND")
	r.Selected:SetTexture(Theme.Media("white"))
	r.Selected:SetAllPoints(r)
	W.Painter(r.Selected, function(t) t:SetVertexColor(Theme.Wash("selected")) end)
	r.Bar = r:CreateTexture(nil, "ARTWORK")
	r.Bar:SetTexture(Theme.Media("white"))
	r.Bar:SetWidth(2)
	r.Bar:SetPoint("TOPLEFT", r, "TOPLEFT", 0, 0)
	r.Bar:SetPoint("BOTTOMLEFT", r, "BOTTOMLEFT", 0, 0)
	W.Color(r.Bar, "accent")
	-- A finished guide's check, in the gutter left of the text edge.
	r.Check = W.Tex(r, "ARTWORK", "check", "success")
	r.Check:SetSize(12, 12)
	r.Check:SetPoint("CENTER", r, "LEFT", TEXT_X / 2, 0)
	r.Title = W.Text(r, "body", "text")
	r.Title:SetPoint("LEFT", r, "LEFT", TEXT_X, 0)
	r.Range = W.Text(r, "body", "textMuted")
	r.Range:SetPoint("LEFT", r.Title, "RIGHT", 5, 0)
	-- A guide with group content (compiled `group`): "Group" after the range.
	r.Group = W.Chip(r)
	r.Group:SetPoint("LEFT", r.Range, "RIGHT", 6, 0)
	r.Group:Hide()
	-- An open guide's tab ("Tab 2", "Tab 2 · 25%").
	r.Note = W.Text(r, "small", "textMuted")
	r.Note:SetJustifyH("RIGHT")
	r.Note:SetPoint("RIGHT", r, "RIGHT", -TEXT_X, 0)
	r:SetScript("OnClick", rowClick)
	r:SetScript("OnDoubleClick", rowDoubleClick)
	r:SetScript("OnEnter", W.SimpleTip)
	r:SetScript("OnLeave", W.HideTip)
	rowPool[i] = r
	return r
end

-- note: the right-hand text ("Tab 2", "Tab 2 · 25%"), or nil.
function paintRow(r, g, note, width)
	r.psGuide = g
	r.psTip = loadHint()
	local sel = P.Selected() == g.id
	r.Selected:SetShown(sel)
	r.Bar:SetShown(sel)
	local done = guideState(g.id) == "done"
	r.Check:SetShown(done)
	-- A Class guide this character cannot start yet recedes and says when.
	local E = ns.Engine
	local gate = not done and E and E.StartGate and E.StartGate(g.id)
	if gate then
		local when = gate.level and string.format(L["From level %d"], gate.level) or L["Not available yet"]
		note = note and (note .. DOT .. when) or when
	end
	r.Title:SetWidth(0) -- measured below from scratch, as the note
	r.Title:SetText(g.title or g.id)
	W.Color(r.Title, sel and "text" or ((done or gate) and "textDim" or "text"))
	local lv = UI.LevelRange(g.minLevel, g.maxLevel)
	r.Range:SetText(lv and ("(" .. lv .. ")") or "")
	local groupW = g.group == true and (W.SetChip(r.Group, L["Group"], "dungeon") + 6) or 0
	r.Group:SetShown(groupW > 0)
	-- A pack's guide carries its pack's title, except in that pack's own list.
	local pack = packOf(g)
	if pack and not (view == "browse" and category == PACK .. pack.id) then
		note = note and (note .. DOT .. (pack.title or pack.id)) or (pack.title or pack.id)
	end
	-- A pooled row keeps its last note's width, and GetStringWidth includes
	-- truncation: measure from an unbounded width.
	r.Note:SetWidth(0)
	r.Note:SetText(note or "")
	-- The note never takes more than 45% of the row: a long pack title is cut.
	local noteW = note and min(floor(r.Note:GetStringWidth() + 1), floor(width * 0.45)) or 0
	r.Note:SetWidth(noteW)
	local room = width - TEXT_X * 2 - (note and (noteW + 12) or 0) - (lv and (r.Range:GetStringWidth() + 5) or 0) - groupW
	r.Title:SetWidth(max(40, min(room, floor(r.Title:GetStringWidth() + 1))))
	r:SetWidth(width)
end

function card(i)
	local c = cardPool[i]
	if c then return c end
	c = CreateFrame("Button", nil, win.Body)
	c:SetHeight(CARD_H)
	Theme.Skin(c, "button")
	c.Ring = W.Tex(c, "OVERLAY", "white", "accent")
	c.Ring:SetHeight(1)
	c.Ring:SetPoint("TOPLEFT", c, "TOPLEFT", 0, 0)
	c.Ring:SetPoint("TOPRIGHT", c, "TOPRIGHT", 0, 0)
	c.Icon = c:CreateTexture(nil, "ARTWORK")
	c.Icon:SetSize(14, 14)
	c.Icon:SetPoint("TOPLEFT", c, "TOPLEFT", TEXT_X, -13)
	c.Title = W.Text(c, "body", "text")
	c.Title:SetPoint("LEFT", c.Icon, "RIGHT", 8, 0)
	-- The tab it is open in, level with the title.
	c.Note = W.Text(c, "small", "textMuted")
	c.Note:SetJustifyH("RIGHT")
	c.Note:SetPoint("RIGHT", c, "TOPRIGHT", -TEXT_X, -20)
	-- A guide with group content: "Group" left of the tab.
	c.Group = W.Chip(c)
	c.Group:SetPoint("RIGHT", c.Note, "LEFT", -8, 0)
	c.Group:Hide()
	c.Step = W.Text(c, "small", "textDim")
	c.Step:SetPoint("TOPLEFT", c, "TOPLEFT", TEXT_X, -38)
	c.Pct = W.Text(c, "number", "textDim")
	c.Pct:SetJustifyH("RIGHT")
	c.Pct:SetPoint("TOPRIGHT", c, "TOPRIGHT", -TEXT_X, -38)
	c.Line = W.ProgressLine(c, 2)
	c.Line:SetPoint("BOTTOMLEFT", c, "BOTTOMLEFT", TEXT_X, 14)
	c.Line:SetPoint("BOTTOMRIGHT", c, "BOTTOMRIGHT", -TEXT_X, 14)
	c:SetScript("OnClick", rowClick)
	c:SetScript("OnDoubleClick", rowDoubleClick)
	c:SetScript("OnEnter", W.SimpleTip)
	c:SetScript("OnLeave", W.HideTip)
	cardPool[i] = c
	return c
end

function layoutCards(tabs, active, byId, y)
	local per = 2
	local x0 = ROW_X
	local cw = floor((MID_W - x0 * 2 - CARD_GAP * (per - 1)) / per)
	for i, t in ipairs(tabs) do
		local c = card(i)
		c.psIndex = i
		c.psGuide = byId[t.guideId] or { id = t.guideId, title = t.title }
		c.psTip = loadHint()
		local sel = P.Selected() == t.guideId
		c.Ring:SetShown(sel)
		c.Icon:SetTexture(Theme.Media(CATEGORY_ICON[t.category] or "icon-level"))
		W.Color(c.Icon, i == active and "accent" or "textDim")
		c.Title:SetText(t.title or t.guideId)
		local total = t.total or t.stepCount or 0
		if t.complete then
			c.Step:SetText(ns.LC("guide status", "Completed"))
		elseif t.stepIndex then
			c.Step:SetText(string.format(L["Step %d of %d"], t.stepIndex, t.stepCount or 0))
		else
			c.Step:SetText("")
		end
		local frac = total > 0 and (t.done or 0) / total or 0
		c.Pct:SetText(floor(frac * 100 + 0.5) .. "%")
		c:SetWidth(cw)
		W.SetProgress(c.Line, frac, cw - TEXT_X * 2)
		c.Note:SetText(string.format(L["Tab %d"], i))
		local groupW = c.psGuide.group == true and (W.SetChip(c.Group, L["Group"], "dungeon") + 8) or 0
		c.Group:SetShown(groupW > 0)
		local room = cw - TEXT_X * 2 - 14 - 8 - c.Note:GetStringWidth() - 8 - groupW
		c.Title:SetWidth(max(40, floor(room)))
		local col, line = (i - 1) % per, floor((i - 1) / per)
		c:ClearAllPoints()
		c:SetPoint("TOPLEFT", win.Body, "TOPLEFT", x0 + col * (cw + CARD_GAP), -(y + line * (CARD_H + CARD_GAP)))
		c:Show()
	end
	for i = #tabs + 1, #cardPool do cardPool[i]:Hide() end
	local lines = floor((#tabs + per - 1) / per)
	return y + lines * (CARD_H + CARD_GAP)
end

