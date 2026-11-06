-- TuWoW_Leveling — Guides/Events_04.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/events/a-gift-giving",
		pack = "guides",
		title = "Gift Giving",
		category = "Events",
		folder = "Love is in the Air",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		steps = {
			{
				label = "Begin_Guide",
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 21815, itemName = "Love Token", count = 10, map = 1453, x = 60.39, y = 75.27, f = "e" },
					{ t = "buy", item = 21833, itemName = "Cologne Bottle", map = 1453, x = 60.39, y = 75.27, f = "e" },
					{ t = "buy", item = 21829, itemName = "Perfume Bottle", map = 1453, x = 60.39, y = 75.27, f = "e" },
				},
			},
			{
				label = "Apply_Perfume_or_Cologne_Stormwind",
				note = "Perfume allows you to give Love Tokens to male NPCs. Cologne allows you to give Love Tokens to female NPCs.",
				goals = {
					{ t = "use", item = 21833, itemName = "Cologne Bottle" },
					{ t = "use", item = 21829, itemName = "Perfume Bottle" },
				},
			},
			{
				note = "Talk to guards around Stormwind who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.",
				goals = {
					{ t = "use", item = 21975, itemName = "Pledge of Adoration: Stormwind" },
					{ t = "use", item = 22178, itemName = "Pledge of Friendship: Stormwind" },
					{ t = "collect", item = 22117, itemName = "Pledge of Loyalty: Stormwind", count = 5, map = 1453, x = 62.94, y = 72.36, f = "e" },
				},
			},
			{
				note = "Talk to guards around Stormwind who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.",
				goals = {
					{ t = "use", item = 21975, itemName = "Pledge of Adoration: Stormwind" },
					{ t = "use", item = 22178, itemName = "Pledge of Friendship: Stormwind" },
					{ t = "collect", item = 22143, itemName = "Stormwind Guard's Card", count = 5, map = 1453, x = 62.94, y = 72.36, f = "e" },
				},
			},
			{
				note = "Talk to NPCs who aren't guards around Stormwind who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.",
				goals = {
					{ t = "use", item = 21981, itemName = "Gift of Adoration: Stormwind" },
					{ t = "use", item = 22170, itemName = "Gift of Friendship: Stormwind" },
					{ t = "collect", item = 22176, itemName = "Homemade Bread", count = 5, map = 1453, x = 62.94, y = 72.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22117, itemName = "Pledge of Loyalty: Stormwind" },
					{ t = "collect", item = 22285, itemName = "Stormwind Pledge Collection" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22143, itemName = "Stormwind Guard's Card" },
					{ t = "collect", item = 22284, itemName = "Bundle of Cards" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22176, itemName = "Homemade Bread" },
					{ t = "collect", item = 22283, itemName = "Sack of Homemade Bread" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22285, itemName = "Stormwind Pledge Collection" },
					{ t = "collect", item = 22131, itemName = "Stormwind Gift Collection" },
				},
			},
			{
				label = "Apply_Perfume_or_Cologne_Ironforge",
				note = "Perfume allows you to give Love Tokens to male NPCs. Cologne allows you to give Love Tokens to female NPCs.",
				goals = {
					{ t = "use", item = 21833, itemName = "Cologne Bottle" },
					{ t = "use", item = 21829, itemName = "Perfume Bottle" },
				},
			},
			{
				note = "Talk to guards around Ironforge who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more. Nearly all Ironforge guards are male, so Perfume works best for this.",
				goals = {
					{ t = "use", item = 22154, itemName = "Pledge of Adoration: Ironforge" },
					{ t = "use", item = 22160, itemName = "Pledge of Friendship: Ironforge" },
					{ t = "collect", item = 22119, itemName = "Pledge of Loyalty: Ironforge", count = 5, map = 1455, x = 30.63, y = 66.72, f = "e" },
				},
			},
			{
				note = "Talk to guards around Ironforge who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more. Nearly all Ironforge guards are male, so Perfume works best for this.",
				goals = {
					{ t = "use", item = 22154, itemName = "Pledge of Adoration: Ironforge" },
					{ t = "use", item = 22160, itemName = "Pledge of Friendship: Ironforge" },
					{ t = "collect", item = 22141, itemName = "Ironforge Guard's Card", count = 5, map = 1455, x = 30.63, y = 66.72, f = "e" },
				},
			},
			{
				note = "Talk to NPCs who aren't guards around Ironforge who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.",
				goals = {
					{ t = "use", item = 21980, itemName = "Gift of Adoration: Ironforge" },
					{ t = "use", item = 22168, itemName = "Gift of Friendship: Ironforge" },
					{ t = "collect", item = 22173, itemName = "Dwarven Homebrew", count = 5, map = 1455, x = 30.63, y = 66.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22119, itemName = "Pledge of Loyalty: Ironforge" },
					{ t = "collect", item = 22286, itemName = "Ironforge Pledge Collection" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22141, itemName = "Ironforge Guard's Card" },
					{ t = "collect", item = 22287, itemName = "Parcel of Cards" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22173, itemName = "Dwarven Homebrew" },
					{ t = "collect", item = 22288, itemName = "Case of Homebrew" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22286, itemName = "Ironforge Pledge Collection" },
					{ t = "collect", item = 22132, itemName = "Ironforge Gift Collection" },
				},
			},
			{
				label = "Apply_Perfume_or_Cologne_Darnassus",
				note = "Perfume allows you to give Love Tokens to male NPCs. Cologne allows you to give Love Tokens to female NPCs.",
				goals = {
					{ t = "use", item = 21833, itemName = "Cologne Bottle" },
					{ t = "use", item = 21829, itemName = "Perfume Bottle" },
				},
			},
			{
				note = "Talk to guards around Darnassus who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more. Nearly all Darnassus guards are female, so Cologne works best for this.",
				goals = {
					{ t = "use", item = 22155, itemName = "Pledge of Adoration: Darnassus" },
					{ t = "use", item = 22159, itemName = "Pledge of Friendship: Darnassus" },
					{ t = "collect", item = 22120, itemName = "Pledge of Loyalty: Darnassus", count = 5, map = 1457, x = 43.11, y = 41.2, f = "e" },
				},
			},
			{
				note = "Talk to guards around Darnassus who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more. Nearly all Darnassus guards are female, so Cologne works best for this.",
				goals = {
					{ t = "use", item = 22155, itemName = "Pledge of Adoration: Darnassus" },
					{ t = "use", item = 22159, itemName = "Pledge of Friendship: Darnassus" },
					{ t = "collect", item = 22140, itemName = "Sentinel's Card", count = 5, map = 1457, x = 43.11, y = 41.2, f = "e" },
				},
			},
			{
				note = "Talk to NPCs who aren't guards around Darnassus who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.",
				goals = {
					{ t = "use", item = 21980, itemName = "Gift of Adoration: Ironforge" },
					{ t = "use", item = 22168, itemName = "Gift of Friendship: Ironforge" },
					{ t = "collect", item = 21960, itemName = "Handmade Woodcraft", count = 5, map = 1457, x = 43.11, y = 41.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22120, itemName = "Pledge of Loyalty: Darnassus" },
					{ t = "collect", item = 22290, itemName = "Darnassus Pledge Collection" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22140, itemName = "Sentinel's Card" },
					{ t = "collect", item = 22289, itemName = "Stack of Cards" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21960, itemName = "Handmade Woodcraft" },
					{ t = "collect", item = 22291, itemName = "Box of Woodcrafts" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22290, itemName = "Darnassus Pledge Collection" },
					{ t = "collect", item = 22133, itemName = "Darnassus Gift Collection" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22131, itemName = "Stormwind Gift Collection" },
					{ t = "collect", item = 22262, itemName = "Alliance Gift Collection" },
				},
			},
			{
				label = "Bolvar_Fordragon",
				goals = {
					{ t = "accept", quest = 8993, title = "Gift Giving", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1453, x = 80.55, y = 37.94, f = "e" },
				},
			},
			{
				label = "Vote_Magni_Bronzebeard",
				goals = {
					{ t = "accept", quest = 8993, title = "Gift Giving", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1455, x = 40.3, y = 56.59, f = "e" },
				},
			},
			{
				label = "Tyrande_Whisperwind",
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1457, x = 39.03, y = 77.23 },
					{ t = "goto", text = "Run up the ramp", map = 1457, x = 40.49, y = 91.59 },
					{ t = "accept", quest = 8993, title = "Gift Giving", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1457, x = 38.11, y = 80.5, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/a-midsummer-fire-festival-quests",
		pack = "guides",
		title = "Midsummer Fire Festival Quests",
		category = "Events",
		folder = "Midsummer Fire Festival",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1455,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 9367, title = "The Festival of Fire", npc = 16817, npcName = "Festival Loremaster", map = 1455, x = 63.83, y = 25.55, f = "e" },
					{ t = "accept", quest = 9389, title = "Flickering Flames in the Eastern Kingdoms", npc = 16817, npcName = "Festival Loremaster", map = 1455, x = 63.83, y = 25.55, f = "e" },
					{ t = "accept", quest = 9388, title = "Flickering Flames in Kalimdor", npc = 16817, npcName = "Festival Loremaster", map = 1455, x = 63.83, y = 25.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9323, title = "Wild Fires in the Eastern Kingdoms", npc = 16788, npcName = "Festival Flamekeeper", map = 1455, x = 63.59, y = 24.66, f = "e" },
					{ t = "accept", quest = 9322, title = "Wild Fires in Kalimdor", npc = 16788, npcName = "Festival Flamekeeper", map = 1455, x = 63.59, y = 24.66, f = "e" },
					{ t = "accept", quest = 9319, title = "A Light in Dark Places", npc = 16788, npcName = "Festival Flamekeeper", map = 1455, x = 63.59, y = 24.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9367, title = "The Festival of Fire", note = "Touch the Flame of Ironforge", map = 1455, x = 64.24, y = 25.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9389, title = "Flickering Flames in the Eastern Kingdoms", note = "Touch the Flame of the Wetlands", map = 1437, x = 51.19, y = 16.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9323, title = "Wild Fires in the Eastern Kingdoms", note = "Touch the Flame of the Hinterlands", map = 1425, x = 62.03, y = 53.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9389, title = "Flickering Flames in the Eastern Kingdoms", note = "Touch the Flame of Hillsbrad", map = 1424, x = 54.48, y = 33.89, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9389, title = "Flickering Flames in the Eastern Kingdoms", note = "Touch the Flame of Silverpine", map = 1421, x = 54.11, y = 69.74, f = "e" },
				},
			},
			{
				note = "This step requires you to enter the opposing faction's capital city If skipped, you will not be able to complete this quest or the \"A Thief's Reward\" quest.",
				goals = {
					{ t = "accept", quest = 9326, title = "Stealing the Undercity's Flame", map = 1458, x = 66.05, y = 36.31, f = "e" },
				},
			},
			{
				note = "Inside The Viewing Room with Marduk Blackpool and Vectus. You will need The Key to Scholomance to enter the dungeon. You will also need the Viewing Room Key dropped by Rattlegore to enter the Viewing Room. You can also have another player let you in. If skipped, you will not be able to complete the \"A Light in Dark Places\" quest.",
				goals = {
					{ t = "complete", quest = 9319, title = "A Light in Dark Places", note = "Touch the Flame of Scholomance", map = 1415, x = 52.75, y = 26.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9323, title = "Wild Fires in the Eastern Kingdoms", note = "Touch the Flame of the Plaguelands", map = 1423, x = 50.09, y = 61.55, f = "e" },
				},
			},
			{
				note = "On the live side, just before entering the Scarlet Crusade compound. If skipped, you will not be able to complete the \"A Light in Dark Places\" quest.",
				goals = {
					{ t = "complete", quest = 9319, title = "A Light in Dark Places", note = "Touch the Flame of Stratholme", map = 1415, x = 55.12, y = 17.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9323, title = "Wild Fires in the Eastern Kingdoms", note = "Touch the Flame of Searing Gorge", map = 1427, x = 33.05, y = 73.03, f = "e" },
				},
			},
			{
				note = "Inside Lower Blackrock Spire on Urok Doomhowl's platform. If skipped, you will not be able to complete the \"A Light in Dark Places\" quest.",
				goals = {
					{ t = "goto", text = "Enter Blackrock Mountain", map = 1427, x = 34.75, y = 84.02 },
					{ t = "goto", text = "Run up the chain", map = 1415, x = 48.74, y = 63.79 },
					{ t = "goto", text = "Jump down", map = 1415, x = 48.77, y = 63.67 },
					{ t = "goto", text = "Jump down", map = 1415, x = 48.89, y = 63.87 },
					{ t = "complete", quest = 9319, title = "A Light in Dark Places", note = "Touch the Flame of Blackrock Spire", map = 1415, x = 48.95, y = 63.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9367, title = "The Festival of Fire", note = "Touch the Flame of Stormwind", map = 1453, x = 49.73, y = 71.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9389, title = "Flickering Flames in the Eastern Kingdoms", note = "Touch the Flame of Westfall", map = 1436, x = 33.99, y = 80.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9323, title = "Wild Fires in the Eastern Kingdoms", note = "Touch the Flame of the Blasted Lands", map = 1419, x = 54.01, y = 31.28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Wait for the boat", map = 1434, x = 25.85, y = 73.11 },
					{ t = "complete", quest = 9388, title = "Flickering Flames in Kalimdor", note = "Ride the Boat to Ratchet", map = 1413, x = 63.63, y = 38.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9388, title = "Flickering Flames in Kalimdor", note = "Touch the Flame of the Barrens", map = 1413, x = 59.82, y = 39.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9322, title = "Wild Fires in Kalimdor", note = "Touch the Flame of Un'Goro", map = 1449, x = 70.34, y = 75.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9322, title = "Wild Fires in Kalimdor", note = "Touch the Flame of Silithus", map = 1451, x = 78.08, y = 18.9, f = "e" },
				},
			},
			{
				note = "Inside Dire Maul North, at the top of the staircase following Guard Slip'kik. You will need the Crescent Key from Dire Maul East to enter the dungeon. You can also have another player let you in. If skipped, you will not be able to complete the \"A Light in Dark Places\" quest.",
				goals = {
					{ t = "complete", quest = 9319, title = "A Light in Dark Places", note = "Touch the Flame of Dire Maul", map = 1414, x = 43.39, y = 66.52, f = "e" },
				},
			},
			{
				note = "This step requires you to enter the opposing faction's capital city If skipped, you will not be able to complete this quest or the \"A Thief's Reward\" quest.",
				goals = {
					{ t = "accept", quest = 9325, title = "Stealing Thunder Bluff's Flame", map = 1456, x = 21.3, y = 26.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9388, title = "Flickering Flames in Kalimdor", note = "Touch the Flame of Stonetalon", map = 1442, x = 59.54, y = 72.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9388, title = "Flickering Flames in Kalimdor", note = "Touch the Flame of Ashenvale", map = 1440, x = 64.75, y = 71.61, f = "e" },
				},
			},
			{
				note = "This step requires you to enter the opposing faction's capital city If skipped, you will not be able to complete this quest or the \"A Thief's Reward\" quest.",
				goals = {
					{ t = "accept", quest = 9324, title = "Stealing Orgrimmar's Flame", map = 1454, x = 42.32, y = 34.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9322, title = "Wild Fires in Kalimdor", note = "Touch the Flame of Azshara", map = 1447, x = 41.44, y = 43.07, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9322, title = "Wild Fires in Kalimdor", note = "Touch the Flame of Winterspring", map = 1452, x = 30.72, y = 43.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9388, title = "Flickering Flames in Kalimdor", note = "Touch the Flame of Darkshore", map = 1439, x = 41.54, y = 90.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9367, title = "The Festival of Fire", note = "Touch the Flame of Darnassus", map = 1438, x = 56.63, y = 92.32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9367, title = "The Festival of Fire", npc = 16817, npcName = "Festival Loremaster", map = 1438, x = 56.58, y = 92.29, f = "e" },
					{ t = "turnin", quest = 9325, title = "Stealing Thunder Bluff's Flame", npc = 16817, npcName = "Festival Loremaster", map = 1438, x = 56.58, y = 92.29, f = "e" },
					{ t = "turnin", quest = 9324, title = "Stealing Orgrimmar's Flame", npc = 16817, npcName = "Festival Loremaster", map = 1438, x = 56.58, y = 92.29, f = "e" },
					{ t = "turnin", quest = 9326, title = "Stealing the Undercity's Flame", npc = 16817, npcName = "Festival Loremaster", map = 1438, x = 56.58, y = 92.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9365, title = "A Thief's Reward", npc = 16818, npcName = "Festival Talespinner", map = 1438, x = 56.58, y = 92.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9389, title = "Flickering Flames in the Eastern Kingdoms", npc = 16788, npcName = "Festival Flamekeeper", map = 1438, x = 56.55, y = 91.98, f = "e" },
					{ t = "turnin", quest = 9388, title = "Flickering Flames in Kalimdor", npc = 16788, npcName = "Festival Flamekeeper", map = 1438, x = 56.55, y = 91.98, f = "e" },
					{ t = "turnin", quest = 9323, title = "Wild Fires in the Eastern Kingdoms", npc = 16788, npcName = "Festival Flamekeeper", map = 1438, x = 56.55, y = 91.98, f = "e" },
					{ t = "turnin", quest = 9322, title = "Wild Fires in Kalimdor", npc = 16788, npcName = "Festival Flamekeeper", map = 1438, x = 56.55, y = 91.98, f = "e" },
					{ t = "turnin", quest = 9319, title = "A Light in Dark Places", npc = 16788, npcName = "Festival Flamekeeper", map = 1438, x = 56.55, y = 91.98, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/h-childrens-week-main-questline",
		pack = "guides",
		title = "Children's Week Main Questline",
		category = "Events",
		folder = "Children's Week",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 172, title = "Children's Week", npc = 14451, npcName = "Orphan Matron Battlewail", map = 1454, x = 70.72, y = 25.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 18597, itemName = "Orcish Orphan Whistle" },
					{ t = "turnin", quest = 172, title = "Children's Week", npc = 14444, npcName = "Orcish Orphan", map = 1454, x = 70.9, y = 25.6, f = "e" },
					{ t = "accept", quest = 1800, title = "Lordaeron Throne Room", npc = 14444, npcName = "Orcish Orphan", map = 1454, x = 70.9, y = 25.6, f = "e" },
					{ t = "accept", quest = 910, title = "Down at the Docks", npc = 14444, npcName = "Orcish Orphan", map = 1454, x = 70.9, y = 25.6, f = "e" },
					{ t = "accept", quest = 911, title = "Gateway to the Frontier", npc = 14444, npcName = "Orcish Orphan", map = 1454, x = 70.9, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 18597, itemName = "Orcish Orphan Whistle" },
					{ t = "complete", quest = 910, title = "Down at the Docks", note = "Go to the Docks of Ratchet in The Barrens", map = 1413, x = 62.99, y = 38.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 18597, itemName = "Orcish Orphan Whistle" },
					{ t = "complete", quest = 911, title = "Gateway to the Frontier", note = "Go to the Mor'shan Rampart in The Barrens", map = 1413, x = 47.84, y = 5.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 18597, itemName = "Orcish Orphan Whistle" },
					{ t = "complete", quest = 1800, title = "Lordaeron Throne Room", note = "Go to the Old Lordaeron Throne Room", map = 1458, x = 66.02, y = 36.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 18597, itemName = "Orcish Orphan Whistle" },
					{ t = "turnin", quest = 1800, title = "Lordaeron Throne Room", npc = 14444, npcName = "Orcish Orphan", map = 1454, x = 70.9, y = 25.6, f = "e" },
					{ t = "turnin", quest = 910, title = "Down at the Docks", npc = 14444, npcName = "Orcish Orphan", map = 1454, x = 70.9, y = 25.6, f = "e" },
					{ t = "turnin", quest = 911, title = "Gateway to the Frontier", npc = 14444, npcName = "Orcish Orphan", map = 1454, x = 70.9, y = 25.6, f = "e" },
					{ t = "accept", quest = 915, title = "You Scream, I Scream...", npc = 14444, npcName = "Orcish Orphan", map = 1454, x = 70.9, y = 25.6, f = "e" },
					{ t = "accept", quest = 925, title = "Cairne's Hoofprint", npc = 14444, npcName = "Orcish Orphan", map = 1454, x = 70.9, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 7228, itemName = "Tigule and Foror's Strawberry Ice Cream", map = 1454, x = 52.23, y = 69.06, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 925, item = 18643, itemName = "Cairne's Hoofprint", map = 1456, x = 60.26, y = 51.69, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 18597, itemName = "Orcish Orphan Whistle" },
					{ t = "turnin", quest = 915, title = "You Scream, I Scream...", npc = 14444, npcName = "Orcish Orphan", map = 1454, x = 70.9, y = 25.6, f = "e" },
					{ t = "turnin", quest = 925, title = "Cairne's Hoofprint", npc = 14444, npcName = "Orcish Orphan", map = 1454, x = 70.9, y = 25.6, f = "e" },
					{ t = "accept", quest = 5502, title = "A Warden of the Horde", npc = 14444, npcName = "Orcish Orphan", map = 1454, x = 70.9, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5502, title = "A Warden of the Horde", npc = 14451, npcName = "Orphan Matron Battlewail", map = 1454, x = 70.72, y = 25.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/h-sayges-fortunes-elwynn-forest",
		pack = "guides",
		title = "Sayge's Fortunes (Elwynn Forest)",
		category = "Events",
		folder = "Darkmoon Faire",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1429,
		version = 1,
		steps = {
			{
				label = "Agility_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Agility\" Buff", map = 1429, x = 42.12, y = 69.0 },
				},
			},
			{
				label = "Intelligence_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Intelligence\" Buff", map = 1429, x = 42.12, y = 69.0 },
				},
			},
			{
				label = "Spirit_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Spirit\" Buff", map = 1429, x = 42.12, y = 69.0 },
				},
			},
			{
				label = "Stamina_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Stamina\" Buff", map = 1429, x = 42.12, y = 69.0 },
				},
			},
			{
				label = "Strength_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Strength\" Buff", map = 1429, x = 42.12, y = 69.0 },
				},
			},
			{
				label = "Armor_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Armor\" Buff", map = 1429, x = 42.12, y = 69.0 },
				},
			},
			{
				label = "Resistance_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Resistance\" Buff", map = 1429, x = 42.12, y = 69.0 },
				},
			},
			{
				label = "Damage_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Damage\" Buff", map = 1429, x = 42.12, y = 69.0 },
				},
			},
			{
				label = "Use_Darkmoon_Faire_Fortune",
				goals = {
					{ t = "collect", item = 19422, itemName = "Darkmoon Faire Fortune", map = 1429, x = 42.12, y = 69.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 19422, itemName = "Darkmoon Faire Fortune" },
				},
			},
			{
				label = "Fortune_Awaits_Eastvale",
				goals = {
					{ t = "accept", quest = 7937, title = "Your Fortune Awaits You..." },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7937, title = "Your Fortune Awaits You...", map = 1429, x = 84.79, y = 64.37, f = "e" },
				},
			},
			{
				label = "Fortune_Awaits_Deadmines",
				goals = {
					{ t = "accept", quest = 7938, title = "Your Fortune Awaits You..." },
				},
			},
			{
				note = "Just inside The Deadmines instance before you reach the first Miner. It may take a minute or two to appear.",
				goals = {
					{ t = "turnin", quest = 7938, title = "Your Fortune Awaits You..." },
				},
			},
			{
				label = "Fortune_Awaits_Wailing_Caverns",
				goals = {
					{ t = "accept", quest = 7944, title = "Your Fortune Awaits You..." },
				},
			},
			{
				note = "Just inside the Wailing Caverns instance after the Disciple of Naralex. It may take a minute or two to appear.",
				goals = {
					{ t = "turnin", quest = 7944, title = "Your Fortune Awaits You..." },
				},
			},
			{
				label = "Fortune_Awaits_Palemane_Rock",
				goals = {
					{ t = "accept", quest = 7945, title = "Your Fortune Awaits You..." },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7945, title = "Your Fortune Awaits You...", map = 1412, x = 36.22, y = 64.55, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/h-chronos-turn-ins-elwynn-forest",
		pack = "guides",
		title = "Chronos Turn-Ins (Elwynn Forest)",
		category = "Events",
		folder = "Darkmoon Faire",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1429,
		version = 1,
		steps = {
			{
				note = "Create them with Leatherworking or purchase them from the Auction House. Each turnin requires 3 Embossed Leather Boots and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 1 Darkmoon Faire Prize Ticket. You can turn this quest in until you reach 500 Neutral reputation.",
				goals = {
					{ t = "collect", item = 2309, itemName = "Embossed Leather Boots", count = 3 },
					{ t = "accept", quest = 7881, title = "Carnival Boots", npc = 14833, npcName = "Chronos", map = 1429, x = 43.57, y = 70.86, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				note = "Create them with Leatherworking or purchase them from the Auction House. Each turnin requires 3 Toughened Leather Armors and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 4 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 1,100 Neutral reputation.",
				goals = {
					{ t = "collect", item = 2314, itemName = "Toughened Leather Armor", count = 3 },
					{ t = "accept", quest = 7882, title = "Carnival Jerkins", npc = 14833, npcName = "Chronos", map = 1429, x = 43.57, y = 70.86, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 20 },
				},
			},
			{
				note = "Create them with Leatherworking or purchase them from the Auction House. Each turnin requires 3 Barbaric Harnesses and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 8 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 1,700 Neutral reputation.",
				goals = {
					{ t = "collect", item = 5739, itemName = "Barbaric Harness", count = 3 },
					{ t = "accept", quest = 7883, title = "The World's Largest Gnome!", npc = 14833, npcName = "Chronos", map = 1429, x = 43.57, y = 70.86, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 30 },
				},
			},
			{
				note = "Create them with Leatherworking or purchase them from the Auction House. Each turnin requires 1 Turtle Scale Leggings and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 12 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 2,500 Neutral reputation.",
				goals = {
					{ t = "collect", item = 8185, itemName = "Turtle Scale Leggings" },
					{ t = "accept", quest = 7884, title = "Crocolisk Boy and the Bearded Murloc", npc = 14833, npcName = "Chronos", map = 1429, x = 43.57, y = 70.86, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "Create them with Leatherworking or purchase them from the Auction House.",
				goals = {
					{ t = "collect", quest = 7885, item = 15564, itemName = "Rugged Armor Kit", count = 8 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7885, title = "Armor Kits", npc = 14833, npcName = "Chronos", map = 1429, x = 43.57, y = 70.86, f = "e" },
				},
			},
			{
				note = "Create them with Leatherworking or purchase them from the Auction House. From this point on, you can continue turning in Rugged Armor Kits. Each of these turnins will award 20 Darkmoon Faire Prize Tickets. Each turnin requires 8 Rugged Armor Kits and grants 100 reputation with the Darkmoon Faire.",
				goals = {
					{ t = "collect", item = 15564, itemName = "Rugged Armor Kit", count = 8 },
					{ t = "accept", quest = 7941, title = "More Armor Kits", npc = 14833, npcName = "Chronos", map = 1429, x = 43.57, y = 70.86, f = "e" },
				},
			},
		},
	})
end

