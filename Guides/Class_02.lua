-- TuWoW_Leveling — Guides/Class_02.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-warrior-class-quests",
		pack = "guides",
		title = "Warrior Class Quests",
		category = "Class",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1429,
		version = 1,
		classes = { "WARRIOR" },
		steps = {
			{
				only = { races = { "Human" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1638, title = "A Warrior's Training", npc = 913, npcName = "Lyria Du Lac", map = 1429, x = 41.09, y = 65.77, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Human" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 75.08, y = 55.33 },
					{ t = "turnin", quest = 1638, title = "A Warrior's Training", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.13, y = 53.27, f = "e" },
					{ t = "accept", quest = 1639, title = "Bartleby the Drunk", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.13, y = 53.27, f = "e" },
				},
			},
			{
				note = "He walks around this area inside the building. He will attack you immediately after you accept this quest.",
				only = { races = { "Human" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1639, title = "Bartleby the Drunk", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.8, y = 53.2, f = "e" },
					{ t = "accept", quest = 1640, title = "Beat Bartleby", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.8, y = 53.2, f = "e" },
				},
			},
			{
				note = "He walks around this area inside the building.",
				only = { races = { "Human" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1640, title = "Beat Bartleby", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.8, y = 53.2, f = "e" },
					{ t = "accept", quest = 1665, title = "Bartleby's Mug", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.8, y = 53.2, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Human" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1665, title = "Bartleby's Mug", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.13, y = 53.27, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Dwarf", "Gnome" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1679, title = "Muren Stormpike", npc = 1229, npcName = "Granis Swiftaxe", map = 1426, x = 47.36, y = 52.65, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Dwarf", "Gnome" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1679, title = "Muren Stormpike", npc = 6114, npcName = "Muren Stormpike", map = 1455, x = 70.78, y = 90.27, f = "e" },
					{ t = "accept", quest = 1678, title = "Vejrek", npc = 6114, npcName = "Muren Stormpike", map = 1455, x = 70.78, y = 90.27, f = "e" },
				},
			},
			{
				note = "Inside the hut.",
				only = { races = { "Dwarf", "Gnome" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1426, x = 27.97, y = 56.18 },
					{ t = "collect", quest = 1678, item = 6799, itemName = "Vejrek's Head", oi = 1, map = 1426, x = 27.83, y = 57.95, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Dwarf", "Gnome" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1678, title = "Vejrek", npc = 6114, npcName = "Muren Stormpike", map = 1455, x = 70.78, y = 90.29, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1684, title = "Elanaria", npc = 3598, npcName = "Kyra Windblade", map = 1438, x = 56.22, y = 59.19, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1684, title = "Elanaria", npc = 4088, npcName = "Elanaria", map = 1457, x = 57.29, y = 34.61, f = "e" },
					{ t = "accept", quest = 1683, title = "Vorlus Vilehoof", npc = 4088, npcName = "Elanaria", map = 1457, x = 57.29, y = 34.61, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1438, x = 48.78, y = 61.64 },
					{ t = "goto", text = "Follow the path up", map = 1438, x = 49.02, y = 63.24 },
					{ t = "goto", text = "Continue up the path", map = 1438, x = 47.98, y = 64.47 },
					{ t = "collect", quest = 1683, item = 6805, itemName = "Horn of Vorlus", oi = 1, map = 1438, x = 47.26, y = 63.52, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1683, title = "Vorlus Vilehoof", npc = 4088, npcName = "Elanaria", map = 1457, x = 57.29, y = 34.61, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 80.0, y = 61.72 },
					{ t = "accept", quest = 1718, title = "The Islander", npc = 5479, npcName = "Wu Shen", map = 1453, x = 80.55, y = 59.87, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1718, title = "The Islander", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.62, y = 49.17, f = "e" },
					{ t = "accept", quest = 1719, title = "The Affray", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.62, y = 49.17, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "complete", quest = 1719, title = "The Affray", note = "Step on the Grate to Begin the Affray", map = 1413, x = 68.61, y = 48.72, f = "e" },
				},
			},
			{
				note = "You will have to kill six of them before Big Will will appear. They will fight them one at a time. Avoid using AoE abilities as they may aggro the other affray contestants. When you defeat an enemy, don't stand near the grate or it will force the next opponent. Eat or Bandage after each opponent. Step back after each opponent spawns. It may take a while before he appears.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "kill", quest = 1719, npc = 6238, target = "Big Will", oi = 2, map = 1413, x = 68.61, y = 48.72, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1719, title = "The Affray", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.62, y = 49.17, f = "e" },
				},
			},
			{
				note = "If you have the Herbalism profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1712, item = 3357, itemName = "Liferoot", count = 8 },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1791, title = "The Windwatcher", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.62, y = 49.17, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1424, x = 70.63, y = 10.06 },
					{ t = "turnin", quest = 1791, title = "The Windwatcher", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
					{ t = "accept", quest = 1712, title = "Cyclonian", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1712, item = 4479, itemName = "Burning Charm", count = 8, map = 1417, x = 26.6, y = 31.8, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1712, item = 4480, itemName = "Thundering Charm", count = 8, map = 1417, x = 52.6, y = 52.2, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1712, item = 4481, itemName = "Cresting Charm", count = 8, map = 1417, x = 68.0, y = 30.0, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1712, item = 3901, itemName = "Bloodscalp Tusk", count = 30, oi = 2, map = 1434, x = 25.85, y = 11.25, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1714, title = "Essence of the Exile", map = 1416, x = 79.31, y = 66.81, f = "e" },
					{ t = "collect", quest = 1712, item = 6851, itemName = "Essence of the Exile", oi = 3, map = 1416, x = 79.31, y = 66.81, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1712, title = "Cyclonian", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
					{ t = "accept", quest = 1713, title = "The Summoning", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
				},
			},
			{
				note = "You may need help with this. This is a level 40 Elite enemy.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1713, item = 6894, itemName = "Whirlwind Heart", oi = 1, map = 1416, x = 80.57, y = 62.56, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1713, title = "The Summoning", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
					{ t = "accept", quest = 1792, title = "Whirlwind Weapon", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 80.0, y = 61.72 },
					{ t = "accept", quest = 8417, title = "A Troubled Spirit", npc = 5479, npcName = "Wu Shen", map = 1453, x = 80.55, y = 59.87, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 8417, title = "A Troubled Spirit", npc = 7572, npcName = "Fallen Hero of the Horde", map = 1435, x = 34.29, y = 66.15, f = "e" },
					{ t = "accept", quest = 8423, title = "Warrior Kinship", npc = 7572, npcName = "Fallen Hero of the Horde", map = 1435, x = 34.29, y = 66.15, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "kill", quest = 8423, npc = 5993, target = "Helboar", count = 7, oi = 1, map = 1419, x = 51.34, y = 53.45, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 8423, title = "Warrior Kinship", npc = 7572, npcName = "Fallen Hero of the Horde", map = 1435, x = 34.29, y = 66.15, f = "e" },
					{ t = "accept", quest = 8424, title = "War on the Shadowsworn", npc = 7572, npcName = "Fallen Hero of the Horde", map = 1435, x = 34.29, y = 66.15, f = "e" },
				},
			},
			{
				note = "Watch for patrols and respawns around this area.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "kill", quest = 8424, npc = 6006, target = "Shadowsworn Adept", count = 20, oi = 1, map = 1419, x = 65.17, y = 32.83, f = "e" },
				},
			},
			{
				label = "Kill_Shadowsworn_Cultitst",
				along = true,
				note = "Watch for patrols and respawns around this area.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "kill", quest = 8424, npc = 6004, target = "Shadowsworn Cultist", count = 10, oi = 2, map = 1419, x = 65.17, y = 32.83, f = "e" },
				},
			},
			{
				label = "Kill_Shadowsworn_Thug",
				along = true,
				note = "Watch for patrols and respawns around this area.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "kill", quest = 8424, npc = 6005, target = "Shadowsworn Thug", count = 20, oi = 3, map = 1419, x = 65.17, y = 32.83, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 8424, title = "War on the Shadowsworn", npc = 7572, npcName = "Fallen Hero of the Horde", map = 1435, x = 34.29, y = 66.15, f = "e" },
					{ t = "accept", quest = 8425, title = "Voodoo Feathers", npc = 7572, npcName = "Fallen Hero of the Horde", map = 1435, x = 34.29, y = 66.15, f = "e" },
				},
			},
			{
				note = "The next couple of steps will be taking you to the Sunken Temple dungeon. You will need a group to complete the dungeon as well as the quest. If you don't have a group, wait until you do before continuing.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "complete", quest = 9053, title = "A Better Ingredient", note = "Click Here to Continue" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
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
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 8425, item = 20606, itemName = "Amber Voodoo Feather", count = 2, oi = 1 },
				},
			},
			{
				note = "These come from Mijan and Hukku.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 8425, item = 20607, itemName = "Blue Voodoo Feather", count = 2, oi = 2 },
				},
			},
			{
				note = "These come from Zolo and Loro.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 8425, item = 20608, itemName = "Green Voodoo Feather", count = 2, oi = 3 },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 8425, title = "Voodoo Feathers", npc = 7572, npcName = "Fallen Hero of the Horde", map = 1435, x = 34.29, y = 66.15, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-hunter-class-quests",
		pack = "guides",
		title = "Hunter Class Quests",
		category = "Class",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1438,
		version = 1,
		classes = { "HUNTER" },
		steps = {
			{
				only = { races = { "NightElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 6063, title = "Taming the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
				},
			},
			{
				note = "Use it on a Webwood Lurker around this area. Dismiss it after you tame it. It may attack you after you dismiss it.",
				only = { races = { "NightElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15921, itemName = "Taming Rod" },
					{ t = "complete", quest = 6063, title = "Taming the Beast", note = "Tame a Webwood Lurker", map = 1438, x = 59.81, y = 59.06, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6063, title = "Taming the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
					{ t = "accept", quest = 6101, title = "Taming the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
				},
			},
			{
				note = "Use it on a Nightsaber Stalker around this area. Dismiss it after you tame it. It may attack you after you dismiss it.",
				only = { races = { "NightElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15922, itemName = "Taming Rod" },
					{ t = "complete", quest = 6101, title = "Taming the Beast", note = "Tame a Nightsaber Stalker", map = 1438, x = 55.95, y = 71.98, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6101, title = "Taming the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
					{ t = "accept", quest = 6102, title = "Taming the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
				},
			},
			{
				note = "Use it on a Strigid Screecher around this area.",
				only = { races = { "NightElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1438, x = 54.81, y = 58.48 },
					{ t = "use", item = 15923, itemName = "Taming Rod" },
					{ t = "complete", quest = 6102, title = "Taming the Beast", note = "Tame a Strigid Screecher", map = 1438, x = 43.99, y = 51.16, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1438, x = 45.1, y = 49.62 },
					{ t = "turnin", quest = 6102, title = "Taming the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
					{ t = "accept", quest = 6103, title = "Training the Beast", npc = 3601, npcName = "Dazalar", map = 1438, x = 56.68, y = 59.49, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "NightElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1438, x = 54.81, y = 58.48 },
					{ t = "goto", text = "Enter Darnassus", map = 1438, x = 36.06, y = 54.39 },
					{ t = "goto", text = "Run up the ramp", map = 1457, x = 45.7, y = 17.69 },
					{ t = "turnin", quest = 6103, title = "Training the Beast", npc = 4146, npcName = "Jocaste", map = 1457, x = 40.38, y = 8.56, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 6064, title = "Taming the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.03, f = "e" },
				},
			},
			{
				note = "Use it on a Large Crag Boar around this area. Dismiss it after you tame it. It may attack you after you dismiss it.",
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15911, itemName = "Taming Rod" },
					{ t = "complete", quest = 6064, title = "Taming the Beast", note = "Tame a Large Crag Boar", map = 1426, x = 48.26, y = 56.81, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6064, title = "Taming the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
					{ t = "accept", quest = 6084, title = "Taming the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
				},
			},
			{
				note = "Use it on a Snow Leopard around this area. Dismiss it after you tame it. It may attack you after you dismiss it.",
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15913, itemName = "Taming Rod" },
					{ t = "complete", quest = 6084, title = "Taming the Beast", note = "Tame a Snow Leopard", map = 1426, x = 48.68, y = 58.93, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6084, title = "Taming the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
					{ t = "accept", quest = 6085, title = "Taming the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
				},
			},
			{
				note = "Use it on an Ice Claw Bear around this area.",
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15908, itemName = "Taming Rod" },
					{ t = "complete", quest = 6085, title = "Taming the Beast", note = "Tame an Ice Claw Bear", map = 1426, x = 49.06, y = 62.12, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6085, title = "Taming the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
					{ t = "accept", quest = 6086, title = "Training the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Dwarf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 66.34, y = 82.5 },
					{ t = "turnin", quest = 6086, title = "Training the Beast", npc = 10090, npcName = "Belia Thundergranite", map = 1455, x = 70.87, y = 85.8, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 8151, title = "The Hunter's Charm", npc = 4205, npcName = "Dorion", map = 1457, x = 42.21, y = 7.26, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1447, x = 42.09, y = 42.45 },
					{ t = "turnin", quest = 8151, title = "The Hunter's Charm", npc = 8405, npcName = "Ogtinc", map = 1447, x = 42.4, y = 42.62, f = "e" },
					{ t = "accept", quest = 8153, title = "Courser Antlers", npc = 8405, npcName = "Ogtinc", map = 1447, x = 42.4, y = 42.62, f = "e" },
				},
			},
			{
				note = "They are scattered all over the area. These have a low drop rate.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "collect", quest = 8153, item = 20017, itemName = "Perfect Courser Antler", count = 2, oi = 1, map = 1447, x = 49.47, y = 17.62, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1447, x = 42.09, y = 42.45 },
					{ t = "turnin", quest = 8153, title = "Courser Antlers", npc = 8405, npcName = "Ogtinc", map = 1447, x = 42.4, y = 42.62, f = "e" },
					{ t = "accept", quest = 8231, title = "Wavethrashing", npc = 8405, npcName = "Ogtinc", map = 1447, x = 42.4, y = 42.62, f = "e" },
				},
			},
			{
				note = "They look like 3 headed beasts. They are underwater around this area. Watch for patroling elites while here. When you fight them, be sure that you arne't underwater. These enemies cannot be tracked. They also have a very low spawn rate. These may have a low drop rate. The coordinates below are a bit further out, but there are more.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Jump down here carefully", map = 1447, x = 33.68, y = 48.68 },
					{ t = "goto", text = "Follow the path down", map = 1447, x = 40.54, y = 47.84 },
					{ t = "collect", quest = 8231, item = 20087, itemName = "Wavethrasher Scales", count = 6, oi = 1, map = 1447, x = 52.61, y = 41.87, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1447, x = 42.09, y = 42.45 },
					{ t = "turnin", quest = 8231, title = "Wavethrashing", npc = 8405, npcName = "Ogtinc", map = 1447, x = 42.4, y = 42.62, f = "e" },
					{ t = "accept", quest = 8232, title = "The Green Drake", npc = 8405, npcName = "Ogtinc", map = 1447, x = 42.4, y = 42.62, f = "e" },
				},
			},
			{
				note = "The next couple of steps will be taking you to the Sunken Temple dungeon. You will need a group to complete the dungeon as well as the quest. If you don't have a group, wait until you do before continuing.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 8232, title = "The Green Drake", note = "Click Here to Continue" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
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
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "collect", quest = 8232, item = 20019, itemName = "Tooth of Morphaz", oi = 1 },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1447, x = 42.09, y = 42.45 },
					{ t = "turnin", quest = 8232, title = "The Green Drake", npc = 8405, npcName = "Ogtinc", map = 1447, x = 42.4, y = 42.62, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "collect", item = 18703, itemName = "Ancient Petrified Leaf" },
					{ t = "use", item = 18703, itemName = "Ancient Petrified Leaf" },
					{ t = "accept", quest = 7632, title = "The Ancient Leaf", npc = 12018, npcName = "Majordomo Executus" },
				},
			},
			{
				note = "Kill enemies around the area for him to appear.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 7632, title = "The Ancient Leaf", npc = 14524, npcName = "Vartrus the Ancient", map = 1448, x = 48.99, y = 24.44, f = "e" },
					{ t = "accept", quest = 7633, title = "An Introduction", npc = 14524, npcName = "Vartrus the Ancient", map = 1448, x = 48.99, y = 24.44, f = "e" },
					{ t = "accept", quest = 7636, title = "Stave of the Ancients", npc = 14524, npcName = "Vartrus the Ancient", map = 1448, x = 48.99, y = 24.44, f = "e" },
				},
			},
			{
				note = "Kill enemies around the area for him to appear.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 7635, title = "A Proper String", npc = 14525, npcName = "Stoma the Ancient", map = 1448, x = 48.31, y = 24.43, f = "e" },
				},
			},
			{
				label = "Simone_the_Inconspicuous_1",
				note = "Use the \"Track Demons\" ability from the Survival Branch to accomplish this. She patrols all around Un'Goro Crater. This must be done alone or it will despawn.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "collect", quest = 7636, item = 18952, itemName = "Simone's Head", oi = 1, map = 1449, x = 34.3, y = 40.8, f = "e" },
				},
			},
			{
				label = "Simone_the_Inconspicuous_2",
				note = "Use the \"Track Demons\" ability from the Survival Branch to accomplish this. She patrols all around Un'Goro Crater. This must be done alone or it will despawn.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "collect", quest = 7636, item = 18952, itemName = "Simone's Head", oi = 1, map = 1449, x = 34.3, y = 40.8, f = "e" },
				},
			},
			{
				label = "Klinfran_the_Crazed_1",
				note = "Use the \"Track Demons\" ability from the Survival Branch to accomplish this. He patrols around Burning Steppes. This must be done alone or it will despawn.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "collect", quest = 7636, item = 18953, itemName = "Klinfran's Head", oi = 2 },
				},
			},
			{
				note = "Use the \"Track Demons\" ability from the Survival Branch to accomplish this. He walks around the area. This must be done alone or it will despawn.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "collect", quest = 7636, item = 18954, itemName = "Solenor's Head", oi = 3, map = 1451, x = 26.0, y = 81.2, f = "e" },
				},
			},
			{
				note = "Use the \"Track Demons\" ability from the Survival Branch to accomplish this. He walks around the area. This must be done alone or it will despawn and be on a 3 hour timer.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "collect", quest = 7636, item = 18955, itemName = "Artorius's Head", oi = 4, map = 1452, x = 58.2, y = 15.6, f = "e" },
				},
			},
			{
				note = "This isn't a 100% drop rate.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "collect", quest = 7635, item = 18705, itemName = "Mature Black Dragon Sinew", oi = 1 },
				},
			},
			{
				note = "Kill enemies around the area for him to appear.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 7636, title = "Stave of the Ancients", npc = 14524, npcName = "Vartrus the Ancient", map = 1448, x = 48.99, y = 24.44, f = "e" },
				},
			},
			{
				note = "Kill enemies around the area for him to appear.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 7635, title = "A Proper String", npc = 14525, npcName = "Stoma the Ancient", map = 1448, x = 48.31, y = 24.43, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 18707, itemName = "Ancient Rune Etched Stave" },
					{ t = "collect", item = 18713, itemName = "Rhok'delar, Longbow of the Ancient Keepers" },
					{ t = "collect", item = 18715, itemName = "Lok'delar, Stave of the Ancient Keepers" },
				},
			},
		},
	})
end

