-- TuWoW_Leveling — Guides/Leveling_Horde_24.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-dustwallow-marsh-42-42",
		pack = "guides",
		title = "Dustwallow Marsh",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-tanaris-42-43",
		author = "TuWoW & Zygor",
		minLevel = 42,
		maxLevel = 42,
		zone = 1445,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 1166, title = "Overlord Mok'Morokk's Concern", npc = 4500, npcName = "Overlord Mok'Morokk", map = 1445, x = 36.3, y = 31.42, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "accept", quest = 1169, title = "Identifying the Brood", npc = 4501, npcName = "Draz'Zilb", map = 1445, x = 37.15, y = 33.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1168, title = "Army of the Black Dragon", npc = 4502, npcName = "Tharg", map = 1445, x = 37.37, y = 31.39, f = "e" },
				},
			},
			{
				note = "White crocodile. Walks a large pattern in the water.",
				goals = {
					{ t = "collect", quest = 1205, item = 5945, itemName = "Deadmire's Tooth", oi = 1, map = 1445, x = 50.2, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1187, item = 5862, itemName = "Seaforium Booster", oi = 1, map = 1445, x = 54.07, y = 56.49, f = "e" },
				},
			},
			{
				note = "Low drop rate.",
				goals = {
					{ t = "collect", quest = 1261, item = 5942, itemName = "Jeweled Pendant", oi = 1, map = 1445, x = 56.4, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1445, x = 55.55, y = 65.32 },
					{ t = "collect", quest = 1166, item = 5834, itemName = "Mok'Morokk's Snuff", oi = 1, map = 1445, x = 44.53, y = 66.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1166, item = 5835, itemName = "Mok'Morokk's Grog", oi = 2, map = 1445, x = 38.67, y = 65.58, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1445, x = 38.41, y = 66.04 },
					{ t = "collect", quest = 1166, item = 5836, itemName = "Mok'Morokk's Strongbox", oi = 3, map = 1445, x = 36.64, y = 69.57, f = "e" },
				},
			},
			{
				label = "Kill_Firemane_Scalebanes",
				along = true,
				note = "Inside the cave. notinsticky",
				goals = {
					{ t = "kill", quest = 1168, npc = 4328, target = "Firemane Scalebane", count = 5, oi = 3, map = 1445, x = 38.46, y = 65.96, f = "e" },
				},
			},
			{
				label = "Kill_Firemane_Scouts_And_Ash_Tails",
				along = true,
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1445, x = 38.46, y = 65.96 },
					{ t = "kill", quest = 1168, npc = 4331, target = "Firemane Ash Tail", count = 10, oi = 2, map = 1445, x = 42.0, y = 67.2, f = "e" },
					{ t = "kill", quest = 1168, npc = 4329, target = "Firemane Scout", count = 15, oi = 1, map = 1445, x = 42.0, y = 67.2, f = "e" },
				},
			},
			{
				label = "Collect_Searing_Tongues_And_Searing_Hearts",
				along = true,
				note = "Small flying dragons.",
				goals = {
					{ t = "collect", quest = 1169, item = 5840, itemName = "Searing Tongue", count = 15, oi = 1, map = 1445, x = 41.0, y = 74.6, f = "e" },
					{ t = "collect", quest = 1169, item = 5841, itemName = "Searing Heart", count = 15, oi = 2, map = 1445, x = 41.0, y = 74.6, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 1169, title = "Identifying the Brood", npc = 4501, npcName = "Draz'Zilb", map = 1445, x = 37.15, y = 33.08, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "accept", quest = 1170, title = "The Brood of Onyxia", npc = 4501, npcName = "Draz'Zilb", map = 1445, x = 37.15, y = 33.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1168, title = "Army of the Black Dragon", npc = 4502, npcName = "Tharg", map = 1445, x = 37.37, y = 31.39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1166, title = "Overlord Mok'Morokk's Concern", npc = 4500, npcName = "Overlord Mok'Morokk", map = 1445, x = 36.3, y = 31.42, f = "e" },
					{ t = "turnin", quest = 1170, title = "The Brood of Onyxia", npc = 4500, npcName = "Overlord Mok'Morokk", map = 1445, x = 36.3, y = 31.42, f = "e" },
					{ t = "accept", quest = 1171, title = "The Brood of Onyxia", npc = 4500, npcName = "Overlord Mok'Morokk", map = 1445, x = 36.3, y = 31.42, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 1171, title = "The Brood of Onyxia", npc = 4501, npcName = "Draz'Zilb", map = 1445, x = 37.15, y = 33.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1261, title = "Marg Speaks", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.21, y = 30.66, f = "e" },
					{ t = "accept", quest = 1262, title = "Report to Zor", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.21, y = 30.66, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
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
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1262, title = "Report to Zor", npc = 4047, npcName = "Zor Lonetree", map = 1454, x = 38.93, y = 38.38, f = "e" },
					{ t = "accept", quest = 7541, title = "Service to the Horde", npc = 4047, npcName = "Zor Lonetree", map = 1454, x = 38.93, y = 38.38, f = "e" },
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
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3353, npcName = "Grezz Ragefist", map = 1454, x = 79.78, y = 31.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2981, title = "A Threat in Feralas", npc = 4485, npcName = "Belgrom Rockmaul", map = 1454, x = 75.22, y = 34.22, f = "e" },
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
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", text = "Train Kodo Riding", map = 1412, x = 46.78, y = 62.01 },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "goto", text = "Train Wolf Riding", map = 1454, x = 69.4, y = 13.1 },
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

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-tanaris-42-43",
		pack = "guides",
		title = "Tanaris",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-feralas-43-44",
		author = "TuWoW & Zygor",
		minLevel = 42,
		maxLevel = 43,
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 654, item = 8523, itemName = "Field Testing Kit", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 654, item = 8524, itemName = "Model 4711-FTZ Power Source", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 1205, title = "Deadmire", note = "bank Deadmire's Tooth##5945", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "complete", quest = 1187, title = "Razzeric's Tweaking", note = "bank Seaforium Booster##5862", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 992, title = "Gadgetzan Water Survey", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
				},
			},
			{
				note = "Starts 2 hour timed quest. Counts down even when logged off. Only accept quest if you have the time.",
				goals = {
					{ t = "use", item = 8524, itemName = "Model 4711-FTZ Power Source" },
					{ t = "accept", quest = 654, title = "Tanaris Field Sampling" },
				},
			},
			{
				note = "Avoid elite enemies. You will be attacked. Careful, two higher level enemies. Run away quickly.",
				goals = {
					{ t = "use", item = 8584, itemName = "Untapped Dowsing Widget" },
					{ t = "collect", quest = 992, item = 8585, itemName = "Tapped Dowsing Widget", oi = 1, map = 1446, x = 39.09, y = 29.17, f = "e" },
				},
			},
			{
				label = "Collect_Acceptable_Scorpid_Samples",
				along = true,
				note = "Scorpions.",
				goals = {
					{ t = "collect", item = 9442, itemName = "Untested Scorpid Sample", map = 1446, x = 51.22, y = 34.53, f = "e" },
					{ t = "use", item = 9442, itemName = "Untested Scorpid Sample" },
					{ t = "collect", quest = 654, item = 9438, itemName = "Acceptable Scorpid Sample", count = 8, oi = 3, map = 1446, x = 53.2, y = 31.2, f = "e" },
				},
			},
			{
				label = "Collect_Acceptable_Hyena_Samples",
				along = true,
				note = "Hyenas.",
				goals = {
					{ t = "collect", item = 9439, itemName = "Untested Hyena Sample", map = 1446, x = 49.22, y = 28.27, f = "e" },
					{ t = "use", item = 9439, itemName = "Untested Hyena Sample" },
					{ t = "collect", quest = 654, item = 9441, itemName = "Acceptable Hyena Sample", count = 8, oi = 2, map = 1446, x = 50.2, y = 31.6, f = "e" },
				},
			},
			{
				label = "Collect_Acceptable_Basilisk_Samples",
				along = true,
				goals = {
					{ t = "collect", item = 9437, itemName = "Untested Basilisk Sample", map = 1446, x = 53.03, y = 22.6, f = "e" },
					{ t = "use", item = 9437, itemName = "Untested Basilisk Sample" },
					{ t = "collect", quest = 654, item = 9440, itemName = "Acceptable Basilisk Sample", count = 8, oi = 1, map = 1446, x = 49.4, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 654, title = "Tanaris Field Sampling", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 992, title = "Gadgetzan Water Survey", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
				},
			},
			{
				note = "Humans. Turn in stacks of 5 in Gadgetzan for 380 xp. Count will reduce as you grind.",
				goals = {
					{ t = "collect", item = 8483, itemName = "Wastewander Water Pouch", map = 1446, x = 58.8, y = 36.7, f = "e" },
					{ t = "goto", text = "ding 43", map = 1446, x = 62.8, y = 30.4 },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 3520, item = 10699, itemName = "Yeh'kinya's Bramble", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
		},
	})
end

