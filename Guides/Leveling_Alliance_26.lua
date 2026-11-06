-- TuWoW_Leveling — Guides/Leveling_Alliance_26.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-stranglethorn-vale-42-43",
		pack = "guides",
		title = "Stranglethorn Vale",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-swamp-of-sorrows-43-43",
		author = "TuWoW & Zygor",
		minLevel = 42,
		maxLevel = 43,
		zone = 1455,
		version = 1,
		steps = {
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 669, item = 4502, itemName = "Sample Elven Gem", map = 1455, x = 35.92, y = 60.14, f = "e" },
					{ t = "collect", quest = 1118, item = 5826, itemName = "Kravel's Scheme", map = 1455, x = 35.92, y = 60.14, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "goto", text = "Train Tiger Riding", map = 1457, x = 38.69, y = 15.84 },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "goto", text = "Train Ram Riding", map = 1426, x = 63.94, y = 50.1 },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "goto", text = "Train Mechanostrider Piloting", map = 1426, x = 49.15, y = 48.13 },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "accept", quest = 1477, title = "Vital Supplies", npc = 5694, npcName = "High Sorcerer Andromath", map = 1453, x = 48.71, y = 87.63, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 51.52, y = 73.69 },
					{ t = "accept", quest = 1364, title = "Mazen's Behest", npc = 5386, npcName = "Acolyte Dellis", map = 1453, x = 51.37, y = 73.82, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", text = "Train Horse Riding", map = 1429, x = 84.32, y = 64.87 },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "accept", quest = 209, title = "Skullsplitter Tusks", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.13, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 669, title = "Sunken Treasure", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.17, y = 77.01, f = "e" },
				},
			},
			{
				note = "Middle floor inside the building.",
				goals = {
					{ t = "turnin", quest = 603, title = "Ansirem's Key", npc = 2542, npcName = "Catelyn the Blade", map = 1434, x = 27.28, y = 77.53, f = "e" },
					{ t = "accept", quest = 610, title = "\"Pretty Boy\" Duncan", npc = 2542, npcName = "Catelyn the Blade", map = 1434, x = 27.28, y = 77.53, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building. Inside the building.",
				goals = {
					{ t = "sethome", location = "Booty Bay", map = 1434, x = 27.04, y = 77.31, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "turnin", quest = 1118, title = "Back to Booty Bay", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "accept", quest = 600, title = "Venture Company Mining", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
					{ t = "accept", quest = 621, title = "Zanzil's Secret", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 606, title = "Scaring Shaky", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.78, y = 77.07, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 595, title = "The Bloodsail Buccaneers", npc = 2490, npcName = "First Mate Crazz", map = 1434, x = 28.1, y = 76.22, f = "e" },
				},
			},
			{
				note = "Upper level of the docks. Inside the building.",
				goals = {
					{ t = "accept", quest = 628, title = "Excelsior", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.29, y = 77.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run through the tunnel to leave Booty Bay", map = 1434, x = 28.0, y = 73.46 },
					{ t = "collect", quest = 606, item = 3919, itemName = "Mistvale Giblets", count = 5, oi = 1, map = 1434, x = 31.2, y = 68.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 595, title = "The Bloodsail Buccaneers", map = 1434, x = 27.28, y = 69.52, f = "e" },
					{ t = "accept", quest = 597, title = "The Bloodsail Buccaneers", map = 1434, x = 27.28, y = 69.52, f = "e" },
				},
			},
			{
				label = "Collect_Catelyns_Blade",
				along = true,
				goals = {
					{ t = "collect", quest = 610, item = 4027, itemName = "Catelyn's Blade", oi = 1, map = 1434, x = 27.38, y = 69.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run through the tunnel to enter Booty Bay", map = 1434, x = 29.56, y = 72.51 },
					{ t = "turnin", quest = 606, title = "Scaring Shaky", npc = 2502, npcName = "\"Shaky\" Phillipe", map = 1434, x = 26.9, y = 73.59, f = "e" },
					{ t = "accept", quest = 607, title = "Return to MacKinley", npc = 2502, npcName = "\"Shaky\" Phillipe", map = 1434, x = 26.9, y = 73.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 597, title = "The Bloodsail Buccaneers", npc = 2490, npcName = "First Mate Crazz", map = 1434, x = 28.1, y = 76.21, f = "e" },
					{ t = "accept", quest = 599, title = "The Bloodsail Buccaneers", npc = 2490, npcName = "First Mate Crazz", map = 1434, x = 28.1, y = 76.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 607, title = "Return to MacKinley", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.78, y = 77.07, f = "e" },
					{ t = "accept", quest = 609, title = "Voodoo Dues", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.78, y = 77.07, f = "e" },
				},
			},
			{
				note = "Middle floor inside the building.",
				goals = {
					{ t = "turnin", quest = 610, title = "\"Pretty Boy\" Duncan", npc = 2542, npcName = "Catelyn the Blade", map = 1434, x = 27.28, y = 77.53, f = "e" },
					{ t = "accept", quest = 611, title = "The Curse of the Tides", npc = 2542, npcName = "Catelyn the Blade", map = 1434, x = 27.28, y = 77.53, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 599, title = "The Bloodsail Buccaneers", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.17, y = 77.01, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 617, title = "Akiris by the Bundle", npc = 2494, npcName = "Privateer Bloads", map = 1434, x = 26.76, y = 76.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run through the tunnel to leave Booty Bay", map = 1434, x = 28.0, y = 73.46 },
					{ t = "collect", quest = 617, item = 4029, itemName = "Akiris Reed", count = 10, oi = 1, map = 1434, x = 24.4, y = 64.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 609, item = 3925, itemName = "Jon-Jon's Golden Spyglass", oi = 2, map = 1434, x = 34.93, y = 51.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 609, item = 3924, itemName = "Maury's Clubbed Foot", oi = 1, map = 1434, x = 35.25, y = 51.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path to the Ruins of Aboraz", map = 1434, x = 33.73, y = 53.77 },
					{ t = "collect", quest = 609, item = 3926, itemName = "Chucky's Huge Ring", oi = 3, map = 1434, x = 40.0, y = 58.24, f = "e" },
				},
			},
			{
				label = "Collect_Zanzils_Mixture",
				along = true,
				note = "Avoid Zanzil the Outcast. Summons many enemies.",
				goals = {
					{ t = "collect", quest = 621, item = 4016, itemName = "Zanzil's Mixture", count = 12, oi = 1, map = 1434, x = 39.8, y = 57.2, f = "e" },
				},
			},
			{
				note = "Work your way northeast.",
				goals = {
					{ t = "kill", quest = 196, npc = 687, target = "Jungle Stalker", count = 10, oi = 1, map = 1434, x = 27.2, y = 48.2, f = "e" },
				},
			},
			{
				note = "Goblins.",
				goals = {
					{ t = "collect", quest = 600, item = 3917, itemName = "Singing Blue Crystal", count = 10, oi = 1, map = 1434, x = 41.4, y = 44.6, f = "e" },
				},
			},
			{
				note = "Trolls. Mystics and Witch Doctors.",
				goals = {
					{ t = "collect", quest = 205, item = 2466, itemName = "Skullsplitter Fetish", count = 4, oi = 1, map = 1434, x = 42.2, y = 36.2, f = "e" },
					{ t = "collect", quest = 209, item = 1524, itemName = "Skullsplitter Tusk", count = 18, oi = 1, map = 1434, x = 42.2, y = 36.2, f = "e" },
				},
			},
			{
				note = "Unstealthed level 40 elite black panther. Walks around. Multiple locations.",
				goals = {
					{ t = "collect", quest = 193, item = 3876, itemName = "Fang of Bhag'thera", oi = 1, map = 1434, x = 46.37, y = 29.05, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 205, title = "Troll Witchery", npc = 739, npcName = "Brother Nimetz", map = 1434, x = 37.83, y = 3.56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 193, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.55, y = 10.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 196, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
					{ t = "accept", quest = 197, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				note = "Level 38 elite enemies. Shared spawns with Saltwater Crocolisks.",
				goals = {
					{ t = "collect", quest = 628, item = 4105, itemName = "Elder Crocolisk Skin", oi = 1, map = 1434, x = 29.2, y = 22.4, f = "e" },
				},
			},
			{
				note = "Stone table. Underwater. Pull him up to the water surface.",
				goals = {
					{ t = "collect", quest = 611, item = 4034, itemName = "Stone of the Tides", oi = 1, map = 1434, x = 24.96, y = 23.58, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "turnin", quest = 600, title = "Venture Company Mining", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
					{ t = "turnin", quest = 621, title = "Zanzil's Secret", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "accept", quest = 587, title = "Up to Snuff", npc = 2488, npcName = "Deeg", map = 1434, x = 26.92, y = 77.35, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 209, title = "Skullsplitter Tusks", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.13, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "accept", quest = 604, title = "The Bloodsail Buccaneers", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.17, y = 77.01, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 611, title = "The Curse of the Tides", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 617, title = "Akiris by the Bundle", npc = 2494, npcName = "Privateer Bloads", map = 1434, x = 26.76, y = 76.38, f = "e" },
					{ t = "accept", quest = 623, title = "Akiris by the Bundle", npc = 2494, npcName = "Privateer Bloads", map = 1434, x = 26.76, y = 76.38, f = "e" },
				},
			},
			{
				note = "Deposit into the bank.",
				goals = {
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
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 609, title = "Voodoo Dues", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.78, y = 77.07, f = "e" },
				},
			},
			{
				note = "Upper level of the docks. Inside the building.",
				goals = {
					{ t = "turnin", quest = 628, title = "Excelsior", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.29, y = 77.59, f = "e" },
				},
			},
			{
				note = "Upper level of the docks.",
				goals = {
					{ t = "accept", quest = 576, title = "Keep An Eye Out", npc = 2493, npcName = "Dizzy One-Eye", map = 1434, x = 28.59, y = 75.9, f = "e" },
				},
			},
			{
				note = "Brown paper. Multiple locations.",
				goals = {
					{ t = "goto", text = "Run through the tunnel to leave Booty Bay", map = 1434, x = 28.0, y = 73.46 },
					{ t = "goto", text = "Run along the beach", map = 1434, x = 32.89, y = 73.75 },
					{ t = "collect", quest = 604, item = 3920, itemName = "Bloodsail Charts", oi = 2, map = 1434, x = 29.59, y = 80.83, f = "e" },
				},
			},
			{
				label = "Collect_Bloodsail_Orders",
				along = true,
				note = "White unrolled scroll. Multiple locations. notinsticky",
				goals = {
					{ t = "collect", quest = 604, item = 3921, itemName = "Bloodsail Orders", oi = 3, map = 1434, x = 29.59, y = 80.8, f = "e" },
				},
			},
			{
				label = "Collect_Dizzys_Eye_And_Snuff",
				along = true,
				goals = {
					{ t = "collect", quest = 576, item = 3897, itemName = "Dizzy's Eye", oi = 1, map = 1434, x = 27.0, y = 82.8, f = "e" },
					{ t = "collect", quest = 587, item = 3910, itemName = "Snuff", count = 15, oi = 1, map = 1434, x = 27.0, y = 82.8, f = "e" },
				},
			},
			{
				label = "Kill_Bloodsail_Swashbucklers",
				along = true,
				goals = {
					{ t = "kill", quest = 604, npc = 1563, target = "Bloodsail Swashbuckler", count = 10, oi = 1, map = 1434, x = 27.0, y = 82.8, f = "e" },
				},
			},
			{
				note = "Upper level of the docks.",
				goals = {
					{ t = "goto", text = "Run through the tunnel to enter Booty Bay", map = 1434, x = 29.56, y = 72.51 },
					{ t = "turnin", quest = 576, title = "Keep An Eye Out", npc = 2493, npcName = "Dizzy One-Eye", map = 1434, x = 28.59, y = 75.9, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 604, title = "The Bloodsail Buccaneers", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.17, y = 77.01, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 587, title = "Up to Snuff", npc = 2488, npcName = "Deeg", map = 1434, x = 26.92, y = 77.35, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Skip any missing pages. We'll buy them from the Auction House.",
				goals = {
					{ t = "collect", quest = 339, item = 2725, itemName = "Green Hills of Stranglethorn - Page 1", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 339, item = 2728, itemName = "Green Hills of Stranglethorn - Page 4", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 339, item = 2730, itemName = "Green Hills of Stranglethorn - Page 6", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 339, item = 2732, itemName = "Green Hills of Stranglethorn - Page 8", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 340, item = 2734, itemName = "Green Hills of Stranglethorn - Page 10", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 340, item = 2735, itemName = "Green Hills of Stranglethorn - Page 11", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 340, item = 2738, itemName = "Green Hills of Stranglethorn - Page 14", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 340, item = 2740, itemName = "Green Hills of Stranglethorn - Page 16", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 341, item = 2742, itemName = "Green Hills of Stranglethorn - Page 18", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 341, item = 2744, itemName = "Green Hills of Stranglethorn - Page 20", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 341, item = 2745, itemName = "Green Hills of Stranglethorn - Page 21", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 341, item = 2748, itemName = "Green Hills of Stranglethorn - Page 24", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 342, item = 2749, itemName = "Green Hills of Stranglethorn - Page 25", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 342, item = 2750, itemName = "Green Hills of Stranglethorn - Page 26", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 342, item = 2751, itemName = "Green Hills of Stranglethorn - Page 27", map = 1434, x = 26.54, y = 76.57, f = "e" },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Sell your pages if you can't make a full chapter. Check the Auction House in Stormwind City, if needed.",
				goals = {
					{ t = "collect", quest = 339, item = 2725, itemName = "Green Hills of Stranglethorn - Page 1", map = 1434, x = 26.59, y = 76.35, f = "e" },
					{ t = "collect", quest = 339, item = 2728, itemName = "Green Hills of Stranglethorn - Page 4", map = 1434, x = 26.59, y = 76.35, f = "e" },
					{ t = "collect", quest = 339, item = 2730, itemName = "Green Hills of Stranglethorn - Page 6", map = 1434, x = 26.59, y = 76.35, f = "e" },
					{ t = "collect", quest = 339, item = 2732, itemName = "Green Hills of Stranglethorn - Page 8", map = 1434, x = 26.59, y = 76.35, f = "e" },
					{ t = "collect", quest = 340, item = 2734, itemName = "Green Hills of Stranglethorn - Page 10", map = 1434, x = 26.59, y = 76.35, f = "e" },
					{ t = "collect", quest = 340, item = 2735, itemName = "Green Hills of Stranglethorn - Page 11", map = 1434, x = 26.59, y = 76.35, f = "e" },
					{ t = "collect", quest = 340, item = 2738, itemName = "Green Hills of Stranglethorn - Page 14", map = 1434, x = 26.59, y = 76.35, f = "e" },
					{ t = "collect", quest = 340, item = 2740, itemName = "Green Hills of Stranglethorn - Page 16", map = 1434, x = 26.59, y = 76.35, f = "e" },
					{ t = "collect", quest = 341, item = 2742, itemName = "Green Hills of Stranglethorn - Page 18", map = 1434, x = 26.59, y = 76.35, f = "e" },
					{ t = "collect", quest = 341, item = 2744, itemName = "Green Hills of Stranglethorn - Page 20", map = 1434, x = 26.59, y = 76.35, f = "e" },
					{ t = "collect", quest = 341, item = 2745, itemName = "Green Hills of Stranglethorn - Page 21", map = 1434, x = 26.59, y = 76.35, f = "e" },
					{ t = "collect", quest = 341, item = 2748, itemName = "Green Hills of Stranglethorn - Page 24", map = 1434, x = 26.59, y = 76.35, f = "e" },
					{ t = "collect", quest = 342, item = 2749, itemName = "Green Hills of Stranglethorn - Page 25", map = 1434, x = 26.59, y = 76.35, f = "e" },
					{ t = "collect", quest = 342, item = 2750, itemName = "Green Hills of Stranglethorn - Page 26", map = 1434, x = 26.59, y = 76.35, f = "e" },
					{ t = "collect", quest = 342, item = 2751, itemName = "Green Hills of Stranglethorn - Page 27", map = 1434, x = 26.59, y = 76.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 338, title = "The Green Hills of Stranglethorn", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 339, title = "Chapter I", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 339, title = "Chapter I", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 340, title = "Chapter II", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 340, title = "Chapter II", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 341, title = "Chapter III", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 341, title = "Chapter III", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 342, title = "Chapter IV", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 342, title = "Chapter IV", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 338, title = "The Green Hills of Stranglethorn", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-swamp-of-sorrows-43-43",
		pack = "guides",
		title = "Swamp of Sorrows",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-tanaris-43-44",
		author = "TuWoW & Zygor",
		minLevel = 43,
		maxLevel = 43,
		zone = 1431,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 1477, title = "Vital Supplies", npc = 5464, npcName = "Watchmaster Sorigal", map = 1431, x = 75.77, y = 46.15, f = "e" },
				},
			},
			{
				note = "Avoid Stonard Scouts. Horde NPCs in Horde camps and patrolling the roads. They will PVP flag you.",
				goals = {
					{ t = "complete", quest = 1364, title = "Mazen's Behest", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1398, title = "Driftwood", npc = 5476, npcName = "Watcher Biggs", map = 1435, x = 26.74, y = 59.83, f = "e" },
				},
			},
			{
				note = "Wooden logs. Avoid Stonard.",
				goals = {
					{ t = "collect", quest = 1398, item = 6146, itemName = "Sundried Driftwood", count = 8, oi = 1, map = 1435, x = 87.3, y = 78.1, f = "e" },
				},
			},
			{
				label = "Collect_Pristine_Crawler_Legs",
				along = true,
				note = "Crabs. Silt Crawlers have higher drop rate. More in the water. notinsticky Multiple locations. notinsticky",
				goals = {
					{ t = "collect", quest = 1258, item = 5938, itemName = "Pristine Crawler Leg", count = 12, oi = 1, map = 1435, x = 87.0, y = 77.4, f = "e" },
				},
			},
			{
				label = "Collect_Khadgars_Essays_On_Dimensional_Convergence_Only_Sticky",
				along = true,
				note = "Swamp elementals. Low drop rate.",
				goals = {
					{ t = "collect", quest = 1364, item = 6065, itemName = "Khadgar's Essays on Dimensional Convergence", oi = 1, map = 1435, x = 13.9, y = 37.1, f = "e" },
				},
			},
			{
				note = "Swamp elementals. Low drop rate.",
				goals = {
					{ t = "collect", quest = 1364, item = 6065, itemName = "Khadgar's Essays on Dimensional Convergence", oi = 1, map = 1435, x = 13.4, y = 37.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1398, title = "Driftwood", npc = 5476, npcName = "Watcher Biggs", map = 1435, x = 26.74, y = 59.83, f = "e" },
					{ t = "accept", quest = 1425, title = "Deliver the Shipment", npc = 5476, npcName = "Watcher Biggs", map = 1435, x = 26.74, y = 59.83, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "turnin", quest = 1364, title = "Mazen's Behest", npc = 5385, npcName = "Watcher Mahar Ba", map = 1419, x = 67.65, y = 19.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1425, title = "Deliver the Shipment", npc = 5393, npcName = "Quartermaster Lungertz", map = 1419, x = 66.52, y = 21.38, f = "e" },
				},
			},
			{
				note = "Up on the platform.",
				goals = {
					{ t = "getfp", location = "Nethergarde Keep", map = 1419, x = 65.54, y = 24.33, f = "e" },
				},
			},
			{
				note = "HURRY, timed quest.",
				goals = {
					{ t = "accept", quest = 1395, title = "Supplies for Nethergarde", npc = 5464, npcName = "Watchmaster Sorigal", map = 1431, x = 75.77, y = 46.15, f = "e" },
				},
			},
			{
				note = "HURRY, timed quest.",
				goals = {
					{ t = "turnin", quest = 1395, title = "Supplies for Nethergarde", npc = 5393, npcName = "Quartermaster Lungertz", map = 1419, x = 66.52, y = 21.38, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "accept", quest = 580, title = "Whiskey Slim's Lost Grog", npc = 2491, npcName = "Whiskey Slim", map = 1434, x = 27.13, y = 77.45, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "accept", quest = 1119, title = "Zanzil's Mixture and a Fool's Stout", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "accept", quest = 2864, title = "Tran'rek", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2872, title = "Stoley's Debt", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.78, y = 77.07, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 623, title = "Akiris by the Bundle", npc = 2616, npcName = "Privateer Groy", map = 1445, x = 68.84, y = 53.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1258, title = "... and Bugs", npc = 4794, npcName = "Morgan Stern", map = 1445, x = 66.34, y = 45.47, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Theramore Isle", map = 1445, x = 66.59, y = 45.22, f = "e" },
				},
			},
		},
	})
end

