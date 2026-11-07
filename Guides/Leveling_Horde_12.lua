-- TuWoW_Leveling — Guides/Leveling_Horde_12.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-death-knight-55-60-part-2",
		pack = "guides",
		title = "Death Knight (55-60) (Parte 2/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-death-knight-55-60-part-3",
		author = "TuWoW & Zygor",
		minLevel = 55,
		maxLevel = 60,
		zone = 1454,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", x = 50.4, y = 31.9, f = "e" },
				},
			},
			{
				note = "Follow the path northwest to 33.9,30.4",
				goals = {
					{ t = "turnin", quest = 12800, title = "The Lich King's Command", npc = 31082, npcName = "Scourge Commander Thalanor", x = 33.9, y = 30.4, f = "e" },
					{ t = "accept", quest = 12801, title = "The Light of Dawn", npc = 31082, npcName = "Scourge Commander Thalanor", x = 33.9, y = 30.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 29173, npcName = "Highlord Darion Mograine", x = 34.4, y = 31.1, f = "e" },
				},
			},
			{
				note = "Talk to Highlord Darion Mograine after the battle",
				goals = {
					{ t = "turnin", quest = 12801, title = "The Light of Dawn", f = "e" },
					{ t = "accept", quest = 13165, title = "Taking Back Acherus", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13165, title = "Taking Back Acherus", npc = 29173, npcName = "Highlord Darion Mograine", x = 83.4, y = 49.4, f = "e" },
					{ t = "accept", quest = 13166, title = "The Battle For The Ebon Hold", npc = 29173, npcName = "Highlord Darion Mograine", x = 83.4, y = 49.4, f = "e" },
				},
			},
			{
				note = "Stand on the purple circle to teleport upstairs,0.5|noway|c",
				goals = {
					{ t = "goto", x = 82.7, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13166, target = "Scourge", count = 10, oi = 2, x = 83.0, y = 48.0, f = "e" },
					{ t = "kill", quest = 13166, npc = 31099, target = "Patchwerk", count = 1, oi = 1, x = 83.0, y = 48.0, f = "e" },
				},
			},
			{
				note = "Stand on the purple circle to teleport downstairs,0.5|noway|c",
				goals = {
					{ t = "goto", x = 83.0, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13166, title = "The Battle For The Ebon Hold", npc = 31084, npcName = "Highlord Darion Mograine", x = 83.4, y = 49.4, f = "e" },
					{ t = "accept", quest = 13189, title = "Warchief's Blessing", npc = 31084, npcName = "Highlord Darion Mograine", x = 83.4, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13189, title = "Warchief's Blessing", npc = 4949, npcName = "Thrall", map = 1454, x = 31.8, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8276, title = "Taking Back Silithus", npc = 15188, npcName = "Cenarion Emissary Blackhoof", map = 1454, x = 47.6, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Everlook", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5601, title = "Sister Pamela", npc = 11629, npcName = "Jessica Redpath", map = 1454, x = 61.3, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3783, title = "Are We There, Yeti? (1)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1454, x = 60.9, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5082, title = "Threat of the Winterfall", npc = 9298, npcName = "Donova Snowden", map = 1454, x = 31.3, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5082, target = "Winterfall Totemic", count = 8, oi = 3, map = 1454, x = 39.2, y = 43.5, f = "e" },
					{ t = "kill", quest = 5082, target = "Winterfall Den Watcher", count = 8, oi = 2, map = 1454, x = 39.2, y = 43.5, f = "e" },
					{ t = "kill", quest = 5082, target = "Winterfall Pathfinder", count = 8, oi = 1, map = 1454, x = 39.2, y = 43.5, f = "e" },
					{ t = "accept", quest = 5083, title = "Winterfall Firewater", map = 1454, x = 39.2, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5083, title = "Winterfall Firewater", npc = 9298, npcName = "Donova Snowden", map = 1454, x = 31.3, y = 45.2, f = "e" },
					{ t = "turnin", quest = 5082, title = "Threat of the Winterfall", npc = 9298, npcName = "Donova Snowden", map = 1454, x = 31.3, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3783, itemName = "Thick Yeti Fur", count = 10, oi = 1, map = 1454, x = 64.7, y = 41.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3783, title = "Are We There, Yeti? (1)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1454, x = 60.9, y = 37.6, f = "e" },
					{ t = "accept", quest = 977, title = "Are We There. Yeti? (2)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1454, x = 60.9, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 977, itemName = "Pristine Yeti Horn", count = 2, oi = 1, map = 1454, x = 67.6, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 977, title = "Are We There. Yeti? (2)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1454, x = 60.9, y = 37.6, f = "e" },
					{ t = "accept", quest = 5163, title = "Are We There, Yeti? (3)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1454, x = 60.9, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1454, x = 61.5, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 51.1, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 43.7, y = 9.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8276, title = "Taking Back Silithus", npc = 15191, npcName = "Windcaller Proudhorn", map = 1449, x = 51.2, y = 38.3, f = "e" },
					{ t = "accept", quest = 8280, title = "Securing the Supply Lines", npc = 15191, npcName = "Windcaller Proudhorn", map = 1449, x = 51.2, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8277, title = "Deadly Desert Venom", npc = 15189, npcName = "Beetix Ficklespragg", map = 1449, x = 51.7, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Cenarion Hold", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8284, title = "The Twilight Mystery", npc = 15183, npcName = "Geologist Larksbane", map = 1449, x = 49.7, y = 37.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8280, target = "Dredge Striker", count = 15, oi = 1, map = 1449, x = 54.0, y = 31.0, f = "e" },
					{ t = "collect", quest = 8277, itemName = "Stonelash Scorpid Stinger", count = 8, oi = 1, map = 1449, x = 54.0, y = 31.0, f = "e" },
					{ t = "collect", quest = 8277, itemName = "Sand Skitterer Fang", count = 8, oi = 2, map = 1449, x = 54.0, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8284, itemName = "Twilight Tablet Fragment", count = 8, oi = 1, map = 1449, x = 25.0, y = 10.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8277, title = "Deadly Desert Venom", npc = 15189, npcName = "Beetix Ficklespragg", map = 1449, x = 51.7, y = 38.6, f = "e" },
					{ t = "accept", quest = 8278, title = "Noggle's Last Hope", npc = 15189, npcName = "Beetix Ficklespragg", map = 1449, x = 51.7, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8280, title = "Securing the Supply Lines", npc = 15191, npcName = "Windcaller Proudhorn", map = 1449, x = 51.2, y = 38.3, f = "e" },
					{ t = "accept", quest = 8281, title = "Stepping Up Security", npc = 15191, npcName = "Windcaller Proudhorn", map = 1449, x = 51.2, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8284, title = "The Twilight Mystery", npc = 15183, npcName = "Geologist Larksbane", map = 1449, x = 49.7, y = 37.5, f = "e" },
					{ t = "accept", quest = 8285, title = "The Deserter", npc = 15183, npcName = "Geologist Larksbane", map = 1449, x = 49.7, y = 37.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8281, target = "Dredge Crusher", count = 20, oi = 1, map = 1449, x = 55.0, y = 60.0, f = "e" },
					{ t = "collect", quest = 8278, itemName = "Stonelash Pincer Stinger", count = 3, oi = 2, map = 1449, x = 55.0, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8285, title = "The Deserter", npc = 15194, npcName = "Hermit Ortell", map = 1449, x = 67.2, y = 69.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8278, itemName = "Stonelash Flayer Stinger", count = 3, oi = 1, map = 1449, x = 65.1, y = 70.7, f = "e" },
					{ t = "collect", quest = 8278, itemName = "Rock Stalker Fang", count = 3, oi = 3, map = 1449, x = 65.1, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8281, title = "Stepping Up Security", npc = 15191, npcName = "Windcaller Proudhorn", map = 1449, x = 51.2, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8278, title = "Noggle's Last Hope", npc = 15189, npcName = "Beetix Ficklespragg", map = 1449, x = 51.7, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5093, title = "A Call to Arms: The Plaguelands!", npc = 10880, npcName = "Warcaller Gorlach", map = 1454, x = 43.0, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 50.8, y = 13.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Undercity", f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "The Bulwark", map = 1420, x = 83.57, y = 69.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5093, title = "A Call to Arms: The Plaguelands!", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.1, y = 68.9, f = "e" },
					{ t = "accept", quest = 5096, title = "Scarlet Diversions", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.1, y = 68.9, f = "e" },
					{ t = "collect", quest = 5096, item = 12814, itemName = "Flame in a Bottle", count = 1, map = 1420, x = 83.1, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5021, title = "Better Late Than Never (1)", npc = 10778, npcName = "Janice Felstone", map = 1420, x = 38.4, y = 54.1, f = "e" },
				},
			},
			{
				note = "Go south inside the barn to 39,55",
				goals = {
					{ t = "turnin", quest = 5021, title = "Better Late Than Never (1)", map = 1420, x = 38.7, y = 55.3, f = "e" },
					{ t = "accept", quest = 5023, title = "Better Late Than Never (2)", map = 1420, x = 38.7, y = 55.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 40.7, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5096, title = "Scarlet Diversions", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.1, y = 68.9, f = "e" },
					{ t = "accept", quest = 5098, title = "All Along the Watchtowers", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.1, y = 68.9, f = "e" },
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
					{ t = "collect", itemName = "his Felstone Field Cauldron Key", count = 1, map = 1420, x = 37.0, y = 57.2, f = "e" },
					{ t = "turnin", quest = 5229, title = "Target: Felstone Field", map = 1420, x = 37.0, y = 57.2, f = "e" },
					{ t = "accept", quest = 5230, title = "Return to the Bulwark", map = 1420, x = 37.0, y = 57.2, f = "e" },
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
					{ t = "level", level = 59, f = "e" },
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
					{ t = "collect", itemName = "his Writhing Haunt Cauldron Key", count = 1, map = 1420, x = 53.0, y = 66.0, f = "e" },
					{ t = "turnin", quest = 5233, title = "Target: Writhing Haunt", map = 1420, x = 53.0, y = 66.0, f = "e" },
					{ t = "accept", quest = 5234, title = "Return to the Bulwark", map = 1420, x = 53.0, y = 66.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4984, title = "The Wildlife Suffers Too (1)", npc = 10739, npcName = "Mulgris Deepriver", map = 1420, x = 53.7, y = 64.7, f = "e" },
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
					{ t = "collect", itemName = "his Gahrron's Withering Cauldron Key", count = 1, map = 1420, x = 62.6, y = 58.9, f = "e" },
					{ t = "turnin", quest = 5235, title = "Target: Gahrron's Withering", map = 1420, x = 62.6, y = 58.9, f = "e" },
					{ t = "accept", quest = 5236, title = "Return to the Bulwark", map = 1420, x = 62.6, y = 58.9, f = "e" },
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
				goals = {
					{ t = "fpath", text = "Thondroril River", map = 1422, x = 69.26, y = 49.66, f = "e" },
				},
			},
			{
				note = "Go north up the coast to 4.7,38.3",
				goals = {
					{ t = "accept", quest = 5542, title = "Demon Dogs", npc = 1855, npcName = "Tirion Fordring", map = 1422, x = 4.7, y = 38.3, f = "e" },
					{ t = "accept", quest = 5543, title = "Blood Tinged Skies", npc = 1855, npcName = "Tirion Fordring", map = 1422, x = 4.7, y = 38.3, f = "e" },
					{ t = "accept", quest = 5544, title = "Carrion Grubbage", npc = 1855, npcName = "Tirion Fordring", map = 1422, x = 4.7, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6042, title = "Un-Life's Little Annoyances", npc = 11878, npcName = "Nathanos Blightcaller", map = 1422, x = 23.0, y = 68.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5543, target = "Plaguebat", count = 30, oi = 1, map = 1422, x = 25.1, y = 63.1, f = "e" },
					{ t = "kill", quest = 5542, target = "Plaguehound Runt", count = 20, oi = 1, map = 1422, x = 25.1, y = 63.1, f = "e" },
					{ t = "collect", quest = 5544, itemName = "Slab of Carrion Worm Meat", count = 15, oi = 1, map = 1422, x = 25.1, y = 63.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5601, title = "Sister Pamela", npc = 10926, npcName = "Pamela Redpath", map = 1422, x = 32.4, y = 83.7, f = "e" },
					{ t = "accept", quest = 5149, title = "Pamela's Doll", npc = 10926, npcName = "Pamela Redpath", map = 1422, x = 32.4, y = 83.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Pamela's Doll's Head", count = 1, map = 1422, x = 35.0, y = 84.3, f = "e" },
					{ t = "collect", itemName = "Pamela's Doll's Left Side", count = 1, map = 1422, x = 35.0, y = 84.3, f = "e" },
					{ t = "collect", itemName = "Pamela's Doll's Right Side", count = 1, map = 1422, x = 35.0, y = 84.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5149, title = "Pamela's Doll", npc = 10926, npcName = "Pamela Redpath", map = 1422, x = 32.4, y = 83.7, f = "e" },
					{ t = "accept", quest = 5152, title = "Auntie Marlene", npc = 10926, npcName = "Pamela Redpath", map = 1422, x = 32.4, y = 83.7, f = "e" },
					{ t = "accept", quest = 5241, title = "Uncle Carlin", npc = 10926, npcName = "Pamela Redpath", map = 1422, x = 32.4, y = 83.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5542, target = "Plaguehound", count = 5, oi = 2, map = 1422, x = 46.5, y = 57.9, f = "e" },
					{ t = "kill", quest = 6042, target = "Noxious Plaguebat", count = 20, oi = 1, map = 1422, x = 46.5, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5241, title = "Uncle Carlin", npc = 11063, npcName = "Carlin Redpath", map = 1422, x = 75.7, y = 53.8, f = "e" },
					{ t = "accept", quest = 5211, title = "Defenders of Darrowshire", npc = 11063, npcName = "Carlin Redpath", map = 1422, x = 75.7, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6042, target = "Monstrous Plaguebat", count = 10, oi = 2, map = 1422, x = 58.3, y = 38.4, f = "e" },
					{ t = "kill", quest = 5542, target = "Frenzied Plaguehound", count = 5, oi = 3, map = 1422, x = 58.3, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11064, npcName = "Darrowshire Spirit", map = 1422, x = 61.4, y = 36.7, f = "e" },
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
					{ t = "accept", quest = 5050, title = "Good Luck Charm", npc = 8403, npcName = "Jeremiah Payson", map = 1458, x = 67.6, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5050, title = "Good Luck Charm", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.1, f = "e" },
					{ t = "accept", quest = 5051, title = "Two Halves Become One", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "the Good Luck Other-Half Charm", count = 1, map = 1422, x = 37.8, y = 55.8, f = "e" },
					{ t = "collect", quest = 5051, itemName = "Good Luck Charm", count = 1, oi = 1, map = 1422, x = 37.8, y = 55.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5051, title = "Two Halves Become One", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4984, target = "Diseased Wolf", count = 8, oi = 1, map = 1422, x = 42.8, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4984, title = "The Wildlife Suffers Too (1)", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.7, y = 64.7, f = "e" },
					{ t = "accept", quest = 4985, title = "The Wildlife Suffers Too (2)", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.7, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4985, target = "Diseased Grizzly", count = 8, oi = 1, map = 1422, x = 58.0, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4985, title = "The Wildlife Suffers Too (2)", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.7, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5152, title = "Auntie Marlene", npc = 10927, npcName = "Marlene Redpath", map = 1422, x = 48.9, y = 78.4, f = "e" },
					{ t = "accept", quest = 5153, title = "A Strange Historian", npc = 10927, npcName = "Marlene Redpath", map = 1422, x = 48.9, y = 78.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5153, itemName = "Joseph's Wedding Ring", count = 1, oi = 1, map = 1422, x = 49.7, y = 76.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1422, x = 46.7, y = 71.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1422, x = 40.1, y = 71.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5153, title = "A Strange Historian", npc = 10667, npcName = "Chromie", map = 1422, x = 39.5, y = 66.8, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-death-knight-55-60-part-3",
		pack = "guides",
		title = "Death Knight (55-60) (Parte 3/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-outland-60-62",
		author = "TuWoW & Zygor",
		minLevel = 55,
		maxLevel = 60,
		zone = 1454,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", map = 1422, x = 42.3, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1422, x = 44.3, y = 63.4, f = "e" },
				},
			},
			{
				note = "Go north up the coast to 5,38",
				goals = {
					{ t = "turnin", quest = 5542, title = "Demon Dogs", npc = 1855, npcName = "Tirion Fordring", map = 1422, x = 4.7, y = 38.3, f = "e" },
					{ t = "turnin", quest = 5543, title = "Blood Tinged Skies", npc = 1855, npcName = "Tirion Fordring", map = 1422, x = 4.7, y = 38.3, f = "e" },
					{ t = "turnin", quest = 5544, title = "Carrion Grubbage", npc = 1855, npcName = "Tirion Fordring", map = 1422, x = 4.7, y = 38.3, f = "e" },
					{ t = "accept", quest = 5742, title = "Redemption", npc = 1855, npcName = "Tirion Fordring", map = 1422, x = 4.7, y = 38.3, f = "e" },
					{ t = "turnin", quest = 5742, title = "Redemption", npc = 1855, npcName = "Tirion Fordring", map = 1422, x = 4.7, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6042, title = "Un-Life's Little Annoyances", npc = 11878, npcName = "Nathanos Blightcaller", map = 1422, x = 23.0, y = 68.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5211, title = "Defenders of Darrowshire", npc = 11063, npcName = "Carlin Redpath", map = 1422, x = 75.7, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5098, title = "All Along the Watchtowers", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.1, y = 68.9, f = "e" },
					{ t = "accept", quest = 838, title = "Scholomance", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.1, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 838, title = "Scholomance", npc = 11057, npcName = "Apothecary Dithers", map = 1420, x = 83.3, y = 69.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 60.8, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5163, title = "Are We There. Yeti? (3)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.9, y = 37.6, f = "e" },
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

