-- TuWoW_Leveling — Guides/Leveling_Alliance_08.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-dwarf-1-13-part-2",
		pack = "guides",
		title = "Dwarf (1-13) (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 10,
		maxLevel = 13,
		zone = 1426,
		version = 1,
		races = { "Dwarf" },
		steps = {
			{
				only = { races = { "Dwarf" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1679, title = "Muren Stormpike", npc = 1229, npcName = "Granis Swiftaxe", map = 1426, x = 47.4, y = 52.6, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1679, title = "Muren Stormpike", npc = 6114, npcName = "Muren Stormpike", map = 1455, x = 70.8, y = 90.3, f = "e" },
					{ t = "accept", quest = 1678, title = "Vejrek", npc = 6114, npcName = "Muren Stormpike", map = 1455, x = 70.8, y = 90.3, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1678, itemName = "Vejrek's Head", count = 1, oi = 1, map = 1426, x = 27.8, y = 58.0, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1678, title = "Vejrek", npc = 6114, npcName = "Muren Stormpike", map = 1455, x = 70.8, y = 90.3, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 6064, title = "Taming the Beast (1)", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.8, y = 53.0, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", map = 1426, x = 47.9, y = 56.6, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6064, title = "Taming the Beast (1)", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.8, y = 53.0, f = "e" },
					{ t = "accept", quest = 6084, title = "Taming the Beast (2)", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.8, y = 53.0, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", map = 1426, x = 48.5, y = 56.4, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6084, title = "Taming the Beast (2)", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.8, y = 53.0, f = "e" },
					{ t = "accept", quest = 6085, title = "Taming the Beast (3)", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.8, y = 53.0, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", map = 1426, x = 49.3, y = 62.3, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6085, title = "Taming the Beast (3)", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.8, y = 53.0, f = "e" },
					{ t = "accept", quest = 6086, title = "Training the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.8, y = 53.0, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6086, title = "Training the Beast", npc = 10090, npcName = "Belia Thundergranite", map = 1455, x = 70.9, y = 85.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 413, title = "Shimmer Stout", npc = 1959, npcName = "Mountaineer Barleybrew", map = 1426, x = 86.3, y = 48.8, f = "e" },
					{ t = "accept", quest = 414, title = "Stout to Kadrell", npc = 1959, npcName = "Mountaineer Barleybrew", map = 1426, x = 86.3, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Thelsamar", text = "Thelsamar", map = 1432, x = 33.9, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 414, title = "Stout to Kadrell", npc = 1340, npcName = "Mountaineer Kadrell", map = 1432, x = 34.8, y = 47.1, f = "e" },
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
				note = "Fly to Ironforge|goto Ironforge|noway|c",
				goals = {
					{ t = "talk", npc = 1572, npcName = "Thorgrum Borrelson", map = 1432, x = 33.9, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 291, title = "The Reports", npc = 1274, npcName = "Senator Barin Redstone", map = 1455, x = 39.5, y = 57.5, f = "e" },
				},
			},
			{
				note = "Ride the train to Stormwind|goto Stormwind City|noway|c",
				goals = {
					{ t = "goto", map = 1455, x = 76.9, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1338, title = "Stormpike's Order", npc = 5413, npcName = "Furen Longbeard", map = 1453, x = 64.6, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Stormwind City", text = "Stormwind City", map = 1453, x = 71.0, y = 72.5, f = "e" },
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
					{ t = "level", level = 12, f = "e" },
				},
			},
			{
				note = "Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c",
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", map = 1439, x = 32.4, y = 43.8, f = "e" },
				},
			},
			{
				note = "Ride the train to Ironforge|goto Ironforge|noway|c",
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", map = 1439, x = 69.0, y = 30.9, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 3000, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.6, y = 12.2, f = "e" },
					{ t = "accept", quest = 1646, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.6, y = 12.2, f = "e" },
					{ t = "turnin", quest = 1646, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.6, y = 12.2, f = "e" },
					{ t = "accept", quest = 1647, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.6, y = 12.2, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1647, title = "The Tome of Divinity", npcName = "John Turner", map = 1455, x = 31.8, y = 78.2, f = "e" },
					{ t = "accept", quest = 1648, title = "The Tome of Divinity", npcName = "John Turner", map = 1455, x = 31.8, y = 78.2, f = "e" },
					{ t = "turnin", quest = 1648, title = "The Tome of Divinity", npcName = "John Turner", map = 1455, x = 31.8, y = 78.2, f = "e" },
					{ t = "accept", quest = 1778, title = "The Tome of Divinity", npcName = "John Turner", map = 1455, x = 31.8, y = 78.2, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1778, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.6, y = 12.2, f = "e" },
					{ t = "accept", quest = 1779, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.6, y = 12.2, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1783, title = "The Tome of Divinity", npcName = "to Narm Faulk", map = 1426, x = 78.3, y = 58.1, f = "e" },
					{ t = "accept", quest = 1784, title = "The Tome of Divinity", npcName = "to Narm Faulk", map = 1426, x = 78.3, y = 58.1, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 1784, itemName = "Dark Iron Script", count = 1, oi = 1, map = 1426, x = 77.9, y = 58.4, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1784, title = "The Tome of Divinity", npc = 6179, npcName = "Muiredon Battleforge", map = 1455, x = 23.5, y = 8.3, f = "e" },
					{ t = "accept", quest = 1785, title = "The Tome of Divinity", npc = 6179, npcName = "Muiredon Battleforge", map = 1455, x = 23.5, y = 8.3, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1785, title = "The Tome of Divinity", npc = 6179, npcName = "Tiza Battleforge", map = 1455, x = 27.6, y = 12.2, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", map = 1455, x = 21.6, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3524, itemName = "Sea Creature Bones", count = 1, oi = 1, map = 1455, x = 36.4, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 983, title = "Buzzbox 827", map = 1455, x = 36.7, y = 46.3, f = "e" },
					{ t = "accept", quest = 1001, title = "Buzzbox 411", map = 1455, x = 36.7, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3524, title = "Washed Ashore (1)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1455, x = 36.6, y = 45.6, f = "e" },
					{ t = "accept", quest = 4681, title = "Washed Ashore (2)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1455, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1001, itemName = "Thresher Eye", count = 3, oi = 1, map = 1455, x = 32.7, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4681, itemName = "Sea Turtle Remains", count = 1, oi = 1, map = 1455, x = 31.9, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 39.6, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 984, title = "How Big a Threat? (1)", npc = 3693, npcName = "Terenthis", map = 1455, x = 39.4, y = 43.5, f = "e" },
					{ t = "accept", quest = 4761, title = "Thundris Windweaver", npc = 3693, npcName = "Terenthis", map = 1455, x = 39.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4681, title = "Washed Ashore (2)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1455, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4761, title = "Thundris Windweaver", npc = 3649, npcName = "Thundris Windweaver", map = 1455, x = 37.4, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 954, title = "Bashal'Aran (1)", npc = 3650, npcName = "Asterion", map = 1455, x = 44.2, y = 36.3, f = "e" },
					{ t = "accept", quest = 955, title = "Bashal'Aran (2)", npc = 3650, npcName = "Asterion", map = 1455, x = 44.2, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 955, itemName = "Grell Earring", count = 8, oi = 1, map = 1455, x = 44.6, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 955, title = "Bashal'Aran (2)", npc = 3650, npcName = "Asterion", map = 1455, x = 44.2, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1001, title = "Buzzbox 411", map = 1455, x = 42.0, y = 28.6, f = "e" },
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
					{ t = "goto", map = 1455, x = 32.4, y = 43.8, f = "e" },
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

