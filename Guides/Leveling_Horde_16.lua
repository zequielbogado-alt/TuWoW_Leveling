-- TuWoW_Leveling — Guides/Leveling_Horde_16.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-thousand-needles-28-30",
		pack = "guides",
		title = "Thousand Needles",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-hillsbrad-foothills-30-32",
		author = "TuWoW & Zygor",
		minLevel = 28,
		maxLevel = 30,
		zone = 1413,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 1153, title = "A New Ore Sample", npc = 3433, npcName = "Tatternack Steelforge", map = 1413, x = 45.1, y = 57.68, f = "e" },
				},
			},
			{
				note = "Top of the hill.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1534, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
					{ t = "accept", quest = 220, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
				},
			},
			{
				note = "Wait until he respawns, if missing.",
				goals = {
					{ t = "turnin", quest = 5881, title = "Calling in the Reserves", npc = 12576, npcName = "Grish Longrunner", map = 1441, x = 31.86, y = 21.66, f = "e" },
				},
			},
			{
				note = "Wait until he respawns, if missing.",
				goals = {
					{ t = "accept", quest = 4542, title = "Message to Freewind Post", npc = 10079, npcName = "Brave Moonhorn", map = 1441, x = 32.24, y = 22.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Ride an elevator down into Thousand Needles, follow the road to Freewind Post, and ride an elevator up", map = 1441, x = 47.02, y = 48.32 },
					{ t = "getfp", location = "Freewind Post", map = 1441, x = 45.14, y = 49.11, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 4767, title = "Wind Rider", npc = 10377, npcName = "Elu", map = 1441, x = 44.93, y = 48.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4821, title = "Alien Egg", npc = 10539, npcName = "Hagar Lightninghoof", map = 1441, x = 44.64, y = 50.29, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 4542, title = "Message to Freewind Post", npc = 10537, npcName = "Cliffwatcher Longhorn", map = 1441, x = 45.65, y = 50.8, f = "e" },
					{ t = "accept", quest = 4841, title = "Pacify the Centaur", npc = 10537, npcName = "Cliffwatcher Longhorn", map = 1441, x = 45.65, y = 50.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1196, title = "The Sacred Flame", npc = 4722, npcName = "Rau Cliffrunner", map = 1441, x = 46.14, y = 51.72, f = "e" },
					{ t = "accept", quest = 1197, title = "The Sacred Flame", npc = 4722, npcName = "Rau Cliffrunner", map = 1441, x = 46.14, y = 51.72, f = "e" },
				},
			},
			{
				note = "Two level 30 enemies guarding it. Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1441, x = 44.05, y = 37.34 },
					{ t = "goto", text = "Follow the path", map = 1441, x = 42.06, y = 34.68 },
					{ t = "collect", quest = 1197, item = 5869, itemName = "Cloven Hoof", oi = 1, map = 1441, x = 42.01, y = 31.51, f = "e" },
				},
			},
			{
				label = "Kill_Galak_Enemies",
				along = true,
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1441, x = 44.05, y = 37.34 },
					{ t = "kill", quest = 4841, npc = 4096, target = "Galak Windchaser", count = 6, oi = 3, map = 1441, x = 43.13, y = 38.52, f = "e" },
					{ t = "kill", quest = 4841, npc = 4093, target = "Galak Wrangler", count = 10, oi = 2, map = 1441, x = 43.13, y = 38.52, f = "e" },
					{ t = "kill", quest = 4841, npc = 4094, target = "Galak Scout", count = 12, oi = 1, map = 1441, x = 43.13, y = 38.52, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1441, x = 44.05, y = 37.34 },
					{ t = "goto", text = "Follow the path up", map = 1441, x = 54.68, y = 44.78 },
					{ t = "accept", quest = 1149, title = "Test of Faith", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 53.94, y = 41.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1149, title = "Test of Faith", note = "Teleport to the Plateau", map = 1441, x = 26.43, y = 31.29, f = "e" },
				},
			},
			{
				note = "Jump off the cliff. You won't die.",
				goals = {
					{ t = "complete", quest = 1149, title = "Test of Faith", note = "Return to Dorn Plainstalker", map = 1441, x = 26.43, y = 32.41, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 1149, title = "Test of Faith", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 53.94, y = 41.48, f = "e" },
				},
			},
			{
				note = "Large white egg. Multiple locations.",
				goals = {
					{ t = "collect", quest = 4821, item = 12467, itemName = "Alien Egg", oi = 1, map = 1441, x = 56.35, y = 50.36, f = "e" },
				},
			},
			{
				label = "Collect_Unrefined_Ore_Sample",
				along = true,
				note = "Diggers and Surveyors. Kobolds. Uncommon and spread out. Kill other enemies while searching. Reduces grinding later. Quest can be slow and annoying. Skip if you'd rather just grind.",
				goals = {
					{ t = "collect", quest = 1153, item = 5842, itemName = "Unrefined Ore Sample", oi = 1, map = 1441, x = 65.03, y = 54.47, f = "e" },
				},
			},
			{
				note = "Helps reach level 29 after quest turnins. Higher level enemies soon.",
				goals = {
					{ t = "goto", text = "ding 28,34950", map = 1441, x = 44.4, y = 40.2 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Ride an elevator up", map = 1441, x = 47.02, y = 48.32 },
					{ t = "turnin", quest = 4821, title = "Alien Egg", npc = 10539, npcName = "Hagar Lightninghoof", map = 1441, x = 44.64, y = 50.29, f = "e" },
					{ t = "accept", quest = 4865, title = "Serpent Wild", npc = 10539, npcName = "Hagar Lightninghoof", map = 1441, x = 44.64, y = 50.29, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 4841, title = "Pacify the Centaur", npc = 10537, npcName = "Cliffwatcher Longhorn", map = 1441, x = 45.65, y = 50.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1197, title = "The Sacred Flame", npc = 4722, npcName = "Rau Cliffrunner", map = 1441, x = 46.14, y = 51.71, f = "e" },
				},
			},
			{
				note = "Large eggs.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1441, x = 27.24, y = 51.43 },
					{ t = "goto", text = "Follow the path up", map = 1441, x = 14.75, y = 32.83 },
					{ t = "collect", quest = 4767, item = 12356, itemName = "Highperch Wyvern Egg", count = 10, oi = 1, map = 1441, x = 11.1, y = 35.6, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing. Avoid Heartrazor. Level 32 elite wyvern. Skip if he's nearby.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1441, x = 13.17, y = 39.51 },
					{ t = "accept", quest = 4770, title = "Homeward Bound", npc = 10427, npcName = "Pao'ka Swiftmountain", map = 1441, x = 17.89, y = 40.57, f = "e" },
				},
			},
			{
				note = "Follow and protect Pao'ka Swiftmountain. Clear the path of enemies, as much as possible. Group of 3 wyverns ambush you in the wide open area. Attack the one nearest the Highperch exit. Ignore the others, they should disappear.",
				goals = {
					{ t = "complete", quest = 4770, title = "Homeward Bound", note = "Escort Pao'ka Swiftmountain to Safety", map = 1441, x = 15.16, y = 32.67, f = "e" },
				},
			},
			{
				note = "Brown hyena with 2 hyena guards. Walks a large path.",
				goals = {
					{ t = "collect", quest = 1131, item = 5837, itemName = "Steelsnap's Rib", oi = 1, map = 1413, x = 37.9, y = 91.2, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 4770, title = "Homeward Bound", npc = 10428, npcName = "Motega Firemane", map = 1441, x = 21.55, y = 32.35, f = "e" },
					{ t = "turnin", quest = 4865, title = "Serpent Wild", npc = 10428, npcName = "Motega Firemane", map = 1441, x = 21.55, y = 32.35, f = "e" },
					{ t = "accept", quest = 5062, title = "Sacred Fire", npc = 10428, npcName = "Motega Firemane", map = 1441, x = 21.55, y = 32.35, f = "e" },
				},
			},
			{
				label = "Accept_Assassination_Plot",
				along = true,
				note = "Black centaur. Runs a large path. Skip if don't want to search. notinsticky Can wait for him to come to you. notinsticky",
				goals = {
					{ t = "collect", item = 12564, itemName = "Assassination Note", map = 1413, x = 47.3, y = 96.9, f = "e" },
					{ t = "use", item = 12564, itemName = "Assassination Note" },
					{ t = "accept", quest = 4881, title = "Assassination Plot", npc = 10617, npcName = "Galak Messenger", map = 1413, x = 47.3, y = 96.9, f = "e" },
				},
			},
			{
				note = "Black centaur. Runs a large path. Passes here twice in his route. Wait for him.",
				goals = {
					{ t = "collect", item = 12564, itemName = "Assassination Note", map = 1413, x = 47.3, y = 96.9, f = "e" },
					{ t = "use", item = 12564, itemName = "Assassination Note" },
					{ t = "accept", quest = 4881, title = "Assassination Plot", npc = 10617, npcName = "Galak Messenger", map = 1441, x = 31.5, y = 29.96, f = "e" },
				},
			},
			{
				note = "Three enemies attack.",
				goals = {
					{ t = "turnin", quest = 4881, title = "Assassination Plot", npc = 10638, npcName = "Kanati Greycloud", map = 1441, x = 21.21, y = 32.1, f = "e" },
					{ t = "accept", quest = 4966, title = "Protect Kanati Greycloud", npc = 10638, npcName = "Kanati Greycloud", map = 1441, x = 21.21, y = 32.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 4966, title = "Protect Kanati Greycloud", map = 1441, x = 21.21, y = 32.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4966, title = "Protect Kanati Greycloud", npc = 10638, npcName = "Kanati Greycloud", map = 1441, x = 21.21, y = 32.1, f = "e" },
				},
			},
			{
				note = "Spikey plants. Underwater and around the water edge.",
				goals = {
					{ t = "collect", quest = 5062, item = 12732, itemName = "Incendia Agave", count = 10, oi = 1, map = 1441, x = 33.6, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1131, title = "Steelsnap", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.53, y = 80.9, f = "e" },
					{ t = "accept", quest = 1136, title = "Frostmaw", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.53, y = 80.9, f = "e" },
				},
			},
			{
				note = "Inside the tent.",
				goals = {
					{ t = "turnin", quest = 5062, title = "Sacred Fire", npc = 4046, npcName = "Magatha Grimtotem", map = 1456, x = 69.86, y = 30.92, f = "e" },
					{ t = "accept", quest = 5088, title = "Arikara", npc = 4046, npcName = "Magatha Grimtotem", map = 1456, x = 69.86, y = 30.92, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 1136, title = "Frostmaw", note = "bank Kodo Skin Scroll##5838", map = 1456, x = 47.13, y = 57.89, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1153, title = "A New Ore Sample", npc = 3433, npcName = "Tatternack Steelforge", map = 1413, x = 45.1, y = 57.68, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 4767, title = "Wind Rider", npc = 10377, npcName = "Elu", map = 1441, x = 44.93, y = 48.93, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 5064, title = "Grimtotem Spying", npc = 10537, npcName = "Cliffwatcher Longhorn", map = 1441, x = 45.65, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5147, title = "WANTED: Arnak Grimtotem", map = 1441, x = 46.0, y = 50.84, f = "e" },
				},
			},
			{
				note = "Difficult quests soon. Reduces grinding all at once later.",
				goals = {
					{ t = "goto", text = "ding 30", map = 1441, x = 44.4, y = 40.2 },
				},
			},
			{
				note = "Up on the plateau. Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path up and across the hanging bridges", map = 1441, x = 31.24, y = 36.88 },
					{ t = "goto", text = "Cross the hanging bridge", map = 1441, x = 34.99, y = 31.5 },
					{ t = "complete", quest = 5064, title = "Grimtotem Spying", note = "collect Secret Note #3##12768", map = 1441, x = 39.32, y = 41.52, f = "e" },
				},
			},
			{
				note = "Up on the plateau. Inside the building.",
				goals = {
					{ t = "complete", quest = 5064, title = "Grimtotem Spying", note = "collect Secret Note #2##12766", map = 1441, x = 33.78, y = 39.97, f = "e" },
				},
			},
			{
				note = "Up on the plateau.",
				goals = {
					{ t = "complete", quest = 5064, title = "Grimtotem Spying", note = "collect Secret Note #1##12765", map = 1441, x = 31.8, y = 32.59, f = "e" },
				},
			},
			{
				note = "Up on the plateau. You will be attacked. Level 28 elite enemy. Pretty easy to kill solo. May need help.",
				goals = {
					{ t = "goto", text = "Cross the hanging bridge", map = 1441, x = 35.68, y = 31.0 },
					{ t = "complete", quest = 5088, title = "Arikara", note = "Light the Sacred Fire of Life", map = 1441, x = 38.02, y = 35.32, f = "e" },
				},
			},
			{
				note = "Level 28 elite enemy. Pretty easy to kill solo. May need help. Skip if too difficult. Up on the plateau.",
				goals = {
					{ t = "collect", quest = 5088, item = 12925, itemName = "Arikara Serpent Skin", oi = 1, map = 1441, x = 38.29, y = 35.54, f = "e" },
				},
			},
			{
				note = "Up on the plateau. Walks around.",
				goals = {
					{ t = "collect", quest = 5147, item = 12884, itemName = "Arnak's Hoof", oi = 1, map = 1441, x = 38.08, y = 26.85, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until she respawns, if missing.",
				goals = {
					{ t = "accept", quest = 4904, title = "Free at Last", npc = 10646, npcName = "Lakota Windsong", map = 1441, x = 37.99, y = 26.59, f = "e" },
				},
			},
			{
				note = "Follow and protect Lakota Windsong. Kill enemies to clear a path for her. Two enemies appear on each plateau. Skip if too difficult.",
				goals = {
					{ t = "complete", quest = 4904, title = "Free at Last", note = "Escort Lakota Windsong from the Darkcloud Pinnacle", map = 1441, x = 30.97, y = 37.09, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 5088, title = "Arikara", npc = 10428, npcName = "Motega Firemane", map = 1441, x = 21.55, y = 32.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5151, title = "Hypercapacitor Gizmo", npc = 10941, npcName = "Wizlo Bearingshiner", map = 1441, x = 21.43, y = 32.55, f = "e" },
				},
			},
			{
				note = "Level 30 elite enemy. May need help. Skip if too difficult.",
				goals = {
					{ t = "collect", quest = 5151, item = 12946, itemName = "Hypercapacitor Gizmo", oi = 1, map = 1441, x = 22.79, y = 24.54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5151, title = "Hypercapacitor Gizmo", npc = 10941, npcName = "Wizlo Bearingshiner", map = 1441, x = 21.43, y = 32.55, f = "e" },
				},
			},
			{
				note = "Careful, higher level enemies. If you die, resurrect at Camp Mojache.",
				goals = {
					{ t = "goto", text = "Follow the road up into Feralas", map = 1441, x = 7.68, y = 10.62 },
					{ t = "getfp", location = "Camp Mojache", map = 1444, x = 75.45, y = 44.36, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 5064, title = "Grimtotem Spying", npc = 10537, npcName = "Cliffwatcher Longhorn", map = 1441, x = 45.65, y = 50.8, f = "e" },
					{ t = "turnin", quest = 5147, title = "WANTED: Arnak Grimtotem", npc = 10537, npcName = "Cliffwatcher Longhorn", map = 1441, x = 45.65, y = 50.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Freewind Post", map = 1441, x = 46.07, y = 51.51, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4904, title = "Free at Last", npc = 10645, npcName = "Thalia Amberhide", map = 1441, x = 45.97, y = 51.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1111, title = "Wharfmaster Dizzywig", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				note = "Careful, higher level enemies.",
				goals = {
					{ t = "getfp", location = "Gadgetzan", map = 1446, x = 51.6, y = 25.44, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3043, npcName = "Ker Ragetotem", map = 1456, x = 57.58, y = 85.52, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1718, title = "The Islander", npc = 3041, npcName = "Torm Ragetotem", map = 1456, x = 57.24, y = 87.37, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1456, x = 29.81, y = 29.82 },
					{ t = "train", npc = 3049, npcName = "Thurston Xane", map = 1456, x = 25.18, y = 20.96, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "learnspell Teleport: Thunder Bluff##3566", map = 1456, x = 22.5, y = 16.91 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1456, x = 29.81, y = 29.82 },
					{ t = "accept", quest = 1145, title = "The Swarm Grows", npc = 3428, npcName = "Korran", map = 1413, x = 51.07, y = 29.63, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1111, title = "Wharfmaster Dizzywig", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.35, y = 38.45, f = "e" },
					{ t = "accept", quest = 1112, title = "Parts for Kravel", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.35, y = 38.45, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 220, title = "Call of Water", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.83, y = 43.78, f = "e" },
					{ t = "accept", quest = 63, title = "Call of Water", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.83, y = 43.78, f = "e" },
				},
			},
			{
				note = "Complete the Water Sapta quest.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 63, item = 6637, itemName = "Water Sapta", map = 1413, x = 65.83, y = 43.78, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1718, title = "The Islander", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.62, y = 49.17, f = "e" },
					{ t = "accept", quest = 1719, title = "The Affray", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.62, y = 49.17, f = "e" },
				},
			},
			{
				note = "Step on the grate to start the fight. Appears after killing six challengers.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "kill", quest = 1719, npc = 6238, target = "Big Will", oi = 1, map = 1413, x = 68.61, y = 48.72, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1719, title = "The Affray", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.62, y = 49.17, f = "e" },
					{ t = "accept", quest = 1791, title = "The Windwatcher", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.62, y = 49.17, f = "e" },
				},
			},
			{
				note = "Deposit into the bank.",
				goals = {
					{ t = "complete", quest = 1112, title = "Parts for Kravel", note = "bank Kravel's Parts##5800", map = 1413, x = 62.68, y = 37.42, f = "e" },
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
				note = "Walks around. Inside the Cleft of Shadow.",
				goals = {
					{ t = "accept", quest = 1431, title = "Alliance Relations", npc = 5639, npcName = "Craven Drok", map = 1454, x = 46.76, y = 50.43, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3325, npcName = "Mirket", map = 1454, x = 48.62, y = 46.95, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5815, npcName = "Kurgul", map = 1454, x = 47.52, y = 46.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 1531, title = "Call of Air", npc = 5892, npcName = "Searn Firewarder", map = 1454, x = 37.96, y = 37.73, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3344, npcName = "Kardris Dreamseeker", map = 1454, x = 38.8, y = 36.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1145, title = "The Swarm Grows", npc = 4485, npcName = "Belgrom Rockmaul", map = 1454, x = 75.23, y = 34.23, f = "e" },
					{ t = "accept", quest = 1146, title = "The Swarm Grows", npc = 4485, npcName = "Belgrom Rockmaul", map = 1454, x = 75.23, y = 34.23, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3352, npcName = "Ormak Grimshot", map = 1454, x = 66.06, y = 18.54, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10088, npcName = "Xao'tsu", map = 1454, x = 66.33, y = 14.82, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Train Two-Handed Axes", map = 1454, x = 81.53, y = 19.61 },
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
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 1431, title = "Alliance Relations", npc = 5640, npcName = "Keldran", map = 1454, x = 22.56, y = 52.63, f = "e" },
					{ t = "accept", quest = 1432, title = "Alliance Relations", npc = 5640, npcName = "Keldran", map = 1454, x = 22.56, y = 52.63, f = "e" },
				},
			},
		},
	})
end

