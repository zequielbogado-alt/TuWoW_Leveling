-- TuWoW_Leveling — Guides/Leveling_Horde_12.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-the-barrens-and-stonetalon-mountain-15-21-part-3",
		pack = "guides",
		title = "The Barrens & Stonetalon Mountain (Parte 3/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-ashenvale-21-22",
		author = "TuWoW & Zygor",
		minLevel = 15,
		maxLevel = 21,
		zone = 1411,
		version = 1,
		steps = {
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
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 1528, title = "Call of Water", npc = 5892, npcName = "Searn Firewarder", map = 1454, x = 37.96, y = 37.73, f = "e" },
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
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1528, title = "Call of Water", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.83, y = 43.78, f = "e" },
					{ t = "accept", quest = 1530, title = "Call of Water", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.83, y = 43.78, f = "e" },
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
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1507, title = "Devourer of Souls", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.25, y = 45.29, f = "e" },
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
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1507, title = "Devourer of Souls", npc = 5909, npcName = "Cazul", map = 1454, x = 47.06, y = 46.48, f = "e" },
					{ t = "accept", quest = 1508, title = "Blind Cazul", npc = 5909, npcName = "Cazul", map = 1454, x = 47.06, y = 46.48, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1508, title = "Blind Cazul", npc = 5910, npcName = "Zankaja", map = 1454, x = 37.03, y = 59.45, f = "e" },
					{ t = "accept", quest = 1509, title = "News of Dogran", npc = 5910, npcName = "Zankaja", map = 1454, x = 37.03, y = 59.45, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1509, title = "News of Dogran", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.93, y = 30.32, f = "e" },
					{ t = "accept", quest = 1510, title = "News of Dogran", npc = 3464, npcName = "Gazrog", map = 1413, x = 51.93, y = 30.32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 878, title = "Tribes at War", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.55, y = 59.24, f = "e" },
					{ t = "accept", quest = 5052, title = "Blood Shards of Agamaggan", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.55, y = 59.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5052, title = "Blood Shards of Agamaggan", npc = 3430, npcName = "Mangletooth", map = 1413, x = 44.55, y = 59.24, f = "e" },
				},
			},
			{
				note = "Exchange Blood Shards for buffs. When questing in the Barrens, spend extra Blood Shards here. SPIRIT OF THE WIND +30% Movement Speed (5 Minutes) Note: Does NOT stack with other run speed abilities. AGAMAGGAN'S STRENGTH +10 Strength (30 Minutes) AGAMAGGAN'S AGILITY +10 Agility (30 Minutes) WISDOM OF AGAMAGGAN +10 Intellect (30 Minutes) RISING SPIRIT +25 Spirit (30 Minutes) RAZORHIDE +95 Armor and Returns Damage to Enemies (10 Minutes)",
				goals = {
					{ t = "complete", quest = 882, title = "Ishamuhale", note = "Click Here to Continue", map = 1413, x = 44.55, y = 59.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 882, title = "Ishamuhale", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.86, y = 59.14, f = "e" },
					{ t = "accept", quest = 907, title = "Enraged Thunder Lizards", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.86, y = 59.14, f = "e" },
					{ t = "turnin", quest = 883, title = "Lakota'mani", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.86, y = 59.14, f = "e" },
				},
			},
			{
				note = "Pink dinosaurs.",
				goals = {
					{ t = "collect", quest = 907, item = 5143, itemName = "Thunder Lizard Blood", count = 3, oi = 1, map = 1413, x = 44.73, y = 62.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 907, title = "Enraged Thunder Lizards", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.86, y = 59.14, f = "e" },
					{ t = "accept", quest = 913, title = "Cry of the Thunderhawk", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.86, y = 59.14, f = "e" },
				},
			},
			{
				note = "Top of the hill.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1530, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
					{ t = "accept", quest = 1535, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "use", item = 7766, itemName = "Empty Brown Waterskin" },
					{ t = "collect", quest = 1535, item = 7769, itemName = "Filled Brown Waterskin", oi = 1, map = 1413, x = 44.35, y = 76.97, f = "e" },
				},
			},
			{
				note = "Top of the hill.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1535, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
					{ t = "accept", quest = 1536, title = "Call of Water", npc = 5899, npcName = "Brine", map = 1413, x = 43.42, y = 77.41, f = "e" },
				},
			},
			{
				label = "Collect_Thunderhawk_Wings",
				along = true,
				note = "Flying snakes.",
				goals = {
					{ t = "collect", quest = 913, item = 5164, itemName = "Thunderhawk Wings", oi = 1, map = 1413, x = 45.6, y = 56.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 913, title = "Cry of the Thunderhawk", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.86, y = 59.14, f = "e" },
					{ t = "accept", quest = 874, title = "Mahren Skyseer", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.86, y = 59.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Two-Handed Maces", map = 1456, x = 40.93, y = 62.73, only = { classes = { "WARRIOR" } } },
					{ t = "goto", text = "Train One-Handed Maces", map = 1456, x = 40.93, y = 62.73, only = { classes = { "ROGUE" } } },
					{ t = "goto", text = "Train Staves", map = 1456, x = 40.93, y = 62.73, only = { classes = { "WARRIOR", "PRIEST", "WARLOCK" } } },
					{ t = "goto", text = "Train Guns", map = 1456, x = 40.93, y = 62.73, only = { classes = { "HUNTER" } } },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Thunder Bluff", map = 1456, x = 45.81, y = 64.71, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1456, x = 29.84, y = 29.88 },
					{ t = "accept", quest = 264, title = "Until Death Do Us Part", npc = 5543, npcName = "Clarice Foster", map = 1456, x = 24.72, y = 22.3, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 5642, title = "Shadowguard", npc = 3044, npcName = "Miles Welsh", map = 1456, x = 25.32, y = 15.29, f = "e", only = { races = { "Troll" } } },
					{ t = "accept", quest = 5644, title = "Dark Sacrifice", npc = 3044, npcName = "Miles Welsh", map = 1456, x = 25.32, y = 15.29, f = "e", only = { races = { "Scourge" } } },
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
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1456, x = 29.81, y = 29.82 },
					{ t = "turnin", quest = 1489, title = "Hamuul Runetotem", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.62, y = 28.56, f = "e" },
					{ t = "accept", quest = 1490, title = "Nara Wildmane", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.62, y = 28.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1490, title = "Nara Wildmane", npc = 5770, npcName = "Nara Wildmane", map = 1456, x = 75.65, y = 31.61, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "accept", quest = 27, title = "A Lesson to Learn", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.48, y = 27.22, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 27, title = "A Lesson to Learn", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 28, title = "Trial of the Lake", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				note = "Wicker vase. Underwater. Random locoations.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 28, item = 15877, itemName = "Shrine Bauble", oi = 1, map = 1450, x = 54.33, y = 55.65, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 15877, itemName = "Shrine Bauble" },
					{ t = "complete", quest = 28, title = "Trial of the Lake", note = "Complete the Trial of the Lake", map = 1450, x = 35.92, y = 41.38, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 28, title = "Trial of the Lake", npc = 11799, npcName = "Tajarri", map = 1450, x = 36.52, y = 40.1, f = "e" },
					{ t = "accept", quest = 30, title = "Trial of the Sea Lion", npc = 11799, npcName = "Tajarri", map = 1450, x = 36.52, y = 40.1, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "getfp", location = "Thunder Bluff", map = 1456, x = 46.98, y = 49.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 868, title = "Egg Hunt", npc = 3428, npcName = "Korran", map = 1413, x = 51.07, y = 29.63, f = "e" },
				},
			},
			{
				note = "Centaur with two guards. Walks around.",
				goals = {
					{ t = "collect", quest = 852, item = 5025, itemName = "Hezrul's Head", oi = 1, map = 1413, x = 48.8, y = 39.8, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 852, title = "Hezrul Bloodmark", npc = 3389, npcName = "Regthar Deathgate", map = 1413, x = 45.34, y = 28.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1062, title = "Goblin Invaders", npc = 4049, npcName = "Seereth Stonebreak", map = 1413, x = 35.26, y = 27.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1063, title = "The Elder Crone", npc = 4049, npcName = "Seereth Stonebreak", map = 1413, x = 35.26, y = 27.88, f = "e" },
					{ t = "accept", quest = 1068, title = "Shredding Machines", npc = 4049, npcName = "Seereth Stonebreak", map = 1413, x = 35.26, y = 27.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6523, title = "Protect Kaya", npc = 11857, npcName = "Makaba Flathoof", map = 1413, x = 35.19, y = 27.79, f = "e" },
					{ t = "accept", quest = 6401, title = "Kaya's Alive", npc = 11857, npcName = "Makaba Flathoof", map = 1413, x = 35.19, y = 27.79, f = "e" },
					{ t = "turnin", quest = 6629, title = "Kill Grundig Darkcloud", npc = 11857, npcName = "Makaba Flathoof", map = 1413, x = 35.19, y = 27.79, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "goto", text = "Follow the path up and through the mountains", map = 1442, x = 82.07, y = 98.57 },
					{ t = "turnin", quest = 1060, title = "Letter to Jin'Zil", npc = 3995, npcName = "Witch Doctor Jin'Zil", map = 1442, x = 74.54, y = 97.94, f = "e" },
					{ t = "accept", quest = 1058, title = "Jin'Zil's Forest Magic", npc = 3995, npcName = "Witch Doctor Jin'Zil", map = 1442, x = 74.54, y = 97.94, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1510, title = "News of Dogran", npc = 4197, npcName = "Ken'zigla", map = 1442, x = 73.25, y = 95.13, f = "e" },
					{ t = "accept", quest = 1511, title = "Ken'zigla's Draught", npc = 4197, npcName = "Ken'zigla", map = 1442, x = 73.25, y = 95.13, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6461, title = "Blood Feeders", npc = 12816, npcName = "Xen'Zilla", map = 1442, x = 71.24, y = 95.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6401, title = "Kaya's Alive", npc = 11864, npcName = "Tammra Windfield", map = 1442, x = 47.46, y = 58.38, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1442, x = 49.2, y = 61.91 },
					{ t = "accept", quest = 6562, title = "Trouble in the Deeps", npc = 11862, npcName = "Tsunaman", map = 1442, x = 47.37, y = 64.29, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1095, title = "Further Instructions", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 58.99, y = 62.6, f = "e" },
				},
			},
			{
				note = "Humanoid robot. Walks around. Kill enemies while searching. Spawns at this location.",
				goals = {
					{ t = "kill", quest = 1068, npc = 4074, target = "XT:9", oi = 2, map = 1442, x = 70.66, y = 56.12, f = "e" },
				},
			},
			{
				note = "Humanoid robot. Walks around. Kill enemies while searching. Spawns at this location.",
				goals = {
					{ t = "kill", quest = 1068, npc = 4073, target = "XT:4", oi = 1, map = 1442, x = 67.32, y = 46.58, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-ashenvale-21-22",
		pack = "guides",
		title = "Ashenvale",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-hillsbrad-foothills-22-24",
		author = "TuWoW & Zygor",
		minLevel = 21,
		maxLevel = 22,
		zone = 1442,
		version = 1,
		steps = {
			{
				note = "Avoid Astranaar.",
				goals = {
					{ t = "goto", text = "Enter the tunnel and follow the path of lanterns to Ashenvale", map = 1442, x = 78.28, y = 42.51 },
					{ t = "goto", text = "Leave the tunnel and enter Ashenvale", map = 1442, x = 81.54, y = 30.03 },
					{ t = "getfp", location = "Zoram'gar Outpost", map = 1440, x = 12.23, y = 33.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6562, title = "Trouble in the Deeps", npc = 12736, npcName = "Je'neu Sancrea", map = 1440, x = 11.56, y = 34.28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 216, title = "Between a Rock and a Thistlefur", npc = 12757, npcName = "Karang Amakkar", map = 1440, x = 11.9, y = 34.53, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 6442, title = "Naga at the Zoram Strand", npc = 12719, npcName = "Marukai", map = 1440, x = 11.69, y = 34.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 6462, title = "Troll Charm", npc = 12721, npcName = "Mitsuwa", map = 1440, x = 11.65, y = 34.85, f = "e" },
				},
			},
			{
				note = "Nagas.",
				goals = {
					{ t = "collect", quest = 6442, item = 5490, itemName = "Wrathtail Head", count = 20, oi = 1, map = 1440, x = 14.53, y = 23.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 21,23750", map = 1440, x = 14.53, y = 23.81 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6442, title = "Naga at the Zoram Strand", npc = 12719, npcName = "Marukai", map = 1440, x = 11.69, y = 34.9, f = "e" },
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
					{ t = "complete", quest = 868, title = "Egg Hunt", note = "bank Digging Claw##5059", map = 1456, x = 47.13, y = 57.89, f = "e" },
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
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3043, npcName = "Ker Ragetotem", map = 1456, x = 57.58, y = 85.52, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Train Two-Handed Axes", map = 1454, x = 81.53, y = 19.61 },
				},
			},
			{
				note = "Inside the tent.",
				goals = {
					{ t = "turnin", quest = 1063, title = "The Elder Crone", npc = 4046, npcName = "Magatha Grimtotem", map = 1456, x = 69.85, y = 30.91, f = "e" },
				},
			},
			{
				note = "Inside the tent.",
				goals = {
					{ t = "accept", quest = 1064, title = "Forsaken Aid", npc = 4046, npcName = "Magatha Grimtotem", map = 1456, x = 69.85, y = 30.91, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1456, x = 29.81, y = 29.82 },
					{ t = "turnin", quest = 1064, title = "Forsaken Aid", npc = 3419, npcName = "Apothecary Zamah", map = 1456, x = 22.81, y = 20.9, f = "e" },
					{ t = "accept", quest = 1065, title = "Journey to Tarren Mill", npc = 3419, npcName = "Apothecary Zamah", map = 1456, x = 22.81, y = 20.9, f = "e" },
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
				note = "Inside the building.",
				only = { races = { "Troll" }, classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1456, x = 29.81, y = 29.82 },
					{ t = "turnin", quest = 5642, title = "Shadowguard", npc = 6018, npcName = "Ur'kyo", map = 1454, x = 35.59, y = 87.82, f = "e" },
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
				note = "Top of the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1456, x = 29.81, y = 29.82 },
					{ t = "goto", text = "learnspell Teleport: Orgrimmar##3567", map = 1454, x = 38.68, y = 85.41 },
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
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1456, x = 29.81, y = 29.82 },
					{ t = "turnin", quest = 1511, title = "Ken'zigla's Draught", npc = 5911, npcName = "Grunt Logmar", map = 1413, x = 44.62, y = 59.27, f = "e" },
					{ t = "accept", quest = 1515, title = "Dogran's Captivity", npc = 5911, npcName = "Grunt Logmar", map = 1413, x = 44.62, y = 59.27, f = "e" },
				},
			},
			{
				note = "Inside the hut.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1515, title = "Dogran's Captivity", npc = 5908, npcName = "Grunt Dogran", map = 1413, x = 43.31, y = 47.89, f = "e" },
					{ t = "accept", quest = 1512, title = "Love's Gift", npc = 5908, npcName = "Grunt Dogran", map = 1413, x = 43.31, y = 47.89, f = "e" },
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
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1512, title = "Love's Gift", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.25, y = 45.29, f = "e" },
					{ t = "accept", quest = 1513, title = "The Binding", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.25, y = 45.29, f = "e" },
				},
			},
			{
				note = "Stand on the pink symbol. Inside the tent. Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 6626, itemName = "Dogran's Pendant" },
					{ t = "kill", quest = 1513, npc = 5677, target = "Summoned Succubus", oi = 1, map = 1454, x = 49.45, y = 50.03, f = "e" },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1513, title = "The Binding", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.24, y = 45.29, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1456, x = 29.81, y = 29.82 },
					{ t = "train", npc = 3328, npcName = "Ormok", map = 1454, x = 43.91, y = 54.63, f = "e" },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 2460, title = "The Shattered Salute", npc = 3401, npcName = "Shenthul", map = 1454, x = 43.05, y = 53.74, f = "e" },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow. Wait for Shenthul to salute you. Perform the /salute emote on Shenthul. macro /salute",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "complete", quest = 2460, title = "The Shattered Salute", note = "Perform the Shattered Salute", map = 1454, x = 43.05, y = 53.74, f = "e" },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2460, title = "The Shattered Salute", npc = 3401, npcName = "Shenthul", map = 1454, x = 43.05, y = 53.74, f = "e" },
					{ t = "accept", quest = 2458, title = "Deep Cover", npc = 3401, npcName = "Shenthul", map = 1454, x = 43.05, y = 53.74, f = "e" },
				},
			},
			{
				note = "On Taskmaster Fizzule two times. Nearby to the north. Perform the /salute emote on Taskmaster Fizzule. macro /salute Wait for him to salute you back.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "use", item = 8051, itemName = "Flare Gun" },
					{ t = "complete", quest = 2458, title = "Deep Cover", note = "Signal Taskmaster Fizzule", map = 1413, x = 55.47, y = 6.08, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2458, title = "Deep Cover", npc = 7233, npcName = "Taskmaster Fizzule", map = 1413, x = 55.44, y = 5.56, f = "e" },
					{ t = "accept", quest = 2478, title = "Mission: Possible But Not Probable", npc = 7233, npcName = "Taskmaster Fizzule", map = 1413, x = 55.44, y = 5.56, f = "e" },
				},
			},
			{
				note = "Pickpocket Foreman Silixiz.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 2478, item = 8072, itemName = "Silixiz's Tower Key", oi = 5, map = 1413, x = 54.8, y = 5.97, f = "e" },
				},
			},
			{
				note = "Use Ambush to deal extra damage. Ground floor inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "kill", quest = 2478, npc = 7310, target = "Mutated Venture Co. Drone", count = 2, oi = 1, map = 1413, x = 54.71, y = 5.73, f = "e" },
				},
			},
			{
				note = "Use Rupture to deal extra damage. Middle floor inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "kill", quest = 2478, npc = 7308, target = "Venture Co. Patroller", count = 2, oi = 3, map = 1413, x = 54.81, y = 5.59, f = "e" },
				},
			},
			{
				note = "Use Eviscerate to deal extra damage. Up on the balcony. Middle floor inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "kill", quest = 2478, npc = 7307, target = "Venture Co. Lookout", count = 2, oi = 2, map = 1413, x = 54.63, y = 5.64, f = "e" },
				},
			},
			{
				note = "Use Ambush to deal extra damage. Top floor inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 2478, item = 8074, itemName = "Gallywix's Head", oi = 4, map = 1413, x = 54.75, y = 5.59, f = "e" },
				},
			},
			{
				note = "Lockpick it. Top floor inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 2478, item = 8073, itemName = "Cache of Zanzil's Altered Mixture", oi = 6, map = 1413, x = 54.75, y = 5.55, f = "e" },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2478, title = "Mission: Possible But Not Probable", npc = 3401, npcName = "Shenthul", map = 1454, x = 43.05, y = 53.74, f = "e" },
					{ t = "accept", quest = 2479, title = "Hinott's Assistance", npc = 3401, npcName = "Shenthul", map = 1454, x = 43.05, y = 53.74, f = "e" },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow. Buy 20+ Dust of Decay and Empty Vials. Used to create poisons.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "vendor", npc = 3334, npcName = "Rekkul", map = 1454, x = 42.09, y = 49.48, f = "e" },
				},
			},
			{
				note = "Underwater.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1456, x = 29.81, y = 29.82 },
					{ t = "collect", quest = 30, item = 15883, itemName = "Half Pendant of Aquatic Agility", map = 1413, x = 56.67, y = 8.32, f = "e" },
				},
			},
		},
	})
end

