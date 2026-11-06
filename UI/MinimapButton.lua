-- ============================================================================
-- TuWoW_Leveling — UI/MinimapButton.lua
-- Botón circular del Minimapa compatible con ForeverUI y WotLK 3.3.5a.
-- Permite acceder al centro de mandos de TuWoW Leveling, alternar el widget
-- flotante y abrir el selector de guías o mazmorras con un clic.
-- ============================================================================

local ADDON, ns = ...
local UI = ns.UI or {}
ns.UI = UI

local L = ns.L
local W = ns.Widgets
local Theme = ns.Theme

local cos, sin, atan2, rad, deg = math.cos, math.sin, math.atan2, math.rad, math.deg
local abs, floor, max, min = math.abs, math.floor, math.max, math.min

local SIZE = 31
local RADIUS_OFFSET = 5

local MinimapButton = {}
UI.MinimapButton = MinimapButton

local button = nil

ns.RegisterDefaults("ui", {
	minimapButton = true,
	minimapAngle = 215,
})

---------------------------------------------------------------------------
-- 1. Posicionamiento en el borde del Minimapa (compatible con ForeverUI)
---------------------------------------------------------------------------

local function getAngle()
	local a = tonumber(ns.Get and ns.Get("ui.minimapAngle"))
	return a and (a % 360) or 215
end

local function updatePosition(angleDeg)
	if not button or not Minimap then return end
	local a = angleDeg or getAngle()
	local radAngle = rad(a)
	local x, y = cos(radAngle), sin(radAngle)

	-- Compensar escala especial del minimapa en ForeverUI (198 / 140 = ~1.41)
	local mapScale = (ForeverUI and ForeverUI.Minimap and Minimap and Minimap:GetScale()) or 1
	if mapScale ~= 1 then
		button:SetScale(1 / mapScale)
	end

	local radiusOffset = (mapScale ~= 1) and 1 or RADIUS_OFFSET
	local w = ((Minimap:GetWidth() or 140) * mapScale / 2) + radiusOffset
	local h = ((Minimap:GetHeight() or 140) * mapScale / 2) + radiusOffset

	-- Soporte para minimapas cuadrados
	if GetMinimapShape and GetMinimapShape() == "SQUARE" then
		local m = max(abs(x), abs(y))
		x, y = x / m, y / m
	end

	button:ClearAllPoints()
	button:SetPoint("CENTER", Minimap, "CENTER", x * w, y * h)
end

local function getCursorAngle()
	if not Minimap then return 215 end
	local mx, my = Minimap:GetCenter()
	if not mx or not my then return 215 end
	local scale = Minimap:GetEffectiveScale()
	local cx, cy = GetCursorPosition()
	return floor(deg(atan2(cy / scale - my, cx / scale - mx)) + 0.5) % 360
end

---------------------------------------------------------------------------
-- 2. Tooltip y Menú Rápido
---------------------------------------------------------------------------

local function showTooltip(self)
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
	GameTooltip:ClearLines()
	GameTooltip:AddLine("TuWoW Leveling", 1.00, 0.85, 0.25)
	GameTooltip:AddLine("Clic izquierdo: |cffffffffMostrar / Ocultar misiones|r", 0.90, 0.88, 0.80)
	GameTooltip:AddLine("Clic derecho: |cffffffffMenú rápido de guías|r", 0.90, 0.88, 0.80)
	GameTooltip:AddLine("Shift + Clic: |cffffffffOpciones del addon|r", 0.75, 0.75, 0.75)
	GameTooltip:AddLine("Arrastrar: |cffffffffMover por el minimapa|r", 0.65, 0.65, 0.65)
	GameTooltip:Show()
end

local function showMenu(anchor)
	if not (W and W.ShowMenu) then return end
	local isShown = ns.Get and ns.Get("ui.shown")

	local items = {
		{
			text = isShown and L["Hide window"] or L["Show window"],
			icon = "window",
			color = "accent",
			onClick = function()
				if ns.Fire then ns.Fire("TOGGLE_FRAME") end
			end,
		},
		{
			text = L["Choose a guide"],
			icon = "guides",
			color = "text",
			onClick = function()
				if ns.UI and ns.UI.ShowPicker then
					ns.UI.ShowPicker()
				elseif ns.Fire then
					ns.Fire("SHOW_PICKER")
				end
			end,
		},
		{
			text = L["Dungeon quests"],
			icon = "icon-dungeon",
			color = "text",
			onClick = function()
				if ns.UI and ns.UI.DungeonsSection and ns.UI.DungeonsSection.Show then
					ns.UI.DungeonsSection.Show()
				elseif ns.Fire then
					ns.Fire("SHOW_DUNGEON")
				end
			end,
		},
		{
			text = L["World search"],
			icon = "search",
			color = "text",
			onClick = function()
				if ns.UI and ns.UI.ShowLookup then
					ns.UI.ShowLookup()
				elseif ns.Fire then
					ns.Fire("SHOW_LOOKUP")
				end
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
	W.ShowMenu(anchor or button, items)
end

---------------------------------------------------------------------------
-- 3. Construcción del Botón Circular
---------------------------------------------------------------------------

function MinimapButton.Build()
	if button then return button end
	if not Minimap then return nil end

	button = CreateFrame("Button", "TuWoWLevelingMinimapButton", Minimap)
	button:SetSize(SIZE, SIZE)
	button:SetFrameStrata("MEDIUM")
	button:SetFrameLevel((Minimap:GetFrameLevel() or 1) + 15)
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	button:RegisterForDrag("LeftButton")

	-- Resaltado nativo de botón de minimapa
	button:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

	-- Fondo oscuro nativo de minimapa
	local bg = button:CreateTexture(nil, "BACKGROUND")
	bg:SetSize(20, 20)
	bg:SetPoint("TOPLEFT", 7, -5)
	bg:SetTexture("Interface\\Minimap\\UI-Minimap-Background")
	button.Bg = bg

	-- Estrella / Emblema central dorado de TuWoW Leveling
	local emblem = button:CreateTexture(nil, "ARTWORK")
	emblem:SetSize(18, 18)
	emblem:SetPoint("TOPLEFT", 7, -6)
	emblem:SetTexture("Interface\\AddOns\\TuWoW_Leveling\\Media\\UI\\star")
	emblem:SetVertexColor(1.00, 0.84, 0.22, 1.0)
	button.Emblem = emblem

	-- Borde circular dorado nativo de minimapa de World of Warcraft
	local border = button:CreateTexture(nil, "OVERLAY")
	border:SetSize(53, 53)
	border:SetPoint("TOPLEFT", 0, 0)
	border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
	button.Border = border

	-- Comportamiento de clics y arrastre
	button:SetScript("OnClick", function(self, btn)
		if IsShiftKeyDown() then
			if ns.UI and ns.UI.ShowOptions then ns.UI.ShowOptions() end
		elseif btn == "RightButton" then
			GameTooltip:Hide()
			showMenu(self)
		else
			if ns.Fire then ns.Fire("TOGGLE_FRAME") end
		end
	end)

	button:SetScript("OnEnter", showTooltip)
	button:SetScript("OnLeave", function() GameTooltip:Hide() end)

	button:SetScript("OnDragStart", function(self)
		GameTooltip:Hide()
		self:SetScript("OnUpdate", function()
			updatePosition(getCursorAngle())
		end)
	end)

	button:SetScript("OnDragStop", function(self)
		self:SetScript("OnUpdate", nil)
		local finalAngle = getCursorAngle()
		if ns.Set then ns.Set("ui.minimapAngle", finalAngle) end
		updatePosition(finalAngle)
	end)

	if Minimap.HookScript then
		pcall(Minimap.HookScript, Minimap, "OnSizeChanged", function()
			if button and button:IsShown() then updatePosition() end
		end)
	end

	_G.TuWoWLevelingMinimapButton = button
	updatePosition()
	return button
end

function MinimapButton.Update()
	local enabled = ns.Get and ns.Get("ui.minimapButton")
	if enabled == nil then enabled = true end
	if enabled then
		local b = MinimapButton.Build()
		if b then
			updatePosition()
			b:Show()
		end
	elseif button then
		button:Hide()
	end
end

-- Inicialización con ciclo de vida seguro del addon
if ns.OnLogin then
	ns.OnLogin(function() MinimapButton.Update() end)
end
if ns.OnInit then
	ns.OnInit(function() MinimapButton.Update() end)
end

-- Respaldo con eventos nativos
local initFrame = CreateFrame("Frame", "TuWoW_MinimapInitFrame", UIParent)
initFrame:RegisterEvent("PLAYER_LOGIN")
initFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
initFrame:SetScript("OnEvent", function(self, event)
	MinimapButton.Update()
end)

-- Si el Minimapa ya está listo en el entorno, inicializar ya mismo
if Minimap then
	MinimapButton.Update()
end

ns.On("SETTING_CHANGED", function(path)
	if path == "ui.minimapButton" or path == "ui.minimapAngle" or path == "ui" then
		MinimapButton.Update()
	end
end)
