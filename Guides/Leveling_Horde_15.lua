-- TuWoW_Leveling — Guides/Leveling_Horde_15.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-20-25",
		pack = "guides",
		title = "Levels (20-25) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-levels-20-25-part-2",
		author = "TuWoW & Zygor",
		minLevel = 20,
		maxLevel = 25,
		zone = 1413,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", itemName = "Sunscale Feathers", count = 3, map = 1413, x = 52.2, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 57.4, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3281, itemName = "Stolen Silver", count = 1, oi = 1, map = 1413, x = 58.0, y = 53.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 878, target = "Bristleback Water Seeker", count = 6, oi = 1, map = 1413, x = 53.5, y = 52.0, f = "e" },
					{ t = "kill", quest = 878, target = "Bristleback Thornweaver", count = 12, oi = 2, map = 1413, x = 53.5, y = 52.0, f = "e" },
					{ t = "kill", quest = 878, target = "Bristleback Geomancer", count = 12, oi = 3, map = 1413, x = 53.5, y = 52.0, f = "e" },
					{ t = "collect", quest = 899, itemName = "Bristleback Quilboar Tusk", count = 60, oi = 1, map = 1413, x = 53.5, y = 52.0, f = "e" },
					{ t = "collect", quest = 5052, item = 5075, itemName = "Blood Shard", count = 1, map = 1413, x = 53.5, y = 52.0, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1507, title = "Devourer of Souls", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.2, y = 45.3, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1507, title = "Devourer of Souls", npc = 5909, npcName = "Cazul", map = 1454, x = 47.8, y = 46.9, f = "e" },
					{ t = "accept", quest = 1508, title = "Blind Cazul", npc = 5909, npcName = "Cazul", map = 1454, x = 47.8, y = 46.9, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1508, title = "Blind Cazul", npc = 5910, npcName = "Zankaja", map = 1454, x = 37.1, y = 59.4, f = "e" },
					{ t = "accept", quest = 1509, title = "News of Dogran (1)", npc = 5910, npcName = "Zankaja", map = 1454, x = 37.1, y = 59.4, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1509, title = "News of Dogran (1)", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.9, y = 30.3, f = "e" },
					{ t = "accept", quest = 1510, title = "News of Dogran (2)", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.9, y = 30.3, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1510, title = "News of Dogran (2)", npc = 4197, npcName = "Ken'zigla", map = 1442, x = 73.26, y = 95.14, f = "e" },
					{ t = "accept", quest = 1511, title = "Ken'zigla's Draught", npc = 4197, npcName = "Ken'zigla", map = 1442, x = 73.26, y = 95.14, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1511, title = "Ken'zigla's Draught", npc = 5911, npcName = "Grunt Logmar", map = 1442, x = 44.6, y = 59.3, f = "e" },
					{ t = "accept", quest = 1515, title = "Dogran's Captivity", npc = 5911, npcName = "Grunt Logmar", map = 1442, x = 44.6, y = 59.3, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1515, title = "Dogran's Captivity", npc = 5908, npcName = "Grunt Dogran", map = 1442, x = 43.3, y = 48.0, f = "e" },
					{ t = "accept", quest = 1512, title = "Love's Gift", npc = 5908, npcName = "Grunt Dogran", map = 1442, x = 43.3, y = 48.0, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1512, title = "Love's Gift", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.2, y = 45.3, f = "e" },
					{ t = "accept", quest = 1513, title = "The Binding", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.2, y = 45.3, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "kill", quest = 1513, target = "Summoned Succubus", count = 1, oi = 1, map = 1454, x = 49.4, y = 50.1, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1513, title = "The Binding", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.2, y = 45.3, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 1528, title = "Call of Water (1)", npc = 5892, npcName = "Searn Firewarder", map = 1454, x = 38.0, y = 38.3, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1528, title = "Call of Water (1)", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.8, y = 43.8, f = "e" },
					{ t = "accept", quest = 1530, title = "Call of Water (2)", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.8, y = 43.8, f = "e" },
				},
			},
			{
				note = "Fly to Camp Taurajo|goto The Barrens,44.5,59.1,0.5|noway|c",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "talk", npc = 16227, npcName = "Bragok", map = 1413, x = 63.1, y = 37.2, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1530, title = "Call of Water (2)", npc = 5899, npcName = "Brine", map = 1413, x = 43.4, y = 77.4, f = "e" },
					{ t = "accept", quest = 1535, title = "Call of Water (3)", npc = 5899, npcName = "Brine", map = 1413, x = 43.4, y = 77.4, f = "e" },
				},
			},
			{
				note = "Go down the hill to the pond at 44,77",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1535, itemName = "Filled Brown Waterskin", count = 1, oi = 1, map = 1413, x = 44.2, y = 77.0, f = "e" },
				},
			},
			{
				note = "Go back up the hill to 43,77",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1535, title = "Call of Water (3)", npc = 5899, npcName = "Brine", map = 1413, x = 43.4, y = 77.4, f = "e" },
					{ t = "accept", quest = 1536, title = "Call of Water (4)", npc = 5899, npcName = "Brine", map = 1413, x = 43.4, y = 77.4, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1536, itemName = "Filled Red Waterskin", count = 1, oi = 1, map = 1424, x = 62.2, y = 20.8, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", map = 1420, x = 60.8, y = 58.8, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1536, title = "Call of Water (4)", npc = 5899, npcName = "Brine", map = 1413, x = 43.4, y = 77.4, f = "e" },
					{ t = "accept", quest = 1534, title = "Call of Water (5)", npc = 5899, npcName = "Brine", map = 1413, x = 43.4, y = 77.4, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1534, itemName = "Filled Blue Waterskin", count = 1, oi = 1, map = 1440, x = 33.6, y = 67.5, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1534, title = "Call of Water (5)", npc = 5899, npcName = "Brine", map = 1413, x = 43.4, y = 77.4, f = "e" },
					{ t = "accept", quest = 220, title = "Call of Water (6)", npc = 5899, npcName = "Brine", map = 1413, x = 43.4, y = 77.4, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 220, title = "Call of Water (6)", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.8, y = 43.8, f = "e" },
					{ t = "accept", quest = 63, title = "Call of Water (7)", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.8, y = 43.8, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 63, itemName = "Corrupt Manifestation's Bracers", count = 1, oi = 1, map = 1421, x = 38.8, y = 44.2, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 63, title = "Call of Water (7)", map = 1421, x = 38.3, y = 44.6, f = "e" },
					{ t = "accept", quest = 100, title = "Call of Water (8)", map = 1421, x = 38.3, y = 44.6, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 100, title = "Call of Water (8)", npc = 5895, npcName = "the Minor Manifestation of Water", map = 1421, x = 38.8, y = 44.6, f = "e" },
					{ t = "accept", quest = 96, title = "Call of Water (9)", npc = 5895, npcName = "the Minor Manifestation of Water", map = 1421, x = 38.8, y = 44.6, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", map = 1420, x = 60.8, y = 58.8, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 96, title = "Call of Water (9)", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.8, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1130, title = "Melor Sends Word", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.9, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 878, title = "Tribes at War", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.6, y = 59.2, f = "e" },
					{ t = "accept", quest = 5052, title = "Blood Shards of Agamaggan", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.6, y = 59.2, f = "e" },
					{ t = "turnin", quest = 5052, title = "Blood Shards of Agamaggan", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.6, y = 59.2, f = "e" },
					{ t = "accept", quest = 879, title = "Betrayal from Within (1)", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.6, y = 59.2, f = "e" },
				},
			},
			{
				note = "Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3281, title = "Stolen Silver", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.9, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 905, title = "The Angry Scytheclaws", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
					{ t = "accept", quest = 3261, title = "Jorn Skyseer", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 899, title = "Consumed by Hatred", npc = 3432, npcName = "Mankrik", map = 1413, x = 52.0, y = 31.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 880, title = "Altered Beings", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
					{ t = "accept", quest = 1489, title = "Hamuul Runetotem", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 235, title = "The Ashenvale Hunt (1)", npc = 10880, npcName = "Warcaller Gorlach", map = 1454, x = 43.0, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 891, itemName = "Theramore Medal", count = 10, oi = 4, map = 1413, x = 62.0, y = 53.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 891, target = "Captain Fairmount", count = 1, oi = 1, map = 1413, x = 61.9, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 891, target = "Cannoneer Smythe", count = 1, oi = 3, map = 1413, x = 63.1, y = 56.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 891, target = "Cannoneer Whessan", count = 1, oi = 2, map = 1413, x = 60.5, y = 54.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 898, title = "Free From the Hold", npc = 3465, npcName = "Gilthares Firebough", map = 1413, x = 62.0, y = 55.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 891, title = "The Guns of Northwatch", npc = 3339, npcName = "Captain Thalo'thas Brightsun", map = 1413, x = 62.3, y = 39.0, f = "e" },
					{ t = "turnin", quest = 898, title = "Free From the Hold", npc = 3339, npcName = "Captain Thalo'thas Brightsun", map = 1413, x = 62.3, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 851, title = "Verog the Dervish", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6461, title = "Blood Feeders", npc = 12816, npcName = "Xen'Zilla", map = 1442, x = 71.2, y = 95.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1060, title = "Letter to Jin'Zil", npc = 3995, npcName = "Witch Doctor Jin'Zil", map = 1442, x = 74.5, y = 97.9, f = "e" },
					{ t = "accept", quest = 1058, title = "Jin'Zil's Forest Magic", npc = 3995, npcName = "Witch Doctor Jin'Zil", map = 1442, x = 74.5, y = 97.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6461, target = "Deepmoss Creeper", count = 10, oi = 1, map = 1442, x = 69.7, y = 88.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6461, target = "Deepmoss Venomspitter", count = 7, oi = 2, map = 1442, x = 61.3, y = 67.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1069, itemName = "Deepmoss Egg", count = 15, oi = 1, map = 1442, x = 61.0, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1483, title = "Ziz Fizziks", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 59.0, y = 62.6, f = "e" },
					{ t = "accept", quest = 1093, title = "Super Reaper 6000", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 59.0, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1062, target = "Venture Co. Logger", count = 15, oi = 1, map = 1442, x = 64.5, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1093, itemName = "Super Reaper 6000 Blueprints", count = 1, oi = 1, map = 1442, x = 62.6, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1069, itemName = "Deepmoss Egg", count = 15, oi = 1, map = 1442, x = 61.0, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1093, title = "Super Reaper 6000", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 59.0, y = 62.6, f = "e" },
					{ t = "accept", quest = 1094, title = "Further Instructions (1)", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 59.0, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6282, title = "Harpies Threaten", npc = 11860, npcName = "Maggran Earthbinder", map = 1442, x = 47.2, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6301, title = "Cycle of Rebirth", npc = 11864, npcName = "Tammra Windfield", map = 1442, x = 47.5, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1087, title = "Cenarius' Legacy", npc = 4198, npcName = "Braelyn Firehand", map = 1442, x = 45.9, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Sun Rock Retreat", text = "Sun Rock Retreat", map = 1442, x = 45.1, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6421, title = "Boulderslide Ravine", npc = 11861, npcName = "Mor'rogal", map = 1442, x = 47.2, y = 64.2, f = "e" },
					{ t = "accept", quest = 6562, title = "Trouble in the Deeps", npc = 11862, npcName = "Tsunaman", map = 1442, x = 47.2, y = 64.2, f = "e" },
					{ t = "accept", quest = 6393, title = "Elemental War", npc = 11862, npcName = "Tsunaman", map = 1442, x = 47.2, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1442, x = 67.2, y = 88.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6421, itemName = "Resonite Crystal", count = 10, oi = 2, map = 1442, x = 61.3, y = 92.4, f = "e" },
				},
			},
			{
				note = "Go northwest inside the cave to 59,90",
				goals = {
					{ t = "goto", map = 1442, x = 58.9, y = 90.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6461, title = "Blood Feeders", npc = 12816, npcName = "Xen'Zilla", map = 1442, x = 71.2, y = 95.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1062, title = "Goblin Invaders", npc = 4049, npcName = "Seereth Stonebreak", map = 1413, x = 35.2, y = 27.8, f = "e" },
					{ t = "accept", quest = 1063, title = "The Elder Crone", npc = 4049, npcName = "Seereth Stonebreak", map = 1413, x = 35.2, y = 27.8, f = "e" },
					{ t = "accept", quest = 1068, title = "Shredding Machines", npc = 4049, npcName = "Seereth Stonebreak", map = 1413, x = 35.2, y = 27.8, f = "e" },
				},
			},
			{
				note = "Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1094, title = "Further Instructions (1)", npc = 3442, npcName = "Sputtervalve", map = 1413, x = 63.0, y = 37.2, f = "e" },
					{ t = "accept", quest = 1095, title = "Further Instructions (2)", npc = 3442, npcName = "Sputtervalve", map = 1413, x = 63.0, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1069, title = "Deepmoss Spider Eggs", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.4, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1130, title = "Melor Sends Word", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.5, y = 80.9, f = "e" },
					{ t = "accept", quest = 1131, title = "Steelsnap", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.5, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1063, title = "The Elder Crone", npc = 4046, npcName = "Magatha Grimtotem", map = 1456, x = 69.9, y = 30.9, f = "e" },
					{ t = "accept", quest = 1064, title = "Forsaken Aid", npc = 4046, npcName = "Magatha Grimtotem", map = 1456, x = 69.9, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1489, title = "Hamuul Runetotem", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.6, y = 28.5, f = "e" },
					{ t = "accept", quest = 1490, title = "Nara Wildmane", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.6, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1490, title = "Nara Wildmane", npc = 5770, npcName = "Nara Wildmane", map = 1456, x = 75.7, y = 31.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1064, title = "Forsaken Aid", npc = 3419, npcName = "Apothecary Zamah", map = 1456, x = 22.8, y = 20.9, f = "e" },
					{ t = "accept", quest = 1065, title = "Journey to Tarren Mill", npc = 3419, npcName = "Apothecary Zamah", map = 1456, x = 22.8, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 235, title = "The Ashenvale Hunt (1)", npc = 12696, npcName = "Senani Thunderheart", map = 1440, x = 73.8, y = 61.5, f = "e" },
					{ t = "accept", quest = 6383, title = "The Ashenvale Hunt (2)", npc = 12696, npcName = "Senani Thunderheart", map = 1440, x = 73.8, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Splintertree Post", text = "Splintertree Post", map = 1440, x = 73.2, y = 61.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1440, x = 36.6, y = 57.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Zoram'gar Outpost", text = "Zoram'gar Outpost", map = 1440, x = 12.2, y = 33.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6442, title = "Naga at the Zoram Strand", npc = 12719, npcName = "Marukai", map = 1440, x = 11.7, y = 34.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6562, title = "Trouble in the Deeps", npc = 12736, npcName = "Je'neu Sancrea", map = 1440, x = 11.6, y = 34.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6442, itemName = "Wrathtail Head", count = 20, oi = 1, map = 1440, x = 12.6, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6442, title = "Naga at the Zoram Strand", npc = 12719, npcName = "Marukai", map = 1440, x = 11.7, y = 34.9, f = "e" },
				},
			},
			{
				note = "Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
		},
	})
end

