-- TuWoW_Leveling — Guides/Leveling_Alliance_30.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-ungoro-crater-49-50",
		pack = "guides",
		title = "Un'Goro Crater",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-stranglethorn-vale-50-50",
		author = "TuWoW & Zygor",
		minLevel = 49,
		maxLevel = 50,
		zone = 1449,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 4289, title = "The Apes of Un'Goro", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.64, y = 75.96, f = "e" },
					{ t = "accept", quest = 4290, title = "The Fare of Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.64, y = 75.96, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3844, title = "It's a Secret to Everybody", map = 1449, x = 63.02, y = 68.5, f = "e" },
				},
			},
			{
				note = "Underwater.",
				goals = {
					{ t = "turnin", quest = 3844, title = "It's a Secret to Everybody", map = 1449, x = 63.12, y = 69.02, f = "e" },
					{ t = "accept", quest = 3845, title = "It's a Secret to Everybody", map = 1449, x = 63.12, y = 69.02, f = "e" },
				},
			},
			{
				note = "Avoid the elite t-rex.",
				goals = {
					{ t = "collect", quest = 4290, item = 11504, itemName = "Piece of Threshadon Carcass", oi = 1, map = 1449, x = 68.75, y = 56.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4290, title = "The Fare of Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.64, y = 75.97, f = "e" },
					{ t = "accept", quest = 4291, title = "The Scent of Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.64, y = 75.97, f = "e" },
				},
			},
			{
				note = "Stand on piles of purple eggs.",
				goals = {
					{ t = "collect", quest = 4291, item = 11509, itemName = "Ravasaur Pheromone Gland", count = 2, oi = 1, map = 1449, x = 67.2, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4291, title = "The Scent of Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.97, f = "e" },
					{ t = "accept", quest = 4292, title = "The Bait for Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.97, f = "e" },
				},
			},
			{
				label = "Collect_A_Mangled_Journal",
				along = true,
				note = "Any in Un'Goro Crater.",
				goals = {
					{ t = "collect", item = 11116, itemName = "A Mangled Journal" },
					{ t = "use", item = 11116, itemName = "A Mangled Journal" },
					{ t = "accept", quest = 3884, title = "Williden's Journal", map = 1449, x = 67.2, y = 73.0, f = "e" },
				},
			},
			{
				label = "Collect_Power_Crystals",
				along = true,
				note = "Clusters of colored crystals. Shared spawns, loot all you see. Makes other colors spawn.",
				goals = {
					{ t = "collect", quest = 4284, item = 11186, itemName = "Red Power Crystal", count = 7 },
					{ t = "collect", quest = 4284, item = 11188, itemName = "Yellow Power Crystal", count = 7 },
					{ t = "collect", quest = 4284, item = 11185, itemName = "Green Power Crystal", count = 7 },
					{ t = "collect", quest = 4284, item = 11184, itemName = "Blue Power Crystal", count = 7 },
				},
			},
			{
				goals = {
					{ t = "use", item = 11107, itemName = "A Small Pack" },
					{ t = "collect", quest = 3845, item = 11104, itemName = "Large Compass", oi = 1 },
					{ t = "collect", quest = 3845, item = 11105, itemName = "Curled Map Parchment", oi = 2 },
					{ t = "collect", quest = 3845, item = 11106, itemName = "Lion-headed Key", oi = 3 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3845, title = "It's a Secret to Everybody", npc = 8737, npcName = "Linken", map = 1449, x = 44.66, y = 8.11, f = "e" },
					{ t = "accept", quest = 3908, title = "It's a Secret to Everybody", npc = 8737, npcName = "Linken", map = 1449, x = 44.66, y = 8.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3884, title = "Williden's Journal", npc = 9270, npcName = "Williden Marshal", map = 1449, x = 43.95, y = 7.14, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1449, x = 43.47, y = 6.79 },
					{ t = "accept", quest = 4284, title = "Crystals of Power", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "turnin", quest = 4284, title = "Crystals of Power", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1449, x = 43.47, y = 6.81 },
					{ t = "accept", quest = 4141, title = "Muigin and Larion", npc = 9119, npcName = "Muigin", map = 1449, x = 42.94, y = 9.64, f = "e" },
				},
			},
			{
				note = "Walking plants.",
				goals = {
					{ t = "collect", quest = 4141, item = 11316, itemName = "Bloodpetal", count = 15, oi = 1, map = 1449, x = 69.2, y = 35.2, f = "e" },
				},
			},
			{
				note = "Helps reach level 50 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 49,117440", map = 1449, x = 69.2, y = 35.2 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4141, title = "Muigin and Larion", npc = 9119, npcName = "Muigin", map = 1449, x = 42.94, y = 9.64, f = "e" },
					{ t = "accept", quest = 4142, title = "A Visit to Gregan", npc = 9119, npcName = "Muigin", map = 1449, x = 42.94, y = 9.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Marshal's Refuge", map = 1449, x = 45.23, y = 5.84, f = "e" },
				},
			},
			{
				label = "Collect_UnGoro_Soil",
				along = true,
				note = "Don't vendor them.",
				goals = {
					{ t = "collect", item = 11018, itemName = "Un'Goro Soil", count = 20 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2605, title = "The Thirsty Goblin", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.81, y = 28.66, f = "e" },
					{ t = "accept", quest = 2606, title = "In Good Taste", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.81, y = 28.66, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 2874, item = 9245, itemName = "Stoley's Bottle", map = 1446, x = 52.3, y = 28.92, f = "e" },
					{ t = "collect", quest = 1122, item = 5807, itemName = "Fool's Stout Report", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 580, item = 3900, itemName = "Pupellyverbos Port", count = 12, map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 3022, title = "Handle With Care", note = "bank A Carefully-packed Crate##9507", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "complete", quest = 4292, title = "The Bait for Lar'korwi", note = "bank Torwa's Pouch##11568", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "goto", text = "bank Un'Goro Soil##11018", map = 1446, x = 52.3, y = 28.91 },
					{ t = "complete", quest = 4142, title = "A Visit to Gregan", note = "bank Bloodpetal##11316", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "complete", quest = 3908, title = "It's a Secret to Everybody", note = "bank Linken's Training Sword##11133", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5863, title = "The Dunemaul Compound", npc = 11758, npcName = "Andi Lynn", map = 1446, x = 52.82, y = 27.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3362, title = "Thistleshrub Valley", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2606, title = "In Good Taste", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.06, y = 26.87, f = "e" },
					{ t = "accept", quest = 2641, title = "Sprinkle's Secret Ingredient", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.06, y = 26.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 162, title = "Rise of the Silithid", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3161, title = "Gahz'ridian", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.93, f = "e" },
					{ t = "accept", quest = 3444, title = "The Stone Circle", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.93, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 162, title = "Rise of the Silithid", note = "bank Insect Analysis Report##8594", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				note = "On the balcony of the building.",
				goals = {
					{ t = "accept", quest = 7065, title = "Corruption of Earth and Seed", npc = 13698, npcName = "Keeper Marandis", map = 1443, x = 63.83, y = 10.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7041, title = "Vyletongue Corruption", npc = 11715, npcName = "Talendria", map = 1443, x = 68.5, y = 8.88, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7028, title = "Twisted Evils", npc = 13656, npcName = "Willow", map = 1443, x = 62.2, y = 39.63, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 7067, title = "The Pariah's Instructions", npc = 13717, npcName = "Centaur Pariah", map = 1443, x = 50.42, y = 86.65, f = "e" },
				},
			},
			{
				note = "Centaur with purple armor. Multiple locations.",
				goals = {
					{ t = "collect", quest = 7067, item = 17757, itemName = "Amulet of Spirits", map = 1443, x = 28.15, y = 62.39, f = "e" },
				},
			},
			{
				note = "Purple section. On Spirit of Gelk. Ghost centaur with a trident. Walks around.",
				goals = {
					{ t = "use", item = 17757, itemName = "Amulet of Spirits" },
					{ t = "collect", quest = 7067, item = 17762, itemName = "Gem of the Second Kahn" },
				},
			},
			{
				note = "Room between the orange and purple sections. On Spirit of Kolk. Ghost centaur with a trident.",
				goals = {
					{ t = "use", item = 17757, itemName = "Amulet of Spirits" },
					{ t = "collect", quest = 7067, item = 17761, itemName = "Gem of the First Khan" },
				},
			},
			{
				note = "Orange section.",
				goals = {
					{ t = "accept", quest = 7044, title = "Legends of Maraudon", npc = 13697, npcName = "Cavindra", map = 1443, x = 31.9, y = 63.8, f = "e" },
				},
			},
			{
				note = "Orange section. Next to the large pool with orange crystals in it.",
				goals = {
					{ t = "use", item = 17693, itemName = "Coated Cerulean Vial" },
					{ t = "collect", quest = 7041, item = 17696, itemName = "Filled Cerulean Vial", oi = 2 },
				},
			},
			{
				note = "Orange section. On Spirit of Magra. Walks around.",
				goals = {
					{ t = "use", item = 17757, itemName = "Amulet of Spirits" },
					{ t = "collect", quest = 7067, item = 17763, itemName = "Gem of the Third Kahn" },
				},
			},
			{
				note = "Orange section. First boss.",
				goals = {
					{ t = "collect", quest = 7044, item = 17702, itemName = "Celebrian Rod", oi = 2 },
				},
			},
			{
				label = "Collect_Gem_Of_The_Fifth_Khan",
				along = true,
				note = "On Spirit of Veng. Walks around. Orange section.",
				goals = {
					{ t = "use", item = 17757, itemName = "Amulet of Spirits" },
					{ t = "collect", quest = 7067, item = 17765, itemName = "Gem of the Fifth Kahn" },
				},
			},
			{
				label = "Heal_Vylestem_Vines",
				along = true,
				note = "Next to Vylestem Vines. Tree stumps with large leaves. Foulspore Cavern area. Orange section.",
				goals = {
					{ t = "use", item = 17696, itemName = "Filled Cerulean Vial" },
					{ t = "complete", quest = 7041, title = "Vyletongue Corruption", note = "Heal 8 Vylestem Vines" },
				},
			},
			{
				note = "Purple section. On Spirit of Maraudos. Ghost centaur with a spear. Walks around. In The Wicked Grotto area.",
				goals = {
					{ t = "use", item = 17757, itemName = "Amulet of Spirits" },
					{ t = "collect", quest = 7067, item = 17764, itemName = "Gem of the Fourth Kahn" },
				},
			},
			{
				goals = {
					{ t = "use", item = 17765, itemName = "Gem of the Fifth Kahn" },
					{ t = "collect", quest = 7067, item = 17758, itemName = "Amulet of Union", oi = 1 },
				},
			},
			{
				note = "Purple section. Vyletongue Seat area. Small room on the northern side.",
				goals = {
					{ t = "collect", quest = 7044, item = 17703, itemName = "Celebrian Diamond", oi = 1 },
				},
			},
			{
				note = "Purple section. Poison Falls area. On a small island.",
				goals = {
					{ t = "turnin", quest = 7044, title = "Legends of Maraudon", npc = 13716, npcName = "Celebras the Redeemed" },
					{ t = "accept", quest = 7046, title = "The Scepter of Celebras", npc = 13716, npcName = "Celebras the Redeemed" },
				},
			},
			{
				note = "Purple section. Follow Celebras the Redeemed. Stone he leads you to.",
				goals = {
					{ t = "complete", quest = 7046, title = "The Scepter of Celebras", note = "Create the Scepter of Celebras" },
				},
			},
			{
				note = "Purple section.",
				goals = {
					{ t = "turnin", quest = 7046, title = "The Scepter of Celebras", npc = 13716, npcName = "Celebras the Redeemed" },
				},
			},
			{
				note = "Purple section. Final boss.",
				goals = {
					{ t = "kill", quest = 7065, npc = 12201, target = "Princess Theradras", oi = 1 },
				},
			},
			{
				note = "Purple section. Appears center of the room. After Princess Theradras is killed.",
				goals = {
					{ t = "accept", quest = 7066, title = "Seed of Life", npc = 12238, npcName = "Zaetar's Spirit" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 7067, title = "The Pariah's Instructions", npc = 13717, npcName = "Centaur Pariah", map = 1443, x = 43.4, y = 84.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 7028, title = "Twisted Evils", npc = 13656, npcName = "Willow", map = 1443, x = 62.2, y = 39.63, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7041, title = "Vyletongue Corruption", npc = 11715, npcName = "Talendria", map = 1443, x = 68.5, y = 8.88, f = "e" },
				},
			},
			{
				note = "On the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 7065, title = "Corruption of Earth and Seed", npc = 13698, npcName = "Keeper Marandis", map = 1443, x = 63.83, y = 10.67, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 7312, npcName = "Dink", map = 1455, x = 27.16, y = 8.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 5114, npcName = "Bilban Tosslespanner", map = 1455, x = 65.9, y = 88.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 5117, npcName = "Regnus Thundergranite", map = 1455, x = 69.87, y = 82.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10090, npcName = "Belia Thundergranite", map = 1455, x = 70.86, y = 85.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 5167, npcName = "Fenthwick", map = 1455, x = 65.9, y = 88.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 5172, npcName = "Briarthorn", map = 1455, x = 50.35, y = 5.66, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6382, npcName = "Jubahl Corpseseeker", map = 1455, x = 50.35, y = 5.66, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5148, npcName = "Beldruk Doombrow", map = 1455, x = 24.54, y = 4.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 5143, npcName = "Toldren Deepiron", map = 1455, x = 25.21, y = 10.74, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "goto", text = "Train Ram Riding", map = 1426, x = 63.94, y = 50.1 },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "goto", text = "Train Mechanostrider Piloting", map = 1426, x = 49.15, y = 48.13 },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", text = "Train Horse Riding", map = 1429, x = 84.32, y = 64.87 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-stranglethorn-vale-50-50",
		pack = "guides",
		title = "Stranglethorn Vale",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-searing-gorge-50-51",
		author = "TuWoW & Zygor",
		minLevel = 50,
		maxLevel = 50,
		zone = 1434,
		version = 1,
		steps = {
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "accept", quest = 608, title = "The Bloodsail Buccaneers", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.17, y = 77.01, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2874, title = "Deliver to MacKinley", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.78, y = 77.07, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "turnin", quest = 580, title = "Whiskey Slim's Lost Grog", npc = 2491, npcName = "Whiskey Slim", map = 1434, x = 27.13, y = 77.45, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "turnin", quest = 1122, title = "Report Back to Fizzlebub", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Tiny green bottles. Next to the water along the beach.",
				goals = {
					{ t = "goto", text = "Run through the tunnel to leave Booty Bay", map = 1434, x = 28.0, y = 73.46 },
					{ t = "collect", item = 4098, itemName = "Carefully Folded Note" },
					{ t = "use", item = 4098, itemName = "Carefully Folded Note" },
					{ t = "accept", quest = 594, title = "Message in a Bottle", map = 1434, x = 35.07, y = 72.9, f = "e" },
				},
			},
			{
				note = "Middle floor inside the ship.",
				goals = {
					{ t = "kill", quest = 608, npc = 2548, target = "Captain Keelhaul", oi = 2, map = 1434, x = 29.2, y = 88.34, f = "e" },
				},
			},
			{
				label = "Collect_Cortellos_Riddle_1",
				along = true,
				note = "White rolled up scroll. Middle floor or bottom floor inside the ship. Multiple locations. Can be on another ship. Skip if not on this ship. notinsticky",
				goals = {
					{ t = "collect", quest = 624, item = 4056, itemName = "Cortello's Riddle", map = 1434, x = 29.2, y = 88.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 4056, itemName = "Cortello's Riddle" },
					{ t = "accept", quest = 624, title = "Cortello's Riddle" },
				},
			},
			{
				note = "Middle floor inside the ship.",
				goals = {
					{ t = "kill", quest = 608, npc = 2546, target = "Fleet Master Firallon", oi = 3, map = 1434, x = 30.58, y = 90.64, f = "e" },
				},
			},
			{
				label = "Collect_Cortellos_Riddle_2",
				along = true,
				note = "White rolled up scroll. Middle floor or bottom floor inside the ship. Multiple locations. Can be on another ship. Skip if not on this ship. notinsticky",
				goals = {
					{ t = "collect", quest = 624, item = 4056, itemName = "Cortello's Riddle", map = 1434, x = 30.64, y = 90.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 4056, itemName = "Cortello's Riddle" },
					{ t = "accept", quest = 624, title = "Cortello's Riddle" },
				},
			},
			{
				note = "Middle floor inside the ship.",
				goals = {
					{ t = "kill", quest = 608, npc = 2550, target = "Captain Stillwater", oi = 1, map = 1434, x = 32.87, y = 88.2, f = "e" },
				},
			},
			{
				label = "Collect_Cortellos_Riddle_3",
				along = true,
				note = "White rolled up scroll. Middle floor or bottom floor inside the ship. Multiple locations. Can be on another ship. Skip if not on this ship. notinsticky",
				goals = {
					{ t = "collect", quest = 624, item = 4056, itemName = "Cortello's Riddle", map = 1434, x = 33.39, y = 88.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 4056, itemName = "Cortello's Riddle" },
					{ t = "accept", quest = 624, title = "Cortello's Riddle" },
				},
			},
			{
				note = "Wait if she's missing. Careful, stealthed enemies.",
				goals = {
					{ t = "turnin", quest = 594, title = "Message in a Bottle", npc = 2634, npcName = "Princess Poobah", map = 1434, x = 38.53, y = 80.58, f = "e" },
				},
			},
			{
				note = "Level 43 elite blue raptor. Walks around. Multiple locations.",
				goals = {
					{ t = "collect", quest = 197, item = 3877, itemName = "Talon of Tethis", oi = 1, map = 1434, x = 28.8, y = 45.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 197, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
					{ t = "accept", quest = 208, title = "Big Game Hunter", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				note = "Level 43 elite white tiger. Summons 2 non-elite lower level helpers. Around 50% health. Walks around. Top of the hill. May need help.",
				goals = {
					{ t = "collect", quest = 208, item = 3880, itemName = "Head of Bangalash", oi = 1, map = 1434, x = 38.35, y = 35.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 208, title = "Big Game Hunter", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				note = "Under the bridge. Underwater.",
				goals = {
					{ t = "turnin", quest = 624, title = "Cortello's Riddle", map = 1435, x = 22.86, y = 48.19, f = "e" },
					{ t = "accept", quest = 625, title = "Cortello's Riddle", map = 1435, x = 22.86, y = 48.19, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 608, title = "The Bloodsail Buccaneers", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.17, y = 77.01, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "sethome", location = "Booty Bay", map = 1434, x = 27.04, y = 77.31, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 625, title = "Cortello's Riddle", map = 1445, x = 31.1, y = 66.15, f = "e" },
					{ t = "accept", quest = 626, title = "Cortello's Riddle", map = 1445, x = 31.1, y = 66.15, f = "e" },
				},
			},
			{
				note = "Collect from the bank.",
				goals = {
					{ t = "collect", quest = 1469, item = 6287, itemName = "Atal'ai Tablet Fragment", map = 1434, x = 26.54, y = 76.57, f = "e" },
					{ t = "collect", quest = 4449, item = 4306, itemName = "Silk Cloth", count = 15, map = 1434, x = 26.54, y = 76.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Stormwind City", map = 1453, x = 60.36, y = 75.27, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1469, title = "Rhapsody's Tale", npc = 5384, npcName = "Brohann Caskbelly", map = 1453, x = 69.42, y = 40.4, f = "e" },
				},
			},
			{
				note = "Walk into the portal.",
				goals = {
					{ t = "goto", text = "Enter the Deeprun Tram", map = 1453, x = 69.1, y = 30.75 },
				},
			},
		},
	})
end

