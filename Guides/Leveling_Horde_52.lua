-- TuWoW_Leveling — Guides/Leveling_Horde_52.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-76-78-part-2",
		pack = "guides",
		title = "Northrend (76-78) (Parte 2/4)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-76-78-part-3",
		author = "TuWoW & Zygor",
		minLevel = 76,
		maxLevel = 78,
		zone = 116,
		version = 1,
		steps = {
			{
				note = "Fly to Conquest Hold,0.5|noway|c",
				goals = {
					{ t = "goto", map = 116, x = 22.0, y = 64.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12229, title = "A Possible Link", npc = 27262, npcName = "Windseer Grayhorn", map = 116, x = 22.5, y = 62.8, f = "e" },
					{ t = "turnin", quest = 12231, title = "The Bear God's Offspring", npc = 27262, npcName = "Windseer Grayhorn", map = 116, x = 22.5, y = 62.8, f = "e" },
					{ t = "accept", quest = 12241, title = "Destroy the Sapling", npc = 27262, npcName = "Windseer Grayhorn", map = 116, x = 22.5, y = 62.8, f = "e" },
					{ t = "accept", quest = 12242, title = "Vordrassil's Seeds", npc = 27262, npcName = "Windseer Grayhorn", map = 116, x = 22.5, y = 62.8, f = "e" },
				},
			},
			{
				note = "Fly to Camp Oneqwah,0.5|noway|c",
				goals = {
					{ t = "goto", map = 116, x = 64.9, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 50.5, y = 45.9, f = "e" },
				},
			},
			{
				note = "Follow the path down to 50.8,42.6",
				goals = {
					{ t = "collect", quest = 12241, itemName = "Vordrassil's Ashes", count = 1, oi = 1, map = 116, x = 50.8, y = 42.6, f = "e" },
				},
			},
			{
				note = "Go outside to 51.5,47.1",
				goals = {
					{ t = "collect", quest = 12242, itemName = "Vordrassil's Seed", count = 8, oi = 1, map = 116, x = 51.5, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12241, title = "Destroy the Sapling", npc = 27262, npcName = "Windseer Grayhorn", map = 116, x = 22.5, y = 62.8, f = "e" },
					{ t = "turnin", quest = 12242, title = "Vordrassil's Seeds", npc = 27262, npcName = "Windseer Grayhorn", map = 116, x = 22.5, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12521, title = "Where in the World is Hemet Nesingwary?", npc = 28160, npcName = "Archmage Pentarus", map = 125, x = 68.6, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Zim'Torga", text = "Zim'Torga", map = 121, x = 60.0, y = 56.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13099, title = "Just Checkin'", npc = 28527, npcName = "Chronicler To'kini", map = 121, x = 60.0, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Zim'Torga", text = "Zim'Torga", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12974, title = "The Champion's Call!", npc = 30007, npcName = "Gurgthock", map = 121, x = 48.4, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "The Argent Stand", text = "The Argent Stand", map = 121, x = 41.6, y = 64.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Light's Breach", text = "Light's Breach", map = 121, x = 32.2, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12789, title = "Into the Breach!", npc = 29137, npcName = "Sergeant Riannah", map = 121, x = 32.0, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12859, title = "This Just In: Fire Still Hot!", npc = 29733, npcName = "Elder Shaman Moky", map = 121, x = 32.0, y = 75.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12902, title = "In Search Of Answers", npc = 29687, npcName = "Crusader Lord Lantinga", map = 121, x = 32.2, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12861, title = "Trolls Is Gone Crazy!", npc = 29690, npcName = "Chief Rageclaw", map = 121, x = 32.2, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12902, title = "In Search Of Answers", map = 121, x = 34.9, y = 83.9, f = "e" },
					{ t = "accept", quest = 12883, title = "Orders From Drakuru", map = 121, x = 34.9, y = 83.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Drakuru mobs", count = 1, map = 121, x = 34.9, y = 81.0, f = "e" },
					{ t = "collect", itemName = "Drakuru \"Lock Openers\"", count = 1, map = 121, x = 34.9, y = 81.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12883, title = "Orders From Drakuru", npc = 29687, npcName = "Crusader Lord Lantinga", map = 121, x = 32.2, y = 75.7, f = "e" },
					{ t = "accept", quest = 12884, title = "The Ebon Watch", npc = 29687, npcName = "Crusader Lord Lantinga", map = 121, x = 32.2, y = 75.7, f = "e" },
					{ t = "accept", quest = 12894, title = "Crusader Forward Camp", npc = 29687, npcName = "Crusader Lord Lantinga", map = 121, x = 32.2, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12861, title = "Trolls Is Gone Crazy!", npc = 29690, npcName = "Chief Rageclaw", map = 121, x = 32.2, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12859, title = "This Just In: Fire Still Hot!", npc = 29733, npcName = "Elder Shaman Moky", map = 121, x = 32.0, y = 75.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Ebon Watch", text = "Ebon Watch", map = 121, x = 14.0, y = 73.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12884, title = "The Ebon Watch", npc = 28518, npcName = "Stefan Vadu", map = 121, x = 14.1, y = 73.8, f = "e" },
					{ t = "accept", quest = 12630, title = "Kickin' Nass and Takin' Manes", npc = 28518, npcName = "Stefan Vadu", map = 121, x = 14.1, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Withered Trolls", count = 1, map = 121, x = 15.5, y = 69.8, f = "e" },
					{ t = "collect", itemName = "Unliving Choker", count = 1, map = 121, x = 15.5, y = 69.8, f = "e" },
					{ t = "accept", quest = 12631, title = "An Invitation, of Sorts...", map = 121, x = 15.5, y = 69.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12630, title = "Kickin' Nass and Takin' Manes", npc = 28518, npcName = "Stefan Vadu", map = 121, x = 14.1, y = 73.8, f = "e" },
					{ t = "turnin", quest = 12631, title = "An Invitation, of Sorts...", npc = 28518, npcName = "Stefan Vadu", map = 121, x = 14.1, y = 73.8, f = "e" },
					{ t = "accept", quest = 12637, title = "Near Miss", npc = 28518, npcName = "Stefan Vadu", map = 121, x = 14.1, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12795, title = "Taking a Stand", npc = 28532, npcName = "Bloodrose Datura", map = 121, x = 14.3, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12637, title = "Near Miss", npc = 28518, npcName = "Stefan Vadu", map = 121, x = 14.1, y = 73.8, f = "e" },
					{ t = "accept", quest = 12629, title = "You Can Run, But You Can't Hide", npc = 28518, npcName = "Stefan Vadu", map = 121, x = 14.1, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Putrid Abominations", count = 1, map = 121, x = 20.6, y = 73.0, f = "e" },
					{ t = "collect", quest = 12629, itemName = "Putrid Abomination Guts", count = 5, oi = 1, map = 121, x = 20.6, y = 73.0, f = "e" },
					{ t = "collect", quest = 12629, itemName = "Gooey Ghoul Drool", count = 5, oi = 2, map = 121, x = 20.6, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12629, title = "You Can Run, But You Can't Hide", npc = 28518, npcName = "Stefan Vadu", map = 121, x = 14.1, y = 73.8, f = "e" },
					{ t = "accept", quest = 12648, title = "Dressing Down", npc = 28518, npcName = "Stefan Vadu", map = 121, x = 14.1, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12652, title = "Feedin' Da Goolz", npc = 28589, npcName = "Gristlegut", map = 121, x = 19.9, y = 75.5, f = "e" },
					{ t = "buy", npc = 28589, npcName = "Gristlegut", itemName = "Bitter Plasma", count = 1, map = 121, x = 19.9, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 20.5, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12652, title = "Feedin' Da Goolz", npc = 28589, npcName = "Gristlegut", map = 121, x = 19.9, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12648, title = "Dressing Down", npc = 28518, npcName = "Stefan Vadu", map = 121, x = 14.1, y = 73.8, f = "e" },
					{ t = "accept", quest = 12661, title = "Infiltrating Voltarus", npc = 28518, npcName = "Stefan Vadu", map = 121, x = 14.1, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12894, title = "Crusader Forward Camp", npc = 29689, npcName = "Crusader MacKellar", map = 121, x = 25.3, y = 64.0, f = "e" },
					{ t = "accept", quest = 12903, title = "That's What Friends Are For...", npc = 29689, npcName = "Crusader MacKellar", map = 121, x = 25.3, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12901, title = "Making Something Out Of Nothing", npc = 29688, npcName = "Engineer Reed", map = 121, x = 25.3, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12901, itemName = "Scourge Scrap Metal", count = 10, oi = 1, map = 121, x = 19.4, y = 61.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12904, title = "Light Won't Grant Me Vengeance", npc = 29455, npcName = "Gerk", map = 121, x = 17.6, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 15.7, y = 59.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12904, target = "Vargul", count = 15, oi = 1, map = 121, x = 16.9, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12904, title = "Light Won't Grant Me Vengeance", npc = 29455, npcName = "Gerk", map = 121, x = 17.6, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12912, title = "A Great Storm Approaches", npc = 29647, npcName = "Gymer", map = 121, x = 19.7, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 25.1, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12664, title = "Dark Horizon", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 28666, npcName = "Gorebag", map = 121, x = 29.9, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12664, title = "Dark Horizon", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				note = "Use Stefan's Horn in your bags|use Stefan's Horn##41390",
				goals = {
					{ t = "use", item = 41390, itemName = "Stefan's Horn", f = "e" },
					{ t = "turnin", quest = 12661, title = "Infiltrating Voltarus", npc = 28518, npcName = "Stefan Vadu", f = "e" },
					{ t = "accept", quest = 12669, title = "So Far, So Bad", npc = 28518, npcName = "Stefan Vadu", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12673, title = "It Rolls Downhill", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 27.2, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 26.8, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12673, title = "It Rolls Downhill", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				note = "Use Stefan's Horn in your bags|use Stefan's Horn##41390",
				goals = {
					{ t = "use", item = 41390, itemName = "Stefan's Horn", f = "e" },
					{ t = "turnin", quest = 12669, title = "So Far, So Bad", npc = 28518, npcName = "Stefan Vadu", f = "e" },
					{ t = "accept", quest = 12677, title = "Hazardous Materials", npc = 28518, npcName = "Stefan Vadu", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12686, title = "Zero Tolerance", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12677, itemName = "Harvested Blight Crystal", count = 5, oi = 2, map = 121, x = 27.1, y = 43.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 29.7, y = 49.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12686, title = "Zero Tolerance", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				note = "Use Stefan's Horn in your bags|use Stefan's Horn##41390",
				goals = {
					{ t = "use", item = 41390, itemName = "Stefan's Horn", f = "e" },
					{ t = "turnin", quest = 12677, title = "Hazardous Materials", npc = 28518, npcName = "Stefan Vadu", f = "e" },
					{ t = "accept", quest = 12676, title = "Sabotage", npc = 28518, npcName = "Stefan Vadu", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12690, title = "Fuel for the Fire", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 32.1, y = 40.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 30.6, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12690, title = "Fuel for the Fire", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 12710, title = "Disclosure", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 27.2, y = 42.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12710, title = "Disclosure", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				note = "Use Stefan's Horn in your bags|use Stefan's Horn##41390",
				goals = {
					{ t = "use", item = 41390, itemName = "Stefan's Horn", f = "e" },
					{ t = "turnin", quest = 12676, title = "Sabotage", npc = 28518, npcName = "Stefan Vadu", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12901, title = "Making Something Out Of Nothing", npc = 29688, npcName = "Engineer Reed", map = 121, x = 25.3, y = 64.0, f = "e" },
					{ t = "turnin", quest = 12912, title = "A Great Storm Approaches", npc = 29688, npcName = "Engineer Reed", map = 121, x = 25.3, y = 64.0, f = "e" },
					{ t = "accept", quest = 12914, title = "Gymer's Salvation", npc = 29688, npcName = "Engineer Reed", map = 121, x = 25.3, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12903, title = "That's What Friends Are For...", npc = 29689, npcName = "Crusader MacKellar", map = 121, x = 25.3, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Banshee Soulclaimers", count = 1, map = 121, x = 23.9, y = 62.4, f = "e" },
					{ t = "collect", quest = 12914, itemName = "Banshee Essence", count = 6, oi = 1, map = 121, x = 23.9, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Icetouched Earthragers", count = 1, map = 121, x = 15.9, y = 71.5, f = "e" },
					{ t = "collect", quest = 12914, itemName = "Diatomaceous Earth", count = 6, oi = 2, map = 121, x = 15.9, y = 71.5, f = "e" },
				},
			},
		},
	})
end

