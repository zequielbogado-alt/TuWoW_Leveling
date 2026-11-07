-- TuWoW_Leveling — Guides/Leveling_Alliance_03.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-night-elf-1-13",
		pack = "guides",
		title = "Night Elf (1-13) (Parte 1/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-night-elf-1-13-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1438,
		version = 1,
		races = { "NightElf" },
		steps = {
			{
				goals = {
					{ t = "accept", quest = 456, title = "The Balance of Nature (1)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 456, target = "Young Nightsaber", count = 7, oi = 1, map = 1438, x = 58.5, y = 45.9, f = "e" },
					{ t = "kill", quest = 456, target = "Young Thistle Boar", count = 4, oi = 2, map = 1438, x = 58.5, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 2, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 456, title = "The Balance of Nature (1)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
					{ t = "accept", quest = 457, title = "The Balance of Nature (2)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
					{ t = "accept", quest = 3116, title = "Simple Sigil", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 456, title = "The Balance of Nature (1)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
					{ t = "accept", quest = 457, title = "The Balance of Nature (2)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
					{ t = "accept", quest = 3118, title = "Encrypted Sigil", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 456, title = "The Balance of Nature (1)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
					{ t = "accept", quest = 457, title = "The Balance of Nature (2)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
					{ t = "accept", quest = 3119, title = "Hallowed Sigil", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 456, title = "The Balance of Nature (1)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
					{ t = "accept", quest = 457, title = "The Balance of Nature (2)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
					{ t = "accept", quest = 3117, title = "Etched Sigil", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 456, title = "The Balance of Nature (1)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
					{ t = "accept", quest = 457, title = "The Balance of Nature (2)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
					{ t = "accept", quest = 3120, title = "Verdant Sigil", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 458, title = "The Woodland Protector (1)", npc = 2077, npcName = "Melithar Staghelm", map = 1438, x = 59.9, y = 42.5, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 3116, title = "Simple Sigil", npc = 3593, npcName = "Alyissia", map = 1438, x = 59.6, y = 38.4, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 3118, title = "Encrypted Sigil", npc = 3594, npcName = "Frahun Shadewhisper", map = 1438, x = 59.6, y = 38.7, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 3119, title = "Hallowed Sigil", npc = 3595, npcName = "Shanda", map = 1438, x = 59.2, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4495, title = "A Good Friend", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 458, title = "The Woodland Protector (1)", npc = 1992, npcName = "Tarindrella", map = 1438, x = 57.6, y = 45.3, f = "e" },
					{ t = "accept", quest = 459, title = "The Woodland Protector (2)", npc = 1992, npcName = "Tarindrella", map = 1438, x = 57.6, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 459, itemName = "Fel Moss", count = 8, oi = 1, map = 1438, x = 56.5, y = 45.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 459, title = "The Woodland Protector (2)", npc = 1992, npcName = "Tarindrella", map = 1438, x = 57.6, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 916, title = "Webwood Venom", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.8, y = 41.7, f = "e" },
				},
			},
			{
				note = "Go up the huge spiral ramp to 58.7,40.5",
				only = { races = { "NightElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 3117, title = "Etched Sigil", npc = 3596, npcName = "Ayanna Everstride", map = 1438, x = 58.7, y = 40.5, f = "e" },
				},
			},
			{
				note = "Go up the huge spiral ramp to 58.6,40.3",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 3120, title = "Verdant Sigil", npc = 3597, npcName = "Mardant Strongoak", map = 1438, x = 58.6, y = 40.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 457, target = "Mangy Nightsaber", count = 7, oi = 1, map = 1438, x = 58.8, y = 36.8, f = "e" },
					{ t = "kill", quest = 457, target = "Thistle Boar", count = 7, oi = 2, map = 1438, x = 58.8, y = 36.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 916, itemName = "Webwood Venom Sac", count = 10, oi = 1, map = 1438, x = 58.3, y = 32.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4495, title = "A Good Friend", npc = 8584, npcName = "Iverron", map = 1438, x = 54.6, y = 33.0, f = "e" },
					{ t = "accept", quest = 3519, title = "A Friend in Need", npc = 8584, npcName = "Iverron", map = 1438, x = 54.6, y = 33.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 916, title = "Webwood Venom", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.8, y = 41.7, f = "e" },
					{ t = "accept", quest = 917, title = "Webwood Egg", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.8, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 457, title = "The Balance of Nature (2)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3519, title = "A Friend in Need", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 42.0, f = "e" },
					{ t = "accept", quest = 3521, title = "Iverron's Antidote (1)", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3521, itemName = "Hyacinth Mushroom", count = 7, oi = 1, map = 1438, x = 55.2, y = 39.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3521, itemName = "Moonpetal Lily", count = 4, oi = 2, map = 1438, x = 57.7, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3521, itemName = "Webwood Ichor", count = 1, oi = 3, map = 1438, x = 56.7, y = 32.1, f = "e" },
				},
			},
			{
				note = "Go into the cave at 56.8,31.7|n",
				goals = {
					{ t = "goto", map = 1438, x = 56.8, y = 31.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 917, itemName = "Webwood Egg", count = 1, oi = 1, map = 1438, x = 56.7, y = 26.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 917, title = "Webwood Egg", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.8, y = 41.7, f = "e" },
					{ t = "accept", quest = 920, title = "Tenaron's Summons", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.8, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 920, title = "Tenaron's Summons", npc = 3514, npcName = "Tenaron Stormgrip", map = 1438, x = 59.1, y = 39.4, f = "e" },
					{ t = "accept", quest = 921, title = "Crown of the Earth (1)", npc = 3514, npcName = "Tenaron Stormgrip", map = 1438, x = 59.1, y = 39.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3521, title = "Iverron's Antidote (1)", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 42.0, f = "e" },
					{ t = "accept", quest = 3522, title = "Iverron's Antidote (2)", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3522, title = "Iverron's Antidote (2)", npc = 8584, npcName = "Iverron", map = 1438, x = 54.6, y = 33.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 921, itemName = "Filled Crystal Phial", count = 1, oi = 1, map = 1438, x = 59.9, y = 33.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 921, title = "Crown of the Earth (1)", npc = 3514, npcName = "Tenaron Stormgrip", map = 1438, x = 59.1, y = 39.4, f = "e" },
					{ t = "accept", quest = 928, title = "Crown of the Earth (2)", npc = 3514, npcName = "Tenaron Stormgrip", map = 1438, x = 59.1, y = 39.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2159, title = "Dolanaar Delivery", npc = 6780, npcName = "Porthannius", map = 1438, x = 61.2, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 488, title = "Zenn's Bidding", npc = 2150, npcName = "Zenn Foulhoof", map = 1438, x = 60.4, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 488, itemName = "Strigid Owl Feather", count = 3, oi = 2, map = 1438, x = 63.8, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 488, itemName = "Webwood Spider Silk", count = 3, oi = 3, map = 1438, x = 60.6, y = 58.2, f = "e" },
					{ t = "collect", quest = 488, itemName = "Nightsaber Fang", count = 3, oi = 1, map = 1438, x = 60.6, y = 58.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 488, title = "Zenn's Bidding", npc = 2150, npcName = "Zenn Foulhoof", map = 1438, x = 60.4, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 489, title = "Seek Redemption!", npc = 2083, npcName = "Syral Bladeleaf", map = 1438, x = 56.1, y = 57.7, f = "e" },
					{ t = "accept", quest = 997, title = "Denalan's Earth", npc = 2083, npcName = "Syral Bladeleaf", map = 1438, x = 56.1, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 475, title = "A Troubling Breeze", npc = 2078, npcName = "Athridas Bearmantle", map = 1438, x = 56.0, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2438, title = "The Emerald Dreamcatcher", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.6, y = 56.9, f = "e" },
					{ t = "accept", quest = 932, title = "Twisted Hatred", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.6, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2159, title = "Dolanaar Delivery", npc = 6736, npcName = "Innkeeper Keldamyr", map = 1438, x = 55.6, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Dolanaar", text = "Dolanaar", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 928, title = "Crown of the Earth (2)", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.1, y = 61.7, f = "e" },
					{ t = "accept", quest = 929, title = "Crown of the Earth (3)", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.1, y = 61.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 929, itemName = "Filled Jade Phial", count = 1, oi = 1, map = 1438, x = 63.3, y = 58.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 475, title = "A Troubling Breeze", npc = 2107, npcName = "Gaerolas Talvethren", map = 1438, x = 66.3, y = 58.5, f = "e" },
					{ t = "accept", quest = 476, title = "Gnarlpine Corruption", npc = 2107, npcName = "Gaerolas Talvethren", map = 1438, x = 66.3, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2438, itemName = "Emerald Dreamcatcher", count = 1, oi = 1, map = 1438, x = 68.0, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 489, itemName = "Fel Cone", count = 3, oi = 1, map = 1438, x = 63.6, y = 62.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 476, title = "Gnarlpine Corruption", npc = 2078, npcName = "Athridas Bearmantle", map = 1438, x = 56.0, y = 57.3, f = "e" },
					{ t = "accept", quest = 483, title = "The Relics of Wakening", npc = 2078, npcName = "Athridas Bearmantle", map = 1438, x = 56.0, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2438, title = "The Emerald Dreamcatcher", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.6, y = 56.9, f = "e" },
					{ t = "accept", quest = 2459, title = "Ferocitas the Dream Eater", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.6, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 929, title = "Crown of the Earth (3)", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.1, y = 61.7, f = "e" },
					{ t = "accept", quest = 933, title = "Crown of the Earth (4)", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.1, y = 61.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 489, title = "Seek Redemption!", npc = 2150, npcName = "Zenn Foulhoof", map = 1438, x = 60.4, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 997, title = "Denalan's Earth", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
					{ t = "accept", quest = 918, title = "Timberling Seeds", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
					{ t = "accept", quest = 919, title = "Timberling Sprouts", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 918, itemName = "Timberling Seed", count = 8, oi = 1, map = 1438, x = 61.2, y = 66.8, f = "e" },
					{ t = "collect", quest = 919, itemName = "Timberling Sprout", count = 12, oi = 1, map = 1438, x = 61.2, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 918, title = "Timberling Seeds", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
					{ t = "accept", quest = 922, title = "Rellian Greenspyre", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
					{ t = "turnin", quest = 919, title = "Timberling Sprouts", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2459, target = "Gnarlpine Mystic", count = 7, oi = 1, map = 1438, x = 68.3, y = 53.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Gnarlpine Necklace", count = 1, map = 1438, x = 69.4, y = 53.3, f = "e" },
					{ t = "collect", quest = 2459, itemName = "Tallonkai's Jewel", count = 1, oi = 2, map = 1438, x = 69.4, y = 53.3, f = "e" },
				},
			},
			{
				note = "Go to the top of the tower to 55.6,56.9",
				goals = {
					{ t = "turnin", quest = 2459, title = "Ferocitas the Dream Eater", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.6, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 487, title = "The Road to Darnassus", npc = 2151, npcName = "Moon Priestess Amara", map = 1438, x = 52.4, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 487, target = "Gnarlpine Ambusher", count = 6, oi = 1, map = 1438, x = 46.7, y = 53.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 483, itemName = "Black Feather Quill", count = 1, oi = 2, map = 1438, x = 43.7, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 483, itemName = "Rune of Nesting", count = 1, oi = 4, map = 1438, x = 44.4, y = 60.7, f = "e" },
				},
			},
			{
				note = "Go downstairs to 44.9,61.6",
				goals = {
					{ t = "accept", quest = 2541, title = "The Sleeping Druid", npc = 7317, npcName = "Oben Rageclaw", map = 1438, x = 44.9, y = 61.6, f = "e" },
				},
			},
			{
				note = "Go to the next room over to 45.6,58.7",
				goals = {
					{ t = "collect", quest = 2541, itemName = "Shaman Voodoo Charm", count = 1, oi = 1, map = 1438, x = 45.6, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 483, itemName = "Raven Claw Talisman", count = 1, oi = 1, map = 1438, x = 45.7, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2541, title = "The Sleeping Druid", npc = 7317, npcName = "Oben Rageclaw", map = 1438, x = 44.9, y = 61.6, f = "e" },
					{ t = "accept", quest = 2561, title = "Druid of the Claw", npc = 7317, npcName = "Oben Rageclaw", map = 1438, x = 44.9, y = 61.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 7318, target = "Rageclaw", count = 1, map = 1438, x = 45.6, y = 58.7, f = "e" },
				},
			},
			{
				note = "Go through the tunnel back to where Oben Rageclaw is to 44.7,62.5",
				goals = {
					{ t = "collect", quest = 483, itemName = "Sapphire of Sky", count = 1, oi = 3, map = 1438, x = 44.7, y = 62.5, f = "e" },
				},
			},
			{
				note = "Go back up the path to 44.9,61.6",
				goals = {
					{ t = "turnin", quest = 2561, title = "Druid of the Claw", npc = 7317, npcName = "Oben Rageclaw", map = 1438, x = 44.9, y = 61.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 9, f = "e" },
				},
			},
			{
				note = "Hearth to Dolanaar|goto Teldrassil,55.7,59.8,1|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 483, title = "The Relics of Wakening", npc = 2078, npcName = "Athridas Bearmantle", map = 1438, x = 56.0, y = 57.3, f = "e" },
					{ t = "accept", quest = 486, title = "Ursal the Mauler", npc = 2078, npcName = "Athridas Bearmantle", map = 1438, x = 56.0, y = 57.3, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 52.8,50.2",
				goals = {
					{ t = "collect", quest = 932, itemName = "Melenas' Head", count = 1, oi = 1, map = 1438, x = 52.8, y = 50.2, f = "e" },
				},
			},
			{
				note = "Go outside and go to the top of the tower to 55.6,56.9",
				goals = {
					{ t = "turnin", quest = 932, title = "Twisted Hatred", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.6, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 933, itemName = "Filled Tourmaline Phial", count = 1, oi = 1, map = 1438, x = 42.4, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 930, title = "The Glowing Fruit", map = 1438, x = 42.6, y = 76.1, f = "e" },
				},
			},
		},
	})
end

