-- TuWoW_Leveling — Guides/Leveling_Horde_27.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-50-55-part-2",
		pack = "guides",
		title = "Levels (50-55) (Parte 2/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-levels-50-55-part-3",
		author = "TuWoW & Zygor",
		minLevel = 50,
		maxLevel = 55,
		zone = 1446,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", map = 1447, x = 47.6, y = 61.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1447, x = 47.9, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1447, x = 48.6, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1447, x = 47.4, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1447, x = 43.3, y = 47.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3517, title = "Stealing Knowledge", npc = 8587, npcName = "Jediga", map = 1447, x = 22.6, y = 51.4, f = "e" },
					{ t = "accept", quest = 3518, title = "Delivery to Magatha", npc = 8587, npcName = "Jediga", map = 1447, x = 22.6, y = 51.4, f = "e" },
					{ t = "accept", quest = 3541, title = "Delivery to Jes'rimon", npc = 8587, npcName = "Jediga", map = 1447, x = 22.6, y = 51.4, f = "e" },
					{ t = "accept", quest = 3542, title = "Delivery to Andron Gant", npc = 8587, npcName = "Jediga", map = 1447, x = 22.6, y = 51.4, f = "e" },
					{ t = "accept", quest = 3561, title = "Delivery to Archmage Xylem", npc = 8587, npcName = "Jediga", map = 1447, x = 22.6, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3503, title = "Meeting with the Master", npc = 8395, npcName = "Sanath Lim-yo", map = 1447, x = 28.1, y = 50.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3561, title = "Delivery to Archmage Xylem", npc = 8379, npcName = "Archmage Xylem", map = 1447, x = 29.4, y = 40.4, f = "e" },
					{ t = "accept", quest = 3565, title = "Xylem's Payment to Jediga", npc = 8379, npcName = "Archmage Xylem", map = 1447, x = 29.4, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3421, title = "Return Trip", npc = 8399, npcName = "Nyrill", map = 1447, x = 26.5, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3565, title = "Xylem's Payment to Jediga", npc = 8587, npcName = "Jediga", map = 1447, x = 22.6, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1447, x = 53.9, y = 18.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3601, title = "Kim'jael Indeed!", npc = 8420, npcName = "Kim'jael", map = 1447, x = 53.5, y = 21.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 3505, target = "Blood Elf Reclaimer", count = 10, oi = 2, map = 1447, x = 56.0, y = 25.0, f = "e" },
					{ t = "kill", quest = 3505, target = "Blood Elf Surveyor", count = 10, oi = 3, map = 1447, x = 56.0, y = 25.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3601, itemName = "Kim'Jael's Compass", count = 1, oi = 1, map = 1447, x = 58.5, y = 25.0, f = "e" },
					{ t = "collect", quest = 3601, itemName = "Kim'Jael's Scope", count = 1, oi = 2, map = 1447, x = 58.5, y = 25.0, f = "e" },
					{ t = "collect", quest = 3601, itemName = "Kim'Jael's Stuffed Chicken", count = 1, oi = 3, map = 1447, x = 58.5, y = 25.0, f = "e" },
					{ t = "collect", quest = 3601, itemName = "Kim'Jael's Wizzlegoober", count = 1, oi = 4, map = 1447, x = 58.5, y = 25.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1447, x = 59.5, y = 31.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3505, title = "Betrayed (2)", map = 1447, x = 59.5, y = 31.3, f = "e" },
					{ t = "accept", quest = 3506, title = "Betrayed (3)", map = 1447, x = 59.5, y = 31.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3506, itemName = "Head of Magus Rimtori", count = 1, oi = 1, map = 1447, x = 59.5, y = 31.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3601, title = "Kim'jael Indeed!", npc = 8420, npcName = "Kim'jael", map = 1447, x = 53.5, y = 21.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3506, title = "Betrayed (3)", npc = 8576, npcName = "Ag'tor Bloodfist", map = 1447, x = 22.3, y = 51.5, f = "e" },
					{ t = "accept", quest = 3507, title = "Betrayed (4)", npc = 8576, npcName = "Ag'tor Bloodfist", map = 1447, x = 22.3, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3518, title = "Delivery to Magatha", npc = 4046, npcName = "Magatha Grimtotem", map = 1456, x = 69.9, y = 30.9, f = "e" },
					{ t = "accept", quest = 3562, title = "Magatha's Payment to Jediga", npc = 4046, npcName = "Magatha Grimtotem", map = 1456, x = 69.9, y = 30.9, f = "e" },
				},
			},
			{
				note = "Hearth to Orgrimmar|goto Orgrimmar|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3541, title = "Delivery to Jes'rimon", npc = 8659, npcName = "Jes'rimon", map = 1456, x = 55.6, y = 34.1, f = "e" },
					{ t = "accept", quest = 3563, title = "Jes'rimon's Payment to Jediga", npc = 8659, npcName = "Jes'rimon", map = 1456, x = 55.6, y = 34.1, f = "e" },
					{ t = "accept", quest = 4300, title = "Bone-Bladed Weapons", npc = 8659, npcName = "Jes'rimon", map = 1456, x = 55.6, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3507, title = "Betrayed (4)", npc = 4485, npcName = "Belgrom Rockmaul", map = 1456, x = 75.2, y = 34.2, f = "e" },
				},
			},
			{
				note = "Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c",
				goals = {
					{ t = "goto", map = 1411, x = 50.8, y = 13.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3542, title = "Delivery to Andron Gant", npc = 6522, npcName = "Andron Gant", map = 1458, x = 54.8, y = 75.4, f = "e" },
					{ t = "accept", quest = 3564, title = "Andron's Payment to Jediga", npc = 6522, npcName = "Andron Gant", map = 1458, x = 54.8, y = 75.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3568, title = "Seeping Corruption (1)", npc = 8390, npcName = "Chemist Cuely", map = 1458, x = 48.4, y = 71.8, f = "e" },
					{ t = "accept", quest = 3569, title = "Seeping Corruption (2)", npc = 8390, npcName = "Chemist Cuely", map = 1458, x = 48.4, y = 71.8, f = "e" },
					{ t = "turnin", quest = 3569, title = "Seeping Corruption (2)", npc = 8393, npcName = "Thersa Windsong", map = 1458, x = 48.4, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 864, title = "Return to Apothecary Zinge", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 49.9, y = 68.4, f = "e" },
					{ t = "accept", quest = 4133, title = "Vivian Lagrave", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 49.9, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4293, title = "A Sample of Slime...", npc = 10136, npcName = "Chemist Fuely", map = 1458, x = 47.5, y = 73.1, f = "e" },
					{ t = "accept", quest = 4294, title = "... and a Batch of Ooze", npc = 10136, npcName = "Chemist Fuely", map = 1458, x = 47.5, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7815, title = "Snapjaws, Mon!", npc = 14740, npcName = "Katoom the Angler", map = 1425, x = 80.3, y = 81.4, f = "e" },
					{ t = "accept", quest = 7816, title = "Gammerita, Mon!", npc = 14740, npcName = "Katoom the Angler", map = 1425, x = 80.3, y = 81.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7840, title = "Lard Lost His Lunch", npc = 14731, npcName = "Lard", map = 1425, x = 78.2, y = 81.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 7815, target = "Saltwater Snapjaw", count = 10, oi = 1, map = 1425, x = 78.0, y = 69.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 7816, itemName = "Katoom's Best Lure", count = 1, oi = 1, map = 1425, x = 79.0, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 626, title = "Cortello's Riddle (3)", map = 1425, x = 80.8, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 7840, itemName = "Lard's Lunch", count = 1, oi = 1, map = 1425, x = 84.3, y = 41.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7840, title = "Lard Lost His Lunch", npc = 14731, npcName = "Lard", map = 1425, x = 78.2, y = 81.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7815, title = "Snapjaws, Mon!", npc = 14740, npcName = "Katoom the Angler", map = 1425, x = 80.3, y = 81.4, f = "e" },
					{ t = "turnin", quest = 7816, title = "Gammerita, Mon!", npc = 14740, npcName = "Katoom the Angler", map = 1425, x = 80.3, y = 81.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2641, itemName = "Violet Tragan", count = 1, oi = 1, map = 1425, x = 41.0, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 53, f = "e" },
				},
			},
			{
				note = "Hearth to Orgrimmar|goto Orgrimmar|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3562, title = "Magatha's Payment to Jediga", npc = 8587, npcName = "Jediga", map = 1447, x = 22.6, y = 51.4, f = "e" },
					{ t = "turnin", quest = 3563, title = "Jes'rimon's Payment to Jediga", npc = 8587, npcName = "Jediga", map = 1447, x = 22.6, y = 51.4, f = "e" },
					{ t = "turnin", quest = 3564, title = "Andron's Payment to Jediga", npc = 8587, npcName = "Jediga", map = 1447, x = 22.6, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2581, title = "Snickerfang Jowls", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.6, y = 14.2, f = "e" },
					{ t = "accept", quest = 2583, title = "A Boar's Vitality", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.6, y = 14.2, f = "e" },
					{ t = "accept", quest = 2585, title = "The Decisive Striker", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.6, y = 14.2, f = "e" },
					{ t = "accept", quest = 2601, title = "The Basilisk's Bite", npc = 7506, npcName = "Bloodmage Lynnore", map = 1419, x = 50.6, y = 14.2, f = "e" },
					{ t = "accept", quest = 2603, title = "Vulture's Vigor", npc = 7506, npcName = "Bloodmage Lynnore", map = 1419, x = 50.6, y = 14.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2581, title = "Snickerfang Jowls", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.6, y = 14.2, f = "e" },
					{ t = "turnin", quest = 2583, title = "A Boar's Vitality", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.6, y = 14.2, f = "e" },
					{ t = "turnin", quest = 2585, title = "The Decisive Striker", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.6, y = 14.2, f = "e" },
					{ t = "turnin", quest = 2601, title = "The Basilisk's Bite", npc = 7506, npcName = "Bloodmage Lynnore", map = 1419, x = 50.6, y = 14.2, f = "e" },
					{ t = "turnin", quest = 2603, title = "Vulture's Vigor", npc = 7506, npcName = "Bloodmage Lynnore", map = 1419, x = 50.6, y = 14.2, f = "e" },
				},
			},
			{
				note = "Hearth to Orgrimmar|goto Orgrimmar|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				note = "Buy a Mithril Casing from the Auction House",
				goals = {
					{ t = "buy", itemName = "Mithril Casing", count = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 32, title = "Rise of the Silithid", npc = 7010, npcName = "Zilzibin Drumlore", map = 1419, x = 56.5, y = 46.5, f = "e" },
					{ t = "accept", quest = 4494, title = "March of the Silithid", npc = 7010, npcName = "Zilzibin Drumlore", map = 1419, x = 56.5, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2641, title = "Sprinkle's Secret Ingredient", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.1, y = 26.9, f = "e" },
					{ t = "accept", quest = 2661, title = "Delivery for Marin", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.1, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2661, title = "Delivery for Marin", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.8, y = 28.6, f = "e" },
					{ t = "accept", quest = 2662, title = "Noggenfogger Elixir", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.8, y = 28.6, f = "e" },
					{ t = "turnin", quest = 2662, title = "Noggenfogger Elixir", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.8, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3444, title = "The Stone Circle", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.7, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4494, title = "March of the Silithid", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.9, y = 27.0, f = "e" },
					{ t = "accept", quest = 4496, title = "Bungle in the Jungle", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.9, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4289, title = "The Apes of Un'Goro", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
					{ t = "accept", quest = 4290, title = "The Fare of Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
				},
			},
			{
				note = "While questing in Un'Goro Crater, look for the following items on the ground: Kill every ooze you see in Un'Goro Crater",
				goals = {
					{ t = "collect", itemName = "Un'Goro Slime Samples", count = 15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "A Mangled Journal", count = 1, map = 1446, x = 68.0, y = 76.0, f = "e" },
					{ t = "accept", quest = 3884, title = "Williden's Journal", map = 1446, x = 68.0, y = 76.0, f = "e" },
					{ t = "collect", quest = 4300, itemName = "White Ravasaur Claw", count = 8, oi = 1, map = 1446, x = 68.0, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3844, title = "It's a Secret to Everybody (1)", map = 1446, x = 63.0, y = 68.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3844, title = "It's a Secret to Everybody (1)", map = 1446, x = 63.1, y = 69.1, f = "e" },
					{ t = "accept", quest = 3845, title = "It's a Secret to Everybody (2)", map = 1446, x = 63.1, y = 69.1, f = "e" },
					{ t = "collect", quest = 3845, itemName = "Large Compass", count = 1, oi = 1, map = 1446, x = 63.1, y = 69.1, f = "e" },
					{ t = "collect", quest = 3845, itemName = "Curled Map Parchment", count = 1, oi = 2, map = 1446, x = 63.1, y = 69.1, f = "e" },
					{ t = "collect", quest = 3845, itemName = "Lion-headed Key", count = 1, oi = 3, map = 1446, x = 63.1, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4290, itemName = "Piece of Threshadon Carcass", count = 1, oi = 1, map = 1446, x = 68.6, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4290, title = "The Fare of Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
					{ t = "accept", quest = 4291, title = "The Scent of Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4291, itemName = "Ravasaur Pheromone Gland", count = 2, oi = 1, map = 1446, x = 67.3, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4291, title = "The Scent of Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
					{ t = "accept", quest = 4292, title = "The Bait for Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4292, itemName = "Lar'korwi's Head", count = 1, oi = 1, map = 1446, x = 79.9, y = 49.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4289, itemName = "Un'Goro Gorilla Pelt", count = 2, oi = 1, map = 1446, x = 66.0, y = 16.0, f = "e" },
					{ t = "collect", quest = 4289, itemName = "Un'Goro Stomper Pelt", count = 2, oi = 2, map = 1446, x = 66.0, y = 16.0, f = "e" },
					{ t = "collect", quest = 4289, itemName = "Un'Goro Thunderer Pelt", count = 2, oi = 3, map = 1446, x = 66.0, y = 16.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4243, title = "Chasing A-Me 01 (1)", npc = 9618, npcName = "Karna Remtravel", map = 1446, x = 46.4, y = 13.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3845, title = "It's a Secret to Everybody (2)", npc = 8737, npcName = "Linken", map = 1446, x = 44.7, y = 8.1, f = "e" },
					{ t = "accept", quest = 3908, title = "It's a Secret to Everybody (3)", npc = 8737, npcName = "Linken", map = 1446, x = 44.7, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4145, title = "Larion and Muigin", npc = 9118, npcName = "Larion", map = 1446, x = 45.5, y = 8.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Marshal's Refuge", map = 1446, x = 45.2, y = 5.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3884, title = "Williden's Journal", npc = 9270, npcName = "Williden Marshal", map = 1446, x = 43.9, y = 7.2, f = "e" },
					{ t = "accept", quest = 3881, title = "Expedition Salvation", npc = 9270, npcName = "Williden Marshal", map = 1446, x = 43.9, y = 7.2, f = "e" },
					{ t = "accept", quest = 3883, title = "Alien Ecology", npc = 9271, npcName = "Hol'anyee Marshal", map = 1446, x = 43.9, y = 7.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3882, title = "Roll the Bones", npc = 9272, npcName = "Spark Nilminer", map = 1446, x = 43.6, y = 7.3, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 41.9,2.7",
				goals = {
					{ t = "accept", quest = 4284, title = "Crystals of Power", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
					{ t = "turnin", quest = 4284, title = "Crystals of Power", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
					{ t = "accept", quest = 4285, title = "The Northern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
					{ t = "accept", quest = 4287, title = "The Eastern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
					{ t = "accept", quest = 4288, title = "The Western Pylon", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4501, title = "Beware of Pterrordax", map = 1446, x = 43.6, y = 8.4, f = "e" },
					{ t = "accept", quest = 4492, title = "Lost!", npc = 9997, npcName = "Spraggle Frock", map = 1446, x = 43.6, y = 8.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4503, title = "Shizzle's Flyer", npc = 9998, npcName = "Shizzle", map = 1446, x = 44.2, y = 11.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4504, itemName = "Super Sticky Tar", count = 12, oi = 1, map = 1446, x = 47.0, y = 19.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4145, target = "Bloodpetal Flayer", count = 5, oi = 3, map = 1446, x = 44.4, y = 26.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 56.5, y = 12.4, f = "e" },
				},
			},
			{
				note = "Kill Pterrordaxes",
				goals = {
					{ t = "collect", quest = 4503, itemName = "Webbed Pterrordax Scale", count = 8, oi = 2, map = 1446, x = 57.0, y = 9.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4243, title = "Chasing A-Me 01 (1)", npc = 9623, npcName = "A-Me 01", map = 1446, x = 67.6, y = 16.8, f = "e" },
					{ t = "accept", quest = 4244, title = "Chasing A-Me 01 (2)", npc = 9623, npcName = "A-Me 01", map = 1446, x = 67.6, y = 16.8, f = "e" },
					{ t = "turnin", quest = 4244, title = "Chasing A-Me 01 (2)", npc = 9623, npcName = "A-Me 01", map = 1446, x = 67.6, y = 16.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4503, itemName = "Webbed Diemetradon Scale", count = 8, oi = 1, map = 1446, x = 67.0, y = 33.0, f = "e" },
					{ t = "collect", quest = 3882, itemName = "Dinosaur Bone", count = 8, oi = 1, map = 1446, x = 67.0, y = 33.0, f = "e" },
					{ t = "kill", quest = 4145, target = "Bloodpetal Lasher", count = 5, oi = 1, map = 1446, x = 67.0, y = 33.0, f = "e" },
					{ t = "kill", quest = 4145, target = "Bloodpetal Thresher", count = 5, oi = 4, map = 1446, x = 67.0, y = 33.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3881, itemName = "Crate of Foodstuffs", count = 1, oi = 1, map = 1446, x = 68.5, y = 36.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 77.2, y = 49.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4289, title = "The Apes of Un'Goro", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
					{ t = "accept", quest = 4301, title = "The Mighty U'cha", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
					{ t = "turnin", quest = 4292, title = "The Bait for Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 50.4, y = 77.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3883, itemName = "Hive Wall Sample", count = 1, oi = 1, map = 1449, x = 48.6, y = 85.2, f = "e" },
				},
			},
			{
				note = "Go out of the hive to 48.8,77.6",
				goals = {
					{ t = "collect", quest = 4496, itemName = "Gorishi Scent Gland", count = 1, oi = 1, map = 1449, x = 48.8, y = 77.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4145, target = "Bloodpetal Trapper", count = 5, oi = 2, map = 1449, x = 49.0, y = 69.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3881, itemName = "Research Equipment", count = 1, oi = 2, map = 1449, x = 38.5, y = 66.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 23.8, y = 59.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-50-55-part-3",
		pack = "guides",
		title = "Levels (50-55) (Parte 3/3)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 50,
		maxLevel = 55,
		zone = 1446,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", quest = 4501, target = "Frenzied Pterrordax", count = 15, oi = 1, map = 1449, x = 21.0, y = 59.0, f = "e" },
				},
			},
			{
				note = "Make sure you have 15 Un'Goro Slime Samples Make sure you have 25 Un'Goro Soil",
				goals = {
					{ t = "collect", quest = 4294, item = 12235, itemName = "Un'Goro Slime Sample", count = 15, f = "e" },
					{ t = "collect", quest = 4496, item = 11018, itemName = "Un'Goro Soil", count = 5, f = "e" },
					{ t = "collect", quest = 3761, item = 11018, itemName = "Un'Goro Soil", count = 25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 974, title = "Finding the Source", npc = 10302, npcName = "Krakle", map = 1449, x = 30.9, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 52.7, y = 42.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 49.7, y = 45.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4502, itemName = "Un'Goro Ash", count = 9, oi = 1, map = 1449, x = 46.6, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 974, title = "Finding the Source", npc = 10302, npcName = "Krakle", map = 1449, x = 30.9, y = 50.4, f = "e" },
					{ t = "accept", quest = 980, title = "The New Springs", npc = 10302, npcName = "Krakle", map = 1449, x = 30.9, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 54.4, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4492, title = "Lost!", npc = 9999, npcName = "Ringo", map = 1449, x = 51.9, y = 49.9, f = "e" },
					{ t = "accept", quest = 4491, title = "A Little Help From My Friends", npc = 9999, npcName = "Ringo", map = 1449, x = 51.9, y = 49.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4491, title = "A Little Help From My Friends", npc = 9997, npcName = "Spraggle Frock", map = 1449, x = 43.6, y = 8.4, f = "e" },
					{ t = "turnin", quest = 4501, title = "Beware of Pterrordax", npc = 9997, npcName = "Spraggle Frock", map = 1449, x = 43.6, y = 8.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3882, title = "Roll the Bones", npc = 9272, npcName = "Spark Nilminer", map = 1449, x = 43.6, y = 7.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3881, title = "Expedition Salvation", npc = 9270, npcName = "Williden Marshal", map = 1449, x = 43.9, y = 7.2, f = "e" },
					{ t = "turnin", quest = 3883, title = "Alien Ecology", npc = 9271, npcName = "Hol'anyee Marshal", map = 1449, x = 43.9, y = 7.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 55, f = "e" },
				},
			},
		},
	})
end

