-- TuWoW_Leveling — Guides/Leveling_Alliance_10.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-darkshore-15-18",
		pack = "guides",
		title = "Darkshore (Parte 1/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-darkshore-15-18-part-2",
		author = "TuWoW & Zygor",
		minLevel = 15,
		maxLevel = 18,
		zone = 1439,
		version = 1,
		steps = {
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 983, title = "Buzzbox 827", npc = 3666, npcName = "Wizbang Cranktoggle", map = 1439, x = 36.98, y = 44.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2118, title = "Plagued Lands", npc = 3701, npcName = "Tharnariun Treetender", map = 1439, x = 38.84, y = 43.42, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 984, title = "How Big a Threat?", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.37, y = 43.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3524, title = "Washed Ashore", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.62, y = 45.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Auberdine", map = 1439, x = 36.34, y = 45.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3524, item = 12242, itemName = "Sea Creature Bones", oi = 1, map = 1439, x = 36.39, y = 50.88, f = "e" },
				},
			},
			{
				label = "Collect_Crawler_Legs",
				along = true,
				note = "Crabs. More in the water. notinsticky",
				goals = {
					{ t = "collect", quest = 983, item = 5385, itemName = "Crawler Leg", count = 6, oi = 1, map = 1439, x = 36.65, y = 53.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 984, title = "How Big a Threat?", note = "Find a Corrupt Furbolg Camp", map = 1439, x = 38.95, y = 53.57, f = "e" },
				},
			},
			{
				label = "Collect_Tharnariuns_Hope",
				goals = {
					{ t = "collect", quest = 2118, item = 7586, itemName = "Tharnariun's Hope", map = 1439, x = 38.84, y = 43.42, f = "e" },
				},
			},
			{
				note = "On a Rabid Thistle Bear. Grey bears. Don't attack it.",
				goals = {
					{ t = "use", item = 7586, itemName = "Tharnariun's Hope" },
					{ t = "complete", quest = 2118, title = "Plagued Lands", note = "Capture a Rabid Thistle Bear", map = 1439, x = 39.07, y = 57.42, f = "e" },
				},
			},
			{
				label = "Finished_Plagued_Lands",
				goals = {
					{ t = "turnin", quest = 983, title = "Buzzbox 827", map = 1439, x = 36.66, y = 46.26, f = "e" },
					{ t = "accept", quest = 1001, title = "Buzzbox 411", map = 1439, x = 36.66, y = 46.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3524, title = "Washed Ashore", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.62, y = 45.59, f = "e" },
					{ t = "accept", quest = 4681, title = "Washed Ashore", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.62, y = 45.59, f = "e" },
				},
			},
			{
				note = "On the dock.",
				goals = {
					{ t = "accept", quest = 963, title = "For Love Eternal", npc = 3644, npcName = "Cerellean Whiteclaw", map = 1439, x = 35.74, y = 43.71, f = "e" },
				},
			},
			{
				note = "Underwater.",
				goals = {
					{ t = "collect", quest = 4681, item = 12289, itemName = "Sea Turtle Remains", oi = 1, map = 1439, x = 31.87, y = 46.32, f = "e" },
				},
			},
			{
				label = "Collect_Thresher_Eyes",
				along = true,
				note = "Long-neck dinosaurs. Underwater.",
				goals = {
					{ t = "collect", quest = 1001, item = 5412, itemName = "Thresher Eye", count = 3, oi = 1, map = 1439, x = 32.99, y = 48.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4681, title = "Washed Ashore", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.62, y = 45.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2118, title = "Plagued Lands", npc = 3701, npcName = "Tharnariun Treetender", map = 1439, x = 38.84, y = 43.42, f = "e" },
					{ t = "accept", quest = 2138, title = "Cleansing of the Infected", npc = 3701, npcName = "Tharnariun Treetender", map = 1439, x = 38.84, y = 43.42, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 984, title = "How Big a Threat?", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.37, y = 43.48, f = "e" },
					{ t = "accept", quest = 985, title = "How Big a Threat?", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.37, y = 43.48, f = "e" },
					{ t = "accept", quest = 4761, title = "Thundris Windweaver", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.37, y = 43.48, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4761, title = "Thundris Windweaver", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.13, f = "e" },
					{ t = "accept", quest = 4762, title = "The Cliffspring River", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.13, f = "e" },
					{ t = "accept", quest = 954, title = "Bashal'Aran", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.13, f = "e" },
					{ t = "accept", quest = 958, title = "Tools of the Highborne", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.13, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 4811, title = "The Red Crystal", npc = 2930, npcName = "Sentinel Glynda Nal'Shea", map = 1439, x = 37.7, y = 43.39, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Auberdine", map = 1439, x = 37.04, y = 44.12, f = "e" },
				},
			},
			{
				note = "Up on the hill.",
				goals = {
					{ t = "complete", quest = 4811, title = "The Red Crystal", note = "Locate the Large, Red Crystal on Darkshore's Eastern Mountain Range", map = 1439, x = 47.32, y = 48.66, f = "e" },
				},
			},
			{
				label = "Collect_Small_Eggs",
				along = true,
				note = "Owlkins. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 2178, item = 6889, itemName = "Small Egg", count = 9, map = 1439, x = 44.4, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 954, title = "Bashal'Aran", npc = 3650, npcName = "Asterion", map = 1439, x = 44.17, y = 36.29, f = "e" },
					{ t = "accept", quest = 955, title = "Bashal'Aran", npc = 3650, npcName = "Asterion", map = 1439, x = 44.17, y = 36.29, f = "e" },
				},
			},
			{
				note = "Imps. Try not to kill satyrs. Needed for next quest.",
				goals = {
					{ t = "collect", quest = 955, item = 5336, itemName = "Grell Earring", count = 8, oi = 1, map = 1439, x = 46.19, y = 37.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 955, title = "Bashal'Aran", npc = 3650, npcName = "Asterion", map = 1439, x = 44.17, y = 36.29, f = "e" },
					{ t = "accept", quest = 956, title = "Bashal'Aran", npc = 3650, npcName = "Asterion", map = 1439, x = 44.17, y = 36.29, f = "e" },
				},
			},
			{
				note = "Satyrs.",
				goals = {
					{ t = "collect", quest = 956, item = 5338, itemName = "Ancient Moonstone Seal", oi = 1, map = 1439, x = 46.41, y = 37.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 956, title = "Bashal'Aran", npc = 3650, npcName = "Asterion", map = 1439, x = 44.17, y = 36.3, f = "e" },
					{ t = "accept", quest = 957, title = "Bashal'Aran", npc = 3650, npcName = "Asterion", map = 1439, x = 44.17, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4723, title = "Beached Sea Creature", map = 1439, x = 41.88, y = 31.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1001, title = "Buzzbox 411", map = 1439, x = 41.96, y = 28.64, f = "e" },
					{ t = "accept", quest = 1002, title = "Buzzbox 323", map = 1439, x = 41.96, y = 28.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4725, title = "Beached Sea Turtle", map = 1439, x = 44.21, y = 20.64, f = "e" },
				},
			},
			{
				label = "Collect_Strider_Meat",
				along = true,
				note = "Large walking birds. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 2178, item = 5469, itemName = "Strider Meat", count = 5, map = 1439, x = 46.0, y = 33.0, f = "e" },
				},
			},
			{
				label = "Collect_Moonstalker_Fangs",
				along = true,
				note = "Black tigers.",
				goals = {
					{ t = "collect", quest = 1002, item = 5413, itemName = "Moonstalker Fang", count = 6, oi = 1, map = 1439, x = 48.4, y = 31.0, f = "e" },
				},
			},
			{
				label = "Kill_Rabid_Thistle_Bears",
				along = true,
				goals = {
					{ t = "kill", quest = 2138, npc = 2164, target = "Rabid Thistle Bear", count = 20, oi = 1, map = 1439, x = 49.65, y = 28.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1002, title = "Buzzbox 323", map = 1439, x = 51.28, y = 24.58, f = "e" },
				},
			},
			{
				note = "In the water. Bottom of the waterfall.",
				goals = {
					{ t = "use", item = 12350, itemName = "Empty Sampling Tube" },
					{ t = "collect", quest = 4762, item = 12349, itemName = "Cliffspring River Sample", oi = 1, map = 1439, x = 50.84, y = 25.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4727, title = "Beached Sea Turtle", map = 1439, x = 53.09, y = 18.15, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Middle floor inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "accept", quest = 26, title = "A Lesson to Learn", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.37, y = 8.39, f = "e" },
					{ t = "accept", quest = 6121, title = "Lessons Anew", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.37, y = 8.39, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 26, title = "A Lesson to Learn", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 29, title = "Trial of the Lake", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "turnin", quest = 6121, title = "Lessons Anew", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 6122, title = "The Principal Source", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				note = "Wicker basket vase. Underwater. Multiple locations.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 29, item = 15877, itemName = "Shrine Bauble", map = 1450, x = 54.7, y = 46.5, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 15877, itemName = "Shrine Bauble" },
					{ t = "complete", quest = 29, title = "Trial of the Lake", note = "Complete the Trial of the Lake", map = 1450, x = 35.92, y = 41.38, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 29, title = "Trial of the Lake", npc = 11799, npcName = "Tajarri", map = 1450, x = 36.51, y = 40.11, f = "e" },
					{ t = "accept", quest = 272, title = "Trial of the Sea Lion", npc = 11799, npcName = "Tajarri", map = 1450, x = 36.51, y = 40.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4723, title = "Beached Sea Creature", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.62, y = 45.6, f = "e" },
					{ t = "turnin", quest = 4725, title = "Beached Sea Turtle", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.62, y = 45.6, f = "e" },
					{ t = "turnin", quest = 4727, title = "Beached Sea Turtle", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.62, y = 45.6, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 4089, npcName = "Sildanair", map = 1457, x = 61.78, y = 42.21, f = "e" },
				},
			},
			{
				note = "Downstairs inside the tree cave.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Enter the tree cave", map = 1457, x = 32.14, y = 16.46 },
					{ t = "train", npc = 4163, npcName = "Syurna", map = 1457, x = 37.0, y = 21.92, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 4146, npcName = "Jocaste", map = 1457, x = 40.38, y = 8.54, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 4091, npcName = "Jandria", map = 1457, x = 37.9, y = 82.73, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 4811, title = "The Red Crystal", npc = 2930, npcName = "Sentinel Glynda Nal'Shea", map = 1439, x = 37.71, y = 43.39, f = "e" },
					{ t = "accept", quest = 4812, title = "As Water Cascades", npc = 2930, npcName = "Sentinel Glynda Nal'Shea", map = 1439, x = 37.71, y = 43.39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 14338, itemName = "Empty Water Tube" },
					{ t = "collect", quest = 4812, item = 14339, itemName = "Moonwell Water Tube", oi = 1, map = 1439, x = 37.79, y = 44.05, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 2678, itemName = "Mild Spices", count = 9, map = 1439, x = 38.11, y = 41.17, f = "e" },
				},
			},
			{
				note = "Create Herb Baked Eggs. Needed for a quest soon.",
				goals = {
					{ t = "goto", text = "skill Cooking,10", map = 1439, x = 37.54, y = 41.7 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2178, title = "Easy Strider Living", npc = 3702, npcName = "Alanndarian Nightsong", map = 1439, x = 37.69, y = 40.66, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2178, title = "Easy Strider Living", npc = 3702, npcName = "Alanndarian Nightsong", map = 1439, x = 37.69, y = 40.66, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4762, title = "The Cliffspring River", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2138, title = "Cleansing of the Infected", npc = 3701, npcName = "Tharnariun Treetender", map = 1439, x = 38.84, y = 43.41, f = "e" },
				},
			},
			{
				note = "Up on the hill.",
				goals = {
					{ t = "turnin", quest = 4812, title = "As Water Cascades", map = 1439, x = 47.32, y = 48.66, f = "e" },
					{ t = "accept", quest = 4813, title = "The Fragments Within", map = 1439, x = 47.32, y = 48.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 953, title = "The Fall of Ameth'Aran", npc = 3639, npcName = "Sentinel Tysha Moonblade", map = 1439, x = 40.3, y = 59.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 953, title = "The Fall of Ameth'Aran", note = "Read the Lay of Ameth'Aran", map = 1439, x = 43.31, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 957, title = "Bashal'Aran", note = "Destroy the Seal at the Ancient Flame", map = 1439, x = 42.37, y = 61.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 953, title = "The Fall of Ameth'Aran", note = "Read the Fall of Ameth'Aran", map = 1439, x = 42.67, y = 63.1, f = "e" },
				},
			},
			{
				label = "Collect_Anyas_Pendant",
				along = true,
				note = "Neutral female night elf ghost. Wearing a green and yellow robe. Walks around. Multiple locations.",
				goals = {
					{ t = "collect", quest = 963, item = 5382, itemName = "Anaya's Pendant", oi = 1, map = 1439, x = 42.4, y = 60.4, f = "e" },
				},
			},
			{
				label = "Collect_Highborne_Relics",
				along = true,
				goals = {
					{ t = "collect", quest = 958, item = 5360, itemName = "Highborne Relic", count = 7, oi = 1, map = 1439, x = 42.68, y = 60.39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 953, title = "The Fall of Ameth'Aran", npc = 3639, npcName = "Sentinel Tysha Moonblade", map = 1439, x = 40.3, y = 59.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4728, title = "Beached Sea Creature", map = 1439, x = 36.06, y = 70.86, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4722, title = "Beached Sea Turtle", map = 1439, x = 37.14, y = 62.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 985, npc = 2324, target = "Blackwood Windtalker", count = 5, oi = 2, map = 1439, x = 39.67, y = 54.31, f = "e" },
					{ t = "kill", quest = 985, npc = 2167, target = "Blackwood Pathfinder", count = 8, oi = 1, map = 1439, x = 39.67, y = 54.31, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4728, title = "Beached Sea Creature", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.62, y = 45.6, f = "e" },
					{ t = "turnin", quest = 4722, title = "Beached Sea Turtle", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.62, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1138, title = "Fruit of the Sea", npc = 10216, npcName = "Gubber Blump", map = 1439, x = 36.09, y = 44.93, f = "e" },
				},
			},
			{
				note = "On the dock.",
				goals = {
					{ t = "turnin", quest = 963, title = "For Love Eternal", npc = 3644, npcName = "Cerellean Whiteclaw", map = 1439, x = 35.74, y = 43.71, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 4813, title = "The Fragments Within", npc = 2930, npcName = "Sentinel Glynda Nal'Shea", map = 1439, x = 37.71, y = 43.39, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 985, title = "How Big a Threat?", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.37, y = 43.48, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 965, title = "The Tower of Althalaxx", npc = 3657, npcName = "Sentinel Elissa Starbreeze", map = 1439, x = 39.05, y = 43.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 982, title = "Deep Ocean, Vast Sea", npc = 6301, npcName = "Gorbold Steelhand", map = 1439, x = 38.11, y = 41.17, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 958, title = "Tools of the Highborne", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 957, title = "Bashal'Aran", npc = 3650, npcName = "Asterion", map = 1439, x = 44.17, y = 36.3, f = "e" },
				},
			},
			{
				note = "Very bottom inside the sunken ship. Swim through a window.",
				goals = {
					{ t = "collect", quest = 982, item = 12191, itemName = "Silver Dawning's Lockbox", oi = 1, map = 1439, x = 38.24, y = 28.8, f = "e" },
				},
			},
			{
				note = "Very bottom inside the sunken ship. Swim through a window.",
				goals = {
					{ t = "collect", quest = 982, item = 12192, itemName = "Mist Veil's Lockbox", oi = 2, map = 1439, x = 39.63, y = 27.46, f = "e" },
				},
			},
			{
				note = "Underwater.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 272, item = 15883, itemName = "Half Pendant of Aquatic Agility", map = 1439, x = 48.87, y = 11.32, f = "e" },
				},
			},
			{
				label = "Collect_Fine_Crab_Chunks",
				along = true,
				note = "Crabs.",
				goals = {
					{ t = "collect", quest = 1138, item = 12237, itemName = "Fine Crab Chunks", count = 6, oi = 1, map = 1439, x = 48.65, y = 21.07, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 965, title = "The Tower of Althalaxx", npc = 3661, npcName = "Balthule Shadowstrike", map = 1439, x = 54.97, y = 24.89, f = "e" },
					{ t = "accept", quest = 966, title = "The Tower of Althalaxx", npc = 3661, npcName = "Balthule Shadowstrike", map = 1439, x = 54.97, y = 24.89, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 966, item = 5348, itemName = "Worn Parchment", count = 4, oi = 1, map = 1439, x = 56.09, y = 26.28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 966, title = "The Tower of Althalaxx", npc = 3661, npcName = "Balthule Shadowstrike", map = 1439, x = 54.97, y = 24.89, f = "e" },
					{ t = "accept", quest = 967, title = "The Tower of Althalaxx", npc = 3661, npcName = "Balthule Shadowstrike", map = 1439, x = 54.97, y = 24.89, f = "e" },
				},
			},
			{
				note = "Good time to train abilities soon.",
				goals = {
					{ t = "goto", text = "ding 18", map = 1439, x = 56.09, y = 26.28 },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-darkshore-15-18-part-2",
		pack = "guides",
		title = "Darkshore (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-loch-modan-18-19",
		author = "TuWoW & Zygor",
		minLevel = 15,
		maxLevel = 18,
		zone = 1439,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 1138, title = "Fruit of the Sea", npc = 10216, npcName = "Gubber Blump", map = 1439, x = 36.1, y = 44.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 982, title = "Deep Ocean, Vast Sea", npc = 6301, npcName = "Gorbold Steelhand", map = 1439, x = 38.11, y = 41.17, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building. If possible. Limited supply item. Needed later for Duskwood quest.",
				goals = {
					{ t = "buy", item = 4371, itemName = "Bronze Tube", map = 1437, x = 10.8, y = 56.8, f = "e" },
					{ t = "vendor", npc = 1448, npcName = "Neal Allen", map = 1437, x = 10.75, y = 56.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Menethil Harbor", map = 1437, x = 9.49, y = 59.69, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 7312, npcName = "Dink", map = 1455, x = 27.16, y = 8.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 5114, npcName = "Bilban Tosslespanner", map = 1455, x = 65.9, y = 88.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 5117, npcName = "Regnus Thundergranite", map = 1455, x = 69.87, y = 82.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10090, npcName = "Belia Thundergranite", map = 1455, x = 70.86, y = 85.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 5143, npcName = "Toldren Deepiron", map = 1455, x = 25.21, y = 10.74, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5148, npcName = "Beldruk Doombrow", map = 1455, x = 24.55, y = 4.48, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 5172, npcName = "Briarthorn", map = 1455, x = 50.35, y = 5.66, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6382, npcName = "Jubahl Corpseseeker", map = 1455, x = 50.35, y = 5.66, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 5167, npcName = "Fenthwick", map = 1455, x = 65.9, y = 88.41, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", map = 1455, x = 47.15, y = 13.87, f = "e" },
				},
			},
		},
	})
end

