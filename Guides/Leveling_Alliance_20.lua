-- TuWoW_Leveling — Guides/Leveling_Alliance_20.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-30-35-part-2",
		pack = "guides",
		title = "Levels (30-35) (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 32,
		maxLevel = 35,
		zone = 1453,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 632, title = "The Thandol Span (2)", npc = 1075, npcName = "Rhag Garmason", map = 1437, x = 49.8, y = 18.3, f = "e" },
					{ t = "accept", quest = 633, title = "The Thandol Span (3)", npc = 1075, npcName = "Rhag Garmason", map = 1437, x = 49.8, y = 18.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1417, x = 48.8, y = 88.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 633, title = "The Thandol Span (3)", npc = 1075, npcName = "Rhag Garmason", map = 1437, x = 49.8, y = 18.3, f = "e" },
					{ t = "accept", quest = 634, title = "Plea To The Alliance", npc = 1075, npcName = "Rhag Garmason", map = 1437, x = 49.8, y = 18.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 634, title = "Plea To The Alliance", npc = 2700, npcName = "Captain Nials", map = 1417, x = 45.8, y = 47.6, f = "e" },
					{ t = "accept", quest = 681, title = "Northfold Manor", npc = 2700, npcName = "Captain Nials", map = 1417, x = 45.8, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Refuge Pointe", text = "Refuge Pointe", map = 1417, x = 45.8, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Southshore", text = "Southshore", map = 1424, x = 49.3, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 500, title = "Crushridge Bounty", npc = 2263, npcName = "Marshal Redpath", map = 1424, x = 49.5, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 505, title = "Syndicate Assassins", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.1, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 659, title = "Hints of a New Plague? (1)", npc = 2711, npcName = "Phin Odelic", map = 1424, x = 50.3, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9435, title = "Missing Crystals", npc = 17218, npcName = "Huraan", map = 1424, x = 51.0, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Southshore", text = "Southshore", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 536, title = "Down the Coast", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.5, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 555, title = "Soothing Turtle Bisque", npc = 2430, npcName = "Chef Jessen", map = 1424, x = 51.9, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 564, title = "Costly Menace", npc = 2382, npcName = "Darren Malvew", map = 1424, x = 52.4, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 555, itemName = "Turtle Meat", count = 10, oi = 1, map = 1424, x = 55.7, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 555, title = "Soothing Turtle Bisque", npc = 2430, npcName = "Chef Jessen", map = 1424, x = 51.9, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 536, target = "Torn Fin Tidehunter", count = 10, oi = 1, map = 1424, x = 46.4, y = 64.0, f = "e" },
					{ t = "kill", quest = 536, target = "Torn Fin Oracle", count = 10, oi = 2, map = 1424, x = 46.4, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 536, title = "Down the Coast", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.5, y = 58.4, f = "e" },
					{ t = "accept", quest = 559, title = "Farren's Proof (1)", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.5, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 559, itemName = "Murloc Head", count = 10, oi = 1, map = 1424, x = 46.4, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 559, title = "Farren's Proof (1)", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.5, y = 58.4, f = "e" },
					{ t = "accept", quest = 560, title = "Farren's Proof (2)", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.5, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 560, title = "Farren's Proof (2)", npc = 2263, npcName = "Marshal Redpath", map = 1424, x = 49.5, y = 58.7, f = "e" },
					{ t = "accept", quest = 561, title = "Farren's Proof (3)", npc = 2263, npcName = "Marshal Redpath", map = 1424, x = 49.5, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 561, title = "Farren's Proof (3)", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.5, y = 58.4, f = "e" },
					{ t = "accept", quest = 562, title = "Stormwind Ho!", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.5, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 562, target = "Daggerspine Shorehunter", count = 10, oi = 1, map = 1424, x = 56.2, y = 65.0, f = "e" },
					{ t = "kill", quest = 562, target = "Daggerspine Siren", count = 10, oi = 2, map = 1424, x = 56.2, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 562, title = "Stormwind Ho!", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.5, y = 58.4, f = "e" },
					{ t = "accept", quest = 563, title = "Reassignment", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.5, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9435, itemName = "Shipment of Rare Crystals", count = 1, oi = 1, map = 1424, x = 55.6, y = 35.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 564, target = "Mountain Lion", count = 8, oi = 1, map = 1416, x = 44.3, y = 78.5, f = "e" },
					{ t = "kill", quest = 564, target = "Hulking Mountain Lion", count = 10, oi = 2, map = 1416, x = 44.3, y = 78.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 505, target = "Syndicate Footpad", count = 12, oi = 1, map = 1416, x = 56.9, y = 66.7, f = "e" },
					{ t = "kill", quest = 505, target = "Syndicate Thief", count = 8, oi = 2, map = 1416, x = 56.9, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 510, title = "Foreboding Plans", map = 1416, x = 58.3, y = 68.0, f = "e" },
					{ t = "accept", quest = 511, title = "Encrypted Letter", map = 1416, x = 58.3, y = 68.0, f = "e" },
				},
			},
			{
				note = "Hearth to Southshore|goto Hillsbrad Foothills,51.2,58.9,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9435, title = "Missing Crystals", npc = 17218, npcName = "Huraan", map = 1424, x = 51.0, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 511, title = "Encrypted Letter", npc = 2277, npcName = "Loremaster Dibbs", map = 1424, x = 50.6, y = 57.1, f = "e" },
					{ t = "accept", quest = 514, title = "Letter to Stormpike", npc = 2277, npcName = "Loremaster Dibbs", map = 1424, x = 50.6, y = 57.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 505, title = "Syndicate Assassins", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.1, y = 59.1, f = "e" },
					{ t = "turnin", quest = 510, title = "Foreboding Plans", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.1, y = 59.1, f = "e" },
					{ t = "accept", quest = 512, title = "Noble Deaths", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.1, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 564, title = "Costly Menace", npc = 2382, npcName = "Darren Malvew", map = 1424, x = 52.4, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 681, target = "Syndicate Highwayman", count = 10, oi = 1, map = 1417, x = 34.2, y = 29.2, f = "e" },
					{ t = "kill", quest = 681, target = "Syndicate Mercenary", count = 6, oi = 2, map = 1417, x = 34.2, y = 29.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 681, title = "Northfold Manor", npc = 2700, npcName = "Captain Nials", map = 1417, x = 45.8, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1179, title = "The Brassbolts Brothers", npc = 2092, npcName = "Pilot Longbeard", map = 1455, x = 72.7, y = 94.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1453, title = "Reclaimers' Business in Desolace", npc = 5637, npcName = "Roetten Stonehammer", map = 1455, x = 69.9, y = 21.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 514, title = "Letter to Stormpike", npc = 1356, npcName = "Prospector Stormpike", map = 1455, x = 74.7, y = 11.7, f = "e" },
					{ t = "accept", quest = 525, title = "Further Mysteries", npc = 1356, npcName = "Prospector Stormpike", map = 1455, x = 74.7, y = 11.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 563, title = "Reassignment", npc = 2439, npcName = "Major Samuelson", map = 1455, x = 75.8, y = 36.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 322, title = "Blessed Arm", npc = 1416, npcName = "Grimand Elmore", map = 1455, x = 59.7, y = 33.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 293, title = "Cleansing the Eye", npc = 1284, npcName = "Archbishop Benedictus", map = 1455, x = 50.3, y = 45.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Rebel Camp", text = "Rebel Camp", map = 1434, x = 38.2, y = 4.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 203, title = "The Second Rebellion", npc = 733, npcName = "Sergeant Yohwa", map = 1434, x = 38.0, y = 3.3, f = "e" },
					{ t = "accept", quest = 204, title = "Bad Medicine", npc = 733, npcName = "Sergeant Yohwa", map = 1434, x = 38.0, y = 3.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 210, title = "Krazek's Cookery", npc = 770, npcName = "Corporal Kaleb", map = 1434, x = 37.7, y = 3.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 583, title = "Welcome to the Jungle", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "turnin", quest = 583, title = "Welcome to the Jungle", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "accept", quest = 194, title = "Raptor Mastery (1)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "accept", quest = 185, title = "Tiger Mastery (1)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "accept", quest = 190, title = "Panther Mastery (1)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.8, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 190, target = "Young Panther", count = 10, oi = 1, map = 1434, x = 40.8, y = 10.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 203, target = "Kurzen Jungle Fighter", count = 15, oi = 1, map = 1434, x = 44.0, y = 11.2, f = "e" },
					{ t = "collect", quest = 204, itemName = "Jungle Remedy", count = 7, oi = 1, map = 1434, x = 44.0, y = 11.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 204, itemName = "Venom Fern Extract", count = 1, oi = 2, map = 1434, x = 44.5, y = 9.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 203, title = "The Second Rebellion", npc = 733, npcName = "Sergeant Yohwa", map = 1434, x = 38.0, y = 3.3, f = "e" },
					{ t = "turnin", quest = 204, title = "Bad Medicine", npc = 733, npcName = "Sergeant Yohwa", map = 1434, x = 38.0, y = 3.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 190, title = "Panther Mastery (1)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "accept", quest = 191, title = "Panther Mastery (2)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.8, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 185, target = "Young Stranglethorn Tiger", count = 10, oi = 1, map = 1434, x = 33.6, y = 11.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 185, title = "Tiger Mastery (1)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "accept", quest = 186, title = "Tiger Mastery (2)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.8, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 191, target = "Panther", count = 10, oi = 1, map = 1434, x = 31.0, y = 10.0, f = "e" },
					{ t = "kill", quest = 186, target = "Stranglethorn Tiger", count = 10, oi = 1, map = 1434, x = 31.0, y = 10.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 194, target = "Stranglethorn Raptor", count = 10, oi = 1, map = 1434, x = 27.0, y = 16.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 194, title = "Raptor Mastery (1)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "accept", quest = 195, title = "Raptor Mastery (2)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "turnin", quest = 186, title = "Tiger Mastery (2)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "accept", quest = 187, title = "Tiger Mastery (3)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "turnin", quest = 191, title = "Panther Mastery (2)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "accept", quest = 192, title = "Panther Mastery (3)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.8, y = 10.7, f = "e" },
				},
			},
			{
				note = "Go south to Booty Bay to 26.9,77.2",
				goals = {
					{ t = "turnin", quest = 210, title = "Krazek's Cookery", npc = 773, npcName = "Krazek", map = 1434, x = 26.9, y = 77.2, f = "e" },
					{ t = "accept", quest = 627, title = "Favor for Krazek", npc = 773, npcName = "Krazek", map = 1434, x = 26.9, y = 77.2, f = "e" },
					{ t = "turnin", quest = 627, title = "Favor for Krazek", npc = 773, npcName = "Krazek", map = 1434, x = 26.9, y = 77.2, f = "e" },
					{ t = "accept", quest = 622, title = "Return to Corporal Kaleb", npc = 773, npcName = "Krazek", map = 1434, x = 26.9, y = 77.2, f = "e" },
					{ t = "accept", quest = 201, title = "Investigate the Camp", npc = 773, npcName = "Krazek", map = 1434, x = 26.9, y = 77.2, f = "e" },
					{ t = "accept", quest = 198, title = "Supplies to Private Thorsen", npc = 773, npcName = "Krazek", map = 1434, x = 26.9, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Booty Bay", text = "Booty Bay", map = 1434, x = 27.5, y = 77.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1039, title = "The Barrens Port", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.4, y = 38.5, f = "e" },
					{ t = "accept", quest = 1040, title = "Passage to Booty Bay", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.4, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Ratchet", text = "Ratchet", map = 1413, x = 63.1, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1100, title = "Lonebrow's Journal", map = 1441, x = 30.7, y = 24.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Thalanaar", text = "Thalanaar", map = 1441, x = 7.8, y = 17.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1100, title = "Lonebrow's Journal", npc = 4048, npcName = "Falfindel Waywarder", map = 1441, x = 8.1, y = 19.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1179, title = "The Brassbolts Brothers", npc = 4453, npcName = "Wizzle Brassbolts", map = 1441, x = 78.1, y = 77.1, f = "e" },
					{ t = "accept", quest = 1105, title = "Hardened Shells", npc = 4453, npcName = "Wizzle Brassbolts", map = 1441, x = 78.1, y = 77.1, f = "e" },
					{ t = "accept", quest = 1104, title = "Salt Flat Venom", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.1, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5762, title = "Hemet Nesingwary Jr.", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.8, y = 77.3, f = "e" },
					{ t = "accept", quest = 1110, title = "Rocket Car Parts", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.8, y = 77.3, f = "e" },
					{ t = "accept", quest = 1111, title = "Wharfmaster Dizzywig", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.8, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1176, title = "Load Lightening", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.2, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1175, title = "A Bump in the Road", npc = 4629, npcName = "Trackmaster Zherin", map = 1441, x = 81.6, y = 77.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1175, target = "Saltstone Crystalhide", count = 10, oi = 2, map = 1441, x = 79.1, y = 85.2, f = "e" },
					{ t = "kill", quest = 1175, target = "Saltstone Gazer", count = 6, oi = 3, map = 1441, x = 79.1, y = 85.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1176, itemName = "Hollow Vulture Bone", count = 10, oi = 1, map = 1441, x = 87.6, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1105, itemName = "Hardened Tortoise Shell", count = 9, oi = 1, map = 1441, x = 83.2, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1175, target = "Saltstone Basilisk", count = 10, oi = 1, map = 1441, x = 75.4, y = 55.0, f = "e" },
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

