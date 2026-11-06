-- TuWoW_Leveling — Guides/Leveling_Alliance_31.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-searing-gorge-50-51",
		pack = "guides",
		title = "Searing Gorge",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-blasted-lands-and-burning-steppes-51-51",
		author = "TuWoW & Zygor",
		minLevel = 50,
		maxLevel = 51,
		zone = 1427,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "getfp", location = "Thorium Point", map = 1427, x = 37.94, y = 30.86, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7723, title = "Curse These Fat Fingers", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.57, y = 27.8, f = "e" },
					{ t = "accept", quest = 7724, title = "Fiery Menace!", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.57, y = 27.8, f = "e" },
					{ t = "accept", quest = 7727, title = "Incendosaurs? Whateverosaur is More Like It", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.57, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7728, title = "STOLEN: Smithing Tuyere and Lookout's Spyglass", map = 1427, x = 37.63, y = 26.53, f = "e" },
					{ t = "accept", quest = 7729, title = "JOB OPPORTUNITY: Culling the Competition", map = 1427, x = 37.63, y = 26.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3441, title = "Divine Retribution", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 38.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3441, title = "Divine Retribution", note = "Listen to Velarok's Story", map = 1427, x = 39.05, y = 38.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3441, title = "Divine Retribution", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 38.99, f = "e" },
					{ t = "accept", quest = 3442, title = "The Flawless Flame", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 38.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 7728, item = 18959, itemName = "Smithing Tuyere", oi = 1, map = 1427, x = 39.2, y = 49.4, f = "e" },
				},
			},
			{
				label = "Collect_Hearts_Of_Flame",
				along = true,
				note = "Fire and rock elementals.",
				goals = {
					{ t = "collect", quest = 3442, item = 10509, itemName = "Heart of Flame", count = 4, oi = 1, map = 1427, x = 42.58, y = 38.58, f = "e" },
				},
			},
			{
				label = "Collect_Golem_Oil",
				along = true,
				note = "Golems and Elementals.",
				goals = {
					{ t = "collect", quest = 3442, item = 10511, itemName = "Golem Oil", count = 4, oi = 2, map = 1427, x = 39.2, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3442, title = "The Flawless Flame", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 38.99, f = "e" },
					{ t = "accept", quest = 3443, title = "Forging the Shaft", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 38.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Jump down onto the metal walkway here", map = 1427, x = 49.32, y = 43.74 },
					{ t = "complete", quest = 7727, title = "Incendosaurs? Whateverosaur is More Like It", note = "Enter the cave", map = 1427, x = 49.58, y = 45.49, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Jump down from the bridge inside the cave here", map = 1427, x = 47.73, y = 41.92 },
					{ t = "kill", quest = 7727, npc = 9318, target = "Incendosaur", count = 20, oi = 1, map = 1427, x = 51.4, y = 36.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1427, x = 47.52, y = 46.46 },
					{ t = "goto", text = "Enter the Other Cave Entrance", map = 1427, x = 49.6, y = 45.5 },
				},
			},
			{
				label = "Collect_Grimesilt_Outhouse_Key",
				along = true,
				note = "Throughout the cave. notinsticky",
				goals = {
					{ t = "collect", quest = 4451, item = 11818, itemName = "Grimesilt Outhouse Key", map = 1427, x = 44.6, y = 37.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 11818, itemName = "Grimesilt Outhouse Key" },
					{ t = "accept", quest = 4451, title = "The Key to Freedom" },
				},
			},
			{
				label = "Collect_Thorium_Plated_Daggers",
				along = true,
				note = "Slaves Workers also drop them. notinsticky Throughout the cave. notinsticky",
				goals = {
					{ t = "collect", quest = 3443, item = 10551, itemName = "Thorium Plated Dagger", count = 8, oi = 1, map = 1427, x = 44.6, y = 37.4, f = "e" },
				},
			},
			{
				label = "Kill_Dark_Iron_Taskmasters_And_Slavers",
				along = true,
				note = "Throughout the cave. notinsticky",
				goals = {
					{ t = "kill", quest = 7729, npc = 5846, target = "Dark Iron Taskmaster", count = 15, oi = 1, map = 1427, x = 44.6, y = 37.4, f = "e" },
					{ t = "kill", quest = 7729, npc = 5844, target = "Dark Iron Slaver", count = 15, oi = 2, map = 1427, x = 44.6, y = 37.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1427, x = 49.6, y = 45.5 },
					{ t = "goto", text = "Follow the path up to leave the Cauldron", map = 1427, x = 58.21, y = 40.61 },
					{ t = "turnin", quest = 3443, title = "Forging the Shaft", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.06, y = 38.99, f = "e" },
					{ t = "accept", quest = 3452, title = "The Flame's Casing", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.06, y = 38.99, f = "e" },
				},
			},
			{
				note = "Elite enemies. May need help. Important to get done. Unlocks more quests that give good xp.",
				goals = {
					{ t = "collect", quest = 3452, item = 10552, itemName = "Symbol of Ragnaros", oi = 1, map = 1427, x = 25.0, y = 36.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1427, x = 21.16, y = 35.91 },
					{ t = "turnin", quest = 3452, title = "The Flame's Casing", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 38.99, f = "e" },
					{ t = "accept", quest = 3453, title = "The Torch of Retribution", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 38.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3453, title = "The Torch of Retribution", note = "Witness the Creation of the Torch", map = 1427, x = 39.05, y = 38.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3453, title = "The Torch of Retribution", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 38.99, f = "e" },
					{ t = "accept", quest = 3454, title = "The Torch of Retribution", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 38.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3454, title = "The Torch of Retribution", map = 1427, x = 39.06, y = 39.06, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3462, title = "Squire Maltrake", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3462, title = "Squire Maltrake", npc = 8509, npcName = "Squire Maltrake", map = 1427, x = 39.16, y = 38.99, f = "e" },
					{ t = "accept", quest = 3463, title = "Set Them Ablaze!", npc = 8509, npcName = "Squire Maltrake", map = 1427, x = 39.16, y = 38.99, f = "e" },
				},
			},
			{
				note = "Up in the tower. Careful, elite enemy.",
				goals = {
					{ t = "complete", quest = 3463, title = "Set Them Ablaze!", note = "Set the Northern Tower Ablaze", map = 1427, x = 33.31, y = 54.49, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3463, title = "Set Them Ablaze!", note = "Equip Your Normal Weapon" },
				},
			},
			{
				note = "Up in the tower. Careful, elite enemy.",
				goals = {
					{ t = "complete", quest = 3463, title = "Set Them Ablaze!", note = "Set the Western Tower Ablaze", map = 1427, x = 35.67, y = 60.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3463, title = "Set Them Ablaze!", note = "Equip Your Normal Weapon" },
				},
			},
			{
				note = "Up in the tower. Careful, elite enemy.",
				goals = {
					{ t = "complete", quest = 3463, title = "Set Them Ablaze!", note = "Set the Southern Tower Ablaze", map = 1427, x = 44.03, y = 60.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3463, title = "Set Them Ablaze!", note = "Equip Your Normal Weapon" },
				},
			},
			{
				note = "Up in the tower. Careful, elite enemy.",
				goals = {
					{ t = "goto", text = "Cross the hanging bridge", map = 1427, x = 52.48, y = 57.95 },
					{ t = "complete", quest = 3463, title = "Set Them Ablaze!", note = "Set the Eastern Tower Ablaze", map = 1427, x = 50.06, y = 54.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3463, title = "Set Them Ablaze!", note = "Equip Your Normal Weapon" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4451, title = "The Key to Freedom", map = 1427, x = 65.53, y = 62.23, f = "e" },
					{ t = "accept", quest = 4449, title = "Caught!", map = 1427, x = 65.53, y = 62.23, f = "e" },
				},
			},
			{
				note = "Skip once no more to kill. Can finish later.",
				goals = {
					{ t = "kill", quest = 4449, npc = 5839, target = "Dark Iron Geologist", count = 8, oi = 1, map = 1427, x = 63.4, y = 61.4, f = "e" },
				},
			},
			{
				note = "Level 48 elite blue dinosaur. Walks along the path. May need help.",
				goals = {
					{ t = "collect", quest = 3181, item = 10000, itemName = "Margol's Horn", map = 1427, x = 73.5, y = 82.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 10000, itemName = "Margol's Horn" },
					{ t = "accept", quest = 3181, title = "The Horn of the Beast" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4449, npc = 5839, target = "Dark Iron Geologist", count = 8, oi = 1, map = 1427, x = 63.4, y = 61.4, f = "e" },
				},
			},
			{
				label = "Collect_Silk_Cloth",
				along = true,
				goals = {
					{ t = "collect", quest = 4449, item = 4306, itemName = "Silk Cloth", count = 15, oi = 2, map = 1427, x = 63.4, y = 61.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4449, title = "Caught!", map = 1427, x = 65.54, y = 62.24, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing. Kill all enemies nearby first.",
				goals = {
					{ t = "accept", quest = 3367, title = "Suntara Stones", npc = 8284, npcName = "Dorius Stonetender", map = 1427, x = 63.92, y = 60.98, f = "e" },
				},
			},
			{
				note = "Follow and protect Dorius Stonetender.",
				goals = {
					{ t = "complete", quest = 3367, title = "Suntara Stones", note = "Escort Dorius", map = 1427, x = 74.42, y = 19.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3367, title = "Suntara Stones", map = 1427, x = 74.45, y = 19.29, f = "e" },
					{ t = "accept", quest = 3368, title = "Suntara Stones", map = 1427, x = 74.45, y = 19.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3463, title = "Set Them Ablaze!", npc = 8509, npcName = "Squire Maltrake", map = 1427, x = 39.17, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3481, title = "Trinkets...", map = 1427, x = 38.86, y = 38.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3481, title = "Trinkets...", map = 1427, x = 38.86, y = 38.99, f = "e" },
				},
			},
			{
				note = "Needed for a future quest.",
				goals = {
					{ t = "use", item = 10569, itemName = "Hoard of the Black Dragonflight" },
					{ t = "collect", quest = 4022, item = 10575, itemName = "Black Dragonflight Molt" },
				},
			},
			{
				label = "Collect_Lookouts_Spyglass",
				along = true,
				note = "Near watch towers surrounding the Cauldron.",
				goals = {
					{ t = "collect", quest = 7728, item = 18960, itemName = "Lookout's Spyglass", oi = 2, map = 1427, x = 33.2, y = 53.6, f = "e" },
				},
			},
			{
				label = "Kill_Greater_Lava_Spiders",
				along = true,
				goals = {
					{ t = "kill", quest = 7724, npc = 5858, target = "Greater Lava Spider", count = 20, oi = 1, map = 1427, x = 32.6, y = 42.6, f = "e" },
				},
			},
			{
				label = "Kill_Heavy_War_Golems",
				along = true,
				goals = {
					{ t = "kill", quest = 7723, npc = 5854, target = "Heavy War Golem", count = 20, oi = 1, map = 1427, x = 39.2, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 51", map = 1427, x = 32.6, y = 42.6 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up to enter Thorium Point", map = 1427, x = 31.52, y = 33.54 },
					{ t = "turnin", quest = 7723, title = "Curse These Fat Fingers", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.59, y = 27.81, f = "e" },
					{ t = "turnin", quest = 7724, title = "Fiery Menace!", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.59, y = 27.81, f = "e" },
					{ t = "turnin", quest = 7727, title = "Incendosaurs? Whateverosaur is More Like It", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.59, y = 27.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7728, title = "STOLEN: Smithing Tuyere and Lookout's Spyglass", npc = 14626, npcName = "Taskmaster Scrange", map = 1427, x = 38.98, y = 27.51, f = "e" },
					{ t = "turnin", quest = 7729, title = "JOB OPPORTUNITY: Culling the Competition", npc = 14626, npcName = "Taskmaster Scrange", map = 1427, x = 38.98, y = 27.51, f = "e" },
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
				goals = {
					{ t = "turnin", quest = 3181, title = "The Horn of the Beast", npc = 3836, npcName = "Mountaineer Pebblebitty", map = 1432, x = 18.19, y = 84.0, f = "e" },
					{ t = "accept", quest = 3182, title = "Proof of Deed", npc = 3836, npcName = "Mountaineer Pebblebitty", map = 1432, x = 18.19, y = 84.0, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "goto", text = "Train Tiger Riding", map = 1457, x = 38.69, y = 15.84 },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Inside the building.",
				goals = {
					{ t = "collect", quest = 7791, item = 2592, itemName = "Wool Cloth", count = 60, map = 1453, x = 61.14, y = 70.67, f = "e" },
					{ t = "collect", quest = 7793, item = 4306, itemName = "Silk Cloth", count = 60, map = 1453, x = 61.14, y = 70.67, f = "e" },
					{ t = "collect", quest = 7794, item = 4338, itemName = "Mageweave Cloth", count = 60, map = 1453, x = 61.14, y = 70.67, f = "e" },
					{ t = "collect", quest = 7795, item = 14047, itemName = "Runecloth", count = 60, map = 1453, x = 61.14, y = 70.67, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "goto", text = "bank Black Dragonflight Molt##10575", map = 1453, x = 64.18, y = 80.48 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 7791, title = "A Donation of Wool", npc = 14722, npcName = "Clavicus Knavingham", map = 1453, x = 53.93, y = 81.68, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 7793, title = "A Donation of Silk", npc = 14722, npcName = "Clavicus Knavingham", map = 1453, x = 53.93, y = 81.68, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 7794, title = "A Donation of Mageweave", npc = 14722, npcName = "Clavicus Knavingham", map = 1453, x = 53.93, y = 81.68, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 7795, title = "A Donation of Runecloth", npc = 14722, npcName = "Clavicus Knavingham", map = 1453, x = 53.93, y = 81.68, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", text = "Train Horse Riding", map = 1429, x = 84.32, y = 64.87 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-blasted-lands-and-burning-steppes-51-51",
		pack = "guides",
		title = "Blasted Lands & Burning Steppes",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-western-plaguelands-51-52",
		author = "TuWoW & Zygor",
		minLevel = 51,
		maxLevel = 51,
		zone = 1419,
		version = 1,
		steps = {
			{
				note = "Top of the tower.",
				goals = {
					{ t = "accept", quest = 2783, title = "Petty Squabbles", npc = 7826, npcName = "Ambassador Ardalan", map = 1419, x = 67.57, y = 19.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2783, title = "Petty Squabbles", npc = 7572, npcName = "Fallen Hero of the Horde", map = 1435, x = 34.29, y = 66.13, f = "e" },
					{ t = "accept", quest = 2801, title = "A Tale of Sorrow", npc = 7572, npcName = "Fallen Hero of the Horde", map = 1435, x = 34.29, y = 66.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2801, title = "A Tale of Sorrow", note = "Listen to a Tale of Sorrow", map = 1435, x = 34.29, y = 66.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2801, title = "A Tale of Sorrow", npc = 7572, npcName = "Fallen Hero of the Horde", map = 1435, x = 34.29, y = 66.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2581, title = "Snickerfang Jowls", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.55, y = 14.21, f = "e" },
					{ t = "accept", quest = 2583, title = "A Boar's Vitality", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.55, y = 14.21, f = "e" },
					{ t = "accept", quest = 2585, title = "The Decisive Striker", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.55, y = 14.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2601, title = "The Basilisk's Bite", npc = 7506, npcName = "Bloodmage Lynnore", map = 1419, x = 50.64, y = 14.3, f = "e" },
					{ t = "accept", quest = 2603, title = "Vulture's Vigor", npc = 7506, npcName = "Bloodmage Lynnore", map = 1419, x = 50.64, y = 14.3, f = "e" },
				},
			},
			{
				note = "Vultures. Focus on these.",
				goals = {
					{ t = "collect", item = 8396, itemName = "Vulture Gizzard", count = 14, map = 1419, x = 56.6, y = 35.4, f = "e" },
				},
			},
			{
				label = "Collect_Basilisk_Brains",
				along = true,
				note = "Basilisks. Shared spawns with boars. notinsticky",
				goals = {
					{ t = "collect", item = 8394, itemName = "Basilisk Brain", count = 11, map = 1419, x = 54.4, y = 29.8, f = "e" },
				},
			},
			{
				label = "Collect_Blasted_Boar_Lungs",
				along = true,
				note = "Boars. Shared spawns with basilisks. notinsticky",
				goals = {
					{ t = "collect", item = 8392, itemName = "Blasted Boar Lung", count = 6, map = 1419, x = 57.2, y = 27.2, f = "e" },
				},
			},
			{
				label = "Collect_Snickerfang_Jowls",
				along = true,
				note = "Hyenas. Shared spawns with scorpions. notinsticky",
				goals = {
					{ t = "collect", item = 8391, itemName = "Snickerfang Jowl", count = 5, map = 1419, x = 58.2, y = 31.8, f = "e" },
				},
			},
			{
				label = "Collect_Scorpok_Pincers",
				along = true,
				note = "Scorpions. Shared spawns with hyenas. notinsticky",
				goals = {
					{ t = "collect", item = 8393, itemName = "Scorpok Pincer", count = 6, map = 1419, x = 47.6, y = 18.8, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 3501, title = "Everything Counts In Large Amounts", npc = 7363, npcName = "Kum'isha the Collector", map = 1419, x = 51.8, y = 35.64, f = "e" },
					{ t = "accept", quest = 2521, title = "To Serve Kum'isha", npc = 7363, npcName = "Kum'isha the Collector", map = 1419, x = 51.8, y = 35.64, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 3501, title = "Everything Counts In Large Amounts", npc = 7363, npcName = "Kum'isha the Collector", map = 1419, x = 51.8, y = 35.64, f = "e" },
					{ t = "turnin", quest = 2521, title = "To Serve Kum'isha", npc = 7363, npcName = "Kum'isha the Collector", map = 1419, x = 51.8, y = 35.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2601, title = "The Basilisk's Bite", npc = 7506, npcName = "Bloodmage Lynnore", map = 1419, x = 50.64, y = 14.3, f = "e" },
					{ t = "turnin", quest = 2603, title = "Vulture's Vigor", npc = 7506, npcName = "Bloodmage Lynnore", map = 1419, x = 50.64, y = 14.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2581, title = "Snickerfang Jowls", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.55, y = 14.21, f = "e" },
					{ t = "turnin", quest = 2583, title = "A Boar's Vitality", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.55, y = 14.21, f = "e" },
					{ t = "turnin", quest = 2585, title = "The Decisive Striker", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.55, y = 14.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up into Morgan's Vigil", map = 1428, x = 82.85, y = 63.33 },
					{ t = "getfp", location = "Morgan's Vigil", map = 1428, x = 84.33, y = 68.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3823, title = "Extinguish the Firegut", npc = 9177, npcName = "Oralius", map = 1428, x = 84.56, y = 68.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 3823, npc = 7033, target = "Firegut Ogre", count = 7, oi = 2, map = 1428, x = 75.6, y = 50.0, f = "e" },
					{ t = "kill", quest = 3823, npc = 7035, target = "Firegut Brute", count = 7, oi = 3, map = 1428, x = 75.6, y = 50.0, f = "e" },
					{ t = "kill", quest = 3823, npc = 7034, target = "Firegut Ogre Mage", count = 15, oi = 1, map = 1428, x = 75.6, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up into Morgan's Vigil", map = 1428, x = 82.85, y = 63.33 },
					{ t = "turnin", quest = 3823, title = "Extinguish the Firegut", npc = 9177, npcName = "Oralius", map = 1428, x = 84.56, y = 68.68, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", text = "Train Horse Riding", map = 1429, x = 84.32, y = 64.87 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 4512, title = "A Little Slime Goes a Long Way", npc = 9616, npcName = "Laris Geardawdle", map = 1455, x = 75.77, y = 23.37, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 3182, title = "Proof of Deed", npc = 8256, npcName = "Curator Thorius", map = 1455, x = 71.2, y = 14.8, f = "e" },
					{ t = "turnin", quest = 3368, title = "Suntara Stones", npc = 8256, npcName = "Curator Thorius", map = 1455, x = 71.2, y = 14.8, f = "e" },
					{ t = "accept", quest = 3201, title = "At Last!", npc = 8256, npcName = "Curator Thorius", map = 1455, x = 71.2, y = 14.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3448, title = "Passing the Burden", npc = 2916, npcName = "Historian Karnik", map = 1455, x = 77.55, y = 11.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3448, title = "Passing the Burden", npc = 8507, npcName = "Tymor", map = 1455, x = 30.97, y = 4.81, f = "e" },
					{ t = "accept", quest = 3449, title = "Arcane Runes", npc = 8507, npcName = "Tymor", map = 1455, x = 30.97, y = 4.81, f = "e" },
					{ t = "accept", quest = 3450, title = "An Easy Pickup", npc = 8507, npcName = "Tymor", map = 1455, x = 30.97, y = 4.81, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 3790, title = "Assisting Arch Druid Staghelm", npc = 5111, npcName = "Innkeeper Firebrew", map = 1455, x = 18.15, y = 51.46, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Ironforge", map = 1455, x = 18.15, y = 51.46, f = "e" },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Inside the building. Needed for quest in Un'Goro Crater.",
				goals = {
					{ t = "collect", quest = 4244, item = 10561, itemName = "Mithril Casing", map = 1455, x = 24.16, y = 74.67, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 2944, item = 9328, itemName = "Super Snapper FX", map = 1455, x = 35.92, y = 60.14, f = "e" },
					{ t = "collect", quest = 2944, item = 9330, itemName = "Snapshot of Gammerita", map = 1455, x = 35.92, y = 60.14, f = "e" },
					{ t = "collect", quest = 3661, item = 10819, itemName = "Wildkin Feather", count = 15, map = 1455, x = 35.92, y = 60.14, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "goto", text = "bank Mithril Casing##10561", map = 1455, x = 35.92, y = 60.14 },
					{ t = "complete", quest = 3449, title = "Arcane Runes", note = "bank Drawing Kit##10445", map = 1455, x = 35.92, y = 60.14, f = "e" },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Needed for 8 quests. Each quest requires 60 cloth. Inside the building.",
				goals = {
					{ t = "collect", quest = 7791, item = 2592, itemName = "Wool Cloth", count = 120, map = 1455, x = 24.16, y = 74.67, f = "e" },
					{ t = "collect", quest = 7793, item = 4306, itemName = "Silk Cloth", count = 120, map = 1455, x = 24.16, y = 74.67, f = "e" },
					{ t = "collect", quest = 7794, item = 4338, itemName = "Mageweave Cloth", count = 120, map = 1455, x = 24.16, y = 74.67, f = "e" },
					{ t = "collect", quest = 7795, item = 14047, itemName = "Runecloth", count = 120, map = 1455, x = 24.16, y = 74.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7802, title = "A Donation of Wool", npc = 14723, npcName = "Mistina Steelshield", map = 1455, x = 43.22, y = 31.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7803, title = "A Donation of Silk", npc = 14723, npcName = "Mistina Steelshield", map = 1455, x = 43.22, y = 31.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7804, title = "A Donation of Mageweave", npc = 14723, npcName = "Mistina Steelshield", map = 1455, x = 43.22, y = 31.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7805, title = "A Donation of Runecloth", npc = 14723, npcName = "Mistina Steelshield", map = 1455, x = 43.22, y = 31.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7807, title = "A Donation of Wool", npc = 14724, npcName = "Bubulo Acerbus", map = 1455, x = 74.09, y = 48.22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7808, title = "A Donation of Silk", npc = 14724, npcName = "Bubulo Acerbus", map = 1455, x = 74.09, y = 48.22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7809, title = "A Donation of Mageweave", npc = 14724, npcName = "Bubulo Acerbus", map = 1455, x = 74.09, y = 48.22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7811, title = "A Donation of Runecloth", npc = 14724, npcName = "Bubulo Acerbus", map = 1455, x = 74.09, y = 48.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3450, title = "An Easy Pickup", npc = 8517, npcName = "Xiggs Fuselighter", map = 1455, x = 70.87, y = 94.57, f = "e" },
					{ t = "accept", quest = 3451, title = "Signal for Pickup", npc = 8517, npcName = "Xiggs Fuselighter", map = 1455, x = 70.87, y = 94.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3451, title = "Signal for Pickup", npc = 8517, npcName = "Xiggs Fuselighter", map = 1455, x = 70.87, y = 94.57, f = "e" },
				},
			},
			{
				label = "Accept_A_Call_To_Arms_The_Plaguelands",
				along = true,
				note = "Walks a large counter-clockwise path.",
				goals = {
					{ t = "accept", quest = 5090, title = "A Call to Arms: The Plaguelands!", npc = 10877, npcName = "Courier Hammerfall", map = 1455, x = 55.9, y = 81.4, f = "e" },
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
				goals = {
					{ t = "turnin", quest = 3201, title = "At Last!", npc = 3836, npcName = "Mountaineer Pebblebitty", map = 1432, x = 18.19, y = 84.0, f = "e" },
				},
			},
			{
				note = "Inside the building. Top of the path.",
				goals = {
					{ t = "turnin", quest = 2989, title = "The Altar of Zul", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.76, y = 44.48, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2877, title = "Skulk Rock Clean-up", npc = 7884, npcName = "Fraggar Thundermantle", map = 1425, x = 14.83, y = 44.56, f = "e" },
				},
			},
			{
				note = "Brown mushrooms. Underwater.",
				goals = {
					{ t = "collect", quest = 2641, item = 8526, itemName = "Violet Tragan", oi = 1, map = 1425, x = 41.01, y = 59.77, f = "e" },
				},
			},
			{
				note = "Bottom of the waterfall. Underwater.",
				goals = {
					{ t = "turnin", quest = 626, title = "Cortello's Riddle", map = 1425, x = 80.81, y = 46.81, f = "e" },
				},
			},
		},
	})
end

