-- TuWoW_Leveling — Guides/Leveling_Alliance_25.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-badlands-41-42",
		pack = "guides",
		title = "Badlands",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-stranglethorn-vale-42-43",
		author = "TuWoW & Zygor",
		minLevel = 41,
		maxLevel = 42,
		zone = 1455,
		version = 1,
		steps = {
			{
				note = "Downstairs inside the building. Long questing session soon. No ammo vendor.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 5101, npcName = "Bryllia Ironbrand", map = 1455, x = 39.23, y = 74.47, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 1118, title = "Back to Booty Bay", note = "bank Kravel's Scheme##5826", map = 1455, x = 35.92, y = 60.14, f = "e" },
					{ t = "complete", quest = 1188, title = "Safety First", note = "bank Seaforium Booster##5862", map = 1455, x = 35.92, y = 60.14, f = "e" },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Needed for easy quest turnins in Badlands soon. Inside the building.",
				goals = {
					{ t = "collect", quest = 705, item = 4611, itemName = "Blue Pearl", count = 9, map = 1455, x = 24.16, y = 74.67, f = "e" },
					{ t = "collect", quest = 713, item = 3829, itemName = "Frost Oil", map = 1455, x = 24.16, y = 74.67, f = "e" },
					{ t = "collect", quest = 714, item = 4389, itemName = "Gyrochronatom", map = 1455, x = 24.16, y = 74.67, f = "e" },
					{ t = "collect", quest = 715, item = 929, itemName = "Healing Potion", map = 1455, x = 24.16, y = 74.67, f = "e" },
					{ t = "collect", quest = 715, item = 3823, itemName = "Lesser Invisibility Potion", map = 1455, x = 24.16, y = 74.67, f = "e" },
					{ t = "collect", quest = 716, item = 2868, itemName = "Patterned Bronze Bracers", map = 1455, x = 24.16, y = 74.67, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 1467, title = "Reagents for Reclaimers Inc.", npc = 5637, npcName = "Roetten Stonehammer", map = 1455, x = 67.91, y = 17.49, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 707, title = "Ironband Wants You!", npc = 1356, npcName = "Prospector Stormpike", map = 1455, x = 74.64, y = 11.74, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", text = "Train Horse Riding", map = 1429, x = 84.32, y = 64.87 },
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
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Stoutlager Inn", map = 1432, x = 35.53, y = 48.4, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2500, title = "Badlands Reagent Run", npc = 1470, npcName = "Ghak Healtouch", map = 1432, x = 37.07, y = 49.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 707, title = "Ironband Wants You!", npc = 1344, npcName = "Prospector Ironband", map = 1432, x = 65.93, y = 65.62, f = "e" },
					{ t = "accept", quest = 738, title = "Find Agmond", npc = 1344, npcName = "Prospector Ironband", map = 1432, x = 65.93, y = 65.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 719, title = "A Dwarf and His Tools", npc = 2910, npcName = "Prospector Ryedol", map = 1418, x = 53.42, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 718, title = "Mirages", npc = 2860, npcName = "Sigrun Ironhew", map = 1418, x = 53.8, y = 43.31, f = "e" },
				},
			},
			{
				note = "Up on the ledge.",
				goals = {
					{ t = "accept", quest = 720, title = "A Sign of Hope", map = 1418, x = 53.03, y = 33.93, f = "e" },
				},
			},
			{
				label = "Collect_Ryedols_Lucky_Pick",
				along = true,
				note = "Dwarves.",
				goals = {
					{ t = "collect", quest = 719, item = 4616, itemName = "Ryedol's Lucky Pick", oi = 1, map = 1418, x = 51.4, y = 32.6, f = "e" },
				},
			},
			{
				note = "Wooden crate. Multiple locations.",
				goals = {
					{ t = "collect", quest = 718, item = 4629, itemName = "Supply Crate", oi = 1, map = 1418, x = 66.61, y = 22.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 719, title = "A Dwarf and His Tools", npc = 2910, npcName = "Prospector Ryedol", map = 1418, x = 53.42, y = 43.4, f = "e" },
					{ t = "turnin", quest = 720, title = "A Sign of Hope", npc = 2910, npcName = "Prospector Ryedol", map = 1418, x = 53.42, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 718, title = "Mirages", npc = 2860, npcName = "Sigrun Ironhew", map = 1418, x = 53.8, y = 43.31, f = "e" },
					{ t = "accept", quest = 733, title = "Scrounging", npc = 2860, npcName = "Sigrun Ironhew", map = 1418, x = 53.8, y = 43.31, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 705, title = "Pearl Diving", npc = 2817, npcName = "Rigglefuzz", map = 1418, x = 42.39, y = 52.93, f = "e" },
					{ t = "accept", quest = 703, title = "Barbecued Buzzard Wings", npc = 2817, npcName = "Rigglefuzz", map = 1418, x = 42.39, y = 52.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 705, title = "Pearl Diving", npc = 2817, npcName = "Rigglefuzz", map = 1418, x = 42.39, y = 52.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1106, title = "Martek the Exiled", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.22, y = 52.69, f = "e" },
					{ t = "accept", quest = 1108, title = "Indurium", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.22, y = 52.69, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 738, title = "Find Agmond", map = 1418, x = 50.89, y = 62.41, f = "e" },
					{ t = "accept", quest = 739, title = "Murdaloc", map = 1418, x = 50.89, y = 62.41, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "kill", quest = 739, npc = 2945, target = "Murdaloc", oi = 1, map = 1418, x = 49.63, y = 66.3, f = "e" },
				},
			},
			{
				label = "Collect_Iridium_Flakes",
				along = true,
				note = "Troggs.",
				goals = {
					{ t = "collect", quest = 1108, item = 5797, itemName = "Indurium Flake", count = 10, oi = 1, map = 1418, x = 50.4, y = 68.6, f = "e" },
				},
			},
			{
				label = "Kill_Stonevault_Bonesnapper",
				along = true,
				goals = {
					{ t = "kill", quest = 739, npc = 2893, target = "Stonevault Bonesnapper", count = 12, oi = 2, map = 1418, x = 50.4, y = 68.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 703, title = "Barbecued Buzzard Wings", npc = 2817, npcName = "Rigglefuzz", map = 1418, x = 42.39, y = 52.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1108, title = "Indurium", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.21, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1137, title = "News for Fizzle", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.21, y = 52.7, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 710, title = "Study of the Elements: Rock", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
					{ t = "accept", quest = 713, title = "Coolant Heads Prevail", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 713, title = "Coolant Heads Prevail", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
					{ t = "accept", quest = 714, title = "Gyro... What?", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 714, title = "Gyro... What?", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 715, title = "Liquid Stone", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.82, y = 44.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 715, title = "Liquid Stone", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.82, y = 44.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 710, item = 4626, itemName = "Small Stone Shard", count = 10, oi = 1, map = 1418, x = 21.4, y = 43.4, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 710, title = "Study of the Elements: Rock", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
					{ t = "accept", quest = 711, title = "Study of the Elements: Rock", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 711, item = 4627, itemName = "Large Stone Slab", count = 3, oi = 1, map = 1418, x = 13.4, y = 37.8, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 711, title = "Study of the Elements: Rock", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
					{ t = "accept", quest = 712, title = "Study of the Elements: Rock", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 712, item = 4628, itemName = "Bracers of Rock Binding", count = 5, oi = 1, map = 1418, x = 4.4, y = 77.4, f = "e" },
				},
			},
			{
				label = "Collect_Rock_Elemental_Shards",
				along = true,
				goals = {
					{ t = "collect", quest = 2500, item = 7848, itemName = "Rock Elemental Shard", count = 5, oi = 3, map = 1418, x = 4.4, y = 77.4, f = "e" },
				},
			},
			{
				label = "Collect_Scrap_Metal",
				along = true,
				note = "Ogres.",
				goals = {
					{ t = "collect", quest = 733, item = 4630, itemName = "Scrap Metal", count = 7, oi = 1, map = 1418, x = 12.4, y = 74.4, f = "e" },
				},
			},
			{
				label = "Collect_Buzzard_Items",
				along = true,
				note = "Group of them at this location. notinsticky Spread out elsewhere. notinsticky Don't vendor them.",
				goals = {
					{ t = "collect", quest = 2500, item = 7847, itemName = "Buzzard Gizzard", count = 5, oi = 1, map = 1418, x = 17.2, y = 61.0, f = "e" },
					{ t = "collect", quest = 703, item = 3404, itemName = "Buzzard Wing", count = 4, map = 1418, x = 17.2, y = 61.0, f = "e" },
				},
			},
			{
				label = "Collect_Crag_Coyote_Fangs",
				along = true,
				goals = {
					{ t = "collect", quest = 2500, item = 7846, itemName = "Crag Coyote Fang", count = 10, oi = 2, map = 1418, x = 20.8, y = 56.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 703, title = "Barbecued Buzzard Wings", npc = 2817, npcName = "Rigglefuzz", map = 1418, x = 42.39, y = 52.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 733, title = "Scrounging", npc = 2860, npcName = "Sigrun Ironhew", map = 1418, x = 53.8, y = 43.31, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 712, title = "Study of the Elements: Rock", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
					{ t = "accept", quest = 734, title = "This Is Going to Be Hard", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 734, title = "This Is Going to Be Hard", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.82, y = 44.24, f = "e" },
					{ t = "accept", quest = 777, title = "This Is Going to Be Hard", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.82, y = 44.24, f = "e" },
					{ t = "accept", quest = 716, title = "Stone Is Better than Cloth", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.82, y = 44.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 716, title = "Stone Is Better than Cloth", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.82, y = 44.24, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 777, title = "This Is Going to Be Hard", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.86, f = "e" },
					{ t = "accept", quest = 778, title = "This Is Going to Be Hard", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.86, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 778, item = 4847, itemName = "Lotwil's Shackles of Elemental Binding", oi = 1, map = 1418, x = 26.1, y = 46.81, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 778, title = "This Is Going to Be Hard", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
				},
			},
			{
				note = "Helps reach level 42 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 41,89350", map = 1418, x = 20.8, y = 56.8 },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Must be near this location. Getting Thorium Point flight path. Saves time later. Traveling a bit after, don't worry about resurrection sickness.",
				goals = {
					{ t = "complete", quest = 2500, title = "Badlands Reagent Run", note = "Die on Purpose", map = 1427, x = 67.82, y = 51.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2500, title = "Badlands Reagent Run", note = "Resurrect at the Spirit Healer", map = 1427, x = 35.5, y = 22.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Thorium Point", map = 1427, x = 37.94, y = 30.86, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Stoutlager Inn", map = 1432, x = 35.53, y = 48.4, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2500, title = "Badlands Reagent Run", npc = 1470, npcName = "Ghak Healtouch", map = 1432, x = 37.07, y = 49.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 739, title = "Murdaloc", npc = 1344, npcName = "Prospector Ironband", map = 1432, x = 65.93, y = 65.62, f = "e" },
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
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 5143, npcName = "Toldren Deepiron", map = 1455, x = 25.21, y = 10.74, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5148, npcName = "Beldruk Doombrow", map = 1455, x = 24.55, y = 4.48, f = "e" },
				},
			},
		},
	})
end

