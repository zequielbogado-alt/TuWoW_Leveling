-- TuWoW_Leveling — Guides/Professions_23.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-cooking-fishing-1-300",
		pack = "guides",
		title = "Cooking + Fishing (1-300)",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1412,
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
					{ t = "buy", item = 6256, itemName = "Fishing Pole", map = 1412, x = 46.67, y = 59.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 6529, itemName = "Shiny Bauble", count = 10, map = 1412, x = 46.67, y = 59.13, f = "e" },
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
				goals = {
					{ t = "skill", level = 150, skill = "Fishing" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1412, x = 45.68, y = 62.16 },
					{ t = "skill", level = 75, skill = "Cooking" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the building", map = 1412, x = 45.68, y = 62.16 },
					{ t = "buy", item = 6325, itemName = "Recipe: Brilliant Smallfish", map = 1412, x = 47.51, y = 55.06, f = "e" },
					{ t = "use", item = 6325, itemName = "Recipe: Brilliant Smallfish" },
					{ t = "goto", text = "Train Brilliant Smallfish", map = 1412, x = 46.67, y = 59.13 },
				},
			},
			{
				note = "Save this for later.",
				goals = {
					{ t = "buy", item = 6328, itemName = "Recipe: Longjaw Mud Snapper", map = 1412, x = 46.67, y = 59.13, f = "e" },
				},
			},
			{
				note = "Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "use", item = 6529, itemName = "Shiny Bauble" },
					{ t = "skill", level = 130, skill = "Fishing" },
					{ t = "collect", item = 6291, itemName = "Raw Brilliant Smallfish", count = 55, map = 1456, x = 41.47, y = 57.15, f = "e" },
				},
			},
			{
				label = "Collect_Raw_Longjaw_Mud_Snapper_",
				goals = {
					{ t = "collect", item = 6289, itemName = "Raw Longjaw Mud Snapper", count = 60, map = 1456, x = 41.47, y = 57.15, f = "e" },
				},
			},
			{
				note = "Save this for later.",
				goals = {
					{ t = "buy", item = 6330, itemName = "Recipe: Bristle Whisker Catfish", map = 1456, x = 50.99, y = 52.45, f = "e" },
				},
			},
			{
				note = "Stand next to the Boiling Cauldron.",
				goals = {
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
				note = "You must be at least level 10 to train Journeyman professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 150, skill = "Cooking" },
				},
			},
			{
				note = "Stand next to the Boiling Cauldron.",
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
					{ t = "goto", text = "Enter the building", map = 1442, x = 46.47, y = 59.31 },
					{ t = "buy", item = 4471, itemName = "Flint and Tinder", map = 1442, x = 45.88, y = 58.66, f = "e" },
					{ t = "buy", item = 4470, itemName = "Simple Wood", count = 10, map = 1442, x = 45.88, y = 58.66, f = "e" },
				},
			},
			{
				note = "Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "skill", level = 205, skill = "Fishing" },
					{ t = "collect", item = 6308, itemName = "Raw Bristle Whisker Catfish", count = 150, map = 1442, x = 46.34, y = 61.25, f = "e" },
				},
			},
			{
				note = "Use the \"Basic Campfire\" skill in your spell book. Stand next to the Basic Campfire.",
				goals = {
					{ t = "skill", level = 125, skill = "Cooking" },
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
					{ t = "goto", text = "Enter the building", map = 1443, x = 24.54, y = 68.64 },
					{ t = "buy", item = 8932, itemName = "Alterac Swiss", count = 20, map = 1443, x = 24.09, y = 68.21, f = "e" },
				},
			},
			{
				note = "Save any Raw Mithril Head Trout you catch. Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
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
				note = "Save any Raw Mithril Head Trout you catch. Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1445, x = 53.42, y = 63.96 },
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "skill", level = 255, skill = "Fishing" },
					{ t = "collect", item = 8365, itemName = "Raw Mithril Head Trout", count = 60, map = 1445, x = 38.08, y = 31.99, f = "e" },
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
					{ t = "goto", text = "learn Spotted Yellowtail##18238", map = 1446, x = 66.64, y = 22.08 },
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
					{ t = "goto", text = "Enter the building", map = 1444, x = 74.69, y = 43.0 },
					{ t = "buy", item = 6532, itemName = "Bright Baubles", count = 20, map = 1444, x = 74.49, y = 42.73, f = "e" },
				},
			},
			{
				note = "Use it on your Fishing Pole. These will allow you to catch fish easier. Try to keep one of these active whenever you are fishing.",
				goals = {
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "skill", level = 300, skill = "Fishing" },
					{ t = "collect", item = 8365, itemName = "Raw Mithril Head Trout", count = 20, map = 1444, x = 75.65, y = 43.89, f = "e" },
				},
			},
			{
				label = "Collect_Raw_Redgill",
				along = true,
				note = "Use it on your Fishing Pole. notinsticky These will allow you to catch fish easier. notinsticky Try to keep one of these active whenever you are fishing. notinsticky",
				goals = {
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "collect", item = 13758, itemName = "Raw Redgill", count = 50, map = 1444, x = 75.65, y = 43.89, f = "e" },
				},
			},
			{
				label = "Collect_Raw_Sunscale_Salmon_Nightfin_Snapper",
				along = true,
				note = "Use it on your Fishing Pole. notinsticky These will allow you to catch fish easier. notinsticky Try to keep one of these active whenever you are fishing. notinsticky Depending on the server time when you are fishing, you will likely find one of these fish much easier. Just collect the fish you find faster, you don't need both.",
				goals = {
					{ t = "use", item = 6532, itemName = "Bright Baubles" },
					{ t = "collect", item = 13759, itemName = "Raw Nightfin Snapper", count = 35, map = 1444, x = 75.65, y = 43.89, f = "e" },
					{ t = "collect", item = 13760, itemName = "Raw Sunscale Salmon", count = 35, map = 1444, x = 75.65, y = 43.89, f = "e" },
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
		id = "zygor/professions/h-chunk-of-boar-meat",
		pack = "guides",
		title = "Chunk of Boar Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 769, itemName = "Chunk of Boar Meat" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-small-egg",
		pack = "guides",
		title = "Small Egg",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
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
		id = "zygor/professions/h-stringy-wolf-meat",
		pack = "guides",
		title = "Stringy Wolf Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
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
		id = "zygor/professions/h-meaty-bat-wing",
		pack = "guides",
		title = "Meaty Bat Wing",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 12223, itemName = "Meaty Bat Wing" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-scorpid-stinger",
		pack = "guides",
		title = "Scorpid Stinger",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 5466, itemName = "Scorpid Stinger" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-coyote-meat",
		pack = "guides",
		title = "Coyote Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
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
		id = "zygor/professions/h-strider-meat",
		pack = "guides",
		title = "Strider Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
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
		id = "zygor/professions/h-kodo-meat",
		pack = "guides",
		title = "Kodo Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
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
		id = "zygor/professions/h-bear-meat",
		pack = "guides",
		title = "Bear Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
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
		id = "zygor/professions/h-crawler-meat",
		pack = "guides",
		title = "Crawler Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				label = "Path_One",
				goals = {
					{ t = "collect", item = 2674, itemName = "Crawler Meat" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 2674, itemName = "Crawler Meat" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-crawler-claw",
		pack = "guides",
		title = "Crawler Claw",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				label = "Path_One",
				goals = {
					{ t = "collect", item = 2675, itemName = "Crawler Claw" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 2675, itemName = "Crawler Claw" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-clam-meat",
		pack = "guides",
		title = "Clam Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1440,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 5523, itemName = "Small Barnacled Clam" },
					{ t = "use", item = 5523, itemName = "Small Barnacled Clam" },
					{ t = "collect", item = 5503, itemName = "Clam Meat", map = 1440, x = 11.51, y = 28.67, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-murloc-fin",
		pack = "guides",
		title = "Murloc Fin",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 1468, itemName = "Murloc Fin" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-big-bear-meat",
		pack = "guides",
		title = "Big Bear Meat",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 3730, itemName = "Big Bear Meat" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-raptor-egg",
		pack = "guides",
		title = "Raptor Egg",
		category = "Professions",
		folder = "Cooking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				label = "Path_One",
				goals = {
					{ t = "collect", item = 3685, itemName = "Raptor Egg" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 3685, itemName = "Raptor Egg" },
				},
			},
		},
	})
end

