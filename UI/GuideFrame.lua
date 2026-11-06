local ADDON, ns = ...
setfenv(1, ns._uiGuideFrameEnv)
---------------------------------------------------------------------------
-- Build
---------------------------------------------------------------------------

function hoverable(frame)
	frame:HookScript("OnEnter", function() GF.HoverIn() end)
	return frame
end

function draggable(frame)
	frame:EnableMouse(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", dragStart)
	frame:SetScript("OnDragStop", dragStop)
	return hoverable(frame)
end

function build()
	readMetrics()
	F = CreateFrame("Frame", "TuWoW_LevelingGuideFrame", UIParent)
	F:SetFrameStrata("MEDIUM")
	F:SetClampedToScreen(true)
	F:SetMovable(true)
	F:EnableMouse(true)
	F:SetSize(ns.Get("ui.width") or 340, 200)
	Theme.Skin(F, "window")
	F:SetScript("OnEnter", function() GF.HoverIn() end)
	GF.frame = F
	_G.PolestarGuideFrame = F

	-- The night-sky band behind the tab strip and navigator (standard style).
	band = Theme.Band(F, "BACKGROUND", -5)
	band:SetPoint("TOPLEFT", F, "TOPLEFT", 1, -1)
	band:SetPoint("TOPRIGHT", F, "TOPRIGHT", -1, -1)

	-- Tab strip
	strip = CreateFrame("Frame", nil, F)
	strip:SetPoint("TOPLEFT", F, "TOPLEFT", 0, 0)
	strip:SetPoint("TOPRIGHT", F, "TOPRIGHT", 0, 0)
	strip:SetHeight(TAB_H)
	draggable(strip)
	strip.Rule = W.Divider(strip)
	strip.Rule:SetPoint("BOTTOMLEFT", strip, "BOTTOMLEFT", 0, 0)
	strip.Rule:SetPoint("BOTTOMRIGHT", strip, "BOTTOMRIGHT", 0, 0)
	strip.Add = W.IconButton(strip, "plus", 24, L["Open a guide in a new tab"], function()
		UI.ShowPicker({ newTab = true })
	end, 12)
	hoverable(strip.Add)
	chrome[#chrome + 1] = strip
	-- The Forever skin positions its border below the tab strip; expose the strip.
	F.psStrip = strip

	-- Navigator: prev, "8 / 29", next on the left; Skip, the bug (report a
	-- problem) and the menu on the right.
	nav = CreateFrame("Frame", nil, F)
	nav:SetPoint("TOPLEFT", strip, "BOTTOMLEFT", 0, 0)
	nav:SetPoint("TOPRIGHT", strip, "BOTTOMRIGHT", 0, 0)
	nav:SetHeight(NAV_H)
	draggable(nav)
	nav.Rule = W.Divider(nav)
	nav.Rule:SetPoint("BOTTOMLEFT", nav, "BOTTOMLEFT", 0, 0)
	nav.Rule:SetPoint("BOTTOMRIGHT", nav, "BOTTOMRIGHT", 0, 0)
	-- Blizzard's title bar: #2C200C to #150F06, 4 in from the frame.
	nav.TitleBar = nav:CreateTexture(nil, "BACKGROUND", nil, -4)
	nav.TitleBar:SetTexture(Theme.Media("white"))
	nav.TitleBar:SetPoint("TOPLEFT", nav, "TOPLEFT", 4, 0)
	nav.TitleBar:SetPoint("BOTTOMRIGHT", nav, "BOTTOMRIGHT", -4, 1)
	W.Painter(nav.TitleBar, function(t)
		local top, bottom = { Theme.Color("sky") }, { Theme.Color("skyBottom") }
		if t.SetGradient and CreateColor then
			t:SetGradient("VERTICAL", CreateColor(bottom[1], bottom[2], bottom[3], 1), CreateColor(top[1], top[2], top[3], 1))
		else
			t:SetVertexColor(top[1], top[2], top[3], 1)
		end
	end)
	nav.TitleBar:Hide()
	nav.Steps = CreateFrame("Frame", nil, nav)
	nav.Steps:SetSize(100, 24)
	nav.Steps:SetPoint("LEFT", nav, "LEFT", PAD - 6, 0)
	nav.Prev = W.IconButton(nav.Steps, "chevron-left", 24, L["Previous step"], function()
		local E = Engine()
		if E and E.Prev then E.Prev() end
	end)
	nav.Prev.psTipLines = { L["A look back: nothing changes."] }
	nav.Prev:SetPoint("LEFT", nav.Steps, "LEFT", 0, 0)
	nav.Steps.Count = T(nav.Steps, "number", "text")
	nav.Steps.Count:SetJustifyH("CENTER")
	nav.Steps.Count:SetPoint("LEFT", nav.Prev, "RIGHT", 0, 0)
	nav.Next = W.IconButton(nav.Steps, "chevron-right", 24, L["Next step"], function()
		local E = Engine()
		if E and E.Next then E.Next() end
	end)
	nav.Next.psTipLines = { L["A look ahead: nothing is skipped. Skip moves on for good."] }
	nav.Next:SetPoint("LEFT", nav.Steps.Count, "RIGHT", 0, 0)
	nav.Menu = W.IconButton(nav, "menu", 24, L["Menu"], openMenu)
	nav.Menu:SetPoint("RIGHT", nav, "RIGHT", -8, 0)
	GF.menuButton = nav.Menu
	-- Report a problem with the step on screen (UI/Report.lua): the bug, left
	-- of the menu.
	nav.Report = W.IconButton(nav, "bug", 24, L["Report a problem"], function() UI.ShowReport() end)
	nav.Report.psTipLines = { L["Write what went wrong, copy the report and paste it on the Polestar Discord."] }
	nav.Report:SetPoint("RIGHT", nav.Menu, "LEFT", 0, 0)
	nav.Report:Hide()
	-- Nearby services: left of the bug, right of Skip.
	nav.Nearby = W.IconButton(nav, "icon-goto", 24, L["Nearby services"], openNearby)
	nav.Nearby.psTipLines = { L["Points the arrow at the nearest vendor, repair, inn, flight master or trainer."] }
	nav.Nearby:SetPoint("RIGHT", nav.Report, "LEFT", 0, 0)
	nav.Nearby:SetShown(ns.Get("nav.nearbyButton") ~= false)
	GF.nearbyButton = nav.Nearby
	-- Skip: the 11px skip glyph and a Small label, a ghost button left of the
	-- bug.
	local skip = CreateFrame("Button", nil, nav)
	skip:SetHeight(24)
	W.Hover(skip, 0.7)
	skip.Icon = W.Tex(skip, "ARTWORK", "skip", "textDim")
	skip.Icon:SetSize(11, 11)
	skip.Icon:SetPoint("LEFT", skip, "LEFT", 7, 0)
	skip.Label = T(skip, "small", "textDim")
	skip.Label:SetPoint("LEFT", skip.Icon, "RIGHT", 5, 0)
	skip.Label:SetText(L["Skip"])
	skip:SetWidth(floor(7 + 11 + 5 + skip.Label:GetStringWidth() + 8 + 0.5))
	skip:SetScript("OnClick", function() GF.SkipStep() end)
	skip:SetScript("OnEnter", function(self)
		if self:IsEnabled() then
			W.Color(self.Icon, "text")
			W.Color(self.Label, "text")
		end
		W.Tooltip(self, "ANCHOR_BOTTOM", L["Skip this step"], { L["The guide moves on and remembers it. Undo in the banner, or go back to the step to unskip it."] })
		GF.HoverIn()
	end)
	skip:SetScript("OnLeave", function(self)
		GF.PaintSkip(self:IsShown(), self:IsEnabled())
		W.HideTooltip(self)
	end)
	skip:Hide()
	nav.Skip = skip
	anchorSkip()
	nav.Title = T(nav, "small", "textDim")
	-- The step's own title and the guide's facts, on the step number.
	local countHit = CreateFrame("Frame", nil, nav.Steps)
	countHit:SetAllPoints(nav.Steps.Count)
	countHit:EnableMouse(true)
	countHit:SetScript("OnEnter", function(self)
		local lines = {}
		if view and view.title and view.title ~= "" then lines[#lines + 1] = view.title end
		if nav.psMeta and nav.psMeta ~= "" then lines[#lines + 1] = nav.psMeta end
		W.Tooltip(self, tooltipAnchor(), nav.Title:GetText() or "", lines)
		GF.HoverIn()
	end)
	countHit:SetScript("OnLeave", function(self) W.HideTooltip(self) end)
	-- The wheel over the step number scrubs through the steps (GF.Scrub); a
	-- click opens the steps around it (GF.ShowOverview).
	nav.Steps.Hit = countHit
	countHit:EnableMouseWheel(true)
	countHit:SetScript("OnMouseWheel", function(_, delta) GF.Scrub(delta) end)
	countHit:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" then GF.ShowOverview(self) end
	end)
	for _, b in ipairs({ nav.Menu, nav.Report, nav.Nearby, nav.Next, nav.Prev, nav.Skip }) do hoverable(b) end
	-- Transparent chrome: the step number fades with its chevrons (nav.Steps
	-- holds all three) and the title with them; a lone "3 / 8" over the world
	-- would read as a stray number. Progress stays readable in the foot.
	for _, c in ipairs({ nav.Menu, nav.Report, nav.Nearby, nav.Skip, nav.Steps, nav.Title }) do chrome[#chrome + 1] = c end

	-- Body
	body = CreateFrame("Frame", nil, F)
	body:SetPoint("TOPLEFT", nav, "BOTTOMLEFT", 0, 0)
	body:SetPoint("TOPRIGHT", nav, "BOTTOMRIGHT", 0, 0)
	body:SetHeight(100)

	card = CreateFrame("Frame", nil, body)
	Anim.Anchor(card, "TOPLEFT", body, "TOPLEFT", 0, 0)

	-- The focus header: who (or what) the goals below belong to.
	person = CreateFrame("Button", nil, card)
	person:RegisterForClicks("LeftButtonUp")
	W.Hover(person, 0.7)
	-- The arrow on this person: the 2px accent selection bar.
	person.Mark = person:CreateTexture(nil, "ARTWORK")
	person.Mark:SetTexture(Theme.Media("white"))
	person.Mark:SetWidth(2)
	person.Mark:SetPoint("TOPLEFT", person, "TOPLEFT", 0, -6)
	person.Mark:SetPoint("BOTTOMLEFT", person, "BOTTOMLEFT", 0, 4)
	W.Color(person.Mark, "accent")
	person.Mark:Hide()
	person.Icon = person:CreateTexture(nil, "ARTWORK")
	person.Icon:SetSize(ICON + 1, ICON + 1)
	person.Icon:SetPoint("TOPLEFT", person, "TOPLEFT", PAD - 1, -11)
	person.Name = T(person, "name", "personName")
	person.Name:SetPoint("TOPLEFT", person, "TOPLEFT", TEXT_X, -10)
	person.Where = T(person, "small", "textDim")
	person.Where:SetPoint("TOPLEFT", person.Name, "BOTTOMLEFT", 0, -3)
	-- Blizzard: a gold separator under the person, above the goals.
	person.Rule = person:CreateTexture(nil, "ARTWORK")
	person.Rule:SetTexture(Theme.Media("white"))
	person.Rule:SetHeight(1)
	person.Rule:SetPoint("BOTTOMLEFT", person, "BOTTOMLEFT", PAD, 0)
	person.Rule:SetPoint("BOTTOMRIGHT", person, "BOTTOMRIGHT", -PAD, 0)
	W.Color(person.Rule, "separator")
	person.Rule:Hide()
	person:SetScript("OnClick", function(self) pointAt(self.psPlace, self.psLabel) end)
	person:SetScript("OnEnter", personEnter)
	person:SetScript("OnLeave", function(self) W.HideTooltip(self) end)

	-- The author's tip, one line until opened.
	local tip = CreateFrame("Button", nil, card)
	W.Hover(tip, 0.6)
	tip.Text = T(tip, "note", "textDim")
	tip.Text:SetJustifyV("TOP")
	tip.Text:SetSpacing(3)
	tip.Text:SetPoint("TOPLEFT", tip, "TOPLEFT", TEXT_X, -6)
	tip.Toggle = W.IconButton(tip, "chevron-down", 18, nil, nil, 10)
	-- The step's picture, shown while the tip is open (layoutCard).
	tip.Image = tip:CreateTexture(nil, "ARTWORK")
	tip.Image:Hide()
	tip.Toggle:EnableMouse(false)
	tip.Toggle:SetPoint("TOPLEFT", tip, "TOPLEFT", PAD - 2, -3)
	tip:SetScript("OnClick", function()
		tipOpen = not tipOpen
		W.SetIcon(tip.Toggle, tipOpen and "chevron-up" or "chevron-down")
		GF.Layout()
	end)
	tip:SetScript("OnEnter", function() GF.HoverIn() end)
	card.Tip = tip

	-- "Then: Gazrog" on the left, "Person 2 of 8" on the right.
	after = CreateFrame("Frame", nil, body)
	after:SetHeight(28)
	after.Rule = W.Divider(after)
	after.Rule:SetPoint("TOPLEFT", after, "TOPLEFT", PAD, 0)
	after.Rule:SetPoint("TOPRIGHT", after, "TOPRIGHT", -PAD, 0)
	after.Text = T(after, "label", "textDim")
	after.Text:SetPoint("LEFT", after, "LEFT", PAD, 0)
	after.Count = T(after, "small", "textMuted")
	after.Count:SetJustifyH("RIGHT")
	after.Count:SetPoint("RIGHT", after, "RIGHT", -PAD, 0)

	-- Along the way: goals of along steps the route has passed. Shown only
	-- while one is open (fillAlong).
	along = CreateFrame("Frame", nil, body)
	along.Rule = W.Divider(along)
	along.Rule:SetPoint("TOPLEFT", along, "TOPLEFT", PAD, 0)
	along.Rule:SetPoint("TOPRIGHT", along, "TOPRIGHT", -PAD, 0)
	along.Label = T(along, "small", "textMuted")
	along.Label:SetPoint("LEFT", along, "TOPLEFT", PAD, -UP_TOGGLE / 2)
	along:Hide()

	upnext = CreateFrame("Frame", nil, body)
	local toggle = CreateFrame("Button", nil, upnext)
	toggle:SetHeight(UP_TOGGLE)
	W.Hover(toggle, 0.7)
	toggle.Rule = W.Divider(toggle)
	toggle.Rule:SetPoint("TOPLEFT", toggle, "TOPLEFT", PAD, 0)
	toggle.Rule:SetPoint("TOPRIGHT", toggle, "TOPRIGHT", -PAD, 0)
	toggle.Label = T(toggle, "small", "textMuted")
	toggle.Label:SetPoint("LEFT", toggle, "LEFT", PAD, 0)
	toggle.Icon = toggle:CreateTexture(nil, "ARTWORK")
	toggle.Icon:SetSize(12, 12)
	toggle.Icon:SetPoint("RIGHT", toggle, "RIGHT", -PAD, 0)
	toggle.Icon:SetTexture(Theme.Media("chevron-down"))
	W.Color(toggle.Icon, "textMuted")
	toggle:SetScript("OnClick", function() ns.Set("ui.upcomingOpen", not upcomingOpen()) end)
	toggle:SetScript("OnEnter", function(self) W.Color(self.Label, "textDim"); GF.HoverIn() end)
	toggle:SetScript("OnLeave", function(self) W.Color(self.Label, "textMuted") end)
	upnext.Toggle = toggle

	-- XP pace (QoL module): "3.4k XP/h · 1h 05m to level", full summary on hover.
	local xp = CreateFrame("Frame", nil, body)
	xp:SetHeight(28)
	xp:EnableMouse(true)
	xp.Rule = W.Divider(xp)
	xp.Rule:SetPoint("TOPLEFT", xp, "TOPLEFT", PAD, 0)
	xp.Rule:SetPoint("TOPRIGHT", xp, "TOPRIGHT", -PAD, 0)
	xp.Icon = W.Tex(xp, "ARTWORK", "icon-level", "textMuted")
	xp.Icon:SetSize(11, 11)
	xp.Icon:SetPoint("LEFT", xp, "LEFT", PAD, -1)
	xp.Text = T(xp, "small", "textDim")
	xp.Text:SetPoint("LEFT", xp.Icon, "RIGHT", 7, 0)
	-- (A narrow window cuts the line with "..."; the hover shows all of it.)
	xp.Text:SetPoint("RIGHT", xp, "RIGHT", -PAD, 0)
	xp.Text:SetJustifyH("LEFT")
	xp.Text:SetWordWrap(false)
	xp:SetScript("OnEnter", function(self)
		if self.psSummary or self.psLine then W.Tooltip(self, tooltipAnchor(), L["Experience"], { self.psLine, self.psSummary }) end
		GF.HoverIn()
	end)
	xp:SetScript("OnLeave", function(self) W.HideTooltip(self) end)
	xp:Hide()
	GF.xp = xp

	-- The party's place on this guide (Quests/Party.lua, Party.StepLine); a
	-- click shares the quest of the step a member lacks.
	local party = CreateFrame("Button", nil, body)
	party:SetHeight(28)
	party.Rule = W.Divider(party)
	party.Rule:SetPoint("TOPLEFT", party, "TOPLEFT", PAD, 0)
	party.Rule:SetPoint("TOPRIGHT", party, "TOPRIGHT", -PAD, 0)
	party.Icon = W.Tex(party, "ARTWORK", "icon-talk", "textMuted")
	party.Icon:SetSize(11, 11)
	party.Icon:SetPoint("LEFT", party, "LEFT", PAD, -1)
	party.Text = T(party, "small", "textDim")
	party.Text:SetPoint("LEFT", party.Icon, "RIGHT", 7, 0)
	party.Text:SetPoint("RIGHT", party, "RIGHT", -PAD, 0)
	party.Text:SetJustifyH("LEFT")
	party.Text:SetWordWrap(false)
	party:SetScript("OnClick", function(self)
		if self.psShare then ns.Compat.ShareQuest(self.psShare) end
	end)
	party:SetScript("OnEnter", function(self)
		if self.psShare then W.Tooltip(self, tooltipAnchor(), L["Party"], { L["Click to share the quest with your party."] }) end
		GF.HoverIn()
	end)
	party:SetScript("OnLeave", function(self) W.HideTooltip(self) end)
	party:Hide()
	GF.party = party

	-- Banner: out-levelled offer or training reminder.
	banner = CreateFrame("Frame", nil, body)
	banner.Fill = banner:CreateTexture(nil, "BACKGROUND")
	banner.Fill:SetTexture(Theme.Media("white"))
	banner.Fill:SetAllPoints(banner)
	W.Painter(banner.Fill, function(t) local r, g, b = Theme.Accent(); t:SetVertexColor(r, g, b, 0.1) end)
	banner.Rule = W.Divider(banner)
	banner.Rule:SetPoint("BOTTOMLEFT", banner, "BOTTOMLEFT", 0, 0)
	banner.Rule:SetPoint("BOTTOMRIGHT", banner, "BOTTOMRIGHT", 0, 0)
	banner.Icon = W.Tex(banner, "ARTWORK", "icon-level", "accent")
	banner.Icon:SetSize(13, 13)
	banner.Icon:SetPoint("TOPLEFT", banner, "TOPLEFT", PAD, -10)
	banner.Text = T(banner, "label", "text")
	banner.Text:SetWordWrap(true)
	banner.Text:SetJustifyV("TOP")
	banner.Text:SetPoint("TOPLEFT", banner, "TOPLEFT", PAD + 21, -9)
	banner.Jump = CreateFrame("Button", nil, banner)
	banner.Jump:SetHeight(18)
	banner.Jump.Label = T(banner.Jump, "label", "accent")
	banner.Jump.Label:SetPoint("LEFT", banner.Jump, "LEFT", 0, 0)
	banner.Jump.Arrow = W.Tex(banner.Jump, "ARTWORK", "chevron-right", "accent")
	banner.Jump.Arrow:SetSize(11, 11)
	banner.Jump.Arrow:SetPoint("LEFT", banner.Jump.Label, "RIGHT", 3, 0)
	banner.Jump:SetScript("OnClick", function() GF.TakeBanner() end)
	banner.Jump:SetScript("OnEnter", function(self) W.Color(self.Label, "text"); GF.HoverIn() end)
	banner.Jump:SetScript("OnLeave", function(self) W.Color(self.Label, "accent") end)
	banner.Later = CreateFrame("Button", nil, banner)
	banner.Later:SetHeight(18)
	banner.Later.Label = T(banner.Later, "label", "textDim")
	banner.Later.Label:SetPoint("LEFT", banner.Later, "LEFT", 0, 0)
	banner.Later:SetScript("OnClick", function() GF.LaterBanner() end)
	banner.Later:SetScript("OnEnter", function(self) W.Color(self.Label, "text"); GF.HoverIn() end)
	banner.Later:SetScript("OnLeave", function(self) W.Color(self.Label, "textDim") end)
	-- A 12px glyph in a 24px target, centred where the old 18px one sat.
	banner.Close = W.IconButton(banner, "close", 24, L["Dismiss"], function() GF.DismissBanner() end, 12)
	banner.Close:SetPoint("TOPRIGHT", banner, "TOPRIGHT", -5, -3)
	banner:Hide()

	empty = CreateFrame("Frame", nil, body)
	empty.Glyph = empty:CreateTexture(nil, "ARTWORK")
	empty.Glyph:SetSize(36, 36)
	empty.Glyph.Glow = empty:CreateTexture(nil, "BACKGROUND")
	empty.Glyph.Glow:SetTexture(Theme.Media("glow"))
	empty.Glyph.Glow:SetSize(84, 84)
	empty.Glyph.Glow:SetPoint("CENTER", empty.Glyph, "CENTER", 0, 0)
	empty.Title = T(empty, "display", "text")
	empty.Title:SetJustifyH("CENTER")
	empty.Text = T(empty, "note", "textDim")
	empty.Text:SetJustifyH("CENTER")
	empty.Text:SetWordWrap(true)
	empty.Text:SetSpacing(3)
	local function act(b) if b.psAction then b.psAction() end end
	empty.Primary = W.Button(empty, "", act, { primary = true, width = 168 })
	empty.Secondary = W.Button(empty, "", act, { width = 168 })

	-- The guide's progress with its percent, at the bottom.
	foot = CreateFrame("Frame", nil, F)
	foot:SetPoint("BOTTOMLEFT", F, "BOTTOMLEFT", 0, 0)
	foot:SetPoint("BOTTOMRIGHT", F, "BOTTOMRIGHT", 0, 0)
	foot:SetHeight(PROG_H)
	draggable(foot)
	foot.Line = W.ProgressLine(foot, 3)
	foot.Line:SetPoint("LEFT", foot, "LEFT", PAD, 0)
	foot.Pct = T(foot, "number", "textDim")
	foot.Pct:SetJustifyH("RIGHT")
	foot.Pct:SetWidth(40)
	foot.Pct:SetPoint("RIGHT", foot, "RIGHT", -PAD, 0)
	foot:SetScript("OnEnter", function(self)
		if self.psTotal and self.psTotal > 0 then
			W.Tooltip(self, tooltipAnchor(), L["Guide progress"], { string.format(L["%d of %d steps done"], self.psDone or 0, self.psTotal) })
		end
		GF.HoverIn()
	end)
	foot:SetScript("OnLeave", function(self) W.HideTooltip(self) end)

	-- Width grip
	grip = CreateFrame("Button", nil, F)
	grip:SetSize(16, 16)
	grip:SetPoint("BOTTOMRIGHT", F, "BOTTOMRIGHT", -1, 1)
	grip:SetFrameLevel(F:GetFrameLevel() + 10)
	grip.Icon = grip:CreateTexture(nil, "OVERLAY")
	grip.Icon:SetTexture(Theme.Media("resize"))
	grip.Icon:SetSize(10, 10)
	grip.Icon:SetPoint("BOTTOMRIGHT", grip, "BOTTOMRIGHT", -1, 1)
	W.Color(grip.Icon, "textMuted", 0.6)
	grip:SetScript("OnEnter", function(self) W.Color(self.Icon, "text"); GF.HoverIn() end)
	grip:SetScript("OnLeave", function(self) W.Color(self.Icon, "textMuted", 0.6) end)
	grip:SetScript("OnMouseDown", resizeStart)
	grip:SetScript("OnMouseUp", resizeStop)
	grip:SetScript("OnHide", resizeStop)
	GF.grip = grip
	chrome[#chrome + 1] = grip

	GF.parts = {
		strip = strip, nav = nav, body = body, card = card, person = person, tip = tip, after = after,
		along = along, upnext = upnext, empty = empty, band = band, banner = banner, foot = foot, line = foot.Line,
	}
	GF.chrome = chrome

	F:SetScript("OnShow", function()
		if ns.UI and ns.UI.Tracker and ns.UI.Tracker.IsActiveStyle and ns.UI.Tracker.IsActiveStyle() then
			F:Hide()
			return
		end
		GF.UpdateXP()
		GF.Render()
	end)
	Theme.OnChanged(function() if ns.IsLoggedIn() then GF.Render() end end)
end

---------------------------------------------------------------------------
-- Wiring
---------------------------------------------------------------------------

-- A hidden window does no work: its OnShow renders it afresh.
function whenReady(fn)
	return function(...)
		if F and F:IsShown() and ns.IsLoggedIn() then fn(...) end
	end
end

ns.OnInit(function()
	build()
	applyAll()
end)

-- The combat events may have fired before a /reload or reconnect.
function combatNow()
	local C = ns.Compat
	if C and C.InCombat then
		local ok, v = pcall(C.InCombat)
		if ok then return v and true or false end
	end
	return InCombatLockdown and InCombatLockdown() and true or false
end

ns.OnLogin(function()
	inCombat = combatNow()
	applyAll()
	GF.Render()
end)

ns.On("GUIDE_CHANGED", whenReady(GF.Render))
ns.On("STEP_CHANGED", whenReady(GF.Render))
ns.On("STEP_UPDATED", whenReady(GF.Update))
ns.On("PARTY_PROGRESS", whenReady(GF.Update))
ns.On("GUIDES_REGISTERED", whenReady(GF.Render))
ns.On("PACKS_CHANGED", whenReady(GF.Render))
ns.On("GUIDE_COMPLETED", whenReady(GF.Render))
ns.On("WAYPOINT_CHANGED", whenReady(GF.UpdateTargets))

-- The route's pace against the guide's next level target (Core/Levels.lua,
-- Levels.Pace): "On pace for level 14 by step 32", "About 6 bars short of
-- level 14 by step 32"; nil without a target ahead or the Codex.
function GF.PaceText()
	local Lv = ns.Levels
	local pace = Lv and Lv.Pace and Lv.Pace()
	if not pace then return nil end
	local level = pace.target % 1 == 0 and string.format("%d", pace.target) or string.format("%.1f", pace.target)
	if pace.bars == 0 then return string.format(L["On pace for level %s by step %d"], level, pace.step) end
	return string.format(L["About %d bars short of level %s by step %d"], pace.bars, level, pace.step)
end

-- XP pace from the QoL tracker and the route's pace (GF.PaceText). Hidden
-- when both are off, at max level, or before there is anything to show.
function GF.UpdateXP(stats)
	if not GF.xp then return end
	local Q = ns.QoL
	if stats == nil and Q and Q.GetXPStats then
		local ok, s = pcall(Q.GetXPStats)
		stats = ok and s or nil
	end
	local parts = {}
	if type(stats) == "table" and not stats.maxed and Q then
		local short = Q.XP and Q.XP.Short
		if type(stats.rate) == "number" and stats.rate > 0 and short then
			parts[#parts + 1] = string.format(L["%s XP/h"], short(stats.rate))
		end
		if type(stats.timeToLevel) == "number" and Q.Duration then
			parts[#parts + 1] = string.format(L["%s to level"], Q.Duration(stats.timeToLevel))
		end
	end
	if not (type(stats) == "table" and stats.maxed) then
		local pace = GF.PaceText()
		if pace then parts[#parts + 1] = pace end
	end
	local had = GF.xp.psHas
	GF.xp.psHas = #parts > 0
	if GF.xp.psHas then
		local line = table.concat(parts, "  \194\183  ")
		GF.xp.Text:SetText(line)
		GF.xp.psLine = line
		local ok, summary = pcall(function() return Q.XP and Q.XP.Summary and Q.XP.Summary(stats) end)
		GF.xp.psSummary = ok and summary or nil
	end
	if had ~= GF.xp.psHas then GF.Layout() end
end

ns.On("QOL_XP_UPDATED", whenReady(function(stats) GF.UpdateXP(stats) end))
ns.OnLogin(function() GF.UpdateXP() end)
ns.On("STEP_CHANGED", whenReady(function() GF.UpdateXP() end))

-- The party line (Quests/Party.lua, Party.StepLine): hidden without one.
function GF.UpdateParty()
	if not GF.party then return end
	local P = ns.Party
	local text, share
	if P and P.StepLine then text, share = P.StepLine() end
	local had = GF.party.psText ~= nil
	GF.party.psText, GF.party.psShare = text, share
	if text then GF.party.Text:SetText(text) end
	if had ~= (text ~= nil) then GF.Layout() end
end
for _, msg in ipairs({ "PARTY_PROGRESS", "STEP_CHANGED", "STEP_UPDATED", "GUIDE_CHANGED" }) do
	ns.On(msg, whenReady(function() GF.UpdateParty() end))
end

ns.On("TABS_CHANGED", whenReady(function()
	strip.psHasTabs = tabsOf(Engine()) ~= nil
	GF.Layout()
end))

-- STEP_SKIPPED(fromStep, toStep, skips): the guide moved past quests the
-- giver does not offer (or no longer can). Says why in the banner until the
-- step changes again, dismissed, or SKIPPED_SECONDS pass; in chat when the
-- window is hidden. Fires before STEP_CHANGED, whose render shows it.
ns.On("STEP_SKIPPED", function(_, to, skips)
	if not F or type(skips) ~= "table" or #skips == 0 then return end
	local E = Engine()
	local g = E and E.GetGuide and E.GetGuide()
	if not g then return end
	local n = { guideId = g.id, to = to, skips = skips }
	notices.skipped = n
	if not F:IsShown() then
		for _, k in ipairs(skips) do
			ns.Print(string.format(L["Skipped %s"], k.title or "") .. (k.text and (": " .. k.text) or ""))
		end
	end
	ns.After(SKIPPED_SECONDS, function()
		if notices.skipped ~= n then return end
		notices.skipped = nil
		if F:IsShown() and ns.IsLoggedIn() then GF.Layout() end
	end)
end)

-- The catch-up (GUIDE_PLACED): once a guide just opened is placed, the
-- window goes over the steps before the one it resumes at, each shown in
-- full (the card, the journey, what follows) one after another faster and
-- faster, then the step placed. Guides passed whole go by first, by title.
-- It plays when a guide is opened (by the player, the login's pick, a guide
-- chained to), from step 1; a guide a login or /reload brings back is placed
-- without it (the Engine fires GUIDE_PLACED for opened guides only). Not
-- with reduced motion, the window hidden, or a single step to go over. A
-- guide placed before the world is entered waits for it. Only the window
-- moves: the Engine's step, the arrow and the automation stay on the step
-- placed.
CATCH_GUIDE = 0.35 -- seconds per guide passed whole (at most 1.2 in all)
GF.catchUpState = { entered = false }

function catchUpDone()
	GF.catchingUp, GF.catchUpIndex = nil, nil
	ns.Fire("CATCH_UP", false)
	GF.Render()
end

function GF.PlayCatchUp(guideId, step, chain)
	local cs = GF.catchUpState
	if not cs.entered then
		cs.queued = { guideId, step, chain }
		return
	end
	local passed = chain and #chain or 0
	if not (F and F:IsShown() and ns.IsLoggedIn()) or Anim.Reduced() then return end
	-- A single step passed is no catch-up (the player's own first step).
	if not step or (step <= 2 and passed == 0) then return end
	local Count = nav.Steps.Count
	-- CATCH_UP(true|false): the arrow shows an hourglass meanwhile (Nav/Arrow.lua).
	ns.Fire("CATCH_UP", true)
	local function roll()
		GF.catchingUp = "steps"
		local shown
		Count.psOnValue = function(_, v)
			local i = max(1, min(step - 1, floor(v)))
			if i ~= shown then
				shown = i
				GF.catchUpIndex = i
				GF.Render()
			end
		end
		-- Slow at first, then faster: about 0.06 s a step, 2.5 s at most.
		local dur = min(2.5, 0.5 + 0.06 * (step - 1))
		Anim.To(Count, "value", 1, step - 0.001, dur, "in", catchUpDone)
	end
	if passed == 0 then return roll() end
	-- The guides passed whole, each shown done.
	GF.catchingUp = "guides"
	local titles = {}
	for i, id in ipairs(chain) do
		local g = ns.Guides.Get(id)
		titles[i] = { g and (g.title or g.id) or id, g and #g.steps or 0 }
	end
	Count.psOnValue = function(o, v)
		local t = titles[min(passed, floor(v) + 1)]
		nav.Title:SetText(t[1])
		o:SetText(string.format("%d / %d", t[2], t[2]))
	end
	Anim.To(Count, "value", 0, passed - 0.001, min(1.2, CATCH_GUIDE * passed), "linear", function()
		if step > 1 then return roll() end
		catchUpDone()
	end)
end

ns.RegisterEvent("PLAYER_ENTERING_WORLD", function()
	local cs = GF.catchUpState
	if cs.entered then return end
	cs.entered = true
	local q = cs.queued
	cs.queued = nil
	if q and F then GF.PlayCatchUp(q[1], q[2], q[3]) end
end)

ns.On("GUIDE_PLACED", function(guideId, step, chain)
	if F then GF.PlayCatchUp(guideId, step, chain) end
end)

-- GUIDE_OUTLEVELED(guideId, suggestedId): the player has outgrown the guide
-- in the active tab; offer the suggested one until dismissed or taken.
ns.On("GUIDE_OUTLEVELED", function(guideId, suggestedId)
	if not F then return end
	local G = ns.Guides
	local target = suggestedId and G and G.Get and G.Get(suggestedId)
	if not target then return end
	notices.outlevel = { guideId = guideId, to = suggestedId, title = target.title or suggestedId }
	if ns.IsLoggedIn() then GF.Layout() end
end)

-- GUIDE_CONTINUED(fromId, toId): with "Continue automatically" a finished
-- leveling guide handed off by itself. Said in the banner for
-- SKIPPED_SECONDS, in chat while the window is hidden.
ns.On("GUIDE_CONTINUED", function(fromId, toId)
	local G = ns.Guides
	local from, to = G and G.Get and G.Get(fromId), G and G.Get and G.Get(toId)
	if not (from and to) then return end
	local n = { to = toId, fromTitle = from.title or fromId, toTitle = to.title or toId }
	if not (F and F:IsShown()) then
		ns.Print(string.format(L["%s complete \226\128\148 continuing with %s"], n.fromTitle, n.toTitle))
	end
	if not F then return end
	notices.continued = n
	if ns.IsLoggedIn() then GF.Layout() end
	ns.After(SKIPPED_SECONDS, function()
		if notices.continued ~= n then return end
		notices.continued = nil
		if F:IsShown() and ns.IsLoggedIn() then GF.Layout() end
	end)
end)

-- TRAIN_DUE(level, trainer): new class skills are waiting. A later level's
-- reminder replaces an older one.
ns.On("TRAIN_DUE", function(level, trainer)
	if not F then return end
	notices.train = { level = level, trainer = type(trainer) == "table" and trainer or nil }
	if ns.IsLoggedIn() then GF.Layout() end
end)

-- RIDING_DUE(notice): player can learn riding; show the banner until resolved.
ns.On("RIDING_DUE", function(notice)
	if not F then return end
	notices.riding = notice
	if ns.IsLoggedIn() then GF.Layout() end
end)

-- CLASS_QUEST_READY(notice): a Class guide this character can start now;
-- offer it in a tab until taken or dismissed.
ns.On("CLASS_QUEST_READY", function(notice)
	if not F then return end
	notices.classQuest = notice
	if ns.IsLoggedIn() then GF.Layout() end
end)

-- RIDING_MONEY: player's gold changed while a riding banner is pending; re-render
-- so the "Take me there" button appears/disappears based on affordability.
ns.On("RIDING_MONEY", function()
	if F and notices.riding and ns.IsLoggedIn() then GF.Layout() end
end)

-- CLASS_TRAINED(level): the character visited their class trainer; the
-- reminder has done its job.
ns.On("CLASS_TRAINED", function()
	if not F or not notices.train then return end
	notices.train = nil
	if ns.IsLoggedIn() then GF.Layout() end
end)

-- A trip to a nearby service began or ended: its banner shows or goes.
ns.On("NEARBY_TRIP", function()
	if F and ns.IsLoggedIn() then GF.Layout() end
end)

-- The bags' free slots or their cheapest junk changed (QoL/Space.lua), or
-- the gear offer did (QoL/Wear.lua): their banners come, change or go.
ns.On("BAG_SPACE", function()
	if F and ns.IsLoggedIn() then GF.Layout() end
end)
ns.On("WEAR_OFFER", function()
	if F and ns.IsLoggedIn() then GF.Layout() end
end)

ns.On("SETTING_CHANGED", function(path)
	if not F then return end
	local fn = APPLY[path]
	if fn then
		fn()
	elseif path == "" or path == "ui" then
		applyAll()
	end
end)

ns.RegisterEvent("PLAYER_REGEN_DISABLED", function()
	inCombat = true
	W.HideMenu()
	GF.ApplyVisibility()
	GF.ApplyAlpha(true)
end)

ns.RegisterEvent("PLAYER_REGEN_ENABLED", function()
	inCombat = false
	GF.ApplyVisibility()
	GF.ApplyAlpha(true)
end)

-- Dungeons and raids only: not battlegrounds, arenas or scenarios.
function instanceNow()
	local C = ns.Compat
	if not (C and C.IsInInstance) then return false end
	local ok, inside, kind = pcall(C.IsInInstance)
	return (ok and inside and (kind == "party" or kind == "raid")) and true or false
end

-- Every way in or out passes a loading screen, a /reload included. Going in
-- or out ends a visit, so the next one starts hidden again.
function checkInstance()
	local now = instanceNow()
	if now ~= inInstance then
		openInside = false
		shownOnEntry = ns.Get("ui.shown") and true or false
	end
	inInstance = now
	GF.ApplyVisibility()
end
ns.RegisterEvent("PLAYER_ENTERING_WORLD", checkInstance)
ns.RegisterEvent("ZONE_CHANGED_NEW_AREA", checkInstance)
