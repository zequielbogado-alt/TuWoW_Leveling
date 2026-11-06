local ADDON, ns = ...
ns._uiGamepadEnv = ns.ModuleEnv(function(e) e.ADDON = ADDON; e.ns = ns end)
setfenv(1, ns._uiGamepadEnv)
-- Adapted from Ding! by Yendi (@moust4ki), GPL-3.0: https://github.com/moust4ki/DingGuideWoWForever
--
-- Polestar.Gamepad: playing Polestar with a gamepad (docs/ARCHITECTURE.md,
-- "Gamepad"). The button names and their chips, the game's key bindings and
-- Polestar's own chords (hold one gamepad button, press another), capturing
-- a button for a binding, and the navigation of every Polestar window: a
-- window that registers (G.Register) holds the D-pad, A, B, X, Y, LB, RB and
-- Start while it is the newest one open, read first by a frame of Polestar's
-- (PolestarPadInput) and, with the keyboard and mouse interface, through
-- temporary override bindings under it, set out of combat and cleared when
-- it closes or a fight starts. With Forever's gamepad interface on
-- (ns.GamepadUI) no override binding is set: its own bindings stay as they
-- are, and the frame alone reads the window's buttons. A window that showed
-- on its own (a route choice, the welcome) waits for the player to ask
-- before it takes the gamepad. Nothing is taken from the game while no
-- Polestar window holds the gamepad. The guide window's focus mode
-- (UI/GamepadGuide.lua) holds it the same way.
--
-- Client calls (C_GamePad, the CVars, the binding API, IsKeyDown, the
-- OnGamePadButton scripts) are made here, each guarded: a client without one
-- of them loses that part, never the rest.

-- local ADDON, ns = ...
G = {}
ns.Gamepad = G

L = ns.L
Theme, W = ns.Theme, ns.Widgets
type, pairs, ipairs, pcall, next = type, pairs, ipairs, pcall, next
floor, max, min, abs = math.floor, math.max, math.min, math.abs
tinsert, tremove, concat = table.insert, table.remove, table.concat

ns.RegisterDefaults("gamepad", {
	glyphs = "auto", -- "auto" (the gamepad's own labels) | "xbox" | "playstation"
	navigate = true, -- Polestar's windows hold the gamepad while open
	hints = true, -- the hint bar and the B chip on a window's close button
	withMouse = false, -- the gamepad drives Polestar with the keyboard and mouse interface too
})

-- Polestar's chords live outside the settings, account-wide, so "Reset all
-- settings" keeps them like the game keeps its key bindings:
-- PolestarDB.gamepad = { chords = { [action] = "PADRSHOULDER+PADDUP" } }.
function store()
	local db = ns.DB()
	if type(db.gamepad) ~= "table" then db.gamepad = {} end
	if type(db.gamepad.chords) ~= "table" then db.gamepad.chords = {} end
	return db.gamepad
end
G.Store = store

-- The keys a window takes while it holds the gamepad.
NAV_KEYS = {
	"PAD1", "PAD2", "PAD3", "PAD4", "PADLSHOULDER", "PADRSHOULDER",
	"PADDUP", "PADDDOWN", "PADDLEFT", "PADDRIGHT", "PADFORWARD",
}
G.NAV_KEYS = NAV_KEYS
REPEATING = { PADDUP = true, PADDDOWN = true, PADDLEFT = true, PADDRIGHT = true }
MAX_HOLD = 10 -- seconds: a held D-pad stops repeating if its release was never seen
REPEAT_DELAY, REPEAT_EVERY = 0.4, 0.12

function combat() return InCombatLockdown and InCombatLockdown() and true or false end

-- From PLAYER_REGEN_DISABLED to PLAYER_REGEN_ENABLED (see Events): nothing
-- takes the gamepad, not even in the moment before the lockdown starts (a
-- window closing as the fight starts hands it to none).
fighting = false

---------------------------------------------------------------------------
-- Is a gamepad in use?
---------------------------------------------------------------------------

-- A console variable, nil when empty or "none".
function cvar(name)
	local get = (C_CVar and C_CVar.GetCVar) or GetCVar
	if type(get) ~= "function" then return nil end
	local ok, value = pcall(get, name)
	if ok and type(value) == "string" and value ~= "" and value:upper() ~= "NONE" then return value end
	return nil
end

-- A gamepad the player can use: Forever's gamepad interface style
-- (ns.GamepadUI). With the keyboard and mouse interface only when the
-- player asks for it (gamepad.withMouse) and the gamepad is turned on in the
-- game's options and plugged in: a pad left on for movement must not put
-- gamepad hints and a focus ring on the windows of a mouse player. Turned
-- on but unplugged, the gamepad help would name buttons nobody can press:
-- everything reads as mouse and keyboard then.
function G.IsActive()
	if ns.GamepadUI() then return true end
	if not ns.Get("gamepad.withMouse") then return false end
	local enabled = false
	if C_GamePad and C_GamePad.IsEnabled then
		local ok, value = pcall(C_GamePad.IsEnabled)
		enabled = ok and value == true
	end
	if not enabled and cvar("GamePadEnable") ~= "1" then return false end
	if C_GamePad and C_GamePad.GetAllDeviceIDs then
		local ok, ids = pcall(C_GamePad.GetAllDeviceIDs)
		if ok and type(ids) == "table" and #ids == 0 then return false end
	end
	return true
end

-- "xbox" | "playstation": the player's choice, else the labels the game
-- reads off the gamepad itself ("Shapes": a PlayStation pad).
function G.Style()
	local s = ns.Get("gamepad.glyphs")
	if s == "xbox" or s == "playstation" then return s end
	local P = C_GamePad
	if P and P.GetActiveDeviceID and P.GetDeviceMappedState then
		local ok, state = pcall(function() return P.GetDeviceMappedState(P.GetActiveDeviceID()) end)
		if ok and type(state) == "table" and state.labelStyle == "Shapes" then return "playstation" end
	end
	return "xbox"
end

---------------------------------------------------------------------------
-- Button names (texts) and chips (G.Glyph)
---------------------------------------------------------------------------

DPAD = { PADDUP = "chevron-up", PADDDOWN = "chevron-down", PADDLEFT = "chevron-left", PADDRIGHT = "chevron-right" }
DPAD_TEXT = { PADDUP = L["D-pad up"], PADDDOWN = L["D-pad down"], PADDLEFT = L["D-pad left"], PADDRIGHT = L["D-pad right"] }
NAMES = {
	xbox = {
		PAD1 = "A", PAD2 = "B", PAD3 = "X", PAD4 = "Y",
		PADLSHOULDER = "LB", PADRSHOULDER = "RB", PADLTRIGGER = "LT", PADRTRIGGER = "RT",
		PADLSTICK = "LS", PADRSTICK = "RS", PADFORWARD = "Start", PADBACK = "Back",
	},
	playstation = {
		PAD1 = L["Cross"], PAD2 = L["Circle"], PAD3 = L["Square"], PAD4 = L["Triangle"],
		PADLSHOULDER = "L1", PADRSHOULDER = "R1", PADLTRIGGER = "L2", PADRTRIGGER = "R2",
		PADLSTICK = "L3", PADRSTICK = "R3", PADFORWARD = L["Options button"], PADBACK = "Share",
	},
}
-- Face buttons sit in a circle: Xbox's letter, PlayStation's shape.
FACE = { PAD1 = "A", PAD2 = "B", PAD3 = "X", PAD4 = "Y" }
SHAPES = { PAD1 = "pad-cross", PAD2 = "pad-circle", PAD3 = "pad-square", PAD4 = "pad-triangle" }

-- Binding strings list modifiers in this order: ALT-CTRL-SHIFT-KEY. The
-- game's gamepad settings can make a button act as one (LT as Shift).
MODIFIERS = {
	{ prefix = "ALT-", cvar = "GamePadEmulateAlt", text = "Alt", down = "IsAltKeyDown" },
	{ prefix = "CTRL-", cvar = "GamePadEmulateCtrl", text = "Ctrl", down = "IsControlKeyDown" },
	{ prefix = "SHIFT-", cvar = "GamePadEmulateShift", text = "Shift", down = "IsShiftKeyDown" },
}

function modifierOf(button)
	for _, mod in ipairs(MODIFIERS) do
		if cvar(mod.cvar) == button then return mod end
	end
	return nil
end

-- The gamepad buttons the game makes modifiers, in binding order.
function G.ModifierButtons()
	local list = {}
	for _, mod in ipairs(MODIFIERS) do
		local button = cvar(mod.cvar)
		if button then list[#list + 1] = button end
	end
	return list
end

-- "SHIFT-PAD1" -> "PAD1".
function baseKey(key)
	local rest, found = key, true
	while found do
		found = false
		for _, prefix in ipairs({ "ALT-", "CTRL-", "SHIFT-", "META-" }) do
			if rest:sub(1, #prefix) == prefix and #rest > #prefix then
				rest, found = rest:sub(#prefix + 1), true
			end
		end
	end
	return rest
end

-- A gamepad button ("PAD1", "SHIFT-PADDUP", a chord), not a keyboard key.
function G.IsPadKey(key)
	return type(key) == "string" and baseKey(key):sub(1, 3) == "PAD"
end

-- A chord of Polestar's: two gamepad buttons, the first held
-- ("PADLSHOULDER+PADDUP": LB + Up). The game binds a button with Shift, Ctrl
-- or Alt only, and its gamepad interface can go first: Polestar watches its
-- chords itself (see "Chords in play").
function chordParts(key)
	if type(key) ~= "string" then return nil end
	return key:match("^(PAD%w+)%+(PAD%w+)$")
end

function G.IsChord(key) return chordParts(key) ~= nil end

function G.ButtonName(button)
	if DPAD_TEXT[button] then return DPAD_TEXT[button] end
	local name = NAMES[G.Style()][button]
	if name then return name end
	if GetBindingText then
		local ok, text = pcall(GetBindingText, button)
		if ok and type(text) == "string" and text ~= "" then return text end
	end
	return button
end

-- "SHIFT-PADDRIGHT" -> { "PADLTRIGGER", "PADDRIGHT" } (LT acts as Shift), a
-- chord into its two buttons; a keyboard key keeps its modifiers' names
-- ({ { word = "Ctrl" }, "N" }).
function splitKey(key)
	local hold, press = chordParts(key)
	if hold then return { hold, press } end
	local parts, rest = {}, key
	local pad = G.IsPadKey(key)
	for _, mod in ipairs(MODIFIERS) do
		if rest:sub(1, #mod.prefix) == mod.prefix then
			rest = rest:sub(#mod.prefix + 1)
			parts[#parts + 1] = pad and cvar(mod.cvar) or { word = mod.text }
		end
	end
	parts[#parts + 1] = rest
	return parts
end

-- "SHIFT-PADDRIGHT" -> "LT + D-pad right".
function G.KeyName(key)
	local names = {}
	for i, part in ipairs(splitKey(key)) do
		names[i] = type(part) == "table" and part.word or G.ButtonName(part)
	end
	return concat(names, " + ")
end

CHIP_H = 20

-- One chip per button: a circle for a face button (Xbox's letter or
-- PlayStation's shape) and the D-pad (its chevron), a capsule for the rest
-- ("LB", "Ctrl"), "+" between the buttons of a combination. Neutral chip
-- wash, the name in text: the One Accent Rule keeps the accent for focus.
function glyphPart(f, i)
	local p = f.parts[i]
	if p then return p end
	p = {}
	p.bg = W.Pill(f, CHIP_H, CHIP_H)
	p.text = W.Text(f, "caption", "text")
	p.text:SetJustifyH("CENTER")
	p.tex = f:CreateTexture(nil, "OVERLAY")
	p.tex:SetSize(12, 12)
	W.Color(p.tex, "text")
	p.plus = W.Text(f, "small", "textDim")
	p.plus:SetText("+")
	f.parts[i] = p
	return p
end

function paintGlyph(f)
	local r, g, b, a = Theme.Wash("chip")
	for _, p in ipairs(f.parts) do p.bg:SetColor(r, g, b, a) end
end

-- keys: a binding key ("SHIFT-PAD1", "PADLSHOULDER+PADDUP", "CTRL-N") or a
-- list of buttons shown side by side ({ "PADLSHOULDER", "PADRSHOULDER" }).
-- -> width
function setKeys(f, keys)
	local buttons, joined = keys, false
	if type(keys) == "string" then buttons, joined = splitKey(keys), true end
	local style = G.Style()
	local x, n = 0, 0
	for i, button in ipairs(buttons or {}) do
		n = n + 1
		local p = glyphPart(f, n)
		if i > 1 then
			if joined then
				p.plus:ClearAllPoints()
				p.plus:SetPoint("LEFT", f, "LEFT", x + 3, 0)
				p.plus:Show()
				x = x + 3 + p.plus:GetStringWidth() + 3
			else
				p.plus:Hide()
				x = x + 4
			end
		else
			p.plus:Hide()
		end
		local w = CHIP_H
		if type(button) == "table" then
			p.text:SetText(button.word)
			p.tex:Hide()
			p.text:Show()
			w = max(CHIP_H, floor(p.text:GetStringWidth() + 14 + 0.5))
		elseif DPAD[button] then
			p.tex:SetTexture(Theme.Media(DPAD[button]))
			p.tex:Show()
			p.text:Hide()
		elseif FACE[button] and style == "playstation" then
			p.tex:SetTexture(Theme.Media(SHAPES[button]))
			p.tex:Show()
			p.text:Hide()
		else
			p.text:SetText(FACE[button] or G.ButtonName(button))
			p.tex:Hide()
			p.text:Show()
			if not FACE[button] then w = max(CHIP_H, floor(p.text:GetStringWidth() + 14 + 0.5)) end
		end
		p.bg:SetSize(w, CHIP_H)
		p.bg:ClearAllPoints()
		p.bg:SetPoint("LEFT", f, "LEFT", x, 0)
		p.text:ClearAllPoints()
		p.text:SetPoint("CENTER", p.bg, "CENTER", 0, 0)
		p.tex:ClearAllPoints()
		p.tex:SetPoint("CENTER", p.bg, "CENTER", 0, 0)
		p.bg:Show()
		x = x + w
	end
	for i = n + 1, #f.parts do
		local p = f.parts[i]
		p.bg:Hide(); p.text:Hide(); p.tex:Hide(); p.plus:Hide()
	end
	paintGlyph(f)
	f:SetWidth(max(1, x))
	f.psKeys = keys
	return x
end

-- A chip (or chips) for a key: frame:SetKeys(keys) -> width. name: optional.
function G.Glyph(parent, name)
	local f = CreateFrame("Frame", name, parent)
	f:SetHeight(CHIP_H)
	f.parts = {}
	f.SetKeys = setKeys
	W.Painter(f, paintGlyph)
	return f
end

---------------------------------------------------------------------------
-- Saved bindings. As the game's own Key Bindings do it: a binding goes in
-- the action's binding context when the client has one, a new gamepad
-- button replaces the action's gamepad buttons and chord, a new key its
-- keys; the other kind stays (a key and a button for the same action).
---------------------------------------------------------------------------

-- Polestar's actions, in the order the Key bindings tab lists them. `run`:
-- what the binding runs (Bindings.xml), for a chord; the secure CLICK
-- bindings (the quest buttons) cannot run from a chord.
G.ACTIONS = {
	{ action = "POLESTAR_NEXT", section = "guide", label = L["Next step"], run = "Next" },
	{ action = "POLESTAR_PREV", section = "guide", label = L["Previous step"], run = "Prev" },
	{ action = "POLESTAR_NEXT_WAYPOINT", section = "guide", label = L["Next waypoint"], run = "NextWaypoint" },
	{ action = "POLESTAR_PREV_WAYPOINT", section = "guide", label = L["Previous waypoint"], run = "PrevWaypoint" },
	{ action = "POLESTAR_FOCUS", section = "guide", label = L["Browse the guide with the gamepad"], run = "Focus" },
	{ action = "POLESTAR_TOGGLE", section = "guide", label = L["Toggle guide window"], run = "Toggle" },
	{ action = "POLESTAR_MENU", section = "windows", label = L["Open the guide menu"], run = "Menu" },
	{ action = "POLESTAR_OPTIONS", section = "windows", label = L["Open Polestar options"], run = "Options" },
	{ action = "POLESTAR_REPORT", section = "windows", label = L["Report a problem"], run = "Report" },
	{ action = "CLICK PolestarQuestItemButton:LeftButton", section = "buttons", label = L["Use quest item"] },
	{ action = "CLICK PolestarTargetButton:LeftButton", section = "buttons", label = L["Target quest mob"] },
	{ action = "CLICK PolestarRareButton:LeftButton", section = "buttons", label = L["Target rare"] },
	{ action = "CLICK PolestarHearthButton:LeftButton", section = "buttons", label = L["Use Hearthstone"] },
	{ action = "CLICK PolestarStepButton:LeftButton", section = "buttons", label = L["Use the step button"] },
	{ action = "CLICK PolestarTravelButton:LeftButton", section = "buttons", label = L["Use the travel button"] },
}
RUN = {}
for _, a in ipairs(G.ACTIONS) do RUN[a.action] = a.run end

-- Can `action` take a chord (it is not a secure click)?
function G.ChordAllowed(action) return RUN[action] ~= nil end

function contextOf(action)
	if not (C_KeyBindings and C_KeyBindings.GetBindingContextForAction) then return nil end
	local ok, context = pcall(C_KeyBindings.GetBindingContextForAction, action)
	return ok and type(context) == "number" and context or nil
end

-- The game's gamepad interface keeps its buttons in a binding context of
-- its own while it is on (Enum.BindingContext.GamepadModeInGameCore).
function gamepadContext()
	local context = Enum and Enum.BindingContext and Enum.BindingContext.GamepadModeInGameCore
	if type(context) ~= "number" or not (C_KeyBindings and C_KeyBindings.IsBindingContextActive) then return nil end
	local ok, active = pcall(C_KeyBindings.IsBindingContextActive, context)
	return ok and active == true and context or nil
end

function setBinding(key, action, context)
	if type(SetBinding) ~= "function" then return false end
	local ok, result
	if context then ok, result = pcall(SetBinding, key, action, context) else ok, result = pcall(SetBinding, key, action) end
	return ok and result ~= false
end

function saveBindings()
	if type(SaveBindings) ~= "function" then return end
	local ok, set = pcall(GetCurrentBindingSet)
	pcall(SaveBindings, ok and set or 1)
end

-- A key in the game's bindings, or a chord in Polestar's (action nil:
-- unbound). A chord belongs to one action.
function setKey(key, action, context)
	if not chordParts(key) then return setBinding(key, action, context) end
	local list = store().chords
	for other, chord in pairs(list) do
		if chord == key then list[other] = nil end
	end
	if action then list[action] = key end
	return true
end

-- Every key bound to `action`: its chord first, then the game's keys.
function G.BindingKeys(action)
	local list = {}
	local chord = store().chords[action]
	if chord then list[1] = chord end
	if type(GetBindingKey) ~= "function" then return list end
	local context = contextOf(action)
	local ok, keys = pcall(function()
		if context then return { GetBindingKey(action, nil, context) } end
		return { GetBindingKey(action) }
	end)
	if not ok then return list end
	for _, key in ipairs(keys) do
		if type(key) == "string" and key ~= "" then list[#list + 1] = key end
	end
	return list
end

-- The keys of `action` for the input in use: the gamepad's buttons while a
-- gamepad is active, the keyboard's without one (`pad`: that kind); the
-- other kind when that one has none.
function G.ShownKeys(action, pad)
	if pad == nil then pad = G.IsActive() end
	local mine, other = {}, {}
	for _, key in ipairs(G.BindingKeys(action)) do
		if G.IsPadKey(key) == pad then mine[#mine + 1] = key else other[#other + 1] = key end
	end
	return #mine > 0 and mine or other
end

function G.BindingKey(action) return G.ShownKeys(action)[1] end

-- The key or button of `action` in words ("RB + D-pad up"), or nil.
function G.KeyText(action)
	local key = G.BindingKey(action)
	return key and G.KeyName(key) or nil
end

function bindingsChanged()
	ns.Fire("GAMEPAD_BINDINGS_CHANGED")
end

-- Unbinds what a binding row shows: its gamepad buttons, or its keys.
-- False in a fight: bindings change only out of combat.
function G.Unbind(action, pad)
	if combat() then return false end
	local context = contextOf(action)
	for _, key in ipairs(G.ShownKeys(action, pad)) do setKey(key, nil, context) end
	saveBindings()
	bindingsChanged()
	return true
end

-- Binds `key` (a key, a button, a chord) to `action` in place of the
-- action's keys of the same kind, and saves. False when the game refuses
-- it, or in a fight: the action keeps what it had.
function G.Bind(action, key)
	if combat() then return false end
	local context = contextOf(action)
	local pad, removed = G.IsPadKey(key), {}
	for _, old in ipairs(G.BindingKeys(action)) do
		if old ~= key and G.IsPadKey(old) == pad then
			setKey(old, nil, context)
			removed[#removed + 1] = old
		end
	end
	if not setKey(key, action, context) then
		for _, old in ipairs(removed) do setKey(old, action, context) end
		return false
	end
	saveBindings()
	bindingsChanged()
	return true
end

-- Addons known by the frames and commands of their override bindings.
ADDONS = {
	{ find = "controllerkeyboard", name = "Easy Controller" },
	{ find = "easycontroller", name = "Easy Controller" },
	{ find = "consoleport", name = "ConsolePort" },
}

function bindingName(action)
	local name = rawget(_G, "BINDING_NAME_" .. action)
	if type(name) == "string" and name ~= "" then return name end
	for _, a in ipairs(G.ACTIONS) do if a.action == action then return a.label end end
	return nil
end

function actionAt(key, checkOverride, context)
	if type(GetBindingAction) ~= "function" then return "" end
	local ok, action
	if context then ok, action = pcall(GetBindingAction, key, checkOverride, context) else ok, action = pcall(GetBindingAction, key, checkOverride) end
	return ok and type(action) == "string" and action or ""
end

function addonOf(action)
	local lower = action:lower()
	for _, addon in ipairs(ADDONS) do
		if lower:find(addon.find, 1, true) then return addon.name end
	end
	return L["another addon"]
end

function isOurs(action) return action:find("^CLICK PolestarPad") ~= nil end

-- Easy Controller's own chord (its settings' shortcut, RB + Down by
-- default), read from its saved settings, or nil.
function G.EasyControllerChord()
	local loaded = C_AddOns and C_AddOns.IsAddOnLoaded
	if not (loaded and loaded("EasyController")) then return nil end
	local db = rawget(_G, "ControllerKeyboardDB")
	local settings = type(db) == "table" and db.settings
	if type(settings) ~= "table" then return nil end
	if type(settings.features) == "table" and settings.features.configShortcut == false then return nil end
	local chord = settings.shortcut
	if type(chord) == "table" and type(chord.hold) == "string" and type(chord.press) == "string" then
		return chord.hold .. "+" .. chord.press
	end
	return nil
end

-- With the gamepad interface on, LB and RB are its targeting modifiers:
-- held, the D-pad and the face buttons pick group members, mark and assist;
-- both held, the D-pad pages the action bars and opens the quest tracker or
-- the chat (Blizzard_Gamepad's GamepadPersistentInputLegend.lua, with
-- GamepadSwapTargetModifiers swapping the two). A chord held on either is
-- the game's then.
SHOULDERS = { PADLSHOULDER = true, PADRSHOULDER = true }

function chordUsedBy(action, key)
	for other, chord in pairs(store().chords) do
		if chord == key and other ~= action then
			return { kind = "binding", name = bindingName(other) or other, action = other }
		end
	end
	if G.EasyControllerChord() == key then return { kind = "addon", name = "Easy Controller", action = key } end
	local hold, press = chordParts(key)
	if ns.GamepadUI() and SHOULDERS[hold] then
		return { kind = "gamepad", name = G.KeyName(key), action = key }
	end
	local mod = modifierOf(hold)
	if mod then
		local over, saved = actionAt(mod.prefix .. press, true), actionAt(mod.prefix .. press, false)
		if over ~= "" and over ~= saved and not isOurs(over) then
			return { kind = "addon", name = addonOf(over), action = over }
		end
	end
	return nil
end

-- Who else has `key`, or nil:
--   { kind = "addon", name }    another addon's override binding (Easy
--                               Controller...): it may win in play;
--   { kind = "gamepad", name }  the game's gamepad interface, while it is on;
--   { kind = "binding", name, action }  a saved binding (the game's or
--                               another of Polestar's), which binding replaces.
function G.WhoUses(action, key)
	if chordParts(key) then return chordUsedBy(action, key) end
	local saved = actionAt(key, false)
	local over = actionAt(key, true)
	if over ~= "" and over ~= saved and over ~= action and not isOurs(over) then
		return { kind = "addon", name = addonOf(over), action = over }
	end
	local context = gamepadContext()
	local own = context and actionAt(key, false, context) or ""
	if own ~= "" and own ~= saved and own ~= action then
		return { kind = "gamepad", name = bindingName(own) or own, action = own }
	end
	if saved ~= "" and saved ~= action then
		return { kind = "binding", name = bindingName(saved) or saved, action = saved }
	end
	return nil
end

-- Who else has `key`, in words, for a binding row waiting to be confirmed:
-- binding again replaces a saved binding, or binds over another's anyway.
function G.ConflictText(key, who)
	local again = G.IsActive() and string.format(L["%s again to bind it anyway."], G.ButtonName("PAD1")) or L["Click again to bind it anyway."]
	if who.kind == "binding" then return string.format(L["Used by %s."], who.name) .. " " .. again end
	if who.kind == "gamepad" then return string.format(L["The game's gamepad setup uses %s."], G.KeyName(key)) .. " " .. again end
	return string.format(L["%s uses %s."], who.name, G.KeyName(key)) .. " " .. again
end

---------------------------------------------------------------------------
-- Temporary navigation bindings and the frame that reads the gamepad first
---------------------------------------------------------------------------

G.held = {}      -- [key] = true while a taken key is down
G.heldKeys = {}  -- [key] = owner: down when the owner took the gamepad, the game's until released
G.redirected = {} -- [key] = true: a secure button's click instead of the handler

driver = driver -- forward: the OnUpdate frame (repeat, held keys, chords)
updateDriver = updateDriver

function protectedCall(fn, ...)
	if type(fn) ~= "function" or combat() then return false end
	return pcall(fn, ...)
end

navButtons = {}
function navButton(key)
	local b = navButtons[key]
	if b then return b end
	b = CreateFrame("Button", "TuWoW_LevelingPad" .. key, UIParent)
	b:RegisterForClicks("AnyDown", "AnyUp")
	b:SetScript("OnClick", function(_, _, down) G.Dispatch(key, down) end)
	navButtons[key] = b
	return b
end

function buttonDown(button)
	if type(IsKeyDown) ~= "function" then return false end
	local ok, down = pcall(IsKeyDown, button)
	return ok and down == true
end

padInput, chordInput = padInput, chordInput

-- Whether the button a frame of Polestar's just read goes on to the game
-- (the client reads the frame's propagation as its handler ends). Out of
-- combat only: the client refuses the change in a fight.
function passOn(frame, pass)
	if not frame or not frame.SetPropagateKeyboardInput or combat() then return end
	pcall(frame.SetPropagateKeyboardInput, frame, pass and true or false)
end

function ourPress(key)
	return (padInput and padInput.eaten[key]) or (chordInput and chordInput.eaten[key]) or false
end

-- With the gamepad interface on, no override binding is set on its
-- buttons: they sit over the game's own (its targeting, its menus' focus),
-- which Forever's binding stack expects to find as it left them. The
-- window's frame (PolestarPadInput) reads its buttons first all the same.
useOverrides = not ns.GamepadUI()

function setOverride(owner, key, name)
	if not useOverrides then return end
	if not name then navButton(key) end
	protectedCall(SetOverrideBindingClick, owner, true, key, name or ("TuWoW_LevelingPad" .. key))
end

function clearOverrides(owner)
	if useOverrides and owner then protectedCall(ClearOverrideBindings, owner) end
end

function applyNav(owner, ours)
	for _, key in ipairs(NAV_KEYS) do
		if buttonDown(key) and not (ours and ours[key]) and not ourPress(key) then
			-- Pressed for the game (RB of the RB + Up that opened the
			-- window): its release must reach the game too.
			G.heldKeys[key] = owner
		else
			G.heldKeys[key] = nil
			setOverride(owner, key, G.redirected[key])
		end
	end
end

-- The window's buttons that were down when it took the gamepad, bound once released.
function bindReleased()
	if not next(G.heldKeys) or combat() then return end
	for key, owner in pairs(G.heldKeys) do
		if owner ~= G.owner then
			G.heldKeys[key] = nil
		elseif not buttonDown(key) then
			G.heldKeys[key] = nil
			if not G.IsCapturing() and not G.redirected[key] then setOverride(owner, key) end
		end
	end
end

-- `down`: true on press, false on release, nil when the client does not say.
function G.Dispatch(key, down)
	if down == false then
		G.held[key] = nil
		if G.repeatKey == key then G.repeatKey = nil end
		return
	end
	if down == true then G.held[key] = true end
	if G.handler then G.handler(key, false) end
	if down == true and REPEATING[key] and G.owner then
		G.repeatKey, G.repeatWait, G.repeatAge = key, REPEAT_DELAY, 0
		updateDriver()
	end
end

-- The open window's buttons are read first by a frame of Polestar's
-- (OnGamePadButtonDown), before any binding: neither the game's gamepad
-- interface nor another addon's override bindings go first. Only the
-- window's keys are kept; any other button goes on to the game. The
-- override bindings stay under it for a client where the frame gets nothing.
KEYSET = {}
for _, key in ipairs(NAV_KEYS) do KEYSET[key] = true end

function onWindowPress(button)
	if not G.owner or G.IsCapturing() or not KEYSET[button] or G.redirected[button] or G.heldKeys[button] then
		passOn(padInput, true)
		return true
	end
	padInput.eaten[button] = true
	passOn(padInput, false)
	G.Dispatch(button, true)
	-- The press may have opened or closed a window, which set the frame up
	-- afresh: this press still stays Polestar's (the client reads the
	-- propagation as the handler ends).
	padInput.eaten[button] = true
	passOn(padInput, false)
	return false
end

function onWindowRelease(button)
	if not padInput.eaten[button] then
		passOn(padInput, true)
		return true
	end
	padInput.eaten[button] = nil
	passOn(padInput, false)
	G.Dispatch(button, false)
	passOn(padInput, false)
	return false
end

function setPadInput(on)
	if combat() then return end
	if not padInput then
		if not on then return end
		padInput = CreateFrame("Frame", "TuWoW_LevelingPadInput", UIParent)
		padInput:SetAllPoints(UIParent)
		padInput:SetFrameStrata("FULLSCREEN_DIALOG")
		padInput.eaten = {}
		pcall(padInput.SetScript, padInput, "OnGamePadButtonDown", function(_, button) return onWindowPress(button) end)
		pcall(padInput.SetScript, padInput, "OnGamePadButtonUp", function(_, button) return onWindowRelease(button) end)
	end
	padInput.eaten = {}
	passOn(padInput, true)
	padInput:SetShown(on)
	if padInput.EnableGamePadButton then pcall(padInput.EnableGamePadButton, padInput, on) end
end

-- `key` clicks the button named `name` instead of reaching the handler (a
-- secure button: focus mode uses the quest item with A), or nil to restore.
-- Through an override binding, so never with the gamepad interface: the key
-- stays the window's there.
function G.Redirect(key, name)
	if not useOverrides or G.redirected[key] == name then return end
	G.redirected[key] = name
	if not G.owner or G.heldKeys[key] then return end
	setOverride(G.owner, key, name)
end

-- Routes the navigation keys to handler(key, isRepeat) until G.Release(owner).
-- ours: keys down whose press was Polestar's (the A that opened this
-- window): their release stays Polestar's too.
function G.Take(owner, handler, ours)
	if fighting or combat() then return false end
	if G.owner and G.owner ~= owner then clearOverrides(G.owner) end
	G.owner, G.handler = owner, handler
	G.held, G.repeatKey = {}, nil
	applyNav(owner, ours)
	setPadInput(true)
	if ours then
		for key in pairs(ours) do if buttonDown(key) then padInput.eaten[key] = true end end
	end
	if chordInput and chordInput:IsShown() then chordInput:Hide() end
	updateDriver()
	return true
end

function G.Release(owner)
	clearOverrides(owner)
	for key, waiting in pairs(G.heldKeys) do
		if waiting == owner then G.heldKeys[key] = nil end
	end
	if G.owner == owner then
		G.owner, G.handler, G.repeatKey = nil, nil, nil
		G.held, G.redirected = {}, {}
		setPadInput(false)
	end
	updateDriver()
end

-- A Polestar window holds the gamepad's buttons (for other gamepad addons
-- that wish to leave it alone meanwhile).
function G.HasWindow() return G.owner ~= nil end

---------------------------------------------------------------------------
-- Chords in play: watched like Easy Controller's own RB + Down, both
-- buttons read with IsKeyDown, never bound (binding the second button while
-- the first is held broke the game's RB combinations). While a chord's first
-- button is held, out of combat, a frame of Polestar's reads the gamepad
-- first and keeps the chord's second button from the game; any other button
-- goes on. A chord does nothing in a fight, while a Polestar window holds
-- the gamepad, while a binding row waits, while the chat has the keyboard
-- or a game window the gamepad's focus, nor with another shoulder or
-- trigger held (LB + RB + Up is not RB + Up). The buttons are looked at
-- CHORD_POLL apart until a chord's first button is down, then every frame.
---------------------------------------------------------------------------

CHORD_POLL = 0.05
chordOn = {} -- [chord] = true: both buttons down, its action run once
chordHeld = false -- a chord's first button was down at the last look

-- The chords bound, parsed once per change: { { action, key, hold, press }, ... }.
chordList, chordSource, chordsDirty = {}, nil, true
ns.On("GAMEPAD_BINDINGS_CHANGED", function()
	chordsDirty = true
	updateDriver()
end)
function chords()
	local list = store().chords
	if chordsDirty or list ~= chordSource then
		chordList, chordSource, chordsDirty = {}, list, false
		for action, key in pairs(list) do
			local hold, press = chordParts(key)
			if hold then chordList[#chordList + 1] = { action = action, key = key, hold = hold, press = press } end
		end
	end
	return chordList
end

OTHER_HOLDS = { "PADLSHOULDER", "PADRSHOULDER", "PADLTRIGGER", "PADRTRIGGER" }
function alone(hold, press)
	for i = 1, #OTHER_HOLDS do
		local b = OTHER_HOLDS[i]
		if b ~= hold and b ~= press and buttonDown(b) then return false end
	end
	return true
end

function chordsFree()
	if combat() or G.owner or G.IsCapturing() then return false end
	if type(GetCurrentKeyBoardFocus) == "function" then
		local ok, focus = pcall(GetCurrentKeyBoardFocus)
		if ok and focus then return false end
	end
	-- The window the game's gamepad focus is on: its manager's field, read
	-- (what its GetActiveFrame returns), never a call into it.
	local mode = rawget(_G, "GamepadMode")
	local manager = type(mode) == "table" and rawget(mode, "FrameControlsManager")
	if type(manager) == "table" and rawget(manager, "focusedFrame") then return false end
	return true
end

function runChord(action, key)
	if chordOn[key] then return end
	chordOn[key] = true
	-- Never in a fight: the window it opens could not take the gamepad, and
	-- the button went on to the game as well.
	if combat() then return end
	local run = RUN[action] and ns.Bindings and ns.Bindings[RUN[action]]
	if run then ns.SafeCall(run) end
end

function onChordPress(button)
	if chordsFree() then
		local list = chords()
		for i = 1, #list do
			local c = list[i]
			if c.press == button and c.hold ~= button and buttonDown(c.hold) and alone(c.hold, button) then
				chordInput.eaten[button] = true
				passOn(chordInput, false)
				runChord(c.action, c.key)
				return false
			end
		end
	end
	passOn(chordInput, true)
	return true
end

function onChordRelease(button)
	if not chordInput.eaten[button] then
		passOn(chordInput, true)
		return true
	end
	chordInput.eaten[button] = nil
	passOn(chordInput, false)
	return false
end

-- force: before a fight (the frame cannot change in combat).
function setChordInput(on, force)
	if combat() then return end
	if not chordInput then
		if not on then return end
		chordInput = CreateFrame("Frame", "TuWoW_LevelingPadChords", UIParent)
		chordInput:SetAllPoints(UIParent)
		chordInput:SetFrameStrata("FULLSCREEN_DIALOG")
		chordInput.eaten = {}
		pcall(chordInput.SetScript, chordInput, "OnGamePadButtonDown", function(_, button) return onChordPress(button) end)
		pcall(chordInput.SetScript, chordInput, "OnGamePadButtonUp", function(_, button) return onChordRelease(button) end)
		chordInput:Hide()
	end
	if on == chordInput:IsShown() then return end
	-- A second button kept from the game: its release comes back here first.
	if not on and next(chordInput.eaten) and not force then return end
	if not on then chordInput.eaten = {} end
	passOn(chordInput, true)
	chordInput:SetShown(on)
	if chordInput.EnableGamePadButton then pcall(chordInput.EnableGamePadButton, chordInput, on) end
end

function watchChords()
	local list = chords()
	local holding, free = false, nil
	for i = 1, #list do
		local c = list[i]
		local both = false
		if buttonDown(c.hold) then
			holding = true
			both = buttonDown(c.press)
		end
		if not both then
			chordOn[c.key] = nil
		else
			if free == nil then free = chordsFree() end
			if free and alone(c.hold, c.press) then runChord(c.action, c.key) end
		end
	end
	if holding and free == nil then free = chordsFree() end
	chordHeld = holding
	setChordInput(holding and free or false)
end

---------------------------------------------------------------------------
-- The driver: key repeat, held keys, chords, and the open window's focus
-- kept valid. It runs only while one of them needs it.
---------------------------------------------------------------------------

sinceCheck, sinceChords = 0, 0
checkFocus = checkFocus -- forward: the open window's focus and help, checked a few times a second

driver = CreateFrame("Frame")
driver:Hide()
driver:SetScript("OnUpdate", ns.Safe(function(_, elapsed)
	bindReleased()
	sinceChords = sinceChords + elapsed
	if chordHeld or sinceChords >= CHORD_POLL then
		sinceChords = 0
		watchChords()
	end
	if G.owner then
		sinceCheck = sinceCheck + elapsed
		if sinceCheck >= 0.25 then
			sinceCheck = 0
			checkFocus()
		end
	end
	local key = G.repeatKey
	if not key then return end
	G.repeatAge = G.repeatAge + elapsed
	if G.repeatAge > MAX_HOLD then
		G.repeatKey = nil
		return
	end
	G.repeatWait = G.repeatWait - elapsed
	if G.repeatWait <= 0 then
		G.repeatWait = REPEAT_EVERY
		if G.handler then G.handler(key, true) end
	end
end))

function updateDriver()
	local need = G.owner ~= nil or G.repeatKey ~= nil or next(G.heldKeys) ~= nil
		or (next(store().chords) ~= nil and G.IsActive())
		or (chordInput ~= nil and chordInput:IsShown())
	driver:SetShown(need and true or false)
end
G.UpdateDriver = updateDriver

