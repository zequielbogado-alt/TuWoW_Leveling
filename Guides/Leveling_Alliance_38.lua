-- TuWoW_Leveling — Guides/Leveling_Alliance_38.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-western-and-eastern-plaguelands-57-58-part-2",
		pack = "guides",
		title = "Western & Eastern Plaguelands (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-winterspring-58-59",
		author = "TuWoW & Zygor",
		minLevel = 57,
		maxLevel = 58,
		zone = 1455,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 5181, item = 12957, itemName = "Shattered Sword of Marduk", oi = 2, map = 1423, x = 46.86, y = 55.43, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "collect", quest = 5225, item = 13196, itemName = "Gahrron's Withering Cauldron Key", oi = 1, map = 1422, x = 62.78, y = 58.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5225, title = "Target: Gahrron's Withering", map = 1422, x = 62.56, y = 58.57, f = "e" },
					{ t = "accept", quest = 5226, title = "Return to Chillwind Camp", map = 1422, x = 62.56, y = 58.57, f = "e" },
				},
			},
			{
				label = "Kill_Diseased_Grizzlies",
				along = true,
				note = "Shared spawns with spiders.",
				goals = {
					{ t = "kill", quest = 4985, npc = 1816, target = "Diseased Grizzly", count = 8, oi = 1, map = 1422, x = 59.8, y = 60.2, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4985, title = "The Wildlife Suffers Too", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.72, y = 64.67, f = "e" },
					{ t = "accept", quest = 4986, title = "Glyphed Oaken Branch", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.72, y = 64.67, f = "e" },
				},
			},
			{
				note = "Inside the building. Appears on the crate.",
				goals = {
					{ t = "turnin", quest = 5904, title = "A Plague Upon Thee", map = 1422, x = 48.35, y = 32.0, f = "e" },
					{ t = "accept", quest = 6389, title = "A Plague Upon Thee", map = 1422, x = 48.35, y = 32.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6004, title = "Unfinished Business", npc = 11610, npcName = "Kirsta Deepshadow", map = 1422, x = 51.92, y = 28.06, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6004, npc = 1826, target = "Scarlet Mage", count = 2, oi = 3, map = 1422, x = 50.47, y = 41.12, f = "e" },
					{ t = "kill", quest = 6004, npc = 1833, target = "Scarlet Knight", count = 2, oi = 4, map = 1422, x = 50.47, y = 41.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6004, npc = 10605, target = "Scarlet Medic", count = 2, oi = 1, map = 1422, x = 51.6, y = 44.6, f = "e" },
					{ t = "kill", quest = 6004, npc = 1831, target = "Scarlet Hunter", count = 2, oi = 2, map = 1422, x = 51.6, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6004, title = "Unfinished Business", npc = 11610, npcName = "Kirsta Deepshadow", map = 1422, x = 51.92, y = 28.06, f = "e" },
					{ t = "accept", quest = 6023, title = "Unfinished Business", npc = 11610, npcName = "Kirsta Deepshadow", map = 1422, x = 51.92, y = 28.06, f = "e" },
				},
			},
			{
				note = "Run around the mountain.",
				goals = {
					{ t = "kill", quest = 6023, npc = 11613, target = "Huntsman Radley", oi = 1, map = 1422, x = 57.83, y = 36.09, f = "e" },
				},
			},
			{
				note = "Walks around. Inside and outside the tower. Wait for him to come outside.",
				goals = {
					{ t = "kill", quest = 6023, npc = 11611, target = "Cavalier Durgen", oi = 2, map = 1422, x = 54.71, y = 23.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6023, title = "Unfinished Business", npc = 11610, npcName = "Kirsta Deepshadow", map = 1422, x = 51.92, y = 28.06, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5181, title = "Villains of Darrowshire", npc = 11063, npcName = "Carlin Redpath", map = 1423, x = 71.7, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6389, title = "A Plague Upon Thee", npc = 11616, npcName = "Nathaniel Dumah", map = 1422, x = 43.42, y = 84.83, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5226, title = "Return to Chillwind Camp", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.97, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5237, title = "Mission Accomplished!", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 7312, npcName = "Dink", map = 1455, x = 27.16, y = 8.56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8275, title = "Taking Back Silithus", npc = 15187, npcName = "Cenarion Emissary Jademoon", map = 1455, x = 58.54, y = 47.32, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 5114, npcName = "Bilban Tosslespanner", map = 1455, x = 65.9, y = 88.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 5117, npcName = "Regnus Thundergranite", map = 1455, x = 69.87, y = 82.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 5167, npcName = "Fenthwick", map = 1455, x = 65.9, y = 88.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 5172, npcName = "Briarthorn", map = 1455, x = 50.35, y = 5.66, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6382, npcName = "Jubahl Corpseseeker", map = 1455, x = 50.35, y = 5.66, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5148, npcName = "Beldruk Doombrow", map = 1455, x = 24.54, y = 4.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 5143, npcName = "Toldren Deepiron", map = 1455, x = 25.21, y = 10.74, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "goto", text = "Train Ram Riding", map = 1426, x = 63.94, y = 50.1 },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "goto", text = "Train Mechanostrider Piloting", map = 1426, x = 49.15, y = 48.13 },
				},
			},
			{
				note = "Walk into the portal.",
				goals = {
					{ t = "complete", quest = 6186, title = "The Blightcaller Cometh", note = "Enter the Deeprun Tram", map = 1455, x = 76.86, y = 51.19, f = "e" },
				},
			},
			{
				note = "Ride the tram. Walk into the portal.",
				goals = {
					{ t = "complete", quest = 6186, title = "The Blightcaller Cometh", note = "Enter Stormwind City" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter Stormwind Keep", map = 1453, x = 73.07, y = 46.69 },
					{ t = "turnin", quest = 6186, title = "The Blightcaller Cometh", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.15, y = 38.32, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", text = "Train Horse Riding", map = 1429, x = 84.32, y = 64.87 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-winterspring-58-59",
		pack = "guides",
		title = "Winterspring",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-silithus-59-60",
		author = "TuWoW & Zygor",
		minLevel = 58,
		maxLevel = 59,
		zone = 1452,
		version = 1,
		steps = {
			{
				note = "Taming a temporary pet soon. Learning Claw (Rank 8).",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 4808, title = "Felnok Steelspring", note = "Stable Your Pet", map = 1452, x = 60.39, y = 37.92, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on a Winterspring Screecher. White owls. Kill enemies nearby.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 4808, title = "Felnok Steelspring", note = "Learn the Claw (Rank 8) Pet Ability", map = 1452, x = 57.8, y = 26.4, f = "e" },
				},
			},
			{
				note = "Abandon your temporary pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 4808, title = "Felnok Steelspring", note = "Retrieve Your Pet", map = 1452, x = 60.39, y = 37.92, f = "e" },
				},
			},
			{
				note = "Use Beast Training ability.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 4808, title = "Felnok Steelspring", note = "Teach Claw (Rank 8) to Your Pet" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 4808, item = 12438, itemName = "Tinkee's Letter", map = 1452, x = 61.46, y = 36.97, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 4986, title = "Glyphed Oaken Branch", note = "bank Glyphed Oaken Branch##12663", map = 1452, x = 61.46, y = 36.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4808, title = "Felnok Steelspring", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.63, y = 38.61, f = "e" },
					{ t = "accept", quest = 4809, title = "Chillwind Horns", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.63, y = 38.61, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Everlook", map = 1452, x = 61.36, y = 38.83, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3783, title = "Are We There, Yeti?", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.88, y = 37.62, f = "e" },
				},
			},
			{
				note = "Yetis. Inside and outside the cave.",
				goals = {
					{ t = "collect", quest = 3783, item = 12366, itemName = "Thick Yeti Fur", count = 10, oi = 1, map = 1452, x = 67.65, y = 41.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1452, x = 67.65, y = 41.75 },
					{ t = "turnin", quest = 3783, title = "Are We There, Yeti?", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.88, y = 37.62, f = "e" },
					{ t = "accept", quest = 977, title = "Are We There, Yeti?", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.88, y = 37.62, f = "e" },
				},
			},
			{
				note = "Matriarchs and Patriarchs. Yetis. Inside and outside the cave.",
				goals = {
					{ t = "collect", quest = 977, item = 12367, itemName = "Pristine Yeti Horn", count = 2, oi = 1, map = 1452, x = 67.65, y = 41.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1452, x = 67.65, y = 41.75 },
					{ t = "goto", text = "Run up and over the mountain", map = 1452, x = 65.83, y = 38.46 },
					{ t = "kill", quest = 8464, npc = 7439, target = "Winterfall Shaman", count = 8, oi = 1, map = 1452, x = 67.8, y = 37.8, f = "e" },
					{ t = "kill", quest = 8464, npc = 7440, target = "Winterfall Den Watcher", count = 8, oi = 2, map = 1452, x = 67.8, y = 37.8, f = "e" },
					{ t = "kill", quest = 8464, npc = 7438, target = "Winterfall Ursa", count = 8, oi = 3, map = 1452, x = 67.8, y = 37.8, f = "e" },
				},
			},
			{
				label = "Collect_Uncracked_Chillwind_Horns",
				along = true,
				note = "Chimaeras.",
				goals = {
					{ t = "collect", quest = 4809, item = 12444, itemName = "Uncracked Chillwind Horn", count = 8, oi = 1, map = 1452, x = 64.0, y = 30.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 977, title = "Are We There, Yeti?", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.88, y = 37.62, f = "e" },
					{ t = "accept", quest = 5163, title = "Are We There, Yeti?", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.88, y = 37.62, f = "e" },
				},
			},
			{
				note = "On Legacki.",
				goals = {
					{ t = "use", item = 12928, itemName = "Umi's Mechanical Yeti" },
					{ t = "complete", quest = 5163, title = "Are We There, Yeti?", note = "Scare Legacki", map = 1452, x = 61.54, y = 38.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4809, title = "Chillwind Horns", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.63, y = 38.61, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 4986, item = 12663, itemName = "Glyphed Oaken Branch", map = 1452, x = 61.46, y = 36.97, f = "e" },
					{ t = "collect", quest = 4084, item = 11173, itemName = "Irontree Heart", map = 1452, x = 61.46, y = 36.97, f = "e" },
					{ t = "collect", quest = 4084, item = 11172, itemName = "Silvery Claws", count = 11, map = 1452, x = 61.46, y = 36.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8464, title = "Winterfall Activity", npc = 11556, npcName = "Salfa", map = 1452, x = 27.74, y = 34.5, f = "e" },
					{ t = "turnin", quest = 8464, title = "Winterfall Activity", npc = 11556, npcName = "Salfa", map = 1452, x = 27.74, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Moonglade", map = 1450, x = 48.1, y = 67.34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7066, title = "Seed of Life", npc = 11832, npcName = "Keeper Remulos", map = 1450, x = 36.18, y = 41.79, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6762, title = "Rabine Saturna", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.68, y = 45.09, f = "e" },
					{ t = "accept", quest = 1124, title = "Wasteland", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.68, y = 45.09, f = "e" },
				},
			},
			{
				note = "Inside the building. Must have discovered Dire Maul dungeon earlier in the guide.",
				goals = {
					{ t = "goto", text = "Moonglade", map = 1450, x = 51.68, y = 45.09 },
				},
			},
			{
				note = "Inside the building. Must have discovered Dire Maul dungeon earlier in the guide.",
				goals = {
					{ t = "accept", quest = 5527, title = "A Reliquary of Purity", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.68, y = 45.09, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4084, title = "Silver Heart", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
					{ t = "accept", quest = 4005, title = "Aquementas", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
				},
			},
			{
				note = "Middle floor inside the building.",
				goals = {
					{ t = "turnin", quest = 4986, title = "Glyphed Oaken Branch", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.38, y = 8.43, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "skill", level = 75, skill = "Riding" },
				},
			},
			{
				note = "On Sprinkle.",
				goals = {
					{ t = "use", item = 12928, itemName = "Umi's Mechanical Yeti" },
					{ t = "complete", quest = 5163, title = "Are We There, Yeti?", note = "Scare Sprinkle", map = 1446, x = 51.06, y = 26.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 11617, itemName = "Eridan's Supplies" },
					{ t = "collect", quest = 4005, item = 11173, itemName = "Irontree Heart" },
					{ t = "collect", quest = 4005, item = 11172, itemName = "Silvery Claws", count = 11 },
					{ t = "collect", quest = 4005, item = 11169, itemName = "Book of Aquor" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run through the tunnel to enter Lost Rigger Cove", map = 1446, x = 68.62, y = 41.46 },
					{ t = "use", item = 11169, itemName = "Book of Aquor" },
					{ t = "collect", quest = 4005, item = 11522, itemName = "Silver Totem of Aquementas", oi = 1, map = 1446, x = 70.42, y = 49.9, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Run through the tunnel to leave Lost Rigger Cove", map = 1446, x = 69.63, y = 42.37 },
					{ t = "goto", text = "Enter the cave", map = 1449, x = 43.47, y = 6.79 },
					{ t = "turnin", quest = 4005, title = "Aquementas", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
					{ t = "accept", quest = 3961, title = "Linken's Adventure", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1449, x = 43.47, y = 6.79 },
					{ t = "turnin", quest = 3961, title = "Linken's Adventure", npc = 8737, npcName = "Linken", map = 1449, x = 44.66, y = 8.1, f = "e" },
				},
			},
			{
				note = "On Quixxil.",
				goals = {
					{ t = "use", item = 12928, itemName = "Umi's Mechanical Yeti" },
					{ t = "complete", quest = 5163, title = "Are We There, Yeti?", note = "Scare Quixxil", map = 1449, x = 43.67, y = 9.38, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-silithus-59-60",
		pack = "guides",
		title = "Silithus",
		category = "Leveling",
		faction = "Alliance",
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
					{ t = "turnin", quest = 8275, title = "Taking Back Silithus", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
					{ t = "accept", quest = 8280, title = "Securing the Supply Lines", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
				},
			},
			{
				note = "Top of the path.",
				goals = {
					{ t = "getfp", location = "Cenarion Hold", map = 1451, x = 50.58, y = 34.45, f = "e" },
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
					{ t = "goto", text = "ding 60", map = 1448, x = 62.4, y = 12.6 },
				},
			},
		},
	})
end

