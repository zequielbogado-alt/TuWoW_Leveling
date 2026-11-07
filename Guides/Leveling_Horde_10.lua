-- TuWoW_Leveling — Guides/Leveling_Horde_10.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-blood-elf-1-13-part-2",
		pack = "guides",
		title = "Blood Elf (1-13) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1944,
		version = 1,
		races = { "BloodElf" },
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 9358, title = "Ranger Sareyn", npc = 15942, npcName = "Ranger Sareyn", map = 1944, x = 46.9, y = 71.8, f = "e" },
					{ t = "accept", quest = 9252, title = "Defending Fairbreeze Village", npc = 15942, npcName = "Ranger Sareyn", map = 1944, x = 46.9, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9252, target = "Rotlimb Marauder", count = 4, oi = 1, map = 1944, x = 50.7, y = 75.5, f = "e" },
					{ t = "kill", quest = 9252, target = "Darkwraith", count = 4, oi = 2, map = 1944, x = 50.7, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9252, title = "Defending Fairbreeze Village", npc = 15942, npcName = "Ranger Sareyn", map = 1944, x = 46.9, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9255, title = "Research Notes", npc = 16210, npcName = "Magistrix Landra Dawnstrider", map = 1944, x = 44.0, y = 70.8, f = "e" },
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
					{ t = "collect", quest = 8491, itemName = "Springpaw Pelt", count = 6, oi = 1, map = 1944, x = 40.1, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8491, title = "Pelt Collection", npc = 15417, npcName = "Velan Brightoak", map = 1944, x = 44.7, y = 69.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 16444, npcName = "Halis Dawnstrider", itemName = "Bundle of Fireworks", count = 1, map = 1944, x = 44.1, y = 70.3, f = "e" },
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
					{ t = "goto", map = 1944, x = 44.9, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 45.2, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9066, title = "Swift Discipline", npc = 15970, npcName = "Instructor Antheol", map = 1944, x = 55.7, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 10, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 9529, title = "The Stone", npc = 16647, npcName = "Talionia", map = 1948, x = 74.4, y = 47.1, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 9529, title = "The Stone", map = 1943, x = 43.8, y = 15.6, f = "e" },
					{ t = "accept", quest = 9619, title = "The Rune of Summoning", map = 1943, x = 43.8, y = 15.6, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "kill", quest = 9619, target = "Summoned Voidwalker", count = 1, oi = 1, map = 1943, x = 27.0, y = 15.2, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 9619, title = "The Rune of Summoning", npc = 16647, npcName = "Talionia", map = 1948, x = 74.4, y = 47.1, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 9484, title = "Taming the Beast (1)", npc = 15399, npcName = "Lieutenant Dawnrunner", map = 1944, x = 60.3, y = 62.8, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", map = 1944, x = 61.2, y = 65.5, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 9484, title = "Taming the Beast (1)", npc = 15399, npcName = "Lieutenant Dawnrunner", map = 1944, x = 60.3, y = 62.8, f = "e" },
					{ t = "accept", quest = 9486, title = "Taming the Beast (2)", npc = 15399, npcName = "Lieutenant Dawnrunner", map = 1944, x = 60.3, y = 62.8, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", map = 1944, x = 64.7, y = 60.9, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 9486, title = "Taming the Beast (2)", npc = 15399, npcName = "Lieutenant Dawnrunner", map = 1944, x = 60.3, y = 62.8, f = "e" },
					{ t = "accept", quest = 9485, title = "Taming the Beast (3)", npc = 15399, npcName = "Lieutenant Dawnrunner", map = 1944, x = 60.3, y = 62.8, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", map = 1943, x = 51.0, y = 15.2, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 9485, title = "Taming the Beast (3)", npc = 15399, npcName = "Lieutenant Dawnrunner", map = 1944, x = 60.3, y = 62.8, f = "e" },
					{ t = "accept", quest = 9673, title = "Beast Training", npc = 15399, npcName = "Lieutenant Dawnrunner", map = 1944, x = 60.3, y = 62.8, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 9673, title = "Beast Training", npc = 16675, npcName = "Halthenis", map = 1948, x = 82.2, y = 28.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 16442, npcName = "Vinemaster Suntouched", itemName = "Suntouched Special Reserve", count = 1, map = 1948, x = 79.5, y = 58.5, f = "e" },
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
					{ t = "level", level = 11, f = "e" },
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
				note = "Hearth to Fairbreeze Village,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1944, x = 43.7, y = 71.2, f = "e" },
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
					{ t = "goto", map = 1948, x = 49.5, y = 14.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Undercity", map = 1458, x = 63.2, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "The Sepulcher", map = 1421, x = 45.6, y = 42.6, f = "e" },
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
					{ t = "level", level = 12, f = "e" },
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
					{ t = "collect", quest = 422, item = 3155, itemName = "Remedy of Arugal", count = 1, oi = 1, map = 1421, x = 52.0, y = 28.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 437, itemName = "Essence of Nightlash", count = 1, oi = 2, map = 1421, x = 45.5, y = 21.3, f = "e" },
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
					{ t = "turnin", quest = 422, title = "Arugal's Folly (1)", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.8, f = "e" },
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
				goals = {
					{ t = "goto", map = 1420, x = 60.8, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Orgrimmar", map = 1454, x = 45.1, y = 63.9, f = "e" },
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

