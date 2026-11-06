-- TuWoW_Leveling — Guides/Professions_37.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-dragonscale-leatherworking-questline",
		pack = "guides",
		title = "Dragonscale Leatherworking Questline",
		category = "Professions",
		folder = "Leatherworking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "You must be at least this level before you can begin this questline. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "You must be at least this level with your Leatherworking profession before you can begin this questline. Use the \"Leatherworking (1-300)\" guide to accomplish this.",
				goals = {
					{ t = "skill", level = 225, skill = "Leatherworking" },
				},
			},
			{
				note = "You can also purchase this from the Auction House, if you don't want to grind for it.",
				goals = {
					{ t = "collect", item = 8395, itemName = "Pattern: Tough Scorpid Breastplate", map = 1446, x = 60.4, y = 24.3, f = "e" },
					{ t = "use", item = 8395, itemName = "Pattern: Tough Scorpid Breastplate" },
					{ t = "goto", text = "learn Tough Scorpid Breastplate##10525", map = 1446, x = 60.3, y = 24.02 },
				},
			},
			{
				label = "Learn_Tough_Scorpid_Gloves",
				along = true,
				note = "You can also purchase this from the Auction House, if you don't want to grind for it.",
				goals = {
					{ t = "collect", item = 8398, itemName = "Pattern: Tough Scorpid Gloves", map = 1446, x = 60.0, y = 23.2, f = "e" },
					{ t = "use", item = 8398, itemName = "Pattern: Tough Scorpid Gloves" },
					{ t = "goto", text = "learn Tough Scorpid Gloves##10542", map = 1446, x = 60.3, y = 24.02 },
				},
			},
			{
				note = "If you have the Skinning profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House. These are skinned from Dragonkin enemies and bosses inside the Temple of Atal'Hakkar (Sunken Temple) dungeon.",
				goals = {
					{ t = "collect", quest = 5145, item = 4304, itemName = "Thick Leather", count = 36 },
					{ t = "collect", quest = 5145, item = 8154, itemName = "Scorpid Scale", count = 40 },
					{ t = "collect", quest = 5145, item = 8165, itemName = "Worn Dragonscale", count = 10 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 4291, itemName = "Silken Thread", count = 12, map = 1434, x = 32.7, y = 29.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5145, item = 8204, itemName = "Tough Scorpid Gloves", count = 2 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5145, item = 8203, itemName = "Tough Scorpid Breastplate", count = 2 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5145, title = "Dragonscale Leatherworking", npc = 7867, npcName = "Thorkaf Dragoneye", map = 1418, x = 62.7, y = 57.4, f = "e" },
				},
			},
			{
				note = "You will learn this automatically.",
				goals = {
					{ t = "turnin", quest = 5145, title = "Dragonscale Leatherworking", npc = 7867, npcName = "Thorkaf Dragoneye", map = 1418, x = 62.7, y = 57.4, f = "e" },
					{ t = "goto", text = "learn Dragonscale Leatherworking##10656", map = 1418, x = 62.7, y = 57.4 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-elemental-leatherworking-questline",
		pack = "guides",
		title = "Elemental Leatherworking Questline",
		category = "Professions",
		folder = "Leatherworking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1417,
		version = 1,
		steps = {
			{
				note = "You must be at least this level before you can begin this questline. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "You must be at least this level with your Leatherworking profession before you can begin this questline. Use the \"Leatherworking (1-300)\" guide to accomplish this.",
				goals = {
					{ t = "skill", level = 225, skill = "Leatherworking" },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", quest = 5146, item = 7077, itemName = "Heart of Fire", count = 2 },
					{ t = "collect", quest = 5146, item = 7079, itemName = "Globe of Water", count = 2 },
					{ t = "collect", quest = 5146, item = 7075, itemName = "Core of Earth", count = 2 },
					{ t = "collect", quest = 5146, item = 7081, itemName = "Breath of Wind", count = 2 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5146, title = "Elemental Leatherworking", npc = 7869, npcName = "Brumn Winterhoof", map = 1417, x = 28.27, y = 45.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5146, title = "Elemental Leatherworking", npc = 7869, npcName = "Brumn Winterhoof", map = 1417, x = 28.27, y = 45.09, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-tribal-leatherworking-questline",
		pack = "guides",
		title = "Tribal Leatherworking Questline",
		category = "Professions",
		folder = "Leatherworking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1444,
		version = 1,
		steps = {
			{
				note = "You must be at least this level before you can begin this questline. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "You must be at least this level with your Leatherworking profession before you can creature some of the patterns needed for this questline. Use the \"Leatherworking (1-300)\" guide to accomplish this.",
				goals = {
					{ t = "skill", level = 235, skill = "Leatherworking" },
				},
			},
			{
				note = "If you have the Skinning profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House. If you have the Herbalism profession, you can gather these.",
				goals = {
					{ t = "collect", quest = 2858, item = 4304, itemName = "Thick Leather", count = 214 },
					{ t = "collect", quest = 2859, item = 8167, itemName = "Turtle Scale", count = 112 },
					{ t = "collect", quest = 5148, item = 8153, itemName = "Wildvine", count = 11 },
					{ t = "collect", quest = 5148, item = 8172, itemName = "Cured Thick Hide", count = 2 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1444, x = 74.68, y = 42.99 },
					{ t = "goto", text = "learn Cured Thick Hide##10482", map = 1444, x = 74.36, y = 43.12 },
					{ t = "goto", text = "learn Thick Armor Kit##10487", map = 1444, x = 74.36, y = 43.12 },
					{ t = "goto", text = "learn Nightscape Headband##10507", map = 1444, x = 74.36, y = 43.12 },
					{ t = "goto", text = "learn Nightscape Tunic##10499", map = 1444, x = 74.36, y = 43.12 },
					{ t = "goto", text = "learn Turtle Scale Bracers##10518", map = 1444, x = 74.36, y = 43.12 },
					{ t = "goto", text = "learn Turtle Scale Breastplate##10511", map = 1444, x = 74.36, y = 43.12 },
					{ t = "goto", text = "learn Turtle Scale Helm##10552", map = 1444, x = 74.36, y = 43.12 },
					{ t = "goto", text = "learn Nightscape Boots##10558", map = 1444, x = 74.36, y = 43.12 },
					{ t = "goto", text = "learn Nightscape Pants##10548", map = 1444, x = 74.36, y = 43.12 },
				},
			},
			{
				note = "Inside the building. This is a limited supply item. If he doesn't have it for sale, check the Auction House.",
				goals = {
					{ t = "buy", item = 8385, itemName = "Pattern: Turtle Scale Gloves", map = 1444, x = 74.4, y = 42.9, f = "e" },
					{ t = "use", item = 8385, itemName = "Pattern: Turtle Scale Gloves" },
					{ t = "goto", text = "learn Turtle Scale Gloves##10509", map = 1444, x = 74.43, y = 42.91 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2854, title = "Wild Leather Armor", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2854, title = "Wild Leather Armor", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
					{ t = "accept", quest = 2855, title = "Wild Leather Shoulders", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
					{ t = "accept", quest = 2856, title = "Wild Leather Vest", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
					{ t = "accept", quest = 2857, title = "Wild Leather Helmet", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
					{ t = "accept", quest = 2858, title = "Wild Leather Boots", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
					{ t = "accept", quest = 2859, title = "Wild Leather Leggings", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 4291, itemName = "Silken Thread", count = 22, map = 1444, x = 74.43, y = 42.91, f = "e" },
					{ t = "buy", item = 8343, itemName = "Heavy Silken Thread", count = 12, map = 1444, x = 74.43, y = 42.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2855, item = 8173, itemName = "Thick Armor Kit", count = 6, oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2855, title = "Wild Leather Shoulders", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8403, itemName = "Pattern: Wild Leather Shoulders" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2856, item = 8189, itemName = "Turtle Scale Breastplate", count = 2, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2856, item = 8187, itemName = "Turtle Scale Gloves", count = 2, oi = 2 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2856, title = "Wild Leather Vest", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8404, itemName = "Pattern: Wild Leather Vest" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2857, item = 8175, itemName = "Nightscape Tunic", count = 2, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2857, item = 8176, itemName = "Nightscape Headband", count = 2, oi = 2 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2857, title = "Wild Leather Helmet", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8405, itemName = "Pattern: Wild Leather Helmet" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2858, item = 8193, itemName = "Nightscape Pants", count = 2, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2858, item = 8197, itemName = "Nightscape Boots", count = 2, oi = 2 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2858, title = "Wild Leather Boots", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8406, itemName = "Pattern: Wild Leather Boots" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2859, item = 8191, itemName = "Turtle Scale Helm", count = 2, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2859, item = 8198, itemName = "Turtle Scale Bracers", count = 2, oi = 2 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2859, title = "Wild Leather Leggings", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8407, itemName = "Pattern: Wild Leather Leggings" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2860, title = "Master of the Wild Leather", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1456, x = 43.76, y = 42.44 },
					{ t = "turnin", quest = 2860, title = "Master of the Wild Leather", npc = 3007, npcName = "Una", map = 1456, x = 41.51, y = 42.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8408, itemName = "Pattern: Wild Leather Cloak" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5148, item = 8211, itemName = "Wild Leather Vest" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5148, item = 8214, itemName = "Wild Leather Helmet" },
				},
			},
			{
				note = "Inside the hut.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1434, x = 32.79, y = 28.75 },
					{ t = "goto", text = "Continue following the path", map = 1434, x = 35.28, y = 35.56 },
					{ t = "accept", quest = 5143, title = "Tribal Leatherworking", npc = 7871, npcName = "Se'Jib", map = 1434, x = 36.55, y = 34.09, f = "e" },
				},
			},
			{
				note = "Inside the hut.",
				goals = {
					{ t = "turnin", quest = 5143, title = "Tribal Leatherworking", npc = 7871, npcName = "Se'Jib", map = 1434, x = 36.55, y = 34.09, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-dark-iron-bracers",
		pack = "guides",
		title = "Dark Iron Bracers",
		category = "Professions",
		folder = "Non-Trainer Recipes",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "He is inside the Blackrock Depths dungeon. When you reach the big room full of drinking and dancing friendly/neutral NPC's, he is in that room, upstairs. He is in a side room, next to a bunch of large barrels, crates, and sand bags. This is a limited supply item. If he doesn't have it for sale, you will have to wait for it to respawn. It is Bind on Pickup, so you can't buy it from the Auction House.",
				goals = {
					{ t = "buy", item = 17051, itemName = "Plans: Dark Iron Bracers" },
					{ t = "use", item = 17051, itemName = "Plans: Dark Iron Bracers" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-dark-iron-gauntlets",
		pack = "guides",
		title = "Dark Iron Gauntlets",
		category = "Professions",
		folder = "Non-Trainer Recipes",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "He is inside the Blackrock Depths dungeon. When you reach the big room full of drinking and dancing friendly/neutral NPC's, he is in that room, upstairs. He is in a side room, next to a bunch of large barrels, crates, and sand bags. This is a limited supply item. If he doesn't have it for sale, you will have to wait for it to respawn. It is Bind on Pickup, so you can't buy it from the Auction House.",
				goals = {
					{ t = "buy", item = 19207, itemName = "Plans: Dark Iron Gauntlets" },
					{ t = "use", item = 19207, itemName = "Plans: Dark Iron Gauntlets" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-dark-iron-helm",
		pack = "guides",
		title = "Dark Iron Helm",
		category = "Professions",
		folder = "Non-Trainer Recipes",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "He is inside the Blackrock Depths dungeon. When you reach the big room full of drinking and dancing friendly/neutral NPC's, he is in that room, upstairs. He is in a side room, next to a bunch of large barrels, crates, and sand bags. This is a limited supply item. If he doesn't have it for sale, you will have to wait for it to respawn. It is Bind on Pickup, so you can't buy it from the Auction House.",
				goals = {
					{ t = "buy", item = 19206, itemName = "Plans: Dark Iron Helm" },
					{ t = "use", item = 19206, itemName = "Plans: Dark Iron Helm" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-dark-iron-leggings",
		pack = "guides",
		title = "Dark Iron Leggings",
		category = "Professions",
		folder = "Non-Trainer Recipes",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "He is inside the Blackrock Depths dungeon. When you reach the big room full of drinking and dancing friendly/neutral NPC's, he is in that room, upstairs. He is in a side room, next to a bunch of large barrels, crates, and sand bags. This is a limited supply item. If he doesn't have it for sale, you will have to wait for it to respawn. It is Bind on Pickup, so you can't buy it from the Auction House.",
				goals = {
					{ t = "buy", item = 17013, itemName = "Dark Iron Leggings" },
					{ t = "use", item = 17013, itemName = "Dark Iron Leggings" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-dark-iron-boots",
		pack = "guides",
		title = "Dark Iron Boots",
		category = "Professions",
		folder = "Non-Trainer Recipes",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "He is inside the Blackrock Depths dungeon. When you reach the big room full of drinking and dancing friendly/neutral NPC's, he is in that room, upstairs. He is in a side room, next to a bunch of large barrels, crates, and sand bags. This is a limited supply item. If he doesn't have it for sale, you will have to wait for it to respawn. It is Bind on Pickup, so you can't buy it from the Auction House.",
				goals = {
					{ t = "buy", item = 20039, itemName = "Dark Iron Boots" },
					{ t = "use", item = 20039, itemName = "Dark Iron Boots" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-dark-iron-plate",
		pack = "guides",
		title = "Dark Iron Plate",
		category = "Professions",
		folder = "Non-Trainer Recipes",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "This a world drop item, so it can drop from almost anything. You can also buy this from the Auction House.",
				goals = {
					{ t = "collect", item = 12698, itemName = "Plans: Dawnbringer Shoulders" },
					{ t = "use", item = 12698, itemName = "Plans: Dawnbringer Shoulders" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-ultrasafe-transporter-gadgetzan",
		pack = "guides",
		title = "Ultrasafe Transporter - Gadgetzan",
		category = "Professions",
		folder = "Non-Trainer Recipes",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "You must have the Gnomish Engineering specialization to be able to learn this schematic. Use the \"Gnomish Engineering Questline\" guide to accomplish this.",
				goals = {
					{ t = "collect", item = 10790, itemName = "Gnome Engineer Membership Card" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "learn Ultrasafe Transporter - Gadgetzan##23489", map = 1446, x = 52.3, y = 26.89 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-lil-smoky",
		pack = "guides",
		title = "Lil' Smoky",
		category = "Professions",
		folder = "Non-Trainer Recipes",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "This schematic has a chance to be inside the \"Gnome Engineer's Renewal Gift\" boxes you receive when renewing your Gnome Engineer Membership Card. Use the \"Gnome Engineer Membership Card Renewal\" guide to accomplish this.",
				goals = {
					{ t = "collect", item = 11827, itemName = "Schematic: Lil' Smoky" },
					{ t = "use", item = 11827, itemName = "Schematic: Lil' Smoky" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-dimensional-ripper-everlook",
		pack = "guides",
		title = "Dimensional Ripper - Everlook",
		category = "Professions",
		folder = "Non-Trainer Recipes",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1452,
		version = 1,
		steps = {
			{
				note = "You must have the Goblin Engineering specialization to be able to learn this schematic. Use the \"Goblin Engineering Questline\" guide to accomplish this.",
				goals = {
					{ t = "collect", item = 10791, itemName = "Goblin Engineer Membership Card" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1452, x = 60.55, y = 38.2 },
					{ t = "goto", text = "learn Dimensional Ripper - Everlook##23486", map = 1452, x = 61.18, y = 37.6 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-pet-bombling",
		pack = "guides",
		title = "Pet Bombling",
		category = "Professions",
		folder = "Non-Trainer Recipes",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "This schematic has a chance to be inside the \"Goblin Engineer's Renewal Gift\" boxes you receive when renewing your Goblin Engineer Membership Card. Use the \"Goblin Engineer Membership Card Renewal\" guide to accomplish this.",
				goals = {
					{ t = "collect", item = 11828, itemName = "Schematic: Pet Bombling" },
					{ t = "use", item = 11828, itemName = "Schematic: Pet Bombling" },
				},
			},
		},
	})
end

