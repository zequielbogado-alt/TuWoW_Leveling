-- TuWoW_Leveling — Guides/Professions_34.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-tailoring-1-300",
		pack = "guides",
		title = "Tailoring (1-300) (Parte 1/2)",
		category = "Professions",
		folder = "Tailoring",
		faction = "Horde",
		next = "zygor/professions/h-tailoring-1-300-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "You must be at least level 5 to train professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 5 },
				},
			},
			{
				note = "Inside the building. Inside the tent.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 61.38, y = 50.37, only = { races = { "Orc", "Troll" } } },
					{ t = "skill", level = 75, skill = "Tailoring" },
				},
			},
			{
				note = "Farm them from level 5-20 humanoid mobs or purchase them from the auction house. Farm them from level 5-20 humanoid mobs. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 2589, itemName = "Linen Cloth", count = 204 },
				},
			},
			{
				label = "Collect_Wool_Cloth_Total",
				along = true,
				note = "Farm them from level 16-30 humanoid mobs or purchase them from the auction house. Farm them from level 16-30 humanoid mobs. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2592, itemName = "Wool Cloth", count = 135 },
				},
			},
			{
				label = "Collect_Silk_Cloth_Total",
				along = true,
				note = "Farm them from level 28-40 humanoid mobs or purchase them from the auction house. Farm them from level 28-40 humanoid mobs. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 4306, itemName = "Silk Cloth", count = 804 },
				},
			},
			{
				label = "Collect_Mageweave_Cloth_Total",
				along = true,
				note = "Farm them from level 38-50 humanoid mobs or purchase them from the auction house. Farm them from level 38-50 humanoid mobs. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 4338, itemName = "Mageweave Cloth", count = 500 },
				},
			},
			{
				label = "Collect_Runecloth_Total",
				along = true,
				note = "Farm them from level 50+ humanoid mobs or purchase them from the auction house. Farm them from level 50+ humanoid mobs. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 14047, itemName = "Runecloth", count = 1235 },
				},
			},
			{
				label = "Collect_Rugged_Leather_Total",
				along = true,
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 8170, itemName = "Rugged Leather", count = 110 },
				},
			},
			{
				label = "Begin_Profession_Leveling",
				note = "Farm them from level 5-20 humanoid mobs or purchase them from the auction house. Farm them from level 5-20 humanoid mobs.",
				goals = {
					{ t = "collect", item = 2589, itemName = "Linen Cloth", count = 204 },
				},
			},
			{
				note = "Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 2996, itemName = "Bolt of Linen Cloth", count = 102 },
				},
			},
			{
				note = "Save 102 of these, you will need them later. You may need to make a few more of these. Each additional Bolt of Linen Cloth requires 2 Linen Cloth.",
				goals = {
					{ t = "skill", level = 45, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building. Inside the tent.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 61.38, y = 50.37, only = { races = { "Orc", "Troll" } } },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 2996, itemName = "Bolt of Linen Cloth", count = 40 },
				},
			},
			{
				note = "Inside the building. walk Inside the tent. Save these, you will need them later.",
				goals = {
					{ t = "buy", item = 2320, itemName = "Coarse Thread", count = 55, map = 1458, x = 70.59, y = 30.14, f = "e" },
				},
			},
			{
				note = "You may need to make a few more of these. Each additional Linen Belt requires 1 Bolt of Linen Cloth and 1 Coarse Thread.",
				goals = {
					{ t = "skill", level = 70, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building. Inside the tent.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 61.38, y = 50.37, only = { races = { "Orc", "Troll" } } },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 2996, itemName = "Bolt of Linen Cloth", count = 10 },
				},
			},
			{
				note = "Inside the building. walk Inside the tent. You purchased these in a previous step.",
				goals = {
					{ t = "buy", item = 2320, itemName = "Coarse Thread", count = 15, map = 1458, x = 70.59, y = 30.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Tailoring" },
				},
			},
			{
				note = "You must be at least level 10 to train Journeyman professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				note = "Inside the building. Inside the tent.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 61.38, y = 50.37, only = { races = { "Orc", "Troll" } } },
					{ t = "skill", level = 150, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building. Inside the tent.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 61.38, y = 50.37, only = { races = { "Orc", "Troll" } } },
				},
			},
			{
				note = "Farm them from level 16-30 humanoid mobs or purchase them from the auction house. Farm them from level 16-30 humanoid mobs.",
				goals = {
					{ t = "collect", item = 2592, itemName = "Wool Cloth", count = 135 },
				},
			},
			{
				note = "Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 2997, itemName = "Bolt of Woolen Cloth", count = 45 },
				},
			},
			{
				note = "Save 45 of these, you will need them later. You may need to make a few more of these. Each additional Bolt of Woolen Cloth requires 3 Wool Cloth.",
				goals = {
					{ t = "skill", level = 100, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building. Inside the tent.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 61.38, y = 50.37, only = { races = { "Orc", "Troll" } } },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 2996, itemName = "Bolt of Linen Cloth", count = 52 },
				},
			},
			{
				note = "Inside the building. walk Inside the tent. Save these, you will need them later.",
				goals = {
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 43, map = 1458, x = 70.59, y = 30.14, f = "e" },
				},
			},
			{
				note = "You may need to make a few more of these. Each additional Simple Kilt requires 4 Bolts of Linen Cloth and 1 Fine Thread.",
				goals = {
					{ t = "skill", level = 110, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building. Inside the tent.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 61.38, y = 50.37, only = { races = { "Orc", "Troll" } } },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 2997, itemName = "Bolt of Woolen Cloth", count = 45 },
				},
			},
			{
				note = "Inside the building. walk Inside the tent. You purchased these in a previous step.",
				goals = {
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 30, map = 1458, x = 70.59, y = 30.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 125, skill = "Tailoring" },
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
				goals = {
					{ t = "skill", level = 225, skill = "Tailoring" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Bolt of Silk Cloth", map = 1458, x = 70.76, y = 30.69 },
				},
			},
			{
				note = "Farm them from level 28-40 humanoid mobs or purchase them from the auction house. Farm them from level 28-40 humanoid mobs.",
				goals = {
					{ t = "collect", item = 4306, itemName = "Silk Cloth", count = 804 },
				},
			},
			{
				note = "Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 4305, itemName = "Bolt of Silk Cloth", count = 201 },
				},
			},
			{
				note = "Save 201 of these, you will need them later.",
				goals = {
					{ t = "skill", level = 145, skill = "Tailoring" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Azure Silk Hood", map = 1458, x = 70.76, y = 30.69 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4305, itemName = "Bolt of Silk Cloth", count = 36 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 18, map = 1458, x = 70.59, y = 30.15, f = "e" },
					{ t = "buy", item = 6260, itemName = "Blue Dye", count = 36, map = 1458, x = 70.59, y = 30.15, f = "e" },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Azure Silk Hood requires 2 Bolts of Silk Cloth, 2 Blue Dye, and 1 Fine Thread.",
				goals = {
					{ t = "skill", level = 160, skill = "Tailoring" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Silk Headband", map = 1458, x = 70.76, y = 30.69 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4305, itemName = "Bolt of Silk Cloth", count = 30 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 20, map = 1458, x = 70.59, y = 30.15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 170, skill = "Tailoring" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Formal White Shirt", map = 1458, x = 70.76, y = 30.69 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4305, itemName = "Bolt of Silk Cloth", count = 15 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 2324, itemName = "Bleach", count = 10, map = 1458, x = 70.59, y = 30.15, f = "e" },
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 5, map = 1458, x = 70.59, y = 30.15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 175, skill = "Tailoring" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Bolt of Mageweave", map = 1458, x = 70.76, y = 30.69 },
				},
			},
			{
				note = "Farm them from level 38-50 humanoid mobs or purchase them from the auction house. Farm them from level 38-50 humanoid mobs.",
				goals = {
					{ t = "collect", item = 4338, itemName = "Mageweave Cloth", count = 500 },
				},
			},
			{
				note = "Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 4339, itemName = "Bolt of Mageweave", count = 100 },
				},
			},
			{
				note = "Save 100 of these, you will need them later.",
				goals = {
					{ t = "skill", level = 185, skill = "Tailoring" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Crimson Silk Vest", map = 1458, x = 70.76, y = 30.69 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4305, itemName = "Bolt of Silk Cloth", count = 80 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 40, map = 1458, x = 70.59, y = 30.15, f = "e" },
					{ t = "buy", item = 2604, itemName = "Red Dye", count = 40, map = 1458, x = 70.59, y = 30.15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 205, skill = "Tailoring" },
				},
			},
			{
				note = "You must be at least level 35 to train Artisan professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 35 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 62.9, y = 20.55 },
					{ t = "skill", level = 300, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Crimson Silk Pantaloons", map = 1424, x = 63.75, y = 20.78 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4305, itemName = "Bolt of Silk Cloth", count = 40 },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "goto", text = "Leave the building", map = 1424, x = 62.9, y = 20.55 },
					{ t = "buy", item = 2604, itemName = "Red Dye", count = 20, map = 1424, x = 61.9, y = 20.98, f = "e" },
					{ t = "buy", item = 4291, itemName = "Silken Thread", count = 20, map = 1424, x = 61.9, y = 20.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 215, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 62.9, y = 20.55 },
					{ t = "goto", text = "Train Orange Mageweave Shirt", map = 1424, x = 63.75, y = 20.78 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4339, itemName = "Bolt of Mageweave", count = 5 },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "goto", text = "Leave the building", map = 1424, x = 62.9, y = 20.55 },
					{ t = "buy", item = 6261, itemName = "Orange Dye", count = 5, map = 1424, x = 61.9, y = 20.98, f = "e" },
					{ t = "buy", item = 8343, itemName = "Heavy Silken Thread", count = 5, map = 1424, x = 61.9, y = 20.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 220, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 62.9, y = 20.55 },
					{ t = "goto", text = "Train Black Mageweave Gloves", map = 1424, x = 63.75, y = 20.78 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4339, itemName = "Bolt of Mageweave", count = 20 },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "goto", text = "Leave the building", map = 1424, x = 62.9, y = 20.55 },
					{ t = "buy", item = 8343, itemName = "Heavy Silken Thread", count = 20, map = 1424, x = 61.9, y = 20.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 230, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 62.9, y = 20.55 },
					{ t = "goto", text = "Train Black Mageweave Headband", map = 1424, x = 63.75, y = 20.78 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4339, itemName = "Bolt of Mageweave", count = 75 },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "goto", text = "Leave the building", map = 1424, x = 62.9, y = 20.55 },
					{ t = "buy", item = 8343, itemName = "Heavy Silken Thread", count = 50, map = 1424, x = 61.9, y = 20.98, f = "e" },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Black Mageweave Headband requires 3 Bolts of Mageweave and 2 Heavy Silken Thread.",
				goals = {
					{ t = "skill", level = 250, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 62.9, y = 20.55 },
					{ t = "goto", text = "Train Bolt of Runecloth", map = 1424, x = 63.75, y = 20.78 },
				},
			},
			{
				note = "Farm them from level 50+ humanoid mobs or purchase them from the auction house. Farm them from level 50+ humanoid mobs.",
				goals = {
					{ t = "collect", item = 14047, itemName = "Runecloth", count = 1235 },
				},
			},
			{
				note = "Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 14048, itemName = "Bolt of Runecloth", count = 247 },
				},
			},
			{
				note = "Save 247 of these, you will need them later.",
				goals = {
					{ t = "skill", level = 260, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 62.9, y = 20.55 },
					{ t = "goto", text = "Train Runecloth Belt", map = 1424, x = 63.75, y = 20.78 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 14048, itemName = "Bolt of Runecloth", count = 75 },
				},
			},
			{
				note = "He walks around this area. Save these, you will need them later.",
				goals = {
					{ t = "goto", text = "Leave the building", map = 1424, x = 62.9, y = 20.55 },
					{ t = "buy", item = 14341, itemName = "Rune Thread", count = 63, map = 1424, x = 61.9, y = 20.98, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-tailoring-1-300-part-2",
		pack = "guides",
		title = "Tailoring (1-300) (Parte 2/2)",
		category = "Professions",
		folder = "Tailoring",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "You may need to create a few more or less of these. Each additional Runecloth Belt requires 3 Bolts of Runecloth and 1 Rune Thread.",
				goals = {
					{ t = "skill", level = 280, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building. These are limited supply items that can also be purchased from the auction house. These are limited supply items. Click if the Pattern: Runecloth Gloves is not available.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1452, x = 61.33, y = 37.35 },
					{ t = "buy", item = 14468, itemName = "Pattern: Runecloth Bag", map = 1452, x = 61.2, y = 37.21, f = "e" },
					{ t = "buy", item = 14481, itemName = "Pattern: Runecloth Gloves", map = 1452, x = 61.2, y = 37.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 14468, itemName = "Pattern: Runecloth Bag" },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 14048, itemName = "Bolt of Runecloth", count = 90 },
				},
			},
			{
				label = "Collect_Rugged_Leather_290",
				along = true,
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 8170, itemName = "Rugged Leather", count = 36 },
				},
			},
			{
				note = "Inside the building. You purchased these in a previous step.",
				goals = {
					{ t = "buy", item = 14341, itemName = "Rune Thread", count = 18, map = 1454, x = 63.08, y = 51.44, f = "e" },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Runecloth Bag requires 5 Bolts of Runecloth, 2 Rugged Leather, and 1 Rune Thread.",
				goals = {
					{ t = "skill", level = 290, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building. This is a limited supply item that can also be purchased from the auction house. This is a limited supply item.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1452, x = 61.33, y = 37.35 },
					{ t = "buy", item = 14481, itemName = "Pattern: Runecloth Gloves", map = 1452, x = 61.2, y = 37.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 14481, itemName = "Pattern: Runecloth Gloves" },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 14048, itemName = "Bolt of Runecloth", count = 80 },
				},
			},
			{
				label = "Collect_Rugged_Leather_300",
				along = true,
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 8170, itemName = "Rugged Leather", count = 74 },
				},
			},
			{
				note = "Inside the building. You purchased these in a previous step.",
				goals = {
					{ t = "buy", item = 14341, itemName = "Rune Thread", count = 18, map = 1454, x = 63.08, y = 51.44, f = "e" },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Runecloth Glove requires 4 Bolts of Runecloth, 4 Rugged Leather, and 1 Rune Thread.",
				goals = {
					{ t = "skill", level = 300, skill = "Tailoring" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-linen-cloth",
		pack = "guides",
		title = "Linen Cloth",
		category = "Professions",
		folder = "Tailoring",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "You may need a group for this.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1454, x = 52.0, y = 57.84 },
					{ t = "goto", text = "Follow the path down", map = 1454, x = 56.07, y = 41.08 },
					{ t = "goto", text = "Enter the Ragefire Chasm dungeon", map = 1454, x = 52.75, y = 48.86 },
				},
			},
			{
				goals = {
					{ t = "collect", item = 2589, itemName = "Linen Cloth" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-wool-cloth",
		pack = "guides",
		title = "Wool Cloth",
		category = "Professions",
		folder = "Tailoring",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1440,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 2592, itemName = "Wool Cloth", map = 1440, x = 54.08, y = 62.6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-silk-cloth",
		pack = "guides",
		title = "Silk Cloth",
		category = "Professions",
		folder = "Tailoring",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1441,
		version = 1,
		steps = {
			{
				note = "You can find more inside the cave.",
				goals = {
					{ t = "collect", item = 4306, itemName = "Silk Cloth", map = 1441, x = 44.01, y = 37.41, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-mageweave-cloth",
		pack = "guides",
		title = "Mageweave Cloth",
		category = "Professions",
		folder = "Tailoring",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1446,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 4338, itemName = "Mageweave Cloth", map = 1446, x = 40.5, y = 55.5, f = "e" },
				},
			},
		},
	})
end

