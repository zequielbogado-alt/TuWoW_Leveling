-- TuWoW_Leveling — Guides/Dailies_Horde_10.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-home-cities-exalted-reputation-guide-part-2",
		pack = "guides",
		title = "Home Cities Exalted Reputation Guide (Parte 2/8)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		next = "zygor/dailies/h-dai-icecrown-home-cities-exalted-reputation-guide-part-3",
		author = "TuWoW & Zygor",
		minLevel = 77,
		zone = 1420,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 410, title = "The Dormant Shade", map = 1420, x = 66.6, y = 44.9, f = "e" },
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
					{ t = "talk", npc = 4551, npcName = "Michael Garrett", map = 1458, x = 63.2, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 421, title = "Prove Your Worth", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 477, title = "Border Crossings", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 44.0, y = 40.9, f = "e" },
					{ t = "accept", quest = 516, title = "Beren's Peril", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 44.0, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 445, title = "Delivery to Silverpine Forest", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
					{ t = "accept", quest = 447, title = "A Recipe For Death", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
					{ t = "accept", quest = 493, title = "Journey to Hillsbrad Foothills", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "The Sepulcher", map = 1421, x = 43.2, y = 41.3, f = "e" },
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
					{ t = "kill", quest = 421, target = "Moonrage Whitescalp", count = 5, oi = 1, map = 1421, x = 48.1, y = 40.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 437, itemName = "Essence of Nightlash", count = 1, oi = 2, map = 1421, x = 45.4, y = 21.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 447, itemName = "Grizzled Bear Heart", count = 6, oi = 1, map = 1421, x = 42.4, y = 18.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 447, itemName = "Skittering Blood", count = 6, oi = 2, map = 1421, x = 35.8, y = 15.0, f = "e" },
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
					{ t = "collect", quest = 429, itemName = "Discolored Worg Heart", count = 6, oi = 1, map = 1421, x = 56.2, y = 11.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 435, title = "Escorting Erland", npc = 32607, npcName = "Deathstalker Erland", map = 1421, x = 56.2, y = 9.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 435, title = "Escorting Erland", npc = 1950, npcName = "Rane Yorick", map = 1421, x = 53.5, y = 13.4, f = "e" },
					{ t = "accept", quest = 449, title = "The Deathstalkers' Report", npc = 1950, npcName = "Rane Yorick", map = 1421, x = 53.5, y = 13.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 421, title = "Prove Your Worth", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
					{ t = "accept", quest = 422, title = "Arugal's Folly (1)", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 429, title = "Wild Hearts", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
					{ t = "accept", quest = 430, title = "Return to Quinn", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 449, title = "The Deathstalkers' Report", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.4, y = 40.9, f = "e" },
					{ t = "accept", quest = 3221, title = "Speak with Renferrel", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.4, y = 40.9, f = "e" },
					{ t = "turnin", quest = 437, title = "The Dead Fields", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.4, y = 40.9, f = "e" },
					{ t = "accept", quest = 438, title = "The Decrepit Ferry", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.4, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3221, title = "Speak with Renferrel", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
					{ t = "accept", quest = 1359, title = "Zinge's Delivery", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 422, itemName = "Remedy of Arugal", count = 1, oi = 1, map = 1421, x = 52.8, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 438, title = "The Decrepit Ferry", map = 1421, x = 58.4, y = 34.9, f = "e" },
					{ t = "accept", quest = 439, title = "Rot Hide Clues", map = 1421, x = 58.4, y = 34.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 430, title = "Return to Quinn", npc = 1951, npcName = "Quinn Yorick", map = 1421, x = 53.4, y = 12.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 425, title = "Ivar the Foul", npc = 1950, npcName = "Rane Yorick", map = 1421, x = 53.5, y = 13.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 425, itemName = "Ivar's Head", count = 1, oi = 1, map = 1421, x = 51.5, y = 13.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 425, title = "Ivar the Foul", npc = 1950, npcName = "Rane Yorick", map = 1421, x = 53.5, y = 13.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 422, title = "Arugal's Folly (1)", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
					{ t = "accept", quest = 423, title = "Arugal's Folly (2)", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 439, title = "Rot Hide Clues", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.4, y = 40.9, f = "e" },
					{ t = "accept", quest = 443, title = "Rot Hide Ichor", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.4, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 423, itemName = "Darksoul Shackle", count = 3, oi = 2, map = 1421, x = 43.4, y = 32.0, f = "e" },
					{ t = "collect", quest = 423, itemName = "Glutton Shackle", count = 6, oi = 1, map = 1421, x = 43.4, y = 32.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 443, itemName = "Rot Hide Ichor", count = 8, oi = 1, map = 1421, x = 65.7, y = 30.6, f = "e" },
				},
			},
			{
				note = "Hearth to The Sepulcher |goto Silverpine Forest,43.2,41.3,0.5 |use Hearthstone##6948 |noway |c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 443, title = "Rot Hide Ichor", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
					{ t = "accept", quest = 443, title = "Rot Hide Ichor", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 423, title = "Arugal's Folly", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
					{ t = "accept", quest = 424, title = "Arugal's Folly", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 424, itemName = "Head of Grimson", count = 1, oi = 1, map = 1421, x = 58.6, y = 44.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 477, title = "Border Crossings", map = 1421, x = 49.9, y = 60.3, f = "e" },
					{ t = "accept", quest = 478, title = "Maps and Runes", map = 1421, x = 49.9, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1421, x = 60.4, y = 74.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 516, target = "Ravenclaw Drudger", count = 6, oi = 1, map = 1421, x = 60.5, y = 72.4, f = "e" },
					{ t = "kill", quest = 516, target = "Ravenclaw Guardian", count = 6, oi = 2, map = 1421, x = 60.5, y = 72.4, f = "e" },
				},
			},
			{
				note = "Go outside to 44.2,39.8",
				goals = {
					{ t = "turnin", quest = 424, title = "Arugal's Folly", npc = 1938, npcName = "Dalar Dawnweaver", f = "e" },
					{ t = "accept", quest = 99, title = "Arugal's Folly", npc = 1938, npcName = "Dalar Dawnweaver", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 478, title = "Maps and Runes", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 44.0, y = 40.9, f = "e" },
					{ t = "accept", quest = 481, title = "Dalar's Analysis", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 44.0, y = 40.9, f = "e" },
					{ t = "turnin", quest = 516, title = "Beren's Peril", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 44.0, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 481, title = "Dalar's Analysis", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
					{ t = "accept", quest = 482, title = "Dalaran's Intentions", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 482, title = "Dalaran's Intentions", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 44.0, y = 40.9, f = "e" },
					{ t = "accept", quest = 479, title = "Ambermill Investigations", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 44.0, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2226, npcName = "Karos Razok", map = 1421, x = 45.6, y = 42.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 444, title = "Rot Hide Origins", npc = 1498, npcName = "Bethor Iceshard", map = 1458, x = 84.0, y = 17.5, f = "e" },
					{ t = "accept", quest = 446, title = "Thule Ravenclaw", npc = 1498, npcName = "Bethor Iceshard", map = 1458, x = 84.0, y = 17.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 447, title = "A Recipe For Death", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.8, y = 69.3, f = "e" },
					{ t = "accept", quest = 450, title = "A Recipe For Death", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.8, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1359, title = "Zinge's Delivery", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 50.1, y = 68.0, f = "e" },
					{ t = "accept", quest = 1358, title = "Sample for Helbrim", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 50.1, y = 68.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 4551, npcName = "Michael Garrett", map = 1458, x = 63.2, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 446, title = "Thule Ravenclaw", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
					{ t = "accept", quest = 448, title = "Report to Hadrec", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 448, title = "Report to Hadrec", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.4, y = 40.9, f = "e" },
					{ t = "accept", quest = 442, title = "Assault on Fenris Isle", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.4, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 442, itemName = "Thule's Head", count = 1, oi = 1, map = 1421, x = 65.7, y = 23.7, f = "e" },
				},
			},
			{
				note = "Hearth to The Sepulcher |goto Silverpine Forest,43.2,41.3,0.5 |use Hearthstone##6948 |noway |c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 442, title = "Assault on Fenris Isle", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.4, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 479, itemName = "Dalaran Pendant", count = 8, oi = 1, map = 1421, x = 57.3, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 99, itemName = "Pyrewood Shackle", count = 6, oi = 1, map = 1421, x = 47.0, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 452, title = "Pyrewood Ambush", npc = 2058, npcName = "Deathstalker Faerleia", map = 1421, x = 46.5, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 452, title = "Pyrewood Ambush", npc = 2058, npcName = "Deathstalker Faerleia", map = 1421, x = 46.5, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 450, itemName = "Berard's Journal", count = 1, oi = 1, map = 1421, x = 43.0, y = 73.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 99, title = "Arugal's Folly", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 479, title = "Ambermill Investigations", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 44.0, y = 40.9, f = "e" },
					{ t = "accept", quest = 480, title = "The Weaver", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 44.0, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 450, title = "A Recipe For Death", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
					{ t = "accept", quest = 451, title = "A Recipe For Death", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 451, itemName = "Lake Skulker Moss", count = 6, oi = 1, map = 1421, x = 70.6, y = 37.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 451, itemName = "Hardened Tumor", count = 1, oi = 3, map = 1421, x = 75.9, y = 33.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 451, itemName = "Lake Creeper Moss", count = 6, oi = 2, map = 1421, x = 77.3, y = 28.8, f = "e" },
				},
			},
			{
				note = "Hearth to The Sepulcher |goto Silverpine Forest,43.2,41.3,0.5 |use Hearthstone##6948 |noway |c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 480, itemName = "Ataeric's Staff", count = 1, oi = 1, map = 1421, x = 63.4, y = 64.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 480, title = "The Weaver", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 44.0, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2226, npcName = "Karos Razok", map = 1421, x = 45.6, y = 42.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 451, title = "A Recipe For Death", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.8, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 4551, npcName = "Michael Garrett", map = 1458, x = 63.3, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 493, title = "Journey to Hillsbrad Foothills", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
					{ t = "accept", quest = 496, title = "Elixir of Suffering", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
					{ t = "accept", quest = 509, title = "Elixir of Agony", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
					{ t = "accept", quest = 501, title = "Elixir of Pain", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 544, title = "Prison Break In", npc = 2410, npcName = "Magus Wordeen Voidglare", map = 1424, x = 61.6, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 556, title = "Stone Tokens", npc = 2437, npcName = "Keeper Bel'varil", map = 1424, x = 61.5, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 527, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.3, y = 20.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 549, title = "WANTED: Syndicate Personnel", map = 1424, x = 62.6, y = 20.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 498, title = "The Rescue", npc = 2229, npcName = "Krusk", map = 1424, x = 63.3, y = 20.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 547, title = "Humbert's Sword", npc = 2419, npcName = "Deathguard Humbert", map = 1424, x = 62.8, y = 20.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 552, title = "Helcular's Revenge", npc = 2429, npcName = "Novice Thaivand", map = 1424, x = 63.9, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 567, title = "Dangerous!", map = 1424, x = 62.6, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Tarren Mill", map = 1424, x = 62.8, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 496, itemName = "Gray Bear Tongue", count = 10, oi = 1, map = 1424, x = 66.3, y = 27.1, f = "e" },
					{ t = "collect", quest = 496, itemName = "Creeper Ichor", count = 1, oi = 2, map = 1424, x = 66.3, y = 27.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 549, target = "Syndicate Watchman", count = 10, oi = 2, map = 1424, x = 77.0, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 549, target = "Syndicate Rogue", count = 10, oi = 1, map = 1424, x = 76.2, y = 41.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 3467, itemName = "Dull Iron Key", count = 1, map = 1424, x = 79.6, y = 41.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 3499, itemName = "Burnished Gold Key", count = 1, map = 1424, x = 78.0, y = 40.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1424, x = 79.8, y = 39.6, f = "e" },
				},
			},
		},
	})
end

