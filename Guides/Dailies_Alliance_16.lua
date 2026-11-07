-- TuWoW_Leveling — Guides/Dailies_Alliance_16.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-home-cities-exalted-reputation-guide-part-2",
		pack = "guides",
		title = "Home Cities Exalted Reputation Guide (Parte 2/5)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		next = "zygor/dailies/a-dai-icecrown-home-cities-exalted-reputation-guide-part-3",
		author = "TuWoW & Zygor",
		minLevel = 77,
		zone = 1429,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 179, title = "Dwarven Outfitters", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.8, y = 71.3, f = "e" },
					{ t = "accept", quest = 233, title = "Coldridge Valley Mail Delivery (1)", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.8, y = 71.3, f = "e" },
					{ t = "accept", quest = 170, title = "A New Threat", npc = 713, npcName = "Balir Frosthammer", map = 1426, x = 29.8, y = 71.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 179, title = "Dwarven Outfitters", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.8, y = 71.3, f = "e" },
					{ t = "accept", quest = 233, title = "Coldridge Valley Mail Delivery (1)", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.8, y = 71.3, f = "e" },
					{ t = "accept", quest = 170, title = "A New Threat", npc = 713, npcName = "Balir Frosthammer", map = 1426, x = 29.8, y = 71.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 170, target = "Rockjaw Trogg", count = 6, oi = 1, map = 1426, x = 30.4, y = 74.8, f = "e" },
					{ t = "kill", quest = 170, target = "Burly Rockjaw Trogg", count = 6, oi = 2, map = 1426, x = 30.4, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 170, title = "A New Threat", npc = 713, npcName = "Balir Frosthammer", map = 1426, x = 29.8, y = 71.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3361, title = "A Refugee's Quandary", npc = 8416, npcName = "Felix Whindlebolt", map = 1426, x = 28.5, y = 67.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3106, title = "Simple Rune", npc = 912, npcName = "Thran Khorman", map = 1426, x = 28.8, y = 67.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3109, title = "Encrypted Rune", npc = 916, npcName = "Solm Hargrin", map = 1426, x = 28.4, y = 67.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3110, title = "Hallowed Rune", npc = 837, npcName = "Branstock Khalder", map = 1426, x = 28.6, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3107, title = "Consecrated Rune", npc = 926, npcName = "Bromos Grummner", map = 1426, x = 28.8, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3108, title = "Etched Rune", npc = 895, npcName = "Thorgas Grimson", map = 1426, x = 29.2, y = 67.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 233, title = "Coldridge Valley Mail Delivery (1)", npc = 714, npcName = "Talin Keeneye", map = 1426, x = 22.6, y = 71.4, f = "e" },
					{ t = "accept", quest = 234, title = "Coldridge Valley Mail Delivery (2)", npc = 714, npcName = "Talin Keeneye", map = 1426, x = 22.6, y = 71.4, f = "e" },
					{ t = "accept", quest = 183, title = "The Boar Hunter", npc = 714, npcName = "Talin Keeneye", map = 1426, x = 22.6, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 183, target = "Small Crag Boar", count = 12, oi = 1, map = 1426, x = 22.0, y = 71.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 183, title = "The Boar Hunter", npc = 714, npcName = "Talin Keeneye", map = 1426, x = 22.6, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 234, title = "Coldridge Valley Mail Delivery (2)", npc = 786, npcName = "Grelin Whitebeard", map = 1426, x = 25.1, y = 75.7, f = "e" },
					{ t = "accept", quest = 182, title = "The Troll Cave", npc = 786, npcName = "Grelin Whitebeard", map = 1426, x = 25.1, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3361, itemName = "Felix's Bucket of Bolts", count = 1, oi = 3, map = 1426, x = 26.3, y = 79.3, f = "e" },
					{ t = "kill", quest = 182, target = "Frostmane Troll Whelp", count = 10, oi = 1, map = 1426, x = 26.3, y = 79.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 182, title = "The Troll Cave", npc = 786, npcName = "Grelin Whitebeard", map = 1426, x = 25.1, y = 75.7, f = "e" },
					{ t = "accept", quest = 218, title = "The Stolen Journal", npc = 786, npcName = "Grelin Whitebeard", map = 1426, x = 25.1, y = 75.7, f = "e" },
				},
			},
			{
				note = "Go into the cave at 26.8,79.8|c",
				goals = {
					{ t = "goto", map = 1426, x = 26.8, y = 79.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 218, itemName = "Grelin Whitebeard's Journal", count = 1, oi = 1, map = 1426, x = 30.5, y = 80.2, f = "e" },
				},
			},
			{
				note = "Go outside to 22.8,80.0",
				goals = {
					{ t = "collect", quest = 3361, itemName = "Felix's Chest", count = 1, oi = 2, map = 1426, x = 22.8, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3361, itemName = "Felix's Box", count = 1, oi = 1, map = 1426, x = 20.9, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 218, title = "The Stolen Journal", npc = 786, npcName = "Grelin Whitebeard", map = 1426, x = 25.1, y = 75.7, f = "e" },
					{ t = "accept", quest = 282, title = "Senir's Observations (1)", npc = 786, npcName = "Grelin Whitebeard", map = 1426, x = 25.1, y = 75.7, f = "e" },
					{ t = "accept", quest = 3364, title = "Scalding Mornbrew Delivery", npc = 12738, npcName = "Nori Pridedrift", map = 1426, x = 25.1, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3361, title = "A Refugee's Quandary", npc = 8416, npcName = "Felix Whindlebolt", map = 1426, x = 28.5, y = 67.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3364, title = "Scalding Mornbrew Delivery", npc = 836, npcName = "Durnan Furcutter", map = 1426, x = 28.8, y = 66.4, f = "e" },
					{ t = "accept", quest = 3365, title = "Bring Back the Mug", npc = 836, npcName = "Durnan Furcutter", map = 1426, x = 28.8, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3365, title = "Bring Back the Mug", npc = 12738, npcName = "Nori Pridedrift", map = 1426, x = 25.0, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 282, title = "Senir's Observations (1)", npc = 1965, npcName = "Mountaineer Thalos", map = 1426, x = 33.5, y = 71.8, f = "e" },
					{ t = "accept", quest = 420, title = "Senir's Observations (2)", npc = 1965, npcName = "Mountaineer Thalos", map = 1426, x = 33.5, y = 71.8, f = "e" },
					{ t = "accept", quest = 2160, title = "Supplies to Tannok", npc = 6782, npcName = "Hands Springsprocket", map = 1426, x = 33.5, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 420, title = "Senir's Observations (2)", npc = 1252, npcName = "Senir Whitebeard", map = 1426, x = 46.7, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 384, title = "Beer Basted Boar Ribs", npc = 1267, npcName = "Ragnar Thunderbrew", map = 1426, x = 46.8, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2160, title = "Supplies to Tannok", npc = 6806, npcName = "Tannok Frosthammer", map = 1426, x = 47.3, y = 52.3, f = "e" },
					{ t = "buy", npc = 1247, npcName = "Innkeeper Belm", itemName = "Rhapsody Malt", count = 1, map = 1426, x = 47.3, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Kharanos", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5541, title = "Ammo for Rumbleshot", npc = 1694, npcName = "Loslor Rudge", map = 1426, x = 50.1, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 400, title = "Tools for Steelgrill", npc = 1872, npcName = "Tharek Blackstone", map = 1426, x = 46.0, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 400, title = "Tools for Steelgrill", npc = 1376, npcName = "Beldin Steelgrill", map = 1426, x = 50.4, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 313, title = "The Grizzled Den", npc = 1377, npcName = "Pilot Stonegear", map = 1426, x = 49.6, y = 48.5, f = "e" },
					{ t = "accept", quest = 317, title = "Stocking Jetsteam", npc = 1378, npcName = "Pilot Bellowfiz", map = 1426, x = 49.6, y = 48.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 317, itemName = "Chunk of Boar Meat", count = 4, oi = 1, map = 1426, x = 49.7, y = 50.8, f = "e" },
					{ t = "collect", quest = 384, itemName = "Crag Boar Rib", count = 6, oi = 1, map = 1426, x = 49.7, y = 50.8, f = "e" },
					{ t = "collect", quest = 317, itemName = "Thick Bear Fur", count = 2, oi = 2, map = 1426, x = 49.7, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5541, itemName = "Rumbleshot's Ammo", count = 1, oi = 1, map = 1426, x = 44.1, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 313, itemName = "Wendigo Mane", count = 8, oi = 1, map = 1426, x = 42.4, y = 54.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5541, title = "Ammo for Rumbleshot", npc = 1243, npcName = "Hegnar Rumbleshot", map = 1426, x = 40.7, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 384, title = "Beer Basted Boar Ribs", npc = 1267, npcName = "Ragnar Thunderbrew", map = 1426, x = 46.8, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 287, title = "Frostmane Hold", npc = 1252, npcName = "Senir Whitebeard", map = 1426, x = 46.7, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 412, title = "Operation Recombobulation", npc = 1269, npcName = "Razzle Sprysprocket", map = 1426, x = 45.8, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 313, title = "The Grizzled Den", npc = 1377, npcName = "Pilot Stonegear", map = 1426, x = 49.6, y = 48.5, f = "e" },
					{ t = "turnin", quest = 317, title = "Stocking Jetsteam", npc = 1378, npcName = "Pilot Bellowfiz", map = 1426, x = 49.6, y = 48.5, f = "e" },
					{ t = "accept", quest = 318, title = "Evershine", npc = 1378, npcName = "Pilot Bellowfiz", map = 1426, x = 49.6, y = 48.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 318, title = "Evershine", npc = 1374, npcName = "Rejold Barleybrew", map = 1426, x = 30.2, y = 45.6, f = "e" },
					{ t = "accept", quest = 319, title = "A Favor for Evershine", npc = 1374, npcName = "Rejold Barleybrew", map = 1426, x = 30.2, y = 45.6, f = "e" },
					{ t = "accept", quest = 315, title = "The Perfect Stout", npc = 1374, npcName = "Rejold Barleybrew", map = 1426, x = 30.2, y = 45.6, f = "e" },
					{ t = "accept", quest = 310, title = "Bitter Rivals", npc = 1375, npcName = "Marleth Barleybrew", map = 1426, x = 30.2, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 319, target = "Ice Claw Bear", count = 6, oi = 1, map = 1426, x = 27.8, y = 48.3, f = "e" },
					{ t = "kill", quest = 319, target = "Elder Crag Boar", count = 8, oi = 2, map = 1426, x = 27.8, y = 48.3, f = "e" },
					{ t = "kill", quest = 319, target = "Snow Leopard", count = 8, oi = 3, map = 1426, x = 27.8, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 319, title = "A Favor for Evershine", npc = 1374, npcName = "Rejold Barleybrew", map = 1426, x = 30.2, y = 45.6, f = "e" },
					{ t = "accept", quest = 320, title = "Return to Bellowfiz", npc = 1374, npcName = "Rejold Barleybrew", map = 1426, x = 30.2, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 37.9, y = 42.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 315, itemName = "Shimmerweed", count = 6, oi = 1, map = 1426, x = 41.2, y = 36.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 320, title = "Return to Bellowfiz", npc = 1378, npcName = "Pilot Bellowfiz", map = 1426, x = 49.6, y = 48.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 1247, npcName = "Innkeeper Belm", itemName = "Thunder Ale", count = 1, map = 1426, x = 47.3, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 310, title = "Bitter Rivals", npc = 1373, npcName = "Jarven Thunderbrew", map = 1426, x = 47.6, y = 52.7, f = "e" },
					{ t = "accept", quest = 311, title = "Return to Marleth", npc = 1373, npcName = "Jarven Thunderbrew", map = 1426, x = 47.6, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 315, title = "The Perfect Stout", npc = 1374, npcName = "Rejold Barleybrew", map = 1426, x = 30.2, y = 45.6, f = "e" },
					{ t = "accept", quest = 413, title = "Shimmer Stout", npc = 1374, npcName = "Rejold Barleybrew", map = 1426, x = 30.2, y = 45.6, f = "e" },
					{ t = "turnin", quest = 311, title = "Return to Marleth", npc = 1375, npcName = "Marleth Barleybrew", map = 1426, x = 30.2, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 287, target = "Frostmane Headhunter", count = 5, oi = 2, map = 1426, x = 25.1, y = 51.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 21.2, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 412, itemName = "Restabilization Cog", count = 8, oi = 1, map = 1426, x = 25.9, y = 43.2, f = "e" },
					{ t = "collect", quest = 412, itemName = "Gyromechanic Gear", count = 8, oi = 2, map = 1426, x = 25.9, y = 43.2, f = "e" },
				},
			},
			{
				note = "Hearth to Kharanos|goto Dun Morogh,47.3,52.5,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 412, title = "Operation Recombobulation", npc = 1269, npcName = "Razzle Sprysprocket", map = 1426, x = 45.8, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 287, title = "Frostmane Hold", npc = 1252, npcName = "Senir Whitebeard", map = 1426, x = 46.7, y = 53.8, f = "e" },
					{ t = "accept", quest = 291, title = "The Reports", npc = 1252, npcName = "Senir Whitebeard", map = 1426, x = 46.7, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 314, title = "Protecting the Herd", npc = 1265, npcName = "Rudra Amberstill", map = 1426, x = 63.1, y = 49.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 59.8, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 314, itemName = "Fang of Vagash", count = 1, oi = 1, map = 1426, x = 62.6, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 314, title = "Protecting the Herd", npc = 1265, npcName = "Rudra Amberstill", map = 1426, x = 63.1, y = 49.9, f = "e" },
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
					{ t = "turnin", quest = 413, title = "Shimmer Stout", npc = 1959, npcName = "Mountaineer Barleybrew", map = 1426, x = 86.3, y = 48.8, f = "e" },
					{ t = "accept", quest = 414, title = "Stout to Kadrell", npc = 1959, npcName = "Mountaineer Barleybrew", map = 1426, x = 86.3, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 224, title = "In Defense of the King's Lands (1)", npc = 1089, npcName = "Mountaineer Cobbleflint", map = 1426, x = 22.1, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 267, title = "The Trogg Threat", npc = 1092, npcName = "Captain Rugelfuss", map = 1426, x = 23.2, y = 73.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 224, target = "Stonesplinter Trogg", count = 10, oi = 1, map = 1426, x = 31.1, y = 70.7, f = "e" },
					{ t = "kill", quest = 224, target = "Stonesplinter Scout", count = 10, oi = 2, map = 1426, x = 31.1, y = 70.7, f = "e" },
					{ t = "collect", quest = 267, itemName = "Trogg Stone Tooth", count = 8, oi = 1, map = 1426, x = 31.1, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 224, title = "In Defense of the King's Lands (1)", npc = 1089, npcName = "Mountaineer Cobbleflint", map = 1426, x = 22.1, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 237, title = "In Defense of the King's Lands (2)", npc = 1091, npcName = "Mountaineer Gravelgaw", map = 1432, x = 23.5, y = 76.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 267, title = "The Trogg Threat", npc = 1092, npcName = "Captain Rugelfuss", map = 1432, x = 23.2, y = 73.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 237, target = "Stonesplinter Skullthumper", count = 10, oi = 1, map = 1432, x = 36.1, y = 80.4, f = "e" },
					{ t = "kill", quest = 237, target = "Stonesplinter Seer", count = 10, oi = 2, map = 1432, x = 36.1, y = 80.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 237, title = "In Defense of the King's Lands (2)", npc = 1091, npcName = "Mountaineer Gravelgaw", map = 1432, x = 23.5, y = 76.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 263, title = "In Defense of the King's Lands (3)", npc = 1090, npcName = "Mountaineer Wallbang", map = 1432, x = 23.5, y = 74.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Thelsamar", map = 1432, x = 33.9, y = 51.0, f = "e" },
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
					{ t = "accept", quest = 255, title = "Mercenaries", npcName = "Magistrate Bluntnose", map = 1432, x = 34.6, y = 44.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 418, title = "Thelsamar Blood Sausages", npc = 1963, npcName = "Vidra Hearthstove", map = 1432, x = 34.8, y = 49.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 256, title = "WANTED: Chok'sul", map = 1432, x = 37.3, y = 46.5, f = "e" },
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
					{ t = "turnin", quest = 353, title = "Stormpike's Delivery", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.8, y = 18.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 263, target = "Stonesplinter Bonesnapper", count = 10, oi = 1, map = 1432, x = 55.2, y = 25.2, f = "e" },
					{ t = "kill", quest = 263, target = "Stonesplinter Shaman", count = 10, oi = 2, map = 1432, x = 55.2, y = 25.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 255, target = "Mo'grosh Orge", count = 4, oi = 1, map = 1432, x = 69.0, y = 28.0, f = "e" },
					{ t = "kill", quest = 255, target = "Mo'grosh Enforcer", count = 4, oi = 3, map = 1432, x = 69.0, y = 28.0, f = "e" },
				},
			},
		},
	})
end

