-- TuWoW_Leveling — Guides/Leveling_Horde_23.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-stranglethorn-vale-and-swamp-of-sorrows-40-41",
		pack = "guides",
		title = "Stranglethorn Vale & Swamp of Sorrows",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-desolace-41-41",
		author = "TuWoW & Zygor",
		minLevel = 40,
		maxLevel = 41,
		zone = 1413,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 1270, title = "Stinky's Escape", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
				},
			},
			{
				note = "Upper level of the docks. Inside the building.",
				goals = {
					{ t = "accept", quest = 577, title = "Some Assembly Required", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.29, y = 77.59, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "accept", quest = 600, title = "Venture Company Mining", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "accept", quest = 209, title = "Skullsplitter Tusks", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.13, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 669, title = "Sunken Treasure", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.17, y = 77.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 572, title = "Mok'thardin's Enchantment", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1434, x = 32.12, y = 29.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 584, title = "Bloodscalp Clan Heads", npc = 2497, npcName = "Nimboya", map = 1434, x = 32.16, y = 27.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 598, title = "Split Bone Necklace", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.27, y = 27.71, f = "e" },
					{ t = "turnin", quest = 1240, title = "The Troll Witchdoctor", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.27, y = 27.71, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Run down the coast and follow the path up", map = 1434, x = 21.43, y = 10.13 },
					{ t = "collect", quest = 584, item = 3905, itemName = "Nezzliok's Head", oi = 2, map = 1434, x = 23.52, y = 9.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 584, item = 3904, itemName = "Gan'zulah's Head", oi = 1, map = 1434, x = 23.44, y = 8.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 584, title = "Bloodscalp Clan Heads", map = 1434, x = 32.22, y = 27.6, f = "e" },
					{ t = "accept", quest = 585, title = "Speaking with Nezzliok", map = 1434, x = 32.22, y = 27.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 572, item = 3863, itemName = "Jungle Stalker Feather", count = 10, oi = 1, map = 1434, x = 33.4, y = 40.4, f = "e" },
				},
			},
			{
				label = "Kill_Jungle_Stalkers",
				along = true,
				goals = {
					{ t = "kill", quest = 196, npc = 687, target = "Jungle Stalker", count = 10, oi = 1, map = 1434, x = 33.4, y = 40.4, f = "e" },
				},
			},
			{
				note = "Goblins.",
				goals = {
					{ t = "collect", quest = 600, item = 3917, itemName = "Singing Blue Crystal", count = 10, oi = 1, map = 1434, x = 41.4, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 585, item = 3907, itemName = "Ziata'jai Trophy", oi = 2, map = 1434, x = 42.21, y = 36.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 585, item = 3906, itemName = "Balia'mah Trophy", oi = 1, map = 1434, x = 46.14, y = 32.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 585, item = 3908, itemName = "Zul'Mamwe Trophy", oi = 3, map = 1434, x = 47.65, y = 39.54, f = "e" },
				},
			},
			{
				label = "Collect_Skullsplitter_Tusks_And_Split_Bones_Necklaces",
				along = true,
				note = "Trolls.",
				goals = {
					{ t = "collect", quest = 209, item = 1524, itemName = "Skullsplitter Tusk", count = 18, oi = 1, map = 1434, x = 42.2, y = 36.2, f = "e" },
					{ t = "collect", quest = 598, item = 3916, itemName = "Split Bone Necklace", count = 25, oi = 1, map = 1434, x = 42.2, y = 36.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 41", map = 1434, x = 42.2, y = 36.2 },
				},
			},
			{
				note = "In and around the water.",
				goals = {
					{ t = "collect", quest = 577, item = 4104, itemName = "Snapjaw Crocolisk Skin", count = 5, oi = 1, map = 1434, x = 38.4, y = 30.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 572, title = "Mok'thardin's Enchantment", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1434, x = 32.12, y = 29.24, f = "e" },
				},
			},
			{
				note = "Deposit into the bank.",
				goals = {
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 1##2725", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 4##2728", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 6##2730", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 8##2732", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 10##2734", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 11##2735", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 14##2738", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 16##2740", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 18##2742", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 20##2744", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 21##2745", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 24##2748", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 25##2749", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 26##2750", map = 1434, x = 26.54, y = 76.57 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 27##2751", map = 1434, x = 26.54, y = 76.57 },
				},
			},
			{
				note = "Upper level of the docks. Inside the building.",
				goals = {
					{ t = "turnin", quest = 577, title = "Some Assembly Required", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.29, y = 77.59, f = "e" },
					{ t = "accept", quest = 628, title = "Excelsior", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.29, y = 77.59, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "turnin", quest = 600, title = "Venture Company Mining", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "sethome", location = "Booty Bay", map = 1434, x = 27.04, y = 77.31, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "accept", quest = 1116, title = "Dream Dust in the Swamp", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 209, title = "Skullsplitter Tusks", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 598, title = "Split Bone Necklace", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.27, y = 27.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 585, title = "Speaking with Nezzliok", map = 1434, x = 32.22, y = 27.6, f = "e" },
					{ t = "accept", quest = 1261, title = "Marg Speaks", map = 1434, x = 32.22, y = 27.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 196, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
					{ t = "accept", quest = 197, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				note = "Avoid Darkshire.",
				goals = {
					{ t = "accept", quest = 1372, title = "Nothing But The Truth", npc = 5418, npcName = "Deathstalker Zraedus", map = 1431, x = 87.81, y = 35.63, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1372, title = "Nothing But The Truth", npc = 5414, npcName = "Apothecary Faustin", map = 1431, x = 87.46, y = 35.25, f = "e" },
				},
			},
			{
				note = "Tiny flying dragons. Skip once no more to kill. Can finish later.",
				goals = {
					{ t = "collect", quest = 1116, item = 5803, itemName = "Speck of Dream Dust", count = 10, oi = 1, map = 1435, x = 12.4, y = 57.4, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 698, title = "Lack of Surplus", npc = 5591, npcName = "Dar", map = 1435, x = 44.7, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Stonard", map = 1435, x = 46.07, y = 54.82, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1420, title = "Report to Helgrum", npc = 1442, npcName = "Helgrum the Swift", map = 1435, x = 47.74, y = 55.2, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 1424, title = "Pool of Tears", npc = 1443, npcName = "Fel'zerul", map = 1435, x = 47.93, y = 54.8, f = "e" },
				},
			},
			{
				note = "Humanoid creature with 2 guards. Walks a large path.",
				goals = {
					{ t = "collect", item = 6196, itemName = "Noboru's Cudgel", map = 1435, x = 54.9, y = 34.1, f = "e" },
					{ t = "use", item = 6196, itemName = "Noboru's Cudgel" },
					{ t = "accept", quest = 1392, title = "Noboru the Cudgel", npc = 5477, npcName = "Noboru the Cudgel", map = 1435, x = 54.9, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1392, title = "Noboru the Cudgel", npc = 1776, npcName = "Magtoor", map = 1435, x = 25.99, y = 31.4, f = "e" },
					{ t = "accept", quest = 1389, title = "Draenethyst Crystals", npc = 1776, npcName = "Magtoor", map = 1435, x = 25.99, y = 31.4, f = "e" },
				},
			},
			{
				note = "Walks around. Multiple locations.",
				goals = {
					{ t = "collect", quest = 1373, item = 6190, itemName = "Draenethyst Shard", oi = 1, map = 1435, x = 61.31, y = 23.25, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing. Kill nearby enemies to the south first.",
				goals = {
					{ t = "accept", quest = 1393, title = "Galen's Escape", npc = 5391, npcName = "Galen Goodward", map = 1435, x = 65.41, y = 18.23, f = "e" },
				},
			},
			{
				note = "Follow and protect Galen Goodward.",
				goals = {
					{ t = "complete", quest = 1393, title = "Galen's Escape", note = "Escort Galen Out of the Fallow Sanctuary", map = 1435, x = 53.05, y = 29.64, f = "e" },
				},
			},
			{
				label = "Collect_Draenethyst_Crystals",
				along = true,
				note = "Large blue crystals.",
				goals = {
					{ t = "collect", quest = 1389, item = 6071, itemName = "Draenethyst Crystal", count = 6, oi = 1, map = 1435, x = 55.0, y = 30.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1393, title = "Galen's Escape", map = 1435, x = 47.81, y = 39.76, f = "e" },
				},
			},
			{
				label = "Collect_Unprepared_Sawtooth_Flanks",
				along = true,
				goals = {
					{ t = "collect", quest = 698, item = 6169, itemName = "Unprepared Sawtooth Flank", count = 8, oi = 1, map = 1435, x = 46.4, y = 41.2, f = "e" },
				},
			},
			{
				note = "Various small brown objects. Underwater. Reduce the Ground Clutter setting to 1. In System > Graphics game settings. Makes them easier to see.",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 1424, item = 6175, itemName = "Atal'ai Artifact", count = 10, oi = 1, map = 1435, x = 65.9, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 698, title = "Lack of Surplus", npc = 5592, npcName = "Tok'Kar", map = 1435, x = 81.32, y = 80.97, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1424, title = "Pool of Tears", npc = 1443, npcName = "Fel'zerul", map = 1435, x = 47.93, y = 54.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1389, title = "Draenethyst Crystals", npc = 1776, npcName = "Magtoor", map = 1435, x = 25.99, y = 31.4, f = "e" },
				},
			},
			{
				note = "Tiny flying dragons.",
				goals = {
					{ t = "collect", quest = 1116, item = 5803, itemName = "Speck of Dream Dust", count = 10, oi = 1, map = 1435, x = 12.4, y = 57.4, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 1116, title = "Dream Dust in the Swamp", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "accept", quest = 1117, title = "Rumors for Kravel", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
					{ t = "accept", quest = 2864, title = "Tran'rek", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "accept", quest = 1183, title = "Goblin Sponsorship", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2872, title = "Stoley's Debt", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.78, y = 77.07, f = "e" },
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
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", text = "Train Undead Horsemanship", map = 1420, x = 60.08, y = 52.57 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Camp Taurajo", map = 1413, x = 45.58, y = 59.04, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", text = "Train Kodo Riding", map = 1412, x = 46.78, y = 62.01 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-desolace-41-41",
		pack = "guides",
		title = "Desolace",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-tanaris-41-42",
		author = "TuWoW & Zygor",
		minLevel = 41,
		maxLevel = 41,
		zone = 1443,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 5581, title = "Portals of the Legion", npc = 11624, npcName = "Taiga Wisemane", map = 1443, x = 25.81, y = 68.22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1373, title = "Ongeku", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.22, y = 79.25, f = "e" },
					{ t = "accept", quest = 1374, title = "Khan Jehn", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.22, y = 79.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6134, title = "Ghost-o-plasm Round Up", npc = 6019, npcName = "Hornizz Brimbuzzle", map = 1443, x = 47.83, y = 61.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1443, x = 55.46, y = 58.07 },
					{ t = "accept", quest = 1488, title = "The Corrupter", npc = 5641, npcName = "Takata Steelblade", map = 1443, x = 52.57, y = 54.38, f = "e" },
				},
			},
			{
				note = "Purple stone circles. Guardian appears.",
				goals = {
					{ t = "complete", quest = 5581, title = "Portals of the Legion", note = "Banish #6# Demon Portals", map = 1443, x = 53.9, y = 79.14, f = "e" },
				},
			},
			{
				note = "Avoid Lord Azrethoc. Level 40 elite brown demon with wings. Walks around nearby.",
				goals = {
					{ t = "kill", quest = 1488, npc = 5771, target = "Jugkar Grim'rod", oi = 2, map = 1443, x = 55.91, y = 77.76, f = "e" },
				},
			},
			{
				note = "Level 40 elite brown demon with wings. Pretty easy to solo. Walks around. May need help.",
				goals = {
					{ t = "kill", quest = 1488, npc = 5760, target = "Lord Azrethoc", oi = 1, map = 1443, x = 56.02, y = 77.76, f = "e" },
				},
			},
			{
				note = "Next to huge bones. Kill nearby enemies to clear the area first. Ghost centaurs. Walking towards the spinning object. Become hostile when they reach it. Pull them away to fight them. Won't pull together if neutral. Will pull together if hostile. Can wait for them to despawn and use item again. Slower, but much safer.",
				goals = {
					{ t = "use", item = 15848, itemName = "Crate of Ghost Magnets" },
					{ t = "collect", quest = 6134, item = 15849, itemName = "Ghost-o-plasm", count = 8, oi = 1, map = 1443, x = 63.81, y = 91.27, f = "e" },
				},
			},
			{
				note = "Walks around. In and out of the tent.",
				goals = {
					{ t = "collect", quest = 1374, item = 6072, itemName = "Khan Jehn's Head", oi = 1, map = 1443, x = 66.39, y = 80.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1443, x = 57.42, y = 56.45 },
					{ t = "turnin", quest = 1488, title = "The Corrupter", npc = 5641, npcName = "Takata Steelblade", map = 1443, x = 52.57, y = 54.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6134, title = "Ghost-o-plasm Round Up", npc = 6019, npcName = "Hornizz Brimbuzzle", map = 1443, x = 47.83, y = 61.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1374, title = "Khan Jehn", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.22, y = 79.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path into Shadowprey Village", map = 1443, x = 26.27, y = 74.83 },
					{ t = "turnin", quest = 5581, title = "Portals of the Legion", npc = 11624, npcName = "Taiga Wisemane", map = 1443, x = 25.81, y = 68.22, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-tanaris-41-42",
		pack = "guides",
		title = "Tanaris",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-dustwallow-marsh-42-42",
		author = "TuWoW & Zygor",
		minLevel = 41,
		maxLevel = 42,
		zone = 1412,
		version = 1,
		steps = {
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", text = "Train Kodo Riding", map = 1412, x = 46.78, y = 62.01 },
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
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", text = "Train Undead Horsemanship", map = 1420, x = 60.08, y = 52.57 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2864, title = "Tran'rek", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1707, title = "Water Pouch Bounty", npc = 7408, npcName = "Spigot Operator Luglunket", map = 1446, x = 52.48, y = 28.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 243, title = "Into the Field", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
					{ t = "accept", quest = 379, title = "Slake That Thirst", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
					{ t = "accept", quest = 1690, title = "Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				note = "Taming a temporary pet soon. Learning Claw (Rank 6).",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1690, title = "Wastewander Justice", note = "Stable Your Pet", map = 1446, x = 52.25, y = 28.0, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on a Scorpid Hunter. Scorpions. Kill enemies nearby.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1690, title = "Wastewander Justice", note = "Learn the Claw (Rank 6) Pet Ability", map = 1446, x = 50.0, y = 31.0, f = "e" },
				},
			},
			{
				note = "Abandon your temporary pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1690, title = "Wastewander Justice", note = "Retrieve Your Pet", map = 1446, x = 52.25, y = 28.0, f = "e" },
				},
			},
			{
				note = "Use Beast Training ability.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1690, title = "Wastewander Justice", note = "Teach Claw (Rank 6) to Your Pet" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3520, title = "Screecher Spirits", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.99, y = 22.36, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2872, title = "Stoley's Debt", npc = 7881, npcName = "Stoley", map = 1446, x = 67.11, y = 23.98, f = "e" },
				},
			},
			{
				label = "Collect_Wastewander_Water_Pouches",
				note = "Humans. Don't vendor them.",
				goals = {
					{ t = "collect", item = 8483, itemName = "Wastewander Water Pouch", count = 10, map = 1446, x = 62.8, y = 30.4, f = "e" },
				},
			},
			{
				label = "Kill_Wastewander_Bandits_And_Thieves",
				along = true,
				goals = {
					{ t = "kill", quest = 1690, npc = 5618, target = "Wastewander Bandit", count = 10, oi = 1, map = 1446, x = 62.8, y = 30.4, f = "e" },
					{ t = "kill", quest = 1690, npc = 5616, target = "Wastewander Thief", count = 10, oi = 2, map = 1446, x = 62.8, y = 30.4, f = "e" },
				},
			},
			{
				note = "Higher level enemy soon.",
				goals = {
					{ t = "goto", text = "ding 42", map = 1446, x = 62.8, y = 30.4 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 379, title = "Slake That Thirst", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
					{ t = "turnin", quest = 1690, title = "Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1707, title = "Water Pouch Bounty", npc = 7408, npcName = "Spigot Operator Luglunket", map = 1446, x = 52.48, y = 28.44, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Gadgetzan", map = 1446, x = 52.51, y = 27.92, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "goto", text = "bank Model 4711-FTZ Power Source##8524", map = 1446, x = 52.3, y = 28.91 },
					{ t = "complete", quest = 3520, title = "Screecher Spirits", note = "bank Yeh'kinya's Bramble##10699", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1117, title = "Rumors for Kravel", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1118, title = "Back to Booty Bay", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1137, title = "News for Fizzle", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.06, y = 77.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1183, title = "Goblin Sponsorship", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.18, y = 75.88, f = "e" },
					{ t = "accept", quest = 1186, title = "The Eighteenth Pilot", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.18, y = 75.88, f = "e" },
					{ t = "accept", quest = 1190, title = "Keeping Pace", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.18, y = 75.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1186, title = "The Eighteenth Pilot", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.33, y = 76.09, f = "e" },
					{ t = "accept", quest = 1187, title = "Razzeric's Tweaking", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.33, y = 76.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1191, title = "Zamek's Distraction", npc = 4709, npcName = "Zamek", map = 1441, x = 79.81, y = 77.02, f = "e" },
				},
			},
			{
				note = "Wait for Rizzle to run away. Inside the building.",
				goals = {
					{ t = "turnin", quest = 1190, title = "Keeping Pace", map = 1441, x = 77.21, y = 77.38, f = "e" },
					{ t = "accept", quest = 1194, title = "Rizzle's Schematics", map = 1441, x = 77.21, y = 77.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1194, title = "Rizzle's Schematics", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.18, y = 75.88, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "goto", text = "bank Kravel's Scheme##5826", map = 1446, x = 52.3, y = 28.91 },
				},
			},
		},
	})
end

