-- TuWoW_Leveling — Guides/Dailies_Alliance_27.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-childrens-week-stormwind-quests",
		pack = "guides",
		title = "Children's Week Stormwind Quests",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1453,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 1468, title = "Children's Week", npc = 14450, npcName = "Orphan Matron Nightingale", map = 1453, x = 56.3, y = 54.0, f = "e" },
				},
			},
			{
				note = "Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598",
				goals = {
					{ t = "use", item = 18598, itemName = "Human Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 1468, title = "Children's Week", npc = 14305, npcName = "Human Orphan", f = "e" },
					{ t = "accept", quest = 1479, title = "The Bough of the Eternals", npc = 14305, npcName = "Human Orphan", f = "e" },
					{ t = "accept", quest = 1558, title = "The Stonewrought Dam", npc = 14305, npcName = "Human Orphan", f = "e" },
					{ t = "accept", quest = 1687, title = "Spooky Lighthouse", npc = 14305, npcName = "Human Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 352, npcName = "Dungar Longdrink", map = 1453, x = 71.0, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1432, x = 47.8, y = 14.3, f = "e" },
				},
			},
			{
				note = "Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598",
				goals = {
					{ t = "use", item = 18598, itemName = "Human Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 1558, title = "The Stonewrought Dam", npc = 14305, npcName = "Human Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 1572, npcName = "Thorgrum Borrelson", map = 1432, x = 33.9, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1436, x = 30.5, y = 85.6, f = "e" },
				},
			},
			{
				note = "Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598",
				goals = {
					{ t = "use", item = 18598, itemName = "Human Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 1687, title = "Spooky Lighthouse", npc = 14305, npcName = "Human Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 523, npcName = "Thor", map = 1436, x = 56.5, y = 52.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1453, x = 22.7, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3841, npcName = "Caylais Moonfeather", map = 1439, x = 36.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1438, x = 43.8, y = 16.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1457, x = 42.1, y = 43.6, f = "e" },
				},
			},
			{
				note = "Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598",
				goals = {
					{ t = "use", item = 18598, itemName = "Human Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 1479, title = "The Bough of the Eternals", npc = 14305, npcName = "Human Orphan", f = "e" },
					{ t = "accept", quest = 4822, title = "You Scream, I Scream...", npc = 14305, npcName = "Human Orphan", f = "e" },
					{ t = "accept", quest = 558, title = "Jaina's Autograph", npc = 14305, npcName = "Human Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1457, x = 30.3, y = 41.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3838, npcName = "Vesprystus", map = 1438, x = 58.4, y = 94.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 558, itemName = "Jaina's Autograph", count = 1, oi = 1, map = 1445, x = 66.3, y = 49.0, f = "e" },
				},
			},
			{
				note = "Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598",
				goals = {
					{ t = "use", item = 18598, itemName = "Human Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 558, title = "Jaina's Autograph", npc = 14305, npcName = "Human Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 4321, npcName = "Baldruc", map = 1445, x = 67.5, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 63.7, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2859, npcName = "Gyll", map = 1434, x = 27.5, y = 77.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4822, itemName = "Tigule and Foror's Strawberry Ice Cream", count = 1, oi = 1, map = 1453, x = 61.3, y = 75.0, f = "e" },
				},
			},
			{
				note = "Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598",
				goals = {
					{ t = "use", item = 18598, itemName = "Human Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 4822, title = "You Scream, I Scream...", npc = 14305, npcName = "Human Orphan", f = "e" },
					{ t = "accept", quest = 171, title = "A Warden of the Alliance", npc = 14305, npcName = "Human Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 171, title = "A Warden of the Alliance", npc = 14450, npcName = "Orphan Matron Nightingale", map = 1453, x = 56.3, y = 54.0, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-childrens-week-shattrath-quests",
		pack = "guides",
		title = "Children's Week Shattrath Quests",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1955,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 10943, title = "Children's Week", npc = 22819, npcName = "Orphan Matron Mercy", map = 1955, x = 74.9, y = 47.9, f = "e" },
				},
			},
			{
				note = "Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881",
				goals = {
					{ t = "use", item = 31881, itemName = "Draenei Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 10943, title = "Children's Week", npc = 22818, npcName = "Draenei Orphan", f = "e" },
					{ t = "accept", quest = 10950, title = "Auchindoun and the Ring of Observance", npc = 22818, npcName = "Draenei Orphan", f = "e" },
					{ t = "accept", quest = 10952, title = "A Trip to the Dark Portal", npc = 22818, npcName = "Draenei Orphan", f = "e" },
					{ t = "accept", quest = 10954, title = "Jheel is at Aeris Landing!", npc = 22818, npcName = "Draenei Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1951, x = 31.5, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10954, title = "Jheel is at Aeris Landing!", npc = 22836, npcName = "Jheel", map = 1951, x = 31.5, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 39.8, y = 64.7, f = "e" },
				},
			},
			{
				note = "Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881",
				goals = {
					{ t = "use", item = 31881, itemName = "Draenei Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 10950, title = "Auchindoun and the Ring of Observance", npc = 22818, npcName = "Draenei Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 89.6, y = 50.2, f = "e" },
				},
			},
			{
				note = "Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881",
				goals = {
					{ t = "use", item = 31881, itemName = "Draenei Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 10952, title = "A Trip to the Dark Portal", npc = 22818, npcName = "Draenei Orphan", f = "e" },
					{ t = "accept", quest = 10956, title = "The Seat of the Naaru", npc = 22818, npcName = "Draenei Orphan", f = "e" },
					{ t = "accept", quest = 10962, title = "Time to Visit the Caverns", npc = 22818, npcName = "Draenei Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 8609, npcName = "Alexandra Constantine", map = 1419, x = 65.5, y = 24.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1434, x = 26.1, y = 73.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 16227, npcName = "Bragok", map = 1413, x = 63.1, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 61.5, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 31951, itemName = "Toy Dragon", count = 1, map = 1446, x = 63.6, y = 57.6, f = "e" },
				},
			},
			{
				note = "Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881",
				goals = {
					{ t = "use", item = 31881, itemName = "Draenei Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 10962, title = "Time to Visit the Caverns", npc = 22818, npcName = "Draenei Orphan", f = "e" },
				},
			},
			{
				note = "Go outside to 51.0,29.4 |goto Tanaris,51.0,29.4",
				goals = {
					{ t = "talk", npc = 7823, npcName = "Bera Stonehammer", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 30.8, y = 41.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1947, x = 58.0, y = 41.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10956, title = "The Seat of the Naaru", npc = 17538, npcName = "O'ros", map = 1947, x = 58.0, y = 41.4, f = "e" },
					{ t = "accept", quest = 10968, title = "Call on the Farseer", npc = 17538, npcName = "O'ros", map = 1947, x = 58.0, y = 41.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1947, x = 30.4, y = 33.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10968, title = "Call on the Farseer", npc = 17204, npcName = "Farseer Nobundo", map = 1947, x = 30.4, y = 33.1, f = "e" },
				},
			},
			{
				note = "Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881",
				goals = {
					{ t = "use", item = 31881, itemName = "Draenei Orphan Whistle", f = "e" },
					{ t = "accept", quest = 10966, title = "Back to the Orphanage", npc = 22818, npcName = "Draenei Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1941, x = 21.6, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3841, npcName = "Caylais Moonfeather", map = 1439, x = 36.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1438, x = 55.9, y = 89.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1457, x = 40.5, y = 81.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 18931, npcName = "Amish Wildhammer", map = 1944, x = 87.4, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10966, title = "Back to the Orphanage", npc = 22819, npcName = "Orphan Matron Mercy", map = 1955, x = 74.9, y = 47.9, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-childrens-week-dalaran-oracles-quests",
		pack = "guides",
		title = "Children's Week Dalaran Oracles Quests",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 125,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13926, title = "Little Orphan Roo Of The Oracles", npc = 34365, npcName = "Orphan Matron Aria", map = 125, x = 49.4, y = 63.2, f = "e" },
				},
			},
			{
				note = "Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397",
				goals = {
					{ t = "use", item = 46397, itemName = "Oracle Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 13926, title = "Little Orphan Roo Of The Oracles", npc = 33533, npcName = "Oracle Orphan", f = "e" },
					{ t = "accept", quest = 13929, title = "The Biggest Tree Ever!", npc = 33533, npcName = "Oracle Orphan", f = "e" },
					{ t = "accept", quest = 13933, title = "The Bronze Dragonshrine", npc = 33533, npcName = "Oracle Orphan", f = "e" },
					{ t = "accept", quest = 13950, title = "Playmates!", npc = 33533, npcName = "Oracle Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 50.8, y = 42.8, f = "e" },
				},
			},
			{
				note = "Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397",
				goals = {
					{ t = "use", item = 46397, itemName = "Oracle Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 13929, title = "The Biggest Tree Ever!", npc = 33533, npcName = "Oracle Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 72.5, y = 36.9, f = "e" },
				},
			},
			{
				note = "Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397",
				goals = {
					{ t = "use", item = 46397, itemName = "Oracle Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 13933, title = "The Bronze Dragonshrine", npc = 33533, npcName = "Oracle Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 43.5, y = 13.7, f = "e" },
				},
			},
			{
				note = "Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397",
				goals = {
					{ t = "use", item = 46397, itemName = "Oracle Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 13950, title = "Playmates!", npc = 33533, npcName = "Oracle Orphan", f = "e" },
					{ t = "accept", quest = 13954, title = "The Dragon Queen", npc = 33533, npcName = "Oracle Orphan", f = "e" },
					{ t = "accept", quest = 13956, title = "Meeting a Great One", npc = 33533, npcName = "Oracle Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 40.3, y = 83.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 47.5, y = 9.2, f = "e" },
				},
			},
			{
				note = "Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397",
				goals = {
					{ t = "use", item = 46397, itemName = "Oracle Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 13956, title = "Meeting a Great One", npc = 33533, npcName = "Oracle Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 50.5, y = 7.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 59.8, y = 54.7, f = "e" },
				},
			},
			{
				note = "Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397",
				goals = {
					{ t = "use", item = 46397, itemName = "Oracle Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 13954, title = "The Dragon Queen", npc = 33533, npcName = "Oracle Orphan", f = "e" },
					{ t = "accept", quest = 13937, title = "A Trip To The Wonderworks", npc = 33533, npcName = "Oracle Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26851, npcName = "Nethestrasz", map = 115, x = 60.3, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 46693, itemName = "Small Paper Zeppelin", count = 1, map = 125, x = 44.9, y = 45.6, f = "e" },
				},
			},
			{
				note = "Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397",
				goals = {
					{ t = "use", item = 46397, itemName = "Oracle Orphan Whistle", f = "e" },
				},
			},
			{
				note = "Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397",
				goals = {
					{ t = "use", item = 46397, itemName = "Oracle Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 13937, title = "A Trip To The Wonderworks", npc = 33533, npcName = "Oracle Orphan", f = "e" },
					{ t = "accept", quest = 13959, title = "Back To The Orphanage", npc = 33533, npcName = "Oracle Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13959, title = "Back To The Orphanage", npc = 34365, npcName = "Orphan Matron Aria", map = 125, x = 49.4, y = 63.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-childrens-week-dalaran-wolvar-quests",
		pack = "guides",
		title = "Children's Week Dalaran Wolvar Quests",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 125,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13927, title = "Little Orphan Kekek Of The Wolvar", npc = 34365, npcName = "Orphan Matron Aria", map = 125, x = 49.4, y = 63.2, f = "e" },
				},
			},
			{
				note = "Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396",
				goals = {
					{ t = "use", item = 46396, itemName = "Wolvar Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 13927, title = "Little Orphan Kekek Of The Wolvar", npc = 33532, npcName = "Wolvar Orphan", f = "e" },
					{ t = "accept", quest = 13930, title = "Home Of The Bear-Men", npc = 33532, npcName = "Wolvar Orphan", f = "e" },
					{ t = "accept", quest = 13934, title = "The Bronze Dragonshrine", npc = 33532, npcName = "Wolvar Orphan", f = "e" },
					{ t = "accept", quest = 13951, title = "Playmates!", npc = 33532, npcName = "Wolvar Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 50.8, y = 42.8, f = "e" },
				},
			},
			{
				note = "Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396",
				goals = {
					{ t = "use", item = 46396, itemName = "Wolvar Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 13930, title = "Home Of The Bear-Men", npc = 33532, npcName = "Wolvar Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 72.5, y = 36.9, f = "e" },
				},
			},
			{
				note = "Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396",
				goals = {
					{ t = "use", item = 46396, itemName = "Wolvar Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 13934, title = "The Bronze Dragonshrine", npc = 33532, npcName = "Wolvar Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 45.3, y = 63.3, f = "e" },
				},
			},
			{
				note = "Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396",
				goals = {
					{ t = "use", item = 46396, itemName = "Wolvar Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 13951, title = "Playmates!", npc = 33532, npcName = "Wolvar Orphan", f = "e" },
					{ t = "accept", quest = 13955, title = "The Dragon Queen", npc = 33532, npcName = "Wolvar Orphan", f = "e" },
					{ t = "accept", quest = 13957, title = "The Mighty Hemet Nesingwary", npc = 33532, npcName = "Wolvar Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 59.8, y = 54.7, f = "e" },
				},
			},
			{
				note = "Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396",
				goals = {
					{ t = "use", item = 46396, itemName = "Wolvar Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 13955, title = "The Dragon Queen", npc = 33532, npcName = "Wolvar Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 27.1, y = 58.7, f = "e" },
				},
			},
			{
				note = "Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396",
				goals = {
					{ t = "use", item = 46396, itemName = "Wolvar Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 13957, title = "The Mighty Hemet Nesingwary", npc = 33532, npcName = "Wolvar Orphan", f = "e" },
					{ t = "accept", quest = 13938, title = "A Trip To The Wonderworks", npc = 33532, npcName = "Wolvar Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 28037, npcName = "The Spirit of Gnomeregan", map = 119, x = 25.3, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 46693, itemName = "Small Paper Zeppelin", count = 1, map = 125, x = 44.9, y = 45.6, f = "e" },
				},
			},
			{
				note = "Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396",
				goals = {
					{ t = "use", item = 46396, itemName = "Wolvar Orphan Whistle", f = "e" },
				},
			},
			{
				note = "Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396",
				goals = {
					{ t = "use", item = 46396, itemName = "Wolvar Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 13938, title = "A Trip To The Wonderworks", npc = 33532, npcName = "Wolvar Orphan", f = "e" },
					{ t = "accept", quest = 13960, title = "Back To The Orphanage", npc = 33532, npcName = "Wolvar Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13960, title = "Back To The Orphanage", npc = 34365, npcName = "Orphan Matron Aria", map = 125, x = 49.4, y = 63.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-childrens-week-achievements",
		pack = "guides",
		title = "Children's Week Achievements",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1453,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "talk", npc = 14450, npcName = "Orphan Matron Nightingale", map = 1453, x = 56.3, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 14481, npcName = "Emmithue Smails", item = 7228, itemName = "Tigule and Foror's Strawberry Ice Cream", count = 1, map = 1453, x = 61.3, y = 75.0, f = "e" },
				},
			},
			{
				note = "Purchase the follow items from the Auction House, or use your Cooking ability to create them, if you'd like:",
				goals = {
					{ t = "collect", item = 43490, itemName = "Tasty Cupcake", count = 1, f = "e" },
					{ t = "collect", item = 33924, itemName = "Delicious Chocolate Cake", count = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 29548, npcName = "Aimee", item = 42429, itemName = "Red Velvet Cupcake", count = 1, map = 125, x = 51.2, y = 29.1, f = "e" },
					{ t = "buy", npc = 29548, npcName = "Aimee", item = 42438, itemName = "Lovely Cake", count = 1, map = 125, x = 51.2, y = 29.1, f = "e" },
					{ t = "buy", npc = 29548, npcName = "Aimee", item = 42430, itemName = "Dalaran Doughnut", count = 1, map = 125, x = 51.2, y = 29.1, f = "e" },
					{ t = "buy", npc = 29548, npcName = "Aimee", item = 42431, itemName = "Dalaran Brownie", count = 1, map = 125, x = 51.2, y = 29.1, f = "e" },
				},
			},
			{
				note = "Use your Lovely Cake in your bags to place a cake on the ground |use Lovely Cake##42438",
				goals = {
					{ t = "use", item = 42438, itemName = "Lovely Cake", f = "e" },
					{ t = "collect", item = 42434, itemName = "Lovely Cake Slice", count = 1, f = "e" },
				},
			},
			{
				note = "Use your Hearthstone while your Orphan is standing next to you |use Hearthstone##6948",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
		},
	})
end

