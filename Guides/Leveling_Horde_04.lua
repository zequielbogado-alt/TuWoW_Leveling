-- TuWoW_Leveling — Guides/Leveling_Horde_04.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-tauren-1-13-part-2",
		pack = "guides",
		title = "Tauren (1-13) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1412,
		version = 1,
		races = { "Tauren" },
		steps = {
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 2984, title = "Call of Fire (1)", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 55.8, y = 19.8, f = "e" },
					{ t = "accept", quest = 1524, title = "Call of Fire (2)", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 55.8, y = 19.8, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", map = 1411, x = 36.6, y = 57.1, f = "e" },
				},
			},
			{
				note = "Go up the path to 38,59",
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1524, title = "Call of Fire (2)", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.0, y = 59.0, f = "e" },
					{ t = "accept", quest = 1525, title = "Call of Fire (3)", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.0, y = 59.0, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1525, itemName = "Fire Tar", count = 1, oi = 1, map = 1413, x = 53.8, y = 25.6, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1525, itemName = "Reagent Pouch", count = 1, oi = 2, map = 1411, x = 52.8, y = 28.9, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1525, title = "Call of Fire (3)", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.0, y = 59.0, f = "e" },
					{ t = "accept", quest = 1526, title = "Call of Fire (4)", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.0, y = 59.0, f = "e" },
				},
			},
			{
				note = "Run up the big hill next to you to 38.9,58.3",
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1526, itemName = "Glowing Ember", count = 1, oi = 1, map = 1411, x = 38.9, y = 58.3, f = "e" },
					{ t = "turnin", quest = 1526, title = "Call of Fire (4)", map = 1411, x = 38.9, y = 58.3, f = "e" },
					{ t = "accept", quest = 1527, title = "Call of Fire (5)", map = 1411, x = 38.9, y = 58.3, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1527, title = "Call of Fire (5)", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 55.8, y = 19.8, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 6061, title = "Taming the Beast (1)", npc = 3065, npcName = "Yaw Sharpmane", map = 1413, x = 47.8, y = 55.7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", map = 1413, x = 42.4, y = 54.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6061, title = "Taming the Beast (1)", npc = 3065, npcName = "Yaw Sharpmane", map = 1413, x = 47.8, y = 55.7, f = "e" },
					{ t = "accept", quest = 6087, title = "Taming the Beast (2)", npc = 3065, npcName = "Yaw Sharpmane", map = 1413, x = 47.8, y = 55.7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", map = 1413, x = 48.6, y = 46.7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6087, title = "Taming the Beast (2)", npc = 3065, npcName = "Yaw Sharpmane", map = 1413, x = 47.8, y = 55.7, f = "e" },
					{ t = "accept", quest = 6088, title = "Taming the Beast (3)", npc = 3065, npcName = "Yaw Sharpmane", map = 1413, x = 47.8, y = 55.7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", map = 1413, x = 42.3, y = 50.1, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6088, title = "Taming the Beast (3)", npc = 3065, npcName = "Yaw Sharpmane", map = 1413, x = 47.8, y = 55.7, f = "e" },
					{ t = "accept", quest = 6089, title = "Training the Beast (2)", npc = 3065, npcName = "Yaw Sharpmane", map = 1413, x = 47.8, y = 55.7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6089, title = "Training the Beast", npc = 3039, npcName = "Holt Thunderhorn", map = 1456, x = 57.3, y = 89.8, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "accept", quest = 5926, title = "Heeding the Call", npc = 3064, npcName = "Gennia Runetotem", map = 1456, x = 48.5, y = 59.7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 5926, title = "Heeding the Call", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.4, y = 27.3, f = "e" },
					{ t = "accept", quest = 5922, title = "Moonglade", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.4, y = 27.3, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 5922, title = "Moonglade", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
					{ t = "accept", quest = 5930, title = "Great Bear Spirit", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "talk", npc = 11956, npcName = "the Great Bear Spirit", map = 1450, x = 39.1, y = 27.3, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 5930, title = "Great Bear Spirit", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
					{ t = "accept", quest = 5932, title = "Back to Thunder Bluff", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "talk", npc = 11798, npcName = "Bunthen Plainswind", map = 1450, x = 44.3, y = 45.9, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 5932, title = "Back to Thunder Bluff", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.4, y = 27.3, f = "e" },
					{ t = "accept", quest = 6002, title = "Body and Heart", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.4, y = 27.3, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "talk", npc = 12144, npcName = "Lunaclaw Spirit", map = 1413, x = 42.0, y = 60.9, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "fpath", text = "Camp Taurajo", map = 1413, x = 44.4, y = 59.2, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6002, title = "Body and Heart", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.4, y = 27.3, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "collect", quest = 759, itemName = "Prairie Alpha Tooth", count = 8, oi = 1, map = 1412, x = 63.2, y = 61.7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 759, title = "Wildmane Totem", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 48.5, y = 60.4, f = "e" },
					{ t = "accept", quest = 760, title = "Wildmane Cleansing", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 48.5, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 861, title = "The Hunter's Way", npc = 3052, npcName = "Skorn Whitecloud", map = 1412, x = 46.8, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 764, target = "Venture Co. Worker", count = 14, oi = 1, map = 1412, x = 59.2, y = 48.8, f = "e" },
					{ t = "kill", quest = 764, target = "Venture Co. Supervisor", count = 6, oi = 2, map = 1412, x = 59.2, y = 48.8, f = "e" },
				},
			},
			{
				note = "Go northeast into the mine to 64.4,43.5",
				goals = {
					{ t = "collect", quest = 765, itemName = "Fizsprocket's Clipboard", count = 1, oi = 1, map = 1412, x = 64.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 764, title = "The Venture Co.", npc = 2988, npcName = "Morin Cloudstalker", map = 1412, x = 59.3, y = 62.2, f = "e" },
					{ t = "turnin", quest = 765, title = "Supervisor Fizsprocket", npc = 2988, npcName = "Morin Cloudstalker", map = 1412, x = 59.3, y = 62.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 744, title = "Preparation for Ceremony", npc = 2987, npcName = "Eyahn Eagletalon", map = 1456, x = 37.7, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 833, title = "A Sacred Burial", npc = 3233, npcName = "Lorekeeper Raintotem", map = 1412, x = 59.9, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 833, target = "Bristleback Interloper", count = 8, oi = 1, map = 1412, x = 61.0, y = 23.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 773, title = "Rite of Wisdom", npc = 2994, npcName = "Ancestral Spirit", map = 1412, x = 61.4, y = 21.0, f = "e" },
					{ t = "accept", quest = 775, title = "Journey into Thunder Bluff", npc = 2994, npcName = "Ancestral Spirit", map = 1412, x = 61.4, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 833, title = "A Sacred Burial", npc = 3233, npcName = "Lorekeeper Raintotem", map = 1412, x = 59.9, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 861, itemName = "Flatland Prowler Claw", count = 4, oi = 1, map = 1412, x = 45.1, y = 16.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", map = 1412, x = 42.7, y = 14.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 744, itemName = "Azure Feather", count = 6, oi = 1, map = 1412, x = 31.7, y = 21.3, f = "e" },
					{ t = "collect", quest = 744, itemName = "Bronze Feather", count = 6, oi = 2, map = 1412, x = 31.7, y = 21.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 744, title = "Preparation for Ceremony", npc = 2987, npcName = "Eyahn Eagletalon", map = 1456, x = 37.7, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 861, title = "The Hunter's Way", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.5, y = 80.9, f = "e" },
					{ t = "accept", quest = 860, title = "Sergra Darkthorn", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.5, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 775, title = "Journey into Thunder Bluff", npc = 3057, npcName = "Cairne Bloodhoof", map = 1456, x = 60.3, y = 51.6, f = "e" },
					{ t = "accept", quest = 776, title = "Rites of the Earthmother", npc = 3057, npcName = "Cairne Bloodhoof", map = 1456, x = 60.3, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 776, itemName = "Horn of Arra'chea", count = 1, oi = 1, map = 1412, x = 51.0, y = 12.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Demon Scarred Cloak", count = 1, map = 1412, x = 49.6, y = 18.1, f = "e" },
					{ t = "accept", quest = 770, title = "The Demon Scarred Cloak", map = 1412, x = 49.6, y = 18.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 776, title = "Rites of the Earthmother", npc = 3057, npcName = "Cairne Bloodhoof", map = 1456, x = 60.3, y = 51.6, f = "e" },
				},
			},
			{
				note = "Hearth to Bloodhoof Village|goto Mulgore,46.7,61.0,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 770, title = "The Demon Scarred Cloak", npc = 3052, npcName = "Skorn Whitecloud", map = 1412, x = 46.8, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 12, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 760, title = "Wildmane Cleansing", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 48.5, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Camp Taurajo", map = 1413, x = 44.4, y = 59.2, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "accept", quest = 854, title = "Journey to the Crossroads", npc = 3418, npcName = "Kirge Sternhorn", map = 1413, x = 44.9, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 860, title = "Sergra Darkthorn", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.2, y = 31.0, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 854, title = "Journey to the Crossroads", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Crossroads", map = 1413, x = 51.5, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "the Crossroads", f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Orgrimmar", map = 1454, x = 45.1, y = 63.9, f = "e" },
				},
			},
			{
				note = "Go east to 51,14|n",
				goals = {
					{ t = "goto", map = 1454, x = 50.8, y = 13.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Undercity", map = 1458, x = 63.2, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Sepulcher", map = 1421, x = 45.6, y = 42.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 447, title = "A Recipe For Death", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 428, title = "Lost Deathstalkers", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.4, y = 40.9, f = "e" },
					{ t = "accept", quest = 437, title = "The Dead Fields", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.4, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 421, title = "Prove Your Worth", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 421, target = "Moonrage Whitescalp", count = 5, oi = 1, map = 1421, x = 49.2, y = 39.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 437, itemName = "Essence of Nightlash", count = 1, oi = 2, map = 1421, x = 45.5, y = 21.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 447, itemName = "Grizzled Bear Heart", count = 6, oi = 1, map = 1421, x = 41.4, y = 18.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 447, itemName = "Skittering Blood", count = 6, oi = 2, map = 1421, x = 35.7, y = 15.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 428, title = "Lost Deathstalkers", npc = 1950, npcName = "Rane Yorick", map = 1421, x = 53.5, y = 13.4, f = "e" },
					{ t = "accept", quest = 429, title = "Wild Hearts", npc = 1950, npcName = "Rane Yorick", map = 1421, x = 53.5, y = 13.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 429, itemName = "Discolored Worg Heart", count = 6, oi = 1, map = 1421, x = 57.5, y = 15.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 421, title = "Prove Your Worth", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
				},
			},
			{
				note = "Go inside the crypt to 43.4,40.9",
				goals = {
					{ t = "turnin", quest = 437, title = "The Dead Fields", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.4, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 429, title = "Wild Hearts", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 447, title = "A Recipe For Death (1)", npc = 2055, npcName = "Master Apothecary Faranell", map = 1421, x = 48.8, y = 69.3, f = "e" },
				},
			},
			{
				note = "Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 840, title = "Conscript of the Horde", npc = 3336, npcName = "Takrin Pathseeker", map = 1411, x = 50.8, y = 43.6, f = "e" },
				},
			},
		},
	})
end

