-- TuWoW_Leveling — Guides/Leveling_Horde_15.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-ashenvale-26-28",
		pack = "guides",
		title = "Ashenvale",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-thousand-needles-28-30",
		author = "TuWoW & Zygor",
		minLevel = 26,
		maxLevel = 28,
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "Buy from the Auction House, if possible. Inside the building.",
				goals = {
					{ t = "collect", quest = 6504, item = 16645, itemName = "Shredder Operating Manual - Page 1", map = 1454, x = 55.9, y = 62.71, f = "e" },
					{ t = "collect", quest = 6504, item = 16646, itemName = "Shredder Operating Manual - Page 2", map = 1454, x = 55.9, y = 62.71, f = "e" },
					{ t = "collect", quest = 6504, item = 16647, itemName = "Shredder Operating Manual - Page 3", map = 1454, x = 55.9, y = 62.71, f = "e" },
					{ t = "collect", quest = 6504, item = 16648, itemName = "Shredder Operating Manual - Page 4", map = 1454, x = 55.9, y = 62.71, f = "e" },
					{ t = "collect", quest = 6504, item = 16649, itemName = "Shredder Operating Manual - Page 5", map = 1454, x = 55.9, y = 62.71, f = "e" },
					{ t = "collect", quest = 6504, item = 16650, itemName = "Shredder Operating Manual - Page 6", map = 1454, x = 55.9, y = 62.71, f = "e" },
					{ t = "collect", quest = 6504, item = 16651, itemName = "Shredder Operating Manual - Page 7", map = 1454, x = 55.9, y = 62.71, f = "e" },
					{ t = "collect", quest = 6504, item = 16652, itemName = "Shredder Operating Manual - Page 8", map = 1454, x = 55.9, y = 62.71, f = "e" },
					{ t = "collect", quest = 6504, item = 16653, itemName = "Shredder Operating Manual - Page 9", map = 1454, x = 55.9, y = 62.71, f = "e" },
					{ t = "collect", quest = 6504, item = 16654, itemName = "Shredder Operating Manual - Page 10", map = 1454, x = 55.9, y = 62.71, f = "e" },
					{ t = "collect", quest = 6504, item = 16655, itemName = "Shredder Operating Manual - Page 11", map = 1454, x = 55.9, y = 62.71, f = "e" },
					{ t = "collect", quest = 6504, item = 16656, itemName = "Shredder Operating Manual - Page 12", map = 1454, x = 55.9, y = 62.71, f = "e" },
				},
			},
			{
				note = "Inside the building. Long questing session soon.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 3313, npcName = "Trak'gen", map = 1454, x = 48.13, y = 80.54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6541, title = "Report to Kadrak", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.87, f = "e" },
				},
			},
			{
				note = "Middle level of the tower.",
				goals = {
					{ t = "turnin", quest = 6541, title = "Report to Kadrak", npc = 8582, npcName = "Kadrak", map = 1413, x = 48.12, y = 5.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6504, title = "The Lost Pages", npc = 12718, npcName = "Gurda Ragescar", map = 1440, x = 70.0, y = 71.15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16645, itemName = "Shredder Operating Manual - Page 1" },
					{ t = "collect", quest = 6504, item = 16642, itemName = "Shredder Operating Manual - Chapter 1", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "use", item = 16649, itemName = "Shredder Operating Manual - Page 5" },
					{ t = "collect", quest = 6504, item = 16643, itemName = "Shredder Operating Manual - Chapter 2", oi = 2 },
				},
			},
			{
				goals = {
					{ t = "use", item = 16653, itemName = "Shredder Operating Manual - Page 9" },
					{ t = "collect", quest = 6504, item = 16644, itemName = "Shredder Operating Manual - Chapter 3", oi = 3 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6504, title = "The Lost Pages", npc = 12718, npcName = "Gurda Ragescar", map = 1440, x = 70.0, y = 71.15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6503, title = "Ashenvale Outrunners", npc = 12867, npcName = "Kuray'bin", map = 1440, x = 71.1, y = 68.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6383, title = "The Ashenvale Hunt", npc = 12696, npcName = "Senani Thunderheart", map = 1440, x = 73.78, y = 61.46, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 25, title = "Stonetalon Standstill", npc = 12737, npcName = "Mastok Wrilehiss", map = 1440, x = 73.67, y = 60.01, f = "e" },
				},
			},
			{
				note = "Taming a temporary pet soon. Learning Claw (Rank 4).",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 6503, title = "Ashenvale Outrunners", note = "Stable Your Pet", map = 1440, x = 73.38, y = 61.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6441, title = "Satyr Horns", npc = 12724, npcName = "Pixel", map = 1440, x = 73.06, y = 61.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Splintertree Post", map = 1440, x = 73.18, y = 61.59, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on an Elder Ashenvale Bear. Kill enemies nearby.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 6503, title = "Ashenvale Outrunners", note = "Learn the Claw (Rank 4) Pet Ability", map = 1440, x = 62.2, y = 68.0, f = "e" },
				},
			},
			{
				note = "Abandon your temporary pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 6503, title = "Ashenvale Outrunners", note = "Retrieve Your Pet", map = 1440, x = 73.38, y = 61.03, f = "e" },
				},
			},
			{
				note = "Use Beast Training ability.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 6503, title = "Ashenvale Outrunners", note = "Teach Claw (Rank 4) to Your Pet" },
				},
			},
			{
				note = "Stealthed night elves. Usually near trees. Cast Track Hidden to find them easier. Avoid Sharptalon. Level 31 large blue bird.",
				goals = {
					{ t = "kill", quest = 6503, npc = 12856, target = "Ashenvale Outrunner", count = 9, oi = 1, map = 1440, x = 72.8, y = 70.2, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing.",
				goals = {
					{ t = "accept", quest = 6544, title = "Torek's Assault", npc = 12858, npcName = "Torek", map = 1440, x = 68.34, y = 75.3, f = "e" },
				},
			},
			{
				note = "Follow and protect Torek. He must survive. Move to the balcony inside the building. Let your allies get attacked by the enemies.",
				goals = {
					{ t = "complete", quest = 6544, title = "Torek's Assault", note = "Take Silverwing Outpost", map = 1440, x = 64.66, y = 75.34, f = "e" },
				},
			},
			{
				note = "Kill enemies as you walk. Reduces grinding later.",
				goals = {
					{ t = "complete", quest = 6441, title = "Satyr Horns", note = "Click Here to Continue" },
				},
			},
			{
				note = "Satyrs. Careful, stealthed enemies.",
				goals = {
					{ t = "goto", text = "Follow the path along the river and follow this path up", map = 1440, x = 72.33, y = 49.92 },
					{ t = "collect", quest = 6441, item = 5481, itemName = "Satyr Horns", count = 16, oi = 1, map = 1440, x = 66.98, y = 54.97, f = "e" },
				},
			},
			{
				note = "Careful, stealthed enemies.",
				goals = {
					{ t = "goto", text = "ding 27", map = 1440, x = 66.98, y = 54.97 },
				},
			},
			{
				note = "Black panther. Walks a large pattern.",
				goals = {
					{ t = "collect", item = 16304, itemName = "Shadumbra's Head", map = 1440, x = 57.5, y = 56.1, f = "e" },
					{ t = "use", item = 16304, itemName = "Shadumbra's Head" },
					{ t = "accept", quest = 24, title = "Shadumbra's Head", npc = 12677, npcName = "Shadumbra", map = 1440, x = 57.5, y = 56.1, f = "e" },
				},
			},
			{
				label = "Collect_Etched_Phial",
				along = true,
				goals = {
					{ t = "collect", quest = 1195, item = 5867, itemName = "Etched Phial", map = 1440, x = 59.2, y = 54.4, f = "e" },
				},
			},
			{
				note = "Brown wooden boxes. Mainly top floor inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path north to Thistlefur Hold", map = 1440, x = 44.27, y = 56.27 },
					{ t = "goto", text = "Follow the path up", map = 1440, x = 37.48, y = 32.25 },
					{ t = "collect", quest = 6462, item = 16602, itemName = "Troll Charm", count = 8, oi = 1, map = 1440, x = 38.41, y = 30.57, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing. Bottom floor inside the cave. BEFORE accepting, kill enemies to clear a path to the cave exit. Careful, groups of 3 enemies appear during the escort.",
				goals = {
					{ t = "accept", quest = 6482, title = "Freedom to Ruul", npc = 12818, npcName = "Ruul Snowhoof", map = 1440, x = 41.49, y = 34.5, f = "e" },
				},
			},
			{
				note = "Follow and protect Ruul Snowhoof.",
				goals = {
					{ t = "complete", quest = 6482, title = "Freedom to Ruul", note = "Escort Ruul from the Thistlefurs", map = 1440, x = 38.56, y = 37.47, f = "e" },
				},
			},
			{
				label = "Kill_Thistlefur_Avengers_And_Shamans",
				along = true,
				goals = {
					{ t = "kill", quest = 216, npc = 3925, target = "Thistlefur Avenger", count = 12, oi = 1, map = 1440, x = 39.6, y = 36.4, f = "e" },
					{ t = "kill", quest = 216, npc = 3924, target = "Thistlefur Shaman", count = 12, oi = 2, map = 1440, x = 39.6, y = 36.4, f = "e" },
				},
			},
			{
				note = "Avoid Astranaar.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "use", item = 7767, itemName = "Empty Blue Waterskin" },
					{ t = "collect", quest = 1534, item = 7770, itemName = "Filled Blue Waterskin", oi = 1, map = 1440, x = 33.55, y = 67.44, f = "e" },
				},
			},
			{
				note = "Grey druid bear. Walks a large pattern. Avoid Astranaar.",
				goals = {
					{ t = "collect", item = 16303, itemName = "Ursangous's Paw", map = 1440, x = 39.8, y = 65.2, f = "e" },
					{ t = "use", item = 16303, itemName = "Ursangous's Paw" },
					{ t = "accept", quest = 23, title = "Ursangous's Paw", npc = 12678, npcName = "Ursangous", map = 1440, x = 39.8, y = 65.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 25, title = "Stonetalon Standstill", note = "Scout the Gazebo on Mystral Lake that Overlooks the Nearby Alliance Outpost", map = 1440, x = 48.92, y = 69.57, f = "e" },
				},
			},
			{
				label = "Collect_Befouled_Water_Globe",
				along = true,
				note = "Darker green water elemental. Moves around.",
				goals = {
					{ t = "collect", item = 16408, itemName = "Befouled Water Globe", map = 1440, x = 46.0, y = 70.0, f = "e" },
					{ t = "use", item = 16408, itemName = "Befouled Water Globe" },
					{ t = "accept", quest = 1918, title = "The Befouled Element", npc = 12759, npcName = "Tideress", map = 1440, x = 48.4, y = 69.4, f = "e" },
				},
			},
			{
				label = "Kill_Befouled_Water_Elementals",
				along = true,
				goals = {
					{ t = "kill", quest = 25, npc = 3917, target = "Befouled Water Elemental", count = 12, oi = 1, map = 1440, x = 49.77, y = 70.37, f = "e" },
				},
			},
			{
				note = "Helps reach level 28 after quest turnins. Avoid Silverwind Refuge.",
				goals = {
					{ t = "goto", text = "ding 27,14950", map = 1440, x = 52.4, y = 62.8 },
				},
			},
			{
				goals = {
					{ t = "use", item = 5867, itemName = "Etched Phial" },
					{ t = "collect", quest = 1195, item = 5868, itemName = "Filled Etched Phial", oi = 1, map = 1440, x = 60.2, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up and follow the road back to Splintertree Post", map = 1440, x = 59.51, y = 68.25 },
					{ t = "turnin", quest = 6503, title = "Ashenvale Outrunners", npc = 12867, npcName = "Kuray'bin", map = 1440, x = 71.11, y = 68.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6544, title = "Torek's Assault", npc = 12877, npcName = "Ertog Ragetusk", map = 1440, x = 73.03, y = 62.47, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24, title = "Shadumbra's Head", npc = 12696, npcName = "Senani Thunderheart", map = 1440, x = 73.78, y = 61.46, f = "e" },
					{ t = "turnin", quest = 23, title = "Ursangous's Paw", npc = 12696, npcName = "Senani Thunderheart", map = 1440, x = 73.78, y = 61.46, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6482, title = "Freedom to Ruul", npc = 12837, npcName = "Yama Snowhoof", map = 1440, x = 74.11, y = 60.92, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25, title = "Stonetalon Standstill", npc = 12737, npcName = "Mastok Wrilehiss", map = 1440, x = 73.67, y = 60.0, f = "e" },
					{ t = "turnin", quest = 1918, title = "The Befouled Element", npc = 12737, npcName = "Mastok Wrilehiss", map = 1440, x = 73.67, y = 60.0, f = "e" },
					{ t = "accept", quest = 824, title = "Je'neu of the Earthen Ring", npc = 12737, npcName = "Mastok Wrilehiss", map = 1440, x = 73.67, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6441, title = "Satyr Horns", npc = 12724, npcName = "Pixel", map = 1440, x = 73.06, y = 61.48, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 824, title = "Je'neu of the Earthen Ring", npc = 12736, npcName = "Je'neu Sancrea", map = 1440, x = 11.56, y = 34.29, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6462, title = "Troll Charm", npc = 12721, npcName = "Mitsuwa", map = 1440, x = 11.65, y = 34.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 216, title = "Between a Rock and a Thistlefur", npc = 12757, npcName = "Karang Amakkar", map = 1440, x = 11.9, y = 34.54, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing.",
				goals = {
					{ t = "accept", quest = 6641, title = "Vorsha the Lasher", npc = 12717, npcName = "Muglash", map = 1440, x = 12.06, y = 34.63, f = "e" },
				},
			},
			{
				note = "Follow and protect Muglash. Wait if unable to click. It relights.",
				goals = {
					{ t = "complete", quest = 6641, title = "Vorsha the Lasher", note = "Defeat Vorsha the Lasher", map = 1440, x = 9.63, y = 27.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6641, title = "Vorsha the Lasher", npc = 12863, npcName = "Warsong Runner", map = 1440, x = 12.22, y = 34.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Return to Splintertree Post", map = 1440, x = 73.24, y = 61.54 },
				},
			},
			{
				note = "Level 31 large blue bird. Flies a large pattern.",
				goals = {
					{ t = "collect", item = 16305, itemName = "Sharptalon's Claw", map = 1440, x = 75.0, y = 70.1, f = "e" },
					{ t = "use", item = 16305, itemName = "Sharptalon's Claw" },
					{ t = "accept", quest = 2, title = "Sharptalon's Claw", npc = 12676, npcName = "Sharptalon", map = 1440, x = 75.0, y = 70.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2, title = "Sharptalon's Claw", npc = 12696, npcName = "Senani Thunderheart", map = 1440, x = 73.78, y = 61.46, f = "e" },
					{ t = "accept", quest = 247, title = "The Hunt Completed", npc = 12696, npcName = "Senani Thunderheart", map = 1440, x = 73.78, y = 61.46, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
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
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1456, x = 29.87, y = 29.84 },
					{ t = "turnin", quest = 1086, title = "The Flying Machine Airport", npc = 3419, npcName = "Apothecary Zamah", map = 1456, x = 22.81, y = 20.89, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 3045, npcName = "Malakai Cross", map = 1456, x = 24.55, y = 22.58, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 3047, npcName = "Archmage Shymm", map = 1456, x = 22.76, y = 14.52, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", map = 1456, x = 25.2, y = 14.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1456, x = 29.81, y = 29.82 },
					{ t = "train", npc = 3030, npcName = "Siln Skychaser", map = 1456, x = 22.83, y = 21.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1456, x = 29.87, y = 29.84 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1195, title = "The Sacred Flame", npc = 4721, npcName = "Zangen Stonehoof", map = 1456, x = 54.97, y = 51.41, f = "e" },
					{ t = "accept", quest = 1196, title = "The Sacred Flame", npc = 4721, npcName = "Zangen Stonehoof", map = 1456, x = 54.97, y = 51.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1131, title = "Steelsnap", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.54, y = 80.92, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3040, npcName = "Urek Thunderhorn", map = 1456, x = 59.11, y = 86.86, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3043, npcName = "Ker Ragetotem", map = 1456, x = 57.58, y = 85.52, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Thunder Bluff", map = 1456, x = 45.81, y = 64.71, f = "e" },
				},
			},
		},
	})
end

