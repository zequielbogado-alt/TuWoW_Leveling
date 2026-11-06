-- TuWoW_Leveling — Guides/Leveling_Horde_36.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-silithus-59-60",
		pack = "guides",
		title = "Silithus",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 59,
		maxLevel = 60,
		zone = 1451,
		version = 1,
		steps = {
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1124, title = "Wasteland", npc = 13220, npcName = "Layo Starstrike", map = 1451, x = 81.87, y = 18.93, f = "e" },
					{ t = "accept", quest = 1125, title = "The Spirits of Southwind", npc = 13220, npcName = "Layo Starstrike", map = 1451, x = 81.87, y = 18.93, f = "e" },
				},
			},
			{
				note = "Walks around. Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 8277, title = "Deadly Desert Venom", npc = 15189, npcName = "Beetix Ficklespragg", map = 1451, x = 51.71, y = 38.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8276, title = "Taking Back Silithus", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
					{ t = "accept", quest = 8280, title = "Securing the Supply Lines", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8284, title = "The Twilight Mystery", npc = 15183, npcName = "Geologist Larksbane", map = 1451, x = 49.67, y = 37.46, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8318, title = "Secret Communication", npc = 15306, npcName = "Bor Wildmane", map = 1451, x = 48.57, y = 37.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Cenarion Hold", map = 1451, x = 48.68, y = 36.68, f = "e" },
				},
			},
			{
				note = "On the balcony of the building.",
				goals = {
					{ t = "accept", quest = 8304, title = "Dearest Natalia", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.19, y = 34.18, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "collect", quest = 5527, item = 22201, itemName = "Reliquary of Purity", oi = 1, map = 1451, x = 63.23, y = 55.35, f = "e" },
				},
			},
			{
				label = "Kill_Tortured_Enemies",
				along = true,
				note = "Careful, may spawn enemies when they die.",
				goals = {
					{ t = "kill", quest = 1125, npc = 12178, target = "Tortured Druid", count = 8, oi = 1, map = 1451, x = 60.8, y = 49.4, f = "e" },
					{ t = "kill", quest = 1125, npc = 12179, target = "Tortured Sentinel", count = 8, oi = 2, map = 1451, x = 60.8, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20461, itemName = "Brann Bronzebeard's Lost Letter" },
					{ t = "accept", quest = 8308, title = "Brann Bronzebeard's Lost Letter" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1125, title = "The Spirits of Southwind", npc = 13220, npcName = "Layo Starstrike", map = 1451, x = 81.87, y = 18.93, f = "e" },
				},
			},
			{
				label = "Collect_Stonelash_Scorpid_Stingers",
				along = true,
				note = "Scorpions.",
				goals = {
					{ t = "collect", quest = 8277, item = 20373, itemName = "Stonelash Scorpid Stinger", count = 8, oi = 1, map = 1451, x = 55.0, y = 34.6, f = "e" },
				},
			},
			{
				label = "Collect_Sand_Skitterer_Fangs",
				along = true,
				note = "Spiders.",
				goals = {
					{ t = "collect", quest = 8277, item = 20376, itemName = "Sand Skitterer Fang", count = 8, oi = 2, map = 1451, x = 55.0, y = 34.6, f = "e" },
				},
			},
			{
				label = "Kill_Dredge_Strikers",
				along = true,
				goals = {
					{ t = "kill", quest = 8280, npc = 11740, target = "Dredge Striker", count = 15, oi = 1, map = 1451, x = 55.0, y = 34.6, f = "e" },
				},
			},
			{
				note = "Walks around. Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 8277, title = "Deadly Desert Venom", npc = 15189, npcName = "Beetix Ficklespragg", map = 1451, x = 51.71, y = 38.58, f = "e" },
					{ t = "accept", quest = 8278, title = "Noggle's Last Hope", npc = 15189, npcName = "Beetix Ficklespragg", map = 1451, x = 51.71, y = 38.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8280, title = "Securing the Supply Lines", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
					{ t = "accept", quest = 8281, title = "Stepping Up Security", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
				},
			},
			{
				note = "Blue-glowing stone pieces.",
				goals = {
					{ t = "collect", quest = 8284, item = 20378, itemName = "Twilight Tablet Fragment", count = 8, oi = 1, map = 1451, x = 26.4, y = 15.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8284, title = "The Twilight Mystery", npc = 15183, npcName = "Geologist Larksbane", map = 1451, x = 49.68, y = 37.46, f = "e" },
					{ t = "accept", quest = 8285, title = "The Deserter", npc = 15183, npcName = "Geologist Larksbane", map = 1451, x = 49.68, y = 37.46, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 8285, title = "The Deserter", npc = 15194, npcName = "Hermit Ortell", map = 1451, x = 67.19, y = 69.76, f = "e" },
					{ t = "accept", quest = 8279, title = "The Twilight Lexicon", npc = 15194, npcName = "Hermit Ortell", map = 1451, x = 67.19, y = 69.76, f = "e" },
				},
			},
			{
				note = "Run around the insect area.",
				goals = {
					{ t = "complete", quest = 8304, title = "Dearest Natalia", note = "Question Rutgar", map = 1451, x = 41.28, y = 88.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 8304, title = "Dearest Natalia", note = "Question Frankal", map = 1451, x = 40.82, y = 88.85, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "collect", quest = 8279, item = 20395, itemName = "Twilight Lexicon - Chapter 2", oi = 2, map = 1451, x = 15.4, y = 86.2, f = "e" },
				},
			},
			{
				label = "Collect_Stonelash_Flayer_Stingers",
				along = true,
				note = "Grey scorpions.",
				goals = {
					{ t = "collect", quest = 8278, item = 20375, itemName = "Stonelash Flayer Stinger", count = 3, oi = 1, map = 1451, x = 36.2, y = 81.6, f = "e" },
				},
			},
			{
				label = "Collect_Rock_Stalker_Fangs",
				along = true,
				note = "Spiders.",
				goals = {
					{ t = "collect", quest = 8278, item = 20377, itemName = "Rock Stalker Fang", count = 3, oi = 3, map = 1451, x = 36.2, y = 81.6, f = "e" },
				},
			},
			{
				note = "Orc in a purple robe. Walks around. Spawns near here.",
				goals = {
					{ t = "collect", quest = 8279, item = 20396, itemName = "Twilight Lexicon - Chapter 3", oi = 3, map = 1451, x = 40.43, y = 41.99, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "collect", quest = 8279, item = 20394, itemName = "Twilight Lexicon - Chapter 1", oi = 1, map = 1451, x = 26.62, y = 36.33, f = "e" },
				},
			},
			{
				label = "Collect_Encrypted_Twilight_Texts",
				along = true,
				goals = {
					{ t = "collect", quest = 8318, item = 20404, itemName = "Encrypted Twilight Text", count = 10, oi = 1, map = 1451, x = 26.2, y = 35.6, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 8279, title = "The Twilight Lexicon", npc = 15194, npcName = "Hermit Ortell", map = 1451, x = 67.19, y = 69.76, f = "e" },
					{ t = "accept", quest = 8287, title = "A Terrible Purpose", npc = 15194, npcName = "Hermit Ortell", map = 1451, x = 67.19, y = 69.76, f = "e" },
				},
			},
			{
				label = "Collect_Stonelash_Pincer_Stingers",
				along = true,
				note = "Yellow scorpions.",
				goals = {
					{ t = "collect", quest = 8278, item = 20374, itemName = "Stonelash Pincer Stinger", count = 3, oi = 2, map = 1451, x = 56.4, y = 60.2, f = "e" },
				},
			},
			{
				label = "Kill_Dredge_Crushers",
				along = true,
				note = "Worms.",
				goals = {
					{ t = "kill", quest = 8281, npc = 11741, target = "Dredge Crusher", count = 20, oi = 1, map = 1451, x = 56.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8281, title = "Stepping Up Security", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
				},
			},
			{
				note = "Walks around. Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 8278, title = "Noggle's Last Hope", npc = 15189, npcName = "Beetix Ficklespragg", map = 1451, x = 51.71, y = 38.58, f = "e" },
				},
			},
			{
				note = "On the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 8287, title = "A Terrible Purpose", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.19, y = 34.18, f = "e" },
					{ t = "turnin", quest = 8304, title = "Dearest Natalia", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.19, y = 34.18, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8318, title = "Secret Communication", npc = 15306, npcName = "Bor Wildmane", map = 1451, x = 48.58, y = 37.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5163, title = "Are We There, Yeti?", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.88, y = 37.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5527, title = "A Reliquary of Purity", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.68, y = 45.08, f = "e" },
				},
			},
			{
				note = "Run dungeons, if you prefer. Count will reduce as you grind.",
				goals = {
					{ t = "goto", text = "ding 60", map = 1448, x = 63.6, y = 9.6 },
				},
			},
		},
	})
end

