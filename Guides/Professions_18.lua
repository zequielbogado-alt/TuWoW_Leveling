-- TuWoW_Leveling — Guides/Professions_18.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-weaponsmith-questline",
		pack = "guides",
		title = "Weaponsmith Questline",
		category = "Professions",
		folder = "Blacksmithing",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1455,
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
					{ t = "accept", quest = 5284, title = "The Way of the Weaponsmith", npc = 11146, npcName = "Ironus Coldsteel", map = 1455, x = 50.33, y = 43.55, f = "e" },
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
					{ t = "goto", text = "Run up the ramp", map = 1434, x = 44.02, y = 92.76 },
					{ t = "goto", text = "Enter the tunnel", map = 1434, x = 27.95, y = 73.61 },
					{ t = "goto", text = "Leave the tunnel", map = 1434, x = 29.59, y = 72.46 },
					{ t = "goto", text = "Follow the road", map = 1434, x = 30.96, y = 71.7 },
					{ t = "goto", text = "Continue following the road", map = 1434, x = 33.46, y = 55.53 },
					{ t = "goto", text = "Continue following the road", map = 1434, x = 36.15, y = 48.91 },
					{ t = "goto", text = "Continue following the road", map = 1434, x = 43.93, y = 28.59 },
					{ t = "goto", text = "Follow the path down", map = 1434, x = 35.2, y = 14.73 },
					{ t = "buy", item = 12164, itemName = "Plans: Massive Iron Axe", map = 1434, x = 35.75, y = 10.66, f = "e" },
					{ t = "use", item = 12164, itemName = "Plans: Massive Iron Axe" },
					{ t = "goto", text = "learn Massive Iron Axe##3498", map = 1434, x = 35.75, y = 10.66 },
				},
			},
			{
				note = "If you have the Mining profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House. If you have the Skinning profession, you can gather this. If you have the Skinning profession, you can gather this.",
				goals = {
					{ t = "collect", quest = 5284, item = 3859, itemName = "Steel Bar", count = 32 },
					{ t = "collect", quest = 5284, item = 3860, itemName = "Mithril Bar", count = 56 },
					{ t = "collect", quest = 5284, item = 3575, itemName = "Iron Bar", count = 56 },
					{ t = "collect", quest = 5284, item = 3577, itemName = "Gold Bar", count = 16 },
					{ t = "collect", quest = 5284, item = 2838, itemName = "Heavy Stone", count = 48 },
					{ t = "collect", quest = 5284, item = 7912, itemName = "Solid Stone", count = 16 },
					{ t = "collect", quest = 5284, item = 3864, itemName = "Citrine", count = 4 },
					{ t = "collect", quest = 5284, item = 7971, itemName = "Black Pearl", count = 2 },
					{ t = "collect", quest = 5284, item = 1210, itemName = "Shadowgem", count = 8 },
					{ t = "collect", quest = 5284, item = 1705, itemName = "Lesser Moonstone", count = 12 },
					{ t = "collect", quest = 5284, item = 4234, itemName = "Heavy Leather", count = 28 },
					{ t = "collect", quest = 5284, item = 4304, itemName = "Thick Leather", count = 4 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 3466, itemName = "Strong Flux", count = 16, map = 1455, x = 51.72, y = 42.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5284, item = 7966, itemName = "Solid Grinding Stone", count = 4 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5284, item = 3486, itemName = "Heavy Grinding Stone", count = 16 },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 5284, item = 3853, itemName = "Moonsteel Broadsword", count = 4, oi = 1, map = 1455, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 5284, item = 3855, itemName = "Massive Iron Axe", count = 4, oi = 2, map = 1455, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 5284, item = 7941, itemName = "Heavy Mithril Axe", count = 2, oi = 3, map = 1455, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 5284, item = 7945, itemName = "Big Black Mace", count = 2, oi = 4, map = 1455, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				note = "You will learn this automatically.",
				goals = {
					{ t = "turnin", quest = 5284, title = "The Way of the Weaponsmith", npc = 11146, npcName = "Ironus Coldsteel", map = 1455, x = 50.33, y = 43.55, f = "e" },
					{ t = "goto", text = "learn Weaponsmith##9787", map = 1455, x = 50.33, y = 43.55 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-master-axesmith-questline",
		pack = "guides",
		title = "Master Axesmith Questline",
		category = "Professions",
		folder = "Blacksmithing",
		faction = "Alliance",
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
		id = "zygor/professions/a-master-hammersmith-questline",
		pack = "guides",
		title = "Master Hammersmith Questline",
		category = "Professions",
		folder = "Blacksmithing",
		faction = "Alliance",
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
		id = "zygor/professions/a-master-swordsmith-questline",
		pack = "guides",
		title = "Master Swordsmith Questline",
		category = "Professions",
		folder = "Blacksmithing",
		faction = "Alliance",
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
		id = "zygor/professions/a-how-to-change-blacksmithing-specialization",
		pack = "guides",
		title = "How to Change Blacksmithing Specialization",
		category = "Professions",
		folder = "Blacksmithing",
		faction = "Alliance",
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
		id = "zygor/professions/a-gnomish-engineering-questline",
		pack = "guides",
		title = "Gnomish Engineering Questline",
		category = "Professions",
		folder = "Engineering",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1455,
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
					{ t = "accept", quest = 3632, title = "Gnome Engineering", npc = 5174, npcName = "Springspindle Fizzlegear", map = 1455, x = 68.46, y = 43.56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3632, title = "Gnome Engineering", npc = 7944, npcName = "Tinkmaster Overspark", map = 1455, x = 69.56, y = 50.31, f = "e" },
					{ t = "accept", quest = 3640, title = "The Pledge of Secrecy", npc = 7944, npcName = "Tinkmaster Overspark", map = 1455, x = 69.56, y = 50.31, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 10793, itemName = "Overspark's Pledge of Secrecy" },
					{ t = "collect", quest = 3640, item = 11283, itemName = "Overspark's Signed Pledge", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3640, title = "The Pledge of Secrecy", npc = 7944, npcName = "Tinkmaster Overspark", map = 1455, x = 69.56, y = 50.31, f = "e" },
					{ t = "accept", quest = 3641, title = "Show Your Work", npc = 7944, npcName = "Tinkmaster Overspark", map = 1455, x = 69.56, y = 50.31, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "learn Bronze Framework##3953", map = 1455, x = 68.47, y = 43.56 },
					{ t = "goto", text = "learn Gold Power Core##12584", map = 1455, x = 68.47, y = 43.56 },
					{ t = "goto", text = "learn Iron Strut##3958", map = 1455, x = 68.47, y = 43.56 },
					{ t = "goto", text = "learn Gyrochronatom##3961", map = 1455, x = 68.47, y = 43.56 },
					{ t = "goto", text = "learn Advanced Target Dummy##3965", map = 1455, x = 68.47, y = 43.56 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 2880, itemName = "Weak Flux", map = 1455, x = 67.85, y = 42.51, f = "e" },
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
				note = "If you have the Mining profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House. If you have the Skinning profession, you can gather this. If you have the Skinning profession, you can gather this.",
				goals = {
					{ t = "collect", quest = 3641, item = 3860, itemName = "Mithril Bar", count = 18 },
					{ t = "collect", quest = 3641, item = 2841, itemName = "Bronze Bar", count = 6 },
					{ t = "collect", quest = 3641, item = 1529, itemName = "Jade" },
					{ t = "collect", quest = 3641, item = 3864, itemName = "Citrine" },
					{ t = "collect", quest = 3641, item = 3575, itemName = "Iron Bar", count = 6 },
					{ t = "collect", quest = 3641, item = 3577, itemName = "Gold Bar" },
					{ t = "collect", quest = 3641, item = 2319, itemName = "Medium Leather", count = 2 },
					{ t = "collect", quest = 3641, item = 4234, itemName = "Heavy Leather", count = 8 },
					{ t = "collect", quest = 3641, item = 2592, itemName = "Wool Cloth", count = 2 },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 3641, item = 10559, itemName = "Mithril Tube", count = 6, oi = 1, map = 1455, x = 49.83, y = 44.12, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 3641, item = 4371, itemName = "Bronze Tube", map = 1455, x = 49.83, y = 44.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3641, item = 4407, itemName = "Accurate Scope", oi = 2 },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 3641, item = 4387, itemName = "Iron Strut", count = 2, map = 1455, x = 49.83, y = 44.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3641, item = 4382, itemName = "Bronze Framework", count = 2 },
				},
			},
			{
				note = "Stand next to the anvil. This schematic will give you 3 of these.",
				goals = {
					{ t = "collect", quest = 3641, item = 10558, itemName = "Gold Power Core", count = 2, map = 1455, x = 49.83, y = 44.12, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 3641, item = 4389, itemName = "Gyrochronatom", count = 2, map = 1455, x = 49.83, y = 44.12, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 3641, item = 4392, itemName = "Advanced Target Dummy", count = 2, oi = 3, map = 1455, x = 49.83, y = 44.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3641, title = "Show Your Work", npc = 7944, npcName = "Tinkmaster Overspark", map = 1455, x = 69.56, y = 50.31, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-gnome-engineer-membership-card-renewal",
		pack = "guides",
		title = "Gnome Engineer Membership Card Renewal",
		category = "Professions",
		folder = "Engineering",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1455,
		version = 1,
		steps = {
			{
				note = "You must have the Gnomish Engineering specialization to be able to complete this quest. This quest requires 2 gold to complete. This will keep your Gnome Engineer Membership Card active for another 14 days of played time.",
				goals = {
					{ t = "accept", quest = 3647, title = "Membership Card Renewal", npc = 7944, npcName = "Tinkmaster Overspark", map = 1455, x = 69.56, y = 50.33, f = "e" },
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
		id = "zygor/professions/a-goblin-engineering-questline",
		pack = "guides",
		title = "Goblin Engineering Questline",
		category = "Professions",
		folder = "Engineering",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1455,
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
					{ t = "accept", quest = 4181, title = "Goblin Engineering", npc = 5174, npcName = "Springspindle Fizzlegear", map = 1455, x = 68.46, y = 43.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1446, x = 52.39, y = 27.3 },
					{ t = "turnin", quest = 4181, title = "Goblin Engineering", npc = 8126, npcName = "Nixx Sprocketspring", map = 1446, x = 52.48, y = 27.33, f = "e" },
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
		id = "zygor/professions/a-goblin-engineer-membership-card-renewal",
		pack = "guides",
		title = "Goblin Engineer Membership Card Renewal",
		category = "Professions",
		folder = "Engineering",
		faction = "Alliance",
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
		id = "zygor/professions/a-how-to-change-engineering-specialization",
		pack = "guides",
		title = "How to Change Engineering Specialization",
		category = "Professions",
		folder = "Engineering",
		faction = "Alliance",
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

