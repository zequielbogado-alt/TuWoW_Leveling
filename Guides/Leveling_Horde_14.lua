-- TuWoW_Leveling — Guides/Leveling_Horde_14.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-main-guide-13-20-part-2",
		pack = "guides",
		title = "Main Guide (13-20) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 13,
		maxLevel = 20,
		zone = 1413,
		version = 1,
		steps = {
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
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 31, title = "Aquatic Form", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.0, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 51.0, y = 14.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 450, title = "A Recipe For Death (2)", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.8, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 422, title = "Arugal's Folly (1)", npc = 1938, npcName = "Dalar Dawnweaver", map = 1458, x = 44.2, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 477, title = "Border Crossings", npc = 2121, npcName = "Shadow Priest Allister", map = 1458, x = 44.0, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "The Sepulcher", text = "The Sepulcher", map = 1458, x = 43.2, y = 41.3, f = "e" },
				},
			},
			{
				note = "Go inside the crypt to 43.4,40.9",
				goals = {
					{ t = "accept", quest = 438, title = "The Decrepit Ferry", npc = 1952, npcName = "High Executor Hadrec", map = 1458, x = 43.4, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 3155, itemName = "Remedy of Arugal", count = 1, map = 1458, x = 52.8, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 438, title = "The Decrepit Ferry", map = 1458, x = 58.4, y = 34.8, f = "e" },
					{ t = "accept", quest = 439, title = "Rot Hide Clues", map = 1458, x = 58.4, y = 34.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 422, title = "Arugal's Folly (1)", npc = 1938, npcName = "Dalar Dawnweaver", map = 1458, x = 44.2, y = 39.8, f = "e" },
					{ t = "accept", quest = 423, title = "Arugal's Folly (2)", npc = 1938, npcName = "Dalar Dawnweaver", map = 1458, x = 44.2, y = 39.8, f = "e" },
				},
			},
			{
				note = "Go inside the crypt to 43.4,40.9",
				goals = {
					{ t = "turnin", quest = 439, title = "Rot Hide Clues", npc = 1952, npcName = "High Executor Hadrec", map = 1458, x = 43.4, y = 40.9, f = "e" },
					{ t = "accept", quest = 443, title = "Rot Hide Ichor", npc = 1952, npcName = "High Executor Hadrec", map = 1458, x = 43.4, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Rot Hide Gnolls", count = 1, map = 1458, x = 65.8, y = 29.4, f = "e" },
					{ t = "collect", quest = 443, itemName = "Rot Hide Ichor", count = 8, oi = 1, map = 1458, x = 65.8, y = 29.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Moonrage Gluttons", count = 1, map = 1458, x = 54.7, y = 48.4, f = "e" },
					{ t = "collect", quest = 423, itemName = "Glutton Shackle", count = 6, oi = 1, map = 1458, x = 54.7, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Moonrage Darksouls", count = 1, f = "e" },
					{ t = "collect", quest = 423, itemName = "Darksoul Shackle", count = 3, oi = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 477, title = "Border Crossings", map = 1458, x = 49.9, y = 60.5, f = "e" },
					{ t = "accept", quest = 478, title = "Maps and Runes", map = 1458, x = 49.9, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 450, itemName = "Berard's Journal", count = 1, oi = 1, map = 1458, x = 43.0, y = 73.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 443, title = "Rot Hide Ichor", npc = 1937, npcName = "Apothecary Renferrel", map = 1458, x = 42.8, y = 40.9, f = "e" },
					{ t = "accept", quest = 444, title = "Rot Hide Origins", npc = 1937, npcName = "Apothecary Renferrel", map = 1458, x = 42.8, y = 40.9, f = "e" },
					{ t = "turnin", quest = 450, title = "A Recipe For Death (2)", npc = 1937, npcName = "Apothecary Renferrel", map = 1458, x = 42.8, y = 40.9, f = "e" },
					{ t = "accept", quest = 451, title = "A Recipe For Death (3)", npc = 1937, npcName = "Apothecary Renferrel", map = 1458, x = 42.8, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 478, title = "Maps and Runes", npc = 2121, npcName = "Shadow Priest Allister", map = 1458, x = 44.0, y = 40.9, f = "e" },
					{ t = "accept", quest = 481, title = "Dalar's Analysis", npc = 2121, npcName = "Shadow Priest Allister", map = 1458, x = 44.0, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 422, title = "Arugal's Folly (2)", npc = 1938, npcName = "Dalar Dawnweaver", map = 1458, x = 44.2, y = 39.8, f = "e" },
					{ t = "accept", quest = 424, title = "Arugal's Folly (3)", npc = 1938, npcName = "Dalar Dawnweaver", map = 1458, x = 44.2, y = 39.8, f = "e" },
					{ t = "turnin", quest = 481, title = "Dalar's Analysis", npc = 1938, npcName = "Dalar Dawnweaver", map = 1458, x = 44.2, y = 39.8, f = "e" },
					{ t = "accept", quest = 482, title = "Dalaran's Intentions", npc = 1938, npcName = "Dalar Dawnweaver", map = 1458, x = 44.2, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 482, title = "Dalaran's Intentions", npc = 2121, npcName = "Shadow Priest Allister", map = 1458, x = 44.0, y = 40.9, f = "e" },
					{ t = "accept", quest = 479, title = "Ambermill Investigations", npc = 2121, npcName = "Shadow Priest Allister", map = 1458, x = 44.0, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Lake Skulkers", count = 1, map = 1458, x = 72.1, y = 35.7, f = "e" },
					{ t = "collect", quest = 451, itemName = "Lake Skulker Moss", count = 6, oi = 1, map = 1458, x = 72.1, y = 35.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Vile Fin Murlocs", count = 1, map = 1458, x = 76.6, y = 32.3, f = "e" },
					{ t = "collect", quest = 451, itemName = "Hardened Tumor", count = 1, oi = 3, map = 1458, x = 76.6, y = 32.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Lake Creepers", count = 1, map = 1458, x = 77.8, y = 27.0, f = "e" },
					{ t = "collect", quest = 451, itemName = "Lake Creeper Moss", count = 6, oi = 2, map = 1458, x = 77.8, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 424, itemName = "Head of Grimson", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 424, title = "Arugal's Folly (3)", npc = 1938, npcName = "Dalar Dawnweaver", map = 1458, x = 44.2, y = 39.8, f = "e" },
					{ t = "accept", quest = 99, title = "Arugal's Folly (4)", npc = 1938, npcName = "Dalar Dawnweaver", map = 1458, x = 44.2, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Dalaran mobs", count = 1, map = 1458, x = 59.8, y = 64.3, f = "e" },
					{ t = "collect", quest = 479, itemName = "Dalaran Pendant", count = 8, oi = 1, map = 1458, x = 59.8, y = 64.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Pyrewood Village mobs", count = 1, map = 1458, x = 47.9, y = 72.1, f = "e" },
					{ t = "collect", quest = 99, itemName = "Pyrewood Shackle", count = 6, oi = 1, map = 1458, x = 47.9, y = 72.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 479, title = "Ambermill Investigations", npc = 2121, npcName = "Shadow Priest Allister", map = 1458, x = 44.0, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 99, title = "Arugal's Folly (4)", npc = 1938, npcName = "Dalar Dawnweaver", map = 1458, x = 44.2, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 18, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 444, title = "Rot Hide Origins", npc = 1498, npcName = "Bethor Iceshard", map = 1458, x = 84.1, y = 17.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 451, title = "A Recipe For Death (3)", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.8, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 60.8, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "The Crossroads", text = "The Crossroads", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6541, title = "Report to Kadrak", npc = 3429, npcName = "Thork", map = 1420, x = 51.5, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 853, title = "Apothecary Zamah", npc = 3390, npcName = "Apothecary Helbrim", map = 1420, x = 51.4, y = 30.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 868, title = "Egg Hunt", npc = 3428, npcName = "Korran", map = 1420, x = 51.1, y = 29.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 49.3, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 893, title = "Weapons of Choice", npc = 3433, npcName = "Tatternack Steelforge", map = 1420, x = 45.1, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 878, title = "Tribes at War", npc = 3430, npcName = "Mangletooth", map = 1420, x = 44.6, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Camp Taurajo", text = "Camp Taurajo", map = 1413, x = 44.4, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 853, title = "Apothecary Zamah", npc = 3419, npcName = "Apothecary Zamah", map = 1456, x = 22.8, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Thunder Bluff", text = "Thunder Bluff", map = 1456, x = 47.0, y = 49.9, f = "e" },
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
					{ t = "turnin", quest = 4921, title = "Lost in Battle", npc = 3432, npcName = "Mankrik", map = 1413, x = 52.0, y = 31.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 903, itemName = "Prowler Claws", count = 7, oi = 1, map = 1413, x = 41.2, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 875, itemName = "Harpy Lieutenant Ring", count = 6, oi = 1, map = 1413, x = 39.9, y = 17.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 865, itemName = "Intact Raptor Horn", count = 5, oi = 1, map = 1413, x = 45.5, y = 13.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 894, title = "Samophlange (1)", map = 1413, x = 52.4, y = 11.6, f = "e" },
					{ t = "accept", quest = 900, title = "Samophlange (2)", map = 1413, x = 52.4, y = 11.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 52.3, y = 11.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 52.3, y = 11.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 52.4, y = 11.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 900, title = "Samophlange (2)", map = 1413, x = 52.4, y = 11.6, f = "e" },
					{ t = "accept", quest = 901, title = "Samophlange (3)", map = 1413, x = 52.4, y = 11.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 901, itemName = "Console Key", count = 1, oi = 1, map = 1413, x = 52.8, y = 10.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 901, title = "Samophlange (3)", map = 1413, x = 52.4, y = 11.6, f = "e" },
					{ t = "accept", quest = 902, title = "Samophlange (4)", map = 1413, x = 52.4, y = 11.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 858, title = "Ignition", npc = 3439, npcName = "Wizzlecrank's Shredder", map = 1413, x = 56.5, y = 7.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 858, itemName = "Ignition Key", count = 1, oi = 1, map = 1413, x = 56.2, y = 8.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 858, title = "Ignition", npc = 3439, npcName = "Wizzlecrank's Shredder", map = 1413, x = 56.5, y = 7.5, f = "e" },
					{ t = "accept", quest = 863, title = "The Escape", npc = 3439, npcName = "Wizzlecrank's Shredder", map = 1413, x = 56.5, y = 7.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 896, itemName = "Cats Eye Emerald", count = 1, oi = 1, map = 1413, x = 61.5, y = 5.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 19, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 902, title = "Samophlange (4)", npc = 3442, npcName = "Sputtervalve", map = 1413, x = 63.0, y = 37.2, f = "e" },
					{ t = "turnin", quest = 863, title = "The Escape", npc = 3442, npcName = "Sputtervalve", map = 1413, x = 63.0, y = 37.2, f = "e" },
					{ t = "accept", quest = 1483, title = "Ziz Fizziks", npc = 3442, npcName = "Sputtervalve", map = 1413, x = 63.0, y = 37.2, f = "e" },
					{ t = "accept", quest = 3921, title = "Wenikee Boltbucket", npc = 3442, npcName = "Sputtervalve", map = 1413, x = 63.0, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 896, title = "Miner's Fortune", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.4, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 865, title = "Raptor Horns", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.4, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 851, itemName = "Verog's Head", count = 1, oi = 1, map = 1413, x = 52.9, y = 41.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 55.6, y = 42.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 877, title = "The Stagnant Oasis", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
					{ t = "accept", quest = 880, title = "Altered Beings", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 903, title = "Prowlers of the Barrens", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
					{ t = "accept", quest = 881, title = "Echeyakee", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 875, title = "Harpy Lieutenants", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.6, y = 30.9, f = "e" },
					{ t = "accept", quest = 876, title = "Serena Bloodfeather", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.6, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 881, itemName = "Echeyakee's Hide", count = 1, oi = 1, map = 1413, x = 55.8, y = 17.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3921, title = "Wenikee Boltbucket", npcName = "Wenikee Boltbucket", map = 1413, x = 49.0, y = 11.2, f = "e" },
					{ t = "accept", quest = 3922, title = "Nugget Slugs", npcName = "Wenikee Boltbucket", map = 1413, x = 49.0, y = 11.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3922, item = 11143, itemName = "Nugget Slug", count = 15, map = 1413, x = 56.7, y = 8.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3922, title = "Nugget Slugs", npc = 9316, npcName = "Wenikee Boltbucket", map = 1413, x = 49.0, y = 11.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6541, title = "Report to Kadrak", npc = 8582, npcName = "Kadrak", map = 1413, x = 48.1, y = 5.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 876, itemName = "Serena's Head", count = 1, oi = 1, map = 1413, x = 39.2, y = 12.1, f = "e" },
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
					{ t = "turnin", quest = 881, title = "Echeyakee", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
					{ t = "accept", quest = 905, title = "The Angry Scytheclaws", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 876, title = "Serena Bloodfeather", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.6, y = 30.9, f = "e" },
					{ t = "accept", quest = 1060, title = "Letter to Jin'Zil", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.6, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 880, itemName = "Altered Snapjaw Shell", count = 8, oi = 1, map = 1413, x = 55.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 20, f = "e" },
				},
			},
		},
	})
end

