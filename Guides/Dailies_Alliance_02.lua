-- TuWoW_Leveling — Guides/Dailies_Alliance_02.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-dragonblight-dragonblight-pre-quests",
		pack = "guides",
		title = "Dragonblight Pre-Quests",
		category = "Dailies",
		folder = "Dragonblight",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 115,
		version = 1,
		steps = {
			{
				note = "Go inside the building to 19.4,58.1|goto Dragonblight,19.4,58.1",
				goals = {
					{ t = "collect", itemName = "Goramosh's Strange Device", count = 1, f = "e" },
					{ t = "accept", quest = 12055, title = "A Strange Device", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12055, title = "A Strange Device", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
					{ t = "accept", quest = 12060, title = "Projections and Plans", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 24.2, y = 55.6, f = "e" },
				},
			},
			{
				note = "Use your Surge Needle Teleporter to go back down to the ground|goto Dragonblight,22.6,57.0,1.0|use Surge Needle Teleporter##36747|noway|c",
				goals = {
					{ t = "use", item = 36747, itemName = "Surge Needle Teleporter", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12060, title = "Projections and Plans", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
					{ t = "accept", quest = 12065, title = "The Focus on the Beach", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Ley Line Focus Control Ring", count = 1, map = 115, x = 26.4, y = 65.0, f = "e" },
					{ t = "collect", itemName = "Captain Malin's Letter", count = 1, map = 115, x = 26.4, y = 65.0, f = "e" },
					{ t = "accept", quest = 12067, title = "A Letter for Home", map = 115, x = 26.4, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12065, title = "The Focus on the Beach", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
					{ t = "accept", quest = 12083, title = "Atop the Woodlands", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12083, item = 36779, itemName = "Ley Line Focus Control Amulet", count = 1, map = 115, x = 32.2, y = 70.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 32.2, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12083, title = "Atop the Woodlands", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
					{ t = "accept", quest = 12098, title = "Search Indu'le Village", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12098, title = "Search Indu'le Village", map = 115, x = 40.3, y = 66.9, f = "e" },
					{ t = "accept", quest = 12107, title = "The End of the Line", map = 115, x = 40.3, y = 66.9, f = "e" },
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
				note = "Fly to Star's Rest|goto Dragonblight,29.2,55.4,0.5|noway|c",
				goals = {
					{ t = "goto", map = 115, x = 48.5, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12107, title = "The End of the Line", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
					{ t = "accept", quest = 12119, title = "Gaining an Audience", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				note = "Hearth to Moa'ki Harbor|goto Dragonblight,48.2,74.8,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12119, title = "Gaining an Audience", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
					{ t = "accept", quest = 12766, title = "Speak with your Ambassador", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Wyrmrest Temple", text = "Wyrmrest Temple", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12766, title = "Speak with your Ambassador", npc = 27803, npcName = "Lauriel Trueblade", map = 115, x = 60.0, y = 55.1, f = "e" },
					{ t = "accept", quest = 12460, title = "Report to the Ruby Dragonshrine", npc = 27803, npcName = "Lauriel Trueblade", map = 115, x = 60.0, y = 55.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Wyrmrest Temple", text = "Wyrmrest Temple", map = 115, x = 60.3, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12460, title = "Report to the Ruby Dragonshrine", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
					{ t = "accept", quest = 12416, title = "Heated Battle", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 52.7, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12416, title = "Heated Battle", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
					{ t = "accept", quest = 12417, title = "Return to the Earth", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 37727, itemName = "Ruby Acorn", count = 6, map = 115, x = 46.7, y = 52.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12417, title = "Return to the Earth", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
					{ t = "accept", quest = 12418, title = "Through Fields of Flame", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
				},
			},
			{
				note = "Go into the valley to 48.2,47.8",
				goals = {
					{ t = "kill", quest = 12418, target = "Frigid Necromancer", count = 6, oi = 1, map = 115, x = 48.2, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12418, title = "Through Fields of Flame", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
					{ t = "accept", quest = 12768, title = "The Steward of Wyrmrest Temple", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12768, title = "The Steward of Wyrmrest Temple", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
					{ t = "accept", quest = 12123, title = "Informing the Queen", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12123, title = "Informing the Queen", npc = 26917, npcName = "Alexstrasza the Life-Binder", map = 115, x = 59.8, y = 54.7, f = "e" },
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
		id = "zygor/dailies/a-dai-dragonblight-moaki-harbor-dailies",
		pack = "guides",
		title = "Moa'ki Harbor Dailies",
		category = "Dailies",
		folder = "Dragonblight",
		faction = "Alliance",
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
		id = "zygor/dailies/a-dai-dragonblight-wyrmrest-temple-dailies",
		pack = "guides",
		title = "Wyrmrest Temple Dailies",
		category = "Dailies",
		folder = "Dragonblight",
		faction = "Alliance",
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
		id = "zygor/dailies/a-dai-grizzly-hills-grizzly-hills-pre-quests",
		pack = "guides",
		title = "Grizzly Hills Pre-Quests",
		category = "Dailies",
		folder = "Grizzly Hills",
		faction = "Alliance",
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
		id = "zygor/dailies/a-dai-grizzly-hills-blackriver-logging-camp-dailies",
		pack = "guides",
		title = "Blackriver Logging Camp Dailies",
		category = "Dailies",
		folder = "Grizzly Hills",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 116,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12444, title = "Blackriver Skirmish", npc = 27783, npcName = "Scout Captain Carter", map = 116, x = 30.0, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 28.3, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12444, title = "Blackriver Skirmish", npc = 27783, npcName = "Scout Captain Carter", map = 116, x = 30.0, y = 59.8, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-grizzly-hills-blue-sky-logging-grounds-dailies",
		pack = "guides",
		title = "Blue Sky Logging Grounds Dailies",
		category = "Dailies",
		folder = "Grizzly Hills",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 116,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12289, title = "Kick 'Em While They're Down", npc = 27468, npcName = "Sergeant Hartsman", map = 116, x = 39.3, y = 43.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12244, title = "Shredder Repair", npc = 27371, npcName = "Synipus", map = 116, x = 39.5, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12268, title = "Pieces Parts", npc = 27416, npcName = "Pipthwack", map = 116, x = 39.6, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12296, title = "Life or Death", npc = 27484, npcName = "Rheanna", map = 116, x = 40.5, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12268, item = 37412, itemName = "Grooved Cogs", count = 4, oi = 1, map = 116, x = 34.9, y = 39.8, f = "e" },
					{ t = "collect", quest = 12268, item = 37413, itemName = "Notched Sprockets", count = 3, oi = 2, map = 116, x = 34.9, y = 39.8, f = "e" },
					{ t = "collect", quest = 12268, item = 37416, itemName = "High Tension Springs", count = 2, oi = 3, map = 116, x = 34.9, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 33.4, y = 35.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 34.9, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12289, title = "Kick 'Em While They're Down", npc = 27468, npcName = "Sergeant Hartsman", map = 116, x = 39.3, y = 43.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12244, title = "Shredder Repair", npc = 27371, npcName = "Synipus", map = 116, x = 39.5, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12268, title = "Pieces Parts", npc = 27416, npcName = "Pipthwack", map = 116, x = 39.6, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12296, title = "Life or Death", npc = 27484, npcName = "Rheanna", map = 116, x = 40.5, y = 42.7, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-grizzly-hills-granite-springs-dailies",
		pack = "guides",
		title = "Granite Springs Dailies",
		category = "Dailies",
		folder = "Grizzly Hills",
		faction = "Alliance",
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
		id = "zygor/dailies/a-dai-grizzly-hills-venture-bay-dailies",
		pack = "guides",
		title = "Venture Bay Dailies",
		category = "Dailies",
		folder = "Grizzly Hills",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 116,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12437, title = "Riding the Red Rocket", npc = 27759, npcName = "Commander Howser", map = 116, x = 14.8, y = 86.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12323, title = "Smoke 'Em Out", npc = 27602, npcName = "Sergeant Downey", map = 116, x = 22.1, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12316, title = "Keep Them at Bay!", npc = 27562, npcName = "Lieutenant Stuart", map = 116, x = 22.1, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12314, title = "Down With Captain Zorna", npc = 27520, npcName = "Baron Freeman", map = 116, x = 22.2, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 18.0, y = 79.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 19.9, y = 76.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12314, npc = 27511, target = "Captain Zorna", count = 1, oi = 1, map = 116, x = 13.3, y = 80.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12437, item = 37664, itemName = "Element 115", count = 1, map = 116, x = 16.4, y = 80.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 9.6, y = 79.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 9.6, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12437, title = "Riding the Red Rocket", npc = 27759, npcName = "Commander Howser", map = 116, x = 14.8, y = 86.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12316, title = "Keep Them at Bay!", npc = 27562, npcName = "Lieutenant Stuart", map = 116, x = 22.1, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12314, title = "Down With Captain Zorna", npc = 27520, npcName = "Baron Freeman", map = 116, x = 22.1, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12323, title = "Smoke 'Em Out", npc = 27602, npcName = "Sergeant Downey", map = 116, x = 22.1, y = 81.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-howling-fjord-howling-fjord-pre-quests",
		pack = "guides",
		title = "Howling Fjord Pre-Quests",
		category = "Dailies",
		folder = "Howling Fjord",
		faction = "Alliance",
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
			{
				goals = {
					{ t = "accept", quest = 11176, title = "See to the Operations", npc = 23891, npcName = "Overseer Irena Stonemantle", map = 117, x = 30.2, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11176, title = "See to the Operations", npc = 24399, npcName = "Steel Gate Chief Archaeologist", map = 117, x = 30.8, y = 28.6, f = "e" },
					{ t = "accept", quest = 11390, title = "I've Got a Flying Machine!", npc = 24399, npcName = "Steel Gate Chief Archaeologist", map = 117, x = 30.8, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11390, title = "I've Got a Flying Machine!", npc = 24399, npcName = "Steel Gate Chief Archaeologist", map = 117, x = 30.8, y = 28.6, f = "e" },
				},
			},
		},
	})
end

