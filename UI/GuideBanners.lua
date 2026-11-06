local ADDON, ns = ...
setfenv(1, ns._uiGuideFrameEnv)
---------------------------------------------------------------------------
-- Banners: "Continue automatically" moving on from a finished leveling
-- guide (for SKIPPED_SECONDS); the group quest the live step waits on
-- (`when group`: Skip it, the default, or Do it with a group; it cannot be
-- dismissed); the step the player just skipped, with its undo; why the guide
-- just moved past a quest (while that step's guide and next step are on
-- screen); the step on screen when it is not the live one (skipped: unskip
-- it; looked at with ‹ ›: back to the live step); then the end of a leveling
-- guide reached with steps still open (Start the next guide, GF.EndOffer),
-- then the out-levelled offer
-- (while its guide is active), then the training reminder, the riding one,
-- then a Class guide that just opened (QoL/ClassQuests.lua), then the bags
-- nearly full while the step collects (QoL/Space.lua: delete the cheapest
-- junk, two clicks), then gear worth wearing from loot or a merchant
-- (QoL/Wear.lua: Wear it, Not this one). Taking or dismissing one lets the
-- next through.
---------------------------------------------------------------------------

SKIPPED_SECONDS = 20 -- how long the "Skipped …" notices stay
notices = { questSkip = nil, stepSkip = nil, skipped = nil, away = nil, outlevel = nil, train = nil, riding = nil, classQuest = nil }
GF.notices = notices

-- The step on screen when it is not the live step: { guideId, index, live,
-- skipped }, or nil. Dismissed per step (notices.away holds the key).
function awayNotice(E, g)
	if not (E.GetLiveStep and view and g) then return nil end
	local index, live = E.GetStepIndex(), E.GetLiveStep()
	if not index or index ~= view.index or index == live then return nil end
	if not view.skipped and not live then return nil end
	local a = { guideId = g.id, index = index, live = live, skipped = view.skipped and true or false }
	if notices.away == g.id .. ":" .. index then return nil end
	return a
end

function nearbyTrip()
	local Nearby = ns.Nav and ns.Nav.nearby
	return Nearby and Nearby.Trip and Nearby.Trip() or nil
end

-- The end of the active leveling guide reached while steps are still open
-- (Engine.GuideEnded; the guide-end window's "Back to step N", UI/GuideEnd.lua):
-- what to start from here, { guideId, label = "The Barrens (12–16)" } or
-- { guideId, choose = true } for a route choice; nil with nothing to start,
-- on a finished guide (its complete page offers the next one) or once
-- dismissed (notices.endSeen, for the session).
function GF.EndOffer(E, g)
	if not (g and E and E.GuideEnded and E.GetLiveStep and E.GetLiveStep() ~= nil) then return nil end
	if notices.endSeen == g.id or not E.GuideEnded(g.id) then return nil end
	local G = ns.Guides
	local nextId = E.NextGuide and E.NextGuide(g.id)
	local nextGuide = nextId and G and G.Get and G.Get(nextId)
	if nextGuide then
		local lv = UI.LevelRange(nextGuide.minLevel, nextGuide.maxLevel)
		return { guideId = g.id, label = (nextGuide.title or nextId) .. (lv and (" (" .. lv .. ")") or "") }
	end
	local choice = E.GetRouteChoice and E.GetRouteChoice(g.id)
	if choice and #choice.options >= 2 then return { guideId = g.id, choose = true } end
	return nil
end

function bannerNotice()
	local E = Engine()
	local g = E and E.GetGuide and E.GetGuide()
	-- On the way to a nearby service (Nav/Nearby.lua): the way back first.
	local t = nearbyTrip()
	if t then return "trip", t end
	if notices.questSkip then return "questSkip", notices.questSkip end
	-- "Continue automatically" moved on from a finished leveling guide.
	local c = notices.continued
	if c and g ~= nil and g.id == c.to then return "continued", c end
	-- A quest the route had passed left the log: the guide holds and asks.
	local lq, ltitle
	if E and E.LostQuestion then lq, ltitle = E.LostQuestion() end
	if lq then return "lost", { quest = lq, title = ltitle } end
	local gq, gtitle
	if E and E.GroupQuestion then gq, gtitle = E.GroupQuestion() end
	if gq then return "group", { quest = gq, title = gtitle } end
	local k = notices.stepSkip
	if k and g ~= nil and g.id == k.guideId and (not view or view.index ~= k.step) then return "stepSkip", k end
	local s = notices.skipped
	if s and g ~= nil and g.id == s.guideId and E.GetStepIndex() == s.to then return "skipped", s end
	local a = E and awayNotice(E, g)
	if a then return "away", a end
	-- The live step's accepts would not fit in the quest log (Core/RoutePlan.lua).
	local lo = g ~= nil and view and E.GetLiveStep and view.index == E.GetLiveStep() and ns.RoutePlan and ns.RoutePlan.LogOverflow()
	if lo and notices.logSeen ~= g.id .. ":" .. view.index then
		lo.key = g.id .. ":" .. view.index
		return "log", lo
	end
	local en = GF.EndOffer(E, g)
	if en then return "ended", en end
	local o = notices.outlevel
	if o and g ~= nil and g.id == o.guideId then return "outlevel", o end
	if notices.train then return "train", notices.train end
	if notices.riding then return "riding", notices.riding end
	if notices.classQuest then return "classQuest", notices.classQuest end
	local Q = ns.QoL
	local bags = Q and Q.Space and Q.Space.Banner and Q.Space.Banner()
	if bags then return "bags", bags end
	local wear = Q and Q.Wear and Q.Wear.Offer and Q.Wear.Offer()
	if wear then return "wear", wear end
	return nil
end
GF.BannerNotice = bannerNotice

-- Skip the step on screen (the navigator's Skip, the menu).
function GF.SkipStep()
	local E = Engine()
	if E and E.Skip and E.GetGuide and E.GetGuide() then E.Skip() end
end

-- Look at step i through Prev and Next, which change nothing (Goto would
-- un-skip a skipped step). Steps not for this character are passed over, so
-- it stops at the nearest one it can reach.
function GF.LookAt(i)
	local E = Engine()
	if not (E and E.GetStepIndex and E.Next and E.Prev and type(i) == "number") then return end
	for _ = 1, E.GetStepCount() do
		local at = E.GetStepIndex()
		if not at or at == i then return end
		if at < i then E.Next() else E.Prev() end
		if E.GetStepIndex() == at then return end
	end
end

-- The wheel over the step number: each notch looks one step back (up) or on
-- (down), ten with Shift, changing nothing. SCRUB_BACK seconds after the
-- last notch the window is back on the live step, unless the player has
-- moved on from where the wheel left it.
SCRUB_BACK = 4
scrubAt = scrubAt
function GF.Scrub(delta)
	local E = Engine()
	if not (E and E.GetStepIndex and E.GetLiveStep and E.GetStepIndex()) then return end
	local n = ns.Compat.IsShiftKeyDown() and 10 or 1
	GF.LookAt(math.max(1, math.min(E.GetStepCount(), E.GetStepIndex() + (delta > 0 and -n or n))))
	local at = E.GetStepIndex()
	scrubAt = at
	ns.After(SCRUB_BACK, function()
		local live = E.GetLiveStep()
		if scrubAt == at and E.GetStepIndex() == at and live and at ~= live then
			scrubAt = nil
			GF.LookAt(live)
		end
	end)
end

-- A click on the step number: the steps around the one on screen, done ones
-- dimmed and ticked, the live one marked; a click looks at that step.
OVERVIEW_BEFORE, OVERVIEW_AFTER = 5, 10
function GF.ShowOverview(anchor)
	local E = Engine()
	local at = E and E.GetStepIndex and E.GetStepIndex()
	if not at then return end
	scrubAt = nil
	local live, count, items = E.GetLiveStep(), E.GetStepCount(), {}
	for i = math.max(1, at - OVERVIEW_BEFORE), math.min(count, at + OVERVIEW_AFTER) do
		local v = E.GetStepView(i)
		if v and v.status ~= "na" then
			local title = (v.title and v.title ~= "") and v.title or string.format(L["Step %d"], i)
			items[#items + 1] = {
				text = i .. "  " .. title,
				icon = i == live and "chevron-right" or nil,
				checked = v.status == "done" or nil,
				color = (v.status == "done" or v.status == "skipped") and "textMuted" or (i == at and "accent" or nil),
				onClick = function() GF.LookAt(i) end,
			}
		end
	end
	if #items > 0 then W.ShowMenu(anchor, items, { point = "TOPLEFT", relPoint = "BOTTOMLEFT", minWidth = 260 }) end
end

-- PLAYER_SKIPPED_STEP(guideId, step): from the window or /polestar skip, the
-- banner offers the undo for SKIPPED_SECONDS.
ns.On("PLAYER_SKIPPED_STEP", function(guideId, step)
	if not F or type(step) ~= "number" then return end
	local G = ns.Guides
	local g = G and G.Get and G.Get(guideId)
	local st = g and g.steps and g.steps[step]
	local notice = { guideId = guideId, step = step, title = st and st.title }
	notices.stepSkip = notice
	if ns.IsLoggedIn() then GF.Layout() end
	ns.After(SKIPPED_SECONDS, function()
		if notices.stepSkip == notice then
			notices.stepSkip = nil
			if F and ns.IsLoggedIn() then GF.Layout() end
		end
	end)
end)

-- PLAYER_SKIPPED_QUEST(questID, title): a quest skipped from its line's
-- menu; the card has moved on, so the banner offers the undo for
-- SKIPPED_SECONDS (the quest's accept keeps its own Undo).
ns.On("PLAYER_SKIPPED_QUEST", function(questID, title)
	if not F or type(questID) ~= "number" then return end
	local notice = { quest = questID, title = title }
	notices.questSkip = notice
	if ns.IsLoggedIn() then GF.Layout() end
	ns.After(SKIPPED_SECONDS, function()
		if notices.questSkip == notice then
			notices.questSkip = nil
			if F and ns.IsLoggedIn() then GF.Layout() end
		end
	end)
end)

function trainerPlace(t)
	local zone = t.map and UI.MapName(t.map) or nil
	if t.npcName and zone then return t.npcName .. ", " .. zone end
	return t.npcName or zone
end

-- One link-style action in the banner (label, chevron).
function placeLink(link, text, x, y)
	link.Label:SetText(text)
	link:SetWidth(floor(link.Label:GetStringWidth() + 16 + 0.5))
	link:ClearAllPoints()
	link:SetPoint("TOPLEFT", banner.Text, "BOTTOMLEFT", x, y)
	link:Show()
	return link:GetWidth()
end

function GF.LayoutBanner(width)
	local kind, n = bannerNotice()
	banner.psKind = kind
	banner.Jump.psDefault = (kind == "group" or kind == "lost") or nil -- the gamepad's first focus (UI/GamepadGuide.lua)
	banner.Text:SetWidth(width - PAD * 2 - 21 - 24)
	banner.Later:Hide()
	if kind == "skipped" then
		banner.Icon:SetTexture(Theme.Media("skip"))
		local lines = {}
		for i, k in ipairs(n.skips) do
			lines[i] = string.format(L["Skipped %s"], k.title or "") .. (k.text and ("  \194\183  " .. k.text) or "")
		end
		banner.Text:SetText(table.concat(lines, "\n"))
		banner.Jump:Hide()
		banner.Close:Show()
		local h = floor(9 + banner.Text:GetStringHeight() + 9 + 0.5)
		banner:SetHeight(h)
		return h
	elseif kind == "continued" then
		-- "Durotar complete — continuing with The Barrens", for SKIPPED_SECONDS.
		banner.Icon:SetTexture(Theme.Media("check"))
		banner.Text:SetText(string.format(L["%s complete \226\128\148 continuing with %s"], n.fromTitle, n.toTitle))
		banner.Jump:Hide()
		banner.Close:Show()
		local h = floor(9 + banner.Text:GetStringHeight() + 9 + 0.5)
		banner:SetHeight(h)
		return h
	elseif kind == "questSkip" then
		banner.Icon:SetTexture(Theme.Media("skip"))
		banner.Text:SetText(string.format(L["Skipped %s"], n.title or L["the quest"]) .. "  \194\183  " .. L["and the quests that follow from it"])
		placeLink(banner.Jump, L["Undo"], 0, -4)
		banner.Close:Show()
	elseif kind == "lost" then
		banner.Icon:SetTexture(Theme.Media("icon-accept"))
		banner.Text:SetText(string.format(L["%s is no longer in your quest log."], n.title or L["the quest"]) .. "\n" .. L["The guide stays here until you choose."])
		local w = placeLink(banner.Jump, L["Go back for it"], 0, -4)
		placeLink(banner.Later, L["Skip it and what follows"], w + 10, -4)
		banner.Close:Hide()
	elseif kind == "log" then
		banner.Icon:SetTexture(Theme.Media("icon-accept"))
		local text = string.format(L["Quest log full: this step takes %d, and there is room for %d."], n.take, n.free)
		local names = {}
		for i, d in ipairs(n.drop) do names[i] = d.title or ("#" .. d.quest) end
		if #names > 0 then text = text .. "\n" .. string.format(L["Room to make: %s"], table.concat(names, ", ")) end
		banner.Text:SetText(text)
		placeLink(banner.Jump, L["Make room"], 0, -4)
		banner.Close:Show()
	elseif kind == "group" then
		banner.Icon:SetTexture(Theme.Media("icon-kill"))
		banner.Text:SetText(string.format(L["Group quest: %s"], n.title or "") .. "\n" .. L["It needs a group. Skip it and the guide keeps to the solo route."])
		-- Skip is the default answer: the accent link, the banner's main action.
		local w = placeLink(banner.Jump, L["Skip it"], 0, -4)
		placeLink(banner.Later, L["Do it with a group"], w + 10, -4)
		banner.Close:Hide()
	elseif kind == "stepSkip" then
		banner.Icon:SetTexture(Theme.Media("skip"))
		local what = string.format(L["Step %d"], n.step)
		if n.title and n.title ~= "" then what = what .. "  \194\183  " .. n.title end
		banner.Text:SetText(string.format(L["Skipped %s"], what))
		placeLink(banner.Jump, L["Undo"], 0, -4)
		banner.Close:Show()
	elseif kind == "away" then
		banner.Icon:SetTexture(Theme.Media(n.skipped and "skip" or (n.live and n.index > n.live and "chevron-right" or "chevron-left")))
		if n.skipped then
			banner.Text:SetText(L["You skipped this step."])
			placeLink(banner.Jump, L["Unskip it"], 0, -4)
		else
			banner.Text:SetText(string.format(n.index > n.live and L["Looking ahead. The guide is at step %d."]
				or L["Looking back. The guide is at step %d."], n.live))
			placeLink(banner.Jump, string.format(L["Back to step %d"], n.live), 0, -4)
		end
		banner.Close:Show()
	elseif kind == "trip" then
		banner.Icon:SetTexture(Theme.Media("icon-goto"))
		banner.Text:SetText(string.format(L["On the way to %s (%s)."], n.name or "", n.label or ""))
		placeLink(banner.Jump, L["Back to the guide"], 0, -4)
		banner.Close:Hide()
	elseif kind == "ended" then
		-- The end reached with steps still open: the next guide, when the player wants it.
		banner.Icon:SetTexture(Theme.Media("check"))
		banner.Text:SetText(L["You've reached the end of this guide."])
		placeLink(banner.Jump, n.choose and L["Choose where to go next"] or string.format(L["Start %s"], n.label), 0, -4)
		banner.Close:Show()
	elseif kind == "outlevel" then
		banner.Icon:SetTexture(Theme.Media("icon-level"))
		banner.Text:SetText(L["You have outlevelled this guide."])
		-- The suggested guide is one of a route choice: offer the choice.
		local E = Engine()
		n.choiceFrom = n.to and E and E.RouteChoiceFor and E.RouteChoiceFor(n.to) or nil
		placeLink(banner.Jump, n.choiceFrom and L["Choose where to level next"] or string.format(L["Jump to %s"], n.title or ""), 0, -4)
		banner.Close:Show()
	elseif kind == "train" then
		banner.Icon:SetTexture(Theme.Media("icon-train"))
		local class = UI.PlayerClass and UI.PlayerClass() or nil
		local parts = { string.format(L["Level %d"], n.level or 0),
			class and string.format(L["new %s skills"], class) or L["new class skills"] }
		local place = n.trainer and trainerPlace(n.trainer)
		if place then parts[#parts + 1] = place end
		local text = table.concat(parts, "  \194\183  ")
		-- How far the guide's own training stop is, from the live step (#668);
		-- on that step itself, the step says it.
		local E = Engine()
		local steps, title
		if E and E.GuideTrainStop then steps, title = E.GuideTrainStop() end
		if steps == false then
			text = text .. "\n" .. L["The guide has no class training ahead."]
		elseif steps and steps > 1 then
			text = text .. "\n" .. string.format(L["The guide trains you in %d steps"], steps)
				.. (title and title ~= "" and (" (" .. title .. ")") or "") .. "."
		end
		banner.Text:SetText(text)
		local w = placeLink(banner.Jump, L["Show"], 0, -4)
		placeLink(banner.Later, L["Later"], w + 10, -4)
		banner.Close:Hide()
	elseif kind == "riding" then
		banner.Icon:SetTexture(Theme.Media("icon-mount"))
		local copper = GetMoney and GetMoney() or 0
		-- Affordability from pre-computed cost in the notice (class mounts are free).
		local cost = n.cost or 0
		local canAfford = n.classKind ~= nil or copper >= cost
		local DOT = "  \194\183  "
		local title, body
		if n.classKind == "WARLOCK" then
			title = L["Level 40: class mount (Warlock)"]
			body  = L["Summon Felsteed quest chain (Strahad Farsan, Ratchet); riding trainer otherwise."]
		elseif n.classKind == "PALADIN" then
			title = L["Level 40: class mount (Paladin)"]
			body  = L["Tome of Nobility quest chain (Lord Grayson Shadowbreaker, Stormwind); riding trainer otherwise."]
		else
			title = n.tier == 1 and L["Level 40: you can learn to ride"] or L["Level 60: Journeyman Riding"]
			local tierName = n.tier == 1 and L["Apprentice Riding"] or L["Journeyman Riding"]
			local baseGold = n.tier == 1 and L["100 g"] or L["1,000 g"]
			local bodyParts = { tierName .. DOT .. baseGold }
			-- Discount: always mention; "Honored: Xg" when standing is confirmed.
			local C = ns.Compat
			local standing = n.factionID and C and C.GetFactionStanding and C.GetFactionStanding(n.factionID)
			if standing and standing >= 5 then
				-- Discounted gold: tier 1 = 90 g, tier 2 = 900 g.
				local discountedGold = n.tier == 1 and 90 or 900
				bodyParts[#bodyParts + 1] = string.format(L["Honored: %d g"], discountedGold)
			else
				bodyParts[#bodyParts + 1] = L["10% off at Honored"]
			end
			-- Balance: gold-only to match "100 g" / "1,000 g" style.
			bodyParts[#bodyParts + 1] = string.format(L["You have %d g."], floor(copper / 10000))
			body = table.concat(bodyParts, DOT)
		end
		banner.Text:SetText(title .. "\n" .. body)
		if canAfford then
			placeLink(banner.Jump, L["Take me there"], 0, -4)
		else
			banner.Jump:Hide()
		end
		banner.Later:Hide()
		banner.Close:Show()
	elseif kind == "classQuest" then
		banner.Icon:SetTexture(Theme.Media("icon-train"))
		local title = string.format(L["Class quest ready: %s"], n.title or "")
		banner.Text:SetText(n.why and (title .. "\n" .. n.why) or title)
		local w = placeLink(banner.Jump, L["Open in a tab"], 0, -4)
		placeLink(banner.Later, L["Later"], w + 10, -4)
		banner.Close:Show()
	elseif kind == "bags" then
		banner.Icon:SetTexture(Theme.Media("icon-collect"))
		local title = n.free == 0 and L["Your bags are full."]
			or string.format(n.free == 1 and L["Bags nearly full: %d slot left."] or L["Bags nearly full: %d slots left."], n.free)
		local j, Q = n.junk, ns.QoL
		if j then
			local worth = j.value < math.huge and Q.Money(j.value) or "?"
			banner.Text:SetText(title .. "\n" .. string.format(L["Cheapest junk: %s (%s)"], Q.Space.ItemText(j), worth))
			placeLink(banner.Jump, n.armed and L["Click again to delete it"] or L["Delete it"], 0, -4)
		else
			banner.Text:SetText(title .. "\n" .. L["No junk to make room with. Ctrl+Alt-click an item to mark it as junk."])
			banner.Jump:Hide()
		end
		banner.Close:Show()
	elseif kind == "wear" then
		banner.Icon:SetTexture(Theme.Media("icon-use"))
		local G = ns.Gear
		local parts = { string.format(L["Upgrade: %s"], n.link or "") }
		local gain = n.pct and G and G.GainText and G.GainText(n.pct)
		if gain then parts[#parts + 1] = gain end
		local slot = G and G.SlotName and G.SlotName(n.slot)
		if slot then parts[#parts + 1] = slot end
		banner.Text:SetText(table.concat(parts, "  \194\183  "))
		local w = placeLink(banner.Jump, L["Wear it"], 0, -4)
		placeLink(banner.Later, L["Not this one"], w + 10, -4)
		banner.Close:Show()
	end
	local h = floor(9 + banner.Text:GetStringHeight() + 4 + 18 + 9 + 0.5)
	banner:SetHeight(h)
	return h
end

-- The banner's main action: undo the skip, unskip the step on screen or go
-- back to the live step, load the suggested guide into the current tab, or
-- point the arrow at the trainer (until the step changes).
function GF.TakeBanner()
	local kind, n = bannerNotice()
	local E = Engine()
	if kind == "trip" then
		ns.Nav.nearby.EndTrip()
	elseif kind == "questSkip" then
		notices.questSkip = nil
		if E and E.SkipQuest then E.SkipQuest(n.quest, false) end
	elseif kind == "lost" then
		if E and E.AnswerLost then E.AnswerLost(n.quest, "back") end
	elseif kind == "log" then
		if UI.ShowQuestRoom then UI.ShowQuestRoom() end
	elseif kind == "group" then
		if E and E.AnswerGroup then E.AnswerGroup(n.quest, "skip") end
	elseif kind == "stepSkip" then
		notices.stepSkip = nil
		if E and E.Unskip then E.Unskip(n.step) end
	elseif kind == "away" then
		if n.skipped then
			if E and E.Unskip then E.Unskip(n.index) end
		elseif E and E.Goto and n.live then
			E.Goto(n.live)
		end
	elseif kind == "ended" then
		if n.choose then
			UI.ShowRouteChoice(n.guideId)
		elseif E and E.StartNext then
			E.StartNext(n.guideId)
		end
	elseif kind == "outlevel" then
		notices.outlevel = nil
		-- A route choice opens the choice window, which loads the zone picked.
		if not (n.choiceFrom and UI.ShowRouteChoice(n.choiceFrom)) and E and E.SetGuide and n.to then
			E.SetGuide(n.to)
		end
	elseif kind == "train" then
		notices.train = nil
		local t, nav2 = n.trainer, ns.Nav
		if t and t.map and t.x and nav2 and nav2.SetTarget then
			nav2.SetTarget(t.map, t.x, t.y, t.npcName or L["Class trainer"], t.f, "trainer", t.z)
		end
	elseif kind == "riding" then
		notices.riding = nil
		local t, nav2 = n.trainer, ns.Nav
		if t and t.map and t.x and nav2 and nav2.SetTarget then
			nav2.SetTarget(t.map, t.x, t.y, t.npcName or L["Riding trainer"], t.f, "trainer")
		end
		local R = ns.QoL and ns.QoL.Riding
		if R and R.OnResolve then R.OnResolve(n.tier) end
	elseif kind == "classQuest" then
		notices.classQuest = nil
		if E and E.OpenTab then E.OpenTab(n.guideId) end
		local CQ = ns.QoL and ns.QoL.ClassQuests
		if CQ and CQ.Resolve then CQ.Resolve(n.guideId) end
	elseif kind == "bags" then
		-- The first click arms the item, the second deletes it.
		ns.QoL.Space.Press()
	elseif kind == "wear" then
		ns.QoL.Wear.Take()
	end
	GF.Layout()
end

-- The banner's second action: Do it with a group for a group quest, Not
-- this one for a gear offer (remembered), else Later (dismiss; a Class
-- guide: until a higher level).
function GF.LaterBanner()
	local kind, n = bannerNotice()
	local E = Engine()
	if kind == "group" then
		if E and E.AnswerGroup then E.AnswerGroup(n.quest, "do") end
		GF.Layout()
	elseif kind == "lost" then
		if E and E.AnswerLost then E.AnswerLost(n.quest, "skip") end
		GF.Layout()
	elseif kind == "wear" then
		ns.QoL.Wear.Decline()
		GF.Layout()
	else
		GF.DismissBanner(true)
	end
end

-- Dismiss the visible notice (training: until the next due level; a step on
-- screen that is not the live one: until another step is; a Class guide: for
-- good, or with `later` (the Later link) until a higher level; the bags:
-- until they have room again; a gear offer: that copy only).
function GF.DismissBanner(later)
	local kind, n = bannerNotice()
	if kind == "trip" then
		ns.Nav.nearby.EndTrip()
	elseif kind == "away" or kind == "group" or kind == "lost" then
		-- a group quest or a lost one is answered, never dismissed
	elseif kind == "log" then
		notices.logSeen = n.key
	elseif kind == "riding" then
		local R = ns.QoL and ns.QoL.Riding
		if R and R.OnResolve then R.OnResolve(n.tier) end
		notices.riding = nil
	elseif kind == "classQuest" then
		notices.classQuest = nil
		local CQ = ns.QoL and ns.QoL.ClassQuests
		if CQ and CQ.Resolve then CQ.Resolve(n.guideId, later == true) end
	elseif kind == "bags" then
		ns.QoL.Space.Dismiss()
	elseif kind == "wear" then
		ns.QoL.Wear.Dismiss()
	elseif kind == "ended" then
		notices.endSeen = n.guideId
	elseif kind then
		notices[kind] = nil
	end
	GF.Layout()
end

---------------------------------------------------------------------------
-- Layout: positions and heights from the current content and width. Called
-- on render and on every step of a drag-resize, so it only measures and
-- anchors; it never fetches views or builds strings.
---------------------------------------------------------------------------

function stripShown()
	return strip.psHasTabs and not compact()
end

function layoutCard(width)
	local y = 0
	local cw = width - PAD * 2
	-- The class-quest card (UI/ClassCard.lua) above the person and the goals.
	local CC = UI.ClassCard
	if CC then y = CC.Layout(width) end
	if person:IsShown() then
		local nameW = cw - ICON - 10
		person.Name:SetWidth(nameW)
		person.Where:SetWidth(nameW)
		local h = 10 + person.Name:GetStringHeight()
		if person.Where:IsShown() then h = h + 3 + person.Where:GetStringHeight() end
		h = floor(h + 8 + 0.5)
		person:SetHeight(h)
		person:ClearAllPoints()
		person:SetPoint("TOPLEFT", card, "TOPLEFT", 0, -y)
		person:SetPoint("TOPRIGHT", card, "TOPRIGHT", 0, -y)
		y = y + h
	end
	for i = 1, #rows do
		local r = rows[i]
		if r:IsShown() then
			local h = measureRow(r, width)
			r:SetHeight(h)
			r:ClearAllPoints()
			r:SetPoint("TOPLEFT", card, "TOPLEFT", 0, -y)
			r:SetPoint("TOPRIGHT", card, "TOPRIGHT", 0, -y)
			y = y + h
		end
	end
	local tip = card.Tip
	if tip:IsShown() then
		tip.Text:SetWidth(cw - 18)
		tip.Text:SetWordWrap(tipOpen)
		tip.psOpen = tipOpen
		local th = tipOpen and tip.Text:GetStringHeight() or min(tip.Text:GetStringHeight(), tip.Text:GetLineHeight())
		local h = floor(6 + th + 6 + 0.5)
		-- The step's picture, under the opened tip: as wide as the text
		-- column, its aspect kept, no taller than PICTURE_MAX_H.
		local pic = tipOpen and tip.psImage or nil
		if pic then
			local aspect = (pic.w and pic.h) and pic.w / pic.h or PICTURE_ASPECT
			local iw = max(1, width - TEXT_X - PAD)
			local ih = iw / aspect
			if ih > PICTURE_MAX_H then ih, iw = PICTURE_MAX_H, PICTURE_MAX_H * aspect end
			iw, ih = floor(iw + 0.5), floor(ih + 0.5)
			tip.Image:SetSize(iw, ih)
			tip.Image:ClearAllPoints()
			tip.Image:SetPoint("TOPLEFT", tip, "TOPLEFT", TEXT_X, -h)
			tip.Image:Show()
			h = h + ih + 6
		else
			tip.Image:Hide()
		end
		tip:SetHeight(h)
		tip:ClearAllPoints()
		tip:SetPoint("TOPLEFT", card, "TOPLEFT", 0, -(y + 2))
		tip:SetPoint("TOPRIGHT", card, "TOPRIGHT", 0, -(y + 2))
		y = y + 2 + h
	end
	y = y + 6
	card:SetHeight(y)
	return y
end

function layoutAfter(width)
	after.Text:SetWidth(width - PAD * 2 - after.Count:GetStringWidth() - 12)
	after:SetHeight(28)
	return 28
end

function layoutUpnext(width)
	upnext.Toggle:ClearAllPoints()
	upnext.Toggle:SetPoint("TOPLEFT", upnext, "TOPLEFT", 0, 0)
	upnext.Toggle:SetPoint("TOPRIGHT", upnext, "TOPRIGHT", 0, 0)
	local y = -UP_TOGGLE
	if upcomingOpen() then
		for i = 1, #upRows do
			local r = upRows[i]
			if r:IsShown() then
				r.Text:SetWidth(width - TEXT_X - 14 - PAD)
				r:ClearAllPoints()
				r:SetPoint("TOPLEFT", upnext, "TOPLEFT", 0, y)
				r:SetPoint("TOPRIGHT", upnext, "TOPRIGHT", 0, y)
				y = y - UP_ROW
			end
		end
		y = y - 6
	end
	upnext:SetHeight(-y)
	return -y
end

function layoutAlong(width)
	local y = -UP_TOGGLE
	for i = 1, #alongRows do
		local r = alongRows[i]
		if r:IsShown() then
			r.Text:SetWidth(width - TEXT_X - 14 - PAD)
			r:ClearAllPoints()
			r:SetPoint("TOPLEFT", along, "TOPLEFT", 0, y)
			r:SetPoint("TOPRIGHT", along, "TOPRIGHT", 0, y)
			y = y - UP_ROW
		end
	end
	y = y - 6
	along:SetHeight(-y)
	return -y
end

function layoutEmpty(width)
	local cw = width - PAD * 4
	local y = -26
	empty.Glyph:ClearAllPoints()
	empty.Glyph:SetPoint("TOP", empty, "TOP", 0, y)
	y = y - 36 - 14
	empty.Title:SetWidth(cw)
	empty.Title:ClearAllPoints()
	empty.Title:SetPoint("TOP", empty, "TOP", 0, y)
	y = y - empty.Title:GetStringHeight() - 8
	empty.Text:SetWidth(cw)
	empty.Text:ClearAllPoints()
	empty.Text:SetPoint("TOP", empty, "TOP", 0, y)
	y = y - empty.Text:GetStringHeight() - 18
	if empty.Primary:IsShown() then
		empty.Primary:ClearAllPoints()
		empty.Primary:SetPoint("TOP", empty, "TOP", 0, y)
		y = y - empty.Primary:GetHeight() - 8
	end
	if empty.Secondary:IsShown() then
		empty.Secondary:ClearAllPoints()
		empty.Secondary:SetPoint("TOP", empty, "TOP", 0, y)
		y = y - empty.Secondary:GetHeight()
	end
	y = y - 24
	empty:SetHeight(-y)
	return -y
end

-- Place `frame` in the body at y; returns the new y.
function stack(frame, y, h)
	frame:ClearAllPoints()
	frame:SetPoint("TOPLEFT", body, "TOPLEFT", 0, -y)
	frame:SetPoint("TOPRIGHT", body, "TOPRIGHT", 0, -y)
	return y + h
end

-- The journey (UI/JourneyPanel.lua) right under the focus it leads to;
-- never in compact mode. Returns the new y.
function stackJourney(y, width)
	local J = UI.JourneyPanel
	local jf = J and J.frame
	if not jf then return y end
	if jf.psHas and not compact() then
		jf:Show()
		return stack(jf, y, J.Layout(width))
	end
	jf:Hide()
	return y
end

function placeBars(showFoot)
	local flip = barsBottom()
	strip:ClearAllPoints()
	nav:ClearAllPoints()
	body:ClearAllPoints()
	foot:ClearAllPoints()
	band:ClearAllPoints()
	strip.Rule:ClearAllPoints()
	nav.Rule:ClearAllPoints()
	local edge = flip and "TOP" or "BOTTOM"
	strip.Rule:SetPoint(edge .. "LEFT", strip, edge .. "LEFT", 0, 0)
	strip.Rule:SetPoint(edge .. "RIGHT", strip, edge .. "RIGHT", 0, 0)
	nav.Rule:SetPoint(edge .. "LEFT", nav, edge .. "LEFT", 0, 0)
	nav.Rule:SetPoint(edge .. "RIGHT", nav, edge .. "RIGHT", 0, 0)
	if flip then
		strip:SetPoint("BOTTOMLEFT", F, "BOTTOMLEFT", 0, 0)
		strip:SetPoint("BOTTOMRIGHT", F, "BOTTOMRIGHT", 0, 0)
		nav:SetPoint("BOTTOMLEFT", strip, "TOPLEFT", 0, 0)
		nav:SetPoint("BOTTOMRIGHT", strip, "TOPRIGHT", 0, 0)
		foot:SetPoint("BOTTOMLEFT", nav, "TOPLEFT", 0, 0)
		foot:SetPoint("BOTTOMRIGHT", nav, "TOPRIGHT", 0, 0)
		body:SetPoint("TOPLEFT", F, "TOPLEFT", 0, 0)
		body:SetPoint("TOPRIGHT", F, "TOPRIGHT", 0, 0)
		band:SetPoint("BOTTOMLEFT", F, "BOTTOMLEFT", 1, 1)
		band:SetPoint("BOTTOMRIGHT", F, "BOTTOMRIGHT", -1, 1)
	else
		strip:SetPoint("TOPLEFT", F, "TOPLEFT", 0, 0)
		strip:SetPoint("TOPRIGHT", F, "TOPRIGHT", 0, 0)
		nav:SetPoint("TOPLEFT", strip, "BOTTOMLEFT", 0, 0)
		nav:SetPoint("TOPRIGHT", strip, "BOTTOMRIGHT", 0, 0)
		body:SetPoint("TOPLEFT", nav, "BOTTOMLEFT", 0, 0)
		body:SetPoint("TOPRIGHT", nav, "BOTTOMRIGHT", 0, 0)
		foot:SetPoint("BOTTOMLEFT", F, "BOTTOMLEFT", 0, 0)
		foot:SetPoint("BOTTOMRIGHT", F, "BOTTOMRIGHT", 0, 0)
		band:SetPoint("TOPLEFT", F, "TOPLEFT", 1, -1)
		band:SetPoint("TOPRIGHT", F, "TOPRIGHT", -1, -1)
	end
	for _, b in ipairs(tabButtons) do
		b.Bar:ClearAllPoints()
		b.Bar:SetPoint(edge .. "LEFT", b, edge .. "LEFT", 0, 0)
		b.Bar:SetPoint(edge .. "RIGHT", b, edge .. "RIGHT", 0, 0)
	end
end

function GF.Layout()
	if not F then return end
	local width = F:GetWidth()
	local isCompact = compact()
	local showStrip = stripShown()
	strip:SetShown(showStrip)
	strip:SetHeight(showStrip and TAB_H or 0.01)
	-- The guide's title sits in the navigator only when no tab names it.
	local steps = nav.Steps:IsShown()
	nav.Title:SetShown((not showStrip or not steps) and nav.Title:GetText() ~= nil and nav.Title:GetText() ~= "")
	local skipW = nav.Skip:IsShown() and nav.Skip:GetWidth() + 4 or 0
	local reportW = nav.Report:IsShown() and nav.Report:GetWidth() or 0
	local nearbyW = nav.Nearby:IsShown() and nav.Nearby:GetWidth() or 0
	nav.Title:SetWidth(max(40, width - PAD - (steps and nav.Steps:GetWidth() + 12 or 0) - 24 - 8 - 8 - skipW - reportW - nearbyW))
	card:SetWidth(width)

	local y = 0
	if bannerNotice() and state ~= "noguide" and state ~= "noguides" then
		y = stack(banner, y, GF.LayoutBanner(width))
		banner:Show()
	else
		banner:Hide()
		banner.Jump.psDefault = nil
	end
	if state == "steps" then
		local h = layoutCard(width)
		-- The card animates its own offset; keep its anchor's base in step.
		if Anim.IsRunning(card, "offset") then
			card.psAnchor[5] = -y
		else
			Anim.Anchor(card, "TOPLEFT", body, "TOPLEFT", 0, -y)
		end
		y = y + h
		y = stackJourney(y, width)
		if after:IsShown() then y = stack(after, y, layoutAfter(width)) end
		if along:IsShown() then y = stack(along, y, layoutAlong(width)) end
		if upnext:IsShown() then y = stack(upnext, y, layoutUpnext(width)) end
	else
		y = stack(empty, y, layoutEmpty(width))
		y = stackJourney(y, width)
	end
	if GF.party.psText and not isCompact and state == "steps" then
		GF.party:Show()
		y = stack(GF.party, y, GF.party:GetHeight())
	else
		GF.party:Hide()
	end
	if GF.xp.psHas and not isCompact and state == "steps" then
		GF.xp:Show()
		y = stack(GF.xp, y, GF.xp:GetHeight())
	else
		GF.xp:Hide()
	end
	body:SetHeight(max(1, y))
	local showFoot = state == "steps" or state == "complete"
	foot:SetShown(showFoot)
	local stripH = showStrip and TAB_H or 0
	F:SetHeight(floor(stripH + NAV_H + y + (showFoot and PROG_H or 0) + 0.5))
	placeBars(showFoot)
	band:SetHeight(stripH + NAV_H)
	local x0, x1, y0, y1 = Theme.BandCoords(width - 2, stripH + NAV_H, 30)
	if barsBottom() then y0, y1 = y1, y0 end
	band:SetTexCoord(x0, x1, y0, y1)
	if showStrip then GF.RenderTabs() end
	GF.PaintProgress(false)
end

---------------------------------------------------------------------------
-- Progress
---------------------------------------------------------------------------

function progress()
	local E = Engine()
	if not (E and E.GetProgress and E.GetGuide and E.GetGuide()) then return 0, 0 end
	local done, total = E.GetProgress()
	return done or 0, total or 0
end

function GF.PaintProgress(animate)
	local done, total = progress()
	local frac = total > 0 and min(1, done / total) or 0
	foot.Pct:SetText(floor(frac * 100 + 0.5) .. "%")
	local w = F:GetWidth() - PAD * 2 - 44
	foot.Line:SetWidth(max(1, w))
	W.SetProgress(foot.Line, frac, w, animate)
	GF.PaintStatus(frac, foot.Pct:GetText())
	foot.psDone, foot.psTotal = done, total
end

