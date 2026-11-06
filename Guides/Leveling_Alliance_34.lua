-- TuWoW_Leveling — Guides/Leveling_Alliance_34.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-ungoro-crater-53-54",
		pack = "guides",
		title = "Un'Goro Crater",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-winterspring-and-felwood-54-56",
		author = "TuWoW & Zygor",
		minLevel = 53,
		maxLevel = 54,
		zone = 1413,
		version = 1,
		steps = {
			{
				note = "Collect from the bank.",
				goals = {
					{ t = "collect", quest = 3444, item = 10556, itemName = "Stone Circle", map = 1413, x = 62.64, y = 37.42, f = "e" },
					{ t = "collect", quest = 2641, item = 8526, itemName = "Violet Tragan", map = 1413, x = 62.64, y = 37.42, f = "e" },
					{ t = "collect", quest = 4292, item = 11568, itemName = "Torwa's Pouch", map = 1413, x = 62.64, y = 37.42, f = "e" },
					{ t = "collect", quest = 4244, item = 10561, itemName = "Mithril Casing", map = 1413, x = 62.64, y = 37.42, f = "e" },
				},
			},
			{
				note = "Deposit into the bank.",
				goals = {
					{ t = "complete", quest = 3461, title = "Return to Tymor", note = "bank Drawing Kit##10445", map = 1413, x = 62.64, y = 37.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4504, title = "Super Sticky", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2641, title = "Sprinkle's Secret Ingredient", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.06, y = 26.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2661, title = "Delivery for Marin", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.06, y = 26.87, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4493, title = "March of the Silithid", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.89, y = 26.96, f = "e" },
					{ t = "accept", quest = 4496, title = "Bungle in the Jungle", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.89, y = 26.96, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2661, title = "Delivery for Marin", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.81, y = 28.66, f = "e" },
					{ t = "accept", quest = 2662, title = "Noggenfogger Elixir", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.81, y = 28.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2662, title = "Noggenfogger Elixir", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.81, y = 28.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3444, title = "The Stone Circle", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.92, f = "e" },
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
					{ t = "accept", quest = 4285, title = "The Northern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
					{ t = "accept", quest = 4287, title = "The Eastern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
					{ t = "accept", quest = 4288, title = "The Western Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1449, x = 43.47, y = 6.79 },
					{ t = "accept", quest = 4501, title = "Beware of Pterrordax", map = 1449, x = 43.55, y = 8.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4492, title = "Lost!", npc = 9997, npcName = "Spraggle Frock", map = 1449, x = 43.61, y = 8.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4503, title = "Shizzle's Flyer", npc = 9998, npcName = "Shizzle", map = 1449, x = 44.24, y = 11.59, f = "e" },
				},
			},
			{
				note = "Up on the cliff.",
				goals = {
					{ t = "complete", quest = 4285, title = "The Northern Pylon", note = "Discover and Examine the Northern Crystal Pylon", map = 1449, x = 56.48, y = 12.45, f = "e" },
				},
			},
			{
				note = "Skip once no more to kill. Can finish later.",
				goals = {
					{ t = "kill", quest = 4501, npc = 9166, target = "Pterrordax", count = 10, oi = 1, map = 1449, x = 56.0, y = 9.8, f = "e" },
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
				note = "Up on the cliff.",
				goals = {
					{ t = "complete", quest = 4287, title = "The Eastern Pylon", note = "Discover and Examine the Eastern Crystal Pylon", map = 1449, x = 77.24, y = 49.97, f = "e" },
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
				note = "Don't vendor them.",
				goals = {
					{ t = "collect", quest = 4496, item = 11018, itemName = "Un'Goro Soil", count = 5, oi = 2, map = 1449, x = 34.8, y = 40.0, f = "e" },
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
					{ t = "turnin", quest = 4285, title = "The Northern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
					{ t = "turnin", quest = 4287, title = "The Eastern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
					{ t = "turnin", quest = 4288, title = "The Western Pylon", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
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
					{ t = "turnin", quest = 4503, title = "Shizzle's Flyer", npc = 9998, npcName = "Shizzle", map = 1449, x = 44.23, y = 11.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4243, title = "Chasing A-Me 01", npc = 9618, npcName = "Karna Remtravel", map = 1449, x = 46.38, y = 13.44, f = "e" },
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
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1449, x = 64.23, y = 16.36 },
					{ t = "turnin", quest = 4301, title = "The Mighty U'cha", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
				},
			},
			{
				label = "Collect_Super_Sticky_Tar",
				along = true,
				note = "Swamp elementals.",
				goals = {
					{ t = "collect", quest = 4504, item = 11834, itemName = "Super Sticky Tar", count = 12, oi = 1, map = 1449, x = 60.0, y = 33.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3908, title = "It's a Secret to Everybody", npc = 8737, npcName = "Linken", map = 1449, x = 44.66, y = 8.1, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4496, title = "Bungle in the Jungle", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.89, y = 26.96, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4504, title = "Super Sticky", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 5882, item = 11511, itemName = "Cenarion Beacon", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 4441, item = 11682, itemName = "Eridan's Vial", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 3909, item = 11243, itemName = "Videre Elixir", count = 3, map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 978, item = 12383, itemName = "Moontouched Feather", count = 10, map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5159, title = "Cleansed Water Returns to Felwood", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.83, y = 43.78, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4502, title = "Volcanic Activity", npc = 8496, npcName = "Liv Rizzlefix", map = 1413, x = 62.45, y = 38.74, f = "e" },
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
					{ t = "use", item = 11682, itemName = "Eridan's Vial" },
					{ t = "collect", quest = 4441, item = 5646, itemName = "Vial of Blessed Water", oi = 1, map = 1457, x = 39.51, y = 83.92, f = "e" },
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
				note = "Buy from the Auction House, if possible. Inside the building.",
				goals = {
					{ t = "collect", item = 2592, itemName = "Wool Cloth", count = 60, map = 1457, x = 56.24, y = 54.05, f = "e" },
					{ t = "collect", item = 4306, itemName = "Silk Cloth", count = 60, map = 1457, x = 56.24, y = 54.05, f = "e" },
					{ t = "collect", quest = 7799, item = 4338, itemName = "Mageweave Cloth", count = 60, map = 1457, x = 56.24, y = 54.05, f = "e" },
					{ t = "collect", quest = 7800, item = 14047, itemName = "Runecloth", count = 60, map = 1457, x = 56.24, y = 54.05, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 4089, npcName = "Sildanair", map = 1457, x = 61.78, y = 42.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7799, title = "A Donation of Mageweave", npc = 14725, npcName = "Raedon Duskstriker", map = 1457, x = 64.03, y = 23.01, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7800, title = "A Donation of Runecloth", npc = 14725, npcName = "Raedon Duskstriker", map = 1457, x = 64.03, y = 23.01, f = "e" },
				},
			},
			{
				label = "Accept_The_New_Frontier",
				along = true,
				note = "Walks a large path.",
				goals = {
					{ t = "accept", quest = 1047, title = "The New Frontier", npc = 10878, npcName = "Herald Moonstalker", map = 1438, x = 27.1, y = 64.0, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "skill", level = 75, skill = "Riding" },
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
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10089, npcName = "Silvaria", map = 1457, x = 42.47, y = 9.18, f = "e" },
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
				note = "Walks around. Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 1047, title = "The New Frontier", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 34.82, y = 9.25, f = "e" },
					{ t = "accept", quest = 6761, title = "The New Frontier", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 34.82, y = 9.25, f = "e" },
					{ t = "accept", quest = 3781, title = "Morrowgrain Research", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 34.82, y = 9.25, f = "e" },
				},
			},
			{
				note = "Middle floor inside the building.",
				goals = {
					{ t = "turnin", quest = 6761, title = "The New Frontier", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.4, y = 8.42, f = "e" },
					{ t = "accept", quest = 6762, title = "Rabine Saturna", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.4, y = 8.42, f = "e" },
					{ t = "turnin", quest = 3781, title = "Morrowgrain Research", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.4, y = 8.42, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 978, title = "Moontouched Wildkin", npc = 7916, npcName = "Erelas Ambersky", map = 1438, x = 55.5, y = 92.04, f = "e" },
					{ t = "accept", quest = 979, title = "Find Ranshalla", npc = 7916, npcName = "Erelas Ambersky", map = 1438, x = 55.5, y = 92.04, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 5250, title = "Starfall", npc = 7907, npcName = "Daryn Lightwind", map = 1438, x = 55.41, y = 92.23, f = "e" },
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
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5148, npcName = "Beldruk Doombrow", map = 1455, x = 24.54, y = 4.5, f = "e" },
				},
			},
		},
	})
end

