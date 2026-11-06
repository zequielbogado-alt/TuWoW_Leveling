-- TuWoW_Leveling — Guides/Events_07.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/events/h-lunar-festival-optimized-elders-path",
		pack = "guides",
		title = "Lunar Festival Optimized Elders Path",
		category = "Events",
		folder = "Lunar Festival",
		faction = "Horde",
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
					{ t = "accept", quest = 8649, title = "Stormbrow the Elder", npc = 15565, npcName = "Elder Stormbrow", map = 1429, x = 39.79, y = 63.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8646, title = "Hammershout the Elder", npc = 15562, npcName = "Elder Hammershout", map = 1453, x = 36.27, y = 66.15, f = "e" },
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
					{ t = "accept", quest = 8679, title = "Grimtotem the Elder", npc = 15581, npcName = "Elder Grimtotem", map = 1444, x = 76.71, y = 37.9, f = "e" },
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
					{ t = "accept", quest = 8719, title = "Bladesing the Elder", npc = 15599, npcName = "Elder Bladesing", map = 1451, x = 48.97, y = 37.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8654, title = "Primestone the Elder", npc = 15570, npcName = "Elder Primestone", map = 1451, x = 23.08, y = 11.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8681, title = "Thunderhorn the Elder", npc = 15583, npcName = "Elder Thunderhorn", map = 1449, x = 50.37, y = 76.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8671, title = "Ragetotem the Elder", npc = 15573, npcName = "Elder Ragetotem", map = 1446, x = 36.3, y = 80.54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8684, title = "Dreamseer the Elder", npc = 15586, npcName = "Elder Dreamseer", map = 1446, x = 51.47, y = 27.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8724, title = "Morningdew the Elder", npc = 15604, npcName = "Elder Morningdew", map = 1441, x = 79.2, y = 77.05, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8682, title = "Skyseer the Elder", npc = 15584, npcName = "Elder Skyseer", map = 1441, x = 45.42, y = 50.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8677, title = "Darkhorn the Elder", npc = 15579, npcName = "Elder Darkhorn", map = 1454, x = 41.11, y = 33.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8670, title = "Runetotem the Elder", npc = 15572, npcName = "Elder Runetotem", map = 1411, x = 53.24, y = 43.65, f = "e" },
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
				note = "He is located inside Mauradon near the east exit beyond Rotgrip. He is at the top of a path at the end of the tunnel. You will need to run this dungeon with a group.",
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
		id = "zygor/events/h-love-is-in-the-air-quests",
		pack = "guides",
		title = "Love is in the Air Quests",
		category = "Events",
		folder = "Love is in the Air",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1458,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 8904, title = "Dangerous Love", npc = 16108, npcName = "Fenstad Argyle", map = 1458, x = 66.68, y = 44.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 21815, itemName = "Love Token", map = 1458, x = 67.75, y = 37.88, f = "e" },
					{ t = "buy", item = 21833, itemName = "Cologne Bottle", map = 1458, x = 67.75, y = 37.88, f = "e" },
					{ t = "buy", item = 21829, itemName = "Perfume Bottle", map = 1458, x = 67.75, y = 37.88, f = "e" },
				},
			},
			{
				note = "Perfume allows you to give Love Tokens to male NPCs. Cologne allows you to give Love Tokens to female NPCs.",
				goals = {
					{ t = "use", item = 21833, itemName = "Cologne Bottle" },
					{ t = "use", item = 21829, itemName = "Perfume Bottle" },
					{ t = "complete", quest = 8904, title = "Dangerous Love", note = "Apply Perfume or Cologne" },
				},
			},
			{
				note = "Talk to those with a heart above their head.",
				goals = {
					{ t = "use", item = 22157, itemName = "Pledge of Adoration: Undercity" },
					{ t = "use", item = 22163, itemName = "Pledge of Friendship: Undercity" },
					{ t = "collect", quest = 8904, item = 22145, itemName = "Guardian's Moldy Card", map = 1458, x = 54.49, y = 68.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8904, title = "Dangerous Love", npc = 16108, npcName = "Fenstad Argyle", map = 1458, x = 66.68, y = 44.7, f = "e" },
					{ t = "accept", quest = 8979, title = "Fenstad's Hunch", npc = 16108, npcName = "Fenstad Argyle", map = 1458, x = 66.68, y = 44.7, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run down the ramp", map = 1458, x = 52.81, y = 77.72 },
					{ t = "turnin", quest = 8979, title = "Fenstad's Hunch", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 50.15, y = 67.98, f = "e" },
					{ t = "accept", quest = 8980, title = "Zinge's Assessment", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 50.15, y = 67.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8980, title = "Zinge's Assessment", npc = 16108, npcName = "Fenstad Argyle", map = 1458, x = 66.68, y = 44.7, f = "e" },
					{ t = "accept", quest = 8982, title = "Tracing the Source", npc = 16108, npcName = "Fenstad Argyle", map = 1458, x = 66.68, y = 44.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8982, title = "Tracing the Source", npc = 6741, npcName = "Innkeeper Norman", map = 1458, x = 67.75, y = 37.88, f = "e" },
					{ t = "accept", quest = 8983, title = "Tracing the Source", npc = 6741, npcName = "Innkeeper Norman", map = 1458, x = 67.75, y = 37.88, f = "e" },
				},
			},
			{
				note = "She walks around this area.",
				goals = {
					{ t = "turnin", quest = 8983, title = "Tracing the Source", npc = 16109, npcName = "Mara Rennick", map = 1458, x = 70.66, y = 29.23, f = "e" },
					{ t = "accept", quest = 8984, title = "The Source Revealed", npc = 16109, npcName = "Mara Rennick", map = 1458, x = 70.66, y = 29.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1424, x = 75.5, y = 24.0 },
					{ t = "goto", text = "Enter the cave", map = 1424, x = 77.7, y = 19.4 },
					{ t = "goto", text = "Run up the hill", map = 1416, x = 84.3, y = 84.3 },
					{ t = "goto", text = "Follow the path up", map = 1416, x = 86.1, y = 25.3 },
					{ t = "turnin", quest = 8984, title = "The Source Revealed", npc = 16107, npcName = "Apothecary Staffron Lerent", map = 1416, x = 89.5, y = 75.5, f = "e" },
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

do
	Polestar.RegisterGuide({
		id = "zygor/events/h-gift-giving",
		pack = "guides",
		title = "Gift Giving",
		category = "Events",
		folder = "Love is in the Air",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				label = "Begin_Guide",
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 21815, itemName = "Love Token", count = 10, map = 1454, x = 54.1, y = 68.39, f = "e" },
					{ t = "buy", item = 21833, itemName = "Cologne Bottle", map = 1454, x = 54.1, y = 68.39, f = "e" },
					{ t = "buy", item = 21829, itemName = "Perfume Bottle", map = 1454, x = 54.1, y = 68.39, f = "e" },
				},
			},
			{
				label = "Apply_Perfume_or_Cologne_Orgrimmar",
				note = "Perfume allows you to give Love Tokens to male NPCs. Cologne allows you to give Love Tokens to female NPCs.",
				goals = {
					{ t = "use", item = 21833, itemName = "Cologne Bottle" },
					{ t = "use", item = 21829, itemName = "Perfume Bottle" },
				},
			},
			{
				note = "Talk to guards around Orgrimmar who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.",
				goals = {
					{ t = "use", item = 22156, itemName = "Pledge of Adoration: Orgrimmar" },
					{ t = "use", item = 22161, itemName = "Pledge of Friendship: Orgrimmar" },
					{ t = "collect", item = 22123, itemName = "Pledge of Loyalty: Orgrimmar", count = 5, map = 1454, x = 55.92, y = 61.11, f = "e" },
				},
			},
			{
				note = "Talk to guards around Orgrimmar who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.",
				goals = {
					{ t = "use", item = 22156, itemName = "Pledge of Adoration: Orgrimmar" },
					{ t = "use", item = 22161, itemName = "Pledge of Friendship: Orgrimmar" },
					{ t = "collect", item = 22142, itemName = "Grunt's Card", count = 5, map = 1454, x = 55.92, y = 61.11, f = "e" },
				},
			},
			{
				note = "Talk to NPCs who aren't guards around Orgrimmar who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.",
				goals = {
					{ t = "use", item = 21981, itemName = "Gift of Adoration: Stormwind" },
					{ t = "use", item = 22170, itemName = "Gift of Friendship: Stormwind" },
					{ t = "collect", item = 22175, itemName = "Freshly Baked Pie", count = 5, map = 1454, x = 55.92, y = 61.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22123, itemName = "Pledge of Loyalty: Orgrimmar" },
					{ t = "collect", item = 22294, itemName = "Orgrimmar Pledge Collection" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22142, itemName = "Grunt's Card" },
					{ t = "collect", item = 22293, itemName = "Package of Cards" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22175, itemName = "Freshly Baked Pie" },
					{ t = "collect", item = 22292, itemName = "Box of Fresh Pies" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22294, itemName = "Orgrimmar Pledge Collection" },
					{ t = "collect", item = 22136, itemName = "Orgrimmar Gift Collection" },
				},
			},
			{
				label = "Apply_Perfume_or_Cologne_Thunder_Bluff",
				note = "Perfume allows you to give Love Tokens to male NPCs. Cologne allows you to give Love Tokens to female NPCs.",
				goals = {
					{ t = "use", item = 21833, itemName = "Cologne Bottle" },
					{ t = "use", item = 21829, itemName = "Perfume Bottle" },
				},
			},
			{
				note = "Talk to guards around Thunder Bluff who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.",
				goals = {
					{ t = "use", item = 22158, itemName = "Pledge of Adoration: Thunder Bluff" },
					{ t = "use", item = 22162, itemName = "Pledge of Friendship: Thunder Bluff" },
					{ t = "collect", item = 22122, itemName = "Pledge of Loyalty: Thunder Bluff", count = 5, map = 1456, x = 43.21, y = 58.7, f = "e" },
				},
			},
			{
				note = "Talk to guards around Thunder Bluff who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.",
				goals = {
					{ t = "use", item = 22158, itemName = "Pledge of Adoration: Thunder Bluff" },
					{ t = "use", item = 22162, itemName = "Pledge of Friendship: Thunder Bluff" },
					{ t = "collect", item = 22144, itemName = "Bluffwatcher's Card", count = 5, map = 1456, x = 43.21, y = 58.7, f = "e" },
				},
			},
			{
				note = "Talk to NPCs who aren't guards around Thunder Bluff who have hearts over their heads.",
				goals = {
					{ t = "use", item = 21980, itemName = "Gift of Adoration: Ironforge" },
					{ t = "use", item = 22168, itemName = "Gift of Friendship: Ironforge" },
					{ t = "collect", item = 22177, itemName = "Freshly Picked Flowers", count = 5, map = 1456, x = 43.21, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22122, itemName = "Pledge of Loyalty: Thunder Bluff" },
					{ t = "collect", item = 22297, itemName = "Thunder Bluff Pledge Collection" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22144, itemName = "Bluffwatcher's Card" },
					{ t = "collect", item = 22295, itemName = "Satchel of Cards" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22177, itemName = "Freshly Picked Flowers" },
					{ t = "collect", item = 22296, itemName = "Basket of Flowers" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22297, itemName = "Thunder Bluff Pledge Collection" },
					{ t = "collect", item = 22135, itemName = "Thunder Bluff Gift Collection" },
				},
			},
			{
				label = "Apply_Perfume_or_Cologne_Undercity",
				note = "Perfume allows you to give Love Tokens to male NPCs. Cologne allows you to give Love Tokens to female NPCs.",
				goals = {
					{ t = "use", item = 21833, itemName = "Cologne Bottle" },
					{ t = "use", item = 21829, itemName = "Perfume Bottle" },
				},
			},
			{
				note = "Talk to guards around Undercity who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.",
				goals = {
					{ t = "use", item = 22157, itemName = "Pledge of Adoration: Undercity" },
					{ t = "use", item = 22163, itemName = "Pledge of Friendship: Undercity" },
					{ t = "collect", item = 22121, itemName = "Pledge of Loyalty: Undercity", count = 5, map = 1458, x = 68.07, y = 44.1, f = "e" },
				},
			},
			{
				note = "Talk to guards around Undercity who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.",
				goals = {
					{ t = "use", item = 22157, itemName = "Pledge of Adoration: Undercity" },
					{ t = "use", item = 22163, itemName = "Pledge of Friendship: Undercity" },
					{ t = "collect", item = 22145, itemName = "Guardian's Moldy Card", count = 5, map = 1458, x = 68.07, y = 44.1, f = "e" },
				},
			},
			{
				note = "Talk to NPCs who aren't guards around Undercity who have hearts over their heads. If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.",
				goals = {
					{ t = "use", item = 22166, itemName = "Gift of Adoration: Undercity" },
					{ t = "use", item = 22172, itemName = "Gift of Friendship: Undercity" },
					{ t = "collect", item = 22174, itemName = "Romantic Poem", count = 5, map = 1458, x = 68.07, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22121, itemName = "Pledge of Loyalty: Undercity" },
					{ t = "collect", item = 22300, itemName = "Undercity Pledge Collection" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22145, itemName = "Guardian's Moldy Card" },
					{ t = "collect", item = 22299, itemName = "Sheaf of Cards" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22174, itemName = "Romantic Poem" },
					{ t = "collect", item = 22298, itemName = "Book of Romantic Poems" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22300, itemName = "Undercity Pledge Collection" },
					{ t = "collect", item = 22134, itemName = "Undercity Gift Collection" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22136, itemName = "Orgrimmar Gift Collection" },
					{ t = "collect", item = 22263, itemName = "Horde Gift Collection" },
				},
			},
			{
				label = "Vote_Sylvanas_Windrunner",
				goals = {
					{ t = "goto", text = "Enter the tunnel", map = 1458, x = 51.86, y = 64.75 },
					{ t = "accept", quest = 8981, title = "Gift Giving", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1458, x = 55.2, y = 89.96, f = "e" },
				},
			},
			{
				label = "Vote_Thrall",
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.28, y = 36.93 },
					{ t = "accept", quest = 8981, title = "Gift Giving", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1454, x = 32.57, y = 36.8, f = "e" },
				},
			},
			{
				label = "Vote_Cairne_Bloodhoof",
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 8981, title = "Gift Giving", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1454, x = 38.11, y = 80.5, f = "e" },
				},
			},
		},
	})
end

