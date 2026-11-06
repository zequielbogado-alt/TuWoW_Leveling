-- TuWoW_Leveling — Guides/Leveling_Alliance_13.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-ashenvale-and-stonetalon-mountains-21-24",
		pack = "guides",
		title = "Ashenvale & Stonetalon Mountains",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-wetlands-24-25",
		author = "TuWoW & Zygor",
		minLevel = 21,
		maxLevel = 24,
		zone = 1440,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 967, title = "The Tower of Althalaxx", npc = 3663, npcName = "Delgren the Purifier", map = 1440, x = 26.2, y = 38.7, f = "e" },
					{ t = "accept", quest = 970, title = "The Tower of Althalaxx", npc = 3663, npcName = "Delgren the Purifier", map = 1440, x = 26.2, y = 38.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1010, title = "Bathran's Hair", npc = 3847, npcName = "Orendil Broadleaf", map = 1440, x = 26.44, y = 38.59, f = "e" },
				},
			},
			{
				note = "Low drop rate.",
				goals = {
					{ t = "collect", quest = 970, item = 5366, itemName = "Glowing Soul Gem", oi = 1, map = 1440, x = 31.39, y = 30.62, f = "e" },
				},
			},
			{
				note = "Small grey straw bundles. Reduce Ground Clutter setting to 1. In System > Graphics game settings. Makes them easier to see.",
				goals = {
					{ t = "collect", quest = 1010, item = 5437, itemName = "Bathran's Hair", count = 5, oi = 1, map = 1440, x = 31.46, y = 22.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1010, title = "Bathran's Hair", npc = 3847, npcName = "Orendil Broadleaf", map = 1440, x = 26.44, y = 38.59, f = "e" },
					{ t = "accept", quest = 1020, title = "Orendil's Cure", npc = 3847, npcName = "Orendil Broadleaf", map = 1440, x = 26.44, y = 38.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 970, title = "The Tower of Althalaxx", npc = 3663, npcName = "Delgren the Purifier", map = 1440, x = 26.2, y = 38.7, f = "e" },
					{ t = "accept", quest = 973, title = "The Tower of Althalaxx", npc = 3663, npcName = "Delgren the Purifier", map = 1440, x = 26.2, y = 38.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 945, title = "Therylune's Escape", npc = 3585, npcName = "Therysil", map = 1440, x = 22.65, y = 51.91, f = "e" },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "getfp", location = "Astranaar", map = 1440, x = 34.41, y = 47.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1008, title = "The Zoram Strand", npc = 3845, npcName = "Shindrell Swiftfire", map = 1440, x = 34.67, y = 48.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1070, title = "On Guard in Stonetalon", npc = 4079, npcName = "Sentinel Thenysil", map = 1440, x = 34.89, y = 49.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1056, title = "Journey to Stonetalon Peak", npc = 3996, npcName = "Faldreas Goeth'Shael", map = 1440, x = 35.76, y = 49.1, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 991, title = "Raene's Cleansing", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.62, y = 49.58, f = "e" },
					{ t = "accept", quest = 1054, title = "Culling the Threat", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.62, y = 49.58, f = "e" },
				},
			},
			{
				note = "Taming a temporary pet soon. Learning Claw (Rank 3).",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1054, title = "Culling the Threat", note = "Stable Your Pet", map = 1440, x = 36.51, y = 50.36, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1020, title = "Orendil's Cure", npc = 3894, npcName = "Pelturas Whitemoon", map = 1440, x = 37.37, y = 51.79, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1033, title = "Elune's Tear", npc = 3894, npcName = "Pelturas Whitemoon", map = 1440, x = 37.37, y = 51.79, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on an Ashenvale Bear. Brown bears. Kill enemies nearby.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1054, title = "Culling the Threat", note = "Learn the Claw (Rank 3) Pet Ability", map = 1440, x = 36.4, y = 59.8, f = "e" },
				},
			},
			{
				note = "Abandon your temporary pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1054, title = "Culling the Threat", note = "Retrieve Your Pet", map = 1440, x = 36.51, y = 50.36, f = "e" },
				},
			},
			{
				note = "Use Beast Training ability.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1054, title = "Culling the Threat", note = "Teach Claw (Rank 3) to Your Pet" },
				},
			},
			{
				note = "Avoid the Crossroads.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the road and enter the Barrens", map = 1413, x = 48.99, y = 5.39 },
					{ t = "turnin", quest = 1716, title = "Devourer of Souls", npc = 6244, npcName = "Takar the Seer", map = 1413, x = 49.31, y = 57.1, f = "e" },
					{ t = "accept", quest = 1738, title = "Heartswood", npc = 6244, npcName = "Takar the Seer", map = 1413, x = 49.31, y = 57.1, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "getfp", location = "Ratchet", map = 1413, x = 63.09, y = 37.16, f = "e" },
				},
			},
			{
				note = "White orbs.",
				goals = {
					{ t = "collect", quest = 1033, item = 5493, itemName = "Elune's Tear", oi = 1, map = 1440, x = 46.24, y = 45.96, f = "e" },
				},
			},
			{
				note = "Grey furbolg. Walks around.",
				goals = {
					{ t = "collect", quest = 1054, item = 5544, itemName = "Dal Bloodclaw's Skull", oi = 1, map = 1440, x = 39.56, y = 36.31, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1054, title = "Culling the Threat", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.62, y = 49.58, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Astranaar", map = 1440, x = 36.99, y = 49.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1033, title = "Elune's Tear", npc = 3894, npcName = "Pelturas Whitemoon", map = 1440, x = 37.37, y = 51.79, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1034, title = "The Ruins of Stardust", npc = 3894, npcName = "Pelturas Whitemoon", map = 1440, x = 37.37, y = 51.79, f = "e" },
				},
			},
			{
				note = "Bushes with white sparkles.",
				goals = {
					{ t = "collect", quest = 1034, item = 5494, itemName = "Handful of Stardust", count = 5, oi = 1, map = 1440, x = 33.42, y = 67.36, f = "e" },
				},
			},
			{
				note = "Casts Ilkrud's Guardians to summon guards. Interrupt if possible.",
				goals = {
					{ t = "goto", text = "Leave the Ruins of Stardust", map = 1440, x = 36.12, y = 61.82 },
					{ t = "goto", text = "Enter Fire Scar Shrine and follow the path up", map = 1440, x = 28.39, y = 60.88 },
					{ t = "collect", quest = 973, item = 5533, itemName = "Ilkrud Magthrull's Tome", oi = 1, map = 1440, x = 25.28, y = 60.69, f = "e" },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "goto", text = "Leave Fire Scar Shrine", map = 1440, x = 28.39, y = 60.88 },
					{ t = "turnin", quest = 973, title = "The Tower of Althalaxx", npc = 3663, npcName = "Delgren the Purifier", map = 1440, x = 26.2, y = 38.7, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1738, item = 6912, itemName = "Heartswood", oi = 1, map = 1440, x = 31.49, y = 31.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 991, title = "Raene's Cleansing", npc = 3891, npcName = "Teronis' Corpse", map = 1440, x = 20.31, y = 42.33, f = "e" },
					{ t = "accept", quest = 1023, title = "Raene's Cleansing", npc = 3891, npcName = "Teronis' Corpse", map = 1440, x = 20.31, y = 42.33, f = "e" },
				},
			},
			{
				note = "Murlocs.",
				goals = {
					{ t = "collect", quest = 1023, item = 5463, itemName = "Glowing Gem", oi = 1, map = 1440, x = 20.34, y = 42.31, f = "e" },
				},
			},
			{
				note = "Run around the mountain.",
				goals = {
					{ t = "accept", quest = 1007, title = "The Ancient Statuette", npc = 3846, npcName = "Talen", map = 1440, x = 14.79, y = 31.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1007, item = 5424, itemName = "Ancient Statuette", oi = 1, map = 1440, x = 14.2, y = 20.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1007, title = "The Ancient Statuette", npc = 3846, npcName = "Talen", map = 1440, x = 14.79, y = 31.3, f = "e" },
				},
			},
			{
				label = "Collect_Wrathtail_Heads",
				along = true,
				note = "Nagas.",
				goals = {
					{ t = "collect", quest = 1008, item = 5490, itemName = "Wrathtail Head", count = 20, oi = 1, map = 1440, x = 14.88, y = 22.47, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1023, title = "Raene's Cleansing", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.62, y = 49.58, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1034, title = "The Ruins of Stardust", npc = 3894, npcName = "Pelturas Whitemoon", map = 1440, x = 37.37, y = 51.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1008, title = "The Zoram Strand", npc = 3845, npcName = "Shindrell Swiftfire", map = 1440, x = 34.67, y = 48.84, f = "e" },
					{ t = "accept", quest = 1134, title = "Pridewings of Stonetalon", npc = 3845, npcName = "Shindrell Swiftfire", map = 1440, x = 34.67, y = 48.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4730, title = "Beached Sea Creature", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.62, y = 45.59, f = "e" },
					{ t = "turnin", quest = 4731, title = "Beached Sea Turtle", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.62, y = 45.59, f = "e" },
					{ t = "turnin", quest = 4732, title = "Beached Sea Turtle", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.62, y = 45.59, f = "e" },
					{ t = "turnin", quest = 4733, title = "Beached Sea Creature", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.62, y = 45.59, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 4740, title = "WANTED: Murkdeep!", npc = 2930, npcName = "Sentinel Glynda Nal'Shea", map = 1439, x = 37.71, y = 43.39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 731, title = "The Absent Minded Prospector", npc = 2913, npcName = "Archaeologist Hollee", map = 1439, x = 37.44, y = 41.84, f = "e" },
					{ t = "accept", quest = 741, title = "The Absent Minded Prospector", npc = 2913, npcName = "Archaeologist Hollee", map = 1439, x = 37.44, y = 41.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 995, title = "Escape Through Stealth", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.37, y = 43.48, f = "e" },
					{ t = "turnin", quest = 994, title = "Escape Through Force", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.37, y = 43.48, f = "e" },
				},
			},
			{
				note = "Outside the building.",
				goals = {
					{ t = "turnin", quest = 741, title = "The Absent Minded Prospector", npc = 2912, npcName = "Chief Archaeologist Greywhisker", map = 1457, x = 31.25, y = 84.5, f = "e" },
					{ t = "accept", quest = 942, title = "The Absent Minded Prospector", npc = 2912, npcName = "Chief Archaeologist Greywhisker", map = 1457, x = 31.25, y = 84.5, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 4089, npcName = "Sildanair", map = 1457, x = 61.78, y = 42.21, f = "e" },
				},
			},
			{
				note = "Downstairs inside the tree cave.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Enter the tree cave", map = 1457, x = 32.14, y = 16.46 },
					{ t = "train", npc = 4163, npcName = "Syurna", map = 1457, x = 37.0, y = 21.92, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 4146, npcName = "Jocaste", map = 1457, x = 40.38, y = 8.54, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 4091, npcName = "Jandria", map = 1457, x = 37.9, y = 82.73, f = "e" },
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
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5148, npcName = "Beldruk Doombrow", map = 1455, x = 24.55, y = 4.48, f = "e" },
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
				note = "Buy available Grimoires. Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6382, npcName = "Jubahl Corpseseeker", map = 1455, x = 50.35, y = 5.66, f = "e" },
				},
			},
			{
				note = "Up on the cliff.",
				goals = {
					{ t = "goto", text = "Run through the tunnel to Stonetalon Mountains", map = 1440, x = 42.27, y = 71.09 },
					{ t = "turnin", quest = 1070, title = "On Guard in Stonetalon", npc = 4080, npcName = "Kaela Shadowspear", map = 1442, x = 59.9, y = 66.85, f = "e" },
					{ t = "accept", quest = 1085, title = "On Guard in Stonetalon", npc = 4080, npcName = "Kaela Shadowspear", map = 1442, x = 59.9, y = 66.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1085, title = "On Guard in Stonetalon", npc = 4077, npcName = "Gaxim Rustfizzle", map = 1442, x = 59.52, y = 67.15, f = "e" },
					{ t = "accept", quest = 1071, title = "A Gnome's Respite", npc = 4077, npcName = "Gaxim Rustfizzle", map = 1442, x = 59.52, y = 67.15, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1093, title = "Super Reaper 6000", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 58.99, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1093, item = 5734, itemName = "Super Reaper 6000 Blueprints", oi = 1, map = 1442, x = 62.2, y = 52.0, f = "e" },
				},
			},
			{
				label = "Kill_Venture_Co_Loggers_And_Deforesters",
				along = true,
				goals = {
					{ t = "kill", quest = 1071, npc = 3989, target = "Venture Co. Logger", count = 10, oi = 1, map = 1442, x = 66.6, y = 55.0, f = "e" },
					{ t = "kill", quest = 1071, npc = 3991, target = "Venture Co. Deforester", count = 10, oi = 2, map = 1442, x = 66.6, y = 55.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1093, title = "Super Reaper 6000", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 58.99, y = 62.6, f = "e" },
				},
			},
			{
				note = "Up on the cliff.",
				goals = {
					{ t = "turnin", quest = 1071, title = "A Gnome's Respite", npc = 4077, npcName = "Gaxim Rustfizzle", map = 1442, x = 59.52, y = 67.15, f = "e" },
					{ t = "accept", quest = 1072, title = "An Old Colleague", npc = 4077, npcName = "Gaxim Rustfizzle", map = 1442, x = 59.52, y = 67.15, f = "e" },
					{ t = "accept", quest = 1075, title = "A Scroll from Mauren", npc = 4077, npcName = "Gaxim Rustfizzle", map = 1442, x = 59.52, y = 67.15, f = "e" },
				},
			},
			{
				label = "Collect_Pridewing_Venom_Sacs_And_Stonetalon_Supply_Bundles",
				along = true,
				note = "Wyverns.",
				goals = {
					{ t = "collect", quest = 1134, item = 5808, itemName = "Pridewing Venom Sac", count = 12, oi = 1, map = 1442, x = 51.26, y = 42.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1056, title = "Journey to Stonetalon Peak", npc = 3994, npcName = "Keeper Albagorm", map = 1442, x = 37.1, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Stonetalon Peak", map = 1442, x = 36.44, y = 7.18, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1134, title = "Pridewings of Stonetalon", npc = 3845, npcName = "Shindrell Swiftfire", map = 1440, x = 34.67, y = 48.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1025, title = "An Aggressive Defense", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.62, y = 49.58, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1016, title = "Elemental Bracers", npc = 3885, npcName = "Sentinel Velene Starstrike", map = 1440, x = 49.8, y = 67.21, f = "e" },
				},
			},
			{
				note = "Careful to avoid Tideress. Level 27 green water elemental.",
				goals = {
					{ t = "collect", item = 12220, itemName = "Intact Elemental Bracer", count = 5, map = 1440, x = 47.5, y = 71.2, f = "e" },
					{ t = "use", item = 5456, itemName = "Divining Scroll" },
					{ t = "collect", quest = 1016, item = 5455, itemName = "Divined Scroll", oi = 1, map = 1440, x = 48.17, y = 69.74, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1016, title = "Elemental Bracers", npc = 3885, npcName = "Sentinel Velene Starstrike", map = 1440, x = 49.8, y = 67.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3963, npcName = "Danlaar Nightstride", map = 1440, x = 50.14, y = 67.95, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 4320, npcName = "Caelyb", map = 1440, x = 49.72, y = 66.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1025, npc = 3746, target = "Foulweald Den Watcher", oi = 1, map = 1440, x = 52.4, y = 62.8, f = "e" },
					{ t = "kill", quest = 1025, npc = 3749, target = "Foulweald Ursa", count = 2, oi = 2, map = 1440, x = 52.4, y = 62.8, f = "e" },
					{ t = "kill", quest = 1025, npc = 3750, target = "Foulweald Totemic", count = 10, oi = 3, map = 1440, x = 52.4, y = 62.8, f = "e" },
					{ t = "kill", quest = 1025, npc = 3743, target = "Foulweald Warrior", count = 12, oi = 4, map = 1440, x = 52.4, y = 62.8, f = "e" },
				},
			},
			{
				note = "Be very careful traveling here. Follow the road and avoid Horde NPCs. Warsong Outriders patrolling the road won't attack. Needed to access some flight paths to Ratchet.",
				goals = {
					{ t = "getfp", location = "Talrendis Point", map = 1447, x = 11.9, y = 77.59, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1025, title = "An Aggressive Defense", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.62, y = 49.58, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 4089, npcName = "Sildanair", map = 1457, x = 61.78, y = 42.21, f = "e" },
				},
			},
			{
				note = "Downstairs inside the tree cave.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Enter the tree cave", map = 1457, x = 32.14, y = 16.46 },
					{ t = "train", npc = 4163, npcName = "Syurna", map = 1457, x = 37.0, y = 21.92, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 4091, npcName = "Jandria", map = 1457, x = 37.9, y = 82.73, f = "e" },
				},
			},
		},
	})
end

