-- TuWoW_Leveling — Guides/Dailies_Horde_30.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-events-midsummer-fire-festival-quests",
		pack = "guides",
		title = "Midsummer Fire Festival Quests (Parte 1/2)",
		category = "Dailies",
		folder = "Events",
		faction = "Horde",
		next = "zygor/dailies/h-dai-events-midsummer-fire-festival-quests-part-2",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1412,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11852, title = "Honor the Flame", npc = 25936, npcName = "Mulgore Flame Keeper", map = 1412, x = 51.9, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11915, title = "Playing with Fire", npc = 25994, npcName = "Flame Eater", map = 1412, x = 51.8, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11971, title = "The Spinner of Summer Tales", npc = 19176, npcName = "Tauren Commoner", map = 1456, x = 40.8, y = 56.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11971, title = "The Spinner of Summer Tales", npc = 16818, npcName = "Festival Talespinner", map = 1456, x = 21.6, y = 27.7, f = "e" },
					{ t = "accept", quest = 11966, title = "Incense for the Festival Scorchlings", npc = 16818, npcName = "Festival Talespinner", map = 1456, x = 21.6, y = 27.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11915, title = "Playing with Fire", npc = 26113, npcName = "Master Flame Eater", map = 1456, x = 21.0, y = 26.4, f = "e" },
					{ t = "accept", quest = 11922, title = "Torch Tossing", npc = 26113, npcName = "Master Flame Eater", map = 1456, x = 21.0, y = 26.4, f = "e" },
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
					{ t = "turnin", quest = 11922, title = "Torch Tossing", npc = 26113, npcName = "Master Flame Eater", map = 1456, x = 21.0, y = 26.4, f = "e" },
					{ t = "accept", quest = 11923, title = "Torch Catching", npc = 26113, npcName = "Master Flame Eater", map = 1456, x = 21.0, y = 26.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1456, x = 21.8, y = 27.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11923, title = "Torch Catching", npc = 26113, npcName = "Master Flame Eater", map = 1456, x = 21.0, y = 26.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11886, title = "Unusual Activity", npc = 26221, npcName = "Earthen Ring Elder", map = 1456, x = 21.2, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2995, npcName = "Tal", map = 1456, x = 47.0, y = 49.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11966, title = "Incense for the Festival Scorchlings", npc = 11966, npcName = "Festival Scorchling", map = 1445, x = 33.5, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11847, title = "Honor the Flame", npc = 25930, npcName = "Dustwallow Marsh Flame Keeper", map = 1445, x = 33.4, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11744, title = "Desecrate this Fire!", map = 1445, x = 62.1, y = 40.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11899, npcName = "Shardi", map = 1445, x = 35.6, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11861, title = "Honor the Flame", npc = 25945, npcName = "Thousand Needles Flame Keeper", map = 1441, x = 42.3, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 4317, npcName = "Nyse", map = 1441, x = 45.1, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11838, title = "Honor the Flame", npc = 25921, npcName = "Tanaris Flame Keeper", map = 1446, x = 49.8, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11762, title = "Desecrate this Fire!", map = 1446, x = 52.8, y = 29.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 7824, npcName = "Bulkrek Ragefist", map = 1446, x = 51.6, y = 25.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11836, title = "Honor the Flame", npc = 25919, npcName = "Silithus Flame Keeper", map = 1451, x = 46.5, y = 44.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11760, title = "Desecrate this Fire!", map = 1451, x = 57.8, y = 34.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 15178, npcName = "Runk Windtamer", map = 1451, x = 48.7, y = 36.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11849, title = "Honor the Flame", npc = 25932, npcName = "Feralas Flame Keeper", map = 1444, x = 72.4, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1444, x = 43.4, y = 42.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11746, title = "Desecrate this Fire!", map = 1444, x = 28.1, y = 43.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1444, x = 31.0, y = 39.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11845, title = "Honor the Flame", npc = 25928, npcName = "Desolace Flame Keeper", map = 1443, x = 26.2, y = 76.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11741, title = "Desecrate this Fire!", map = 1443, x = 65.8, y = 16.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1442, x = 38.2, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11856, title = "Honor the Flame", npc = 25940, npcName = "Stonetalon Flame Keeper", map = 1442, x = 50.5, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 4312, npcName = "Tharm", map = 1442, x = 45.1, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11859, title = "Honor the Flame", npc = 25943, npcName = "The Barrens Flame Keeper", map = 1413, x = 52.2, y = 28.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11846, title = "Honor the Flame", npc = 25929, npcName = "Durotar Flame Keeper", map = 1411, x = 52.2, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3310, npcName = "Doras", map = 1454, x = 45.1, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11839, title = "Honor the Flame", npc = 25922, npcName = "Winterspring Flame Keeper", map = 1452, x = 59.9, y = 35.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11763, title = "Desecrate this Fire!", map = 1452, x = 62.7, y = 35.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11139, npcName = "Yugrek", map = 1452, x = 60.5, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11841, title = "Honor the Flame", npc = 25884, npcName = "Ashenvale Flame Keeper", map = 1440, x = 70.2, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11734, title = "Desecrate this Fire!", map = 1440, x = 37.9, y = 55.0, f = "e" },
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
					{ t = "accept", quest = 11740, title = "Desecrate this Fire!", map = 1439, x = 37.1, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 33.2, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 23184, itemName = "Flame of Darnassus", count = 1, map = 1438, x = 56.7, y = 92.2, f = "e" },
					{ t = "accept", quest = 9332, title = "Stealing Darnassus's Flame", map = 1438, x = 56.7, y = 92.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11753, title = "Desecrate this Fire!", map = 1438, x = 54.9, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1457, x = 30.2, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1438, x = 54.9, y = 96.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 30.8, y = 41.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 35569, itemName = "Flame of the Exodar", count = 1, map = 1947, x = 41.6, y = 26.9, f = "e" },
					{ t = "accept", quest = 11933, title = "Stealing the Exodar's Flame", map = 1947, x = 41.6, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11735, title = "Desecrate this Fire!", map = 1941, x = 44.7, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11738, title = "Desecrate this Fire!", map = 1942, x = 55.9, y = 68.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1941, x = 20.4, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11901, npcName = "Andruk", map = 1440, x = 12.2, y = 33.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 63.6, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11837, title = "Honor the Flame", npc = 25920, npcName = "Stranglethorn Vale Flame Keeper", map = 1434, x = 32.9, y = 75.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11761, title = "Desecrate this Fire!", map = 1434, x = 33.8, y = 73.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2858, npcName = "Gringer", map = 1434, x = 26.9, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11857, title = "Honor the Flame", npc = 25941, npcName = "Swamp of Sorrows Flame Keeper", map = 1435, x = 46.7, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11737, title = "Desecrate this Fire!", map = 1419, x = 58.9, y = 17.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11743, title = "Desecrate this Fire!", map = 1431, x = 73.4, y = 55.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11581, title = "Desecrate this Fire!", map = 1436, x = 56.1, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11745, title = "Desecrate this Fire!", map = 1429, x = 43.1, y = 63.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 23182, itemName = "Flame of Stormwind", count = 1, map = 1453, x = 50.0, y = 72.6, f = "e" },
					{ t = "accept", quest = 9330, title = "Stealing Stormwind's Flame", map = 1453, x = 50.0, y = 72.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11751, title = "Desecrate this Fire!", map = 1433, x = 24.8, y = 59.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11739, title = "Desecrate this Fire!", map = 1428, x = 80.6, y = 62.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11844, title = "Honor the Flame", npc = 25927, npcName = "Burning Steppes Flame Keeper", map = 1428, x = 61.8, y = 29.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 13177, npcName = "Vahgruk", map = 1428, x = 65.7, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11842, title = "Honor the Flame", npc = 25925, npcName = "Badlands Flame Keeper", map = 1418, x = 4.7, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11749, title = "Desecrate this Fire!", map = 1432, x = 32.6, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11742, title = "Desecrate this Fire!", map = 1426, x = 46.6, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 23183, itemName = "Flame of Ironforge", count = 1, map = 1455, x = 64.3, y = 26.0, f = "e" },
					{ t = "accept", quest = 9331, title = "Stealing Ironforge's Flame", map = 1455, x = 64.3, y = 26.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11757, title = "Desecrate this Fire!", map = 1437, x = 13.2, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11732, title = "Desecrate this Fire!", map = 1417, x = 50.3, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11840, title = "Honor the Flame", npc = 25923, npcName = "Arathi Flame Keeper", map = 1417, x = 74.2, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2851, npcName = "Urda", map = 1417, x = 73.1, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11853, title = "Honor the Flame", npc = 25935, npcName = "Hillsbrad Flame Keeper", map = 1424, x = 58.6, y = 25.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11748, title = "Desecrate this Fire!", map = 1424, x = 50.4, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2389, npcName = "Zarise", map = 1424, x = 60.1, y = 18.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11584, title = "Honor the Flame", npc = 25939, npcName = "Silverpine Forest Flame Keeper", map = 1421, x = 49.7, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2226, npcName = "Karos Razok", map = 1421, x = 45.6, y = 42.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12012, title = "Inform the Elder", npc = 26221, npcName = "Earthen Ring Elder", map = 1458, x = 66.9, y = 13.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9332, title = "Stealing Darnassus's Flame", npc = 16818, npcName = "Festival Talespinner", map = 1458, x = 67.7, y = 8.3, f = "e" },
					{ t = "turnin", quest = 11933, title = "Stealing the Exodar's Flame", npc = 16818, npcName = "Festival Talespinner", map = 1458, x = 67.7, y = 8.3, f = "e" },
					{ t = "turnin", quest = 9330, title = "Stealing Stormwind's Flame", npc = 16818, npcName = "Festival Talespinner", map = 1458, x = 67.7, y = 8.3, f = "e" },
					{ t = "turnin", quest = 9331, title = "Stealing Ironforge's Flame", npc = 16818, npcName = "Festival Talespinner", map = 1458, x = 67.7, y = 8.3, f = "e" },
					{ t = "accept", quest = 9339, title = "A Thief's Reward", npc = 16818, npcName = "Festival Talespinner", map = 1458, x = 67.7, y = 8.3, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-events-midsummer-fire-festival-quests-part-2",
		pack = "guides",
		title = "Midsummer Fire Festival Quests (Parte 2/2)",
		category = "Dailies",
		folder = "Events",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1412,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", map = 1458, x = 54.9, y = 11.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11848, title = "Honor the Flame", npc = 25931, npcName = "Eversong Woods Flame Keeper", map = 1944, x = 46.4, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11850, title = "Honor the Flame", npc = 25933, npcName = "Ghostlands Flame Keeper", map = 1943, x = 46.9, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 16189, npcName = "Skymaster Sunwing", map = 1943, x = 45.4, y = 30.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11860, title = "Honor the Flame", npc = 25944, npcName = "The Hinterlands Flame Keeper", map = 1425, x = 76.7, y = 75.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11755, title = "Desecrate this Fire!", map = 1425, x = 14.6, y = 49.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2389, npcName = "Zarise", map = 1424, x = 60.1, y = 18.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11756, title = "Desecrate this Fire!", map = 1422, x = 43.6, y = 82.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11862, title = "Honor the Flame", npc = 25946, npcName = "Tirisfal Glades Flame Keeper", map = 1420, x = 57.2, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1458, x = 85.3, y = 17.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11747, title = "Desecrate this Fire!", map = 1944, x = 61.9, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11851, title = "Honor the Flame", npc = 25934, npcName = "Hellfire Peninsula Flame Keeper", map = 1944, x = 57.1, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11835, title = "Honor the Flame", npc = 25918, npcName = "Netherstorm Flame Keeper", map = 1953, x = 32.1, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11759, title = "Desecrate this Fire!", map = 1953, x = 31.1, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11843, title = "Honor the Flame", npc = 25926, npcName = "Blade's Edge Flame Keeper", map = 1949, x = 49.9, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11736, title = "Desecrate this Fire!", map = 1949, x = 41.8, y = 66.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11863, title = "Honor the Flame", npc = 25947, npcName = "Zangarmarsh Flame Keeper", map = 1946, x = 35.4, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11758, title = "Desecrate this Fire!", map = 1946, x = 68.6, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11854, title = "Honor the Flame", npc = 25937, npcName = "Nagrand Flame Keeper", map = 1951, x = 50.9, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11750, title = "Desecrate this Fire!", map = 1951, x = 49.7, y = 69.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11858, title = "Honor the Flame", npc = 25942, npcName = "Terokkar Forest Flame Keeper", map = 1952, x = 52.0, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11754, title = "Desecrate this Fire!", map = 1952, x = 54.2, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11855, title = "Honor the Flame", npc = 25938, npcName = "Shadowmoon Valley Flame Keeper", map = 1948, x = 33.4, y = 30.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11752, title = "Desecrate this Fire!", map = 1948, x = 39.5, y = 54.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1955, x = 52.2, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 41.4, y = 17.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13440, title = "Desecrate this Fire!", map = 114, x = 55.2, y = 20.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13493, title = "Honor the Flame", npc = 32809, npcName = "Borean Tundra Flame Keeper", map = 114, x = 51.1, y = 11.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13442, title = "Desecrate this Fire!", map = 119, x = 47.9, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13494, title = "Honor the Flame", npc = 32810, npcName = "Sholazar Basin Flame Keeper", map = 119, x = 47.1, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13495, title = "Honor the Flame", npc = 32811, npcName = "Dragonblight Flame Keeper", map = 115, x = 38.3, y = 48.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13443, title = "Desecrate this Fire!", map = 115, x = 75.1, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13447, title = "Desecrate this Fire!", map = 127, x = 77.6, y = 75.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13499, title = "Honor the Flame", npc = 32815, npcName = "Crystalsong Forest Flame Keeper", map = 127, x = 80.0, y = 53.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13498, title = "Honor the Flame", npc = 32814, npcName = "Storm Peaks Flame Keeper", map = 120, x = 40.3, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13446, title = "Desecrate this Fire!", map = 120, x = 41.4, y = 87.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13449, title = "Desecrate this Fire!", map = 121, x = 40.5, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13500, title = "Honor the Flame", npc = 32816, npcName = "Zul'Drak Flame Keeper", map = 121, x = 43.4, y = 71.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13497, title = "Honor the Flame", npc = 32813, npcName = "Grizzly Hills Flame Keeper", map = 116, x = 19.3, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13445, title = "Desecrate this Fire!", map = 116, x = 34.2, y = 60.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13496, title = "Honor the Flame", npc = 32812, npcName = "Howling Fjord Flame Keeper", map = 117, x = 48.6, y = 13.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13444, title = "Desecrate this Fire!", map = 117, x = 57.8, y = 15.8, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-events-midsummer-fire-festival-achievements",
		pack = "guides",
		title = "Midsummer Fire Festival Achievements",
		category = "Dailies",
		folder = "Events",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1458,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "talk", npc = 26221, npcName = "Earthen Ring Elder", map = 1458, x = 66.9, y = 13.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 26124, npcName = "Midsummer Merchant", item = 34599, itemName = "Juggling Torch", count = 15, map = 1458, x = 68.1, y = 11.2, f = "e" },
					{ t = "buy", npc = 26124, npcName = "Midsummer Merchant", item = 23324, itemName = "Mantle of the Fire Festival", count = 1, map = 1458, x = 68.1, y = 11.2, f = "e" },
					{ t = "buy", npc = 26124, npcName = "Midsummer Merchant", item = 34685, itemName = "Vestment of Summer", count = 1, map = 1458, x = 68.1, y = 11.2, f = "e" },
					{ t = "buy", npc = 26124, npcName = "Midsummer Merchant", item = 34683, itemName = "Sandals of Summer", count = 1, map = 1458, x = 68.1, y = 11.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1458, x = 68.0, y = 14.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 59.1, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 27344, npcName = "Bat Handler Adeline", map = 117, x = 79.0, y = 29.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 125, x = 36.8, y = 44.1, f = "e" },
				},
			},
		},
	})
end

