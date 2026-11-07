-- TuWoW_Leveling — Guides/Leveling_Alliance_04.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-night-elf-1-13-part-2",
		pack = "guides",
		title = "Night Elf (1-13) (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 10,
		maxLevel = 13,
		zone = 1438,
		version = 1,
		races = { "NightElf" },
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 937, title = "The Enchanted Glade", npc = 3519, npcName = "Sentinel Arynia Cloudsbreak", map = 1438, x = 38.3, y = 34.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 931, title = "The Shimmering Frond", map = 1438, x = 34.7, y = 29.0, f = "e" },
				},
			},
			{
				note = "Hearth to Dolanaar|goto Teldrassil,55.7,59.8,1|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7383, title = "Crown of the Earth (5)", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.1, y = 61.7, f = "e" },
					{ t = "accept", quest = 935, title = "Crown of the Earth (6)", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.1, y = 61.7, f = "e" },
				},
			},
			{
				note = "Follow the path up to 47.4,63.6",
				only = { races = { "NightElf" } },
				goals = {
					{ t = "accept", quest = 1684, title = "Elanaria", npc = 3598, npcName = "Kyra Windblade", map = 1438, x = 56.2, y = 59.2, f = "e" },
					{ t = "turnin", quest = 1684, title = "Elanaria", npc = 4088, npcName = "Elanaria", map = 1457, x = 57.3, y = 34.6, f = "e" },
					{ t = "accept", quest = 1683, title = "Vorlus Vilehoof", npc = 4088, npcName = "Elanaria", map = 1457, x = 57.3, y = 34.6, f = "e" },
					{ t = "collect", quest = 1683, itemName = "Horn of Vorlus", count = 1, oi = 1, map = 1457, x = 47.4, y = 63.6, f = "e" },
					{ t = "turnin", quest = 1683, title = "Vorlus Vilehoof", npc = 4088, npcName = "Elanaria", map = 1457, x = 57.3, y = 34.6, f = "e" },
					{ t = "accept", quest = 6063, title = "Taming the Beast (1)", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.7, y = 59.5, f = "e" },
					{ t = "turnin", quest = 6063, title = "Taming the Beast (1)", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.7, y = 59.5, f = "e" },
					{ t = "accept", quest = 6101, title = "Taming the Beast (2)", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.7, y = 59.5, f = "e" },
					{ t = "turnin", quest = 6101, title = "Taming the Beast (2)", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.7, y = 59.5, f = "e" },
					{ t = "accept", quest = 6102, title = "Taming the Beast (3)", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.7, y = 59.5, f = "e" },
					{ t = "turnin", quest = 6102, title = "Taming the Beast (3)", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.7, y = 59.5, f = "e" },
					{ t = "accept", quest = 6103, title = "Training the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.7, y = 59.5, f = "e" },
					{ t = "turnin", quest = 6103, title = "Training the Beast", npc = 4146, npcName = "Jocaste", map = 1457, x = 40.4, y = 8.5, f = "e" },
					{ t = "accept", quest = 5925, title = "Heeding the Call", npc = 3602, npcName = "Kal", map = 1438, x = 56.0, y = 61.5, f = "e" },
					{ t = "turnin", quest = 5925, title = "Heeding the Call", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.2, y = 8.1, f = "e" },
					{ t = "accept", quest = 5921, title = "Moonglade", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.2, y = 8.1, f = "e" },
					{ t = "turnin", quest = 5921, title = "Moonglade", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.2, y = 30.5, f = "e" },
					{ t = "accept", quest = 5929, title = "Great Bear Spirit", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.2, y = 30.5, f = "e" },
					{ t = "turnin", quest = 5929, title = "Great Bear Spirit", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.2, y = 30.5, f = "e" },
					{ t = "accept", quest = 5931, title = "Back to Darnassus", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.2, y = 30.5, f = "e" },
					{ t = "turnin", quest = 5931, title = "Back to Darnassus", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.2, y = 8.1, f = "e" },
					{ t = "accept", quest = 6001, title = "Body and Heart", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.2, y = 8.1, f = "e" },
					{ t = "turnin", quest = 6001, title = "Body and Heart", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.2, y = 8.1, f = "e" },
					{ t = "goto", map = 1457, x = 49.0, y = 62.0, f = "e", only = { classes = { "WARRIOR" } } },
					{ t = "goto", map = 1438, x = 59.0, y = 60.0, f = "e", only = { classes = { "HUNTER" } } },
					{ t = "goto", map = 1438, x = 56.0, y = 72.0, f = "e", only = { classes = { "HUNTER" } } },
					{ t = "goto", map = 1438, x = 38.9, y = 51.7, f = "e", only = { classes = { "HUNTER" } } },
					{ t = "talk", npc = 11956, npcName = "Great Bear Spirit", map = 1450, x = 39.1, y = 27.3, f = "e", only = { classes = { "DRUID" } } },
					{ t = "talk", npc = 11800, npcName = "Silva Fil'naveth", map = 1450, x = 44.2, y = 45.3, f = "e", only = { classes = { "DRUID" } } },
					{ t = "goto", map = 1457, x = 31.0, y = 42.0, f = "e", only = { classes = { "DRUID" } } },
					{ t = "talk", npc = 12144, npcName = "Lunaclaw Spirit", f = "e", only = { classes = { "DRUID" } } },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 486, npc = 2039, target = "Ursal the Mauler", count = 1, oi = 1, map = 1438, x = 39.2, y = 80.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 931, title = "The Shimmering Frond", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 486, title = "Ursal the Mauler", npc = 2078, npcName = "Athridas Bearmantle", map = 1438, x = 56.0, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6344, title = "Nessa Shadowsong", npc = 4241, npcName = "Mydrannul", map = 1457, x = 70.7, y = 45.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 922, title = "Rellian Greenspyre", npc = 3517, npcName = "Rellian Greenspyre", map = 1457, x = 38.2, y = 21.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 935, title = "Crown of the Earth (6)", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 35.1, y = 9.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6344, title = "Nessa Shadowsong", npc = 10118, npcName = "Nessa Shadowsong", map = 1438, x = 56.3, y = 92.4, f = "e" },
					{ t = "accept", quest = 6341, title = "The Bounty of Teldrassil", npc = 10118, npcName = "Nessa Shadowsong", map = 1438, x = 56.3, y = 92.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6341, title = "The Bounty of Teldrassil", npc = 3838, npcName = "Vesprystus", map = 1438, x = 58.4, y = 94.0, f = "e" },
					{ t = "accept", quest = 6342, title = "Flight to Auberdine", npc = 3838, npcName = "Vesprystus", map = 1438, x = 58.4, y = 94.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3524, title = "Washed Ashore (1)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6342, title = "Flight to Auberdine", npc = 4200, npcName = "Laird", map = 1439, x = 36.8, y = 44.3, f = "e" },
					{ t = "accept", quest = 6343, title = "Return to Nessa", npc = 4200, npcName = "Laird", map = 1439, x = 36.8, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6343, title = "Return to Nessa", npc = 10118, npcName = "Nessa Shadowsong", map = 1438, x = 56.3, y = 92.4, f = "e" },
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
					{ t = "collect", quest = 1001, itemName = "Thresher Eye", count = 3, oi = 1, map = 1439, x = 32.7, y = 47.7, f = "e" },
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
					{ t = "level", level = 12, f = "e" },
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
				goals = {
					{ t = "getfp", location = "Stormwind City", text = "Stormwind City", map = 1453, x = 71.0, y = 72.5, f = "e" },
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
				note = "Go outside to 68.7,56",
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
					{ t = "level", level = 13, f = "e" },
				},
			},
			{
				note = "Fly to Stormwind|goto Stormwind City|noway|c",
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
				goals = {
					{ t = "accept", quest = 109, title = "Report to Gryan Stoutmantle", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
				},
			},
		},
	})
end

