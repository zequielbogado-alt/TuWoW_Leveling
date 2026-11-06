-- TuWoW_Leveling — Guides/Extras_01.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

-- Source: forever/collectibles/mounts/neutral/deathcharger.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/collectibles/mounts/neutral/deathcharger",
			pack = "guides",
			title = "Deathcharger",
			minLevel = 58,
			maxLevel = 60,
			category = "Collectibles",
			folder = "Mounts · Drops",
			keywords = { "Deathcharger's Reins", "Rivendare's Deathcharger", "Baron Rivendare", "Stratholme", "dungeon", "skeletal horse" },
			collects = { 13335 },
			zone = 1423,
			zoneName = "Eastern Plaguelands",
			author = "Polestar",
			version = 1,
			group = true,
			names = { ["area:2279"] = "Stratholme", ["item:13335"] = "Deathcharger's Reins", ["npc:10440"] = "Baron Rivendare", ["object:175440"] = "Elders' Square", ["object:175461"] = "Service Entrance", ["skill:762"] = "Riding", ["zone:1423"] = "Eastern Plaguelands" },
			steps = {
				{
					title = "Journeyman {skill:762}",
					note = "{item:13335} needs level 60 and Journeyman {skill:762} to ride (Forever client). Train it at your race's riding trainer; see the Level 60 mount guides.",
					goals = {
						{ t = "level", level = 60 },
						{ t = "skill", skill = "Riding", skillLine = 762, level = 150 },
					},
				},
				{
					title = "{area:2279}: {npc:10440}",
					note = "{area:2279} is a group of five, level 58-60. The {object:175461} at {object:175440}, in north-western {zone:1423}, leads to the undead side; {npc:10440} waits in the Slaughter House at its end. Our data gives the reins a 0.02% drop chance (pfQuest, Era): one in about five thousand kills. Nothing shows Forever changing it.",
					goals = {
						{ t = "goto", text = "Stratholme {object:175461}", map = 1423, x = 41.5, y = 17.7, f = "e" },
						{ t = "collect", item = 13335, itemName = "Deathcharger's Reins", map = 1423, x = 41.5, y = 17.7, f = "e", note = "{npc:10440}", group = { kind = "elite", rank = 1 } },
					},
				},
			},
		})
	end
	register()
end

-- Source: forever/collectibles/pets/dark-whelpling.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/collectibles/pets/dark-whelpling",
			pack = "guides",
			title = "{item:10822}",
			minLevel = 41,
			maxLevel = 60,
			category = "Collectibles",
			folder = "Companion pets · Drops",
			keywords = { "Tiny Black Whelpling", "Searing Whelp", "Scalding Whelp", "Wyrmbog", "Dustwallow Marsh", "Badlands", "dragon", "whelp" },
			collects = { 10822 },
			zone = 1445,
			zoneName = "Dustwallow Marsh",
			author = "Polestar",
			version = 1,
			names = { ["area:511"] = "Wyrmbog", ["item:10822"] = "Dark Whelpling", ["npc:2725"] = "Scalding Whelp", ["npc:4324"] = "Searing Whelp", ["zone:1418"] = "Badlands", ["zone:1445"] = "Dustwallow Marsh" },
			steps = {
				{
					title = "Black whelps",
					note = "The Searing Whelps of the {area:511} in southern {zone:1445} (level 42-43) and the Scalding Whelps of eastern {zone:1418} (level 41-43) drop it about once in 900 kills. The waypoint is the {area:511}, where the whelps stand thickest; the {zone:1418} whelps are the same grind. The whelpling can be traded, so the Auction House may be quicker.",
					goals = {
						{ t = "collect", item = 10822, itemName = "Dark Whelpling", map = 1445, x = 46.9, y = 72.5, f = "e", spotsPacked = "46.9,72.5,,85,4;45.4,73,,40,3,1;44.5,74.7,,40,3,1;45,69.2,,40,3,1;46.4,77,,40,1,1;44.7,76.3,,40,2,1;49.3,68.5,,42,4,1;45.8,67,,45,3,1;47.8,66.8,,40,5,1;50.8,72.9,,57,5,1;48.4,78.4,,40,1,1;43,69.2,,40,1,1;44.9,78.7,,40,2,1;42.4,75.2,,40,2,1;41.8,70.4,,40,1,1;48.1,80.6,,40,2,1;45.2,64.5,,40,2,1;41.3,73.8,,40,4,1;52.4,70,,40,1,1;43.2,65.7,,56,6,1;51.8,67.4,,40,1,1;41.7,77,,50,4,1;46.5,81.9,,41,3,1;43.5,81.3,,45,5,1;42,79.7,,40,5,1;40.1,70.5,,40,3,1;54.1,70.4,,40,2,1;39.5,73.8,,40,5,1;46.1,84,,43,4,1;55,73.2,,40,1,1;37.9,75.1,,42,3,1;56,70.6,,40,1,1;55.2,83.8,,40,2,1", note = "The {area:511}", fromNpcs = { { npc = 4324, npcName = "Searing Whelp" } } },
					},
				},
			},
		})
	end
	register()
end

-- Source: forever/collectibles/pets/disgusting-oozeling.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/collectibles/pets/disgusting-oozeling",
			pack = "guides",
			title = "{item:20769}",
			minLevel = 54,
			maxLevel = 60,
			category = "Collectibles",
			folder = "Companion pets · Drops",
			keywords = { "Oozing Bag", "ooze", "slime", "Vile Slime", "Large Vile Slime", "Devouring Ooze", "Western Plaguelands", "Eastern Plaguelands", "Felwood", "Un'Goro Crater" },
			collects = { 20768, 20769 },
			zone = 1422,
			zoneName = "Western Plaguelands",
			author = "Polestar",
			version = 1,
			names = { ["item:20768"] = "Oozing Bag", ["item:20769"] = "Disgusting Oozeling", ["npc:12387"] = "Large Vile Slime", ["npc:1806"] = "Vile Slime", ["npc:1808"] = "Devouring Ooze", ["zone:1422"] = "Western Plaguelands" },
			steps = {
				{
					title = "Oozes",
					note = "Oozes drop the {item:20768} about once in 20-30 kills; the best are the Vile Slimes, Devouring Oozes and the {npc:12387} in the ooze field of eastern {zone:1422} (level 54-57). Open every bag: most hold potions or herbs, and only about one bag in 50 holds the {item:20769}, so expect over a thousand kills. Both the bags and the pet can be traded: unopened bags on the Auction House are lottery tickets, the pet itself the sure buy.",
					goals = {
						{ t = "collect", item = 20769, itemName = "Disgusting Oozeling", map = 1422, x = 64.9, y = 38.7, f = "e", note = "Open your Oozing Bags" },
					},
				},
			},
		})
	end
	register()
end

-- Source: forever/collectibles/pets/flik.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/collectibles/pets/flik",
			pack = "guides",
			title = "Darkmoon Faire Frogs",
			minLevel = 1,
			maxLevel = 60,
			category = "Collectibles",
			folder = "Companion pets · Vendors",
			keywords = { "Flik", "Tree Frog Box", "Wood Frog Box", "frog", "Darkmoon Faire" },
			collects = { 11026, 11027 },
			zone = 1429,
			zoneName = "Elwynn Forest",
			author = "Polestar",
			version = 1,
			names = { ["area:87"] = "Goldshire", ["item:11026"] = "Tree Frog Box", ["item:11027"] = "Wood Frog Box", ["npc:14860"] = "Flik", ["zone:1412"] = "Mulgore", ["zone:1429"] = "Elwynn Forest", ["zone:1456"] = "Thunder Bluff" },
			steps = {
				{
					title = "{npc:14860} at the Darkmoon Faire",
					note = "{npc:14860} sells two frogs (1g each) while the Darkmoon Faire is in town; Forever has not shown the Faire yet. In Classic it sets up south of {area:87} in {zone:1429} one month and near {zone:1456} in {zone:1412} the next; go to whichever is up. {npc:14860} runs all over the Faire grounds, so look around for him. He carries only one {item:11027} at a time and restocks it about every 30 minutes: if he has none, someone just bought it. Each pet item teaches its companion when you use it; the goals stay ticked afterwards.",
					goals = {
						{ t = "vendor", npc = 14860, npcName = "Flik", map = 1429, x = 41.76, y = 68.1, z = 59.3, f = "e", spotsPacked = "41.95,67.75,59.3,53,1" },
						{ t = "buy", npc = 14860, npcName = "Flik", item = 11026, itemName = "Tree Frog Box", map = 1429, x = 41.76, y = 68.1, z = 59.3, f = "e", spotsPacked = "41.95,67.75,59.3,53,1", optional = true, note = "{item:11026}, 1g" },
						{ t = "buy", npc = 14860, npcName = "Flik", item = 11027, itemName = "Wood Frog Box", map = 1429, x = 41.76, y = 68.1, z = 59.3, f = "e", spotsPacked = "41.95,67.75,59.3,53,1", optional = true, note = "{item:11027}, 1g" },
					},
				},
			},
		})
	end
	register()
end

-- Source: forever/collectibles/pets/green-wing-macaw.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/collectibles/pets/green-wing-macaw",
			pack = "guides",
			title = "{npc:7387}",
			minLevel = 17,
			maxLevel = 60,
			category = "Collectibles",
			folder = "Companion pets · Drops",
			keywords = { "Parrot Cage (Green Wing Macaw)", "Defias Pirate", "Deadmines", "Westfall", "dungeon", "parrot" },
			collects = { 8492 },
			zone = 1436,
			zoneName = "Westfall",
			author = "Polestar",
			version = 1,
			group = true,
			names = { ["area:1581"] = "The Deadmines", ["area:20"] = "Moonbrook", ["npc:657"] = "Defias Pirate", ["npc:7387"] = "Green Wing Macaw" },
			steps = {
				{
					title = "{area:1581}: Defias Pirates",
					note = "{area:1581} is a group of five at level 17-26, under {area:20}: go in at the {area:20} mine and follow the tunnel down to the instance portal. The Defias Pirates (elite, level 19-20) on and around the ship at the far end drop the macaw about once in 30 kills, so plan on several runs; a character well past the dungeon's level clears it alone. The cage can be traded: look at the Auction House too.",
					goals = {
						{ t = "goto", text = "{area:1581}, in the {area:20} mine", map = 1436, x = 42.5, y = 71.7 },
						{ t = "goto", text = "{area:1581} portal, at the bottom of the mine", map = 1436, x = 38, y = 77.5, f = "e" },
						{ t = "collect", item = 8492, itemName = "Parrot Cage (Green Wing Macaw)", map = 1436, x = 38, y = 77.5, f = "e", note = "Defias Pirates, on the ship", group = { kind = "elite", rank = 1 } },
					},
				},
			},
		})
	end
	register()
end

-- Source: forever/collectibles/pets/hyacinth-macaw.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/collectibles/pets/hyacinth-macaw",
			pack = "guides",
			title = "{npc:7391}",
			minLevel = 39,
			maxLevel = 60,
			category = "Collectibles",
			folder = "Companion pets · Drops",
			keywords = { "Parrot Cage (Hyacinth Macaw)", "Bloodsail Buccaneers", "pirates", "Stranglethorn", "Wild Shore", "parrot" },
			collects = { 8494 },
			zone = 1434,
			zoneName = "Stranglethorn Vale",
			author = "Polestar",
			version = 1,
			names = { ["area:35"] = "Booty Bay", ["area:43"] = "Wild Shore", ["npc:7391"] = "Hyacinth Macaw" },
			steps = {
				{
					title = "Bloodsail pirates",
					note = "Every Bloodsail pirate on the Stranglethorn coast (level 39-45) can drop it, but only about once in 5,000 kills; the Swabbies on the ships off the southern tip, about once in 2,500. That is a grind of many hours, so most players kill pirates while doing something else there, or buy the cage on the Auction House. The waypoint is the Swashbucklers' and Warlocks' camp on the {area:43}, south of {area:35}. Every pirate kill also lowers your Bloodsail Buccaneers standing.",
					goals = {
						{ t = "collect", item = 8494, itemName = "Parrot Cage (Hyacinth Macaw)", map = 1434, x = 27.2, y = 83, f = "e", spotsPacked = "27.2,83,,90,9;29.7,81.1,,40,5,1;31,81.1,,40,1,1;29.5,88.5,,58,11,1;32,79.5,,40,1,1;30.6,89.9,,40,7,1;33.7,86.3,,40,2,1;33.2,88.2,,40,6,1;33,77.3,,40,1,1;28.9,70.7,,40,1,1;32.3,72.4,,40,3,1;33.3,73.6,,40,2,1;27.6,69.8,,40,6,1;26.8,67.5,,40,1,1;25.9,66.6,,40,2,1;32.4,56.2,,40,4,1;24.3,54.7,,56,4,1;31.8,54.3,,40,8,1;23.2,53.7,,43,6,1;24.5,52.8,,40,1,1", note = "Bloodsail camp, the {area:43}", fromNpcs = { { npc = 1564, npcName = "Bloodsail Warlock" }, { npc = 1563, npcName = "Bloodsail Swashbuckler" } } },
					},
				},
			},
		})
	end
	register()
end

-- Source: forever/collectibles/pets/magus-tirth.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/collectibles/pets/magus-tirth",
			pack = "guides",
			title = "{item:11023}",
			minLevel = 1,
			maxLevel = 60,
			category = "Collectibles",
			folder = "Companion pets · Vendors",
			keywords = { "Magus Tirth", "Ancona Chicken", "chicken", "Mirage Raceway", "Shimmering Flats" },
			collects = { 11023 },
			zone = 1441,
			zoneName = "Thousand Needles",
			author = "Polestar",
			version = 1,
			names = { ["area:2240"] = "Mirage Raceway", ["area:439"] = "Shimmering Flats", ["area:484"] = "Freewind Post", ["area:976"] = "Gadgetzan", ["item:11023"] = "Ancona Chicken", ["npc:6548"] = "Magus Tirth", ["zone:1441"] = "Thousand Needles", ["zone:1446"] = "Tanaris" },
			steps = {
				{
					title = "{npc:6548}",
					note = "{npc:6548} at the {area:2240}, the goblin and gnome racetrack in the {area:439} of south-eastern {zone:1441}, sells the {item:11023} (1g) to both sides. The nearest flight paths are {area:484} (Horde) and {area:976} in {zone:1446} (both sides); from {area:976}, ride north into the {area:439}. Each pet item teaches its companion when you use it; the goal stays ticked afterwards.",
					goals = {
						{ t = "vendor", npc = 6548, npcName = "Magus Tirth", map = 1441, x = 78.29, y = 75.7, z = -58.7, f = "e" },
						{ t = "buy", npc = 6548, npcName = "Magus Tirth", item = 11023, itemName = "Ancona Chicken", map = 1441, x = 78.29, y = 75.7, z = -58.7, f = "e", optional = true, note = "{item:11023}, 1g" },
					},
				},
			},
		})
	end
	register()
end

-- Source: forever/collectibles/pets/mechanical-chicken.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/collectibles/pets/mechanical-chicken",
			pack = "guides",
			title = "{item:10398}",
			minLevel = 43,
			maxLevel = 60,
			category = "Collectibles",
			folder = "Companion pets · Quests",
			keywords = { "An OOX of Your Own", "Oglethorpe Obnoticus", "OOX", "homing robot", "distress beacon", "Feralas", "Tanaris", "Hinterlands", "Booty Bay" },
			collects = { 10398 },
			zone = 1444,
			zoneName = "Feralas",
			author = "Polestar",
			version = 1,
			names = { ["area:1105"] = "Feral Scar Vale", ["area:1108"] = "Forgotten Coast", ["area:35"] = "Booty Bay", ["area:351"] = "Skulk Rock", ["area:977"] = "Steamwheedle Port", ["area:981"] = "Gaping Chasm", ["item:10398"] = "Mechanical Chicken", ["item:8623"] = "OOX-17/TN Distress Beacon", ["item:8704"] = "OOX-09/HL Distress Beacon", ["item:8705"] = "OOX-22/FE Distress Beacon", ["npc:2490"] = "First Mate Crazz", ["npc:5276"] = "Sprite Dragon", ["npc:5327"] = "Coast Crawl Snapclaw", ["npc:7406"] = "Oglethorpe Obnoticus", ["npc:7808"] = "Marauding Owlbeast", ["npc:7809"] = "Vilebranch Ambusher", ["npc:7899"] = "Treasure Hunting Pirate", ["npc:9396"] = "Ground Pounder", ["quest:3721"] = "An OOX of Your Own", ["zone:1425"] = "Hinterlands", ["zone:1444"] = "Feralas", ["zone:1446"] = "Tanaris" },
			steps = {
				{
					title = "{item:8705} in {zone:1444}",
					note = "Each robot starts with a distress beacon that mobs in its zone drop, about one kill in 40 to 100 in Classic's data. In {zone:1444} the best are the Coast Crawl Snapclaws and Deepseers (levels 43-45) on the {area:1108} and the Sprite Dragons (47-48), about 2.5%; ogres, harpies, naga and Grimtotems drop it about 1%. You can loot it from level 40.",
					goals = {
						{ t = "collect", item = 8705, itemName = "OOX-22/FE Distress Beacon", count = 1, candidates = { { npc = 14640, npcName = "Zapped Cliff Giant", map = 1444, x = 38.4, y = 21.3, f = "e", faction = "AH", lvl = { min = 49, max = 49 }, rate = 0.02, spawns = 3 }, { npc = 14604, npcName = "Zapped Land Walker", map = 1444, x = 38.6, y = 24, f = "e", faction = "AH", lvl = { min = 48, max = 48 }, rate = 0.02, spawns = 3 }, { npc = 14640, npcName = "Zapped Cliff Giant", map = 1444, x = 40, y = 22.2, f = "e", faction = "AH", lvl = { min = 49, max = 49 }, rate = 0.02, spawns = 3 }, { npc = 5327, npcName = "Coast Crawl Snapclaw", map = 1444, x = 35.6, y = 51.9, f = "e", faction = "AH", lvl = { min = 44, max = 45 }, rate = 0.025, spawns = 2 }, { npc = 5327, npcName = "Coast Crawl Snapclaw", map = 1444, x = 37.3, y = 42.1, f = "e", faction = "AH", lvl = { min = 44, max = 45 }, rate = 0.025, spawns = 2 }, { npc = 14603, npcName = "Zapped Shore Strider", map = 1444, x = 36.4, y = 36.1, f = "e", faction = "AH", lvl = { min = 48, max = 49 }, rate = 0.02, spawns = 2 }, { npc = 14640, npcName = "Zapped Cliff Giant", map = 1444, x = 40.5, y = 24.5, f = "e", faction = "AH", lvl = { min = 49, max = 49 }, rate = 0.02, spawns = 2 }, { npc = 14604, npcName = "Zapped Land Walker", map = 1444, x = 41, y = 25.2, f = "e", faction = "AH", lvl = { min = 48, max = 48 }, rate = 0.02, spawns = 2 }, { npc = 5328, npcName = "Coast Crawl Deepseer", map = 1444, x = 23.7, y = 55.5, f = "e", faction = "AH", lvl = { min = 43, max = 44 }, rate = 0.025, spawns = 1 }, { npc = 5328, npcName = "Coast Crawl Deepseer", map = 1444, x = 23.8, y = 49.2, f = "e", faction = "AH", lvl = { min = 43, max = 44 }, rate = 0.025, spawns = 1 }, { npc = 5328, npcName = "Coast Crawl Deepseer", map = 1444, x = 24.8, y = 44.8, f = "e", faction = "AH", lvl = { min = 43, max = 44 }, rate = 0.025, spawns = 1 }, { npc = 5327, npcName = "Coast Crawl Snapclaw", map = 1444, x = 26, y = 59.2, f = "e", faction = "AH", lvl = { min = 44, max = 45 }, rate = 0.025, spawns = 1 }, { npc = 5328, npcName = "Coast Crawl Deepseer", map = 1444, x = 27.3, y = 60.8, f = "e", faction = "AH", lvl = { min = 43, max = 44 }, rate = 0.025, spawns = 1 }, { npc = 5327, npcName = "Coast Crawl Snapclaw", map = 1444, x = 28.1, y = 59.4, f = "e", faction = "AH", lvl = { min = 44, max = 45 }, rate = 0.025, spawns = 1 }, { npc = 5276, npcName = "Sprite Dragon", map = 1444, x = 44.3, y = 22.3, f = "e", faction = "AH", lvl = { min = 47, max = 48 }, rate = 0.025, spawns = 1 }, { npc = 5276, npcName = "Sprite Dragon", map = 1444, x = 50.7, y = 33.8, f = "e", faction = "AH", lvl = { min = 47, max = 48 }, rate = 0.025, spawns = 1 } } },
					},
				},
				{
					title = "Rescue OOX-22/FE",
					note = "Right-click the beacon. OOX-22/FE sits in a cave near {area:1105}, among yetis and apes. Its escort runs west along the road to the dock on the {area:1108} with three ambushes: three yetis, then three gorillas, then four or five gnolls with a caster. Bring a friend if you are under 47. The robot keeps walking unless it is hit, so stay close; if it will not move, another player has it: wait for it to come back. Its turn-in is in {area:35}; keep the quest for later.",
					goals = {
						{ t = "accept", quest = 2766, title = "Find OOX-22/FE!", item = 8705, itemName = "OOX-22/FE Distress Beacon", minLevel = 40, qlvl = 45 },
						{ t = "turnin", quest = 2766, title = "Find OOX-22/FE!", npc = 7807, npcName = "Homing Robot OOX-22/FE", map = 1444, x = 53.35, y = 55.7, z = 62.2, f = "e" },
						{ t = "accept", quest = 2767, title = "Rescue OOX-22/FE!", npc = 7807, npcName = "Homing Robot OOX-22/FE", minLevel = 40, qlvl = 45, pre = { 2766 }, preTitles = { [2766] = "Find OOX-22/FE!" }, map = 1444, x = 53.35, y = 55.7, z = 62.2, f = "e", escort = true },
						{ t = "complete", quest = 2767, title = "Rescue OOX-22/FE!", note = "Escort OOX-22/FE", escort = true },
					},
				},
				{
					title = "{item:8623} in {zone:1446}",
					note = "{zone:1446} mobs drop OOX-17/TN's beacon about one kill in 50 to 150. Best: the Treasure Hunting Pirates and Buccaneers on the south shore (44-45) and the Ground Pounders in the north (41-43), about 2%. You can loot it from level 43.",
					goals = {
						{ t = "collect", item = 8623, itemName = "OOX-17/TN Distress Beacon", count = 1, candidates = { { npc = 9397, npcName = "Living Storm", map = 1446, x = 30.4, y = 77.7, f = "e", faction = "AH", lvl = { min = 48, max = 48 }, rate = 0.03, spawns = 1 }, { npc = 9397, npcName = "Living Storm", map = 1446, x = 49.8, y = 69.2, f = "e", faction = "AH", lvl = { min = 48, max = 48 }, rate = 0.03, spawns = 1 }, { npc = 9396, npcName = "Ground Pounder", map = 1446, x = 44.8, y = 27.9, f = "e", faction = "AH", lvl = { min = 41, max = 43 }, rate = 0.02, spawns = 1 }, { npc = 7899, npcName = "Treasure Hunting Pirate", map = 1446, x = 50.7, y = 90.8, f = "e", faction = "AH", lvl = { min = 44, max = 45 }, rate = 0.02, spawns = 1 }, { npc = 7902, npcName = "Treasure Hunting Buccaneer", map = 1446, x = 50.7, y = 90.8, f = "e", faction = "AH", lvl = { min = 44, max = 45 }, rate = 0.02, spawns = 1 }, { npc = 7899, npcName = "Treasure Hunting Pirate", map = 1446, x = 52.2, y = 94.4, f = "e", faction = "AH", lvl = { min = 44, max = 45 }, rate = 0.02, spawns = 1 }, { npc = 7902, npcName = "Treasure Hunting Buccaneer", map = 1446, x = 52.2, y = 94.4, f = "e", faction = "AH", lvl = { min = 44, max = 45 }, rate = 0.02, spawns = 1 }, { npc = 7899, npcName = "Treasure Hunting Pirate", map = 1446, x = 53.1, y = 95.9, f = "e", faction = "AH", lvl = { min = 44, max = 45 }, rate = 0.02, spawns = 1 }, { npc = 7902, npcName = "Treasure Hunting Buccaneer", map = 1446, x = 53.1, y = 95.9, f = "e", faction = "AH", lvl = { min = 44, max = 45 }, rate = 0.02, spawns = 1 }, { npc = 7899, npcName = "Treasure Hunting Pirate", map = 1446, x = 54.1, y = 93, f = "e", faction = "AH", lvl = { min = 44, max = 45 }, rate = 0.02, spawns = 1 }, { npc = 7902, npcName = "Treasure Hunting Buccaneer", map = 1446, x = 54.1, y = 93, f = "e", faction = "AH", lvl = { min = 44, max = 45 }, rate = 0.02, spawns = 1 }, { npc = 9396, npcName = "Ground Pounder", map = 1446, x = 56.5, y = 25.4, f = "e", faction = "AH", lvl = { min = 41, max = 43 }, rate = 0.02, spawns = 1 }, { npc = 9396, npcName = "Ground Pounder", map = 1446, x = 56.7, y = 32.4, f = "e", faction = "AH", lvl = { min = 41, max = 43 }, rate = 0.02, spawns = 1 } } },
					},
				},
				{
					title = "Rescue OOX-17/TN",
					note = "OOX-17/TN stands in the hills near the {area:981} in south-east {zone:1446}. Its escort to {area:977} has two ambushes: three scorpids near the start, three Wastewander bandits near the end. The robot has about 3,000 health and stops to fight what you attack, so it can tank for a moment while you recover. Its turn-in is in {area:35} too.",
					goals = {
						{ t = "accept", quest = 351, title = "Find OOX-17/TN!", item = 8623, itemName = "OOX-17/TN Distress Beacon", minLevel = 43, qlvl = 48 },
						{ t = "turnin", quest = 351, title = "Find OOX-17/TN!", npc = 7784, npcName = "Homing Robot OOX-17/TN", map = 1446, x = 60.23, y = 64.72, z = 44.6, f = "e" },
						{ t = "accept", quest = 648, title = "Rescue OOX-17/TN!", npc = 7784, npcName = "Homing Robot OOX-17/TN", minLevel = 43, qlvl = 48, pre = { 351 }, preTitles = { [351] = "Find OOX-17/TN!" }, map = 1446, x = 60.23, y = 64.72, z = 44.6, f = "e", escort = true },
						{ t = "complete", quest = 648, title = "Rescue OOX-17/TN!", note = "Escort OOX-17/TN", escort = true },
					},
				},
				{
					title = "{item:8704} in the {zone:1425}",
					note = "Most {zone:1425} mobs drop OOX-09/HL's beacon about once in 100 kills: Silvermane wolves, owlbeasts, Highvale elves, Witherbark and Vilebranch trolls. You can loot it from level 43.",
					goals = {
						{ t = "collect", item = 8704, itemName = "OOX-09/HL Distress Beacon", count = 1, candidates = { { npc = 8219, npcName = "Zul'arek Hatefowler", map = 1425, x = 32.4, y = 56.9, f = "e", faction = "AH", lvl = { min = 43, max = 43 }, rate = 0.025, spawns = 1 }, { npc = 7809, npcName = "Vilebranch Ambusher", map = 1425, x = 69.3, y = 62.4, f = "e", faction = "AH", lvl = { min = 47, max = 47 }, rate = 0.02, spawns = 1 } } },
					},
				},
				{
					title = "Rescue OOX-09/HL",
					note = "OOX-09/HL waits on the largest island of the lake west of {area:351}. Its escort to the shore beyond Overlook Cliff has two ambushes of three: Marauding Owlbeasts, then Vilebranch Ambushers; the robot warns you just before each.",
					goals = {
						{ t = "accept", quest = 485, title = "Find OOX-09/HL!", item = 8704, itemName = "OOX-09/HL Distress Beacon", minLevel = 43, qlvl = 48 },
						{ t = "turnin", quest = 485, title = "Find OOX-09/HL!", npc = 7806, npcName = "Homing Robot OOX-09/HL", map = 1425, x = 49.35, y = 37.66, z = 116.5, f = "e" },
						{ t = "accept", quest = 836, title = "Rescue OOX-09/HL!", npc = 7806, npcName = "Homing Robot OOX-09/HL", minLevel = 43, qlvl = 48, pre = { 485 }, preTitles = { [485] = "Find OOX-09/HL!" }, map = 1425, x = 49.35, y = 37.66, z = 116.5, f = "e", escort = true },
						{ t = "complete", quest = 836, title = "Rescue OOX-09/HL!", note = "Escort OOX-09/HL", escort = true },
					},
				},
				{
					title = "{npc:7406} in {area:35}",
					note = "{npc:7406} is in {area:35}, upstairs in the building north of the inn, above {npc:2490}. Hand in all three rescues; at level 45 he then offers {quest:3721}, which you turn straight back in for the {item:10398}.",
					goals = {
						{ t = "turnin", quest = 2767, title = "Rescue OOX-22/FE!", npc = 7406, npcName = "Oglethorpe Obnoticus", map = 1434, x = 28.36, y = 76.35, z = 22.8, f = "e" },
						{ t = "turnin", quest = 648, title = "Rescue OOX-17/TN!", npc = 7406, npcName = "Oglethorpe Obnoticus", map = 1434, x = 28.36, y = 76.35, z = 22.8, f = "e" },
						{ t = "turnin", quest = 836, title = "Rescue OOX-09/HL!", npc = 7406, npcName = "Oglethorpe Obnoticus", map = 1434, x = 28.36, y = 76.35, z = 22.8, f = "e" },
						{ t = "level", level = 45 },
						{ t = "accept", quest = 3721, title = "An OOX of Your Own", npc = 7406, npcName = "Oglethorpe Obnoticus", minLevel = 45, qlvl = 50, preAll = { 648, 836, 2767 }, preTitles = { [648] = "Rescue OOX-17/TN!", [836] = "Rescue OOX-09/HL!", [2767] = "Rescue OOX-22/FE!" }, map = 1434, x = 28.36, y = 76.35, z = 22.8, f = "e" },
						{ t = "turnin", quest = 3721, title = "An OOX of Your Own", npc = 7406, npcName = "Oglethorpe Obnoticus", map = 1434, x = 28.36, y = 76.35, z = 22.8, f = "e" },
						{ t = "collect", item = 10398, itemName = "Mechanical Chicken", map = 1434, x = 28.4, y = 76.4, f = "e" },
					},
				},
			},
		})
	end
	register()
end

-- Source: forever/collectibles/pets/narkk.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/collectibles/pets/narkk",
			pack = "guides",
			title = "{npc:2663}'s Parrots",
			minLevel = 1,
			maxLevel = 60,
			category = "Collectibles",
			folder = "Companion pets · Vendors",
			keywords = { "Parrot Cage", "Senegal", "Cockatiel", "parrot", "Booty Bay" },
			collects = { 8495, 8496 },
			zone = 1434,
			zoneName = "Stranglethorn Vale",
			author = "Polestar",
			version = 1,
			names = { ["area:35"] = "Booty Bay", ["area:392"] = "Ratchet", ["item:8495"] = "Parrot Cage (Senegal)", ["item:8496"] = "Parrot Cage (Cockatiel)", ["npc:2663"] = "Narkk", ["npc:2664"] = "Kelsey Yance" },
			steps = {
				{
					title = "{npc:2663}",
					note = "{npc:2663}, the pirate supplier in {area:35}, sells two parrots (40s each), with no stock limit. He stands next to {npc:2664}, the cook. {area:35} is neutral: the boat from {area:392} and the Stranglethorn road both arrive there. Each pet item teaches its companion when you use it; the goals stay ticked afterwards.",
					goals = {
						{ t = "vendor", npc = 2663, npcName = "Narkk", map = 1434, x = 28.13, y = 74.42, z = 6.7, f = "e" },
						{ t = "buy", npc = 2663, npcName = "Narkk", item = 8495, itemName = "Parrot Cage (Senegal)", map = 1434, x = 28.13, y = 74.42, z = 6.7, f = "e", optional = true, note = "{item:8495}, 40s" },
						{ t = "buy", npc = 2663, npcName = "Narkk", item = 8496, itemName = "Parrot Cage (Cockatiel)", map = 1434, x = 28.13, y = 74.42, z = 6.7, f = "e", optional = true, note = "{item:8496}, 40s" },
					},
				},
			},
		})
	end
	register()
end

-- Source: forever/collectibles/pets/siamese-cat.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/collectibles/pets/siamese-cat",
			pack = "guides",
			title = "Siamese Cat",
			minLevel = 17,
			maxLevel = 60,
			category = "Collectibles",
			folder = "Companion pets · Drops",
			keywords = { "Cat Carrier (Siamese)", "Cookie", "Deadmines", "Westfall", "dungeon", "cat" },
			collects = { 8490 },
			zone = 1436,
			zoneName = "Westfall",
			author = "Polestar",
			version = 1,
			group = true,
			names = { ["area:1581"] = "The Deadmines", ["area:20"] = "Moonbrook" },
			steps = {
				{
					title = "{area:1581}: Cookie",
					note = "{area:1581} is a group of five under {area:20}: the mine mouth is in {area:20}, the instance portal deep inside the mine. Cookie, the murloc cook, waits on a small island under the pirate ship at the far end, an optional boss; his cooking heals him, so interrupt it. He drops the Siamese about 15% of the time in Classic's data: expect several runs. The carrier can be traded, so check the Auction House too.",
					goals = {
						{ t = "goto", text = "{area:1581}, in the {area:20} mine", map = 1436, x = 42.5, y = 71.7 },
						{ t = "goto", text = "{area:1581} portal, inside the {area:20} mine", map = 1436, x = 38, y = 77.5, f = "e" },
						{ t = "collect", item = 8490, itemName = "Cat Carrier (Siamese)", map = 1436, x = 38, y = 77.5, f = "e", note = "Cookie", group = { kind = "elite", rank = 1 } },
					},
				},
			},
		})
	end
	register()
end

-- Source: forever/collectibles/pets/smolderweb-carrier.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/collectibles/pets/smolderweb-carrier",
			pack = "guides",
			title = "{item:12529}",
			minLevel = 55,
			maxLevel = 60,
			category = "Collectibles",
			folder = "Companion pets · Quests",
			keywords = { "En-Ay-Es-Tee-Why", "Kibler", "Spire Spider Egg", "Lower Blackrock Spire", "LBRS", "spider", "Flame Crest", "Skitterweb Tunnels" },
			collects = { 12529 },
			zone = 1428,
			zoneName = "Burning Steppes",
			author = "Polestar",
			version = 1,
			group = true,
			names = { ["area:1583"] = "Blackrock Spire", ["area:251"] = "Flame Crest", ["area:254"] = "Blackrock Mountain", ["item:12264"] = "Worg Carrier", ["item:12529"] = "Smolderweb Carrier", ["item:12530"] = "Spire Spider Egg", ["npc:10260"] = "Kibler", ["npc:10596"] = "Mother Smolderweb", ["zone:1428"] = "Burning Steppes" },
			steps = {
				{
					title = "{npc:10260} at {area:251}",
					note = "{npc:10260} stands inside the cave at {area:251}, the camp in northern {zone:1428} east of {area:254}. He also gives {npc:10260}'s Exotic Pets (the {item:12264}): take both, they are done in the same run.",
					goals = {
						{ t = "accept", quest = 4862, title = "En-Ay-Es-Tee-Why", npc = 10260, npcName = "Kibler", minLevel = 55, qlvl = 59, map = 1428, x = 65.89, y = 21.92, z = 165.1, f = "e", group = { kind = "dungeon", map = 229, name = "Blackrock Spire" } },
					},
				},
				{
					title = "Lower {area:1583}",
					note = "Lower {area:1583} is a group of five, level 55-60, inside {area:254}. The Spire Spider Eggs lie around {npc:10596}'s nest in the Skitterweb Tunnels, the spider halls: click them until you have 15 (each gives one to three). Hard-hitting spiderlings can hatch as you loot. By player reports the eggs cannot be looted in a raid group, so keep the party at five or fewer.",
					goals = {
						{ t = "collect", quest = 4862, title = "En-Ay-Es-Tee-Why", item = 12530, itemName = "Spire Spider Egg", count = 15, oi = 1, map = 1428, x = 33.2, y = 24.9, f = "e", note = "Lower {area:1583}", group = { kind = "dungeon", map = 229, name = "Blackrock Spire" } },
					},
				},
				{
					title = "Back to {npc:10260}",
					goals = {
						{ t = "turnin", quest = 4862, title = "En-Ay-Es-Tee-Why", npc = 10260, npcName = "Kibler", map = 1428, x = 65.89, y = 21.92, z = 165.1, f = "e", group = { kind = "dungeon", map = 229, name = "Blackrock Spire" } },
						{ t = "collect", item = 12529, itemName = "Smolderweb Carrier", map = 1428, x = 65.9, y = 21.9, f = "e" },
					},
				},
			},
		})
	end
	register()
end

-- Source: forever/collectibles/pets/tiny-crimson-whelpling.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/collectibles/pets/tiny-crimson-whelpling",
			pack = "guides",
			title = "{item:8499}",
			minLevel = 22,
			maxLevel = 60,
			category = "Collectibles",
			folder = "Companion pets · Drops",
			keywords = { "Red Whelp", "Crimson Whelp", "Flamesnorting Whelp", "Wetlands", "dragon", "whelp", "Dragonmaw" },
			collects = { 8499 },
			zone = 1437,
			zoneName = "Wetlands",
			author = "Polestar",
			version = 1,
			names = { ["area:1037"] = "Grim Batol", ["item:8499"] = "Tiny Crimson Whelpling", ["npc:1042"] = "Red Whelp", ["npc:1044"] = "Flamesnorting Whelp", ["npc:1069"] = "Crimson Whelp", ["zone:1437"] = "Wetlands" },
			steps = {
				{
					title = "{zone:1437} whelps",
					note = "The red whelps live in the hills of the eastern {zone:1437}, towards {area:1037}: about 50 of them, back about five minutes after a kill in Classic's data. Red Whelps (levels 23-24) and Crimson Whelps (25-26) drop the whelpling about once in 650 kills, the Flamesnorting Whelps (26-27) mixed in with them only once in 1,600, so expect a long farm. It can be traded, so the Auction House may be quicker.",
					goals = {
						{ t = "collect", item = 8499, itemName = "Tiny Crimson Whelpling", map = 1437, x = 64.6, y = 42.2, f = "e", spotsPacked = "64.6,42.2,,110,6;65.7,44.5,,46,5,1;62,46.7,,40,1,1;67.9,45.7,,40,2,1;63.2,36.4,,40,3,1;63.4,48.8,,40,1,1;59.9,40.2,,40,3,1;59.6,45,,40,2,1;69.9,45.8,,40,1,1;62,34,,40,4,1;63.6,51.5,,40,3,1;68.8,49.3,,50,5,1;66.3,53.8,,40,2,1", note = "{zone:1437} whelps", fromNpcs = { { npc = 1069, npcName = "Crimson Whelp" }, { npc = 1042, npcName = "Red Whelp" } } },
					},
				},
			},
		})
	end
	register()
end

-- Source: forever/collectibles/pets/tiny-emerald-whelpling.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/collectibles/pets/tiny-emerald-whelpling",
			pack = "guides",
			title = "{item:8498}",
			minLevel = 33,
			maxLevel = 60,
			category = "Collectibles",
			folder = "Companion pets · Drops",
			keywords = { "Dreaming Whelp", "Swamp of Sorrows", "dragon", "whelp" },
			collects = { 8498 },
			zone = 1435,
			zoneName = "Swamp of Sorrows",
			author = "Polestar",
			version = 1,
			names = { ["item:8498"] = "Tiny Emerald Whelpling", ["npc:741"] = "Dreaming Whelp", ["zone:1430"] = "Deadwind Pass", ["zone:1435"] = "Swamp of Sorrows" },
			steps = {
				{
					title = "Dreaming Whelps",
					note = "The Dreaming Whelps (levels 35-36) live in western {zone:1435}, near the {zone:1430} border. They drop it about once in 1,250 kills, and there are only a handful, back about every five minutes, so expect days of farming; it can be traded, so the Auction House may be quicker.",
					goals = {
						{ t = "collect", item = 8498, itemName = "Tiny Emerald Whelpling", map = 1435, x = 11.5, y = 62.9, f = "e", spotsPacked = "11.5,62.9,,15,0;13.6,64.5,,22,2,1;12.2,58.5,,26,3,1;16.7,56.2,,15,1,1", note = "Dreaming Whelps", from = "Dreaming Whelp", fromKind = "npc", fromId = 741, fromNpcs = { { npc = 741, npcName = "Dreaming Whelp" } } },
					},
				},
			},
		})
	end
	register()
end

-- Source: forever/collectibles/pets/worg-carrier.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "forever/collectibles/pets/worg-carrier",
			pack = "guides",
			title = "{item:12264}",
			minLevel = 55,
			maxLevel = 60,
			category = "Collectibles",
			folder = "Companion pets · Quests",
			keywords = { "Kibler's Exotic Pets", "Kibler", "Bloodaxe Worg Pup", "Caged Worg Pup", "Empty Worg Pup Cage", "Halycon", "Lower Blackrock Spire", "LBRS", "worg", "Flame Crest" },
			collects = { 12264 },
			zone = 1428,
			zoneName = "Burning Steppes",
			author = "Polestar",
			version = 1,
			group = true,
			names = { ["area:1583"] = "Blackrock Spire", ["area:251"] = "Flame Crest", ["area:254"] = "Blackrock Mountain", ["item:12262"] = "Empty Worg Pup Cage", ["item:12264"] = "Worg Carrier", ["item:12529"] = "Smolderweb Carrier", ["npc:10221"] = "Bloodaxe Worg Pup", ["npc:10260"] = "Kibler", ["npc:10584"] = "Urok Doomhowl", ["zone:1428"] = "Burning Steppes" },
			steps = {
				{
					title = "{npc:10260} at {area:251}",
					note = "{npc:10260} stands inside the cave at {area:251}, the camp in northern {zone:1428} east of {area:254}. He gives you an {item:12262}. He also gives En-Ay-Es-Tee-Why (the {item:12529}): take both, they are done in the same run.",
					goals = {
						{ t = "accept", quest = 4729, title = "Kibler's Exotic Pets", npc = 10260, npcName = "Kibler", minLevel = 55, qlvl = 59, map = 1428, x = 65.89, y = 21.92, z = 165.1, f = "e", group = { kind = "dungeon", map = 229, name = "Blackrock Spire" } },
					},
				},
				{
					title = "Lower {area:1583}: Halycon's pups",
					note = "The pups are in Lower Blackrock Spire (a group of five, level 55-60), not Upper: they run with Halycon, the great worg, deep in the dungeon beyond {npc:10584}'s ogres. Use the cage on a living {npc:10221} before the pack is dead. Taking damage interrupts the cast, so let the tank hold the pups and cage one from the side. A rogue or druid can sneak in, cage a pup from a corner, then vanish.",
					goals = {
						{ t = "collect", quest = 4729, title = "Kibler's Exotic Pets", item = 12263, itemName = "Caged Worg Pup", count = 1, oi = 1, map = 1428, x = 33.2, y = 24.9, f = "e", note = "Lower {area:1583}", group = { kind = "dungeon", map = 229, name = "Blackrock Spire" } },
					},
				},
				{
					title = "Back to {npc:10260}",
					goals = {
						{ t = "turnin", quest = 4729, title = "Kibler's Exotic Pets", npc = 10260, npcName = "Kibler", map = 1428, x = 65.89, y = 21.92, z = 165.1, f = "e", group = { kind = "dungeon", map = 229, name = "Blackrock Spire" } },
						{ t = "collect", item = 12264, itemName = "Worg Carrier", map = 1428, x = 65.9, y = 21.9, f = "e" },
					},
				},
			},
		})
	end
	register()
end

