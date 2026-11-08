-- TuWoW_Leveling — Guides/Leveling_Horde_01.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-undead-1-13",
		pack = "guides",
		title = "Undead (1-13) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-undead-1-13-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1420,
		version = 1,
		races = { "Scourge" },
		steps = {
			{
				goals = {
					{ t = "accept", quest = 363, title = "Rude Awakening", npc = 1568, npcName = "Undertaker Mordo", map = 1420, x = 29.99, y = 71.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 363, title = "Rude Awakening", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.8, y = 66.2, f = "e" },
					{ t = "accept", quest = 364, title = "The Mindless Ones", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.8, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 364, target = "Wretched Ghoul", count = 5, oi = 2, map = 1420, x = 31.8, y = 63.7, f = "e" },
					{ t = "kill", quest = 364, target = "Mindless Zombie", count = 5, oi = 1, map = 1420, x = 31.8, y = 63.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 2, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 364, title = "The Mindless Ones", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.8, y = 66.2, f = "e" },
					{ t = "accept", quest = 3901, title = "Rattling the Rattlecages", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.8, y = 66.2, f = "e" },
					{ t = "accept", quest = 376, title = "The Damned", npc = 1661, npcName = "Novice Elreth", map = 1420, x = 30.8, y = 66.2, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 3095, title = "Simple Scroll", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.8, y = 66.2, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 3099, title = "Tainted Scroll", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.8, y = 66.2, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 3096, title = "Encrypted Scroll", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.8, y = 66.2, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 3099, title = "Tainted Scroll", npc = 2126, npcName = "Maximillion", map = 1420, x = 30.9, y = 66.3, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 364, title = "The Mindless Ones", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.8, y = 66.2, f = "e" },
					{ t = "accept", quest = 3901, title = "Rattling the Rattlecages", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.8, y = 66.2, f = "e" },
					{ t = "accept", quest = 376, title = "The Damned", npc = 1661, npcName = "Novice Elreth", map = 1420, x = 30.8, y = 66.2, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 3097, title = "Hallowed Scroll", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.8, y = 66.2, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 3098, title = "Glyphic Scroll", npc = 1661, npcName = "Novice Elreth", map = 1420, x = 30.8, y = 66.2, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 3095, title = "Simple Scroll", npc = 2119, npcName = "Dannal Stern", map = 1420, x = 32.7, y = 65.6, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 3096, title = "Encrypted Scroll", npc = 2122, npcName = "David Trias", map = 1420, x = 32.5, y = 65.7, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 3097, title = "Hallowed Scroll", npc = 2123, npcName = "Dark Cleric Duesten", map = 1420, x = 31.1, y = 66.0, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 3098, title = "Glyphic Scroll", npc = 2124, npcName = "Isabella", map = 1420, x = 30.9, y = 66.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 3901, target = "Rattlecage Skeleton", count = 8, oi = 1, map = 1420, x = 32.5, y = 61.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 376, itemName = "Scavenger Paw", count = 6, oi = 1, map = 1420, x = 31.7, y = 58.7, f = "e" },
					{ t = "collect", quest = 376, itemName = "Duskbat Wing", count = 6, oi = 2, map = 1420, x = 31.7, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 376, title = "The Damned", npc = 1661, npcName = "Novice Elreth", map = 1420, x = 30.8, y = 66.2, f = "e" },
					{ t = "accept", quest = 6395, title = "Marla's Last Wish", npc = 1661, npcName = "Novice Elreth", map = 1420, x = 30.8, y = 66.2, f = "e" },
					{ t = "turnin", quest = 3901, title = "Rattling the Rattlecages", npc = 1569, npcName = "Shadow Priest Sarvis", map = 1420, x = 30.8, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 380, title = "Night Web's Hollow", npc = 1570, npcName = "Executor Arren", map = 1420, x = 32.2, y = 66.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3902, title = "Scavenging Deathknell", npc = 1740, npcName = "Deathguard Saltain", map = 1420, x = 31.6, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3902, itemName = "Scavenged Goods", count = 6, oi = 1, map = 1420, x = 33.2, y = 63.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 380, target = "Young Night Web Spider", count = 8, oi = 1, map = 1420, x = 29.4, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 4, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 26.9,59.4",
				goals = {
					{ t = "kill", quest = 380, target = "Night Web Spider", count = 5, oi = 2, map = 1420, x = 26.9, y = 59.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6395, item = 16333, itemName = "Samuel's Remains", count = 1, map = 1420, x = 36.7, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 31.2, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3902, title = "Scavenging Deathknell", npc = 1740, npcName = "Deathguard Saltain", map = 1420, x = 31.6, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 380, title = "Night Web's Hollow", npc = 1570, npcName = "Executor Arren", map = 1420, x = 32.2, y = 66.0, f = "e" },
					{ t = "accept", quest = 381, title = "The Scarlet Crusade", npc = 1570, npcName = "Executor Arren", map = 1420, x = 32.2, y = 66.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6395, title = "Marla's Last Wish", npc = 1661, npcName = "Novice Elreth", map = 1420, x = 30.8, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 381, itemName = "Scarlet Armband", count = 12, oi = 1, map = 1420, x = 36.1, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 381, title = "The Scarlet Crusade", npc = 1570, npcName = "Executor Arren", map = 1420, x = 32.2, y = 66.0, f = "e" },
					{ t = "accept", quest = 382, title = "The Red Messenger", npc = 1570, npcName = "Executor Arren", map = 1420, x = 32.2, y = 66.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 382, itemName = "Scarlet Crusade Documents", count = 1, oi = 1, map = 1420, x = 36.5, y = 68.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 382, title = "The Red Messenger", npc = 1570, npcName = "Executor Arren", map = 1420, x = 32.2, y = 66.0, f = "e" },
					{ t = "accept", quest = 383, title = "Vital Intelligence", npc = 1570, npcName = "Executor Arren", map = 1420, x = 32.2, y = 66.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8, title = "A Rogue's Deal (1)", npc = 6784, npcName = "Calvin Montague", map = 1420, x = 38.2, y = 56.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 365, title = "Fields of Grief (1)", npc = 1519, npcName = "Deathguard Simmer", map = 1420, x = 40.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5481, title = "Gordo's Task", npc = 10666, npcName = "Gordo", map = 1420, x = 45.6, y = 56.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5481, itemName = "Gloom Weed", count = 3, oi = 1, map = 1420, x = 52.9, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 404, title = "A Putrid Task", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 383, title = "Vital Intelligence", npc = 1515, npcName = "Executor Zygand", map = 1420, x = 60.6, y = 51.8, f = "e" },
					{ t = "accept", quest = 427, title = "At War With The Scarlet Crusade (1)", npc = 1515, npcName = "Executor Zygand", map = 1420, x = 60.6, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 398, title = "Wanted: Maggot Eye", map = 1420, x = 60.7, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 358, title = "Graverobbers", npc = 1499, npcName = "Magistrate Sevren", map = 1420, x = 61.3, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8, title = "A Rogue's Deal (1)", npc = 5688, npcName = "Innkeeper Renee", map = 1420, x = 61.7, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Brill", text = "Brill", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5481, title = "Gordo's Task", npc = 10665, npcName = "Junior Apothecary Holland", map = 1420, x = 57.6, y = 48.7, f = "e" },
					{ t = "accept", quest = 5482, title = "Doom Weed", npc = 10665, npcName = "Junior Apothecary Holland", map = 1420, x = 57.6, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 404, itemName = "Putrid Claw", count = 7, oi = 1, map = 1420, x = 55.2, y = 51.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 404, title = "A Putrid Task", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.4, f = "e" },
					{ t = "accept", quest = 426, title = "The Mills Overrun", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 367, title = "A New Plague (1)", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.4, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 367, itemName = "Darkhound Blood", count = 5, oi = 1, map = 1420, x = 55.7, y = 61.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 590, title = "A Rogue's Deal (2)", npc = 6784, npcName = "Calvin Montague", map = 1420, x = 38.2, y = 56.8, f = "e" },
					{ t = "turnin", quest = 590, title = "A Rogue's Deal (2)", npc = 6784, npcName = "Calvin Montague", map = 1420, x = 38.2, y = 56.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 365, itemName = "Tirisfal Pumpkin", count = 10, oi = 1, map = 1420, x = 37.2, y = 52.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 427, target = "Scarlet Warrior", count = 10, oi = 1, map = 1420, x = 33.0, y = 50.4, f = "e" },
				},
			},
			{
				note = "Hearth to Brill,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1420, x = 61.8, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 427, title = "At War With The Scarlet Crusade (1)", npc = 1515, npcName = "Executor Zygand", map = 1420, x = 60.6, y = 51.8, f = "e" },
					{ t = "accept", quest = 370, title = "At War With The Scarlet Crusade (2)", npc = 1515, npcName = "Executor Zygand", map = 1420, x = 60.6, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 354, title = "Deaths in the Family", npc = 1500, npcName = "Coleman Farthing", map = 1420, x = 61.7, y = 52.3, f = "e" },
					{ t = "accept", quest = 362, title = "The Haunted Mills", npc = 1500, npcName = "Coleman Farthing", map = 1420, x = 61.7, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 375, title = "The Chill of Death", npc = 1521, npcName = "Gretchen Dedmar", map = 1420, x = 61.9, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 374, title = "Proof of Demise", npc = 1652, npcName = "Deathguard Burgess", map = 1420, x = 60.9, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 365, title = "Fields of Grief (1)", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.4, y = 52.4, f = "e" },
					{ t = "accept", quest = 407, title = "Fields of Grief (2)", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.4, y = 52.4, f = "e" },
					{ t = "turnin", quest = 367, title = "A New Plague (1)", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.4, y = 52.4, f = "e" },
					{ t = "accept", quest = 368, title = "A New Plague (2)", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.4, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 407, title = "Fields of Grief (2)", npc = 1931, npcName = "Captured Scarlet Zealot", map = 1420, x = 62.0, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 358, target = "Rot Hide Graverobber", count = 8, oi = 1, map = 1420, x = 57.5, y = 41.1, f = "e" },
					{ t = "collect", quest = 5482, itemName = "Doom Weed", count = 10, oi = 1, map = 1420, x = 57.5, y = 41.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 358, target = "Rot Hide Mongrel", count = 5, oi = 2, map = 1420, x = 58.3, y = 35.3, f = "e" },
					{ t = "collect", quest = 358, itemName = "Embalming Ichor", count = 8, oi = 3, map = 1420, x = 58.3, y = 35.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 368, itemName = "Vile Fin Scale", count = 5, oi = 1, map = 1420, x = 60.2, y = 29.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 375, itemName = "Duskbat Pelt", count = 5, oi = 1, map = 1420, x = 64.7, y = 33.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 398, itemName = "Maggot Eye's Paw", count = 1, oi = 1, map = 1420, x = 58.7, y = 30.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 2118, npcName = "Abigail Shiel", itemName = "Coarse Thread", count = 1, map = 1420, x = 61.0, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 398, title = "Wanted: Maggot Eye", npc = 1515, npcName = "Executor Zygand", map = 1420, x = 60.6, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 375, title = "The Chill of Death", npc = 1521, npcName = "Gretchen Dedmar", map = 1420, x = 61.9, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 358, title = "Graverobbers", npc = 1499, npcName = "Magistrate Sevren", map = 1420, x = 61.3, y = 50.8, f = "e" },
					{ t = "accept", quest = 359, title = "Forsaken Duties", npc = 1499, npcName = "Magistrate Sevren", map = 1420, x = 61.3, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 368, title = "A New Plague (2)", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.4, y = 52.4, f = "e" },
					{ t = "accept", quest = 369, title = "A New Plague (3)", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.4, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5482, title = "Doom Weed", npc = 10665, npcName = "Junior Apothecary Holland", map = 1420, x = 57.6, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 362, itemName = "Devlin's Remains", count = 1, oi = 1, map = 1420, x = 47.5, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 426, itemName = "Notched Rib", count = 5, oi = 1, map = 1420, x = 48.4, y = 42.1, f = "e" },
					{ t = "collect", quest = 426, itemName = "Blackened Skull", count = 3, oi = 2, map = 1420, x = 48.4, y = 42.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 354, itemName = "Nissa's Remains", count = 1, oi = 2, map = 1420, x = 49.5, y = 36.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 354, itemName = "Gregor's Remains", count = 1, oi = 1, map = 1420, x = 46.0, y = 31.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 354, itemName = "Thurman's Remains", count = 1, oi = 3, map = 1420, x = 43.9, y = 36.0, f = "e" },
				},
			},
			{
				note = "Hearth to Brill,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1420, x = 61.8, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 354, title = "Deaths in the Family", npc = 1500, npcName = "Coleman Farthing", map = 1420, x = 61.7, y = 52.3, f = "e" },
					{ t = "turnin", quest = 362, title = "The Haunted Mills", npc = 1500, npcName = "Coleman Farthing", map = 1420, x = 61.7, y = 52.3, f = "e" },
					{ t = "accept", quest = 355, title = "Speak with Sevren", npc = 1500, npcName = "Coleman Farthing", map = 1420, x = 61.7, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 355, title = "Speak with Sevren", npc = 1499, npcName = "Magistrate Sevren", map = 1420, x = 61.3, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 426, title = "The Mills Overrun", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.4, f = "e" },
				},
			},
		},
	})
end

