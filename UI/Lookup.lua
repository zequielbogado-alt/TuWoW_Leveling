local ADDON, ns = ...
setfenv(1, ns._uiLookupEnv)
function renderDetails(loaded, reason)
	local d = details
	if not sel then
		if reason == "loading" then
			emptyDetails(L["Loading the Codex\226\128\166"], L["Results come in as soon as it is ready."])
		elseif not loaded and reason ~= "notloaded" and reason ~= nil then
			local title = reason == "off" and L["Lookup is turned off"] or L["The Codex is not loaded"]
			emptyDetails(title, LK.ReasonText(reason) .. "\n\n" .. L["Guides are still searched; their results open from here."])
		else
			emptyDetails(L["Look something up"], L["Type a name: a mount, an item, a pet, an NPC, a quest, a dungeon or a zone. Select a result to see where to get it, best for you first."])
		end
		return
	end
	d.EmptyTitle:Hide()
	d.EmptyNote:Hide()
	local s = sel
	local list, entity = selectionSources(s)
	local g = s.kind == "guide" and guideHeader(s.id) or nil
	local title = s.kind == "guide" and (g and g.title) or localTitle(s.kind, s.id, entity and (entity.name or entity.title)) or s.title or tostring(s.id)
	local quality = entity and entity.quality or s.quality
	local status = entity and entity.status or s.status
	s.status = status
	-- A page the player opened joins the recent lookups.
	if s.remember then
		s.remember = nil
		remember(s.kind, s.id, title, quality, status)
	end
	local blocked = STATUS_TEXT[status] ~= nil

	-- The band.
	local map, fx, fy = bandMap(s, entity, list)
	d.psArt = ZoneArt.Paint(d.Art, map, fx, fy, skyIndex(keyOf(s.kind, s.id)))
	local icon = KIND[s.kind] and KIND[s.kind].item and itemIcon(s.id)
	d.Icon:ClearAllPoints()
	if icon then
		W.Uncolor(d.Icon)
		d.Icon:SetTexture(icon)
		d.Icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		d.Icon:SetVertexColor(1, 1, 1, 1)
		d.Icon:SetPoint("TOPLEFT", d.Well, "TOPLEFT", 1, -1)
		d.Icon:SetPoint("BOTTOMRIGHT", d.Well, "BOTTOMRIGHT", -1, 1)
	else
		setGlyph(d.Icon, KIND[s.kind] and KIND[s.kind].icon or "search", "text")
		d.Icon:SetSize(18, 18)
		d.Icon:SetPoint("CENTER", d.Well, "CENTER", 0, 0)
	end
	local qr, qg, qb = qualityColor(quality)
	if qr and KIND[s.kind] and KIND[s.kind].item then
		Theme.Border(d.Well, qr, qg, qb, 0.9)
		if not icon then
			W.Uncolor(d.Icon)
			d.Icon:SetVertexColor(qr, qg, qb, 1)
		end
	else
		local ir, ig, ib = Theme.Color("ink")
		Theme.Border(d.Well, ir, ig, ib, 0.18)
	end
	d.Well:Show()
	d.Title:SetText(title)
	paintName(d.Title, s.kind, quality)
	d.Title:Show()
	local sub = s.subtitle
	if s.kind == "guide" and g then sub = UI.GuidePlace(g) or sub end
	if sub == title then sub = nil end
	if not sub and s.kind ~= "guide" and ns.Lookup and ns.Lookup.Subtitle then sub = ns.Lookup.Subtitle(s.kind, s.id) end
	d.Sub:SetText(sub or "")
	d.Sub:SetShown(sub ~= nil and sub ~= "")
	-- Alone, the name centres on the icon (one line, or two).
	local base = d.Sub:IsShown() and (16 + 11 + 7) or (d.Title:GetNumLines() > 1 and 16 or (16 + 9))
	d.Title:SetPoint("BOTTOMLEFT", d.Art, "BOTTOMLEFT", DPAD + ICON + 12, base)

	-- Facts.
	local y = ART_H + 18
	if blocked then
		paintStatus(d.Status, status)
		d.Status:ClearAllPoints()
		d.Status:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD, -(ART_H + 16))
		y = ART_H + 16 + W.CHIP_H + 14
	else
		d.Status:Hide()
	end
	local facts = factsFor(s, entity, list)
	local shown = {}
	for i, f in ipairs(facts) do
		local row = factRow(i)
		row.Label:SetText(f[1])
		row.Value:SetText(f[2])
		W.Color(row.Value, f[3] or "text")
		row.Label:ClearAllPoints()
		row.Label:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD, -(y + 1))
		row.Value:ClearAllPoints()
		row.Value:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD + FACT_W, -y)
		row.Label:Show()
		row.Value:Show()
		y = y + max(row.Value:GetStringHeight(), row.Label:GetStringHeight()) + FACT_GAP
		shown[i] = { f[1], f[2] }
	end
	for i = #facts + 1, #d.Facts do
		d.Facts[i].Label:Hide()
		d.Facts[i].Value:Hide()
	end
	y = y - FACT_GAP + 8

	-- The bottom: what the button does, then the button(s).
	local Lk = ns.Lookup
	local curated = curatedOf(s.kind, s.id)
	local note, primary, enabled, secondary
	local best
	for i, row in ipairs(list or {}) do
		if row.available ~= false and row.guideable then best = best or i end
	end
	local dungeon = s.kind == "instance" and hasDungeons()
	d.psPrimaryAction, d.Secondary.psAction = nil, nil
	if s.kind == "guide" then
		if ns.Engine and ns.Engine.OpenTab then
			primary, secondary = L["Open in new tab"], L["Show in Guides"]
		else
			primary = L["Show in Guides"]
		end
		d.Secondary.psAction = function() LK.OpenGuide(s.id, true) end
		note = g and g.pitch or nil
	elseif s.kind == "zone" then
		note = L["Zones have no sources. Search for what is in them."]
	elseif blocked then
		note = STATUS_NOTE[status]
	elseif curated then
		local cg = guideHeader(curated)
		primary = L["Open guide"]
		note = format(L["A guide covers this: %s."], cg and cg.title or curated)
	elseif not (Lk and Lk.Guide) then
		note = L["Guides from the Codex need the Lookup module."]
	elseif Lk.IsMount and Lk.IsMount(entity) then
		-- Only a curated guide leads to a mount (Lookup.Guide): its sources
		-- above, with their cost and requirements, and each row's Guide.
		note = MOUNT_NOTE
	elseif best then
		primary = L["Guide me"]
		note = format(L["Builds a guide to %s, the best source for you, and opens it in a new tab."], list[best].label or "?")
	elseif list and #list > 0 then
		primary, enabled = L["Guide me"], false
		note = L["No source is open to this character yet. Pick one above to be guided anyway."]
	else
		note = L["The Codex knows no source for this."]
	end
	-- A dungeon also opens in the Dungeons section (its quests and bosses):
	-- beside the guide to its entrance, or alone without one.
	if dungeon then
		local open = function() LK.OpenDungeon(s.id) end
		if primary then
			secondary = L["Open dungeon"]
			d.Secondary.psAction = open
		else
			primary, enabled = L["Open dungeon"], nil
			d.psPrimaryAction = open
			if not LK.message then note = L["Its quests and bosses are under Dungeons."] end
		end
	end
	if LK.message then note = nil end
	d.Note:SetText(LK.message or note or "")
	W.Color(d.Note, LK.message and "warning" or (blocked and "textMuted" or "textDim"))
	d.Note:SetShown((LK.message or note) ~= nil)
	if primary then
		setButton(d.Primary, primary, enabled)
		d.Primary:Show()
		if secondary then
			d.Secondary:Show()
			d.Secondary.psFixedWidth = nil
			W.SetButtonText(d.Secondary, secondary)
			setButtonWidth(d.Primary, INNER - d.Secondary:GetWidth() - 8)
		else
			d.Secondary:Hide()
			setButtonWidth(d.Primary, INNER)
		end
		d.Primary.psTip = s.kind == "guide" and nil or L["Enter does this too."]
	else
		d.Primary:Hide()
		d.Secondary:Hide()
	end
	local noteH = d.Note:IsShown() and (d.Note:GetStringHeight() + 12) or 0
	local bottom = DPAD + (primary and (32 + 12) or 0) + noteH + 4

	-- Sources.
	local rowsShown = {}
	if list and s.kind ~= "zone" then
		d.Head.Text:SetText(headText(s.kind))
		d.Head.Count:SetText(#list > 0 and tostring(#list) or "")
		d.Head:ClearAllPoints()
		d.Head:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD - TEXT_X, -y)
		d.Head:Show()
		y = y + FOLDER_H + 6
		d.Scroll:ClearAllPoints()
		d.Scroll:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD - 8, -y)
		d.Scroll:SetPoint("BOTTOMRIGHT", d, "BOTTOMRIGHT", -DPAD + 10, bottom)
		d.Scroll:Show()
		local child = d.Scroll.Child
		local cw = INNER + 8
		child:SetWidth(cw)
		local cy = 0
		for i, row in ipairs(list) do
			local r = sourceRow(i)
			local on = sourceSel == i
			local open = row.available ~= false
			r.psIndex = i
			r.Selected:SetShown(on)
			r.Bar:SetShown(on)
			setGlyph(r.Icon, SOURCE_ICON[row.type] or "icon-goto", on and "accent" or (open and "textDim" or "textMuted"))
			r.Label:SetText(row.label or "?")
			if not open then
				W.Color(r.Label, "textDim")
			elseif row.type == "quest" then
				W.Color(r.Label, "quest")
			elseif row.type == "craft" or row.type == "world" or row.type == "pvp" then
				W.Color(r.Label, "text")
			else
				W.Color(r.Label, "npc")
			end
			r.Travel:SetText(LK.Travel(row.travel) or "")
			r.Travel.psTip = nil
			r.Detail:SetText(row.detail or "")
			W.Color(r.Detail, open and "textDim" or "textMuted")
			local facts = sourceFacts(row)
			local why = not open and (row.whyText or L["Not open to this character"]) or nil
			r.Facts:SetText(facts or "")
			r.Facts:SetShown(facts ~= nil)
			r.Why:SetText(why or "")
			-- Gone for good is a fact, not something to fix: muted.
			W.Color(r.Why, (blocked or row.why == "retired") and "textMuted" or "warning")
			r.Why:SetShown(why ~= nil)
			r.Why:ClearAllPoints()
			r.Why:SetPoint("TOPLEFT", r, "TOPLEFT", 30, facts and -59 or -43)
			local guideBtn = on and row.guideable and not blocked and true or false
			r.Guide:SetShown(guideBtn)
			local textW = cw - 30 - 10
			local detailW = guideBtn and (textW - r.Guide:GetWidth() - 8) or textW
			r.Label:SetWidth(max(60, min(textW - r.Travel:GetStringWidth() - 12, floor(r.Label:GetStringWidth() + 1))))
			r.Detail:SetWidth(max(60, min(detailW, floor(r.Detail:GetStringWidth() + 1))))
			r.Facts:SetWidth(max(60, min(detailW, floor(r.Facts:GetStringWidth() + 1))))
			r.Why:SetWidth(max(60, min(detailW, floor(r.Why:GetStringWidth() + 1))))
			local lines = 2 + (facts and 1 or 0) + (why and 1 or 0)
			local h = 27 + (lines - 2) * 16 + 11 + 9
			if guideBtn then h = max(h, 27 + 24 + 8) end
			r:SetHeight(h)
			r:SetWidth(cw)
			r:ClearAllPoints()
			r:SetPoint("TOPLEFT", child, "TOPLEFT", 0, -cy)
			local tip = {}
			if row.zone or row.map then tip[#tip + 1] = (row.zone or UI.MapName(row.map) or "") .. ((row.x and row.y) and format("  %.1f, %.1f", row.x, row.y) or "") end
			if row.travel then tip[#tip + 1] = format(L["About %s from here"], LK.Travel(row.travel)) end
			tip[#tip + 1] = (row.guideable and not blocked) and L["Select it, then Guide; or double-click."] or L["No guide can lead here."]
			r.psTipTitle = row.label
			r.psTip = table.concat(tip, "\n")
			r:Show()
			cy = cy + h + 2
			rowsShown[i] = { label = row.label, detail = row.detail, travel = r.Travel:GetText(), facts = facts, why = why, available = open, guide = guideBtn }
		end
		for i = #list + 1, #d.Rows do d.Rows[i]:Hide() end
		if #list == 0 then
			d.NoSource:SetText(L["No source is known for this yet."])
			d.NoSource:Show()
			cy = 30
		else
			d.NoSource:Hide()
		end
		W.SetScrollContent(d.Scroll, cy + 4, shell:GetHeight() - SH.top - y - bottom)
	else
		d.Head:Hide()
		d.Scroll:Hide()
	end
	LK.detail = {
		kind = s.kind, id = s.id, title = title, facts = shown, sources = rowsShown, curated = curated, status = status,
		primary = primary and d.Primary.Label:GetText() or nil, note = d.Note:GetText(), art = d.psArt,
	}
	if primary then LK.detail.enabled = d.Primary:IsEnabled() end
end

---------------------------------------------------------------------------
-- Results pane: the current search's results by kind, or the recent
-- lookups; only the rows in view are drawn
---------------------------------------------------------------------------

function resultClick(self)
	if self.psResult then
		LK.Select(self.psResult.kind, self.psResult.id, self.psResult)
	elseif self.psAct then
		self.psAct()
	end
end

function resultDouble(self)
	if not self.psResult then return end
	LK.Select(self.psResult.kind, self.psResult.id, self.psResult)
	LK.Activate()
end

function resultRow(i)
	local r = rowPool[i]
	if r then return r end
	r = makeRow(results.Child)
	r:SetScript("OnClick", resultClick)
	r:SetScript("OnDoubleClick", resultDouble)
	rowPool[i] = r
	return r
end

function folderRow(i)
	local f = folderPool[i]
	if f then return f end
	f = makeFolder(results.Child)
	folderPool[i] = f
	return f
end

function selectFirst()
	if sel then
		for _, res in ipairs(visible) do
			if res.kind == sel.kind and res.id == sel.id then return end
		end
	end
	if visible[1] then LK.Select(visible[1].kind, visible[1].id, visible[1], true) end
end

-- Bumped when what a search finds may have changed (the Codex or the
-- guides loaded).
LK.gen = 0
function stale() LK.gen = LK.gen + 1 end

-- The current search, run once per query and kind (the hub asks for the
-- sidebar's counts and the section's list in one render): the counts with a
-- few results per kind, and under one kind its first page. Subtitles are
-- filled for the rows drawn only (Search.Subtitle).
cache = {}
function current()
	if cache.query == query and cache.kind == kind and cache.gen == LK.gen then return cache end
	local all, counts, list = {}, {}, {}
	if query ~= "" then
		all, counts = search(query, nil, { perKind = GROUP_MAX, limit = GROUP_MAX * #kinds(), subtitles = false })
		if kind == "all" then
			list = all
		else
			list = (search(query, { [kind] = true }, { perKind = PAGE, limit = PAGE, offset = 0, subtitles = false }))
		end
	end
	-- After the search: its first one loads the pack (or learns it is missing).
	local loaded, reason = status()
	local total = 0
	for _, n in pairs(counts) do total = total + n end
	cache = { query = query, kind = kind, gen = LK.gen, list = list, counts = counts, total = total, loaded = loaded, reason = reason }
	return cache
end

-- The next page of the shown kind.
function LK.More()
	local c = current()
	if kind == "all" or query == "" then return end
	local more = search(query, { [kind] = true }, { perKind = PAGE, limit = PAGE, offset = #c.list, subtitles = false })
	for _, res in ipairs(more) do c.list[#c.list + 1] = res end
	LK.Render()
end

-- The hub sidebar under the search: Everything, then the kinds this search
-- found, with their counts (the one shown always), as many as the sidebar
-- holds above its foot; the rest are a "Show all" away in the list.
NAV_MAX = 10
function LK.Nav()
	local c = current()
	local items = { { key = "all", label = L["Everything"], icon = "search", count = query ~= "" and c.total or nil } }
	for _, k in ipairs(kinds()) do
		local n = c.counts[k.key] or 0
		if (n > 0 and #items <= NAV_MAX) or (k.key == kind and query ~= "") then
			items[#items + 1] = { key = k.key, label = k.label, icon = KIND[k.key] and KIND[k.key].icon or k.icon or "search", count = n }
		end
	end
	return items, kind
end

-- A drawn row's subtitle, asked for once.
function subtitleOf(res)
	if res.subtitle == nil and not res.psSubtitled then
		res.psSubtitled = true
		local S = ns.Search
		if S and S.Subtitle then
			local ok, text = pcall(S.Subtitle, res)
			if ok and type(text) == "string" and text ~= "" then res.subtitle = text end
		end
	end
	return res.subtitle
end

-- The list as laid out: { t = "folder"|"row"|"action", y, ... }, top down.
entries = {}

function viewHeight() return shell:GetHeight() - SH.top - 8 end

-- Draw the entries in view (and a row either side), from the pools.
function paintVisible()
	if not (root and results) then return end
	local top = results:GetVerticalScroll() or 0
	local lo, hi = top - ROW_H * 2, top + viewHeight() + ROW_H * 2
	local width = MID_W - ROW_X * 2
	local body = results.Child
	local nf, nr = 0, 0
	for _, e in ipairs(entries) do
		local h = e.t == "folder" and FOLDER_H or ROW_H
		if e.y + h >= lo and e.y <= hi then
			local f
			if e.t == "folder" then
				nf = nf + 1
				f = folderRow(nf)
				f.Text:SetText(e.text)
				f.Count:SetText(e.count or "")
				f:SetWidth(width)
			else
				nr = nr + 1
				f = resultRow(nr)
				if e.t == "row" then
					paintResult(f, e.res, subtitleOf(e.res), width, sel and sel.kind == e.res.kind and sel.id == e.res.id)
					f.psAct = nil
				else
					paintAction(f, e.text, e.glyph, width)
					f.psAct = e.act
				end
				f.psTip = e.tip
			end
			f:ClearAllPoints()
			f:SetPoint("TOPLEFT", body, "TOPLEFT", ROW_X, -e.y)
			f:Show()
		end
	end
	for i = nr + 1, #rowPool do rowPool[i]:Hide() end
	for i = nf + 1, #folderPool do folderPool[i]:Hide() end
	LK.painted = nr
end
LK.PaintVisible = paintVisible

-- Keep the selection in view (arrow keys).
function reveal()
	if not sel then return end
	for _, e in ipairs(entries) do
		if e.t == "row" and e.res.kind == sel.kind and e.res.id == sel.id then
			local top, view = results:GetVerticalScroll() or 0, viewHeight()
			if e.y < top then
				W.ScrollTo(results, e.y - 8)
			elseif e.y + ROW_H > top + view then
				W.ScrollTo(results, e.y + ROW_H - view + 8)
			end
			paintVisible()
			return
		end
	end
end

function LK.Render()
	if not (root and root:IsVisible()) then return end
	local c = current()
	local list, counts, total, loaded, reason = c.list, c.counts, c.total, c.loaded, c.reason

	-- No tabs, so no tab row: the keys live in each row's tooltip. The row
	-- comes back only to say why the Codex is not there to search (not while
	-- it simply waits for the first search).
	local status = not loaded and reason ~= nil and reason ~= "notloaded" and reasonShort(reason) or nil
	shell.psKeepTabRow = status ~= nil
	W.ShellTabs(shell, nil)
	shell.psKeepTabRow = nil
	root.CodexLine:SetText(status or "")
	if status then
		W.Color(root.CodexLine, (reason == "combat" or reason == "loading") and "textMuted" or "warning")
	end

	-- The header: what the list holds.
	local title = (kind == "all" or query == "") and L["Lookup"] or kindLabel(kind)
	local subtitle
	if query == "" then
		subtitle = L["Every guide, item, mount, NPC, quest and place, and where to get it."]
	else
		local n = kind == "all" and total or (counts[kind] or #list)
		subtitle = n == 1 and format(L["1 result for %s"], LQ .. query .. RQ) or format(L["%d results for %s"], n, LQ .. query .. RQ)
	end
	W.ShellTitle(shell, title, subtitle)

	-- Lay the list out.
	entries, visible = {}, {}
	local groups = {}
	local y = 8
	local function folder(text, count)
		if #entries > 0 then y = y + 10 end
		entries[#entries + 1] = { t = "folder", y = y, text = text, count = count }
		y = y + FOLDER_H + 4
	end
	local function row(res)
		local tip
		if STATUS_TEXT[res.status] then
			tip = L["Shown for reference: nothing leads to it."]
		elseif res.kind == "guide" then
			tip = L["Double-click or press Enter to open it in a new tab."]
		else
			tip = L["Double-click or press Enter to be guided to it."]
		end
		entries[#entries + 1] = { t = "row", y = y, res = res, tip = tip }
		visible[#visible + 1] = res
		y = y + ROW_H
	end
	local function action(text, glyph, act, tip)
		entries[#entries + 1] = { t = "action", y = y, text = text, glyph = glyph, act = act, tip = tip }
		y = y + ROW_H
	end
	if query == "" then
		-- No search: the recent lookups, never a data set.
		local recent = LK.Recent()
		if #recent > 0 then
			folder(L["Recent lookups"], #recent)
			-- Copies: the saved entries stay as saved.
			for _, r in ipairs(recent) do row({ kind = r.kind, id = r.id, title = r.title, quality = r.quality, status = r.status }) end
		end
	else
		local byKind = {}
		for _, res in ipairs(list) do
			byKind[res.kind] = byKind[res.kind] or {}
			local b = byKind[res.kind]
			b[#b + 1] = res
		end
		for _, k in ipairs(kinds()) do
			local hits = byKind[k.key]
			if hits then
				local n = counts[k.key] or #hits
				folder(k.label, n)
				local cap = kind == "all" and GROUP_MAX or #hits
				for i = 1, min(cap, #hits) do row(hits[i]) end
				if kind == "all" and n > cap then
					local key = k.key
					action(format(L["Show all %d"], n), "chevron-right", function() LK.SetKind(key) end, format(L["Only %s"], k.label))
				elseif kind ~= "all" and n > #hits then
					action(format(L["Show more (%d more)"], n - #hits), "chevron-down", LK.More, format(L["The next %d"], min(PAGE, n - #hits)))
				end
				groups[#groups + 1] = { kind = k.key, count = n, shown = min(cap, #hits) }
			end
		end
	end

	local empty
	if reason == "loading" and #list == 0 then
		empty = L["Loading the Codex\226\128\166"]
	elseif query == "" then
		empty = loaded and L["Type a name in the search box: a mount you saw, an item you want, an NPC or a quest."]
			or L["Type a name in the search box to search the guides."]
	elseif #list == 0 then
		empty = format(L["Nothing matches %s."], LQ .. query .. RQ)
		if reason == "off" then
			empty = empty .. " " .. L["Lookup is turned off in Options > Discovery > Lookup, so items, mounts, NPCs and quests are not searched."]
		elseif not loaded then
			empty = empty .. " " .. L["Items, mounts, NPCs and quests are searched once the Codex loads."]
		end
	end
	local body = results.Child
	if empty then
		root.Empty:SetText(empty)
		root.Empty:ClearAllPoints()
		root.Empty:SetPoint("TOPLEFT", body, "TOPLEFT", SH.pad, -(y + (#entries > 0 and 16 or 8)))
		root.Empty:Show()
		y = y + 16 + root.Empty:GetStringHeight() + 16
	else
		root.Empty:Hide()
	end
	-- The engraving only behind a list with nothing in it.
	root.Watermark:SetShown(#entries == 0)
	body:SetWidth(MID_W)
	W.SetScrollContent(results, y + 16, viewHeight())
	paintVisible()
	renderDetails(loaded, reason)
	LK.shown = { query = query, kind = kind, groups = groups, rows = #visible, empty = empty, total = total }
end

---------------------------------------------------------------------------
-- Search, kinds, keys
---------------------------------------------------------------------------

-- The hub draws the sidebar (Nav) and this section together.
function refresh()
	local P = UI.Picker
	if P and P.Render and P.Section and P.Section() == "Lookup" then P.Render() else LK.Render() end
end

function cancelPending()
	if pending then
		pending:Cancel()
		pending = nil
	end
end

function setQuery(text)
	text = text or ""
	if text == query then return end
	query = text
	LK.message = nil
	if not (root and root:IsVisible()) then return end
	W.ScrollTo(results, 0)
	refresh()
	if query ~= "" then selectFirst() end
end

-- The hub's search box, while this section is shown: each keystroke
-- restarts a short wait; the search runs when typing pauses.
function onSearch(text)
	text = text or ""
	cancelPending()
	if text == "" or text == query then
		setQuery(text)
		return
	end
	pending = ns.NewTimer(DEBOUNCE, function()
		pending = nil
		setQuery(text)
	end)
end

-- Enter: search now if typing has not paused yet, then act.
function onEnter()
	local P = UI.Picker
	if pending then
		cancelPending()
		setQuery(P and P.Query and P.Query() or query)
	end
	LK.Activate()
end

function LK.Query() return query end

function LK.SetKind(k)
	kind = k or "all"
	if root and root:IsVisible() then
		W.ScrollTo(results, 0)
		refresh()
		if query ~= "" then selectFirst() end
	end
end

function LK.Kind() return kind end

function LK.Step(delta)
	if #visible == 0 then return end
	local at
	if sel then
		for i, res in ipairs(visible) do if res.kind == sel.kind and res.id == sel.id then at = i end end
	end
	at = at and min(#visible, max(1, at + delta)) or 1
	-- Walking the list opens no page for good: only a click or Enter does.
	LK.Select(visible[at].kind, visible[at].id, visible[at], true)
	reveal()
end

---------------------------------------------------------------------------
-- The hub section
---------------------------------------------------------------------------

-- build(parent, hub): parent spans the list and details area under the
-- tab row; the hub is the window (its header, tab row and search).
function LK.Build(parent, hub)
	if root then return root end
	shell = hub
	root = CreateFrame("Frame", nil, parent)
	root:SetAllPoints(parent)
	LK.root = root
	-- The results take what the details leave of the section's width.
	local w = parent:GetWidth() or 0
	if w <= 0 then w = hub:GetWidth() - (hub.psRail or 0) - (hub.psSidebar or SH.sidebar) - 2 end
	MID_W = floor(w - DETAIL_W)
	results = W.Scroll(root)
	-- Rows are drawn for what is in view: scrolling draws the rest.
	results:HookScript("OnMouseWheel", function() paintVisible() end)
	results:HookScript("OnVerticalScroll", function() paintVisible() end)
	results:SetPoint("TOPLEFT", root, "TOPLEFT", 0, -4)
	results:SetPoint("BOTTOMRIGHT", root, "BOTTOMRIGHT", -(DETAIL_W + 4), 4)
	LK.results = results
	-- The emblem engraving, behind an empty list only.
	root.Watermark = root:CreateTexture(nil, "BACKGROUND", nil, -4)
	root.Watermark:SetTexture(Theme.Media("watermark"))
	root.Watermark:SetSize(300, 300)
	root.Watermark:SetPoint("CENTER", root, "LEFT", MID_W / 2, 0)
	W.Painter(root.Watermark, function(t) t:SetVertexColor(Theme.Wash("watermark")) end)
	root.Watermark:Hide()
	root.Empty = W.Text(results.Child, "note", "textDim")
	root.Empty:SetWordWrap(true)
	root.Empty:SetJustifyV("TOP")
	root.Empty:SetWidth(MID_W - SH.pad * 2)
	root.Empty:Hide()
	-- In the hub's tab row, while the Codex is not there to search: why.
	root.CodexLine = W.Text(hub.TabRow, "small", "textMuted")
	root.CodexLine:SetPoint("LEFT", hub.TabRow, "LEFT", SH.pad, 0)
	root.CodexLine:SetWidth(MID_W - SH.pad * 2)
	-- It belongs to this section: other sections' tab rows stay theirs.
	root:SetScript("OnShow", function() root.CodexLine:Show() end)
	root:SetScript("OnHide", function()
		cancelPending()
		root.CodexLine:Hide()
	end)
	buildDetails()
	return root
end

-- The hub renders the section: take up its search when it changed while
-- another section was shown (not while ShowLookup hands it one).
opening = false
function sectionRender()
	local P = UI.Picker
	local hub = P and P.Query and P.Query() or query
	if not pending and not opening and hub ~= query then
		query = hub
		LK.message = nil
		LK.Render()
		if query ~= "" then selectFirst() end
		return
	end
	LK.Render()
end

if UI.RegisterSection then
	UI.RegisterSection({
		key = "Lookup", label = L["Lookup"], icon = "search", order = 20,
		build = LK.Build, render = sectionRender,
		nav = LK.Nav, onNav = LK.SetKind,
		search = onSearch, enter = onEnter, step = LK.Step,
		searchPlaceholder = { L["Search items, mounts, NPCs"], L["Search items, mounts"], L["Search"] },
	})
end

-- opts: { query, kind, id }: the hub at this section. With an id and no
-- query the search is the entity's name, and it is selected.
function UI.ShowLookup(opts)
	opts = type(opts) == "table" and opts or {}
	local P = UI.Picker
	if not (P and UI.ShowPicker and P.ShowSection) then return end
	local q, k, id = opts.query, opts.kind, opts.id
	if id ~= nil and k then
		if q == nil or q == "" then
			local rec = k == "guide" and guideHeader(id) or codexRecord(k, id)
			q = rec and (rec.name or rec.title) or q
		end
		if not (sel and sel.kind == k and sel.id == id) then detailCache = {} end
		sel = { kind = k, id = id, remember = true }
		sourceSel = nil
	end
	LK.message = nil
	-- Opening Lookup means looking something up: load the pack now, so the
	-- section knows at once whether it is there.
	local C = ns.Codex
	if C and C.Load and not (C.IsLoaded and C.IsLoaded()) and not lookupOff() then C.Load() end
	if q ~= nil then
		cancelPending()
		query = q
		kind = "all"
	end
	opening = true
	UI.ShowPicker()
	P.ShowSection("Lookup")
	-- The hub's box shows the search (this section has it already).
	if q ~= nil and P.SetQuery then
		P.SetQuery(q)
		-- The box's own state follows its text (a client fires OnTextChanged).
		local box = P.search
		if box and box.Placeholder then box.Placeholder:SetShown(q == "") end
		if box and box.Clear then box.Clear:SetShown(q ~= "") end
	end
	cancelPending()
	opening = false
	refresh()
	if not sel and query ~= "" then selectFirst() end
	if P.search then P.search:SetFocus() end
end

function UI.ToggleLookup()
	local P = UI.Picker
	if P and P.frame and P.frame:IsShown() and P.Section and P.Section() == "Lookup" then
		P.frame:Hide()
	else
		UI.ShowLookup()
	end
end

ns.On("SHOW_LOOKUP", function(q, k, id)
	UI.ShowLookup({ query = q, kind = k, id = id })
end)
-- A late names pack renames the results and the selection's sources.
function namesChanged()
	stale()
	refresh()
end
ns.On("CODEX_LOADED", namesChanged)
ns.On("NAMES_LOADED", namesChanged)
function guidesChanged()
	stale()
	LK.Render()
end
ns.On("GUIDES_REGISTERED", guidesChanged)
ns.On("PACKS_CHANGED", guidesChanged)
-- Search ranks by the suggestion source's guides: a new source ranks anew.
ns.On("SETTING_CHANGED", function(path)
	if path == "behavior.suggestFrom" or path == "behavior" or path == "" then guidesChanged() end
end)
-- Quality colours are lifted against the ground and the icon's hairline is
-- set by hand: a scheme change paints them again.
Theme.OnChanged(function() LK.Render() end)

---------------------------------------------------------------------------
-- The guide menu's search: entity matches under its guide results
---------------------------------------------------------------------------

pickerPools = setmetatable({}, { __mode = "k" }) -- parent -> { folder, rows }
pickerCount, pickerTotal = 0, 0

function pickerClick(self)
	local q = self.psQuery
	if self.psResult then
		UI.ShowLookup({ query = q, kind = self.psResult.kind, id = self.psResult.id })
	else
		UI.ShowLookup({ query = q })
	end
end

-- Draw up to a few matches per kind (items, mounts, NPCs, quests...) at y
-- in `parent` (the guide menu's list), rows `width` wide from x. -> new y.
function UI.LookupRows(parent, y, q, width, x)
	local pool = pickerPools[parent]
	if not pool then
		pool = { rows = {} }
		pickerPools[parent] = pool
	end
	pickerCount, pickerTotal = 0, 0
	local results, counts = {}, {}
	if q and q ~= "" then
		local only = {}
		for _, k in ipairs(kinds()) do if k.key ~= "guide" then only[k.key] = true end end
		results, counts = search(q, only, { perKind = PICKER_PER_KIND, limit = PICKER_PER_KIND * #kinds(), subtitles = false })
	end
	local per, picked = {}, {}
	for _, k in ipairs(kinds()) do
		for _, res in ipairs(results) do
			if res.kind == k.key and res.kind ~= "guide" and (per[res.kind] or 0) < PICKER_PER_KIND and #picked < PICKER_MAX then
				per[res.kind] = (per[res.kind] or 0) + 1
				picked[#picked + 1] = res
			end
		end
	end
	if #picked == 0 then
		if pool.folder then pool.folder:Hide() end
		for _, r in ipairs(pool.rows) do r:Hide() end
		return y
	end
	local total = 0
	for k, n in pairs(counts) do if k ~= "guide" then total = total + n end end
	pickerTotal = total
	if y > 8 then y = y + 10 end
	pool.folder = pool.folder or makeFolder(parent)
	local f = pool.folder
	f.Text:SetText(L["In the Codex"])
	f.Count:SetText(total)
	f:ClearAllPoints()
	f:SetPoint("TOPLEFT", parent, "TOPLEFT", x, -y)
	f:SetWidth(width)
	f:Show()
	y = y + FOLDER_H + 4
	local n = 0
	local function nextRow()
		n = n + 1
		local r = pool.rows[n]
		if not r then
			r = makeRow(parent)
			r:SetScript("OnClick", pickerClick)
			pool.rows[n] = r
		end
		r.psQuery = q
		r:ClearAllPoints()
		r:SetPoint("TOPLEFT", parent, "TOPLEFT", x, -y)
		y = y + ROW_H
		return r
	end
	for _, res in ipairs(picked) do
		local r = nextRow()
		local kindName = KIND[res.kind] and KIND[res.kind].name or res.kind
		local sub = subtitleOf(res)
		paintResult(r, res, sub and (kindName .. DOT .. sub) or kindName, width, false)
		r.psTip = L["Click to see where to get it."]
	end
	local r = nextRow()
	paintAction(r, format(L["Look up everything for %s"], LQ .. q .. RQ), "search", width)
	r.psTip = L["Opens Lookup with this search."]
	for i = n + 1, #pool.rows do pool.rows[i]:Hide() end
	pickerCount = #picked
	return y
end

-- Hides the matches drawn in `parent` by UI.LookupRows. The guide menu calls
-- it before every render: a list drawn without them (search cleared, another
-- view) must not show the last search's rows over its own.
function UI.HideLookupRows(parent)
	local pool = pickerPools[parent]
	pickerCount, pickerTotal = 0, 0
	if not pool then return end
	if pool.folder then pool.folder:Hide() end
	for _, r in ipairs(pool.rows) do r:Hide() end
end

-- Entity rows the guide menu shows now (its empty state stays away).
function UI.LookupCount() return pickerCount end

-- Everything the Codex matched for the guide menu's search (shown or not).
function UI.LookupTotal() return pickerTotal end
