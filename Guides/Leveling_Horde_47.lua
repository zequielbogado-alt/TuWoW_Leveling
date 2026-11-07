-- TuWoW_Leveling — Guides/Leveling_Horde_47.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-72-74-part-4",
		pack = "guides",
		title = "Northrend (72-74) (Parte 4/4)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 72,
		maxLevel = 74,
		zone = 117,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 12188, title = "The Forsaken Blight and You: How Not to Die", npc = 27172, npcName = "Chief Plaguebringer Middleton", map = 115, x = 77.7, y = 62.8, f = "e" },
					{ t = "accept", quest = 12200, title = "Emerald Dragon Tears", npc = 27172, npcName = "Chief Plaguebringer Middleton", map = 115, x = 77.7, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12205, target = "Members of the Scarlet Onslaught", count = 20, oi = 1, map = 115, x = 73.7, y = 66.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12209, itemName = "Scarlet Onslaught Weapon", count = 8, oi = 2, map = 115, x = 72.6, y = 69.7, f = "e" },
					{ t = "collect", quest = 12209, itemName = "Scarlet Onslaught Armor", count = 8, oi = 1, map = 115, x = 72.6, y = 69.7, f = "e" },
				},
			},
			{
				note = "Go souhwest to 63.3,70.3",
				goals = {
					{ t = "collect", quest = 12200, itemName = "Emerald Dragon Tear", count = 8, oi = 1, map = 115, x = 63.3, y = 70.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12454, title = "Cycle of Life", npc = 27255, npcName = "Nishera the Garden Keeper", map = 115, x = 63.7, y = 71.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12454, target = "Emerald Skytalon", count = 5, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12454, title = "Cycle of Life", npc = 27255, npcName = "Nishera the Garden Keeper", map = 115, x = 63.7, y = 71.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12209, title = "Materiel Plunder", npc = 27267, npcName = "Quartermaster Bartlett", map = 115, x = 76.0, y = 63.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12214, title = "Fresh Remounts", npc = 27028, npcName = "Hansel Bauer", map = 115, x = 75.9, y = 61.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12211, title = "Let Them Not Rise!", npc = 27248, npcName = "Apothecary Vicky Levine", map = 115, x = 77.0, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12205, title = "Wanted: The Scarlet Onslaught", npc = 27243, npcName = "High Executor Wroth", map = 115, x = 76.8, y = 63.3, f = "e" },
				},
			},
			{
				note = "Go upstairs to 76.7,63",
				goals = {
					{ t = "accept", quest = 12245, title = "No Mercy for the Captured", npc = 27337, npcName = "Spy Mistress Repine", map = 115, x = 76.7, y = 63.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12200, title = "Emerald Dragon Tears", npc = 27172, npcName = "Chief Plaguebringer Middleton", map = 115, x = 77.7, y = 62.8, f = "e" },
					{ t = "accept", quest = 12218, title = "Spread the Good Word", npc = 27172, npcName = "Chief Plaguebringer Middleton", map = 115, x = 77.7, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12230, title = "Stealing from the Siegesmiths", npc = 27320, npcName = "Deathguard Molder", map = 115, x = 77.5, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "an Onslaught Knight (be sure not to kill the horse)", count = 1, map = 115, x = 74.5, y = 65.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12214, title = "Fresh Remounts", npc = 27028, npcName = "Hansel Bauer", map = 115, x = 75.9, y = 61.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12245, target = "Deathguard Schneider", count = 1, oi = 1, map = 115, x = 71.4, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12245, target = "Chancellor Amai", count = 1, oi = 4, map = 115, x = 72.7, y = 72.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12245, target = "Engineer Burke", count = 1, oi = 3, map = 115, x = 72.8, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12245, target = "Senior Scrivener Barriga", count = 1, oi = 2, map = 115, x = 69.4, y = 73.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12245, title = "No Mercy for the Captured", npc = 27243, npcName = "High Executor Wroth", map = 115, x = 76.8, y = 63.3, f = "e" },
					{ t = "accept", quest = 12252, title = "Torture the Torturer", npc = 27243, npcName = "High Executor Wroth", map = 115, x = 76.8, y = 63.3, f = "e" },
				},
			},
			{
				note = "Go southwest into the basement of this building to 69.8,72",
				goals = {
					{ t = "kill", quest = 12252, target = "Torturer LeCraft", count = 1, oi = 2, map = 115, x = 69.8, y = 72.0, f = "e" },
					{ t = "collect", itemName = "Torturer's Rod", count = 1, map = 115, x = 69.8, y = 72.0, f = "e" },
					{ t = "accept", quest = 12271, title = "The Rod of Compulsion", map = 115, x = 69.8, y = 72.0, f = "e" },
				},
			},
			{
				note = "Go northeast out of the fort to 76.8,63.3",
				goals = {
					{ t = "turnin", quest = 12252, title = "Torture the Torturer", npc = 27243, npcName = "High Executor Wroth", map = 115, x = 76.8, y = 63.3, f = "e" },
					{ t = "turnin", quest = 12271, title = "The Rod of Compulsion", npc = 27243, npcName = "High Executor Wroth", map = 115, x = 76.8, y = 63.3, f = "e" },
					{ t = "accept", quest = 12273, title = "The Denouncement", npc = 27243, npcName = "High Executor Wroth", map = 115, x = 76.8, y = 63.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Blacksmith Goodman", count = 1, map = 115, x = 70.8, y = 70.5, f = "e" },
				},
			},
			{
				note = "Go inside the fort and upstairs to 69.7,71.8",
				goals = {
					{ t = "kill", target = "Commander Jordan", count = 1, map = 115, x = 69.7, y = 71.8, f = "e" },
				},
			},
			{
				note = "Go outside of the fort to 67.9,75.9",
				goals = {
					{ t = "kill", target = "Stable Master Mercer", count = 1, map = 115, x = 67.9, y = 75.9, f = "e" },
				},
			},
			{
				note = "Go southeast down the big hill to 72.9,78.1",
				goals = {
					{ t = "kill", target = "Lead Cannoneer Zierhut", count = 1, map = 115, x = 72.9, y = 78.1, f = "e" },
				},
			},
			{
				note = "Hearth to Venomspite,0.3|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 115, x = 76.9, y = 63.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12273, title = "The Denouncement", npc = 27243, npcName = "High Executor Wroth", map = 115, x = 76.8, y = 63.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 77.8, y = 61.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12218, target = "Hungering Dead", count = 30, oi = 1, map = 115, x = 85.9, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12230, itemName = "Siegesmith Bomb", count = 6, oi = 1, map = 115, x = 85.0, y = 51.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12230, title = "Stealing from the Siegesmiths", npc = 27320, npcName = "Deathguard Molder", map = 115, x = 77.5, y = 62.0, f = "e" },
					{ t = "accept", quest = 12232, title = "Bombard the Ballistae", npc = 27320, npcName = "Deathguard Molder", map = 115, x = 77.5, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12218, title = "Spread the Good Word", npc = 27172, npcName = "Chief Plaguebringer Middleton", map = 115, x = 77.7, y = 62.8, f = "e" },
					{ t = "accept", quest = 12221, title = "The Forsaken Blight", npc = 27172, npcName = "Chief Plaguebringer Middleton", map = 115, x = 77.7, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12240, title = "A Means to an End", npc = 27248, npcName = "Apothecary Vicky Levine", map = 115, x = 77.0, y = 62.9, f = "e" },
				},
			},
			{
				note = "Go into the building to 76.7,63",
				goals = {
					{ t = "accept", quest = 12234, title = "Need to Know", npc = 27337, npcName = "Spy Mistress Repine", map = 115, x = 76.7, y = 63.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 73.3, y = 67.6, f = "e" },
				},
			},
			{
				note = "Go into the fort to 69.7,71.9",
				goals = {
					{ t = "collect", quest = 12234, itemName = "Scarlet Onslaught Daily Orders: Barracks", count = 1, oi = 2, map = 115, x = 69.7, y = 71.9, f = "e" },
				},
			},
			{
				note = "Go across the courtyard into the cathedral to 73.4,72.6",
				goals = {
					{ t = "collect", quest = 12234, itemName = "Scarlet Onslaught Daily Orders: Abbey", count = 1, oi = 1, map = 115, x = 73.4, y = 72.6, f = "e" },
				},
			},
			{
				note = "Go down the hill to the beach to 71.6,80.4",
				goals = {
					{ t = "collect", quest = 12234, itemName = "Scarlet Onslaught Daily Orders: Beach", count = 1, oi = 3, map = 115, x = 71.6, y = 80.4, f = "e" },
				},
			},
			{
				note = "Go back up the hill and into the lumber mill to 68.3,74.2",
				goals = {
					{ t = "kill", quest = 12240, target = "Foreman Kaleiki", count = 1, oi = 1, map = 115, x = 68.3, y = 74.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12240, title = "A Means to an End", npc = 27248, npcName = "Apothecary Vicky Levine", map = 115, x = 77.0, y = 62.9, f = "e" },
					{ t = "accept", quest = 12243, title = "Fire Upon the Waters", npc = 27248, npcName = "Apothecary Vicky Levine", map = 115, x = 77.0, y = 62.9, f = "e" },
				},
			},
			{
				note = "Go inside the building to 76.7,63",
				goals = {
					{ t = "turnin", quest = 12234, title = "Need to Know", npc = 27337, npcName = "Spy Mistress Repine", map = 115, x = 76.7, y = 63.0, f = "e" },
					{ t = "accept", quest = 12239, title = "The Spy in New Hearthglen", npc = 27337, npcName = "Spy Mistress Repine", map = 115, x = 76.7, y = 63.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12232, title = "Bombard the Ballistae", npc = 27320, npcName = "Deathguard Molder", map = 115, x = 77.5, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12239, title = "The Spy in New Hearthglen", npc = 27350, npcName = "Agent Skully", map = 115, x = 73.6, y = 73.5, f = "e" },
					{ t = "accept", quest = 12254, title = "Without a Prayer", npc = 27350, npcName = "Agent Skully", map = 115, x = 73.6, y = 73.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12254, itemName = "Bishop Street's Prayer Book", count = 1, oi = 1, map = 115, x = 69.2, y = 76.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12254, title = "Without a Prayer", npc = 27350, npcName = "Agent Skully", map = 115, x = 73.6, y = 73.5, f = "e" },
					{ t = "accept", quest = 12260, title = "The Perfect Dissemblance", npc = 27350, npcName = "Agent Skully", map = 115, x = 73.6, y = 73.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12260, title = "The Perfect Dissemblance", npc = 27350, npcName = "Agent Skully", map = 115, x = 73.6, y = 73.5, f = "e" },
					{ t = "accept", quest = 12274, title = "A Fall From Grace", npc = 27350, npcName = "Agent Skully", map = 115, x = 73.6, y = 73.5, f = "e" },
				},
			},
			{
				note = "Go to the top floor of the cathedral behind you to 72.9,73.5",
				goals = {
					{ t = "goto", map = 115, x = 72.9, y = 73.5, f = "e" },
				},
			},
			{
				note = "Go downstairs to 73.5,74.3",
				goals = {
					{ t = "talk", npc = 27245, npcName = "High Abbot Landgren", map = 115, x = 73.5, y = 74.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12274, title = "A Fall From Grace", npc = 27350, npcName = "Agent Skully", map = 115, x = 73.6, y = 73.5, f = "e" },
					{ t = "accept", quest = 12283, title = "The Truth Will Out", npc = 27350, npcName = "Agent Skully", map = 115, x = 73.6, y = 73.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12283, itemName = "The Diary of High General Abbendis", count = 1, oi = 1, map = 115, x = 68.3, y = 77.0, f = "e" },
				},
			},
			{
				note = "Go down the hill to the beach to 71.5,82.6",
				goals = {
					{ t = "goto", map = 115, x = 71.5, y = 82.6, f = "e" },
				},
			},
			{
				note = "When the crew is distracted, go downstairs into the ship to 71.9,84",
				goals = {
					{ t = "collect", quest = 12243, itemName = "Captain Shely's Rutters", count = 1, oi = 2, map = 115, x = 71.9, y = 84.0, f = "e" },
				},
			},
			{
				note = "Hearth to Venomspite,0.3|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 115, x = 76.9, y = 63.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12283, title = "The Truth Will Out", npc = 27243, npcName = "High Executor Wroth", map = 115, x = 76.8, y = 63.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12243, title = "Fire Upon the Waters", npc = 27248, npcName = "Apothecary Vicky Levine", map = 115, x = 77.0, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Moa'ki Harbor", text = "Moa'ki Harbor", map = 115, x = 48.5, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Moa'ki Harbor", text = "Moa'ki Harbor", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12117, title = "Travel to Moa'ki Harbor", npc = 26194, npcName = "Elder Ko'nani", map = 115, x = 48.0, y = 74.9, f = "e" },
					{ t = "accept", quest = 11958, title = "Let Nothing Go To Waste", npc = 26194, npcName = "Elder Ko'nani", map = 115, x = 48.0, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11996, title = "Your Presence is Required at Agmar's Hammer", npc = 26441, npcName = "Envoy Ripfang", map = 115, x = 48.0, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11960, title = "Planning for the Future", npc = 26228, npcName = "Trapper Mau'i", map = 115, x = 48.3, y = 74.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Snowfall Glade mobs", count = 1, map = 115, x = 45.3, y = 63.7, f = "e" },
					{ t = "collect", quest = 11958, itemName = "Stolen Moa'ki Goods", count = 6, oi = 1, map = 115, x = 45.3, y = 63.7, f = "e" },
					{ t = "collect", quest = 11960, itemName = "Snowfall Glade Pup", count = 12, oi = 1, map = 115, x = 45.3, y = 63.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11960, title = "Planning for the Future", npc = 26228, npcName = "Trapper Mau'i", map = 115, x = 48.3, y = 74.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11958, title = "Let Nothing Go To Waste", npc = 26194, npcName = "Elder Ko'nani", map = 115, x = 48.0, y = 74.9, f = "e" },
					{ t = "accept", quest = 11959, title = "Slay Loguhn", npc = 26194, npcName = "Elder Ko'nani", map = 115, x = 48.0, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Loguhn", count = 1, map = 115, x = 46.3, y = 59.2, f = "e" },
					{ t = "collect", itemName = "Blood of Loguhn", count = 1, map = 115, x = 46.3, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11959, title = "Slay Loguhn", npc = 26194, npcName = "Elder Ko'nani", map = 115, x = 48.0, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12028, title = "Spiritual Insight", npc = 26595, npcName = "Toalu'u the Mystic", map = 115, x = 49.2, y = 75.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 48.9, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12028, title = "Spiritual Insight", npc = 26595, npcName = "Toalu'u the Mystic", map = 115, x = 49.2, y = 75.6, f = "e" },
					{ t = "accept", quest = 12030, title = "Elder Mana'loa", npc = 26595, npcName = "Toalu'u the Mystic", map = 115, x = 49.2, y = 75.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12009, title = "Tua'kea's Crab Traps", npc = 26245, npcName = "Tua'kea", map = 115, x = 47.7, y = 76.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12009, itemName = "Tua'kea Crab Trap", count = 8, oi = 1, map = 115, x = 46.6, y = 77.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12011, title = "Signs of Big Watery Trouble", map = 115, x = 47.7, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12009, title = "Tua'kea's Crab Traps", npc = 26245, npcName = "Tua'kea", map = 115, x = 47.7, y = 76.6, f = "e" },
					{ t = "turnin", quest = 12011, title = "Signs of Big Watery Trouble", npc = 26245, npcName = "Tua'kea", map = 115, x = 47.7, y = 76.6, f = "e" },
					{ t = "accept", quest = 12016, title = "The Bait", npc = 26245, npcName = "Tua'kea", map = 115, x = 47.7, y = 76.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12016, itemName = "The Flesh of \"Two Huge Pincers\"", count = 1, oi = 1, map = 115, x = 43.7, y = 82.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12016, title = "The Bait", npc = 26245, npcName = "Tua'kea", map = 115, x = 47.7, y = 76.6, f = "e" },
					{ t = "accept", quest = 12017, title = "Meat on the Hook", npc = 26245, npcName = "Tua'kea", map = 115, x = 47.7, y = 76.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12017, target = "Tu'u'gwar", count = 1, oi = 1, map = 115, x = 46.7, y = 78.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12017, title = "Meat on the Hook", npc = 26245, npcName = "Tua'kea", map = 115, x = 47.7, y = 76.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12030, title = "Elder Mana'loa", npc = 188419, npcName = "Elder Mana'loa", map = 115, x = 36.4, y = 65.0, f = "e" },
					{ t = "accept", quest = 12031, title = "Freedom for the Lingering", npc = 188419, npcName = "Elder Mana'loa", map = 115, x = 36.4, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Indu'le mobs", count = 1, map = 115, x = 37.2, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12031, title = "Freedom for the Lingering", npc = 188419, npcName = "Elder Mana'loa", map = 115, x = 36.4, y = 65.0, f = "e" },
					{ t = "accept", quest = 12032, title = "Conversing With the Depths", npc = 188419, npcName = "Elder Mana'loa", map = 115, x = 36.4, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 34.3, y = 79.9, f = "e" },
				},
			},
			{
				note = "Hearth to Moa'ki Harbor,0.3|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 115, x = 48.2, y = 74.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12032, title = "Conversing With the Depths", npc = 26595, npcName = "Toalu'u the Mystic", map = 115, x = 49.2, y = 75.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 74, f = "e" },
				},
			},
		},
	})
end

