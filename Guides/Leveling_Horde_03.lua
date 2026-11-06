-- TuWoW_Leveling — Guides/Leveling_Horde_03.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-undead-starter-1-13-part-3",
		pack = "guides",
		title = "Undead Starter (Parte 3/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-silverpine-forest-13-15",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1420,
		version = 1,
		races = { "Scourge" },
		steps = {
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 369, title = "A New Plague", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.45, y = 52.4, f = "e" },
					{ t = "accept", quest = 492, title = "A New Plague", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.45, y = 52.4, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 492, title = "A New Plague", npc = 2211, npcName = "Captured Mountaineer", map = 1420, x = 61.94, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 366, title = "Return the Book", npc = 1497, npcName = "Gunther Arcanus", map = 1420, x = 68.2, y = 41.92, f = "e" },
					{ t = "accept", quest = 409, title = "Proving Allegiance", npc = 1497, npcName = "Gunther Arcanus", map = 1420, x = 68.2, y = 41.92, f = "e" },
				},
			},
			{
				note = "Complete the Candles of Beckoning quest.",
				goals = {
					{ t = "collect", quest = 409, item = 3080, itemName = "Candle of Beckoning", map = 1420, x = 68.16, y = 42.02, f = "e" },
				},
			},
			{
				note = "Complete The Dormant Shade quest.",
				goals = {
					{ t = "kill", quest = 409, npc = 1946, target = "Lillith Nefara", oi = 1, map = 1420, x = 66.64, y = 44.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 409, title = "Proving Allegiance", npc = 1497, npcName = "Gunther Arcanus", map = 1420, x = 68.2, y = 41.92, f = "e" },
					{ t = "accept", quest = 411, title = "The Prodigal Lich Returns", npc = 1497, npcName = "Gunther Arcanus", map = 1420, x = 68.2, y = 41.92, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 2131, npcName = "Austil de Mon", map = 1420, x = 61.86, y = 52.54, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 2128, npcName = "Cain Firesong", map = 1420, x = 61.97, y = 52.47, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 2127, npcName = "Rupert Boch", map = 1420, x = 61.59, y = 52.4, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5750, npcName = "Gina Lang", map = 1420, x = 61.55, y = 52.61, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 2129, npcName = "Dark Cleric Beryl", map = 1420, x = 61.57, y = 52.2, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 2130, npcName = "Marion Call", map = 1420, x = 61.75, y = 52.0, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", map = 1420, x = 60.23, y = 52.68, f = "e" },
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
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.4, y = 56.75 },
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
					{ t = "collect", quest = 834, item = 4918, itemName = "Sack of Supplies", count = 5, oi = 1, map = 1411, x = 49.62, y = 22.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 834, title = "Winds in the Desert", npc = 3293, npcName = "Rezlak", map = 1411, x = 46.37, y = 22.94, f = "e" },
				},
			},
			{
				note = "Inside the crypt.",
				goals = {
					{ t = "goto", text = "Enter the crypt", map = 1420, x = 12.9, y = 65.73 },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Leave the crypt", map = 1420, x = 12.9, y = 65.73 },
				},
			},
			{
				note = "Wooden boards. Inside the crypt.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the crypt", map = 1420, x = 12.9, y = 65.73 },
				},
			},
			{
				note = "Walks around. Upstairs inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Leave the crypt", map = 1420, x = 12.9, y = 65.73 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 445, title = "Delivery to Silverpine Forest", npc = 1518, npcName = "Apothecary Johaan", map = 1420, x = 59.45, y = 52.4, f = "e" },
				},
			},
			{
				note = "Up on the stairs.",
				goals = {
					{ t = "turnin", quest = 411, title = "The Prodigal Lich Returns", npc = 1498, npcName = "Bethor Iceshard", map = 1458, x = 84.05, y = 17.46, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 1882, title = "The Balnir Farmstead", npc = 4568, npcName = "Anastasia Hartwell", map = 1458, x = 85.14, y = 10.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.18, y = 64.37 },
				},
			},
			{
				note = "Undead. Walks the road between Brill and The Sepulcher.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 1886, item = 7231, itemName = "Astor's Letter of Introduction", oi = 1, map = 1421, x = 49.7, y = 32.2, f = "e" },
				},
			},
		},
	})
end

