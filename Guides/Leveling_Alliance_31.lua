-- TuWoW_Leveling — Guides/Leveling_Alliance_31.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-outland-60-62",
		pack = "guides",
		title = "Outland (60-62) (Parte 1/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-outland-60-62-part-2",
		author = "TuWoW & Zygor",
		minLevel = 60,
		maxLevel = 62,
		zone = 1419,
		version = 1,
		steps = {
			{
				note = "Go inside Nethergarde Keep at 63.5,17|goto Blasted Lands,63.5,17",
				goals = {
					{ t = "buy", npc = 3546, npcName = "Bernie Heisten", itemName = "Nethergarde Bitter", count = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10119, title = "Through the Dark Portal", npc = 16841, npcName = "Watch Commander Relthorn Netherwane", map = 1419, x = 58.3, y = 55.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10119, title = "Through the Dark Portal", npc = 19229, npcName = "Commander Duron", map = 1944, x = 87.3, y = 50.7, f = "e" },
					{ t = "accept", quest = 10288, title = "Arrival in Outland", npc = 19229, npcName = "Commander Duron", map = 1944, x = 87.3, y = 50.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10288, title = "Arrival in Outland", npc = 18931, npcName = "Amish Wildhammer", map = 1944, x = 87.4, y = 52.4, f = "e" },
					{ t = "accept", quest = 10140, title = "Journey to Honor Hold", npc = 18931, npcName = "Amish Wildhammer", map = 1944, x = 87.4, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10140, title = "Journey to Honor Hold", npc = 19308, npcName = "Marshal Isildor", map = 1944, x = 54.5, y = 62.8, f = "e" },
					{ t = "accept", quest = 10254, title = "Force Commander Danath", npc = 19308, npcName = "Marshal Isildor", map = 1944, x = 54.5, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Honor Hold", text = "Honor Hold", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10254, title = "Force Commander Danath", npc = 16819, npcName = "Force Commander Danath Trollbane", map = 1944, x = 56.6, y = 66.7, f = "e" },
					{ t = "accept", quest = 10141, title = "The Legion Reborn", npc = 16819, npcName = "Force Commander Danath Trollbane", map = 1944, x = 56.6, y = 66.7, f = "e" },
					{ t = "accept", quest = 10160, title = "Know your Enemy", npc = 16819, npcName = "Force Commander Danath Trollbane", map = 1944, x = 56.6, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10055, title = "Waste Not, Want Not", npc = 21209, npcName = "Dumphry", map = 1944, x = 51.2, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10160, title = "Know your Enemy", npc = 16820, npcName = "Lieutenant Amadi", map = 1944, x = 50.9, y = 60.2, f = "e" },
					{ t = "accept", quest = 10482, title = "Fel Orc Scavengers", npc = 16820, npcName = "Lieutenant Amadi", map = 1944, x = 50.9, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10141, title = "The Legion Reborn", npc = 19309, npcName = "Sergeant Altumus", map = 1944, x = 61.7, y = 60.8, f = "e" },
					{ t = "accept", quest = 10142, title = "The Path of Anguish", npc = 19309, npcName = "Sergeant Altumus", map = 1944, x = 61.7, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10055, itemName = "Salvaged Metal", count = 8, oi = 1, map = 1944, x = 60.4, y = 52.1, f = "e" },
					{ t = "collect", quest = 10055, itemName = "Salvaged Wood", count = 8, oi = 2, map = 1944, x = 60.4, y = 52.1, f = "e" },
					{ t = "kill", quest = 10482, target = "Bonechewer Orc", count = 20, oi = 1, map = 1944, x = 60.4, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10142, target = "Dreadcaller", count = 1, oi = 1, map = 1944, x = 65.8, y = 54.1, f = "e" },
					{ t = "kill", quest = 10142, target = "Flamewaker Imp", count = 4, oi = 2, map = 1944, x = 65.8, y = 54.1, f = "e" },
					{ t = "kill", quest = 10142, target = "Infernal Warbringer", count = 6, oi = 3, map = 1944, x = 65.8, y = 54.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10142, title = "The Path of Anguish", npc = 19309, npcName = "Sergeant Altumus", map = 1944, x = 61.7, y = 60.8, f = "e" },
					{ t = "accept", quest = 10143, title = "Expedition Point", npc = 19309, npcName = "Sergeant Altumus", map = 1944, x = 61.7, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10055, title = "Waste Not, Want Not", npc = 21209, npcName = "Dumphry", map = 1944, x = 51.2, y = 60.0, f = "e" },
					{ t = "accept", quest = 10078, title = "Laying Waste to the Unwanted", npc = 21209, npcName = "Dumphry", map = 1944, x = 51.2, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10482, title = "Fel Orc Scavengers", npc = 16820, npcName = "Lieutenant Amadi", map = 1944, x = 50.9, y = 60.2, f = "e" },
					{ t = "accept", quest = 10483, title = "Ill Omens", npc = 16820, npcName = "Lieutenant Amadi", map = 1944, x = 50.9, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10143, title = "Expedition Point", npc = 19310, npcName = "Forward Commander Kingston", map = 1944, x = 71.3, y = 62.8, f = "e" },
					{ t = "accept", quest = 10144, title = "Disrupt Their Reinforcements", npc = 19310, npcName = "Forward Commander Kingston", map = 1944, x = 71.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "the demons here", count = 1, map = 1944, x = 72.0, y = 59.6, f = "e" },
					{ t = "collect", quest = 10144, item = 28513, itemName = "Demonic Rune Stone", count = 4, map = 1944, x = 72.0, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 72.7, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "the demons here", count = 1, map = 1944, x = 71.7, y = 56.4, f = "e" },
					{ t = "collect", quest = 10144, item = 28513, itemName = "Demonic Rune Stone", count = 4, map = 1944, x = 71.7, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 71.4, y = 55.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10144, title = "Disrupt Their Reinforcements", npc = 19310, npcName = "Forward Commander Kingston", map = 1944, x = 71.3, y = 62.8, f = "e" },
					{ t = "accept", quest = 10146, title = "Mission: The Murketh and Shaadraz Gateways", npc = 19310, npcName = "Forward Commander Kingston", map = 1944, x = 71.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 19409, npcName = "Wing Commander Dabir'ee", map = 1944, x = 71.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10146, title = "Mission: The Murketh and Shaadraz Gateways", npc = 19310, npcName = "Forward Commander Kingston", map = 1944, x = 71.4, y = 62.7, f = "e" },
					{ t = "accept", quest = 10340, title = "Shatter Point", npc = 19310, npcName = "Forward Commander Kingston", map = 1944, x = 71.4, y = 62.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 19409, npcName = "Wing Commander Dabir'ee", map = 1944, x = 71.4, y = 62.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Shatter Point", text = "Shatter Point", map = 1944, x = 78.4, y = 34.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10340, title = "Shatter Point", npc = 20234, npcName = "Runetog Wildhammer", map = 1944, x = 78.4, y = 34.9, f = "e" },
					{ t = "accept", quest = 10344, title = "Wing Commander Gryphongar", npc = 20234, npcName = "Runetog Wildhammer", map = 1944, x = 78.4, y = 34.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10344, title = "Wing Commander Gryphongar", npc = 20232, npcName = "Wing Commander Gryphongar", map = 1944, x = 79.3, y = 33.9, f = "e" },
					{ t = "accept", quest = 10163, title = "Mission: The Abyssal Shelf", npc = 20232, npcName = "Wing Commander Gryphongar", map = 1944, x = 79.3, y = 33.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10163, target = "Gan'arg Peon", count = 20, oi = 1, map = 1944, x = 78.3, y = 34.5, f = "e" },
					{ t = "kill", quest = 10163, target = "Mo'arg Overseer", count = 5, oi = 2, map = 1944, x = 78.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10163, title = "Mission: The Abyssal Shelf", npc = 20232, npcName = "Wing Commander Gryphongar", map = 1944, x = 79.3, y = 33.9, f = "e" },
					{ t = "accept", quest = 10382, title = "Go to the Front", npc = 20232, npcName = "Wing Commander Gryphongar", map = 1944, x = 79.3, y = 33.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npcName = "Gryphoneer Windbellow", map = 1944, x = 78.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10382, title = "Go to the Front", npc = 20793, npcName = "Field Marshal Brock", map = 1944, x = 68.3, y = 28.6, f = "e" },
				},
			},
			{
				note = "Hearth to Honor Hold|goto Hellfire Peninsula,55.7,63.3,5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10058, title = "An Old Gift", npc = 16825, npcName = "Father Malgor Devidicus", map = 1944, x = 54.3, y = 63.4, f = "e" },
					{ t = "accept", quest = 9558, title = "The Longbeards", npc = 16826, npcName = "Sid Limbardi", map = 1944, x = 54.3, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10047, title = "The Path of Glory", npc = 16839, npcName = "Warp-Scryer Kryv", map = 1944, x = 56.7, y = 66.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10050, title = "Unyielding Souls", npc = 16827, npcName = "Honor Guard Wesilow", map = 1944, x = 50.9, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9355, title = "A Job for an Intelligent Man", npc = 16837, npcName = "Foreman Biggums", map = 1944, x = 52.0, y = 62.6, f = "e" },
					{ t = "accept", quest = 10079, title = "When This Mine's a-Rockin'", npc = 16837, npcName = "Foreman Biggums", map = 1944, x = 52.0, y = 62.6, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 54.9,62.9",
				goals = {
					{ t = "kill", quest = 10079, target = "Gan'arg Sapper", count = 12, oi = 1, map = 1944, x = 54.9, y = 62.9, f = "e" },
				},
			},
			{
				note = "Go outside the cave to 52,62.6",
				goals = {
					{ t = "turnin", quest = 10079, title = "When This Mine's a-Rockin'", npc = 16837, npcName = "Foreman Biggums", map = 1944, x = 52.0, y = 62.6, f = "e" },
					{ t = "accept", quest = 10099, title = "The Mastermind", npc = 16837, npcName = "Foreman Biggums", map = 1944, x = 52.0, y = 62.6, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 56.3,61.4",
				goals = {
					{ t = "kill", quest = 10099, target = "Z'kral", count = 1, oi = 1, map = 1944, x = 56.3, y = 61.4, f = "e" },
				},
			},
			{
				note = "Go outside the cave to 52,62.6",
				goals = {
					{ t = "turnin", quest = 10099, title = "The Mastermind", npc = 16837, npcName = "Foreman Biggums", map = 1944, x = 52.0, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 66.1, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 58.7, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 55.9, y = 46.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 53.5, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 52.8, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Bleeding Hollow orcs", count = 1, map = 1944, x = 65.8, y = 67.2, f = "e" },
					{ t = "collect", quest = 10483, itemName = "Cursed Talisman", count = 1, oi = 1, map = 1944, x = 65.8, y = 67.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10483, title = "Ill Omens", npc = 21133, npcName = "Corporal Ironridge", map = 1944, x = 71.0, y = 63.4, f = "e" },
					{ t = "accept", quest = 10484, title = "Cursed Talismans", npc = 21133, npcName = "Corporal Ironridge", map = 1944, x = 71.0, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10058, itemName = "Mysteries of the Light", count = 1, oi = 1, map = 1944, x = 55.0, y = 86.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10050, target = "Unyielding Sorcerer", count = 10, oi = 2, map = 1944, x = 58.0, y = 79.0, f = "e" },
					{ t = "kill", quest = 10050, target = "Unyielding Knight", count = 5, oi = 3, map = 1944, x = 58.0, y = 79.0, f = "e" },
					{ t = "kill", quest = 10050, target = "Unyielding Footman", count = 12, oi = 1, map = 1944, x = 58.0, y = 79.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10161, title = "In Case of Emergency...", npc = 19367, npcName = "\"Screaming\" Screed Luckheed", map = 1944, x = 49.2, y = 74.8, f = "e" },
					{ t = "accept", quest = 9349, title = "Ravager Egg Roundup", npc = 19344, npcName = "Legassi", map = 1944, x = 49.2, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Razorfury Ravagers", count = 1, map = 1944, x = 41.2, y = 84.4, f = "e" },
					{ t = "collect", quest = 9349, itemName = "Ravager Egg", count = 12, oi = 1, map = 1944, x = 41.2, y = 84.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9349, title = "Ravager Egg Roundup", npc = 19344, npcName = "Legassi", map = 1944, x = 49.2, y = 74.8, f = "e" },
					{ t = "accept", quest = 9361, title = "Helboar, the Other White Meat", npc = 19344, npcName = "Legassi", map = 1944, x = 49.2, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Helboars", count = 1, map = 1944, x = 50.2, y = 74.8, f = "e" },
					{ t = "collect", itemName = "Tainted Helboar Meat", count = 1, map = 1944, x = 50.2, y = 74.8, f = "e" },
					{ t = "collect", quest = 9361, itemName = "Purified Helboar Meat", count = 8, oi = 1, map = 1944, x = 50.2, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9361, title = "Helboar, the Other White Meat", npc = 19344, npcName = "Legassi", map = 1944, x = 49.2, y = 74.8, f = "e" },
					{ t = "accept", quest = 9356, title = "Smooth as Butter", npc = 19344, npcName = "Legassi", map = 1944, x = 49.2, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "vultures", count = 1, map = 1944, x = 58.1, y = 71.3, f = "e" },
					{ t = "collect", quest = 9356, itemName = "Plump Buzzard Wing", count = 12, oi = 1, map = 1944, x = 58.1, y = 71.3, f = "e" },
					{ t = "collect", quest = 10161, itemName = "Zeppelin Debris", count = 30, oi = 1, map = 1944, x = 58.1, y = 71.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10161, title = "In Case of Emergency...", npc = 19367, npcName = "\"Screaming\" Screed Luckheed", map = 1944, x = 49.2, y = 74.8, f = "e" },
					{ t = "accept", quest = 9351, title = "Voidwalkers Gone Wild", npc = 19367, npcName = "\"Screaming\" Screed Luckheed", map = 1944, x = 49.2, y = 74.8, f = "e" },
					{ t = "turnin", quest = 9356, title = "Smooth as Butter", npc = 19344, npcName = "Legassi", map = 1944, x = 49.2, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9355, target = "Marauding Crust Burster", count = 15, oi = 1, map = 1944, x = 47.8, y = 65.8, f = "e" },
					{ t = "kill", target = "Marauding Crustbusters", count = 1, map = 1944, x = 47.8, y = 65.8, f = "e" },
					{ t = "collect", itemName = "Eroded Leather Case", count = 1, map = 1944, x = 47.8, y = 65.8, f = "e" },
					{ t = "accept", quest = 9373, title = "Missing Missive", map = 1944, x = 47.8, y = 65.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9355, title = "A Job for an Intelligent Man", npc = 16837, npcName = "Foreman Biggums", map = 1944, x = 52.0, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10078, title = "Laying Waste to the Unwanted", npc = 21209, npcName = "Dumphry", map = 1944, x = 51.2, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10050, title = "Unyielding Souls", npc = 16827, npcName = "Honor Guard Wesilow", map = 1944, x = 50.9, y = 60.2, f = "e" },
					{ t = "accept", quest = 10057, title = "Looking to the Leadership", npc = 16827, npcName = "Honor Guard Wesilow", map = 1944, x = 50.9, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10058, title = "An Old Gift", npc = 16825, npcName = "Father Malgor Devidicus", map = 1944, x = 54.3, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10047, title = "The Path of Glory", npc = 16839, npcName = "Warp-Scryer Kryv", map = 1944, x = 56.7, y = 66.5, f = "e" },
					{ t = "accept", quest = 10093, title = "The Temple of Telhamat", npc = 16839, npcName = "Warp-Scryer Kryv", map = 1944, x = 56.7, y = 66.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9390, title = "In Search of Sedai", npc = 16834, npcName = "Anchorite Obadei", map = 1944, x = 23.1, y = 40.3, f = "e" },
					{ t = "accept", quest = 9399, title = "Cruel Taskmasters", npc = 16799, npcName = "Ikan", map = 1944, x = 23.1, y = 40.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9398, title = "Deadly Predators", npc = 16797, npcName = "Scout Vanura", map = 1944, x = 23.4, y = 39.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10093, title = "The Temple of Telhamat", npc = 16796, npcName = "Amaan the Wise", map = 1944, x = 23.4, y = 36.5, f = "e" },
					{ t = "accept", quest = 9426, title = "The Pools of Aggonar", npc = 16796, npcName = "Amaan the Wise", map = 1944, x = 23.4, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Temple of Telhamat", text = "Temple of Telhamat", f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Temple of Telhamat", text = "Temple of Telhamat", map = 1944, x = 25.2, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9390, title = "In Search of Sedai", map = 1944, x = 26.9, y = 37.4, f = "e" },
					{ t = "accept", quest = 9423, title = "Return to Obadei", map = 1944, x = 26.9, y = 37.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9423, title = "Return to Obadei", npc = 16834, npcName = "Anchorite Obadei", map = 1944, x = 23.1, y = 40.3, f = "e" },
					{ t = "accept", quest = 9424, title = "Makuru's Vengeance", npc = 16833, npcName = "Makuru", map = 1944, x = 23.1, y = 40.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Mag'har Grunts and Debilitated Mag'har Grunts", count = 1, map = 1944, x = 34.6, y = 34.7, f = "e" },
					{ t = "collect", quest = 9424, itemName = "Mag'har Ancestral Beads", count = 10, oi = 1, map = 1944, x = 34.6, y = 34.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9426, target = "Terrorfiend", count = 6, oi = 1, map = 1944, x = 38.9, y = 29.1, f = "e" },
					{ t = "kill", quest = 9426, target = "Blistering Rot", count = 6, oi = 2, map = 1944, x = 38.9, y = 29.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9424, title = "Makuru's Vengeance", npc = 16833, npcName = "Makuru", map = 1944, x = 23.1, y = 40.3, f = "e" },
					{ t = "accept", quest = 9543, title = "Atonement", npc = 16834, npcName = "Anchorite Obadei", map = 1944, x = 23.1, y = 40.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9543, title = "Atonement", npc = 16796, npcName = "Amaan the Wise", map = 1944, x = 23.4, y = 36.5, f = "e" },
					{ t = "accept", quest = 9430, title = "Sha'naar Relics", npc = 16796, npcName = "Amaan the Wise", map = 1944, x = 23.4, y = 36.5, f = "e" },
					{ t = "turnin", quest = 9426, title = "The Pools of Aggonar", npc = 16796, npcName = "Amaan the Wise", map = 1944, x = 23.4, y = 36.5, f = "e" },
					{ t = "accept", quest = 9427, title = "Cleansing the Waters", npc = 16796, npcName = "Amaan the Wise", map = 1944, x = 23.4, y = 36.5, f = "e" },
					{ t = "accept", quest = 10443, title = "Helping the Cenarion Post", npc = 16796, npcName = "Amaan the Wise", map = 1944, x = 23.4, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9383, title = "An Ambitious Plan", npc = 17006, npcName = "Elsaana", map = 1944, x = 23.2, y = 36.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 40.3, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9427, title = "Cleansing the Waters", npc = 16796, npcName = "Amaan the Wise", map = 1944, x = 23.4, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9373, title = "Missing Missive", npc = 16991, npcName = "Thiah Redmane", map = 1944, x = 15.7, y = 52.0, f = "e" },
					{ t = "turnin", quest = 10443, title = "Helping the Cenarion Post", npc = 16991, npcName = "Thiah Redmane", map = 1944, x = 15.7, y = 52.0, f = "e" },
					{ t = "accept", quest = 9372, title = "Demonic Contamination", npc = 16991, npcName = "Thiah Redmane", map = 1944, x = 15.7, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Hulking Helboars", count = 1, map = 1944, x = 18.4, y = 54.7, f = "e" },
					{ t = "collect", quest = 9372, itemName = "Helboar Blood Sample", count = 6, oi = 1, map = 1944, x = 18.4, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9372, title = "Demonic Contamination", npc = 16991, npcName = "Thiah Redmane", map = 1944, x = 15.7, y = 52.0, f = "e" },
					{ t = "accept", quest = 10255, title = "Testing the Antidote", npc = 16991, npcName = "Thiah Redmane", map = 1944, x = 15.7, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 25.0, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10255, title = "Testing the Antidote", npc = 16991, npcName = "Thiah Redmane", map = 1944, x = 15.7, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9399, target = "Illidari Taskmaster", count = 4, oi = 1, map = 1944, x = 15.1, y = 55.7, f = "e" },
					{ t = "collect", quest = 9430, itemName = "Sha'naar Relic", count = 10, oi = 1, map = 1944, x = 15.1, y = 55.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10403, title = "Naladu", npc = 20678, npcName = "Akoru the Firecaller", map = 1944, x = 15.6, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10403, title = "Naladu", npc = 19361, npcName = "Naladu", map = 1944, x = 16.3, y = 65.1, f = "e" },
					{ t = "accept", quest = 10367, title = "A Traitor Among Us", npc = 19361, npcName = "Naladu", map = 1944, x = 16.3, y = 65.1, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-outland-60-62-part-2",
		pack = "guides",
		title = "Outland (60-62) (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 60,
		maxLevel = 62,
		zone = 1419,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 10367, itemName = "Sha'naar Key", count = 1, oi = 1, map = 1944, x = 14.3, y = 63.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10367, title = "A Traitor Among Us", npc = 19361, npcName = "Naladu", map = 1944, x = 16.3, y = 65.1, f = "e" },
					{ t = "accept", quest = 10368, title = "The Dreghood Elders", npc = 19361, npcName = "Naladu", map = 1944, x = 16.3, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 20678, npcName = "Akoru the Firecaller", map = 1944, x = 15.6, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 20679, npcName = "Aylaan the Waterwaker", map = 1944, x = 13.0, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 20677, npcName = "Morod the Windstirrer", map = 1944, x = 13.1, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10368, title = "The Dreghood Elders", npc = 19361, npcName = "Naladu", map = 1944, x = 16.3, y = 65.1, f = "e" },
					{ t = "accept", quest = 10369, title = "Arzeth's Demise", npc = 19361, npcName = "Naladu", map = 1944, x = 16.3, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10369, target = "Arzeth the Powerless", count = 1, oi = 1, map = 1944, x = 14.4, y = 62.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10369, title = "Arzeth's Demise", npc = 19361, npcName = "Naladu", map = 1944, x = 16.3, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9558, title = "The Longbeards", npc = 16850, npcName = "Gremni Longbeard", map = 1944, x = 24.0, y = 72.1, f = "e" },
					{ t = "accept", quest = 9417, title = "The Arakkoa Threat", npc = 16850, npcName = "Gremni Longbeard", map = 1944, x = 24.0, y = 72.1, f = "e" },
					{ t = "accept", quest = 9385, title = "Rampaging Ravagers", npc = 16850, npcName = "Gremni Longbeard", map = 1944, x = 24.0, y = 72.1, f = "e" },
					{ t = "accept", quest = 9563, title = "Gaining Mirren's Trust", npc = 16851, npcName = "Mirren Longbeard", map = 1944, x = 24.0, y = 72.1, f = "e" },
					{ t = "turnin", quest = 9563, title = "Gaining Mirren's Trust", npc = 16851, npcName = "Mirren Longbeard", map = 1944, x = 24.0, y = 72.1, f = "e" },
					{ t = "accept", quest = 9420, title = "The Finest Down", npc = 16851, npcName = "Mirren Longbeard", map = 1944, x = 24.0, y = 72.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9417, target = "Haal'eshi Windwalker", count = 4, oi = 1, map = 1944, x = 25.6, y = 70.3, f = "e" },
					{ t = "kill", quest = 9417, target = "Haal'eshi Talonguard", count = 6, oi = 2, map = 1944, x = 25.6, y = 70.3, f = "e" },
					{ t = "collect", quest = 9420, itemName = "Kaliri Feather", count = 8, oi = 1, map = 1944, x = 25.6, y = 70.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 26.1, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Avruu's Orb", count = 1, map = 1944, x = 25.7, y = 75.1, f = "e" },
					{ t = "accept", quest = 9418, title = "Avruu's Orb", map = 1944, x = 25.7, y = 75.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9418, title = "Avruu's Orb", npc = 17085, npcName = "Aeranas", map = 1944, x = 29.0, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9417, title = "The Arakkoa Threat", npc = 16850, npcName = "Gremni Longbeard", map = 1944, x = 24.0, y = 72.1, f = "e" },
					{ t = "turnin", quest = 9420, title = "The Finest Down", npc = 16851, npcName = "Mirren Longbeard", map = 1944, x = 24.0, y = 72.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9385, target = "Quillfang Ravager", count = 10, oi = 1, map = 1944, x = 23.7, y = 69.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9385, title = "Rampaging Ravagers", npc = 16850, npcName = "Gremni Longbeard", map = 1944, x = 24.0, y = 72.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9398, target = "Stonescythe Whelp", count = 8, oi = 2, map = 1944, x = 26.9, y = 69.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9398, target = "Stonescythe Alpha", count = 4, oi = 1, map = 1944, x = 32.1, y = 59.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "voidwalkers", count = 1, map = 1944, x = 49.5, y = 81.8, f = "e" },
					{ t = "collect", quest = 9351, itemName = "Condensed Voidwalker Essence", count = 10, oi = 1, map = 1944, x = 49.5, y = 81.8, f = "e" },
					{ t = "collect", quest = 9383, itemName = "Glowing Sanctified Crystal", count = 1, oi = 1, map = 1944, x = 49.5, y = 81.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10057, target = "Arch Mage Xintor", count = 1, oi = 1, map = 1944, x = 53.6, y = 81.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10057, target = "Lieutenant Commander Thalvos", count = 1, oi = 2, map = 1944, x = 54.7, y = 83.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9351, title = "Voidwalkers Gone Wild", npc = 19367, npcName = "\"Screaming\" Screed Luckheed", map = 1944, x = 49.2, y = 74.8, f = "e" },
				},
			},
			{
				note = "Hearth to the Temple of Telhamat|goto Hellfire Peninsula,23.4,37.2,3|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9430, title = "Sha'naar Relics", npc = 16796, npcName = "Amaan the Wise", map = 1944, x = 23.4, y = 36.5, f = "e" },
					{ t = "accept", quest = 9545, title = "The Seer's Relic", npc = 16796, npcName = "Amaan the Wise", map = 1944, x = 23.4, y = 36.5, f = "e" },
					{ t = "turnin", quest = 9383, title = "An Ambitious Plan", npc = 17006, npcName = "Elsaana", map = 1944, x = 23.4, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9398, title = "Deadly Predators", npc = 16797, npcName = "Scout Vanura", map = 1944, x = 23.4, y = 39.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9399, title = "Cruel Taskmasters", npc = 16799, npcName = "Ikan", map = 1944, x = 23.1, y = 40.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 26.9, y = 37.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9545, title = "The Seer's Relic", npc = 16796, npcName = "Amaan the Wise", map = 1944, x = 23.4, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 62, f = "e" },
				},
			},
		},
	})
end

