-- ============================================================================
-- TuWoW_Leveling — UI/Alerts.lua
-- Sistema de Notificaciones y Alertas inteligente estilo ForeverUI y Zygor.
-- Notifica subidas de nivel, habilidades listas en el instructor, equitacion/monturas,
-- puntos de talento sin asignar, bolsas llenas y transportes en camino.
-- ============================================================================

local ADDON, ns = ...
local UI = ns.UI or {}
ns.UI = UI

local L = ns.L
local Tracker = UI.Tracker

local Alerts = {}
ns.Alerts = Alerts
UI.Alerts = Alerts

local alertFrame = nil
local fadeTimer = 0
local activeDuration = 8
local isFading = false

local lastBagAlertTime = 0
local BAG_ALERT_COOLDOWN = 600 -- 10 minutos entre alertas de bolsas llenas

ns.RegisterDefaults("ui", {
	alertsEnabled = true,
	alertLevelUp = true,
	alertTalents = true,
	alertMounts = true,
	alertBags = true,
	alertSound = true,
})

---------------------------------------------------------------------------
-- 1. Construccion del Frame Visual de Toast / Alerta
---------------------------------------------------------------------------

local function buildAlertFrame()
	if alertFrame then return alertFrame end

	local f = CreateFrame("Button", "TuWoWLevelingAlertFrame", UIParent)
	f:SetSize(330, 58)
	f:SetFrameStrata("HIGH")
	f:SetToplevel(true)
	f:SetClampedToScreen(true)
	f:EnableMouse(true)
	f:RegisterForClicks("LeftButtonUp")
	f:Hide()

	-- Fondo oscuro obsidiana
	local bg = f:CreateTexture(nil, "BACKGROUND")
	bg:SetAllPoints()
	bg:SetTexture("Interface\\Buttons\\WHITE8X8")
	bg:SetVertexColor(0.08, 0.06, 0.05, 0.96)
	f.Bg = bg

	-- Borde dorado superior e inferior
	local borderTop = f:CreateTexture(nil, "BORDER")
	borderTop:SetHeight(2)
	borderTop:SetPoint("TOPLEFT", f, "TOPLEFT", 0, 0)
	borderTop:SetPoint("TOPRIGHT", f, "TOPRIGHT", 0, 0)
	borderTop:SetTexture("Interface\\Buttons\\WHITE8X8")
	borderTop:SetVertexColor(1.00, 0.82, 0.25, 0.90)
	f.BorderTop = borderTop

	local borderBottom = f:CreateTexture(nil, "BORDER")
	borderBottom:SetHeight(1)
	borderBottom:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", 0, 0)
	borderBottom:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", 0, 0)
	borderBottom:SetTexture("Interface\\Buttons\\WHITE8X8")
	borderBottom:SetVertexColor(0.60, 0.48, 0.22, 0.70)
	f.BorderBottom = borderBottom

	-- Icono circular con halo dorado a la izquierda
	local iconBg = f:CreateTexture(nil, "ARTWORK", nil, 1)
	iconBg:SetSize(36, 36)
	iconBg:SetPoint("LEFT", f, "LEFT", 12, 0)
	iconBg:SetTexture("Interface\\AddOns\\TuWoW_Leveling\\Media\\UI\\circle")
	iconBg:SetVertexColor(0.18, 0.14, 0.08, 1.0)
	f.IconBg = iconBg

	local icon = f:CreateTexture(nil, "ARTWORK", nil, 2)
	icon:SetSize(22, 22)
	icon:SetPoint("CENTER", iconBg, "CENTER", 0, 0)
	icon:SetTexture("Interface\\AddOns\\TuWoW_Leveling\\Media\\UI\\star")
	icon:SetVertexColor(1.00, 0.85, 0.20, 1.0)
	f.Icon = icon

	-- Titulo principal dorado
	local title = f:CreateFontString(nil, "OVERLAY")
	title:SetPoint("TOPLEFT", iconBg, "TOPRIGHT", 10, -8)
	title:SetPoint("TOPRIGHT", f, "TOPRIGHT", -26, -8)
	title:SetFont("Fonts\\FRIZQT__.TTF", 11, "OUTLINE")
	title:SetTextColor(1.00, 0.85, 0.28, 1.0)
	title:SetJustifyH("LEFT")
	f.Title = title

	-- Mensaje descriptivo
	local body = f:CreateFontString(nil, "OVERLAY")
	body:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -3)
	body:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -26, 8)
	body:SetFont("Fonts\\FRIZQT__.TTF", 10)
	body:SetTextColor(0.92, 0.88, 0.80, 1.0)
	body:SetJustifyH("LEFT")
	body:SetJustifyV("TOP")
	f.Body = body

	-- Boton de cerrar (X)
	local closeBtn = CreateFrame("Button", nil, f)
	closeBtn:SetSize(16, 16)
	closeBtn:SetPoint("TOPRIGHT", f, "TOPRIGHT", -6, -6)
	local closeTex = closeBtn:CreateTexture(nil, "ARTWORK")
	closeTex:SetAllPoints()
	closeTex:SetTexture("Interface\\AddOns\\TuWoW_Leveling\\Media\\UI\\close")
	closeTex:SetVertexColor(0.70, 0.65, 0.55, 0.8)
	closeBtn:SetScript("OnEnter", function() closeTex:SetVertexColor(1.0, 0.3, 0.3, 1.0) end)
	closeBtn:SetScript("OnLeave", function() closeTex:SetVertexColor(0.70, 0.65, 0.55, 0.8) end)
	closeBtn:SetScript("OnClick", function() Alerts.Hide() end)
	f.CloseBtn = closeBtn

	-- Clic en el cuerpo de la alerta
	f:SetScript("OnClick", function(self)
		if self.actionFunc then
			self.actionFunc()
		end
		Alerts.Hide()
	end)

	-- Logica de temporizador y desvanecimiento OnUpdate
	f:SetScript("OnUpdate", function(self, elapsed)
		if not isFading and activeDuration > 0 then
			fadeTimer = fadeTimer + elapsed
			if fadeTimer >= activeDuration then
				Alerts.Hide()
			end
		end
	end)

	alertFrame = f
	return f
end

---------------------------------------------------------------------------
-- 2. Posicionamiento Dinamico (Acoplado al Tracker o Centrado)
---------------------------------------------------------------------------

local function updatePosition()
	if not alertFrame then return end
	alertFrame:ClearAllPoints()

	local trackerRoot = Tracker and Tracker.Root
	if trackerRoot and trackerRoot:IsShown() then
		-- Si hay suficiente espacio arriba, se acopla justo encima del widget
		local top = trackerRoot:GetTop() or 0
		local screenH = UIParent:GetHeight() or 768
		if top + 70 <= screenH then
			alertFrame:SetPoint("BOTTOM", trackerRoot, "TOP", 0, 8)
		else
			alertFrame:SetPoint("TOP", trackerRoot, "BOTTOM", 0, -8)
		end
	else
		-- Si la ventana esta oculta, se muestra centrado en la parte superior
		alertFrame:SetPoint("TOP", UIParent, "TOP", 0, -120)
	end
end

---------------------------------------------------------------------------
-- 3. Mostrar y Ocultar Alertas
---------------------------------------------------------------------------

function Alerts.Show(opts)
	if not (ns.Get and ns.Get("ui.alertsEnabled")) then return end
	if not opts then return end

	local f = buildAlertFrame()
	f.Title:SetText(opts.title or "TuWoW Leveling")
	f.Body:SetText(opts.text or "")
	f.actionFunc = opts.onClick

	if opts.icon then
		f.Icon:SetTexture(opts.icon)
	else
		f.Icon:SetTexture("Interface\\AddOns\\TuWoW_Leveling\\Media\\UI\\star")
	end

	activeDuration = opts.duration or 8
	fadeTimer = 0
	isFading = false

	updatePosition()
	f:SetAlpha(1.0)
	f:Show()

	if ns.Get("ui.alertSound") ~= false then
		if opts.sound then
			pcall(PlaySound, opts.sound)
		else
			pcall(PlaySound, "MapPing")
		end
	end
end

function Alerts.Hide()
	if alertFrame and alertFrame:IsShown() then
		alertFrame:Hide()
		alertFrame.actionFunc = nil
	end
end

---------------------------------------------------------------------------
-- 4. Disparadores Inteligentes de Alertas en 3.3.5a
---------------------------------------------------------------------------

local alertMonitor = CreateFrame("Frame")
alertMonitor:RegisterEvent("PLAYER_LEVEL_UP")
alertMonitor:RegisterEvent("BAG_UPDATE")
alertMonitor:RegisterEvent("PLAYER_ENTERING_WORLD")

alertMonitor:SetScript("OnEvent", function(self, event, ...)
	if not (ns.Get and ns.Get("ui.alertsEnabled")) then return end

	-- A. Subida de Nivel
	if event == "PLAYER_LEVEL_UP" then
		local newLevel = ...
		if not newLevel then return end

		-- 1. Monturas y Equitacion (Nivel 20 y 40)
		if (newLevel == 20 or newLevel == 40) and ns.Get("ui.alertMounts") ~= false then
			Alerts.Show({
				title = string.format("¡Nivel %d Alcanzado!", newLevel),
				text = "¡Ya puedes aprender equitación y viajar en tu montura! Habla con tu instructor.",
				sound = "LEVELUPSOUND",
				duration = 10,
				onClick = function()
					if ns.UI and ns.UI.ShowLookup then
						ns.UI.ShowLookup({ query = "Equitación" })
					end
				end,
			})
			return
		end

		-- 2. Habilidades de Clase cada nivel par
		if (newLevel % 2 == 0 or newLevel <= 10) and ns.Get("ui.alertLevelUp") ~= false then
			Alerts.Show({
				title = string.format("¡Felicidades por el Nivel %d!", newLevel),
				text = "Tienes nuevas habilidades disponibles para aprender en tu instructor de clase.",
				sound = "LEVELUPSOUND",
				duration = 9,
				onClick = function()
					if ns.UI and ns.UI.ShowLookup then
						ns.UI.ShowLookup({ query = "Instructor" })
					end
				end,
			})
		end

		-- 3. Talentos sin gastar a partir de nivel 10
		if newLevel >= 10 and ns.Get("ui.alertTalents") ~= false then
			local unspent = GetNumUnspentTalents and GetNumUnspentTalents()
			if unspent and unspent > 0 then
				Alerts.Show({
					title = "¡Talentos Disponibles!",
					text = string.format("Tienes %d punto(s) de talento para asignar en tu árbol de talentos.", unspent),
					sound = "INTERFACESOUND_CHARWINDOWOPEN_DIR",
					duration = 9,
					onClick = function()
						if ToggleTalentFrame then ToggleTalentFrame() end
					end,
				})
			end
		end

	-- B. Bolsas casi llenas
	elseif event == "BAG_UPDATE" then
		if not (ns.Get and ns.Get("ui.alertBags")) then return end
		local now = GetTime()
		if now - lastBagAlertTime < BAG_ALERT_COOLDOWN then return end
		if InCombatLockdown and InCombatLockdown() then return end
		if UnitIsDeadOrGhost and UnitIsDeadOrGhost("player") then return end

		local freeSlots = 0
		for bag = 0, 4 do
			local free = GetContainerNumFreeSlots(bag)
			if free then freeSlots = freeSlots + free end
		end

		if freeSlots <= 2 then
			lastBagAlertTime = now
			Alerts.Show({
				title = "Bolsas Casi Llenas",
				text = string.format("Solo te quedan %d espacio(s) libres. Recuerda vender chatarra al próximo vendedor.", freeSlots),
				duration = 7,
			})
		end

	-- C. Alertas de Transporte (conectadas a Nav/Alerts.lua)
	elseif event == "PLAYER_ENTERING_WORLD" then
		-- Suscribirse a transportes
		if ns.On then
			ns.On("NAV_TRANSIT_ALERT", function(kind, title, seconds)
				Alerts.Show({
					title = "Transporte en Camino",
					text = string.format("%s llegará en breve. ¡Prepárate para abordar!", title or "El transporte"),
					duration = 6,
				})
			end)
		end
	end
end)
