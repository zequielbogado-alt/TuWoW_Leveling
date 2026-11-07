-- TuWoW_Leveling — Guides/Leveling_Horde_22.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-40-45",
		pack = "guides",
		title = "Levels (40-45) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-levels-40-45-part-2",
		author = "TuWoW & Zygor",
		minLevel = 40,
		maxLevel = 45,
		zone = 1434,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", quest = 196, target = "Jungle Stalker", count = 10, oi = 1, map = 1434, x = 33.7, y = 37.3, f = "e" },
					{ t = "collect", quest = 572, itemName = "Jungle Stalker Feather", count = 10, oi = 1, map = 1434, x = 33.7, y = 37.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 600, itemName = "Singing Blue Crystal", count = 10, oi = 1, map = 1434, x = 41.1, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 577, itemName = "Snapjaw Crocolisk Skin", count = 5, oi = 1, map = 1434, x = 39.9, y = 27.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 188, itemName = "Paw of Sin'Dall", count = 1, oi = 1, map = 1434, x = 32.2, y = 17.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 196, title = "Raptor Mastery (3)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "accept", quest = 197, title = "Raptor Mastery (4)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "turnin", quest = 188, title = "Tiger Mastery (4)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "turnin", quest = 192, title = "Panther Mastery (3)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "accept", quest = 193, title = "Panther Mastery (4)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.6, y = 10.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 572, title = "Mok'thardin's Enchantment (2)", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1434, x = 32.1, y = 29.2, f = "e" },
					{ t = "accept", quest = 571, title = "Mok'thardin's Enchantment (3)", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1434, x = 32.1, y = 29.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 193, itemName = "Fang of Bhag'thera", count = 1, oi = 1, map = 1434, x = 50.0, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 193, title = "Panther Mastery (4)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.6, y = 10.6, f = "e" },
				},
			},
			{
				note = "Hearth to Booty Bay,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "goto", map = 1434, x = 27.1, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 600, title = "Venture Company Mining", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.1, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 577, title = "Some Assembly Required", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.3, y = 77.6, f = "e" },
					{ t = "accept", quest = 628, title = "Excelsior", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.3, y = 77.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 595, title = "The Bloodsail Buccaneers (1)", map = 1434, x = 27.3, y = 69.5, f = "e" },
					{ t = "accept", quest = 597, title = "The Bloodsail Buccaneers (2)", map = 1434, x = 27.3, y = 69.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 606, itemName = "Mistvale Giblets", count = 5, oi = 1, map = 1434, x = 31.6, y = 67.3, f = "e" },
					{ t = "collect", quest = 571, itemName = "Aged Gorilla Sinew", count = 1, oi = 1, map = 1434, x = 31.6, y = 67.3, f = "e" },
				},
			},
			{
				note = "Go inside Booty Bay to 26.9,73.6",
				goals = {
					{ t = "turnin", quest = 606, title = "Scaring Shaky", npc = 2502, npcName = "\"Shaky\" Phillipe", map = 1434, x = 26.9, y = 73.6, f = "e" },
					{ t = "accept", quest = 607, title = "Return to MacKinley", npc = 2502, npcName = "\"Shaky\" Phillipe", map = 1434, x = 26.9, y = 73.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 597, title = "The Bloodsail Buccaneers (2)", npc = 2490, npcName = "First Mate Crazz", map = 1434, x = 28.1, y = 76.2, f = "e" },
					{ t = "accept", quest = 599, title = "The Bloodsail Buccaneers (3)", npc = 2490, npcName = "First Mate Crazz", map = 1434, x = 28.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 607, title = "Return to MacKinley", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.8, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 599, title = "The Bloodsail Buccaneers (3)", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.2, y = 76.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 571, title = "Mok'thardin's Enchantment (3)", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1434, x = 32.1, y = 29.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Elder Saltwater Crocolisk", count = 1, map = 1434, x = 30.0, y = 26.0, f = "e" },
					{ t = "collect", quest = 628, itemName = "Elder Crocolisk Skin", count = 1, oi = 1, map = 1434, x = 30.0, y = 26.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 628, title = "Excelsior", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.3, y = 77.6, f = "e" },
				},
			},
			{
				note = "Buy the following items from the Auction House:",
				goals = {
					{ t = "buy", itemName = "Healing Potion", count = 1, f = "e" },
					{ t = "buy", itemName = "Lesser Invisibility Potion", count = 1, f = "e" },
					{ t = "buy", itemName = "Gyrochronatom", count = 1, f = "e" },
					{ t = "buy", itemName = "Frost Oil", count = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1106, title = "Martek the Exiled", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.4, y = 52.8, f = "e" },
					{ t = "accept", quest = 1108, title = "Indurium", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.4, y = 52.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 710, title = "Study of the Elements: Rock (1)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 713, title = "Coolant Heads Prevail", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "turnin", quest = 713, title = "Coolant Heads Prevail", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 714, title = "Gyro... What?", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "turnin", quest = 714, title = "Gyro... What?", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 715, title = "Liquid Stone", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "turnin", quest = 715, title = "Liquid Stone", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.9, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 710, itemName = "Small Stone Shard", count = 10, oi = 1, map = 1418, x = 22.9, y = 44.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 710, title = "Study of the Elements: Rock (1)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 711, title = "Study of the Elements: Rock (2)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Kargath", map = 1418, x = 4.0, y = 44.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2258, title = "Badlands Reagent Run", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.4, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9439, title = "Unclaimed Baggage", npc = 17097, npcName = "Advisor Sarophas", map = 1418, x = 6.0, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1419, title = "Coyote Thieves", npc = 5394, npcName = "Neeka Bloodscar", map = 1418, x = 6.5, y = 47.2, f = "e" },
					{ t = "accept", quest = 1420, title = "Report to Helgrum", npc = 5394, npcName = "Neeka Bloodscar", map = 1418, x = 6.5, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2258, itemName = "Buzzard Gizzard", count = 5, oi = 1, map = 1418, x = 17.4, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2258, itemName = "Rock Elemental Shard", count = 5, oi = 3, map = 1418, x = 20.0, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2258, itemName = "Crag Coyote Fang", count = 10, oi = 2, map = 1418, x = 21.7, y = 53.1, f = "e" },
					{ t = "collect", quest = 1419, itemName = "Coyote Jawbone", count = 30, oi = 1, map = 1418, x = 21.7, y = 53.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 711, itemName = "Large Stone Slab", count = 3, oi = 1, map = 1418, x = 38.2, y = 72.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1108, itemName = "Indurium Flake", count = 10, oi = 1, map = 1418, x = 48.1, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1108, title = "Indurium", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.4, y = 52.8, f = "e" },
					{ t = "accept", quest = 1137, title = "News for Fizzle", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.4, y = 52.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9439, itemName = "Advisor's Pack", count = 1, oi = 1, map = 1418, x = 41.1, y = 29.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9439, itemName = "Advisor's Rapier", count = 1, oi = 2, map = 1418, x = 41.7, y = 26.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 711, title = "Study of the Elements: Rock (2)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 712, title = "Study of the Elements: Rock (3)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9439, title = "Unclaimed Baggage", npc = 17097, npcName = "Advisor Sarophas", map = 1418, x = 6.0, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1419, title = "Coyote Thieves", npc = 5394, npcName = "Neeka Bloodscar", map = 1418, x = 6.5, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2258, title = "Badlands Reagent Run", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.4, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1418, x = 8.9, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 712, itemName = "Bracers of Rock Binding", count = 5, oi = 1, map = 1418, x = 3.7, y = 78.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 712, title = "Study of the Elements: Rock (3)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 734, title = "This Is Going to Be Hard (1)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "turnin", quest = 734, title = "This Is Going to Be Hard (1)", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 777, title = "This Is Going to Be Hard (2)", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.9, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 777, title = "This Is Going to Be Hard (2)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 778, title = "This Is Going to Be Hard (3)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "collect", quest = 778, itemName = "Lotwil's Shackles of Elemental Binding", count = 1, oi = 1, map = 1418, x = 25.9, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 778, title = "This Is Going to Be Hard (3)", npc = 2921, npcName = "Lotwil Veriatus", f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1372, title = "Nothing But The Truth (1)", npc = 5418, npcName = "Deathstalker Zraedus", map = 1431, x = 87.6, y = 35.5, f = "e" },
					{ t = "turnin", quest = 1372, title = "Nothing But The Truth (1)", npc = 5414, npcName = "Apothecary Faustin", map = 1431, x = 87.6, y = 35.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 698, title = "Lack of Surplus (1)", npc = 5591, npcName = "Dar", map = 1435, x = 44.7, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Stonard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Stonard", map = 1435, x = 46.1, y = 54.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1420, title = "Report to Helgrum", npc = 1442, npcName = "Helgrum the Swift", map = 1435, x = 47.9, y = 55.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 698, itemName = "Unprepared Sawtooth Flank", count = 8, oi = 1, map = 1435, x = 82.2, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 698, title = "Lack of Surplus (1)", npc = 5592, npcName = "Tok'Kar", map = 1435, x = 81.3, y = 81.0, f = "e" },
					{ t = "accept", quest = 699, title = "Lack of Surplus (2)", npc = 5592, npcName = "Tok'Kar", map = 1435, x = 81.3, y = 81.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 699, itemName = "Sawtooth Snapper Claw", count = 6, oi = 1, map = 1435, x = 82.2, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 699, title = "Lack of Surplus (2)", npc = 5592, npcName = "Tok'Kar", map = 1435, x = 81.3, y = 81.0, f = "e" },
					{ t = "accept", quest = 1422, title = "Threat From the Sea (1)", npc = 5592, npcName = "Tok'Kar", map = 1435, x = 81.3, y = 81.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1422, title = "Threat From the Sea (1)", npc = 5593, npcName = "Katar", map = 1435, x = 83.8, y = 80.4, f = "e" },
					{ t = "accept", quest = 1426, title = "Threat From the Sea (2)", npc = 5593, npcName = "Katar", map = 1435, x = 83.8, y = 80.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1426, target = "Marsh Murloc", count = 10, oi = 1, map = 1435, x = 86.0, y = 80.8, f = "e" },
					{ t = "kill", quest = 1426, target = "Marsh Inkspewer", count = 10, oi = 2, map = 1435, x = 86.0, y = 80.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1426, target = "Marsh Flesheater", count = 10, oi = 3, map = 1435, x = 91.0, y = 72.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1426, title = "Threat From the Sea (2)", npc = 5593, npcName = "Katar", map = 1435, x = 83.8, y = 80.4, f = "e" },
					{ t = "accept", quest = 1427, title = "Threat From the Sea (3)", npc = 5593, npcName = "Katar", map = 1435, x = 83.8, y = 80.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1427, title = "Threat From the Sea (3)", npc = 5592, npcName = "Tok'Karr", map = 1435, x = 81.3, y = 81.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1428, title = "Continued Threat", npc = 5593, npcName = "Katar", map = 1435, x = 83.8, y = 80.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1428, target = "Marsh Inkspewer", count = 10, oi = 1, map = 1435, x = 86.8, y = 78.7, f = "e" },
					{ t = "kill", quest = 1428, target = "Marsh Flesheater", count = 10, oi = 2, map = 1435, x = 86.8, y = 78.7, f = "e" },
				},
			},
			{
				note = "Go into the cave at 66,76",
				goals = {
					{ t = "kill", quest = 1428, target = "Marsh Oracle", count = 10, oi = 3, map = 1435, x = 66.3, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1428, title = "Continued Threat", npc = 5593, npcName = "Katar", map = 1435, x = 83.8, y = 80.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 573, title = "Mok'thardin's Enchantment (4)", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1434, x = 32.1, y = 29.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 604, title = "The Bloodsail Buccaneers (4)", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.2, y = 76.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2864, title = "Tran'rek", npc = 773, npcName = "Krazek", map = 1434, x = 27.0, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 587, title = "Up to Snuff", npc = 2488, npcName = "Deeg", map = 1434, x = 26.9, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 580, title = "Whiskey Slim's Lost Grog", npc = 2491, npcName = "Whiskey Slim", map = 1434, x = 27.1, y = 77.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Booty Bay", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 617, title = "Akiris by the Bundle", npc = 2494, npcName = "Privateer Bloads", map = 1434, x = 26.8, y = 76.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 609, title = "Voodoo Dues", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.8, y = 77.1, f = "e" },
					{ t = "accept", quest = 2872, title = "Stoley's Debt", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.8, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 576, title = "Keep An Eye Out", npc = 2493, npcName = "Dizzy One-Eye", map = 1434, x = 28.6, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 587, itemName = "Snuff", count = 15, oi = 1, map = 1434, x = 33.0, y = 75.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 604, target = "Bloodsail Swashbuckler", count = 10, oi = 1, map = 1434, x = 31.9, y = 78.6, f = "e" },
					{ t = "collect", quest = 576, itemName = "Dizzy's Eye", count = 1, oi = 1, map = 1434, x = 31.9, y = 78.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 604, itemName = "Bloodsail Orders", count = 1, oi = 3, map = 1434, x = 29.6, y = 80.9, f = "e" },
					{ t = "collect", quest = 604, itemName = "Bloodsail Charts", count = 1, oi = 2, map = 1434, x = 29.6, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 573, target = "Naga Explorer", count = 10, oi = 1, map = 1434, x = 26.0, y = 61.7, f = "e" },
					{ t = "collect", quest = 617, itemName = "Akiris Reed", count = 10, oi = 1, map = 1434, x = 26.0, y = 61.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 573, itemName = "Holy Spring Water", count = 1, oi = 2, map = 1434, x = 28.9, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 609, itemName = "Jon-Jon's Golden Spyglass", count = 1, oi = 2, map = 1434, x = 34.8, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 609, itemName = "Maury's Clubbed Foot", count = 1, oi = 1, map = 1434, x = 35.2, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 609, itemName = "Chucky's Huge Ring", count = 1, oi = 3, map = 1434, x = 40.1, y = 58.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 621, itemName = "Zanzil's Mixture", count = 12, oi = 1, map = 1434, x = 39.0, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 43, f = "e" },
				},
			},
		},
	})
end

