with open("Theme/WidgetsShell.lua", "r", encoding="utf-8") as f:
    text = f.read()

# 1. Update W.HeaderScale thumb and colors
target_scale = """	W.Painter(t.Track, function(tex) tex:SetHeight(3); tex:SetVertexColor(Theme.Wash("track")) end)
	W.Painter(t.Fill, function(tex) tex:SetHeight(3); tex:SetVertexColor(Theme.Accent()) end)
	W.Painter(t.Thumb, function(tex) tex:SetVertexColor(Theme.Color("text")) end)"""

rep_scale = """	W.Painter(t.Track, function(tex) tex:SetHeight(4); tex:SetVertexColor(0.18, 0.22, 0.32, 0.9) end)
	W.Painter(t.Fill, function(tex) tex:SetHeight(4); tex:SetVertexColor(1.0, 0.82, 0.25, 1.0) end)
	W.Painter(t.Thumb, function(tex)
		tex:SetSize(16, 16)
		tex:SetTexture(Theme.Media("qol-coin"))
		tex:SetVertexColor(1, 1, 1, 1)
	end)"""

# 2. Update Emblem glow
target_emblem = """	local emblemParent = railFrame or side
	f.Emblem.Hot = W.Tex(emblemParent, "OVERLAY", "emblem-hot")
	f.Emblem.Hot:Hide()
	f.Emblem.Glow = W.Tex(emblemParent, "BORDER", "glow")
	f.Emblem.Glow:Hide()"""

rep_emblem = """	local emblemParent = railFrame or side
	f.Emblem.Hot = W.Tex(emblemParent, "OVERLAY", "emblem-hot")
	f.Emblem.Hot:Hide()
	f.Emblem.Glow = W.Tex(emblemParent, "BORDER", "glow")
	f.Emblem.Glow:SetSize(EMBLEM + 26, EMBLEM + 26)
	f.Emblem.Glow:SetPoint("CENTER", f.Emblem, "CENTER", 0, 0)
	f.Emblem.Glow:SetVertexColor(0.15, 0.50, 0.95, 0.85)
	f.Emblem.Glow:Show()"""

# 3. Add 9-Slice Gold Fantasy Border and Cosmic background on f
target_shell = """	f.psTitle = opts.title or "TuWoW Leveling"
	Theme.Skin(f, "window")
	f.navButtons, f.tabButtons, f.footerButtons, f.railButtons = {}, {}, { left = {}, right = {} }, {}
	f.psRail = RAIL"""

rep_shell = """	f.psTitle = opts.title or "TuWoW Leveling"
	Theme.Skin(f, "window")
	f.navButtons, f.tabButtons, f.footerButtons, f.railButtons = {}, {}, { left = {}, right = {} }, {}
	f.psRail = RAIL

	-- Marco Cinematico Retail de Oro Forjado (9-Slice con esquinas ornamentales)
	local goldFrame = CreateFrame("Frame", nil, f)
	goldFrame:SetPoint("TOPLEFT", f, "TOPLEFT", -3, 3)
	goldFrame:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", 3, -3)
	goldFrame:SetFrameLevel(f:GetFrameLevel() + 25)
	f.GoldFrame = goldFrame

	local goldBorder = CreateFrame("Frame", nil, goldFrame)
	goldBorder:SetAllPoints(goldFrame)
	goldBorder:SetBackdrop({
		edgeFile = "Interface\\\\DialogFrame\\\\UI-DialogBox-Gold-Border",
		edgeSize = 20,
		insets = { left = 5, right = 5, top = 5, bottom = 5 },
	})
	goldBorder:SetBackdropBorderColor(1.0, 0.88, 0.50, 0.95)
	goldFrame.Border = goldBorder

	local corners = {
		{ point = "TOPLEFT",     x = -2, y =  2, u1 = 0, u2 = 1, v1 = 0, v2 = 1 },
		{ point = "TOPRIGHT",    x =  2, y =  2, u1 = 1, u2 = 0, v1 = 0, v2 = 1 },
		{ point = "BOTTOMLEFT",  x = -2, y = -2, u1 = 0, u2 = 1, v1 = 1, v2 = 0 },
		{ point = "BOTTOMRIGHT", x =  2, y = -2, u1 = 1, u2 = 0, v1 = 1, v2 = 0 },
	}
	goldFrame.Corners = {}
	for i, c in ipairs(corners) do
		local ctex = goldFrame:CreateTexture(nil, "OVERLAY", nil, 7)
		ctex:SetSize(28, 28)
		ctex:SetPoint(c.point, goldFrame, c.point, c.x, c.y)
		ctex:SetTexture(Theme.Media("corner-gold"))
		ctex:SetTexCoord(c.u1, c.u2, c.v1, c.v2)
		goldFrame.Corners[i] = ctex
	end

	local cosmic = f:CreateTexture(nil, "BACKGROUND", nil, -7)
	cosmic:SetAllPoints(f)
	cosmic:SetTexture(Theme.Media("band-stars"))
	cosmic:SetVertexColor(0.08, 0.12, 0.22, 0.45)
	f.CosmicBg = cosmic"""

t_norm = text.replace("\r\n", "\n")
t_scale_norm = target_scale.replace("\r\n", "\n")
t_emblem_norm = target_emblem.replace("\r\n", "\n")
t_shell_norm = target_shell.replace("\r\n", "\n")

assert t_scale_norm in t_norm, "target_scale not found"
assert t_emblem_norm in t_norm, "target_emblem not found"
assert t_shell_norm in t_norm, "target_shell not found"

t_norm = t_norm.replace(t_scale_norm, rep_scale.replace("\r\n", "\n"))
t_norm = t_norm.replace(t_emblem_norm, rep_emblem.replace("\r\n", "\n"))
t_norm = t_norm.replace(t_shell_norm, rep_shell.replace("\r\n", "\n"))

with open("Theme/WidgetsShell.lua", "w", encoding="utf-8", newline="\n") as f:
    f.write(t_norm)

lines = len(t_norm.split("\n"))
print(f"Theme/WidgetsShell.lua updated successfully. New line count: {lines}")

