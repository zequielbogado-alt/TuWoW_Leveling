-- TuWoW_Leveling — Guides/Professions_10.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-engineering-1-300-part-2",
		pack = "guides",
		title = "Engineering (1-300) (Parte 2/2)",
		category = "Professions",
		folder = "Engineering",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1424,
		version = 1,
		steps = {
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Gyromatic Micro-Adjustor", map = 1455, x = 68.46, y = 43.56 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Buy them from a General Trade Supplier. Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2772, itemName = "Iron Ore", count = 4 },
					{ t = "buy", item = 3857, itemName = "Coal", count = 4 },
					{ t = "collect", item = 3859, itemName = "Steel Bar", count = 4 },
				},
			},
			{
				note = "Stand next to an anvil. Save this, you will need it later.",
				goals = {
					{ t = "collect", item = 10498, itemName = "Gyromatic Micro-Adjustor", map = 1455, x = 49.83, y = 44.12, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Solid Blasting Powder", map = 1455, x = 68.46, y = 43.56 },
				},
			},
			{
				note = "Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 7912, itemName = "Solid Stone", count = 120 },
				},
			},
			{
				note = "Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 10505, itemName = "Solid Blasting Powder", count = 60 },
				},
			},
			{
				note = "Save 60 of these, you will need them later. You may need to create a few more of these. Each additional Solid Blasting Powder requires 2 Solid Stone.",
				goals = {
					{ t = "skill", level = 210, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Mithril Tube", map = 1455, x = 68.46, y = 43.56 },
				},
			},
			{
				note = "Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 3860, itemName = "Mithril Bar", count = 21 },
				},
			},
			{
				note = "Stand next to an anvil. You may need to create a few more or less of these. Each additional Mithril Tube requires 3 Mithril Bars. Save 6 of these if you intend to specialize in Gnomish Engineering later.",
				goals = {
					{ t = "skill", level = 215, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Unstable Trigger", map = 1455, x = 68.46, y = 43.56 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 10505, itemName = "Solid Blasting Powder", count = 20 },
				},
			},
			{
				label = "Collect_Mithril_Bar_216",
				along = true,
				note = "Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 3860, itemName = "Mithril Bar", count = 20 },
				},
			},
			{
				label = "Collect_Mageweave_Cloth_216",
				along = true,
				note = "Farm them from level 38-50 humanoid mobs or purchase them from the auction house. Farm them from level 38-50 humanoid mobs.",
				goals = {
					{ t = "collect", item = 4338, itemName = "Mageweave Cloth", count = 20 },
				},
			},
			{
				note = "Stand next to an anvil. Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 10560, itemName = "Unstable Trigger", count = 20, map = 1455, x = 49.83, y = 44.12, f = "e" },
				},
			},
			{
				note = "Stand next to an anvil. Save 20 of these, you will need them later. You may need to create a few more or less of these. Each additional Unstable Trigger requires 1 Solid Blasting Powder, 1 Mithril Bar, and 1 Mageweave Cloth.",
				goals = {
					{ t = "skill", level = 231, skill = "Engineering" },
				},
			},
			{
				note = "You must be at least level 35 to train Artisan professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 35 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 300, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Mithril Casing", map = 1446, x = 52.34, y = 27.72 },
				},
			},
			{
				note = "Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 3860, itemName = "Mithril Bar", count = 120 },
				},
			},
			{
				note = "Stand next to an anvil. Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 10561, itemName = "Mithril Casing", count = 40, map = 1446, x = 51.4, y = 28.72, f = "e" },
				},
			},
			{
				note = "Stand next to an anvil. Save 40 of these, you will need them later. You may need to create a few more or less of these. Each additional Mithril Casing requires 3 Mithril Bars.",
				goals = {
					{ t = "skill", level = 253, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Hi-Explosive Bomb", map = 1446, x = 52.34, y = 27.72 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 10505, itemName = "Solid Blasting Powder", count = 40 },
				},
			},
			{
				label = "Collect_Unstable_Trigger_250",
				along = true,
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 10560, itemName = "Unstable Trigger", count = 20 },
				},
			},
			{
				label = "Collect_Mithril_Casing_250",
				along = true,
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 10561, itemName = "Mithril Casing", count = 40 },
				},
			},
			{
				note = "Stand next to an anvil. You may need to create a few more or less of these. Each additional Hi-Explosive Bomb requires 2 Solid Blasting Powders, 1 Unstable Trigger, and 1 Mithril Casing.",
				goals = {
					{ t = "skill", level = 265, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Dense Blasting Powder", map = 1446, x = 52.34, y = 27.72 },
				},
			},
			{
				note = "Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 12365, itemName = "Dense Stone", count = 70 },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Dense Blasting Powder requires 2 Dense Stone.",
				goals = {
					{ t = "skill", level = 275, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building. This is a limited supply item that can also be purchased from the auction house. This is a limited supply item.",
				goals = {
					{ t = "buy", item = 16042, itemName = "Schematic: Thorium Widget", map = 1455, x = 67.84, y = 42.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16042, itemName = "Schematic: Thorium Widget" },
				},
			},
			{
				note = "Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 12359, itemName = "Thorium Bar", count = 105 },
				},
			},
			{
				label = "Collect_Runecloth_285",
				along = true,
				note = "Farm them from level 50+ humanoid mobs or purchase them from the auction house. Farm them from level 50+ humanoid mobs.",
				goals = {
					{ t = "collect", item = 14047, itemName = "Runecloth", count = 35 },
				},
			},
			{
				note = "Stand next to an anvil. You may need to create a few more or less of these. Each additional Thorium Widget requires 3 Thorium Bar and 2 Runecloth.",
				goals = {
					{ t = "skill", level = 300, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building. This is a limited supply item that can also be purchased from the auction house. This is a limited supply item.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1452, x = 60.56, y = 38.2 },
					{ t = "goto", text = "Enter the building", map = 1452, x = 60.86, y = 38.51 },
					{ t = "buy", item = 16047, itemName = "Schematic: Thorium Tube", map = 1452, x = 60.81, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16047, itemName = "Schematic: Thorium Tube" },
				},
			},
			{
				note = "Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 12359, itemName = "Thorium Bar", count = 120 },
				},
			},
			{
				note = "Stand next to an anvil. You may need to create a few more or less of these. Each additional Thorium Tube requires 6 Thorium Bars.",
				goals = {
					{ t = "skill", level = 315, skill = "Engineering" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-first-aid-1-300",
		pack = "guides",
		title = "First Aid (1-300)",
		category = "Professions",
		folder = "First Aid",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1455,
		version = 1,
		steps = {
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 55.18, y = 57.31 },
					{ t = "skill", level = 75, skill = "First Aid" },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 2589, itemName = "Linen Cloth", count = 50 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 40, skill = "First Aid" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 55.18, y = 57.31 },
					{ t = "goto", text = "Train Heavy Linen Bandage", map = 1455, x = 55.09, y = 58.26 },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 2589, itemName = "Linen Cloth", count = 80 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 70, skill = "First Aid" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 55.18, y = 57.31 },
					{ t = "skill", level = 150, skill = "First Aid" },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 2589, itemName = "Linen Cloth", count = 50 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 80, skill = "First Aid" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 55.18, y = 57.31 },
					{ t = "goto", text = "Train Wool Bandage", map = 1455, x = 55.09, y = 58.26 },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 2592, itemName = "Wool Cloth", count = 60 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 115, skill = "First Aid" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 55.18, y = 57.31 },
					{ t = "goto", text = "Train Heavy Wool Bandage", map = 1455, x = 55.09, y = 58.26 },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 2592, itemName = "Wool Cloth", count = 110 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 150, skill = "First Aid" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 55.18, y = 57.31 },
					{ t = "goto", text = "Train Silk Bandage", map = 1455, x = 55.09, y = 58.26 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1417, x = 26.07, y = 55.71 },
					{ t = "goto", text = "Continue following the path", map = 1417, x = 25.54, y = 60.06 },
					{ t = "goto", text = "Continue following the path", map = 1417, x = 23.02, y = 59.86 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1417, x = 25.62, y = 58.14 },
					{ t = "buy", item = 16084, itemName = "Expert First Aid - Under Wraps", map = 1417, x = 26.97, y = 58.83, f = "e" },
					{ t = "use", item = 16084, itemName = "Expert First Aid - Under Wraps" },
					{ t = "skill", level = 225, skill = "First Aid" },
				},
			},
			{
				note = "Save these for later.",
				goals = {
					{ t = "buy", item = 16112, itemName = "Manual: Heavy Silk Bandage", map = 1417, x = 26.97, y = 58.83, f = "e" },
					{ t = "buy", item = 16113, itemName = "Manual: Mageweave Bandage", map = 1417, x = 26.97, y = 58.83, f = "e" },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 4306, itemName = "Silk Cloth", count = 50 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 180, skill = "First Aid" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16112, itemName = "Manual: Heavy Silk Bandage" },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 4306, itemName = "Silk Cloth", count = 90 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 210, skill = "First Aid" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16113, itemName = "Manual: Mageweave Bandage" },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 4338, itemName = "Mageweave Cloth", count = 30 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 225, skill = "First Aid" },
				},
			},
			{
				note = "You must be at least level 35 to train Artisan professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 35 },
				},
			},
			{
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 4338, itemName = "Mageweave Cloth", count = 96 },
				},
			},
			{
				label = "Collect_Runecloth_",
				goals = {
					{ t = "collect", item = 14047, itemName = "Runecloth", count = 85 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1445, x = 67.8, y = 47.66 },
					{ t = "accept", quest = 6624, title = "Triage", npc = 12939, npcName = "Doctor Gustaf VanHowzen", map = 1445, x = 67.76, y = 48.97, f = "e" },
				},
			},
			{
				note = "Use it on the injured NPC's on the beds nearby inside the building. You must use the Triage Bandage to heal them before they die. If too many die you will fail the quest. Press \"Ctrl+V\" to show their health bars to make it easier. Try to heal them by priority, in this order: Critically Injured Badly Injured Injured Patients If you fail, just abandon the quest and try again.",
				goals = {
					{ t = "use", item = 16991, itemName = "Triage Bandage" },
					{ t = "complete", quest = 6624, title = "Triage", note = "Save #15# Patients", map = 1445, x = 67.76, y = 48.97, f = "e" },
				},
			},
			{
				note = "Inside the building. You will learn this automatically.",
				goals = {
					{ t = "turnin", quest = 6624, title = "Triage", npc = 12939, npcName = "Doctor Gustaf VanHowzen", map = 1445, x = 67.76, y = 48.97, f = "e" },
					{ t = "skill", level = 300, skill = "First Aid" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 240, skill = "First Aid" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Heavy Mageweave Bandage", map = 1445, x = 67.76, y = 48.97 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 260, skill = "First Aid" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Runecloth Bandage", map = 1445, x = 67.76, y = 48.97 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 290, skill = "First Aid" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Heavy Runecloth Bandage", map = 1445, x = 67.76, y = 48.97 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 300, skill = "First Aid" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-fishing-1-300",
		pack = "guides",
		title = "Fishing (1-300)",
		category = "Professions",
		folder = "Fishing",
		faction = "Alliance",
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
				goals = {
					{ t = "skill", level = 75, skill = "Fishing" },
				},
			},
			{
				note = "You need to be able to equip a fishing pole in order to fish.",
				goals = {
					{ t = "buy", item = 6256, itemName = "Fishing Pole", map = 1453, x = 55.09, y = 69.76, f = "e" },
				},
			},
			{
				note = "These will allow you to catch fish easier.",
				goals = {
					{ t = "buy", item = 6529, itemName = "Shiny Bauble", count = 10, map = 1453, x = 55.09, y = 69.76, f = "e" },
				},
			},
			{
				note = "Use the \"Fishing\" skill in your spell book. Equip the Fishing Pole in your bags. Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "use", item = 6529, itemName = "Shiny Bauble" },
					{ t = "skill", level = 55, skill = "Fishing" },
				},
			},
			{
				note = "This is a limited supply item. If she doesn't have it for sale, check the Auction House. If you can't get one, you can skip this step.",
				goals = {
					{ t = "buy", item = 6365, itemName = "Strong Fishing Pole", map = 1453, x = 55.09, y = 69.76, f = "e" },
				},
			},
			{
				note = "Equip the \"Strong Fishing Pole\", if you were able to get one. Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "use", item = 6529, itemName = "Shiny Bauble" },
					{ t = "skill", level = 75, skill = "Fishing" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 150, skill = "Fishing" },
				},
			},
			{
				note = "These will allow you to catch fish easier.",
				goals = {
					{ t = "buy", item = 6530, itemName = "Nightcrawlers", count = 10, map = 1453, x = 55.09, y = 69.76, f = "e" },
				},
			},
			{
				note = "Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "use", item = 6530, itemName = "Nightcrawlers" },
					{ t = "skill", level = 150, skill = "Fishing" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run down the ramp", map = 1434, x = 28.04, y = 76.53 },
					{ t = "goto", text = "Enter the building", map = 1434, x = 27.47, y = 77.09 },
					{ t = "buy", item = 16083, itemName = "Expert Fishing - The Bass and You", map = 1434, x = 27.42, y = 77.16, f = "e" },
					{ t = "use", item = 16083, itemName = "Expert Fishing - The Bass and You" },
					{ t = "skill", level = 225, skill = "Fishing" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 6532, itemName = "Bright Baubles", count = 20, map = 1434, x = 27.42, y = 77.16, f = "e" },
				},
			},
			{
				note = "Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "skill", level = 225, skill = "Fishing" },
				},
			},
			{
				note = "You must be at least this level before you can accept the quest in the next step. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 35 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 47.6, y = 7.35 },
					{ t = "accept", quest = 6609, title = "I Got Nothin' Left!", npc = 5161, npcName = "Grimnur Stonebrand", map = 1455, x = 48.07, y = 6.91, f = "e" },
				},
			},
			{
				note = "On a small island in the water.",
				goals = {
					{ t = "goto", text = "Cross the water", map = 1445, x = 66.54, y = 55.09 },
					{ t = "turnin", quest = 6609, title = "I Got Nothin' Left!", npc = 12919, npcName = "Nat Pagle", map = 1445, x = 58.55, y = 60.21, f = "e" },
					{ t = "accept", quest = 6607, title = "Nat Pagle, Angler Extreme", npc = 12919, npcName = "Nat Pagle", map = 1445, x = 58.55, y = 60.21, f = "e" },
				},
			},
			{
				note = "Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing. You will eventually catch one.",
				goals = {
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "collect", quest = 6607, item = 16967, itemName = "Feralas Ahi", oi = 1, map = 1444, x = 62.38, y = 52.5, f = "e" },
				},
			},
			{
				note = "Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing. You will eventually catch one.",
				goals = {
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "collect", quest = 6607, item = 16968, itemName = "Sar'theris Striker", oi = 3, map = 1443, x = 38.96, y = 22.7, f = "e" },
				},
			},
			{
				note = "Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing. You will eventually catch one.",
				goals = {
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "collect", quest = 6607, item = 16970, itemName = "Misty Reed Mahi Mahi", oi = 2, map = 1435, x = 90.45, y = 73.47, f = "e" },
				},
			},
			{
				note = "Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing. You will eventually catch one.",
				goals = {
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "collect", quest = 6607, item = 16969, itemName = "Savage Coast Blue Sailfin", oi = 4, map = 1434, x = 24.58, y = 65.8, f = "e" },
				},
			},
			{
				note = "On a small island in the water. You will learn this automatically.",
				goals = {
					{ t = "goto", text = "Cross the water", map = 1445, x = 66.54, y = 55.09 },
					{ t = "turnin", quest = 6607, title = "Nat Pagle, Angler Extreme", npc = 12919, npcName = "Nat Pagle", map = 1445, x = 58.55, y = 60.21, f = "e" },
					{ t = "skill", level = 300, skill = "Fishing" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 6532, itemName = "Bright Baubles", count = 20, map = 1453, x = 55.09, y = 69.76, f = "e" },
				},
			},
			{
				note = "Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1425, x = 18.57, y = 53.61 },
					{ t = "goto", text = "Continue following the path", map = 1425, x = 28.61, y = 53.02 },
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "skill", level = 300, skill = "Fishing" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-raw-brilliant-smallfish",
		pack = "guides",
		title = "Raw Brilliant Smallfish",
		category = "Professions",
		folder = "Fishing",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1429,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 6291, itemName = "Raw Brilliant Smallfish", map = 1429, x = 33.59, y = 63.52, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-raw-slitherskin-mackerel",
		pack = "guides",
		title = "Raw Slitherskin Mackerel",
		category = "Professions",
		folder = "Fishing",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1438,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 6303, itemName = "Raw Slitherskin Mackerel", map = 1438, x = 56.25, y = 93.72, f = "e" },
				},
			},
		},
	})
end

