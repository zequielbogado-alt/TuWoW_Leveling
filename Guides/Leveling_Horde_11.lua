-- TuWoW_Leveling — Guides/Leveling_Horde_11.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-the-barrens-and-stonetalon-mountain-15-21-part-2",
		pack = "guides",
		title = "The Barrens & Stonetalon Mountain (Parte 2/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-the-barrens-and-stonetalon-mountain-15-21-part-3",
		author = "TuWoW & Zygor",
		minLevel = 15,
		maxLevel = 21,
		zone = 1411,
		version = 1,
		steps = {
			{
				note = "On Tazan's Satchel. In your bags.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "use", item = 7208, itemName = "Tazan's Key" },
					{ t = "collect", quest = 1858, item = 7295, itemName = "Tazan's Logbook", oi = 1 },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 1858, title = "The Shattered Hand", npc = 6446, npcName = "Therzok", map = 1454, x = 42.74, y = 53.54, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "The Crossroads", map = 1413, x = 51.99, y = 29.89, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3921, title = "Wenikee Boltbucket", npc = 9316, npcName = "Wenikee Boltbucket", map = 1413, x = 49.05, y = 11.16, f = "e" },
					{ t = "accept", quest = 3922, title = "Nugget Slugs", npc = 9316, npcName = "Wenikee Boltbucket", map = 1413, x = 49.05, y = 11.16, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until it respawns, if missing.",
				goals = {
					{ t = "accept", quest = 858, title = "Ignition", npc = 3439, npcName = "Wizzlecrank's Shredder", map = 1413, x = 56.51, y = 7.45, f = "e" },
				},
			},
			{
				note = "Walks around. Both levels of the platform.",
				goals = {
					{ t = "collect", quest = 858, item = 5050, itemName = "Ignition Key", oi = 1, map = 1413, x = 56.2, y = 8.25, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until it respawns, if missing.",
				goals = {
					{ t = "turnin", quest = 858, title = "Ignition", npc = 3439, npcName = "Wizzlecrank's Shredder", map = 1413, x = 56.51, y = 7.45, f = "e" },
					{ t = "accept", quest = 863, title = "The Escape", npc = 3439, npcName = "Wizzlecrank's Shredder", map = 1413, x = 56.51, y = 7.45, f = "e" },
				},
			},
			{
				note = "Follow and protect Wizzlecrank's Shredder.",
				goals = {
					{ t = "complete", quest = 863, title = "The Escape", note = "Escort Wizzlecrank Out of the Venture Co. Drill Site", map = 1413, x = 55.35, y = 7.7, f = "e" },
				},
			},
			{
				label = "Collect_Nugget_Slugs",
				along = true,
				note = "Grey metal buckets.",
				goals = {
					{ t = "collect", quest = 3922, item = 11143, itemName = "Nugget Slug", count = 15, oi = 1, map = 1413, x = 56.44, y = 8.19, f = "e" },
				},
			},
			{
				note = "Run around the mountain. White lion. Spawns nearby.",
				goals = {
					{ t = "use", item = 10327, itemName = "Horn of Echeyakee" },
					{ t = "collect", quest = 881, item = 5100, itemName = "Echeyakee's Hide", oi = 1, map = 1413, x = 55.85, y = 17.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3922, title = "Nugget Slugs", npc = 9316, npcName = "Wenikee Boltbucket", map = 1413, x = 49.05, y = 11.16, f = "e" },
				},
			},
			{
				label = "Collect_Plainstrider_Kidneys",
				along = true,
				note = "Large walking birds.",
				goals = {
					{ t = "collect", quest = 821, item = 4894, itemName = "Plainstrider Kidney", count = 5, oi = 2, map = 1413, x = 44.95, y = 14.61, f = "e" },
				},
			},
			{
				note = "Top of the mountain.",
				goals = {
					{ t = "goto", text = "Run up the mountain", map = 1413, x = 43.39, y = 13.66 },
				},
			},
			{
				note = "Avoid Sister Rathtalon. Elite green harpy. Flies around. Careful, stealthed enemies.",
				goals = {
					{ t = "collect", quest = 875, item = 5065, itemName = "Harpy Lieutenant Ring", count = 6, oi = 1, map = 1413, x = 38.91, y = 14.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 881, title = "Echeyakee", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.23, y = 31.0, f = "e" },
					{ t = "accept", quest = 905, title = "The Angry Scytheclaws", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.23, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4921, title = "Lost in Battle", npc = 3432, npcName = "Mankrik", map = 1413, x = 51.95, y = 31.58, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "turnin", quest = 875, title = "Harpy Lieutenants", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.62, y = 30.9, f = "e" },
					{ t = "accept", quest = 876, title = "Serena Bloodfeather", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.62, y = 30.9, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2382, title = "Wrenix of Ratchet", npc = 7161, npcName = "Wrenix the Wretched", map = 1413, x = 63.07, y = 36.32, f = "e" },
					{ t = "accept", quest = 2381, title = "Plundering the Plunderers", npc = 7161, npcName = "Wrenix the Wretched", map = 1413, x = 63.07, y = 36.32, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 2381, item = 5060, itemName = "Thieves' Tools", map = 1413, x = 63.12, y = 36.32, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 2381, item = 7970, itemName = "E.C.A.C.", map = 1413, x = 63.12, y = 36.32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 863, title = "The Escape", npc = 3442, npcName = "Sputtervalve", map = 1413, x = 62.98, y = 37.22, f = "e" },
					{ t = "accept", quest = 1483, title = "Ziz Fizziks", npc = 3442, npcName = "Sputtervalve", map = 1413, x = 62.98, y = 37.22, f = "e" },
				},
			},
			{
				note = "Deposit into the bank.",
				goals = {
					{ t = "complete", quest = 821, title = "Chen's Empty Keg", note = "bank Plainstrider Kidney##4894", map = 1413, x = 62.64, y = 37.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 865, title = "Raptor Horns", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
				},
			},
			{
				note = "Grey metal chests. Middle floor inside the ship. Needed for quest soon.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "skill Lockpicking,85", map = 1413, x = 65.07, y = 45.44 },
				},
			},
			{
				note = "A level 50 bird appears after looting a chest. Use the E.C.A.C. on it. Weakens it to level 18.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "complete", quest = 2381, title = "Plundering the Plunderers", note = "Click Here to Continue" },
				},
			},
			{
				note = "Small wooden chest. Middle floor inside the ship. On Polly. Level 50 bird that appears. Weakens it to level 18.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "use", item = 7970, itemName = "E.C.A.C." },
					{ t = "collect", quest = 2381, item = 7968, itemName = "Southsea Treasure", oi = 1, map = 1413, x = 64.95, y = 45.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 888, item = 5077, itemName = "Telescopic Lens", oi = 2, map = 1413, x = 63.58, y = 49.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 888, item = 5076, itemName = "Shipment of Boots", oi = 1, map = 1413, x = 62.63, y = 49.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run around the mountain and follow the path", map = 1413, x = 57.35, y = 52.24 },
					{ t = "collect", quest = 3281, item = 5061, itemName = "Stolen Silver", oi = 1, map = 1413, x = 58.03, y = 53.87, f = "e" },
				},
			},
			{
				label = "Collect_Sunscale_Feathers_And_Intact_Raptor_Horns",
				along = true,
				note = "Purple raptors.",
				goals = {
					{ t = "collect", quest = 905, item = 5165, itemName = "Sunscale Feather", count = 3, map = 1413, x = 57.47, y = 53.71, f = "e" },
					{ t = "collect", quest = 865, item = 5055, itemName = "Intact Raptor Horn", count = 5, oi = 1, map = 1413, x = 57.47, y = 53.71, f = "e" },
				},
			},
			{
				note = "Underwater.",
				goals = {
					{ t = "complete", quest = 877, title = "The Stagnant Oasis", note = "Test the Dried Seeds", map = 1413, x = 55.61, y = 42.74, f = "e" },
				},
			},
			{
				note = "Kill Kolkar enemies in Stagnant Oasis. You'll eventually see a message yelled in chat. Says I am summoned! Intruders, come to my tent and face your death! Means he spawned at this location.",
				goals = {
					{ t = "collect", quest = 851, item = 5023, itemName = "Verog's Head", oi = 1, map = 1413, x = 52.91, y = 41.77, f = "e" },
				},
			},
			{
				label = "Collect_Centaur_Bracers",
				along = true,
				goals = {
					{ t = "collect", quest = 855, item = 5030, itemName = "Centaur Bracers", count = 15, oi = 1, map = 1413, x = 55.17, y = 41.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 905, title = "The Angry Scytheclaws", note = "Visit the Blue Raptor Nest", map = 1413, x = 52.6, y = 46.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 905, title = "The Angry Scytheclaws", note = "Visit the Red Raptor Nest", map = 1413, x = 52.46, y = 46.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 905, title = "The Angry Scytheclaws", note = "Visit the Yellow Raptor Nest", map = 1413, x = 52.02, y = 46.47, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 4921, title = "Lost in Battle", note = "Find Mankrik's Wife", map = 1413, x = 49.33, y = 50.32, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Camp Taurajo", map = 1413, x = 45.58, y = 59.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Camp Taurajo", map = 1413, x = 44.45, y = 59.15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4921, title = "Lost in Battle", npc = 3432, npcName = "Mankrik", map = 1413, x = 51.95, y = 31.58, f = "e" },
					{ t = "accept", quest = 899, title = "Consumed by Hatred", npc = 3432, npcName = "Mankrik", map = 1413, x = 51.95, y = 31.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 877, title = "The Stagnant Oasis", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
					{ t = "accept", quest = 880, title = "Altered Beings", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 905, title = "The Angry Scytheclaws", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.23, y = 31.01, f = "e" },
					{ t = "accept", quest = 3261, title = "Jorn Skyseer", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.23, y = 31.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3281, title = "Stolen Silver", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.93, y = 30.32, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 855, title = "Centaur Bracers", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.34, y = 28.41, f = "e" },
					{ t = "turnin", quest = 851, title = "Verog the Dervish", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.34, y = 28.41, f = "e" },
					{ t = "accept", quest = 852, title = "Hezrul Bloodmark", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.34, y = 28.41, f = "e" },
				},
			},
			{
				note = "Careful, stealthed enemies.",
				goals = {
					{ t = "collect", quest = 876, item = 5067, itemName = "Serena's Head", oi = 1, map = 1413, x = 39.16, y = 12.17, f = "e" },
				},
			},
			{
				note = "Run around the mountain.",
				goals = {
					{ t = "turnin", quest = 1061, title = "The Spirits of Stonetalon", npc = 4049, npcName = "Seereth Stonebreak", map = 1413, x = 35.26, y = 27.88, f = "e" },
					{ t = "accept", quest = 1062, title = "Goblin Invaders", npc = 4049, npcName = "Seereth Stonebreak", map = 1413, x = 35.26, y = 27.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6548, title = "Avenge My Village", npc = 11857, npcName = "Makaba Flathoof", map = 1413, x = 35.19, y = 27.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6548, npc = 11911, target = "Grimtotem Mercenary", count = 6, oi = 2, map = 1442, x = 81.47, y = 88.36, f = "e" },
					{ t = "kill", quest = 6548, npc = 11910, target = "Grimtotem Ruffian", count = 8, oi = 1, map = 1442, x = 81.47, y = 88.36, f = "e" },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "turnin", quest = 6548, title = "Avenge My Village", npc = 11857, npcName = "Makaba Flathoof", map = 1413, x = 35.19, y = 27.79, f = "e" },
					{ t = "accept", quest = 6629, title = "Kill Grundig Darkcloud", npc = 11857, npcName = "Makaba Flathoof", map = 1413, x = 35.19, y = 27.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1442, x = 71.5, y = 88.59 },
					{ t = "kill", quest = 6629, npc = 11858, target = "Grundig Darkcloud", oi = 1, map = 1442, x = 73.65, y = 86.13, f = "e" },
				},
			},
			{
				label = "Kill_Grimtotem_Brutes",
				along = true,
				goals = {
					{ t = "kill", quest = 6629, npc = 11912, target = "Grimtotem Brute", count = 6, oi = 2, map = 1442, x = 75.68, y = 86.41, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until she respawns, if missing. Inside the building.",
				goals = {
					{ t = "accept", quest = 6523, title = "Protect Kaya", npc = 11856, npcName = "Kaya Flathoof", map = 1442, x = 73.48, y = 85.59, f = "e" },
				},
			},
			{
				note = "Follow and protect Kaya Flathoof. Group of 3 enemies attack near end of escort. Kill the Grimtotem Sorcerer first.",
				goals = {
					{ t = "complete", quest = 6523, title = "Protect Kaya", note = "Escort Kaya to Camp Aparaje", map = 1442, x = 77.1, y = 90.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 6461, title = "Blood Feeders", npc = 12816, npcName = "Xen'Zilla", map = 1442, x = 71.24, y = 95.02, f = "e" },
				},
			},
			{
				note = "Green spiders.",
				goals = {
					{ t = "kill", quest = 6461, npc = 4005, target = "Deepmoss Creeper", count = 10, oi = 1, map = 1442, x = 59.4, y = 74.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Sun Rock Retreat", map = 1442, x = 45.13, y = 59.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1483, title = "Ziz Fizziks", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 58.99, y = 62.6, f = "e" },
					{ t = "accept", quest = 1093, title = "Super Reaper 6000", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 58.99, y = 62.6, f = "e" },
				},
			},
			{
				label = "Kill_Deepmoss_Venomspitters",
				along = true,
				note = "Green spiders.",
				goals = {
					{ t = "kill", quest = 6461, npc = 4007, target = "Deepmoss Venomspitter", count = 7, oi = 2, map = 1442, x = 62.02, y = 61.22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1093, item = 5734, itemName = "Super Reaper 6000 Blueprints", oi = 1, map = 1442, x = 62.2, y = 52.0, f = "e" },
				},
			},
			{
				label = "Kill_Venture_Co_Loggers",
				along = true,
				goals = {
					{ t = "kill", quest = 1062, npc = 3989, target = "Venture Co. Logger", count = 15, oi = 1, map = 1442, x = 66.43, y = 55.88, f = "e" },
				},
			},
			{
				note = "Helps reach level 20 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 19,19650", map = 1442, x = 66.43, y = 55.88 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1093, title = "Super Reaper 6000", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 58.99, y = 62.6, f = "e" },
					{ t = "accept", quest = 1094, title = "Further Instructions", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 58.99, y = 62.6, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3261, title = "Jorn Skyseer", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.86, y = 59.14, f = "e" },
					{ t = "accept", quest = 882, title = "Ishamuhale", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.86, y = 59.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 878, title = "Tribes at War", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.55, y = 59.24, f = "e" },
				},
			},
			{
				note = "Grey kodo. Walks around. Multiple locations.",
				goals = {
					{ t = "collect", item = 5099, itemName = "Hoof of Lakota'mani", map = 1413, x = 45.1, y = 52.7, f = "e" },
					{ t = "use", item = 5099, itemName = "Hoof of Lakota'mani" },
					{ t = "accept", quest = 883, title = "Lakota'mani", npc = 3474, npcName = "Lakota'mani", map = 1413, x = 49.4, y = 53.0, f = "e" },
				},
			},
			{
				label = "Collect_Thunder_Lizard_Horn",
				along = true,
				note = "Pink dinosaurs.",
				goals = {
					{ t = "collect", quest = 821, item = 4895, itemName = "Thunder Lizard Horn", oi = 3, map = 1413, x = 48.4, y = 57.2, f = "e" },
				},
			},
			{
				label = "Collect_Blood_Shard_And_Bristleback_Quilboar_Tusks",
				along = true,
				note = "Don't vendor them.",
				goals = {
					{ t = "collect", quest = 5052, item = 5075, itemName = "Blood Shard", map = 1413, x = 52.11, y = 54.81, f = "e" },
					{ t = "collect", quest = 899, item = 5085, itemName = "Bristleback Quilboar Tusk", count = 60, oi = 1, map = 1413, x = 52.11, y = 54.81, f = "e" },
				},
			},
			{
				label = "Kill_Bristleback_Enemies",
				along = true,
				goals = {
					{ t = "kill", quest = 878, npc = 3260, target = "Bristleback Water Seeker", count = 6, oi = 1, map = 1413, x = 52.11, y = 54.81, f = "e" },
					{ t = "kill", quest = 878, npc = 3261, target = "Bristleback Thornweaver", count = 12, oi = 2, map = 1413, x = 52.11, y = 54.81, f = "e" },
					{ t = "kill", quest = 878, npc = 3263, target = "Bristleback Geomancer", count = 12, oi = 3, map = 1413, x = 52.11, y = 54.81, f = "e" },
				},
			},
			{
				note = "Turtles. Underwater and around the water edge.",
				goals = {
					{ t = "collect", quest = 880, item = 5098, itemName = "Altered Snapjaw Shell", count = 8, oi = 1, map = 1413, x = 55.53, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 882, item = 10338, itemName = "Fresh Zhevra Carcass", map = 1413, x = 60.6, y = 35.6, f = "e" },
				},
			},
			{
				note = "Raptor. Appears nearby.",
				goals = {
					{ t = "use", item = 10338, itemName = "Fresh Zhevra Carcass" },
					{ t = "collect", quest = 882, item = 5101, itemName = "Ishamuhale's Fang", oi = 1, map = 1413, x = 59.89, y = 30.29, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2381, title = "Plundering the Plunderers", npc = 7161, npcName = "Wrenix the Wretched", map = 1413, x = 63.07, y = 36.32, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 888, title = "Stolen Booty", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.68, y = 36.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1094, title = "Further Instructions", npc = 3442, npcName = "Sputtervalve", map = 1413, x = 62.98, y = 37.22, f = "e" },
					{ t = "accept", quest = 1095, title = "Further Instructions", npc = 3442, npcName = "Sputtervalve", map = 1413, x = 62.98, y = 37.22, f = "e" },
				},
			},
			{
				note = "Collect from the bank.",
				goals = {
					{ t = "collect", quest = 821, item = 4894, itemName = "Plainstrider Kidney", count = 5, map = 1413, x = 62.64, y = 37.42, f = "e" },
					{ t = "collect", quest = 821, item = 4893, itemName = "Savannah Lion Tusk", count = 5, map = 1413, x = 62.64, y = 37.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 865, title = "Raptor Horns", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 821, title = "Chen's Empty Keg", npc = 3292, npcName = "Brewmaster Drohn", map = 1413, x = 62.26, y = 38.39, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "turnin", quest = 876, title = "Serena Bloodfeather", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.62, y = 30.9, f = "e" },
					{ t = "accept", quest = 1060, title = "Letter to Jin'Zil", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.62, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 899, title = "Consumed by Hatred", npc = 3432, npcName = "Mankrik", map = 1413, x = 51.95, y = 31.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 880, title = "Altered Beings", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
					{ t = "accept", quest = 1489, title = "Hamuul Runetotem", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
					{ t = "accept", quest = 3301, title = "Mura Runetotem", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5883, npcName = "Enyo", map = 1454, x = 38.79, y = 85.65, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 6018, npcName = "Ur'kyo", map = 1454, x = 35.59, y = 87.8, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3328, npcName = "Ormok", map = 1454, x = 43.91, y = 54.63, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3353, npcName = "Grezz Ragefist", map = 1454, x = 79.78, y = 31.42, f = "e" },
				},
			},
		},
	})
end

