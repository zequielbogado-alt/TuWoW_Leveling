-- TuWoW_Leveling — Guides/Leveling_Alliance_22.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-stranglethorn-vale-37-38",
		pack = "guides",
		title = "Stranglethorn Vale",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-swamp-of-sorrows-38-39",
		author = "TuWoW & Zygor",
		minLevel = 37,
		maxLevel = 38,
		zone = 1434,
		version = 1,
		steps = {
			{
				note = "Collect into the bank.",
				goals = {
					{ t = "collect", quest = 328, item = 2719, itemName = "Small Brass Key", map = 1434, x = 26.54, y = 76.57, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "sethome", location = "Booty Bay", map = 1434, x = 27.04, y = 77.31, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 1115, title = "The Rumormonger", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "accept", quest = 189, title = "Bloodscalp Ears", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.12, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "accept", quest = 601, title = "Water Elementals", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
				},
			},
			{
				note = "Upper level of the docks. Inside the building.",
				goals = {
					{ t = "accept", quest = 577, title = "Some Assembly Required", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.29, y = 77.59, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5498, npcName = "Elsharin", map = 1453, x = 48.2, y = 87.21, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.27, y = 81.78 },
					{ t = "train", npc = 461, npcName = "Demisette Cloyce", map = 1453, x = 39.25, y = 84.96, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5520, npcName = "Spackle Thornberry", map = 1453, x = 39.54, y = 84.52, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "train", npc = 5492, npcName = "Katherine the Pure", map = 1453, x = 48.47, y = 49.06, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "train", npc = 5484, npcName = "Brother Benjamin", map = 1453, x = 51.64, y = 46.42, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 5479, npcName = "Wu Shen", map = 1453, x = 80.5, y = 59.86, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 918, npcName = "Osborne the Night Man", map = 1453, x = 77.38, y = 65.3, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 5515, npcName = "Einris Brightspear", map = 1453, x = 67.32, y = 36.23, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 2879, npcName = "Karrina Mekenda", map = 1453, x = 67.29, y = 36.79, f = "e" },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Inside the building.",
				goals = {
					{ t = "collect", quest = 627, item = 4278, itemName = "Lesser Bloodstone Ore", count = 4, map = 1453, x = 61.14, y = 70.67, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "accept", quest = 627, title = "Favor for Krazek", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 627, title = "Favor for Krazek", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
					{ t = "accept", quest = 622, title = "Return to Corporal Kaleb", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 207, title = "Kurzen's Mystery", npc = 739, npcName = "Brother Nimetz", map = 1434, x = 37.83, y = 3.56, f = "e" },
				},
			},
			{
				note = "Skip if he's not here. Can try again later.",
				goals = {
					{ t = "turnin", quest = 198, title = "Supplies to Private Thorsen", npc = 738, npcName = "Private Thorsen", map = 1434, x = 37.98, y = 3.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 574, title = "Special Forces", npc = 733, npcName = "Sergeant Yohwa", map = 1434, x = 38.02, y = 3.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 622, title = "Return to Corporal Kaleb", npc = 770, npcName = "Corporal Kaleb", map = 1434, x = 37.74, y = 3.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 195, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 188, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.62, y = 10.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 192, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.55, y = 10.55, f = "e" },
				},
			},
			{
				label = "Collect_Liferoot_Warrior",
				note = "Share spawns with other Kurzen enemies. Needed for important class quest soon. Don't vendor them.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1712, item = 3357, itemName = "Liferoot", count = 8, oi = 1, map = 1434, x = 44.0, y = 11.8, f = "e" },
				},
			},
			{
				note = "Kill enemies as you walk. Reduces grinding all at once.",
				goals = {
					{ t = "complete", quest = 328, title = "The Hidden Key", note = "Click Here to Continue" },
				},
			},
			{
				note = "Downstairs inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1434, x = 45.82, y = 8.18 },
					{ t = "turnin", quest = 328, title = "The Hidden Key", map = 1434, x = 49.61, y = 7.57, f = "e" },
					{ t = "accept", quest = 329, title = "The Spy Revealed!", map = 1434, x = 49.61, y = 7.57, f = "e" },
				},
			},
			{
				label = "Kill_Kurzen_Headshrinkers",
				along = true,
				note = "Ground level inside the cave. notinsticky",
				goals = {
					{ t = "kill", quest = 574, npc = 941, target = "Kurzen Headshrinker", count = 6, oi = 2, map = 1434, x = 46.48, y = 7.08, f = "e" },
				},
			},
			{
				label = "Kill_Kurzen_Commandos",
				along = true,
				note = "Stealthed. Ground level inside the cave. notinsticky",
				goals = {
					{ t = "kill", quest = 574, npc = 938, target = "Kurzen Commando", count = 10, oi = 1, map = 1434, x = 46.48, y = 7.08, f = "e" },
				},
			},
			{
				label = "Collect_Silk_Cloth",
				along = true,
				note = "Throughout the cave. notinsticky Needed for future quest in Searing Gorge. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 4449, item = 4306, itemName = "Silk Cloth", count = 15, map = 1434, x = 46.48, y = 7.08, f = "e" },
				},
			},
			{
				note = "Stealthed. Avoid Bhag'thera. Level 40 elite non-stealthed black panther.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1434, x = 45.82, y = 8.18 },
					{ t = "kill", quest = 192, npc = 684, target = "Shadowmaw Panther", count = 10, oi = 1, map = 1434, x = 48.6, y = 22.2, f = "e" },
				},
			},
			{
				note = "In and around the water.",
				goals = {
					{ t = "collect", quest = 577, item = 4104, itemName = "Snapjaw Crocolisk Skin", count = 5, oi = 1, map = 1434, x = 40.4, y = 25.0, f = "e" },
				},
			},
			{
				label = "Kill_Lashtail_Raptors",
				along = true,
				goals = {
					{ t = "kill", quest = 195, npc = 686, target = "Lashtail Raptor", count = 10, oi = 1, map = 1434, x = 37.2, y = 23.6, f = "e" },
				},
			},
			{
				note = "Orange tiger. Usually on top of the hill. Walks around.",
				goals = {
					{ t = "collect", quest = 188, item = 3879, itemName = "Paw of Sin'Dall", oi = 1, map = 1434, x = 32.21, y = 17.39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 207, item = 2005, itemName = "The First Troll Legend", oi = 1, map = 1434, x = 29.48, y = 19.15, f = "e" },
				},
			},
			{
				note = "Avoid the elite murlocs. Underwater.",
				goals = {
					{ t = "collect", quest = 207, item = 2006, itemName = "The Second Troll Legend", oi = 2, map = 1434, x = 24.75, y = 22.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 601, item = 3923, itemName = "Water Elemental Bracers", count = 6, oi = 1, map = 1434, x = 21.4, y = 22.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1434, x = 23.84, y = 10.65 },
					{ t = "collect", quest = 207, item = 2008, itemName = "The Fourth Troll Legend", oi = 4, map = 1434, x = 24.7, y = 8.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1434, x = 24.51, y = 11.72 },
					{ t = "collect", quest = 207, item = 2007, itemName = "The Third Troll Legend", oi = 3, map = 1434, x = 22.95, y = 12.02, f = "e" },
				},
			},
			{
				label = "Collect_Bloodscalp_Tusks_For_Warriors_And_Ears",
				along = true,
				note = "Trolls.",
				goals = {
					{ t = "collect", quest = 189, item = 1519, itemName = "Bloodscalp Ear", count = 15, oi = 1, map = 1434, x = 24.6, y = 11.4, f = "e" },
					{ t = "collect", quest = 1712, item = 3901, itemName = "Bloodscalp Tusk", count = 30, oi = 2, map = 1434, x = 24.6, y = 11.4, f = "e", only = { classes = { "WARRIOR" } } },
				},
			},
			{
				note = "Helps reach level 38 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 37,69700", map = 1434, x = 24.6, y = 11.4 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 195, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
					{ t = "accept", quest = 196, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 188, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.62, y = 10.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 192, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.55, y = 10.55, f = "e" },
					{ t = "accept", quest = 193, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.55, y = 10.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 207, title = "Kurzen's Mystery", npc = 739, npcName = "Brother Nimetz", map = 1434, x = 37.83, y = 3.56, f = "e" },
					{ t = "accept", quest = 205, title = "Troll Witchery", npc = 739, npcName = "Brother Nimetz", map = 1434, x = 37.83, y = 3.56, f = "e" },
				},
			},
			{
				note = "Wait until he respawns, if missing.",
				goals = {
					{ t = "turnin", quest = 198, title = "Supplies to Private Thorsen", npc = 738, npcName = "Private Thorsen", map = 1434, x = 37.98, y = 3.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 574, title = "Special Forces", npc = 469, npcName = "Lieutenant Doren", map = 1434, x = 38.04, y = 3.01, f = "e" },
					{ t = "turnin", quest = 329, title = "The Spy Revealed!", npc = 469, npcName = "Lieutenant Doren", map = 1434, x = 38.04, y = 3.01, f = "e" },
					{ t = "accept", quest = 330, title = "Patrol Schedules", npc = 469, npcName = "Lieutenant Doren", map = 1434, x = 38.04, y = 3.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 330, title = "Patrol Schedules", npc = 1422, npcName = "Corporal Sethman", map = 1434, x = 37.66, y = 3.39, f = "e" },
					{ t = "accept", quest = 331, title = "Report to Doren", npc = 1422, npcName = "Corporal Sethman", map = 1434, x = 37.66, y = 3.39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 331, title = "Report to Doren", npc = 469, npcName = "Lieutenant Doren", map = 1434, x = 38.04, y = 3.01, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "accept", quest = 1116, title = "Dream Dust in the Swamp", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 189, title = "Bloodscalp Ears", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.12, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 601, title = "Water Elementals", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
					{ t = "accept", quest = 602, title = "Magical Analysis", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
				},
			},
			{
				note = "Deposit into the bank.",
				goals = {
					{ t = "complete", quest = 602, title = "Magical Analysis", note = "bank Bag of Water Elemental Bracers##3960", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "goto", text = "bank Silk Cloth##4306", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 1##2725", map = 1453, x = 64.26, y = 80.75 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 4##2728", map = 1453, x = 64.26, y = 80.75 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 6##2730", map = 1453, x = 64.26, y = 80.75 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 8##2732", map = 1453, x = 64.26, y = 80.75 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 10##2734", map = 1453, x = 64.26, y = 80.75 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 11##2735", map = 1453, x = 64.26, y = 80.75 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 14##2738", map = 1453, x = 64.26, y = 80.75 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 16##2740", map = 1453, x = 64.26, y = 80.75 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 18##2742", map = 1453, x = 64.26, y = 80.75 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 20##2744", map = 1453, x = 64.26, y = 80.75 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 21##2745", map = 1453, x = 64.26, y = 80.75 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 24##2748", map = 1453, x = 64.26, y = 80.75 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 25##2749", map = 1453, x = 64.26, y = 80.75 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 26##2750", map = 1453, x = 64.26, y = 80.75 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 27##2751", map = 1453, x = 64.26, y = 80.75 },
				},
			},
			{
				note = "Upper level of the docks. Inside the building.",
				goals = {
					{ t = "turnin", quest = 577, title = "Some Assembly Required", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.29, y = 77.59, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-swamp-of-sorrows-38-39",
		pack = "guides",
		title = "Swamp of Sorrows",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-arathi-highlands-and-alterac-mountains-39-40",
		author = "TuWoW & Zygor",
		minLevel = 38,
		maxLevel = 39,
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Top of the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5498, npcName = "Elsharin", map = 1453, x = 48.2, y = 87.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 50.5, y = 90.4 },
					{ t = "accept", quest = 1260, title = "Morgan Stern", npc = 1141, npcName = "Angus Stern", map = 1453, x = 51.78, y = 93.61, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 51.52, y = 73.69 },
					{ t = "accept", quest = 1363, title = "Mazen's Behest", npc = 338, npcName = "Mazen Mac'Nadir", map = 1453, x = 51.8, y = 74.24, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1363, title = "Mazen's Behest", npc = 5386, npcName = "Acolyte Dellis", map = 1453, x = 51.37, y = 73.82, f = "e" },
					{ t = "accept", quest = 1364, title = "Mazen's Behest", npc = 5386, npcName = "Acolyte Dellis", map = 1453, x = 51.37, y = 73.82, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 51.52, y = 73.69 },
					{ t = "accept", quest = 1363, title = "Mazen's Behest", npc = 338, npcName = "Mazen Mac'Nadir", map = 1453, x = 51.8, y = 74.24, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1363, title = "Mazen's Behest", npc = 5386, npcName = "Acolyte Dellis", map = 1453, x = 51.37, y = 73.82, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 50.5, y = 90.4 },
					{ t = "accept", quest = 1260, title = "Morgan Stern", npc = 1141, npcName = "Angus Stern", map = 1453, x = 51.78, y = 93.61, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.27, y = 81.78 },
					{ t = "train", npc = 461, npcName = "Demisette Cloyce", map = 1453, x = 39.25, y = 84.96, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5520, npcName = "Spackle Thornberry", map = 1453, x = 39.54, y = 84.52, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "train", npc = 5492, npcName = "Katherine the Pure", map = 1453, x = 48.47, y = 49.06, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "train", npc = 5484, npcName = "Brother Benjamin", map = 1453, x = 51.64, y = 46.42, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 5479, npcName = "Wu Shen", map = 1453, x = 80.5, y = 59.86, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 918, npcName = "Osborne the Night Man", map = 1453, x = 77.38, y = 65.3, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1448, title = "In Search of The Temple", npc = 5384, npcName = "Brohann Caskbelly", map = 1453, x = 69.42, y = 40.4, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 5515, npcName = "Einris Brightspear", map = 1453, x = 67.32, y = 36.23, f = "e" },
				},
			},
			{
				note = "Avoid Stonard Scouts. Horde NPCs in Horde camps and patrolling the roads. They will PVP flag you.",
				goals = {
					{ t = "complete", quest = 1116, title = "Dream Dust in the Swamp", note = "Click Here to Continue" },
				},
			},
			{
				note = "Kill enemies as you walk. Reduces grinding all at once.",
				goals = {
					{ t = "complete", quest = 1116, title = "Dream Dust in the Swamp", note = "Click Here to Continue" },
				},
			},
			{
				note = "Tiny flying dragons. Skip once no more to kill. Can finish later.",
				goals = {
					{ t = "collect", quest = 1116, item = 5803, itemName = "Speck of Dream Dust", count = 10, oi = 1, map = 1435, x = 12.4, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1396, title = "Encroaching Wildlife", npc = 5476, npcName = "Watcher Biggs", map = 1435, x = 26.74, y = 59.83, f = "e" },
				},
			},
			{
				note = "Humanoid creature with 2 guards. Walks a large path.",
				goals = {
					{ t = "collect", item = 6196, itemName = "Noboru's Cudgel", map = 1435, x = 54.9, y = 34.1, f = "e" },
					{ t = "use", item = 6196, itemName = "Noboru's Cudgel" },
					{ t = "accept", quest = 1392, title = "Noboru the Cudgel", npc = 5477, npcName = "Noboru the Cudgel", map = 1435, x = 54.9, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1392, title = "Noboru the Cudgel", npc = 1776, npcName = "Magtoor", map = 1435, x = 25.99, y = 31.4, f = "e" },
					{ t = "accept", quest = 1389, title = "Draenethyst Crystals", npc = 1776, npcName = "Magtoor", map = 1435, x = 25.99, y = 31.4, f = "e" },
				},
			},
			{
				note = "Tiny flying dragons. Skip once no more to kill. Can finish later.",
				goals = {
					{ t = "collect", quest = 1116, item = 5803, itemName = "Speck of Dream Dust", count = 10, oi = 1, map = 1435, x = 16.8, y = 58.4, f = "e" },
				},
			},
			{
				label = "Kill_Young_Sawtooth_Crocolisks",
				along = true,
				goals = {
					{ t = "kill", quest = 1396, npc = 1084, target = "Young Sawtooth Crocolisk", count = 8, oi = 1, map = 1435, x = 24.6, y = 52.4, f = "e" },
				},
			},
			{
				label = "Kill_Sorrow_Spinners",
				along = true,
				note = "Spiders.",
				goals = {
					{ t = "kill", quest = 1396, npc = 858, target = "Sorrow Spinner", count = 10, oi = 2, map = 1435, x = 25.4, y = 49.2, f = "e" },
				},
			},
			{
				label = "Kill_Swamp_Jaguars",
				along = true,
				goals = {
					{ t = "kill", quest = 1396, npc = 767, target = "Swamp Jaguar", count = 10, oi = 3, map = 1435, x = 26.4, y = 47.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1396, title = "Encroaching Wildlife", npc = 5476, npcName = "Watcher Biggs", map = 1435, x = 26.74, y = 59.83, f = "e" },
					{ t = "accept", quest = 1421, title = "The Lost Caravan", npc = 5476, npcName = "Watcher Biggs", map = 1435, x = 26.74, y = 59.83, f = "e" },
				},
			},
			{
				note = "Walks around. Multiple locations.",
				goals = {
					{ t = "collect", quest = 1373, item = 6190, itemName = "Draenethyst Shard", oi = 1, map = 1435, x = 61.31, y = 23.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1421, item = 6170, itemName = "Wizards' Reagents", oi = 1, map = 1435, x = 64.46, y = 18.34, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing. Kill nearby enemies to the south first.",
				goals = {
					{ t = "accept", quest = 1393, title = "Galen's Escape", npc = 5391, npcName = "Galen Goodward", map = 1435, x = 65.41, y = 18.23, f = "e" },
				},
			},
			{
				note = "Follow and protect Galen Goodward.",
				goals = {
					{ t = "complete", quest = 1393, title = "Galen's Escape", note = "Escort Galen Out of the Fallow Sanctuary", map = 1435, x = 53.05, y = 29.64, f = "e" },
				},
			},
			{
				label = "Collect_Draenethyst_Crystals",
				along = true,
				note = "Large blue crystals.",
				goals = {
					{ t = "collect", quest = 1389, item = 6071, itemName = "Draenethyst Crystal", count = 6, oi = 1, map = 1435, x = 55.0, y = 30.2, f = "e" },
				},
			},
			{
				note = "Run in the water to avoid higher level enemies.",
				goals = {
					{ t = "complete", quest = 1448, title = "In Search of The Temple", note = "Search for the Temple of Atal'Hakkar", map = 1435, x = 66.68, y = 49.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1393, title = "Galen's Escape", map = 1435, x = 47.81, y = 39.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1389, title = "Draenethyst Crystals", npc = 1776, npcName = "Magtoor", map = 1435, x = 25.99, y = 31.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1421, title = "The Lost Caravan", npc = 5476, npcName = "Watcher Biggs", map = 1435, x = 26.74, y = 59.83, f = "e" },
				},
			},
			{
				note = "Tiny flying dragons.",
				goals = {
					{ t = "collect", quest = 1116, item = 5803, itemName = "Speck of Dream Dust", count = 10, oi = 1, map = 1435, x = 16.8, y = 58.4, f = "e" },
				},
			},
			{
				note = "Helps reach level 39 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 38,77300", map = 1435, x = 25.4, y = 49.2 },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 1116, title = "Dream Dust in the Swamp", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "accept", quest = 1117, title = "Rumors for Kravel", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
				},
			},
			{
				note = "Buy from the Auction House, if possible.",
				goals = {
					{ t = "collect", quest = 668, item = 5996, itemName = "Elixir of Water Breathing", count = 2, map = 1453, x = 61.13, y = 70.67, f = "e", only = { classes = { "WARLOCK", "DRUID" } } },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 1457, item = 6245, itemName = "Karnitol's Satchel", map = 1453, x = 64.26, y = 80.75, f = "e" },
					{ t = "collect", quest = 602, item = 3960, itemName = "Bag of Water Elemental Bracers", map = 1453, x = 64.26, y = 80.75, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "goto", text = "bank Goblin Rumors##5804", map = 1453, x = 64.26, y = 80.75 },
					{ t = "complete", quest = 1373, title = "Ongeku", note = "bank Draenethyst Shard##6190", map = 1453, x = 64.26, y = 80.75, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1448, title = "In Search of The Temple", npc = 5384, npcName = "Brohann Caskbelly", map = 1453, x = 69.42, y = 40.4, f = "e" },
					{ t = "accept", quest = 1449, title = "To The Hinterlands", npc = 5384, npcName = "Brohann Caskbelly", map = 1453, x = 69.42, y = 40.4, f = "e" },
				},
			},
			{
				note = "Walk into the portal.",
				goals = {
					{ t = "complete", quest = 1457, title = "The Karnitol Shipwreck", note = "Enter the Deeprun Tram", map = 1453, x = 69.1, y = 30.75, f = "e" },
				},
			},
			{
				note = "Walk into the portal.",
				goals = {
					{ t = "complete", quest = 1457, title = "The Karnitol Shipwreck", note = "Enter Ironforge" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 1457, title = "The Karnitol Shipwreck", npc = 5637, npcName = "Roetten Stonehammer", map = 1455, x = 67.91, y = 17.49, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 525, title = "Further Mysteries", npc = 1356, npcName = "Prospector Stormpike", map = 1455, x = 74.64, y = 11.74, f = "e" },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Needed for Whirlwind class quest. Big weapon upgrade. Inside the building. Level 40 elite enemy soon. Hits hard with only Nature damage. If someone helps you, skip the potions.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1712, item = 3357, itemName = "Liferoot", count = 8, map = 1455, x = 24.16, y = 74.67, f = "e" },
					{ t = "collect", quest = 1714, item = 4480, itemName = "Thundering Charm", count = 8, map = 1455, x = 24.16, y = 74.67, f = "e" },
					{ t = "collect", quest = 1714, item = 4479, itemName = "Burning Charm", count = 8, map = 1455, x = 24.16, y = 74.67, f = "e" },
					{ t = "collect", quest = 1714, item = 4481, itemName = "Cresting Charm", count = 8, map = 1455, x = 24.16, y = 74.67, f = "e" },
					{ t = "collect", quest = 1713, item = 6052, itemName = "Nature Protection Potion", count = 2, map = 1455, x = 24.16, y = 74.67, f = "e" },
				},
			},
		},
	})
end

