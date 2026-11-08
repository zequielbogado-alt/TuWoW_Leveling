-- TuWoW_Leveling — Guides/Leveling_Horde_02.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-undead-1-13-part-2",
		pack = "guides",
		title = "Undead (1-13) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 9,
		maxLevel = 13,
		zone = 1420,
		version = 1,
		races = { "Scourge" },
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 359, title = "Forsaken Duties", npc = 1495, npcName = "Deathguard Linnea", map = 1420, x = 65.6, y = 60.3, f = "e" },
					{ t = "accept", quest = 360, title = "Return to the Magistrate", npc = 1495, npcName = "Deathguard Linnea", map = 1420, x = 65.6, y = 60.3, f = "e" },
					{ t = "accept", quest = 356, title = "Rear Guard Patrol", npc = 1495, npcName = "Deathguard Linnea", map = 1420, x = 65.6, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 356, target = "Bleeding Horror", count = 8, oi = 1, map = 1420, x = 74.7, y = 61.5, f = "e" },
					{ t = "kill", quest = 356, target = "Wandering Spirit", count = 8, oi = 2, map = 1420, x = 74.7, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 10, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 356, title = "Rear Guard Patrol", npc = 1495, npcName = "Deathguard Linnea", map = 1420, x = 65.6, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 360, title = "Return to the Magistrate", npc = 1499, npcName = "Magistrate Sevren", map = 1420, x = 61.3, y = 50.8, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1818, title = "Speak with Dillinger", npc = 2131, npcName = "Austil de Mon", map = 1420, x = 61.9, y = 52.5, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1818, title = "Speak with Dillinger", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.4, f = "e" },
					{ t = "accept", quest = 1819, title = "Ulag the Cleaver", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.4, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "kill", quest = 1819, target = "Ulag the Cleaver", count = 1, oi = 1, map = 1420, x = 59.2, y = 48.5, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1819, title = "Ulag the Cleaver", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.4, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1478, title = "Halgar's Summons", npc = 5724, npcName = "Ageron Kargal", map = 1420, x = 61.6, y = 52.7, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1478, title = "Halgar's Summons", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.1, y = 26.0, f = "e" },
					{ t = "accept", quest = 1473, title = "Creature of the Void", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.1, y = 26.0, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1473, itemName = "Egalin's Grimoire", count = 1, oi = 1, map = 1420, x = 51.1, y = 67.6, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1473, title = "Creature of the Void", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.1, y = 26.0, f = "e" },
					{ t = "accept", quest = 1471, title = "The Binding", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.1, y = 26.0, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "kill", quest = 1471, target = "Summoned Voidwalker", count = 1, oi = 1, map = 1458, x = 86.6, y = 27.1, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1471, title = "The Binding", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.1, y = 26.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 370, target = "Captain Perrine", count = 1, oi = 1, map = 1458, x = 51.1, y = 67.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 370, target = "Scarlet Zealot", count = 3, oi = 2, map = 1458, x = 53.1, y = 65.8, f = "e" },
					{ t = "kill", quest = 370, target = "Scarlet Missionary", count = 3, oi = 3, map = 1458, x = 53.1, y = 65.8, f = "e" },
					{ t = "collect", quest = 374, itemName = "Scarlet Insignia Ring", count = 10, oi = 1, map = 1458, x = 53.1, y = 65.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 370, title = "At War With The Scarlet Crusade (2)", npc = 1515, npcName = "Executor Zygand", map = 1458, x = 60.6, y = 51.8, f = "e" },
					{ t = "accept", quest = 371, title = "At War With The Scarlet Crusade (3)", npc = 1515, npcName = "Executor Zygand", map = 1458, x = 60.6, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 374, title = "Proof of Demise", npc = 1652, npcName = "Deathguard Burgess", map = 1458, x = 60.9, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 371, target = "Scarlet Friar", count = 5, oi = 2, map = 1458, x = 76.2, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 371, target = "Captain Vachon", count = 1, oi = 1, map = 1458, x = 78.8, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 369, itemName = "Vicious Night Web Spider Venom", count = 4, oi = 1, map = 1458, x = 82.3, y = 54.3, f = "e" },
				},
			},
			{
				note = "Hearth to Brill,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1458, x = 61.8, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 371, title = "At War With The Scarlet Crusade (3)", npc = 1515, npcName = "Executor Zygand", map = 1458, x = 60.6, y = 51.8, f = "e" },
					{ t = "accept", quest = 372, title = "At War With The Scarlet Crusade (4)", npc = 1515, npcName = "Executor Zygand", map = 1458, x = 60.6, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 369, title = "A New Plague (3)", npc = 1518, npcName = "Apothecary Johaan", map = 1458, x = 59.4, y = 52.4, f = "e" },
					{ t = "accept", quest = 492, title = "A New Plague (4)", npc = 1518, npcName = "Apothecary Johaan", map = 1458, x = 59.4, y = 52.4, f = "e" },
					{ t = "accept", quest = 445, title = "Delivery to Silverpine Forest", npc = 1518, npcName = "Apothecary Johaan", map = 1458, x = 59.4, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 405, title = "The Prodigal Lich", npc = 1499, npcName = "Magistrate Sevren", map = 1458, x = 61.3, y = 50.8, f = "e" },
					{ t = "accept", quest = 408, title = "The Family Crypt", npc = 1499, npcName = "Magistrate Sevren", map = 1458, x = 61.3, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 492, title = "A New Plague (4)", npc = 2211, npcName = "the Captured Mountaineer", map = 1458, x = 62.0, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 405, title = "The Prodigal Lich", npc = 1498, npcName = "Bethor Iceshard", map = 1458, x = 84.0, y = 18.0, f = "e" },
					{ t = "accept", quest = 357, title = "The Lich's Identity", npc = 1498, npcName = "Bethor Iceshard", map = 1458, x = 84.0, y = 18.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 408, target = "Wailing Ancestor", count = 8, oi = 1, map = 1420, x = 52.0, y = 29.3, f = "e" },
					{ t = "kill", quest = 408, target = "Rotting Ancestor", count = 8, oi = 2, map = 1420, x = 52.0, y = 29.3, f = "e" },
				},
			},
			{
				note = "Go inside the crypt to 52.8,26.4",
				goals = {
					{ t = "goto", map = 1420, x = 52.8, y = 26.4, f = "e" },
				},
			},
			{
				note = "Go outside the crypt to 68,42.1",
				goals = {
					{ t = "collect", quest = 357, itemName = "The Lich's Spellbook", count = 1, oi = 1, map = 1420, x = 68.0, y = 42.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 79.3, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 372, target = "Scarlet Bodyguard", count = 2, oi = 2, map = 1420, x = 79.5, y = 25.2, f = "e" },
					{ t = "kill", quest = 372, target = "Captain Melrache", count = 1, oi = 1, map = 1420, x = 79.5, y = 25.2, f = "e" },
				},
			},
			{
				note = "Hearth to Brill,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1420, x = 61.8, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 372, title = "At War With The Scarlet Crusade (4)", npc = 1515, npcName = "Executor Zygand", map = 1420, x = 60.6, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 408, title = "The Family Crypt", npc = 1499, npcName = "Magistrate Sevren", map = 1420, x = 61.3, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 357, title = "The Lich's Identity", npc = 1498, npcName = "Bethor Iceshard", map = 1458, x = 84.1, y = 17.5, f = "e" },
					{ t = "accept", quest = 366, title = "Return the Book", npc = 1498, npcName = "Bethor Iceshard", map = 1458, x = 84.1, y = 17.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 366, title = "Return the Book", npc = 1497, npcName = "Gunther Arcanus", map = 1420, x = 68.2, y = 41.9, f = "e" },
					{ t = "accept", quest = 409, title = "Proving Allegiance", npc = 1497, npcName = "Gunther Arcanus", map = 1420, x = 68.2, y = 41.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 410, item = 3080, itemName = "Candle of Beckoning", count = 1, map = 1420, x = 68.21, y = 41.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 410, title = "The Dormant Shade", map = 1420, x = 66.6, y = 44.9, f = "e" },
					{ t = "kill", quest = 409, target = "Lillith Nefara", count = 1, oi = 1, map = 1420, x = 66.6, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 409, title = "Proving Allegiance", npc = 1497, npcName = "Gunther Arcanus", map = 1420, x = 68.2, y = 41.9, f = "e" },
					{ t = "accept", quest = 411, title = "The Prodigal Lich Returns", npc = 1497, npcName = "Gunther Arcanus", map = 1420, x = 68.2, y = 41.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 411, title = "The Prodigal Lich Returns", npc = 1498, npcName = "Bethor Iceshard", map = 1458, x = 84.1, y = 17.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Sepulcher", text = "Sepulcher", map = 1421, x = 45.6, y = 42.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 445, title = "Delivery to Silverpine Forest", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
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
				note = "Go outside the crypt to 43.4,41.7",
				only = { races = { "Scourge" } },
				goals = {
					{ t = "accept", quest = 6321, title = "Supplying the Sepulcher", npc = 6389, npcName = "Deathguard Podrig", map = 1421, x = 43.4, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 421, title = "Prove Your Worth", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 6321, title = "Supplying the Sepulcher", npc = 2226, npcName = "Karos Razok", map = 1421, x = 45.6, y = 42.6, f = "e" },
					{ t = "accept", quest = 6323, title = "Ride to the Undercity", npc = 2226, npcName = "Karos Razok", map = 1421, x = 45.6, y = 42.6, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 6323, title = "Ride to the Undercity", npc = 4556, npcName = "Gordon Wendham", map = 1458, x = 61.5, y = 41.8, f = "e" },
					{ t = "accept", quest = 6322, title = "Michael Garrett", npc = 4556, npcName = "Gordon Wendham", map = 1458, x = 61.5, y = 41.8, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 6322, title = "Michael Garrett", npc = 4551, npcName = "Michael Garrett", map = 1458, x = 63.3, y = 48.5, f = "e" },
					{ t = "accept", quest = 6324, title = "Return to Podrig", npc = 4551, npcName = "Michael Garrett", map = 1458, x = 63.3, y = 48.5, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 6324, title = "Return to Podrig", npc = 6389, npcName = "Deathguard Podrig", map = 1421, x = 43.4, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 421, target = "Moonrage Whitescalp", count = 5, oi = 1, map = 1421, x = 49.2, y = 39.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 437, itemName = "Essence of Nightlash", count = 1, oi = 2, map = 1421, x = 46.0, y = 21.0, f = "e" },
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
				note = "Go inside the crypt to 43.4,40.9",
				goals = {
					{ t = "turnin", quest = 437, title = "The Dead Fields", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.4, y = 40.9, f = "e" },
				},
			},
			{
				note = "Go outside the crypt to 42.8,40.9",
				goals = {
					{ t = "turnin", quest = 429, title = "Wild Hearts", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 421, title = "Prove Your Worth", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
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
				goals = {
					{ t = "goto", map = 1420, x = 60.8, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Orgrimmar", text = "Orgrimmar", map = 1454, x = 45.1, y = 63.9, f = "e" },
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

