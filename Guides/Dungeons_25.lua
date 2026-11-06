-- TuWoW_Leveling — Guides/Dungeons_25.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-blackrock-depths-quests",
		pack = "guides",
		title = "Blackrock Depths Quests (Parte 1/2)",
		category = "Dungeons",
		faction = "Horde",
		next = "zygor/dungeons/h-blackrock-depths-quests-part-2",
		author = "TuWoW & Zygor",
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 52 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1446, x = 66.99, y = 23.87 },
					{ t = "accept", quest = 4324, title = "Yuka Screwspigot", npc = 9706, npcName = "Yorba Screwspigot", map = 1446, x = 67.04, y = 24.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 52.81, y = 77.39 },
					{ t = "goto", text = "Follow the path down", map = 1458, x = 51.16, y = 80.26 },
					{ t = "accept", quest = 4133, title = "Vivian Lagrave", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 50.14, y = 67.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4133, title = "Vivian Lagrave", npc = 9078, npcName = "Shadowmage Vivian Lagrave", map = 1418, x = 2.89, y = 47.76, f = "e" },
					{ t = "accept", quest = 4134, title = "Lost Thunderbrew Recipe", npc = 9078, npcName = "Shadowmage Vivian Lagrave", map = 1418, x = 2.89, y = 47.76, f = "e" },
				},
			},
			{
				note = "He will sometimes go out on patrol. Do not click him until he stops near this spot or you might attack him. Wait for him to reapper in Kargath.",
				goals = {
					{ t = "accept", quest = 3906, title = "Disharmony of Flame", npc = 9084, npcName = "Thunderheart", map = 1418, x = 3.32, y = 48.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4081, title = "KILL ON SIGHT: Dark Iron Dwarves", map = 1418, x = 3.77, y = 47.47, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4061, title = "The Rise of the Machines", npc = 9079, npcName = "Hierophant Theodora Mulvadania", map = 1418, x = 3.03, y = 47.81, f = "e" },
				},
			},
			{
				goals = {
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
				note = "Only Tempered War Golems, Heavy War Golems, and Magma Elementals will drop the quest item.",
				goals = {
					{ t = "collect", quest = 3442, item = 10511, itemName = "Golem Oil", count = 4, oi = 2, map = 1427, x = 48.59, y = 38.32, f = "e" },
				},
			},
			{
				label = "Collect_Hearts_Of_Flame",
				along = true,
				note = "Heavy War Golems will not drop this quest item.",
				goals = {
					{ t = "collect", quest = 3442, item = 10509, itemName = "Heart of Flame", count = 4, oi = 1, map = 1427, x = 42.58, y = 38.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3442, title = "The Flawless Flame", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 38.99, f = "e" },
					{ t = "accept", quest = 3443, title = "Forging the Shaft", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.05, y = 38.99, f = "e" },
				},
			},
			{
				note = "Inside the cave, all throughout. You can also find some outside, near Thorium Point.",
				goals = {
					{ t = "goto", text = "Jump down here", map = 1427, x = 49.32, y = 43.74 },
					{ t = "goto", text = "Enter the cave", map = 1427, x = 49.58, y = 45.49 },
					{ t = "goto", text = "Cross the bridge", map = 1427, x = 47.78, y = 42.6 },
					{ t = "goto", text = "Follow the path", map = 1427, x = 42.02, y = 35.57 },
					{ t = "collect", quest = 3443, item = 10551, itemName = "Thorium Plated Dagger", count = 8, oi = 1, map = 1427, x = 43.38, y = 34.94, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1427, x = 50.59, y = 38.45 },
					{ t = "goto", text = "Continue following the path", map = 1427, x = 47.21, y = 42.94 },
					{ t = "goto", text = "Leave the cave", map = 1427, x = 47.53, y = 46.72 },
					{ t = "goto", text = "Jump down carefully here", map = 1427, x = 48.98, y = 46.87 },
					{ t = "goto", text = "Follow the path up", map = 1427, x = 58.08, y = 41.1 },
					{ t = "goto", text = "Follow the path", map = 1427, x = 65.38, y = 34.61 },
					{ t = "turnin", quest = 3443, title = "Forging the Shaft", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.06, y = 38.99, f = "e" },
					{ t = "accept", quest = 3452, title = "The Flame's Casing", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.06, y = 38.99, f = "e" },
				},
			},
			{
				note = "They are elite enemies, you will likely need help with this. Try to find someone to help you. Doing this quest unlocks more quests that give easy experience, so it's important to get it done. This has a low drop rate.",
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1427, x = 34.86, y = 25.83 },
					{ t = "goto", text = "Follow the path", map = 1427, x = 31.32, y = 33.57 },
					{ t = "collect", quest = 3452, item = 10552, itemName = "Symbol of Ragnaros", oi = 1, map = 1427, x = 24.62, y = 35.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1427, x = 26.48, y = 34.56 },
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
				note = "On the metal platform of the tower. You have to equip the Torch of Retribution. Remember to re-equip your normal weapon after.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1427, x = 33.7, y = 49.71 },
					{ t = "goto", text = "Run up the ramp", map = 1427, x = 33.5, y = 53.64 },
					{ t = "complete", quest = 3463, title = "Set Them Ablaze!", note = "Set the Northern Tower Ablaze", map = 1427, x = 33.31, y = 54.49, f = "e" },
				},
			},
			{
				note = "On the metal platform of the tower. You have to equip the Torch of Retribution. Remember to re-equip your normal weapon after.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1427, x = 35.92, y = 59.85 },
					{ t = "complete", quest = 3463, title = "Set Them Ablaze!", note = "Set the Western Tower Ablaze", map = 1427, x = 35.67, y = 60.68, f = "e" },
				},
			},
			{
				note = "On the metal platform of the tower. You have to equip the Torch of Retribution. Remember to re-equip your normal weapon after.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1427, x = 35.0, y = 72.13 },
					{ t = "goto", text = "Continue following the path", map = 1427, x = 43.33, y = 72.09 },
					{ t = "goto", text = "Run up the ramp", map = 1427, x = 44.1, y = 61.85 },
					{ t = "complete", quest = 3463, title = "Set Them Ablaze!", note = "Set the Southern Tower Ablaze", map = 1427, x = 44.03, y = 60.91, f = "e" },
				},
			},
			{
				note = "On the metal platform of the tower. You have to equip the Torch of Retribution. Remember to re-equip your normal weapon after.",
				goals = {
					{ t = "goto", text = "Cross the hanging bridge", map = 1427, x = 52.48, y = 57.95 },
					{ t = "goto", text = "Run up the ramp", map = 1427, x = 50.19, y = 55.61 },
					{ t = "complete", quest = 3463, title = "Set Them Ablaze!", note = "Set the Eastern Tower Ablaze", map = 1427, x = 50.06, y = 54.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1427, x = 67.99, y = 50.25 },
					{ t = "goto", text = "Continue following the path", map = 1427, x = 66.79, y = 34.56 },
					{ t = "turnin", quest = 3463, title = "Set Them Ablaze!", npc = 8509, npcName = "Squire Maltrake", map = 1427, x = 39.17, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3481, title = "Trinkets...", map = 1427, x = 38.86, y = 38.99, f = "e" },
				},
			},
			{
				note = "Save the Hoard of the Black Dragonflight for later.",
				goals = {
					{ t = "turnin", quest = 3481, title = "Trinkets...", map = 1427, x = 38.86, y = 38.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4061, item = 11266, itemName = "Fractured Elemental Shard", count = 10, oi = 1, map = 1428, x = 62.44, y = 40.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4123, title = "The Heart of the Mountain", npc = 9536, npcName = "Maxwort Uberglint", map = 1428, x = 65.15, y = 23.91, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1428, x = 65.65, y = 22.68 },
					{ t = "turnin", quest = 4324, title = "Yuka Screwspigot", npc = 9544, npcName = "Yuka Screwspigot", map = 1428, x = 66.06, y = 21.95, f = "e" },
					{ t = "accept", quest = 4136, title = "Ribbly Screwspigot", npc = 9544, npcName = "Yuka Screwspigot", map = 1428, x = 66.06, y = 21.95, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1428, x = 94.43, y = 31.86 },
					{ t = "accept", quest = 4022, title = "A Taste of Flame", npc = 9459, npcName = "Cyrus Therepentous", map = 1428, x = 95.07, y = 31.56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 10569, itemName = "Hoard of the Black Dragonflight" },
					{ t = "collect", quest = 4022, item = 10575, itemName = "Black Dragonflight Molt", oi = 1 },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "turnin", quest = 4022, title = "A Taste of Flame", npc = 9459, npcName = "Cyrus Therepentous", map = 1428, x = 95.07, y = 31.56, f = "e" },
					{ t = "accept", quest = 4024, title = "A Taste of Flame", npc = 9459, npcName = "Cyrus Therepentous", map = 1428, x = 95.07, y = 31.56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4061, title = "The Rise of the Machines", npc = 9079, npcName = "Hierophant Theodora Mulvadania", map = 1418, x = 3.03, y = 47.81, f = "e" },
					{ t = "accept", quest = 4062, title = "The Rise of the Machines", npc = 9079, npcName = "Hierophant Theodora Mulvadania", map = 1418, x = 3.03, y = 47.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4062, title = "The Rise of the Machines", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
					{ t = "accept", quest = 4063, title = "The Rise of the Machines", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
				},
			},
			{
				note = "You will need to be dead to talk to the next quest giver.",
				goals = {
					{ t = "goto", text = "Enter Blackrock Mountain", map = 1427, x = 34.8, y = 85.37 },
					{ t = "goto", text = "Jump into the lava", map = 1427, x = 34.62, y = 95.45 },
				},
			},
			{
				note = "You must be dead to talk to him.",
				goals = {
					{ t = "goto", text = "Enter Blackrock Mountain", map = 1427, x = 34.8, y = 85.37 },
					{ t = "goto", text = "Jump into the lava", map = 1427, x = 34.62, y = 95.45 },
					{ t = "goto", text = "Run up the chain", map = 1427, x = 33.53, y = 96.61 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 36.06, y = 98.76 },
					{ t = "accept", quest = 3801, title = "Dark Iron Legacy", npc = 8888, npcName = "Franclorn Forgewright", map = 1427, x = 35.5, y = 10.0, f = "e" },
				},
			},
			{
				note = "You must be dead to talk to him.",
				goals = {
					{ t = "turnin", quest = 3801, title = "Dark Iron Legacy", npc = 8888, npcName = "Franclorn Forgewright", map = 1427, x = 35.5, y = 10.0, f = "e" },
					{ t = "accept", quest = 3802, title = "Dark Iron Legacy", npc = 8888, npcName = "Franclorn Forgewright", map = 1427, x = 35.5, y = 10.0, f = "e" },
				},
			},
			{
				note = "He patrols around this area. You may need help with this.",
				goals = {
					{ t = "goto", text = "Run down the chain", map = 1427, x = 34.3, y = 98.02 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 32.54, y = 94.96 },
					{ t = "kill", quest = 3906, npc = 9026, target = "Overmaster Pyron", oi = 1, map = 1427, x = 26.36, y = 77.69, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 4123, title = "The Heart of the Mountain", note = "Enter the Blackrock Depths Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the dungeon, proceed east through the Detention Block and then turn left after reaching the Halls of the Law to start the Ring of the Law event. Complete the event and then exit through the west gate to enter the Eastern Garrison, immediately take a sharp right and go up the stairs to reach the upper level of the arena. Follow the path around the arena and go down the ramp on the other side, go left and across the bridge to The Domicile. Continue down the ramps in The Domicile to enter Shadowforge City, take the second door on the right to enter the Hall of Crafting. Fight down to the lower level of the Hall of Crafting. Fineous walks around this area.",
				goals = {
					{ t = "collect", quest = 3802, item = 10999, itemName = "Ironfel", oi = 1 },
				},
			},
			{
				note = "Retrace your steps back through the Hall of Crafting, Shadowforge City and The Domicile to cross the bridge and reach the Shrine of Thaurissan. Continue straight until you reach the deadend with the Monument of Franclorn Forgewright sitting against the far wall.",
				goals = {
					{ t = "turnin", quest = 3802, title = "Dark Iron Legacy" },
				},
			},
			{
				note = "Turn around and cross the bridge in Shadowforge City to once again reach The Domicile. Follow the same path as before to reach the Hall of Crafting where you killed Fineous Darkvire. Continue down through the Hall of Crafting's lower level to reach the boss Lord Incendius. Defeat him and keep going to reach the Dark Iron Highway. Bael'Gar is at the very end of the Dark Iron Highway. Use it on Bael'Gars corpse.",
				goals = {
					{ t = "use", item = 11231, itemName = "Altered Black Dragonflight Molt" },
					{ t = "collect", quest = 4024, item = 11230, itemName = "Encased Fiery Essence", oi = 1 },
				},
			},
			{
				note = "Run back down the Dark Iron Highway, take the first right and unlock the gate on your left. Unlock the first door on your left to enter East Garrison. In the lower part of this room, click the Shadowforge Lock, then run up the two sets of stairs and follow the hallway on the left just before the third set of stairs. Follow the path through the hallway to reach the West Garrison, then go right and down the ramp to reach The Manufactory and Golem Lord Argelmach.",
				goals = {
					{ t = "collect", quest = 4063, item = 11268, itemName = "Head of Argelmach", oi = 1 },
				},
			},
			{
				note = "Turn around to leave The Manufactory, but go left instead and follow the path to reach The Grim Guzzler. She walks around the Grim Guzzler.",
				goals = {
					{ t = "accept", quest = 4201, title = "The Love Potion", npc = 9500, npcName = "Mistress Nagmara" },
				},
			},
			{
				note = "He's at the bottom level of the Grim Guzzler.",
				goals = {
					{ t = "collect", quest = 4136, item = 11313, itemName = "Ribbly's Head", oi = 1 },
				},
			},
			{
				note = "They look like wooden kegs sitting in a side room in the lower section of The Grim Guzzler. Destroy all three kegs to spawn Hurley Blackbreath.",
				goals = {
					{ t = "collect", quest = 4134, item = 11312, itemName = "Lost Thunderbrew Recipe", oi = 1 },
				},
			},
			{
				label = "Collect_10_Intact_Elemental_Core",
				along = true,
				note = "Specifically, Golem and Construct enemies throughout the dungeon.",
				goals = {
					{ t = "collect", quest = 4063, item = 11269, itemName = "Intact Elemental Core", count = 10, oi = 2 },
				},
			},
			{
				label = "Collect_Dark_Keeper_Key",
				along = true,
				goals = {
					{ t = "collect", quest = 4123, item = 11078, itemName = "Relic Coffer Key", count = 12 },
				},
			},
			{
				label = "Kill_15_Anvilrage_Guardsman",
				along = true,
				goals = {
					{ t = "kill", quest = 4081, npc = 8891, target = "Anvilrage Guardsman", count = 15, oi = 1 },
				},
			},
			{
				label = "Kill_10_Anvilrage_Warden",
				along = true,
				goals = {
					{ t = "kill", quest = 4081, npc = 8890, target = "Anvilrage Warden", count = 10, oi = 2, map = 1427, x = 26.9, y = 86.8, f = "e" },
				},
			},
			{
				label = "Kill_5_Anvilrage_Footman",
				along = true,
				goals = {
					{ t = "kill", quest = 4081, npc = 8892, target = "Anvilrage Footman", count = 5, oi = 3 },
				},
			},
			{
				note = "Open all 12 of them inside of the Black Vault after clearing the room. Proceed back through The Domicile to reach the Shadowforge City, then take the first door on the right to enter The Black Vault. He will spawn once all 12 Relic Coffer Doors have been opened. It looks like a small red crystal sitting on a purple pillow against the wall underneath the Dark Coffer.",
				goals = {
					{ t = "collect", quest = 4123, item = 11309, itemName = "The Heart of the Mountain", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 4123, title = "The Heart of the Mountain", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4123, title = "The Heart of the Mountain", npc = 9536, npcName = "Maxwort Uberglint", map = 1428, x = 65.15, y = 23.91, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1428, x = 65.65, y = 22.68 },
					{ t = "turnin", quest = 4136, title = "Ribbly Screwspigot", npc = 9544, npcName = "Yuka Screwspigot", map = 1428, x = 66.06, y = 21.95, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1428, x = 94.43, y = 31.86 },
					{ t = "turnin", quest = 4024, title = "A Taste of Flame", npc = 9459, npcName = "Cyrus Therepentous", map = 1428, x = 95.07, y = 31.56, f = "e" },
				},
			},
			{
				note = "These are gathered with the Herbalism Profession. Load the \"Gromsblood Farming Guide\" to accomplish this. You can also buy these from the Auction House.",
				goals = {
					{ t = "collect", quest = 4201, item = 8846, itemName = "Gromsblood", count = 4, oi = 1 },
				},
			},
			{
				note = "These are elite. You may need help with this.",
				goals = {
					{ t = "collect", quest = 4201, item = 11405, itemName = "Giant Silver Vein", count = 10, oi = 2, map = 1447, x = 44.81, y = 85.43, f = "e" },
				},
			},
			{
				note = "You must be in the water.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1449, x = 31.19, y = 51.48 },
					{ t = "use", item = 11412, itemName = "Nagmara's Vial" },
					{ t = "collect", quest = 4201, item = 11413, itemName = "Nagmara's Filled Vial", oi = 3, map = 1449, x = 31.99, y = 50.01, f = "e" },
				},
			},
			{
				note = "He will sometimes go out on patrol. Do not click him until he stops near this spot or you might attack him. Wait for him to reapper in Kargath.",
				goals = {
					{ t = "turnin", quest = 3906, title = "Disharmony of Flame", npc = 9084, npcName = "Thunderheart", map = 1418, x = 3.32, y = 48.27, f = "e" },
					{ t = "accept", quest = 3907, title = "Disharmony of Fire", npc = 9084, npcName = "Thunderheart", map = 1418, x = 3.32, y = 48.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4134, title = "Lost Thunderbrew Recipe", npc = 9078, npcName = "Shadowmage Vivian Lagrave", map = 1418, x = 2.89, y = 47.76, f = "e" },
				},
			},
			{
				note = "At the top of the tower.",
				goals = {
					{ t = "turnin", quest = 4081, title = "KILL ON SIGHT: Dark Iron Dwarves", npc = 9077, npcName = "Warlord Goretooth", map = 1418, x = 5.83, y = 47.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4082, title = "KILL ON SIGHT: High Ranking Dark Iron Officials", map = 1418, x = 3.97, y = 46.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4063, title = "The Rise of the Machines", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Continue down and run down the chain", map = 1418, x = 34.86, y = 99.2 },
					{ t = "goto", text = "Enter the building", map = 1418, x = 32.55, y = 94.94 },
					{ t = "goto", text = "Follow the path", map = 1418, x = 26.88, y = 83.87 },
					{ t = "complete", quest = 4082, title = "KILL ON SIGHT: High Ranking Dark Iron Officials", note = "Enter the Blackrock Depths Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the dungeon, go left through the Shadowforge Gate and head north to reach the Dark Iron Highway. Continue east through the Dark Iron Highway to reach the Shadowforge City and Lord Incendius.",
				goals = {
					{ t = "kill", quest = 3907, npc = 9017, target = "Lord Incendius", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3907, item = 11126, itemName = "Tablet of Kurniya", oi = 2 },
				},
			},
			{
				note = "She walks around The Grim Guzzler. Go back through the Dark Iron Highway and go left to enter the Detention Block. Go through the Shadowforge Gate and then through the East Garrison Door. In the lower part of this room, click the Shadowforge Lock, then run up the two sets of stairs and follow the hallway on the left just before the third set of stairs. Follow the path through the hallway to reach the West Garrison, then go right and down the ramp to reach The Manufactory. Take another right and follow the path to reach The Grim Guzzler.",
				goals = {
					{ t = "turnin", quest = 4201, title = "The Love Potion", npc = 9500, npcName = "Mistress Nagmara" },
				},
			},
			{
				label = "Kill_10_Anvilrage_Medic",
				along = true,
				goals = {
					{ t = "kill", quest = 4082, npc = 8894, target = "Anvilrage Medic", count = 10, oi = 1 },
				},
			},
			{
				label = "Kill_10_Anvilrage_Soldier",
				along = true,
				goals = {
					{ t = "kill", quest = 4082, npc = 8893, target = "Anvilrage Soldier", count = 10, oi = 2 },
				},
			},
			{
				label = "Kill_10_Anvilrage_Officer",
				along = true,
				goals = {
					{ t = "kill", quest = 4082, npc = 8895, target = "Anvilrage Officer", count = 10, oi = 3 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 4082, title = "KILL ON SIGHT: High Ranking Dark Iron Officials", note = "Click Here to Continue" },
				},
			},
			{
				note = "He will sometimes go out on patrol. Do not click him until he stops near this spot or you might attack him. Wait for him to reapper in Kargath.",
				goals = {
					{ t = "turnin", quest = 3907, title = "Disharmony of Fire", npc = 9084, npcName = "Thunderheart", map = 1418, x = 3.33, y = 48.28, f = "e" },
				},
			},
			{
				note = "At the top of the tower.",
				goals = {
					{ t = "accept", quest = 3981, title = "Commander Gor'shak", npc = 9081, npcName = "Galamav the Marksman", map = 1418, x = 5.95, y = 47.75, f = "e" },
				},
			},
			{
				note = "At the top of the tower.",
				goals = {
					{ t = "turnin", quest = 4082, title = "KILL ON SIGHT: High Ranking Dark Iron Officials", npc = 9077, npcName = "Warlord Goretooth", map = 1418, x = 5.83, y = 47.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run down the chain", map = 1427, x = 37.25, y = 94.39 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 35.91, y = 10.0 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Continue down and run down the chain", map = 1427, x = 34.86, y = 99.2 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 32.55, y = 94.94 },
					{ t = "goto", text = "Follow the path", map = 1427, x = 26.88, y = 83.87 },
				},
			},
			{
				note = "After entering the dungeon, go straight into the Detention Block and then take the first right. Follow this path around until you can go left into a room at the back of this long hallway.",
				goals = {
					{ t = "collect", quest = 3981, item = 11140, itemName = "Prison Cell Key" },
				},
			},
			{
				note = "Leave the room with High Interrogator Gerstahn and continue left through the tunnel. While in the tunnel, open the first interactable Cell Door on the left. Clear the enemies around the cell before accepting this quest.",
				goals = {
					{ t = "turnin", quest = 3981, title = "Commander Gor'shak", npc = 9020, npcName = "Commander Gor'shak" },
					{ t = "accept", quest = 3982, title = "What Is Going On?", npc = 9020, npcName = "Commander Gor'shak" },
				},
			},
			{
				note = "There will be two waves of enemies. Make sure Commander Gor'shak doesn't die.",
				goals = {
					{ t = "complete", quest = 3982, title = "What Is Going On?", note = "Survive the Onslaught" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3982, title = "What Is Going On?", npc = 9020, npcName = "Commander Gor'shak" },
					{ t = "accept", quest = 4001, title = "What Is Going On?", npc = 9020, npcName = "Commander Gor'shak" },
				},
			},
			{
				note = "Exit the cell and cross the hallway. Open the first cell door on the left.",
				goals = {
					{ t = "complete", quest = 4001, title = "What Is Going On?", note = "Gather Information from Kharan" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-blackrock-depths-quests-part-2",
		pack = "guides",
		title = "Blackrock Depths Quests (Parte 2/2)",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1446,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "complete", quest = 4001, title = "What Is Going On?", note = "Click Here to Continue" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.09, y = 36.93 },
					{ t = "turnin", quest = 4001, title = "What Is Going On?", npc = 4949, npcName = "Thrall", map = 1454, x = 31.77, y = 37.82, f = "e" },
					{ t = "accept", quest = 4002, title = "The Eastern Kingdom", npc = 4949, npcName = "Thrall", map = 1454, x = 31.77, y = 37.82, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4002, title = "The Eastern Kingdom", npc = 4949, npcName = "Thrall", map = 1454, x = 31.77, y = 37.82, f = "e" },
					{ t = "accept", quest = 4003, title = "The Royal Rescue", npc = 4949, npcName = "Thrall", map = 1454, x = 31.77, y = 37.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run down the chain", map = 1427, x = 37.25, y = 94.39 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 35.91, y = 10.0 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Continue down and run down the chain", map = 1427, x = 34.86, y = 99.2 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 32.55, y = 94.94 },
					{ t = "goto", text = "Follow the path", map = 1427, x = 26.88, y = 83.87 },
				},
			},
			{
				note = "Don't kill Princess Moira Bronzebeard during the encounter. Interrupt her heals otherwise the encounter will be complicated. You will not be able to turn in the quest if you kill her. After entering the dungeon, go left through the two Shadowforge Gates and then through the East Garrison Door. In the lower part of this room, click the Shadowforge Lock, then run up the two sets of stairs and follow the hallway on the left just before the third set of stairs. Follow the path through the hallway to reach the West Garrison, then go right and down the ramp to reach The Manufactory. Take another right and follow the path to reach The Grim Guzzler. Buy Dark Iron Ale from Plugger Spazzring and give it to Private Rocknot to get through The Grim Guzzler. Leave The Grim Guzzler through the northeast door that is now open, go through the door on your first left and down the ramps. Go left again through the Chamber of Enchantment and north through the Mold Foundry. Continue through the Summoners' Tomb to reach The Lyceum. Kill the Shadowforge Flame Keepers in the center of the room and use the Shadowforge Torches that they drop to light the Shadowforge Braziers in the east side of the room in order to proceed. Proceed east through The Iron Hall, defeat Magmus and then finally enter The Imperial Seat.",
				goals = {
					{ t = "complete", quest = 4003, title = "The Royal Rescue", note = "Slay Emperor Dagran Thaurissan" },
				},
			},
			{
				note = "She is in the room where Emperor Dagran Thaurissan was.",
				goals = {
					{ t = "turnin", quest = 4003, title = "The Royal Rescue", npc = 8929, npcName = "Princess Moira Bronzebeard" },
					{ t = "accept", quest = 4004, title = "The Princess Saved?", npc = 8929, npcName = "Princess Moira Bronzebeard" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 4004, title = "The Princess Saved?", note = "Click Here to Continue" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.09, y = 36.93 },
					{ t = "turnin", quest = 4004, title = "The Princess Saved?", npc = 4949, npcName = "Thrall", map = 1454, x = 31.77, y = 37.82, f = "e" },
				},
			},
		},
	})
end

