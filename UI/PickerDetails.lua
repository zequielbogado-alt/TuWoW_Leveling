local ADDON, ns = ...
setfenv(1, ns._uiPickerEnv)
---------------------------------------------------------------------------
-- Right pane: details
---------------------------------------------------------------------------

function detailChip(i)
	local c = details.Chips[i]
	if c then return c end
	c = W.Chip(details)
	details.Chips[i] = c
	return c
end

function bullet(list, i, glyph, color, textColor, size)
	local b = list[i]
	if not b then
		local parent = details.Scroll.Child
		b = {}
		b.Glyph = W.Tex(parent, "ARTWORK", glyph, color)
		b.Glyph:SetSize(size, size)
		b.Text = W.Text(parent, "note", textColor)
		b.Text:SetWordWrap(true)
		b.Text:SetJustifyV("TOP")
		list[i] = b
	end
	return b
end

-- One fact: a muted label in a fixed column, the value beside it.
function factRow(i)
	local f = details.Facts[i]
	if f then return f end
	f = {}
	f.Label = W.Text(details, "small", "textMuted")
	f.Label:SetWidth(FACT_W - 8) -- 8px clear of the value; a long label wraps
	f.Label:SetWordWrap(true)
	f.Label:SetJustifyH("LEFT")
	f.Label:SetJustifyV("TOP")
	f.Value = W.Text(details, "note", "text")
	f.Value:SetWidth(DETAIL_W - DPAD * 2 - FACT_W)
	f.Value:SetJustifyH("LEFT")
	f.Value:SetJustifyV("TOP")
	f.Value:SetWordWrap(true)
	details.Facts[i] = f
	return f
end

-- The guide's reward: one tile per entry in the facts' value column, an
-- item or spell icon (a glyph for words) and its name; items in their
-- quality's colour and border. Hovering shows the game's item or spell
-- tooltip, a modified click acts as on any item or spell button
-- (W.ItemClick, W.SpellClick); the pane asks for the items and spells as it
-- paints them, so the first hover usually finds them cached.
REWARD_H, REWARD_GAP = 22, 4

function rewardEnter(self)
	local e = self.psReward
	if not e then return end
	if e.item then
		W.ItemTip(self, e.item)
	elseif e.spell then
		W.SpellTip(self, e.spell)
	end
end

function rewardClick(self)
	local e = self.psReward
	if not e then return end
	if e.item then
		W.ItemClick(e.item)
	elseif e.spell then
		W.SpellClick(e.spell)
	end
end

function rewardTile(i)
	local t = details.Rewards[i]
	if t then return t end
	t = CreateFrame("Button", nil, details)
	t:SetSize(DETAIL_W - DPAD * 2 - FACT_W, REWARD_H)
	W.Hover(t)
	t.Well = CreateFrame("Frame", nil, t)
	t.Well:SetSize(REWARD_H, REWARD_H)
	t.Well:SetPoint("LEFT", t, "LEFT", 0, 0)
	t.Well.Ground = W.Fill(t.Well, "scrim", "BACKGROUND", 0)
	t.Icon = t.Well:CreateTexture(nil, "ARTWORK")
	t.Icon:SetPoint("TOPLEFT", t.Well, "TOPLEFT", 1, -1)
	t.Icon:SetPoint("BOTTOMRIGHT", t.Well, "BOTTOMRIGHT", -1, 1)
	t.Name = W.Text(t, "note", "text")
	t.Name:SetPoint("LEFT", t.Well, "RIGHT", 8, 0)
	t.Name:SetWidth(DETAIL_W - DPAD * 2 - FACT_W - REWARD_H - 8)
	t:SetScript("OnEnter", rewardEnter)
	t:SetScript("OnLeave", W.HideTip)
	t:SetScript("OnClick", rewardClick)
	details.Rewards[i] = t
	return t
end

-- "ffrrggbb" -> r, g, b (0-1).
function hexRGB(hex)
	local r, g, b = hex:match("^%x%x(%x%x)(%x%x)(%x%x)$")
	if not r then return nil end
	return tonumber(r, 16) / 255, tonumber(g, 16) / 255, tonumber(b, 16) / 255
end

-- Paints tile t for reward entry e -> the name shown.
function paintReward(t, e)
	local C = ns.Compat
	t.psReward = e
	local icon, name, hex
	if e.item then
		W.PrefetchItem(e.item)
		icon = C.ItemIcon and C.ItemIcon(e.item)
		name = ns.Names.Item(e.item) or e.itemName or (L["Item"] .. " " .. e.item)
		local q = (C.GetItemQuality and C.GetItemQuality(e.item)) or e.quality
		hex = q and C.ItemQualityHex and C.ItemQualityHex(q)
	elseif e.spell then
		W.PrefetchSpell(e.spell)
		icon = C.SpellIcon and C.SpellIcon(e.spell)
		name = ns.Names.Spell(e.spell) or e.spellName or (L["Spell"] .. " " .. e.spell)
	else
		name = e.text or ""
	end
	if icon then
		t.Icon:SetTexture(icon)
		t.Icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		W.Uncolor(t.Icon)
		t.Icon:SetVertexColor(1, 1, 1, 1)
	else
		t.Icon:SetTexture(Theme.Media(e.item and "icon-collect" or "icon-train"))
		t.Icon:SetTexCoord(0, 1, 0, 1)
		W.Color(t.Icon, "textMuted")
	end
	local r, g, b = hexRGB(hex or "")
	if r then
		Theme.Border(t.Well, r, g, b, 0.9)
		W.Uncolor(t.Name)
		t.Name:SetTextColor(Theme.Legible(r, g, b))
	else
		local br, bg, bb = Theme.Wash("border")
		Theme.Border(t.Well, br, bg, bb, 0.6)
		W.Color(t.Name, e.item and "item" or "text")
	end
	t.Name:SetText(name)
	return name
end

-- The zones in route order, as many as fit on two lines ("A › B › …").
function fitZones(fs, zones)
	for k = #zones, 1, -1 do
		local text = table.concat(zones, ARROW, 1, k)
		if k < #zones then text = text .. ARROW .. ELLIPSIS end
		fs:SetText(text)
		if fs:GetNumLines() <= 2 then return end
	end
end

function buildDetails()
	local d = CreateFrame("Frame", nil, win.Main)
	details = d
	P.details = d
	d:SetPoint("TOPRIGHT", win.Main, "TOPRIGHT", 0, 0)
	d:SetPoint("BOTTOMRIGHT", win.Main, "BOTTOMRIGHT", 0, 0)
	d:SetWidth(DETAIL_W)
	d:SetFrameLevel(win.Content:GetFrameLevel() + 6)
	d:EnableMouse(true)
	W.Fill(d, "panel")
	local rule = W.Divider(d, true)
	rule:SetPoint("TOPLEFT", d, "TOPLEFT", 0, 0)
	rule:SetPoint("BOTTOMLEFT", d, "BOTTOMLEFT", 0, 0)
	local inner = DETAIL_W - DPAD * 2

	d.Art = ZoneArt.Create(d, DETAIL_W, ART_H, "panel")
	d.Art.psZoom = 1.5 -- the wider band shows more of the zone
	d.Art:SetPoint("TOPLEFT", d, "TOPLEFT", 0, 0)
	d.Art:EnableMouse(true)
	d.Art:RegisterForDrag("LeftButton")
	d.Art:SetScript("OnDragStart", function() win:StartMoving() end)
	d.Art:SetScript("OnDragStop", function() win:StopMovingOrSizing() end)
	-- The window's close button moves to the art's corner, where the shell
	-- keeps it; the star beside it.
	win.Close:SetParent(d.Art.Over)
	win.Close:ClearAllPoints()
	win.Close:SetPoint("TOPRIGHT", d.Art, "TOPRIGHT", -12, -12)
	d.Star = W.IconButton(d.Art.Over, "star", 28, L["Add to favourites"], function()
		P.ToggleFavorite(P.Selected())
	end, 14)
	d.Star:SetPoint("RIGHT", win.Close, "LEFT", -4, 0)
	-- On a bright painting the two glyphs need a dark ground of their own:
	-- 4 past the pair at either end, 2 above and below.
	d.Scrim = W.Pill(d.Art.Over, 68, 32)
	d.Scrim:SetPoint("TOPRIGHT", win.Close, "TOPRIGHT", 4, 2)
	W.Painter(d.Scrim, function(p)
		local r, g, b = Theme.Color("scrim")
		p:SetColor(r, g, b, 0.6)
	end)
	d.Scrim:SetFrameLevel(d.Art.Over:GetFrameLevel())
	win.Close:SetFrameLevel(d.Scrim:GetFrameLevel() + 2)
	d.Star:SetFrameLevel(d.Scrim:GetFrameLevel() + 2)
	d.Title = W.Text(d.Art.Over, "display", "text")
	d.Title:SetPoint("BOTTOMLEFT", d.Art, "BOTTOMLEFT", DPAD, 14)
	d.Title:SetWidth(inner)
	W.Painter(d.Title, function(fs)
		local r, g, b = Theme.Color("shade")
		fs:SetShadowOffset(0, -1)
		fs:SetShadowColor(r, g, b, 0.85)
	end)

	d.Chips = {}
	-- What a leveling guide is worth in levels; hovering opens its panel
	-- (UI/LevelTip.lua) on the window.
	d.XP = UI.LevelTip.Chip(d, win)
	d.ProgLabel = W.Text(d, "small", "textDim")
	d.ProgPct = W.Text(d, "number", "textDim")
	d.ProgPct:SetJustifyH("RIGHT")
	d.Prog = W.ProgressLine(d, 2)
	d.Prog:SetWidth(inner)
	-- The facts, under a hairline (factRow).
	d.FactRule = W.Divider(d)
	d.Facts = {}
	d.Rewards = {}
	-- Credits under the facts: who wrote it and, for a pack's guide, the
	-- pack; the pack's source on its own line.
	d.Credits = W.Text(d, "small", "textMuted")
	d.Credits:SetWordWrap(true)
	d.Credits:SetJustifyH("LEFT")
	d.Credits:SetWidth(inner)
	d.Source = W.Text(d, "note", "textDim")
	d.Source:SetWordWrap(true)
	d.Source:SetJustifyH("LEFT")
	d.Source:SetWidth(inner)

	-- Pitch, pros and cons scroll between the facts and the buttons.
	d.Scroll = W.Scroll(d)
	d.Pitch = W.Text(d.Scroll.Child, "note", "textDim")
	d.Pitch:SetWordWrap(true)
	d.Pitch:SetJustifyV("TOP")
	d.Pitch:SetWidth(inner)
	d.Pros, d.Cons = {}, {}

	-- Load: into the current tab; Continue on a guide already open.
	d.Load = W.Button(d, L["Load guide"], function() load(P.Selected(), false) end, { primary = true, height = 32 })
	d.NewTab = W.Button(d, L["Open in new tab"], function() load(P.Selected(), true) end, { height = 32, icon = "plus" })
	d.NewTab:SetPoint("BOTTOMRIGHT", d, "BOTTOMRIGHT", -DPAD, DPAD)
	d.Load:SetPoint("BOTTOMLEFT", d, "BOTTOMLEFT", DPAD, DPAD)

	-- Nothing selected yet.
	d.EmptyTitle = W.Text(d, "display", "text")
	d.EmptyTitle:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD, -(ART_H + 24))
	d.EmptyTitle:SetText(L["Choose a guide"])
	d.EmptyNote = W.Text(d, "note", "textDim")
	d.EmptyNote:SetWordWrap(true)
	d.EmptyNote:SetJustifyV("TOP")
	d.EmptyNote:SetWidth(inner)
	d.EmptyNote:SetPoint("TOPLEFT", d.EmptyTitle, "BOTTOMLEFT", 0, -10)
	d.EmptyNote:SetText(L["Select a guide to see where it goes, then load it."])
end

-- A stable stretch of night sky per guide, so neighbours never look cloned.
function skyIndex(id)
	local n = 0
	for i = 1, #id do n = (n * 31 + id:byte(i)) % 997 end
	return n + 1
end

function setButtonWidth(b, w)
	b.psFixedWidth = w
	W.SetButtonText(b, b.Label:GetText())
end

function setPrimary(b, on)
	b.psPrimary = on
	Theme.Repaint(b)
	W.RepaintButton(b)
end

-- A guide's credits: "By <author>" for ours; for a pack's guide "By
-- <author> · <pack title> <version> · <licence>" (an imported guide: "By
-- <author> · Imported · <its own licence>"). The author is the guide's
-- own, else its pack's. -> text or nil, the pack's source or nil
function P.Credits(g)
	if not g then return nil end
	local G = ns.Guides
	local own = g.pack and G and G.Pack and G.Pack(g.pack) or nil
	local author = type(g.author) == "string" and g.author ~= "" and g.author or (own and own.author)
	local pack = packOf(g)
	local parts = {}
	if author then parts[1] = string.format(L["By %s"], author) end
	if pack then
		parts[#parts + 1] = (pack.title or pack.id) .. (pack.version and (" " .. pack.version) or "")
		local license = pack.license or (pack.imported and type(g.license) == "string" and g.license or nil)
		if license then parts[#parts + 1] = license end
	end
	if #parts == 0 then return nil end
	return table.concat(parts, DOT), pack and pack.source or nil
end

function renderDetails(byId, tabs, active)
	local d = details
	local inner = DETAIL_W - DPAD * 2
	local id = P.Selected()
	local g = id and byId[id]
	local E = ns.Engine
	local parts = { d.Star, d.Title, d.ProgLabel, d.ProgPct, d.Prog, d.FactRule, d.Scroll, d.Load, d.NewTab, d.Credits, d.Source }
	if not g then
		d.psArt = ZoneArt.Paint(d.Art, nil, nil, nil, 1)
		for _, p in ipairs(parts) do p:Hide() end
		for _, c in ipairs(d.Chips) do c:Hide() end
		UI.LevelTip.Set(d.XP, nil)
		for _, f in ipairs(d.Facts) do
			f.Label:Hide()
			f.Value:Hide()
		end
		for _, t in ipairs(d.Rewards) do t:Hide() end
		d.EmptyTitle:Show()
		d.EmptyNote:Show()
		P.detail = nil
		return
	end
	d.EmptyTitle:Hide()
	d.EmptyNote:Hide()
	for _, p in ipairs(parts) do p:Show() end
	local fx, fy
	if E and E.GuideFocus then fx, fy = E.GuideFocus(g.id) end
	d.psArt = ZoneArt.Paint(d.Art, g.zone, fx, fy, skyIndex(g.id))
	local fav = P.IsFavorite(g.id)
	W.SetIconState(d.Star, fav)
	d.Star.psTip = fav and L["Remove from favourites"] or L["Add to favourites"]
	d.Title:SetText(g.title or g.id)

	-- Chips: levels, what a leveling guide is worth in levels, group content,
	-- faction, races, classes; on two lines at most.
	local y = ART_H + 16
	local n, x, line, full = 0, DPAD, 0, false
	local function place(c, w)
		if full then
			c:Hide()
			return false
		end
		if x > DPAD and x + w > DPAD + inner then
			if line == 1 then
				c:Hide()
				full = true
				return false
			end
			line, x = 1, DPAD
		end
		c:ClearAllPoints()
		c:SetPoint("TOPLEFT", d, "TOPLEFT", x, -(y + line * (W.CHIP_H + 6)))
		x = x + w + 6
		return true
	end
	local function addChip(text, kind)
		if full then return end
		local c = detailChip(n + 1)
		if place(c, W.SetChip(c, text, kind)) then n = n + 1 end
	end
	local lv = UI.LevelRange(g.minLevel, g.maxLevel)
	if lv then addChip(L["Levels"] .. " " .. lv, "accent") end
	local xw = UI.LevelTip.Set(d.XP, g.category == "Leveling" and guideXP(g.id) or nil,
		{ head = L["If you finish this guide"], need = L["You are level %d. Level %d is recommended for this guide; from there:"] })
	if xw and place(d.XP, xw) then
		-- Its panel starts on the details' text edge, not the chip's: the
		-- pane ends at the window's right edge.
		local _, _, _, cx = d.XP:GetPoint(1)
		d.XP.psTipX = DPAD - (cx or DPAD)
	end
	if g.group == true then addChip(L["Group"], "dungeon") end
	addChip(ns.FactionName(g.faction) or L["Both factions"])
	if type(g.races) == "table" then for _, race in ipairs(g.races) do addChip(UI.RaceName(race)) end end
	if type(g.classes) == "table" then for _, cl in ipairs(g.classes) do addChip(UI.ClassName(cl)) end end
	for i = n + 1, #d.Chips do d.Chips[i]:Hide() end
	y = y + (line + 1) * W.CHIP_H + line * 6 + 16

	-- Progress: GetGuideState, plus the tab's step when it is open.
	local state, done, total = guideState(g.id)
	local tabIndex, tab
	for i, t in ipairs(tabs or {}) do if t.guideId == g.id then tabIndex, tab = i, t end end
	local label
	if state == "done" then
		label = L["Finished"]
	elseif tab then
		label = tab.stepIndex and string.format(L["Open in tab %d  \194\183  step %d of %d"], tabIndex, tab.stepIndex, tab.stepCount or 0)
			or string.format(L["Open in tab %d"], tabIndex)
	elseif state == "started" then
		label = L["Started"]
	else
		label = L["Not started"]
	end
	local frac
	if total and total > 0 then frac = (done or 0) / total elseif state == "done" then frac = 1 end
	d.ProgLabel:SetText(label)
	d.ProgLabel:ClearAllPoints()
	d.ProgLabel:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD, -y)
	-- Nothing done yet: the label alone; an empty track would only double the
	-- facts rule under it.
	local started = frac and frac > 0
	d.ProgPct:SetText(started and (floor(frac * 100 + 0.5) .. "%") or "")
	d.ProgPct:ClearAllPoints()
	d.ProgPct:SetPoint("TOPRIGHT", d, "TOPRIGHT", -DPAD, -y)
	d.Prog:ClearAllPoints()
	d.Prog:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD, -(y + 20))
	W.SetProgress(d.Prog, frac or 0, inner)
	d.Prog:SetShown(started and true or false)
	y = y + (started and (20 + 2) or 14) + 16

	-- Facts: what the guide's goal gives and why (a Class guide's `reward`
	-- and `why`), then steps, the quests this character takes, the zones in
	-- route order, where the guide leads. Reward entries are tiles: those
	-- given outright under "Reward", a choice under "Choose one".
	local facts, info = {}, guideFacts(g)
	if type(g.reward) == "table" then
		local get, choose = {}, {}
		for _, e in ipairs(g.reward) do
			if type(e) == "table" then
				local list = e.choice and choose or get
				list[#list + 1] = e
			end
		end
		if #get > 0 then facts[#facts + 1] = { L["Reward"], rewards = get } end
		if #choose > 0 then facts[#facts + 1] = { L["Choose one"], rewards = choose } end
	end
	if type(g.why) == "string" and g.why ~= "" then facts[#facts + 1] = { L["Why"], g.why } end
	if g.stepCount then facts[#facts + 1] = { L["Steps"], tostring(g.stepCount) } end
	if info.quests > 0 then facts[#facts + 1] = { L["Quests"], tostring(info.quests) } end
	if #info.zones > 0 then facts[#facts + 1] = { L["Zones"], info.zones, "textDim" } end
	local nextText = nextFact(g, byId)
	if nextText then facts[#facts + 1] = { L["Next"], nextText, "textDim" } end
	d.FactRule:ClearAllPoints()
	d.FactRule:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD, -y)
	d.FactRule:SetPoint("TOPRIGHT", d, "TOPRIGHT", -DPAD, -y)
	d.FactRule:SetShown(#facts > 0)
	local shownFacts, shownRewards, nTiles = {}, {}, 0
	if #facts > 0 then y = y + 1 + 16 end
	-- The label column: FACT_W, or wider by what a label's longest word
	-- needs ("Choisissez-en"), so a label wraps between words only.
	local factW = FACT_W
	for i, f in ipairs(facts) do
		for word in f[1]:gmatch("%S+") do factW = max(factW, math.ceil(W.TextWidth(factRow(i).Label, word)) + 8) end
	end
	local valueW = DETAIL_W - DPAD * 2 - factW
	for i, f in ipairs(facts) do
		local row = factRow(i)
		row.Label:SetWidth(factW - 8)
		row.Label:SetText(f[1])
		row.Label:ClearAllPoints()
		row.Label:Show()
		row.Value:SetWidth(valueW)
		if f.rewards then
			-- The label sits on the first tile's text line.
			row.Label:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD, -(y + (REWARD_H - row.Label:GetStringHeight()) / 2))
			row.Value:Hide()
			local names = {}
			for k, e in ipairs(f.rewards) do
				nTiles = nTiles + 1
				local t = rewardTile(nTiles)
				t:SetWidth(valueW)
				t.Name:SetWidth(valueW - REWARD_H - 8)
				t:ClearAllPoints()
				t:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD + factW, -y)
				names[k] = paintReward(t, e)
				shownRewards[#shownRewards + 1] = { kind = e.item and "item" or e.spell and "spell" or "text", id = e.item or e.spell, name = names[k], choice = e.choice and true or nil }
				t:Show()
				y = y + REWARD_H + (k < #f.rewards and REWARD_GAP or 0)
			end
			y = y + FACT_GAP
			shownFacts[i] = { f[1], table.concat(names, ", ") }
		else
			W.Color(row.Value, f[3] or "text")
			if type(f[2]) == "table" then fitZones(row.Value, f[2]) else row.Value:SetText(f[2]) end
			row.Label:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD, -(y + 1))
			row.Value:ClearAllPoints()
			row.Value:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD + factW, -y)
			row.Value:Show()
			y = y + max(row.Value:GetStringHeight(), row.Label:GetStringHeight()) + FACT_GAP
			shownFacts[i] = { f[1], row.Value:GetText() }
		end
	end
	for i = #facts + 1, #d.Facts do
		d.Facts[i].Label:Hide()
		d.Facts[i].Value:Hide()
	end
	for i = nTiles + 1, #d.Rewards do d.Rewards[i]:Hide() end
	if #facts > 0 then y = y - FACT_GAP + 20 end

	-- Credits, and the pack's source.
	local credits, source = P.Credits(g)
	d.Credits:SetShown(credits ~= nil)
	d.Source:SetShown(source ~= nil)
	if credits then
		d.Credits:SetText(credits)
		d.Credits:ClearAllPoints()
		d.Credits:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD, -y)
		y = y + d.Credits:GetStringHeight() + 6
	end
	if source then
		d.Source:SetText("\226\128\156" .. source .. "\226\128\157")
		d.Source:ClearAllPoints()
		d.Source:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD, -y)
		y = y + d.Source:GetStringHeight() + 6
	end
	if credits or source then y = y + 10 end

	-- Pitch, pros, cons.
	local bottom = DPAD + 32 + 16
	d.Scroll:ClearAllPoints()
	d.Scroll:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD, -y)
	d.Scroll:SetPoint("BOTTOMRIGHT", d, "BOTTOMRIGHT", -DPAD + 10, bottom)
	local child = d.Scroll.Child
	child:SetWidth(inner)
	local cy = 0
	-- Put the quest's matching steps first; the guide's pitch follows them.
	local pitch = g.pitch
	if questContext then
		local text = {}
		for _, hit in ipairs(questSteps(g)) do
			text[#text + 1] = string.format(L["Step %d of %d: %s"], hit.index, g.stepCount or 0, hit.step.title or questContext.query)
			if type(hit.step.note) == "string" and hit.step.note ~= "" then text[#text + 1] = hit.step.note end
		end
		if #text > 0 then
			if type(pitch) == "string" and pitch ~= "" then text[#text + 1] = pitch end
			pitch = table.concat(text, "\n\n")
		end
	end
	if type(pitch) == "string" and pitch ~= "" then
		d.Pitch:SetText(pitch)
		d.Pitch:ClearAllPoints()
		d.Pitch:SetPoint("TOPLEFT", child, "TOPLEFT", 0, -cy)
		d.Pitch:Show()
		cy = cy + d.Pitch:GetStringHeight() + 14
	else
		d.Pitch:Hide()
	end
	local function lines(list, items, glyph, color, textColor, size)
		local k = 0
		for i, text in ipairs(type(items) == "table" and items or {}) do
			local b = bullet(list, i, glyph, color, textColor, size)
			b.Glyph:ClearAllPoints()
			b.Glyph:SetPoint("TOPLEFT", child, "TOPLEFT", (12 - size) / 2, -(cy + 2 + (12 - size) / 2))
			b.Text:SetText(text)
			b.Text:SetWidth(inner - 20)
			b.Text:ClearAllPoints()
			b.Text:SetPoint("TOPLEFT", child, "TOPLEFT", 20, -cy)
			b.Glyph:Show()
			b.Text:Show()
			cy = cy + b.Text:GetStringHeight() + 7
			k = i
		end
		for i = k + 1, #list do
			list[i].Glyph:Hide()
			list[i].Text:Hide()
		end
		return k
	end
	local pros = lines(d.Pros, g.pros, "check", "success", "text", 12)
	if pros > 0 and type(g.cons) == "table" and #g.cons > 0 then cy = cy + 4 end
	lines(d.Cons, g.cons, "cross", "textMuted", "textDim", 9)
	W.SetScrollContent(d.Scroll, cy + 8, win:GetHeight() - y - bottom)
	W.ScrollTo(d.Scroll, 0)

	-- Buttons: Load and Open in new tab; on a guide already open, Continue
	-- alone at full width.
	local hasTabs = E and E.OpenTab and true or false
	W.SetButtonText(d.Load, tab and L["Continue"] or L["Load guide"])
	d.Load.psTip = tab and string.format(L["Switch to tab %d."], tabIndex) or L["Load into the current tab."]
	if hasTabs and not tab then
		d.NewTab:Show()
		setButtonWidth(d.NewTab, nil)
		setButtonWidth(d.Load, inner - d.NewTab:GetWidth() - 8)
		setPrimary(d.Load, not newTabMode)
		setPrimary(d.NewTab, newTabMode)
	else
		d.NewTab:Hide()
		setButtonWidth(d.Load, inner)
		setPrimary(d.Load, true)
	end
	P.detail = { id = g.id, art = d.psArt, state = state, tab = tabIndex, label = label, frac = frac, facts = shownFacts,
		reward = #shownRewards > 0 and shownRewards or nil, credits = credits, source = source }
end

---------------------------------------------------------------------------
-- Render
---------------------------------------------------------------------------

-- The categories: one with no guide for any faction is left out (one empty
-- only for this faction stays, faded by ShellNav).
function navItems(counts, total)
	local exists, packs, seen = {}, {}, {}
	for _, g in ipairs(ns.Guides and ns.Guides.List and ns.Guides.List() or {}) do
		local r = packOf(g)
		if not r then
			exists[categoryOf(g)] = true
		elseif not seen[r.id] then
			seen[r.id] = true
			packs[#packs + 1] = r
		end
	end
	local items = { { key = "All", label = L["All guides"], icon = "compact", count = total } }
	for _, c in ipairs(CATEGORIES) do
		if exists[c] then items[#items + 1] = { key = c, label = L[c], icon = CATEGORY_ICON[c], count = counts[c] or 0 } end
	end
	items[#items + 1] = { key = "Favorites", label = L["Favourites"], icon = CATEGORY_ICON.Favorites, count = counts.Favorites or 0 }
	-- Community guides: one entry per shown pack with guides, "<title> · <author>".
	if #packs > 0 then
		table.sort(packs, function(a, b) return (a.title or a.id):lower() < (b.title or b.id):lower() end)
		items[#items + 1] = { key = "", heading = true, label = L["Community guides"] }
		for _, r in ipairs(packs) do
			local label = r.title or r.id
			if r.author then label = label .. DOT .. r.author end
			items[#items + 1] = { key = PACK .. r.id, label = label, icon = "layers", count = counts[PACK .. r.id] or 0 }
		end
	end
	P.categories = {}
	for _, it in ipairs(items) do
		if not it.heading then P.categories[#P.categories + 1] = it.key end
	end
	return items
end

-- A category empty only under this faction says how to reach its guides.
function navTips(filter)
	for _, b in ipairs(win.navButtons) do
		local tip
		if b:IsShown() and b.psEmpty and query == "" and filter ~= "All" and b.psKey ~= "Favorites" then
			tip = string.format(L["None for %s; switch the filter to All."], ns.FactionName(filter))
		end
		b.psTip = tip
		if tip and not b.psPickerTip then
			b.psPickerTip = true
			b:HookScript("OnEnter", W.SimpleTip)
			b:HookScript("OnLeave", W.HideTip)
		end
	end
end

function paintSegments(filter)
	for _, b in ipairs(segButtons) do
		local on = b.psKey == filter
		b.Selected:SetShown(on)
		W.Color(b.Label, on and "text" or "textMuted")
	end
end

