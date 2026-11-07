-- TuWoW_Leveling — Guides/Leveling_Alliance_54.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-76-78-part-4",
		pack = "guides",
		title = "Northrend (76-78) (Parte 4/4)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 76,
		maxLevel = 78,
		zone = 116,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 13099, title = "Just Checkin'", npc = 30676, npcName = "Chronicler Bah'Kini", map = 121, x = 70.1, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12712, title = "The Key of Warlord Zol'Maz", npc = 28401, npcName = "Har'koa", map = 121, x = 60.3, y = 57.8, f = "e" },
					{ t = "accept", quest = 12721, title = "Rampage", npc = 28401, npcName = "Har'koa", map = 121, x = 60.3, y = 57.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12709, title = "Hexed Caches", npc = 28527, npcName = "Chronicler To'kini", map = 121, x = 60.0, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12708, title = "Enchanted Tiki Warriors", npc = 28480, npcName = "Element-Tamer Dagoda", map = 121, x = 59.4, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12707, title = "Wooly Justice", npc = 28484, npcName = "Scalper Ahunae", map = 121, x = 59.2, y = 56.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 78.1, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30569, npcName = "Rafae", map = 121, x = 70.5, y = 23.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12721, title = "Rampage", npc = 28479, npcName = "Witch Doctor Khufu", map = 121, x = 59.5, y = 58.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12524, title = "Venture Co. Misadventure", npc = 28032, npcName = "Debaar", map = 119, x = 27.1, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Nesingwary Base Camp", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12624, title = "It Could Be Anywhere!", npc = 28497, npcName = "Chad", map = 119, x = 26.9, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12522, title = "Need an Engine, Take an Engine", npc = 28033, npcName = "Weslex Quickwrench", map = 119, x = 25.3, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12522, itemName = "Flying Machine Engine", count = 1, oi = 1, map = 119, x = 38.7, y = 56.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12521, title = "Where in the World is Hemet Nesingwary?", npc = 27987, npcName = "Monte Muzzleshot", map = 119, x = 39.7, y = 58.7, f = "e" },
					{ t = "accept", quest = 12489, title = "Welcome to Sholazar Basin", npc = 27987, npcName = "Monte Muzzleshot", map = 119, x = 39.7, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12688, title = "Engineering a Disaster", npc = 28787, npcName = "Engineering Helice", map = 119, x = 35.5, y = 47.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Venture Company mobs", count = 1, map = 119, x = 37.4, y = 46.1, f = "e" },
					{ t = "collect", quest = 12624, itemName = "Golden Engagement Ring", count = 1, oi = 1, map = 119, x = 37.4, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12524, title = "Venture Co. Misadventure", npc = 28032, npcName = "Debaar", map = 119, x = 27.2, y = 59.9, f = "e" },
					{ t = "accept", quest = 12525, title = "Wipe That Grin Off His Face", npc = 28032, npcName = "Debaar", map = 119, x = 27.2, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12624, title = "It Could Be Anywhere!", npc = 28497, npcName = "Chad", map = 119, x = 26.9, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12489, title = "Welcome to Sholazar Basin", npc = 27986, npcName = "Hemet Nesingwary", map = 119, x = 27.1, y = 58.6, f = "e" },
					{ t = "turnin", quest = 12688, title = "Engineering a Disaster", npc = 27986, npcName = "Hemet Nesingwary", map = 119, x = 27.1, y = 58.6, f = "e" },
				},
			},
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
					{ t = "fpath", text = "Nesingwary Base Camp", map = 119, x = 25.3, y = 58.5, f = "e" },
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
					{ t = "level", level = 78, f = "e" },
				},
			},
		},
	})
end

