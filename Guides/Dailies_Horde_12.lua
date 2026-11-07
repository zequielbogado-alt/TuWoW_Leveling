-- TuWoW_Leveling — Guides/Dailies_Horde_12.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-home-cities-exalted-reputation-guide-part-4",
		pack = "guides",
		title = "Home Cities Exalted Reputation Guide (Parte 4/8)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		next = "zygor/dailies/h-dai-icecrown-home-cities-exalted-reputation-guide-part-5",
		author = "TuWoW & Zygor",
		minLevel = 77,
		zone = 1420,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 8491, title = "Pelt Collection", npc = 15417, npcName = "Velan Brightoak", map = 1944, x = 44.7, y = 69.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9144, title = "Missing in the Ghostlands", npc = 16210, npcName = "Magistrix Landra Dawnstrider", map = 1944, x = 44.0, y = 70.8, f = "e" },
					{ t = "accept", quest = 9395, title = "Saltheril's Haven", npc = 16210, npcName = "Magistrix Landra Dawnstrider", map = 1944, x = 44.0, y = 70.8, f = "e" },
					{ t = "accept", quest = 9254, title = "The Wayward Apprentice", npc = 16210, npcName = "Magistrix Landra Dawnstrider", map = 1944, x = 44.0, y = 70.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9358, title = "Ranger Sareyn", npc = 15397, npcName = "Marniel Amberlight", map = 1944, x = 43.7, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Fairbreeze Village", map = 1944, x = 43.7, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9258, title = "The Scorched Grove", npc = 16397, npcName = "Ardeyn Riverwind", map = 1944, x = 43.6, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8892, title = "Situation at Sunsail Anchorage", npc = 15939, npcName = "Ranger Degolien", map = 1944, x = 43.3, y = 70.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8491, itemName = "Springpaw Pelt", count = 6, oi = 1, map = 1944, x = 41.8, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9395, title = "Saltheril's Haven", npc = 16144, npcName = "Lord Saltheril", map = 1944, x = 38.1, y = 73.6, f = "e" },
					{ t = "accept", quest = 9067, title = "The Party Never Ends", npc = 16144, npcName = "Lord Saltheril", map = 1944, x = 38.1, y = 73.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8892, target = "Wretched Thug", count = 5, oi = 1, map = 1944, x = 33.5, y = 71.6, f = "e" },
					{ t = "kill", quest = 8892, target = "Wretched Hooligan", count = 5, oi = 2, map = 1944, x = 33.5, y = 71.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9258, title = "The Scorched Grove", npc = 15398, npcName = "Larianna Riverwind", map = 1944, x = 34.1, y = 80.0, f = "e" },
					{ t = "accept", quest = 8473, title = "A Somber Task", npc = 15398, npcName = "Larianna Riverwind", map = 1944, x = 34.1, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8473, target = "Withered Green Keeper", count = 10, oi = 1, map = 1944, x = 35.0, y = 84.2, f = "e" },
					{ t = "collect", item = 23228, itemName = "Old Whitebark's Pendant", count = 1, map = 1944, x = 35.0, y = 84.2, f = "e" },
					{ t = "accept", quest = 8474, title = "Old Whitebark's Pendant", map = 1944, x = 35.0, y = 84.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8473, title = "A Somber Task", npc = 15398, npcName = "Larianna Riverwind", map = 1944, x = 34.1, y = 80.0, f = "e" },
					{ t = "turnin", quest = 8474, title = "Old Whitebark's Pendant", npc = 15398, npcName = "Larianna Riverwind", map = 1944, x = 34.1, y = 80.0, f = "e" },
					{ t = "accept", quest = 10166, title = "Whitebark's Memory", npc = 15398, npcName = "Larianna Riverwind", map = 1944, x = 34.1, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10166, title = "Whitebark's Memory", npc = 19456, npcName = "Whitebark's Spirit", map = 1944, x = 37.5, y = 86.3, f = "e" },
				},
			},
			{
				note = "Hearth to Fairbreeze Village |goto Eversong Woods,43.3,71.3,0.5 |use Hearthstone##6948 |noway |c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8892, title = "Situation at Sunsail Anchorage", npc = 15939, npcName = "Ranger Degolien", map = 1944, x = 43.3, y = 70.8, f = "e" },
					{ t = "accept", quest = 9359, title = "Farstrider Retreat", npc = 15939, npcName = "Ranger Degolien", map = 1944, x = 43.3, y = 70.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 16444, npcName = "Halis Dawnstrider", itemName = "Bundle of Fireworks", count = 1, map = 1944, x = 44.1, y = 70.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8491, title = "Pelt Collection", npc = 15417, npcName = "Velan Brightoak", map = 1944, x = 44.7, y = 69.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9358, title = "Ranger Sareyn", npc = 15942, npcName = "Ranger Sareyn", map = 1944, x = 46.9, y = 71.8, f = "e" },
					{ t = "accept", quest = 9252, title = "Defending Fairbreeze Village", npc = 15942, npcName = "Ranger Sareyn", map = 1944, x = 46.9, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9035, title = "Roadside Ambush", npc = 15945, npcName = "Apprentice Meledor", map = 1944, x = 44.9, y = 61.0, f = "e" },
					{ t = "accept", quest = 9062, title = "Soaked Pages", npc = 15945, npcName = "Apprentice Meledor", map = 1944, x = 44.9, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9062, itemName = "Antheol's Elemental Grimoire", count = 1, oi = 1, map = 1944, x = 44.3, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9062, title = "Soaked Pages", npc = 15945, npcName = "Apprentice Meledor", map = 1944, x = 44.9, y = 61.0, f = "e" },
					{ t = "accept", quest = 9064, title = "Taking the Fall", npc = 15945, npcName = "Apprentice Meledor", map = 1944, x = 44.9, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8482, title = "Incriminating Documents", npc = 15403, npcName = "Aeldon Sunbrand", map = 1944, x = 48.2, y = 46.0, f = "e" },
					{ t = "accept", quest = 8483, title = "The Dwarven Spy", npc = 15403, npcName = "Aeldon Sunbrand", map = 1944, x = 48.2, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8483, itemName = "Prospector Anvilward's Head", count = 1, oi = 1, map = 1944, x = 44.6, y = 53.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8483, title = "The Dwarven Spy", npc = 15403, npcName = "Aeldon Sunbrand", map = 1944, x = 48.2, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8475, title = "The Dead Scar", npc = 15416, npcName = "Ranger Jaela", map = 1944, x = 50.3, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8475, target = "Plaguebone Pillager", count = 8, oi = 1, map = 1944, x = 50.0, y = 52.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8475, title = "The Dead Scar", npc = 15416, npcName = "Ranger Jaela", map = 1944, x = 50.3, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9064, title = "Taking the Fall", npc = 15970, npcName = "Instructor Antheol", map = 1944, x = 55.7, y = 54.5, f = "e" },
					{ t = "accept", quest = 9066, title = "Swift Discipline", npc = 15970, npcName = "Instructor Antheol", map = 1944, x = 55.7, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 45.2, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 44.9, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9066, title = "Swift Discipline", npc = 15970, npcName = "Instructor Antheol", map = 1944, x = 55.7, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 16442, npcName = "Vinemaster Suntouched", itemName = "Suntouched Special Reserve", count = 1, map = 1944, x = 79.5, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9359, title = "Farstrider Retreat", npc = 15399, npcName = "Lieutenant Dawnrunner", map = 1944, x = 60.3, y = 62.8, f = "e" },
					{ t = "accept", quest = 8476, title = "Amani Encroachment", npc = 15399, npcName = "Lieutenant Dawnrunner", map = 1944, x = 60.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8477, title = "The Spearcrafter's Hammer", npc = 15400, npcName = "Arathel Sunforge", map = 1944, x = 59.5, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8888, title = "The Magister's Apprentice", npc = 15951, npcName = "Magister Duskwither", map = 1944, x = 60.3, y = 61.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8888, title = "The Magister's Apprentice", npc = 15924, npcName = "Apprentice Loralthalis", map = 1944, x = 67.8, y = 56.5, f = "e" },
					{ t = "accept", quest = 8889, title = "Deactivating the Spire", npc = 15924, npcName = "Apprentice Loralthalis", map = 1944, x = 67.8, y = 56.5, f = "e" },
					{ t = "accept", quest = 9394, title = "Where's Wyllithen?", npc = 15924, npcName = "Apprentice Loralthalis", map = 1944, x = 67.8, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 68.9, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 68.9, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8891, title = "Abandoned Investigations", map = 1944, x = 69.2, y = 52.1, f = "e" },
				},
			},
			{
				note = "Go up the big staircase to 69.7,53.3",
				goals = {
					{ t = "goto", map = 1944, x = 69.7, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9394, title = "Where's Wyllithen?", npc = 15969, npcName = "Groundskeeper Wyllithen", map = 1944, x = 68.7, y = 46.9, f = "e" },
					{ t = "accept", quest = 8894, title = "Cleaning up the Grounds", npc = 15969, npcName = "Groundskeeper Wyllithen", map = 1944, x = 68.7, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8894, target = "Mana Serpent", count = 6, oi = 1, map = 1944, x = 69.5, y = 48.1, f = "e" },
					{ t = "kill", quest = 8894, target = "Ether Fiend", count = 6, oi = 2, map = 1944, x = 69.5, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8894, title = "Cleaning up the Grounds", npc = 15969, npcName = "Groundskeeper Wyllithen", map = 1944, x = 68.7, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8889, title = "Deactivating the Spire", npc = 15924, npcName = "Apprentice Loralthalis", map = 1944, x = 67.8, y = 56.5, f = "e" },
					{ t = "accept", quest = 8890, title = "Word from the Spire", npc = 15924, npcName = "Apprentice Loralthalis", map = 1944, x = 67.8, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 16443, npcName = "Zalene Firstlight", itemName = "Springpaw Appetizers", count = 1, map = 1944, x = 60.4, y = 62.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8890, title = "Word from the Spire", npc = 15951, npcName = "Magister Duskwither", map = 1944, x = 60.3, y = 61.4, f = "e" },
					{ t = "turnin", quest = 8891, title = "Abandoned Investigations", npc = 15951, npcName = "Magister Duskwither", map = 1944, x = 60.3, y = 61.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8476, target = "Amani Berserker", count = 5, oi = 1, map = 1944, x = 68.3, y = 71.9, f = "e" },
					{ t = "kill", quest = 8476, target = "Amani Axe Thrower", count = 5, oi = 2, map = 1944, x = 68.3, y = 71.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8477, itemName = "Otembe's Hammer", count = 1, oi = 1, map = 1944, x = 70.0, y = 72.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8479, title = "Zul'Marosh", npc = 15406, npcName = "Ven'jashi", map = 1944, x = 70.5, y = 72.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8479, itemName = "Chieftain Zul'Marosh's Head", count = 1, oi = 1, map = 1944, x = 62.6, y = 79.7, f = "e" },
					{ t = "collect", item = 23249, itemName = "Amani Invasion Plans", count = 1, map = 1944, x = 62.6, y = 79.7, f = "e" },
					{ t = "accept", quest = 9360, title = "Amani Invasion", map = 1944, x = 62.6, y = 79.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8479, title = "Zul'Marosh", npc = 15406, npcName = "Ven'jashi", map = 1944, x = 70.5, y = 72.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8476, title = "Amani Encroachment", npc = 15399, npcName = "Lieutenant Dawnrunner", map = 1944, x = 60.3, y = 62.8, f = "e" },
					{ t = "turnin", quest = 9360, title = "Amani Invasion", npc = 15399, npcName = "Lieutenant Dawnrunner", map = 1944, x = 60.3, y = 62.8, f = "e" },
					{ t = "accept", quest = 9363, title = "Warning Fairbreeze Village", npc = 15399, npcName = "Lieutenant Dawnrunner", map = 1944, x = 60.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8477, title = "The Spearcrafter's Hammer", npc = 15400, npcName = "Arathel Sunforge", map = 1944, x = 59.5, y = 62.6, f = "e" },
				},
			},
			{
				note = "Hearth to Fairbreeze Village,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", map = 1944, x = 43.7, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9363, title = "Warning Fairbreeze Village", npc = 15939, npcName = "Ranger Degolien", map = 1944, x = 43.3, y = 70.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9067, title = "The Party Never Ends", npc = 16144, npcName = "Lord Saltheril", map = 1944, x = 38.1, y = 73.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9252, target = "Darkwraith", count = 4, oi = 2, map = 1944, x = 50.6, y = 76.8, f = "e" },
					{ t = "kill", quest = 9252, target = "Rotlimb Marauder", count = 4, oi = 1, map = 1944, x = 50.6, y = 76.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9254, title = "The Wayward Apprentice", npc = 15402, npcName = "Apprentice Mirveda", map = 1944, x = 54.3, y = 71.0, f = "e" },
					{ t = "accept", quest = 8487, title = "Corrupted Soil", npc = 15402, npcName = "Apprentice Mirveda", map = 1944, x = 54.3, y = 71.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8487, item = 20771, itemName = "Tainted Soil Sample", count = 8, oi = 1, map = 1944, x = 52.6, y = 70.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8487, title = "Corrupted Soil", npc = 15402, npcName = "Apprentice Mirveda", map = 1944, x = 54.3, y = 71.0, f = "e" },
					{ t = "accept", quest = 8488, title = "Unexpected Results", npc = 15402, npcName = "Apprentice Mirveda", map = 1944, x = 54.3, y = 71.0, f = "e" },
					{ t = "turnin", quest = 8488, title = "Unexpected Results", npc = 15402, npcName = "Apprentice Mirveda", map = 1944, x = 54.3, y = 71.0, f = "e" },
					{ t = "accept", quest = 9255, title = "Research Notes", npc = 15402, npcName = "Apprentice Mirveda", map = 1944, x = 54.3, y = 71.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9252, title = "Defending Fairbreeze Village", npc = 15942, npcName = "Ranger Sareyn", map = 1944, x = 46.9, y = 71.8, f = "e" },
					{ t = "accept", quest = 9253, title = "Runewarden Deryan", npc = 15942, npcName = "Ranger Sareyn", map = 1944, x = 46.9, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9255, title = "Research Notes", npc = 16210, npcName = "Magistrix Landra Dawnstrider", map = 1944, x = 44.0, y = 70.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9253, title = "Runewarden Deryan", npc = 16362, npcName = "Runewarden Deryan", map = 1944, x = 44.2, y = 85.5, f = "e" },
					{ t = "accept", quest = 8490, title = "Powering our Defenses", npc = 16362, npcName = "Runewarden Deryan", map = 1944, x = 44.2, y = 85.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9144, title = "Missing in the Ghostlands", npc = 16183, npcName = "Courier Dawnstrider", map = 1944, x = 49.0, y = 89.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 55.2, y = 84.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8490, title = "Powering our Defenses", npc = 16362, npcName = "Runewarden Deryan", map = 1944, x = 44.2, y = 85.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9282, title = "The Farstrider Enclave", npc = 16239, npcName = "Magister Kaendris", map = 1943, x = 55.1, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9158, title = "Bearers of the Plague", npc = 16202, npcName = "Farstrider Sedina", map = 1943, x = 72.5, y = 32.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9276, title = "Attack on Zeb'Tela", npc = 16463, npcName = "Farstrider Solanna", map = 1943, x = 72.3, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9215, title = "Bring Me Kel'gash's Head!", map = 1943, x = 72.2, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9274, title = "Spirits of the Drowned", npc = 16462, npcName = "Ranger Krenn'an", map = 1943, x = 72.2, y = 29.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9214, title = "Shadowpine Weaponry", npc = 16220, npcName = "Captain Helios", map = 1943, x = 72.4, y = 29.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9282, title = "The Farstrider Enclave", npc = 16203, npcName = "Ranger Vynna", map = 1943, x = 72.0, y = 32.6, f = "e" },
					{ t = "accept", quest = 9161, title = "The Traitor's Shadow", npc = 16203, npcName = "Ranger Vynna", map = 1943, x = 72.0, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9158, target = "Ghostclaw Lynx", count = 10, oi = 1, map = 1943, x = 68.0, y = 40.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9276, target = "Shadowpine Shadowcaster", count = 8, oi = 1, map = 1943, x = 76.7, y = 38.4, f = "e" },
					{ t = "collect", quest = 9214, itemName = "Shadowcaster Mace", count = 3, oi = 2, map = 1943, x = 76.7, y = 38.4, f = "e" },
					{ t = "kill", quest = 9276, target = "Shadowpine Headhunter", count = 8, oi = 2, map = 1943, x = 76.7, y = 38.4, f = "e" },
					{ t = "collect", quest = 9214, itemName = "Headhunter Axe", count = 3, oi = 1, map = 1943, x = 76.7, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9158, title = "Bearers of the Plague", npc = 16202, npcName = "Farstrider Sedina", map = 1943, x = 72.5, y = 32.1, f = "e" },
					{ t = "accept", quest = 9159, title = "Curbing the Plague", npc = 16202, npcName = "Farstrider Sedina", map = 1943, x = 72.5, y = 32.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9276, title = "Attack on Zeb'Tela", npc = 16463, npcName = "Farstrider Solanna", map = 1943, x = 72.3, y = 31.2, f = "e" },
					{ t = "accept", quest = 9277, title = "Assault on Zeb'Nowa", npc = 16463, npcName = "Farstrider Solanna", map = 1943, x = 72.3, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9159, target = "Vampiric Mistbat", count = 10, oi = 1, map = 1943, x = 70.7, y = 40.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9277, target = "Shadowpine Catlord", count = 10, oi = 1, map = 1943, x = 63.2, y = 65.1, f = "e" },
					{ t = "collect", quest = 9214, itemName = "Catlord Claws", count = 3, oi = 3, map = 1943, x = 63.2, y = 65.1, f = "e" },
					{ t = "kill", quest = 9277, target = "Shadowpine Hexxer", count = 10, oi = 2, map = 1943, x = 63.2, y = 65.1, f = "e" },
					{ t = "collect", quest = 9214, itemName = "Hexxer Stave", count = 3, oi = 4, map = 1943, x = 63.2, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9215, itemName = "Head of Kel'gash the Wicked", count = 1, oi = 1, map = 1943, x = 65.3, y = 79.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9159, target = "Spindleweb Lurker", count = 8, oi = 2, map = 1943, x = 24.6, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9159, title = "Curbing the Plague", npc = 16202, npcName = "Farstrider Sedina", map = 1943, x = 72.5, y = 32.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9277, title = "Assault on Zeb'Nowa", npc = 16463, npcName = "Farstrider Solanna", map = 1943, x = 72.3, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9214, title = "Shadowpine Weaponry", npc = 16220, npcName = "Captain Helios", map = 1943, x = 72.4, y = 29.6, f = "e" },
					{ t = "turnin", quest = 9215, title = "Bring Me Kel'gash's Head!", npc = 16220, npcName = "Captain Helios", map = 1943, x = 72.4, y = 29.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9157, title = "Forgotten Rituals", npc = 16201, npcName = "Geranis Whitemorn", map = 1943, x = 72.3, y = 19.1, f = "e" },
				},
			},
		},
	})
end

