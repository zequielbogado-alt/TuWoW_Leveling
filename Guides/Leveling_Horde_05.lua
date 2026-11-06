-- TuWoW_Leveling — Guides/Leveling_Horde_05.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-tauren-starter-1-13-part-2",
		pack = "guides",
		title = "Tauren Starter (Parte 2/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-tauren-starter-1-13-part-3",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1412,
		version = 1,
		races = { "Tauren" },
		steps = {
			{
				note = "Helps reach level 9 after quest turnins. Higher level enemies soon.",
				goals = {
					{ t = "goto", text = "ding 8,3915", map = 1412, x = 49.57, y = 47.28 },
				},
			},
			{
				note = "No death penalty at this level. Fast travel.",
				goals = {
					{ t = "complete", quest = 766, title = "Mazzranache", note = "Die on Purpose", map = 1412, x = 49.57, y = 47.28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 766, title = "Mazzranache", note = "Resurrect at the Spirit Healer", map = 1412, x = 45.75, y = 59.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 766, title = "Mazzranache", npc = 3055, npcName = "Maur Raincaller", map = 1412, x = 46.22, y = 60.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 756, title = "Thunderhorn Totem", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 47.52, y = 63.61, f = "e" },
					{ t = "accept", quest = 758, title = "Thunderhorn Cleansing", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 47.52, y = 63.61, f = "e" },
				},
			},
			{
				note = "Walks along the road.",
				goals = {
					{ t = "turnin", quest = 751, title = "The Ravaged Caravan", npc = 2988, npcName = "Morin Cloudstalker", map = 1412, x = 54.8, y = 64.3, f = "e" },
					{ t = "accept", quest = 764, title = "The Venture Co.", npc = 2988, npcName = "Morin Cloudstalker", map = 1412, x = 54.8, y = 64.3, f = "e" },
				},
			},
			{
				note = "Inside and outside the mine. Safer to stay outside, if possible.",
				goals = {
					{ t = "kill", quest = 764, npc = 2979, target = "Venture Co. Supervisor", count = 6, oi = 2, map = 1412, x = 58.37, y = 52.36, f = "e" },
					{ t = "kill", quest = 764, npc = 2978, target = "Venture Co. Worker", count = 14, oi = 1, map = 1412, x = 58.37, y = 52.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 5415, itemName = "Thunderhorn Cleansing Totem" },
					{ t = "complete", quest = 758, title = "Thunderhorn Cleansing", note = "Cleanse the Thunderhorn Water Well", map = 1412, x = 44.23, y = 51.14, f = "e" },
				},
			},
			{
				note = "Helps reach level 10 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 9,4400", map = 1412, x = 49.57, y = 47.28 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 758, title = "Thunderhorn Cleansing", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 47.52, y = 63.59, f = "e" },
					{ t = "accept", quest = 759, title = "Wildmane Totem", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 47.52, y = 63.59, f = "e" },
				},
			},
			{
				note = "Walks along the road.",
				goals = {
					{ t = "turnin", quest = 764, title = "The Venture Co.", npc = 2988, npcName = "Morin Cloudstalker", map = 1412, x = 54.8, y = 64.3, f = "e" },
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
				only = { races = { "Tauren" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 2984, title = "Call of Fire", npc = 3066, npcName = "Narm Skychaser", map = 1412, x = 47.4, y = 62.55, f = "e" },
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
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "accept", quest = 5928, title = "Heeding the Call", npc = 3064, npcName = "Gennia Runetotem", map = 1412, x = 47.48, y = 62.95, f = "e" },
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
				goals = {
					{ t = "accept", quest = 861, title = "The Hunter's Way", npc = 3052, npcName = "Skorn Whitecloud", map = 1412, x = 46.04, y = 63.44, f = "e" },
				},
			},
			{
				note = "Buy level 10 ammo when restocking.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 772, title = "Rite of Vision", note = "Click Here to Continue" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 6061, title = "Taming the Beast", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.93, y = 59.65, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.93, y = 59.65, f = "e" },
				},
			},
			{
				note = "On an Adult Plainstrider. Large walking birds.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15914, itemName = "Taming Rod" },
					{ t = "complete", quest = 6061, title = "Taming the Beast", note = "Tame an Adult Plainstrider", map = 1412, x = 41.91, y = 58.61, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6061, title = "Taming the Beast", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.93, y = 59.65, f = "e" },
					{ t = "accept", quest = 6087, title = "Taming the Beast", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.93, y = 59.65, f = "e" },
				},
			},
			{
				note = "On a Prairie Stalker. Wolves. Dismiss your pet first.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15915, itemName = "Taming Rod" },
					{ t = "complete", quest = 6087, title = "Taming the Beast", note = "Tame a Prairie Stalker", map = 1412, x = 46.91, y = 55.45, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6087, title = "Taming the Beast", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.93, y = 59.65, f = "e" },
					{ t = "accept", quest = 6088, title = "Taming the Beast", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.93, y = 59.65, f = "e" },
				},
			},
			{
				note = "On a Swoop. Black birds. Dismiss your pet first.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15916, itemName = "Taming Rod" },
					{ t = "complete", quest = 6088, title = "Taming the Beast", note = "Tame a Swoop", map = 1412, x = 44.74, y = 54.95, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6088, title = "Taming the Beast", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.93, y = 59.65, f = "e" },
					{ t = "accept", quest = 6089, title = "Training the Beast", npc = 3065, npcName = "Yaw Sharpmane", map = 1412, x = 46.93, y = 59.65, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Bloodhoof Village", map = 1412, x = 45.92, y = 64.19, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on any level 8 beast. You'll replace it with a new permanent pet soon. Dismiss your pet first.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 772, title = "Rite of Vision", note = "Click Here to Continue", map = 1412, x = 46.91, y = 55.45, f = "e" },
				},
			},
			{
				note = "Dwarves.",
				goals = {
					{ t = "collect", quest = 746, item = 4702, itemName = "Prospector's Pick", count = 5, map = 1412, x = 34.15, y = 53.83, f = "e" },
				},
			},
			{
				note = "Harpies.",
				goals = {
					{ t = "collect", quest = 743, item = 4751, itemName = "Windfury Talon", count = 8, oi = 1, map = 1412, x = 34.57, y = 48.01, f = "e" },
				},
			},
			{
				note = "Inside the small cave. Run around the mountain.",
				goals = {
					{ t = "turnin", quest = 772, title = "Rite of Vision", npc = 2984, npcName = "Seer Wiserunner", map = 1412, x = 34.34, y = 43.36, f = "e" },
					{ t = "accept", quest = 773, title = "Rite of Wisdom", npc = 2984, npcName = "Seer Wiserunner", map = 1412, x = 34.34, y = 43.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Ride an elevator up into Thunder Bluff", map = 1456, x = 32.1, y = 67.13 },
				},
			},
			{
				note = "Next to the forge.",
				goals = {
					{ t = "use", item = 4702, itemName = "Prospector's Pick" },
					{ t = "collect", quest = 746, item = 4703, itemName = "Broken Tools", count = 5, oi = 1, map = 1456, x = 39.25, y = 56.18, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 768, title = "Gathering Leather", npc = 3050, npcName = "Veren Tallstrider", map = 1456, x = 44.37, y = 44.67, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 768, title = "Gathering Leather", npc = 3050, npcName = "Veren Tallstrider", map = 1456, x = 44.37, y = 44.67, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 886, title = "The Barrens Oases", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.62, y = 28.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 5928, title = "Heeding the Call", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.46, y = 27.23, f = "e" },
					{ t = "accept", quest = 5922, title = "Moonglade", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.46, y = 27.23, f = "e" },
				},
			},
			{
				note = "Buy 20, if possible. Used to feed your pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "buy", item = 117, itemName = "Tough Jerky", map = 1456, x = 52.3, y = 47.79, f = "e" },
					{ t = "vendor", npc = 3025, npcName = "Kaga Mistrunner", map = 1456, x = 52.32, y = 47.77, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6089, title = "Training the Beast", npc = 3039, npcName = "Holt Thunderhorn", map = 1456, x = 57.31, y = 89.76, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10086, npcName = "Hesuwa Thunderhorn", map = 1456, x = 54.09, y = 83.97, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "sethome", location = "Thunder Bluff", map = 1456, x = 45.81, y = 64.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Ride an elevator down to leave Thunder Bluff", map = 1456, x = 51.2, y = 31.51 },
					{ t = "accept", quest = 833, title = "A Sacred Burial", npc = 3233, npcName = "Lorekeeper Raintotem", map = 1412, x = 56.98, y = 34.54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 773, title = "Rite of Wisdom", npc = 2994, npcName = "Ancestral Spirit", map = 1412, x = 58.3, y = 30.71, f = "e" },
					{ t = "accept", quest = 775, title = "Journey into Thunder Bluff", npc = 2994, npcName = "Ancestral Spirit", map = 1412, x = 58.3, y = 30.71, f = "e" },
				},
			},
			{
				label = "Kill_Bristleback_Interlopers",
				along = true,
				goals = {
					{ t = "kill", quest = 833, npc = 3232, target = "Bristleback Interloper", count = 8, oi = 1, map = 1412, x = 58.24, y = 30.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 833, title = "A Sacred Burial", npc = 3233, npcName = "Lorekeeper Raintotem", map = 1412, x = 56.98, y = 34.54, f = "e" },
				},
			},
			{
				label = "Collect_Flatland_Prowler_Claws",
				along = true,
				note = "Cougars.",
				goals = {
					{ t = "collect", quest = 861, item = 5203, itemName = "Flatland Prowler Claw", count = 4, oi = 1, map = 1412, x = 51.25, y = 31.3, f = "e" },
				},
			},
			{
				label = "Collect_Prairie_Alpha_Teeth",
				along = true,
				goals = {
					{ t = "collect", quest = 759, item = 4803, itemName = "Prairie Alpha Tooth", count = 8, oi = 1, map = 1412, x = 51.25, y = 31.3, f = "e" },
				},
			},
			{
				label = "Collect_Light_Leather_Skinning",
				along = true,
				note = "Skin them. Don't vendor them.",
				goals = {
					{ t = "collect", item = 2318, itemName = "Light Leather", count = 12, map = 1412, x = 51.25, y = 31.3, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 5922, title = "Moonglade", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 5930, title = "Great Bear Spirit", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "complete", quest = 5930, title = "Great Bear Spirit", note = "Seek Out the Great Bear Spirit and Learn what it Has to Share with You About the Nature of the Bear", map = 1450, x = 39.11, y = 27.51, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 5930, title = "Great Bear Spirit", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 5932, title = "Back to Thunder Bluff", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 5932, title = "Back to Thunder Bluff", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.46, y = 27.23, f = "e" },
					{ t = "accept", quest = 6002, title = "Body and Heart", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.46, y = 27.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 746, title = "Dwarven Digging", npc = 2993, npcName = "Baine Bloodhoof", map = 1412, x = 46.67, y = 63.39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 743, title = "Dangers of the Windfury", npc = 2985, npcName = "Ruul Eagletalon", map = 1412, x = 46.54, y = 64.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 759, title = "Wildmane Totem", npc = 2948, npcName = "Mull Thunderhorn", map = 1412, x = 47.52, y = 63.58, f = "e" },
				},
			},
			{
				note = "Spirit appears.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 15710, itemName = "Cenarion Lunardust" },
					{ t = "complete", quest = 6002, title = "Body and Heart", note = "Face Lunaclaw and Earn the Strength of Body and Heart it Possesses", map = 1413, x = 42.0, y = 60.86, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Camp Taurajo", map = 1413, x = 44.45, y = 59.15, f = "e" },
				},
			},
			{
				note = "Open the flight map. Allows guide to learn your flight paths.",
				goals = {
					{ t = "getfp", location = "Thunder Bluff", map = 1413, x = 44.45, y = 59.15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 854, title = "Journey to the Crossroads", npc = 3418, npcName = "Kirge Sternhorn", map = 1413, x = 44.88, y = 58.61, f = "e" },
				},
			},
			{
				note = "Carefully follow the road. Higher level enemies.",
				goals = {
					{ t = "turnin", quest = 886, title = "The Barrens Oases", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 854, title = "Journey to the Crossroads", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Crossroads", map = 1413, x = 51.51, y = 30.34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6361, title = "A Bundle of Hides", npc = 3483, npcName = "Jahan Hawkwing", map = 1413, x = 51.21, y = 29.05, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6361, title = "A Bundle of Hides", npc = 3615, npcName = "Devrak", map = 1413, x = 51.5, y = 30.34, f = "e" },
					{ t = "accept", quest = 6362, title = "Ride to Thunder Bluff", npc = 3615, npcName = "Devrak", map = 1413, x = 51.5, y = 30.34, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 768, title = "Gathering Leather", npc = 3050, npcName = "Veren Tallstrider", map = 1456, x = 44.37, y = 44.67, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6002, title = "Body and Heart", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.46, y = 27.23, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 775, title = "Journey into Thunder Bluff", npc = 3057, npcName = "Cairne Bloodhoof", map = 1456, x = 60.3, y = 51.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 861, title = "The Hunter's Way", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.52, y = 80.89, f = "e" },
					{ t = "accept", quest = 860, title = "Sergra Darkthorn", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.52, y = 80.89, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR", "HUNTER", "DRUID" } },
				goals = {
					{ t = "goto", text = "Train Staves", map = 1456, x = 40.93, y = 62.73, only = { classes = { "WARRIOR", "HUNTER" } } },
					{ t = "goto", text = "Train Two-Handed Maces", map = 1456, x = 40.93, y = 62.73, only = { classes = { "DRUID" } } },
				},
			},
			{
				note = "We will train Mining and Blacksmithing. Allows you to make and use Sharpening Stones. Increases damage. Mine Copper Ore as you see it. Use the Rough Stones to make sharpening stones.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "complete", quest = 6362, title = "Ride to Thunder Bluff", note = "Click Here to Continue" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "skill", level = 75, skill = "Blacksmithing" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "skill", level = 75, skill = "Mining" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "buy", item = 2901, itemName = "Mining Pick", map = 1456, x = 34.35, y = 56.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6362, title = "Ride to Thunder Bluff", npc = 8359, npcName = "Ahanu", map = 1456, x = 45.77, y = 55.84, f = "e" },
					{ t = "accept", quest = 6363, title = "Tal the Wind Rider Master", npc = 8359, npcName = "Ahanu", map = 1456, x = 45.77, y = 55.84, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "turnin", quest = 6363, title = "Tal the Wind Rider Master", npc = 2995, npcName = "Tal", map = 1456, x = 47.0, y = 49.83, f = "e" },
					{ t = "accept", quest = 6364, title = "Return to Jahan", npc = 2995, npcName = "Tal", map = 1456, x = 47.0, y = 49.83, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 860, title = "Sergra Darkthorn", npc = 3338, npcName = "Sergra Darkthorn", map = 1413, x = 52.23, y = 31.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6364, title = "Return to Jahan", npc = 3483, npcName = "Jahan Hawkwing", map = 1413, x = 51.21, y = 29.05, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on a Venomtail Scorpid. Abandon your pet first. New permanent pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Durotar", map = 1411, x = 35.4, y = 47.4 },
				},
			},
			{
				note = "Walks around.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 2984, title = "Call of Fire", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 56.03, y = 19.89, f = "e" },
					{ t = "accept", quest = 1524, title = "Call of Fire", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 56.03, y = 19.89, f = "e" },
				},
			},
			{
				note = "On top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1411, x = 36.59, y = 57.07 },
					{ t = "turnin", quest = 1524, title = "Call of Fire", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.55, y = 58.96, f = "e" },
					{ t = "accept", quest = 1525, title = "Call of Fire", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.55, y = 58.96, f = "e" },
				},
			},
			{
				note = "Thornweavers and Water Seekers.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1525, item = 5026, itemName = "Fire Tar", oi = 1, map = 1413, x = 54.33, y = 24.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 840, title = "Conscript of the Horde", npc = 3336, npcName = "Takrin Pathseeker", map = 1411, x = 50.85, y = 43.59, f = "e" },
				},
			},
			{
				note = "Inside the cave. In the back.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1525, item = 6652, itemName = "Reagent Pouch", oi = 2, map = 1411, x = 52.8, y = 28.6, f = "e" },
				},
			},
			{
				note = "Top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1411, x = 52.8, y = 28.6 },
					{ t = "goto", text = "Follow the path up", map = 1411, x = 36.59, y = 57.07 },
					{ t = "turnin", quest = 1525, title = "Call of Fire", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.55, y = 58.96, f = "e" },
					{ t = "accept", quest = 1526, title = "Call of Fire", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.55, y = 58.96, f = "e" },
				},
			},
			{
				note = "Top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "use", item = 6636, itemName = "Fire Sapta" },
					{ t = "complete", quest = 1526, title = "Call of Fire", note = "Gain Sapta Sight", map = 1411, x = 38.16, y = 58.54, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-tauren-starter-1-13-part-3",
		pack = "guides",
		title = "Tauren Starter (Parte 3/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-silverpine-forest-13-15",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1412,
		version = 1,
		races = { "Tauren" },
		steps = {
			{
				note = "Top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1526, item = 6655, itemName = "Glowing Ember", oi = 1, map = 1411, x = 38.72, y = 58.29, f = "e" },
				},
			},
			{
				note = "Top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1526, title = "Call of Fire", map = 1411, x = 38.95, y = 58.22, f = "e" },
					{ t = "accept", quest = 1527, title = "Call of Fire", map = 1411, x = 38.95, y = 58.22, f = "e" },
				},
			},
			{
				note = "Walks around.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1527, title = "Call of Fire", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 56.04, y = 19.89, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Razor Hill", map = 1411, x = 51.52, y = 41.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 834, title = "Winds in the Desert", npc = 3293, npcName = "Rezlak", map = 1411, x = 46.37, y = 22.94, f = "e" },
				},
			},
			{
				note = "Tan bags.",
				goals = {
					{ t = "collect", quest = 834, item = 4918, itemName = "Sack of Supplies", count = 5, oi = 1, map = 1411, x = 49.61, y = 22.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 834, title = "Winds in the Desert", npc = 3293, npcName = "Rezlak", map = 1411, x = 46.37, y = 22.94, f = "e" },
					{ t = "accept", quest = 835, title = "Securing the Lines", npc = 3293, npcName = "Rezlak", map = 1411, x = 46.37, y = 22.94, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path and run through the tunnel", map = 1411, x = 51.95, y = 27.44 },
				},
			},
			{
				label = "Kill_Dustwind_Storm_Witches_And_Savages",
				along = true,
				goals = {
					{ t = "kill", quest = 835, npc = 3118, target = "Dustwind Storm Witch", count = 8, oi = 2, map = 1411, x = 53.1, y = 24.08, f = "e" },
					{ t = "kill", quest = 835, npc = 3117, target = "Dustwind Savage", count = 12, oi = 1, map = 1411, x = 53.1, y = 24.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run through the tunnel", map = 1411, x = 53.51, y = 27.79 },
					{ t = "turnin", quest = 835, title = "Securing the Lines", npc = 3293, npcName = "Rezlak", map = 1411, x = 46.37, y = 22.94, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.4, y = 56.75 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3353, npcName = "Grezz Ragefist", map = 1454, x = 79.78, y = 31.42, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3352, npcName = "Ormak Grimshot", map = 1454, x = 66.06, y = 18.54, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10088, npcName = "Xao'tsu", map = 1454, x = 66.33, y = 14.82, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3344, npcName = "Kardris Dreamseeker", map = 1454, x = 38.81, y = 36.39, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "getfp", location = "Orgrimmar", map = 1454, x = 45.13, y = 63.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 445, title = "Delivery to Silverpine Forest", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.45, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Undercity", map = 1458, x = 63.28, y = 48.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.83, y = 77.69 },
				},
			},
		},
	})
end

