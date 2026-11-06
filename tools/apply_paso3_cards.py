# Apply Paso 3 Dungeon Card redesign
with open("UI/DungeonsPools.lua", "r", encoding="utf-8") as f:
    text = f.read()

target_consts = """CARD_ART = 72
CARD_H = CARD_ART + 40"""

rep_consts = """CARD_H = 86
CARD_ART = 82"""

target_card = """function card(i)
	local c = cards[i]
	if c then return c end
	local cw = floor((mainWidth() - CARD_X * 2 - CARD_GAP) / 2)
	c = CreateFrame("Button", nil, home.Body)
	c:SetSize(cw, CARD_H)
	Theme.Skin(c, "button")
	W.Hover(c)
	c.Art = ZoneArt.Create(c, cw - 2, CARD_ART, "panel")
	c.Art:SetPoint("TOPLEFT", c, "TOPLEFT", 1, -1)
	c.Art.psZoom = 1.6
	c.Name = textShadow(W.Text(c.Art.Over, "title", "text"))
	c.Name:SetPoint("BOTTOMLEFT", c.Art, "BOTTOMLEFT", PAD - CARD_X - 1, 10)
	c.Name:SetWidth(cw - (PAD - CARD_X) * 2)
	c.Stats = W.Text(c, "small", "textDim")
	c.Stats:SetSpacing(2) -- factLines may break it onto a second line
	c.Stats:SetPoint("LEFT", c, "TOPLEFT", PAD - CARD_X, -(CARD_ART + 20))
	c.Forever = W.Chip(c)
	c.Yours = W.Chip(c)
	c:SetScript("OnClick", function(self) DS.Open(self.psKey) end)
	cards[i] = c
	return c
end"""

rep_card = """function card(i)
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
	vig:SetTexture("Interface\\\\Buttons\\\\WHITE8X8")
	vig:SetVertexColor(0.03, 0.05, 0.09, 0.68)
	c.Vignette = vig

	local gb = CreateFrame("Frame", nil, c)
	gb:SetAllPoints(c)
	gb:SetBackdrop({
		edgeFile = "Interface\\\\Tooltips\\\\UI-Tooltip-Border",
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
		edgeFile = "Interface\\\\Tooltips\\\\UI-Tooltip-Border",
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
	pbg:SetTexture("Interface\\\\Buttons\\\\WHITE8X8")
	pbg:SetVertexColor(0.25, 0.18, 0.06, 0.90)
	local pbrd = CreateFrame("Frame", nil, plaque)
	pbrd:SetAllPoints(plaque)
	pbrd:SetBackdrop({
		edgeFile = "Interface\\\\Tooltips\\\\UI-Tooltip-Border",
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
end"""

t_norm = text.replace("\r\n", "\n")
tc_norm = target_consts.replace("\r\n", "\n")
tcard_norm = target_card.replace("\r\n", "\n")

assert tc_norm in t_norm, "target_consts not found"
assert tcard_norm in t_norm, "target_card not found"

t_norm = t_norm.replace(tc_norm, rep_consts.replace("\r\n", "\n"))
t_norm = t_norm.replace(tcard_norm, rep_card.replace("\r\n", "\n"))

with open("UI/DungeonsPools.lua", "w", encoding="utf-8", newline="\n") as f:
    f.write(t_norm)

lines = len(t_norm.split("\n"))
print(f"UI/DungeonsPools.lua updated successfully. New line count: {lines}")

