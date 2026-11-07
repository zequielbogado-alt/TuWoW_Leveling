-- TuWoW_Leveling — Guides/Leveling_Alliance_16.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-20-25-part-2",
		pack = "guides",
		title = "Levels (20-25) (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 20,
		maxLevel = 25,
		zone = 1433,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 1054, title = "Culling the Threat", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.6, y = 49.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1440, x = 50.1, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1024, title = "Raene's Cleansing (3)", npc = 3916, npcName = "Shael'dryn", map = 1440, x = 53.5, y = 46.3, f = "e" },
					{ t = "accept", quest = 1026, title = "Raene's Cleansing (4)", npc = 3916, npcName = "Shael'dryn", map = 1440, x = 53.5, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1025, target = "Foulweald Den Watcher", count = 1, oi = 1, map = 1440, x = 50.9, y = 60.2, f = "e" },
					{ t = "kill", quest = 1025, target = "Foulweald Ursa", count = 2, oi = 2, map = 1440, x = 50.9, y = 60.2, f = "e" },
					{ t = "kill", quest = 1025, target = "Foulweald Totemic", count = 10, oi = 3, map = 1440, x = 50.9, y = 60.2, f = "e" },
					{ t = "kill", quest = 1025, target = "Foulweald Warrior", count = 12, oi = 4, map = 1440, x = 50.9, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1440, x = 44.0, y = 55.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1033, itemName = "Elune's Tear", count = 1, oi = 1, map = 1440, x = 46.2, y = 46.0, f = "e" },
				},
			},
			{
				note = "Hearth to Astranaar|goto Ashenvale,35.5,50.2,5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1025, title = "An Aggressive Defense", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.6, y = 49.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9533, title = "A Helping Hand", npc = 17106, npcName = "Vindicator Palanaar", map = 1440, x = 34.9, y = 49.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1033, title = "Elune's Tear", npc = 3894, npcName = "Pelturas Whitemoon", map = 1440, x = 37.4, y = 51.8, f = "e" },
					{ t = "accept", quest = 1034, title = "The Ruins of Stardust", npc = 3894, npcName = "Pelturas Whitemoon", map = 1440, x = 37.4, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1440, x = 37.4, y = 55.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1034, itemName = "Handful of Stardust", count = 5, oi = 1, map = 1440, x = 33.7, y = 66.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1034, title = "The Ruins of Stardust", npc = 3894, npcName = "Pelturas Whitemoon", map = 1440, x = 37.4, y = 51.8, f = "e" },
					{ t = "accept", quest = 1035, title = "Fallen Sky Lake", npc = 3894, npcName = "Pelturas Whitemoon", map = 1440, x = 37.4, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1016, title = "Elemental Bracers", npc = 3885, npcName = "Sentinel Velene Starstrike", map = 1440, x = 49.8, y = 67.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 12220, itemName = "Intact Elemental Bracer", count = 5, map = 1440, x = 49.4, y = 69.3, f = "e" },
					{ t = "collect", quest = 1016, itemName = "Divined Scroll", count = 1, oi = 1, map = 1440, x = 49.4, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1016, title = "Elemental Bracers", npc = 3885, npcName = "Sentinel Velene Starstrike", map = 1440, x = 49.8, y = 67.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1093, title = "Super Reaper 6000", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 59.0, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1070, title = "On Guard in Stonetalon (1)", npc = 4080, npcName = "Kaela Shadowspear", map = 1442, x = 59.7, y = 67.0, f = "e" },
					{ t = "accept", quest = 1085, title = "On Guard in Stonetalon (2)", npc = 4080, npcName = "Kaela Shadowspear", map = 1442, x = 59.7, y = 67.0, f = "e" },
					{ t = "turnin", quest = 1085, title = "On Guard in Stonetalon (2)", npc = 4077, npcName = "Gaxim Rustfizzle", map = 1442, x = 59.7, y = 67.0, f = "e" },
					{ t = "accept", quest = 1071, title = "A Gnome's Respite", npc = 4077, npcName = "Gaxim Rustfizzle", map = 1442, x = 59.7, y = 67.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1071, target = "Venture Co. Logger", count = 10, oi = 1, map = 1442, x = 61.7, y = 55.5, f = "e" },
					{ t = "kill", quest = 1071, target = "Venture Co. Deforester", count = 10, oi = 2, map = 1442, x = 61.7, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1093, itemName = "Super Reaper 6000 Blueprints", count = 1, oi = 1, map = 1442, x = 62.8, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1093, title = "Super Reaper 6000", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 59.0, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1071, title = "A Gnome's Respite", npc = 4077, npcName = "Gaxim Rustfizzle", map = 1442, x = 59.7, y = 67.0, f = "e" },
					{ t = "accept", quest = 1072, title = "An Old Colleague", npc = 4077, npcName = "Gaxim Rustfizzle", map = 1442, x = 59.7, y = 67.0, f = "e" },
					{ t = "accept", quest = 1075, title = "A Scroll from Mauren", npc = 4077, npcName = "Gaxim Rustfizzle", map = 1442, x = 59.7, y = 67.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1134, itemName = "Pridewing Venom Sac", count = 12, oi = 1, map = 1442, x = 51.5, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1056, title = "Journey to Stonetalon Peak", npc = 3994, npcName = "Keeper Albagorm", map = 1442, x = 37.1, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Stonetalon Peak", text = "Stonetalon Peak", map = 1442, x = 36.4, y = 7.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1134, title = "Pridewings of Stonetalon", npc = 3845, npcName = "Shindrell Swiftfire", map = 1440, x = 34.7, y = 48.8, f = "e" },
					{ t = "accept", quest = 4581, title = "Kayneth Stillwind", npc = 3845, npcName = "Shindrell Swiftfire", map = 1440, x = 34.7, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 994, title = "Escape Through Force", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
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
					{ t = "turnin", quest = 1075, title = "A Scroll from Mauren", npc = 4078, npcName = "Collin Mauren", map = 1453, x = 53.0, y = 86.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1072, title = "An Old Colleague", npc = 4081, npcName = "Lomac Gearstrip", map = 1455, x = 72.1, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 468, title = "Report to Mountaineer Rockgar", npc = 1340, npcName = "Mountaineer Kadrell", map = 1432, x = 34.8, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 468, title = "Report to Mountaineer Rockgar", npc = 1342, npcName = "Mountaineer Rockgar", map = 1432, x = 25.4, y = 10.4, f = "e" },
					{ t = "accept", quest = 455, title = "The Algaz Gauntlet", npc = 1342, npcName = "Mountaineer Rockgar", map = 1432, x = 25.4, y = 10.4, f = "e" },
				},
			},
			{
				note = "Go into the tunnel to 49.7,79.5|goto Wetlands,49.7,79.5",
				goals = {
					{ t = "kill", quest = 455, target = "Dragonmaw Scout", count = 8, oi = 2, f = "e" },
					{ t = "kill", quest = 455, target = "Dragonmaw Grunt", count = 6, oi = 3, f = "e" },
				},
			},
			{
				note = "Follow the path through the tunnels to 53.9,70.3|n",
				goals = {
					{ t = "goto", map = 1432, x = 53.9, y = 70.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 469, title = "Daily Delivery", npc = 2093, npcName = "Einar Stonegrip", map = 1432, x = 49.9, y = 39.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 305, title = "In Search of The Excavation Team (1)", npc = 2096, npcName = "Tarrel Rockweaver", map = 1432, x = 11.5, y = 52.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 469, title = "Daily Delivery", npc = 2094, npcName = "James Halloran", map = 1432, x = 8.5, y = 55.7, f = "e" },
					{ t = "accept", quest = 484, title = "Young Crocolisk Skins", npc = 2094, npcName = "James Halloran", map = 1432, x = 8.5, y = 55.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 279, title = "Claws from the Deep", npc = 1242, npcName = "Karl Boran", map = 1432, x = 8.3, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Menethil Harbor", text = "Menethil Harbor", map = 1432, x = 9.5, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 288, title = "The Third Fleet", npc = 1239, npcName = "First Mate Fitzsimmons", map = 1432, x = 10.9, y = 59.6, f = "e" },
					{ t = "accept", quest = 463, title = "The Greenwarden", npc = 1239, npcName = "First Mate Fitzsimmons", map = 1432, x = 10.9, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 1464, npcName = "Innkeeper Helbrek", itemName = "Flagon of Mead", count = 1, map = 1432, x = 10.8, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Menethil Harbor", text = "Menethil Harbor", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 288, title = "The Third Fleet", npc = 1239, npcName = "First Mate Fitzsimmons", map = 1432, x = 10.9, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 470, title = "Digging Through the Ooze", npc = 2111, npcName = "Sida", map = 1432, x = 11.8, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 455, title = "The Algaz Gauntlet", npc = 2086, npcName = "Valstag Ironjaw", map = 1432, x = 10.1, y = 56.9, f = "e" },
					{ t = "accept", quest = 473, title = "Report to Captain Stoutfist", npc = 2086, npcName = "Valstag Ironjaw", map = 1432, x = 10.1, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 473, title = "Report to Captain Stoutfist", npc = 2104, npcName = "Captain Stoutfist", map = 1432, x = 9.9, y = 57.5, f = "e" },
					{ t = "accept", quest = 464, title = "War Banners", npc = 2104, npcName = "Captain Stoutfist", map = 1432, x = 9.9, y = 57.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 279, target = "Bluegill Murloc", count = 12, oi = 1, map = 1432, x = 13.8, y = 41.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 279, itemName = "Gobbler's Head", count = 1, oi = 2, map = 1432, x = 15.0, y = 40.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 25, f = "e" },
				},
			},
		},
	})
end

