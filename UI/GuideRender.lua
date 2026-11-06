local ADDON, ns = ...
setfenv(1, ns._uiGuideFrameEnv)
---------------------------------------------------------------------------
-- Render
---------------------------------------------------------------------------

-- A finished dungeon pick-up guide whose dungeon has quests in the log ->
-- the dungeon's key | nil.
function pickupKey(guide)
	local lk, Dg = guide and guide.lookup, ns.Dungeons
	if not (lk and lk.kind == "pickup" and Dg and Dg.HandinPlan and UI.DungeonsSection) then return nil end
	local plan = Dg.HandinPlan(lk.id)
	if not plan or #plan.hand + #plan.unfinished + #plan.inside + #plan.unplaced == 0 then return nil end
	return lk.id
end

-- The tab a class guide was opened from by the class quest heads-up
-- (UI/ClassToast.lua, CharState().classReturn), while that guide is still
-- open in another tab. -> { id, title, tab } | nil
function GF.ClassReturn(id)
	local E = Engine()
	local st = ns.CharState()
	local from = st.classReturn and st.classReturn[id]
	if not (from and E and E.GetTabs) then return nil end
	local list = E.GetTabs()
	for i, t in ipairs(list or {}) do
		if t.guideId == from then return { id = from, title = t.title or from, tab = i } end
	end
	return nil
end

-- Close the finished class guide's tab and show the guide it came from.
function GF.CloseAndReturn(id)
	local E = Engine()
	local back = GF.ClassReturn(id)
	if not (back and E and E.GetTabs and E.CloseTab) then return end
	local list, active = E.GetTabs()
	local mine = list and list[active] and list[active].guideId == id and active
	ns.CharState().classReturn[id] = nil
	if mine then E.CloseTab(mine) end
	if E.SetGuide then E.SetGuide(back.id) end
end

function setEmpty(kind)
	state = kind
	local E, G = Engine(), ns.Guides
	empty.Primary:Hide()
	empty.Secondary:Hide()
	local glyph, color = "emblem", "accent"
	if kind == "noguides" and UI.Packs and UI.Packs.OursSwitchedOff() then
		-- Our own guides switched off on the Community guides page: one
		-- click turns them back on.
		empty.Title:SetText(L["No guides shown"])
		empty.Text:SetText(L["TuWoW_Leveling's own guides are switched off on the Community guides page (/polestar packs)."])
		W.SetButtonText(empty.Primary, L["Show Polestar's guides"])
		empty.Primary.psAction = function()
			if G and G.SetPackShown then G.SetPackShown("guides", true) end
		end
		empty.Primary:Show()
		W.SetButtonText(empty.Secondary, L["Community guides"])
		empty.Secondary.psAction = function() UI.ShowOptions("guidepacks") end
		empty.Secondary:Show()
	elseif kind == "noguides" and UI.Packs and UI.Packs.AnySwitchedOff() then
		-- Installed but switched off on the Community guides page.
		empty.Title:SetText(L["No guides shown"])
		empty.Text:SetText(L["The community addons are switched off. Turn one on under Options, Community guides (/polestar packs)."])
		W.SetButtonText(empty.Primary, L["Community guides"])
		empty.Primary.psAction = function() UI.ShowOptions("guidepacks") end
		empty.Primary:Show()
	elseif kind == "noguides" then
		empty.Title:SetText(L["No guides installed"])
		empty.Text:SetText(L["Enable Polestar Guides or a community addon in the AddOns list on the character screen, then reload."])
	elseif kind == "noguide" then
		local id = E and E.StartingGuide and E.StartingGuide() or (G and G.Suggest and G.Suggest())
		local suggested = id and G.Get(id)
		empty.Title:SetText(L["No guide open"])
		if suggested then
			empty.Text:SetText(L["Suggested for you"] .. ": |c" .. Theme.Hex("text") .. suggested.title .. "|r")
			W.SetButtonText(empty.Primary, L["Start guide"])
			empty.Primary.psAction = function()
				if E and E.StartGuide then E.StartGuide() elseif E and E.OpenTab then E.OpenTab(id) elseif E and E.SetGuide then E.SetGuide(id) end
			end
			empty.Primary:Show()
			W.SetButtonText(empty.Secondary, L["Browse guides"])
			empty.Secondary.psAction = function() UI.ShowPicker() end
			empty.Secondary:Show()
		else
			empty.Text:SetText(L["Pick a guide to start."])
			W.SetButtonText(empty.Primary, L["Choose a guide"])
			empty.Primary.psAction = function() UI.ShowPicker() end
			empty.Primary:Show()
		end
	elseif kind == "notyet" then
		-- A Class guide the character cannot start yet (Engine.StartGate):
		-- when it opens, who starts it; the guide picks up by itself.
		glyph = "icon-level"
		local guide = E and E.GetGuide and E.GetGuide()
		local gate = guide and E.StartGate and E.StartGate(guide.id) or {}
		local lines = {}
		if gate.giver then
			local zone = gate.map and UI.MapName(gate.map) or nil
			lines[1] = string.format(L["%s starts it."], zone and (gate.giver .. ", " .. zone) or gate.giver)
		end
		if gate.level then
			empty.Title:SetText(string.format(L["Available from level %d"], gate.level))
			lines[#lines + 1] = string.format(L["Come back at level %d: the guide picks up by itself then."], gate.level)
		else
			empty.Title:SetText(L["Not available yet"])
			lines[#lines + 1] = string.format(L["Finish %s first: the guide picks up by itself then."], gate.preTitle or "")
		end
		empty.Text:SetText(table.concat(lines, "\n"))
		W.SetButtonText(empty.Primary, L["Choose a guide"])
		empty.Primary.psAction = function() UI.ShowPicker() end
		empty.Primary:Show()
	elseif kind == "away" then
		-- Another race's starting zone the player has not reached
		-- (Engine.AwayStart): Polestar does not lead them there; the guide
		-- picks up when they arrive. Its class steps are the guide race's
		-- classes', so the trainer may be elsewhere.
		glyph = "icon-goto"
		local guide = E and E.GetGuide and E.GetGuide()
		local away = guide and E.AwayStart and E.AwayStart(guide.id) or {}
		local zone = (away.zone and UI.MapName(away.zone)) or away.zoneName or ""
		empty.Title:SetText(L["Another race's starting zone"])
		empty.Text:SetText(string.format(L["This is the %s starting zone. Polestar won't guide you there: make your own way to %s, and the guide picks up when you arrive."],
			UI.RaceList(away.races) or "", zone) .. "\n" .. L["Your class trainer may be elsewhere (check your capital)."])
		W.SetButtonText(empty.Primary, L["Choose a guide"])
		empty.Primary.psAction = function() UI.ShowPicker() end
		empty.Primary:Show()
	elseif kind == "complete" then
		glyph, color = "check", "success"
		local guide = E and E.GetGuide and E.GetGuide()
		-- Where the hand-off goes now: the remembered or only option offered (an
		-- option with `when` only while it holds), nil with none.
		local nextId = guide and (E.NextGuide and E.NextGuide(guide.id) or not E.NextGuide and guide.next)
		local nextGuide = nextId and G and G.Get and G.Get(nextId)
		local choiceFrom = guide and E.PendingRouteChoice and E.PendingRouteChoice()
		local afterRun = not choiceFrom and pickupKey(guide)
		-- A class guide opened from the class quest heads-up (UI/ClassToast.lua)
		-- in a tab of its own: close it and go back to the guide it came from.
		local back = guide and not choiceFrom and not afterRun and GF.ClassReturn(guide.id)
		empty.Title:SetText(L["Guide complete"])
		if back then
			empty.Text:SetText(string.format(L["Your class quest is done. Back to %s."], "|c" .. Theme.Hex("text") .. back.title .. "|r"))
			W.SetButtonText(empty.Primary, L["Close and return"])
			empty.Primary.psAction = function() GF.CloseAndReturn(guide.id) end
			empty.Primary:Show()
			W.SetButtonText(empty.Secondary, L["Browse guides"])
			empty.Secondary.psAction = function() UI.ShowPicker() end
			empty.Secondary:Show()
		elseif choiceFrom then
			-- Several zones to continue in: the player picks (UI.RouteChoice).
			empty.Text:SetText(L["Choose where to level next."])
			W.SetButtonText(empty.Primary, L["Choose your path"])
			empty.Primary.psAction = function() UI.ShowRouteChoice(choiceFrom) end
			empty.Primary:Show()
			W.SetButtonText(empty.Secondary, L["Browse guides"])
			empty.Secondary.psAction = function() UI.ShowPicker() end
			empty.Secondary:Show()
		elseif afterRun then
			-- A dungeon's pick-up guide ends at the entrance; after the run
			-- its quests are handed in (Dungeons/Handin.lua).
			empty.Text:SetText(L["After the run: a guide to where this dungeon's quests are turned in, and the follow-ups there."])
			W.SetButtonText(empty.Primary, L["Hand in the quests"])
			empty.Primary.psAction = function() UI.DungeonsSection.HandIn(afterRun) end
			empty.Primary:Show()
			W.SetButtonText(empty.Secondary, L["Choose a guide"])
			empty.Secondary.psAction = function() UI.ShowPicker() end
			empty.Secondary:Show()
		elseif nextGuide then
			empty.Text:SetText(L["Up next"] .. ": |c" .. Theme.Hex("text") .. nextGuide.title .. "|r")
			W.SetButtonText(empty.Primary, L["Continue"])
			empty.Primary.psAction = function() E.SetGuide(nextGuide.id) end
			empty.Primary:Show()
			W.SetButtonText(empty.Secondary, L["Browse guides"])
			empty.Secondary.psAction = function() UI.ShowPicker() end
			empty.Secondary:Show()
		else
			empty.Text:SetText(L["Nice work. Pick your next guide to keep going."])
			W.SetButtonText(empty.Primary, L["Choose a guide"])
			empty.Primary.psAction = function() UI.ShowPicker() end
			empty.Primary:Show()
		end
	end
	empty.Glyph:SetTexture(Theme.Media(glyph))
	W.Color(empty.Glyph, color)
	empty.Glyph:SetSize(36, 36)
	W.Color(empty.Glyph.Glow, color, 0.16)
end

-- The navigator's Skip, beside the menu: skips the step on screen for good
-- (the banner offers the undo). Shown with a guide; off on a finished guide
-- and on a step already skipped.
function GF.PaintSkip(shown, enabled)
	local b = nav.Skip
	b:SetShown(shown and true or false)
	if enabled then b:Enable() else b:Disable() end
	local a = enabled and 1 or 0.35
	W.Color(b.Icon, "textDim", a)
	W.Color(b.Label, "textDim", a)
end

-- Skip sits left of the Nearby services button, or of the bug when that
-- button is off (nav.nearbyButton).
function anchorSkip()
	nav.Skip:ClearAllPoints()
	nav.Skip:SetPoint("RIGHT", nav.Nearby:IsShown() and nav.Nearby or nav.Report, "LEFT", -2, 0)
end

function navigatorFor(guide, index)
	local E = Engine()
	local count = guide and E.GetStepCount and E.GetStepCount() or 0
	if guide then
		-- While the catch-up shows the guides passed whole, the count and title
		-- are its (GF.PlayCatchUp).
		if GF.catchingUp ~= "guides" then
			nav.Steps.Count:SetText(string.format("%d / %d", index or count, count))
			nav.Title:SetText(guide.title or guide.id)
		end
		nav.psMeta = UI.GuideMeta(guide)
	else
		nav.Steps.Count:SetText("")
		nav.Title:SetText(L["TuWoW_Leveling"])
		nav.psMeta = nil
	end
	W.SetIconState(nav.Prev, false, guide ~= nil)
	W.SetIconState(nav.Next, false, guide ~= nil and index ~= nil)
	GF.PaintSkip(guide ~= nil, guide ~= nil and index ~= nil)
	nav.Report:SetShown(guide ~= nil)
	nav.Nearby:ClearAllPoints()
	nav.Nearby:SetPoint("RIGHT", guide and nav.Report or nav.Menu, "LEFT", 0, 0)
	anchorSkip()
	-- No guide: no steps to walk; the navigator names the addon instead.
	nav.Steps:SetShown(guide ~= nil)
	nav.Title:ClearAllPoints()
	if guide then
		nav.Title:SetPoint("LEFT", nav.Steps, "RIGHT", 8, 0)
	else
		nav.Title:SetPoint("LEFT", nav, "LEFT", PAD, 0)
	end
	if GF.catchingUp == "guides" then return end
	local cw = max(floor(nav.Steps.Count:GetStringWidth() + 0.5), 40)
	nav.Steps.Count:SetWidth(cw)
	nav.Steps:SetWidth(24 + cw + 24)
end

function fillUpcoming(E, index)
	for i = 1, #upRows do upRows[i]:Hide() end
	local want = compact() and 0 or (ns.Get("ui.upcoming") or 0)
	local n, count = 0, E.GetStepCount and E.GetStepCount() or 0
	local i = index + 1
	while n < want and i <= count do
		local v = E.GetStepView(i)
		if v and v.status ~= "na" and not v.along then
			n = n + 1
			local r = upRow(n)
			r.psIndex = i
			r.psSummary = UI.StepSummary(v)
			-- It turns in a pinned quest still open (#644): warning colour, and says so.
			local warn = false
			for _, gv in ipairs(v.goals) do
				if gv.pinOpen then warn = true end
			end
			if warn then r.psSummary = r.psSummary .. " (" .. L["pinned, still open"] .. ")" end
			r.Num:SetText(i)
			r.Icon:SetTexture(Theme.VerbIcon(UI.FirstVerb(v)))
			r.Text:SetText(r.psSummary)
			W.Color(r.Text, warn and "warning" or "textDim")
			r:SetShown(upcomingOpen())
		end
		i = i + 1
	end
	upnext.psCount = n
	local open = upcomingOpen()
	upnext.Toggle.Label:SetText(n == 1 and L["Up next \194\183 1 step"] or string.format(L["Up next \194\183 %d steps"], n))
	upnext.Toggle.Icon:SetTexture(Theme.Media(open and "chevron-up" or "chevron-down"))
	upnext:SetShown(n > 0)
end

-- What comes after the focus: the next open group in this step, else the
-- first group of the next applicable step. -> name, kind | nil
function nextOf(E, index, groups, focus)
	for gi = (focus or 0) + 1, #groups do
		local g = groups[gi]
		if not g.done then return UI.GroupName(view, g), g.kind end
	end
	local count = E.GetStepCount and E.GetStepCount() or 0
	for s = index + 1, count do
		local v = E.GetStepView(s)
		-- An along step never holds the route: "Then:" names the next step that does.
		if v and v.status ~= "na" and not v.along then
			local gs, f = UI.StepGroups(v)
			local g = gs[f or 1] or gs[1]
			if g then return UI.GroupName(v, g), g.kind end
			return nil
		end
	end
	return nil
end

-- The open goals of along steps behind the live step (Engine.GetAlong), up to
-- ALONG_MAX rows, hidden in the compact window.
function fillAlong(E)
	for i = 1, #alongRows do alongRows[i]:Hide() end
	if compact() or not E.GetAlong then
		along:Hide()
		return
	end
	local n = 0
	for _, s in ipairs(E.GetAlong()) do
		for _, gv in ipairs(s.goals) do
			if n < ALONG_MAX then
				n = n + 1
				local r = alongRow(n)
				r.psStep, r.psGoal, r.psTitle, r.psPin = gv.step or s.index, gv.index, s.title or UI.GoalLine(gv), s.pin
				r.psPlace = gv.map and gv.x and gv.y and true or nil
				r.Icon:SetTexture(Theme.VerbIcon(gv.t))
				r.Text:SetText(UI.GoalLine(gv))
				r:Show()
			end
		end
	end
	along.Label:SetText(L["Along the way"])
	along:SetShown(n > 0)
end

-- "Then: Gazrog" and "Person 2 of 8".
function fillAfter(E, index, groups, focus)
	if compact() then
		after:Hide()
		return
	end
	local persons, at = 0, nil
	for gi, g in ipairs(groups) do
		if g.kind ~= "here" then
			persons = persons + 1
			if gi == focus then at = persons end
		end
	end
	local name, kind = nextOf(E, index, groups, focus)
	if name and name ~= "" then
		local hex = Theme.Hex(kind == "npc" and "npc" or (kind == "object" and "object" or "textDim"))
		after.Text:SetText(L["Then:"] .. " |c" .. hex .. name .. "|r")
	else
		after.Text:SetText("")
	end
	if at and persons > 1 then
		after.Count:SetText(string.format(L["Person %d of %d"], at, persons))
	else
		after.Count:SetText("")
	end
	after:SetShown((name and name ~= "") or (at and persons > 1) and true or false)
end

-- The group the card shows: the focus. A done step (no focus: one viewed with
-- Prev or Goto) shows all its goals under the step title, so it reads as done
-- and no optional leftover is hidden; the Engine points the arrow at nothing
-- there.
function shownGroup(v, groups, focus)
	if focus and groups[focus] then return groups[focus] end
	local all = {}
	for i in ipairs(v.goals) do all[#all + 1] = i end
	return { kind = "here", goals = all, done = true }
end

-- The goals a group shows as rows, as painted (UI.ReadingGoal): never one
-- that does not apply or is folded into another (a quest started by an item
-- is one row); a "Go to" naming the step's own place (`header`) only when
-- nothing else shows, since the header already says it.
-- -> rows (goal views), the hidden header goal
function shownGoals(v, group)
	local list, others = {}, 0
	for _, gi in ipairs(group.goals or {}) do
		local goal = v.goals[gi]
		if goal and goal.status ~= "na" and not goal.folded then
			list[#list + 1] = UI.ReadingGoal(v, goal)
			if not goal.header then others = others + 1 end
		end
	end
	if others == 0 then return list, nil end
	local out, header = {}, nil
	for _, goal in ipairs(list) do
		if goal.header then header = header or goal else out[#out + 1] = goal end
	end
	return out, header
end

-- The rows the card lists: every goal of the step in written order, the
-- focus person's and everyone else's, done, skipped (with its reason) or
-- open, never one that does not apply or is folded into another. A hub step
-- reads person by person in the header, the arrow and "Then:", but a quest
-- taken, handed in or not offered stays on the card when the focus moves to
-- the next person (#741, #739: such a row vanished with its person, which read
-- as the guide ticking or losing it). The focus's own "Go to" header stays
-- folded into the header (shownGoals).
-- -> rows (goal views), the hidden header goal
function cardGoals(v, groups, focus)
	local _, header = shownGoals(v, shownGroup(v, groups, focus))
	-- A class quest's accept reads inside the class card (UI/ClassCard.lua).
	local CC, E = UI.ClassCard, Engine()
	local fold = CC and E and E.GetGuide and CC.Fold(E.GetGuide(), v)
	local list = {}
	for gi, goal in ipairs(v.goals) do
		if goal.status ~= "na" and not goal.folded and gi ~= fold and not (header and header.index == gi) then
			list[#list + 1] = UI.ReadingGoal(v, goal)
		end
	end
	return list, header
end

-- The name a row of another person's goal carries (the focus's are under
-- the header already), in the NPC's or object's colour; nil for field work.
function rowWho(goal, groups, focus)
	local grp = focus and goal.group ~= focus and groups[goal.group]
	if not grp or not grp.name or grp.name == "" or (grp.kind ~= "npc" and grp.kind ~= "object") then return nil end
	return "|c" .. Theme.Hex(grp.kind) .. grp.name .. "|r"
end

-- Fill the card from `view`: the focus group's header, the step's goals, the
-- tip. sameFocus = repaint in place; goals that just turned done pop.
function fillCard(sameFocus)
	local groups, focus = UI.StepGroups(view)
	local g = shownGroup(view, groups, focus)
	focusGroup = g
	local list, header = cardGoals(view, groups, focus)
	person.psHeaderGoal = header
	paintPerson(g)
	person:Show()
	-- A class quest's step: the class card, its colour on the step's quest names.
	local CC, E = UI.ClassCard, Engine()
	local guide = E and E.GetGuide and E.GetGuide()
	local step = guide and guide.steps and guide.steps[view.index]
	local classHex = CC and CC.Fill(guide, view.index, view) or nil
	local t = targetOf()
	local n = 0
	-- A group line ("Dungeon: Dire Maul") reads once, on the first open
	-- goal that carries it, not under every goal of the same run.
	local partySaid = {}
	local missingSaid = {} -- quest -> a row already names who lacks it
	local escortSaid = false -- a row already says the escort line
	-- The current goal (the Engine's `current`: the first open blocking goal
	-- of the focus, else its first open optional one) takes the accent; it
	-- is the goal the arrow leads to. The header stands for its "Go to".
	for _, goal in ipairs(list) do
		n = n + 1
		local r = goalRow(n)
		local pop = sameFocus and goal.status == "done" and r.psStatus and r.psStatus ~= "done" and r.psGoal and r.psGoal.index == goal.index
		local isCurrent = view.current ~= nil and goal.index == view.current and goal.status == "active"
		local party = UI.GroupLine(goal)
		local escort = UI.EscortLine(goal) ~= nil
		local who = rowWho(goal, groups, focus)
		local raw = classHex and step and step.goals[goal.index]
		local hex = raw and CC.Colours(guide, step, raw) and classHex or nil
		paintRow(r, goal, pop, sameFocus, isCurrent, party and partySaid[party], goal.quest and missingSaid[goal.quest], escort and escortSaid, who,
			focus ~= nil and goal.group ~= focus, hex)
		if party then partySaid[party] = true end
		if escort then escortSaid = true end
		if goal.quest and goal.oi and goal.status ~= "skipped" then missingSaid[goal.quest] = true end
		r.Mark:SetShown(goal.status ~= "done" and goal.status ~= "skipped" and isTarget(goal, t) and not person.Mark:IsShown())
		r:Show()
	end
	for i = n + 1, #rows do
		rows[i]:Hide()
		rows[i].psGoal = nil
		rows[i].psStatus = nil
	end
	local shown = ns.Get("ui.showNotes") and not compact()
	local note = shown and view.note or nil
	if note == "" then note = nil end
	-- The step's picture (a file in its pack's addon folder, Guides.lua): one
	-- the client cannot load leaves the tip as it was without one.
	local pic = shown and view.image and view.image.texture and view.image or nil
	if pic and not card.Tip.Image:SetTexture(pic.texture) then pic = nil end
	if not pic then card.Tip.Image:SetTexture(nil) end
	card.Tip.psImage = pic
	card.Tip.Text:SetText(note or (pic and L["Picture of this spot"]) or "")
	card.Tip:SetShown(note ~= nil or pic ~= nil)
	W.SetIcon(card.Tip.Toggle, tipOpen and "chevron-up" or "chevron-down")
	return groups, focus
end

function showSteps(show)
	card:SetShown(show)
	after:SetShown(show and after:IsShown())
	along:SetShown(show and along:IsShown())
	upnext:SetShown(show and upnext:IsShown())
	empty:SetShown(not show)
end

function GF.Render()
	if not F or not ns.IsLoggedIn() then return end
	local E, G = Engine(), ns.Guides
	strip.psHasTabs = GF.TabsOf(E) ~= nil
	local guide = E and E.GetGuide and E.GetGuide()
	local list = G and G.List and G.List()
	if not guide then
		navigatorFor(nil)
		view, shownIndex, shownGuide, shownFocus = nil, nil, nil, nil
		setEmpty((list and #list > 0) and "noguide" or "noguides")
		showSteps(false)
		GF.Layout()
		return
	end
	local index = GF.catchUpIndex or (E.GetStepIndex and E.GetStepIndex())
	navigatorFor(guide, index)
	-- The undo goes once the step is no longer skipped (undone elsewhere).
	local k = notices.stepSkip
	if k and k.guideId == guide.id then
		local sv = E.GetStepView(k.step)
		if not (sv and sv.skipped) then notices.stepSkip = nil end
	end
	local v = index and E.GetStepView(index)
	if not v then
		view, shownIndex, shownGuide, shownFocus = nil, nil, guide.id, nil
		setEmpty("complete")
		showSteps(false)
		GF.Layout()
		GF.PaintProgress(true)
		return
	end
	-- A Class guide the character cannot start yet, or another race's
	-- starting zone the player has not reached: its notice on the live step;
	-- Next still looks at the steps ahead.
	local live = index == (E.GetLiveStep and E.GetLiveStep())
	local notice = live and ((E.StartGate and E.StartGate(guide.id) and "notyet") or (E.AwayStart and E.AwayStart(guide.id) and "away"))
	if notice then
		view, shownIndex, shownGuide, shownFocus = nil, nil, guide.id, nil
		setEmpty(notice)
		showSteps(false)
		GF.Layout()
		return
	end
	local stepChanged = shownGuide ~= guide.id or shownIndex ~= index
	if stepChanged then tipOpen = ns.Get("ui.notesOpen") and true or false end
	view = v
	if v.skipped then GF.PaintSkip(true, false) end
	state = "steps"
	local _, f0 = UI.StepGroups(v)
	local focusChanged = stepChanged or shownFocus ~= f0
	local groups, focus = fillCard(not focusChanged)
	fillAfter(E, index, groups, focus)
	fillAlong(E)
	fillUpcoming(E, index)
	showSteps(true)
	GF.Layout()
	GF.PaintProgress(shownGuide == guide.id)
	if focusChanged and F:IsVisible() and not GF.catchingUp then
		-- The next person (or step) slides up 6px into place as it fades in.
		Anim.To(card, "alpha", 0, 1, Anim.BASE, "out")
		Anim.To(card, "offset", -6, 0, Anim.BASE, "out")
	end
	-- A class chain's card, the first time it shows: its shine and chime.
	if F:IsVisible() and not GF.catchingUp and UI.ClassCard then UI.ClassCard.Celebrate() end
	shownIndex, shownGuide, shownFocus = index, guide.id, focus
end

-- The step the window shows (the catch-up's while it goes over the steps).
function GF.ShownStep() return shownIndex end

-- STEP_UPDATED: same step, new goal status/progress. When the focus moved
-- to the next person this re-renders (with the slide); otherwise rows are
-- refilled in place.
function GF.Update()
	if not F or state ~= "steps" or not view then return GF.Render() end
	local E = Engine()
	local index = E.GetStepIndex and E.GetStepIndex()
	if index ~= shownIndex then return GF.Render() end
	local v = E.GetStepView(index)
	if not v then return GF.Render() end
	local groups, focus = UI.StepGroups(v)
	if focus ~= shownFocus then return GF.Render() end
	local visible = #cardGoals(v, groups, focus)
	local current = 0
	for i = 1, #rows do if rows[i]:IsShown() then current = current + 1 end end
	if visible ~= current then return GF.Render() end
	view = v
	fillCard(true)
	fillAfter(E, index, groups, focus)
	fillAlong(E)
	GF.Layout()
	GF.PaintProgress(true)
end

function GF.UpdateTargets()
	if not F or state ~= "steps" or not focusGroup then return end
	local t = targetOf()
	person.Mark:SetShown(personMarked(t))
	for i = 1, #rows do
		local r = rows[i]
		if r:IsShown() and r.psGoal then
			r.Mark:SetShown(r.psGoal.status ~= "done" and r.psGoal.status ~= "skipped" and isTarget(r.psGoal, t) and not person.Mark:IsShown())
		end
	end
end

function GF.TabsOf(E) return tabsOf(E) end

