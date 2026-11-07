-- TuWoW_Leveling — Guides/Leveling_Horde_44.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-72-74",
		pack = "guides",
		title = "Northrend (72-74) (Parte 1/4)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-72-74-part-2",
		author = "TuWoW & Zygor",
		minLevel = 72,
		maxLevel = 74,
		zone = 117,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "talk", npc = 23998, npcName = "Deathstalker Razael", map = 117, x = 77.6, y = 34.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 23778, npcName = "Dark Ranger Lyana", map = 117, x = 79.5, y = 36.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11221, title = "Reports from the Field", npc = 23780, npcName = "High Executor Anselm", map = 117, x = 78.6, y = 31.2, f = "e" },
					{ t = "accept", quest = 11229, title = "The Windrunner Fleet", npc = 23780, npcName = "High Executor Anselm", map = 117, x = 78.6, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 79.2, y = 31.2, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 75.9,19.7",
				goals = {
					{ t = "turnin", quest = 11253, title = "Sniff Out the Enemy", map = 117, x = 75.9, y = 19.7, f = "e" },
					{ t = "accept", quest = 11254, title = "The Dragonskin Map", map = 117, x = 75.9, y = 19.7, f = "e" },
				},
			},
			{
				note = "Go outside the cave to 76.9,20",
				goals = {
					{ t = "kill", target = "Giant Tidecrawlers", count = 1, map = 117, x = 76.9, y = 20.0, f = "e" },
					{ t = "collect", quest = 11168, itemName = "Giant Toxin Gland", count = 3, oi = 1, map = 117, x = 76.9, y = 20.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11168, title = "Spiking the Mix", npc = 24126, npcName = "Apothecary Lysander", map = 117, x = 78.5, y = 29.0, f = "e" },
					{ t = "accept", quest = 11170, title = "Test at Sea", npc = 24126, npcName = "Apothecary Lysander", map = 117, x = 78.5, y = 29.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11254, title = "The Dragonskin Map", npc = 23780, npcName = "High Executor Anselm", map = 117, x = 78.6, y = 31.2, f = "e" },
					{ t = "accept", quest = 11295, title = "The Offensive Begins", npc = 23780, npcName = "High Executor Anselm", map = 117, x = 78.6, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 23816, npcName = "Bat Handler Camille", map = 117, x = 79.1, y = 29.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11170, title = "Test at Sea", npc = 24126, npcName = "Apothecary Lysander", map = 117, x = 78.5, y = 29.0, f = "e" },
					{ t = "accept", quest = 11304, title = "New Agamand", npc = 24126, npcName = "Apothecary Lysander", map = 117, x = 78.5, y = 29.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 23816, npcName = "Bat Handler Camille", map = 117, x = 79.1, y = 29.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11229, title = "The Windrunner Fleet", npc = 24037, npcName = "Captain Harker", map = 117, x = 84.7, y = 36.5, f = "e" },
					{ t = "accept", quest = 11230, title = "Ambushed!", npc = 24037, npcName = "Captain Harker", map = 117, x = 84.7, y = 36.5, f = "e" },
				},
			},
			{
				note = "Run around on this ship",
				goals = {
					{ t = "kill", quest = 11230, target = "North Fleet Marine", count = 15, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11230, title = "Ambushed!", npc = 24037, npcName = "Captain Harker", map = 117, x = 84.7, y = 36.5, f = "e" },
					{ t = "accept", quest = 11232, title = "Guide Our Sights", npc = 24037, npcName = "Captain Harker", map = 117, x = 84.7, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 80.3, y = 38.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 79.3, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11232, title = "Guide Our Sights", npc = 23778, npcName = "Dark Ranger Lyana", map = 117, x = 79.5, y = 36.2, f = "e" },
					{ t = "accept", quest = 11233, title = "Landing the Killing Blow", npc = 23778, npcName = "Dark Ranger Lyana", map = 117, x = 79.5, y = 36.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11233, target = "Sergeant Lorric", count = 1, oi = 3, map = 117, x = 82.2, y = 40.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11233, target = "Captain Olster", count = 1, oi = 1, map = 117, x = 81.5, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11233, target = "Lieutenant Celeyne", count = 1, oi = 2, map = 117, x = 83.2, y = 43.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11241, title = "Trail of Fire", npc = 23784, npcName = "Apothecary Hanes", map = 117, x = 83.2, y = 43.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11233, title = "Landing the Killing Blow", npc = 23778, npcName = "Dark Ranger Lyana", map = 117, x = 79.5, y = 36.2, f = "e" },
					{ t = "accept", quest = 11234, title = "Report to Anselm", npc = 23778, npcName = "Dark Ranger Lyana", map = 117, x = 79.5, y = 36.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11234, title = "Report to Anselm", npc = 23780, npcName = "High Executor Anselm", map = 117, x = 78.6, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11241, title = "Trail of Fire", npc = 24126, npcName = "Apothecary Lysander", map = 117, x = 78.5, y = 29.0, f = "e" },
				},
			},
			{
				note = "Go southwest up the huge lift to 71.1,39.1",
				goals = {
					{ t = "turnin", quest = 11295, title = "The Offensive Begins", npc = 24027, npcName = "Sergeant Gorth", map = 117, x = 71.1, y = 39.1, f = "e" },
					{ t = "accept", quest = 11282, title = "A Lesson in Fear", npc = 24027, npcName = "Sergeant Gorth", map = 117, x = 71.1, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12566, title = "Help for Camp Winterhoof", npc = 28314, npcName = "Longrunner Nanik", map = 117, x = 71.5, y = 39.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Winterskorn Defenders close around this area", count = 1, map = 117, x = 69.1, y = 38.5, f = "e" },
					{ t = "kill", target = "Oric the Baleful", count = 1, map = 117, x = 69.1, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Winterskorn Defenders close around this area", count = 1, map = 117, x = 69.6, y = 40.1, f = "e" },
					{ t = "kill", target = "Gunnar Thorvardsson", count = 1, map = 117, x = 69.6, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Winterskorn Defenders close around this area", count = 1, map = 117, x = 69.4, y = 39.5, f = "e" },
					{ t = "kill", target = "Ulf the Bloodletter", count = 1, map = 117, x = 69.4, y = 39.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11282, title = "A Lesson in Fear", npc = 24027, npcName = "Sergeant Gorth", map = 117, x = 71.1, y = 39.1, f = "e" },
					{ t = "accept", quest = 11285, title = "Baleheim Must Burn!", npc = 24027, npcName = "Sergeant Gorth", map = 117, x = 71.1, y = 39.1, f = "e" },
					{ t = "accept", quest = 11283, title = "Baleheim Bodycount", npc = 24027, npcName = "Sergeant Gorth", map = 117, x = 71.1, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 66.7, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 66.2, y = 39.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 63.8, y = 40.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 64.9, y = 40.9, f = "e" },
				},
			},
			{
				note = "Kill Winterskorn Vrykuls all around this town",
				goals = {
					{ t = "collect", itemName = "Baleheim Bodycount to 16", count = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11283, title = "Baleheim Bodycount", npc = 24027, npcName = "Sergeant Gorth", map = 117, x = 71.1, y = 39.1, f = "e" },
					{ t = "turnin", quest = 11285, title = "Baleheim Must Burn!", npc = 24027, npcName = "Sergeant Gorth", map = 117, x = 71.1, y = 39.1, f = "e" },
					{ t = "accept", quest = 11303, title = "The Ambush", npc = 24027, npcName = "Sergeant Gorth", map = 117, x = 71.1, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11303, title = "The Ambush", npc = 24458, npcName = "Lydell", map = 117, x = 65.9, y = 36.8, f = "e" },
					{ t = "accept", quest = 12481, title = "Adding Injury to Insult", npc = 24458, npcName = "Lydell", map = 117, x = 65.9, y = 36.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 64.2, y = 38.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 65.9, y = 36.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12481, title = "Adding Injury to Insult", npc = 24458, npcName = "Lydell", map = 117, x = 65.9, y = 36.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12482, title = "Against Nifflevar", npc = 27922, npcName = "Ranger Captain Areiel", map = 117, x = 67.4, y = 60.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11423, title = "The Enemy's Legacy", npc = 24548, npcName = "Scribe Seguine", map = 117, x = 67.3, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12482, target = "Dragonflayer Warrior", count = 5, oi = 1, map = 117, x = 69.6, y = 57.1, f = "e" },
					{ t = "kill", quest = 12482, target = "Dragonflayer Rune-Seer", count = 4, oi = 2, map = 117, x = 69.6, y = 57.1, f = "e" },
					{ t = "kill", quest = 12482, target = "Dragonflayer Hunting Hound", count = 4, oi = 3, map = 117, x = 69.6, y = 57.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11423, itemName = "Saga of the Val'kyr", count = 1, oi = 2, map = 117, x = 67.4, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11423, itemName = "Saga of the Winter Curse", count = 1, oi = 3, map = 117, x = 68.9, y = 52.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11423, itemName = "Saga of the Twins", count = 1, oi = 1, map = 117, x = 64.7, y = 53.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12482, title = "Against Nifflevar", npc = 27922, npcName = "Ranger Captain Areiel", map = 117, x = 67.4, y = 60.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11423, title = "The Enemy's Legacy", npc = 24548, npcName = "Scribe Seguine", map = 117, x = 67.3, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11304, title = "New Agamand", npc = 24251, npcName = "Chief Plaguebringer Harris", map = 117, x = 53.6, y = 66.4, f = "e" },
					{ t = "accept", quest = 11305, title = "A Tailor-Made Formula", npc = 24251, npcName = "Chief Plaguebringer Harris", map = 117, x = 53.6, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11424, title = "Shield Hill", npc = 24252, npcName = "\"Hacksaw\" Jenny", map = 117, x = 53.7, y = 65.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11279, title = "Green Eggs and Whelps", npc = 24157, npcName = "Plaguebringer Tillinghast", map = 117, x = 53.1, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "New Agamand", f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "New Agamand", map = 117, x = 52.0, y = 67.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Risen Vrykul Ancestors", count = 1, map = 117, x = 57.6, y = 76.5, f = "e" },
					{ t = "collect", quest = 11424, itemName = "Ancient Vrykul Bone", count = 5, oi = 1, map = 117, x = 57.6, y = 76.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11305, itemName = "Dragonflayer Patriarch's Blood", count = 1, oi = 1, map = 117, x = 46.8, y = 68.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11504, title = "The Dead Rise!", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Plagued Proto-Whelps that spawn", count = 1, map = 117, x = 42.0, y = 54.4, f = "e" },
					{ t = "collect", quest = 11279, itemName = "Plagued Proto-Whelp Specimen", count = 10, oi = 1, map = 117, x = 42.0, y = 54.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11182, title = "Root Causes", npc = 23870, npcName = "Ember Clutch Ancient", map = 117, x = 37.4, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11182, target = "Dragonflayer Handler", count = 5, oi = 1, map = 117, x = 40.6, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11182, target = "Skeld Drakeson", count = 1, oi = 2, map = 117, x = 41.5, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11182, title = "Root Causes", npc = 23870, npcName = "Ember Clutch Ancient", map = 117, x = 37.4, y = 51.9, f = "e" },
				},
			},
			{
				note = "Hearth to New Agamand,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 117, x = 52.2, y = 66.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11279, title = "Green Eggs and Whelps", npc = 24157, npcName = "Plaguebringer Tillinghast", map = 117, x = 53.1, y = 66.9, f = "e" },
					{ t = "accept", quest = 11280, title = "Draconis Gastritis", npc = 24157, npcName = "Plaguebringer Tillinghast", map = 117, x = 53.1, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11424, title = "Shield Hill", npc = 24252, npcName = "\"Hacksaw\" Jenny", map = 117, x = 53.7, y = 65.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11305, title = "A Tailor-Made Formula", npc = 24251, npcName = "Chief Plaguebringer Harris", map = 117, x = 53.6, y = 66.4, f = "e" },
					{ t = "accept", quest = 11306, title = "Apply Heat and Stir", npc = 24251, npcName = "Chief Plaguebringer Harris", map = 117, x = 53.6, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11306, item = 33615, itemName = "Flask of Vrykul Blood", count = 1, map = 117, x = 53.6, y = 66.5, f = "e" },
					{ t = "collect", quest = 11306, itemName = "Balanced Concoction", count = 1, oi = 1, map = 117, x = 53.6, y = 66.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11306, title = "Apply Heat and Stir", npc = 24251, npcName = "Chief Plaguebringer Harris", map = 117, x = 53.6, y = 66.4, f = "e" },
					{ t = "accept", quest = 11307, title = "Field Test", npc = 24251, npcName = "Chief Plaguebringer Harris", map = 117, x = 53.6, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11504, itemName = "Fengir's Clue", count = 1, oi = 1, map = 117, x = 57.7, y = 77.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11504, itemName = "Rodin's Clue", count = 1, oi = 2, map = 117, x = 59.2, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11504, itemName = "Isuldof's Clue", count = 1, oi = 3, map = 117, x = 59.8, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11504, itemName = "Windan's Clue", count = 1, oi = 4, map = 117, x = 62.0, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 48.5, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11504, title = "The Dead Rise!", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
					{ t = "accept", quest = 11507, title = "Elder Atuik and Kamagua", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Proto-Drake", count = 1, map = 117, x = 41.7, y = 53.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11280, title = "Draconis Gastritis", npc = 24157, npcName = "Plaguebringer Tillinghast", map = 117, x = 53.1, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11307, title = "Field Test", npc = 24251, npcName = "Chief Plaguebringer Harris", map = 117, x = 53.6, y = 66.4, f = "e" },
					{ t = "accept", quest = 11308, title = "Time for Cleanup", npc = 24251, npcName = "Chief Plaguebringer Harris", map = 117, x = 53.6, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11308, title = "Time for Cleanup", npc = 24252, npcName = "\"Hacksaw\" Jenny", map = 117, x = 53.7, y = 65.2, f = "e" },
					{ t = "accept", quest = 11309, title = "Parts for the Job", npc = 24252, npcName = "\"Hacksaw\" Jenny", map = 117, x = 53.7, y = 65.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Shoveltusks", count = 1, map = 117, x = 50.3, y = 65.8, f = "e" },
					{ t = "collect", quest = 11309, itemName = "Shoveltusk Ligament", count = 6, oi = 1, map = 117, x = 50.3, y = 65.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 24291, npcName = "Anton", itemName = "Fresh Pound of Flesh", count = 1, map = 117, x = 49.4, y = 74.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11309, title = "Parts for the Job", npc = 24252, npcName = "\"Hacksaw\" Jenny", map = 117, x = 53.7, y = 65.2, f = "e" },
					{ t = "accept", quest = 11310, title = "Warning: Some Assembly Required", npc = 24252, npcName = "\"Hacksaw\" Jenny", map = 117, x = 53.7, y = 65.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 49.6, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11310, title = "Warning: Some Assembly Required", npc = 24252, npcName = "\"Hacksaw\" Jenny", map = 117, x = 53.7, y = 65.2, f = "e" },
				},
			},
			{
				note = "Go northwest across the Ancient Lift to 25.0,57.0",
				goals = {
					{ t = "turnin", quest = 11507, title = "Elder Atuik and Kamagua", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
					{ t = "accept", quest = 11508, title = "Grezzix Spindlesnap", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
					{ t = "accept", quest = 11456, title = "Feeding the Survivors", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Kamagua", map = 117, x = 24.7, y = 57.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Island Shoveltusks", count = 1, map = 117, x = 29.1, y = 58.8, f = "e" },
					{ t = "collect", quest = 11456, itemName = "Island Shoveltusk Meat", count = 6, oi = 1, map = 117, x = 29.1, y = 58.8, f = "e" },
				},
			},
		},
	})
end

