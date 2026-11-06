-- TuWoW_Leveling — Guides/Professions_07.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-enchanting-1-300",
		pack = "guides",
		title = "Enchanting (1-300) (Parte 1/2)",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		next = "zygor/professions/a-enchanting-1-300-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "You must be at least level 5 to train Apprentice professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 5 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 53.47, y = 73.86, only = { races = { "Human" } } },
					{ t = "goto", text = "Enter the building", map = 1455, x = 58.05, y = 45.34, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1457, x = 61.14, y = 10.52, only = { races = { "NightElf" } } },
					{ t = "skill", level = 75, skill = "Enchanting" },
				},
			},
			{
				note = "Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 5-25 uncommon (green) items with Enchanting. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 10940, itemName = "Strange Dust", count = 157 },
				},
			},
			{
				label = "Collect_Soul_Dust_Total",
				along = true,
				note = "Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 26-35 uncommon (green) items with Enchanting. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 11083, itemName = "Soul Dust", count = 60 },
				},
			},
			{
				label = "Collect_Vision_Dust_Total",
				along = true,
				note = "Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 36-45 uncommon (green) items with Enchanting. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 11137, itemName = "Vision Dust", count = 278 },
				},
			},
			{
				label = "Collect_Dream_Dust_Total",
				along = true,
				note = "Disenchant level 46-55 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 46-55 uncommon (green) items with Enchanting. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 11176, itemName = "Dream Dust", count = 440 },
				},
			},
			{
				label = "Collect_Illusion_Dust_Total",
				along = true,
				note = "Disenchant level 56-60 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 56-60 uncommon (green) items with Enchanting. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 16204, itemName = "Illusion Dust", count = 50 },
				},
			},
			{
				note = "Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house. Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting. You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 10939, itemName = "Greater Magic Essence", count = 12 },
				},
			},
			{
				label = "Collect_Lesser_Astral_Essence_Total",
				along = true,
				note = "Disenchant level 21-25 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 21-25 uncommon (green) items with Enchanting. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 10998, itemName = "Lesser Astral Essence", count = 25 },
				},
			},
			{
				label = "Collect_Greater_Astral_Essence_Total",
				along = true,
				note = "Disenchant level 26-30 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 26-30 uncommon (green) items with Enchanting. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 11082, itemName = "Greater Astral Essence", count = 2 },
				},
			},
			{
				label = "Collect_Lesser_Mystic_Essence_Total",
				along = true,
				note = "Disenchant level 31-35 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 31-35 uncommon (green) items with Enchanting. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 11134, itemName = "Lesser Mystic Essence", count = 20 },
				},
			},
			{
				label = "Collect_Greater_Mystic_Essence_Total",
				along = true,
				note = "Disenchant level 36-40 uncommon (green) items with Enchanting or purchase them from the auction house. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 11135, itemName = "Greater Mystic Essence", count = 2 },
				},
			},
			{
				label = "Collect_Greater_Eternal_Essence_Total",
				along = true,
				note = "Disenchant level 51-56 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 51-56 uncommon (green) items with Enchanting. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 16203, itemName = "Greater Eternal Essence", count = 4 },
				},
			},
			{
				note = "Create it with Blacksmithing or purchase it from the auction house. Create it with Blacksmithing. It requires 1 Silver bar and 2 Rough Grinding Stones to craft.",
				goals = {
					{ t = "collect", item = 6338, itemName = "Silver Rod" },
				},
			},
			{
				label = "Collect_Golden_Rod_Total",
				along = true,
				note = "Create it with Blacksmithing or purchase it from the auction house. notinsticky Create it with Blacksmithing. notinsticky It requires 1 Gold Bar and 2 Coarse Grinding Stones to craft. notinsticky",
				goals = {
					{ t = "collect", item = 11128, itemName = "Golden Rod" },
				},
			},
			{
				label = "Collect_Truesilver_Rod_Total",
				along = true,
				note = "Create it with Blacksmithing or purchase it from the auction house. notinsticky Create it with Blacksmithing. notinsticky It requires 1 Truesilver Bar and 1 Heavy Grinding Stones to craft. notinsticky",
				goals = {
					{ t = "collect", item = 11144, itemName = "Truesilver Rod" },
				},
			},
			{
				label = "Collect_Arcanite_Rod_Total",
				along = true,
				note = "Create it with Blacksmithing or purchase it from the auction house. notinsticky Create it with Blacksmithing. notinsticky It takes 3 Arcanite Bars and 1 Dense Grinding Stone to craft. notinsticky",
				goals = {
					{ t = "collect", item = 16206, itemName = "Arcanite Rod" },
				},
			},
			{
				note = "Farm it with Mining or purchase it from the auction house. Farm it with Mining.",
				goals = {
					{ t = "collect", item = 1210, itemName = "Shadowgem" },
				},
			},
			{
				label = "Collect_Iridescent_Pearl_Total",
				along = true,
				note = "Farm it using the \"Iridescent Pearl\" farming guide or purchase it from the Auction House. Farm it using the \"Iridescent Pearl\" farming guide.",
				goals = {
					{ t = "collect", item = 5500, itemName = "Iridescent Pearl" },
				},
			},
			{
				label = "Collect_Black_Pearl_Total",
				along = true,
				note = "Farm it using the \"Black Pearl\" farming guide or purchase it from the Auction House. Farm it using the \"Black Pearl\" farming guide.",
				goals = {
					{ t = "collect", item = 7971, itemName = "Black Pearl" },
				},
			},
			{
				label = "Collect_Golden_Pearl_Total",
				along = true,
				note = "Farm it using the \"Golden Pearl\" farming guide or purchase it from the Auction House. Farm it using the \"Golden Pearl\" farming guide.",
				goals = {
					{ t = "collect", item = 13926, itemName = "Golden Pearl" },
				},
			},
			{
				label = "Collect_Purple_Lotus_Total",
				along = true,
				note = "Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 8831, itemName = "Purple Lotus", count = 40 },
				},
			},
			{
				label = "Collect_Small_Brilliant_Shard_Total",
				along = true,
				note = "Disenchant level 46-51 rare (blue) items with Enchanting or purchase them from the auction house. Disenchant level 46-51 rare (blue) items with Enchanting. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 14343, itemName = "Small Brilliant Shard", count = 4 },
				},
			},
			{
				label = "Collect_Large_Brilliant_Shard_Total",
				along = true,
				note = "Disenchant level 51-60 rare (blue) items with Enchanting or purchase them from the auction house. Disenchant level 51-60 rare (blue) items with Enchanting. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 14344, itemName = "Large Brilliant Shard", count = 2 },
				},
			},
			{
				label = "Begin_Profession_Leveling",
				note = "Inside the building. These are limited supply items that can also be purchased from the auction house. These are limited supply items.",
				goals = {
					{ t = "buy", item = 6217, itemName = "Copper Rod", map = 1457, x = 58.57, y = 14.72, f = "e" },
					{ t = "buy", item = 10940, itemName = "Strange Dust", map = 1457, x = 58.57, y = 14.72, f = "e" },
					{ t = "buy", item = 10938, itemName = "Lesser Magic Essence", map = 1457, x = 58.57, y = 14.72, f = "e" },
				},
			},
			{
				note = "Save this, you will need it later.",
				goals = {
					{ t = "skill", level = 2, skill = "Enchanting" },
				},
			},
			{
				note = "Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 5-25 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 10940, itemName = "Strange Dust", count = 95 },
				},
			},
			{
				note = "Place then enchant on a bracer slot item, either equipped or in your inventory. You may be able to use it on other players' bracers to make some profit while increasing your skill level. You may need to make a few more or less of these. Each additional Minor Health enchant requires one Strange Dust.",
				goals = {
					{ t = "skill", level = 75, skill = "Enchanting" },
				},
			},
			{
				note = "You must be at least level 10 to train Journeyman professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 53.47, y = 73.86, only = { races = { "Human" } } },
					{ t = "goto", text = "Enter the building", map = 1455, x = 58.05, y = 45.34, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1457, x = 61.14, y = 10.52, only = { races = { "NightElf" } } },
					{ t = "skill", level = 150, skill = "Enchanting" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "talk", npc = 4213, npcName = "Taladan", map = 1457, x = 58.4, y = 13.11, f = "e" },
				},
			},
			{
				note = "Place then enchant on a bracer slot item, either equipped or in your inventory. You may be able to use it on other players' bracers to make some profit while increasing your skill level. You may need to make a few more or less of these. Each additional Minor Health enchant requires one Strange Dust.",
				goals = {
					{ t = "skill", level = 90, skill = "Enchanting" },
				},
			},
			{
				note = "Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 5-25 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 10940, itemName = "Strange Dust", count = 30 },
				},
			},
			{
				note = "Place then enchant on a bracer slot item, either equipped or in your inventory. You may be able to use it on other players' bracers to make some profit while increasing your skill level.",
				goals = {
					{ t = "skill", level = 100, skill = "Enchanting" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 53.47, y = 73.86, only = { races = { "Human" } } },
					{ t = "goto", text = "Enter the building", map = 1455, x = 58.05, y = 45.34, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1457, x = 61.14, y = 10.52, only = { races = { "NightElf" } } },
				},
			},
			{
				note = "Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 5-25 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 10940, itemName = "Strange Dust", count = 6 },
				},
			},
			{
				label = "Collect_Greater_Magic_Essence_101",
				along = true,
				note = "Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house. Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting. You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.",
				goals = {
					{ t = "collect", item = 10939, itemName = "Greater Magic Essence", count = 3 },
				},
			},
			{
				label = "Collect_Silver_Rod_101",
				along = true,
				note = "Create it with Blacksmithing or purchase it from the auction house. Create it with Blacksmithing. It requires 1 Silver bar and 2 Rough Grinding Stones to craft.",
				goals = {
					{ t = "collect", item = 6338, itemName = "Silver Rod" },
				},
			},
			{
				label = "Collect_Shadowgem_101",
				along = true,
				note = "Farm it with Mining or purchase it from the auction house. Farm it with Mining.",
				goals = {
					{ t = "collect", item = 1210, itemName = "Shadowgem" },
				},
			},
			{
				note = "Save this, you will need it later.",
				goals = {
					{ t = "skill", level = 101, skill = "Enchanting" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "talk", npc = 4213, npcName = "Taladan", map = 1457, x = 58.4, y = 13.11, f = "e" },
				},
			},
			{
				note = "Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house. Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting. You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.",
				goals = {
					{ t = "collect", item = 10939, itemName = "Greater Magic Essence", count = 9 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 53.47, y = 73.86, only = { races = { "Human" } } },
					{ t = "goto", text = "Enter the building", map = 1455, x = 58.05, y = 45.34, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1457, x = 61.14, y = 10.52, only = { races = { "NightElf" } } },
					{ t = "buy", item = 4470, itemName = "Simple Wood", count = 9, map = 1457, x = 58.57, y = 14.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 110, skill = "Enchanting" },
				},
			},
			{
				note = "Inside the building. These are limited supply items that can also be purchased from the auction house. These are limited supply items.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1440, x = 35.64, y = 50.99 },
					{ t = "buy", item = 11039, itemName = "Formula: Enchant Cloak - Minor Agility", map = 1440, x = 35.12, y = 52.12, f = "e" },
					{ t = "buy", item = 11101, itemName = "Formula: Enchant Bracer - Lesser Strength", map = 1440, x = 35.12, y = 52.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 11039, itemName = "Formula: Enchant Cloak - Minor Agility" },
				},
			},
			{
				note = "Disenchant level 21-25 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 21-25 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 10998, itemName = "Lesser Astral Essence", count = 25 },
				},
			},
			{
				note = "Place then enchant on a cloak slot item, either equipped or in your inventory. You may be able to use it on other players' cloak to make some profit while increasing your skill level.",
				goals = {
					{ t = "skill", level = 135, skill = "Enchanting" },
				},
			},
			{
				note = "You must be at least level 20 to train Expert professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 20 },
				},
			},
			{
				note = "For Season of Discovery, you must be at least level 26 to train Expert professions.",
				goals = {
					{ t = "level", level = 26 },
				},
			},
			{
				note = "Upstairs inside the building, at the top.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1429, x = 64.42, y = 69.12 },
					{ t = "skill", level = 225, skill = "Enchanting" },
				},
			},
			{
				note = "Upstairs inside the building, at the top.",
				goals = {
					{ t = "goto", text = "Train Enchant Bracer - Lesser Stamina", map = 1429, x = 64.93, y = 70.71 },
				},
			},
			{
				note = "Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 26-35 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 11083, itemName = "Soul Dust", count = 40 },
				},
			},
			{
				note = "Place then enchant on a bracer slot item, either equipped or in your inventory. You may be able to use it on other players' bracers to make some profit while increasing your skill level.",
				goals = {
					{ t = "skill", level = 155, skill = "Enchanting" },
				},
			},
			{
				note = "You purchased this in a previous step.",
				goals = {
					{ t = "use", item = 11101, itemName = "Formula: Enchant Bracer - Lesser Strength" },
				},
			},
			{
				note = "Upstairs inside the building, at the top.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1429, x = 64.42, y = 69.12 },
					{ t = "goto", text = "Train Runed Golden Rod", map = 1429, x = 64.92, y = 70.71 },
				},
			},
			{
				note = "Disenchant level 26-30 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 26-30 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 11082, itemName = "Greater Astral Essence", count = 2 },
				},
			},
			{
				label = "Collect_Soul_Dust_151",
				along = true,
				note = "Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 26-35 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 11083, itemName = "Soul Dust", count = 2 },
				},
			},
			{
				label = "Collect_Golden_Rod_151",
				along = true,
				note = "Create it with Blacksmithing or purchase it from the auction house. Create it with Blacksmithing. It requires 1 Gold Bar and 2 Coarse Grinding Stones to craft.",
				goals = {
					{ t = "collect", item = 11128, itemName = "Golden Rod" },
				},
			},
			{
				label = "Collect_Iridescent_Pearl_151",
				along = true,
				note = "Farm it using the \"Iridescent Pearl\" farming guide or purchase it from the Auction House. Farm it using the \"Iridescent Pearl\" farming guide.",
				goals = {
					{ t = "collect", item = 5500, itemName = "Iridescent Pearl" },
				},
			},
			{
				note = "Save this, you will need it later.",
				goals = {
					{ t = "skill", level = 156, skill = "Enchanting" },
				},
			},
			{
				note = "Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 26-35 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 11083, itemName = "Soul Dust", count = 18 },
				},
			},
			{
				note = "Place then enchant on a bracer slot item, either equipped or in your inventory. You may be able to use it on other players' bracers to make some profit while increasing your skill level.",
				goals = {
					{ t = "skill", level = 165, skill = "Enchanting" },
				},
			},
			{
				note = "Upstairs inside the building, at the top.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1429, x = 64.42, y = 69.12 },
					{ t = "goto", text = "Train Enchant Bracer - Spirit", map = 1429, x = 64.92, y = 70.71 },
				},
			},
			{
				note = "Disenchant level 31-35 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 31-35 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 11134, itemName = "Lesser Mystic Essence", count = 20 },
				},
			},
			{
				note = "Place then enchant on a bracer slot item, either equipped or in your inventory. You may be able to use it on other players' bracers to make some profit while increasing your skill level.",
				goals = {
					{ t = "skill", level = 185, skill = "Enchanting" },
				},
			},
			{
				note = "Upstairs inside the building, at the top.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1429, x = 64.42, y = 69.12 },
					{ t = "goto", text = "Train Enchant Bracer - Strength", map = 1429, x = 64.92, y = 70.71 },
				},
			},
			{
				note = "Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 36-45 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 11137, itemName = "Vision Dust", count = 15 },
				},
			},
			{
				note = "Place then enchant on a bracer slot item, either equipped or in your inventory. You may be able to use it on other players' bracers to make some profit while increasing your skill level.",
				goals = {
					{ t = "skill", level = 200, skill = "Enchanting" },
				},
			},
			{
				note = "Upstairs inside the building, at the top.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1429, x = 64.42, y = 69.12 },
					{ t = "goto", text = "Train Runed Truesilver Rod", map = 1429, x = 64.92, y = 70.71 },
				},
			},
			{
				note = "Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 36-45 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 11137, itemName = "Vision Dust", count = 2 },
				},
			},
			{
				label = "Collect_Greater_Mystic_Essence_201",
				along = true,
				note = "Disenchant level 36-40 uncommon (green) items with Enchanting or purchase them from the auction house.",
				goals = {
					{ t = "collect", item = 11135, itemName = "Greater Mystic Essence", count = 2 },
				},
			},
			{
				label = "Collect_Truesilver_Rod_201",
				along = true,
				note = "Create it with Blacksmithing or purchase it from the auction house. Create it with Blacksmithing. It requires 1 Truesilver Bar and 1 Heavy Grinding Stones to craft.",
				goals = {
					{ t = "collect", item = 11144, itemName = "Truesilver Rod" },
				},
			},
			{
				label = "Collect_Black_Pearl_201",
				along = true,
				note = "Farm it using the \"Black Pearl\" farming guide or purchase it from the Auction House. Farm it using the \"Black Pearl\" farming guide.",
				goals = {
					{ t = "collect", item = 7971, itemName = "Black Pearl" },
				},
			},
			{
				note = "Save this, you will need it later.",
				goals = {
					{ t = "skill", level = 201, skill = "Enchanting" },
				},
			},
			{
				note = "Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 36-45 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 11137, itemName = "Vision Dust", count = 35 },
				},
			},
			{
				note = "Place then enchant on a bracer slot item, either equipped or in your inventory. You may be able to use it on other players' bracers to make some profit while increasing your skill level. You may need to make a few more or less of these. Each additional Strength enchant requires one Vision Dust.",
				goals = {
					{ t = "skill", level = 220, skill = "Enchanting" },
				},
			},
			{
				note = "Upstairs inside the building, at the top.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1429, x = 64.42, y = 69.12 },
					{ t = "goto", text = "Train Enchant Cloak - Greater Defense", map = 1429, x = 64.92, y = 70.71 },
				},
			},
			{
				note = "Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 36-45 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 11137, itemName = "Vision Dust", count = 15 },
				},
			},
			{
				note = "Place then enchant on a cloak slot item, either equipped or in your inventory. You may be able to use it on other players' cloak to make some profit while increasing your skill level.",
				goals = {
					{ t = "skill", level = 225, skill = "Enchanting" },
				},
			},
			{
				note = "You must be at least level 35 to train Artisan professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 35 },
				},
			},
			{
				note = "Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 36-45 uncommon (green) items with Enchanting. You are about to go into the Uldaman dungeon, where the only Artisan Enchanting trainer is located. You need to have enough materials to reach at least 250 skill in Enchanting. You'll want to get this done in one trip.",
				goals = {
					{ t = "collect", item = 11137, itemName = "Vision Dust", count = 211 },
				},
			},
			{
				note = "Use the back door entrance at this location. Enter the cave and follow the path to the swirling portal. Unless you are already level 60, you will need a group to help you through the dungeon. Try to put together a group of friends who are okay waiting on you for a few minutes inside the dungeon. They will be helping you to the Artisan Enchanting trainer, and waiting for you to level up your Enchanting skill.",
				goals = {
					{ t = "goto", text = "Badlands", map = 1418, x = 65.05, y = 43.45 },
				},
			},
			{
				note = "Inside the Uldaman dungeon. Follow the arrow in the image below to locate her. She will only appear once you've killed all of the scorpion enemies near her location. Click the line above to display an image.",
				goals = {
					{ t = "skill", level = 300, skill = "Enchanting" },
				},
			},
			{
				note = "You collected these in a previous step.",
				goals = {
					{ t = "collect", item = 11137, itemName = "Vision Dust", count = 36 },
				},
			},
		},
	})
end

