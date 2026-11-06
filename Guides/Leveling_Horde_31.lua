-- TuWoW_Leveling — Guides/Leveling_Horde_31.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-burning-steppes-and-azshara-51-52",
		pack = "guides",
		title = "Burning Steppes & Azshara",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-felwood-and-winterspring-52-53",
		author = "TuWoW & Zygor",
		minLevel = 51,
		maxLevel = 52,
		zone = 1427,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Enter Blackrock Mountain and run through to Burning Steppes", map = 1427, x = 34.8, y = 83.96 },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Flame Crest", map = 1428, x = 65.68, y = 24.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4726, title = "Broodling Essence", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.24, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4296, title = "Tablet of the Seven", npc = 9536, npcName = "Maxwort Uberglint", map = 1428, x = 65.16, y = 23.92, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4296, item = 11470, itemName = "Tablet Transcript", oi = 1, map = 1428, x = 54.09, y = 40.73, f = "e" },
				},
			},
			{
				note = "On a stone table. Top of the mountain. Appears nearby.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 75.39, y = 38.29 },
					{ t = "turnin", quest = 3821, title = "Dreadmaul Rock", npc = 9136, npcName = "Sha'ni Proudtusk", map = 1428, x = 79.79, y = 45.52, f = "e" },
				},
			},
			{
				note = "Next quest requires level 52.",
				goals = {
					{ t = "goto", text = "ding 52", map = 1428, x = 75.6, y = 50.0 },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "accept", quest = 4022, title = "A Taste of Flame", npc = 9459, npcName = "Cyrus Therepentous", map = 1428, x = 95.06, y = 31.57, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "complete", quest = 4022, title = "A Taste of Flame", note = "Present the Proof", map = 1428, x = 95.06, y = 31.57, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 4022, title = "A Taste of Flame", npc = 9459, npcName = "Cyrus Therepentous", map = 1428, x = 95.06, y = 31.57, f = "e" },
				},
			},
			{
				label = "Collect_Broodling_Essences",
				along = true,
				note = "On Black Broodlings. Small flying dragons. Red crystals above their corpses.",
				goals = {
					{ t = "use", item = 12284, itemName = "Draco-Incarcinatrix 900" },
					{ t = "collect", quest = 4726, item = 12283, itemName = "Broodling Essence", count = 8, oi = 1, map = 1428, x = 91.4, y = 31.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4726, title = "Broodling Essence", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
					{ t = "accept", quest = 4808, title = "Felnok Steelspring", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.23, y = 23.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4296, title = "Tablet of the Seven", npc = 9536, npcName = "Maxwort Uberglint", map = 1428, x = 65.15, y = 23.91, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", text = "Train Undead Horsemanship", map = 1420, x = 60.08, y = 52.57 },
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
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 3568, item = 10695, itemName = "Box of Empty Vials", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 3908, item = 11133, itemName = "Linken's Training Sword", map = 1454, x = 49.58, y = 69.12, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 4808, title = "Felnok Steelspring", note = "bank Tinkee's Letter##12438", map = 1454, x = 49.58, y = 69.12, f = "e" },
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
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3344, npcName = "Kardris Dreamseeker", map = 1454, x = 38.8, y = 36.38, f = "e" },
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
				goals = {
					{ t = "accept", quest = 3504, title = "Betrayed", npc = 4485, npcName = "Belgrom Rockmaul", map = 1454, x = 75.23, y = 34.23, f = "e" },
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
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3352, npcName = "Ormak Grimshot", map = 1454, x = 66.06, y = 18.54, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "goto", text = "Train Wolf Riding", map = 1454, x = 69.4, y = 13.1 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.42, y = 56.92 },
					{ t = "accept", quest = 4494, title = "March of the Silithid", npc = 7010, npcName = "Zilzibin Drumlore", map = 1454, x = 56.27, y = 46.67, f = "e" },
				},
			},
			{
				note = "Inside the building. Long questing session soon. No ammo available.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 3313, npcName = "Trak'gen", map = 1454, x = 48.13, y = 80.54, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "goto", text = "Train Raptor Riding", map = 1411, x = 55.28, y = 75.49 },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", text = "Train Kodo Riding", map = 1412, x = 46.78, y = 62.01 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5535, title = "Spiritual Unrest", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.37, y = 78.16, f = "e" },
					{ t = "accept", quest = 5536, title = "A Land Filled with Hatred", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.37, y = 78.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5535, npc = 6116, target = "Highborne Apparition", count = 6, oi = 1, map = 1447, x = 13.4, y = 73.4, f = "e" },
					{ t = "kill", quest = 5535, npc = 6117, target = "Highborne Lichling", count = 6, oi = 2, map = 1447, x = 13.4, y = 73.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5536, npc = 6126, target = "Haldarr Trickster", count = 2, oi = 2, map = 1447, x = 19.8, y = 64.6, f = "e" },
					{ t = "kill", quest = 5536, npc = 6127, target = "Haldarr Felsworn", count = 2, oi = 3, map = 1447, x = 19.8, y = 64.6, f = "e" },
					{ t = "kill", quest = 5536, npc = 6125, target = "Haldarr Satyr", count = 6, oi = 1, map = 1447, x = 19.8, y = 64.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5535, title = "Spiritual Unrest", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.37, y = 78.17, f = "e" },
					{ t = "turnin", quest = 5536, title = "A Land Filled with Hatred", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.37, y = 78.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Valormok", map = 1447, x = 21.96, y = 49.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3504, title = "Betrayed", npc = 8576, npcName = "Ag'tor Bloodfist", map = 1447, x = 22.26, y = 51.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3517, title = "Stealing Knowledge", npc = 8587, npcName = "Jediga", map = 1447, x = 22.56, y = 51.42, f = "e" },
				},
			},
			{
				note = "Stone rectangle with green runes. Multiple locations.",
				goals = {
					{ t = "collect", quest = 3517, item = 10540, itemName = "Tablet of Markri", oi = 3, map = 1447, x = 35.0, y = 54.6, f = "e" },
				},
			},
			{
				label = "Collect_Tablet_Of_BethAmara",
				along = true,
				note = "Stone rectangle with pink runes. Multiple locations. notinsticky",
				goals = {
					{ t = "collect", quest = 3517, item = 10538, itemName = "Tablet of Beth'Amara", oi = 1, map = 1447, x = 35.2, y = 55.8, f = "e" },
				},
			},
			{
				label = "Collect_Tablet_Of_Jinyael",
				along = true,
				note = "Stone rectangle with blue runes. Multiple locations. notinsticky",
				goals = {
					{ t = "collect", quest = 3517, item = 10539, itemName = "Tablet of Jin'yael", oi = 2, map = 1447, x = 34.8, y = 53.3, f = "e" },
				},
			},
			{
				label = "Collect_Tablet_Of_Saelhai",
				along = true,
				note = "Stone rectangle with yellow runes. Multiple locations. notinsticky",
				goals = {
					{ t = "collect", quest = 3517, item = 10541, itemName = "Tablet of Sael'hai", oi = 4, map = 1447, x = 34.8, y = 54.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 10695, itemName = "Box of Empty Vials" },
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "collect Empty Vial Labeled #1##10687" },
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "collect Empty Vial Labeled #2##10688" },
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "collect Empty Vial Labeled #3##10689" },
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "collect Empty Vial Labeled #4##10690" },
				},
			},
			{
				note = "In the water.",
				goals = {
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "collect Filled Vial Labeled #1##10691", map = 1447, x = 47.7, y = 61.05, f = "e" },
				},
			},
			{
				note = "In the water.",
				goals = {
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "collect Filled Vial Labeled #2##10692", map = 1447, x = 47.86, y = 51.55, f = "e" },
				},
			},
			{
				note = "In the water.",
				goals = {
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "collect Filled Vial Labeled #3##10693", map = 1447, x = 48.6, y = 48.56, f = "e" },
				},
			},
			{
				note = "In the water.",
				goals = {
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "collect Filled Vial Labeled #4##10694", map = 1447, x = 47.41, y = 46.28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1447, x = 46.0, y = 38.71 },
					{ t = "turnin", quest = 3517, title = "Stealing Knowledge", npc = 8587, npcName = "Jediga", map = 1447, x = 22.56, y = 51.42, f = "e" },
					{ t = "accept", quest = 3518, title = "Delivery to Magatha", npc = 8587, npcName = "Jediga", map = 1447, x = 22.56, y = 51.42, f = "e" },
					{ t = "accept", quest = 3541, title = "Delivery to Jes'rimon", npc = 8587, npcName = "Jediga", map = 1447, x = 22.56, y = 51.42, f = "e" },
					{ t = "accept", quest = 3561, title = "Delivery to Archmage Xylem", npc = 8587, npcName = "Jediga", map = 1447, x = 22.56, y = 51.42, f = "e" },
				},
			},
			{
				note = "Teleports you up the cliff.",
				goals = {
					{ t = "accept", quest = 3503, title = "Meeting with the Master", npc = 8395, npcName = "Sanath Lim-yo", map = 1447, x = 28.11, y = 50.09, f = "e" },
				},
			},
			{
				note = "Walks around. Multiple floors inside the tower.",
				goals = {
					{ t = "turnin", quest = 3561, title = "Delivery to Archmage Xylem", npc = 8379, npcName = "Archmage Xylem", map = 1447, x = 29.71, y = 40.52, f = "e" },
					{ t = "accept", quest = 3565, title = "Xylem's Payment to Jediga", npc = 8379, npcName = "Archmage Xylem", map = 1447, x = 29.71, y = 40.52, f = "e" },
				},
			},
			{
				note = "Teleports you to the ground.",
				goals = {
					{ t = "accept", quest = 3421, title = "Return Trip", npc = 8399, npcName = "Nyrill", map = 1447, x = 26.47, y = 46.28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3565, title = "Xylem's Payment to Jediga", npc = 8587, npcName = "Jediga", map = 1447, x = 22.56, y = 51.42, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-felwood-and-winterspring-52-53",
		pack = "guides",
		title = "Felwood & Winterspring",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-ungoro-crater-53-54",
		author = "TuWoW & Zygor",
		minLevel = 52,
		maxLevel = 53,
		zone = 1448,
		version = 1,
		steps = {
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 5155, title = "Forces of Jaedenar", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.21, y = 82.11, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 5156, title = "Verifying the Corruption", npc = 10921, npcName = "Taronn Redfeather", map = 1448, x = 50.89, y = 81.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8460, title = "Timbermaw Ally", npc = 11554, npcName = "Grazle", map = 1448, x = 50.93, y = 85.01, f = "e" },
				},
			},
			{
				note = "Kill enemies as you walk. Reduces grinding later.",
				goals = {
					{ t = "complete", quest = 8460, title = "Timbermaw Ally", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8460, npc = 7153, target = "Deadwood Warrior", count = 6, oi = 1, map = 1448, x = 48.4, y = 89.2, f = "e" },
					{ t = "kill", quest = 8460, npc = 7155, target = "Deadwood Pathfinder", count = 6, oi = 2, map = 1448, x = 48.4, y = 89.2, f = "e" },
					{ t = "kill", quest = 8460, npc = 7154, target = "Deadwood Gardener", count = 6, oi = 3, map = 1448, x = 48.4, y = 89.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8460, title = "Timbermaw Ally", npc = 11554, npcName = "Grazle", map = 1448, x = 50.93, y = 85.02, f = "e" },
					{ t = "accept", quest = 8462, title = "Speak to Nafien", npc = 11554, npcName = "Grazle", map = 1448, x = 50.93, y = 85.02, f = "e" },
				},
			},
			{
				note = "Don't vendor them. Can be turned in later for xp and reputation.",
				goals = {
					{ t = "collect", item = 21377, itemName = "Deadwood Headdress Feather", map = 1448, x = 48.7, y = 91.0, f = "e" },
					{ t = "goto", text = "Reach Unfriendly Reputation with the Timbermaw Hold Faction", map = 1448, x = 48.4, y = 89.2 },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 4102, title = "Cleansing Felwood", npc = 9529, npcName = "Maybess Riverbreeze", map = 1448, x = 46.68, y = 82.98, f = "e" },
				},
			},
			{
				note = "More inside the caves.",
				goals = {
					{ t = "kill", quest = 5155, npc = 7125, target = "Jaedenar Hound", count = 4, oi = 1, map = 1448, x = 40.4, y = 57.6, f = "e" },
					{ t = "kill", quest = 5155, npc = 7113, target = "Jaedenar Guardian", count = 4, oi = 2, map = 1448, x = 40.4, y = 57.6, f = "e" },
					{ t = "kill", quest = 5155, npc = 7115, target = "Jaedenar Adept", count = 6, oi = 3, map = 1448, x = 40.4, y = 57.6, f = "e" },
					{ t = "kill", quest = 5155, npc = 7112, target = "Jaedenar Cultist", count = 6, oi = 4, map = 1448, x = 40.4, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1448, x = 38.65, y = 57.32 },
					{ t = "goto", text = "Follow the river west", map = 1448, x = 37.54, y = 49.25 },
					{ t = "accept", quest = 4505, title = "Well of Corruption", npc = 9996, npcName = "Winna Hazzard", map = 1448, x = 34.21, y = 52.34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6162, title = "A Husband's Last Battle", npc = 9620, npcName = "Dreka'Sur", map = 1448, x = 34.8, y = 52.73, f = "e" },
				},
			},
			{
				note = "Inside the building. Long grind soon.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 2806, npcName = "Bale", map = 1448, x = 34.75, y = 53.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Bloodvenom Post", map = 1448, x = 34.44, y = 53.96, f = "e" },
				},
			},
			{
				note = "Careful, stealthed enemies.",
				goals = {
					{ t = "goto", text = "Run around the mountain and follow the path", map = 1448, x = 36.64, y = 66.86 },
					{ t = "use", item = 12566, itemName = "Hardened Flasket" },
					{ t = "collect", quest = 4505, item = 12567, itemName = "Filled Flasket", oi = 1, map = 1448, x = 32.41, y = 66.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6162, item = 15879, itemName = "Overlord Ror's Claw", oi = 1, map = 1448, x = 48.23, y = 94.27, f = "e" },
				},
			},
			{
				note = "Helps reach level 53 after quest turnins. Higher level enemies soon. Run dungeons, if you prefer. Don't vendor them. Can be turned in later for xp and reputation.",
				goals = {
					{ t = "collect", item = 21377, itemName = "Deadwood Headdress Feather" },
					{ t = "goto", text = "ding 52,155500", map = 1448, x = 48.4, y = 89.2 },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 5155, title = "Forces of Jaedenar", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.21, y = 82.11, f = "e" },
					{ t = "accept", quest = 5157, title = "Collection of the Corrupt Water", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.21, y = 82.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path into Jaedenar", map = 1448, x = 38.43, y = 59.68 },
					{ t = "use", item = 12922, itemName = "Empty Canteen" },
					{ t = "collect", quest = 5157, item = 12907, itemName = "Corrupt Moonwell Water", oi = 1, map = 1448, x = 35.19, y = 59.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5156, title = "Verifying the Corruption", note = "Explore the Craters in Shatter Scar Vale", map = 1448, x = 41.54, y = 42.98, f = "e" },
				},
			},
			{
				label = "Kill_Entropic_Beasts_And_Horrors",
				along = true,
				goals = {
					{ t = "kill", quest = 5156, npc = 9878, target = "Entropic Beast", count = 2, oi = 1, map = 1448, x = 42.6, y = 41.4, f = "e" },
					{ t = "kill", quest = 5156, npc = 9879, target = "Entropic Horror", count = 2, oi = 2, map = 1448, x = 42.6, y = 41.4, f = "e" },
				},
			},
			{
				note = "Swamp elementals. Inside and outside the cave.",
				goals = {
					{ t = "collect", quest = 4102, item = 11503, itemName = "Blood Amber", count = 15, oi = 1, map = 1448, x = 55.78, y = 16.85, f = "e" },
				},
			},
			{
				note = "Bears. Wolves.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1448, x = 55.88, y = 17.15 },
					{ t = "kill", quest = 4120, npc = 8957, target = "Angerclaw Grizzly", count = 12, oi = 1, map = 1448, x = 52.0, y = 16.0, f = "e" },
					{ t = "kill", quest = 4120, npc = 8961, target = "Felpaw Ravager", count = 12, oi = 2, map = 1448, x = 52.0, y = 16.0, f = "e" },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "turnin", quest = 8462, title = "Speak to Nafien", npc = 15395, npcName = "Nafien", map = 1448, x = 64.77, y = 8.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5082, title = "Threat of the Winterfall", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "turnin", quest = 3908, title = "It's a Secret to Everybody", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
				},
			},
			{
				note = "Furbolgs.",
				goals = {
					{ t = "collect", item = 12771, itemName = "Empty Firewater Flask", map = 1452, x = 30.1, y = 36.4, f = "e" },
					{ t = "use", item = 12771, itemName = "Empty Firewater Flask" },
					{ t = "accept", quest = 5083, title = "Winterfall Firewater", npc = 7441, npcName = "Winterfall Totemic", map = 1452, x = 30.0, y = 35.4, f = "e" },
				},
			},
			{
				label = "Kill_Winterfall_Enemies",
				along = true,
				note = "Shared spawns.",
				goals = {
					{ t = "kill", quest = 5082, npc = 7441, target = "Winterfall Totemic", count = 8, oi = 3, map = 1452, x = 30.0, y = 35.4, f = "e" },
					{ t = "kill", quest = 5082, npc = 7442, target = "Winterfall Pathfinder", count = 8, oi = 1, map = 1452, x = 30.0, y = 35.4, f = "e" },
					{ t = "kill", quest = 5082, npc = 7440, target = "Winterfall Den Watcher", count = 8, oi = 2, map = 1452, x = 30.0, y = 35.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5082, title = "Threat of the Winterfall", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "turnin", quest = 5083, title = "Winterfall Firewater", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "accept", quest = 5084, title = "Falling to Corruption", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "accept", quest = 3909, title = "The Videre Elixir", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
				},
			},
			{
				note = "Taming a temporary pet soon. Learning Claw (Rank 7).",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 4808, title = "Felnok Steelspring", note = "Stable Your Pet", map = 1452, x = 60.39, y = 37.92, f = "e" },
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
					{ t = "complete", quest = 3518, title = "Delivery to Magatha", note = "bank Tablet of Beth'Amara##10538", map = 1452, x = 61.46, y = 36.97, f = "e" },
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "bank Filled Vial Labeled #1##10691", map = 1452, x = 61.46, y = 36.97, f = "e" },
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "bank Filled Vial Labeled #2##10692", map = 1452, x = 61.46, y = 36.97, f = "e" },
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "bank Filled Vial Labeled #3##10693", map = 1452, x = 61.46, y = 36.97, f = "e" },
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "bank Filled Vial Labeled #4##10694", map = 1452, x = 61.46, y = 36.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4808, title = "Felnok Steelspring", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.63, y = 38.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Everlook", map = 1452, x = 60.47, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6162, title = "A Husband's Last Battle", npc = 9620, npcName = "Dreka'Sur", map = 1448, x = 34.8, y = 52.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4505, title = "Well of Corruption", npc = 9996, npcName = "Winna Hazzard", map = 1448, x = 34.21, y = 52.34, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on an Angerclaw Mauler. Diseased brown bears. Kill enemies nearby.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 4102, title = "Cleansing Felwood", note = "Learn the Claw (Rank 7) Pet Ability", map = 1448, x = 39.0, y = 50.4, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 4102, title = "Cleansing Felwood", npc = 9529, npcName = "Maybess Riverbreeze", map = 1448, x = 46.72, y = 83.07, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "collect", quest = 5887, item = 11511, itemName = "Cenarion Beacon", map = 1448, x = 46.72, y = 83.07, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 5157, title = "Collection of the Corrupt Water", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.21, y = 82.11, f = "e" },
					{ t = "accept", quest = 5158, title = "Seeking Spiritual Aid", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.21, y = 82.11, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5156, title = "Verifying the Corruption", npc = 10921, npcName = "Taronn Redfeather", map = 1448, x = 50.89, y = 81.62, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 3541, title = "Delivery to Jes'rimon", npc = 8659, npcName = "Jes'rimon", map = 1454, x = 55.51, y = 34.09, f = "e" },
					{ t = "accept", quest = 3563, title = "Jes'rimon's Payment to Jediga", npc = 8659, npcName = "Jes'rimon", map = 1454, x = 55.51, y = 34.09, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "goto", text = "Train Wolf Riding", map = 1454, x = 69.4, y = 13.1 },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Inside the building. Needed for future quest in Un'Goro Crater.",
				goals = {
					{ t = "collect", quest = 4244, item = 10561, itemName = "Mithril Casing", map = 1454, x = 55.69, y = 62.86, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 4292, item = 11568, itemName = "Torwa's Pouch", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", item = 11018, itemName = "Un'Goro Soil", count = 25, map = 1454, x = 49.58, y = 69.12, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 3563, title = "Jes'rimon's Payment to Jediga", note = "bank Jes'rimon's Note##10680", map = 1454, x = 49.58, y = 69.12, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "goto", text = "Train Raptor Riding", map = 1411, x = 55.28, y = 75.49 },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", text = "Train Undead Horsemanship", map = 1420, x = 60.08, y = 52.57 },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", text = "Train Kodo Riding", map = 1412, x = 46.78, y = 62.01 },
				},
			},
			{
				note = "Abandon your temporary pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 4494, title = "March of the Silithid", note = "Retrieve Your Pet", map = 1413, x = 45.3, y = 58.66, f = "e" },
				},
			},
			{
				note = "Use Beast Training ability.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 4494, title = "March of the Silithid", note = "Teach Claw (Rank 7) to Your Pet" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Camp Taurajo", map = 1413, x = 45.58, y = 59.04, f = "e" },
				},
			},
		},
	})
end

