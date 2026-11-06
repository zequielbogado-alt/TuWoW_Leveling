-- TuWoW_Leveling — Guides/Leveling_Alliance_17.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-ashenvale-29-30",
		pack = "guides",
		title = "Ashenvale",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-duskwood-and-stranglethorn-vale-30-32",
		author = "TuWoW & Zygor",
		minLevel = 29,
		maxLevel = 30,
		zone = 1440,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 1140, title = "The Tower of Althalaxx", npc = 3663, npcName = "Delgren the Purifier", map = 1440, x = 26.2, y = 38.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1022, title = "The Howling Vale", npc = 3880, npcName = "Sentinel Melyria Frostshadow", map = 1440, x = 22.23, y = 52.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1021, title = "Vile Satyr! Dryads in Danger!", npc = 3901, npcName = "Illiyana", map = 1440, x = 21.73, y = 53.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4581, title = "Kayneth Stillwind", npc = 3845, npcName = "Shindrell Swiftfire", map = 1440, x = 34.67, y = 48.84, f = "e" },
				},
			},
			{
				note = "Inside the building. Grey quest, but followups give lots of xp.",
				goals = {
					{ t = "accept", quest = 1024, title = "Raene's Cleansing", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.62, y = 49.58, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1035, title = "Fallen Sky Lake", npc = 3894, npcName = "Pelturas Whitemoon", map = 1440, x = 37.37, y = 51.79, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Follow the road to this path", map = 1440, x = 50.22, y = 56.23 },
					{ t = "goto", text = "Continue following the path", map = 1440, x = 51.8, y = 45.73 },
					{ t = "turnin", quest = 1024, title = "Raene's Cleansing", npc = 3916, npcName = "Shael'dryn", map = 1440, x = 53.54, y = 46.29, f = "e" },
					{ t = "accept", quest = 1026, title = "Raene's Cleansing", npc = 3916, npcName = "Shael'dryn", map = 1440, x = 53.54, y = 46.29, f = "e" },
				},
			},
			{
				note = "Walking trees. Run around the mountain.",
				goals = {
					{ t = "collect", quest = 1026, item = 5475, itemName = "Wooden Key", map = 1440, x = 62.6, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1026, item = 5464, itemName = "Iron Shaft", oi = 1, map = 1440, x = 54.41, y = 35.39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up and through the tunnel", map = 1440, x = 54.17, y = 32.34 },
					{ t = "complete", quest = 1022, title = "The Howling Vale", note = "View the Tome of Mel'Thandris", map = 1440, x = 50.49, y = 39.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run through the tunnel to leave the Howling Vale", map = 1440, x = 51.33, y = 38.2 },
					{ t = "goto", text = "Follow the path up", map = 1440, x = 63.56, y = 43.87 },
					{ t = "turnin", quest = 1021, title = "Vile Satyr! Dryads in Danger!", npc = 3920, npcName = "Anilia", map = 1440, x = 78.32, y = 44.82, f = "e" },
					{ t = "accept", quest = 1031, title = "The Branch of Cenarius", npc = 3920, npcName = "Anilia", map = 1440, x = 78.32, y = 44.82, f = "e" },
				},
			},
			{
				note = "Careful, level 32.",
				goals = {
					{ t = "collect", quest = 1031, item = 5461, itemName = "Branch of Cenarius", oi = 1, map = 1440, x = 78.0, y = 42.42, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 4581, title = "Kayneth Stillwind", npc = 3848, npcName = "Kayneth Stillwind", map = 1440, x = 85.24, y = 44.71, f = "e" },
					{ t = "accept", quest = 1011, title = "Forsaken Diseases", npc = 3848, npcName = "Kayneth Stillwind", map = 1440, x = 85.24, y = 44.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1022, title = "The Howling Vale", npc = 3880, npcName = "Sentinel Melyria Frostshadow", map = 1440, x = 22.23, y = 52.98, f = "e" },
					{ t = "accept", quest = 1037, title = "Velinde Starsong", npc = 3880, npcName = "Sentinel Melyria Frostshadow", map = 1440, x = 22.23, y = 52.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1031, title = "The Branch of Cenarius", npc = 3901, npcName = "Illiyana", map = 1440, x = 21.73, y = 53.35, f = "e" },
					{ t = "accept", quest = 1032, title = "Satyr Slaying!", npc = 3901, npcName = "Illiyana", map = 1440, x = 21.73, y = 53.35, f = "e" },
				},
			},
			{
				note = "Taming a temporary pet soon. Learning Claw (Rank 4).",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1026, title = "Raene's Cleansing", note = "Stable Your Pet", map = 1440, x = 36.51, y = 50.36, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on an Elder Ashenvale Bear. Kill enemies nearby.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1026, title = "Raene's Cleansing", note = "Learn the Claw (Rank 4) Pet Ability", map = 1440, x = 61.6, y = 63.6, f = "e" },
				},
			},
			{
				note = "Abandon your temporary pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1026, title = "Raene's Cleansing", note = "Retrieve Your Pet", map = 1440, x = 36.51, y = 50.36, f = "e" },
				},
			},
			{
				note = "Use Beast Training ability.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1026, title = "Raene's Cleansing", note = "Teach Claw (Rank 4) to Your Pet" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Follow the road to this path", map = 1440, x = 50.22, y = 56.23 },
					{ t = "goto", text = "Continue following the path", map = 1440, x = 51.8, y = 45.73 },
					{ t = "turnin", quest = 1026, title = "Raene's Cleansing", npc = 3916, npcName = "Shael'dryn", map = 1440, x = 53.54, y = 46.29, f = "e" },
					{ t = "accept", quest = 1027, title = "Raene's Cleansing", npc = 3916, npcName = "Shael'dryn", map = 1440, x = 53.54, y = 46.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1035, item = 5508, itemName = "Fallen Moonstone", oi = 1, map = 1440, x = 66.68, y = 82.19, f = "e" },
				},
			},
			{
				note = "Appear on the ground.",
				goals = {
					{ t = "collect", quest = 1027, item = 5519, itemName = "Iron Pommel", oi = 1, map = 1440, x = 69.4, y = 75.8, f = "e" },
				},
			},
			{
				note = "Careful, stealthed enemies.",
				goals = {
					{ t = "collect", quest = 1011, item = 5440, itemName = "Bottle of Disease", oi = 1, map = 1440, x = 75.29, y = 72.22, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 1011, title = "Forsaken Diseases", npc = 3848, npcName = "Kayneth Stillwind", map = 1440, x = 85.24, y = 44.71, f = "e" },
				},
			},
			{
				note = "Careful, stealthed enemies.",
				goals = {
					{ t = "complete", quest = 1140, title = "The Tower of Althalaxx", note = "Free the Highborne Soul in Satyrnaar", map = 1440, x = 81.6, y = 48.58, f = "e" },
				},
			},
			{
				note = "Careful, stealthed enemies.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1440, x = 71.38, y = 49.63 },
					{ t = "complete", quest = 1140, title = "The Tower of Althalaxx", note = "Free the Highborne Soul in Night Run", map = 1440, x = 66.63, y = 56.98, f = "e" },
				},
			},
			{
				label = "Collect_Satyr_Horns",
				along = true,
				note = "Satyrs. Careful, stealthed enemies. notinsticky",
				goals = {
					{ t = "collect", quest = 1032, item = 5481, itemName = "Satyr Horns", count = 16, oi = 1, map = 1440, x = 68.6, y = 53.4, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Follow the road to this path", map = 1440, x = 50.22, y = 56.23 },
					{ t = "goto", text = "Continue following the path", map = 1440, x = 51.8, y = 45.73 },
					{ t = "turnin", quest = 1027, title = "Raene's Cleansing", npc = 3916, npcName = "Shael'dryn", map = 1440, x = 53.54, y = 46.21, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 1028, title = "Raene's Cleansing", npc = 3916, npcName = "Shael'dryn", map = 1440, x = 53.54, y = 46.21, f = "e" },
				},
			},
			{
				note = "Top of the mountain.",
				goals = {
					{ t = "goto", text = "Run around the mountain and follow the winding dirt path up to the shrine", map = 1440, x = 56.04, y = 51.28 },
					{ t = "turnin", quest = 1028, title = "Raene's Cleansing", map = 1440, x = 56.38, y = 49.23, f = "e" },
					{ t = "accept", quest = 1055, title = "Raene's Cleansing", map = 1440, x = 56.38, y = 49.23, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Run around the mountain and follow the path", map = 1440, x = 51.8, y = 45.73 },
					{ t = "turnin", quest = 1055, title = "Raene's Cleansing", npc = 3916, npcName = "Shael'dryn", map = 1440, x = 53.54, y = 46.21, f = "e" },
					{ t = "accept", quest = 1029, title = "Raene's Cleansing", npc = 3916, npcName = "Shael'dryn", map = 1440, x = 53.54, y = 46.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1035, title = "Fallen Sky Lake", npc = 3894, npcName = "Pelturas Whitemoon", map = 1440, x = 37.36, y = 51.79, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1029, title = "Raene's Cleansing", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.62, y = 49.58, f = "e" },
					{ t = "accept", quest = 1030, title = "Raene's Cleansing", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.62, y = 49.58, f = "e" },
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
				note = "At this location.",
				goals = {
					{ t = "use", item = 5462, itemName = "Dartol's Rod of Transformation" },
					{ t = "complete", quest = 1030, title = "Raene's Cleansing", note = "Gain Furbolg Form", map = 1440, x = 53.67, y = 73.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1030, title = "Raene's Cleansing", npc = 3897, npcName = "Krolg", map = 1440, x = 50.85, y = 75.07, f = "e" },
					{ t = "accept", quest = 1045, title = "Raene's Cleansing", npc = 3897, npcName = "Krolg", map = 1440, x = 50.85, y = 75.07, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1440, x = 55.35, y = 75.83 },
					{ t = "kill", quest = 1045, npc = 3696, target = "Ran Bloodtooth", oi = 1, map = 1440, x = 54.74, y = 79.61, f = "e" },
					{ t = "collect", quest = 1046, item = 5388, itemName = "Ran Bloodtooth's Skull", map = 1440, x = 54.74, y = 79.61, f = "e" },
				},
			},
			{
				label = "Kill_Bloodtooth_Guards",
				along = true,
				goals = {
					{ t = "kill", quest = 1045, npc = 3932, target = "Bloodtooth Guard", count = 4, oi = 2, map = 1440, x = 54.4, y = 79.4, f = "e" },
				},
			},
			{
				note = "At this location.",
				goals = {
					{ t = "use", item = 5462, itemName = "Dartol's Rod of Transformation" },
					{ t = "complete", quest = 1045, title = "Raene's Cleansing", note = "Gain Furbolg Form", map = 1440, x = 53.67, y = 73.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1045, title = "Raene's Cleansing", npc = 3897, npcName = "Krolg", map = 1440, x = 50.85, y = 75.07, f = "e" },
					{ t = "accept", quest = 1046, title = "Raene's Cleansing", npc = 3897, npcName = "Krolg", map = 1440, x = 50.85, y = 75.07, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1046, title = "Raene's Cleansing", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.62, y = 49.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1032, title = "Satyr Slaying!", npc = 3901, npcName = "Illiyana", map = 1440, x = 21.73, y = 53.34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1140, title = "The Tower of Althalaxx", npc = 3663, npcName = "Delgren the Purifier", map = 1440, x = 26.19, y = 38.7, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
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
				goals = {
					{ t = "turnin", quest = 1037, title = "Velinde Starsong", npc = 8026, npcName = "Thyn'tel Bladeweaver", map = 1457, x = 61.78, y = 39.19, f = "e" },
					{ t = "accept", quest = 1038, title = "Velinde's Effects", npc = 8026, npcName = "Thyn'tel Bladeweaver", map = 1457, x = 61.78, y = 39.19, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 4089, npcName = "Sildanair", map = 1457, x = 61.78, y = 42.21, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1457, x = 56.05, y = 79.18 },
					{ t = "goto", text = "Cross the bridge", map = 1457, x = 57.63, y = 77.23 },
					{ t = "collect", quest = 1038, item = 5520, itemName = "Velinde's Journal", oi = 1, map = 1457, x = 62.29, y = 83.24, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "learnspell Teleport: Darnassus##3565", map = 1457, x = 40.6, y = 82.13 },
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
				goals = {
					{ t = "turnin", quest = 1038, title = "Velinde's Effects", npc = 8026, npcName = "Thyn'tel Bladeweaver", map = 1457, x = 61.78, y = 39.19, f = "e" },
					{ t = "accept", quest = 1039, title = "The Barrens Port", npc = 8026, npcName = "Thyn'tel Bladeweaver", map = 1457, x = 61.78, y = 39.19, f = "e" },
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
				goals = {
					{ t = "turnin", quest = 637, title = "Sully Balloo's Letter", npc = 2695, npcName = "Sara Balloo", map = 1455, x = 63.48, y = 67.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 683, title = "Sara Balloo's Plea", npc = 2695, npcName = "Sara Balloo", map = 1455, x = 63.48, y = 67.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1455, x = 44.56, y = 49.58 },
					{ t = "turnin", quest = 683, title = "Sara Balloo's Plea", npc = 2784, npcName = "King Magni Bronzebeard", map = 1455, x = 39.11, y = 56.17, f = "e" },
					{ t = "accept", quest = 686, title = "A King's Tribute", npc = 2784, npcName = "King Magni Bronzebeard", map = 1455, x = 39.11, y = 56.17, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 686, title = "A King's Tribute", npc = 2790, npcName = "Grand Mason Marblesten", map = 1455, x = 39.03, y = 88.02, f = "e" },
					{ t = "accept", quest = 689, title = "A King's Tribute", npc = 2790, npcName = "Grand Mason Marblesten", map = 1455, x = 39.03, y = 88.02, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1179, title = "The Brassbolts Brothers", npc = 2092, npcName = "Pilot Longbeard", map = 1455, x = 72.73, y = 94.01, f = "e" },
				},
			},
		},
	})
end

