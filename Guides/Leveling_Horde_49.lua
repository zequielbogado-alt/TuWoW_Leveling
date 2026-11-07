-- TuWoW_Leveling — Guides/Leveling_Horde_49.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-74-76-part-2",
		pack = "guides",
		title = "Northrend (74-76) (Parte 2/4)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-74-76-part-3",
		author = "TuWoW & Zygor",
		minLevel = 74,
		maxLevel = 76,
		zone = 1454,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", itemName = "Ruby Brooch", count = 1, x = 47.7, y = 49.1, f = "e" },
					{ t = "accept", quest = 12419, title = "The Fate of the Ruby Dragonshrine", x = 47.7, y = 49.1, f = "e" },
					{ t = "collect", quest = 12102, itemName = "Ruby Lilac", count = 1, oi = 1, x = 47.7, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12126, itemName = "Filled Unholy Gem", count = 1, oi = 1, x = 46.9, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12122, title = "Gaining an Audience", npc = 26443, npcName = "Tariolstrasz", x = 57.9, y = 54.2, f = "e" },
					{ t = "accept", quest = 12767, title = "Speak with your Ambassador", npc = 26443, npcName = "Tariolstrasz", x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12458, title = "Seeds of the Lashers", npc = 27785, npcName = "Lord Itharius", x = 59.6, y = 54.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12419, title = "The Fate of the Ruby Dragonshrine", npc = 27990, npcName = "Krasus", x = 59.8, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12470, title = "Mystery of the Infinite", npc = 27856, npcName = "Chromie", x = 60.0, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12447, title = "The Obsidian Dragonshrine", npc = 27765, npcName = "Nalice", x = 60.1, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26949, npcName = "Torastrasza", x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12767, title = "Speak with your Ambassador", npc = 27804, npcName = "Golluck Rockfist", x = 58.0, y = 55.4, f = "e" },
					{ t = "accept", quest = 12461, title = "Report to the Ruby Dragonshrine", npc = 27804, npcName = "Golluck Rockfist", x = 58.0, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Wyrmrest Temple", f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Wyrmrest Temple", x = 60.3, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12127, itemName = "Filled Frost Gem", count = 1, oi = 1, x = 66.2, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 60.3, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12126, title = "In Service of the Unholy", npc = 26581, npcName = "Koltira Deathweaver", x = 37.1, y = 46.5, f = "e" },
					{ t = "turnin", quest = 12127, title = "In Service of Frost", npc = 26581, npcName = "Koltira Deathweaver", x = 37.1, y = 46.5, f = "e" },
					{ t = "accept", quest = 12132, title = "The Power to Destroy", npc = 26581, npcName = "Koltira Deathweaver", x = 37.1, y = 46.5, f = "e" },
				},
			},
			{
				note = "He puts you in the world of shadows",
				goals = {
					{ t = "kill", quest = 12132, target = "Shadowy Tormentor", count = 6, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12132, title = "The Power to Destroy", npc = 26581, npcName = "Koltira Deathweaver", x = 37.1, y = 46.5, f = "e" },
					{ t = "accept", quest = 12136, title = "The Translated Tome", npc = 26581, npcName = "Koltira Deathweaver", x = 37.1, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12102, title = "In Search of the Ruby Lilac", npc = 26505, npcName = "Doctor Sintar Malefious", x = 36.1, y = 48.9, f = "e" },
					{ t = "accept", quest = 12104, title = "Return to Soar", npc = 26505, npcName = "Doctor Sintar Malefious", x = 36.1, y = 48.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12136, title = "The Translated Tome", npc = 26618, npcName = "Captain Gort", x = 35.8, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12104, title = "Return to Soar", npc = 26504, npcName = "Soar Hawkfury", x = 37.1, y = 48.6, f = "e" },
					{ t = "accept", quest = 12111, title = "Where the Wild Things Roam", npc = 26504, npcName = "Soar Hawkfury", x = 37.1, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 38.4, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12111, title = "Where the Wild Things Roam", npc = 26504, npcName = "Soar Hawkfury", x = 37.1, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12461, title = "Report to the Ruby Dragonshrine", npc = 27763, npcName = "Vargastrasz", x = 43.0, y = 50.9, f = "e" },
					{ t = "accept", quest = 12448, title = "Heated Battle", npc = 27763, npcName = "Vargastrasz", x = 43.0, y = 50.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 42.8, y = 51.4, f = "e" },
				},
			},
			{
				note = "Go up the hill to 43,50.9",
				goals = {
					{ t = "turnin", quest = 12448, title = "Heated Battle", npc = 27763, npcName = "Vargastrasz", x = 43.0, y = 50.9, f = "e" },
					{ t = "accept", quest = 12449, title = "Return to the Earth", npc = 27763, npcName = "Vargastrasz", x = 43.0, y = 50.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Ruby Acorns", count = 1, x = 46.7, y = 52.8, f = "e" },
				},
			},
			{
				note = "Go out of the valley to 43,50.9",
				goals = {
					{ t = "turnin", quest = 12449, title = "Return to the Earth", npc = 27763, npcName = "Vargastrasz", x = 43.0, y = 50.9, f = "e" },
					{ t = "accept", quest = 12450, title = "Through Fields of Flame", npc = 27763, npcName = "Vargastrasz", x = 43.0, y = 50.9, f = "e" },
				},
			},
			{
				note = "Go into the valley to 48.2,47.8",
				goals = {
					{ t = "kill", quest = 12450, target = "Frigid Necromancer", count = 6, oi = 1, x = 48.2, y = 47.8, f = "e" },
				},
			},
			{
				note = "Go into the tree trunk to 47.7,49.1",
				goals = {
					{ t = "goto", x = 47.7, y = 49.1, f = "e" },
				},
			},
			{
				note = "Go out of the valley to 43.0,50.9",
				goals = {
					{ t = "turnin", quest = 12450, title = "Through Fields of Flame", npc = 27763, npcName = "Vargastrasz", x = 43.0, y = 50.9, f = "e" },
					{ t = "accept", quest = 12769, title = "The Steward of Wyrmrest Temple", npc = 27763, npcName = "Vargastrasz", x = 43.0, y = 50.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12769, title = "The Steward of Wyrmrest Temple", npc = 26443, npcName = "Tariolstrasz", x = 57.9, y = 54.2, f = "e" },
					{ t = "accept", quest = 12124, title = "Informing the Queen", npc = 26443, npcName = "Tariolstrasz", x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12124, title = "Informing the Queen", npc = 26917, npcName = "Alexstrasza the Life-Binder", x = 59.8, y = 54.7, f = "e" },
					{ t = "accept", quest = 12435, title = "Report to Lord Afrasastrasz", npc = 26917, npcName = "Alexstrasza the Life-Binder", x = 59.8, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26949, npcName = "Torastrasza", x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12435, title = "Report to Lord Afrasastrasz", npc = 27575, npcName = "Lord Afrasastrasz", x = 59.2, y = 54.3, f = "e" },
					{ t = "accept", quest = 12372, title = "Defending Wyrmrest Temple", npc = 27575, npcName = "Lord Afrasastrasz", x = 59.2, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12372, target = "Azure Dragon", count = 3, oi = 1, x = 58.3, y = 55.2, f = "e" },
					{ t = "kill", quest = 12372, target = "Azure Drake", count = 5, oi = 2, x = 58.3, y = 55.2, f = "e" },
				},
			},
			{
				note = "Fly southwest to 55.1,66.4",
				goals = {
					{ t = "goto", x = 55.1, y = 66.4, f = "e" },
				},
			},
			{
				note = "Click the red arrow to get off the dragon on the middle level of the temple|script VehicleExit()|outvehicle|c",
				goals = {
					{ t = "goto", x = 58.7, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12372, title = "Defending Wyrmrest Temple", npc = 27575, npcName = "Lord Afrasastrasz", x = 59.2, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 27575, npcName = "Lord Afrasastrasz", x = 59.2, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Emerald Lashers", count = 1, x = 63.3, y = 71.0, f = "e" },
					{ t = "collect", quest = 12458, itemName = "Lasher Seed", count = 3, oi = 1, x = 63.3, y = 71.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12458, title = "Seeds of the Lashers", npc = 27785, npcName = "Lord Itharius", x = 59.6, y = 54.4, f = "e" },
					{ t = "accept", quest = 12459, title = "That Which Creates Can Also Destroy", npc = 27785, npcName = "Lord Itharius", x = 59.6, y = 54.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26949, npcName = "Torastrasza", x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12459, target = "Weakened Reanimated Frost Wyrm", count = 1, oi = 1, x = 55.2, y = 45.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 60.3, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12542, title = "The Call Of The Crusade", npc = 27348, npcName = "Tilda Darathan", x = 87.2, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12459, target = "Weakened Turgid the Vile", count = 1, oi = 2, x = 86.2, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12542, title = "The Call Of The Crusade", npc = 28228, npcName = "Crusader Valus", x = 84.0, y = 26.1, f = "e" },
					{ t = "accept", quest = 12545, title = "The Cleansing Of Jintha'kalar", npc = 28228, npcName = "Crusader Valus", x = 84.0, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12459, target = "Weakened Overseer Deathgaze", count = 1, oi = 3, x = 89.5, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "undead mobs", count = 1, x = 86.8, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12545, title = "The Cleansing Of Jintha'kalar", npc = 28228, npcName = "Crusader Valus", x = 84.0, y = 26.1, f = "e" },
					{ t = "accept", quest = 12789, title = "Into the Breach!", npc = 28228, npcName = "Crusader Valus", x = 84.0, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 71.7, y = 38.9, f = "e" },
				},
			},
			{
				note = "Hearth to Wyrmrest Temple,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "goto", x = 59.7, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12459, title = "That Which Creates Can Also Destroy", npc = 27785, npcName = "Lord Itharius", x = 59.6, y = 54.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12470, title = "Mystery of the Infinite", npc = 27856, npcName = "Chromie", x = 60.0, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26949, npcName = "Torastrasza", x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12144, title = "Pest Control", npc = 26979, npcName = "Kontokanis", x = 46.7, y = 33.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 37.2, y = 31.8, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 35.2,30.0",
				goals = {
					{ t = "turnin", quest = 12447, title = "The Obsidian Dragonshrine", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "accept", quest = 12262, title = "No One to Save You", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "accept", quest = 12261, title = "No Place to Run", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
				},
			},
			{
				note = "Go outside the cave to 37.9,32.0",
				goals = {
					{ t = "kill", quest = 12262, target = "Burning Depths Necrolyte", count = 6, oi = 1, x = 37.9, y = 32.0, f = "e" },
					{ t = "kill", quest = 12262, target = "Smoldering Skeleton", count = 10, oi = 2, x = 37.9, y = 32.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 42.1, y = 32.0, f = "e" },
				},
			},
			{
				note = "Go west into the cave to 35.2,30.0",
				goals = {
					{ t = "turnin", quest = 12262, title = "No One to Save You", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "turnin", quest = 12261, title = "No Place to Run", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "accept", quest = 12263, title = "The Best of Intentions", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
				},
			},
			{
				note = "Follow the path in the cave while disguised as a cultist to 31.8,30.5",
				goals = {
					{ t = "goto", x = 31.8, y = 30.5, f = "e" },
				},
			},
			{
				note = "Follow the path back down to 35.2,30.0",
				goals = {
					{ t = "turnin", quest = 12263, title = "The Best of Intentions", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "accept", quest = 12264, title = "Culling the Damned", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "accept", quest = 12265, title = "Defiling the Defilers", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
				},
			},
			{
				note = "Follow the path in the cave to 34.2,26.8",
				goals = {
					{ t = "kill", quest = 12264, target = "Burning Depths Necromancer", count = 3, oi = 1, x = 34.2, y = 26.8, f = "e" },
					{ t = "kill", quest = 12264, target = "Smoldering Construct", count = 6, oi = 2, x = 34.2, y = 26.8, f = "e" },
					{ t = "kill", quest = 12264, target = "Smoldering Geist", count = 6, oi = 3, x = 34.2, y = 26.8, f = "e" },
				},
			},
			{
				note = "Go back down in the cave to 35.2,30.0",
				goals = {
					{ t = "turnin", quest = 12264, title = "Culling the Damned", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "turnin", quest = 12265, title = "Defiling the Defilers", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "accept", quest = 12267, title = "Neltharion's Flame", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
				},
			},
			{
				note = "Follow the path in the cave to 31.6,31.2",
				goals = {
					{ t = "kill", quest = 12267, target = "Rothin the Decaying", count = 1, oi = 2, x = 31.6, y = 31.2, f = "e" },
				},
			},
			{
				note = "Go back down in the cave to 35.2,30.0",
				goals = {
					{ t = "turnin", quest = 12267, title = "Neltharion's Flame", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "accept", quest = 12266, title = "Tales of Destruction", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
				},
			},
			{
				note = "Hearth to Wyrmrest Temple,0.3|use hearthstone##6948|noway|c",
				goals = {
					{ t = "goto", x = 59.7, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12266, title = "Tales of Destruction", npc = 27765, npcName = "Nalice", x = 60.1, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26949, npcName = "Torastrasza", x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 56.8, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 55.6, y = 52.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12144, title = "Pest Control", npc = 26979, npcName = "Kontokanis", x = 46.7, y = 33.5, f = "e" },
					{ t = "accept", quest = 12145, title = "Canyon Chase", npc = 26979, npcName = "Kontokanis", x = 46.7, y = 33.5, f = "e" },
				},
			},
			{
				note = "Follow the running kobols to 42.4,38.9",
				goals = {
					{ t = "kill", quest = 12145, target = "Icefist", count = 1, oi = 1, x = 42.4, y = 38.9, f = "e" },
					{ t = "collect", itemName = "Emblazoned Battle Horn", count = 1, x = 42.4, y = 38.9, f = "e" },
					{ t = "accept", quest = 12147, title = "Disturbing Implications", x = 42.4, y = 38.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12145, title = "Canyon Chase", npc = 26979, npcName = "Kontokanis", x = 46.7, y = 33.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12469, title = "Return to Sender", npc = 26896, npcName = "Nozzlerust Supply Runner", x = 48.5, y = 24.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12043, title = "Nozzlerust Defense", npc = 26647, npcName = "Narf", x = 54.5, y = 23.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12045, title = "Shaved Ice", npc = 26661, npcName = "Zivlix", x = 54.7, y = 23.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12469, title = "Return to Sender", npc = 26660, npcName = "Xink", x = 55.0, y = 23.4, f = "e" },
					{ t = "accept", quest = 12044, title = "Stocking Up", npc = 26660, npcName = "Xink", x = 55.0, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Crystalline Ice Elementals", count = 1, x = 53.7, y = 18.9, f = "e" },
					{ t = "collect", quest = 12045, itemName = "Ice Shard Cluster", count = 4, oi = 1, x = 53.7, y = 18.9, f = "e" },
				},
			},
		},
	})
end

