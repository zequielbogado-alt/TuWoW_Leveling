-- TuWoW_Leveling — Guides/Professions_19.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-dragonscale-leatherworking-questline",
		pack = "guides",
		title = "Dragonscale Leatherworking Questline",
		category = "Professions",
		folder = "Leatherworking",
		faction = "Alliance",
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
					{ t = "collect", quest = 5141, item = 4304, itemName = "Thick Leather", count = 36 },
					{ t = "collect", quest = 5141, item = 8154, itemName = "Scorpid Scale", count = 40 },
					{ t = "collect", quest = 5141, item = 8165, itemName = "Worn Dragonscale", count = 10 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1439, x = 37.77, y = 41.35 },
					{ t = "buy", item = 4291, itemName = "Silken Thread", count = 12, map = 1439, x = 38.15, y = 40.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5141, item = 8204, itemName = "Tough Scorpid Gloves", count = 2 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5141, item = 8203, itemName = "Tough Scorpid Breastplate", count = 2 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the road", map = 1447, x = 15.68, y = 75.85 },
					{ t = "goto", text = "Follow the path", map = 1447, x = 27.65, y = 59.62 },
					{ t = "goto", text = "Continue following the path", map = 1447, x = 33.85, y = 62.14 },
					{ t = "goto", text = "Continue following the path", map = 1447, x = 35.14, y = 65.45 },
					{ t = "accept", quest = 5141, title = "Dragonscale Leatherworking", npc = 7866, npcName = "Peter Galen", map = 1447, x = 37.59, y = 65.42, f = "e" },
				},
			},
			{
				note = "You will learn this automatically.",
				goals = {
					{ t = "turnin", quest = 5141, title = "Dragonscale Leatherworking", npc = 7866, npcName = "Peter Galen", map = 1447, x = 37.59, y = 65.42, f = "e" },
					{ t = "goto", text = "learn Dragonscale Leatherworking##10656", map = 1447, x = 37.59, y = 65.42 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-elemental-leatherworking-questline",
		pack = "guides",
		title = "Elemental Leatherworking Questline",
		category = "Professions",
		folder = "Leatherworking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1427,
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
					{ t = "collect", quest = 5144, item = 7077, itemName = "Heart of Fire", count = 2 },
					{ t = "collect", quest = 5144, item = 7079, itemName = "Globe of Water", count = 2 },
					{ t = "collect", quest = 5144, item = 7075, itemName = "Core of Earth", count = 2 },
					{ t = "collect", quest = 5144, item = 7081, itemName = "Breath of Wind", count = 2 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5144, title = "Elemental Leatherworking", npc = 7868, npcName = "Sarah Tanner", map = 1427, x = 63.56, y = 75.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5144, title = "Elemental Leatherworking", npc = 7868, npcName = "Sarah Tanner", map = 1427, x = 63.56, y = 75.97, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-tribal-leatherworking-questline",
		pack = "guides",
		title = "Tribal Leatherworking Questline",
		category = "Professions",
		folder = "Leatherworking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1425,
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
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1425, x = 14.17, y = 45.22 },
					{ t = "goto", text = "Run down the stairs", map = 1425, x = 13.18, y = 43.43 },
					{ t = "goto", text = "learn Cured Thick Hide##10482", map = 1425, x = 13.39, y = 43.48 },
					{ t = "goto", text = "learn Thick Armor Kit##10487", map = 1425, x = 13.39, y = 43.48 },
					{ t = "goto", text = "learn Nightscape Headband##10507", map = 1425, x = 13.39, y = 43.48 },
					{ t = "goto", text = "learn Nightscape Tunic##10499", map = 1425, x = 13.39, y = 43.48 },
					{ t = "goto", text = "learn Turtle Scale Bracers##10518", map = 1425, x = 13.39, y = 43.48 },
					{ t = "goto", text = "learn Turtle Scale Breastplate##10511", map = 1425, x = 13.39, y = 43.48 },
					{ t = "goto", text = "learn Turtle Scale Helm##10552", map = 1425, x = 13.39, y = 43.48 },
					{ t = "goto", text = "learn Nightscape Boots##10558", map = 1425, x = 13.39, y = 43.48 },
					{ t = "goto", text = "learn Nightscape Pants##10548", map = 1425, x = 13.39, y = 43.48 },
				},
			},
			{
				note = "If you have the Skinning profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House. If you have the Herbalism profession, you can gather these.",
				goals = {
					{ t = "collect", quest = 2851, item = 4304, itemName = "Thick Leather", count = 214 },
					{ t = "collect", quest = 2852, item = 8167, itemName = "Turtle Scale", count = 112 },
					{ t = "collect", quest = 5143, item = 8153, itemName = "Wildvine", count = 11 },
					{ t = "collect", quest = 5143, item = 8172, itemName = "Cured Thick Hide", count = 2 },
				},
			},
			{
				note = "This is a limited supply item. If he doesn't have it for sale, check the Auction House.",
				goals = {
					{ t = "buy", item = 8385, itemName = "Pattern: Turtle Scale Gloves", map = 1444, x = 30.6, y = 42.7, f = "e" },
					{ t = "use", item = 8385, itemName = "Pattern: Turtle Scale Gloves" },
					{ t = "goto", text = "learn Turtle Scale Gloves##10509", map = 1444, x = 30.63, y = 42.71 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2847, title = "Wild Leather Armor", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2847, title = "Wild Leather Armor", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
					{ t = "accept", quest = 2848, title = "Wild Leather Shoulders", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
					{ t = "accept", quest = 2849, title = "Wild Leather Vest", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
					{ t = "accept", quest = 2850, title = "Wild Leather Helmet", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
					{ t = "accept", quest = 2851, title = "Wild Leather Boots", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
					{ t = "accept", quest = 2852, title = "Wild Leather Leggings", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 4291, itemName = "Silken Thread", count = 22, map = 1444, x = 30.63, y = 42.71, f = "e" },
					{ t = "buy", item = 8343, itemName = "Heavy Silken Thread", count = 12, map = 1444, x = 30.63, y = 42.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2848, item = 8173, itemName = "Thick Armor Kit", count = 6, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2848, title = "Wild Leather Shoulders", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8403, itemName = "Pattern: Wild Leather Shoulders" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2849, item = 8189, itemName = "Turtle Scale Breastplate", count = 2, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2849, item = 8187, itemName = "Turtle Scale Gloves", count = 2, oi = 2 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2849, title = "Wild Leather Vest", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8404, itemName = "Pattern: Wild Leather Vest" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2850, item = 8175, itemName = "Nightscape Tunic", count = 2, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2850, item = 8176, itemName = "Nightscape Headband", count = 2, oi = 2 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2850, title = "Wild Leather Helmet", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8405, itemName = "Pattern: Wild Leather Helmet" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2851, item = 8193, itemName = "Nightscape Pants", count = 2, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2851, item = 8197, itemName = "Nightscape Boots", count = 2, oi = 2 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2851, title = "Wild Leather Boots", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8406, itemName = "Pattern: Wild Leather Boots" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2852, item = 8191, itemName = "Turtle Scale Helm", count = 2, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2852, item = 8198, itemName = "Turtle Scale Bracers", count = 2, oi = 2 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2852, title = "Wild Leather Leggings", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8407, itemName = "Pattern: Wild Leather Leggings" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2853, title = "Master of the Wild Leather", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 2853, title = "Master of the Wild Leather", npc = 4212, npcName = "Telonis", map = 1457, x = 64.43, y = 21.54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8408, itemName = "Pattern: Wild Leather Cloak" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5143, item = 8211, itemName = "Wild Leather Vest" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5143, item = 8214, itemName = "Wild Leather Helmet" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5143, title = "Tribal Leatherworking", npc = 7870, npcName = "Caryssia Moonhunter", map = 1444, x = 89.42, y = 46.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5143, title = "Tribal Leatherworking", npc = 7870, npcName = "Caryssia Moonhunter", map = 1444, x = 89.42, y = 46.55, f = "e" },
				},
			},
		},
	})
end

