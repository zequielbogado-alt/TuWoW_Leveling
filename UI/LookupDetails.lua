local ADDON, ns = ...
ns._uiLookupEnv = ns.ModuleEnv(function(e) e.ADDON = ADDON; e.ns = ns end)
setfenv(1, ns._uiLookupEnv)
-- Lookup, a section of the hub (the guide menu's window, UI.RegisterSection
-- "Lookup"): one search over the guides and every entity in the Codex
-- (items, mounts, pets, recipes, quests, NPCs, rares, dungeons, zones,
-- treasures), and for the selection, where to get it, ranked for this
-- character, with one click to a guide.
--
-- Search only, never browsing: nothing lists a whole data set. The hub's
-- search box drives it while the section is shown (typing searches after a
-- short pause; Up/Down walk the results, Enter acts on the selection). An
-- empty search shows the recent lookups (CharState().ui.recentLookups) and
-- a hint. The sidebar filters the current results by kind: Everything, then
-- the kinds found, with their counts. Under the 152 line, left: the results
-- grouped by kind, one line each (icon in the gutter, the name in its
-- quality or subject colour, a short subtitle right); under Everything a
-- kind shows its first few and a "Show all" line; a kind shows a page of
-- results and a "Show more" line for the next. Only the rows in view are
-- drawn.
-- Right: the selection's details (its sources asked for once per
-- selection): a band (the zone art of where it is got, the night band
-- without) with the kind, the icon and the name; key facts; the sources
-- from Lookup.Sources, best first (label, detail, travel time, chance, price
-- or standing; ones this character cannot use yet dimmed and saying why);
-- the selected source carries its own "Guide" button; pinned at the bottom
-- "Guide me" (or "Open guide" when a curated guide collects it), which opens
-- the guide in a new tab (Lookup.Guide). Guides in the results open in a new
-- tab or show among the guides; dungeons also open in the Dungeons section.
--
-- Without the Codex pack (Search.Status) it says what is missing and still
-- searches the guides.
--
-- Opened by SHOW_LOOKUP(query, kind, id) (Polestar.Lookup.Show) or
-- UI.ShowLookup({ query, kind, id }): the hub at this section.
--
-- The hub's guide search lists entity matches under its guide results
-- through UI.LookupRows / UI.LookupCount / UI.LookupTotal (an "In the
-- Codex" folder, a few per kind; UI.HideLookupRows clears them before the
-- menu draws a list); picking one opens this section at it.

-- local ADDON, ns = ...
UI, Theme, W = ns.UI, ns.Theme, ns.Widgets
L = ns.L
floor, max, min, type, ipairs, pairs, tostring, format = math.floor, math.max, math.min, type, ipairs, pairs, tostring, string.format
ZoneArt = UI.ZoneArt

SH = W.SHELL
DETAIL_W = 372 -- the details pane, right (the guide menu's)
MID_W = 1120 - SH.sidebar - 2 - DETAIL_W -- the results pane, left; measured from the hub on build
ROW_X = 12 -- where list rows' grounds start in the middle pane
TEXT_X = SH.pad - ROW_X -- text inside a row, on the column's x=32 edge
ROW_H, FOLDER_H = 28, 32
ART_H = 112 -- the details' band, under the tab row's hairline (the header band's height)
DPAD = SH.side -- details pane inset
INNER = DETAIL_W - DPAD * 2
FACT_W, FACT_GAP = 84, 10
ICON = 36 -- the selection's icon on the band
GROUP_MAX = 5 -- results per kind under Everything
PAGE = 50 -- results per page under one kind ("Show more" adds a page)
RECENT_MAX = 10 -- recent lookups kept per character
PICKER_PER_KIND, PICKER_MAX = 3, 9
DEBOUNCE = 0.15
DOT = "  \194\183  "
LQ, RQ = "\226\128\156", "\226\128\157"

LK = {}
UI.Lookup = LK

-- Per kind: the glyph, the subject colour of its names (item kinds use
-- their quality), the singular name.
KIND = {
	guide = { icon = "icon-level", color = "text", name = L["Guide"] },
	mount = { icon = "icon-mount", color = "item", name = L["Mount"], item = true },
	pet = { icon = "icon-collect", color = "item", name = L["Companion"], item = true },
	item = { icon = "icon-use", color = "item", name = L["Item"], item = true },
	recipe = { icon = "icon-craft", color = "item", name = L["Recipe"], item = true },
	tabard = { icon = "icon-rep", color = "item", name = L["Tabard"], item = true },
	quest = { icon = "icon-accept", color = "quest", name = L["Quest"] },
	npc = { icon = "icon-talk", color = "npc", name = L["NPC"] },
	rare = { icon = "qol-target", color = "npc", name = L["Rare"] },
	instance = { icon = "icon-kill", color = "area", name = L["Dungeon"] },
	zone = { icon = "icon-explore", color = "place", name = L["Zone"] },
	treasure = { icon = "icon-treasure", color = "object", name = L["Treasure"] },
}
LK.KIND = KIND
-- The kinds in order without Search (its KINDS carry translated labels too).
FALLBACK_KINDS = {
	{ key = "guide", label = L["Guides"] }, { key = "mount", label = L["Mounts"] }, { key = "pet", label = L["Pets"] },
	{ key = "item", label = L["Items"] }, { key = "recipe", label = L["Recipes"] }, { key = "quest", label = L["Quests"] },
	{ key = "npc", label = L["NPCs"] }, { key = "rare", label = L["Rares"] }, { key = "instance", label = L["Dungeons"] },
	{ key = "zone", label = L["Zones"] }, { key = "treasure", label = L["Treasures"] },
}

SOURCE_ICON = {
	vendor = "icon-vendor", drop = "icon-kill", object = "icon-interact", quest = "icon-accept", gift = "icon-talk", craft = "icon-craft",
	rep = "icon-rep", pvp = "icon-achieve", container = "icon-use", world = "icon-explore",
}

-- The client's colours, for a client (or preview) without the API.
QUALITY_RGB = {
	[0] = { 0.62, 0.62, 0.62 }, { 1, 1, 1 }, { 0.12, 1, 0 }, { 0, 0.44, 0.87 }, { 0.64, 0.21, 0.93 }, { 1, 0.5, 0 }, { 0.9, 0.8, 0.5 },
}
FACTION = { A = ns.FactionName("A"), H = ns.FactionName("H"), AH = L["Both factions"] }

shell, root, results, details = shell, root, results, details -- the hub window, this section, the results scroll, the details pane
query, kind = "", "all"
sel = sel -- { kind, id, title, subtitle, quality }
sourceSel = sourceSel -- index into the selection's sources
visible = {} -- results in the middle pane, top to bottom
pending = pending -- the debounce timer
-- The selection's sources (Lookup.Sources), kept until the selection changes.
detailCache = {}
rowPool, folderPool = {}, {}

---------------------------------------------------------------------------
-- Data
---------------------------------------------------------------------------

secret = ns.Compat.IsSecret

function kinds()
	local S = ns.Search
	return S and type(S.KINDS) == "table" and S.KINDS or FALLBACK_KINDS
end

function kindLabel(key)
	for _, k in ipairs(kinds()) do if k.key == key then return k.label end end
	return L[key]
end

-- -> codexLoaded, reason ("missing", "disabled", "combat", "notloaded",
-- "off" (lookup.enabled false: guides and registered kinds only), ...)
function status()
	local S = ns.Search
	if not (S and S.Status) then return false, "nosearch" end
	local loaded, reason = S.Status()
	return loaded and true or false, reason
end
LK.Status = status

-- Turned off in Options: nothing may load the Codex.
function lookupOff() return select(2, status()) == "off" end

-- What is missing, in the player's words.
function LK.ReasonText(reason)
	if reason == "loading" then
		return L["Loading the Codex\226\128\166"]
	elseif reason == "off" then
		return L["Lookup is turned off in Options > Discovery > Lookup. Items, mounts, NPCs and quests are not searched."]
	elseif reason == "missing" then
		return L["The Polestar_Codex addon is not installed. Get Polestar from CurseForge or the GitHub Releases page (the Polestar zip under Assets, not \"Source code\"), install it and restart the game."]
	elseif reason == "disabled" then
		return L["The Polestar_Codex addon is turned off: enable it in the AddOns list, then /reload."]
	elseif reason == "combat" then
		return L["The Codex loads when combat ends."]
	elseif reason == "notloaded" or reason == nil then
		return L["The Codex loads with your first search."]
	elseif reason == "nosearch" then
		return L["Search is not part of this Polestar build."]
	end
	return format(L["The Codex pack could not load (%s)."], tostring(reason))
end

-- A short line for the tab row.
function reasonShort(reason)
	if reason == "loading" then return L["Loading the Codex\226\128\166"] end
	if reason == "off" then return L["Lookup is off: searching guides only"] end
	if reason == "missing" then return L["Codex not installed: searching guides only"] end
	if reason == "disabled" then return L["Codex disabled: searching guides only"] end
	if reason == "combat" then return L["Codex loads after combat"] end
	return L["Codex unavailable: searching guides only"]
end

-- opts: { perKind, limit, offset (per kind: for the next page) }.
function search(text, only, opts)
	local S = ns.Search
	if text == "" or not (S and S.Query) then return {}, {} end
	local o = { limit = opts.limit, perKind = opts.perKind, offset = opts.offset, subtitles = opts.subtitles }
	if only then o.kinds = only end
	local results, counts = S.Query(text, o)
	return results or {}, counts or {}
end

function codexRecord(k, id)
	local C = ns.Codex
	if not C or lookupOff() then return nil end
	-- Looking an entity up loads the pack, as a search would.
	if not (C.IsLoaded and C.IsLoaded()) and not (C.Load and C.Load()) then return nil end
	if KIND[k] and KIND[k].item then return C.Item and C.Item(id) end
	if k == "npc" or k == "rare" then return C.Npc and C.Npc(id) end
	if k == "quest" then return C.Quest and C.Quest(id) end
	if k == "instance" then return C.Instance and C.Instance(id) end
	if k == "zone" then return C.Zone and C.Zone(id) end
	if k == "treasure" then return C.Object and C.Object(id) end
	return nil
end

-- -> sources (ranked), entity; nil when the runtime has none for this kind.
function sourcesOf(k, id)
	local Lk = ns.Lookup
	-- Guides and kinds other modules register have no Codex sources.
	if k == "guide" or not KIND[k] or not (Lk and Lk.Sources) then return nil, codexRecord(k, id) end
	local list, entity = Lk.Sources(k, id)
	return list, entity or codexRecord(k, id)
end

function curatedOf(k, id)
	local Lk = ns.Lookup
	if k == "guide" or not KIND[k] or not (Lk and Lk.CuratedGuide) then return nil end
	return Lk.CuratedGuide(k, id)
end

function guideHeader(id)
	local G = ns.Guides
	return G and G.Get and G.Get(id) or nil
end

function itemIcon(id)
	local C = C_Item
	if type(id) ~= "number" or not (C and C.GetItemIconByID) then return nil end
	local ok, icon = pcall(C.GetItemIconByID, id)
	if ok and icon and not secret(icon) then return icon end
	return nil
end

-- A quality's colour, lifted toward the text colour until it reads on the
-- lightest ground at 4.5:1 (Theme.Legible, the floor for subject colours).
function qualityColor(q)
	if type(q) ~= "number" or secret(q) then return nil end
	local r, g, b
	local C = C_Item
	if C and C.GetItemQualityColor then
		local ok, cr, cg, cb = pcall(C.GetItemQualityColor, q)
		if ok and type(cr) == "number" and not secret(cr) then r, g, b = cr, cg, cb end
	end
	if not r then
		local t = ITEM_QUALITY_COLORS and ITEM_QUALITY_COLORS[q]
		if type(t) == "table" and type(t.r) == "number" then r, g, b = t.r, t.g, t.b end
	end
	if not r then
		local t = QUALITY_RGB[q]
		if not t then return nil end
		r, g, b = t[1], t[2], t[3]
	end
	return Theme.Legible(r, g, b)
end
LK.QualityColor = qualityColor

-- Item qualities and standings in the client's words (Core/Init.lua).
qualityName, standingName = ns.QualityName, ns.StandingName

-- Paint a font string in a result's colour: its quality for item kinds,
-- else its kind's subject colour.
function paintName(fs, k, quality)
	local r, g, b = qualityColor(quality)
	if r and KIND[k] and KIND[k].item then
		W.Uncolor(fs)
		fs:SetTextColor(r, g, b, 1)
	else
		W.Color(fs, KIND[k] and KIND[k].color or "text")
	end
end

function LK.Money(copper)
	if type(copper) ~= "number" or copper <= 0 then return nil end
	local g, s, c = floor(copper / 10000), floor(copper / 100) % 100, copper % 100
	local parts = {}
	if g > 0 then parts[#parts + 1] = g .. L["g"] end
	if s > 0 then parts[#parts + 1] = s .. L["s"] end
	if c > 0 then parts[#parts + 1] = c .. L["c"] end
	return table.concat(parts, " ")
end

function LK.Travel(seconds)
	if type(seconds) ~= "number" then return nil end
	if seconds < 60 then return L["< 1 min"] end
	local m = floor(seconds / 60 + 0.5)
	if m < 60 then return format(L["%d min"], m) end
	return format(L["%d h %d min"], floor(m / 60), m % 60)
end

function LK.Percent(p)
	if type(p) ~= "number" then return nil end
	local s
	if p >= 10 then s = format("%d", floor(p + 0.5)) else s = format("%.2f", p):gsub("0+$", ""):gsub("%.$", "") end
	return s .. "%"
end

-- The third line of a source: its odds, price, standing, stock.
function sourceFacts(row)
	local src = type(row.src) == "table" and row.src or {}
	local parts = {}
	local chance = row.chance or src.chance
	if chance then
		parts[#parts + 1] = format(row.type == "drop" and L["%s drop chance"] or L["%s chance"], LK.Percent(chance))
	end
	local price = LK.Money(row.price)
	if price then parts[#parts + 1] = price end
	local standing = standingName(row.standing or src.standing)
	-- Said once: the detail ("Reputation · Exalted") may carry it already.
	if standing and not (type(row.detail) == "string" and row.detail:find(standing, 1, true)) then parts[#parts + 1] = standing end
	if src.limited then parts[#parts + 1] = L["Limited stock"] end
	if src.choice then parts[#parts + 1] = L["Reward choice"] end
	if #parts == 0 then return nil end
	return table.concat(parts, DOT)
end

---------------------------------------------------------------------------
-- Rows (shared by this window and the guide menu's Codex folder)
---------------------------------------------------------------------------

function makeFolder(parent)
	local f = CreateFrame("Frame", nil, parent)
	f:SetHeight(FOLDER_H)
	f.Text = W.Text(f, "label", "textMuted")
	f.Text:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", TEXT_X, 7)
	f.Count = W.Text(f, "number", "textMuted")
	f.Count:SetJustifyH("RIGHT")
	f.Count:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -TEXT_X, 7)
	f.Rule = W.Divider(f, false, 0.7)
	f.Rule:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", TEXT_X, 0)
	f.Rule:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -TEXT_X, 0)
	return f
end

function makeRow(parent)
	local r = CreateFrame("Button", nil, parent)
	r:SetHeight(ROW_H)
	W.Hover(r)
	r.Selected = r:CreateTexture(nil, "BACKGROUND")
	r.Selected:SetTexture(Theme.Media("white"))
	r.Selected:SetAllPoints(r)
	W.Painter(r.Selected, function(t) t:SetVertexColor(Theme.Wash("selected")) end)
	r.Bar = r:CreateTexture(nil, "ARTWORK")
	r.Bar:SetTexture(Theme.Media("white"))
	r.Bar:SetWidth(2)
	r.Bar:SetPoint("TOPLEFT", r, "TOPLEFT", 0, 0)
	r.Bar:SetPoint("BOTTOMLEFT", r, "BOTTOMLEFT", 0, 0)
	W.Color(r.Bar, "accent")
	-- The icon sits in the gutter left of the text edge.
	r.Icon = r:CreateTexture(nil, "ARTWORK")
	r.Icon:SetSize(12, 12)
	r.Icon:SetPoint("CENTER", r, "LEFT", TEXT_X / 2 - 1, 0)
	r.Title = W.Text(r, "body", "text")
	r.Title:SetPoint("LEFT", r, "LEFT", TEXT_X, 0)
	r.Sub = W.Text(r, "small", "textMuted")
	r.Sub:SetJustifyH("RIGHT")
	r.Sub:SetPoint("RIGHT", r, "RIGHT", -TEXT_X, 0)
	-- What makes it unobtainable, right after the name (STATUS_TEXT).
	r.Status = W.Chip(r)
	r.Status:SetPoint("LEFT", r.Title, "RIGHT", 8, 0)
	r.Status:Hide()
	r:SetScript("OnEnter", W.SimpleTip)
	r:SetScript("OnLeave", W.HideTip)
	return r
end

function setGlyph(tex, glyph, color)
	tex:SetTexture(Theme.Media(glyph))
	tex:SetTexCoord(0, 1, 0, 1)
	W.Color(tex, color or "textDim")
end

-- An entity's status (Codex item records, Search results): no longer
-- obtainable, or no source known. Shown for reference, never guided to.
STATUS_TEXT = { retired = L["No longer obtainable"], nosource = L["No known source"] }
STATUS_NOTE = {
	retired = L["Not obtainable any more; shown for reference."],
	nosource = L["No source is known for this; shown for reference."],
}
-- A mount without a curated guide: nothing is built from its best source.
MOUNT_NOTE = L["No guide to this mount yet: the sources above say where it comes from and what it takes. Guide on one leads you there."]
LK.STATUS_TEXT = STATUS_TEXT

-- A muted chip saying so.
function paintStatus(chip, status)
	if not STATUS_TEXT[status] then
		chip:Hide()
		return 0
	end
	local w = W.SetChip(chip, STATUS_TEXT[status], "neutral")
	W.Color(chip.Text, "textMuted")
	return w
end

-- A result or selection's name in the client's language, else `fallback`.
function localTitle(kind, id, fallback)
	local S = ns.Search
	return S and S.LocalName and S.LocalName(kind, id) or fallback
end

-- One result on a row: icon (the item's own, else the kind's glyph), the
-- name in its colour (a chip saying why when it cannot be got: the name keeps
-- its full colour), the subtitle right. note: the right-hand text.
function paintResult(r, res, note, width, on)
	r.psResult = res
	r.Selected:SetShown(on and true or false)
	r.Bar:SetShown(on and true or false)
	local icon = KIND[res.kind] and KIND[res.kind].item and itemIcon(res.id)
	if icon then
		W.Uncolor(r.Icon)
		r.Icon:SetTexture(icon)
		r.Icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		r.Icon:SetVertexColor(1, 1, 1, 1)
	else
		setGlyph(r.Icon, KIND[res.kind] and KIND[res.kind].icon or "search", on and "accent" or "textDim")
	end
	r.Title:SetText(localTitle(res.kind, res.id, res.title or tostring(res.id)))
	paintName(r.Title, res.kind, res.quality)
	local blocked = STATUS_TEXT[res.status] ~= nil
	local chipW = paintStatus(r.Status, res.status)
	W.Color(r.Sub, "textMuted")
	r.Sub:SetText(note or "")
	local room = width - TEXT_X * 2 - (note and note ~= "" and (r.Sub:GetStringWidth() + 16) or 0) - (blocked and (chipW + 8) or 0)
	r.Title:SetWidth(max(60, min(room, floor(r.Title:GetStringWidth() + 1))))
	r.Sub:SetWidth(max(0, min(r.Sub:GetStringWidth() + 1, width - TEXT_X * 2 - 60 - (blocked and (chipW + 8) or 0))))
	r:SetWidth(width)
	r:Show()
end

-- A row that acts rather than shows: "Show all 14", "Search everything".
function paintAction(r, text, glyph, width)
	r.psResult = nil
	r.Selected:Hide()
	r.Bar:Hide()
	setGlyph(r.Icon, glyph, "accent")
	r.Icon:SetAlpha(1)
	r.Title:SetAlpha(1)
	r.Status:Hide()
	r.Title:SetText(text)
	W.Color(r.Title, "accent")
	r.Sub:SetText("")
	r.Title:SetWidth(max(60, min(width - TEXT_X * 2, floor(r.Title:GetStringWidth() + 1))))
	r:SetWidth(width)
	r:Show()
end

---------------------------------------------------------------------------
-- Selection and actions
---------------------------------------------------------------------------

function keyOf(k, id) return tostring(k) .. ":" .. tostring(id) end

function LK.Selected() return sel end

-- auto: picked by the search (the first result), not by the player; only a
-- page the player opens joins the recent lookups.
function LK.Select(k, id, res, auto)
	if k == nil or id == nil then
		sel = nil
		detailCache = {}
	else
		res = res or {}
		if not (sel and sel.kind == k and sel.id == id) then detailCache = {} end
		sel = { kind = k, id = id, title = res.title, subtitle = res.subtitle, quality = res.quality, status = res.status, remember = not auto }
	end
	sourceSel = nil
	LK.Render()
end

-- The recent lookups, newest first.
function LK.Recent()
	local s = ns.CharState and ns.CharState()
	if type(s) ~= "table" then return {} end
	s.ui = s.ui or {}
	s.ui.recentLookups = s.ui.recentLookups or {}
	return s.ui.recentLookups
end

function remember(k, id, title, quality, status)
	local list = LK.Recent()
	for i = #list, 1, -1 do
		if list[i].kind == k and list[i].id == id then table.remove(list, i) end
	end
	table.insert(list, 1, { kind = k, id = id, title = title, quality = quality, status = status })
	for i = #list, RECENT_MAX + 1, -1 do list[i] = nil end
end

function LK.SelectSource(i)
	sourceSel = i
	LK.Render()
end

function setStatus(text)
	LK.message = text
	if details then
		details.Note:SetText(text or "")
		W.Color(details.Note, "warning")
	end
end

-- Open a guide (curated or built) for the selection; source index i, else
-- the best one.
function LK.Guide(i)
	-- Nothing leads to what cannot be got.
	if not sel or STATUS_TEXT[sel.status] then return nil end
	local Lk = ns.Lookup
	if not (Lk and Lk.Guide) then return nil end
	local gid, reason = Lk.Guide(sel.kind, sel.id, i)
	if gid then
		-- The guide opens in its tab; the hub steps aside, as loading does.
		ns.Set("ui.shown", true)
		if shell then shell:Hide() end
		return gid
	end
	if reason == "tabs" then
		setStatus(L["Six tabs is the limit. Close one to open another."])
	elseif reason == "mount" then
		setStatus(MOUNT_NOTE)
	else
		setStatus(format(L["No guide could be made for this (%s)."], tostring(reason or "no source")))
	end
	return nil, reason
end

-- A guide result: open it in a new tab, or show it among the hub's guides.
function LK.OpenGuide(id, inMenu)
	if not id then return end
	local P = UI.Picker
	if inMenu then
		if P and P.Select then P.Select(id) end
		if P and P.SetCategory then P.SetCategory("All") end
		if P and P.ShowSection then P.ShowSection("Guides") end
		return
	end
	if P and P.Load then
		P.Load(id, true)
	elseif ns.Engine and ns.Engine.SetGuide then
		ns.Engine.SetGuide(id)
		ns.Set("ui.shown", true)
		local win = (P and P.frame) or _G.TuWoW_LevelingPicker
		if win then win:Hide() end
	end
end

-- Hand a dungeon to the Dungeons section (its bosses and loot).
function hasDungeons() return ns.Dungeons and ns.Dungeons.Open and true or false end
function LK.OpenDungeon(key)
	if not hasDungeons() then return false end
	ns.Dungeons.Open(key)
	return true
end

-- Enter: the selection's primary action.
function LK.Activate()
	if not sel then return end
	-- Acting on it is opening it: it joins the recent lookups.
	if LK.detail and LK.detail.kind == sel.kind and LK.detail.id == sel.id then
		remember(sel.kind, sel.id, LK.detail.title, sel.quality, sel.status)
	end
	if sel.kind == "guide" then
		LK.OpenGuide(sel.id)
	elseif sourceSel then
		LK.Guide(sourceSel)
	elseif details and details.psPrimaryAction then
		details.psPrimaryAction()
	else
		LK.Guide(nil)
	end
end

---------------------------------------------------------------------------
-- Details pane
---------------------------------------------------------------------------

function factRow(i)
	local f = details.Facts[i]
	if f then return f end
	f = {}
	f.Label = W.Text(details, "small", "textMuted")
	f.Label:SetWidth(FACT_W)
	f.Label:SetJustifyH("LEFT")
	f.Value = W.Text(details, "note", "text")
	f.Value:SetWidth(INNER - FACT_W)
	f.Value:SetJustifyH("LEFT")
	f.Value:SetJustifyV("TOP")
	f.Value:SetWordWrap(true)
	details.Facts[i] = f
	return f
end

function sourceRowClick(self, button)
	if self.psIndex then LK.SelectSource(self.psIndex) end
end

function sourceRowDouble(self)
	if self.psIndex then LK.Guide(self.psIndex) end
end

function sourceRow(i)
	local r = details.Rows[i]
	if r then return r end
	local parent = details.Scroll.Child
	r = CreateFrame("Button", nil, parent)
	W.Hover(r)
	r.Selected = r:CreateTexture(nil, "BACKGROUND")
	r.Selected:SetTexture(Theme.Media("white"))
	r.Selected:SetAllPoints(r)
	W.Painter(r.Selected, function(t) t:SetVertexColor(Theme.Wash("selected")) end)
	r.Bar = r:CreateTexture(nil, "ARTWORK")
	r.Bar:SetTexture(Theme.Media("white"))
	r.Bar:SetWidth(2)
	r.Bar:SetPoint("TOPLEFT", r, "TOPLEFT", 0, 0)
	r.Bar:SetPoint("BOTTOMLEFT", r, "BOTTOMLEFT", 0, 0)
	W.Color(r.Bar, "accent")
	r.Icon = r:CreateTexture(nil, "ARTWORK")
	r.Icon:SetSize(14, 14)
	r.Icon:SetPoint("TOPLEFT", r, "TOPLEFT", 8, -9)
	r.Label = W.Text(r, "body", "text")
	r.Label:SetPoint("TOPLEFT", r, "TOPLEFT", 30, -8)
	r.Travel = W.Text(r, "small", "textDim")
	r.Travel:SetJustifyH("RIGHT")
	r.Travel:SetPoint("TOPRIGHT", r, "TOPRIGHT", -10, -9)
	r.Detail = W.Text(r, "small", "textDim")
	r.Detail:SetPoint("TOPLEFT", r, "TOPLEFT", 30, -27)
	r.Facts = W.Text(r, "small", "textMuted")
	r.Facts:SetPoint("TOPLEFT", r, "TOPLEFT", 30, -43)
	-- Why this character cannot use it yet, under the facts.
	r.Why = W.Text(r, "small", "warning")
	r.Guide = W.Button(r, L["Guide"], function(b) LK.Guide(b:GetParent().psIndex) end, { height = 24, icon = "icon-goto" })
	r.Guide:SetPoint("BOTTOMRIGHT", r, "BOTTOMRIGHT", -8, 8)
	r.Guide.psTip = L["Build a guide to this source and open it in a new tab."]
	r:SetScript("OnClick", sourceRowClick)
	r:SetScript("OnDoubleClick", sourceRowDouble)
	r:SetScript("OnEnter", W.SimpleTip)
	r:SetScript("OnLeave", W.HideTip)
	details.Rows[i] = r
	return r
end

function buildDetails()
	local d = CreateFrame("Frame", nil, root)
	details = d
	LK.details = d
	d:SetPoint("TOPRIGHT", root, "TOPRIGHT", 0, 0)
	d:SetPoint("BOTTOMRIGHT", root, "BOTTOMRIGHT", 0, 0)
	d:SetWidth(DETAIL_W)
	d:EnableMouse(true)
	W.Fill(d, "panel")
	local rule = W.Divider(d, true)
	rule:SetPoint("TOPLEFT", d, "TOPLEFT", 0, 0)
	rule:SetPoint("BOTTOMLEFT", d, "BOTTOMLEFT", 0, 0)

	d.Art = ZoneArt.Create(d, DETAIL_W, ART_H, "panel")
	d.Art.psZoom = 1.5
	d.Art:SetPoint("TOPLEFT", d, "TOPLEFT", 0, 0)
	d.Art:EnableMouse(true)
	d.Art:RegisterForDrag("LeftButton")
	d.Art:SetScript("OnDragStart", function() shell:StartMoving() end)
	d.Art:SetScript("OnDragStop", function() shell:StopMovingOrSizing() end)
	-- The icon in a dark well with a hairline in the quality colour, the
	-- name beside it and a muted line under the name.
	d.Well = CreateFrame("Frame", nil, d.Art.Over)
	d.Well:SetSize(ICON, ICON)
	d.Well:SetPoint("BOTTOMLEFT", d.Art, "BOTTOMLEFT", DPAD, 16)
	d.Well:SetFrameLevel(d.Art.Over:GetFrameLevel() + 2)
	d.WellGround = d.Well:CreateTexture(nil, "BACKGROUND")
	d.WellGround:SetTexture(Theme.Media("white"))
	d.WellGround:SetAllPoints(d.Well)
	W.Painter(d.WellGround, function(t)
		local r, g, b = Theme.Color("scrim")
		t:SetVertexColor(r, g, b, 0.72)
	end)
	d.Icon = d.Well:CreateTexture(nil, "ARTWORK")
	d.Title = W.Text(d.Art.Over, "display", "text")
	d.Title:SetPoint("BOTTOMLEFT", d.Art, "BOTTOMLEFT", DPAD + ICON + 12, 16 + 11 + 7)
	d.Title:SetWidth(INNER - ICON - 12)
	-- A long name takes a second line, upward from the subtitle.
	d.Title:SetWordWrap(true)
	d.Title:SetMaxLines(2)
	d.Title:SetJustifyH("LEFT")
	d.Sub = W.Text(d.Art.Over, "small", "textDim")
	d.Sub:SetPoint("BOTTOMLEFT", d.Art, "BOTTOMLEFT", DPAD + ICON + 12, 17)
	d.Sub:SetWidth(INNER - ICON - 12)
	for _, fs in ipairs({ d.Title, d.Sub }) do
		W.Painter(fs, function(t)
			local r, g, b = Theme.Color("shade")
			t:SetShadowOffset(0, -1)
			t:SetShadowColor(r, g, b, 0.85)
		end)
	end

	d.Facts = {}
	-- What makes it unobtainable, first under the band.
	d.Status = W.Chip(d)
	d.Status:Hide()
	-- The sources, under a small folder header, scrolling down to the note.
	d.Head = makeFolder(d)
	d.Head:SetWidth(INNER + TEXT_X * 2)
	d.Scroll = W.Scroll(d)
	d.Rows = {}
	d.NoSource = W.Text(d.Scroll.Child, "note", "textMuted")
	d.NoSource:SetWordWrap(true)
	d.NoSource:SetJustifyV("TOP")
	d.NoSource:SetWidth(INNER)
	d.NoSource:SetPoint("TOPLEFT", d.Scroll.Child, "TOPLEFT", 0, -4)

	-- Pinned at the bottom: a line saying what the button does, the button.
	d.Note = W.Text(d, "note", "textDim")
	d.Note:SetWordWrap(true)
	d.Note:SetJustifyV("BOTTOM")
	d.Note:SetWidth(INNER)
	d.Note:SetPoint("BOTTOMLEFT", d, "BOTTOMLEFT", DPAD, DPAD + 32 + 12)
	d.Primary = W.Button(d, L["Guide me"], function() LK.Activate() end, { primary = true, height = 32 })
	d.Primary:SetPoint("BOTTOMLEFT", d, "BOTTOMLEFT", DPAD, DPAD)
	d.Secondary = W.Button(d, L["Show in Guides"], function(b) if b.psAction then b.psAction() end end, { height = 32 })
	d.Secondary:SetPoint("BOTTOMRIGHT", d, "BOTTOMRIGHT", -DPAD, DPAD)

	-- Nothing selected (or nothing to look in).
	d.EmptyTitle = W.Text(d, "display", "text")
	d.EmptyTitle:SetPoint("TOPLEFT", d, "TOPLEFT", DPAD, -(ART_H + 24))
	d.EmptyTitle:SetWidth(INNER)
	d.EmptyNote = W.Text(d, "note", "textDim")
	d.EmptyNote:SetWordWrap(true)
	d.EmptyNote:SetJustifyV("TOP")
	d.EmptyNote:SetWidth(INNER)
	d.EmptyNote:SetPoint("TOPLEFT", d.EmptyTitle, "BOTTOMLEFT", 0, -10)
end

function skyIndex(s)
	local n = 0
	for i = 1, #s do n = (n * 31 + s:byte(i)) % 997 end
	return n + 1
end

function setButtonWidth(b, w)
	b.psFixedWidth = w
	W.SetButtonText(b, b.Label:GetText())
end

function setButton(b, text, enabled)
	W.SetButtonText(b, text)
	if b.SetEnabled then
		b:SetEnabled(enabled ~= false)
	elseif enabled ~= false then
		if b.Enable then b:Enable() end
	else
		if b.Disable then b:Disable() end
	end
	b:SetAlpha(enabled == false and 0.5 or 1)
end

-- Facts: { label, value, colour? }.
function factsFor(s, entity, list)
	local k, e, out = s.kind, entity or {}, {}
	local function add(label, value, color) if value and value ~= "" then out[#out + 1] = { label, value, color } end end
	if k == "guide" then
		local g = guideHeader(s.id) or {}
		add(L["Category"], g and UI.Category and L[UI.Category(g)])
		add(L["Levels"], UI.LevelRange(g.minLevel, g.maxLevel))
		add(L["Faction"], ns.FactionName(g.faction) or L["Both factions"])
		if g.stepCount or g.steps then add(L["Steps"], tostring(g.stepCount or #g.steps)) end
		return out
	end
	if KIND[k] and KIND[k].item then
		local q = qualityName(e.quality or s.quality)
		add(L["Type"], KIND[k].name .. (q and (DOT .. q) or ""))
		if type(e.reqLevel) == "number" and e.reqLevel > 1 then add(L["Requires"], format(L["Level %d"], e.reqLevel)) end
	elseif k == "npc" or k == "rare" then
		local tags = { KIND[k].name }
		if e.elite then tags[#tags + 1] = L["Elite"] end
		if e.boss then tags[#tags + 1] = L["Boss"] end
		add(L["Type"], table.concat(tags, DOT))
		if e.level then add(L["Level"], (e.levelMax and e.levelMax ~= e.level) and (e.level .. "-" .. e.levelMax) or tostring(e.level)) end
		if e.faction then add(L["Faction"], FACTION[e.faction] or L[e.faction]) end
		if e.instance then
			local inst = codexRecord("instance", e.instance)
			add(L["Dungeon"], inst and inst.name or tostring(e.instance))
		end
	elseif k == "quest" then
		if e.level then add(L["Level"], (e.minLevel and e.minLevel ~= e.level) and format(L["%d (from %d)"], e.level, e.minLevel) or tostring(e.level)) end
		add(L["Faction"], e.faction and (FACTION[e.faction] or L[e.faction]) or L["Both factions"])
		if e.zone then
			local z = UI.MapName(e.zone) or (codexRecord("zone", e.zone) or {}).name
			add(L["Zone"], z)
		end
	elseif k == "instance" then
		add(L["Type"], e.kind == "raid" and L["Raid"] or L["Dungeon"])
		local lv = type(e.levels) == "table" and UI.LevelRange(e.levels[2] or e.levels[1], e.levels[3])
		add(L["Levels"], lv or nil)
		if type(e.bosses) == "table" and #e.bosses > 0 then add(L["Bosses"], tostring(#e.bosses)) end
	else
		add(L["Type"], KIND[k] and KIND[k].name or L[k])
	end
	if list and k ~= "zone" then
		local avail = 0
		for _, row in ipairs(list) do if row.available ~= false then avail = avail + 1 end end
		local label = (KIND[k] and KIND[k].item) and L["Sources"] or L["Places"]
		if #list == 0 then
			add(label, L["None known"], "textMuted")
		elseif avail == #list then
			add(label, tostring(#list))
		else
			add(label, format(L["%d  \194\183  %d open to you"], #list, avail))
		end
	end
	return out
end

function headText(k)
	if KIND[k] and KIND[k].item then return L["Where to get it"] end
	if k == "quest" then return L["Start and turn-in"] end
	if k == "instance" then return L["Entrance"] end
	return L["Where to find it"]
end

-- The band: where it is got (the best source with a place), or its own
-- map, else the night sky.
function bandMap(s, entity, list)
	if s.kind == "zone" then return s.id end
	if s.kind == "guide" then
		local g = guideHeader(s.id)
		return g and g.zone, nil, nil
	end
	for _, row in ipairs(list or {}) do
		if row.map then return row.map, row.x, row.y end
	end
	if entity and type(entity.entrance) == "table" then return entity.entrance.map, entity.entrance.x, entity.entrance.y end
	return entity and entity.map or nil
end

function emptyDetails(title, note)
	local d = details
	d.psArt = ZoneArt.Paint(d.Art, nil, nil, nil, 1)
	for _, p in ipairs({ d.Well, d.Title, d.Sub, d.Status, d.Head, d.Scroll, d.Note, d.Primary, d.Secondary }) do p:Hide() end
	for _, f in ipairs(d.Facts) do
		f.Label:Hide()
		f.Value:Hide()
	end
	d.EmptyTitle:SetText(title)
	d.EmptyNote:SetText(note)
	d.EmptyTitle:Show()
	d.EmptyNote:Show()
	LK.detail = { empty = title, note = note }
end

-- The selection's sources, asked for once per selection (and again only
-- when the Codex or the guides change).
function selectionSources(s)
	local key = keyOf(s.kind, s.id)
	if detailCache.key ~= key or detailCache.gen ~= LK.gen then
		local list, entity = sourcesOf(s.kind, s.id)
		detailCache = { key = key, gen = LK.gen, list = list, entity = entity }
	end
	return detailCache.list, detailCache.entity
end

