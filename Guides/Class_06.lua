-- TuWoW_Leveling — Guides/Class_06.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-warlock-class-quests",
		pack = "guides",
		title = "Warlock Class Quests (Parte 1/2)",
		category = "Class",
		faction = "Alliance",
		next = "zygor/leveling/a-warlock-class-quests-part-2",
		author = "TuWoW & Zygor",
		zone = 1429,
		version = 1,
		classes = { "WARLOCK" },
		steps = {
			{
				only = { races = { "Human" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1598, title = "The Stolen Tome", npc = 459, npcName = "Drusilla La Salle", map = 1429, x = 49.87, y = 42.65, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1598, item = 6785, itemName = "Powers of the Void", oi = 1, map = 1429, x = 56.71, y = 43.95, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1598, title = "The Stolen Tome", npc = 459, npcName = "Drusilla La Salle", map = 1429, x = 49.87, y = 42.65, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1599, title = "Beginnings", npc = 460, npcName = "Alamar Grimm", map = 1426, x = 28.59, y = 66.23, f = "e" },
				},
			},
			{
				note = "Inside the cave. There's only a few of them.",
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1426, x = 26.8, y = 79.86 },
					{ t = "goto", text = "Follow the path", map = 1426, x = 28.0, y = 81.05 },
					{ t = "collect", quest = 1599, item = 6753, itemName = "Feather Charm", count = 3, oi = 1, map = 1426, x = 28.73, y = 82.58, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "complete", quest = 1599, title = "Beginnings", note = "Leave the cave", map = 1426, x = 26.8, y = 79.86, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1599, title = "Beginnings", npc = 460, npcName = "Alamar Grimm", map = 1426, x = 28.59, y = 66.23, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1426, x = 47.2, y = 41.7 },
					{ t = "goto", text = "Enter Ironforge", map = 1426, x = 53.47, y = 34.9 },
					{ t = "accept", quest = 1715, title = "The Slaughtered Lamb", npc = 6120, npcName = "Lago Blackwrench", map = 1455, x = 47.63, y = 9.26, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1455, x = 72.81, y = 50.26 },
					{ t = "goto", text = "Enter the Deeprun Tram", map = 1455, x = 77.02, y = 51.26 },
					{ t = "complete", quest = 1715, title = "The Slaughtered Lamb", note = "Click Here After Entering Deeprun Tramp" },
				},
			},
			{
				note = "Ride the Deeprun Tram from Ironforge to Stormwind City.",
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "complete", quest = 1715, title = "The Slaughtered Lamb", note = "Click Here After Riding the Tram" },
				},
			},
			{
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "complete", quest = 1715, title = "The Slaughtered Lamb", note = "Enter Stormwind City", map = 1453, x = 68.38, y = 31.68, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.24, y = 81.82 },
					{ t = "goto", text = "Follow the path down", map = 1453, x = 40.89, y = 83.57 },
					{ t = "turnin", quest = 1715, title = "The Slaughtered Lamb", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.23, f = "e" },
					{ t = "accept", quest = 1688, title = "Surena Caledon", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.23, f = "e" },
				},
			},
			{
				note = "Inside the building. There are other enemies inside the building that will pull with her. If you clear the outer area, you might be able to utilize fear. You may need help with this.",
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1453, x = 42.23, y = 81.84 },
					{ t = "goto", text = "Leave Stormwind City", map = 1453, x = 74.63, y = 93.33 },
					{ t = "goto", text = "Follow the road", map = 1429, x = 42.68, y = 67.14 },
					{ t = "goto", text = "Follow the path", map = 1429, x = 64.57, y = 74.0 },
					{ t = "goto", text = "Enter the building", map = 1429, x = 70.93, y = 80.43 },
					{ t = "collect", quest = 1688, item = 6810, itemName = "Surena's Choker", oi = 1, map = 1429, x = 71.02, y = 80.78, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1429, x = 65.65, y = 74.1 },
					{ t = "goto", text = "Continue following the road", map = 1429, x = 42.11, y = 64.65 },
					{ t = "goto", text = "Enter Stormwind City", map = 1429, x = 32.09, y = 49.38 },
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.23, y = 81.84 },
					{ t = "turnin", quest = 1688, title = "Surena Caledon", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.23, f = "e" },
					{ t = "accept", quest = 1689, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.23, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1453, x = 39.06, y = 85.81 },
					{ t = "complete", quest = 1689, title = "The Binding", note = "Run down the stairs", map = 1453, x = 38.47, y = 85.27, f = "e" },
				},
			},
			{
				note = "Use it while standing on the pink symbol on the ground. Downstairs inside the building, inside the crypt. Don't forget to summon your imp.",
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Run down the stairs", map = 1453, x = 39.91, y = 85.82 },
					{ t = "use", item = 6928, itemName = "Bloodstone Choker" },
					{ t = "kill", quest = 1689, npc = 5676, target = "Summoned Voidwalker", oi = 1, map = 1453, x = 39.11, y = 84.37, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1453, x = 39.82, y = 86.21 },
					{ t = "complete", quest = 1689, title = "The Binding", note = "Run up the stairs", map = 1453, x = 37.71, y = 86.09, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building, in the basement above the crypt.",
				only = { races = { "Gnome" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1689, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.2, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { races = { "Human" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1429, x = 42.95, y = 65.65 },
					{ t = "accept", quest = 1685, title = "Gakin's Summons", npc = 6121, npcName = "Remen Marcot", map = 1429, x = 44.49, y = 66.27, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.23, y = 81.84 },
					{ t = "turnin", quest = 1685, title = "Gakin's Summons", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.23, f = "e" },
					{ t = "accept", quest = 1688, title = "Surena Caledon", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.23, f = "e" },
				},
			},
			{
				note = "Inside the building. There are other enemies inside the building that will pull with her. If you clear the outer area, you might be able to utilize fear. You may need help with this.",
				only = { races = { "Human" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1453, x = 42.23, y = 81.84 },
					{ t = "goto", text = "Leave Stormwind City", map = 1453, x = 74.63, y = 93.33 },
					{ t = "goto", text = "Follow the road", map = 1429, x = 42.68, y = 67.14 },
					{ t = "goto", text = "Follow the path", map = 1429, x = 64.57, y = 74.0 },
					{ t = "goto", text = "Enter the building", map = 1429, x = 70.93, y = 80.43 },
					{ t = "collect", quest = 1688, item = 6810, itemName = "Surena's Choker", oi = 1, map = 1429, x = 71.02, y = 80.78, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Follow the road", map = 1429, x = 65.65, y = 74.1 },
					{ t = "goto", text = "Continue following the road", map = 1429, x = 42.11, y = 64.65 },
					{ t = "goto", text = "Enter Stormwind City", map = 1429, x = 32.09, y = 49.38 },
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.23, y = 81.84 },
					{ t = "turnin", quest = 1688, title = "Surena Caledon", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.23, f = "e" },
					{ t = "accept", quest = 1689, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.23, f = "e" },
				},
			},
			{
				note = "Use it while standing on the pink symbol on the ground. Downstairs inside the building, inside the crypt. Don't forget to summon your imp.",
				only = { races = { "Human" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1453, x = 39.06, y = 85.81 },
					{ t = "goto", text = "Run down the stairs", map = 1453, x = 38.47, y = 85.27 },
					{ t = "goto", text = "Run down the stairs", map = 1453, x = 39.91, y = 85.82 },
					{ t = "use", item = 6928, itemName = "Bloodstone Choker" },
					{ t = "kill", quest = 1689, npc = 5676, target = "Summoned Voidwalker", map = 1453, x = 39.11, y = 84.37, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building, in the basement above the crypt.",
				only = { races = { "Human" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1453, x = 39.82, y = 86.21 },
					{ t = "goto", text = "Run up the stairs", map = 1453, x = 37.71, y = 86.09 },
					{ t = "turnin", quest = 1689, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.2, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1717, title = "Gakin's Summons", npc = 6120, npcName = "Lago Blackwrench", map = 1455, x = 47.62, y = 9.26, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.23, y = 81.83 },
					{ t = "turnin", quest = 1717, title = "Gakin's Summons", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.23, f = "e" },
					{ t = "accept", quest = 1716, title = "Devourer of Souls", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.23, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1453, x = 42.23, y = 81.83 },
					{ t = "goto", text = "Follow the road", map = 1439, x = 39.98, y = 47.69 },
					{ t = "goto", text = "Enter Ashenvale", map = 1439, x = 43.05, y = 93.5 },
					{ t = "goto", text = "Follow the road", map = 1440, x = 29.63, y = 17.12 },
					{ t = "getfp", location = "Astranaar", map = 1440, x = 34.41, y = 47.99, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1440, x = 38.91, y = 57.93 },
					{ t = "goto", text = "Follow the road", map = 1440, x = 67.13, y = 71.87 },
					{ t = "goto", text = "Enter the Barrens", map = 1413, x = 48.99, y = 5.39 },
					{ t = "goto", text = "Follow the road", map = 1413, x = 48.55, y = 13.02 },
					{ t = "goto", text = "Avoid the Crossroads", map = 1413, x = 53.91, y = 30.0 },
					{ t = "goto", text = "Follow the road", map = 1413, x = 50.43, y = 37.77 },
					{ t = "turnin", quest = 1716, title = "Devourer of Souls", npc = 6244, npcName = "Takar the Seer", map = 1413, x = 49.31, y = 57.1, f = "e" },
					{ t = "accept", quest = 1738, title = "Heartswood", npc = 6244, npcName = "Takar the Seer", map = 1413, x = 49.31, y = 57.1, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1413, x = 51.03, y = 50.04 },
					{ t = "goto", text = "Avoid the Crossroads", map = 1413, x = 53.68, y = 29.52 },
					{ t = "goto", text = "Follow the road", map = 1413, x = 51.18, y = 15.34 },
					{ t = "goto", text = "Enter Ashenvale", map = 1413, x = 48.98, y = 5.37 },
					{ t = "goto", text = "Follow the road", map = 1440, x = 68.53, y = 84.01 },
					{ t = "goto", text = "Continue following the road", map = 1440, x = 66.87, y = 71.29 },
					{ t = "goto", text = "Follow the path", map = 1440, x = 26.14, y = 35.41 },
					{ t = "collect", quest = 1738, item = 6912, itemName = "Heartswood", oi = 1, map = 1440, x = 31.49, y = 31.45, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1440, x = 25.58, y = 36.45 },
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.23, y = 81.83 },
					{ t = "turnin", quest = 1738, title = "Heartswood", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.23, f = "e" },
					{ t = "accept", quest = 1739, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.23, f = "e" },
				},
			},
			{
				note = "Use it while standing on the pink symbol on the ground. Downstairs inside the building, inside the crypt.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1453, x = 38.99, y = 85.89 },
					{ t = "goto", text = "Run down the stairs", map = 1453, x = 38.48, y = 85.28 },
					{ t = "goto", text = "Run down the stairs", map = 1453, x = 39.92, y = 85.81 },
					{ t = "use", item = 6913, itemName = "Heartswood Core" },
					{ t = "kill", quest = 1739, npc = 5677, target = "Summoned Succubus", oi = 1, map = 1453, x = 39.11, y = 84.37, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building, in the basement above the crypt.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1453, x = 39.82, y = 86.21 },
					{ t = "goto", text = "Run up the stairs", map = 1453, x = 37.71, y = 86.09 },
					{ t = "turnin", quest = 1739, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.23, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.19, y = 81.83 },
					{ t = "accept", quest = 1798, title = "Seeking Strahad", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.22, y = 85.21, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 61.93, y = 36.72 },
					{ t = "turnin", quest = 1798, title = "Seeking Strahad", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
					{ t = "accept", quest = 1758, title = "Tome of the Cabal", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1758, title = "Tome of the Cabal", npc = 6294, npcName = "Krom Stoutarm", map = 1455, x = 74.21, y = 9.42, f = "e" },
					{ t = "accept", quest = 1802, title = "Tome of the Cabal", npc = 6294, npcName = "Krom Stoutarm", map = 1455, x = 74.21, y = 9.42, f = "e" },
				},
			},
			{
				note = "It looks like a blue book on the ground next to some crates. Try to pull the murlocs away one at a time when possible.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1424, x = 36.94, y = 65.37 },
					{ t = "collect", quest = 1802, item = 6931, itemName = "Moldy Tome", oi = 1, map = 1424, x = 27.78, y = 72.78, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1441, x = 44.09, y = 37.29 },
					{ t = "collect", quest = 1802, item = 6997, itemName = "Tattered Manuscript", oi = 2, map = 1441, x = 43.43, y = 32.69, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1802, title = "Tome of the Cabal", npc = 6294, npcName = "Krom Stoutarm", map = 1455, x = 74.21, y = 9.42, f = "e" },
					{ t = "accept", quest = 1804, title = "Tome of the Cabal", npc = 6294, npcName = "Krom Stoutarm", map = 1455, x = 74.21, y = 9.42, f = "e" },
				},
			},
			{
				note = "They drop from Dragonmaw Bonewarders and Shadowwarders.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1437, x = 42.83, y = 41.04 },
					{ t = "collect", quest = 1804, item = 6930, itemName = "Rod of Channeling", count = 3, oi = 1, map = 1437, x = 45.09, y = 43.08, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 61.93, y = 36.72 },
					{ t = "turnin", quest = 1804, title = "Tome of the Cabal", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
					{ t = "accept", quest = 1471, title = "The Binding", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
				},
			},
			{
				note = "Use it inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 6999, itemName = "Tome of the Cabal" },
					{ t = "kill", quest = 1471, npc = 6268, target = "Summoned Felhunter", oi = 1, map = 1413, x = 62.6, y = 35.28, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1471, title = "The Binding", npc = 6251, npcName = "Strahad Farsan", map = 1413, x = 62.63, y = 35.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.17, y = 81.88 },
					{ t = "accept", quest = 4487, title = "Summon Felsteed", npc = 461, npcName = "Demisette Cloyce", map = 1453, x = 39.25, y = 84.97, f = "e" },
					{ t = "accept", quest = 4488, title = "Summon Felsteed", npc = 461, npcName = "Demisette Cloyce", map = 1453, x = 39.25, y = 84.97, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 61.93, y = 36.72 },
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
				note = "Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 8420, item = 14256, itemName = "Felcloth" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 7601, title = "What Niby Commands", npc = 14469, npcName = "Niby the Almighty", map = 1448, x = 41.38, y = 44.86, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 7601, title = "What Niby Commands", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
					{ t = "accept", quest = 7602, title = "Flawless Fel Essence", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
					{ t = "accept", quest = 8420, title = "Hot and Itchy", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 8420, title = "Hot and Itchy", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
					{ t = "accept", quest = 8421, title = "The Wrong Stuff", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 8421, item = 20614, itemName = "Bloodvenom Essence", count = 4, oi = 2, map = 1448, x = 40.92, y = 46.83, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 8421, item = 20613, itemName = "Rotting Wood", count = 10, oi = 1, map = 1448, x = 46.89, y = 24.16, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 8421, title = "The Wrong Stuff", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
					{ t = "accept", quest = 8422, title = "Trolls of a Feather", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
				},
			},
			{
				note = "They are found throughout the Shadow Hold. Watch for patrols and respawns while in the area.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1448, x = 35.39, y = 58.54 },
					{ t = "collect", quest = 7602, item = 18622, itemName = "Flawless Fel Essence (Jaedenar)", oi = 2, map = 1448, x = 36.25, y = 55.94, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 7602, item = 18624, itemName = "Flawless Fel Essence (Azshara)", oi = 1, map = 1447, x = 52.03, y = 18.65, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 7602, item = 18623, itemName = "Flawless Fel Essence (Dark Portal)", oi = 3, map = 1419, x = 61.32, y = 54.18, f = "e" },
				},
			},
			{
				note = "The next couple of steps will be taking you to the Sunken Temple dungeon. You will need a group to complete the dungeon as well as the quest. If you don't have a group, wait until you do before continuing.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "complete", quest = 8236, title = "The Azure Key", note = "Click Here to Continue" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
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
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 8422, item = 20606, itemName = "Amber Voodoo Feather", count = 2, oi = 1 },
				},
			},
			{
				label = "Blue_Voodoo_Feathers",
				along = true,
				note = "These come from Mijan and Hukku.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 8422, item = 20607, itemName = "Blue Voodoo Feather", count = 2, oi = 2 },
				},
			},
			{
				label = "Green_Voodoo_Feathers",
				along = true,
				note = "These come from Zolo and Loro.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 8422, item = 20608, itemName = "Green Voodoo Feather", count = 2, oi = 3 },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 7602, title = "Flawless Fel Essence", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
					{ t = "turnin", quest = 8422, title = "Trolls of a Feather", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
					{ t = "accept", quest = 7603, title = "Kroshius' Infernal Core", npc = 14470, npcName = "Impsy", map = 1448, x = 41.36, y = 45.02, f = "e" },
				},
			},
			{
				note = "You may need help.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1448, x = 38.76, y = 41.7 },
					{ t = "goto", text = "Continue following the road", map = 1448, x = 39.01, y = 37.86 },
					{ t = "goto", text = "Follow the path", map = 1448, x = 41.25, y = 36.95 },
					{ t = "use", item = 18626, itemName = "Fel Fire" },
					{ t = "collect", quest = 7603, item = 18625, itemName = "Kroshius' Infernal Core", oi = 1, map = 1448, x = 45.73, y = 34.81, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 7603, title = "Kroshius' Infernal Core", npc = 14469, npcName = "Niby the Almighty", map = 1448, x = 41.38, y = 44.86, f = "e" },
				},
			},
			{
				note = "These are gathered with the Skinning profession. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 7628, item = 15416, itemName = "Black Dragonscale", count = 35 },
				},
			},
			{
				note = "These are with the Alchemy profession. It takes 3 Ghost Mushrooms and a Crystal Vial to make one. You can also purchase them from the Auction House.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 7626, item = 9264, itemName = "Elixir of Shadow Power", count = 10 },
				},
			},
			{
				note = "If you have the Enchanting profession, use your Disenchant ability on level 51-60 blue weapons and armor. You can also buy them from the Auction House.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 7627, item = 14344, itemName = "Large Brilliant Shard", count = 6 },
				},
			},
			{
				note = "If you have the Mining profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 7627, item = 11370, itemName = "Dark Iron Ore", count = 25 },
				},
			},
			{
				note = "These are with the Alchemy profession. It takes 1 Thorium Bar and 1 Arcane Crystal to make one. Try to find a Alchemist to create one for you. You can also purchase them from the Auction House.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 7630, item = 12360, itemName = "Arcanite Bar", count = 3 },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 7562, title = "Mor'zul Bloodbringer", npc = 5520, npcName = "Spackle Thornberry", map = 1453, x = 39.53, y = 84.53, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1428, x = 15.46, y = 40.26 },
					{ t = "turnin", quest = 7562, title = "Mor'zul Bloodbringer", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
					{ t = "accept", quest = 7563, title = "Rage of Blood", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
				},
			},
			{
				note = "Watch for respawns while in the area.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1452, x = 65.04, y = 18.78 },
					{ t = "collect", item = 18590, itemName = "Raging Beast's Blood", count = 30, map = 1452, x = 63.65, y = 16.33, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1428, x = 15.46, y = 40.26 },
					{ t = "turnin", quest = 7563, title = "Rage of Blood", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
					{ t = "accept", quest = 7564, title = "Wildeyes", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 7564, title = "Wildeyes", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
					{ t = "accept", quest = 7623, title = "Lord Banehollow", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 7626, title = "Bell of Dethmoora", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
					{ t = "accept", quest = 7627, title = "Wheel of the Black March", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
					{ t = "accept", quest = 7628, title = "Doomsday Candle", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 7626, title = "Bell of Dethmoora", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
					{ t = "turnin", quest = 7627, title = "Wheel of the Black March", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
					{ t = "turnin", quest = 7628, title = "Doomsday Candle", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
					{ t = "accept", quest = 7630, title = "Arcanite", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 7630, title = "Arcanite", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "buy", item = 18802, itemName = "Shadowy Potion", count = 6, map = 1428, x = 12.43, y = 31.63, f = "e" },
				},
			},
			{
				note = "use it before you enter Shadow Hold. It will make most enemies inside friendly for 20 minutes.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 18802, itemName = "Shadowy Potion" },
					{ t = "goto", text = "Enter the building", map = 1448, x = 35.42, y = 58.61 },
					{ t = "goto", text = "Run down the ramp", map = 1448, x = 35.47, y = 58.18 },
					{ t = "goto", text = "Run down the ramp", map = 1448, x = 36.04, y = 56.42 },
					{ t = "goto", text = "Run up the ramp", map = 1448, x = 36.69, y = 55.99 },
					{ t = "goto", text = "Follow the path down", map = 1448, x = 36.64, y = 54.91 },
					{ t = "complete", quest = 7623, title = "Lord Banehollow", note = "Run down the ramp", map = 1448, x = 38.19, y = 54.1, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1448, x = 37.1, y = 54.04 },
					{ t = "goto", text = "Cross the water", map = 1448, x = 37.61, y = 52.21 },
					{ t = "goto", text = "Follow the path up", map = 1448, x = 36.26, y = 52.52 },
					{ t = "goto", text = "Run down the ramp", map = 1448, x = 37.2, y = 50.82 },
					{ t = "complete", quest = 7623, title = "Lord Banehollow", note = "Continue down the ramp", map = 1448, x = 38.9, y = 49.72, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1448, x = 39.85, y = 49.23 },
					{ t = "goto", text = "Follow the path", map = 1448, x = 40.04, y = 47.8 },
					{ t = "goto", text = "Follow the path up", map = 1448, x = 38.56, y = 46.06 },
					{ t = "goto", text = "Follow the path up", map = 1448, x = 37.43, y = 46.24 },
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 38.03, y = 46.52 },
					{ t = "complete", quest = 7623, title = "Lord Banehollow", note = "Cross the bridge", map = 1448, x = 37.33, y = 47.22, f = "e" },
				},
			},
			{
				note = "You need to have this buff for the next step.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 18802, itemName = "Shadowy Potion" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 7623, title = "Lord Banehollow", npc = 9516, npcName = "Lord Banehollow", map = 1448, x = 35.93, y = 44.41, f = "e" },
					{ t = "accept", quest = 7624, title = "Ulathek the Traitor", npc = 9516, npcName = "Lord Banehollow", map = 1448, x = 35.93, y = 44.41, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 36.2, y = 46.09 },
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 37.95, y = 47.27 },
					{ t = "goto", text = "Run down the ramp", map = 1448, x = 37.94, y = 45.39 },
					{ t = "goto", text = "Follow the path", map = 1448, x = 37.65, y = 46.62 },
					{ t = "goto", text = "Continue following the path", map = 1448, x = 39.57, y = 47.05 },
					{ t = "complete", quest = 7624, title = "Ulathek the Traitor", note = "Cross the bridge", map = 1448, x = 40.06, y = 48.94, f = "e" },
					{ t = "complete", quest = 7624, title = "Ulathek the Traitor", note = "Remove the Taint of Shadow buff", map = 1448, x = 39.89, y = 49.17, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 40.02, y = 48.99 },
					{ t = "collect", quest = 7624, item = 18719, itemName = "The Traitor's Heart", oi = 1, map = 1448, x = 40.77, y = 48.42, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 18802, itemName = "Shadowy Potion" },
					{ t = "complete", quest = 7624, title = "Ulathek the Traitor", note = "Get the Taint of Shadow Buff" },
				},
			},
		},
	})
end

