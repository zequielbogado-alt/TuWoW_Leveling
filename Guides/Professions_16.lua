-- TuWoW_Leveling — Guides/Professions_16.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-tailoring-1-300",
		pack = "guides",
		title = "Tailoring (1-300) (Parte 1/2)",
		category = "Professions",
		folder = "Tailoring",
		faction = "Alliance",
		next = "zygor/professions/a-tailoring-1-300-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1455,
		version = 1,
		steps = {
			{
				note = "You must be at least level 5 to train professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 5 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 43.88, y = 29.71, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1453, x = 54.18, y = 81.62, only = { races = { "Human" } } },
					{ t = "goto", text = "Enter the building", map = 1457, x = 61.3, y = 23.23, only = { races = { "NightElf" } } },
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
				note = "Inside the building.",
				goals = {
					{ t = "talk", npc = 11050, npcName = "Trianna", map = 1457, x = 63.55, y = 21.22, f = "e" },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 2996, itemName = "Bolt of Linen Cloth", count = 40 },
				},
			},
			{
				note = "Inside the building. Save these, you will need them later.",
				goals = {
					{ t = "buy", item = 2320, itemName = "Coarse Thread", count = 40, map = 1457, x = 64.58, y = 21.58, f = "e" },
				},
			},
			{
				note = "You may need to make a few more of these. Each additional Linen Belt requires 1 Bolt of Linen Cloth and 1 Coarse Thread.",
				goals = {
					{ t = "skill", level = 70, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "talk", npc = 11050, npcName = "Trianna", map = 1457, x = 63.55, y = 21.22, f = "e" },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 2996, itemName = "Bolt of Linen Cloth", count = 10 },
				},
			},
			{
				note = "Inside the building. You purchased these in a previous step.",
				goals = {
					{ t = "buy", item = 2320, itemName = "Coarse Thread", count = 15, map = 1455, x = 42.94, y = 28.31, f = "e" },
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
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 51.49, y = 84.88, only = { races = { "Human" } } },
					{ t = "skill", level = 150, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "talk", npc = 4159, npcName = "Me'lynn", map = 1457, x = 63.41, y = 22.38, f = "e" },
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
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Simple Kilt", map = 1455, x = 43.15, y = 29.35 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 2996, itemName = "Bolt of Linen Cloth", count = 52 },
				},
			},
			{
				note = "Inside the building. Save these, you will need them later.",
				goals = {
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 43, map = 1457, x = 64.58, y = 21.58, f = "e" },
				},
			},
			{
				note = "You may need to make a few more of these. Each additional Simple Kilt requires 4 Bolts of Linen Cloth and 1 Fine Thread.",
				goals = {
					{ t = "skill", level = 110, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "talk", npc = 4159, npcName = "Me'lynn", map = 1457, x = 63.41, y = 22.38, f = "e" },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 2997, itemName = "Bolt of Woolen Cloth", count = 45 },
				},
			},
			{
				note = "Inside the building. You purchased these in a previous step.",
				goals = {
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 30, map = 1457, x = 64.58, y = 21.58, f = "e" },
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
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 54.14, y = 81.62 },
					{ t = "skill", level = 225, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Bolt of Silk Cloth", map = 1453, x = 53.08, y = 81.35 },
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
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 54.14, y = 81.62 },
					{ t = "goto", text = "Train Azure Silk Hood", map = 1453, x = 53.08, y = 81.35 },
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
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 18, map = 1453, x = 53.15, y = 81.76, f = "e" },
					{ t = "buy", item = 6260, itemName = "Blue Dye", count = 36, map = 1453, x = 53.15, y = 81.76, f = "e" },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Azure Silk Hood requires 2 Bolts of Silk Cloth, 2 Blue Dye, and 1 Fine Thread.",
				goals = {
					{ t = "skill", level = 160, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Silk Headband", map = 1453, x = 53.08, y = 81.35 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4305, itemName = "Bolt of Silk Cloth", count = 30 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 20, map = 1453, x = 53.15, y = 81.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 170, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Formal White Shirt", map = 1453, x = 53.08, y = 81.35 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4305, itemName = "Bolt of Silk Cloth", count = 15 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 2324, itemName = "Bleach", count = 10, map = 1453, x = 53.15, y = 81.76, f = "e" },
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 5, map = 1453, x = 53.15, y = 81.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 175, skill = "Tailoring" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Bolt of Mageweave", map = 1453, x = 53.08, y = 81.35 },
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
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 54.14, y = 81.62 },
					{ t = "goto", text = "Train Crimson Silk Vest", map = 1453, x = 53.08, y = 81.35 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4305, itemName = "Bolt of Silk Cloth", count = 80 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 40, map = 1453, x = 53.15, y = 81.76, f = "e" },
					{ t = "buy", item = 2604, itemName = "Red Dye", count = 40, map = 1453, x = 53.15, y = 81.76, f = "e" },
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
				note = "Upstairs inside the building. You must be at least level 35 to train artisan skills. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1445, x = 66.12, y = 51.55 },
					{ t = "skill", level = 300, skill = "Tailoring" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Crimson Silk Pantaloons", map = 1445, x = 66.18, y = 51.81 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4305, itemName = "Bolt of Silk Cloth", count = 40 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 2604, itemName = "Red Dye", count = 30, map = 1445, x = 66.44, y = 51.46, f = "e" },
					{ t = "buy", item = 4291, itemName = "Silken Thread", count = 30, map = 1445, x = 66.44, y = 51.46, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 215, skill = "Tailoring" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Orange Mageweave Shirt", map = 1445, x = 66.18, y = 51.81 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4339, itemName = "Bolt of Mageweave", count = 5 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 6261, itemName = "Orange Dye", count = 5, map = 1446, x = 51.01, y = 27.36, f = "e" },
					{ t = "buy", item = 8343, itemName = "Heavy Silken Thread", count = 5, map = 1446, x = 51.01, y = 27.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 220, skill = "Tailoring" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Black Mageweave Gloves", map = 1445, x = 66.18, y = 51.81 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4339, itemName = "Bolt of Mageweave", count = 20 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 8343, itemName = "Heavy Silken Thread", count = 20, map = 1445, x = 66.44, y = 51.46, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 230, skill = "Tailoring" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Black Mageweave Headband", map = 1445, x = 66.18, y = 51.81 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4339, itemName = "Bolt of Mageweave", count = 75 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 8343, itemName = "Heavy Silken Thread", count = 50, map = 1445, x = 66.44, y = 51.46, f = "e" },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Black Mageweave Headband requires 3 Bolts of Mageweave and 2 Heavy Silken Thread.",
				goals = {
					{ t = "skill", level = 250, skill = "Tailoring" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Bolt of Runecloth", map = 1445, x = 66.18, y = 51.81 },
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
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1445, x = 66.12, y = 51.55 },
					{ t = "goto", text = "Train Runecloth Belt", map = 1445, x = 66.18, y = 51.81 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 14048, itemName = "Bolt of Runecloth", count = 75 },
				},
			},
			{
				note = "Save these, you will need them later.",
				goals = {
					{ t = "buy", item = 14341, itemName = "Rune Thread", count = 63, map = 1446, x = 51.01, y = 27.36, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-tailoring-1-300-part-2",
		pack = "guides",
		title = "Tailoring (1-300) (Parte 2/2)",
		category = "Professions",
		folder = "Tailoring",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1455,
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
					{ t = "buy", item = 14341, itemName = "Rune Thread", count = 18, map = 1457, x = 64.2, y = 21.4, f = "e" },
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
					{ t = "buy", item = 14341, itemName = "Rune Thread", count = 18, map = 1457, x = 64.2, y = 21.4, f = "e" },
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
		id = "zygor/professions/a-linen-cloth",
		pack = "guides",
		title = "Linen Cloth",
		category = "Professions",
		folder = "Tailoring",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1436,
		version = 1,
		steps = {
			{
				note = "Be sure to enter the mine as well.",
				goals = {
					{ t = "collect", item = 2589, itemName = "Linen Cloth", map = 1436, x = 44.55, y = 25.01, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-wool-cloth",
		pack = "guides",
		title = "Wool Cloth",
		category = "Professions",
		folder = "Tailoring",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1433,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Follow the road up", map = 1433, x = 30.62, y = 43.17 },
					{ t = "goto", text = "Continue following the road", map = 1433, x = 41.97, y = 30.39 },
					{ t = "goto", text = "Follow the path up", map = 1433, x = 35.78, y = 15.0 },
					{ t = "collect", item = 2592, itemName = "Wool Cloth", map = 1433, x = 31.13, y = 9.93, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-silk-cloth",
		pack = "guides",
		title = "Silk Cloth",
		category = "Professions",
		folder = "Tailoring",
		faction = "Alliance",
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
		id = "zygor/professions/a-mageweave-cloth",
		pack = "guides",
		title = "Mageweave Cloth",
		category = "Professions",
		folder = "Tailoring",
		faction = "Alliance",
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

