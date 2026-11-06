-- TuWoW_Leveling — Guides/Dungeons_08.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-the-stockade-quests",
		pack = "guides",
		title = "The Stockade Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1437,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 25 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 303, title = "The Dark Iron War", npc = 1074, npcName = "Motley Garmason", map = 1437, x = 49.67, y = 18.24, f = "e" },
				},
			},
			{
				note = "You may need help with this.",
				goals = {
					{ t = "kill", quest = 303, npc = 1051, target = "Dark Iron Dwarf", count = 15, oi = 1, map = 1437, x = 48.56, y = 16.64, f = "e" },
				},
			},
			{
				label = "Slay_Dark_Iron_Tunnelers",
				along = true,
				note = "You may need help with this.",
				goals = {
					{ t = "kill", quest = 303, npc = 1053, target = "Dark Iron Tunneler", count = 5, oi = 2, map = 1437, x = 48.11, y = 15.75, f = "e" },
				},
			},
			{
				label = "Slay_Dark_Iron_Saboteurs",
				along = true,
				note = "You may need help with this.",
				goals = {
					{ t = "kill", quest = 303, npc = 1052, target = "Dark Iron Saboteur", count = 5, oi = 3, map = 1437, x = 48.56, y = 16.64, f = "e" },
				},
			},
			{
				label = "Slay_Dark_Iron_Demolitionists",
				along = true,
				note = "Inside the buildings around this area. You may need help with this.",
				goals = {
					{ t = "kill", quest = 303, npc = 1054, target = "Dark Iron Demolitionist", count = 5, oi = 4, map = 1437, x = 47.45, y = 15.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 303, title = "The Dark Iron War", npc = 1074, npcName = "Motley Garmason", map = 1437, x = 49.67, y = 18.24, f = "e" },
					{ t = "accept", quest = 378, title = "The Fury Runs Deep", npc = 1074, npcName = "Motley Garmason", map = 1437, x = 49.67, y = 18.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 386, title = "What Comes Around...", npc = 859, npcName = "Guard Berton", map = 1433, x = 21.17, y = 46.57, f = "e" },
				},
			},
			{
				note = "He walks around inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1431, x = 72.88, y = 46.83 },
					{ t = "accept", quest = 377, title = "Crime and Punishment", npc = 270, npcName = "Councilman Millstipe", map = 1431, x = 71.92, y = 47.79, f = "e" },
				},
			},
			{
				note = "She walks around this area.",
				goals = {
					{ t = "accept", quest = 388, title = "The Color of Blood", npc = 1721, npcName = "Nikova Raskol", map = 1453, x = 76.65, y = 60.49, f = "e" },
				},
			},
			{
				note = "This is the final boss of the Deadmines dungeon. Use our Dungeon guides to accomplish this.",
				goals = {
					{ t = "collect", quest = 373, item = 2874, itemName = "An Unsent Letter" },
				},
			},
			{
				goals = {
					{ t = "use", item = 2874, itemName = "An Unsent Letter" },
					{ t = "accept", quest = 373, title = "The Unsent Letter" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 56.73, y = 48.55 },
					{ t = "turnin", quest = 373, title = "The Unsent Letter", npc = 1646, npcName = "Baros Alexston", map = 1453, x = 57.75, y = 47.86, f = "e" },
					{ t = "accept", quest = 389, title = "Bazil Thredd", npc = 1646, npcName = "Baros Alexston", map = 1453, x = 57.75, y = 47.86, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.33, y = 69.91 },
					{ t = "turnin", quest = 389, title = "Bazil Thredd", npc = 1719, npcName = "Warden Thelwater", map = 1453, x = 51.48, y = 69.38, f = "e" },
					{ t = "accept", quest = 391, title = "The Stockade Riots", npc = 1719, npcName = "Warden Thelwater", map = 1453, x = 51.48, y = 69.38, f = "e" },
					{ t = "accept", quest = 387, title = "Quell the Uprising", npc = 1719, npcName = "Warden Thelwater", map = 1453, x = 51.48, y = 69.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 378, title = "The Fury Runs Deep", note = "Enter The Stockade Dungeon with Your Group" },
				},
			},
			{
				note = "He is the first boss of the dungeon. He should be in one of the side rooms at the start of the dungeon or the single room straight to the north.",
				goals = {
					{ t = "collect", quest = 386, item = 3630, itemName = "Head of Targorr", oi = 1 },
				},
			},
			{
				note = "He is the second boss of the dungeon. After entering, head north and follow the path east, he is in the second small room on the left.",
				goals = {
					{ t = "collect", quest = 378, item = 3640, itemName = "Head of Deepfury", oi = 1 },
				},
			},
			{
				note = "He is the fourth boss of the dungeon. Follow the east path all the way to the end.",
				goals = {
					{ t = "collect", quest = 391, item = 2926, itemName = "Head of Bazil Thredd", oi = 1 },
				},
			},
			{
				note = "He is the fifth boss of the dungeon. Follow the west path all the way to the end.",
				goals = {
					{ t = "collect", quest = 377, item = 3628, itemName = "Hand of Dextren Ward", oi = 1 },
				},
			},
			{
				label = "Kill_10_Defias_Prisoners",
				along = true,
				goals = {
					{ t = "kill", quest = 387, npc = 1706, target = "Defias Prisoner", count = 10, oi = 1 },
				},
			},
			{
				label = "Kill_8_Defias_Convicts",
				along = true,
				goals = {
					{ t = "kill", quest = 387, npc = 1711, target = "Defias Convict", count = 8, oi = 2 },
				},
			},
			{
				label = "Kill_8_Defias_Insurgents",
				along = true,
				goals = {
					{ t = "kill", quest = 387, npc = 1715, target = "Defias Insurgent", count = 8, oi = 3 },
				},
			},
			{
				label = "Collect_10_Red_Wool_Bandanas",
				along = true,
				goals = {
					{ t = "collect", quest = 388, item = 2909, itemName = "Red Wool Bandana", count = 10, oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 391, title = "The Stockade Riots", npc = 1719, npcName = "Warden Thelwater", map = 1453, x = 51.48, y = 69.38, f = "e" },
					{ t = "turnin", quest = 387, title = "Quell the Uprising", npc = 1719, npcName = "Warden Thelwater", map = 1453, x = 51.48, y = 69.38, f = "e" },
				},
			},
			{
				note = "She walks around this area.",
				goals = {
					{ t = "goto", text = "Leave the building", map = 1453, x = 52.37, y = 69.98 },
					{ t = "turnin", quest = 388, title = "The Color of Blood", npc = 1721, npcName = "Nikova Raskol", map = 1453, x = 76.46, y = 63.66, f = "e" },
				},
			},
			{
				note = "He walks around inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1431, x = 72.88, y = 46.83 },
					{ t = "turnin", quest = 377, title = "Crime and Punishment", npc = 270, npcName = "Councilman Millstipe", map = 1431, x = 71.92, y = 47.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 386, title = "What Comes Around...", npc = 859, npcName = "Guard Berton", map = 1433, x = 21.17, y = 46.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 378, title = "The Fury Runs Deep", npc = 1074, npcName = "Motley Garmason", map = 1437, x = 49.67, y = 18.24, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-gnomeregan-quests",
		pack = "guides",
		title = "Gnomeregan Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 25 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.89, y = 50.93 },
					{ t = "accept", quest = 2923, title = "Tinkmaster Overspark", npc = 7917, npcName = "Brother Sarno", map = 1453, x = 51.06, y = 48.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2928, title = "Gyrodrillmatic Excavationators", npc = 6579, npcName = "Shoni the Shilent", map = 1453, x = 62.63, y = 34.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2925, title = "Klockmort's Essentials", npc = 6142, npcName = "Mathiel", map = 1457, x = 59.48, y = 45.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2925, title = "Klockmort's Essentials", npc = 6169, npcName = "Klockmort Spannerspan", map = 1455, x = 67.98, y = 46.13, f = "e" },
					{ t = "accept", quest = 2924, title = "Essential Artificials", npc = 6169, npcName = "Klockmort Spannerspan", map = 1455, x = 67.98, y = 46.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2923, title = "Tinkmaster Overspark", npc = 7944, npcName = "Tinkmaster Overspark", map = 1455, x = 69.56, y = 50.32, f = "e" },
					{ t = "accept", quest = 2922, title = "Save Techbot's Brain!", npc = 7944, npcName = "Tinkmaster Overspark", map = 1455, x = 69.56, y = 50.32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2927, title = "The Day After", npc = 6569, npcName = "Gnoarn", map = 1455, x = 69.18, y = 50.56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2930, title = "Data Rescue", npc = 7950, npcName = "Master Mechanic Castpipe", map = 1455, x = 69.82, y = 48.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2929, title = "The Grand Betrayal", npc = 7937, npcName = "High Tinker Mekkatorque", map = 1455, x = 68.76, y = 48.96, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1426, x = 45.97, y = 48.83 },
					{ t = "turnin", quest = 2927, title = "The Day After", npc = 1268, npcName = "Ozzie Togglevolt", map = 1426, x = 45.88, y = 49.38, f = "e" },
					{ t = "accept", quest = 2926, title = "Gnogaine", npc = 1268, npcName = "Ozzie Togglevolt", map = 1426, x = 45.88, y = 49.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1426, x = 24.29, y = 39.77 },
					{ t = "goto", text = "Ride the elevator down", map = 1426, x = 23.41, y = 39.21 },
					{ t = "goto", text = "Follow the path", map = 1426, x = 21.98, y = 36.73 },
					{ t = "goto", text = "Follow the path", map = 1426, x = 19.93, y = 36.02 },
					{ t = "complete", quest = 2928, title = "Gyrodrillmatic Excavationators", note = "Enter the Gnomeregan Dungeon with Your Group" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2930, item = 9279, itemName = "White Punch Card" },
				},
			},
			{
				note = "You may need help with this.",
				goals = {
					{ t = "collect", quest = 2922, item = 9277, itemName = "Techbot's Memory Core", oi = 1, map = 1426, x = 19.8, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2930, item = 9280, itemName = "Yellow Punch Card" },
				},
			},
			{
				note = "Use it on Irradiated Invaders or Irradiated Pillagers.",
				goals = {
					{ t = "use", item = 9283, itemName = "Empty Leaden Collection Phial" },
					{ t = "collect", quest = 2926, item = 9284, itemName = "Full Leaden Collection Phial", oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1426, x = 45.97, y = 48.83 },
					{ t = "turnin", quest = 2926, title = "Gnogaine", npc = 1268, npcName = "Ozzie Togglevolt", map = 1426, x = 45.88, y = 49.38, f = "e" },
					{ t = "accept", quest = 2962, title = "The Only Cure is More Green Glow", npc = 1268, npcName = "Ozzie Togglevolt", map = 1426, x = 45.88, y = 49.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1426, x = 24.29, y = 39.77 },
					{ t = "goto", text = "Ride the elevator down", map = 1426, x = 23.41, y = 39.21 },
					{ t = "goto", text = "Follow the path", map = 1426, x = 21.98, y = 36.73 },
					{ t = "goto", text = "Follow the path", map = 1426, x = 19.93, y = 36.02 },
					{ t = "complete", quest = 2928, title = "Gyrodrillmatic Excavationators", note = "Enter the Gnomeregan Dungeon with Your Group" },
				},
			},
			{
				note = "Stay on the upper levels of The Hall of Gears and follow the path around to the southwest to enter The Dormitory. After entering The Dormitory, follow the path around to the left to continue to The Dormitory's lower level. It is up against the wall in the lowest level of The Dormitory area.",
				goals = {
					{ t = "collect", quest = 2930, item = 9282, itemName = "Blue Punch Card" },
				},
			},
			{
				note = "It is the first boss of the dungeon. It is in the lower level of the Hall of Gears. Leave The Dormitory and reenter The Hall of Gears and then jump down to the lower level. Use it on a living Irradiated Slime.",
				goals = {
					{ t = "use", item = 9364, itemName = "Heavy Leaden Collection Phial" },
					{ t = "collect", quest = 2962, item = 9365, itemName = "High Potency Radioactive Fallout", oi = 1 },
				},
			},
			{
				note = "He is the third boss of the dungeon. He is in the center of the upper level of the Launch Bay. Follow the west path from The Hall of Gears to enter the Launch Bay.",
				goals = {
					{ t = "collect", quest = 2930, item = 6893, itemName = "Workshop Key" },
				},
			},
			{
				note = "It's up in the Launch Bay platform, with Electrocutioner 6000.",
				goals = {
					{ t = "collect", quest = 2930, item = 9281, itemName = "Red Punch Card" },
				},
			},
			{
				note = "It is found in the lower level of the Engineering Labs, along with Crowd Pummeler 9-60. Stay on the upper level of the Launch Bay and follow the southeast path to reach the Engineering Labs. After entering the Engineering Labs, go left and follow it a short distance to ride an elevator down to the lower level. It is on the opposite side of the large structure in the center of the room after getting off the elevator.",
				goals = {
					{ t = "collect", quest = 2930, item = 9316, itemName = "Prismatic Punch Card", oi = 1 },
				},
			},
			{
				label = "Collect_24_Robo-Mechanical_Guts",
				along = true,
				goals = {
					{ t = "collect", quest = 2928, item = 9309, itemName = "Robo-mechanical Guts", count = 24, oi = 1 },
				},
			},
			{
				label = "Collect_12_Essential_Artificial",
				along = true,
				note = "They look like square upright machines scattered all over the instance.",
				goals = {
					{ t = "collect", quest = 2924, item = 9278, itemName = "Essential Artificial", count = 12, oi = 1 },
				},
			},
			{
				note = "He is the last boss of the dungeon. Leave the Engineering Labs through the lower level and follow the southwest path up and out, then continue west after the path splits.",
				goals = {
					{ t = "kill", quest = 2929, npc = 7800, target = "Mekgineer Thermaplugg", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2928, title = "Gyrodrillmatic Excavationators", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2924, title = "Essential Artificials", npc = 6169, npcName = "Klockmort Spannerspan", map = 1455, x = 67.98, y = 46.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2922, title = "Save Techbot's Brain!", npc = 7944, npcName = "Tinkmaster Overspark", map = 1455, x = 69.56, y = 50.32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2930, title = "Data Rescue", npc = 7950, npcName = "Master Mechanic Castpipe", map = 1455, x = 69.82, y = 48.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2929, title = "The Grand Betrayal", npc = 7937, npcName = "High Tinker Mekkatorque", map = 1455, x = 68.76, y = 48.96, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1426, x = 45.97, y = 48.83 },
					{ t = "turnin", quest = 2962, title = "The Only Cure is More Green Glow", npc = 1268, npcName = "Ozzie Togglevolt", map = 1426, x = 45.88, y = 49.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2928, title = "Gyrodrillmatic Excavationators", npc = 6579, npcName = "Shoni the Shilent", map = 1453, x = 62.63, y = 34.11, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-razorfen-kraul-quests",
		pack = "guides",
		title = "Razorfen Kraul Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1413,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 29 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1221, title = "Blueleaf Tubers", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1221, item = 6684, itemName = "Snufflenose Command Stick", oi = 4, map = 1413, x = 62.34, y = 37.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1221, item = 5897, itemName = "Snufflenose Owner's Manual", oi = 3, map = 1413, x = 62.34, y = 37.63, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1221, item = 5880, itemName = "Crate With Holes", oi = 2, map = 1413, x = 62.33, y = 37.63, f = "e" },
				},
			},
			{
				note = "It will be in the hand of a corpse on the ground.",
				goals = {
					{ t = "collect", quest = 1100, item = 5791, itemName = "Henrig Lonebrow's Journal", map = 1441, x = 30.73, y = 24.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 5791, itemName = "Henrig Lonebrow's Journal" },
					{ t = "accept", quest = 1100, title = "Lonebrow's Journal", map = 1441, x = 30.73, y = 24.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1100, title = "Lonebrow's Journal", npc = 4048, npcName = "Falfindel Waywarder", map = 1444, x = 89.63, y = 46.57, f = "e" },
					{ t = "accept", quest = 1101, title = "The Crone of the Kraul", npc = 4048, npcName = "Falfindel Waywarder", map = 1444, x = 89.63, y = 46.57, f = "e" },
				},
			},
			{
				note = "This will summon a gopher. This will allow you to command the gopher. Once past Overlord Ramtusk, go to the biggest hill from the area with many bridges.",
				goals = {
					{ t = "use", item = 5880, itemName = "Crate With Holes" },
					{ t = "use", item = 6684, itemName = "Snufflenose Command Stick" },
					{ t = "collect", quest = 1221, item = 5876, itemName = "Blueleaf Tuber", count = 6, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1101, item = 5792, itemName = "Razorflank's Medallion", oi = 1 },
				},
			},
			{
				note = "Inside the tent. Jump down from the platform where Charlga Razorflank was and head to the tent to the left.",
				goals = {
					{ t = "accept", quest = 1142, title = "Mortality Wanes", npc = 4510, npcName = "Heralath Fallowbrook" },
				},
			},
			{
				note = "Inside the building. This is an escort quest.",
				goals = {
					{ t = "accept", quest = 1144, title = "Willix the Importer", npc = 4508, npcName = "Willix the Importer" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1144, title = "Willix the Importer", note = "Escort Willix the Importer out of Razorfen Kraul" },
				},
			},
			{
				note = "He will be at the entrance after the completion of the escort quest.",
				goals = {
					{ t = "turnin", quest = 1144, title = "Willix the Importer", npc = 4508, npcName = "Willix the Importer" },
				},
			},
			{
				label = "Treshala's Pendant",
				along = true,
				goals = {
					{ t = "collect", quest = 1142, item = 5825, itemName = "Treshala's Pendant", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1221, title = "Blueleaf Tubers", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1101, title = "The Crone of the Kraul", npc = 4048, npcName = "Falfindel Waywarder", map = 1444, x = 89.63, y = 46.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1457, x = 67.68, y = 61.26 },
					{ t = "goto", text = "Continue up the ramp", map = 1457, x = 63.69, y = 57.75 },
					{ t = "goto", text = "Cross the bridge", map = 1457, x = 65.71, y = 61.63 },
					{ t = "turnin", quest = 1142, title = "Mortality Wanes", npc = 4521, npcName = "Treshala Fallowbrook", map = 1457, x = 69.55, y = 67.79, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-scarlet-monastery-library-quests",
		pack = "guides",
		title = "Scarlet Monastery Library Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 34 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.86, y = 50.85 },
					{ t = "goto", text = "Run down the ramp", map = 1453, x = 51.66, y = 43.86 },
					{ t = "accept", quest = 6141, title = "Brother Anton", npc = 12336, npcName = "Brother Crowley", map = 1453, x = 52.62, y = 43.18, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1453, x = 51.16, y = 44.46 },
					{ t = "goto", text = "Leave the building", map = 1453, x = 52.86, y = 50.85 },
					{ t = "turnin", quest = 6141, title = "Brother Anton", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.9, f = "e" },
					{ t = "accept", quest = 261, title = "Down the Scarlet Path", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 261, npc = 11561, target = "Undead Ravager", count = 30, oi = 1, map = 1443, x = 64.09, y = 91.64, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 261, title = "Down the Scarlet Path", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.9, f = "e" },
					{ t = "accept", quest = 1052, title = "Down the Scarlet Path", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1050, title = "Mythology of the Titans", npc = 3979, npcName = "Librarian Mae Paledust", map = 1455, x = 74.97, y = 12.46, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 50.47, y = 58.56 },
					{ t = "turnin", quest = 1052, title = "Down the Scarlet Path", npc = 3980, npcName = "Raleigh the Devout", map = 1424, x = 51.46, y = 58.36, f = "e" },
					{ t = "accept", quest = 1053, title = "In the Name of the Light", npc = 3980, npcName = "Raleigh the Devout", map = 1424, x = 51.46, y = 58.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1420, x = 82.65, y = 32.88 },
					{ t = "goto", text = "Enter the Portal", map = 1420, x = 85.33, y = 32.27 },
					{ t = "complete", quest = 1053, title = "In the Name of the Light", note = "Enter the Scarlet Monastery - Library Dungeon with Your Group" },
				},
			},
			{
				note = "He is the first boss of the dungeon. Follow the path to enter Huntsman's Cloister, then continue south to the small room.",
				goals = {
					{ t = "kill", quest = 1053, npc = 3974, target = "Houndmaster Loksey", oi = 4 },
				},
			},
			{
				note = "For this encounter, he will cast \"Detonation\" which will damage the entire group. When he does this, use the pillars to line of sight the ability. This fight is very healing intensive, so if you have a hybrid class, additional healing may be required. He will also cast \"Silence\" on casters.",
				goals = {
					{ t = "talk", npc = 6487, npcName = "Arcanist Doan" },
				},
			},
			{
				label = "Collect_Mythology_of_Titans",
				along = true,
				note = "Continue through Huntsman's Cloister to enter the Gallery of Treasures. Once through the Gallery of Treasures the map will change back to Scarlet Monastery. It will be on the ground on the left side of the room. It looks like a small book on the ground below a window.",
				goals = {
					{ t = "collect", quest = 1050, item = 5536, itemName = "Mythology of the Titans", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1050, title = "Mythology of the Titans", note = "Click Here to Continue" },
				},
			},
			{
				note = "Upstairs inside the building. This quest requires you to kill bosses in Scarlet Monastery - Library, Armory and Cathedral. Use the Scarlet Monastery Armory Quests and Scarlet Monastery Cathedral Quests guides to accomplish this. If you haven't completed the other objectives yet, skip this for now.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 50.47, y = 58.56 },
					{ t = "turnin", quest = 1053, title = "In the Name of the Light", npc = 3980, npcName = "Raleigh the Devout", map = 1424, x = 51.46, y = 58.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1050, title = "Mythology of the Titans", npc = 3979, npcName = "Librarian Mae Paledust", map = 1455, x = 74.97, y = 12.46, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-scarlet-monastery-armory-quests",
		pack = "guides",
		title = "Scarlet Monastery Armory Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 38 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.86, y = 50.85 },
					{ t = "goto", text = "Run down the ramp", map = 1453, x = 51.66, y = 43.86 },
					{ t = "accept", quest = 6141, title = "Brother Anton", npc = 12336, npcName = "Brother Crowley", map = 1453, x = 52.62, y = 43.18, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6141, title = "Brother Anton", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.9, f = "e" },
					{ t = "accept", quest = 261, title = "Down the Scarlet Path", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 261, npc = 11561, target = "Undead Ravager", count = 30, oi = 1, map = 1443, x = 64.09, y = 91.64, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 261, title = "Down the Scarlet Path", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.9, f = "e" },
					{ t = "accept", quest = 1052, title = "Down the Scarlet Path", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.9, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 50.47, y = 58.56 },
					{ t = "turnin", quest = 1052, title = "Down the Scarlet Path", npc = 3980, npcName = "Raleigh the Devout", map = 1424, x = 51.46, y = 58.36, f = "e" },
					{ t = "accept", quest = 1053, title = "In the Name of the Light", npc = 3980, npcName = "Raleigh the Devout", map = 1424, x = 51.46, y = 58.36, f = "e" },
				},
			},
			{
				note = "You will need The Scarlet Key from the chest behind Arcanist Doan in the Library to open this. A rogue with 175 Lockpicking skill can pick it and a Truesilver Key opens it too. Engineers can also blast the door open.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1420, x = 82.65, y = 32.88 },
					{ t = "goto", text = "click Armory Door", map = 1420, x = 85.41, y = 31.59 },
					{ t = "goto", text = "Enter the Portal", map = 1420, x = 85.67, y = 31.76 },
					{ t = "complete", quest = 1053, title = "In the Name of the Light", note = "Enter the Scarlet Monastery - Armory Dungeon with Your Group" },
				},
			},
			{
				note = "He is the only boss of the dungeon, found all the way at the end.",
				goals = {
					{ t = "kill", quest = 1053, npc = 3975, target = "Herod", oi = 3 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1053, title = "In the Name of the Light", note = "Click Here to Continue" },
				},
			},
			{
				note = "Upstairs inside the building. This quest requires you to kill bosses in Scarlet Monastery - Library, Armory and Cathedral. Use the Scarlet Monastery Library Quests and Scarlet Monastery Cathedral Quests guides to accomplish this. If you haven't completed the other objectives yet, skip this for now.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 50.47, y = 58.56 },
					{ t = "turnin", quest = 1053, title = "In the Name of the Light", npc = 3980, npcName = "Raleigh the Devout", map = 1424, x = 51.46, y = 58.36, f = "e" },
				},
			},
		},
	})
end

