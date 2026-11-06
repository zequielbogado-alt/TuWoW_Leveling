-- TuWoW_Leveling — Guides/Class_09.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-mage-class-quests",
		pack = "guides",
		title = "Mage Class Quests",
		category = "Class",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		classes = { "MAGE" },
		steps = {
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 1883, title = "Speak with Un'thuwa", npc = 7311, npcName = "Uthel'nay", map = 1454, x = 39.16, y = 86.27, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1883, title = "Speak with Un'thuwa", npc = 5880, npcName = "Un'Thuwa", map = 1411, x = 56.31, y = 75.11, f = "e" },
					{ t = "accept", quest = 1884, title = "Ju-Ju Heaps", npc = 5880, npcName = "Un'Thuwa", map = 1411, x = 56.31, y = 75.11, f = "e" },
				},
			},
			{
				note = "They look like a pile of skulls. They are in buildings all around this area. Watch for patrols and respawns while in the area.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "complete", quest = 1884, title = "Ju-Ju Heaps", note = "Destroy 4 Ju-ju Heaps", map = 1411, x = 67.76, y = 83.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1884, title = "Ju-Ju Heaps", npc = 5880, npcName = "Un'Thuwa", map = 1411, x = 56.31, y = 75.11, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 1959, title = "Report to Anastasia", npc = 7311, npcName = "Uthel'nay", map = 1454, x = 39.16, y = 86.27, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1959, title = "Report to Anastasia", npc = 4568, npcName = "Anastasia Hartwell", map = 1458, x = 85.14, y = 10.06, f = "e" },
					{ t = "accept", quest = 1960, title = "Investigate the Alchemist Shop", npc = 4568, npcName = "Anastasia Hartwell", map = 1458, x = 85.14, y = 10.06, f = "e" },
				},
			},
			{
				note = "It looks like a scroll on the ledge of the wall.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1960, item = 7308, itemName = "Cantation of Manifestation", oi = 3, map = 1458, x = 85.65, y = 10.0, f = "e" },
				},
			},
			{
				note = "It looks like a brown treasure box on the edge of the wall.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1960, item = 7247, itemName = "Chest of Containment Coffers", oi = 2, map = 1458, x = 85.65, y = 10.0, f = "e" },
				},
			},
			{
				note = "Use the \"Arcane Explosion\" ability after using the Cantation to reveal the enemy. Use it on the Rift Spawn corpse.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "use", item = 7308, itemName = "Cantation of Manifestation" },
					{ t = "use", item = 7247, itemName = "Chest of Containment Coffers" },
					{ t = "collect", quest = 1960, item = 7292, itemName = "Filled Containment Coffer", count = 3, oi = 1, map = 1458, x = 52.99, y = 74.92, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1960, title = "Investigate the Alchemist Shop", npc = 4568, npcName = "Anastasia Hartwell", map = 1458, x = 85.14, y = 10.06, f = "e" },
					{ t = "accept", quest = 1961, title = "Gathering Materials", npc = 4568, npcName = "Anastasia Hartwell", map = 1458, x = 85.14, y = 10.06, f = "e" },
				},
			},
			{
				note = "Keep an eye out for patrols and casters while in the cave.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1961, item = 7293, itemName = "Dalaran Mana Gem", count = 6, oi = 2, map = 1421, x = 62.26, y = 64.24, f = "e" },
				},
			},
			{
				label = "10_linen",
				along = true,
				note = "Keep an eye out for patrols and casters while in the cave.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1961, item = 2589, itemName = "Linen Cloth", count = 10, oi = 1, map = 1421, x = 62.26, y = 64.24, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1961, title = "Gathering Materials", npc = 4576, npcName = "Josef Gregorian", map = 1458, x = 70.75, y = 30.69, f = "e" },
					{ t = "accept", quest = 1962, title = "Spellfire Robes", npc = 4576, npcName = "Josef Gregorian", map = 1458, x = 70.75, y = 30.69, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 1943, title = "Speak with Deino", npc = 4568, npcName = "Anastasia Hartwell", map = 1458, x = 85.13, y = 9.98, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1943, title = "Speak with Deino", npc = 5885, npcName = "Deino", map = 1454, x = 38.45, y = 86.14, f = "e" },
					{ t = "accept", quest = 1944, title = "Waters of Xavian", npc = 5885, npcName = "Deino", map = 1454, x = 38.45, y = 86.14, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1440, x = 73.67, y = 50.38 },
					{ t = "use", item = 7269, itemName = "Deino's Flask" },
					{ t = "collect", quest = 1944, item = 7268, itemName = "Xavian Water Sample", oi = 1, map = 1440, x = 76.33, y = 41.43, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1944, title = "Waters of Xavian", npc = 5885, npcName = "Deino", map = 1454, x = 38.45, y = 86.14, f = "e" },
					{ t = "accept", quest = 1945, title = "Laughing Sisters", npc = 5885, npcName = "Deino", map = 1454, x = 38.45, y = 86.14, f = "e" },
				},
			},
			{
				note = "Watch for patrols and respawns in the area.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1945, item = 7270, itemName = "Laughing Sister's Hair", count = 12, oi = 1, map = 1440, x = 58.61, y = 59.49, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1945, title = "Laughing Sisters", npc = 3484, npcName = "Kil'hala", map = 1413, x = 52.2, y = 31.7, f = "e" },
					{ t = "accept", quest = 1946, title = "Nether-lace Garment", npc = 3484, npcName = "Kil'hala", map = 1413, x = 52.2, y = 31.7, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 1947, title = "Journey to the Marsh", npc = 5885, npcName = "Deino", map = 1454, x = 38.45, y = 86.14, f = "e" },
				},
			},
			{
				note = "These are gathered with the Mining profession. You can also buy them from the Auction House. Make sure not to accidentally vendor it.",
				goals = {
					{ t = "collect", quest = 1948, item = 1529, itemName = "Jade" },
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
				note = "The upcoming quest steps will send you into the Scarlet Monastery dungeons. You will need a group to complete them.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "complete", quest = 1951, title = "Rituals of Power", note = "Click Here to Continue" },
				},
			},
			{
				only = { classes = { "MAGE" } },
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
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 1953, title = "Return to the Marsh", npc = 4568, npcName = "Anastasia Hartwell", map = 1458, x = 85.13, y = 9.98, f = "e" },
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
				only = { classes = { "MAGE" } },
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
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 2861, title = "Tabetha's Task", npc = 4568, npcName = "Anastasia Hartwell", map = 1458, x = 85.13, y = 9.98, f = "e" },
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
					{ t = "complete", quest = 7463, title = "Arcane Refreshment", note = "Enter the Dire Maul - North Dungeon with Your Group" },
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

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-rogue-class-quests",
		pack = "guides",
		title = "Rogue Class Quests",
		category = "Class",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		classes = { "ROGUE" },
		steps = {
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Train the \"Pick Lock\" Ability", map = 1454, x = 42.71, y = 51.48 },
				},
			},
			{
				note = "They look like grey metal chests. Inside the ship, on the middle level. Keep clicking them until you reach Lockpicking skill level 75. Watch for patrols and respawns around the area.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1413, x = 62.37, y = 39.44 },
					{ t = "goto", text = "Follow the path onto the ship", map = 1413, x = 64.18, y = 45.49 },
					{ t = "skill", level = 75, skill = "Lockpicking" },
				},
			},
			{
				note = "Inside the tent, inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 2460, title = "The Shattered Salute", npc = 3401, npcName = "Shenthul", map = 1454, x = 43.05, y = 53.74, f = "e" },
				},
			},
			{
				note = "Inside the tent, inside the Cleft of Shadow. Wait for Shenthul to salute you (you will see him perform a hand movement). Target Shenthul and type \"/salute\" into your chat to perform the Salute emote.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "complete", quest = 2460, title = "The Shattered Salute", note = "Perform the Shattered Salute", map = 1454, x = 43.05, y = 53.74, f = "e" },
				},
			},
			{
				note = "Inside the tent, inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2460, title = "The Shattered Salute", npc = 3401, npcName = "Shenthul", map = 1454, x = 43.05, y = 53.74, f = "e" },
					{ t = "accept", quest = 2458, title = "Deep Cover", npc = 3401, npcName = "Shenthul", map = 1454, x = 43.05, y = 53.74, f = "e" },
				},
			},
			{
				note = "Use it while targeting Taskmaster Fizzule nearby to the north. You must use it TWICE in a row. After shooting 2 flares, perform the \"/salute\" emote while still targeting Taskmaster Fizzule.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1413, x = 52.37, y = 27.62 },
					{ t = "goto", text = "Follow the path", map = 1413, x = 54.47, y = 10.25 },
					{ t = "use", item = 8051, itemName = "Flare Gun" },
					{ t = "complete", quest = 2458, title = "Deep Cover", note = "Signal Taskmaster Fizzule", map = 1413, x = 55.47, y = 6.08, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2458, title = "Deep Cover", npc = 7233, npcName = "Taskmaster Fizzule", map = 1413, x = 55.44, y = 5.56, f = "e" },
					{ t = "accept", quest = 2478, title = "Mission: Possible But Not Probable", npc = 7233, npcName = "Taskmaster Fizzule", map = 1413, x = 55.44, y = 5.56, f = "e" },
				},
			},
			{
				note = "Use your \"Pickpocket\" ability on Foreman Silixiz. Watch for patrols and respawns while in the area.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 2478, item = 8072, itemName = "Silixiz's Tower Key", oi = 5, map = 1413, x = 54.8, y = 5.97, f = "e" },
				},
			},
			{
				note = "Inside the building, on the bottom floor. Watch for patrols and respawns while in the area.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1413, x = 54.87, y = 5.86 },
					{ t = "kill", quest = 2478, npc = 7310, target = "Mutated Venture Co. Drone", count = 2, oi = 1, map = 1413, x = 54.71, y = 5.73, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building, on the lower middle floor. Watch for patrols and respawns while in the area.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "kill", quest = 2478, npc = 7308, target = "Venture Co. Patroller", count = 2, oi = 3, map = 1413, x = 54.81, y = 5.59, f = "e" },
				},
			},
			{
				note = "Upstairs on the balcony of the building, on the upper middle floor. Watch for patrols and respawns while in the area.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "kill", quest = 2478, npc = 7307, target = "Venture Co. Lookout", count = 2, oi = 2, map = 1413, x = 54.63, y = 5.64, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building, on the top floor. He is elite, but you should be able to kill him. If you have trouble, try to find someone to help you. This enemy is elite. You will likely need help with this if you aren't overleveled. Only one head per kill will drop. He will allegedly spawn every 8 to 10 minutes.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 2478, item = 8073, itemName = "Cache of Zanzil's Altered Mixture", oi = 6, map = 1413, x = 54.75, y = 5.59, f = "e" },
					{ t = "collect", quest = 2478, item = 8074, itemName = "Gallywix's Head", oi = 4, map = 1413, x = 54.75, y = 5.59, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building, on the top floor. You will get a debuff after opening it.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "complete", quest = 2478, title = "Mission: Possible But Not Probable", note = "Receive the Touch of Zanzil", map = 1413, x = 54.75, y = 5.55, f = "e" },
				},
			},
			{
				note = "Inside the tent, inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1413, x = 54.71, y = 9.86 },
					{ t = "goto", text = "Follow the road", map = 1413, x = 52.13, y = 18.67 },
					{ t = "turnin", quest = 2478, title = "Mission: Possible But Not Probable", npc = 3401, npcName = "Shenthul", map = 1454, x = 43.05, y = 53.74, f = "e" },
					{ t = "accept", quest = 2479, title = "Hinott's Assistance", npc = 3401, npcName = "Shenthul", map = 1454, x = 43.05, y = 53.74, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Enter Undercity", map = 1420, x = 61.86, y = 65.03 },
					{ t = "getfp", location = "Undercity", map = 1458, x = 63.28, y = 48.58, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Leave Undercity", map = 1458, x = 66.19, y = 0.63 },
					{ t = "goto", text = "Follow the road", map = 1420, x = 56.17, y = 65.88 },
					{ t = "goto", text = "Continue following the road", map = 1421, x = 58.14, y = 12.21 },
					{ t = "goto", text = "Cross the bridge", map = 1421, x = 49.75, y = 28.82 },
					{ t = "goto", text = "Follow the road", map = 1421, x = 48.71, y = 38.6 },
					{ t = "getfp", location = "The Sepulcher", map = 1421, x = 45.62, y = 42.59, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1421, x = 46.48, y = 41.31 },
					{ t = "goto", text = "Continue following the road", map = 1421, x = 52.85, y = 43.92 },
					{ t = "goto", text = "Continue following the road", map = 1421, x = 53.88, y = 73.53 },
					{ t = "goto", text = "Enter Hillsbrad Foothills", map = 1421, x = 66.87, y = 80.22 },
					{ t = "goto", text = "Follow the road", map = 1424, x = 57.51, y = 36.04 },
					{ t = "getfp", location = "Tarren Mill", map = 1424, x = 60.14, y = 18.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 61.5, y = 19.43 },
					{ t = "turnin", quest = 2479, title = "Hinott's Assistance", npc = 2391, npcName = "Serge Hinott", map = 1424, x = 61.63, y = 19.19, f = "e" },
					{ t = "accept", quest = 2480, title = "Hinott's Assistance", npc = 2391, npcName = "Serge Hinott", map = 1424, x = 61.63, y = 19.19, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "complete", quest = 2480, title = "Hinott's Assistance", note = "Complete the Cure", map = 1424, x = 61.49, y = 18.95, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2480, title = "Hinott's Assistance", npc = 2391, npcName = "Serge Hinott", map = 1424, x = 61.58, y = 18.97, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "use", item = 8095, itemName = "Hinott's Oil" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 8233, title = "A Simple Request", npc = 3328, npcName = "Ormok", map = 1454, x = 43.91, y = 54.62, f = "e" },
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
					{ t = "complete", quest = 8425, title = "Voodoo Feathers", note = "Click Here to Continue" },
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

