local ADDON, ns = ...
ns._uiDungeonsEnv = ns.ModuleEnv(function(e) e.ADDON = ADDON; e.ns = ns end)
setfenv(1, ns._uiDungeonsEnv)
-- The Dungeons section of the hub: a quest journal per dungeon and raid, laid
-- out the way DungeonJournal lays its pages out (every quest with where it
-- starts and ends, its objective, chain and rewards; the bosses with the
-- quests tied to them; the entrance), in Polestar's world. No loot tables.
-- Data: Polestar.Dungeons (Dungeons/Dungeons.lua) over the Codex pack, loaded
-- on first show; one dungeon page decoded at a time.
--
-- Home: the dungeons as cards in level order (the zone painting centred on
-- the entrance, name, levels, where, quests for the faction filter, a
-- Forever chip), two per line. The sidebar holds the level bands (For your
-- level, All dungeons, 10-20 ... 50-60, Raids) with counts; the faction
-- filter sits at the right of the tab row. Only the cards in view get their
-- painting; the rest are painted as they scroll in.
--
-- A dungeon page: the zone painting fills the header band with the name,
-- the facts, a back chevron and the actions: "Hand in the quests" (shown
-- while any of the page's quests is in the log, primary once one is
-- finished: a guide built by Dungeons.HandIn), "Pick up the quests" (primary
-- while there are quests to pick up and none to hand in: a guide built by
-- Dungeons.PickUp), each in a new tab, "Guide me to the entrance" (primary
-- otherwise, with "Nothing to pick up" saying why) and "Show on map"; the
-- tab row holds Quests, Attunement (Keys when each is a key, on pages that
-- have one), Bosses and Map. Beside the name, a chip says what the page's
-- quests still to do are worth in levels (Dungeons.QuestXP); hovering it
-- opens a panel with the XP, a bar of the levels it spans (earned, then
-- gained) and what was counted.
--   Quests: one panel per quest: the name in its difficulty colour (lifted
--   to 4.5:1 on the ground) above a rule, this character's
--   state (done, in the log, ready, too low), level and requirement,
--   faction, shareable, picked up inside; a label column with the
--   objective, where it starts and ends (each with a pin that sets the
--   arrow; the whole Starts line is a link to the giver, or to the first
--   prerequisite still to do), the chain before it (one line per quest,
--   each with its own pin, the steps still to do numbered and the next one
--   on an accent ground; hovering one shows that quest's levels, state,
--   objective, start and end, rewards and its XP at the character's level)
--   and the rewards (item icons in quality borders, "Choose one", XP, money,
--   reputation; after a chain still to do, a chip of what the quest and its
--   chain are worth, Dungeons.ChainXP, with the levels panel on hover). Item hover shows the game's tooltip (Gear adds its upgrade
--   line there); modified clicks link or try it on.
--   Attunement: per attunement or key (Dungeons.Attunements) its name, this
--   character's state (Done, "Not in your bags" for a key whose chain is
--   done, n of m done), the facts (kind, who needs it, level, side), our
--   note, the item with whether it is owned, "Guide me through it" (a guide
--   built by Dungeons.Attune, in a new tab) and one row per step with its
--   state glyph (Dungeons.AttunementState); a click sets the arrow there.
--   Bosses: kill order, name, level and the quests each one serves; a chest
--   boss says Chest, the bosses after the encounters say Rare, Event or
--   Optional.
--   Map: the entrance on its zone's painting, with the quest givers there.
-- Rows, blocks, tiles and cards are pooled and reused across pages.
--
-- Registered with UI.RegisterSection; opened by SHOW_DUNGEON(key).

-- local ADDON, ns = ...
UI, Theme, W = ns.UI, ns.Theme, ns.Widgets
L = ns.L
floor, max, min, type, ipairs, pairs, tostring, format, pcall = math.floor, math.max, math.min, type, ipairs, pairs, tostring, string.format, pcall
lower, find, concat = string.lower, string.find, table.concat
ZoneArt = UI.ZoneArt

SH = W.SHELL
PAD = SH.pad -- every text edge in the column
GUT = PAD / 2 -- state glyphs in the gutter
CARD_X = PAD - 12 -- card grounds; their text sits on the 32 edge
CARD_GAP = 16
CARD_H = 86
CARD_ART = 82
LABEL_W = 88 -- a quest's label column
VALUE_X = PAD + LABEL_W
TILE_W, TILE_H, TILE_GAP = 200, 32, 8
CHAIN_H = 26
TIE_H = 24
MAP_H = 360
DOT = "  \194\183  "

DS = {}
UI.DungeonsSection = DS

BANDS = {
	{ key = "10", lo = 10, hi = 20 },
	{ key = "20", lo = 20, hi = 30 },
	{ key = "30", lo = 30, hi = 40 },
	{ key = "40", lo = 40, hi = 50 },
	{ key = "50", lo = 50, hi = 60 },
}
FACTIONS = { "Alliance", "Horde", "All" }
SIDE = { Alliance = "A", Horde = "H" }

band = band -- the sidebar's key; nil until the first render picks one
page = page -- the dungeon shown, nil on Home
tab = "quests"
filter = ""
root, hub, home, pg, segs = root, hub, home, pg, segs
cards, heads, blocks, bossRows, ties, givers = {}, {}, {}, {}, {}, {}
atts, attSteps = {}, {} -- the Attunement tab: one head per attunement, one row per step
listCache = listCache
shown = {} -- what the last render put up, for tests and the preview

function D() return ns.Dungeons end

-- A faction's name in the client's language (Names.Faction), else the data's.
function factionName(id, name)
	local N = ns.Names
	return (N and N.Faction and N.Faction(id)) or name
end

---------------------------------------------------------------------------
-- Helpers
---------------------------------------------------------------------------

secret = ns.Compat.IsSecret

function mainWidth()
	local w = hub and (hub:GetWidth() - (hub.psRail or 0) - (hub.psSidebar or SH.sidebar) - 2) or 0
	if w <= 0 then w = 878 end
	return w
end

function questWidth() return mainWidth() - CARD_X * 2 end

function viewHeight()
	local h = hub and hub:GetHeight() or 0
	if h <= 0 then h = SH.height end
	return h - SH.top
end

function uiState()
	local s = ns.CharState()
	if type(s.ui) ~= "table" then s.ui = {} end
	return s.ui
end

function factionKey()
	local f = uiState().dungeonsFaction
	if f ~= "Alliance" and f ~= "Horde" and f ~= "All" then f = UI.PlayerFaction() or "All" end
	return f
end

function playerLevel()
	local C = ns.Compat
	local info = C and C.GetPlayerInfo and C.GetPlayerInfo()
	return info and info.level or 1
end

function thousands(n)
	local s = tostring(floor(n or 0))
	local out = s:reverse():gsub("(%d%d%d)", "%1,"):reverse()
	if out:sub(1, 1) == "," then out = out:sub(2) end
	return out
end

function money(copper)
	local LK = UI.Lookup
	if LK and LK.Money then return LK.Money(copper) end
	return nil
end

-- r, g, b moved toward the text colour until it reads at 4.5:1 on the
-- lightest ground (Theme.Legible).
lift = Theme.Legible

function hexOf(r, g, b)
	return format("ff%02x%02x%02x", floor(r * 255 + 0.5), floor(g * 255 + 0.5), floor(b * 255 + 0.5))
end

-- The client's difficulty colour for a quest level, as the quest log draws
-- it (GetQuestDifficultyColor; its QuestDifficultyColors by level gap
-- otherwise), lifted.
function difficulty(level, plevel)
	local r, g, b
	if type(level) == "number" then
		if GetQuestDifficultyColor then
			local ok, c = pcall(GetQuestDifficultyColor, level)
			if ok and type(c) == "table" and type(c.r) == "number" and not secret(c.r) then r, g, b = c.r, c.g, c.b end
		end
		local t = not r and QuestDifficultyColors
		if type(t) == "table" then
			local d = level - plevel
			local key
			if d >= 5 then key = "impossible"
			elseif d >= 3 then key = "verydifficult"
			elseif d >= -4 then key = "difficult"
			else
				local C = ns.Compat
				key = (C and C.IsQuestTrivial and C.IsQuestTrivial(level, plevel)) and "trivial" or "standard"
			end
			local c = t[key]
			if type(c) == "table" and type(c.r) == "number" then r, g, b = c.r, c.g, c.b end
		end
	end
	if not r then r, g, b = Theme.Color("quest") end
	return lift(r, g, b)
end

function paintRGB(fs, r, g, b)
	W.Uncolor(fs)
	fs:SetTextColor(r, g, b, 1)
end

-- The client's colour for an item quality (unlifted, for borders), or nil.
function qualityRaw(q)
	if type(q) ~= "number" then return nil end
	local C = C_Item
	if C and C.GetItemQualityColor then
		local ok, r, g, b = pcall(C.GetItemQualityColor, q)
		if ok and type(r) == "number" and not secret(r) then return r, g, b end
	end
	local t = ITEM_QUALITY_COLORS and ITEM_QUALITY_COLORS[q]
	if type(t) == "table" and type(t.r) == "number" then return t.r, t.g, t.b end
	return nil
end

function itemIcon(id)
	local C = C_Item
	if type(id) ~= "number" or not (C and C.GetItemIconByID) then return nil end
	local ok, icon = pcall(C.GetItemIconByID, id)
	if ok and icon and not secret(icon) then return icon end
	return nil
end

mapName = ns.Compat.MapName

function bandOf(level)
	if type(level) ~= "number" then return nil end
	for i = #BANDS, 1, -1 do
		if level >= BANDS[i].lo then return BANDS[i].key end
	end
	return BANDS[1].key
end

function bandLabel(key)
	for _, b in ipairs(BANDS) do
		if b.key == key then return UI.LevelRange(b.lo, b.hi) end
	end
	return key
end

function forYou(d, plevel)
	if d.kind == "raid" or not d.minLevel then return false end
	return plevel >= d.minLevel - 2 and plevel <= (d.maxLevel or d.minLevel)
end

-- Quests on a page for the filter ("All": both factions).
function questCount(d, f)
	local q = d.quests or {}
	if f == "All" then return max(q.A or 0, q.H or 0), q.A or 0, q.H or 0 end
	return q[SIDE[f]] or 0
end

-- For your level under the filter: a dungeon whose quests are all the other
-- faction's is theirs, not yours.
function forYouAs(d, plevel, f)
	if not forYou(d, plevel) then return false end
	if f == "All" then return true end
	local q = d.quests or {}
	return (q[SIDE[f]] or 0) > 0 or ((q.A or 0) == 0 and (q.H or 0) == 0)
end

function list()
	if not listCache then listCache = D().List() end
	return listCache
end

-- The cards a sidebar key shows, in level order.
function entries(key, plevel, f)
	local out = {}
	local q = filter ~= "" and lower(filter) or nil
	for _, d in ipairs(list()) do
		local ok
		if q then
			ok = find(lower(d.name), q, 1, true) ~= nil
		elseif key == "level" then
			ok = forYouAs(d, plevel, f)
		elseif key == "raid" then
			ok = d.kind == "raid"
		elseif key == "all" then
			ok = d.kind ~= "raid"
		else
			ok = d.kind ~= "raid" and bandOf(d.minLevel) == key
		end
		if ok then out[#out + 1] = d end
	end
	return out
end

-- Quest state for this character: "done", "ready", "log", "low", "open".
function questState(q, plevel)
	local C = ns.Compat
	if C and q.id then
		if C.IsQuestCompleted and C.IsQuestCompleted(q.id) then return "done" end
		if C.IsOnQuest and C.IsOnQuest(q.id) then
			if C.IsQuestReadyForTurnIn and C.IsQuestReadyForTurnIn(q.id) then return "ready" end
			return "log"
		end
	end
	if q.minLevel and plevel < q.minLevel then return "low" end
	return "open"
end

STATE_GLYPH = {
	done = { "check", "success" }, ready = { "icon-turnin", "success" }, log = { "icon-turnin", "quest" },
	low = { "lock", "warning" }, open = { "icon-accept", "quest" },
}

function stateChip(state, q)
	if state == "done" then return L["Done"], "success" end
	if state == "ready" then return L["Ready to turn in"], "success" end
	if state == "log" then return L["In your log"], "neutral" end
	if state == "low" then return format(L["From level %d"], q.minLevel), "warning" end
	return nil
end

POINT_COLOR = { npc = "npc", object = "object", item = "item" }

-- "Nalpak  ·  The Barrens", coloured; "inside the dungeon" when it is.
function pointText(p)
	if type(p) ~= "table" then return "|c" .. Theme.Hex("textMuted") .. L["Not known"] .. "|r" end
	local N = ns.Names
	local own = type(p.id) == "number" and ((p.kind == "npc" and N.Npc(p.id)) or (p.kind == "object" and N.Object(p.id)) or (p.kind == "item" and N.Item(p.id))) or nil
	local name = own or p.name or L["Not known"]
	local text = "|c" .. Theme.Hex(POINT_COLOR[p.kind] or "npc") .. name .. "|r"
	local place
	if p.inside then
		place = "|c" .. Theme.Hex("dungeon") .. L["inside the dungeon"] .. "|r"
	else
		local z = mapName(p.map)
		if z then place = "|c" .. Theme.Hex("textDim") .. z .. "|r" end
	end
	if place then text = text .. "|c" .. Theme.Hex("textMuted") .. DOT .. "|r" .. place end
	return text
end

function canGuide(p)
	return type(p) == "table" and p.map and p.x and p.y and ns.Nav and true or false
end

-- Where a page quest starts for this character: its giver of the
-- character's side nearest `from` when several NPCs give it
-- (Dungeons.Giver), else the page's own start.
function startOf(q, from)
	local s = q.start
	local Dg = D()
	if not s or s.inside or s.kind == "item" or q.startItem or not Dg.Giver then return s end
	return Dg.Giver(q, from) or s
end

function guideTo(self)
	local p = self.psPoint
	local Dg = D()
	if p and Dg and Dg.GuideToPoint then Dg.GuideToPoint(p, self.psLabel) end
end

-- The Starts line as one link over its pin and text: the arrow to the giver,
-- or to the first prerequisite still to do.
function linkEnter(self)
	local p = self.psPin
	if p:IsEnabled() then W.Color(p.Icon, "text") end
	W.SimpleTip(self)
end

function linkLeave(self)
	local p = self.psPin
	W.Color(p.Icon, "textDim", p:IsEnabled() and 1 or 0.35)
	W.HideTip(self)
end

---------------------------------------------------------------------------
-- Pools
---------------------------------------------------------------------------

function textShadow(fs)
	W.Painter(fs, function(t)
		local r, g, b = Theme.Color("shade")
		t:SetShadowOffset(0, -1)
		t:SetShadowColor(r, g, b, 0.85)
	end)
	return fs
end

-- A quest block's own chips, chain rows and tiles, kept on the block.
function chip(b, i)
	local c = b.Chips[i]
	if not c then
		c = W.Chip(b)
		b.Chips[i] = c
	end
	return c
end

function pin(parent, tip)
	local b = W.IconButton(parent, "icon-goto", 22, tip or L["Set the arrow here"], guideTo, 12)
	return b
end

function card(i)
	local c = cards[i]
	if c then return c end
	local cw = floor((mainWidth() - CARD_X * 2 - CARD_GAP) / 2)
	c = CreateFrame("Button", nil, home.Body)
	c:SetSize(cw, CARD_H)
	Theme.Skin(c, "button")
	W.Hover(c)

	c.Art = ZoneArt.Create(c, cw - 4, CARD_H - 4, "panel")
	c.Art:SetPoint("TOPLEFT", c, "TOPLEFT", 2, -2)
	c.Art:SetPoint("BOTTOMRIGHT", c, "BOTTOMRIGHT", -2, 2)
	c.Art.psZoom = 1.6

	local vig = c.Art.Over:CreateTexture(nil, "BACKGROUND", nil, 1)
	vig:SetAllPoints(c.Art.Over)
	vig:SetTexture("Interface\\Buttons\\WHITE8X8")
	vig:SetVertexColor(0.03, 0.05, 0.09, 0.68)
	c.Vignette = vig

	local gb = CreateFrame("Frame", nil, c)
	gb:SetAllPoints(c)
	gb:SetBackdrop({
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 12,
		insets = { left = 2, right = 2, top = 2, bottom = 2 },
	})
	gb:SetBackdropBorderColor(0.70, 0.55, 0.25, 0.85)
	c.GoldBorder = gb

	c:HookScript("OnEnter", function(self) self.GoldBorder:SetBackdropBorderColor(1.0, 0.85, 0.30, 1.0) end)
	c:HookScript("OnLeave", function(self) self.GoldBorder:SetBackdropBorderColor(0.70, 0.55, 0.25, 0.85) end)

	local iconF = CreateFrame("Frame", nil, c.Art.Over)
	iconF:SetSize(38, 38)
	iconF:SetPoint("LEFT", c.Art.Over, "LEFT", 12, 0)
	local iconT = iconF:CreateTexture(nil, "ARTWORK")
	iconT:SetAllPoints(iconF)
	iconT:SetTexCoord(0.08, 0.92, 0.08, 0.92)
	c.Icon = iconT

	local iconB = CreateFrame("Frame", nil, iconF)
	iconB:SetPoint("TOPLEFT", iconF, "TOPLEFT", -2, 2)
	iconB:SetPoint("BOTTOMRIGHT", iconF, "BOTTOMRIGHT", 2, -2)
	iconB:SetBackdrop({
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 8,
		insets = { left = 1, right = 1, top = 1, bottom = 1 },
	})
	iconB:SetBackdropBorderColor(0.9, 0.75, 0.3, 0.9)
	c.IconBorder = iconB

	c.Name = W.Text(c.Art.Over, "heading", "accent")
	c.Name:SetPoint("TOPLEFT", iconF, "TOPRIGHT", 12, 1)
	c.Name:SetTextColor(1.0, 0.85, 0.32, 1.0)
	c.Name:SetWidth(cw - 70 - 130)

	c.Stats = W.Text(c.Art.Over, "small", "textDim")
	c.Stats:SetPoint("BOTTOMLEFT", iconF, "BOTTOMRIGHT", 12, 2)
	c.Stats:SetWidth(cw - 70 - 130)
	c.Stats:SetTextColor(0.82, 0.82, 0.82, 1.0)

	local plaque = CreateFrame("Frame", nil, c.Art.Over)
	plaque:SetSize(110, 20)
	plaque:SetPoint("BOTTOMRIGHT", c.Art.Over, "BOTTOMRIGHT", -10, 12)
	local pbg = plaque:CreateTexture(nil, "BACKGROUND")
	pbg:SetAllPoints(plaque)
	pbg:SetTexture("Interface\\Buttons\\WHITE8X8")
	pbg:SetVertexColor(0.25, 0.18, 0.06, 0.90)
	local pbrd = CreateFrame("Frame", nil, plaque)
	pbrd:SetAllPoints(plaque)
	pbrd:SetBackdrop({
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 8,
		insets = { left = 1, right = 1, top = 1, bottom = 1 },
	})
	pbrd:SetBackdropBorderColor(1.0, 0.82, 0.30, 0.95)
	local ptxt = plaque:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	ptxt:SetPoint("CENTER", plaque, "CENTER", 0, 0)
	ptxt:SetText("Solo de mi nivel")
	ptxt:SetTextColor(1.0, 0.88, 0.45, 1.0)
	plaque.Text = ptxt
	c.LevelPlaque = plaque

	c.Forever = W.Chip(c.Art.Over)
	c.Yours = W.Chip(c.Art.Over)
	c.Yours:Hide()
	c:SetScript("OnClick", function(self) DS.Open(self.psKey) end)
	cards[i] = c
	return c
end

function head(i)
	local h = heads[i]
	if h then return h end
	h = W.SectionHeader(home.Body)
	heads[i] = h
	return h
end

-- A quest's XP, money and reputation rewards, as chip texts.
function rewardExtras(rw)
	local extras = {}
	if rw.xp and rw.xp > 0 then extras[#extras + 1] = format(L["%s XP"], thousands(rw.xp)) end
	local m = rw.money and money(rw.money)
	if m then extras[#extras + 1] = m end
	for _, r in ipairs(rw.rep or {}) do
		if r.value and r.value ~= 0 then
			extras[#extras + 1] = format(r.value > 0 and "+%d %s" or "%d %s", r.value, factionName(r.faction, r.name) or L["Reputation"])
		end
	end
	return extras
end

-- A chain quest's details on hover: levels, this character's state, the
-- objective, where it starts and ends, its rewards, and its XP at the
-- character's level when the client gives less.
function chainEnter(self)
	local q = self.psQuest
	if not q then return end
	local lines = {}
	local meta = {}
	if q.level then meta[#meta + 1] = format(L["Level %d"], q.level) end
	if q.minLevel then meta[#meta + 1] = format(L["Requires level %d"], q.minLevel) end
	if #meta > 0 then lines[#lines + 1] = concat(meta, DOT) end
	local stateText, kind = stateChip(questState(q, self.psLevel or 1), q)
	if stateText then
		local r, g, b = Theme.Color(kind == "success" and "success" or "textDim")
		lines[#lines + 1] = { stateText, r, g, b }
	end
	local obj = D().ObjectiveText(q)
	if obj then lines[#lines + 1] = obj end
	lines[#lines + 1] = { left = L["Starts"], right = pointText(startOf(q, ns.PlayerPoint())) }
	if q.finish then lines[#lines + 1] = { left = L["Ends"], right = pointText(q.finish) } end
	local rw = q.rewards or {}
	local extras = rewardExtras(rw)
	if #extras > 0 then lines[#lines + 1] = { left = L["Rewards"], right = concat(extras, DOT) } end
	for _, it in ipairs(rw.items or {}) do
		local name = (type(it.id) == "number" and ns.Names.Item(it.id)) or it.name
		if name then
			lines[#lines + 1] = { left = it.choice and L["Choose one"] or L["You get"], right = "|c" .. Theme.Hex("item") .. name .. "|r" }
		end
	end
	local Lv = ns.Levels
	if Lv and type(rw.xp) == "number" and rw.xp > 0 and q.level then
		local part = Lv.Share(self.psLevel or 1, q.level)
		if part < 1 then
			local r, g, b = Theme.Color("warning")
			lines[#lines + 1] = { format(L["%s XP at your level"], thousands(floor(rw.xp * part + 0.5))), r, g, b }
		end
	end
	W.Tooltip(self, "ANCHOR_TOP", q.title or (L["Quest"] .. " " .. tostring(q.id)), lines)
end

function chainRow(b, i)
	local r = b.Chains[i]
	if r then return r end
	r = CreateFrame("Frame", nil, b)
	r:SetHeight(CHAIN_H)
	r.Highlight = W.Fill(r, "chipAccent", "BACKGROUND")
	r.Highlight:Hide()
	r:EnableMouse(true)
	r:SetScript("OnEnter", chainEnter)
	r:SetScript("OnLeave", W.HideTip)
	-- Completed steps keep their check; unfinished ones show their chain number.
	r.Glyph = W.Tex(r, "ARTWORK", "circle", "textMuted")
	r.Glyph:SetPoint("CENTER", r, "LEFT", 10, 0)
	r.Number = W.Text(r, "caption", "textMuted")
	r.Number:SetPoint("CENTER", r, "LEFT", 10, 0)
	r.Title = W.Text(r, "label", "text")
	r.Title:SetPoint("LEFT", r, "LEFT", 24, 0)
	r.Sub = W.Text(r, "small", "textMuted")
	r.Sub:SetPoint("LEFT", r.Title, "RIGHT", 10, 0)
	r.Pin = pin(r)
	r.Pin:SetPoint("LEFT", r.Sub, "RIGHT", 2, 0)
	b.Chains[i] = r
	return r
end

function tileEnter(self)
	W.ItemTip(self, self.psID)
end

function tileLeave(self)
	W.HideTooltip(self)
end

-- Shift-click links it in chat, Ctrl-click tries it on, Alt-click guides
-- (W.ItemClick: the client's own modified-click handling).
function tileClick(self)
	W.ItemClick(self.psID)
end

function tile(b, i)
	local t = b.Tiles[i]
	if t then return t end
	t = CreateFrame("Button", nil, b)
	t:SetSize(TILE_W, TILE_H)
	W.Hover(t)
	t.Well = CreateFrame("Frame", nil, t)
	t.Well:SetSize(TILE_H, TILE_H)
	t.Well:SetPoint("LEFT", t, "LEFT", 0, 0)
	t.Well.Ground = W.Fill(t.Well, "scrim", "BACKGROUND", 0)
	t.Icon = t.Well:CreateTexture(nil, "ARTWORK")
	t.Icon:SetPoint("TOPLEFT", t.Well, "TOPLEFT", 1, -1)
	t.Icon:SetPoint("BOTTOMRIGHT", t.Well, "BOTTOMRIGHT", -1, 1)
	t.Name = W.Text(t, "label", "item")
	t.Name:SetPoint("LEFT", t.Well, "RIGHT", 10, 0)
	t.Name:SetWidth(TILE_W - TILE_H - 14)
	t:SetScript("OnEnter", tileEnter)
	t:SetScript("OnLeave", tileLeave)
	t:SetScript("OnClick", tileClick)
	b.Tiles[i] = t
	return t
end

function label(parent, text)
	local fs = W.Text(parent, "small", "textDim")
	fs:SetText(text or "")
	fs:SetJustifyH("LEFT")
	return fs
end

function block(i)
	local b = blocks[i]
	if b then return b end
	b = CreateFrame("Frame", nil, pg.Body)
	Theme.Skin(b, "panel")
	b.Chains, b.Tiles, b.Chips = {}, {}, {}
	-- What the quest and the chain before it are worth (UI/LevelTip.lua).
	b.ChainXP = UI.LevelTip.Chip(b, hub)
	b.Glyph = W.Tex(b, "ARTWORK", "icon-accept", "quest")
	b.Glyph:SetSize(14, 14)
	b.Glyph:SetPoint("CENTER", b, "TOPLEFT", GUT, -28)
	b.Title = W.Text(b, "title", "text")
	b.Title:SetPoint("LEFT", b, "TOPLEFT", PAD, -28)
	b.Faction = W.Chip(b)
	b.State = W.Chip(b)
	b.Meta = W.Text(b, "small", "textMuted")
	b.Meta:SetPoint("TOPLEFT", b, "TOPLEFT", PAD, -44)
	b.HeadRule = W.Divider(b)
	b.HeadRule:SetPoint("TOPLEFT", b, "TOPLEFT", PAD, -62)
	b.HeadRule:SetPoint("TOPRIGHT", b, "TOPRIGHT", -PAD, -62)
	b.ObjLabel = label(b, L["Objective"])
	b.Obj = W.Text(b, "note", "text")
	b.Obj:SetWordWrap(true)
	b.Obj:SetJustifyV("TOP")
	b.StartLabel = label(b, L["Starts"])
	b.StartPin = pin(b)
	b.Start = W.Text(b, "label", "text")
	b.Start:SetWordWrap(true)
	b.Start:SetJustifyV("TOP")
	b.StartLink = CreateFrame("Button", nil, b)
	b.StartLink:SetHeight(22)
	b.StartLink:SetFrameLevel(b.StartPin:GetFrameLevel() + 1)
	W.Hover(b.StartLink)
	b.StartLink.psPin = b.StartPin
	b.StartLink:SetScript("OnClick", guideTo)
	b.StartLink:SetScript("OnEnter", linkEnter)
	b.StartLink:SetScript("OnLeave", linkLeave)
	b.EndLabel = label(b, L["Ends"])
	b.EndPin = pin(b)
	b.End = W.Text(b, "label", "text")
	b.ChainLabel = label(b, L["Chain"])
	b.ChooseLabel = label(b, L["Choose one"])
	b.GetLabel = label(b, L["You get"])
	b.MoreLabel = label(b, L["Rewards"])
	blocks[i] = b
	return b
end

function bossRow(i)
	local r = bossRows[i]
	if r then return r end
	r = CreateFrame("Frame", nil, pg.Body)
	r.Num = W.Text(r, "number", "textMuted")
	r.Num:SetJustifyH("CENTER")
	r.Num:SetWidth(PAD)
	r.Num:SetPoint("CENTER", r, "TOPLEFT", GUT, -24)
	r.Name = W.Text(r, "title", "text")
	r.Name:SetPoint("LEFT", r, "TOPLEFT", PAD, -24)
	r.Level = W.Text(r, "small", "textMuted")
	r.Level:SetPoint("LEFT", r.Name, "RIGHT", 10, 0)
	r.Rule = W.Divider(r)
	r.Rule:SetPoint("BOTTOMLEFT", r, "BOTTOMLEFT", PAD, 0)
	r.Rule:SetPoint("BOTTOMRIGHT", r, "BOTTOMRIGHT", -PAD, 0)
	bossRows[i] = r
	return r
end

function tie(i)
	local t = ties[i]
	if t then return t end
	t = CreateFrame("Button", nil, pg.Body)
	t:SetHeight(TIE_H)
	W.Hover(t)
	t.Glyph = W.Tex(t, "ARTWORK", "icon-kill", "textDim")
	t.Glyph:SetSize(12, 12)
	t.Glyph:SetPoint("LEFT", t, "LEFT", 4, 0)
	t.Text = W.Text(t, "label", "textDim")
	t.Text:SetPoint("LEFT", t, "LEFT", 24, 0)
	t:SetScript("OnClick", function(self) DS.ShowQuest(self.psQuest) end)
	t:SetScript("OnEnter", W.SimpleTip)
	t:SetScript("OnLeave", W.HideTip)
	t.psTip = L["Show the quest"]
	ties[i] = t
	return t
end

-- An attunement's head on the Attunement tab: state glyph, name, state
-- chip, facts, our note, the item with whether it is owned, and "Guide me
-- through it".
function attHead(i)
	local h = atts[i]
	if h then return h end
	h = CreateFrame("Frame", nil, pg.Body)
	h.Tiles = {}
	h.Glyph = W.Tex(h, "ARTWORK", "icon-dungeon", "dungeon")
	h.Glyph:SetSize(14, 14)
	h.Glyph:SetPoint("CENTER", h, "TOPLEFT", GUT, -30)
	h.Title = W.Text(h, "title", "quest")
	h.Title:SetPoint("LEFT", h, "TOPLEFT", PAD, -30)
	h.State = W.Chip(h)
	h.State:SetPoint("LEFT", h.Title, "RIGHT", 10, 0)
	h.Meta = W.Text(h, "small", "textMuted")
	h.Meta:SetPoint("TOPLEFT", h, "TOPLEFT", PAD, -46)
	h.Note = W.Text(h, "note", "textDim")
	h.Note:SetWordWrap(true)
	h.Note:SetJustifyV("TOP")
	h.Note:SetJustifyH("LEFT")
	h.Note:SetPoint("TOPLEFT", h, "TOPLEFT", PAD, -66)
	h.Owned = W.Text(h, "small", "textMuted")
	h.Guide = W.Button(h, L["Guide me through it"], function(self) DS.Attune(self.psAtt) end, { height = 28, icon = "icon-goto" })
	h.Guide:SetPoint("RIGHT", h, "TOPRIGHT", -(PAD - 12), -30)
	h.Rule = W.Divider(h)
	h.Rule:SetPoint("BOTTOMLEFT", h, "BOTTOMLEFT", PAD, 0)
	h.Rule:SetPoint("BOTTOMRIGHT", h, "BOTTOMRIGHT", -PAD, 0)
	atts[i] = h
	return h
end

-- One step of an attunement: its state glyph in the gutter, what to do and
-- where; a click sets the arrow there.
function attStep(i)
	local r = attSteps[i]
	if r then return r end
	r = CreateFrame("Button", nil, pg.Body)
	r:SetHeight(TIE_H)
	W.Hover(r)
	r.Glyph = W.Tex(r, "ARTWORK", "circle", "textMuted")
	r.Glyph:SetSize(12, 12)
	r.Glyph:SetPoint("CENTER", r, "LEFT", GUT, 0)
	r.Text = W.Text(r, "label", "text")
	r.Text:SetPoint("LEFT", r, "LEFT", PAD, 0)
	r.Sub = W.Text(r, "small", "textMuted")
	r.Sub:SetPoint("LEFT", r.Text, "RIGHT", 10, 0)
	r:SetScript("OnClick", guideTo)
	r:SetScript("OnEnter", W.SimpleTip)
	r:SetScript("OnLeave", W.HideTip)
	attSteps[i] = r
	return r
end

-- A place marker on a painting: a dark well under a ring and dot.
function marker(parent, glyph, color, size)
	local m = CreateFrame("Frame", nil, parent)
	m:SetSize(size, size)
	m.Well = m:CreateTexture(nil, "ARTWORK")
	m.Well:SetTexture(Theme.Media("circle"))
	m.Well:SetAllPoints(m)
	W.Painter(m.Well, function(t)
		local r, g, b = Theme.Color("scrim")
		t:SetVertexColor(r, g, b, 0.78)
	end)
	m.Glyph = W.Tex(m, "OVERLAY", glyph, color)
	m.Glyph:SetSize(size - 6, size - 6)
	m.Glyph:SetPoint("CENTER", m, "CENTER", 0, 0)
	return m
end

function entranceMarker(parent)
	local m = marker(parent, "qol-ring", "dungeon", 24)
	m.Dot = W.Tex(m, "OVERLAY", "circle", "dungeon")
	m.Dot:SetSize(7, 7)
	m.Dot:SetPoint("CENTER", m, "CENTER", 0, 0)
	return m
end

function placeOn(m, art, x, y)
	local cw, ch = art.Canvas:GetWidth(), art.Canvas:GetHeight()
	m:ClearAllPoints()
	m:SetPoint("CENTER", art.Canvas, "TOPLEFT", (x or 50) / 100 * cw, -(y or 50) / 100 * ch)
end

function giverEnter(self)
	W.Tooltip(self, "ANCHOR_TOP", self.psName, self.psLines)
end

function giver(i)
	local g = givers[i]
	if g then return g end
	g = marker(pg.MapArt, "icon-accept", "quest", 20)
	g:SetFrameLevel(pg.MapArt.Over:GetFrameLevel() + 2)
	g:EnableMouse(true)
	g:SetScript("OnEnter", giverEnter)
	g:SetScript("OnLeave", W.HideTip)
	givers[i] = g
	return g
end

