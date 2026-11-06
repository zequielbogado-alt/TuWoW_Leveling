-- TuWoW_Leveling — Guides/Leveling_Horde_18.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-thousand-needles-33-34",
		pack = "guides",
		title = "Thousand Needles",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-desolace-34-36",
		author = "TuWoW & Zygor",
		minLevel = 33,
		maxLevel = 34,
		zone = 1441,
		version = 1,
		steps = {
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1441, x = 54.67, y = 44.77 },
					{ t = "turnin", quest = 1531, title = "Call of Air", npc = 5905, npcName = "Prate Cloudseer", map = 1441, x = 53.54, y = 42.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1146, title = "The Swarm Grows", npc = 4483, npcName = "Moktar Krin", map = 1441, x = 67.58, y = 63.94, f = "e" },
					{ t = "accept", quest = 1147, title = "The Swarm Grows", npc = 4483, npcName = "Moktar Krin", map = 1441, x = 67.58, y = 63.94, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1112, title = "Parts for Kravel", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1110, title = "Rocket Car Parts", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
					{ t = "accept", quest = 1114, title = "Delivery to the Gnomes", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1114, title = "Delivery to the Gnomes", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.06, y = 77.13, f = "e" },
					{ t = "accept", quest = 1104, title = "Salt Flat Venom", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.06, y = 77.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1115, title = "The Rumormonger", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1105, title = "Hardened Shells", npc = 4453, npcName = "Wizzle Brassbolts", map = 1441, x = 78.14, y = 77.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1176, title = "Load Lightening", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.18, y = 75.89, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1175, title = "A Bump in the Road", npc = 4629, npcName = "Trackmaster Zherin", map = 1441, x = 81.64, y = 77.95, f = "e" },
				},
			},
			{
				note = "Shared spawns with Hive Drones. Inside the cave.",
				goals = {
					{ t = "kill", quest = 1147, npc = 4131, target = "Silithid Invader", count = 5, oi = 3, map = 1441, x = 66.32, y = 86.18, f = "e" },
				},
			},
			{
				label = "Kill_Silithid_Searchers",
				along = true,
				note = "Outside the cave. notinsticky",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1441, x = 66.32, y = 86.18 },
					{ t = "kill", quest = 1147, npc = 4130, target = "Silithid Searcher", count = 5, oi = 1, map = 1441, x = 70.2, y = 82.6, f = "e" },
				},
			},
			{
				label = "Accept_Parts_Of_The_Swarm",
				along = true,
				note = "Inside and outside the cave. notinsticky",
				goals = {
					{ t = "collect", item = 5877, itemName = "Cracked Silithid Carapace", map = 1441, x = 67.7, y = 82.4, f = "e" },
					{ t = "use", item = 5877, itemName = "Cracked Silithid Carapace" },
					{ t = "accept", quest = 1148, title = "Parts of the Swarm", npc = 4130, npcName = "Silithid Searcher", map = 1441, x = 70.2, y = 82.6, f = "e" },
				},
			},
			{
				label = "Kill_Silithid_Hive_Drones",
				along = true,
				note = "Inside and outside the cave. notinsticky",
				goals = {
					{ t = "kill", quest = 1147, npc = 4133, target = "Silithid Hive Drone", count = 5, oi = 2, map = 1441, x = 70.0, y = 84.6, f = "e" },
				},
			},
			{
				label = "Collect_Silithid_Items",
				along = true,
				note = "Inside and outside the cave. notinsticky",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1441, x = 66.32, y = 86.18 },
					{ t = "collect", quest = 1148, item = 5855, itemName = "Silithid Heart", oi = 1, map = 1441, x = 70.2, y = 82.6, f = "e" },
					{ t = "collect", quest = 1148, item = 5853, itemName = "Intact Silithid Carapace", count = 3, oi = 3, map = 1441, x = 70.2, y = 82.6, f = "e" },
					{ t = "collect", quest = 1148, item = 5854, itemName = "Silithid Talon", count = 5, oi = 2, map = 1441, x = 70.2, y = 82.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1441, x = 66.32, y = 86.18 },
					{ t = "kill", quest = 1175, npc = 4150, target = "Saltstone Gazer", count = 6, oi = 3, map = 1441, x = 77.4, y = 88.0, f = "e" },
				},
			},
			{
				note = "Vultures. Mostly here, otherwise uncommon. Revisit this location while working on other quests.",
				goals = {
					{ t = "collect", quest = 1176, item = 5848, itemName = "Hollow Vulture Bone", count = 10, oi = 1, map = 1441, x = 88.0, y = 66.0, f = "e" },
				},
			},
			{
				label = "Collect_Hardened_Tortoise_Shells",
				along = true,
				note = "Turtles.",
				goals = {
					{ t = "collect", quest = 1105, item = 5795, itemName = "Hardened Tortoise Shell", count = 9, oi = 1, map = 1441, x = 82.8, y = 55.2, f = "e" },
				},
			},
			{
				label = "Collect_Salty_Scorpid_Venom",
				along = true,
				note = "Scorpions.",
				goals = {
					{ t = "collect", quest = 1104, item = 5794, itemName = "Salty Scorpid Venom", count = 6, oi = 1, map = 1441, x = 82.4, y = 60.0, f = "e" },
				},
			},
			{
				label = "Kill_Saltstone_Basilisks",
				along = true,
				goals = {
					{ t = "kill", quest = 1175, npc = 4147, target = "Saltstone Basilisk", count = 10, oi = 1, map = 1441, x = 78.4, y = 59.0, f = "e" },
				},
			},
			{
				label = "Kill_Saltstone_Crystalhides",
				along = true,
				goals = {
					{ t = "kill", quest = 1175, npc = 4151, target = "Saltstone Crystalhide", count = 10, oi = 2, map = 1441, x = 78.8, y = 86.8, f = "e" },
				},
			},
			{
				label = "Collect_Rocket_Car_Parts",
				along = true,
				note = "Various machine parts. Throughout the Shimmering Flats.",
				goals = {
					{ t = "collect", quest = 1110, item = 5798, itemName = "Rocket Car Parts", count = 30, oi = 1, map = 1441, x = 83.0, y = 64.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1147, title = "The Swarm Grows", npc = 4483, npcName = "Moktar Krin", map = 1441, x = 67.58, y = 63.94, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1110, title = "Rocket Car Parts", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
					{ t = "accept", quest = 5762, title = "Hemet Nesingwary", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1104, title = "Salt Flat Venom", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.06, y = 77.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1105, title = "Hardened Shells", npc = 4453, npcName = "Wizzle Brassbolts", map = 1441, x = 78.14, y = 77.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1106, title = "Martek the Exiled", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.06, y = 77.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1176, title = "Load Lightening", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.18, y = 75.88, f = "e" },
					{ t = "accept", quest = 1178, title = "Goblin Sponsorship", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.18, y = 75.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1175, title = "A Bump in the Road", npc = 4629, npcName = "Trackmaster Zherin", map = 1441, x = 81.63, y = 77.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 34", map = 1441, x = 82.8, y = 55.2 },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 5361, title = "Family Tree", npc = 10537, npcName = "Cliffwatcher Longhorn", map = 1441, x = 45.65, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1148, title = "Parts of the Swarm", npc = 3428, npcName = "Korran", map = 1413, x = 51.07, y = 29.63, f = "e" },
					{ t = "accept", quest = 1184, title = "Parts of the Swarm", npc = 3428, npcName = "Korran", map = 1413, x = 51.07, y = 29.63, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1178, title = "Goblin Sponsorship", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.68, y = 36.23, f = "e" },
					{ t = "accept", quest = 1180, title = "Goblin Sponsorship", npc = 3391, npcName = "Gazlowe", map = 1413, x = 62.68, y = 36.23, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 96, title = "Call of Water", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.83, y = 43.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1180, title = "Goblin Sponsorship", npc = 4631, npcName = "Wharfmaster Lozgil", map = 1434, x = 26.34, y = 73.56, f = "e" },
					{ t = "accept", quest = 1181, title = "Goblin Sponsorship", npc = 4631, npcName = "Wharfmaster Lozgil", map = 1434, x = 26.34, y = 73.56, f = "e" },
				},
			},
			{
				note = "Upper level of the docks. Inside the building.",
				goals = {
					{ t = "accept", quest = 575, title = "Supply and Demand", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.29, y = 77.59, f = "e" },
				},
			},
			{
				note = "Bottom floor inside the building.",
				goals = {
					{ t = "accept", quest = 605, title = "Singing Blue Shards", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 1115, title = "The Rumormonger", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
					{ t = "accept", quest = 201, title = "Investigate the Camp", npc = 773, npcName = "Krazek", map = 1434, x = 26.95, y = 77.21, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "accept", quest = 189, title = "Bloodscalp Ears", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.12, f = "e" },
					{ t = "accept", quest = 213, title = "Hostile Takeover", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.12, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 1181, title = "Goblin Sponsorship", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
					{ t = "accept", quest = 1182, title = "Goblin Sponsorship", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "getfp", location = "Booty Bay", map = 1434, x = 26.87, y = 77.1, f = "e" },
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
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3344, npcName = "Kardris Dreamseeker", map = 1454, x = 38.8, y = 36.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1184, title = "Parts of the Swarm", npc = 4485, npcName = "Belgrom Rockmaul", map = 1454, x = 75.23, y = 34.24, f = "e" },
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
				note = "Buy from the Auction House, if possible. Makes quests easier later. Inside the building.",
				only = { races = { "Scourge" }, classes = { "WARLOCK", "DRUID" } },
				goals = {
					{ t = "collect", quest = 6161, item = 5996, itemName = "Elixir of Water Breathing", count = 2, map = 1454, x = 55.69, y = 62.86, f = "e", only = { races = { "Scourge" }, classes = { "SHAMAN", "WARLOCK", "DRUID" } } },
					{ t = "collect", quest = 6161, item = 17057, itemName = "Shiny Fish Scales", count = 2, map = 1454, x = 55.69, y = 62.86, f = "e", only = { classes = { "SHAMAN" } } },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 1106, title = "Martek the Exiled", note = "bank Fizzle Brassbolts' Letter##5827", map = 1454, x = 49.59, y = 69.12, f = "e" },
					{ t = "complete", quest = 5762, title = "Hemet Nesingwary", note = "bank Kravel's Crate##14542", map = 1454, x = 49.59, y = 69.12, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Orgrimmar", map = 1454, x = 54.09, y = 68.42, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2841, title = "Rig Wars", npc = 3412, npcName = "Nogg", map = 1454, x = 75.99, y = 25.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2842, title = "Chief Engineer Scooty", npc = 3413, npcName = "Sovik", map = 1454, x = 75.49, y = 25.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2842, title = "Chief Engineer Scooty", npc = 7853, npcName = "Scooty", map = 1434, x = 27.6, y = 77.48, f = "e" },
					{ t = "accept", quest = 2843, title = "Gnomer-gooooone!", npc = 7853, npcName = "Scooty", map = 1434, x = 27.6, y = 77.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2843, title = "Gnomer-gooooone!", note = "Wait for Scooty to Calibrate the Goblin Transponder", map = 1434, x = 27.6, y = 77.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2843, title = "Gnomer-gooooone!", npc = 7853, npcName = "Scooty", map = 1434, x = 27.6, y = 77.48, f = "e" },
				},
			},
			{
				note = "Inside the Dormitory area.",
				goals = {
					{ t = "accept", quest = 2904, title = "A Fine Mess", npc = 7850, npcName = "Kernobee" },
				},
			},
			{
				note = "Bring Kernobee to the dungeon entrance portal.",
				goals = {
					{ t = "complete", quest = 2904, title = "A Fine Mess", note = "Rescue Kernobee" },
				},
			},
			{
				note = "Final boss.",
				goals = {
					{ t = "complete", quest = 2841, title = "Rig Wars", note = "colect Thermaplugg's Safe Combination##9299" },
				},
			},
			{
				note = "Grey metal chest. Near the northern wall. Same room as Mekgineer Thermaplugg.",
				goals = {
					{ t = "collect", quest = 2841, item = 9153, itemName = "Rig Blueprints", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "use", item = 9326, itemName = "Grime-Encrusted Ring" },
					{ t = "accept", quest = 2945, title = "Grime-Encrusted Ring" },
				},
			},
			{
				note = "In the Dormitory. May need to click multiple.",
				goals = {
					{ t = "turnin", quest = 2945, title = "Grime-Encrusted Ring" },
					{ t = "accept", quest = 2949, title = "Return of the Ring" },
					{ t = "accept", quest = 2952, title = "The Sparklematic 5200!" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2904, title = "A Fine Mess", npc = 7853, npcName = "Scooty", map = 1434, x = 27.6, y = 77.48, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2841, title = "Rig Wars", npc = 3412, npcName = "Nogg", map = 1454, x = 75.99, y = 25.41, f = "e" },
					{ t = "turnin", quest = 2949, title = "Return of the Ring", npc = 3412, npcName = "Nogg", map = 1454, x = 75.99, y = 25.41, f = "e" },
				},
			},
		},
	})
end

