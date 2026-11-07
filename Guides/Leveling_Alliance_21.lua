-- TuWoW_Leveling — Guides/Leveling_Alliance_21.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-35-40",
		pack = "guides",
		title = "Levels (35-40) (Parte 1/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-35-40-part-2",
		author = "TuWoW & Zygor",
		minLevel = 35,
		maxLevel = 40,
		zone = 1441,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 1104, itemName = "Salty Scorpid Venom", count = 6, oi = 1, map = 1441, x = 72.4, y = 72.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1110, title = "Rocket Car Parts", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.8, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1105, title = "Hardened Shells", npc = 4453, npcName = "Wizzle Brassbolts", map = 1441, x = 78.1, y = 77.1, f = "e" },
					{ t = "turnin", quest = 1104, title = "Salt Flat Venom", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.1, y = 77.1, f = "e" },
					{ t = "accept", quest = 1106, title = "Martek the Exiled", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.1, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1176, title = "Load Lightening", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.2, y = 75.9, f = "e" },
					{ t = "accept", quest = 1178, title = "Goblin Sponsorship (1)", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.2, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1175, title = "A Bump in the Road", npc = 4629, npcName = "Trackmaster Zherin", map = 1441, x = 81.6, y = 77.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Gadgetzan", map = 1446, x = 51.0, y = 29.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 525, title = "Further Mysteries", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.1, y = 59.1, f = "e" },
				},
			},
			{
				note = "Ride the boat to Theramore|goto Dustwallow Marsh,67.5,50.3,9|noway|c",
				goals = {
					{ t = "goto", map = 1437, x = 5.1, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Theramore", map = 1445, x = 67.5, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1443, x = 67.5, y = 15.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1437, title = "Vahlarriel's Search (1)", npc = 5642, npcName = "Vahlarriel Demonslayer", map = 1443, x = 66.4, y = 11.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1453, title = "Reclaimers' Business in Desolace", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.6, f = "e" },
					{ t = "accept", quest = 1458, title = "Reagents for Reclaimers Inc. (1)", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.6, f = "e" },
					{ t = "accept", quest = 1454, title = "The Karnitol Shipwreck (1)", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Nijel's Point", map = 1443, x = 64.7, y = 10.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Nijel's Point", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1437, title = "Vahlarriel's Search (1)", map = 1443, x = 56.5, y = 17.8, f = "e" },
					{ t = "accept", quest = 1465, title = "Vahlarriel's Search (2)", map = 1443, x = 56.5, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1465, title = "Vahlarriel's Search (2)", npc = 5642, npcName = "Vahlarriel Demonslayer", map = 1443, x = 66.4, y = 11.8, f = "e" },
					{ t = "accept", quest = 1438, title = "Vahlarriel's Search (3)", npc = 5642, npcName = "Vahlarriel Demonslayer", map = 1443, x = 66.4, y = 11.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1458, itemName = "Hatefury Claw", count = 10, oi = 1, map = 1443, x = 71.8, y = 17.8, f = "e" },
					{ t = "collect", quest = 1458, itemName = "Hatefury Horn", count = 10, oi = 2, map = 1443, x = 71.8, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1458, title = "Reagents for Reclaimers Inc. (1)", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5501, title = "Bone Collector", npc = 11438, npcName = "Bibbly F'utzbuckle", map = 1443, x = 62.3, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5561, title = "Kodo Roundup", npc = 11596, npcName = "Smeed Scrabblescrew", map = 1443, x = 60.9, y = 61.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npcName = "each Kodo after you lead it back to Smeed Scrabblescrew", map = 1443, x = 55.8, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5561, title = "Kodo Roundup", npc = 11596, npcName = "Smeed Scrabble", map = 1443, x = 60.9, y = 61.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5501, itemName = "Kodo Bone", count = 10, oi = 1, map = 1443, x = 54.4, y = 63.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5741, title = "Sceptre of Light", npc = 11863, npcName = "Azore Aldamort", map = 1443, x = 38.9, y = 27.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1454, title = "The Karnitol Shipwreck (1)", map = 1443, x = 36.1, y = 30.4, f = "e" },
					{ t = "accept", quest = 1455, title = "The Karnitol Shipwreck (2)", map = 1443, x = 36.1, y = 30.4, f = "e" },
					{ t = "accept", quest = 6161, title = "Claim Rackmore's Treasure!", map = 1443, x = 36.1, y = 30.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6161, itemName = "Rackmore's Silver Key", count = 1, oi = 1, map = 1443, x = 34.4, y = 31.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6161, itemName = "Rackmore's Golden Key", count = 1, oi = 2, map = 1443, x = 35.6, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5741, itemName = "Sceptre of Light", count = 1, oi = 1, map = 1443, x = 55.2, y = 30.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1438, title = "Vahlarriel's Search (3)", npc = 5644, npcName = "Dalinda Malem", map = 1443, x = 54.9, y = 26.1, f = "e" },
					{ t = "accept", quest = 1439, title = "Search for Tyranis", npc = 5644, npcName = "Dalinda Malem", map = 1443, x = 54.9, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1439, itemName = "Tyranis' Pendant", count = 1, oi = 1, map = 1443, x = 53.0, y = 29.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1439, title = "Search for Tyranis", npc = 5644, npcName = "Dalinda Malem", map = 1443, x = 54.9, y = 26.1, f = "e" },
					{ t = "accept", quest = 1440, title = "Return to Vahlarriel", npc = 5644, npcName = "Dalinda Malem", map = 1443, x = 54.9, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5501, title = "Bone Collector", npc = 11438, npcName = "Bibbly F'utzbuckle", map = 1443, x = 62.3, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5741, title = "Sceptre of Light", npc = 11863, npcName = "Azore Aldamort", map = 1443, x = 38.9, y = 27.2, f = "e" },
					{ t = "accept", quest = 6027, title = "Book of the Ancients", npc = 11863, npcName = "Azore Aldamort", map = 1443, x = 38.9, y = 27.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6161, title = "Claim Rackmore's Treasure!", map = 1443, x = 30.0, y = 8.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6027, itemName = "Book of the Ancients", count = 1, oi = 1, map = 1443, x = 28.2, y = 6.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6027, title = "Book of the Ancients", npc = 11863, npcName = "Azore Aldamort", map = 1443, x = 38.9, y = 27.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1455, title = "The Karnitol Shipwreck (2)", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1440, title = "Return to Vahlarriel", npc = 5642, npcName = "Vahlarriel Demonslayer", map = 1443, x = 66.4, y = 11.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1444, x = 43.5, y = 42.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Feathermoon Stronghold", map = 1444, x = 30.2, y = 43.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1178, title = "Goblin Sponsorship (1)", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.7, y = 36.2, f = "e" },
					{ t = "accept", quest = 1180, title = "Goblin Sponsorship (2)", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.7, y = 36.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1111, title = "Wharfmaster Dizzywig", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.4, y = 38.5, f = "e" },
					{ t = "accept", quest = 1112, title = "Parts for Kravel", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.4, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1180, title = "Goblin Sponsorship (2)", npc = 4631, npcName = "Wharfmaster Lozgil", map = 1434, x = 26.3, y = 73.6, f = "e" },
					{ t = "accept", quest = 1181, title = "Goblin Sponsorship (3)", npc = 4631, npcName = "Wharfmaster Lozgil", map = 1434, x = 26.3, y = 73.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1040, title = "Passage to Booty Bay", npc = 3945, npcName = "Caravaneer Ruzzgot", map = 1434, x = 27.4, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Booty Bay", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 605, title = "Singing Blue Shards", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.1, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 189, title = "Bloodscalp Ears", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.1, f = "e" },
					{ t = "accept", quest = 213, title = "Hostile Takeover", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 616, title = "The Haunted Isle", npc = 773, npcName = "Krazek", map = 1434, x = 26.9, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 616, title = "The Haunted Isle", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.2, y = 77.0, f = "e" },
					{ t = "accept", quest = 578, title = "The Stone of the Tides", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.2, y = 77.0, f = "e" },
					{ t = "turnin", quest = 1181, title = "Goblin Sponsorship (3)", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.2, y = 77.0, f = "e" },
					{ t = "accept", quest = 1182, title = "Goblin Sponsorship (4)", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.2, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 575, title = "Supply and Demand", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.3, y = 77.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 192, npc = 684, target = "Shadowmaw Panther", count = 10, oi = 1, map = 1434, x = 39.4, y = 34.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 213, itemName = "Tumbled Crystal", count = 8, oi = 1, map = 1434, x = 44.4, y = 21.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1182, item = 5851, itemName = "Cozzle's Key", count = 1, map = 1434, x = 42.7, y = 18.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1182, itemName = "Fuel Regulator Blueprints", count = 1, oi = 1, map = 1434, x = 43.3, y = 20.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 195, target = "Lashtail Raptor", count = 10, oi = 1, map = 1434, x = 37.1, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 187, target = "Elder Stranglethorn Tiger", count = 10, oi = 1, map = 1434, x = 32.5, y = 18.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 575, itemName = "Large River Crocolisk Skin", count = 2, oi = 1, map = 1434, x = 40.6, y = 13.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 192, title = "Panther Mastery (3)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "accept", quest = 193, title = "Panther Mastery (4)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "turnin", quest = 187, title = "Tiger Mastery (3)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "accept", quest = 188, title = "Tiger Mastery (4)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "turnin", quest = 5762, title = "Hemet Nesingwary Jr.", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "turnin", quest = 195, title = "Raptor Mastery (2)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "accept", quest = 196, title = "Raptor Mastery (3)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.8, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 188, itemName = "Paw of Sin'Dall", count = 1, oi = 1, map = 1434, x = 32.2, y = 17.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 188, title = "Tiger Mastery (4)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.8, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 198, title = "Supplies to Private Thorsen", npc = 738, npcName = "Private Thorsen", map = 1434, x = 38.9, y = 5.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 574, title = "Special Forces", npc = 733, npcName = "Sergeant Yohwa", map = 1434, x = 38.0, y = 3.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 622, title = "Return to Corporal Kaleb", npc = 770, npcName = "Corporal Kaleb", map = 1434, x = 37.7, y = 3.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 574, target = "Kurzen Commando", count = 10, oi = 1, map = 1434, x = 45.7, y = 8.2, f = "e" },
					{ t = "kill", quest = 574, target = "Kurzen Headshrinker", count = 6, oi = 2, map = 1434, x = 45.7, y = 8.2, f = "e" },
				},
			},
			{
				note = "Go outside to 38.0,3.1",
				goals = {
					{ t = "turnin", quest = 574, title = "Special Forces", npc = 469, npcName = "Lieutenant Doren", map = 1434, x = 38.0, y = 3.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Bloodscalp trolls", count = 1, map = 1434, x = 28.9, y = 20.7, f = "e" },
					{ t = "collect", quest = 189, itemName = "Bloodscalp Ear", count = 15, oi = 1, map = 1434, x = 28.9, y = 20.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 37, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "basilisks", count = 1, map = 1434, x = 25.1, y = 17.7, f = "e" },
					{ t = "collect", quest = 605, itemName = "Singing Crystal Shard", count = 10, oi = 1, map = 1434, x = 25.1, y = 17.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1434, x = 21.5, y = 22.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 605, title = "Singing Blue Shards", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.1, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 189, title = "Bloodscalp Ears", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.1, f = "e" },
					{ t = "turnin", quest = 213, title = "Hostile Takeover", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 201, title = "Investigate the Camp", npc = 773, npcName = "Krazek", map = 1434, x = 26.9, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1182, title = "Goblin Sponsorship (4)", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.2, y = 77.0, f = "e" },
					{ t = "accept", quest = 1183, title = "Goblin Sponsorship (5)", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.2, y = 77.0, f = "e" },
					{ t = "turnin", quest = 578, title = "The Stone of the Tides", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.2, y = 77.0, f = "e" },
					{ t = "accept", quest = 601, title = "Water Elementals", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.2, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 575, title = "Supply and Demand", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.3, y = 77.6, f = "e" },
					{ t = "accept", quest = 577, title = "Some Assembly Required", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.3, y = 77.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1112, title = "Parts for Kravel", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.8, y = 77.3, f = "e" },
					{ t = "accept", quest = 1114, title = "Delivery to the Gnomes", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.8, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1114, title = "Delivery to the Gnomes", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.1, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1115, title = "The Rumormonger", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.8, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1183, title = "Goblin Sponsorship (5)", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.2, y = 75.9, f = "e" },
					{ t = "accept", quest = 1186, title = "The Eighteenth Pilot", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.2, y = 75.9, f = "e" },
					{ t = "turnin", quest = 1186, title = "The Eighteenth Pilot", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.2, y = 75.9, f = "e" },
					{ t = "accept", quest = 1187, title = "Razzeric's Tweaking", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.2, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1115, title = "The Rumormonger", npc = 773, npcName = "Krazek", map = 1434, x = 26.9, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Southshore", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "ogres", count = 1, map = 1416, x = 49.7, y = 60.8, f = "e" },
					{ t = "collect", quest = 500, itemName = "Dirty Knucklebones", count = 9, oi = 1, map = 1416, x = 49.7, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Syndicate mobs", count = 1, map = 1416, x = 62.3, y = 45.4, f = "e" },
					{ t = "collect", quest = 512, itemName = "Alterac Signet Ring", count = 7, oi = 1, map = 1416, x = 62.3, y = 45.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 500, title = "Crushridge Bounty", npc = 2263, npcName = "Marshal Redpath", map = 1424, x = 49.5, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 512, title = "Noble Deaths", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.1, y = 59.1, f = "e" },
				},
			},
		},
	})
end

