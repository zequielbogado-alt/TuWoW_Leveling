-- TuWoW_Leveling — Guides/Leveling_Alliance_06.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-dwarf-and-gnome-starter-1-13-part-3",
		pack = "guides",
		title = "Dwarf & Gnome Starter (Parte 3/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-westfall-13-15",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1426,
		version = 1,
		races = { "Dwarf", "Gnome" },
		steps = {
			{
				note = "Top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1432, x = 32.1, y = 58.53 },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Thelsamar", map = 1432, x = 33.94, y = 50.95, f = "e" },
				},
			},
			{
				note = "Walks a large path.",
				goals = {
					{ t = "turnin", quest = 414, title = "Stout to Kadrell", npc = 1340, npcName = "Mountaineer Kadrell", map = 1426, x = 95.4, y = 46.5, f = "e" },
					{ t = "accept", quest = 416, title = "Rat Catching", npc = 1340, npcName = "Mountaineer Kadrell", map = 1426, x = 95.4, y = 46.5, f = "e" },
					{ t = "accept", quest = 1339, title = "Mountaineer Stormpike's Task", npc = 1340, npcName = "Mountaineer Kadrell", map = 1426, x = 95.4, y = 46.5, f = "e" },
				},
			},
			{
				note = "Walks around. Inside and outside the building.",
				goals = {
					{ t = "accept", quest = 6387, title = "Honor Students", npc = 1681, npcName = "Brock Stoneseeker", map = 1432, x = 37.02, y = 47.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6387, title = "Honor Students", npc = 1572, npcName = "Thorgrum Borrelson", map = 1432, x = 33.94, y = 50.95, f = "e" },
					{ t = "accept", quest = 6391, title = "Ride to Ironforge", npc = 1572, npcName = "Thorgrum Borrelson", map = 1432, x = 33.94, y = 50.95, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 5114, npcName = "Bilban Tosslespanner", map = 1455, x = 65.9, y = 88.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Train Two-Handed Axes", map = 1455, x = 61.17, y = 89.52, only = { races = { "Gnome" } } },
					{ t = "goto", text = "Train Two-Handed Maces", map = 1455, x = 61.17, y = 89.52 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Train Thrown", map = 1455, x = 62.23, y = 89.62 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 5117, npcName = "Regnus Thundergranite", map = 1455, x = 69.87, y = 82.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10090, npcName = "Belia Thundergranite", map = 1455, x = 70.86, y = 85.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1455, x = 44.56, y = 49.58 },
					{ t = "turnin", quest = 291, title = "The Reports", npc = 1274, npcName = "Senator Barin Redstone", map = 1455, x = 39.55, y = 57.49, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 7312, npcName = "Dink", map = 1455, x = 27.16, y = 8.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 5143, npcName = "Toldren Deepiron", map = 1455, x = 25.21, y = 10.74, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "accept", quest = 2999, title = "Tome of Divinity", npc = 5149, npcName = "Brandur Ironhammer", map = 1455, x = 23.12, y = 6.14, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5148, npcName = "Beldruk Doombrow", map = 1455, x = 24.55, y = 4.48, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 2999, title = "Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.64, y = 12.19, f = "e" },
					{ t = "accept", quest = 1645, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.64, y = 12.19, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "use", item = 6916, itemName = "Tome of Divinity" },
					{ t = "accept", quest = 1646, title = "The Tome of Divinity" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1646, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.64, y = 12.19, f = "e" },
					{ t = "accept", quest = 1647, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.64, y = 12.19, f = "e" },
				},
			},
			{
				note = "Walks in a large path.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1647, title = "The Tome of Divinity", npc = 6175, npcName = "John Turner", map = 1455, x = 23.3, y = 61.9, f = "e" },
					{ t = "accept", quest = 1648, title = "The Tome of Divinity", npc = 6175, npcName = "John Turner", map = 1455, x = 23.3, y = 61.9, f = "e" },
				},
			},
			{
				note = "Walks in a large path. Should have 10 Linen Cloth from earlier.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1648, title = "The Tome of Divinity", npc = 6175, npcName = "John Turner", map = 1455, x = 23.3, y = 61.9, f = "e" },
					{ t = "accept", quest = 1778, title = "The Tome of Divinity", npc = 6175, npcName = "John Turner", map = 1455, x = 23.3, y = 61.9, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1778, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.64, y = 12.19, f = "e" },
					{ t = "accept", quest = 1779, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.64, y = 12.19, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1779, title = "The Tome of Divinity", npc = 6178, npcName = "Muiredon Battleforge", map = 1455, x = 23.53, y = 8.29, f = "e" },
					{ t = "accept", quest = 1783, title = "The Tome of Divinity", npc = 6178, npcName = "Muiredon Battleforge", map = 1455, x = 23.53, y = 8.29, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 6391, title = "Ride to Ironforge", npc = 4256, npcName = "Golnir Bouldertoe", map = 1455, x = 51.52, y = 26.3, f = "e" },
					{ t = "accept", quest = 6388, title = "Gryth Thurden", npc = 4256, npcName = "Golnir Bouldertoe", map = 1455, x = 51.52, y = 26.3, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 5172, npcName = "Briarthorn", map = 1455, x = 50.35, y = 5.66, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1715, title = "The Slaughtered Lamb", npc = 6120, npcName = "Lago Blackwrench", map = 1455, x = 47.63, y = 9.26, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6382, npcName = "Jubahl Corpseseeker", map = 1455, x = 50.35, y = 5.66, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 5167, npcName = "Fenthwick", map = 1455, x = 65.9, y = 88.41, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", map = 1455, x = 47.15, y = 13.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6388, title = "Gryth Thurden", npc = 1573, npcName = "Gryth Thurden", map = 1455, x = 55.51, y = 47.74, f = "e" },
					{ t = "accept", quest = 6392, title = "Return to Brock", npc = 1573, npcName = "Gryth Thurden", map = 1455, x = 55.51, y = 47.74, f = "e" },
				},
			},
			{
				note = "Walks around. Inside and outside the building.",
				goals = {
					{ t = "turnin", quest = 6392, title = "Return to Brock", npc = 1681, npcName = "Brock Stoneseeker", map = 1432, x = 37.02, y = 47.81, f = "e" },
				},
			},
			{
				note = "Rat people.",
				goals = {
					{ t = "collect", quest = 416, item = 3110, itemName = "Tunnel Rat Ear", count = 12, oi = 1, map = 1432, x = 26.99, y = 43.26, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1339, title = "Mountaineer Stormpike's Task", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.76, y = 18.4, f = "e" },
					{ t = "accept", quest = 1338, title = "Stormpike's Order", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.76, y = 18.4, f = "e" },
					{ t = "accept", quest = 307, title = "Filthy Paws", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.76, y = 18.4, f = "e" },
				},
			},
			{
				note = "Walks a large path.",
				goals = {
					{ t = "turnin", quest = 416, title = "Rat Catching", npc = 1340, npcName = "Mountaineer Kadrell", map = 1426, x = 95.4, y = 46.5, f = "e" },
				},
			},
			{
				note = "Walk into the portal.",
				goals = {
					{ t = "complete", quest = 1338, title = "Stormpike's Order", note = "Enter the Deeprun Tram", map = 1455, x = 76.58, y = 51.14, f = "e" },
				},
			},
			{
				note = "Middle platform, near the wall. Ironforge section of the Deeprun Tram.",
				goals = {
					{ t = "accept", quest = 6661, title = "Deeprun Rat Roundup", npc = 12997, npcName = "Monty" },
				},
			},
			{
				note = "On Deeprun Rats. Small grey rats. Ironforge section of the Deeprun Tram.",
				goals = {
					{ t = "use", item = 17117, itemName = "Rat Catcher's Flute" },
					{ t = "complete", quest = 6661, title = "Deeprun Rat Roundup", note = "Capture #5# Rats" },
				},
			},
			{
				note = "Middle platform, near the wall. Ironforge section of the Deeprun Tram.",
				goals = {
					{ t = "turnin", quest = 6661, title = "Deeprun Rat Roundup", npc = 12997, npcName = "Monty" },
					{ t = "accept", quest = 6662, title = "Me Brother, Nipsy", npc = 12997, npcName = "Monty" },
				},
			},
			{
				note = "Ride the tram to Stormwind City. Middle platform, near the wall. Stormwind City section of the Deeprun Tram.",
				goals = {
					{ t = "turnin", quest = 6662, title = "Me Brother, Nipsy", npc = 13018, npcName = "Nipsy" },
				},
			},
			{
				note = "Walk into the portal.",
				goals = {
					{ t = "complete", quest = 1338, title = "Stormpike's Order", note = "Enter Stormwind City" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 353, title = "Stormpike's Delivery", npc = 1416, npcName = "Grimand Elmore", map = 1453, x = 59.71, y = 33.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1338, title = "Stormpike's Order", npc = 5413, npcName = "Furen Longbeard", map = 1453, x = 64.6, y = 37.22, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1638, title = "A Warrior's Training", npc = 5480, npcName = "Ilsa Corbin", map = 1453, x = 80.36, y = 59.79, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1638, title = "A Warrior's Training", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.08, y = 53.25, f = "e" },
					{ t = "accept", quest = 1639, title = "Bartleby the Drunk", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.08, y = 53.25, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building. You will be attacked.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1639, title = "Bartleby the Drunk", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.76, y = 53.18, f = "e" },
					{ t = "accept", quest = 1640, title = "Beat Bartleby", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.76, y = 53.18, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "complete", quest = 1640, title = "Beat Bartleby", map = 1453, x = 76.76, y = 53.18, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1640, title = "Beat Bartleby", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.76, y = 53.18, f = "e" },
					{ t = "accept", quest = 1665, title = "Bartleby's Mug", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.76, y = 53.18, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1665, title = "Bartleby's Mug", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.08, y = 53.25, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "turnin", quest = 5637, title = "Desperate Prayer", npc = 376, npcName = "High Priestess Laurena", map = 1453, x = 49.52, y = 44.58, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.25, y = 81.81 },
					{ t = "turnin", quest = 1715, title = "The Slaughtered Lamb", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.23, y = 85.22, f = "e" },
					{ t = "accept", quest = 1688, title = "Surena Caledon", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.23, y = 85.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR", "PALADIN", "ROGUE", "PRIEST", "MAGE", "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Train Two-Handed Swords", map = 1453, x = 63.85, y = 69.08, only = { classes = { "WARRIOR", "PALADIN" } } },
					{ t = "goto", text = "Train Staves", map = 1453, x = 63.85, y = 69.08, only = { classes = { "WARRIOR", "PRIEST", "WARLOCK" } } },
					{ t = "goto", text = "Train One-Handed Swords", map = 1453, x = 63.85, y = 69.08, only = { classes = { "ROGUE", "MAGE", "WARLOCK" } } },
					{ t = "goto", text = "Train Daggers", map = 1453, x = 63.85, y = 69.08, only = { classes = { "MAGE" } } },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1453, x = 67.92, y = 72.64 },
					{ t = "getfp", location = "Stormwind", map = 1453, x = 70.91, y = 72.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 40, title = "A Fishy Peril", npc = 241, npcName = "Remy \"Two Times\"", map = 1429, x = 42.14, y = 67.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 40, title = "A Fishy Peril", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.11, y = 65.93, f = "e" },
					{ t = "accept", quest = 35, title = "Further Concerns", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.11, y = 65.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 35, title = "Further Concerns", npc = 261, npcName = "Guard Thomas", map = 1429, x = 73.97, y = 72.18, f = "e" },
					{ t = "accept", quest = 37, title = "Find the Lost Guards", npc = 261, npcName = "Guard Thomas", map = 1429, x = 73.97, y = 72.18, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 83, title = "Red Linen Goods", npc = 278, npcName = "Sara Timberlain", map = 1429, x = 79.46, y = 68.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5545, title = "A Bundle of Trouble", npc = 10616, npcName = "Supervisor Raelen", map = 1429, x = 81.38, y = 66.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 37, title = "Find the Lost Guards", map = 1429, x = 72.65, y = 60.33, f = "e" },
					{ t = "accept", quest = 45, title = "Discover Rolf's Fate", map = 1429, x = 72.65, y = 60.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 45, title = "Discover Rolf's Fate", map = 1429, x = 79.8, y = 55.52, f = "e" },
					{ t = "accept", quest = 71, title = "Report to Thomas", map = 1429, x = 79.8, y = 55.52, f = "e" },
				},
			},
			{
				label = "Collect_Bundles_Of_Wood",
				along = true,
				note = "Small piles of brown logs. Near the base of trees.",
				goals = {
					{ t = "collect", quest = 5545, item = 13872, itemName = "Bundle of Wood", count = 8, oi = 1, map = 1429, x = 80.54, y = 60.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5545, title = "A Bundle of Trouble", npc = 10616, npcName = "Supervisor Raelen", map = 1429, x = 81.38, y = 66.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 71, title = "Report to Thomas", npc = 261, npcName = "Guard Thomas", map = 1429, x = 73.97, y = 72.18, f = "e" },
					{ t = "accept", quest = 39, title = "Deliver Thomas' Report", npc = 261, npcName = "Guard Thomas", map = 1429, x = 73.97, y = 72.18, f = "e" },
					{ t = "accept", quest = 109, title = "Report to Gryan Stoutmantle", npc = 261, npcName = "Guard Thomas", map = 1429, x = 73.97, y = 72.18, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1688, item = 6810, itemName = "Surena's Choker", oi = 1, map = 1429, x = 71.02, y = 80.78, f = "e" },
				},
			},
			{
				label = "Collect_Red_Linen_Bandanas",
				along = true,
				goals = {
					{ t = "collect", quest = 83, item = 1019, itemName = "Red Linen Bandana", count = 6, oi = 1, map = 1429, x = 69.49, y = 79.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 1972, itemName = "Westfall Deed" },
					{ t = "accept", quest = 184, title = "Furlbrow's Deed" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 83, title = "Red Linen Goods", npc = 278, npcName = "Sara Timberlain", map = 1429, x = 79.46, y = 68.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 244, title = "Encroaching Gnolls", npc = 464, npcName = "Guard Parker", map = 1433, x = 10.37, y = 71.26, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 244, title = "Encroaching Gnolls", npc = 1070, npcName = "Deputy Feldon", map = 1433, x = 25.65, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Lakeshire", map = 1433, x = 25.5, y = 59.41, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.21, y = 81.84 },
					{ t = "turnin", quest = 1688, title = "Surena Caledon", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.25, f = "e" },
					{ t = "accept", quest = 1689, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.25, f = "e" },
				},
			},
			{
				note = "Stand on the pink symbol. Inside the crypt. Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 6928, itemName = "Bloodstone Choker" },
					{ t = "kill", quest = 1689, npc = 5676, target = "Summoned Voidwalker", oi = 1, map = 1453, x = 36.79, y = 89.56, f = "e" },
				},
			},
			{
				note = "Above the crypt. Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1689, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.25, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Stormwind City", map = 1453, x = 60.39, y = 75.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 39, title = "Deliver Thomas' Report", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.11, y = 65.93, f = "e" },
				},
			},
		},
	})
end

