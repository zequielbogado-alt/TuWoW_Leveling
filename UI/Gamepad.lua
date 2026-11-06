local ADDON, ns = ...
setfenv(1, ns._uiGamepadEnv)
---------------------------------------------------------------------------
-- Capturing a key, a button or a chord (binding rows). The capture reads the
-- buttons itself (OnGamePadButtonDown / Up, OnKeyDown), with the window's
-- navigation released until it ends, and lets nothing through to the game.
-- A gamepad button is taken on its release when it was pressed alone, so a
-- held button can start a combination: a second button while it is held
-- makes a chord of Polestar's (opts.chords), or, for the quest buttons'
-- secure clicks, a combination of the game's when the first button is one
-- the game makes a modifier (LT, RT...), refused in words otherwise. B
-- tapped alone cancels; held HOLD_B seconds it is taken. Escape cancels, so
-- does a fight or CAPTURE_TIMEOUT seconds without a press.
---------------------------------------------------------------------------

HOLD_B, CAPTURE_TIMEOUT = 1, 20
G.HOLD_B, G.CAPTURE_TIMEOUT = HOLD_B, CAPTURE_TIMEOUT

IGNORED_KEYS = {
	LSHIFT = true, RSHIFT = true, LCTRL = true, RCTRL = true, LALT = true, RALT = true, LMETA = true,
	RMETA = true, SHIFT = true, CTRL = true, ALT = true, META = true, UNKNOWN = true, BUTTON1 = true,
	BUTTON2 = true,
}

capture = capture -- { held = { [button] = time }, single, spoiled, last, opts }

function now() return GetTime and GetTime() or 0 end

function isDown(fnName)
	local fn = rawget(_G, fnName)
	if type(fn) ~= "function" then return false end
	local ok, down = pcall(fn)
	return ok and down == true
end

-- "ALT-CTRL-SHIFT-" as far as held: the keyboard's modifiers and the held
-- gamepad buttons the game makes modifiers.
function modifierPrefix(held)
	local prefix = ""
	for _, mod in ipairs(MODIFIERS) do
		local down = isDown(mod.down)
		if not down and held then
			local button = cvar(mod.cvar)
			down = button ~= nil and held[button] ~= nil
		end
		if down then prefix = prefix .. mod.prefix end
	end
	return prefix
end

function setCaptureInput(frame, enabled)
	if frame.EnableGamePadButton then pcall(frame.EnableGamePadButton, frame, enabled) end
	if frame.EnableKeyboard and frame.SetPropagateKeyboardInput then pcall(frame.EnableKeyboard, frame, enabled) end
	if enabled and frame.SetPropagateKeyboardInput then pcall(frame.SetPropagateKeyboardInput, frame, false) end
end

function G.StopCapture(key)
	local frame = G.captureFrame
	if not frame or not frame:IsShown() then return end
	local opts = capture and capture.opts or {}
	local held = capture and capture.held
	capture = nil
	setCaptureInput(frame, false)
	frame:Hide()
	if G.owner and not fighting and not combat() then
		-- The buttons still down were pressed for the capture: their release stays ours.
		applyNav(G.owner, held)
		setPadInput(true)
	end
	if opts.done then opts.done(key) end
end

function say(text)
	if capture and capture.opts.say then capture.opts.say(text) end
end

function take(key)
	local why = capture.opts.refuse and capture.opts.refuse(key)
	if why then
		say(why)
		capture.spoiled = next(capture.held) ~= nil
		return
	end
	G.StopCapture(key)
end

-- "RB + D-pad up" refused: the game joins a button with its modifiers only.
function comboText(first, button)
	local combo = G.ButtonName(first) .. " + " .. G.ButtonName(button)
	local mods = {}
	for _, b in ipairs(G.ModifierButtons()) do mods[#mods + 1] = G.ButtonName(b) end
	if #mods == 0 then return string.format(L["%s: this action takes one button, not two"], combo) end
	return string.format(L["%s: this action takes one button, or one with %s"], combo, concat(mods, L[" or "]))
end

function onPadDown(button)
	local c = capture
	if not c then return true end
	c.last = now()
	if c.held[button] then return false end
	-- The button held first (a chord's), and a held one the game makes no modifier.
	local first, firstAt, plain
	for b, at in pairs(c.held) do
		if not firstAt or at < firstAt then first, firstAt = b, at end
		if not modifierOf(b) then plain = b end
	end
	c.held[button] = c.last
	if c.spoiled then return false end
	if c.opts.chords and first then
		c.single = nil
		take(first .. "+" .. button)
		return false
	end
	-- A modifier waits for the button it goes with.
	if modifierOf(button) then return false end
	if plain then
		c.single, c.spoiled = nil, true
		say(comboText(plain, button))
		return false
	end
	local prefix = modifierPrefix(c.held)
	if prefix ~= "" then take(prefix .. button) else c.single = button end
	return false
end

function onPadUp(button)
	local c = capture
	if not c then return true end
	c.held[button] = nil
	if c.spoiled then
		if not next(c.held) then c.spoiled = nil end
		return false
	end
	if c.single == button then
		c.single = nil
		if button == "PAD2" then G.StopCapture(nil) else take(modifierPrefix(c.held) .. button) end
	end
	return false
end

function onKeyDown(key)
	local c = capture
	if not c or type(key) ~= "string" then return end
	-- Some clients send the gamepad's buttons here too: one press is read once.
	if G.IsPadKey(key) then
		onPadDown(baseKey(key))
		return
	end
	c.last = now()
	if IGNORED_KEYS[key] then return end
	local prefix = modifierPrefix(c.held)
	if key == "ESCAPE" and prefix == "" then
		G.StopCapture(nil)
		return
	end
	take(prefix .. key)
end

function onKeyUp(key)
	if not (capture and type(key) == "string" and G.IsPadKey(key)) then return end
	if capture.held[baseKey(key)] then onPadUp(baseKey(key)) end
end

function onCaptureUpdate()
	local c = capture
	if not c then return end
	local t = now()
	if c.single == "PAD2" and c.held.PAD2 and t - c.held.PAD2 >= HOLD_B then
		c.single = nil
		take(modifierPrefix(c.held) .. "PAD2")
	elseif t - c.last >= CAPTURE_TIMEOUT then
		G.StopCapture(nil)
	end
end

-- opts.done(key): the key taken ("SHIFT-PADDRIGHT", "PADLSHOULDER+PADDUP",
-- "CTRL-N"), nil when cancelled; opts.chords: two buttons make a chord of
-- Polestar's; opts.refuse(key) -> text | nil: why that key cannot be taken
-- (the capture goes on); opts.say(text): a word while it goes on.
function G.Capture(opts)
	if combat() then return false end
	if type(opts) == "function" then opts = { done = opts } end
	local frame = G.captureFrame
	if not frame then
		frame = CreateFrame("Frame", "TuWoW_LevelingPadCapture", UIParent)
		frame:SetAllPoints(UIParent)
		frame:SetFrameStrata("FULLSCREEN_DIALOG")
		pcall(frame.SetScript, frame, "OnGamePadButtonDown", function(_, button) return onPadDown(button) end)
		pcall(frame.SetScript, frame, "OnGamePadButtonUp", function(_, button) return onPadUp(button) end)
		pcall(frame.SetScript, frame, "OnKeyDown", function(_, key) onKeyDown(key) end)
		pcall(frame.SetScript, frame, "OnKeyUp", function(_, key) onKeyUp(key) end)
		frame:SetScript("OnUpdate", ns.Safe(onCaptureUpdate))
		frame:Hide()
		G.captureFrame = frame
	end
	if frame:IsShown() then G.StopCapture(nil) end
	capture = { held = {}, last = now(), opts = opts }
	clearOverrides(G.owner)
	setPadInput(false)
	frame:Show()
	setCaptureInput(frame, true)
	return true
end

function G.IsCapturing()
	return G.captureFrame ~= nil and G.captureFrame:IsShown()
end

---------------------------------------------------------------------------
-- Window navigation (the contract: docs/ARCHITECTURE.md, "Gamepad")
--
-- G.Register(frame, spec): while `frame` is shown and the newest registered
-- window open, out of combat, with a gamepad active and "Navigate Polestar's
-- windows" on, the gamepad moves a focus through spec.rows():
--   D-pad      the nearest widget that way (in reading order without layout);
--              left / right adjust a slider or step a dropdown's choices
--   A          clicks the focused widget (spec.activate(w) first)
--   B, Start   spec.back(), else hides the window
--   Y          spec.reset(w), else a setting row's right-click (its default)
--   X          spec.x(w)
--   LB / RB    spec.prevTab() / spec.nextTab()
-- Optional: spec.initial(rows) -> index; spec.key(key, w) -> true when it
-- handled the key; spec.actionLabel(w), spec.xLabel(w), spec.backLabel,
-- spec.tabsLabel, spec.resetLabel(w) word the hint bar; spec.onFocus(w).
---------------------------------------------------------------------------

specs = setmetatable({}, { __mode = "k" })
stack = {} -- open windows, newest last: { frame, spec, focus, manual }

function entryOf(frame)
	for i, e in ipairs(stack) do if e.frame == frame then return e, i end end
	return nil
end

function clickable(f)
	local kind = f.GetObjectType and f:GetObjectType()
	if kind ~= "Button" and kind ~= "CheckButton" then return false end
	return f:GetScript("OnClick") ~= nil
end

-- Every shown, enabled, clickable widget under `root` (the outermost one:
-- a row's own buttons are the row's), in the frame tree's order. Walked
-- over GetChildren's values, with no table per frame: it runs a few times a
-- second while a window holds the gamepad.
function collectFrom(out, ...)
	for i = 1, select("#", ...) do
		local c = select(i, ...)
		if c:IsShown() and not c.psPadSkip then
			if clickable(c) then
				if c:IsEnabled() and (c:GetAlpha() or 1) > 0.05 then out[#out + 1] = c end
			else
				collectFrom(out, c:GetChildren())
			end
		end
	end
end

function G.Collect(root, out)
	out = out or {}
	if root then collectFrom(out, root:GetChildren()) end
	return out
end

-- Is `w` under `ancestor`?
function G.Within(w, ancestor)
	local f = w
	while f do
		if f == ancestor then return true end
		f = f:GetParent()
	end
	return false
end

function usable(w)
	return w and w:IsVisible() and (not w.IsEnabled or w:IsEnabled())
end

function rowsOf(e)
	local ok, list = pcall(e.spec.rows or function() return G.Collect(e.frame) end)
	local out = {}
	if ok and type(list) == "table" then
		for _, w in ipairs(list) do if usable(w) then out[#out + 1] = w end end
	end
	return out
end

function rect(w)
	local l, b, wd, h = w:GetLeft(), w:GetBottom(), w:GetWidth(), w:GetHeight()
	if not (l and b and wd and h) then return nil end
	return l, b, wd, h
end

-- Laid out: the widgets have places (a client, the preview); the test
-- stub's frames do not, and walk the list in order.
function laidOut(rows)
	local first
	for _, w in ipairs(rows) do
		local l, b = rect(w)
		if l then
			local p = l .. ":" .. b
			if first and p ~= first then return true end
			first = first or p
		end
	end
	return false
end

function indexOf(rows, w)
	for i, r in ipairs(rows) do if r == w then return i end end
	return nil
end

-- The nearest widget from `cur` in direction dx, dy (one of them 0): its
-- distance that way plus twice how far it sits off the line.
function nearest(rows, cur, dx, dy)
	local l, b, w, h = rect(cur)
	if not l then return nil end
	local cx, cy = l + w / 2, b + h / 2
	local best, bestScore
	for _, o in ipairs(rows) do
		if o ~= cur then
			local ol, ob, ow, oh = rect(o)
			if ol then
				local ox, oy = ol + ow / 2, ob + oh / 2
				local primary, off
				if dy ~= 0 then
					primary = dy > 0 and (oy - cy) or (cy - oy)
					off = max(0, max(l, ol) - min(l + w, ol + ow))
				else
					primary = dx > 0 and (ox - cx) or (cx - ox)
					off = max(0, max(b, ob) - min(b + h, ob + oh))
				end
				if primary > 1 then
					local score = primary + off * 2
					if not bestScore or score < bestScore then best, bestScore = o, score end
				end
			end
		end
	end
	return best
end

-- The scroll area holding `w`, if any.
function scrollOf(w)
	local f = w:GetParent()
	while f do
		if f.GetObjectType and f:GetObjectType() == "ScrollFrame" then return f end
		f = f:GetParent()
	end
	return nil
end

-- Scrolls the focus into view.
function reveal(w)
	local sf = scrollOf(w)
	if not sf or not sf.GetScrollChild then return end
	local child = sf:GetScrollChild()
	local top, wt, wb = child and child:GetTop(), w:GetTop(), w:GetBottom()
	if not (top and wt and wb) then return end
	local view = sf.psView or sf:GetHeight()
	local cur = sf:GetVerticalScroll()
	local a, z = top - wt, top - wb
	if a < cur then
		W.ScrollTo(sf, a - 8)
	elseif z > cur + view then
		W.ScrollTo(sf, z - view + 8)
	end
end

---------------------------------------------------------------------------
-- The focus ring, the B chip and the hint bar
---------------------------------------------------------------------------

-- One ring, one hint bar and one B chip serve every window, each moved to
-- the window holding the gamepad (named, so previews can draw them).

-- A 2px accent ring inside the focused widget over the hover wash: the
-- mouse's hover, held, and marked as Polestar marks focus.
ring = ring
function theRing()
	if ring then return ring end
	local r = CreateFrame("Frame", "TuWoW_LevelingPadRing", UIParent)
	r.Wash = r:CreateTexture(nil, "BACKGROUND")
	r.Wash:SetTexture(Theme.Media("white"))
	r.Wash:SetAllPoints(r)
	r.edges = {}
	for i = 1, 4 do
		local t = r:CreateTexture(nil, "OVERLAY")
		t:SetTexture(Theme.Media("white"))
		r.edges[i] = t
	end
	local e = r.edges
	e[1]:SetPoint("TOPLEFT", r, "TOPLEFT", 0, 0); e[1]:SetPoint("TOPRIGHT", r, "TOPRIGHT", 0, 0); e[1]:SetHeight(2)
	e[2]:SetPoint("BOTTOMLEFT", r, "BOTTOMLEFT", 0, 0); e[2]:SetPoint("BOTTOMRIGHT", r, "BOTTOMRIGHT", 0, 0); e[2]:SetHeight(2)
	e[3]:SetPoint("TOPLEFT", e[1], "BOTTOMLEFT", 0, 0); e[3]:SetPoint("BOTTOMLEFT", e[2], "TOPLEFT", 0, 0); e[3]:SetWidth(2)
	e[4]:SetPoint("TOPRIGHT", e[1], "BOTTOMRIGHT", 0, 0); e[4]:SetPoint("BOTTOMRIGHT", e[2], "TOPRIGHT", 0, 0); e[4]:SetWidth(2)
	W.Painter(r, function(f)
		local ar, ag, ab = Theme.Accent()
		for i = 1, 4 do f.edges[i]:SetVertexColor(ar, ag, ab, 0.9) end
		f.Wash:SetVertexColor(Theme.Wash("hover"))
	end)
	r:EnableMouse(false)
	r:Hide()
	ring = r
	return r
end

-- The hint bar: a panel of chip + label entries, 16 apart, a chip 6 before
-- its label, wrapping onto a second line rather than leaving one out.
HINT_LINE, HINT_PAD, HINT_MIN = 24, 12, 300
bar = bar
function theBar()
	if bar then return bar end
	bar = CreateFrame("Frame", "TuWoW_LevelingPadHints", UIParent)
	Theme.Skin(bar, "panel")
	bar.items = {}
	bar:SetClampedToScreen(true)
	bar:Hide()
	return bar
end

-- list = { { keys, label }, ... }; maxWidth: the room. -> width, height
function setHints(list, maxWidth)
	local b = theBar()
	local x, y, widest = HINT_PAD, 0, 0
	for i, h in ipairs(list) do
		local it = b.items[i]
		if not it then
			it = { glyph = G.Glyph(b), label = W.Text(b, "small", "textDim") }
			b.items[i] = it
		end
		local gw = it.glyph:SetKeys(h.keys)
		it.label:SetText(h.label)
		local w = gw + 6 + it.label:GetStringWidth()
		if x > HINT_PAD and x + w + HINT_PAD > maxWidth then
			widest = max(widest, x - 16)
			x, y = HINT_PAD, y + 1
		end
		local cy = -(4 + y * HINT_LINE + HINT_LINE / 2)
		it.glyph:ClearAllPoints()
		it.glyph:SetPoint("LEFT", b, "TOPLEFT", x, cy)
		it.glyph:Show()
		it.label:ClearAllPoints()
		it.label:SetPoint("LEFT", b, "TOPLEFT", x + gw + 6, cy)
		it.label:Show()
		x = x + w + 16
	end
	for i = #list + 1, #b.items do
		b.items[i].glyph:Hide()
		b.items[i].label:Hide()
	end
	widest = max(widest, x - 16)
	local width, height = floor(widest + HINT_PAD + 0.5), (y + 1) * HINT_LINE + 8
	b:SetSize(width, height)
	return width, height
end

badge = badge
function theBadge()
	if badge then return badge end
	badge = G.Glyph(UIParent, "TuWoW_LevelingPadBadge")
	badge:Hide()
	return badge
end

-- What A, Y and the D-pad do on a widget, in words.
function adjustable(w)
	return (w.Slider ~= nil and w.psStep ~= nil) or (w.psChoices ~= nil and w.Button ~= nil)
end

function actionLabel(e, w)
	if e.spec.actionLabel then
		local text = e.spec.actionLabel(w)
		if text ~= nil then return text or nil end
	end
	if w.psPadLabel then return w.psPadLabel end
	if w.Slider and w.psStep then return nil end
	if w.psBinding then return L["Bind"] end
	if w.psChoices then return L["Choose"] end
	if type(w.Track) == "table" and type(w.Knob) == "table" then return L["Switch"] end
	return L["Select"]
end

function resetLabel(e, w)
	if e.spec.resetLabel then return e.spec.resetLabel(w) end
	if w.psBinding then return L["Unbind"] end
	if w.psPath ~= nil then return L["Default"] end
	return nil
end

-- The B chip goes on the window's close button when it has one shown; the
-- hint bar then leaves B out (each action shown once).
function closeButton(e)
	local c = e.spec.close
	if type(c) == "function" then c = c() end
	if c == nil then c = e.frame.Close end
	if type(c) == "table" and c.IsVisible and c:IsVisible() then return c end
	return nil
end

function hintsOf(e, w, onClose)
	local list = {}
	list[#list + 1] = { keys = { "PADDUP", "PADDDOWN" }, label = L["Move"] }
	if w and adjustable(w) then list[#list + 1] = { keys = { "PADDLEFT", "PADDRIGHT" }, label = L["Adjust"] } end
	local a = w and actionLabel(e, w)
	if a then list[#list + 1] = { keys = "PAD1", label = a } end
	local x = w and e.spec.xLabel and e.spec.xLabel(w)
	if x then list[#list + 1] = { keys = "PAD3", label = x } end
	local y = w and resetLabel(e, w)
	if y then list[#list + 1] = { keys = "PAD4", label = y } end
	if e.spec.prevTab or e.spec.nextTab then
		list[#list + 1] = { keys = { "PADLSHOULDER", "PADRSHOULDER" }, label = e.spec.tabsLabel or L["Tabs"] }
	end
	if not onClose then list[#list + 1] = { keys = "PAD2", label = e.spec.backLabel or L["Close"] } end
	return list
end

function hidePaint()
	if ring then ring:Hide() end
	if bar then bar:Hide() end
	if badge then badge:Hide() end
end

-- The hint bar under the window, at its left edge, kept on the screen (a
-- window at the screen's foot has it over its own foot). It is the window's
-- child while it holds the gamepad: it scales and hides with it.
function placeHints(e, b)
	local f = e.frame
	b:SetParent(f)
	b:ClearAllPoints()
	b:SetPoint("TOPLEFT", f, "BOTTOMLEFT", 0, -8)
end

function paint(e)
	local w = e.focus
	local r = theRing()
	if w then
		-- The focused widget's child: clipped with it by a scrolled list.
		r:SetParent(w)
		r:ClearAllPoints()
		r:SetAllPoints(w)
		r:Show()
	else
		r:Hide()
	end
	local hints = ns.Get("gamepad.hints")
	local chip = theBadge()
	local close = hints and closeButton(e)
	if close then
		chip:SetParent(close:GetParent())
		chip:SetKeys("PAD2")
		chip:ClearAllPoints()
		chip:SetPoint("RIGHT", close, "LEFT", -4, 0)
		chip:Show()
	else
		chip:Hide()
	end
	local b = theBar()
	if hints then
		setHints(hintsOf(e, w, close ~= nil), max(HINT_MIN, e.frame:GetWidth() or 0))
		placeHints(e, b)
		b:Show()
	else
		b:Hide()
	end
end

-- Focus `w` (nil: none) in window entry `e`.
function focus(e, w)
	local old = e.focus
	e.focus = w
	if old and old ~= w and GameTooltip and GameTooltip.GetOwner and GameTooltip:GetOwner() == old then GameTooltip:Hide() end
	if w then reveal(w) end
	if e.spec.onFocus then ns.SafeCall(e.spec.onFocus, w) end
	if G.entry == e then paint(e) end
end

-- Keeps the focus on a widget still there (a page change, a list redrawn).
-- Until the player presses a button, the focus follows spec.initial (a
-- window fills its page after it shows).
function validate(e)
	local rows = rowsOf(e)
	local still = e.focus and indexOf(rows, e.focus)
	if still and (e.settled or not e.spec.initial) then return rows end
	local at = not e.settled and e.spec.initial and e.spec.initial(rows)
	if at then
		if rows[at] ~= e.focus then focus(e, rows[at]) end
		return rows
	end
	if still then return rows end
	local w = rows[1]
	if e.focus and e.index then w = rows[min(#rows, e.index)] or w end
	focus(e, w)
	return rows
end

function checkFocus()
	local e = G.entry
	if not e then return end
	local before = e.focus
	validate(e)
	if before == e.focus then paint(e) end
end

function move(e, dx, dy)
	local rows = validate(e)
	local cur = e.focus
	if not cur then return end
	local target
	if laidOut(rows) then
		target = nearest(rows, cur, dx, dy)
		if not target then
			-- At a scrolled list's edge: scroll on, and look again.
			local sf = scrollOf(cur)
			if sf and dy ~= 0 then
				local before = sf:GetVerticalScroll()
				W.ScrollTo(sf, before - dy * (sf.psView or sf:GetHeight()) * 0.8)
				if sf:GetVerticalScroll() ~= before then
					rows = rowsOf(e)
					target = nearest(rows, cur, dx, dy)
				end
			end
		end
	else
		local i = indexOf(rows, cur) or 1
		target = rows[i + ((dx > 0 or dy < 0) and 1 or -1)]
	end
	if target then
		e.index, e.settled = indexOf(rows, target), true
		focus(e, target)
	end
end

-- Left / right on a slider steps it; on a dropdown, its choices.
function adjust(w, delta)
	if w.Slider and w.psStep then
		if W.Enabled(w) then
			local fn = w.Slider:GetScript("OnMouseWheel")
			if fn then fn(w.Slider, delta) end
		end
		return true
	end
	if w.psChoices and w.Button then
		if not W.Enabled(w) then return true end
		local list = w.psChoices
		if type(list) == "function" then list = list() or {} end
		if #list == 0 then return true end
		local cur = w.psGet and w.psGet() or ns.Get(w.psPath)
		local at = 1
		for i, c in ipairs(list) do if c.value == cur then at = i end end
		local pick = list[max(1, min(#list, at + delta))]
		W.HideMenu()
		if pick and pick.value ~= cur then
			if w.psSet then w.psSet(pick.value) else ns.Set(w.psPath, pick.value) end
		end
		return true
	end
	return false
end

function activate(e, w)
	if not w then return end
	if e.spec.activate and e.spec.activate(w) then return end
	local kind = w:GetObjectType()
	if kind == "EditBox" then
		w:SetFocus()
	elseif w.Click then
		w:Click("LeftButton")
	end
end

function reset(e, w)
	if e.spec.reset and e.spec.reset(w) then return end
	if w and (w.psPath ~= nil or w.psBinding) and w.Click then w:Click("RightButton") end
end

function navKey(key, isRepeat)
	local e = G.entry
	if not e then return end
	validate(e)
	-- A button pressed: the focus is the player's now (LB / RB start a page afresh).
	if key ~= "PADLSHOULDER" and key ~= "PADRSHOULDER" then e.settled = true end
	local w = e.focus
	if e.spec.key and e.spec.key(key, w, isRepeat) then
		if G.entry == e then checkFocus() end
		return
	end
	if key == "PADDUP" then
		move(e, 0, 1)
	elseif key == "PADDDOWN" then
		move(e, 0, -1)
	elseif key == "PADDLEFT" or key == "PADDRIGHT" then
		local delta = key == "PADDLEFT" and -1 or 1
		if not (w and adjustable(w) and adjust(w, delta)) then move(e, delta, 0) end
	elseif isRepeat then
		return
	elseif key == "PAD1" then
		activate(e, w)
	elseif key == "PAD2" or key == "PADFORWARD" then
		if e.spec.back then e.spec.back() else e.frame:Hide() end
	elseif key == "PAD4" then
		reset(e, w)
	elseif key == "PAD3" then
		if e.spec.x then e.spec.x(w) end
	elseif key == "PADLSHOULDER" or key == "PADRSHOULDER" then
		local fn = key == "PADLSHOULDER" and e.spec.prevTab or e.spec.nextTab
		if fn then
			fn()
			e.focus, e.index, e.settled = nil, nil, false
		end
	end
	if G.entry == e then checkFocus() end
end

-- May the newest open window hold the gamepad now? Not one waiting to be
-- asked (it showed on its own).
function allowed(e)
	if fighting or combat() or e.waiting or not G.IsActive() then return false end
	return e.manual or ns.Get("gamepad.navigate")
end

-- A waiting window's hint bar: the focus binding's button, which gives it
-- the gamepad (G.TakeWaiting). Nothing when no button is bound to it.
waitingShown = waitingShown
function paintWaiting(e)
	if not ns.Get("gamepad.hints") then return false end
	local key = G.ShownKeys("POLESTAR_FOCUS", true)[1]
	if not (key and G.IsPadKey(key)) then return false end
	if ring then ring:Hide() end
	if badge then badge:Hide() end
	local b = theBar()
	setHints({ { keys = key, label = L["Use the gamepad here"] } }, max(HINT_MIN, e.frame:GetWidth() or 0))
	placeHints(e, b)
	b:Show()
	return true
end

-- The newest open window; nil when none is shown.
function newest()
	for i = #stack, 1, -1 do
		local e = stack[i]
		if e.frame:IsShown() then return e end
	end
	return nil
end

-- The newest open window holds the gamepad; none: the game has it all.
function refresh()
	local shown = newest()
	local top = shown
	if top and not allowed(top) then top = nil end
	local ours
	if padInput and padInput:IsShown() and next(padInput.eaten) then
		ours = {}
		for key in pairs(padInput.eaten) do ours[key] = true end
	end
	if G.entry and G.entry ~= top then
		hidePaint()
		G.Release(G.entry.frame)
		G.entry = nil
	end
	if top and G.entry ~= top then
		if G.Take(top.frame, navKey, ours) then
			G.entry = top
			validate(top)
			paint(top)
		end
	end
	if G.entry then
		waitingShown = nil
	elseif shown and shown.waiting and not fighting and not combat() and G.IsActive() and paintWaiting(shown) then
		waitingShown = shown
	elseif waitingShown then
		waitingShown = nil
		hidePaint()
	end
	updateDriver()
end
G.Refresh = refresh

-- `frame` opens (or comes forward): it holds the gamepad. manual: the
-- player asked for it (focus mode), even with window navigation off. A
-- window whose spec.unasked() says it showed on its own waits instead, unless
-- a Polestar window held the gamepad as it came: a route choice or the
-- welcome over the game would take A, B and the D-pad from the player in
-- the middle of play.
function G.Open(frame, spec, manual)
	local e, i = entryOf(frame)
	if e then tremove(stack, i) end
	local new = e == nil
	e = e or { frame = frame }
	e.spec = spec or specs[frame] or e.spec or {}
	e.manual = manual or e.manual
	if manual then
		e.waiting = nil
	elseif new then
		e.waiting = (G.entry == nil and e.spec.unasked and e.spec.unasked()) and true or nil
	end
	stack[#stack + 1] = e
	refresh()
	return e
end

-- The newest open window, waiting to be asked, takes the gamepad (the focus
-- binding). -> true when there was one.
function G.TakeWaiting()
	local e = newest()
	if not (e and e.waiting) or fighting or combat() or not G.IsActive() then return false end
	e.waiting, e.manual = nil, true
	refresh()
	return true
end

function G.Close(frame)
	local e, i = entryOf(frame)
	if not e then return end
	tremove(stack, i)
	e.focus, e.index, e.settled = nil, nil, false
	if G.entry == e then hidePaint() end
	refresh()
end

-- spec.unasked() -> true when the window showed on its own this time (see
-- G.Open).
function G.Register(frame, spec)
	if type(frame) ~= "table" or not frame.HookScript or specs[frame] then return end
	specs[frame] = spec or {}
	frame:HookScript("OnShow", function() G.Open(frame) end)
	frame:HookScript("OnHide", function() G.Close(frame) end)
	-- A frame is born shown: one still shown once its builder ran is open.
	if C_Timer and C_Timer.After then
		ns.After(0, function() if frame:IsShown() and not entryOf(frame) then G.Open(frame) end end)
	end
end

-- The focused widget of `frame` while it holds the gamepad (tests, preview).
function G.Focused(frame)
	local e = frame and entryOf(frame) or G.entry
	return e and e.focus or nil
end

-- Focus `w` in its open window `frame` (a section moving its selection).
function G.SetFocus(frame, w)
	local e = entryOf(frame)
	if e then focus(e, w) end
end

---------------------------------------------------------------------------
-- Events
---------------------------------------------------------------------------

-- A fight: the gamepad goes back to the game before the lockdown (the
-- override bindings and the frames cannot change in it); the windows stay
-- open for the mouse. The window lets go first, then a binding row's
-- capture ends (its callback runs), each step on its own: an error in one
-- cannot leave the window's frame or bindings in place for the fight. The
-- first error is raised once all have run. After the fight, the newest
-- open window takes the gamepad again.
ns.RegisterEvent("PLAYER_REGEN_DISABLED", function()
	fighting = true
	local failed
	local function step(fn, ...)
		local ok, err = pcall(fn, ...)
		if not ok and failed == nil then failed = err end
	end
	local e = G.entry
	G.entry, waitingShown = nil, nil
	if e then step(G.Release, e.frame) end
	step(hidePaint)
	step(G.StopCapture, nil)
	step(setChordInput, false, true)
	step(ns.Fire, "GAMEPAD_COMBAT")
	step(updateDriver)
	if failed ~= nil then error(failed, 0) end
end)
ns.RegisterEvent("PLAYER_REGEN_ENABLED", function()
	fighting = false
	refresh()
end)

-- A gamepad plugged in or out: windows switch between the gamepad and the mouse.
function gamepadChanged()
	refresh()
	ns.Fire("GAMEPAD_CHANGED", G.IsActive())
end
ns.RegisterEvent("GAME_PAD_CONNECTED", gamepadChanged)
ns.RegisterEvent("GAME_PAD_DISCONNECTED", gamepadChanged)
ns.RegisterEvent("GAME_PAD_ACTIVE_CHANGED", gamepadChanged)

ns.On("SETTING_CHANGED", function(path)
	if path == "gamepad.withMouse" or path == "gamepad" or path == "" then gamepadChanged() end
	if path == "gamepad.navigate" or path == "gamepad.hints" or path == "gamepad" or path == "" then refresh() end
	if (path == "gamepad.hints" or path == "gamepad.glyphs" or path == "gamepad") and G.entry then paint(G.entry) end
end)
ns.On("GAMEPAD_BINDINGS_CHANGED", function() if waitingShown then refresh() end end)

ns.OnLogin(updateDriver)
