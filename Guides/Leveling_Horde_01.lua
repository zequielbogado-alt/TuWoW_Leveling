-- TuWoW_Leveling — Guides/Leveling_Horde_01.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-undead-starter-1-13",
		pack = "guides",
		title = "Undead Starter (Parte 1/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-undead-starter-1-13-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1420,
		version = 1,
		races = { "Scourge" },
		steps = {
			{
				note = "Outside the crypt.",
				goals = {
					{ t = "accept", quest = 363, title = "Rude Awakening", npc = 1568, npcName = "Undertaker Mordo", map = 1420, x = 30.22, y = 71.65, f = "e" },
				},
			},
			{
				note = "Loot items worth at least 10 copper to sell. Allows training an ability early. Increases leveling speed.",
				only = { classes = { "WARRIOR", "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Tirisfal Glades", map = 1420, x = 29.4, y = 69.6 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR", "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 2116, npcName = "Blacksmith Rand", map = 1420, x = 32.38, y = 66.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 363, title = "Rude Awakening", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.84, y = 66.2, f = "e" },
					{ t = "accept", quest = 364, title = "The Mindless Ones", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.84, y = 66.2, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1470, title = "Piercing the Veil", npc = 5667, npcName = "Venya Marthand", map = 1420, x = 30.98, y = 66.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 2126, npcName = "Maximillion", map = 1420, x = 30.91, y = 66.34, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1470, item = 6281, itemName = "Rattlecage Skull", count = 3, oi = 1, map = 1420, x = 32.8, y = 61.19, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1470, title = "Piercing the Veil", npc = 5667, npcName = "Venya Marthand", map = 1420, x = 30.98, y = 66.41, f = "e" },
				},
			},
			{
				note = "Cast Summon Imp.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "complete", quest = 364, title = "The Mindless Ones", note = "Summon Your Imp" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 2119, npcName = "Dannal Stern", map = 1420, x = 32.65, y = 65.61, f = "e" },
				},
			},
			{
				label = "Kill_Mindless_Zombies_And_Wretched_Zombies",
				along = true,
				goals = {
					{ t = "kill", quest = 364, npc = 1501, target = "Mindless Zombie", count = 8, oi = 1, map = 1420, x = 32.6, y = 63.07, f = "e" },
					{ t = "kill", quest = 364, npc = 1502, target = "Wretched Zombie", count = 8, oi = 2, map = 1420, x = 32.6, y = 63.07, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 364, title = "The Mindless Ones", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.84, y = 66.2, f = "e" },
					{ t = "accept", quest = 3901, title = "Rattling the Rattlecages", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.84, y = 66.2, f = "e" },
					{ t = "accept", quest = 3095, title = "Simple Scroll", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.84, y = 66.2, f = "e", only = { classes = { "WARRIOR" } } },
					{ t = "accept", quest = 3099, title = "Tainted Scroll", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.84, y = 66.2, f = "e", only = { classes = { "WARLOCK" } } },
					{ t = "accept", quest = 3096, title = "Encrypted Scroll", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.84, y = 66.2, f = "e", only = { classes = { "ROGUE" } } },
					{ t = "accept", quest = 3097, title = "Hallowed Scroll", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.84, y = 66.2, f = "e", only = { classes = { "PRIEST" } } },
					{ t = "accept", quest = 3098, title = "Glyphic Scroll", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.84, y = 66.2, f = "e", only = { classes = { "MAGE" } } },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 376, title = "The Damned", npc = 1661, npcName = "Novice Elreth", map = 1420, x = 30.86, y = 66.05, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 3098, title = "Glyphic Scroll", npc = 2124, npcName = "Isabella", map = 1420, x = 30.94, y = 66.06, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 2124, npcName = "Isabella", map = 1420, x = 30.94, y = 66.06, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 3099, title = "Tainted Scroll", npc = 2126, npcName = "Maximillion", map = 1420, x = 30.91, y = 66.34, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 3097, title = "Hallowed Scroll", npc = 2123, npcName = "Dark Cleric Duesten", map = 1420, x = 31.11, y = 66.03, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 2123, npcName = "Dark Cleric Duesten", map = 1420, x = 31.11, y = 66.03, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", map = 1420, x = 31.09, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 3901, npc = 1890, target = "Rattlecage Skeleton", count = 12, oi = 1, map = 1420, x = 32.82, y = 61.14, f = "e" },
				},
			},
			{
				label = "Collect_Scavenger_Paws",
				along = true,
				note = "Wolves.",
				goals = {
					{ t = "collect", quest = 376, item = 3265, itemName = "Scavenger Paw", count = 6, oi = 1, map = 1420, x = 32.62, y = 58.62, f = "e" },
				},
			},
			{
				label = "Collect_Duskbat_Wings",
				along = true,
				note = "Bats.",
				goals = {
					{ t = "collect", quest = 376, item = 3264, itemName = "Duskbat Wing", count = 6, oi = 2, map = 1420, x = 32.62, y = 58.62, f = "e" },
				},
			},
			{
				note = "Helps reach level 4 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 3,980", map = 1420, x = 32.62, y = 58.62 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 376, title = "The Damned", npc = 1661, npcName = "Novice Elreth", map = 1420, x = 30.86, y = 66.05, f = "e" },
					{ t = "accept", quest = 6395, title = "Marla's Last Wish", npc = 1661, npcName = "Novice Elreth", map = 1420, x = 30.86, y = 66.05, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3901, title = "Rattling the Rattlecages", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.83, y = 66.2, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 2124, npcName = "Isabella", map = 1420, x = 30.94, y = 66.06, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 2126, npcName = "Maximillion", map = 1420, x = 30.91, y = 66.34, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5749, npcName = "Kayla Smithe", map = 1420, x = 30.81, y = 66.42, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", map = 1420, x = 31.09, y = 66.4, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 2123, npcName = "Dark Cleric Duesten", map = 1420, x = 31.11, y = 66.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 380, title = "Night Web's Hollow", npc = 1570, npcName = "Executor Arren", map = 1420, x = 32.15, y = 66.01, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 3095, title = "Simple Scroll", npc = 2119, npcName = "Dannal Stern", map = 1420, x = 32.69, y = 65.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 2119, npcName = "Dannal Stern", map = 1420, x = 32.69, y = 65.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 3096, title = "Encrypted Scroll", npc = 2122, npcName = "David Trias", map = 1420, x = 32.53, y = 65.65, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 2122, npcName = "David Trias", map = 1420, x = 32.53, y = 65.65, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 3902, title = "Scavenging Deathknell", npc = 1740, npcName = "Deathguard Saltain", map = 1420, x = 31.61, y = 65.6, f = "e" },
				},
			},
			{
				note = "Piles of brown boxes. Near and inside buildings.",
				goals = {
					{ t = "collect", quest = 3902, item = 11127, itemName = "Scavenged Goods", count = 6, oi = 1, map = 1420, x = 32.73, y = 63.5, f = "e" },
				},
			},
			{
				note = "Outside the mine.",
				goals = {
					{ t = "kill", quest = 380, npc = 1504, target = "Young Night Web Spider", count = 10, oi = 1, map = 1420, x = 28.98, y = 57.21, f = "e" },
				},
			},
			{
				label = "Kill_Night_Web_Spiders",
				along = true,
				note = "Inside the mine.",
				goals = {
					{ t = "kill", quest = 380, npc = 1505, target = "Night Web Spider", count = 8, oi = 2, map = 1420, x = 26.84, y = 59.41, f = "e" },
				},
			},
			{
				note = "No death penalty at this level. Fast travel. Inside and outside the mine.",
				goals = {
					{ t = "complete", quest = 380, title = "Night Web's Hollow", note = "Die on Purpose", map = 1420, x = 26.84, y = 59.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 380, title = "Night Web's Hollow", note = "Resurrect at the Spirit Healer", map = 1420, x = 31.24, y = 64.89, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Leave the mine", map = 1420, x = 26.82, y = 59.42 },
					{ t = "turnin", quest = 3902, title = "Scavenging Deathknell", npc = 1740, npcName = "Deathguard Saltain", map = 1420, x = 31.61, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 380, title = "Night Web's Hollow", npc = 1570, npcName = "Executor Arren", map = 1420, x = 32.15, y = 66.01, f = "e" },
					{ t = "accept", quest = 381, title = "The Scarlet Crusade", npc = 1570, npcName = "Executor Arren", map = 1420, x = 32.15, y = 66.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 381, item = 3266, itemName = "Scarlet Armband", count = 12, oi = 1, map = 1420, x = 37.51, y = 67.62, f = "e" },
				},
			},
			{
				note = "Zombie. Walks around.",
				goals = {
					{ t = "collect", quest = 6395, item = 16333, itemName = "Samuel's Remains", map = 1420, x = 36.68, y = 61.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6395, title = "Marla's Last Wish", note = "Bury Samuel's Remains", map = 1420, x = 31.17, y = 65.08, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6395, title = "Marla's Last Wish", npc = 1661, npcName = "Novice Elreth", map = 1420, x = 30.86, y = 66.05, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Skinning" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Herbalism" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Mining" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 5651, title = "In Favor of Darkness", npc = 2123, npcName = "Dark Cleric Duesten", map = 1420, x = 31.11, y = 66.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 381, title = "The Scarlet Crusade", npc = 1570, npcName = "Executor Arren", map = 1420, x = 32.15, y = 66.01, f = "e" },
					{ t = "accept", quest = 382, title = "The Red Messenger", npc = 1570, npcName = "Executor Arren", map = 1420, x = 32.15, y = 66.01, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 7005, itemName = "Skinning Knife", map = 1420, x = 32.28, y = 65.44, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 2901, itemName = "Mining Pick", map = 1420, x = 32.28, y = 65.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 382, item = 2885, itemName = "Scarlet Crusade Documents", oi = 1, map = 1420, x = 36.51, y = 68.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 382, title = "The Red Messenger", npc = 1570, npcName = "Executor Arren", map = 1420, x = 32.15, y = 66.01, f = "e" },
					{ t = "accept", quest = 383, title = "Vital Intelligence", npc = 1570, npcName = "Executor Arren", map = 1420, x = 32.15, y = 66.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8, title = "A Rogue's Deal", npc = 6784, npcName = "Calvin Montague", map = 1420, x = 38.23, y = 56.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 365, title = "Fields of Grief", npc = 1519, npcName = "Deathguard Simmer", map = 1420, x = 40.91, y = 54.16, f = "e" },
				},
			},
			{
				note = "Abomination. Walks along the road. Sometimes leaves the road to collect plants.",
				goals = {
					{ t = "accept", quest = 5481, title = "Gordo's Task", npc = 10666, npcName = "Gordo", map = 1420, x = 43.1, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 404, title = "A Putrid Task", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.44, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 367, title = "A New Plague", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.45, y = 52.4, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", map = 1420, x = 60.23, y = 52.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 383, title = "Vital Intelligence", npc = 1515, npcName = "Executor Zygand", map = 1420, x = 60.59, y = 51.76, f = "e" },
					{ t = "accept", quest = 427, title = "At War With The Scarlet Crusade", npc = 1515, npcName = "Executor Zygand", map = 1420, x = 60.59, y = 51.76, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 2131, npcName = "Austil de Mon", map = 1420, x = 61.86, y = 52.54, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8, title = "A Rogue's Deal", npc = 5688, npcName = "Innkeeper Renee", map = 1420, x = 61.71, y = 52.05, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Gallows' End Tavern", map = 1420, x = 61.71, y = 52.05, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 2128, npcName = "Cain Firesong", map = 1420, x = 61.97, y = 52.47, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 2127, npcName = "Rupert Boch", map = 1420, x = 61.59, y = 52.4, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5750, npcName = "Gina Lang", map = 1420, x = 61.55, y = 52.61, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 2129, npcName = "Dark Cleric Beryl", map = 1420, x = 61.57, y = 52.2, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5651, title = "In Favor of Darkness", npc = 2129, npcName = "Dark Cleric Beryl", map = 1420, x = 61.57, y = 52.19, f = "e" },
					{ t = "accept", quest = 5650, title = "Garments of Darkness", npc = 2129, npcName = "Dark Cleric Beryl", map = 1420, x = 61.57, y = 52.19, f = "e" },
				},
			},
			{
				note = "Cast Lesser Heal (Rank 2) on Deathguard Kel. Cast Power Word: Fortitude on Deathguard Kel.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "complete", quest = 5650, title = "Garments of Darkness", note = "Heal and Fortify Deathguard Kel", map = 1420, x = 59.18, y = 46.5, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5650, title = "Garments of Darkness", npc = 2129, npcName = "Dark Cleric Beryl", map = 1420, x = 61.57, y = 52.19, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 2130, npcName = "Marion Call", map = 1420, x = 61.75, y = 52.0, f = "e" },
				},
			},
			{
				note = "Grey demon dogs.",
				goals = {
					{ t = "collect", quest = 367, item = 2858, itemName = "Darkhound Blood", count = 5, oi = 1, map = 1420, x = 64.93, y = 53.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 367, title = "A New Plague", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.45, y = 52.4, f = "e" },
					{ t = "accept", quest = 368, title = "A New Plague", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.45, y = 52.4, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 375, title = "The Chill of Death", npc = 1521, npcName = "Gretchen Dedmar", map = 1420, x = 61.89, y = 52.73, f = "e" },
				},
			},
			{
				note = "Zombies.",
				goals = {
					{ t = "collect", quest = 404, item = 2855, itemName = "Putrid Claw", count = 7, oi = 1, map = 1420, x = 53.19, y = 51.89, f = "e" },
				},
			},
			{
				label = "Collect_Gloom_Weeds",
				along = true,
				note = "Withered purple plants. Work your way west. notinsticky",
				goals = {
					{ t = "collect", quest = 5481, item = 12737, itemName = "Gloom Weed", count = 3, oi = 1, map = 1420, x = 47.89, y = 55.16, f = "e" },
				},
			},
			{
				label = "Collect_Duskbat_Pelts",
				along = true,
				goals = {
					{ t = "collect", quest = 375, item = 2876, itemName = "Duskbat Pelt", count = 5, oi = 1, map = 1420, x = 46.05, y = 51.33, f = "e" },
				},
			},
			{
				label = "Collect_Tirisfal_Pumpkins",
				along = true,
				goals = {
					{ t = "collect", quest = 365, item = 2846, itemName = "Tirisfal Pumpkin", count = 10, oi = 1, map = 1420, x = 35.96, y = 50.21, f = "e" },
				},
			},
			{
				label = "Kill_Scarlet_Warriors",
				along = true,
				goals = {
					{ t = "kill", quest = 427, npc = 1535, target = "Scarlet Warrior", count = 10, oi = 1, map = 1420, x = 33.24, y = 47.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 354, title = "Deaths in the Family", npc = 1500, npcName = "Coleman Farthing", map = 1420, x = 61.72, y = 52.28, f = "e" },
					{ t = "accept", quest = 362, title = "The Haunted Mills", npc = 1500, npcName = "Coleman Farthing", map = 1420, x = 61.72, y = 52.28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 2320, itemName = "Coarse Thread", map = 1420, x = 61.03, y = 52.37, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 358, title = "Graverobbers", npc = 1499, npcName = "Magistrate Sevren", map = 1420, x = 61.26, y = 50.84, f = "e" },
				},
			},
		},
	})
end

