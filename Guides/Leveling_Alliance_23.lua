-- TuWoW_Leveling — Guides/Leveling_Alliance_23.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-arathi-highlands-and-alterac-mountains-39-40",
		pack = "guides",
		title = "Arathi Highlands & Alterac Mountains",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-dustwallow-marsh-40-40",
		author = "TuWoW & Zygor",
		minLevel = 39,
		maxLevel = 40,
		zone = 1417,
		version = 1,
		steps = {
			{
				note = "Walks one-way on the road with 4 guards. Respawns if she reaches Tarren Mill. Begins walking again in Arathi Highlands. Can wait for her to respawn at the small house in Arathi.",
				goals = {
					{ t = "collect", quest = 658, item = 4482, itemName = "Sealed Folder", oi = 1, map = 1417, x = 52.5, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 691, title = "Worth Its Weight in Gold", npc = 2788, npcName = "Apprentice Kryten", map = 1417, x = 46.2, y = 47.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 642, title = "The Princess Trapped", map = 1417, x = 62.5, y = 33.8, f = "e" },
				},
			},
			{
				note = "Kobolds. More inside the cave up the path. Avoid Hammerfall. Next step is inside the cave.",
				goals = {
					{ t = "collect", quest = 642, item = 4435, itemName = "Mote of Myzrael", count = 12, oi = 1, map = 1417, x = 76.0, y = 44.2, f = "e" },
				},
			},
			{
				note = "Upstairs inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path up to the cave", map = 1417, x = 80.9, y = 39.96 },
					{ t = "goto", text = "Enter the cave", map = 1417, x = 82.66, y = 36.16 },
					{ t = "turnin", quest = 642, title = "The Princess Trapped", map = 1417, x = 84.31, y = 30.92, f = "e" },
					{ t = "accept", quest = 651, title = "Stones of Binding", map = 1417, x = 84.31, y = 30.92, f = "e" },
				},
			},
			{
				note = "Avoid Hammerfall.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1417, x = 82.69, y = 36.21 },
					{ t = "collect", quest = 651, item = 4484, itemName = "Cresting Key", oi = 2, map = 1417, x = 66.75, y = 29.75, f = "e" },
				},
			},
			{
				label = "Collect_Cresting_Charms_Warrior",
				along = true,
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1714, item = 4481, itemName = "Cresting Charm", count = 8, map = 1417, x = 66.2, y = 31.6, f = "e" },
				},
			},
			{
				note = "Inside the cave. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 691, item = 5040, itemName = "Shadow Hunter Knife", oi = 3, map = 1417, x = 68.32, y = 75.18, f = "e" },
				},
			},
			{
				label = "Collect_Witherbark_Medicine_Pouches",
				along = true,
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1417, x = 68.32, y = 75.18 },
					{ t = "collect", quest = 691, item = 4522, itemName = "Witherbark Medicine Pouch", count = 4, oi = 2, map = 1417, x = 65.8, y = 68.0, f = "e" },
				},
			},
			{
				label = "Collect_Witherbark_Tusks",
				along = true,
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1417, x = 68.32, y = 75.18 },
					{ t = "collect", quest = 691, item = 4503, itemName = "Witherbark Tusk", count = 10, oi = 1, map = 1417, x = 65.8, y = 68.0, f = "e" },
				},
			},
			{
				note = "Up on the ridge.",
				goals = {
					{ t = "turnin", quest = 658, title = "Hints of a New Plague?", npc = 2712, npcName = "Quae", map = 1417, x = 60.19, y = 53.85, f = "e" },
					{ t = "accept", quest = 657, title = "Hints of a New Plague?", npc = 2712, npcName = "Quae", map = 1417, x = 60.19, y = 53.85, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until she respawns, if missing.",
				goals = {
					{ t = "turnin", quest = 657, title = "Hints of a New Plague?", npc = 2713, npcName = "Kinelory", map = 1417, x = 60.24, y = 53.92, f = "e" },
					{ t = "accept", quest = 660, title = "Hints of a New Plague?", npc = 2713, npcName = "Kinelory", map = 1417, x = 60.24, y = 53.92, f = "e" },
				},
			},
			{
				note = "Follow and protect Kinelory.",
				goals = {
					{ t = "complete", quest = 660, title = "Hints of a New Plague?", note = "Protect Kinelory", map = 1417, x = 60.24, y = 53.92, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 660, title = "Hints of a New Plague?", npc = 2712, npcName = "Quae", map = 1417, x = 60.19, y = 53.85, f = "e" },
					{ t = "accept", quest = 661, title = "Hints of a New Plague?", npc = 2712, npcName = "Quae", map = 1417, x = 60.19, y = 53.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 651, item = 4485, itemName = "Thundering Key", oi = 3, map = 1417, x = 52.04, y = 50.77, f = "e" },
				},
			},
			{
				label = "Collect_Thundering_Charms_Warrior",
				along = true,
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1714, item = 4480, itemName = "Thundering Charm", count = 8, map = 1417, x = 52.2, y = 52.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 691, title = "Worth Its Weight in Gold", npc = 2788, npcName = "Apprentice Kryten", map = 1417, x = 46.2, y = 47.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 661, title = "Hints of a New Plague?", npc = 2711, npcName = "Phin Odelic", map = 1424, x = 50.34, y = 59.04, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Southshore", map = 1424, x = 51.17, y = 58.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 500, title = "Crushridge Bounty", npc = 2263, npcName = "Marshal Redpath", map = 1424, x = 49.48, y = 58.73, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 525, title = "Further Mysteries", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.14, y = 59.11, f = "e" },
					{ t = "accept", quest = 537, title = "Dark Council", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.14, y = 59.11, f = "e" },
					{ t = "accept", quest = 512, title = "Noble Deaths", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.14, y = 59.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 602, title = "Magical Analysis", npc = 2543, npcName = "Archmage Ansirem Runeweaver", map = 1416, x = 18.84, y = 78.49, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 603, title = "Ansirem's Key", npc = 2543, npcName = "Archmage Ansirem Runeweaver", map = 1416, x = 18.84, y = 78.49, f = "e" },
				},
			},
			{
				note = "Careful, stealthed enemies. Inside the building.",
				goals = {
					{ t = "collect", quest = 537, item = 3672, itemName = "Head of Nagaz", oi = 2, map = 1416, x = 39.22, y = 14.31, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "collect", item = 3706, itemName = "Ensorcelled Parchment" },
					{ t = "use", item = 3706, itemName = "Ensorcelled Parchment" },
					{ t = "accept", quest = 551, title = "The Ensorcelled Parchment", map = 1416, x = 39.18, y = 14.66, f = "e" },
				},
			},
			{
				note = "Humans in brown robes. Careful, stealthed enemies. Inside buildings.",
				goals = {
					{ t = "kill", quest = 537, npc = 2318, target = "Argus Shadow Mage", count = 4, oi = 1, map = 1416, x = 63.4, y = 43.8, f = "e" },
				},
			},
			{
				label = "Collect_Alterac_Signet_Rings",
				along = true,
				note = "Careful, stealthed enemies. notinsticky",
				goals = {
					{ t = "collect", quest = 512, item = 3505, itemName = "Alterac Signet Ring", count = 7, oi = 1, map = 1416, x = 62.2, y = 45.6, f = "e" },
				},
			},
			{
				note = "Ogres.",
				goals = {
					{ t = "collect", quest = 500, item = 2843, itemName = "Dirty Knucklebones", count = 9, oi = 1, map = 1416, x = 54.4, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 500, title = "Crushridge Bounty", npc = 2263, npcName = "Marshal Redpath", map = 1424, x = 49.48, y = 58.73, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 537, title = "Dark Council", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.14, y = 59.11, f = "e" },
					{ t = "turnin", quest = 512, title = "Noble Deaths", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.14, y = 59.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 551, title = "The Ensorcelled Parchment", npc = 2277, npcName = "Loremaster Dibbs", map = 1424, x = 50.57, y = 57.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1449, title = "To The Hinterlands", npc = 5635, npcName = "Falstad Wildhammer", map = 1425, x = 11.81, y = 46.76, f = "e" },
					{ t = "accept", quest = 1450, title = "Gryphon Master Talonaxe", npc = 5635, npcName = "Falstad Wildhammer", map = 1425, x = 11.81, y = 46.76, f = "e" },
				},
			},
			{
				note = "Inside the building. Top of the path.",
				goals = {
					{ t = "turnin", quest = 1450, title = "Gryphon Master Talonaxe", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.76, y = 44.48, f = "e" },
					{ t = "accept", quest = 1451, title = "Rhapsody Shindigger", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.76, y = 44.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1425, x = 20.81, y = 47.82 },
					{ t = "turnin", quest = 1451, title = "Rhapsody Shindigger", npc = 5634, npcName = "Rhapsody Shindigger", map = 1425, x = 26.94, y = 48.59, f = "e" },
					{ t = "accept", quest = 1452, title = "Rhapsody's Kalimdor Kocktail", npc = 5634, npcName = "Rhapsody Shindigger", map = 1425, x = 26.94, y = 48.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 693, title = "Wand over Fist", npc = 2789, npcName = "Skuerto", map = 1417, x = 46.65, y = 47.01, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1417, x = 53.75, y = 77.37 },
					{ t = "collect", quest = 693, item = 4525, itemName = "Trelane's Wand of Invocation", oi = 1, map = 1417, x = 54.75, y = 81.87, f = "e" },
				},
			},
			{
				note = "Helps reach level 40 after quest turnins. Inside and outside the cave.",
				goals = {
					{ t = "goto", text = "ding 39,82700", map = 1417, x = 54.75, y = 81.87 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1417, x = 53.68, y = 77.23 },
					{ t = "turnin", quest = 693, title = "Wand over Fist", npc = 2789, npcName = "Skuerto", map = 1417, x = 46.65, y = 47.01, f = "e" },
				},
			},
			{
				note = "Buy level 40 ammo when restocking.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 651, title = "Stones of Binding", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 651, item = 4483, itemName = "Burning Key", oi = 1, map = 1417, x = 25.45, y = 30.16, f = "e" },
				},
			},
			{
				label = "Collect_Burning_Charms_Warrior",
				along = true,
				note = "Avoid Refuge Point.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1714, item = 4479, itemName = "Burning Charm", count = 8, map = 1417, x = 24.4, y = 30.4, f = "e" },
				},
			},
			{
				note = "Level 40 elite enemy soon. Need to use another Nature Protection Potion during the fight. Use one now so cooldown is ready during the fight. Potion lasts 1 hour, plenty of time.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "use", item = 6052, itemName = "Nature Protection Potion" },
				},
			},
			{
				note = "Follow the river north. Complete the Essence of the Exile quest.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1712, item = 6851, itemName = "Essence of the Exile", oi = 3, map = 1416, x = 79.32, y = 66.81, f = "e" },
				},
			},
			{
				note = "Inside the building. Make sure your Nature Protection Potion cooldown is finished.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1712, title = "Cyclonian", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
					{ t = "accept", quest = 1713, title = "The Summoning", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
				},
			},
			{
				note = "Follow Bath'rah the Windwatcher. Summons Cyclonian. Level 40 elite. Use another Nature Protection Potion when first one wears off. May need help.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1713, item = 6894, itemName = "Whirlwind Heart", oi = 1, map = 1416, x = 80.6, y = 62.52, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1713, title = "The Summoning", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
					{ t = "accept", quest = 1792, title = "Whirlwind Weapon", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 651, title = "Stones of Binding", map = 1417, x = 36.19, y = 57.37, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Follow the path through the mountains", map = 1417, x = 31.22, y = 65.35 },
					{ t = "goto", text = "Run through the tunnel to Faldir's Cove", map = 1417, x = 21.58, y = 75.61 },
					{ t = "accept", quest = 663, title = "Land Ho!", npc = 2766, npcName = "Lolo the Lookout", map = 1417, x = 31.78, y = 82.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 663, title = "Land Ho!", npc = 2610, npcName = "Shakes O'Breen", map = 1417, x = 32.28, y = 81.38, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 662, title = "Deep Sea Salvage", npc = 2767, npcName = "First Mate Nilzlix", map = 1417, x = 32.77, y = 81.47, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 664, title = "Drowned Sorrows", npc = 2769, npcName = "Captain Steelgut", map = 1417, x = 34.0, y = 80.79, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing.",
				goals = {
					{ t = "accept", quest = 665, title = "Sunken Treasure", npc = 2768, npcName = "Professor Phizzlethorpe", map = 1417, x = 33.87, y = 80.55, f = "e" },
				},
			},
			{
				note = "Follow and protect Professor Phizzlethorpe.",
				goals = {
					{ t = "complete", quest = 665, title = "Sunken Treasure", note = "Defend Professor Phizzlethorpe", map = 1417, x = 33.87, y = 80.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 665, title = "Sunken Treasure", npc = 2774, npcName = "Doctor Draxlegauge", map = 1417, x = 33.86, y = 80.45, f = "e" },
					{ t = "accept", quest = 666, title = "Sunken Treasure", npc = 2774, npcName = "Doctor Draxlegauge", map = 1417, x = 33.86, y = 80.45, f = "e" },
				},
			},
			{
				note = "Brown book in a metal cauldron. Middle floor inside the sunken ship.",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 662, item = 4489, itemName = "Maiden's Folly Log", oi = 2, map = 1417, x = 23.41, y = 85.1, f = "e" },
				},
			},
			{
				note = "Tan flat scroll. Middle floor inside the sunken ship.",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 662, item = 4487, itemName = "Maiden's Folly Charts", oi = 1, map = 1417, x = 23.04, y = 84.51, f = "e" },
				},
			},
			{
				note = "Tan flat scroll. Middle floor inside the sunken ship.",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 662, item = 4488, itemName = "Spirit of Silverpine Charts", oi = 3, map = 1417, x = 20.45, y = 85.6, f = "e" },
				},
			},
			{
				note = "Open book. Very bottom inside the ship.",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 662, item = 4490, itemName = "Spirit of Silverpine Log", oi = 4, map = 1417, x = 20.65, y = 85.1, f = "e" },
				},
			},
			{
				label = "Collect_Elven_Gems",
				along = true,
				note = "Large grey stones. On your minimap.",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 666, item = 4492, itemName = "Elven Gem", count = 10, oi = 1, map = 1417, x = 23.6, y = 87.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 666, title = "Sunken Treasure", note = "Equip Your Regular Head Armor" },
				},
			},
			{
				label = "Kill_Daggerspine_Sorceresses_And_Raiders",
				along = true,
				note = "Underwater. notinsticky",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "kill", quest = 664, npc = 2596, target = "Daggerspine Sorceress", count = 3, oi = 2, map = 1417, x = 19.2, y = 84.0, f = "e" },
					{ t = "kill", quest = 664, npc = 2595, target = "Daggerspine Raider", count = 10, oi = 1, map = 1417, x = 19.2, y = 84.0, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 662, title = "Deep Sea Salvage", npc = 2767, npcName = "First Mate Nilzlix", map = 1417, x = 32.8, y = 81.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 664, title = "Drowned Sorrows", npc = 2769, npcName = "Captain Steelgut", map = 1417, x = 34.0, y = 80.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 666, title = "Sunken Treasure", npc = 2774, npcName = "Doctor Draxlegauge", map = 1417, x = 33.85, y = 80.45, f = "e" },
					{ t = "accept", quest = 668, title = "Sunken Treasure", npc = 2774, npcName = "Doctor Draxlegauge", map = 1417, x = 33.85, y = 80.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 668, title = "Sunken Treasure", npc = 2610, npcName = "Shakes O'Breen", map = 1417, x = 32.29, y = 81.38, f = "e" },
					{ t = "accept", quest = 669, title = "Sunken Treasure", npc = 2610, npcName = "Shakes O'Breen", map = 1417, x = 32.29, y = 81.38, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 554, title = "Stormpike's Deciphering", npc = 2277, npcName = "Loremaster Dibbs", map = 1424, x = 50.57, y = 57.09, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 554, title = "Stormpike's Deciphering", npc = 1356, npcName = "Prospector Stormpike", map = 1455, x = 74.64, y = 11.74, f = "e" },
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
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10090, npcName = "Belia Thundergranite", map = 1455, x = 70.86, y = 85.84, f = "e" },
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
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 4487, title = "Summon Felsteed", npc = 5172, npcName = "Briarthorn", map = 1455, x = 50.35, y = 5.66, f = "e" },
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
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 5143, npcName = "Toldren Deepiron", map = 1455, x = 25.21, y = 10.74, f = "e" },
				},
			},
		},
	})
end

