-- TuWoW_Leveling — Guides/Class_04.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-paladin-class-quests",
		pack = "guides",
		title = "Paladin Class Quests (Parte 1/2)",
		category = "Class",
		faction = "Alliance",
		next = "zygor/leveling/a-paladin-class-quests-part-2",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		classes = { "PALADIN" },
		steps = {
			{
				note = "Inside the building.",
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 53.29, y = 51.63 },
					{ t = "accept", quest = 1641, title = "The Tome of Divinity", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.49, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1641, title = "The Tome of Divinity", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.49, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "use", item = 6775, itemName = "Tome of Divinity" },
					{ t = "accept", quest = 1642, title = "The Tome of Divinity" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1642, title = "The Tome of Divinity", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.49, f = "e" },
					{ t = "accept", quest = 1643, title = "The Tome of Divinity", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.49, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1453, x = 53.0, y = 51.12 },
					{ t = "turnin", quest = 1643, title = "The Tome of Divinity", npc = 6174, npcName = "Stephanie Turner", map = 1453, x = 63.84, y = 72.21, f = "e" },
					{ t = "accept", quest = 1644, title = "The Tome of Divinity", npc = 6174, npcName = "Stephanie Turner", map = 1453, x = 63.84, y = 72.21, f = "e" },
				},
			},
			{
				note = "Inside the building. Buy these items from the Auction House. Or, refer to the Linen Cloth farming guide to accomplish this.",
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 61.45, y = 70.07 },
					{ t = "collect", quest = 1644, item = 2589, itemName = "Linen Cloth", count = 10, oi = 1, map = 1453, x = 61.16, y = 70.68, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1453, x = 61.35, y = 70.03 },
					{ t = "turnin", quest = 1644, title = "The Tome of Divinity", npc = 6174, npcName = "Stephanie Turner", map = 1453, x = 63.84, y = 72.21, f = "e" },
					{ t = "accept", quest = 1780, title = "The Tome of Divinity", npc = 6174, npcName = "Stephanie Turner", map = 1453, x = 63.84, y = 72.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 53.29, y = 51.63 },
					{ t = "turnin", quest = 1780, title = "The Tome of Divinity", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.49, f = "e" },
					{ t = "accept", quest = 1781, title = "The Tome of Divinity", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.49, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1781, title = "The Tome of Divinity", npc = 6173, npcName = "Gazin Tenorm", map = 1453, x = 49.51, y = 44.9, f = "e" },
					{ t = "accept", quest = 1786, title = "The Tome of Divinity", npc = 6173, npcName = "Gazin Tenorm", map = 1453, x = 49.51, y = 44.9, f = "e" },
				},
			},
			{
				note = "Watch for Defias Rogue Wizards around here. They are ranged attackers with an abnormal sized aggro radius. Use it on Henze Faulk's corpse.",
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1453, x = 53.0, y = 51.12 },
					{ t = "goto", text = "Leave Stormwind City", map = 1453, x = 74.65, y = 93.16 },
					{ t = "goto", text = "Follow the road", map = 1429, x = 42.7, y = 67.19 },
					{ t = "goto", text = "Follow the path", map = 1429, x = 69.14, y = 70.95 },
					{ t = "use", item = 6866, itemName = "Symbol of Life" },
					{ t = "complete", quest = 1786, title = "The Tome of Divinity", note = "Ressurect Henze Faulk", map = 1429, x = 72.6, y = 51.41, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1786, title = "The Tome of Divinity", npc = 6172, npcName = "Henze Faulk", map = 1429, x = 72.6, y = 51.41, f = "e" },
					{ t = "accept", quest = 1787, title = "The Tome of Divinity", npc = 6172, npcName = "Henze Faulk", map = 1429, x = 72.6, y = 51.41, f = "e" },
				},
			},
			{
				note = "They are ranged attackers with an abnormal sized aggro radius.",
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 1787, item = 6846, itemName = "Defias Script", oi = 1, map = 1429, x = 74.07, y = 51.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1429, x = 70.14, y = 70.84 },
					{ t = "goto", text = "Continue following the road", map = 1429, x = 42.19, y = 64.92 },
					{ t = "goto", text = "Enter Stormwind City", map = 1429, x = 32.07, y = 49.32 },
					{ t = "goto", text = "Enter the building", map = 1453, x = 53.29, y = 51.63 },
					{ t = "turnin", quest = 1787, title = "The Tome of Divinity", npc = 6173, npcName = "Gazin Tenorm", map = 1453, x = 49.51, y = 44.92, f = "e" },
					{ t = "accept", quest = 1788, title = "The Tome of Divinity", npc = 6173, npcName = "Gazin Tenorm", map = 1453, x = 49.51, y = 44.92, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1788, title = "The Tome of Divinity", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.49, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 27.28, y = 12.31 },
					{ t = "accept", quest = 2997, title = "Tome of Divinity", npc = 5149, npcName = "Brandur Ironhammer", map = 1455, x = 23.12, y = 6.14, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 2997, title = "Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.64, y = 12.19, f = "e" },
					{ t = "accept", quest = 1645, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.64, y = 12.19, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "accept", quest = 1646, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.64, y = 12.19, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "use", item = 6916, itemName = "Tome of Divinity" },
					{ t = "accept", quest = 1646, title = "The Tome of Divinity" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1646, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.64, y = 12.19, f = "e" },
					{ t = "accept", quest = 1647, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.64, y = 12.19, f = "e" },
				},
			},
			{
				note = "He walks around this area",
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1647, title = "The Tome of Divinity", npc = 6175, npcName = "John Turner", map = 1455, x = 21.55, y = 50.8, f = "e" },
					{ t = "accept", quest = 1648, title = "The Tome of Divinity", npc = 6175, npcName = "John Turner", map = 1455, x = 21.55, y = 50.8, f = "e" },
				},
			},
			{
				note = "Inside the building. Buy them from the Auction House.",
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 26.14, y = 72.21 },
					{ t = "collect", quest = 1648, item = 2589, itemName = "Linen Cloth", count = 10, oi = 1, map = 1455, x = 24.25, y = 74.57, f = "e" },
				},
			},
			{
				note = "He walks around this area",
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1648, title = "The Tome of Divinity", npc = 6175, npcName = "John Turner", map = 1455, x = 21.55, y = 50.8, f = "e" },
					{ t = "accept", quest = 1778, title = "The Tome of Divinity", npc = 6175, npcName = "John Turner", map = 1455, x = 21.55, y = 50.8, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 27.28, y = 12.31 },
					{ t = "turnin", quest = 1778, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.64, y = 12.19, f = "e" },
					{ t = "accept", quest = 1779, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.64, y = 12.19, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1779, title = "The Tome of Divinity", npc = 6178, npcName = "Muiredon Battleforge", map = 1455, x = 23.53, y = 8.29, f = "e" },
					{ t = "accept", quest = 1783, title = "The Tome of Divinity", npc = 6178, npcName = "Muiredon Battleforge", map = 1455, x = 23.53, y = 8.29, f = "e" },
				},
			},
			{
				note = "Use it on Narm Faulk's corpse.",
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1426, x = 49.69, y = 46.36 },
					{ t = "goto", text = "Follow the path", map = 1426, x = 73.14, y = 49.95 },
					{ t = "use", item = 6866, itemName = "Symbol of Life" },
					{ t = "complete", quest = 1783, title = "The Tome of Divinity", note = "Resseurect Narm Faulk", map = 1426, x = 78.32, y = 58.09, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1783, title = "The Tome of Divinity", npc = 6177, npcName = "Narm Faulk", map = 1426, x = 78.32, y = 58.09, f = "e" },
					{ t = "accept", quest = 1784, title = "The Tome of Divinity", npc = 6177, npcName = "Narm Faulk", map = 1426, x = 78.32, y = 58.09, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 1784, item = 6847, itemName = "Dark Iron Script", oi = 1, map = 1426, x = 77.39, y = 61.27, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1426, x = 72.88, y = 49.82 },
					{ t = "goto", text = "Follow the path up", map = 1426, x = 47.25, y = 41.65 },
					{ t = "goto", text = "Enter Ironforge", map = 1426, x = 53.47, y = 34.9 },
					{ t = "goto", text = "Enter the building", map = 1455, x = 27.28, y = 12.31 },
					{ t = "turnin", quest = 1784, title = "The Tome of Divinity", npc = 6178, npcName = "Muiredon Battleforge", map = 1455, x = 23.53, y = 8.29, f = "e" },
					{ t = "accept", quest = 1785, title = "The Tome of Divinity", npc = 6178, npcName = "Muiredon Battleforge", map = 1455, x = 23.53, y = 8.29, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1785, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.64, y = 12.19, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "accept", quest = 1794, title = "The Tome of Valor", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.49, f = "e" },
					{ t = "accept", quest = 1793, title = "The Tome of Valor", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.49, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "use", item = 6776, itemName = "Tome of Valor" },
					{ t = "accept", quest = 1649, title = "The Tome of Valor" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1649, title = "The Tome of Valor", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.49, f = "e" },
					{ t = "accept", quest = 1650, title = "The Tome of Valor", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.49, f = "e" },
				},
			},
			{
				note = "She walks around the area.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1436, x = 38.34, y = 81.95 },
					{ t = "goto", text = "Follow the path down", map = 1436, x = 40.13, y = 86.97 },
					{ t = "turnin", quest = 1650, title = "The Tome of Valor", npc = 6182, npcName = "Daphne Stilwell", map = 1436, x = 42.71, y = 88.4, f = "e" },
					{ t = "accept", quest = 1651, title = "The Tome of Valor", npc = 6182, npcName = "Daphne Stilwell", map = 1436, x = 42.71, y = 88.4, f = "e" },
				},
			},
			{
				note = "You may need help with this. They spawn in waves, the first has 3, the second has 4 and the third has 5.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "complete", quest = 1651, title = "The Tome of Valor", note = "Protect Daphne Stillwell from the Defias", map = 1436, x = 42.29, y = 88.57, f = "e" },
				},
			},
			{
				note = "She walks around the area.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1651, title = "The Tome of Valor", npc = 6182, npcName = "Daphne Stilwell", map = 1436, x = 42.71, y = 88.4, f = "e" },
					{ t = "accept", quest = 1652, title = "The Tome of Valor", npc = 6182, npcName = "Daphne Stilwell", map = 1436, x = 42.71, y = 88.4, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1652, title = "The Tome of Valor", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.49, f = "e" },
					{ t = "accept", quest = 1653, title = "The Test of Righteousness", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.49, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1653, title = "The Test of Righteousness", npc = 6181, npcName = "Jordan Stilwell", map = 1426, x = 52.48, y = 36.92, f = "e" },
					{ t = "accept", quest = 1654, title = "The Test of Righteousness", npc = 6181, npcName = "Jordan Stilwell", map = 1426, x = 52.48, y = 36.92, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1436, x = 42.57, y = 71.83 },
					{ t = "goto", text = "Jump down here", map = 1436, x = 43.42, y = 72.89 },
					{ t = "goto", text = "Follow the path", map = 1436, x = 42.4, y = 75.87 },
					{ t = "goto", text = "Follow the path", map = 1436, x = 41.79, y = 78.54 },
					{ t = "goto", text = "Jump down here", map = 1436, x = 39.64, y = 78.12 },
					{ t = "complete", quest = 1654, title = "The Test of Righteousness", note = "Enter the Deadmines Dungeon with Your Group" },
				},
			},
			{
				note = "You can skip this step for now and do it later if you're unable to get a group.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 1654, item = 6994, itemName = "Whitestone Oak Lumber", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1654, title = "The Test of Righteousness", note = "Enter the Shadowfang Keep Dungeon with Your Group" },
				},
			},
			{
				note = "You can skip this step for now and do it later if you're unable to get a group. Inside the stable area of the dungeon.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 1654, item = 6895, itemName = "Jordan's Smithing Hammer", oi = 3 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "accept", quest = 1655, title = "Bailor's Ore Shipment", npc = 6241, npcName = "Bailor Stonehand", map = 1432, x = 35.96, y = 44.92, f = "e" },
				},
			},
			{
				note = "It looks like a crate next to a tree stump.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 1655, item = 6992, itemName = "Jordan's Ore Shipment", oi = 1, map = 1432, x = 71.62, y = 21.55, f = "e" },
				},
			},
			{
				note = "Inside the building. You may need help with this.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1655, title = "Bailor's Ore Shipment", npc = 6241, npcName = "Bailor Stonehand", map = 1432, x = 35.96, y = 44.92, f = "e" },
					{ t = "collect", quest = 1654, item = 6992, itemName = "Jordan's Ore Shipment", oi = 2, map = 1432, x = 36.0, y = 44.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "accept", quest = 1442, title = "Seeking the Kor Gem", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.13, f = "e" },
				},
			},
			{
				note = "They are elite enemies. You may need help with this. You will likely need help with this task unless you are overleveled.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1440, x = 14.11, y = 14.87 },
					{ t = "goto", text = "Jump down into the water", map = 1414, x = 43.97, y = 35.37 },
					{ t = "goto", text = "Enter the underwater cave", map = 1414, x = 43.94, y = 35.27 },
					{ t = "collect", quest = 1442, item = 6995, itemName = "Corrupted Kor Gem", oi = 1, map = 1414, x = 43.82, y = 35.14, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "accept", quest = 1442, title = "Seeking the Kor Gem", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.13, f = "e" },
					{ t = "collect", quest = 1654, item = 7083, itemName = "Purified Kor Gem", oi = 4, map = 1439, x = 37.4, y = 40.1, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1654, title = "The Test of Righteousness", npc = 6181, npcName = "Jordan Stilwell", map = 1426, x = 52.48, y = 36.92, f = "e" },
					{ t = "accept", quest = 1806, title = "The Test of Righteousness", npc = 6181, npcName = "Jordan Stilwell", map = 1426, x = 52.48, y = 36.92, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1806, title = "The Test of Righteousness", npc = 6181, npcName = "Jordan Stilwell", map = 1426, x = 52.48, y = 36.92, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "accept", quest = 1661, title = "The Tome of Nobility", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.49, y = 47.5, f = "e" },
					{ t = "turnin", quest = 1661, title = "The Tome of Nobility", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.49, y = 47.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "accept", quest = 8415, title = "Chillwind Point", npc = 928, npcName = "Lord Grayson Shadowbreaker", map = 1453, x = 48.41, y = 50.16, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 8415, title = "Chillwind Point", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
					{ t = "accept", quest = 8414, title = "Dispelling Evil", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
				},
			},
			{
				note = "Avoid Flesh Golems that patrol around the area.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 8414, item = 12840, itemName = "Minion's Scourgestone", count = 20, oi = 1, map = 1422, x = 40.65, y = 70.27, f = "e" },
				},
			},
			{
				note = "He patrols around the area.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 8414, title = "Dispelling Evil", npc = 1854, npcName = "High Priest Thel'danis", map = 1422, x = 52.09, y = 83.35, f = "e" },
					{ t = "accept", quest = 8416, title = "Inert Scourgestones", npc = 1854, npcName = "High Priest Thel'danis", map = 1422, x = 52.09, y = 83.35, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 8416, title = "Inert Scourgestones", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
					{ t = "accept", quest = 8418, title = "Forging the Mightstone", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
				},
			},
			{
				note = "The next couple of steps will be taking you to the Sunken Temple dungeon. You will need a group to complete the dungeon as well as the quest. If you don't have a group, wait until you do before continuing.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "complete", quest = 8236, title = "The Azure Key", note = "Click Here to Continue" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
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
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 8418, item = 20606, itemName = "Amber Voodoo Feather", count = 2, oi = 1 },
				},
			},
			{
				label = "Blue_Voodoo_Feathers",
				along = true,
				note = "These come from Mijan and Hukku.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 8418, item = 20607, itemName = "Blue Voodoo Feather", count = 2, oi = 2 },
				},
			},
			{
				label = "Green_Voodoo_Feathers",
				along = true,
				note = "These come from Zolo and Loro.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 8418, item = 20608, itemName = "Green Voodoo Feather", count = 2, oi = 3 },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 8418, title = "Forging the Mightstone", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "accept", quest = 7638, title = "Lord Grayson Shadowbreaker", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.49, y = 47.49, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 7638, title = "Lord Grayson Shadowbreaker", npc = 928, npcName = "Lord Grayson Shadowbreaker", map = 1453, x = 48.41, y = 50.18, f = "e" },
					{ t = "accept", quest = 7637, title = "Emphasis on Sacrifice", npc = 928, npcName = "Lord Grayson Shadowbreaker", map = 1453, x = 48.41, y = 50.18, f = "e" },
				},
			},
			{
				note = "He walks around inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 7637, title = "Emphasis on Sacrifice", npc = 11406, npcName = "High Priest Rohan", map = 1455, x = 26.98, y = 7.3, f = "e" },
					{ t = "accept", quest = 7639, title = "To Show Due Judgment", npc = 11406, npcName = "High Priest Rohan", map = 1455, x = 26.98, y = 7.3, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 7639, title = "To Show Due Judgment", npc = 928, npcName = "Lord Grayson Shadowbreaker", map = 1453, x = 48.41, y = 50.18, f = "e" },
					{ t = "accept", quest = 7640, title = "Exorcising Terrordale", npc = 928, npcName = "Lord Grayson Shadowbreaker", map = 1453, x = 48.41, y = 50.18, f = "e" },
				},
			},
			{
				note = "Use it on the green circles on the ground around this area. The green circles can also appear inside buildings. 3 will spawn at a time. You may need help with this.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "use", item = 18752, itemName = "Exorcism Censer" },
					{ t = "kill", quest = 7640, npc = 14564, target = "Terrordale Spirit", count = 25, oi = 1, map = 1423, x = 15.97, y = 25.26, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 7640, title = "Exorcising Terrordale", npc = 928, npcName = "Lord Grayson Shadowbreaker", map = 1453, x = 48.41, y = 50.18, f = "e" },
					{ t = "accept", quest = 7641, title = "The Work of Grimand Elmore", npc = 928, npcName = "Lord Grayson Shadowbreaker", map = 1453, x = 48.41, y = 50.18, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 7641, title = "The Work of Grimand Elmore", npc = 1416, npcName = "Grimand Elmore", map = 1453, x = 59.71, y = 33.77, f = "e" },
					{ t = "accept", quest = 7642, title = "Collection of Goods", npc = 1416, npcName = "Grimand Elmore", map = 1453, x = 59.71, y = 33.77, f = "e" },
				},
			},
			{
				note = "If you have the Herbalism profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 7642, item = 8836, itemName = "Arthas' Tears", count = 10, oi = 2 },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 7642, item = 14047, itemName = "Runecloth", count = 40, oi = 3 },
				},
			},
			{
				note = "These are made by Alchemists. It takes 1 Thorium Bar and 1 Arcane Crystal to make one. Try to find a Alchemist to create one for you.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 7642, item = 12360, itemName = "Arcanite Bar", count = 6, oi = 4 },
				},
			},
			{
				note = "The next couple of steps will be taking you to the Stratholme (Undead) dungeon. You will need a group to complete the dungeon as well as the quest. If you don't have a group, wait until you do before continuing.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "complete", quest = 7642, title = "Collection of Goods", note = "Click Here to Continue" },
				},
			},
			{
				note = "This requires the Key to the City, which drops from Magistrate barthilas in Stratholme - Live.",
				goals = {
					{ t = "goto", text = "click Elders' Square Service Gate", map = 1423, x = 41.43, y = 17.71 },
					{ t = "complete", quest = 7642, title = "Collection of Goods", note = "Enter the Stratholme - Undead Dungeon with Your Group" },
				},
			},
			{
				note = "They look like brown boxes along the walls of the dungeon.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 7642, item = 13180, itemName = "Stratholme Holy Water", count = 5, oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 7642, title = "Collection of Goods", npc = 1416, npcName = "Grimand Elmore", map = 1453, x = 59.71, y = 33.77, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "accept", quest = 7648, title = "Grimand's Finest Work", npc = 1416, npcName = "Grimand Elmore", map = 1453, x = 59.71, y = 33.77, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 7648, title = "Grimand's Finest Work", npc = 928, npcName = "Lord Grayson Shadowbreaker", map = 1453, x = 48.41, y = 50.18, f = "e" },
					{ t = "accept", quest = 7643, title = "Ancient Equine Spirit", npc = 928, npcName = "Lord Grayson Shadowbreaker", map = 1453, x = 48.41, y = 50.18, f = "e" },
				},
			},
			{
				note = "You must be Friendy with The Argent Dawn to purchase these. Quest at Light's Hope Chapel in Eastern Plaguelands to accomplish this.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "buy", item = 13724, itemName = "Enriched Manna Biscuit", count = 20, map = 1422, x = 42.84, y = 83.72, f = "e" },
				},
			},
			{
				note = "Standing inside the stable.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "accept", quest = 7645, title = "Manna-Enriched Horse Feed", npc = 2357, npcName = "Merideth Carlson", map = 1424, x = 52.18, y = 55.5, f = "e" },
				},
			},
			{
				note = "Standing inside the stable.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 7645, title = "Manna-Enriched Horse Feed", npc = 2357, npcName = "Merideth Carlson", map = 1424, x = 52.18, y = 55.5, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 7643, item = 18775, itemName = "Manna-Enriched Horse Feed", oi = 1 },
				},
			},
			{
				note = "The next couple of steps will be taking you to the Diremaul (West) dungeon. You will need a group to complete the dungeon as well as the quest. If you don't have a group, wait until you do before continuing.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "complete", quest = 7643, title = "Ancient Equine Spirit", note = "Click Here to Continue" },
				},
			},
			{
				note = "You need a Crescent Key to unlock this door. This drops from Pusillin in the \"Dire Maul - East\" dungeon.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1444, x = 59.13, y = 44.67 },
					{ t = "goto", text = "Follow the path", map = 1444, x = 59.52, y = 39.51 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.72, y = 38.78 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.15, y = 34.87 },
					{ t = "goto", text = "click Door", map = 1444, x = 60.32, y = 30.16 },
					{ t = "complete", quest = 7643, title = "Ancient Equine Spirit", note = "Enter the Dire Maul - West Dungeon with Your Group" },
				},
			},
			{
				note = "It appears after you kill Tendris Warpwood.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 7643, title = "Ancient Equine Spirit", npc = 14566, npcName = "Ancient Equine Spirit" },
					{ t = "accept", quest = 7644, title = "Blessed Arcanite Barding", npc = 14566, npcName = "Ancient Equine Spirit" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 7644, title = "Blessed Arcanite Barding", npc = 928, npcName = "Lord Grayson Shadowbreaker", map = 1453, x = 48.41, y = 50.18, f = "e" },
					{ t = "accept", quest = 7646, title = "The Divination Scryer", npc = 928, npcName = "Lord Grayson Shadowbreaker", map = 1453, x = 48.41, y = 50.18, f = "e" },
				},
			},
		},
	})
end

