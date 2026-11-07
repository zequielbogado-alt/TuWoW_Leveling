-- TuWoW_Leveling — Guides/Dailies_Horde_02.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-dragonblight-dragonblight-pre-quests",
		pack = "guides",
		title = "Dragonblight Pre-Quests",
		category = "Dailies",
		folder = "Dragonblight",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 115,
		version = 1,
		steps = {
			{
				note = "Go inside the building to 19.4,58.1|goto Dragonblight,19.4,58.1",
				goals = {
					{ t = "collect", itemName = "Goramosh's Strange Device", count = 1, f = "e" },
					{ t = "accept", quest = 12059, title = "A Strange Device", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12059, title = "A Strange Device", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 12061, title = "Projections and Plans", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 22.2, y = 54.8, f = "e" },
				},
			},
			{
				note = "Use your Surge Needle Teleporter to go back down to the ground,0.3|use Surge Needle Teleporter##36747|noway|c",
				goals = {
					{ t = "use", item = 36747, itemName = "Surge Needle Teleporter", map = 115, x = 22.6, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12061, title = "Projections and Plans", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 12066, title = "The Focus on the Beach", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Ley Line Focus Control Ring", count = 1, map = 115, x = 26.4, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12066, title = "The Focus on the Beach", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 12084, title = "Atop the Woodlands", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Ley Line Focus Amulet", count = 1, map = 115, x = 32.2, y = 70.6, f = "e" },
					{ t = "collect", itemName = "Lieutenant Ta'zinni's Letter", count = 1, map = 115, x = 32.2, y = 70.6, f = "e" },
					{ t = "accept", quest = 12085, title = "A Letter for Home", map = 115, x = 32.2, y = 70.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 32.2, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12084, title = "Atop the Woodlands", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 12106, title = "Search Indu'le Village", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12106, title = "Search Indu'le Village", map = 115, x = 40.3, y = 66.9, f = "e" },
					{ t = "accept", quest = 12110, title = "The End of the Line", map = 115, x = 40.3, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 39.8, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 53.0, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12110, title = "The End of the Line", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 12122, title = "Gaining an Audience", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12122, title = "Gaining an Audience", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
					{ t = "accept", quest = 12767, title = "Speak with your Ambassador", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12767, title = "Speak with your Ambassador", npc = 27804, npcName = "Golluck Rockfist", map = 115, x = 58.0, y = 55.4, f = "e" },
					{ t = "accept", quest = 12461, title = "Report to the Ruby Dragonshrine", npc = 27804, npcName = "Golluck Rockfist", map = 115, x = 58.0, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12461, title = "Report to the Ruby Dragonshrine", npc = 27763, npcName = "Vargastrasz", map = 115, x = 43.0, y = 50.9, f = "e" },
					{ t = "accept", quest = 12448, title = "Heated Battle", npc = 27763, npcName = "Vargastrasz", map = 115, x = 43.0, y = 50.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 42.8, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12448, title = "Heated Battle", npc = 27763, npcName = "Vargastrasz", map = 115, x = 43.0, y = 50.9, f = "e" },
					{ t = "accept", quest = 12449, title = "Return to the Earth", npc = 27763, npcName = "Vargastrasz", map = 115, x = 43.0, y = 50.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Ruby Acorns", count = 1, map = 115, x = 46.7, y = 52.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12449, title = "Return to the Earth", npc = 27763, npcName = "Vargastrasz", map = 115, x = 43.0, y = 50.9, f = "e" },
					{ t = "accept", quest = 12450, title = "Through Fields of Flame", npc = 27763, npcName = "Vargastrasz", map = 115, x = 43.0, y = 50.9, f = "e" },
				},
			},
			{
				note = "Go into the valley to 48.2,47.8",
				goals = {
					{ t = "kill", quest = 12450, target = "Frigid Necromancer", count = 6, oi = 1, map = 115, x = 48.2, y = 47.8, f = "e" },
				},
			},
			{
				note = "Go into the tree trunk to 47.7,49.1",
				goals = {
					{ t = "goto", map = 115, x = 47.7, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12450, title = "Through Fields of Flame", npc = 27763, npcName = "Vargastrasz", map = 115, x = 43.0, y = 50.9, f = "e" },
					{ t = "accept", quest = 12769, title = "The Steward of Wyrmrest Temple", npc = 27763, npcName = "Vargastrasz", map = 115, x = 43.0, y = 50.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12769, title = "The Steward of Wyrmrest Temple", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
					{ t = "accept", quest = 12124, title = "Informing the Queen", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12124, title = "Informing the Queen", npc = 26917, npcName = "Alexstrasza the Life-Binder", map = 115, x = 59.8, y = 54.7, f = "e" },
					{ t = "accept", quest = 12435, title = "Report to Lord Afrasastrasz", npc = 26917, npcName = "Alexstrasza the Life-Binder", map = 115, x = 59.8, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26949, npcName = "Torastrasza", map = 115, x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12435, title = "Report to Lord Afrasastrasz", npc = 27575, npcName = "Lord Afrasastrasz", map = 115, x = 59.2, y = 54.3, f = "e" },
					{ t = "accept", quest = 12372, title = "Defending Wyrmrest Temple", npc = 27575, npcName = "Lord Afrasastrasz", map = 115, x = 59.2, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12372, target = "Azure Dragon", count = 3, oi = 1, map = 115, x = 58.3, y = 55.2, f = "e" },
					{ t = "kill", quest = 12372, target = "Azure Drake", count = 5, oi = 2, map = 115, x = 58.3, y = 55.2, f = "e" },
				},
			},
			{
				note = "Fly southwest to 55.1,66.4",
				goals = {
					{ t = "goto", map = 115, x = 55.1, y = 66.4, f = "e" },
				},
			},
			{
				note = "Click the red arrow to get off the dragon on the middle level of the temple|script VehicleExit()|outvehicle|c",
				goals = {
					{ t = "goto", map = 115, x = 58.7, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12372, title = "Defending Wyrmrest Temple", npc = 27575, npcName = "Lord Afrasastrasz", map = 115, x = 59.2, y = 54.3, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-dragonblight-moaki-harbor-dailies",
		pack = "guides",
		title = "Moa'ki Harbor Dailies",
		category = "Dailies",
		folder = "Dragonblight",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 115,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11960, title = "Planning for the Future", npc = 26228, npcName = "Trapper Mau'i", map = 115, x = 48.3, y = 74.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11960, itemName = "Snowfall Glade Pup", count = 12, oi = 1, map = 115, x = 45.3, y = 63.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11960, title = "Planning for the Future", npc = 26228, npcName = "Trapper Mau'i", map = 115, x = 48.3, y = 74.3, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-dragonblight-wyrmrest-temple-dailies",
		pack = "guides",
		title = "Wyrmrest Temple Dailies",
		category = "Dailies",
		folder = "Dragonblight",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 115,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12372, title = "Defending Wyrmrest Temple", npc = 27575, npcName = "Lord Afrasastrasz", map = 115, x = 59.2, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12372, target = "Azure Dragon", count = 3, oi = 1, map = 115, x = 58.3, y = 55.2, f = "e" },
					{ t = "kill", quest = 12372, target = "Azure Drake", count = 5, oi = 2, map = 115, x = 58.3, y = 55.2, f = "e" },
				},
			},
			{
				note = "Fly southwest to 55.1,66.4",
				goals = {
					{ t = "goto", map = 115, x = 55.1, y = 66.4, f = "e" },
				},
			},
			{
				note = "Click the red arrow to get off the dragon on the middle level of the temple|script VehicleExit()|outvehicle|c",
				goals = {
					{ t = "goto", map = 115, x = 58.7, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12372, title = "Defending Wyrmrest Temple", npc = 27575, npcName = "Lord Afrasastrasz", map = 115, x = 59.2, y = 54.3, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-grizzly-hills-grizzly-hills-pre-quests",
		pack = "guides",
		title = "Grizzly Hills Pre-Quests",
		category = "Dailies",
		folder = "Grizzly Hills",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 116,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11984, title = "Filling the Cages", npc = 26424, npcName = "Samir", map = 116, x = 16.2, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26429, npcName = "Budd", map = 116, x = 16.4, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 13.2, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11984, title = "Filling the Cages", npc = 26424, npcName = "Samir", map = 116, x = 16.2, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11989, title = "Truce?", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11989, item = 38083, itemName = "Dull Carving Knife", count = 1, map = 116, x = 16.5, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11989, title = "Truce?", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
					{ t = "accept", quest = 11990, title = "Vial of Visions", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 26474, npcName = "Ameenah", itemName = "Imbued Vial", count = 1, map = 116, x = 16.0, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11990, itemName = "Haze Leaf", count = 3, oi = 2, map = 116, x = 14.6, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11990, itemName = "Waterweed Frond", count = 1, oi = 3, map = 116, x = 15.2, y = 40.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11990, title = "Vial of Visions", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12484, title = "Scourgekabob", npc = 26519, npcName = "Prigmon", map = 116, x = 15.7, y = 46.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12484, item = 38149, itemName = "Scourged Troll Mummy", count = 1, map = 116, x = 15.7, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 16.9, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12484, title = "Scourgekabob", npc = 26604, npcName = "Mack Fearsen", map = 116, x = 16.7, y = 48.3, f = "e" },
					{ t = "accept", quest = 12029, title = "Seared Scourge", npc = 26604, npcName = "Mack Fearsen", map = 116, x = 16.7, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 16.0, y = 29.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12029, title = "Seared Scourge", npc = 26604, npcName = "Mack Fearsen", map = 116, x = 16.7, y = 48.3, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-grizzly-hills-blackriver-logging-camp-dailies",
		pack = "guides",
		title = "Blackriver Logging Camp Dailies",
		category = "Dailies",
		folder = "Grizzly Hills",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 116,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12170, title = "Blackriver Brawl", npc = 27120, npcName = "Raider Captain Kronn", map = 116, x = 26.4, y = 65.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 27.3, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12170, title = "Blackriver Brawl", npc = 27120, npcName = "Raider Captain Kronn", map = 116, x = 26.4, y = 65.8, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-grizzly-hills-blue-sky-logging-grounds-dailies",
		pack = "guides",
		title = "Blue Sky Logging Grounds Dailies",
		category = "Dailies",
		folder = "Grizzly Hills",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 116,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12288, title = "Overwhelmed!", npc = 27464, npcName = "Aumana", map = 116, x = 33.8, y = 32.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12280, title = "Making Repairs", npc = 27422, npcName = "Lurz", map = 116, x = 34.4, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12270, title = "Shred the Alliance", npc = 27423, npcName = "Grekk", map = 116, x = 34.5, y = 32.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12284, title = "Keep 'Em on Their Heels", npc = 27451, npcName = "Commander Bargok", map = 116, x = 34.5, y = 33.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12280, item = 37412, itemName = "Grooved Cogs", count = 4, oi = 1, map = 116, x = 35.2, y = 39.3, f = "e" },
					{ t = "collect", quest = 12280, item = 37413, itemName = "Notched Sprockets", count = 3, oi = 2, map = 116, x = 35.2, y = 39.3, f = "e" },
					{ t = "collect", quest = 12280, item = 37416, itemName = "High Tension Springs", count = 2, oi = 3, map = 116, x = 35.2, y = 39.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 33.4, y = 35.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 32.8, y = 40.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12270, title = "Shred the Alliance", npc = 27423, npcName = "Grekk", map = 116, x = 34.5, y = 32.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12280, title = "Making Repairs", npc = 27422, npcName = "Lurz", map = 116, x = 34.4, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12284, title = "Keep 'Em on Their Heels", npc = 27451, npcName = "Commander Bargok", map = 116, x = 34.5, y = 33.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12288, title = "Overwhelmed!", npc = 27464, npcName = "Aumana", map = 116, x = 33.8, y = 32.7, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-grizzly-hills-granite-springs-dailies",
		pack = "guides",
		title = "Granite Springs Dailies",
		category = "Dailies",
		folder = "Grizzly Hills",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 116,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12038, title = "Seared Scourge", npc = 26604, npcName = "Mack Fearsen", map = 116, x = 16.7, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 16.0, y = 29.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12038, title = "Seared Scourge", npc = 26604, npcName = "Mack Fearsen", map = 116, x = 16.7, y = 48.3, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-grizzly-hills-venture-bay-dailies",
		pack = "guides",
		title = "Venture Bay Dailies",
		category = "Dailies",
		folder = "Grizzly Hills",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 116,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12432, title = "Riding the Red Rocket", npc = 27708, npcName = "General Gorlok", map = 116, x = 14.8, y = 86.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12324, title = "Smoke 'Em Out", npc = 27606, npcName = "Stone Guard Ragetotem", map = 116, x = 11.4, y = 76.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12317, title = "Keep Them at Bay", npc = 27563, npcName = "Centurion Kaggrum", map = 116, x = 10.1, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12315, title = "Crush Captain Brightwater!", npc = 27532, npcName = "General Khazgar", map = 116, x = 10.1, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 18.0, y = 79.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 14.8, y = 77.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12315, npc = 27509, target = "Captain Brightwater", count = 1, oi = 1, map = 116, x = 17.0, y = 81.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12432, item = 37664, itemName = "Element 115", count = 1, map = 116, x = 16.4, y = 80.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 21.4, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 9.6, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12432, title = "Riding the Red Rocket", npc = 27708, npcName = "General Gorlok", map = 116, x = 14.8, y = 86.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12324, title = "Smoke 'Em Out", npc = 27606, npcName = "Stone Guard Ragetotem", map = 116, x = 11.4, y = 76.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12317, title = "Keep Them at Bay", npc = 27563, npcName = "Centurion Kaggrum", map = 116, x = 10.1, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12315, title = "Crush Captain Brightwater!", npc = 27532, npcName = "General Khazgar", map = 116, x = 10.1, y = 77.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-howling-fjord-howling-fjord-pre-quests",
		pack = "guides",
		title = "Howling Fjord Pre-Quests",
		category = "Dailies",
		folder = "Howling Fjord",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 117,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11504, title = "The Dead Rise!", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11504, itemName = "Fengir's Clue", count = 1, oi = 1, map = 117, x = 57.7, y = 77.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11504, itemName = "Rodin's Clue", count = 1, oi = 2, map = 117, x = 59.2, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11504, itemName = "Isuldof's Clue", count = 1, oi = 3, map = 117, x = 59.8, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11504, itemName = "Windan's Clue", count = 1, oi = 4, map = 117, x = 62.0, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11504, title = "The Dead Rise!", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
					{ t = "accept", quest = 11507, title = "Elder Atuik and Kamagua", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
				},
			},
			{
				note = "Go northwest across the Ancient Lift to 25.0,57.0",
				goals = {
					{ t = "turnin", quest = 11507, title = "Elder Atuik and Kamagua", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
					{ t = "accept", quest = 11508, title = "Grezzix Spindlesnap", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11508, title = "Grezzix Spindlesnap", npc = 24643, npcName = "Grezzix Spindlesnap", map = 117, x = 23.1, y = 62.7, f = "e" },
					{ t = "accept", quest = 11509, title = "Street \"Cred\"", npc = 24643, npcName = "Grezzix Spindlesnap", map = 117, x = 23.1, y = 62.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11509, title = "Street \"Cred\"", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11469, title = "Swabbin' Soap", npc = 24784, npcName = "Scuttle Frostprow", map = 117, x = 37.8, y = 79.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11469, itemName = "Big Roy's Blubber", count = 1, oi = 1, map = 117, x = 31.4, y = 77.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11469, title = "Swabbin' Soap", npc = 24784, npcName = "Scuttle Frostprow", map = 117, x = 37.8, y = 79.6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-howling-fjord-kamagua-dailies",
		pack = "guides",
		title = "Kamagua Dailies",
		category = "Dailies",
		folder = "Howling Fjord",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 117,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11472, title = "The Way to His Heart...", npc = 24810, npcName = "Anuniaq", map = 117, x = 24.6, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Great Reef Sharks", count = 1, map = 117, x = 28.9, y = 74.8, f = "e" },
					{ t = "collect", quest = 11472, item = 34127, itemName = "Tasty Reef Fish", count = 10, map = 117, x = 28.9, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 31.0, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11472, title = "The Way to His Heart...", npc = 24810, npcName = "Anuniaq", map = 117, x = 24.6, y = 58.9, f = "e" },
				},
			},
		},
	})
end

