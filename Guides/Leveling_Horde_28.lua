-- TuWoW_Leveling — Guides/Leveling_Horde_28.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-55-60-part-2",
		pack = "guides",
		title = "Levels (55-60) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 57,
		maxLevel = 60,
		zone = 1449,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 977, itemName = "Pristine Yeti Horn", count = 2, oi = 1, map = 1452, x = 66.0, y = 43.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1452, x = 60.1, y = 73.5, f = "e" },
				},
			},
			{
				note = "Hearth to Everlook,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1452, x = 61.3, y = 38.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 977, title = "Are We There. Yeti? (2)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.9, y = 37.6, f = "e" },
					{ t = "accept", quest = 5163, title = "Are We There, Yeti? (3)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.9, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1452, x = 61.5, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8464, target = "Winterfall Shaman", count = 8, oi = 1, map = 1452, x = 67.0, y = 35.0, f = "e" },
					{ t = "kill", quest = 8464, target = "Winterfall Den Watcher", count = 8, oi = 2, map = 1452, x = 67.0, y = 35.0, f = "e" },
					{ t = "kill", quest = 8464, target = "Winterfall Ursa", count = 8, oi = 3, map = 1452, x = 67.0, y = 35.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4842, title = "Strange Sources", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8464, title = "Winterfall Activity", npc = 11556, npcName = "Salfa", map = 1452, x = 27.7, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1452, x = 38.5, y = 38.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4521, target = "Raging Owlbeast", count = 15, oi = 1, map = 1452, x = 59.3, y = 28.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4809, itemName = "Uncracked Chillwind Horn", count = 8, oi = 1, map = 1452, x = 61.0, y = 22.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4809, title = "Chillwind Horns", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.6, y = 38.6, f = "e" },
					{ t = "accept", quest = 4810, title = "Return to Tinkee", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.6, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4521, title = "Wild Guardians (1)", npc = 10306, npcName = "Trull Failbaine", map = 1448, x = 34.7, y = 52.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 51.1, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 54.1, y = 28.4, f = "e" },
				},
			},
			{
				note = "As a spirit, go north to 54,23.4",
				goals = {
					{ t = "turnin", quest = 3912, title = "Meet at the Grave", npc = 9299, npcName = "Gaeriyan", map = 1446, x = 54.0, y = 23.4, f = "e" },
					{ t = "accept", quest = 3913, title = "A Grave Situation", npc = 9299, npcName = "Gaeriyan", map = 1446, x = 54.0, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3913, title = "A Grave Situation", map = 1446, x = 53.8, y = 29.1, f = "e" },
					{ t = "accept", quest = 3914, title = "Linken's Sword", map = 1446, x = 53.8, y = 29.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 43.7, y = 9.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3914, title = "Linken's Sword", npc = 8737, npcName = "Linken", map = 1449, x = 44.7, y = 8.1, f = "e" },
					{ t = "accept", quest = 3941, title = "A Gnome's Assistance", npc = 8737, npcName = "Linken", map = 1449, x = 44.7, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3941, title = "A Gnome's Assistance", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.9, y = 2.7, f = "e" },
					{ t = "accept", quest = 3942, title = "Linken's Memory", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.9, y = 2.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 29.2, y = 22.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1124, title = "Wasteland", npc = 13220, npcName = "Layo Starstrike", map = 1451, x = 81.8, y = 18.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8276, title = "Taking Back Silithus", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.2, y = 38.3, f = "e" },
					{ t = "accept", quest = 8280, title = "Securing the Supply Lines", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.2, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Cenarion Hold", text = "Cenarion Hold", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8277, title = "Deadly Desert Venom", npc = 15189, npcName = "Beetix Ficklespragg", map = 1451, x = 51.7, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8284, title = "The Twilight Mystery", npc = 15183, npcName = "Geologist Larksbane", map = 1451, x = 49.7, y = 37.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Cenarion Hold", text = "Cenarion Hold", map = 1451, x = 48.7, y = 36.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8280, target = "Dredge Striker", count = 15, oi = 1, map = 1451, x = 54.0, y = 31.0, f = "e" },
					{ t = "collect", quest = 8277, itemName = "Stonelash Scorpid Stinger", count = 8, oi = 1, map = 1451, x = 54.0, y = 31.0, f = "e" },
					{ t = "collect", quest = 8277, itemName = "Sand Skitterer Fang", count = 8, oi = 2, map = 1451, x = 54.0, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8284, itemName = "Twilight Tablet Fragment", count = 8, oi = 1, map = 1451, x = 25.0, y = 10.0, f = "e" },
				},
			},
			{
				note = "Hearth to Cenarion Hold|goto Silithus,51.9,39.2,0.3|noway|use hearthstone##6948|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8277, title = "Deadly Desert Venom", npc = 15189, npcName = "Beetix Ficklespragg", map = 1451, x = 51.7, y = 38.6, f = "e" },
					{ t = "accept", quest = 8278, title = "Noggle's Last Hope", npc = 15189, npcName = "Beetix Ficklespragg", map = 1451, x = 51.7, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8280, title = "Securing the Supply Lines", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.2, y = 38.3, f = "e" },
					{ t = "accept", quest = 8281, title = "Stepping Up Security", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.2, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8284, title = "The Twilight Mystery", npc = 15183, npcName = "Geologist Larksbane", map = 1451, x = 49.7, y = 37.5, f = "e" },
					{ t = "accept", quest = 8285, title = "The Deserter", npc = 15183, npcName = "Geologist Larksbane", map = 1451, x = 49.7, y = 37.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8281, target = "Dredge Crusher", count = 20, oi = 1, map = 1451, x = 55.0, y = 60.0, f = "e" },
					{ t = "collect", quest = 8278, itemName = "Stonelash Pincer Stinger", count = 3, oi = 2, map = 1451, x = 55.0, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8285, title = "The Deserter", npc = 15194, npcName = "Hermit Ortell", map = 1451, x = 67.2, y = 69.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8278, itemName = "Stonelash Flayer Stinger", count = 3, oi = 1, map = 1451, x = 65.0, y = 75.0, f = "e" },
					{ t = "collect", quest = 8278, itemName = "Rock Stalker Fang", count = 3, oi = 3, map = 1451, x = 65.0, y = 75.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8281, title = "Stepping Up Security", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.2, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8278, title = "Noggle's Last Hope", npc = 15189, npcName = "Beetix Ficklespragg", map = 1451, x = 51.7, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3942, title = "Linken's Memory", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.3, y = 81.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4810, title = "Return to Tinkee", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.2, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4293, itemName = "Corrupted Felwood Sample", count = 5, oi = 1, map = 1458, x = 47.5, y = 73.1, f = "e" },
					{ t = "collect", quest = 4294, itemName = "Pure Un'Goro Sample", count = 5, oi = 1, map = 1458, x = 47.5, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4293, title = "A Sample of Slime...", npc = 10136, npcName = "Chemist Fuely", map = 1458, x = 47.5, y = 73.1, f = "e" },
					{ t = "turnin", quest = 4294, title = "... and a Batch of Ooze", npc = 10136, npcName = "Chemist Fuely", map = 1458, x = 47.5, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3570, title = "Seeping Corruption (3)", npc = 8390, npcName = "Chemist Cuely", map = 1458, x = 48.4, y = 71.8, f = "e" },
					{ t = "turnin", quest = 3570, title = "Seeping Corruption (3)", npc = 8390, npcName = "Chemist Cuely", map = 1458, x = 48.4, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Undercity", text = "Undercity", f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "The Bulwark", text = "The Bulwark", map = 1420, x = 83.57, y = 69.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5095, title = "A Call to Arms: The Plaguelands!", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.1, y = 68.9, f = "e" },
					{ t = "accept", quest = 5096, title = "Scarlet Diversions", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.1, y = 68.9, f = "e" },
					{ t = "collect", quest = 5096, item = 12814, itemName = "Flame in a Bottle", count = 1, map = 1420, x = 83.1, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6029, title = "The Everlook Report", npc = 10839, npcName = "Argent Officer Garush", map = 1420, x = 83.2, y = 68.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5021, title = "Better Late Than Never (1)", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.1, f = "e" },
				},
			},
			{
				note = "Go south inside the barn to 39,55",
				goals = {
					{ t = "turnin", quest = 5021, title = "Better Late Than Never (1)", map = 1422, x = 38.7, y = 55.3, f = "e" },
					{ t = "accept", quest = 5023, title = "Better Late Than Never (2)", map = 1422, x = 38.7, y = 55.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1422, x = 40.7, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5096, title = "Scarlet Diversions", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.1, y = 68.9, f = "e" },
					{ t = "accept", quest = 5228, title = "The Scourge Cauldrons", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.1, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5228, title = "The Scourge Cauldrons", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.0, y = 71.9, f = "e" },
					{ t = "accept", quest = 5229, title = "Target: Felstone Field", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.0, y = 71.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "his Felstone Field Cauldron Key", count = 1, map = 1422, x = 37.0, y = 57.2, f = "e" },
					{ t = "turnin", quest = 5229, title = "Target: Felstone Field", map = 1422, x = 37.0, y = 57.2, f = "e" },
					{ t = "accept", quest = 5230, title = "Return to the Bulwark", map = 1422, x = 37.0, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5230, title = "Return to the Bulwark", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.0, y = 71.9, f = "e" },
					{ t = "accept", quest = 5231, title = "Target: Dalson's Tears", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.0, y = 71.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "his Dalson's Tears Cauldron Key", count = 1, map = 1422, x = 46.2, y = 52.5, f = "e" },
					{ t = "turnin", quest = 5231, title = "Target: Dalson's Tears", map = 1422, x = 46.2, y = 52.5, f = "e" },
					{ t = "accept", quest = 5232, title = "Return to the Bulwark", map = 1422, x = 46.2, y = 52.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5232, title = "Return to the Bulwark", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.0, y = 71.9, f = "e" },
					{ t = "accept", quest = 5233, title = "Target: Writhing Haunt", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.0, y = 71.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "his Writhing Haunt Cauldron Key", count = 1, map = 1422, x = 53.0, y = 66.0, f = "e" },
					{ t = "turnin", quest = 5233, title = "Target: Writhing Haunt", map = 1422, x = 53.0, y = 66.0, f = "e" },
					{ t = "accept", quest = 5234, title = "Return to the Bulwark", map = 1422, x = 53.0, y = 66.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5234, title = "Return to the Bulwark", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.0, y = 71.9, f = "e" },
					{ t = "accept", quest = 5235, title = "Target: Gahrron's Withering", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.0, y = 71.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "his Gahrron's Withering Cauldron Key", count = 1, map = 1422, x = 62.6, y = 58.9, f = "e" },
					{ t = "turnin", quest = 5235, title = "Target: Gahrron's Withering", map = 1422, x = 62.6, y = 58.9, f = "e" },
					{ t = "accept", quest = 5236, title = "Return to the Bulwark", map = 1422, x = 62.6, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5236, title = "Return to the Bulwark", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.0, y = 71.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5237, title = "Mission Accomplished!", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.1, y = 68.9, f = "e" },
				},
			},
			{
				note = "Go north up the coast to 5,38",
				goals = {
					{ t = "accept", quest = 5542, title = "Demon Dogs", npc = 1855, npcName = "Tirion Fordring", map = 1420, x = 4.7, y = 38.3, f = "e" },
					{ t = "accept", quest = 5543, title = "Blood Tinged Skies", npc = 1855, npcName = "Tirion Fordring", map = 1420, x = 4.7, y = 38.3, f = "e" },
					{ t = "accept", quest = 5544, title = "Carrion Grubbage", npc = 1855, npcName = "Tirion Fordring", map = 1420, x = 4.7, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6042, title = "Un-Life's Little Annoyances", npc = 11878, npcName = "Nathanos Blightcaller", map = 1420, x = 23.0, y = 68.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5542, target = "Plaguehound Runt", count = 20, oi = 1, map = 1420, x = 25.1, y = 63.1, f = "e" },
					{ t = "kill", quest = 5543, target = "Plaguebat", count = 30, oi = 1, map = 1420, x = 25.1, y = 63.1, f = "e" },
					{ t = "collect", quest = 5544, itemName = "Slab of Carrion Worm Meat", count = 15, oi = 1, map = 1420, x = 25.1, y = 63.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5601, title = "Sister Pamela", npc = 10926, npcName = "Pamela Redpath", map = 1420, x = 32.4, y = 83.7, f = "e" },
					{ t = "accept", quest = 5149, title = "Pamela's Doll", npc = 10926, npcName = "Pamela Redpath", map = 1420, x = 32.4, y = 83.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Pamela's Doll's Head", count = 1, map = 1420, x = 35.0, y = 84.3, f = "e" },
					{ t = "collect", itemName = "Pamela's Doll's Left Side", count = 1, map = 1420, x = 35.0, y = 84.3, f = "e" },
					{ t = "collect", itemName = "Pamela's Doll's Right Side", count = 1, map = 1420, x = 35.0, y = 84.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5149, title = "Pamela's Doll", npc = 10926, npcName = "Pamela Redpath", map = 1420, x = 32.4, y = 83.7, f = "e" },
					{ t = "accept", quest = 5241, title = "Uncle Carlin", npc = 10926, npcName = "Pamela Redpath", map = 1420, x = 32.4, y = 83.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5542, target = "Plaguehound", count = 5, oi = 2, map = 1420, x = 46.5, y = 57.9, f = "e" },
					{ t = "kill", quest = 6042, target = "Noxious Plaguebat", count = 20, oi = 1, map = 1420, x = 46.5, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Light's Hope Chapel", text = "Light's Hope Chapel", map = 1420, x = 74.5, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6030, title = "Duke Nicholas Zverenhoff", npc = 11039, npcName = "Duke Nicholas Zverenhoff", map = 1420, x = 75.7, y = 53.9, f = "e" },
					{ t = "turnin", quest = 5241, title = "Uncle Carlin", npc = 11063, npcName = "Carlin Redpath", map = 1420, x = 75.7, y = 53.9, f = "e" },
					{ t = "accept", quest = 5211, title = "Defenders of Darrowshire", npc = 11063, npcName = "Carlin Redpath", map = 1420, x = 75.7, y = 53.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 61.4, y = 36.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6042, target = "Monstrous Plaguebat", count = 10, oi = 2, map = 1420, x = 58.3, y = 38.4, f = "e" },
					{ t = "kill", quest = 5542, target = "Frenzied Plaguehound", count = 5, oi = 3, map = 1420, x = 58.3, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5211, title = "Defenders of Darrowshire", npc = 11063, npcName = "Carlin Redpath", map = 1420, x = 75.7, y = 53.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6042, title = "Un-Life's Little Annoyances", npc = 11878, npcName = "Nathanos Blightcaller", map = 1420, x = 23.0, y = 68.2, f = "e" },
				},
			},
			{
				note = "Go northwest along the coast to 5,38",
				goals = {
					{ t = "turnin", quest = 5542, title = "Demon Dogs", npc = 1855, npcName = "Tirion Fordring", map = 1420, x = 4.7, y = 38.3, f = "e" },
					{ t = "turnin", quest = 5543, title = "Blood Tinged Skies", npc = 1855, npcName = "Tirion Fordring", map = 1420, x = 4.7, y = 38.3, f = "e" },
					{ t = "turnin", quest = 5544, title = "Carrion Grubbage", npc = 1855, npcName = "Tirion Fordring", map = 1420, x = 4.7, y = 38.3, f = "e" },
					{ t = "accept", quest = 5742, title = "Redemption", npc = 1855, npcName = "Tirion Fordring", map = 1420, x = 4.7, y = 38.3, f = "e" },
					{ t = "turnin", quest = 5742, title = "Redemption", npc = 1855, npcName = "Tirion Fordring", map = 1420, x = 4.7, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5023, title = "Better Late Than Never (2)", npc = 10781, npcName = "Royal Overseer Bauhaus", map = 1458, x = 69.8, y = 43.1, f = "e" },
					{ t = "accept", quest = 5049, title = "The Jeremiah Blues", npc = 10781, npcName = "Royal Overseer Bauhaus", map = 1458, x = 69.8, y = 43.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5049, title = "The Jeremiah Blues", npc = 8403, npcName = "Jeremiah Payson", map = 1458, x = 67.6, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 60.8, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5163, title = "Are We There, Yeti? (3)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.9, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 51.0, y = 14.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1458, x = 85.3, y = 17.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 60, f = "e" },
				},
			},
		},
	})
end

