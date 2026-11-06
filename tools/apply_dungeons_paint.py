with open("UI/DungeonsHome.lua", "r", encoding="utf-8") as f:
    text = f.read()

target = """function paintCard(c, d, f, plevel, key)
	c.psKey, c.psEntry = d.key, d
	c.Name:SetText(d.name)
	local facts = {}
	local lv = UI.LevelRange(d.minLevel, d.maxLevel)
	if lv then facts[#facts + 1] = lv end
	if d.zoneName then facts[#facts + 1] = d.zoneName end
	local n, a, h = questCount(d, f)
	if f == "All" and a ~= h and a > 0 and h > 0 then
		facts[#facts + 1] = format(L["%d Alliance, %d Horde quests"], a, h)
	elseif f == "All" and a ~= h then
		local k = max(a, h)
		if k == 1 then
			facts[#facts + 1] = a > 0 and L["1 Alliance quest"] or L["1 Horde quest"]
		else
			facts[#facts + 1] = format(a > 0 and L["%d Alliance quests"] or L["%d Horde quests"], k)
		end
	elseif n == 0 then
		facts[#facts + 1] = f == "All" and L["No quests known"] or format(L["No %s quests"], ns.FactionName(f))
	else
		facts[#facts + 1] = n == 1 and L["1 quest"] or format(L["%d quests"], n)
	end
	local cw = c:GetWidth()
	local right = PAD - CARD_X
	-- Under For your level every card is; elsewhere the chip marks them.
	if key ~= "level" and forYou(d, plevel) then
		local w = W.SetChip(c.Yours, L["Your level"], "accent")
		c.Yours:ClearAllPoints()
		c.Yours:SetPoint("RIGHT", c, "TOPRIGHT", -right, -(CARD_ART + 20))
		right = right + w + 6
	else
		c.Yours:Hide()
	end
	if d.forever then
		local w = W.SetChip(c.Forever, L["Forever"])
		c.Forever:ClearAllPoints()
		c.Forever:SetPoint("RIGHT", c, "TOPRIGHT", -right, -(CARD_ART + 20))
		right = right + w + 6
	else
		c.Forever:Hide()
	end
	local statsW = max(60, cw - (PAD - CARD_X) - right - 6)
	c.Stats:SetWidth(statsW)
	c.Stats:SetText(factLines(c.Stats, facts, statsW))
	W.Color(c.Stats, n > 0 and "textDim" or "textMuted")
end"""

rep = """local DUNGEON_ICONS = {
	["ragefire-chasm"] = "Interface\\\\Icons\\\\Spell_Fire_Fire",
	["deadmines"] = "Interface\\\\Icons\\\\INV_Helmet_66",
	["wailing-caverns"] = "Interface\\\\Icons\\\\Ability_Druid_ChallangingRoar",
	["shadowfang-keep"] = "Interface\\\\Icons\\\\INV_Misc_Head_Worgen_01",
	["blackfathom-deeps"] = "Interface\\\\Icons\\\\Spell_Frost_SummonWaterElemental",
	["stormwind-stockade"] = "Interface\\\\Icons\\\\Spell_Holy_SealOfProtection",
	["stockade"] = "Interface\\\\Icons\\\\Spell_Holy_SealOfProtection",
	["gnomeregan"] = "Interface\\\\Icons\\\\INV_Misc_Gear_01",
	["scarlet-monastery"] = "Interface\\\\Icons\\\\Spell_Holy_PrayerOfHealing02",
	["razorfen-kraul"] = "Interface\\\\Icons\\\\INV_BoarHide_01",
	["razorfen-downs"] = "Interface\\\\Icons\\\\Spell_Shadow_LichTouch",
	["zul-farrak"] = "Interface\\\\Icons\\\\INV_Misc_MonsterHead_02",
	["maraudon"] = "Interface\\\\Icons\\\\Spell_Nature_Earthquake",
	["sunken-temple"] = "Interface\\\\Icons\\\\INV_Misc_MonsterHead_03",
	["blackrock-depths"] = "Interface\\\\Icons\\\\Spell_Fire_LavaSpawn",
	["blackrock-spire"] = "Interface\\\\Icons\\\\Spell_Fire_Fireball02",
	["stratholme"] = "Interface\\\\Icons\\\\Spell_Shadow_DeathCoil",
	["scholomance"] = "Interface\\\\Icons\\\\Spell_Shadow_Haunting",
}

function paintCard(c, d, f, plevel, key)
	c.psKey, c.psEntry = d.key, d
	c.Name:SetText(d.name)
	if c.Icon then
		local ic = d.icon or DUNGEON_ICONS[d.key] or "Interface\\\\Icons\\\\Achievement_Dungeon_ClassicDungeonChampion"
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
end"""

t_norm = text.replace("\r\n", "\n")
target_norm = target.replace("\r\n", "\n")
assert target_norm in t_norm, "target not found"

t_norm = t_norm.replace(target_norm, rep.replace("\r\n", "\n"))

with open("UI/DungeonsHome.lua", "w", encoding="utf-8", newline="\n") as f:
    f.write(t_norm)

lines = len(t_norm.split("\n"))
print(f"UI/DungeonsHome.lua updated successfully. New line count: {lines}")

