-- TuWoW_Leveling — Guides/Leveling_Horde_41.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-70-72-part-3",
		pack = "guides",
		title = "Northrend (70-72) (Parte 3/5)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-70-72-part-4",
		author = "TuWoW & Zygor",
		minLevel = 70,
		maxLevel = 72,
		zone = 1411,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", target = "Arcane Serpents", count = 1, map = 114, x = 27.8, y = 24.2, f = "e" },
					{ t = "collect", quest = 11914, itemName = "Nexus Mana Essence", count = 5, oi = 1, map = 114, x = 27.8, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11936, title = "Hatching a Plan", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
					{ t = "accept", quest = 11919, title = "Drake Hunt", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
					{ t = "turnin", quest = 11943, title = "The Cell", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11914, title = "Keep the Secret Safe", npc = 26110, npcName = "Librarian Serrah", map = 114, x = 33.5, y = 34.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 24.6, y = 27.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11919, title = "Drake Hunt", npc = 26117, npcName = "Raelsorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
					{ t = "accept", quest = 11931, title = "Cracking the Code", npc = 26117, npcName = "Raelsorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
				},
			},
			{
				note = "Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671",
				goals = {
					{ t = "use", item = 35671, itemName = "Augmented Arcane Prison", f = "e" },
					{ t = "accept", quest = 11946, title = "Keristrasza", npc = 26237, npcName = "Keristrasza", f = "e" },
					{ t = "turnin", quest = 11946, title = "Keristrasza", npc = 26237, npcName = "Keristrasza", f = "e" },
					{ t = "accept", quest = 11951, title = "Bait and Switch", npc = 26237, npcName = "Keristrasza", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Coldarra Spellbinders", count = 1, map = 114, x = 32.7, y = 29.0, f = "e" },
					{ t = "collect", quest = 11931, itemName = "Shimmering Rune", count = 3, oi = 1, map = 114, x = 32.7, y = 29.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11931, itemName = "Azure Codex", count = 1, oi = 2, map = 114, x = 32.7, y = 27.8, f = "e" },
				},
			},
			{
				note = "Wander all around and do the following:",
				goals = {
					{ t = "collect", quest = 11951, itemName = "Crystallized Mana Shard", count = 10, oi = 1, f = "e" },
				},
			},
			{
				note = "Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671",
				goals = {
					{ t = "use", item = 35671, itemName = "Augmented Arcane Prison", f = "e" },
					{ t = "turnin", quest = 11951, title = "Bait and Switch", npc = 26237, npcName = "Keristrasza", f = "e" },
					{ t = "accept", quest = 11957, title = "Saragosa's End", npc = 26237, npcName = "Keristrasza", f = "e" },
				},
			},
			{
				note = "Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671",
				goals = {
					{ t = "use", item = 35671, itemName = "Augmented Arcane Prison", f = "e" },
				},
			},
			{
				note = "She teleports you to a platform",
				goals = {
					{ t = "collect", quest = 11957, itemName = "Saragosa's Corpse", count = 1, oi = 1, f = "e" },
				},
			},
			{
				note = "Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671",
				goals = {
					{ t = "use", item = 35671, itemName = "Augmented Arcane Prison", f = "e" },
					{ t = "turnin", quest = 11957, title = "Saragosa's End", npc = 26206, npcName = "Keristrasza", f = "e" },
					{ t = "accept", quest = 11967, title = "Mustering the Reds", npc = 26206, npcName = "Keristrasza", f = "e" },
				},
			},
			{
				note = "Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671",
				goals = {
					{ t = "use", item = 35671, itemName = "Augmented Arcane Prison", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11931, title = "Cracking the Code", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
					{ t = "turnin", quest = 11967, title = "Mustering the Reds", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
					{ t = "accept", quest = 11969, title = "Springing the Trap", npc = 26117, npcName = "Raelorasz", map = 114, x = 33.3, y = 34.5, f = "e" },
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
				note = "Fly to Warsong Hold,0.5|c|noway",
				goals = {
					{ t = "goto", map = 114, x = 40.4, y = 51.5, f = "e" },
				},
			},
			{
				note = "Go downstairs to 41.7,54.7",
				goals = {
					{ t = "accept", quest = 11888, title = "Ride to Taunka'le Village", npc = 25978, npcName = "Ambassador Talonga", map = 114, x = 41.7, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12486, title = "To Bor'gorok Outpost, Quickly!", npc = 25272, npcName = "Sauranok the Mystic", map = 114, x = 41.6, y = 53.5, f = "e" },
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
					{ t = "kill", quest = 11968, target = "Heigarr the Horrible", count = 1, oi = 1, map = 114, x = 67.4, y = 56.8, f = "e" },
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
					{ t = "accept", quest = 11887, title = "Emergency Supplies", npc = 25984, npcName = "Crashed Recon Pilot", map = 114, x = 64.0, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11887, itemName = "Gnomish Emergency Toolkit", count = 7, oi = 1, map = 114, x = 62.9, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Taunka'le Village", text = "Taunka'le Village", map = 114, x = 77.8, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11887, title = "Emergency Supplies", npc = 25849, npcName = "Fezzix Geartwist", map = 114, x = 77.5, y = 37.0, f = "e" },
					{ t = "accept", quest = 11881, title = "Load 'er Up!", npc = 25849, npcName = "Fezzix Geartwist", map = 114, x = 77.5, y = 37.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11674, title = "Sage Highmesa is Missing", npc = 25602, npcName = "Greatmother Taiga", map = 114, x = 77.3, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Taunka'le Village", text = "Taunka'le Village", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11916, title = "Hellscream's Champion", npc = 24703, npcName = "Chieftain Wintergale", map = 114, x = 75.9, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11684, title = "Scouting the Sinkholes", npc = 24702, npcName = "Greatfather Mahan", map = 114, x = 77.1, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11888, title = "Ride to Taunka'le Village", npc = 25982, npcName = "Sage Earth and Sky", map = 114, x = 77.3, y = 38.5, f = "e" },
					{ t = "accept", quest = 11890, title = "What Are They Up To?", npc = 25982, npcName = "Sage Earth and Sky", map = 114, x = 77.3, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 70.6, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 69.9, y = 32.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 66.4, y = 32.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 63.5, y = 37.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11881, title = "Load 'er Up!", npc = 25849, npcName = "Fezzix Geartwist", map = 114, x = 77.5, y = 37.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11893, title = "The Power of the Elements", npc = 25983, npcName = "Dorain Frosthoof", map = 114, x = 77.6, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11684, title = "Scouting the Sinkholes", npc = 24702, npcName = "Greatfather Mahan", map = 114, x = 77.1, y = 37.8, f = "e" },
					{ t = "accept", quest = 11685, title = "The Heart of the Elements", npc = 24702, npcName = "Greatfather Mahan", map = 114, x = 77.1, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Steam Ragers near the Totem", count = 1, map = 114, x = 75.5, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11674, title = "Sage Highmesa is Missing", npc = 25604, npcName = "Sage Highmesa", map = 114, x = 74.7, y = 23.7, f = "e" },
					{ t = "accept", quest = 11675, title = "A Proper Death", npc = 25604, npcName = "Sage Highmesa", map = 114, x = 74.7, y = 23.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11675, target = "Plagued Magnataur", count = 10, oi = 1, map = 114, x = 75.2, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11675, title = "A Proper Death", npc = 25604, npcName = "Sage Highmesa", map = 114, x = 74.7, y = 23.7, f = "e" },
					{ t = "accept", quest = 11677, title = "Stop the Plague", npc = 25604, npcName = "Sage Highmesa", map = 114, x = 74.7, y = 23.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 74.7, y = 14.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11677, title = "Stop the Plague", npc = 25604, npcName = "Sage Highmesa", map = 114, x = 74.7, y = 23.7, f = "e" },
					{ t = "accept", quest = 11678, title = "Find Bristlehorn", npc = 25604, npcName = "Sage Highmesa", map = 114, x = 74.7, y = 23.7, f = "e" },
					{ t = "accept", quest = 11683, title = "Fallen Necropolis", npc = 25604, npcName = "Sage Highmesa", map = 114, x = 74.7, y = 23.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Undead mobs", count = 1, map = 114, x = 68.2, y = 17.0, f = "e" },
				},
			},
			{
				note = "Go inside the undead building and upstairs to 69.8,12.6",
				goals = {
					{ t = "turnin", quest = 11678, title = "Find Bristlehorn", npc = 25658, npcName = "Longrunner Bristlehorn", map = 114, x = 69.8, y = 12.6, f = "e" },
					{ t = "accept", quest = 11687, title = "The Doctor and the Lich-Lord", npc = 25658, npcName = "Longrunner Bristlehorn", map = 114, x = 69.8, y = 12.6, f = "e" },
				},
			},
			{
				note = "Go outside and follow the path to the top of the building to 69.7,13.1",
				goals = {
					{ t = "kill", quest = 11687, target = "Doctor Razorgrin", count = 1, oi = 1, map = 114, x = 69.7, y = 13.1, f = "e" },
				},
			},
			{
				note = "Go to the very top of the building to 69.7,13.9",
				goals = {
					{ t = "kill", quest = 11687, target = "Lich-Lord Chillwinter", count = 1, oi = 2, map = 114, x = 69.7, y = 13.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11687, title = "The Doctor and the Lich-Lord", npc = 25604, npcName = "Sage Highmesa", map = 114, x = 74.7, y = 23.7, f = "e" },
					{ t = "accept", quest = 11689, title = "Return with the Bad News", npc = 25604, npcName = "Sage Highmesa", map = 114, x = 74.7, y = 23.7, f = "e" },
					{ t = "turnin", quest = 11683, title = "Fallen Necropolis", npc = 25604, npcName = "Sage Highmesa", map = 114, x = 74.7, y = 23.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 66.2, y = 21.9, f = "e" },
				},
			},
			{
				note = "Hearth to Taunka'le Village,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 114, x = 76.3, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11689, title = "Return with the Bad News", npc = 25602, npcName = "Greatmother Taiga", map = 114, x = 77.3, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11893, title = "The Power of the Elements", npc = 25983, npcName = "Dorain Frosthoof", map = 114, x = 77.6, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11894, title = "Patching Up", npc = 25849, npcName = "Fezzix Geartwist", map = 114, x = 77.5, y = 37.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11890, title = "What Are They Up To?", npc = 25982, npcName = "Sage Earth and Sky", map = 114, x = 77.3, y = 38.5, f = "e" },
					{ t = "accept", quest = 11895, title = "Master the Storm", npc = 25982, npcName = "Sage Earth and Sky", map = 114, x = 77.3, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 77.1, y = 38.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11895, title = "Master the Storm", npc = 25982, npcName = "Sage Earth and Sky", map = 114, x = 77.3, y = 38.5, f = "e" },
					{ t = "accept", quest = 11896, title = "Weakness to Lightning", npc = 25982, npcName = "Sage Earth and Sky", map = 114, x = 77.3, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11906, title = "Cleaning Up the Pools", npc = 26104, npcName = "Iron Eyes", map = 114, x = 76.9, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11899, title = "Souls of the Decursed", npc = 25602, npcName = "Greatmother Taiga", map = 114, x = 77.3, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Marsh Caribous", count = 1, map = 114, x = 76.5, y = 40.7, f = "e" },
					{ t = "collect", quest = 11894, item = 35288, itemName = "Uncured Caribou Hide", count = 5, map = 114, x = 76.5, y = 40.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Frozen Elementals", count = 1, map = 114, x = 87.7, y = 42.5, f = "e" },
					{ t = "collect", quest = 11685, itemName = "Elemental Heart", count = 5, oi = 1, map = 114, x = 87.7, y = 42.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11685, title = "The Heart of the Elements", npc = 24730, npcName = "Wind Tamer Barah", map = 114, x = 75.6, y = 35.8, f = "e" },
					{ t = "accept", quest = 11695, title = "The Horn of Elemental Fury", npc = 24730, npcName = "Wind Tamer Barah", map = 114, x = 75.6, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11894, itemName = "Steam Cured Hide", count = 5, oi = 1, map = 114, x = 75.8, y = 32.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Gurbleboggle's Key", count = 1, map = 114, x = 78.7, y = 28.4, f = "e" },
					{ t = "collect", quest = 11695, itemName = "Lower Horn Half", count = 1, oi = 2, map = 114, x = 78.7, y = 28.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11894, title = "Patching Up", npc = 25849, npcName = "Fezzix Geartwist", map = 114, x = 77.5, y = 37.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11628, title = "Shrouds of the Scourge", npc = 24703, npcName = "Chieftain Wintergale", map = 114, x = 75.9, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Scourged Mammoths", count = 1, map = 114, x = 82.2, y = 30.4, f = "e" },
					{ t = "collect", quest = 11628, itemName = "Scourged Mammoth Pelt", count = 5, oi = 1, map = 114, x = 82.2, y = 30.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11628, title = "Shrouds of the Scourge", npc = 24703, npcName = "Chieftain Wintergale", map = 114, x = 75.9, y = 37.2, f = "e" },
					{ t = "accept", quest = 11630, title = "The Bad Earth", npc = 24703, npcName = "Chieftain Wintergale", map = 114, x = 75.9, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11630, itemName = "Scourged Earth", count = 8, oi = 1, map = 114, x = 76.1, y = 28.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11630, title = "The Bad Earth", npc = 24703, npcName = "Chieftain Wintergale", map = 114, x = 75.9, y = 37.2, f = "e" },
					{ t = "accept", quest = 11633, title = "Blending In", npc = 24703, npcName = "Chieftain Wintergale", map = 114, x = 75.9, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 84.1, y = 31.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 88.9, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 88.11, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 83.91, y = 20.5, f = "e" },
				},
			},
		},
	})
end

