-- TuWoW_Leveling — Guides/Class_10.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-shaman-class-quests",
		pack = "guides",
		title = "Shaman Class Quests",
		category = "Class",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1412,
		version = 1,
		classes = { "SHAMAN" },
		steps = {
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 1519, title = "Call of Earth", npc = 5888, npcName = "Seer Ravenfeather", map = 1412, x = 44.35, y = 76.76, f = "e" },
				},
			},
			{
				note = "They can be pretty spread out around this area.",
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1519, item = 6634, itemName = "Ritual Salve", count = 2, oi = 1, map = 1412, x = 60.3, y = 80.23, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1519, title = "Call of Earth", npc = 5888, npcName = "Seer Ravenfeather", map = 1412, x = 44.35, y = 76.77, f = "e" },
					{ t = "accept", quest = 1520, title = "Call of Earth", npc = 5888, npcName = "Seer Ravenfeather", map = 1412, x = 44.35, y = 76.77, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "use", item = 6635, itemName = "Earth Sapta" },
					{ t = "turnin", quest = 1520, title = "Call of Earth", npc = 5891, npcName = "Minor Manifestation of Earth", map = 1412, x = 51.97, y = 80.41, f = "e" },
					{ t = "accept", quest = 1521, title = "Call of Earth", npc = 5891, npcName = "Minor Manifestation of Earth", map = 1412, x = 51.97, y = 80.41, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1521, title = "Call of Earth", npc = 5888, npcName = "Seer Ravenfeather", map = 1412, x = 44.35, y = 76.77, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 1516, title = "Call of Earth", npc = 5887, npcName = "Canaga Earthcaller", map = 1411, x = 42.41, y = 69.17, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { races = { "Orc", "Troll" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1516, item = 6640, itemName = "Felstalker Hoof", count = 2, oi = 1, map = 1411, x = 44.82, y = 54.59, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1516, title = "Call of Earth", npc = 5887, npcName = "Canaga Earthcaller", map = 1411, x = 42.41, y = 69.17, f = "e" },
					{ t = "accept", quest = 1517, title = "Call of Earth", npc = 5887, npcName = "Canaga Earthcaller", map = 1411, x = 42.41, y = 69.17, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1411, x = 43.57, y = 69.85 },
					{ t = "goto", text = "Follow the path up", map = 1411, x = 41.56, y = 73.28 },
					{ t = "goto", text = "Continue up the path", map = 1411, x = 40.74, y = 74.35 },
					{ t = "goto", text = "Follow the path", map = 1411, x = 42.49, y = 74.89 },
					{ t = "use", item = 6635, itemName = "Earth Sapta" },
					{ t = "turnin", quest = 1517, title = "Call of Earth", npc = 5891, npcName = "Minor Manifestation of Earth", map = 1411, x = 44.03, y = 76.2, f = "e" },
					{ t = "accept", quest = 1518, title = "Call of Earth", npc = 5891, npcName = "Minor Manifestation of Earth", map = 1411, x = 44.03, y = 76.2, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Jump down here", map = 1411, x = 43.73, y = 74.92 },
					{ t = "goto", text = "Follow the path", map = 1411, x = 43.49, y = 69.67 },
					{ t = "turnin", quest = 1518, title = "Call of Earth", npc = 5887, npcName = "Canaga Earthcaller", map = 1411, x = 42.41, y = 69.17, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Orc", "Troll" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1411, x = 53.25, y = 42.59 },
					{ t = "accept", quest = 2983, title = "Call of Fire", npc = 3173, npcName = "Swart", map = 1411, x = 54.42, y = 42.58, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 2984, title = "Call of Fire", npc = 3066, npcName = "Narm Skychaser", map = 1412, x = 47.4, y = 62.58, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1411, x = 53.27, y = 42.59, only = { races = { "Orc", "Troll" } } },
					{ t = "goto", text = "Follow the road", map = 1411, x = 50.64, y = 43.97, only = { races = { "Orc", "Troll" } } },
					{ t = "goto", text = "Cross the bridge", map = 1411, x = 34.6, y = 42.31, only = { races = { "Orc", "Troll" } } },
					{ t = "turnin", quest = 2983, title = "Call of Fire", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 56.03, y = 19.89, f = "e", only = { races = { "Orc", "Troll" } } },
					{ t = "turnin", quest = 2984, title = "Call of Fire", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 56.03, y = 19.89, f = "e", only = { races = { "Tauren" } } },
					{ t = "accept", quest = 1524, title = "Call of Fire", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 56.03, y = 19.89, f = "e" },
				},
			},
			{
				note = "On top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1413, x = 62.67, y = 19.22 },
					{ t = "goto", text = "Follow the path up", map = 1411, x = 36.59, y = 57.07 },
					{ t = "goto", text = "Continue up the path", map = 1411, x = 36.61, y = 58.19 },
					{ t = "goto", text = "Continue up the path", map = 1411, x = 37.74, y = 58.24 },
					{ t = "goto", text = "Continue up the path", map = 1411, x = 38.94, y = 57.56 },
					{ t = "goto", text = "Follow the path", map = 1411, x = 39.18, y = 58.63 },
					{ t = "turnin", quest = 1524, title = "Call of Fire", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.55, y = 58.96, f = "e" },
					{ t = "accept", quest = 1525, title = "Call of Fire", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.55, y = 58.96, f = "e" },
				},
			},
			{
				note = "Watch for patrols and respawns while in the area.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1411, x = 39.21, y = 58.52 },
					{ t = "goto", text = "Follow the path", map = 1413, x = 61.47, y = 20.86 },
					{ t = "collect", quest = 1525, item = 5026, itemName = "Fire Tar", oi = 1, map = 1413, x = 54.15, y = 25.01, f = "e" },
				},
			},
			{
				note = "Inside the cave. They seem to mostly be towards the back of the cave. Watch for patrols and respawns while in the area.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1413, x = 62.67, y = 19.23 },
					{ t = "goto", text = "Follow the path", map = 1411, x = 50.78, y = 43.81 },
					{ t = "goto", text = "Continue following the path", map = 1411, x = 54.15, y = 40.72 },
					{ t = "goto", text = "Enter the cave", map = 1411, x = 52.82, y = 28.82 },
					{ t = "goto", text = "Follow the path", map = 1411, x = 53.07, y = 27.09 },
					{ t = "collect", quest = 1525, item = 6652, itemName = "Reagent Pouch", oi = 2, map = 1411, x = 52.12, y = 24.95, f = "e" },
				},
			},
			{
				note = "On top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1411, x = 53.13, y = 27.27 },
					{ t = "goto", text = "Leave the cave", map = 1411, x = 52.83, y = 28.93 },
					{ t = "goto", text = "Jump down onto the huge long rock", map = 1411, x = 51.97, y = 31.29 },
					{ t = "goto", text = "Follow the path up", map = 1411, x = 36.59, y = 57.07 },
					{ t = "goto", text = "Continue up the path", map = 1411, x = 36.61, y = 58.19 },
					{ t = "goto", text = "Continue up the path", map = 1411, x = 37.74, y = 58.24 },
					{ t = "goto", text = "Continue up the path", map = 1411, x = 38.94, y = 57.56 },
					{ t = "goto", text = "Follow the path", map = 1411, x = 39.18, y = 58.63 },
					{ t = "turnin", quest = 1525, title = "Call of Fire", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.55, y = 58.96, f = "e" },
					{ t = "accept", quest = 1526, title = "Call of Fire", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.55, y = 58.96, f = "e" },
				},
			},
			{
				note = "On top of the mountain. It will be immune to fire damage.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1411, x = 38.34, y = 58.52 },
					{ t = "use", item = 6636, itemName = "Fire Sapta" },
					{ t = "collect", quest = 1526, item = 6655, itemName = "Glowing Ember", oi = 1, map = 1411, x = 38.84, y = 58.24, f = "e" },
				},
			},
			{
				note = "On top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1526, title = "Call of Fire", map = 1411, x = 38.95, y = 58.22, f = "e" },
					{ t = "accept", quest = 1527, title = "Call of Fire", map = 1411, x = 38.95, y = 58.22, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1411, x = 39.19, y = 57.81 },
					{ t = "turnin", quest = 1527, title = "Call of Fire", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 56.04, y = 19.89, f = "e" },
				},
			},
			{
				note = "Inside the building. We run back to Crossroads first, instead of hearthing. We are saving your hearthstone to use in Hillsbrad Foothills, to return to Crossroads quickly.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.21, y = 36.95 },
					{ t = "accept", quest = 1528, title = "Call of Water", npc = 5892, npcName = "Searn Firewarder", map = 1454, x = 37.96, y = 37.74, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1528, title = "Call of Water", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.83, y = 43.78, f = "e" },
					{ t = "accept", quest = 1530, title = "Call of Water", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.83, y = 43.78, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1413, x = 46.12, y = 67.29 },
					{ t = "goto", text = "Follow the path up", map = 1413, x = 44.28, y = 77.29 },
					{ t = "turnin", quest = 1530, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
					{ t = "accept", quest = 1535, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "use", item = 7766, itemName = "Empty Brown Waterskin" },
					{ t = "collect", quest = 1535, item = 7769, itemName = "Filled Brown Waterskin", oi = 1, map = 1413, x = 44.19, y = 76.9, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 44.28, y = 77.29 },
					{ t = "turnin", quest = 1535, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
					{ t = "accept", quest = 1536, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "use", item = 7768, itemName = "Empty Red Waterskin" },
					{ t = "collect", quest = 1536, item = 7771, itemName = "Filled Red Waterskin", oi = 1, map = 1424, x = 62.15, y = 20.75, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1413, x = 46.12, y = 67.29 },
					{ t = "goto", text = "Follow the path up", map = 1413, x = 44.28, y = 77.29 },
					{ t = "turnin", quest = 1536, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
					{ t = "accept", quest = 1534, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1413, x = 38.83, y = 58.05 },
					{ t = "use", item = 7767, itemName = "Empty Blue Waterskin" },
					{ t = "collect", quest = 1534, item = 7770, itemName = "Filled Blue Waterskin", oi = 1, map = 1440, x = 33.55, y = 67.44, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1413, x = 46.12, y = 67.29 },
					{ t = "goto", text = "Follow the path up", map = 1413, x = 44.28, y = 77.29 },
					{ t = "turnin", quest = 1534, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
					{ t = "accept", quest = 220, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1413, x = 46.85, y = 65.69 },
					{ t = "turnin", quest = 220, title = "Call of Water", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.83, y = 43.78, f = "e" },
					{ t = "accept", quest = 63, title = "Call of Water", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.83, y = 43.78, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Jump up onto the tree", map = 1421, x = 42.02, y = 40.67 },
					{ t = "goto", text = "Jump down carefully", map = 1421, x = 39.7, y = 40.98 },
					{ t = "goto", text = "Follow the path", map = 1421, x = 39.09, y = 43.05 },
					{ t = "use", item = 6637, itemName = "Water Sapta" },
					{ t = "collect", quest = 63, item = 7812, itemName = "Corrupt Manifestation's Bracers", oi = 1, map = 1421, x = 38.84, y = 44.25, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 63, title = "Call of Water", map = 1421, x = 38.28, y = 44.56, f = "e" },
					{ t = "accept", quest = 100, title = "Call of Water", map = 1421, x = 38.28, y = 44.56, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 100, title = "Call of Water", npc = 5895, npcName = "Minor Manifestation of Water", map = 1421, x = 38.75, y = 44.62, f = "e" },
					{ t = "accept", quest = 96, title = "Call of Water", npc = 5895, npcName = "Minor Manifestation of Water", map = 1421, x = 38.75, y = 44.62, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 96, title = "Call of Water", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.83, y = 43.78, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.25, y = 36.98 },
					{ t = "accept", quest = 1531, title = "Call of Air", npc = 5892, npcName = "Searn Firewarder", map = 1454, x = 37.97, y = 37.73, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1441, x = 54.68, y = 44.78 },
					{ t = "turnin", quest = 1531, title = "Call of Air", npc = 5905, npcName = "Prate Cloudseer", map = 1441, x = 53.54, y = 42.65, f = "e" },
				},
			},
			{
				note = "Refer to the \"Elemental Air\" farming guide to accomplish this. You can also purchase them from the Auction House.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", item = 7069, itemName = "Elemental Air" },
				},
			},
			{
				note = "Refer to the \"Elemental Fire\" farming guide to accomplish this. You can also purchase them from the Auction House.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", item = 7068, itemName = "Elemental Fire" },
				},
			},
			{
				note = "Refer to the \"Elemental Earth\" farming guide to accomplish this. You can also purchase them from the Auction House.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", item = 7067, itemName = "Elemental Earth" },
				},
			},
			{
				note = "Refer to the \"Elemental Water\" farming guide to accomplish this. You can also purchase them from the Auction House.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", item = 7070, itemName = "Elemental Water" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 8410, title = "Elemental Mastery", npc = 3032, npcName = "Beram Skychaser", map = 1456, x = 22.8, y = 19.4, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 8410, title = "Elemental Mastery", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
					{ t = "accept", quest = 8412, title = "Spirit Totem", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 8412, item = 20610, itemName = "Bloodshot Spider Eye", count = 8, oi = 1, map = 1422, x = 33.6, y = 60.4, f = "e" },
				},
			},
			{
				label = "Thick_Black_Claw",
				along = true,
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 8412, item = 20611, itemName = "Thick Black Claw", count = 8, oi = 2, map = 1422, x = 33.6, y = 60.4, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 8412, title = "Spirit Totem", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
					{ t = "accept", quest = 8413, title = "Da Voodoo", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
				},
			},
			{
				note = "The next couple of steps will be taking you to the Sunken Temple dungeon. You will need a group to complete the dungeon as well as the quest. If you don't have a group, wait until you do before continuing.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "complete", quest = 8425, title = "Voodoo Feathers", note = "Click Here to Continue" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
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
				note = "These come from Gasher and Zul'Lor.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 8413, item = 20606, itemName = "Amber Voodoo Feather", count = 2, oi = 1 },
				},
			},
			{
				label = "Blue_Voodoo_Feathers",
				along = true,
				note = "These come from Mijan and Hukku.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 8413, item = 20607, itemName = "Blue Voodoo Feather", count = 2, oi = 2 },
				},
			},
			{
				label = "Green_Voodoo_Feathers",
				along = true,
				note = "These come from Zolo and Loro.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 8413, item = 20608, itemName = "Green Voodoo Feather", count = 2, oi = 3 },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 8413, title = "Da Voodoo", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
				},
			},
		},
	})
end

