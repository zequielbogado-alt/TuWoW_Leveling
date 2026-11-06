with open("Theme/WidgetsShell.lua", "r", encoding="utf-8") as f:
    text = f.read()

target = """function W.SectionHeader(parent, opts)
	local plain = opts and opts.plain
	local h = CreateFrame("Frame", nil, parent)
	h:SetHeight(plain and W.PLAIN_SECTION_H or 44)
	h.Text = W.Text(h, "heading", "text")
	h.Text:SetPoint("BOTTOMLEFT", h, "BOTTOMLEFT", 0, plain and 8 or 10)
	h.Rule = W.Divider(h)
	h.Rule:SetPoint("LEFT", h.Text, "RIGHT", 12, 0)
	h.Rule:SetPoint("RIGHT", h, "RIGHT", 0, 0)
	h.Rule:SetShown(not plain)
	h.Count = W.Text(h, "number", "textMuted")
	h.Count:SetJustifyH("RIGHT")
	h.Count:SetPoint("BOTTOMRIGHT", h, "BOTTOMRIGHT", 0, plain and 8 or 10)
	h.Count:Hide()
	return h
end"""

rep = """function W.SectionHeader(parent, opts)
	local plain = opts and opts.plain
	local h = CreateFrame("Frame", nil, parent)
	h:SetHeight(plain and W.PLAIN_SECTION_H or 44)
	h.Text = W.Text(h, "heading", "accent")
	h.Text:SetPoint("BOTTOMLEFT", h, "BOTTOMLEFT", 0, plain and 8 or 10)
	h.Text:SetTextColor(1.0, 0.84, 0.35, 1.0)
	local j = h:CreateTexture(nil, "ARTWORK")
	j:SetTexture(Theme.Media("dart-gold"))
	j:SetSize(14, 14); j:SetVertexColor(1.0, 0.84, 0.35, 0.95); j:SetShown(not plain)
	h.Jewel = j
	h.Rule = W.Divider(h)
	h.Rule:SetPoint("LEFT", j, "RIGHT", 6, 0); h.Rule:SetPoint("RIGHT", h, "RIGHT", 0, 0); h.Rule:SetShown(not plain)
	h.Count = W.Text(h, "number", "textMuted")
	h.Count:SetJustifyH("RIGHT"); h.Count:SetPoint("BOTTOMRIGHT", h, "BOTTOMRIGHT", 0, plain and 8 or 10); h.Count:Hide()
	return h
end"""

target_set = """function W.SetSection(h, text, count)
	h.Text:SetText(text)
	if count then
		h.Count:SetText(count)
		h.Count:Show()
		h.Rule:SetPoint("RIGHT", h.Count, "LEFT", -12, 0)
	else
		h.Count:Hide()
		h.Rule:SetPoint("RIGHT", h, "RIGHT", 0, 0)
	end
end"""

rep_set = """function W.SetSection(h, text, count)
	h.Text:SetText(text)
	h.Text:SetTextColor(1.0, 0.84, 0.35, 1.0)
	if h.Jewel then
		h.Jewel:ClearAllPoints()
		h.Jewel:SetPoint("LEFT", h.Text, "RIGHT", 8, 0)
		h.Rule:SetPoint("LEFT", h.Jewel, "RIGHT", 6, 0)
	end
	if count then
		h.Count:SetText(count); h.Count:Show()
		h.Rule:SetPoint("RIGHT", h.Count, "LEFT", -12, 0)
	else
		h.Count:Hide(); h.Rule:SetPoint("RIGHT", h, "RIGHT", 0, 0)
	end
end"""

t_norm = text.replace("\r\n", "\n")
target_norm = target.replace("\r\n", "\n")
target_set_norm = target_set.replace("\r\n", "\n")

assert target_norm in t_norm, "target not found"
assert target_set_norm in t_norm, "target_set not found"

t_norm = t_norm.replace(target_norm, rep.replace("\r\n", "\n"))
t_norm = t_norm.replace(target_set_norm, rep_set.replace("\r\n", "\n"))

with open("Theme/WidgetsShell.lua", "w", encoding="utf-8", newline="\n") as f:
    f.write(t_norm)

lines = len(t_norm.split("\n"))
print(f"Theme/WidgetsShell.lua updated successfully. New line count: {lines}")

