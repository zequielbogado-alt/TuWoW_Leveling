-- TuWoW_Leveling — Guides/Leveling_Horde_06.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-orc-and-troll-starter-1-13",
		pack = "guides",
		title = "Orc & Troll Starter (Parte 1/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-orc-and-troll-starter-1-13-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1411,
		version = 1,
		races = { "Orc", "Troll" },
		steps = {
			{
				goals = {
					{ t = "accept", quest = 4641, title = "Your Place in the World", npc = 10176, npcName = "Kaltunk", map = 1411, x = 43.29, y = 68.53, f = "e" },
				},
			},
			{
				note = "Loot items worth at least 10 copper to sell. Allows training an ability early. Increases leveling speed.",
				only = { classes = { "WARRIOR", "SHAMAN", "WARLOCK" } },
				goals = {
					{ t = "complete", quest = 4641, title = "Your Place in the World", note = "Click to Continue", map = 1411, x = 43.8, y = 70.4, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR", "SHAMAN", "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 3158, npcName = "Duokna", map = 1411, x = 42.58, y = 67.34, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3153, npcName = "Frang", map = 1411, x = 42.89, y = 69.43, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3157, npcName = "Shikrik", map = 1411, x = 42.39, y = 69.0, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1485, title = "Vile Familiars", npc = 5765, npcName = "Ruzan", map = 1411, x = 42.59, y = 69.0, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "turnin", quest = 4641, title = "Your Place in the World", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e" },
					{ t = "accept", quest = 788, title = "Cutting Teeth", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3156, npcName = "Nartok", map = 1411, x = 40.65, y = 68.51, f = "e" },
				},
			},
			{
				label = "Kill_Mottled_Boars",
				along = true,
				goals = {
					{ t = "kill", quest = 788, npc = 3098, target = "Mottled Boar", count = 10, oi = 1, map = 1411, x = 44.36, y = 64.91, f = "e" },
				},
			},
			{
				label = "Collect_Vile_Familiar_Heads",
				note = "Avoid going inside the cave, if possible. Next step outside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1485, item = 6487, itemName = "Vile Familiar Head", count = 6, oi = 1, map = 1411, x = 45.8, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 790, title = "Sarkoth", npc = 3287, npcName = "Hana'zua", map = 1411, x = 40.6, y = 62.59, f = "e" },
				},
			},
			{
				note = "Black scorpion. Walks around.",
				goals = {
					{ t = "collect", quest = 790, item = 4905, itemName = "Sarkoth's Mangled Claw", oi = 1, map = 1411, x = 40.6, y = 67.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 790, title = "Sarkoth", npc = 3287, npcName = "Hana'zua", map = 1411, x = 40.6, y = 62.59, f = "e" },
					{ t = "accept", quest = 804, title = "Sarkoth", npc = 3287, npcName = "Hana'zua", map = 1411, x = 40.6, y = 62.59, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1485, title = "Vile Familiars", npc = 5765, npcName = "Ruzan", map = 1411, x = 42.59, y = 69.0, f = "e" },
					{ t = "accept", quest = 1499, title = "Vile Familiars", npc = 5765, npcName = "Ruzan", map = 1411, x = 42.59, y = 69.0, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1499, title = "Vile Familiars", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.85, y = 69.15, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "turnin", quest = 788, title = "Cutting Teeth", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e" },
					{ t = "turnin", quest = 804, title = "Sarkoth", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e" },
					{ t = "accept", quest = 789, title = "Sting of the Scorpid", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e" },
					{ t = "accept", quest = 2383, title = "Simple Parchment", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e", only = { races = { "Orc" }, classes = { "WARRIOR" } } },
					{ t = "accept", quest = 3089, title = "Rune-Inscribed Parchment", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e", only = { races = { "Orc" }, classes = { "SHAMAN" } } },
					{ t = "accept", quest = 3088, title = "Encrypted Parchment", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e", only = { races = { "Orc" }, classes = { "ROGUE" } } },
					{ t = "accept", quest = 3087, title = "Etched Parchment", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e", only = { races = { "Orc" }, classes = { "HUNTER" } } },
					{ t = "accept", quest = 3090, title = "Tainted Parchment", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e", only = { races = { "Orc" }, classes = { "WARLOCK" } } },
					{ t = "accept", quest = 3065, title = "Simple Tablet", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e", only = { races = { "Troll" }, classes = { "WARRIOR" } } },
					{ t = "accept", quest = 3082, title = "Etched Tablet", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e", only = { races = { "Troll" }, classes = { "HUNTER" } } },
					{ t = "accept", quest = 3083, title = "Encrypted Tablet", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e", only = { races = { "Troll" }, classes = { "ROGUE" } } },
					{ t = "accept", quest = 3085, title = "Hallowed Tablet", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e", only = { races = { "Troll" }, classes = { "PRIEST" } } },
					{ t = "accept", quest = 3084, title = "Rune-Inscribed Tablet", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e", only = { races = { "Troll" }, classes = { "SHAMAN" } } },
					{ t = "accept", quest = 3086, title = "Glyphic Tablet", npc = 3143, npcName = "Gornek", map = 1411, x = 42.06, y = 68.33, f = "e", only = { races = { "Troll" }, classes = { "MAGE" } } },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 3088, title = "Encrypted Parchment", npc = 3155, npcName = "Rwag", map = 1411, x = 41.28, y = 68.0, f = "e", only = { races = { "Orc" } } },
					{ t = "turnin", quest = 3083, title = "Encrypted Tablet", npc = 3155, npcName = "Rwag", map = 1411, x = 41.28, y = 68.0, f = "e", only = { races = { "Troll" } } },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3155, npcName = "Rwag", map = 1411, x = 41.28, y = 68.0, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 3090, title = "Tainted Parchment", npc = 3156, npcName = "Nartok", map = 1411, x = 40.65, y = 68.51, f = "e", only = { races = { "Orc" } } },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3156, npcName = "Nartok", map = 1411, x = 40.65, y = 68.51, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 12776, npcName = "Hraug", map = 1411, x = 40.56, y = 68.43, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1411, x = 42.27, y = 68.42 },
					{ t = "accept", quest = 4402, title = "Galgar's Cactus Apple Surprise", npc = 9796, npcName = "Galgar", map = 1411, x = 42.73, y = 67.24, f = "e" },
				},
			},
			{
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 3085, title = "Hallowed Tablet", npc = 3707, npcName = "Ken'jai", map = 1411, x = 42.36, y = 68.82, f = "e" },
				},
			},
			{
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 3707, npcName = "Ken'jai", map = 1411, x = 42.36, y = 68.82, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 3089, title = "Rune-Inscribed Parchment", npc = 3157, npcName = "Shikrik", map = 1411, x = 42.39, y = 69.0, f = "e", only = { races = { "Orc" } } },
					{ t = "turnin", quest = 3084, title = "Rune-Inscribed Tablet", npc = 3157, npcName = "Shikrik", map = 1411, x = 42.39, y = 69.0, f = "e", only = { races = { "Troll" } } },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3157, npcName = "Shikrik", map = 1411, x = 42.39, y = 69.0, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 3086, title = "Glyphic Tablet", npc = 5884, npcName = "Mai'ah", map = 1411, x = 42.51, y = 69.04, f = "e", only = { races = { "Troll" } } },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5884, npcName = "Mai'ah", map = 1411, x = 42.51, y = 69.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 792, title = "Vile Familiars", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.85, y = 69.14, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 2383, title = "Simple Parchment", npc = 3153, npcName = "Frang", map = 1411, x = 42.89, y = 69.43, f = "e", only = { races = { "Orc" } } },
					{ t = "turnin", quest = 3065, title = "Simple Tablet", npc = 3153, npcName = "Frang", map = 1411, x = 42.89, y = 69.43, f = "e", only = { races = { "Troll" } } },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3153, npcName = "Frang", map = 1411, x = 42.89, y = 69.43, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 3087, title = "Etched Parchment", npc = 3154, npcName = "Jen'shan", map = 1411, x = 42.84, y = 69.32, f = "e", only = { races = { "Orc" } } },
					{ t = "turnin", quest = 3082, title = "Etched Tablet", npc = 3154, npcName = "Jen'shan", map = 1411, x = 42.84, y = 69.32, f = "e", only = { races = { "Troll" } } },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3154, npcName = "Jen'shan", map = 1411, x = 42.84, y = 69.32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5441, title = "Lazy Peons", npc = 11378, npcName = "Foreman Thazz'ril", map = 1411, x = 44.62, y = 68.64, f = "e" },
				},
			},
			{
				note = "Avoid going inside the cave, if possible. Next step outside the cave.",
				goals = {
					{ t = "kill", quest = 792, npc = 3101, target = "Vile Familiar", count = 12, oi = 1, map = 1411, x = 44.73, y = 57.34, f = "e" },
				},
			},
			{
				label = "Collect_Scorpid_Worker_Tails",
				along = true,
				note = "Scorpions.",
				goals = {
					{ t = "collect", quest = 789, item = 4862, itemName = "Scorpid Worker Tail", count = 10, oi = 1, map = 1411, x = 43.41, y = 60.03, f = "e" },
				},
			},
			{
				label = "Awaken_Lazy_Peons",
				along = true,
				note = "On Lazy Peons. Sleeping orcs. Near trees. If not sleeping, wait or skip them.",
				goals = {
					{ t = "use", item = 16114, itemName = "Foreman's Blackjack" },
					{ t = "complete", quest = 5441, title = "Lazy Peons", note = "Awaken #5# Lazy Peons", map = 1411, x = 45.4, y = 65.8, f = "e" },
				},
			},
			{
				label = "Collect_Cactus_Apples",
				along = true,
				note = "Cactuses with red fruit.",
				goals = {
					{ t = "collect", quest = 4402, item = 11583, itemName = "Cactus Apple", count = 10, oi = 1, map = 1411, x = 43.37, y = 61.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4402, title = "Galgar's Cactus Apple Surprise", npc = 9796, npcName = "Galgar", map = 1411, x = 42.73, y = 67.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Skinning" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Herbalism" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Mining" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "turnin", quest = 789, title = "Sting of the Scorpid", npc = 3143, npcName = "Gornek", map = 1411, x = 42.05, y = 68.32, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3156, npcName = "Nartok", map = 1411, x = 40.65, y = 68.51, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 12776, npcName = "Hraug", map = 1411, x = 40.56, y = 68.43, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3155, npcName = "Rwag", map = 1411, x = 41.28, y = 68.0, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 3707, npcName = "Ken'jai", map = 1411, x = 42.36, y = 68.81, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 1516, title = "Call of Earth", npc = 5887, npcName = "Canaga Earthcaller", map = 1411, x = 42.41, y = 69.17, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3157, npcName = "Shikrik", map = 1411, x = 42.39, y = 69.0, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5884, npcName = "Mai'ah", map = 1411, x = 42.51, y = 69.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1411, x = 42.27, y = 68.42 },
					{ t = "turnin", quest = 792, title = "Vile Familiars", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.85, y = 69.15, f = "e" },
					{ t = "accept", quest = 794, title = "Burning Blade Medallion", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.85, y = 69.15, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3153, npcName = "Frang", map = 1411, x = 42.89, y = 69.43, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3154, npcName = "Jen'shan", map = 1411, x = 42.84, y = 69.32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 7005, itemName = "Skinning Knife", map = 1411, x = 42.59, y = 67.34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", item = 2901, itemName = "Mining Pick", map = 1411, x = 42.59, y = 67.34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5441, title = "Lazy Peons", npc = 11378, npcName = "Foreman Thazz'ril", map = 1411, x = 44.62, y = 68.64, f = "e" },
					{ t = "accept", quest = 6394, title = "Thazz'ril's Pick", npc = 11378, npcName = "Foreman Thazz'ril", map = 1411, x = 44.62, y = 68.64, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1411, x = 45.34, y = 56.36 },
					{ t = "collect", quest = 6394, item = 16332, itemName = "Thazz'ril's Pick", oi = 1, map = 1411, x = 43.73, y = 53.79, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1411, x = 44.76, y = 54.54 },
					{ t = "collect", quest = 794, item = 4859, itemName = "Burning Blade Medallion", oi = 1, map = 1411, x = 42.71, y = 52.95, f = "e" },
				},
			},
			{
				label = "Collect_Felstalker_Hoofs_Shaman",
				along = true,
				note = "Demon dogs. Inside the cave. notinsticky",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1516, item = 6640, itemName = "Felstalker Hoof", count = 2, oi = 1, map = 1411, x = 45.34, y = 56.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "hearth", location = "Valley of Trials" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 794, title = "Burning Blade Medallion", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.85, y = 69.15, f = "e" },
					{ t = "accept", quest = 805, title = "Report to Sen'jin Village", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.85, y = 69.15, f = "e" },
				},
			},
			{
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 5649, title = "In Favor of Spirituality", npc = 3707, npcName = "Ken'jai", map = 1411, x = 42.36, y = 68.81, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1516, title = "Call of Earth", npc = 5887, npcName = "Canaga Earthcaller", map = 1411, x = 42.41, y = 69.17, f = "e" },
					{ t = "accept", quest = 1517, title = "Call of Earth", npc = 5887, npcName = "Canaga Earthcaller", map = 1411, x = 42.41, y = 69.17, f = "e" },
				},
			},
			{
				note = "Top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1411, x = 41.56, y = 73.28 },
					{ t = "use", item = 6635, itemName = "Earth Sapta" },
					{ t = "turnin", quest = 1517, title = "Call of Earth", npc = 5891, npcName = "Minor Manifestation of Earth", map = 1411, x = 44.03, y = 76.2, f = "e" },
					{ t = "accept", quest = 1518, title = "Call of Earth", npc = 5891, npcName = "Minor Manifestation of Earth", map = 1411, x = 44.03, y = 76.2, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1518, title = "Call of Earth", npc = 5887, npcName = "Canaga Earthcaller", map = 1411, x = 42.41, y = 69.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6394, title = "Thazz'ril's Pick", npc = 11378, npcName = "Foreman Thazz'ril", map = 1411, x = 44.62, y = 68.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2161, title = "A Peon's Burden", npc = 6786, npcName = "Ukor", map = 1411, x = 52.06, y = 68.31, f = "e" },
				},
			},
			{
				note = "Walks around. Multiple locations.",
				goals = {
					{ t = "accept", quest = 786, title = "Thwarting Kolkar Aggression", npc = 3140, npcName = "Lar Prowltusk", map = 1411, x = 54.19, y = 73.29, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 817, title = "Practical Prey", npc = 3194, npcName = "Vel'rin Fang", map = 1411, x = 55.96, y = 73.92, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 805, title = "Report to Sen'jin Village", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.95, y = 74.72, f = "e" },
					{ t = "accept", quest = 808, title = "Minshina's Skull", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.95, y = 74.72, f = "e" },
					{ t = "accept", quest = 826, title = "Zalazane", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.95, y = 74.72, f = "e" },
					{ t = "accept", quest = 823, title = "Report to Orgnil", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.95, y = 74.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 818, title = "A Solvent Spirit", npc = 3304, npcName = "Master Vornal", map = 1411, x = 55.94, y = 74.4, f = "e" },
				},
			},
			{
				note = "Lobsters. Along the beach.",
				goals = {
					{ t = "collect", quest = 818, item = 4887, itemName = "Intact Makrura Eye", count = 4, oi = 1, map = 1411, x = 60.2, y = 70.8, f = "e" },
				},
			},
			{
				label = "Collect_Crawler_Mucus",
				along = true,
				note = "Crabs. Along the beach. notinsticky",
				goals = {
					{ t = "collect", quest = 818, item = 4888, itemName = "Crawler Mucus", count = 8, oi = 2, map = 1411, x = 60.2, y = 70.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1411, x = 50.85, y = 79.14 },
					{ t = "complete", quest = 786, title = "Thwarting Kolkar Aggression", note = "Destroy the Attack Plan: Valley of Trials", map = 1411, x = 49.82, y = 81.28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 786, title = "Thwarting Kolkar Aggression", note = "Destroy the Attack Plan: Sen'jin Village", map = 1411, x = 47.66, y = 77.34, f = "e" },
				},
			},
			{
				note = "Follow the path around.",
				goals = {
					{ t = "complete", quest = 786, title = "Thwarting Kolkar Aggression", note = "Destroy the Attack Plan: Orgrimmar", map = 1411, x = 46.23, y = 78.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 818, title = "A Solvent Spirit", npc = 3304, npcName = "Master Vornal", map = 1411, x = 55.94, y = 74.4, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5880, npcName = "Un'Thuwa", map = 1411, x = 56.31, y = 75.11, f = "e" },
				},
			},
			{
				note = "Walks around. Multiple locations.",
				goals = {
					{ t = "turnin", quest = 786, title = "Thwarting Kolkar Aggression", npc = 3140, npcName = "Lar Prowltusk", map = 1411, x = 54.19, y = 73.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 823, title = "Report to Orgnil", npc = 3142, npcName = "Orgnil Soulscar", map = 1411, x = 52.25, y = 43.15, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 784, title = "Vanquish the Betrayers", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.95, y = 43.5, f = "e" },
					{ t = "accept", quest = 837, title = "Encroachment", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.95, y = 43.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3170, npcName = "Kaplak", map = 1411, x = 51.98, y = 43.69, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 3706, npcName = "Tai'jin", map = 1411, x = 54.26, y = 42.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5649, title = "In Favor of Spirituality", npc = 3706, npcName = "Tai'jin", map = 1411, x = 54.26, y = 42.93, f = "e" },
					{ t = "accept", quest = 5648, title = "Garments of Spirituality", npc = 3706, npcName = "Tai'jin", map = 1411, x = 54.26, y = 42.93, f = "e" },
				},
			},
		},
	})
end

