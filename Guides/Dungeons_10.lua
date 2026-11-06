-- TuWoW_Leveling — Guides/Dungeons_10.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-zulfarrak-quests",
		pack = "guides",
		title = "Zul'Farrak Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1425,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1425, x = 11.0, y = 45.68 },
					{ t = "accept", quest = 2988, title = "Witherbark Cages", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.76, y = 44.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2988, title = "Witherbark Cages", note = "Check the First Cage", map = 1425, x = 23.28, y = 58.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2988, title = "Witherbark Cages", note = "Check the Second Cage", map = 1425, x = 23.13, y = 58.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1425, x = 30.53, y = 53.53 },
					{ t = "goto", text = "Follow the path", map = 1425, x = 32.4, y = 57.21 },
					{ t = "complete", quest = 2988, title = "Witherbark Cages", note = "Check the Third Cage", map = 1425, x = 31.99, y = 57.38, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1425, x = 12.91, y = 48.27 },
					{ t = "goto", text = "Enter the building at the top of the path", map = 1425, x = 11.0, y = 45.67 },
					{ t = "turnin", quest = 2988, title = "Witherbark Cages", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.76, y = 44.47, f = "e" },
					{ t = "accept", quest = 2989, title = "The Altar of Zul", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.76, y = 44.47, f = "e" },
				},
			},
			{
				note = "There are elite enemies at the top of the temple. Complete the quest goal and immediately run away to safety.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 47.75, y = 66.74 },
					{ t = "complete", quest = 2989, title = "The Altar of Zul", note = "Search the Altar of Zul", map = 1425, x = 48.85, y = 68.45, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1425, x = 12.85, y = 48.25 },
					{ t = "goto", text = "Enter the building at the top of the path", map = 1425, x = 11.0, y = 45.67 },
					{ t = "turnin", quest = 2989, title = "The Altar of Zul", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.76, y = 44.48, f = "e" },
					{ t = "accept", quest = 2990, title = "Thadius Grimshade", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.76, y = 44.48, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building, at the top.",
				goals = {
					{ t = "turnin", quest = 2990, title = "Thadius Grimshade", npc = 8022, npcName = "Thadius Grimshade", map = 1419, x = 66.9, y = 19.47, f = "e" },
					{ t = "accept", quest = 2991, title = "Nekrum's Medallion", npc = 8022, npcName = "Thadius Grimshade", map = 1419, x = 66.9, y = 19.47, f = "e" },
				},
			},
			{
				note = "At the top of the Altar of Zul. You may need help with this.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 47.74, y = 66.6 },
					{ t = "collect", quest = 2770, item = 9241, itemName = "Sacred Mallet", map = 1425, x = 48.66, y = 68.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 66.67, y = 66.75 },
					{ t = "goto", text = "Continue up the stairs", map = 1425, x = 67.91, y = 69.04 },
					{ t = "goto", text = "Follow the path", map = 1425, x = 67.78, y = 70.69 },
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 65.07, y = 68.93 },
					{ t = "goto", text = "Follow the path", map = 1425, x = 63.77, y = 70.68 },
					{ t = "goto", text = "Continue following the path", map = 1425, x = 65.39, y = 72.99 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 67.16, y = 73.31 },
					{ t = "goto", text = "Follow the path", map = 1425, x = 64.54, y = 74.99 },
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 62.17, y = 71.38 },
					{ t = "goto", text = "Continue up the stairs", map = 1425, x = 59.92, y = 70.16 },
					{ t = "goto", text = "Follow the path", map = 1425, x = 59.16, y = 74.13 },
				},
			},
			{
				goals = {
					{ t = "use", item = 9241, itemName = "Sacred Mallet" },
					{ t = "collect", quest = 2770, item = 9240, itemName = "Mallet of Zul'Farrak", map = 1425, x = 59.64, y = 77.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1445, x = 45.88, y = 57.22 },
					{ t = "accept", quest = 2846, title = "Tiara of the Deep", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2770, title = "Gahz'rilla", npc = 4453, npcName = "Wizzle Brassbolts", map = 1441, x = 78.14, y = 77.11, f = "e" },
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
					{ t = "complete", quest = 3520, title = "Screecher Spirits", note = "collect 3 Screecher Spirits", map = 1444, x = 58.31, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3520, title = "Screecher Spirits", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
					{ t = "accept", quest = 3527, title = "The Prophecy of Mosh'aru", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2768, title = "Divino-matic Rod", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2865, title = "Scarab Shells", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3042, title = "Troll Temper", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2991, title = "Nekrum's Medallion", note = "Enter the Zul'Farrak Dungeon with Your Group" },
				},
			},
			{
				note = "He is the second boss of the dungeon. Follow the path north and then go right when the path splits. Quickly go left afterwards and then north.",
				goals = {
					{ t = "collect", quest = 3527, item = 10660, itemName = "First Mosh'aru Tablet", oi = 1 },
				},
			},
			{
				note = "Continue following the path west and run up the stairs to reach the top of the large pyramid. Kill the Sandfury Executioner and then open the cages to start the event. He will be killable after you release them from captivity and clear the temple event.",
				goals = {
					{ t = "collect", quest = 2991, item = 9471, itemName = "Nekrum's Medallion", oi = 1 },
				},
			},
			{
				label = "Collect_Divino-matic_Rod",
				along = true,
				note = "He will be killable after you release them from captivity and clear the temple event.",
				goals = {
					{ t = "collect", quest = 2768, item = 8548, itemName = "Divino-matic Rod", oi = 1 },
				},
			},
			{
				note = "Follow the path southeast to reach the large room with a pool in the center. She walks around this area.",
				goals = {
					{ t = "collect", quest = 2846, item = 9234, itemName = "Tiara of the Deep", oi = 1 },
					{ t = "collect", quest = 3527, item = 10661, itemName = "Second Mosh'aru Tablet", oi = 2 },
				},
			},
			{
				note = "Clear the room. Use it near the gong atop the pool of water.",
				goals = {
					{ t = "use", item = 9240, itemName = "Mallet of Zul'Farrak" },
					{ t = "collect", quest = 2770, item = 8707, itemName = "Gahz'rilla's Electrified Scale", oi = 1 },
				},
			},
			{
				label = "Collect_5_Uncracked_Scarab_Shell",
				along = true,
				note = "They are found all around the instance, but mostly in the scarab room with Theka the Martyr.",
				goals = {
					{ t = "collect", quest = 2865, item = 9238, itemName = "Uncracked Scarab Shell", count = 5, oi = 1 },
				},
			},
			{
				label = "Collect_20_Troll_Temper",
				along = true,
				note = "These drop from troll enemies inside of Zul'Farrak. It will likely take multiple runs to complete.",
				goals = {
					{ t = "collect", quest = 3042, item = 9523, itemName = "Troll Temper", count = 20, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2991, title = "Nekrum's Medallion", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3527, title = "The Prophecy of Mosh'aru", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2768, title = "Divino-matic Rod", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2865, title = "Scarab Shells", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3042, title = "Troll Temper", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2770, title = "Gahz'rilla", npc = 4453, npcName = "Wizzle Brassbolts", map = 1441, x = 78.14, y = 77.11, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1445, x = 45.88, y = 57.22 },
					{ t = "turnin", quest = 2846, title = "Tiara of the Deep", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building, at the top.",
				goals = {
					{ t = "turnin", quest = 2991, title = "Nekrum's Medallion", npc = 8022, npcName = "Thadius Grimshade", map = 1419, x = 66.9, y = 19.47, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-maraudon-quests",
		pack = "guides",
		title = "Maraudon Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1445,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 45 },
				},
			},
			{
				note = "At the top of the tower.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1445, x = 65.73, y = 48.61 },
					{ t = "accept", quest = 7070, title = "Shadowshard Fragments", npc = 4967, npcName = "Archmage Tervosh", map = 1445, x = 66.42, y = 49.26, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 7041, title = "Vyletongue Corruption", npc = 11715, npcName = "Talendria", map = 1443, x = 68.5, y = 8.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1443, x = 64.66, y = 9.23 },
					{ t = "accept", quest = 7065, title = "Corruption of Earth and Seed", npc = 13698, npcName = "Keeper Marandis", map = 1443, x = 63.82, y = 10.66, f = "e" },
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
					{ t = "goto", text = "Enter the building", map = 1443, x = 38.43, y = 57.98 },
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
					{ t = "collect", quest = 7070, item = 17756, itemName = "Shadowshard Fragment", count = 10, oi = 1, map = 1443, x = 28.32, y = 54.47, f = "e" },
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
					{ t = "collect", quest = 7041, item = 17696, itemName = "Filled Cerulean Vial", oi = 2, map = 1443, x = 38.92, y = 58.36, f = "e" },
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
					{ t = "complete", quest = 7041, title = "Vyletongue Corruption", note = "Heal 8 Vylestem Vines" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 7067, title = "The Pariah's Instructions", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 7067, title = "The Pariah's Instructions", note = "Continue following the path", map = 1443, x = 29.61, y = 64.71, f = "e" },
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
					{ t = "kill", quest = 7065, npc = 12201, target = "Princess Theradras", oi = 1 },
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
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 7041, title = "Vyletongue Corruption", npc = 11715, npcName = "Talendria", map = 1443, x = 68.5, y = 8.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1443, x = 64.66, y = 9.23 },
					{ t = "turnin", quest = 7065, title = "Corruption of Earth and Seed", npc = 13698, npcName = "Keeper Marandis", map = 1443, x = 63.82, y = 10.66, f = "e" },
				},
			},
			{
				note = "At the top of the tower.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1445, x = 65.73, y = 48.61 },
					{ t = "turnin", quest = 7070, title = "Shadowshard Fragments", npc = 4967, npcName = "Archmage Tervosh", map = 1445, x = 66.42, y = 49.26, f = "e" },
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

