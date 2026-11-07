-- TuWoW_Leveling — Guides/Leveling_Horde_07.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-troll-1-13",
		pack = "guides",
		title = "Troll (1-13) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-troll-1-13-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1411,
		version = 1,
		races = { "Troll" },
		steps = {
			{
				goals = {
					{ t = "accept", quest = 4641, title = "Your Place In The World", npc = 10176, npcName = "Kaltunk", map = 1411, x = 43.3, y = 68.5, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 42,68",
				goals = {
					{ t = "turnin", quest = 4641, title = "Your Place In The World", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
					{ t = "accept", quest = 788, title = "Cutting Teeth", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 788, target = "Mottled Boar", count = 10, oi = 1, map = 1411, x = 43.8, y = 70.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 792, title = "Vile Familiars (1)", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.8, y = 69.1, f = "e" },
				},
			},
			{
				note = "Go into the cave to 42.1,68.3",
				only = { races = { "Troll" }, classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 788, title = "Cutting Teeth", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
					{ t = "accept", quest = 789, title = "Sting of the Scorpid", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
					{ t = "accept", quest = 3086, title = "Glyphic Tablet", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
				},
			},
			{
				note = "Go into the cave to 42.1,68.3",
				only = { races = { "Troll" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 788, title = "Cutting Teeth", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
					{ t = "accept", quest = 789, title = "Sting of the Scorpid", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
					{ t = "accept", quest = 3065, title = "Simple Tablet", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
				},
			},
			{
				note = "Go into the cave to 42.1,68.3",
				only = { races = { "Troll" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 788, title = "Cutting Teeth", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
					{ t = "accept", quest = 789, title = "Sting of the Scorpid", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
					{ t = "accept", quest = 3084, title = "Rune-Inscribed Tablet", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
				},
			},
			{
				note = "Go into the cave to 42.1,68.3",
				only = { races = { "Troll" }, classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 788, title = "Cutting Teeth", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
					{ t = "accept", quest = 789, title = "Sting of the Scorpid", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
					{ t = "accept", quest = 3083, title = "Encrypted Tablet", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
				},
			},
			{
				note = "Go into the cave to 42.1,68.3",
				only = { races = { "Troll" }, classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 788, title = "Cutting Teeth", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
					{ t = "accept", quest = 789, title = "Sting of the Scorpid", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
					{ t = "accept", quest = 3085, title = "Hallowed Tablet", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
				},
			},
			{
				note = "Go into the cave to 42.1,68.3",
				only = { races = { "Troll" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 788, title = "Cutting Teeth", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
					{ t = "accept", quest = 789, title = "Sting of the Scorpid", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
					{ t = "accept", quest = 3082, title = "Etched Tablet", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 3086, title = "Glyphic Tablet", npc = 5884, npcName = "Mai'ah", map = 1411, x = 42.5, y = 69.0, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 3065, title = "Simple Tablet", npc = 3153, npcName = "Frang", map = 1411, x = 42.9, y = 69.4, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 3084, title = "Rune-Inscribed Tablet", npc = 3157, npcName = "Shikrik", map = 1411, x = 42.4, y = 69.0, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 3083, title = "Encrypted Tablet", npc = 3155, npcName = "Rwag", map = 1411, x = 41.3, y = 68.0, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 3085, title = "Hallowed Tablet", npc = 3707, npcName = "Ken'jai", map = 1411, x = 42.4, y = 68.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4402, title = "Galgar's Cactus Apple Surprise", npc = 9796, npcName = "Galgar", map = 1411, x = 42.7, y = 67.2, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 3082, title = "Etched Tablet", npc = 3154, npcName = "Jen'shan", map = 1411, x = 42.8, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 789, itemName = "Scorpid Worker Tail", count = 10, oi = 1, map = 1411, x = 41.3, y = 63.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 3, f = "e" },
				},
			},
			{
				note = "Go into the cave to 42,68",
				goals = {
					{ t = "turnin", quest = 789, title = "Sting of the Scorpid", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5441, title = "Lazy Peons", npc = 11378, npcName = "Foreman Thazz'ril", map = 1411, x = 44.6, y = 68.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 45.3, y = 69.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5441, title = "Lazy Peons", npc = 11378, npcName = "Foreman Thazz'ril", map = 1411, x = 44.6, y = 68.6, f = "e" },
					{ t = "accept", quest = 6394, title = "Thazz'ril's Pick", npc = 11378, npcName = "Foreman Thazz'ril", map = 1411, x = 44.6, y = 68.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4402, itemName = "Cactus Apple", count = 10, oi = 1, map = 1411, x = 44.1, y = 65.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 792, target = "Vile Familiar", count = 12, oi = 1, map = 1411, x = 45.8, y = 59.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 4, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 1516, title = "Call of Earth (1)", npc = 5887, npcName = "Canaga Earthcaller", map = 1411, x = 42.4, y = 69.2, f = "e" },
				},
			},
			{
				note = "Go inside the cave",
				goals = {
					{ t = "goto", map = 1411, x = 45.5, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6394, itemName = "Thazz'ril's Pick", count = 1, oi = 1, map = 1411, x = 43.8, y = 53.8, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1516, itemName = "Felstalker Hoof", count = 2, oi = 1, map = 1411, x = 45.3, y = 55.7, f = "e" },
				},
			},
			{
				note = "Leave the cave,0.5|c",
				goals = {
					{ t = "goto", map = 1411, x = 45.3, y = 56.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 790, title = "Sarkoth (1)", npc = 3287, npcName = "Hana'zua", map = 1411, x = 40.6, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 790, itemName = "Sarkoth's Mangled Claw", count = 1, oi = 1, map = 1411, x = 40.6, y = 66.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 790, title = "Sarkoth (1)", npc = 3287, npcName = "Hana'zua", map = 1411, x = 40.6, y = 62.6, f = "e" },
					{ t = "accept", quest = 804, title = "Sarkoth (2)", npc = 3287, npcName = "Hana'zua", map = 1411, x = 40.6, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4402, title = "Galgar's Cactus Apple Surprise", npc = 9796, npcName = "Galgar", map = 1411, x = 42.7, y = 67.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 804, title = "Sarkoth (2)", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1516, title = "Call of Earth (1)", npc = 5887, npcName = "Canaga Earthcaller", map = 1411, x = 42.4, y = 69.2, f = "e" },
					{ t = "accept", quest = 1517, title = "Call of Earth (2)", npc = 5887, npcName = "Canaga Earthcaller", map = 1411, x = 42.4, y = 69.2, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", map = 1411, x = 41.5, y = 73.4, f = "e" },
				},
			},
			{
				note = "Go up the path to 44.1,76.1",
				only = { races = { "Troll" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1517, title = "Call of Earth (2)", npc = 5891, npcName = "the Minor Manifestation of Earth", map = 1411, x = 44.1, y = 76.1, f = "e" },
					{ t = "accept", quest = 1518, title = "Call of Earth (3)", npc = 5891, npcName = "the Minor Manifestation of Earth", map = 1411, x = 44.1, y = 76.1, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 1518, title = "Call of Earth (3)", npc = 5887, npcName = "Canaga Earthcaller", map = 1411, x = 42.4, y = 69.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 792, title = "Vile Familiars (1)", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.8, y = 69.2, f = "e" },
					{ t = "accept", quest = 794, title = "Burning Blade Medallion", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.8, y = 69.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6394, title = "Thazz'ril's Pick", npc = 11378, npcName = "Foreman Thazz'ril", map = 1411, x = 44.6, y = 68.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 45.5, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 794, itemName = "Burning Blade Medallion", count = 1, oi = 1, map = 1411, x = 42.7, y = 53.0, f = "e" },
				},
			},
			{
				note = "Hearth to the Valley of Trials,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1411, x = 43.3, y = 68.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 794, title = "Burning Blade Medallion", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.8, y = 69.1, f = "e" },
					{ t = "accept", quest = 805, title = "Report to Sen'jin Village", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.8, y = 69.1, f = "e" },
				},
			},
			{
				note = "Go east along the road through the big gate,0.3",
				goals = {
					{ t = "goto", map = 1411, x = 49.8, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2161, title = "A Peon's Burden", npc = 6786, npcName = "Ukor", map = 1411, x = 52.1, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 786, title = "Thwarting Kolkar Aggression", npc = 3140, npcName = "Lar Prowltusk", map = 1411, x = 54.2, y = 73.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 805, title = "Report to Sen'jin Village", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.9, y = 74.5, f = "e" },
					{ t = "accept", quest = 808, title = "Minshina's Skull", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.9, y = 74.5, f = "e" },
					{ t = "accept", quest = 826, title = "Zalazane", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.9, y = 74.5, f = "e" },
					{ t = "accept", quest = 823, title = "Report to Orgnil", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.9, y = 74.5, f = "e" },
					{ t = "accept", quest = 818, title = "A Solvent Spirit", npc = 3304, npcName = "Master Vornal", map = 1411, x = 55.9, y = 74.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 817, title = "Practical Prey", npc = 3194, npcName = "Vel'rin Fang", map = 1411, x = 55.9, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 823, title = "Report to Orgnil", npc = 3142, npcName = "Orgnil Soulscar", map = 1411, x = 52.2, y = 43.2, f = "e" },
					{ t = "accept", quest = 806, title = "Dark Storms", npc = 3142, npcName = "Orgnil Soulscar", map = 1411, x = 52.2, y = 43.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 784, title = "Vanquish the Betrayers", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.9, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2161, title = "A Peon's Burden", npc = 6928, npcName = "Innkeeper Grosk", map = 1411, x = 51.5, y = 41.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Razor Hill", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 791, title = "Carry Your Weight", npc = 3147, npcName = "Furl Scornbrow", map = 1411, x = 49.9, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 784, target = "Kul Tiras Sailor", count = 10, oi = 1, map = 1411, x = 55.5, y = 51.2, f = "e" },
					{ t = "kill", quest = 784, target = "Kul Tiras Marine", count = 8, oi = 2, map = 1411, x = 55.5, y = 51.2, f = "e" },
					{ t = "collect", quest = 791, itemName = "Canvas Scraps", count = 8, oi = 1, map = 1411, x = 55.5, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 784, npc = 3192, target = "Lieutenant Benedict", count = 1, oi = 3, map = 1411, x = 59.7, y = 58.3, f = "e" },
					{ t = "collect", quest = 830, item = 4882, itemName = "Benedict's Key", count = 1, map = 1411, x = 59.7, y = 58.3, f = "e" },
				},
			},
			{
				note = "Leave the room and run across the hall and up the wooden steps,0.3",
				goals = {
					{ t = "goto", map = 1411, x = 60.0, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 830, item = 4881, itemName = "Aged Envelope", count = 1, map = 1411, x = 59.3, y = 57.7, f = "e" },
					{ t = "accept", quest = 830, title = "The Admiral's Orders (1)", map = 1411, x = 59.3, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 784, title = "Vanquish the Betrayers", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.9, y = 43.5, f = "e" },
					{ t = "accept", quest = 825, title = "From The Wreckage....", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.9, y = 43.5, f = "e" },
					{ t = "turnin", quest = 830, title = "The Admiral's Orders (1)", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.9, y = 43.5, f = "e" },
					{ t = "accept", quest = 831, title = "The Admiral's Orders (2)", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.9, y = 43.5, f = "e" },
					{ t = "accept", quest = 837, title = "Encroachment", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.9, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 815, title = "Break a Few Eggs", npc = 3191, npcName = "Cook Torka", map = 1411, x = 51.1, y = 42.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 791, title = "Carry Your Weight", npc = 3147, npcName = "Furl Scornbrow", map = 1411, x = 49.9, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 818, itemName = "Crawler Mucus", count = 8, oi = 2, map = 1411, x = 60.8, y = 46.9, f = "e" },
					{ t = "collect", quest = 818, itemName = "Intact Makrura Eye", count = 4, oi = 1, map = 1411, x = 60.8, y = 46.9, f = "e" },
					{ t = "collect", quest = 825, itemName = "Gnomish Tools", count = 3, oi = 1, map = 1411, x = 60.8, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 825, title = "From The Wreckage....", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.9, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 837, target = "Razormane Quilboar", count = 4, oi = 1, map = 1411, x = 44.6, y = 48.6, f = "e" },
					{ t = "kill", quest = 837, target = "Razormane Scout", count = 4, oi = 2, map = 1411, x = 44.6, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 51.3, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 49.8, y = 81.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 47.7, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 46.2, y = 78.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 786, title = "Thwarting Kolkar Aggression", npc = 3140, npcName = "Lar Prowltusk", map = 1411, x = 54.2, y = 73.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 818, title = "A Solvent Spirit", npc = 3304, npcName = "Master Vornal", map = 1411, x = 55.9, y = 74.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 815, itemName = "Taillasher Egg", count = 3, oi = 1, map = 1411, x = 60.3, y = 82.9, f = "e" },
					{ t = "collect", quest = 817, itemName = "Durotar Tiger Fur", count = 4, oi = 1, map = 1411, x = 60.3, y = 82.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 826, target = "Hexed Troll", count = 8, oi = 1, map = 1411, x = 65.4, y = 83.3, f = "e" },
					{ t = "kill", quest = 826, target = "Voodoo Troll", count = 8, oi = 2, map = 1411, x = 65.4, y = 83.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 826, itemName = "Zalazane's Head", count = 1, oi = 3, map = 1411, x = 67.6, y = 86.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 808, itemName = "Minshina's Skull", count = 1, oi = 1, map = 1411, x = 67.5, y = 87.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 808, title = "Minshina's Skull", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.9, y = 74.5, f = "e" },
					{ t = "turnin", quest = 826, title = "Zalazane", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.9, y = 74.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 817, title = "Practical Prey", npc = 3194, npcName = "Vel'rin Fang", map = 1411, x = 55.9, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 9, f = "e" },
				},
			},
			{
				note = "Hearth to Razor Hill,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1411, x = 51.5, y = 41.7, f = "e" },
				},
			},
		},
	})
end

