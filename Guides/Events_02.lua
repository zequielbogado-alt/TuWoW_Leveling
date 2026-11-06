-- TuWoW_Leveling — Guides/Events_02.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/events/a-sayges-fortunes-mulgore",
		pack = "guides",
		title = "Sayge's Fortunes (Mulgore)",
		category = "Events",
		folder = "Darkmoon Faire",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1412,
		version = 1,
		steps = {
			{
				label = "Agility_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Agility\" Buff", map = 1412, x = 37.83, y = 45.19 },
				},
			},
			{
				label = "Intelligence_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Intelligence\" Buff", map = 1412, x = 37.83, y = 45.19 },
				},
			},
			{
				label = "Spirit_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Spirit\" Buff", map = 1412, x = 37.83, y = 45.19 },
				},
			},
			{
				label = "Stamina_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Stamina\" Buff", map = 1412, x = 37.83, y = 45.19 },
				},
			},
			{
				label = "Strength_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Strength\" Buff", map = 1412, x = 37.83, y = 45.19 },
				},
			},
			{
				label = "Armor_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Armor\" Buff", map = 1412, x = 37.83, y = 45.19 },
				},
			},
			{
				label = "Resistance_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Resistance\" Buff", map = 1412, x = 37.83, y = 45.19 },
				},
			},
			{
				label = "Damage_Buff",
				goals = {
					{ t = "goto", text = "Gain the \"Sayge's Dark Fortune of Damage\" Buff", map = 1412, x = 37.83, y = 45.19 },
				},
			},
			{
				label = "Use_Darkmoon_Faire_Fortune",
				goals = {
					{ t = "collect", item = 19422, itemName = "Darkmoon Faire Fortune", map = 1412, x = 37.83, y = 45.19, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 19422, itemName = "Darkmoon Faire Fortune" },
				},
			},
			{
				label = "Fortune_Awaits_Eastvale",
				goals = {
					{ t = "accept", quest = 7937, title = "Your Fortune Awaits You..." },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7937, title = "Your Fortune Awaits You...", map = 1429, x = 84.79, y = 64.37, f = "e" },
				},
			},
			{
				label = "Fortune_Awaits_Deadmines",
				goals = {
					{ t = "accept", quest = 7938, title = "Your Fortune Awaits You..." },
				},
			},
			{
				note = "Just inside The Deadmines instance before you reach the first Miner. It may take a minute or two to appear.",
				goals = {
					{ t = "turnin", quest = 7938, title = "Your Fortune Awaits You..." },
				},
			},
			{
				label = "Fortune_Awaits_Wailing_Caverns",
				goals = {
					{ t = "accept", quest = 7944, title = "Your Fortune Awaits You..." },
				},
			},
			{
				note = "Just inside the Wailing Caverns instance after the Disciple of Naralex. It may take a minute or two to appear.",
				goals = {
					{ t = "turnin", quest = 7944, title = "Your Fortune Awaits You..." },
				},
			},
			{
				label = "Fortune_Awaits_Palemane_Rock",
				goals = {
					{ t = "accept", quest = 7945, title = "Your Fortune Awaits You..." },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7945, title = "Your Fortune Awaits You...", map = 1412, x = 36.22, y = 64.55, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/a-chronos-turn-ins-mulgore",
		pack = "guides",
		title = "Chronos Turn-Ins (Mulgore)",
		category = "Events",
		folder = "Darkmoon Faire",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1412,
		version = 1,
		steps = {
			{
				note = "Create them with Leatherworking or purchase them from the Auction House. Each turnin requires 3 Embossed Leather Boots and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 1 Darkmoon Faire Prize Ticket. You can turn this quest in until you reach 500 Neutral reputation.",
				goals = {
					{ t = "collect", item = 2309, itemName = "Embossed Leather Boots", count = 3 },
					{ t = "accept", quest = 7881, title = "Carnival Boots", npc = 14833, npcName = "Chronos", map = 1412, x = 37.19, y = 42.53, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				note = "Create them with Leatherworking or purchase them from the Auction House. Each turnin requires 3 Toughened Leather Armors and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 4 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 1,100 Neutral reputation.",
				goals = {
					{ t = "collect", item = 2314, itemName = "Toughened Leather Armor", count = 3 },
					{ t = "accept", quest = 7882, title = "Carnival Jerkins", npc = 14833, npcName = "Chronos", map = 1412, x = 37.19, y = 42.53, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 20 },
				},
			},
			{
				note = "Create them with Leatherworking or purchase them from the Auction House. Each turnin requires 3 Barbaric Harnesses and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 8 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 1,700 Neutral reputation.",
				goals = {
					{ t = "collect", item = 5739, itemName = "Barbaric Harness", count = 3 },
					{ t = "accept", quest = 7883, title = "The World's Largest Gnome!", npc = 14833, npcName = "Chronos", map = 1412, x = 37.19, y = 42.53, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 30 },
				},
			},
			{
				note = "Create them with Leatherworking or purchase them from the Auction House. Each turnin requires 1 Turtle Scale Leggings and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 12 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 2,500 Neutral reputation.",
				goals = {
					{ t = "collect", item = 8185, itemName = "Turtle Scale Leggings" },
					{ t = "accept", quest = 7884, title = "Crocolisk Boy and the Bearded Murloc", npc = 14833, npcName = "Chronos", map = 1412, x = 37.19, y = 42.53, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "Create them with Leatherworking or purchase them from the Auction House.",
				goals = {
					{ t = "collect", quest = 7885, item = 15564, itemName = "Rugged Armor Kit", count = 8 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7885, title = "Armor Kits", npc = 14833, npcName = "Chronos", map = 1412, x = 37.19, y = 42.53, f = "e" },
				},
			},
			{
				note = "Create them with Leatherworking or purchase them from the Auction House. From this point on, you can continue turning in Rugged Armor Kits. Each of these turnins will award 20 Darkmoon Faire Prize Tickets. Each turnin requires 8 Rugged Armor Kits and grants 100 reputation with the Darkmoon Faire.",
				goals = {
					{ t = "collect", item = 15564, itemName = "Rugged Armor Kit", count = 8 },
					{ t = "accept", quest = 7941, title = "More Armor Kits", npc = 14833, npcName = "Chronos", map = 1412, x = 37.19, y = 42.53, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/a-kerri-hicks-turn-ins-mulgore",
		pack = "guides",
		title = "Kerri Hicks Turn-Ins (Mulgore)",
		category = "Events",
		folder = "Darkmoon Faire",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1412,
		version = 1,
		steps = {
			{
				note = "Create them with Blacksmithing or purchase them from the Auction House. Each turnin requires 10 Coarse Weightstones and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 1 Darkmoon Faire Prize Ticket. You can turn this quest in until you reach 500 Neutral reputation.",
				goals = {
					{ t = "collect", item = 3240, itemName = "Coarse Weightstone", count = 10 },
					{ t = "accept", quest = 7889, title = "Coarse Weightstone", npc = 14832, npcName = "Kerri Hicks", map = 1412, x = 38.62, y = 46.41, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				note = "Create them with Blacksmithing or purchase them from the Auction House. Each turnin requires 7 Heavy Grinding Stones and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 4 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 1,100 Neutral reputation.",
				goals = {
					{ t = "collect", item = 3486, itemName = "Heavy Grinding Stone", count = 7 },
					{ t = "accept", quest = 7890, title = "Heavy Grinding Stone", npc = 14832, npcName = "Kerri Hicks", map = 1412, x = 38.62, y = 46.41, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 20 },
				},
			},
			{
				note = "Create them with Blacksmithing or purchase them from the Auction House. Each turnin requires 3 Green Iron Bracers and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 8 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 1,700 Neutral reputation.",
				goals = {
					{ t = "collect", item = 3835, itemName = "Green Iron Bracers", count = 3 },
					{ t = "accept", quest = 7891, title = "Green Iron Bracers", npc = 14832, npcName = "Kerri Hicks", map = 1412, x = 38.62, y = 46.41, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 30 },
				},
			},
			{
				note = "Create them with Blacksmithing or purchase them from the Auction House. Each turnin requires 1 Big Black Mace and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 12 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 2,500 Neutral reputation.",
				goals = {
					{ t = "collect", item = 7945, itemName = "Big Black Mace" },
					{ t = "accept", quest = 7892, title = "Big Black Mace", npc = 14832, npcName = "Kerri Hicks", map = 1412, x = 38.62, y = 46.41, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "Create them with Blacksmithing or purchase them from the Auction House.",
				goals = {
					{ t = "collect", quest = 7893, item = 12644, itemName = "Dense Grinding Stone", count = 8 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7893, title = "Rituals of Strength", npc = 14832, npcName = "Kerri Hicks", map = 1412, x = 38.62, y = 46.41, f = "e" },
				},
			},
			{
				note = "Create them with Blacksmithing or purchase them from the Auction House. From this point on, you can continue turning in Dense Grinding Stones. Each of these turnins will award 20 Darkmoon Faire Prize Tickets. Each turnin requires 8 Dense Grinding Stones and grants 100 reputation with the Darkmoon Faire.",
				goals = {
					{ t = "collect", item = 12644, itemName = "Dense Grinding Stone", count = 8 },
					{ t = "accept", quest = 7939, title = "More Dense Grinding Stones", npc = 14832, npcName = "Kerri Hicks", map = 1412, x = 38.62, y = 46.41, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/a-rinling-turn-ins-mulgore",
		pack = "guides",
		title = "Rinling Turn-Ins (Mulgore)",
		category = "Events",
		folder = "Darkmoon Faire",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1412,
		version = 1,
		steps = {
			{
				note = "Create them with Engineering or purchase them from the Auction House. They also have a small chance to drop from mobs in the Gnomeregan dungeon. Each turnin requires 5 Copper Modulators and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 1 Darkmoon Faire Prize Ticket. You can turn this quest in until you reach 500 Neutral reputation.",
				goals = {
					{ t = "collect", item = 4363, itemName = "Copper Modulator", count = 5 },
					{ t = "accept", quest = 7894, title = "Copper Modulator", npc = 14841, npcName = "Rinling", map = 1412, x = 38.0, y = 44.31, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				note = "Create them with Engineering or purchase them from the Auction House. Each turnin requires 7 Whirring Bronze Gizmos and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 4 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 1,100 Neutral reputation.",
				goals = {
					{ t = "collect", item = 4375, itemName = "Whirring Bronze Gizmo", count = 7 },
					{ t = "accept", quest = 7895, title = "Whirring Bronze Gizmo", npc = 14841, npcName = "Rinling", map = 1412, x = 38.0, y = 44.31, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 20 },
				},
			},
			{
				note = "Create them with Engineering or purchase them from the Auction House. They can also be purchased from any Holiday Fireworks Vendor on July 4th. Each turnin requires 36 Green Fireworks and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 8 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 1,700 Neutral reputation.",
				goals = {
					{ t = "collect", item = 9313, itemName = "Green Firework", count = 36 },
					{ t = "accept", quest = 7896, title = "Green Fireworks", npc = 14841, npcName = "Rinling", map = 1412, x = 38.0, y = 44.31, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 30 },
				},
			},
			{
				note = "Create them with Engineering or purchase them from the Auction House. Each turnin requires 6 Mechanical Repair Kits and grants 100 reputation with the Darkmoon Faire. Each of these turnins will award 12 Darkmoon Faire Prize Tickets. You can turn this quest in until you reach 2,500 Neutral reputation.",
				goals = {
					{ t = "collect", item = 11590, itemName = "Mechanical Repair Kit", count = 6 },
					{ t = "accept", quest = 7897, title = "Mechanical Repair Kits", npc = 14841, npcName = "Rinling", map = 1412, x = 38.0, y = 44.31, f = "e" },
				},
			},
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "Create them with Engineering or purchase them from the Auction House.",
				goals = {
					{ t = "collect", quest = 7898, item = 15994, itemName = "Thorium Widget", count = 6 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7898, title = "Thorium Widget", npc = 14841, npcName = "Rinling", map = 1412, x = 38.0, y = 44.31, f = "e" },
				},
			},
			{
				note = "Create them with Engineering or purchase them from the Auction House. From this point on, you can continue turning in Thorium Widgets. Each of these turnins will award 20 Darkmoon Faire Prize Tickets. Each turnin requires 6 Thorium Widgets and grants 100 reputation with the Darkmoon Faire.",
				goals = {
					{ t = "collect", item = 15994, itemName = "Thorium Widget", count = 6 },
					{ t = "accept", quest = 7942, title = "More Thorium Widgets", npc = 14841, npcName = "Rinling", map = 1412, x = 38.0, y = 44.31, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/a-yebb-neblegear-turn-ins-mulgore",
		pack = "guides",
		title = "Yebb Neblegear Turn-Ins (Mulgore)",
		category = "Events",
		folder = "Darkmoon Faire",
		faction = "Alliance",
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
		id = "zygor/events/a-spawn-of-jubjub-mulgore",
		pack = "guides",
		title = "Spawn of Jubjub (Mulgore)",
		category = "Events",
		folder = "Darkmoon Faire",
		faction = "Alliance",
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
		id = "zygor/events/a-wood-frog-mulgore",
		pack = "guides",
		title = "Wood Frog (Mulgore)",
		category = "Events",
		folder = "Darkmoon Faire",
		faction = "Alliance",
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
		id = "zygor/events/a-tree-frog-mulgore",
		pack = "guides",
		title = "Tree Frog (Mulgore)",
		category = "Events",
		folder = "Darkmoon Faire",
		faction = "Alliance",
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
		id = "zygor/events/a-hallows-end-quests",
		pack = "guides",
		title = "Hallow's End Quests",
		category = "Events",
		folder = "Hallow's End",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
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
					{ t = "goto", text = "Enter the building", map = 1453, x = 56.35, y = 53.3 },
					{ t = "accept", quest = 8311, title = "Hallow's End Treats for Jesper!", npc = 15310, npcName = "Jesper", map = 1453, x = 56.53, y = 51.76, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 60.99, y = 74.7 },
					{ t = "accept", quest = 8356, title = "Flexing for Nougat", npc = 6740, npcName = "Innkeeper Allison", map = 1453, x = 60.38, y = 75.28, f = "e" },
				},
			},
			{
				note = "Inside the building. Target Innkeeper Allison and type \"/flex\" into your chat to perform the Flex emote.",
				goals = {
					{ t = "complete", quest = 8356, title = "Flexing for Nougat", note = "Flex for Inkeeper Allison", map = 1453, x = 60.38, y = 75.28, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8356, title = "Flexing for Nougat", npc = 6740, npcName = "Innkeeper Allison", map = 1453, x = 60.38, y = 75.28, f = "e" },
					{ t = "collect", quest = 8311, item = 20492, itemName = "Stormwind Nougat", oi = 1, map = 1453, x = 60.4, y = 75.3, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 20.57, y = 53.22 },
					{ t = "accept", quest = 8353, title = "Chicken Clucking for a Mint", npc = 5111, npcName = "Innkeeper Firebrew", map = 1455, x = 18.16, y = 51.44, f = "e" },
				},
			},
			{
				note = "Inside the building. Target Innkeeper Firebrew and type \"/chicken\" into your chat to perform the Chicken emote.",
				goals = {
					{ t = "complete", quest = 8353, title = "Chicken Clucking for a Mint", note = "Cluck Like a Chicken for Innkeeper Firebrew", map = 1455, x = 18.16, y = 51.44, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8353, title = "Chicken Clucking for a Mint", npc = 5111, npcName = "Innkeeper Firebrew", map = 1455, x = 18.16, y = 51.44, f = "e" },
					{ t = "collect", quest = 8311, item = 20490, itemName = "Ironforge Mint", oi = 3, map = 1455, x = 18.2, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8355, title = "Incoming Gumdrop", npc = 6826, npcName = "Talvash del Kissel", map = 1455, x = 36.38, y = 3.62, f = "e" },
				},
			},
			{
				note = "Target Talvash del Kissel and type \"/train\" into your chat to perform the Train emote.",
				goals = {
					{ t = "complete", quest = 8355, title = "Incoming Gumdrop", note = "Do the \"Train\" for Talvash", map = 1455, x = 36.38, y = 3.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8355, title = "Incoming Gumdrop", npc = 6826, npcName = "Talvash del Kissel", map = 1455, x = 36.38, y = 3.62, f = "e" },
					{ t = "collect", quest = 8311, item = 20494, itemName = "Gnomeregan Gumdrop", oi = 2, map = 1455, x = 36.4, y = 3.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8357, title = "Dancing for Marzipan", npc = 6735, npcName = "Innkeeper Saelienne", map = 1457, x = 67.42, y = 15.65, f = "e" },
				},
			},
			{
				note = "Target Innkeeper Saelienne and type \"/dance\" into your chat to perform the Dance emote.",
				goals = {
					{ t = "complete", quest = 8357, title = "Dancing for Marzipan", note = "Dance for Inkeeper Saelienne", map = 1457, x = 67.42, y = 15.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8357, title = "Dancing for Marzipan", npc = 6735, npcName = "Innkeeper Saelienne", map = 1457, x = 67.42, y = 15.65, f = "e" },
					{ t = "collect", quest = 8311, item = 20496, itemName = "Darnassus Marzipan", oi = 4, map = 1438, x = 31.2, y = 50.2, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 56.35, y = 53.3 },
					{ t = "turnin", quest = 8311, title = "Hallow's End Treats for Jesper!", npc = 15310, npcName = "Jesper", map = 1453, x = 56.53, y = 51.76, f = "e" },
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
					{ t = "accept", quest = 8373, title = "The Power of Pine", npc = 15199, npcName = "Sergeant Hartman", map = 1424, x = 50.0, y = 57.34, f = "e" },
				},
			},
			{
				note = "Use it next to a stink bomb placed by a Horde player. They look like small metal objects surrounded by orange smoke on the ground around Southshore. Run around Southshore and look for them, they will most likely be near the outskirts of the town.",
				goals = {
					{ t = "use", item = 20604, itemName = "Stink Bomb Cleaner" },
					{ t = "complete", quest = 8373, title = "The Power of Pine", note = "Clean Up a Stink Bomb in Southshore", map = 1424, x = 48.61, y = 57.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8373, title = "The Power of Pine", npc = 15199, npcName = "Sergeant Hartman", map = 1424, x = 50.0, y = 57.34, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/events/a-harvest-festival-quest",
		pack = "guides",
		title = "Harvest Festival Quest",
		category = "Events",
		folder = "Harvest Festival",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1426,
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
					{ t = "accept", quest = 8149, title = "Honoring a Hero", npc = 15011, npcName = "Wagner Hammerstrike", map = 1426, x = 52.6, y = 36.03, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1422, x = 46.61, y = 81.31 },
					{ t = "goto", text = "Follow the path up", map = 1422, x = 51.62, y = 79.94 },
					{ t = "goto", text = "Enter the building", map = 1422, x = 52.07, y = 83.22 },
					{ t = "use", item = 19850, itemName = "Uther's Tribute" },
					{ t = "goto", text = "Place a Tribute at Uther's Tomb", map = 1422, x = 52.14, y = 83.57 },
					{ t = "complete", quest = 8149, title = "Honoring a Hero" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8149, title = "Honoring a Hero", npc = 15011, npcName = "Wagner Hammerstrike", map = 1426, x = 52.6, y = 36.03, f = "e" },
				},
			},
		},
	})
end

