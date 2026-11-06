-- TuWoW_Leveling — Guides/Leveling_Horde_25.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-feralas-43-44",
		pack = "guides",
		title = "Feralas",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-stranglethorn-vale-44-45",
		author = "TuWoW & Zygor",
		minLevel = 43,
		maxLevel = 44,
		zone = 1441,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Follow the road up into Feralas", map = 1441, x = 7.68, y = 10.62 },
					{ t = "getfp", location = "Camp Mojache", map = 1444, x = 75.45, y = 44.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2987, title = "Gordunni Cobalt", npc = 8021, npcName = "Orwin Gizzmick", map = 1444, x = 75.7, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2973, title = "A New Cloak's Sheen", npc = 4544, npcName = "Krueg Skullsplitter", map = 1444, x = 75.94, y = 42.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2862, title = "War on the Woodpaw", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.91, y = 42.47, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2822, title = "The Mark of Quality", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
				},
			},
			{
				label = "Accept_Ogres_Of_Feralas",
				along = true,
				note = "Wearing red armor. Walks around.",
				goals = {
					{ t = "turnin", quest = 2981, title = "A Threat in Feralas", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.6, y = 43.6, f = "e" },
					{ t = "accept", quest = 2975, title = "The Ogres of Feralas", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.6, y = 43.6, f = "e" },
				},
			},
			{
				note = "Gnolls.",
				goals = {
					{ t = "collect", quest = 2862, item = 9237, itemName = "Woodpaw Gnoll Mane", count = 10, oi = 1, map = 1444, x = 73.0, y = 39.8, f = "e" },
				},
			},
			{
				note = "White unrolled scroll. Multiple locations.",
				goals = {
					{ t = "goto", text = "Follow the path up into Gordunni Outpost", map = 1444, x = 75.0, y = 35.15 },
					{ t = "goto", text = "Follow the path", map = 1444, x = 76.29, y = 32.9 },
					{ t = "collect", item = 9370, itemName = "Gordunni Scroll" },
					{ t = "use", item = 9370, itemName = "Gordunni Scroll" },
					{ t = "accept", quest = 2978, title = "The Gordunni Scroll", map = 1444, x = 75.13, y = 29.73, f = "e" },
				},
			},
			{
				label = "Collect_Gordunni_Cobalt",
				along = true,
				note = "Next to glowing blue circles. Piles of dirt that appear. They glow blue if containing quest item.",
				goals = {
					{ t = "use", item = 9466, itemName = "Orwin's Shovel" },
					{ t = "collect", quest = 2987, item = 9463, itemName = "Gordunni Cobalt", count = 12, oi = 1, map = 1444, x = 76.7, y = 33.8, f = "e" },
				},
			},
			{
				label = "Kill_Gordunni_Brutes_Ogres_Ogre_Mages",
				along = true,
				goals = {
					{ t = "kill", quest = 2975, npc = 5232, target = "Gordunni Brute", count = 5, oi = 3, map = 1444, x = 76.7, y = 33.8, f = "e" },
					{ t = "kill", quest = 2975, npc = 5229, target = "Gordunni Ogre", count = 10, oi = 1, map = 1444, x = 76.7, y = 33.8, f = "e" },
					{ t = "kill", quest = 2975, npc = 5237, target = "Gordunni Ogre Mage", count = 10, oi = 2, map = 1444, x = 76.7, y = 33.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2862, title = "War on the Woodpaw", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.91, y = 42.47, f = "e" },
					{ t = "accept", quest = 2863, title = "Alpha Strike", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.91, y = 42.47, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2987, title = "Gordunni Cobalt", npc = 8021, npcName = "Orwin Gizzmick", map = 1444, x = 75.7, y = 44.31, f = "e" },
				},
			},
			{
				label = "Accept_Dark_Ceremony",
				along = true,
				note = "Wearing red armor. Walks around.",
				goals = {
					{ t = "turnin", quest = 2975, title = "The Ogres of Feralas", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.6, y = 43.6, f = "e" },
					{ t = "accept", quest = 2980, title = "The Ogres of Feralas", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.6, y = 43.6, f = "e" },
					{ t = "turnin", quest = 2978, title = "The Gordunni Scroll", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.6, y = 43.6, f = "e" },
					{ t = "accept", quest = 2979, title = "Dark Ceremony", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.6, y = 43.6, f = "e" },
				},
			},
			{
				note = "Hurry, you have a timed quest.",
				goals = {
					{ t = "complete", quest = 2863, title = "Alpha Strike", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2973, item = 9369, itemName = "Iridescent Sprite Darter Wing", count = 10, oi = 1, map = 1444, x = 69.4, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2863, npc = 5258, target = "Woodpaw Alpha", count = 5, oi = 1, map = 1444, x = 68.6, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2863, title = "Alpha Strike", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.91, y = 42.46, f = "e" },
					{ t = "accept", quest = 2902, title = "Woodpaw Investigation", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.91, y = 42.46, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2973, title = "A New Cloak's Sheen", npc = 4544, npcName = "Krueg Skullsplitter", map = 1444, x = 75.94, y = 42.74, f = "e" },
					{ t = "accept", quest = 2974, title = "A Grim Discovery", npc = 4544, npcName = "Krueg Skullsplitter", map = 1444, x = 75.94, y = 42.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2902, title = "Woodpaw Investigation", map = 1444, x = 71.63, y = 55.92, f = "e" },
					{ t = "accept", quest = 2903, title = "The Battle Plans", map = 1444, x = 71.63, y = 55.92, f = "e" },
				},
			},
			{
				note = "Tauren.",
				goals = {
					{ t = "collect", quest = 2974, item = 9460, itemName = "Grimtotem Horn", count = 20, oi = 1, map = 1444, x = 67.4, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2903, title = "The Battle Plans", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.91, y = 42.47, f = "e" },
					{ t = "accept", quest = 7730, title = "Zukk'ash Infestation", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.91, y = 42.47, f = "e" },
					{ t = "accept", quest = 7731, title = "Stinglasher", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.91, y = 42.47, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2974, title = "A Grim Discovery", npc = 4544, npcName = "Krueg Skullsplitter", map = 1444, x = 75.94, y = 42.74, f = "e" },
					{ t = "accept", quest = 2976, title = "A Grim Discovery", npc = 4544, npcName = "Krueg Skullsplitter", map = 1444, x = 75.94, y = 42.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Camp Mojache", map = 1444, x = 74.8, y = 45.18, f = "e" },
				},
			},
			{
				note = "Long grind soon. Up on the balcony of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 9548, npcName = "Cawind Trueaim", map = 1444, x = 74.94, y = 45.71, f = "e" },
				},
			},
			{
				note = "Kill enemies as you walk. Reduces grinding later.",
				goals = {
					{ t = "complete", quest = 7731, title = "Stinglasher", note = "Click Here to Continue" },
				},
			},
			{
				note = "Level 47 green flying insect. Should be able to kill at this level. Flies around. Also inside the insect caves, but mostly outside.",
				goals = {
					{ t = "collect", quest = 7731, item = 18962, itemName = "Stinglasher's Glands", oi = 1, map = 1444, x = 75.6, y = 61.6, f = "e" },
				},
			},
			{
				label = "Collect_Zukkash_Carapaces",
				along = true,
				note = "Insects. More inside the insect caves. notinsticky",
				goals = {
					{ t = "collect", quest = 7730, item = 18961, itemName = "Zukk'ash Carapace", count = 20, oi = 1, map = 1444, x = 75.4, y = 61.2, f = "e" },
				},
			},
			{
				note = "Red flying snakes. On their corpses. Ghosts that appear.",
				goals = {
					{ t = "goto", text = "Follow the road", map = 1444, x = 67.56, y = 49.82 },
					{ t = "use", item = 10699, itemName = "Yeh'kinya's Bramble" },
					{ t = "complete", quest = 3520, title = "Screecher Spirits", note = "Collect #3# Screecher Spirits", map = 1444, x = 57.4, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2980, npc = 5234, target = "Gordunni Mauler", count = 5, oi = 3, map = 1444, x = 61.8, y = 54.4, f = "e" },
				},
			},
			{
				note = "Stagwings and Skystormers won't drop. Don't vendor them. Needed for future quest.",
				goals = {
					{ t = "collect", quest = 7842, item = 4589, itemName = "Long Elegant Feather", count = 10, map = 1444, x = 56.99, y = 64.45, f = "e" },
				},
			},
			{
				note = "Higher level enemies soon. Helps reduce grinding later. Run dungeons, if you prefer.",
				goals = {
					{ t = "goto", text = "ding 44,35000", map = 1444, x = 56.99, y = 64.45 },
				},
			},
			{
				note = "Large white egg. Multiple locations. Don't vendor it. Needed for future quest.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1444, x = 54.1, y = 68.24 },
					{ t = "collect", quest = 2741, item = 8564, itemName = "Hippogryph Egg", map = 1444, x = 56.6, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2979, item = 9371, itemName = "Gordunni Orb", oi = 1, map = 1444, x = 58.4, y = 67.6, f = "e" },
				},
			},
			{
				label = "Kill_Gordunni_Shamans",
				along = true,
				goals = {
					{ t = "kill", quest = 2980, npc = 5236, target = "Gordunni Shaman", count = 10, oi = 1, map = 1444, x = 60.4, y = 68.0, f = "e" },
				},
			},
			{
				label = "Kill_Gordunni_Warlocks",
				along = true,
				goals = {
					{ t = "kill", quest = 2980, npc = 5240, target = "Gordunni Warlock", count = 10, oi = 2, map = 1444, x = 58.2, y = 66.4, f = "e" },
				},
			},
			{
				note = "Yetis. More through the tunnel.",
				goals = {
					{ t = "collect", quest = 2822, item = 8973, itemName = "Thick Yeti Hide", count = 10, oi = 1, map = 1444, x = 55.4, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8705, itemName = "OOX-22/FE Distress Beacon" },
					{ t = "accept", quest = 2766, title = "Find OOX-22/FE!" },
				},
			},
			{
				note = "In the clearing between the tunnel and cave.",
				goals = {
					{ t = "goto", text = "Run through the tunnel", map = 1444, x = 55.22, y = 56.39 },
					{ t = "turnin", quest = 2766, title = "Find OOX-22/FE!", npc = 7807, npcName = "Homing Robot OOX-22/FE", map = 1444, x = 53.35, y = 55.7, f = "e" },
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
					{ t = "accept", quest = 3121, title = "A Strange Request", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2822, title = "The Mark of Quality", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7730, title = "Zukk'ash Infestation", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.91, y = 42.47, f = "e" },
					{ t = "turnin", quest = 7731, title = "Stinglasher", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.91, y = 42.47, f = "e" },
					{ t = "accept", quest = 7732, title = "Zukk'ash Report", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.91, y = 42.47, f = "e" },
				},
			},
			{
				label = "Accept_The_Gordunni_Orb",
				along = true,
				note = "Wearing red armor. Walks around.",
				goals = {
					{ t = "turnin", quest = 2980, title = "The Ogres of Feralas", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.6, y = 43.6, f = "e" },
					{ t = "turnin", quest = 2979, title = "Dark Ceremony", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.6, y = 43.6, f = "e" },
					{ t = "accept", quest = 3002, title = "The Gordunni Orb", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.6, y = 43.6, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 1205, item = 5945, itemName = "Deadmire's Tooth", map = 1456, x = 47.13, y = 57.89, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "goto", text = "bank Long Elegant Feather##4589", map = 1456, x = 47.13, y = 57.89 },
					{ t = "complete", quest = 3520, title = "Screecher Spirits", note = "bank Yeh'kinya's Bramble##10699", map = 1456, x = 47.13, y = 57.89, f = "e" },
					{ t = "goto", text = "bank Hippogryph Egg##8564", map = 1456, x = 47.13, y = 57.89 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1205, title = "Deadmire", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.54, y = 80.91, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", text = "Train Kodo Riding", map = 1412, x = 46.78, y = 62.01 },
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
				goals = {
					{ t = "turnin", quest = 3002, title = "The Gordunni Orb", npc = 7311, npcName = "Uthel'nay", map = 1454, x = 39.16, y = 86.24, f = "e" },
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
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3344, npcName = "Kardris Dreamseeker", map = 1454, x = 38.8, y = 36.38, f = "e" },
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
				note = "Inside the tent. Inside the Cleft of Shadow.",
				goals = {
					{ t = "turnin", quest = 3121, title = "A Strange Request", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.49, y = 50.59, f = "e" },
					{ t = "accept", quest = 3122, title = "Return to Witch Doctor Uzer'i", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.49, y = 50.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2976, title = "A Grim Discovery", npc = 4485, npcName = "Belgrom Rockmaul", map = 1454, x = 75.23, y = 34.24, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3353, npcName = "Grezz Ragefist", map = 1454, x = 79.78, y = 31.42, f = "e" },
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
				only = { races = { "Orc" } },
				goals = {
					{ t = "goto", text = "Train Wolf Riding", map = 1454, x = 69.4, y = 13.1 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.33, y = 56.94 },
					{ t = "turnin", quest = 7732, title = "Zukk'ash Report", npc = 7010, npcName = "Zilzibin Drumlore", map = 1454, x = 56.28, y = 46.67, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Skip any missing pages. We'll buy them from the Auction House. Inside the building.",
				goals = {
					{ t = "collect", quest = 339, item = 2725, itemName = "Green Hills of Stranglethorn - Page 1", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 339, item = 2728, itemName = "Green Hills of Stranglethorn - Page 4", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 339, item = 2730, itemName = "Green Hills of Stranglethorn - Page 6", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 339, item = 2732, itemName = "Green Hills of Stranglethorn - Page 8", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 340, item = 2734, itemName = "Green Hills of Stranglethorn - Page 10", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 340, item = 2735, itemName = "Green Hills of Stranglethorn - Page 11", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 340, item = 2738, itemName = "Green Hills of Stranglethorn - Page 14", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 340, item = 2740, itemName = "Green Hills of Stranglethorn - Page 16", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 341, item = 2742, itemName = "Green Hills of Stranglethorn - Page 18", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 341, item = 2744, itemName = "Green Hills of Stranglethorn - Page 20", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 341, item = 2745, itemName = "Green Hills of Stranglethorn - Page 21", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 341, item = 2748, itemName = "Green Hills of Stranglethorn - Page 24", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 342, item = 2749, itemName = "Green Hills of Stranglethorn - Page 25", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 342, item = 2750, itemName = "Green Hills of Stranglethorn - Page 26", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 342, item = 2751, itemName = "Green Hills of Stranglethorn - Page 27", map = 1454, x = 49.58, y = 69.12, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 3122, title = "Return to Witch Doctor Uzer'i", note = "bank Neeru's Herb Pouch##9628", map = 1454, x = 49.58, y = 69.12, f = "e" },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Inside the building.",
				goals = {
					{ t = "collect", quest = 339, item = 2725, itemName = "Green Hills of Stranglethorn - Page 1", map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 339, item = 2728, itemName = "Green Hills of Stranglethorn - Page 4", map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 339, item = 2730, itemName = "Green Hills of Stranglethorn - Page 6", map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 339, item = 2732, itemName = "Green Hills of Stranglethorn - Page 8", map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 340, item = 2734, itemName = "Green Hills of Stranglethorn - Page 10", map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 340, item = 2735, itemName = "Green Hills of Stranglethorn - Page 11", map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 340, item = 2738, itemName = "Green Hills of Stranglethorn - Page 14", map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 340, item = 2740, itemName = "Green Hills of Stranglethorn - Page 16", map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 341, item = 2742, itemName = "Green Hills of Stranglethorn - Page 18", map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 341, item = 2744, itemName = "Green Hills of Stranglethorn - Page 20", map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 341, item = 2745, itemName = "Green Hills of Stranglethorn - Page 21", map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 341, item = 2748, itemName = "Green Hills of Stranglethorn - Page 24", map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 342, item = 2749, itemName = "Green Hills of Stranglethorn - Page 25", map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 342, item = 2750, itemName = "Green Hills of Stranglethorn - Page 26", map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 342, item = 2751, itemName = "Green Hills of Stranglethorn - Page 27", map = 1454, x = 55.68, y = 62.83, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "goto", text = "Train Raptor Riding", map = 1411, x = 55.28, y = 75.49 },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", text = "Train Undead Horsemanship", map = 1420, x = 60.08, y = 52.57 },
				},
			},
		},
	})
end

