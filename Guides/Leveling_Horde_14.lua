-- TuWoW_Leveling — Guides/Leveling_Horde_14.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-the-barrens-24-25",
		pack = "guides",
		title = "The Barrens",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-stonetalon-mountains-25-26",
		author = "TuWoW & Zygor",
		minLevel = 24,
		maxLevel = 25,
		zone = 1456,
		version = 1,
		steps = {
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 868, item = 5059, itemName = "Digging Claw", map = 1456, x = 47.13, y = 57.89, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 546, title = "Souvenirs of Death", note = "bank Hillsbrad Human Skull##3692+", map = 1456, x = 47.13, y = 57.89, f = "e" },
					{ t = "complete", quest = 529, title = "Battle of Hillsbrad", note = "bank Shipment of Iron##3564", map = 1456, x = 47.13, y = 57.89, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1456, x = 29.81, y = 29.82 },
					{ t = "turnin", quest = 1067, title = "Return to Thunder Bluff", npc = 3419, npcName = "Apothecary Zamah", map = 1456, x = 22.81, y = 20.9, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "accept", quest = 1086, title = "The Flying Machine Airport", npc = 3419, npcName = "Apothecary Zamah", map = 1456, x = 22.81, y = 20.9, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 3045, npcName = "Malakai Cross", map = 1456, x = 24.55, y = 22.58, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 3047, npcName = "Archmage Shymm", map = 1456, x = 22.76, y = 14.52, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", map = 1456, x = 25.2, y = 14.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1456, x = 29.81, y = 29.82 },
					{ t = "train", npc = 3030, npcName = "Siln Skychaser", map = 1456, x = 22.83, y = 21.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1456, x = 29.81, y = 29.82 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1195, title = "The Sacred Flame", npc = 4721, npcName = "Zangen Stonehoof", map = 1456, x = 54.96, y = 51.38, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3040, npcName = "Urek Thunderhorn", map = 1456, x = 59.11, y = 86.86, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10086, npcName = "Hesuwa Thunderhorn", map = 1456, x = 54.09, y = 83.97, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3043, npcName = "Ker Ragetotem", map = 1456, x = 57.58, y = 85.52, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 31, title = "Aquatic Form", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.48, y = 27.22, f = "e" },
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
				goals = {
					{ t = "accept", quest = 879, title = "Betrayal from Within", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.55, y = 59.24, f = "e" },
				},
			},
			{
				note = "Exchange Blood Shards for buffs. When questing in the Barrens, spend extra Blood Shards here. SPIRIT OF THE WIND +30% Movement Speed (5 Minutes) Note: Does NOT stack with other run speed abilities. AGAMAGGAN'S STRENGTH +10 Strength (30 Minutes) AGAMAGGAN'S AGILITY +10 Agility (30 Minutes) WISDOM OF AGAMAGGAN +10 Intellect (30 Minutes) RISING SPIRIT +25 Spirit (30 Minutes) RAZORHIDE +95 Armor and Returns Damage to Enemies (10 Minutes)",
				goals = {
					{ t = "complete", quest = 879, title = "Betrayal from Within", note = "Click Here to Continue", map = 1413, x = 44.55, y = 59.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 893, title = "Weapons of Choice", npc = 3433, npcName = "Tatternack Steelforge", map = 1413, x = 45.1, y = 57.68, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Camp Taurajo", map = 1413, x = 45.58, y = 59.04, f = "e" },
				},
			},
			{
				note = "Blue dinosuar. Multiple locations.",
				goals = {
					{ t = "collect", item = 5102, itemName = "Owatanka's Tailspike", map = 1413, x = 44.2, y = 62.0, f = "e" },
					{ t = "use", item = 5102, itemName = "Owatanka's Tailspike" },
					{ t = "accept", quest = 884, title = "Owatanka", npc = 3473, npcName = "Owatanka", map = 1413, x = 44.4, y = 61.4, f = "e" },
				},
			},
			{
				note = "Large rocks leaking green liquid. May be attacked.",
				goals = {
					{ t = "collect", quest = 868, item = 5058, itemName = "Silithid Egg", count = 12, oi = 1, map = 1413, x = 45.14, y = 71.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 5138, itemName = "Harvester's Head" },
					{ t = "accept", quest = 897, title = "The Harvester" },
				},
			},
			{
				note = "Top of the hill.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1536, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
					{ t = "accept", quest = 1534, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
				},
			},
			{
				note = "Walks along the road.",
				goals = {
					{ t = "accept", quest = 843, title = "Gann's Reclamation", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 45.9, y = 77.0, f = "e" },
				},
			},
			{
				note = "Quilboar in a red robe. Walks around. Spawns here.",
				goals = {
					{ t = "collect", quest = 879, item = 5074, itemName = "Kuz's Skull", oi = 1, map = 1413, x = 43.96, y = 79.57, f = "e" },
				},
			},
			{
				note = "Walks around. Careful, stealthed enemies.",
				goals = {
					{ t = "collect", quest = 879, item = 5073, itemName = "Nak's Skull", oi = 2, map = 1413, x = 43.82, y = 83.1, f = "e" },
				},
			},
			{
				note = "Careful, stealthed enemies. Inside the building.",
				goals = {
					{ t = "collect", quest = 879, item = 5072, itemName = "Lok's Skull", oi = 3, map = 1413, x = 40.15, y = 80.54, f = "e" },
				},
			},
			{
				label = "Collect_Razormane_Backstabber",
				along = true,
				note = "Pathfinders and Stalkers. Careful, stealthed enemies. notinsticky Don't vendor it.",
				goals = {
					{ t = "collect", quest = 893, item = 5093, itemName = "Razormane Backstabber", oi = 1, map = 1413, x = 44.2, y = 81.4, f = "e" },
				},
			},
			{
				label = "Collect_Razormane_Wand",
				along = true,
				note = "Careful, stealthed enemies. notinsticky Don't vendor it.",
				goals = {
					{ t = "collect", quest = 893, item = 5092, itemName = "Charred Razormane Wand", oi = 2, map = 1413, x = 42.4, y = 82.2, f = "e" },
				},
			},
			{
				label = "Collect_Razormane_War_Shield",
				along = true,
				note = "Careful, stealthed enemies. notinsticky Don't vendor it.",
				goals = {
					{ t = "collect", quest = 893, item = 5094, itemName = "Razormane War Shield", oi = 3, map = 1413, x = 42.2, y = 82.6, f = "e" },
				},
			},
			{
				label = "Collect_Washte_Pawnes_Feather",
				along = true,
				note = "Red flying snake. Moves around.",
				goals = {
					{ t = "collect", item = 5103, itemName = "Washte Pawne's Feather", map = 1413, x = 43.2, y = 80.9, f = "e" },
					{ t = "use", item = 5103, itemName = "Washte Pawne's Feather" },
					{ t = "accept", quest = 885, title = "Washte Pawne", npc = 3472, npcName = "Washte Pawne", map = 1413, x = 43.2, y = 80.8, f = "e" },
				},
			},
			{
				note = "Walks around. Multiple locations.",
				goals = {
					{ t = "collect", quest = 843, item = 5006, itemName = "Khazgorm's Journal", oi = 3, map = 1413, x = 47.55, y = 85.26, f = "e" },
				},
			},
			{
				label = "Kill_Baeldun_Foremen_And_Excavators",
				along = true,
				goals = {
					{ t = "kill", quest = 843, npc = 3375, target = "Bael'dun Foreman", count = 5, oi = 2, map = 1413, x = 47.46, y = 85.17, f = "e" },
					{ t = "kill", quest = 843, npc = 3374, target = "Bael'dun Excavator", count = 15, oi = 1, map = 1413, x = 47.46, y = 85.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 843, title = "Gann's Reclamation", note = "Leave Bael Modan", map = 1413, x = 46.74, y = 85.06, f = "e" },
				},
			},
			{
				note = "Walks along the road.",
				goals = {
					{ t = "turnin", quest = 843, title = "Gann's Reclamation", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 45.9, y = 77.0, f = "e" },
					{ t = "accept", quest = 846, title = "Revenge of Gann", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 45.9, y = 77.0, f = "e" },
				},
			},
			{
				note = "Inside and outside the building. Safer to stay outside.",
				goals = {
					{ t = "collect", quest = 846, item = 5017, itemName = "Nitroglycerin", count = 6, oi = 1, map = 1413, x = 48.75, y = 84.49, f = "e" },
					{ t = "collect", quest = 846, item = 5018, itemName = "Wood Pulp", count = 6, oi = 2, map = 1413, x = 48.75, y = 84.49, f = "e" },
					{ t = "collect", quest = 846, item = 5019, itemName = "Sodium Nitrate", count = 6, oi = 3, map = 1413, x = 48.75, y = 84.49, f = "e" },
				},
			},
			{
				note = "Walks along the road.",
				goals = {
					{ t = "turnin", quest = 846, title = "Revenge of Gann", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 45.9, y = 77.0, f = "e" },
					{ t = "accept", quest = 849, title = "Revenge of Gann", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 45.9, y = 77.0, f = "e" },
				},
			},
			{
				note = "Top of the platform. Click it from a distance.",
				goals = {
					{ t = "complete", quest = 849, title = "Revenge of Gann", note = "Destroy the Bael Modan Flying Machine", map = 1413, x = 47.0, y = 85.6, f = "e" },
				},
			},
			{
				note = "Walks along the road.",
				goals = {
					{ t = "turnin", quest = 849, title = "Revenge of Gann", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 45.9, y = 77.0, f = "e" },
				},
			},
			{
				note = "Helps reach level 25 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 24,25300", map = 1413, x = 47.78, y = 79.27 },
				},
			},
			{
				note = "Careful, higher level enemies.",
				goals = {
					{ t = "getfp", location = "Brackenwall Village", map = 1445, x = 35.56, y = 31.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 893, title = "Weapons of Choice", npc = 3433, npcName = "Tatternack Steelforge", map = 1413, x = 45.1, y = 57.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 897, title = "The Harvester", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.86, y = 59.14, f = "e" },
					{ t = "turnin", quest = 884, title = "Owatanka", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.86, y = 59.14, f = "e" },
					{ t = "turnin", quest = 885, title = "Washte Pawne", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.86, y = 59.14, f = "e" },
					{ t = "accept", quest = 6382, title = "The Ashenvale Hunt", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.86, y = 59.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 879, title = "Betrayal from Within", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.55, y = 59.24, f = "e" },
					{ t = "accept", quest = 906, title = "Betrayal from Within", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.55, y = 59.24, f = "e" },
				},
			},
			{
				note = "Buy level 25 ammo when restocking.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 906, title = "Betrayal from Within", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 906, title = "Betrayal from Within", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 868, title = "Egg Hunt", npc = 3428, npcName = "Korran", map = 1413, x = 51.07, y = 29.63, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 874, title = "Mahren Skyseer", npc = 3388, npcName = "Mahren Skyseer", map = 1413, x = 65.84, y = 43.86, f = "e" },
					{ t = "accept", quest = 873, title = "Isha Awak", npc = 3388, npcName = "Mahren Skyseer", map = 1413, x = 65.84, y = 43.86, f = "e" },
				},
			},
			{
				note = "Water dinosaur. Swims around. Multiple locations.",
				goals = {
					{ t = "collect", quest = 873, item = 5104, itemName = "Heart of Isha Awak", oi = 1, map = 1413, x = 65.4, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 873, title = "Isha Awak", npc = 3388, npcName = "Mahren Skyseer", map = 1413, x = 65.84, y = 43.86, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-stonetalon-mountains-25-26",
		pack = "guides",
		title = "Stonetalon Mountains",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-ashenvale-26-28",
		author = "TuWoW & Zygor",
		minLevel = 25,
		maxLevel = 26,
		zone = 1442,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 1087, title = "Cenarius' Legacy", npc = 4198, npcName = "Braelyn Firehand", map = 1442, x = 45.94, y = 60.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6301, title = "Cycle of Rebirth", npc = 11864, npcName = "Tammra Windfield", map = 1442, x = 47.46, y = 58.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5881, title = "Calling in the Reserves", npc = 11860, npcName = "Maggran Earthbinder", map = 1442, x = 47.2, y = 61.15, f = "e" },
					{ t = "accept", quest = 6282, title = "Harpies Threaten", npc = 11860, npcName = "Maggran Earthbinder", map = 1442, x = 47.2, y = 61.15, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1442, x = 49.2, y = 61.91 },
					{ t = "accept", quest = 6393, title = "Elemental War", npc = 11862, npcName = "Tsunaman", map = 1442, x = 47.37, y = 64.29, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1096, title = "Gerenzo Wrenchwhistle", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 58.99, y = 62.6, f = "e" },
				},
			},
			{
				note = "Under the platform.",
				goals = {
					{ t = "use", item = 5638, itemName = "Toxic Fogger" },
					{ t = "complete", quest = 1086, title = "The Flying Machine Airport", note = "Place the Toxic Fogger", map = 1442, x = 66.52, y = 45.48, f = "e" },
				},
			},
			{
				note = "Up on the wooden platform. Multiple locations.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1442, x = 68.94, y = 39.65 },
					{ t = "collect", quest = 1096, item = 5736, itemName = "Gerenzo's Mechanical Arm", oi = 1, map = 1442, x = 64.6, y = 39.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1096, title = "Gerenzo Wrenchwhistle", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 58.99, y = 62.6, f = "e" },
				},
			},
			{
				note = "Fire elementals. Skip once no more to kill. Can finish later.",
				goals = {
					{ t = "goto", text = "Leave Windshear Crag", map = 1442, x = 60.47, y = 70.13 },
					{ t = "collect", quest = 6393, item = 16312, itemName = "Incendrites", count = 10, oi = 1, map = 1442, x = 44.8, y = 43.4, f = "e" },
				},
			},
			{
				note = "Deer.",
				goals = {
					{ t = "collect", quest = 1058, item = 5585, itemName = "Courser Eye", count = 30, oi = 3, map = 1442, x = 46.4, y = 38.2, f = "e" },
				},
			},
			{
				label = "Collect_Fey_Dragon_Scale",
				along = true,
				note = "Small blue dragons. Uncommon and spread out.",
				goals = {
					{ t = "collect", quest = 1058, item = 5583, itemName = "Fey Dragon Scale", oi = 4, map = 1442, x = 41.0, y = 12.2, f = "e" },
				},
			},
			{
				label = "Collect_Stonetalon_Sap",
				along = true,
				note = "Green oozes. Shared spawns with Corrosive Sap Beasts.",
				goals = {
					{ t = "collect", quest = 1058, item = 5582, itemName = "Stonetalon Sap", count = 5, oi = 1, map = 1442, x = 35.4, y = 17.8, f = "e" },
				},
			},
			{
				label = "Collect_Twilight_Whiskers",
				along = true,
				note = "Blue leopards.",
				goals = {
					{ t = "collect", quest = 1058, item = 5584, itemName = "Twilight Whisker", count = 5, oi = 2, map = 1442, x = 31.4, y = 13.0, f = "e" },
				},
			},
			{
				label = "Kill_Cenarion_Enemies",
				along = true,
				note = "Avoid Sentinel Amarassan. Level 27 elite night elf.",
				goals = {
					{ t = "kill", quest = 1087, npc = 4057, target = "Son of Cenarius", count = 4, oi = 1, map = 1442, x = 36.28, y = 12.39, f = "e" },
					{ t = "kill", quest = 1087, npc = 4053, target = "Daughter of Cenarius", count = 4, oi = 2, map = 1442, x = 36.28, y = 12.39, f = "e" },
					{ t = "kill", quest = 1087, npc = 4051, target = "Cenarion Botanist", count = 4, oi = 3, map = 1442, x = 36.28, y = 12.39, f = "e" },
				},
			},
			{
				label = "Collect_Mirkweed_Pods",
				along = true,
				note = "Tall bushy plants. Underwater. Flat red and green plant patches. Around the water edge.",
				goals = {
					{ t = "goto", text = "Leave Stonetalon Peak", map = 1442, x = 41.62, y = 16.01 },
				},
			},
			{
				label = "Collect_Gaea_Seeds",
				along = true,
				note = "Brown pine cones. Avoid the elite windstrider. notinsticky",
				goals = {
					{ t = "goto", text = "Leave Stonetalon Peak", map = 1442, x = 41.62, y = 16.01 },
					{ t = "collect", quest = 6301, item = 16205, itemName = "Gaea Seed", count = 10, oi = 1, map = 1442, x = 48.61, y = 40.15, f = "e" },
				},
			},
			{
				note = "Fire elementals. Shared spawns with basilisks and walking trees.",
				goals = {
					{ t = "goto", text = "Leave Stonetalon Peak", map = 1442, x = 41.62, y = 16.01 },
					{ t = "collect", quest = 6393, item = 16312, itemName = "Incendrites", count = 10, oi = 1, map = 1442, x = 44.68, y = 41.82, f = "e" },
				},
			},
			{
				label = "Kill_Bloodfury_Harpies",
				along = true,
				goals = {
					{ t = "kill", quest = 6282, npc = 4022, target = "Bloodfury Harpy", count = 7, oi = 1, map = 1442, x = 32.6, y = 61.6, f = "e" },
				},
			},
			{
				label = "Kill_Bloodfury_Ambushers",
				along = true,
				goals = {
					{ t = "kill", quest = 6282, npc = 4025, target = "Bloodfury Ambusher", count = 7, oi = 2, map = 1442, x = 32.2, y = 63.8, f = "e" },
				},
			},
			{
				label = "Kill_Bloodfury_Slayers",
				along = true,
				goals = {
					{ t = "kill", quest = 6282, npc = 4024, target = "Bloodfury Slayer", count = 7, oi = 3, map = 1442, x = 34.4, y = 67.4, f = "e" },
				},
			},
			{
				label = "Kill_Bloodfury_Roguefeathers",
				along = true,
				goals = {
					{ t = "kill", quest = 6282, npc = 4023, target = "Bloodfury Roguefeather", count = 7, oi = 4, map = 1442, x = 34.4, y = 67.4, f = "e" },
				},
			},
			{
				note = "All around the Charred Vale.",
				goals = {
					{ t = "goto", text = "ding 26", map = 1442, x = 32.6, y = 67.4 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path to Sun Rock Retreat", map = 1442, x = 37.93, y = 67.96 },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 6393, title = "Elemental War", npc = 11862, npcName = "Tsunaman", map = 1442, x = 47.37, y = 64.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6282, title = "Harpies Threaten", npc = 11860, npcName = "Maggran Earthbinder", map = 1442, x = 47.19, y = 61.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6301, title = "Cycle of Rebirth", npc = 11864, npcName = "Tammra Windfield", map = 1442, x = 47.46, y = 58.38, f = "e" },
					{ t = "accept", quest = 6381, title = "New Life", npc = 11864, npcName = "Tammra Windfield", map = 1442, x = 47.46, y = 58.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1087, title = "Cenarius' Legacy", npc = 4198, npcName = "Braelyn Firehand", map = 1442, x = 45.94, y = 60.42, f = "e" },
				},
			},
			{
				note = "Piles of dirt. All around the Charred Vale.",
				goals = {
					{ t = "goto", text = "Follow the path to the Charred Vale", map = 1442, x = 44.63, y = 61.81 },
					{ t = "complete", quest = 6381, title = "New Life", note = "Plant #10# Gaea Seeds", map = 1442, x = 32.25, y = 68.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path to Sun Rock Retreat", map = 1442, x = 37.93, y = 67.96 },
					{ t = "turnin", quest = 6381, title = "New Life", npc = 11864, npcName = "Tammra Windfield", map = 1442, x = 47.46, y = 58.38, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 1058, title = "Jin'Zil's Forest Magic", npc = 3995, npcName = "Witch Doctor Jin'Zil", map = 1442, x = 74.54, y = 97.94, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up through the mountains", map = 1442, x = 72.92, y = 93.72 },
					{ t = "turnin", quest = 1068, title = "Shredding Machines", npc = 4049, npcName = "Seereth Stonebreak", map = 1413, x = 35.26, y = 27.88, f = "e" },
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
		},
	})
end

