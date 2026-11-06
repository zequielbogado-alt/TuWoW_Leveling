-- TuWoW_Leveling — Guides/Leveling_Horde_10.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-the-barrens-and-stonetalon-mountain-15-21",
		pack = "guides",
		title = "The Barrens & Stonetalon Mountain (Parte 1/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-the-barrens-and-stonetalon-mountain-15-21-part-2",
		author = "TuWoW & Zygor",
		minLevel = 15,
		maxLevel = 21,
		zone = 1411,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 840, title = "Conscript of the Horde", npc = 3336, npcName = "Takrin Pathseeker", map = 1411, x = 50.85, y = 43.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 840, title = "Conscript of the Horde", npc = 3337, npcName = "Kargal Battlescar", map = 1413, x = 62.26, y = 19.38, f = "e" },
					{ t = "accept", quest = 842, title = "Crossroads Conscription", npc = 3337, npcName = "Kargal Battlescar", map = 1413, x = 62.26, y = 19.38, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" } },
				goals = {
					{ t = "turnin", quest = 809, title = "Ak'Zeloth", npc = 3521, npcName = "Ak'Zeloth", map = 1413, x = 62.34, y = 20.07, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" } },
				goals = {
					{ t = "accept", quest = 6365, title = "Meats to Orgrimmar", npc = 3489, npcName = "Zargh", map = 1413, x = 52.62, y = 29.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 869, title = "Raptor Thieves", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.93, y = 30.32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 842, title = "Crossroads Conscription", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.24, y = 31.01, f = "e" },
					{ t = "accept", quest = 844, title = "Plainstrider Menace", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.24, y = 31.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 870, title = "The Forgotten Pools", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 871, title = "Disrupt the Attacks", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Crossroads", map = 1413, x = 51.5, y = 30.34, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" } },
				goals = {
					{ t = "turnin", quest = 6365, title = "Meats to Orgrimmar", npc = 3615, npcName = "Devrak", map = 1413, x = 51.5, y = 30.34, f = "e" },
					{ t = "accept", quest = 6384, title = "Ride to Orgrimmar", npc = 3615, npcName = "Devrak", map = 1413, x = 51.5, y = 30.34, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Orc", "Troll" } },
				goals = {
					{ t = "turnin", quest = 6384, title = "Ride to Orgrimmar", npc = 6929, npcName = "Innkeeper Gryshka", map = 1454, x = 54.09, y = 68.41, f = "e" },
					{ t = "accept", quest = 6385, title = "Doras the Wind Rider Master", npc = 6929, npcName = "Innkeeper Gryshka", map = 1454, x = 54.09, y = 68.41, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				only = { races = { "Orc", "Troll" } },
				goals = {
					{ t = "turnin", quest = 6385, title = "Doras the Wind Rider Master", npc = 3310, npcName = "Doras", map = 1454, x = 45.12, y = 63.89, f = "e" },
					{ t = "accept", quest = 6386, title = "Return to the Crossroads", npc = 3310, npcName = "Doras", map = 1454, x = 45.12, y = 63.89, f = "e" },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 1963, title = "The Shattered Hand", npc = 6446, npcName = "Therzok", map = 1454, x = 42.74, y = 53.54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1358, title = "Sample for Helbrim", npc = 3390, npcName = "Apothecary Helbrim", map = 1413, x = 51.44, y = 30.15, f = "e" },
					{ t = "accept", quest = 1492, title = "Wharfmaster Dizzywig", npc = 3390, npcName = "Apothecary Helbrim", map = 1413, x = 51.44, y = 30.15, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" } },
				goals = {
					{ t = "turnin", quest = 6386, title = "Return to the Crossroads", npc = 3489, npcName = "Zargh", map = 1413, x = 52.62, y = 29.84, f = "e" },
				},
			},
			{
				note = "Skip if not here. Can try again later.",
				goals = {
					{ t = "collect", quest = 819, item = 4926, itemName = "Chen's Empty Keg", map = 1413, x = 55.7, y = 27.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 4926, itemName = "Chen's Empty Keg" },
					{ t = "accept", quest = 819, title = "Chen's Empty Keg" },
				},
			},
			{
				label = "Kill_Razormane_Enemies",
				along = true,
				goals = {
					{ t = "kill", quest = 871, npc = 3265, target = "Razormane Hunter", count = 3, oi = 3, map = 1413, x = 54.67, y = 25.75, f = "e" },
					{ t = "kill", quest = 871, npc = 3267, target = "Razormane Water Seeker", count = 8, oi = 1, map = 1413, x = 54.67, y = 25.75, f = "e" },
					{ t = "kill", quest = 871, npc = 3268, target = "Razormane Thornweaver", count = 8, oi = 2, map = 1413, x = 54.67, y = 25.75, f = "e" },
				},
			},
			{
				note = "Wait until it appears, if missing.",
				goals = {
					{ t = "collect", quest = 819, item = 4926, itemName = "Chen's Empty Keg", map = 1413, x = 55.78, y = 20.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 4926, itemName = "Chen's Empty Keg" },
					{ t = "accept", quest = 819, title = "Chen's Empty Keg" },
				},
			},
			{
				label = "Collect_Plainstrider_Beaks",
				along = true,
				goals = {
					{ t = "collect", quest = 844, item = 5087, itemName = "Plainstrider Beak", count = 7, oi = 1, map = 1413, x = 52.94, y = 27.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 871, title = "Disrupt the Attacks", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.87, f = "e" },
					{ t = "accept", quest = 872, title = "The Disruption Ends", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.87, f = "e" },
					{ t = "accept", quest = 5041, title = "Supplies for the Crossroads", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.87, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "accept", quest = 867, title = "Harpy Raiders", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.62, y = 30.89, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 844, title = "Plainstrider Menace", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.24, y = 31.01, f = "e" },
					{ t = "accept", quest = 845, title = "The Zhevra", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.24, y = 31.01, f = "e" },
				},
			},
			{
				note = "Run around the north side of the mountain. Walks around.",
				goals = {
					{ t = "collect", quest = 872, item = 5063, itemName = "Kreenig Snarlsnout's Tusk", oi = 3, map = 1413, x = 58.53, y = 27.04, f = "e" },
				},
			},
			{
				label = "Collect_Crossroads_Cupply_Crates",
				along = true,
				note = "Piles of brown boxes. Multiple locations.",
				goals = {
					{ t = "collect", quest = 5041, item = 12708, itemName = "Crossroads' Supply Crates", oi = 1, map = 1413, x = 58.4, y = 27.0, f = "e" },
				},
			},
			{
				label = "Kill_Razormane_Geomancers_And_Defenders",
				along = true,
				goals = {
					{ t = "kill", quest = 872, npc = 3269, target = "Razormane Geomancer", count = 8, oi = 1, map = 1413, x = 58.32, y = 24.45, f = "e" },
					{ t = "kill", quest = 872, npc = 3266, target = "Razormane Defender", count = 8, oi = 2, map = 1413, x = 58.32, y = 24.45, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 887, title = "Southsea Freebooters", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.68, y = 36.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Ratchet", map = 1413, x = 63.09, y = 37.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 894, title = "Samophlange", npc = 3442, npcName = "Sputtervalve", map = 1413, x = 62.98, y = 37.22, f = "e" },
				},
			},
			{
				note = "Deposit into the bank.",
				goals = {
					{ t = "complete", quest = 872, title = "The Disruption Ends", note = "bank Kreenig Snarlsnout's Tusk##5063", map = 1413, x = 62.64, y = 37.42, f = "e" },
					{ t = "complete", quest = 5041, title = "Supplies for the Crossroads", note = "bank Crossroads' Supply Crates##12708", map = 1413, x = 62.64, y = 37.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 895, title = "WANTED: Baron Longshore", map = 1413, x = 62.59, y = 37.47, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 819, title = "Chen's Empty Keg", npc = 3292, npcName = "Brewmaster Drohn", map = 1413, x = 62.26, y = 38.39, f = "e" },
					{ t = "accept", quest = 821, title = "Chen's Empty Keg", npc = 3292, npcName = "Brewmaster Drohn", map = 1413, x = 62.26, y = 38.39, f = "e" },
				},
			},
			{
				note = "Small clusters of nuts and bolts. Usually near tents.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 63.35, y = 44.22 },
				},
			},
			{
				label = "Collect_Tazans_Satchel_Rogue",
				along = true,
				note = "Troll. Walks around.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 1963, item = 7209, itemName = "Tazan's Satchel", oi = 1, map = 1413, x = 62.92, y = 44.07, f = "e" },
				},
			},
			{
				note = "Human wearing a red trenchcoat. Walks around. Multiple locations.",
				goals = {
					{ t = "collect", quest = 895, item = 5084, itemName = "Baron Longshore's Head", oi = 1, map = 1413, x = 64.2, y = 47.2, f = "e" },
				},
			},
			{
				label = "Kill_Southsea_Cannoneers_And_Brigands",
				along = true,
				goals = {
					{ t = "kill", quest = 887, npc = 3382, target = "Southsea Cannoneer", count = 6, oi = 2, map = 1413, x = 63.76, y = 46.71, f = "e" },
					{ t = "kill", quest = 887, npc = 3381, target = "Southsea Brigand", count = 12, oi = 1, map = 1413, x = 63.76, y = 46.71, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Ratchet", map = 1413, x = 62.05, y = 39.41, f = "e" },
				},
			},
			{
				note = "Collect from the bank.",
				goals = {
					{ t = "collect", quest = 872, item = 5063, itemName = "Kreenig Snarlsnout's Tusk", map = 1413, x = 62.64, y = 37.42, f = "e" },
					{ t = "collect", quest = 5041, item = 12708, itemName = "Crossroads' Supply Crates", map = 1413, x = 62.64, y = 37.42, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 887, title = "Southsea Freebooters", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.68, y = 36.23, f = "e" },
					{ t = "accept", quest = 890, title = "The Missing Shipment", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.68, y = 36.23, f = "e" },
					{ t = "turnin", quest = 895, title = "WANTED: Baron Longshore", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.68, y = 36.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1492, title = "Wharfmaster Dizzywig", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.35, y = 38.45, f = "e" },
					{ t = "turnin", quest = 890, title = "The Missing Shipment", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.35, y = 38.45, f = "e" },
					{ t = "accept", quest = 892, title = "The Missing Shipment", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.35, y = 38.45, f = "e" },
					{ t = "accept", quest = 896, title = "Miner's Fortune", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.35, y = 38.45, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 892, title = "The Missing Shipment", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.68, y = 36.23, f = "e" },
					{ t = "accept", quest = 888, title = "Stolen Booty", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.68, y = 36.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 872, title = "The Disruption Ends", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.87, f = "e" },
					{ t = "turnin", quest = 5041, title = "Supplies for the Crossroads", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.87, f = "e" },
				},
			},
			{
				label = "Collect_Zhevra_Hooves",
				along = true,
				note = "Zebras.",
				goals = {
					{ t = "collect", quest = 845, item = 5086, itemName = "Zhevra Hooves", count = 4, oi = 1, map = 1413, x = 53.46, y = 36.19, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 845, title = "The Zhevra", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.23, y = 31.01, f = "e" },
					{ t = "accept", quest = 903, title = "Prowlers of the Barrens", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.23, y = 31.01, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 855, title = "Centaur Bracers", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.34, y = 28.41, f = "e" },
					{ t = "accept", quest = 850, title = "Kolkar Leaders", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.34, y = 28.41, f = "e" },
				},
			},
			{
				note = "Swim next to the bubbling rock. Underwater.",
				goals = {
					{ t = "complete", quest = 870, title = "The Forgotten Pools", note = "Explore the Waters of the Forgotten Pools", map = 1413, x = 45.07, y = 22.53, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "collect", quest = 850, item = 5022, itemName = "Barak's Head", oi = 1, map = 1413, x = 42.72, y = 23.61, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 855, title = "Centaur Bracers", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.34, y = 28.41, f = "e" },
					{ t = "turnin", quest = 850, title = "Kolkar Leaders", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.34, y = 28.41, f = "e" },
					{ t = "accept", quest = 851, title = "Verog the Dervish", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.34, y = 28.41, f = "e" },
				},
			},
			{
				note = "Lions.",
				goals = {
					{ t = "collect", quest = 903, item = 5096, itemName = "Prowler Claws", count = 7, oi = 1, map = 1413, x = 41.2, y = 28.4, f = "e" },
					{ t = "collect", quest = 821, item = 4893, itemName = "Savannah Lion Tusk", count = 5, oi = 1, map = 1413, x = 45.5, y = 15.08, f = "e" },
				},
			},
			{
				note = "Harpies.",
				goals = {
					{ t = "collect", quest = 867, item = 5064, itemName = "Witchwing Talon", count = 8, oi = 1, map = 1413, x = 40.48, y = 17.77, f = "e" },
				},
			},
			{
				note = "Lions.",
				goals = {
					{ t = "collect", quest = 821, item = 4893, itemName = "Savannah Lion Tusk", count = 5, oi = 1, map = 1413, x = 45.5, y = 15.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 894, title = "Samophlange", map = 1413, x = 52.41, y = 11.64, f = "e" },
					{ t = "accept", quest = 900, title = "Samophlange", map = 1413, x = 52.41, y = 11.64, f = "e" },
				},
			},
			{
				note = "Two enemies may attack.",
				goals = {
					{ t = "complete", quest = 900, title = "Samophlange", note = "Shut Off the Fuel Control Valve", map = 1413, x = 52.4, y = 11.41, f = "e" },
				},
			},
			{
				note = "Two enemies may attack.",
				goals = {
					{ t = "complete", quest = 900, title = "Samophlange", note = "Shut Off the Regulator Valve", map = 1413, x = 52.29, y = 11.4, f = "e" },
				},
			},
			{
				note = "Two enemies may attack.",
				goals = {
					{ t = "complete", quest = 900, title = "Samophlange", note = "Shut Off the Main Control Valve", map = 1413, x = 52.33, y = 11.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 900, title = "Samophlange", map = 1413, x = 52.41, y = 11.64, f = "e" },
					{ t = "accept", quest = 901, title = "Samophlange", map = 1413, x = 52.41, y = 11.64, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "collect", quest = 901, item = 5089, itemName = "Console Key", oi = 1, map = 1413, x = 52.84, y = 10.39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 901, title = "Samophlange", map = 1413, x = 52.41, y = 11.64, f = "e" },
					{ t = "accept", quest = 902, title = "Samophlange", map = 1413, x = 52.41, y = 11.64, f = "e" },
				},
			},
			{
				label = "Collect_Raptor_Heads",
				along = true,
				note = "Purple raptors. All around the Barrens. Kill them as you see them.",
				goals = {
					{ t = "collect", quest = 869, item = 5062, itemName = "Raptor Head", count = 12, oi = 1, map = 1413, x = 53.0, y = 12.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 61.54, y = 6.68 },
					{ t = "collect", quest = 896, item = 5097, itemName = "Cats Eye Emerald", oi = 1, map = 1413, x = 61.33, y = 4.21, f = "e" },
				},
			},
			{
				note = "Helps reach level 18 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 17,11175", map = 1413, x = 61.33, y = 4.21 },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 896, title = "Miner's Fortune", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.35, y = 38.45, f = "e" },
				},
			},
			{
				note = "Deposit into the bank.",
				goals = {
					{ t = "complete", quest = 821, title = "Chen's Empty Keg", note = "bank Savannah Lion Tusk##4893", map = 1413, x = 62.64, y = 37.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 902, title = "Samophlange", npc = 3442, npcName = "Sputtervalve", map = 1413, x = 62.98, y = 37.22, f = "e" },
					{ t = "accept", quest = 3921, title = "Wenikee Boltbucket", npc = 3442, npcName = "Sputtervalve", map = 1413, x = 62.98, y = 37.22, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "turnin", quest = 867, title = "Harpy Raiders", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.62, y = 30.9, f = "e" },
					{ t = "accept", quest = 875, title = "Harpy Lieutenants", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.62, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 870, title = "The Forgotten Pools", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
					{ t = "accept", quest = 877, title = "The Stagnant Oasis", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 903, title = "Prowlers of the Barrens", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.24, y = 31.01, f = "e" },
					{ t = "accept", quest = 881, title = "Echeyakee", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.24, y = 31.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 869, title = "Raptor Thieves", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.93, y = 30.32, f = "e" },
					{ t = "accept", quest = 3281, title = "Stolen Silver", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.93, y = 30.32, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5883, npcName = "Enyo", map = 1454, x = 38.79, y = 85.65, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 6018, npcName = "Ur'kyo", map = 1454, x = 35.59, y = 87.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1061, title = "The Spirits of Stonetalon", npc = 4047, npcName = "Zor Lonetree", map = 1454, x = 38.93, y = 38.38, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3344, npcName = "Kardris Dreamseeker", map = 1454, x = 38.8, y = 36.38, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3325, npcName = "Mirket", map = 1454, x = 48.62, y = 46.95, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5815, npcName = "Kurgul", map = 1454, x = 47.52, y = 46.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3353, npcName = "Grezz Ragefist", map = 1454, x = 79.78, y = 31.42, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3352, npcName = "Ormak Grimshot", map = 1454, x = 66.06, y = 18.54, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10088, npcName = "Xao'tsu", map = 1454, x = 66.33, y = 14.82, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Train Staves", map = 1454, x = 81.53, y = 19.63 },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3328, npcName = "Ormok", map = 1454, x = 43.91, y = 54.63, f = "e" },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 2379, title = "Zando'zan", npc = 3401, npcName = "Shenthul", map = 1454, x = 43.05, y = 53.72, f = "e" },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 1963, title = "The Shattered Hand", npc = 6446, npcName = "Therzok", map = 1454, x = 42.74, y = 53.54, f = "e" },
					{ t = "accept", quest = 1858, title = "The Shattered Hand", npc = 6446, npcName = "Therzok", map = 1454, x = 42.74, y = 53.54, f = "e" },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2379, title = "Zando'zan", npc = 3402, npcName = "Zando'zan", map = 1454, x = 42.7, y = 53.0, f = "e" },
					{ t = "accept", quest = 2382, title = "Wrenix of Ratchet", npc = 3402, npcName = "Zando'zan", map = 1454, x = 42.7, y = 53.0, f = "e" },
				},
			},
			{
				note = "Cast Pick Pocket on Gamon. Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 1858, item = 7208, itemName = "Tazan's Key", map = 1454, x = 54.0, y = 68.03, f = "e" },
				},
			},
		},
	})
end

