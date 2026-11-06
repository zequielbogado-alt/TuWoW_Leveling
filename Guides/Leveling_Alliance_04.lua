-- TuWoW_Leveling — Guides/Leveling_Alliance_04.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-dwarf-and-gnome-starter-1-13",
		pack = "guides",
		title = "Dwarf & Gnome Starter (Parte 1/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-dwarf-and-gnome-starter-1-13-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1426,
		version = 1,
		races = { "Dwarf", "Gnome" },
		steps = {
			{
				note = "Loot items worth at least 10 copper to sell. Allows training an ability early.",
				only = { classes = { "WARRIOR", "SHAMAN", "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Dun Morogh", map = 1426, x = 30.6, y = 74.4 },
				},
			},
			{
				only = { classes = { "WARRIOR", "SHAMAN", "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 829, npcName = "Adlin Pridedrift", map = 1426, x = 30.08, y = 71.52, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1426, x = 28.79, y = 69.05 },
					{ t = "train", npc = 912, npcName = "Thran Khorman", map = 1426, x = 28.83, y = 67.24, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1426, x = 28.79, y = 69.05 },
					{ t = "train", npc = 460, npcName = "Alamar Grimm", map = 1426, x = 28.59, y = 66.23, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1426, x = 28.79, y = 69.05 },
					{ t = "train", map = 1426, x = 28.79, y = 66.19, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the building", map = 1426, x = 28.79, y = 69.07 },
					{ t = "accept", quest = 179, title = "Dwarven Outfitters", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.93, y = 71.2, f = "e" },
				},
			},
			{
				note = "Wolves.",
				goals = {
					{ t = "collect", quest = 179, item = 750, itemName = "Tough Wolf Meat", count = 8, oi = 1, map = 1426, x = 27.96, y = 73.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 179, title = "Dwarven Outfitters", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.93, y = 71.2, f = "e" },
					{ t = "accept", quest = 233, title = "Coldridge Valley Mail Delivery", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.93, y = 71.2, f = "e" },
					{ t = "accept", quest = 3106, title = "Simple Rune", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.93, y = 71.2, f = "e" },
					{ t = "accept", quest = 3109, title = "Encrypted Rune", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.93, y = 71.2, f = "e" },
					{ t = "accept", quest = 3110, title = "Hallowed Rune", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.93, y = 71.2, f = "e" },
					{ t = "accept", quest = 3107, title = "Consecrated Rune", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.93, y = 71.2, f = "e" },
					{ t = "accept", quest = 3108, title = "Etched Rune", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.93, y = 71.2, f = "e" },
					{ t = "accept", quest = 3114, title = "Glyphic Memorandum", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.93, y = 71.2, f = "e" },
					{ t = "accept", quest = 3112, title = "Simple Memorandum", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.93, y = 71.2, f = "e" },
					{ t = "accept", quest = 3115, title = "Tainted Memorandum", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.93, y = 71.2, f = "e" },
					{ t = "accept", quest = 3113, title = "Encrypted Memorandum", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.93, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 170, title = "A New Threat", npc = 713, npcName = "Balir Frosthammer", map = 1426, x = 29.71, y = 71.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 170, npc = 707, target = "Rockjaw Trogg", count = 6, oi = 1, map = 1426, x = 30.58, y = 76.34, f = "e" },
					{ t = "kill", quest = 170, npc = 724, target = "Burly Rockjaw Trogg", count = 6, oi = 2, map = 1426, x = 30.58, y = 76.34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 170, title = "A New Threat", npc = 713, npcName = "Balir Frosthammer", map = 1426, x = 29.71, y = 71.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 233, title = "Coldridge Valley Mail Delivery", npc = 714, npcName = "Talin Keeneye", map = 1426, x = 22.6, y = 71.43, f = "e" },
					{ t = "accept", quest = 234, title = "Coldridge Valley Mail Delivery", npc = 714, npcName = "Talin Keeneye", map = 1426, x = 22.6, y = 71.43, f = "e" },
					{ t = "accept", quest = 183, title = "The Boar Hunter", npc = 714, npcName = "Talin Keeneye", map = 1426, x = 22.6, y = 71.43, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 183, npc = 708, target = "Small Crag Boar", count = 12, oi = 1, map = 1426, x = 21.61, y = 71.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 183, title = "The Boar Hunter", npc = 714, npcName = "Talin Keeneye", map = 1426, x = 22.6, y = 71.43, f = "e" },
				},
			},
			{
				note = "Helps reach level 4 after quest turnins. Quest requires level 4 soon.",
				goals = {
					{ t = "goto", text = "ding 3,1130", map = 1426, x = 21.61, y = 71.13 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 234, title = "Coldridge Valley Mail Delivery", npc = 786, npcName = "Grelin Whitebeard", map = 1426, x = 25.08, y = 75.71, f = "e" },
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
				goals = {
					{ t = "accept", quest = 3364, title = "Scalding Mornbrew Delivery", npc = 12738, npcName = "Nori Pridedrift", map = 1426, x = 24.98, y = 75.96, f = "e" },
				},
			},
			{
				note = "Hurry, timed quest.",
				goals = {
					{ t = "complete", quest = 3364, title = "Scalding Mornbrew Delivery", note = "Click Here to Continue" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1426, x = 28.79, y = 69.05 },
					{ t = "accept", quest = 3361, title = "A Refugee's Quandary", npc = 8416, npcName = "Felix Whindlebolt", map = 1426, x = 28.51, y = 67.67, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3364, title = "Scalding Mornbrew Delivery", npc = 836, npcName = "Durnan Furcutter", map = 1426, x = 28.77, y = 66.37, f = "e" },
					{ t = "accept", quest = 3365, title = "Bring Back the Mug", npc = 836, npcName = "Durnan Furcutter", map = 1426, x = 28.77, y = 66.37, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 3106, title = "Simple Rune", npc = 912, npcName = "Thran Khorman", map = 1426, x = 28.83, y = 67.24, f = "e", only = { races = { "Dwarf" } } },
					{ t = "turnin", quest = 3112, title = "Simple Memorandum", npc = 912, npcName = "Thran Khorman", map = 1426, x = 28.83, y = 67.24, f = "e", only = { races = { "Gnome" } } },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 912, npcName = "Thran Khorman", map = 1426, x = 28.83, y = 67.24, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 3109, title = "Encrypted Rune", npc = 916, npcName = "Solm Hargrin", map = 1426, x = 28.37, y = 67.51, f = "e", only = { races = { "Dwarf" } } },
					{ t = "turnin", quest = 3113, title = "Encrypted Memorandum", npc = 916, npcName = "Solm Hargrin", map = 1426, x = 28.37, y = 67.51, f = "e", only = { races = { "Gnome" } } },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 916, npcName = "Solm Hargrin", map = 1426, x = 28.37, y = 67.51, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 3110, title = "Hallowed Rune", npc = 837, npcName = "Branstock Khalder", map = 1426, x = 28.6, y = 66.39, f = "e", only = { races = { "Dwarf" } } },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 837, npcName = "Branstock Khalder", map = 1426, x = 28.6, y = 66.39, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 3107, title = "Consecrated Rune", npc = 926, npcName = "Bromos Grummner", map = 1426, x = 28.83, y = 68.33, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 926, npcName = "Bromos Grummner", map = 1426, x = 28.83, y = 68.33, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 3108, title = "Etched Rune", npc = 895, npcName = "Thorgas Grimson", map = 1426, x = 29.18, y = 67.46, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 895, npcName = "Thorgas Grimson", map = 1426, x = 29.18, y = 67.46, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 3114, title = "Glyphic Memorandum", npc = 944, npcName = "Marryk Nurribit", map = 1426, x = 28.71, y = 66.36, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 944, npcName = "Marryk Nurribit", map = 1426, x = 28.71, y = 66.36, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 3115, title = "Tainted Memorandum", npc = 460, npcName = "Alamar Grimm", map = 1426, x = 28.59, y = 66.23, f = "e" },
					{ t = "accept", quest = 1599, title = "Beginnings", npc = 460, npcName = "Alamar Grimm", map = 1426, x = 28.59, y = 66.23, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 460, npcName = "Alamar Grimm", map = 1426, x = 28.59, y = 66.23, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", map = 1426, x = 28.79, y = 66.19, f = "e" },
				},
			},
			{
				note = "Walks around. Top of the mountain.",
				goals = {
					{ t = "goto", text = "Leave the building", map = 1426, x = 28.79, y = 69.07 },
					{ t = "goto", text = "Run up the mountain", map = 1426, x = 26.56, y = 67.54 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1426, x = 28.79, y = 69.05 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the building", map = 1426, x = 28.79, y = 69.07 },
					{ t = "buy", item = 7005, itemName = "Skinning Knife", map = 1426, x = 30.09, y = 71.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the building", map = 1426, x = 28.79, y = 69.07 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the building", map = 1426, x = 28.79, y = 69.07 },
					{ t = "buy", item = 2901, itemName = "Mining Pick", map = 1426, x = 30.09, y = 71.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the building", map = 1426, x = 28.79, y = 69.07 },
					{ t = "accept", quest = 182, title = "The Troll Cave", npc = 786, npcName = "Grelin Whitebeard", map = 1426, x = 25.08, y = 75.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3365, title = "Bring Back the Mug", npc = 12738, npcName = "Nori Pridedrift", map = 1426, x = 24.98, y = 75.96, f = "e" },
				},
			},
			{
				note = "Uncommon and spread out. Inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1599, item = 6753, itemName = "Feather Charm", count = 3, oi = 1, map = 1426, x = 26.78, y = 79.83, f = "e" },
				},
			},
			{
				note = "No death penalty at this level. Fast travel. Anywhere inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "complete", quest = 1599, title = "Beginnings", note = "Die on Purpose", map = 1426, x = 26.78, y = 79.83, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "complete", quest = 1599, title = "Beginnings", note = "Resurrect at the Spirit Healer", map = 1426, x = 29.55, y = 69.83, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1426, x = 26.78, y = 79.83 },
					{ t = "goto", text = "Enter the building", map = 1426, x = 28.79, y = 69.05 },
					{ t = "turnin", quest = 1599, title = "Beginnings", npc = 460, npcName = "Alamar Grimm", map = 1426, x = 28.59, y = 66.23, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Upstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6376, npcName = "Wren Darkspring", map = 1426, x = 28.6, y = 66.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the building", map = 1426, x = 28.79, y = 69.07 },
					{ t = "collect", quest = 3361, item = 10438, itemName = "Felix's Box", oi = 1, map = 1426, x = 20.88, y = 76.07, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3361, item = 16313, itemName = "Felix's Chest", oi = 2, map = 1426, x = 22.78, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3361, item = 16314, itemName = "Felix's Bucket of Bolts", oi = 3, map = 1426, x = 26.33, y = 79.27, f = "e" },
				},
			},
			{
				label = "Kill_Frostmane_Troll_Whelps",
				along = true,
				note = "Inside and outside the cave. notinsticky",
				goals = {
					{ t = "kill", quest = 182, npc = 706, target = "Frostmane Troll Whelp", count = 14, oi = 1, map = 1426, x = 26.8, y = 79.86, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1426, x = 26.78, y = 79.83 },
					{ t = "turnin", quest = 182, title = "The Troll Cave", npc = 786, npcName = "Grelin Whitebeard", map = 1426, x = 25.08, y = 75.71, f = "e" },
					{ t = "accept", quest = 218, title = "The Stolen Journal", npc = 786, npcName = "Grelin Whitebeard", map = 1426, x = 25.08, y = 75.71, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1426, x = 26.8, y = 79.86 },
					{ t = "collect", quest = 218, item = 2004, itemName = "Grelin Whitebeard's Journal", oi = 1, map = 1426, x = 30.49, y = 80.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1426, x = 26.78, y = 79.83 },
					{ t = "turnin", quest = 218, title = "The Stolen Journal", npc = 786, npcName = "Grelin Whitebeard", map = 1426, x = 25.08, y = 75.71, f = "e" },
					{ t = "accept", quest = 282, title = "Senir's Observations", npc = 786, npcName = "Grelin Whitebeard", map = 1426, x = 25.08, y = 75.71, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1426, x = 28.79, y = 69.05 },
					{ t = "turnin", quest = 3361, title = "A Refugee's Quandary", npc = 8416, npcName = "Felix Whindlebolt", map = 1426, x = 28.55, y = 67.65, f = "e" },
				},
			},
			{
				note = "Top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1426, x = 28.79, y = 69.07 },
					{ t = "goto", text = "Run up the mountain", map = 1426, x = 26.56, y = 67.54 },
					{ t = "use", item = 6635, itemName = "Earth Sapta" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1426, x = 28.79, y = 69.05 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the building", map = 1426, x = 28.79, y = 69.05 },
					{ t = "turnin", quest = 282, title = "Senir's Observations", npc = 1965, npcName = "Mountaineer Thalos", map = 1426, x = 33.48, y = 71.84, f = "e" },
					{ t = "accept", quest = 420, title = "Senir's Observations", npc = 1965, npcName = "Mountaineer Thalos", map = 1426, x = 33.48, y = 71.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2160, title = "Supplies to Tannok", npc = 6782, npcName = "Hands Springsprocket", map = 1426, x = 33.85, y = 72.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run through the tunnel and follow the road", map = 1426, x = 34.12, y = 71.51 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 420, title = "Senir's Observations", npc = 1252, npcName = "Senir Whitebeard", map = 1426, x = 46.77, y = 53.81, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 5612, npcName = "Gimrizz Shadowcog", map = 1426, x = 47.33, y = 53.69, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6328, npcName = "Dannie Fizzwizzle", map = 1426, x = 47.28, y = 53.67, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 384, title = "Beer Basted Boar Ribs", npc = 1267, npcName = "Ragnar Thunderbrew", map = 1426, x = 46.83, y = 52.36, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 1228, npcName = "Magis Sparkmantle", map = 1426, x = 47.5, y = 52.08, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 1232, npcName = "Azar Stronghammer", map = 1426, x = 47.6, y = 52.07, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", map = 1426, x = 47.59, y = 51.95, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2160, title = "Supplies to Tannok", npc = 6806, npcName = "Tannok Frosthammer", map = 1426, x = 47.22, y = 52.19, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 1226, npcName = "Maxan Anvol", map = 1426, x = 47.34, y = 52.19, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 5625, title = "Garments of the Light", npc = 1226, npcName = "Maxan Anvol", map = 1426, x = 47.34, y = 52.19, f = "e" },
				},
			},
			{
				note = "Cast Lesser Heal (Rank 2) on Mountaineer Dolf. Cast Power Word: Fortitude on Mountaineer Dolf.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "complete", quest = 5625, title = "Garments of the Light", note = "Heal and Fortify Mountaineer Dolf", map = 1426, x = 45.81, y = 54.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5625, title = "Garments of the Light", npc = 1226, npcName = "Maxan Anvol", map = 1426, x = 47.34, y = 52.19, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 1234, npcName = "Hogral Bakkan", map = 1426, x = 47.56, y = 52.61, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 1229, npcName = "Granis Swiftaxe", map = 1426, x = 47.36, y = 52.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 400, title = "Tools for Steelgrill", npc = 1872, npcName = "Tharek Blackstone", map = 1426, x = 46.02, y = 51.68, f = "e" },
				},
			},
			{
				note = "We will train Mining and Blacksmithing. Allows you to make and use Sharpening Stones. Allows you to make and use Weightstones. Increases damage. Mine Copper Ore as you see it. Use the Rough Stones to make sharpening stones. Use the Rough Stones to make weightstones.",
				only = { classes = { "WARRIOR", "PALADIN", "ROGUE" } },
				goals = {
					{ t = "complete", quest = 400, title = "Tools for Steelgrill", note = "Click Here to Continue" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "WARRIOR", "PALADIN", "ROGUE" } },
				goals = {
					{ t = "skill", level = 75, skill = "Blacksmithing" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR", "PALADIN", "ROGUE" } },
				goals = {
					{ t = "buy", item = 2901, itemName = "Mining Pick", map = 1426, x = 45.3, y = 51.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 317, title = "Stocking Jetsteam", npc = 1378, npcName = "Pilot Bellowfiz", map = 1426, x = 49.43, y = 48.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 313, title = "The Grizzled Den", npc = 1377, npcName = "Pilot Stonegear", map = 1426, x = 49.62, y = 48.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 400, title = "Tools for Steelgrill", npc = 1376, npcName = "Beldin Steelgrill", map = 1426, x = 50.44, y = 49.09, f = "e" },
				},
			},
		},
	})
end

