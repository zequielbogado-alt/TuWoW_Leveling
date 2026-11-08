-- TuWoW_Leveling — Guides/Leveling_Horde_26.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-50-55",
		pack = "guides",
		title = "Levels (50-55) (Parte 1/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-levels-50-55-part-2",
		author = "TuWoW & Zygor",
		minLevel = 50,
		maxLevel = 55,
		zone = 1446,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 5863, title = "The Dunemaul Compound", npc = 11758, npcName = "Andi Lynn", map = 1446, x = 52.8, y = 27.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3380, title = "The Sunken Temple", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.7, y = 45.9, f = "e" },
					{ t = "accept", quest = 3444, title = "The Stone Circle", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.7, y = 45.9, f = "e" },
					{ t = "accept", quest = 3161, title = "Gahz'ridian", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.7, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5863, target = "Dunemaul Brute", count = 10, oi = 1, map = 1446, x = 42.0, y = 54.0, f = "e" },
					{ t = "kill", quest = 5863, target = "Dunemaul Enforcer", count = 10, oi = 2, map = 1446, x = 42.0, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5863, target = "Gor'marok the Ravager", count = 1, oi = 3, map = 1446, x = 41.5, y = 57.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3161, itemName = "Gahz'ridian Ornament", count = 30, oi = 1, map = 1446, x = 41.0, y = 71.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 3362, target = "Gnarled Thistleshrub", count = 8, oi = 1, map = 1446, x = 29.0, y = 63.0, f = "e" },
					{ t = "kill", quest = 3362, target = "Thistleshrub Rootshaper", count = 8, oi = 2, map = 1446, x = 29.0, y = 63.0, f = "e" },
					{ t = "collect", quest = 2605, itemName = "Laden Dew Gland", count = 1, oi = 1, map = 1446, x = 29.0, y = 63.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 82, itemName = "Centipaar Insect Parts", count = 5, oi = 1, map = 1446, x = 31.0, y = 51.0, f = "e" },
				},
			},
			{
				note = "Hearth to Gadgetzan|goto Tanaris,52.4,27.9,0.3|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2605, title = "The Thirsty Goblin", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.8, y = 28.6, f = "e" },
					{ t = "accept", quest = 2606, title = "In Good Taste", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.8, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2606, title = "In Good Taste", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.1, y = 26.9, f = "e" },
					{ t = "accept", quest = 2641, title = "Sprinkle's Secret Ingredient", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.1, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 82, title = "Noxious Lair Investigation", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.9, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3362, title = "Thistleshrub Valley", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.6, y = 26.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5863, title = "The Dunemaul Compound", npc = 11758, npcName = "Andi Lynn", map = 1446, x = 52.8, y = 27.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10, title = "The Scrimshank Redemption", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3161, title = "Gahz'ridian", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.7, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 55.7, y = 70.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 55.8, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10, itemName = "Scrimshank's Surveying Gear", count = 1, oi = 1, map = 1446, x = 56.0, y = 71.2, f = "e" },
				},
			},
			{
				note = "Go outside to 67.1,23.9",
				goals = {
					{ t = "accept", quest = 4324, title = "Yuka Screwspigot", npc = 9706, npcName = "Yorba Screwspigot", map = 1446, x = 67.1, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3520, title = "Screecher Spirits", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 67.0, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10, title = "The Scrimshank Redemption", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
					{ t = "accept", quest = 110, title = "Insect Part Analysis (1)", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 110, title = "Insect Part Analysis (1)", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.9, y = 27.0, f = "e" },
					{ t = "accept", quest = 113, title = "Insect Part Analysis (2)", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.9, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 113, title = "Insect Part Analysis (2)", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
					{ t = "accept", quest = 32, title = "Rise of the Silithid", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
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
				note = "Buy 15 silk cloth from the Auction House",
				goals = {
					{ t = "buy", itemName = "Silk Cloth", count = 15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1418, x = 4.5, y = 61.3, f = "e" },
				},
			},
			{
				note = "The path up to Thorium Point starts here|goto Searing Gorge,31.8,33.4,0.3|noway|c",
				goals = {
					{ t = "goto", map = 1427, x = 31.8, y = 33.4, f = "e" },
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
					{ t = "getfp", location = "Thorium Point", text = "Thorium Point", map = 1427, x = 34.8, y = 30.9, f = "e" },
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
					{ t = "collect", quest = 7728, itemName = "Smithing Tuyere", count = 1, oi = 1, map = 1427, x = 37.0, y = 49.0, f = "e" },
					{ t = "collect", itemName = "the Grimesilt Outhouse Key", count = 1, map = 1427, x = 37.0, y = 49.0, f = "e" },
					{ t = "accept", quest = 4451, title = "The Key to Freedom", map = 1427, x = 37.0, y = 49.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 7723, target = "Heavy War Golem", count = 20, oi = 1, map = 1427, x = 33.0, y = 49.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 7728, itemName = "Lookout's Spyglass", count = 1, oi = 2, map = 1427, x = 33.0, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 7724, target = "Greater Lava Spider", count = 20, oi = 1, map = 1427, x = 32.0, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3442, itemName = "Golem Oil", count = 4, oi = 2, map = 1427, x = 31.0, y = 75.0, f = "e" },
					{ t = "collect", quest = 3442, itemName = "Heart of Flame", count = 4, oi = 1, map = 1427, x = 31.0, y = 75.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4449, title = "Caught!", map = 1427, x = 65.6, y = 62.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4449, target = "Dark Iron Geologist", count = 8, oi = 1, map = 1427, x = 63.0, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4449, title = "Caught!", map = 1427, x = 65.6, y = 62.3, f = "e" },
					{ t = "accept", quest = 4450, title = "Ledger from Tanaris", map = 1427, x = 65.6, y = 62.3, f = "e" },
					{ t = "collect", quest = 4450, itemName = "Goodsteel Ledger", count = 1, oi = 1, map = 1427, x = 65.6, y = 62.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4450, itemName = "Solid Crystal Leg Shaft", count = 20, oi = 2, map = 1427, x = 62.0, y = 72.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3442, title = "The Flawless Flame", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.1, y = 39.0, f = "e" },
					{ t = "accept", quest = 3443, title = "Forging the Shaft", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.1, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3443, itemName = "Thorium Plated Dagger", count = 8, oi = 1, map = 1427, x = 39.8, y = 50.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3443, title = "Forging the Shaft", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.1, y = 39.0, f = "e" },
					{ t = "accept", quest = 3452, title = "The Flame's Casing", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.1, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1427, x = 41.4, y = 53.9, f = "e" },
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
					{ t = "turnin", quest = 7723, title = "Curse These Fat Fingers", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.6, y = 27.8, f = "e" },
					{ t = "turnin", quest = 7724, title = "Fiery Menace!", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.6, y = 27.8, f = "e" },
					{ t = "turnin", quest = 7727, title = "Incendosaurs? Whateverosaur is More Like It", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.6, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7728, title = "STOLEN: Smithing Tuyere and Lookout's Spyglass", npc = 14626, npcName = "Taskmaster Scrange", map = 1427, x = 39.0, y = 27.5, f = "e" },
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
					{ t = "collect", quest = 3452, itemName = "Symbol of Ragnaros", count = 1, oi = 1, map = 1427, x = 26.0, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3452, title = "The Flame's Casing", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.1, y = 39.0, f = "e" },
					{ t = "accept", quest = 3453, title = "The Torch of Retribution (1)", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.1, y = 39.0, f = "e" },
					{ t = "turnin", quest = 3453, title = "The Torch of Retribution (1)", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.1, y = 39.0, f = "e" },
					{ t = "accept", quest = 3454, title = "The Torch of Retribution (2)", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.1, y = 39.0, f = "e" },
					{ t = "turnin", quest = 3454, title = "The Torch of Retribution (2)", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.1, y = 39.0, f = "e" },
					{ t = "accept", quest = 3462, title = "Squire Maltrake", npc = 8479, npcName = "Kalaran Windblade", map = 1427, x = 39.1, y = 39.0, f = "e" },
					{ t = "turnin", quest = 3462, title = "Squire Maltrake", npc = 8509, npcName = "Squire Maltrake", map = 1427, x = 39.1, y = 39.0, f = "e" },
					{ t = "accept", quest = 3463, title = "Set Them Ablaze!", npc = 8509, npcName = "Squire Maltrake", map = 1427, x = 39.1, y = 39.0, f = "e" },
				},
			},
			{
				note = "Equip the Torch of Retribution|use Torch of Retribution##10515",
				goals = {
					{ t = "use", item = 10515, itemName = "Torch of Retribution", f = "e" },
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
					{ t = "getfp", location = "Flame Crest", text = "Flame Crest", map = 1428, x = 65.7, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Stonard", text = "Stonard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2784, title = "Fall From Grace", npc = 7572, npcName = "the Fallen Hero of the Horde", map = 1428, x = 34.3, y = 66.1, f = "e" },
					{ t = "turnin", quest = 2784, title = "Fall From Grace", npc = 7572, npcName = "the Fallen Hero of the Horde", map = 1428, x = 34.3, y = 66.1, f = "e" },
					{ t = "accept", quest = 2621, title = "The Disgraced One", npc = 7572, npcName = "the Fallen Hero of the Horde", map = 1428, x = 34.3, y = 66.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 624, title = "Cortello's Riddle (1)", map = 1428, x = 22.9, y = 48.2, f = "e" },
					{ t = "accept", quest = 625, title = "Cortello's Riddle (2)", map = 1428, x = 22.9, y = 48.2, f = "e" },
				},
			},
			{
				note = "Hearth to Stonard,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1428, x = 45.1, y = 56.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2621, title = "The Disgraced One", npc = 7623, npcName = "Dispatch Commander Ruag", map = 1428, x = 47.9, y = 55.0, f = "e" },
					{ t = "accept", quest = 2622, title = "The Missing Orders", npc = 7623, npcName = "Dispatch Commander Ruag", map = 1428, x = 47.9, y = 55.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2622, title = "The Missing Orders", npc = 7643, npcName = "Bengor", map = 1428, x = 45.0, y = 57.4, f = "e" },
					{ t = "accept", quest = 2623, title = "The Swamp Talker", npc = 7643, npcName = "Bengor", map = 1428, x = 45.0, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1428, x = 66.4, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2623, itemName = "Warchief's Orders", count = 1, oi = 1, map = 1428, x = 62.8, y = 88.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4450, itemName = "Goodsteel's Balanced Flameberge", count = 1, oi = 4, map = 1428, x = 91.6, y = 67.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2623, title = "The Swamp Talker", npc = 7572, npcName = "the Fallen Hero of the Horde", map = 1428, x = 34.3, y = 66.1, f = "e" },
					{ t = "accept", quest = 2801, title = "A Tale of Sorrow", npc = 7572, npcName = "the Fallen Hero of the Horde", map = 1428, x = 34.3, y = 66.1, f = "e" },
					{ t = "turnin", quest = 2801, title = "A Tale of Sorrow", npc = 7572, npcName = "the Fallen Hero of the Horde", map = 1428, x = 34.3, y = 66.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 625, title = "Cortello's Riddle (2)", map = 1445, x = 31.1, y = 66.1, f = "e" },
					{ t = "accept", quest = 626, title = "Cortello's Riddle (3)", map = 1445, x = 31.1, y = 66.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4450, itemName = "Overdue Package", count = 1, oi = 3, map = 1445, x = 54.1, y = 55.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4450, title = "Ledger from Tanaris", npc = 5411, npcName = "Krinkle Goodsteel", map = 1446, x = 51.5, y = 28.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Orgrimmar", text = "Orgrimmar", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 81, title = "Ripple Delivery", npc = 6986, npcName = "Dran Droffers", map = 1446, x = 59.5, y = 36.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3517, title = "Stealing Knowledge", npc = 8587, npcName = "Jediga", map = 1447, x = 22.6, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3505, title = "Betrayed (2)", npc = 8576, npcName = "Ag'tor Bloodfist", map = 1447, x = 22.3, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3517, itemName = "Tablet of Sael'hai", count = 1, oi = 4, map = 1447, x = 34.8, y = 54.1, f = "e" },
					{ t = "collect", quest = 3517, itemName = "Tablet of Markri", count = 1, oi = 3, map = 1447, x = 34.8, y = 54.1, f = "e" },
					{ t = "collect", quest = 3517, itemName = "Tablet of Beth'Amara", count = 1, oi = 1, map = 1447, x = 34.8, y = 54.1, f = "e" },
					{ t = "collect", quest = 3517, itemName = "Tablet of Jin'yael", count = 1, oi = 2, map = 1447, x = 34.8, y = 54.1, f = "e" },
				},
			},
			{
				note = "Open the Box of Empty Vials|use Box of Empty Vials##10695",
				goals = {
					{ t = "use", item = 10695, itemName = "Box of Empty Vials", f = "e" },
					{ t = "collect", itemName = "Empty Vial Labeled", count = 1, f = "e" },
					{ t = "collect", itemName = "Empty Vial Labeled", count = 1, f = "e" },
					{ t = "collect", itemName = "Empty Vial Labeled", count = 1, f = "e" },
					{ t = "collect", itemName = "Empty Vial Labeled", count = 1, f = "e" },
				},
			},
		},
	})
end

