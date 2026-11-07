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
		minLevel = 11,
		maxLevel = 13,
		zone = 1412,
		version = 1,
		races = { "Tauren" },
		steps = {
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
					{ t = "getfp", location = "Camp Taurajo", text = "Camp Taurajo", map = 1413, x = 44.4, y = 59.2, f = "e" },
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
					{ t = "getfp", location = "Crossroads", text = "Crossroads", map = 1413, x = 51.5, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "the Crossroads", text = "the Crossroads", f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Orgrimmar", text = "Orgrimmar", map = 1454, x = 45.1, y = 63.9, f = "e" },
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

