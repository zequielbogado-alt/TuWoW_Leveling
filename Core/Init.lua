-- TuWoW_Leveling Core Init: Espacio de nombres compartido, ciclo de vida, bus de mensajes,
-- eventos del cliente, configuracion persistente y comandos de chat.

local ADDON, ns = ...
Polestar = ns
TuWoW_Leveling = ns

ns.name = ADDON
ns.version = (C_AddOns and C_AddOns.GetAddOnMetadata and C_AddOns.GetAddOnMetadata(ADDON, "Version")) or "1.0.0"
ns.stage = nil
ns.routesBeta = false

-- Idioma simplificado: solo "esES" (incluyendo "esMX") y "enUS" por defecto.
local rawLocale = (GetLocale and GetLocale()) or "enUS"
local normLocale = (rawLocale == "esES" or rawLocale == "esMX") and "esES" or "enUS"
function ns.ClientLocale()
	return normLocale
end
ns.GetLocale = ns.ClientLocale
function ns.IsSpanish()
	return normLocale == "esES"
end

function ns.DocsURL()
	return nil
end

ns.DiscordURL = "https://tuwow.com"
ns.IssueURL = "https://tuwow.com"

local pcall, type, pairs, select, tostring = pcall, type, pairs, select, tostring

-- Diccionario de traducciones: las claves son el texto en ingles (enUS); si falta una clave,
-- devuelve la misma cadena en ingles. Locales/esES.lua llena L cuando normLocale == "esES".
local L = setmetatable({}, { __index = function(_, key) return key end })
ns.L = L

function ns.LC(context, text)
	return rawget(L, context .. ": " .. text) or text
end

function ns.MoneyText(copper)
	copper = math.floor(copper or 0)
	local g, s, c = math.floor(copper / 10000), math.floor(copper / 100) % 100, copper % 100
	local parts = {}
	if g > 0 then parts[#parts + 1] = g .. "o" end
	if s > 0 then parts[#parts + 1] = s .. "p" end
	if c > 0 then parts[#parts + 1] = c .. "c" end
	if not ns.IsSpanish() then
		parts = {}
		if g > 0 then parts[#parts + 1] = g .. "g" end
		if s > 0 then parts[#parts + 1] = s .. "s" end
		if c > 0 then parts[#parts + 1] = c .. "c" end
	end
	return #parts > 0 and table.concat(parts, " ") or "0c"
end

ns.AI_LOCALES = {}
function ns.AITranslation()
	return false
end

-- Entorno modular compartido para dividir modulos grandes en sub-archivos (< 1000 lineas)
-- sin contaminar _G ni superar el limite de 200 variables locales de Lua 5.1.
function ns.ModuleEnv(init)
	local env = {}
	if type(init) == "function" then
		init(env)
	elseif type(init) == "table" then
		for k, v in pairs(init) do
			env[k] = v
		end
	end
	env.ADDON = ADDON
	env.ns = ns
	env.L = ns.L
	return setmetatable(env, {
		__index = _G,
	})
end

function ns.StandingName(n)
	if type(n) ~= "number" then return nil end
	local tag = "FACTION_STANDING_LABEL" .. n
	if type(_G[tag]) ~= "string" then return nil end
	return GetText and GetText(tag, UnitSex and UnitSex("player")) or _G[tag]
end

function ns.QualityName(q)
	if type(q) ~= "number" then return nil end
	local s = _G["ITEM_QUALITY" .. q .. "_DESC"]
	if type(s) == "string" and s ~= "" then return s end
	return nil
end

local FACTION_TAG = { Alliance = "FACTION_ALLIANCE", A = "FACTION_ALLIANCE", Horde = "FACTION_HORDE", H = "FACTION_HORDE" }
function ns.FactionName(f)
	local tag = FACTION_TAG[f]
	local s = tag and _G[tag]
	if type(s) == "string" and s ~= "" then return s end
	return nil
end

function ns.EscapeText(s)
	if type(s) ~= "string" then s = tostring(s) end
	if not s:find("|", 1, true) then return s end
	return (s:gsub("|", "||"))
end

local YARD_METRES = 0.9144
function ns.FormatDistance(yards, opts)
	local round = opts and opts.round or 1
	if ns.Get("nav.distanceUnit") == "metres" then
		local m = yards * YARD_METRES
		local n = math.floor(m / round + 0.5) * round
		if n >= 1000 then return L["%.1f km"]:format(m / 1000) end
		return L["%d m"]:format(n)
	end
	if opts and opts.compact and yards >= 1000 then return L["%.1fk yd"]:format(yards / 1000) end
	return L["%d yd"]:format(math.floor(yards / round + 0.5) * round)
end

---------------------------------------------------------------------------
-- Registro de diagnostico interno
---------------------------------------------------------------------------

local DEBUG_LINES = 200
local debugLog, debugNext, debugCount = {}, 1, 0
function ns.Log(text)
	debugLog[debugNext] = date("%H:%M:%S ") .. tostring(text)
	debugNext = debugNext % DEBUG_LINES + 1
	if debugCount < DEBUG_LINES then debugCount = debugCount + 1 end
end

function ns.DebugLog(n)
	n = math.min(n or debugCount, debugCount)
	local out = {}
	for i = n, 1, -1 do
		out[#out + 1] = debugLog[(debugNext - i - 1) % DEBUG_LINES + 1]
	end
	return out
end

local MAX_ERRORS = 5
local errors = {}
local seq = 0
function ns.NoteError(err)
	local msg = tostring(err):match("^[^\n]*")
	ns.Log("error: " .. msg)
	seq = seq + 1
	for i = 1, #errors do
		if errors[i].msg == msg then
			errors[i].count, errors[i].seq = errors[i].count + 1, seq
			return
		end
	end
	if #errors >= MAX_ERRORS then table.remove(errors, 1) end
	errors[#errors + 1] = { msg = msg, count = 1, seq = seq }
end
function ns.Errors() return errors end

local MAX_BLOCKED = 5
local blocked = {}
function ns.NoteBlocked(addon, fn)
	if type(addon) ~= "string" or not (addon == ADDON or addon:find("^Polestar") or addon:find("^TuWoW_Leveling")) then return end
	fn = tostring(fn or "?")
	local at = date("%H:%M:%S")
	ns.Log("blocked: " .. addon .. " " .. fn)
	seq = seq + 1
	for i = 1, #blocked do
		local e = blocked[i]
		if e.addon == addon and e.fn == fn then
			table.remove(blocked, i)
			e.count, e.at, e.seq = e.count + 1, at, seq
			blocked[#blocked + 1] = e
			return
		end
	end
	if #blocked >= MAX_BLOCKED then table.remove(blocked, 1) end
	blocked[#blocked + 1] = { addon = addon, fn = fn, count = 1, at = at, seq = seq }
end
function ns.Blocked() return blocked end

local REPEAT_SECONDS = 30
local raisedAt = {}
local function raise(err)
	local msg = tostring(err):match("^[^\n]*")
	local now = GetTime and GetTime() or 0
	local at = raisedAt[msg]
	if at and now - at < REPEAT_SECONDS then return end
	raisedAt[msg] = now
	if DEFAULT_CHAT_FRAME and DEFAULT_CHAT_FRAME.AddMessage then
		DEFAULT_CHAT_FRAME:AddMessage("|cffff4444[TuWoW Error]|r " .. tostring(msg))
	end
	if geterrorhandler then geterrorhandler()(err) end
end

local function call(fn, ...)
	local ok, err = pcall(fn, ...)
	if not ok then
		ns.NoteError(err)
		raise(err)
	end
end
ns.SafeCall = call

function ns.Safe(fn)
	if fn == nil then return nil end
	return function(...) call(fn, ...) end
end

function ns.After(seconds, fn) return C_Timer.After(seconds, ns.Safe(fn)) end
function ns.NewTicker(seconds, fn, n) return C_Timer.NewTicker(seconds, ns.Safe(fn), n) end
function ns.NewTimer(seconds, fn) return C_Timer.NewTimer(seconds, ns.Safe(fn)) end

function ns.CreateFrameUnder(kind, name, parent, template)
	local f = CreateFrame(kind, name, nil, template)
	if parent then f:SetParent(parent) end
	return f
end

function ns.GamepadUI() return false end

function ns.CloseOnEscape(name)
	if not (UISpecialFrames and name) then return end
	for i = 1, #UISpecialFrames do
		if UISpecialFrames[i] == name then return end
	end
	tinsert(UISpecialFrames, name)
end

local function compact(list)
	local j = 0
	for i = 1, #list do
		local h = list[i]
		if h.live then
			j = j + 1
			list[j] = h
		end
	end
	for i = #list, j + 1, -1 do list[i] = nil end
end

---------------------------------------------------------------------------
-- Bus de mensajes interno
---------------------------------------------------------------------------

local listeners = {}
local busDepth, busDirty = 0, false

function ns.On(msg, fn)
	local list = listeners[msg]
	if not list then
		list = {}
		listeners[msg] = list
	end
	local h = { msg = msg, fn = fn, live = true }
	list[#list + 1] = h
	return h
end

function ns.Off(h)
	if type(h) ~= "table" or not h.live then return end
	h.live = false
	if busDepth > 0 then
		busDirty = true
	else
		compact(listeners[h.msg])
	end
end

function ns.Fire(msg, ...)
	local list = listeners[msg]
	if not list then return end
	busDepth = busDepth + 1
	for i = 1, #list do
		local h = list[i]
		if h.live then call(h.fn, ...) end
	end
	busDepth = busDepth - 1
	if busDepth == 0 and busDirty then
		busDirty = false
		for _, l in pairs(listeners) do compact(l) end
	end
end

---------------------------------------------------------------------------
-- Eventos de juego a traves de un unico Frame
---------------------------------------------------------------------------

local eventFrame = CreateFrame("Frame")
local gameHandlers = {}
local eventDepth, eventsDirty = 0, false

local function settle(event)
	local list = gameHandlers[event]
	if not list then return end
	compact(list)
	if #list == 0 then
		gameHandlers[event] = nil
		eventFrame:UnregisterEvent(event)
	end
end

local EVENT_ALIAS_335 = {
	GROUP_ROSTER_UPDATE = "PARTY_MEMBERS_CHANGED",
	GROUP_LEFT = "PARTY_MEMBERS_CHANGED",
}

function ns.RegisterEvent(event, fn)
	event = EVENT_ALIAS_335[event] or event
	local list = gameHandlers[event]
	if not list then
		if not pcall(eventFrame.RegisterEvent, eventFrame, event) then
			return false
		end
		list = {}
		gameHandlers[event] = list
	end
	for i = 1, #list do
		if list[i].fn == fn and list[i].live then return true end
	end
	list[#list + 1] = { fn = fn, live = true }
	return true
end

function ns.UnregisterEvent(event, fn)
	event = EVENT_ALIAS_335[event] or event
	local list = gameHandlers[event]
	if not list then return end
	for i = 1, #list do
		if list[i].fn == fn then list[i].live = false end
	end
	if eventDepth > 0 then
		eventsDirty = true
	else
		settle(event)
	end
end

eventFrame:SetScript("OnEvent", function(_, event, ...)
	local list = gameHandlers[event]
	if not list then return end
	eventDepth = eventDepth + 1
	for i = 1, #list do
		local h = list[i]
		if h.live then call(h.fn, event, ...) end
	end
	eventDepth = eventDepth - 1
	if eventDepth == 0 and eventsDirty then
		eventsDirty = false
		local events = {}
		for ev in pairs(gameHandlers) do events[#events + 1] = ev end
		for i = 1, #events do settle(events[i]) end
	end
end)

---------------------------------------------------------------------------
-- Ajustes y SavedVariables (TuWoWLevelingDB / PolestarDB)
---------------------------------------------------------------------------

local defaults = {}
local pathKeys = {}

local function keysOf(path)
	local keys = pathKeys[path]
	if not keys then
		keys = {}
		for key in path:gmatch("[^.]+") do keys[#keys + 1] = key end
		pathKeys[path] = keys
	end
	return keys
end

local function lookup(root, keys)
	local node = root
	for i = 1, #keys do
		if type(node) ~= "table" then return nil end
		node = node[keys[i]]
	end
	return node
end

local function DB()
	local db = TuWoWLevelingDB or PolestarDB
	if type(db) ~= "table" then
		db = { schema = 1 }
	end
	TuWoWLevelingDB = db
	PolestarDB = db
	if type(db.settings) ~= "table" then db.settings = {} end
	return db
end
ns.DB = DB

function ns.RegisterDefaults(section, tbl)
	local d = defaults[section]
	if not d then
		d = {}
		defaults[section] = d
	end
	for k, v in pairs(tbl) do d[k] = v end
end

function ns.Get(path)
	local keys = keysOf(path)
	local v = lookup(DB().settings, keys)
	if v == nil then v = lookup(defaults, keys) end
	return v
end

function ns.GetDefault(path)
	return lookup(defaults, keysOf(path))
end

function ns.Set(path, value)
	local keys = keysOf(path)
	local node = DB().settings
	for i = 1, #keys - 1 do
		local k = keys[i]
		if type(node[k]) ~= "table" then node[k] = {} end
		node = node[k]
	end
	if value == lookup(defaults, keys) then value = nil end
	node[keys[#keys]] = value
	ns.Fire("SETTING_CHANGED", path, ns.Get(path))
end

function ns.DragLocked()
	return ns.Get("ui.lockHud") and not ns.Compat.IsShiftKeyDown() and true or false
end

function ns.ResetSettings(section)
	local settings = DB().settings
	if section then
		settings[section] = nil
	else
		for k in pairs(settings) do settings[k] = nil end
	end
	ns.Fire("SETTING_CHANGED", section or "", nil)
end

function ns.CharState()
	local s = TuWoWLevelingCharDB or PolestarCharDB
	if type(s) ~= "table" then
		s = {}
	end
	TuWoWLevelingCharDB = s
	PolestarCharDB = s
	if s.schema == nil then s.schema = 1 end
	if type(s.manual) ~= "table" then s.manual = {} end
	if type(s.skipped) ~= "table" then s.skipped = {} end
	if type(s.when) ~= "table" then s.when = {} end
	if type(s.dungeons) ~= "table" then s.dungeons = {} end
	if type(s.groupQuests) ~= "table" then s.groupQuests = {} end
	if type(s.flags) ~= "table" then s.flags = {} end
	if type(s.pinnedQuests) ~= "table" then s.pinnedQuests = {} end
	if type(s.guideEnds) ~= "table" then s.guideEnds = {} end
	return s
end

local newCharacter = false
function ns.IsNewCharacter()
	return newCharacter
end

---------------------------------------------------------------------------
-- Ciclo de Vida (Init & Login)
---------------------------------------------------------------------------

local initQueue, loginQueue = {}, {}
local initialized, loggedIn = false, false

function ns.OnInit(fn)
	if initialized then call(fn) else initQueue[#initQueue + 1] = fn end
end

function ns.OnLogin(fn)
	if loggedIn then call(fn) else loginQueue[#loginQueue + 1] = fn end
end

function ns.IsLoggedIn() return loggedIn end

local function onAddonLoaded(_, name)
	if name ~= ADDON then return end
	ns.UnregisterEvent("ADDON_LOADED", onAddonLoaded)
	DB()
	newCharacter = type(TuWoWLevelingCharDB) ~= "table" and type(PolestarCharDB) ~= "table"
	ns.CharState()
	initialized = true
	local queue = initQueue
	initQueue = nil
	for i = 1, #queue do call(queue[i]) end
end

local function onLogin()
	ns.UnregisterEvent("PLAYER_LOGIN", onLogin)
	loggedIn = true
	local queue = loginQueue
	loginQueue = nil
	for i = 1, #queue do call(queue[i]) end
end

ns.RegisterEvent("ADDON_LOADED", onAddonLoaded)
local function onBlocked(_, addon, fn) ns.NoteBlocked(addon, fn) end
ns.RegisterEvent("ADDON_ACTION_BLOCKED", onBlocked)
ns.RegisterEvent("ADDON_ACTION_FORBIDDEN", onBlocked)
ns.RegisterEvent("PLAYER_LOGIN", onLogin)

---------------------------------------------------------------------------
-- Mensajes en el Chat y Comandos (/twl, /zygor, /polestar)
---------------------------------------------------------------------------

local PREFIX = "|cff4fd1c5TuWoW Guías|r: "

function ns.Print(...)
	local n = select("#", ...)
	local parts = {}
	for i = 1, n do parts[i] = tostring((select(i, ...))) end
	DEFAULT_CHAT_FRAME:AddMessage(PREFIX .. table.concat(parts, " "))
end

ns.debug = false
function ns.Debug(...)
	local n = select("#", ...)
	local parts = {}
	for i = 1, n do parts[i] = tostring((select(i, ...))) end
	ns.Log(table.concat(parts, " "))
	if ns.debug then ns.Print("|cff8a8f98[info]|r", ...) end
end

local commands, commandOrder = {}, {}

function ns.RegisterCommand(name, fn, help)
	name = name:lower()
	if not commands[name] then commandOrder[#commandOrder + 1] = name end
	commands[name] = { fn = fn, help = help }
end

local function showHelp()
	ns.Print(L["Commands"])
	for i = 1, #commandOrder do
		local name = commandOrder[i]
		DEFAULT_CHAT_FRAME:AddMessage(("  /twl %s  |cff8a8f98%s|r"):format(name, commands[name].help or ""))
	end
end

function ns.RunCommand(msg)
	local name, rest = (msg or ""):match("^%s*(%S*)%s*(.-)%s*$")
	if name == "" then
		ns.Fire("TOGGLE_FRAME")
		return
	end
	name = name:lower()
	if name == "help" or name == "ayuda" then
		showHelp()
		return
	end
	local c = commands[name]
	if not c then
		ns.Print((L["Unknown command '%s'."]):format(name))
		showHelp()
		return
	end
	call(c.fn, rest)
end

SLASH_TUWOWLEVELING1 = "/twl"
SLASH_TUWOWLEVELING2 = "/tw1"
SLASH_TUWOWLEVELING3 = "/tuwow"
SLASH_TUWOWLEVELING4 = "/zygor"
SLASH_TUWOWLEVELING5 = "/polestar"
SLASH_TUWOWLEVELING6 = "/pole"
SLASH_TUWOWLEVELING7 = "/ps"
SlashCmdList.TUWOWLEVELING = ns.RunCommand
