-- TuWoW_Leveling — Guides/Dailies_Horde_29.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-events-childrens-week-orgrimmar-quests",
		pack = "guides",
		title = "Children's Week Orgrimmar Quests",
		category = "Dailies",
		folder = "Events",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1454,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 172, title = "Children's Week", npc = 14451, npcName = "Orphan Matron Battlewail", map = 1454, x = 70.9, y = 25.6, f = "e" },
				},
			},
			{
				note = "Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597",
				goals = {
					{ t = "use", item = 18597, itemName = "Orcish Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 172, title = "Children's Week", npc = 14444, npcName = "Orcish Orphan", f = "e" },
					{ t = "accept", quest = 1800, title = "Lordaeron Throne Room", npc = 14444, npcName = "Orcish Orphan", f = "e" },
					{ t = "accept", quest = 910, title = "Down at the Docks", npc = 14444, npcName = "Orcish Orphan", f = "e" },
					{ t = "accept", quest = 911, title = "Gateway to the Frontier", npc = 14444, npcName = "Orcish Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3310, npcName = "Doras", map = 1454, x = 45.1, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 63.1, y = 38.2, f = "e" },
				},
			},
			{
				note = "Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597",
				goals = {
					{ t = "use", item = 18597, itemName = "Orcish Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 910, title = "Down at the Docks", npc = 14444, npcName = "Orcish Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 16227, npcName = "Bragok", map = 1413, x = 63.1, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 48.0, y = 5.6, f = "e" },
				},
			},
			{
				note = "Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597",
				goals = {
					{ t = "use", item = 18597, itemName = "Orcish Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 911, title = "Gateway to the Frontier", npc = 14444, npcName = "Orcish Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3615, npcName = "Devrak", map = 1413, x = 51.5, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 50.8, y = 13.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1458, x = 66.0, y = 36.8, f = "e" },
				},
			},
			{
				note = "Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597",
				goals = {
					{ t = "use", item = 18597, itemName = "Orcish Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 1800, title = "Lordaeron Throne Room", npc = 14444, npcName = "Orcish Orphan", f = "e" },
					{ t = "accept", quest = 915, title = "You Scream, I Scream...", npc = 14444, npcName = "Orcish Orphan", f = "e" },
					{ t = "accept", quest = 925, title = "Cairne's Hoofprint", npc = 14444, npcName = "Orcish Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 60.7, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 915, itemName = "Tigule and Foror's Strawberry Ice Cream", count = 1, oi = 1, map = 1454, x = 52.2, y = 69.0, f = "e" },
				},
			},
			{
				note = "Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597",
				goals = {
					{ t = "use", item = 18597, itemName = "Orcish Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 915, title = "You Scream, I Scream...", npc = 14444, npcName = "Orcish Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3310, npcName = "Doras", map = 1454, x = 45.1, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 925, itemName = "Cairne's Hoofprint", count = 1, oi = 1, map = 1456, x = 60.3, y = 51.7, f = "e" },
				},
			},
			{
				note = "Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597",
				goals = {
					{ t = "use", item = 18597, itemName = "Orcish Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 925, title = "Cairne's Hoofprint", npc = 14444, npcName = "Orcish Orphan", f = "e" },
					{ t = "accept", quest = 5502, title = "A Warden of the Horde", npc = 14444, npcName = "Orcish Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2995, npcName = "Tal", map = 1456, x = 47.0, y = 49.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5502, title = "A Warden of the Horde", npc = 14451, npcName = "Orphan Matron Battlewail", map = 1454, x = 70.9, y = 25.6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-events-childrens-week-shattrath-quests",
		pack = "guides",
		title = "Children's Week Shattrath Quests",
		category = "Dailies",
		folder = "Events",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1955,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 10942, title = "Children's Week", npc = 22819, npcName = "Orphan Matron Mercy", map = 1955, x = 74.9, y = 47.9, f = "e" },
				},
			},
			{
				note = "Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880",
				goals = {
					{ t = "use", item = 31880, itemName = "Blood Elf Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 10942, title = "Children's Week", npc = 22817, npcName = "Blood Elf Orphan", f = "e" },
					{ t = "accept", quest = 10945, title = "Hch'uu and the Mushroom People", npc = 22817, npcName = "Blood Elf Orphan", f = "e" },
					{ t = "accept", quest = 10951, title = "A Trip to the Dark Portal", npc = 22817, npcName = "Blood Elf Orphan", f = "e" },
					{ t = "accept", quest = 10953, title = "Visit the Throne of the Elements", npc = 22817, npcName = "Blood Elf Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1951, x = 60.7, y = 22.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10953, title = "Visit the Throne of the Elements", npc = 18072, npcName = "Elementalist Sharvak", map = 1951, x = 60.7, y = 22.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1946, x = 19.3, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10945, title = "Hch'uu and the Mushroom People", npc = 22823, npcName = "Hch'uu", map = 1946, x = 19.3, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 89.6, y = 50.2, f = "e" },
				},
			},
			{
				note = "Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880",
				goals = {
					{ t = "use", item = 31880, itemName = "Blood Elf Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 10951, title = "A Trip to the Dark Portal", npc = 22817, npcName = "Blood Elf Orphan", f = "e" },
					{ t = "accept", quest = 11975, title = "Now, When I Grow Up...", npc = 22817, npcName = "Blood Elf Orphan", f = "e" },
					{ t = "accept", quest = 10963, title = "Time to Visit the Caverns", npc = 22817, npcName = "Blood Elf Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 6026, npcName = "Breyk", map = 1435, x = 46.1, y = 54.8, f = "e" },
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
				note = "Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880",
				goals = {
					{ t = "use", item = 31880, itemName = "Blood Elf Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 10963, title = "Time to Visit the Caverns", npc = 22817, npcName = "Blood Elf Orphan", f = "e" },
				},
			},
			{
				note = "Go outside to 51.6,25.4 |goto Tanaris,51.6,25.4",
				goals = {
					{ t = "talk", npc = 7824, npcName = "Bulkrek Ragefist", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 50.8, y = 13.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 54.9, y = 11.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 76.7, y = 80.7, f = "e" },
				},
			},
			{
				note = "Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880",
				goals = {
					{ t = "use", item = 31880, itemName = "Blood Elf Orphan Whistle", f = "e" },
					{ t = "turnin", quest = 11975, title = "Now, When I Grow Up...", npc = 22817, npcName = "Blood Elf Orphan", f = "e" },
					{ t = "accept", quest = 10967, title = "Back to the Orphanage", npc = 22817, npcName = "Blood Elf Orphan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 58.4, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 18930, npcName = "Vlagga Freyfeather", map = 1944, x = 87.3, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10967, title = "Back to the Orphanage", npc = 22819, npcName = "Orphan Matron Mercy", map = 1955, x = 74.9, y = 47.9, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-events-childrens-week-dalaran-oracles-quests",
		pack = "guides",
		title = "Children's Week Dalaran Oracles Quests",
		category = "Dailies",
		folder = "Events",
		faction = "Horde",
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
		id = "zygor/dailies/h-dai-events-childrens-week-dalaran-wolvar-quests",
		pack = "guides",
		title = "Children's Week Dalaran Wolvar Quests",
		category = "Dailies",
		folder = "Events",
		faction = "Horde",
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
		id = "zygor/dailies/h-dai-events-childrens-week-achievements",
		pack = "guides",
		title = "Children's Week Achievements",
		category = "Dailies",
		folder = "Events",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1454,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "talk", npc = 14451, npcName = "Orphan Matron Battlewail", map = 1454, x = 70.9, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 14480, npcName = "Alowicious Czervik", item = 7228, itemName = "Tigule and Foror's Strawberry Ice Cream", count = 1, map = 1454, x = 52.2, y = 69.0, f = "e" },
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

