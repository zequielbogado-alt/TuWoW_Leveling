-- TuWoW_Leveling — Guides/Leveling_Horde_32.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-ungoro-crater-53-54",
		pack = "guides",
		title = "Un'Goro Crater",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-azshara-54-54",
		author = "TuWoW & Zygor",
		minLevel = 53,
		maxLevel = 54,
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4494, title = "March of the Silithid", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.89, y = 26.96, f = "e" },
					{ t = "accept", quest = 4496, title = "Bungle in the Jungle", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.89, y = 26.96, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4145, title = "Larion and Muigin", npc = 9118, npcName = "Larion", map = 1449, x = 45.54, y = 8.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3881, title = "Expedition Salvation", npc = 9270, npcName = "Williden Marshal", map = 1449, x = 43.95, y = 7.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3883, title = "Alien Ecology", npc = 9271, npcName = "Hol'anyee Marshal", map = 1449, x = 43.89, y = 7.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3882, title = "Roll the Bones", npc = 9272, npcName = "Spark Nilminer", map = 1449, x = 43.5, y = 7.42, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1449, x = 43.47, y = 6.79 },
					{ t = "accept", quest = 4288, title = "The Western Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1449, x = 43.47, y = 6.81 },
					{ t = "accept", quest = 4501, title = "Beware of Pterrordax", map = 1449, x = 43.55, y = 8.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4492, title = "Lost!", npc = 9997, npcName = "Spraggle Frock", map = 1449, x = 43.62, y = 8.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4503, title = "Shizzle's Flyer", npc = 9998, npcName = "Shizzle", map = 1449, x = 44.24, y = 11.59, f = "e" },
				},
			},
			{
				note = "Skip once no more to kill. Can finish later.",
				goals = {
					{ t = "kill", quest = 4501, npc = 9166, target = "Pterrordax", count = 10, oi = 1, map = 1449, x = 56.0, y = 9.8, f = "e" },
				},
			},
			{
				label = "Kill_Bloodpetal_Flayers",
				note = "Walking plants.",
				goals = {
					{ t = "kill", quest = 4145, npc = 6510, target = "Bloodpetal Flayer", count = 5, oi = 3, map = 1449, x = 55.8, y = 16.0, f = "e" },
				},
			},
			{
				note = "Inside and outside the cave.",
				goals = {
					{ t = "collect", quest = 4289, item = 11478, itemName = "Un'Goro Gorilla Pelt", count = 2, oi = 1, map = 1449, x = 64.23, y = 16.36, f = "e" },
				},
			},
			{
				label = "Collect_UnGoro_Stomper_Pelts",
				along = true,
				note = "Inside and outside the cave. notinsticky",
				goals = {
					{ t = "collect", quest = 4289, item = 11479, itemName = "Un'Goro Stomper Pelt", count = 2, oi = 2, map = 1449, x = 64.23, y = 16.36, f = "e" },
				},
			},
			{
				label = "Collect_UnGoro_Thunderer_Pelts",
				along = true,
				note = "Inside and outside the cave. notinsticky",
				goals = {
					{ t = "collect", quest = 4289, item = 11480, itemName = "Un'Goro Thunderer Pelt", count = 2, oi = 3, map = 1449, x = 64.23, y = 16.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1449, x = 64.23, y = 16.36 },
					{ t = "collect", quest = 3881, item = 11113, itemName = "Crate of Foodstuffs", oi = 1, map = 1449, x = 68.51, y = 36.54, f = "e" },
				},
			},
			{
				label = "Kill_Bloodpetal_Threshers_And_Lashers",
				along = true,
				note = "Walking plants. notinsticky",
				goals = {
					{ t = "kill", quest = 4145, npc = 6511, target = "Bloodpetal Thresher", count = 5, oi = 4, map = 1449, x = 67.6, y = 34.6, f = "e" },
					{ t = "kill", quest = 4145, npc = 6509, target = "Bloodpetal Lasher", count = 5, oi = 1, map = 1449, x = 67.6, y = 34.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 11568, itemName = "Torwa's Pouch" },
					{ t = "collect", quest = 4292, item = 11569, itemName = "Preserved Threshadon Meat" },
					{ t = "collect", quest = 4292, item = 11570, itemName = "Preserved Pheromone Mixture" },
				},
			},
			{
				goals = {
					{ t = "use", item = 11569, itemName = "Preserved Threshadon Meat" },
					{ t = "use", item = 11570, itemName = "Preserved Pheromone Mixture" },
					{ t = "collect", quest = 4292, item = 11510, itemName = "Lar'korwi's Head", oi = 1, map = 1449, x = 79.92, y = 49.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4289, title = "The Apes of Un'Goro", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.64, y = 75.97, f = "e" },
					{ t = "turnin", quest = 4292, title = "The Bait for Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
					{ t = "accept", quest = 4301, title = "The Mighty U'cha", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.64, y = 75.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4501, npc = 9166, target = "Pterrordax", count = 10, oi = 1, map = 1449, x = 58.0, y = 86.4, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1449, x = 49.95, y = 81.7 },
					{ t = "use", item = 11132, itemName = "Unused Scraping Vial" },
					{ t = "collect", quest = 3883, item = 11131, itemName = "Hive Wall Sample", oi = 1, map = 1449, x = 48.74, y = 85.21, f = "e" },
				},
			},
			{
				label = "Collect_Gorishi_Scent_Gland",
				along = true,
				note = "Insects. Inside and outside the cave. notinsticky",
				goals = {
					{ t = "collect", quest = 4496, item = 11837, itemName = "Gorishi Scent Gland", oi = 1, map = 1449, x = 49.95, y = 81.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1449, x = 49.94, y = 81.65 },
					{ t = "collect", quest = 3881, item = 11112, itemName = "Research Equipment", oi = 2, map = 1449, x = 38.47, y = 66.11, f = "e" },
				},
			},
			{
				note = "Up on the cliff.",
				goals = {
					{ t = "complete", quest = 4288, title = "The Western Pylon", note = "Discover and Examine the Western Crystal Pylon", map = 1449, x = 23.79, y = 59.19, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 974, title = "Finding the Source", npc = 10302, npcName = "Krakle", map = 1449, x = 30.93, y = 50.43, f = "e" },
				},
			},
			{
				note = "Top of the mountain.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1449, x = 46.3, y = 45.65 },
					{ t = "use", item = 12472, itemName = "Krakle's Thermometer" },
					{ t = "complete", quest = 974, title = "Finding the Source", note = "Find the Hottest Area of Fire Plume Ridge", map = 1449, x = 49.7, y = 45.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 974, title = "Finding the Source", npc = 10302, npcName = "Krakle", map = 1449, x = 30.93, y = 50.43, f = "e" },
					{ t = "accept", quest = 980, title = "The New Springs", npc = 10302, npcName = "Krakle", map = 1449, x = 30.93, y = 50.44, f = "e" },
				},
			},
			{
				label = "Kill_Bloodpetal_Trappers",
				along = true,
				note = "Walking plants. notinsticky",
				goals = {
					{ t = "kill", quest = 4145, npc = 6512, target = "Bloodpetal Trapper", count = 5, oi = 2, map = 1449, x = 34.8, y = 40.0, f = "e" },
				},
			},
			{
				label = "Collect_Dinosaur_Bones_And_Webbed_Diemetradon_Scales",
				along = true,
				goals = {
					{ t = "collect", quest = 3882, item = 11114, itemName = "Dinosaur Bone", count = 8, oi = 1, map = 1449, x = 34.8, y = 40.0, f = "e" },
					{ t = "collect", quest = 4503, item = 11830, itemName = "Webbed Diemetradon Scale", count = 8, oi = 1, map = 1449, x = 34.8, y = 40.0, f = "e" },
				},
			},
			{
				label = "Collect_Webbed_Pterrordax_Scales",
				along = true,
				note = "Pterodactyls.",
				goals = {
					{ t = "collect", quest = 4503, item = 11831, itemName = "Webbed Pterrordax Scale", count = 8, oi = 2, map = 1449, x = 34.8, y = 39.6, f = "e" },
				},
			},
			{
				label = "Kill_Frenzied_Pterrordax",
				along = true,
				goals = {
					{ t = "kill", quest = 4501, npc = 9167, target = "Frenzied Pterrordax", count = 15, oi = 2, map = 1449, x = 34.8, y = 39.6, f = "e" },
				},
			},
			{
				label = "Collect_UnGoro_Soil",
				along = true,
				note = "Don't vendor them.",
				goals = {
					{ t = "collect", item = 11018, itemName = "Un'Goro Soil", count = 25, map = 1449, x = 34.8, y = 40.0, f = "e" },
				},
			},
			{
				label = "Collect_UnGoro_Ash",
				along = true,
				note = "Fire elementals. Avoid the elite enemy at the top of the mountain.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1449, x = 46.3, y = 45.65 },
					{ t = "collect", quest = 4502, item = 11829, itemName = "Un'Goro Ash", count = 9, oi = 1, map = 1449, x = 50.98, y = 47.18, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing. Inside the small cave. Midway up the mountain.",
				goals = {
					{ t = "turnin", quest = 4492, title = "Lost!", npc = 9999, npcName = "Ringo", map = 1449, x = 51.9, y = 49.85, f = "e" },
					{ t = "accept", quest = 4491, title = "A Little Help From My Friends", npc = 9999, npcName = "Ringo", map = 1449, x = 51.9, y = 49.85, f = "e" },
				},
			},
			{
				note = "Protect Ringo as he follows you. Stay close, he faints. Message in chat when he faints. Near Ringo when he faints. HURRY, timed quest.",
				goals = {
					{ t = "use", item = 11804, itemName = "Spraggle's Canteen" },
					{ t = "complete", quest = 4491, title = "A Little Help From My Friends", note = "Escort Ringo to Spraggle Frock at Marshal's Refuge", map = 1449, x = 43.62, y = 8.51, f = "e" },
					{ t = "complete", quest = 4491, title = "A Little Help From My Friends", note = "Escort Ringo to Spraggle Frock at Marshal's Refuge", map = 1449, x = 43.62, y = 8.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4491, title = "A Little Help From My Friends", npc = 9997, npcName = "Spraggle Frock", map = 1449, x = 43.62, y = 8.51, f = "e" },
					{ t = "turnin", quest = 4501, title = "Beware of Pterrordax", npc = 9997, npcName = "Spraggle Frock", map = 1449, x = 43.62, y = 8.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3882, title = "Roll the Bones", npc = 9272, npcName = "Spark Nilminer", map = 1449, x = 43.5, y = 7.43, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1449, x = 43.47, y = 6.79 },
					{ t = "turnin", quest = 4288, title = "The Western Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
					{ t = "accept", quest = 4285, title = "The Northern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
					{ t = "accept", quest = 4287, title = "The Eastern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1449, x = 43.47, y = 6.79 },
					{ t = "turnin", quest = 3883, title = "Alien Ecology", npc = 9271, npcName = "Hol'anyee Marshal", map = 1449, x = 43.89, y = 7.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3881, title = "Expedition Salvation", npc = 9270, npcName = "Williden Marshal", map = 1449, x = 43.95, y = 7.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4145, title = "Larion and Muigin", npc = 9118, npcName = "Larion", map = 1449, x = 45.54, y = 8.72, f = "e" },
					{ t = "accept", quest = 4147, title = "Marvon's Workshop", npc = 9118, npcName = "Larion", map = 1449, x = 45.54, y = 8.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4503, title = "Shizzle's Flyer", npc = 9998, npcName = "Shizzle", map = 1449, x = 44.23, y = 11.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4243, title = "Chasing A-Me 01", npc = 9618, npcName = "Karna Remtravel", map = 1449, x = 46.38, y = 13.45, f = "e" },
				},
			},
			{
				note = "Up on the cliff.",
				goals = {
					{ t = "complete", quest = 4285, title = "The Northern Pylon", note = "Discover and Examine the Northern Crystal Pylon", map = 1449, x = 56.48, y = 12.45, f = "e" },
				},
			},
			{
				note = "Walks around. Upstairs inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1449, x = 63.88, y = 16.44 },
					{ t = "goto", text = "Follow the path up", map = 1449, x = 69.07, y = 17.62 },
					{ t = "collect", quest = 4301, item = 11476, itemName = "U'cha's Pelt", oi = 1, map = 1449, x = 68.15, y = 12.58, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until she respawns, if missing. Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path inside the cave", map = 1449, x = 65.87, y = 16.75 },
					{ t = "turnin", quest = 4243, title = "Chasing A-Me 01", npc = 9623, npcName = "A-Me 01", map = 1449, x = 67.65, y = 16.76, f = "e" },
					{ t = "accept", quest = 4244, title = "Chasing A-Me 01", npc = 9623, npcName = "A-Me 01", map = 1449, x = 67.65, y = 16.76, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until she respawns, if missing. Inside the cave.",
				goals = {
					{ t = "turnin", quest = 4244, title = "Chasing A-Me 01", npc = 9623, npcName = "A-Me 01", map = 1449, x = 67.65, y = 16.76, f = "e" },
					{ t = "accept", quest = 4245, title = "Chasing A-Me 01", npc = 9623, npcName = "A-Me 01", map = 1449, x = 67.65, y = 16.76, f = "e" },
				},
			},
			{
				note = "Follow and protect A-Me 01.",
				goals = {
					{ t = "complete", quest = 4245, title = "Chasing A-Me 01", note = "Protect A-Me 01 Until You Reach Karna Remtravel", map = 1449, x = 46.32, y = 13.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4245, title = "Chasing A-Me 01", npc = 9618, npcName = "Karna Remtravel", map = 1449, x = 46.38, y = 13.45, f = "e" },
				},
			},
			{
				note = "Up on the cliff.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1449, x = 64.23, y = 16.36 },
					{ t = "complete", quest = 4287, title = "The Eastern Pylon", note = "Discover and Examine the Eastern Crystal Pylon", map = 1449, x = 77.24, y = 49.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4301, title = "The Mighty U'cha", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1449, x = 43.47, y = 6.79 },
					{ t = "turnin", quest = 4285, title = "The Northern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
					{ t = "turnin", quest = 4287, title = "The Eastern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
					{ t = "accept", quest = 4321, title = "Making Sense of It", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "turnin", quest = 4321, title = "Making Sense of It", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1449, x = 43.47, y = 6.79 },
					{ t = "turnin", quest = 4496, title = "Bungle in the Jungle", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.89, y = 26.96, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4120, title = "The Strength of Corruption", npc = 7776, npcName = "Talo Thornhoof", map = 1444, x = 76.18, y = 43.83, f = "e" },
				},
			},
			{
				note = "Run onto the huge ramp. Careful, elite enemies. Run away after. Needed for quest later.",
				goals = {
					{ t = "goto", text = "Discover Dire Maul", map = 1444, x = 59.12, y = 44.62 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Jump onto this break in the wall from the nearby ledge", map = 1444, x = 44.62, y = 9.81 },
					{ t = "collect", quest = 3909, item = 11242, itemName = "Evoroot", map = 1444, x = 44.55, y = 10.13, f = "e" },
				},
			},
			{
				note = "Complete The Videre Elixir quest. DO NOT DRINK IT. Kills you.",
				goals = {
					{ t = "collect", quest = 3909, item = 11243, itemName = "Videre Elixir", oi = 1, map = 1444, x = 45.12, y = 25.57, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 3047, npcName = "Archmage Shymm", map = 1456, x = 22.76, y = 14.52, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 3563, item = 10680, itemName = "Jes'rimon's Note", map = 1456, x = 47.13, y = 57.89, f = "e" },
					{ t = "collect", quest = 3518, item = 10538, itemName = "Tablet of Beth'Amara", map = 1456, x = 47.13, y = 57.89, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 3762, title = "Assisting Arch Druid Runetotem", npc = 6746, npcName = "Innkeeper Pala", map = 1456, x = 45.82, y = 64.72, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1456, x = 29.81, y = 29.82 },
					{ t = "train", npc = 3045, npcName = "Malakai Cross", map = 1456, x = 24.55, y = 22.58, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3030, npcName = "Siln Skychaser", map = 1456, x = 22.83, y = 21.1, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10086, npcName = "Hesuwa Thunderhorn", map = 1456, x = 54.09, y = 83.97, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3040, npcName = "Urek Thunderhorn", map = 1456, x = 59.11, y = 86.86, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3043, npcName = "Ker Ragetotem", map = 1456, x = 57.58, y = 85.52, f = "e" },
				},
			},
			{
				label = "Accept_A_Call_To_Arms_Plaguelands_And_The_New_Frontier",
				along = true,
				note = "Walks a large path.",
				goals = {
					{ t = "accept", quest = 1000, title = "The New Frontier", npc = 10881, npcName = "Bluff Runner Windstrider", map = 1412, x = 38.8, y = 28.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3518, title = "Delivery to Magatha", npc = 4046, npcName = "Magatha Grimtotem", map = 1456, x = 69.84, y = 30.9, f = "e" },
					{ t = "accept", quest = 3562, title = "Magatha's Payment to Jediga", npc = 4046, npcName = "Magatha Grimtotem", map = 1456, x = 69.84, y = 30.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3762, title = "Assisting Arch Druid Runetotem", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.59, y = 28.57, f = "e" },
					{ t = "accept", quest = 3761, title = "Un'Goro Soil", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.59, y = 28.57, f = "e" },
					{ t = "turnin", quest = 1000, title = "The New Frontier", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.59, y = 28.57, f = "e" },
					{ t = "accept", quest = 1123, title = "Rabine Saturna", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.59, y = 28.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3761, title = "Un'Goro Soil", npc = 9076, npcName = "Ghede", map = 1456, x = 77.45, y = 21.98, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 3782, title = "Morrowgrain Research", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.59, y = 28.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3782, title = "Morrowgrain Research", npc = 9087, npcName = "Bashana Runetotem", map = 1456, x = 71.06, y = 34.18, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", text = "Train Kodo Riding", map = 1412, x = 46.78, y = 62.01 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4147, title = "Marvon's Workshop", npc = 8496, npcName = "Liv Rizzlefix", map = 1413, x = 62.45, y = 38.73, f = "e" },
					{ t = "turnin", quest = 4502, title = "Volcanic Activity", npc = 8496, npcName = "Liv Rizzlefix", map = 1413, x = 62.45, y = 38.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5158, title = "Seeking Spiritual Aid", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.83, y = 43.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5159, title = "Cleansed Water Returns to Felwood", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.83, y = 43.78, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3328, npcName = "Ormok", map = 1454, x = 43.91, y = 54.63, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3325, npcName = "Mirket", map = 1454, x = 48.62, y = 46.95, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5815, npcName = "Kurgul", map = 1454, x = 47.52, y = 46.72, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "goto", text = "Train Wolf Riding", map = 1454, x = 69.4, y = 13.1 },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "goto", text = "Train Raptor Riding", map = 1411, x = 55.28, y = 75.49 },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", text = "Train Undead Horsemanship", map = 1420, x = 60.08, y = 52.57 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-azshara-54-54",
		pack = "guides",
		title = "Azshara",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-felwood-and-winterspring-54-56",
		author = "TuWoW & Zygor",
		minLevel = 54,
		maxLevel = 54,
		zone = 1447,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 3505, title = "Betrayed", npc = 8576, npcName = "Ag'tor Bloodfist", map = 1447, x = 22.26, y = 51.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3562, title = "Magatha's Payment to Jediga", npc = 8587, npcName = "Jediga", map = 1447, x = 22.56, y = 51.42, f = "e" },
					{ t = "turnin", quest = 3563, title = "Jes'rimon's Payment to Jediga", npc = 8587, npcName = "Jediga", map = 1447, x = 22.56, y = 51.42, f = "e" },
					{ t = "accept", quest = 3542, title = "Delivery to Andron Gant", npc = 8587, npcName = "Jediga", map = 1447, x = 22.56, y = 51.42, f = "e" },
				},
			},
			{
				note = "Top of the hill.",
				goals = {
					{ t = "accept", quest = 3601, title = "Kim'jael Indeed!", npc = 8420, npcName = "Kim'jael", map = 1447, x = 53.45, y = 21.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 3505, npc = 6199, target = "Blood Elf Reclaimer", count = 10, oi = 1, map = 1447, x = 55.2, y = 27.4, f = "e" },
					{ t = "kill", quest = 3505, npc = 6198, target = "Blood Elf Surveyor", count = 10, oi = 2, map = 1447, x = 55.2, y = 27.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3505, title = "Betrayed", note = "Find Magus Rimtori's Camp", map = 1447, x = 59.51, y = 31.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3505, title = "Betrayed", map = 1447, x = 59.51, y = 31.3, f = "e" },
					{ t = "accept", quest = 3506, title = "Betrayed", map = 1447, x = 59.51, y = 31.3, f = "e" },
				},
			},
			{
				note = "You will be attacked. May have to click multiple crystals. Calls for Magus Rimtori when low health.",
				goals = {
					{ t = "collect", quest = 3506, item = 10597, itemName = "Head of Magus Rimtori", oi = 1, map = 1447, x = 59.55, y = 31.52, f = "e" },
				},
			},
			{
				label = "Collect_Kimjaels_Items",
				along = true,
				note = "Wooden boxes. Some may be empty. Respawn quickly. Careful, enemies can be VERY dangerous.",
				goals = {
					{ t = "collect", quest = 3601, item = 10717, itemName = "Kim'Jael's Compass", oi = 1, map = 1447, x = 56.1, y = 30.1, f = "e" },
					{ t = "collect", quest = 3601, item = 10715, itemName = "Kim'Jael's Scope", oi = 2, map = 1447, x = 56.1, y = 30.1, f = "e" },
					{ t = "collect", quest = 3601, item = 10722, itemName = "Kim'Jael's Stuffed Chicken", oi = 3, map = 1447, x = 56.1, y = 30.1, f = "e" },
					{ t = "collect", quest = 3601, item = 10718, itemName = "Kim'Jael's Wizzlegoober", oi = 4, map = 1447, x = 56.1, y = 30.1, f = "e" },
				},
			},
			{
				note = "Top of the hill.",
				goals = {
					{ t = "turnin", quest = 3601, title = "Kim'jael Indeed!", npc = 8420, npcName = "Kim'jael", map = 1447, x = 53.45, y = 21.82, f = "e" },
					{ t = "accept", quest = 5534, title = "Kim'jael's \"Missing\" Equipment", npc = 8420, npcName = "Kim'jael", map = 1447, x = 53.45, y = 21.82, f = "e" },
				},
			},
			{
				note = "Sirens and Myrmidons. Nagas.",
				goals = {
					{ t = "collect", quest = 5534, item = 13815, itemName = "Some Rune", oi = 1, map = 1447, x = 48.0, y = 42.2, f = "e" },
				},
			},
			{
				note = "Top of the hill.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1447, x = 45.95, y = 38.62 },
					{ t = "turnin", quest = 5534, title = "Kim'jael's \"Missing\" Equipment", npc = 8420, npcName = "Kim'jael", map = 1447, x = 53.45, y = 21.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3506, title = "Betrayed", npc = 8576, npcName = "Ag'tor Bloodfist", map = 1447, x = 22.26, y = 51.48, f = "e" },
					{ t = "accept", quest = 3507, title = "Betrayed", npc = 8576, npcName = "Ag'tor Bloodfist", map = 1447, x = 22.26, y = 51.48, f = "e" },
				},
			},
		},
	})
end

