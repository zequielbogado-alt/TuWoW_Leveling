-- TuWoW_Leveling — Guides/Leveling_Alliance_15.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-20-25",
		pack = "guides",
		title = "Levels (20-25) (Parte 1/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-20-25-part-2",
		author = "TuWoW & Zygor",
		minLevel = 20,
		maxLevel = 25,
		zone = 1433,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 127, itemName = "Spotted Sunfish", count = 10, oi = 1, map = 1433, x = 48.2, y = 73.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 92, itemName = "Tough Condor Meat", count = 5, oi = 2, map = 1433, x = 55.5, y = 74.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 20, itemName = "Battleworn Axe", count = 10, oi = 1, map = 1433, x = 70.6, y = 78.8, f = "e" },
				},
			},
			{
				note = "Hearth to Lakeshire|goto Redridge Mountains,26.9,44.9,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				only = { races = { "Human", "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1717, title = "Gakin's Summons", npc = 6120, npcName = "Lago Blackwrench", map = 1455, x = 47.6, y = 9.3, f = "e" },
				},
			},
			{
				only = { races = { "Human", "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1717, title = "Gakin's Summons", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.6, y = 84.6, f = "e" },
					{ t = "accept", quest = 1716, title = "Devourer of Souls", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.6, y = 84.6, f = "e" },
				},
			},
			{
				note = "Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c",
				only = { races = { "Human", "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", map = 1453, x = 22.6, y = 56.1, f = "e" },
				},
			},
			{
				only = { races = { "Human", "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1716, title = "Devourer of Souls", npc = 6244, npcName = "Takar the Seer", map = 1413, x = 49.3, y = 57.2, f = "e" },
					{ t = "accept", quest = 1738, title = "Heartswood", npc = 6244, npcName = "Takar the Seer", map = 1413, x = 49.3, y = 57.2, f = "e" },
				},
			},
			{
				only = { races = { "Human", "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1738, itemName = "Heartswood", count = 1, oi = 1, map = 1440, x = 31.2, y = 31.2, f = "e" },
				},
			},
			{
				note = "Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c",
				only = { races = { "Human", "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", map = 1439, x = 32.4, y = 43.8, f = "e" },
				},
			},
			{
				only = { races = { "Human", "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1738, title = "Heartswood", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.6, y = 84.6, f = "e" },
					{ t = "accept", quest = 1739, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.6, y = 84.6, f = "e" },
				},
			},
			{
				note = "Go downstairs into the crypt to 22.1,84.4",
				only = { races = { "Human", "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "kill", quest = 1739, target = "Summoned Succubus", count = 1, oi = 1, map = 1453, x = 22.1, y = 84.4, f = "e" },
				},
			},
			{
				note = "Go upstairs to 39.6,84.6",
				only = { races = { "Human", "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1739, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.6, y = 84.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 92, title = "Redridge Goulash", npc = 343, npcName = "Chef Breanna", map = 1433, x = 22.7, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 127, title = "Selling Fish", npc = 381, npcName = "Dockmaster Baren", map = 1433, x = 27.7, y = 47.4, f = "e" },
					{ t = "accept", quest = 150, title = "Murloc Poachers", npc = 381, npcName = "Dockmaster Baren", map = 1433, x = 27.7, y = 47.4, f = "e" },
					{ t = "turnin", quest = 150, title = "Murloc Poachers", npc = 381, npcName = "Dockmaster Baren", map = 1433, x = 27.7, y = 47.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 20, title = "Blackrock Menace", npc = 382, npcName = "Marshal Marris", map = 1433, x = 33.5, y = 49.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 124, target = "Redridge Brute", count = 10, oi = 1, map = 1433, x = 29.0, y = 37.4, f = "e" },
					{ t = "kill", quest = 124, target = "Redridge Mystic", count = 8, oi = 2, map = 1433, x = 29.0, y = 37.4, f = "e" },
					{ t = "collect", quest = 89, itemName = "Iron Pike", count = 5, oi = 1, map = 1433, x = 29.0, y = 37.4, f = "e" },
					{ t = "collect", quest = 89, itemName = "Iron Rivet", count = 5, oi = 2, map = 1433, x = 29.0, y = 37.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 89, title = "The Everstill Bridge", npc = 341, npcName = "Foreman Oslow", map = 1433, x = 32.1, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 124, title = "A Baying of Gnolls", npc = 415, npcName = "Verner Osgood", map = 1433, x = 31.0, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Sentinel Hill", text = "Sentinel Hill", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 142, itemName = "A Mysterious Message", count = 1, oi = 1, map = 1436, x = 44.2, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 103, title = "Keeper of the Flame", npc = 392, npcName = "Captain Grayson", map = 1436, x = 30.1, y = 85.9, f = "e" },
					{ t = "turnin", quest = 103, title = "Keeper of the Flame", npc = 392, npcName = "Captain Grayson", map = 1436, x = 30.1, y = 85.9, f = "e" },
					{ t = "accept", quest = 104, title = "The Coastal Menace", npc = 392, npcName = "Captain Grayson", map = 1436, x = 30.1, y = 85.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 104, itemName = "Scale of Old Murk-Eye", count = 1, oi = 1, map = 1436, x = 29.7, y = 79.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 104, title = "The Coastal Menace", npc = 392, npcName = "Captain Grayson", map = 1436, x = 30.1, y = 85.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 21, f = "e" },
				},
			},
			{
				note = "Hearth to Sentinel Hill|goto Westfall,53.4,50.8,3|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 142, title = "The Defias Brotherhood (5)", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.3, y = 47.5, f = "e" },
					{ t = "accept", quest = 155, title = "The Defias Brotherhood (6)", npc = 467, npcName = "Defias Traitor", map = 1436, x = 56.3, y = 47.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 155, title = "The Defias Brotherhood (6)", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.3, y = 47.5, f = "e" },
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
					{ t = "accept", quest = 1138, title = "Fruit of the Sea", npc = 10216, npcName = "Gubber Blump", map = 1453, x = 36.1, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Auberdine", text = "Auberdine", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4740, title = "WANTED: Murkdeep!", map = 1453, x = 37.2, y = 44.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 948, title = "Onu", npc = 3583, npcName = "Barithras Moonshade", map = 1453, x = 37.3, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 986, title = "A Lost Master (1)", npc = 3693, npcName = "Terenthis", map = 1453, x = 39.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 965, title = "The Tower of Althalaxx (1)", npc = 3657, npcName = "Sentinel Elissa Starbreeze", map = 1453, x = 39.0, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 965, title = "The Tower of Althalaxx (1)", npc = 3661, npcName = "Balthule Shadowstrike", map = 1453, x = 55.0, y = 24.9, f = "e" },
					{ t = "accept", quest = 966, title = "The Tower of Althalaxx (2)", npc = 3661, npcName = "Balthule Shadowstrike", map = 1453, x = 55.0, y = 24.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 966, itemName = "Worn Parchment", count = 4, oi = 1, map = 1453, x = 55.2, y = 26.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 966, title = "The Tower of Althalaxx (2)", npc = 3661, npcName = "Balthule Shadowstrike", map = 1453, x = 55.0, y = 24.9, f = "e" },
					{ t = "accept", quest = 967, title = "The Tower of Althalaxx (3)", npc = 3661, npcName = "Balthule Shadowstrike", map = 1453, x = 55.0, y = 24.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4740, npc = 10323, target = "Murkdeep", count = 1, oi = 1, map = 1453, x = 36.3, y = 76.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1138, itemName = "Fine Crab Chunks", count = 6, oi = 1, map = 1453, x = 34.9, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4730, title = "Beached Sea Creature", map = 1453, x = 32.9, y = 81.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1003, itemName = "Grizzled Scalp", count = 4, oi = 1, map = 1453, x = 37.6, y = 82.4, f = "e" },
					{ t = "collect", quest = 986, itemName = "Fine Moonstalker Pelt", count = 5, oi = 1, map = 1453, x = 37.6, y = 82.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1003, title = "Buzzbox 525", map = 1453, x = 41.4, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 948, title = "Onu", npc = 3616, npcName = "Onu", map = 1453, x = 43.5, y = 76.3, f = "e" },
					{ t = "accept", quest = 944, title = "The Master's Glaive", npc = 3616, npcName = "Onu", map = 1453, x = 43.5, y = 76.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 944, title = "The Master's Glaive", map = 1453, x = 38.5, y = 86.2, f = "e" },
					{ t = "accept", quest = 949, title = "The Twilight Camp", map = 1453, x = 38.5, y = 86.2, f = "e" },
					{ t = "turnin", quest = 949, title = "The Twilight Camp", map = 1453, x = 38.5, y = 86.2, f = "e" },
					{ t = "accept", quest = 950, title = "Return to Onu", map = 1453, x = 38.5, y = 86.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 945, title = "Therylune's Escape", npc = 3584, npcName = "Therylune", map = 1453, x = 38.7, y = 87.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 950, title = "Return to Onu", npc = 3616, npcName = "Onu", map = 1453, x = 43.5, y = 76.3, f = "e" },
					{ t = "accept", quest = 951, title = "Mathystra Relics", npc = 3616, npcName = "Onu", map = 1453, x = 43.5, y = 76.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5321, title = "The Sleeper Has Awakened", npc = 11218, npcName = "Kerlonian Evershade", map = 1453, x = 44.4, y = 76.4, f = "e" },
					{ t = "collect", quest = 5321, item = 13536, itemName = "Horn of Awakening", count = 1, oi = 2, map = 1453, x = 44.4, y = 76.4, f = "e" },
				},
			},
			{
				note = "Escort Kerlonian Evershade south to Ashenvale, then south to Maestra's Post|goal Escort Kerlonian Evershade to Maestra's Post|q 5321/1|tip Do NOT follow the road. Walk in the forest as much as you can. This will allow you to avoid the ambushes along the way.",
				goals = {
					{ t = "goto", map = 1440, x = 26.8, y = 36.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5321, title = "The Sleeper Has Awakened", npc = 11219, npcName = "Liladris Moonriver", map = 1440, x = 27.3, y = 35.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 967, title = "The Tower of Althalaxx (3)", npc = 3663, npcName = "Delgren the Purifier", map = 1440, x = 26.2, y = 38.6, f = "e" },
					{ t = "accept", quest = 970, title = "The Tower of Althalaxx (4)", npc = 3663, npcName = "Delgren the Purifier", map = 1440, x = 26.2, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1010, title = "Bathran's Hair", npc = 3847, npcName = "Orendil Broadleaf", map = 1440, x = 26.4, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 945, title = "Therylune's Escape", npc = 3585, npcName = "Therysil", map = 1440, x = 22.7, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Astranaar", text = "Astranaar", map = 1440, x = 34.4, y = 48.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1070, title = "On Guard in Stonetalon (1)", npc = 4079, npcName = "Sentinel Thenysil", map = 1440, x = 34.9, y = 49.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1056, title = "Journey to Stonetalon Peak", npc = 3996, npcName = "Faldreas Goeth'Shael", map = 1440, x = 35.8, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 991, title = "Raene's Cleansing (1)", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.6, y = 49.6, f = "e" },
					{ t = "accept", quest = 1054, title = "Culling the Threat", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.6, y = 49.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4730, title = "Beached Sea Creature", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1138, title = "Fruit of the Sea", npc = 10216, npcName = "Gubber Blump", map = 1439, x = 36.1, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4740, title = "WANTED: Murkdeep!", npc = 2930, npcName = "Sentinel Glynda Nal'Shea", map = 1439, x = 37.7, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 986, title = "A Lost Master (1)", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
					{ t = "accept", quest = 993, title = "A Lost Master (2)", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 951, itemName = "Mathystra Relic", count = 6, oi = 1, map = 1439, x = 57.2, y = 23.5, f = "e" },
				},
			},
			{
				note = "Hearth to Auberdine|goto Darkshore,38.1,43.1,9|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 951, title = "Mathystra Relics", npc = 3616, npcName = "Onu", map = 1439, x = 43.5, y = 76.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 993, title = "A Lost Master (2)", npc = 3692, npcName = "Volcor", map = 1439, x = 45.0, y = 85.3, f = "e" },
					{ t = "accept", quest = 994, title = "Escape Through Force", npc = 3692, npcName = "Volcor", map = 1439, x = 45.0, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1010, itemName = "Bathran's Hair", count = 5, oi = 1, map = 1440, x = 29.6, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 970, itemName = "Glowing Soul Gem", count = 1, oi = 1, map = 1440, x = 32.7, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 970, title = "The Tower of Althalaxx (4)", npc = 3663, npcName = "Delgren the Purifier", map = 1440, x = 26.2, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1010, title = "Bathran's Hair", npc = 3847, npcName = "Orendil Broadleaf", map = 1440, x = 26.4, y = 38.6, f = "e" },
					{ t = "accept", quest = 1020, title = "Orendil's Cure", npc = 3847, npcName = "Orendil Broadleaf", map = 1440, x = 26.4, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1008, title = "The Zoram Strand", npc = 3845, npcName = "Shindrell Swiftfire", map = 1440, x = 34.6, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1020, title = "Orendil's Cure", npc = 3894, npcName = "Pelturas Whitemoon", map = 1440, x = 37.4, y = 51.8, f = "e" },
					{ t = "accept", quest = 1033, title = "Elune's Tear", npc = 3894, npcName = "Pelturas Whitemoon", map = 1440, x = 37.4, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Astranaar", text = "Astranaar", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 991, title = "Raene's Cleansing (1)", map = 1440, x = 20.3, y = 42.3, f = "e" },
					{ t = "accept", quest = 1023, title = "Raene's Cleansing (2)", map = 1440, x = 20.3, y = 42.3, f = "e" },
					{ t = "collect", quest = 1023, itemName = "Glowing Gem", count = 1, oi = 1, map = 1440, x = 20.3, y = 42.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1007, title = "The Ancient Statuette", npc = 3846, npcName = "Talen", map = 1440, x = 14.8, y = 31.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1008, itemName = "Wrathtail Head", count = 20, oi = 1, map = 1440, x = 14.2, y = 26.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1007, itemName = "Ancient Statuette", count = 1, oi = 1, map = 1440, x = 14.2, y = 20.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1007, title = "The Ancient Statuette", npc = 3846, npcName = "Talen", map = 1440, x = 14.8, y = 31.3, f = "e" },
					{ t = "accept", quest = 1009, title = "Ruuzel", npc = 3846, npcName = "Talen", map = 1440, x = 14.8, y = 31.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1009, itemName = "Ring of Zoram", count = 1, oi = 1, map = 1440, x = 7.4, y = 12.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1009, title = "Ruuzel", npc = 3846, npcName = "Talen", map = 1440, x = 14.8, y = 31.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 23, f = "e" },
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
					{ t = "turnin", quest = 1023, title = "Raene's Cleansing (2)", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.6, y = 49.6, f = "e" },
					{ t = "accept", quest = 1024, title = "Raene's Cleansing (3)", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.6, y = 49.6, f = "e" },
					{ t = "accept", quest = 1025, title = "An Aggressive Defense", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.6, y = 49.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1008, title = "The Zoram Strand", npc = 3845, npcName = "Shindrell Swiftfire", map = 1440, x = 34.7, y = 48.8, f = "e" },
					{ t = "accept", quest = 1134, title = "Pridewings of Stonetalon", npc = 3845, npcName = "Shindrell Swiftfire", map = 1440, x = 34.7, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1054, itemName = "Dal Bloodclaw's Skull", count = 1, oi = 1, map = 1440, x = 37.4, y = 33.9, f = "e" },
				},
			},
		},
	})
end

