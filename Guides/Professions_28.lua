-- TuWoW_Leveling — Guides/Professions_28.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-engineering-1-300-part-2",
		pack = "guides",
		title = "Engineering (1-300) (Parte 2/2)",
		category = "Professions",
		folder = "Engineering",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1424,
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 175 Mining to collect these. Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
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
					{ t = "skill", level = 195, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 75.19, y = 24.59 },
					{ t = "goto", text = "Train Mithril Tube", map = 1454, x = 76.17, y = 25.17 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 175 Mining to collect these. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 3860, itemName = "Mithril Bar", count = 21 },
				},
			},
			{
				note = "Stand next to an anvil. You may need to create a few more or less of these. Each additional Mithril Tube requires 3 Mithril Bars. Save 6 of these if you intend to specialize in Gnomish Engineering later.",
				goals = {
					{ t = "skill", level = 200, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 75.19, y = 24.59 },
					{ t = "goto", text = "Train Unstable Trigger", map = 1454, x = 76.17, y = 25.17 },
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
				note = "Track them on your minimap with \"Find Minerals\". You will need level 175 Mining to collect these. Create them with Mining or purchase them from the auction house. Create them with Mining.",
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
					{ t = "collect", item = 10560, itemName = "Unstable Trigger", count = 20, map = 1454, x = 79.61, y = 22.95, f = "e" },
				},
			},
			{
				note = "Stand next to an anvil. Save 20 of these, you will need them later. You may need to create a few more or less of these. Each additional Unstable Trigger requires 1 Solid Blasting Powder, 1 Mithril Bar, and 1 Mageweave Cloth.",
				goals = {
					{ t = "skill", level = 216, skill = "Engineering" },
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
				note = "Track them on your minimap with \"Find Minerals\". You will need level 175 Mining to collect these. Create them with Mining or purchase them from the auction house. Create them with Mining.",
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
					{ t = "skill", level = 238, skill = "Engineering" },
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
					{ t = "skill", level = 250, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Dense Blasting Powder", map = 1446, x = 52.34, y = 27.72 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 245 Mining to collect these. Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 12365, itemName = "Dense Stone", count = 70 },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Dense Blasting Powder requires 2 Dense Stone.",
				goals = {
					{ t = "skill", level = 260, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building. This is a limited supply item that can also be purchased from the auction house. This is a limited supply item.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 75.19, y = 24.59 },
					{ t = "buy", item = 16042, itemName = "Schematic: Thorium Widget", map = 1454, x = 75.49, y = 25.36, f = "e" },
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
					{ t = "skill", level = 285, skill = "Engineering" },
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
					{ t = "skill", level = 300, skill = "Engineering" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-first-aid-1-300",
		pack = "guides",
		title = "First Aid (1-300)",
		category = "Professions",
		folder = "First Aid",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "Inside the building.",
				goals = {
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
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Heavy Linen Bandage", map = 1454, x = 34.18, y = 84.58 },
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
				note = "Inside the building.",
				goals = {
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
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Wool Bandage", map = 1454, x = 34.18, y = 84.58 },
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
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Heavy Wool Bandage", map = 1454, x = 34.18, y = 84.58 },
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
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Silk Bandage", map = 1454, x = 34.18, y = 84.58 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 16084, itemName = "Expert First Aid - Under Wraps", map = 1445, x = 36.49, y = 30.36, f = "e" },
					{ t = "use", item = 16084, itemName = "Expert First Aid - Under Wraps" },
					{ t = "skill", level = 225, skill = "First Aid" },
				},
			},
			{
				note = "Save these for later.",
				goals = {
					{ t = "buy", item = 16112, itemName = "Manual: Heavy Silk Bandage", map = 1445, x = 36.49, y = 30.36, f = "e" },
					{ t = "buy", item = 16113, itemName = "Manual: Mageweave Bandage", map = 1445, x = 36.49, y = 30.36, f = "e" },
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
					{ t = "goto", text = "Enter the building", map = 1417, x = 73.42, y = 36.65 },
					{ t = "accept", quest = 6622, title = "Triage", npc = 12920, npcName = "Doctor Gregory Victor", map = 1417, x = 73.41, y = 36.89, f = "e" },
				},
			},
			{
				note = "Use it on the injured NPC's on the rugs nearby inside the building. You must use the Triage Bandage to heal them before they die. If too many die you will fail the quest. Press \"Ctrl+V\" to show their health bars to make it easier. Try to heal them by priority, in this order: Critically Injured Badly Injured Injured Patients If you fail, just abandon the quest and try again.",
				goals = {
					{ t = "use", item = 16991, itemName = "Triage Bandage" },
					{ t = "complete", quest = 6624, title = "Triage", note = "Save #15# Patients", map = 1417, x = 73.03, y = 36.84, f = "e" },
				},
			},
			{
				note = "Inside the building. You will learn this automatically.",
				goals = {
					{ t = "turnin", quest = 6624, title = "Triage", npc = 12920, npcName = "Doctor Gregory Victor", map = 1417, x = 73.41, y = 36.89, f = "e" },
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
					{ t = "goto", text = "Train Heavy Mageweave Bandage", map = 1417, x = 73.41, y = 36.89 },
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
					{ t = "goto", text = "Train Runecloth Bandage", map = 1417, x = 73.41, y = 36.89 },
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
					{ t = "goto", text = "Train Heavy Runecloth Bandage", map = 1417, x = 73.41, y = 36.89 },
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
		id = "zygor/professions/h-fishing-1-300",
		pack = "guides",
		title = "Fishing (1-300)",
		category = "Professions",
		folder = "Fishing",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1454,
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
					{ t = "buy", item = 6256, itemName = "Fishing Pole", map = 1454, x = 69.99, y = 29.77, f = "e" },
				},
			},
			{
				note = "These will allow you to catch fish easier.",
				goals = {
					{ t = "buy", item = 6529, itemName = "Shiny Bauble", count = 10, map = 1454, x = 69.99, y = 29.77, f = "e" },
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
					{ t = "buy", item = 6365, itemName = "Strong Fishing Pole", map = 1454, x = 69.99, y = 29.77, f = "e" },
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
					{ t = "buy", item = 6530, itemName = "Nightcrawlers", count = 10, map = 1454, x = 69.99, y = 29.77, f = "e" },
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
				goals = {
					{ t = "accept", quest = 6608, title = "You Too Good.", npc = 3332, npcName = "Lumak", map = 1454, x = 69.8, y = 29.21, f = "e" },
				},
			},
			{
				note = "On a small island in the water.",
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1445, x = 52.55, y = 62.35 },
					{ t = "turnin", quest = 6608, title = "You Too Good.", npc = 12919, npcName = "Nat Pagle", map = 1445, x = 58.55, y = 60.21, f = "e" },
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
					{ t = "collect", quest = 6607, item = 16968, itemName = "Sar'theris Striker", oi = 3, map = 1443, x = 26.19, y = 75.5, f = "e" },
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
					{ t = "collect", quest = 6607, item = 16969, itemName = "Savage Coast Blue Sailfin", oi = 4, map = 1434, x = 29.41, y = 27.26, f = "e" },
				},
			},
			{
				note = "On a small island in the water. You will learn this automatically.",
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1445, x = 52.55, y = 62.35 },
					{ t = "turnin", quest = 6607, title = "Nat Pagle, Angler Extreme", npc = 12919, npcName = "Nat Pagle", map = 1445, x = 58.55, y = 60.21, f = "e" },
					{ t = "skill", level = 300, skill = "Fishing" },
				},
			},
			{
				note = "These will allow you to catch fish easier.",
				goals = {
					{ t = "buy", item = 6532, itemName = "Bright Baubles", count = 20, map = 1445, x = 69.99, y = 29.77, f = "e" },
				},
			},
			{
				note = "Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "skill", level = 300, skill = "Fishing" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-raw-brilliant-smallfish",
		pack = "guides",
		title = "Raw Brilliant Smallfish",
		category = "Professions",
		folder = "Fishing",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1412,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 6291, itemName = "Raw Brilliant Smallfish", map = 1412, x = 47.58, y = 57.12, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-raw-slitherskin-mackerel",
		pack = "guides",
		title = "Raw Slitherskin Mackerel",
		category = "Professions",
		folder = "Fishing",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1411,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 6303, itemName = "Raw Slitherskin Mackerel", map = 1411, x = 56.41, y = 10.85, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-raw-rainbow-fin-albacore",
		pack = "guides",
		title = "Raw Rainbow Fin Albacore",
		category = "Professions",
		folder = "Fishing",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1413,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 6361, itemName = "Raw Rainbow Fin Albacore", map = 1413, x = 63.19, y = 38.19, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-raw-longjaw-mud-snapper",
		pack = "guides",
		title = "Raw Longjaw Mud Snapper",
		category = "Professions",
		folder = "Fishing",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 6289, itemName = "Raw Longjaw Mud Snapper", map = 1454, x = 69.75, y = 30.12, f = "e" },
				},
			},
		},
	})
end

