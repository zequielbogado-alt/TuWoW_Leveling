-- TuWoW_Leveling — Guides/Leveling_Alliance_13.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-main-guide-13-20",
		pack = "guides",
		title = "Main Guide (13-20) (Parte 1/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-main-guide-13-20-part-2",
		author = "TuWoW & Zygor",
		minLevel = 13,
		maxLevel = 20,
		zone = 1436,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 64, title = "The Forgotten Heirloom", npc = 237, npcName = "Farmer Furlbrow", map = 1436, x = 60.0, y = 19.4, f = "e" },
					{ t = "accept", quest = 36, title = "Westfall Stew (1)", npc = 238, npcName = "Verna Furlbrow", map = 1436, x = 60.0, y = 19.4, f = "e" },
					{ t = "accept", quest = 151, title = "Poor Old Blanchy", npc = 238, npcName = "Verna Furlbrow", map = 1436, x = 60.0, y = 19.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9, title = "The Killing Fields", npc = 233, npcName = "Farmer Saldean", map = 1436, x = 56.0, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 36, title = "Westfall Stew (1)", npc = 235, npcName = "Salma Saldean", map = 1436, x = 56.4, y = 30.5, f = "e" },
					{ t = "accept", quest = 38, title = "Westfall Stew (2)", npc = 235, npcName = "Salma Saldean", map = 1436, x = 56.4, y = 30.5, f = "e" },
					{ t = "accept", quest = 22, title = "Goretusk Liver Pie", npc = 235, npcName = "Salma Saldean", map = 1436, x = 56.4, y = 30.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Sentinel Hill", text = "Sentinel Hill", map = 1436, x = 56.6, y = 52.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 153, title = "Red Leather Bandanas", npc = 878, npcName = "Scout Galiaan", map = 1436, x = 54.0, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Sentinel Hill", text = "Sentinel Hill", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 109, title = "Report to Gryan Stoutmantle", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.3, y = 47.5, f = "e" },
					{ t = "accept", quest = 12, title = "The People's Militia (1)", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.3, y = 47.5, f = "e" },
					{ t = "accept", quest = 102, title = "Patrolling Westfall", npc = 821, npcName = "Captain Danuvin", map = 1436, x = 56.3, y = 47.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12, target = "Defias Trapper", count = 15, oi = 1, map = 1436, x = 48.6, y = 46.8, f = "e" },
					{ t = "kill", quest = 12, target = "Defias Smuggler", count = 15, oi = 2, map = 1436, x = 48.6, y = 46.8, f = "e" },
					{ t = "collect", quest = 153, itemName = "Red Leather Bandana", count = 15, oi = 1, map = 1436, x = 48.6, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12, title = "The People's Militia (1)", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.3, y = 47.5, f = "e" },
					{ t = "accept", quest = 13, title = "The People's Militia (2)", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.3, y = 47.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 153, title = "Red Leather Bandanas", npc = 878, npcName = "Scout Galiaan", map = 1436, x = 54.0, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 14, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "accept", quest = 6121, title = "Lessons Anew", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.2, y = 8.1, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6121, title = "Lessons Anew", npc = 11802, npcName = "Dendrite Starblaze", map = 1457, x = 56.2, y = 30.5, f = "e" },
					{ t = "accept", quest = 6122, title = "The Principal Source", npc = 11802, npcName = "Dendrite Starblaze", map = 1457, x = 56.2, y = 30.5, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "talk", npc = 11800, npcName = "Silva Fil'naveth", map = 1457, x = 44.2, y = 45.3, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", map = 1457, x = 54.6, y = 31.7, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 6122, itemName = "Filled Cliffspring Falls Sampler", count = 1, oi = 1, map = 1457, x = 54.7, y = 33.1, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6122, title = "The Principal Source", npc = 3702, npcName = "Alanndarian Nightsong", map = 1457, x = 38.0, y = 41.0, f = "e" },
					{ t = "accept", quest = 6123, title = "Gathering the Cure", npc = 3702, npcName = "Alanndarian Nightsong", map = 1457, x = 38.0, y = 41.0, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 6123, itemName = "Lunar Fungus", count = 12, oi = 2, map = 1457, x = 43.0, y = 50.5, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6123, title = "Gathering the Cure", npc = 3702, npcName = "Alanndarian Nightsong", map = 1457, x = 37.7, y = 40.6, f = "e" },
					{ t = "accept", quest = 6124, title = "Curing the Sick", npc = 3702, npcName = "Alanndarian Nightsong", map = 1457, x = 37.7, y = 40.6, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6124, title = "Curing the Sick", npc = 11802, npcName = "Dendrite Starblaze", map = 1457, x = 56.2, y = 30.5, f = "e" },
					{ t = "accept", quest = 6125, title = "Power over Poison", npc = 11802, npcName = "Dendrite Starblaze", map = 1457, x = 56.2, y = 30.5, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "talk", npc = 11800, npcName = "Silva Fil'naveth", map = 1457, x = 44.2, y = 45.3, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6125, title = "Power over Poison", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.2, y = 8.1, f = "e" },
				},
			},
			{
				note = "Hearth to Sentinel Hill|goto Westfall,52.9,53.6,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 22, itemName = "Goretusk Liver", count = 8, oi = 1, map = 1457, x = 53.8, y = 42.5, f = "e" },
					{ t = "collect", quest = 38, itemName = "Goretusk Snout", count = 3, oi = 3, map = 1457, x = 53.8, y = 42.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 38, itemName = "Stringy Vulture Meat", count = 3, oi = 1, map = 1457, x = 59.0, y = 43.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "a Handful of Oats", count = 1, map = 1457, x = 57.1, y = 19.3, f = "e" },
					{ t = "collect", itemName = "the other 7 Handfuls of Oats as you see them around Westfall", count = 1, map = 1457, x = 57.1, y = 19.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 102, itemName = "Gnoll Paw", count = 8, oi = 1, map = 1457, x = 57.0, y = 15.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 38, itemName = "Murloc Eye", count = 3, oi = 2, map = 1457, x = 55.1, y = 12.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 64, itemName = "Furlbrow's Pocket Watch", count = 1, oi = 1, map = 1457, x = 49.4, y = 19.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9, target = "Harvest Watcher", count = 20, oi = 1, map = 1457, x = 51.1, y = 21.8, f = "e" },
					{ t = "collect", quest = 38, itemName = "Okra", count = 3, oi = 4, map = 1457, x = 51.1, y = 21.8, f = "e" },
					{ t = "collect", quest = 103, item = 814, itemName = "Flask of Oil", count = 5, map = 1457, x = 51.1, y = 21.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9, title = "The Killing Fields", npc = 233, npcName = "Farmer Saldean", map = 1457, x = 56.0, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 38, title = "Westfall Stew (2)", npc = 235, npcName = "Salma Saldean", map = 1457, x = 56.4, y = 30.5, f = "e" },
					{ t = "turnin", quest = 22, title = "Goretusk Liver Pie", npc = 235, npcName = "Salma Saldean", map = 1457, x = 56.4, y = 30.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 64, title = "The Forgotten Heirloom", npc = 237, npcName = "Farmer Furlbrow", map = 1457, x = 60.0, y = 19.4, f = "e" },
					{ t = "turnin", quest = 151, title = "Poor Old Blanchy", npc = 238, npcName = "Verna Furlbrow", map = 1457, x = 60.0, y = 19.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 102, title = "Patrolling Westfall", npc = 821, npcName = "Captain Danuvin", map = 1457, x = 56.3, y = 47.5, f = "e" },
				},
			},
			{
				note = "Ride the boat to Auberdine|goto Darkshore|noway|c",
				goals = {
					{ t = "goto", map = 1453, x = 22.6, y = 56.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4811, title = "The Red Crystal", npc = 2930, npcName = "Sentinel Glynda Nal'Shea", map = 1439, x = 37.7, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2118, title = "Plagued Lands", npc = 3701, npcName = "Tharnariun Treetender", map = 1439, x = 38.8, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 985, title = "How Big a Threat? (2)", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 982, title = "Deep Ocean, Vast Sea", npc = 6301, npcName = "Gorbold Steelhand", map = 1439, x = 38.1, y = 41.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4762, title = "The Cliffspring River", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 985, target = "Blackwood Pathfinder", count = 8, oi = 1, map = 1439, x = 40.3, y = 53.0, f = "e" },
					{ t = "kill", quest = 985, target = "Blackwood Windtalker", count = 5, oi = 2, map = 1439, x = 40.3, y = 53.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 38.4, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2118, title = "Plagued Lands", npc = 3701, npcName = "Tharnariun Treetender", map = 1439, x = 38.8, y = 43.4, f = "e" },
					{ t = "accept", quest = 2138, title = "Cleansing of the Infected", npc = 3701, npcName = "Tharnariun Treetender", map = 1439, x = 38.8, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 985, title = "How Big a Threat? (2)", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 47.4, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4811, title = "The Red Crystal", npc = 2930, npcName = "Sentinel Glynda Nal'Shea", map = 1439, x = 37.7, y = 43.4, f = "e" },
					{ t = "accept", quest = 4812, title = "As Water Cascades", npc = 2930, npcName = "Sentinel Glynda Nal'Shea", map = 1439, x = 37.7, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4812, itemName = "Moonwell Water Tube", count = 1, oi = 1, map = 1439, x = 37.8, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4812, title = "As Water Cascades", map = 1439, x = 47.3, y = 48.7, f = "e" },
					{ t = "accept", quest = 4813, title = "The Fragments Within", map = 1439, x = 47.3, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 956, title = "Bashal'Aran (3)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 956, itemName = "Ancient Moonstone Seal", count = 1, oi = 1, map = 1439, x = 47.4, y = 36.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 956, title = "Bashal'Aran (3)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
					{ t = "accept", quest = 957, title = "Bashal'Aran (4)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1002, title = "Buzzbox 323", map = 1439, x = 42.0, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2138, target = "Rabid Thistle Bear", count = 20, oi = 1, map = 1439, x = 48.4, y = 30.7, f = "e" },
					{ t = "collect", quest = 1002, itemName = "Moonstalker Fang", count = 6, oi = 1, map = 1439, x = 48.4, y = 30.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1002, title = "Buzzbox 323", map = 1439, x = 51.3, y = 24.6, f = "e" },
					{ t = "accept", quest = 1003, title = "Buzzbox 525", map = 1439, x = 51.3, y = 24.6, f = "e" },
				},
			},
			{
				note = "Jump down into the water below the bridge to 50.9,25.7",
				goals = {
					{ t = "collect", quest = 4762, itemName = "Cliffspring River Sample", count = 1, oi = 1, map = 1439, x = 50.9, y = 25.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4725, title = "Beached Sea Turtle", map = 1439, x = 44.2, y = 20.6, f = "e" },
				},
			},
			{
				note = "Go underwater to 39.6,27.5",
				goals = {
					{ t = "collect", quest = 982, itemName = "Mist Veil's Lockbox", count = 1, oi = 2, map = 1439, x = 39.6, y = 27.5, f = "e" },
				},
			},
			{
				note = "Go underwater to 38.2,28.8",
				goals = {
					{ t = "collect", quest = 982, itemName = "Silver Dawning's Lockbox", count = 1, oi = 1, map = 1439, x = 38.2, y = 28.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 982, title = "Deep Ocean, Vast Sea", npc = 6301, npcName = "Gorbold Steelhand", map = 1439, x = 38.1, y = 41.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4762, title = "The Cliffspring River", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
					{ t = "accept", quest = 958, title = "Tools of the Highborne", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4813, title = "The Fragments Within", npc = 2930, npcName = "Sentinel Glynda Nal'Shea", map = 1439, x = 37.7, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 947, title = "Cave Mushrooms", npc = 3583, npcName = "Barithras Moonshade", map = 1439, x = 37.3, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 963, title = "For Love Eternal", npc = 3644, npcName = "Cerellean Whiteclaw", map = 1439, x = 35.7, y = 43.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4725, title = "Beached Sea Turtle", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2138, title = "Cleansing of the Infected", npc = 3701, npcName = "Tharnariun Treetender", map = 1439, x = 38.8, y = 43.4, f = "e" },
					{ t = "accept", quest = 2139, title = "Tharnariun's Hope", npc = 3701, npcName = "Tharnariun Treetender", map = 1439, x = 38.8, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 953, title = "The Fall of Ameth'Aran", npc = 3639, npcName = "Sentinel Tysha Moonblade", map = 1439, x = 40.3, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 958, itemName = "Highborne Relic", count = 7, oi = 1, map = 1439, x = 41.5, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 43.3, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 963, itemName = "Anaya's Pendant", count = 1, oi = 1, map = 1439, x = 43.3, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 42.4, y = 61.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 42.6, y = 63.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 953, title = "The Fall of Ameth'Aran", npc = 3639, npcName = "Sentinel Tysha Moonblade", map = 1439, x = 40.3, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 963, title = "For Love Eternal", npc = 3644, npcName = "Cerellean Whiteclaw", map = 1439, x = 35.7, y = 43.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 958, title = "Tools of the Highborne", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 957, title = "Bashal'Aran (4)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 52.4, y = 35.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2139, target = "Den Mother", count = 1, oi = 1, map = 1439, x = 51.5, y = 38.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 54.6, y = 31.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 947, itemName = "Scaber Stalk", count = 5, oi = 1, map = 1439, x = 55.1, y = 33.6, f = "e" },
					{ t = "collect", quest = 947, itemName = "Death Cap", count = 1, oi = 2, map = 1439, x = 55.1, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2139, title = "Tharnariun's Hope", npc = 3701, npcName = "Tharnariun Treetender", map = 1439, x = 38.8, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 947, title = "Cave Mushrooms", npc = 3583, npcName = "Barithras Moonshade", map = 1439, x = 37.3, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 17, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "accept", quest = 27, title = "A Lesson to Learn", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.2, y = 8.1, f = "e" },
				},
			},
		},
	})
end

