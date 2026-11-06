-- ============================================================================
-- TuWoW_Leveling — UI/Tracker/TrackerAction.lua
-- Docked ForeverUI Secure ActionBar for the TuWoW Leveling widget.
-- Provides 1-click buttons for Quest Items, /targetexact NPC/Mob macros, and
-- Hearthstone/Teleport steps, respecting 3.3.5a InCombatLockdown() rules.
-- ============================================================================

local ADDON, ns = ...
local Tracker = ns.UI.Tracker
local Skin = Tracker.Skin
local L = ns.L

local Action = {}
Tracker.Action = Action

local bar
local buttons = {}
local pendingUpdate = false
local MAX_BUTTONS = 3

local function inCombat()
	return InCombatLockdown and InCombatLockdown() and true or false
end

---------------------------------------------------------------------------
-- 1. Secure Action Button Creation
---------------------------------------------------------------------------

local function updateCooldown(btn)
	if not btn or not btn.Cooldown or not btn.itemID then
		if btn and btn.Cooldown then btn.Cooldown:Hide() end
		return
	end
	local GetCooldown = (C_Container and C_Container.GetItemCooldown) or GetItemCooldown
	if GetCooldown then
		local start, duration, enable = GetCooldown(btn.itemID)
		if start and duration and duration > 0 and enable == 1 and CooldownFrame_SetTimer then
			CooldownFrame_SetTimer(btn.Cooldown, start, duration, enable)
			return
		end
	end
	btn.Cooldown:Hide()
end

local function createSecureSlot(parent, index)
	local name = "TuWoWLevelingTrackerActionBtn" .. index
	local b = CreateFrame("Button", name, parent, "SecureActionButtonTemplate")
	b:SetSize(34, 34)
	b:RegisterForClicks("AnyUp")

	Skin.ApplyForeverFrame(b, "bgHeader")

	local icon = b:CreateTexture(nil, "ARTWORK")
	icon:SetPoint("TOPLEFT", 3, -3)
	icon:SetPoint("BOTTOMRIGHT", -3, 3)
	icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
	b.Icon = icon

	local cd = CreateFrame("Cooldown", name .. "Cooldown", b, "CooldownFrameTemplate")
	cd:SetPoint("TOPLEFT", 3, -3)
	cd:SetPoint("BOTTOMRIGHT", -3, 3)
	b.Cooldown = cd

	local hover = b:CreateTexture(nil, "OVERLAY")
	hover:SetPoint("TOPLEFT", 2, -2)
	hover:SetPoint("BOTTOMRIGHT", -2, 2)
	hover:SetTexture(Skin.WHITE)
	hover:SetVertexColor(1.0, 0.86, 0.28, 0.22)
	hover:Hide()
	b.Hover = hover

	local tag = b:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(tag, 9.5, "OUTLINE")
	tag:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", -3, 3)
	tag:SetTextColor(1.0, 0.90, 0.45, 1)
	b.Tag = tag

	b:SetScript("OnEnter", function(self)
		self.Hover:Show()
		GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
		GameTooltip:ClearLines()
		if self.itemID then
			GameTooltip:SetHyperlink("item:" .. self.itemID)
			GameTooltip:AddLine(" ")
			GameTooltip:AddLine("|cffffd100" .. L["Click"] .. ":|r " .. L["Use quest item"], 0.85, 0.82, 0.72)
		elseif self.tipTitle then
			GameTooltip:AddLine(self.tipTitle, 1.0, 0.85, 0.29)
			if self.tipBody then
				GameTooltip:AddLine(self.tipBody, 0.88, 0.84, 0.75, true)
			end
		end
		GameTooltip:Show()
	end)
	b:SetScript("OnLeave", function(self)
		self.Hover:Hide()
		GameTooltip:Hide()
	end)

	return b
end

---------------------------------------------------------------------------
-- 2. Inspect Current Step for Usable Items, Target NPCs & Hearthstone
---------------------------------------------------------------------------

local function collectStepActions(view)
	local list = {}
	if not view or type(view.goals) ~= "table" then return list end

	local seenItems = {}
	local targetNames = {}
	local seenNames = {}
	local wantHearth = false

	local function addItem(id)
		id = tonumber(id)
		if not id or seenItems[id] then return end
		local count = GetItemCount and GetItemCount(id) or 0
		if count <= 0 and id ~= 6948 then return end
		local itemName, _, _, _, _, _, _, _, _, itemTex = GetItemInfo(id)
		if not itemName then return end
		seenItems[id] = true
		list[#list + 1] = {
			kind   = "item",
			itemID = id,
			name   = itemName,
			icon   = itemTex or "Interface\\Icons\\INV_Misc_QuestionMark",
			tag    = count > 1 and tostring(count) or "",
		}
	end

	local function addTarget(name)
		if type(name) ~= "string" or name == "" or seenNames[name] then return end
		seenNames[name] = true
		targetNames[#targetNames + 1] = name
	end

	for _, g in ipairs(view.goals) do
		if g.status ~= "done" and g.status ~= "skipped" and g.status ~= "na" then
			if g.useItem then addItem(g.useItem) end
			if g.t == "use" and g.item then addItem(g.item) end
			if g.t == "hearth" then wantHearth = true end

			local npcId = g.npc or (g.source and g.source.kind == "npc" and g.source.id)
			local npcName = (npcId and ns.Names and ns.Names.Npc and ns.Names.Npc(npcId))
				or (g.source and g.source.name)
				or ((g.t == "kill" or g.t == "talk" or g.t == "accept" or g.t == "turnin") and g.subject)
			if npcName then addTarget(npcName) end
		end
	end

	-- Also check QoL.Buttons.TargetNames if available
	if #targetNames == 0 and ns.QoL and ns.QoL.Buttons and ns.QoL.Buttons.TargetNames then
		local ok, names = pcall(ns.QoL.Buttons.TargetNames)
		if ok and type(names) == "table" then
			for i = 1, math.min(4, #names) do addTarget(names[i]) end
		end
	end

	if #targetNames > 0 and #list < MAX_BUTTONS then
		local lines = { "/cleartarget [dead]" }
		for i = 1, math.min(4, #targetNames) do
			lines[#lines + 1] = "/targetexact " .. targetNames[i]
		end
		list[#list + 1] = {
			kind     = "macro",
			macro    = table.concat(lines, "\n"),
			icon     = "Interface\\Icons\\Ability_Hunter_SniperShot",
			tag      = "🎯",
			tipTitle = format("%s: %s", L["Target quest mob"], targetNames[1]),
			tipBody  = L["Click to target the character or creature needed for this step."],
		}
	end

	if wantHearth and #list < MAX_BUTTONS then
		addItem(6948)
	end

	return list
end

---------------------------------------------------------------------------
-- 3. Build & Refresh Docked ActionBar
---------------------------------------------------------------------------

function Action.Build(root)
	bar = CreateFrame("Frame", "TuWoWLevelingTrackerActionBar", root)
	bar:SetHeight(38)
	bar:SetPoint("TOPLEFT", root, "BOTTOMLEFT", 0, -4)
	bar:Hide()

	for i = 1, MAX_BUTTONS do
		local b = createSecureSlot(bar, i)
		if i == 1 then
			b:SetPoint("LEFT", bar, "LEFT", 0, 0)
		else
			b:SetPoint("LEFT", buttons[i - 1], "RIGHT", 5, 0)
		end
		b:Hide()
		buttons[i] = b
	end
	root.ActionBar = bar
end

function Action.Update(view)
	if not bar then return end
	if inCombat() then
		pendingUpdate = true
		return
	end
	pendingUpdate = false

	if not (ns.Get and ns.Get("ui.shown")) or (ns.Get and ns.Get("ui.trackerMini")) then
		bar:Hide()
		return
	end

	local actions = collectStepActions(view)
	local count = math.min(#actions, MAX_BUTTONS)
	if count == 0 then
		for i = 1, MAX_BUTTONS do buttons[i]:Hide() end
		bar:Hide()
		return
	end

	for i = 1, MAX_BUTTONS do
		local b = buttons[i]
		local act = actions[i]
		if act then
			b.itemID   = act.itemID
			b.tipTitle = act.tipTitle
			b.tipBody  = act.tipBody
			b.Icon:SetTexture(act.icon)
			b.Tag:SetText(act.tag or "")
			if act.kind == "item" then
				b:SetAttribute("type", "item")
				b:SetAttribute("item", act.name)
				b:SetAttribute("macrotext", nil)
			elseif act.kind == "macro" then
				b:SetAttribute("type", "macro")
				b:SetAttribute("macrotext", act.macro)
				b:SetAttribute("item", nil)
			end
			updateCooldown(b)
			b:Show()
		else
			b.itemID = nil
			b:Hide()
		end
	end

	bar:SetWidth(count * 34 + (count - 1) * 5)
	bar:Show()
end

ns.RegisterEvent("BAG_UPDATE_COOLDOWN", function()
	if not bar or not bar:IsShown() then return end
	for i = 1, MAX_BUTTONS do
		if buttons[i]:IsShown() then updateCooldown(buttons[i]) end
	end
end)

ns.RegisterEvent("PLAYER_REGEN_ENABLED", function()
	if pendingUpdate and Tracker.CurrentView then
		Action.Update(Tracker.CurrentView)
	end
end)

