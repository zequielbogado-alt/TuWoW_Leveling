-- TuWoW_Leveling — Guides/Class_08.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-warrior-class-quests",
		pack = "guides",
		title = "Warrior Class Quests",
		category = "Class",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1412,
		version = 1,
		classes = { "WARRIOR" },
		steps = {
			{
				only = { races = { "Tauren" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1505, title = "Veteran Uzzek", npc = 3063, npcName = "Krang Stonehoof", map = 1412, x = 48.34, y = 63.76, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Orc", "Troll" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1411, x = 53.25, y = 42.59 },
					{ t = "accept", quest = 1505, title = "Veteran Uzzek", npc = 3169, npcName = "Tarshaw Jaggedscar", map = 1411, x = 54.19, y = 42.46, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Tauren", "Troll" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1411, x = 53.27, y = 42.59, only = { races = { "Orc", "Troll" }, classes = { "WARRIOR" } } },
					{ t = "goto", text = "Follow the road", map = 1411, x = 50.64, y = 43.97, only = { races = { "Orc", "Troll" }, classes = { "WARRIOR" } } },
					{ t = "goto", text = "Cross the bridge", map = 1411, x = 34.6, y = 42.31, only = { races = { "Orc", "Troll" }, classes = { "WARRIOR" } } },
					{ t = "turnin", quest = 1505, title = "Veteran Uzzek", npc = 5810, npcName = "Uzzek", map = 1413, x = 61.38, y = 21.11, f = "e" },
					{ t = "accept", quest = 1498, title = "Path of Defense", npc = 5810, npcName = "Uzzek", map = 1413, x = 61.38, y = 21.11, f = "e" },
				},
			},
			{
				note = "Watch for respawns while in the area.",
				only = { races = { "Orc", "Tauren", "Troll" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1413, x = 62.68, y = 19.22 },
					{ t = "goto", text = "Follow the path", map = 1411, x = 39.18, y = 32.15 },
					{ t = "collect", quest = 1498, item = 6486, itemName = "Singed Scale", count = 5, oi = 1, map = 1411, x = 39.27, y = 28.29, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Tauren", "Troll" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1411, x = 39.16, y = 32.31 },
					{ t = "goto", text = "Cross the bridge", map = 1411, x = 34.6, y = 42.28 },
					{ t = "turnin", quest = 1498, title = "Path of Defense", npc = 5810, npcName = "Uzzek", map = 1413, x = 61.38, y = 21.11, f = "e" },
					{ t = "accept", quest = 1502, title = "Thun'grim Firegaze", npc = 5810, npcName = "Uzzek", map = 1413, x = 61.38, y = 21.11, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Tauren", "Troll" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 55.51, y = 32.4 },
					{ t = "turnin", quest = 1502, title = "Thun'grim Firegaze", npc = 5878, npcName = "Thun'grim Firegaze", map = 1413, x = 57.23, y = 30.34, f = "e" },
					{ t = "accept", quest = 1503, title = "Forged Steel", npc = 5878, npcName = "Thun'grim Firegaze", map = 1413, x = 57.23, y = 30.34, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Tauren", "Troll" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1413, x = 55.51, y = 32.4 },
					{ t = "collect", quest = 1503, item = 6534, itemName = "Forged Steel Bars", oi = 1, map = 1413, x = 55.05, y = 26.66, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Tauren", "Troll" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 55.51, y = 32.4 },
					{ t = "turnin", quest = 1503, title = "Forged Steel", npc = 5878, npcName = "Thun'grim Firegaze", map = 1413, x = 57.23, y = 30.34, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1818, title = "Speak with Dillinger", npc = 2131, npcName = "Austil de Mon", map = 1420, x = 61.85, y = 52.54, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1420, x = 61.56, y = 53.05 },
					{ t = "turnin", quest = 1818, title = "Speak with Dillinger", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.45, f = "e" },
					{ t = "accept", quest = 1819, title = "Ulag the Cleaver", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.45, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "kill", quest = 1819, npc = 6390, target = "Ulag the Cleaver", oi = 1, map = 1420, x = 59.64, y = 48.09, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1819, title = "Ulag the Cleaver", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.45, f = "e" },
					{ t = "accept", quest = 1820, title = "Speak with Coleman", npc = 1496, npcName = "Deathguard Dillinger", map = 1420, x = 58.2, y = 51.45, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1420, x = 61.56, y = 53.04 },
					{ t = "turnin", quest = 1820, title = "Speak with Coleman", npc = 1500, npcName = "Coleman Farthing", map = 1420, x = 61.72, y = 52.29, f = "e" },
					{ t = "accept", quest = 1821, title = "Agamand Heirlooms", npc = 1500, npcName = "Coleman Farthing", map = 1420, x = 61.72, y = 52.29, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1420, x = 47.86, y = 47.45 },
					{ t = "complete", quest = 1821, title = "Agamand Heirlooms", note = "Enter the crypt", map = 1420, x = 52.25, y = 26.86, f = "e" },
				},
			},
			{
				note = "Inside the crypt. Watch for patrols and respawns while in the area.",
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1821, item = 7569, itemName = "Agamand Family Mace", oi = 3, map = 1420, x = 52.66, y = 27.04, f = "e" },
				},
			},
			{
				note = "Inside the crypt. Watch for patrols and respawns while in the area.",
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1821, item = 7568, itemName = "Agamand Family Dagger", oi = 2, map = 1420, x = 51.89, y = 27.12, f = "e" },
				},
			},
			{
				note = "Inside the crypt. Watch for patrols and respawns while in the area.",
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1821, item = 7567, itemName = "Agamand Family Axe", oi = 1, map = 1420, x = 51.7, y = 25.69, f = "e" },
				},
			},
			{
				note = "Inside the crypt. Watch for patrols and respawns while in the area.",
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1821, item = 7566, itemName = "Agamand Family Sword", oi = 1, map = 1420, x = 52.65, y = 25.86, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Scourge" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "complete", quest = 1821, title = "Agamand Heirlooms", note = "Leave the crypt", map = 1420, x = 52.25, y = 26.86, f = "e" },
					{ t = "goto", text = "Enter the building", map = 1420, x = 61.56, y = 53.04 },
					{ t = "turnin", quest = 1821, title = "Agamand Heirlooms", npc = 1500, npcName = "Coleman Farthing", map = 1420, x = 61.72, y = 52.29, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 76.52, y = 32.92 },
					{ t = "accept", quest = 1718, title = "The Islander", npc = 3354, npcName = "Sorek", map = 1454, x = 80.38, y = 32.38, f = "e" },
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
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 76.52, y = 32.92 },
					{ t = "accept", quest = 8417, title = "A Troubled Spirit", npc = 3354, npcName = "Sorek", map = 1454, x = 80.38, y = 32.38, f = "e" },
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
					{ t = "complete", quest = 8425, title = "Voodoo Feathers", note = "Click Here to Continue" },
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
		id = "zygor/leveling/h-hunter-class-quests",
		pack = "guides",
		title = "Hunter Class Quests",
		category = "Class",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1411,
		version = 1,
		classes = { "HUNTER" },
		steps = {
			{
				note = "Inside the building.",
				only = { races = { "Orc", "Troll" }, classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 6062, title = "Taming the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
				},
			},
			{
				note = "Use it on a Dire Mottled Boar around this area. Dismiss it after you tame it. It may attack you after you dismiss it.",
				only = { races = { "Orc", "Troll" }, classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15917, itemName = "Taming Rod" },
					{ t = "complete", quest = 6062, title = "Taming the Beast", note = "Tame a Dire Mottled Boar", map = 1411, x = 51.84, y = 47.23, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Orc", "Troll" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6062, title = "Taming the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
					{ t = "accept", quest = 6083, title = "Taming the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
				},
			},
			{
				note = "Use it on a Surf Crawler around this area. Dismiss it after you tame it. It may attack you after you dismiss it.",
				only = { races = { "Orc", "Troll" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1411, x = 54.36, y = 39.59 },
					{ t = "use", item = 15919, itemName = "Taming Rod" },
					{ t = "complete", quest = 6083, title = "Taming the Beast", note = "Tame a Surf Crawler", map = 1411, x = 59.01, y = 27.64, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Orc", "Troll" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6083, title = "Taming the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
					{ t = "accept", quest = 6082, title = "Taming the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
				},
			},
			{
				note = "Use it on an Armored Scorpid around this area.",
				only = { races = { "Orc", "Troll" }, classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15920, itemName = "Taming Rod" },
					{ t = "complete", quest = 6082, title = "Taming the Beast", note = "Tame an Armored Scorpid", map = 1411, x = 45.21, y = 45.77, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Orc", "Troll" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6082, title = "Taming the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
					{ t = "accept", quest = 6081, title = "Training the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
				},
			},
			{
				only = { races = { "Orc", "Troll" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Enter Orgrimmar", map = 1411, x = 45.54, y = 12.06 },
					{ t = "goto", text = "Follow the path up", map = 1454, x = 71.64, y = 25.95 },
					{ t = "goto", text = "Follow the path up", map = 1454, x = 67.68, y = 14.51 },
					{ t = "turnin", quest = 6081, title = "Training the Beast", npc = 3352, npcName = "Ormak Grimshot", map = 1454, x = 66.05, y = 18.54, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 6061, title = "Taming the Beast", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.92, y = 59.69, f = "e" },
				},
			},
			{
				note = "Use it on an Adult Plainstrider around this area. Dismiss it after you tame it. It may attack you after you dismiss it.",
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15914, itemName = "Taming Rod" },
					{ t = "complete", quest = 6061, title = "Taming the Beast", note = "Tame an Adult Plainstrider", map = 1412, x = 43.58, y = 56.46, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6061, title = "Taming the Beast", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.92, y = 59.69, f = "e" },
					{ t = "accept", quest = 6087, title = "Taming the Beast", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.92, y = 59.69, f = "e" },
				},
			},
			{
				note = "Use it on a Prairie Stalker around this area. Dismiss it after you tame it. It may attack you after you dismiss it.",
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15915, itemName = "Taming Rod" },
					{ t = "complete", quest = 6087, title = "Taming the Beast", note = "Tame a Prairie Stalker", map = 1412, x = 45.81, y = 54.16, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6087, title = "Taming the Beast", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.92, y = 59.69, f = "e" },
					{ t = "accept", quest = 6088, title = "Taming the Beast", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.92, y = 59.69, f = "e" },
				},
			},
			{
				note = "Use it on a Swoop around this area.",
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15916, itemName = "Taming Rod" },
					{ t = "complete", quest = 6088, title = "Taming the Beast", note = "Tame a Swoop", map = 1412, x = 45.81, y = 54.16, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "turnin Taming the Beast#6088", map = 1412, x = 46.92, y = 59.69 },
					{ t = "accept", quest = 6089, title = "Training the Beast", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.92, y = 59.69, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Tauren" }, classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Ride the elevator up", map = 1456, x = 31.8, y = 65.96 },
					{ t = "goto", text = "Enter the building", map = 1456, x = 44.91, y = 61.98 },
					{ t = "goto", text = "Cross the bridge", map = 1456, x = 47.69, y = 68.75 },
					{ t = "goto", text = "Enter the building", map = 1456, x = 59.8, y = 82.89 },
					{ t = "turnin", quest = 6089, title = "Training the Beast", npc = 3039, npcName = "Holt Thunderhorn", map = 1456, x = 57.31, y = 89.76, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1454, x = 66.46, y = 22.63 },
					{ t = "accept", quest = 8151, title = "The Hunter's Charm", npc = 3352, npcName = "Ormak Grimshot", map = 1454, x = 66.06, y = 18.54, f = "e" },
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
				note = "they are scattered all over the area.",
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
				note = "They are underwater around this area.",
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
					{ t = "complete", quest = 8425, title = "Voodoo Feathers", note = "Click Here to Continue" },
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

