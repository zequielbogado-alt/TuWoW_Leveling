-- ============================================================================
-- TuWoW_Leveling — UI/Tracker/TrackerRow.lua
-- Discrete Quest Card component redesigned to match the reference mock:
-- Active Card: Deep warm amber/gold gradient, bright gold border, glowing '!' icon,
-- bright gold title, gold coordinates "X, Y >", and clean ivory description.
-- Pending Cards: Dark obsidian background, metallic silver border, action icon,
-- ivory title, ice-blue coordinates "X, Y >", and muted silver description.
-- ============================================================================

local ADDON, ns = ...
local Tracker = ns.UI.Tracker
local Skin = Tracker.Skin
local L = ns.L

local RowPool = {}
Tracker.RowPool = RowPool

local rows = {}
local stickyRows = {}

local floor, ceil, max, min, format = math.floor, math.ceil, math.max, math.min, string.format

---------------------------------------------------------------------------
-- 1. Flash Animation Driver (Progress & Completion Glow)
---------------------------------------------------------------------------

local activeFlashes = {}
local flashDriver = CreateFrame("Frame")
flashDriver:Hide()

flashDriver:SetScript("OnUpdate", function(self, elapsed)
	local any = false
	for row, state in pairs(activeFlashes) do
		state.t = state.t + elapsed
		local p = state.t / state.dur
		if p >= 1 or not row:IsVisible() then
			row.Flash:Hide()
			row.Flash:SetAlpha(0)
			activeFlashes[row] = nil
		else
			any = true
			local a
			if p < 0.25 then
				a = (p / 0.25) * state.peak
			else
				a = (1 - (p - 0.25) / 0.75) * state.peak
			end
			row.Flash:SetAlpha(max(0, min(1, a)))
		end
	end
	if not any then self:Hide() end
end)

function RowPool.PlayFlash(row, isComplete)
	if not row or not row.Flash or (ns.Get and ns.Get("ui.reduceMotion")) then return end
	if isComplete then
		row.Flash:SetVertexColor(0.45, 1.00, 0.58, 1)
		activeFlashes[row] = { t = 0, dur = 0.75, peak = 0.75 }
	else
		row.Flash:SetVertexColor(1.00, 0.88, 0.38, 1)
		activeFlashes[row] = { t = 0, dur = 0.45, peak = 0.50 }
	end
	row.Flash:SetAlpha(0.1)
	row.Flash:Show()
	flashDriver:Show()
end

---------------------------------------------------------------------------
-- 2. Goal Interaction & Friendly Tooltip
---------------------------------------------------------------------------

local function focusGoalWaypoint(goal, isSticky)
	if not goal then return end
	local E = ns.Engine
	if isSticky and goal.step and E and E.PinAlong then
		pcall(E.PinAlong, goal.step, goal.index)
		return
	end
	if E and E.FocusGoal and goal.index then
		local ok = pcall(E.FocusGoal, goal.index)
		if ok then return end
	end
	if goal.map and goal.x and goal.y and ns.Nav and ns.Nav.SetTarget then
		ns.Nav.SetTarget({
			map   = goal.map,
			x     = goal.x,
			y     = goal.y,
			label = (ns.UI and ns.UI.PlainGoalText and ns.UI.PlainGoalText(goal)) or goal.text or L["Objective"],
			kind  = goal.t or "goto",
		})
	end
end

local function showRowTooltip(row)
	local g = row.goal
	if not g then return end
	GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
	GameTooltip:ClearLines()

	local title = (ns.UI and ns.UI.PlainGoalText and ns.UI.PlainGoalText(g)) or g.text or ""
	GameTooltip:AddLine(title, 1.0, 0.85, 0.29, true)

	if g.quest then
		local qTitle = ns.UI and ns.UI.QuestTitle and ns.UI.QuestTitle(g.quest)
		if qTitle and qTitle ~= "" then
			GameTooltip:AddLine(format("%s: %s", L["Quest"], qTitle), 0.90, 0.86, 0.76, true)
		end
	end

	if g.map and g.x and g.y then
		local zone = (ns.UI and ns.UI.MapName and ns.UI.MapName(g.map)) or ""
		local coord = format("%.1f, %.1f", g.x, g.y)
		if zone ~= "" then
			GameTooltip:AddLine(format("%s (%s)", zone, coord), 0.55, 0.82, 1.00)
		else
			GameTooltip:AddLine(coord, 0.55, 0.82, 1.00)
		end
	end

	if g.note and g.note ~= "" then
		GameTooltip:AddLine(" ")
		GameTooltip:AddLine(g.note, 0.95, 0.90, 0.72, true)
	end

	GameTooltip:AddLine(" ")
	if g.map and g.x and g.y then
		GameTooltip:AddLine("|cffffd100" .. L["Click"] .. ":|r " .. L["Point the arrow here"], 0.78, 0.75, 0.68)
	end
	if g.quest then
		GameTooltip:AddLine("|cffffd100Shift + " .. L["Click"] .. ":|r " .. L["Link quest in chat"], 0.78, 0.75, 0.68)
	end
	if g.optional and g.status ~= "done" then
		GameTooltip:AddLine("|cffffd100" .. L["Right-click"] .. ":|r " .. L["Skip this optional goal"], 0.78, 0.75, 0.68)
	end
	GameTooltip:Show()
end

local function onRowClick(self, button)
	local g = self.goal
	if not g then return end

	if IsShiftKeyDown() and g.quest then
		local link = (GetQuestLink and GetQuestLink(g.quest))
			or (ns.UI and ns.UI.QuestTitle and ns.UI.QuestTitle(g.quest))
		if link and ChatEdit_GetActiveWindow and ChatEdit_GetActiveWindow() then
			ChatEdit_InsertLink(link)
			return
		end
	end

	if button == "RightButton" then
		if g.optional and ns.Engine and ns.Engine.DismissGoal and g.index then
			ns.Engine.DismissGoal(g.index)
			return
		elseif Tracker.ShowContextMenu then
			Tracker.ShowContextMenu(self)
			return
		end
	end

	focusGoalWaypoint(g, self.isSticky)
end

---------------------------------------------------------------------------
-- 3. Card Construction
---------------------------------------------------------------------------

local function createCard(parent)
	local r = CreateFrame("Button", nil, parent)
	r:SetHeight(40)
	r:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	-- Outer Card Backdrop (Beveled border & solid dark core)
	r:SetBackdrop({
		bgFile = Skin.WHITE,
		edgeFile = Skin.WHITE,
		tile = false, tileSize = 0, edgeSize = 1,
		insets = { left = 1, right = 1, top = 1, bottom = 1 }
	})

	-- Top gleam line for metallic bevel
	local gleam = r:CreateTexture(nil, "BORDER", nil, 2)
	gleam:SetHeight(1)
	gleam:SetPoint("TOPLEFT", r, "TOPLEFT", 2, -1)
	gleam:SetPoint("TOPRIGHT", r, "TOPRIGHT", -2, -1)
	gleam:SetTexture(Skin.WHITE)
	r.Gleam = gleam

	-- Hover highlight
	local hover = r:CreateTexture(nil, "BORDER", nil, 3)
	hover:SetAllPoints()
	hover:SetTexture(Skin.WHITE)
	hover:SetVertexColor(1.0, 0.90, 0.45, 0.08)
	hover:Hide()
	r.Hover = hover

	-- Flash overlay for progress / completion
	local flash = r:CreateTexture(nil, "OVERLAY", nil, 5)
	flash:SetAllPoints()
	flash:SetTexture(Skin.WHITE)
	flash:SetBlendMode("ADD")
	flash:Hide()
	r.Flash = flash

	-- Left Icon (Large prominent icon as shown in mock)
	local icon = r:CreateTexture(nil, "ARTWORK", nil, 2)
	icon:SetSize(24, 24)
	icon:SetPoint("TOPLEFT", r, "TOPLEFT", 8, -7)
	r.Icon = icon

	-- Right-side Coordinates badge ("10.8, 56.8  >")
	local badge = r:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(badge, 11, "")
	badge:SetPoint("TOPRIGHT", r, "TOPRIGHT", -8, -8)
	badge:SetJustifyH("RIGHT")
	r.Badge = badge

	-- Main Goal / Quest Title
	local text = r:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(text, 12, "")
	text:SetPoint("TOPLEFT", r, "TOPLEFT", 38, -7)
	text:SetJustifyH("LEFT")
	text:SetWordWrap(true)
	r.Text = text

	-- Secondary Description / Notes
	local sub = r:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(sub, 10.5, "")
	sub:SetJustifyH("LEFT")
	sub:SetWordWrap(true)
	sub:Hide()
	r.SubText = sub

	r:SetScript("OnEnter", function(self)
		self.Hover:Show()
		showRowTooltip(self)
	end)
	r:SetScript("OnLeave", function(self)
		self.Hover:Hide()
		GameTooltip:Hide()
	end)
	r:SetScript("OnClick", onRowClick)

	return r
end

function RowPool.Acquire(parent, index, isSticky)
	local pool = isSticky and stickyRows or rows
	local r = pool[index]
	if not r then
		r = createCard(parent)
		pool[index] = r
	else
		r:SetParent(parent)
	end
	r.isSticky = isSticky and true or false
	return r
end

function RowPool.HideFrom(fromIndex, isSticky)
	local pool = isSticky and stickyRows or rows
	for i = fromIndex, #pool do
		pool[i]:Hide()
		pool[i].goal = nil
	end
end

---------------------------------------------------------------------------
-- 4. Painting & Theming the Card
---------------------------------------------------------------------------

function RowPool.Paint(row, goal, width, isCurrent, stepView)
	row.goal = goal
	row:SetWidth(width)

	Skin.ApplyFont(row.Text, 12, "")
	Skin.ApplyFont(row.Badge, 11, "")
	Skin.ApplyFont(row.SubText, 10.5, "")

	local P = Skin.PALETTE
	local isDone = (goal.status == "done")
	local isSkipped = (goal.status == "skipped" or goal.dismissed)

	-- 1. Card Background & Border Theme
	if isDone then
		row:SetBackdropColor(P.cardDoneBg[1], P.cardDoneBg[2], P.cardDoneBg[3], P.cardDoneBg[4])
		row:SetBackdropBorderColor(P.cardDoneBorder[1], P.cardDoneBorder[2], P.cardDoneBorder[3], P.cardDoneBorder[4])
		row.Gleam:Hide()
	elseif isCurrent and not isSkipped then
		-- Warm deep gold/amber background with bright gold border
		row:SetBackdropColor(P.cardActiveBg[1], P.cardActiveBg[2], P.cardActiveBg[3], P.cardActiveBg[4])
		row:SetBackdropBorderColor(P.cardActiveBorder[1], P.cardActiveBorder[2], P.cardActiveBorder[3], P.cardActiveBorder[4])
		row.Gleam:SetVertexColor(P.cardActiveGleam[1], P.cardActiveGleam[2], P.cardActiveGleam[3], P.cardActiveGleam[4])
		row.Gleam:Show()
	else
		-- Obsidian charcoal with metallic silver/bronze border
		row:SetBackdropColor(P.cardPendingBg[1], P.cardPendingBg[2], P.cardPendingBg[3], P.cardPendingBg[4])
		row:SetBackdropBorderColor(P.cardPendingBorder[1], P.cardPendingBorder[2], P.cardPendingBorder[3], P.cardPendingBorder[4])
		row.Gleam:Hide()
	end

	-- 2. Flash Animation on Completion or Progress
	local curCount = goal.progress and goal.progress.cur or nil
	local key = (goal.step or 0) * 100 + (goal.index or 0)
	if row.lastKey == key then
		if isDone and row.lastStatus and row.lastStatus ~= "done" then
			RowPool.PlayFlash(row, true)
		elseif curCount and row.lastCount and curCount > row.lastCount then
			RowPool.PlayFlash(row, false)
		end
	end
	row.lastKey = key
	row.lastStatus = goal.status
	row.lastCount = curCount

	-- 3. Left Icon
	local iconPath = Skin.VerbIcon(goal.t, goal.status, isCurrent and not isDone and not isSkipped)
	row.Icon:SetTexture(iconPath)
	local ir, ig, ib = Skin.VerbTint(goal.t, goal.status, isCurrent and not isDone and not isSkipped)
	row.Icon:SetVertexColor(ir, ig, ib, 1)

	if isCurrent and not isDone and not isSkipped then
		row.Icon:SetSize(26, 26)
		row.Icon:SetPoint("TOPLEFT", row, "TOPLEFT", 7, -6)
	else
		row.Icon:SetSize(22, 22)
		row.Icon:SetPoint("TOPLEFT", row, "TOPLEFT", 9, -7)
	end

	-- 4. Right Badge (Coordinates or Progress Count with '>' chevron)
	local badgeText = ""
	local p = goal.progress
	if type(p) == "table" and type(p.max) == "number" and p.max > 1 and not isSkipped then
		local cur = max(0, min(p.max, tonumber(p.cur) or 0))
		local pct = floor((cur / p.max) * 100 + 0.5)
		if isDone or cur >= p.max then
			badgeText = format("|cff66f088%d/%d (100%%)|r", p.max, p.max)
		else
			badgeText = format("|cffffe082%d/%d|r |cffbba882(%d%%)|r", cur, p.max, pct)
		end
	elseif isDone then
		badgeText = "|cff66f088100%|r"
	elseif goal.x and goal.y then
		if isCurrent and not isSkipped then
			badgeText = format("|cffffd24a%.1f, %.1f|r  |cffffd24a>|r", goal.x, goal.y)
		else
			badgeText = format("|cff8cb4d2%.1f, %.1f|r  |cff8cb4d2>|r", goal.x, goal.y)
		end
	end
	row.Badge:SetText(badgeText)
	local badgeW = badgeText ~= "" and (floor(row.Badge:GetStringWidth() + 0.5) + 12) or 0

	-- 5. Main Title & Description
	local mainText = (ns.UI and ns.UI.GoalText and ns.UI.GoalText(goal)) or goal.text or ""
	if isDone then
		mainText = (ns.UI and ns.UI.PlainGoalText and ns.UI.PlainGoalText(goal)) or goal.text or ""
		row.Text:SetTextColor(Skin.Color("textDone"))
	elseif isSkipped then
		mainText = (ns.UI and ns.UI.PlainGoalText and ns.UI.PlainGoalText(goal)) or goal.text or ""
		row.Text:SetTextColor(Skin.Color("textMuted"))
	elseif isCurrent then
		row.Text:SetTextColor(Skin.Color("textGold"))
	else
		row.Text:SetTextColor(Skin.Color("textIvory"))
	end

	local textW = max(100, width - 46 - badgeW)
	row.Text:SetWidth(textW)
	row.Text:SetText(mainText)
	local textH = max(14, ceil(row.Text:GetStringHeight() or 14))

	local subLine = ns.UI and ns.UI.GoalSubline and stepView and ns.UI.GoalSubline(stepView, goal) or goal.note
	local totalH = textH + 14
	if subLine and subLine ~= "" and not isDone and not isSkipped then
		row.SubText:ClearAllPoints()
		row.SubText:SetPoint("TOPLEFT", row, "TOPLEFT", 38, -(7 + textH + 3))
		row.SubText:SetWidth(width - 46)
		row.SubText:SetText(subLine)
		if isCurrent then
			row.SubText:SetTextColor(0.96, 0.94, 0.88, 0.95) -- Ivory description for active card
		else
			row.SubText:SetTextColor(0.72, 0.70, 0.65, 0.90) -- Muted silver description for pending
		end
		row.SubText:Show()
		local subH = max(12, ceil(row.SubText:GetStringHeight() or 12))
		totalH = totalH + subH + 6
	else
		row.SubText:Hide()
	end

	row:SetHeight(max(36, totalH))
	row:Show()
	return max(36, totalH)
end
