-- ============================================================================
-- TuWoW_Leveling — UI/Tracker/TrackerHeader.lua
-- Ornate Header and Navigation Bar redesigned to match the reference mock:
-- Top-left glowing golden "W" compass medallion, "TUWOW LEVELING" title,
-- gold-bordered Search/Options/Minimize buttons, and an inset navigation bar
-- with stepper < 3 / 14 > and zone section dropdown.
-- ============================================================================

local ADDON, ns = ...
local Tracker = ns.UI.Tracker
local Skin = Tracker.Skin
local L = ns.L

local Header = {}
Tracker.Header = Header

local floor, max, min, format = math.floor, math.max, math.min, string.format

---------------------------------------------------------------------------
-- 1. Styled Header Button Helper (Dark Inset with Gold Border)
---------------------------------------------------------------------------

local function createGoldButton(parent, iconTexture, tipTitle, tipBody, onClick)
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(24, 22)
	b:SetFrameLevel((parent and parent.GetFrameLevel and parent:GetFrameLevel() or 2) + 5)
	b:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	Skin.ApplyGoldButton(b)

	local ic = b:CreateTexture(nil, "ARTWORK")
	ic:SetSize(14, 14)
	ic:SetPoint("CENTER")
	ic:SetTexture(iconTexture)
	ic:SetVertexColor(1.00, 0.86, 0.32, 1.0)
	b.Icon = ic

	b:SetScript("OnEnter", function(self)
		self:SetBackdropBorderColor(1.00, 0.95, 0.50, 1.0)
		self.Icon:SetVertexColor(1.00, 0.98, 0.65, 1.0)
		if tipTitle then
			GameTooltip:SetOwner(self, "ANCHOR_TOP")
			GameTooltip:ClearLines()
			GameTooltip:AddLine(tipTitle, 1.0, 0.85, 0.29)
			if tipBody then
				GameTooltip:AddLine(tipBody, 0.88, 0.84, 0.75, true)
			end
			GameTooltip:Show()
		end
	end)

	b:SetScript("OnLeave", function(self)
		self:SetBackdropBorderColor(0.92, 0.76, 0.28, 0.95)
		self.Icon:SetVertexColor(1.00, 0.86, 0.32, 1.0)
		GameTooltip:Hide()
	end)

	if onClick then
		b:SetScript("OnClick", function(self, button)
			if button == "RightButton" and Tracker.ShowContextMenu then
				Tracker.ShowContextMenu(self)
			else
				onClick(self, button)
			end
		end)
	end
	return b
end

---------------------------------------------------------------------------
-- 2. Build Header & Step Navigation Bar
---------------------------------------------------------------------------

function Header.Build(root)
	-- A. Top Crown Bar (32px high to accommodate the ornate title & buttons)
	local top = CreateFrame("Frame", nil, root)
	top:SetHeight(32)
	top:SetPoint("TOPLEFT", root, "TOPLEFT", 1, -1)
	top:SetPoint("TOPRIGHT", root, "TOPRIGHT", -1, -1)
	top:EnableMouse(true)
	top:RegisterForDrag("LeftButton")
	top:SetScript("OnDragStart", function()
		if Tracker.StartMove then Tracker.StartMove() end
	end)
	top:SetScript("OnDragStop", function()
		if Tracker.StopMove then Tracker.StopMove() end
	end)
	top:SetScript("OnMouseUp", function(self, button)
		if button == "RightButton" and Tracker.ShowContextMenu then
			Tracker.ShowContextMenu(self)
		elseif button == "LeftButton" and IsControlKeyDown() then
			if ns.Fire then ns.Fire("SHOW_PICKER") end
			if ns.UI and ns.UI.ShowPicker then ns.UI.ShowPicker() end
		end
	end)

	local topBg = top:CreateTexture(nil, "BACKGROUND", nil, -6)
	topBg:SetAllPoints()
	topBg:SetTexture(Skin.WHITE)
	topBg:SetVertexColor(Skin.Color("bgHeader"))
	top.Bg = topBg

	-- Glowing Compass "W" Medallion overflowing top-left corner
	local emblemFrame = CreateFrame("Button", nil, root)
	emblemFrame:SetSize(46, 46)
	emblemFrame:SetPoint("TOPLEFT", root, "TOPLEFT", -14, 14)
	emblemFrame:SetFrameLevel(root:GetFrameLevel() + 15)
	emblemFrame:EnableMouse(true)
	emblemFrame:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	local emblemTex = emblemFrame:CreateTexture(nil, "OVERLAY", nil, 6)
	emblemTex:SetAllPoints()
	emblemTex:SetTexture(Skin.EMBLEM_W)
	emblemFrame.Texture = emblemTex

	emblemFrame:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
		GameTooltip:ClearLines()
		GameTooltip:AddLine("TuWoW Leveling", 1.0, 0.85, 0.20)
		GameTooltip:AddLine(L["Click to choose a guide."] or "Clic izquierdo para elegir una guía.", 0.88, 0.84, 0.75)
		GameTooltip:AddLine(L["Right-click for options and settings."] or "Clic derecho para opciones y ajustes.", 0.70, 0.68, 0.62)
		GameTooltip:Show()
	end)
	emblemFrame:SetScript("OnLeave", function() GameTooltip:Hide() end)
	emblemFrame:SetScript("OnClick", function(self, button)
		if button == "RightButton" and Tracker.ShowContextMenu then
			Tracker.ShowContextMenu(self)
		else
			if ns.UI and ns.UI.TogglePicker then ns.UI.TogglePicker()
			elseif ns.UI and ns.UI.ShowPicker then ns.UI.ShowPicker()
			elseif ns.Fire then ns.Fire("SHOW_PICKER") end
		end
	end)
	root.EmblemFrame = emblemFrame

	-- Title: TUWOW (Gold) LEVELING (Ivory)
	local brand = top:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(brand, 13, "OUTLINE")
	brand:SetPoint("LEFT", top, "LEFT", 36, 1)
	brand:SetText("|cffffd24aTUWOW|r |cffffffffLEVELING|r")
	top.Brand = brand

	-- Right Toolbar Buttons: [Search / Lupa] [Options / Gear] [Minimize / Minus]
	local btnMin = createGoldButton(top, Skin.ICON_MINUS,
		L["Compact mode"],
		L["Collapse or expand the step list while keeping the current step header visible."],
		function()
			local mini = not (ns.Get and ns.Get("ui.trackerMini"))
			ns.Set("ui.trackerMini", mini)
			Tracker.Render()
		end)
	btnMin:SetPoint("RIGHT", top, "RIGHT", -6, 0)
	top.BtnMin = btnMin

	local btnOpt = createGoldButton(top, Skin.MEDIA_ICONS .. "gear",
		L["Options"],
		L["Customize the look, arrow, and automatic helpers of TuWoW Leveling."],
		function()
			if ns.UI and ns.UI.ToggleOptions then
				ns.UI.ToggleOptions()
			elseif ns.UI and ns.UI.ShowOptions then
				ns.UI.ShowOptions()
			elseif ns.Fire then
				ns.Fire("TOGGLE_OPTIONS")
			end
		end)
	btnOpt:SetPoint("RIGHT", btnMin, "LEFT", -4, 0)
	top.BtnOpt = btnOpt

	local btnSearch = createGoldButton(top, Skin.MEDIA_ICONS .. "search",
		L["World search"],
		L["Search any quest, NPC, item, or zone to get guided there."],
		function()
			local P = ns.UI and ns.UI.Picker
			if P and P.frame and P.frame:IsShown() and P.Section and P.Section() == "Lookup" then
				P.frame:Hide()
			elseif ns.UI and ns.UI.ShowLookup then
				ns.UI.ShowLookup()
			elseif ns.Fire then
				ns.Fire("SHOW_LOOKUP")
			end
		end)
	btnSearch:SetPoint("RIGHT", btnOpt, "LEFT", -4, 0)
	top.BtnSearch = btnSearch

	-- B. Navigation Bar (26px high, dark beveled inset)
	local nav = CreateFrame("Frame", nil, root)
	nav:SetHeight(26)
	nav:SetPoint("TOPLEFT", top, "BOTTOMLEFT", 0, -2)
	nav:SetPoint("TOPRIGHT", top, "BOTTOMRIGHT", 0, -2)
	nav:EnableMouseWheel(true)

	local navBg = nav:CreateTexture(nil, "BACKGROUND", nil, -5)
	navBg:SetAllPoints()
	navBg:SetTexture(Skin.WHITE)
	navBg:SetVertexColor(Skin.Color("bgNav"))
	nav.Bg = navBg

	-- Left Stepper: [<] [3 / 14] [>]
	local btnPrev = CreateFrame("Button", nil, nav)
	btnPrev:SetSize(20, 20)
	btnPrev:SetPoint("LEFT", nav, "LEFT", 5, 0)
	Skin.ApplyGoldButton(btnPrev)
	local prevIc = btnPrev:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(prevIc, 12, "OUTLINE")
	prevIc:SetPoint("CENTER")
	prevIc:SetText("<")
	prevIc:SetTextColor(1.00, 0.85, 0.25, 1)
	btnPrev:SetScript("OnClick", function()
		local E = ns.Engine
		if E then
			if E.Prev then E.Prev() elseif E.PrevStep then E.PrevStep() end
		end
	end)
	nav.BtnPrev = btnPrev

	local stepBadge = CreateFrame("Frame", nil, nav)
	stepBadge:SetSize(56, 20)
	stepBadge:SetPoint("LEFT", btnPrev, "RIGHT", 4, 0)
	Skin.ApplyGoldButton(stepBadge)
	local stepCount = stepBadge:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(stepCount, 11, "OUTLINE")
	stepCount:SetPoint("CENTER")
	stepCount:SetTextColor(1.00, 0.86, 0.32, 1)
	nav.StepCount = stepCount
	nav.StepBadge = stepBadge

	local btnNext = CreateFrame("Button", nil, nav)
	btnNext:SetSize(20, 20)
	btnNext:SetPoint("LEFT", stepBadge, "RIGHT", 4, 0)
	Skin.ApplyGoldButton(btnNext)
	local nextIc = btnNext:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(nextIc, 12, "OUTLINE")
	nextIc:SetPoint("CENTER")
	nextIc:SetText(">")
	nextIc:SetTextColor(1.00, 0.85, 0.25, 1)
	btnNext:SetScript("OnClick", function()
		local E = ns.Engine
		if E then
			if E.Next then E.Next() elseif E.NextStep then E.NextStep() end
		end
	end)
	nav.BtnNext = btnNext

	-- Right Side: Zone & Section Dropdown Selector
	local guideBtn = CreateFrame("Button", nil, nav)
	guideBtn:SetFrameLevel(nav:GetFrameLevel() + 5)
	guideBtn:SetPoint("LEFT", btnNext, "RIGHT", 6, 0)
	guideBtn:SetPoint("RIGHT", nav, "RIGHT", -5, 0)
	guideBtn:SetHeight(20)
	Skin.ApplyGoldButton(guideBtn)

	local guideTitle = guideBtn:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(guideTitle, 11, "")
	guideTitle:SetPoint("LEFT", guideBtn, "LEFT", 8, 0)
	guideTitle:SetPoint("RIGHT", guideBtn, "RIGHT", -20, 0)
	guideTitle:SetJustifyH("LEFT")
	guideTitle:SetWordWrap(false)
	guideTitle:SetTextColor(Skin.Color("textIvory"))
	nav.GuideTitle = guideTitle

	local caret = guideBtn:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(caret, 11, "OUTLINE")
	caret:SetPoint("RIGHT", guideBtn, "RIGHT", -6, 0)
	caret:SetText("v")
	caret:SetTextColor(1.00, 0.84, 0.25, 1)
	nav.Caret = caret

	guideBtn:SetScript("OnEnter", function()
		guideTitle:SetTextColor(1.00, 0.88, 0.36, 1)
		GameTooltip:SetOwner(guideBtn, "ANCHOR_TOP")
		GameTooltip:ClearLines()
		GameTooltip:AddLine(guideTitle:GetText() or L["Choose a guide"], 1.0, 0.85, 0.29)
		GameTooltip:AddLine(L["Click to choose another guide."], 0.85, 0.82, 0.72)
		GameTooltip:Show()
	end)
	guideBtn:SetScript("OnLeave", function()
		guideTitle:SetTextColor(Skin.Color("textIvory"))
		GameTooltip:Hide()
	end)
	guideBtn:SetScript("OnClick", function(self, button)
		if button == "RightButton" and Tracker.ShowContextMenu then
			Tracker.ShowContextMenu(self)
		else
			if ns.Fire then ns.Fire("SHOW_PICKER") end
			if ns.UI and ns.UI.ShowPicker then ns.UI.ShowPicker() end
		end
	end)
	nav.GuideBtn = guideBtn

	nav:SetScript("OnMouseWheel", function(_, delta)
		local E = ns.Engine
		if not E then return end
		if delta > 0 then
			if E.Prev then E.Prev() elseif E.PrevStep then E.PrevStep() end
		elseif delta < 0 then
			if E.Next then E.Next() elseif E.NextStep then E.NextStep() end
		end
	end)

	root.TopBar = top
	root.NavBar = nav
	Header.UpdateToolbar(top)
end

function Header.UpdateToolbar(top)
	if not top then return end
	local mini = ns.Get and ns.Get("ui.trackerMini") and true or false
	if top.BtnMin and top.BtnMin.Icon then
		top.BtnMin.Icon:SetTexture(Skin.ICON_MINUS)
	end
end
