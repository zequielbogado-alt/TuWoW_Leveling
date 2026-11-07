-- TuWoW_Leveling — Guides/Dailies_Horde_13.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-home-cities-exalted-reputation-guide-part-5",
		pack = "guides",
		title = "Home Cities Exalted Reputation Guide (Parte 5/8)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		next = "zygor/dailies/h-dai-icecrown-home-cities-exalted-reputation-guide-part-6",
		author = "TuWoW & Zygor",
		minLevel = 77,
		zone = 1420,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 9157, itemName = "Wavefront Medallion", count = 8, oi = 1, map = 1943, x = 70.2, y = 22.0, f = "e" },
					{ t = "kill", quest = 9274, target = "Ravening Apparition", count = 8, oi = 1, map = 1943, x = 70.2, y = 22.0, f = "e" },
					{ t = "kill", quest = 9274, target = "Vengeful Apparition", count = 8, oi = 2, map = 1943, x = 70.2, y = 22.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9157, title = "Forgotten Rituals", npc = 16201, npcName = "Geranis Whitemorn", map = 1943, x = 72.3, y = 19.1, f = "e" },
					{ t = "accept", quest = 9174, title = "Vanquishing Aquantion", npc = 16201, npcName = "Geranis Whitemorn", map = 1943, x = 72.3, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9143, title = "Dealing with Zeb'Sora", npc = 16219, npcName = "Ranger Valanna", map = 1943, x = 69.4, y = 15.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9174, target = "Aquantion", count = 1, oi = 1, map = 1943, x = 71.3, y = 15.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9143, itemName = "Zeb'Sora Troll Ear", count = 6, oi = 1, map = 1943, x = 73.6, y = 13.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9161, title = "The Traitor's Shadow", map = 1943, x = 79.6, y = 17.5, f = "e" },
					{ t = "accept", quest = 9162, title = "Hints of the Past", map = 1943, x = 79.6, y = 17.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9174, title = "Vanquishing Aquantion", npc = 16201, npcName = "Geranis Whitemorn", map = 1943, x = 72.3, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9143, title = "Dealing with Zeb'Sora", npc = 16219, npcName = "Ranger Valanna", map = 1943, x = 69.4, y = 15.2, f = "e" },
					{ t = "accept", quest = 9146, title = "Report to Captain Helios", npc = 16219, npcName = "Ranger Valanna", map = 1943, x = 69.4, y = 15.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9274, title = "Spirits of the Drowned", npc = 16462, npcName = "Ranger Krenn'an", map = 1943, x = 72.2, y = 29.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9146, title = "Report to Captain Helios", npc = 16220, npcName = "Captain Helios", map = 1943, x = 72.4, y = 29.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9162, title = "Hints of the Past", npc = 16203, npcName = "Ranger Vynna", map = 1943, x = 72.0, y = 32.6, f = "e" },
				},
			},
			{
				note = "Hearth to Fairbreeze Village|goto Eversong Woods,43.7,71.2,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 49.4, y = 14.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 60.7, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 41.3, y = 18.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 747, title = "The Hunt Begins", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.9, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3376, title = "Break Sharptusk!", npc = 3209, npcName = "Brave Windfeather", map = 1412, x = 44.6, y = 76.7, f = "e" },
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
					{ t = "turnin", quest = 752, title = "A Humble Task (1)", npc = 2991, npcName = "Greatmother Hawkwind", map = 1412, x = 50.0, y = 81.2, f = "e" },
					{ t = "accept", quest = 753, title = "A Humble Task (2)", npc = 2991, npcName = "Greatmother Hawkwind", map = 1412, x = 50.0, y = 81.2, f = "e" },
					{ t = "collect", quest = 753, itemName = "Water Pitcher", count = 1, oi = 1, map = 1412, x = 50.0, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 747, title = "The Hunt Begins", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.9, y = 77.1, f = "e" },
					{ t = "accept", quest = 750, title = "The Hunt Continues", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.9, y = 77.1, f = "e" },
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
					{ t = "collect", quest = 780, itemName = "Battleboar Snout", count = 8, oi = 1, map = 1412, x = 52.3, y = 78.8, f = "e" },
					{ t = "collect", quest = 780, itemName = "Battleboar Flank", count = 8, oi = 2, map = 1412, x = 52.3, y = 78.8, f = "e" },
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
				goals = {
					{ t = "accept", quest = 24857, title = "Attack on Camp Narache", map = 1412, x = 63.2, y = 82.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 780, title = "The Battleboars", npc = 2980, npcName = "Grull Hawkwind", map = 1412, x = 44.9, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3376, title = "Break Sharptusk!", npc = 3209, npcName = "Brave Windfeather", map = 1412, x = 44.6, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 757, title = "Rite of Strength", npc = 2981, npcName = "Chief Hawkwind", map = 1412, x = 44.2, y = 76.1, f = "e" },
					{ t = "turnin", quest = 24857, title = "Attack on Camp Narache", npc = 2981, npcName = "Chief Hawkwind", map = 1412, x = 44.2, y = 76.1, f = "e" },
					{ t = "accept", quest = 763, title = "Rites of the Earthmother", npc = 2981, npcName = "Chief Hawkwind", map = 1412, x = 44.2, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1656, title = "A Task Unfinished", npc = 6775, npcName = "Antur Fallow", map = 1412, x = 38.5, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 743, title = "Dangers of the Windfury", npc = 2985, npcName = "Ruul Eagletalon", map = 1412, x = 47.4, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 763, title = "Rites of the Earthmother", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 47.5, y = 60.2, f = "e" },
					{ t = "accept", quest = 746, title = "Dwarven Digging", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 47.5, y = 60.2, f = "e" },
					{ t = "accept", quest = 745, title = "Sharing the Land", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 47.5, y = 60.2, f = "e" },
					{ t = "accept", quest = 767, title = "Rite of Vision", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 47.5, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 861, title = "The Hunter's Way", npc = 3052, npcName = "Skorn Whitecloud", map = 1412, x = 46.8, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1656, title = "A Task Unfinished", npc = 6747, npcName = "Innkeeper Kauth", map = 1412, x = 46.6, y = 61.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 761, title = "Swoop Hunting", npc = 2947, npcName = "Harken Windtotem", map = 1412, x = 48.7, y = 59.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 767, title = "Rite of Vision", npc = 3054, npcName = "Zarlman Two-Moons", map = 1412, x = 47.8, y = 57.5, f = "e" },
					{ t = "accept", quest = 771, title = "Rite of Vision", npc = 3054, npcName = "Zarlman Two-Moons", map = 1412, x = 47.8, y = 57.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 766, title = "Mazzranache", npc = 3055, npcName = "Maur Raincaller", map = 1412, x = 47.0, y = 57.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11129, title = "Kyle's Gone Missing!", npc = 23618, npcName = "Ahab Wheathoof", map = 1412, x = 48.2, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 766, itemName = "Swoop Gizzard", count = 1, oi = 4, map = 1412, x = 46.1, y = 48.5, f = "e" },
					{ t = "collect", quest = 761, itemName = "Trophy Swoop Quill", count = 8, oi = 1, map = 1412, x = 46.1, y = 48.5, f = "e" },
					{ t = "collect", quest = 766, itemName = "Prairie Wolf Heart", count = 1, oi = 1, map = 1412, x = 46.1, y = 48.5, f = "e" },
					{ t = "collect", quest = 766, itemName = "Flatland Cougar Femur", count = 1, oi = 2, map = 1412, x = 46.1, y = 48.5, f = "e" },
					{ t = "collect", quest = 766, itemName = "Plainstrider Scale", count = 1, oi = 3, map = 1412, x = 46.1, y = 48.5, f = "e" },
					{ t = "collect", item = 33009, itemName = "Tender Strider Meat", count = 1, map = 1412, x = 46.1, y = 48.5, f = "e" },
					{ t = "collect", quest = 771, itemName = "Ambercorn", count = 2, oi = 2, map = 1412, x = 46.1, y = 48.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 771, itemName = "Well Stone", count = 2, oi = 1, map = 1412, x = 44.4, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 861, itemName = "Flatland Prowler Claw", count = 4, oi = 1, map = 1412, x = 48.0, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1412, x = 34.4, y = 61.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 745, target = "Palemane Tanner", count = 10, oi = 1, map = 1412, x = 33.3, y = 61.6, f = "e" },
					{ t = "kill", quest = 745, target = "Palemane Skinner", count = 8, oi = 2, map = 1412, x = 33.3, y = 61.6, f = "e" },
					{ t = "kill", quest = 745, target = "Palemane Poacher", count = 5, oi = 3, map = 1412, x = 33.3, y = 61.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 4702, itemName = "Prospector's Pick", count = 5, map = 1412, x = 33.4, y = 48.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 746, itemName = "Broken Tools", count = 5, oi = 1, map = 1412, x = 31.3, y = 49.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 743, itemName = "Windfury Talon", count = 8, oi = 1, map = 1412, x = 34.3, y = 43.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1412, x = 48.9, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11129, title = "Kyle's Gone Missing!", npc = 23618, npcName = "Ahab Wheathoof", map = 1412, x = 48.2, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 771, title = "Rite of Vision", npc = 3054, npcName = "Zarlman Two-Moons", map = 1412, x = 47.8, y = 57.5, f = "e" },
					{ t = "accept", quest = 772, title = "Rite of Vision", npc = 3054, npcName = "Zarlman Two-Moons", map = 1412, x = 47.8, y = 57.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 766, title = "Mazzranache", npc = 3055, npcName = "Maur Raincaller", map = 1412, x = 47.0, y = 57.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 761, title = "Swoop Hunting", npc = 2947, npcName = "Harken Windtotem", map = 1412, x = 48.7, y = 59.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 746, title = "Dwarven Digging", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 47.5, y = 60.2, f = "e" },
					{ t = "turnin", quest = 745, title = "Sharing the Land", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 47.5, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 743, title = "Dangers of the Windfury", npc = 2985, npcName = "Ruul Eagletalon", map = 1412, x = 47.4, y = 62.0, f = "e" },
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
					{ t = "kill", quest = 764, target = "Venture Co. Worker", count = 14, oi = 1, map = 1412, x = 59.2, y = 48.8, f = "e" },
					{ t = "kill", quest = 764, target = "Venture Co. Supervisor", count = 6, oi = 2, map = 1412, x = 59.2, y = 48.8, f = "e" },
				},
			},
			{
				note = "Go northeast into the mine to 64.4,43.5",
				goals = {
					{ t = "collect", quest = 765, itemName = "Fizsprocket's Clipboard", count = 1, oi = 1, f = "e" },
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
					{ t = "turnin", quest = 772, title = "Rite of Vision (3)", npc = 2984, npcName = "Seer Wiserunner", map = 1412, x = 32.7, y = 36.1, f = "e" },
					{ t = "accept", quest = 773, title = "Rite of Wisdom", npc = 2984, npcName = "Seer Wiserunner", map = 1412, x = 32.7, y = 36.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 744, title = "Preparation for Ceremony", npc = 2987, npcName = "Eyahn Eagletalon", map = 1456, x = 37.7, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 861, title = "The Hunter's Way", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.6, y = 80.9, f = "e" },
					{ t = "accept", quest = 860, title = "Sergra Darkthorn", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.6, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 744, itemName = "Bronze Feather", count = 6, oi = 2, map = 1412, x = 31.0, y = 26.5, f = "e" },
					{ t = "collect", quest = 744, itemName = "Azure Feather", count = 6, oi = 1, map = 1412, x = 31.0, y = 26.5, f = "e" },
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
			{
				goals = {
					{ t = "turnin", quest = 833, title = "A Sacred Burial", npc = 3233, npcName = "Lorekeeper Raintotem", map = 1412, x = 59.9, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 775, title = "Journey into Thunder Bluff", npc = 3057, npcName = "Cairne Bloodhoof", map = 1456, x = 60.3, y = 51.7, f = "e" },
					{ t = "accept", quest = 776, title = "Rites of the Earthmother", npc = 3057, npcName = "Cairne Bloodhoof", map = 1456, x = 60.3, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 744, title = "Preparation for Ceremony", npc = 2987, npcName = "Eyahn Eagletalon", map = 1456, x = 37.7, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 776, itemName = "Horn of Arra'chea", count = 1, oi = 1, map = 1412, x = 49.4, y = 15.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 776, title = "Rites of the Earthmother", npc = 3057, npcName = "Cairne Bloodhoof", map = 1456, x = 60.3, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2995, npcName = "Tal", map = 1456, x = 47.0, y = 49.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4641, title = "Your Place In The World", npc = 10176, npcName = "Kaltunk", map = 1411, x = 43.3, y = 68.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 792, title = "Vile Familiars", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.9, y = 69.2, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 42.1,68.3",
				goals = {
					{ t = "turnin", quest = 4641, title = "Your Place In The World", npc = 3143, npcName = "Gornek", f = "e" },
					{ t = "accept", quest = 788, title = "Cutting Teeth", npc = 3143, npcName = "Gornek", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5441, title = "Lazy Peons", npc = 11378, npcName = "Foreman Thazz'ril", map = 1411, x = 44.6, y = 68.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 45.3, y = 69.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5441, title = "Lazy Peons", npc = 11378, npcName = "Foreman Thazz'ril", map = 1411, x = 44.6, y = 68.6, f = "e" },
					{ t = "accept", quest = 6394, title = "Thazz'ril's Pick", npc = 11378, npcName = "Foreman Thazz'ril", map = 1411, x = 44.6, y = 68.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 788, target = "Mottled Boar", count = 8, oi = 1, map = 1411, x = 43.8, y = 70.0, f = "e" },
				},
			},
			{
				note = "Go into the cave to 42.1,68.3",
				goals = {
					{ t = "turnin", quest = 788, title = "Cutting Teeth", npc = 3143, npcName = "Gornek", f = "e" },
					{ t = "accept", quest = 789, title = "Sting of the Scorpid", npc = 3143, npcName = "Gornek", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4402, title = "Galgar's Cactus Apple Surprise", npc = 9796, npcName = "Galgar", map = 1411, x = 42.7, y = 67.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4402, itemName = "Cactus Apple", count = 6, oi = 1, map = 1411, x = 44.1, y = 65.4, f = "e" },
				},
			},
		},
	})
end

