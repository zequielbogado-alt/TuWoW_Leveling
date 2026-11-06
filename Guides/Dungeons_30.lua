-- TuWoW_Leveling — Guides/Dungeons_30.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-upper-blackrock-spire-quests",
		pack = "guides",
		title = "Upper Blackrock Spire Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1458,
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
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.89, y = 77.39 },
					{ t = "accept", quest = 4769, title = "Vivian Lagrave and the Darkstone Tablet", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 50.14, y = 67.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4769, title = "Vivian Lagrave and the Darkstone Tablet", npc = 9078, npcName = "Shadowmage Vivian Lagrave", map = 1418, x = 2.9, y = 47.75, f = "e" },
					{ t = "accept", quest = 4768, title = "The Darkstone Tablet", npc = 9078, npcName = "Shadowmage Vivian Lagrave", map = 1418, x = 2.9, y = 47.75, f = "e" },
				},
			},
			{
				note = "He patrols around town. He must be at the top of the tower to accept this quest.",
				goals = {
					{ t = "accept", quest = 4903, title = "Warlord's Command", npc = 9077, npcName = "Warlord Goretooth", map = 1418, x = 5.82, y = 47.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4726, title = "Broodling Essence", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.24, y = 24.0, f = "e" },
				},
			},
			{
				note = "Use it on Broodling enemies around this area. They look like small flying dragons. They look like red floating crystals that appear above their corpses after you kill them.",
				goals = {
					{ t = "use", item = 12284, itemName = "Draco-Incarcinatrix 900" },
					{ t = "collect", quest = 4726, item = 12283, itemName = "Broodling Essence", count = 8, oi = 1, map = 1428, x = 59.26, y = 32.49, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 63.92, y = 29.88 },
					{ t = "turnin", quest = 4726, title = "Broodling Essence", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
					{ t = "accept", quest = 4808, title = "Felnok Steelspring", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4808, title = "Felnok Steelspring", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.63, y = 38.61, f = "e" },
					{ t = "accept", quest = 4809, title = "Chillwind Horns", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.63, y = 38.61, f = "e" },
				},
			},
			{
				note = "They look like chimeras. They share spawn points with the bears, so kill them too.",
				goals = {
					{ t = "collect", quest = 4809, item = 12444, itemName = "Uncracked Chillwind Horn", count = 8, oi = 1, map = 1452, x = 59.97, y = 21.54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4809, title = "Chillwind Horns", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.63, y = 38.61, f = "e" },
					{ t = "accept", quest = 4810, title = "Return to Tinkee", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.63, y = 38.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4810, title = "Return to Tinkee", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4907, title = "Tinkee Steamboil", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.63, y = 38.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4907, title = "Tinkee Steamboil", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
					{ t = "accept", quest = 4734, title = "Egg Freezing", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6804, title = "Poisoned Water", npc = 13278, npcName = "Duke Hydraxis", map = 1447, x = 79.28, y = 73.69, f = "e" },
					{ t = "accept", quest = 6805, title = "Stormers and Rumblers", npc = 13278, npcName = "Duke Hydraxis", map = 1447, x = 79.28, y = 73.69, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6805, npc = 11744, target = "Dust Stormer", count = 15, oi = 1, map = 1451, x = 19.84, y = 22.23, f = "e" },
				},
			},
			{
				label = "Kill_15_Desert_Rumbler",
				along = true,
				goals = {
					{ t = "kill", quest = 6805, npc = 11746, target = "Desert Rumbler", count = 15, oi = 2, map = 1451, x = 19.84, y = 22.23, f = "e" },
				},
			},
			{
				note = "Use it on Plague Ravagers and Blighted Surge around this area.",
				goals = {
					{ t = "use", item = 17310, itemName = "Aspect of Neptulon" },
					{ t = "collect", quest = 6804, item = 17309, itemName = "Discordant Bracers", count = 12, oi = 1, map = 1423, x = 54.69, y = 67.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6804, title = "Poisoned Water", npc = 13278, npcName = "Duke Hydraxis", map = 1447, x = 79.28, y = 73.69, f = "e" },
					{ t = "turnin", quest = 6805, title = "Stormers and Rumblers", npc = 13278, npcName = "Duke Hydraxis", map = 1447, x = 79.28, y = 73.69, f = "e" },
					{ t = "accept", quest = 6821, title = "Eye of the Emberseer", npc = 13278, npcName = "Duke Hydraxis", map = 1447, x = 79.28, y = 73.69, f = "e" },
				},
			},
			{
				note = "This quest requires you to progress through the Upper Blackrock Spire dungeon. You will likely need a 10 person raid group to complete the quest.",
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "complete", quest = 6602, title = "Blood of the Black Dragon Champion", note = "Enter the Blackrock Spire Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the dungeon, follow the path right in the Hall of Blackhand to reach Hordemar City. Proceed across the bridges through Hordemar City, continue past the groove in the ground where Bijou is and go west with all of the ogres to reach Mok'Doom. He is in the back of the room along the north side.",
				goals = {
					{ t = "kill", quest = 4903, npc = 9196, target = "Highlord Omokk", oi = 2 },
				},
			},
			{
				note = "Backtrack back to Hordemar City and jump down into the groove in the ground where Bijou is. Head south from Bijou to follow a short path and reach Tazz'Alaor. Follow the ramps down to the lowest level of Tazz'Alaor. Follow the path in the southwestern corner of the room.",
				goals = {
					{ t = "kill", quest = 4903, npc = 9237, target = "War Master Voone", oi = 3 },
				},
			},
			{
				note = "Leave Tazz'Alaor through the northeastern exit to enter the lower level of Hordemar City. Follow the path east and south to reach the Skitterweb Tunnels. Follow the path up and out of the Skitterweb Tunnels to reenter the upper levels of Hordemar City. Follow the path up, kill the group of ogres and then follow the path south along the western wall through the short hallway and up the small set of stairs. Turn right twice to go up another small set of stairs. Cross this room and continue up the small set of stairs on the opposite side, continue forward to reach the Chamber of Battle.",
				goals = {
					{ t = "kill", quest = 4903, npc = 9568, target = "Overlord Wyrmthalak", oi = 1 },
				},
			},
			{
				label = "Collect_Important_Blackrock_Documents",
				along = true,
				note = "It looks like a small open scroll laying on the ground behind one of these three bosses. Check behind each boss after killing them to see if it's there.",
				goals = {
					{ t = "collect", quest = 4903, item = 12562, itemName = "Important Blackrock Documents", oi = 4 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 4903, title = "Warlord's Command", note = "Click Here to Continue" },
				},
			},
			{
				note = "He patrols around town. He must be at the top of the tower to accept this quest.",
				goals = {
					{ t = "turnin", quest = 4903, title = "Warlord's Command", npc = 9077, npcName = "Warlord Goretooth", map = 1418, x = 5.82, y = 47.53, f = "e" },
					{ t = "accept", quest = 4941, title = "Eitrigg's Wisdom", npc = 9077, npcName = "Warlord Goretooth", map = 1418, x = 5.82, y = 47.53, f = "e" },
				},
			},
			{
				note = "This quest requires you to progress through the Upper Blackrock Spire dungeon. You will likely need a 10 person raid group to complete the quest.",
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "complete", quest = 4768, title = "The Darkstone Tablet", note = "Enter the Blackrock Spire Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the dungeon, follow the path to the left to enter the Upper Blackrock Spire. Someone in your group must have the Seal of Ascension in order to open the door. Clear the enemies in the first room to unlock the door to the next room. Kill the Blackhand Incarcerators to release Pyroguard Emberseer.",
				goals = {
					{ t = "collect", quest = 6821, item = 17322, itemName = "Eye of the Emberseer", oi = 1 },
				},
			},
			{
				note = "Use it on the eggs in The Rookery, just past Pyroguard Emberseer. Don't get too close or they will hatch if they aren't frozen.",
				goals = {
					{ t = "use", item = 12286, itemName = "Eggscilloscope Prototype" },
					{ t = "complete", quest = 4734, title = "Egg Freezing", note = "Test the Eggscilloscope Prototype" },
				},
			},
			{
				note = "It looks like a square silver tablet in the center of The Rookery, just before the ramp.",
				goals = {
					{ t = "collect", quest = 4768, item = 12358, itemName = "Darkstone Tablet", oi = 1 },
				},
			},
			{
				note = "Proceed through the upper level of The Rookery to reach the Hall of Blackhand. Go east in the Hall of Blackhand and jump down into the Blackrock Stadium to start the encounter. Kill the enemies that attack, then finally Gyth and Warchief Rend Blackhand. Exit the stadium to the south. It's on the ledge just past the door after the Gyth and Warchief Rend Blackhand encounter.",
				goals = {
					{ t = "accept", quest = 5160, title = "The Matron Protectorate", npc = 10740, npcName = "Awbee" },
				},
			},
			{
				note = "Head east up the stairs from Awbee and go right into The Furnace, followed by a left to reach The Beast. This is a rare drop and may take multiple attempts to get. If you don't have Skinning or you don't want to do this you can skip this step but you will have to skip the next quest. This requires level 315 Skinning to accomplish. You can achieve this with the \"Enchant Gloves - Skinning\" along with Finkle's Skinner equipped.",
				goals = {
					{ t = "collect", item = 12709, itemName = "Finkle's Skinner" },
					{ t = "use", item = 12709, itemName = "Finkle's Skinner" },
				},
			},
			{
				note = "He will appear after skinning The Beast.",
				goals = {
					{ t = "accept", quest = 5047, title = "Finkle Einhorn, At Your Service!", npc = 10776, npcName = "Finkle Einhorn" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 4768, title = "The Darkstone Tablet", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4768, title = "The Darkstone Tablet", npc = 9078, npcName = "Shadowmage Vivian Lagrave", map = 1418, x = 2.9, y = 47.75, f = "e" },
				},
			},
			{
				note = "He patrols around town. He must be at the top of the tower to accept this quest.",
				goals = {
					{ t = "turnin", quest = 4903, title = "Warlord's Command", npc = 9077, npcName = "Warlord Goretooth", map = 1418, x = 5.82, y = 47.53, f = "e" },
					{ t = "accept", quest = 4941, title = "Eitrigg's Wisdom", npc = 9077, npcName = "Warlord Goretooth", map = 1418, x = 5.8, y = 47.53, f = "e" },
				},
			},
			{
				note = "Inside the building. Click through the dialogue.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.25, y = 36.95 },
					{ t = "complete", quest = 4941, title = "Eitrigg's Wisdom", note = "Council with Eitrigg", map = 1454, x = 34.28, y = 39.35, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4941, title = "Eitrigg's Wisdom", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
					{ t = "accept", quest = 4974, title = "For The Horde!", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4734, title = "Egg Freezing", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
					{ t = "accept", quest = 4735, title = "Egg Collection", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5047, title = "Finkle Einhorn, At Your Service!", npc = 10637, npcName = "Malyfous Darkhammer", map = 1452, x = 60.99, y = 38.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1452, x = 58.09, y = 51.54 },
					{ t = "goto", text = "Continue up the path", map = 1452, x = 55.88, y = 53.87 },
					{ t = "goto", text = "Continue up the path", map = 1452, x = 54.7, y = 54.48 },
					{ t = "goto", text = "Jump down here", map = 1452, x = 53.56, y = 53.23 },
					{ t = "goto", text = "Jump up here", map = 1452, x = 54.16, y = 52.01 },
					{ t = "turnin", quest = 5160, title = "The Matron Protectorate", npc = 10929, npcName = "Haleh", map = 1452, x = 54.54, y = 51.2, f = "e" },
					{ t = "accept", quest = 5161, title = "Wrath of the Blue Flight", npc = 10929, npcName = "Haleh", map = 1452, x = 54.54, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5161, title = "Wrath of the Blue Flight", npc = 10929, npcName = "Haleh", map = 1452, x = 54.54, y = 51.2, f = "e" },
					{ t = "accept", quest = 5162, title = "Wrath of the Blue Flight", npc = 10929, npcName = "Haleh", map = 1452, x = 54.54, y = 51.2, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 5162, title = "Wrath of the Blue Flight", npc = 10976, npcName = "Jeziba", map = 1422, x = 39.38, y = 66.78, f = "e" },
					{ t = "accept", quest = 5164, title = "Catalogue of the Wayward", npc = 10976, npcName = "Jeziba", map = 1422, x = 39.38, y = 66.78, f = "e" },
				},
			},
			{
				note = "It looks like a blue book on the bedside table upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 5164, title = "Catalogue of the Wayward", map = 1422, x = 39.35, y = 66.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6821, title = "Eye of the Emberseer", npc = 13278, npcName = "Duke Hydraxis", map = 1447, x = 79.28, y = 73.69, f = "e" },
				},
			},
			{
				note = "This quest requires you to progress through the Upper Blackrock Spire dungeon. You will likely need a 10 person raid group to complete the quest.",
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "complete", quest = 4974, title = "For The Horde!", note = "Enter the Blackrock Spire Dungeon with Your Group" },
				},
			},
			{
				note = "Use it on the eggs in The Rookery, just past Pyroguard Emberseer. Use it to freeze the eggs. Don't get too close or they will hatch if they aren't frozen. Use it to collect the eggs.",
				goals = {
					{ t = "use", item = 12286, itemName = "Eggscilloscope Prototype" },
					{ t = "use", item = 12287, itemName = "Collectronic Module" },
					{ t = "collect", quest = 4735, item = 12241, itemName = "Collected Dragon Egg", count = 8, oi = 1 },
				},
			},
			{
				note = "Proceed through the upper level of The Rookery to reach the Hall of Blackhand. Go east in the Hall of Blackhand and jump down into the Blackrock Stadium to start the encounter. Kill the enemies that attack, then finally Gyth and Warchief Rend Blackhand.",
				goals = {
					{ t = "collect", quest = 4974, item = 12630, itemName = "Head of Rend Blackhand", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 4974, title = "For The Horde!", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4735, title = "Egg Collection", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1454, x = 51.98, y = 57.66 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.25, y = 36.95 },
					{ t = "turnin", quest = 4974, title = "For The Horde!", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
					{ t = "accept", quest = 6566, title = "What the Wind Carries", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
				},
			},
			{
				note = "Inside the building. Click through the dialogue.",
				goals = {
					{ t = "complete", quest = 6566, title = "What the Wind Carries", note = "Listen to Thrall's Tale", map = 1454, x = 31.74, y = 37.83, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6566, title = "What the Wind Carries", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
					{ t = "accept", quest = 6567, title = "The Champion of the Horde", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
				},
			},
			{
				label = "Rexxar_Champion_of_the_Horde_Path_One",
				note = "He walks along the road through Stonetalon Mountains, Desolace and Feralas. He's an Orc that walks with a pet bear.",
				goals = {
					{ t = "turnin", quest = 6567, title = "The Champion of the Horde", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
			{
				note = "He walks along the road through Stonetalon Mountains, Desolace and Feralas. He's an Orc that walks with a pet bear.",
				goals = {
					{ t = "turnin", quest = 6567, title = "The Champion of the Horde", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
			{
				label = "Accept_Testament_of_Power",
				goals = {
					{ t = "accept", quest = 6568, title = "The Testament of Rexxar", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6568, title = "The Testament of Rexxar", npc = 11872, npcName = "Myranda the Hag", map = 1422, x = 50.79, y = 77.85, f = "e" },
					{ t = "accept", quest = 6569, title = "Oculus Illusions", npc = 11872, npcName = "Myranda the Hag", map = 1422, x = 50.79, y = 77.85, f = "e" },
				},
			},
			{
				note = "This quest requires you to progress through the Upper Blackrock Spire dungeon. You will likely need a 10 person raid group to complete the quest.",
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "complete", quest = 6569, title = "Oculus Illusions", note = "Enter the Blackrock Spire Dungeon with Your Group" },
				},
			},
			{
				note = "There's a few at the very beginning of the dungeon and a lot more in The Rookery.",
				goals = {
					{ t = "collect", quest = 6569, item = 16786, itemName = "Black Dragonspawn Eye", count = 20, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6569, title = "Oculus Illusions", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6569, title = "Oculus Illusions", npc = 11872, npcName = "Myranda the Hag", map = 1422, x = 50.79, y = 77.85, f = "e" },
					{ t = "accept", quest = 6570, title = "Emberstrife", npc = 11872, npcName = "Myranda the Hag", map = 1422, x = 50.79, y = 77.85, f = "e" },
				},
			},
			{
				note = "It should be in your bags.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1445, x = 54.54, y = 84.73 },
					{ t = "complete", quest = 6570, title = "Emberstrife", note = "Equip the Amulet of Draconic Subversion", map = 1445, x = 55.09, y = 85.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16787, itemName = "Amulet of Draconic Subversion" },
					{ t = "complete", quest = 6570, title = "Emberstrife", note = "Become Disguised", map = 1445, x = 55.09, y = 85.62, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1445, x = 55.43, y = 86.98 },
					{ t = "goto", text = "Continue following the path", map = 1445, x = 57.76, y = 86.86 },
					{ t = "turnin", quest = 6570, title = "Emberstrife", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
					{ t = "accept", quest = 6582, title = "The Test of Skulls, Scryer", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
					{ t = "accept", quest = 6583, title = "The Test of Skulls, Somnus", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
					{ t = "accept", quest = 6584, title = "The Test of Skulls, Chronalis", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
				},
			},
			{
				note = "It flies around this area. Killing it will require a full group.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1446, x = 61.28, y = 50.59 },
					{ t = "collect", quest = 6584, item = 16871, itemName = "The Skull of Chronalis", oi = 1, map = 1446, x = 64.07, y = 48.75, f = "e" },
				},
			},
			{
				note = "Inside the cave. It flies around this area. Killing it will require a full group.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1452, x = 59.3, y = 43.21 },
					{ t = "goto", text = "Enter the cave", map = 1452, x = 57.15, y = 49.93 },
					{ t = "goto", text = "Follow the path down", map = 1452, x = 54.65, y = 49.94 },
					{ t = "collect", quest = 6582, item = 16869, itemName = "The Skull of Scryer", oi = 1, map = 1452, x = 52.87, y = 56.08, f = "e" },
				},
			},
			{
				note = "It flies around this area, between these two spots. Killing it will require a full group.",
				goals = {
					{ t = "collect", quest = 6583, item = 16870, itemName = "The Skull of Somnus", oi = 1, map = 1435, x = 80.44, y = 68.4, f = "e" },
				},
			},
			{
				note = "It should be in your bags.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1445, x = 54.54, y = 84.73 },
					{ t = "complete", quest = 6584, title = "The Test of Skulls, Chronalis", note = "Equip the Amulet of Draconic Subversion", map = 1445, x = 55.09, y = 85.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16787, itemName = "Amulet of Draconic Subversion" },
					{ t = "complete", quest = 6584, title = "The Test of Skulls, Chronalis", note = "Become Disguised", map = 1445, x = 55.09, y = 85.62, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1445, x = 55.43, y = 86.98 },
					{ t = "goto", text = "Continue following the path", map = 1445, x = 57.76, y = 86.86 },
					{ t = "turnin", quest = 6582, title = "The Test of Skulls, Scryer", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
					{ t = "turnin", quest = 6583, title = "The Test of Skulls, Somnus", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
					{ t = "turnin", quest = 6584, title = "The Test of Skulls, Chronalis", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
					{ t = "accept", quest = 6585, title = "The Test of Skulls, Axtroz", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
				},
			},
			{
				note = "It flies back and forth between these two gates. Killing it will require a full group.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1437, x = 74.18, y = 47.32 },
					{ t = "collect", quest = 6585, item = 16872, itemName = "The Skull of Axtroz", oi = 1, map = 1437, x = 82.81, y = 48.88, f = "e" },
				},
			},
			{
				note = "It should be in your bags.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1445, x = 54.54, y = 84.73 },
					{ t = "complete", quest = 6585, title = "The Test of Skulls, Axtroz", note = "Equip the Amulet of Draconic Subversion", map = 1445, x = 55.09, y = 85.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16787, itemName = "Amulet of Draconic Subversion" },
					{ t = "complete", quest = 6585, title = "The Test of Skulls, Axtroz", note = "Become Disguised", map = 1445, x = 55.09, y = 85.62, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1445, x = 55.43, y = 86.98 },
					{ t = "goto", text = "Continue following the path", map = 1445, x = 57.76, y = 86.86 },
					{ t = "turnin", quest = 6585, title = "The Test of Skulls, Axtroz", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
					{ t = "accept", quest = 6601, title = "Ascension...", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
				},
			},
			{
				label = "Rexxar_Ascension_Path_One",
				note = "He walks along the road through Stonetalon Mountains, Desolace and Feralas. He's an Orc that walks with a pet bear.",
				goals = {
					{ t = "turnin", quest = 6601, title = "Ascension...", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
			{
				note = "He walks along the road through Stonetalon Mountains, Desolace and Feralas. He's an Orc that walks with a pet bear.",
				goals = {
					{ t = "turnin", quest = 6601, title = "Ascension...", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
			{
				label = "Accept_Blood_of_the_Black_Dragon_Champion",
				goals = {
					{ t = "accept", quest = 6602, title = "Blood of the Black Dragon Champion", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
			{
				note = "This quest requires you to progress through the Upper Blackrock Spire dungeon. You will likely need a 10 person raid group to complete the quest.",
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "complete", quest = 6602, title = "Blood of the Black Dragon Champion", note = "Enter the Blackrock Spire Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the dungeon, follow the path to the left to enter the Upper Blackrock Spire. Someone in your group must have the Seal of Ascension in order to open the door. Follow the path in the dungeon to reach The Rookery. Proceed through the upper level of The Rookery to reach the Hall of Blackhand. Go east in the Hall of Blackhand and jump down into the Blackrock Stadium to start the encounter. Kill the enemies that attack, then finally Gyth and Warchief Rend Blackhand and exit the stadium to the south. After exiting the stadium go left, right and right again then continue west to reach the Spire Throne.",
				goals = {
					{ t = "collect", quest = 6602, item = 16663, itemName = "Blood of the Black Dragon Champion", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6602, title = "Blood of the Black Dragon Champion", note = "Click Here to Continue" },
				},
			},
			{
				label = "Rexxar_Blood_of_the_Black_Dragon_Champion_Path_One",
				note = "He walks along the road through Stonetalon Mountains, Desolace and Feralas. He's an Orc that walks with a pet bear. Completing this quest will award you with a Darkfire Amulet, which will allow you to enter the Onyxia's Lair raid. You must keep it in your inventory in order to enter the raid instance.",
				goals = {
					{ t = "turnin", quest = 6602, title = "Blood of the Black Dragon Champion", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
			{
				note = "He walks along the road through Stonetalon Mountains, Desolace and Feralas. He's an Orc that walks with a pet bear. Completing this quest will award you with a Darkfire Amulet, which will allow you to enter the Onyxia's Lair raid. You must keep it in your inventory in order to enter the raid instance.",
				goals = {
					{ t = "turnin", quest = 6602, title = "Blood of the Black Dragon Champion", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-blackwing-lair-attunement",
		pack = "guides",
		title = "Blackwing Lair Attunement",
		category = "Dungeons",
		folder = "Raid Attunements",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1427,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 55 },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "goto", text = "Follow the path up", map = 1427, x = 48.83, y = 63.66 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 48.91, y = 63.92 },
					{ t = "goto", text = "Follow the path", map = 1427, x = 48.95, y = 63.93 },
					{ t = "goto", text = "Follow the path down", map = 1427, x = 49.01, y = 64.12 },
					{ t = "collect", item = 18987, itemName = "Blackhand's Command", map = 1427, x = 49.12, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 18987, itemName = "Blackhand's Command" },
					{ t = "accept", quest = 7761, title = "Blackhand's Command" },
				},
			},
			{
				note = "This quest requires you to progress through the Upper Blackrock Spire dungeon. You will likely need a 10 person raid group to complete the quest.",
				goals = {
					{ t = "complete", quest = 7761, title = "Blackhand's Command", note = "Enter the Blackrock Spire Dungeon with Your Group" },
				},
			},
			{
				note = "Use the Dungeon guides to accomplish this. It looks like a large glowing blue totem behind General Drakkisath. Turning this in will allow you to teleport directly to Blackwing Lair by clicking the Orb of Command. It is located down the southern hallway outside of the dungeon entrance.",
				goals = {
					{ t = "turnin", quest = 7761, title = "Blackhand's Command", npc = 10363, npcName = "General Drakkisath" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-molten-core-attunement",
		pack = "guides",
		title = "Molten Core Attunement",
		category = "Dungeons",
		folder = "Raid Attunements",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1427,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 55 },
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
					{ t = "accept", quest = 7848, title = "Attunement to the Core", npc = 14387, npcName = "Lothos Riftwaker", map = 1427, x = 48.41, y = 63.82, f = "e" },
				},
			},
			{
				note = "This quest requires you to progress through the Blackrock Depths dungeon. You will likely need a full group to complete the quest.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1427, x = 26.88, y = 83.87 },
					{ t = "complete", quest = 7848, title = "Attunement to the Core", note = "Enter the Blackrock Depths Dungeon with Your Group" },
				},
			},
			{
				note = "The fastest way to reach him is to pick the locked door to the left after entering the dungeon. Continue straight through the Detention Block and into the Dark Iron Hallway. Follow the path north east through the Dark Iron Hallway and through the Shadowforge City. If you are doing a normal dungeon run you can use the Dungeon guides to accomplish this.",
				goals = {
					{ t = "collect", quest = 7848, item = 18412, itemName = "Core Fragment", oi = 1 },
				},
			},
			{
				note = "Turning this in will allow you to teleport directly to Molten Core by talking to Lothos Riftwaker.",
				goals = {
					{ t = "turnin", quest = 7848, title = "Attunement to the Core", npc = 14387, npcName = "Lothos Riftwaker", map = 1427, x = 32.1, y = 94.7, f = "e" },
				},
			},
		},
	})
end

