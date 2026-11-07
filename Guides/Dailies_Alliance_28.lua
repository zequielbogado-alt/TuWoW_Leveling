-- TuWoW_Leveling — Guides/Dailies_Alliance_28.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-midsummer-fire-festival-quests",
		pack = "guides",
		title = "Midsummer Fire Festival Quests (Parte 1/2)",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		next = "zygor/dailies/a-dai-events-midsummer-fire-festival-quests-part-2",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1457,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11970, title = "The Master of Summer Lore", npc = 19173, npcName = "Night Elf Commoner", map = 1457, x = 41.5, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11824, title = "Honor the Flame", npc = 25906, npcName = "Teldrassil Flame Warden", map = 1438, x = 55.1, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11882, title = "Playing with Fire", npc = 25962, npcName = "Fire Eater", map = 1438, x = 54.7, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1457, x = 30.5, y = 41.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11882, title = "Playing with Fire", npc = 25975, npcName = "Master Fire Eater", map = 1438, x = 56.6, y = 92.1, f = "e" },
					{ t = "accept", quest = 11731, title = "Torch Tossing", npc = 25975, npcName = "Master Fire Eater", map = 1438, x = 56.6, y = 92.1, f = "e" },
				},
			},
			{
				note = "Use your Practice Torches in your bags and throw them at the Torch Target Braziers nearby |use Practice Torches##34862 |tip You must throw the torches at the correct braziers.  Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.",
				goals = {
					{ t = "use", item = 34862, itemName = "Practice Torches", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11731, title = "Torch Tossing", npc = 25975, npcName = "Master Fire Eater", map = 1438, x = 56.6, y = 92.1, f = "e" },
					{ t = "accept", quest = 11657, title = "Torch Catching", npc = 25975, npcName = "Master Fire Eater", map = 1438, x = 56.6, y = 92.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1438, x = 56.6, y = 92.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11657, title = "Torch Catching", npc = 25975, npcName = "Master Fire Eater", map = 1438, x = 56.6, y = 92.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11970, title = "The Master of Summer Lore", npc = 16817, npcName = "Festival Loremaster", map = 1438, x = 56.5, y = 92.3, f = "e" },
					{ t = "accept", quest = 11964, title = "Incense for the Summer Scorchlings", npc = 16817, npcName = "Festival Loremaster", map = 1438, x = 56.5, y = 92.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11886, title = "Unusual Activity", npc = 26221, npcName = "Earthen Ring Elder", map = 1438, x = 56.1, y = 92.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3838, npcName = "Vesprystus", map = 1438, x = 58.4, y = 94.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11964, title = "Incense for the Summer Scorchlings", npc = 26401, npcName = "Summer Scorchling", map = 1439, x = 37.0, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11811, title = "Honor the Flame", npc = 25893, npcName = "Darkshore Flame Warden", map = 1439, x = 37.0, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 30.8, y = 41.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11806, title = "Honor the Flame", npc = 25888, npcName = "Azuremyst Isle Flame Warden", map = 1941, x = 44.5, y = 52.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11809, title = "Honor the Flame", npc = 25891, npcName = "Bloodmyst Isle Flame Warden", map = 1942, x = 55.8, y = 67.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 17554, npcName = "Laando", map = 1942, x = 57.7, y = 53.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1941, x = 20.4, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3841, npcName = "Caylais Moonfeather", map = 1439, x = 36.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11834, title = "Honor the Flame", npc = 25917, npcName = "Winterspring Flame Warden", map = 1452, x = 62.5, y = 35.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11803, title = "Desecrate this Fire!", map = 1452, x = 59.9, y = 35.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11138, npcName = "Maethrya", map = 1452, x = 62.3, y = 36.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11886, itemName = "Twilight Correspondence", count = 1, oi = 1, map = 1440, x = 15.3, y = 20.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11886, title = "Unusual Activity", npc = 25324, npcName = "Earthen Ring Guide", map = 1440, x = 15.7, y = 20.3, f = "e" },
					{ t = "accept", quest = 11891, title = "An Innocent Disguise", npc = 25324, npcName = "Earthen Ring Guide", map = 1440, x = 15.7, y = 20.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1440, x = 9.6, y = 13.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11891, title = "An Innocent Disguise", npc = 25324, npcName = "Earthen Ring Guide", map = 1440, x = 9.7, y = 13.3, f = "e" },
					{ t = "accept", quest = 12012, title = "Inform the Elder", npc = 25324, npcName = "Earthen Ring Guide", map = 1440, x = 9.7, y = 13.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 4267, npcName = "Daelyshia", map = 1440, x = 34.4, y = 48.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12012, title = "Inform the Elder", npc = 26221, npcName = "Earthen Ring Elder", map = 1438, x = 56.1, y = 92.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3838, npcName = "Vesprystus", map = 1438, x = 58.4, y = 94.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11805, title = "Honor the Flame", npc = 25883, npcName = "Ashenvale Flame Warden", map = 1440, x = 37.8, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11765, title = "Desecrate this Fire!", map = 1440, x = 70.0, y = 69.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11783, title = "Desecrate this Fire!", map = 1413, x = 52.1, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11770, title = "Desecrate this Fire!", map = 1411, x = 51.9, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 23179, itemName = "Flame of Orgrimmar", count = 1, map = 1454, x = 47.0, y = 38.5, f = "e" },
					{ t = "accept", quest = 9324, title = "Stealing Orgrimmar's Flame", map = 1454, x = 47.0, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 16227, npcName = "Bragok", map = 1413, x = 63.1, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11780, title = "Desecrate this Fire!", map = 1442, x = 50.6, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11812, title = "Honor the Flame", npc = 25894, npcName = "Desolace Flame Warden", map = 1443, x = 66.1, y = 17.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11769, title = "Desecrate this Fire!", map = 1443, x = 26.2, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1444, x = 43.4, y = 42.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11817, title = "Honor the Flame", npc = 25899, npcName = "Feralas Flame Warden", map = 1444, x = 28.3, y = 43.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 8019, npcName = "Fyldren Moonfeather", map = 1444, x = 30.2, y = 43.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11773, title = "Desecrate this Fire!", map = 1444, x = 72.5, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 4319, npcName = "Thyssiana", map = 1444, x = 89.5, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11831, title = "Honor the Flame", npc = 25914, npcName = "Silithus Flame Warden", map = 1451, x = 57.5, y = 35.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11800, title = "Desecrate this Fire!", map = 1451, x = 46.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 15177, npcName = "Cloud Skydancer", map = 1451, x = 50.6, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11785, title = "Desecrate this Fire!", map = 1441, x = 42.5, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11802, title = "Desecrate this Fire!", map = 1446, x = 49.8, y = 27.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11833, title = "Honor the Flame", npc = 25916, npcName = "Tanaris Flame Warden", map = 1446, x = 52.8, y = 29.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 7823, npcName = "Bera Stonehammer", map = 1446, x = 51.0, y = 29.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11815, title = "Honor the Flame", npc = 25897, npcName = "Dustwallow Marsh Flame Warden", map = 1445, x = 61.8, y = 40.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11771, title = "Desecrate this Fire!", map = 1445, x = 33.3, y = 30.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11777, title = "Desecrate this Fire!", map = 1412, x = 52.1, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 23180, itemName = "Flame of Thunder Bluff", count = 1, map = 1456, x = 21.7, y = 27.5, f = "e" },
					{ t = "accept", quest = 9325, title = "Stealing Thunder Bluff's Flame", map = 1456, x = 21.7, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 63.7, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11832, title = "Honor the Flame", npc = 25915, npcName = "Stranglethorn Vale Flame Warden", map = 1434, x = 33.9, y = 73.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11801, title = "Desecrate this Fire!", map = 1434, x = 33.0, y = 75.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2859, npcName = "Gyll", map = 1434, x = 27.5, y = 77.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11808, title = "Honor the Flame", npc = 25890, npcName = "Blasted Lands Flame Warden", map = 1419, x = 59.3, y = 17.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11781, title = "Desecrate this Fire!", map = 1435, x = 46.9, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11814, title = "Honor the Flame", npc = 25896, npcName = "Duskwood Flame Warden", map = 1431, x = 73.7, y = 54.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2409, npcName = "Felicia Maline", map = 1431, x = 77.5, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11583, title = "Honor the Flame", npc = 25910, npcName = "Westfall Flame Warden", map = 1436, x = 55.9, y = 53.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 523, npcName = "Thor", map = 1436, x = 56.5, y = 52.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11816, title = "Honor the Flame", npc = 25898, npcName = "Elwynn Forest Flame Warden", map = 1429, x = 43.5, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 352, npcName = "Dungar Longdrink", map = 1453, x = 71.0, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11822, title = "Honor the Flame", npc = 25904, npcName = "Redridge Flame Warden", map = 1433, x = 25.2, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 931, npcName = "Ariena Stormfeather", map = 1433, x = 30.6, y = 59.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11810, title = "Honor the Flame", npc = 25892, npcName = "Burning Steppes Flame Warden", map = 1428, x = 80.3, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11768, title = "Desecrate this Fire!", map = 1428, x = 62.2, y = 29.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2299, npcName = "Borgus Stoutarm", map = 1428, x = 84.3, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1427, x = 69.4, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11766, title = "Desecrate this Fire!", map = 1418, x = 4.9, y = 49.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11820, title = "Honor the Flame", npc = 25902, npcName = "Loch Modan Flame Warden", map = 1432, x = 32.5, y = 41.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 1572, npcName = "Thorgrum Borrelson", map = 1432, x = 33.9, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9324, title = "Stealing Orgrimmar's Flame", npc = 16817, npcName = "Festival Loremaster", map = 1455, x = 63.8, y = 25.3, f = "e" },
					{ t = "turnin", quest = 9325, title = "Stealing Thunder Bluff's Flame", npc = 16817, npcName = "Festival Loremaster", map = 1455, x = 63.8, y = 25.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11813, title = "Honor the Flame", npc = 25895, npcName = "Dun Morogh Flame Warden", map = 1426, x = 46.7, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 1573, npcName = "Gryth Thurden", map = 1455, x = 55.5, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11828, title = "Honor the Flame", npc = 25911, npcName = "Wetlands Flame Warden", map = 1437, x = 13.5, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 1571, npcName = "Shellei Brondir", map = 1437, x = 9.5, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11804, title = "Honor the Flame", npc = 25887, npcName = "Arathi Flame Warden", map = 1417, x = 50.0, y = 44.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11764, title = "Desecrate this Fire!", map = 1417, x = 73.9, y = 41.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2835, npcName = "Cedrik Prose", map = 1417, x = 45.7, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11819, title = "Honor the Flame", npc = 25901, npcName = "Hillsbrad Flame Warden", map = 1424, x = 50.4, y = 47.6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-midsummer-fire-festival-quests-part-2",
		pack = "guides",
		title = "Midsummer Fire Festival Quests (Parte 2/2)",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1457,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11776, title = "Desecrate this Fire!", map = 1424, x = 58.3, y = 25.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11827, title = "Honor the Flame", npc = 25909, npcName = "Western Plaguelands Flame Warden", map = 1422, x = 43.5, y = 82.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 12596, npcName = "Bibilfaz Featherwhistle", map = 1422, x = 42.9, y = 85.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11826, title = "Honor the Flame", npc = 25908, npcName = "The Hinterlands Flame Warden", map = 1425, x = 14.3, y = 50.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11784, title = "Desecrate this Fire!", map = 1425, x = 76.7, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 8018, npcName = "Guthrum Thunderfist", map = 1425, x = 11.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11580, title = "Desecrate this Fire!", map = 1421, x = 49.6, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11786, title = "Desecrate this Fire!", map = 1420, x = 57.0, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 23181, itemName = "Flame of Undercity", count = 1, map = 1458, x = 67.9, y = 8.3, f = "e" },
					{ t = "accept", quest = 9326, title = "Stealing Undercity's Flame", map = 1458, x = 67.9, y = 8.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 37888, npcName = "Frax Bucketdrop", map = 1422, x = 69.3, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1423, x = 54.8, y = 8.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11774, title = "Desecrate this Fire!", map = 1943, x = 47.0, y = 25.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11772, title = "Desecrate this Fire!", map = 1944, x = 46.4, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 35568, itemName = "Flame of Silvermoon", count = 1, map = 1948, x = 69.0, y = 43.4, f = "e" },
					{ t = "accept", quest = 11935, title = "Stealing Silvermoon's Flame", map = 1948, x = 69.0, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1943, x = 52.0, y = 97.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 12617, npcName = "Khaelyn Steelwing", map = 1423, x = 75.8, y = 53.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9326, title = "Stealing the Undercity's Flame", npc = 16817, npcName = "Festival Loremaster", map = 1455, x = 63.8, y = 25.3, f = "e" },
					{ t = "turnin", quest = 11935, title = "Stealing Silvermoon's Flame", npc = 16817, npcName = "Festival Loremaster", map = 1455, x = 63.8, y = 25.3, f = "e" },
					{ t = "accept", quest = 9365, title = "A Thief's Reward", npc = 16817, npcName = "Festival Loremaster", map = 1455, x = 63.8, y = 25.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 27.3, y = 7.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11818, title = "Honor the Flame", npc = 25900, npcName = "Hellfire Peninsula Flame Warden", map = 1944, x = 62.2, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11775, title = "Desecrate this Fire!", map = 1944, x = 57.2, y = 41.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11799, title = "Desecrate this Fire!", map = 1953, x = 32.3, y = 68.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11830, title = "Honor the Flame", npc = 25913, npcName = "Netherstorm Flame Warden", map = 1953, x = 31.2, y = 62.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11767, title = "Desecrate this Fire!", map = 1949, x = 50.0, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11807, title = "Honor the Flame", npc = 25889, npcName = "Blade's Edge Flame Warden", map = 1949, x = 41.6, y = 65.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11787, title = "Desecrate this Fire!", map = 1946, x = 35.6, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11829, title = "Honor the Flame", npc = 25912, npcName = "Zangarmarsh Flame Warden", map = 1946, x = 68.8, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11778, title = "Desecrate this Fire!", map = 1951, x = 51.1, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11821, title = "Honor the Flame", npc = 25903, npcName = "Nagrand Flame Warden", map = 1951, x = 49.6, y = 69.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11782, title = "Desecrate this Fire!", map = 1952, x = 51.9, y = 43.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11825, title = "Honor the Flame", npc = 25907, npcName = "Terokkar Forest Flame Warden", map = 1952, x = 54.1, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11779, title = "Desecrate this Fire!", map = 1948, x = 33.5, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11823, title = "Honor the Flame", npc = 25905, npcName = "Shadowmoon Valley Flame Warden", map = 1948, x = 39.6, y = 54.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1955, x = 55.8, y = 36.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1453, x = 18.2, y = 25.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13485, title = "Honor the Flame", npc = 32801, npcName = "Borean Tundra Flame Warden", map = 114, x = 55.1, y = 20.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13441, title = "Desecrate this Fire!", map = 114, x = 51.1, y = 11.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13486, title = "Honor the Flame", npc = 32802, npcName = "Sholazar Basin Flame Warden", map = 119, x = 48.1, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13450, title = "Desecrate this Fire!", map = 119, x = 47.3, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13451, title = "Desecrate this Fire!", map = 115, x = 38.5, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13487, title = "Honor the Flame", npc = 32803, npcName = "Dragonblight Flame Warden", map = 115, x = 75.3, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13491, title = "Honor the Flame", npc = 32807, npcName = "Crystalsong Forest Flame Warden", map = 127, x = 78.2, y = 75.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13457, title = "Desecrate this Fire!", map = 127, x = 80.4, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13455, title = "Desecrate this Fire!", map = 120, x = 40.4, y = 85.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13490, title = "Honor the Flame", npc = 32806, npcName = "Storm Peaks Flame Warden", map = 120, x = 41.4, y = 86.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13492, title = "Honor the Flame", npc = 32808, npcName = "Zul'Drak Flame Warden", map = 121, x = 40.4, y = 61.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13458, title = "Desecrate this Fire!", map = 121, x = 43.3, y = 71.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13454, title = "Desecrate this Fire!", map = 116, x = 19.1, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13489, title = "Honor the Flame", npc = 32805, npcName = "Grizzly Hills Flame Warden", map = 116, x = 33.9, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13453, title = "Desecrate this Fire!", map = 117, x = 48.4, y = 13.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13488, title = "Honor the Flame", npc = 32804, npcName = "Howling Fjord Flame Warden", map = 117, x = 57.8, y = 16.1, f = "e" },
				},
			},
		},
	})
end

