-- TuWoW_Leveling — Guides/Leveling_Alliance_08.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-night-elf-starter-1-13-part-2",
		pack = "guides",
		title = "Night Elf Starter (Parte 2/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-night-elf-starter-1-13-part-3",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1438,
		version = 1,
		races = { "NightElf" },
		steps = {
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 488, title = "Zenn's Bidding", npc = 2150, npcName = "Zenn Foulhoof", map = 1438, x = 60.45, y = 56.15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 489, title = "Seek Redemption!", npc = 2083, npcName = "Syral Bladeleaf", map = 1438, x = 56.08, y = 57.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 476, title = "Gnarlpine Corruption", npc = 2078, npcName = "Athridas Bearmantle", map = 1438, x = 55.95, y = 57.28, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5621, title = "Garments of the Moon", npc = 3600, npcName = "Laurna Morninglight", map = 1438, x = 55.56, y = 56.75, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "turnin", quest = 2438, title = "The Emerald Dreamcatcher", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.57, y = 56.95, f = "e" },
					{ t = "accept", quest = 2459, title = "Ferocitas the Dream Eater", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.57, y = 56.95, f = "e" },
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
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3598, npcName = "Kyra Windblade", map = 1438, x = 56.22, y = 59.2, f = "e" },
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
					{ t = "turnin", quest = 929, title = "Crown of the Earth", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.14, y = 61.71, f = "e" },
					{ t = "accept", quest = 933, title = "Crown of the Earth", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.14, y = 61.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4161, title = "Recipe of the Kaldorei", npc = 6286, npcName = "Zarrin", map = 1438, x = 57.12, y = 61.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2459, item = 8049, itemName = "Gnarlpine Necklace", map = 1438, x = 69.37, y = 53.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8049, itemName = "Gnarlpine Necklace" },
					{ t = "collect", quest = 2459, item = 8050, itemName = "Tallonkai's Jewel", oi = 2 },
				},
			},
			{
				label = "Kill_Gnarlpine_Mystics",
				along = true,
				goals = {
					{ t = "kill", quest = 2459, npc = 7235, target = "Gnarlpine Mystic", count = 7, oi = 1, map = 1438, x = 69.23, y = 52.96, f = "e" },
				},
			},
			{
				label = "Collect_Fel_Cones",
				along = true,
				note = "Brown pine cones with green smoke. Usually near trees.",
				goals = {
					{ t = "collect", quest = 489, item = 3418, itemName = "Fel Cone", count = 3, oi = 1, map = 1438, x = 66.7, y = 53.4, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 489, title = "Seek Redemption!", npc = 2150, npcName = "Zenn Foulhoof", map = 1438, x = 60.45, y = 56.15, f = "e" },
				},
			},
			{
				note = "Satyr. Multiple locations. Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1438, x = 54.65, y = 52.45 },
					{ t = "collect", quest = 932, item = 5221, itemName = "Melenas' Head", oi = 1, map = 1438, x = 51.22, y = 50.81, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1438, x = 54.65, y = 52.45 },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "turnin", quest = 932, title = "Twisted Hatred", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.57, y = 56.95, f = "e" },
					{ t = "turnin", quest = 2459, title = "Ferocitas the Dream Eater", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.57, y = 56.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 930, title = "The Glowing Fruit", map = 1438, x = 42.63, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 5621, itemName = "Tourmaline Phial" },
					{ t = "collect", quest = 933, item = 5645, itemName = "Filled Tourmaline Phial", oi = 1, map = 1438, x = 42.42, y = 67.07, f = "e" },
				},
			},
			{
				note = "Here, or east of here. No death penalty at this level. Fast travel.",
				goals = {
					{ t = "complete", quest = 933, title = "Crown of the Earth", note = "Die on Purpose", map = 1438, x = 46.87, y = 71.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 933, title = "Crown of the Earth", note = "Resurrect at the Spirit Healer", map = 1438, x = 56.2, y = 63.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 933, title = "Crown of the Earth", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.14, y = 61.71, f = "e" },
					{ t = "accept", quest = 7383, title = "Crown of the Earth", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.14, y = 61.71, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "sethome", location = "Dolanaar", map = 1438, x = 55.62, y = 59.79, f = "e" },
				},
			},
			{
				note = "Walks along the road.",
				goals = {
					{ t = "accept", quest = 487, title = "The Road to Darnassus", npc = 2151, npcName = "Moon Priestess Amara", map = 1438, x = 52.9, y = 57.2, f = "e" },
				},
			},
			{
				label = "Kill_Gnarlpine_Ambushers",
				along = true,
				goals = {
					{ t = "kill", quest = 487, npc = 2152, target = "Gnarlpine Ambusher", count = 6, oi = 1, map = 1438, x = 47.01, y = 53.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 937, title = "The Enchanted Glade", npc = 3519, npcName = "Sentinel Arynia Cloudsbreak", map = 1438, x = 38.31, y = 34.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 18152, itemName = "Amethyst Phial" },
					{ t = "collect", quest = 7383, item = 18151, itemName = "Filled Amethyst Phial", oi = 1, map = 1438, x = 38.43, y = 34.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 931, title = "The Shimmering Frond", map = 1438, x = 34.6, y = 28.85, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until she respawns, if missing.",
				goals = {
					{ t = "accept", quest = 938, title = "Mist", npc = 3568, npcName = "Mist", map = 1438, x = 31.54, y = 31.61, f = "e" },
				},
			},
			{
				note = "Hurry, timed quest.",
				goals = {
					{ t = "complete", quest = 938, title = "Mist", note = "Lead Mist Safely to Sentinel Arynia Cloudsbreak", map = 1438, x = 38.31, y = 34.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 938, title = "Mist", npc = 3519, npcName = "Sentinel Arynia Cloudsbreak", map = 1438, x = 38.31, y = 34.36, f = "e" },
				},
			},
			{
				label = "Collect_Bloodfeather_Belts",
				along = true,
				note = "Harpies.",
				goals = {
					{ t = "collect", quest = 937, item = 5204, itemName = "Bloodfeather Belt", count = 6, oi = 1, map = 1438, x = 36.68, y = 38.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 937, title = "The Enchanted Glade", npc = 3519, npcName = "Sentinel Arynia Cloudsbreak", map = 1438, x = 38.31, y = 34.36, f = "e" },
				},
			},
			{
				note = "No death penalty at this level. Fast travel.",
				goals = {
					{ t = "complete", quest = 922, title = "Rellian Greenspyre", note = "Die on Purpose", map = 1438, x = 35.4, y = 36.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 922, title = "Rellian Greenspyre", note = "Resurrect at the Spirit Healer", map = 1457, x = 76.98, y = 27.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2519, title = "The Temple of the Moon", npc = 7316, npcName = "Sister Aquinne", map = 1457, x = 28.93, y = 45.8, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 2519, title = "The Temple of the Moon", npc = 7313, npcName = "Priestess A'moora", map = 1457, x = 36.64, y = 85.93, f = "e" },
					{ t = "accept", quest = 2518, title = "Tears of the Moon", npc = 7313, npcName = "Priestess A'moora", map = 1457, x = 36.64, y = 85.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 922, title = "Rellian Greenspyre", npc = 3517, npcName = "Rellian Greenspyre", map = 1457, x = 38.19, y = 21.63, f = "e" },
					{ t = "accept", quest = 923, title = "Tumors", npc = 3517, npcName = "Rellian Greenspyre", map = 1457, x = 38.19, y = 21.63, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 4091, npcName = "Jandria", map = 1457, x = 37.9, y = 82.73, f = "e" },
				},
			},
			{
				note = "Downstairs inside the tree cave. Make sure to learn Pick Pocket. Needed for a quest soon.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Enter the tree cave", map = 1457, x = 32.14, y = 16.46 },
					{ t = "train", npc = 4163, npcName = "Syurna", map = 1457, x = 37.0, y = 21.92, f = "e" },
				},
			},
			{
				note = "Buy level 10 ammo when restocking.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 7383, title = "Crown of the Earth", note = "Click Here to Continue" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 6071, title = "The Hunter's Path", npc = 4146, npcName = "Jocaste", map = 1457, x = 40.38, y = 8.54, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 4146, npcName = "Jocaste", map = 1457, x = 40.38, y = 8.54, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 4218, npcName = "Denatharion", map = 1457, x = 34.77, y = 7.37, f = "e" },
				},
			},
			{
				note = "Middle floor inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "accept", quest = 5921, title = "Moonglade", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.37, y = 8.4, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 5921, title = "Moonglade", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 5929, title = "Great Bear Spirit", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "complete", quest = 5929, title = "Great Bear Spirit", note = "Seek Out the Great Bear Spirit and Learn what it Has to Share with You About the Nature of the Bear", map = 1450, x = 39.11, y = 27.51, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 5929, title = "Great Bear Spirit", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 5931, title = "Back to Darnassus", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "getfp", location = "Moonglade", map = 1450, x = 48.1, y = 67.34, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 4089, npcName = "Sildanair", map = 1457, x = 61.78, y = 42.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1684, title = "Elanaria", npc = 3598, npcName = "Kyra Windblade", map = 1438, x = 56.22, y = 59.2, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6071, title = "The Hunter's Path", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
					{ t = "accept", quest = 6063, title = "Taming the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
				},
			},
			{
				note = "On a Webwood Lurker. Green spiders.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15921, itemName = "Taming Rod" },
					{ t = "complete", quest = 6063, title = "Taming the Beast", note = "Tame a Webwood Lurker", map = 1438, x = 61.4, y = 58.55, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6063, title = "Taming the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
					{ t = "accept", quest = 6101, title = "Taming the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7383, title = "Crown of the Earth", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.14, y = 61.71, f = "e" },
					{ t = "accept", quest = 935, title = "Crown of the Earth", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.14, y = 61.71, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 931, title = "The Shimmering Frond", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.49, f = "e" },
					{ t = "turnin", quest = 930, title = "The Glowing Fruit", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.49, f = "e" },
				},
			},
			{
				note = "On a Nightsaber Stalker. Blue leopards. Dismiss your pet first.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15922, itemName = "Taming Rod" },
					{ t = "complete", quest = 6101, title = "Taming the Beast", note = "Tame a Nightsaber Stalker", map = 1438, x = 61.8, y = 73.0, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6101, title = "Taming the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
					{ t = "accept", quest = 6102, title = "Taming the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
				},
			},
			{
				note = "On a Strigid Screecher. Owls. Dismiss your pet first.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15923, itemName = "Taming Rod" },
					{ t = "complete", quest = 6102, title = "Taming the Beast", note = "Tame a Strigid Screecher", map = 1438, x = 64.0, y = 66.2, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6102, title = "Taming the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
					{ t = "accept", quest = 6103, title = "Training the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 2241, title = "The Apple Falls", npc = 3599, npcName = "Jannok Breezesong", map = 1438, x = 56.38, y = 60.14, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 5629, title = "Returning Home", npc = 3600, npcName = "Laurna Morninglight", map = 1438, x = 55.57, y = 56.75, f = "e" },
				},
			},
			{
				note = "Walks along the road.",
				goals = {
					{ t = "turnin", quest = 487, title = "The Road to Darnassus", npc = 2151, npcName = "Moon Priestess Amara", map = 1438, x = 52.9, y = 57.2, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Enter the cave in the tree trunk", map = 1457, x = 32.12, y = 16.46 },
					{ t = "turnin", quest = 2241, title = "The Apple Falls", npc = 4163, npcName = "Syurna", map = 1457, x = 36.99, y = 21.91, f = "e" },
					{ t = "accept", quest = 2242, title = "Destiny Calls", npc = 4163, npcName = "Syurna", map = 1457, x = 36.99, y = 21.91, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on a Strigid Hunter. Owls. Dismiss your pet first.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 6103, title = "Training the Beast", note = "Click Here to Continue", map = 1438, x = 40.8, y = 44.8, f = "e" },
				},
			},
			{
				note = "Large grey spider. Walks around. Multiple locations.",
				goals = {
					{ t = "collect", quest = 2518, item = 8344, itemName = "Silvery Spinnerets", oi = 1, map = 1438, x = 48.0, y = 25.2, f = "e" },
				},
			},
			{
				note = "Cast Pickpocket on Sethir the Ancient. Purple satyr. Stands here and walks onto the huge tree branch nearby. Don't attack, he summons a group of enemies.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 2242, item = 7737, itemName = "Sethir's Journal", oi = 1, map = 1438, x = 37.52, y = 24.29, f = "e" },
				},
			},
			{
				label = "Collect_Mossy_Tumors",
				along = true,
				note = "Swamp elementals.",
				goals = {
					{ t = "collect", quest = 923, item = 5170, itemName = "Mossy Tumor", count = 5, oi = 1, map = 1438, x = 42.0, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 940, title = "Teldrassil", npc = 3519, npcName = "Sentinel Arynia Cloudsbreak", map = 1438, x = 36.96, y = 34.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6344, title = "Nessa Shadowsong", npc = 4241, npcName = "Mydrannul", map = 1457, x = 70.68, y = 45.38, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1684, title = "Elanaria", npc = 4088, npcName = "Elanaria", map = 1457, x = 57.3, y = 34.61, f = "e" },
					{ t = "accept", quest = 1683, title = "Vorlus Vilehoof", npc = 4088, npcName = "Elanaria", map = 1457, x = 57.3, y = 34.61, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Run around the mountain and follow the path up", map = 1438, x = 48.68, y = 62.73 },
					{ t = "collect", quest = 1683, item = 6805, itemName = "Horn of Vorlus", oi = 1, map = 1438, x = 47.25, y = 63.6, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1683, title = "Vorlus Vilehoof", npc = 4088, npcName = "Elanaria", map = 1457, x = 57.3, y = 34.61, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR", "HUNTER", "PRIEST" } },
				goals = {
					{ t = "goto", text = "Train Thrown", map = 1457, x = 57.56, y = 46.73, only = { classes = { "WARRIOR" } } },
					{ t = "goto", text = "Train Staves", map = 1457, x = 57.56, y = 46.73, only = { classes = { "WARRIOR", "HUNTER", "PRIEST" } } },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 923, title = "Tumors", npc = 3517, npcName = "Rellian Greenspyre", map = 1457, x = 38.19, y = 21.64, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Enter the cave in the tree trunk", map = 1457, x = 32.12, y = 16.46 },
					{ t = "turnin", quest = 2242, title = "Destiny Calls", npc = 4163, npcName = "Syurna", map = 1457, x = 36.99, y = 21.91, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6103, title = "Training the Beast", npc = 4146, npcName = "Jocaste", map = 1457, x = 40.38, y = 8.55, f = "e" },
				},
			},
			{
				note = "Learn pet abilities from Pet Trainers. Cast Beast Training to teach your pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 6344, title = "Nessa Shadowsong", note = "Click Here to Continue" },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10089, npcName = "Silvaria", map = 1457, x = 42.47, y = 9.17, f = "e" },
				},
			},
			{
				note = "Middle floor inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 5931, title = "Back to Darnassus", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.38, y = 8.41, f = "e" },
					{ t = "accept", quest = 6001, title = "Body and Heart", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.38, y = 8.41, f = "e" },
				},
			},
			{
				note = "Walks around. Top of the tower.",
				goals = {
					{ t = "turnin", quest = 935, title = "Crown of the Earth", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 34.8, y = 9.24, f = "e" },
					{ t = "turnin", quest = 940, title = "Teldrassil", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 34.8, y = 9.24, f = "e" },
					{ t = "accept", quest = 952, title = "Grove of the Ancients", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 34.8, y = 9.24, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 2518, title = "Tears of the Moon", npc = 7313, npcName = "Priestess A'moora", map = 1457, x = 36.64, y = 85.93, f = "e" },
					{ t = "accept", quest = 2520, title = "Sathrah's Sacrifice", npc = 7313, npcName = "Priestess A'moora", map = 1457, x = 36.64, y = 85.93, f = "e" },
				},
			},
		},
	})
end

