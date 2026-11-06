-- TuWoW_Leveling: Capa de compatibilidad y polyfills para cliente WotLK 3.3.5a (Interface: 30300)
-- Provee los metodos de Frame/Texture modernos (SetColorTexture, SetShown, SetAtlas, SetResizeBounds,
-- BackdropTemplate) y los namespaces C_* (C_Timer, C_AddOns, C_Texture, C_QuestLog, C_GossipInfo,
-- C_Item, C_Spell, C_SkillInfo, C_Reputation, C_Map) sobre las APIs nativas de 3.3.5a y ServerSystems.

local ADDON, ns = ...

local type, pairs, ipairs, select, tonumber, tostring, pcall = type, pairs, ipairs, select, tonumber, tostring, pcall
local floor, max, min = math.floor, math.max, math.min
local find, sub, lower, match, format = string.find, string.sub, string.lower, string.match, string.format

local WHITE_TEX = "Interface\\Buttons\\WHITE8X8"

---------------------------------------------------------------------------
-- 1. Vector2D helper (usado por C_Map y calculos de coordenadas)
---------------------------------------------------------------------------

local Vector2DMixin = {}
Vector2DMixin.__index = Vector2DMixin

function Vector2DMixin:GetXY()
	return self.x, self.y
end

function Vector2DMixin:SetXY(x, y)
	self.x, self.y = x, y
end

if not CreateVector2D then
	function CreateVector2D(x, y)
		return setmetatable({ x = x or 0, y = y or 0 }, Vector2DMixin)
	end
end

---------------------------------------------------------------------------
-- 2. Polyfills de Metatablas de UI (Frame, Texture, FontString, Button...)
---------------------------------------------------------------------------

local function patchRegionMeta(obj)
	if not obj then return end
	local mt = getmetatable(obj)
	local idx = mt and mt.__index
	if type(idx) ~= "table" then return end

	if not idx.SetShown then
		function idx:SetShown(shown)
			if shown then self:Show() else self:Hide() end
		end
	end

	if not idx.SetEnabled then
		function idx:SetEnabled(enabled)
			if enabled ~= false then
				if self.Enable then self:Enable() end
			else
				if self.Disable then self:Disable() end
			end
		end
	end

	if not idx.SetResizeBounds and idx.SetMinResize then
		function idx:SetResizeBounds(minW, minH, maxW, maxH)
			if minW and minH then self:SetMinResize(minW, minH) end
			if maxW and maxH and self.SetMaxResize then self:SetMaxResize(maxW, maxH) end
		end
	end

	-- En 3.3.5a CreateTexture(name, layer, inherits) no soporta el 4to argumento subLevel.
	-- Mapeamos subLevels de BACKGROUND mayores a -4 hacia BORDER para evitar que los
	-- fondos de tarjetas o filas queden ocultos detras del fondo principal de la ventana.
	if idx.CreateTexture and not idx._twlPatchedCreateTexture then
		local origCreateTexture = idx.CreateTexture
		idx._twlPatchedCreateTexture = true
		function idx:CreateTexture(name, layer, inherits, subLevel)
			local effLayer = layer or "ARTWORK"
			if type(subLevel) == "number" then
				if effLayer == "BACKGROUND" and subLevel > -4 then
					effLayer = subLevel > 0 and "ARTWORK" or "BORDER"
				elseif effLayer == "BORDER" and subLevel > 2 then
					effLayer = "ARTWORK"
				end
			end
			local tex = origCreateTexture(self, name, effLayer, inherits)
			return tex
		end
	end

	-- En 3.3.5a SetDrawLayer solo recibe (layer)
	if idx.SetDrawLayer and not idx._twlPatchedSetDrawLayer then
		local origSetDrawLayer = idx.SetDrawLayer
		idx._twlPatchedSetDrawLayer = true
		function idx:SetDrawLayer(layer, subLevel)
			local effLayer = layer or "ARTWORK"
			if type(subLevel) == "number" and effLayer == "BACKGROUND" and subLevel > -4 then
				effLayer = subLevel > 0 and "ARTWORK" or "BORDER"
			end
			return origSetDrawLayer(self, effLayer)
		end
	end

	-- En 3.3.5a ciertos scripts como OnArrowPressed o OnKeyDown en EditBox no existen y lanzan error C.
	-- Capturamos con pcall para proteger llamadas modernas sin quebrar el motor de UI.
	if idx.SetScript and not idx._twlPatchedSetScript then
		local origSetScript = idx.SetScript
		idx._twlPatchedSetScript = true
		function idx:SetScript(handler, fn)
			local ok, err = pcall(origSetScript, self, handler, fn)
			if not ok then
				return false
			end
			return true
		end
	end
end

local function patchTextureMeta(tex)
	if not tex then return end
	local mt = getmetatable(tex)
	local idx = mt and mt.__index
	if type(idx) ~= "table" then return end

	if not idx.SetShown then
		function idx:SetShown(shown)
			if shown then self:Show() else self:Hide() end
		end
	end

	if not idx.SetEnabled then
		function idx:SetEnabled(enabled)
			if enabled ~= false then
				if self.Enable then self:Enable() end
			else
				if self.Disable then self:Disable() end
			end
		end
	end

	if not idx.SetColorTexture then
		function idx:SetColorTexture(r, g, b, a)
			self:SetTexture(r or 0, g or 0, b or 0, a ~= nil and a or 1)
		end
	end

	-- En 3.3.5a SetTexture(path, tile) recibe booleano en vez de ("REPEAT", "REPEAT")
	if idx.SetTexture and not idx._twlPatchedSetTexture then
		local origSetTexture = idx.SetTexture
		idx._twlPatchedSetTexture = true
		function idx:SetTexture(a1, a2, a3, a4)
			if a1 == nil then
				return origSetTexture(self, nil)
			elseif type(a1) == "string" then
				if type(a2) == "string" then
					return origSetTexture(self, a1, a2 == "REPEAT")
				end
				return origSetTexture(self, a1, a2)
			elseif type(a1) == "number" and type(a2) == "number" then
				return origSetTexture(self, a1, a2, a3, a4)
			end
		end
	end

	-- En 3.3.5a SetGradient no acepta tablas CreateColor(r,g,b,a); redirigimos a SetGradientAlpha
	if idx.SetGradient and not idx._twlPatchedSetGradient then
		local origSetGradient = idx.SetGradient
		idx._twlPatchedSetGradient = true
		function idx:SetGradient(orientation, c1, c2, ...)
			if type(c1) == "table" and type(c2) == "table" and self.SetGradientAlpha then
				local r1 = c1.r or c1[1] or 0
				local g1 = c1.g or c1[2] or 0
				local b1 = c1.b or c1[3] or 0
				local a1 = c1.a ~= nil and c1.a or (c1[4] ~= nil and c1[4] or 1)
				local r2 = c2.r or c2[1] or 0
				local g2 = c2.g or c2[2] or 0
				local b2 = c2.b or c2[3] or 0
				local a2 = c2.a ~= nil and c2.a or (c2[4] ~= nil and c2[4] or 1)
				return self:SetGradientAlpha(orientation, r1, g1, b1, a1, r2, g2, b2, a2)
			end
			return origSetGradient(self, orientation, c1, c2, ...)
		end
	end

	if not idx.SetAtlas then
		function idx:SetAtlas(name, useAtlasSize)
			if type(name) == "string" and UIAtlas and UIAtlas.data then
				local e = UIAtlas.data[name] or UIAtlas.data[lower(name)]
				if e then
					self:SetTexture(e[1])
					self:SetTexCoord(e[2], e[3], e[4], e[5])
					if useAtlasSize then
						self:SetSize(e[6], e[7])
					end
					return true
				end
			end
			return false
		end
	end
end

do
	local dummyFrame = CreateFrame("Frame")
	local dummyBtn = CreateFrame("Button")
	local dummyCheck = CreateFrame("CheckButton")
	local dummySlider = CreateFrame("Slider")
	local dummyStatus = CreateFrame("StatusBar")
	local dummyScroll = CreateFrame("ScrollFrame")
	local dummyEdit = CreateFrame("EditBox")
	if dummyEdit.SetAutoFocus then dummyEdit:SetAutoFocus(false) end
	if dummyEdit.ClearFocus then dummyEdit:ClearFocus() end
	local dummyModel = CreateFrame("PlayerModel")
	local dummyTex = dummyFrame:CreateTexture()
	local dummyFS = dummyFrame:CreateFontString()

	for _, f in ipairs({ dummyFrame, dummyBtn, dummyCheck, dummySlider, dummyStatus, dummyScroll, dummyEdit, dummyModel }) do
		if f and f.Hide then f:Hide() end
		if f and f.EnableMouse then f:EnableMouse(false) end
		if f and f.EnableKeyboard then f:EnableKeyboard(false) end
	end

	patchRegionMeta(dummyFrame)
	patchRegionMeta(dummyBtn)
	patchRegionMeta(dummyCheck)
	patchRegionMeta(dummySlider)
	patchRegionMeta(dummyStatus)
	patchRegionMeta(dummyScroll)
	patchRegionMeta(dummyEdit)
	patchRegionMeta(dummyModel)
	patchRegionMeta(GameTooltip)
	patchTextureMeta(dummyTex)
	patchRegionMeta(dummyFS)

	-- En 3.3.5a FontString:SetMaxLines y GetNumLines no existen en la API nativa
	local fsMT = getmetatable(dummyFS)
	local fsIdx = fsMT and fsMT.__index
	if type(fsIdx) == "table" and not fsIdx.SetMaxLines then
		function fsIdx:SetMaxLines() end
	end
	if type(fsIdx) == "table" and not fsIdx.GetNumLines then
		function fsIdx:GetNumLines()
			local text = self:GetText()
			if not text or text == "" then return 0 end
			local h = self:GetStringHeight() or 0
			local _, fontHeight = self:GetFont()
			if fontHeight and fontHeight > 0 then
				local lines = math.floor((h / fontHeight) + 0.5)
				return math.max(1, lines)
			end
			return 1
		end
	end
	if type(fsIdx) == "table" and fsIdx.SetText and not fsIdx._twlPatchedSetText then
		local origFSSetText = fsIdx.SetText
		fsIdx._twlPatchedSetText = true
		function fsIdx:SetText(text)
			return origFSSetText(self, text ~= nil and tostring(text) or "")
		end
	end

	-- En 3.3.5a Button:SetText tampoco tolera nil
	local btnMT = getmetatable(dummyBtn)
	local btnIdx = btnMT and btnMT.__index
	if type(btnIdx) == "table" and btnIdx.SetText and not btnIdx._twlPatchedSetText then
		local origBtnSetText = btnIdx.SetText
		btnIdx._twlPatchedSetText = true
		function btnIdx:SetText(text)
			return origBtnSetText(self, text ~= nil and tostring(text) or "")
		end
	end
	if type(btnIdx) == "table" and not btnIdx.SetEnabled then
		function btnIdx:SetEnabled(enabled)
			if enabled ~= false then
				if self.Enable then self:Enable() end
			else
				if self.Disable then self:Disable() end
			end
		end
	end

	-- En 3.3.5a Slider:SetObeyStepOnDrag no existe (Retail); agregamos no-op seguro
	local slMT = getmetatable(dummySlider)
	local slIdx = slMT and slMT.__index
	if type(slIdx) == "table" and not slIdx.SetObeyStepOnDrag then
		function slIdx:SetObeyStepOnDrag() end
	end
end

-- Sanitizar "BackdropTemplate" en CreateFrame para 3.3.5a y desactivar autoFocus en EditBox
do
	local origCreateFrame = CreateFrame
	function CreateFrame(frameType, name, parent, template, id)
		if type(template) == "string" and find(template, "BackdropTemplate", 1, true) then
			template = template:gsub("%s*,?%s*BackdropTemplate", ""):gsub("^%s*,%s*", "")
			if template == "" then template = nil end
		end
		local f = origCreateFrame(frameType, name, parent, template, id)
		if f and type(frameType) == "string" and lower(frameType) == "editbox" then
			if f.SetAutoFocus then f:SetAutoFocus(false) end
			if f.ClearFocus then f:ClearFocus() end
		end
		return f
	end
end

---------------------------------------------------------------------------
-- 3. C_Timer (Cola eficiente sobre un unico frame OnUpdate)
---------------------------------------------------------------------------

if not C_Timer then
	C_Timer = {}
end

if not C_Timer.After or not C_Timer.NewTicker then
	local timerFrame = CreateFrame("Frame", "TuWoW_TimerFrame", UIParent)
	timerFrame:SetSize(1, 1)
	timerFrame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", -10, -10)
	timerFrame:Show()
	local timers = {}
	local count = 0

	local TickerProto = {}
	TickerProto.__index = TickerProto
	function TickerProto:Cancel()
		self._cancelled = true
	end
	function TickerProto:IsCancelled()
		return self._cancelled and true or false
	end

	local function onUpdate(_, elapsed)
		if count == 0 then
			timerFrame:SetScript("OnUpdate", nil)
			return
		end
		local now = GetTime()
		local i = 1
		while i <= count do
			local t = timers[i]
			if t._cancelled then
				timers[i] = timers[count]
				timers[count] = nil
				count = count - 1
			elseif now >= t._next then
				if t._iterations then
					t._iterations = t._iterations - 1
					if t._iterations <= 0 then
						t._cancelled = true
					end
				end
				if t._cancelled then
					timers[i] = timers[count]
					timers[count] = nil
					count = count - 1
				else
					t._next = now + t._duration
					i = i + 1
				end
				local ok, err = pcall(t._callback, t)
				if not ok and geterrorhandler then
					geterrorhandler()(err)
				end
			else
				i = i + 1
			end
		end
		if count == 0 then
			timerFrame:SetScript("OnUpdate", nil)
		end
	end

	function C_Timer.NewTicker(duration, callback, iterations)
		duration = max(0.001, tonumber(duration) or 0)
		local t = setmetatable({
			_duration = duration,
			_next = GetTime() + duration,
			_callback = callback,
			_iterations = iterations,
			_cancelled = false,
		}, TickerProto)
		count = count + 1
		timers[count] = t
		if count == 1 then
			timerFrame:SetScript("OnUpdate", onUpdate)
		end
		return t
	end

	function C_Timer.NewTimer(duration, callback)
		return C_Timer.NewTicker(duration, callback, 1)
	end

	function C_Timer.After(duration, callback)
		C_Timer.NewTicker(duration, callback, 1)
	end
end

---------------------------------------------------------------------------
-- 4. C_AddOns (Envoltorio sobre funciones globales de AddOns 3.3.5a)
---------------------------------------------------------------------------

C_AddOns = C_AddOns or {}

if not C_AddOns.GetAddOnMetadata and GetAddOnMetadata then
	C_AddOns.GetAddOnMetadata = GetAddOnMetadata
end
if not C_AddOns.IsAddOnLoaded and IsAddOnLoaded then
	C_AddOns.IsAddOnLoaded = IsAddOnLoaded
end
if not C_AddOns.LoadAddOn and LoadAddOn then
	C_AddOns.LoadAddOn = LoadAddOn
end
if not C_AddOns.GetAddOnInfo and GetAddOnInfo then
	C_AddOns.GetAddOnInfo = GetAddOnInfo
end
if not C_AddOns.DoesAddOnExist and GetAddOnInfo then
	function C_AddOns.DoesAddOnExist(name)
		local _, _, _, _, reason = GetAddOnInfo(name)
		return reason ~= "MISSING"
	end
end

---------------------------------------------------------------------------
-- 5. C_Texture (Puente con UIAtlas de ServerSystems / ForeverUI)
---------------------------------------------------------------------------

C_Texture = C_Texture or {}

if not C_Texture.GetAtlasInfo then
	function C_Texture.GetAtlasInfo(name)
		if type(name) ~= "string" or not (UIAtlas and UIAtlas.data) then return nil end
		local e = UIAtlas.data[name] or UIAtlas.data[lower(name)]
		if not e then return nil end
		return {
			file = e[1],
			filename = e[1],
			leftTexCoord = e[2],
			rightTexCoord = e[3],
			topTexCoord = e[4],
			bottomTexCoord = e[5],
			width = e[6],
			height = e[7],
		}
	end
end

---------------------------------------------------------------------------
-- 6. C_Item & C_Spell & C_SpellBook
---------------------------------------------------------------------------

C_Item = C_Item or {}
if not C_Item.GetItemCount and GetItemCount then
	C_Item.GetItemCount = GetItemCount
end
if not C_Item.GetItemInfo and GetItemInfo then
	C_Item.GetItemInfo = GetItemInfo
end
if not C_Item.GetItemIconByID and GetItemIcon then
	C_Item.GetItemIconByID = GetItemIcon
end
if not C_Item.GetItemQualityByID and GetItemInfo then
	function C_Item.GetItemQualityByID(itemID)
		local _, _, q = GetItemInfo(itemID)
		return q
	end
end
if not C_Item.GetItemNameByID and GetItemInfo then
	function C_Item.GetItemNameByID(itemID)
		local name = GetItemInfo(itemID)
		return name
	end
end
if not C_Item.IsItemDataCachedByID and GetItemInfo then
	function C_Item.IsItemDataCachedByID(itemID)
		return GetItemInfo(itemID) ~= nil
	end
end
if not C_Item.RequestLoadItemDataByID then
	function C_Item.RequestLoadItemDataByID() end
end

C_Spell = C_Spell or {}
if not C_Spell.GetSpellTexture and GetSpellTexture then
	function C_Spell.GetSpellTexture(spellID)
		local _, _, icon = GetSpellInfo(spellID)
		return icon
	end
end
if not C_Spell.GetSpellLink and GetSpellLink then
	C_Spell.GetSpellLink = GetSpellLink
end
if not C_Spell.GetSpellName and GetSpellInfo then
	function C_Spell.GetSpellName(spellID)
		local name = GetSpellInfo(spellID)
		return name
	end
end
if not C_Spell.IsSpellDataCached and GetSpellInfo then
	function C_Spell.IsSpellDataCached(spellID)
		return GetSpellInfo(spellID) ~= nil
	end
end
if not C_Spell.RequestLoadSpellData then
	function C_Spell.RequestLoadSpellData() end
end

C_SpellBook = C_SpellBook or {}
if not C_SpellBook.IsSpellKnown then
	function C_SpellBook.IsSpellKnown(spellID)
		if IsSpellKnown and IsSpellKnown(spellID) then return true end
		if IsPlayerSpell and IsPlayerSpell(spellID) then return true end
		return false
	end
end

---------------------------------------------------------------------------
-- 7. C_ChatInfo & Funciones de Grupo 3.3.5a
---------------------------------------------------------------------------

C_ChatInfo = C_ChatInfo or {}
if not C_ChatInfo.SendAddonMessage and SendAddonMessage then
	function C_ChatInfo.SendAddonMessage(prefix, message, chatType, target)
		SendAddonMessage(prefix, message, chatType, target)
		return 0
	end
end
if not C_ChatInfo.RegisterAddonMessagePrefix then
	function C_ChatInfo.RegisterAddonMessagePrefix()
		return true
	end
end

if not IsInRaid then
	function IsInRaid()
		return (GetNumRaidMembers and GetNumRaidMembers() or 0) > 0
	end
end

if not IsInGroup then
	function IsInGroup()
		return IsInRaid() or (GetNumPartyMembers and GetNumPartyMembers() or 0) > 0
	end
end

if not GetNumSubgroupMembers then
	function GetNumSubgroupMembers()
		return GetNumPartyMembers and GetNumPartyMembers() or 0
	end
end

if not GetNumGroupMembers then
	function GetNumGroupMembers()
		if IsInRaid() then
			return GetNumRaidMembers and GetNumRaidMembers() or 0
		end
		local p = GetNumPartyMembers and GetNumPartyMembers() or 0
		return p > 0 and (p + 1) or 0
	end
end

if not Ambiguate then
	function Ambiguate(name)
		if type(name) == "string" then
			return name:match("^([^%-]+)") or name
		end
		return name
	end
end

if not CreateColor then
	function CreateColor(r, g, b, a)
		return {
			r = r or 0, g = g or 0, b = b or 0, a = a ~= nil and a or 1,
			GetRGBA = function(self) return self.r, self.g, self.b, self.a end,
			GetRGB = function(self) return self.r, self.g, self.b end,
		}
	end
end

---------------------------------------------------------------------------
-- 8. C_DeathInfo & C_Map 3.3.5a Bridges
---------------------------------------------------------------------------

C_DeathInfo = C_DeathInfo or {}
if not C_DeathInfo.GetCorpseMapPosition and GetCorpseMapPosition then
	function C_DeathInfo.GetCorpseMapPosition()
		local x, y = GetCorpseMapPosition()
		if not x or not y or (x == 0 and y == 0) then return nil end
		return { x = x, y = y, GetXY = function(self) return self.x, self.y end }
	end
end

C_Map = C_Map or {}
if not C_Map.GetBestMapForUnit then
	function C_Map.GetBestMapForUnit(unit)
		if unit and unit ~= "player" then return nil end
		local C = ns.Compat
		if C and C.GetPlayerPosition then
			return (C.GetPlayerPosition())
		end
		return nil
	end
end
if not C_Map.GetMapInfo then
	function C_Map.GetMapInfo(mapID)
		mapID = tonumber(mapID)
		if not mapID then return nil end
		local C = ns.Compat
		local name = (C and C.GetMapName and C.GetMapName(mapID)) or tostring(mapID)
		local cont = C and C.GetContinentMap and C.GetContinentMap(mapID) or nil
		local isCont = (mapID == 1414 or mapID == 1415 or mapID == 1945 or mapID == 113)
		return {
			mapID = mapID,
			name = name,
			mapType = isCont and 2 or 3,
			parentMapID = isCont and 947 or (cont or 0),
		}
	end
end
if not C_Map.GetMapChildrenInfo then
	function C_Map.GetMapChildrenInfo(parentMapID)
		local out = {}
		local C = ns.Compat
		local names = C and C._mapNames
		if type(names) == "table" then
			for id, name in pairs(names) do
				out[#out + 1] = { mapID = id, name = name, mapType = (id == 1414 or id == 1415) and 2 or 3, parentMapID = parentMapID or 947 }
			end
		end
		return out
	end
end

-- Shim 3.3.5a: GetMerchantItemID (Modern WoW API)
if not GetMerchantItemID then
	function GetMerchantItemID(index)
		local link = GetMerchantItemLink and GetMerchantItemLink(index)
		if link then
			local id = link:match("item:(%d+)")
			return tonumber(id)
		end
		return nil
	end
end

