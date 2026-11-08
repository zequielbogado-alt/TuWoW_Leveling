-- TuWoW_Leveling — Guides/Leveling_Horde_18.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-30-35",
		pack = "guides",
		title = "Levels (30-35) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-levels-30-35-part-2",
		author = "TuWoW & Zygor",
		minLevel = 30,
		maxLevel = 35,
		zone = 1442,
		version = 1,
		steps = {
			{
				note = "Hearth to Sun Rock Retreat|goto Stonetalon Mountains,47.5,62.1,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1718, title = "The Islander", npc = 3354, npcName = "Sorek", map = 1454, x = 80.4, y = 32.4, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1718, title = "The Islander", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.6, y = 49.2, f = "e" },
					{ t = "accept", quest = 1719, title = "The Affray", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.6, y = 49.2, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "kill", quest = 1719, target = "Big Will", count = 1, oi = 2, map = 1413, x = 68.6, y = 48.7, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1719, title = "The Affray", npc = 6236, npcName = "Klannoc Mcleod", map = 1413, x = 68.6, y = 49.2, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 1531, title = "Call of Air (1)", npc = 5892, npcName = "Searn Firewarder", map = 1454, x = 38.0, y = 38.0, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", map = 1441, x = 54.6, y = 44.7, f = "e" },
				},
			},
			{
				note = "Go up to the path to 53.6,42.7",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1531, title = "Call of Air (1)", npc = 5905, npcName = "Prate Cloudseer", map = 1441, x = 53.6, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Orgrimmar", text = "Orgrimmar", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 50.82, y = 13.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 494, title = "Time To Strike", npc = 2214, npcName = "Deathstalker Lesh", map = 1424, x = 20.8, y = 47.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Tarren Mill", text = "Tarren Mill", map = 1424, x = 60.1, y = 18.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1065, title = "Journey to Tarren Mill", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
					{ t = "accept", quest = 501, title = "Elixir of Pain (1)", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 676, title = "The Hammer May Fall", npc = 2770, npcName = "Tallow", map = 1424, x = 61.9, y = 19.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 494, title = "Time To Strike", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.4, y = 20.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1361, title = "Regthar Deathgate", npc = 2229, npcName = "Krusk", map = 1424, x = 63.2, y = 20.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 552, title = "Helcular's Revenge (1)", npc = 2429, npcName = "Novice Thaivand", map = 1424, x = 63.9, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 552, itemName = "Helcular's Rod", count = 1, oi = 1, map = 1424, x = 48.1, y = 31.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 501, itemName = "Mountain Lion Blood", count = 10, oi = 1, map = 1424, x = 52.3, y = 33.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 501, title = "Elixir of Pain (1)", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 552, title = "Helcular's Revenge (1)", npc = 2429, npcName = "Novice Thaivand", map = 1424, x = 63.9, y = 19.7, f = "e" },
					{ t = "accept", quest = 553, title = "Helcular's Revenge (2)", npc = 2429, npcName = "Novice Thaivand", map = 1424, x = 63.9, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Hammerfall", text = "Hammerfall", map = 1417, x = 73.0, y = 32.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 655, title = "Hammerfall", npc = 2792, npcName = "Gor'mul", map = 1417, x = 72.6, y = 33.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 655, title = "Hammerfall", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.7, y = 36.3, f = "e" },
					{ t = "accept", quest = 672, title = "Raising Spirits (1)", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.7, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 672, itemName = "Highland Raptor Eye", count = 10, oi = 1, map = 1417, x = 69.9, y = 36.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 672, title = "Raising Spirits (1)", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.7, y = 36.3, f = "e" },
					{ t = "accept", quest = 674, title = "Raising Spirits (2)", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.7, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 674, title = "Raising Spirits (2)", npc = 2792, npcName = "Gor'mul", map = 1417, x = 72.6, y = 33.9, f = "e" },
					{ t = "accept", quest = 675, title = "Raising Spirits (3)", npc = 2792, npcName = "Gor'mul", map = 1417, x = 72.6, y = 33.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 675, title = "Raising Spirits (3)", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.7, y = 36.3, f = "e" },
					{ t = "accept", quest = 671, title = "Foul Magics (1)", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.7, y = 36.3, f = "e" },
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
					{ t = "goto", map = 1411, x = 50.8, y = 13.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Grom'gol Base Camp", text = "Grom'gol Base Camp", map = 1434, x = 32.5, y = 29.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 583, title = "Welcome to the Jungle", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "turnin", quest = 583, title = "Welcome to the Jungle", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "accept", quest = 194, title = "Raptor Mastery (1)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "accept", quest = 185, title = "Tiger Mastery (1)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "accept", quest = 190, title = "Panther Mastery (1)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.6, y = 10.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 190, target = "Young Panther", count = 10, oi = 1, map = 1434, x = 41.2, y = 12.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 190, title = "Panther Mastery (1)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "accept", quest = 191, title = "Panther Mastery (2)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.6, y = 10.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 185, target = "Young Stranglethorn Tiger", count = 10, oi = 1, map = 1434, x = 35.4, y = 12.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 185, title = "Tiger Mastery (1)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "accept", quest = 186, title = "Tiger Mastery (2)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.6, y = 10.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 186, target = "Stranglethorn Tiger", count = 10, oi = 1, map = 1434, x = 29.6, y = 10.7, f = "e" },
					{ t = "kill", quest = 191, target = "Panther", count = 10, oi = 1, map = 1434, x = 29.6, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 186, title = "Tiger Mastery (2)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "accept", quest = 187, title = "Tiger Mastery (3)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "turnin", quest = 191, title = "Panther Mastery (2)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "accept", quest = 192, title = "Panther Mastery (3)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.6, y = 10.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 31, f = "e" },
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
					{ t = "accept", quest = 1145, title = "The Swarm Grows", npc = 3428, npcName = "Korran", map = 1413, x = 51.1, y = 29.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1361, title = "Regthar Deathgate", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
					{ t = "accept", quest = 1362, title = "The Kolkar of Desolace", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.3, y = 28.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1105, title = "Hardened Shells", npc = 4453, npcName = "Wizzle Brassbolts", map = 1441, x = 78.1, y = 77.1, f = "e" },
					{ t = "accept", quest = 1104, title = "Salt Flat Venom", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.1, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1110, title = "Rocket Car Parts", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.8, y = 77.3, f = "e" },
					{ t = "accept", quest = 5762, title = "Hemet Nesingwary Jr.", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.8, y = 77.3, f = "e" },
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
					{ t = "accept", quest = 1175, title = "A Bump in the Road", npc = 4629, npcName = "Trackmaster Zherin", map = 1441, x = 81.6, y = 78.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1176, itemName = "Hollow Vulture Bone", count = 10, oi = 1, map = 1441, x = 87.8, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1105, itemName = "Hardened Tortoise Shell", count = 9, oi = 1, map = 1441, x = 83.2, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1175, target = "Saltstone Basilisk", count = 10, oi = 1, map = 1441, x = 75.5, y = 54.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1104, itemName = "Salty Scorpid Venom", count = 6, oi = 1, map = 1441, x = 71.7, y = 72.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1110, title = "Rocket Car Parts", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.8, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1104, title = "Salt Flat Venom", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.1, y = 77.1, f = "e" },
					{ t = "turnin", quest = 1105, title = "Hardened Shells", npc = 4453, npcName = "Wizzle Brassbolts", map = 1441, x = 78.1, y = 77.1, f = "e" },
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
					{ t = "getfp", location = "Gadgetzan", text = "Gadgetzan", map = 1446, x = 51.6, y = 25.4, f = "e" },
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
					{ t = "turnin", quest = 1145, title = "The Swarm Grows (1)", npc = 4485, npcName = "Belgrom Rockmaul", map = 1454, x = 75.2, y = 34.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1431, title = "Alliance Relations (1)", npc = 5639, npcName = "Craven Drok", map = 1454, x = 45.3, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1431, title = "Alliance Relations (1)", npc = 5640, npcName = "Keldran", map = 1454, x = 22.3, y = 53.8, f = "e" },
					{ t = "accept", quest = 1432, title = "Alliance Relations (2)", npc = 5640, npcName = "Keldran", map = 1454, x = 22.3, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 51.0, y = 14.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 676, target = "Boulderfist Ogre", count = 8, oi = 1, map = 1417, x = 30.9, y = 48.4, f = "e" },
				},
			},
			{
				note = "Inside the cave,",
				goals = {
					{ t = "kill", quest = 676, target = "Boulderfist Enforcer", count = 10, oi = 2, map = 1417, x = 35.1, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 676, title = "The Hammer May Fall", npc = 2771, npcName = "Drum Fel", map = 1417, x = 74.2, y = 33.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 62.0, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 194, target = "Stranglethorn Raptor", count = 10, oi = 1, map = 1434, x = 28.0, y = 15.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 194, title = "Raptor Mastery (1)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "accept", quest = 195, title = "Raptor Mastery (2)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "turnin", quest = 5762, title = "Hemet Nesingwary Jr.", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.6, y = 10.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1434, x = 31.4, y = 30.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "a Flayed Demon Skin", count = 1, map = 1443, x = 57.8, y = 21.7, f = "e" },
					{ t = "accept", quest = 1480, title = "The Corrupter (1)", map = 1443, x = 57.8, y = 21.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5561, title = "Kodo Roundup", npc = 11596, npcName = "Smeed Scrabblescrew", map = 1443, x = 60.9, y = 61.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11627, npcName = "Tamed Kodo", map = 1443, x = 56.1, y = 62.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5561, title = "Kodo Roundup", npc = 11596, npcName = "Smeed Scrabblescrew", map = 1443, x = 60.9, y = 61.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1362, title = "The Kolkar of Desolace", npc = 5395, npcName = "Felgur Twocuts", map = 1443, x = 56.2, y = 59.6, f = "e" },
					{ t = "accept", quest = 1365, title = "Khan Dez'hepah", npc = 5395, npcName = "Felgur Twocuts", map = 1443, x = 56.2, y = 59.6, f = "e" },
					{ t = "accept", quest = 1368, title = "Gelkis Alliance", npc = 5412, npcName = "Gurda Wildmane", map = 1443, x = 56.2, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1432, title = "Alliance Relations (2)", npc = 5641, npcName = "Takata Steelblade", map = 1443, x = 52.6, y = 54.4, f = "e" },
					{ t = "accept", quest = 1433, title = "Alliance Relations (3)", npc = 5641, npcName = "Takata Steelblade", map = 1443, x = 52.6, y = 54.4, f = "e" },
					{ t = "accept", quest = 1434, title = "Befouled by Satyr", npc = 5641, npcName = "Takata Steelblade", map = 1443, x = 52.6, y = 54.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1433, title = "Alliance Relations (3)", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.2, y = 53.4, f = "e" },
					{ t = "accept", quest = 1435, title = "The Burning of Spirits", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.2, y = 53.4, f = "e" },
					{ t = "turnin", quest = 1480, title = "The Corrupter (1)", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.2, y = 53.4, f = "e" },
					{ t = "accept", quest = 1481, title = "The Corrupter (2)", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.2, y = 53.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1434, target = "Hatefury Rogue", count = 7, oi = 1, map = 1443, x = 72.3, y = 23.6, f = "e" },
					{ t = "kill", quest = 1434, target = "Hatefury Felsworn", count = 7, oi = 2, map = 1443, x = 72.3, y = 23.6, f = "e" },
					{ t = "kill", quest = 1434, target = "Hatefury Betrayer", count = 7, oi = 3, map = 1443, x = 72.3, y = 23.6, f = "e" },
					{ t = "kill", quest = 1434, target = "Hatefury Hellcaller", count = 7, oi = 4, map = 1443, x = 72.3, y = 23.6, f = "e" },
					{ t = "collect", quest = 1481, itemName = "Shadowstalker Scalp", count = 1, oi = 1, map = 1443, x = 72.3, y = 23.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1443, x = 73.8, y = 67.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5386, title = "Catch of the Day", npc = 11259, npcName = "Nataka Longhorn", map = 1443, x = 55.4, y = 55.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1434, title = "Befouled by Satyr", npc = 5641, npcName = "Takata Steelblade", map = 1443, x = 52.6, y = 54.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1481, title = "The Corrupter (2)", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.2, y = 53.4, f = "e" },
					{ t = "accept", quest = 1482, title = "The Corrupter (3)", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.2, y = 53.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5501, title = "Bone Collector", npc = 11438, npcName = "Bibbly F'utzbuckle", map = 1443, x = 62.3, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5501, itemName = "Kodo Bone", count = 10, oi = 1, map = 1443, x = 54.4, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5501, title = "Bone Collector", npc = 11438, npcName = "Bibbly F'utzbuckle", map = 1443, x = 62.3, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1365, itemName = "Khan Dez'hepah's Head", count = 1, oi = 1, map = 1443, x = 74.6, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1365, title = "Khan Dez'hepah", npc = 5395, npcName = "Felgur Twocuts", map = 1443, x = 56.2, y = 59.6, f = "e" },
					{ t = "accept", quest = 1366, title = "Centaur Bounty", npc = 5395, npcName = "Felgur Twocuts", map = 1443, x = 56.2, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 33, f = "e" },
				},
			},
		},
	})
end

