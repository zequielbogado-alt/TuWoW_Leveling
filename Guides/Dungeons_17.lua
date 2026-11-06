-- TuWoW_Leveling — Guides/Dungeons_17.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-upper-blackrock-spire-quests",
		pack = "guides",
		title = "Upper Blackrock Spire Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 57 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 73.33, y = 46.41 },
					{ t = "accept", quest = 4766, title = "Mayara Brightwing", npc = 2285, npcName = "Count Remington Ridgewell", map = 1453, x = 76.93, y = 47.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4766, title = "Mayara Brightwing", npc = 9565, npcName = "Mayara Brightwing", map = 1428, x = 84.84, y = 69.12, f = "e" },
					{ t = "accept", quest = 4764, title = "Doomrigger's Clasp", npc = 9565, npcName = "Mayara Brightwing", map = 1428, x = 84.84, y = 69.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4726, title = "Broodling Essence", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.24, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 82.89, y = 63.37 },
					{ t = "accept", quest = 4182, title = "Dragonkin Menace", npc = 9562, npcName = "Helendis Riverhorn", map = 1428, x = 85.82, y = 68.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4182, npc = 7047, target = "Black Broodling", count = 15, oi = 1, map = 1428, x = 89.18, y = 53.85, f = "e" },
				},
			},
			{
				label = "Slay_Black_Dragonspawns",
				along = true,
				note = "These enemies are Elite, you may need a group to complete this.",
				goals = {
					{ t = "kill", quest = 4182, npc = 7040, target = "Black Dragonspawn", count = 10, oi = 2, map = 1428, x = 92.05, y = 53.82, f = "e" },
				},
			},
			{
				label = "Slay_Black_Drake",
				along = true,
				note = "These enemies are Elite, you may need a group to complete this.",
				goals = {
					{ t = "kill", quest = 4182, npc = 7044, target = "Black Drake", oi = 3, map = 1428, x = 89.18, y = 53.85, f = "e" },
				},
			},
			{
				label = "Slay_Black_Wrymkins",
				along = true,
				note = "These enemies are Elite, you may need a group to complete this.",
				goals = {
					{ t = "kill", quest = 4182, npc = 7041, target = "Black Wyrmkin", count = 4, oi = 4, map = 1428, x = 92.05, y = 53.82, f = "e" },
				},
			},
			{
				label = "Broodling_Essence",
				along = true,
				note = "Use it on Broodling enemies around this area. They look like small flying dragons. They look like red floating crystals that appear above their corpses after you kill them.",
				goals = {
					{ t = "use", item = 12284, itemName = "Draco-Incarcinatrix 900" },
					{ t = "collect", quest = 4726, item = 12283, itemName = "Broodling Essence", count = 8, oi = 1, map = 1428, x = 59.26, y = 32.49, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 82.89, y = 63.37 },
					{ t = "turnin", quest = 4182, title = "Dragonkin Menace", npc = 9562, npcName = "Helendis Riverhorn", map = 1428, x = 85.82, y = 68.95, f = "e" },
					{ t = "accept", quest = 4183, title = "The True Masters", npc = 9562, npcName = "Helendis Riverhorn", map = 1428, x = 85.82, y = 68.95, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1433, x = 24.42, y = 46.07 },
					{ t = "turnin", quest = 4183, title = "The True Masters", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.89, y = 44.45, f = "e" },
					{ t = "accept", quest = 4184, title = "The True Masters", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.89, y = 44.45, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 73.21, y = 46.56 },
					{ t = "turnin", quest = 4184, title = "The True Masters", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.2, y = 38.35, f = "e" },
					{ t = "accept", quest = 4185, title = "The True Masters", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.2, y = 38.35, f = "e" },
				},
			},
			{
				note = "Inside the building. Click through the dialogue.",
				goals = {
					{ t = "complete", quest = 4185, title = "The True Masters", note = "Receive Advice From Lady Prestor", map = 1453, x = 80.1, y = 38.17, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4185, title = "The True Masters", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.2, y = 38.35, f = "e" },
					{ t = "accept", quest = 4186, title = "The True Masters", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.2, y = 38.35, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1433, x = 24.42, y = 46.07 },
					{ t = "turnin", quest = 4186, title = "The True Masters", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.89, y = 44.45, f = "e" },
					{ t = "accept", quest = 4223, title = "The True Masters", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.89, y = 44.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 82.89, y = 63.37 },
					{ t = "turnin", quest = 4223, title = "The True Masters", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
					{ t = "accept", quest = 4224, title = "The True Masters", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
				},
			},
			{
				note = "Click through the dialogue.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 63.86, y = 30.11 },
					{ t = "complete", quest = 4224, title = "The True Masters", note = "Hear Ragged John's Story", map = 1428, x = 65.02, y = 23.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 82.89, y = 63.37 },
					{ t = "turnin", quest = 4224, title = "The True Masters", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
					{ t = "accept", quest = 4241, title = "Marshal Windsor", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run down the chain", map = 1427, x = 37.25, y = 94.39 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 35.91, y = 10.0 },
				},
			},
			{
				note = "This quest requires you to progress through the Blackrock Depths dungeon. You will likely need a full group to complete the quest.",
				goals = {
					{ t = "goto", text = "Continue down and run down the chain", map = 1427, x = 34.86, y = 99.2 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 32.55, y = 94.94 },
					{ t = "goto", text = "Follow the path", map = 1427, x = 26.88, y = 83.87 },
					{ t = "complete", quest = 4241, title = "Marshal Windsor", note = "Enter the Blackrock Depths Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the dungeon, go straight into the Detention Block and then take the first right. Follow this path around until you can go left into a room at the back of this long hallway. You need this key to unlock Marshal Windsor's cell door. If someone else in the group already has the key you can skip this step. A Rogue can also pick the lock.",
				goals = {
					{ t = "collect", quest = 4241, item = 11140, itemName = "Prison Cell Key" },
				},
			},
			{
				note = "He is in a prison cell inside the Detention Block. Leave High Interrogator Gerstahn's room and go left, then open the first Cell Door on your right.",
				goals = {
					{ t = "turnin", quest = 4241, title = "Marshal Windsor", npc = 9023, npcName = "Marshal Windsor" },
					{ t = "accept", quest = 4242, title = "Abandoned Hope", npc = 9023, npcName = "Marshal Windsor" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 4242, title = "Abandoned Hope", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 82.89, y = 63.37 },
					{ t = "turnin", quest = 4242, title = "Abandoned Hope", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run down the chain", map = 1427, x = 37.25, y = 94.39 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 35.91, y = 10.0 },
				},
			},
			{
				note = "This quest requires you to progress through the Blackrock Depths dungeon. You will likely need a full group to complete the quest.",
				goals = {
					{ t = "goto", text = "Continue down and run down the chain", map = 1427, x = 34.86, y = 99.2 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 32.55, y = 94.94 },
					{ t = "goto", text = "Follow the path", map = 1427, x = 26.88, y = 83.87 },
				},
			},
			{
				note = "Just clear the first few rooms of the dungeon, killing all the Anvilrage dwarves and resetting the instance if needed, until you get the item drop.",
				goals = {
					{ t = "collect", item = 11446, itemName = "A Crumpled Up Note" },
				},
			},
			{
				goals = {
					{ t = "use", item = 11446, itemName = "A Crumpled Up Note" },
					{ t = "accept", quest = 4264, title = "A Crumpled Up Note" },
				},
			},
			{
				note = "After entering the dungeon, go straight into the Detention Block and then take the first right. Follow this path around until you can go left into a room at the back of this long hallway. You need this key to unlock Marshal Windsor's cell door. If someone else in the group already has the key you can skip this step. A Rogue can also pick the lock.",
				goals = {
					{ t = "collect", quest = 4264, item = 11140, itemName = "Prison Cell Key" },
				},
			},
			{
				note = "He is in a prison cell inside the Detention Block. Leave High Interrogator Gerstahn's room and go left, then open the first Cell Door on your right.",
				goals = {
					{ t = "turnin", quest = 4264, title = "A Crumpled Up Note", npc = 9023, npcName = "Marshal Windsor" },
					{ t = "accept", quest = 4282, title = "A Shred of Hope", npc = 9023, npcName = "Marshal Windsor" },
				},
			},
			{
				note = "Run north through the Detention Block and unlock the East Garrison Door to enter the East Garrison. In the lower part of this room, click the Shadowforge Lock, then run up the two sets of stairs and follow the hallway on the left just before the third set of stairs. Follow the path through the hallway to reach the West Garrison. When you reach a room with stairs on your left, go down them to find General Angerforge.",
				goals = {
					{ t = "collect", quest = 4282, item = 11464, itemName = "Marshal Windsor's Lost Information", oi = 1 },
				},
			},
			{
				note = "Go back up the stairs next to General Angerforge and continue north to reach The Manufactory and Golem Lord Argelmach.",
				goals = {
					{ t = "collect", quest = 4282, item = 11465, itemName = "Marshal Windsor's Lost Information", oi = 2 },
				},
			},
			{
				note = "He is in a prison cell inside the Detention Block. After entering the dungeon enter the first room and then take the third tunnel on the right. If you enter the Halls of the Law you went too far. Make sure everyone turns this quest in before anyone accepts the next one. Accepting Jail Break! will start the escort quest and other party members will not be able to interact with Marshal Windsor.",
				goals = {
					{ t = "turnin", quest = 4282, title = "A Shred of Hope", npc = 9023, npcName = "Marshal Windsor" },
					{ t = "accept", quest = 4322, title = "Jail Break!", npc = 9023, npcName = "Marshal Windsor" },
				},
			},
			{
				note = "He will walk around the Detention Block and Halls of the Law, so clearing these beforehand can be helpful. There will be a few cells he will have you open. Sometimes you'll have to fight the prisoners or talk to a friendly NPC to free them. Eventually he will walk back to the dungeon entrance and escape.",
				goals = {
					{ t = "complete", quest = 4322, title = "Jail Break!", note = "Protect Marshal Windor During your Escape" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 4322, title = "Jail Break!", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 82.89, y = 63.37 },
					{ t = "turnin", quest = 4322, title = "Jail Break!", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
					{ t = "accept", quest = 6402, title = "Stormwind Rendezvous", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6402, title = "Stormwind Rendezvous", map = 1453, x = 70.43, y = 85.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6402, title = "Stormwind Rendezvous", npc = 12580, npcName = "Reginald Windsor", map = 1453, x = 73.61, y = 91.04, f = "e" },
					{ t = "accept", quest = 6403, title = "The Great Masquerade", npc = 12580, npcName = "Reginald Windsor", map = 1453, x = 73.61, y = 91.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6403, title = "The Great Masquerade", note = "Follow Reginald Windsor through Stormwind", map = 1453, x = 72.3, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6403, title = "The Great Masquerade", map = 1453, x = 73.6, y = 91.1, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 73.2, y = 46.59 },
					{ t = "complete", quest = 6403, title = "The Great Masquerade", note = "Complete Reginald Windsor's March", map = 1453, x = 80.1, y = 38.32, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6403, title = "The Great Masquerade", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.2, y = 38.35, f = "e" },
					{ t = "accept", quest = 6501, title = "The Dragon's Eye", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.2, y = 38.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1453, x = 69.13, y = 47.56 },
					{ t = "turnin", quest = 4726, title = "Broodling Essence", npc = 10267, npcName = "Tinkee Steamboil", map = 1453, x = 70.15, y = 43.0, f = "e" },
					{ t = "accept", quest = 4808, title = "Felnok Steelspring", npc = 10267, npcName = "Tinkee Steamboil", map = 1453, x = 70.15, y = 43.0, f = "e" },
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
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1452, x = 59.3, y = 43.21 },
					{ t = "goto", text = "Enter the cave", map = 1452, x = 57.15, y = 49.93 },
					{ t = "goto", text = "Follow the path down", map = 1452, x = 54.65, y = 49.94 },
					{ t = "goto", text = "Step onto the Blue Rune", map = 1452, x = 52.65, y = 55.78 },
					{ t = "complete", quest = 6501, title = "The Dragon's Eye", note = "Teleport to Haleh", map = 1452, x = 54.56, y = 51.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6501, title = "The Dragon's Eye", npc = 10929, npcName = "Haleh", map = 1452, x = 54.55, y = 51.2, f = "e" },
					{ t = "accept", quest = 6502, title = "Drakefire Amulet", npc = 10929, npcName = "Haleh", map = 1452, x = 54.55, y = 51.2, f = "e" },
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
					{ t = "complete", quest = 6502, title = "Drakefire Amulet", note = "Enter the Blackrock Spire Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the dungeon, follow the path right in the Hall of Blackhand to reach Hordemar City. Proceed across the bridges through Hordemar City and jump down into the groove in the ground where Bijou is. Jump down to the west from Bijou and follow the path west around Hordemar City, eventually heading south to reach the Skitterweb Tunnels. Follow the path up and out of the Skitterweb Tunnels to reenter the upper levels of Hordemar City. Follow the path up, kill the group of ogres and then follow the path south along the western wall through the short hallway and up the small set of stairs. Turn right twice to go up another small set of stairs. Cross this room and continue up the small set of stairs on the opposite side, continue forward to reach the Chamber of Battle.",
				goals = {
					{ t = "collect", quest = 5089, item = 12780, itemName = "General Drakkisath's Command" },
				},
			},
			{
				goals = {
					{ t = "use", item = 12780, itemName = "General Drakkisath's Command" },
					{ t = "accept", quest = 5089, title = "General Drakkisath's Command" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5089, title = "General Drakkisath's Command", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5089, title = "General Drakkisath's Command", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.01, f = "e" },
					{ t = "accept", quest = 5102, title = "General Drakkisath's Demise", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.01, f = "e" },
				},
			},
			{
				note = "This quest requires you to progress through the Upper Blackrock Spire dungeon. You will likely need a 10 person raid group to complete the quest.",
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "complete", quest = 6502, title = "Drakefire Amulet", note = "Enter the Blackrock Spire Dungeon with Your Group" },
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
				note = "At the center of The Rookery, just before the ramp.",
				goals = {
					{ t = "collect", quest = 4764, item = 12352, itemName = "Doomrigger's Clasp", oi = 1 },
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
					{ t = "complete", quest = 4764, title = "Doomrigger's Clasp", note = "Click Here to Continue" },
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
					{ t = "turnin", quest = 4764, title = "Doomrigger's Clasp", npc = 9565, npcName = "Mayara Brightwing", map = 1428, x = 84.84, y = 69.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5102, title = "General Drakkisath's Demise", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5047, title = "Finkle Einhorn, At Your Service!", npc = 10637, npcName = "Malyfous Darkhammer", map = 1452, x = 60.99, y = 38.78, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1452, x = 59.3, y = 43.21 },
					{ t = "goto", text = "Enter the cave", map = 1452, x = 57.15, y = 49.93 },
					{ t = "goto", text = "Follow the path down", map = 1452, x = 54.65, y = 49.94 },
					{ t = "goto", text = "Step onto the Blue Rune", map = 1452, x = 52.65, y = 55.78 },
					{ t = "complete", quest = 6502, title = "Drakefire Amulet", note = "Teleport to Haleh", map = 1452, x = 54.56, y = 51.27, f = "e" },
				},
			},
			{
				note = "Completing this quest will award you with a Darkfire Amulet, which will allow you to enter the Onyxia's Lair raid. You must keep it in your inventory in order to enter the raid instance.",
				goals = {
					{ t = "turnin", quest = 6502, title = "Drakefire Amulet", npc = 10929, npcName = "Haleh", map = 1452, x = 54.55, y = 51.2, f = "e" },
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
					{ t = "complete", quest = 6502, title = "Drakefire Amulet", note = "Enter the Blackrock Spire Dungeon with Your Group" },
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
				goals = {
					{ t = "complete", quest = 4735, title = "Egg Collection", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4735, title = "Egg Collection", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-blackwing-lair-attunement",
		pack = "guides",
		title = "Blackwing Lair Attunement",
		category = "Dungeons",
		folder = "Raid Attunements",
		faction = "Alliance",
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
		id = "zygor/dungeons/a-molten-core-attunement",
		pack = "guides",
		title = "Molten Core Attunement",
		category = "Dungeons",
		folder = "Raid Attunements",
		faction = "Alliance",
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

