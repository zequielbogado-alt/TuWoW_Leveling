-- TuWoW_Leveling — Guides/Dailies_Horde_01.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-borean-tundra-borean-tundra-pre-quests",
		pack = "guides",
		title = "Borean Tundra Pre-Quests",
		category = "Dailies",
		folder = "Borean Tundra",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 114,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11918, title = "Basic Training", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11918, target = "Coldarra Spellbinders", count = 10, oi = 1, map = 114, x = 35.0, y = 28.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11918, title = "Basic Training", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
					{ t = "accept", quest = 11936, title = "Hatching a Plan", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
				},
			},
			{
				note = "As you do the following steps:",
				goals = {
					{ t = "kill", target = "Coldarra Wyrmkin", count = 1, f = "e" },
					{ t = "collect", quest = 11936, item = 35586, itemName = "Frozen Axe", count = 5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 27.8, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11936, title = "Hatching a Plan", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
					{ t = "accept", quest = 11919, title = "Drake Hunt", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 24.6, y = 27.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 33.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11919, title = "Drake Hunt", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13412, title = "Corastrasza", npc = 26110, npcName = "Librarian Serrah", map = 114, x = 33.5, y = 34.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13412, title = "Corastrasza", npc = 32548, npcName = "Corastrasza", map = 114, x = 29.5, y = 24.8, f = "e" },
					{ t = "accept", quest = 13413, title = "Aces High!", npc = 32548, npcName = "Corastrasza", map = 114, x = 29.5, y = 24.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13413, target = "Scalesworn Elites", count = 5, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 29.5, y = 24.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13413, title = "Aces High!", npc = 32548, npcName = "Corastrasza", map = 114, x = 29.5, y = 24.8, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-borean-tundra-coldarra-dailies",
		pack = "guides",
		title = "Coldarra Dailies",
		category = "Dailies",
		folder = "Borean Tundra",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 114,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11940, title = "Drake Hunt", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 24.6, y = 27.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 33.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11940, title = "Drake Hunt", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13414, title = "Aces High!", npc = 32548, npcName = "Corastrasza", map = 114, x = 29.5, y = 24.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13414, target = "Scalesworn Elites", count = 5, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 29.5, y = 24.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13414, title = "Aces High!", npc = 32548, npcName = "Corastrasza", map = 114, x = 29.5, y = 24.8, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-borean-tundra-kaskala-dailies",
		pack = "guides",
		title = "Kaskala Dailies",
		category = "Dailies",
		folder = "Borean Tundra",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 114,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11945, title = "Preparing for the Worst", npc = 26213, npcName = "Utaik", map = 114, x = 63.9, y = 45.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11945, itemName = "Kaskala Supplies", count = 8, oi = 1, map = 114, x = 66.7, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11945, title = "Preparing for the Worst", npc = 26213, npcName = "Utaik", map = 114, x = 63.9, y = 45.7, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-dalaran-cooking-dailies-pre-quests",
		pack = "guides",
		title = "Cooking Dailies Pre-Quests",
		category = "Dailies",
		folder = "Dalaran",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 117,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13089, title = "Northern Cooking", npc = 26953, npcName = "Thomas Kolichio", map = 117, x = 78.6, y = 29.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13089, itemName = "Chilled Meat", count = 4, oi = 1, map = 117, x = 75.1, y = 33.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13089, title = "Northern Cooking", npc = 26953, npcName = "Thomas Kolichio", map = 117, x = 78.6, y = 29.5, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-dalaran-jewelcrafting-dailies-pre-quests",
		pack = "guides",
		title = "Jewelcrafting Dailies Pre-Quests",
		category = "Dailies",
		folder = "Dalaran",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 125,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13041, title = "Finish the Shipment", npc = 28701, npcName = "Timothy Jones", map = 125, x = 40.7, y = 35.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13041, title = "Finish the Shipment", npc = 28701, npcName = "Timothy Jones", map = 125, x = 40.7, y = 35.4, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-dalaran-cooking-dailies",
		pack = "guides",
		title = "Cooking Dailies",
		category = "Dailies",
		folder = "Dalaran",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 125,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13115, title = "Cheese for Glowergold", npc = 29631, npcName = "Awilo Lon'gomba", map = 125, x = 70.0, y = 39.0, f = "e" },
					{ t = "accept", quest = 13113, title = "Convention at the Legerdemain", npc = 29631, npcName = "Awilo Lon'gomba", map = 125, x = 70.0, y = 39.0, f = "e" },
					{ t = "accept", quest = 13112, title = "Infused Mushroom Meatloaf", npc = 29631, npcName = "Awilo Lon'gomba", map = 125, x = 70.0, y = 39.0, f = "e" },
					{ t = "accept", quest = 13116, title = "Mustard Dogs!", npc = 29631, npcName = "Awilo Lon'gomba", map = 125, x = 70.0, y = 39.0, f = "e" },
					{ t = "accept", quest = 13114, title = "Sewer Stew", npc = 29631, npcName = "Awilo Lon'gomba", map = 125, x = 70.0, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 43137, itemName = "Aged Dalaran Limburger", count = 1, map = 125, x = 54.7, y = 31.5, f = "e" },
					{ t = "collect", item = 43138, itemName = "Half Full Dalaran Wine Glass", count = 6, map = 125, x = 54.7, y = 31.5, f = "e" },
				},
			},
			{
				note = "Use your Empty Cheese Serving Platter in your bags|use Empty Cheese Serving Platter##43139",
				goals = {
					{ t = "use", item = 43139, itemName = "Empty Cheese Serving Platter", f = "e" },
					{ t = "collect", quest = 13115, itemName = "Wine and Cheese Platter", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13113, itemName = "Jug of Wine", count = 1, oi = 2, map = 125, x = 55.0, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 43013, itemName = "Chilled Meat", count = 4, map = 115, x = 30.0, y = 49.8, f = "e" },
				},
			},
			{
				note = "Use your Cooking ability to cook 4 Northern Stew|tip You will need a cooking fire to do this.",
				goals = {
					{ t = "collect", quest = 13113, itemName = "Northern Stew", count = 4, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 43100, itemName = "Infused Mushroom", count = 4, map = 115, x = 59.5, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 43013, itemName = "Chilled Meat", count = 2, map = 115, x = 30.0, y = 49.8, f = "e" },
				},
			},
			{
				note = "Use your Meatloaf Pan in your bags|use Meatloaf Pan##43101|tip You will need a cooking fire to do this.",
				goals = {
					{ t = "use", item = 43101, itemName = "Meatloaf Pan", f = "e" },
					{ t = "collect", quest = 13112, itemName = "Infused Mushroom Meatloaf", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 43143, itemName = "Wild Mustard", count = 4, map = 125, x = 67.7, y = 40.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 43012, itemName = "Rhino Meat", count = 4, map = 114, x = 46.7, y = 43.6, f = "e" },
				},
			},
			{
				note = "Use your Cooking ability to cook 4 Rhino Dogs|tip You will need a cooking fire to do this.",
				goals = {
					{ t = "collect", item = 34752, itemName = "Rhino Dogs", count = 4, f = "e" },
				},
			},
			{
				note = "Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142",
				goals = {
					{ t = "use", item = 43142, itemName = "Empty Picnic Basket", f = "e" },
					{ t = "collect", quest = 13116, itemName = "Mustard Dog Basket!", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 43148, itemName = "Crystalsong Carrot", count = 4, map = 127, x = 26.9, y = 45.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 43013, itemName = "Chilled Meat", count = 4, map = 115, x = 30.0, y = 49.8, f = "e" },
				},
			},
			{
				note = "Use your Stew Cookpot in your bags|use Stew Cookpot##43147|tip You will need a cooking fire to do this.",
				goals = {
					{ t = "use", item = 43147, itemName = "Stew Cookpot", f = "e" },
					{ t = "collect", quest = 13114, itemName = "Vegetable Stew", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13115, title = "Cheese for Glowergold", npc = 28718, npcName = "Ranid Glowergold", map = 125, x = 36.6, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13113, title = "Convention at the Legerdemain", npc = 29049, npcName = "Arille Azuregaze", map = 125, x = 48.6, y = 37.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13112, title = "Infused Mushroom Meatloaf", npc = 29527, npcName = "Orton Bennet", map = 125, x = 52.3, y = 55.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13116, title = "Mustard Dogs!", npc = 28160, npcName = "Archmage Pentarus", map = 125, x = 68.6, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13114, title = "Sewer Stew", npc = 29532, npcName = "Ajay Green", map = 125, x = 35.5, y = 57.6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-dalaran-fishing-dailies",
		pack = "guides",
		title = "Fishing Dailies",
		category = "Dailies",
		folder = "Dalaran",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 125,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13833, title = "Blood Is Thicker", npc = 28742, npcName = "Marcia Chase", map = 125, x = 53.1, y = 64.9, f = "e" },
					{ t = "accept", quest = 13834, title = "Dangerously Delicious", npc = 28742, npcName = "Marcia Chase", map = 125, x = 53.1, y = 64.9, f = "e" },
					{ t = "accept", quest = 13832, title = "Jewel Of The Sewers", npc = 28742, npcName = "Marcia Chase", map = 125, x = 53.1, y = 64.9, f = "e" },
					{ t = "accept", quest = 13836, title = "Disarmed!", npc = 28742, npcName = "Marcia Chase", map = 125, x = 53.1, y = 64.9, f = "e" },
					{ t = "accept", quest = 13830, title = "The Ghostfish", npc = 28742, npcName = "Marcia Chase", map = 125, x = 53.1, y = 64.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 54.6, y = 41.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13833, itemName = "Bloodtooth Frenzy", count = 5, oi = 1, map = 114, x = 53.7, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13834, itemName = "Terrorfish", count = 10, oi = 1, map = 123, x = 79.9, y = 41.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13832, itemName = "Corroded Jewelry", count = 1, oi = 1, map = 123, x = 44.4, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45328, itemName = "Bloated Slippery Eel", count = 1, map = 125, x = 64.8, y = 60.8, f = "e" },
					{ t = "collect", quest = 13836, itemName = "Severed Arm", count = 1, oi = 1, map = 125, x = 64.8, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45902, itemName = "Phantom Ghostfish", count = 1, map = 119, x = 49.3, y = 61.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13833, title = "Blood Is Thicker", npc = 28742, npcName = "Marcia Chase", map = 125, x = 53.1, y = 64.9, f = "e" },
					{ t = "turnin", quest = 13834, title = "Dangerously Delicious", npc = 28742, npcName = "Marcia Chase", map = 125, x = 53.1, y = 64.9, f = "e" },
					{ t = "turnin", quest = 13832, title = "Jewel Of The Sewers", npc = 28742, npcName = "Marcia Chase", map = 125, x = 53.1, y = 64.9, f = "e" },
					{ t = "turnin", quest = 13830, title = "The Ghostfish", npc = 28742, npcName = "Marcia Chase", map = 125, x = 53.1, y = 64.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13836, title = "Disarmed!", npc = 28706, npcName = "Olisarra the Kind", map = 125, x = 36.6, y = 37.3, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-dalaran-jewelcrafting-dailies",
		pack = "guides",
		title = "Jewelcrafting Dailies",
		category = "Dailies",
		folder = "Dalaran",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 125,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12958, title = "Shipment: Blood Jade Amulet", npc = 28701, npcName = "Timothy Jones", map = 125, x = 40.7, y = 35.4, f = "e" },
					{ t = "accept", quest = 12962, title = "Shipment: Bright Armor Relic", npc = 28701, npcName = "Timothy Jones", map = 125, x = 40.7, y = 35.4, f = "e" },
					{ t = "accept", quest = 12959, title = "Shipment: Glowing Ivory Figurine", npc = 28701, npcName = "Timothy Jones", map = 125, x = 40.7, y = 35.4, f = "e" },
					{ t = "accept", quest = 12961, title = "Shipment: Intricate Bone Figurine", npc = 28701, npcName = "Timothy Jones", map = 125, x = 40.7, y = 35.4, f = "e" },
					{ t = "accept", quest = 12963, title = "Shipment: Shifting Sun Curio", npc = 28701, npcName = "Timothy Jones", map = 125, x = 40.7, y = 35.4, f = "e" },
					{ t = "accept", quest = 12960, title = "Shipment: Wicked Sun Brooch", npc = 28701, npcName = "Timothy Jones", map = 125, x = 40.7, y = 35.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 41989, itemName = "Vrykul Amulet", count = 1, map = 118, x = 59.1, y = 54.1, f = "e" },
				},
			},
			{
				note = "Use your Vrykul Amulet in your bags|use Vrykul Amulet##41989",
				goals = {
					{ t = "use", item = 41989, itemName = "Vrykul Amulet", f = "e" },
					{ t = "collect", quest = 12958, itemName = "Blood Jade Amulet", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 42107, itemName = "Elemental Armor Scrap", count = 1, map = 115, x = 67.3, y = 52.3, f = "e" },
				},
			},
			{
				note = "Use your Elemental Armor Scrap in your bags|use Elemental Armor Scrap##42107",
				goals = {
					{ t = "use", item = 42107, itemName = "Elemental Armor Scrap", f = "e" },
					{ t = "collect", quest = 12962, itemName = "Bright Armor Relic", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 42104, itemName = "Northern Ivory", count = 1, map = 115, x = 62.5, y = 47.4, f = "e" },
				},
			},
			{
				note = "Use your Northern Ivory in your bags|use Northern Ivory##42104",
				goals = {
					{ t = "use", item = 42104, itemName = "Northern Ivory", f = "e" },
					{ t = "collect", quest = 12959, itemName = "Glowing Ivory Figurine", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 42106, itemName = "Proto Dragon Bone", count = 1, map = 120, x = 23.1, y = 57.7, f = "e" },
				},
			},
			{
				note = "Use your Proto Dragon Bone in your bags|use Proto Dragon Bone##42106",
				goals = {
					{ t = "use", item = 42106, itemName = "Proto Dragon Bone", f = "e" },
					{ t = "collect", quest = 12961, itemName = "Intricate Bone Figurine", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 42108, itemName = "Scourge Curio", count = 1, map = 115, x = 56.3, y = 27.5, f = "e" },
				},
			},
			{
				note = "Use your Scourge Curio in your bags|use Scourge Curio##42108",
				goals = {
					{ t = "use", item = 42108, itemName = "Scourge Curio", f = "e" },
					{ t = "collect", quest = 12963, itemName = "Shifting Sun Curio", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 42105, itemName = "Iron Drawf Brooch", count = 1, map = 115, x = 26.0, y = 67.2, f = "e" },
				},
			},
			{
				note = "Use your Iron Drawf Brooch in your bags|use Iron Drawf Brooch##42105",
				goals = {
					{ t = "use", item = 42105, itemName = "Iron Drawf Brooch", f = "e" },
					{ t = "collect", quest = 12960, itemName = "Wicked Sun Brooch", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12958, title = "Shipment: Blood Jade Amulet", npc = 28701, npcName = "Timothy Jones", map = 125, x = 40.7, y = 35.4, f = "e" },
					{ t = "turnin", quest = 12962, title = "Shipment: Bright Armor Relic", npc = 28701, npcName = "Timothy Jones", map = 125, x = 40.7, y = 35.4, f = "e" },
					{ t = "turnin", quest = 12959, title = "Shipment: Glowing Ivory Figurine", npc = 28701, npcName = "Timothy Jones", map = 125, x = 40.7, y = 35.4, f = "e" },
					{ t = "turnin", quest = 12961, title = "Shipment: Intricate Bone Figurine", npc = 28701, npcName = "Timothy Jones", map = 125, x = 40.7, y = 35.4, f = "e" },
					{ t = "turnin", quest = 12963, title = "Shipment: Shifting Sun Curio", npc = 28701, npcName = "Timothy Jones", map = 125, x = 40.7, y = 35.4, f = "e" },
					{ t = "turnin", quest = 12960, title = "Shipment: Wicked Sun Brooch", npc = 28701, npcName = "Timothy Jones", map = 125, x = 40.7, y = 35.4, f = "e" },
				},
			},
		},
	})
end

