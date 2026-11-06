-- TuWoW_Leveling — Guides/Leveling_Alliance_36.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-burning-steppes-56-57",
		pack = "guides",
		title = "Burning Steppes",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-western-and-eastern-plaguelands-57-58",
		author = "TuWoW & Zygor",
		minLevel = 56,
		maxLevel = 57,
		zone = 1455,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1455, x = 44.51, y = 49.57 },
					{ t = "accept", quest = 3702, title = "The Smoldering Ruins of Thaurissan", npc = 8879, npcName = "Royal Historian Archesonus", map = 1455, x = 38.37, y = 55.31, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3702, title = "The Smoldering Ruins of Thaurissan", note = "Listen to the Story of Thaurissan", map = 1455, x = 38.37, y = 55.31, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3702, title = "The Smoldering Ruins of Thaurissan", npc = 8879, npcName = "Royal Historian Archesonus", map = 1455, x = 38.37, y = 55.31, f = "e" },
					{ t = "accept", quest = 3701, title = "The Smoldering Ruins of Thaurissan", npc = 8879, npcName = "Royal Historian Archesonus", map = 1455, x = 38.37, y = 55.31, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Ironforge", map = 1455, x = 18.15, y = 51.46, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5148, npcName = "Beldruk Doombrow", map = 1455, x = 24.54, y = 4.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3461, title = "Return to Tymor", npc = 8507, npcName = "Tymor", map = 1455, x = 30.97, y = 4.82, f = "e" },
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
				goals = {
					{ t = "turnin", quest = 4512, title = "A Little Slime Goes a Long Way", npc = 9616, npcName = "Laris Geardawdle", map = 1455, x = 75.77, y = 23.37, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "goto", text = "Train Ram Riding", map = 1426, x = 63.94, y = 50.1 },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "goto", text = "Train Mechanostrider Piloting", map = 1426, x = 49.15, y = 48.13 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3824, title = "Gor'tesh the Brute Lord", npc = 9177, npcName = "Oralius", map = 1428, x = 84.56, y = 68.68, f = "e" },
					{ t = "accept", quest = 4283, title = "FIFTY! YEP!", npc = 9177, npcName = "Oralius", map = 1428, x = 84.56, y = 68.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4182, title = "Dragonkin Menace", npc = 9562, npcName = "Helendis Riverhorn", map = 1428, x = 85.82, y = 68.94, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4726, title = "Broodling Essence", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.24, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4296, title = "Tablet of the Seven", npc = 9536, npcName = "Maxwort Uberglint", map = 1428, x = 65.16, y = 23.92, f = "e" },
				},
			},
			{
				note = "Elite enemies. May need help. Important to complete Dragonkin Menace quest. Unlocks more quests that give good xp. Can skip, but will need to grind later.",
				goals = {
					{ t = "complete", quest = 4182, title = "Dragonkin Menace", note = "Click Here to Continue" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "accept", quest = 4022, title = "A Taste of Flame", npc = 9459, npcName = "Cyrus Therepentous", map = 1428, x = 95.06, y = 31.57, f = "e" },
				},
			},
			{
				note = "Inside the small cave. Elite enemy. May need help.",
				goals = {
					{ t = "collect", quest = 4022, item = 10575, itemName = "Black Dragonflight Molt", oi = 1, map = 1428, x = 95.06, y = 31.57, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "complete", quest = 4022, title = "A Taste of Flame", note = "Present the Proof", map = 1428, x = 95.06, y = 31.57, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 4022, title = "A Taste of Flame", npc = 9459, npcName = "Cyrus Therepentous", map = 1428, x = 95.06, y = 31.57, f = "e" },
				},
			},
			{
				label = "Collect_Broodling_Essences",
				along = true,
				note = "On Black Broodlings. Small flying dragons. Red crystals above their corpses.",
				goals = {
					{ t = "use", item = 12284, itemName = "Draco-Incarcinatrix 900" },
					{ t = "collect", quest = 4726, item = 12283, itemName = "Broodling Essence", count = 8, oi = 1, map = 1428, x = 88.6, y = 29.4, f = "e" },
				},
			},
			{
				label = "Kill_Black_Drake",
				along = true,
				note = "Large red dragons.",
				goals = {
					{ t = "kill", quest = 4182, npc = 7044, target = "Black Drake", oi = 3, map = 1428, x = 88.4, y = 32.6, f = "e" },
				},
			},
			{
				label = "Kill_Black_Wyrmkins_And_Dragonspawns",
				along = true,
				goals = {
					{ t = "kill", quest = 4182, npc = 7041, target = "Black Wyrmkin", count = 4, oi = 4, map = 1428, x = 91.6, y = 47.4, f = "e" },
					{ t = "kill", quest = 4182, npc = 7040, target = "Black Dragonspawn", count = 10, oi = 2, map = 1428, x = 91.6, y = 47.4, f = "e" },
				},
			},
			{
				label = "Kill_Black_Broodlings",
				along = true,
				note = "Small flying dragons.",
				goals = {
					{ t = "kill", quest = 4182, npc = 7047, target = "Black Broodling", count = 15, oi = 1, map = 1428, x = 90.4, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4296, item = 11470, itemName = "Tablet Transcript", oi = 1, map = 1428, x = 54.09, y = 40.73, f = "e" },
				},
			},
			{
				label = "Recover_Information",
				along = true,
				note = "Upright grey stones.",
				goals = {
					{ t = "complete", quest = 3701, title = "The Smoldering Ruins of Thaurissan", note = "Recover #12# Information", map = 1428, x = 54.1, y = 40.8, f = "e" },
				},
			},
			{
				note = "Ogre. Careful, hits hard. May need help. Walks around. In and out of the building.",
				goals = {
					{ t = "collect", quest = 3824, item = 11080, itemName = "Gor'tesh's Lopped Off Head", oi = 1, map = 1428, x = 39.26, y = 55.36, f = "e" },
				},
			},
			{
				label = "Collect_Blackrock_Medallions",
				along = true,
				note = "Orcs and wolves.",
				goals = {
					{ t = "collect", quest = 4283, item = 11467, itemName = "Blackrock Medallion", count = 50, oi = 1, map = 1428, x = 41.2, y = 56.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up into Morgan's Vigil", map = 1428, x = 82.85, y = 63.33 },
					{ t = "turnin", quest = 3824, title = "Gor'tesh the Brute Lord", npc = 9177, npcName = "Oralius", map = 1428, x = 84.56, y = 68.67, f = "e" },
					{ t = "accept", quest = 3825, title = "Ogre Head On A Stick = Party", npc = 9177, npcName = "Oralius", map = 1428, x = 84.56, y = 68.67, f = "e" },
					{ t = "turnin", quest = 4283, title = "FIFTY! YEP!", npc = 9177, npcName = "Oralius", map = 1428, x = 84.56, y = 68.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4182, title = "Dragonkin Menace", npc = 9562, npcName = "Helendis Riverhorn", map = 1428, x = 85.82, y = 68.95, f = "e" },
					{ t = "accept", quest = 4183, title = "The True Masters", npc = 9562, npcName = "Helendis Riverhorn", map = 1428, x = 85.82, y = 68.95, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4183, title = "The True Masters", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.9, y = 44.45, f = "e" },
					{ t = "accept", quest = 4184, title = "The True Masters", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.9, y = 44.45, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter Stormwind Keep", map = 1453, x = 73.09, y = 46.63 },
					{ t = "turnin", quest = 4184, title = "The True Masters", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.15, y = 38.33, f = "e" },
					{ t = "accept", quest = 4185, title = "The True Masters", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.15, y = 38.33, f = "e" },
					{ t = "accept", quest = 6182, title = "The First and the Last", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.15, y = 38.33, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "complete", quest = 4185, title = "The True Masters", note = "Seek Advice from Lady Prestor", map = 1453, x = 80.06, y = 38.15, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4185, title = "The True Masters", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.15, y = 38.33, f = "e" },
					{ t = "accept", quest = 4186, title = "The True Masters", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.15, y = 38.33, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 6182, title = "The First and the Last", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.27, y = 70.74, f = "e" },
					{ t = "accept", quest = 6183, title = "Honor the Dead", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.27, y = 70.74, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 6183, title = "Honor the Dead", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.27, y = 70.74, f = "e" },
					{ t = "accept", quest = 6184, title = "Flint Shadowmore", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.27, y = 70.74, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 5022, title = "Better Late Than Never", npc = 10782, npcName = "Royal Factor Bathrilor", map = 1453, x = 57.16, y = 48.05, f = "e" },
					{ t = "accept", quest = 5048, title = "Good Natured Emma", npc = 10782, npcName = "Royal Factor Bathrilor", map = 1453, x = 57.16, y = 48.05, f = "e" },
				},
			},
			{
				note = "Old human woman. Walks a large path.",
				goals = {
					{ t = "turnin", quest = 5048, title = "Good Natured Emma", npc = 3520, npcName = "Ol' Emma", map = 1453, x = 60.2, y = 57.0, f = "e" },
					{ t = "accept", quest = 5050, title = "Good Luck Charm", npc = 3520, npcName = "Ol' Emma", map = 1453, x = 60.2, y = 57.0, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", text = "Train Horse Riding", map = 1429, x = 84.32, y = 64.87 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4186, title = "The True Masters", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.9, y = 44.45, f = "e" },
					{ t = "accept", quest = 4223, title = "The True Masters", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.9, y = 44.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4223, title = "The True Masters", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
					{ t = "accept", quest = 4224, title = "The True Masters", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4726, title = "Broodling Essence", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
					{ t = "accept", quest = 4808, title = "Felnok Steelspring", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4296, title = "Tablet of the Seven", npc = 9536, npcName = "Maxwort Uberglint", map = 1428, x = 65.15, y = 23.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 4224, title = "The True Masters", note = "Listen to Ragged John's Story", map = 1428, x = 65.01, y = 23.76, f = "e" },
				},
			},
			{
				note = "Top of the mountain.",
				goals = {
					{ t = "goto", text = "Cross the hanging bridge and follow the path up", map = 1428, x = 76.13, y = 38.04 },
					{ t = "complete", quest = 3825, title = "Ogre Head On A Stick = Party", note = "Plant Gor'tesh's Head", map = 1428, x = 80.99, y = 46.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up into Morgan's Vigil", map = 1428, x = 82.85, y = 63.33 },
					{ t = "turnin", quest = 3825, title = "Ogre Head On A Stick = Party", npc = 9177, npcName = "Oralius", map = 1428, x = 84.56, y = 68.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4224, title = "The True Masters", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.74, y = 69.01, f = "e" },
				},
			},
			{
				note = "Run dungeons, if you prefer.",
				goals = {
					{ t = "goto", text = "ding 57", map = 1428, x = 75.6, y = 50.0 },
				},
			},
		},
	})
end

