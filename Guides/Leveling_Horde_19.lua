-- TuWoW_Leveling — Guides/Leveling_Horde_19.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-30-35-part-2",
		pack = "guides",
		title = "Levels (30-35) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 30,
		maxLevel = 35,
		zone = 1454,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 1368, title = "Gelkis Alliance", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.2, y = 79.3, f = "e" },
					{ t = "accept", quest = 1370, title = "Stealing Supplies", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.2, y = 79.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5763, title = "Hunting in Stranglethorn", npc = 11877, npcName = "Roon Wildmane", map = 1443, x = 25.1, y = 72.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5381, title = "Hand of Iruxos", npc = 11624, npcName = "Taiga Wisemane", map = 1443, x = 25.8, y = 68.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Shadowprey Village", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6143, title = "Other Fish to Fry", npc = 12340, npcName = "Drulzegar Skraghook", map = 1443, x = 23.3, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6142, title = "Clam Bait", npc = 12031, npcName = "Mai'lahii", map = 1443, x = 22.6, y = 72.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Shadowprey Village", map = 1443, x = 21.6, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5386, item = 13545, itemName = "Shellfish", count = 10, map = 1443, x = 19.5, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5421, title = "Fish in a Bucket", npc = 11317, npcName = "Jinar'Zillen", map = 1443, x = 22.5, y = 73.1, f = "e" },
					{ t = "collect", quest = 5386, itemName = "Bloodbelly Fish", count = 2, oi = 1, map = 1443, x = 22.5, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6142, itemName = "Soft-shelled Clam Meat", count = 10, oi = 1, map = 1443, x = 25.0, y = 40.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6161, title = "Claim Rackmore's Treasure!", map = 1443, x = 36.1, y = 30.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6161, itemName = "Rackmore's Silver Key", count = 1, oi = 1, map = 1443, x = 33.8, y = 30.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6161, itemName = "Rackmore's Golden Key", count = 1, oi = 2, map = 1443, x = 35.6, y = 25.7, f = "e" },
					{ t = "kill", quest = 6143, target = "Slitherblade Naga", count = 7, oi = 2, map = 1443, x = 35.6, y = 25.7, f = "e" },
					{ t = "kill", quest = 6143, target = "Slitherblade Sorceress", count = 5, oi = 3, map = 1443, x = 35.6, y = 25.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5741, title = "Sceptre of Light", npc = 11863, npcName = "Azore Aldamort", map = 1443, x = 38.9, y = 27.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1435, itemName = "Infused Burning Gem", count = 15, oi = 1, map = 1443, x = 56.4, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5741, itemName = "Sceptre of Light", count = 1, oi = 1, map = 1443, x = 55.2, y = 30.1, f = "e" },
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
					{ t = "collect", quest = 1482, itemName = "Oracle Crystal", count = 1, oi = 1, map = 1443, x = 37.3, y = 18.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6143, target = "Slitherblade Myrmidon", count = 7, oi = 1, map = 1443, x = 32.8, y = 14.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6161, title = "Claim Rackmore's Treasure!", map = 1443, x = 30.0, y = 8.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5386, title = "Catch of the Day", npc = 11259, npcName = "Nataka Longhorn", map = 1443, x = 55.4, y = 55.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1435, title = "The Burning of Spirits", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.2, y = 53.4, f = "e" },
					{ t = "turnin", quest = 1482, title = "The Corrupter (3)", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.2, y = 53.4, f = "e" },
					{ t = "accept", quest = 1484, title = "The Corrupter (4)", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.2, y = 53.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1484, title = "The Corrupter (4)", npc = 5641, npcName = "Takata Steelblade", map = 1443, x = 52.6, y = 54.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1366, itemName = "Centaur Ear", count = 15, oi = 1, map = 1443, x = 69.8, y = 70.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1370, itemName = "Crudely Dried Meat", count = 6, oi = 1, map = 1443, x = 70.9, y = 75.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1366, title = "Centaur Bounty", npc = 5395, npcName = "Felgur Twocuts", map = 1443, x = 56.2, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5381, itemName = "Demon Box", count = 1, oi = 1, map = 1443, x = 54.9, y = 26.7, f = "e" },
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
				note = "Hearth to Shadowprey Village,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1443, x = 24.1, y = 68.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5381, title = "Hand of Iruxos", npc = 11624, npcName = "Taiga Wisemane", map = 1443, x = 25.8, y = 68.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6143, title = "Other Fish to Fry", npc = 12340, npcName = "Drulzegar Skraghook", map = 1443, x = 23.3, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6142, title = "Clam Bait", npc = 12031, npcName = "Mai'Lahii", map = 1443, x = 22.6, y = 72.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1370, title = "Stealing Supplies", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.2, y = 79.3, f = "e" },
				},
			},
			{
				note = "Go northwest to Shadowprey Village,0.5",
				goals = {
					{ t = "goto", map = 1443, x = 21.6, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5361, title = "Family Tree", npc = 10537, npcName = "Cliffwatcher Longhorn", map = 1441, x = 45.6, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1175, target = "Saltstone Crystalhide", count = 10, oi = 2, map = 1441, x = 78.6, y = 84.7, f = "e" },
					{ t = "kill", quest = 1175, target = "Saltstone Gazer", count = 6, oi = 3, map = 1441, x = 78.6, y = 84.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1175, title = "A Bump in the Road", npc = 4629, npcName = "Trackmaster Zherin", map = 1441, x = 81.6, y = 78.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1268, title = "Suspicious Hoofprints", map = 1445, x = 29.7, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1269, title = "Lieutenant Paval Reethe", map = 1445, x = 29.8, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1251, title = "The Black Shield (1)", map = 1445, x = 29.6, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1268, title = "Suspicious Hoofprints", npc = 4926, npcName = "Krog", map = 1445, x = 36.4, y = 31.9, f = "e" },
					{ t = "turnin", quest = 1269, title = "Lieutenant Paval Reethe", npc = 4926, npcName = "Krog", map = 1445, x = 36.4, y = 31.9, f = "e" },
					{ t = "turnin", quest = 1251, title = "The Black Shield (1)", npc = 4926, npcName = "Krog", map = 1445, x = 36.4, y = 31.9, f = "e" },
					{ t = "accept", quest = 1321, title = "The Black Shield (2)", npc = 4926, npcName = "Krog", map = 1445, x = 36.4, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1321, title = "The Black Shield (2)", npc = 5087, npcName = "Do'gol", map = 1445, x = 36.5, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Brackenwall Village", map = 1445, x = 35.6, y = 31.9, f = "e" },
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
					{ t = "turnin", quest = 1180, title = "Goblin Sponsorship (2)", npc = 4631, npcName = "Wharfmaster Lozgil", map = 1434, x = 26.4, y = 73.6, f = "e" },
					{ t = "accept", quest = 1181, title = "Goblin Sponsorship (3)", npc = 4631, npcName = "Wharfmaster Lozgil", map = 1434, x = 26.4, y = 73.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 606, title = "Scaring Shaky", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.8, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 575, title = "Supply and Demand", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.3, y = 77.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 605, title = "Singing Blue Shards", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.1, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Booty Bay", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 189, title = "Bloodscalp Ears", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.2, f = "e" },
					{ t = "accept", quest = 213, title = "Hostile Takeover", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.2, f = "e" },
					{ t = "accept", quest = 201, title = "Investigate the Camp", npc = 773, npcName = "Krazek", map = 1434, x = 27.0, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1181, title = "Goblin Sponsorship (3)", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.2, y = 76.9, f = "e" },
					{ t = "accept", quest = 1182, title = "Goblin Sponsorship (4)", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.2, y = 76.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Booty Bay", map = 1434, x = 26.9, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 570, title = "Mok'thardin's Enchantment (1)", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1434, x = 32.1, y = 29.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 568, title = "The Defense of Grom'gol (1)", npc = 2464, npcName = "Commander Aggro'gosh", map = 1434, x = 32.2, y = 28.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9436, title = "Bloodscalp Insight", npc = 17094, npcName = "Nemeth Hawkeye", map = 1434, x = 32.0, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 581, title = "Hunt for Yenniku", npc = 2497, npcName = "Nimboya", map = 1434, x = 32.2, y = 27.7, f = "e" },
					{ t = "accept", quest = 596, title = "Bloody Bone Necklaces", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.2, y = 27.7, f = "e" },
					{ t = "accept", quest = 629, title = "The Vile Reef", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.2, y = 27.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 605, itemName = "Singing Crystal Shard", count = 10, oi = 1, map = 1434, x = 26.7, y = 18.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 581, itemName = "Bloodscalp Tusk", count = 9, oi = 1, map = 1434, x = 28.8, y = 19.7, f = "e" },
					{ t = "collect", quest = 189, itemName = "Bloodscalp Ear", count = 15, oi = 1, map = 1434, x = 28.8, y = 19.7, f = "e" },
					{ t = "collect", quest = 596, itemName = "Bloody Bone Necklace", count = 25, oi = 1, map = 1434, x = 28.8, y = 19.7, f = "e" },
					{ t = "collect", quest = 9436, itemName = "Bloodscalp Totem", count = 1, oi = 1, map = 1434, x = 28.8, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 35, f = "e" },
				},
			},
		},
	})
end

