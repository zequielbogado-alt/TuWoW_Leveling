local ADDON, ns = ...
setfenv(1, ns._uiGuideFrameEnv)
---------------------------------------------------------------------------
-- Transparent mode: chrome on hover
---------------------------------------------------------------------------

watcher = CreateFrame("Frame")
hovering = false

function chromeAlpha()
	if not transparent() then return 1 end
	return hovering and 1 or 0
end

function fadeChrome(to)
	for i = 1, #chrome do
		local c = chrome[i]
		if to == 1 then
			Anim.To(c, "alpha", c:GetAlpha(), 1, Anim.FAST, "out")
		else
			Anim.To(c, "alpha", c:GetAlpha(), 0, Anim.BASE, "out")
		end
	end
end

function watch()
	if F:IsMouseOver(4, -4, -4, 4) then return end
	hovering = false
	watcher:SetScript("OnUpdate", nil)
	if transparent() then fadeChrome(0) end
end

-- The cursor reached the window (or one of its parts).
function GF.HoverIn()
	if not F or hovering then return end
	hovering = true
	if transparent() then
		fadeChrome(1)
		watcher:SetScript("OnUpdate", ns.Safe(watch))
	end
end

function GF.IsHovering() return hovering end

-- The guide's progress track: the house wash on the night ground; over the
-- world (transparent) a stronger ink line, so the fill still reads as a
-- share of a whole.
function paintTrack(t)
	local r, g, b, a = Theme.Wash("progress")
	t:SetVertexColor(r, g, b, transparent() and 0.15 or a)
end

-- The ground's opacity is Theme.GroundAlpha (ui.bgOpacity), read by the
-- window skin itself; ui.bgOpacity changes land here to repaint it.
function GF.ApplyStyle()
	if not F then return end
	local clear = transparent()
	F.psBare = clear
	Theme.Repaint(F)
	local skin = Theme.SkinKey()
	band:SetShown(not clear and skin == "polestar")
	nav.TitleBar:SetShown(not clear and skin == "hearth")
	-- Blizzard's damage meter header bar under the tabs.
	Theme.KitStrip(strip, not clear)
	-- The quest tracker's header behind the focus (Forever, Blizzard).
	Theme.KitHeader(person, not clear)
	strip.Rule:SetShown(not clear)
	nav.Rule:SetShown(not clear)
	W.Painter(foot.Line.Track, paintTrack)
	for i = 1, #texts do Theme.SetOutline(texts[i], clear) end
	if not clear then
		watcher:SetScript("OnUpdate", nil)
		hovering = false
	end
	for i = 1, #chrome do
		Anim.Stop(chrome[i], "alpha")
		chrome[i]:SetAlpha(chromeAlpha())
	end
	GF.Layout()
end

---------------------------------------------------------------------------
-- Window state from settings
---------------------------------------------------------------------------

function targetAlpha()
	local a = ns.Get("ui.opacity") or 1
	if inCombat and ns.Get("ui.combat") == "fade" then a = a * COMBAT_ALPHA end
	return a
end

-- With ui.instance "hide", the window waits out a dungeon or raid until the
-- player opens it there. Like combat it never writes ui.shown, so leaving
-- brings back what the player had.
function hiddenInside()
	return inInstance and not openInside and ns.Get("ui.instance") == "hide"
end

function GF.ApplyVisibility()
	if not F then return end
	if ns.UI and ns.UI.Tracker and ns.UI.Tracker.IsActiveStyle and ns.UI.Tracker.IsActiveStyle() then
		F:Hide()
		return
	end
	local show = ns.Get("ui.shown") and not (inCombat and ns.Get("ui.combat") == "hide") and not hiddenInside()
	F:SetShown(show and true or false)
end

-- The toggle (/polestar, the key binding, the minimap button) inside, with
-- ui.instance "hide" and the window on, now and on the way in: opens or
-- closes it for this visit, ui.shown untouched. -> true when it did. A
-- window that was off on the way in toggles ui.shown as anywhere else, so
-- closing it there keeps it off after leaving.
function GF.ToggleInside()
	if not (inInstance and shownOnEntry and ns.Get("ui.instance") == "hide" and ns.Get("ui.shown")) then return false end
	openInside = not openInside
	GF.ApplyVisibility()
	return true
end

function GF.ApplyAlpha(animate)
	if not F then return end
	if animate then
		Anim.To(F, "alpha", F:GetAlpha(), targetAlpha(), Anim.SLOW, "out")
	else
		Anim.Stop(F, "alpha")
		F:SetAlpha(targetAlpha())
	end
end

-- The corner the window is pinned by and that corner's y: the bottom-left
-- with ui.growUp (a longer step pushes the top edge up), else the top-left
-- (it pushes the bottom edge down). ui.pos holds that corner.
function pinCorner()
	if ns.Get("ui.growUp") then return "BOTTOMLEFT", F:GetBottom() end
	return "TOPLEFT", F:GetTop()
end

function GF.ApplyPosition()
	if not F then return end
	local pos = ns.Get("ui.pos")
	F:ClearAllPoints()
	if type(pos) == "table" and type(pos[1]) == "number" and type(pos[2]) == "number" then
		F:SetPoint(ns.Get("ui.growUp") and "BOTTOMLEFT" or "TOPLEFT", UIParent, "BOTTOMLEFT", pos[1], pos[2])
	elseif ns.Get("ui.growUp") then
		F:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -64, 240)
	else
		F:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -64, -240)
	end
end

function GF.SavePosition()
	if not F then return end
	local l = F:GetLeft()
	local _, y = pinCorner()
	if l and y then ns.Set("ui.pos", { floor(l + 0.5), floor(y + 0.5) }) end
end

function GF.ApplyLock()
	if not F then return end
	grip:SetShown(not ns.Get("ui.locked"))
end

function GF.ApplyWidth()
	if not F then return end
	local w = ns.Get("ui.width") or 340
	F:SetWidth(min(UI.MAX_WIDTH, max(UI.MIN_WIDTH, w)))
	GF.Layout()
end

function GF.ApplyCompact()
	if not F then return end
	GF.Render()
	GF.Layout()
end

-- Scale about the pinned corner, so the window stays where the user put
-- it, then repaint so 1px lines land on the new pixel grid.
function GF.ApplyScale()
	local new = ns.Get("ui.scale") or 1
	local old = F:GetScale()
	if old == new then return end
	local l = F:GetLeft()
	local corner, y = pinCorner()
	F:SetScale(new)
	if l and y and type(ns.Get("ui.pos")) == "table" then
		F:ClearAllPoints()
		F:SetPoint(corner, UIParent, "BOTTOMLEFT", l * old / new, y * old / new)
		ns.Set("ui.pos", { floor(l * old / new + 0.5), floor(y * old / new + 0.5) })
	end
	Theme.Refresh()
end

APPLY = {
	-- Shown inside (a guide picked, /polestar show, the switch): open for the visit.
	["ui.shown"] = function()
		if inInstance and ns.Get("ui.shown") then openInside = true end
		GF.ApplyVisibility()
	end,
	["ui.instance"] = function() GF.ApplyVisibility() end,
	["ui.scale"] = function() GF.ApplyScale() end,
	["ui.opacity"] = function() GF.ApplyAlpha(false) end,
	["ui.bgOpacity"] = function() GF.ApplyStyle() end,
	["ui.style"] = function() GF.ApplyStyle() end,
	["ui.locked"] = function() GF.ApplyLock() end,
	["ui.compact"] = function() GF.ApplyCompact() end,
	["ui.width"] = function() GF.ApplyWidth() end,
	["ui.pos"] = function() GF.ApplyPosition() end,
	-- Re-pin by the other corner where the window stands now, so it does not jump.
	["ui.growUp"] = function() GF.SavePosition(); GF.Layout() end,
	["ui.barsBottom"] = function() GF.Layout() end,
	["ui.upcoming"] = function() GF.Render() end,
	["ui.upcomingOpen"] = function() GF.Render() end,
	["ui.showNotes"] = function() GF.Render() end,
	["ui.notesOpen"] = function() tipOpen = ns.Get("ui.notesOpen") and true or false; GF.Render() end,
	["ui.combat"] = function() GF.ApplyVisibility(); GF.ApplyAlpha(false) end,
	["ui.font"] = function() GF.Layout() end,
	["nav.nearbyButton"] = function()
		nav.Nearby:SetShown(ns.Get("nav.nearbyButton") ~= false)
		anchorSkip()
		GF.Layout()
	end,
}

---------------------------------------------------------------------------
-- Skins (Polestar.Theme, "Skins"): Halo and Blizzard take the handoff's
-- sizes (DIRECTION_B_HALO.md §3) and their own parts: Halo's gold rule under
-- the navigator, Blizzard's title bar, framed tabs and the game's status bar.
---------------------------------------------------------------------------

skinShown = skinShown

-- Hearth's tab: framed, gold on the active one (DIRECTION_A_BLIZZARD.md §3);
-- the game's looks: their kit's tab art.
function GF.PaintTab(b)
	local kit = Theme.KitTab(b, b.psActive, nil, true)
	local bliz = Theme.SkinKey() == "hearth"
	local f = rawget(b, "psFrameTex")
	if bliz and not f then
		f = b:CreateTexture(nil, "BACKGROUND", nil, -7)
		f:SetTexture(Theme.Media("white"))
		b.psFrameTex = f
	end
	if f then
		f:SetShown(bliz)
		f:ClearAllPoints()
		f:SetPoint("BOTTOMLEFT", b, "BOTTOMLEFT", 0, 0)
		f:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", 0, 0)
		f:SetHeight(b.psActive and 24 or 21)
		local top = b.psActive and { 0.231, 0.176, 0.078 } or { 0.122, 0.094, 0.047 }
		local bottom = b.psActive and { 0.09, 0.067, 0.039 } or { 0.051, 0.039, 0.02 }
		if f.SetGradient and CreateColor then
			f:SetGradient("VERTICAL", CreateColor(bottom[1], bottom[2], bottom[3], 1), CreateColor(top[1], top[2], top[3], 1))
		else
			f:SetVertexColor(top[1], top[2], top[3], 1)
		end
	end
	if bliz or kit then
		b.Selected:Hide()
		b.Bar:Hide()
		W.Color(b.Label, b.psActive and "title" or "tabRest")
	end
end

-- The progress bar: the house and Halo's slim line with its percent right of
-- it, or Blizzard's game status bar (Interface\TargetingFrame\UI-StatusBar),
-- 14 high, the percent centred in it.
STATUS_BAR = "Interface\\TargetingFrame\\UI-StatusBar"
function footBar()
	local b = rawget(foot, "Status")
	if b then return b end
	b = CreateFrame("StatusBar", nil, foot)
	b:SetStatusBarTexture(STATUS_BAR)
	b:SetMinMaxValues(0, 1)
	b.Bg = b:CreateTexture(nil, "BACKGROUND")
	b.Bg:SetTexture(Theme.Media("white"))
	b.Bg:SetAllPoints(b)
	b.Bg:SetVertexColor(0, 0, 0, 0.75)
	Theme.Border(b, 0.42, 0.329, 0.125, 1)
	b.Pct = b:CreateFontString(nil, "OVERLAY")
	Theme.Font(b.Pct, "small")
	b.Pct:SetPoint("CENTER", b, "CENTER", 0, 0)
	b.Pct:SetTextColor(1, 1, 1, 1)
	foot.Status = b
	return b
end

-- Fill Blizzard's bar (GF.Layout sets the house line; this follows it).
function GF.PaintStatus(frac, pctText)
	local b = rawget(foot, "Status")
	if not b or not b:IsShown() then return end
	b:SetValue(frac or 0)
	local t = b:GetStatusBarTexture()
	if Theme.Kit() then
		-- The game's looks colour their own fill (Theme.KitStatus).
	elseif t and t.SetGradient and CreateColor then
		t:SetGradient("VERTICAL", CreateColor(0.478, 0.345, 0, 1), CreateColor(0.91, 0.722, 0, 1))
	elseif t then
		t:SetVertexColor(0.91, 0.722, 0, 1)
	end
	b.Pct:SetText(pctText or "")
end

function GF.ApplySkin()
	if not F then return end
	readMetrics()
	local skin = Theme.SkinKey()
	skinShown = skin
	F.psGuide = true
	Theme.Repaint(F)
	strip:SetHeight(TAB_H)
	nav:SetHeight(NAV_H)
	foot:SetHeight(PROG_H)
	-- The navigator: ‹ › and the icon buttons at the skin's sizes.
	local nb, ni = Theme.Metric("guideNavBtn", 24), Theme.Metric("guideNavIcon", 14)
	for _, b in ipairs({ nav.Prev, nav.Next }) do
		b:SetSize(nb, nb)
		b.Icon:SetSize(ni, ni)
		W.SetFramed(b, "red")
	end
	-- Room between ‹ › and "28 / 36": Halo's 2, Blizzard's framed squares 4.
	local gap = Theme.Metric("guideNavGap", 0)
	nav.Steps.Count:SetPoint("LEFT", nav.Prev, "RIGHT", gap, 0)
	nav.Next:SetPoint("LEFT", nav.Steps.Count, "RIGHT", gap, 0)
	local iw, ih, ig = Theme.Metric("guideIconBtnW", 24), Theme.Metric("guideIconBtnH", 24), Theme.Metric("guideIcon", 14)
	-- The icon buttons right of Skip: the bug, the menu and, where it is built,
	-- the Nearby services button.
	for _, key in ipairs({ "Menu", "Report", "Nearby" }) do
		local b = rawget(nav, key)
		if b then
			b:SetSize(iw, ih)
			b.Icon:SetSize(ig, ig)
			W.SetFramed(b, "icon")
		end
	end
	nav.Skip:SetHeight(nb)
	nav.Steps:SetHeight(nb)
	nav.Steps:SetPoint("LEFT", nav, "LEFT", PAD - 6, 0)
	-- Rules: Halo's gold one under the navigator; Hearth's title bar line; the
	-- game's looks their separator.
	W.Painter(nav.Rule, function(t)
		local k = Theme.SkinKey()
		if k == "halo" then
			t:SetVertexColor(Theme.Color("accentLine"))
		elseif k == "hearth" then
			t:SetVertexColor(Theme.Color("titleLine"))
		elseif Theme.Kit() then
			t:SetVertexColor(Theme.Color("separator"))
		else
			t:SetVertexColor(Theme.Wash("divider"))
		end
		t:SetHeight(Theme.Pixel(nav))
	end)
	-- Hearth: the person's name over a gold separator.
	person.Rule:SetShown(skin == "hearth")
	-- The focus parts at the skin's paddings.
	person.Icon:SetPoint("TOPLEFT", person, "TOPLEFT", PAD - 1, -11)
	person.Name:SetPoint("TOPLEFT", person, "TOPLEFT", TEXT_X, -10)
	card.Tip.Text:SetPoint("TOPLEFT", card.Tip, "TOPLEFT", TEXT_X, -6)
	card.Tip.Toggle:SetPoint("TOPLEFT", card.Tip, "TOPLEFT", PAD - 2, -3)
	for _, part in ipairs({ after, upnext.Toggle, GF.xp }) do
		part.Rule:SetPoint("TOPLEFT", part, "TOPLEFT", PAD, 0)
		part.Rule:SetPoint("TOPRIGHT", part, "TOPRIGHT", -PAD, 0)
	end
	after.Text:SetPoint("LEFT", after, "LEFT", PAD, 0)
	after.Count:SetPoint("RIGHT", after, "RIGHT", -PAD, 0)
	upnext.Toggle:SetHeight(UP_TOGGLE)
	upnext.Toggle.Label:SetPoint("LEFT", upnext.Toggle, "LEFT", PAD, 0)
	upnext.Toggle.Icon:SetPoint("RIGHT", upnext.Toggle, "RIGHT", -PAD, 0)
	GF.xp.Icon:SetPoint("LEFT", GF.xp, "LEFT", PAD, -1)
	GF.party.Icon:SetPoint("LEFT", GF.party, "LEFT", PAD, -1)
	banner.Icon:SetPoint("TOPLEFT", banner, "TOPLEFT", PAD, -10)
	banner.Text:SetPoint("TOPLEFT", banner, "TOPLEFT", PAD + 21, -9)
	for _, r in ipairs(rows) do
		r.Icon:SetPoint("CENTER", r, "TOPLEFT", PAD + ICON / 2, -12 - ROW_PAD)
		r.Text:SetPoint("TOPLEFT", r, "TOPLEFT", TEXT_X, -4 - ROW_PAD)
		r.Check:SetSize(CHECK, CHECK)
		placeCheck(r)
		Theme.Repaint(r.Check)
	end
	-- The progress bar: the game's status bar in Hearth and the game's looks.
	local bliz = Theme.GameSkin()
	foot.Line:SetHeight(3)
	foot.Line:SetPoint("LEFT", foot, "LEFT", PAD, 0)
	foot.Pct:SetPoint("RIGHT", foot, "RIGHT", -PAD, 0)
	foot.Line:SetShown(not bliz)
	foot.Pct:SetShown(not bliz)
	if bliz then
		local b = footBar()
		b:ClearAllPoints()
		local inset = Theme.Kit() and 10 or 0
		b:SetPoint("LEFT", foot, "LEFT", PAD + inset, 0)
		b:SetPoint("RIGHT", foot, "RIGHT", -PAD - inset, 0)
		b:SetHeight(Theme.Kit() and 12 or 14)
		b:Show()
		if Theme.KitStatus(b) then
			b.psKitDrawn = true
		elseif b.psKitDrawn then
			-- Back from a game look: Hearth's bar as footBar made it.
			b:SetStatusBarTexture(STATUS_BAR)
			b:GetStatusBarTexture():SetTexCoord(0, 1, 0, 1)
			b.Bg:SetTexture(Theme.Media("white"))
			b.Bg:SetTexCoord(0, 1, 0, 1)
			b.Bg:SetVertexColor(0, 0, 0, 0.75)
			Theme.Border(b, 0.42, 0.329, 0.125, 1)
			b.psKitDrawn = nil
		end
	elseif rawget(foot, "Status") then
		foot.Status:Hide()
	end
	-- The tabs, painted again in the skin.
	for _, b in ipairs(tabButtons) do
		b:SetHeight(TAB_H)
		GF.PaintTab(b)
	end
end

-- A skin chosen while the window shows: its sizes, then a fresh layout.
Theme.OnChanged(function()
	if F and skinShown and skinShown ~= Theme.SkinKey() then
		GF.ApplySkin()
		GF.ApplyStyle()
	end
end)

function applyAll()
	GF.ApplySkin()
	F:SetScale(ns.Get("ui.scale") or 1)
	GF.ApplyPosition()
	GF.ApplyLock()
	GF.ApplyWidth()
	GF.ApplyAlpha(false)
	GF.ApplyStyle()
	GF.ApplyCompact()
	GF.ApplyVisibility()
end

---------------------------------------------------------------------------
-- Move and resize
---------------------------------------------------------------------------

savePosition = GF.SavePosition

function dragStart()
	if ns.Get("ui.locked") then return end
	F:StartMoving()
end

function dragStop()
	F:StopMovingOrSizing()
	savePosition()
	-- The class quest card on the window flips below it when there is no room above.
	if UI.ClassToast and UI.ClassToast.Place then UI.ClassToast.Place(false) end
end

function resizeUpdate(self)
	local x = GetCursorPosition() / F:GetEffectiveScale()
	local w = min(UI.MAX_WIDTH, max(UI.MIN_WIDTH, floor(self.psStartW + (x - self.psStartX) + 0.5)))
	if w ~= floor(F:GetWidth() + 0.5) then
		F:SetWidth(w)
		GF.Layout()
	end
end

function resizeStart(self)
	if ns.Get("ui.locked") then return end
	-- Grow from the left edge: pin the window by its left corner first.
	local l = F:GetLeft()
	local corner, y = pinCorner()
	if l and y then
		F:ClearAllPoints()
		F:SetPoint(corner, UIParent, "BOTTOMLEFT", l, y)
	end
	self.psStartX = GetCursorPosition() / F:GetEffectiveScale()
	self.psStartW = F:GetWidth()
	self:SetScript("OnUpdate", ns.Safe(resizeUpdate))
end

function resizeStop(self)
	if not self:GetScript("OnUpdate") then return end
	self:SetScript("OnUpdate", nil)
	ns.Set("ui.width", floor(F:GetWidth() + 0.5))
	savePosition()
end

---------------------------------------------------------------------------
-- Menu
---------------------------------------------------------------------------

function openMenu(button)
	if W.MenuShown(button) then return W.HideMenu() end
	local E = Engine()
	local hasGuide = E and E.GetGuide and E.GetGuide()
	local clear = transparent()
	local items = {
		{ text = L["Choose guide"], icon = "search", onClick = function() UI.ShowPicker() end },
		{ text = L["Open in new tab"], icon = "plus", disabled = not (E and E.OpenTab), onClick = function() UI.ShowPicker({ newTab = true }) end },
		{ text = L["Skip this step"], icon = "skip", disabled = not hasGuide, onClick = function() GF.SkipStep() end },
		{ text = L["Report a problem"], icon = "bug", onClick = function() UI.ShowReport() end },
		{ separator = true },
	}
	-- Pin the shown step's quests in the log as along the way, or unpin them (#644).
	local pins = GF.PinItems(view)
	for _, it in ipairs(pins) do items[#items + 1] = it end
	if #pins > 0 then items[#items + 1] = { separator = true } end
	for _, it in ipairs({
		{ text = L["Compact mode"], icon = "compact", checked = compact(), onClick = function() ns.Set("ui.compact", not compact()) end },
		{ text = L["Transparent"], icon = "layers", checked = clear, onClick = function() ns.Set("ui.style", clear and "standard" or "transparent") end },
		{ text = L["Lock window"], icon = "lock", checked = ns.Get("ui.locked") and true or false, onClick = function() ns.Set("ui.locked", not ns.Get("ui.locked")) end },
		{ separator = true },
		{ text = L["Reset guide progress"], icon = "reset", confirm = true, disabled = not hasGuide, tip = L["Clears your manual check-offs and skipped steps for this guide."],
			onClick = function() if E and E.ResetProgress then E.ResetProgress() end end },
		{ text = L["Options"], icon = "gear", onClick = function() UI.ShowOptions() end },
		{ text = L["Hide window"], icon = "close", onClick = function()
			ns.Set("ui.shown", false)
			ns.Print(L["Guide window hidden. Type /polestar to bring it back."])
		end },
	}) do items[#items + 1] = it end
	-- The Recorder's window, while the Recorder addon is loaded.
	if type(PolestarRecorder_Command) == "function" then
		table.insert(items, 5, { text = L["Recorder window"], icon = "record", onClick = function() PolestarRecorder_Command("ui") end })
	end
	W.ShowMenu(button, items)
end

-- Menu entries pinning the quests of step view `v` that are in the log with
-- objectives open as along the way, or unpinning those pinned (#644).
function GF.PinItems(v)
	local E, C, out, seen = Engine(), ns.Compat, {}, {}
	if not (v and v.goals and E and E.PinQuest) then return out end
	for _, gv in ipairs(v.goals) do
		local q = gv.quest
		if q and not seen[q] and C.IsOnQuest(q) and (E.IsPinned(q) or not C.IsQuestReadyForTurnIn(q)) then
			seen[q] = true
			local title = C.GetQuestTitle(q) or (L["Quest"] .. " " .. q)
			local pinned = E.IsPinned(q)
			out[#out + 1] = { text = string.format(pinned and L["Unpin %s"] or L["Pin %s as along the way"], title), icon = "pin",
				checked = pinned, onClick = function() E.PinQuest(q, not pinned) end }
		end
	end
	return out
end

-- The quest log's menu on a quest (right-click its title): pin it as along
-- the way, or unpin it (#644). Not with the gamepad interface (ns.GamepadUI),
-- as Nav/Nearby.lua's map menus.
ns.OnLogin(function()
	if ns.GamepadUI() or not (Menu and Menu.ModifyMenu) then return end
	Menu.ModifyMenu("MENU_QUEST_MAP_LOG_TITLE", function(owner, root)
		local q = owner and owner.questID
		local E = Engine()
		if type(q) ~= "number" or not (E and E.PinQuest) then return end
		local pinned = E.IsPinned(q)
		root:CreateDivider()
		root:CreateButton(pinned and L["Unpin from along the way"] or L["Pin as along the way"], function() E.PinQuest(q, not pinned) end)
	end)
end)

-- Nearby services (Nav/Nearby.lua): the nearest vendor, repair, inn, flight
-- master or trainer, as the arrow's target. Looked up after combat only.
openNearby = openNearby

-- The weapon master's page of the menu: the weapons to learn, each to the
-- nearest master who teaches it; a weapon already known, or not yet at this
-- level, says so and is off. Back returns to the services.
function openWeapons(button, entry)
	local Nearby = ns.Nav.nearby
	local fight = InCombatLockdown and InCombatLockdown()
	local items = {
		{ text = L["Back"], icon = "chevron-left", onClick = function() openNearby(button) end },
		{ separator = true },
	}
	for _, w in ipairs(entry.weapons) do
		local text, off = w.label, fight
		if w.known then
			text, off = string.format(L["%s (known)"], w.label), true
		elseif w.level then
			text, off = string.format(L["%s (from level %d)"], w.label, w.level), true
		end
		local line = w.line
		items[#items + 1] = { text = text, disabled = off, onClick = function() Nearby.Go("weapon", line) end }
	end
	W.ShowMenu(button, items)
end

function openNearby(button)
	if W.MenuShown(button) then return W.HideMenu() end
	local Nearby = ns.Nav and ns.Nav.nearby
	if not (Nearby and Nearby.MenuItems) then return end
	local fight = InCombatLockdown and InCombatLockdown()
	local items = {}
	if Nearby.Trip and Nearby.Trip() then
		items[1] = { text = L["Back to the guide"], icon = "chevron-left", onClick = function() Nearby.EndTrip() end }
		items[2] = { separator = true }
	end
	for _, e in ipairs(Nearby.MenuItems()) do
		if e.separator then
			items[#items + 1] = e
		elseif e.weapons then
			-- A page of its own: which weapon to learn.
			items[#items + 1] = { text = e.label .. "  \226\128\186", icon = e.icon, disabled = fight,
				onClick = function() openWeapons(button, e) end }
		else
			local key, line = e.key, e.line
			items[#items + 1] = { text = e.label, icon = e.icon, disabled = fight,
				onClick = function() Nearby.Go(key, line) end }
		end
	end
	W.ShowMenu(button, items)
end

