-- TuWoW_Leveling — Guides/Dungeons_24.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-maraudon-quests",
		pack = "guides",
		title = "Maraudon Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 45 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 38.3, y = 81.47 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 38.75, y = 83.33 },
					{ t = "accept", quest = 7068, title = "Shadowshard Fragments", npc = 7311, npcName = "Uthel'nay", map = 1454, x = 39.16, y = 86.26, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1443, x = 23.61, y = 70.08 },
					{ t = "accept", quest = 7029, title = "Vyletongue Corruption", npc = 11823, npcName = "Vark Battlescar", map = 1443, x = 23.22, y = 70.32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7064, title = "Corruption of Earth and Seed", npc = 13699, npcName = "Selendra", map = 1443, x = 26.86, y = 77.67, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7028, title = "Twisted Evils", npc = 13656, npcName = "Willow", map = 1443, x = 62.19, y = 39.63, f = "e" },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "accept", quest = 7067, title = "The Pariah's Instructions", npc = 13717, npcName = "Centaur Pariah", map = 1443, x = 51.47, y = 87.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1443, x = 29.84, y = 62.54 },
					{ t = "goto", text = "Enter the building", map = 1443, x = 29.11, y = 62.56 },
				},
			},
			{
				note = "He spawns in multiple locations outside of the Maraudon dungeon. You may need help with this.",
				goals = {
					{ t = "collect", quest = 7067, item = 17757, itemName = "Amulet of Spirits", map = 1443, x = 38.31, y = 57.96, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run down the stairs", map = 1443, x = 38.25, y = 57.99 },
					{ t = "goto", text = "Follow the path", map = 1443, x = 38.43, y = 57.85 },
					{ t = "goto", text = "Continue following the path", map = 1443, x = 38.64, y = 57.71 },
					{ t = "goto", text = "Continue following the path", map = 1443, x = 38.53, y = 57.55 },
					{ t = "complete", quest = 7067, title = "The Pariah's Instructions", note = "Continue following the path", map = 1443, x = 38.48, y = 57.34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Continue following the path", map = 1443, x = 29.44, y = 57.22 },
					{ t = "complete", quest = 7067, title = "The Pariah's Instructions", note = "Jump down here", map = 1443, x = 28.8, y = 56.17, f = "e" },
				},
			},
			{
				note = "Use it on the Spirit of Gelk. He walks around this area.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1443, x = 28.71, y = 56.2 },
					{ t = "use", item = 17757, itemName = "Amulet of Spirits" },
					{ t = "collect", quest = 7067, item = 17762, itemName = "Gem of the Second Kahn", map = 1443, x = 38.47, y = 57.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1443, x = 38.46, y = 57.08 },
					{ t = "collect", quest = 7068, item = 17756, itemName = "Shadowshard Fragment", count = 10, oi = 1, map = 1443, x = 28.32, y = 54.47, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1443, x = 29.58, y = 55.54 },
					{ t = "goto", text = "Continue following the path", map = 1443, x = 29.46, y = 57.25 },
				},
			},
			{
				note = "Use it on the Spirit of Kolk.",
				goals = {
					{ t = "goto", text = "Jump down here", map = 1443, x = 38.53, y = 57.6 },
					{ t = "use", item = 17757, itemName = "Amulet of Spirits" },
					{ t = "collect", quest = 7067, item = 17761, itemName = "Gem of the First Khan", map = 1443, x = 38.5, y = 57.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1443, x = 38.6, y = 57.95 },
					{ t = "goto", text = "Continue following the path", map = 1443, x = 38.44, y = 58.13 },
					{ t = "complete", quest = 7067, title = "The Pariah's Instructions", note = "Continue following the path", map = 1443, x = 38.49, y = 58.22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7044, title = "Legends of Maraudon", npc = 13697, npcName = "Cavindra", map = 1443, x = 38.76, y = 58.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1443, x = 38.82, y = 58.31 },
					{ t = "use", item = 17693, itemName = "Coated Cerulean Vial" },
					{ t = "collect", quest = 7029, item = 17696, itemName = "Filled Cerulean Vial", oi = 2, map = 1443, x = 38.92, y = 58.36, f = "e" },
				},
			},
			{
				note = "Use it on the Spirit of Magra. He walks around this area.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1443, x = 39.08, y = 58.01 },
					{ t = "goto", text = "Continue following the path", map = 1443, x = 39.35, y = 58.03 },
					{ t = "use", item = 17757, itemName = "Amulet of Spirits" },
					{ t = "collect", quest = 7067, item = 17763, itemName = "Gem of the Third Kahn", map = 1443, x = 39.2, y = 57.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1443, x = 39.21, y = 57.84 },
					{ t = "goto", text = "Continue following the path", map = 1443, x = 39.35, y = 58.04 },
					{ t = "goto", text = "Enter the Maraudon (Foulspore Cavern - Orange) Dungeon with your Group", map = 1443, x = 39.27, y = 58.19 },
				},
			},
			{
				note = "It is the first boss on the Orange side of Maraudon. After entering the dungeon, run up the stairs and follow the path to the right whenever possible.",
				goals = {
					{ t = "collect", quest = 7044, item = 17702, itemName = "Celebrian Rod", oi = 2 },
				},
			},
			{
				label = "Collect_Gem_of_the_Fifth_Khan",
				along = true,
				note = "Use it on the Spirit of Veng. He walks around the Orange side of Maraudon.",
				goals = {
					{ t = "use", item = 17757, itemName = "Amulet of Spirits" },
					{ t = "collect", quest = 7067, item = 17765, itemName = "Gem of the Fifth Kahn" },
				},
			},
			{
				label = "Heal_Vylestem_Vines",
				along = true,
				note = "While in the Foulspore Cavern, or Orange side of Maraudon, there will be tree stumps with a red top. You won't be able to target them. They have five leaves growing out of them. Use the Filled Cerulean Vial near them and Noxxious Scion will spawn.",
				goals = {
					{ t = "use", item = 17696, itemName = "Filled Cerulean Vial" },
					{ t = "complete", quest = 7029, title = "Vyletongue Corruption", note = "Heal 8 Vylestem Vines" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 7067, title = "The Pariah's Instructions", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1443, x = 29.11, y = 62.56 },
					{ t = "goto", text = "Jump down here", map = 1443, x = 28.06, y = 64.21 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Jump down here", map = 1443, x = 27.84, y = 62.83 },
					{ t = "goto", text = "Follow the path", map = 1443, x = 29.32, y = 61.24 },
					{ t = "goto", text = "Follow the path", map = 1443, x = 29.67, y = 58.58 },
				},
			},
			{
				note = "Use it on the Spirit of Maraudos. He walks around The Wicked Grotto in the Purple side of Maraudon.",
				goals = {
					{ t = "use", item = 17757, itemName = "Amulet of Spirits" },
					{ t = "collect", quest = 7067, item = 17764, itemName = "Gem of the Fourth Kahn" },
				},
			},
			{
				goals = {
					{ t = "use", item = 17765, itemName = "Gem of the Fifth Kahn" },
					{ t = "collect", quest = 7067, item = 17758, itemName = "Amulet of Union", oi = 1 },
				},
			},
			{
				note = "He is Purple side of Maraudon. Proceed through The Wicked Grotto and enter the Vyletongue Seat. He is in a small room on the northern side.",
				goals = {
					{ t = "collect", quest = 7044, item = 17703, itemName = "Celebrian Diamond", oi = 1 },
				},
			},
			{
				note = "He is Purple side of Maraudon. Continue through the Vyletongue Seat and into the Poison Falls. Once you reach the Poison Falls, continue working your way west and then south, where he will be on a small island. He will appear after you kill Celebras the Cursed.",
				goals = {
					{ t = "turnin", quest = 7044, title = "Legends of Maraudon", npc = 13716, npcName = "Celebras the Redeemed" },
					{ t = "accept", quest = 7046, title = "The Scepter of Celebras", npc = 13716, npcName = "Celebras the Redeemed" },
				},
			},
			{
				note = "Click the stone he leads you to.",
				goals = {
					{ t = "complete", quest = 7046, title = "The Scepter of Celebras", note = "Create the Scepter of Celebras" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7046, title = "The Scepter of Celebras", npc = 13716, npcName = "Celebras the Redeemed" },
				},
			},
			{
				note = "She is the last boss on the Purple side of Maraudon. Continue going south and jump down the waterfall. Continue following the path south through the dungeon to reach Zaetar's Grave. Princess Theradras is found at the end of Zaetar's Grave.",
				goals = {
					{ t = "kill", quest = 7064, npc = 12201, target = "Princess Theradras", oi = 1 },
				},
			},
			{
				note = "He will appear at the center of the room once Princess Theradras is killed.",
				goals = {
					{ t = "accept", quest = 7066, title = "Seed of Life", npc = 12238, npcName = "Zaetar's Spirit" },
				},
			},
			{
				label = "Collect_15_Theradric_Crystal_Carving",
				along = true,
				note = "These drop from enemies inside of Maraudon.",
				goals = {
					{ t = "collect", quest = 7028, item = 17684, itemName = "Theradric Crystal Carving", count = 15, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 7066, title = "Seed of Life", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 38.3, y = 81.47 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 38.75, y = 83.33 },
					{ t = "turnin", quest = 7068, title = "Shadowshard Fragments", npc = 7311, npcName = "Uthel'nay", map = 1454, x = 39.16, y = 86.26, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1443, x = 23.61, y = 70.08 },
					{ t = "turnin", quest = 7029, title = "Vyletongue Corruption", npc = 11823, npcName = "Vark Battlescar", map = 1443, x = 23.22, y = 70.32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7064, title = "Corruption of Earth and Seed", npc = 13699, npcName = "Selendra", map = 1443, x = 26.86, y = 77.67, f = "e" },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "turnin", quest = 7067, title = "The Pariah's Instructions", npc = 13717, npcName = "Centaur Pariah", map = 1443, x = 51.47, y = 87.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 7028, title = "Twisted Evils", npc = 13656, npcName = "Willow", map = 1443, x = 62.19, y = 39.63, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7066, title = "Seed of Life", npc = 11832, npcName = "Keeper Remulos", map = 1450, x = 36.18, y = 41.82, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-temple-of-atalhakkar-quests",
		pack = "guides",
		title = "Temple of Atal'Hakkar Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1444,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 47 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3380, title = "The Sunken Temple", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3380, title = "The Sunken Temple", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.92, f = "e" },
					{ t = "accept", quest = 3444, title = "The Stone Circle", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.92, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3444, item = 10556, itemName = "Stone Circle", oi = 1, map = 1413, x = 62.5, y = 38.54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3444, title = "The Stone Circle", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.92, f = "e" },
					{ t = "accept", quest = 3446, title = "Into the Depths", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.92, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3520, title = "Screecher Spirits", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
				},
			},
			{
				note = "These have a low spawn rate. Use it on their corpse.",
				goals = {
					{ t = "use", item = 10699, itemName = "Yeh'kinya's Bramble" },
					{ t = "complete", quest = 3520, title = "Screecher Spirits", note = "Collect 3 Screecher Spirits", map = 1444, x = 58.31, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3520, title = "Screecher Spirits", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
					{ t = "accept", quest = 3527, title = "The Prophecy of Mosh'aru", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
				},
			},
			{
				note = "Follow the path north and then go right when the path splits. Quickly go left afterwards and then north. He is the second boss of the dungeon. You may need help with this.",
				goals = {
					{ t = "collect", quest = 3527, item = 10660, itemName = "First Mosh'aru Tablet", oi = 1 },
				},
			},
			{
				note = "Follow the path west to reach an open room with a large pyramid on the western side. Continue following the path southeast to reach the large room with a pool in the center. She walks around this area. You may need help with this.",
				goals = {
					{ t = "collect", quest = 3527, item = 10661, itemName = "Second Mosh'aru Tablet", oi = 2 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3527, title = "The Prophecy of Mosh'aru", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3527, title = "The Prophecy of Mosh'aru", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 67.0, y = 22.4, f = "e" },
					{ t = "accept", quest = 4787, title = "The Ancient Egg", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 67.0, y = 22.4, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1435, x = 47.23, y = 54.36 },
					{ t = "accept", quest = 1424, title = "Pool of Tears", npc = 1443, npcName = "Fel'zerul", map = 1435, x = 47.94, y = 54.79, f = "e" },
				},
			},
			{
				note = "They look like various small objects on the ground underwater around this area. You can find them all around this large lake.",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 1424, item = 6175, itemName = "Atal'ai Artifact", count = 10, oi = 1, map = 1435, x = 67.14, y = 58.7, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1435, x = 47.23, y = 54.36 },
					{ t = "turnin", quest = 1424, title = "Pool of Tears", npc = 1443, npcName = "Fel'zerul", map = 1435, x = 47.94, y = 54.79, f = "e" },
					{ t = "accept", quest = 1429, title = "The Atal'ai Exile", npc = 1443, npcName = "Fel'zerul", map = 1435, x = 47.94, y = 54.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1425, x = 35.78, y = 64.12 },
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 33.09, y = 73.8 },
					{ t = "goto", text = "Jump down here", map = 1425, x = 33.11, y = 75.53 },
					{ t = "turnin", quest = 1429, title = "The Atal'ai Exile", npc = 5598, npcName = "Atal'ai Exile", map = 1425, x = 33.75, y = 75.22, f = "e" },
					{ t = "accept", quest = 1444, title = "Return to Fel'Zerul", npc = 5598, npcName = "Atal'ai Exile", map = 1425, x = 33.75, y = 75.22, f = "e" },
					{ t = "accept", quest = 1446, title = "Jammal'an the Prophet", npc = 5598, npcName = "Atal'ai Exile", map = 1425, x = 33.75, y = 75.22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1425, x = 35.79, y = 64.07 },
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 66.7, y = 66.71 },
					{ t = "goto", text = "Follow the path", map = 1425, x = 66.63, y = 68.83 },
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 67.93, y = 69.12 },
					{ t = "complete", quest = 4787, title = "The Ancient Egg", note = "Follow the path", map = 1425, x = 67.78, y = 70.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 65.08, y = 68.94 },
					{ t = "goto", text = "Follow the path", map = 1425, x = 63.69, y = 70.44 },
					{ t = "goto", text = "Continue following the path", map = 1425, x = 65.38, y = 72.92 },
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 67.14, y = 73.37 },
					{ t = "complete", quest = 4787, title = "The Ancient Egg", note = "Follow the path", map = 1425, x = 67.15, y = 75.46, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1425, x = 64.52, y = 74.83 },
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 62.16, y = 71.38 },
					{ t = "goto", text = "Continue up the stairs", map = 1425, x = 59.96, y = 70.17 },
					{ t = "goto", text = "Follow the path", map = 1425, x = 58.68, y = 70.28 },
					{ t = "complete", quest = 4787, title = "The Ancient Egg", note = "Continue following the path", map = 1425, x = 59.15, y = 74.3, f = "e" },
				},
			},
			{
				note = "Inside the cave. You may need help with this.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1425, x = 58.61, y = 79.19 },
					{ t = "goto", text = "Follow the path down", map = 1425, x = 58.26, y = 82.31 },
					{ t = "goto", text = "Follow the path up", map = 1425, x = 54.81, y = 83.42 },
					{ t = "collect", quest = 4787, item = 12402, itemName = "Ancient Egg", oi = 1, map = 1425, x = 57.52, y = 86.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4787, title = "The Ancient Egg", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
					{ t = "accept", quest = 3528, title = "The God Hakkar", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1435, x = 47.23, y = 54.36 },
					{ t = "turnin", quest = 1444, title = "Return to Fel'Zerul", npc = 1443, npcName = "Fel'zerul", map = 1435, x = 47.94, y = 54.79, f = "e" },
					{ t = "accept", quest = 1445, title = "The Temple of Atal'Hakkar", npc = 1443, npcName = "Fel'zerul", map = 1435, x = 47.94, y = 54.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1449, x = 45.72, y = 13.08 },
					{ t = "accept", quest = 4145, title = "Larion and Muigin", npc = 9118, npcName = "Larion", map = 1449, x = 45.53, y = 8.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4145, npc = 6510, target = "Bloodpetal Flayer", count = 5, oi = 3, map = 1449, x = 57.09, y = 16.45, f = "e" },
				},
			},
			{
				label = "Kill_Bloodpetal_Thresher",
				along = true,
				goals = {
					{ t = "kill", quest = 4145, npc = 6511, target = "Bloodpetal Thresher", count = 5, oi = 4, map = 1449, x = 56.59, y = 34.46, f = "e" },
				},
			},
			{
				label = "Kill_Bloodpetal_Lashers",
				along = true,
				goals = {
					{ t = "kill", quest = 4145, npc = 6509, target = "Bloodpetal Lasher", count = 5, oi = 1, map = 1449, x = 69.81, y = 29.8, f = "e" },
				},
			},
			{
				label = "Kill_Bloodpetal_Trappers",
				along = true,
				goals = {
					{ t = "kill", quest = 4145, npc = 6512, target = "Bloodpetal Trapper", count = 5, oi = 2, map = 1449, x = 39.85, y = 53.54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1449, x = 45.72, y = 13.08 },
					{ t = "turnin", quest = 4145, title = "Larion and Muigin", npc = 9118, npcName = "Larion", map = 1449, x = 45.53, y = 8.71, f = "e" },
					{ t = "accept", quest = 4147, title = "Marvon's Workshop", npc = 9118, npcName = "Larion", map = 1449, x = 45.53, y = 8.71, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1413, x = 62.52, y = 38.57 },
					{ t = "turnin", quest = 4147, title = "Marvon's Workshop", npc = 8496, npcName = "Liv Rizzlefix", map = 1413, x = 62.45, y = 38.73, f = "e" },
					{ t = "accept", quest = 4146, title = "Zapper Fuel", npc = 8496, npcName = "Liv Rizzlefix", map = 1413, x = 62.45, y = 38.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1435, x = 69.36, y = 56.89 },
					{ t = "goto", text = "Enter the building and swim under the water", map = 1435, x = 70.54, y = 49.78 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 72.69, y = 42.22 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 75.69, y = 45.78 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 78.62, y = 47.47 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 80.22, y = 49.62 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 81.33, y = 42.38 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 78.86, y = 40.74 },
					{ t = "goto", text = "Run down the ramp", map = 1435, x = 76.85, y = 38.82 },
					{ t = "complete", quest = 3528, title = "The God Hakkar", note = "Enter The Temple of Atal'Hakkar Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the dungeon follow the left path and then go down the stairs to reach the Hall of Serpents. Run around the outside ring and clear each of the small inside rooms. Click the serpent statues in the inside rooms in this order: South, north, southwest, southeast, northwest then finally the northeast altar. Atal'alarion will appear after clicking the statues in the correct order; jump down and kill him. At the top of the stairs in The Pit of Refuse.",
				goals = {
					{ t = "turnin", quest = 3446, title = "Into the Depths", npc = 8580, npcName = "Atal'alarion" },
					{ t = "accept", quest = 3447, title = "Secret of the Circle", npc = 8580, npcName = "Atal'alarion" },
				},
			},
			{
				note = "In the center of the room in The Pit of Refuse.",
				goals = {
					{ t = "turnin", quest = 3447, title = "Secret of the Circle" },
				},
			},
			{
				note = "Follow the path up and out of The Pit of Refuse. Follow the left path again and go up three large sets of stairs, immediately go right to follow a short hallway and reach the upper level of The Pit of Sacrifice. There should be an elite enemy named Hukku channeling a spell on this balcony; kill him and then go back down the short hallway, but turn right and continue up the stairs to the Hall of the Cursed. Proceed around this room, following each set of stairs up or down to find additional balconies with named enemies channeling a spell. There are a total of six named elites that need to be killed in order to remove that barrier blocking the way to Jammal'an the Prophet. After all six balconies have been cleared, drop down from the final balcony into The Pit of Sacrifice. Follow the southeast path to reach Jammal'an the Prophet.",
				goals = {
					{ t = "collect", quest = 1446, item = 6212, itemName = "Head of Jammal'an", oi = 1 },
				},
			},
			{
				note = "Return to the main central room in The Pit of Sacrifice and follow the southern path.",
				goals = {
					{ t = "collect", quest = 3373, item = 10454, itemName = "Essence of Eranikus" },
				},
			},
			{
				goals = {
					{ t = "use", item = 10454, itemName = "Essence of Eranikus" },
					{ t = "accept", quest = 3373, title = "The Essence of Eranikus" },
				},
			},
			{
				note = "It looks like a stone table in the northeastern corner of the room with the Shade of Eranikus.",
				goals = {
					{ t = "turnin", quest = 3373, title = "The Essence of Eranikus" },
				},
			},
			{
				note = "Use it next to the skeleton laying on the ground in the Sanctum of the Fallen God. Return to the main central room in The Pit of Sacrifice and follow the southwestern path to reach the Sanctum of the Fallen God. Use it to put out the braziers in each corner of the room. It will spawn after the four Eternal Flames have been extinguished.",
				goals = {
					{ t = "use", item = 10465, itemName = "Egg of Hakkar" },
					{ t = "collect", item = 10460, itemName = "Hakkari Blood" },
					{ t = "collect", quest = 3528, item = 10663, itemName = "Essence of Hakkar" },
				},
			},
			{
				goals = {
					{ t = "use", item = 10663, itemName = "Essence of Hakkar" },
					{ t = "complete", quest = 3528, title = "The God Hakkar", note = "Fill the Egg of Hakkar" },
				},
			},
			{
				label = "Collect_20_Fetish_of_Hakkar",
				along = true,
				note = "These can also drop outside of the instance.",
				goals = {
					{ t = "collect", quest = 1445, item = 6181, itemName = "Fetish of Hakkar", count = 20, oi = 1 },
				},
			},
			{
				label = "Collect_5_Atal'ai_Haze",
				along = true,
				note = "Murk Worms, Deep Lurkers and Saturated Oozes specifically drop the quest item.",
				goals = {
					{ t = "collect", quest = 4146, item = 11318, itemName = "Atal'ai Haze", count = 5, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3528, title = "The God Hakkar", note = "Click Here to Continue" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1435, x = 47.23, y = 54.36 },
					{ t = "turnin", quest = 1445, title = "The Temple of Atal'Hakkar", npc = 1443, npcName = "Fel'zerul", map = 1435, x = 47.94, y = 54.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1425, x = 35.78, y = 64.12 },
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 33.09, y = 73.8 },
					{ t = "goto", text = "Jump down here", map = 1425, x = 33.11, y = 75.53 },
					{ t = "turnin", quest = 1446, title = "Jammal'an the Prophet", npc = 5598, npcName = "Atal'ai Exile", map = 1425, x = 33.75, y = 75.22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3528, title = "The God Hakkar", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4146, title = "Zapper Fuel", npc = 9118, npcName = "Larion", map = 1449, x = 45.54, y = 8.71, f = "e" },
				},
			},
		},
	})
end

