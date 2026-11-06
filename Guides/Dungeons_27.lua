-- TuWoW_Leveling — Guides/Dungeons_27.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-lower-blackrock-spire-quests",
		pack = "guides",
		title = "Lower Blackrock Spire Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 57 },
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
					{ t = "complete", quest = 3527, title = "The Prophecy of Mosh'aru", note = "Enter the Zul'Farrak Dungeon with Your Group" },
				},
			},
			{
				note = "He is the second boss of the dungeon. Follow the path north and then go right when the path splits. Quickly go left afterwards and then north.",
				goals = {
					{ t = "collect", quest = 3527, item = 10660, itemName = "First Mosh'aru Tablet", oi = 1 },
				},
			},
			{
				note = "Continue following the path west to reach the room with a large pyramid on the western side. Follow the path southeast to reach the large room with a pool in the center. She walks around this area.",
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
					{ t = "turnin", quest = 3527, title = "The Prophecy of Mosh'aru", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
					{ t = "accept", quest = 4787, title = "The Ancient Egg", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
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
				note = "Use it next to the skeleton laying on the ground in the Sanctum of the Fallen God. After entering the dungeon, follow the left path and go up three large sets of stairs, immediately go right to follow a short hallway to reach the upper level of The Pit of Sacrifice and jump down. Follow the southwestern path to reach the Sanctum of the Fallen God. Use it to put out the braziers in each corner of the room. It will spawn after the four Eternal Flames have been extinguished.",
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
				goals = {
					{ t = "complete", quest = 3528, title = "The God Hakkar", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3528, title = "The God Hakkar", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5065, title = "The Lost Tablets of Mosh'aru", npc = 10460, npcName = "Prospector Ironboot", map = 1446, x = 66.89, y = 24.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1423, x = 56.27, y = 15.93 },
					{ t = "collect", quest = 5065, item = 12412, itemName = "Fourth Mosh'aru Tablet", oi = 2, map = 1423, x = 63.74, y = 10.23, f = "e" },
				},
			},
			{
				note = "At the top of the temple.",
				goals = {
					{ t = "collect", quest = 5065, item = 12411, itemName = "Third Mosh'aru Tablet", oi = 1, map = 1423, x = 63.45, y = 7.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5065, title = "The Lost Tablets of Mosh'aru", npc = 10460, npcName = "Prospector Ironboot", map = 1446, x = 66.89, y = 24.03, f = "e" },
					{ t = "accept", quest = 4788, title = "The Final Tablets", npc = 10460, npcName = "Prospector Ironboot", map = 1446, x = 66.89, y = 24.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4866, title = "Mother's Milk", npc = 9563, npcName = "Ragged John", map = 1428, x = 65.01, y = 23.77, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "accept", quest = 4729, title = "Kibler's Exotic Pets", npc = 10260, npcName = "Kibler", map = 1428, x = 65.88, y = 21.92, f = "e" },
					{ t = "accept", quest = 4862, title = "En-Ay-Es-Tee-Why", npc = 10260, npcName = "Kibler", map = 1428, x = 65.88, y = 21.92, f = "e" },
				},
			},
			{
				note = "He patrols around the area. Click through the dialogue.",
				goals = {
					{ t = "collect", item = 12563, itemName = "Warlord Goretooth's Command", map = 1418, x = 5.82, y = 47.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 12563, itemName = "Warlord Goretooth's Command" },
					{ t = "accept", quest = 4903, title = "Warlord's Command", npc = 9077, npcName = "Warlord Goretooth", map = 1418, x = 5.8, y = 47.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4981, title = "Operative Bijou", npc = 9080, npcName = "Lexlort", map = 1418, x = 5.87, y = 47.64, f = "e" },
				},
			},
			{
				note = "At the top of the tower.",
				goals = {
					{ t = "accept", quest = 4724, title = "The Pack Mistress", npc = 9081, npcName = "Galamav the Marksman", map = 1418, x = 5.96, y = 47.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "complete", quest = 4788, title = "The Final Tablets", note = "Enter the Blackrock Spire Dungeon with Your Group" },
				},
			},
			{
				note = "He patrols around Hordemar City. After entering the dungeon, follow the path right in the Hall of Blackhand to reach Hordemar City.",
				goals = {
					{ t = "accept", quest = 4867, title = "Urok Doomhowl", npc = 10799, npcName = "Warosh" },
				},
			},
			{
				note = "It is standing upright in a wooden weapon rack along the left wall after crossing the second bridge in Hordemar City. If someone else in your group looted it you can skip this step.",
				goals = {
					{ t = "collect", quest = 4867, item = 12533, itemName = "Roughshod Pike" },
				},
			},
			{
				note = "Once you pass the second bridge, jump into the groove in the ground. Bijou will be down there.",
				goals = {
					{ t = "turnin", quest = 4981, title = "Operative Bijou", npc = 10257, npcName = "Bijou" },
					{ t = "accept", quest = 4982, title = "Bijou's Belongings", npc = 10257, npcName = "Bijou" },
				},
			},
			{
				note = "It looks like a small wooden and metal chest on the lowest level of Hordemar City. It can be found anywhere from Hordemar to the Skitterweb Tunnels.",
				goals = {
					{ t = "collect", quest = 4982, item = 12345, itemName = "Bijou's Belongings", oi = 1 },
				},
			},
			{
				note = "She is down in a groove in Hordemar City.",
				goals = {
					{ t = "turnin", quest = 4982, title = "Bijou's Belongings", npc = 10257, npcName = "Bijou" },
					{ t = "accept", quest = 4983, title = "Bijou's Reconnaissance Report", npc = 10257, npcName = "Bijou" },
				},
			},
			{
				label = "Collect_Unadorned_Seal_of_Ascension",
				along = true,
				goals = {
					{ t = "collect", quest = 4742, item = 12219, itemName = "Unadorned Seal of Ascension" },
				},
			},
			{
				note = "Run up the ramp near where you entered Lower Blackrock Spire. A little way closer to the entrance of the dungeon, just before the area where Warosh patrols.",
				goals = {
					{ t = "accept", quest = 4742, title = "Seal of Ascension", npc = 10296, npcName = "Vaelan" },
				},
			},
			{
				note = "Cross the two bridges into Hordemar City, then jump down to where Bijou is. Run down the ramp, then back up directly across. Run up the stairs to the left. On the far side of the wall in the room with Shadow Hunter Vosh'gajin.",
				goals = {
					{ t = "collect", quest = 4788, item = 12740, itemName = "Fifth Mosh'aru Tablet", oi = 1 },
				},
			},
			{
				note = "Follow the ramps back down to the lowest level of Tazz'Alaor. Follow the path in the southwestern corner of the room.",
				goals = {
					{ t = "kill", quest = 4903, npc = 9237, target = "War Master Voone", oi = 3 },
				},
			},
			{
				note = "Follow the ramps back down to the lowest level of Tazz'Alaor. Follow the path in the southwestern corner of the room. This isn't a 100% drop rate. You may need to roll against group members to get this.",
				goals = {
					{ t = "collect", quest = 4742, item = 12335, itemName = "Gemstone of Smolderthorn", oi = 2 },
				},
			},
			{
				note = "On the wall in the room with War Master Voone.",
				goals = {
					{ t = "collect", quest = 4788, item = 12741, itemName = "Sixth Mosh'aru Tablet", oi = 2 },
				},
			},
			{
				note = "Return to the upper level of the dungeon again and proceed through Hordemar City. Continue past the groove in the ground where Bijou is and go west with all of the ogres to reach Mok'Doom. He is in the back of the room along the north side.",
				goals = {
					{ t = "kill", quest = 4903, npc = 9196, target = "Highlord Omokk", oi = 2 },
				},
			},
			{
				note = "Return to the upper level of the dungeon again and proceed through Hordemar City. Continue past the groove in the ground where Bijou is and go west with all of the ogres to reach Mok'Doom. He is in the back of the room along the north side. This isn't a 100% drop rate. You may need to roll against group members to get this.",
				goals = {
					{ t = "collect", quest = 4867, item = 12534, itemName = "Omokk's Head" },
					{ t = "collect", quest = 4742, item = 12336, itemName = "Gemstone of Spirestone", oi = 1 },
				},
			},
			{
				note = "In the lower part of the dungeon, in the upper level of the Skitterweb Tunnels. If you are able to dispel the poison, make sure you don't.",
				goals = {
					{ t = "complete", quest = 4866, title = "Mother's Milk", note = "Gain the \"Mother's Milk\" Buff" },
				},
			},
			{
				label = "Destroy_15_Spire_Spider_Eggs",
				along = true,
				note = "In the upper level of the Skitterweb Tunnels.",
				goals = {
					{ t = "collect", quest = 4862, item = 12530, itemName = "Spire Spider Egg", count = 15, oi = 1 },
				},
			},
			{
				note = "Use it near the pile of bones up the ramp past Mother Smolderweb. It looks like a large pile of skulls in Hordemar City. He will appear after a wave of ogres.",
				goals = {
					{ t = "use", item = 12534, itemName = "Omokk's Head" },
					{ t = "collect", quest = 4867, item = 12712, itemName = "Warosh's Mojo", oi = 1 },
				},
			},
			{
				note = "Use it on a Bloodaxe Worg Pup. They are in the same room as Halycon. After killing Urok Doomhowl, follow the path southwest down the hallway past a room of scorpions on your right. Go through the doorway, up the stairs and then go right to reach Halycon's Lair.",
				goals = {
					{ t = "use", item = 12262, itemName = "Empty Worg Pup Cage" },
					{ t = "collect", quest = 4729, item = 12263, itemName = "Caged Worg Pup", oi = 1 },
				},
			},
			{
				note = "Inside Halycon's Lair.",
				goals = {
					{ t = "kill", quest = 4724, npc = 10220, target = "Halycon", oi = 1 },
				},
			},
			{
				note = "Final boss of Lower Blackrock Spire, inside the Chamber of Battle. After killing Halycon, go up the first small set of stairs on your left in the hallway room before Halycon's Lair. Cross this room and continue up the small set of stairs on the opposite side, continue forward to reach the Chamber of Battle.",
				goals = {
					{ t = "kill", quest = 4903, npc = 9568, target = "Overlord Wyrmthalak", oi = 1 },
				},
			},
			{
				note = "Final boss of Lower Blackrock Spire, inside the Chamber of Battle. After killing Halycon, go up the first small set of stairs on your left in the hallway room before Halycon's Lair. Cross this room and continue up the small set of stairs on the opposite side, continue forward to reach the Chamber of Battle. This isn't a 100% drop rate. You may need to roll against group members to get this.",
				goals = {
					{ t = "collect", quest = 4742, item = 12337, itemName = "Gemstone of Bloodaxe", oi = 3 },
				},
			},
			{
				label = "Important_Blackrock_Documents",
				along = true,
				note = "They can be found in four spots: Room with Overlord Wyrmthalak. In the room with Master Voone. In the room with Highlord Omokk. Next to Urok's Tribute Pile.",
				goals = {
					{ t = "collect", quest = 4903, item = 12562, itemName = "Important Blackrock Documents", oi = 4 },
				},
			},
			{
				note = "He patrols near the start of Lower Blackrock Spire.",
				goals = {
					{ t = "turnin", quest = 4867, title = "Urok Doomhowl", npc = 10799, npcName = "Warosh" },
				},
			},
			{
				note = "Run up the ramp near where you entered Lower Blackrock Spire.",
				goals = {
					{ t = "turnin", quest = 4742, title = "Seal of Ascension", npc = 10296, npcName = "Vaelan" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 4788, title = "The Final Tablets", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 4866, title = "Mother's Milk", note = "Return to Ragged John", map = 1428, x = 65.01, y = 23.77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4866, title = "Mother's Milk", npc = 9563, npcName = "Ragged John", map = 1428, x = 65.01, y = 23.77, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "turnin", quest = 4729, title = "Kibler's Exotic Pets", npc = 10260, npcName = "Kibler", map = 1428, x = 65.88, y = 21.92, f = "e" },
					{ t = "turnin", quest = 4862, title = "En-Ay-Es-Tee-Why", npc = 10260, npcName = "Kibler", map = 1428, x = 65.88, y = 21.92, f = "e" },
				},
			},
			{
				note = "He patrols around the area.",
				goals = {
					{ t = "turnin", quest = 4903, title = "Warlord's Command", npc = 9077, npcName = "Warlord Goretooth", map = 1418, x = 5.82, y = 47.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4983, title = "Bijou's Reconnaissance Report", npc = 9080, npcName = "Lexlort", map = 1418, x = 5.87, y = 47.64, f = "e" },
				},
			},
			{
				note = "At the top of the tower.",
				goals = {
					{ t = "turnin", quest = 4724, title = "The Pack Mistress", npc = 9081, npcName = "Galamav the Marksman", map = 1418, x = 5.96, y = 47.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4788, title = "The Final Tablets", npc = 10460, npcName = "Prospector Ironboot", map = 1446, x = 66.89, y = 24.03, f = "e" },
				},
			},
		},
	})
end

