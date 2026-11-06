local ADDON, ns = ...
ns._uiGuideFrameEnv = ns.ModuleEnv(function(e) e.ADDON = ADDON; e.ns = ns end)
setfenv(1, ns._uiGuideFrameEnv)
-- The guide window, a compact instrument that reads one thing at a time
-- (docs/DESIGN.md, "Intent" and "The Guide Window"). From the top:
--
--   tab strip      one tab per open guide, + opens another
--   navigator      prev, "8 / 29", next, Skip, the bug (UI/Report.lua), menu
--   banner         why the guide skipped a quest / out-levelled / training due
--   focus          the person to talk to now: icon, name in NPC colour, where;
--                  under it only that person's goals, one line each, the
--                  counter right after the text. A field step shows its few
--                  objectives under the step title. Done goals check and dim;
--                  a done step (viewed with Prev) lists all its goals.
--                  The author's tip, collapsed to one line.
--   journey        the travel route's steps and times (UI/JourneyPanel.lua),
--                  while the route has more than one leg
--   then           "Then: <next person>" and "Person 2 of 8"
--   up next        off by default (ui.upcoming)
--   xp             the QoL module's XP pace, when on
--   progress       the guide's progress bar and percent
--
-- The Engine groups a step's goals by who they are with (step view `groups`
-- and `focus`, docs/ARCHITECTURE.md "Focus: one person at a time"); without
-- groups the whole step is one group.
--
-- Styles (ui.style): "standard" draws the night ground (Theme.GroundAlpha,
-- ui.bgOpacity, like every Polestar window), hairline border and the
-- night-sky band behind the tabs and navigator. "transparent" draws no fills
-- or borders; every string is outlined so it reads over any terrain, the
-- progress track stays as a faint ink line, and the chrome (tabs, the whole
-- navigator: prev, "8 / 29", next, title, Skip, the bug, menu; the grip)
-- shows only while the cursor is over the window: the step number fades with
-- the chevrons that change it, so it never floats alone. Compact mode
-- (ui.compact) keeps the navigator, the focus goals and the progress bar.
--
-- Colour: the accent marks interaction and where you are (the active tab,
-- the arrow's target mark, the current goal's glyph, primary buttons, the
-- progress fill). Other glyphs sit in textDim, counters in text (success
-- once complete; UI.GoalLine), tooltip ids in textMuted. No colour literals:
-- everything reads Theme tokens and repaints on a scheme change.
--
-- Rows are pooled and filled in place, so STEP_UPDATED (a kill, a loot)
-- repaints existing rows instead of rebuilding anything. Nothing runs per
-- frame except a short tween (Polestar.Anim), an active drag-resize, or the
-- hover watch while the cursor is over a transparent window.

-- local ADDON, ns = ...
UI, Theme, W, Anim = ns.UI, ns.Theme, ns.Widgets, ns.Anim
L = ns.L
floor, max, min, abs, type, ipairs = math.floor, math.max, math.min, math.abs, type, ipairs

-- The window's sizes: the house style's here, a skin's from Theme.Metric
-- (readMetrics, on build and on a skin change).
PAD = 14
TAB_H = 28
NAV_H = 34
PROG_H = 26
ICON = 15
TEXT_X = PAD + ICON + 10
ROW_MIN = 24
CHECK = 18
-- A goal row's extra room above and below its lines, and its tick box's
-- extra inset from the edge (a skin with a framed lit goal: WoW Forever).
ROW_PAD = 0
CHECK_IN = 0
CHECK_MID = false -- the tick box on the row's middle, not its first line
UP_ROW = 24
UP_TOGGLE = 30
COMBAT_ALPHA = 0.35
-- A step's picture in the opened tip: never taller than this, and drawn
-- 2:1 when its pack gave no size (512x256, a common screenshot texture).
PICTURE_MAX_H = 160
PICTURE_ASPECT = 2

-- A goal row's tick box: at the right of its first line, or (CHECK_MID) of
-- its middle.
function placeCheck(r)
	r.Check:ClearAllPoints()
	if CHECK_MID then
		r.Check:SetPoint("RIGHT", r, "RIGHT", -(PAD - 3 + CHECK_IN), 0)
	else
		r.Check:SetPoint("TOPRIGHT", r, "TOPRIGHT", -(PAD - 3 + CHECK_IN), -3 - ROW_PAD)
	end
end

function readMetrics()
	PAD = Theme.Metric("guidePad", 14)
	TAB_H = Theme.Metric("guideTabs", 28)
	NAV_H = Theme.Metric("guideNav", 34)
	PROG_H = Theme.Metric("guideFoot", 26)
	TEXT_X = PAD + ICON + Theme.Metric("guideIconGap", 10)
	ROW_MIN = Theme.Metric("guideRow", 24)
	CHECK = Theme.Metric("guideCheck", 18)
	ROW_PAD = Theme.Metric("guideRowPad", 0)
	CHECK_IN = Theme.Metric("guideCheckIn", 0)
	CHECK_MID = Theme.Metric("guideCheckMiddle", false) and true or false
	UP_ROW = Theme.Metric("guideUpRow", 24)
	UP_TOGGLE = Theme.Metric("guideUpToggle", 30)
end
TAB_MAX_W = 150

GF = {}
UI.GuideFrame = GF

F, strip, nav, body, card, person, after, along, upnext, empty, grip, band, banner, foot = F, strip, nav, body, card, person, after, along, upnext, empty, grip, band, banner, foot
rows, upRows, alongRows, tabButtons = {}, {}, {}, {}
GF.rows, GF.upRows, GF.alongRows, GF.tabs = rows, upRows, alongRows, tabButtons -- the pools, for inspection (tests, preview)
view = view -- the step view on screen
focusGroup = focusGroup -- the group on screen
shownIndex, shownGuide, shownFocus = shownIndex, shownGuide, shownFocus -- what the card shows, to tell a change from an update
tipOpen = false
inCombat = false
inInstance, openInside = false, false -- in a dungeon or raid; opened there by the player
shownOnEntry = false -- ui.shown when this visit began
state = "none" -- "steps" | "noguides" | "noguide" | "notyet" | "away" | "complete"
texts = {} -- every string the window draws, for transparent-mode outlines
chrome = {} -- frames that hide in transparent mode until hovered

function Engine() return ns.Engine end
function compact() return ns.Get("ui.compact") and true or false end
function transparent() return ns.Get("ui.style") == "transparent" end

-- A string that follows the window's style (outlined when transparent).
function T(parent, role, color, layer)
	local fs = W.Text(parent, role, color, layer)
	texts[#texts + 1] = fs
	if F and transparent() then Theme.SetOutline(fs, true) end
	return fs
end
GF.Text = T -- for the panels other files place in the window (UI/JourneyPanel.lua)

---------------------------------------------------------------------------
-- Targets and tooltips
---------------------------------------------------------------------------

-- Where the arrow points. With Nav loaded its answer is final: nil means the
-- player dismissed the target, so nothing is marked. Only without Nav does
-- the Engine's waypoint stand in.
function targetOf()
	local nav = ns.Nav
	if nav and nav.GetTarget then return nav.GetTarget() end
	local E = Engine()
	return E and E.GetWaypoint and E.GetWaypoint() or nil
end

function isTarget(p, t)
	if not (t and p and p.x and p.map) then return false end
	return t.map == p.map and abs((t.x or -1) - p.x) < 0.05 and abs((t.y or -1) - p.y) < 0.05
end

function tooltipAnchor()
	local x = F:GetCenter()
	local sw = UIParent:GetWidth()
	return (x and sw and x * F:GetEffectiveScale() > sw * UIParent:GetEffectiveScale() / 2) and "ANCHOR_LEFT" or "ANCHOR_RIGHT"
end
GF.TooltipAnchor = tooltipAnchor

function goalTooltip(row)
	local goal = row.psGoal
	if not goal then return end
	local lines = {}
	local id = "  |c" .. Theme.Hex("textMuted") .. "#"
	local detail = UI.GoalDetail(goal)
	if detail then lines[#lines + 1] = detail end
	if goal.quest then
		local title = UI.QuestTitle(goal.quest) or (goal.subjectKind == "quest" and goal.subject) or nil
		lines[#lines + 1] = { left = L["Quest"], right = title and (title .. id .. goal.quest .. "|r") or ("#" .. goal.quest) }
	end
	if goal.npc then
		local name = goal.subjectKind == "npc" and goal.subject or goal.npcName
		lines[#lines + 1] = { left = L["NPC"], right = name and (name .. id .. goal.npc .. "|r") or ("#" .. goal.npc) }
	end
	if goal.item then
		local name = goal.subjectKind == "item" and goal.subject or nil
		lines[#lines + 1] = { left = L["Item"], right = name and (name .. id .. goal.item .. "|r") or ("#" .. goal.item) }
	end
	if goal.map and goal.x then
		lines[#lines + 1] = { left = L["Location"], right = string.format("%s  %.1f, %.1f", UI.MapName(goal.map) or "", goal.x, goal.y) }
	end
	local rewards = UI.GoalRewards(goal)
	if rewards then lines[#lines + 1] = { left = L["Reward"], right = rewards } end
	local p = goal.progress
	if type(p) == "table" and p.kind == "skill" and p.max then
		lines[#lines + 1] = { left = L["Skill"], right = string.format("%s%d/%d", p.label and (p.label .. "  ") or "", p.cur or 0, p.max) }
	elseif type(p) == "table" and p.kind == "rep" and p.max then
		local right = string.format("%s%d/%d", p.label and (p.label .. "  ") or "", p.cur or 0, p.max)
		if goal.standingName then right = right .. "  \226\128\186  " .. goal.standingName end
		lines[#lines + 1] = { left = L["Reputation"], right = right }
	else
		local text = UI.GoalProgress(goal)
		if text then lines[#lines + 1] = { left = L["Progress"], right = text } end
	end
	if goal.spell then lines[#lines + 1] = { left = L["Spell"], right = "#" .. goal.spell } end
	if goal.achievement then
		lines[#lines + 1] = { left = L["Achievement"], right = "#" .. goal.achievement .. (goal.criteria and ("  \194\183  " .. L["criterion"] .. " " .. goal.criteria) or "") }
	end
	if type(goal.alternatives) == "number" and goal.alternatives > 0 then
		lines[#lines + 1] = goal.alternatives == 1 and L["1 other nearby; the arrow button switches to it."]
			or string.format(L["%d others nearby; the arrow button switches to the next."], goal.alternatives)
	elseif type(goal.spots) == "number" and goal.spots > 1 then
		lines[#lines + 1] = string.format(L["%d spawn spots; the arrow button (or a click on the arrow) moves to the next."], goal.spots)
	end
	local ar, ag, ab = Theme.Accent()
	if goal.x and goal.map and ns.Nav and ns.Nav.SetTarget then
		lines[#lines + 1] = { L["Click to point the arrow here"], ar, ag, ab }
	end
	if goal.unavailable == "skipped" then
		lines[#lines + 1] = { L["Right-click to bring this quest back"], ar, ag, ab }
	elseif goal.quest and goal.status ~= "done" then
		lines[#lines + 1] = { L["Right-click to tick it done or skip this quest"], ar, ag, ab }
	elseif goal.tickable and goal.status ~= "skipped" then
		if goal.ticked then
			lines[#lines + 1] = { L["Right-click to untick"], ar, ag, ab }
		elseif goal.status ~= "done" then
			lines[#lines + 1] = { L["Right-click to tick it done"], ar, ag, ab }
		end
	end
	if goal.optional and goal.status ~= "done" then
		lines[#lines + 1] = goal.dismissed and L["Skipped. Undo brings it back."] or L["Optional: not needed for the route. Skip it if you pass on it."]
	end
	W.Tooltip(row, tooltipAnchor(), goal.text or "", lines)
end

-- `p`: a goal's or group's place from the step view, its height `z` included.
function pointAt(p, label)
	local nav = ns.Nav
	if p and p.x and p.map and nav and nav.SetTarget then
		nav.SetTarget(p.map, p.x, p.y, label, p.f, nil, p.z)
		GF.UpdateTargets()
	end
end

---------------------------------------------------------------------------
-- Goal rows
---------------------------------------------------------------------------

-- Tick the row's goal done, or untick it (any goal but a note).
function toggleGoal(row)
	local E, goal = Engine(), row.psGoal
	if E and E.ToggleGoal and goal and goal.tickable and view then E.ToggleGoal(view.index, goal.index) end
end

-- Skip an optional goal, or bring it back; a quest the player skipped comes
-- back (its accept's Undo).
function skipGoal(row)
	local E, goal = Engine(), row.psGoal
	if not (E and goal and view) then return end
	if goal.unavailable == "skipped" and E.SkipQuest then return E.SkipQuest(goal.quest, false) end
	if E.SkipGoal and goal.optional then E.SkipGoal(view.index, goal.index) end
end

-- A quest's line, right-clicked: tick this goal done (or untick it), or skip
-- the whole quest and what follows from it (Engine.SkipQuest), or bring a
-- skipped quest back.
function rowMenu(row)
	local E, goal = Engine(), row.psGoal
	if not (E and goal and goal.quest and E.SkipQuest) then return false end
	if goal.unavailable == "skipped" then
		E.SkipQuest(goal.quest, false)
		return true
	end
	local items = {}
	if goal.tickable and goal.status ~= "done" or goal.ticked then
		items[#items + 1] = { text = goal.ticked and L["Untick"] or L["Tick it done"], icon = "check", onClick = function() toggleGoal(row) end }
	end
	items[#items + 1] = { text = L["Skip this quest"], icon = "skip", tip = L["This quest and the ones that follow from it are skipped, in every guide. Right-click it again to bring it back."],
		onClick = function() E.SkipQuest(goal.quest, true) end }
	W.ShowMenu(row, items)
	return true
end

function rowClick(row, button)
	local goal = row.psGoal
	if not goal then return end
	if button == "RightButton" then
		if not rowMenu(row) then toggleGoal(row) end
		return
	end
	-- A goal of the step the guide is on: the Engine leads the arrow there
	-- (its spawn areas and spots too) and drops any point picked by hand.
	-- Anywhere else, a plain point.
	local E, nav = Engine(), ns.Nav
	if view and E and E.AimGoal and E.GetStepIndex and E.GetStepIndex() == view.index and E.AimGoal(view.index, goal.index) then
		if nav and nav.ReleaseTarget then nav.ReleaseTarget() end
		GF.UpdateTargets()
	else
		pointAt(goal, goal.text)
	end
end

function rowEnter(row)
	local goal = row.psGoal
	if goal and ((goal.x and goal.map) or goal.tickable) then row.Hover:Show() end
	goalTooltip(row)
	GF.HoverIn()
end

function rowLeave(row)
	row.Hover:Hide()
	W.HideTooltip(row)
end

function goalRow(i)
	local r = rows[i]
	if r then return r end
	r = CreateFrame("Button", nil, card)
	r:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	r.Hover = r:CreateTexture(nil, "BACKGROUND")
	r.Hover:SetTexture(Theme.Media("white"))
	r.Hover:SetAllPoints(r)
	W.Painter(r.Hover, function(t) t:SetVertexColor(Theme.Wash("hover")) end)
	r.Hover:Hide()
	-- The arrow's current target: a 2px accent rule at the row's edge (the
	-- selection bar used across Polestar).
	r.Mark = r:CreateTexture(nil, "ARTWORK")
	r.Mark:SetTexture(Theme.Media("white"))
	r.Mark:SetWidth(2)
	r.Mark:SetPoint("TOPLEFT", r, "TOPLEFT", 0, -3)
	r.Mark:SetPoint("BOTTOMLEFT", r, "BOTTOMLEFT", 0, 3)
	W.Color(r.Mark, "accent")
	r.Mark:Hide()
	r.Icon = r:CreateTexture(nil, "ARTWORK")
	r.Icon:SetSize(ICON, ICON)
	r.Icon:SetPoint("CENTER", r, "TOPLEFT", PAD + ICON / 2, -12 - ROW_PAD)
	r.Text = T(r, "goal", "text")
	r.Text:SetWordWrap(true)
	r.Text:SetJustifyV("TOP")
	r.Text:SetPoint("TOPLEFT", r, "TOPLEFT", TEXT_X, -4 - ROW_PAD)
	r.Sub = T(r, "small", "textMuted")
	r.Sub:SetWordWrap(true)
	r.Sub:SetJustifyV("TOP")
	r.Check = W.Checkbox(r, function(c)
		-- The click already flipped the box; the Engine's view is the truth,
		-- so put it back and let STEP_UPDATED repaint it.
		c:SetChecked(c.psChecked)
		toggleGoal(r)
	end)
	r.Check:SetScript("OnEnter", function(c)
		local goal = r.psGoal
		local tip = not goal and "" or (goal.ticked and L["Untick"]) or (goal.status == "done" and L["Done"]) or L["Tick it done"]
		W.Tooltip(c, "ANCHOR_TOP", tip, goal and goal.status == "done" and not goal.ticked and { L["The game counts this one itself."] } or nil)
		GF.HoverIn()
	end)
	r.Check:SetScript("OnLeave", function(c) W.HideTooltip(c) end)
	-- An optional goal's one-click skip ("Skip"), and its undo ("Undo").
	r.Skip = CreateFrame("Button", nil, r)
	r.Skip:SetHeight(18)
	W.Hover(r.Skip, 0.7)
	r.Skip.Label = T(r.Skip, "small", "textDim")
	r.Skip.Label:SetPoint("CENTER", r.Skip, "CENTER", 0, 0)
	r.Skip:SetScript("OnClick", function() skipGoal(r) end)
	r.Skip:SetScript("OnEnter", function(b)
		W.Color(b.Label, "text")
		local goal = r.psGoal
		local back = goal and (goal.dismissed or goal.unavailable == "skipped")
		W.Tooltip(b, "ANCHOR_TOP", back and L["Bring it back"] or L["Skip this optional goal"],
			{ back and L["It leads the arrow again."] or L["The arrow moves on; Undo brings it back."] })
		GF.HoverIn()
	end)
	r.Skip:SetScript("OnLeave", function(b)
		W.Color(b.Label, "textDim")
		W.HideTooltip(b)
	end)
	r.Skip:Hide()
	placeCheck(r)
	-- "Other": the next-nearest trainer, vendor, inn or farm spot; for a goal
	-- with spawn areas, the next spot. The arrow follows the goal there: the
	-- Engine aims at it, and a point picked by hand gives way.
	r.Alt = W.IconButton(r, "reload", 20, nil, function()
		local E, goal = Engine(), r.psGoal
		if not (E and goal and view) then return end
		if type(goal.alternatives) == "number" and goal.alternatives > 0 then
			if E.CycleCandidate then E.CycleCandidate(view.index, goal.index) end
		elseif E.CycleSpot then
			E.CycleSpot(view.index, goal.index)
		end
		local nav = ns.Nav
		if nav and nav.ReleaseTarget and E.GetStepIndex and E.GetStepIndex() == view.index then
			nav.ReleaseTarget()
			GF.UpdateTargets()
		end
	end, 11)
	r.Alt.psOnEnter = function(b)
		local goal = r.psGoal
		if goal and not (type(goal.alternatives) == "number" and goal.alternatives > 0) and type(goal.spots) == "number" then
			W.Tooltip(b, "ANCHOR_TOP", L["Next spot"], { string.format(L["%d spots in this area"], goal.spots) })
		else
			local n = goal and goal.alternatives or 0
			W.Tooltip(b, "ANCHOR_TOP", L["Choose another"], { n == 1 and L["1 other nearby"] or string.format(L["%d others nearby"], n) })
		end
		GF.HoverIn()
	end
	r.Alt:Hide()
	r:SetScript("OnClick", rowClick)
	r:SetScript("OnEnter", rowEnter)
	r:SetScript("OnLeave", rowLeave)
	rows[i] = r
	return r
end

-- The slim progress bar under a goal (skill ranks, reputation, achievement
-- criteria): a label, a 3px track and its fill; kept with the row.
BAR_ROW, BAR_THICK = 13, 3

function rowBar(r)
	local b = r.psBar
	if b then return b end
	b = CreateFrame("Frame", nil, r)
	b:SetHeight(BAR_ROW)
	b.Label = T(b, "small", "textDim")
	b.Label:SetPoint("LEFT", b, "LEFT", 0, 0)
	b.Track = b:CreateTexture(nil, "ARTWORK")
	b.Track:SetTexture(Theme.Media("white"))
	b.Track:SetHeight(BAR_THICK)
	b.Track:SetPoint("RIGHT", b, "RIGHT", 0, 0)
	W.Painter(b.Track, function(t) t:SetVertexColor(Theme.Wash("track")) end)
	b.Fill = b:CreateTexture(nil, "OVERLAY")
	b.Fill:SetTexture(Theme.Media("white"))
	b.Fill:SetHeight(BAR_THICK)
	b.Fill:SetPoint("LEFT", b.Track, "LEFT", 0, 0)
	b.Fill:SetWidth(0.01)
	r.psBar = b
	return b
end

-- Paint a row from its goal. pop = the goal just turned done: the check
-- lands with a short back-out pop (scale only; reduced motion skips it).
-- current = the first open goal of the focus: its glyph alone takes the
-- accent; the others sit in textDim.
-- `noParty`: a row above already says the group line (UI.GoalSubline);
-- `noMissing`: one already names who in the party lacks the goal's quest.
-- `noEscort`: one already says the escort line.
-- `who`: the person a goal of another group is done with (rowWho), said
-- first on its line; `aside`: a goal outside the focus, open goals step back.
-- `questHex`: the quest name's colour (the class-quest card's class colour).
function paintRow(r, goal, pop, sameStep, current, noParty, noMissing, noEscort, who, aside, questHex)
	local sameGoal = sameStep and r.psGoal and r.psGoal.index == goal.index and r.psGoal.t == goal.t
	r.psGoal = goal
	local status = goal.status
	local done = status == "done"
	local skipped = status == "skipped"
	r.Icon:SetTexture(done and Theme.Media("check") or (goal.dismissed and Theme.Media("skip")) or Theme.VerbIcon(goal.t))
	if skipped then
		W.Color(r.Icon, "textMuted", 0.8)
	else
		local gold = Theme.GameSkin() and (goal.t == "accept" or goal.t == "turnin")
		W.Color(r.Icon, done and "success" or ((current or gold) and "accent" or "textDim"))
	end
	-- The game's looks light the goal to do now with their own art.
	Theme.KitRowLit(r, current and not done and not skipped and not transparent(), nil, Theme.Metric("guideLitInset", 4))
	r.Text:SetText(UI.GoalLine(goal, questHex))
	-- White while it is to be done; done and skipped goals step back. The
	-- turn-in of a quest the player pinned (#644) whose objectives are still
	-- open: the warning colour, and its line says so.
	local warn = goal.pinOpen and not done and not skipped
	W.Color(r.Text, (done or skipped) and "textMuted" or (warn and "warning" or (aside and "textDim" or "text")))
	local sub = UI.GoalSubline(goal, person.Where:IsShown() and person.psPlace and person.psPlace.map or nil, noParty, noMissing, noEscort)
	if warn then sub = sub and (L["Pinned: its objectives are still open."] .. "\n" .. sub) or L["Pinned: its objectives are still open."] end
	-- An unavailable quest's reason names its giver already.
	if who and not goal.unavailable then sub = sub and (who .. "  \194\183  " .. sub) or who end
	r.Sub:SetText(sub or "")
	r.Sub:SetShown(sub ~= nil)
	-- An unavailable quest's reason, or an accept's notice, is the point of the line: keep it readable.
	W.Color(r.Sub, (goal.unavailable or goal.noticeText) and "textDim" or "textMuted")
	if UI.GearPick then UI.GearPick.Paint(r, goal) end
	local alts = type(goal.alternatives) == "number" and goal.alternatives > 0 and Engine() and Engine().CycleCandidate
	local spots = type(goal.spots) == "number" and goal.spots > 1 and Engine() and Engine().CycleSpot
	r.Alt:SetShown((alts or spots) and not done and not skipped and true or false)
	local frac, label = UI.GoalBar(goal)
	if frac and not skipped then
		local b = rowBar(r)
		b.Label:SetText(label or "")
		b.Label:SetShown(label ~= nil)
		W.Color(b.Fill, done and "success" or "accent", status == "pending" and 0.6 or 1)
		-- Fill from where it was when the same goal moved on (a rank, a
		-- reputation tick); jump when the row now shows a different goal.
		b.psFrom = (sameGoal and b:IsShown() and b.psFrac ~= frac) and b.psFrac or nil
		b.psFrac = frac
		b:Show()
	elseif r.psBar then
		r.psBar:Hide()
	end
	-- Every goal ticks (a note never); a goal the game itself counts done
	-- shows its check but has nothing to undo.
	r.Check:SetShown(goal.tickable and not skipped and true or false)
	r.Check.psChecked = done
	r.Check:SetChecked(done)
	local locked = done and not goal.ticked
	if locked then r.Check:Disable() else r.Check:Enable() end
	r.Check:SetAlpha(locked and 0.45 or 1)
	-- An open optional goal skips in one click; a skipped one comes back.
	local questSkipped = goal.unavailable == "skipped" and goal.t == "accept"
	local canSkip = questSkipped or goal.optional and (goal.dismissed or (not done and not skipped)) and Engine() and Engine().SkipGoal
	r.Skip:SetShown(canSkip and true or false)
	if canSkip then
		r.Skip.Label:SetText((goal.dismissed or questSkipped) and L["Undo"] or L["Skip"])
		r.Skip:SetWidth(floor(r.Skip.Label:GetStringWidth() + 12 + 0.5))
	end
	if pop then
		Anim.To(r.Icon, "size", ICON * 0.55, ICON, Anim.BASE, "back")
		Anim.To(r.Icon, "alpha", 0.2, 1, Anim.FAST, "out")
	elseif not Anim.IsRunning(r.Icon, "size") then
		r.Icon:SetSize(ICON, ICON)
	end
	r.psStatus = status
end

function layoutBar(b, tw)
	local lw = 0
	if b.Label:IsShown() then lw = floor(b.Label:GetStringWidth() + 8 + 0.5) end
	local trackW = max(24, tw - lw)
	b:SetWidth(tw)
	b.Track:SetWidth(trackW)
	local w = max(0.01, trackW * b.psFrac)
	if b.psFrom then
		Anim.To(b.Fill, "width", max(0.01, trackW * b.psFrom), w, Anim.SLOW, "out")
		b.psFrom = nil
	elseif not Anim.IsRunning(b.Fill, "width") then
		b.Fill:SetWidth(w)
	end
end

-- Measure a row at a width; returns its height.
function measureRow(r, width)
	-- Right edge, outside in: the tick, an optional goal's Skip, "Other".
	local right = PAD
	if r.Check:IsShown() then right = right + CHECK + 4 + CHECK_IN end
	if r.Skip:IsShown() then
		r.Skip:ClearAllPoints()
		r.Skip:SetPoint("TOPRIGHT", r, "TOPRIGHT", -(right - 4), -3 - ROW_PAD)
		right = right + r.Skip:GetWidth() + 2
	end
	if r.Alt:IsShown() then
		r.Alt:ClearAllPoints()
		r.Alt:SetPoint("TOPRIGHT", r, "TOPRIGHT", -(right - 4), -2 - ROW_PAD)
		right = right + 20
	end
	local tw = max(40, width - TEXT_X - right)
	r.Text:SetWidth(tw)
	local h = 4 + r.Text:GetStringHeight()
	local above = r.Text
	local b = r.psBar
	if b and b:IsShown() then
		b:ClearAllPoints()
		b:SetPoint("TOPLEFT", r.Text, "BOTTOMLEFT", 0, -5)
		layoutBar(b, tw)
		h = h + 5 + BAR_ROW
		above = b
	end
	if UI.GearPick then h, above = UI.GearPick.Measure(r, tw, h, above) end
	if r.Sub:IsShown() then
		r.Sub:SetWidth(tw)
		r.Sub:ClearAllPoints()
		r.Sub:SetPoint("TOPLEFT", above, "BOTTOMLEFT", 0, -3)
		h = h + 3 + r.Sub:GetStringHeight()
	end
	return max(ROW_MIN, floor(h + 6 + ROW_PAD * 2 + 0.5))
end

---------------------------------------------------------------------------
-- The focus header: who to talk to now (or the field step's title)
---------------------------------------------------------------------------

-- A group's place: its own position, else its first located goal.
function groupPlace(group)
	if group.map and group.x then return group end
	for _, gi in ipairs(group.goals or {}) do
		local g = view.goals[gi]
		if g and g.map and g.x and g.status ~= "na" then return g end
	end
	return nil
end

-- A person speaks, an object is used, a field group is a place.
GROUP_VERB = { npc = "talk", object = "interact", here = "goto" }

-- The arrow on the header: on its person, or on the "Go to" it stands for
-- (a field step's own place, `person.psHeaderGoal`, shown as the header).
function personMarked(t)
	if person.psPerson and isTarget(person.psPlace, t) then return true end
	local hg = person.psHeaderGoal
	return hg ~= nil and hg.status ~= "done" and hg.status ~= "skipped" and isTarget(hg, t)
end

function paintPerson(group)
	local kind = group.kind or "here"
	local verb = GROUP_VERB[kind] or "goto"
	person.Icon:SetTexture(Theme.VerbIcon(verb))
	W.Color(person.Icon, "textDim")
	person.Name:SetText(UI.GroupName(view, group))
	W.Color(person.Name, kind == "here" and "text" or (kind == "object" and "object" or "npc"))
	local place = groupPlace(group)
	local where = place and UI.MapName(place.map) or nil
	person.Where:SetText(where or "")
	person.Where:SetShown(where ~= nil)
	person.psPlace = place
	person.psLabel = UI.GroupName(view, group)
	-- The arrow on this person marks the header; a field group's goals carry
	-- their own marks, except the "Go to" the header stands for.
	person.psPerson = kind ~= "here"
	person.Mark:SetShown(personMarked(targetOf()))
end

function personEnter(self)
	local lines = {}
	if self.psPlace then
		lines[#lines + 1] = { left = L["Location"], right = string.format("%s  %.1f, %.1f", UI.MapName(self.psPlace.map) or "", self.psPlace.x, self.psPlace.y) }
		local r, g, b = Theme.Accent()
		lines[#lines + 1] = { L["Click to point the arrow here"], r, g, b }
	end
	if view and view.title and view.title ~= self.psLabel then lines[#lines + 1] = view.title end
	W.Tooltip(self, tooltipAnchor(), self.psLabel or "", lines)
	GF.HoverIn()
end

---------------------------------------------------------------------------
-- Upcoming steps (off by default; collapsed when on)
---------------------------------------------------------------------------

function upRow(i)
	local r = upRows[i]
	if r then return r end
	r = CreateFrame("Button", nil, upnext)
	r:SetHeight(UP_ROW)
	W.Hover(r)
	r.Num = T(r, "number", "textMuted")
	r.Num:SetJustifyH("RIGHT")
	r.Num:SetWidth(22)
	r.Num:SetPoint("LEFT", r, "LEFT", PAD - 10, 0)
	r.Icon = r:CreateTexture(nil, "ARTWORK")
	r.Icon:SetSize(13, 13)
	r.Icon:SetPoint("LEFT", r, "LEFT", TEXT_X - 2, 0)
	W.Color(r.Icon, "textMuted")
	r.Text = T(r, "label", "textDim")
	r.Text:SetPoint("LEFT", r.Icon, "RIGHT", 9, 0)
	r:SetScript("OnClick", function(self)
		local E = Engine()
		if E and E.Goto and self.psIndex then E.Goto(self.psIndex) end
	end)
	r:SetScript("OnEnter", function(self)
		W.Tooltip(self, tooltipAnchor(), self.psSummary or "", { { L["Click to jump to this step"], Theme.Accent() } })
		GF.HoverIn()
	end)
	r:SetScript("OnLeave", function(self) W.HideTooltip(self) end)
	upRows[i] = r
	return r
end

function upcomingOpen() return ns.Get("ui.upcomingOpen") and true or false end

---------------------------------------------------------------------------
-- Along the way: open goals of `along` steps the route has passed
-- (Engine.GetAlong), under the card until they are done
---------------------------------------------------------------------------

ALONG_MAX = 6

function alongRow(i)
	local r = alongRows[i]
	if r then return r end
	r = CreateFrame("Button", nil, along)
	r:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	r:SetHeight(UP_ROW)
	W.Hover(r)
	r.Icon = r:CreateTexture(nil, "ARTWORK")
	r.Icon:SetSize(13, 13)
	r.Icon:SetPoint("LEFT", r, "LEFT", TEXT_X - 2, 0)
	W.Color(r.Icon, "textMuted")
	r.Text = T(r, "label", "textDim")
	r.Text:SetPoint("LEFT", r.Icon, "RIGHT", 9, 0)
	r:SetScript("OnClick", function(self, button)
		local E = Engine()
		-- A pinned quest's row unpins it on a right-click (#644).
		if button == "RightButton" then
			if self.psPin and E and E.PinQuest then E.PinQuest(self.psPin, false) end
			return
		end
		if E and E.AimAlong and self.psStep then E.AimAlong(self.psStep, self.psGoal) end
	end)
	r:SetScript("OnEnter", function(self)
		local lines = {}
		if self.psPlace then lines[#lines + 1] = { L["Click to point the arrow here"], Theme.Accent() } end
		if self.psPin then lines[#lines + 1] = { L["Pinned by you. Right-click to unpin."], Theme.Color("textDim") } end
		W.Tooltip(self, tooltipAnchor(), self.psTitle or "", lines)
		GF.HoverIn()
	end)
	r:SetScript("OnLeave", function(self) W.HideTooltip(self) end)
	alongRows[i] = r
	return r
end

---------------------------------------------------------------------------
-- Tab strip
---------------------------------------------------------------------------

function tabsOf(E)
	if not (E and E.GetTabs) then return nil, nil end
	local ok, tabs, active = pcall(E.GetTabs)
	if not ok or type(tabs) ~= "table" then return nil, nil end
	return tabs, active
end

function tabMenu(self)
	local E = Engine()
	local i = self.psIndex
	local tabs = tabsOf(E) or {}
	W.ShowMenu(self, {
		-- The picker loads into the active tab, so this tab becomes the active one first.
		{ text = L["Choose guide"], icon = "search", onClick = function()
			if E.SelectTab and not self.psActive then E.SelectTab(i) end
			UI.ShowPicker()
		end },
		{ text = L["Close tab"], icon = "close", onClick = function() E.CloseTab(i) end },
		{ text = L["Move left"], icon = "chevron-left", disabled = i <= 1, onClick = function() E.MoveTab(i, i - 1) end },
		{ text = L["Move right"], icon = "chevron-right", disabled = i >= #tabs, onClick = function() E.MoveTab(i, i + 1) end },
	}, { point = "TOPLEFT", relPoint = "BOTTOMLEFT", x = 0, y = -2 })
end

-- A tab's label: the title, then its level range in a dimmer string. The
-- range tells same-named guides apart, so it keeps its width and the title
-- truncates; `pad` is the room kept at the right (more while the close button
-- shows). Too narrow for even the range, the tab is its glyph alone.
TAB_TEXT_X = 27 -- the label's left edge: the glyph's inset, width and gap
TAB_RANGE_GAP = 4
function layoutTab(b, pad)
	local room = b:GetWidth() - TAB_TEXT_X - pad
	local rangeW = b.psRange and (floor(b.Range:GetStringWidth() + 1) + TAB_RANGE_GAP) or 0
	local fits = rangeW <= room
	local titleW = fits and min(b.psTitleW, room - rangeW) or 0
	b.Label:SetShown(titleW >= 1)
	if titleW >= 1 then b.Label:SetWidth(titleW) end
	b.Range:SetShown(b.psRange and fits or false)
	b.Range:ClearAllPoints()
	b.Range:SetPoint("LEFT", b.Icon, "RIGHT", 6 + (titleW >= 1 and titleW + TAB_RANGE_GAP or 0), 0)
end

-- With ui.growUp and ui.barsBottom the tab strip and navigator sit at the
-- bottom, by the edge the window is pinned to, with the progress foot above
-- the navigator. Otherwise the order runs strip, navigator, body, foot.
function barsBottom()
	return ns.Get("ui.growUp") and ns.Get("ui.barsBottom") and true or false
end

function tabButton(i)
	local b = tabButtons[i]
	if b then return b end
	b = CreateFrame("Button", nil, strip)
	b:SetHeight(TAB_H)
	b:RegisterForClicks("LeftButtonUp", "RightButtonUp", "MiddleButtonUp")
	b.Selected = b:CreateTexture(nil, "BACKGROUND")
	b.Selected:SetTexture(Theme.Media("white"))
	b.Selected:SetAllPoints(b)
	W.Painter(b.Selected, function(t) t:SetVertexColor(Theme.Wash("hover")) end)
	W.Hover(b, 0.7)
	b.Bar = b:CreateTexture(nil, "OVERLAY")
	b.Bar:SetTexture(Theme.Media("white"))
	b.Bar:SetHeight(2)
	local edge = barsBottom() and "TOP" or "BOTTOM"
	b.Bar:SetPoint(edge .. "LEFT", b, edge .. "LEFT", 0, 0)
	b.Bar:SetPoint(edge .. "RIGHT", b, edge .. "RIGHT", 0, 0)
	W.Color(b.Bar, "accent")
	b.Icon = b:CreateTexture(nil, "ARTWORK")
	b.Icon:SetSize(12, 12)
	b.Icon:SetPoint("LEFT", b, "LEFT", 9, 0)
	b.Label = T(b, "small", "textDim")
	b.Label:SetPoint("LEFT", b.Icon, "RIGHT", 6, 0)
	b.Range = T(b, "small", "textMuted")
	b.Close = W.IconButton(b, "close", 16, L["Close tab"], function(self)
		local E = Engine()
		if E and E.CloseTab then E.CloseTab(self:GetParent().psIndex) end
	end, 9)
	b.Close:SetPoint("RIGHT", b, "RIGHT", -3, 0)
	b.Close:SetAlpha(0)
	b.Close.psOnEnter = function(c) c:SetAlpha(1) end
	b.Close.psOnLeave = function(c) if not c:GetParent():IsMouseOver() then c:SetAlpha(0) end end
	b:SetScript("OnClick", function(self, button)
		local E = Engine()
		if not E then return end
		if button == "RightButton" then return tabMenu(self) end
		if button == "MiddleButton" and E.CloseTab then return E.CloseTab(self.psIndex) end
		if E.SelectTab and not self.psActive then E.SelectTab(self.psIndex) end
	end)
	b:SetScript("OnEnter", function(self)
		self.Close:SetAlpha(1)
		layoutTab(self, 20)
		local lines = {}
		if self.psMeta and self.psMeta ~= "" then lines[#lines + 1] = self.psMeta end
		if self.psProgress then lines[#lines + 1] = self.psProgress end
		lines[#lines + 1] = { L["Right-click for tab options"], Theme.Accent() }
		W.Tooltip(self, "ANCHOR_TOP", self.psTitle or "", lines)
		GF.HoverIn()
	end)
	b:SetScript("OnLeave", function(self)
		self.Close:SetAlpha(0)
		layoutTab(self, 8)
		W.HideTooltip(self)
	end)
	tabButtons[i] = b
	return b
end

CATEGORY_ICON = {
	Leveling = "icon-level", Class = "icon-train", Professions = "icon-craft", Reputation = "icon-rep", Legacy = "icon-achieve",
	Exploration = "icon-explore", Collectibles = "star", Miscellaneous = "icon-treasure", Dungeons = "icon-kill",
}
GF.CATEGORY_ICON = CATEGORY_ICON

function GF.RenderTabs()
	if not F then return end
	local tabs, active = tabsOf(Engine())
	local n = tabs and #tabs or 0
	strip.psCount = n
	local avail = F:GetWidth() - 2 - 30
	-- The active tab gets the room to read its title; the rest share the remainder.
	local share = n > 0 and floor(avail / n) or 0
	local activeW, otherW = share, share
	if n >= 2 and active then
		activeW = min(TAB_MAX_W, max(share, floor(avail * (n == 2 and 0.55 or 0.42))))
		otherW = floor((avail - activeW) / (n - 1))
	end
	activeW, otherW = min(TAB_MAX_W, activeW), min(TAB_MAX_W, otherW)
	local G = ns.Guides
	local x = 1
	for i = 1, n do
		local t = tabs[i]
		local b = tabButton(i)
		b.psIndex = i
		b.psActive = i == active
		b.psTitle = t.title or t.guideId
		local guide = G and G.Get and G.Get(t.guideId)
		b.psMeta = guide and UI.GuideMeta(guide) or nil
		local total = t.total or t.stepCount
		b.psProgress = (t.done and total and total > 0) and string.format(L["%d of %d steps done"], t.done, total) or nil
		b.Label:SetText(b.psTitle)
		b.Label:SetWidth(0) -- unbound, to measure the whole title
		b.psTitleW = floor(b.Label:GetStringWidth() + 1)
		local lv = guide and UI.LevelRange(guide.minLevel, guide.maxLevel)
		b.psRange = lv and ("(" .. lv .. ")") or nil
		b.Range:SetText(b.psRange or "")
		b.Icon:SetTexture(Theme.Media(CATEGORY_ICON[t.category] or "icon-level"))
		W.Color(b.Label, b.psActive and "text" or "textMuted")
		W.Color(b.Range, b.psActive and "textDim" or "textMuted")
		W.Color(b.Icon, b.psActive and "accent" or "textMuted")
		b.Selected:SetShown(b.psActive)
		b.Bar:SetShown(b.psActive)
		GF.PaintTab(b)
		local w = b.psActive and activeW or otherW
		b:SetWidth(w)
		layoutTab(b, b:IsMouseOver() and 20 or 8)
		b:ClearAllPoints()
		b:SetPoint("BOTTOMLEFT", strip, "BOTTOMLEFT", x, 0)
		x = x + w
		b:Show()
	end
	for i = n + 1, #tabButtons do tabButtons[i]:Hide() end
	strip.Add:ClearAllPoints()
	strip.Add:SetPoint("LEFT", strip, "BOTTOMLEFT", x + 2, TAB_H / 2)
	local full = n >= 6
	W.SetIconState(strip.Add, false, not full)
	strip.Add.psTip = full and L["Six tabs is the limit"] or L["Open a guide in a new tab"]
end

