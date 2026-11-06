-- TuWoW_Leveling — Guides/Professions_22.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-blacksmithing-1-300-part-2",
		pack = "guides",
		title = "Blacksmithing (1-300) (Parte 2/2)",
		category = "Professions",
		folder = "Blacksmithing",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 3859, itemName = "Steel Bar", count = 140 },
				},
			},
			{
				label = "Collect_Solid_Grinding_Stone_235",
				along = true,
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 7966, itemName = "Solid Grinding Stone", count = 10 },
				},
			},
			{
				note = "Stand next to an anvil. If you intend to choose the Armorsmith specialization, keep 4 of these.",
				goals = {
					{ t = "skill", level = 235, skill = "Blacksmithing" },
				},
			},
			{
				note = "Purchase this from the auction house.",
				goals = {
					{ t = "collect", item = 7989, itemName = "Plans: Mithril Spurs" },
				},
			},
			{
				goals = {
					{ t = "use", item = 7989, itemName = "Plans: Mithril Spurs" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 3860, itemName = "Mithril Bar", count = 80 },
				},
			},
			{
				label = "Collect_Solid_Grinding_Stone_250",
				along = true,
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 7966, itemName = "Solid Grinding Stone", count = 60 },
				},
			},
			{
				note = "Stand next to an anvil. You may need to create a few more or less of these. Each addtional Mithril Spur requires four Mithril Bars and three Solid Grinding Stones. Solid Grinding Stones require four Solid Stone.",
				goals = {
					{ t = "skill", level = 250, skill = "Blacksmithing" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Dense Sharpening Stone", map = 1434, x = 28.99, y = 75.55 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 12365, itemName = "Dense Stone", count = 20 },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each addtional Dense Sharpening Stone requires one Dense Stone.",
				goals = {
					{ t = "skill", level = 260, skill = "Blacksmithing" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 3860, itemName = "Mithril Bar", count = 80 },
				},
			},
			{
				label = "Collect_Solid_Grinding_Stone_270",
				along = true,
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 7966, itemName = "Solid Grinding Stone", count = 60 },
				},
			},
			{
				note = "Stand next to an anvil. You may need to create a few more or less of these. Each addtional Mithril Spur requires four Mithril Bars and three Solid Grinding Stones. Solid Grinding Stones require four Solid Stone.",
				goals = {
					{ t = "skill", level = 270, skill = "Blacksmithing" },
				},
			},
			{
				note = "You must be at least this level before you can accept the next quests. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 50 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Create them with Mining or purchase them from the auction house. Create them with Mining. You will need 20 for a quest, and at least 520 for the the next recipe.",
				goals = {
					{ t = "collect", item = 12359, itemName = "Thorium Bar", count = 560 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7652, title = "A Blue Light Bargain", npc = 14567, npcName = "Derotain Mudsipper", map = 1446, x = 51.38, y = 28.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7655, title = "Imperial Plate Bracer", npc = 14567, npcName = "Derotain Mudsipper", map = 1446, x = 51.38, y = 28.67, f = "e" },
				},
			},
			{
				note = "You collected these in a previous step.",
				goals = {
					{ t = "collect", quest = 7655, item = 12359, itemName = "Thorium Bar", count = 20, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7655, title = "Imperial Plate Bracer", npc = 14567, npcName = "Derotain Mudsipper", map = 1446, x = 51.38, y = 28.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 12690, itemName = "Plans: Imperial Plate Bracers" },
				},
			},
			{
				note = "You collected these in a previous step.",
				goals = {
					{ t = "collect", item = 12359, itemName = "Thorium Bar", count = 520 },
				},
			},
			{
				label = "Collect_Star_Ruby_295",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 7910, itemName = "Star Ruby", count = 26 },
				},
			},
			{
				note = "Stand next to an anvil. You may need to create a few more or less of these. Each additional Imperial Plate Bracer requires twenty Thorium Bars and one Star Ruby.",
				goals = {
					{ t = "skill", level = 295, skill = "Blacksmithing" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Create them with Mining or purchase them from the auction house. Create them with Mining. You will need 40 for a quest, and at least 170 for the the next recipe.",
				goals = {
					{ t = "collect", item = 12359, itemName = "Thorium Bar", count = 210 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7654, title = "Imperial Plate Boots", npc = 14567, npcName = "Derotain Mudsipper", map = 1446, x = 51.38, y = 28.67, f = "e" },
				},
			},
			{
				note = "You collected these in a previous step.",
				goals = {
					{ t = "collect", quest = 7654, item = 12359, itemName = "Thorium Bar", count = 40, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7654, title = "Imperial Plate Boots", npc = 14567, npcName = "Derotain Mudsipper", map = 1446, x = 51.38, y = 28.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 12700, itemName = "Plans: Imperial Plate Boots" },
				},
			},
			{
				note = "You collected these in a previous step.",
				goals = {
					{ t = "collect", item = 12359, itemName = "Thorium Bar", count = 170 },
				},
			},
			{
				label = "Collect_Star_Ruby_300",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 7910, itemName = "Star Ruby", count = 5 },
				},
			},
			{
				label = "Collect_Aquamarine_300",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 7909, itemName = "Aquamarine", count = 5 },
				},
			},
			{
				note = "Stand next to an anvil. You may need to create a few more or less of these. Each additional Imperial Plate Boots requires thirty four Thorium Bars, one Aquamarine and one Star Ruby.",
				goals = {
					{ t = "skill", level = 300, skill = "Blacksmithing" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-cooking-1-300",
		pack = "guides",
		title = "Cooking (1-300)",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "You must be at least level 5 before you can learn professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 5 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.34, y = 56.91 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 58.14, y = 53.56 },
					{ t = "skill", level = 75, skill = "Cooking" },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 769, itemName = "Chunk of Boar Meat", count = 55 },
				},
			},
			{
				note = "Stand next to the Mighty Blaze. Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.34, y = 56.91 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 58.14, y = 53.56 },
					{ t = "skill", level = 50, skill = "Cooking" },
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
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.34, y = 56.91 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 58.14, y = 53.56 },
					{ t = "skill", level = 150, skill = "Cooking" },
				},
			},
			{
				note = "Downstairs inside the crypt.",
				goals = {
					{ t = "goto", text = "Run down the stairs", map = 1421, x = 43.09, y = 41.39 },
					{ t = "buy", item = 6892, itemName = "Recipe: Smoked Bear Meat", map = 1421, x = 43.22, y = 40.66, f = "e" },
					{ t = "use", item = 6892, itemName = "Recipe: Smoked Bear Meat" },
					{ t = "goto", text = "Train Smoked Bear Meat", map = 1421, x = 43.22, y = 40.66 },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 3173, itemName = "Bear Meat", count = 30 },
				},
			},
			{
				note = "Stand next to the Mighty Blaze. Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.34, y = 56.91 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 58.14, y = 53.56 },
					{ t = "skill", level = 80, skill = "Cooking" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Boiled Clams", map = 1454, x = 57.4, y = 53.96 },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 5503, itemName = "Clam Meat", count = 40 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.34, y = 56.91 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 58.14, y = 53.56 },
					{ t = "buy", item = 159, itemName = "Refreshing Spring Water", count = 40, map = 1454, x = 57.57, y = 52.9, f = "e" },
				},
			},
			{
				note = "Stand next to the Mighty Blaze. Inside the building.",
				goals = {
					{ t = "skill", level = 110, skill = "Cooking" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Crab Cake", map = 1454, x = 57.4, y = 53.96 },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 2674, itemName = "Crawler Meat", count = 30 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.34, y = 56.91 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 58.14, y = 53.56 },
					{ t = "buy", item = 2678, itemName = "Mild Spices", count = 30, map = 1454, x = 57.57, y = 52.9, f = "e" },
				},
			},
			{
				note = "Stand next to the Mighty Blaze. Inside the building.",
				goals = {
					{ t = "skill", level = 130, skill = "Cooking" },
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
					{ t = "buy", item = 16072, itemName = "Expert Cookbook", map = 1443, x = 26.17, y = 69.65, f = "e" },
					{ t = "use", item = 16072, itemName = "Expert Cookbook" },
					{ t = "skill", level = 225, skill = "Cooking" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 3682, itemName = "Recipe: Curiously Tasty Omelet", map = 1434, x = 32.7, y = 29.2, f = "e" },
					{ t = "use", item = 3682, itemName = "Recipe: Curiously Tasty Omelet" },
					{ t = "goto", text = "Train Curiously Tasty Omelet", map = 1434, x = 32.7, y = 29.23 },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 3685, itemName = "Raptor Egg", count = 50 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.34, y = 56.91 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 58.14, y = 53.56 },
					{ t = "buy", item = 2692, itemName = "Hot Spices", count = 50, map = 1454, x = 57.57, y = 52.9, f = "e" },
				},
			},
			{
				note = "Stand next to the Mighty Blaze. Inside the building.",
				goals = {
					{ t = "skill", level = 175, skill = "Cooking" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 12228, itemName = "Recipe: Roast Raptor", map = 1434, x = 32.7, y = 29.2, f = "e" },
					{ t = "use", item = 12228, itemName = "Recipe: Roast Raptor" },
					{ t = "goto", text = "Train Roast Raptor", map = 1434, x = 32.7, y = 29.23 },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 12184, itemName = "Raptor Flesh", count = 60 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.34, y = 56.91 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 58.14, y = 53.56 },
					{ t = "buy", item = 2692, itemName = "Hot Spices", count = 60, map = 1454, x = 57.57, y = 52.9, f = "e" },
				},
			},
			{
				note = "Stand next to the Mighty Blaze. Inside the building.",
				goals = {
					{ t = "skill", level = 225, skill = "Cooking" },
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
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.34, y = 56.91 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 58.14, y = 53.56 },
					{ t = "accept", quest = 6611, title = "To Gadgetzan You Go!", npc = 3399, npcName = "Zamja", map = 1454, x = 57.4, y = 53.96, f = "e" },
				},
			},
			{
				note = "Inside the building. It may be cheaper on the Auction House.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1441, x = 45.94, y = 51.07 },
					{ t = "buy", item = 8932, itemName = "Alterac Swiss", count = 20, map = 1441, x = 46.07, y = 51.52, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1446, x = 52.38, y = 27.91 },
					{ t = "turnin", quest = 6611, title = "To Gadgetzan You Go!", npc = 8125, npcName = "Dirge Quikcleave", map = 1446, x = 52.63, y = 28.11, f = "e" },
					{ t = "accept", quest = 6610, title = "Clamlette Surprise", npc = 8125, npcName = "Dirge Quikcleave", map = 1446, x = 52.63, y = 28.11, f = "e" },
				},
			},
			{
				note = "They look like turtles. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 7973, itemName = "Big-mouth Clam", map = 1446, x = 68.1, y = 36.3, f = "e" },
					{ t = "use", item = 7973, itemName = "Big-mouth Clam" },
					{ t = "collect", quest = 6610, item = 7974, itemName = "Zesty Clam Meat", count = 10, oi = 2, map = 1446, x = 67.75, y = 22.96, f = "e" },
				},
			},
			{
				label = "Collect_12_Giant_Eggs",
				along = true,
				note = "Follow the path and kill them as you find them. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", quest = 6610, item = 12207, itemName = "Giant Egg", count = 12, oi = 1 },
				},
			},
			{
				note = "Inside the building. You will learn this automatically.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1446, x = 52.38, y = 27.91 },
					{ t = "turnin", quest = 6610, title = "Clamlette Surprise", npc = 8125, npcName = "Dirge Quikcleave", map = 1446, x = 52.63, y = 28.11, f = "e" },
					{ t = "skill", level = 300, skill = "Cooking" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1452, x = 61.32, y = 38.72 },
					{ t = "buy", item = 16110, itemName = "Recipe: Monster Omelet", map = 1452, x = 61.33, y = 39.16, f = "e" },
					{ t = "use", item = 16110, itemName = "Recipe: Monster Omelet" },
					{ t = "goto", text = "Train Monster Omelet", map = 1452, x = 61.33, y = 39.16 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Leave the building", map = 1452, x = 61.32, y = 38.72 },
					{ t = "goto", text = "Enter the building", map = 1452, x = 61.33, y = 37.36 },
					{ t = "buy", item = 3713, itemName = "Soothing Spices", count = 120, map = 1452, x = 61.2, y = 37.21, f = "e" },
				},
			},
			{
				note = "You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 12207, itemName = "Giant Egg", count = 60 },
				},
			},
			{
				note = "Stand next to the Mighty Blaze. Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.34, y = 56.91 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 58.14, y = 53.56 },
					{ t = "skill", level = 275, skill = "Cooking" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1446, x = 61.03, y = 26.14 },
					{ t = "goto", text = "Enter the building", map = 1446, x = 66.66, y = 22.2 },
					{ t = "buy", item = 13946, itemName = "Recipe: Poached Sunscale Salmon", map = 1446, x = 66.64, y = 22.08, f = "e" },
					{ t = "use", item = 13946, itemName = "Recipe: Poached Sunscale Salmon" },
					{ t = "goto", text = "Train Poached Sunscale Salmon", map = 1446, x = 66.64, y = 22.08 },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 13760, itemName = "Raw Sunscale Salmon", count = 35 },
				},
			},
			{
				note = "Stand next to the Mighty Blaze. Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.34, y = 56.91 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 58.14, y = 53.56 },
					{ t = "skill", level = 300, skill = "Cooking" },
				},
			},
		},
	})
end

