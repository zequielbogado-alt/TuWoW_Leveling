-- TuWoW_Leveling — Guides/Leveling_Alliance_19.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-hillsbrad-foothills-and-arathi-highlands-32-33",
		pack = "guides",
		title = "Hillsbrad Foothills & Arathi Highlands",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-dustwallow-marsh-and-thousand-needles-33-34",
		author = "TuWoW & Zygor",
		minLevel = 32,
		maxLevel = 33,
		zone = 1424,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 565, title = "Bartolo's Yeti Fur Cloak", npc = 2438, npcName = "Bartolo Ginsetti", map = 1424, x = 49.43, y = 55.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 564, title = "Costly Menace", npc = 2382, npcName = "Darren Malvew", map = 1424, x = 52.42, y = 55.96, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 538, title = "Southshore", npc = 2277, npcName = "Loremaster Dibbs", map = 1424, x = 50.57, y = 57.09, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Southshore", map = 1424, x = 51.17, y = 58.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 536, title = "Down the Coast", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.46, y = 58.38, f = "e" },
				},
			},
			{
				note = "More in the water.",
				goals = {
					{ t = "kill", quest = 536, npc = 2377, target = "Torn Fin Tidehunter", count = 10, oi = 1, map = 1424, x = 47.6, y = 64.6, f = "e" },
					{ t = "kill", quest = 536, npc = 2376, target = "Torn Fin Oracle", count = 10, oi = 2, map = 1424, x = 47.6, y = 64.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 536, title = "Down the Coast", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.46, y = 58.38, f = "e" },
					{ t = "accept", quest = 559, title = "Farren's Proof", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.46, y = 58.38, f = "e" },
				},
			},
			{
				note = "More in the water.",
				goals = {
					{ t = "collect", quest = 559, item = 3716, itemName = "Murloc Head", count = 10, oi = 1, map = 1424, x = 47.6, y = 64.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 559, title = "Farren's Proof", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.46, y = 58.38, f = "e" },
					{ t = "accept", quest = 560, title = "Farren's Proof", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.46, y = 58.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 560, title = "Farren's Proof", npc = 2263, npcName = "Marshal Redpath", map = 1424, x = 49.48, y = 58.73, f = "e" },
					{ t = "accept", quest = 561, title = "Farren's Proof", npc = 2263, npcName = "Marshal Redpath", map = 1424, x = 49.48, y = 58.73, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 561, title = "Farren's Proof", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.46, y = 58.38, f = "e" },
					{ t = "accept", quest = 562, title = "Stormwind Ho!", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.46, y = 58.38, f = "e" },
				},
			},
			{
				note = "More in the water.",
				goals = {
					{ t = "kill", quest = 562, npc = 2369, target = "Daggerspine Shorehunter", count = 10, oi = 1, map = 1424, x = 55.0, y = 64.4, f = "e" },
					{ t = "kill", quest = 562, npc = 2371, target = "Daggerspine Siren", count = 10, oi = 2, map = 1424, x = 55.0, y = 64.4, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 562, title = "Stormwind Ho!", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.46, y = 58.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 659, title = "Hints of a New Plague?", npc = 2711, npcName = "Phin Odelic", map = 1424, x = 50.34, y = 59.05, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 505, title = "Syndicate Assassins", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.14, y = 59.11, f = "e" },
				},
			},
			{
				note = "Upright grey stones near walls. Inside the cave.",
				goals = {
					{ t = "collect", quest = 689, item = 4521, itemName = "Alterac Granite", count = 5, oi = 1, map = 1424, x = 46.18, y = 31.83, f = "e" },
				},
			},
			{
				label = "Collect_Yeti_Fur",
				along = true,
				note = "Inside and outside the cave. notinsticky",
				goals = {
					{ t = "collect", quest = 565, item = 3720, itemName = "Yeti Fur", count = 10, oi = 4, map = 1424, x = 46.18, y = 31.83, f = "e" },
				},
			},
			{
				note = "Inside and outside the cave.",
				goals = {
					{ t = "goto", text = "ding 33", map = 1424, x = 46.18, y = 31.83 },
				},
			},
			{
				note = "Multiple locations.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1424, x = 46.18, y = 31.83 },
					{ t = "accept", quest = 510, title = "Foreboding Plans", map = 1416, x = 47.91, y = 82.13, f = "e" },
					{ t = "accept", quest = 511, title = "Encrypted Letter", map = 1416, x = 47.91, y = 82.13, f = "e" },
				},
			},
			{
				label = "Kill_Syndicate_Thieves_And_Footpads",
				along = true,
				goals = {
					{ t = "kill", quest = 505, npc = 2241, target = "Syndicate Thief", count = 8, oi = 2, map = 1416, x = 57.8, y = 66.4, f = "e" },
					{ t = "kill", quest = 505, npc = 2240, target = "Syndicate Footpad", count = 12, oi = 1, map = 1416, x = 57.8, y = 66.4, f = "e" },
				},
			},
			{
				label = "Kill_Mountain_Lion_Enemies",
				along = true,
				goals = {
					{ t = "kill", quest = 564, npc = 2406, target = "Mountain Lion", count = 8, oi = 1, map = 1416, x = 44.6, y = 79.0, f = "e" },
					{ t = "kill", quest = 564, npc = 2407, target = "Hulking Mountain Lion", count = 10, oi = 2, map = 1416, x = 44.6, y = 79.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 563, title = "Reassignment", npc = 2228, npcName = "Lieutenant Farren Orinelle", map = 1424, x = 51.46, y = 58.38, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 510, title = "Foreboding Plans", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.14, y = 59.11, f = "e" },
					{ t = "turnin", quest = 505, title = "Syndicate Assassins", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.14, y = 59.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 511, title = "Encrypted Letter", npc = 2277, npcName = "Loremaster Dibbs", map = 1424, x = 50.57, y = 57.09, f = "e" },
					{ t = "accept", quest = 514, title = "Letter to Stormpike", npc = 2277, npcName = "Loremaster Dibbs", map = 1424, x = 50.57, y = 57.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 564, title = "Costly Menace", npc = 2382, npcName = "Darren Malvew", map = 1424, x = 52.42, y = 55.96, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 2321, itemName = "Fine Thread", map = 1424, x = 48.94, y = 55.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 565, title = "Bartolo's Yeti Fur Cloak", npc = 2438, npcName = "Bartolo Ginsetti", map = 1424, x = 49.43, y = 55.53, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 681, title = "Northfold Manor", npc = 2700, npcName = "Captain Nials", map = 1417, x = 45.83, y = 47.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 659, title = "Hints of a New Plague?", npc = 2712, npcName = "Quae", map = 1417, x = 60.19, y = 53.85, f = "e" },
					{ t = "accept", quest = 658, title = "Hints of a New Plague?", npc = 2712, npcName = "Quae", map = 1417, x = 60.19, y = 53.85, f = "e" },
				},
			},
			{
				note = "Careful, stealthed enemies. More stealthed along the ridges. Also inside buildings.",
				goals = {
					{ t = "kill", quest = 681, npc = 2589, target = "Syndicate Mercenary", count = 6, oi = 2, map = 1417, x = 33.4, y = 30.0, f = "e" },
					{ t = "kill", quest = 681, npc = 2586, target = "Syndicate Highwayman", count = 10, oi = 1, map = 1417, x = 33.4, y = 30.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run through the break in the wall", map = 1417, x = 24.93, y = 20.84 },
				},
			},
			{
				note = "Top of the path. Saves time later.",
				goals = {
					{ t = "getfp", location = "Aerie Peak", map = 1425, x = 11.07, y = 46.15, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 681, title = "Northfold Manor", npc = 2700, npcName = "Captain Nials", map = 1417, x = 45.83, y = 47.55, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 514, title = "Letter to Stormpike", npc = 1356, npcName = "Prospector Stormpike", map = 1455, x = 74.64, y = 11.73, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 689, title = "A King's Tribute", npc = 2790, npcName = "Grand Mason Marblesten", map = 1455, x = 39.04, y = 88.05, f = "e" },
				},
			},
			{
				note = "Inside the building. Walks around.",
				goals = {
					{ t = "accept", quest = 700, title = "A King's Tribute", npc = 2790, npcName = "Grand Mason Marblesten", map = 1455, x = 39.04, y = 88.05, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 563, title = "Reassignment", note = "bank Farren's Report##3721", map = 1455, x = 35.93, y = 60.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1455, x = 44.56, y = 49.58 },
					{ t = "turnin", quest = 700, title = "A King's Tribute", npc = 2784, npcName = "King Magni Bronzebeard", map = 1455, x = 39.09, y = 56.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-dustwallow-marsh-and-thousand-needles-33-34",
		pack = "guides",
		title = "Dustwallow Marsh & Thousand Needles",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-stranglethorn-vale-34-35",
		author = "TuWoW & Zygor",
		minLevel = 33,
		maxLevel = 34,
		zone = 1445,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "getfp", location = "Theramore", map = 1445, x = 67.48, y = 51.3, f = "e" },
				},
			},
			{
				note = "Inside the building. Don't vendor them.",
				goals = {
					{ t = "buy", item = 3713, itemName = "Soothing Spices", count = 3, map = 1445, x = 66.44, y = 51.46, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1135, title = "Highperch Venom", npc = 4456, npcName = "Fiora Longears", map = 1445, x = 66.46, y = 45.15, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Theramore Isle", map = 1445, x = 66.59, y = 45.22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1282, title = "They Call Him Smiling Jim", npc = 4921, npcName = "Guard Byron", map = 1445, x = 66.16, y = 46.07, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1302, title = "James Hyal", npc = 5083, npcName = "Clerk Lendry", map = 1445, x = 67.88, y = 48.24, f = "e" },
				},
			},
			{
				note = "Walks around. Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1264, title = "The Missing Diplomat", npc = 4964, npcName = "Commander Samaul", map = 1445, x = 68.02, y = 48.71, f = "e" },
					{ t = "accept", quest = 1265, title = "The Missing Diplomat", npc = 4964, npcName = "Commander Samaul", map = 1445, x = 68.02, y = 48.71, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1282, title = "They Call Him Smiling Jim", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.22, y = 48.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "complete", quest = 1265, title = "The Missing Diplomat", note = "Explore Sentry Point", map = 1445, x = 59.66, y = 41.25, f = "e" },
				},
			},
			{
				note = "Inside the building. Quest bugged, sometimes missing. Skip if missing.",
				goals = {
					{ t = "turnin", quest = 1265, title = "The Missing Diplomat", npc = 4967, npcName = "Archmage Tervosh", map = 1445, x = 59.66, y = 41.25, f = "e" },
					{ t = "accept", quest = 1266, title = "The Missing Diplomat", npc = 4967, npcName = "Archmage Tervosh", map = 1445, x = 59.66, y = 41.25, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "turnin", quest = 1265, title = "The Missing Diplomat", npc = 4967, npcName = "Archmage Tervosh", map = 1445, x = 66.42, y = 49.26, f = "e" },
					{ t = "accept", quest = 1266, title = "The Missing Diplomat", npc = 4967, npcName = "Archmage Tervosh", map = 1445, x = 66.42, y = 49.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1218, title = "Soothing Spices", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.44, y = 26.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1218, title = "Soothing Spices", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.44, y = 26.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1219, title = "The Orc Report", map = 1445, x = 55.44, y = 25.93, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 1266, title = "The Missing Diplomat", npc = 4966, npcName = "Private Hendel", map = 1445, x = 45.22, y = 24.64, f = "e" },
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
				note = "Avoid Brackenwall Village. Careful, higher level enemies. Follow the road.",
				goals = {
					{ t = "accept", quest = 1177, title = "Hungry!", npc = 4503, npcName = "Mudcrush Durtfeet", map = 1445, x = 35.15, y = 38.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1284, title = "Suspicious Hoofprints", map = 1445, x = 29.7, y = 47.63, f = "e" },
				},
			},
			{
				note = "It looks like a tiny metal object on the floor.",
				goals = {
					{ t = "accept", quest = 1252, title = "Lieutenant Paval Reethe", map = 1445, x = 29.83, y = 48.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1253, title = "The Black Shield", map = 1445, x = 29.63, y = 48.59, f = "e" },
				},
			},
			{
				note = "Small brown book. In dead dwarf's hand.",
				goals = {
					{ t = "goto", text = "Ride an elevator down", map = 1441, x = 32.23, y = 22.32 },
					{ t = "collect", quest = 1100, item = 5791, itemName = "Henrig Lonebrow's Journal", map = 1441, x = 30.73, y = 24.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 5791, itemName = "Henrig Lonebrow's Journal" },
					{ t = "accept", quest = 1100, title = "Lonebrow's Journal" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Thalanaar", map = 1444, x = 89.5, y = 45.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1100, title = "Lonebrow's Journal", npc = 4048, npcName = "Falfindel Waywarder", map = 1444, x = 89.64, y = 46.56, f = "e" },
					{ t = "turnin", quest = 1059, title = "Reclaiming the Charred Vale", npc = 4048, npcName = "Falfindel Waywarder", map = 1444, x = 89.64, y = 46.56, f = "e" },
				},
			},
			{
				note = "Wyverns.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1441, x = 14.75, y = 32.83 },
					{ t = "collect", quest = 1135, item = 5809, itemName = "Highperch Venom Sac", count = 10, oi = 1, map = 1441, x = 12.2, y = 36.2, f = "e" },
				},
			},
			{
				note = "Avoid Freewind Post.",
				goals = {
					{ t = "accept", quest = 1110, title = "Rocket Car Parts", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1104, title = "Salt Flat Venom", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.06, y = 77.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1179, title = "The Brassbolts Brothers", npc = 4453, npcName = "Wizzle Brassbolts", map = 1441, x = 78.14, y = 77.12, f = "e" },
					{ t = "accept", quest = 1105, title = "Hardened Shells", npc = 4453, npcName = "Wizzle Brassbolts", map = 1441, x = 78.14, y = 77.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1176, title = "Load Lightening", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.18, y = 75.89, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1175, title = "A Bump in the Road", npc = 4629, npcName = "Trackmaster Zherin", map = 1441, x = 81.64, y = 77.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1175, npc = 4150, target = "Saltstone Gazer", count = 6, oi = 3, map = 1441, x = 77.4, y = 88.0, f = "e" },
				},
			},
			{
				note = "Vultures. Mostly here, otherwise uncommon. Revisit this location while working on other quests.",
				goals = {
					{ t = "collect", quest = 1176, item = 5848, itemName = "Hollow Vulture Bone", count = 10, oi = 1, map = 1441, x = 88.0, y = 66.0, f = "e" },
				},
			},
			{
				label = "Collect_Hardened_Tortoise_Shells",
				along = true,
				note = "Turtles.",
				goals = {
					{ t = "collect", quest = 1105, item = 5795, itemName = "Hardened Tortoise Shell", count = 9, oi = 1, map = 1441, x = 82.8, y = 55.2, f = "e" },
				},
			},
			{
				label = "Collect_Salty_Scorpid_Venom",
				along = true,
				note = "Scorpions.",
				goals = {
					{ t = "collect", quest = 1104, item = 5794, itemName = "Salty Scorpid Venom", count = 6, oi = 1, map = 1441, x = 82.4, y = 60.0, f = "e" },
				},
			},
			{
				label = "Kill_Saltstone_Basilisks",
				along = true,
				goals = {
					{ t = "kill", quest = 1175, npc = 4147, target = "Saltstone Basilisk", count = 10, oi = 1, map = 1441, x = 78.4, y = 59.0, f = "e" },
				},
			},
			{
				label = "Kill_Saltstone_Crystalhides",
				along = true,
				goals = {
					{ t = "kill", quest = 1175, npc = 4151, target = "Saltstone Crystalhide", count = 10, oi = 2, map = 1441, x = 78.8, y = 86.8, f = "e" },
				},
			},
			{
				label = "Collect_Rocket_Car_Parts",
				along = true,
				note = "Various machine parts. Throughout the Shimmering Flats.",
				goals = {
					{ t = "collect", quest = 1110, item = 5798, itemName = "Rocket Car Parts", count = 30, oi = 1, map = 1441, x = 83.0, y = 64.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1110, title = "Rocket Car Parts", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
					{ t = "accept", quest = 1111, title = "Wharfmaster Dizzywig", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
					{ t = "accept", quest = 5762, title = "Hemet Nesingwary", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1104, title = "Salt Flat Venom", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.06, y = 77.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1105, title = "Hardened Shells", npc = 4453, npcName = "Wizzle Brassbolts", map = 1441, x = 78.14, y = 77.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1176, title = "Load Lightening", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.18, y = 75.88, f = "e" },
					{ t = "accept", quest = 1178, title = "Goblin Sponsorship", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.18, y = 75.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1175, title = "A Bump in the Road", npc = 4629, npcName = "Trackmaster Zherin", map = 1441, x = 81.63, y = 77.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Gadgetzan", map = 1446, x = 51.01, y = 29.34, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1135, title = "Highperch Venom", npc = 4456, npcName = "Fiora Longears", map = 1445, x = 66.46, y = 45.15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1219, title = "The Orc Report", npc = 4947, npcName = "Theramore Lieutenant", map = 1445, x = 65.07, y = 47.13, f = "e" },
					{ t = "accept", quest = 1220, title = "Captain Vimes", npc = 4947, npcName = "Theramore Lieutenant", map = 1445, x = 65.07, y = 47.13, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1220, title = "Captain Vimes", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.21, y = 48.62, f = "e" },
					{ t = "turnin", quest = 1252, title = "Lieutenant Paval Reethe", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.21, y = 48.62, f = "e" },
					{ t = "accept", quest = 1259, title = "Lieutenant Paval Reethe", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.21, y = 48.62, f = "e" },
					{ t = "turnin", quest = 1253, title = "The Black Shield", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.21, y = 48.62, f = "e" },
					{ t = "accept", quest = 1319, title = "The Black Shield", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.21, y = 48.62, f = "e" },
					{ t = "turnin", quest = 1284, title = "Suspicious Hoofprints", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.21, y = 48.62, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1259, title = "Lieutenant Paval Reethe", npc = 4948, npcName = "Adjutant Tesoran", map = 1445, x = 68.05, y = 48.11, f = "e" },
					{ t = "accept", quest = 1285, title = "Daelin's Men", npc = 4948, npcName = "Adjutant Tesoran", map = 1445, x = 68.05, y = 48.11, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1285, title = "Daelin's Men", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.21, y = 48.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1319, title = "The Black Shield", npc = 4941, npcName = "Caz Twosprocket", map = 1445, x = 64.75, y = 50.43, f = "e" },
					{ t = "accept", quest = 1320, title = "The Black Shield", npc = 4941, npcName = "Caz Twosprocket", map = 1445, x = 64.75, y = 50.43, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1320, title = "The Black Shield", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.21, y = 48.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Ratchet", map = 1413, x = 63.09, y = 37.16, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1178, title = "Goblin Sponsorship", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.68, y = 36.23, f = "e" },
					{ t = "accept", quest = 1180, title = "Goblin Sponsorship", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.68, y = 36.23, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1798, title = "Seeking Strahad", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
					{ t = "accept", quest = 1758, title = "Tome of the Cabal", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1718, title = "The Islander", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.62, y = 49.17, f = "e" },
					{ t = "accept", quest = 1719, title = "The Affray", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.62, y = 49.17, f = "e" },
				},
			},
			{
				note = "Step on the grate to start the fight. Appears after killing six challengers.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "kill", quest = 1719, npc = 6238, target = "Big Will", oi = 1, map = 1413, x = 68.61, y = 48.72, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1719, title = "The Affray", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.62, y = 49.17, f = "e" },
					{ t = "accept", quest = 1791, title = "The Windwatcher", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.62, y = 49.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1111, title = "Wharfmaster Dizzywig", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.35, y = 38.45, f = "e" },
					{ t = "accept", quest = 1112, title = "Parts for Kravel", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.35, y = 38.45, f = "e" },
					{ t = "turnin", quest = 1039, title = "The Barrens Port", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.35, y = 38.45, f = "e" },
					{ t = "accept", quest = 1040, title = "Passage to Booty Bay", npc = 3453, npcName = "Wharfmaster Dizzywig", map = 1413, x = 63.35, y = 38.45, f = "e" },
				},
			},
		},
	})
end

