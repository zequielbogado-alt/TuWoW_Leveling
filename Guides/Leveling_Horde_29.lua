-- TuWoW_Leveling — Guides/Leveling_Horde_29.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-feralas-and-ungoro-crater-49-50",
		pack = "guides",
		title = "Feralas & Un'Goro Crater (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-feralas-and-ungoro-crater-49-50-part-2",
		author = "TuWoW & Zygor",
		minLevel = 49,
		maxLevel = 50,
		zone = 1444,
		version = 1,
		steps = {
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 3062, title = "Dark Heart", npc = 7776, npcName = "Talo Thornhoof", map = 1444, x = 76.18, y = 43.83, f = "e" },
					{ t = "accept", quest = 3063, title = "Vengeance on the Northspring", npc = 7776, npcName = "Talo Thornhoof", map = 1444, x = 76.18, y = 43.83, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7734, title = "Improved Quality", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3123, title = "Testing the Vessel", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
					{ t = "accept", quest = 3124, title = "Hippogryph Muisek", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
					{ t = "accept", quest = 3128, title = "Natural Materials", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
				},
			},
			{
				note = "Hippogryphs. On their corpses.",
				goals = {
					{ t = "use", item = 9619, itemName = "Hippogryph Muisek Vessel" },
					{ t = "collect", quest = 3124, item = 9595, itemName = "Hippogryph Muisek", count = 10, oi = 1, map = 1444, x = 57.4, y = 62.4, f = "e" },
					{ t = "collect", quest = 3128, item = 9591, itemName = "Resilient Sinew", count = 20, oi = 3, map = 1444, x = 57.4, y = 62.4, f = "e" },
					{ t = "collect", quest = 3128, item = 9592, itemName = "Metallic Fragments", count = 40, oi = 4, map = 1444, x = 57.4, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3124, title = "Hippogryph Muisek", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
					{ t = "accept", quest = 3125, title = "Faerie Dragon Muisek", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
				},
			},
			{
				note = "On their corpses.",
				goals = {
					{ t = "use", item = 9620, itemName = "Faerie Dragon Muisek Vessel" },
					{ t = "collect", quest = 3125, item = 9596, itemName = "Faerie Dragon Muisek", count = 8, oi = 1, map = 1444, x = 69.4, y = 46.8, f = "e" },
					{ t = "collect", quest = 3128, item = 9589, itemName = "Encrusted Minerals", count = 6, oi = 2, map = 1444, x = 69.4, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3125, title = "Faerie Dragon Muisek", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
					{ t = "accept", quest = 3126, title = "Treant Muisek", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
				},
			},
			{
				note = "Walking trees. Walks a large path. On their corpses. Roughly 6 minute respawn.",
				goals = {
					{ t = "use", item = 9606, itemName = "Treant Muisek Vessel" },
					{ t = "collect", quest = 3126, item = 9593, itemName = "Treant Muisek", count = 3, oi = 1, map = 1444, x = 44.0, y = 23.0, f = "e" },
					{ t = "collect", quest = 3128, item = 9590, itemName = "Splintered Log", count = 2, oi = 1, map = 1444, x = 44.0, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3126, title = "Treant Muisek", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
					{ t = "accept", quest = 3127, title = "Mountain Giant Muisek", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
					{ t = "turnin", quest = 3128, title = "Natural Materials", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7003, title = "Zapped Giants", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.81, y = 43.42, f = "e" },
					{ t = "accept", quest = 7721, title = "Fuel for the Zapping", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.81, y = 43.42, f = "e" },
				},
			},
			{
				note = "On Strider enemies. Tall green giants. Makes them non-elite. Item lasts 2 hours. Abandon quest and accept again if you need another.",
				goals = {
					{ t = "use", item = 18904, itemName = "Zorbin's Ultra-Shrinker" },
					{ t = "collect", quest = 7003, item = 18956, itemName = "Miniaturization Residue", count = 15, oi = 1, map = 1444, x = 44.4, y = 49.8, f = "e" },
				},
			},
			{
				label = "Collect_Water_Elemental_Cores",
				along = true,
				note = "Water elementals.",
				goals = {
					{ t = "collect", quest = 7721, item = 18958, itemName = "Water Elemental Core", count = 10, oi = 1, map = 1444, x = 44.2, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7003, title = "Zapped Giants", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.81, y = 43.42, f = "e" },
					{ t = "turnin", quest = 7721, title = "Fuel for the Zapping", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.81, y = 43.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7725, title = "Again With the Zapped Giants", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.81, y = 43.42, f = "e" },
				},
			},
			{
				note = "Yetis. Skin them. Inside and outside the cave.",
				goals = {
					{ t = "collect", item = 18972, itemName = "Perfect Yeti Hide", map = 1444, x = 53.0, y = 32.0, f = "e" },
					{ t = "use", item = 18972, itemName = "Perfect Yeti Hide" },
					{ t = "accept", quest = 7738, title = "Perfect Yeti Hide", npc = 5299, npcName = "Ferocious Rage Scar", map = 1444, x = 51.4, y = 32.4, f = "e" },
				},
			},
			{
				label = "Collect_Rage_Scar_Yeti_Hides",
				along = true,
				note = "Yetis. notinsticky Inside and outside the cave. notinsticky",
				goals = {
					{ t = "collect", quest = 7734, item = 18947, itemName = "Rage Scar Yeti Hide", count = 10, oi = 1, map = 1444, x = 51.4, y = 32.4, f = "e" },
				},
			},
			{
				note = "On rock giant enemies. Makes them non-elite. Item lasts 2 hours. Abandon Again With the Zapped Giants quest and accept again if you need another. Rock giants. On their corpses.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1444, x = 53.32, y = 31.85 },
					{ t = "use", item = 18904, itemName = "Zorbin's Ultra-Shrinker" },
					{ t = "use", item = 9621, itemName = "Mountain Giant Muisek Vessel" },
					{ t = "collect", quest = 3127, item = 9597, itemName = "Mountain Giant Muisek", count = 7, oi = 1, map = 1444, x = 40.2, y = 25.8, f = "e" },
				},
			},
			{
				note = "Harpies.",
				goals = {
					{ t = "collect", quest = 3062, item = 9530, itemName = "Horn of Hatetalon", map = 1444, x = 40.0, y = 15.2, f = "e" },
				},
			},
			{
				note = "Level 50 elite enemy. Should be able to solo. May need help.",
				goals = {
					{ t = "use", item = 9530, itemName = "Horn of Hatetalon" },
					{ t = "collect", quest = 3062, item = 9528, itemName = "Edana's Dark Heart", oi = 1, map = 1444, x = 40.55, y = 8.59, f = "e" },
				},
			},
			{
				label = "Kill_Northspring_Enemies",
				along = true,
				goals = {
					{ t = "kill", quest = 3063, npc = 5362, target = "Northspring Harpy", count = 4, oi = 1, map = 1444, x = 40.0, y = 15.2, f = "e" },
					{ t = "kill", quest = 3063, npc = 5363, target = "Northspring Roguefeather", count = 4, oi = 2, map = 1444, x = 40.0, y = 15.2, f = "e" },
					{ t = "kill", quest = 3063, npc = 5364, target = "Northspring Slayer", count = 4, oi = 3, map = 1444, x = 40.0, y = 15.2, f = "e" },
					{ t = "kill", quest = 3063, npc = 5366, target = "Northspring Windcaller", count = 4, oi = 4, map = 1444, x = 40.0, y = 15.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7064, title = "Corruption of Earth and Seed", npc = 13699, npcName = "Selendra", map = 1443, x = 26.87, y = 77.67, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				goals = {
					{ t = "accept", quest = 7029, title = "Vyletongue Corruption", npc = 11823, npcName = "Vark Battlescar", map = 1443, x = 23.22, y = 70.33, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7028, title = "Twisted Evils", npc = 13656, npcName = "Willow", map = 1443, x = 62.19, y = 39.63, f = "e" },
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
					{ t = "collect", quest = 7029, item = 17696, itemName = "Filled Cerulean Vial", oi = 2 },
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
					{ t = "kill", quest = 7064, npc = 12201, target = "Princess Theradras", oi = 1 },
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
					{ t = "turnin", quest = 7064, title = "Corruption of Earth and Seed", npc = 13699, npcName = "Selendra", map = 1443, x = 26.87, y = 77.67, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				goals = {
					{ t = "turnin", quest = 7029, title = "Vyletongue Corruption", npc = 11823, npcName = "Vark Battlescar", map = 1443, x = 23.22, y = 70.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7066, title = "Seed of Life", npc = 11832, npcName = "Keeper Remulos", map = 1450, x = 36.18, y = 41.79, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 3444, item = 10556, itemName = "Stone Circle", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 4284, item = 11186, itemName = "Red Power Crystal", count = 7, map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 4284, item = 11188, itemName = "Yellow Power Crystal", count = 7, map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 4284, item = 11185, itemName = "Green Power Crystal", count = 7, map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 4284, item = 11184, itemName = "Blue Power Crystal", count = 7, map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3444, title = "The Stone Circle", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.93, f = "e" },
				},
			},
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
				label = "Collect_White_Ravasaur_Claws",
				along = true,
				note = "Raptors.",
				goals = {
					{ t = "collect", quest = 4300, item = 11477, itemName = "White Ravasaur Claw", count = 8, oi = 1, map = 1449, x = 65.0, y = 70.4, f = "e" },
				},
			},
			{
				label = "Collect_A_Mangled_Journal",
				along = true,
				note = "Any in Un'Goro Crater.",
				goals = {
					{ t = "collect", item = 11116, itemName = "A Mangled Journal" },
					{ t = "use", item = 11116, itemName = "A Mangled Journal" },
					{ t = "accept", quest = 3884, title = "Williden's Journal", map = 1449, x = 65.0, y = 70.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 50", map = 1449, x = 65.0, y = 70.4 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4291, title = "The Scent of Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.97, f = "e" },
					{ t = "accept", quest = 4292, title = "The Bait for Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.97, f = "e" },
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
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3063, title = "Vengeance on the Northspring", npc = 7776, npcName = "Talo Thornhoof", map = 1444, x = 76.18, y = 43.83, f = "e" },
					{ t = "accept", quest = 4120, title = "The Strength of Corruption", npc = 7776, npcName = "Talo Thornhoof", map = 1444, x = 76.18, y = 43.83, f = "e" },
					{ t = "turnin", quest = 3062, title = "Dark Heart", npc = 7776, npcName = "Talo Thornhoof", map = 1444, x = 76.18, y = 43.83, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 7734, title = "Improved Quality", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
					{ t = "turnin", quest = 7738, title = "Perfect Yeti Hide", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.43, y = 42.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3127, title = "Mountain Giant Muisek", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.37, f = "e" },
					{ t = "accept", quest = 3129, title = "Weapons of Spirit", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.37, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3129, title = "Weapons of Spirit", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.42, y = 43.37, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", text = "Train Kodo Riding", map = 1412, x = 46.78, y = 62.01 },
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
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 6018, npcName = "Ur'kyo", map = 1454, x = 35.59, y = 87.8, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 81, item = 8685, itemName = "Dran's Ripple Delivery", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 2874, item = 9245, itemName = "Stoley's Bottle", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 1122, item = 5807, itemName = "Fool's Stout Report", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 580, item = 3900, itemName = "Pupellyverbos Port", count = 12, map = 1454, x = 49.58, y = 69.12, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "goto", text = "bank Un'Goro Soil##11018", map = 1454, x = 49.58, y = 69.12 },
					{ t = "complete", quest = 4292, title = "The Bait for Lar'korwi", note = "bank Torwa's Pouch##11568", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "complete", quest = 3908, title = "It's a Secret to Everybody", note = "bank Linken's Training Sword##11133", map = 1454, x = 49.58, y = 69.12, f = "e" },
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
				goals = {
					{ t = "turnin", quest = 81, title = "Ripple Delivery", npc = 6986, npcName = "Dran Droffers", map = 1454, x = 59.48, y = 36.59, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 4300, title = "Bone-Bladed Weapons", npc = 8659, npcName = "Jes'rimon", map = 1454, x = 55.51, y = 34.09, f = "e" },
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
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10088, npcName = "Xao'tsu", map = 1454, x = 66.33, y = 14.82, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "goto", text = "Train Wolf Riding", map = 1454, x = 69.4, y = 13.1 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-feralas-and-ungoro-crater-49-50-part-2",
		pack = "guides",
		title = "Feralas & Un'Goro Crater (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-stranglethorn-vale-and-swamp-of-sorrows-50-50",
		author = "TuWoW & Zygor",
		minLevel = 49,
		maxLevel = 50,
		zone = 1444,
		version = 1,
		steps = {
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Orgrimmar", map = 1454, x = 54.09, y = 68.42, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "goto", text = "Train Raptor Riding", map = 1411, x = 55.28, y = 75.49 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 4502, title = "Volcanic Activity", npc = 8496, npcName = "Liv Rizzlefix", map = 1413, x = 62.45, y = 38.74, f = "e" },
				},
			},
		},
	})
end

