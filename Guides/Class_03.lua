-- TuWoW_Leveling — Guides/Class_03.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-rogue-class-quests",
		pack = "guides",
		title = "Rogue Class Quests",
		category = "Class",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1426,
		version = 1,
		classes = { "ROGUE" },
		steps = {
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 2218, title = "Road to Salvation", npc = 1234, npcName = "Hogral Bakkan", map = 1426, x = 47.56, y = 52.61, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2218, title = "Road to Salvation", npc = 5165, npcName = "Hulfdan Blackbeard", map = 1455, x = 51.94, y = 14.82, f = "e" },
					{ t = "accept", quest = 2238, title = "Simple Subterfugin'", npc = 5165, npcName = "Hulfdan Blackbeard", map = 1455, x = 51.94, y = 14.82, f = "e" },
				},
			},
			{
				note = "On top of the platform.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2238, title = "Simple Subterfugin'", npc = 6886, npcName = "Onin MacHammar", map = 1426, x = 25.16, y = 44.45, f = "e" },
					{ t = "accept", quest = 2239, title = "Onin's Report", npc = 6886, npcName = "Onin MacHammar", map = 1426, x = 25.16, y = 44.45, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2239, title = "Onin's Report", npc = 5165, npcName = "Hulfdan Blackbeard", map = 1455, x = 51.94, y = 14.82, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Train the \"Pick Lock\" Ability", map = 1453, x = 80.27, y = 68.57 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "buy", item = 5060, itemName = "Thieves' Tools", map = 1433, x = 20.0, y = 41.15, f = "e" },
				},
			},
			{
				note = "They look like grey metal chests. Inside the building. Keep clicking them until you reach Lockpicking skill level 75.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1433, x = 29.93, y = 44.11 },
					{ t = "goto", text = "Follow the path", map = 1433, x = 38.21, y = 37.54 },
					{ t = "skill", level = 75, skill = "Lockpicking" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1453, x = 77.51, y = 65.99 },
					{ t = "goto", text = "Enter the building", map = 1453, x = 79.36, y = 69.33 },
					{ t = "accept", quest = 2360, title = "Mathias and the Defias", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.31, y = 70.75, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1453, x = 79.34, y = 69.32 },
					{ t = "goto", text = "Follow the path", map = 1453, x = 77.45, y = 65.93 },
					{ t = "goto", text = "Leave Stormwind", map = 1453, x = 74.69, y = 93.21 },
					{ t = "goto", text = "Follow the road", map = 1429, x = 27.55, y = 77.78 },
					{ t = "goto", text = "Enter Westfall", map = 1429, x = 20.73, y = 79.79 },
					{ t = "getfp", location = "Sentinel Hill", map = 1436, x = 56.56, y = 52.64, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2360, title = "Mathias and the Defias", npc = 7024, npcName = "Agent Kearnen", map = 1436, x = 68.49, y = 70.08, f = "e" },
					{ t = "accept", quest = 2359, title = "Klaven's Tower", npc = 7024, npcName = "Agent Kearnen", map = 1436, x = 68.49, y = 70.08, f = "e" },
				},
			},
			{
				note = "Use your \"Pickpocket\" ability on Malformed Defias Drone. He walks around this area. Look out for the pair of Defias Drones patrolling as well.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 2359, item = 7923, itemName = "Defias Tower Key", oi = 2, map = 1436, x = 71.63, y = 73.91, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building. You will get a debuff after opening it. Use your \"Sap\" ability on Klaven Mortwake nearby before clicking the chest. He is elite, but you should be fine. If you have trouble, try to find someone to help you.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1436, x = 69.97, y = 74.07 },
					{ t = "collect", quest = 2359, item = 7908, itemName = "Klaven Mortwake's Journal", oi = 1, map = 1436, x = 70.41, y = 73.93, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1436, x = 69.95, y = 74.04 },
					{ t = "goto", text = "Follow the path", map = 1453, x = 77.51, y = 65.99 },
					{ t = "goto", text = "Enter the building", map = 1453, x = 79.36, y = 69.33 },
					{ t = "turnin", quest = 2359, title = "Klaven's Tower", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.31, y = 70.75, f = "e" },
					{ t = "accept", quest = 2607, title = "The Touch of Zanzil", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.31, y = 70.75, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2607, title = "The Touch of Zanzil", npc = 7207, npcName = "Doc Mixilpixil", map = 1453, x = 80.06, y = 69.91, f = "e" },
					{ t = "accept", quest = 2608, title = "The Touch of Zanzil", npc = 7207, npcName = "Doc Mixilpixil", map = 1453, x = 80.06, y = 69.91, f = "e" },
				},
			},
			{
				note = "Use the \"/lay\" emote while targeting Doc Mixilpixil.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "complete", quest = 2608, title = "The Touch of Zanzil", note = "Complete the Diagnosis", map = 1453, x = 80.06, y = 69.91, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2608, title = "The Touch of Zanzil", npc = 7207, npcName = "Doc Mixilpixil", map = 1453, x = 80.06, y = 69.91, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 8233, title = "A Simple Request", npc = 13283, npcName = "Lord Tony Romano", map = 1453, x = 80.28, y = 68.57, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Follow the road up", map = 1424, x = 75.51, y = 23.52 },
					{ t = "goto", text = "Enter the cave", map = 1424, x = 77.82, y = 19.27 },
					{ t = "goto", text = "Follow the path", map = 1416, x = 81.71, y = 77.48 },
					{ t = "goto", text = "Enter the building", map = 1416, x = 85.46, y = 79.39 },
					{ t = "turnin", quest = 8233, title = "A Simple Request", npc = 6768, npcName = "Lord Jorach Ravenholdt", map = 1416, x = 86.03, y = 78.88, f = "e" },
					{ t = "accept", quest = 8234, title = "Sealed Azure Bag", npc = 6768, npcName = "Lord Jorach Ravenholdt", map = 1416, x = 86.03, y = 78.88, f = "e" },
				},
			},
			{
				note = "You can also Pickpocket them. Watch for patrols and respawns while in the area.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 8234, item = 19775, itemName = "Sealed Azure Bag", oi = 1, map = 1447, x = 43.77, y = 25.56, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 3503, title = "Meeting with the Master", npc = 8395, npcName = "Sanath Lim-yo", map = 1447, x = 28.11, y = 50.09, f = "e" },
				},
			},
			{
				note = "Inside the tower.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1447, x = 26.48, y = 44.23 },
					{ t = "turnin", quest = 8234, title = "Sealed Azure Bag", npc = 8379, npcName = "Archmage Xylem", map = 1447, x = 29.71, y = 40.52, f = "e" },
					{ t = "accept", quest = 8235, title = "Encoded Fragments", npc = 8379, npcName = "Archmage Xylem", map = 1447, x = 29.71, y = 40.52, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1447, x = 27.04, y = 43.31 },
					{ t = "accept", quest = 3421, title = "Return Trip", npc = 8399, npcName = "Nyrill", map = 1447, x = 36.13, y = 67.82, f = "e" },
				},
			},
			{
				note = "Pickpocket them before killing them. Kill Mistwing Ravagers if you run out of oozes to kill.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 8235, item = 20023, itemName = "Encoded Fragment", count = 10, oi = 1, map = 1447, x = 73.4, y = 25.2, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 3503, title = "Meeting with the Master", npc = 8395, npcName = "Sanath Lim-yo", map = 1447, x = 28.11, y = 50.09, f = "e" },
				},
			},
			{
				note = "Inside the tower.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1447, x = 26.48, y = 44.23 },
					{ t = "turnin", quest = 8235, title = "Encoded Fragments", npc = 8379, npcName = "Archmage Xylem", map = 1447, x = 29.71, y = 40.52, f = "e" },
					{ t = "accept", quest = 8236, title = "The Azure Key", npc = 8379, npcName = "Archmage Xylem", map = 1447, x = 29.71, y = 40.52, f = "e" },
				},
			},
			{
				note = "The next couple of steps will be taking you to the Sunken Temple dungeon. You will need a group to complete the dungeon as well as the quest. If you don't have a group, wait until you do before continuing.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "complete", quest = 8236, title = "The Azure Key", note = "Click Here to Continue" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1435, x = 69.36, y = 56.89 },
					{ t = "goto", text = "Enter the building and swim under the water", map = 1435, x = 70.54, y = 49.78 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 72.69, y = 42.22 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 75.69, y = 45.78 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 78.62, y = 47.47 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 80.22, y = 49.62 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 81.33, y = 42.38 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 78.86, y = 40.74 },
					{ t = "goto", text = "Run down the ramp", map = 1435, x = 76.85, y = 38.82 },
				},
			},
			{
				note = "Refer to the Temple of Atal'Hakkar Dungeon guide to accomplish this.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 8236, item = 20022, itemName = "Azure Key", oi = 1 },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Follow the road up", map = 1424, x = 75.51, y = 23.52 },
					{ t = "goto", text = "Enter the cave", map = 1424, x = 77.82, y = 19.27 },
					{ t = "goto", text = "Follow the path", map = 1416, x = 81.71, y = 77.48 },
					{ t = "goto", text = "Enter the building", map = 1416, x = 85.46, y = 79.39 },
					{ t = "turnin", quest = 8236, title = "The Azure Key", npc = 6768, npcName = "Lord Jorach Ravenholdt", map = 1416, x = 86.03, y = 78.88, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-mage-class-quests",
		pack = "guides",
		title = "Mage Class Quests",
		category = "Class",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1429,
		version = 1,
		classes = { "MAGE" },
		steps = {
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 1860, title = "Speak with Jennea", npc = 328, npcName = "Zaldimar Wefhellt", map = 1429, x = 43.25, y = 66.19, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1860, title = "Speak with Jennea", npc = 5497, npcName = "Jennea Cannon", map = 1453, x = 49.5, y = 85.84, f = "e" },
					{ t = "accept", quest = 1861, title = "Mirror Lake", npc = 5497, npcName = "Jennea Cannon", map = 1453, x = 49.5, y = 85.84, f = "e" },
				},
			},
			{
				note = "Use it while in the water.",
				goals = {
					{ t = "use", item = 7207, itemName = "Jennea's Flask" },
					{ t = "collect", quest = 1861, item = 7206, itemName = "Mirror Lake Water Sample", oi = 1, map = 1429, x = 28.78, y = 61.47, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1861, title = "Mirror Lake", npc = 5497, npcName = "Jennea Cannon", map = 1453, x = 49.5, y = 85.84, f = "e" },
				},
			},
			{
				note = "Inside the building",
				only = { races = { "Gnome" }, classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 1919, title = "Report to Jennea", npc = 7312, npcName = "Dink", map = 1455, x = 27.18, y = 8.58, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Human" }, classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 1919, title = "Report to Jennea", npc = 328, npcName = "Zaldimar Wefhellt", map = 1429, x = 43.25, y = 66.19, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1919, title = "Report to Jennea", npc = 5497, npcName = "Jennea Cannon", map = 1453, x = 49.5, y = 85.84, f = "e" },
					{ t = "accept", quest = 1920, title = "Investigate the Blue Recluse", npc = 5497, npcName = "Jennea Cannon", map = 1453, x = 49.5, y = 85.84, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1920, item = 7247, itemName = "Chest of Containment Coffers", oi = 2, map = 1453, x = 49.54, y = 85.61, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1920, item = 7308, itemName = "Cantation of Manifestation", oi = 3, map = 1453, x = 49.62, y = 85.4, f = "e" },
				},
			},
			{
				note = "Inside the building. This will cause Rift Spawns to appear.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 50.55, y = 90.49 },
					{ t = "use", item = 7308, itemName = "Cantation of Manifestation" },
					{ t = "use", item = 7247, itemName = "Chest of Containment Coffers" },
					{ t = "collect", quest = 1920, item = 7292, itemName = "Filled Containment Coffer", oi = 1, map = 1453, x = 51.12, y = 95.56, f = "e" },
				},
			},
			{
				note = "Inside the building. This will cause Rift Spawns to appear.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "use", item = 7308, itemName = "Cantation of Manifestation" },
					{ t = "use", item = 7247, itemName = "Chest of Containment Coffers" },
					{ t = "collect", quest = 1920, item = 7292, itemName = "Filled Containment Coffer", count = 2, oi = 1, map = 1453, x = 50.98, y = 96.25, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building. This will cause Rift Spawns to appear.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "use", item = 7308, itemName = "Cantation of Manifestation" },
					{ t = "use", item = 7247, itemName = "Chest of Containment Coffers" },
					{ t = "collect", quest = 1920, item = 7292, itemName = "Filled Containment Coffer", count = 3, oi = 1, map = 1453, x = 50.98, y = 94.77, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1920, title = "Investigate the Blue Recluse", npc = 5497, npcName = "Jennea Cannon", map = 1453, x = 49.5, y = 85.84, f = "e" },
					{ t = "accept", quest = 1921, title = "Gathering Materials", npc = 5497, npcName = "Jennea Cannon", map = 1453, x = 49.5, y = 85.84, f = "e" },
				},
			},
			{
				note = "Inside the mine. Keep an eye out for patrols and casters.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "Enter the mine", map = 1432, x = 35.47, y = 19.08 },
					{ t = "collect", quest = 1921, item = 7249, itemName = "Charged Rift Gem", count = 6, oi = 2, map = 1432, x = 35.85, y = 22.58, f = "e" },
				},
			},
			{
				label = "Collect_10_Linen",
				along = true,
				note = "These drop from Tunnel Rat enemies inside the cave. Keep an eye out for patrols and casters while in the cave. You can also purchase them from the Auction House.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1921, item = 2589, itemName = "Linen Cloth", count = 10, oi = 1 },
				},
			},
			{
				note = "Inside the building",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1921, title = "Gathering Materials", npc = 1309, npcName = "Wynne Larson", map = 1453, x = 51.84, y = 83.51, f = "e" },
					{ t = "accept", quest = 1941, title = "Manaweave Robe", npc = 1309, npcName = "Wynne Larson", map = 1453, x = 51.84, y = 83.51, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 1939, title = "High Sorcerer Andromath", npc = 5497, npcName = "Jennea Cannon", map = 1453, x = 49.5, y = 85.84, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1939, title = "High Sorcerer Andromath", npc = 5694, npcName = "High Sorcerer Andromath", map = 1453, x = 48.71, y = 87.61, f = "e" },
					{ t = "accept", quest = 1938, title = "Ur's Treatise on Shadow Magic", npc = 5694, npcName = "High Sorcerer Andromath", map = 1453, x = 48.71, y = 87.61, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1938, item = 7266, itemName = "Ur's Treatise on Shadow Magic", oi = 1, map = 1433, x = 73.78, y = 47.64, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1938, title = "Ur's Treatise on Shadow Magic", npc = 5694, npcName = "High Sorcerer Andromath", map = 1453, x = 48.71, y = 87.61, f = "e" },
					{ t = "accept", quest = 1940, title = "Pristine Spider Silk", npc = 5694, npcName = "High Sorcerer Andromath", map = 1453, x = 48.71, y = 87.61, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1940, item = 7267, itemName = "Pristine Spider Silk", count = 8, oi = 1, map = 1431, x = 31.38, y = 26.95, f = "e" },
				},
			},
			{
				note = "Inside the building",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1940, title = "Pristine Spider Silk", npc = 1309, npcName = "Wynne Larson", map = 1453, x = 51.84, y = 83.51, f = "e" },
					{ t = "accept", quest = 1942, title = "Astral Knot Garment", npc = 1309, npcName = "Wynne Larson", map = 1453, x = 51.84, y = 83.51, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 1947, title = "Journey to the Marsh", npc = 5497, npcName = "Jennea Cannon", map = 1453, x = 49.5, y = 85.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1947, title = "Journey to the Marsh", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
					{ t = "accept", quest = 1949, title = "Hidden Secrets", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1949, title = "Hidden Secrets", npc = 6548, npcName = "Magus Tirth", map = 1441, x = 78.29, y = 75.7, f = "e" },
					{ t = "accept", quest = 1950, title = "Get the Scoop", npc = 6548, npcName = "Magus Tirth", map = 1441, x = 78.29, y = 75.7, f = "e" },
				},
			},
			{
				note = "Use the \"/beckon\" Emote to turn him back to a human.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "complete", quest = 1950, title = "Get the Scoop", note = "Learn the Secret Phrase", map = 1441, x = 79.6, y = 75.6, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1950, title = "Get the Scoop", npc = 6548, npcName = "Magus Tirth", map = 1441, x = 78.29, y = 75.7, f = "e" },
					{ t = "accept", quest = 1951, title = "Rituals of Power", npc = 6548, npcName = "Magus Tirth", map = 1441, x = 78.29, y = 75.7, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 1948, title = "Items of Power", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				note = "They look like trolls.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1948, item = 7273, itemName = "Witherbark Totem Stick", count = 10, map = 1417, x = 66.66, y = 64.37, f = "e" },
				},
			},
			{
				note = "Clear the enemies around the stones before doing so. On top of the rock at the center of the Outer Binding Circle.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "use", item = 7273, itemName = "Witherbark Totem Stick" },
					{ t = "collect", quest = 1948, item = 7272, itemName = "Bolt Charged Bramble", oi = 2, map = 1417, x = 52.06, y = 50.69, f = "e" },
				},
			},
			{
				note = "You should have collected this earlier.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1948, item = 1529, itemName = "Jade" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1948, title = "Items of Power", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				note = "The next couple of steps will be taking you to the Scarlet Monastery (Library) dungeon. You will need a group to complete the dungeon as well as the quest. If you don't have a group, wait until you do before continuing.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "complete", quest = 1951, title = "Rituals of Power", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1420, x = 82.65, y = 32.88 },
					{ t = "goto", text = "Enter the Portal", map = 1420, x = 85.33, y = 32.27 },
					{ t = "complete", quest = 1951, title = "Rituals of Power", note = "Enter the Scarlet Monastery - Library Dungeon with Your Group" },
				},
			},
			{
				note = "In the Athenaeum, to the left of the doorway.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1951, item = 7274, itemName = "Rituals of Power", oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1951, title = "Rituals of Power", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
					{ t = "accept", quest = 1952, title = "Mage's Wand", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1952, title = "Mage's Wand", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 1953, title = "Return to the Marsh", npc = 5497, npcName = "Jennea Cannon", map = 1453, x = 49.5, y = 85.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1953, title = "Return to the Marsh", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
					{ t = "accept", quest = 1954, title = "The Infernal Orb", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				note = "You may have to look around for them. Watch out for patrols and respawns while in the area.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1954, item = 7291, itemName = "Infernal Orb", oi = 1, map = 1443, x = 53.34, y = 79.05, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1954, title = "The Infernal Orb", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
					{ t = "accept", quest = 1955, title = "The Exorcism", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "kill", quest = 1955, npc = 6549, target = "Demon of the Orb", oi = 1, map = 1445, x = 46.04, y = 57.1, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1955, title = "The Exorcism", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
					{ t = "accept", quest = 1956, title = "Power in Uldaman", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				note = "The next couple of steps will be taking you to the Uldaman dungeon. You will need a group to complete the dungeon as well as the quest. If you don't have a group, wait until you do before continuing.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "complete", quest = 1956, title = "Power in Uldaman", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1956, title = "Power in Uldaman", note = "Enter the Uldaman Dungeon with Your Group" },
				},
			},
			{
				note = "Use the Uldaman Dungeon guide to accomplish this.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1956, item = 8053, itemName = "Obsidian Power Source", oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1956, title = "Power in Uldaman", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
					{ t = "accept", quest = 1957, title = "Mana Surges", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				note = "They will spawn continuously as you kill them.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "complete", quest = 1957, title = "Mana Surges", note = "Slay #12# Manage Surges", map = 1445, x = 45.85, y = 56.76, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1957, title = "Mana Surges", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
					{ t = "accept", quest = 1958, title = "Celestial Power", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 2861, title = "Tabetha's Task", npc = 5497, npcName = "Jennea Cannon", map = 1453, x = 49.5, y = 85.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 2861, title = "Tabetha's Task", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
					{ t = "accept", quest = 2846, title = "Tiara of the Deep", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				note = "The next couple of steps will be taking you to the Zul'Farrak dungeon. You will need a group to complete the dungeon as well as the quest. If you don't have a group, wait until you do before continuing.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "complete", quest = 2846, title = "Tiara of the Deep", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2846, title = "Tiara of the Deep", note = "Enter the Zul'Farrak Dungeon with Your Group" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 2846, item = 9234, itemName = "Tiara of the Deep", oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 2846, title = "Tiara of the Deep", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				note = "You need a Crescent Key to unlock this door. This drops from Pusillin in the \"Dire Maul - East\" dungeon.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1444, x = 59.13, y = 44.67 },
					{ t = "goto", text = "Follow the path", map = 1444, x = 59.52, y = 39.51 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.72, y = 38.78 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.15, y = 34.87 },
					{ t = "goto", text = "click Door", map = 1444, x = 62.49, y = 24.89 },
				},
			},
			{
				note = "Through the Conservatory Door in the courtyard.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 7463, title = "Arcane Refreshment", npc = 14368, npcName = "Lorekeeper Lydros" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1444, x = 59.13, y = 44.67 },
					{ t = "goto", text = "Follow the path", map = 1444, x = 59.52, y = 39.51 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.72, y = 38.78 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.15, y = 34.87 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 64.85, y = 30.18 },
				},
			},
			{
				note = "Refer to the Dire Maul East Dungeon guide to accomplish this.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", item = 18299, itemName = "Hydrospawn Essence" },
				},
			},
			{
				note = "You need a Crescent Key to unlock this door. This drops from Pusillin in the \"Dire Maul - East\" dungeon.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1444, x = 59.13, y = 44.67 },
					{ t = "goto", text = "Follow the path", map = 1444, x = 59.52, y = 39.51 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.72, y = 38.78 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.15, y = 34.87 },
					{ t = "goto", text = "click Door", map = 1444, x = 62.49, y = 24.89 },
				},
			},
			{
				note = "Through the Conservatory Door in the courtyard.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 7463, title = "Arcane Refreshment", npc = 14368, npcName = "Lorekeeper Lydros" },
				},
			},
		},
	})
end

