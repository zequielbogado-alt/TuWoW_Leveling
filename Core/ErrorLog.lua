-- ============================================================================
-- TuWoW_Leveling — Core/ErrorLog.lua
-- Sistema de Registro de Errores y Diagnóstico en Tiempo Real para TuWoW 3.3.5a.
-- Intercepta fallos de Lua, los muestra claramente en el chat del jugador
-- y provee comandos (/twl errors, /twl diag) para inspección inmediata.
-- ============================================================================

local ADDON, ns = ...

local MAX_LOG_ENTRIES = 50
local errorLog = {}
local errorCount = 0
ns.ErrorLog = errorLog

---------------------------------------------------------------------------
-- 1. Captura y Registro de Errores
---------------------------------------------------------------------------

local function recordError(err, source)
	local fullText = tostring(err or "Error desconocido")
	local firstLine = fullText:match("^[^\n\r]*") or fullText
	local now = date("%H:%M:%S")

	-- Evitar duplicados consecutivos contando repeticiones
	for i = 1, #errorLog do
		if errorLog[i].msg == firstLine then
			errorLog[i].count = errorLog[i].count + 1
			errorLog[i].time = now
			return errorLog[i]
		end
	end

	local stack = ""
	if debugstack then
		stack = debugstack(3, 8, 2)
	end

	local entry = {
		id = #errorLog + 1,
		time = now,
		msg = firstLine,
		full = fullText,
		stack = stack,
		source = source or "Lua",
		count = 1,
	}

	if #errorLog >= MAX_LOG_ENTRIES then
		table.remove(errorLog, 1)
	end
	errorLog[#errorLog + 1] = entry
	errorCount = errorCount + 1

	-- Imprimir directamente en el marco de chat si es un error relevante para el jugador
	if DEFAULT_CHAT_FRAME and DEFAULT_CHAT_FRAME.AddMessage then
		local isAddon = firstLine:find("TuWoW", 1, true) or firstLine:find("Polestar", 1, true) or (source == "TuWoW")
		if isAddon then
			DEFAULT_CHAT_FRAME:AddMessage("|cffff4444[TuWoW Error " .. now .. "]|r " .. firstLine)
		end
	end

	return entry
end

ns.RecordError = recordError

-- Interceptar la función global ns.NoteError de Init.lua
if ns.NoteError then
	local origNoteError = ns.NoteError
	ns.NoteError = function(err)
		origNoteError(err)
		recordError(err, "TuWoW")
	end
end

---------------------------------------------------------------------------
-- 2. Hook del Manejador Global de Errores de WoW 3.3.5a
---------------------------------------------------------------------------

do
	local origErrorHandler = geterrorhandler and geterrorhandler()
	if seterrorhandler then
		seterrorhandler(function(err)
			recordError(err, "Global")
			if origErrorHandler then
				pcall(origErrorHandler, err)
			end
		end)
	end
end

---------------------------------------------------------------------------
-- 3. Comandos de Diagnóstico (/twl errors, /twl diag)
---------------------------------------------------------------------------

local function showErrors()
	local total = #errorLog
	if total == 0 then
		if DEFAULT_CHAT_FRAME then
			DEFAULT_CHAT_FRAME:AddMessage("|cff4fd1c5TuWoW Leveling|r: |cff55ff55No hay errores registrados. ¡Todo funciona correctamente!|r")
		end
		return
	end

	if DEFAULT_CHAT_FRAME then
		DEFAULT_CHAT_FRAME:AddMessage("|cff4fd1c5TuWoW Leveling|r: Últimos errores detectados (" .. total .. "):")
		local start = math.max(1, total - 4)
		for i = start, total do
			local e = errorLog[i]
			local countStr = e.count > 1 and (" |cffaaaaaa(x" .. e.count .. ")|r") or ""
			DEFAULT_CHAT_FRAME:AddMessage(string.format("  |cffff8800[%s]|r %s%s", e.time, e.msg, countStr))
			if e.stack and e.stack ~= "" then
				local topStack = e.stack:match("^[^\n\r]*\n?([^\n\r]*)")
				if topStack and topStack ~= "" then
					DEFAULT_CHAT_FRAME:AddMessage("    |cff888888" .. topStack:gsub("^%s+", "") .. "|r")
				end
			end
		end
		DEFAULT_CHAT_FRAME:AddMessage("|cff888888Usa '/twl errors clear' para limpiar este registro.|r")
	end
end

local function clearErrors()
	for i = #errorLog, 1, -1 do
		errorLog[i] = nil
	end
	if DEFAULT_CHAT_FRAME then
		DEFAULT_CHAT_FRAME:AddMessage("|cff4fd1c5TuWoW Leveling|r: Registro de errores limpiado.")
	end
end

local function runDiagnostics()
	if not DEFAULT_CHAT_FRAME then return end
	DEFAULT_CHAT_FRAME:AddMessage("|cff4fd1c5=== Diagnóstico de TuWoW Leveling ===|r")

	local modules = {
		{ name = "Core Engine", obj = ns.Engine },
		{ name = "Catálogo de Guías", obj = ns.Guides },
		{ name = "Tracker (Widget)", obj = ns.UI and ns.UI.Tracker },
		{ name = "Selector (Picker)", obj = ns.UI and ns.UI.Picker },
		{ name = "Buscador (Lookup)", obj = ns.UI and ns.UI.Lookup },
		{ name = "Mazmorras (Dungeons)", obj = ns.UI and ns.UI.DungeonsSection },
		{ name = "Panel de Opciones", obj = ns.UI and ns.UI.Options },
		{ name = "Botón de Minimapa", obj = ns.UI and ns.UI.MinimapButton },
		{ name = "Sistema de Alertas", obj = ns.UI and ns.UI.Alerts },
	}

	for _, m in ipairs(modules) do
		local status = m.obj and "|cff55ff55OK|r" or "|cffff4444FALTA|r"
		DEFAULT_CHAT_FRAME:AddMessage(string.format("  - %s: %s", m.name, status))
	end

	local gCount = ns.Guides and ns.Guides.Count and ns.Guides.Count() or 0
	DEFAULT_CHAT_FRAME:AddMessage("  - Total guías registradas: |cffffd24a" .. tostring(gCount) .. "|r")
	DEFAULT_CHAT_FRAME:AddMessage("  - Errores activos: |cffffd24a" .. tostring(#errorLog) .. "|r")
	DEFAULT_CHAT_FRAME:AddMessage("|cff4fd1c5=======================================|r")
end

if ns.RegisterCommand then
	ns.RegisterCommand("errors", function(rest)
		rest = rest and rest:lower():gsub("^%s+", ""):gsub("%s+$", "")
		if rest == "clear" or rest == "limpiar" then
			clearErrors()
		else
			showErrors()
		end
	end, "Muestra el registro de errores detectados (/twl errors clear para limpiar).")

	ns.RegisterCommand("diag", runDiagnostics, "Ejecuta un diagnóstico rápido de los módulos del addon.")
	ns.RegisterCommand("test", runDiagnostics, "Verifica el estado de los componentes del addon.")
end

