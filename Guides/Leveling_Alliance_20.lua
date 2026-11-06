-- TuWoW_Leveling — Guides/Leveling_Alliance_20.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-stranglethorn-vale-34-35",
		pack = "guides",
		title = "Stranglethorn Vale",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-desolace-35-37",
		author = "TuWoW & Zygor",
		minLevel = 34,
		maxLevel = 35,
		zone = 1434,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 1180, title = "Goblin Sponsorship", npc = 4631, npcName = "Wharfmaster Lozgil", map = 1434, x = 26.35, y = 73.56, f = "e" },
					{ t = "accept", quest = 1181, title = "Goblin Sponsorship", npc = 4631, npcName = "Wharfmaster Lozgil", map = 1434, x = 26.35, y = 73.56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1040, title = "Passage to Booty Bay", npc = 3945, npcName = "Caravaneer Ruzzgot", map = 1434, x = 27.37, y = 74.08, f = "e" },
					{ t = "accept", quest = 1041, title = "The Caravan Road", npc = 3945, npcName = "Caravaneer Ruzzgot", map = 1434, x = 27.37, y = 74.08, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "sethome", location = "Booty Bay", map = 1434, x = 27.04, y = 77.31, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "accept", quest = 605, title = "Singing Blue Shards", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "accept", quest = 201, title = "Investigate the Camp", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
					{ t = "accept", quest = 198, title = "Supplies to Private Thorsen", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
					{ t = "accept", quest = 616, title = "The Haunted Isle", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "accept", quest = 213, title = "Hostile Takeover", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.12, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 1181, title = "Goblin Sponsorship", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
					{ t = "accept", quest = 1182, title = "Goblin Sponsorship", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
					{ t = "turnin", quest = 616, title = "The Haunted Isle", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
					{ t = "accept", quest = 578, title = "The Stone of the Tides", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
				},
			},
			{
				note = "Deposit into the bank.",
				goals = {
					{ t = "complete", quest = 1112, title = "Parts for Kravel", note = "bank Kravel's Parts##5800", map = 1434, x = 26.54, y = 76.57, f = "e" },
				},
			},
			{
				note = "Upper level of the docks. Inside the building.",
				goals = {
					{ t = "accept", quest = 575, title = "Supply and Demand", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.29, y = 77.59, f = "e" },
				},
			},
			{
				note = "Upper level of the docks. Up on the balcony of the building.",
				goals = {
					{ t = "getfp", location = "Booty Bay", map = 1434, x = 27.53, y = 77.79, f = "e" },
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
				note = "Skip if he's not here. Can try again later.",
				goals = {
					{ t = "turnin", quest = 198, title = "Supplies to Private Thorsen", npc = 738, npcName = "Private Thorsen", map = 1434, x = 37.98, y = 3.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 203, title = "The Second Rebellion", npc = 733, npcName = "Sergeant Yohwa", map = 1434, x = 38.02, y = 3.33, f = "e" },
					{ t = "accept", quest = 204, title = "Bad Medicine", npc = 733, npcName = "Sergeant Yohwa", map = 1434, x = 38.02, y = 3.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 200, title = "Bookie Herod", npc = 469, npcName = "Lieutenant Doren", map = 1434, x = 38.04, y = 3.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 201, title = "Investigate the Camp", note = "Locate the Hunters' Camp", map = 1434, x = 35.55, y = 10.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5762, title = "Hemet Nesingwary", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 186, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.61, y = 10.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 191, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.55, y = 10.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 204, item = 2634, itemName = "Venom Fern Extract", oi = 2, map = 1434, x = 44.1, y = 9.56, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 200, title = "Bookie Herod", map = 1434, x = 43.67, y = 9.37, f = "e" },
					{ t = "accept", quest = 328, title = "The Hidden Key", map = 1434, x = 43.67, y = 9.37, f = "e" },
				},
			},
			{
				label = "Collect_Jungle_Remedies",
				along = true,
				note = "Medicine Men heal themselves and others. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 204, item = 2633, itemName = "Jungle Remedy", count = 7, oi = 1, map = 1434, x = 44.0, y = 11.8, f = "e" },
				},
			},
			{
				label = "Kill_Kurzen_Jungle_Fighters",
				along = true,
				goals = {
					{ t = "kill", quest = 203, npc = 937, target = "Kurzen Jungle Fighter", count = 15, oi = 1, map = 1434, x = 44.0, y = 11.8, f = "e" },
				},
			},
			{
				note = "Skip once no more to kill. Can finish later.",
				goals = {
					{ t = "collect", quest = 605, item = 3918, itemName = "Singing Crystal Shard", count = 10, oi = 1, map = 1434, x = 47.6, y = 9.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 186, npc = 682, target = "Stranglethorn Tiger", count = 10, oi = 1, map = 1434, x = 46.4, y = 12.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 35", map = 1434, x = 46.4, y = 12.8 },
				},
			},
			{
				note = "Top of the platform. Inside the building.",
				goals = {
					{ t = "collect", quest = 1182, item = 5851, itemName = "Cozzle's Key", map = 1434, x = 42.65, y = 18.35, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "collect", quest = 1182, item = 5852, itemName = "Fuel Regulator Blueprints", oi = 1, map = 1434, x = 43.34, y = 20.34, f = "e" },
				},
			},
			{
				label = "Collect_Tumbled_Crystals",
				along = true,
				goals = {
					{ t = "collect", quest = 213, item = 4106, itemName = "Tumbled Crystal", count = 8, oi = 1, map = 1434, x = 44.2, y = 20.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 203, title = "The Second Rebellion", npc = 733, npcName = "Sergeant Yohwa", map = 1434, x = 38.02, y = 3.33, f = "e" },
					{ t = "turnin", quest = 204, title = "Bad Medicine", npc = 733, npcName = "Sergeant Yohwa", map = 1434, x = 38.02, y = 3.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 210, title = "Krazek's Cookery", npc = 770, npcName = "Corporal Kaleb", map = 1434, x = 37.74, y = 3.3, f = "e" },
				},
			},
			{
				note = "Skip if he's not here. Can try again later.",
				goals = {
					{ t = "turnin", quest = 198, title = "Supplies to Private Thorsen", npc = 738, npcName = "Private Thorsen", map = 1434, x = 37.98, y = 3.42, f = "e" },
				},
			},
			{
				label = "Collect_Large_River_Crocolisk_Skins",
				along = true,
				note = "Along the river.",
				goals = {
					{ t = "collect", quest = 575, item = 4053, itemName = "Large River Crocolisk Skin", count = 2, oi = 1, map = 1434, x = 36.8, y = 10.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 186, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.61, y = 10.62, f = "e" },
					{ t = "accept", quest = 187, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.61, y = 10.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 194, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 187, npc = 1085, target = "Elder Stranglethorn Tiger", count = 10, oi = 1, map = 1434, x = 31.4, y = 14.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 191, npc = 736, target = "Panther", count = 10, oi = 1, map = 1434, x = 28.2, y = 16.4, f = "e" },
				},
			},
			{
				label = "Kill_Stranglethorn_Raptors",
				along = true,
				goals = {
					{ t = "kill", quest = 194, npc = 685, target = "Stranglethorn Raptor", count = 10, oi = 1, map = 1434, x = 27.4, y = 14.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 605, item = 3918, itemName = "Singing Crystal Shard", count = 10, oi = 1, map = 1434, x = 24.0, y = 17.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 578, title = "The Stone of the Tides", note = "Locate the Haunted Island", map = 1434, x = 21.33, y = 21.93, f = "e" },
				},
			},
			{
				note = "No death penalty at this level. Fast travel. Inside and outside the mine.",
				goals = {
					{ t = "complete", quest = 578, title = "The Stone of the Tides", note = "Die on Purpose", map = 1434, x = 21.33, y = 21.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 578, title = "The Stone of the Tides", note = "Resurrect at the Spirit Healer", map = 1434, x = 38.38, y = 8.96, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 194, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 187, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.62, y = 10.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 191, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.55, y = 10.55, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "turnin", quest = 605, title = "Singing Blue Shards", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 201, title = "Investigate the Camp", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
					{ t = "turnin", quest = 210, title = "Krazek's Cookery", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 213, title = "Hostile Takeover", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.12, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 578, title = "The Stone of the Tides", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
					{ t = "turnin", quest = 1182, title = "Goblin Sponsorship", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
					{ t = "accept", quest = 1183, title = "Goblin Sponsorship", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
				},
			},
			{
				note = "Deposit into the bank.",
				goals = {
					{ t = "complete", quest = 1183, title = "Goblin Sponsorship", note = "bank Fuel Regulator Blueprints##5852", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "complete", quest = 328, title = "The Hidden Key", note = "bank Small Brass Key##2719", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 1##2725", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 4##2728", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 6##2730", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 8##2732", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 10##2734", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 11##2735", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 14##2738", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 16##2740", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 18##2742", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 20##2744", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 21##2745", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 24##2748", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 25##2749", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 26##2750", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 27##2751", map = 1434, x = 26.54, y = 76.57 },
				},
			},
			{
				note = "Upper level of the docks. Inside the building.",
				goals = {
					{ t = "turnin", quest = 575, title = "Supply and Demand", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.29, y = 77.59, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 1041, title = "The Caravan Road", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.53, y = 46.86, f = "e" },
					{ t = "accept", quest = 1042, title = "The Carevin Family", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.53, y = 46.86, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1042, title = "The Carevin Family", npc = 661, npcName = "Jonathan Carevin", map = 1431, x = 75.32, y = 49.02, f = "e" },
					{ t = "accept", quest = 1043, title = "The Scythe of Elune", npc = 661, npcName = "Jonathan Carevin", map = 1431, x = 75.32, y = 49.02, f = "e" },
				},
			},
			{
				note = "Inside the mine.",
				goals = {
					{ t = "goto", text = "Enter the mine", map = 1431, x = 73.05, y = 75.14 },
					{ t = "complete", quest = 1043, title = "The Scythe of Elune", note = "Find Evidence of the Scythe of Elune", map = 1431, x = 73.54, y = 79.13, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Leave the mine", map = 1431, x = 73.05, y = 75.14 },
					{ t = "turnin", quest = 1043, title = "The Scythe of Elune", npc = 661, npcName = "Jonathan Carevin", map = 1431, x = 75.32, y = 49.02, f = "e" },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Inside the building.",
				only = { classes = { "WARLOCK", "DRUID" } },
				goals = {
					{ t = "collect", quest = 6161, item = 5996, itemName = "Elixir of Water Breathing", count = 2, map = 1453, x = 61.14, y = 70.67, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 563, item = 3721, itemName = "Farren's Report", map = 1453, x = 64.26, y = 80.75, f = "e" },
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
				goals = {
					{ t = "goto", text = "Enter Stormwind Keep", map = 1453, x = 73.09, y = 46.62 },
					{ t = "turnin", quest = 563, title = "Reassignment", npc = 2439, npcName = "Major Samuelson", map = 1453, x = 75.8, y = 36.69, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "accept", quest = 1453, title = "Reclaimers' Business in Desolace", npc = 5637, npcName = "Roetten Stonehammer", map = 1455, x = 67.91, y = 17.49, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1758, title = "Tome of the Cabal", npc = 6294, npcName = "Krom Stoutarm", map = 1455, x = 74.21, y = 9.42, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1791, title = "The Windwatcher", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
					{ t = "accept", quest = 1712, title = "Cyclonian", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
				},
			},
		},
	})
end

