-- TuWoW_Leveling — Guides/Leveling_Alliance_37.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-western-and-eastern-plaguelands-57-58",
		pack = "guides",
		title = "Western & Eastern Plaguelands (Parte 1/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-western-and-eastern-plaguelands-57-58-part-2",
		author = "TuWoW & Zygor",
		minLevel = 57,
		maxLevel = 58,
		zone = 1455,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 7261, title = "The Sovereign Imperative", npc = 13843, npcName = "Lieutenant Rotimer", map = 1455, x = 32.21, y = 63.25, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 6028, item = 15788, itemName = "Everlook Report", map = 1455, x = 35.92, y = 60.14, f = "e" },
					{ t = "collect", quest = 6030, item = 15790, itemName = "Studies in Spirit Speaking", map = 1455, x = 35.92, y = 60.14, f = "e" },
					{ t = "collect", quest = 5245, item = 12891, itemName = "Jaron's Pick", map = 1455, x = 35.92, y = 60.14, f = "e" },
					{ t = "collect", quest = 5245, item = 12896, itemName = "First Relic Fragment", map = 1455, x = 35.92, y = 60.14, f = "e" },
					{ t = "collect", quest = 5245, item = 12897, itemName = "Second Relic Fragment", map = 1455, x = 35.92, y = 60.14, f = "e" },
					{ t = "collect", quest = 5245, item = 12898, itemName = "Third Relic Fragment", map = 1455, x = 35.92, y = 60.14, f = "e" },
					{ t = "collect", quest = 5245, item = 12899, itemName = "Fourth Relic Fragment", map = 1455, x = 35.92, y = 60.14, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 4808, title = "Felnok Steelspring", note = "bank Tinkee's Letter##12438", map = 1455, x = 35.92, y = 60.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1455, x = 44.51, y = 49.57 },
					{ t = "turnin", quest = 3701, title = "The Smoldering Ruins of Thaurissan", npc = 8879, npcName = "Royal Historian Archesonus", map = 1455, x = 38.37, y = 55.31, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Southshore", map = 1424, x = 51.17, y = 58.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7261, title = "The Sovereign Imperative", npc = 13841, npcName = "Lieutenant Haggerdin", map = 1416, x = 39.46, y = 81.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5219, title = "Target: Dalson's Tears", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.97, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5097, title = "All Along the Watchtowers", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6028, title = "The Everlook Report", npc = 10840, npcName = "Argent Officer Pureheart", map = 1422, x = 42.97, y = 83.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6184, title = "Flint Shadowmore", npc = 12425, npcName = "Flint Shadowmore", map = 1422, x = 43.61, y = 84.51, f = "e" },
				},
			},
			{
				note = "Walks around. Both floors inside the building.",
				goals = {
					{ t = "accept", quest = 5142, title = "Little Pamela", npc = 10927, npcName = "Marlene Redpath", map = 1422, x = 49.13, y = 78.52, f = "e" },
				},
			},
			{
				note = "Tower entrance. Avoid the elite enemy inside.",
				goals = {
					{ t = "use", item = 12815, itemName = "Beacon Torch" },
					{ t = "complete", quest = 5097, title = "All Along the Watchtowers", note = "Mark Tower Four", map = 1422, x = 46.7, y = 71.1, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 4984, title = "The Wildlife Suffers Too", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.72, y = 64.67, f = "e" },
				},
			},
			{
				note = "Tower entrance. Avoid the elite enemy inside.",
				goals = {
					{ t = "use", item = 12815, itemName = "Beacon Torch" },
					{ t = "complete", quest = 5097, title = "All Along the Watchtowers", note = "Mark Tower Three", map = 1422, x = 44.22, y = 63.37, f = "e" },
				},
			},
			{
				label = "Kill_Diseased_Wolves",
				along = true,
				note = "Shared spawns with spiders.",
				goals = {
					{ t = "kill", quest = 4984, npc = 1817, target = "Diseased Wolf", count = 8, oi = 1, map = 1422, x = 44.2, y = 59.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 5058, title = "Mrs. Dalson's Diary", map = 1422, x = 47.79, y = 50.67, f = "e" },
				},
			},
			{
				note = "White skeleton. Walks around. Multiple spawn locations.",
				goals = {
					{ t = "collect", quest = 5060, item = 12738, itemName = "Dalson Outhouse Key", map = 1422, x = 48.34, y = 49.27, f = "e" },
				},
			},
			{
				note = "Complete the Locked Away quest.",
				goals = {
					{ t = "collect", quest = 5060, item = 12739, itemName = "Dalson Cabinet Key", map = 1422, x = 48.11, y = 49.71, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 5060, title = "Locked Away", map = 1422, x = 47.37, y = 49.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5219, item = 13195, itemName = "Dalson's Tears Cauldron Key", oi = 1, map = 1422, x = 46.18, y = 52.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5219, title = "Target: Dalson's Tears", map = 1422, x = 46.18, y = 52.02, f = "e" },
					{ t = "accept", quest = 5220, title = "Return to Chillwind Camp", map = 1422, x = 46.18, y = 52.02, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 5050, title = "Good Luck Charm", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.05, f = "e" },
					{ t = "accept", quest = 5051, title = "Two Halves Become One", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.05, f = "e" },
				},
			},
			{
				note = "Ghoul with a pitchfork. Walks around. Multiple spawn locations.",
				goals = {
					{ t = "collect", item = 12722, itemName = "Good Luck Other-Half-Charm", map = 1422, x = 37.5, y = 56.6, f = "e" },
					{ t = "use", item = 12722, itemName = "Good Luck Other-Half-Charm" },
					{ t = "collect", quest = 5051, item = 12723, itemName = "Good Luck Charm", oi = 1, map = 1422, x = 37.8, y = 57.6, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 5051, title = "Two Halves Become One", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.05, f = "e" },
				},
			},
			{
				note = "Tower entrance. Avoid the elite enemy inside.",
				goals = {
					{ t = "use", item = 12815, itemName = "Beacon Torch" },
					{ t = "complete", quest = 5097, title = "All Along the Watchtowers", note = "Mark Tower Two", map = 1422, x = 42.44, y = 66.27, f = "e" },
				},
			},
			{
				note = "Tower entrance. Avoid the elite enemy inside.",
				goals = {
					{ t = "use", item = 12815, itemName = "Beacon Torch" },
					{ t = "complete", quest = 5097, title = "All Along the Watchtowers", note = "Mark Tower One", map = 1422, x = 40.13, y = 71.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5097, title = "All Along the Watchtowers", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
					{ t = "accept", quest = 5533, title = "Scholomance", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5533, title = "Scholomance", npc = 11056, npcName = "Alchemist Arbington", map = 1422, x = 42.66, y = 83.77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5220, title = "Return to Chillwind Camp", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.97, y = 84.5, f = "e" },
					{ t = "accept", quest = 5222, title = "Target: Writhing Haunt", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.97, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5903, title = "A Plague Upon Thee", npc = 11616, npcName = "Nathaniel Dumah", map = 1422, x = 43.42, y = 84.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6185, title = "The Eastern Plagues", npc = 12425, npcName = "Flint Shadowmore", map = 1422, x = 43.61, y = 84.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5222, item = 13197, itemName = "Writhing Haunt Cauldron Key", oi = 1, map = 1422, x = 53.02, y = 66.06, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5222, title = "Target: Writhing Haunt", map = 1422, x = 53.02, y = 65.72, f = "e" },
					{ t = "accept", quest = 5223, title = "Return to Chillwind Camp", map = 1422, x = 53.02, y = 65.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4984, title = "The Wildlife Suffers Too", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.72, y = 64.67, f = "e" },
					{ t = "accept", quest = 4985, title = "The Wildlife Suffers Too", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.72, y = 64.67, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 5542, title = "Demon Dogs", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "accept", quest = 5543, title = "Blood Tinged Skies", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "accept", quest = 5544, title = "Carrion Grubbage", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				note = "Human skeleton.",
				goals = {
					{ t = "collect", quest = 6185, item = 16002, itemName = "SI:7 Insignia (Turyen)", oi = 3, map = 1423, x = 24.28, y = 63.65, f = "e" },
				},
			},
			{
				note = "Avoid the elite enemies nearby.",
				goals = {
					{ t = "complete", quest = 6185, title = "The Eastern Plagues", note = "Uncover the Blightcaller", map = 1423, x = 22.79, y = 63.73, f = "e" },
				},
			},
			{
				note = "Human skeleton. Avoid the elite enemies nearby.",
				goals = {
					{ t = "collect", quest = 6185, item = 16001, itemName = "SI:7 Insignia (Fredo)", oi = 2, map = 1423, x = 22.79, y = 63.73, f = "e" },
				},
			},
			{
				note = "Human skeleton.",
				goals = {
					{ t = "collect", quest = 6185, item = 16003, itemName = "SI:7 Insignia (Rutger)", oi = 1, map = 1423, x = 24.28, y = 68.12, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the crumbled house.",
				goals = {
					{ t = "turnin", quest = 5142, title = "Little Pamela", npc = 10926, npcName = "Pamela Redpath", map = 1423, x = 31.15, y = 77.98, f = "e" },
					{ t = "accept", quest = 5149, title = "Pamela's Doll", npc = 10926, npcName = "Pamela Redpath", map = 1423, x = 31.15, y = 77.98, f = "e" },
				},
			},
			{
				note = "Inside the buildings. You will be attacked.",
				goals = {
					{ t = "collect", quest = 5149, item = 12886, itemName = "Pamela's Doll's Head", map = 1423, x = 32.63, y = 79.33, f = "e" },
				},
			},
			{
				label = "Collect_Pamelas_Dolls_Left_Side",
				along = true,
				note = "Inside the buildings. notinsticky You will be attacked. notinsticky",
				goals = {
					{ t = "collect", quest = 5149, item = 12887, itemName = "Pamela's Doll's Left Side", map = 1423, x = 32.63, y = 79.33, f = "e" },
				},
			},
			{
				label = "Collect_Pamelas_Dolls_Right_Side",
				along = true,
				note = "Inside the buildings. notinsticky You will be attacked. notinsticky",
				goals = {
					{ t = "collect", quest = 5149, item = 12888, itemName = "Pamela's Doll's Right Side", map = 1423, x = 32.63, y = 79.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 12886, itemName = "Pamela's Doll's Head" },
					{ t = "collect", quest = 5149, item = 12885, itemName = "Pamela's Doll", oi = 1 },
				},
			},
			{
				note = "Walks around. Inside the crumbled house.",
				goals = {
					{ t = "turnin", quest = 5149, title = "Pamela's Doll", npc = 10926, npcName = "Pamela Redpath", map = 1423, x = 31.15, y = 77.98, f = "e" },
					{ t = "accept", quest = 5152, title = "Auntie Marlene", npc = 10926, npcName = "Pamela Redpath", map = 1423, x = 31.15, y = 77.98, f = "e" },
					{ t = "accept", quest = 5241, title = "Uncle Carlin", npc = 10926, npcName = "Pamela Redpath", map = 1423, x = 31.15, y = 77.98, f = "e" },
				},
			},
			{
				label = "Collect_Slabs_Of_Carrion_Worm_Meat",
				along = true,
				note = "Large yellow worms.",
				goals = {
					{ t = "collect", quest = 5544, item = 13853, itemName = "Slab of Carrion Worm Meat", count = 15, oi = 1, map = 1423, x = 34.52, y = 71.5, f = "e" },
				},
			},
			{
				label = "Kill_Plaguehound_Runts_And_Plaguebats",
				along = true,
				goals = {
					{ t = "kill", quest = 5542, npc = 8596, target = "Plaguehound Runt", count = 20, oi = 1, map = 1423, x = 34.52, y = 71.5, f = "e" },
					{ t = "kill", quest = 5543, npc = 8600, target = "Plaguebat", count = 30, oi = 1, map = 1423, x = 34.52, y = 71.5, f = "e" },
				},
			},
			{
				note = "Helps reach level 58 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 57,189550", map = 1423, x = 34.52, y = 71.5 },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5542, npc = 8597, target = "Plaguehound", count = 5, oi = 2, map = 1423, x = 59.54, y = 64.29, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 6021, title = "Zaeldarr the Outcast", npc = 11038, npcName = "Caretaker Alen", map = 1423, x = 69.92, y = 53.64, f = "e" },
					{ t = "accept", quest = 5281, title = "The Restless Souls", npc = 11038, npcName = "Caretaker Alen", map = 1423, x = 69.92, y = 53.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6030, title = "Duke Nicholas Zverenhoff", npc = 11039, npcName = "Duke Nicholas Zverenhoff", map = 1423, x = 71.62, y = 50.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5241, title = "Uncle Carlin", npc = 11063, npcName = "Carlin Redpath", map = 1423, x = 71.7, y = 50.04, f = "e" },
					{ t = "accept", quest = 5211, title = "Defenders of Darrowshire", npc = 11063, npcName = "Carlin Redpath", map = 1423, x = 71.7, y = 50.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Light's Hope Chapel", map = 1423, x = 71.8, y = 49.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5245, title = "Troubled Spirits of Kel'Theril", npc = 10304, npcName = "Aurora Skycaller", map = 1423, x = 46.5, y = 16.03, f = "e" },
				},
			},
			{
				note = "Large stones leaking green ooze. Work your way west.",
				goals = {
					{ t = "collect", quest = 5903, item = 15043, itemName = "Plagueland Termites", count = 100, oi = 1, map = 1423, x = 39.65, y = 26.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5281, title = "The Restless Souls", npc = 11140, npcName = "Egan", map = 1423, x = 11.36, y = 26.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 6164, title = "Augustus' Receipt Book", npc = 12384, npcName = "Augustus the Touched", map = 1423, x = 11.36, y = 26.37, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "collect", quest = 6164, item = 15884, itemName = "Augustus' Receipt Book", oi = 1, map = 1423, x = 14.04, y = 24.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6164, title = "Augustus' Receipt Book", npc = 12384, npcName = "Augustus the Touched", map = 1423, x = 11.36, y = 26.37, f = "e" },
				},
			},
			{
				label = "Kill_Frenzied_Plaguehounds",
				along = true,
				goals = {
					{ t = "kill", quest = 5542, npc = 8598, target = "Frenzied Plaguehound", count = 5, oi = 3, map = 1423, x = 38.84, y = 30.98, f = "e" },
				},
			},
			{
				label = "Free_Darrowshire_Spirits",
				along = true,
				note = "Ghouls. Shared spawns with other undead. Appear at their corpses.",
				goals = {
					{ t = "complete", quest = 5211, title = "Defenders of Darrowshire", note = "Free #15# Darrowshire Spirits", map = 1423, x = 58.64, y = 32.96, f = "e" },
				},
			},
			{
				note = "Downstairs inside the crypt.",
				goals = {
					{ t = "goto", text = "Enter the crypt", map = 1423, x = 23.42, y = 73.19 },
					{ t = "collect", quest = 6021, item = 15785, itemName = "Zaeldarr's Head", oi = 1, map = 1423, x = 23.06, y = 72.65, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 5542, title = "Demon Dogs", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "turnin", quest = 5543, title = "Blood Tinged Skies", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "turnin", quest = 5544, title = "Carrion Grubbage", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "accept", quest = 5742, title = "Redemption", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				note = "Walks around. Must be sitting. Type /sit in chat. macro /sit",
				goals = {
					{ t = "complete", quest = 5742, title = "Redemption", note = "Listen to Tirion's Tale", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 5742, title = "Redemption", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5223, title = "Return to Chillwind Camp", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.97, y = 84.5, f = "e" },
					{ t = "accept", quest = 5225, title = "Target: Gahrron's Withering", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.97, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5537, title = "Skeletal Fragments", npc = 11056, npcName = "Alchemist Arbington", map = 1422, x = 42.66, y = 83.77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6185, title = "The Eastern Plagues", npc = 12425, npcName = "Flint Shadowmore", map = 1422, x = 43.61, y = 84.51, f = "e" },
					{ t = "accept", quest = 6186, title = "The Blightcaller Cometh", npc = 12425, npcName = "Flint Shadowmore", map = 1422, x = 43.61, y = 84.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5903, title = "A Plague Upon Thee", npc = 11616, npcName = "Nathaniel Dumah", map = 1422, x = 43.42, y = 84.84, f = "e" },
					{ t = "accept", quest = 5904, title = "A Plague Upon Thee", npc = 11616, npcName = "Nathaniel Dumah", map = 1422, x = 43.42, y = 84.84, f = "e" },
				},
			},
			{
				note = "Walks around. Both floors inside the building.",
				goals = {
					{ t = "turnin", quest = 5152, title = "Auntie Marlene", npc = 10927, npcName = "Marlene Redpath", map = 1422, x = 49.13, y = 78.52, f = "e" },
					{ t = "accept", quest = 5153, title = "A Strange Historian", npc = 10927, npcName = "Marlene Redpath", map = 1422, x = 49.13, y = 78.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5153, item = 12894, itemName = "Joseph's Wedding Ring", oi = 1, map = 1422, x = 49.68, y = 76.77, f = "e" },
				},
			},
			{
				label = "Collect_Skeletal_Fragments",
				along = true,
				goals = {
					{ t = "collect", quest = 5537, item = 14619, itemName = "Skeletal Fragments", count = 15, oi = 1, map = 1422, x = 50.8, y = 79.4, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 5153, title = "A Strange Historian", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
					{ t = "accept", quest = 5154, title = "The Annals of Darrowshire", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
					{ t = "accept", quest = 4971, title = "A Matter of Time", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
				},
			},
			{
				note = "Enemies near the building entrance. Run on the ledge of the building. Hug the building outside wall to reach the entrance.",
				goals = {
					{ t = "complete", quest = 5154, title = "The Annals of Darrowshire", note = "Click Here to Continue" },
				},
			},
			{
				note = "Find the real book by zooming in and looking. Fake books spawn enemies. Real book has two appearances: Sharper pages and even shading on both halves. Or Uneven shading with large brown spot on the pages. If no real book, click fakes to get it to spawn. Inside the building.",
				goals = {
					{ t = "collect", quest = 5154, item = 12900, itemName = "Annals of Darrowshire", oi = 1, map = 1422, x = 43.52, y = 69.55, f = "e" },
				},
			},
			{
				note = "Near large structures with blue lights. Another can spawn when they die.",
				goals = {
					{ t = "use", item = 12627, itemName = "Temporal Displacer" },
					{ t = "kill", quest = 4971, npc = 10717, target = "Temporal Parasite", count = 15, oi = 1, map = 1422, x = 45.0, y = 63.0, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 5154, title = "The Annals of Darrowshire", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
					{ t = "accept", quest = 5210, title = "Brother Carlin", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
					{ t = "turnin", quest = 4971, title = "A Matter of Time", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
					{ t = "accept", quest = 4972, title = "Counting Out Time", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
				},
			},
			{
				label = "Collect_Andorhal_Watches",
				note = "Small grey metal chests. Inside crumbled buildings.",
				goals = {
					{ t = "collect", quest = 4972, item = 12638, itemName = "Andorhal Watch", count = 5, oi = 1, map = 1422, x = 42.3, y = 68.8, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 4972, title = "Counting Out Time", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5537, title = "Skeletal Fragments", npc = 11056, npcName = "Alchemist Arbington", map = 1422, x = 42.66, y = 83.77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5210, title = "Brother Carlin", npc = 11063, npcName = "Carlin Redpath", map = 1423, x = 71.7, y = 50.03, f = "e" },
					{ t = "accept", quest = 5181, title = "Villains of Darrowshire", npc = 11063, npcName = "Carlin Redpath", map = 1423, x = 71.7, y = 50.03, f = "e" },
					{ t = "turnin", quest = 5211, title = "Defenders of Darrowshire", npc = 11063, npcName = "Carlin Redpath", map = 1423, x = 71.7, y = 50.03, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Light's Hope Chapel", map = 1423, x = 71.8, y = 48.52, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 6021, title = "Zaeldarr the Outcast", npc = 11038, npcName = "Caretaker Alen", map = 1423, x = 69.92, y = 53.64, f = "e" },
				},
			},
			{
				note = "Underwater.",
				goals = {
					{ t = "collect", quest = 5181, item = 12956, itemName = "Skull of Horgus", oi = 1, map = 1423, x = 44.34, y = 41.18, f = "e" },
				},
			},
		},
	})
end

