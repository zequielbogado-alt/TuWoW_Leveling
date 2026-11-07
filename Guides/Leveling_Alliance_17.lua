-- TuWoW_Leveling — Guides/Leveling_Alliance_17.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-25-30",
		pack = "guides",
		title = "Levels (25-30) (Parte 1/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-25-30-part-2",
		author = "TuWoW & Zygor",
		minLevel = 25,
		maxLevel = 30,
		zone = 1437,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 294, title = "Ormer's Revenge (1)", npc = 1078, npcName = "Ormer Ironbraid", map = 1437, x = 38.1, y = 51.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 305, title = "In Search of The Excavation Team (1)", npc = 1076, npcName = "Merrin Rockweaver", map = 1437, x = 38.8, y = 52.3, f = "e" },
					{ t = "accept", quest = 306, title = "In Search of The Excavation Team (2)", npc = 1076, npcName = "Merrin Rockweaver", map = 1437, x = 38.8, y = 52.3, f = "e" },
					{ t = "accept", quest = 299, title = "Uncovering the Past", npc = 1077, npcName = "Prospector Whelgar", map = 1437, x = 38.8, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 294, target = "Mottled Raptor", count = 10, oi = 1, map = 1437, x = 29.1, y = 44.8, f = "e" },
					{ t = "kill", quest = 294, target = "Mottled Screecher", count = 10, oi = 2, map = 1437, x = 29.1, y = 44.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 294, title = "Ormer's Revenge (1)", npc = 1078, npcName = "Ormer Ironbraid", map = 1437, x = 38.1, y = 51.1, f = "e" },
					{ t = "accept", quest = 295, title = "Ormer's Revenge (2)", npc = 1078, npcName = "Ormer Ironbraid", map = 1437, x = 38.1, y = 51.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 295, target = "Mottled Scytheclaw", count = 10, oi = 1, map = 1437, x = 34.8, y = 45.4, f = "e" },
					{ t = "kill", quest = 295, target = "Mottled Razormaw", count = 10, oi = 2, map = 1437, x = 34.8, y = 45.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 295, title = "Ormer's Revenge (2)", npc = 1078, npcName = "Ormer Ironbraid", map = 1437, x = 38.1, y = 51.1, f = "e" },
					{ t = "accept", quest = 296, title = "Ormer's Revenge (3)", npc = 1078, npcName = "Ormer Ironbraid", map = 1437, x = 38.1, y = 51.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 299, title = "Uncovering the Past", npc = 1077, npcName = "Prospector Whelgar", map = 1437, x = 38.8, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 464, itemName = "Dragonmaw War Banner", count = 8, oi = 1, map = 1437, x = 42.9, y = 41.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 484, itemName = "Young Crocolisk Skin", count = 4, oi = 1, map = 1437, x = 52.4, y = 40.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 463, title = "The Greenwarden", npc = 1244, npcName = "Rethiel the Greenwarden", map = 1437, x = 56.3, y = 40.5, f = "e" },
					{ t = "accept", quest = 276, title = "Tramping Paws", npc = 1244, npcName = "Rethiel the Greenwarden", map = 1437, x = 56.3, y = 40.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 276, target = "Mosshide Gnoll", count = 15, oi = 1, map = 1437, x = 63.9, y = 61.8, f = "e" },
					{ t = "kill", quest = 276, target = "Mosshide Mongrel", count = 10, oi = 2, map = 1437, x = 63.9, y = 61.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 276, title = "Tramping Paws", npc = 1244, npcName = "Rethiel the Greenwarden", map = 1437, x = 56.3, y = 40.5, f = "e" },
					{ t = "accept", quest = 277, title = "Fire Taboo", npc = 1244, npcName = "Rethiel the Greenwarden", map = 1437, x = 56.3, y = 40.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 277, itemName = "Crude Flint", count = 9, oi = 1, map = 1437, x = 46.4, y = 35.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 277, title = "Fire Taboo", npc = 1244, npcName = "Rethiel the Greenwarden", map = 1437, x = 56.3, y = 40.5, f = "e" },
					{ t = "accept", quest = 275, title = "Blisters on The Land", npc = 1244, npcName = "Rethiel the Greenwarden", map = 1437, x = 56.3, y = 40.5, f = "e" },
				},
			},
			{
				note = "Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c",
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", map = 1453, x = 22.6, y = 56.1, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 9502, title = "Call of Water (1)", npc = 17219, npcName = "Sulaa", map = 1947, x = 32.3, y = 23.9, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 9502, title = "Call of Water (1)", npc = 17204, npcName = "Farseer Nobundo", map = 1947, x = 31.4, y = 27.7, f = "e" },
					{ t = "accept", quest = 9501, title = "Call of Water (2)", npc = 17204, npcName = "Farseer Nobundo", map = 1947, x = 31.4, y = 27.7, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 9501, title = "Call of Water (2)", npc = 17275, npcName = "Aqueous", map = 1942, x = 32.2, y = 16.3, f = "e" },
					{ t = "accept", quest = 9503, title = "Call of Water (3)", npc = 17275, npcName = "Aqueous", map = 1942, x = 32.2, y = 16.3, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 9503, itemName = "Foul Essence", count = 6, oi = 1, map = 1942, x = 32.9, y = 39.3, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 9503, title = "Call of Water (3)", npc = 17275, npcName = "Aqueous", map = 1942, x = 32.2, y = 16.3, f = "e" },
					{ t = "accept", quest = 9504, title = "Call of Water (4)", npc = 17275, npcName = "Aqueous", map = 1942, x = 32.2, y = 16.3, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 9504, itemName = "Filled Bota Bag", count = 1, oi = 1, map = 1440, x = 33.5, y = 67.4, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 9504, title = "Call of Water (4)", npc = 17275, npcName = "Aqueous", map = 1942, x = 32.2, y = 16.3, f = "e" },
					{ t = "accept", quest = 9508, title = "Call of Water (5)", npc = 17275, npcName = "Aqueous", map = 1942, x = 32.2, y = 16.3, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 9508, itemName = "Head of Tel'athion", count = 1, oi = 1, map = 1942, x = 25.6, y = 40.8, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 9508, title = "Call of Water (5)", npc = 17275, npcName = "Aqueous", map = 1942, x = 32.2, y = 16.3, f = "e" },
					{ t = "accept", quest = 9509, title = "Call of Water (6)", npc = 17275, npcName = "Aqueous", map = 1942, x = 32.2, y = 16.3, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 9509, title = "Call of Water (6)", npc = 17204, npcName = "Farseer Nobundo", map = 1947, x = 31.4, y = 27.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 279, title = "Claws from the Deep", npc = 1242, npcName = "Karl Boran", map = 1437, x = 8.3, y = 58.6, f = "e" },
					{ t = "accept", quest = 281, title = "Reclaiming Goods", npc = 1242, npcName = "Karl Boran", map = 1437, x = 8.3, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 484, title = "Young Crocolisk Skins", npc = 2094, npcName = "James Halloran", map = 1437, x = 8.5, y = 55.7, f = "e" },
					{ t = "accept", quest = 471, title = "Apprentice's Duties", npc = 2094, npcName = "James Halloran", map = 1437, x = 8.5, y = 55.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 464, title = "War Banners", npc = 2104, npcName = "Captain Stoutfist", map = 1437, x = 9.9, y = 57.5, f = "e" },
					{ t = "accept", quest = 465, title = "Nek'rosh's Gambit", npc = 2104, npcName = "Captain Stoutfist", map = 1437, x = 9.9, y = 57.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 306, title = "In Search of The Excavation Team (2)", npc = 2096, npcName = "Tarrel Rockweaver", map = 1437, x = 11.5, y = 52.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 281, title = "Reclaiming Goods", map = 1437, x = 13.5, y = 41.4, f = "e" },
					{ t = "accept", quest = 284, title = "The Search Continues", map = 1437, x = 13.5, y = 41.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 284, title = "The Search Continues", map = 1437, x = 13.6, y = 38.2, f = "e" },
					{ t = "accept", quest = 285, title = "Search More Hovels", map = 1437, x = 13.6, y = 38.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 285, title = "Search More Hovels", map = 1437, x = 13.9, y = 34.8, f = "e" },
					{ t = "accept", quest = 286, title = "Return the Statuette", map = 1437, x = 13.9, y = 34.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 275, target = "Fen Creeper", count = 8, oi = 1, map = 1437, x = 18.5, y = 27.3, f = "e" },
					{ t = "kill", target = "Giant Wetlands Crocolisks", count = 1, map = 1437, x = 18.5, y = 27.3, f = "e" },
					{ t = "collect", quest = 471, itemName = "Giant Crocolisk Skin", count = 6, oi = 1, map = 1437, x = 18.5, y = 27.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 470, itemName = "Sida's Bag", count = 1, oi = 1, map = 1437, x = 44.3, y = 25.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 275, title = "Blisters on The Land", npc = 1244, npcName = "Rethiel the Greenwarden", map = 1437, x = 56.3, y = 40.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 470, title = "Digging Through the Ooze", npc = 2111, npcName = "Sida", map = 1437, x = 11.8, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 471, title = "Apprentice's Duties", npc = 2094, npcName = "James Halloran", map = 1437, x = 8.5, y = 55.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 286, title = "Return the Statuette", npc = 1242, npcName = "Karl Boran", map = 1437, x = 8.3, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 128, title = "Blackrock Bounty", npc = 903, npcName = "Guard Howe", map = 1433, x = 31.5, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 34, itemName = "Bellygrub's Tusk", count = 1, oi = 1, map = 1433, x = 15.9, y = 49.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 34, title = "An Unwelcome Guest", npc = 342, npcName = "Martie Jainrose", map = 1433, x = 21.9, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 180, title = "Wanted: Lieutenant Fangore", map = 1433, x = 26.8, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Lakeshire", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 115, title = "Shadow Magic", npc = 382, npcName = "Marshal Marris", map = 1433, x = 33.5, y = 49.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 115, itemName = "Midnight Orb", count = 3, oi = 1, map = 1433, x = 67.0, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 91, itemName = "Shadowhide Pendant", count = 10, oi = 1, map = 1433, x = 71.7, y = 41.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 115, title = "Shadow Magic", npc = 382, npcName = "Marshal Marris", map = 1433, x = 33.5, y = 49.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 126, title = "Howling in the Hills", npc = 415, npcName = "Verner Osgood", map = 1433, x = 31.0, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 91, title = "Solomon's Law", npc = 900, npcName = "Bailiff Conacher", map = 1433, x = 30.0, y = 44.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 126, itemName = "Yowler's Paw", count = 1, oi = 1, map = 1433, x = 27.4, y = 21.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 128, target = "Blackrock Champion", count = 15, oi = 1, map = 1433, x = 32.9, y = 6.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 219, title = "Missing In Action", npc = 349, npcName = "Corporal Keeshan", map = 1433, x = 28.4, y = 12.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 219, title = "Missing In Action", npc = 382, npcName = "Marshal Marris", map = 1433, x = 33.5, y = 49.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 126, title = "Howling in the Hills", npc = 415, npcName = "Verner Osgood", map = 1433, x = 31.0, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 128, title = "Blackrock Bounty", npc = 903, npcName = "Guard Howe", map = 1433, x = 31.5, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 180, itemName = "Fangore's Paw", count = 1, oi = 1, map = 1433, x = 79.9, y = 37.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 180, title = "Wanted: Lieutenant Fangore", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 30.0, y = 44.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 101, title = "The Totem of Infliction", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.8, y = 45.3, f = "e" },
					{ t = "accept", quest = 66, title = "The Legend of Stalvan (1)", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.8, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Darkshire", map = 1431, x = 77.5, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 174, title = "Look To The Stars (1)", npc = 276, npcName = "Viktori Prism'Antras", map = 1431, x = 79.8, y = 48.1, f = "e" },
					{ t = "turnin", quest = 174, title = "Look To The Stars (1)", npc = 276, npcName = "Viktori Prism'Antras", map = 1431, x = 79.8, y = 48.1, f = "e" },
					{ t = "accept", quest = 175, title = "Look To The Stars (2)", npc = 276, npcName = "Viktori Prism'Antras", map = 1431, x = 79.8, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 173, title = "Worgen in the Woods (1)", npc = 663, npcName = "Calor", map = 1431, x = 75.7, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 164, title = "Deliveries to Sven", npc = 633, npcName = "Elaine Carevin", map = 1431, x = 75.3, y = 48.7, f = "e" },
					{ t = "accept", quest = 165, title = "The Hermit", npc = 633, npcName = "Elaine Carevin", map = 1431, x = 75.3, y = 48.7, f = "e" },
					{ t = "accept", quest = 163, title = "Raven Hill", npc = 633, npcName = "Elaine Carevin", map = 1431, x = 75.3, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 56, title = "The Night Watch (1)", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.5, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 66, title = "The Legend of Stalvan (1)", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.5, y = 46.8, f = "e" },
					{ t = "accept", quest = 67, title = "The Legend of Stalvan (2)", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.5, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Darkshire", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 67, title = "The Legend of Stalvan (2)", map = 1436, x = 41.5, y = 66.7, f = "e" },
					{ t = "accept", quest = 68, title = "The Legend of Stalvan (3)", map = 1436, x = 41.5, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 68, title = "The Legend of Stalvan (3)", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.5, y = 46.8, f = "e" },
					{ t = "accept", quest = 69, title = "The Legend of Stalvan (4)", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.5, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 69, title = "The Legend of Stalvan (4)", npc = 295, npcName = "Innkeeper Farley", map = 1429, x = 43.8, y = 65.8, f = "e" },
					{ t = "accept", quest = 70, title = "The Legend of Stalvan (5)", npc = 295, npcName = "Innkeeper Farley", map = 1429, x = 43.8, y = 65.8, f = "e" },
				},
			},
			{
				note = "Go upstairs in the inn to 44.3,65.8",
				goals = {
					{ t = "collect", quest = 70, itemName = "An Undelivered Letter", count = 1, oi = 1, map = 1429, x = 44.3, y = 65.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 70, title = "The Legend of Stalvan (5)", npc = 297, npcName = "Caretaker Folsom", map = 1453, x = 42.5, y = 72.4, f = "e" },
					{ t = "accept", quest = 72, title = "The Legend of Stalvan (6)", npc = 297, npcName = "Caretaker Folsom", map = 1453, x = 42.5, y = 72.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 72, title = "The Legend of Stalvan (6)", map = 1453, x = 42.5, y = 72.41, f = "e" },
					{ t = "accept", quest = 74, title = "The Legend of Stalvan (7)", map = 1453, x = 42.5, y = 72.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 74, title = "The Legend of Stalvan (7)", npc = 294, npcName = "Marshal Haggard", map = 1429, x = 84.6, y = 69.4, f = "e" },
					{ t = "accept", quest = 75, title = "The Legend of Stalvan (8)", npc = 294, npcName = "Marshal Haggard", map = 1429, x = 84.6, y = 69.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 75, itemName = "A Faded Journal Page", count = 1, oi = 1, map = 1429, x = 85.7, y = 69.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 75, title = "The Legend of Stalvan (8)", npc = 294, npcName = "Marshal Haggard", map = 1429, x = 84.6, y = 69.4, f = "e" },
					{ t = "accept", quest = 78, title = "The Legend of Stalvan (9)", npc = 294, npcName = "Marshal Haggard", map = 1429, x = 84.6, y = 69.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 78, title = "The Legend of Stalvan (9)", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 74.1, y = 44.7, f = "e" },
					{ t = "accept", quest = 79, title = "The Legend of Stalvan (10)", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 74.1, y = 44.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 79, title = "The Legend of Stalvan (10)", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.5, y = 46.8, f = "e" },
					{ t = "accept", quest = 80, title = "The Legend of Stalvan (11)", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.5, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 80, title = "The Legend of Stalvan (11)", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.5, y = 46.8, f = "e" },
					{ t = "accept", quest = 97, title = "The Legend of Stalvan (12)", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.5, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 97, title = "The Legend of Stalvan (12)", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.5, y = 46.8, f = "e" },
					{ t = "accept", quest = 98, title = "The Legend of Stalvan (13)", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.5, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1431, x = 70.2, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 173, target = "Nightbane Shadow Weaver", count = 6, oi = 1, map = 1431, x = 66.0, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 173, title = "Worgen in the Woods (1)", npc = 663, npcName = "Calor", map = 1431, x = 75.7, y = 47.6, f = "e" },
					{ t = "accept", quest = 221, title = "Worgen in the Woods (2)", npc = 663, npcName = "Calor", map = 1431, x = 75.7, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 221, target = "Nightbane Dark Runner", count = 12, oi = 1, map = 1431, x = 66.0, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 221, title = "Worgen in the Woods (2)", npc = 663, npcName = "Calor", map = 1431, x = 75.7, y = 47.6, f = "e" },
					{ t = "accept", quest = 222, title = "Worgen in the Woods (3)", npc = 663, npcName = "Calor", map = 1431, x = 75.7, y = 47.6, f = "e" },
				},
			},
		},
	})
end

