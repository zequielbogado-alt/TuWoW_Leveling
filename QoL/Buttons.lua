local ADDON, ns = ...
setfenv(1, ns._qolButtonsEnv)
-- NPCs: "exists" out of combat, not "help": a neutral NPC (Booty Bay,
-- Gadgetzan) is no unit you can assist, and /cleartarget then /targetexact
-- have made the target that NPC. In a fight the target is not cleared, so
-- only one you cannot attack is marked, never the mob you are fighting.
MARK_UNIT = { mob = "[@target,harm,nodead]", npc = "[@target,exists,nodead,nocombat][@target,noharm,nodead]" }
MARK_KEY = { mob = "qol.markMob", npc = "qol.markNpc" }
MARK_DEFAULT = { mob = 8, npc = 1 }
OTHER = { mob = "npc", npc = "mob" }
-- Presses with a cycling mark: one count for both kinds, so when both cycle
-- an NPC's icon is not the next mob's.
presses = 0

-- A mark setting as an icon 1-8, "cycle", or the kind's default.
function markSetting(kind)
	local v = ns.Get(MARK_KEY[kind])
	if v == "cycle" then return v end
	v = tonumber(v)
	return v and v >= 1 and v <= 8 and v == math.floor(v) and v or MARK_DEFAULT[kind]
end

-- The /tm line for kind ("mob" or "npc"), nil while marking is off. A fixed
-- icon uses "!", so pressing again never takes it off. "cycle" puts the next
-- icon on at each press, skipping the one the other kind keeps, with "~": a
-- unit that already has an icon keeps it. In combat the macro cannot change,
-- so until the fight ends each press puts on the same icon.
function Buttons.MarkLine(kind)
	if not kind or not QoL.On("markTarget") then return nil end
	local icon = markSetting(kind)
	if icon ~= "cycle" then return "/tm " .. MARK_UNIT[kind] .. " !" .. icon end
	local other, icons = markSetting(OTHER[kind]), {}
	for i = 1, 8 do
		if i ~= other then icons[#icons + 1] = i end
	end
	return "/tm " .. MARK_UNIT[kind] .. " ~" .. icons[presses % #icons + 1]
end

-- After a press with kind's mark: true when the next press puts on a new icon.
function nextMark(kind)
	if not kind or not QoL.On("markTarget") or markSetting(kind) ~= "cycle" then return false end
	presses = presses + 1
	return true
end

-- The macro for names, tried from names[preferred] on in click order. Out of
-- combat it starts from nothing ("/cleartarget [nocombat]"), so a target that
-- is none of the names -- a mob clicked by hand, the quest giver just turned
-- in to -- cannot stop the chain, and a press that finds no name marks
-- nothing; in a fight the target is left alone, since clearing it would cut
-- melee swings and Auto Shot. A plain /targetexact takes the nearest match,
-- corpse or not, so each line is followed by "/cleartarget [dead]", and every
-- later name is tried only while nothing is targeted ("[noexists]"): the
-- first living match is kept. A name that is not MacroSafeName never becomes
-- a line. mark: a /tm line (Buttons.MarkLine) for the end. Names past
-- MACRO_LIMIT are dropped from the end; the preferred name and the mark stay.
function Buttons.TargetMacro(list, preferred, mark)
	local n = #list
	if n == 0 then return nil end
	local order = {}
	for k = 0, n - 1 do
		local name = list[(preferred - 1 + k) % n + 1]
		if Buttons.MacroSafeName(name) then order[#order + 1] = name end
	end
	local count = #order
	if count == 0 then return nil end
	local tail = mark and ("\n" .. mark) or ""
	local text
	repeat
		local lines = { "/cleartarget [nocombat]" }
		for k = 1, count do
			lines[#lines + 1] = (k == 1 and "/targetexact " or "/targetexact [noexists] ") .. order[k]
			lines[#lines + 1] = "/cleartarget [dead]"
		end
		text = concat(lines, "\n") .. tail
		count = count - 1
	until #text <= MACRO_LIMIT or count == 0
	return text
end

target = { list = {}, sig = nil, cycle = 1 }

function applyTarget(b)
	QoL.Secure("target", function()
		local list = target.list
		local text = Buttons.TargetMacro(list, target.cycle, Buttons.MarkLine("mob"))
		b:SetAttribute("type", text and "macro" or nil)
		b:SetAttribute("macrotext", text)
		b.applied = list[target.cycle]
		b.Label:SetText(b.applied or "")
		if text then b:Show() else b:Hide() end
	end)
end

function targetTooltip(b, tip)
	tip:SetText(L["Target"])
	for i = 1, #target.list do tip:AddLine(target.list[i], 1, 1, 1) end
	tip:AddLine(ns.Get("ui.lockHud") and L["Click again for the next name. Shift-drag to move."]
		or L["Click again for the next name. Drag to move."], 0.6, 0.6, 0.6)
end

---------------------------------------------------------------------------
-- Rare button
---------------------------------------------------------------------------

rare = { list = {}, sig = nil, cycle = 1 }

function applyRare(b)
	QoL.Secure("rare", function()
		local list = rare.list
		local text = Buttons.TargetMacro(list, rare.cycle)
		b:SetAttribute("type", text and "macro" or nil)
		b:SetAttribute("macrotext", text)
		b.applied = list[rare.cycle]
		b.Label:SetText(b.applied or "")
		if text then b:Show() else b:Hide() end
	end)
end

function rareTooltip(b, tip)
	tip:SetText(L["Target rare"])
	for i = 1, #rare.list do tip:AddLine(rare.list[i], 1, 1, 1) end
	tip:AddLine(ns.Get("ui.lockHud") and L["Click again for the next name. Shift-drag to move."]
		or L["Click again for the next name. Drag to move."], 0.6, 0.6, 0.6)
end

---------------------------------------------------------------------------
-- Bag button (QoL/Space.lua)
---------------------------------------------------------------------------

function applyBag(b)
	local Space = QoL.Space
	local j = Space and Space.Low() and Space.Junk()
	b.junk = j or nil
	if j then
		b.Icon:SetTexture(Client.ItemIcon(j.id) or media("icon-use"))
		b.Icon:SetDesaturated(not Space.Armed())
		b.Count:SetText(tostring((Space.Free())))
		b.Label:SetText(Space.Armed() and L["Press again to delete"] or "")
	end
	QoL.Secure("bag", function()
		if b.junk then b:Show() else b:Hide() end
	end)
end

function bagTooltip(b, tip)
	local Space = QoL.Space
	local j = b.junk
	local f, t = Space.Free()
	tip:SetText(L["Bag space"])
	tip:AddLine(string.format(L["Free slots: %d of %d"], f, t), 1, 1, 1)
	if j then
		tip:AddLine(string.format(L["Cheapest junk: %s (%s)"], Space.ItemText(j), j.value < math.huge and QoL.Money(j.value) or "?"), 1, 1, 1)
		tip:AddLine(L["Press twice to delete it."], 0.6, 0.6, 0.6)
	end
	tip:AddLine(ns.Get("ui.lockHud") and L["Shift-drag to move."] or L["Drag to move."], 0.6, 0.6, 0.6)
end

---------------------------------------------------------------------------
-- Step key
---------------------------------------------------------------------------

-- Goals done with an NPC, whom the step key targets by name.
NPC_VERBS = { accept = true, turnin = true, talk = true, train = true, vendor = true, buy = true, sethome = true, getfp = true, learn = true }

-- What the step key does now. view, raw: QoL.CurrentStep()'s, when the
-- caller has them. -> "item", itemID | "target", names (reused list) |
-- "npc", name | nil. The route's own goals come first, in guide order, then
-- the optional ones, so an optional accept never takes the key.
function stepGoal(view, raw, goals, optional)
	for g = 1, #goals do
		local gv = goals[g]
		local rg = raw and raw[g] or gv
		local isOptional = (rg.optional or gv.optional) and true or false
		if isOptional == optional and QoL.Open(gv) then
			local t = gv.t
			if t == "use" then
				local item = gv.item or rg.item
				if item and Client.ItemCount(item) > 0 then return "item", item end
			elseif t == "hearth" then
				if Client.ItemCount(Client.HEARTHSTONE) > 0 then return "item", Client.HEARTHSTONE end
			elseif t == "kill" or t == "collect" then
				-- This goal's own mobs decide; the key then cycles all the step's.
				if #Buttons.TargetNames({ goals = { gv } }, { rg }) > 0 then return "target", Buttons.TargetNames(view, raw) end
			elseif NPC_VERBS[t] then
				-- A name that is not MacroSafeName is passed over, like no name.
				local name = gv.npcName or rg.npcName
				if Buttons.MacroSafeName(name) then return "npc", name end
			end
		end
	end
end

function Buttons.StepAction(view, raw)
	-- The open flight map's marked node first: the press flies there.
	local F = QoL.Flight
	local slot = F and F.TakeSlot and F.TakeSlot()
	if slot then return "fly", slot end
	if not view then view, raw = QoL.CurrentStep() end
	if not view then return nil end
	local goals = view.goals or {}
	local kind, value = stepGoal(view, raw, goals, false)
	if not kind then kind, value = stepGoal(view, raw, goals, true) end
	if kind then return kind, value end
	local item = Buttons.ChooseQuestItem(view, raw)
	if item then return "item", item end
	return nil
end

step = { kind = nil, value = nil, list = {}, sig = nil, cycle = 1 }
-- The mark each kind of step key press puts on.
STEP_MARK = { target = "mob", npc = "npc" }

function applyStep(b)
	QoL.Secure("step", function()
		local text, item
		if step.kind == "target" then
			text = Buttons.TargetMacro(step.list, step.cycle, Buttons.MarkLine("mob"))
		elseif step.kind == "npc" then
			text = Buttons.TargetMacro({ step.value }, 1, Buttons.MarkLine("npc"))
		elseif step.kind == "item" then
			item = "item:" .. step.value
		end
		b:SetAttribute("type", item and "item" or text and "macro" or nil)
		b:SetAttribute("item", item)
		b:SetAttribute("macrotext", text)
	end)
end

---------------------------------------------------------------------------
-- Wiring
---------------------------------------------------------------------------

itemButton, hearthButton, targetButton, rareButton, stepButton, bagButton = itemButton, hearthButton, targetButton, rareButton, stepButton, bagButton

---------------------------------------------------------------------------
-- The step key's interact stage (qol.stepInteract, off by default)
---------------------------------------------------------------------------

-- The quest window open now ("detail", "progress", "complete") and its quest.
questWin, questWinQuest = questWin, questWinQuest
-- The quest frame's button each stage presses (Blizzard's QuestFrame).
QUEST_BUTTONS = { accept = "QuestFrameAcceptButton", continue = "QuestFrameCompleteButton", complete = "QuestFrameCompleteQuestButton" }
STEP_BINDING = "CLICK PolestarStepButton:LeftButton"

-- An open goal of the step for which test(view goal, raw goal) holds.
function openGoal(view, raw, test)
	local goals = view.goals or {}
	for g = 1, #goals do
		if QoL.Open(goals[g]) and test(goals[g], raw and raw[g] or goals[g]) then return goals[g] end
	end
	return nil
end

-- What the step key's next press does in place of its own action, or nil:
-- in a quest window of the live step's quest, "accept" (its accept),
-- "continue" or "complete" (its turn-in; with several rewards to choose
-- from, the player picks); else "interact" while the target is the live
-- step's NPC, or the corpse of one of its mobs (loot). Only with the
-- setting, the client's interact binding (BINDING_NAME_INTERACTTARGET), the
-- live step on screen, and never with the gamepad interface.
function Buttons.InteractStage(view, raw)
	if not (QoL.On("stepInteract") and BINDING_NAME_INTERACTTARGET) or ns.GamepadUI() then return nil end
	if not view then view, raw = QoL.CurrentStep() end
	local E = ns.Engine
	if not view or (E and E.GetLiveStep and E.GetLiveStep() ~= E.GetStepIndex()) then return nil end
	if questWin then
		local q = questWinQuest
		if questWin == "detail" then
			return openGoal(view, raw, function(gv) return gv.t == "accept" and gv.quest == q end) and "accept" or nil
		end
		if not openGoal(view, raw, function(gv) return gv.t == "turnin" and gv.quest == q end) then return nil end
		if questWin == "progress" then return "continue" end
		return (GetNumQuestChoices and GetNumQuestChoices() or 0) <= 1 and "complete" or nil
	end
	if not (UnitExists and UnitExists("target")) or (UnitIsPlayer and UnitIsPlayer("target")) then return nil end
	local name = UnitName and UnitName("target")
	if UnitIsDead and UnitIsDead("target") then
		local list = Buttons.TargetNames(view, raw)
		for i = 1, #list do
			if list[i] == name then return "interact" end
		end
		return nil
	end
	if UnitCanAttack and UnitCanAttack("player", "target") then return nil end
	local npc = ns.Compat.GetNpcID("target")
	return openGoal(view, raw, function(gv, rg)
		return NPC_VERBS[gv.t] and ((npc ~= nil and (gv.npc or rg.npc) == npc) or (name ~= nil and (gv.npcName or rg.npcName) == name))
	end) and "interact" or nil
end

-- The step key's keys bound over to the stage's action (override bindings
-- owned by the step button), or back to the step key; out of combat only.
interactSig = ""
function applyInteract(stage)
	local keys = { GetBindingKey and GetBindingKey(STEP_BINDING) }
	local sig = stage and (stage .. "\n" .. concat(keys, "\n")) or ""
	if sig == interactSig or not stepButton then return end
	QoL.Secure("stepInteract", function()
		interactSig = sig
		ClearOverrideBindings(stepButton)
		if not stage then return end
		for i = 1, #keys do
			if stage == "interact" then
				SetOverrideBinding(stepButton, true, keys[i], "INTERACTTARGET")
			elseif _G[QUEST_BUTTONS[stage]] then
				SetOverrideBindingClick(stepButton, true, keys[i], QUEST_BUTTONS[stage], "LeftButton")
			end
		end
	end)
end
refreshInteract = QoL.Coalesce(function() applyInteract(Buttons.InteractStage()) end)

for event, kind in pairs({ QUEST_DETAIL = "detail", QUEST_PROGRESS = "progress", QUEST_COMPLETE = "complete", QUEST_FINISHED = false }) do
	ns.RegisterEvent(event, function()
		questWin = kind or nil
		questWinQuest = kind and GetQuestID and GetQuestID() or nil
		refreshInteract()
	end)
end
for _, event in ipairs({ "PLAYER_TARGET_CHANGED", "PLAYER_REGEN_ENABLED", "UPDATE_BINDINGS", "LOOT_CLOSED" }) do
	ns.RegisterEvent(event, refreshInteract)
end

function refresh()
	if not itemButton then return end
	-- One view of the current step for all three buttons.
	local view, raw = QoL.CurrentStep()
	applyItem(itemButton, QoL.On("itemButton") and view and Buttons.ChooseQuestItem(view, raw) or nil)
	applyItem(hearthButton, QoL.On("hearthButton") and view and Buttons.WantsHearth(view) and Client.HEARTHSTONE or nil)

	local list = QoL.On("targetButton") and view and Buttons.TargetNames(view, raw) or {}
	-- The mark settings are part of both signatures, so changing one re-applies.
	local mark = QoL.On("markTarget") and (markSetting("mob") .. " " .. markSetting("npc") .. "\n") or ""
	local sig = mark .. concat(list, "\n")
	if sig ~= target.sig then
		target.sig = sig
		local copy = {}
		for i = 1, #list do copy[i] = list[i] end
		target.list = copy
		target.cycle = 1
		applyTarget(targetButton)
	end

	-- Not tied to the step: a rare can turn up on any of them.
	local R = ns.Rares
	local rares = QoL.On("rareButton") and R and R.Nearby and R.Nearby() or {}
	local raresSig = concat(rares, "\n")
	if raresSig ~= rare.sig then
		rare.sig = raresSig
		local copy = {}
		for i = 1, #rares do
			if Buttons.MacroSafeName(rares[i]) then copy[#copy + 1] = rares[i] end
		end
		rare.list = copy
		rare.cycle = 1
		applyRare(rareButton)
	end

	local kind, value = nil, nil
	if view then kind, value = Buttons.StepAction(view, raw) end
	local stepSig = mark .. (kind == "target" and ("target\n" .. concat(value, "\n")) or (tostring(kind) .. "\n" .. tostring(value)))
	if stepSig ~= step.sig then
		step.sig, step.kind, step.cycle = stepSig, kind, 1
		local copy = {}
		if kind == "target" then
			for i = 1, #value do copy[i] = value[i] end
		else
			step.value = value
		end
		step.list = copy
		applyStep(stepButton)
	end
	applyInteract(Buttons.InteractStage(view, raw))

	applyBag(bagButton)
end
refreshSoon = QoL.Coalesce(refresh)
Buttons.Refresh = refresh

function repaintItems()
	if not itemButton then return end
	if itemButton.itemID then paintItem(itemButton) end
	if hearthButton.itemID then paintItem(hearthButton) end
end

function create()
	if itemButton then return end
	-- Not named: the client's layout cache would save it as well.
	holder = CreateFrame("Frame", nil, UIParent)
	holder:SetSize(SIZE, SIZE)
	holder:SetMovable(true)
	holder:SetClampedToScreen(true)
	-- The clamp covers the bag, hearth, target and rare slots too.
	holder:SetClampRectInsets(0, 0, 2 * GAP, -2 * GAP)
	itemButton = newItemButton("PolestarQuestItemButton")
	hearthButton = newItemButton("PolestarHearthButton")
	targetButton = newButton("PolestarTargetButton", targetTooltip)
	targetButton.Icon:SetTexture(media("qol-target"))
	targetButton.Icon:SetTexCoord(0, 1, 0, 1)
	color(targetButton.Icon, "danger")
	targetButton:HookScript("PostClick", function(self, _, down)
		if down or self.dragging then return end
		local n = #target.list
		if n > 1 then target.cycle = target.cycle % n + 1 end
		local marked = nextMark("mob")
		if n > 1 or marked then applyTarget(targetButton) end
		-- The step key shares the icon cycle.
		if marked then applyStep(stepButton) end
	end)
	rareButton = newButton("PolestarRareButton", rareTooltip)
	rareButton.Icon:SetTexture(media("qol-target"))
	rareButton.Icon:SetTexCoord(0, 1, 0, 1)
	color(rareButton.Icon, "quest")
	rareButton:HookScript("PostClick", function(self, _, down)
		if down or self.dragging then return end
		local n = #rare.list
		if n > 1 then
			rare.cycle = rare.cycle % n + 1
			applyRare(rareButton)
		end
	end)
	bagButton = newButton("PolestarBagButton", bagTooltip)
	bagButton:HookScript("PostClick", function(self, _, down)
		if down or self.dragging then return end
		local Space = QoL.Space
		if Space then Space.Press() end
		applyBag(self)
	end)
	-- The step key: a binding only, never shown.
	stepButton = CreateFrame("Button", "PolestarStepButton", UIParent, "SecureActionButtonTemplate")
	stepButton:RegisterForClicks("AnyUp", "AnyDown")
	QoL.Secure("init:PolestarStepButton", function() stepButton:Hide() end)
	stepButton:HookScript("PostClick", function(self, _, down)
		if down then return end
		-- No secure action while it flies: the press takes the marked node.
		if step.kind == "fly" then
			QoL.Flight.Take()
			return
		end
		local n = #step.list
		local names = step.kind == "target" and n > 1
		if names then step.cycle = step.cycle % n + 1 end
		local marked = nextMark(STEP_MARK[step.kind])
		if names or marked then applyStep(self) end
		if marked then applyTarget(targetButton) end
	end)
	Buttons.item, Buttons.hearth, Buttons.target, Buttons.rare, Buttons.step, Buttons.bag = itemButton, hearthButton, targetButton, rareButton, stepButton, bagButton
	set = { bagButton, hearthButton, itemButton, targetButton, rareButton }
	-- An Above name moves when a button over it comes or goes.
	local function placeLabels() for i = 1, #set do placeLabel(set[i]) end end
	for i = 1, #set do
		set[i]:HookScript("OnShow", placeLabels)
		set[i]:HookScript("OnHide", placeLabels)
	end
	placeLabels()
	place()
end

ns.OnLogin(function()
	create()
	refresh()
end)

QoL.OnStep(refreshSoon)
ns.RegisterEvent("BAG_UPDATE_DELAYED", function()
	repaintItems()
	refreshSoon()
end)
ns.RegisterEvent("QUEST_LOG_UPDATE", refreshSoon)
ns.RegisterEvent("BAG_UPDATE_COOLDOWN", repaintItems)
ns.RegisterEvent("UPDATE_BINDINGS", function()
	if not itemButton then return end
	refreshHotkey(itemButton)
	refreshHotkey(hearthButton)
	refreshHotkey(targetButton)
	refreshHotkey(rareButton)
	refreshHotkey(bagButton)
end)
ns.On("RARE_NEARBY", refreshSoon)
ns.On("FLIGHT_MARK_CHANGED", refreshSoon)
ns.On("QUESTDB_LOADED", refreshSoon)
ns.On("BAG_SPACE", refreshSoon)
ns.On("SETTING_CHANGED", function(path)
	if not itemButton or type(path) ~= "string" then return end
	if path == "qol.buttonScale" or path == "qol" or path == "" then
		place()
	end
	if path == "qol.buttonTextSide" or path == "qol" or path == "" then
		for i = 1, #set do placeLabel(set[i]) end
	end
	if path:sub(1, 4) == "qol." or path == "qol" or path == "" then refreshSoon() end
end)

-- Back to the default spot (options button).
function Buttons.ResetPositions()
	QoL.State().buttonPos = nil
	if itemButton then place() end
end
