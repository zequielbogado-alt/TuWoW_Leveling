-- TuWoW_Leveling — Guides/Leveling_Alliance_03.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-human-starter-1-13-part-3",
		pack = "guides",
		title = "Human Starter (Parte 3/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-westfall-13-15",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1429,
		version = 1,
		races = { "Human" },
		steps = {
			{
				note = "On Deeprun Rats. Small grey rats. Ironforge section of the Deeprun Tram.",
				goals = {
					{ t = "use", item = 17117, itemName = "Rat Catcher's Flute" },
					{ t = "complete", quest = 6661, title = "Deeprun Rat Roundup", note = "Capture #5# Rats" },
				},
			},
			{
				note = "Middle platform, near the wall. Ironforge section of the Deeprun Tram.",
				goals = {
					{ t = "turnin", quest = 6661, title = "Deeprun Rat Roundup", npc = 12997, npcName = "Monty" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Train Thrown", map = 1455, x = 62.23, y = 89.62 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Train Two-Handed Maces", map = 1455, x = 61.17, y = 89.52 },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Ironforge", map = 1455, x = 55.5, y = 47.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 433, title = "The Public Servant", npc = 1977, npcName = "Senator Mehr Stonehallow", map = 1426, x = 68.67, y = 55.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 432, title = "Those Blasted Troggs!", npc = 1254, npcName = "Foreman Stonebrow", map = 1426, x = 69.08, y = 56.33, f = "e" },
				},
			},
			{
				note = "More inside the cave nearby.",
				goals = {
					{ t = "kill", quest = 432, npc = 1115, target = "Rockjaw Skullthumper", count = 6, oi = 1, map = 1426, x = 69.17, y = 58.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1426, x = 70.7, y = 56.49 },
					{ t = "turnin", quest = 432, title = "Those Blasted Troggs!", npc = 1254, npcName = "Foreman Stonebrow", map = 1426, x = 69.08, y = 56.33, f = "e" },
				},
			},
			{
				label = "Kill_Rockjaw_Bonesnappers",
				along = true,
				goals = {
					{ t = "kill", quest = 433, npc = 1117, target = "Rockjaw Bonesnapper", count = 10, oi = 1, map = 1426, x = 75.24, y = 56.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 433, title = "The Public Servant", npc = 1977, npcName = "Senator Mehr Stonehallow", map = 1426, x = 68.67, y = 55.97, f = "e" },
				},
			},
			{
				note = "Follow the road through the tunnel.",
				goals = {
					{ t = "accept", quest = 419, title = "The Lost Pilot", npc = 1960, npcName = "Pilot Hammerfoot", map = 1426, x = 83.89, y = 39.19, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 419, title = "The Lost Pilot", map = 1426, x = 79.67, y = 36.17, f = "e" },
					{ t = "accept", quest = 417, title = "A Pilot's Revenge", map = 1426, x = 79.67, y = 36.17, f = "e" },
				},
			},
			{
				note = "White bear. Walks around.",
				goals = {
					{ t = "collect", quest = 417, item = 3183, itemName = "Mangy Claw", oi = 1, map = 1426, x = 78.97, y = 37.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 417, title = "A Pilot's Revenge", npc = 1960, npcName = "Pilot Hammerfoot", map = 1426, x = 83.89, y = 39.19, f = "e" },
				},
			},
			{
				note = "Run through the tunnel. Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 353, title = "Stormpike's Delivery", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.76, y = 18.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Thelsamar", map = 1432, x = 33.94, y = 50.95, f = "e" },
				},
			},
			{
				label = "Accept_Mountaineer_Stormpikes_Task",
				along = true,
				note = "Walks a large path.",
				goals = {
					{ t = "accept", quest = 416, title = "Rat Catching", npc = 1340, npcName = "Mountaineer Kadrell", map = 1426, x = 95.4, y = 46.5, f = "e" },
					{ t = "accept", quest = 1339, title = "Mountaineer Stormpike's Task", npc = 1340, npcName = "Mountaineer Kadrell", map = 1426, x = 95.4, y = 46.5, f = "e" },
				},
			},
			{
				note = "Rat people.",
				goals = {
					{ t = "collect", quest = 416, item = 3110, itemName = "Tunnel Rat Ear", count = 12, oi = 1, map = 1432, x = 26.99, y = 43.26, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1339, title = "Mountaineer Stormpike's Task", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.76, y = 18.4, f = "e" },
					{ t = "accept", quest = 1338, title = "Stormpike's Order", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.76, y = 18.4, f = "e" },
					{ t = "accept", quest = 307, title = "Filthy Paws", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.76, y = 18.4, f = "e" },
				},
			},
			{
				note = "Walks a large path.",
				goals = {
					{ t = "turnin", quest = 416, title = "Rat Catching", npc = 1340, npcName = "Mountaineer Kadrell", map = 1426, x = 95.4, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 224, title = "In Defense of the King's Lands", npc = 1089, npcName = "Mountaineer Cobbleflint", map = 1432, x = 22.07, y = 73.12, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 267, title = "The Trogg Threat", npc = 1092, npcName = "Captain Rugelfuss", map = 1432, x = 23.23, y = 73.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the road to the path here", map = 1432, x = 29.32, y = 66.73 },
					{ t = "collect", quest = 267, item = 2536, itemName = "Trogg Stone Tooth", count = 8, oi = 1, map = 1432, x = 32.79, y = 74.99, f = "e" },
				},
			},
			{
				label = "Kill_Stonesplinter_Troggs_And_Scouts",
				along = true,
				goals = {
					{ t = "kill", quest = 224, npc = 1161, target = "Stonesplinter Trogg", count = 10, oi = 1, map = 1432, x = 32.79, y = 74.99, f = "e" },
					{ t = "kill", quest = 224, npc = 1162, target = "Stonesplinter Scout", count = 10, oi = 2, map = 1432, x = 32.79, y = 74.99, f = "e" },
				},
			},
			{
				label = "Collect_Linen_Cloth_Paladin",
				along = true,
				note = "Needed for class quest soon. Don't vendor them.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 1644, item = 2589, itemName = "Linen Cloth", count = 10, map = 1432, x = 32.79, y = 74.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave Stonesplinter Valley and follow the road", map = 1432, x = 30.57, y = 69.69 },
					{ t = "turnin", quest = 224, title = "In Defense of the King's Lands", npc = 1089, npcName = "Mountaineer Cobbleflint", map = 1432, x = 22.07, y = 73.13, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 267, title = "The Trogg Threat", npc = 1092, npcName = "Captain Rugelfuss", map = 1432, x = 23.23, y = 73.67, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5498, npcName = "Elsharin", map = 1453, x = 48.21, y = 87.22, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.23, y = 81.82 },
					{ t = "train", npc = 461, npcName = "Demisette Cloyce", map = 1453, x = 39.25, y = 84.96, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5520, npcName = "Spackle Thornberry", map = 1453, x = 39.54, y = 84.51, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.97, y = 51.06 },
					{ t = "train", npc = 5484, npcName = "Brother Benjamin", map = 1453, x = 51.61, y = 46.35, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.97, y = 51.06 },
					{ t = "accept", quest = 1641, title = "The Tome of Divinity", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.48, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1641, title = "The Tome of Divinity", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.48, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "use", item = 6775, itemName = "Tome of Divinity" },
					{ t = "accept", quest = 1642, title = "The Tome of Divinity" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1642, title = "The Tome of Divinity", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.48, f = "e" },
					{ t = "accept", quest = 1643, title = "The Tome of Divinity", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.48, y = 47.48, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5492, npcName = "Katherine the Pure", map = 1453, x = 48.47, y = 49.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1338, title = "Stormpike's Order", npc = 5413, npcName = "Furen Longbeard", map = 1453, x = 64.6, y = 37.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 5515, npcName = "Einris Brightspear", map = 1453, x = 67.32, y = 36.23, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 2879, npcName = "Karrina Mekenda", map = 1453, x = 67.28, y = 36.78, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 5479, npcName = "Wu Shen", map = 1453, x = 80.5, y = 59.86, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 918, npcName = "Osborne the Night Man", map = 1453, x = 77.38, y = 65.3, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1643, title = "The Tome of Divinity", npc = 6174, npcName = "Stephanie Turner", map = 1453, x = 63.82, y = 72.2, f = "e" },
					{ t = "accept", quest = 1644, title = "The Tome of Divinity", npc = 6174, npcName = "Stephanie Turner", map = 1453, x = 63.82, y = 72.2, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1644, title = "The Tome of Divinity", npc = 6174, npcName = "Stephanie Turner", map = 1453, x = 63.82, y = 72.2, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1453, x = 67.94, y = 72.62 },
					{ t = "turnin", quest = 6261, title = "Dungar Longdrink", npc = 352, npcName = "Dungar Longdrink", map = 1453, x = 70.91, y = 72.5, f = "e" },
					{ t = "accept", quest = 6285, title = "Return to Lewis", npc = 352, npcName = "Dungar Longdrink", map = 1453, x = 70.91, y = 72.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6285, title = "Return to Lewis", npc = 491, npcName = "Quartermaster Lewis", map = 1436, x = 57.0, y = 47.17, f = "e" },
				},
			},
		},
	})
end

