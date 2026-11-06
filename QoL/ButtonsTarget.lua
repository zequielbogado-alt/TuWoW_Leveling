local ADDON, ns = ...
ns._qolButtonsEnv = ns.ModuleEnv(function(e) e.ADDON = ADDON; e.ns = ns end)
setfenv(1, ns._qolButtonsEnv)
-- Action buttons: the quest item button, the Hearthstone button and the
-- target button and the rare button. Each is a named secure button (bindable as
-- `CLICK <name>:LeftButton`); what it does is set through attributes, and
-- every attribute, Show/Hide, scale or position change goes through
-- QoL.Secure, so in combat it waits for PLAYER_REGEN_ENABLED while the button
-- keeps doing what it did. Icon, count, cooldown and range tint are plain
-- textures and update at any time.
--
--   Quest item: the active tab's current `use` goal item; else the quest log
--     item of a quest in the current step; else a usable quest item in the
--     bags that one of the step's open quests handed over when taken
--     (Polestar.QuestDB; none without it), never one left from another quest.
--   Hearthstone: while the current step has an open `hearth` goal.
--   Target: /targetexact for the current step's kill targets and the mobs
--     that drop its collect items: the ones the guide sends you to for that
--     goal (`fromNpcs`), then the item's own droppers (Polestar.QuestDB when
--     loaded), passing over corpses; every click moves the next name to the
--     front.
--   Rare: /targetexact for the rares in range (Polestar.Rares.Nearby): the
--     button comes up when the addon spots one and goes when it dies or is
--     out of sight; every click moves the next name to the front.
--   Bag: while the bags are nearly full (QoL/Space.lua), the cheapest junk
--     in them with the free slot count; a press arms it, a second press
--     within a few seconds deletes it. It has no secure action: the delete
--     runs in its PostClick, on the press itself.
--   Step key: no button on screen, only a binding: the first open goal it can
--     act on, in guide order (a use goal's item, a hearth goal's Hearthstone,
--     a kill or collect's mobs, an NPC goal's NPC by name), else the quest
--     item. While the flight map is open on the live step, it takes the
--     marked flight instead (QoL/Flight.lua, Flight.Take). Independent of
--     the buttons' settings.
--   Mark target (off by default): the target button and the step key clear
--     the target first (out of combat) and end their macro with /tm, an icon
--     on a live hostile target (skull unless set) or an NPC (star), or a new
--     one each press (Buttons.MarkLine).
--
-- The buttons hang off one holder: the bag and hearth above the item, target and rare
-- below. A left-drag on any of them moves the set (out of combat; with
-- ui.lockHud on, only a Shift-drag); the position is per character, so the
-- Hearthstone button, shown only for hearth goals, appears in its slot of the
-- moved set.

-- local ADDON, ns = ...
L = ns.L
QoL = ns.QoL
Client = QoL.Client

type, pairs, ipairs, tostring = type, pairs, ipairs, tostring
concat, wipe = table.concat, wipe or function(t) for k in pairs(t) do t[k] = nil end return t end

SIZE = 36
RANGE_INTERVAL = 0.2
MAX_NAMES = 5
MACRO_LIMIT = 255

Buttons = {}
QoL.Buttons = Buttons

-- The holder's spot (it sits where the quest item button does) and each
-- button's slot above (+) or below (-) it, GAP button units apart.
DEFAULT_POS = { "CENTER", "CENTER", 260, -140 }
GAP = 44
SLOT = { PolestarBagButton = 2, PolestarHearthButton = 1, PolestarQuestItemButton = 0, PolestarTargetButton = -1, PolestarRareButton = -2 }

function Theme() return ns.Theme end

function color(region, name, alpha)
	local T = Theme()
	local r, g, b, a = 1, 1, 1, 1
	if T and T.Color then r, g, b, a = T.Color(name) end
	a = (a or 1) * (alpha or 1)
	if region.SetVertexColor and region:GetObjectType() == "Texture" then
		region:SetVertexColor(r, g, b, a)
	elseif region.SetTextColor then
		region:SetTextColor(r, g, b, a)
	end
end

function media(name)
	local T = Theme()
	return T and T.Media and T.Media(name) or ("Interface\\AddOns\\" .. ADDON .. "\\Media\\UI\\" .. name)
end

function font(fs, role)
	local T = Theme()
	if T and T.Font then T.Font(fs, role) end
end

function paintBorder(b, hover)
	local T = Theme()
	if not (T and T.Border) then return end
	if hover then
		local r, g, bl = T.Accent()
		T.Border(b, r, g, bl, 1)
	else
		local r, g, bl, a = T.Color("border")
		T.Border(b, r, g, bl, (a or 0.08) * 2.5)
	end
end

---------------------------------------------------------------------------
-- Position and scale (secure)
---------------------------------------------------------------------------

holder, set = holder, set

function savedPos()
	local p = QoL.State().buttonPos
	return type(p) == "table" and p or DEFAULT_POS
end

-- Holder position and scale, and the buttons in their slots. The holder takes
-- the button scale too, so the saved offsets and the slot spacing scale with
-- the buttons.
function place()
	QoL.Secure("place", function()
		local p, s = savedPos(), ns.Get("qol.buttonScale") or 1
		holder:SetScale(s)
		holder:ClearAllPoints()
		holder:SetPoint(p[1], UIParent, p[2], p[3], p[4])
		for i = 1, #set do
			local b = set[i]
			b:SetScale(s)
			b:ClearAllPoints()
			b:SetPoint("CENTER", holder, "CENTER", 0, SLOT[b:GetName()] * GAP)
		end
	end)
end

moving = false
function stopMoving()
	if not moving then return end
	moving = false
	holder:StopMovingOrSizing()
	local point, _, relPoint, x, y = holder:GetPoint(1)
	if point then QoL.State().buttonPos = { point, relPoint, x, y } end
end
-- Fires before lockdown begins: a drag still going stops while the set may move.
ns.RegisterEvent("PLAYER_REGEN_DISABLED", stopMoving)

-- Mouse clicks and drags. The secure click handler (SecureActionButton_OnClick)
-- acts on the press when the button's useOnKeyDown attribute (nil: the
-- ActionButtonUseKeyDown CVar) says so, else on the release; key bindings
-- (CLICK <name>:LeftButton) go through the same handler. Hovering a button
-- out of combat sets it to false before any press, so a mouse click acts on
-- its release whatever order the client runs OnMouseDown and the down-click
-- in, and a drag can start before anything fired. A drag sets it to true, so
-- the drag's release does nothing either. Leaving puts it back to nil (the
-- CVar again, for key bindings); a drag's end does so a frame later, after
-- the release's click, or back to false while the cursor is still on it.
function useOnKeyDown(b, v)
	QoL.Secure("press:" .. b:GetName(), function() b:SetAttribute("useOnKeyDown", v) end)
end

function hoverStart(b)
	if not QoL.InLockdown() then useOnKeyDown(b, false) end
end

function hoverEnd(b)
	if not b.dragging then useOnKeyDown(b, nil) end
end

function onDragStart(b)
	if QoL.InLockdown() then return end
	b.dragging = true
	useOnKeyDown(b, true)
	-- Locked: still a drag, so its release uses nothing, but the set stays.
	if ns.DragLocked() then return end
	moving = true
	holder:StartMoving()
end

function onDragStop(b)
	stopMoving()
	ns.After(0, function()
		b.dragging = nil
		local over = b:IsMouseOver() and not QoL.InLockdown()
		if over then useOnKeyDown(b, false) else useOnKeyDown(b, nil) end
	end)
end

---------------------------------------------------------------------------
-- The shared look: night panel, hairline (accent on hover), inset icon
---------------------------------------------------------------------------

function bindingText(b)
	if not GetBindingKey then return nil end
	local key = GetBindingKey("CLICK " .. b:GetName() .. ":LeftButton")
	if not key then return nil end
	if GetBindingText then return GetBindingText(key, true) end
	return key
end

function refreshHotkey(b)
	local t = bindingText(b)
	b.Hotkey:SetText(t or "")
end

-- The label's anchor pair for each qol.buttonTextSide: label point, button point, x, y.
LABEL_SIDE = {
	right = { "LEFT", "RIGHT", 8, 0 },
	left = { "RIGHT", "LEFT", -8, 0 },
	above = { "BOTTOM", "TOP", 0, 4 },
	below = { "TOP", "BOTTOM", 0, -4 },
}

-- Above sits over the shown buttons stacked on top of b (the quest item
-- button over the target button, the Hearthstone over that), not in the 8 px
-- gap between them, where it would run into the button above.
function placeLabel(b)
	local a = LABEL_SIDE[ns.Get("qol.buttonTextSide")] or LABEL_SIDE.right
	-- The rare button sits under the target button, whose name has the space
	-- above: a rare's name goes below instead.
	if a == LABEL_SIDE.above and b:GetName() == "PolestarRareButton" then a = LABEL_SIDE.below end
	local to = b
	if a == LABEL_SIDE.above and set then
		local slot, moved = SLOT[b:GetName()], true
		while moved do
			moved = false
			for i = 1, #set do
				local o = set[i]
				if SLOT[o:GetName()] == slot + 1 and o:IsShown() then
					to, slot, moved = o, slot + 1, true
					break
				end
			end
		end
	end
	b.Label:ClearAllPoints()
	b.Label:SetPoint(a[1], to, a[2], a[3], a[4])
end

function newButton(name, onEnter)
	local b = CreateFrame("Button", name, UIParent, "SecureActionButtonTemplate")
	b:SetSize(SIZE, SIZE)
	b:SetFrameStrata("MEDIUM")
	b:RegisterForClicks("AnyUp", "AnyDown")
	b:RegisterForDrag("LeftButton")
	-- A /reload in combat creates the buttons under lockdown.
	QoL.Secure("init:" .. name, function() if not b.itemID and not b.applied then b:Hide() end end)

	local bg = b:CreateTexture(nil, "BACKGROUND")
	bg:SetTexture(media("white"))
	bg:SetAllPoints(b)
	color(bg, "panel")
	b.Bg = bg

	local icon = b:CreateTexture(nil, "ARTWORK")
	icon:SetPoint("TOPLEFT", b, "TOPLEFT", 2, -2)
	icon:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", -2, 2)
	icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
	b.Icon = icon

	local hl = b:CreateTexture(nil, "HIGHLIGHT")
	hl:SetTexture(media("white"))
	hl:SetAllPoints(icon)
	local T = Theme()
	if T and T.Wash then hl:SetVertexColor(T.Wash("hover")) else hl:SetVertexColor(1, 1, 1, 0.07) end

	local cd = CreateFrame("Cooldown", nil, b, "CooldownFrameTemplate")
	cd:SetAllPoints(icon)
	b.Cooldown = cd

	local count = b:CreateFontString(nil, "OVERLAY")
	font(count, "number")
	color(count, "text")
	count:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", -3, 3)
	b.Count = count

	local hotkey = b:CreateFontString(nil, "OVERLAY")
	font(hotkey, "small")
	color(hotkey, "textDim")
	hotkey:SetPoint("TOPLEFT", b, "TOPLEFT", 3, -3)
	b.Hotkey = hotkey

	local label = b:CreateFontString(nil, "OVERLAY")
	font(label, "small")
	color(label, "textDim")
	b.Label = label
	placeLabel(b)

	paintBorder(b, false)
	local T = Theme()
	if T and T.OnChanged then
		T.OnChanged(function()
			color(bg, "panel")
			color(count, "text")
			color(hotkey, "textDim")
			color(label, "textDim")
			paintBorder(b, false)
		end)
	end

	b:SetScript("OnEnter", function(self)
		paintBorder(self, true)
		hoverStart(self)
		if GameTooltip and onEnter then
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
			onEnter(self, GameTooltip)
			GameTooltip:Show()
		end
	end)
	b:SetScript("OnLeave", function(self)
		paintBorder(self, false)
		hoverEnd(self)
		if GameTooltip and GameTooltip:GetOwner() == self then GameTooltip:Hide() end
	end)
	b:SetScript("OnDragStart", onDragStart)
	b:SetScript("OnDragStop", onDragStop)
	-- A step that ends mid-drag hides the button the drag started on.
	b:SetScript("OnHide", function(self) if self.dragging then onDragStop(self) end end)

	refreshHotkey(b)
	return b
end

---------------------------------------------------------------------------
-- Item buttons (quest item, Hearthstone)
---------------------------------------------------------------------------

function paintItem(b)
	local id = b.itemID
	if not id then return end
	b.Icon:SetTexture(Client.ItemIcon(id) or media("icon-use"))
	local n = Client.ItemCount(id)
	b.Count:SetText(n > 1 and tostring(n) or "")
	local start, duration = Client.ItemCooldown(id)
	if duration and duration > 0 then b.Cooldown:SetCooldown(start, duration) else b.Cooldown:Clear() end
	b.Icon:SetDesaturated(n == 0 or not Client.ItemUsable(id))
end

-- Range tint: red out of range, white otherwise. Runs only while shown.
function rangeUpdate(b, elapsed)
	b.rangeElapsed = (b.rangeElapsed or 0) + elapsed
	if b.rangeElapsed < RANGE_INTERVAL then return end
	b.rangeElapsed = 0
	local id = b.itemID
	if not id then return end
	local inRange = Client.ItemInRange(id)
	if inRange == false then
		if b.tint ~= "far" then
			b.tint = "far"
			color(b.Icon, "danger")
		end
	elseif b.tint ~= "near" then
		b.tint = "near"
		b.Icon:SetVertexColor(1, 1, 1, 1)
	end
end

function itemTooltip(b, tip)
	if b.itemID and tip.SetItemByID then tip:SetItemByID(b.itemID) end
	tip:AddLine(ns.Get("ui.lockHud") and L["Shift-drag to move."] or L["Drag to move."], 0.6, 0.6, 0.6)
end

function newItemButton(name)
	local b = newButton(name, itemTooltip)
	b:SetScript("OnUpdate", ns.Safe(rangeUpdate))
	return b
end

-- Apply the wanted item (secure) and repaint.
function applyItem(b, itemID)
	b.wantID = itemID
	QoL.Secure("item:" .. b:GetName(), function()
		local id = b.wantID
		b:SetAttribute("type", id and "item" or nil)
		b:SetAttribute("item", id and ("item:" .. id) or nil)
		b.itemID = id
		b.tint = nil
		if id then
			paintItem(b)
			b:Show()
		else
			b:Hide()
		end
	end)
	if b.itemID then paintItem(b) end
end

-- Usable item from a quest's log entry (e.g. a quest's special item).
function logItem(questID)
	local Q = C_QuestLog
	if not (Q and Q.GetLogIndexForQuestID and GetQuestLogSpecialItemInfo) then return nil end
	local index = Q.GetLogIndexForQuestID(questID)
	if not index then return nil end
	return Client.ItemIDFromLink((GetQuestLogSpecialItemInfo(index)))
end

-- The open quests of the current step (reused).
openQuests, openCount = {}, 0

-- First usable quest-class item in the bags that one of the step's open
-- quests handed over (Bethor's Potion, Thule Ravenclaw's reward, is none of
-- them); nil without Polestar.QuestDB, which knows what each quest hands over.
function bagQuestItem()
	local QDB = ns.QuestDB
	if openCount == 0 or not (QDB and QDB.IsLoaded and QDB.IsLoaded() and QDB.HandsOver) then return nil end
	for bag = 0, Client.NumBags() do
		for slot = 1, Client.NumSlots(bag) do
			local info = Client.SlotInfo(bag, slot)
			local id = info and info.itemID
			if id and Client.ItemClass(id) == Client.CLASS_QUEST and Client.ItemSpell(id) then
				for i = 1, openCount do
					if QDB.HandsOver(openQuests[i], id) then return id end
				end
			end
		end
	end
	return nil
end

-- Item for the quest item button, or nil. view, raw: QoL.CurrentStep()'s,
-- when the caller has them.
function Buttons.ChooseQuestItem(view, raw)
	if not view then view, raw = QoL.CurrentStep() end
	if not view then return nil end
	local goals = view.goals or {}
	for g = 1, #goals do
		local gv = goals[g]
		if gv.t == "use" and QoL.Open(gv) then
			local item = gv.item or (raw and raw[g] and raw[g].item)
			if item and Client.ItemCount(item) > 0 then return item end
		end
	end
	openCount = 0
	for g = 1, #goals do
		local gv = goals[g]
		if gv.quest and QoL.Open(gv) and gv.t ~= "accept" then
			openCount = openCount + 1
			openQuests[openCount] = gv.quest
			local item = logItem(gv.quest)
			if item and Client.ItemCount(item) > 0 then return item end
		end
	end
	return bagQuestItem()
end

function Buttons.WantsHearth(view)
	if not view then view = QoL.CurrentStep() end
	if not view then return false end
	local goals = view.goals or {}
	for g = 1, #goals do
		if goals[g].t == "hearth" and QoL.Open(goals[g]) then
			return Client.ItemCount(Client.HEARTHSTONE) > 0
		end
	end
	return false
end

---------------------------------------------------------------------------
-- Target button
---------------------------------------------------------------------------

names, nameSeen = {}, {}
-- Each open goal's names, in its own order, and how far each has been taken
-- (reused).
goalNames, goalPos, goalCount = {}, {}, 0

-- A name the button may put after "/targetexact": a string with no control
-- characters. Names come from guide packs, which anyone can write, and a line
-- break would start a second macro line ("/run ...") that runs on the click.
function Buttons.MacroSafeName(n)
	return type(n) == "string" and n ~= "" and not n:find("%c")
end

function addName(n)
	if not Buttons.MacroSafeName(n) then return end
	local list = goalNames[goalCount]
	list[#list + 1] = n
end

function addDroppers(list)
	if type(list) ~= "table" then return end
	for i = 1, #list do
		local e = list[i]
		addName(type(e) == "table" and e.name or e)
	end
end

-- Names for the target button (reused list): one from each open goal in
-- guide order, then the next from each, up to MAX_NAMES, so a goal with many
-- mobs (five creatures drop the Nightsaber Fang) cannot crowd out the goals
-- after it. view, raw: QoL.CurrentStep()'s, when the caller has them.
function Buttons.TargetNames(view, raw)
	wipe(names)
	wipe(nameSeen)
	goalCount = 0
	if not view then view, raw = QoL.CurrentStep() end
	if not view then return names end
	local QDB = ns.QuestDB
	local qdb = QDB and QDB.IsLoaded and QDB.IsLoaded()
	-- The step's goals, then the Along the way list's (along steps and
	-- pinned quests, #644: Engine.GetAlong), each with its raw goal.
	local goals, raws = view.goals or {}, raw
	local E = ns.Engine
	if E and E.GetAlong and E.AlongGoal then
		local all, allRaw = {}, {}
		for g = 1, #goals do all[g], allRaw[g] = goals[g], raw and raw[g] or goals[g] end
		for _, s in ipairs(E.GetAlong()) do
			for _, gv in ipairs(s.goals) do
				all[#all + 1] = gv
				allRaw[#all] = E.AlongGoal(gv.step, gv.index) or gv
			end
		end
		goals, raws = all, allRaw
	end
	for g = 1, #goals do
		local gv = goals[g]
		local rg = raws and raws[g] or gv
		if QoL.Open(gv) then
			goalCount = goalCount + 1
			goalNames[goalCount] = wipe(goalNames[goalCount] or {})
			goalPos[goalCount] = 1
			if gv.t == "kill" then
				-- /targetexact needs the name as the client writes it.
				local N = ns.Names
				addName((N and N.Npc(rg.npc or gv.npc)) or rg.target or gv.subject)
			elseif gv.t == "collect" then
				-- The mobs the arrow leads to come first: the farm spot the engine
				-- chose (`collect … nearest`), then the guide's own sources for this
				-- point (`fromNpcs`). The item's droppers follow, and stand alone for
				-- a goal with neither: they are ranked by drop chance over the whole
				-- world, so for an item many creatures drop the best of them are
				-- mostly in other zones.
				local N = ns.Names
				local npc = gv.npc or rg.npc
				if npc then addName((N and N.Npc(npc)) or gv.npcName or rg.npcName) end
				local src = rg.fromNpcs or gv.fromNpcs
				for i = 1, src and #src or 0 do
					addName((N and N.Npc(src[i].npc)) or src[i].npcName)
				end
				if qdb then
					if gv.quest and rg.oi and QDB.GetObjectiveMobs then
						addDroppers(QDB.GetObjectiveMobs(gv.quest, rg.oi))
					elseif (gv.item or rg.item) and QDB.GetItemDroppers then
						addDroppers(QDB.GetItemDroppers(gv.item or rg.item))
					end
				end
			end
		end
	end
	local more = true
	while more and #names < MAX_NAMES do
		more = false
		for i = 1, goalCount do
			local list, p = goalNames[i], goalPos[i]
			while list[p] and nameSeen[list[p]] do p = p + 1 end
			if list[p] and #names < MAX_NAMES then
				nameSeen[list[p]] = true
				names[#names + 1] = list[p]
				p = p + 1
				more = true
			end
			goalPos[i] = p
		end
	end
	return names
end

