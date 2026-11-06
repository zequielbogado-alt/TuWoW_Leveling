-- TuWoW_Leveling — Guides/Events_03.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/events/a-feast-of-winter-veil-quest",
		pack = "guides",
		title = "Feast of Winter Veil Quest",
		category = "Events",
		folder = "Feast of Winter Veil",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1455,
		version = 1,
		steps = {
			{
				note = "You must be at least this level to be able to accept the quest. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7062, title = "The Reason for the Season", npc = 1365, npcName = "Goli Krumn", map = 1455, x = 31.86, y = 62.46, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 7062, title = "The Reason for the Season", npc = 2916, npcName = "Historian Karnik", map = 1455, x = 77.54, y = 11.82, f = "e" },
					{ t = "accept", quest = 7063, title = "The Feast of Winter Veil", npc = 2916, npcName = "Historian Karnik", map = 1455, x = 77.54, y = 11.82, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1455, x = 44.6, y = 49.49 },
					{ t = "turnin", quest = 7063, title = "The Feast of Winter Veil", npc = 2784, npcName = "King Magni Bronzebeard", map = 1455, x = 39.09, y = 56.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7022, title = "Greatfather Winter is Here!", npc = 13433, npcName = "Wulmort Jinglepocket", map = 1455, x = 33.7, y = 67.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7022, title = "Greatfather Winter is Here!", npc = 13444, npcName = "Greatfather Winter", map = 1455, x = 33.2, y = 65.41, f = "e" },
					{ t = "accept", quest = 7025, title = "Treats for Greatfather Winter", npc = 13444, npcName = "Greatfather Winter", map = 1455, x = 33.2, y = 65.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1455, x = 57.5, y = 37.46 },
					{ t = "goto", text = "Enter the building", map = 1455, x = 59.41, y = 37.77 },
					{ t = "skill", level = 75, skill = "Cooking" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 17200, itemName = "Recipe: Gingerbread Cookie", map = 1455, x = 33.7, y = 67.2, f = "e" },
					{ t = "use", item = 17200, itemName = "Recipe: Gingerbread Cookie" },
					{ t = "goto", text = "learn Gingerbread Cookie##21143", map = 1455, x = 33.7, y = 67.23 },
				},
			},
			{
				note = "Search the guide menu and use the farming guide to accomplish this. You can also buy them from the Auction House.",
				goals = {
					{ t = "collect", quest = 7025, item = 6889, itemName = "Small Egg", count = 5 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 17194, itemName = "Holiday Spices", count = 5, map = 1455, x = 33.7, y = 67.23, f = "e" },
				},
			},
			{
				note = "Stand next to the Dwarven Brazier.",
				goals = {
					{ t = "collect", quest = 7025, item = 17197, itemName = "Gingerbread Cookie", count = 5, oi = 1, map = 1455, x = 21.27, y = 54.86, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 20.63, y = 53.23 },
					{ t = "buy", item = 1179, itemName = "Ice Cold Milk", map = 1455, x = 18.64, y = 51.76, f = "e" },
				},
			},
			{
				note = "After you turn in this quest, you can then repeat it to get more gifts to open.",
				goals = {
					{ t = "turnin", quest = 7025, title = "Treats for Greatfather Winter", npc = 13444, npcName = "Greatfather Winter", map = 1455, x = 33.2, y = 65.41, f = "e" },
				},
			},
			{
				note = "You must be at least this level to be able to accept the quest. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 30 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7042, title = "Stolen Winter Veil Treats", npc = 13433, npcName = "Wulmort Jinglepocket", map = 1455, x = 33.7, y = 67.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1424, x = 47.0, y = 26.73 },
					{ t = "goto", text = "Follow the path", map = 1416, x = 41.83, y = 77.11 },
					{ t = "turnin", quest = 7042, title = "Stolen Winter Veil Treats", npc = 13636, npcName = "Strange Snowman", map = 1416, x = 35.44, y = 72.46, f = "e" },
					{ t = "accept", quest = 7043, title = "You're a Mean One...", npc = 13636, npcName = "Strange Snowman", map = 1416, x = 35.44, y = 72.46, f = "e" },
				},
			},
			{
				note = "He looks like a level 36 elite yeti. If you have trouble, try to find someone to help you. He can spawn in random places around the \"Growless Cave\" area. When he spawns, you will see a red yelled message in your chat. Just wait around nearby in this area until he spawns.",
				goals = {
					{ t = "collect", quest = 7043, item = 17662, itemName = "Stolen Treats", oi = 1, map = 1416, x = 40.8, y = 67.77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7043, title = "You're a Mean One...", npc = 13433, npcName = "Wulmort Jinglepocket", map = 1455, x = 33.7, y = 67.23, f = "e" },
					{ t = "accept", quest = 7045, title = "A Smokywood Pastures' Thank You!", npc = 13433, npcName = "Wulmort Jinglepocket", map = 1455, x = 33.7, y = 67.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7045, title = "A Smokywood Pastures' Thank You!", npc = 13444, npcName = "Greatfather Winter", map = 1455, x = 33.2, y = 65.41, f = "e" },
				},
			},
			{
				note = "You must be at least this level to be able to accept the quest. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8762, title = "Metzen the Reindeer", npc = 13433, npcName = "Wulmort Jinglepocket", map = 1455, x = 33.7, y = 67.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21315, itemName = "Smokywood Satchel" },
					{ t = "collect", quest = 8762, item = 21211, itemName = "Pouch of Reindeer Dust", oi = 2 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the tunnel", map = 1446, x = 68.61, y = 41.45 },
					{ t = "goto", text = "Leave the tunnel", map = 1446, x = 69.81, y = 42.48 },
					{ t = "goto", text = "Follow the path", map = 1446, x = 73.18, y = 45.56 },
					{ t = "complete", quest = 8762, title = "Metzen the Reindeer", note = "Find Metzen the Reindeer and Rescue Him", map = 1446, x = 73.35, y = 48.07, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8762, title = "Metzen the Reindeer", npc = 13433, npcName = "Wulmort Jinglepocket", map = 1455, x = 33.7, y = 67.23, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/a-lunar-festival-main-questline",
		pack = "guides",
		title = "Lunar Festival Main Questline",
		category = "Events",
		folder = "Lunar Festival",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1455,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 8870, title = "The Lunar Festival", npc = 15892, npcName = "Lunar Festival Emissary", map = 1455, x = 30.9, y = 61.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8870, title = "The Lunar Festival", npc = 15895, npcName = "Lunar Festival Harbinger", map = 1455, x = 28.8, y = 16.2, f = "e" },
					{ t = "accept", quest = 8867, title = "Lunar Fireworks", npc = 15895, npcName = "Lunar Festival Harbinger", map = 1455, x = 28.8, y = 16.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 21558, itemName = "Small Blue Rocket", count = 8, map = 1455, x = 29.9, y = 14.2, f = "e" },
					{ t = "buy", item = 21571, itemName = "Blue Rocket Cluster", count = 2, map = 1455, x = 29.9, y = 14.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21558, itemName = "Small Blue Rocket" },
					{ t = "complete", quest = 8867, title = "Lunar Fireworks", note = "Fire #8# Lunar Fireworks", map = 1455, x = 30.6, y = 17.8, f = "e" },
				},
			},
			{
				label = "Fire_Lunar_Fireworks_Clusters",
				along = true,
				goals = {
					{ t = "use", item = 21571, itemName = "Blue Rocket Cluster" },
					{ t = "complete", quest = 8867, title = "Lunar Fireworks", note = "Fire #2# Lunar Fireworks Clusters", map = 1455, x = 30.6, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8867, title = "Lunar Fireworks", npc = 15895, npcName = "Lunar Festival Harbinger", map = 1455, x = 28.9, y = 16.2, f = "e" },
					{ t = "accept", quest = 8883, title = "Valadar Starsong", npc = 15895, npcName = "Lunar Festival Harbinger", map = 1455, x = 28.9, y = 16.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21711, itemName = "Lunar Festival Invitation", map = 1455, x = 30.6, y = 17.8, f = "e" },
					{ t = "complete", quest = 8883, title = "Valadar Starsong", note = "Use the Lunar Festival Invitation While Standing in the Beam of Light" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8883, title = "Valadar Starsong", npc = 15864, npcName = "Valadar Starsong", map = 1450, x = 53.65, y = 35.26, f = "e" },
				},
			},
			{
				note = "These are awarded by talking to elders around Kalimdor and Eastern Kingdoms. Use the \"Lunar Festival Optimized Elders Path\" event guide to collect them.",
				goals = {
					{ t = "collect", item = 21100, itemName = "Coin of Ancestry", count = 16 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8864, title = "Festive Lunar Dresses", npc = 15864, npcName = "Valadar Starsong", map = 1450, x = 53.65, y = 35.26, f = "e" },
					{ t = "accept", quest = 8865, title = "Festive Lunar Pant Suits", npc = 15864, npcName = "Valadar Starsong", map = 1450, x = 53.65, y = 35.26, f = "e" },
					{ t = "accept", quest = 8863, title = "Festival Dumplings", npc = 15864, npcName = "Valadar Starsong", map = 1450, x = 53.65, y = 35.26, f = "e" },
					{ t = "accept", quest = 8862, title = "Elune's Candle", npc = 15864, npcName = "Valadar Starsong", map = 1450, x = 53.65, y = 35.26, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/a-lunar-festival-optimized-elders-path",
		pack = "guides",
		title = "Lunar Festival Optimized Elders Path",
		category = "Events",
		folder = "Lunar Festival",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1422,
		version = 1,
		steps = {
			{
				note = "Upstairs on the outer wall of the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1422, x = 68.61, y = 80.1 },
					{ t = "goto", text = "Run up the stairs", map = 1422, x = 69.94, y = 74.03 },
					{ t = "goto", text = "Enter the building", map = 1415, x = 52.79, y = 26.43 },
					{ t = "goto", text = "Run up the stairs", map = 1415, x = 52.73, y = 26.29 },
					{ t = "goto", text = "Run up the stairs", map = 1415, x = 52.69, y = 26.31 },
					{ t = "accept", quest = 8714, title = "Moonstrike the Elder", npc = 15594, npcName = "Elder Moonstrike", map = 1415, x = 52.72, y = 26.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Jump down here", map = 1415, x = 52.7, y = 26.44 },
					{ t = "goto", text = "Jump Off the Wall", map = 1422, x = 68.75, y = 73.57 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8722, title = "Meadowrun the Elder", npc = 15602, npcName = "Elder Meadowrun", map = 1422, x = 65.97, y = 47.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8652, title = "Graveborn the Elder", npc = 15568, npcName = "Elder Graveborn", map = 1420, x = 61.87, y = 53.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8648, title = "Darkcore the Elder", npc = 15564, npcName = "Elder Darkcore", map = 1458, x = 66.63, y = 38.22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8645, title = "Obsidian the Elder", npc = 15561, npcName = "Elder Obsidian", map = 1421, x = 44.97, y = 41.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8650, title = "Snowcrown the Elder", npc = 15566, npcName = "Elder Snowcrown", map = 1423, x = 71.69, y = 50.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 8688, title = "Windrun the Elder", npc = 15592, npcName = "Elder Windrun", map = 1423, x = 34.06, y = 64.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8643, title = "Highpeak the Elder", npc = 15559, npcName = "Elder Highpeak", map = 1425, x = 50.0, y = 48.05, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8642, title = "Silvervein the Elder", npc = 15558, npcName = "Elder Silvervein", map = 1432, x = 33.33, y = 46.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8866, title = "Bronzebeard the Elder", npc = 15871, npcName = "Elder Bronzebeard", map = 1455, x = 29.19, y = 17.06, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8653, title = "Goldwell the Elder", npc = 15569, npcName = "Elder Goldwell", map = 1426, x = 46.82, y = 51.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8651, title = "Ironband the Elder", npc = 15567, npcName = "Elder Ironband", map = 1427, x = 21.29, y = 79.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8683, title = "Dawnstrider the Elder", npc = 15585, npcName = "Elder Dawnstrider", map = 1428, x = 64.45, y = 24.06, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1428, x = 76.12, y = 38.03 },
					{ t = "accept", quest = 8636, title = "Rumblerock the Elder", npc = 15557, npcName = "Elder Rumblerock", map = 1428, x = 82.2, y = 46.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8646, title = "Hammershout the Elder", npc = 15562, npcName = "Elder Hammershout", map = 1453, x = 36.27, y = 66.15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8649, title = "Stormbrow the Elder", npc = 15565, npcName = "Elder Stormbrow", map = 1429, x = 39.79, y = 63.67, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				goals = {
					{ t = "accept", quest = 8675, title = "Skychaser the Elder", npc = 15577, npcName = "Elder Skychaser", map = 1436, x = 56.63, y = 47.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8647, title = "Bellowrage the Elder", npc = 15563, npcName = "Elder Bellowrage", map = 1419, x = 58.75, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8716, title = "Starglade the Elder", npc = 15596, npcName = "Elder Starglade", map = 1434, x = 53.12, y = 18.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8674, title = "Winterhoof the Elder", npc = 15576, npcName = "Elder Winterhoof", map = 1434, x = 27.62, y = 74.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8680, title = "Windtotem the Elder", npc = 15582, npcName = "Elder Windtotem", map = 1413, x = 62.65, y = 36.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8670, title = "Runetotem the Elder", npc = 15572, npcName = "Elder Runetotem", map = 1411, x = 53.24, y = 43.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8677, title = "Darkhorn the Elder", npc = 15579, npcName = "Elder Darkhorn", map = 1454, x = 41.11, y = 33.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8717, title = "Moonwarden the Elder", npc = 15597, npcName = "Elder Moonwarden", map = 1413, x = 51.4, y = 30.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8686, title = "High Mountain the Elder", npc = 15588, npcName = "Elder High Mountain", map = 1413, x = 45.11, y = 57.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8673, title = "Bloodhoof the Elder", npc = 15575, npcName = "Elder Bloodhoof", map = 1412, x = 47.41, y = 57.76, f = "e" },
				},
			},
			{
				note = "On Elder Rise.",
				goals = {
					{ t = "goto", text = "Ride the elevator up", map = 1456, x = 31.75, y = 65.87 },
					{ t = "accept", quest = 8678, title = "Proudhorn the Elder", npc = 15580, npcName = "Elder Proudhorn", map = 1456, x = 72.99, y = 23.37, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Ride the elevator up", map = 1441, x = 46.71, y = 48.25 },
					{ t = "accept", quest = 8682, title = "Skyseer the Elder", npc = 15584, npcName = "Elder Skyseer", map = 1441, x = 45.42, y = 50.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8724, title = "Morningdew the Elder", npc = 15604, npcName = "Elder Morningdew", map = 1441, x = 79.2, y = 77.05, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8684, title = "Dreamseer the Elder", npc = 15586, npcName = "Elder Dreamseer", map = 1446, x = 51.47, y = 27.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8671, title = "Ragetotem the Elder", npc = 15573, npcName = "Elder Ragetotem", map = 1446, x = 36.3, y = 80.54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8681, title = "Thunderhorn the Elder", npc = 15583, npcName = "Elder Thunderhorn", map = 1449, x = 50.37, y = 76.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8719, title = "Bladesing the Elder", npc = 15599, npcName = "Elder Bladesing", map = 1451, x = 48.97, y = 37.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8654, title = "Primestone the Elder", npc = 15570, npcName = "Elder Primestone", map = 1451, x = 23.08, y = 11.84, f = "e" },
				},
			},
			{
				note = "In the pit.",
				goals = {
					{ t = "accept", quest = 8685, title = "Mistwalker the Elder", npc = 15587, npcName = "Elder Mistwalker", map = 1444, x = 62.56, y = 31.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8679, title = "Grimtotem the Elder", npc = 15581, npcName = "Elder Grimtotem", map = 1444, x = 76.71, y = 37.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8720, title = "Skygleam the Elder", npc = 15600, npcName = "Elder Skygleam", map = 1447, x = 72.53, y = 85.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8672, title = "Stonespire the Elder", npc = 15574, npcName = "Elder Stonespire", map = 1452, x = 61.45, y = 37.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8726, title = "Brightspear the Elder", npc = 15606, npcName = "Elder Brightspear", map = 1452, x = 55.62, y = 43.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8723, title = "Nightwind the Elder", npc = 15603, npcName = "Elder Nightwind", map = 1448, x = 37.72, y = 53.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8725, title = "Riversong the Elder", npc = 15605, npcName = "Elder Riversong", map = 1440, x = 35.55, y = 48.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8721, title = "Starweave the Elder", npc = 15601, npcName = "Elder Starweave", map = 1439, x = 36.81, y = 46.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8718, title = "Bladeswift the Elder", npc = 15598, npcName = "Elder Bladeswift", map = 1457, x = 33.47, y = 14.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8715, title = "Bladeleaf the Elder", npc = 15595, npcName = "Elder Bladeleaf", map = 1438, x = 57.33, y = 60.79, f = "e" },
				},
			},
			{
				note = "She is located inside Zul'Farak near the pool that spawns Gaz'Rilla. You will need to run this dungeon with a group.",
				goals = {
					{ t = "accept", quest = 8676, title = "Wildmane the Elder", npc = 15578, npcName = "Elder Wildmane" },
				},
			},
			{
				note = "He is located inside Mauradon near the east exit after beyond Rotgrip. He is at the top of a path at the end of the tunnel. You will need to run this dungeon with a group.",
				goals = {
					{ t = "accept", quest = 8635, title = "Splitrock the Elder", npc = 15556, npcName = "Elder Splitrock" },
				},
			},
			{
				note = "Take the path on the left after entering Sunken Temple. Go up the spiral staircase and go left again to the large round room. The elder is in the rear of the alcove on the left. You will need to run this dungeon with a group.",
				goals = {
					{ t = "accept", quest = 8713, title = "Starsong the Elder", npc = 15593, npcName = "Elder Starsong" },
				},
			},
			{
				note = "He is located in the middle of the Ring of Law in Blackrock Depths. Talking to him will start the event. You will need to run this dungeon with a group.",
				goals = {
					{ t = "accept", quest = 8619, title = "Morndeep the Elder", npc = 15549, npcName = "Elder Morndeep" },
				},
			},
			{
				note = "He is located on the left side after crossing the first rope brige in Hordemar City on the way to Omokk in Lower Blackrock Spire. You will need to run this dungeon with a group.",
				goals = {
					{ t = "accept", quest = 8644, title = "Stonefort the Elder", npc = 15560, npcName = "Elder Stonefort" },
				},
			},
			{
				note = "He is located in Stratholme on the Service Entrance (Scarlet) side. Go left after entering the instance and through the plague rat gate and he will be on the right side. You will need to run this dungeon with a group.",
				goals = {
					{ t = "accept", quest = 8727, title = "Farwhisper the Elder", npc = 15607, npcName = "Elder Farwhisper" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/a-love-is-in-the-air-quests",
		pack = "guides",
		title = "Love is in the Air Quests",
		category = "Events",
		folder = "Love is in the Air",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 8903, title = "Dangerous Love", npc = 16105, npcName = "Aristan Mottar", map = 1453, x = 61.92, y = 74.96, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 21815, itemName = "Love Token", map = 1453, x = 60.39, y = 75.27, f = "e" },
					{ t = "buy", item = 21833, itemName = "Cologne Bottle", map = 1453, x = 60.39, y = 75.27, f = "e" },
					{ t = "buy", item = 21829, itemName = "Perfume Bottle", map = 1453, x = 60.39, y = 75.27, f = "e" },
				},
			},
			{
				note = "Perfume allows you to give Love Tokens to male NPCs. Cologne allows you to give Love Tokens to female NPCs.",
				goals = {
					{ t = "use", item = 21833, itemName = "Cologne Bottle" },
					{ t = "use", item = 21829, itemName = "Perfume Bottle" },
					{ t = "complete", quest = 8903, title = "Dangerous Love", note = "Apply Perfume or Cologne" },
				},
			},
			{
				note = "Talk to those with a heart above their head.",
				goals = {
					{ t = "use", item = 21975, itemName = "Pledge of Adoration: Stormwind" },
					{ t = "use", item = 22178, itemName = "Pledge of Friendship: Stormwind" },
					{ t = "collect", quest = 8903, item = 22143, itemName = "Stormwind Guard's Card" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8903, title = "Dangerous Love", npc = 16105, npcName = "Aristan Mottar", map = 1453, x = 61.92, y = 74.96, f = "e" },
					{ t = "accept", quest = 9024, title = "Aristan's Hunch", npc = 16105, npcName = "Aristan Mottar", map = 1453, x = 61.92, y = 74.96, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 9024, title = "Aristan's Hunch", npc = 279, npcName = "Morgan Pestle", map = 1453, x = 63.16, y = 74.41, f = "e" },
					{ t = "accept", quest = 9025, title = "Morgan's Discovery", npc = 279, npcName = "Morgan Pestle", map = 1453, x = 63.16, y = 74.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9025, title = "Morgan's Discovery", npc = 16105, npcName = "Aristan Mottar", map = 1453, x = 61.92, y = 74.96, f = "e" },
					{ t = "accept", quest = 9026, title = "Tracing the Source", npc = 16105, npcName = "Aristan Mottar", map = 1453, x = 61.92, y = 74.96, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 9026, title = "Tracing the Source", npc = 6740, npcName = "Innkeeper Allison", map = 1453, x = 60.39, y = 75.27, f = "e" },
					{ t = "accept", quest = 9027, title = "Tracing the Source", npc = 6740, npcName = "Innkeeper Allison", map = 1453, x = 60.39, y = 75.27, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 9027, title = "Tracing the Source", npc = 16106, npcName = "Evert Sorisam", map = 1453, x = 50.5, y = 60.78, f = "e" },
					{ t = "accept", quest = 9028, title = "The Source Revealed", npc = 16106, npcName = "Evert Sorisam", map = 1453, x = 50.5, y = 60.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1424, x = 75.5, y = 24.0 },
					{ t = "goto", text = "Enter the cave", map = 1424, x = 77.7, y = 19.4 },
					{ t = "goto", text = "Run up the hill", map = 1416, x = 84.3, y = 84.3 },
					{ t = "goto", text = "Follow the path up", map = 1416, x = 86.1, y = 25.3 },
					{ t = "turnin", quest = 9028, title = "The Source Revealed", npc = 16107, npcName = "Apothecary Staffron Lerent", map = 1416, x = 89.5, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9029, title = "A Bubbling Cauldron", map = 1416, x = 89.6, y = 75.7, f = "e" },
				},
			},
		},
	})
end

