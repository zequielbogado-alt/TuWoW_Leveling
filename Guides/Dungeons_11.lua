-- TuWoW_Leveling — Guides/Dungeons_11.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-temple-of-atalhakkar-quests",
		pack = "guides",
		title = "Temple of Atal'Hakkar Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
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
					{ t = "goto", text = "Enter the building", map = 1453, x = 68.89, y = 42.12 },
					{ t = "accept", quest = 1448, title = "In Search of The Temple", npc = 5384, npcName = "Brohann Caskbelly", map = 1453, x = 69.44, y = 40.43, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1448, title = "In Search of The Temple", note = "Search for the Temple of Atal'Hakkar", map = 1435, x = 66.82, y = 59.39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 68.89, y = 42.12 },
					{ t = "turnin", quest = 1448, title = "In Search of The Temple", npc = 5384, npcName = "Brohann Caskbelly", map = 1453, x = 69.44, y = 40.43, f = "e" },
					{ t = "accept", quest = 1449, title = "To The Hinterlands", npc = 5384, npcName = "Brohann Caskbelly", map = 1453, x = 69.44, y = 40.43, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1449, title = "To The Hinterlands", npc = 5635, npcName = "Falstad Wildhammer", map = 1425, x = 11.81, y = 46.76, f = "e" },
					{ t = "accept", quest = 1450, title = "Gryphon Master Talonaxe", npc = 5635, npcName = "Falstad Wildhammer", map = 1425, x = 11.81, y = 46.76, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1425, x = 11.75, y = 46.9 },
					{ t = "goto", text = "Enter the building", map = 1425, x = 11.0, y = 45.68 },
					{ t = "turnin", quest = 1450, title = "Gryphon Master Talonaxe", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.75, y = 44.48, f = "e" },
					{ t = "accept", quest = 1451, title = "Rhapsody Shindigger", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.75, y = 44.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1425, x = 21.02, y = 47.81 },
					{ t = "turnin", quest = 1451, title = "Rhapsody Shindigger", npc = 5634, npcName = "Rhapsody Shindigger", map = 1425, x = 26.94, y = 48.59, f = "e" },
					{ t = "accept", quest = 1452, title = "Rhapsody's Kalimdor Kocktail", npc = 5634, npcName = "Rhapsody Shindigger", map = 1425, x = 26.94, y = 48.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1452, item = 6257, itemName = "Roc Gizzard", count = 3, oi = 1, map = 1446, x = 43.48, y = 40.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1444, x = 31.84, y = 45.02 },
					{ t = "accept", quest = 3445, title = "The Sunken Temple", npc = 7900, npcName = "Angelas Moonbreeze", map = 1444, x = 31.83, y = 45.61, f = "e" },
				},
			},
			{
				note = "They share a spawn with Groddoc enemies around this area.",
				goals = {
					{ t = "collect", quest = 1452, item = 6258, itemName = "Ironfur Liver", count = 3, oi = 2, map = 1444, x = 49.93, y = 30.39, f = "e" },
				},
			},
			{
				note = "They share a spawn with Ironfur enemies around this area.",
				goals = {
					{ t = "collect", quest = 1452, item = 6259, itemName = "Groddoc Liver", count = 3, oi = 3, map = 1444, x = 49.93, y = 30.39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1425, x = 21.02, y = 47.81 },
					{ t = "turnin", quest = 1452, title = "Rhapsody's Kalimdor Kocktail", npc = 5634, npcName = "Rhapsody Shindigger", map = 1425, x = 26.94, y = 48.59, f = "e" },
					{ t = "accept", quest = 1469, title = "Rhapsody's Tale", npc = 5634, npcName = "Rhapsody Shindigger", map = 1425, x = 26.94, y = 48.59, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 68.93, y = 42.08 },
					{ t = "turnin", quest = 1469, title = "Rhapsody's Tale", npc = 5384, npcName = "Brohann Caskbelly", map = 1453, x = 69.45, y = 40.41, f = "e" },
					{ t = "accept", quest = 1475, title = "Into The Temple of Atal'Hakkar", npc = 5384, npcName = "Brohann Caskbelly", map = 1453, x = 69.45, y = 40.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3445, title = "The Sunken Temple", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.92, f = "e" },
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
					{ t = "turnin", quest = 3527, title = "The Prophecy of Mosh'aru", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 67.0, y = 22.4, f = "e" },
					{ t = "accept", quest = 4787, title = "The Ancient Egg", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 67.0, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1425, x = 35.78, y = 64.12 },
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 33.09, y = 73.8 },
					{ t = "goto", text = "Jump down here", map = 1425, x = 33.11, y = 75.53 },
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
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1449, x = 45.72, y = 13.08 },
					{ t = "accept", quest = 4141, title = "Muigin and Larion", npc = 9119, npcName = "Muigin", map = 1449, x = 42.94, y = 9.65, f = "e" },
				},
			},
			{
				label = "Collect_Bloodpetals",
				note = "They look like walking plants. These have a low drop rate.",
				goals = {
					{ t = "collect", quest = 4141, item = 11316, itemName = "Bloodpetal", count = 15, oi = 1, map = 1449, x = 71.46, y = 38.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1449, x = 45.72, y = 13.08 },
					{ t = "turnin", quest = 4141, title = "Muigin and Larion", npc = 9119, npcName = "Muigin", map = 1449, x = 42.94, y = 9.65, f = "e" },
					{ t = "accept", quest = 4142, title = "A Visit to Gregan", npc = 9119, npcName = "Muigin", map = 1449, x = 42.94, y = 9.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1444, x = 47.28, y = 44.56 },
					{ t = "goto", text = "Follow the path", map = 1444, x = 48.66, y = 44.98 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 47.87, y = 36.21 },
					{ t = "goto", text = "Follow the path down", map = 1444, x = 48.22, y = 32.73 },
					{ t = "goto", text = "Follow the path up", map = 1444, x = 45.7, y = 25.74 },
					{ t = "turnin", quest = 4142, title = "A Visit to Gregan", npc = 7775, npcName = "Gregan Brewspewer", map = 1444, x = 45.12, y = 25.56, f = "e" },
					{ t = "accept", quest = 4143, title = "Haze of Evil", npc = 7775, npcName = "Gregan Brewspewer", map = 1444, x = 45.12, y = 25.56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1435, x = 69.31, y = 57.06 },
					{ t = "goto", text = "Enter the Temple", map = 1435, x = 69.99, y = 52.99 },
					{ t = "complete", quest = 3528, title = "The God Hakkar", note = "Run down the stairs", map = 1435, x = 69.58, y = 51.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Swim through the water", map = 1435, x = 70.22, y = 51.69 },
					{ t = "goto", text = "Run up the stairs", map = 1435, x = 71.74, y = 45.81 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 72.7, y = 42.22 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 75.83, y = 44.85 },
					{ t = "complete", quest = 3528, title = "The God Hakkar", note = "Continue following the path", map = 1435, x = 76.02, y = 45.96, f = "e" },
				},
			},
			{
				note = "They look like silver stone tablets along the walls around this area.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1435, x = 56.89, y = 75.91 },
					{ t = "collect", quest = 1475, item = 6288, itemName = "Atal'ai Tablet", count = 10, oi = 1, map = 1435, x = 56.76, y = 76.01, f = "e" },
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
					{ t = "collect", quest = 4143, item = 11318, itemName = "Atal'ai Haze", count = 5, oi = 1 },
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
					{ t = "goto", text = "Enter the building", map = 1453, x = 68.93, y = 42.08 },
					{ t = "turnin", quest = 1475, title = "Into The Temple of Atal'Hakkar", npc = 5384, npcName = "Brohann Caskbelly", map = 1453, x = 69.45, y = 40.41, f = "e" },
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
					{ t = "goto", text = "Follow the path up", map = 1449, x = 45.72, y = 13.08 },
					{ t = "turnin", quest = 4143, title = "Haze of Evil", npc = 9119, npcName = "Muigin", map = 1449, x = 42.94, y = 9.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3528, title = "The God Hakkar", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
				},
			},
		},
	})
end

