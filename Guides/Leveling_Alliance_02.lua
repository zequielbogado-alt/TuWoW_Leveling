-- TuWoW_Leveling — Guides/Leveling_Alliance_02.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-human-starter-1-13-part-2",
		pack = "guides",
		title = "Human Starter (Parte 2/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-human-starter-1-13-part-3",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1429,
		version = 1,
		races = { "Human" },
		steps = {
			{
				goals = {
					{ t = "complete", quest = 47, title = "Gold Dust Exchange", note = "Resurrect at the Spirit Healer", map = 1429, x = 39.48, y = 60.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 47, title = "Gold Dust Exchange", npc = 241, npcName = "Remy \"Two Times\"", map = 1429, x = 42.14, y = 67.26, f = "e" },
					{ t = "accept", quest = 40, title = "A Fishy Peril", npc = 241, npcName = "Remy \"Two Times\"", map = 1429, x = 42.14, y = 67.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 40, title = "A Fishy Peril", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.11, y = 65.93, f = "e" },
					{ t = "accept", quest = 35, title = "Further Concerns", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.11, y = 65.93, f = "e" },
					{ t = "turnin", quest = 62, title = "The Fargodeep Mine", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.11, y = 65.93, f = "e" },
					{ t = "accept", quest = 76, title = "The Jasperlode Mine", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.11, y = 65.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 60, title = "Kobold Candles", npc = 253, npcName = "William Pestle", map = 1429, x = 43.32, y = 65.7, f = "e" },
					{ t = "turnin", quest = 107, title = "Note to William", npc = 253, npcName = "William Pestle", map = 1429, x = 43.32, y = 65.7, f = "e" },
					{ t = "accept", quest = 112, title = "Collecting Kelp", npc = 253, npcName = "William Pestle", map = 1429, x = 43.32, y = 65.7, f = "e" },
				},
			},
			{
				label = "Collect_Crystal_Kelp_Fronds",
				along = true,
				goals = {
					{ t = "collect", quest = 112, item = 1256, itemName = "Crystal Kelp Frond", count = 4, oi = 1, map = 1429, x = 54.14, y = 65.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 112, title = "Collecting Kelp", npc = 253, npcName = "William Pestle", map = 1429, x = 43.32, y = 65.71, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 114, title = "The Escape", npc = 253, npcName = "William Pestle", map = 1429, x = 43.32, y = 65.71, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 906, npcName = "Maximillian Crowe", map = 1429, x = 44.39, y = 66.24, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6374, npcName = "Cylina Darkheart", map = 1429, x = 44.4, y = 65.99, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 328, npcName = "Zaldimar Wefhellt", map = 1429, x = 43.25, y = 66.19, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 377, npcName = "Priestess Josetta", map = 1429, x = 43.28, y = 65.72, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 917, npcName = "Keryn Sylvius", map = 1429, x = 43.87, y = 65.94, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 927, npcName = "Brother Wilhelm", map = 1429, x = 41.1, y = 66.04, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 913, npcName = "Lyria Du Lac", map = 1429, x = 41.08, y = 65.77, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", map = 1429, x = 41.15, y = 66.23, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 114, title = "The Escape", npc = 251, npcName = "Maybell Maclure", map = 1429, x = 43.15, y = 89.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Goldshire", map = 1429, x = 43.77, y = 65.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 35, title = "Further Concerns", npc = 261, npcName = "Guard Thomas", map = 1429, x = 73.97, y = 72.18, f = "e" },
					{ t = "accept", quest = 37, title = "Find the Lost Guards", npc = 261, npcName = "Guard Thomas", map = 1429, x = 73.97, y = 72.18, f = "e" },
					{ t = "accept", quest = 52, title = "Protect the Frontier", npc = 261, npcName = "Guard Thomas", map = 1429, x = 73.97, y = 72.18, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 83, title = "Red Linen Goods", npc = 278, npcName = "Sara Timberlain", map = 1429, x = 79.46, y = 68.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5545, title = "A Bundle of Trouble", npc = 10616, npcName = "Supervisor Raelen", map = 1429, x = 81.38, y = 66.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 37, title = "Find the Lost Guards", map = 1429, x = 72.65, y = 60.33, f = "e" },
					{ t = "accept", quest = 45, title = "Discover Rolf's Fate", map = 1429, x = 72.65, y = 60.33, f = "e" },
				},
			},
			{
				label = "Collect_Bundles_Of_Wood",
				along = true,
				note = "Small piles of brown logs. Near the base of trees.",
				goals = {
					{ t = "collect", quest = 5545, item = 13872, itemName = "Bundle of Wood", count = 8, oi = 1, map = 1429, x = 80.54, y = 60.44, f = "e" },
				},
			},
			{
				label = "Kill_Young_Forest_Bears",
				along = true,
				goals = {
					{ t = "kill", quest = 52, npc = 822, target = "Young Forest Bear", count = 5, oi = 2, map = 1429, x = 80.54, y = 60.44, f = "e" },
				},
			},
			{
				label = "Kill_Prowlers",
				along = true,
				note = "Wolves.",
				goals = {
					{ t = "kill", quest = 52, npc = 118, target = "Prowler", count = 8, oi = 1, map = 1429, x = 80.54, y = 60.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 45, title = "Discover Rolf's Fate", map = 1429, x = 79.8, y = 55.52, f = "e" },
					{ t = "accept", quest = 71, title = "Report to Thomas", map = 1429, x = 79.8, y = 55.52, f = "e" },
				},
			},
			{
				note = "Inside the mine.",
				goals = {
					{ t = "goto", text = "Run around the mountain and enter the mine", map = 1429, x = 61.71, y = 53.87 },
					{ t = "complete", quest = 76, title = "The Jasperlode Mine", note = "Scout Through the Jasperlode Mine", map = 1429, x = 60.38, y = 49.68, f = "e" },
				},
			},
			{
				label = "Collect_Rough_Wolf_Pelts_Skinning",
				along = true,
				note = "Wolves. Skin them.",
				goals = {
					{ t = "goto", text = "Leave the mine", map = 1429, x = 61.74, y = 53.88 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Leave the mine", map = 1429, x = 61.74, y = 53.88 },
				},
			},
			{
				label = "Collect_Red_Linen_Bandanas",
				along = true,
				goals = {
					{ t = "collect", quest = 83, item = 1019, itemName = "Red Linen Bandana", count = 6, oi = 1, map = 1429, x = 69.49, y = 79.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 1972, itemName = "Westfall Deed" },
					{ t = "accept", quest = 184, title = "Furlbrow's Deed" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 52, title = "Protect the Frontier", npc = 261, npcName = "Guard Thomas", map = 1429, x = 73.97, y = 72.18, f = "e" },
					{ t = "turnin", quest = 71, title = "Report to Thomas", npc = 261, npcName = "Guard Thomas", map = 1429, x = 73.97, y = 72.18, f = "e" },
					{ t = "accept", quest = 39, title = "Deliver Thomas' Report", npc = 261, npcName = "Guard Thomas", map = 1429, x = 73.97, y = 72.18, f = "e" },
					{ t = "accept", quest = 109, title = "Report to Gryan Stoutmantle", npc = 261, npcName = "Guard Thomas", map = 1429, x = 73.97, y = 72.18, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 83, title = "Red Linen Goods", npc = 278, npcName = "Sara Timberlain", map = 1429, x = 79.46, y = 68.78, f = "e" },
				},
			},
			{
				note = "Buy level 10 ammo when restocking.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 5545, title = "A Bundle of Trouble", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5545, title = "A Bundle of Trouble", npc = 10616, npcName = "Supervisor Raelen", map = 1429, x = 81.38, y = 66.11, f = "e" },
				},
			},
			{
				note = "Follow the road carefully. Higher level enemies.",
				goals = {
					{ t = "getfp", location = "Lakeshire", map = 1433, x = 25.5, y = 59.41, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 906, npcName = "Maximillian Crowe", map = 1429, x = 44.39, y = 66.24, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { races = { "Human" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1685, title = "Gakin's Summons", npc = 6121, npcName = "Remen Marcot", map = 1429, x = 44.49, y = 66.27, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6374, npcName = "Cylina Darkheart", map = 1429, x = 44.4, y = 65.99, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 328, npcName = "Zaldimar Wefhellt", map = 1429, x = 43.25, y = 66.19, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 377, npcName = "Priestess Josetta", map = 1429, x = 43.28, y = 65.72, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Human" }, classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 5635, title = "Desperate Prayer", npc = 377, npcName = "Priestess Josetta", map = 1429, x = 43.28, y = 65.72, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 917, npcName = "Keryn Sylvius", map = 1429, x = 43.87, y = 65.94, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 2205, title = "Seek out SI: 7", npc = 917, npcName = "Keryn Sylvius", map = 1429, x = 43.87, y = 65.94, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 61, title = "Shipment to Stormwind", npc = 253, npcName = "William Pestle", map = 1429, x = 43.32, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 39, title = "Deliver Thomas' Report", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.11, y = 65.93, f = "e" },
					{ t = "turnin", quest = 76, title = "The Jasperlode Mine", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.11, y = 65.93, f = "e" },
					{ t = "accept", quest = 239, title = "Westbrook Garrison Needs Help!", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.11, y = 65.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1097, title = "Elmore's Task", npc = 514, npcName = "Smith Argus", map = 1429, x = 41.71, y = 65.55, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 927, npcName = "Brother Wilhelm", map = 1429, x = 41.1, y = 66.04, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 913, npcName = "Lyria Du Lac", map = 1429, x = 41.08, y = 65.77, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1638, title = "A Warrior's Training", npc = 913, npcName = "Lyria Du Lac", map = 1429, x = 41.09, y = 65.77, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", map = 1429, x = 41.15, y = 66.23, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", map = 1429, x = 41.79, y = 66.37, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on a Young Forest Bear. Find one that's level 9, if possible. Dismiss your pet first.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 239, title = "Westbrook Garrison Needs Help!", note = "Click Here to Continue", map = 1429, x = 43.18, y = 81.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 239, title = "Westbrook Garrison Needs Help!", npc = 963, npcName = "Deputy Rainer", map = 1429, x = 24.23, y = 74.45, f = "e" },
					{ t = "accept", quest = 11, title = "Riverpaw Gnoll Bounty", npc = 963, npcName = "Deputy Rainer", map = 1429, x = 24.23, y = 74.45, f = "e" },
				},
			},
			{
				note = "Gnolls.",
				goals = {
					{ t = "collect", quest = 11, item = 782, itemName = "Painted Gnoll Armband", count = 8, oi = 1, map = 1429, x = 28.06, y = 86.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11, title = "Riverpaw Gnoll Bounty", npc = 963, npcName = "Deputy Rainer", map = 1429, x = 24.23, y = 74.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 184, title = "Furlbrow's Deed", npc = 237, npcName = "Farmer Furlbrow", map = 1436, x = 59.96, y = 19.36, f = "e" },
					{ t = "accept", quest = 64, title = "The Forgotten Heirloom", npc = 237, npcName = "Farmer Furlbrow", map = 1436, x = 59.96, y = 19.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 36, title = "Westfall Stew", npc = 238, npcName = "Verna Furlbrow", map = 1436, x = 59.92, y = 19.42, f = "e" },
					{ t = "accept", quest = 151, title = "Poor Old Blanchy", npc = 238, npcName = "Verna Furlbrow", map = 1436, x = 59.92, y = 19.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9, title = "The Killing Fields", npc = 233, npcName = "Farmer Saldean", map = 1436, x = 56.05, y = 31.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 36, title = "Westfall Stew", npc = 235, npcName = "Salma Saldean", map = 1436, x = 56.42, y = 30.52, f = "e" },
					{ t = "accept", quest = 38, title = "Westfall Stew", npc = 235, npcName = "Salma Saldean", map = 1436, x = 56.42, y = 30.52, f = "e" },
					{ t = "accept", quest = 22, title = "Goretusk Liver Pie", npc = 235, npcName = "Salma Saldean", map = 1436, x = 56.42, y = 30.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 109, title = "Report to Gryan Stoutmantle", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
					{ t = "accept", quest = 12, title = "The People's Militia", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 102, title = "Patrolling Westfall", npc = 821, npcName = "Captain Danuvin", map = 1436, x = 56.42, y = 47.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 6181, title = "A Swift Message", npc = 491, npcName = "Quartermaster Lewis", map = 1436, x = 57.0, y = 47.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Sentinel Hill", map = 1436, x = 56.55, y = 52.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6181, title = "A Swift Message", npc = 523, npcName = "Thor", map = 1436, x = 56.56, y = 52.64, f = "e" },
					{ t = "accept", quest = 6281, title = "Continue to Stormwind", npc = 523, npcName = "Thor", map = 1436, x = 56.56, y = 52.64, f = "e" },
				},
			},
			{
				note = "Open the flight map. Allows guide to learn your flight paths.",
				goals = {
					{ t = "getfp", location = "Stormwind City", map = 1436, x = 56.55, y = 52.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 523, npcName = "Thor", map = 1436, x = 56.6, y = 52.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 61, title = "Shipment to Stormwind", npc = 279, npcName = "Morgan Pestle", map = 1453, x = 63.16, y = 74.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR", "PALADIN", "HUNTER", "ROGUE", "PRIEST", "MAGE", "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Train Two-Handed Swords", map = 1453, x = 63.88, y = 69.09, only = { classes = { "WARRIOR", "PALADIN", "HUNTER" } } },
					{ t = "goto", text = "Train One-Handed Swords", map = 1453, x = 63.88, y = 69.09, only = { classes = { "ROGUE", "MAGE", "WARLOCK" } } },
					{ t = "goto", text = "Train Staves", map = 1453, x = 63.88, y = 69.09, only = { classes = { "PRIEST", "WARLOCK" } } },
					{ t = "goto", text = "Train Daggers", map = 1453, x = 63.88, y = 69.09, only = { classes = { "MAGE" } } },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.21, y = 81.84 },
					{ t = "turnin", quest = 1685, title = "Gakin's Summons", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.25, f = "e" },
					{ t = "accept", quest = 1688, title = "Surena Caledon", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.25, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1688, item = 6810, itemName = "Surena's Choker", oi = 1, map = 1429, x = 71.02, y = 80.78, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.21, y = 81.84 },
					{ t = "turnin", quest = 1688, title = "Surena Caledon", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.25, f = "e" },
					{ t = "accept", quest = 1689, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.25, f = "e" },
				},
			},
			{
				note = "Stand on the pink symbol. Inside the crypt. Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 6928, itemName = "Bloodstone Choker" },
					{ t = "kill", quest = 1689, npc = 5676, target = "Summoned Voidwalker", oi = 1, map = 1453, x = 36.79, y = 89.56, f = "e" },
				},
			},
			{
				note = "Above the crypt. Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1689, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.25, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Stormwind City", map = 1453, x = 60.39, y = 75.27, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2205, title = "Seek out SI: 7", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.31, y = 70.74, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6281, title = "Continue to Stormwind", npc = 1323, npcName = "Osric Strang", map = 1453, x = 77.17, y = 60.98, f = "e" },
					{ t = "accept", quest = 6261, title = "Dungar Longdrink", npc = 1323, npcName = "Osric Strang", map = 1453, x = 77.17, y = 60.98, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1638, title = "A Warrior's Training", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.13, y = 53.26, f = "e" },
					{ t = "accept", quest = 1639, title = "Bartleby the Drunk", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.13, y = 53.26, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building. You will be attacked.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1639, title = "Bartleby the Drunk", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.76, y = 52.56, f = "e" },
					{ t = "accept", quest = 1640, title = "Beat Bartleby", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.76, y = 52.56, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "complete", quest = 1640, title = "Beat Bartleby", map = 1453, x = 76.76, y = 52.56, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1640, title = "Beat Bartleby", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.76, y = 52.56, f = "e" },
					{ t = "accept", quest = 1665, title = "Bartleby's Mug", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.76, y = 52.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1665, title = "Bartleby's Mug", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.13, y = 53.26, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.96, y = 51.06 },
					{ t = "turnin", quest = 5635, title = "Desperate Prayer", npc = 376, npcName = "High Priestess Laurena", map = 1453, x = 49.52, y = 44.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1097, title = "Elmore's Task", npc = 1416, npcName = "Grimand Elmore", map = 1453, x = 59.72, y = 33.78, f = "e" },
					{ t = "accept", quest = 353, title = "Stormpike's Delivery", npc = 1416, npcName = "Grimand Elmore", map = 1453, x = 59.72, y = 33.78, f = "e" },
				},
			},
			{
				note = "Walk into the portal.",
				goals = {
					{ t = "goto", text = "Enter the Deeprun Tram", map = 1453, x = 69.31, y = 30.56 },
				},
			},
			{
				note = "Ride the tram to Ironforge. Middle platform, near the wall. Ironforge section of the Deeprun Tram.",
				goals = {
					{ t = "accept", quest = 6661, title = "Deeprun Rat Roundup", npc = 12997, npcName = "Monty" },
				},
			},
		},
	})
end

