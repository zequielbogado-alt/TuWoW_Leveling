-- TuWoW_Leveling — Guides/Leveling_Alliance_07.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-night-elf-starter-1-13",
		pack = "guides",
		title = "Night Elf Starter (Parte 1/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-night-elf-starter-1-13-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1438,
		version = 1,
		races = { "NightElf" },
		steps = {
			{
				note = "Loot items worth at least 10 copper to sell. Allows training an ability early.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Teldrassil", map = 1438, x = 58.2, y = 45.4 },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "vendor", npc = 6091, npcName = "Dellylah", map = 1438, x = 59.6, y = 40.69, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3593, npcName = "Alyissia", map = 1438, x = 59.64, y = 38.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 456, title = "The Balance of Nature", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.69, y = 44.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 456, npc = 1984, target = "Young Thistle Boar", count = 4, oi = 2, map = 1438, x = 60.4, y = 44.2, f = "e" },
					{ t = "kill", quest = 456, npc = 2031, target = "Young Nightsaber", count = 7, oi = 1, map = 1438, x = 60.4, y = 44.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4495, title = "A Good Friend", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 41.96, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 458, title = "The Woodland Protector", npc = 2077, npcName = "Melithar Staghelm", map = 1438, x = 59.93, y = 42.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 456, title = "The Balance of Nature", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.27, f = "e" },
					{ t = "accept", quest = 457, title = "The Balance of Nature", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.27, f = "e" },
					{ t = "accept", quest = 3116, title = "Simple Sigil", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.27, f = "e", only = { races = { "NightElf" }, classes = { "WARRIOR" } } },
					{ t = "accept", quest = 3118, title = "Encrypted Sigil", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.27, f = "e", only = { races = { "NightElf" }, classes = { "ROGUE" } } },
					{ t = "accept", quest = 3119, title = "Hallowed Sigil", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.27, f = "e", only = { races = { "NightElf" }, classes = { "PRIEST" } } },
					{ t = "accept", quest = 3117, title = "Etched Sigil", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.27, f = "e", only = { races = { "NightElf" }, classes = { "HUNTER" } } },
					{ t = "accept", quest = 3120, title = "Verdant Sigil", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.27, f = "e", only = { races = { "NightElf" }, classes = { "DRUID" } } },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 3116, title = "Simple Sigil", npc = 3593, npcName = "Alyissia", map = 1438, x = 59.64, y = 38.44, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3593, npcName = "Alyissia", map = 1438, x = 59.64, y = 38.44, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 3118, title = "Encrypted Sigil", npc = 3594, npcName = "Frahun Shadewhisper", map = 1438, x = 59.64, y = 38.66, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3594, npcName = "Frahun Shadewhisper", map = 1438, x = 59.64, y = 38.66, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 3119, title = "Hallowed Sigil", npc = 3595, npcName = "Shanda", map = 1438, x = 59.17, y = 40.44, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 3595, npcName = "Shanda", map = 1438, x = 59.17, y = 40.44, f = "e" },
				},
			},
			{
				note = "Up in the tall tree. In a side room.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Run up the large ramp", map = 1438, x = 57.53, y = 41.63 },
					{ t = "turnin", quest = 3117, title = "Etched Sigil", npc = 3596, npcName = "Ayanna Everstride", map = 1438, x = 58.65, y = 40.45, f = "e" },
				},
			},
			{
				note = "Up in the tall tree. In a side room.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3596, npcName = "Ayanna Everstride", map = 1438, x = 58.65, y = 40.45, f = "e" },
				},
			},
			{
				note = "Up in the tall tree. In a side room.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Run up the large ramp", map = 1438, x = 57.53, y = 41.63 },
					{ t = "turnin", quest = 3120, title = "Verdant Sigil", npc = 3597, npcName = "Mardant Strongoak", map = 1438, x = 58.63, y = 40.29, f = "e" },
				},
			},
			{
				note = "Up in the tall tree. In a side room.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 3597, npcName = "Mardant Strongoak", map = 1438, x = 58.63, y = 40.29, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 458, title = "The Woodland Protector", npc = 1992, npcName = "Tarindrella", map = 1438, x = 57.83, y = 45.2, f = "e" },
					{ t = "accept", quest = 459, title = "The Woodland Protector", npc = 1992, npcName = "Tarindrella", map = 1438, x = 57.83, y = 45.2, f = "e" },
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
				label = "Collect_Fel_Moss",
				along = true,
				note = "Imps.",
				goals = {
					{ t = "collect", quest = 459, item = 3297, itemName = "Fel Moss", count = 8, oi = 1, map = 1438, x = 55.52, y = 44.07, f = "e" },
				},
			},
			{
				note = "Quest requires level 3 soon.",
				goals = {
					{ t = "goto", text = "ding 3", map = 1438, x = 55.52, y = 44.07 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 916, title = "Webwood Venom", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.81, y = 41.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 457, npc = 2032, target = "Mangy Nightsaber", count = 7, oi = 1, map = 1438, x = 60.76, y = 35.55, f = "e" },
					{ t = "kill", quest = 457, npc = 1985, target = "Thistle Boar", count = 7, oi = 2, map = 1438, x = 60.76, y = 35.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4495, title = "A Good Friend", npc = 8584, npcName = "Iverron", map = 1438, x = 54.6, y = 32.99, f = "e" },
					{ t = "accept", quest = 3519, title = "A Friend in Need", npc = 8584, npcName = "Iverron", map = 1438, x = 54.6, y = 32.99, f = "e" },
				},
			},
			{
				label = "Collect_Webwood_Venom_Sacs",
				along = true,
				note = "Inside and outside the cave. notinsticky",
				goals = {
					{ t = "collect", quest = 916, item = 5166, itemName = "Webwood Venom Sac", count = 10, oi = 1, map = 1438, x = 56.8, y = 31.59, f = "e" },
				},
			},
			{
				note = "No death penalty at this level. Fast travel. Inside and outside the cave.",
				goals = {
					{ t = "complete", quest = 916, title = "Webwood Venom", note = "Die on Purpose", map = 1438, x = 56.8, y = 31.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 916, title = "Webwood Venom", note = "Resurrect at the Spirit Healer", map = 1438, x = 58.7, y = 42.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1438, x = 56.78, y = 31.44 },
					{ t = "turnin", quest = 916, title = "Webwood Venom", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.81, y = 41.65, f = "e" },
					{ t = "accept", quest = 917, title = "Webwood Egg", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.81, y = 41.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 457, title = "The Balance of Nature", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.26, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 459, title = "The Woodland Protector", npc = 1992, npcName = "Tarindrella", map = 1438, x = 57.83, y = 45.2, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3593, npcName = "Alyissia", map = 1438, x = 59.64, y = 38.44, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3594, npcName = "Frahun Shadewhisper", map = 1438, x = 59.64, y = 38.66, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 3595, npcName = "Shanda", map = 1438, x = 59.17, y = 40.44, f = "e" },
				},
			},
			{
				note = "Up in the tall tree. In a side room.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Run up the large ramp", map = 1438, x = 57.53, y = 41.63 },
					{ t = "train", npc = 3596, npcName = "Ayanna Everstride", map = 1438, x = 58.65, y = 40.45, f = "e" },
				},
			},
			{
				note = "Up in the tall tree. In a side room.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Run up the large ramp", map = 1438, x = 57.53, y = 41.63 },
					{ t = "train", npc = 3597, npcName = "Mardant Strongoak", map = 1438, x = 58.63, y = 40.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3519, title = "A Friend in Need", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 41.96, f = "e" },
					{ t = "accept", quest = 3521, title = "Iverron's Antidote", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 41.96, f = "e" },
				},
			},
			{
				note = "Clusters of pink mushrooms. Usually near trees.",
				goals = {
					{ t = "collect", quest = 3521, item = 10639, itemName = "Hyacinth Mushroom", count = 7, oi = 1, map = 1438, x = 57.01, y = 41.71, f = "e" },
				},
			},
			{
				note = "Large orange flowers.",
				goals = {
					{ t = "collect", quest = 3521, item = 10641, itemName = "Moonpetal Lily", count = 4, oi = 2, map = 1438, x = 57.69, y = 37.49, f = "e" },
				},
			},
			{
				note = "Upstairs inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1438, x = 56.79, y = 31.41 },
					{ t = "goto", text = "Follow the path down", map = 1438, x = 56.83, y = 28.94 },
					{ t = "goto", text = "Follow the path up", map = 1438, x = 55.75, y = 25.49 },
				},
			},
			{
				note = "Upstairs inside the cave.",
				goals = {
					{ t = "collect", quest = 917, item = 5167, itemName = "Webwood Egg", oi = 1, map = 1438, x = 56.8, y = 26.43, f = "e" },
				},
			},
			{
				label = "Collect_Webwood_Ichor",
				along = true,
				note = "Inside and outside the cave. notinsticky",
				goals = {
					{ t = "collect", quest = 3521, item = 10640, itemName = "Webwood Ichor", oi = 3, map = 1438, x = 56.8, y = 31.59, f = "e" },
				},
			},
			{
				note = "No death penalty at this level. Fast travel. Inside and outside the cave.",
				goals = {
					{ t = "complete", quest = 3521, title = "Iverron's Antidote", note = "Die on Purpose", map = 1438, x = 56.8, y = 31.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3521, title = "Iverron's Antidote", note = "Resurrect at the Spirit Healer", map = 1438, x = 58.69, y = 42.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1438, x = 56.78, y = 31.44 },
					{ t = "turnin", quest = 917, title = "Webwood Egg", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.81, y = 41.65, f = "e" },
					{ t = "accept", quest = 920, title = "Tenaron's Summons", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.81, y = 41.65, f = "e" },
				},
			},
			{
				note = "Top of the tall tree. In a side room.",
				goals = {
					{ t = "goto", text = "Run up the large ramp", map = 1438, x = 57.54, y = 41.62 },
					{ t = "turnin", quest = 920, title = "Tenaron's Summons", npc = 3514, npcName = "Tenaron Stormgrip", map = 1438, x = 59.07, y = 39.45, f = "e" },
					{ t = "accept", quest = 921, title = "Crown of the Earth", npc = 3514, npcName = "Tenaron Stormgrip", map = 1438, x = 59.07, y = 39.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3521, title = "Iverron's Antidote", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 41.96, f = "e" },
					{ t = "accept", quest = 3522, title = "Iverron's Antidote", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 41.96, f = "e" },
				},
			},
			{
				note = "Timed quest.",
				goals = {
					{ t = "complete", quest = 3522, title = "Iverron's Antidote", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "use", item = 5185, itemName = "Crystal Phial" },
					{ t = "collect", quest = 921, item = 5184, itemName = "Filled Crystal Phial", oi = 1, map = 1438, x = 59.94, y = 33.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3522, title = "Iverron's Antidote", npc = 8584, npcName = "Iverron", map = 1438, x = 54.59, y = 32.99, f = "e" },
				},
			},
			{
				note = "No death penalty at this level. Fast travel. Inside and outside the cave.",
				goals = {
					{ t = "complete", quest = 921, title = "Crown of the Earth", note = "Die on Purpose", map = 1438, x = 56.8, y = 31.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 921, title = "Crown of the Earth", note = "Resurrect at the Spirit Healer", map = 1438, x = 58.69, y = 42.42, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1438, x = 56.78, y = 31.44 },
					{ t = "accept", quest = 5622, title = "In Favor of Elune", npc = 3595, npcName = "Shanda", map = 1438, x = 59.17, y = 40.44, f = "e" },
				},
			},
			{
				note = "Top of the tall tree. In a side room.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1438, x = 56.78, y = 31.44 },
					{ t = "goto", text = "Run up the large ramp", map = 1438, x = 57.54, y = 41.62 },
					{ t = "turnin", quest = 921, title = "Crown of the Earth", npc = 3514, npcName = "Tenaron Stormgrip", map = 1438, x = 59.07, y = 39.45, f = "e" },
					{ t = "accept", quest = 928, title = "Crown of the Earth", npc = 3514, npcName = "Tenaron Stormgrip", map = 1438, x = 59.07, y = 39.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2159, title = "Dolanaar Delivery", npc = 6780, npcName = "Porthannius", map = 1438, x = 61.16, y = 47.64, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 488, title = "Zenn's Bidding", npc = 2150, npcName = "Zenn Foulhoof", map = 1438, x = 60.45, y = 56.15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 997, title = "Denalan's Earth", npc = 2083, npcName = "Syral Bladeleaf", map = 1438, x = 56.08, y = 57.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 475, title = "A Troubling Breeze", npc = 2078, npcName = "Athridas Bearmantle", map = 1438, x = 55.95, y = 57.28, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5622, title = "In Favor of Elune", npc = 3600, npcName = "Laurna Morninglight", map = 1438, x = 55.56, y = 56.75, f = "e" },
					{ t = "accept", quest = 5621, title = "Garments of the Moon", npc = 3600, npcName = "Laurna Morninglight", map = 1438, x = 55.56, y = 56.75, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 3600, npcName = "Laurna Morninglight", map = 1438, x = 55.56, y = 56.75, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building. If possible.",
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "skill", level = 75, skill = "First Aid" },
				},
			},
			{
				note = "While waiting for things like boats. Increases skill in First Aid. Need higher skill to make better bandages. Keep bandages to heal yourself.",
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "complete", quest = 2159, title = "Dolanaar Delivery", note = "Click Here to Continue" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "accept", quest = 932, title = "Twisted Hatred", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.57, y = 56.95, f = "e" },
					{ t = "accept", quest = 2438, title = "The Emerald Dreamcatcher", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.57, y = 56.95, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3598, npcName = "Kyra Windblade", map = 1438, x = 56.22, y = 59.2, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 2159, title = "Dolanaar Delivery", npc = 6736, npcName = "Innkeeper Keldamyr", map = 1438, x = 55.62, y = 59.79, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3599, npcName = "Jannok Breezesong", map = 1438, x = 56.38, y = 60.14, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 3602, npcName = "Kal", map = 1438, x = 55.95, y = 61.56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 928, title = "Crown of the Earth", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.14, y = 61.71, f = "e" },
					{ t = "accept", quest = 929, title = "Crown of the Earth", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.14, y = 61.71, f = "e" },
				},
			},
			{
				note = "Cast Lesser Heal (Rank 2) on Sentinel Shaya. Cast Power Word: Fortitude on Sentinel Shaya.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "complete", quest = 5621, title = "Garments of the Moon", note = "Heal and Fortify Sentinel Shaya", map = 1438, x = 57.24, y = 63.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4161, title = "Recipe of the Kaldorei", npc = 6286, npcName = "Zarrin", map = 1438, x = 57.12, y = 61.3, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 997, title = "Denalan's Earth", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.49, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 918, title = "Timberling Seeds", npc = 2080, npcName = "Denalan", map = 1438, x = 60.8, y = 68.54, f = "e" },
					{ t = "accept", quest = 919, title = "Timberling Sprouts", npc = 2080, npcName = "Denalan", map = 1438, x = 60.8, y = 68.54, f = "e" },
				},
			},
			{
				note = "Brown root balls.",
				goals = {
					{ t = "collect", quest = 919, item = 5169, itemName = "Timberling Sprout", count = 12, oi = 1, map = 1438, x = 61.15, y = 67.6, f = "e" },
				},
			},
			{
				label = "Collect_Timberling_Seeds",
				along = true,
				goals = {
					{ t = "collect", quest = 918, item = 5168, itemName = "Timberling Seed", count = 8, oi = 1, map = 1438, x = 61.15, y = 67.6, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 918, title = "Timberling Seeds", npc = 2080, npcName = "Denalan", map = 1438, x = 60.8, y = 68.54, f = "e" },
					{ t = "accept", quest = 922, title = "Rellian Greenspyre", npc = 2080, npcName = "Denalan", map = 1438, x = 60.8, y = 68.54, f = "e" },
					{ t = "turnin", quest = 919, title = "Timberling Sprouts", npc = 2080, npcName = "Denalan", map = 1438, x = 60.8, y = 68.54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 5619, itemName = "Jade Phial" },
					{ t = "collect", quest = 929, item = 5639, itemName = "Filled Jade Phial", oi = 1, map = 1438, x = 63.38, y = 58.08, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 475, title = "A Troubling Breeze", npc = 2107, npcName = "Gaerolas Talvethren", map = 1438, x = 66.26, y = 58.52, f = "e" },
					{ t = "accept", quest = 476, title = "Gnarlpine Corruption", npc = 2107, npcName = "Gaerolas Talvethren", map = 1438, x = 66.26, y = 58.52, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "collect", quest = 2438, item = 8048, itemName = "Emerald Dreamcatcher", oi = 1, map = 1438, x = 68.01, y = 59.63, f = "e" },
				},
			},
			{
				label = "Collect_Strigid_Owl_Feathers",
				along = true,
				goals = {
					{ t = "collect", quest = 488, item = 3411, itemName = "Strigid Owl Feather", count = 3, oi = 2, map = 1438, x = 64.37, y = 52.74, f = "e" },
				},
			},
			{
				label = "Collect_Nightsaber_Fangs_And_Soft_Saber_Pelts",
				along = true,
				note = "Black tigers.",
				goals = {
					{ t = "collect", quest = 488, item = 3409, itemName = "Nightsaber Fang", count = 3, oi = 1, map = 1438, x = 59.94, y = 59.16, f = "e" },
				},
			},
			{
				label = "Collect_Webwood_Spider_Silk_And_Small_Spider_Legs",
				along = true,
				note = "Green spiders. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 488, item = 3412, itemName = "Webwood Spider Silk", count = 3, oi = 3, map = 1438, x = 61.99, y = 58.93, f = "e" },
					{ t = "collect", quest = 4161, item = 5465, itemName = "Small Spider Leg", count = 7, oi = 1, map = 1438, x = 61.99, y = 58.93, f = "e" },
				},
			},
			{
				note = "Helps reach level 8 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 7,2205", map = 1438, x = 59.94, y = 59.16, only = { classes = { "PRIEST" } } },
					{ t = "goto", text = "ding 7,2475", map = 1438, x = 59.94, y = 59.16 },
				},
			},
		},
	})
end

