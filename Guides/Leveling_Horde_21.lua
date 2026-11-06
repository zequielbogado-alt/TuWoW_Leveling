-- TuWoW_Leveling — Guides/Leveling_Horde_21.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-dustwallow-marsh-37-38",
		pack = "guides",
		title = "Dustwallow Marsh",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-alterac-mountains-and-arathi-highlands-38-39",
		author = "TuWoW & Zygor",
		minLevel = 37,
		maxLevel = 38,
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "Buy from the Auction House, if possible. Needed for quest soon.",
				goals = {
					{ t = "collect", quest = 1203, item = 3853, itemName = "Moonsteel Broadsword", map = 1454, x = 55.69, y = 62.86, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "goto", text = "bank Silk Cloth##4306", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 1##2725", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 4##2728", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 6##2730", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 8##2732", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 10##2734", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 11##2735", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 14##2738", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 16##2740", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 18##2742", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 20##2744", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 21##2745", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 24##2748", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 25##2749", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 26##2750", map = 1454, x = 49.59, y = 69.12 },
					{ t = "goto", text = "bank Green Hills of Stranglethorn - Page 27##2751", map = 1454, x = 49.59, y = 69.12 },
				},
			},
			{
				note = "Inside the building. Don't vendor them.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.35, y = 56.89 },
					{ t = "buy", item = 3713, itemName = "Soothing Spices", count = 3, map = 1454, x = 57.57, y = 52.89, f = "e" },
				},
			},
			{
				note = "Long questing session soon. No ammo vendor available. Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 3313, npcName = "Trak'gen", map = 1454, x = 48.13, y = 80.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1201, title = "Theramore Spies", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.21, y = 30.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1268, title = "Suspicious Hoofprints", map = 1445, x = 29.7, y = 47.63, f = "e" },
				},
			},
			{
				note = "Tiny metal object.",
				goals = {
					{ t = "accept", quest = 1269, title = "Lieutenant Paval Reethe", map = 1445, x = 29.83, y = 48.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1251, title = "The Black Shield", map = 1445, x = 29.63, y = 48.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1177, title = "Hungry!", npc = 4503, npcName = "Mudcrush Durtfeet", map = 1445, x = 35.15, y = 38.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1268, title = "Suspicious Hoofprints", npc = 4926, npcName = "Krog", map = 1445, x = 36.42, y = 31.88, f = "e" },
					{ t = "turnin", quest = 1269, title = "Lieutenant Paval Reethe", npc = 4926, npcName = "Krog", map = 1445, x = 36.42, y = 31.88, f = "e" },
					{ t = "turnin", quest = 1251, title = "The Black Shield", npc = 4926, npcName = "Krog", map = 1445, x = 36.42, y = 31.88, f = "e" },
					{ t = "accept", quest = 1321, title = "The Black Shield", npc = 4926, npcName = "Krog", map = 1445, x = 36.42, y = 31.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1321, title = "The Black Shield", npc = 5087, npcName = "Do'gol", map = 1445, x = 36.53, y = 30.8, f = "e" },
					{ t = "accept", quest = 1322, title = "The Black Shield", npc = 5087, npcName = "Do'gol", map = 1445, x = 36.53, y = 30.8, f = "e" },
				},
			},
			{
				note = "Stealthed.",
				goals = {
					{ t = "kill", quest = 1201, npc = 4834, target = "Theramore Infiltrator", count = 9, oi = 1, map = 1445, x = 38.0, y = 33.4, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing. Kill nearby raptors first.",
				goals = {
					{ t = "accept", quest = 1270, title = "Stinky's Escape", npc = 4880, npcName = "\"Stinky\" Ignatz", map = 1445, x = 46.88, y = 17.52, f = "e" },
				},
			},
			{
				note = "Follow and protect \"Stinky\" Ignatz.",
				goals = {
					{ t = "complete", quest = 1270, title = "Stinky's Escape", note = "Help Stinky Find Bogbean Leaves", map = 1445, x = 48.86, y = 24.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1218, title = "Soothing Spices", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.44, y = 26.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1218, title = "Soothing Spices", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.44, y = 26.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1238, title = "The Lost Report", map = 1445, x = 55.44, y = 25.93, f = "e" },
				},
			},
			{
				note = "Murlocs.",
				goals = {
					{ t = "collect", quest = 1177, item = 5847, itemName = "Mirefin Head", count = 12, oi = 1, map = 1445, x = 57.83, y = 21.37, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1206, title = "Jarl Needs Eyes", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.44, y = 26.27, f = "e" },
				},
			},
			{
				label = "Collect_Acidic_Venom_Sacs",
				along = true,
				note = "Orange spiders. Careful, Darkfang Lurkers are stealthed.",
				goals = {
					{ t = "collect", quest = 1322, item = 5959, itemName = "Acidic Venom Sac", count = 6, oi = 1, map = 1445, x = 51.6, y = 25.2, f = "e" },
				},
			},
			{
				note = "Spiders. Inside and outside the mine.",
				goals = {
					{ t = "collect", quest = 1206, item = 5884, itemName = "Unpopped Darkmist Eye", count = 40, oi = 1, map = 1445, x = 33.22, y = 22.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the mine", map = 1445, x = 33.22, y = 22.76 },
					{ t = "turnin", quest = 1201, title = "Theramore Spies", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.21, y = 30.66, f = "e" },
					{ t = "accept", quest = 1202, title = "The Theramore Docks", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.21, y = 30.66, f = "e" },
					{ t = "turnin", quest = 1238, title = "The Lost Report", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.21, y = 30.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1322, title = "The Black Shield", npc = 5087, npcName = "Do'gol", map = 1445, x = 36.53, y = 30.8, f = "e" },
					{ t = "accept", quest = 1323, title = "The Black Shield", npc = 5087, npcName = "Do'gol", map = 1445, x = 36.53, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1323, title = "The Black Shield", npc = 4926, npcName = "Krog", map = 1445, x = 36.42, y = 31.88, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing.",
				goals = {
					{ t = "accept", quest = 1273, title = "Questioning Reethe", npc = 4983, npcName = "Ogron", map = 1445, x = 40.96, y = 36.69, f = "e" },
				},
			},
			{
				note = "Follow and protect Ogron. Group of 4 enemies. Let Ogron tank some of them. Ogron must survive. May need help.",
				goals = {
					{ t = "complete", quest = 1273, title = "Questioning Reethe", note = "Question Reethe with Ogron", map = 1445, x = 42.65, y = 38.07, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1177, title = "Hungry!", npc = 4503, npcName = "Mudcrush Durtfeet", map = 1445, x = 35.15, y = 38.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1273, title = "Questioning Reethe", npc = 4926, npcName = "Krog", map = 1445, x = 36.42, y = 31.88, f = "e" },
					{ t = "accept", quest = 1276, title = "The Black Shield", npc = 4926, npcName = "Krog", map = 1445, x = 36.42, y = 31.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1206, title = "Jarl Needs Eyes", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.43, y = 26.27, f = "e" },
					{ t = "accept", quest = 1203, title = "Jarl Needs a Blade", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.44, y = 26.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1203, title = "Jarl Needs a Blade", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.44, y = 26.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1239, title = "The Severed Head", map = 1445, x = 55.44, y = 25.93, f = "e" },
				},
			},
			{
				note = "Avoid Theramore Isle. Underwater.",
				goals = {
					{ t = "collect", quest = 1202, item = 5882, itemName = "Captain's Documents", oi = 1, map = 1445, x = 71.53, y = 51.18, f = "e" },
				},
			},
			{
				note = "Fast travel.",
				goals = {
					{ t = "complete", quest = 1202, title = "The Theramore Docks", note = "Die on Purpose", map = 1445, x = 71.53, y = 51.18, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1202, title = "The Theramore Docks", note = "Resurrect at the Spirit Healer", map = 1445, x = 39.7, y = 30.77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1202, title = "The Theramore Docks", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.21, y = 30.66, f = "e" },
					{ t = "turnin", quest = 1239, title = "The Severed Head", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.21, y = 30.66, f = "e" },
					{ t = "accept", quest = 1240, title = "The Troll Witchdoctor", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.21, y = 30.66, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5883, npcName = "Enyo", map = 1454, x = 38.79, y = 85.65, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 6018, npcName = "Ur'kyo", map = 1454, x = 35.59, y = 87.8, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3328, npcName = "Ormok", map = 1454, x = 43.91, y = 54.63, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3325, npcName = "Mirket", map = 1454, x = 48.62, y = 46.95, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5815, npcName = "Kurgul", map = 1454, x = 47.52, y = 46.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3344, npcName = "Kardris Dreamseeker", map = 1454, x = 38.8, y = 36.38, f = "e" },
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
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3353, npcName = "Grezz Ragefist", map = 1454, x = 79.78, y = 31.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.2, y = 64.31 },
					{ t = "accept", quest = 1048, title = "Into The Scarlet Monastery", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.25, y = 92.2, f = "e" },
				},
			},
			{
				note = "Library section. First boss.",
				goals = {
					{ t = "kill", quest = 1048, npc = 3974, target = "Houndmaster Loksey", oi = 4 },
				},
			},
			{
				note = "Armory section. Final boss.",
				goals = {
					{ t = "kill", quest = 1048, npc = 3975, target = "Herod", oi = 3 },
				},
			},
			{
				note = "Cathedral section. Final boss.",
				goals = {
					{ t = "kill", quest = 1048, npc = 3976, target = "Scarlet Commander Mograine", oi = 2 },
					{ t = "kill", quest = 1048, npc = 3977, target = "High Inquisitor Whitemane", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.2, y = 64.31 },
					{ t = "turnin", quest = 1048, title = "Into The Scarlet Monastery", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.25, y = 92.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.86, y = 77.57 },
					{ t = "accept", quest = 232, title = "Errand for Apothecary Zinge", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 50.13, y = 67.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1458, x = 47.9, y = 76.49 },
					{ t = "turnin", quest = 232, title = "Errand for Apothecary Zinge", npc = 7683, npcName = "Alessandro Luca", map = 1458, x = 58.62, y = 54.67, f = "e" },
					{ t = "accept", quest = 238, title = "Errand for Apothecary Zinge", npc = 7683, npcName = "Alessandro Luca", map = 1458, x = 58.62, y = 54.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.86, y = 77.57 },
					{ t = "turnin", quest = 238, title = "Errand for Apothecary Zinge", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 50.13, y = 67.99, f = "e" },
					{ t = "accept", quest = 243, title = "Into the Field", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 50.13, y = 67.99, f = "e" },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Needed for your Whirlwind weapon class quest.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1714, item = 4480, itemName = "Thundering Charm", count = 8, map = 1458, x = 64.39, y = 35.82, f = "e" },
					{ t = "collect", quest = 1714, item = 4479, itemName = "Burning Charm", count = 8, map = 1458, x = 64.39, y = 35.82, f = "e" },
					{ t = "collect", quest = 1714, item = 4481, itemName = "Cresting Charm", count = 8, map = 1458, x = 64.39, y = 35.82, f = "e" },
					{ t = "collect", quest = 1713, item = 6052, itemName = "Nature Protection Potion", count = 2, map = 1458, x = 64.39, y = 35.82, f = "e" },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Needed for easy quest turnins in Badlands soon. Inside the building.",
				goals = {
					{ t = "collect", quest = 705, item = 4611, itemName = "Blue Pearl", count = 9, map = 1458, x = 64.39, y = 35.82, f = "e" },
					{ t = "collect", quest = 713, item = 3829, itemName = "Frost Oil", map = 1458, x = 64.39, y = 35.82, f = "e" },
					{ t = "collect", quest = 714, item = 4389, itemName = "Gyrochronatom", map = 1458, x = 64.39, y = 35.82, f = "e" },
					{ t = "collect", quest = 715, item = 929, itemName = "Healing Potion", map = 1458, x = 64.39, y = 35.82, f = "e" },
					{ t = "collect", quest = 715, item = 3823, itemName = "Lesser Invisibility Potion", map = 1458, x = 64.39, y = 35.82, f = "e" },
				},
			},
			{
				note = "Collect from the bank.",
				goals = {
					{ t = "collect", quest = 1106, item = 5827, itemName = "Fizzle Brassbolts' Letter", map = 1458, x = 65.93, y = 43.46, f = "e" },
				},
			},
			{
				note = "Deposit into the bank.",
				goals = {
					{ t = "complete", quest = 1276, title = "The Black Shield", note = "bank Blackened Iron Shield##5919", map = 1458, x = 65.93, y = 43.46, f = "e" },
					{ t = "complete", quest = 243, title = "Into the Field", note = "bank Field Testing Kit##8523", map = 1458, x = 65.93, y = 43.46, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1714, item = 4481, itemName = "Cresting Charm", count = 8, map = 1417, x = 66.2, y = 31.6, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1714, item = 4480, itemName = "Thundering Charm", count = 8, map = 1417, x = 52.2, y = 52.6, f = "e" },
				},
			},
			{
				note = "Avoid Refuge Point.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1714, item = 4479, itemName = "Burning Charm", count = 8, map = 1417, x = 24.4, y = 30.4, f = "e" },
				},
			},
		},
	})
end

