-- TuWoW_Leveling — Guides/Leveling_Horde_17.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-25-30",
		pack = "guides",
		title = "Levels (25-30) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-levels-25-30-part-2",
		author = "TuWoW & Zygor",
		minLevel = 25,
		maxLevel = 30,
		zone = 1456,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 1195, title = "The Sacred Flame (1)", npc = 4721, npcName = "Zangen Stonehoof", map = 1456, x = 55.0, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1456, x = 37.8, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6393, itemName = "Incendrites", count = 10, oi = 1, map = 1456, x = 35.9, y = 65.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6282, target = "Bloodfury Slayer", count = 7, oi = 3, map = 1456, x = 35.7, y = 68.7, f = "e" },
					{ t = "kill", quest = 6282, target = "Bloodfury Roguefeather", count = 7, oi = 4, map = 1456, x = 35.7, y = 68.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6282, target = "Bloodfury Ambusher", count = 7, oi = 2, map = 1456, x = 32.6, y = 67.2, f = "e" },
					{ t = "kill", quest = 6282, target = "Bloodfury Harpy", count = 7, oi = 1, map = 1456, x = 32.6, y = 67.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6393, title = "Elemental War", npc = 11862, npcName = "Tsunaman", map = 1456, x = 47.2, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6282, title = "Harpies Threaten", npc = 11860, npcName = "Maggran Earthbinder", map = 1456, x = 47.2, y = 61.2, f = "e" },
					{ t = "accept", quest = 6283, title = "Bloodfury Bloodline", npc = 11860, npcName = "Maggran Earthbinder", map = 1456, x = 47.2, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6381, title = "New Life", npc = 11864, npcName = "Tammra Windfield", map = 1456, x = 47.5, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1456, x = 68.7, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1096, itemName = "Gerenzo's Mechanical Arm", count = 1, oi = 1, map = 1456, x = 64.1, y = 38.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1096, title = "Gerenzo Wrenchwhistle", npc = 4201, npcName = "Ziz Fizziks", map = 1456, x = 59.0, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Splintertree Post", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 25, title = "Stonetalon Standstill", npc = 12737, npcName = "Mastok Wrilehiss", map = 1456, x = 73.7, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6441, title = "Satyr Horns", npc = 12724, npcName = "Pixel", map = 1456, x = 73.1, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6503, title = "Ashenvale Outrunners", npc = 12867, npcName = "Kuray'bin", map = 1456, x = 71.1, y = 68.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6503, target = "Ashenvale Outrunner", count = 9, oi = 1, map = 1456, x = 72.0, y = 70.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6544, title = "Torek's Assault", npc = 12858, npcName = "Torek", map = 1456, x = 68.3, y = 75.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1456, x = 48.9, y = 69.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 25, target = "Befouled Water Elemental", count = 12, oi = 2, map = 1456, x = 47.7, y = 69.7, f = "e" },
					{ t = "collect", itemName = "the Befouled Water Globe", count = 1, map = 1456, x = 47.7, y = 69.7, f = "e" },
					{ t = "accept", quest = 1918, title = "The Befouled Element", map = 1456, x = 47.7, y = 69.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Ursangous's Paw", count = 1, map = 1456, x = 42.3, y = 65.6, f = "e" },
					{ t = "accept", quest = 23, title = "Ursangous's Paw", map = 1456, x = 42.3, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1195, item = 5867, itemName = "Etched Phial", count = 1, map = 1456, x = 57.9, y = 56.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25, title = "Stonetalon Standstill", npc = 12737, npcName = "Mastok Wrilehiss", map = 1456, x = 73.7, y = 60.0, f = "e" },
					{ t = "turnin", quest = 1918, title = "The Befouled Element", npc = 12737, npcName = "Mastok Wrilehiss", map = 1456, x = 73.7, y = 60.0, f = "e" },
					{ t = "accept", quest = 824, title = "Je'neu of the Earthen Ring", npc = 12737, npcName = "Mastok Wrilehiss", map = 1456, x = 73.7, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 23, title = "Ursangous's Paw", npc = 12696, npcName = "Senani Thunderheart", map = 1456, x = 73.8, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6544, title = "Torek's Assault", npc = 12877, npcName = "Ertog Ragetusk", map = 1456, x = 73.0, y = 62.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6503, title = "Ashenvale Outrunners", npc = 12867, npcName = "Kuray'bin", map = 1456, x = 71.1, y = 68.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1195, itemName = "Filled Etched Phial", count = 1, oi = 1, map = 1456, x = 60.2, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Shadumbra's Head", count = 1, map = 1456, x = 58.7, y = 56.1, f = "e" },
					{ t = "accept", quest = 24, title = "Shadumbra's Head", map = 1456, x = 58.7, y = 56.1, f = "e" },
				},
			},
			{
				note = "Hearth to Splintertree Post|goto Ashenvale,73.9,60.7,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 824, title = "Je'neu of the Earthen Ring", npc = 12736, npcName = "Je'neu Sancrea", map = 1456, x = 11.6, y = 34.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 216, title = "Between a Rock and a Thistlefur", npc = 12757, npcName = "Karang Amakkar", map = 1456, x = 11.9, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6462, title = "Troll Charm", npc = 12721, npcName = "Mitsuwa", map = 1456, x = 11.7, y = 34.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6641, title = "Vorsha the Lasher", npc = 12717, npcName = "Muglash", map = 1456, x = 12.1, y = 34.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6641, title = "Vorsha the Lasher", npc = 12863, npcName = "Warsong Runner", map = 1456, x = 12.2, y = 34.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1456, x = 31.3, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 216, target = "Thistlefur Avenger", count = 8, oi = 1, map = 1456, x = 31.3, y = 44.8, f = "e" },
					{ t = "kill", quest = 216, target = "Thistlefur Shaman", count = 8, oi = 2, map = 1456, x = 31.3, y = 44.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1456, x = 37.5, y = 32.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6462, itemName = "Troll Charm", count = 8, oi = 1, map = 1456, x = 40.0, y = 32.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6482, title = "Freedom to Ruul", npc = 12818, npcName = "Ruul Snowhoof", map = 1456, x = 41.5, y = 34.5, f = "e" },
				},
			},
			{
				note = "Leave the cave and go to 11.9,34.5",
				goals = {
					{ t = "turnin", quest = 216, title = "Between a Rock and a Thistlefur", npc = 12757, npcName = "Karang Amakkar", map = 1456, x = 11.9, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6462, title = "Troll Charm", npc = 12721, npcName = "Mitsuwa", map = 1456, x = 11.7, y = 34.9, f = "e" },
				},
			},
			{
				note = "Hearth to Splintertree Post|goto Ashenvale,73.9,60.7,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6482, title = "Freedom to Ruul", npc = 12837, npcName = "Yama Snowhoof", map = 1456, x = 74.0, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24, title = "Shadumbra's Head", npc = 12696, npcName = "Senani Thunderheart", map = 1456, x = 73.8, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6441, itemName = "Satyr Horns", count = 16, oi = 1, map = 1456, x = 81.8, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6441, title = "Satyr Horns", npc = 12724, npcName = "Pixel", map = 1456, x = 73.1, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6283, itemName = "Bloodfury Ripper's Remains", count = 1, oi = 1, map = 1456, x = 30.8, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6283, title = "Bloodfury Bloodline", npc = 11860, npcName = "Maggran Earthbinder", map = 1456, x = 47.2, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Sun Rock Retreat", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1195, title = "The Sacred Flame (1)", npc = 4721, npcName = "Zangen Stonehoof", map = 1456, x = 55.0, y = 51.4, f = "e" },
					{ t = "accept", quest = 1196, title = "The Sacred Flame (2)", npc = 4721, npcName = "Zangen Stonehoof", map = 1456, x = 55.0, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1196, title = "The Sacred Flame (2)", npc = 4722, npcName = "Rau Cliffrunner", map = 1441, x = 46.1, y = 51.7, f = "e" },
					{ t = "accept", quest = 1197, title = "The Sacred Flame (3)", npc = 4722, npcName = "Rau Cliffrunner", map = 1441, x = 46.1, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9431, title = "A Different Approach", npc = 17093, npcName = "Magistrix Elosai", map = 1441, x = 46.2, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4767, title = "Wind Rider", npc = 10377, npcName = "Elu", map = 1441, x = 44.8, y = 49.0, f = "e" },
				},
			},
			{
				note = "The path to Dorn Plainstalker starts here,0.5|c",
				goals = {
					{ t = "goto", map = 1441, x = 54.7, y = 44.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1149, title = "Test of Faith", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 53.9, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1441, x = 26.4, y = 32.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1149, title = "Test of Faith", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 53.9, y = 41.5, f = "e" },
					{ t = "accept", quest = 1150, title = "Test of Endurance", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 53.9, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4865, title = "Serpent Wild", npc = 10428, npcName = "Motega Firemane", map = 1441, x = 21.5, y = 32.4, f = "e" },
					{ t = "accept", quest = 5062, title = "Sacred Fire", npc = 10428, npcName = "Motega Firemane", map = 1441, x = 21.5, y = 32.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5062, itemName = "Incendia Agave", count = 10, oi = 1, map = 1441, x = 33.6, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1441, x = 14.5, y = 32.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4767, itemName = "Highperch Wyvern Egg", count = 10, oi = 1, map = 1441, x = 10.7, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1441, x = 13.2, y = 39.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4770, title = "Homeward Bound", npc = 10427, npcName = "Pao'ka Swiftmountain", map = 1441, x = 17.9, y = 40.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9431, itemName = "Purifying Earth", count = 2, oi = 1, map = 1441, x = 13.2, y = 26.3, f = "e" },
				},
			},
			{
				note = "Hearth to Sun Rock Retreat|goto Stonetalon Mountains,47.5,62.1,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5062, title = "Sacred Fire", npc = 4046, npcName = "Magatha Grimtotem", map = 1456, x = 69.9, y = 30.9, f = "e" },
					{ t = "accept", quest = 5088, title = "Arikara", npc = 4046, npcName = "Magatha Grimtotem", map = 1456, x = 69.9, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4767, title = "Wind Rider", npc = 10377, npcName = "Elu", map = 1441, x = 44.8, y = 49.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Freewind Post", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1441, x = 31.2, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Secret Note", count = 1, map = 1441, x = 31.8, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Secret Note", count = 1, map = 1441, x = 33.8, y = 40.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Secret Note", count = 1, map = 1441, x = 39.3, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5088, itemName = "Arikara Serpent Skin", count = 1, oi = 2, map = 1441, x = 38.0, y = 35.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5147, itemName = "Arnak's Hoof", count = 1, oi = 1, map = 1441, x = 38.9, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4904, title = "Free at Last", npc = 10646, npcName = "Lakota Windsong", map = 1441, x = 37.7, y = 26.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4770, title = "Homeward Bound", npc = 10428, npcName = "Motega Firemane", map = 1441, x = 21.5, y = 32.4, f = "e" },
					{ t = "turnin", quest = 5088, title = "Arikara", npc = 10428, npcName = "Motega Firemane", map = 1441, x = 21.5, y = 32.4, f = "e" },
					{ t = "turnin", quest = 9431, title = "A Different Approach", npc = 10941, npcName = "Wizlo Bearingshiner", map = 1441, x = 21.5, y = 32.4, f = "e" },
					{ t = "accept", quest = 9433, title = "A Dip in the Moonwell", npc = 10941, npcName = "Wizlo Bearingshiner", map = 1441, x = 21.5, y = 32.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1441, x = 44.1, y = 37.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1197, itemName = "Cloven Hoof", count = 1, oi = 1, map = 1441, x = 42.0, y = 31.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1131, itemName = "Steelsnap's Rib", count = 1, oi = 1, map = 1441, x = 17.6, y = 28.2, f = "e" },
				},
			},
			{
				note = "Hearth to Freewind Post|goto Thousand Needles,46.0,51.4,2.0|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1197, title = "The Sacred Flame (3)", npc = 4722, npcName = "Rau Cliffrunner", map = 1441, x = 46.1, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4904, title = "Free at Last", npc = 10645, npcName = "Thalia Amberhide", map = 1441, x = 46.1, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5064, title = "Grimtotem Spying", npc = 10537, npcName = "Cliffwatcher Longhorn", map = 1441, x = 45.6, y = 50.8, f = "e" },
					{ t = "turnin", quest = 5147, title = "Wanted - Arnak Grimtotem", npc = 10537, npcName = "Cliffwatcher Longhorn", map = 1441, x = 45.6, y = 50.8, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-25-30-part-2",
		pack = "guides",
		title = "Levels (25-30) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 25,
		maxLevel = 30,
		zone = 1456,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 1131, title = "Steelsnap", npc = 3441, npcName = "Melor Stonehoof", map = 1441, x = 61.5, y = 80.9, f = "e" },
					{ t = "accept", quest = 1136, title = "Frostmaw", npc = 3441, npcName = "Melor Stonehoof", map = 1441, x = 61.5, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "the Assassination Note", count = 1, map = 1441, x = 22.1, y = 31.0, f = "e" },
					{ t = "accept", quest = 4881, title = "Assassination Plot", map = 1441, x = 22.1, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4881, title = "Assassination Plot", npc = 10638, npcName = "Kanati Greycloud", map = 1441, x = 21.3, y = 32.1, f = "e" },
					{ t = "accept", quest = 4966, title = "Protect Kanati Greycloud", npc = 10638, npcName = "Kanati Greycloud", map = 1441, x = 21.3, y = 32.1, f = "e" },
					{ t = "turnin", quest = 4966, title = "Protect Kanati Greycloud", npc = 10638, npcName = "Kanati Greycloud", map = 1441, x = 21.3, y = 32.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1441, x = 12.0, y = 18.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9433, itemName = "Thalanaar Moonwell Water", count = 1, oi = 1, map = 1441, x = 9.5, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9433, title = "A Dip in the Moonwell", npc = 10941, npcName = "Wizlo Bearingshiner", map = 1441, x = 21.5, y = 32.4, f = "e" },
					{ t = "accept", quest = 9434, title = "Testing the Tonic", npc = 10941, npcName = "Wizlo Bearingshiner", map = 1441, x = 21.5, y = 32.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1150, itemName = "Grenka's Claw", count = 1, oi = 1, map = 1441, x = 26.0, y = 55.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9434, title = "Testing the Tonic", npc = 17093, npcName = "Magistrix Elosai", map = 1441, x = 46.2, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1150, title = "Test of Endurance", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 54.0, y = 41.0, f = "e" },
					{ t = "accept", quest = 1151, title = "Test of Strength", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 54.0, y = 41.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1151, itemName = "Fragments of Rok'Alim", count = 1, oi = 1, map = 1441, x = 20.6, y = 39.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1151, title = "Test of Strength", npc = 2986, npcName = "Dorn Plainstalker", map = 1441, x = 54.0, y = 41.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1088, title = "Ordanus", npc = 4198, npcName = "Braelyn Firehand", map = 1441, x = 45.9, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9534, title = "Destroy the Legion", npc = 17355, npcName = "Valusha", map = 1440, x = 73.2, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9534, target = "Mannoroc Lasher", count = 6, oi = 1, map = 1440, x = 80.0, y = 68.0, f = "e" },
					{ t = "kill", quest = 9534, target = "Roaming Felguard", count = 6, oi = 2, map = 1440, x = 80.0, y = 68.0, f = "e" },
					{ t = "kill", quest = 9534, target = "Searing Infernal", count = 6, oi = 3, map = 1440, x = 80.0, y = 68.0, f = "e" },
					{ t = "accept", quest = 9535, title = "Diabolical Plans", map = 1440, x = 80.0, y = 68.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9534, title = "Destroy the Legion", npc = 17355, npcName = "Valusha", map = 1440, x = 73.2, y = 60.4, f = "e" },
					{ t = "turnin", quest = 9535, title = "Diabolical Plans", npc = 17355, npcName = "Valusha", map = 1440, x = 73.2, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2, title = "Sharptalon's Claw", map = 1440, x = 74.0, y = 70.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1088, itemName = "Ordanus' Head", count = 1, oi = 1, map = 1440, x = 62.1, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2, title = "Sharptalon's Claw", npc = 12696, npcName = "Senani Thunderheart", map = 1440, x = 73.8, y = 61.5, f = "e" },
					{ t = "accept", quest = 247, title = "The Hunt Completed", npc = 12696, npcName = "Senani Thunderheart", map = 1440, x = 73.8, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1088, title = "Ordanus", npc = 4198, npcName = "Braelyn Firehand", map = 1442, x = 45.9, y = 60.4, f = "e" },
					{ t = "accept", quest = 1089, title = "The Den", npc = 4198, npcName = "Braelyn Firehand", map = 1442, x = 45.9, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Sun Rock Retreat", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1089, item = 5687, itemName = "Gatekeeper's Key", count = 1, map = 1442, x = 29.9, y = 15.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1089, itemName = "Claw Key", count = 1, oi = 2, map = 1442, x = 29.5, y = 15.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1089, itemName = "Barrow Key", count = 1, oi = 3, map = 1442, x = 28.0, y = 13.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1089, itemName = "Sleepers' Key", count = 1, oi = 1, map = 1442, x = 25.6, y = 11.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1089, title = "The Den", map = 1442, x = 26.6, y = 10.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 30, f = "e" },
				},
			},
		},
	})
end

