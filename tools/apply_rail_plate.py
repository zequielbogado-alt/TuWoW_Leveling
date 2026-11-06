with open("Theme/WidgetsShell.lua", "r", encoding="utf-8") as f:
    text = f.read()

target_btn = """	b.Selected = b:CreateTexture(nil, "BACKGROUND")
	b.Selected:SetTexture(WHITE)
	b.Selected:SetAllPoints(b)
	W.Painter(b.Selected, function(t) t:SetVertexColor(Theme.Wash("selected")) end)"""

rep_btn = """	b.Selected = b:CreateTexture(nil, "BACKGROUND")
	b.Selected:SetTexture(WHITE)
	b.Selected:SetAllPoints(b)
	W.Painter(b.Selected, function(t) t:SetVertexColor(Theme.Wash("selected")) end)
	local p = CreateFrame("Frame", nil, b)
	p:SetPoint("TOPLEFT", b, "TOPLEFT", 4, -2); p:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", -4, 2)
	p:SetBackdrop({ edgeFile = "Interface\\\\Tooltips\\\\UI-Tooltip-Border", edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 } })
	p:SetBackdropBorderColor(1.0, 0.82, 0.28, 0.95); p:Hide()
	b.Plate = p"""

target_place = """		local on = item.key == active
		b.Icon:SetTexture(Theme.Media(item.icon or "compact"))
		b.Label:SetText(item.label)
		b.Selected:SetShown(on)
		b.Bar:SetShown(on)
		W.Color(b.Icon, on and "accent" or "textDim")
		W.Color(b.Label, on and "text" or "textDim")"""

rep_place = """		local on = item.key == active
		b.Icon:SetTexture(Theme.Media(item.icon or "compact"))
		b.Label:SetText(item.label)
		b.Selected:SetShown(on)
		b.Bar:SetShown(on)
		if b.Plate then b.Plate:SetShown(on) end
		if on then
			b.Selected:SetVertexColor(0.85, 0.65, 0.20, 0.24)
			b.Label:SetTextColor(1.0, 0.92, 0.70, 1.0)
			W.Color(b.Icon, "accent")
		else
			W.Color(b.Icon, "textDim"); W.Color(b.Label, "textDim")
		end"""

t_norm = text.replace("\r\n", "\n")
t_btn_norm = target_btn.replace("\r\n", "\n")
t_place_norm = target_place.replace("\r\n", "\n")

assert t_btn_norm in t_norm, "target_btn not found"
assert t_place_norm in t_norm, "target_place not found"

t_norm = t_norm.replace(t_btn_norm, rep_btn.replace("\r\n", "\n"))
t_norm = t_norm.replace(t_place_norm, rep_place.replace("\r\n", "\n"))

with open("Theme/WidgetsShell.lua", "w", encoding="utf-8", newline="\n") as f:
    f.write(t_norm)

lines = len(t_norm.split("\n"))
print(f"Theme/WidgetsShell.lua updated successfully. New line count: {lines}")

