-- TuWoW_Leveling — Guides/Leveling_Alliance_24.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-dustwallow-marsh-40-40",
		pack = "guides",
		title = "Dustwallow Marsh",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-desolace-40-41",
		author = "TuWoW & Zygor",
		minLevel = 40,
		maxLevel = 40,
		zone = 1455,
		version = 1,
		steps = {
			{
				note = "Buy from the Auction House, if possible. Needed for quest soon.",
				goals = {
					{ t = "collect", quest = 1203, item = 3853, itemName = "Moonsteel Broadsword", map = 1455, x = 24.16, y = 74.67, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 1373, item = 6190, itemName = "Draenethyst Shard", map = 1455, x = 35.93, y = 60.13, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 669, title = "Sunken Treasure", note = "bank Sample Elven Gem##4502", map = 1455, x = 35.93, y = 60.13, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "accept", quest = 1661, title = "The Tome of Nobility", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.47, y = 47.47, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1661, title = "The Tome of Nobility", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.47, y = 47.47, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5492, npcName = "Katherine the Pure", map = 1453, x = 48.47, y = 49.06, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", text = "Train Horse Riding", map = 1429, x = 84.32, y = 64.87 },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "goto", text = "Train Ram Riding", map = 1426, x = 63.94, y = 50.1 },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "goto", text = "Train Mechanostrider Piloting", map = 1426, x = 49.15, y = 48.13 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1455, x = 44.56, y = 49.58 },
					{ t = "turnin", quest = 700, title = "A King's Tribute", npc = 2784, npcName = "King Magni Bronzebeard", map = 1455, x = 39.09, y = 56.2, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1050, title = "Mythology of the Titans", npc = 3979, npcName = "Librarian Mae Paledust", map = 1455, x = 74.97, y = 12.48, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "goto", text = "Train Tiger Riding", map = 1457, x = 38.69, y = 15.84 },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 4487, title = "Summon Felsteed", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
					{ t = "turnin", quest = 4488, title = "Summon Felsteed", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
					{ t = "accept", quest = 4490, title = "Summon Felsteed", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 4490, title = "Summon Felsteed", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 1286, title = "The Deserters", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.21, y = 48.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1260, title = "Morgan Stern", npc = 4794, npcName = "Morgan Stern", map = 1445, x = 66.33, y = 45.47, f = "e" },
					{ t = "accept", quest = 1204, title = "Mudrock Soup and Bugs", npc = 4794, npcName = "Morgan Stern", map = 1445, x = 66.33, y = 45.47, f = "e" },
				},
			},
			{
				note = "Turtles.",
				goals = {
					{ t = "collect", quest = 1204, item = 5883, itemName = "Forked Mudrock Tongue", count = 8, oi = 1, map = 1445, x = 64.6, y = 42.6, f = "e" },
				},
			},
			{
				note = "Murlocs.",
				goals = {
					{ t = "collect", quest = 1177, item = 5847, itemName = "Mirefin Head", count = 12, oi = 1, map = 1445, x = 58.6, y = 17.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1206, title = "Jarl Needs Eyes", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.44, y = 26.27, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing. Kill nearby raptors first.",
				goals = {
					{ t = "accept", quest = 1222, title = "Stinky's Escape", npc = 4880, npcName = "\"Stinky\" Ignatz", map = 1445, x = 46.89, y = 17.52, f = "e" },
				},
			},
			{
				note = "Follow and protect \"Stinky\" Ignatz.",
				goals = {
					{ t = "complete", quest = 1222, title = "Stinky's Escape", note = "Help Stinky Find Bogbean Leaves", map = 1445, x = 48.86, y = 24.66, f = "e" },
				},
			},
			{
				note = "Walks around. Multiple enemies attack. Focus on killing Private Hendel. Helpers run away once he surrenders.",
				goals = {
					{ t = "accept", quest = 1324, title = "The Missing Diplomat", npc = 4966, npcName = "Private Hendel", map = 1445, x = 45.22, y = 24.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1324, title = "The Missing Diplomat", note = "Subdue Private Hendel", map = 1445, x = 45.22, y = 24.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1324, title = "The Missing Diplomat", npc = 4967, npcName = "Archmage Tervosh", map = 1445, x = 45.19, y = 24.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1267, title = "The Missing Diplomat", npc = 4968, npcName = "Lady Jaina Proudmoore", map = 1445, x = 45.22, y = 24.24, f = "e" },
				},
			},
			{
				note = "Spiders. Inside and outside the mine.",
				goals = {
					{ t = "collect", quest = 1206, item = 5884, itemName = "Unpopped Darkmist Eye", count = 40, oi = 1, map = 1445, x = 33.22, y = 22.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the mine", map = 1445, x = 33.22, y = 22.75 },
					{ t = "turnin", quest = 1206, title = "Jarl Needs Eyes", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.44, y = 26.27, f = "e" },
					{ t = "accept", quest = 1203, title = "Jarl Needs a Blade", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.44, y = 26.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1203, title = "Jarl Needs a Blade", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.44, y = 26.27, f = "e" },
				},
			},
			{
				note = "Avoid Brackenwall Village.",
				goals = {
					{ t = "turnin", quest = 1177, title = "Hungry!", npc = 4503, npcName = "Mudcrush Durtfeet", map = 1445, x = 35.15, y = 38.26, f = "e" },
				},
			},
			{
				note = "Talk to him after he surrenders. Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1286, title = "The Deserters", npc = 5089, npcName = "Balos Jacken", map = 1445, x = 36.09, y = 54.3, f = "e" },
					{ t = "accept", quest = 1287, title = "The Deserters", npc = 5089, npcName = "Balos Jacken", map = 1445, x = 36.09, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1187, item = 5862, itemName = "Seaforium Booster", oi = 1, map = 1445, x = 54.07, y = 56.49, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1204, title = "Mudrock Soup and Bugs", npc = 4794, npcName = "Morgan Stern", map = 1445, x = 66.34, y = 45.47, f = "e" },
					{ t = "accept", quest = 1258, title = "... and Bugs", npc = 4794, npcName = "Morgan Stern", map = 1445, x = 66.34, y = 45.47, f = "e" },
					{ t = "turnin", quest = 1222, title = "Stinky's Escape", npc = 4794, npcName = "Morgan Stern", map = 1445, x = 66.34, y = 45.47, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1287, title = "The Deserters", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.21, y = 48.62, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-desolace-40-41",
		pack = "guides",
		title = "Desolace",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-badlands-41-42",
		author = "TuWoW & Zygor",
		minLevel = 40,
		maxLevel = 41,
		zone = 1443,
		version = 1,
		steps = {
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Nijel's Point", map = 1443, x = 66.27, y = 6.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 261, title = "Down the Scarlet Path", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1466, title = "Reagents for Reclaimers Inc.", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.63, f = "e" },
				},
			},
			{
				note = "Avoid Ghost Walker Post.",
				goals = {
					{ t = "accept", quest = 6134, title = "Ghost-o-plasm Round Up", npc = 6019, npcName = "Hornizz Brimbuzzle", map = 1443, x = 47.83, y = 61.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1373, title = "Ongeku", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.22, y = 79.25, f = "e" },
					{ t = "accept", quest = 1374, title = "Khan Jehn", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.22, y = 79.25, f = "e" },
				},
			},
			{
				note = "Felguards. Only location, wait for respawns.",
				goals = {
					{ t = "collect", quest = 1466, item = 6252, itemName = "Doomwarder Blood", count = 10, oi = 3, map = 1443, x = 50.4, y = 82.4, f = "e" },
				},
			},
			{
				label = "Collect_Felhound_Brains",
				along = true,
				note = "Felhounds.",
				goals = {
					{ t = "collect", quest = 1466, item = 6250, itemName = "Felhound Brain", count = 10, oi = 1, map = 1443, x = 53.4, y = 77.2, f = "e" },
				},
			},
			{
				label = "Collect_Nether_Wings",
				along = true,
				note = "Succubuses.",
				goals = {
					{ t = "collect", quest = 1466, item = 6251, itemName = "Nether Wing", count = 10, oi = 2, map = 1443, x = 54.2, y = 77.8, f = "e" },
				},
			},
			{
				note = "Next to huge bones. Kill nearby enemies to clear the area first. Ghost centaurs. Walking towards the spinning object. Become hostile when they reach it. Pull them away to fight them. Won't pull together if neutral. Will pull together if hostile. Can wait for them to despawn and use item again. Slower, but much safer.",
				goals = {
					{ t = "use", item = 15848, itemName = "Crate of Ghost Magnets" },
					{ t = "collect", quest = 6134, item = 15849, itemName = "Ghost-o-plasm", count = 8, oi = 1, map = 1443, x = 63.81, y = 91.27, f = "e" },
				},
			},
			{
				label = "Kill_Undead_Ravagers",
				along = true,
				note = "Brown skeletons.",
				goals = {
					{ t = "kill", quest = 261, npc = 11561, target = "Undead Ravager", count = 30, oi = 1, map = 1443, x = 64.6, y = 91.2, f = "e" },
				},
			},
			{
				note = "Helps reach level 41 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 40,88450", map = 1443, x = 64.6, y = 91.2 },
					{ t = "goto", text = "ding 40,85600", map = 1443, x = 64.6, y = 91.2 },
				},
			},
			{
				note = "Walks around. In and out of the tent.",
				goals = {
					{ t = "collect", quest = 1374, item = 6072, itemName = "Khan Jehn's Head", oi = 1, map = 1443, x = 66.39, y = 80.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6134, title = "Ghost-o-plasm Round Up", npc = 6019, npcName = "Hornizz Brimbuzzle", map = 1443, x = 47.83, y = 61.83, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1374, title = "Khan Jehn", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.22, y = 79.25, f = "e" },
				},
			},
			{
				note = "Careful, higher level enemies. Rexxar won't attack you on the road.",
				goals = {
					{ t = "goto", text = "Follow the road and run down the path", map = 1444, x = 47.56, y = 37.72 },
					{ t = "goto", text = "Ride the boat or swim across the water", map = 1444, x = 43.39, y = 42.75 },
					{ t = "getfp", location = "Feathermoon", map = 1444, x = 30.24, y = 43.25, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 1117, item = 5804, itemName = "Goblin Rumors", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				note = "Taming a temporary pet soon. Learning Claw (Rank 6).",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1117, title = "Rumors for Kravel", note = "Stable Your Pet", map = 1446, x = 52.25, y = 28.0, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on a Scorpid Hunter. Scorpions. Kill enemies nearby.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1117, title = "Rumors for Kravel", note = "Learn the Claw (Rank 6) Pet Ability", map = 1446, x = 50.0, y = 31.0, f = "e" },
				},
			},
			{
				note = "Abandon your temporary pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1117, title = "Rumors for Kravel", note = "Retrieve Your Pet", map = 1446, x = 52.25, y = 28.0, f = "e" },
				},
			},
			{
				note = "Use Beast Training ability.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1117, title = "Rumors for Kravel", note = "Teach Claw (Rank 6) to Your Pet" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1117, title = "Rumors for Kravel", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1118, title = "Back to Booty Bay", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1106, title = "Martek the Exiled", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.06, y = 77.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1187, title = "Razzeric's Tweaking", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.33, y = 76.1, f = "e" },
					{ t = "accept", quest = 1188, title = "Safety First", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.33, y = 76.1, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 261, title = "Down the Scarlet Path", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.91, f = "e" },
					{ t = "accept", quest = 1052, title = "Down the Scarlet Path", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1466, title = "Reagents for Reclaimers Inc.", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.63, f = "e" },
					{ t = "accept", quest = 1467, title = "Reagents for Reclaimers Inc.", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.63, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "goto", text = "Train Tiger Riding", map = 1457, x = 38.69, y = 15.84 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1052, title = "Down the Scarlet Path", npc = 3980, npcName = "Raleigh the Devout", map = 1424, x = 51.47, y = 58.35, f = "e" },
					{ t = "accept", quest = 1053, title = "In the Name of the Light", npc = 3980, npcName = "Raleigh the Devout", map = 1424, x = 51.47, y = 58.35, f = "e" },
				},
			},
			{
				note = "Library section. First boss.",
				goals = {
					{ t = "kill", quest = 1053, npc = 3974, target = "Houndmaster Loksey", oi = 4 },
				},
			},
			{
				note = "Library section. Run through the Gallery of Treasures. Watch for minimap subzone to change back to Scarlet Monastery. Small book below a window. Left side of the room.",
				goals = {
					{ t = "collect", quest = 1050, item = 5536, itemName = "Mythology of the Titans", oi = 1 },
				},
			},
			{
				note = "Armory section. Final boss.",
				goals = {
					{ t = "kill", quest = 1053, npc = 3975, target = "Herod", oi = 3 },
				},
			},
			{
				note = "Cathedral section. Final boss.",
				goals = {
					{ t = "kill", quest = 1053, npc = 3976, target = "Scarlet Commander Mograine", oi = 2 },
					{ t = "kill", quest = 1053, npc = 3977, target = "High Inquisitor Whitemane", oi = 1 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1053, title = "In the Name of the Light", npc = 3980, npcName = "Raleigh the Devout", map = 1424, x = 51.47, y = 58.35, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1050, title = "Mythology of the Titans", npc = 3979, npcName = "Librarian Mae Paledust", map = 1455, x = 74.97, y = 12.48, f = "e" },
				},
			},
		},
	})
end

