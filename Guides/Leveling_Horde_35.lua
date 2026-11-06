-- TuWoW_Leveling — Guides/Leveling_Horde_35.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-western-and-eastern-plaguelands-56-58-part-2",
		pack = "guides",
		title = "Western & Eastern Plaguelands (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-winterspring-58-59",
		author = "TuWoW & Zygor",
		minLevel = 56,
		maxLevel = 58,
		zone = 1458,
		version = 1,
		steps = {
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", text = "Train Undead Horsemanship", map = 1420, x = 60.08, y = 52.57 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5023, title = "Better Late Than Never", npc = 10781, npcName = "Royal Overseer Bauhaus", map = 1458, x = 69.78, y = 43.15, f = "e" },
					{ t = "accept", quest = 5049, title = "The Jeremiah Blues", npc = 10781, npcName = "Royal Overseer Bauhaus", map = 1458, x = 69.78, y = 43.15, f = "e" },
				},
			},
			{
				note = "Under the stairs.",
				goals = {
					{ t = "turnin", quest = 5049, title = "The Jeremiah Blues", npc = 8403, npcName = "Jeremiah Payson", map = 1458, x = 67.6, y = 44.16, f = "e" },
					{ t = "accept", quest = 5050, title = "Good Luck Charm", npc = 8403, npcName = "Jeremiah Payson", map = 1458, x = 67.6, y = 44.16, f = "e" },
				},
			},
			{
				note = "Buy from the auction house, if possible. Or collect from bank.",
				goals = {
					{ t = "collect", quest = 7813, item = 2592, itemName = "Wool Cloth", count = 60, map = 1458, x = 67.64, y = 35.9, f = "e" },
					{ t = "collect", quest = 7814, item = 4306, itemName = "Silk Cloth", count = 60, map = 1458, x = 67.64, y = 35.9, f = "e" },
					{ t = "collect", quest = 7817, item = 4338, itemName = "Mageweave Cloth", count = 60, map = 1458, x = 67.64, y = 35.9, f = "e" },
					{ t = "collect", quest = 7818, item = 14047, itemName = "Runecloth", count = 60, map = 1458, x = 67.64, y = 35.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7813, title = "A Donation of Wool", npc = 14729, npcName = "Ralston Farnsley", map = 1458, x = 71.66, y = 29.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7814, title = "A Donation of Silk", npc = 14729, npcName = "Ralston Farnsley", map = 1458, x = 71.66, y = 29.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7817, title = "A Donation of Mageweave", npc = 14729, npcName = "Ralston Farnsley", map = 1458, x = 71.66, y = 29.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7818, title = "A Donation of Runecloth", npc = 14729, npcName = "Ralston Farnsley", map = 1458, x = 71.66, y = 29.23, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 6021, title = "Zaeldarr the Outcast", npc = 11038, npcName = "Caretaker Alen", map = 1423, x = 69.92, y = 53.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5210, title = "Brother Carlin", npc = 11063, npcName = "Carlin Redpath", map = 1423, x = 71.7, y = 50.03, f = "e" },
					{ t = "accept", quest = 5181, title = "Villains of Darrowshire", npc = 11063, npcName = "Carlin Redpath", map = 1423, x = 71.7, y = 50.03, f = "e" },
					{ t = "turnin", quest = 5211, title = "Defenders of Darrowshire", npc = 11063, npcName = "Carlin Redpath", map = 1423, x = 71.7, y = 50.03, f = "e" },
				},
			},
			{
				note = "Underwater.",
				goals = {
					{ t = "collect", quest = 5181, item = 12956, itemName = "Skull of Horgus", oi = 1, map = 1423, x = 44.34, y = 41.18, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5181, item = 12957, itemName = "Shattered Sword of Marduk", oi = 2, map = 1423, x = 46.86, y = 55.43, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "collect", quest = 5225, item = 13196, itemName = "Gahrron's Withering Cauldron Key", oi = 1, map = 1422, x = 62.78, y = 58.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5235, title = "Target: Gahrron's Withering", map = 1422, x = 62.56, y = 58.57, f = "e" },
					{ t = "accept", quest = 5236, title = "Return to the Bulwark", map = 1422, x = 62.56, y = 58.57, f = "e" },
				},
			},
			{
				note = "Inside the building. Appears on the crate.",
				goals = {
					{ t = "turnin", quest = 5902, title = "A Plague Upon Thee", map = 1422, x = 48.35, y = 32.0, f = "e" },
					{ t = "accept", quest = 6390, title = "A Plague Upon Thee", map = 1422, x = 48.35, y = 32.0, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 5050, title = "Good Luck Charm", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.05, f = "e" },
					{ t = "accept", quest = 5051, title = "Two Halves Become One", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.05, f = "e" },
				},
			},
			{
				note = "Ghoul with pitchfork. Walks around. May spawn here.",
				goals = {
					{ t = "collect", quest = 5051, item = 12722, itemName = "Good Luck Other-Half-Charm", map = 1422, x = 38.0, y = 56.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 12722, itemName = "Good Luck Other-Half-Charm" },
					{ t = "collect", quest = 5051, item = 12723, itemName = "Good Luck Charm", oi = 1 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 5051, title = "Two Halves Become One", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.05, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 58", map = 1422, x = 41.8, y = 62.0 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5236, title = "Return to the Bulwark", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.03, y = 71.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6390, title = "A Plague Upon Thee", npc = 11615, npcName = "Mickey Levine", map = 1420, x = 83.29, y = 72.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5238, title = "Mission Accomplished!", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.13, y = 68.94, f = "e" },
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
					{ t = "turnin", quest = 5181, title = "Villains of Darrowshire", npc = 11063, npcName = "Carlin Redpath", map = 1423, x = 71.7, y = 50.03, f = "e" },
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
				note = "Buy from the auction house, if possible. Or collect from bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 7826, item = 2592, itemName = "Wool Cloth", count = 60, map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 7827, item = 4306, itemName = "Silk Cloth", count = 60, map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 7831, item = 4338, itemName = "Mageweave Cloth", count = 60, map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 7824, item = 14047, itemName = "Runecloth", count = 60, map = 1454, x = 55.68, y = 62.83, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 3564, item = 10679, itemName = "Andron's Note", map = 1454, x = 49.58, y = 69.12, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 4987, title = "Glyphed Oaken Branch", note = "bank Glyphed Oaken Branch##12663", map = 1454, x = 49.58, y = 69.12, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7826, title = "A Donation of Wool", npc = 14726, npcName = "Rashona Straglash", map = 1454, x = 63.6, y = 51.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7827, title = "A Donation of Silk", npc = 14726, npcName = "Rashona Straglash", map = 1454, x = 63.6, y = 51.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7831, title = "A Donation of Mageweave", npc = 14726, npcName = "Rashona Straglash", map = 1454, x = 63.6, y = 51.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7824, title = "A Donation of Runecloth", npc = 14726, npcName = "Rashona Straglash", map = 1454, x = 63.6, y = 51.22, f = "e" },
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
				note = "Buy from the auction house, if possible. Or collect from bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 7833, item = 2592, itemName = "Wool Cloth", count = 60, map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 7834, item = 4306, itemName = "Silk Cloth", count = 60, map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 7835, item = 4338, itemName = "Mageweave Cloth", count = 60, map = 1454, x = 55.68, y = 62.83, f = "e" },
					{ t = "collect", quest = 7836, item = 14047, itemName = "Runecloth", count = 60, map = 1454, x = 55.68, y = 62.83, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8276, title = "Taking Back Silithus", npc = 15188, npcName = "Cenarion Emissary Blackhoof", map = 1454, x = 47.64, y = 65.77, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7833, title = "A Donation of Wool", npc = 14727, npcName = "Vehena", map = 1454, x = 37.69, y = 87.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7834, title = "A Donation of Silk", npc = 14727, npcName = "Vehena", map = 1454, x = 37.69, y = 87.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7835, title = "A Donation of Mageweave", npc = 14727, npcName = "Vehena", map = 1454, x = 37.69, y = 87.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7836, title = "A Donation of Runecloth", npc = 14727, npcName = "Vehena", map = 1454, x = 37.69, y = 87.9, f = "e" },
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
					{ t = "turnin", quest = 3564, title = "Andron's Payment to Jediga", npc = 8587, npcName = "Jediga", map = 1447, x = 22.56, y = 51.42, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-winterspring-58-59",
		pack = "guides",
		title = "Winterspring",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-silithus-59-60",
		author = "TuWoW & Zygor",
		minLevel = 58,
		maxLevel = 59,
		zone = 1452,
		version = 1,
		steps = {
			{
				note = "Taming a temporary pet soon. Learning Claw (Rank 8).",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Stable Your Pet", map = 1452, x = 60.39, y = 37.92 },
				},
			},
			{
				note = "Cast Tame Beast on a Winterspring Screecher. White owls. Kill enemies nearby.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Learn the Claw (Rank 8) Pet Ability", map = 1452, x = 57.8, y = 26.4 },
				},
			},
			{
				note = "Abandon your temporary pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Retrieve Your Pet", map = 1452, x = 60.39, y = 37.92 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 977, title = "Are We There, Yeti?", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.88, y = 37.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4809, title = "Chillwind Horns", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.63, y = 38.61, f = "e" },
				},
			},
			{
				note = "Kill enemies as you walk. Reduces grinding later.",
				goals = {
					{ t = "complete", quest = 977, title = "Are We There, Yeti?", note = "Click Here to Continue" },
				},
			},
			{
				note = "Matriarchs and Patriarchs. Yetis. Inside and outside the cave.",
				goals = {
					{ t = "collect", quest = 977, item = 12367, itemName = "Pristine Yeti Horn", count = 2, oi = 1, map = 1452, x = 67.65, y = 41.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1452, x = 67.65, y = 41.75 },
					{ t = "goto", text = "Run up and over the mountain", map = 1452, x = 65.83, y = 38.46 },
					{ t = "collect", item = 20742, itemName = "Winterfall Ritual Totem", map = 1452, x = 67.5, y = 35.4, f = "e" },
					{ t = "use", item = 20742, itemName = "Winterfall Ritual Totem" },
					{ t = "accept", quest = 8471, title = "Winterfall Ritual Totem", npc = 7439, npcName = "Winterfall Shaman", map = 1452, x = 67.8, y = 37.8, f = "e" },
				},
			},
			{
				label = "Kill_Winterfall_Enemies",
				along = true,
				goals = {
					{ t = "kill", quest = 8464, npc = 7439, target = "Winterfall Shaman", count = 8, oi = 1, map = 1452, x = 67.8, y = 37.8, f = "e" },
					{ t = "kill", quest = 8464, npc = 7440, target = "Winterfall Den Watcher", count = 8, oi = 2, map = 1452, x = 67.8, y = 37.8, f = "e" },
					{ t = "kill", quest = 8464, npc = 7438, target = "Winterfall Ursa", count = 8, oi = 3, map = 1452, x = 67.8, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4741, npc = 7453, target = "Moontouched Owlbeast", count = 13, oi = 1, map = 1452, x = 63.4, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 977, title = "Are We There, Yeti?", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.88, y = 37.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4809, title = "Chillwind Horns", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.63, y = 38.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4741, title = "Wild Guardians", npc = 10306, npcName = "Trull Failbane", map = 1448, x = 34.73, y = 52.79, f = "e" },
					{ t = "accept", quest = 4721, title = "Wild Guardians", npc = 10306, npcName = "Trull Failbane", map = 1448, x = 34.73, y = 52.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 12558, itemName = "Blue-feathered Necklace", map = 1452, x = 65.7, y = 21.7, f = "e" },
					{ t = "use", item = 12558, itemName = "Blue-feathered Necklace" },
					{ t = "accept", quest = 4882, title = "Guarding Secrets", npc = 7454, npcName = "Berserk Owlbeast", map = 1452, x = 63.4, y = 23.4, f = "e" },
				},
			},
			{
				label = "Kill_Berserk_Owlbeasts",
				along = true,
				goals = {
					{ t = "kill", quest = 4721, npc = 7454, target = "Berserk Owlbeast", count = 10, oi = 1, map = 1452, x = 63.4, y = 23.4, f = "e" },
				},
			},
			{
				label = "Collect_Uncracked_Chillwind_Horns",
				along = true,
				note = "Chimaeras.",
				goals = {
					{ t = "collect", quest = 4809, item = 12444, itemName = "Uncracked Chillwind Horn", count = 8, oi = 1, map = 1452, x = 64.0, y = 30.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5163, title = "Are We There, Yeti?", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.88, y = 37.62, f = "e" },
				},
			},
			{
				note = "On Legacki.",
				goals = {
					{ t = "use", item = 12928, itemName = "Umi's Mechanical Yeti" },
					{ t = "complete", quest = 5163, title = "Are We There, Yeti?", note = "Scare Legacki", map = 1452, x = 61.54, y = 38.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4809, title = "Chillwind Horns", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.63, y = 38.61, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Everlook", map = 1452, x = 61.36, y = 38.83, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8464, title = "Winterfall Activity", npc = 11556, npcName = "Salfa", map = 1452, x = 27.74, y = 34.5, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the tunnel.",
				goals = {
					{ t = "turnin", quest = 8471, title = "Winterfall Ritual Totem", npc = 11558, npcName = "Kernda", map = 1448, x = 65.49, y = 3.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Moonglade", map = 1450, x = 32.1, y = 66.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1123, title = "Rabine Saturna", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.68, y = 45.09, f = "e" },
					{ t = "accept", quest = 1124, title = "Wasteland", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.68, y = 45.09, f = "e" },
				},
			},
			{
				note = "Inside the building. Must have discovered Dire Maul dungeon earlier in the guide.",
				goals = {
					{ t = "goto", text = "Moonglade", map = 1450, x = 51.68, y = 45.09 },
				},
			},
			{
				note = "Inside the building. Must have discovered Dire Maul dungeon earlier in the guide.",
				goals = {
					{ t = "accept", quest = 5527, title = "A Reliquary of Purity", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.68, y = 45.09, f = "e" },
				},
			},
			{
				note = "Final long grind. Run dungeons, if you prefer. Count will reduce as you grind.",
				goals = {
					{ t = "goto", text = "ding 59", map = 1448, x = 63.6, y = 9.6 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8467, title = "Feathers for Nafien", npc = 15395, npcName = "Nafien", map = 1448, x = 64.77, y = 8.13, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the tunnel.",
				goals = {
					{ t = "turnin", quest = 8470, title = "Deadwood Ritual Totem", npc = 11558, npcName = "Kernda", map = 1448, x = 65.49, y = 3.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6031, item = 14047, itemName = "Runecloth", count = 30, map = 1448, x = 63.6, y = 9.6, f = "e" },
				},
			},
			{
				note = "Inside the tunnel.",
				goals = {
					{ t = "accept", quest = 6031, title = "Runecloth", npc = 11557, npcName = "Meilosh", map = 1448, x = 65.69, y = 2.81, f = "e" },
				},
			},
			{
				note = "Inside the tunnel.",
				goals = {
					{ t = "turnin", quest = 6031, title = "Runecloth", npc = 11557, npcName = "Meilosh", map = 1448, x = 65.69, y = 2.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4721, title = "Wild Guardians", npc = 10306, npcName = "Trull Failbane", map = 1448, x = 34.73, y = 52.79, f = "e" },
					{ t = "turnin", quest = 4882, title = "Guarding Secrets", npc = 10306, npcName = "Trull Failbane", map = 1448, x = 34.73, y = 52.79, f = "e" },
					{ t = "accept", quest = 4883, title = "Guarding Secrets", npc = 10306, npcName = "Trull Failbane", map = 1448, x = 34.73, y = 52.79, f = "e" },
				},
			},
			{
				note = "Buy from the auction house, if possible. Or collect from bank.",
				goals = {
					{ t = "collect", quest = 7820, item = 2592, itemName = "Wool Cloth", count = 60, map = 1456, x = 40.41, y = 51.77, f = "e" },
					{ t = "collect", quest = 7821, item = 4306, itemName = "Silk Cloth", count = 60, map = 1456, x = 40.41, y = 51.77, f = "e" },
					{ t = "collect", quest = 7822, item = 4338, itemName = "Mageweave Cloth", count = 60, map = 1456, x = 40.41, y = 51.77, f = "e" },
					{ t = "collect", quest = 7823, item = 14047, itemName = "Runecloth", count = 60, map = 1456, x = 40.41, y = 51.77, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 4005, item = 11617, itemName = "Eridan's Supplies", map = 1456, x = 47.13, y = 57.89, f = "e" },
					{ t = "collect", quest = 4987, item = 12663, itemName = "Glyphed Oaken Branch", map = 1456, x = 47.13, y = 57.89, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7820, title = "A Donation of Wool", npc = 14728, npcName = "Rumstag Proudstrider", map = 1456, x = 43.05, y = 42.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7821, title = "A Donation of Silk", npc = 14728, npcName = "Rumstag Proudstrider", map = 1456, x = 43.05, y = 42.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7822, title = "A Donation of Mageweave", npc = 14728, npcName = "Rumstag Proudstrider", map = 1456, x = 43.05, y = 42.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7823, title = "A Donation of Runecloth", npc = 14728, npcName = "Rumstag Proudstrider", map = 1456, x = 43.05, y = 42.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4883, title = "Guarding Secrets", npc = 5770, npcName = "Nara Wildmane", map = 1456, x = 75.65, y = 31.61, f = "e" },
					{ t = "turnin", quest = 4987, title = "Glyphed Oaken Branch", npc = 5770, npcName = "Nara Wildmane", map = 1456, x = 75.65, y = 31.61, f = "e" },
				},
			},
			{
				note = "Walks a large path.",
				goals = {
					{ t = "accept", quest = 7492, title = "Camp Mojache", npc = 10881, npcName = "Bluff Runner Windstrider", map = 1412, x = 38.8, y = 28.8, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", text = "Train Kodo Riding", map = 1412, x = 46.78, y = 62.01 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 7492, title = "Camp Mojache", npc = 7776, npcName = "Talo Thornhoof", map = 1444, x = 76.18, y = 43.83, f = "e" },
				},
			},
			{
				note = "On Sprinkle.",
				goals = {
					{ t = "use", item = 12928, itemName = "Umi's Mechanical Yeti" },
					{ t = "complete", quest = 5163, title = "Are We There, Yeti?", note = "Scare Sprinkle", map = 1446, x = 51.06, y = 26.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 11617, itemName = "Eridan's Supplies" },
					{ t = "collect", quest = 4005, item = 11173, itemName = "Irontree Heart" },
					{ t = "collect", quest = 4005, item = 11172, itemName = "Silvery Claws", count = 11 },
					{ t = "collect", quest = 4005, item = 11169, itemName = "Book of Aquor" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run through the tunnel to enter Lost Rigger Cove", map = 1446, x = 68.62, y = 41.46 },
					{ t = "use", item = 11169, itemName = "Book of Aquor" },
					{ t = "collect", quest = 4005, item = 11522, itemName = "Silver Totem of Aquementas", oi = 1, map = 1446, x = 70.42, y = 49.9, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Run through the tunnel to leave Lost Rigger Cove", map = 1446, x = 69.63, y = 42.37 },
					{ t = "goto", text = "Enter the cave", map = 1449, x = 43.47, y = 6.79 },
					{ t = "turnin", quest = 4005, title = "Aquementas", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
					{ t = "accept", quest = 3961, title = "Linken's Adventure", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1449, x = 43.47, y = 6.79 },
					{ t = "turnin", quest = 3961, title = "Linken's Adventure", npc = 8737, npcName = "Linken", map = 1449, x = 44.66, y = 8.1, f = "e" },
				},
			},
			{
				note = "On Quixxil.",
				goals = {
					{ t = "use", item = 12928, itemName = "Umi's Mechanical Yeti" },
					{ t = "complete", quest = 5163, title = "Are We There, Yeti?", note = "Scare Quixxil", map = 1449, x = 43.67, y = 9.38, f = "e" },
				},
			},
		},
	})
end

