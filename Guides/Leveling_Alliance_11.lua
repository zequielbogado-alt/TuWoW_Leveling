-- TuWoW_Leveling — Guides/Leveling_Alliance_11.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-loch-modan-18-19",
		pack = "guides",
		title = "Loch Modan",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-redridge-and-westfall-19-20",
		author = "TuWoW & Zygor",
		minLevel = 18,
		maxLevel = 19,
		zone = 1432,
		version = 1,
		steps = {
			{
				note = "Walks around. Inside and outside the building.",
				goals = {
					{ t = "accept", quest = 436, title = "Ironband's Excavation", npc = 1105, npcName = "Jern Hornhelm", map = 1432, x = 37.24, y = 47.39, f = "e" },
				},
			},
			{
				label = "Collect_Miners_Gear",
				along = true,
				note = "Piles of brown boxes. Inside the mine. notinsticky",
				goals = {
					{ t = "collect", quest = 307, item = 2640, itemName = "Miners' Gear", count = 4, oi = 1, map = 1432, x = 35.48, y = 18.86, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Leave the mine", map = 1432, x = 35.48, y = 18.86 },
					{ t = "turnin", quest = 307, title = "Filthy Paws", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.76, y = 18.39, f = "e" },
				},
			},
			{
				note = "On the dam.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1432, x = 40.54, y = 13.64 },
					{ t = "accept", quest = 250, title = "A Dark Threat Looms", npc = 1093, npcName = "Chief Engineer Hinderweir VII", map = 1432, x = 46.05, y = 13.62, f = "e" },
				},
			},
			{
				note = "Next to the wall.",
				goals = {
					{ t = "turnin", quest = 250, title = "A Dark Threat Looms", map = 1432, x = 56.05, y = 13.24, f = "e" },
					{ t = "accept", quest = 199, title = "A Dark Threat Looms", map = 1432, x = 56.05, y = 13.24, f = "e" },
				},
			},
			{
				note = "On the dam.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1432, x = 55.39, y = 14.84 },
					{ t = "turnin", quest = 199, title = "A Dark Threat Looms", npc = 1093, npcName = "Chief Engineer Hinderweir VII", map = 1432, x = 46.05, y = 13.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 385, title = "Crocolisk Hunting", npc = 1154, npcName = "Marek Ironheart", map = 1432, x = 81.76, y = 61.66, f = "e" },
				},
			},
			{
				label = "Collect_Crocolisk_Skins_And_Meat",
				along = true,
				note = "Don't vendor them.",
				goals = {
					{ t = "collect", quest = 385, item = 2925, itemName = "Crocolisk Skin", count = 6, oi = 2, map = 1432, x = 54.49, y = 38.45, f = "e" },
					{ t = "collect", quest = 385, item = 2924, itemName = "Crocolisk Meat", count = 5, oi = 1, map = 1432, x = 54.49, y = 38.45, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 385, title = "Crocolisk Hunting", npc = 1154, npcName = "Marek Ironheart", map = 1432, x = 81.75, y = 61.66, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 257, title = "A Hunter's Boast", npc = 1187, npcName = "Daryl the Youngling", map = 1432, x = 83.49, y = 65.37, f = "e" },
				},
			},
			{
				note = "Hurry, timed quest.",
				goals = {
					{ t = "kill", quest = 257, npc = 1194, target = "Mountain Buzzard", count = 6, oi = 1, map = 1432, x = 75.32, y = 67.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 257, title = "A Hunter's Boast", npc = 1187, npcName = "Daryl the Youngling", map = 1432, x = 83.49, y = 65.37, f = "e" },
					{ t = "accept", quest = 258, title = "A Hunter's Challenge", npc = 1187, npcName = "Daryl the Youngling", map = 1432, x = 83.49, y = 65.37, f = "e" },
				},
			},
			{
				note = "Hurry, timed quest.",
				goals = {
					{ t = "kill", quest = 258, npc = 1192, target = "Elder Mountain Boar", count = 5, oi = 1, map = 1432, x = 76.28, y = 44.42, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 258, title = "A Hunter's Challenge", npc = 1187, npcName = "Daryl the Youngling", map = 1432, x = 83.49, y = 65.37, f = "e" },
				},
			},
			{
				note = "Helps reach level 19 after quest turnins. Next quest can be tough.",
				goals = {
					{ t = "goto", text = "ding 18,19060", map = 1432, x = 75.6, y = 50.2 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 436, title = "Ironband's Excavation", npc = 1345, npcName = "Magmar Fellhew", map = 1432, x = 64.9, y = 66.65, f = "e" },
					{ t = "accept", quest = 297, title = "Gathering Idols", npc = 1345, npcName = "Magmar Fellhew", map = 1432, x = 64.9, y = 66.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 298, title = "Excavation Progress Report", npc = 1344, npcName = "Prospector Ironband", map = 1432, x = 65.93, y = 65.62, f = "e" },
				},
			},
			{
				label = "Collect_Carved_Stone_Idols",
				along = true,
				note = "Troggs.",
				goals = {
					{ t = "collect", quest = 297, item = 2636, itemName = "Carved Stone Idol", count = 8, oi = 1, map = 1432, x = 70.29, y = 63.49, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 297, title = "Gathering Idols", npc = 1345, npcName = "Magmar Fellhew", map = 1432, x = 64.9, y = 66.65, f = "e" },
				},
			},
			{
				note = "Walks around. Inside and outside the building.",
				goals = {
					{ t = "turnin", quest = 298, title = "Excavation Progress Report", npc = 1105, npcName = "Jern Hornhelm", map = 1432, x = 37.24, y = 47.39, f = "e" },
					{ t = "accept", quest = 301, title = "Report to Ironforge", npc = 1105, npcName = "Jern Hornhelm", map = 1432, x = 37.24, y = 47.39, f = "e" },
				},
			},
			{
				note = "Inside and outside the cave.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the road to the path here", map = 1432, x = 29.32, y = 66.73 },
				},
			},
			{
				note = "Top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1432, x = 35.14, y = 84.04 },
					{ t = "goto", text = "Leave Stonesplinter Valley and follow the road", map = 1432, x = 30.57, y = 69.69 },
					{ t = "goto", text = "Follow the path up", map = 1432, x = 32.1, y = 58.53 },
				},
			},
			{
				note = "Top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "use", item = 6636, itemName = "Fire Sapta" },
				},
			},
			{
				note = "Inside the small cave. Top of the mountain. Follow the road.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1426, x = 86.9, y = 46.97 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 301, title = "Report to Ironforge", npc = 1356, npcName = "Prospector Stormpike", map = 1455, x = 74.65, y = 11.72, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-redridge-and-westfall-19-20",
		pack = "guides",
		title = "Redridge & Westfall",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-darkshore-20-21",
		author = "TuWoW & Zygor",
		minLevel = 19,
		maxLevel = 20,
		zone = 1433,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 244, title = "Encroaching Gnolls", npc = 464, npcName = "Guard Parker", map = 1433, x = 10.37, y = 71.26, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 244, title = "Encroaching Gnolls", npc = 1070, npcName = "Deputy Feldon", map = 1433, x = 25.65, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Lakeshire", map = 1433, x = 25.5, y = 59.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 125, title = "The Lost Tools", npc = 341, npcName = "Foreman Oslow", map = 1433, x = 27.05, y = 48.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 118, title = "The Price of Shoes", npc = 415, npcName = "Verner Osgood", map = 1433, x = 25.89, y = 47.28, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 120, title = "Messenger to Stormwind", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.9, y = 44.45, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "accept", quest = 129, title = "A Free Lunch", npc = 379, npcName = "Darcy", map = 1433, x = 21.66, y = 44.35, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 65, title = "The Defias Brotherhood", npc = 266, npcName = "Wiley the Black", map = 1433, x = 21.39, y = 45.35, f = "e" },
					{ t = "accept", quest = 132, title = "The Defias Brotherhood", npc = 266, npcName = "Wiley the Black", map = 1433, x = 21.39, y = 45.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3741, title = "Hilary's Necklace", npc = 8965, npcName = "Shawn", map = 1433, x = 24.23, y = 53.63, f = "e" },
				},
			},
			{
				note = "Large brown pile of dirt. Underwater.",
				goals = {
					{ t = "collect", quest = 3741, item = 10958, itemName = "Hilary's Necklace", oi = 1, map = 1433, x = 23.25, y = 53.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3741, title = "Hilary's Necklace", npc = 8962, npcName = "Hilary", map = 1433, x = 24.15, y = 53.63, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 132, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
					{ t = "accept", quest = 135, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 120, title = "Messenger to Stormwind", npc = 466, npcName = "General Marcus Jonathan", map = 1453, x = 69.14, y = 82.71, f = "e" },
					{ t = "accept", quest = 121, title = "Messenger to Stormwind", npc = 466, npcName = "General Marcus Jonathan", map = 1453, x = 69.14, y = 82.71, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 135, title = "The Defias Brotherhood", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.26, y = 70.73, f = "e" },
					{ t = "accept", quest = 141, title = "The Defias Brotherhood", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.26, y = 70.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 141, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
					{ t = "accept", quest = 142, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
				},
			},
			{
				note = "Multiple locations. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 103, item = 814, itemName = "Flask of Oil", count = 5, map = 1436, x = 53.4, y = 34.6, f = "e" },
				},
			},
			{
				note = "Walks a large path along the road. Also walks deep into Gold Coast Quarry and Jangolode Mine.",
				goals = {
					{ t = "collect", quest = 142, item = 1381, itemName = "A Mysterious Message", oi = 1, map = 1436, x = 45.1, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 103, title = "Keeper of the Flame", npc = 392, npcName = "Captain Grayson", map = 1436, x = 30.01, y = 86.02, f = "e" },
					{ t = "accept", quest = 104, title = "The Coastal Menace", npc = 392, npcName = "Captain Grayson", map = 1436, x = 30.01, y = 86.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 103, title = "Keeper of the Flame", npc = 392, npcName = "Captain Grayson", map = 1436, x = 30.01, y = 86.02, f = "e" },
				},
			},
			{
				note = "Larger grey murloc. Walks along the beach.",
				goals = {
					{ t = "collect", quest = 104, item = 3636, itemName = "Scale of Old Murk-Eye", oi = 1, map = 1436, x = 32.4, y = 82.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 104, title = "The Coastal Menace", npc = 392, npcName = "Captain Grayson", map = 1436, x = 30.01, y = 86.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 142, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing.",
				goals = {
					{ t = "accept", quest = 155, title = "The Defias Brotherhood", npc = 467, npcName = "The Defias Traitor", map = 1436, x = 55.68, y = 47.5, f = "e" },
				},
			},
			{
				note = "Follow and protect The Defias Traitor.",
				goals = {
					{ t = "complete", quest = 155, title = "The Defias Brotherhood", note = "Escort The Defias Traitor to Discover Where VanCleef is Hiding", map = 1436, x = 42.55, y = 71.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 155, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 246, title = "Assessing the Threat", npc = 1070, npcName = "Deputy Feldon", map = 1433, x = 25.65, y = 60.0, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 129, title = "A Free Lunch", npc = 464, npcName = "Guard Parker", map = 1433, x = 10.37, y = 71.26, f = "e" },
					{ t = "accept", quest = 130, title = "Visit the Herbalist", npc = 464, npcName = "Guard Parker", map = 1433, x = 10.37, y = 71.26, f = "e" },
				},
			},
			{
				label = "Kill_Redridge_Poachers",
				along = true,
				goals = {
					{ t = "kill", quest = 246, npc = 424, target = "Redridge Poacher", count = 6, oi = 2, map = 1433, x = 25.99, y = 81.81, f = "e" },
				},
			},
			{
				label = "Kill_Redridge_Mongrels",
				along = true,
				goals = {
					{ t = "kill", quest = 246, npc = 423, target = "Redridge Mongrel", count = 10, oi = 1, map = 1433, x = 25.99, y = 81.81, f = "e" },
				},
			},
			{
				note = "Helps reach level 20 after quest turnins. Good time to train abilities soon.",
				goals = {
					{ t = "goto", text = "ding 19,19400", map = 1433, x = 25.99, y = 81.81 },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 246, title = "Assessing the Threat", npc = 1070, npcName = "Deputy Feldon", map = 1433, x = 25.65, y = 60.0, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.25, y = 81.81 },
					{ t = "accept", quest = 1716, title = "Devourer of Souls", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.23, y = 85.22, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 461, npcName = "Demisette Cloyce", map = 1453, x = 39.25, y = 84.96, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5520, npcName = "Spackle Thornberry", map = 1453, x = 39.54, y = 84.52, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5498, npcName = "Elsharin", map = 1453, x = 48.2, y = 87.21, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "learnspell Teleport: Stormwind##3561", map = 1453, x = 50.5, y = 85.91 },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 5504, npcName = "Sheldras Moontree", map = 1453, x = 35.86, y = 67.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3765, title = "The Corruption Abroad", npc = 4984, npcName = "Argos Nightwhisper", map = 1453, x = 36.25, y = 67.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "accept", quest = 1793, title = "The Tome of Valor", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.47, y = 47.47, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "use", item = 6776, itemName = "Tome of Valor" },
					{ t = "accept", quest = 1649, title = "The Tome of Valor" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1649, title = "The Tome of Valor", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.47, y = 47.47, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5492, npcName = "Katherine the Pure", map = 1453, x = 48.47, y = 49.06, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "train", npc = 5484, npcName = "Brother Benjamin", map = 1453, x = 51.64, y = 46.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 343, title = "Speaking of Fortitude", npc = 1444, npcName = "Brother Kristoff", map = 1453, x = 55.03, y = 54.17, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 5515, npcName = "Einris Brightspear", map = 1453, x = 67.32, y = 36.23, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 2879, npcName = "Karrina Mekenda", map = 1453, x = 67.29, y = 36.79, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 918, npcName = "Osborne the Night Man", map = 1453, x = 77.38, y = 65.3, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 2360, title = "Mathias and the Defias", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.26, y = 70.74, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 2281, title = "Redridge Rendezvous", npc = 6946, npcName = "Renzik \"The Shiv\"", map = 1453, x = 78.25, y = 71.13, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 5479, npcName = "Wu Shen", map = 1453, x = 80.5, y = 59.86, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", map = 1455, x = 47.15, y = 13.87, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter Stormwind Keep", map = 1453, x = 73.09, y = 46.62 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 343, title = "Speaking of Fortitude", npc = 1440, npcName = "Milton Sheaf", map = 1453, x = 77.07, y = 30.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 118, title = "The Price of Shoes", npc = 514, npcName = "Smith Argus", map = 1429, x = 41.71, y = 65.55, f = "e" },
					{ t = "accept", quest = 119, title = "Return to Verner", npc = 514, npcName = "Smith Argus", map = 1429, x = 41.71, y = 65.55, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "accept", quest = 94, title = "A Watchful Eye", npc = 313, npcName = "Theocritus", map = 1429, x = 65.22, y = 69.71, f = "e" },
				},
			},
			{
				note = "Underwater.",
				goals = {
					{ t = "collect", quest = 125, item = 1309, itemName = "Oslow's Toolbox", oi = 1, map = 1433, x = 36.44, y = 54.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 125, title = "The Lost Tools", npc = 341, npcName = "Foreman Oslow", map = 1433, x = 27.05, y = 48.64, f = "e" },
					{ t = "accept", quest = 89, title = "The Everstill Bridge", npc = 341, npcName = "Foreman Oslow", map = 1433, x = 27.05, y = 48.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 119, title = "Return to Verner", npc = 415, npcName = "Verner Osgood", map = 1433, x = 25.88, y = 47.27, f = "e" },
					{ t = "accept", quest = 122, title = "Underbelly Scales", npc = 415, npcName = "Verner Osgood", map = 1433, x = 25.88, y = 47.27, f = "e" },
					{ t = "accept", quest = 124, title = "A Baying of Gnolls", npc = 415, npcName = "Verner Osgood", map = 1433, x = 25.88, y = 47.27, f = "e" },
				},
			},
			{
				note = "Small flying dragons.",
				goals = {
					{ t = "collect", quest = 122, item = 1221, itemName = "Underbelly Whelp Scale", count = 6, oi = 1, map = 1433, x = 31.31, y = 74.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 122, title = "Underbelly Scales", npc = 415, npcName = "Verner Osgood", map = 1433, x = 25.88, y = 47.27, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 121, title = "Messenger to Stormwind", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.9, y = 44.45, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 92, title = "Redridge Goulash", npc = 343, npcName = "Chef Breanna", map = 1433, x = 17.59, y = 43.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 130, title = "Visit the Herbalist", npc = 342, npcName = "Martie Jainrose", map = 1433, x = 16.77, y = 46.33, f = "e" },
					{ t = "accept", quest = 131, title = "Delivering Daffodils", npc = 342, npcName = "Martie Jainrose", map = 1433, x = 16.77, y = 46.33, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 131, title = "Delivering Daffodils", npc = 379, npcName = "Darcy", map = 1433, x = 21.66, y = 44.34, f = "e" },
				},
			},
			{
				note = "Gnolls. Redridge Alphas won't drop them.",
				goals = {
					{ t = "collect", quest = 89, item = 2856, itemName = "Iron Pike", count = 5, oi = 1, map = 1433, x = 18.08, y = 37.27, f = "e" },
					{ t = "collect", quest = 89, item = 1013, itemName = "Iron Rivet", count = 5, oi = 2, map = 1433, x = 18.08, y = 37.27, f = "e" },
				},
			},
			{
				label = "Kill_Redridge_Mystics_And_Brutes",
				along = true,
				goals = {
					{ t = "kill", quest = 124, npc = 430, target = "Redridge Mystic", count = 8, oi = 2, map = 1433, x = 18.08, y = 37.27, f = "e" },
					{ t = "kill", quest = 124, npc = 426, target = "Redridge Brute", count = 10, oi = 1, map = 1433, x = 18.08, y = 37.27, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2281, title = "Redridge Rendezvous", npc = 6966, npcName = "Lucius", map = 1433, x = 22.97, y = 52.04, f = "e" },
					{ t = "accept", quest = 2282, title = "Alther's Mill", npc = 6966, npcName = "Lucius", map = 1433, x = 22.97, y = 52.04, f = "e" },
				},
			},
			{
				note = "Small grey metal chests. Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "skill", level = 95, skill = "Lockpicking" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 2282, item = 7871, itemName = "Token of Thievery", oi = 1, map = 1433, x = 46.95, y = 44.69, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 124, title = "A Baying of Gnolls", npc = 415, npcName = "Verner Osgood", map = 1433, x = 25.88, y = 47.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 89, title = "The Everstill Bridge", npc = 341, npcName = "Foreman Oslow", map = 1433, x = 27.05, y = 48.64, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2282, title = "Alther's Mill", npc = 6966, npcName = "Lucius", map = 1433, x = 22.97, y = 52.04, f = "e" },
				},
			},
		},
	})
end

