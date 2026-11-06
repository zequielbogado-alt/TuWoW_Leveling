-- TuWoW_Leveling — Guides/Dungeons_15.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-scholomance-quests",
		pack = "guides",
		title = "Scholomance Quests (Parte 1/2)",
		category = "Dungeons",
		faction = "Alliance",
		next = "zygor/dungeons/a-scholomance-quests-part-2",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 50 },
				},
			},
			{
				note = "He's a Human that walks around in a large path around Stormwind.",
				goals = {
					{ t = "accept", quest = 5091, title = "A Call to Arms: The Plaguelands!", npc = 2198, npcName = "Crier Goodman", map = 1453, x = 56.4, y = 74.1, f = "e" },
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
				note = "This quest requires you to progress through the Upper Blackrock Spire dungeon. You will likely need a 10 person raid group to complete the quest.",
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "complete", quest = 4734, title = "Egg Freezing", note = "Enter the Blackrock Spire Dungeon with Your Group" },
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
				goals = {
					{ t = "complete", quest = 4734, title = "Egg Freezing", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4734, title = "Egg Freezing", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
					{ t = "accept", quest = 4735, title = "Egg Collection", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
				},
			},
			{
				note = "This quest requires you to progress through the Upper Blackrock Spire dungeon. You will likely need a 10 person raid group to complete the quest.",
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "complete", quest = 4735, title = "Egg Collection", note = "Enter the Blackrock Spire Dungeon with Your Group" },
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
					{ t = "accept", quest = 5522, title = "Leonid Barthalomew", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5522, title = "Leonid Barthalomew", npc = 11036, npcName = "Leonid Barthalomew the Revered", map = 1423, x = 71.89, y = 48.29, f = "e" },
					{ t = "accept", quest = 5531, title = "Betina Bigglezink", npc = 11036, npcName = "Leonid Barthalomew the Revered", map = 1423, x = 71.89, y = 48.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5531, title = "Betina Bigglezink", npc = 11035, npcName = "Betina Bigglezink", map = 1423, x = 71.66, y = 49.93, f = "e" },
					{ t = "accept", quest = 5529, title = "Plagued Hatchlings", npc = 11035, npcName = "Betina Bigglezink", map = 1423, x = 71.66, y = 49.93, f = "e" },
					{ t = "accept", quest = 4771, title = "Dawn's Gambit", npc = 11035, npcName = "Betina Bigglezink", map = 1423, x = 71.66, y = 49.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5091, title = "A Call to Arms: The Plaguelands!", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
					{ t = "accept", quest = 5092, title = "Clear the Way", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5092, npc = 1783, target = "Skeletal Flayer", count = 10, oi = 1, map = 1422, x = 48.51, y = 81.13, f = "e" },
				},
			},
			{
				label = "Kill_Slavering_Ghouls",
				along = true,
				goals = {
					{ t = "kill", quest = 5092, npc = 1791, target = "Slavering Ghoul", count = 10, oi = 2, map = 1422, x = 48.51, y = 81.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5092, title = "Clear the Way", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
					{ t = "accept", quest = 5097, title = "All Along the Watchtowers", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
				},
			},
			{
				note = "Use it in front of the tower entrance. Be careful, there is an elite enemy inside the tower. Avoid the doorway, making sure the elite inside can't see you. You can get closer to the tower safely, if the enemy inside can't see you.",
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1422, x = 49.22, y = 73.14 },
					{ t = "use", item = 12815, itemName = "Beacon Torch" },
					{ t = "complete", quest = 5097, title = "All Along the Watchtowers", note = "Mark Tower Four", map = 1422, x = 46.7, y = 71.1, f = "e" },
				},
			},
			{
				note = "Use it in front of the tower entrance. Be careful, there is an elite enemy inside the tower. Avoid the doorway, making sure the elite inside can't see you. You can get closer to the tower safely, if the enemy inside can't see you.",
				goals = {
					{ t = "use", item = 12815, itemName = "Beacon Torch" },
					{ t = "complete", quest = 5097, title = "All Along the Watchtowers", note = "Mark Tower One", map = 1422, x = 40.13, y = 71.52, f = "e" },
				},
			},
			{
				note = "Use it in front of the tower entrance. Be careful, there is an elite enemy inside the tower. Avoid the doorway, making sure the elite inside can't see you. You can get closer to the tower safely, if the enemy inside can't see you.",
				goals = {
					{ t = "use", item = 12815, itemName = "Beacon Torch" },
					{ t = "complete", quest = 5097, title = "All Along the Watchtowers", note = "Mark Tower Two", map = 1422, x = 42.44, y = 66.27, f = "e" },
				},
			},
			{
				note = "Use it in front of the tower entrance. Be careful, there is an elite enemy inside the tower. Avoid the doorway, making sure the elite inside can't see you. You can get closer to the tower safely, if the enemy inside can't see you.",
				goals = {
					{ t = "use", item = 12815, itemName = "Beacon Torch" },
					{ t = "complete", quest = 5097, title = "All Along the Watchtowers", note = "Mark Tower Three", map = 1422, x = 44.22, y = 63.37, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5097, title = "All Along the Watchtowers", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
				},
			},
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 55 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5533, title = "Scholomance", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5533, title = "Scholomance", npc = 11056, npcName = "Alchemist Arbington", map = 1422, x = 42.67, y = 83.77, f = "e" },
					{ t = "accept", quest = 5537, title = "Skeletal Fragments", npc = 11056, npcName = "Alchemist Arbington", map = 1422, x = 42.67, y = 83.77, f = "e" },
				},
			},
			{
				note = "Only enemies that look like skeletons will drop the quest item.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1422, x = 46.57, y = 81.32 },
					{ t = "collect", quest = 5537, item = 14619, itemName = "Skeletal Fragments", count = 15, oi = 1, map = 1422, x = 50.35, y = 78.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1422, x = 46.58, y = 81.33 },
					{ t = "turnin", quest = 5537, title = "Skeletal Fragments", npc = 11056, npcName = "Alchemist Arbington", map = 1422, x = 42.67, y = 83.77, f = "e" },
					{ t = "accept", quest = 5538, title = "Mold Rhymes With...", npc = 11056, npcName = "Alchemist Arbington", map = 1422, x = 42.67, y = 83.77, f = "e" },
				},
			},
			{
				note = "Turning this quest in will cost 15 gold.",
				goals = {
					{ t = "turnin", quest = 5538, title = "Mold Rhymes With...", npc = 5411, npcName = "Krinkle Goodsteel", map = 1446, x = 51.46, y = 28.82, f = "e" },
					{ t = "accept", quest = 5801, title = "Fire Plume Forged", npc = 5411, npcName = "Krinkle Goodsteel", map = 1446, x = 51.46, y = 28.82, f = "e" },
				},
			},
			{
				note = "These are made with the Mining Profession. It requires 1 Thorium Ore each. You can also purchase these from the Auction House.",
				goals = {
					{ t = "collect", quest = 5801, item = 12359, itemName = "Thorium Bar", count = 2 },
				},
			},
			{
				note = "You must be in the lake of lava.",
				goals = {
					{ t = "use", item = 14644, itemName = "Skeleton Key Mold" },
					{ t = "collect", quest = 5801, item = 14645, itemName = "Unfinished Skeleton Key", oi = 1, map = 1449, x = 48.78, y = 47.19, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5801, title = "Fire Plume Forged", npc = 11056, npcName = "Alchemist Arbington", map = 1422, x = 42.67, y = 83.77, f = "e" },
					{ t = "accept", quest = 5803, title = "Araj's Scarab", npc = 11056, npcName = "Alchemist Arbington", map = 1422, x = 42.67, y = 83.77, f = "e" },
				},
			},
			{
				note = "You may need help with this.",
				goals = {
					{ t = "collect", quest = 5803, item = 14610, itemName = "Araj's Scarab", oi = 1, map = 1422, x = 45.27, y = 69.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5803, title = "Araj's Scarab", npc = 11056, npcName = "Alchemist Arbington", map = 1422, x = 42.67, y = 83.77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5505, title = "The Key to Scholomance", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5343, title = "Barov Family Fortune", npc = 11023, npcName = "Weldon Barov", map = 1422, x = 43.46, y = 83.73, f = "e" },
				},
			},
			{
				note = "Click through the dialogue.",
				goals = {
					{ t = "accept", quest = 5382, title = "Doctor Theolen Krastinov, the Butcher", npc = 11216, npcName = "Eva Sarkhoff", map = 1422, x = 70.22, y = 73.72, f = "e" },
				},
			},
			{
				note = "This requires the Skeleton Key from the quest \"The Key to Scholomance\".",
				goals = {
					{ t = "complete", quest = 5343, title = "Barov Family Fortune", note = "Enter the Scholomance Dungeon with Your Group" },
				},
			},
			{
				note = "It looks like an open white scroll laying on a table in the northeastern part of The Reliquary. After entering the dungeon, follow the path forward to enter The Reliquary.",
				goals = {
					{ t = "collect", quest = 5343, item = 13450, itemName = "The Deed to Southshore", oi = 3 },
				},
			},
			{
				note = "It looks like an open white scroll laying on a table to the left as you enter The Great Ossuary. Proceed through the Iron Gate on the north side of The Reliquary to reach the Chamber of Summoning. Continue straight through the dungeon to reach The Great Ossuary.",
				goals = {
					{ t = "collect", quest = 5343, item = 13451, itemName = "The Deed to Tarren Mill", oi = 4 },
				},
			},
			{
				label = "Slay_20_Plagued_Hatchlings",
				along = true,
				note = "They are inside The Great Ossuary.",
				goals = {
					{ t = "kill", quest = 5529, npc = 10678, target = "Plagued Hatchling", count = 20, oi = 1 },
				},
			},
			{
				note = "He is downstairs inside The Great Ossuary. Jump down into one of the holes on the sides of the room to reach the lower level. This key is required to progress further into the dungeon. If someone else in the group already has it you can skip this step.",
				goals = {
					{ t = "collect", quest = 5343, item = 13873, itemName = "Viewing Room Key" },
				},
			},
			{
				note = "Use it in The Viewing Room. Go back upstairs after killing Rattlegore and head north in The Great Ossuary to return to the previous room (the map will just say Scholomance). Go right through the Iron Gate, clear the room and open the Viewing Room Door using the key. Clear the room before using it.",
				goals = {
					{ t = "use", item = 12368, itemName = "Dawn's Gambit" },
					{ t = "complete", quest = 4771, title = "Dawn's Gambit", note = "Place the Dawn's Gmabit" },
				},
			},
			{
				note = "In the Viewing room.",
				goals = {
					{ t = "complete", quest = 4771, title = "Dawn's Gambit", note = "Slay Vectus" },
				},
			},
			{
				note = "It looks like an open white scroll sitting on a ledge near the boss on the southwestern part of The Laboratory. Run back up the stairs to return to The Viewing Room. Go through the Iron Gate on the south side of The Viewing Room and go down the stairs to reach The Laboratory.",
				goals = {
					{ t = "collect", quest = 5343, item = 13471, itemName = "The Deed to Brill", oi = 1 },
				},
			},
			{
				note = "They look like a pile of bloodied bones in the northern part of the room with Doctor Theolen Krastinov. Go through the Iron Gate on the eastern side of The Viewing Room and go down the stairs to reach the Headmaster's Study. Staying on the upper level of the Headmaster's Study, head around the outside of the room and enter the room across from the entrance on the eastern side.",
				goals = {
					{ t = "complete", quest = 5382, title = "Doctor Theolen Krastinov, the Butcher", note = "Burn the Remains of Eva Sarkhoff" },
				},
			},
			{
				note = "They look like a pile of bloodied bones in the southeastern part of the room with Doctor Theolen Krastinov.",
				goals = {
					{ t = "complete", quest = 5382, title = "Doctor Theolen Krastinov, the Butcher", note = "Burn the Remains of Lucien Sarkhoff" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5382, npc = 11261, target = "Doctor Theolen Krastinov", oi = 1 },
				},
			},
			{
				note = "It looks like an open white scroll laying on a table on the eastern side of the Barov Family Vault. Return to the Headmaster's Study and jump down, then turn around and enter the eastern room to reach the Barov Family Vault.",
				goals = {
					{ t = "collect", quest = 5343, item = 13448, itemName = "The Deed to Caer Darrow", oi = 2 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5343, title = "Barov Family Fortune", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5382, title = "Doctor Theolen Krastinov, the Butcher", npc = 11216, npcName = "Eva Sarkhoff", map = 1422, x = 70.22, y = 73.72, f = "e" },
					{ t = "accept", quest = 5515, title = "Krastinov's Bag of Horrors", npc = 11216, npcName = "Eva Sarkhoff", map = 1422, x = 70.22, y = 73.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5343, title = "Barov Family Fortune", npc = 11023, npcName = "Weldon Barov", map = 1422, x = 43.46, y = 83.73, f = "e" },
				},
			},
			{
				note = "This will unlock the next quest, which drops from inside Scholomance.",
				goals = {
					{ t = "turnin", quest = 5529, title = "Plagued Hatchlings", npc = 11035, npcName = "Betina Bigglezink", map = 1423, x = 71.66, y = 49.94, f = "e" },
					{ t = "turnin", quest = 4771, title = "Dawn's Gambit", npc = 11035, npcName = "Betina Bigglezink", map = 1423, x = 71.66, y = 49.93, f = "e" },
				},
			},
			{
				note = "This requires the Skeleton Key from the quest \"The Key to Scholomance\".",
				goals = {
					{ t = "complete", quest = 5515, title = "Krastinov's Bag of Horrors", note = "Enter the Scholomance Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the dungeon, follow the path forward to enter The Reliquary. Go left and proceed through the Iron Gate on the north side of the room to reach the Chamber of Summoning. Proceed into the next main room and then follow the path to the right and go down the stairs. Jandice is in the northeastern part of this room.",
				goals = {
					{ t = "collect", quest = 5515, item = 13725, itemName = "Krastinov's Bag of Horrors", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5582, item = 13920, itemName = "Healthy Dragon Scale" },
				},
			},
			{
				goals = {
					{ t = "use", item = 13920, itemName = "Healthy Dragon Scale" },
					{ t = "accept", quest = 5582, title = "Healthy Dragon Scale" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5515, title = "Krastinov's Bag of Horrors", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5515, title = "Krastinov's Bag of Horrors", npc = 11216, npcName = "Eva Sarkhoff", map = 1422, x = 70.22, y = 73.72, f = "e" },
					{ t = "accept", quest = 5384, title = "Kirtonos the Herald", npc = 11216, npcName = "Eva Sarkhoff", map = 1422, x = 70.22, y = 73.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5582, title = "Healthy Dragon Scale", npc = 11035, npcName = "Betina Bigglezink", map = 1423, x = 71.66, y = 49.94, f = "e" },
				},
			},
			{
				note = "This requires the Skeleton Key from the quest \"The Key to Scholomance\".",
				goals = {
					{ t = "complete", quest = 5384, title = "Kirtonos the Herald", note = "Enter the Scholomance Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the dungeon, follow the path forward to enter The Reliquary. Go left and proceed through the Iron Gate on the north side of the room to reach the Chamber of Summoning. Follow the path out to the right to the balcony. Clear the Chamber of Summoning before doing this. Drag him back into the gate.",
				goals = {
					{ t = "kill", quest = 5384, npc = 10506, target = "Kirtonos the Herald", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5384, title = "Kirtonos the Herald", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5384, title = "Kirtonos the Herald", npc = 11216, npcName = "Eva Sarkhoff", map = 1422, x = 70.22, y = 73.72, f = "e" },
				},
			},
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 57 },
				},
			},
			{
				note = "You must have the Spectral Essence equipped to see him.",
				goals = {
					{ t = "use", item = 13544, itemName = "Spectral Essence" },
					{ t = "accept", quest = 5461, title = "The Human, Ras Frostwhisper", npc = 11286, npcName = "Magistrate Marduke", map = 1422, x = 70.57, y = 74.11, f = "e" },
				},
			},
			{
				note = "At the top of the tower. If it's not there, check in the fireplaces of nearby buildings.",
				goals = {
					{ t = "collect", quest = 5461, item = 13585, itemName = "Keepsake of Remembrance", oi = 1, map = 1417, x = 17.91, y = 69.41, f = "e" },
				},
			},
			{
				note = "You must have the Spectral Essence equipped to see him.",
				goals = {
					{ t = "use", item = 13544, itemName = "Spectral Essence" },
					{ t = "turnin", quest = 5461, title = "The Human, Ras Frostwhisper", npc = 11286, npcName = "Magistrate Marduke", map = 1422, x = 70.57, y = 74.11, f = "e" },
					{ t = "accept", quest = 5462, title = "The Dying, Ras Frostwhisper", npc = 11286, npcName = "Magistrate Marduke", map = 1422, x = 70.57, y = 74.11, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5462, title = "The Dying, Ras Frostwhisper", npc = 11036, npcName = "Leonid Barthalomew the Revered", map = 1423, x = 71.88, y = 48.29, f = "e" },
					{ t = "accept", quest = 5463, title = "Menethil's Gift", npc = 11036, npcName = "Leonid Barthalomew the Revered", map = 1423, x = 71.88, y = 48.29, f = "e" },
				},
			},
			{
				note = "This requires the Key to the City, which drops from Magistrate barthilas in Stratholme - Live.",
				goals = {
					{ t = "goto", text = "click Elders' Square Service Gate", map = 1423, x = 41.43, y = 17.71 },
				},
			},
			{
				note = "It looks like a large orange circular symbol on the floor in the room with Baron Rivendare. Follow the path north and then east through the two Gauntlet Gates to reach the Gauntlet. This requires the Key to the City or a Rogue with leveled lockpicking to open. Continue following the path north and then west to reach Slaughter Square. Enter the building in Slaughter Square and go downstairs.",
				goals = {
					{ t = "turnin", quest = 5463, title = "Menethil's Gift" },
					{ t = "accept", quest = 5464, title = "Menethil's Gift" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5464, title = "Menethil's Gift", note = "Click Here to Continue" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5463, title = "Menethil's Gift", npc = 11036, npcName = "Leonid Barthalomew the Revered", map = 1423, x = 71.88, y = 48.29, f = "e" },
					{ t = "accept", quest = 5465, title = "Soulbound Keepsake", npc = 11036, npcName = "Leonid Barthalomew the Revered", map = 1423, x = 71.88, y = 48.29, f = "e" },
				},
			},
			{
				note = "You must have the Spectral Essence equipped to see him.",
				goals = {
					{ t = "use", item = 13544, itemName = "Spectral Essence" },
					{ t = "turnin", quest = 5465, title = "Soulbound Keepsake", npc = 11286, npcName = "Magistrate Marduke", map = 1422, x = 70.57, y = 74.11, f = "e" },
					{ t = "accept", quest = 5466, title = "The Lich, Ras Frostwhisper", npc = 11286, npcName = "Magistrate Marduke", map = 1422, x = 70.57, y = 74.11, f = "e" },
				},
			},
			{
				note = "This requires the Skeleton Key from the quest \"The Key to Scholomance\".",
				goals = {
					{ t = "complete", quest = 5466, title = "The Lich, Ras Frostwhisper", note = "Enter the Scholomance Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the dungeon, follow the path forward to enter The Reliquary. Go left and proceed through the Iron Gate on the north side of the room to reach the Chamber of Summoning. Continue straight through the dungeon to reach The Great Ossuary. Jump down into one of the holes on the sides of the room to reach the lower level with Rattlegore. This key is required to progress further into the dungeon. If someone else in the group already has it you can skip this step.",
				goals = {
					{ t = "collect", quest = 5466, item = 13873, itemName = "Viewing Room Key" },
				},
			},
			{
				note = "Use it on Ras Frostwhisper. He is inside The Laboratory. Go back upstairs after killing Rattlegore and head north in The Great Ossuary to return to the previous room (the map will just say Scholomance). Go right through the Iron Gate, clear the room and open the Viewing Room Door using the key. Continue through the Iron Gate on the south side of The Viewing Room and go down the stairs to reach The Laboratory.",
				goals = {
					{ t = "use", item = 13752, itemName = "Soulbound Keepsake" },
					{ t = "collect", quest = 5466, item = 13626, itemName = "Human Head of Ras Frostwhisper", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5466, title = "The Lich, Ras Frostwhisper", note = "Click Here to Continue" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-scholomance-quests-part-2",
		pack = "guides",
		title = "Scholomance Quests (Parte 2/2)",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "You must have the Spectral Essence equipped to see him.",
				goals = {
					{ t = "use", item = 13544, itemName = "Spectral Essence" },
					{ t = "turnin", quest = 5466, title = "The Lich, Ras Frostwhisper", npc = 11286, npcName = "Magistrate Marduke", map = 1422, x = 70.57, y = 74.11, f = "e" },
				},
			},
		},
	})
end

