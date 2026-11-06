-- TuWoW_Leveling — Guides/Professions_04.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-cooking-fishing-1-300",
		pack = "guides",
		title = "Cooking + Fishing (1-300)",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1429,
		version = 1,
		steps = {
			{
				note = "You must be at least level 5 before you can learn professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 5 },
				},
			},
			{
				note = "You need to be able to equip a fishing pole in order to fish.",
				goals = {
					{ t = "buy", item = 6256, itemName = "Fishing Pole", map = 1429, x = 41.82, y = 67.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 6529, itemName = "Shiny Bauble", count = 10, map = 1429, x = 41.82, y = 67.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Fishing" },
				},
			},
			{
				note = "Use the \"Fishing\" skill in your spell book. Equip the Fishing Pole in your bags. Save the fish you catch, to cook later. Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "use", item = 6529, itemName = "Shiny Bauble" },
					{ t = "skill", level = 75, skill = "Fishing" },
				},
			},
			{
				note = "You must be at least level 10 before you can train journeyman skills. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "skill", level = 150, skill = "Fishing" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1429, x = 42.94, y = 65.65 },
					{ t = "skill", level = 75, skill = "Cooking" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the building", map = 1429, x = 42.99, y = 65.65 },
					{ t = "buy", item = 6325, itemName = "Recipe: Brilliant Smallfish", map = 1429, x = 41.8, y = 67.2, f = "e" },
					{ t = "use", item = 6325, itemName = "Recipe: Brilliant Smallfish" },
					{ t = "goto", text = "Train Brilliant Smallfish", map = 1429, x = 41.82, y = 67.16 },
				},
			},
			{
				note = "Save this for later.",
				goals = {
					{ t = "buy", item = 6328, itemName = "Recipe: Longjaw Mud Snapper", map = 1429, x = 41.82, y = 67.16, f = "e" },
				},
			},
			{
				note = "Save this for later.",
				goals = {
					{ t = "buy", item = 6330, itemName = "Recipe: Bristle Whisker Catfish", map = 1453, x = 55.09, y = 69.76, f = "e" },
				},
			},
			{
				note = "Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "use", item = 6529, itemName = "Shiny Bauble" },
					{ t = "skill", level = 130, skill = "Fishing" },
					{ t = "collect", item = 6291, itemName = "Raw Brilliant Smallfish", count = 55, map = 1453, x = 55.25, y = 69.73, f = "e" },
				},
			},
			{
				label = "Collect_Raw_Longjaw_Mud_Snapper_",
				goals = {
					{ t = "collect", item = 6289, itemName = "Raw Longjaw Mud Snapper", count = 60, map = 1453, x = 55.25, y = 69.73, f = "e" },
				},
			},
			{
				note = "You must be at least level 10 to train Journeyman professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				note = "Stand next to the Warm Fire. Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 75.11, y = 55.29 },
					{ t = "goto", text = "Run down the stairs", map = 1453, x = 77.61, y = 53.58 },
					{ t = "skill", level = 50, skill = "Cooking" },
				},
			},
			{
				note = "You should have this from earlier in the guide.",
				goals = {
					{ t = "use", item = 6328, itemName = "Recipe: Longjaw Mud Snapper" },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "skill", level = 150, skill = "Cooking" },
				},
			},
			{
				note = "Stand next to the Warm Fire. Downstairs inside the building.",
				goals = {
					{ t = "skill", level = 100, skill = "Cooking" },
				},
			},
			{
				goals = {
					{ t = "use", item = 6330, itemName = "Recipe: Bristle Whisker Catfish" },
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
				note = "Inside the building. Save these for later.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1434, x = 28.11, y = 74.99 },
					{ t = "buy", item = 17062, itemName = "Recipe: Mithril Head Trout", map = 1434, x = 28.23, y = 74.34, f = "e" },
					{ t = "buy", item = 13941, itemName = "Recipe: Filet of Redgill", map = 1434, x = 28.23, y = 74.34, f = "e" },
				},
			},
			{
				note = "Inside the building. You need to have Flint and Tinder in your bags to be able to create Basic Campfires to cook with. You will use one of these each time you create a Basic Campfire to cook with.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1440, x = 35.64, y = 51.01 },
					{ t = "buy", item = 4471, itemName = "Flint and Tinder", map = 1440, x = 34.85, y = 50.87, f = "e" },
					{ t = "buy", item = 4470, itemName = "Simple Wood", count = 10, map = 1440, x = 34.85, y = 50.87, f = "e" },
				},
			},
			{
				note = "Inside the building. Save this for later.",
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1440, x = 51.22, y = 58.21 },
					{ t = "goto", text = "Enter the building", map = 1440, x = 50.12, y = 66.48 },
					{ t = "buy", item = 16072, itemName = "Expert Cookbook", map = 1440, x = 49.48, y = 67.09, f = "e" },
				},
			},
			{
				note = "Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "skill", level = 205, skill = "Fishing" },
					{ t = "collect", item = 6308, itemName = "Raw Bristle Whisker Catfish", count = 150, map = 1440, x = 48.9, y = 68.23, f = "e" },
				},
			},
			{
				note = "Use the \"Basic Campfire\" skill in your spell book. Stand next to the Basic Campfire.",
				goals = {
					{ t = "skill", level = 125, skill = "Cooking" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16072, itemName = "Expert Cookbook" },
					{ t = "skill", level = 225, skill = "Cooking" },
				},
			},
			{
				note = "Use the \"Basic Campfire\" skill in your spell book. Stand next to the Basic Campfire.",
				goals = {
					{ t = "skill", level = 175, skill = "Cooking" },
				},
			},
			{
				goals = {
					{ t = "use", item = 17062, itemName = "Recipe: Mithril Head Trout" },
				},
			},
			{
				note = "Inside the building. It may be cheaper on the Auction House. Save these for later.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1445, x = 65.99, y = 45.2 },
					{ t = "buy", item = 8932, itemName = "Alterac Swiss", count = 20, map = 1445, x = 66.9, y = 45.26, f = "e" },
				},
			},
			{
				note = "Save any Raw Mithril Head Trout you catch. Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "goto", text = "Leave the building", map = 1445, x = 65.99, y = 45.2 },
					{ t = "goto", text = "Cross the bridge and follow the road", map = 1445, x = 64.3, y = 45.63 },
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
				note = "Save any Raw Mithril Head Trout you catch. Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "goto", text = "Cross the water", map = 1445, x = 66.54, y = 55.09 },
					{ t = "goto", text = "Cross the bridge and follow the road", map = 1445, x = 64.3, y = 45.63 },
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "skill", level = 255, skill = "Fishing" },
					{ t = "collect", item = 8365, itemName = "Raw Mithril Head Trout", count = 60, map = 1445, x = 59.12, y = 36.84, f = "e" },
				},
			},
			{
				note = "Use the \"Basic Campfire\" skill in your spell book. Stand next to the Basic Campfire.",
				goals = {
					{ t = "skill", level = 225, skill = "Cooking" },
				},
			},
			{
				goals = {
					{ t = "use", item = 13941, itemName = "Recipe: Filet of Redgill" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1446, x = 52.38, y = 27.91 },
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
				note = "Follow the path and kill them as you find them. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", quest = 6610, item = 12207, itemName = "Giant Egg", count = 12, oi = 1 },
				},
			},
			{
				note = "Inside the building. It may be cheaper on the Auction House.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 66.07, y = 74.1 },
					{ t = "buy", item = 8932, itemName = "Alterac Swiss", count = 20, map = 1453, x = 66.36, y = 73.51, f = "e" },
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
					{ t = "goto", text = "Follow the path", map = 1446, x = 61.03, y = 26.14 },
					{ t = "goto", text = "Enter the building", map = 1446, x = 66.66, y = 22.2 },
					{ t = "buy", item = 13939, itemName = "Recipe: Spotted Yellowtail", map = 1446, x = 66.64, y = 22.08, f = "e" },
					{ t = "use", item = 13939, itemName = "Recipe: Spotted Yellowtail" },
					{ t = "goto", text = "Train Spotted Yellowtail", map = 1446, x = 66.64, y = 22.08 },
				},
			},
			{
				note = "Inside the building. Buy these recipes and save them for later.",
				goals = {
					{ t = "buy", item = 13945, itemName = "Recipe: Nightfin Soup", map = 1446, x = 66.64, y = 22.08, f = "e" },
					{ t = "buy", item = 13946, itemName = "Recipe: Poached Sunscale Salmon", map = 1446, x = 66.64, y = 22.08, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 6532, itemName = "Bright Baubles", count = 20, map = 1444, x = 31.3, y = 43.46, f = "e" },
				},
			},
			{
				note = "Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "skill", level = 300, skill = "Fishing" },
					{ t = "collect", item = 8365, itemName = "Raw Mithril Head Trout", count = 20, map = 1444, x = 62.39, y = 52.49, f = "e" },
				},
			},
			{
				label = "Collect_Raw_Redgill",
				along = true,
				note = "Use it on your Fishing Pole. notinsticky These will allow you to catch fish easier. notinsticky Try to keep one of these active whenever you are fishing. notinsticky",
				goals = {
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "collect", item = 13758, itemName = "Raw Redgill", count = 50, map = 1444, x = 62.39, y = 52.49, f = "e" },
				},
			},
			{
				label = "Collect_Raw_Sunscale_Salmon_Nightfin_Snapper",
				along = true,
				note = "Use it on your Fishing Pole. notinsticky These will allow you to catch fish easier. notinsticky Try to keep one of these active whenever you are fishing. notinsticky Depending on the server time when you are fishing, you will likely find one of these fish much easier. Just collect the fish you find faster, you don't need both.",
				goals = {
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "collect", item = 13759, itemName = "Raw Nightfin Snapper", count = 35, map = 1444, x = 62.39, y = 52.49, f = "e" },
					{ t = "collect", item = 13760, itemName = "Raw Sunscale Salmon", count = 35, map = 1444, x = 62.39, y = 52.49, f = "e" },
				},
			},
			{
				note = "Use the \"Basic Campfire\" skill in your spell book. Stand next to the Basic Campfire.",
				goals = {
					{ t = "skill", level = 235, skill = "Cooking" },
				},
			},
			{
				note = "Use the \"Basic Campfire\" skill in your spell book. Stand next to the Basic Campfire.",
				goals = {
					{ t = "skill", level = 275, skill = "Cooking" },
				},
			},
			{
				goals = {
					{ t = "use", item = 13945, itemName = "Recipe: Nightfin Soup" },
				},
			},
			{
				goals = {
					{ t = "use", item = 13946, itemName = "Recipe: Poached Sunscale Salmon" },
				},
			},
			{
				note = "Use the \"Basic Campfire\" skill in your spell book. Stand next to the Basic Campfire. The recipe you use will depend on which fish you caught easier in an earlier step. Cook whichever of these fish you have.",
				goals = {
					{ t = "skill", level = 300, skill = "Cooking" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-chunk-of-boar-meat",
		pack = "guides",
		title = "Chunk of Boar Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1429,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 769, itemName = "Chunk of Boar Meat", map = 1429, x = 41.81, y = 87.22, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-small-egg",
		pack = "guides",
		title = "Small Egg",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 6889, itemName = "Small Egg" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-stringy-wolf-meat",
		pack = "guides",
		title = "Stringy Wolf Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 2672, itemName = "Stringy Wolf Meat" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-small-spider-leg",
		pack = "guides",
		title = "Small Spider Leg",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1438,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 5465, itemName = "Small Spider Leg", map = 1438, x = 60.0, y = 59.4, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-crag-boar-rib",
		pack = "guides",
		title = "Crag Boar Rib",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 2886, itemName = "Crag Boar Rib" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-spider-ichor",
		pack = "guides",
		title = "Spider Ichor",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				label = "Path_One",
				goals = {
					{ t = "collect", item = 3174, itemName = "Spider Ichor" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 3174, itemName = "Spider Ichor" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-coyote-meat",
		pack = "guides",
		title = "Coyote Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				label = "Path_One",
				goals = {
					{ t = "collect", item = 2673, itemName = "Coyote Meat" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 2673, itemName = "Coyote Meat" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-boar-intestines",
		pack = "guides",
		title = "Boar Intestines",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				label = "Path_One",
				goals = {
					{ t = "collect", item = 3172, itemName = "Boar Intestines" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 3172, itemName = "Boar Intestines" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-stringy-vulture-meat",
		pack = "guides",
		title = "Stringy Vulture Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				label = "Path_One",
				goals = {
					{ t = "collect", item = 729, itemName = "Stringy Vulture Meat" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 729, itemName = "Stringy Vulture Meat" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-strider-meat",
		pack = "guides",
		title = "Strider Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 5469, itemName = "Strider Meat" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-kodo-meat",
		pack = "guides",
		title = "Kodo Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Thunderheads will not drop this item.",
				goals = {
					{ t = "collect", item = 5467, itemName = "Kodo Meat" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-murloc-eye",
		pack = "guides",
		title = "Murloc Eye",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1436,
		version = 1,
		steps = {
			{
				note = "They spawn all along the coast, so you can move down to get more.",
				goals = {
					{ t = "collect", item = 730, itemName = "Murloc Eye", map = 1436, x = 55.73, y = 9.49, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-bear-meat",
		pack = "guides",
		title = "Bear Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 3173, itemName = "Bear Meat" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-goretusk-snout",
		pack = "guides",
		title = "Goretusk Snout",
		category = "Professions",
		folder = "Cooking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 731, itemName = "Goretusk Snout" },
				},
			},
		},
	})
end

