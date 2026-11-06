-- TuWoW_Leveling — Guides/Dungeons_07.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-upper-blackrock-spire-55-60",
		pack = "guides",
		title = "Upper Blackrock Spire",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 55,
		maxLevel = 60,
		zone = 1427,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
				},
			},
			{
				note = "This will start the fight. The Tank should keep him away from the group. Melee will need extra heals during the encounter from its AoE attacks.",
				goals = {
					{ t = "talk", npc = 9816, npcName = "Pyroguard Emberseer" },
				},
			},
			{
				note = "Clear all dragon spawn before starting the event. Click on father flame and take the item to start the event. DPS need to focus down \"Rookery Hatchers\" as quickly as possible. AoE down whelps that spawn meanwhile. Tanks pick up \"Rookery Guardians\" as soon as they appear. Tanks should have their backs to the wall for these. After a bit, Solakar will spawn, who will also need to be tanked with against the wall. Finish off the whelps before switching DPS to Solakar. Hug the wall after to avoid spawning additional whelps.",
				goals = {
					{ t = "talk", npc = 10264, npcName = "Solakar Flamewreath" },
				},
			},
			{
				note = "This is a rare mob that may not be available. The tank should have their back to the wall. All ranged should be at max distance as well.",
				goals = {
					{ t = "talk", npc = 10509, npcName = "Jed Runewatcher" },
				},
			},
			{
				note = "The tank should have their back to the wall. All ranged should be at max distance as well.",
				goals = {
					{ t = "talk", npc = 10899, npcName = "Goraluk Anvilcrack" },
				},
			},
			{
				note = "They will spawn after clearing the gauntlet of orcs and dragon spawn. Focus on Flame Tongues, Dragonguard, Dragon Spawn, Chromatic Dragonspawn, Chromatic Whelps then Blackhand Orcs in that order. When Gyth appears, the tank should face it away from the group. At 20%, Rend will join the fight. The Offtank should immediately grab Rend. Finish off Gyth before switching to Warchief Rend Blackhand. Melee move out of range when he casts the \"Whirlwind\" ability.",
				goals = {
					{ t = "talk", npc = 10339, npcName = "Gyth" },
				},
			},
			{
				note = "It's \"Berserker Charge\" ability targets the player with the most aggro. The tanks must ensure that they have the highest aggro at all times. All ranged should stand at max range to avoid its \"Fear\" ability. The final ability will be \"Flamebreak\". It will knockback anyone near it, so the tanks should fight The Beast with their back to the wall.",
				goals = {
					{ t = "talk", npc = 10430, npcName = "The Beast" },
				},
			},
			{
				note = "To start, if you have a hunter, you can have them kite General Drakkisath into The Beasts room and feign death while the group burns down the \"Chromatic Elite Guards\". You can also tank all 3 where they stand, AoEing down the Elite Guards as quickly as possible. Melee should stand behind Drakkisath at all times. The Tank should have their back to the wall.",
				goals = {
					{ t = "talk", npc = 10363, npcName = "General Drakkisath" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-wailing-caverns-quests",
		pack = "guides",
		title = "Wailing Caverns Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1413,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 15 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 865, title = "Raptor Horns", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
				},
			},
			{
				note = "They look like purple raptors.",
				goals = {
					{ t = "collect", quest = 865, item = 5055, itemName = "Intact Raptor Horn", count = 5, oi = 1, map = 1413, x = 43.36, y = 15.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 865, title = "Raptor Horns", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
					{ t = "accept", quest = 1491, title = "Smart Drinks", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 959, title = "Trouble at the Docks", npc = 3665, npcName = "Crane Operator Bigglefuzz", map = 1413, x = 63.09, y = 37.61, f = "e" },
				},
			},
			{
				note = "Aim for the stone.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 50.32, y = 35.44 },
					{ t = "goto", text = "Continue up the path", map = 1413, x = 49.17, y = 34.09 },
					{ t = "goto", text = "Follow the path", map = 1413, x = 48.09, y = 32.95 },
					{ t = "goto", text = "Follow the path down", map = 1413, x = 47.28, y = 33.56 },
					{ t = "goto", text = "Jump down here", map = 1413, x = 45.86, y = 35.86 },
					{ t = "goto", text = "Jump down carefully here", map = 1413, x = 45.77, y = 36.16 },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1413, x = 45.85, y = 35.95 },
					{ t = "accept", quest = 1486, title = "Deviate Hides", npc = 5767, npcName = "Nalpak", map = 1413, x = 45.98, y = 35.66, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "accept", quest = 1487, title = "Deviate Eradication", npc = 5768, npcName = "Ebru", map = 1413, x = 46.01, y = 35.74, f = "e" },
				},
			},
			{
				note = "He is stealthed inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1413, x = 45.97, y = 36.33 },
					{ t = "goto", text = "Follow the path", map = 1413, x = 45.91, y = 35.62 },
					{ t = "goto", text = "Continue follow the path", map = 1413, x = 46.26, y = 34.98 },
					{ t = "goto", text = "Follow the path", map = 1413, x = 45.94, y = 34.24 },
					{ t = "collect", quest = 959, item = 5334, itemName = "99-Year-Old Port", oi = 1, map = 1413, x = 45.69, y = 33.6, f = "e" },
				},
			},
			{
				note = "She is the first boss of the dungeon. She can spawn at several locations in the Screaming Gully.",
				goals = {
					{ t = "talk", npc = 3671, npcName = "Lady Anacondra" },
				},
			},
			{
				note = "He is the second boss of the dungeon. Follow the water path west from the Screaming Gully into the Pit of Fangs. Follow the path up and around through the Pit of Fangs.",
				goals = {
					{ t = "talk", npc = 3669, npcName = "Lord Cobrahn" },
				},
			},
			{
				note = "He is the third boss of the dungeon. Leave the Pit of Fangs and reenter the Screaming Gully. Follow the water path east to briefly enter The Wailing Caverns and then the Crag of the Everliving. Continue through the Crag of the Everliving to reach the Winding Chasm. Immediately after reaching the Winding Chasm, follow the right path northeast through the small pool of water. He is back in the northern part of the Winding Chasm.",
				goals = {
					{ t = "talk", npc = 3670, npcName = "Lord Pythas" },
				},
			},
			{
				note = "After killing Lord Pythas in the Winding Chasm, head southeast to enter The Wailing Caverns. Continue south a short distance and head left after reaching an area with lots of small white candles on the ground and a Druid of the Fang. You will now be back in the Winding Chasm, continue straight southeast through this cave section, passing a pool of water on your left. You will reach a fenced off area with two Druid of the Fang guards and an optional boss, Skum. Follow the path to the right of the fence and continue going southwest to reach the Crag of the Everliving. Carefully jump across the gap by the small waterfall and continue along this upper path to reach Lord Serpentis.",
				goals = {
					{ t = "talk", npc = 3673, npcName = "Lord Serpentis" },
				},
			},
			{
				label = "Collect_6_Wailing_Essence",
				along = true,
				note = "They are found throughout the dungeon.",
				goals = {
					{ t = "collect", quest = 1491, item = 6464, itemName = "Wailing Essence", count = 6, oi = 1 },
				},
			},
			{
				label = "Collect_20_Deviate_Hide",
				along = true,
				note = "They are found throughout the dungeon.",
				goals = {
					{ t = "collect", quest = 1486, item = 6443, itemName = "Deviate Hide", count = 20, oi = 1 },
				},
			},
			{
				label = "Slay_7_Deviate_Ravager",
				along = true,
				note = "They are found in the Screaming Gully.",
				goals = {
					{ t = "kill", quest = 1487, npc = 3636, target = "Deviate Ravager", count = 7, oi = 1 },
				},
			},
			{
				label = "Slay_7_Deviate_Viper",
				along = true,
				note = "They are found in the Pit of Fangs.",
				goals = {
					{ t = "kill", quest = 1487, npc = 5755, target = "Deviate Viper", count = 7, oi = 2 },
				},
			},
			{
				label = "Slay_7_Deviate_Shambler",
				along = true,
				note = "They are found in the Crag of the Everliving.",
				goals = {
					{ t = "kill", quest = 1487, npc = 5761, target = "Deviate Shambler", count = 7, oi = 3 },
				},
			},
			{
				label = "Slay_7_Deviate_Dreadfang",
				along = true,
				note = "They are found in the Winding Chasm.",
				goals = {
					{ t = "kill", quest = 1487, npc = 5056, target = "Deviate Dreadfang", count = 7, oi = 4 },
				},
			},
			{
				note = "He is standing at the dungeon entrance. This will only be an available option once the previous bosses have been killed. Kill the enemies that spawn and attack and don't let him die. This will be easier if the Screaming Gully is already cleared of enemies. He will spawn at Dreamer's Rock, after several waves of enemies.",
				goals = {
					{ t = "collect", item = 10441, itemName = "Glowing Shard" },
					{ t = "use", item = 10441, itemName = "Glowing Shard" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1413, x = 45.85, y = 35.95 },
					{ t = "turnin", quest = 1486, title = "Deviate Hides", npc = 5767, npcName = "Nalpak", map = 1413, x = 45.98, y = 35.66, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "turnin", quest = 1487, title = "Deviate Eradication", npc = 5768, npcName = "Ebru", map = 1413, x = 46.01, y = 35.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1491, title = "Smart Drinks", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 959, title = "Trouble at the Docks", npc = 3665, npcName = "Crane Operator Bigglefuzz", map = 1413, x = 63.09, y = 37.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6981, title = "The Glowing Shard", note = "Speak with Someone in Ratchet About the Glowing Shard", map = 1413, x = 62.98, y = 37.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 50.32, y = 35.44 },
					{ t = "goto", text = "Continue up the path", map = 1413, x = 49.17, y = 34.09 },
					{ t = "turnin", quest = 6981, title = "The Glowing Shard", npc = 8418, npcName = "Falla Sagewind", map = 1413, x = 48.18, y = 32.78, f = "e" },
					{ t = "accept", quest = 3370, title = "In Nightmares", npc = 8418, npcName = "Falla Sagewind", map = 1413, x = 48.18, y = 32.78, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1457, x = 35.52, y = 10.69 },
					{ t = "turnin", quest = 3370, title = "In Nightmares", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.4, y = 8.4, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-the-deadmines-quests",
		pack = "guides",
		title = "The Deadmines Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 16 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 68.9, y = 42.09 },
					{ t = "accept", quest = 167, title = "Oh Brother...", npc = 656, npcName = "Wilder Thistlenettle", map = 1453, x = 70.32, y = 40.85, f = "e" },
					{ t = "accept", quest = 168, title = "Collecting Memories", npc = 656, npcName = "Wilder Thistlenettle", map = 1453, x = 70.32, y = 40.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2040, title = "Underground Assault", npc = 6579, npcName = "Shoni the Shilent", map = 1453, x = 62.64, y = 34.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 65, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1433, x = 21.52, y = 46.41 },
					{ t = "turnin", quest = 65, title = "The Defias Brotherhood", npc = 266, npcName = "Wiley the Black", map = 1433, x = 21.39, y = 45.35, f = "e" },
					{ t = "accept", quest = 132, title = "The Defias Brotherhood", npc = 266, npcName = "Wiley the Black", map = 1433, x = 21.39, y = 45.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 132, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
					{ t = "accept", quest = 135, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1453, x = 77.47, y = 65.94 },
					{ t = "goto", text = "Enter the building", map = 1453, x = 79.36, y = 69.35 },
					{ t = "turnin", quest = 135, title = "The Defias Brotherhood", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.31, y = 70.74, f = "e" },
					{ t = "accept", quest = 141, title = "The Defias Brotherhood", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.31, y = 70.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1453, x = 77.47, y = 65.94 },
					{ t = "goto", text = "Run up the ramp", map = 1453, x = 67.99, y = 72.67 },
					{ t = "turnin", quest = 141, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
					{ t = "accept", quest = 142, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
				},
			},
			{
				note = "He walks along the road between Jangolode Mine and Moonbrook. He walks into Gold Coast Quarry before traveling to either Jangolode Mine or Moonbrook. Run on the road while looking for him. He spawns around this location, so it may be easier to kill enemies around this area while waiting for him to either spawn or walk here.",
				goals = {
					{ t = "collect", quest = 142, item = 1381, itemName = "A Mysterious Message", oi = 1, map = 1436, x = 45.1, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 142, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
				},
			},
			{
				note = "This is an escort quest. If he's not here, someone may be escorting him. Wait until he respawns.",
				goals = {
					{ t = "accept", quest = 155, title = "The Defias Brotherhood", npc = 467, npcName = "The Defias Traitor", map = 1436, x = 55.68, y = 47.5, f = "e" },
				},
			},
			{
				note = "Follow the Defias Traitor and protect him as he walks. He eventually walks to this location.",
				goals = {
					{ t = "complete", quest = 155, title = "The Defias Brotherhood", note = "Escort The Defias Traitor to Discover Where VanCleef is Hiding", map = 1436, x = 42.54, y = 71.69, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 155, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
					{ t = "accept", quest = 166, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
				},
			},
			{
				note = "At the top of the tower.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1436, x = 56.51, y = 47.41 },
					{ t = "accept", quest = 214, title = "Red Silk Bandanas", npc = 820, npcName = "Scout Riell", map = 1436, x = 56.67, y = 47.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1436, x = 42.56, y = 71.74 },
					{ t = "goto", text = "Follow the path up", map = 1436, x = 43.38, y = 71.95 },
					{ t = "goto", text = "Follow the path", map = 1436, x = 42.9, y = 72.7 },
					{ t = "goto", text = "Run down the ramp", map = 1436, x = 43.4, y = 72.82 },
					{ t = "goto", text = "Follow the path", map = 1436, x = 43.81, y = 73.37 },
					{ t = "complete", quest = 168, title = "Collecting Memories", note = "Jump down here", map = 1436, x = 43.27, y = 74.14, f = "e" },
				},
			},
			{
				note = "He looks like a ghoul. He walks around this area.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1436, x = 41.6, y = 75.95 },
					{ t = "goto", text = "Continue following the path", map = 1436, x = 41.08, y = 76.97 },
					{ t = "goto", text = "Cross the bridge", map = 1436, x = 41.12, y = 79.68 },
					{ t = "goto", text = "Follow the path", map = 1436, x = 41.09, y = 79.93 },
					{ t = "collect", quest = 167, item = 1875, itemName = "Thistlenettle's Badge", oi = 1, map = 1436, x = 41.08, y = 80.08, f = "e" },
				},
			},
			{
				label = "Collect_Miners_Union_Cards",
				along = true,
				goals = {
					{ t = "collect", quest = 168, item = 1894, itemName = "Miners' Union Card", count = 4, oi = 1, map = 1436, x = 40.96, y = 80.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 168, title = "Collecting Memories", note = "Enter the Deadmines Dungeon with Your Group" },
				},
			},
			{
				note = "The second boss of the dungeon.",
				goals = {
					{ t = "collect", quest = 2040, item = 7365, itemName = "Gnoam Sprecklesprocket", oi = 1 },
				},
			},
			{
				note = "The last boss of the dungeon. Aboard the ship.",
				goals = {
					{ t = "collect", quest = 166, item = 3637, itemName = "Head of VanCleef", oi = 1 },
				},
			},
			{
				note = "The last boss of the dungeon. Aboard the ship.",
				goals = {
					{ t = "collect", quest = 373, item = 2874, itemName = "An Unsent Letter" },
				},
			},
			{
				goals = {
					{ t = "use", item = 2874, itemName = "An Unsent Letter" },
					{ t = "accept", quest = 373, title = "The Unsent Letter" },
				},
			},
			{
				label = "Collect_10_Red_Silk_Bandanas",
				along = true,
				note = "They are found throughout the dungeon.",
				goals = {
					{ t = "collect", quest = 214, item = 915, itemName = "Red Silk Bandana", count = 10, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 168, title = "Collecting Memories", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 166, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
				},
			},
			{
				note = "At the top of the tower.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1436, x = 56.51, y = 47.41 },
					{ t = "turnin", quest = 214, title = "Red Silk Bandanas", npc = 820, npcName = "Scout Riell", map = 1436, x = 56.67, y = 47.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 56.73, y = 48.55 },
					{ t = "turnin", quest = 373, title = "The Unsent Letter", npc = 1646, npcName = "Baros Alexston", map = 1453, x = 57.75, y = 47.86, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2040, title = "Underground Assault", npc = 6579, npcName = "Shoni the Shilent", map = 1453, x = 62.64, y = 34.14, f = "e" },
				},
			},
			{
				note = "Inside the building",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 68.92, y = 42.06 },
					{ t = "turnin", quest = 167, title = "Oh Brother...", npc = 656, npcName = "Wilder Thistlenettle", map = 1453, x = 70.32, y = 40.85, f = "e" },
					{ t = "turnin", quest = 168, title = "Collecting Memories", npc = 656, npcName = "Wilder Thistlenettle", map = 1453, x = 70.32, y = 40.85, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-blackfathom-deeps-quests",
		pack = "guides",
		title = "Blackfathom Deeps Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 20 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3765, title = "The Corruption Abroad", npc = 4984, npcName = "Argos Nightwhisper", map = 1453, x = 36.24, y = 67.59, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1455, x = 51.24, y = 9.84 },
					{ t = "accept", quest = 971, title = "Knowledge in the Deeps", npc = 2786, npcName = "Gerrig Bonegrip", map = 1455, x = 50.82, y = 5.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3765, title = "The Corruption Abroad", npc = 8997, npcName = "Gershala Nightwhisper", map = 1439, x = 38.33, y = 43.04, f = "e" },
					{ t = "accept", quest = 1275, title = "Researching the Corruption", npc = 8997, npcName = "Gershala Nightwhisper", map = 1439, x = 38.33, y = 43.04, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1457, x = 56.46, y = 20.41 },
					{ t = "accept", quest = 1199, title = "Twilight Falls", npc = 4784, npcName = "Argent Guard Manados", map = 1457, x = 55.23, y = 24.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1198, title = "In Search of Thaelrid", npc = 4786, npcName = "Dawnwatcher Shaedlass", map = 1457, x = 55.37, y = 25.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Jump into the water", map = 1440, x = 14.12, y = 13.88 },
					{ t = "goto", text = "Swim underwater into the cave", map = 1440, x = 13.28, y = 13.23 },
					{ t = "goto", text = "Follow the path", map = 1440, x = 13.9, y = 10.92 },
					{ t = "goto", text = "Follow the path", map = 1440, x = 13.74, y = 9.38 },
					{ t = "goto", text = "Follow the path", map = 1440, x = 14.37, y = 9.2 },
					{ t = "goto", text = "Follow the path", map = 1440, x = 16.5, y = 11.61 },
					{ t = "complete", quest = 971, title = "Knowledge in the Deeps", note = "Enter the Blackfathom Deeps Dungeon with Your Group" },
				},
			},
			{
				note = "Follow the path inside the dungeon to enter The Drowned Sacellum. Swim to the south side of the room and then jump across the platforms to reach the southwest path. Continue following the path to enter The Pool of Ask'ar. It is underwater to the north of Gamoo-ra.",
				goals = {
					{ t = "collect", quest = 971, item = 5359, itemName = "Lorgalis Manuscript", oi = 1 },
				},
			},
			{
				note = "Head southwest again in The Pool of Ask'ar and swim into the underwater cave. He is laying on the ground inside the underwater cave.",
				goals = {
					{ t = "turnin", quest = 1198, title = "In Search of Thaelrid", npc = 4787, npcName = "Argent Guard Thaelrid" },
					{ t = "accept", quest = 1200, title = "Blackfathom Villainy", npc = 4787, npcName = "Argent Guard Thaelrid" },
				},
			},
			{
				note = "The fourth boss of the dungeon. Leave the underwater cave and reenter the main room in The Pool of Ask'ar. Swim south and follow the path to the left to reach the Moonshrine Ruins. Follow the path southeast through the Moonshrine Ruins into the Moonshrine Sanctum.",
				goals = {
					{ t = "collect", quest = 1200, item = 5881, itemName = "Head of Kelris", oi = 1 },
				},
			},
			{
				label = "Collect_10_Twilight_Pendants",
				along = true,
				note = "They are found throughout the instance.",
				goals = {
					{ t = "collect", quest = 1199, item = 5879, itemName = "Twilight Pendant", count = 10, oi = 1 },
				},
			},
			{
				label = "Collect_8_Corrupted_Brain_Stems",
				along = true,
				note = "They are found throughout the instance.",
				goals = {
					{ t = "collect", quest = 1275, item = 5952, itemName = "Corrupted Brain Stem", count = 8, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 971, title = "Knowledge in the Deeps", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1275, title = "Researching the Corruption", npc = 8997, npcName = "Gershala Nightwhisper", map = 1439, x = 38.33, y = 43.04, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1457, x = 56.46, y = 20.41 },
					{ t = "turnin", quest = 1199, title = "Twilight Falls", npc = 4784, npcName = "Argent Guard Manados", map = 1457, x = 55.23, y = 24.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1200, title = "Blackfathom Villainy", npc = 4783, npcName = "Dawnwatcher Selgorm", map = 1457, x = 56.17, y = 24.38, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1455, x = 51.24, y = 9.84 },
					{ t = "turnin", quest = 971, title = "Knowledge in the Deeps", npc = 2786, npcName = "Gerrig Bonegrip", map = 1455, x = 50.82, y = 5.6, f = "e" },
				},
			},
		},
	})
end

