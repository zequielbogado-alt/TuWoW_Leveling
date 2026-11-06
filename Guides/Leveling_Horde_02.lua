-- TuWoW_Leveling — Guides/Leveling_Horde_02.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-undead-starter-1-13-part-2",
		pack = "guides",
		title = "Undead Starter (Parte 2/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-undead-starter-1-13-part-3",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1420,
		version = 1,
		races = { "Scourge" },
		steps = {
			{
				note = "Wanted poster.",
				goals = {
					{ t = "accept", quest = 398, title = "WANTED: Maggot Eye", map = 1420, x = 60.73, y = 51.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 427, title = "At War With The Scarlet Crusade", npc = 1515, npcName = "Executor Zygand", map = 1420, x = 60.59, y = 51.76, f = "e" },
					{ t = "accept", quest = 370, title = "At War With The Scarlet Crusade", npc = 1515, npcName = "Executor Zygand", map = 1420, x = 60.59, y = 51.76, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 365, title = "Fields of Grief", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.45, y = 52.4, f = "e" },
					{ t = "accept", quest = 407, title = "Fields of Grief", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.45, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 404, title = "A Putrid Task", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.45, f = "e" },
					{ t = "accept", quest = 426, title = "The Mills Overrun", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.45, f = "e" },
				},
			},
			{
				note = "Walks a large path.",
				goals = {
					{ t = "turnin", quest = 5481, title = "Gordo's Task", npc = 10665, npcName = "Junior Apothecary Holland", map = 1420, x = 57.4, y = 48.9, f = "e" },
					{ t = "accept", quest = 5482, title = "Doom Weed", npc = 10665, npcName = "Junior Apothecary Holland", map = 1420, x = 57.4, y = 48.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 374, title = "Proof of Demise", npc = 1652, npcName = "Deathguard Burgess", map = 1420, x = 60.93, y = 52.01, f = "e" },
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
				note = "Downstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 407, title = "Fields of Grief", npc = 1931, npcName = "Captured Scarlet Zealot", map = 1420, x = 61.97, y = 51.29, f = "e" },
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
				goals = {
					{ t = "turnin", quest = 375, title = "The Chill of Death", npc = 1521, npcName = "Gretchen Dedmar", map = 1420, x = 61.89, y = 52.73, f = "e" },
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
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 2130, npcName = "Marion Call", map = 1420, x = 61.75, y = 52.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "skill", level = 75, skill = "First Aid" },
				},
			},
			{
				note = "While waiting for things like boats. Increases skill in First Aid. Need higher skill to make better bandages. Keep bandages to heal yourself.",
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "complete", quest = 426, title = "The Mills Overrun", note = "Click Here to Continue" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", map = 1420, x = 60.23, y = 52.68, f = "e" },
				},
			},
			{
				note = "Armored skeleton mage. Walks around.",
				goals = {
					{ t = "collect", quest = 362, item = 2831, itemName = "Devlin's Remains", oi = 1, map = 1420, x = 47.23, y = 40.03, f = "e" },
				},
			},
			{
				note = "Banshee. Walks around. Both floors inside the building.",
				goals = {
					{ t = "collect", quest = 354, item = 2828, itemName = "Nissa's Remains", oi = 2, map = 1420, x = 49.54, y = 36.02, f = "e" },
				},
			},
			{
				note = "Ghoul. Walks around.",
				goals = {
					{ t = "collect", quest = 354, item = 2829, itemName = "Gregor's Remains", oi = 1, map = 1420, x = 45.69, y = 29.42, f = "e" },
				},
			},
			{
				note = "Zombie. Walks around.",
				goals = {
					{ t = "collect", quest = 354, item = 2830, itemName = "Thurman's Remains", oi = 3, map = 1420, x = 42.84, y = 32.38, f = "e" },
				},
			},
			{
				label = "Collect_Notched_Ribs",
				along = true,
				note = "Armored skeletons.",
				goals = {
					{ t = "collect", quest = 426, item = 3162, itemName = "Notched Rib", count = 5, oi = 1, map = 1420, x = 47.33, y = 35.71, f = "e" },
				},
			},
			{
				label = "Collect_Blackened_Skulls",
				along = true,
				note = "Skeleton mages.",
				goals = {
					{ t = "collect", quest = 426, item = 3163, itemName = "Blackened Skull", count = 3, oi = 2, map = 1420, x = 47.33, y = 35.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 2839, itemName = "A Letter to Yvette" },
					{ t = "accept", quest = 361, title = "A Letter Undelivered" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Jump down carefully", map = 1420, x = 54.28, y = 31.67 },
					{ t = "collect", quest = 398, item = 3635, itemName = "Maggot Eye's Paw", oi = 1, map = 1420, x = 58.66, y = 30.76, f = "e" },
				},
			},
			{
				note = "Murlocs.",
				goals = {
					{ t = "collect", quest = 368, item = 2859, itemName = "Vile Fin Scale", count = 5, oi = 1, map = 1420, x = 65.49, y = 28.4, f = "e" },
				},
			},
			{
				label = "Kill_Rot_Hide_Mongrels",
				along = true,
				goals = {
					{ t = "kill", quest = 358, npc = 1675, target = "Rot Hide Mongrel", count = 5, oi = 2, map = 1420, x = 59.1, y = 35.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 358, npc = 1941, target = "Rot Hide Graverobber", count = 8, oi = 1, map = 1420, x = 55.9, y = 41.61, f = "e" },
				},
			},
			{
				label = "Collect_Doom_Weed",
				along = true,
				note = "Withered purple plants.",
				goals = {
					{ t = "collect", quest = 5482, item = 13702, itemName = "Doom Weed", count = 10, oi = 1, map = 1420, x = 56.76, y = 38.69, f = "e" },
				},
			},
			{
				label = "Collect_Embalming_Ichors",
				along = true,
				note = "Gnolls.",
				goals = {
					{ t = "collect", quest = 358, item = 2834, itemName = "Embalming Ichor", count = 8, oi = 3, map = 1420, x = 56.76, y = 38.69, f = "e" },
				},
			},
			{
				note = "Helps reach level 10 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 9,975", map = 1420, x = 59.1, y = 35.3 },
					{ t = "goto", text = "ding 9,1455", map = 1420, x = 59.1, y = 35.3 },
				},
			},
			{
				note = "Walks a large path.",
				goals = {
					{ t = "turnin", quest = 5482, title = "Doom Weed", npc = 10665, npcName = "Junior Apothecary Holland", map = 1420, x = 57.4, y = 48.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 426, title = "The Mills Overrun", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.45, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 368, title = "A New Plague", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.45, y = 52.4, f = "e" },
					{ t = "accept", quest = 369, title = "A New Plague", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.45, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 398, title = "WANTED: Maggot Eye", npc = 1515, npcName = "Executor Zygand", map = 1420, x = 60.59, y = 51.76, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 358, title = "Graverobbers", npc = 1499, npcName = "Magistrate Sevren", map = 1420, x = 61.26, y = 50.84, f = "e" },
					{ t = "accept", quest = 359, title = "Forsaken Duties", npc = 1499, npcName = "Magistrate Sevren", map = 1420, x = 61.26, y = 50.84, f = "e" },
					{ t = "accept", quest = 405, title = "The Prodigal Lich", npc = 1499, npcName = "Magistrate Sevren", map = 1420, x = 61.26, y = 50.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 361, title = "A Letter Undelivered", npc = 1560, npcName = "Yvette Farthing", map = 1420, x = 61.58, y = 52.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 354, title = "Deaths in the Family", npc = 1500, npcName = "Coleman Farthing", map = 1420, x = 61.72, y = 52.29, f = "e" },
					{ t = "turnin", quest = 362, title = "The Haunted Mills", npc = 1500, npcName = "Coleman Farthing", map = 1420, x = 61.72, y = 52.29, f = "e" },
					{ t = "accept", quest = 355, title = "Speak with Sevren", npc = 1500, npcName = "Coleman Farthing", map = 1420, x = 61.72, y = 52.29, f = "e" },
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
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1818, title = "Speak with Dillinger", npc = 2131, npcName = "Austil de Mon", map = 1420, x = 61.85, y = 52.54, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1818, title = "Speak with Dillinger", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.45, f = "e" },
					{ t = "accept", quest = 1819, title = "Ulag the Cleaver", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.45, f = "e" },
				},
			},
			{
				note = "Metal plate with skull icon.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "kill", quest = 1819, npc = 6390, target = "Ulag the Cleaver", oi = 1, map = 1420, x = 59.16, y = 48.51, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1819, title = "Ulag the Cleaver", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.45, f = "e" },
					{ t = "accept", quest = 1820, title = "Speak with Coleman", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.45, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1820, title = "Speak with Coleman", npc = 1500, npcName = "Coleman Farthing", map = 1420, x = 61.72, y = 52.29, f = "e" },
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
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 1881, title = "Speak with Anastasia", npc = 2128, npcName = "Cain Firesong", map = 1420, x = 61.97, y = 52.47, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1881, title = "Speak with Anastasia", npc = 4568, npcName = "Anastasia Hartwell", map = 1458, x = 85.14, y = 10.03, f = "e" },
					{ t = "accept", quest = 1882, title = "The Balnir Farmstead", npc = 4568, npcName = "Anastasia Hartwell", map = 1458, x = 85.14, y = 10.03, f = "e" },
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
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1478, title = "Halgar's Summons", npc = 5724, npcName = "Ageron Kargal", map = 1420, x = 61.62, y = 52.68, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1478, title = "Halgar's Summons", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.04, y = 26.01, f = "e" },
					{ t = "accept", quest = 1473, title = "Creature of the Void", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.04, y = 26.01, f = "e" },
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
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 5658, title = "Touch of Weakness", npc = 4606, npcName = "Aelthalyste", map = 1458, x = 49.26, y = 17.12, f = "e" },
				},
			},
			{
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5658, title = "Touch of Weakness", npc = 4606, npcName = "Aelthalyste", map = 1458, x = 49.26, y = 17.12, f = "e" },
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
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 1885, title = "Mennet Carkad", npc = 2130, npcName = "Marion Call", map = 1420, x = 61.75, y = 52.0, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 1885, title = "Mennet Carkad", npc = 6467, npcName = "Mennet Carkad", map = 1458, x = 83.51, y = 69.11, f = "e" },
					{ t = "accept", quest = 1886, title = "The Deathstalkers", npc = 6467, npcName = "Mennet Carkad", map = 1458, x = 83.51, y = 69.11, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Train Swords", map = 1458, x = 57.31, y = 32.77 },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", map = 1420, x = 60.23, y = 52.68, f = "e" },
				},
			},
			{
				note = "Inside the building. notinsticky",
				goals = {
					{ t = "kill", quest = 370, npc = 1662, target = "Captain Perrine", oi = 1, map = 1420, x = 51.13, y = 67.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1473, item = 6285, itemName = "Egalin's Grimoire", oi = 1, map = 1420, x = 51.06, y = 67.57, f = "e" },
				},
			},
			{
				label = "Collect_Scarlet_Insignia_Rings",
				along = true,
				goals = {
					{ t = "collect", quest = 374, item = 2875, itemName = "Scarlet Insignia Ring", count = 10, oi = 1, map = 1420, x = 51.51, y = 67.01, f = "e" },
				},
			},
			{
				label = "Kill_Scarlet_Zealots_And_Missionaries",
				along = true,
				goals = {
					{ t = "kill", quest = 370, npc = 1537, target = "Scarlet Zealot", count = 3, oi = 2, map = 1420, x = 50.54, y = 66.95, f = "e" },
					{ t = "kill", quest = 370, npc = 1536, target = "Scarlet Missionary", count = 3, oi = 3, map = 1420, x = 50.54, y = 66.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 370, title = "At War With The Scarlet Crusade", npc = 1515, npcName = "Executor Zygand", map = 1420, x = 60.59, y = 51.76, f = "e" },
					{ t = "accept", quest = 371, title = "At War With The Scarlet Crusade", npc = 1515, npcName = "Executor Zygand", map = 1420, x = 60.59, y = 51.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 374, title = "Proof of Demise", npc = 1652, npcName = "Deathguard Burgess", map = 1420, x = 60.93, y = 52.01, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1473, title = "Creature of the Void", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.04, y = 26.01, f = "e" },
					{ t = "accept", quest = 1471, title = "The Binding", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.04, y = 26.01, f = "e" },
				},
			},
			{
				note = "On the pink symbol.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 6284, itemName = "Runes of Summoning" },
					{ t = "kill", quest = 1471, npc = 5676, target = "Summoned Voidwalker", oi = 1, map = 1458, x = 86.62, y = 27.1, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1471, title = "The Binding", npc = 5675, npcName = "Carendin Halgar", map = 1458, x = 85.04, y = 26.01, f = "e" },
				},
			},
			{
				note = "Up on the stairs.",
				goals = {
					{ t = "turnin", quest = 405, title = "The Prodigal Lich", npc = 1498, npcName = "Bethor Iceshard", map = 1458, x = 84.05, y = 17.46, f = "e" },
					{ t = "accept", quest = 357, title = "The Lich's Identity", npc = 1498, npcName = "Bethor Iceshard", map = 1458, x = 84.05, y = 17.46, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "skill", level = 75, skill = "Mining" },
				},
			},
			{
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "buy", item = 2901, itemName = "Mining Pick", map = 1458, x = 56.72, y = 36.93, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "skill", level = 75, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.83, y = 77.69 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 359, title = "Forsaken Duties", npc = 1495, npcName = "Deathguard Linnea", map = 1420, x = 65.49, y = 60.26, f = "e" },
					{ t = "accept", quest = 360, title = "Return to the Magistrate", npc = 1495, npcName = "Deathguard Linnea", map = 1420, x = 65.49, y = 60.26, f = "e" },
					{ t = "accept", quest = 356, title = "Rear Guard Patrol", npc = 1495, npcName = "Deathguard Linnea", map = 1420, x = 65.49, y = 60.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 357, item = 2833, itemName = "The Lich's Spellbook", oi = 1, map = 1420, x = 67.96, y = 42.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 369, item = 2872, itemName = "Vicious Night Web Spider Venom", count = 4, oi = 1, map = 1420, x = 86.29, y = 51.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "kill", quest = 371, npc = 1664, target = "Captain Vachon", oi = 1, map = 1420, x = 78.82, y = 56.13, f = "e" },
				},
			},
			{
				label = "Kill_Scarlet_Friars",
				along = true,
				goals = {
					{ t = "kill", quest = 371, npc = 1538, target = "Scarlet Friar", count = 5, oi = 2, map = 1420, x = 79.56, y = 55.16, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1882, item = 7227, itemName = "Balnir Snapdragons", oi = 1, map = 1420, x = 76.94, y = 62.38, f = "e" },
				},
			},
			{
				label = "Collect_Linen_Cloth_Paladin",
				note = "Needed for class quest soon. Don't vendor them.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", item = 2589, itemName = "Linen Cloth", count = 10, map = 1420, x = 76.19, y = 60.38, f = "e" },
				},
			},
			{
				label = "Kill_Bleeding_Horrors_And_Wandering_Spirits",
				along = true,
				goals = {
					{ t = "kill", quest = 356, npc = 1529, target = "Bleeding Horror", count = 8, oi = 1, map = 1420, x = 76.19, y = 60.38, f = "e" },
					{ t = "kill", quest = 356, npc = 1532, target = "Wandering Spirit", count = 8, oi = 2, map = 1420, x = 76.19, y = 60.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 356, title = "Rear Guard Patrol", npc = 1495, npcName = "Deathguard Linnea", map = 1420, x = 65.49, y = 60.25, f = "e" },
				},
			},
			{
				note = "Up on the stairs.",
				goals = {
					{ t = "turnin", quest = 357, title = "The Lich's Identity", npc = 1498, npcName = "Bethor Iceshard", map = 1458, x = 84.05, y = 17.46, f = "e" },
					{ t = "accept", quest = 366, title = "Return the Book", npc = 1498, npcName = "Bethor Iceshard", map = 1458, x = 84.05, y = 17.46, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 355, title = "Speak with Sevren", npc = 1499, npcName = "Magistrate Sevren", map = 1420, x = 61.26, y = 50.84, f = "e" },
					{ t = "turnin", quest = 360, title = "Return to the Magistrate", npc = 1499, npcName = "Magistrate Sevren", map = 1420, x = 61.26, y = 50.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 371, title = "At War With The Scarlet Crusade", npc = 1515, npcName = "Executor Zygand", map = 1420, x = 60.58, y = 51.77, f = "e" },
				},
			},
		},
	})
end

