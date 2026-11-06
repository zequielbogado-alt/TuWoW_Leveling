-- TuWoW_Leveling — Guides/Leveling_Horde_08.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-orc-and-troll-starter-1-13-part-3",
		pack = "guides",
		title = "Orc & Troll Starter (Parte 3/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-silverpine-forest-13-15",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1411,
		version = 1,
		races = { "Orc", "Troll" },
		steps = {
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1411, x = 52.8, y = 28.6 },
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
				note = "Between the rocks. Hurry, timed quest.",
				goals = {
					{ t = "accept", quest = 812, title = "Need for a Cure", npc = 3190, npcName = "Rhinag", map = 1411, x = 41.55, y = 18.61, f = "e" },
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
				goals = {
					{ t = "turnin", quest = 831, title = "The Admiral's Orders", npc = 3230, npcName = "Nazgrel", map = 1454, x = 32.27, y = 35.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 5726, title = "Hidden Enemies", npc = 4949, npcName = "Thrall", map = 1454, x = 31.75, y = 37.82, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				goals = {
					{ t = "accept", quest = 813, title = "Finding the Antidote", npc = 3189, npcName = "Kor'ghan", map = 1454, x = 47.24, y = 53.58, f = "e" },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1506, title = "Gan'rul's Summons", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.25, y = 45.29, f = "e" },
					{ t = "accept", quest = 1501, title = "Creature of the Void", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.25, y = 45.29, f = "e" },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 1859, title = "Therzok", npc = 6446, npcName = "Therzok", map = 1454, x = 42.74, y = 53.54, f = "e" },
					{ t = "accept", quest = 1963, title = "The Shattered Hand", npc = 6446, npcName = "Therzok", map = 1454, x = 42.74, y = 53.54, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5654, title = "Hex of Weakness", npc = 6018, npcName = "Ur'kyo", map = 1454, x = 35.59, y = 87.8, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "getfp", location = "Orgrimmar", map = 1454, x = 45.13, y = 63.9, f = "e" },
				},
			},
			{
				note = "Scorpions.",
				goals = {
					{ t = "collect", quest = 813, item = 4886, itemName = "Venomtail Poison Sac", count = 4, oi = 1, map = 1411, x = 41.98, y = 18.82, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				goals = {
					{ t = "turnin", quest = 813, title = "Finding the Antidote", npc = 3189, npcName = "Kor'ghan", map = 1454, x = 47.24, y = 53.58, f = "e" },
				},
			},
			{
				note = "Between the rocks.",
				goals = {
					{ t = "accept", quest = 812, title = "Need for a Cure", npc = 3190, npcName = "Rhinag", map = 1411, x = 41.55, y = 18.61, f = "e" },
				},
			},
			{
				note = "Between the rocks.",
				goals = {
					{ t = "turnin", quest = 812, title = "Need for a Cure", npc = 3190, npcName = "Rhinag", map = 1411, x = 41.55, y = 18.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 816, item = 4891, itemName = "Kron's Amulet", oi = 1, map = 1411, x = 36.53, y = 19.93, f = "e" },
				},
			},
			{
				note = "Top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
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
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1505, title = "Veteran Uzzek", npc = 5810, npcName = "Uzzek", map = 1413, x = 61.38, y = 21.11, f = "e" },
					{ t = "accept", quest = 1498, title = "Path of Defense", npc = 5810, npcName = "Uzzek", map = 1413, x = 61.38, y = 21.11, f = "e" },
				},
			},
			{
				note = "On Fizzle Darkstorm when he's next to the bonfire. Damages him. Goblin with imp minion. Walks around. Clear most enemies first and pull him away. Kill his imp first.",
				goals = {
					{ t = "goto", text = "Jump down carefully", map = 1411, x = 38.9, y = 24.11 },
					{ t = "use", item = 4945, itemName = "Faintly Glowing Skull" },
					{ t = "collect", quest = 806, item = 4869, itemName = "Fizzle's Claw", oi = 1, map = 1411, x = 42.28, y = 26.59, f = "e" },
				},
			},
			{
				label = "Collect_Singed_Scales_Warrior",
				along = true,
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1498, item = 6486, itemName = "Singed Scale", count = 5, oi = 1, map = 1411, x = 40.41, y = 24.13, f = "e" },
				},
			},
			{
				note = "Helps reach level 12 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 11,5500", map = 1411, x = 40.41, y = 24.13, only = { classes = { "WARRIOR" } } },
					{ t = "goto", text = "ding 11,6130", map = 1411, x = 40.41, y = 24.13 },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Leave the canyon", map = 1411, x = 39.16, y = 32.31 },
					{ t = "turnin", quest = 1498, title = "Path of Defense", npc = 5810, npcName = "Uzzek", map = 1413, x = 61.38, y = 21.11, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "goto", text = "Leave the canyon", map = 1411, x = 39.16, y = 32.31 },
					{ t = "turnin", quest = 816, title = "Lost But Not Forgotten", npc = 3193, npcName = "Misha Tor'kren", map = 1411, x = 43.1, y = 30.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 806, title = "Dark Storms", npc = 3142, npcName = "Orgnil Soulscar", map = 1411, x = 52.24, y = 43.15, f = "e" },
					{ t = "accept", quest = 828, title = "Margoz", npc = 3142, npcName = "Orgnil Soulscar", map = 1411, x = 52.24, y = 43.15, f = "e" },
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
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3620, npcName = "Harruk", map = 1411, x = 52.02, y = 43.55, f = "e" },
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
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3169, npcName = "Tarshaw Jaggedscar", map = 1411, x = 54.19, y = 42.47, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3173, npcName = "Swart", map = 1411, x = 54.42, y = 42.59, f = "e" },
				},
			},
			{
				note = "Outside behind the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3172, npcName = "Dhugru Gorelust", map = 1411, x = 54.38, y = 41.19, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Outside behind the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6027, npcName = "Kitha", map = 1411, x = 54.71, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 828, title = "Margoz", npc = 3208, npcName = "Margoz", map = 1411, x = 56.41, y = 20.04, f = "e" },
					{ t = "accept", quest = 827, title = "Skull Rock", npc = 3208, npcName = "Margoz", map = 1411, x = 56.41, y = 20.04, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1411, x = 54.98, y = 9.67 },
					{ t = "collect", quest = 1501, item = 6535, itemName = "Tablet of Verga", oi = 1, map = 1411, x = 51.62, y = 9.74, f = "e" },
				},
			},
			{
				label = "Collect_Lieutenants_Insignia_And_Searing_Collars",
				along = true,
				note = "Inside the cave.",
				goals = {
					{ t = "collect", quest = 5726, item = 14544, itemName = "Lieutenant's Insignia", oi = 1, map = 1411, x = 54.98, y = 9.67, f = "e" },
					{ t = "collect", quest = 827, item = 4871, itemName = "Searing Collar", count = 6, oi = 1, map = 1411, x = 54.98, y = 9.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1411, x = 52.82, y = 28.9 },
					{ t = "turnin", quest = 827, title = "Skull Rock", npc = 3208, npcName = "Margoz", map = 1411, x = 56.41, y = 20.03, f = "e" },
					{ t = "accept", quest = 829, title = "Neeru Fireblade", npc = 3208, npcName = "Margoz", map = 1411, x = 56.41, y = 20.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 4903, itemName = "Eye of Burning Shadow" },
					{ t = "accept", quest = 832, title = "Burning Shadows" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "goto", text = "Train Staves", map = 1454, x = 81.53, y = 19.63 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5726, title = "Hidden Enemies", npc = 4949, npcName = "Thrall", map = 1454, x = 31.76, y = 37.82, f = "e" },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1501, title = "Creature of the Void", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.24, y = 45.28, f = "e" },
					{ t = "accept", quest = 1504, title = "The Binding", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.24, y = 45.28, f = "e" },
				},
			},
			{
				note = "Inside the tent.",
				goals = {
					{ t = "turnin", quest = 829, title = "Neeru Fireblade", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.48, y = 50.6, f = "e" },
					{ t = "accept", quest = 809, title = "Ak'Zeloth", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.48, y = 50.6, f = "e" },
					{ t = "turnin", quest = 832, title = "Burning Shadows", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.48, y = 50.6, f = "e" },
				},
			},
			{
				note = "On the pink symbol. Inside the tent. Inside the Cleft of Shadow.",
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 7464, itemName = "Glyphs of Summoning" },
					{ t = "kill", quest = 1504, npc = 5676, target = "Summoned Voidwalker", oi = 1, map = 1454, x = 49.43, y = 50.0, f = "e" },
				},
			},
			{
				note = "Inside the tent. Inside the Cleft of Shadow.",
				only = { races = { "Orc" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1504, title = "The Binding", npc = 5875, npcName = "Gan'rul Bloodeye", map = 1454, x = 48.24, y = 45.28, f = "e" },
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
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Train Swords", map = 1458, x = 57.31, y = 32.77 },
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

