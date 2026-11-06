-- TuWoW_Leveling — Guides/Leveling_Alliance_09.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-night-elf-starter-1-13-part-3",
		pack = "guides",
		title = "Night Elf Starter (Parte 3/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-westfall-13-15",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1438,
		version = 1,
		races = { "NightElf" },
		steps = {
			{
				note = "Inside the building.",
				goals = {
					{ t = "use", item = 8155, itemName = "Sathrah's Sacrifice" },
					{ t = "complete", quest = 2520, title = "Sathrah's Sacrifice", note = "Offer the Sacrifice at the Fountain", map = 1457, x = 39.21, y = 84.57, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 2520, title = "Sathrah's Sacrifice", npc = 7313, npcName = "Priestess A'moora", map = 1457, x = 36.64, y = 85.93, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5629, title = "Returning Home", npc = 11401, npcName = "Priestess Alathea", map = 1457, x = 39.53, y = 81.18, f = "e" },
					{ t = "accept", quest = 5627, title = "Stars of Elune", npc = 11401, npcName = "Priestess Alathea", map = 1457, x = 39.53, y = 81.18, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6344, title = "Nessa Shadowsong", npc = 10118, npcName = "Nessa Shadowsong", map = 1438, x = 56.25, y = 92.43, f = "e" },
					{ t = "accept", quest = 6341, title = "The Bounty of Teldrassil", npc = 10118, npcName = "Nessa Shadowsong", map = 1438, x = 56.25, y = 92.43, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6341, title = "The Bounty of Teldrassil", npc = 3838, npcName = "Vesprystus", map = 1438, x = 58.4, y = 94.01, f = "e" },
					{ t = "accept", quest = 6342, title = "Flight to Auberdine", npc = 3838, npcName = "Vesprystus", map = 1438, x = 58.4, y = 94.01, f = "e" },
				},
			},
			{
				note = "Open the flight map. Allows guide to learn your flight paths.",
				goals = {
					{ t = "getfp", location = "Auberdine", map = 1438, x = 58.4, y = 94.01, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6342, title = "Flight to Auberdine", npc = 4200, npcName = "Laird", map = 1439, x = 36.77, y = 44.29, f = "e" },
					{ t = "accept", quest = 6343, title = "Return to Nessa", npc = 4200, npcName = "Laird", map = 1439, x = 36.77, y = 44.29, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 15208, itemName = "Cenarion Moondust" },
					{ t = "complete", quest = 6001, title = "Body and Heart", note = "Face Lunaclaw and Earn the Strength of Body and Heart it Possesses", map = 1439, x = 43.48, y = 45.96, f = "e" },
				},
			},
			{
				note = "We will train Mining and Blacksmithing. Allows you to make and use Sharpening Stones. Increases damage. Mine Copper Ore as you see it. Use the Rough Stones to make sharpening stones.",
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "complete", quest = 983, title = "Buzzbox 827", note = "Click Here to Continue" },
				},
			},
			{
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "skill", level = 75, skill = "Blacksmithing" },
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
					{ t = "buy", item = 2901, itemName = "Mining Pick", map = 1439, x = 38.22, y = 41.19, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6343, title = "Return to Nessa", npc = 10118, npcName = "Nessa Shadowsong", map = 1438, x = 56.25, y = 92.44, f = "e" },
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
					{ t = "turnin", quest = 6001, title = "Body and Heart", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.38, y = 8.41, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.97, y = 51.06 },
					{ t = "train", npc = 5484, npcName = "Brother Benjamin", map = 1453, x = 51.61, y = 46.35, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 5479, npcName = "Wu Shen", map = 1453, x = 80.5, y = 59.86, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1638, title = "A Warrior's Training", npc = 5480, npcName = "Ilsa Corbin", map = 1453, x = 80.36, y = 59.79, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1638, title = "A Warrior's Training", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.08, y = 53.25, f = "e" },
					{ t = "accept", quest = 1639, title = "Bartleby the Drunk", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.08, y = 53.25, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building. You will be attacked.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1639, title = "Bartleby the Drunk", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.76, y = 53.18, f = "e" },
					{ t = "accept", quest = 1640, title = "Beat Bartleby", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.76, y = 53.18, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "complete", quest = 1640, title = "Beat Bartleby", map = 1453, x = 76.76, y = 53.18, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1640, title = "Beat Bartleby", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.76, y = 53.18, f = "e" },
					{ t = "accept", quest = 1665, title = "Bartleby's Mug", npc = 6090, npcName = "Bartleby", map = 1453, x = 76.76, y = 53.18, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1665, title = "Bartleby's Mug", npc = 6089, npcName = "Harry Burlguard", map = 1453, x = 77.08, y = 53.25, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 918, npcName = "Osborne the Night Man", map = 1453, x = 77.38, y = 65.3, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 5515, npcName = "Einris Brightspear", map = 1453, x = 67.32, y = 36.23, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 2879, npcName = "Karrina Mekenda", map = 1453, x = 67.28, y = 36.78, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 353, title = "Stormpike's Delivery", npc = 1416, npcName = "Grimand Elmore", map = 1453, x = 59.72, y = 33.78, f = "e" },
				},
			},
			{
				note = "Walk into the portal.",
				goals = {
					{ t = "goto", text = "Enter the Deeprun Tram", map = 1453, x = 69.31, y = 30.56 },
				},
			},
			{
				note = "Ride the tram to Ironforge. Middle platform, near the wall. Ironforge section of the Deeprun Tram.",
				goals = {
					{ t = "accept", quest = 6661, title = "Deeprun Rat Roundup", npc = 12997, npcName = "Monty" },
				},
			},
			{
				note = "On Deeprun Rats. Small grey rats. Ironforge section of the Deeprun Tram.",
				goals = {
					{ t = "use", item = 17117, itemName = "Rat Catcher's Flute" },
					{ t = "complete", quest = 6661, title = "Deeprun Rat Roundup", note = "Capture #5# Rats" },
				},
			},
			{
				note = "Middle platform, near the wall. Ironforge section of the Deeprun Tram.",
				goals = {
					{ t = "turnin", quest = 6661, title = "Deeprun Rat Roundup", npc = 12997, npcName = "Monty" },
					{ t = "accept", quest = 6662, title = "Me Brother, Nipsy", npc = 12997, npcName = "Monty" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Ironforge", map = 1455, x = 55.5, y = 47.75, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on an Ice Claw Bear. Try to find one that's level 9. Abandon your pet first. New permanent pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Dun Morogh", map = 1426, x = 51.8, y = 44.4 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 433, title = "The Public Servant", npc = 1977, npcName = "Senator Mehr Stonehallow", map = 1426, x = 68.67, y = 55.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 432, title = "Those Blasted Troggs!", npc = 1254, npcName = "Foreman Stonebrow", map = 1426, x = 69.08, y = 56.33, f = "e" },
				},
			},
			{
				note = "More inside the cave nearby.",
				goals = {
					{ t = "kill", quest = 432, npc = 1115, target = "Rockjaw Skullthumper", count = 6, oi = 1, map = 1426, x = 69.17, y = 58.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1426, x = 70.7, y = 56.49 },
					{ t = "turnin", quest = 432, title = "Those Blasted Troggs!", npc = 1254, npcName = "Foreman Stonebrow", map = 1426, x = 69.08, y = 56.33, f = "e" },
				},
			},
			{
				label = "Kill_Rockjaw_Bonesnappers",
				along = true,
				goals = {
					{ t = "kill", quest = 433, npc = 1117, target = "Rockjaw Bonesnapper", count = 10, oi = 1, map = 1426, x = 75.24, y = 56.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 433, title = "The Public Servant", npc = 1977, npcName = "Senator Mehr Stonehallow", map = 1426, x = 68.67, y = 55.97, f = "e" },
				},
			},
			{
				note = "Follow the road through the tunnel.",
				goals = {
					{ t = "accept", quest = 419, title = "The Lost Pilot", npc = 1960, npcName = "Pilot Hammerfoot", map = 1426, x = 83.89, y = 39.19, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 419, title = "The Lost Pilot", map = 1426, x = 79.67, y = 36.17, f = "e" },
					{ t = "accept", quest = 417, title = "A Pilot's Revenge", map = 1426, x = 79.67, y = 36.17, f = "e" },
				},
			},
			{
				note = "White bear. Walks around.",
				goals = {
					{ t = "collect", quest = 417, item = 3183, itemName = "Mangy Claw", oi = 1, map = 1426, x = 78.97, y = 37.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 417, title = "A Pilot's Revenge", npc = 1960, npcName = "Pilot Hammerfoot", map = 1426, x = 83.89, y = 39.19, f = "e" },
				},
			},
			{
				note = "Run through the tunnel. Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 353, title = "Stormpike's Delivery", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.76, y = 18.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Thelsamar", map = 1432, x = 33.94, y = 50.95, f = "e" },
				},
			},
			{
				label = "Accept_Mountaineer_Stormpikes_Task",
				along = true,
				note = "Walks a large path.",
				goals = {
					{ t = "accept", quest = 416, title = "Rat Catching", npc = 1340, npcName = "Mountaineer Kadrell", map = 1426, x = 95.4, y = 46.5, f = "e" },
					{ t = "accept", quest = 1339, title = "Mountaineer Stormpike's Task", npc = 1340, npcName = "Mountaineer Kadrell", map = 1426, x = 95.4, y = 46.5, f = "e" },
				},
			},
			{
				note = "Rat people.",
				goals = {
					{ t = "collect", quest = 416, item = 3110, itemName = "Tunnel Rat Ear", count = 12, oi = 1, map = 1432, x = 26.99, y = 43.26, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1339, title = "Mountaineer Stormpike's Task", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.76, y = 18.4, f = "e" },
					{ t = "accept", quest = 1338, title = "Stormpike's Order", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.76, y = 18.4, f = "e" },
					{ t = "accept", quest = 307, title = "Filthy Paws", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.76, y = 18.4, f = "e" },
				},
			},
			{
				note = "Walks a large path.",
				goals = {
					{ t = "turnin", quest = 416, title = "Rat Catching", npc = 1340, npcName = "Mountaineer Kadrell", map = 1426, x = 95.4, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 224, title = "In Defense of the King's Lands", npc = 1089, npcName = "Mountaineer Cobbleflint", map = 1432, x = 22.07, y = 73.12, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 267, title = "The Trogg Threat", npc = 1092, npcName = "Captain Rugelfuss", map = 1432, x = 23.23, y = 73.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the road to the path here", map = 1432, x = 29.32, y = 66.73 },
					{ t = "collect", quest = 267, item = 2536, itemName = "Trogg Stone Tooth", count = 8, oi = 1, map = 1432, x = 32.79, y = 74.99, f = "e" },
				},
			},
			{
				label = "Kill_Stonesplinter_Troggs_And_Scouts",
				along = true,
				goals = {
					{ t = "kill", quest = 224, npc = 1161, target = "Stonesplinter Trogg", count = 10, oi = 1, map = 1432, x = 32.79, y = 74.99, f = "e" },
					{ t = "kill", quest = 224, npc = 1162, target = "Stonesplinter Scout", count = 10, oi = 2, map = 1432, x = 32.79, y = 74.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave Stonesplinter Valley and follow the road", map = 1432, x = 30.57, y = 69.69 },
					{ t = "turnin", quest = 224, title = "In Defense of the King's Lands", npc = 1089, npcName = "Mountaineer Cobbleflint", map = 1432, x = 22.07, y = 73.13, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 267, title = "The Trogg Threat", npc = 1092, npcName = "Captain Rugelfuss", map = 1432, x = 23.23, y = 73.67, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Train Two-Handed Axes", map = 1455, x = 61.17, y = 89.52 },
					{ t = "goto", text = "Train Two-Handed Maces", map = 1455, x = 61.17, y = 89.52 },
				},
			},
			{
				note = "Walk into the portal.",
				goals = {
					{ t = "complete", quest = 1338, title = "Stormpike's Order", note = "Enter the Deeprun Tram", map = 1455, x = 76.58, y = 51.14, f = "e" },
				},
			},
			{
				note = "Ride the tram to Stormwind City. Middle platform, near the wall. Stormwind City section of the Deeprun Tram.",
				goals = {
					{ t = "turnin", quest = 6662, title = "Me Brother, Nipsy", npc = 13018, npcName = "Nipsy" },
				},
			},
			{
				note = "Walk into the portal.",
				goals = {
					{ t = "complete", quest = 1338, title = "Stormpike's Order", note = "Enter Stormwind City" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1338, title = "Stormpike's Order", npc = 5413, npcName = "Furen Longbeard", map = 1453, x = 64.6, y = 37.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR", "HUNTER", "ROGUE", "PRIEST" } },
				goals = {
					{ t = "goto", text = "Train Two-Handed Swords", map = 1453, x = 63.85, y = 69.08, only = { classes = { "WARRIOR", "HUNTER" } } },
					{ t = "goto", text = "Train One-Handed Swords", map = 1453, x = 63.85, y = 69.08, only = { classes = { "ROGUE" } } },
					{ t = "goto", text = "Train Staves", map = 1453, x = 63.85, y = 69.08, only = { classes = { "PRIEST" } } },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Stormwind City", map = 1453, x = 60.39, y = 75.27, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1453, x = 67.92, y = 72.64 },
					{ t = "getfp", location = "Stormwind", map = 1453, x = 70.91, y = 72.51, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-westfall-13-15",
		pack = "guides",
		title = "Westfall",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-darkshore-15-18",
		author = "TuWoW & Zygor",
		minLevel = 13,
		maxLevel = 15,
		zone = 1436,
		version = 1,
		steps = {
			{
				only = { races = { "Dwarf", "NightElf", "Gnome" } },
				goals = {
					{ t = "turnin", quest = 184, title = "Furlbrow's Deed", npc = 237, npcName = "Farmer Furlbrow", map = 1436, x = 59.96, y = 19.36, f = "e" },
					{ t = "accept", quest = 64, title = "The Forgotten Heirloom", npc = 237, npcName = "Farmer Furlbrow", map = 1436, x = 59.96, y = 19.36, f = "e" },
					{ t = "accept", quest = 109, title = "Report to Gryan Stoutmantle", npc = 237, npcName = "Farmer Furlbrow", map = 1436, x = 59.96, y = 19.36, f = "e", only = { races = { "NightElf" } } },
				},
			},
			{
				only = { races = { "Dwarf", "NightElf", "Gnome" } },
				goals = {
					{ t = "accept", quest = 36, title = "Westfall Stew", npc = 238, npcName = "Verna Furlbrow", map = 1436, x = 59.92, y = 19.42, f = "e" },
					{ t = "accept", quest = 151, title = "Poor Old Blanchy", npc = 238, npcName = "Verna Furlbrow", map = 1436, x = 59.92, y = 19.42, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf", "NightElf", "Gnome" } },
				goals = {
					{ t = "accept", quest = 9, title = "The Killing Fields", npc = 233, npcName = "Farmer Saldean", map = 1436, x = 56.05, y = 31.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Dwarf", "NightElf", "Gnome" } },
				goals = {
					{ t = "turnin", quest = 36, title = "Westfall Stew", npc = 235, npcName = "Salma Saldean", map = 1436, x = 56.42, y = 30.52, f = "e" },
					{ t = "accept", quest = 38, title = "Westfall Stew", npc = 235, npcName = "Salma Saldean", map = 1436, x = 56.42, y = 30.52, f = "e" },
					{ t = "accept", quest = 22, title = "Goretusk Liver Pie", npc = 235, npcName = "Salma Saldean", map = 1436, x = 56.42, y = 30.52, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf", "NightElf", "Gnome" } },
				goals = {
					{ t = "turnin", quest = 109, title = "Report to Gryan Stoutmantle", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
					{ t = "accept", quest = 12, title = "The People's Militia", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf", "NightElf", "Gnome" } },
				goals = {
					{ t = "accept", quest = 102, title = "Patrolling Westfall", npc = 821, npcName = "Captain Danuvin", map = 1436, x = 56.42, y = 47.62, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf", "NightElf", "Gnome" } },
				goals = {
					{ t = "getfp", location = "Sentinel Hill", map = 1436, x = 56.55, y = 52.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 153, title = "Red Leather Bandanas", npc = 878, npcName = "Scout Galiaan", map = 1436, x = 53.98, y = 52.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 153, item = 829, itemName = "Red Leather Bandana", count = 15, oi = 1, map = 1436, x = 48.85, y = 46.57, f = "e" },
				},
			},
			{
				label = "Kill_Defias_Trappers_And_Smugglers",
				along = true,
				goals = {
					{ t = "kill", quest = 12, npc = 504, target = "Defias Trapper", count = 15, oi = 1, map = 1436, x = 48.85, y = 46.57, f = "e" },
					{ t = "kill", quest = 12, npc = 95, target = "Defias Smuggler", count = 15, oi = 2, map = 1436, x = 48.85, y = 46.57, f = "e" },
				},
			},
			{
				note = "Stand outside the building here. Zoom your camera out. Angle your camera to see Furlbrow's Wardrobe. Loot it from outside the building.",
				goals = {
					{ t = "collect", quest = 64, item = 841, itemName = "Furlbrow's Pocket Watch", oi = 1, map = 1436, x = 49.32, y = 19.4, f = "e" },
				},
			},
			{
				note = "Gnolls.",
				goals = {
					{ t = "collect", quest = 102, item = 725, itemName = "Gnoll Paw", count = 8, oi = 1, map = 1436, x = 43.68, y = 16.73, f = "e" },
				},
			},
			{
				note = "Don't vendor them.",
				goals = {
					{ t = "collect", quest = 38, item = 730, itemName = "Murloc Eye", count = 3, oi = 2, map = 1436, x = 54.37, y = 9.28, f = "e" },
				},
			},
			{
				label = "Collect_Handfuls_Of_Oats",
				along = true,
				note = "Tan bags. Next to objects and buildings.",
				goals = {
					{ t = "collect", quest = 151, item = 1528, itemName = "Handful of Oats", count = 8, oi = 1, map = 1436, x = 56.6, y = 18.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 64, title = "The Forgotten Heirloom", npc = 237, npcName = "Farmer Furlbrow", map = 1436, x = 59.96, y = 19.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 151, title = "Poor Old Blanchy", npc = 238, npcName = "Verna Furlbrow", map = 1436, x = 59.92, y = 19.42, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 22, title = "Goretusk Liver Pie", npc = 235, npcName = "Salma Saldean", map = 1436, x = 56.42, y = 30.52, f = "e" },
				},
			},
			{
				note = "Multiple locations. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 38, item = 732, itemName = "Okra", count = 3, oi = 4, map = 1436, x = 53.98, y = 32.33, f = "e" },
				},
			},
			{
				label = "Kill_Harvest_Watchers",
				along = true,
				note = "Multiple locations. notinsticky",
				goals = {
					{ t = "kill", quest = 9, npc = 114, target = "Harvest Watcher", count = 20, oi = 1, map = 1436, x = 53.98, y = 32.33, f = "e" },
				},
			},
			{
				label = "Collect_Stringy_Vulture_Meat",
				along = true,
				note = "Vultures. Concentrated spawns around here. notinsticky Spread out throughout elsewhere. notinsticky Don't vendor them.",
				goals = {
					{ t = "collect", quest = 38, item = 729, itemName = "Stringy Vulture Meat", count = 3, oi = 1, map = 1436, x = 61.6, y = 44.6, f = "e" },
				},
			},
			{
				label = "Collect_Goretusk_Snouts_And_Livers",
				along = true,
				note = "Boars. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 38, item = 731, itemName = "Goretusk Snout", count = 3, oi = 3, map = 1436, x = 52.2, y = 42.6, f = "e" },
					{ t = "collect", quest = 22, item = 723, itemName = "Goretusk Liver", count = 8, oi = 1, map = 1436, x = 52.2, y = 42.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9, title = "The Killing Fields", npc = 233, npcName = "Farmer Saldean", map = 1436, x = 56.05, y = 31.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 38, title = "Westfall Stew", npc = 235, npcName = "Salma Saldean", map = 1436, x = 56.42, y = 30.52, f = "e" },
					{ t = "turnin", quest = 22, title = "Goretusk Liver Pie", npc = 235, npcName = "Salma Saldean", map = 1436, x = 56.42, y = 30.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12, title = "The People's Militia", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
					{ t = "accept", quest = 65, title = "The Defias Brotherhood", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.33, y = 47.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 102, title = "Patrolling Westfall", npc = 821, npcName = "Captain Danuvin", map = 1436, x = 56.42, y = 47.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 153, title = "Red Leather Bandanas", npc = 878, npcName = "Scout Galiaan", map = 1436, x = 53.98, y = 52.98, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5498, npcName = "Elsharin", map = 1453, x = 48.2, y = 87.21, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.25, y = 81.81 },
					{ t = "train", npc = 461, npcName = "Demisette Cloyce", map = 1453, x = 39.25, y = 84.96, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5520, npcName = "Spackle Thornberry", map = 1453, x = 39.54, y = 84.52, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "train", npc = 5492, npcName = "Katherine the Pure", map = 1453, x = 48.47, y = 49.06, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "train", npc = 5484, npcName = "Brother Benjamin", map = 1453, x = 51.64, y = 46.42, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 918, npcName = "Osborne the Night Man", map = 1453, x = 77.38, y = 65.3, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 5479, npcName = "Wu Shen", map = 1453, x = 80.5, y = 59.86, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 5515, npcName = "Einris Brightspear", map = 1453, x = 67.32, y = 36.23, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", map = 1455, x = 47.15, y = 13.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Rut'theran Village", map = 1438, x = 58.4, y = 94.02, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Train Bows", map = 1457, x = 57.56, y = 46.73 },
					{ t = "goto", text = "Train Staves", map = 1457, x = 57.56, y = 46.73 },
				},
			},
		},
	})
end

