-- TuWoW_Leveling — Guides/Leveling_Horde_30.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-stranglethorn-vale-and-swamp-of-sorrows-50-50",
		pack = "guides",
		title = "Stranglethorn Vale & Swamp of Sorrows",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-blasted-lands-50-51",
		author = "TuWoW & Zygor",
		minLevel = 50,
		maxLevel = 50,
		zone = 1434,
		version = 1,
		steps = {
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2874, title = "Deliver to MacKinley", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.78, y = 77.07, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "turnin", quest = 580, title = "Whiskey Slim's Lost Grog", npc = 2491, npcName = "Whiskey Slim", map = 1434, x = 27.13, y = 77.45, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "turnin", quest = 1122, title = "Report Back to Fizzlebub", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Level 43 elite blue raptor. Walks around. Multiple locations.",
				goals = {
					{ t = "collect", quest = 197, item = 3877, itemName = "Talon of Tethis", oi = 1, map = 1434, x = 30.4, y = 40.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 197, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
					{ t = "accept", quest = 208, title = "Big Game Hunter", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				note = "Level 43 elite white tiger. Summons 2 non-elite lower level helpers. Around 50% health. Walks around. Top of the hill. May need help.",
				goals = {
					{ t = "collect", quest = 208, item = 3880, itemName = "Head of Bangalash", oi = 1, map = 1434, x = 38.35, y = 35.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 208, title = "Big Game Hunter", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "accept", quest = 608, title = "The Bloodsail Buccaneers", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.17, y = 77.01, f = "e" },
				},
			},
			{
				note = "Tiny green bottles. Next to the water along the beach.",
				goals = {
					{ t = "goto", text = "Run through the tunnel to leave Booty Bay", map = 1434, x = 28.0, y = 73.46 },
					{ t = "collect", item = 4098, itemName = "Carefully Folded Note" },
					{ t = "use", item = 4098, itemName = "Carefully Folded Note" },
					{ t = "accept", quest = 594, title = "Message in a Bottle", map = 1434, x = 35.07, y = 72.9, f = "e" },
				},
			},
			{
				note = "Middle floor inside the ship.",
				goals = {
					{ t = "kill", quest = 608, npc = 2548, target = "Captain Keelhaul", oi = 2, map = 1434, x = 29.2, y = 88.34, f = "e" },
				},
			},
			{
				label = "Collect_Cortellos_Riddle_1",
				along = true,
				note = "White rolled up scroll. Middle floor or bottom floor inside the ship. Multiple locations. Can be on another ship. Skip if not on this ship. notinsticky",
				goals = {
					{ t = "collect", quest = 624, item = 4056, itemName = "Cortello's Riddle", map = 1434, x = 29.2, y = 88.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 4056, itemName = "Cortello's Riddle" },
					{ t = "accept", quest = 624, title = "Cortello's Riddle" },
				},
			},
			{
				note = "Middle floor inside the ship.",
				goals = {
					{ t = "kill", quest = 608, npc = 2546, target = "Fleet Master Firallon", oi = 3, map = 1434, x = 30.58, y = 90.64, f = "e" },
				},
			},
			{
				label = "Collect_Cortellos_Riddle_2",
				along = true,
				note = "White rolled up scroll. Middle floor or bottom floor inside the ship. Multiple locations. Can be on another ship. Skip if not on this ship. notinsticky",
				goals = {
					{ t = "collect", quest = 624, item = 4056, itemName = "Cortello's Riddle", map = 1434, x = 30.64, y = 90.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 4056, itemName = "Cortello's Riddle" },
					{ t = "accept", quest = 624, title = "Cortello's Riddle" },
				},
			},
			{
				note = "Middle floor inside the ship.",
				goals = {
					{ t = "kill", quest = 608, npc = 2550, target = "Captain Stillwater", oi = 1, map = 1434, x = 32.87, y = 88.2, f = "e" },
				},
			},
			{
				label = "Collect_Cortellos_Riddle_3",
				along = true,
				note = "White rolled up scroll. Middle floor or bottom floor inside the ship. Multiple locations. Can be on another ship. Skip if not on this ship. notinsticky",
				goals = {
					{ t = "collect", quest = 624, item = 4056, itemName = "Cortello's Riddle", map = 1434, x = 33.39, y = 88.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 4056, itemName = "Cortello's Riddle" },
					{ t = "accept", quest = 624, title = "Cortello's Riddle" },
				},
			},
			{
				note = "Wait if she's missing. Careful, stealthed enemies.",
				goals = {
					{ t = "turnin", quest = 594, title = "Message in a Bottle", npc = 2634, npcName = "Princess Poobah", map = 1434, x = 38.53, y = 80.58, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "goto", text = "Run through the tunnel to enter Booty Bay", map = 1434, x = 29.56, y = 72.51 },
					{ t = "turnin", quest = 608, title = "The Bloodsail Buccaneers", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.17, y = 77.01, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2623, title = "The Swamp Talker", npc = 7643, npcName = "Bengor", map = 1435, x = 44.98, y = 57.34, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1444, title = "Return to Fel'Zerul", npc = 1443, npcName = "Fel'zerul", map = 1435, x = 47.93, y = 54.79, f = "e" },
				},
			},
			{
				note = "Grey murloc. Walks around. Upstairs inside the cave. May spawn in other locations.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1435, x = 66.37, y = 76.54 },
					{ t = "goto", text = "Follow the path up", map = 1435, x = 64.07, y = 87.93 },
					{ t = "collect", quest = 2623, item = 8463, itemName = "Warchief's Orders", oi = 1, map = 1435, x = 62.6, y = 88.08, f = "e" },
				},
			},
			{
				note = "Under the bridge. Underwater.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1435, x = 66.37, y = 76.54 },
					{ t = "turnin", quest = 624, title = "Cortello's Riddle", map = 1435, x = 22.86, y = 48.19, f = "e" },
					{ t = "accept", quest = 625, title = "Cortello's Riddle", map = 1435, x = 22.86, y = 48.19, f = "e" },
				},
			},
			{
				note = "He attacks you. May need help.",
				goals = {
					{ t = "accept", quest = 1173, title = "Challenge Overlord Mok'Morokk", npc = 4500, npcName = "Overlord Mok'Morokk", map = 1445, x = 36.3, y = 31.42, f = "e" },
				},
			},
			{
				note = "Surrenders around 30% health.",
				goals = {
					{ t = "complete", quest = 1173, title = "Challenge Overlord Mok'Morokk", note = "Drive Overlord Mok'Morokk from Brackenwall Village", map = 1445, x = 36.3, y = 31.42, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 1173, title = "Challenge Overlord Mok'Morokk", npc = 4501, npcName = "Draz'Zilb", map = 1445, x = 37.15, y = 33.08, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 625, title = "Cortello's Riddle", map = 1445, x = 31.1, y = 66.15, f = "e" },
					{ t = "accept", quest = 626, title = "Cortello's Riddle", map = 1445, x = 31.1, y = 66.15, f = "e" },
				},
			},
			{
				note = "Collect from the bank.",
				goals = {
					{ t = "collect", quest = 4449, item = 4306, itemName = "Silk Cloth", count = 15, map = 1413, x = 62.64, y = 37.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2623, title = "The Swamp Talker", npc = 7572, npcName = "Fallen Hero of the Horde", map = 1435, x = 34.29, y = 66.13, f = "e" },
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
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-blasted-lands-50-51",
		pack = "guides",
		title = "Blasted Lands",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-searing-gorge-51-51",
		author = "TuWoW & Zygor",
		minLevel = 50,
		maxLevel = 51,
		zone = 1419,
		version = 1,
		steps = {
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
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-searing-gorge-51-51",
		pack = "guides",
		title = "Searing Gorge",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-burning-steppes-and-azshara-51-52",
		author = "TuWoW & Zygor",
		minLevel = 51,
		maxLevel = 51,
		zone = 1418,
		version = 1,
		steps = {
			{
				note = "Walks along the path near Kargath. Only offers quest when standing here. Wait until he returns, if missing.",
				goals = {
					{ t = "accept", quest = 3821, title = "Dreadmaul Rock", npc = 9082, npcName = "Thal'trak Proudtusk", map = 1418, x = 3.36, y = 48.07, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4449, title = "Caught!", map = 1427, x = 65.54, y = 62.24, f = "e" },
				},
			},
			{
				note = "Multiple locations.",
				goals = {
					{ t = "kill", quest = 4449, npc = 5839, target = "Dark Iron Geologist", count = 8, oi = 1, map = 1427, x = 63.4, y = 61.4, f = "e" },
				},
			},
			{
				label = "Collect_Silk_Cloth",
				along = true,
				note = "Multiple locations. notinsticky",
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
				goals = {
					{ t = "goto", text = "Follow the path", map = 1427, x = 66.79, y = 34.56 },
					{ t = "accept", quest = 3441, title = "Divine Retribution", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 38.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3441, title = "Divine Retribution", note = "Listen to Kalaran's Story", map = 1427, x = 39.05, y = 38.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3441, title = "Divine Retribution", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 38.99, f = "e" },
					{ t = "accept", quest = 3442, title = "The Flawless Flame", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 38.99, f = "e" },
				},
			},
			{
				note = "Up on the cliff.",
				goals = {
					{ t = "goto", text = "Follow the path up to enter Thorium Point", map = 1427, x = 31.52, y = 33.54 },
					{ t = "getfp", location = "Thorium Point", map = 1427, x = 34.85, y = 30.87, f = "e" },
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
					{ t = "accept", quest = 7723, title = "Curse These Fat Fingers", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.57, y = 27.8, f = "e" },
					{ t = "accept", quest = 7724, title = "Fiery Menace!", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.57, y = 27.8, f = "e" },
					{ t = "accept", quest = 7727, title = "Incendosaurs? Whateverosaur is More Like It", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.57, y = 27.8, f = "e" },
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
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1427, x = 66.79, y = 34.56 },
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
		},
	})
end

