local ADDON, ns = ...
ns._uiOptionsEnv = ns.ModuleEnv(function(e) e.ADDON = ADDON; e.ns = ns end)
setfenv(1, ns._uiOptionsEnv)
-- The options window, in the Polestar shell (Polestar.Widgets.Shell): pages
-- in the sidebar, tabs under the header band, sections of setting rows in
-- one column (each row with its description, each section in a panel), a
-- settings search, and a footer with Reset page, Reload UI and Close.
-- Consequential actions ask in the shared dialog (W.Modal).
--
-- Built-in pages come first; other modules add theirs with
-- Polestar.RegisterOptions (docs/ARCHITECTURE.md, UI -> "Options
-- registry"), which may run before this file loads: the registry replays
-- every registration to us. A control whose settings key has no registered
-- default is left out rather than shown dead.
--
-- A Blizzard Settings category ("TuWoW_Leveling") opens this window.

-- local ADDON, ns = ...
UI, Theme, W, Anim = ns.UI, ns.Theme, ns.Widgets, ns.Anim
L = ns.L
floor, max, min, ipairs, pairs, type = math.floor, math.max, math.min, ipairs, pairs, type

SH = W.SHELL
GAP = 24 -- between the two columns of the Recorder's and About's tiles

O = {}
UI.Options = O

win = win
pages, pageList = {}, {} -- name -> page; ordered list
current, currentTab = current, currentTab
query = ""
seq = 0

function percent(v) return floor(v * 100 + 0.5) .. "%" end
-- "+20%" / "0%" / "-35%"
function O.Signed(v)
	local p = v < 0 and math.ceil(v * 100 - 0.5) or floor(v * 100 + 0.5)
	return (p > 0 and "+" or "") .. p .. "%"
end

-- The name of the colour scheme in use.
function O.SchemeLabel()
	local key = Theme.SchemeKey()
	for _, c in ipairs(Theme.SchemeChoices()) do
		if c.value == key then return c.text end
	end
	return key
end

-- A Hardcore character (C_GameRules): deathskips are off for good.
function O.Hardcore()
	local rules = C_GameRules
	return rules and rules.IsHardcoreActive and rules.IsHardcoreActive() and true or false
end

function keyOf(name) return (name:lower():gsub("[^%w]+", "")) end

---------------------------------------------------------------------------
-- The page model: page -> tabs -> sections -> controls
---------------------------------------------------------------------------

-- Pages that close the list whatever registers after them: the author's
-- Recorder, then About.
TAIL = { [L["Recorder"]] = 1, [L["About"]] = 2 }

-- key: the page's stable key (`/polestar options <key>`, O.Select), the
-- spec's own or else made from the name. Built-in pages give theirs, so a
-- translated title does not move them.
function pageOf(name, icon, order, builtin, key)
	local p = pages[name]
	if not p then
		seq = seq + 1
		p = { name = name, key = keyOf(key or name), icon = icon or "gear", order = order or 100, builtin = builtin, seq = seq, tabs = {} }
		pages[name] = p
		pageList[#pageList + 1] = p
		-- By order (built-in pages first on a tie), Recorder and About last.
		table.sort(pageList, function(a, b)
			local ta, tb = TAIL[a.name] or 0, TAIL[b.name] or 0
			if ta ~= tb then return ta < tb end
			if a.order ~= b.order then return a.order < b.order end
			if (a.builtin and true or false) ~= (b.builtin and true or false) then return a.builtin and true or false end
			return a.seq < b.seq
		end)
	else
		if icon and not p.builtin then p.icon = icon end
	end
	return p
end

function tabOf(p, name)
	name = name or ""
	for _, t in ipairs(p.tabs) do if t.name == name then return t end end
	local t = { name = name, sections = {} }
	p.tabs[#p.tabs + 1] = t
	return t
end

function sectionOf(t, name)
	name = name or ""
	for _, s in ipairs(t.sections) do if s.name == name then return s end end
	local s = { name = name, controls = {} }
	t.sections[#t.sections + 1] = s
	return s
end

function add(spec, builtin)
	local p = pageOf(spec.page, spec.icon, spec.order, builtin, spec.key)
	if spec.subtitle then p.subtitle = spec.subtitle end
	if spec.custom then p.custom = spec.custom end
	if spec.dot then p.dot = spec.dot end
	if spec.empty then p.empty = spec.empty end
	local tab = tabOf(p, spec.tab)
	-- preview(view) -> frame with :Layout(width) -> height: drawn over the
	-- tab's sections (Appearance's live preview).
	if spec.preview then tab.preview = spec.preview end
	local s = sectionOf(tab, spec.section)
	for _, c in ipairs(spec.controls or {}) do
		c.page, c.tab, c.section = p, spec.tab, spec.section
		s.controls[#s.controls + 1] = c
	end
	-- A page or tab already on screen picks up late registrations.
	if win and win:IsShown() then
		if current == p then
			if p.views then for _, v in pairs(p.views) do v:Hide() end end
			p.views = nil
			O.Select(p.key, currentTab and currentTab.name)
		elseif O.RefreshNav then
			O.RefreshNav()
		end
	end
end

---------------------------------------------------------------------------
-- Built-in pages
--
-- The pages follow what the player came to do, not which module owns a
-- setting: follow the guide (Guide), make Polestar look their way
-- (Appearance), choose what the maps show (Map), quest (Questing), find
-- things (Discovery: Lookup, the dungeon journal, rares, your characters), small
-- conveniences (Quality of Life), other addons Polestar works with
-- (Integrations); the author's Recorder and About close the
-- list. Modules still register their own controls; the pages they fill are
-- declared here with their tabs and sections in order, and the modules
-- register into them by name (docs/ARCHITECTURE.md, "Options registry").
---------------------------------------------------------------------------

GUIDE, LOOK, MAP, QUESTING, DISCOVERY, QOL, REC, ABOUT =
	L["Guide"], L["Appearance"], L["Map"], L["Questing"], L["Discovery"], L["Quality of Life"], L["Recorder"], L["About"]

function resetPositions()
	ns.Set("ui.pos", nil)
	if ns.Nav and ns.Nav.ResetArrowPosition then ns.Nav.ResetArrowPosition() end
	if win then
		win:ClearAllPoints()
		win:SetPoint("CENTER", UIParent, "CENTER", 0, 20)
	end
	if UI.Picker and UI.Picker.frame then
		UI.Picker.frame:ClearAllPoints()
		UI.Picker.frame:SetPoint("CENTER", UIParent, "CENTER", 0, 20)
	end
end
O.ResetPositions = resetPositions

function borderOff() return not ns.Get("ui.border") end
-- Settings of the house style alone: every other skin brings its own grounds,
-- no starlit band and no drop shadow (Theme.lua, "Skins").
function houseOnly() return Theme.SkinKey() ~= "polestar" end
function px(v) return string.format(L["%d px"], floor(v + 0.5)) end
-- Guidance options with no effect while Shortest Path Forever guides (Nav/Handoff.lua).
function H(c)
	local N = ns.Nav
	return N and N.HandoffOption and N.HandoffOption(c) or c
end

-- A page's tabs and sections in their order, for modules to fill.
function declare(page, key, icon, order, subtitle, tabs)
	local out = {}
	for _, t in ipairs(tabs) do
		for _, section in ipairs(t[2]) do
			out[#out + 1] = { page = page, key = key, icon = icon, order = order, subtitle = subtitle, tab = t[1], section = section, controls = {} }
		end
	end
	return out
end

BUILTIN = {
	-- Following the guide: the window, the arrow and routes, automation.
	{ page = GUIDE, key = "guide", icon = "window", order = 10, tab = L["Window"], section = L["What it shows"],
		subtitle = L["The guide window, the arrow and its routes, and what Polestar does for you."], controls = {
		{ kind = "toggle", key = "ui.shown", label = L["Show the window"], help = L["Also /polestar, or the key binding."] },
		{ kind = "toggle", key = "ui.minimapButton", label = L["Minimap button"], help = L["Show the circular TuWoW Leveling button on the minimap."] },
		{ kind = "toggle", key = "ui.alertsEnabled", label = L["Leveling alerts"], help = L["Show toast notifications when you level up, have unspent talents, need riding training, or have full bags."] },
		{ kind = "dropdown", key = "ui.trackerStyle", label = L["Tracker design"], help = L["Choose between the TuWoW Leveling (ForeverUI + Zygor) tracker or the classic window."],
			choices = { { value = "tuwow", label = L["TuWoW Leveling (Forever + Zygor)"] }, { value = "classic", label = L["Classic View"] } } },
		{ kind = "toggle", key = "ui.trackerModel3D", label = L["3D target preview"], help = L["Show a 3D preview of the current step's character or creature beside the tracker."] },
		{ kind = "toggle", key = "ui.compact", label = L["Compact mode"], help = L["Only the header and the current step's goals."] },
		{ kind = "toggle", key = "ui.showNotes", label = L["Step tips"], help = L["The author's tip under the goals, one line until clicked."] },
		{ kind = "toggle", key = "ui.notesOpen", label = L["Expand step tips"], help = L["Start each step with its tip in full instead of one line."],
			child = true, disabled = function() return not ns.Get("ui.showNotes") end },
		{ kind = "slider", key = "ui.upcoming", label = L["Upcoming steps"], min = 0, max = 6, step = 1, format = "%d", help = L["How many steps the Up next list holds; 0 turns it off."] },
		{ kind = "toggle", key = "ui.upcomingOpen", label = L["Expand Up next"], help = L["Start with the upcoming steps listed instead of collapsed."] },
	} },
	{ page = GUIDE, tab = L["Window"], section = L["Combat"], controls = {
		{ kind = "dropdown", key = "ui.combat", label = L["In combat"], help = L["What the window does while you fight."],
			choices = { { value = "show", label = L["Keep visible"] }, { value = "fade", label = L["Fade out"] }, { value = "hide", label = L["Hide"] } } },
	} },
	{ page = GUIDE, tab = L["Window"], section = L["Dungeons"], controls = {
		{ kind = "dropdown", key = "ui.instance", label = L["In dungeons"], help = L["What the window does in dungeons and raids. /polestar or the key binding opens it there until you leave."],
			choices = { { value = "show", label = L["Keep visible"] }, { value = "hide", label = L["Hide"] } } },
	} },
	{ page = GUIDE, tab = L["Window"], section = L["Position"], controls = {
		{ kind = "toggle", key = "ui.locked", label = L["Lock window"], help = L["Prevents moving and resizing."] },
		{ kind = "toggle", key = "ui.lockHud", label = L["Lock arrow and buttons"],
			help = L["Stops stray drags on the arrow, the action buttons and the flight and instance timers. Shift-drag still moves them."] },
		{ kind = "toggle", key = "ui.growUp", label = L["Grow upward"], help = L["Keep the bottom edge in place, so longer steps extend the window up."] },
		{ kind = "toggle", key = "ui.barsBottom", label = L["Bar at the bottom"], help = L["With Grow upward, put the tabs and the step bar at the bottom edge, next to where the window is pinned."],
			child = true, disabled = function() return not ns.Get("ui.growUp") end },
		{ kind = "button", icon = "reset", button = L["Reset"], label = L["Reset position"], help = L["Put the guide window back in its corner."], onClick = function() ns.Set("ui.pos", nil) end },
	} },
	{ page = GUIDE, tab = L["Arrow & routes"], section = L["Arrow"], controls = {
		H({ kind = "toggle", key = "nav.arrow", label = L["Show arrow"], help = L["Points to the current goal. Its look and colours are under Appearance, Arrow."] }),
		H({ kind = "toggle", key = "nav.arrowEta", label = L["Arrival time"], help = L["Estimated time under the distance."] }),
		{ kind = "dropdown", key = "nav.distanceUnit", label = L["Distances"], help = L["How the arrow, map tooltips, rares and the death helper show distances."],
			choices = { { value = "yards", label = L["Yards (the game's unit)"] }, { value = "metres", label = L["Metres"] } } },
		H({ kind = "toggle", key = "nav.arrivalSound", label = L["Arrival sound"], help = L["A soft chime when you reach a waypoint."] }),
		H({ kind = "button", icon = "reset", button = L["Reset"], label = L["Reset arrow position"], help = L["Back to the top of the screen. Drag the arrow to move it."],
			onClick = function() if ns.Nav and ns.Nav.ResetArrowPosition then ns.Nav.ResetArrowPosition() end end,
			needs = function() return ns.Nav and ns.Nav.ResetArrowPosition end }),
	} },
	{ page = GUIDE, tab = L["Arrow & routes"], section = L["Routes"], controls = {
		H({ kind = "toggle", key = "nav.travel", label = L["Plan travel routes"], help = L["Flights, boats and your hearthstone when they are faster. Off: the arrow points straight at the goal."] }),
		H({ kind = "toggle", key = "nav.teleports", label = L["Class teleports"], help = L["Routes may start with a Teleport spell you know (a mage's city teleports, a druid's Moonglade) when it is faster. A city teleport needs a Rune of Teleportation in your bags."],
			child = true, disabled = function() return not ns.Get("nav.travel") end }),
		H({ kind = "toggle", key = "nav.navRouting", label = L["Walk real paths"], help = L["The arrow follows paths on the ground around cliffs, water and walls, on Polestar's walking maps, with Shortest Path Forever's router by Cillian Berragan. Off: it points straight at each stop."] }),
		H({ kind = "toggle", key = "nav.routeLines", label = L["Route lines"], help = L["The way to the goal on the world map and the minimap: dots where you walk, lines where you fly, sail or ride, the legs after this one fainter. Drawn as Shortest Path Forever by Cillian Berragan draws them."],
			gear = { tip = L["Line style"], onClick = function() if UI.ShowLineStyle then UI.ShowLineStyle() end end } }),
		{ kind = "toggle", key = "nav.shareTransit", label = L["Share boat times"], help = L["Riding a boat, zeppelin, tram or lift times it; your guild and group get those times and you get theirs, so the arrow can say when the next one leaves."] },
	} },
	{ page = GUIDE, tab = L["Arrow & routes"], section = L["Other waypoints"], controls = {
		H({ kind = "toggle", key = "nav.blizzardWaypoint", label = L["Blizzard waypoint"], help = L["Also set the game's own map pin and tracking."] }),
		H({ kind = "toggle", key = "nav.tomtom", label = L["Mirror to TomTom"], help = L["Adds the target as a TomTom waypoint when TomTom is loaded."] }),
		H({ kind = "toggle", key = "nav.useTomTomArrow", label = L["Use TomTom's arrow"], help = L["Hides Polestar's arrow in favour of TomTom's."],
			child = true, disabled = function() return not ns.Get("nav.tomtom") end }),
	} },
	{ page = GUIDE, tab = L["Automation"], section = L["Quests"], controls = {
		{ kind = "toggle", key = "behavior.autoAccept", label = L["Accept guide quests"], help = L["Only quests in the next steps of your open guides. Hold Shift to skip."] },
		{ kind = "toggle", key = "behavior.autoTurnin", label = L["Turn in guide quests"], help = L["Never picks between rewards. Hold Shift to skip."] },
		{ kind = "toggle", key = "behavior.closeSkipped", label = L["Close offers the guide skips"], help = L["After Polestar accepts or turns in a quest, closes the quest window the NPC opens next when the guide skips its quests. Hold Shift to keep it open."] },
		{ kind = "toggle", key = "behavior.warnClosing", label = L["Warn about missable quests"], help = L["Before you take a quest that closes another for good, says which in chat and leaves the accept to you."] },
		{ kind = "toggle", key = "behavior.skipGrey", label = L["Skip grey quests"], help = L["Leaves out grey quests and their turn-ins, unless a later quest needs them first."] },
		-- The answer at a group quest (`when group`) not answered one by one
		-- (Discovery > Group quests): ask at each, or do or skip them all.
		{ kind = "dropdown", key = "behavior.groupQuests", label = L["Group quests"],
			help = L["Elite and escort quests the guides mark for a group. Ask at each, or answer them all: with a group (a party levelling together) or skip them (solo). Discovery, Group quests changes one."],
			choices = { { value = "ask", label = L["Ask me at each"] }, { value = "do", label = L["Do them with a group"] }, { value = "skip", label = L["Skip them"] } },
			needs = function() local E = ns.Engine; return E and E.GroupQuests and #E.GroupQuests() > 0 end },
	} },
	{ page = GUIDE, tab = L["Automation"], section = L["Guides"], controls = {
		{ kind = "toggle", key = "behavior.autoSelectGuide", label = L["Pick a guide for me"], help = L["Opens the suggested guide when no tab is open."] },
		{ kind = "dropdown", key = "behavior.guideEnd", label = L["When a leveling guide ends"], help = L["Ask me: a window says the guide is done and offers the next one. Continue automatically: the next guide loads in the same tab."],
			choices = { { value = "ask", label = L["Ask me"] }, { value = "continue", label = L["Continue automatically"] } } },
		{ kind = "dropdown", key = "behavior.routeChoice", label = L["Where to level next"], help = L["Where a guide offers more than one zone to continue in (/polestar path)."],
			choices = { { value = "ask", label = L["Let me choose"] }, { value = "recommended", label = L["Take the recommended zone"] } } },
		-- `die` steps (Core/Engine.lua, Own.deathskips): the player's choice, never in Hardcore.
		{ kind = "toggle", key = "behavior.deathskips", label = L["Use deathskips"],
			help = L["Where dying on purpose and taking the Spirit Healer's resurrection gets you there sooner, the guide shows a step for it. It costs durability and, from level 11, resurrection sickness. Always off on Hardcore characters."],
			get = function() return ns.Get("behavior.deathskips") and not O.Hardcore() end,
			disabled = function() return O.Hardcore() end },
		{ kind = "dropdown", key = "behavior.trainReminder", label = L["Trainer reminders"], help = L["A note in the guide window, with the nearest trainer of your class, when new skills are waiting."],
			choices = { { value = "2", label = L["Every 2 levels"] }, { value = "1", label = L["Every level"] }, { value = "off", label = L["Off"] } } },
		{ kind = "toggle", key = "behavior.offerClassQuests", label = L["Offer class quests"],
			help = L["When one of your class's Class guides opens (your level, its first quest), the guide window offers to open it in a tab."] },
		{ kind = "button", icon = "reset", button = L["Reset"], danger = true, label = L["Reset guide progress"], help = L["Manual check-offs and skips, current guide."], confirm = true,
			confirmTitle = L["Reset guide progress?"], confirmAction = L["Reset progress"],
			confirmText = function()
				local g = ns.Engine and ns.Engine.GetGuide and ns.Engine.GetGuide()
				local name = g and (g.title or g.id)
				if name then return string.format(L["Your manual check-offs and skipped steps in %s are cleared. Quests you have done stay done."], name) end
				return L["Your manual check-offs and skipped steps in the current guide are cleared. Quests you have done stay done."]
			end,
			onClick = function() if ns.Engine and ns.Engine.ResetProgress then ns.Engine.ResetProgress() end end,
			needs = function() return ns.Engine and ns.Engine.ResetProgress end },
	} },

	-- How everything looks: colour and type, the windows' frames and the
	-- guide window's own look, the arrow. Every change repaints live, the
	-- preview over Colour & type with it. The accent's sources sit together
	-- in their own section.
	{ page = LOOK, key = "appearance", icon = "palette", order = 20, tab = L["Colour & type"], section = L["Accent"],
		preview = function(view) return O.LookPreview(view) end,
		subtitle = L["Colours, type, window frames and the arrow. Everything repaints as you change it; right-click a setting to reset it."], controls = {
		{ kind = "color", key = "ui.accent", label = L["Accent colour"], linked = { "ui.matchAccent", "ui.classAccent" },
			help = L["Click to pick your own, right-click to go back to the scheme's."],
			shown = function() return Theme.Accent() end,
			source = function()
				if Theme.FollowsClassAccent() then return (UnitClass and UnitClass("player")) or L["Class colour"] end
				return Theme.FollowsEllesmereAccent() and "EllesmereUI" or L["TuWoW_Leveling gold"]
			end },
		{ kind = "toggle", key = "ui.classAccent", label = L["Class colour"],
			help = L["The accent follows your class: warlock purple, shaman blue, druid orange. Picking your own accent turns this off."] },
	} },
	{ page = LOOK, tab = L["Colour & type"], section = L["Background"], controls = {
		{ kind = "dropdown", key = "ui.scheme", label = L["Colour scheme"], disabled = houseOnly,
			help = L["How deep the night runs. Dusk is the default, Night the darkest, Graphite a neutral grey; EllesmereUI takes its panel colour and accent."],
			choices = function() return Theme.SchemeChoices() end },
		{ kind = "color", key = "ui.bgColor", label = L["Background colour"], disabled = houseOnly,
			help = L["The ground of every Polestar window. Right-click to go back to the scheme's. Text always stays legible: a colour too light for it is darkened."],
			shown = function() return Theme.Color("bg") end,
			source = function() return O.SchemeLabel() end },
		{ kind = "slider", key = "ui.brightness", label = L["Brightness"], disabled = houseOnly, min = -1, max = 1, step = 0.05, format = O.Signed,
			help = L["Lifts or lowers every background together. Right-click to reset."] },
		{ kind = "slider", key = "ui.bgOpacity", label = L["Background opacity"], min = 0, max = 1, step = 0.05, format = percent,
			help = L["The background opacity of every Polestar window: how much of the world shows through. Right-click to reset."] },
	} },
	{ page = LOOK, tab = L["Colour & type"], section = L["Type & motion"], controls = {
		{ kind = "dropdown", key = "ui.font", label = L["Font"], help = L["The skin's font (the default: the game's own, Fira Sans in Halo), the game's, Inter, Fira Sans, or EllesmereUI's."],
			choices = function()
				local list = { { value = "skin", label = L["The skin's font"] }, { value = "game", label = L["Game font"] },
					{ value = "inter", label = "Inter" }, { value = "fira", label = "Fira Sans" } }
				if Theme.IsEllesmere() then list[#list + 1] = { value = "ellesmere", label = "EllesmereUI" } end
				return list
			end,
			get = function() return Theme.FollowsEllesmereFont() and "ellesmere" or ns.Get("ui.font") end,
			set = function(v)
				if v == "ellesmere" then
					ns.Set("ui.matchFont", true)
					return
				end
				ns.Set("ui.font", v)
				if Theme.IsEllesmere() then ns.Set("ui.matchFont", false) end
			end },
		{ kind = "slider", key = "ui.textSize", label = L["Text size"], min = 0.8, max = 1.4, step = 0.05, format = percent,
			help = L["The size of Polestar's text, apart from the window scale. Changes at once. Right-click to reset."] },
		{ kind = "toggle", key = "ui.reduceMotion", label = L["Reduce motion"], help = L["No sliding or popping; fades stay short."] },
		{ kind = "toggle", key = "ui.classCardSound", label = L["Class quest chime"],
			disabled = function() return not (UI.ClassCard and UI.ClassCard.GameSoundOn()) end,
			help = L["A short chime the first time a class quest chain's card shows. Off while the game's sound effects are off."] },
	} },
	{ page = LOOK, tab = L["Windows"], section = L["Frame"], controls = {
		{ kind = "dropdown", key = "ui.skin", label = L["Skin"],
			help = L["TuWoW_Leveling's own look (the default), Halo (no frame, a soft dark veil, Fira Sans), Hearth (warm game colours), or the game's own art: WoW Forever, Blizzard and Classic. Style, compact mode and the colours you pick work in each."],
			choices = function()
				local list = {}
				for i, c in ipairs(Theme.SkinChoices()) do list[i] = { value = c.value, label = c.text } end
				return list
			end },
		{ kind = "toggle", key = "ui.border", label = L["Window border"], help = L["The line around every Polestar window."] },
		{ kind = "color", key = "ui.borderColor", label = L["Border colour"], linked = { "ui.borderAccent" }, disabled = borderOff, child = true,
			help = L["Click to pick your own, right-click to go back to the scheme's hairline."],
			shown = function() return Theme.Color("windowBorder") end,
			source = function() return ns.Get("ui.borderAccent") and L["Accent"] or L["Hairline"] end },
		{ kind = "toggle", key = "ui.borderAccent", label = L["Accent border"], disabled = borderOff, child = true,
			help = L["The border takes your accent colour. Picking your own border colour turns this off."] },
		{ kind = "slider", key = "ui.borderSize", label = L["Border thickness"], min = 1, max = 4, step = 1, format = px, disabled = borderOff, child = true,
			help = L["In screen pixels; a thicker border grows outward. Right-click to reset."] },
		{ kind = "toggle", key = "ui.band", label = L["Starlit band"], disabled = houseOnly, help = L["The night sky with its stars across the top of every window. Off: the plain background."] },
		{ kind = "toggle", key = "ui.shadow", label = L["Window shadow"], disabled = houseOnly, help = L["The soft shadow under every window."] },
	} },
	{ page = LOOK, tab = L["Windows"], section = L["Guide window"], controls = {
		{ kind = "dropdown", key = "ui.style", label = L["Style"], help = L["Transparent drops every background and border; text is outlined and the controls appear when you hover the window."],
			choices = { { value = "standard", label = L["Standard"] }, { value = "transparent", label = L["Transparent"] } } },
		{ kind = "slider", key = "ui.scale", label = L["Window scale"], min = 0.6, max = 1.6, step = 0.05, format = percent },
		{ kind = "slider", key = "ui.width", label = L["Width"], min = 260, max = 560, step = 10, format = "%d" },
		{ kind = "slider", key = "ui.opacity", label = L["Window opacity"], min = 0.3, max = 1, step = 0.05, format = percent,
			help = L["The whole guide window, text included. The background's own opacity is under Colour & type."] },
	} },
	{ page = LOOK, tab = L["Windows"], section = L["Menus"], controls = {
		{ kind = "slider", key = "ui.menuScale", label = L["Menu scale"], min = 0.7, max = 1.4, step = 0.05, format = percent, release = true,
			help = L["The guide menu and this window; applies when you let go. Right-click to reset."] },
	} },
	{ page = LOOK, tab = L["Arrow"], section = L["Arrow"], controls = {
		H({ kind = "dropdown", key = "nav.arrowStyle", label = L["Arrow style"], choices = { { value = "skin", label = L["The skin's arrow"] }, { value = "3d", label = L["3D"] }, { value = "flat", label = L["Flat"] },
			{ value = "halo", label = L["Halo"] }, { value = "hearth", label = L["Hearth"] } } }),
		H({ kind = "slider", key = "nav.arrowScale", label = L["Arrow scale"], min = 0.5, max = 2, step = 0.05, format = percent }),
		H({ kind = "slider", key = "nav.arrowAlpha", label = L["Arrow opacity"], min = 0.2, max = 1, step = 0.05, format = percent }),
	} },
	{ page = LOOK, tab = L["Arrow"], section = L["Colours"], controls = {
		{ kind = "color", key = "nav.arrowColor", label = L["Arrow colour"],
			help = L["The arrow on its way; the target's pin on the maps and the route's stops wear it too. Right-click to go back to the accent."],
			shown = function() return Theme.Color("arrow") end,
			source = function() return L["Accent"] end },
		{ kind = "color", key = "nav.arrowNearColor", label = L["Arrival colour"],
			help = L["The arrow as it closes on the target, and the ring when you arrive. Right-click to go back to jade."],
			shown = function() return Theme.Color("arrowNear") end,
			source = function() return L["Jade"] end },
	} },
	{ page = LOOK, tab = L["Arrow"], section = L["Map icons"], controls = {
		{ kind = "dropdown", key = "nav.mapIcons", label = L["Icon pack"],
			help = L["The medallion under every mark on the world map and the minimap. The skin's: Polestar's, Halo's, or Hearth's for Hearth and the game's own looks. Glyphs only: no medallion."],
			choices = { { value = "skin", label = L["The skin's icons"] }, { value = "polestar", label = L["TuWoW_Leveling"] },
				{ value = "halo", label = L["Halo"] }, { value = "hearth", label = L["Hearth"] }, { value = "bare", label = L["Glyphs only"] } } },
	} },

	-- Everything Polestar draws on the world map and the minimap, in one
	-- place. The sections are declared here, in this order; the Quests,
	-- Rares and Maps modules register their controls into them by name.
	{ page = MAP, key = "map", icon = "icon-explore", order = 30, tab = L["Guide & quests"], section = L["Guide"],
		subtitle = L["What Polestar draws on the world map and the minimap. Quest, rare and travel icons start off."], controls = {
		{ kind = "toggle", key = "nav.worldPins", label = L["Guide pins on the world map"],
			help = L["The arrow's target, the stops of its travel route, the step's other goals, the areas their mobs and objects spawn in, and the route lines."] },
		{ kind = "toggle", key = "nav.minimapPins", label = L["Guide pin on the minimap"], help = L["The arrow's target, the areas it spawns in, and the route line."] },
		{ kind = "toggle", key = "nav.upcomingPins", label = L["Numbered pins for the steps ahead"],
			help = L["A small pin with its step number where each of the next steps takes you, fainter the further ahead. As many as Up next shows, else five."] },
		H({ kind = "toggle", key = "nav.trailDots", label = L["Trail dots along the travel route"],
			help = L["Moving dots from you to the target on the world map and the minimap, along the travel route, while route lines are off."],
			disabled = function() return ns.Get("nav.routeLines") end }),
	} },
	{ page = MAP, tab = L["Guide & quests"], section = L["Quest markers"], controls = {} },
	{ page = MAP, tab = L["Rares & travel"], section = L["Rares and treasures"], controls = {} },
	{ page = MAP, tab = L["Rares & travel"], section = L["Dungeons and travel"], controls = {} },
	{ page = MAP, tab = L["Rares & travel"], section = L["NPC services"], controls = {} },
	{ page = MAP, tab = L["Zones"], section = L["Zones"], controls = {} },
	{ page = MAP, tab = L["Zones"], section = L["Coordinates"], controls = {} },
}

-- Pages filled by modules alone: Quests, QoL, Gear and Talents on Questing; Lookup,
-- Dungeons, Rares and Characters on Discovery; QoL and Maps on Quality of Life.
for _, list in ipairs({
	declare(QUESTING, "questing", "icon-accept", 40, L["Quest information, rewards and gear advice, and the quest buttons."], {
		{ L["Quests"], { L["Quest database"], L["Tooltips and quest log"], L["Faster questing"] } },
		{ L["Rewards & gear"], { L["Quest rewards"], L["Loot and merchants"], L["Gear advice"], L["Comparison"] } },
		-- Talents: { L["Talents"], { L["Talent plan"] } } here once the plans are back (Talents.lua, T.SOON).
		{ L["Buttons"], { L["Action buttons"] } },
	}),
	declare(DISCOVERY, "discovery", "search", 50, L["Lookup, the dungeon journal and rares: finding things in the world."], {
		{ L["Lookup"], { L["How to get anything"] } },
		{ L["Dungeons"], { ENCOUNTER_JOURNAL, L["Dungeons in leveling guides"] } },
		{ L["Rares"], { L["When a rare shows up"], L["How rares are noticed"], L["History"] } },
		{ L["Characters"], { L["Characters"] } },
	}),
	declare(QOL, "qualityoflife", "qol-toggles", 60, L["Small conveniences: travel, invitations, merchants and trackers."], {
		{ L["Travel"], { L["Flight masters"], L["Hearthstone"], L["Flight timer"], L["Death"] } },
		{ L["Social"], { L["Requests"], L["Blocking"] } },
		{ L["Vendors"], { L["Merchants"], L["Restock"], L["Bags"] } },
		{ L["Trackers"], { L["Experience"], L["Instances"], L["Instance limits"] } },
	}),
}) do
	for _, spec in ipairs(list) do BUILTIN[#BUILTIN + 1] = spec end
end

for _, spec in ipairs(BUILTIN) do add(spec, true) end

-- Integrations: a section per supported addon, each registered by its
-- module with needs = the addon is present (Compat.AddOnPresent), so only
-- installed addons show. The page stays in the list with none (`empty`:
-- the line it shows then).
add({ page = L["Integrations"], key = "integrations", icon = "plug", order = 65,
	subtitle = L["Settings for other addons Polestar works with, shown when they are installed."],
	empty = L["None of the addons Polestar works with is installed."] }, true)
add({ page = L["Integrations"], section = "EllesmereUI", controls = {
	{ kind = "toggle", key = "ui.matchAccent", label = L["Match EllesmereUI accent"],
		help = L["Follow EllesmereUI's accent, live. Picking your own accent turns this off."],
		needs = function() return Theme.IsEllesmere() end },
	{ kind = "toggle", key = "ui.matchFont", label = L["Match EllesmereUI font"],
		help = L["Follow EllesmereUI's font, live. Choosing another font turns this off."],
		needs = function() return Theme.IsEllesmere() end },
} }, true)

---------------------------------------------------------------------------
-- Custom pages: Recorder status and About
---------------------------------------------------------------------------

-- The Recorder's state from its SavedVariables (schema 2, docs/RECORDING.md):
-- the chunks waiting for the uploader, their size, the last one it confirmed.
function recorderState()
	local loaded = C_AddOns and C_AddOns.IsAddOnLoaded and C_AddOns.IsAddOnLoaded("TuWoW_Leveling_Recorder")
	local db = PolestarRecorderDB
	if not loaded then return { installed = false } end
	local out = { installed = true, enabled = false, chunks = 0, bytes = 0, acked = 0 }
	if type(db) == "table" then
		out.enabled = db.enabled == true -- opt-in: off until the player starts it
		if type(db.chunks) == "table" then
			for _, text in pairs(db.chunks) do
				out.chunks = out.chunks + 1
				if type(text) == "string" then out.bytes = out.bytes + #text end
			end
		end
		if type(db.acked) == "number" then out.acked = db.acked end
	end
	return out
end
O.RecorderState = recorderState

function recorderCommand(arg)
	if PolestarRecorder_Command then PolestarRecorder_Command(arg) end
end

-- Two widgets side by side in the body's columns at y, sized by
-- layout(widget, width) -> height and both as tall as the taller. -> height
function placePair(view, pair, y, cw, layout)
	local h = 0
	for col, w in ipairs(pair) do
		w:ClearAllPoints()
		w:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad + (col - 1) * (cw + GAP), -y)
		w:Show()
		h = max(h, layout(w, cw))
	end
	for _, w in ipairs(pair) do w:SetHeight(h) end
	return h
end

function buildRecorder(view)
	local rows = {
		status = W.InfoRow(view, L["Status"]),
		chunks = W.InfoRow(view, L["Waiting to upload"], L["Chunks the Polestar Uploader has not sent yet."]),
		size = W.InfoRow(view, L["Stored"]),
		acked = W.InfoRow(view, L["Last uploaded chunk"]),
	}
	local header = W.SectionHeader(view)
	W.SetSection(header, L["Recordings"])
	local actions = W.SectionHeader(view)
	W.SetSection(actions, L["Actions"])
	local toggle = W.ActionTile(view, "record", L["Start recording"], L["Write quests, routes and world data for guide authors. Off until you start it."], function(self)
		recorderCommand(self.psOn and "off" or "on")
		view.Refresh()
	end)
	local status = W.ActionTile(view, "info", L["Print status"], L["Chunks waiting, the last upload and the install id, in chat."], function() recorderCommand("status") end)
	local window = W.ActionTile(view, "record", L["Recorder window"], L["Position trails, marks and the list of spots to walk, in a small window."], function() recorderCommand("ui") end)
	local note = W.Text(view, "note", "textDim")
	note:SetWordWrap(true)
	note:SetSpacing(3)
	note:SetJustifyV("TOP")
	view.Refresh = function()
		local st = recorderState()
		local cw = (win.BodyWidth - GAP) / 2
		local y = 8
		header:ClearAllPoints()
		header:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -y)
		header:SetWidth(win.BodyWidth)
		y = y + 44
		if not st.installed then
			for _, r in pairs(rows) do r:Hide() end
			actions:Hide(); toggle:Hide(); status:Hide(); window:Hide()
			note:SetText(L["The Polestar Recorder addon is not loaded. Enable it in the AddOns list on the character screen to record your play for guide authoring."])
			note:SetWidth(win.BodyWidth)
			note:ClearAllPoints()
			note:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -y - 6)
			note:Show()
			return y + note:GetStringHeight() + 24
		end
		note:Hide()
		rows.status.Value:SetText(st.enabled and L["Recording"] or L["Off"])
		W.Color(rows.status.Value, st.enabled and "success" or "textDim")
		rows.chunks.Value:SetText(st.chunks)
		rows.size.Value:SetText(string.format(L["%d KiB"], floor(st.bytes / 1024 + 0.5)))
		rows.acked.Value:SetText(st.acked > 0 and st.acked or "\226\128\147")
		y = y + placePair(view, { rows.status, rows.chunks }, y, cw, W.LayoutRow)
		y = y + placePair(view, { rows.size, rows.acked }, y, cw, W.LayoutRow)
		actions:ClearAllPoints()
		actions:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -y)
		actions:SetWidth(win.BodyWidth)
		actions:Show()
		y = y + 44 + 4
		toggle.psOn = st.enabled
		toggle.Title:SetText(st.enabled and L["Stop recording"] or L["Start recording"])
		toggle.psTitle = toggle.Title:GetText()
		toggle.Desc:SetText(st.enabled and L["Nothing more is written until you start it again."] or L["Write quests, routes and world data for guide authors. Off until you start it."])
		y = y + placePair(view, { toggle, status }, y, cw, W.LayoutTile) + 8
		return y + placePair(view, { window }, y, cw, W.LayoutTile) + 24
	end
end

-- The About hero: the sidebar's lockup at full size. The emblem (64, its ink
-- on the 32 edge, in its glow), then the wordmark (Media/UI/wordmark.tga,
-- 1:1, its ink 3px into the box and on rows 4-27), the tagline under it, and
-- the version with the release stage's chip.
HERO_H = 96
function buildAbout(view)
	local hero = CreateFrame("Frame", nil, view)
	hero:SetHeight(HERO_H)
	local emblem = W.Tex(hero, "ARTWORK", "emblem-w", nil)
	emblem:SetSize(52, 52)
	emblem:SetPoint("TOPLEFT", hero, "TOPLEFT", 0, -8)
	local TEXT_X = 64
	local brandTitle = W.Text(hero, "title", "accent")
	brandTitle:SetPoint("TOPLEFT", hero, "TOPLEFT", TEXT_X, -10)
	brandTitle:SetText("|cffffd24aTUWOW|r |cffffffffLEVELING|r")
	local tag = W.Text(hero, "note", "textDim")
	tag:SetText("Guías completas de leveo, mazmorras y profesiones para TuWoW (3.3.5a)")
	tag:SetPoint("TOPLEFT", hero, "TOPLEFT", TEXT_X, -38)
	local ver = W.Text(hero, "small", "textMuted")
	local function versionLine()
		local v = L["Version"] .. " " .. tostring(ns.version or "1.0.0")
		local kb = W.AddonMemory()
		if not kb then return v end
		if kb >= 1024 then return v .. "  \194\183  " .. string.format(L["%.1f MB"], kb / 1024) end
		return v .. "  \194\183  " .. string.format(L["%d KB"], floor(kb + 0.5))
	end
	ver:SetText(versionLine())
	ver:SetPoint("TOPLEFT", hero, "TOPLEFT", TEXT_X, -62)
	local stage = W.Chip(hero)
	stage:SetPoint("LEFT", ver, "RIGHT", 8, 0)
	view.Stage = stage
	local function block(title, text)
		local h = W.SectionHeader(view)
		W.SetSection(h, title)
		local fs = W.Text(view, "note", "textDim")
		fs:SetWordWrap(true)
		fs:SetSpacing(4)
		fs:SetJustifyV("TOP")
		fs:SetText(text)
		return h, fs
	end
	local hex = "|c" .. Theme.Hex("text")
	local whyH = W.SectionHeader(view)
	W.SetSection(whyH, "Por qué TuWoW Leveling")
	local paras = {
		"Las guías para subir de nivel se han convertido en un negocio: las mejores rutas están detrás de suscripciones y muros de pago. TuWoW Leveling va en sentido contrario. Es gratis, de código abierto bajo la GPL-3.0, y lo hace la comunidad que lo juega.",
		hex .. "TuWoW Leveling no pretende ser la guía más rápida ni perfecta, sino una alternativa libre, cómoda y en constante mejora gracias a la comunidad.|r",
		"Cualquiera puede leer el código, corregir un paso, afinar una ruta o escribir una guía nueva, y las contribuciones son bienvenidas. La GPL lo mantiene así: cada copia y cada fork sigue siendo abierto.",
	}
	local whyText = W.Text(view, "body", "textDim")
	whyText:SetWordWrap(true)
	whyText:SetSpacing(4)
	whyText:SetJustifyH("LEFT")
	whyText:SetJustifyV("TOP")
	whyText:SetText(table.concat(paras, "\n\n"))
	local whyClose = W.Text(view, "title", "text")
	whyClose:SetText("El código abierto y gratuito es el futuro.")
	local cmdH, cmdText = block("Comandos", hex .. "/tuwow|r o " .. hex .. "/twl|r   " .. "mostrar u ocultar la ventana de la guía" .. "\n"
		.. hex .. "/tuwow guias|r   " .. "abrir el selector de guías" .. "\n"
		.. hex .. "/tuwow next, prev, skip|r   " .. "moverse entre pasos o saltar el actual" .. "\n"
		.. hex .. "/twl diag|r o " .. hex .. "/twl errors|r   " .. "ver el registro y diagnóstico de errores en tiempo real" .. "\n"
		.. hex .. "/tuwow ayuda|r   " .. "ver todos los comandos disponibles")
	local welcome = W.Button(view, "Volver a ver la bienvenida", function() ns.Fire("SHOW_WELCOME") end)
	view.Welcome = welcome
	local credH, credText = block("Créditos y Agradecimientos", "Desarrollado y adaptado para TuWoW por Duende Loca y TuWoW.\n"
		.. "Agradecimientos y créditos a los proyectos de código abierto Zygor Guides, Polestar y Questie Classic 3.3.5a.\n"
		.. "Tipografías Fira Sans e Inter bajo licencia SIL Open Font License 1.1.")
	local maintH = W.SectionHeader(view)
	W.SetSection(maintH, "Mantenimiento")
	local resetAll = W.ActionTile(view, "reset", "Restablecer todos los ajustes", "Devuelve todas las opciones de TuWoW Leveling por defecto. El progreso se conserva.",
		function()
			W.Modal({ title = "¿Restablecer todos los ajustes?", icon = "reset", danger = true, action = "Restablecer todo",
				text = "Todas las opciones de TuWoW Leveling volverán a sus valores predeterminados. Tus guías y progreso se conservan.",
				onAccept = function() if ns.ResetSettings then ns.ResetSettings() end end })
		end, { danger = true })
	local resetPos = W.ActionTile(view, "window", "Restablecer posiciones", "Devuelve la ventana del rastreador, la flecha y los paneles a su posición original.", resetPositions)
	view.ResetAll = resetAll
	view.Refresh = function()
		ver:SetText(versionLine())
		W.SetStageChip(stage)
		local width = win.BodyWidth
		local cw = (width - GAP) / 2
		local y = 12
		hero:ClearAllPoints()
		hero:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -y)
		hero:SetWidth(width)
		y = y + HERO_H
		whyH:ClearAllPoints()
		whyH:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -y)
		whyH:SetWidth(width)
		y = y + 44 + 6
		whyText:SetWidth(width)
		whyText:ClearAllPoints()
		whyText:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -y)
		y = y + whyText:GetStringHeight() + 22
		whyClose:ClearAllPoints()
		whyClose:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -y)
		y = y + whyClose:GetStringHeight() + 8
		for _, pair in ipairs({ { cmdH, cmdText }, { credH, credText } }) do
			pair[1]:ClearAllPoints()
			pair[1]:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -y)
			pair[1]:SetWidth(width)
			y = y + 44 + 6
			pair[2]:SetWidth(width)
			pair[2]:ClearAllPoints()
			pair[2]:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -y)
			y = y + pair[2]:GetStringHeight() + 8
			-- The welcome again, under the commands that it introduces.
			if pair[1] == cmdH then
				y = y + 4
				welcome:ClearAllPoints()
				welcome:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -y)
				y = y + welcome:GetHeight() + 12
			end
		end
		maintH:ClearAllPoints()
		maintH:SetPoint("TOPLEFT", view, "TOPLEFT", SH.pad, -y)
		maintH:SetWidth(width)
		y = y + 44 + 4
		return y + placePair(view, { resetAll, resetPos }, y, cw, W.LayoutTile) + 24
	end
end

add({ page = L["Community guides"], key = "guidepacks", icon = "layers", order = 70, subtitle = L["Guides made by other players: switch them on or off, and choose where suggestions come from."],
	custom = UI.Packs.Build, dot = UI.Packs.HasProblems }, true)
add({ page = L["Guiding Stars"], key = "thanks", icon = "star", order = 80, subtitle = "Celebrando a los colaboradores y a la comunidad detrás de TuWoW Leveling.",
	custom = UI.Thanks.Build }, true)
add({ page = REC, key = "recorder", icon = "record", order = 90, subtitle = L["The data recorder for guide authors."], custom = buildRecorder }, true)
add({ page = ABOUT, key = "about", icon = "info", order = 100, subtitle = "Por qué existe TuWoW Leveling, sus comandos y sus créditos.", custom = buildAbout }, true)

-- Page keys from before the pages were regrouped (and older section names)
-- reach the page, and the tab, that holds those settings now.
ALIASES = {
	guidewindow = { "guide", L["Window"] }, general = { "guide", L["Window"] }, window = { "guide", L["Window"] },
	navigation = { "guide", L["Arrow & routes"] }, nav = { "guide", L["Arrow & routes"] }, arrow = { "guide", L["Arrow & routes"] },
	automation = { "guide", L["Automation"] }, behavior = { "guide", L["Automation"] }, behaviour = { "guide", L["Automation"] },
	quests = { "questing", L["Quests"] }, gear = { "questing", L["Rewards & gear"] },
	lookup = { "discovery", L["Lookup"] }, dungeons = { "discovery", L["Dungeons"] }, rares = { "discovery", L["Rares"] },
	characters = { "discovery", L["Characters"] }, alts = { "discovery", L["Characters"] },
	look = { "appearance" }, qol = { "qualityoflife" },
}

