-- TuWoW_Leveling — Guides/Professions_36.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-weaponsmith-questline",
		pack = "guides",
		title = "Weaponsmith Questline",
		category = "Professions",
		folder = "Blacksmithing",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "You must be at least this level before you can begin this questline. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "You must be at least this level with your Blacksmithing profession before you can create some of the item needed in this questline. Use the \"Blacksmithing (1-300)\" guide to accomplish this.",
				goals = {
					{ t = "skill", level = 230, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5302, title = "The Way of the Weaponsmith", npc = 11178, npcName = "Borgosh Corebender", map = 1454, x = 79.42, y = 23.73, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1434, x = 27.85, y = 76.75 },
					{ t = "goto", text = "Follow the path", map = 1434, x = 28.4, y = 75.77 },
					{ t = "goto", text = "Enter the building", map = 1434, x = 28.95, y = 75.34 },
					{ t = "goto", text = "learn Heavy Grinding Stone##3337", map = 1434, x = 28.99, y = 75.55 },
					{ t = "goto", text = "learn Solid Grinding Stone##9920", map = 1434, x = 28.99, y = 75.55 },
					{ t = "goto", text = "learn Heavy Mithril Axe##9993", map = 1434, x = 28.99, y = 75.55 },
					{ t = "goto", text = "learn Big Black Mace##10001", map = 1434, x = 28.99, y = 75.55 },
				},
			},
			{
				note = "Inside the building. This is a limited supply item. If she doesn't have it for sale, check the Auction House.",
				goals = {
					{ t = "goto", text = "Leave the building", map = 1434, x = 44.39, y = 93.07 },
					{ t = "goto", text = "Jump down and enter the building", map = 1434, x = 44.31, y = 93.11 },
					{ t = "buy", item = 12163, itemName = "Plans: Moonsteel Broadsword", map = 1434, x = 28.34, y = 75.46, f = "e" },
					{ t = "use", item = 12163, itemName = "Plans: Moonsteel Broadsword" },
					{ t = "goto", text = "learn Moonsteel Broadsword##3496", map = 1434, x = 44.28, y = 93.09 },
				},
			},
			{
				note = "This is a limited supply item. If she doesn't have it for sale, check the Auction House.",
				goals = {
					{ t = "buy", item = 12164, itemName = "Plans: Massive Iron Axe", map = 1434, x = 32.36, y = 27.95, f = "e" },
					{ t = "use", item = 12164, itemName = "Plans: Massive Iron Axe" },
					{ t = "goto", text = "learn Massive Iron Axe##3498", map = 1434, x = 32.36, y = 27.95 },
				},
			},
			{
				note = "If you have the Mining profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House. If you have the Skinning profession, you can gather this. If you have the Skinning profession, you can gather this.",
				goals = {
					{ t = "collect", quest = 5302, item = 3859, itemName = "Steel Bar", count = 32 },
					{ t = "collect", quest = 5302, item = 3860, itemName = "Mithril Bar", count = 56 },
					{ t = "collect", quest = 5302, item = 3575, itemName = "Iron Bar", count = 56 },
					{ t = "collect", quest = 5302, item = 3577, itemName = "Gold Bar", count = 16 },
					{ t = "collect", quest = 5302, item = 2838, itemName = "Heavy Stone", count = 48 },
					{ t = "collect", quest = 5302, item = 7912, itemName = "Solid Stone", count = 16 },
					{ t = "collect", quest = 5302, item = 3864, itemName = "Citrine", count = 4 },
					{ t = "collect", quest = 5302, item = 7971, itemName = "Black Pearl", count = 2 },
					{ t = "collect", quest = 5302, item = 1210, itemName = "Shadowgem", count = 8 },
					{ t = "collect", quest = 5302, item = 1705, itemName = "Lesser Moonstone", count = 12 },
					{ t = "collect", quest = 5302, item = 4234, itemName = "Heavy Leather", count = 28 },
					{ t = "collect", quest = 5302, item = 4304, itemName = "Thick Leather", count = 4 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 81.6, y = 22.77 },
					{ t = "buy", item = 3466, itemName = "Strong Flux", count = 16, map = 1454, x = 82.6, y = 23.96, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5302, item = 7966, itemName = "Solid Grinding Stone", count = 4 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5302, item = 3486, itemName = "Heavy Grinding Stone", count = 16 },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 5302, item = 3853, itemName = "Moonsteel Broadsword", count = 4, oi = 1, map = 1454, x = 79.76, y = 22.99, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 5302, item = 3855, itemName = "Massive Iron Axe", count = 4, oi = 2, map = 1454, x = 79.76, y = 22.99, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 5302, item = 7941, itemName = "Heavy Mithril Axe", count = 2, oi = 3, map = 1454, x = 79.76, y = 22.99, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 5302, item = 7945, itemName = "Big Black Mace", count = 2, oi = 4, map = 1454, x = 79.76, y = 22.99, f = "e" },
				},
			},
			{
				note = "You will learn this automatically.",
				goals = {
					{ t = "turnin", quest = 5302, title = "The Way of the Weaponsmith", npc = 11178, npcName = "Borgosh Corebender", map = 1454, x = 79.42, y = 23.73, f = "e" },
					{ t = "goto", text = "learn Weaponsmith##9787", map = 1454, x = 79.42, y = 23.73 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-master-axesmith-questline",
		pack = "guides",
		title = "Master Axesmith Questline",
		category = "Professions",
		folder = "Blacksmithing",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1452,
		version = 1,
		steps = {
			{
				note = "You must be at least this level before you can begin this questline. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 50 },
				},
			},
			{
				note = "You must be at least this level with your Blacksmithing profession before you can begin this questline. Use the \"Blacksmithing (1-300)\" guide to accomplish this.",
				goals = {
					{ t = "skill", level = 250, skill = "Blacksmithing" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1452, x = 60.56, y = 38.2 },
					{ t = "goto", text = "Enter the building", map = 1452, x = 61.33, y = 37.36 },
					{ t = "accept", quest = 5306, title = "Snakestone of the Shadow Huntress", npc = 11192, npcName = "Kilram", map = 1452, x = 61.3, y = 37.07, f = "e" },
				},
			},
			{
				note = "She is a boss inside the Lower Blackrock Spire dungeon. Use the \"Lower Blackrock Spire\" dungeon guide to accomplish this.",
				goals = {
					{ t = "collect", quest = 5306, item = 13352, itemName = "Vosh'gajin's Snakestone", oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1452, x = 60.56, y = 38.2 },
					{ t = "goto", text = "Enter the building", map = 1452, x = 61.33, y = 37.36 },
					{ t = "turnin", quest = 5306, title = "Snakestone of the Shadow Huntress", npc = 11192, npcName = "Kilram", map = 1452, x = 61.3, y = 37.07, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "learn Master Axesmith##17041", map = 1452, x = 61.3, y = 37.07 },
				},
			},
			{
				note = "You must be at least this level with your Blacksmithing profession before you can learn the plans in the next step. Use the \"Blacksmithing (1-300)\" guide to accomplish this.",
				goals = {
					{ t = "skill", level = 275, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "use", item = 12821, itemName = "Plans: Dawn's Edge" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-master-hammersmith-questline",
		pack = "guides",
		title = "Master Hammersmith Questline",
		category = "Professions",
		folder = "Blacksmithing",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1452,
		version = 1,
		steps = {
			{
				note = "You must be at least this level before you can begin this questline. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 50 },
				},
			},
			{
				note = "You must be at least this level with your Blacksmithing profession before you can begin this questline. Use the \"Blacksmithing (1-300)\" guide to accomplish this.",
				goals = {
					{ t = "skill", level = 250, skill = "Blacksmithing" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1452, x = 60.56, y = 38.2 },
					{ t = "goto", text = "Enter the building", map = 1452, x = 61.33, y = 37.36 },
					{ t = "accept", quest = 5305, title = "Sweet Serenity", npc = 11191, npcName = "Lilith the Lithe", map = 1452, x = 61.33, y = 37.13, f = "e" },
				},
			},
			{
				note = "He is a boss inside the Main Gate section of the Stratholme dungeon. Use the \"Stratholme\" dungeon guide to accomplish this.",
				goals = {
					{ t = "collect", quest = 5305, item = 13351, itemName = "Crimson Hammersmith's Apron", oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1452, x = 60.56, y = 38.2 },
					{ t = "goto", text = "Enter the building", map = 1452, x = 61.33, y = 37.36 },
					{ t = "turnin", quest = 5305, title = "Sweet Serenity", npc = 11191, npcName = "Lilith the Lithe", map = 1452, x = 61.33, y = 37.13, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "learn Master Hammersmith##17040", map = 1452, x = 61.33, y = 37.13 },
				},
			},
			{
				note = "You must be at least this level with your Blacksmithing profession before you can learn the plans in the next step. Use the \"Blacksmithing (1-300)\" guide to accomplish this.",
				goals = {
					{ t = "skill", level = 280, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "use", item = 12824, itemName = "Plans: Enchanted Battlehammer" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-master-swordsmith-questline",
		pack = "guides",
		title = "Master Swordsmith Questline",
		category = "Professions",
		folder = "Blacksmithing",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1452,
		version = 1,
		steps = {
			{
				note = "You must be at least this level before you can begin this questline. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 50 },
				},
			},
			{
				note = "You must be at least this level with your Blacksmithing profession before you can begin this questline. Use the \"Blacksmithing (1-300)\" guide to accomplish this.",
				goals = {
					{ t = "skill", level = 250, skill = "Blacksmithing" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1452, x = 60.56, y = 38.2 },
					{ t = "goto", text = "Enter the building", map = 1452, x = 61.33, y = 37.36 },
					{ t = "accept", quest = 5307, title = "Corruption", npc = 11193, npcName = "Seril Scourgebane", map = 1452, x = 61.33, y = 37.19, f = "e" },
				},
			},
			{
				note = "He is a boss inside the Service Gate section of the Stratholme dungeon. Use the \"Stratholme\" dungeon guide to accomplish this.",
				goals = {
					{ t = "collect", quest = 5307, item = 13350, itemName = "Insignia of the Black Guard", oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1452, x = 60.56, y = 38.2 },
					{ t = "goto", text = "Enter the building", map = 1452, x = 61.33, y = 37.36 },
					{ t = "turnin", quest = 5307, title = "Corruption", npc = 11193, npcName = "Seril Scourgebane", map = 1452, x = 61.33, y = 37.19, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "learn Master Swordsmith##17039", map = 1452, x = 61.33, y = 37.19 },
				},
			},
			{
				note = "You must be at least this level with your Blacksmithing profession before you can learn the plans in the next step. Use the \"Blacksmithing (1-300)\" guide to accomplish this.",
				goals = {
					{ t = "skill", level = 280, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "use", item = 12825, itemName = "Plans: Blazing Rapier" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-how-to-change-blacksmithing-specialization",
		pack = "guides",
		title = "How to Change Blacksmithing Specialization",
		category = "Professions",
		folder = "Blacksmithing",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this. You must be at least level 30 to be able to start the questlines to choose an Blacksmithing specialization.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "Inside the building. Choose the dialogue option that matches what you want to do.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1446, x = 64.9, y = 22.54 },
					{ t = "goto", text = "Enter the building", map = 1446, x = 65.41, y = 18.56 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-gnomish-engineering-questline",
		pack = "guides",
		title = "Gnomish Engineering Questline",
		category = "Professions",
		folder = "Engineering",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1413,
		version = 1,
		steps = {
			{
				note = "You must be at least this level before you can begin this questline. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 30 },
				},
			},
			{
				note = "You must be at least level 200 with your Engineering profession before you can begin this questline. Use the \"Engineering (1-300)\" guide to accomplish this.",
				goals = {
					{ t = "skill", level = 200, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1413, x = 62.89, y = 36.52 },
					{ t = "accept", quest = 3637, title = "Gnome Engineering", npc = 3494, npcName = "Tinkerwiz", map = 1413, x = 62.67, y = 36.31, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Leave the building", map = 1413, x = 62.89, y = 36.52 },
					{ t = "goto", text = "Run up the ramp", map = 1434, x = 26.92, y = 73.62 },
					{ t = "goto", text = "Follow the path", map = 1434, x = 28.1, y = 73.96 },
					{ t = "goto", text = "Enter the building", map = 1434, x = 28.29, y = 76.16 },
					{ t = "turnin", quest = 3637, title = "Gnome Engineering", npc = 7406, npcName = "Oglethorpe Obnoticus", map = 1434, x = 28.36, y = 76.35, f = "e" },
					{ t = "accept", quest = 3642, title = "The Pledge of Secrecy", npc = 7406, npcName = "Oglethorpe Obnoticus", map = 1434, x = 28.36, y = 76.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 10794, itemName = "Oglethorpe's Pledge of Secrecy" },
					{ t = "collect", quest = 3642, item = 11282, itemName = "Oglethorpe's Signed Pledge", oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3642, title = "The Pledge of Secrecy", npc = 7406, npcName = "Oglethorpe Obnoticus", map = 1434, x = 28.36, y = 76.35, f = "e" },
					{ t = "accept", quest = 3643, title = "Show Your Work", npc = 7406, npcName = "Oglethorpe Obnoticus", map = 1434, x = 28.36, y = 76.35, f = "e" },
				},
			},
			{
				note = "Inside the building. This is a limited supply item. If he doesn't have it for sale, check the Auction House.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1434, x = 28.11, y = 74.99 },
					{ t = "buy", item = 13310, itemName = "Schematic: Accurate Scope", map = 1434, x = 28.5, y = 75.12, f = "e" },
					{ t = "use", item = 13310, itemName = "Schematic: Accurate Scope" },
					{ t = "goto", text = "learn Accurate Scope##3979", map = 1434, x = 28.5, y = 75.12 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 75.23, y = 24.61 },
					{ t = "goto", text = "learn Bronze Framework##3953", map = 1454, x = 76.17, y = 25.17 },
					{ t = "goto", text = "learn Gold Power Core##12584", map = 1454, x = 76.17, y = 25.17 },
					{ t = "goto", text = "learn Iron Strut##3958", map = 1454, x = 76.17, y = 25.17 },
					{ t = "goto", text = "learn Gyrochronatom##3961", map = 1454, x = 76.17, y = 25.17 },
					{ t = "goto", text = "learn Advanced Target Dummy##3965", map = 1454, x = 76.17, y = 25.17 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 2880, itemName = "Weak Flux", map = 1454, x = 75.48, y = 25.36, f = "e" },
				},
			},
			{
				note = "If you have the Mining profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House. If you have the Skinning profession, you can gather this. If you have the Skinning profession, you can gather this.",
				goals = {
					{ t = "collect", quest = 3643, item = 3860, itemName = "Mithril Bar", count = 18 },
					{ t = "collect", quest = 3643, item = 2841, itemName = "Bronze Bar", count = 6 },
					{ t = "collect", quest = 3643, item = 1529, itemName = "Jade" },
					{ t = "collect", quest = 3643, item = 3864, itemName = "Citrine" },
					{ t = "collect", quest = 3643, item = 3575, itemName = "Iron Bar", count = 6 },
					{ t = "collect", quest = 3643, item = 3577, itemName = "Gold Bar" },
					{ t = "collect", quest = 3643, item = 2319, itemName = "Medium Leather", count = 2 },
					{ t = "collect", quest = 3643, item = 4234, itemName = "Heavy Leather", count = 8 },
					{ t = "collect", quest = 3643, item = 2592, itemName = "Wool Cloth", count = 2 },
				},
			},
			{
				note = "Stand next to the anvil. Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1434, x = 26.92, y = 73.62 },
					{ t = "goto", text = "Follow the path", map = 1434, x = 28.1, y = 73.96 },
					{ t = "goto", text = "Enter the building", map = 1434, x = 28.95, y = 75.33 },
					{ t = "collect", quest = 3643, item = 10559, itemName = "Mithril Tube", count = 6, oi = 1, map = 1434, x = 28.95, y = 75.48, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil. Inside the building.",
				goals = {
					{ t = "collect", quest = 3643, item = 4371, itemName = "Bronze Tube", map = 1434, x = 28.95, y = 75.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3643, item = 4407, itemName = "Accurate Scope", oi = 2 },
				},
			},
			{
				note = "Stand next to the anvil. Inside the building.",
				goals = {
					{ t = "collect", quest = 3643, item = 4387, itemName = "Iron Strut", count = 2, map = 1434, x = 28.95, y = 75.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3643, item = 4382, itemName = "Bronze Framework", count = 2 },
				},
			},
			{
				note = "Stand next to the anvil. Inside the building. This schematic will give you 3 of these.",
				goals = {
					{ t = "collect", quest = 3643, item = 10558, itemName = "Gold Power Core", count = 2, map = 1434, x = 28.95, y = 75.48, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil. Inside the building.",
				goals = {
					{ t = "collect", quest = 3643, item = 4389, itemName = "Gyrochronatom", count = 2, map = 1434, x = 28.95, y = 75.48, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil. Inside the building.",
				goals = {
					{ t = "collect", quest = 3643, item = 4392, itemName = "Advanced Target Dummy", count = 2, oi = 3, map = 1434, x = 28.95, y = 75.48, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Leave the building", map = 1434, x = 28.95, y = 75.33 },
					{ t = "goto", text = "Enter the building", map = 1434, x = 28.29, y = 76.16 },
					{ t = "turnin", quest = 3643, title = "Show Your Work", npc = 7406, npcName = "Oglethorpe Obnoticus", map = 1434, x = 28.36, y = 76.35, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-gnome-engineer-membership-card-renewal",
		pack = "guides",
		title = "Gnome Engineer Membership Card Renewal",
		category = "Professions",
		folder = "Engineering",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1434,
		version = 1,
		steps = {
			{
				note = "Inside the building. You must have the Gnomish Engineering specialization to be able to complete this quest. This quest requires 2 gold to complete. This will keep your Gnome Engineer Membership Card active for another 14 days of played time.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1434, x = 28.29, y = 76.16 },
					{ t = "accept", quest = 3645, title = "Membership Card Renewal", npc = 7406, npcName = "Oglethorpe Obnoticus", map = 1434, x = 28.36, y = 76.35, f = "e" },
				},
			},
			{
				note = "You will receive one of these in your mailbo 24 hours after renewing your membership card. You can destroy and renew your membership card repeatedly, if you want more of them to open. You don't need to wait for the card to expire on its own. These will contain some Engineer crafting supplies. The rare schematic for the \"Lil' Smoky\" pet also has a chance to be inside.",
				goals = {
					{ t = "collect", item = 11423, itemName = "Gnome Engineer's Renewal Gift" },
					{ t = "use", item = 11423, itemName = "Gnome Engineer's Renewal Gift" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-goblin-engineering-questline",
		pack = "guides",
		title = "Goblin Engineering Questline",
		category = "Professions",
		folder = "Engineering",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1413,
		version = 1,
		steps = {
			{
				note = "You must be at least this level before you can begin this questline. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 30 },
				},
			},
			{
				note = "You must be at least level 200 with your Engineering profession before you can begin this questline. Use the \"Engineering (1-300)\" guide to accomplish this.",
				goals = {
					{ t = "skill", level = 200, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1413, x = 62.89, y = 36.52 },
					{ t = "accept", quest = 3633, title = "Goblin Engineering", npc = 3494, npcName = "Tinkerwiz", map = 1413, x = 62.67, y = 36.31, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Leave the building", map = 1413, x = 62.89, y = 36.52 },
					{ t = "goto", text = "Enter the building", map = 1446, x = 52.39, y = 27.3 },
					{ t = "turnin", quest = 3633, title = "Goblin Engineering", npc = 8126, npcName = "Nixx Sprocketspring", map = 1446, x = 52.48, y = 27.33, f = "e" },
					{ t = "accept", quest = 3638, title = "The Pledge of Secrecy", npc = 8126, npcName = "Nixx Sprocketspring", map = 1446, x = 52.48, y = 27.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 10792, itemName = "Nixx's Pledge of Secrecy" },
					{ t = "collect", quest = 3638, item = 11270, itemName = "Nixx's Signed Pledge", oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3638, title = "The Pledge of Secrecy", npc = 8126, npcName = "Nixx Sprocketspring", map = 1446, x = 52.48, y = 27.33, f = "e" },
					{ t = "accept", quest = 3639, title = "Show Your Work", npc = 8126, npcName = "Nixx Sprocketspring", map = 1446, x = 52.48, y = 27.33, f = "e" },
				},
			},
			{
				note = "If you have the Mining profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House. If you have the Skinning profession, you can gather this.",
				goals = {
					{ t = "collect", quest = 3639, item = 3575, itemName = "Iron Bar", count = 30 },
					{ t = "collect", quest = 3639, item = 2838, itemName = "Heavy Stone", count = 40 },
					{ t = "collect", quest = 3639, item = 2842, itemName = "Silver Bar", count = 2 },
					{ t = "collect", quest = 3639, item = 7912, itemName = "Solid Stone", count = 20 },
					{ t = "collect", quest = 3639, item = 4306, itemName = "Silk Cloth", count = 10 },
					{ t = "collect", quest = 3639, item = 2841, itemName = "Bronze Bar", count = 20 },
					{ t = "collect", quest = 3639, item = 2319, itemName = "Medium Leather", count = 5 },
					{ t = "collect", quest = 3639, item = 2592, itemName = "Wool Cloth", count = 20 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "learn Big Iron Bomb##3967", map = 1446, x = 52.34, y = 27.72 },
					{ t = "goto", text = "learn Solid Dynamite##12586", map = 1446, x = 52.34, y = 27.72 },
					{ t = "goto", text = "learn Explosive Sheep##3955", map = 1446, x = 52.34, y = 27.72 },
					{ t = "goto", text = "learn Solid Blasting Powder##12585", map = 1446, x = 52.34, y = 27.72 },
					{ t = "goto", text = "learn Bronze Framework##3953", map = 1446, x = 52.34, y = 27.72 },
					{ t = "goto", text = "learn Heavy Blasting Powder##3945", map = 1446, x = 52.34, y = 27.72 },
					{ t = "goto", text = "learn Whirring Bronze Gizmo##3942", map = 1446, x = 52.34, y = 27.72 },
					{ t = "goto", text = "learn Silver Contact##3973", map = 1446, x = 52.34, y = 27.72 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3639, item = 4377, itemName = "Heavy Blasting Powder", count = 40 },
				},
			},
			{
				note = "This schematic will give you 5 of these.",
				goals = {
					{ t = "collect", quest = 3639, item = 4404, itemName = "Silver Contact", count = 10 },
				},
			},
			{
				note = "Stand next to the anvil. This schematic will give you 2 of these.",
				goals = {
					{ t = "collect", quest = 3639, item = 4394, itemName = "Big Iron Bomb", count = 20, oi = 1, map = 1446, x = 51.4, y = 28.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3639, item = 10505, itemName = "Solid Blasting Powder", count = 10 },
				},
			},
			{
				note = "Stand next to the anvil. This schematic will give you 2 of these.",
				goals = {
					{ t = "collect", quest = 3639, item = 10507, itemName = "Solid Dynamite", count = 20, oi = 2, map = 1446, x = 51.4, y = 28.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3639, item = 4382, itemName = "Bronze Framework", count = 5 },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 3639, item = 4375, itemName = "Whirring Bronze Gizmo", count = 5, map = 1446, x = 51.4, y = 28.72, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 3639, item = 4384, itemName = "Explosive Sheep", count = 5, oi = 3, map = 1446, x = 51.4, y = 28.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1446, x = 52.39, y = 27.3 },
					{ t = "turnin", quest = 3639, title = "Show Your Work", npc = 8126, npcName = "Nixx Sprocketspring", map = 1446, x = 52.48, y = 27.33, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-goblin-engineer-membership-card-renewal",
		pack = "guides",
		title = "Goblin Engineer Membership Card Renewal",
		category = "Professions",
		folder = "Engineering",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Inside the building. You must have the Goblin Engineering specialization to be able to complete this quest. This quest requires 2 gold to complete. This will keep your Goblin Engineer Membership Card active for another 14 days of played time.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1446, x = 52.39, y = 27.3 },
					{ t = "accept", quest = 3644, title = "Membership Card Renewal", npc = 8126, npcName = "Nixx Sprocketspring", map = 1446, x = 52.48, y = 27.33, f = "e" },
				},
			},
			{
				note = "You will receive one of these in your mailbo 24 hours after renewing your membership card. You can destroy and renew your membership card repeatedly, if you want more of them to open. You don't need to wait for the card to expire on its own. These will contain some Engineer crafting supplies. The rare schematic for the \"Pet Bombling\" pet also has a chance to be inside.",
				goals = {
					{ t = "collect", item = 11422, itemName = "Goblin Engineer's Renewal Gift" },
					{ t = "use", item = 11422, itemName = "Goblin Engineer's Renewal Gift" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-how-to-change-engineering-specialization",
		pack = "guides",
		title = "How to Change Engineering Specialization",
		category = "Professions",
		folder = "Engineering",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this. You must be at least level 30 to be able to start the questlines to choose an Engineering specialization.",
				goals = {
					{ t = "level", level = 30 },
				},
			},
			{
				note = "Inside the building. Choose the dialogue option that matches what you want to do.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1446, x = 64.9, y = 22.54 },
					{ t = "goto", text = "Enter the building", map = 1446, x = 65.41, y = 18.56 },
				},
			},
		},
	})
end

