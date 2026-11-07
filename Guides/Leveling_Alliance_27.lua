-- TuWoW_Leveling — Guides/Leveling_Alliance_27.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-50-55",
		pack = "guides",
		title = "Levels (50-55) (Parte 1/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-50-55-part-2",
		author = "TuWoW & Zygor",
		minLevel = 50,
		maxLevel = 55,
		zone = 1419,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 2990, title = "Thadius Grimshade", npc = 8022, npcName = "Thadius Grimshade", map = 1419, x = 67.0, y = 19.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3444, itemName = "Stone Circle", count = 1, oi = 1, map = 1413, x = 62.5, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4502, title = "Volcanic Activity", npc = 8496, npcName = "Liv Rizzlefix", map = 1413, x = 62.4, y = 38.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2641, title = "Sprinkle's Secret Ingredient", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.1, y = 26.9, f = "e" },
					{ t = "accept", quest = 2661, title = "Delivery for Marin", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.1, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2661, title = "Delivery for Marin", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.8, y = 28.7, f = "e" },
					{ t = "accept", quest = 2662, title = "Noggenfogger Elixir", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.8, y = 28.7, f = "e" },
					{ t = "turnin", quest = 2662, title = "Noggenfogger Elixir", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.8, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3444, title = "The Stone Circle", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.7, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3790, title = "Assisting Arch Druid Staghelm", npc = 5111, npcName = "Innkeeper Firebrew", map = 1446, x = 18.2, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Ironforge", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1418, x = 4.9, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1427, x = 31.7, y = 33.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7729, title = "JOB OPPORTUNITY: Culling the Competition", map = 1427, x = 37.6, y = 26.5, f = "e" },
					{ t = "accept", quest = 7728, title = "STOLEN: Smithing Tuyere and Lookout's Spyglass", map = 1427, x = 37.6, y = 26.5, f = "e" },
					{ t = "accept", quest = 7701, title = "WANTED: Overseer Maltorius", map = 1427, x = 37.6, y = 26.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7723, title = "Curse These Fat Fingers", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.6, y = 27.8, f = "e" },
					{ t = "accept", quest = 7724, title = "Fiery Menace!", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.6, y = 27.8, f = "e" },
					{ t = "accept", quest = 7727, title = "Incendosaurs? Whateverosaur is More Like It", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.6, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7722, title = "What the Flux?", npc = 14624, npcName = "Master Smith Burninate", map = 1427, x = 38.8, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Thorium Point", map = 1427, x = 37.9, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3441, title = "Divine Retribution", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.1, y = 39.0, f = "e" },
					{ t = "turnin", quest = 3441, title = "Divine Retribution", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.1, y = 39.0, f = "e" },
					{ t = "accept", quest = 3442, title = "The Flawless Flame", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.1, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Dark Iron Steamsmiths", count = 1, map = 1427, x = 36.8, y = 49.4, f = "e" },
					{ t = "collect", quest = 7728, itemName = "Smithing Tuyere", count = 1, oi = 1, map = 1427, x = 36.8, y = 49.4, f = "e" },
					{ t = "kill", target = "Dark Iron dwarves", count = 1, map = 1427, x = 36.8, y = 49.4, f = "e" },
					{ t = "collect", itemName = "Grimesilt Outhouse Key", count = 1, map = 1427, x = 36.8, y = 49.4, f = "e" },
					{ t = "accept", quest = 4451, title = "The Key to Freedom", map = 1427, x = 36.8, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 7723, target = "Heavy War Golem", count = 20, oi = 1, map = 1427, x = 32.5, y = 49.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Dark Iron Lookouts", count = 1, map = 1427, x = 33.1, y = 51.8, f = "e" },
					{ t = "collect", quest = 7728, itemName = "Lookout's Spyglass", count = 1, oi = 2, map = 1427, x = 33.1, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 7724, target = "Greater Lava Spider", count = 20, oi = 1, map = 1427, x = 32.0, y = 62.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Magma Elementals", count = 1, map = 1427, x = 30.8, y = 72.8, f = "e" },
					{ t = "collect", quest = 3442, itemName = "Golem Oil", count = 4, oi = 2, map = 1427, x = 30.8, y = 72.8, f = "e" },
					{ t = "kill", target = "Inferno Elementals and Magma Elementals", count = 1, map = 1427, x = 30.8, y = 72.8, f = "e" },
					{ t = "collect", quest = 3442, itemName = "Heart of Flame", count = 4, oi = 1, map = 1427, x = 30.8, y = 72.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1427, x = 65.2, y = 76.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Margol's Horn", count = 1, map = 1427, x = 70.7, y = 73.3, f = "e" },
					{ t = "accept", quest = 3181, title = "The Horn of the Beast", map = 1427, x = 70.7, y = 73.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4451, title = "The Key to Freedom", map = 1427, x = 65.5, y = 62.3, f = "e" },
					{ t = "accept", quest = 4449, title = "Caught!", map = 1427, x = 65.5, y = 62.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4449, target = "Dark Iron Geologist", count = 8, oi = 1, map = 1427, x = 63.3, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4449, title = "Caught!", map = 1427, x = 65.5, y = 62.3, f = "e" },
					{ t = "accept", quest = 4450, title = "Ledger from Tanaris", map = 1427, x = 65.5, y = 62.3, f = "e" },
					{ t = "collect", quest = 4450, itemName = "Goodsteel Ledger", count = 1, oi = 1, map = 1427, x = 65.5, y = 62.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Glassweb Spiders", count = 1, map = 1427, x = 61.7, y = 72.0, f = "e" },
					{ t = "collect", quest = 4450, itemName = "Solid Crystal Leg Shaft", count = 20, oi = 2, map = 1427, x = 61.7, y = 72.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3367, title = "Suntara Stones (1)", npc = 8284, npcName = "Dorius Stonetender", map = 1427, x = 63.9, y = 61.0, f = "e" },
					{ t = "turnin", quest = 3367, title = "Suntara Stones (1)", npc = 8284, npcName = "Dorius Stonetender", map = 1427, x = 63.9, y = 61.0, f = "e" },
					{ t = "accept", quest = 3368, title = "Suntara Stones (2)", npc = 8284, npcName = "Dorius Stonetender", map = 1427, x = 63.9, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3442, title = "The Flawless Flame", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.0, y = 38.9, f = "e" },
					{ t = "accept", quest = 3443, title = "Forging the Shaft", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.0, y = 38.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Dark Iron dwarves", count = 1, map = 1427, x = 42.4, y = 47.1, f = "e" },
					{ t = "collect", quest = 3443, itemName = "Thorium Plated Dagger", count = 8, oi = 1, map = 1427, x = 42.4, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3443, title = "Forging the Shaft", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.0, y = 38.9, f = "e" },
					{ t = "accept", quest = 3452, title = "The Flame's Casing", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.0, y = 38.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7723, title = "Curse These Fat Fingers", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.6, y = 27.8, f = "e" },
					{ t = "turnin", quest = 7724, title = "Fiery Menace!", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.6, y = 27.8, f = "e" },
					{ t = "turnin", quest = 7728, title = "STOLEN: Smithing Tuyere and Lookout's Spyglass", npc = 14626, npcName = "Taskmaster Scrange", map = 1427, x = 38.6, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3368, title = "Suntara Stones (2)", npc = 8256, npcName = "Curator Thorius", map = 1455, x = 67.8, y = 8.3, f = "e" },
					{ t = "accept", quest = 3371, title = "Dwarven Justice", npc = 8256, npcName = "Curator Thorius", map = 1455, x = 67.8, y = 8.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3181, title = "The Horn of the Beast", npc = 3836, npcName = "Mountaineer Pebblebitty", map = 1432, x = 18.2, y = 84.0, f = "e" },
					{ t = "accept", quest = 3182, title = "Proof of Deed", npc = 3836, npcName = "Mountaineer Pebblebitty", map = 1432, x = 18.2, y = 84.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3182, title = "Proof of Deed", npc = 8256, npcName = "Curator Thorius", map = 1455, x = 67.8, y = 8.3, f = "e" },
					{ t = "accept", quest = 3201, title = "At Last!", npc = 8256, npcName = "Curator Thorius", map = 1455, x = 67.8, y = 8.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4512, title = "A Little Slime Goes a Long Way (1)", npc = 9616, npcName = "Laris Geardawdle", map = 1455, x = 75.8, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3201, title = "At Last!", npc = 3836, npcName = "Mountaineer Pebblebitty", map = 1432, x = 18.2, y = 84.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1427, x = 41.5, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3371, title = "Dwarven Justice", npc = 8417, npcName = "the Dying Archeologist", map = 1427, x = 41.2, y = 25.5, f = "e" },
					{ t = "accept", quest = 3372, title = "Release Them", npc = 8417, npcName = "the Dying Archeologist", map = 1427, x = 41.2, y = 25.5, f = "e" },
				},
			},
			{
				note = "While in the Slag Pit:",
				goals = {
					{ t = "kill", quest = 7729, target = "Dark Iron Taskmaster", count = 15, oi = 1, f = "e" },
					{ t = "kill", quest = 7729, target = "Dark Iron Slaver", count = 15, oi = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 7701, itemName = "Head of Overseer Maltorius", count = 1, oi = 1, map = 1427, x = 40.9, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 7722, itemName = "Secret Plans: Fiery Flux", count = 1, oi = 1, map = 1427, x = 40.5, y = 35.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1427, x = 47.9, y = 42.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 7727, target = "Incendosaur", count = 20, oi = 1, map = 1427, x = 52.0, y = 37.0, f = "e" },
				},
			},
			{
				note = "Go outside to 37.6,26.5",
				goals = {
					{ t = "turnin", quest = 7701, title = "WANTED: Overseer Maltorius", npc = 14634, npcName = "Lookout Captain Lolo Longstriker", map = 1427, x = 37.6, y = 26.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7727, title = "Incendosaurs? Whateverosaur is More Like It", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.6, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7729, title = "JOB OPPORTUNITY: Culling the Competition", npc = 14626, npcName = "Taskmaster Scrange", map = 1427, x = 39.0, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7722, title = "What the Flux?", npc = 14624, npcName = "Master Smith Burninate", map = 1427, x = 38.8, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3452, itemName = "Symbol of Ragnaros", count = 1, oi = 1, map = 1427, x = 29.1, y = 25.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3377, title = "Prayer to Elune (1)", npc = 8436, npcName = "Zamael Lunthistle", map = 1427, x = 29.6, y = 26.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 8436, npcName = "Zamael Lunthistle", map = 1427, x = 29.6, y = 26.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3377, title = "Prayer to Elune (1)", npc = 8436, npcName = "Zamael Lunthistle", map = 1427, x = 29.6, y = 26.4, f = "e" },
					{ t = "accept", quest = 3378, title = "Prayer to Elune (2)", npc = 8436, npcName = "Zamael Lunthistle", map = 1427, x = 29.6, y = 26.4, f = "e" },
					{ t = "kill", target = "Twilight mobs", count = 1, map = 1427, x = 29.6, y = 26.4, f = "e" },
					{ t = "collect", quest = 3378, itemName = "Prayer to Elune", count = 1, oi = 1, map = 1427, x = 29.6, y = 26.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3452, title = "The Flame's Casing", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.0, y = 38.9, f = "e" },
					{ t = "accept", quest = 3453, title = "The Torch of Retribution (1)", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.0, y = 38.9, f = "e" },
					{ t = "turnin", quest = 3453, title = "The Torch of Retribution (1)", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.0, y = 38.9, f = "e" },
					{ t = "accept", quest = 3454, title = "The Torch of Retribution (2)", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.0, y = 38.9, f = "e" },
					{ t = "turnin", quest = 3454, title = "The Torch of Retribution (2)", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.0, y = 38.9, f = "e" },
					{ t = "accept", quest = 3462, title = "Squire Maltrake", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.0, y = 38.9, f = "e" },
					{ t = "turnin", quest = 3462, title = "Squire Maltrake", npc = 8509, npcName = "Squire Maltrake", map = 1427, x = 39.0, y = 38.9, f = "e" },
					{ t = "accept", quest = 3463, title = "Set Them Ablaze!", npc = 8509, npcName = "Squire Maltrake", map = 1427, x = 39.0, y = 38.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3372, title = "Release Them", map = 1427, x = 41.2, y = 25.5, f = "e" },
					{ t = "accept", quest = 3566, title = "Rise, Obsidion!", npc = 8417, npcName = "the Dying Archeologist", map = 1427, x = 41.2, y = 25.5, f = "e" },
					{ t = "collect", quest = 3566, itemName = "Head of Lathoric the Black", count = 1, oi = 1, map = 1427, x = 41.2, y = 25.5, f = "e" },
					{ t = "collect", quest = 3566, itemName = "Heart of Obsidion", count = 1, oi = 2, map = 1427, x = 41.2, y = 25.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1427, x = 33.3, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1427, x = 35.7, y = 60.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1427, x = 44.0, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1427, x = 50.1, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3463, title = "Set Them Ablaze!", npc = 8509, npcName = "Squire Maltrake", map = 1427, x = 39.1, y = 39.0, f = "e" },
					{ t = "accept", quest = 3481, title = "Trinkets...", npc = 8509, npcName = "Squire Maltrake", map = 1427, x = 39.1, y = 39.0, f = "e" },
					{ t = "turnin", quest = 3481, title = "Trinkets...", npc = 8509, npcName = "Squire Maltrake", map = 1427, x = 39.1, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2783, title = "Petty Squabbles", npc = 7826, npcName = "Ambassador Ardalan", map = 1419, x = 67.5, y = 19.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2783, title = "Petty Squabbles", npc = 7572, npcName = "the Fallen Hero of the Horde", map = 1435, x = 34.3, y = 66.1, f = "e" },
					{ t = "accept", quest = 2801, title = "A Tale of Sorrow", npc = 7572, npcName = "the Fallen Hero of the Horde", map = 1435, x = 34.3, y = 66.1, f = "e" },
					{ t = "turnin", quest = 2801, title = "A Tale of Sorrow", npc = 7572, npcName = "the Fallen Hero of the Horde", map = 1435, x = 34.3, y = 66.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4450, itemName = "Goodsteel's Balanced Flameberge", count = 1, oi = 4, map = 1435, x = 91.6, y = 67.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3566, title = "Rise, Obsidion!", npc = 8256, npcName = "Curator Thorius", map = 1455, x = 67.8, y = 8.3, f = "e" },
				},
			},
			{
				note = "Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c",
				goals = {
					{ t = "goto", map = 1453, x = 22.6, y = 56.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3378, title = "Prayer to Elune (2)", npc = 4090, npcName = "Astarii Starseeker", map = 1457, x = 38.3, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 162, title = "Rise of the Silithid", npc = 7740, npcName = "Gracina Spiritmight", map = 1457, x = 41.8, y = 85.6, f = "e" },
					{ t = "accept", quest = 4493, title = "March of the Silithid", npc = 7740, npcName = "Gracina Spiritmight", map = 1457, x = 41.8, y = 85.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3790, title = "Assisting Arch Druid Staghelm", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 35.1, y = 9.1, f = "e" },
					{ t = "accept", quest = 3764, title = "Un'Goro Soil", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 35.1, y = 9.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1457, x = 31.0, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4450, itemName = "Overdue Package", count = 1, oi = 3, map = 1445, x = 54.1, y = 55.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 625, title = "Cortello's Riddle (2)", map = 1445, x = 31.1, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4450, title = "Ledger from Tanaris", npc = 5411, npcName = "Krinkle Goodsteel", map = 1446, x = 51.5, y = 28.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4504, title = "Super Sticky", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.6, y = 26.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4493, title = "March of the Silithid", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.9, y = 27.0, f = "e" },
					{ t = "accept", quest = 4496, title = "Bungle in the Jungle", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.9, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4289, title = "The Apes of Un'Goro", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
					{ t = "accept", quest = 4290, title = "The Fare of Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Ravasaurs", count = 1, map = 1446, x = 68.0, y = 76.0, f = "e" },
					{ t = "collect", itemName = "A Mangled Journal", count = 1, map = 1446, x = 68.0, y = 76.0, f = "e" },
					{ t = "accept", quest = 3884, title = "Williden's Journal", map = 1446, x = 68.0, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3844, title = "It's a Secret to Everybody (1)", map = 1446, x = 63.0, y = 68.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3844, title = "It's a Secret to Everybody (1)", map = 1446, x = 63.1, y = 69.1, f = "e" },
					{ t = "accept", quest = 3845, title = "It's a Secret to Everybody (2)", map = 1446, x = 63.1, y = 69.1, f = "e" },
					{ t = "collect", quest = 3845, itemName = "Large Compass", count = 1, oi = 1, map = 1446, x = 63.1, y = 69.1, f = "e" },
					{ t = "collect", quest = 3845, itemName = "Curled Map Parchment", count = 1, oi = 2, map = 1446, x = 63.1, y = 69.1, f = "e" },
					{ t = "collect", quest = 3845, itemName = "Lion-headed Key", count = 1, oi = 3, map = 1446, x = 63.1, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4290, itemName = "Piece of Threshadon Carcass", count = 1, oi = 1, map = 1446, x = 68.6, y = 56.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4290, title = "The Fare of Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
					{ t = "accept", quest = 4291, title = "The Scent of Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4291, itemName = "Ravasaur Pheromone Gland", count = 2, oi = 1, map = 1446, x = 67.3, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4291, title = "The Scent of Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
					{ t = "accept", quest = 4292, title = "The Bait for Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4292, itemName = "Lar'korwi's Head", count = 1, oi = 1, map = 1446, x = 79.9, y = 49.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4289, itemName = "Un'Goro Gorilla Pelt", count = 2, oi = 1, map = 1446, x = 65.7, y = 15.5, f = "e" },
					{ t = "collect", quest = 4289, itemName = "Un'Goro Stomper Pelt", count = 2, oi = 2, map = 1446, x = 65.7, y = 15.5, f = "e" },
					{ t = "collect", quest = 4289, itemName = "Un'Goro Thunderer Pelt", count = 2, oi = 3, map = 1446, x = 65.7, y = 15.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4243, title = "Chasing A-Me 01 (1)", npc = 9618, npcName = "Karna Remtravel", map = 1446, x = 46.4, y = 13.4, f = "e" },
				},
			},
		},
	})
end

