-- TuWoW_Leveling — Guides/Leveling_Horde_13.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-main-guide-13-20",
		pack = "guides",
		title = "Main Guide (13-20) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-main-guide-13-20-part-2",
		author = "TuWoW & Zygor",
		minLevel = 13,
		maxLevel = 20,
		zone = 1413,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 840, title = "Conscript of the Horde", npc = 3337, npcName = "Kargal Battlescar", map = 1413, x = 62.3, y = 19.4, f = "e" },
					{ t = "accept", quest = 842, title = "Crossroads Conscription", npc = 3337, npcName = "Kargal Battlescar", map = 1413, x = 62.3, y = 19.4, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" } },
				goals = {
					{ t = "turnin", quest = 809, title = "Ak'Zeloth", npc = 3521, npcName = "Ak'Zeloth", map = 1413, x = 62.3, y = 20.1, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" } },
				goals = {
					{ t = "accept", quest = 6365, title = "Meats to Orgrimmar", npc = 3489, npcName = "Zargh", map = 1413, x = 52.6, y = 29.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 869, title = "Raptor Thieves", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.9, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "the Crossroads", f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Crossroads", map = 1413, x = 51.5, y = 30.3, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" } },
				goals = {
					{ t = "turnin", quest = 6365, title = "Meats to Orgrimmar", npc = 3615, npcName = "Devrak", map = 1413, x = 51.5, y = 30.3, f = "e" },
					{ t = "accept", quest = 6384, title = "Ride to Orgrimmar", npc = 3615, npcName = "Devrak", map = 1413, x = 51.5, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1492, title = "Wharfmaster Dizzywig", npc = 3390, npcName = "Apothecary Helbrim", map = 1413, x = 51.4, y = 30.2, f = "e" },
					{ t = "accept", quest = 848, title = "Fungal Spores", npc = 3390, npcName = "Apothecary Helbrim", map = 1413, x = 51.4, y = 30.2, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" } },
				goals = {
					{ t = "turnin", quest = 6384, title = "Ride to Orgrimmar", npc = 6929, npcName = "Innkeeper Gryshka", map = 1454, x = 54.1, y = 68.4, f = "e" },
					{ t = "accept", quest = 6385, title = "Doras the Wind Rider Master", npc = 6929, npcName = "Innkeeper Gryshka", map = 1454, x = 54.1, y = 68.4, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" } },
				goals = {
					{ t = "turnin", quest = 6385, title = "Doras the Wind Rider Master", npc = 3310, npcName = "Doras", map = 1454, x = 45.1, y = 63.9, f = "e" },
					{ t = "accept", quest = 6386, title = "Return to the Crossroads.", npc = 3310, npcName = "Doras", map = 1454, x = 45.1, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 871, title = "Disrupt the Attacks", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.9, f = "e" },
					{ t = "accept", quest = 5041, title = "Supplies for the Crossroads", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 867, title = "Harpy Raiders", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.6, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 842, title = "Crossroads Conscription", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
					{ t = "accept", quest = 844, title = "Plainstrider Menace", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 870, title = "The Forgotten Pools", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" } },
				goals = {
					{ t = "turnin", quest = 6386, title = "Return to the Crossroads.", npc = 3489, npcName = "Zargh", map = 1413, x = 52.6, y = 29.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 844, itemName = "Plainstrider Beak", count = 7, oi = 1, map = 1413, x = 53.3, y = 29.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 871, target = "Razormane Water Seeker", count = 8, oi = 1, map = 1413, x = 54.2, y = 25.3, f = "e" },
					{ t = "kill", quest = 871, target = "Razormane Thornweaver", count = 8, oi = 2, map = 1413, x = 54.2, y = 25.3, f = "e" },
					{ t = "kill", quest = 871, target = "Razormane Hunter", count = 3, oi = 3, map = 1413, x = 54.2, y = 25.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5041, itemName = "Crossroads' Supply Crates", count = 1, oi = 1, map = 1413, x = 59.2, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "raptors", count = 1, map = 1413, x = 52.7, y = 16.5, f = "e" },
					{ t = "collect", quest = 869, itemName = "Raptor Head", count = 12, oi = 1, map = 1413, x = 52.7, y = 16.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 14, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "accept", quest = 6126, title = "Lessons Anew", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.0, y = 27.0, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6126, title = "Lessons Anew", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
					{ t = "accept", quest = 6127, title = "The Principal Source", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "talk", npc = 11798, npcName = "Bunthen Plainswind", map = 1450, x = 44.3, y = 45.9, f = "e" },
				},
			},
			{
				note = "Buy the following from the Auction House:",
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "buy", itemName = "Earthroot", count = 5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", map = 1413, x = 47.4, y = 16.1, f = "e" },
				},
			},
			{
				note = "Go up the hill to 48,19",
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 6127, itemName = "Filled Dreadmist Peak Sampler", count = 1, oi = 1, map = 1413, x = 48.4, y = 18.9, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6127, title = "The Principal Source", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
					{ t = "accept", quest = 6128, title = "Gathering the Cure", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
				},
			},
			{
				note = "Find and kill 5 Lost Barrens Kodos around the Barrens",
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 6128, itemName = "Kodo Horn", count = 5, oi = 2, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6128, title = "Gathering the Cure", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
					{ t = "accept", quest = 6129, title = "Curing the Sick", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6129, title = "Curing the Sick", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
					{ t = "accept", quest = 6130, title = "Power over Poison", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "talk", npc = 11798, npcName = "Bunthen Plainswind", map = 1450, x = 44.3, y = 45.9, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6130, title = "Power over Poison", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.4, y = 27.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 869, title = "Raptor Thieves", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.9, y = 30.3, f = "e" },
					{ t = "accept", quest = 3281, title = "Stolen Silver", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.9, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 871, title = "Disrupt the Attacks", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.9, f = "e" },
					{ t = "turnin", quest = 5041, title = "Supplies for the Crossroads", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.9, f = "e" },
					{ t = "accept", quest = 872, title = "The Disruption Ends", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 844, title = "Plainstrider Menace", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
					{ t = "accept", quest = 845, title = "The Zhevra", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 899, title = "Consumed by Hatred", npc = 3432, npcName = "Mankrik", map = 1413, x = 52.0, y = 31.6, f = "e" },
					{ t = "accept", quest = 4921, title = "Lost in Battle", npc = 3432, npcName = "Mankrik", map = 1413, x = 52.0, y = 31.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 855, title = "Centaur Bracers", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
					{ t = "accept", quest = 850, title = "Kolkar Leaders", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 845, itemName = "Zhevra Hooves", count = 4, oi = 1, map = 1413, x = 46.0, y = 27.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 848, itemName = "Fungal Spores", count = 4, oi = 1, map = 1413, x = 45.3, y = 22.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 850, itemName = "Barak's Head", count = 1, oi = 1, map = 1413, x = 42.6, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 855, itemName = "Centaur Bracers", count = 15, oi = 1, map = 1413, x = 46.1, y = 26.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 867, itemName = "Witchwing Talon", count = 8, oi = 1, map = 1413, x = 40.7, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 848, title = "Fungal Spores", npc = 3390, npcName = "Apothecary Helbrim", map = 1413, x = 51.4, y = 30.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 867, title = "Harpy Raiders", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.6, y = 30.9, f = "e" },
					{ t = "accept", quest = 875, title = "Harpy Lieutenants", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.6, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 870, title = "The Forgotten Pools", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
					{ t = "accept", quest = 877, title = "The Stagnant Oasis", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 845, title = "The Zhevra", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
					{ t = "accept", quest = 903, title = "Prowlers of the Barrens", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 872, target = "Razormane Geomancer", count = 8, oi = 1, map = 1413, x = 56.4, y = 24.2, f = "e" },
					{ t = "kill", quest = 872, target = "Razormane Defender", count = 8, oi = 2, map = 1413, x = 56.4, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 872, itemName = "Kreenig Snarlsnout's Tusk", count = 1, oi = 3, map = 1413, x = 58.8, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 887, title = "Southsea Freebooters", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.7, y = 36.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Ratchet", map = 1413, x = 63.1, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 894, title = "Samophlange (1)", npc = 3442, npcName = "Sputtervalve", map = 1413, x = 63.0, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 895, title = "WANTED: Baron Longshore", map = 1413, x = 62.6, y = 37.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 865, title = "Raptor Horns", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.4, y = 37.6, f = "e" },
					{ t = "accept", quest = 1069, title = "Deepmoss Spider Eggs", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.4, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1492, title = "Wharfmaster Dizzywig", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.4, y = 38.5, f = "e" },
					{ t = "accept", quest = 896, title = "Miner's Fortune", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.4, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 891, title = "The Guns of Northwatch", npc = 3339, npcName = "Captain Thalo'thas Brightsun", map = 1413, x = 62.3, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 887, target = "Southsea Brigand", count = 12, oi = 1, map = 1413, x = 63.7, y = 43.5, f = "e" },
					{ t = "kill", quest = 887, target = "Southsea Cannoneer", count = 6, oi = 2, map = 1413, x = 63.7, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 895, itemName = "Baron Longshore's Head", count = 1, oi = 1, map = 1413, x = 63.3, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 887, title = "Southsea Freebooters", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.7, y = 36.2, f = "e" },
					{ t = "accept", quest = 890, title = "The Missing Shipment (1)", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.7, y = 36.2, f = "e" },
					{ t = "turnin", quest = 895, title = "WANTED: Baron Longshore", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.7, y = 36.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 890, title = "The Missing Shipment (1)", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.4, y = 38.5, f = "e" },
					{ t = "accept", quest = 892, title = "The Missing Shipment (2)", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.4, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 892, title = "The Missing Shipment (2)", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.7, y = 36.2, f = "e" },
					{ t = "accept", quest = 888, title = "Stolen Booty", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.7, y = 36.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 888, itemName = "Telescopic Lens", count = 1, oi = 2, map = 1413, x = 63.6, y = 49.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 888, itemName = "Shipment of Boots", count = 1, oi = 1, map = 1413, x = 62.6, y = 49.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 888, title = "Stolen Booty", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.7, y = 36.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 872, title = "The Disruption Ends", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 850, title = "Kolkar Leaders", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
					{ t = "turnin", quest = 855, title = "Centaur Bracers", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
					{ t = "accept", quest = 851, title = "Verog the Dervish", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1062, title = "Goblin Invaders", npc = 4049, npcName = "Seereth Stonebreak", map = 1413, x = 35.2, y = 27.8, f = "e" },
					{ t = "accept", quest = 6548, title = "Avenge My Village", npc = 11857, npcName = "Makaba Flathoof", map = 1413, x = 35.2, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6548, target = "Grimtotem Ruffian", count = 8, oi = 1, map = 1442, x = 80.6, y = 90.3, f = "e" },
					{ t = "kill", quest = 6548, target = "Grimtotem Mercenary", count = 6, oi = 2, map = 1442, x = 80.6, y = 90.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6548, title = "Avenge My Village", npc = 11857, npcName = "Makaba Flathoof", map = 1413, x = 35.2, y = 27.8, f = "e" },
					{ t = "accept", quest = 6629, title = "Kill Grundig Darkcloud", npc = 11857, npcName = "Makaba Flathoof", map = 1413, x = 35.2, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6629, target = "Grimtotem Brute", count = 6, oi = 2, map = 1442, x = 71.5, y = 88.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6629, target = "Grundig Darkcloud", count = 1, oi = 1, map = 1442, x = 73.7, y = 86.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6629, title = "Kill Grundig Darkcloud", npc = 11857, npcName = "Makaba Flathoof", map = 1413, x = 35.2, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 16, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "accept", quest = 26, title = "A Lesson to Learn", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.4, y = 27.3, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 26, title = "A Lesson to Learn", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
					{ t = "accept", quest = 28, title = "Trial of the Lake", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
				},
			},
			{
				note = "Go south in the lake to 58,58",
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 28, item = 15877, itemName = "Shrine Bauble", count = 1, map = 1450, x = 57.6, y = 57.8, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", map = 1450, x = 36.1, y = 41.6, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 28, title = "Trial of the Lake", npc = 11799, npcName = "Tajarri", map = 1450, x = 36.5, y = 41.8, f = "e" },
					{ t = "accept", quest = 30, title = "Trial of the Sea Lion", npc = 11799, npcName = "Tajarri", map = 1450, x = 36.5, y = 41.8, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "talk", npc = 11798, npcName = "Bunthen Plainswind", map = 1450, x = 44.3, y = 45.9, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 30, item = 15883, itemName = "Half Pendant of Aquatic Agility", count = 1, map = 1413, x = 56.7, y = 8.3, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", map = 1411, x = 51.0, y = 14.0, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 30, item = 15882, itemName = "Half Pendant of Aquatic Endurance", count = 1, map = 1415, x = 39.0, y = 38.0, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 30, itemName = "Pendant of the Sea Lion", count = 1, oi = 1, map = 1450, x = 36.1, y = 41.6, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 30, title = "Trial of the Sea Lion", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
					{ t = "accept", quest = 31, title = "Aquatic Form", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "talk", npc = 11798, npcName = "Bunthen Plainswind", map = 1450, x = 44.3, y = 45.9, f = "e" },
				},
			},
		},
	})
end

