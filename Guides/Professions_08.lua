-- TuWoW_Leveling — Guides/Professions_08.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-enchanting-1-300-part-2",
		pack = "guides",
		title = "Enchanting (1-300) (Parte 2/2)",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Place then enchant on a cloak slot item, either equipped or in your inventory. You may be able to use it on other players' cloak to make some profit while increasing your skill level. You may need to make a few more or less of these. Each additional Greater Defense enchant requires three Vision Dust.",
				goals = {
					{ t = "skill", level = 230, skill = "Enchanting" },
				},
			},
			{
				note = "Inside the Uldaman dungeon.",
				goals = {
					{ t = "talk", npc = 11073, npcName = "Annora" },
				},
			},
			{
				note = "You collected these in a previous step.",
				goals = {
					{ t = "collect", item = 11137, itemName = "Vision Dust", count = 25 },
				},
			},
			{
				note = "Place then enchant on a boot slot item, either equipped or in your inventory. You may be able to use it on other players' boots to make some profit while increasing your skill level.",
				goals = {
					{ t = "skill", level = 235, skill = "Enchanting" },
				},
			},
			{
				note = "Inside the Uldaman dungeon.",
				goals = {
					{ t = "talk", npc = 11073, npcName = "Annora" },
				},
			},
			{
				note = "You collected these in a previous step.",
				goals = {
					{ t = "collect", item = 11137, itemName = "Vision Dust", count = 150 },
				},
			},
			{
				note = "Place then enchant on a chest slot item, either equipped or in your inventory. You may be able to use it on other players' chest to make some profit while increasing your skill level. You may need to make a few more or less of these. Each additional Superior Health enchant requires six Vision Dust.",
				goals = {
					{ t = "skill", level = 250, skill = "Enchanting" },
				},
			},
			{
				note = "Inside the Uldaman dungeon.",
				goals = {
					{ t = "talk", npc = 11073, npcName = "Annora" },
				},
			},
			{
				note = "Inside the Uldaman dungeon.",
				goals = {
					{ t = "talk", npc = 11073, npcName = "Annora" },
				},
			},
			{
				note = "Inside the Uldaman dungeon.",
				goals = {
					{ t = "talk", npc = 11073, npcName = "Annora" },
				},
			},
			{
				note = "Inside the Uldaman dungeon.",
				goals = {
					{ t = "talk", npc = 11073, npcName = "Annora" },
				},
			},
			{
				note = "Inside the Uldaman dungeon.",
				goals = {
					{ t = "talk", npc = 11073, npcName = "Annora" },
				},
			},
			{
				note = "Inside the Uldaman dungeon.",
				goals = {
					{ t = "talk", npc = 11073, npcName = "Annora" },
				},
			},
			{
				note = "Inside the Uldaman dungeon.",
				goals = {
					{ t = "talk", npc = 11073, npcName = "Annora" },
				},
			},
			{
				note = "Inside the Uldaman dungeon.",
				goals = {
					{ t = "talk", npc = 11073, npcName = "Annora" },
				},
			},
			{
				note = "Inside the Uldaman dungeon.",
				goals = {
					{ t = "talk", npc = 11073, npcName = "Annora" },
				},
			},
			{
				note = "Inside the Uldaman dungeon.",
				goals = {
					{ t = "talk", npc = 11073, npcName = "Annora" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "buy", item = 20754, itemName = "Formula: Lesser Mana Oil", map = 1451, x = 52.0, y = 39.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20754, itemName = "Formula: Lesser Mana Oil" },
				},
			},
			{
				note = "Disenchant level 46-55 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 46-55 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 11176, itemName = "Dream Dust", count = 60 },
				},
			},
			{
				label = "Collect_Purple_Lotus_265",
				along = true,
				note = "Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 8831, itemName = "Purple Lotus", count = 40 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 8925, itemName = "Crystal Vial", count = 20, map = 1457, x = 60.96, y = 17.67, f = "e" },
				},
			},
			{
				note = "You may need to make a few more or less of these. Each additional Lesser Mana Oil requires three Dream Dust, two Purple Lotus, and one Crystal Vial.",
				goals = {
					{ t = "skill", level = 265, skill = "Enchanting" },
				},
			},
			{
				note = "Inside the building. This is a limited supply item that cannot be purchased from the auction house. If he doesn't have it for sale, you will have to wait.",
				goals = {
					{ t = "buy", item = 16217, itemName = "Formula: Enchant Shield - Greater Stamina", map = 1457, x = 60.96, y = 17.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16217, itemName = "Formula: Enchant Shield - Greater Stamina" },
				},
			},
			{
				note = "Disenchant level 46-55 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 46-55 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 11176, itemName = "Dream Dust", count = 300 },
				},
			},
			{
				note = "Place then enchant on a shield slot item, either equipped or in your inventory. You may be able to use it on other players' shield to make some profit while increasing your skill level. You may need to make a few more or less of these. Each additional Greater Stamina enchant requires ten Dream Dust.",
				goals = {
					{ t = "skill", level = 294, skill = "Enchanting" },
				},
			},
			{
				note = "Inside the building. These are limited supply items that can also be purchased from the auction house. These are limited supply items.",
				goals = {
					{ t = "goto", text = "Follow the road", map = 1450, x = 40.25, y = 37.05 },
					{ t = "buy", item = 16224, itemName = "Formula: Enchant Cloak - Superior Defense", map = 1450, x = 48.24, y = 40.14, f = "e" },
					{ t = "buy", item = 16243, itemName = "Formula: Runed Arcanite Rod", map = 1450, x = 48.24, y = 40.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16224, itemName = "Formula: Enchant Cloak - Superior Defense" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16243, itemName = "Formula: Runed Arcanite Rod" },
				},
			},
			{
				note = "Disenchant level 56-60 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 56-60 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 16204, itemName = "Illusion Dust", count = 10 },
				},
			},
			{
				label = "Collect_Greater_Eternal_Essence_295",
				along = true,
				note = "Disenchant level 51-56 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 51-56 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 16203, itemName = "Greater Eternal Essence", count = 4 },
				},
			},
			{
				label = "Collect_Small_Brilliant_Shard_295",
				along = true,
				note = "Disenchant level 46-51 rare (blue) items with Enchanting or purchase them from the auction house. Disenchant level 46-51 rare (blue) items with Enchanting.",
				goals = {
					{ t = "collect", item = 14343, itemName = "Small Brilliant Shard", count = 4 },
				},
			},
			{
				label = "Collect_Large_Brilliant_Shard_295",
				along = true,
				note = "Disenchant level 51-60 rare (blue) items with Enchanting or purchase them from the auction house. Disenchant level 51-60 rare (blue) items with Enchanting.",
				goals = {
					{ t = "collect", item = 14344, itemName = "Large Brilliant Shard", count = 2 },
				},
			},
			{
				label = "Collect_Arcanite_Rod_295",
				along = true,
				note = "Create it with Blacksmithing or purchase it from the auction house. Create it with Blacksmithing. It takes 3 Arcanite Bars and 1 Dense Grinding Stone to craft.",
				goals = {
					{ t = "collect", item = 16206, itemName = "Arcanite Rod" },
				},
			},
			{
				label = "Collect_Golden_Pearl_295",
				along = true,
				note = "Farm it using the \"Golden Pearl\" farming guide or purchase it from the Auction House. Farm it using the \"Golden Pearl\" farming guide.",
				goals = {
					{ t = "collect", item = 13926, itemName = "Golden Pearl" },
				},
			},
			{
				note = "Save this, you will need it later.",
				goals = {
					{ t = "skill", level = 295, skill = "Enchanting" },
				},
			},
			{
				note = "Disenchant level 56-60 uncommon (green) items with Enchanting or purchase them from the auction house. Disenchant level 56-60 uncommon (green) items with Enchanting.",
				goals = {
					{ t = "collect", item = 16204, itemName = "Illusion Dust", count = 40 },
				},
			},
			{
				note = "Place then enchant on a cloak slot item, either equipped or in your inventory. You may be able to use it on other players' cloak to make some profit while increasing your skill level.",
				goals = {
					{ t = "skill", level = 300, skill = "Enchanting" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-strange-dust",
		pack = "guides",
		title = "Strange Dust",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear. You may sometimes get Small Glimmering Shards instead of Strange Dust.",
				goals = {
					{ t = "collect", item = 10940, itemName = "Strange Dust" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-lesser-magic-essence",
		pack = "guides",
		title = "Lesser Magic Essence",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear. You may sometimes get Strange Dust instead of Lesser Magic Essence.",
				goals = {
					{ t = "collect", item = 10938, itemName = "Lesser Magic Essence" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-greater-magic-essence",
		pack = "guides",
		title = "Greater Magic Essence",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear. You may sometimes get Strange Dust instead of Greater Magic Essence. You can turn 3 Lesser Magic Essences into a Greater Magic Essence.",
				goals = {
					{ t = "collect", item = 10939, itemName = "Greater Magic Essence" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-lesser-eternal-essence",
		pack = "guides",
		title = "Lesser Eternal Essence",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear. You may sometimes get Dream Dust instead of Lesser Eternal Essence.",
				goals = {
					{ t = "collect", item = 16202, itemName = "Lesser Eternal Essence" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-greater-eternal-essence",
		pack = "guides",
		title = "Greater Eternal Essence",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear. You may sometimes get Illusion Dust instead of Greater Eternal Essence. You can turn 3 Lesser Eternal Essences into a Greater Eternal Essence.",
				goals = {
					{ t = "collect", item = 16203, itemName = "Greater Eternal Essence" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-small-brilliant-shard",
		pack = "guides",
		title = "Small Brilliant Shard",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear. You may sometimes get Dream Dust instead of Small Brilliant Shards.",
				goals = {
					{ t = "collect", item = 14343, itemName = "Small Brilliant Shard" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-large-brilliant-shard",
		pack = "guides",
		title = "Large Brilliant Shard",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear. You may very rarely get Nexus Crystals instead of Large Brilliant Shards.",
				goals = {
					{ t = "collect", item = 14344, itemName = "Large Brilliant Shard" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-illusion-dust",
		pack = "guides",
		title = "Illusion Dust",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear. You may sometimes get Greater Eternal Essence instead of Illusion Dust.",
				goals = {
					{ t = "collect", item = 16204, itemName = "Illusion Dust" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-lesser-astral-essence",
		pack = "guides",
		title = "Lesser Astral Essence",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear.",
				goals = {
					{ t = "collect", item = 10998, itemName = "Lesser Astral Essence" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-greater-astral-essence",
		pack = "guides",
		title = "Greater Astral Essence",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear.",
				goals = {
					{ t = "collect", item = 11082, itemName = "Greater Astral Essence" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-soul-dust",
		pack = "guides",
		title = "Soul Dust",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear.",
				goals = {
					{ t = "collect", item = 11083, itemName = "Soul Dust" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-lesser-mystic-essence",
		pack = "guides",
		title = "Lesser Mystic Essence",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear.",
				goals = {
					{ t = "collect", item = 11134, itemName = "Lesser Mystic Essence" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-greater-mystic-essence",
		pack = "guides",
		title = "Greater Mystic Essence",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear.",
				goals = {
					{ t = "collect", item = 11135, itemName = "Greater Mystic Essence" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-vision-dust",
		pack = "guides",
		title = "Vision Dust",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear.",
				goals = {
					{ t = "collect", item = 11137, itemName = "Vision Dust" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-lesser-nether-essence",
		pack = "guides",
		title = "Lesser Nether Essence",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear.",
				goals = {
					{ t = "collect", item = 11174, itemName = "Lesser Nether Essence" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-greater-nether-essence",
		pack = "guides",
		title = "Greater Nether Essence",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear.",
				goals = {
					{ t = "collect", item = 11175, itemName = "Greater Nether Essence" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-dream-dust",
		pack = "guides",
		title = "Dream Dust",
		category = "Professions",
		folder = "Enchanting",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You can disenchant old gear or buy some off the Auction House. You can disenchant old gear.",
				goals = {
					{ t = "collect", item = 11176, itemName = "Dream Dust" },
				},
			},
		},
	})
end

