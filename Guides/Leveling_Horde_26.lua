-- TuWoW_Leveling — Guides/Leveling_Horde_26.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-stranglethorn-vale-44-45",
		pack = "guides",
		title = "Stranglethorn Vale",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-swamp-of-sorrows-45-46",
		author = "TuWoW & Zygor",
		minLevel = 44,
		maxLevel = 45,
		zone = 1434,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 586, title = "Speaking with Gan'zulah", map = 1434, x = 32.22, y = 27.6, f = "e" },
				},
			},
			{
				note = "Level 38 elite enemies. Shared spawns with Saltwater Crocolisks.",
				goals = {
					{ t = "collect", quest = 628, item = 4105, itemName = "Elder Crocolisk Skin", oi = 1, map = 1434, x = 29.2, y = 22.4, f = "e" },
				},
			},
			{
				note = "Larger troll with wooden mallet. Walks around with 2 guards. Sometimes stands inside this small cave. Careful, dangerous area.",
				goals = {
					{ t = "collect", quest = 586, item = 3909, itemName = "Broken Armor of Ana'thek", oi = 4, map = 1434, x = 44.4, y = 44.4, f = "e" },
				},
			},
			{
				label = "Kill_Skullsplitter_Headhunters",
				along = true,
				note = "Uncommon.",
				goals = {
					{ t = "kill", quest = 586, npc = 781, target = "Skullsplitter Headhunter", count = 6, oi = 2, map = 1434, x = 47.2, y = 43.8, f = "e" },
				},
			},
			{
				label = "Kill_Skullsplitter_Berserkers_And_Hunters",
				along = true,
				goals = {
					{ t = "kill", quest = 586, npc = 783, target = "Skullsplitter Berserker", count = 4, oi = 3, map = 1434, x = 47.2, y = 39.6, f = "e" },
					{ t = "kill", quest = 586, npc = 669, target = "Skullsplitter Hunter", count = 8, oi = 1, map = 1434, x = 47.2, y = 39.6, f = "e" },
				},
			},
			{
				note = "Unstealthed level 40 elite black panther. Walks around. Multiple locations.",
				goals = {
					{ t = "collect", quest = 193, item = 3876, itemName = "Fang of Bhag'thera", oi = 1, map = 1434, x = 46.37, y = 29.05, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 193, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.55, y = 10.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 338, title = "The Green Hills of Stranglethorn", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 339, title = "Chapter I", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 339, title = "Chapter I", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 340, title = "Chapter II", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 340, title = "Chapter II", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 341, title = "Chapter III", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 341, title = "Chapter III", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 342, title = "Chapter IV", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 342, title = "Chapter IV", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 338, title = "The Green Hills of Stranglethorn", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 586, title = "Speaking with Gan'zulah", map = 1434, x = 32.22, y = 27.6, f = "e" },
					{ t = "accept", quest = 588, title = "The Fate of Yenniku", map = 1434, x = 32.22, y = 27.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 588, title = "The Fate of Yenniku", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.27, y = 27.71, f = "e" },
					{ t = "accept", quest = 589, title = "The Singing Crystals", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.27, y = 27.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 571, title = "Mok'thardin's Enchantment", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1434, x = 32.12, y = 29.24, f = "e" },
				},
			},
			{
				note = "Collect from the bank.",
				goals = {
					{ t = "collect", quest = 1118, item = 5826, itemName = "Kravel's Scheme", map = 1434, x = 26.54, y = 76.57, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "turnin", quest = 1118, title = "Back to Booty Bay", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "accept", quest = 621, title = "Zanzil's Secret", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 606, title = "Scaring Shaky", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.78, y = 77.07, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 595, title = "The Bloodsail Buccaneers", npc = 2490, npcName = "First Mate Crazz", map = 1434, x = 28.1, y = 76.22, f = "e" },
				},
			},
			{
				note = "Upper level of the docks. Inside the building.",
				goals = {
					{ t = "turnin", quest = 628, title = "Excelsior", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.29, y = 77.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run through the tunnel to leave Booty Bay", map = 1434, x = 28.0, y = 73.46 },
					{ t = "collect", quest = 571, item = 3862, itemName = "Aged Gorilla Sinew", oi = 1, map = 1434, x = 31.2, y = 68.2, f = "e" },
					{ t = "collect", quest = 606, item = 3919, itemName = "Mistvale Giblets", count = 5, oi = 1, map = 1434, x = 31.2, y = 68.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 595, title = "The Bloodsail Buccaneers", map = 1434, x = 27.28, y = 69.52, f = "e" },
					{ t = "accept", quest = 597, title = "The Bloodsail Buccaneers", map = 1434, x = 27.28, y = 69.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run through the tunnel to enter Booty Bay", map = 1434, x = 29.56, y = 72.51 },
					{ t = "turnin", quest = 606, title = "Scaring Shaky", npc = 2502, npcName = "\"Shaky\" Phillipe", map = 1434, x = 26.9, y = 73.59, f = "e" },
					{ t = "accept", quest = 607, title = "Return to MacKinley", npc = 2502, npcName = "\"Shaky\" Phillipe", map = 1434, x = 26.9, y = 73.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 597, title = "The Bloodsail Buccaneers", npc = 2490, npcName = "First Mate Crazz", map = 1434, x = 28.1, y = 76.21, f = "e" },
					{ t = "accept", quest = 599, title = "The Bloodsail Buccaneers", npc = 2490, npcName = "First Mate Crazz", map = 1434, x = 28.1, y = 76.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 607, title = "Return to MacKinley", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.78, y = 77.07, f = "e" },
					{ t = "accept", quest = 609, title = "Voodoo Dues", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.78, y = 77.07, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "accept", quest = 587, title = "Up to Snuff", npc = 2488, npcName = "Deeg", map = 1434, x = 26.92, y = 77.35, f = "e" },
				},
			},
			{
				note = "Upstairs on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 599, title = "The Bloodsail Buccaneers", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.17, y = 77.01, f = "e" },
					{ t = "accept", quest = 604, title = "The Bloodsail Buccaneers", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.17, y = 77.01, f = "e" },
				},
			},
			{
				note = "Upper level of the docks.",
				goals = {
					{ t = "accept", quest = 576, title = "Keep An Eye Out", npc = 2493, npcName = "Dizzy One-Eye", map = 1434, x = 28.59, y = 75.9, f = "e" },
				},
			},
			{
				note = "Brown paper. Multiple locations.",
				goals = {
					{ t = "goto", text = "Run through the tunnel to leave Booty Bay", map = 1434, x = 28.0, y = 73.46 },
					{ t = "goto", text = "Run along the beach", map = 1434, x = 32.89, y = 73.75 },
					{ t = "collect", quest = 604, item = 3920, itemName = "Bloodsail Charts", oi = 2, map = 1434, x = 29.59, y = 80.83, f = "e" },
				},
			},
			{
				label = "Collect_Bloodsail_Orders",
				along = true,
				note = "White unrolled scroll. Multiple locations. notinsticky",
				goals = {
					{ t = "collect", quest = 604, item = 3921, itemName = "Bloodsail Orders", oi = 3, map = 1434, x = 29.59, y = 80.8, f = "e" },
				},
			},
			{
				label = "Collect_Dizzys_Eye_And_Snuff",
				along = true,
				goals = {
					{ t = "collect", quest = 576, item = 3897, itemName = "Dizzy's Eye", oi = 1, map = 1434, x = 27.0, y = 82.8, f = "e" },
					{ t = "collect", quest = 587, item = 3910, itemName = "Snuff", count = 15, oi = 1, map = 1434, x = 27.0, y = 82.8, f = "e" },
				},
			},
			{
				label = "Kill_Bloodsail_Swashbucklers",
				along = true,
				goals = {
					{ t = "kill", quest = 604, npc = 1563, target = "Bloodsail Swashbuckler", count = 10, oi = 1, map = 1434, x = 27.0, y = 82.8, f = "e" },
				},
			},
			{
				note = "Upper level of the docks.",
				goals = {
					{ t = "goto", text = "Run through the tunnel to enter Booty Bay", map = 1434, x = 29.56, y = 72.51 },
					{ t = "turnin", quest = 576, title = "Keep An Eye Out", npc = 2493, npcName = "Dizzy One-Eye", map = 1434, x = 28.59, y = 75.9, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 617, title = "Akiris by the Bundle", npc = 2494, npcName = "Privateer Bloads", map = 1434, x = 27.43, y = 76.78, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 587, title = "Up to Snuff", npc = 2488, npcName = "Deeg", map = 1434, x = 26.92, y = 77.35, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 604, title = "The Bloodsail Buccaneers", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.17, y = 77.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 571, title = "Mok'thardin's Enchantment", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1434, x = 32.12, y = 29.24, f = "e" },
					{ t = "accept", quest = 573, title = "Mok'thardin's Enchantment", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1434, x = 32.12, y = 29.24, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the road to the path", map = 1434, x = 39.02, y = 47.1 },
					{ t = "collect", quest = 589, item = 3911, itemName = "Pulsing Blue Shard", count = 3, oi = 1, map = 1434, x = 41.99, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1434, x = 41.99, y = 50.03 },
					{ t = "collect", quest = 609, item = 3924, itemName = "Maury's Clubbed Foot", oi = 1, map = 1434, x = 35.25, y = 51.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 609, item = 3925, itemName = "Jon-Jon's Golden Spyglass", oi = 2, map = 1434, x = 34.93, y = 51.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1434, x = 34.1, y = 54.06 },
					{ t = "collect", quest = 609, item = 3926, itemName = "Chucky's Huge Ring", oi = 3, map = 1434, x = 40.0, y = 58.24, f = "e" },
				},
			},
			{
				label = "Collect_Zanzils_Mixture",
				along = true,
				note = "Avoid Zanzil the Outcast. Summons many enemies.",
				goals = {
					{ t = "collect", quest = 621, item = 4016, itemName = "Zanzil's Mixture", count = 12, oi = 1, map = 1434, x = 39.8, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path around the mountain and follow the path up", map = 1434, x = 27.03, y = 59.49 },
					{ t = "goto", text = "Follow the path", map = 1434, x = 27.35, y = 62.99 },
					{ t = "collect", quest = 573, item = 737, itemName = "Holy Spring Water", oi = 2, map = 1434, x = 28.92, y = 61.96, f = "e" },
				},
			},
			{
				label = "Collect_Akiris_Reeds",
				along = true,
				goals = {
					{ t = "collect", quest = 617, item = 4029, itemName = "Akiris Reed", count = 10, oi = 1, map = 1434, x = 24.4, y = 64.6, f = "e" },
				},
			},
			{
				label = "Kill_Naga_Explorers",
				along = true,
				goals = {
					{ t = "kill", quest = 573, npc = 1907, target = "Naga Explorer", count = 10, oi = 1, map = 1434, x = 24.4, y = 64.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run through the tunnel to enter Booty Bay", map = 1434, x = 29.56, y = 72.51 },
					{ t = "turnin", quest = 609, title = "Voodoo Dues", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.78, y = 77.07, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 617, title = "Akiris by the Bundle", npc = 2494, npcName = "Privateer Bloads", map = 1434, x = 27.43, y = 76.78, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "accept", quest = 580, title = "Whiskey Slim's Lost Grog", npc = 2491, npcName = "Whiskey Slim", map = 1434, x = 27.13, y = 77.45, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "turnin", quest = 621, title = "Zanzil's Secret", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "sethome", location = "Booty Bay", map = 1434, x = 27.04, y = 77.31, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 573, title = "Mok'thardin's Enchantment", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1434, x = 32.12, y = 29.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 589, title = "The Singing Crystals", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.27, y = 27.71, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-swamp-of-sorrows-45-46",
		pack = "guides",
		title = "Swamp of Sorrows",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-tanaris-and-dustwallow-marsh-46-48",
		author = "TuWoW & Zygor",
		minLevel = 45,
		maxLevel = 46,
		zone = 1435,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 2784, title = "Fall From Grace", npc = 7572, npcName = "Fallen Hero of the Horde", map = 1435, x = 34.29, y = 66.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2784, title = "Fall From Grace", note = "Listen to the Tale of Sorrow", map = 1435, x = 34.29, y = 66.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2784, title = "Fall From Grace", npc = 7572, npcName = "Fallen Hero of the Horde", map = 1435, x = 34.29, y = 66.13, f = "e" },
					{ t = "accept", quest = 2621, title = "The Disgraced One", npc = 7572, npcName = "Fallen Hero of the Horde", map = 1435, x = 34.29, y = 66.13, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 2621, title = "The Disgraced One", npc = 7623, npcName = "Dispatch Commander Ruag", map = 1435, x = 47.79, y = 54.95, f = "e" },
					{ t = "accept", quest = 2622, title = "The Missing Orders", npc = 7623, npcName = "Dispatch Commander Ruag", map = 1435, x = 47.79, y = 54.95, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 1429, title = "The Atal'ai Exile", npc = 1443, npcName = "Fel'zerul", map = 1435, x = 47.93, y = 54.79, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2622, title = "The Missing Orders", npc = 7643, npcName = "Bengor", map = 1435, x = 44.98, y = 57.34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 699, title = "Lack of Surplus", npc = 5592, npcName = "Tok'Kar", map = 1435, x = 81.32, y = 80.97, f = "e" },
				},
			},
			{
				note = "Crocodiles. Careful, stealthed enemies.",
				goals = {
					{ t = "collect", quest = 699, item = 6168, itemName = "Sawtooth Snapper Claw", count = 6, oi = 1, map = 1435, x = 82.0, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 699, title = "Lack of Surplus", npc = 5592, npcName = "Tok'Kar", map = 1435, x = 81.32, y = 80.97, f = "e" },
					{ t = "accept", quest = 1422, title = "Threat From the Sea", npc = 5592, npcName = "Tok'Kar", map = 1435, x = 81.32, y = 80.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1422, title = "Threat From the Sea", npc = 5593, npcName = "Katar", map = 1435, x = 83.75, y = 80.42, f = "e" },
					{ t = "accept", quest = 1426, title = "Threat From the Sea", npc = 5593, npcName = "Katar", map = 1435, x = 83.75, y = 80.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1426, npc = 747, target = "Marsh Murloc", count = 10, oi = 1, map = 1435, x = 85.2, y = 82.2, f = "e" },
				},
			},
			{
				label = "Kill_Marsh_Flesheaters",
				along = true,
				goals = {
					{ t = "kill", quest = 1426, npc = 751, target = "Marsh Flesheater", count = 10, oi = 3, map = 1435, x = 86.0, y = 80.2, f = "e" },
				},
			},
			{
				label = "Kill_Marsh_Inkspewers",
				along = true,
				goals = {
					{ t = "kill", quest = 1426, npc = 750, target = "Marsh Inkspewer", count = 10, oi = 2, map = 1435, x = 86.4, y = 83.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1426, title = "Threat From the Sea", npc = 5593, npcName = "Katar", map = 1435, x = 83.76, y = 80.43, f = "e" },
					{ t = "accept", quest = 1427, title = "Threat From the Sea", npc = 5593, npcName = "Katar", map = 1435, x = 83.76, y = 80.43, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1427, title = "Threat From the Sea", npc = 5592, npcName = "Tok'Kar", map = 1435, x = 81.31, y = 80.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 46", map = 1435, x = 85.2, y = 82.2 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1428, title = "Continued Threat", npc = 5593, npcName = "Katar", map = 1435, x = 83.76, y = 80.41, f = "e" },
				},
			},
			{
				note = "Inside the cave. Avoid Swamp Talker. Level 50 grey murloc.",
				goals = {
					{ t = "kill", quest = 1428, npc = 750, target = "Marsh Inkspewer", count = 10, oi = 1, map = 1435, x = 66.37, y = 76.54, f = "e" },
					{ t = "kill", quest = 1428, npc = 751, target = "Marsh Flesheater", count = 10, oi = 2, map = 1435, x = 66.37, y = 76.54, f = "e" },
					{ t = "kill", quest = 1428, npc = 752, target = "Marsh Oracle", count = 10, oi = 3, map = 1435, x = 66.37, y = 76.54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1435, x = 66.37, y = 76.54 },
					{ t = "turnin", quest = 1428, title = "Continued Threat", npc = 5593, npcName = "Katar", map = 1435, x = 83.75, y = 80.42, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5883, npcName = "Enyo", map = 1454, x = 38.79, y = 85.65, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "accept", quest = 1119, title = "Zanzil's Mixture and a Fool's Stout", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Collect from the bank.",
				goals = {
					{ t = "collect", quest = 3122, item = 9628, itemName = "Neeru's Herb Pouch", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 1187, item = 5862, itemName = "Seaforium Booster", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 3520, item = 10699, itemName = "Yeh'kinya's Bramble", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 2741, item = 8564, itemName = "Hippogryph Egg", map = 1434, x = 26.54, y = 76.57, f = "e" },
				},
			},
			{
				note = "Deposit into the bank.",
				goals = {
					{ t = "complete", quest = 1429, title = "The Atal'ai Exile", note = "bank Bundle of Atal'ai Artifacts##6193", map = 1434, x = 26.54, y = 76.57, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", text = "Train Undead Horsemanship", map = 1420, x = 60.08, y = 52.57 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 6018, npcName = "Ur'kyo", map = 1454, x = 35.59, y = 87.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3344, npcName = "Kardris Dreamseeker", map = 1454, x = 38.8, y = 36.38, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3328, npcName = "Ormok", map = 1454, x = 43.91, y = 54.63, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3325, npcName = "Mirket", map = 1454, x = 48.62, y = 46.95, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5815, npcName = "Kurgul", map = 1454, x = 47.52, y = 46.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3353, npcName = "Grezz Ragefist", map = 1454, x = 79.78, y = 31.42, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3352, npcName = "Ormak Grimshot", map = 1454, x = 66.06, y = 18.54, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "goto", text = "Train Wolf Riding", map = 1454, x = 69.4, y = 13.1 },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "goto", text = "Train Raptor Riding", map = 1411, x = 55.28, y = 75.49 },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", text = "Train Kodo Riding", map = 1412, x = 46.78, y = 62.01 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3122, title = "Return to Witch Doctor Uzer'i", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3123, title = "Testing the Vessel", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
					{ t = "accept", quest = 3380, title = "The Sunken Temple", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
				},
			},
		},
	})
end

