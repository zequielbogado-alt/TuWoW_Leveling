-- TuWoW_Leveling — Guides/Dungeons_22.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-blackfathom-deeps-quests",
		pack = "guides",
		title = "Blackfathom Deeps Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1440,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 21 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 6563, title = "The Essence of Aku'Mai", npc = 12736, npcName = "Je'neu Sancrea", map = 1440, x = 11.57, y = 34.28, f = "e" },
					{ t = "accept", quest = 6921, title = "Amongst the Ruins", npc = 12736, npcName = "Je'neu Sancrea", map = 1440, x = 11.57, y = 34.28, f = "e" },
				},
			},
			{
				note = "You may need help with this. This has a low drop rate.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1440, x = 14.11, y = 14.87 },
					{ t = "goto", text = "Jump down into the water", map = 1440, x = 43.97, y = 35.37 },
					{ t = "goto", text = "Enter the underwater cave", map = 1440, x = 43.94, y = 35.27 },
					{ t = "collect", quest = 6564, item = 16790, itemName = "Damp Note", map = 1440, x = 43.82, y = 35.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16790, itemName = "Damp Note" },
					{ t = "accept", quest = 6564, title = "Allegiance to the Old Gods" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6564, title = "Allegiance to the Old Gods", npc = 12736, npcName = "Je'neu Sancrea", map = 1440, x = 11.57, y = 34.28, f = "e" },
					{ t = "accept", quest = 6565, title = "Allegiance to the Old Gods", npc = 12736, npcName = "Je'neu Sancrea", map = 1440, x = 11.57, y = 34.28, f = "e" },
				},
			},
			{
				note = "They look like light-blue crystals along the cavern walls all through out this area.",
				goals = {
					{ t = "goto", text = "Jump into the water", map = 1440, x = 14.12, y = 13.88 },
					{ t = "goto", text = "Swim underwater into the cave", map = 1440, x = 13.28, y = 13.23 },
					{ t = "collect", quest = 6563, item = 16784, itemName = "Sapphire of Aku'Mai", count = 20, oi = 1, map = 1440, x = 13.74, y = 9.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1440, x = 14.37, y = 9.2 },
					{ t = "goto", text = "Continue following the path", map = 1440, x = 16.5, y = 11.61 },
				},
			},
			{
				note = "Follow the path inside the dungeon to enter The Drowned Sacellum. Swim to the south side of the room and then jump across the platforms to reach the southwest path. Continue following the path to The Pool of Ask'ar then head southwest again and swim into the underwater cave. He is laying on the ground inside the underwater cave.",
				goals = {
					{ t = "accept", quest = 6561, title = "Blackfathom Villainy", npc = 4787, npcName = "Argent Guard Thaelrid" },
				},
			},
			{
				note = "He is an optional mini boss in the dungeon. Leave the underwater cave and reenter the main room in The Pool of Ask'ar. Swim south and follow the path to the left. When the path branches in multiple directions he can usually be found in one of the small nooks on the western side of the map. If he's not there he should be further down the path to the south.",
				goals = {
					{ t = "kill", quest = 6565, npc = 12902, target = "Lorgus Jett", oi = 1 },
				},
			},
			{
				note = "It is under water in the center of the Moonshrine Ruins, beneath the walkway just before Twilight Lord Kelris. Clicking it will also cause Baron Aquanis to spawn.",
				goals = {
					{ t = "collect", quest = 6921, item = 16762, itemName = "Fathom Core" },
				},
			},
			{
				note = "He is an optional boss in the dungeon. He spawns after clicking the Fathom Stone underwater in the Moonshrine Ruins.",
				goals = {
					{ t = "collect", quest = 6922, item = 16782, itemName = "Strange Water Globe" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16782, itemName = "Strange Water Globe" },
					{ t = "accept", quest = 6922, title = "Baron Aquanis" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6561, item = 5881, itemName = "Head of Kelris", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6561, title = "Blackfathom Villainy", note = "Click Here to Continue" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6563, title = "The Essence of Aku'Mai", npc = 12736, npcName = "Je'neu Sancrea", map = 1440, x = 11.57, y = 34.28, f = "e" },
					{ t = "turnin", quest = 6565, title = "Allegiance to the Old Gods", npc = 12736, npcName = "Je'neu Sancrea", map = 1440, x = 11.57, y = 34.28, f = "e" },
					{ t = "turnin", quest = 6921, title = "Amongst the Ruins", npc = 12736, npcName = "Je'neu Sancrea", map = 1440, x = 11.57, y = 34.28, f = "e" },
					{ t = "turnin", quest = 6922, title = "Baron Aquanis", npc = 12736, npcName = "Je'neu Sancrea", map = 1440, x = 11.57, y = 34.28, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6561, title = "Blackfathom Villainy", npc = 9087, npcName = "Bashana Runetotem", map = 1456, x = 71.07, y = 34.16, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-gnomeregan-quests",
		pack = "guides",
		title = "Gnomeregan Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 25 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 75.22, y = 24.61 },
					{ t = "accept", quest = 2841, title = "Rig Wars", npc = 3412, npcName = "Nogg", map = 1454, x = 76.0, y = 25.42, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2842, title = "Chief Engineer Scooty", npc = 3413, npcName = "Sovik", map = 1454, x = 75.49, y = 25.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2842, title = "Chief Engineer Scooty", npc = 7853, npcName = "Scooty", map = 1434, x = 27.6, y = 77.48, f = "e" },
					{ t = "accept", quest = 2843, title = "Gnomer-gooooone!", npc = 7853, npcName = "Scooty", map = 1434, x = 27.6, y = 77.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2843, title = "Gnomer-gooooone!", note = "Wait for Scooty to Calibrate the Goblin Transponder" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2843, title = "Gnomer-gooooone!", npc = 7853, npcName = "Scooty", map = 1434, x = 27.6, y = 77.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Step onto the teleporter", map = 1434, x = 27.63, y = 77.56 },
					{ t = "complete", quest = 2841, title = "Rig Wars", note = "Teleport to the Gnomeregan Dungeon", map = 1426, x = 21.98, y = 36.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1426, x = 19.93, y = 36.02 },
					{ t = "complete", quest = 2841, title = "Rig Wars", note = "Enter the Gnomeregan Dungeon with Your Group" },
				},
			},
			{
				note = "He is the last boss of the dungeon. Follow the path west through The Hall of Gears to enter the Launch Bay. Continue southwest through the Launch Bay and follow the path to reach Tinkers' Court.",
				goals = {
					{ t = "collect", quest = 2841, item = 9299, itemName = "Thermaplugg's Safe Combination", oi = 2 },
				},
			},
			{
				note = "It's near the back wall of the third pillar from the right in the room with Mekgineer Thermaplugg.",
				goals = {
					{ t = "collect", quest = 2841, item = 9153, itemName = "Rig Blueprints", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2841, title = "Rig Wars", note = "Click Here to Continue" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 75.22, y = 24.61 },
					{ t = "turnin", quest = 2841, title = "Rig Wars", npc = 3412, npcName = "Nogg", map = 1454, x = 76.0, y = 25.42, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-razorfen-kraul-quests",
		pack = "guides",
		title = "Razorfen Kraul Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1458,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 30 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 46.94, y = 59.57 },
					{ t = "goto", text = "Run down the ramp", map = 1458, x = 44.56, y = 66.51 },
					{ t = "accept", quest = 1109, title = "Going, Going, Guano!", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.81, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1221, title = "Blueleaf Tubers", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
				},
			},
			{
				note = "They look like a bundle of sticks sitting in an urn in front of the building.",
				goals = {
					{ t = "collect", quest = 1221, item = 6684, itemName = "Snufflenose Command Stick", oi = 4, map = 1413, x = 62.34, y = 37.61, f = "e" },
				},
			},
			{
				note = "They look like books sitting on the table in front of the building.",
				goals = {
					{ t = "collect", quest = 1221, item = 5897, itemName = "Snufflenose Owner's Manual", oi = 3, map = 1413, x = 62.34, y = 37.63, f = "e" },
				},
			},
			{
				note = "They look like boxes sitting on the ground and the table in front of the building.",
				goals = {
					{ t = "collect", quest = 1221, item = 5880, itemName = "Crate With Holes", oi = 2, map = 1413, x = 62.33, y = 37.63, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1102, title = "A Vengeful Fate", npc = 4451, npcName = "Auld Stonespire", map = 1456, x = 36.02, y = 59.88, f = "e" },
				},
			},
			{
				note = "After killing Overlord Ramtusk, go southwest and cross the bridge to reach the small platform in between two bridges. This will summon a gopher. Use it to command the gopher.",
				goals = {
					{ t = "use", item = 5880, itemName = "Crate With Holes" },
					{ t = "use", item = 6684, itemName = "Snufflenose Command Stick" },
					{ t = "collect", quest = 1221, item = 5876, itemName = "Blueleaf Tuber", count = 6, oi = 1 },
				},
			},
			{
				note = "These drop from Kraul Bats and Greater Kraul Bats. Continue west across the bridges and enter the cave.",
				goals = {
					{ t = "collect", quest = 1109, item = 5801, itemName = "Kraul Guano", oi = 1 },
				},
			},
			{
				note = "She is the last boss of the dungeon. Continue south through the cave, follow the path around and exit to the north.",
				goals = {
					{ t = "collect", quest = 1102, item = 5793, itemName = "Razorflank's Heart", oi = 1 },
				},
			},
			{
				note = "She is the last boss of the dungeon.",
				goals = {
					{ t = "collect", quest = 6522, item = 17008, itemName = "Small Scroll" },
				},
			},
			{
				goals = {
					{ t = "use", item = 17008, itemName = "Small Scroll" },
					{ t = "accept", quest = 6522, title = "An Unholy Alliance" },
				},
			},
			{
				note = "Inside the building. Jump down from the platform where Charlga Razorflank was and head to the tent to the left. This is an escort quest.",
				goals = {
					{ t = "accept", quest = 1144, title = "Willix the Importer", npc = 4508, npcName = "Willix the Importer" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1144, title = "Willix the Importer", note = "Escort Willix the Importer out of Razorfen Kraul" },
				},
			},
			{
				note = "He will be at the entrance after the completion of the escort quest.",
				goals = {
					{ t = "turnin", quest = 1144, title = "Willix the Importer", npc = 4508, npcName = "Willix the Importer" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6522, title = "An Unholy Alliance", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1221, title = "Blueleaf Tubers", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1102, title = "A Vengeful Fate", npc = 4451, npcName = "Auld Stonespire", map = 1456, x = 36.02, y = 59.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 46.94, y = 59.57 },
					{ t = "goto", text = "Run down the ramp", map = 1458, x = 44.56, y = 66.51 },
					{ t = "turnin", quest = 1109, title = "Going, Going, Guano!", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.81, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 51.86, y = 64.67 },
					{ t = "turnin", quest = 6522, title = "An Unholy Alliance", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.23, y = 92.18, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-scarlet-monastery-graveyard-quests",
		pack = "guides",
		title = "Scarlet Monastery Graveyard Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1458,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 30 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 46.94, y = 59.57 },
					{ t = "goto", text = "Run down the ramp", map = 1458, x = 44.56, y = 66.51 },
					{ t = "accept", quest = 1109, title = "Going, Going, Guano!", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.81, y = 69.3, f = "e" },
				},
			},
			{
				note = "These drop from Kraul Bats and Greater Kraul Bats in the Razorfen Kraul Dungeon. Use the Razorfen Kraul Quests guide to accomplish this.",
				goals = {
					{ t = "collect", quest = 1109, item = 5801, itemName = "Kraul Guano", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 46.94, y = 59.57 },
					{ t = "goto", text = "Run down the ramp", map = 1458, x = 44.56, y = 66.51 },
					{ t = "turnin", quest = 1109, title = "Going, Going, Guano!", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.81, y = 69.3, f = "e" },
					{ t = "accept", quest = 1113, title = "Hearts of Zeal", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.81, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1420, x = 82.65, y = 32.88 },
					{ t = "goto", text = "Enter the Portal", map = 1420, x = 84.84, y = 30.51 },
					{ t = "complete", quest = 1113, title = "Hearts of Zeal", note = "Enter the Scarlet Monastery - Graveyard Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the Chamber of Atonement, he is laying on a table to the right, next to Interrogator Vishas.",
				goals = {
					{ t = "accept", quest = 1051, title = "Vorrel's Revenge", npc = 3981, npcName = "Vorrel Sengutz" },
				},
			},
			{
				label = "Collect_30_Heart_of_Zeal",
				along = true,
				note = "You can find more outside of the dungeon.",
				goals = {
					{ t = "collect", quest = 1113, item = 5805, itemName = "Heart of Zeal", count = 30, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1113, title = "Hearts of Zeal", note = "Click Here to Continue" },
				},
			},
			{
				note = "Inside the building. You may need help with this.",
				goals = {
					{ t = "goto", text = "Cross the water", map = 1421, x = 58.44, y = 35.31 },
					{ t = "goto", text = "Continue across the water", map = 1421, x = 81.11, y = 30.01 },
					{ t = "collect", quest = 1051, item = 5538, itemName = "Vorrel's Wedding Ring", oi = 1, map = 1416, x = 32.34, y = 32.78, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1051, title = "Vorrel's Revenge", npc = 3982, npcName = "Monika Sengutz", map = 1424, x = 62.67, y = 18.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 46.94, y = 59.57 },
					{ t = "goto", text = "Run down the ramp", map = 1458, x = 44.56, y = 66.51 },
					{ t = "turnin", quest = 1113, title = "Hearts of Zeal", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.81, y = 69.3, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-scarlet-monastery-library-quests",
		pack = "guides",
		title = "Scarlet Monastery Library Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1456,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 28 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1049, title = "Compendium of the Fallen", npc = 3978, npcName = "Sage Truthseeker", map = 1456, x = 34.41, y = 46.9, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1441, x = 54.68, y = 44.78 },
					{ t = "goto", text = "Enter the cave", map = 1441, x = 53.67, y = 42.51 },
					{ t = "accept", quest = 1149, title = "Test of Faith", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 53.94, y = 41.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1149, title = "Test of Faith", note = "Teleport to the Plateau", map = 1441, x = 26.43, y = 31.29, f = "e" },
				},
			},
			{
				note = "You won't die.",
				goals = {
					{ t = "goto", text = "Jump down here", map = 1441, x = 26.43, y = 32.41 },
					{ t = "complete", quest = 1149, title = "Test of Faith", note = "Return to Dorn Plainstalker", map = 1441, x = 53.89, y = 41.62, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1441, x = 54.68, y = 44.78 },
					{ t = "goto", text = "Enter the cave", map = 1441, x = 53.67, y = 42.51 },
					{ t = "turnin", quest = 1149, title = "Test of Faith", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 53.94, y = 41.48, f = "e" },
					{ t = "accept", quest = 1150, title = "Test of Endurance", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 53.94, y = 41.48, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1441, x = 27.59, y = 49.85 },
					{ t = "goto", text = "Continue up the path", map = 1441, x = 28.73, y = 51.37 },
					{ t = "goto", text = "Enter the cave", map = 1441, x = 27.27, y = 51.29 },
					{ t = "collect", quest = 1150, item = 5843, itemName = "Grenka's Claw", oi = 1, map = 1441, x = 25.84, y = 54.77, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1441, x = 54.68, y = 44.78 },
					{ t = "goto", text = "Enter the cave", map = 1441, x = 53.67, y = 42.51 },
					{ t = "turnin", quest = 1150, title = "Test of Endurance", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 53.94, y = 41.48, f = "e" },
					{ t = "accept", quest = 1151, title = "Test of Strength", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 53.94, y = 41.48, f = "e" },
				},
			},
			{
				label = "RokAlim_the_Pounder_Path_One",
				note = "It patrols along this path. You may need help with this.",
				goals = {
					{ t = "collect", quest = 1151, item = 5844, itemName = "Fragments of Rok'Alim", oi = 1, map = 1441, x = 10.6, y = 23.1, f = "e" },
				},
			},
			{
				note = "It patrols along this path. You may need help with this.",
				goals = {
					{ t = "collect", quest = 1151, item = 5844, itemName = "Fragments of Rok'Alim", oi = 1, map = 1441, x = 10.6, y = 23.1, f = "e" },
				},
			},
			{
				label = "Accept_Test_Of_Lore",
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1441, x = 54.68, y = 44.78 },
					{ t = "goto", text = "Enter the cave", map = 1441, x = 53.67, y = 42.51 },
					{ t = "turnin", quest = 1151, title = "Test of Strength", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 53.94, y = 41.48, f = "e" },
					{ t = "accept", quest = 1152, title = "Test of Lore", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 53.94, y = 41.48, f = "e" },
				},
			},
			{
				note = "Inside the tent.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1442, x = 61.45, y = 66.35 },
					{ t = "turnin", quest = 1152, title = "Test of Lore", npc = 4489, npcName = "Braug Dimspirit", map = 1442, x = 78.78, y = 45.67, f = "e" },
					{ t = "accept", quest = 1154, title = "Test of Lore", npc = 4489, npcName = "Braug Dimspirit", map = 1442, x = 78.78, y = 45.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1440, x = 75.96, y = 75.38 },
					{ t = "goto", text = "Follow the path down", map = 1440, x = 76.27, y = 75.64 },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1440, x = 77.23, y = 76.28 },
					{ t = "goto", text = "Run down the ramp", map = 1440, x = 77.31, y = 75.18 },
					{ t = "goto", text = "Continue following the path", map = 1440, x = 76.76, y = 74.86 },
					{ t = "goto", text = "Continue down the path", map = 1440, x = 75.66, y = 76.11 },
					{ t = "goto", text = "Cross the bridge", map = 1440, x = 75.41, y = 75.11 },
					{ t = "collect", quest = 1154, item = 5860, itemName = "Legacy of the Aspects", oi = 1, map = 1440, x = 75.56, y = 74.37, f = "e" },
				},
			},
			{
				note = "Inside the tent.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1442, x = 61.45, y = 66.35 },
					{ t = "turnin", quest = 1154, title = "Test of Lore", npc = 4489, npcName = "Braug Dimspirit", map = 1442, x = 78.78, y = 45.67, f = "e" },
					{ t = "accept", quest = 6627, title = "Test of Lore", npc = 4489, npcName = "Braug Dimspirit", map = 1442, x = 78.78, y = 45.67, f = "e" },
				},
			},
			{
				note = "Inside the tent.",
				goals = {
					{ t = "complete", quest = 6627, title = "Test of Lore", note = "Answer Braug Dimspirit's Question Correctly", map = 1442, x = 78.78, y = 45.67, f = "e" },
				},
			},
			{
				note = "Inside the tent.",
				goals = {
					{ t = "turnin", quest = 6627, title = "Test of Lore", npc = 4489, npcName = "Braug Dimspirit", map = 1442, x = 78.78, y = 45.67, f = "e" },
					{ t = "accept", quest = 1159, title = "Test of Lore", npc = 4489, npcName = "Braug Dimspirit", map = 1442, x = 78.78, y = 45.67, f = "e" },
				},
			},
			{
				note = "Standing on the bridge.",
				goals = {
					{ t = "turnin", quest = 1159, title = "Test of Lore", npc = 4488, npcName = "Parqual Fintallas", map = 1458, x = 57.8, y = 65.44, f = "e" },
					{ t = "accept", quest = 1160, title = "Test of Lore", npc = 4488, npcName = "Parqual Fintallas", map = 1458, x = 57.8, y = 65.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 52.15, y = 64.37 },
					{ t = "accept", quest = 1048, title = "Into The Scarlet Monastery", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.26, y = 92.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1420, x = 82.65, y = 32.88 },
					{ t = "goto", text = "Enter the Portal", map = 1420, x = 85.33, y = 32.27 },
					{ t = "complete", quest = 1160, title = "Test of Lore", note = "Enter the Scarlet Monastery - Library Dungeon with Your Group" },
				},
			},
			{
				note = "He is the first boss of the dungeon. Follow the path to enter Huntsman's Cloister, then continue south to the small room.",
				goals = {
					{ t = "kill", quest = 1048, npc = 3974, target = "Houndmaster Loksey", oi = 4 },
				},
			},
			{
				note = "It looks like an open book laying on a table. It is in the first room on the left once you enter the Gallery of Treasures.",
				goals = {
					{ t = "collect", quest = 1160, item = 5861, itemName = "Beginnings of the Undead Threat", oi = 1 },
				},
			},
			{
				note = "Continue following the path through the dungeon to reach the Athenaeum. Once you enter the Athenaeum, follow the wall left and it will be on a nearby bookcase.",
				goals = {
					{ t = "collect", quest = 1049, item = 5535, itemName = "Compendium of the Fallen", oi = 1 },
				},
			},
			{
				note = "It looks like a grey and black lockbox on the ground behind Arcanist Doan, the final boss of the dungeon. This key is required to open the doors to access the last two wings of the Scarlet Monastery Dungeon. If someone in your group already has the key you can skip this step.",
				goals = {
					{ t = "collect", item = 7146, itemName = "The Scarlet Key" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1160, title = "Test of Lore", note = "Click Here to Continue" },
				},
			},
			{
				note = "Standing on the bridge.",
				goals = {
					{ t = "turnin", quest = 1160, title = "Test of Lore", npc = 4488, npcName = "Parqual Fintallas", map = 1458, x = 57.8, y = 65.44, f = "e" },
					{ t = "accept", quest = 6628, title = "Test of Lore", npc = 4488, npcName = "Parqual Fintallas", map = 1458, x = 57.8, y = 65.44, f = "e" },
				},
			},
			{
				note = "Choose \"Ner'zhul\", which should be the 3rd option.",
				goals = {
					{ t = "complete", quest = 6628, title = "Test of Lore", note = "Answer Parqual Fintallas' Question Correctly", map = 1458, x = 57.8, y = 65.44, f = "e" },
				},
			},
			{
				note = "Standing on the bridge.",
				goals = {
					{ t = "turnin", quest = 6628, title = "Test of Lore", npc = 4488, npcName = "Parqual Fintallas", map = 1458, x = 57.8, y = 65.44, f = "e" },
					{ t = "accept", quest = 1394, title = "Final Passage", npc = 4488, npcName = "Parqual Fintallas", map = 1458, x = 57.8, y = 65.44, f = "e" },
				},
			},
			{
				note = "This quest requires you to kill bosses in Scarlet Monastery - Library, Armory and Cathedral. Use the Scarlet Monastery Armory Quests and Scarlet Monastery Cathedral Quests guides to accomplish this. If you haven't completed the other objectives yet, skip this for now.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 52.15, y = 64.37 },
					{ t = "turnin", quest = 1048, title = "Into The Scarlet Monastery", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.26, y = 92.2, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1049, title = "Compendium of the Fallen", npc = 3978, npcName = "Sage Truthseeker", map = 1456, x = 34.41, y = 46.9, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1441, x = 54.68, y = 44.78 },
					{ t = "goto", text = "Enter the cave", map = 1441, x = 53.67, y = 42.51 },
					{ t = "turnin", quest = 1394, title = "Final Passage", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 53.94, y = 41.48, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-scarlet-monastery-armory-quests",
		pack = "guides",
		title = "Scarlet Monastery Armory Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1458,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 38 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 52.15, y = 64.37 },
					{ t = "accept", quest = 1048, title = "Into The Scarlet Monastery", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.26, y = 92.2, f = "e" },
				},
			},
			{
				note = "You will need The Scarlet Key from the chest behind Arcanist Doan in the Library to open this. A rogue with 175 Lockpicking skill can pick it and a Truesilver Key opens it too. Engineers can also blast the door open.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1420, x = 82.65, y = 32.88 },
					{ t = "goto", text = "click Armory Door", map = 1420, x = 85.41, y = 31.59 },
					{ t = "goto", text = "Enter the Portal", map = 1420, x = 85.67, y = 31.76 },
					{ t = "complete", quest = 1048, title = "Into The Scarlet Monastery", note = "Enter the Scarlet Monastery - Armory Dungeon with Your Group" },
				},
			},
			{
				note = "He is the only boss of the dungeon, found all the way at the end.",
				goals = {
					{ t = "kill", quest = 1048, npc = 3975, target = "Herod", oi = 3 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1048, title = "Into The Scarlet Monastery", note = "Click Here to Continue" },
				},
			},
			{
				note = "This quest requires you to kill bosses in Scarlet Monastery - Library, Armory and Cathedral. Use the Scarlet Monastery Library Quests and Scarlet Monastery Cathedral Quests guides to accomplish this. If you haven't completed the other objectives yet, skip this for now.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 52.15, y = 64.37 },
					{ t = "turnin", quest = 1048, title = "Into The Scarlet Monastery", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.26, y = 92.2, f = "e" },
				},
			},
		},
	})
end

