-- TuWoW_Leveling — Guides/Class_07.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-warlock-class-quests-part-2",
		pack = "guides",
		title = "Warlock Class Quests (Parte 2/2)",
		category = "Class",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1429,
		version = 1,
		classes = { "WARLOCK" },
		steps = {
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 40.49, y = 48.48 },
					{ t = "goto", text = "Run down the ramp", map = 1448, x = 40.04, y = 47.71 },
					{ t = "goto", text = "Run up the ramp", map = 1448, x = 38.49, y = 46.17 },
					{ t = "goto", text = "Follow the path", map = 1448, x = 38.22, y = 46.82 },
					{ t = "complete", quest = 7625, title = "Xorothian Stardust", note = "run up the ramp", map = 1448, x = 37.35, y = 45.87, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 38.03, y = 46.48 },
					{ t = "goto", text = "Cross the bridge", map = 1448, x = 37.46, y = 47.35 },
					{ t = "turnin", quest = 7624, title = "Ulathek the Traitor", npc = 9516, npcName = "Lord Banehollow", map = 1448, x = 35.93, y = 44.41, f = "e" },
					{ t = "accept", quest = 7625, title = "Xorothian Stardust", npc = 9516, npcName = "Lord Banehollow", map = 1448, x = 35.93, y = 44.41, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "buy", item = 18687, itemName = "Xorothian Stardust", map = 1448, x = 36.17, y = 44.46, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1428, x = 15.46, y = 40.26 },
					{ t = "turnin", quest = 7625, title = "Xorothian Stardust", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
					{ t = "accept", quest = 7629, title = "Imp Delivery", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
				},
			},
			{
				note = "Use it near the Alchemy Station at the start of the room with Ras Frostwhisper.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 18688, itemName = "Imp in a Jar" },
					{ t = "complete", quest = 7629, title = "Imp Delivery", note = "Create the Parchment" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1428, x = 15.46, y = 40.26 },
					{ t = "turnin", quest = 7629, title = "Imp Delivery", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "buy", item = 18663, itemName = "J'eevee's Jar", map = 1428, x = 12.43, y = 31.63, f = "e" },
					{ t = "buy", item = 18629, itemName = "Black Lodestone", map = 1428, x = 12.43, y = 31.63, f = "e" },
					{ t = "buy", item = 18670, itemName = "Xorothian Glyphs", map = 1428, x = 12.43, y = 31.63, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 7631, title = "Dreadsteed of Xoroth", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
				},
			},
			{
				note = "Use it in the area where Immol'thar is. Clear the room before starting. Focus on Dread Guards as they appear. They will spawn in waves after using J'eevee's Jar. Recharge the Bell, Wheel and Candle as they run out of charges. They will tilt when they need to be recharged. Use the \"Black Lodestone\" to fix them, which costs a soul shard. At 50% health, Lord Hel'nurath will appear and need to be killed.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 18663, itemName = "J'eevee's Jar" },
					{ t = "use", item = 18670, itemName = "Xorothian Glyphs" },
					{ t = "turnin", quest = 7631, title = "Dreadsteed of Xoroth", npc = 14504, npcName = "Dreadsteed Spirit" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-druid-class-quests",
		pack = "guides",
		title = "Druid Class Quests",
		category = "Class",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1412,
		version = 1,
		classes = { "DRUID" },
		steps = {
			{
				note = "Inside the building.",
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1412, x = 47.21, y = 62.89 },
					{ t = "accept", quest = 5928, title = "Heeding the Call", npc = 3064, npcName = "Gennia Runetotem", map = 1412, x = 47.47, y = 62.98, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Ride the elevator up", map = 1456, x = 31.8, y = 65.96 },
					{ t = "goto", text = "Enter the building", map = 1456, x = 58.66, y = 46.92 },
					{ t = "goto", text = "Cross the bridge", map = 1456, x = 61.44, y = 40.2 },
					{ t = "goto", text = "Enter the building", map = 1456, x = 74.09, y = 29.91 },
					{ t = "turnin", quest = 5928, title = "Heeding the Call", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.46, y = 27.23, f = "e" },
					{ t = "accept", quest = 5922, title = "Moonglade", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.46, y = 27.23, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1450, x = 56.13, y = 30.98 },
					{ t = "turnin", quest = 5922, title = "Moonglade", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 5930, title = "Great Bear Spirit", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1450, x = 42.47, y = 34.44 },
					{ t = "complete", quest = 5930, title = "Great Bear Spirit", note = "Seek Out the Great Bear Spirit and Learn what it Has to Share with You About the Nature of the Bear", map = 1450, x = 39.11, y = 27.51, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "getfp", location = "Moonglade", map = 1450, x = 32.11, y = 66.6, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1450, x = 40.77, y = 35.81 },
					{ t = "goto", text = "Enter the building", map = 1450, x = 56.13, y = 30.98 },
					{ t = "turnin", quest = 5930, title = "Great Bear Spirit", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 5932, title = "Back to Thunder Bluff", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "complete", quest = 5932, title = "Back to Thunder Bluff", note = "Locate Bunthen Plainswind", map = 1450, x = 44.28, y = 45.86, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1456, x = 58.66, y = 46.92 },
					{ t = "goto", text = "Cross the bridge", map = 1456, x = 61.44, y = 40.2 },
					{ t = "goto", text = "Enter the building", map = 1456, x = 74.09, y = 29.91 },
					{ t = "turnin", quest = 5932, title = "Back to Thunder Bluff", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.46, y = 27.23, f = "e" },
					{ t = "accept", quest = 6002, title = "Body and Heart", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.46, y = 27.23, f = "e" },
				},
			},
			{
				note = "A spirit will appear after you kill her.",
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 15710, itemName = "Cenarion Lunardust" },
					{ t = "complete", quest = 6002, title = "Body and Heart", note = "Face Lunaclaw and Earn the Strength of Body and Heart it Possesses", map = 1413, x = 42.0, y = 60.86, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Tauren" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter Mulgore", map = 1413, x = 41.54, y = 58.56 },
					{ t = "goto", text = "Cross the bridge", map = 1412, x = 47.18, y = 57.81 },
					{ t = "goto", text = "Ride the elevator up", map = 1456, x = 31.8, y = 65.96 },
					{ t = "goto", text = "Enter the building", map = 1456, x = 58.66, y = 46.92 },
					{ t = "goto", text = "Cross the bridge", map = 1456, x = 61.44, y = 40.2 },
					{ t = "goto", text = "Enter the building", map = 1456, x = 74.09, y = 29.91 },
					{ t = "turnin", quest = 6002, title = "Body and Heart", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.46, y = 27.23, f = "e" },
				},
			},
			{
				note = "Buy them from the Auction House.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 6128, item = 2449, itemName = "Earthroot", count = 5, map = 1456, x = 40.4, y = 51.77, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1456, x = 74.17, y = 29.89 },
					{ t = "accept", quest = 6126, title = "Lessons Anew", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.47, y = 27.23, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1450, x = 56.13, y = 30.98 },
					{ t = "turnin", quest = 6126, title = "Lessons Anew", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 6127, title = "The Principal Source", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				note = "Use it while standing in the bubbling water at the top of the mountain. Be ready to flee! 3 acolytes will spawn and attack you right after. They stack warlock spells and curses on you, so taking them solo may be really hard, even if you clear all the other enemies at the peak of the mountain first.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 51.08, y = 22.66 },
					{ t = "goto", text = "Follow the path", map = 1413, x = 49.16, y = 20.33 },
					{ t = "goto", text = "Follow the path up", map = 1413, x = 48.0, y = 19.56 },
					{ t = "use", item = 15842, itemName = "Empty Dreadmist Peak Sampler" },
					{ t = "collect", quest = 6127, item = 15843, itemName = "Filled Dreadmist Peak Sampler", oi = 1, map = 1413, x = 48.41, y = 18.89, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1413, x = 49.22, y = 20.39 },
					{ t = "goto", text = "Follow the path", map = 1413, x = 52.34, y = 29.37 },
					{ t = "turnin", quest = 6127, title = "The Principal Source", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
					{ t = "accept", quest = 6128, title = "Gathering the Cure", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1413, x = 50.09, y = 40.9 },
					{ t = "collect", quest = 6128, item = 15852, itemName = "Kodo Horn", count = 5, oi = 2, map = 1413, x = 51.93, y = 43.65, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6128, title = "Gathering the Cure", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
					{ t = "accept", quest = 6129, title = "Curing the Sick", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
				},
			},
			{
				note = "Use it on Sickly Gazelles around this area. They look like green gazelles all around the northern area of the Barrens.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 15826, itemName = "Curative Animal Salve" },
					{ t = "complete", quest = 6129, title = "Curing the Sick", note = "Cure #10# Sickly Gazelles", map = 1413, x = 50.17, y = 31.12, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1450, x = 56.13, y = 30.98 },
					{ t = "turnin", quest = 6129, title = "Curing the Sick", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 6130, title = "Power over Poison", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1456, x = 74.17, y = 29.89 },
					{ t = "turnin", quest = 6130, title = "Power over Poison", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.47, y = 27.23, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1413, x = 38.42, y = 28.96 },
					{ t = "goto", text = "Continue following the road", map = 1413, x = 43.46, y = 30.63 },
					{ t = "goto", text = "Continue following the road", map = 1413, x = 47.95, y = 28.0 },
					{ t = "goto", text = "Follow the path", map = 1413, x = 50.82, y = 29.06 },
					{ t = "goto", text = "Enter the building", map = 1456, x = 74.15, y = 29.89 },
					{ t = "accept", quest = 27, title = "A Lesson to Learn", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.47, y = 27.22, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 27, title = "A Lesson to Learn", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.65, f = "e" },
					{ t = "accept", quest = 28, title = "Trial of the Lake", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.65, f = "e" },
				},
			},
			{
				note = "It looks like a wicker vase on the ground underwater. They spawn randomly, so you may have to search around this area. Swim at the top of the water until you can see one. Hover above the container before swimming directly down to it. Don't linger underwater longer than is required and watch your breath meter.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 28, item = 15877, itemName = "Shrine Bauble", map = 1450, x = 54.33, y = 55.65, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 15877, itemName = "Shrine Bauble" },
					{ t = "complete", quest = 28, title = "Trial of the Lake", note = "Complete the Trial of the Lake", map = 1450, x = 35.92, y = 41.38, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 28, title = "Trial of the Lake", npc = 11799, npcName = "Tajarri", map = 1450, x = 36.51, y = 40.11, f = "e" },
					{ t = "accept", quest = 30, title = "Trial of the Sea Lion", npc = 11799, npcName = "Tajarri", map = 1450, x = 36.51, y = 40.11, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1413, x = 52.03, y = 30.18 },
					{ t = "goto", text = "Follow the path", map = 1454, x = 52.54, y = 85.14 },
					{ t = "goto", text = "Enter Undercity", map = 1420, x = 61.86, y = 65.03 },
					{ t = "getfp", location = "Undercity", map = 1458, x = 63.28, y = 48.58, f = "e" },
				},
			},
			{
				note = "Underwater. Hover above the container before swimming directly down to it. Don't linger underwater longer than is required and watch your breath meter.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Leave Undercity", map = 1458, x = 66.19, y = 0.63 },
					{ t = "goto", text = "Follow the road", map = 1420, x = 56.17, y = 65.88 },
					{ t = "goto", text = "Continue following the road", map = 1421, x = 58.14, y = 12.21 },
					{ t = "goto", text = "Follow the path", map = 1421, x = 51.56, y = 22.48 },
					{ t = "goto", text = "Continue following the path", map = 1421, x = 44.15, y = 28.9 },
					{ t = "collect", quest = 30, item = 15882, itemName = "Half Pendant of Aquatic Endurance", map = 1421, x = 29.54, y = 29.53, f = "e" },
				},
			},
			{
				note = "Underwater. Hover above the container before swimming directly down to it. Don't linger underwater longer than is required and watch your breath meter.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1413, x = 52.92, y = 12.63 },
					{ t = "collect", quest = 30, item = 15883, itemName = "Half Pendant of Aquatic Agility", map = 1413, x = 56.68, y = 8.32, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 15883, itemName = "Half Pendant of Aquatic Agility" },
					{ t = "collect", quest = 30, item = 15885, itemName = "Pendant of the Sea Lion", oi = 1, map = 1450, x = 35.92, y = 41.42, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1450, x = 41.76, y = 35.1 },
					{ t = "turnin", quest = 30, title = "Trial of the Sea Lion", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 31, title = "Aquatic Form", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1456, x = 74.15, y = 29.89 },
					{ t = "turnin", quest = 31, title = "Aquatic Form", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.47, y = 27.22, f = "e" },
				},
			},
			{
				note = "Insidie the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "accept", quest = 9063, title = "Torwa Pathfinder", npc = 3033, npcName = "Turak Runetotem", map = 1456, x = 76.6, y = 27.6, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 9063, title = "Torwa Pathfinder", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
					{ t = "accept", quest = 9052, title = "Bloodpetal Poison", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
				},
			},
			{
				note = "Gorishi Workers may call for help when at low health. Watch for patrols and respawns while in the cave.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 9052, item = 22435, itemName = "Gorishi Sting", count = 8, oi = 1, map = 1449, x = 50.4, y = 78.6, f = "e" },
				},
			},
			{
				note = "They look like vines entwined in a ball. They are all over Un'Goro Crater.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 9052, item = 22434, itemName = "Bloodcap", count = 8, oi = 2, map = 1449, x = 71.9, y = 57.4, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 9052, title = "Bloodpetal Poison", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
					{ t = "accept", quest = 9051, title = "Toxic Test", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
				},
			},
			{
				note = "Use it on roaming Devilsaur around Un'Goro Crater.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 22432, itemName = "Devilsaur Barb" },
					{ t = "complete", quest = 9051, title = "Toxic Test", note = "Stab a Devilsaur with the Barb", map = 1449, x = 67.31, y = 33.89, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 9051, title = "Toxic Test", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
					{ t = "accept", quest = 9053, title = "A Better Ingredient", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1435, x = 56.28, y = 76.52 },
					{ t = "goto", text = "Enter the building", map = 1435, x = 56.33, y = 76.26 },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1435, x = 69.36, y = 56.89 },
					{ t = "goto", text = "Enter the building and swim under the water", map = 1435, x = 70.54, y = 49.78 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 72.69, y = 42.22 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 75.69, y = 45.78 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 78.62, y = 47.47 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 80.22, y = 49.62 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 81.33, y = 42.38 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 78.86, y = 40.74 },
					{ t = "goto", text = "Run down the ramp", map = 1435, x = 76.85, y = 38.82 },
				},
			},
			{
				note = "Refer to the Temple of Atal'Hakkar Dungeon Guide to accomplish that.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 9053, item = 22444, itemName = "Putrid Vine", oi = 1 },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 9053, title = "A Better Ingredient", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-priest-class-quests",
		pack = "guides",
		title = "Priest Class Quests",
		category = "Class",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1411,
		version = 1,
		classes = { "PRIEST" },
		steps = {
			{
				note = "Inside the building.",
				only = { races = { "Troll" }, classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1411, x = 53.24, y = 42.59 },
					{ t = "accept", quest = 5652, title = "Hex of Weakness", npc = 3706, npcName = "Tai'jin", map = 1411, x = 54.26, y = 42.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Troll" }, classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5652, title = "Hex of Weakness", npc = 6018, npcName = "Ur'kyo", map = 1454, x = 35.59, y = 87.83, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 5658, title = "Touch of Weakness", npc = 4607, npcName = "Father Lankester", map = 1458, x = 49.14, y = 14.61, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5658, title = "Touch of Weakness", npc = 4606, npcName = "Aelthalyste", map = 1458, x = 49.27, y = 17.11, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { races = { "Troll" }, classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1456, x = 29.73, y = 29.76 },
					{ t = "accept", quest = 5643, title = "Shadowguard", npc = 3044, npcName = "Miles Welsh", map = 1456, x = 25.32, y = 15.24, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Troll" }, classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5643, title = "Shadowguard", npc = 6018, npcName = "Ur'kyo", map = 1454, x = 35.59, y = 87.83, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Scourge" }, classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 5644, title = "Dark Sacrifice", npc = 6018, npcName = "Ur'kyo", map = 1454, x = 35.59, y = 87.83, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5644, title = "Dark Sacrifice", npc = 4606, npcName = "Aelthalyste", map = 1458, x = 49.27, y = 17.11, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 8254, title = "Cenarion Aid", npc = 6018, npcName = "Ur'kyo", map = 1454, x = 35.6, y = 87.6, f = "e" },
				},
			},
			{
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 8254, title = "Cenarion Aid", npc = 8405, npcName = "Ogtinc", map = 1447, x = 42.4, y = 42.6, f = "e" },
					{ t = "accept", quest = 8255, title = "Of Coursers We Know", npc = 8405, npcName = "Ogtinc", map = 1447, x = 42.4, y = 42.6, f = "e" },
				},
			},
			{
				note = "they are scattered all over the area.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "collect", quest = 8255, item = 20027, itemName = "Healthy Courser Gland", count = 4, oi = 1, map = 1447, x = 49.47, y = 17.62, f = "e" },
				},
			},
			{
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 8255, title = "Of Coursers We Know", npc = 8405, npcName = "Ogtinc", map = 1447, x = 42.4, y = 42.6, f = "e" },
					{ t = "accept", quest = 8256, title = "The Ichor of Undeath", npc = 8405, npcName = "Ogtinc", map = 1447, x = 42.4, y = 42.6, f = "e" },
				},
			},
			{
				note = "These have a low drop rate.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "collect", quest = 8256, item = 7972, itemName = "Ichor of Undeath", oi = 1, map = 1452, x = 52.59, y = 40.68, f = "e" },
				},
			},
			{
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 8256, title = "The Ichor of Undeath", npc = 8405, npcName = "Ogtinc", map = 1447, x = 42.4, y = 42.6, f = "e" },
					{ t = "accept", quest = 8257, title = "Blood of Morphaz", npc = 8405, npcName = "Ogtinc", map = 1447, x = 42.4, y = 42.6, f = "e" },
				},
			},
			{
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1435, x = 69.36, y = 56.89 },
					{ t = "goto", text = "Enter the building and swim under the water", map = 1435, x = 70.54, y = 49.78 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 72.69, y = 42.22 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 75.69, y = 45.78 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 78.62, y = 47.47 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 80.22, y = 49.62 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 81.33, y = 42.38 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 78.86, y = 40.74 },
					{ t = "goto", text = "Run down the ramp", map = 1435, x = 76.85, y = 38.82 },
				},
			},
			{
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "collect", quest = 8257, item = 20025, itemName = "Blood of Morphaz", oi = 1 },
				},
			},
			{
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 8257, title = "Blood of Morphaz", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.2, y = 82.2, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 8916, title = "An Earnest Proposition", npc = 16012, npcName = "Mokvar", map = 1454, x = 34.8, y = 38.0, f = "e" },
				},
			},
			{
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "collect", quest = 8916, item = 21928, itemName = "Winterspring Blood Sample", count = 15, oi = 1, map = 1452, x = 51.8, y = 9.2, f = "e" },
				},
			},
			{
				note = "These drop from enemies in Stratholme. Refer to either Stratholme dungeon guides to accomplish this. You can also buy them from the Auction House.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "collect", quest = 8916, item = 16697, itemName = "Devout Bracers", oi = 2 },
				},
			},
			{
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "complete", quest = 8916, title = "An Earnest Proposition", note = "Collect 20 Gold" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 8916, title = "An Earnest Proposition", npc = 16012, npcName = "Mokvar", map = 1454, x = 34.8, y = 38.0, f = "e" },
				},
			},
		},
	})
end

