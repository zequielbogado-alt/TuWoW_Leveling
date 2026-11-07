-- TuWoW_Leveling — Guides/Leveling_Alliance_41.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-70-72-part-3",
		pack = "guides",
		title = "Northrend (70-72) (Parte 3/4)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-70-72-part-4",
		author = "TuWoW & Zygor",
		minLevel = 70,
		maxLevel = 72,
		zone = 114,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 11931, title = "Cracking the Code", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
					{ t = "turnin", quest = 11967, title = "Mustering the Reds", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
					{ t = "accept", quest = 11969, title = "Springing the Trap", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 25.4, y = 21.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11969, title = "Springing the Trap", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
				},
			},
			{
				note = "Fly to Amber Ledge,0.5|noway|c",
				goals = {
					{ t = "goto", map = 114, x = 45.1, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Fizzcrank Airstrip", map = 114, x = 56.6, y = 20.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Fizzcrank Airstrip", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11707, title = "Distress Call", npc = 25590, npcName = "Fizzcrank Fullthrottle", map = 114, x = 57.0, y = 18.7, f = "e" },
					{ t = "accept", quest = 11708, title = "The Mechagnomes", npc = 25590, npcName = "Fizzcrank Fullthrottle", map = 114, x = 57.0, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11708, title = "The Mechagnomes", npc = 25747, npcName = "Jinky Wingnut", map = 114, x = 57.4, y = 18.7, f = "e" },
					{ t = "accept", quest = 11712, title = "Re-Cursive", npc = 25747, npcName = "Jinky Wingnut", map = 114, x = 57.4, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11710, title = "What's the Matter with the Transmatter?", npc = 25702, npcName = "Mordle Cogspinner", map = 114, x = 57.4, y = 18.7, f = "e" },
					{ t = "accept", quest = 11704, title = "King Mrgl-Mrgl", npc = 25702, npcName = "Mordle Cogspinner", map = 114, x = 57.4, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11645, title = "Dirty, Stinkin' Snobolds!", npc = 25477, npcName = "Crafty Wobblesprocket", map = 114, x = 57.6, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11645, itemName = "Crafty's Stuff", count = 10, oi = 1, map = 114, x = 53.1, y = 13.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 54.0, y = 13.5, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 55.6,12.6",
				goals = {
					{ t = "accept", quest = 11673, title = "Get Me Outa Here!", npc = 25589, npcName = "Bonker Togglevolt", map = 114, x = 55.6, y = 12.6, f = "e" },
				},
			},
			{
				note = "Go outside the cave to 57,18.7",
				goals = {
					{ t = "turnin", quest = 11673, title = "Get Me Outa Here!", npc = 25590, npcName = "Fizzcrank Fullthrottle", map = 114, x = 57.0, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11645, title = "Dirty, Stinkin' Snobolds!", npc = 25477, npcName = "Crafty Wobblesprout", map = 114, x = 57.6, y = 18.7, f = "e" },
					{ t = "accept", quest = 11650, title = "Just a Few More Things...", npc = 25477, npcName = "Crafty Wobblesprout", map = 114, x = 57.6, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Fizzcrank Mechagnomes", count = 1, map = 114, x = 58.5, y = 17.6, f = "e" },
					{ t = "collect", quest = 11710, itemName = "Fizzcrank Spare Parts", count = 15, oi = 1, map = 114, x = 58.5, y = 17.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "mechanical mobs", count = 1, map = 114, x = 58.5, y = 17.6, f = "e" },
					{ t = "collect", itemName = "The Ultrasonic Screwdriver", count = 1, map = 114, x = 58.5, y = 17.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11729, title = "The Ultrasonic Screwdriver", npc = 25477, npcName = "Crafty Wobblesprout", map = 114, x = 57.6, y = 18.7, f = "e" },
					{ t = "accept", quest = 11730, title = "Master and Servant", npc = 25477, npcName = "Crafty Wobblesprout", map = 114, x = 57.6, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11710, title = "What's the Matter with the Transmatter?", npc = 25702, npcName = "Mordle Cogspinner", map = 114, x = 57.4, y = 18.7, f = "e" },
					{ t = "accept", quest = 11692, title = "Check in With Bixie", npc = 25702, npcName = "Mordle Cogspinner", map = 114, x = 57.4, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11712, title = "Re-Cursive", npc = 25747, npcName = "Jinky Wingnut", map = 114, x = 57.4, y = 18.7, f = "e" },
					{ t = "accept", quest = 11788, title = "Lefty Loosey, Righty Tighty", npc = 25747, npcName = "Jinky Wingnut", map = 114, x = 57.4, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11725, title = "Finding Pilot Tailspin", npc = 25590, npcName = "Fizzcrank Fullthrottle", map = 114, x = 57.0, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "robots in this area", count = 1, map = 114, x = 58.7, y = 18.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11788, target = "Twonky", count = 1, oi = 1, map = 114, x = 60.2, y = 20.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11788, target = "ED-210", count = 1, oi = 2, map = 114, x = 65.4, y = 17.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11788, target = "Max Blasto", count = 1, oi = 3, map = 114, x = 63.7, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11650, itemName = "Crafty's Tools", count = 1, oi = 1, map = 114, x = 64.4, y = 23.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11788, target = "The Grinder", count = 1, oi = 4, map = 114, x = 65.2, y = 28.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11725, title = "Finding Pilot Tailspin", npc = 25807, npcName = "Iggy \"Tailspin\" Cogtoggle", map = 114, x = 61.7, y = 35.8, f = "e" },
					{ t = "accept", quest = 11726, title = "A Little Bit of Spice", npc = 25807, npcName = "Iggy \"Tailspin\" Cogtoggle", map = 114, x = 61.7, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Gorlocs", count = 1, map = 114, x = 61.1, y = 44.6, f = "e" },
					{ t = "collect", quest = 11726, itemName = "Gorloc Spice Pouch", count = 4, oi = 1, map = 114, x = 61.1, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11726, title = "A Little Bit of Spice", npc = 25807, npcName = "Iggy \"Tailspin\" Cogtoggle", map = 114, x = 61.7, y = 35.8, f = "e" },
					{ t = "accept", quest = 11728, title = "Lupus Pupus", npc = 25807, npcName = "Iggy \"Tailspin\" Cogtoggle", map = 114, x = 61.7, y = 35.8, f = "e" },
				},
			},
			{
				note = "All around this area:",
				goals = {
					{ t = "collect", quest = 11728, itemName = "Microfilm", count = 8, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11728, title = "Lupus Pupus", npc = 25807, npcName = "Iggy \"Tailspin\" Cogtoggle", map = 114, x = 61.7, y = 35.8, f = "e" },
					{ t = "accept", quest = 11795, title = "Emergency Protocol: Section 8.2, Paragraph C", npc = 25807, npcName = "Iggy \"Tailspin\" Cogtoggle", map = 114, x = 61.7, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11795, itemName = "Fizzcrank Pilot's Insignia", count = 6, oi = 1, map = 114, x = 61.0, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11795, title = "Emergency Protocol: Section 8.2, Paragraph C", npc = 25807, npcName = "Iggy \"Tailspin\" Cogtoggle", map = 114, x = 61.7, y = 35.8, f = "e" },
					{ t = "accept", quest = 11796, title = "Emergency Protocol: Section 8.2, Paragraph D", npc = 25807, npcName = "Iggy \"Tailspin\" Cogtoggle", map = 114, x = 61.7, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 59.7, y = 39.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 63.3, y = 37.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 60.9, y = 33.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11796, title = "Emergency Protocol: Section 8.2, Paragraph D", npc = 25807, npcName = "Iggy \"Tailspin\" Cogtoggle", map = 114, x = 61.7, y = 35.8, f = "e" },
					{ t = "accept", quest = 11873, title = "Give Fizzcrank the News", npc = 25807, npcName = "Iggy \"Tailspin\" Cogtoggle", map = 114, x = 61.7, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11932, title = "Cowards and Fools", npc = 26169, npcName = "Ataika", map = 114, x = 63.8, y = 46.1, f = "e" },
					{ t = "accept", quest = 12086, title = "The Son of Karkut", npc = 26169, npcName = "Ataika", map = 114, x = 63.8, y = 46.1, f = "e" },
					{ t = "accept", quest = 11949, title = "Not Without a Fight!", npc = 26169, npcName = "Ataika", map = 114, x = 63.8, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11945, title = "Preparing for the Worst", npc = 26213, npcName = "Utaik", map = 114, x = 64.0, y = 45.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11949, target = "Kvaldir Raider", count = 12, oi = 1, map = 114, x = 65.3, y = 47.2, f = "e" },
					{ t = "collect", quest = 11945, itemName = "Kaskala Supplies", count = 8, oi = 1, map = 114, x = 65.3, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11949, title = "Not Without a Fight!", npc = 26169, npcName = "Ataika", map = 114, x = 63.8, y = 46.1, f = "e" },
					{ t = "accept", quest = 11950, title = "Muahit's Wisdom", npc = 26169, npcName = "Ataika", map = 114, x = 63.8, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11945, title = "Preparing for the Worst", npc = 26213, npcName = "Utaik", map = 114, x = 64.0, y = 45.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11950, title = "Muahit's Wisdom", npc = 26218, npcName = "Elder Muahit", map = 114, x = 67.2, y = 54.9, f = "e" },
					{ t = "accept", quest = 11961, title = "Spirits Watch Over Us", npc = 26218, npcName = "Elder Muahit", map = 114, x = 67.2, y = 54.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11961, itemName = "Issliruk's Totem", count = 1, oi = 1, map = 114, x = 67.7, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11961, title = "Spirits Watch Over Us", npc = 26218, npcName = "Elder Muahit", map = 114, x = 67.2, y = 54.9, f = "e" },
					{ t = "accept", quest = 11968, title = "The Tides Turn", npc = 26218, npcName = "Elder Muahit", map = 114, x = 67.2, y = 54.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11968, npc = 26266, target = "Heigarr the Horrible", count = 1, oi = 1, map = 114, x = 67.4, y = 56.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11968, title = "The Tides Turn", npc = 26218, npcName = "Elder Muahit", map = 114, x = 67.2, y = 54.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12117, title = "Travel to Moa'ki Harbor", npc = 28382, npcName = "Hotawa", map = 114, x = 67.2, y = 54.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12086, title = "The Son of Karkut", npc = 26187, npcName = "Corporal Venn", map = 114, x = 82.0, y = 46.4, f = "e" },
					{ t = "accept", quest = 11944, title = "Surrounded!", npc = 26187, npcName = "Corporal Venn", map = 114, x = 82.0, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12157, title = "The Lost Courier", npc = 26186, npcName = "Private Casey", map = 114, x = 82.0, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11650, itemName = "A Handful of Rocknar's Grit", count = 1, oi = 3, map = 114, x = 81.5, y = 42.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11944, target = "Ziggurat Defender", count = 7, oi = 1, map = 114, x = 82.2, y = 44.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11944, title = "Surrounded!", npc = 26187, npcName = "Corporal Venn", map = 114, x = 82.0, y = 46.4, f = "e" },
					{ t = "accept", quest = 12088, title = "Thassarian, the Death Knight", npc = 26187, npcName = "Corporal Venn", map = 114, x = 82.0, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12088, title = "Thassarian, the Death Knight", npc = 26170, npcName = "Thassarian", map = 114, x = 84.8, y = 41.7, f = "e" },
					{ t = "accept", quest = 11956, title = "Finding the Phylactery", npc = 26170, npcName = "Thassarian", map = 114, x = 84.8, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 82.4, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11956, itemName = "Tanathal's Phylactery", count = 1, oi = 1, map = 114, x = 85.4, y = 33.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11956, title = "Finding the Phylactery", npc = 26170, npcName = "Thassarian", map = 114, x = 84.8, y = 41.7, f = "e" },
					{ t = "accept", quest = 11938, title = "Buying Some Time", npc = 26170, npcName = "Thassarian", map = 114, x = 84.8, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "En'kilah mob", count = 20, map = 114, x = 84.4, y = 31.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11938, title = "Buying Some Time", npc = 26170, npcName = "Thassarian", map = 114, x = 84.8, y = 41.7, f = "e" },
					{ t = "accept", quest = 11942, title = "Words of Power", npc = 26170, npcName = "Thassarian", map = 114, x = 84.8, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11942, itemName = "High Priest Talet-Kha's Scroll", count = 1, oi = 3, map = 114, x = 89.4, y = 28.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11942, itemName = "High Priest Andorath's Scroll", count = 1, oi = 1, map = 114, x = 88.1, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11942, itemName = "High Priest Naferset's Scroll", count = 1, oi = 2, map = 114, x = 83.9, y = 20.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11942, title = "Words of Power", npc = 26170, npcName = "Thassarian", map = 114, x = 84.8, y = 41.7, f = "e" },
				},
			},
			{
				note = "Hearth to Fizzcrank Airstrip,1|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", map = 114, x = 57.1, y = 18.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11873, title = "Give Fizzcrank the News", npc = 25590, npcName = "Fizzcrank Fullthrottle", map = 114, x = 57.0, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11713, title = "Scouting the Sinkholes", npc = 25780, npcName = "Abner Fizzletorque", map = 114, x = 57.1, y = 20.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11788, title = "Lefty Loosey, Righty Tighty", npc = 25747, npcName = "Jinky Wingnut", map = 114, x = 57.4, y = 18.7, f = "e" },
					{ t = "accept", quest = 11798, title = "The Gearmaster", npc = 25747, npcName = "Jinky Wingnut", map = 114, x = 57.4, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11650, title = "Just a Few More Things...", npc = 25477, npcName = "Crafty Wobblesprocket", map = 114, x = 57.6, y = 18.7, f = "e" },
					{ t = "turnin", quest = 11730, title = "Master and Servant", npc = 25477, npcName = "Crafty Wobblesprocket", map = 114, x = 57.6, y = 18.7, f = "e" },
					{ t = "accept", quest = 11653, title = "Hah... You're Not So Big Now!", npc = 25477, npcName = "Crafty Wobblesprocket", map = 114, x = 57.6, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 54.2, y = 13.0, f = "e" },
				},
			},
			{
				note = "Go down into the cave to 54.2,11.2",
				goals = {
					{ t = "goto", map = 114, x = 54.2, y = 11.2, f = "e" },
				},
			},
			{
				note = "Go outside to 57.6,18.7",
				goals = {
					{ t = "turnin", quest = 11653, title = "Hah... You're Not So Big Now!", npc = 25477, npcName = "Crafty Wobblesprocket", map = 114, x = 57.6, y = 18.7, f = "e" },
					{ t = "accept", quest = 11658, title = "Plan B", npc = 25477, npcName = "Crafty Wobblesprocket", map = 114, x = 57.6, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11658, itemName = "Warsong Outfit", count = 10, oi = 1, map = 114, x = 47.9, y = 21.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11658, itemName = "Warsong Banner", count = 1, oi = 2, map = 114, x = 49.6, y = 26.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11704, title = "King Mrgl-Mrgl", npc = 25197, npcName = "King Mrgl-Mrgl", map = 114, x = 43.5, y = 14.0, f = "e" },
					{ t = "accept", quest = 11571, title = "Learning to Communicate", npc = 25197, npcName = "King Mrgl-Mrgl", map = 114, x = 43.5, y = 14.0, f = "e" },
				},
			},
			{
				note = "Go underwater to 42.5,15.9",
				goals = {
					{ t = "collect", quest = 11571, itemName = "The King's Filled Conch", count = 1, oi = 1, map = 114, x = 42.5, y = 15.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11571, title = "Learning to Communicate", npc = 25197, npcName = "King Mrgl-Mrgl", map = 114, x = 43.5, y = 14.0, f = "e" },
					{ t = "accept", quest = 11559, title = "Winterfin Commerce", npc = 25197, npcName = "King Mrgl-Mrgl", map = 114, x = 43.5, y = 14.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11559, itemName = "Winterfin Clam", count = 5, oi = 1, map = 114, x = 41.5, y = 13.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11559, title = "Winterfin Commerce", npc = 25206, npcName = "Ahlurglgr", map = 114, x = 43.0, y = 13.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11561, title = "Them!", npc = 25199, npcName = "Brglmurgl", map = 114, x = 42.8, y = 13.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11560, title = "Oh Noes, the Tadpoles!", npc = 25197, npcName = "King Mrgl-Mrgl", map = 114, x = 43.5, y = 14.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11561, target = "Winterfin murlocs", count = 15, oi = 1, map = 114, x = 40.6, y = 17.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11561, title = "Them!", npc = 25199, npcName = "Brglmurgl", map = 114, x = 42.8, y = 13.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11560, title = "Oh Noes, the Tadpoles!", npc = 25197, npcName = "King Mrgl-Mrgl", map = 114, x = 43.5, y = 14.0, f = "e" },
					{ t = "accept", quest = 11562, title = "I'm Being Blackmailed By My Cleaner", npc = 25197, npcName = "King Mrgl-Mrgl", map = 114, x = 43.5, y = 14.0, f = "e" },
				},
			},
		},
	})
end

