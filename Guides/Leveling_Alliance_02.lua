-- TuWoW_Leveling — Guides/Leveling_Alliance_02.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-human-1-13-part-2",
		pack = "guides",
		title = "Human (1-13) (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 9,
		maxLevel = 13,
		zone = 1429,
		version = 1,
		races = { "Human" },
		steps = {
			{
				note = "Hearth to Goldshire|goto Elwynn Forest,42.4,65.8,2|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 76, title = "The Jasperlode Mine", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
					{ t = "turnin", quest = 39, title = "Deliver Thomas' Report", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
					{ t = "accept", quest = 239, title = "Westbrook Garrison Needs Help!", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1097, title = "Elmore's Task", npc = 514, npcName = "Smith Argus", map = 1429, x = 41.7, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 88, title = "Princess Must Die!", npc = 244, npcName = "Ma Stonefield", map = 1429, x = 34.6, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 239, title = "Westbrook Garrison Needs Help!", npc = 963, npcName = "Deputy Rainer", map = 1429, x = 24.3, y = 74.8, f = "e" },
					{ t = "accept", quest = 11, title = "Riverpaw Gnoll Bounty", npc = 963, npcName = "Deputy Rainer", map = 1429, x = 24.3, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11, itemName = "Painted Gnoll Armband", count = 8, oi = 1, map = 1429, x = 26.8, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11, title = "Riverpaw Gnoll Bounty", npc = 963, npcName = "Deputy Rainer", map = 1429, x = 24.3, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 10, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1685, title = "Gakin's Summons", npc = 6121, npcName = "Remen Marcot", map = 1429, x = 44.5, y = 66.3, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1638, title = "A Warrior's Training", npc = 913, npcName = "Lyria Du Lac", map = 1429, x = 41.1, y = 65.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 61, title = "Shipment to Stormwind", npc = 279, npcName = "Morgan Pestle", map = 1453, x = 63.2, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1097, title = "Elmore's Task", npc = 1416, npcName = "Grimand Elmore", map = 1453, x = 59.7, y = 33.8, f = "e" },
					{ t = "accept", quest = 353, title = "Stormpike's Delivery", npc = 1416, npcName = "Grimand Elmore", map = 1453, x = 59.7, y = 33.8, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1638, title = "A Warrior's Training", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.1, y = 53.3, f = "e" },
					{ t = "accept", quest = 1639, title = "Bartleby the Drunk", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.1, y = 53.3, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1639, title = "Bartleby the Drunk", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.8, y = 52.5, f = "e" },
					{ t = "accept", quest = 1640, title = "Beat Bartleby", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.8, y = 52.5, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1640, title = "Beat Bartleby", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.8, y = 52.5, f = "e" },
					{ t = "accept", quest = 1665, title = "Bartleby's Mug", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.8, y = 52.5, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1665, title = "Bartleby's Mug", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.1, y = 53.3, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1685, title = "Gakin's Summons", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.2, y = 85.3, f = "e" },
					{ t = "accept", quest = 1688, title = "Surena Caledon", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.2, y = 85.3, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1688, itemName = "Surena's Choker", count = 1, oi = 1, map = 1429, x = 71.0, y = 80.8, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1688, title = "Surena Caledon", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.2, y = 85.3, f = "e" },
					{ t = "accept", quest = 1689, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.2, y = 85.3, f = "e" },
				},
			},
			{
				note = "Go downstairs into the catacombs to 39.1,84.3",
				only = { races = { "Human" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "kill", quest = 1689, target = "Summoned Voidwalker", count = 1, oi = 1, map = 1453, x = 39.1, y = 84.3, f = "e" },
				},
			},
			{
				note = "Go upstairs to 39.2,85.3",
				only = { races = { "Human" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1689, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.2, y = 85.3, f = "e" },
				},
			},
			{
				note = "Ride the train to Ironforge|goto Ironforge|noway|c",
				goals = {
					{ t = "goto", map = 1453, x = 69.0, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Ironforge", text = "Ironforge", map = 1455, x = 55.5, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 433, title = "The Public Servant", npc = 1977, npcName = "Senator Mehr Stonehallow", map = 1426, x = 68.7, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 432, title = "Those Blasted Troggs!", npc = 1254, npcName = "Foreman Stonebrow", map = 1426, x = 69.1, y = 56.3, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 70.7,56.5",
				goals = {
					{ t = "kill", quest = 432, target = "Rockjaw Skullthumper", count = 6, oi = 1, map = 1426, x = 70.7, y = 56.5, f = "e" },
					{ t = "kill", quest = 433, target = "Rockjaw Bonesnapper", count = 10, oi = 1, map = 1426, x = 70.7, y = 56.5, f = "e" },
				},
			},
			{
				note = "Go outside to 68.7,56.0",
				goals = {
					{ t = "turnin", quest = 433, title = "The Public Servant", npc = 1977, npcName = "Senator Mehr Stonehallow", map = 1426, x = 68.7, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 432, title = "Those Blasted Troggs!", npc = 1254, npcName = "Foreman Stonebrow", map = 1426, x = 69.1, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Thelsamar", text = "Thelsamar", map = 1432, x = 33.9, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 416, title = "Rat Catching", npc = 1340, npcName = "Mountaineer Kadrell", map = 1432, x = 34.8, y = 47.1, f = "e" },
					{ t = "accept", quest = 1339, title = "Mountaineer Stormpike's Task", npc = 1340, npcName = "Mountaineer Kadrell", map = 1432, x = 34.8, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Thelsamar", text = "Thelsamar", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 418, title = "Thelsamar Blood Sausages", npc = 1963, npcName = "Vidra Hearthstove", map = 1432, x = 34.8, y = 49.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 418, itemName = "Boar Intestines", count = 3, oi = 1, map = 1432, x = 37.4, y = 38.9, f = "e" },
					{ t = "collect", quest = 418, itemName = "Bear Meat", count = 3, oi = 2, map = 1432, x = 37.4, y = 38.9, f = "e" },
					{ t = "collect", quest = 418, itemName = "Spider Ichor", count = 3, oi = 3, map = 1432, x = 37.4, y = 38.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 416, itemName = "Tunnel Rat Ear", count = 12, oi = 1, map = 1432, x = 24.5, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 353, title = "Stormpike's Delivery", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.8, y = 18.4, f = "e" },
					{ t = "turnin", quest = 1339, title = "Mountaineer Stormpike's Task", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.8, y = 18.4, f = "e" },
					{ t = "accept", quest = 1338, title = "Stormpike's Order", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.8, y = 18.4, f = "e" },
				},
			},
			{
				note = "Hearth to Thelsamar|goto Loch Modan,35.5,48.3,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 418, title = "Thelsamar Blood Sausages", npc = 1963, npcName = "Vidra Hearthstove", map = 1432, x = 34.8, y = 49.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 416, title = "Rat Catching", npc = 1340, npcName = "Mountaineer Kadrell", map = 1432, x = 34.8, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 224, title = "In Defense of the King's Lands (1)", npc = 1089, npcName = "Mountaineer Cobbleflint", map = 1432, x = 22.1, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 267, title = "The Trogg Threat", npc = 1092, npcName = "Captain Rugelfuss", map = 1432, x = 23.2, y = 73.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 224, target = "Stonesplinter Trogg", count = 10, oi = 1, map = 1432, x = 31.1, y = 70.7, f = "e" },
					{ t = "kill", quest = 224, target = "Stonesplinter Scout", count = 10, oi = 2, map = 1432, x = 31.1, y = 70.7, f = "e" },
					{ t = "collect", quest = 267, itemName = "Trogg Stone Tooth", count = 8, oi = 1, map = 1432, x = 31.1, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 224, title = "In Defense of the King's Lands (1)", npc = 1089, npcName = "Mountaineer Cobbleflint", map = 1432, x = 22.1, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 267, title = "The Trogg Threat", npc = 1092, npcName = "Captain Rugelfuss", map = 1432, x = 23.2, y = 73.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 1572, npcName = "Thorgrum Borrelson", map = 1432, x = 33.9, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1338, title = "Stormpike's Order", npc = 5413, npcName = "Furen Longbeard", map = 1453, x = 64.6, y = 37.2, f = "e" },
				},
			},
			{
				note = "Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c",
				goals = {
					{ t = "goto", map = 1453, x = 22.6, y = 56.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 983, title = "Buzzbox 827", npc = 3666, npcName = "Wizbang Cranktoggle", map = 1439, x = 37.0, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Auberdine", text = "Auberdine", f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Auberdine", text = "Auberdine", map = 1439, x = 36.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3524, title = "Washed Ashore (1)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 984, title = "How Big a Threat? (1)", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 954, title = "Bashal'Aran (1)", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 983, itemName = "Crawler Leg", count = 6, oi = 1, map = 1439, x = 36.1, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3524, itemName = "Sea Creature Bones", count = 1, oi = 1, map = 1439, x = 36.4, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 983, title = "Buzzbox 827", map = 1439, x = 36.7, y = 46.3, f = "e" },
					{ t = "accept", quest = 1001, title = "Buzzbox 411", map = 1439, x = 36.7, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3524, title = "Washed Ashore (1)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
					{ t = "accept", quest = 4681, title = "Washed Ashore (2)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1001, itemName = "Thresher Eye", count = 3, oi = 1, map = 1439, x = 31.7, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4681, itemName = "Sea Turtle Remains", count = 1, oi = 1, map = 1439, x = 31.9, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 39.6, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 984, title = "How Big a Threat? (1)", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
					{ t = "accept", quest = 4761, title = "Thundris Windweaver", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4681, title = "Washed Ashore (2)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4761, title = "Thundris Windweaver", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 954, title = "Bashal'Aran (1)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
					{ t = "accept", quest = 955, title = "Bashal'Aran (2)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 955, itemName = "Grell Earring", count = 8, oi = 1, map = 1439, x = 44.6, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 955, title = "Bashal'Aran (2)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1001, title = "Buzzbox 411", map = 1439, x = 42.0, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 13, f = "e" },
				},
			},
			{
				note = "Hearth to Auberdine|goto Darkshore,37.0,44.1,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				note = "Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c",
				goals = {
					{ t = "goto", map = 1439, x = 32.4, y = 43.8, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "accept", quest = 2998, title = "Tome of Divinity", npc = 927, npcName = "Brother Wilhelm", map = 1429, x = 41.1, y = 66.0, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 2998, title = "Tome of Divinity", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.6, y = 47.5, f = "e" },
				},
			},
			{
				note = "Click the Tome of Divinity in your bags|use Tome of Divinity##6775",
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "use", item = 6775, itemName = "Tome of Divinity", map = 1453, x = 50.6, y = 47.5, f = "e" },
					{ t = "accept", quest = 1642, title = "The Tome of Divinity (1)", map = 1453, x = 50.6, y = 47.5, f = "e" },
					{ t = "turnin", quest = 1642, title = "The Tome of Divinity (1)", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.6, y = 47.5, f = "e" },
					{ t = "accept", quest = 1643, title = "The Tome of Divinity (2)", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.6, y = 47.5, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1643, title = "The Tome of Divinity (2)", npc = 6174, npcName = "Stephanie Turner", map = 1453, x = 63.8, y = 72.2, f = "e" },
					{ t = "accept", quest = 1644, title = "The Tome of Divinity (3)", npc = 6174, npcName = "Stephanie Turner", map = 1453, x = 63.8, y = 72.2, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1644, title = "The Tome of Divinity (3)", npc = 6174, npcName = "Stephanie Turner", map = 1453, x = 63.8, y = 72.2, f = "e" },
					{ t = "accept", quest = 1780, title = "The Tome of Divinity (4)", npc = 6174, npcName = "Stephanie Turner", map = 1453, x = 63.8, y = 72.2, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1780, title = "The Tome of Divinity (4)", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.6, y = 47.5, f = "e" },
					{ t = "accept", quest = 1781, title = "The Tome of Divinity (5)", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.6, y = 47.5, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1781, title = "The Tome of Divinity (5)", npc = 6173, npcName = "Gazin Tenorm", map = 1453, x = 49.5, y = 45.0, f = "e" },
					{ t = "accept", quest = 1786, title = "The Tome of Divinity (6)", npc = 6173, npcName = "Gazin Tenorm", map = 1453, x = 49.5, y = 45.0, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1786, title = "The Tome of Divinity (6)", npc = 6172, npcName = "Henze Faulk", map = 1429, x = 72.6, y = 51.4, f = "e" },
					{ t = "accept", quest = 1787, title = "The Tome of Divinity (7)", npc = 6172, npcName = "Henze Faulk", map = 1429, x = 72.6, y = 51.4, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 1787, itemName = "Defias Script", count = 1, oi = 1, map = 1429, x = 73.6, y = 51.3, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1787, title = "The Tome of Divinity (7)", npc = 6173, npcName = "Gazin Tenorm", map = 1453, x = 49.5, y = 45.0, f = "e" },
					{ t = "accept", quest = 1788, title = "The Tome of Divinity (8)", npc = 6173, npcName = "Gazin Tenorm", map = 1453, x = 49.5, y = 45.0, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1788, title = "The Tome of Divinity (8)", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.6, y = 47.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 109, title = "Report to Gryan Stoutmantle", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
				},
			},
		},
	})
end

