-- TuWoW_Leveling — Guides/Leveling_Horde_06.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-orc-1-13-part-2",
		pack = "guides",
		title = "Orc (1-13) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 9,
		maxLevel = 13,
		zone = 1411,
		version = 1,
		races = { "Orc" },
		steps = {
			{
				goals = {
					{ t = "goto", map = 1411, x = 50.8, y = 31.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 834, itemName = "Sack of Supplies", count = 5, oi = 1, map = 1411, x = 48.6, y = 33.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 834, title = "Winds in the Desert", npc = 3293, npcName = "Rezlak", map = 1411, x = 46.4, y = 22.9, f = "e" },
					{ t = "accept", quest = 835, title = "Securing the Lines", npc = 3293, npcName = "Rezlak", map = 1411, x = 46.4, y = 22.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 51.7, y = 27.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 835, target = "Dustwind Savage", count = 12, oi = 1, map = 1411, x = 54.1, y = 26.9, f = "e" },
					{ t = "kill", quest = 835, target = "Dustwind Storm Witch", count = 8, oi = 2, map = 1411, x = 54.1, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 835, title = "Securing the Lines", npc = 3293, npcName = "Rezlak", map = 1411, x = 46.4, y = 22.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 837, title = "Encroachment", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.9, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 10, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1505, title = "Veteran Uzzek", npc = 3169, npcName = "Tarshaw Jaggedscar", map = 1411, x = 54.0, y = 42.0, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1505, title = "Veteran Uzzek", npc = 5810, npcName = "Uzzek", map = 1413, x = 61.4, y = 21.1, f = "e" },
					{ t = "accept", quest = 1498, title = "Path of Defense", npc = 5810, npcName = "Uzzek", map = 1413, x = 61.4, y = 21.1, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1498, itemName = "Singed Scale", count = 5, oi = 1, map = 1411, x = 39.0, y = 32.0, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1498, title = "Path of Defense", npc = 5810, npcName = "Uzzek", map = 1413, x = 61.4, y = 21.1, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1506, title = "Gan'rul's Summons", npc = 3294, npcName = "Ophek", map = 1411, x = 54.4, y = 41.3, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1506, title = "Gan'rul's Summons", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.2, y = 45.3, f = "e" },
					{ t = "accept", quest = 1501, title = "Creature of the Void", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.2, y = 45.3, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", map = 1411, x = 55.0, y = 9.9, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 51.6,9.7",
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1501, itemName = "Tablet of Verga", count = 1, oi = 1, map = 1411, x = 51.6, y = 9.7, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1501, title = "Creature of the Void", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.2, y = 45.3, f = "e" },
					{ t = "accept", quest = 1504, title = "The Binding", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.2, y = 45.3, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "kill", quest = 1504, target = "Summoned Voidwalker", count = 1, oi = 1, map = 1454, x = 49.5, y = 50.0, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1504, title = "The Binding", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.2, y = 45.3, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 2983, title = "Call of Fire (1)", npc = 3173, npcName = "Swart", map = 1411, x = 54.4, y = 42.6, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 2983, title = "Call of Fire (1)", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 55.8, y = 19.8, f = "e" },
					{ t = "accept", quest = 1524, title = "Call of Fire (2)", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 55.8, y = 19.8, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", map = 1411, x = 36.6, y = 57.1, f = "e" },
				},
			},
			{
				note = "Go up the path to 38.6,58.9",
				only = { races = { "Orc" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1524, title = "Call of Fire (2)", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.6, y = 58.9, f = "e" },
					{ t = "accept", quest = 1525, title = "Call of Fire (3)", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.6, y = 58.9, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1525, itemName = "Fire Tar", count = 1, oi = 1, map = 1413, x = 53.8, y = 25.6, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1525, itemName = "Reagent Pouch", count = 1, oi = 2, map = 1411, x = 52.8, y = 28.9, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1525, title = "Call of Fire (3)", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.6, y = 58.9, f = "e" },
					{ t = "accept", quest = 1526, title = "Call of Fire (4)", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.6, y = 58.9, f = "e" },
				},
			},
			{
				note = "Run up the big hill next to you to 39,58",
				only = { races = { "Orc" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1526, itemName = "Glowing Ember", count = 1, oi = 1, map = 1411, x = 38.9, y = 58.3, f = "e" },
					{ t = "turnin", quest = 1526, title = "Call of Fire (4)", map = 1411, x = 38.9, y = 58.3, f = "e" },
					{ t = "accept", quest = 1527, title = "Call of Fire (5)", map = 1411, x = 38.9, y = 58.3, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1527, title = "Call of Fire (5)", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 55.8, y = 19.8, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 6062, title = "Taming the Beast (1)", npc = 3171, npcName = "Thotar", map = 1411, x = 51.9, y = 43.5, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", map = 1411, x = 52.1, y = 46.2, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6062, title = "Taming the Beast (1)", npc = 3171, npcName = "Thotar", map = 1411, x = 51.9, y = 43.5, f = "e" },
					{ t = "accept", quest = 6083, title = "Taming the Beast (2)", npc = 3171, npcName = "Thotar", map = 1411, x = 51.9, y = 43.5, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", map = 1411, x = 59.0, y = 26.5, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6083, title = "Taming the Beast (2)", npc = 3171, npcName = "Thotar", map = 1411, x = 51.9, y = 43.5, f = "e" },
					{ t = "accept", quest = 6082, title = "Taming the Beast (3)", npc = 3171, npcName = "Thotar", map = 1411, x = 51.9, y = 43.5, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", map = 1411, x = 48.0, y = 39.3, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6082, title = "Taming the Beast (3)", npc = 3171, npcName = "Thotar", map = 1411, x = 51.9, y = 43.5, f = "e" },
					{ t = "accept", quest = 6081, title = "Training the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.9, y = 43.5, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6081, title = "Training the Beast", npc = 3352, npcName = "Ormak Grimshot", map = 1454, x = 65.8, y = 18.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 812, title = "Need for a Cure", npc = 3190, npcName = "Rhinag", map = 1411, x = 42.1, y = 15.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 813, title = "Finding the Antidote", npc = 3189, npcName = "Kor'ghan", map = 1454, x = 43.1, y = 50.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 813, itemName = "Venomtail Poison Sac", count = 4, oi = 1, map = 1411, x = 39.9, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 813, title = "Finding the Antidote", npc = 3189, npcName = "Kor'ghan", map = 1454, x = 43.1, y = 50.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 831, title = "The Admiral's Orders", npc = 10540, npcName = "Vol'jin", map = 1454, x = 34.3, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5726, title = "Hidden Enemies (1)", npc = 4949, npcName = "Thrall", map = 1454, x = 31.8, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 812, title = "Need for a Cure", npc = 3190, npcName = "Rhinag", map = 1411, x = 42.1, y = 15.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 816, itemName = "Kron's Amulet", count = 1, oi = 1, map = 1411, x = 37.2, y = 17.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 39.2, y = 32.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 806, itemName = "Fizzle's Claw", count = 1, oi = 1, map = 1411, x = 42.1, y = 26.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 11, f = "e" },
				},
			},
			{
				note = "Hearth to Razor Hill,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1411, x = 51.5, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 840, title = "Conscript of the Horde", npc = 3336, npcName = "Takrin Pathseeker", map = 1411, x = 50.8, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 806, title = "Dark Storms", npc = 3142, npcName = "Orgnil Soulscar", map = 1411, x = 52.2, y = 43.2, f = "e" },
					{ t = "accept", quest = 828, title = "Margoz", npc = 3142, npcName = "Orgnil Soulscar", map = 1411, x = 52.2, y = 43.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 816, title = "Lost But Not Forgotten", npc = 3193, npcName = "Misha Tor'kren", map = 1411, x = 43.1, y = 30.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 828, title = "Margoz", npc = 3208, npcName = "Margoz", map = 1411, x = 56.4, y = 20.0, f = "e" },
					{ t = "accept", quest = 827, title = "Skull Rock", npc = 3208, npcName = "Margoz", map = 1411, x = 56.4, y = 20.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 827, itemName = "Searing Collar", count = 6, oi = 1, map = 1411, x = 55.1, y = 10.1, f = "e" },
					{ t = "collect", quest = 5726, itemName = "Lieutenant's Insignia", count = 1, oi = 1, map = 1411, x = 55.1, y = 10.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 827, title = "Skull Rock", npc = 3208, npcName = "Margoz", map = 1411, x = 56.4, y = 20.0, f = "e" },
					{ t = "accept", quest = 829, title = "Neeru Fireblade", npc = 3208, npcName = "Margoz", map = 1411, x = 56.4, y = 20.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 829, title = "Neeru Fireblade", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.5, y = 50.6, f = "e" },
					{ t = "accept", quest = 809, title = "Ak'Zeloth", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.5, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5726, title = "Hidden Enemies (1)", npc = 4949, npcName = "Thrall", map = 1454, x = 31.8, y = 37.8, f = "e" },
					{ t = "accept", quest = 5727, title = "Hidden Enemies (2)", npc = 4949, npcName = "Thrall", map = 1454, x = 31.8, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.5, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5727, title = "Hidden Enemies (2)", npc = 4949, npcName = "Thrall", map = 1454, x = 31.8, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Undercity", text = "Undercity", map = 1458, x = 63.2, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Sepulcher", text = "Sepulcher", map = 1421, x = 45.6, y = 42.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 447, title = "A Recipe For Death", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
				},
			},
			{
				note = "Go inside the crypt to 43.4,40.9",
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
					{ t = "level", level = 12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 447, itemName = "Grizzled Bear Heart", count = 6, oi = 1, map = 1421, x = 48.3, y = 19.4, f = "e" },
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
					{ t = "accept", quest = 435, title = "Escorting Erland", npc = 1978, npcName = "Deathstalker Erland", map = 1421, x = 56.2, y = 9.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 435, title = "Escorting Erland", npc = 1950, npcName = "Rane Yorick", map = 1421, x = 53.5, y = 13.4, f = "e" },
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
					{ t = "turnin", quest = 447, title = "A Recipe For Death (1)", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.8, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 13, f = "e" },
				},
			},
			{
				note = "Hearth to Razor Hill|goto Durotar,51.5,41.7,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
		},
	})
end

