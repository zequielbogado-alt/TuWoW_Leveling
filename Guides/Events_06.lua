-- TuWoW_Leveling — Guides/Events_06.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/events/h-yebb-neblegear-turn-ins-mulgore",
		pack = "guides",
		title = "Yebb Neblegear Turn-Ins (Mulgore)",
		category = "Events",
		folder = "Darkmoon Faire",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1413,
		version = 1,
		steps = {
			{
				note = "You can find them all over around Crossroads and to its northern area. Each turnin requires 5 Small Furry Paws and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 1 Darkmoon Faire Prize Ticket. You can turn this quest in until you reach 500 Neutral reputation.",
				goals = {
					{ t = "collect", item = 5134, itemName = "Small Furry Paw", count = 5, map = 1413, x = 50.21, y = 21.82, f = "e" },
					{ t = "accept", quest = 7899, title = "Small Furry Paws", npc = 14829, npcName = "Yebb Neblegear", map = 1412, x = 38.35, y = 46.24, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				note = "You can find them all over between Raynewood Retreat and Splintertree post. You can also find them east of Satyrn. Each turnin requires 5 Torn Bear Pelts and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 4 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 1,100 Neutral reputation.",
				goals = {
					{ t = "collect", item = 11407, itemName = "Torn Bear Pelt", count = 5, map = 1440, x = 66.01, y = 60.42, f = "e" },
					{ t = "accept", quest = 7900, title = "Torn Bear Pelts", npc = 14829, npcName = "Yebb Neblegear", map = 1412, x = 38.35, y = 46.24, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 20 },
				},
			},
			{
				note = "You can find the all over central and western Badlands. Each turnin requires 5 Soft Bushy Tails and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 8 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 1,700 Neutral reputation.",
				goals = {
					{ t = "collect", item = 4582, itemName = "Soft Bushy Tail", count = 5, map = 1418, x = 34.41, y = 65.63, f = "e" },
					{ t = "accept", quest = 7901, title = "Soft Bushy Tails", npc = 14829, npcName = "Yebb Neblegear", map = 1412, x = 38.35, y = 46.24, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 30 },
				},
			},
			{
				note = "Each turnin requires 5 Vibrant Plumes and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 12 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 2,500 Neutral reputation.",
				goals = {
					{ t = "collect", item = 5117, itemName = "Vibrant Plume", count = 5, map = 1444, x = 40.0, y = 12.61, f = "e" },
					{ t = "accept", quest = 7902, title = "Vibrant Plumes", npc = 14829, npcName = "Yebb Neblegear", map = 1412, x = 38.35, y = 46.24, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "You can find them all over central and southern Silithus.",
				goals = {
					{ t = "collect", quest = 8222, item = 19933, itemName = "Glowing Scorpid Blood", count = 10, map = 1451, x = 44.81, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8222, title = "Glowing Scorpid Blood", npc = 14829, npcName = "Yebb Neblegear", map = 1412, x = 38.35, y = 46.24, f = "e" },
				},
			},
			{
				note = "You can find them all over central and southern Silithus. From this point on, you can continue turning in Glowing Scorpid Blood. Each of these turnins will award 20 Darkmoon Faire Prize Tickets. Each turnin requires 10 Glowing Scorpid Blood and grants 100 reputation with the Darkmoon Faire.",
				goals = {
					{ t = "collect", item = 19933, itemName = "Glowing Scorpid Blood", count = 10, map = 1451, x = 44.81, y = 54.5, f = "e" },
					{ t = "accept", quest = 8223, title = "More Glowing Scorpid Blood", npc = 14829, npcName = "Yebb Neblegear", map = 1412, x = 38.35, y = 46.24, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/h-spawn-of-jubjub-mulgore",
		pack = "guides",
		title = "Spawn of Jubjub (Mulgore)",
		category = "Events",
		folder = "Darkmoon Faire",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1412,
		version = 1,
		steps = {
			{
				note = "They look like small mugs of ale on tables around the Grim Guzzler tavern in Blackrock Depths. Clicking two of them is safe but clicking more will anger the bar patrons. They can also be purchased from Plugger Spazzring in the Grim Guzzler. They can be purchased from the Auction House if you are lucky enough to find them.",
				goals = {
					{ t = "collect", quest = 7946, item = 11325, itemName = "Dark Iron Ale Mug", count = 2 },
				},
			},
			{
				note = "Place it at Morja's feet. Be sure you only use one; you will need the other one to turn in the quest. This may take a couple of minutes. This quest will be available after Jubjub appears.",
				goals = {
					{ t = "use", item = 11325, itemName = "Dark Iron Ale Mug" },
					{ t = "accept", quest = 7946, title = "Spawn of Jubjub", npc = 14871, npcName = "Morja", map = 1412, x = 36.95, y = 42.58, f = "e" },
				},
			},
			{
				note = "It will take seven days for the egg to mature enough to hatch.",
				goals = {
					{ t = "use", item = 19462, itemName = "Unhatched Jubling Egg" },
					{ t = "collect", item = 19450, itemName = "A Jubling's Tiny Home" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/h-wood-frog-mulgore",
		pack = "guides",
		title = "Wood Frog (Mulgore)",
		category = "Events",
		folder = "Darkmoon Faire",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1412,
		version = 1,
		steps = {
			{
				note = "He's a little Orc boy running fast all over the Darkmoon Faire grounds. You will have to be quick to catch him. Talking to him will stop him for a short period of time. This item costs 1 gold and has a limited quantity of 1. It respawns in approximately 20 minutes.",
				goals = {
					{ t = "buy", item = 11027, itemName = "Wood Frog Box", map = 1412, x = 37.66, y = 44.35, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/h-tree-frog-mulgore",
		pack = "guides",
		title = "Tree Frog (Mulgore)",
		category = "Events",
		folder = "Darkmoon Faire",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1412,
		version = 1,
		steps = {
			{
				note = "He's a little Orc boy running fast all over the Darkmoon Faire grounds. You will have to be quick to catch him. Talking to him will stop him for a short period of time. This item costs 1 gold.",
				goals = {
					{ t = "buy", item = 11026, itemName = "Tree Frog Box", map = 1412, x = 37.66, y = 44.35, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/h-hallows-end-quests",
		pack = "guides",
		title = "Hallow's End Quests",
		category = "Events",
		folder = "Hallow's End",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "You must be at least level 10 to be able to accept these quests. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 71.07, y = 23.87 },
					{ t = "accept", quest = 8312, title = "Hallow's End Treats for Spoops!", npc = 15309, npcName = "Spoops", map = 1454, x = 71.44, y = 22.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 54.03, y = 68.94 },
					{ t = "accept", quest = 8359, title = "Flexing for Nougat", npc = 6929, npcName = "Innkeeper Gryshka", map = 1454, x = 54.1, y = 68.4, f = "e" },
				},
			},
			{
				note = "Inside the building. Target Innkeeper Gryshka and type \"/flex\" into your chat to perform the Flex emote.",
				goals = {
					{ t = "complete", quest = 8359, title = "Flexing for Nougat", note = "Flex for Inkeeper Gryshka", map = 1454, x = 54.1, y = 68.4, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8359, title = "Flexing for Nougat", npc = 6929, npcName = "Innkeeper Gryshka", map = 1454, x = 54.1, y = 68.4, f = "e" },
					{ t = "collect", quest = 8312, item = 20493, itemName = "Orgrimmar Nougat", oi = 1, map = 1454, x = 54.1, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the road south", map = 1411, x = 46.34, y = 18.51 },
					{ t = "goto", text = "Continue following the road south", map = 1411, x = 52.58, y = 45.0 },
					{ t = "accept", quest = 8358, title = "Incoming Gumdrop", npc = 11814, npcName = "Kali Remik", map = 1411, x = 56.12, y = 74.24, f = "e" },
				},
			},
			{
				note = "Target Kali Remik and type \"/train\" into your chat to perform the Train emote.",
				goals = {
					{ t = "complete", quest = 8358, title = "Incoming Gumdrop", note = "Do the \"Train\" for Kali Remik", map = 1411, x = 56.12, y = 74.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8358, title = "Incoming Gumdrop", npc = 11814, npcName = "Kali Remik", map = 1411, x = 56.12, y = 74.24, f = "e" },
					{ t = "collect", quest = 8312, item = 20495, itemName = "Darkspear Gumdrop", oi = 2, map = 1411, x = 56.1, y = 74.2, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1456, x = 44.95, y = 62.12 },
					{ t = "accept", quest = 8360, title = "Dancing for Marzipan", npc = 6746, npcName = "Innkeeper Pala", map = 1456, x = 45.81, y = 64.71, f = "e" },
				},
			},
			{
				note = "Inside the building. Target Innkeeper Pala and type \"/dance\" into your chat to perform the Dance emote.",
				goals = {
					{ t = "complete", quest = 8360, title = "Dancing for Marzipan", note = "Dance for Inkeeper Pala", map = 1456, x = 45.81, y = 64.71, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8360, title = "Dancing for Marzipan", npc = 6746, npcName = "Innkeeper Pala", map = 1456, x = 45.81, y = 64.71, f = "e" },
					{ t = "collect", quest = 8312, item = 20497, itemName = "Thunder Bluff Marzipan", oi = 4, map = 1412, x = 39.1, y = 30.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8354, title = "Chicken Clucking for a Mint", npc = 6741, npcName = "Innkeeper Norman", map = 1458, x = 67.73, y = 37.88, f = "e" },
				},
			},
			{
				note = "Target Innkeeper Norman and type \"/chicken\" into your chat to perform the Chicken emote.",
				goals = {
					{ t = "complete", quest = 8354, title = "Chicken Clucking for a Mint", note = "Cluck Like a Chicken for Innkeeper Norman", map = 1458, x = 67.73, y = 37.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8354, title = "Chicken Clucking for a Mint", npc = 6741, npcName = "Innkeeper Norman", map = 1458, x = 67.73, y = 37.88, f = "e" },
					{ t = "collect", quest = 8312, item = 20491, itemName = "Undercity Mint", oi = 3, map = 1458, x = 67.7, y = 37.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 71.07, y = 23.87 },
					{ t = "turnin", quest = 8312, title = "Hallow's End Treats for Spoops!", npc = 15309, npcName = "Spoops", map = 1454, x = 71.44, y = 22.8, f = "e" },
				},
			},
			{
				note = "You must be at least level 25 to be able to accept this quest. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 25 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1657, title = "Stinking Up Southshore", npc = 15197, npcName = "Darkcaller Yanka", map = 1420, x = 55.57, y = 69.9, f = "e" },
				},
			},
			{
				note = "Use it while standing here to throw stink bombs on the ground.",
				goals = {
					{ t = "goto", text = "Avoid Southshore", map = 1424, x = 45.12, y = 49.16 },
					{ t = "goto", text = "Avoid Southshore guards", map = 1424, x = 46.66, y = 58.05 },
					{ t = "use", item = 20387, itemName = "Forsaken Stink Bomb Cluster" },
					{ t = "complete", quest = 1657, title = "Stinking Up Southshore", note = "Toss Stink Bombs into Southshore", map = 1424, x = 48.42, y = 57.86, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1657, title = "Stinking Up Southshore", npc = 15197, npcName = "Darkcaller Yanka", map = 1420, x = 55.57, y = 69.9, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/h-harvest-festival-quest",
		pack = "guides",
		title = "Harvest Festival Quest",
		category = "Events",
		folder = "Harvest Festival",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1411,
		version = 1,
		steps = {
			{
				note = "You must be at least level 30 to be able to accept the quest. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 30 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8150, title = "Honoring a Hero", npc = 15012, npcName = "Javnir Nashak", map = 1411, x = 46.1, y = 13.77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1440, x = 73.51, y = 63.53 },
					{ t = "goto", text = "Continue following the path", map = 1440, x = 75.62, y = 65.88 },
					{ t = "goto", text = "Continue following the path", map = 1440, x = 84.2, y = 72.05 },
					{ t = "use", item = 19851, itemName = "Grom's Tribute" },
					{ t = "goto", text = "Place a Tribute at Grom's Monument", map = 1440, x = 82.85, y = 79.04 },
					{ t = "complete", quest = 8150, title = "Honoring a Hero" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1440, x = 84.2, y = 72.05 },
					{ t = "goto", text = "Follow the path", map = 1440, x = 73.51, y = 63.53 },
					{ t = "turnin", quest = 8150, title = "Honoring a Hero", npc = 15012, npcName = "Javnir Nashak", map = 1411, x = 46.1, y = 13.77, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/h-feast-of-winter-veil-quest",
		pack = "guides",
		title = "Feast of Winter Veil Quest",
		category = "Events",
		folder = "Feast of Winter Veil",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "You must be at least this level to be able to accept the quest. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6964, title = "The Reason for the Season", npc = 9550, npcName = "Furmund", map = 1454, x = 50.85, y = 65.26, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.32, y = 36.94 },
					{ t = "turnin", quest = 6964, title = "The Reason for the Season", npc = 13417, npcName = "Sagorne Creststrider", map = 1454, x = 38.66, y = 35.92, f = "e" },
					{ t = "accept", quest = 7061, title = "The Feast of Winter Veil", npc = 13417, npcName = "Sagorne Creststrider", map = 1454, x = 38.66, y = 35.92, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Leave the building", map = 1454, x = 40.32, y = 36.94 },
					{ t = "turnin", quest = 7061, title = "The Feast of Winter Veil", npc = 3057, npcName = "Cairne Bloodhoof", map = 1456, x = 60.3, y = 51.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6961, title = "Great-father Winter is Here!", npc = 13418, npcName = "Kaymard Copperpinch", map = 1454, x = 53.33, y = 66.49, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6961, title = "Great-father Winter is Here!", npc = 13445, npcName = "Great-father Winter", map = 1454, x = 52.49, y = 69.18, f = "e" },
					{ t = "accept", quest = 6962, title = "Treats for Great-father Winter", npc = 13445, npcName = "Great-father Winter", map = 1454, x = 52.49, y = 69.18, f = "e" },
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
				goals = {
					{ t = "buy", item = 17200, itemName = "Recipe: Gingerbread Cookie", map = 1454, x = 53.21, y = 65.89, f = "e" },
					{ t = "use", item = 17200, itemName = "Recipe: Gingerbread Cookie" },
					{ t = "goto", text = "learn Gingerbread Cookie##21143", map = 1454, x = 53.21, y = 65.89 },
				},
			},
			{
				note = "Search the guide menu and use the farming guide to accomplish this. You can also buy them from the Auction House.",
				goals = {
					{ t = "collect", quest = 6962, item = 6889, itemName = "Small Egg", count = 5 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 17194, itemName = "Holiday Spices", count = 5, map = 1454, x = 53.21, y = 65.89, f = "e" },
				},
			},
			{
				note = "Stand next to the Mighty Blaze. Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 54.06, y = 68.85 },
					{ t = "collect", quest = 6962, item = 17197, itemName = "Gingerbread Cookie", count = 5, oi = 1, map = 1454, x = 54.76, y = 68.23, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 1179, itemName = "Ice Cold Milk", map = 1454, x = 54.64, y = 67.68, f = "e" },
				},
			},
			{
				note = "After you turn in this quest, you can then repeat it to get more gifts to open.",
				goals = {
					{ t = "turnin", quest = 6962, title = "Treats for Great-father Winter", npc = 13445, npcName = "Great-father Winter", map = 1454, x = 52.49, y = 69.18, f = "e" },
				},
			},
			{
				note = "You must be at least this level to be able to accept the quest. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 30 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6963, title = "Stolen Winter Veil Treats", npc = 13418, npcName = "Kaymard Copperpinch", map = 1454, x = 53.33, y = 66.49, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1416, x = 49.56, y = 69.08 },
					{ t = "goto", text = "Continue following the path", map = 1416, x = 41.83, y = 77.11 },
					{ t = "turnin", quest = 6963, title = "Stolen Winter Veil Treats", npc = 13636, npcName = "Strange Snowman", map = 1416, x = 35.44, y = 72.46, f = "e" },
					{ t = "accept", quest = 6983, title = "You're a Mean One...", npc = 13636, npcName = "Strange Snowman", map = 1416, x = 35.44, y = 72.46, f = "e" },
				},
			},
			{
				note = "He looks like a level 36 elite yeti. If you have trouble, try to find someone to help you. He can spawn in random places around the \"Growless Cave\" area. When he spawns, you will see a red yelled message in your chat. Just wait around nearby in this area until he spawns.",
				goals = {
					{ t = "collect", quest = 6983, item = 17662, itemName = "Stolen Treats", oi = 1, map = 1416, x = 40.8, y = 67.77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6983, title = "You're a Mean One...", npc = 13418, npcName = "Kaymard Copperpinch", map = 1454, x = 53.33, y = 66.49, f = "e" },
					{ t = "accept", quest = 6984, title = "A Smokywood Pastures' Thank You!", npc = 13418, npcName = "Kaymard Copperpinch", map = 1454, x = 53.33, y = 66.49, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6984, title = "A Smokywood Pastures' Thank You!", npc = 13445, npcName = "Great-father Winter", map = 1454, x = 52.49, y = 69.18, f = "e" },
				},
			},
			{
				note = "You must be at least this level to be able to accept the quest. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8746, title = "Metzen the Reindeer", npc = 13418, npcName = "Kaymard Copperpinch", map = 1454, x = 53.33, y = 66.49, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21315, itemName = "Smokywood Satchel" },
					{ t = "collect", quest = 8746, item = 21211, itemName = "Pouch of Reindeer Dust", oi = 2 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the tunnel", map = 1446, x = 68.61, y = 41.45 },
					{ t = "goto", text = "Leave the tunnel", map = 1446, x = 69.81, y = 42.48 },
					{ t = "goto", text = "Follow the path", map = 1446, x = 73.18, y = 45.56 },
					{ t = "complete", quest = 8746, title = "Metzen the Reindeer", note = "Find Metzen the Reindeer and Rescue Hime", map = 1446, x = 73.35, y = 48.07, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8746, title = "Metzen the Reindeer", npc = 13418, npcName = "Kaymard Copperpinch", map = 1454, x = 53.33, y = 66.49, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/h-lunar-festival-main-questline",
		pack = "guides",
		title = "Lunar Festival Main Questline",
		category = "Events",
		folder = "Lunar Festival",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 8873, title = "The Lunar Festival", npc = 15891, npcName = "Lunar Festival Herald", map = 1454, x = 51.0, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8873, title = "The Lunar Festival", npc = 15895, npcName = "Lunar Festival Harbinger", map = 1454, x = 41.6, y = 32.0, f = "e" },
					{ t = "accept", quest = 8867, title = "Lunar Fireworks", npc = 15895, npcName = "Lunar Festival Harbinger", map = 1454, x = 41.6, y = 32.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 21558, itemName = "Small Blue Rocket", count = 8, map = 1454, x = 41.3, y = 32.4, f = "e" },
					{ t = "buy", item = 21571, itemName = "Blue Rocket Cluster", count = 2, map = 1454, x = 41.3, y = 32.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21558, itemName = "Small Blue Rocket" },
					{ t = "complete", quest = 8867, title = "Lunar Fireworks", note = "Fire #8# Lunar Fireworks", map = 1454, x = 41.6, y = 32.8, f = "e" },
				},
			},
			{
				label = "Fire_Lunar_Fireworks_Clusters",
				along = true,
				goals = {
					{ t = "use", item = 21571, itemName = "Blue Rocket Cluster" },
					{ t = "complete", quest = 8867, title = "Lunar Fireworks", note = "Fire #2# Lunar Fireworks Clusters", map = 1454, x = 41.6, y = 32.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8867, title = "Lunar Fireworks", npc = 15895, npcName = "Lunar Festival Harbinger", map = 1454, x = 41.6, y = 32.0, f = "e" },
					{ t = "accept", quest = 8883, title = "Valadar Starsong", npc = 15895, npcName = "Lunar Festival Harbinger", map = 1454, x = 41.6, y = 32.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21711, itemName = "Lunar Festival Invitation", map = 1454, x = 41.0, y = 31.0, f = "e" },
					{ t = "complete", quest = 8883, title = "Valadar Starsong", note = "Go to Moonglade" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8883, title = "Valadar Starsong", npc = 15864, npcName = "Valadar Starsong", map = 1450, x = 53.65, y = 35.26, f = "e" },
				},
			},
			{
				note = "These are awarded by talking to elders around Kalimdor and Eastern Kingdoms. Use the \"Lunar Festival Optimized Elders Path\" event guide to collect them.",
				goals = {
					{ t = "collect", item = 21100, itemName = "Coin of Ancestry", count = 16 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8864, title = "Festive Lunar Dresses", npc = 15864, npcName = "Valadar Starsong", map = 1450, x = 53.65, y = 35.26, f = "e" },
					{ t = "accept", quest = 8865, title = "Festive Lunar Pant Suits", npc = 15864, npcName = "Valadar Starsong", map = 1450, x = 53.65, y = 35.26, f = "e" },
					{ t = "accept", quest = 8863, title = "Festival Dumplings", npc = 15864, npcName = "Valadar Starsong", map = 1450, x = 53.65, y = 35.26, f = "e" },
					{ t = "accept", quest = 8862, title = "Elune's Candle", npc = 15864, npcName = "Valadar Starsong", map = 1450, x = 53.65, y = 35.26, f = "e" },
				},
			},
		},
	})
end

