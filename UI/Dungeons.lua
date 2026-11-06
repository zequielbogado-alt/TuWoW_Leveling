local ADDON, ns = ...
setfenv(1, ns._uiDungeonsEnv)
-- The current quests pass: the list, each block's plan and top, which
-- blocks are drawn.
qpass = { quests = {}, plans = {}, tops = {}, painted = {}, key = nil, plevel = 1 }

-- Draw the blocks in view (and a screen past it); the rest wait.
function DS.PaintQuests()
	if not (pg and pg:IsShown() and tab == "quests" and qpass.key) then return end
	local top = pg.Scroll:GetVerticalScroll() or 0
	local view = viewHeight()
	local n = 0
	for i, q in ipairs(qpass.quests) do
		local y, p = qpass.tops[i], qpass.plans[i]
		if not qpass.painted[i] and y < top + view * 2 and y + p.h > top - view / 2 then
			paintQuest(block(i), q, p, y, qpass.plevel, qpass.key)
			qpass.painted[i] = true
		end
		if qpass.painted[i] then n = n + 1 end
	end
	shown.blocks = n
end

function renderQuests(key, f, plevel)
	local side = SIDE[f]
	local qs = D().Quests(key, side)
	hidePool(blocks)
	qpass.quests, qpass.key, qpass.plevel = qs, key, plevel
	local plans, tops = {}, {}
	local y = CARD_GAP
	for i, q in ipairs(qs) do
		local p = plan(q, key)
		plans[i], tops[i] = p, y
		y = y + p.h + CARD_GAP
	end
	qpass.plans, qpass.tops, qpass.painted = plans, tops, {}
	if #qs == 0 then
		local other = 0
		if side then other = #D().Quests(key, side == "A" and "H" or "A") end
		local text = L["No quests are known for this dungeon yet."]
		if other > 0 then
			local them = ns.FactionName(side == "A" and "H" or "A")
			text = other == 1 and format(L["1 quest here is for the %s. Switch the filter to All to see it."], them)
				or format(L["%d quests here are for the %s. Switch the filter to All to see them."], other, them)
		end
		y = emptyPage(L["No quests for you here"], text, 28)
	end
	shown.quests = #qs
	return y + 16
end

TIE = {
	kill = { "icon-kill", L["Kill it for %s"] },
	item = { "icon-collect", L["Drops %s for %s"] },
	starts = { "icon-accept", L["Drops %s, which starts %s"] },
	involved = { "icon-note", L["Part of %s"] },
}

BOSS_ROLE = { rare = L["Rare"], event = L["Event"], optional = L["Optional"] }

-- The facts beside a boss's name: level, Chest (an object boss, under its
-- own key: "Chest" is also the gear slot), its role.
function bossFacts(boss)
	local t = {}
	if boss.level then t[#t + 1] = format(L["Level %d"], boss.level) end
	if boss.object then t[#t + 1] = ns.LC("boss", "Chest") end
	if BOSS_ROLE[boss.role] then t[#t + 1] = BOSS_ROLE[boss.role] end
	return concat(t, DOT)
end

function renderBosses(key, f, plevel)
	local side = SIDE[f]
	local MW = mainWidth()
	local y, nt = 0, 0
	local bosses = D().Bosses(key)
	for i, boss in ipairs(bosses) do
		local r = bossRow(i)
		r:ClearAllPoints()
		r:SetPoint("TOPLEFT", pg.Body, "TOPLEFT", 0, -y)
		r:SetWidth(MW)
		r.Num:SetText(tostring(boss.order or i))
		r.Name:SetText(boss.name or L["Boss"])
		r.Level:SetText(bossFacts(boss))
		local h = 48
		local n = 0
		for _, t in ipairs(boss.quests or {}) do
			local q = D().Quest(key, t.id)
			if q and (not side or not q.faction or q.faction == side) then
				nt = nt + 1
				n = n + 1
				local row = tie(nt)
				local spec = TIE[t.how] or TIE.involved
				row.Glyph:SetTexture(Theme.Media(spec[1]))
				local qh = "|c" .. hexOf(difficulty(q.level, plevel)) .. (q.title or "") .. "|r"
				local ih = "|c" .. Theme.Hex("item") .. (t.itemName or L["an item"]) .. "|r"
				if t.how == "item" or t.how == "starts" then
					row.Text:SetText(format(spec[2], ih, qh))
				else
					row.Text:SetText(format(spec[2], qh))
				end
				row.psQuest = q.id
				row:ClearAllPoints()
				row:SetPoint("TOPLEFT", pg.Body, "TOPLEFT", PAD - 4, -(y + h - 6))
				row:SetWidth(MW - PAD * 2 + 4)
				row.Text:SetWidth(MW - PAD * 2 - 24)
				row:Show()
				h = h + TIE_H
			end
		end
		if n > 0 then h = h + 10 end
		r:SetHeight(h)
		r:Show()
		y = y + h
	end
	hidePool(bossRows, #bosses + 1)
	hidePool(ties, nt + 1)
	if #bosses == 0 then
		y = emptyPage(L["No bosses known yet"], L["The sources Polestar reads list no bosses for this dungeon."], 28)
	end
	shown.bosses, shown.ties = #bosses, nt
	return y + 16
end

function renderMap(key, d, f)
	local art = pg.MapArt
	local e = d.entrance
	local side = SIDE[f]
	local painted = e and ZoneArt.Paint(art, e.map, e.x, e.y, 1)
	art:Show()
	pg.MapNote:Show()
	local n = 0
	if painted then
		placeOn(art.Entrance, art, e.x, e.y)
		art.Entrance:Show()
		-- The quest givers on the entrance's zone, one marker per giver.
		local byGiver, order = {}, {}
		for _, q in ipairs(D().Quests(key, side)) do
			local s = startOf(q, e)
			if s and s.map == e.map and s.x and s.y and not s.inside then
				local id = (s.kind or "") .. tostring(s.id or s.name)
				local gq = byGiver[id]
				if not gq then
					gq = { point = s, lines = {} }
					byGiver[id] = gq
					order[#order + 1] = gq
				end
				gq.lines[#gq.lines + 1] = q.title
			end
		end
		for _, gq in ipairs(order) do
			n = n + 1
			local g = giver(n)
			placeOn(g, art, gq.point.x, gq.point.y)
			g.psName, g.psLines = gq.point.name, gq.lines
			g:Show()
		end
	else
		art.Entrance:Hide()
		if not e then ZoneArt.Paint(art, nil, nil, nil, 1) end
	end
	hidePool(givers, n + 1)
	if e then
		local z = mapName(e.map) or d.zoneName or ""
		local text = format(L["The entrance, on %s (%.1f, %.1f)."], z, e.x or 0, e.y or 0)
		if n > 0 then text = text .. " " .. (n == 1 and L["The quest giver nearby is marked; hover for their quests."] or format(L["The %d quest givers nearby are marked; hover for their quests."], n)) end
		pg.MapNote:SetText(text)
	else
		pg.MapNote:SetText(L["The entrance of this dungeon is not known yet."])
	end
	shown.map, shown.givers = e and "entrance" or "none", n
	return 24 + MAP_H + 14 + pg.MapNote:GetStringHeight() + 24
end

---------------------------------------------------------------------------
-- Attunement: what lets a character in or opens the doors, with this
-- character's progress (Dungeons/Attune.lua) and "Guide me through it"
---------------------------------------------------------------------------

ATT_GLYPH = {
	done = { "check", "success" }, ready = { "icon-turnin", "success" }, log = { "icon-turnin", "quest" },
	open = { "icon-accept", "quest" }, locked = { "circle", "textMuted" }, level = { "lock", "textMuted" },
	rep = { "lock", "textMuted" }, na = { "circle", "textMuted" }, skip = { "circle", "textMuted" },
}
-- An open step that is no quest wears its own verb's glyph.
ITEM_GLYPH = { drop = "icon-kill", object = "icon-interact", rep = "icon-rep", gift = "icon-talk" }
ATT_KIND = { attunement = L["Attunement"], key = L["Key"], item = L["Item"] }

function colored(token, text)
	return "|c" .. Theme.Hex(token) .. (text or L["Not known"]) .. "|r"
end

-- The client's word for a standing; Neutral when the step names none.
function standingName(n)
	return ns.StandingName(n) or ns.StandingName(4)
end

-- A step -> its line and the point its click sets the arrow to.
function stepLine(s, plevel)
	if s.kind == "quest" then
		return "|c" .. hexOf(difficulty(s.level, plevel)) .. (s.title or "") .. "|r", s.start
	elseif s.kind == "drop" then
		return format(L["%s from %s"], colored("item", s.item.name), colored("npc", s.npc and s.npc.name)), s.npc
	elseif s.kind == "object" then
		return format(L["%s from %s"], colored("item", s.item.name), colored("object", s.object and s.object.name)), s.object
	elseif s.kind == "rep" then
		return format(L["Reach %s with %s"], standingName(s.standing), colored("faction", factionName(s.faction, s.name))), nil
	elseif s.kind == "gift" then
		return format(L["%s gives you %s"], colored("npc", s.npc and s.npc.name), colored("item", s.item.name)), s.npc
	end
	return "", nil
end

-- The words after a step: its state, then where (a quest's giver, a drop's chance and instance).
function stepSub(s, state)
	local t = {}
	if state == "done" then t[#t + 1] = L["Done"]
	elseif state == "ready" then t[#t + 1] = L["Ready to turn in"]
	elseif state == "log" then t[#t + 1] = L["In your log"]
	elseif state == "locked" then t[#t + 1] = L["After the steps before it"]
	elseif state == "level" then t[#t + 1] = format(L["From level %d"], s.minLevel or 0)
	elseif state == "rep" and s.rep then t[#t + 1] = format(L["Needs %s with %s"], standingName(s.rep.standing), factionName(s.rep.faction, s.rep.name) or L["Not known"])
	elseif state == "skip" then t[#t + 1] = L["Not needed"]
	end
	if s.kind == "quest" and s.start then
		t[#t + 1] = pointText(s.start)
	elseif (s.kind == "drop" or s.kind == "object") and s.chance then
		t[#t + 1] = format(L["%d%% chance"], floor(s.chance + 0.5))
	end
	if s.kind == "drop" and s.instance then
		local inst = D().Get(s.instance)
		if inst then t[#t + 1] = format(L["inside %s"], inst.name) end
	end
	return concat(t, DOT)
end

function located(p)
	return type(p) == "table" and p.map ~= nil and p.x ~= nil and p.y ~= nil
end

function renderAttune(key, f, plevel)
	local side = SIDE[f]
	local MW = mainWidth()
	local Dg = D()
	local mineCode = SIDE[UI.PlayerFaction() or ""]
	local list_ = Dg.Attunements(key, side)
	local y, nr = 0, 0
	shown.attune = {}
	for i, a in ipairs(list_) do
		local st = Dg.AttunementState(a)
		local h = attHead(i)
		h:ClearAllPoints()
		h:SetPoint("TOPLEFT", pg.Body, "TOPLEFT", 0, -y)
		h:SetWidth(MW)
		W.Color(h.Title, a.kind == "attunement" and "quest" or "item")
		h.Title:SetText(a.name or "")
		-- This character's state: the other side's attunement has none.
		local mine = not a.faction or a.faction == mineCode
		local total, did = 0, 0
		for _, e in ipairs(st.steps) do
			if e.state ~= "na" and e.state ~= "skip" then
				total = total + 1
				if e.state == "done" then did = did + 1 end
			end
		end
		local glyph, chipText = { "icon-dungeon", "dungeon" }, nil
		if not mine then
			h.State:Hide()
		elseif st.done then
			chipText = L["Done"]
			W.SetChip(h.State, chipText, "success")
			glyph = { "check", "success" }
		elseif st.goalDone and a.item then
			chipText = L["Not in your bags"]
			W.SetChip(h.State, chipText, "warning")
		elseif did > 0 then
			chipText = format(L["%d of %d done"], did, total)
			W.SetChip(h.State, chipText)
		else
			h.State:Hide()
		end
		h.Glyph:SetTexture(Theme.Media(glyph[1]))
		W.Color(h.Glyph, glyph[2])
		local facts = { ATT_KIND[a.kind] or ATT_KIND.attunement }
		facts[#facts + 1] = a.need == "one" and L["One in the group is enough"] or L["Everyone entering needs it"]
		if a.level then facts[#facts + 1] = format(L["From level %d"], a.level) end
		if a.faction == "A" then facts[#facts + 1] = L["Alliance only"] elseif a.faction == "H" then facts[#facts + 1] = L["Horde only"] end
		h.Meta:SetText(concat(facts, DOT))
		local hy = 66
		if a.note then
			h.Note:SetWidth(MW - PAD * 2)
			h.Note:SetText(L[a.note]) -- the attunement table's notes are data keys (tools/lib/i18n/keys.js)
			h.Note:Show()
			hy = hy + floor(h.Note:GetStringHeight() + 0.5)
		else
			h.Note:Hide()
		end
		-- The item it gives (a key, the amulet), and whether it is owned.
		local t = h.Tiles[1]
		if a.item then
			t = tile(h, 1)
			hy = hy + 10
			t:ClearAllPoints()
			t:SetPoint("TOPLEFT", h, "TOPLEFT", PAD, -hy)
			t.psID = a.item.id
			local icon = itemIcon(a.item.id)
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
			local qr, qg, qb = qualityRaw(a.item.quality)
			if qr then
				Theme.Border(t.Well, qr, qg, qb, 0.9)
				paintRGB(t.Name, lift(qr, qg, qb))
			else
				local ir, ig, ib = Theme.Wash("border")
				Theme.Border(t.Well, ir, ig, ib, 0.6)
				W.Color(t.Name, "item")
			end
			t.Name:SetText(a.item.name or (L["Item"] .. " " .. tostring(a.item.id)))
			t:Show()
			h.Owned:ClearAllPoints()
			h.Owned:SetPoint("LEFT", t, "RIGHT", 12, 0)
			if mine then
				h.Owned:SetText(st.owned and L["You have it"] or L["Not in your bags or bank"])
				W.Color(h.Owned, st.owned and "success" or "textMuted")
				h.Owned:Show()
			else
				h.Owned:Hide()
			end
			hy = hy + TILE_H
		else
			if t then t:Hide() end
			h.Owned:Hide()
		end
		-- "Guide me through it": while something is left for this character.
		local can = mine and not st.done and st.left > 0 and Dg.Attune ~= nil and ns.Lookup ~= nil
		h.Guide:SetShown(can)
		h.Guide.psAtt = a.id
		h.Guide.psTip = L["Guide me through it"]
		h.Guide.psTipLines = { st.left == 1 and L["A guide through the 1 step left, from where you stand."]
			or format(L["A guide through the %d steps left, from where you stand."], st.left), L["It opens in a new tab."] }
		hy = hy + 12
		-- The steps, this side's only.
		local states = {}
		for _, e in ipairs(st.steps) do
			local s = e.step
			if not side or not s.faction or s.faction == side then
				nr = nr + 1
				local r = attStep(nr)
				r:ClearAllPoints()
				r:SetPoint("TOPLEFT", pg.Body, "TOPLEFT", 0, -(y + hy))
				r:SetWidth(MW - PAD)
				local state = mine and e.state or "na"
				local g = ATT_GLYPH[state] or ATT_GLYPH.na
				local gname = (state == "open" and ITEM_GLYPH[s.kind]) or g[1]
				r.Glyph:SetTexture(Theme.Media(gname))
				r.Glyph:SetSize(gname == "circle" and 6 or 12, gname == "circle" and 6 or 12)
				W.Color(r.Glyph, (state == "open" and ITEM_GLYPH[s.kind]) and "textDim" or g[2])
				local text, point = stepLine(s, plevel)
				r.Text:SetText(text)
				r.Sub:SetText(stepSub(s, mine and e.state or nil))
				r.psPoint = located(point) and point or nil
				r.psLabel = point and point.name or nil
				r.psTip = r.psPoint and L["Set the arrow here"] or nil
				r:Show()
				states[#states + 1] = state
				hy = hy + TIE_H
			end
		end
		hy = hy + 14
		h:SetHeight(hy)
		h:Show()
		shown.attune[i] = { id = a.id, done = st.done, chip = chipText, guide = can, owned = st.owned, states = states }
		y = y + hy
	end
	hidePool(atts, #list_ + 1)
	hidePool(attSteps, nr + 1)
	if #list_ == 0 then
		y = emptyPage(L["Nothing to unlock"], L["Nothing the sources Polestar reads names opens this dungeon's way in or its doors."], 28)
	end
	return y + 16
end

TABS = { { key = "quests" }, { key = "attune" }, { key = "bosses" }, { key = "map" } }

function renderPage(key, plevel)
	local d = D().Get(key)
	if not d then
		page = nil
		return false
	end
	home:Hide()
	pg:Show()
	pageHeader(d)
	local f = factionKey()
	local side = SIDE[f]
	local nq = #D().Quests(key, side)
	local nb = #D().Bosses(key)
	local att = D().Attunements(key, side)
	if tab == "attune" and #att == 0 then tab = "quests" end
	local list_ = { { key = "quests", label = nq > 0 and (L["Quests"] .. "  " .. nq) or L["Quests"] } }
	if #att > 0 then
		-- "Keys" when every one is a key, else "Attunement".
		local keys = true
		for _, a in ipairs(att) do keys = keys and a.kind == "key" end
		local word = keys and L["Keys"] or L["Attunement"]
		list_[#list_ + 1] = { key = "attune", label = #att > 1 and (word .. "  " .. #att) or word }
	end
	list_[#list_ + 1] = { key = "bosses", label = nb > 0 and (L["Bosses"] .. "  " .. nb) or L["Bosses"] }
	list_[#list_ + 1] = { key = "map", label = L["Map"] }
	W.ShellTabs(hub, list_, tab, function(k) DS.SetTab(k) end)
	-- Hide what the other tabs put up.
	pg.EmptyTitle:Hide()
	pg.EmptyNote:Hide()
	if tab ~= "quests" then
		hidePool(blocks)
		qpass.key = nil
	end
	if tab ~= "bosses" then hidePool(bossRows); hidePool(ties) end
	if tab ~= "attune" then hidePool(atts); hidePool(attSteps) end
	if tab ~= "map" then
		pg.MapArt:Hide()
		pg.MapNote:Hide()
		hidePool(givers)
	end
	local h
	if tab == "bosses" then
		h = renderBosses(key, f, plevel)
	elseif tab == "attune" then
		h = renderAttune(key, f, plevel)
	elseif tab == "map" then
		h = renderMap(key, d, f)
	else
		h = renderQuests(key, f, plevel)
	end
	W.SetScrollContent(pg.Scroll, h)
	if tab == "quests" then DS.PaintQuests() end
	shown.view, shown.page, shown.tab = "page", key, tab
	return true
end

---------------------------------------------------------------------------
-- Render
---------------------------------------------------------------------------

REASON = {
	nodata = L["The Polestar_Codex addon is older than this Polestar: reinstall Polestar, then /reload."],
	missing = L["The Polestar_Codex addon is not installed. Get Polestar from CurseForge or the GitHub Releases page (the Polestar zip under Assets, not \"Source code\"), install it and restart the game."],
	disabled = L["The Polestar_Codex addon is turned off: enable it in the AddOns list, then /reload."],
}

function renderEmpty(reason)
	home:Show()
	pg:Hide()
	restoreHeader()
	W.ShellTabs(hub, nil)
	hidePool(cards)
	hidePool(heads)
	home.psCount = 0
	W.ShellTitle(hub, L["Dungeons"], L["Every dungeon quest, where it starts and what it gives"])
	home.Watermark:Show()
	local text
	if reason == "off" then
		text = L["The Dungeons section is turned off. Turn it on under Options > Discovery > Dungeons."]
	else
		local LK = UI.Lookup
		text = REASON[reason] or (LK and LK.ReasonText and LK.ReasonText(reason)) or tostring(reason)
	end
	home.EmptyTitle:SetText(reason == "off" and L["Dungeons are off"] or L["Dungeons need the Codex"])
	home.EmptyNote:SetText(text)
	home.EmptyTitle:Show()
	home.EmptyNote:Show()
	W.SetScrollContent(home.Scroll, 160)
	shown.view, shown.empty = "empty", reason
end

function DS.Render()
	if not root then return end
	for k in pairs(shown) do shown[k] = nil end
	local Dg = D()
	local loaded, reason
	if Dg then loaded, reason = Dg.Load() else loaded, reason = false, "missing" end
	for _, b in ipairs(segs) do b:SetShown(loaded and true or false) end
	if not loaded then
		renderEmpty(reason)
		return
	end
	segPaint(factionKey())
	local plevel = playerLevel()
	if page and renderPage(page, plevel) then return end
	home.EmptyTitle:Hide()
	home.EmptyNote:Hide()
	renderHome(plevel)
end

-- Re-render the whole hub while Dungeons is its section, so the sidebar
-- marks the band; else just this section.
function refresh()
	local P = UI.Picker
	if P and P.Section and P.Section() == "Dungeons" and P.Render and hub and hub:IsShown() then
		P.Render()
	elseif root and root:IsVisible() then
		DS.Render()
	end
end

function DS.Nav()
	local Dg = D()
	if not (Dg and Dg.IsEnabled() and Dg.Load()) then return {}, nil end
	local plevel = playerLevel()
	local items = navItems(plevel, factionKey())
	return items, (filter == "" and defaultBand(plevel)) or nil
end

function DS.SetBand(key)
	band = key
	page = nil
	if home then W.ScrollTo(home.Scroll, 0) end
	refresh()
end

function DS.SetTab(key)
	for _, t in ipairs(TABS) do
		if t.key == key then
			tab = key
			if pg then W.ScrollTo(pg.Scroll, 0) end
			refresh()
			return
		end
	end
end

function DS.SetFaction(f)
	uiState().dungeonsFaction = f
	refresh()
end

function DS.Open(key)
	page = key
	tab = "quests"
	if pg then W.ScrollTo(pg.Scroll, 0) end
	refresh()
end

function DS.Home()
	page = nil
	refresh()
end

-- The Quests tab, scrolled to one quest.
function DS.ShowQuest(id)
	tab = "quests"
	refresh()
	for i, q in ipairs(qpass.quests) do
		if q.id == id then
			W.ScrollTo(pg.Scroll, max(0, qpass.tops[i] - 8))
			DS.PaintQuests()
			return
		end
	end
end

function DS.GuideThere()
	local Dg = D()
	if page and Dg then Dg.GuideTo(page) end
end

-- Open a dungeon's planned guide (open: Dungeons.PickUp or HandIn) in a new
-- tab; the hub steps aside, as Lookup's guides do. Nothing to plan says why
-- in chat (nothing(): the sentence).
function openPlanned(open, key, nothing)
	local gid, reason = open(key)
	if gid then
		ns.Set("ui.shown", true)
		if hub then hub:Hide() end
		return gid
	end
	local text
	if reason == "nothing" then
		text = nothing()
	elseif reason == "tabs" then
		text = L["Six tabs is the limit. Close one to open another."]
	else
		text = format(L["No guide could be made for this (%s)."], tostring(reason))
	end
	ns.Print(text)
	refresh()
	return nil, reason
end

-- The page's pick-up guide; nothing to pick up says so instead.
function DS.PickUp()
	local Dg = D()
	if not (page and Dg and Dg.PickUp) then return nil end
	local key = page
	return openPlanned(Dg.PickUp, key, function() return DS.NothingText(Dg.PickupPlan(key)) end)
end

-- A dungeon's hand-in guide (the page's, or `key`'s from the finished
-- pick-up guide); nothing finished says what is still open instead.
function DS.HandIn(key)
	local Dg = D()
	key = key or page
	if not (key and Dg and Dg.HandIn) then return nil end
	return openPlanned(Dg.HandIn, key, function() return Dg.HandinText(Dg.HandinPlan(key)) end)
end

-- An attunement's guide (Dungeons.Attune), from the page's Attunement tab;
-- nothing left says so instead.
function DS.Attune(id)
	local Dg = D()
	if not (page and id and Dg and Dg.Attune) then return nil end
	return openPlanned(function(key)
		local gid, reason = Dg.Attune(key, id)
		if reason == "done" then reason = "nothing" end
		return gid, reason
	end, page, function() return L["Nothing is left to do for it."] end)
end

-- In combat the map stays shut (Compat.OpenWorldMap: opening it then is
-- blocked); the chat says so instead of the button doing nothing (review P3-13).
function DS.ShowOnMap()
	local Dg = D()
	if not (page and Dg) then return end
	if ns.Compat.InCombat() then
		ns.Print(L["The map can't open in combat: press Show on map again when it ends."])
		return
	end
	Dg.ShowOnMap(page)
end

function DS.Search(text)
	filter = text or ""
	page = nil
	if home then W.ScrollTo(home.Scroll, 0) end
	refresh()
end

-- Enter opens the first card.
function DS.Enter()
	if page or not home then return end
	local c = cards[1]
	if c and c:IsShown() and c.psKey then DS.Open(c.psKey) end
end

-- SHOW_DUNGEON(key): the hub at the page (nil: Home).
function DS.Show(key)
	page = key
	tab = "quests"
	filter = ""
	local P = UI.Picker
	local win = _G.TuWoW_LevelingPicker or _G.PolestarPicker or (P and P.frame)
	local was = win and win:IsShown()
	if win and win.Search then win.Search:SetText("") end
	if P and P.ShowSection then P.ShowSection("Dungeons") end
	if not was and UI.ShowPicker then UI.ShowPicker() end
	if pg then W.ScrollTo(pg.Scroll, 0) end
	if home then W.ScrollTo(home.Scroll, 0) end
end

function DS.Toggle(key)
	local P = UI.Picker
	local win = _G.TuWoW_LevelingPicker or _G.PolestarPicker or (P and P.frame)
	if win and win:IsShown() and P and P.Section and P.Section() == "Dungeons" then
		win:Hide()
	else
		DS.Show(key)
	end
end

function DS.Page() return page end
function DS.Tab() return tab end
function DS.Shown() return shown end
DS.cards, DS.blocks, DS.bossRows, DS.ties, DS.givers = cards, blocks, bossRows, ties, givers
DS.atts, DS.attSteps = atts, attSteps
function DS.Frames() return root, home, pg, segs end

ns.On("SHOW_DUNGEON", function(key) DS.Show(key) end)
-- The dungeon list carries names: a late names pack sorts and names it anew.
function listChanged()
	listCache = nil
	if root and root:IsVisible() then DS.Render() end
end
ns.On("CODEX_LOADED", listChanged)
ns.On("NAMES_LOADED", listChanged)
Theme.OnChanged(function() if root and root:IsVisible() then DS.Render() end end)
function questsChanged()
	if root and root:IsVisible() and page then DS.Render() end
end
for _, ev in ipairs({ "QUEST_ACCEPTED", "QUEST_REMOVED", "QUEST_TURNED_IN", "PLAYER_LEVEL_UP" }) do
	ns.RegisterEvent(ev, questsChanged)
end
-- A key picked up or a standing reached changes the Attunement tab only.
function ownedChanged()
	if tab == "attune" and root and root:IsVisible() and page then DS.Render() end
end
for _, ev in ipairs({ "BAG_UPDATE_DELAYED", "UPDATE_FACTION" }) do
	ns.RegisterEvent(ev, ownedChanged)
end

if UI.RegisterSection then
	UI.RegisterSection({
		key = "Dungeons", label = L["Dungeons"], icon = "icon-dungeon", order = 30,
		build = DS.Build,
		render = DS.Render,
		nav = DS.Nav,
		onNav = DS.SetBand,
		search = DS.Search,
		enter = DS.Enter,
		searchPlaceholder = L["Search dungeons"],
	})
end
