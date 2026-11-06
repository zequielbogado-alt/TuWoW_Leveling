-- TuWoW_Leveling — Guides/Leveling_Horde_04.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-tauren-starter-1-13",
		pack = "guides",
		title = "Tauren Starter (Parte 1/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-tauren-starter-1-13-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1412,
		version = 1,
		races = { "Tauren" },
		steps = {
			{
				note = "Loot items worth at least 10 copper to sell. Allows training an ability early. Increases leveling speed.",
				only = { classes = { "WARRIOR", "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Mulgore", map = 1412, x = 44.91, y = 80.95 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR", "SHAMAN" } },
				goals = {
					{ t = "vendor", npc = 3072, npcName = "Kawnie Softbreeze", map = 1412, x = 44.82, y = 77.05, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 747, title = "The Hunt Begins", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.47, y = 77.51, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3062, npcName = "Meela Dawnstrider", map = 1412, x = 44.59, y = 76.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 752, title = "A Humble Task", npc = 2981, npcName = "Chief Hawkwind", map = 1412, x = 43.89, y = 76.66, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3059, npcName = "Harutt Thunderhorn", map = 1412, x = 43.75, y = 76.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 752, title = "A Humble Task", npc = 2991, npcName = "Greatmother Hawkwind", map = 1412, x = 48.77, y = 80.91, f = "e" },
					{ t = "accept", quest = 753, title = "A Humble Task", npc = 2991, npcName = "Greatmother Hawkwind", map = 1412, x = 48.77, y = 80.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Skinning" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Herbalism" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Mining" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 753, item = 4755, itemName = "Water Pitcher", oi = 1, map = 1412, x = 48.92, y = 81.08, f = "e" },
				},
			},
			{
				label = "Collect_Plainstrider_Meat_And_Feathers",
				along = true,
				goals = {
					{ t = "collect", quest = 747, item = 4739, itemName = "Plainstrider Meat", count = 7, oi = 1, map = 1412, x = 46.75, y = 79.84, f = "e" },
					{ t = "collect", quest = 747, item = 4740, itemName = "Plainstrider Feather", count = 7, oi = 2, map = 1412, x = 46.75, y = 79.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 747, title = "The Hunt Begins", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.47, y = 77.51, f = "e" },
					{ t = "accept", quest = 750, title = "The Hunt Continues", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.47, y = 77.51, f = "e" },
					{ t = "accept", quest = 3091, title = "Simple Note", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.47, y = 77.51, f = "e" },
					{ t = "accept", quest = 3093, title = "Rune-Inscribed Note", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.47, y = 77.51, f = "e" },
					{ t = "accept", quest = 3092, title = "Etched Note", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.47, y = 77.51, f = "e" },
					{ t = "accept", quest = 3094, title = "Verdant Note", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.47, y = 77.51, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 3093, title = "Rune-Inscribed Note", npc = 3062, npcName = "Meela Dawnstrider", map = 1412, x = 44.58, y = 76.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 3094, title = "Verdant Note", npc = 3060, npcName = "Gart Mistrunner", map = 1412, x = 44.65, y = 76.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 3060, npcName = "Gart Mistrunner", map = 1412, x = 44.65, y = 76.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 753, title = "A Humble Task", npc = 2981, npcName = "Chief Hawkwind", map = 1412, x = 43.89, y = 76.66, f = "e" },
					{ t = "accept", quest = 755, title = "Rites of the Earthmother", npc = 2981, npcName = "Chief Hawkwind", map = 1412, x = 43.89, y = 76.66, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 3091, title = "Simple Note", npc = 3059, npcName = "Harutt Thunderhorn", map = 1412, x = 43.75, y = 76.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 3092, title = "Etched Note", npc = 3061, npcName = "Lanka Farshot", map = 1412, x = 43.96, y = 76.36, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3061, npcName = "Lanka Farshot", map = 1412, x = 43.96, y = 76.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 7005, itemName = "Skinning Knife", map = 1412, x = 44.82, y = 77.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 2901, itemName = "Mining Pick", map = 1412, x = 44.82, y = 77.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 755, title = "Rites of the Earthmother", npc = 2982, npcName = "Seer Graytongue", map = 1412, x = 42.55, y = 90.12, f = "e" },
					{ t = "accept", quest = 757, title = "Rite of Strength", npc = 2982, npcName = "Seer Graytongue", map = 1412, x = 42.55, y = 90.12, f = "e" },
				},
			},
			{
				label = "Collect_Mountain_Cougar_Pelts",
				along = true,
				goals = {
					{ t = "collect", quest = 750, item = 4742, itemName = "Mountain Cougar Pelt", count = 10, oi = 1, map = 1412, x = 48.0, y = 88.55, f = "e" },
				},
			},
			{
				note = "Helps reach level 4 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 3,1150", map = 1412, x = 48.0, y = 88.55 },
				},
			},
			{
				note = "No death penalty at this level. Fast travel.",
				goals = {
					{ t = "complete", quest = 750, title = "The Hunt Continues", note = "Die on Purpose", map = 1412, x = 56.36, y = 88.69, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 750, title = "The Hunt Continues", note = "Resurrect at the Spirit Healer", map = 1412, x = 42.61, y = 78.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 750, title = "The Hunt Continues", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.47, y = 77.51, f = "e" },
					{ t = "accept", quest = 780, title = "The Battleboars", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.47, y = 77.51, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 3376, title = "Break Sharptusk!", npc = 3209, npcName = "Brave Windfeather", map = 1412, x = 44.52, y = 77.48, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 1519, title = "Call of Earth", npc = 5888, npcName = "Seer Ravenfeather", map = 1412, x = 44.35, y = 76.76, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3062, npcName = "Meela Dawnstrider", map = 1412, x = 44.58, y = 76.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3059, npcName = "Harutt Thunderhorn", map = 1412, x = 43.75, y = 76.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 3060, npcName = "Gart Mistrunner", map = 1412, x = 44.65, y = 76.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3061, npcName = "Lanka Farshot", map = 1412, x = 43.96, y = 76.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 780, item = 4848, itemName = "Battleboar Snout", count = 8, oi = 1, map = 1412, x = 53.0, y = 80.59, f = "e" },
					{ t = "collect", quest = 780, item = 4849, itemName = "Battleboar Flank", count = 8, oi = 2, map = 1412, x = 53.0, y = 80.59, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run through the tunnel", map = 1412, x = 55.53, y = 84.13 },
					{ t = "collect", quest = 3376, item = 10459, itemName = "Chief Sharptusk Thornmantle's Head", oi = 1, map = 1412, x = 60.99, y = 78.0, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "collect", item = 4851, itemName = "Dirt-stained Map" },
					{ t = "use", item = 4851, itemName = "Dirt-stained Map" },
					{ t = "accept", quest = 781, title = "Attack on Camp Narache", map = 1412, x = 59.77, y = 82.2, f = "e" },
				},
			},
			{
				label = "Collect_Ritual_Salves_Shaman",
				along = true,
				note = "Uncommon and spread out.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1519, item = 6634, itemName = "Ritual Salve", count = 2, oi = 1, map = 1412, x = 59.77, y = 78.86, f = "e" },
				},
			},
			{
				label = "Collect_Bristleback_Belts",
				along = true,
				note = "Quilboars.",
				goals = {
					{ t = "collect", quest = 757, item = 4770, itemName = "Bristleback Belt", count = 12, oi = 1, map = 1412, x = 59.77, y = 78.86, f = "e" },
				},
			},
			{
				note = "No death penalty at this level. Fast travel.",
				goals = {
					{ t = "complete", quest = 757, title = "Rite of Strength", note = "Die on Purpose", map = 1412, x = 59.77, y = 78.86, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 757, title = "Rite of Strength", note = "Resurrect at the Spirit Healer", map = 1412, x = 42.61, y = 78.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "hearth", location = "Camp Narache" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 780, title = "The Battleboars", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.47, y = 77.51, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 3376, title = "Break Sharptusk!", npc = 3209, npcName = "Brave Windfeather", map = 1412, x = 44.52, y = 77.48, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 781, title = "Attack on Camp Narache", npc = 2981, npcName = "Chief Hawkwind", map = 1412, x = 43.89, y = 76.66, f = "e" },
					{ t = "turnin", quest = 757, title = "Rite of Strength", npc = 2981, npcName = "Chief Hawkwind", map = 1412, x = 43.89, y = 76.66, f = "e" },
					{ t = "accept", quest = 763, title = "Rites of the Earthmother", npc = 2981, npcName = "Chief Hawkwind", map = 1412, x = 43.89, y = 76.66, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1519, title = "Call of Earth", npc = 5888, npcName = "Seer Ravenfeather", map = 1412, x = 44.35, y = 76.77, f = "e" },
					{ t = "accept", quest = 1520, title = "Call of Earth", npc = 5888, npcName = "Seer Ravenfeather", map = 1412, x = 44.35, y = 76.77, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3062, npcName = "Meela Dawnstrider", map = 1412, x = 44.58, y = 76.56, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "use", item = 6635, itemName = "Earth Sapta" },
					{ t = "turnin", quest = 1520, title = "Call of Earth", npc = 5891, npcName = "Minor Manifestation of Earth", map = 1412, x = 51.93, y = 80.43, f = "e" },
					{ t = "accept", quest = 1521, title = "Call of Earth", npc = 5891, npcName = "Minor Manifestation of Earth", map = 1412, x = 51.93, y = 80.43, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1521, title = "Call of Earth", npc = 5888, npcName = "Seer Ravenfeather", map = 1412, x = 44.35, y = 76.77, f = "e" },
				},
			},
			{
				note = "Skin them. Needed for quest soon.",
				goals = {
					{ t = "goto", text = "skill Skinning,20", map = 1412, x = 46.75, y = 79.84 },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "accept", quest = 1656, title = "A Task Unfinished", npc = 6775, npcName = "Antur Fallow", map = 1412, x = 39.17, y = 81.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 743, title = "Dangers of the Windfury", npc = 2985, npcName = "Ruul Eagletalon", map = 1412, x = 46.54, y = 64.96, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 763, title = "Rites of the Earthmother", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 46.67, y = 63.42, f = "e" },
					{ t = "accept", quest = 745, title = "Sharing the Land", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 46.67, y = 63.42, f = "e" },
					{ t = "accept", quest = 767, title = "Rite of Vision", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 46.67, y = 63.42, f = "e" },
					{ t = "accept", quest = 746, title = "Dwarven Digging", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 46.67, y = 63.42, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1656, title = "A Task Unfinished", npc = 6747, npcName = "Innkeeper Kauth", map = 1412, x = 45.92, y = 64.19, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "skill", level = 75, skill = "First Aid" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 766, title = "Mazzranache", npc = 3055, npcName = "Maur Raincaller", map = 1412, x = 46.23, y = 60.81, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.93, y = 59.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 767, title = "Rite of Vision", npc = 3054, npcName = "Zarlman Two-Moons", map = 1412, x = 46.88, y = 61.19, f = "e" },
					{ t = "accept", quest = 771, title = "Rite of Vision", npc = 3054, npcName = "Zarlman Two-Moons", map = 1412, x = 46.88, y = 61.19, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3066, npcName = "Narm Skychaser", map = 1412, x = 47.4, y = 62.55, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 761, title = "Swoop Hunting", npc = 2947, npcName = "Harken Windtotem", map = 1412, x = 47.67, y = 62.69, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 3064, npcName = "Gennia Runetotem", map = 1412, x = 47.48, y = 62.95, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3063, npcName = "Krang Stonehoof", map = 1412, x = 48.34, y = 63.77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 748, title = "Poison Water", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 47.52, y = 63.58, f = "e" },
				},
			},
			{
				label = "Collect_Ambercorns",
				along = true,
				note = "Small brown pinecones. Near trees.",
				goals = {
					{ t = "collect", quest = 771, item = 4809, itemName = "Ambercorn", count = 2, oi = 2, map = 1412, x = 39.49, y = 63.11, f = "e" },
				},
			},
			{
				label = "Collect_Prairie_Wolf_Items",
				along = true,
				goals = {
					{ t = "collect", quest = 766, item = 4804, itemName = "Prairie Wolf Heart", oi = 1, map = 1412, x = 40.74, y = 64.78, f = "e" },
					{ t = "collect", quest = 748, item = 4758, itemName = "Prairie Wolf Paw", count = 6, oi = 1, map = 1412, x = 40.74, y = 64.78, f = "e" },
				},
			},
			{
				label = "Collect_Plainstrider_Items",
				along = true,
				note = "Large walking birds.",
				goals = {
					{ t = "collect", quest = 766, item = 4806, itemName = "Plainstrider Scale", oi = 3, map = 1412, x = 40.74, y = 64.78, f = "e" },
					{ t = "collect", quest = 748, item = 4759, itemName = "Plainstrider Talon", count = 4, oi = 2, map = 1412, x = 40.74, y = 64.78, f = "e" },
				},
			},
			{
				label = "Collect_Swoop_Items",
				along = true,
				note = "Black birds. Uncommon and spread out.",
				goals = {
					{ t = "collect", quest = 766, item = 4807, itemName = "Swoop Gizzard", oi = 4, map = 1412, x = 40.74, y = 65.11, f = "e" },
					{ t = "collect", quest = 761, item = 4769, itemName = "Trophy Swoop Quill", count = 8, oi = 1, map = 1412, x = 40.74, y = 65.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 748, title = "Poison Water", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 47.52, y = 63.58, f = "e" },
					{ t = "accept", quest = 754, title = "Winterhoof Cleansing", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 47.52, y = 63.58, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 761, title = "Swoop Hunting", npc = 2947, npcName = "Harken Windtotem", map = 1412, x = 47.67, y = 62.69, f = "e" },
				},
			},
			{
				note = "Flat grey rocks.",
				goals = {
					{ t = "collect", quest = 771, item = 4808, itemName = "Well Stone", count = 2, oi = 1, map = 1412, x = 51.66, y = 68.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 5411, itemName = "Winterhoof Cleansing Totem" },
					{ t = "complete", quest = 754, title = "Winterhoof Cleansing", note = "Cleanse the Winterhoof Water Well", map = 1412, x = 51.77, y = 68.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 745, npc = 2951, target = "Palemane Poacher", count = 5, oi = 3, map = 1412, x = 52.04, y = 73.87, f = "e" },
				},
			},
			{
				label = "Kill_Palemane_Skinners_And_Tanners",
				along = true,
				goals = {
					{ t = "kill", quest = 745, npc = 2950, target = "Palemane Skinner", count = 8, oi = 2, map = 1412, x = 52.04, y = 73.87, f = "e" },
					{ t = "kill", quest = 745, npc = 2949, target = "Palemane Tanner", count = 10, oi = 1, map = 1412, x = 52.04, y = 73.87, f = "e" },
				},
			},
			{
				note = "Helps reach level 8 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 7,2625", map = 1412, x = 52.04, y = 73.87 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 754, title = "Winterhoof Cleansing", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 47.52, y = 63.58, f = "e" },
					{ t = "accept", quest = 756, title = "Thunderhorn Totem", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 47.52, y = 63.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 745, title = "Sharing the Land", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 46.67, y = 63.41, f = "e" },
				},
			},
			{
				note = "Don't follow the wolf.",
				goals = {
					{ t = "turnin", quest = 771, title = "Rite of Vision", npc = 3054, npcName = "Zarlman Two-Moons", map = 1412, x = 46.88, y = 61.2, f = "e" },
					{ t = "accept", quest = 772, title = "Rite of Vision", npc = 3054, npcName = "Zarlman Two-Moons", map = 1412, x = 46.88, y = 61.2, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.93, y = 59.65, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3063, npcName = "Krang Stonehoof", map = 1412, x = 48.35, y = 63.74, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 3064, npcName = "Gennia Runetotem", map = 1412, x = 47.48, y = 62.95, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3066, npcName = "Narm Skychaser", map = 1412, x = 47.4, y = 62.55, f = "e" },
				},
			},
			{
				note = "Walks along the road.",
				goals = {
					{ t = "accept", quest = 749, title = "The Ravaged Caravan", npc = 2988, npcName = "Morin Cloudstalker", map = 1412, x = 54.8, y = 64.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 749, title = "The Ravaged Caravan", map = 1412, x = 51.86, y = 53.43, f = "e" },
					{ t = "accept", quest = 751, title = "The Ravaged Caravan", map = 1412, x = 51.86, y = 53.43, f = "e" },
				},
			},
			{
				label = "Collect_Cougar_Items",
				along = true,
				goals = {
					{ t = "collect", quest = 766, item = 4805, itemName = "Flatland Cougar Femur", oi = 2, map = 1412, x = 49.57, y = 47.28, f = "e" },
					{ t = "collect", quest = 756, item = 4802, itemName = "Cougar Claws", count = 6, oi = 2, map = 1412, x = 49.57, y = 47.28, f = "e" },
				},
			},
			{
				label = "Collect_Stalker_Claws",
				along = true,
				note = "Wolves.",
				goals = {
					{ t = "collect", quest = 756, item = 4801, itemName = "Stalker Claws", count = 6, oi = 1, map = 1412, x = 49.57, y = 47.28, f = "e" },
				},
			},
		},
	})
end

