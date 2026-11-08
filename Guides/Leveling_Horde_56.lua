-- TuWoW_Leveling — Guides/Leveling_Horde_56.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-78-80",
		pack = "guides",
		title = "Northrend (78-80) (Parte 1/4)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-78-80-part-2",
		author = "TuWoW & Zygor",
		minLevel = 78,
		maxLevel = 80,
		zone = 119,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 12522, title = "Need an Engine, Take an Engine", npc = 28033, npcName = "Weslex Quickwrench", map = 119, x = 25.4, y = 58.5, f = "e" },
					{ t = "accept", quest = 12523, title = "Have a Part, Give a Part", npc = 28033, npcName = "Weslex Quickwrench", map = 119, x = 25.4, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12523, itemName = "Venture Co. Spare Parts", count = 7, oi = 1, map = 119, x = 32.7, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12525, target = "Meatpie", count = 1, oi = 2, map = 119, x = 35.8, y = 50.3, f = "e" },
					{ t = "kill", quest = 12525, target = "Foreman Swindlegrin", count = 1, oi = 1, map = 119, x = 35.8, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12525, title = "Wipe That Grin Off His Face", npc = 28032, npcName = "Debaar", map = 119, x = 27.2, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12523, title = "Have a Part, Give a Part", npc = 28033, npcName = "Weslex Quickwrench", map = 119, x = 25.4, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12696, title = "Aerial Surveillance", npc = 28266, npcName = "Professor Calvert", map = 119, x = 25.4, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Nesingwary Base Camp", text = "Nesingwary Base Camp", map = 119, x = 25.3, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12549, title = "Dreadsaber Mastery: Becoming a Predator", npc = 28031, npcName = "Buck Cantwell", map = 119, x = 26.7, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12520, title = "Rhino Mastery: The Test", npc = 27986, npcName = "Hemet Nesingwary", map = 119, x = 27.1, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12589, title = "Kick, What Kick?", npc = 28328, npcName = "Drostan", map = 119, x = 27.1, y = 59.9, f = "e" },
				},
			},
			{
				note = "Use your RJR Rifle on the gnome close to you with an apple on his head|use RJR Rifle##38573",
				goals = {
					{ t = "use", item = 38573, itemName = "RJR Rifle", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12589, title = "Kick, What Kick?", npc = 28328, npcName = "Drostan", map = 119, x = 27.1, y = 59.9, f = "e" },
					{ t = "accept", quest = 12592, title = "The Great Hunter's Challenge", npc = 28328, npcName = "Drostan", map = 119, x = 27.1, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12549, target = "Dreadsaber", count = 15, oi = 1, map = 119, x = 28.0, y = 56.0, f = "e" },
					{ t = "kill", quest = 12520, target = "Shardhorn Rhino", count = 15, oi = 1, map = 119, x = 28.0, y = 56.0, f = "e" },
					{ t = "kill", target = "Dreadsabers and Shardhorn Rhinos", count = 1, map = 119, x = 28.0, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12549, title = "Dreadsaber Mastery: Becoming a Predator", npc = 28031, npcName = "Buck Cantwell", map = 119, x = 26.7, y = 59.0, f = "e" },
					{ t = "accept", quest = 12550, title = "Dreadsaber Mastery: Stalking the Prey", npc = 28031, npcName = "Buck Cantwell", map = 119, x = 26.7, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12520, title = "Rhino Mastery: The Test", npc = 27986, npcName = "Hemet Nesingwary", map = 119, x = 27.1, y = 58.6, f = "e" },
					{ t = "accept", quest = 12526, title = "Rhino Mastery: The Chase", npc = 27986, npcName = "Hemet Nesingwary", map = 119, x = 27.1, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12804, title = "A Steak Fit for a Hunter", npc = 28046, npcName = "Korg the Cleaver", map = 119, x = 26.7, y = 59.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12634, title = "Some Make Lemonade, Some Make Liquor", npc = 29157, npcName = "Grimbooze Thunderbrew", map = 119, x = 26.8, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12592, title = "The Great Hunter's Challenge", npc = 28328, npcName = "Drostan", map = 119, x = 27.1, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12551, title = "Crocolisk Mastery: The Trial", npc = 28032, npcName = "Debaar", map = 119, x = 27.2, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12526, title = "Rhino Mastery: The Chase", npc = 28191, npcName = "Oracle Soo-rahm", map = 119, x = 25.6, y = 66.5, f = "e" },
					{ t = "accept", quest = 12543, title = "An Offering for Soo-rahm", npc = 28191, npcName = "Oracle Soo-rahm", map = 119, x = 25.6, y = 66.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Longneck Grazers", count = 1, map = 119, x = 29.5, y = 66.4, f = "e" },
					{ t = "collect", quest = 12804, itemName = "Longneck Grazer Steak", count = 5, oi = 1, map = 119, x = 29.5, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12551, target = "Mangal Crocolisk", count = 15, oi = 1, map = 119, x = 29.0, y = 62.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Emperor Cobras", count = 1, map = 119, x = 36.3, y = 65.8, f = "e" },
					{ t = "collect", quest = 12543, itemName = "Intact Cobra Fang", count = 5, oi = 1, map = 119, x = 36.3, y = 65.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12634, itemName = "Orange", count = 1, oi = 1, map = 119, x = 37.6, y = 61.8, f = "e" },
					{ t = "collect", quest = 12634, itemName = "Banana Bunch", count = 2, oi = 2, map = 119, x = 37.6, y = 61.8, f = "e" },
					{ t = "collect", quest = 12634, itemName = "Papaya", count = 1, oi = 3, map = 119, x = 37.6, y = 61.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12696, title = "Aerial Surveillance", npc = 28746, npcName = "Pilot Vic", map = 119, x = 50.0, y = 61.5, f = "e" },
					{ t = "accept", quest = 12699, title = "An Embarassing Incident", npc = 28746, npcName = "Pilot Vic", map = 119, x = 50.0, y = 61.5, f = "e" },
					{ t = "accept", quest = 12803, title = "Force of Nature", npc = 28746, npcName = "Pilot Vic", map = 119, x = 50.0, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12654, title = "The Part-time Hunter", npc = 28568, npcName = "Tamara Wobblesprocket", map = 119, x = 50.5, y = 62.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12699, itemName = "Vic's Keys", count = 1, oi = 1, map = 119, x = 48.6, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12699, title = "An Embarassing Incident", npc = 28746, npcName = "Pilot Vic", map = 119, x = 50.0, y = 61.5, f = "e" },
					{ t = "accept", quest = 12671, title = "Reconnaissance Flight", npc = 28746, npcName = "Pilot Vic", map = 119, x = 50.0, y = 61.5, f = "e" },
				},
			},
			{
				note = "You go flying in a plane",
				goals = {
					{ t = "goto", map = 119, x = 50.0, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12671, title = "Reconnaissance Flight", npc = 28746, npcName = "Pilot Vic", map = 119, x = 50.0, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 39.9, y = 43.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12550, title = "Dreadsaber Mastery: Stalking the Prey", npc = 28031, npcName = "Buck Cantwell", map = 119, x = 26.7, y = 59.0, f = "e" },
					{ t = "accept", quest = 12558, title = "Dreadsaber Mastery: Ready to Pounce", npc = 28031, npcName = "Buck Cantwell", map = 119, x = 26.7, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12804, title = "A Steak Fit for a Hunter", npc = 28046, npcName = "Korg the Cleaver", map = 119, x = 26.7, y = 59.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12634, title = "Some Make Lemonade, Some Make Liquor", npc = 29157, npcName = "Grimbooze Thunderbrew", map = 119, x = 26.8, y = 60.1, f = "e" },
					{ t = "accept", quest = 12644, title = "Still At It", npc = 29157, npcName = "Grimbooze Thunderbrew", map = 119, x = 26.8, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12644, itemName = "Thunderbrew's Jungle Punch", count = 1, oi = 1, map = 119, x = 26.7, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12644, title = "Still At It", npc = 29157, npcName = "Grimbooze Thunderbrew", map = 119, x = 26.8, y = 60.1, f = "e" },
					{ t = "accept", quest = 12645, title = "The Taste Test", npc = 29157, npcName = "Grimbooze Thunderbrew", map = 119, x = 26.8, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12551, title = "Crocolisk Mastery: The Trial", npc = 28032, npcName = "Debaar", map = 119, x = 27.2, y = 59.9, f = "e" },
					{ t = "accept", quest = 12560, title = "Crocolisk Mastery: The Plan", npc = 28032, npcName = "Debaar", map = 119, x = 27.2, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 27.4, y = 59.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 27.1, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12543, title = "An Offering for Soo-rahm", npc = 28191, npcName = "Oracle Soo-rahm", map = 119, x = 25.6, y = 66.5, f = "e" },
					{ t = "accept", quest = 12544, title = "The Bones of Nozronn", npc = 28191, npcName = "Oracle Soo-rahm", map = 119, x = 25.6, y = 66.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 26.1, y = 71.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12544, title = "The Bones of Nozronn", npc = 27986, npcName = "Hemet Nesingwary", map = 119, x = 27.1, y = 58.6, f = "e" },
					{ t = "accept", quest = 12556, title = "Rhino Mastery: The Kill", npc = 27986, npcName = "Hemet Nesingwary", map = 119, x = 27.1, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12558, itemName = "Shango's Pelt", count = 1, oi = 1, map = 119, x = 33.4, y = 34.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12560, itemName = "Sandfern", count = 5, oi = 1, map = 119, x = 34.7, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12556, itemName = "Farunn's Horn", count = 1, oi = 1, map = 119, x = 47.4, y = 43.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 50.5, y = 62.1, f = "e" },
				},
			},
			{
				note = "Fly to Nesingwary Base Camp,0.5|noway|c",
				goals = {
					{ t = "goto", map = 119, x = 25.4, y = 58.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12556, title = "Rhino Mastery: The Kill", npc = 27986, npcName = "Hemet Nesingwary", map = 119, x = 27.1, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12558, title = "Dreadsaber Mastery: Ready to Pounce", npc = 28031, npcName = "Buck Cantwell", map = 119, x = 26.7, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12645, title = "The Taste Test", npc = 29157, npcName = "Grimbooze Thunderbrew", map = 119, x = 26.8, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12560, title = "Crocolisk Mastery: The Plan", npc = 28032, npcName = "Debaar", map = 119, x = 27.2, y = 59.9, f = "e" },
					{ t = "accept", quest = 12569, title = "Crocolisk Mastery: The Ambush", npc = 28032, npcName = "Debaar", map = 119, x = 27.2, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Bushwhacker that spawns", count = 1, map = 119, x = 46.3, y = 63.4, f = "e" },
					{ t = "collect", quest = 12569, itemName = "Bushwhacker's Jaw", count = 1, oi = 1, map = 119, x = 46.3, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12654, itemName = "Pitch's Remains", count = 1, oi = 1, map = 119, x = 50.5, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12528, title = "Playing Along", npc = 28095, npcName = "Tracker Gekgek", map = 119, x = 50.5, y = 76.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12528, title = "Playing Along", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "accept", quest = 12529, title = "The Ape Hunter's Slave", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				note = "Talk to Goregek the Gorilla Hunter who is following you",
				goals = {
					{ t = "accept", quest = 12530, title = "Tormenting the Softknuckles", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12529, target = "Hardknuckle Forager", count = 8, oi = 1, map = 119, x = 57.5, y = 73.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12529, target = "Hardknuckle Charger", count = 6, oi = 2, map = 119, x = 61.1, y = 71.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12530, target = "Hardknuckle Matriarch", count = 1, oi = 1, map = 119, x = 66.9, y = 73.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12529, title = "The Ape Hunter's Slave", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "turnin", quest = 12530, title = "Tormenting the Softknuckles", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "accept", quest = 12533, title = "The Wasp Hunter's Apprentice", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12534, title = "The Sapphire Queen", npc = 28138, npcName = "Elder Harkek", map = 119, x = 55.5, y = 69.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12533, target = "Sapphire Hive Wasp", count = 6, oi = 1, map = 119, x = 59.6, y = 75.8, f = "e" },
					{ t = "kill", quest = 12533, target = "Sapphire Hive Drone", count = 9, oi = 2, map = 119, x = 59.6, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 59.4, y = 79.1, f = "e" },
				},
			},
			{
				note = "Follow the path down to 57.1,79.3",
				goals = {
					{ t = "collect", quest = 12534, itemName = "Stinger of the Sapphire Queen", count = 1, oi = 1, map = 119, x = 57.1, y = 79.3, f = "e" },
				},
			},
			{
				note = "Go outside to 55.0,69.1",
				goals = {
					{ t = "turnin", quest = 12533, title = "The Wasp Hunter's Apprentice", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "turnin", quest = 12534, title = "The Sapphire Queen", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12532, title = "Flown the Coop!", npc = 28138, npcName = "Elder Harkek", map = 119, x = 55.5, y = 69.7, f = "e" },
				},
			},
			{
				note = "They are all around the village",
				goals = {
					{ t = "collect", quest = 12532, itemName = "Captured Chicken", count = 12, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12532, title = "Flown the Coop!", npc = 28138, npcName = "Elder Harkek", map = 119, x = 55.5, y = 69.7, f = "e" },
					{ t = "accept", quest = 12531, title = "The Underground Menace", npc = 28138, npcName = "Elder Harkek", map = 119, x = 55.5, y = 69.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12535, title = "Mischief in the Making", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12535, itemName = "Skyreach Crystal Cluster", count = 8, oi = 1, map = 119, x = 56.6, y = 84.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12531, itemName = "Claw of Serfex", count = 1, oi = 1, map = 119, x = 49.8, y = 85.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12531, title = "The Underground Menace", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "turnin", quest = 12535, title = "Mischief in the Making", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "accept", quest = 12536, title = "A Rough Ride", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 28298, npcName = "Captive Crocolisk", map = 119, x = 57.3, y = 68.4, f = "e" },
				},
			},
			{
				note = "When you jump off the crocodile:",
				goals = {
					{ t = "turnin", quest = 12536, title = "A Rough Ride", npc = 28668, npcName = "Zepik the Gorloc Hunter", f = "e" },
					{ t = "accept", quest = 12537, title = "Lightning Definitely Strikes Twice", npc = 28668, npcName = "Zepik the Gorloc Hunter", f = "e" },
					{ t = "accept", quest = 12538, title = "The Mist Isn't Listening", npc = 28668, npcName = "Zepik the Gorloc Hunter", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 45.4, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 45.5, y = 39.8, f = "e" },
				},
			},
			{
				note = "Use Zepik's Hunting Horn if Zepik is not standing next to you:|use Zepik's Hunting Horn##38512",
				goals = {
					{ t = "use", item = 38512, itemName = "Zepik's Hunting Horn", f = "e" },
					{ t = "turnin", quest = 12537, title = "Lightning Definitely Strikes Twice", npc = 28216, npcName = "Zepik the Gorloc Hunter", f = "e" },
					{ t = "turnin", quest = 12538, title = "The Mist Isn't Listening", npc = 28216, npcName = "Zepik the Gorloc Hunter", f = "e" },
					{ t = "accept", quest = 12539, title = "Hoofing It", npc = 28216, npcName = "Zepik the Gorloc Hunter", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12539, title = "Hoofing It", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "accept", quest = 12540, title = "Just Following Orders", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "the crocodile that spawns", count = 1, map = 119, x = 55.7, y = 64.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12540, title = "Just Following Orders", npc = 28217, npcName = "Injured Rainspeaker Oracle", map = 119, x = 55.7, y = 64.9, f = "e" },
					{ t = "accept", quest = 12570, title = "Fortunate Misunderstandings", npc = 28217, npcName = "Injured Rainspeaker Oracle", map = 119, x = 55.7, y = 64.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12570, title = "Fortunate Misunderstandings", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
					{ t = "accept", quest = 12571, title = "Make the Bad Snake Go Away", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
				},
			},
			{
				note = "Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622",
				goals = {
					{ t = "use", item = 38622, itemName = "Lafoo's Bug Bag", f = "e" },
					{ t = "accept", quest = 12572, title = "Gods like Shiny Things", npc = 28120, npcName = "Lafoo", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12571, target = "Venomtip", count = 1, oi = 2, map = 119, x = 57.5, y = 52.4, f = "e" },
				},
			},
			{
				note = "Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622",
				goals = {
					{ t = "use", item = 38622, itemName = "Lafoo's Bug Bag", map = 119, x = 52.4, y = 53.2, f = "e" },
					{ t = "collect", quest = 12572, itemName = "Shiny Treasures", count = 6, oi = 1, map = 119, x = 52.4, y = 53.2, f = "e" },
					{ t = "kill", quest = 12571, target = "Emperor Cobra", count = 10, oi = 1, map = 119, x = 52.4, y = 53.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12571, title = "Make the Bad Snake Go Away", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
					{ t = "accept", quest = 12573, title = "Making Peace", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
					{ t = "turnin", quest = 12572, title = "Gods like Shiny Things", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
				},
			},
		},
	})
end

