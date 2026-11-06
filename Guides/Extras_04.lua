-- TuWoW_Leveling — Guides/Extras_04.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

-- Source: forever/exploration/kalimdor-30-45.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/exploration/kalimdor-30-45",
			pack = "guides",
			title = "Exploration: {zone:1414} 30-45",
			minLevel = 30,
			maxLevel = 45,
			category = "Exploration",
			zone = 1414,
			zoneName = "Kalimdor",
			author = "Polestar",
			version = 1,
			names = { ["area:1099"] = "Camp Mojache", ["area:1100"] = "Grimtotem Compound", ["area:1101"] = "The Writhing Deep", ["area:1103"] = "Gordunni Outpost", ["area:1105"] = "Feral Scar Vale", ["area:1106"] = "Frayfeather Highlands", ["area:1108"] = "Forgotten Coast", ["area:1111"] = "Dream Bough", ["area:1113"] = "Oneiros", ["area:1114"] = "Ruins of Ravenwind", ["area:1116"] = "Feathermoon Stronghold", ["area:1119"] = "The Twin Colossals", ["area:1120"] = "Sardor Isle", ["area:1121"] = "Isle of Dread", ["area:1137"] = "Lower Wilds", ["area:150"] = "Menethil Harbor", ["area:16675"] = "Magram Front", ["area:16676"] = "Outcast Hideaway", ["area:16677"] = "Bristleback Retreat", ["area:16678"] = "Evenshade's Overlook", ["area:16742"] = "Forlorn Gardens", ["area:2079"] = "Alcaz Island", ["area:2198"] = "Shadowbreak Ravine", ["area:2302"] = "The Quagmire", ["area:2404"] = "Tethris Aran", ["area:2405"] = "Ethel Rethor", ["area:2406"] = "Ranazjar Isle", ["area:2407"] = "Kormek's Hut", ["area:2408"] = "Shadowprey Village", ["area:2522"] = "Ruins of Isildien", ["area:2577"] = "Dire Maul", ["area:2657"] = "Valley of Bones", ["area:460"] = "Sun Rock Retreat", ["area:467"] = "Stonetalon Peak", ["area:489"] = "Thalanaar", ["area:496"] = "Brackenwall Village", ["area:498"] = "Bloodfen Burrow", ["area:499"] = "Darkmist Cavern", ["area:501"] = "Beezil's Wreck", ["area:502"] = "Witch Hill", ["area:503"] = "Sentry Point", ["area:504"] = "North Point Tower", ["area:507"] = "Bluefen", ["area:508"] = "Stonemaul Ruins", ["area:509"] = "The Den of Flame", ["area:510"] = "The Dragonmurk", ["area:511"] = "Wyrmbog", ["area:513"] = "Theramore Isle", ["area:516"] = "Dustwallow Bay", ["area:517"] = "Tidefury Cove", ["area:518"] = "Dreadmurk Shore", ["area:596"] = "Kodo Graveyard", ["area:599"] = "Thunder Axe Fortress", ["area:602"] = "Mannoroc Coven", ["area:603"] = "Sargeron", ["area:604"] = "Magram Village", ["area:606"] = "Gelkis Village", ["area:607"] = "Valley of Spears", ["area:608"] = "Nijel's Point", ["area:609"] = "Kolkar Village", ["npc:6706"] = "Baritanas Skyriver", ["npc:8019"] = "Fyldren Moonfeather", ["zone:1412"] = "Mulgore", ["zone:1413"] = "Barrens", ["zone:1414"] = "Kalimdor", ["zone:1442"] = "Stonetalon Mountains", ["zone:1443"] = "Desolace", ["zone:1444"] = "Feralas", ["zone:1445"] = "Dustwallow Marsh", ["zone:2652"] = "Shen'dralas" },
			written = { ["{area:1108}"] = "The Forgotten Coast" },
			steps = {
				{
					title = "{zone:1443} (1/2)",
					note = "Picks up west of the {zone:1413}, in {zone:1443}, and ends in {zone:1445}. 15 areas to discover here, levels 30-39.",
					goals = {
						{ t = "note", text = "Exploring the entire world map on one character is a Forever Legacy Challenge (1 account-wide Legacy Point)." },
						{ t = "note", text = "Fly to {area:467} (or to {area:608} if you have it) and take the road south-west out of the {zone:1442} into {zone:1443}; {area:608} in the north is the Alliance town.", only = { factions = { "Alliance" } } },
						{ t = "note", text = "Fly to {area:460} and take the road south-west into {zone:1443}; {area:2408} on the west coast is the Horde town.", only = { factions = { "Horde" } } },
						{ t = "note", text = "Flight path here: {area:608} ({npc:6706}).", only = { factions = { "Alliance" } } },
						{ t = "note", text = "Flight path here: {area:2408} (Thalon).", only = { factions = { "Horde" } } },
						{ t = "explore", text = "{area:2404}", map = 1443, x = 54.4, y = 12.4, f = "e" },
						{ t = "explore", text = "{area:608}", map = 1443, x = 64.9, y = 9.4, f = "e", note = "Alliance town: Horde characters only need to touch its edge (guards)" },
						{ t = "explore", text = "{area:603}", map = 1443, x = 75.8, y = 22.8, f = "e" },
						{ t = "explore", text = "{area:599}", map = 1443, x = 54.4, y = 28.1, f = "e" },
						{ t = "explore", text = "{area:2407}", map = 1443, x = 64.4, y = 40.4, f = "e" },
						{ t = "explore", text = "{area:609}", map = 1443, x = 74.4, y = 48.7, f = "e" },
						{ t = "explore", text = "{area:2198}", map = 1443, x = 80.3, y = 79.3, f = "e" },
						{ t = "explore", text = "{area:604}", map = 1443, x = 71.1, y = 73, f = "e" },
					},
				},
				{
					title = "{zone:1443} (2/2)",
					goals = {
						{ t = "explore", text = "{area:602}", map = 1443, x = 53.4, y = 79.3, f = "e" },
						{ t = "explore", text = "{area:606}", map = 1443, x = 38.4, y = 89.1, f = "e" },
						{ t = "explore", text = "{area:2408}", map = 1443, x = 25.4, y = 70.4, f = "e", note = "Horde town: Alliance characters only need to touch its edge (guards)" },
						{ t = "explore", text = "{area:607}", map = 1443, x = 33.2, y = 52, f = "e" },
						{ t = "explore", text = "{area:596}", map = 1443, x = 50.6, y = 58, f = "e" },
						{ t = "explore", text = "{area:2405}", map = 1443, x = 40.9, y = 30.7, f = "e" },
						{ t = "explore", text = "{area:2406}", map = 1443, x = 28.9, y = 8.2, f = "e" },
					},
				},
				{
					title = "{zone:2652}",
					note = "7 areas to discover here.",
					goals = {
						{ t = "note", text = "{zone:2652}, the ruins between {zone:1443} and {zone:1412}, is entered from southern {zone:1443} through the {area:2657}." },
						{ t = "explore", text = "{area:2657}", map = 2652, x = 39, y = 25.7 },
						{ t = "explore", text = "{area:16677}", map = 2652, x = 74.9, y = 31.1 },
						{ t = "explore", text = "{area:16742}", map = 2652, x = 72.7, y = 73.1 },
						{ t = "explore", text = "{area:16675}", map = 2652, x = 62.2, y = 55.3 },
						{ t = "explore", text = "{zone:2652}", map = 2652, x = 50.1, y = 63.5 },
						{ t = "explore", text = "{area:16678}", map = 2652, x = 30.7, y = 49.2 },
						{ t = "explore", text = "{area:16676}", map = 2652, x = 29.6, y = 77.1 },
					},
				},
				{
					title = "{zone:1444} (1/2)",
					note = "16 areas to discover here, levels 41-60.",
					goals = {
						{ t = "note", text = "Go back into southern {zone:1443}; the road continues south into {zone:1444}." },
						{ t = "note", text = "{area:1116} on {area:1120} is the Alliance town (boat from the {area:1108}).", only = { factions = { "Alliance" } } },
						{ t = "note", text = "{area:1099} in the east is the Horde town.", only = { factions = { "Horde" } } },
						{ t = "note", text = "Flight paths here: {area:489} (Thyssiana), Feathermoon ({npc:8019}).", only = { factions = { "Alliance" } } },
						{ t = "note", text = "Flight path here: {area:1099} (Shyn).", only = { factions = { "Horde" } } },
						{ t = "explore", text = "{area:1119}", map = 1444, x = 47.2, y = 25.4, f = "e" },
						{ t = "explore", text = "{area:1114}", map = 1444, x = 39.7, y = 10.9, f = "e" },
						{ t = "explore", text = "{area:1120}", map = 1444, x = 30.2, y = 50.1, f = "e", note = "Alliance town: Horde characters only need to touch its edge (guards)" },
						{ t = "explore", text = "{area:1121}", map = 1444, x = 29.7, y = 79, f = "e" },
						{ t = "explore", text = "{area:1108}", map = 1444, x = 46.4, y = 62.1, f = "e" },
						{ t = "explore", text = "{area:1105}", map = 1444, x = 54.4, y = 56.9, f = "e" },
						{ t = "explore", text = "{area:1106}", map = 1444, x = 53.6, y = 71.1, f = "e" },
					},
				},
				{
					title = "{zone:1444} (2/2)",
					goals = {
						{ t = "explore", text = "{area:2522}", map = 1444, x = 61.4, y = 67, f = "e" },
						{ t = "explore", text = "{area:1101}", map = 1444, x = 72.9, y = 61, f = "e" },
						{ t = "explore", text = "{area:2577}", map = 1444, x = 58.9, y = 41.9, f = "e" },
						{ t = "explore", text = "{area:1100}", map = 1444, x = 67.9, y = 40.4, f = "e" },
						{ t = "explore", text = "{area:1099}", map = 1444, x = 75.3, y = 42.3, f = "e", note = "Horde town: Alliance characters only need to touch its edge (guards)" },
						{ t = "explore", text = "{area:1103}", map = 1444, x = 77.3, y = 31.1, f = "e" },
						{ t = "explore", text = "{area:1137}", map = 1444, x = 86.1, y = 43, f = "e" },
					},
				},
				{
					title = "{zone:1444}: level 60+ areas",
					note = "{area:1113} and {area:1111} are level 60 areas, far above this guide. Skip this step for now and come back near that level: exploring the whole map needs them.",
					goals = {
						{ t = "explore", text = "{area:1113}", map = 1444, x = 54.6, y = 16.8, f = "e", note = "level 60 area, well above this guide's range" },
						{ t = "explore", text = "{area:1111}", map = 1444, x = 51.4, y = 10.1, f = "e", note = "level 60 area, well above this guide's range" },
					},
				},
				{
					title = "{zone:1445}",
					note = "7 areas to discover here, levels 36-61.",
					goals = {
						{ t = "note", text = "Fly to Theramore (or take the boat from {area:150}); {area:513} is the Alliance town.", only = { factions = { "Alliance" } } },
						{ t = "note", text = "{zone:1445} is east of the southern {zone:1413}; {area:496} in the north-west is the Horde town.", only = { factions = { "Horde" } } },
						{ t = "note", text = "Flight path here: Theramore (Baldruc).", only = { factions = { "Alliance" } } },
						{ t = "note", text = "Flight path here: {area:496} (Shardi).", only = { factions = { "Horde" } } },
						{ t = "explore", text = "{area:509} / {area:508} / {area:498} / {area:510}", map = 1445, x = 36.9, y = 61.4, f = "e", note = "any one of these names counts" },
						{ t = "explore", text = "{area:2302} / {area:501} / {area:517}", map = 1445, x = 44.4, y = 48.7, f = "e", note = "any one of these names counts" },
						{ t = "explore", text = "{area:496} / {area:499} / {area:507}", map = 1445, x = 36.9, y = 22.8, f = "e", note = "Horde town: Alliance characters only need to touch its edge (guards); any one of these names counts" },
						{ t = "explore", text = "{area:502} / {area:518} / {area:504} / {area:516}", map = 1445, x = 53.9, y = 22.8, f = "e", note = "any one of these names counts" },
						{ t = "explore", text = "{area:513} / {area:503}", map = 1445, x = 68.1, y = 51.3, f = "e", note = "Alliance town: Horde characters only need to touch its edge (guards); any one of these names counts" },
						{ t = "explore", text = "{area:511} / {area:517}", map = 1445, x = 52.6, y = 75.2, f = "e", note = "any one of these names counts" },
					},
				},
				{
					title = "{zone:1445}: level 61+ area",
					note = "{area:2079} is a level 61 area, far above this guide. Skip this step for now and come back near that level: exploring the whole map needs it.",
					goals = {
						{ t = "explore", text = "{area:2079}", map = 1445, x = 75.6, y = 17.6, f = "e", note = "level 61 area, well above this guide's range" },
					},
				},
			},
		})
	end
	register()
end

