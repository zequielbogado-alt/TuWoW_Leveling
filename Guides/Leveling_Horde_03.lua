-- TuWoW_Leveling — Guides/Leveling_Horde_03.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-tauren-1-13",
		pack = "guides",
		title = "Tauren (1-13) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-tauren-1-13-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1412,
		version = 1,
		races = { "Tauren" },
		steps = {
			{
				goals = {
					{ t = "accept", quest = 747, title = "The Hunt Begins", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.9, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 752, title = "A Humble Task (1)", npc = 2981, npcName = "Chief Hawkwind", map = 1412, x = 44.2, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 747, itemName = "Plainstrider Meat", count = 7, oi = 1, map = 1412, x = 45.6, y = 79.4, f = "e" },
					{ t = "collect", quest = 747, itemName = "Plainstrider Feather", count = 7, oi = 2, map = 1412, x = 45.6, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 2, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 747, title = "The Hunt Begins", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.9, y = 77.1, f = "e" },
					{ t = "accept", quest = 750, title = "The Hunt Continues", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.9, y = 77.1, f = "e" },
					{ t = "accept", quest = 3091, title = "Simple Note", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.9, y = 77.1, f = "e" },
					{ t = "accept", quest = 3093, title = "Rune-Inscribed Note", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.9, y = 77.1, f = "e" },
					{ t = "accept", quest = 3092, title = "Etched Note", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.9, y = 77.1, f = "e" },
					{ t = "accept", quest = 3094, title = "Verdant Note", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.9, y = 77.1, f = "e" },
					{ t = "turnin", quest = 3091, title = "Simple Note", npc = 3059, npcName = "Harutt Thunderhorn", map = 1412, x = 44.0, y = 76.1, f = "e" },
					{ t = "turnin", quest = 3093, title = "Rune-Inscribed Note", npc = 3062, npcName = "Meela Dawnstrider", map = 1412, x = 45.0, y = 75.9, f = "e" },
					{ t = "turnin", quest = 3092, title = "Etched Note", npc = 3061, npcName = "Lanka Farshot", map = 1412, x = 44.2, y = 75.8, f = "e" },
					{ t = "turnin", quest = 3094, title = "Verdant Note", npc = 3060, npcName = "Gart Mistrunner", map = 1412, x = 45.1, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 752, title = "A Humble Task (1)", npc = 2991, npcName = "Greatmother Hawkwind", map = 1412, x = 50.0, y = 81.2, f = "e" },
					{ t = "accept", quest = 753, title = "A Humble Task (2)", npc = 2991, npcName = "Greatmother Hawkwind", map = 1412, x = 50.0, y = 81.2, f = "e" },
					{ t = "collect", quest = 753, itemName = "Water Pitcher", count = 1, oi = 1, map = 1412, x = 50.0, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 753, title = "A Humble Task (2)", npc = 2981, npcName = "Chief Hawkwind", map = 1412, x = 44.2, y = 76.1, f = "e" },
					{ t = "accept", quest = 755, title = "Rites of the Earthmother (1)", npc = 2981, npcName = "Chief Hawkwind", map = 1412, x = 44.2, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 750, itemName = "Mountain Cougar Pelt", count = 10, oi = 1, map = 1412, x = 45.1, y = 88.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 755, title = "Rites of the Earthmother (1)", npc = 2982, npcName = "Seer Graytongue", map = 1412, x = 42.6, y = 92.2, f = "e" },
					{ t = "accept", quest = 757, title = "Rite of Strength", npc = 2982, npcName = "Seer Graytongue", map = 1412, x = 42.6, y = 92.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 750, title = "The Hunt Continues", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.9, y = 77.1, f = "e" },
					{ t = "accept", quest = 780, title = "The Battleboars", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.9, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3376, title = "Break Sharptusk!", npc = 3209, npcName = "Brave Windfeather", map = 1412, x = 44.6, y = 76.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 780, itemName = "Battleboar Snout", count = 8, oi = 1, map = 1412, x = 52.3, y = 78.8, f = "e" },
					{ t = "collect", quest = 780, itemName = "Battleboar Flank", count = 8, oi = 2, map = 1412, x = 52.3, y = 78.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 4, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 1519, title = "Call of Earth (1)", npc = 5888, npcName = "Seer Ravenfeather", map = 1412, x = 44.7, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 757, itemName = "Bristleback Belt", count = 12, oi = 1, map = 1412, x = 58.2, y = 84.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3376, itemName = "Chief Sharptusk Thornmantle's Head", count = 1, oi = 1, map = 1412, x = 64.7, y = 77.7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1519, itemName = "Ritual Salve", count = 2, oi = 1, map = 1412, x = 64.0, y = 77.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 5, f = "e" },
				},
			},
			{
				note = "Hearth to Camp Narache,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1412, x = 44.9, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 780, title = "The Battleboars", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.9, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3376, title = "Break Sharptusk!", npc = 3209, npcName = "Brave Windfeather", map = 1412, x = 44.6, y = 76.7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1519, title = "Call of Earth (1)", npc = 5888, npcName = "Seer Ravenfeather", map = 1412, x = 44.7, y = 76.2, f = "e" },
					{ t = "accept", quest = 1520, title = "Call of Earth (2)", npc = 5888, npcName = "Seer Ravenfeather", map = 1412, x = 44.7, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 757, title = "Rite of Strength", npc = 2981, npcName = "Chief Hawkwind", map = 1412, x = 44.2, y = 76.1, f = "e" },
					{ t = "accept", quest = 763, title = "Rites of the Earthmother (2)", npc = 2981, npcName = "Chief Hawkwind", map = 1412, x = 44.2, y = 76.1, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1520, title = "Call of Earth (2)", npc = 5891, npcName = "the Minor Manifestation of Earth", map = 1412, x = 53.7, y = 80.2, f = "e" },
					{ t = "accept", quest = 1521, title = "Call of Earth (3)", npc = 5891, npcName = "the Minor Manifestation of Earth", map = 1412, x = 53.7, y = 80.2, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1521, title = "Call of Earth (3)", npc = 5888, npcName = "Seer Ravenfeather", map = 1412, x = 44.7, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1656, title = "A Task Unfinished", npc = 6775, npcName = "Antur Fallow", map = 1412, x = 38.5, y = 81.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 743, title = "Dangers of the Windfury", npc = 2985, npcName = "Ruul Eagletalon", map = 1412, x = 47.4, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 763, title = "Rites of the Earthmother (2)", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 47.5, y = 60.2, f = "e" },
					{ t = "accept", quest = 745, title = "Sharing the Land", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 47.5, y = 60.2, f = "e" },
					{ t = "accept", quest = 767, title = "Rite of Vision (1)", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 47.5, y = 60.2, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "accept", quest = 748, title = "Poison Water", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 48.5, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 761, title = "Swoop Hunting", npc = 2947, npcName = "Harken Windtotem", map = 1412, x = 48.7, y = 59.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 767, title = "Rite of Vision (1)", npc = 3054, npcName = "Zarlman Two-Moons", map = 1412, x = 47.8, y = 57.5, f = "e" },
					{ t = "accept", quest = 771, title = "Rite of Vision (2)", npc = 3054, npcName = "Zarlman Two-Moons", map = 1412, x = 47.8, y = 57.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 766, title = "Mazzranache", npc = 3055, npcName = "Maur Raincaller", map = 1412, x = 47.0, y = 57.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1656, title = "A Task Unfinished", npc = 6747, npcName = "Innkeeper Kauth", map = 1412, x = 46.6, y = 61.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Bloodhoof Village", text = "Bloodhoof Village", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 766, itemName = "Prairie Wolf Heart", count = 1, oi = 1, map = 1412, x = 56.11, y = 71.4, f = "e" },
					{ t = "collect", quest = 766, itemName = "Flatland Cougar Femur", count = 1, oi = 2, map = 1412, x = 56.11, y = 71.4, f = "e" },
					{ t = "collect", quest = 766, itemName = "Plainstrider Scale", count = 1, oi = 3, map = 1412, x = 56.11, y = 71.4, f = "e" },
					{ t = "collect", quest = 766, itemName = "Swoop Gizzard", count = 1, oi = 4, map = 1412, x = 56.11, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 771, itemName = "Ambercorn", count = 2, oi = 2, map = 1412, x = 52.0, y = 63.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 771, itemName = "Well Stone", count = 2, oi = 1, map = 1412, x = 53.3, y = 65.7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "collect", quest = 748, itemName = "Prairie Wolf Paw", count = 6, oi = 1, map = 1412, x = 52.0, y = 66.9, f = "e" },
					{ t = "collect", quest = 748, itemName = "Plainstrider Talon", count = 4, oi = 2, map = 1412, x = 52.0, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 745, target = "Palemane Tanner", count = 10, oi = 1, map = 1412, x = 52.8, y = 71.2, f = "e" },
					{ t = "kill", quest = 745, target = "Palemane Skinner", count = 8, oi = 2, map = 1412, x = 52.8, y = 71.2, f = "e" },
					{ t = "kill", quest = 745, target = "Palemane Poacher", count = 5, oi = 3, map = 1412, x = 52.8, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 761, itemName = "Trophy Swoop Quill", count = 8, oi = 1, map = 1412, x = 56.1, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 748, title = "Poison Water", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 48.5, y = 60.4, f = "e" },
					{ t = "accept", quest = 754, title = "Winterhoof Cleansing", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 48.5, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 761, title = "Swoop Hunting", npc = 2947, npcName = "Harken Windtotem", map = 1412, x = 48.7, y = 59.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 745, title = "Sharing the Land", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 47.5, y = 60.2, f = "e" },
					{ t = "accept", quest = 746, title = "Dwarven Digging", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 47.5, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 771, title = "Rite of Vision (2)", npc = 3054, npcName = "Zarlman Two-Moons", map = 1412, x = 47.8, y = 57.5, f = "e" },
					{ t = "accept", quest = 772, title = "Rite of Vision (3)", npc = 3054, npcName = "Zarlman Two-Moons", map = 1412, x = 47.8, y = 57.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 766, title = "Mazzranache", npc = 3055, npcName = "Maur Raincaller", map = 1412, x = 47.0, y = 57.1, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", map = 1412, x = 53.7, y = 66.2, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 754, title = "Winterhoof Cleansing", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 48.5, y = 60.4, f = "e" },
					{ t = "accept", quest = 756, title = "Thunderhorn Totem", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 48.5, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1412, x = 47.7, y = 57.4, f = "e" },
				},
			},
			{
				note = "Follow the ghost wolf northwest to 32.7,36.1",
				goals = {
					{ t = "turnin", quest = 772, title = "Rite of Vision (3)", npc = 2984, npcName = "Seer Wiserunner", map = 1412, x = 32.7, y = 36.1, f = "e" },
					{ t = "accept", quest = 773, title = "Rite of Wisdom", npc = 2984, npcName = "Seer Wiserunner", map = 1412, x = 32.7, y = 36.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 8, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "collect", quest = 756, itemName = "Cougar Claws", count = 6, oi = 2, map = 1412, x = 35.4, y = 35.8, f = "e" },
					{ t = "collect", quest = 756, itemName = "Stalker Claws", count = 6, oi = 1, map = 1412, x = 35.4, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 746, item = 4702, itemName = "Prospector's Pick", count = 5, map = 1412, x = 34.7, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 746, itemName = "Broken Tools", count = 5, oi = 1, map = 1412, x = 31.3, y = 49.9, f = "e" },
				},
			},
			{
				note = "Hearth to Bloodhoof Village,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1412, x = 46.7, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 746, title = "Dwarven Digging", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 47.5, y = 60.2, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 756, title = "Thunderhorn Totem", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 48.5, y = 60.4, f = "e" },
					{ t = "accept", quest = 758, title = "Thunderhorn Cleansing", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 48.5, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11129, title = "Kyle's Gone Missing!", npc = 23618, npcName = "Ahab Wheathoof", map = 1412, x = 48.2, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11129, item = 33009, itemName = "Tender Strider Meat", count = 1, map = 1412, x = 45.8, y = 46.4, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", map = 1412, x = 44.5, y = 45.4, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 758, title = "Thunderhorn Cleansing", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 48.5, y = 60.4, f = "e" },
					{ t = "accept", quest = 759, title = "Wildmane Totem", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 48.5, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1412, x = 49.3, y = 61.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11129, title = "Kyle's Gone Missing!", npc = 23618, npcName = "Ahab Wheathoof", map = 1412, x = 48.2, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 749, title = "The Ravaged Caravan (1)", npc = 2988, npcName = "Morin Cloudstalker", map = 1412, x = 59.3, y = 62.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 749, title = "The Ravaged Caravan (1)", map = 1412, x = 53.7, y = 48.2, f = "e" },
					{ t = "accept", quest = 751, title = "The Ravaged Caravan (2)", map = 1412, x = 53.7, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 751, title = "The Ravaged Caravan (2)", npc = 2988, npcName = "Morin Cloudstalker", map = 1412, x = 59.3, y = 62.2, f = "e" },
					{ t = "accept", quest = 764, title = "The Venture Co.", npc = 2988, npcName = "Morin Cloudstalker", map = 1412, x = 59.3, y = 62.2, f = "e" },
					{ t = "accept", quest = 765, title = "Supervisor Fizsprocket", npc = 2988, npcName = "Morin Cloudstalker", map = 1412, x = 59.3, y = 62.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 743, itemName = "Windfury Talon", count = 8, oi = 1, map = 1412, x = 66.2, y = 68.8, f = "e" },
				},
			},
			{
				note = "Hearth to Bloodhoof Village,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1412, x = 46.7, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 743, title = "Dangers of the Windfury", npc = 2985, npcName = "Ruul Eagletalon", map = 1412, x = 47.4, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 10, f = "e" },
				},
			},
			{
				note = "Go up the path to 38,59",
				only = { races = { "Tauren" } },
				goals = {
					{ t = "accept", quest = 1505, title = "Veteran Uzzek", npc = 3063, npcName = "Krang Stonehoof", map = 1412, x = 49.5, y = 60.6, f = "e" },
					{ t = "turnin", quest = 1505, title = "Veteran Uzzek", npc = 5810, npcName = "Uzzek", map = 1413, x = 61.4, y = 21.1, f = "e" },
					{ t = "accept", quest = 1498, title = "Path of Defense", npc = 5810, npcName = "Uzzek", map = 1413, x = 61.4, y = 21.1, f = "e" },
					{ t = "collect", quest = 1498, itemName = "Singed Scale", count = 5, oi = 1, map = 1411, x = 39.2, y = 32.0, f = "e" },
					{ t = "turnin", quest = 1498, title = "Path of Defense", npc = 5810, npcName = "Uzzek", map = 1413, x = 61.4, y = 21.1, f = "e" },
					{ t = "accept", quest = 2984, title = "Call of Fire (1)", npc = 3066, npcName = "Narm Skychaser", map = 1413, x = 48.3, y = 59.1, f = "e" },
					{ t = "turnin", quest = 2984, title = "Call of Fire (1)", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 55.8, y = 19.8, f = "e" },
					{ t = "accept", quest = 1524, title = "Call of Fire (2)", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 55.8, y = 19.8, f = "e" },
					{ t = "turnin", quest = 1524, title = "Call of Fire (2)", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.0, y = 59.0, f = "e" },
					{ t = "accept", quest = 1525, title = "Call of Fire (3)", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.0, y = 59.0, f = "e" },
					{ t = "collect", quest = 1525, itemName = "Fire Tar", count = 1, oi = 1, map = 1413, x = 53.8, y = 25.6, f = "e" },
					{ t = "collect", quest = 1525, itemName = "Reagent Pouch", count = 1, oi = 2, map = 1411, x = 52.8, y = 28.9, f = "e" },
					{ t = "turnin", quest = 1525, title = "Call of Fire (3)", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.0, y = 59.0, f = "e" },
					{ t = "accept", quest = 1526, title = "Call of Fire (4)", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.0, y = 59.0, f = "e" },
					{ t = "collect", quest = 1526, itemName = "Glowing Ember", count = 1, oi = 1, map = 1411, x = 38.9, y = 58.3, f = "e" },
					{ t = "turnin", quest = 1526, title = "Call of Fire (4)", map = 1411, x = 38.9, y = 58.3, f = "e" },
					{ t = "accept", quest = 1527, title = "Call of Fire (5)", map = 1411, x = 38.9, y = 58.3, f = "e" },
					{ t = "turnin", quest = 1527, title = "Call of Fire (5)", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 55.8, y = 19.8, f = "e" },
					{ t = "accept", quest = 6061, title = "Taming the Beast (1)", npc = 3065, npcName = "Yaw Sharpmane", map = 1413, x = 47.8, y = 55.7, f = "e" },
					{ t = "turnin", quest = 6061, title = "Taming the Beast (1)", npc = 3065, npcName = "Yaw Sharpmane", map = 1413, x = 47.8, y = 55.7, f = "e" },
					{ t = "accept", quest = 6087, title = "Taming the Beast (2)", npc = 3065, npcName = "Yaw Sharpmane", map = 1413, x = 47.8, y = 55.7, f = "e" },
					{ t = "turnin", quest = 6087, title = "Taming the Beast (2)", npc = 3065, npcName = "Yaw Sharpmane", map = 1413, x = 47.8, y = 55.7, f = "e" },
					{ t = "accept", quest = 6088, title = "Taming the Beast (3)", npc = 3065, npcName = "Yaw Sharpmane", map = 1413, x = 47.8, y = 55.7, f = "e" },
					{ t = "turnin", quest = 6088, title = "Taming the Beast (3)", npc = 3065, npcName = "Yaw Sharpmane", map = 1413, x = 47.8, y = 55.7, f = "e" },
					{ t = "accept", quest = 6089, title = "Training the Beast (2)", npc = 3065, npcName = "Yaw Sharpmane", map = 1413, x = 47.8, y = 55.7, f = "e" },
					{ t = "turnin", quest = 6089, title = "Training the Beast", npc = 3039, npcName = "Holt Thunderhorn", map = 1456, x = 57.3, y = 89.8, f = "e" },
					{ t = "accept", quest = 5926, title = "Heeding the Call", npc = 3064, npcName = "Gennia Runetotem", map = 1456, x = 48.5, y = 59.7, f = "e" },
					{ t = "turnin", quest = 5926, title = "Heeding the Call", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.4, y = 27.3, f = "e" },
					{ t = "accept", quest = 5922, title = "Moonglade", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.4, y = 27.3, f = "e" },
					{ t = "turnin", quest = 5922, title = "Moonglade", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
					{ t = "accept", quest = 5930, title = "Great Bear Spirit", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
					{ t = "turnin", quest = 5930, title = "Great Bear Spirit", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
					{ t = "accept", quest = 5932, title = "Back to Thunder Bluff", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.4, y = 30.5, f = "e" },
					{ t = "turnin", quest = 5932, title = "Back to Thunder Bluff", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.4, y = 27.3, f = "e" },
					{ t = "accept", quest = 6002, title = "Body and Heart", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.4, y = 27.3, f = "e" },
					{ t = "turnin", quest = 6002, title = "Body and Heart", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.4, y = 27.3, f = "e" },
					{ t = "goto", map = 1411, x = 36.6, y = 57.1, f = "e", only = { classes = { "SHAMAN" } } },
					{ t = "goto", map = 1413, x = 42.4, y = 54.5, f = "e", only = { classes = { "HUNTER" } } },
					{ t = "goto", map = 1413, x = 48.6, y = 46.7, f = "e", only = { classes = { "HUNTER" } } },
					{ t = "goto", map = 1413, x = 42.3, y = 50.1, f = "e", only = { classes = { "HUNTER" } } },
					{ t = "talk", npc = 11956, npcName = "the Great Bear Spirit", map = 1450, x = 39.1, y = 27.3, f = "e", only = { classes = { "DRUID" } } },
					{ t = "talk", npc = 11798, npcName = "Bunthen Plainswind", map = 1450, x = 44.3, y = 45.9, f = "e", only = { classes = { "DRUID" } } },
					{ t = "talk", npc = 12144, npcName = "Lunaclaw Spirit", map = 1413, x = 42.0, y = 60.9, f = "e", only = { classes = { "DRUID" } } },
					{ t = "getfp", location = "Camp Taurajo", text = "Camp Taurajo", map = 1413, x = 44.4, y = 59.2, f = "e", only = { classes = { "DRUID" } } },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "collect", quest = 759, itemName = "Prairie Alpha Tooth", count = 8, oi = 1, map = 1412, x = 63.2, y = 61.7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 759, title = "Wildmane Totem", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 48.5, y = 60.4, f = "e" },
					{ t = "accept", quest = 760, title = "Wildmane Cleansing", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 48.5, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 861, title = "The Hunter's Way", npc = 3052, npcName = "Skorn Whitecloud", map = 1412, x = 46.8, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 764, target = "Venture Co. Worker", count = 14, oi = 1, map = 1412, x = 59.2, y = 48.8, f = "e" },
					{ t = "kill", quest = 764, target = "Venture Co. Supervisor", count = 6, oi = 2, map = 1412, x = 59.2, y = 48.8, f = "e" },
				},
			},
			{
				note = "Go northeast into the mine to 64.4,43.5",
				goals = {
					{ t = "collect", quest = 765, itemName = "Fizsprocket's Clipboard", count = 1, oi = 1, map = 1412, x = 64.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 764, title = "The Venture Co.", npc = 2988, npcName = "Morin Cloudstalker", map = 1412, x = 59.3, y = 62.2, f = "e" },
					{ t = "turnin", quest = 765, title = "Supervisor Fizsprocket", npc = 2988, npcName = "Morin Cloudstalker", map = 1412, x = 59.3, y = 62.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 744, title = "Preparation for Ceremony", npc = 2987, npcName = "Eyahn Eagletalon", map = 1456, x = 37.7, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 833, title = "A Sacred Burial", npc = 3233, npcName = "Lorekeeper Raintotem", map = 1412, x = 59.9, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 833, target = "Bristleback Interloper", count = 8, oi = 1, map = 1412, x = 61.0, y = 23.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 773, title = "Rite of Wisdom", npc = 2994, npcName = "Ancestral Spirit", map = 1412, x = 61.4, y = 21.0, f = "e" },
					{ t = "accept", quest = 775, title = "Journey into Thunder Bluff", npc = 2994, npcName = "Ancestral Spirit", map = 1412, x = 61.4, y = 21.0, f = "e" },
				},
			},
		},
	})
end

