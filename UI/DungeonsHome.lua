local ADDON, ns = ...
setfenv(1, ns._uiDungeonsEnv)
---------------------------------------------------------------------------
-- Build
---------------------------------------------------------------------------

-- The header painting's left side darkens toward the title.
function scrim(parent)
	local t = parent:CreateTexture(nil, "BACKGROUND", nil, 1)
	t:SetTexture(Theme.Media("white"))
	W.Painter(t, function(tex)
		local r, g, b = Theme.Color("scrim")
		if tex.SetGradient and CreateColor then
			tex:SetVertexColor(1, 1, 1, 1)
			tex:SetGradient("HORIZONTAL", CreateColor(r, g, b, 0.72), CreateColor(r, g, b, 0))
		else
			tex:SetVertexColor(r, g, b, 0.4)
		end
	end)
	return t
end

function restoreHeader()
	if not hub then return end
	hub.Title:SetAlpha(1)
	hub.Subtitle:SetAlpha(1)
	hub.Band:Show()
end

function segPaint(f)
	for _, b in ipairs(segs) do
		local on = b.psKey == f
		b.Selected:SetShown(on)
		W.Color(b.Label, on and "text" or "textMuted")
	end
end

function DS.Build(parent, shell)
	if root then return root end
	hub = shell
	root = CreateFrame("Frame", nil, parent)
	root:SetAllPoints(parent)
	local MW = mainWidth()

	home = CreateFrame("Frame", nil, root)
	home:SetAllPoints(root)
	-- The emblem engraving, behind an empty state only (the shell's own sits
	-- under the guide list, hidden while a section shows).
	home.Watermark = home:CreateTexture(nil, "BACKGROUND", nil, -4)
	home.Watermark:SetTexture(Theme.Media("watermark"))
	home.Watermark:SetSize(300, 300)
	home.Watermark:SetPoint("CENTER", home, "CENTER", 0, 0)
	W.Painter(home.Watermark, function(t) t:SetVertexColor(Theme.Wash("watermark")) end)
	home.Watermark:Hide()
	home.Scroll = W.Scroll(home)
	home.Scroll:SetPoint("TOPLEFT", home, "TOPLEFT", 0, 0)
	home.Scroll:SetPoint("BOTTOMRIGHT", home, "BOTTOMRIGHT", -4, 4)
	home.Body = home.Scroll.Child
	home.Body:SetWidth(MW)
	home.Scroll:HookScript("OnVerticalScroll", function() DS.PaintVisible() end)
	home.Scroll:HookScript("OnMouseWheel", function() DS.PaintVisible() end)
	home.EmptyTitle = W.Text(home.Body, "display", "text")
	home.EmptyTitle:SetPoint("TOPLEFT", home.Body, "TOPLEFT", PAD, -28)
	home.EmptyNote = W.Text(home.Body, "note", "textDim")
	home.EmptyNote:SetWordWrap(true)
	home.EmptyNote:SetJustifyV("TOP")
	home.EmptyNote:SetWidth(min(520, MW - PAD * 2))
	home.EmptyNote:SetPoint("TOPLEFT", home.EmptyTitle, "BOTTOMLEFT", 0, -10)

	pg = CreateFrame("Frame", nil, root)
	pg:SetAllPoints(root)
	pg.Scroll = W.Scroll(pg)
	pg.Scroll:SetPoint("TOPLEFT", pg, "TOPLEFT", 0, 0)
	pg.Scroll:SetPoint("BOTTOMRIGHT", pg, "BOTTOMRIGHT", -4, 4)
	pg.Body = pg.Scroll.Child
	pg.Body:SetWidth(MW)
	pg.Scroll:HookScript("OnVerticalScroll", function() DS.PaintQuests() end)
	pg.Scroll:HookScript("OnMouseWheel", function() DS.PaintQuests() end)
	-- Measures objectives before any block is drawn.
	pg.Measure = W.Text(pg, "note", "text")
	pg.Measure:SetWordWrap(true)
	pg.Measure:Hide()
	pg.MeasureStart = W.Text(pg, "label", "text") -- a quest's start line
	pg.MeasureStart:SetWordWrap(true)
	pg.MeasureStart:Hide()

	-- The header painting, in the shell's header band under its close.
	local art = ZoneArt.Create(pg, MW, SH.header, "bg")
	art.psZoom = 1.5
	art:SetPoint("TOPLEFT", hub.Header, "TOPLEFT", 0, 0)
	pg.Art = art
	art.Rule:Hide() -- the tab row draws the line under the band
	art.Scrim = scrim(art.Over)
	art.Scrim:SetPoint("TOPLEFT", art, "TOPLEFT", 0, 0)
	art.Scrim:SetPoint("BOTTOMLEFT", art, "BOTTOMLEFT", 0, 0)
	art.Scrim:SetWidth(floor(MW * 0.62))
	art.Entrance = entranceMarker(art)
	art.Entrance:SetFrameLevel(art.Over:GetFrameLevel() + 1)
	local over = CreateFrame("Frame", nil, art)
	over:SetAllPoints(art)
	over:SetFrameLevel(art.Over:GetFrameLevel() + 2)
	pg.Over = over
	pg.Back = W.IconButton(over, "chevron-left", 24, L["All dungeons"], function() DS.Home() end, 12)
	pg.Back:SetPoint("CENTER", art, "TOPLEFT", GUT, -46)
	pg.Title = textShadow(W.Text(over, "hero", "text"))
	pg.Title:SetPoint("TOPLEFT", art, "TOPLEFT", PAD, -32)
	pg.Forever = W.Chip(over)
	pg.Forever:SetPoint("LEFT", pg.Title, "RIGHT", 12, 0)
	-- The levels the quests here are worth (pageHeader places it after the
	-- Forever chip); hovering opens its panel on the hub (UI/LevelTip.lua).
	pg.XP = UI.LevelTip.Chip(over, hub)
	pg.Sub = textShadow(W.Text(over, "note", "textDim"))
	pg.Sub:SetSpacing(2)
	pg.Sub:SetPoint("TOPLEFT", pg.Title, "BOTTOMLEFT", 0, -8)
	-- The actions, right to left from the band's corner (pageHeader places
	-- them): the primary one is "Hand in the quests" while quests here are
	-- finished, else "Pick up the quests" while there are quests to pick up,
	-- else "Guide me to the entrance".
	pg.HandIn = W.Button(over, L["Hand in the quests"], function() DS.HandIn() end, { primary = true, height = 28, icon = "icon-turnin" })
	pg.HandInQuiet = W.Button(over, L["Hand in the quests"], function() DS.HandIn() end, { height = 28, icon = "icon-turnin" })
	pg.Pickup = W.Button(over, L["Pick up the quests"], function() DS.PickUp() end, { primary = true, height = 28, icon = "icon-accept" })
	pg.PickupQuiet = W.Button(over, L["Pick up the quests"], function() DS.PickUp() end, { height = 28, icon = "icon-accept" })
	pg.PickupNone = W.Button(over, L["Nothing to pick up"], function() DS.PickUp() end, { height = 28 })
	pg.Go = W.Button(over, L["Guide me to the entrance"], function() DS.GuideThere() end, { primary = true, height = 28, icon = "icon-goto" })
	pg.Go.psTip = L["Set the arrow to the entrance."]
	pg.GoQuiet = W.Button(over, L["Guide me to the entrance"], function() DS.GuideThere() end, { height = 28, icon = "icon-goto" })
	pg.GoQuiet.psTip = pg.Go.psTip
	pg.MapBtn = W.Button(over, L["Show on map"], function() DS.ShowOnMap() end, { height = 28 })

	pg.MapArt = ZoneArt.Create(pg.Body, MW - PAD * 2, MAP_H, "bg")
	pg.MapArt.psZoom = 1
	pg.MapArt:SetPoint("TOPLEFT", pg.Body, "TOPLEFT", PAD, -24)
	pg.MapArt.Entrance = entranceMarker(pg.MapArt)
	pg.MapArt.Entrance:SetFrameLevel(pg.MapArt.Over:GetFrameLevel() + 3)
	pg.MapNote = W.Text(pg.Body, "note", "textDim")
	pg.MapNote:SetWordWrap(true)
	pg.MapNote:SetJustifyV("TOP")
	pg.MapNote:SetWidth(MW - PAD * 2)
	pg.MapNote:SetPoint("TOPLEFT", pg.MapArt, "BOTTOMLEFT", 0, -14)
	pg.EmptyTitle = W.Text(pg.Body, "display", "text")
	pg.EmptyNote = W.Text(pg.Body, "note", "textDim")
	pg.EmptyNote:SetWordWrap(true)
	pg.EmptyNote:SetJustifyV("TOP")
	pg.EmptyNote:SetWidth(min(520, MW - PAD * 2))
	pg.EmptyNote:SetPoint("TOPLEFT", pg.EmptyTitle, "BOTTOMLEFT", 0, -10)

	-- The faction filter, at the right of the tab row (the guide menu's
	-- segments), this character's faction first.
	segs = {}
	local order = { "Alliance", "Horde", "All" }
	if UI.PlayerFaction() == "Horde" then order = { "Horde", "Alliance", "All" } end
	local x = -(SH.pad - 12)
	for i = #order, 1, -1 do
		local f = order[i]
		local b = CreateFrame("Button", nil, hub.TabRow)
		b:SetHeight(24)
		b.psKey = f
		W.Hover(b)
		b.Selected = W.Fill(b, "panelAlt", "BACKGROUND", 0)
		b.Label = W.Text(b, "small", "textMuted")
		b.Label:SetPoint("CENTER", b, "CENTER", 0, 0)
		b.Label:SetText(f == "All" and L["All"] or ns.FactionName(f))
		b:SetWidth(floor(b.Label:GetStringWidth() + 20 + 0.5))
		b:SetPoint("RIGHT", hub.TabRow, "RIGHT", x, 0)
		b:SetScript("OnClick", function(self) DS.SetFaction(self.psKey) end)
		b.psTip = L["Faction filter"]
		b:SetScript("OnEnter", W.SimpleTip)
		b:SetScript("OnLeave", W.HideTip)
		b:Hide()
		x = x - b:GetWidth() - 2
		segs[i] = b
	end

	root:SetScript("OnHide", function()
		restoreHeader()
		UI.LevelTip.Hide()
		for _, b in ipairs(segs) do b:Hide() end
	end)
	return root
end

---------------------------------------------------------------------------
-- Home
---------------------------------------------------------------------------

function hidePool(pool, from)
	for i = from or 1, #pool do pool[i]:Hide() end
end

-- Paint the cards in view (and one line past it); the rest wait.
function DS.PaintVisible()
	if not (home and home:IsShown()) then return end
	local top = home.Scroll:GetVerticalScroll() or 0
	local view = viewHeight()
	for i = 1, (home.psCount or 0) do
		local c = cards[i]
		local key = c.psKey
		if c.psPainted ~= key and c.psY < top + view + CARD_H and c.psY + CARD_H > top - CARD_H then
			local d = c.psEntry
			local e = d.entrance
			c.psArt = ZoneArt.Paint(c.Art, e and e.map or d.zone, e and e.x, e and e.y, i)
			c.psPainted = key
			shown.painted = (shown.painted or 0) + 1
		end
	end
end

function navItems(plevel, f)
	local items = {}
	local counts, level, all, raids = {}, 0, 0, 0
	for _, d in ipairs(list()) do
		if d.kind == "raid" then
			raids = raids + 1
		else
			all = all + 1
			local k = bandOf(d.minLevel)
			if k then counts[k] = (counts[k] or 0) + 1 end
			if forYouAs(d, plevel, f) then level = level + 1 end
		end
	end
	items[1] = { key = "level", label = L["For your level"], icon = "qol-target", count = level }
	items[2] = { key = "all", label = L["All dungeons"], icon = "icon-dungeon", count = all }
	for _, b in ipairs(BANDS) do
		items[#items + 1] = { key = b.key, label = bandLabel(b.key), icon = "icon-level", count = counts[b.key] or 0 }
	end
	if raids > 0 then items[#items + 1] = { key = "raid", label = L["Raids"], icon = "icon-kill", count = raids } end
	return items, level
end

function defaultBand(plevel)
	if band then return band end
	local _, level = navItems(plevel, factionKey())
	return level > 0 and "level" or "all"
end

-- A dungeon's facts ("Levels 17–24 · The Barrens · ...", on its card and
-- under its name), broken onto more lines between two facts where one line
-- is too narrow.
function factLines(fs, facts, width)
	local lines, line = {}, nil
	for _, fact in ipairs(facts) do
		local candidate = line and (line .. DOT .. fact) or fact
		if line and W.TextWidth(fs, candidate) > width then
			lines[#lines + 1] = line
			line = fact
		else
			line = candidate
		end
	end
	lines[#lines + 1] = line or ""
	return concat(lines, "\n")
end

local DUNGEON_ICONS = {
	["ragefire-chasm"] = "Interface\\Icons\\Spell_Fire_Fire",
	["deadmines"] = "Interface\\Icons\\INV_Helmet_66",
	["wailing-caverns"] = "Interface\\Icons\\Ability_Druid_ChallangingRoar",
	["shadowfang-keep"] = "Interface\\Icons\\INV_Misc_Head_Worgen_01",
	["blackfathom-deeps"] = "Interface\\Icons\\Spell_Frost_SummonWaterElemental",
	["stormwind-stockade"] = "Interface\\Icons\\Spell_Holy_SealOfProtection",
	["stockade"] = "Interface\\Icons\\Spell_Holy_SealOfProtection",
	["gnomeregan"] = "Interface\\Icons\\INV_Misc_Gear_01",
	["scarlet-monastery"] = "Interface\\Icons\\Spell_Holy_PrayerOfHealing02",
	["razorfen-kraul"] = "Interface\\Icons\\INV_BoarHide_01",
	["razorfen-downs"] = "Interface\\Icons\\Spell_Shadow_LichTouch",
	["zul-farrak"] = "Interface\\Icons\\INV_Misc_MonsterHead_02",
	["maraudon"] = "Interface\\Icons\\Spell_Nature_Earthquake",
	["sunken-temple"] = "Interface\\Icons\\INV_Misc_MonsterHead_03",
	["blackrock-depths"] = "Interface\\Icons\\Spell_Fire_LavaSpawn",
	["blackrock-spire"] = "Interface\\Icons\\Spell_Fire_Fireball02",
	["stratholme"] = "Interface\\Icons\\Spell_Shadow_DeathCoil",
	["scholomance"] = "Interface\\Icons\\Spell_Shadow_Haunting",
}

function paintCard(c, d, f, plevel, key)
	c.psKey, c.psEntry = d.key, d
	c.Name:SetText(d.name)
	if c.Icon then
		local ic = d.icon or DUNGEON_ICONS[d.key] or "Interface\\Icons\\Achievement_Dungeon_ClassicDungeonChampion"
		c.Icon:SetTexture(ic)
	end
	local facts = {}
	local lv = UI.LevelRange(d.minLevel, d.maxLevel)
	if lv then facts[#facts + 1] = lv end
	if d.zoneName then facts[#facts + 1] = d.zoneName end
	local n, a, h = questCount(d, f)
	if f == "All" and a ~= h and a > 0 and h > 0 then
		facts[#facts + 1] = format(L["%d Alliance, %d Horde quests"], a, h)
	elseif f == "All" and a ~= h then
		local k = max(a, h)
		facts[#facts + 1] = k == 1 and (a > 0 and L["1 Alliance quest"] or L["1 Horde quest"]) or format(a > 0 and L["%d Alliance quests"] or L["%d Horde quests"], k)
	elseif n == 0 then
		facts[#facts + 1] = f == "All" and L["No quests known"] or format(L["No %s quests"], ns.FactionName(f))
	else
		facts[#facts + 1] = n == 1 and L["1 quest"] or format(L["%d quests"], n)
	end
	local isMyLevel = forYou(d, plevel)
	if c.LevelPlaque then
		c.LevelPlaque:SetShown(isMyLevel and true or false)
	end
	if c.Yours then c.Yours:Hide() end
	if c.Forever then c.Forever:Hide() end
	local statsW = c:GetWidth() - 70 - 130
	c.Stats:SetWidth(max(60, statsW))
	c.Stats:SetText(factLines(c.Stats, facts, statsW))
	W.Color(c.Stats, n > 0 and "textDim" or "textMuted")
end

function renderHome(plevel)
	home:Show()
	pg:Hide()
	restoreHeader()
	hub.psKeepTabRow = true
	W.ShellTabs(hub, nil)
	hub.psKeepTabRow = nil
	local f = factionKey()
	local key = defaultBand(plevel)
	local rows = entries(key, plevel, f)
	-- The header: where you are and what the grid holds.
	local title, sub
	if filter ~= "" then
		title = L["Search"]
		sub = #rows == 1 and format(L["1 result for \226\128\156%s\226\128\157"], filter) or format(L["%d results for \226\128\156%s\226\128\157"], #rows, filter)
	elseif key == "level" then
		title = L["For your level"]
		sub = format(#rows == 1 and L["Level %d  \194\183  1 dungeon to run now"] or L["Level %d  \194\183  %d dungeons to run now"], plevel, #rows)
	elseif key == "raid" then
		title = L["Raids"]
		sub = #rows == 1 and L["1 raid"] or format(L["%d raids"], #rows)
	elseif key == "all" then
		title = L["Dungeons"]
		sub = format(L["%d dungeons  \194\183  every quest, where it starts and what it gives"], #rows)
	else
		title = format(L["Levels %s"], bandLabel(key))
		sub = #rows == 1 and L["1 dungeon"] or format(L["%d dungeons"], #rows)
	end
	W.ShellTitle(hub, title, sub)
	home.Watermark:SetShown(#rows == 0)

	local MW = mainWidth()
	local cw = floor((MW - CARD_X * 2 - CARD_GAP) / 2)
	local y = 20
	local nh, col, lastBand = 0, 0, nil
	for i, d in ipairs(rows) do
		-- Under All, the level bands head their cards.
		if key == "all" and filter == "" then
			local b = bandOf(d.minLevel) or "other"
			if b ~= lastBand then
				if col == 1 then y = y + CARD_H + CARD_GAP end
				col = 0
				nh = nh + 1
				local h = head(nh)
				h:ClearAllPoints()
				h:SetPoint("TOPLEFT", home.Body, "TOPLEFT", PAD, -(y - 20))
				h:SetWidth(MW - PAD * 2)
				W.SetSection(h, b == "other" and L["Level not known"] or format(L["Levels %s"], bandLabel(b)))
				h:Show()
				y = y + 34
				lastBand = b
			end
		end
		local c = card(i)
		paintCard(c, d, f, plevel, filter ~= "" and "search" or key)
		c.psY = y
		c:ClearAllPoints()
		c:SetPoint("TOPLEFT", home.Body, "TOPLEFT", CARD_X + col * (cw + CARD_GAP), -y)
		c:Show()
		if col == 1 then
			y = y + CARD_H + CARD_GAP
			col = 0
		else
			col = 1
		end
	end
	if col == 1 then y = y + CARD_H + CARD_GAP end
	home.psCount = #rows
	hidePool(cards, #rows + 1)
	hidePool(heads, nh + 1)
	local empty = #rows == 0
	home.EmptyTitle:SetShown(empty)
	home.EmptyNote:SetShown(empty)
	if empty then
		home.EmptyTitle:SetText(filter ~= "" and L["No dungeon by that name"] or L["Nothing here yet"])
		home.EmptyNote:SetText(filter ~= "" and L["Try part of the name, such as \226\128\156caverns\226\128\157."] or L["No dungeon in this band is known yet."])
		y = 120
	end
	W.SetScrollContent(home.Scroll, y + 8)
	shown.view, shown.band, shown.cards, shown.heads, shown.painted = "home", key, #rows, nh, 0
	DS.PaintVisible()
end

---------------------------------------------------------------------------
-- A dungeon page
---------------------------------------------------------------------------

function pageHeader(d)
	local art = pg.Art
	local e = d.entrance
	local painted = ZoneArt.Paint(art, e and e.map or d.zone, e and e.x, e and e.y, 1)
	if painted and e and e.map then
		placeOn(art.Entrance, art, e.x, e.y)
		art.Entrance:Show()
	else
		art.Entrance:Hide()
	end
	art:Show()
	hub.Band:Hide()
	hub.Title:SetAlpha(0)
	hub.Subtitle:SetAlpha(0)
	hub.Close:SetFrameLevel(pg.Over:GetFrameLevel() + 2)
	local facts = {}
	local lv = UI.LevelRange(d.minLevel, d.maxLevel)
	if lv then facts[#facts + 1] = format(L["Levels %s"], lv) end
	local z = d.zoneName or (e and mapName(e.map))
	if z then facts[#facts + 1] = z end
	if d.players then facts[#facts + 1] = format(L["%d players"], d.players) end
	if (d.bosses or 0) > 0 then facts[#facts + 1] = d.bosses == 1 and L["1 boss"] or format(L["%d bosses"], d.bosses) end
	local sub = concat(facts, DOT)
	W.ShellTitle(hub, d.name, sub)
	pg.Title:SetText(d.name)
	pg.Sub:SetText(sub)
	local MW = mainWidth()
	if d.forever then
		W.SetChip(pg.Forever, L["Forever"])
	else
		pg.Forever:Hide()
	end
	-- The levels chip: what the quests still to do are worth, after the
	-- Forever chip; none at 60 or with no XP to count.
	local xs = D().QuestXP and D().QuestXP(d.key)
	if UI.LevelTip.Set(pg.XP, xs, { head = L["If you finish the quests here"], need = L["You are level %d. Level %d is recommended for the quests here; from there:"] }) then
		pg.XP:ClearAllPoints()
		if d.forever then
			pg.XP:SetPoint("LEFT", pg.Forever, "RIGHT", 6, 0)
		else
			pg.XP:SetPoint("LEFT", pg.Title, "RIGHT", 12, 0)
		end
	end
	-- The actions, right to left: the primary first.
	local go = e ~= nil and ns.Nav ~= nil
	local Dg, LKm = D(), ns.Lookup
	local plan = LKm and LKm.Guide and Dg.PickupPlan and Dg.PickupPlan(d.key) or nil
	local hplan = LKm and LKm.Guide and Dg.HandinPlan and Dg.HandinPlan(d.key) or nil
	local take = plan and #plan.take or 0
	local hand = hplan and #hplan.hand or 0
	local logged = hplan and hand + #hplan.unfinished + #hplan.inside + #hplan.unplaced or 0
	local lead = hand > 0 and "handin" or take > 0 and "pickup" or "go"
	local side = SIDE[UI.PlayerFaction() or ""]
	local none = plan ~= nil and take == 0 and #Dg.Quests(d.key, side) > 0 and lead == "go"
	if take > 0 then
		local lines = { format(take == 1 and L["A guide to the 1 quest here you can take, with what comes before it, ending at the entrance."]
			or L["A guide to the %d quests here you can take, with what comes before them, ending at the entrance."], take) }
		local carried = #plan.carried
		if carried > 0 then lines[#lines + 1] = carried == 1 and L["1 more is in your log already."] or format(L["%d more are in your log already."], carried) end
		lines[#lines + 1] = L["It opens in a new tab."]
		for _, b in ipairs({ pg.Pickup, pg.PickupQuiet }) do b.psTip, b.psTipLines = L["Pick up the quests"], lines end
	elseif none then
		pg.PickupNone.psTip, pg.PickupNone.psTipLines = L["Nothing to pick up"], { DS.NothingText(plan) }
	end
	if logged > 0 then
		local lines
		if hand > 0 then
			lines = { format(hand == 1 and L["A guide to where the 1 finished quest here is turned in, and the follow-ups it opens there."]
				or L["A guide to where the %d finished quests here are turned in, and the follow-ups they open there."], hand) }
			if logged > hand then lines[#lines + 1] = Dg.HandinText(hplan) end
			lines[#lines + 1] = L["It opens in a new tab."]
		else
			lines = { Dg.HandinText(hplan) }
		end
		for _, b in ipairs({ pg.HandIn, pg.HandInQuiet }) do b.psTip, b.psTipLines = L["Hand in the quests"], lines end
	end
	pg.HandIn:SetShown(lead == "handin")
	pg.HandInQuiet:SetShown(lead ~= "handin" and logged > 0)
	pg.Pickup:SetShown(lead == "pickup")
	pg.PickupQuiet:SetShown(lead == "handin" and take > 0)
	pg.PickupNone:SetShown(none)
	pg.Go:SetShown(go and lead == "go")
	pg.GoQuiet:SetShown(go and lead ~= "go")
	pg.MapBtn:SetShown(e ~= nil and ns.Compat.CanOpenWorldMap())
	-- In priority order; three at most, so the facts keep their room (the
	-- Map tab shows the entrance too).
	local order = lead == "handin" and { pg.HandIn, pg.PickupQuiet, pg.GoQuiet, pg.MapBtn }
		or lead == "pickup" and { pg.Pickup, pg.HandInQuiet, pg.GoQuiet, pg.MapBtn }
		or { pg.Go, pg.HandInQuiet, pg.PickupNone, pg.MapBtn }
	local prev, used, n = nil, 0, 0
	for _, b in ipairs(order) do
		if b:IsShown() and n == 3 then b:Hide() end
		if b:IsShown() then
			n = n + 1
			b:ClearAllPoints()
			if prev then
				b:SetPoint("RIGHT", prev, "LEFT", -8, 0)
				used = used + 8
			else
				b:SetPoint("BOTTOMRIGHT", art, "BOTTOMRIGHT", -(PAD - 12), 14)
			end
			used = used + b:GetWidth()
			prev = b
		end
	end
	pg.Title:SetWidth(min(floor(pg.Title:GetStringWidth() + 1), MW - PAD * 2 - 140))
	local subW = MW - PAD - 24 - used - (PAD - 12)
	pg.Sub:SetWidth(subW)
	pg.Sub:SetText(factLines(pg.Sub, facts, subW))
end

-- Why a page has nothing to pick up, in one sentence.
function DS.NothingText(plan)
	local text = L["Nothing to pick up before the run: the quests here for you are done, already in your log, or start inside the dungeon or later in their chain."]
	local later = plan and plan.later or 0
	if later > 0 then
		text = text .. " " .. (later == 1 and L["1 more opens at a later level."] or format(L["%d more open at a later level."], later))
	end
	return text
end

function emptyPage(title, text, y)
	pg.EmptyTitle:ClearAllPoints()
	pg.EmptyTitle:SetPoint("TOPLEFT", pg.Body, "TOPLEFT", PAD, -y)
	pg.EmptyTitle:SetText(title)
	pg.EmptyTitle:Show()
	pg.EmptyNote:SetText(text)
	pg.EmptyNote:Show()
	return y + 24 + 10 + pg.EmptyNote:GetStringHeight() + 24
end

-- Where each part of a quest block goes, from the data alone (the objective
-- measured on one shared string), so every block is placed before any is
-- drawn and only the ones in view are.
function tilesPer()
	return max(1, floor((questWidth() - VALUE_X - PAD + TILE_GAP) / (TILE_W + TILE_GAP)))
end

function tilesHeight(n)
	if n == 0 then return 0 end
	local per = tilesPer()
	return floor((n + per - 1) / per) * (TILE_H + 6) - 6
end

-- Where a quest starts, and the line that says so: the giver or object, or
-- the item that starts it with the boss it drops from. -> point, text
function startLine(q, key)
	local s = startOf(q, ns.PlayerPoint())
	if q.startItem and not (s and s.kind == "item") then s = { kind = "item", id = q.startItem.id, name = q.startItem.name, map = s and s.map, x = s and s.x, y = s and s.y, f = s and s.f, inside = s and s.inside } end
	local text = pointText(s)
	if s and s.kind == "item" and key then
		-- An item that starts it: the boss it drops from, when one does.
		for _, boss in ipairs(D().Bosses(key)) do
			for _, t in ipairs(boss.quests or {}) do
				if t.id == q.id and t.how == "starts" then
					text = "|c" .. Theme.Hex("item") .. ((type(s.id) == "number" and ns.Names.Item(s.id)) or s.name or "") .. "|r|c" .. Theme.Hex("textMuted") .. DOT .. "|r|c" .. Theme.Hex("textDim") .. format(L["drops from %s"], boss.name) .. "|r"
				end
			end
		end
	end
	return s, text
end

function plan(q, key)
	local VW = questWidth() - VALUE_X - PAD
	local p = {}
	local y = 74
	p.objective = D().ObjectiveText(q)
	if p.objective then
		p.objective = "\226\128\162  " .. p.objective:gsub("\n", "\n\226\128\162  ")
		p.obj = y
		local m = pg.Measure
		m:SetWidth(min(VW, 620))
		m:SetText(p.objective)
		y = y + max(16, m:GetStringHeight()) + 12
	end
	p.starts = y
	-- The start line wraps where it is too long for its half (paintQuest).
	local m = pg.MeasureStart
	m:SetWidth(floor((VW - 16) / 2) - 24)
	local _, startText = startLine(q, key)
	m:SetText(startText)
	y = y + max(22, 5 + m:GetStringHeight() + 5) + 12
	local nChain = #(q.chain or {})
	if nChain > 0 then
		p.chain = y
		y = y + nChain * CHAIN_H + 10
	end
	local rw = q.rewards or {}
	local nChoice, nGet = 0, 0
	for _, it in ipairs(rw.items or {}) do if it.choice then nChoice = nChoice + 1 else nGet = nGet + 1 end end
	if nChoice > 0 then
		p.choose = y
		y = y + tilesHeight(nChoice) + 10
	end
	if nGet > 0 then
		p.get = y
		y = y + tilesHeight(nGet) + 10
	end
	p.extras = rewardExtras(rw)
	-- The chain's worth, while one of its quests is still to do.
	local C, open = ns.Compat, false
	for _, cid in ipairs(q.chain or {}) do
		if not (C and C.IsQuestCompleted and C.IsQuestCompleted(cid)) then open = true end
	end
	local cs = open and D().ChainXP and D().ChainXP(key, q.id) or nil
	p.chainXP = cs and not cs.maxed and cs.xp > 0 and cs or nil
	if #p.extras > 0 or p.chainXP then
		p.more = y
		y = y + W.CHIP_H + 4
	end
	p.h = y + 14
	return p
end

-- Item tiles across the value column at y in the block; -> how many.
function placeTiles(b, n0, items, choice, y)
	local per = tilesPer()
	local n = 0
	for _, it in ipairs(items) do
		if (it.choice and true or false) == choice then
			local t = tile(b, n0 + n + 1)
			local col, line = n % per, floor(n / per)
			t:ClearAllPoints()
			t:SetPoint("TOPLEFT", b, "TOPLEFT", VALUE_X + col * (TILE_W + TILE_GAP), -(y + line * (TILE_H + 6)))
			t.psID = it.id
			local icon = itemIcon(it.id)
			if icon then
				t.Icon:SetTexture(icon)
				t.Icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
				W.Uncolor(t.Icon)
				t.Icon:SetVertexColor(1, 1, 1, 1)
			else
				t.Icon:SetTexture(Theme.Media("icon-collect"))
				t.Icon:SetTexCoord(0, 1, 0, 1)
				W.Color(t.Icon, "textMuted")
			end
			local qr, qg, qb = qualityRaw(it.quality)
			if qr then
				Theme.Border(t.Well, qr, qg, qb, 0.9)
				paintRGB(t.Name, lift(qr, qg, qb))
			else
				local ir, ig, ib = Theme.Wash("border")
				Theme.Border(t.Well, ir, ig, ib, 0.6)
				W.Color(t.Name, "item")
			end
			local name = it.name or (L["Item"] .. " " .. tostring(it.id))
			if (it.count or 1) > 1 then name = format(L["%d x %s"], it.count, name) end
			t.Name:SetText(name)
			t:Show()
			n = n + 1
		end
	end
	return n
end

function labelAt(fs, y)
	if not y then
		fs:Hide()
		return
	end
	fs:ClearAllPoints()
	fs:SetPoint("TOPLEFT", fs:GetParent(), "TOPLEFT", PAD, -y)
	fs:Show()
end

-- One quest block at top in the body, laid out by its plan p.
function paintQuest(b, q, p, top, plevel, key)
	local MW = questWidth()
	local VW = MW - VALUE_X - PAD
	b:ClearAllPoints()
	b:SetPoint("TOPLEFT", pg.Body, "TOPLEFT", CARD_X, -top)
	b:SetWidth(MW)
	b:SetHeight(p.h)
	b.psQuest = q.id
	local state = questState(q, plevel)
	local g = STATE_GLYPH[state]
	b.Glyph:SetTexture(Theme.Media(g[1]))
	W.Color(b.Glyph, g[2])
	b.Title:SetText(q.title or (L["Quest"] .. " " .. tostring(q.id)))
	-- Done: the muted text colour (held legible), its chip says so; else the
	-- quest's difficulty colour, as on the Attunement tab and in the quest log.
	if state == "done" then W.Color(b.Title, "textMuted") else paintRGB(b.Title, difficulty(q.level, plevel)) end
	-- Right of the title line: the state, then the faction mark.
	local right = PAD
	local text, kind = stateChip(state, q)
	if text then
		local w = W.SetChip(b.State, text, kind)
		b.State:ClearAllPoints()
		b.State:SetPoint("RIGHT", b, "TOPRIGHT", -right, -28)
		right = right + w + 6
	else
		b.State:Hide()
	end
	if q.faction then
		local w = W.SetChip(b.Faction, ns.FactionName(q.faction == "A" and "A" or "H"))
		b.Faction:ClearAllPoints()
		b.Faction:SetPoint("RIGHT", b, "TOPRIGHT", -right, -28)
		right = right + w + 6
	else
		b.Faction:Hide()
	end
	b.Title:SetWidth(max(80, min(floor(b.Title:GetStringWidth() + 1), MW - PAD - right - 12)))
	-- Level, requirement and flags.
	local meta = {}
	if q.level then meta[#meta + 1] = format(L["Level %d"], q.level) end
	if q.minLevel then meta[#meta + 1] = format(L["Requires level %d"], q.minLevel) end
	if q.classes and #q.classes > 0 then meta[#meta + 1] = format(L["%s only"], UI.ClassList(q.classes)) end
	if q.inside then meta[#meta + 1] = L["Picked up inside the dungeon"] end
	if q.shareable == true then meta[#meta + 1] = L["Shareable"] elseif q.shareable == false then meta[#meta + 1] = L["Not shareable"] end
	b.Meta:SetText(concat(meta, DOT))
	b.Meta:SetWidth(MW - PAD * 2)
	-- Objective.
	labelAt(b.ObjLabel, p.obj and p.obj + 1)
	if p.obj then
		b.Obj:ClearAllPoints()
		b.Obj:SetPoint("TOPLEFT", b, "TOPLEFT", VALUE_X, -p.obj)
		b.Obj:SetWidth(min(VW, 620))
		b.Obj:SetText(p.objective)
		b.Obj:Show()
	else
		b.Obj:Hide()
	end
	-- Starts and ends, side by side.
	local y = p.starts
	local half = floor((VW - 16) / 2)
	local s, startText = startLine(q, key)
	labelAt(b.StartLabel, y + 4)
	b.StartPin:ClearAllPoints()
	b.StartPin:SetPoint("TOPLEFT", b, "TOPLEFT", VALUE_X - 4, -y)
	-- The arrow goes to the first prerequisite still to do, else the giver.
	local Dg = D()
	local target, tlabel, first, turnIn
	if key and Dg.GiverTarget then target, tlabel, first, turnIn = Dg.GiverTarget(key, q.id) end
	if not first then target, tlabel = s, s and s.name end
	local go = canGuide(target)
	b.StartPin.psPoint, b.StartPin.psLabel = target, tlabel
	W.SetIconState(b.StartPin, false, go)
	local link = b.StartLink
	link.psPoint, link.psLabel = target, tlabel
	link:SetEnabled(go)
	if not go then
		link.psTip, link.psTipLines = L["Not known"], { L["Where this quest starts is not known yet."] }
	elseif first then
		link.psTip = format(L["Set the arrow to %s"], tlabel or L["the quest giver"])
		link.psTipLines = { format(turnIn and L["First turn in %s, which comes before this quest."] or L["First pick up %s, which comes before this quest."], first) }
	else
		link.psTip = format(L["Set the arrow to %s"], tlabel or L["the quest giver"])
		link.psTipLines = { L["Where this quest starts."] }
	end
	b.StartPin.psTip, b.StartPin.psTipLines = link.psTip, link.psTipLines
	b.Start:ClearAllPoints()
	-- Its first line level with the pin's middle; a long one ("… drops from
	-- <boss>") wraps under it, and plan made the room.
	b.Start:SetPoint("TOPLEFT", b.StartPin, "TOPRIGHT", 4, -5)
	b.Start:SetWidth(half - 24)
	b.Start:SetText(startText)
	link:ClearAllPoints()
	link:SetPoint("LEFT", b.StartPin, "LEFT", 0, 0)
	link:SetWidth(26 + min(half - 24, floor(b.Start:GetStringWidth() + 1)))
	link:Show()
	local fin = q.finish
	b.EndLabel:ClearAllPoints()
	b.EndLabel:SetPoint("TOPLEFT", b, "TOPLEFT", VALUE_X + half + 16, -(y + 4))
	b.EndPin:ClearAllPoints()
	b.EndPin:SetPoint("TOPLEFT", b, "TOPLEFT", VALUE_X + half + 16 + 40, -y)
	b.EndPin.psPoint, b.EndPin.psLabel = fin, fin and fin.name
	W.SetIconState(b.EndPin, false, canGuide(fin))
	b.End:ClearAllPoints()
	b.End:SetPoint("LEFT", b.EndPin, "RIGHT", 4, 0)
	b.End:SetWidth(half - 40 - 24)
	b.End:SetText(pointText(fin))
	-- The chain before it, oldest first, each with its own pin.
	local nChain = 0
	local nextStep = false
	labelAt(b.ChainLabel, p.chain and p.chain + 6)
	if p.chain then
		y = p.chain
		for _, id in ipairs(q.chain) do
			local cq = D().Quest(key, id) or { id = id }
			nChain = nChain + 1
			local r = chainRow(b, nChain)
			r:ClearAllPoints()
			r:SetPoint("TOPLEFT", b, "TOPLEFT", VALUE_X - 4, -y)
			r:SetWidth(VW + 4)
			local cs = questState(cq, plevel)
			local marked = cs ~= "done" and not nextStep
			if marked then nextStep = true end
			if marked then r.Highlight:Show() else r.Highlight:Hide() end
			if cs == "done" then
				r.Glyph:SetTexture(Theme.Media("check"))
				r.Glyph:SetSize(12, 12)
				W.Color(r.Glyph, "success")
				r.Glyph:Show()
				r.Number:Hide()
			else
				r.Glyph:Hide()
				r.Number:SetText(tostring(nChain))
				r.Number:Show()
			end
			r.Title:SetText(cq.title or (L["Quest"] .. " " .. tostring(id)))
			-- The next step is marked by its ground; titles keep the difficulty colour.
			if cs == "done" then W.Color(r.Title, "textMuted") else paintRGB(r.Title, difficulty(cq.level, plevel)) end
			local sub = {}
			if cq.level then sub[#sub + 1] = format(L["Level %d"], cq.level) end
			local st = startOf(cq, ns.PlayerPoint())
			if st and st.name then
				local z = st.inside and L["inside the dungeon"] or mapName(st.map)
				sub[#sub + 1] = z and format(L["%s, %s"], st.name, z) or st.name
			end
			r.Sub:SetText(concat(sub, DOT))
			local room = VW + 4 - 24 - 30
			local tw = min(floor(r.Title:GetStringWidth() + 1), floor(room * 0.55))
			r.Title:SetWidth(tw)
			r.Sub:SetWidth(max(40, min(floor(r.Sub:GetStringWidth() + 1), room - tw - 10)))
			r.Pin.psPoint, r.Pin.psLabel = st, st and st.name
			r.psQuest, r.psLevel = cq, plevel
			W.SetIconState(r.Pin, false, canGuide(st))
			r:Show()
			y = y + CHAIN_H
		end
	end
	hidePool(b.Chains, nChain + 1)
	-- Rewards: the choice, the items you get, then XP, money and reputation.
	local items = (q.rewards or {}).items or {}
	local nTiles = 0
	labelAt(b.ChooseLabel, p.choose and p.choose + 10)
	if p.choose then nTiles = nTiles + placeTiles(b, nTiles, items, true, p.choose) end
	labelAt(b.GetLabel, p.get and p.get + 10)
	if p.get then nTiles = nTiles + placeTiles(b, nTiles, items, false, p.get) end
	hidePool(b.Tiles, nTiles + 1)
	labelAt(b.MoreLabel, p.more and p.more + 4 or nil)
	local x = VALUE_X
	for i, e in ipairs(p.extras) do
		local c = chip(b, i)
		local w = W.SetChip(c, e, "neutral")
		c:ClearAllPoints()
		c:SetPoint("TOPLEFT", b, "TOPLEFT", x, -p.more)
		x = x + w + 6
	end
	hidePool(b.Chips, #p.extras + 1)
	local cs = p.chainXP
	local cw = UI.LevelTip.Set(b.ChainXP, cs, cs and {
		head = L["If you finish this quest and the chain before it"],
		need = L["You are level %d. Level %d is recommended for the first quest in this chain; from there:"],
		chip = format(L["%s XP with its chain"], thousands(cs.xp)),
	} or nil)
	if cw then
		b.ChainXP:ClearAllPoints()
		b.ChainXP:SetPoint("TOPLEFT", b, "TOPLEFT", x, -p.more)
	end
	b:Show()
end

