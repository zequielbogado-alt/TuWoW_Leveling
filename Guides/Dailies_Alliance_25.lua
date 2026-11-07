-- TuWoW_Leveling — Guides/Dailies_Alliance_25.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-love-is-in-the-air-dailies",
		pack = "guides",
		title = "Love is in the Air Dailies",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1455,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 24609, title = "A Gift for the Lord of Ironforge", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1455, x = 33.5, y = 65.6, f = "e" },
				},
			},
			{
				note = "Ride the Deep Run Tram to Stormwind City|goto Stormwind City|noway|c",
				goals = {
					{ t = "goto", map = 1455, x = 76.9, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 24658, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
					{ t = "accept", quest = 24659, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
					{ t = "accept", quest = 24660, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
					{ t = "accept", quest = 24662, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
					{ t = "accept", quest = 24663, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
					{ t = "accept", quest = 24664, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
					{ t = "accept", quest = 24665, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
					{ t = "accept", quest = 24666, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 24629, title = "A Perfect Puff of Perfume", npc = 37675, npcName = "Public Relations Agent", map = 1453, x = 62.4, y = 75.4, f = "e" },
					{ t = "accept", quest = 24635, title = "A Cloudlet of Classy Cologne", npc = 37675, npcName = "Public Relations Agent", map = 1453, x = 62.4, y = 75.4, f = "e" },
					{ t = "accept", quest = 24636, title = "Bonbon Blitz", npc = 37675, npcName = "Public Relations Agent", map = 1453, x = 62.4, y = 75.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 24597, title = "A Gift for the King of Stormwind", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1453, x = 62.5, y = 75.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 24658, target = "Crown Lackey", count = 5, oi = 2, map = 1429, x = 29.3, y = 65.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 49655, itemName = "Lovely Charm", count = 40, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 49916, itemName = "Lovely Charm Bracelet", count = 4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24658, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24629, title = "A Perfect Puff of Perfume", npc = 37675, npcName = "Public Relations Agent", map = 1453, x = 62.4, y = 75.4, f = "e" },
					{ t = "turnin", quest = 24635, title = "A Cloudlet of Classy Cologne", npc = 37675, npcName = "Public Relations Agent", map = 1453, x = 62.4, y = 75.4, f = "e" },
					{ t = "turnin", quest = 24636, title = "Bonbon Blitz", npc = 37675, npcName = "Public Relations Agent", map = 1453, x = 62.4, y = 75.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24597, title = "A Gift for the Lord of Stormwind", npc = 29611, npcName = "King Varian Wrynn", map = 1453, x = 80.0, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 24659, target = "Crown Thugs", count = 5, oi = 2, map = 1439, x = 42.4, y = 79.4, f = "e" },
				},
			},
			{
				note = "This step depends on your character's level and what you want to do.",
				goals = {
					{ t = "collect", item = 49655, itemName = "Lovely Charm", count = 40, f = "e" },
					{ t = "collect", item = 49916, itemName = "Lovely Charm Bracelet", count = 4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 24610, title = "A Gift for the High Priestess of Elune", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1457, x = 42.5, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 24610, title = "A Gift for the High Priestess of Elune", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1457, x = 42.5, y = 52.0, f = "e" },
					{ t = "turnin", quest = 24610, title = "A Gift for the High Priestess of Elune", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1457, x = 42.5, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 24611, title = "A Gift for the Prophet", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1947, x = 73.6, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 24611, title = "A Gift for the Prophet", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1947, x = 73.6, y = 57.0, f = "e" },
					{ t = "turnin", quest = 24611, title = "A Gift for the Prophet", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1947, x = 73.6, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1947, x = 22.0, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24609, title = "A Gift for the Lord of Ironforge", npc = 2784, npcName = "King Magni Bronzebeard", map = 1455, x = 40.0, y = 55.1, f = "e" },
				},
			},
			{
				note = "Ride the Deep Run Tram to Stormwind City|goto Stormwind City|noway|c",
				goals = {
					{ t = "goto", map = 1455, x = 76.9, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24597, title = "A Gift for the Lord of Stormwind", npc = 29611, npcName = "King Varian Wrynn", map = 1455, x = 80.0, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24659, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
				},
			},
			{
				note = "Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c",
				goals = {
					{ t = "goto", map = 1453, x = 32.4, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 24660, target = "Crown Duster", count = 5, oi = 2, map = 1424, x = 28.1, y = 37.8, f = "e" },
				},
			},
			{
				note = "This step depends on your character's level and what you want to do.",
				goals = {
					{ t = "collect", item = 49655, itemName = "Lovely Charm", count = 40, f = "e" },
					{ t = "collect", item = 49916, itemName = "Lovely Charm Bracelet", count = 4, f = "e" },
				},
			},
			{
				note = "Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c",
				goals = {
					{ t = "goto", map = 1424, x = 32.4, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 24662, target = "Crown Hoodlum", count = 5, oi = 2, map = 1445, x = 60.8, y = 38.2, f = "e" },
				},
			},
			{
				note = "This step depends on your character's level and what you want to do.",
				goals = {
					{ t = "collect", item = 49655, itemName = "Lovely Charm", count = 40, f = "e" },
					{ t = "collect", item = 49916, itemName = "Lovely Charm Bracelet", count = 4, f = "e" },
				},
			},
			{
				note = "Ride the boat to Menethil Harbor|goto Wetlands|noway|c",
				goals = {
					{ t = "goto", map = 1445, x = 71.5, y = 56.3, f = "e" },
				},
			},
			{
				note = "Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c",
				goals = {
					{ t = "goto", map = 1439, x = 32.4, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 24663, target = "Crown Agent", count = 5, oi = 2, map = 1425, x = 23.3, y = 53.7, f = "e" },
				},
			},
			{
				note = "This step depends on your character's level and what you want to do.",
				goals = {
					{ t = "collect", item = 49655, itemName = "Lovely Charm", count = 40, f = "e" },
					{ t = "collect", item = 49916, itemName = "Lovely Charm Bracelet", count = 4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24609, title = "A Gift for the Lord of Ironforge", npc = 2784, npcName = "King Magni Bronzebeard", map = 1455, x = 40.0, y = 55.1, f = "e" },
				},
			},
			{
				note = "Ride the Deep Run Tram to Stormwind City|goto Stormwind City|noway|c",
				goals = {
					{ t = "goto", map = 1455, x = 76.9, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24597, title = "A Gift for the Lord of Stormwind", npc = 29611, npcName = "King Varian Wrynn", map = 1455, x = 80.0, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24660, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
					{ t = "turnin", quest = 24662, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
					{ t = "turnin", quest = 24663, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24610, title = "A Gift for the High Priestess of Elune", npc = 7999, npcName = "Tyrande Whisperwind", map = 1457, x = 38.3, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24611, title = "A Gift for the Prophet", npc = 17468, npcName = "Prophet Velen", map = 1947, x = 32.8, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 24664, target = "Crown Sprinkler", count = 5, oi = 2, map = 1452, x = 64.6, y = 37.4, f = "e" },
				},
			},
			{
				note = "This step depends on your character's level and what you want to do.",
				goals = {
					{ t = "collect", item = 49655, itemName = "Lovely Charm", count = 40, f = "e" },
					{ t = "collect", item = 49916, itemName = "Lovely Charm Bracelet", count = 4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24611, title = "A Gift for the Prophet", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1947, x = 73.6, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1947, x = 22.0, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24610, title = "A Gift for the High Priestess of Elune", npc = 16075, npcName = "Kwee Q. Peddlefeet", map = 1457, x = 42.5, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24597, title = "A Gift for the Lord of Stormwind", npc = 29611, npcName = "King Varian Wrynn", map = 1457, x = 80.0, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24664, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
				},
			},
			{
				note = "Ride the Deep Run Tram to Ironforge|goto Ironforge|noway|c",
				goals = {
					{ t = "goto", map = 1453, x = 76.9, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24609, title = "A Gift for the Lord of Ironforge", npc = 2784, npcName = "King Magni Bronzebeard", map = 1455, x = 40.0, y = 55.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1453, x = 49.0, y = 87.4, f = "e" },
				},
			},
			{
				note = "Go into the big green portal to Outland |goto Hellfire Peninsula |noway |c",
				goals = {
					{ t = "goto", map = 1419, x = 58.7, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 18931, npcName = "Amish Wildhammer", map = 1944, x = 87.4, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 24665, target = "Crown Underling", count = 5, oi = 2, map = 1952, x = 41.4, y = 22.5, f = "e" },
				},
			},
			{
				note = "This step depends on your character's level and what you want to do.",
				goals = {
					{ t = "collect", item = 49655, itemName = "Lovely Charm", count = 40, f = "e" },
					{ t = "collect", item = 49916, itemName = "Lovely Charm Bracelet", count = 4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1955, x = 56.3, y = 37.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24609, title = "A Gift for the Lord of Ironforge", npc = 2784, npcName = "King Magni Bronzebeard", map = 1455, x = 40.0, y = 55.1, f = "e" },
				},
			},
			{
				note = "Ride the Deep Run Tram to Stormwind City|goto Stormwind City|noway|c",
				goals = {
					{ t = "goto", map = 1455, x = 76.9, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24597, title = "A Gift for the Lord of Stormwind", npc = 29611, npcName = "King Varian Wrynn", map = 1455, x = 80.0, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24665, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24610, title = "A Gift for the High Priestess of Elune", npc = 7999, npcName = "Tyrande Whisperwind", map = 1457, x = 38.3, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24611, title = "A Gift for the Prophet", npc = 17468, npcName = "Prophet Velen", map = 1947, x = 32.8, y = 54.5, f = "e" },
				},
			},
			{
				note = "Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c",
				goals = {
					{ t = "goto", map = 1947, x = 32.4, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1947, x = 18.2, y = 25.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 24666, target = "Crown Sprayer", count = 5, oi = 2, map = 127, x = 49.0, y = 47.8, f = "e" },
				},
			},
			{
				note = "This step depends on your character's level and what you want to do.",
				goals = {
					{ t = "collect", item = 49655, itemName = "Lovely Charm", count = 40, f = "e" },
					{ t = "collect", item = 49916, itemName = "Lovely Charm Bracelet", count = 4, f = "e" },
				},
			},
			{
				note = "Click the Dalaran Portal to Ironforge",
				goals = {
					{ t = "goto", map = 125, x = 39.5, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24609, title = "A Gift for the Lord of Ironforge", npc = 2784, npcName = "King Magni Bronzebeard", map = 1455, x = 40.0, y = 55.1, f = "e" },
				},
			},
			{
				note = "Ride the Deep Run Tram to Stormwind City|goto Stormwind City|noway|c",
				goals = {
					{ t = "goto", map = 1455, x = 76.9, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24597, title = "A Gift for the Lord of Stormwind", npc = 29611, npcName = "King Varian Wrynn", map = 1455, x = 80.0, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24666, title = "Crushing the Crown", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24610, title = "A Gift for the High Priestess of Elune", npc = 7999, npcName = "Tyrande Whisperwind", map = 1457, x = 38.3, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24611, title = "A Gift for the Prophet", npc = 17468, npcName = "Prophet Velen", map = 1947, x = 32.8, y = 54.5, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-lunar-festival-main-questline",
		pack = "guides",
		title = "Lunar Festival Main Questline",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1455,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 8870, title = "The Lunar Festival", npc = 15892, npcName = "Lunar Festival Emissary", map = 1455, x = 30.9, y = 61.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8870, title = "The Lunar Festival", npc = 15895, npcName = "Lunar Festival Harbinger", map = 1455, x = 28.8, y = 16.2, f = "e" },
					{ t = "accept", quest = 8867, title = "Lunar Fireworks", npc = 15895, npcName = "Lunar Festival Harbinger", map = 1455, x = 28.8, y = 16.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 15898, npcName = "Lunar Festival Vendor", itemName = "Small Blue Rocket+", count = 8, map = 1455, x = 29.9, y = 14.2, f = "e" },
					{ t = "buy", npc = 15898, npcName = "Lunar Festival Vendor", itemName = "Blue Rocket Cluster+", count = 2, map = 1455, x = 29.9, y = 14.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 30.6, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8867, title = "Lunar Fireworks", npc = 15895, npcName = "Lunar Festival Harbinger", map = 1455, x = 28.9, y = 16.2, f = "e" },
					{ t = "accept", quest = 8883, title = "Valadar Starsong", npc = 15895, npcName = "Lunar Festival Harbinger", map = 1455, x = 28.9, y = 16.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 30.6, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8883, title = "Valadar Starsong", npc = 15864, npcName = "Valadar Starsong", map = 1450, x = 53.6, y = 35.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1450, x = 36.4, y = 59.9, f = "e" },
				},
			},
		},
	})
end

