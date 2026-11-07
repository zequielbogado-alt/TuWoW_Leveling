-- TuWoW_Leveling — Guides/Dailies_Horde_15.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-home-cities-exalted-reputation-guide-part-7",
		pack = "guides",
		title = "Home Cities Exalted Reputation Guide (Parte 7/8)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		next = "zygor/dailies/h-dai-icecrown-home-cities-exalted-reputation-guide-part-8",
		author = "TuWoW & Zygor",
		minLevel = 77,
		zone = 1420,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 869, title = "Raptor Thieves", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.9, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "The Crossroads", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 860, title = "Sergra Darkthorn", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
					{ t = "turnin", quest = 842, title = "Crossroads Conscription", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
					{ t = "accept", quest = 844, title = "Plainstrider Menace", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 899, title = "Consumed by Hatred", npc = 3432, npcName = "Mankrik", map = 1413, x = 52.0, y = 31.6, f = "e" },
					{ t = "accept", quest = 4921, title = "Lost in Battle", npc = 3432, npcName = "Mankrik", map = 1413, x = 52.0, y = 31.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 870, title = "The Forgotten Pools", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 844, itemName = "Plainstrider Beak", count = 7, oi = 1, map = 1413, x = 53.0, y = 32.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 871, target = "Razormane Water Seeker", count = 8, oi = 1, map = 1413, x = 54.1, y = 26.1, f = "e" },
					{ t = "kill", quest = 871, target = "Razormane Thornweaver", count = 8, oi = 2, map = 1413, x = 54.1, y = 26.1, f = "e" },
					{ t = "kill", quest = 871, target = "Razormane Hunter", count = 3, oi = 3, map = 1413, x = 54.1, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5041, itemName = "Crossroads' Supply Crates", count = 1, oi = 1, map = 1413, x = 59.4, y = 24.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 844, title = "Plainstrider Menace", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
					{ t = "accept", quest = 845, title = "The Zhevra", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 871, title = "Disrupt the Attacks", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.9, f = "e" },
					{ t = "turnin", quest = 5041, title = "Supplies for the Crossroads", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.9, f = "e" },
					{ t = "accept", quest = 872, title = "The Disruption Ends", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1361, title = "Regthar Deathgate", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
					{ t = "accept", quest = 855, title = "Centaur Bracers", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
					{ t = "accept", quest = 850, title = "Kolkar Leaders", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 845, itemName = "Zhevra Hooves", count = 4, oi = 1, map = 1413, x = 46.0, y = 27.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 848, itemName = "Fungal Spores", count = 4, oi = 1, map = 1413, x = 45.3, y = 22.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 850, itemName = "Barak's Head", count = 1, oi = 1, map = 1413, x = 42.6, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 855, itemName = "Centaur Bracers", count = 15, oi = 1, map = 1413, x = 46.1, y = 26.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 867, itemName = "Witchwing Talon", count = 8, oi = 1, map = 1413, x = 40.7, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 855, title = "Centaur Bracers", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
					{ t = "turnin", quest = 850, title = "Kolkar Leaders", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
					{ t = "accept", quest = 851, title = "Verog the Dervish", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 848, title = "Fungal Spores", npc = 3390, npcName = "Apothecary Helbrim", map = 1413, x = 51.4, y = 30.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 867, title = "Harpy Raiders", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.6, y = 30.9, f = "e" },
					{ t = "accept", quest = 875, title = "Harpy Lieutenants", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.6, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 845, title = "The Zhevra", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
					{ t = "accept", quest = 903, title = "Prowlers of the Barrens", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 870, title = "The Forgotten Pools", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
					{ t = "accept", quest = 877, title = "The Stagnant Oasis", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 903, itemName = "Prowler Claws", count = 7, oi = 1, map = 1413, x = 41.5, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 875, itemName = "Harpy Lieutenant Ring", count = 6, oi = 1, map = 1413, x = 39.9, y = 16.0, f = "e" },
				},
			},
			{
				note = "Make sure you have 12 Raptor Heads.  If not:",
				goals = {
					{ t = "collect", quest = 869, itemName = "Raptor Head", count = 12, oi = 1, f = "e" },
				},
			},
			{
				note = "Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 869, title = "Raptor Thieves", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.9, y = 30.3, f = "e" },
					{ t = "accept", quest = 3281, title = "Stolen Silver", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.9, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 875, title = "Harpy Lieutenants", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.6, y = 30.9, f = "e" },
					{ t = "accept", quest = 876, title = "Serena Bloodfeather", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.6, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 903, title = "Prowlers of the Barrens", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
					{ t = "accept", quest = 881, title = "Echeyakee", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 876, itemName = "Serena's Head", count = 1, oi = 1, map = 1413, x = 39.2, y = 12.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 881, itemName = "Echeyakee's Hide", count = 1, oi = 1, map = 1413, x = 55.8, y = 17.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 872, target = "Razormane Defender", count = 8, oi = 2, map = 1413, x = 56.9, y = 24.4, f = "e" },
					{ t = "kill", quest = 872, target = "Razormane Geomancer", count = 8, oi = 1, map = 1413, x = 56.9, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 872, itemName = "Kreenig Snarlsnout's Tusk", count = 1, oi = 3, map = 1413, x = 58.8, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 872, title = "The Disruption Ends", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 876, title = "Serena Bloodfeather", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.6, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 881, title = "Echeyakee", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
					{ t = "accept", quest = 905, title = "The Angry Scytheclaws", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 851, itemName = "Verog's Head", count = 1, oi = 1, map = 1413, x = 52.9, y = 41.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 55.6, y = 42.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 877, title = "The Stagnant Oasis", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
					{ t = "accept", quest = 880, title = "Altered Beings", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 851, title = "Verog the Dervish", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
					{ t = "accept", quest = 852, title = "Hezrul Bloodmark", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 852, itemName = "Hezrul's Head", count = 1, oi = 1, map = 1413, x = 48.6, y = 40.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 880, itemName = "Altered Snapjaw Shell", count = 8, oi = 1, map = 1413, x = 47.9, y = 40.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 57.4, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3281, itemName = "Stolen Silver", count = 1, oi = 1, map = 1413, x = 58.0, y = 53.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 5165, itemName = "Sunscale Feather", count = 3, map = 1413, x = 57.7, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 899, itemName = "Bristleback Quilboar Tusk", count = 60, oi = 1, map = 1413, x = 53.1, y = 52.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 49.3, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 52.0, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 52.5, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 52.6, y = 46.1, f = "e" },
				},
			},
			{
				note = "Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3281, title = "Stolen Silver", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.9, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 905, title = "The Angry Scytheclaws", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
					{ t = "accept", quest = 3261, title = "Jorn Skyseer", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 899, title = "Consumed by Hatred", npc = 3432, npcName = "Mankrik", map = 1413, x = 52.0, y = 31.6, f = "e" },
					{ t = "turnin", quest = 4921, title = "Lost in Battle", npc = 3432, npcName = "Mankrik", map = 1413, x = 52.0, y = 31.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 880, title = "Altered Beings", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.3, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 852, title = "Hezrul Bloodmark", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.4, y = 28.4, f = "e" },
					{ t = "accept", quest = 4021, title = "Counterattack!", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.4, y = 28.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4021, itemName = "Piece of Krom'zar's Banner", count = 1, oi = 1, map = 1413, x = 44.3, y = 28.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4021, title = "Counterattack!", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3615, npcName = "Devrak", map = 1413, x = 51.5, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 878, title = "Tribes at War", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.6, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3261, title = "Jorn Skyseer", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.9, y = 59.1, f = "e" },
					{ t = "accept", quest = 882, title = "Ishamuhale", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.9, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 893, title = "Weapons of Choice", npc = 3433, npcName = "Tatternack Steelforge", map = 1413, x = 45.1, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 878, target = "Bristleback Water Seeker", count = 6, oi = 1, map = 1413, x = 52.2, y = 54.2, f = "e" },
					{ t = "kill", quest = 878, target = "Bristleback Thornweaver", count = 12, oi = 2, map = 1413, x = 52.2, y = 54.2, f = "e" },
					{ t = "kill", quest = 878, target = "Bristleback Geomancer", count = 12, oi = 3, map = 1413, x = 52.2, y = 54.2, f = "e" },
					{ t = "collect", item = 5075, itemName = "Blood Shard", count = 1, map = 1413, x = 52.2, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 10338, itemName = "Fresh Zhevra Carcass", count = 1, map = 1413, x = 53.2, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 882, itemName = "Ishamuhale's Fang", count = 1, oi = 1, map = 1413, x = 59.8, y = 30.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 16227, npcName = "Bragok", map = 1413, x = 63.1, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 878, title = "Tribes at War", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.6, y = 59.2, f = "e" },
					{ t = "accept", quest = 5052, title = "Blood Shards of Agamaggan", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.6, y = 59.2, f = "e" },
					{ t = "turnin", quest = 5052, title = "Blood Shards of Agamaggan", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.6, y = 59.2, f = "e" },
					{ t = "accept", quest = 879, title = "Betrayal from Within", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.6, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 882, title = "Ishamuhale", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.9, y = 59.1, f = "e" },
					{ t = "accept", quest = 907, title = "Enraged Thunder Lizards", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.9, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 907, itemName = "Thunder Lizard Blood", count = 3, oi = 1, map = 1413, x = 48.2, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 907, title = "Enraged Thunder Lizards", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.9, y = 59.1, f = "e" },
					{ t = "accept", quest = 913, title = "Cry of the Thunderhawk", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.9, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 913, itemName = "Thunderhawk Wings", count = 1, oi = 1, map = 1413, x = 46.4, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 913, title = "Cry of the Thunderhawk", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.9, y = 59.1, f = "e" },
					{ t = "accept", quest = 874, title = "Mahren Skyseer", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.9, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 868, itemName = "Silithid Egg", count = 12, oi = 1, map = 1413, x = 47.3, y = 70.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 843, title = "Gann's Reclamation", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 46.0, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 879, itemName = "Kuz's Skull", count = 1, oi = 1, map = 1413, x = 43.4, y = 80.5, f = "e" },
					{ t = "collect", quest = 893, itemName = "Razormane Backstabber", count = 1, oi = 1, map = 1413, x = 43.4, y = 80.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 893, itemName = "Charred Razormane Wand", count = 1, oi = 2, map = 1413, x = 42.0, y = 78.9, f = "e" },
					{ t = "collect", quest = 893, itemName = "Razormane War Shield", count = 1, oi = 3, map = 1413, x = 42.0, y = 78.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 41.1, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 879, itemName = "Lok's Skull", count = 1, oi = 3, map = 1413, x = 40.1, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 879, itemName = "Nak's Skull", count = 1, oi = 2, map = 1413, x = 43.9, y = 83.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 843, target = "Bael'dun Excavator", count = 15, oi = 1, map = 1413, x = 46.5, y = 85.2, f = "e" },
					{ t = "kill", quest = 843, target = "Bael'dun Foreman", count = 5, oi = 2, map = 1413, x = 46.5, y = 85.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 843, itemName = "Khazgorm's Journal", count = 1, oi = 3, map = 1413, x = 47.3, y = 84.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 843, title = "Gann's Reclamation", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 46.0, y = 79.1, f = "e" },
					{ t = "accept", quest = 846, title = "Revenge of Gann (1)", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 46.0, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 846, itemName = "Nitroglycerin", count = 6, oi = 1, map = 1413, x = 48.5, y = 84.6, f = "e" },
					{ t = "collect", quest = 846, itemName = "Wood Pulp", count = 6, oi = 2, map = 1413, x = 48.5, y = 84.6, f = "e" },
					{ t = "collect", quest = 846, itemName = "Sodium Nitrate", count = 6, oi = 3, map = 1413, x = 48.5, y = 84.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 846, title = "Revenge of Gann (1)", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 46.0, y = 79.1, f = "e" },
					{ t = "accept", quest = 849, title = "Revenge of Gann (2)", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 46.0, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 47.0, y = 85.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 849, title = "Revenge of Gann (2)", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 46.0, y = 79.1, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-home-cities-exalted-reputation-guide-part-8",
		pack = "guides",
		title = "Home Cities Exalted Reputation Guide (Parte 8/8)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 77,
		zone = 1420,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 893, title = "Weapons of Choice", npc = 3433, npcName = "Tatternack Steelforge", map = 1413, x = 45.1, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 879, title = "Betrayal from Within", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.6, y = 59.3, f = "e" },
					{ t = "accept", quest = 906, title = "Betrayal from Within", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.6, y = 59.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 10378, npcName = "Omusa Thunderhorn", map = 1413, x = 44.5, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 906, title = "Betrayal from Within", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 868, title = "Egg Hunt", npc = 3428, npcName = "Korran", map = 1413, x = 51.1, y = 29.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3615, npcName = "Devrak", map = 1413, x = 51.5, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 874, title = "Mahren Skyseer", npc = 3388, npcName = "Mahren Skyseer", map = 1413, x = 65.8, y = 43.9, f = "e" },
					{ t = "accept", quest = 873, title = "Isha Awak", npc = 3388, npcName = "Mahren Skyseer", map = 1413, x = 65.8, y = 43.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 873, itemName = "Heart of Isha Awak", count = 1, oi = 1, map = 1413, x = 63.4, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 873, title = "Isha Awak", npc = 3388, npcName = "Mahren Skyseer", map = 1413, x = 65.8, y = 43.9, f = "e" },
				},
			},
			{
				note = "Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-orc-champion-rank",
		pack = "guides",
		title = "Orc Champion Rank",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13707, title = "Valiant Of Orgrimmar", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
					{ t = "turnin", quest = 13707, title = "Valiant Of Orgrimmar", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
					{ t = "accept", quest = 13697, title = "The Valiant's Charge", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13762, title = "A Blade Fit For A Champion", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
					{ t = "accept", quest = 13763, title = "A Worthy Weapon", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
					{ t = "accept", quest = 13764, title = "The Edge Of Winter", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13765, title = "A Valiant's Field Training", npc = 33405, npcName = "Akinos", map = 118, x = 76.5, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13767, title = "The Grand Melee", npc = 33544, npcName = "Morah Worgsister", map = 118, x = 76.4, y = 24.6, f = "e" },
					{ t = "accept", quest = 13856, title = "At The Enemy's Gates", npc = 33544, npcName = "Morah Worgsister", map = 118, x = 76.4, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13762, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13763, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13764, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13856, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13856, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13856, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856",
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 75.5, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13767, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 26.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13762, title = "A Blade Fit For A Champion", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
					{ t = "turnin", quest = 13763, title = "A Worthy Weapon", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
					{ t = "turnin", quest = 13764, title = "The Edge Of Winter", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13765, title = "A Valiant's Field Training", npc = 33405, npcName = "Akinos", map = 118, x = 76.5, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13767, title = "The Grand Melee", npc = 33544, npcName = "Morah Worgsister", map = 118, x = 76.4, y = 24.6, f = "e" },
					{ t = "turnin", quest = 13856, title = "At The Enemy's Gates", npc = 33544, npcName = "Morah Worgsister", map = 118, x = 76.4, y = 24.6, f = "e" },
				},
			},
			{
				note = "Make sure you have 25 Valiant Seals:",
				goals = {
					{ t = "collect", quest = 13697, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13697, title = "The Valiant's Charge", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
					{ t = "accept", quest = 13726, title = "The Valiant's Challenge", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 72.2, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33518, npcName = "Squire Danny", map = 118, x = 68.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13726, title = "The Valiant's Challenge", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
				},
			},
		},
	})
end

