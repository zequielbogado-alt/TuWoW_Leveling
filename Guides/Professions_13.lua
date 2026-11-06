-- TuWoW_Leveling — Guides/Professions_13.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-leatherworking-1-300",
		pack = "guides",
		title = "Leatherworking (1-300) (Parte 1/2)",
		category = "Professions",
		folder = "Leatherworking",
		faction = "Alliance",
		next = "zygor/professions/a-leatherworking-1-300-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1455,
		version = 1,
		steps = {
			{
				note = "You must be at least level 5 to train Apprentice professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 5 },
				},
			},
			{
				note = "Downstairs inside the building. Inside the building. Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1455, x = 41.98, y = 33.37, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1455, x = 40.36, y = 35.48, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1453, x = 72.65, y = 62.06, only = { races = { "Human" } } },
					{ t = "goto", text = "Enter the building", map = 1457, x = 61.09, y = 23.39, only = { races = { "NightElf" } } },
					{ t = "skill", level = 75, skill = "Leatherworking" },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 2934, itemName = "Ruined Leather Scraps", count = 57 },
				},
			},
			{
				label = "Collect_Light_Leather_Total",
				along = true,
				note = "Farm them with Skinning or purchase them from the auction house. notinsticky Farm them with Skinning. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2318, itemName = "Light Leather", count = 375 },
				},
			},
			{
				label = "Collect_Medium_Leather_Total",
				along = true,
				note = "Farm them with Skinning or purchase them from the auction house. notinsticky Farm them with Skinning. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2319, itemName = "Medium Leather", count = 352 },
				},
			},
			{
				label = "Collect_Heavy_Hide_Total",
				along = true,
				note = "Farm them with Skinning or purchase them from the auction house. notinsticky Farm them with Skinning. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 4235, itemName = "Heavy Hide", count = 20 },
				},
			},
			{
				label = "Collect_Heavy_Leather_Total",
				along = true,
				note = "Farm them with Skinning or purchase them from the auction house. notinsticky Farm them with Skinning. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 4234, itemName = "Heavy Leather", count = 215 },
				},
			},
			{
				label = "Collect_Thick_Leather_Total",
				along = true,
				note = "Farm them with Skinning or purchase them from the auction house. notinsticky Farm them with Skinning. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 4304, itemName = "Thick Leather", count = 643 },
				},
			},
			{
				label = "Collect_Rugged_Leather_Total",
				along = true,
				note = "Farm them with Skinning or purchase them from the auction house. notinsticky Farm them with Skinning. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 8170, itemName = "Rugged Leather", count = 384 },
				},
			},
			{
				label = "Begin_Profession_Leveling",
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning. You can also use 20 Light Leather to make 20 Light Armor Kits.",
				goals = {
					{ t = "collect", item = 2934, itemName = "Ruined Leather Scraps", count = 57 },
				},
			},
			{
				note = "Save these, you will need them later. You can also use 20 Light Leather to make 20 Light Armor Kits.",
				goals = {
					{ t = "collect", item = 2318, itemName = "Light Leather", count = 19 },
				},
			},
			{
				note = "Save 19 of these, you will need them later. You can also use 20 Light Leather to make 20 Light Armor Kits.",
				goals = {
					{ t = "skill", level = 20, skill = "Leatherworking" },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 2318, itemName = "Light Leather", count = 40 },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Light Armor Kit requires 1 Light Leather.",
				goals = {
					{ t = "skill", level = 45, skill = "Leatherworking" },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 2318, itemName = "Light Leather", count = 42 },
				},
			},
			{
				note = "Downstairs inside the building. Inside the building. Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1455, x = 41.98, y = 33.37, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1455, x = 40.36, y = 35.48, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1453, x = 72.65, y = 62.06, only = { races = { "Human" } } },
					{ t = "goto", text = "Enter the building", map = 1457, x = 61.09, y = 23.39, only = { races = { "NightElf" } } },
					{ t = "buy", item = 2320, itemName = "Coarse Thread", count = 21, map = 1457, x = 63.69, y = 22.28, f = "e" },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Handstitched Leather Cloak requires 2 Light Leather and 1 Coarse Thread.",
				goals = {
					{ t = "skill", level = 55, skill = "Leatherworking" },
				},
			},
			{
				note = "You must be at least level 10 to train Journeyman professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				note = "Downstairs inside the building. Inside the building. Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1455, x = 41.98, y = 33.37, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1455, x = 40.36, y = 35.48, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1453, x = 72.65, y = 62.06, only = { races = { "Human" } } },
					{ t = "goto", text = "Enter the building", map = 1457, x = 61.09, y = 23.39, only = { races = { "NightElf" } } },
					{ t = "skill", level = 150, skill = "Leatherworking" },
				},
			},
			{
				note = "Downstairs inside the building. Inside the building. Upstairs inside the building.",
				goals = {
					{ t = "talk", npc = 11081, npcName = "Faldron", map = 1457, x = 64.78, y = 21.83, f = "e" },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 2318, itemName = "Light Leather", count = 165 },
				},
			},
			{
				note = "Downstairs inside the building. Inside the building. Upstairs inside the building. Save these, you will need them later.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1455, x = 41.98, y = 33.37, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1455, x = 40.36, y = 35.48, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1453, x = 72.65, y = 62.06, only = { races = { "Human" } } },
					{ t = "goto", text = "Enter the building", map = 1457, x = 61.09, y = 23.39, only = { races = { "NightElf" } } },
					{ t = "buy", item = 2320, itemName = "Coarse Thread", count = 180, map = 1457, x = 63.69, y = 22.28, f = "e" },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Embossed Leather Glove requires 3 Light Leather and 2 Coarse Thread.",
				goals = {
					{ t = "skill", level = 100, skill = "Leatherworking" },
				},
			},
			{
				note = "Downstairs inside the building. Inside the building. Upstairs inside the building.",
				goals = {
					{ t = "talk", npc = 11081, npcName = "Faldron", map = 1457, x = 64.78, y = 21.83, f = "e" },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 2318, itemName = "Light Leather", count = 210 },
				},
			},
			{
				note = "Downstairs inside the building. Inside the building. Upstairs inside the building. You bought these in a previous step.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1455, x = 41.98, y = 33.37, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1455, x = 40.36, y = 35.48, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1453, x = 72.65, y = 62.06, only = { races = { "Human" } } },
					{ t = "goto", text = "Enter the building", map = 1457, x = 61.09, y = 23.39, only = { races = { "NightElf" } } },
					{ t = "buy", item = 2320, itemName = "Coarse Thread", count = 70, map = 1457, x = 63.69, y = 22.28, f = "e" },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Fine Leather Belt requires 6 Light Leather and 2 Coarse Thread.",
				goals = {
					{ t = "skill", level = 125, skill = "Leatherworking" },
				},
			},
			{
				note = "Downstairs inside the building. Inside the building. Upstairs inside the building.",
				goals = {
					{ t = "talk", npc = 11081, npcName = "Faldron", map = 1457, x = 64.78, y = 21.83, f = "e" },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 2319, itemName = "Medium Leather", count = 72 },
				},
			},
			{
				note = "Downstairs inside the building. Inside the building. Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1455, x = 41.98, y = 33.37, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1455, x = 40.36, y = 35.48, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building", map = 1453, x = 72.65, y = 62.06, only = { races = { "Human" } } },
					{ t = "goto", text = "Enter the building", map = 1457, x = 61.09, y = 23.39, only = { races = { "NightElf" } } },
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 36, map = 1457, x = 63.69, y = 22.28, f = "e" },
					{ t = "buy", item = 4340, itemName = "Gray Dye", count = 18, map = 1457, x = 63.69, y = 22.28, f = "e" },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Dark Leather Boot requires 4 Medium Leather, 2 Fine Thread, and 1 Gray Dye.",
				goals = {
					{ t = "skill", level = 137, skill = "Leatherworking" },
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
				note = "Upstairs inside the building.",
				goals = {
					{ t = "skill", level = 225, skill = "Leatherworking" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Dark Leather Pants", map = 1457, x = 64.43, y = 21.54 },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 2319, itemName = "Medium Leather", count = 240 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 20, map = 1457, x = 63.7, y = 22.28, f = "e" },
					{ t = "buy", item = 4340, itemName = "Gray Dye", count = 20, map = 1457, x = 63.7, y = 22.28, f = "e" },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Dark Leather Pant requires 12 Medium Leather, 1 Fine Thread, and 1 Gray Dye.",
				goals = {
					{ t = "skill", level = 150, skill = "Leatherworking" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Heavy Leather", map = 1457, x = 64.43, y = 21.54 },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 2319, itemName = "Medium Leather", count = 40 },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Heavy Leather requires 5 Medium Leather.",
				goals = {
					{ t = "skill", level = 155, skill = "Leatherworking" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Cured Heavy Hide", map = 1457, x = 64.43, y = 21.54 },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 4235, itemName = "Heavy Hide", count = 20 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "buy", item = 4289, itemName = "Salt", count = 60, map = 1457, x = 63.7, y = 22.28, f = "e" },
				},
			},
			{
				note = "Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 4236, itemName = "Cured Heavy Hide", count = 20 },
				},
			},
			{
				note = "Save 20 of these, you will need them later. You may need to create a few more of these. Each additional Cured Heavy Hide requires 1 Heavy Hide and 3 Salt.",
				goals = {
					{ t = "skill", level = 165, skill = "Leatherworking" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Heavy Armor Kit", map = 1457, x = 64.43, y = 21.54 },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 4234, itemName = "Heavy Leather", count = 95 },
				},
			},
			{
				note = "Upstairs inside the building. Save these, you will need them later.",
				goals = {
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 39, map = 1457, x = 63.7, y = 22.28, f = "e" },
				},
			},
			{
				note = "You may need to create a few more of these. Each additional Heavy Armor Kit requires 5 Heavy Leather and 1 Fine Thread.",
				goals = {
					{ t = "skill", level = 180, skill = "Leatherworking" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Barbaric Shoulders", map = 1457, x = 64.43, y = 21.54 },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 4234, itemName = "Heavy Leather", count = 80 },
				},
			},
			{
				label = "Collect_Cured_Heavy_Hide_190",
				along = true,
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4236, itemName = "Cured Heavy Hide", count = 10 },
				},
			},
			{
				note = "Upstairs inside the building. You purchased these in a previous step.",
				goals = {
					{ t = "buy", item = 2321, itemName = "Fine Thread", count = 20, map = 1457, x = 63.7, y = 22.28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 190, skill = "Leatherworking" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Guardian Gloves", map = 1457, x = 64.43, y = 21.54 },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 4234, itemName = "Heavy Leather", count = 40 },
				},
			},
			{
				label = "Collect_Cured_Heavy_Hide_200",
				along = true,
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4236, itemName = "Cured Heavy Hide", count = 10 },
				},
			},
			{
				note = "Upstairs inside the building. Save these, you will need them later.",
				goals = {
					{ t = "buy", item = 4291, itemName = "Silken Thread", count = 15, map = 1457, x = 63.7, y = 22.28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 200, skill = "Leatherworking" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Thick Armor Kit", map = 1457, x = 64.43, y = 21.54 },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 4304, itemName = "Thick Leather", count = 25 },
				},
			},
			{
				note = "Upstairs inside the building. You purchased these in a previous step.",
				goals = {
					{ t = "buy", item = 4291, itemName = "Silken Thread", count = 5, map = 1457, x = 63.7, y = 22.28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 205, skill = "Leatherworking" },
				},
			},
			{
				note = "You must be at least this level before you can learn the next rank of this profession. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 35 },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1425, x = 14.17, y = 45.22 },
					{ t = "goto", text = "Run down the stairs", map = 1425, x = 13.18, y = 43.43 },
					{ t = "skill", level = 300, skill = "Leatherworking" },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Nightscape Headband", map = 1425, x = 13.39, y = 43.48 },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 4304, itemName = "Thick Leather", count = 200 },
				},
			},
			{
				note = "Downstairs inside the building. Save these, you will need them later.",
				goals = {
					{ t = "buy", item = 4291, itemName = "Silken Thread", count = 166, map = 1425, x = 13.3, y = 43.37, f = "e" },
				},
			},
			{
				note = "You may need to make a few more or less of these. Each additional Nightscape Headband requires 5 Thick Leather and 2 Silken Thread.",
				goals = {
					{ t = "skill", level = 235, skill = "Leatherworking" },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Nightscape Pants", map = 1425, x = 13.39, y = 43.48 },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 4304, itemName = "Thick Leather", count = 210 },
				},
			},
			{
				note = "Downstairs inside the building. You purchased these in a previous step.",
				goals = {
					{ t = "buy", item = 4291, itemName = "Silken Thread", count = 60, map = 1425, x = 13.3, y = 43.37, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 250, skill = "Leatherworking" },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Nightscape Boots", map = 1425, x = 13.39, y = 43.48 },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 4304, itemName = "Thick Leather", count = 208 },
				},
			},
			{
				note = "Downstairs inside the building. You purchased these in a previous step.",
				goals = {
					{ t = "buy", item = 8343, itemName = "Heavy Silken Thread", count = 26, map = 1425, x = 13.3, y = 43.37, f = "e" },
				},
			},
			{
				note = "You may need to make a few more or less of these. Each additional Nightscape Boot requires 16 Thick Leather and 2 Heavy Silken Thread.",
				goals = {
					{ t = "skill", level = 260, skill = "Leatherworking" },
				},
			},
			{
				note = "This is a limited supply item that can also be purchased from the auction house. This is a limited supply item.",
				goals = {
					{ t = "buy", item = 15725, itemName = "Pattern: Wicked Leather Gauntlets", map = 1422, x = 43.0, y = 84.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 2325, itemName = "Black Dye", count = 33, map = 1422, x = 43.0, y = 84.2, f = "e" },
					{ t = "buy", item = 14341, itemName = "Rune Thread", count = 33, map = 1422, x = 43.0, y = 84.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 15725, itemName = "Pattern: Wicked Leather Gauntlets" },
				},
			},
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 8170, itemName = "Rugged Leather", count = 264 },
				},
			},
			{
				note = "You may need to make a few more or less of these. Each additional Wicked Leather Gauntlet requires 8 Rugged Leather, 1 Black Dye, and 1 Rune Thread.",
				goals = {
					{ t = "skill", level = 290, skill = "Leatherworking" },
				},
			},
			{
				note = "This pattern might take a while to farm. It can also be purchased from the auction house.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1448, x = 43.08, y = 21.31 },
					{ t = "collect", item = 15744, itemName = "Pattern: Wicked Leather Headband", map = 1448, x = 42.0, y = 18.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 15744, itemName = "Pattern: Wicked Leather Headband" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-leatherworking-1-300-part-2",
		pack = "guides",
		title = "Leatherworking (1-300) (Parte 2/2)",
		category = "Professions",
		folder = "Leatherworking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1455,
		version = 1,
		steps = {
			{
				note = "Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 8170, itemName = "Rugged Leather", count = 120 },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1455, x = 41.98, y = 33.37 },
					{ t = "goto", text = "Enter the building", map = 1455, x = 40.36, y = 35.48 },
					{ t = "buy", item = 2325, itemName = "Black Dye", count = 10, map = 1455, x = 39.62, y = 34.47, f = "e" },
					{ t = "buy", item = 14341, itemName = "Rune Thread", count = 10, map = 1455, x = 39.62, y = 34.47, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 300, skill = "Leatherworking" },
				},
			},
		},
	})
end

