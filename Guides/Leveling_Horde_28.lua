-- TuWoW_Leveling — Guides/Leveling_Horde_28.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-55-60",
		pack = "guides",
		title = "Levels (55-60) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-levels-55-60-part-2",
		author = "TuWoW & Zygor",
		minLevel = 55,
		maxLevel = 60,
		zone = 1449,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 4145, title = "Larion and Muigin", npc = 9118, npcName = "Larion", map = 1449, x = 45.5, y = 8.7, f = "e" },
					{ t = "accept", quest = 4147, title = "Marvon's Workshop", npc = 9118, npcName = "Larion", map = 1449, x = 45.5, y = 8.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4503, title = "Shizzle's Flyer", npc = 9998, npcName = "Shizzle", map = 1449, x = 44.2, y = 11.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4285, title = "The Northern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.9, y = 2.7, f = "e" },
					{ t = "turnin", quest = 4287, title = "The Eastern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.9, y = 2.7, f = "e" },
					{ t = "turnin", quest = 4288, title = "The Western Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.9, y = 2.7, f = "e" },
					{ t = "accept", quest = 4321, title = "Making Sense of It", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.9, y = 2.7, f = "e" },
					{ t = "turnin", quest = 4321, title = "Making Sense of It", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.9, y = 2.7, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 68.4,12.9",
				goals = {
					{ t = "collect", quest = 4301, itemName = "U'cha's Pelt", count = 1, oi = 1, map = 1449, x = 68.4, y = 12.9, f = "e" },
				},
			},
			{
				note = "Inside the cave, go to 68,17",
				goals = {
					{ t = "accept", quest = 4244, title = "Chasing A-Me 01 (2)", npc = 9623, npcName = "A-Me 01", map = 1449, x = 67.6, y = 16.8, f = "e" },
					{ t = "turnin", quest = 4244, title = "Chasing A-Me 01 (2)", npc = 9623, npcName = "A-Me 01", map = 1449, x = 67.6, y = 16.8, f = "e" },
					{ t = "accept", quest = 4245, title = "Chasing A-Me 01 (3)", npc = 9623, npcName = "A-Me 01", map = 1449, x = 67.6, y = 16.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4245, title = "Chasing A-Me 01 (3)", npc = 9618, npcName = "Karna Remtravel", map = 1449, x = 46.4, y = 13.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4301, title = "The Mighty U'cha", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.6, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4504, title = "Super Sticky", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.6, y = 26.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4496, title = "Bungle in the Jungle", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.9, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3761, title = "Un'Goro Soil", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.6, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3761, title = "Un'Goro Soil", npc = 9076, npcName = "Ghede", map = 1456, x = 77.4, y = 22.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3782, title = "Morrowgrain Research (1)", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.6, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3782, title = "Morrowgrain Research (1)", npc = 9087, npcName = "Bashana Runetotem", map = 1456, x = 71.1, y = 34.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4147, title = "Marvon's Workshop", npc = 8496, npcName = "Liv Rizzlefix", map = 1413, x = 62.5, y = 38.7, f = "e" },
					{ t = "turnin", quest = 4502, title = "Volcanic Activity", npc = 8496, npcName = "Liv Rizzlefix", map = 1413, x = 62.5, y = 38.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4133, title = "Vivian Lagrave", npc = 9078, npcName = "Shadowmage Vivian Lagrave", map = 1418, x = 3.0, y = 47.8, f = "e" },
					{ t = "accept", quest = 4061, title = "The Rise of the Machines (1)", npc = 9079, npcName = "Hierophant Theodora Mulvadania", map = 1418, x = 3.0, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3821, title = "Dreadmaul Rock", npc = 9082, npcName = "Thal'trak Proudtusk", map = 1418, x = 3.4, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4296, title = "Tablet of the Seven", npc = 9536, npcName = "Maxwort Uberglint", map = 1428, x = 65.2, y = 23.9, f = "e" },
					{ t = "accept", quest = 4726, title = "Broodling Essence", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.2, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4324, title = "Yuka Screwspigot", npc = 9544, npcName = "Yuka Screwspigot", map = 1428, x = 66.1, y = 21.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4726, itemName = "Broodling Essence", count = 8, oi = 1, map = 1428, x = 85.0, y = 30.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3821, title = "Dreadmaul Rock", npc = 9136, npcName = "Sha'ni Proudtusk", map = 1428, x = 79.9, y = 45.4, f = "e" },
					{ t = "accept", quest = 3822, title = "Krom'Grul", npc = 9136, npcName = "Sha'ni Proudtusk", map = 1428, x = 79.9, y = 45.4, f = "e" },
				},
			},
			{
				note = "Krom'Grul can spawn in any of the 3 caves on this mountain, so you will probably have to search for him:",
				goals = {
					{ t = "collect", quest = 3822, itemName = "Sha'ni's Nose-Ring", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4061, itemName = "Fractured Elemental Shard", count = 10, oi = 1, map = 1428, x = 68.8, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4296, itemName = "Tablet Transcript", count = 1, oi = 1, map = 1428, x = 54.1, y = 40.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4726, title = "Broodling Essence", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.2, y = 23.9, f = "e" },
					{ t = "accept", quest = 4808, title = "Felnok Steelspring", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.2, y = 23.9, f = "e" },
					{ t = "turnin", quest = 4296, title = "Tablet of the Seven", npc = 9536, npcName = "Maxwort Uberglint", map = 1428, x = 65.2, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3822, title = "Krom'Grul", npc = 9082, npcName = "Thal'trak Proudtusk", map = 1418, x = 3.4, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4061, title = "The Rise of the Machines (1)", npc = 9079, npcName = "Hierophant Theodora Mulvadania", map = 1418, x = 3.0, y = 47.8, f = "e" },
					{ t = "accept", quest = 4062, title = "The Rise of the Machines (2)", npc = 9079, npcName = "Hierophant Theodora Mulvadania", map = 1418, x = 3.0, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4062, title = "The Rise of the Machines (2)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4300, title = "Bone-Bladed Weapons", map = 1454, x = 55.6, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1018, title = "The New Frontier", npc = 10880, npcName = "Warcaller Gorlach", map = 1454, x = 43.0, y = 38.4, f = "e" },
					{ t = "accept", quest = 7492, title = "Camp Mojache", npc = 10880, npcName = "Warcaller Gorlach", map = 1454, x = 43.0, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8276, title = "Taking Back Silithus", npc = 15188, npcName = "Cenarion Emissary Blackhoof", map = 1454, x = 47.6, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8460, title = "Timbermaw Ally", npc = 11554, npcName = "Grazle", map = 1448, x = 50.9, y = 85.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5155, title = "Forces of Jaedenar", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.2, y = 82.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Emerald Sanctuary", map = 1448, x = 51.5, y = 82.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5156, title = "Verifying the Corruption", npc = 10921, npcName = "Taronn Redfeather", map = 1448, x = 50.9, y = 81.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8460, target = "Deadwood Warrior", count = 6, oi = 1, map = 1448, x = 49.4, y = 88.9, f = "e" },
					{ t = "kill", quest = 8460, target = "Deadwood Pathfinder", count = 6, oi = 2, map = 1448, x = 49.4, y = 88.9, f = "e" },
					{ t = "kill", quest = 8460, target = "Deadwood Gardener", count = 6, oi = 3, map = 1448, x = 49.4, y = 88.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8460, title = "Timbermaw Ally", npc = 11554, npcName = "Grazle", map = 1448, x = 50.9, y = 85.0, f = "e" },
					{ t = "accept", quest = 8462, title = "Speak to Nafien", npc = 11554, npcName = "Grazle", map = 1448, x = 50.9, y = 85.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4102, title = "Cleansing Felwood", npc = 9529, npcName = "Maybess Riverbreeze", map = 1448, x = 46.8, y = 83.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4293, item = 12230, itemName = "Felwood Slime Sample", count = 15, map = 1448, x = 42.4, y = 67.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5155, target = "Jaedenar Hound", count = 4, oi = 1, map = 1448, x = 39.4, y = 58.2, f = "e" },
					{ t = "kill", quest = 5155, target = "Jaedenar Guardian", count = 4, oi = 2, map = 1448, x = 39.4, y = 58.2, f = "e" },
					{ t = "kill", quest = 5155, target = "Jaedenar Adept", count = 6, oi = 3, map = 1448, x = 39.4, y = 58.2, f = "e" },
					{ t = "kill", quest = 5155, target = "Jaedenar Cultist", count = 6, oi = 4, map = 1448, x = 39.4, y = 58.2, f = "e" },
				},
			},
			{
				note = "Go north to the river and follow the river west to 34.2,52.3",
				goals = {
					{ t = "accept", quest = 4505, title = "Well of Corruption", npc = 9996, npcName = "Winna Hazzard", map = 1448, x = 34.2, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6162, title = "A Husband's Last Battle", npc = 9620, npcName = "Dreka'Sur", map = 1448, x = 34.8, y = 52.7, f = "e" },
					{ t = "accept", quest = 4521, title = "Wild Guardians (1)", npc = 10306, npcName = "Trull Failbaine", map = 1448, x = 34.8, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Bloodvenom Post", map = 1448, x = 34.5, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5156, target = "Entropic Beast", count = 2, oi = 2, map = 1448, x = 42.0, y = 40.3, f = "e" },
					{ t = "kill", quest = 5156, target = "Entropic Horror", count = 2, oi = 3, map = 1448, x = 42.0, y = 40.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4102, itemName = "Blood Amber", count = 15, oi = 1, map = 1448, x = 54.3, y = 16.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4120, target = "Felpaw Ravager", count = 12, oi = 2, map = 1448, x = 56.0, y = 12.5, f = "e" },
					{ t = "kill", quest = 4120, target = "Angerclaw Grizzly", count = 12, oi = 1, map = 1448, x = 56.0, y = 12.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8462, title = "Speak to Nafien", npc = 15395, npcName = "Nafien", map = 1448, x = 64.8, y = 8.1, f = "e" },
					{ t = "accept", quest = 8461, title = "Deadwood of the North", npc = 15395, npcName = "Nafien", map = 1448, x = 64.8, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8461, target = "Deadwood Den Watcher", count = 6, oi = 1, map = 1448, x = 63.1, y = 8.9, f = "e" },
					{ t = "kill", quest = 8461, target = "Deadwood Avenger", count = 6, oi = 2, map = 1448, x = 63.1, y = 8.9, f = "e" },
					{ t = "kill", quest = 8461, target = "Deadwood Shaman", count = 6, oi = 3, map = 1448, x = 63.1, y = 8.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8461, title = "Deadwood of the North", npc = 15395, npcName = "Nafien", map = 1448, x = 64.8, y = 8.1, f = "e" },
					{ t = "accept", quest = 8465, title = "Speak to Salfa", npc = 15395, npcName = "Nafien", map = 1448, x = 64.8, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8465, title = "Speak to Salfa", npc = 11556, npcName = "Salfa", map = 1452, x = 27.7, y = 34.5, f = "e" },
					{ t = "accept", quest = 8464, title = "Winterfall Activity", npc = 11556, npcName = "Salfa", map = 1452, x = 27.7, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 980, title = "The New Springs", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
					{ t = "accept", quest = 4842, title = "Strange Sources", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
					{ t = "turnin", quest = 3908, title = "It's a Secret to Everybody (3)", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
					{ t = "accept", quest = 3909, title = "The Videre Elixir", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
					{ t = "accept", quest = 5082, title = "Threat of the Winterfall", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Everlook", map = 1452, x = 60.5, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Moonglade", map = 1450, x = 32.1, y = 66.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5095, title = "A Call to Arms: The Plaguelands!", npc = 10881, npcName = "Bluff Runner Windstrider", map = 1456, x = 43.4, y = 62.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1018, title = "The New Frontier", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.6, y = 28.5, f = "e" },
					{ t = "accept", quest = 1123, title = "Rabine Saturna", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.6, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4120, title = "The Strength of Corruption", npc = 7776, npcName = "Talo Thornhoof", map = 1444, x = 76.2, y = 43.8, f = "e" },
					{ t = "turnin", quest = 7492, title = "Camp Mojache", npc = 7776, npcName = "Talo Thornhoof", map = 1444, x = 76.2, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 7775, npcName = "Gregan Brewspewer", item = 11141, itemName = "Bait", count = 1, map = 1444, x = 45.1, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 11242, itemName = "Evoroot", count = 1, map = 1444, x = 44.9, y = 10.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3909, itemName = "Videre Elixir", count = 1, oi = 1, map = 1444, x = 45.1, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5155, title = "Forces of Jaedenar", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.2, y = 82.1, f = "e" },
					{ t = "accept", quest = 5157, title = "Collection of the Corrupt Water", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.2, y = 82.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5156, title = "Verifying the Corruption", npc = 10921, npcName = "Taronn Redfeather", map = 1448, x = 50.9, y = 81.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4102, title = "Cleansing Felwood", npc = 9529, npcName = "Maybess Riverbreeze", map = 1448, x = 46.8, y = 83.1, f = "e" },
					{ t = "collect", quest = 5882, item = 11511, itemName = "Cenarion Beacon", count = 1, map = 1448, x = 46.8, y = 83.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5882, item = 11515, itemName = "Corrupted Soul Shard", count = 6, map = 1448, x = 48.6, y = 90.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6162, itemName = "Overlord Ror's Claw", count = 1, oi = 1, map = 1448, x = 48.3, y = 94.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5882, title = "Salve via Hunting", npc = 9529, npcName = "Maybess Riverbreeze", map = 1448, x = 46.8, y = 83.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4505, itemName = "Filled Flasket", count = 1, oi = 1, map = 1448, x = 32.3, y = 66.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5157, itemName = "Corrupt Moonwell Water", count = 1, oi = 1, map = 1448, x = 35.2, y = 59.8, f = "e" },
				},
			},
			{
				note = "Go northeast to the green river, then go west to 34.2,52.3",
				goals = {
					{ t = "turnin", quest = 4505, title = "Well of Corruption", npc = 9996, npcName = "Winna Hazzard", map = 1448, x = 34.2, y = 52.3, f = "e" },
					{ t = "accept", quest = 4506, title = "Corrupted Sabers", npc = 9996, npcName = "Winna Hazzard", map = 1448, x = 34.2, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6162, title = "A Husband's Last Battle", npc = 9620, npcName = "Dreka'Sur", map = 1448, x = 34.8, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 10042, npcName = "Corrupted Saber", map = 1448, x = 32.7, y = 66.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4506, title = "Corrupted Sabers", npc = 9996, npcName = "Winna Hazzard", map = 1448, x = 34.2, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5157, title = "Collection of the Corrupt Water", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.2, y = 82.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1123, title = "Rabine Saturna", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.7, y = 45.1, f = "e" },
					{ t = "accept", quest = 1124, title = "Wasteland", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.7, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5601, title = "Sister Pamela", npc = 11629, npcName = "Jessica Redpath", map = 1452, x = 61.3, y = 39.0, f = "e" },
					{ t = "accept", quest = 6029, title = "The Everlook Report", npc = 10431, npcName = "Gregor Greystone", map = 1452, x = 61.3, y = 39.0, f = "e" },
					{ t = "accept", quest = 6030, title = "Duke Nicholas Zverenhoff", npc = 10431, npcName = "Gregor Greystone", map = 1452, x = 61.3, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Everlook", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4808, title = "Felnok Steelspring", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.6, y = 38.6, f = "e" },
					{ t = "accept", quest = 4809, title = "Chillwind Horns", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.6, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3783, title = "Are We There, Yeti? (1)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.9, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5082, target = "Winterfall Pathfinder", count = 8, oi = 1, map = 1452, x = 40.7, y = 42.7, f = "e" },
					{ t = "kill", quest = 5082, target = "Winterfall Den Watcher", count = 8, oi = 2, map = 1452, x = 40.7, y = 42.7, f = "e" },
					{ t = "kill", quest = 5082, target = "Winterfall Totemic", count = 8, oi = 3, map = 1452, x = 40.7, y = 42.7, f = "e" },
					{ t = "collect", itemName = "an Empty Firewater Flask", count = 1, map = 1452, x = 40.7, y = 42.7, f = "e" },
					{ t = "accept", quest = 5083, title = "Winterfall Firewater", map = 1452, x = 40.7, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3909, title = "The Videre Elixir", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
					{ t = "accept", quest = 3912, title = "Meet at the Grave", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
					{ t = "turnin", quest = 5082, title = "Threat of the Winterfall", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
					{ t = "turnin", quest = 5083, title = "Winterfall Firewater", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3783, itemName = "Thick Yeti Fur", count = 10, oi = 1, map = 1452, x = 64.7, y = 41.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3783, title = "Are We There, Yeti? (1)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.9, y = 37.6, f = "e" },
					{ t = "accept", quest = 977, title = "Are We There. Yeti? (2)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.9, y = 37.6, f = "e" },
				},
			},
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
					{ t = "goto", map = 1452, x = 61.3, y = 38.8, f = "e" },
				},
			},
		},
	})
end

