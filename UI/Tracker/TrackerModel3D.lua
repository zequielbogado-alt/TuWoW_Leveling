-- ============================================================================
-- TuWoW_Leveling — UI/Tracker/TrackerModel3D.lua
-- Docked ForeverUI 3D Creature Viewer for the TuWoW Leveling widget.
-- Renders the 3D PlayerModel of the current step's NPC or target creature
-- via 3.3.5a's native PlayerModel:SetCreature(npcID), with drag rotation.
-- ============================================================================

local ADDON, ns = ...
local Tracker = ns.UI.Tracker
local Skin = Tracker.Skin
local L = ns.L

local Model3D = {}
Tracker.Model3D = Model3D

local box, model
local creatures = {}
local curIdx = 1
local lastShownNpc = nil
local dragging = false
local lastCursorX = 0
local facing = 0.35

---------------------------------------------------------------------------
-- 1. Extract Creature NPC IDs from Current Step
---------------------------------------------------------------------------

local function collectStepCreatures(view)
	local out = {}
	local seen = {}
	if not view or type(view.goals) ~= "table" then return out end

	local function addNpc(id, fallbackName)
		id = tonumber(id)
		if not id or id <= 0 or seen[id] then return end
		seen[id] = true
		local name = (ns.Names and ns.Names.Npc and ns.Names.Npc(id)) or fallbackName or (L["Target"] .. " #" .. id)
		out[#out + 1] = { id = id, name = name }
	end

	-- Prioritize active goals first
	for _, pass in ipairs({ "active", "all" }) do
		for _, g in ipairs(view.goals) do
			if g.status ~= "na" and g.status ~= "skipped" and (pass == "all" or g.status ~= "done") then
				if g.npc then
					addNpc(g.npc, g.npcName or g.subject)
				end
				if g.source and g.source.kind == "npc" and g.source.id then
					addNpc(g.source.id, g.source.name)
				end
				if type(g.fromNpcs) == "table" then
					for _, fn in ipairs(g.fromNpcs) do
						if fn.npc then addNpc(fn.npc, fn.npcName) end
					end
				end
			end
		end
		if #out > 0 then break end
	end

	return out
end

---------------------------------------------------------------------------
-- 2. Anchor Side (Left or Right of Main Widget Based on Screen Space)
---------------------------------------------------------------------------

local function updateAnchor(root)
	if not box or not root then return end
	box:ClearAllPoints()
	local left = root:GetLeft()
	if left and left < 145 then
		box:SetPoint("TOPLEFT", root, "TOPRIGHT", 6, 0)
	else
		box:SetPoint("TOPRIGHT", root, "TOPLEFT", -6, 0)
	end
end

local function showCreatureIndex(idx)
	if not box or not model or #creatures == 0 then return end
	if idx < 1 then idx = #creatures elseif idx > #creatures then idx = 1 end
	curIdx = idx
	local entry = creatures[curIdx]
	if not entry then return end

	box.Name:SetText(entry.name or "")
	if #creatures > 1 then
		box.PrevBtn:Show()
		box.NextBtn:Show()
	else
		box.PrevBtn:Hide()
		box.NextBtn:Hide()
	end

	if lastShownNpc ~= entry.id then
		lastShownNpc = entry.id
		facing = 0.35
		model:Show()
		model:ClearModel()
		if model.SetCamera then pcall(model.SetCamera, model, 0) end
		if model.SetModelScale then pcall(model.SetModelScale, model, 1.0) end
		if model.SetPosition then pcall(model.SetPosition, model, 0, 0, 0) end
		if model.SetCreature and entry.id and entry.id > 0 then
			pcall(model.SetCreature, model, entry.id)
		end
		if model.SetFacing then
			pcall(model.SetFacing, model, facing)
		end
	end
end

---------------------------------------------------------------------------
-- 3. Build 3D Model Viewer Frame
---------------------------------------------------------------------------

function Model3D.Build(root)
	box = CreateFrame("Frame", "TuWoWLevelingCreatureViewer", root)
	box:SetSize(118, 146)
	box:Hide()

	Skin.ApplyForeverFrame(box, "bgMain")

	-- Top Header Plate
	local hdr = box:CreateTexture(nil, "BACKGROUND", nil, -4)
	hdr:SetHeight(20)
	hdr:SetPoint("TOPLEFT", 1, -1)
	hdr:SetPoint("TOPRIGHT", -1, -1)
	hdr:SetTexture(Skin.WHITE)
	hdr:SetVertexColor(Skin.Color("bgHeader"))

	local hdrDiv = box:CreateTexture(nil, "BORDER")
	hdrDiv:SetHeight(1)
	hdrDiv:SetPoint("TOPLEFT", 1, -21)
	hdrDiv:SetPoint("TOPRIGHT", -1, -21)
	hdrDiv:SetTexture(Skin.WHITE)
	hdrDiv:SetVertexColor(0.68, 0.54, 0.28, 0.75)

	local caption = box:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(caption, 9.5, "OUTLINE")
	caption:SetPoint("LEFT", box, "TOPLEFT", 7, -11)
	caption:SetText(L["3D TARGET"])
	caption:SetTextColor(1.00, 0.85, 0.28, 1)
	box.Caption = caption

	-- Close button on 3D viewer
	local closeBtn = CreateFrame("Button", nil, box)
	closeBtn:SetSize(16, 16)
	closeBtn:SetPoint("TOPRIGHT", box, "TOPRIGHT", -3, -3)
	local closeIc = closeBtn:CreateTexture(nil, "ARTWORK")
	closeIc:SetSize(10, 10)
	closeIc:SetPoint("CENTER")
	closeIc:SetTexture(Skin.MEDIA_ICONS .. "close")
	closeIc:SetVertexColor(0.80, 0.72, 0.55, 0.9)
	closeBtn:SetScript("OnEnter", function() closeIc:SetVertexColor(1, 0.88, 0.35, 1) end)
	closeBtn:SetScript("OnLeave", function() closeIc:SetVertexColor(0.80, 0.72, 0.55, 0.9) end)
	closeBtn:SetScript("OnClick", function() Model3D.Toggle() end)

	-- 3D PlayerModel viewport
	model = CreateFrame("PlayerModel", nil, box)
	model:SetFrameLevel((box:GetFrameLevel() or 2) + 5)
	model:SetPoint("TOPLEFT", box, "TOPLEFT", 4, -23)
	model:SetPoint("BOTTOMRIGHT", box, "BOTTOMRIGHT", -4, 24)
	model:EnableMouse(true)

	model:SetScript("OnMouseDown", function(_, button)
		if button == "LeftButton" then
			dragging = true
			lastCursorX = GetCursorPosition()
		end
	end)
	model:SetScript("OnMouseUp", function()
		dragging = false
	end)
	model:SetScript("OnHide", function()
		dragging = false
	end)
	model:SetScript("OnUpdate", function(self)
		if not dragging then return end
		local cx = GetCursorPosition()
		local dx = (cx - lastCursorX) * 0.015
		lastCursorX = cx
		facing = facing + dx
		if self.SetFacing then pcall(self.SetFacing, self, facing) end
	end)

	-- Bottom Nameplate Bar
	local foot = box:CreateTexture(nil, "BACKGROUND", nil, -4)
	foot:SetHeight(22)
	foot:SetPoint("BOTTOMLEFT", 1, 1)
	foot:SetPoint("BOTTOMRIGHT", -1, 1)
	foot:SetTexture(Skin.WHITE)
	foot:SetVertexColor(Skin.Color("bgFooter"))

	local nameText = box:CreateFontString(nil, "OVERLAY")
	Skin.ApplyFont(nameText, 10.5, "")
	nameText:SetPoint("LEFT", box, "BOTTOMLEFT", 16, 12)
	nameText:SetPoint("RIGHT", box, "BOTTOMRIGHT", -16, 12)
	nameText:SetJustifyH("CENTER")
	nameText:SetWordWrap(false)
	nameText:SetTextColor(1.00, 0.88, 0.42, 1)
	box.Name = nameText

	local prevBtn = CreateFrame("Button", nil, box)
	prevBtn:SetSize(14, 18)
	prevBtn:SetPoint("BOTTOMLEFT", box, "BOTTOMLEFT", 2, 3)
	local pIc = prevBtn:CreateTexture(nil, "ARTWORK")
	pIc:SetSize(10, 10)
	pIc:SetPoint("CENTER")
	pIc:SetTexture(Skin.MEDIA_ICONS .. "chevron-left")
	pIc:SetVertexColor(0.9, 0.8, 0.5, 1)
	prevBtn:SetScript("OnClick", function() showCreatureIndex(curIdx - 1) end)
	box.PrevBtn = prevBtn

	local nextBtn = CreateFrame("Button", nil, box)
	nextBtn:SetSize(14, 18)
	nextBtn:SetPoint("BOTTOMRIGHT", box, "BOTTOMRIGHT", -2, 3)
	local nIc = nextBtn:CreateTexture(nil, "ARTWORK")
	nIc:SetSize(10, 10)
	nIc:SetPoint("CENTER")
	nIc:SetTexture(Skin.MEDIA_ICONS .. "chevron-right")
	nIc:SetVertexColor(0.9, 0.8, 0.5, 1)
	nextBtn:SetScript("OnClick", function() showCreatureIndex(curIdx + 1) end)
	box.NextBtn = nextBtn

	root.Model3D = box
	updateAnchor(root)
end

function Model3D.Update(view, root)
	if not box then return end
	if ns.Get and ns.Get("ui.trackerModel3D") == false or (ns.Get and ns.Get("ui.trackerMini")) then
		box:Hide()
		return
	end

	creatures = collectStepCreatures(view)
	if #creatures == 0 then
		lastShownNpc = nil
		box:Hide()
		return
	end

	updateAnchor(root or box:GetParent())
	box:Show()
	showCreatureIndex(1)
end

function Model3D.Toggle()
	local cur = ns.Get and ns.Get("ui.trackerModel3D") ~= false
	ns.Set("ui.trackerModel3D", not cur)
	if Tracker.Root and Tracker.Header then
		Tracker.Header.UpdateToolbar(Tracker.Root.TopBar)
	end
	Model3D.Update(Tracker.CurrentView, Tracker.Root)
end

