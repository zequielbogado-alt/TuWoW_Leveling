-- ============================================================================
-- TuWoW_Leveling — UI/Tracker/TrackerFrame.lua
-- Main floating step tracker window ("TuWoW Leveling"), redesigned with
-- an ornate metallic gold & obsidian frame, individual quest cards,
-- and integrated bottom experience bar matching the master design.
-- ============================================================================

local ADDON, ns = ...
local Tracker = ns.UI.Tracker
local Skin = Tracker.Skin
local Header = Tracker.Header
local RowPool = Tracker.RowPool
local Action = Tracker.Action
local Model3D = Tracker.Model3D
local XPBar = Tracker.XPBar
local L = ns.L

local floor, ceil, max, min, format = math.floor, math.ceil, math.max, math.min, string.format

ns.RegisterDefaults("ui", {
	trackerStyle   = "tuwow", -- "tuwow" (ForeverUI + Zygor hybrid, default) | "classic"
	trackerMini    = false,   -- collapse step list to compact bar
	trackerModel3D = true,    -- show 3D creature viewer beside widget
	skin           = "polestar",
})

local root
local inCombat = false

---------------------------------------------------------------------------
-- 1. Active Mode & Visibility Coordination with Classic GuideFrame
---------------------------------------------------------------------------

function Tracker.IsActiveStyle()
	return (ns.Get and ns.Get("ui.trackerStyle") or "tuwow") ~= "classic"
end

function Tracker.ApplyVisibility()
	if not root then return end
	local active = Tracker.IsActiveStyle()
	local shown = ns.Get and ns.Get("ui.shown") ~= false

	-- Hide classic GuideFrame while TuWoW Leveling tracker is the active style
	local classicF = _G.TuWoW_LevelingGuideFrame or _G.PolestarGuideFrame
	if active and classicF and classicF:IsShown() then
		classicF:Hide()
	end

	if not active or not shown then
		root:Hide()
		return
	end

	local combatMode = ns.Get and ns.Get("ui.combat") or "show"
	if inCombat and combatMode == "hide" then
		root:Hide()
		return
	end

	root:Show()
	local baseAlpha = tonumber(ns.Get and ns.Get("ui.opacity")) or 1
	if inCombat and combatMode == "fade" then
		root:SetAlpha(baseAlpha * 0.35)
	else
		root:SetAlpha(baseAlpha)
	end
end

---------------------------------------------------------------------------
-- 2. Position & Width Persistence
---------------------------------------------------------------------------

local function applyPosition()
	if not root then return end
	local scale = tonumber(ns.Get and ns.Get("ui.scale")) or 1
	root:SetScale(scale)
	local width = max(280, min(520, tonumber(ns.Get and ns.Get("ui.width")) or 340))
	root:SetWidth(width)

	local pos = (ns.Get and ns.Get("ui.trackerPos")) or (ns.Get and ns.Get("ui.pos"))
	root:ClearAllPoints()
	if type(pos) == "table" and type(pos.left) == "number" and type(pos.top) == "number" then
		root:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", pos.left, pos.top)
	elseif type(pos) == "table" and type(pos[1]) == "number" and type(pos[2]) == "number" then
		root:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", pos[1], pos[2])
	else
		root:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -80, -200)
	end
end

local function savePosition()
	if not root then return end
	local left, top = root:GetLeft(), root:GetTop()
	if left and top then
		ns.Set("ui.trackerPos", { left = floor(left + 0.5), top = floor(top + 0.5) })
	end
end

function Tracker.StartMove()
	if not root or (ns.Get and ns.Get("ui.locked")) then return end
	root:StartMoving()
end

function Tracker.StopMove()
	if not root then return end
	root:StopMovingOrSizing()
	savePosition()
	if Model3D and Model3D.Update then
		Model3D.Update(Tracker.CurrentView, root)
	end
end

---------------------------------------------------------------------------
-- 3. Context Menu (Right-click on Header or Step)
---------------------------------------------------------------------------

function Tracker.ShowContextMenu(owner)
	local W = ns.Widgets
	if not (W and W.ShowMenu) then return end
	local E = ns.Engine
	local idx = E and E.GetStepIndex and E.GetStepIndex()
	local v = idx and E.GetStepView and E.GetStepView(idx)

	local items = {
		{
			text = L["Choose a guide"],
			icon = "guides",
			color = "accent",
			onClick = function()
				if ns.UI and ns.UI.ShowPicker then
					ns.UI.ShowPicker()
				elseif ns.Fire then
					ns.Fire("SHOW_PICKER")
				end
			end,
		},
		{
			text = (v and v.skipped) and L["Unskip this step"] or L["Skip current step"],
			icon = "skip",
			color = "text",
			onClick = function()
				if not E then return end
				if v and v.skipped and E.UnskipStep then
					E.UnskipStep(idx)
				elseif E.SkipStep then
					E.SkipStep()
				end
			end,
		},
		{
			text = (ns.Get("ui.trackerMini") and L["Expand step list"] or L["Compact mode"]),
			icon = "compact",
			color = "text",
			onClick = function()
				ns.Set("ui.trackerMini", not ns.Get("ui.trackerMini"))
				Tracker.Render()
			end,
		},
		{
			text = (ns.Get("ui.trackerModel3D") ~= false and L["Hide 3D target"] or L["Show 3D target"]),
			icon = "qol-target",
			color = "text",
			onClick = function()
				if Model3D and Model3D.Toggle then
					Model3D.Toggle()
				end
			end,
		},
		{
			text = (ns.Get("ui.locked") and L["Unlock window"] or L["Lock window"]),
			icon = "lock",
			color = "text",
			onClick = function()
				ns.Set("ui.locked", not ns.Get("ui.locked"))
				Header.UpdateToolbar(root.TopBar)
			end,
		},
		{
			text = L["Options"],
			icon = "gear",
			color = "text",
			onClick = function()
				if ns.UI and ns.UI.ShowOptions then
					ns.UI.ShowOptions()
				elseif ns.Fire then
					ns.Fire("SHOW_OPTIONS")
				end
			end,
		},
	}
	W.ShowMenu(owner or root, items)
end

---------------------------------------------------------------------------
-- 4. Build Main Floating Widget Structure
---------------------------------------------------------------------------

local function build()
	if root then return end
	root = CreateFrame("Frame", "TuWoWLevelingTrackerFrame", UIParent)
	root:SetFrameStrata("MEDIUM")
	root:SetToplevel(true)
	root:SetClampedToScreen(true)
	root:SetMovable(true)
	root:SetWidth(340)
	root:SetHeight(200)
	Tracker.Root = root

	Skin.ApplyForeverFrame(root, "bgMain")
	Header.Build(root)

	-- Main Step & Cards Container
	local body = CreateFrame("Frame", nil, root)
	root.Body = body

	-- Step Advice / Note Box
	local tipBox = CreateFrame("Frame", nil, body)
	tipBox:SetBackdrop({
		bgFile = Skin.WHITE,
		edgeFile = Skin.WHITE,
		tile = false, tileSize = 0, edgeSize = 1,
		insets = { left = 1, right = 1, top = 1, bottom = 1 }
	})
	tipBox:SetBackdropColor(0.12, 0.10, 0.06, 0.88)
	tipBox:SetBackdropBorderColor(0.85, 0.68, 0.22, 0.85)

	local tipIcon = tipBox:CreateTexture(nil, "ARTWORK")
	tipIcon:SetSize(14, 14)
	tipIcon:SetPoint("TOPLEFT", 6, -6)
	tipIcon:SetTexture(Skin.MEDIA_ICONS .. "sparkle")
	tipIcon:SetVertexColor(1.00, 0.85, 0.30, 1)

	local tipText = tipBox:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(tipText, 11, "")
	tipText:SetPoint("TOPLEFT", 24, -5)
	tipText:SetJustifyH("LEFT")
	tipText:SetWordWrap(true)
	tipText:SetTextColor(0.96, 0.92, 0.80, 1)
	tipBox.Text = tipText
	tipBox:Hide()
	root.TipBox = tipBox

	-- Sticky / "Along the way" Container
	local stickyBox = CreateFrame("Frame", nil, body)
	local stickyHdr = stickyBox:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(stickyHdr, 10, "OUTLINE")
	stickyHdr:SetPoint("TOPLEFT", stickyBox, "TOPLEFT", 4, -2)
	stickyHdr:SetTextColor(0.96, 0.78, 0.32, 1)
	stickyHdr:SetText("✦ " .. (L["Along the way"] or "En tu camino"))
	stickyBox.Header = stickyHdr
	stickyBox:Hide()
	root.StickyBox = stickyBox

	-- Empty / Completed State Box
	local emptyBox = CreateFrame("Frame", nil, root)
	emptyBox:SetHeight(86)
	local emptyTitle = emptyBox:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(emptyTitle, 13, "")
	emptyTitle:SetPoint("TOP", emptyBox, "TOP", 0, -12)
	emptyTitle:SetTextColor(1.00, 0.86, 0.32, 1)
	emptyBox.Title = emptyTitle

	local emptySub = emptyBox:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(emptySub, 11, "")
	emptySub:SetPoint("TOP", emptyTitle, "BOTTOM", 0, -4)
	emptySub:SetWidth(280)
	emptySub:SetJustifyH("CENTER")
	emptySub:SetTextColor(Skin.Color("textSilver"))
	emptyBox.Sub = emptySub

	local emptyBtn = CreateFrame("Button", nil, emptyBox)
	emptyBtn:SetSize(160, 24)
	emptyBtn:SetPoint("BOTTOM", emptyBox, "BOTTOM", 0, 8)
	Skin.ApplyGoldButton(emptyBtn)
	local emptyBtnText = emptyBtn:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(emptyBtnText, 11.5, "OUTLINE")
	emptyBtnText:SetPoint("CENTER")
	emptyBtnText:SetTextColor(1.00, 0.86, 0.32, 1)
	emptyBtn.Text = emptyBtnText
	emptyBox.Button = emptyBtn
	emptyBox:Hide()
	root.EmptyBox = emptyBox

	-- Bottom Experience Bar
	local xpFrame = XPBar.Build(root)
	xpFrame:SetPoint("BOTTOMLEFT", root, "BOTTOMLEFT", 2, 2)
	xpFrame:SetPoint("BOTTOMRIGHT", root, "BOTTOMRIGHT", -2, 2)
	root.XPFrame = xpFrame

	-- Width Resize Grip
	local grip = CreateFrame("Button", nil, xpFrame)
	grip:SetSize(14, 14)
	grip:SetPoint("BOTTOMRIGHT", xpFrame, "BOTTOMRIGHT", -1, 1)
	local gripIc = grip:CreateTexture(nil, "ARTWORK")
	gripIc:SetSize(10, 10)
	gripIc:SetPoint("BOTTOMRIGHT", -1, 1)
	gripIc:SetTexture(Skin.MEDIA_ICONS .. "resize")
	gripIc:SetVertexColor(0.85, 0.75, 0.45, 0.85)
	grip:SetScript("OnMouseDown", function(self, button)
		if button ~= "LeftButton" or (ns.Get and ns.Get("ui.locked")) then return end
		self.resizing = true
		self.startX = GetCursorPosition()
		self.startW = root:GetWidth()
		self:SetScript("OnUpdate", function(g)
			if not g.resizing then return end
			local cx = GetCursorPosition() / (root:GetEffectiveScale() or 1)
			local sx = g.startX / (root:GetEffectiveScale() or 1)
			local nw = max(280, min(520, floor(g.startW + (cx - sx) + 0.5)))
			if nw ~= floor(root:GetWidth() + 0.5) then
				root:SetWidth(nw)
				ns.Set("ui.width", nw)
				Tracker.Render()
			end
		end)
	end)
	grip:SetScript("OnMouseUp", function(self)
		self.resizing = false
		self:SetScript("OnUpdate", nil)
	end)
	xpFrame.Grip = grip

	Action.Build(root)
	Model3D.Build(root)
	applyPosition()
end

---------------------------------------------------------------------------
-- 5. Render Active Guide, Cards & Docked Widgets
---------------------------------------------------------------------------

function Tracker.Render()
	if not root then return end
	Tracker.ApplyVisibility()
	if not root:IsShown() or not ns.IsLoggedIn() then return end

	Skin.ApplyForeverFrame(root, "bgMain")
	Header.UpdateToolbar(root.TopBar)

	local E = ns.Engine
	local guide = E and E.GetGuide and E.GetGuide()
	local count = (guide and E.GetStepCount and E.GetStepCount()) or 0
	local index = (guide and E.GetStepIndex and E.GetStepIndex()) or nil
	local width = root:GetWidth()
	local cardW = width - 14
	local yOffset = 32 + 26 + 6 -- TopBar (32) + NavBar (26) + gap (6)

	-- Update NavBar
	local nav = root.NavBar
	if guide then
		nav.GuideTitle:SetText(guide.title or guide.id)
		nav.StepCount:SetText(format("%d / %d", index or count, count))
	else
		nav.GuideTitle:SetText(L["No guide loaded"])
		nav.StepCount:SetText("— / —")
	end

	-- Mini Mode: Only Header + NavBar
	if ns.Get and ns.Get("ui.trackerMini") then
		root.Body:Hide()
		root.EmptyBox:Hide()
		if root.XPFrame then root.XPFrame:Hide() end
		RowPool.HideFrom(1, false)
		RowPool.HideFrom(1, true)
		Action.Update(nil)
		Model3D.Update(nil, root)
		root:SetHeight(62)
		return
	end

	-- No Guide or Completed Guide State
	local view = (guide and index and E.GetStepView and E.GetStepView(index)) or nil
	Tracker.CurrentView = view

	if not guide or not view then
		root.Body:Hide()
		RowPool.HideFrom(1, false)
		RowPool.HideFrom(1, true)
		Action.Update(nil)
		Model3D.Update(nil, root)

		local eb = root.EmptyBox
		eb:ClearAllPoints()
		eb:SetPoint("TOPLEFT", root, "TOPLEFT", 7, -yOffset)
		eb:SetPoint("TOPRIGHT", root, "TOPRIGHT", -7, -yOffset)
		if guide and not view then
			eb.Title:SetText("★ " .. L["Guide complete"])
			local nextId = guide.next
			eb.Sub:SetText(nextId and L["Ready to continue to the next zone."] or L["You have completed every step in this guide!"])
			eb.Button.Text:SetText(nextId and L["Load next guide"] or L["Choose a guide"])
			eb.Button:SetScript("OnClick", function()
				if nextId and E.LoadGuide then E.LoadGuide(nextId)
				elseif ns.UI and ns.UI.ShowPicker then ns.UI.ShowPicker() end
			end)
		else
			eb.Title:SetText(L["No guide loaded"])
			eb.Sub:SetText(L["Pick a guide to start."])
			eb.Button.Text:SetText(L["Choose a guide"])
			eb.Button:SetScript("OnClick", function()
				if ns.UI and ns.UI.ShowPicker then ns.UI.ShowPicker() end
			end)
		end
		eb:Show()
		if root.XPFrame then
			root.XPFrame:Show()
			XPBar.Update()
		end
		root:SetHeight(yOffset + 96 + 30)
		return
	end

	root.EmptyBox:Hide()
	root.Body:Show()

	-- Discrete Quest Cards Container
	root.Body:ClearAllPoints()
	root.Body:SetPoint("TOPLEFT", root, "TOPLEFT", 7, -yOffset)
	root.Body:SetWidth(cardW)

	local bodyY = 0
	local cardIdx = 0
	local curGoalIdx = view.current or 1

	for gi, g in ipairs(view.goals or {}) do
		if g.status ~= "na" and not g.folded then
			cardIdx = cardIdx + 1
			local card = RowPool.Acquire(root.Body, cardIdx, false)
			card:ClearAllPoints()
			card:SetPoint("TOPLEFT", root.Body, "TOPLEFT", 0, -bodyY)

			-- First active/incomplete goal gets the glowing warm gold card style
			local isCur = (g.index == curGoalIdx and g.status == "active") or (cardIdx == 1 and g.status ~= "done")
			local ch = RowPool.Paint(card, ns.UI.ReadingGoal and ns.UI.ReadingGoal(view, g) or g, cardW, isCur, view)
			bodyY = bodyY + ch + 5 -- 5px separation between cards
		end
	end
	RowPool.HideFrom(cardIdx + 1, false)

	-- Step Advice / General Tip Box (if step has a separate note not tied to a card)
	local tipBox = root.TipBox
	local note = (ns.Get and ns.Get("ui.showNotes") ~= false) and view.note or nil
	if note and note ~= "" and cardIdx == 0 then
		tipBox:ClearAllPoints()
		tipBox:SetPoint("TOPLEFT", root.Body, "TOPLEFT", 0, -bodyY)
		tipBox:SetWidth(cardW)
		tipBox.Text:SetWidth(cardW - 32)
		tipBox.Text:SetText(note)
		local th = max(24, ceil(tipBox.Text:GetStringHeight() or 14) + 12)
		tipBox:SetHeight(th)
		tipBox:Show()
		bodyY = bodyY + th + 5
	else
		tipBox:Hide()
	end

	-- Sticky / "Along the way" Cards
	local stickyBox = root.StickyBox
	local alongList = (E.GetAlong and E.GetAlong()) or {}
	local sCount = 0
	local stickyY = 18
	for _, s in ipairs(alongList) do
		for _, gv in ipairs(s.goals or {}) do
			if sCount < 3 then
				sCount = sCount + 1
				local sr = RowPool.Acquire(stickyBox, sCount, true)
				sr:ClearAllPoints()
				sr:SetPoint("TOPLEFT", stickyBox, "TOPLEFT", 0, -stickyY)
				local sh = RowPool.Paint(sr, gv, cardW, false, s)
				stickyY = stickyY + sh + 4
			end
		end
	end
	RowPool.HideFrom(sCount + 1, true)
	if sCount > 0 then
		stickyBox:ClearAllPoints()
		stickyBox:SetPoint("TOPLEFT", root.Body, "TOPLEFT", 0, -bodyY - 2)
		stickyBox:SetSize(cardW, stickyY)
		stickyBox:Show()
		bodyY = bodyY + stickyY + 5
	else
		stickyBox:Hide()
	end

	root.Body:SetHeight(max(10, bodyY))

	-- Bottom Experience Bar
	if root.XPFrame then
		root.XPFrame:Show()
		XPBar.Update()
	end

	root:SetHeight(yOffset + bodyY + 32)
	Action.Update(view)
	Model3D.Update(view, root)
end

---------------------------------------------------------------------------
-- 6. Lifecycle & Event Wiring
---------------------------------------------------------------------------

ns.OnInit(function()
	build()
	local classicF = _G.TuWoW_LevelingGuideFrame or _G.PolestarGuideFrame
	if classicF then
		if Tracker.IsActiveStyle() then
			classicF:Hide()
		end
		hooksecurefunc(classicF, "Show", function(self)
			if Tracker.IsActiveStyle() then
				self:Hide()
				Tracker.ApplyVisibility()
			end
		end)
	end
end)

ns.OnLogin(function()
	inCombat = InCombatLockdown and InCombatLockdown() and true or false
	local classicF = _G.TuWoW_LevelingGuideFrame or _G.PolestarGuideFrame
	if classicF and Tracker.IsActiveStyle() then
		classicF:Hide()
	end
	applyPosition()
	Tracker.Render()
end)

for _, ev in ipairs({
	"GUIDE_CHANGED", "STEP_CHANGED", "STEP_UPDATED", "PARTY_PROGRESS",
	"GUIDES_REGISTERED", "PACKS_CHANGED", "GUIDE_COMPLETED", "TABS_CHANGED",
}) do
	ns.On(ev, function()
		if root and Tracker.IsActiveStyle() then Tracker.Render() end
	end)
end

ns.On("SETTING_CHANGED", function(path)
	if not root then return end
	if path == "ui.shown" or path == "ui.trackerStyle" or path == "ui.combat" or path == "ui.opacity" or path == "ui" or path == "" then
		Tracker.ApplyVisibility()
		if root:IsShown() then Tracker.Render() end
	elseif path == "ui.scale" or path == "ui.width" or path == "ui.pos" or path == "ui.trackerPos" then
		applyPosition()
		if root:IsShown() then Tracker.Render() end
	elseif path == "ui.bgOpacity" or path == "ui.textSize" or path == "ui.showNotes" then
		if root:IsShown() then Tracker.Render() end
	end
end)

ns.On("RESET_POSITIONS", function()
	ns.Set("ui.trackerPos", nil)
	applyPosition()
	if root and root:IsShown() then Tracker.Render() end
end)

ns.RegisterEvent("PLAYER_REGEN_DISABLED", function()
	inCombat = true
	Tracker.ApplyVisibility()
end)

ns.RegisterEvent("PLAYER_REGEN_ENABLED", function()
	inCombat = false
	Tracker.ApplyVisibility()
end)
