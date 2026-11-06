-- TuWoW_Leveling — Guides/Class_11.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-warlock-class-quests",
		pack = "guides",
		title = "Warlock Class Quests (Parte 1/2)",
		category = "Class",
		faction = "Horde",
		next = "zygor/leveling/h-warlock-class-quests-part-2",
		author = "TuWoW & Zygor",
		zone = 1411,
		version = 1,
		classes = { "WARLOCK" },
		steps = {
			{
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1485, title = "Vile Familiars", npc = 5765, npcName = "Ruzan", map = 1411, x = 42.59, y = 69.0, f = "e" },
				},
			},
			{
				note = "Inside and outside the cave.",
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1485, item = 6487, itemName = "Vile Familiar Head", count = 6, oi = 1, map = 1411, x = 45.34, y = 56.36, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1485, title = "Vile Familiars", npc = 5765, npcName = "Ruzan", map = 1411, x = 42.59, y = 69.0, f = "e" },
					{ t = "accept", quest = 1499, title = "Vile Familiars", npc = 5765, npcName = "Ruzan", map = 1411, x = 42.59, y = 69.0, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1499, title = "Vile Familiars", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.85, y = 69.15, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1470, title = "Piercing the Veil", npc = 5667, npcName = "Venya Marthand", map = 1420, x = 30.98, y = 66.41, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1470, item = 6281, itemName = "Rattlecage Skull", count = 3, oi = 1, map = 1420, x = 32.73, y = 60.1, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1470, title = "Piercing the Veil", npc = 5667, npcName = "Venya Marthand", map = 1420, x = 30.98, y = 66.41, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1420, x = 61.56, y = 53.04 },
					{ t = "accept", quest = 1478, title = "Halgar's Summons", npc = 5724, npcName = "Ageron Kargal", map = 1420, x = 61.62, y = 52.67, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1420, x = 61.56, y = 53.06 },
					{ t = "goto", text = "Enter Undercity", map = 1420, x = 61.88, y = 65.06 },
					{ t = "turnin", quest = 1478, title = "Halgar's Summons", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.04, y = 26.01, f = "e" },
					{ t = "accept", quest = 1473, title = "Creature of the Void", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.04, y = 26.01, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Leave Undercity", map = 1458, x = 66.23, y = 0.23 },
					{ t = "goto", text = "Enter the building", map = 1420, x = 51.44, y = 67.7 },
					{ t = "collect", quest = 1473, item = 6285, itemName = "Egalin's Grimoire", oi = 1, map = 1420, x = 51.06, y = 67.57, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1420, x = 51.44, y = 67.69 },
					{ t = "goto", text = "Enter Undercity", map = 1420, x = 61.88, y = 65.06 },
					{ t = "turnin", quest = 1473, title = "Creature of the Void", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.04, y = 26.01, f = "e" },
					{ t = "accept", quest = 1471, title = "The Binding", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.04, y = 26.01, f = "e" },
				},
			},
			{
				note = "Use them on the pink symbol on the ground. Don't forget to summon your imp.",
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 6284, itemName = "Runes of Summoning" },
					{ t = "kill", quest = 1471, npc = 5676, target = "Summoned Voidwalker", oi = 1, map = 1458, x = 86.62, y = 27.1, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1471, title = "The Binding", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.04, y = 26.01, f = "e" },
				},
			},
			{
				note = "Outside, behind the building.",
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1506, title = "Gan'rul's Summons", npc = 3294, npcName = "Ophek", map = 1411, x = 54.37, y = 41.29, f = "e" },
				},
			},
			{
				note = "Inside the tent.",
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1411, x = 52.37, y = 40.01 },
					{ t = "goto", text = "Enter Orgrimmar", map = 1411, x = 45.54, y = 12.06 },
					{ t = "goto", text = "Follow the path", map = 1454, x = 51.55, y = 58.13 },
					{ t = "goto", text = "Follow the path down", map = 1454, x = 55.96, y = 41.03 },
					{ t = "turnin", quest = 1506, title = "Gan'rul's Summons", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.24, y = 45.29, f = "e" },
					{ t = "accept", quest = 1501, title = "Creature of the Void", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.24, y = 45.29, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1454, x = 43.93, y = 56.8 },
					{ t = "goto", text = "Follow the path", map = 1454, x = 38.49, y = 54.16 },
					{ t = "goto", text = "Follow the path", map = 1454, x = 52.5, y = 85.13 },
					{ t = "goto", text = "Leave Orgrimmar", map = 1454, x = 49.1, y = 94.75 },
					{ t = "goto", text = "Enter the cave", map = 1411, x = 55.02, y = 9.79 },
					{ t = "goto", text = "Follow the path", map = 1411, x = 53.8, y = 8.83 },
					{ t = "goto", text = "Continue following the path", map = 1411, x = 52.75, y = 7.87 },
					{ t = "goto", text = "Continue following the path", map = 1411, x = 51.68, y = 8.23 },
					{ t = "collect", quest = 1501, item = 6535, itemName = "Tablet of Verga", oi = 1, map = 1411, x = 51.62, y = 9.74, f = "e" },
				},
			},
			{
				note = "Inside the tent.",
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1411, x = 51.73, y = 8.1 },
					{ t = "goto", text = "Continue following the path", map = 1411, x = 52.49, y = 8.31 },
					{ t = "goto", text = "Continue following the path", map = 1411, x = 54.2, y = 8.92 },
					{ t = "goto", text = "Leave the cave", map = 1411, x = 55.03, y = 9.87 },
					{ t = "goto", text = "Enter Orgrimmar", map = 1411, x = 45.54, y = 12.06 },
					{ t = "goto", text = "Follow the path", map = 1454, x = 51.55, y = 58.13 },
					{ t = "goto", text = "Follow the path down", map = 1454, x = 55.96, y = 41.03 },
					{ t = "turnin", quest = 1501, title = "Creature of the Void", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.24, y = 45.29, f = "e" },
					{ t = "accept", quest = 1504, title = "The Binding", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.24, y = 45.29, f = "e" },
				},
			},
			{
				note = "Use it while standing on the pink symbol on the ground. Inside the tent.",
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 7464, itemName = "Glyphs of Summoning" },
					{ t = "kill", quest = 1504, npc = 5676, target = "Summoned Voidwalker", oi = 1, map = 1454, x = 49.44, y = 50.02, f = "e" },
				},
			},
			{
				note = "Inside the tent.",
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1504, title = "The Binding", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.24, y = 45.29, f = "e" },
				},
			},
			{
				note = "Inside the tent, inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1507, title = "Devourer of Souls", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.25, y = 45.29, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1507, title = "Devourer of Souls", npc = 5909, npcName = "Cazul", map = 1454, x = 47.06, y = 46.48, f = "e" },
					{ t = "accept", quest = 1508, title = "Blind Cazul", npc = 5909, npcName = "Cazul", map = 1454, x = 47.06, y = 46.48, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1454, x = 43.93, y = 56.92 },
					{ t = "goto", text = "Follow the path", map = 1454, x = 38.4, y = 54.26 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 38.07, y = 60.65 },
					{ t = "turnin", quest = 1508, title = "Blind Cazul", npc = 5910, npcName = "Zankaja", map = 1454, x = 37.03, y = 59.45, f = "e" },
					{ t = "accept", quest = 1509, title = "News of Dogran", npc = 5910, npcName = "Zankaja", map = 1454, x = 37.03, y = 59.45, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1509, title = "News of Dogran", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.93, y = 30.32, f = "e" },
					{ t = "accept", quest = 1510, title = "News of Dogran", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.93, y = 30.32, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1413, x = 50.82, y = 29.07 },
					{ t = "goto", text = "Follow the road", map = 1413, x = 39.39, y = 29.65 },
					{ t = "goto", text = "Follow the path up", map = 1442, x = 82.07, y = 98.57 },
					{ t = "goto", text = "Follow the path", map = 1442, x = 77.19, y = 98.73 },
					{ t = "goto", text = "Jump down here", map = 1442, x = 75.01, y = 97.08 },
					{ t = "turnin", quest = 1510, title = "News of Dogran", npc = 4197, npcName = "Ken'zigla", map = 1442, x = 73.25, y = 95.12, f = "e" },
					{ t = "accept", quest = 1511, title = "Ken'zigla's Draught", npc = 4197, npcName = "Ken'zigla", map = 1442, x = 73.25, y = 95.12, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1442, x = 72.89, y = 93.73 },
					{ t = "goto", text = "Follow the path", map = 1442, x = 77.33, y = 98.72 },
					{ t = "goto", text = "Follow the road", map = 1413, x = 35.84, y = 27.53 },
					{ t = "goto", text = "Continue following the road", map = 1413, x = 39.43, y = 29.7 },
					{ t = "goto", text = "Follow the path", map = 1413, x = 50.83, y = 29.09 },
					{ t = "turnin", quest = 1511, title = "Ken'zigla's Draught", npc = 5911, npcName = "Grunt Logmar", map = 1413, x = 44.62, y = 59.27, f = "e" },
					{ t = "accept", quest = 1515, title = "Dogran's Captivity", npc = 5911, npcName = "Grunt Logmar", map = 1413, x = 44.62, y = 59.27, f = "e" },
				},
			},
			{
				note = "Inside the hut.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1515, title = "Dogran's Captivity", npc = 5908, npcName = "Grunt Dogran", map = 1413, x = 43.31, y = 47.89, f = "e" },
					{ t = "accept", quest = 1512, title = "Love's Gift", npc = 5908, npcName = "Grunt Dogran", map = 1413, x = 43.31, y = 47.89, f = "e" },
				},
			},
			{
				note = "Inside the tent.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1454, x = 39.74, y = 53.78 },
					{ t = "turnin", quest = 1512, title = "Love's Gift", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.25, y = 45.29, f = "e" },
					{ t = "accept", quest = 1513, title = "The Binding", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.25, y = 45.29, f = "e" },
				},
			},
			{
				note = "Use it while standing on the pink symbol on the ground. Inside the tent.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 6626, itemName = "Dogran's Pendant" },
					{ t = "kill", quest = 1513, npc = 5677, target = "Summoned Succubus", oi = 1, map = 1454, x = 49.45, y = 50.03, f = "e" },
				},
			},
			{
				note = "Inside the tent.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1513, title = "The Binding", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.24, y = 45.29, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 2996, title = "Seeking Strahad", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.24, y = 45.3, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 61.93, y = 36.72 },
					{ t = "turnin", quest = 2996, title = "Seeking Strahad", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
					{ t = "accept", quest = 1801, title = "Tome of the Cabal", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1758, title = "Tome of the Cabal", npc = 6293, npcName = "Jorah Annison", map = 1458, x = 75.91, y = 37.87, f = "e" },
					{ t = "accept", quest = 1803, title = "Tome of the Cabal", npc = 6293, npcName = "Jorah Annison", map = 1458, x = 75.91, y = 37.87, f = "e" },
				},
			},
			{
				note = "It looks like a blue book on the ground next to some crates.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1424, x = 36.94, y = 65.37 },
					{ t = "collect", quest = 1803, item = 6931, itemName = "Moldy Tome", oi = 1, map = 1424, x = 27.78, y = 72.78, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1441, x = 44.09, y = 37.29 },
					{ t = "collect", quest = 1803, item = 6997, itemName = "Tattered Manuscript", oi = 2, map = 1441, x = 43.43, y = 32.69, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1803, title = "Tome of the Cabal", npc = 6293, npcName = "Jorah Annison", map = 1458, x = 75.91, y = 37.87, f = "e" },
					{ t = "accept", quest = 1805, title = "Tome of the Cabal", npc = 6293, npcName = "Jorah Annison", map = 1458, x = 75.91, y = 37.87, f = "e" },
				},
			},
			{
				note = "They drop from Dragonmaw Bonewarders and Shadowwarders.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1437, x = 42.83, y = 41.04 },
					{ t = "collect", quest = 1805, item = 6930, itemName = "Rod of Channeling", count = 3, oi = 1, map = 1437, x = 45.09, y = 43.08, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 61.93, y = 36.72 },
					{ t = "turnin", quest = 1805, title = "Tome of the Cabal", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
					{ t = "accept", quest = 1471, title = "The Binding", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
				},
			},
			{
				note = "Use it inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 6999, itemName = "Tome of the Cabal" },
					{ t = "kill", quest = 1471, npc = 6268, target = "Summoned Felhunter", oi = 1, map = 1413, x = 62.6, y = 35.28, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1471, title = "The Binding", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 3631, title = "Summon Felsteed", npc = 3326, npcName = "Zevrost", map = 1454, x = 48.48, y = 45.44, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 61.93, y = 36.72 },
					{ t = "turnin", quest = 3631, title = "Summon Felsteed", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
					{ t = "accept", quest = 4490, title = "Summon Felsteed", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 4490, title = "Summon Felsteed", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 8420, item = 14256, itemName = "Felcloth" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 7601, title = "What Niby Commands", npc = 14469, npcName = "Niby the Almighty", map = 1448, x = 41.38, y = 44.86, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 7601, title = "What Niby Commands", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
					{ t = "accept", quest = 7602, title = "Flawless Fel Essence", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
					{ t = "accept", quest = 8420, title = "Hot and Itchy", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 8420, title = "Hot and Itchy", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
					{ t = "accept", quest = 8421, title = "The Wrong Stuff", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 8421, item = 20614, itemName = "Bloodvenom Essence", count = 4, oi = 2, map = 1448, x = 40.92, y = 46.83, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 8421, item = 20613, itemName = "Rotting Wood", count = 10, oi = 1, map = 1448, x = 46.89, y = 24.16, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 8421, title = "The Wrong Stuff", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
					{ t = "accept", quest = 8422, title = "Trolls of a Feather", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
				},
			},
			{
				note = "They are found throughout the Shadow Hold. Watch for patrols and respawns while in the area.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1448, x = 35.39, y = 58.54 },
					{ t = "collect", quest = 7602, item = 18622, itemName = "Flawless Fel Essence (Jaedenar)", oi = 2, map = 1448, x = 36.25, y = 55.94, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 7602, item = 18624, itemName = "Flawless Fel Essence (Azshara)", oi = 1, map = 1447, x = 52.03, y = 18.65, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 7602, item = 18623, itemName = "Flawless Fel Essence (Dark Portal)", oi = 3, map = 1419, x = 61.32, y = 54.18, f = "e" },
				},
			},
			{
				note = "The next couple of steps will be taking you to the Sunken Temple dungeon. You will need a group to complete the dungeon as well as the quest. If you don't have a group, wait until you do before continuing.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "complete", quest = 8236, title = "The Azure Key", note = "Click Here to Continue" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1435, x = 69.36, y = 56.89 },
					{ t = "goto", text = "Enter the building and swim under the water", map = 1435, x = 70.54, y = 49.78 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 72.69, y = 42.22 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 75.69, y = 45.78 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 78.62, y = 47.47 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 80.22, y = 49.62 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 81.33, y = 42.38 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 78.86, y = 40.74 },
					{ t = "goto", text = "Run down the ramp", map = 1435, x = 76.85, y = 38.82 },
				},
			},
			{
				note = "These come from Gasher and Zul'Lor.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 8422, item = 20606, itemName = "Amber Voodoo Feather", count = 2, oi = 1 },
				},
			},
			{
				label = "Blue_Voodoo_Feathers",
				along = true,
				note = "These come from Mijan and Hukku.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 8422, item = 20607, itemName = "Blue Voodoo Feather", count = 2, oi = 2 },
				},
			},
			{
				label = "Green_Voodoo_Feathers",
				along = true,
				note = "These come from Zolo and Loro.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 8422, item = 20608, itemName = "Green Voodoo Feather", count = 2, oi = 3 },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 7602, title = "Flawless Fel Essence", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
					{ t = "turnin", quest = 8422, title = "Trolls of a Feather", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
					{ t = "accept", quest = 7603, title = "Kroshius' Infernal Core", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
				},
			},
			{
				note = "You may need help.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1448, x = 38.76, y = 41.7 },
					{ t = "goto", text = "Continue following the road", map = 1448, x = 39.01, y = 37.86 },
					{ t = "goto", text = "Follow the path", map = 1448, x = 41.25, y = 36.95 },
					{ t = "use", item = 18626, itemName = "Fel Fire" },
					{ t = "collect", quest = 7603, item = 18625, itemName = "Kroshius' Infernal Core", oi = 1, map = 1448, x = 45.73, y = 34.81, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 7603, title = "Kroshius' Infernal Core", npc = 14469, npcName = "Niby the Almighty", map = 1448, x = 41.38, y = 44.86, f = "e" },
				},
			},
			{
				note = "These are gathered with the Skinning profession. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 7628, item = 15416, itemName = "Black Dragonscale", count = 35 },
				},
			},
			{
				note = "These are with the Alchemy profession. It takes 3 Ghost Mushrooms and a Crystal Vial to make one. You can also purchase them from the Auction House.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 7626, item = 9264, itemName = "Elixir of Shadow Power", count = 10 },
				},
			},
			{
				note = "If you have the Enchanting profession, use your Disenchant ability on level 51-60 blue weapons and armor. You can also buy them from the Auction House.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 7627, item = 14344, itemName = "Large Brilliant Shard", count = 6 },
				},
			},
			{
				note = "If you have the Mining profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 7627, item = 11370, itemName = "Dark Iron Ore", count = 25 },
				},
			},
			{
				note = "These are with the Alchemy profession. It takes 1 Thorium Bar and 1 Arcane Crystal to make one. Try to find a Alchemist to create one for you. You can also purchase them from the Auction House.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 7630, item = 12360, itemName = "Arcanite Bar", count = 3 },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 7562, title = "Mor'zul Bloodbringer", npc = 5815, npcName = "Kurgul", map = 1454, x = 47.52, y = 46.73, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1428, x = 15.46, y = 40.26 },
					{ t = "turnin", quest = 7562, title = "Mor'zul Bloodbringer", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
					{ t = "accept", quest = 7563, title = "Rage of Blood", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
				},
			},
			{
				note = "Watch for respawns while in the area.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1452, x = 65.04, y = 18.78 },
					{ t = "collect", item = 18590, itemName = "Raging Beast's Blood", count = 30, map = 1452, x = 63.65, y = 16.33, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1428, x = 15.46, y = 40.26 },
					{ t = "turnin", quest = 7563, title = "Rage of Blood", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
					{ t = "accept", quest = 7564, title = "Wildeyes", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 7564, title = "Wildeyes", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
					{ t = "accept", quest = 7623, title = "Lord Banehollow", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 7626, title = "Bell of Dethmoora", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
					{ t = "accept", quest = 7627, title = "Wheel of the Black March", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
					{ t = "accept", quest = 7628, title = "Doomsday Candle", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 7626, title = "Bell of Dethmoora", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
					{ t = "turnin", quest = 7627, title = "Wheel of the Black March", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
					{ t = "turnin", quest = 7628, title = "Doomsday Candle", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
					{ t = "accept", quest = 7630, title = "Arcanite", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 7630, title = "Arcanite", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "buy", item = 18802, itemName = "Shadowy Potion", count = 6, map = 1428, x = 12.43, y = 31.63, f = "e" },
				},
			},
			{
				note = "use it before you enter Shadow Hold. It will make most enemies inside friendly for 20 minutes.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 18802, itemName = "Shadowy Potion" },
					{ t = "goto", text = "Enter the building", map = 1448, x = 35.42, y = 58.61 },
					{ t = "goto", text = "Run down the ramp", map = 1448, x = 35.47, y = 58.18 },
					{ t = "goto", text = "Run down the ramp", map = 1448, x = 36.04, y = 56.42 },
					{ t = "goto", text = "Run up the ramp", map = 1448, x = 36.69, y = 55.99 },
					{ t = "goto", text = "Follow the path down", map = 1448, x = 36.64, y = 54.91 },
					{ t = "complete", quest = 7623, title = "Lord Banehollow", note = "Run down the ramp", map = 1448, x = 38.19, y = 54.1, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1448, x = 37.1, y = 54.04 },
					{ t = "goto", text = "Cross the water", map = 1448, x = 37.61, y = 52.21 },
					{ t = "goto", text = "Follow the path up", map = 1448, x = 36.26, y = 52.52 },
					{ t = "goto", text = "Run down the ramp", map = 1448, x = 37.2, y = 50.82 },
					{ t = "complete", quest = 7623, title = "Lord Banehollow", note = "Continue down the ramp", map = 1448, x = 38.9, y = 49.72, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1448, x = 39.85, y = 49.23 },
					{ t = "goto", text = "Follow the path", map = 1448, x = 40.04, y = 47.8 },
					{ t = "goto", text = "Follow the path up", map = 1448, x = 38.56, y = 46.06 },
					{ t = "goto", text = "Follow the path up", map = 1448, x = 37.43, y = 46.24 },
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 38.03, y = 46.52 },
					{ t = "complete", quest = 7623, title = "Lord Banehollow", note = "Cross the bridge", map = 1448, x = 37.33, y = 47.22, f = "e" },
				},
			},
			{
				note = "You need to have this buff for the next step.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 18802, itemName = "Shadowy Potion" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 7623, title = "Lord Banehollow", npc = 9516, npcName = "Lord Banehollow", map = 1448, x = 35.93, y = 44.41, f = "e" },
					{ t = "accept", quest = 7624, title = "Ulathek the Traitor", npc = 9516, npcName = "Lord Banehollow", map = 1448, x = 35.93, y = 44.41, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 36.2, y = 46.09 },
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 37.95, y = 47.27 },
					{ t = "goto", text = "Run down the ramp", map = 1448, x = 37.94, y = 45.39 },
					{ t = "goto", text = "Follow the path", map = 1448, x = 37.65, y = 46.62 },
					{ t = "goto", text = "Continue following the path", map = 1448, x = 39.57, y = 47.05 },
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 40.06, y = 48.94 },
					{ t = "complete", quest = 7624, title = "Ulathek the Traitor", note = "Remove the Taint of Shadow buff", map = 1448, x = 39.89, y = 49.17, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 40.02, y = 48.99 },
					{ t = "collect", quest = 7624, item = 18719, itemName = "The Traitor's Heart", oi = 1, map = 1448, x = 40.77, y = 48.42, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 18802, itemName = "Shadowy Potion" },
					{ t = "complete", quest = 7624, title = "Ulathek the Traitor", note = "Get the Taint of Shadow Buff" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 40.49, y = 48.48 },
					{ t = "goto", text = "Run down the ramp", map = 1448, x = 40.04, y = 47.71 },
					{ t = "goto", text = "Run up the ramp", map = 1448, x = 38.49, y = 46.17 },
					{ t = "goto", text = "Follow the path", map = 1448, x = 38.22, y = 46.82 },
					{ t = "complete", quest = 7624, title = "Ulathek the Traitor", note = "run up the ramp", map = 1448, x = 37.35, y = 45.87, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 38.03, y = 46.48 },
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 37.46, y = 47.35 },
					{ t = "turnin", quest = 7624, title = "Ulathek the Traitor", npc = 9516, npcName = "Lord Banehollow", map = 1448, x = 35.93, y = 44.41, f = "e" },
					{ t = "accept", quest = 7625, title = "Xorothian Stardust", npc = 9516, npcName = "Lord Banehollow", map = 1448, x = 35.93, y = 44.41, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "buy", item = 18687, itemName = "Xorothian Stardust", map = 1448, x = 36.17, y = 44.46, f = "e" },
				},
			},
		},
	})
end

