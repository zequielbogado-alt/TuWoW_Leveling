-- ============================================================================
-- TuWoW_Leveling — UI/Tracker/TrackerXPBar.lua
-- Bottom Experience Bar component inspired by the classic WoW reference design:
-- Golden star medallion, "Nivel" badge, gold level text, glossy blue progress
-- bar, real-time percentage, and informative XP pacing tooltip.
-- ============================================================================

local ADDON, ns = ...
local Tracker = ns.UI.Tracker
local Skin = Tracker.Skin
local L = ns.L

local XPBar = {}
Tracker.XPBar = XPBar

local floor, max, min, format = math.floor, math.max, math.min, string.format

---------------------------------------------------------------------------
-- 1. Experience Values & Pacing Stats
---------------------------------------------------------------------------

local function getPlayerXP()
	local level = UnitLevel("player") or 1
	local cur = UnitXP("player") or 0
	local maxXP = UnitXPMax("player") or 1
	local isMaxLevel = (level >= 80) or (maxXP <= 0)

	local pct = 0
	if not isMaxLevel and maxXP > 0 then
		pct = floor((cur / maxXP) * 100 + 0.5)
	elseif isMaxLevel then
		pct = 100
	end

	local rested = GetXPExhaustion and GetXPExhaustion() or 0
	return level, cur, maxXP, pct, isMaxLevel, rested
end

---------------------------------------------------------------------------
-- 2. Build XP Bar Frame
---------------------------------------------------------------------------

function XPBar.Build(parent)
	local bar = CreateFrame("Button", nil, parent)
	bar:SetHeight(28)
	bar:EnableMouse(true)
	bar:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	-- Inset dark background
	local bg = bar:CreateTexture(nil, "BACKGROUND")
	bg:SetAllPoints()
	bg:SetTexture(Skin.WHITE)
	bg:SetVertexColor(Skin.Color("bgFooter"))
	bar.Bg = bg

	-- Top divider line
	local topDiv = bar:CreateTexture(nil, "BORDER")
	topDiv:SetHeight(1)
	topDiv:SetPoint("TOPLEFT", 2, 0)
	topDiv:SetPoint("TOPRIGHT", -2, 0)
	topDiv:SetTexture(Skin.WHITE)
	topDiv:SetVertexColor(0.58, 0.47, 0.28, 0.45)
	bar.TopDiv = topDiv

	-- Golden Star Medallion (Circular badge on the left)
	local med = bar:CreateTexture(nil, "ARTWORK", nil, 3)
	med:SetSize(24, 24)
	med:SetPoint("LEFT", bar, "LEFT", 5, 0)
	med:SetTexture(Skin.STAR_MEDALLION)
	bar.Medallion = med

	-- "Nivel" Label
	local lbl = bar:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(lbl, 11, "")
	lbl:SetPoint("LEFT", med, "RIGHT", 5, 0)
	lbl:SetText("Nivel")
	lbl:SetTextColor(0.92, 0.88, 0.80, 1)
	bar.LevelLabel = lbl

	-- Level Number (Bold bright gold)
	local lvlNum = bar:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(lvlNum, 14, "OUTLINE")
	lvlNum:SetPoint("LEFT", lbl, "RIGHT", 4, 0)
	lvlNum:SetTextColor(1.00, 0.84, 0.20, 1)
	bar.LevelNumber = lvlNum

	-- Right Percentage Text
	local pctText = bar:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(pctText, 11, "")
	pctText:SetPoint("RIGHT", bar, "RIGHT", -8, 0)
	pctText:SetTextColor(0.96, 0.94, 0.90, 1)
	bar.PctText = pctText

	-- Central Blue Glossy Status Bar
	local status = CreateFrame("StatusBar", nil, bar)
	status:SetHeight(11)
	status:SetPoint("LEFT", lvlNum, "RIGHT", 8, 0)
	status:SetPoint("RIGHT", pctText, "LEFT", -8, 0)

	-- Inset capsule border for status bar
	local sBorder = CreateFrame("Frame", nil, status)
	sBorder:SetPoint("TOPLEFT", -1, 1)
	sBorder:SetPoint("BOTTOMRIGHT", 1, -1)
	sBorder:SetBackdrop({
		bgFile = Skin.WHITE,
		edgeFile = Skin.WHITE,
		tile = false, tileSize = 0, edgeSize = 1,
		insets = { left = 1, right = 1, top = 1, bottom = 1 }
	})
	sBorder:SetBackdropColor(0.04, 0.04, 0.06, 0.95)
	sBorder:SetBackdropBorderColor(0.24, 0.25, 0.30, 0.85)
	status.Border = sBorder

	status:SetStatusBarTexture(Skin.XP_FILL)
	status:GetStatusBarTexture():SetHorizTile(false)
	bar.StatusBar = status

	-- Tooltip on hover
	bar:SetScript("OnEnter", function(self)
		local level, cur, maxXP, pct, isMax, rested = getPlayerXP()
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:ClearLines()
		GameTooltip:AddLine(format(L["Level %d"], level), 1.0, 0.85, 0.20)

		if isMax then
			GameTooltip:AddLine(L["Maximum level reached."], 0.65, 0.90, 0.65)
		else
			GameTooltip:AddLine(format(L["Experience: %d / %d (%d%%)"], cur, maxXP, pct), 0.90, 0.90, 0.95)
			GameTooltip:AddLine(format(L["Remaining: %d XP"], max(0, maxXP - cur)), 0.78, 0.75, 0.68)
			if rested and rested > 0 then
				GameTooltip:AddLine(format(L["Rested: +%d XP"], rested), 0.55, 0.75, 1.0)
			end

			-- Pacing / Rate stats
			local Q = ns.QoL
			if Q and Q.GetXPStats then
				local ok, stats = pcall(Q.GetXPStats)
				if ok and type(stats) == "table" then
					local short = Q.XP and Q.XP.Short
					if type(stats.rate) == "number" and stats.rate > 0 and short then
						GameTooltip:AddLine(format(L["Speed: %s XP/h"], short(stats.rate)), 1.00, 0.84, 0.30)
					end
					if type(stats.timeToLevel) == "number" and stats.timeToLevel > 0 and Q.Duration then
						GameTooltip:AddLine(format(L["Time to level: %s"], Q.Duration(stats.timeToLevel)), 0.85, 0.82, 0.72)
					end
				end
			end
		end

		GameTooltip:Show()
	end)

	bar:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)

	bar:SetScript("OnClick", function(self, button)
		if button == "RightButton" and Tracker.ShowContextMenu then
			Tracker.ShowContextMenu(self)
		end
	end)

	XPBar.Frame = bar
	XPBar.Update()
	return bar
end

---------------------------------------------------------------------------
-- 3. Update Visuals
---------------------------------------------------------------------------

function XPBar.Update()
	local bar = XPBar.Frame
	if not bar or not bar:IsVisible() then return end

	local level, cur, maxXP, pct, isMax = getPlayerXP()
	bar.LevelNumber:SetText(tostring(level))

	if isMax then
		bar.StatusBar:SetMinMaxValues(0, 1)
		bar.StatusBar:SetValue(1)
		bar.PctText:SetText("MAX")
	else
		bar.StatusBar:SetMinMaxValues(0, max(1, maxXP))
		bar.StatusBar:SetValue(cur)
		bar.PctText:SetText(format("%d%%", pct))
	end
end

---------------------------------------------------------------------------
-- 4. Event Wiring
---------------------------------------------------------------------------

ns.RegisterEvent("PLAYER_XP_UPDATE", function()
	XPBar.Update()
end)

ns.RegisterEvent("PLAYER_LEVEL_UP", function()
	XPBar.Update()
end)

ns.RegisterEvent("UPDATE_EXHAUSTION", function()
	XPBar.Update()
end)

