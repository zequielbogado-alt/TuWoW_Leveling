with open("Rares/View.lua", "r", encoding="utf-8") as f:
    text = f.read()

target1 = """local function empty(title, text, y)
	local d = detail
	d.EmptyTitle:ClearAllPoints()
	d.EmptyTitle:SetPoint("TOPLEFT", d.Body, "TOPLEFT", DPAD, y - 8)
	d.EmptyTitle:SetWidth(d.psW - DPAD * 2)
	d.EmptyTitle:SetText(title)
	d.EmptyTitle:Show()
	d.EmptyNote:ClearAllPoints()
	d.EmptyNote:SetPoint("TOPLEFT", d.EmptyTitle, "BOTTOMLEFT", 0, -10)
	d.EmptyNote:SetWidth(min(520, d.psW - DPAD * 2))
	d.EmptyNote:SetText(text)
	d.EmptyNote:Show()
	return 8 + 24 + 10 + d.EmptyNote:GetStringHeight() + 16
end"""

rep1 = """local function empty(title, text, y)
	local d = detail
	d.EmptyTitle:ClearAllPoints(); d.EmptyTitle:SetPoint("TOPLEFT", d.Body, "TOPLEFT", DPAD, y - 8)
	d.EmptyTitle:SetWidth(d.psW - DPAD * 2); d.EmptyTitle:SetText(title); d.EmptyTitle:Show()
	d.EmptyNote:ClearAllPoints(); d.EmptyNote:SetPoint("TOPLEFT", d.EmptyTitle, "BOTTOMLEFT", 0, -10)
	d.EmptyNote:SetWidth(min(520, d.psW - DPAD * 2)); d.EmptyNote:SetText(text); d.EmptyNote:Show()
	return 8 + 24 + 10 + d.EmptyNote:GetStringHeight() + 16
end"""

target2 = """	function w.head(text, count)
		w.h = w.h + 1
		local h = head(w.h, d.Body)
		h:ClearAllPoints()
		h:SetPoint("TOPLEFT", d.Body, "TOPLEFT", DPAD, w.y)
		h:SetWidth(w.width)
		W.SetSection(h, text, count)
		h:Show()
		w.y = w.y - 44 - 2
	end
	function w.note(text)
		w.n = w.n + 1
		local n = note(w.n, d.Body)
		n:ClearAllPoints()
		n:SetPoint("TOPLEFT", d.Body, "TOPLEFT", DPAD, w.y - 6)
		n:SetWidth(min(560, w.width))
		n:SetText(text)
		n:Show()
		w.y = w.y - 6 - n:GetStringHeight() - 10
	end"""

rep2 = """	function w.head(text, count)
		w.h = w.h + 1
		local h = head(w.h, d.Body)
		h:ClearAllPoints(); h:SetPoint("TOPLEFT", d.Body, "TOPLEFT", DPAD, w.y); h:SetWidth(w.width)
		W.SetSection(h, text, count); h:Show(); w.y = w.y - 44 - 2
	end
	function w.note(text)
		w.n = w.n + 1
		local n = note(w.n, d.Body)
		n:ClearAllPoints(); n:SetPoint("TOPLEFT", d.Body, "TOPLEFT", DPAD, w.y - 6)
		n:SetWidth(min(560, w.width)); n:SetText(text); n:Show(); w.y = w.y - 6 - n:GetStringHeight() - 10
	end"""

target3 = """	function w.item(e)
		w.i = w.i + 1
		local r = itemRow(w.i, d.Body)
		r:ClearAllPoints()
		r:SetPoint("TOPLEFT", d.Body, "TOPLEFT", DPAD, w.y)
		r:SetWidth(w.width)
		r.psID = e.id
		local icon = itemIcon(e.id)
		if icon then
			r.Icon:SetTexture(icon)
			r.Icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
			W.Uncolor(r.Icon)
			r.Icon:SetVertexColor(1, 1, 1, 1)
		else
			r.Icon:SetTexture(Theme.Media("icon-collect"))
			r.Icon:SetTexCoord(0, 1, 0, 1)
			W.Color(r.Icon, "textMuted")
		end
		r.Name:SetText(e.name or ("item:" .. tostring(e.id)))
		paintQuality(r.Name, e.quality)
		r.Note:SetText(e.note or "")
		local room = w.width - 28 - 12
		r.Name:SetWidth(max(60, min(room, floor(r.Name:GetStringWidth() + 1))))
		r.Note:SetWidth(max(0, room - r.Name:GetWidth() - 10))
		r:Show()
		w.y = w.y - ITEM_H
	end
	function w.place(p)
		w.p = w.p + 1
		local r = placeRow(w.p, d.Body)
		r:ClearAllPoints()
		r:SetPoint("TOPLEFT", d.Body, "TOPLEFT", DPAD, w.y)
		r:SetWidth(w.width)
		r.psMap, r.psX, r.psY, r.psF, r.psLabel = p.map, p.x, p.y, p.f, p.label
		r.Zone:SetText(p.zone or "?")
		r.Coords:SetText(p.x and format("%.1f, %.1f", p.x, p.y) or "")
		r.Travel:SetText(p.travel or "")
		r.Zone:SetWidth(max(60, min(w.width - 200, floor(r.Zone:GetStringWidth() + 1))))
		r:Show()
		w.y = w.y - PLACE_H
	end"""

rep3 = """	function w.item(e)
		w.i = w.i + 1
		local r = itemRow(w.i, d.Body)
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", d.Body, "TOPLEFT", DPAD, w.y); r:SetWidth(w.width); r.psID = e.id
		local icon = itemIcon(e.id)
		if icon then
			r.Icon:SetTexture(icon); r.Icon:SetTexCoord(0.08, 0.92, 0.08, 0.92); W.Uncolor(r.Icon); r.Icon:SetVertexColor(1, 1, 1, 1)
		else
			r.Icon:SetTexture(Theme.Media("icon-collect")); r.Icon:SetTexCoord(0, 1, 0, 1); W.Color(r.Icon, "textMuted")
		end
		r.Name:SetText(e.name or ("item:" .. tostring(e.id)))
		paintQuality(r.Name, e.quality); r.Note:SetText(e.note or "")
		local room = w.width - 28 - 12
		r.Name:SetWidth(max(60, min(room, floor(r.Name:GetStringWidth() + 1))))
		r.Note:SetWidth(max(0, room - r.Name:GetWidth() - 10)); r:Show(); w.y = w.y - ITEM_H
	end
	function w.place(p)
		w.p = w.p + 1
		local r = placeRow(w.p, d.Body)
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", d.Body, "TOPLEFT", DPAD, w.y); r:SetWidth(w.width)
		r.psMap, r.psX, r.psY, r.psF, r.psLabel = p.map, p.x, p.y, p.f, p.label
		r.Zone:SetText(p.zone or "?")
		r.Coords:SetText(p.x and format("%.1f, %.1f", p.x, p.y) or "")
		r.Travel:SetText(p.travel or "")
		r.Zone:SetWidth(max(60, min(w.width - 200, floor(r.Zone:GetStringWidth() + 1))))
		r:Show(); w.y = w.y - PLACE_H
	end"""

t_norm = text.replace("\r\n", "\n")
t1_norm = target1.replace("\r\n", "\n")
t2_norm = target2.replace("\r\n", "\n")
t3_norm = target3.replace("\r\n", "\n")

assert t1_norm in t_norm, "target1 not found"
assert t2_norm in t_norm, "target2 not found"
assert t3_norm in t_norm, "target3 not found"

t_norm = t_norm.replace(t1_norm, rep1.replace("\r\n", "\n"))
t_norm = t_norm.replace(t2_norm, rep2.replace("\r\n", "\n"))
t_norm = t_norm.replace(t3_norm, rep3.replace("\r\n", "\n"))

with open("Rares/View.lua", "w", encoding="utf-8", newline="\n") as f:
    f.write(t_norm)

lines = len(t_norm.split("\n"))
print(f"Rares/View.lua updated successfully. New line count: {lines}")
