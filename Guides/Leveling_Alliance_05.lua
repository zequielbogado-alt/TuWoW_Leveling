-- TuWoW_Leveling — Guides/Leveling_Alliance_05.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-dwarf-and-gnome-starter-1-13-part-2",
		pack = "guides",
		title = "Dwarf & Gnome Starter (Parte 2/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-dwarf-and-gnome-starter-1-13-part-3",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1426,
		version = 1,
		races = { "Dwarf", "Gnome" },
		steps = {
			{
				goals = {
					{ t = "accept", quest = 5541, title = "Ammo for Rumbleshot", npc = 1694, npcName = "Loslor Rudge", map = 1426, x = 50.08, y = 49.42, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARRIOR", "PALADIN", "ROGUE" } },
				goals = {
					{ t = "skill", level = 75, skill = "Mining" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5541, item = 13850, itemName = "Rumbleshot's Ammo", oi = 1, map = 1426, x = 44.14, y = 56.94, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1426, x = 42.2, y = 54.13 },
				},
			},
			{
				label = "Collect_Wendigo_Manes",
				along = true,
				note = "Yetis. Inside and outside the cave.",
				goals = {
					{ t = "collect", quest = 313, item = 2671, itemName = "Wendigo Mane", count = 8, oi = 1, map = 1426, x = 42.33, y = 54.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1426, x = 42.2, y = 54.13 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5541, title = "Ammo for Rumbleshot", npc = 1243, npcName = "Hegnar Rumbleshot", map = 1426, x = 40.68, y = 65.13, f = "e" },
				},
			},
			{
				label = "Collect_Thick_Bear_Fur",
				along = true,
				goals = {
					{ t = "collect", quest = 317, item = 6952, itemName = "Thick Bear Fur", count = 2, oi = 2, map = 1426, x = 41.4, y = 59.2, f = "e" },
				},
			},
			{
				label = "Collect_Chunks_Of_Boar_Meat_And_Crag_Boar_Ribs",
				along = true,
				note = "Don't vendor them.",
				goals = {
					{ t = "collect", quest = 317, item = 769, itemName = "Chunk of Boar Meat", count = 4, map = 1426, x = 41.4, y = 59.2, f = "e" },
					{ t = "collect", quest = 384, item = 2886, itemName = "Crag Boar Rib", count = 6, map = 1426, x = 41.4, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 287, title = "Frostmane Hold", npc = 1252, npcName = "Senir Whitebeard", map = 1426, x = 46.77, y = 53.81, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 2894, itemName = "Rhapsody Malt", map = 1426, x = 47.38, y = 52.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 384, title = "Beer Basted Boar Ribs", npc = 1267, npcName = "Ragnar Thunderbrew", map = 1426, x = 46.83, y = 52.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 317, title = "Stocking Jetsteam", npc = 1378, npcName = "Pilot Bellowfiz", map = 1426, x = 49.43, y = 48.41, f = "e" },
					{ t = "accept", quest = 318, title = "Evershine", npc = 1378, npcName = "Pilot Bellowfiz", map = 1426, x = 49.43, y = 48.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 313, title = "The Grizzled Den", npc = 1377, npcName = "Pilot Stonegear", map = 1426, x = 49.62, y = 48.61, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 5612, npcName = "Gimrizz Shadowcog", map = 1426, x = 47.33, y = 53.69, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6328, npcName = "Dannie Fizzwizzle", map = 1426, x = 47.28, y = 53.67, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 1228, npcName = "Magis Sparkmantle", map = 1426, x = 47.5, y = 52.08, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 1232, npcName = "Azar Stronghammer", map = 1426, x = 47.6, y = 52.07, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", map = 1426, x = 47.59, y = 51.95, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 1226, npcName = "Maxan Anvol", map = 1426, x = 47.34, y = 52.19, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 1234, npcName = "Hogral Bakkan", map = 1426, x = 47.56, y = 52.61, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 1229, npcName = "Granis Swiftaxe", map = 1426, x = 47.36, y = 52.65, f = "e" },
				},
			},
			{
				note = "Inside the building. If possible.",
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "skill", level = 75, skill = "First Aid" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 412, title = "Operation Recombobulation", npc = 1269, npcName = "Razzle Sprysprocket", map = 1426, x = 45.85, y = 49.37, f = "e" },
				},
			},
			{
				note = "Avoid the elite yeti that walks nearby. Top of the mountain.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1426, x = 39.61, y = 48.01 },
					{ t = "accept", quest = 312, title = "Tundra MacGrann's Stolen Stash", npc = 1266, npcName = "Tundra MacGrann", map = 1426, x = 34.57, y = 51.65, f = "e" },
				},
			},
			{
				note = "Wait for the elite yeti to walk away. Inside the small cave. HURRY. Yeti runs back quickly.",
				goals = {
					{ t = "collect", quest = 312, item = 2667, itemName = "MacGrann's Dried Meats", oi = 1, map = 1426, x = 38.51, y = 53.93, f = "e" },
				},
			},
			{
				note = "Avoid the elite yeti that walks nearby. Top of the mountain.",
				goals = {
					{ t = "turnin", quest = 312, title = "Tundra MacGrann's Stolen Stash", npc = 1266, npcName = "Tundra MacGrann", map = 1426, x = 34.57, y = 51.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 318, title = "Evershine", npc = 1374, npcName = "Rejold Barleybrew", map = 1426, x = 30.19, y = 45.73, f = "e" },
					{ t = "accept", quest = 319, title = "A Favor for Evershine", npc = 1374, npcName = "Rejold Barleybrew", map = 1426, x = 30.19, y = 45.73, f = "e" },
					{ t = "accept", quest = 315, title = "The Perfect Stout", npc = 1374, npcName = "Rejold Barleybrew", map = 1426, x = 30.19, y = 45.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 310, title = "Bitter Rivals", npc = 1375, npcName = "Marleth Barleybrew", map = 1426, x = 30.19, y = 45.53, f = "e" },
				},
			},
			{
				note = "Wooden baskets. Top of the mountain.",
				goals = {
					{ t = "collect", quest = 315, item = 2676, itemName = "Shimmerweed", count = 6, oi = 1, map = 1426, x = 41.33, y = 44.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 319, npc = 1196, target = "Ice Claw Bear", count = 6, oi = 1, map = 1426, x = 32.61, y = 37.37, f = "e" },
					{ t = "kill", quest = 319, npc = 1127, target = "Elder Crag Boar", count = 8, oi = 2, map = 1426, x = 32.61, y = 37.37, f = "e" },
					{ t = "kill", quest = 319, npc = 1201, target = "Snow Leopard", count = 8, oi = 3, map = 1426, x = 32.61, y = 37.37, f = "e" },
				},
			},
			{
				note = "Anywhere near Brewnall Village. No death penalty at this level. Fast travel.",
				goals = {
					{ t = "complete", quest = 319, title = "A Favor for Evershine", note = "Die on Purpose", map = 1426, x = 32.61, y = 37.37, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 319, title = "A Favor for Evershine", note = "Resurrect at the Spirit Healer", map = 1426, x = 47.05, y = 55.1, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 2686, itemName = "Thunder Ale", map = 1426, x = 47.38, y = 52.52, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "accept", quest = 308, title = "Distracting Jarven", npc = 1373, npcName = "Jarven Thunderbrew", map = 1426, x = 47.64, y = 52.66, f = "e" },
				},
			},
			{
				note = "Takes a moment. Downstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 310, title = "Bitter Rivals", map = 1426, x = 47.7, y = 52.69, f = "e" },
					{ t = "accept", quest = 311, title = "Return to Marleth", map = 1426, x = 47.7, y = 52.69, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Thunderbrew Distillery", map = 1426, x = 47.38, y = 52.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1426, x = 41.9, y = 47.23 },
					{ t = "turnin", quest = 311, title = "Return to Marleth", npc = 1375, npcName = "Marleth Barleybrew", map = 1426, x = 30.19, y = 45.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 319, title = "A Favor for Evershine", npc = 1374, npcName = "Rejold Barleybrew", map = 1426, x = 30.19, y = 45.73, f = "e" },
					{ t = "accept", quest = 320, title = "Return to Bellowfiz", npc = 1374, npcName = "Rejold Barleybrew", map = 1426, x = 30.19, y = 45.73, f = "e" },
					{ t = "turnin", quest = 315, title = "The Perfect Stout", npc = 1374, npcName = "Rejold Barleybrew", map = 1426, x = 30.19, y = 45.73, f = "e" },
					{ t = "accept", quest = 413, title = "Shimmer Stout", npc = 1374, npcName = "Rejold Barleybrew", map = 1426, x = 30.19, y = 45.73, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1426, x = 24.84, y = 50.89 },
					{ t = "complete", quest = 287, title = "Frostmane Hold", note = "Fully Explore Frostmane Hold", map = 1426, x = 21.2, y = 54.0, f = "e" },
				},
			},
			{
				label = "Kill_Frostmane_Headhunters",
				along = true,
				note = "Inside and outside the cave. notinsticky",
				goals = {
					{ t = "kill", quest = 287, npc = 1123, target = "Frostmane Headhunter", count = 5, oi = 1, map = 1426, x = 24.87, y = 50.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1426, x = 25.07, y = 50.99 },
					{ t = "collect", quest = 412, item = 3083, itemName = "Restabilization Cog", count = 8, oi = 1, map = 1426, x = 26.1, y = 39.86, f = "e" },
					{ t = "collect", quest = 412, item = 3084, itemName = "Gyromechanic Gear", count = 8, oi = 2, map = 1426, x = 26.1, y = 39.86, f = "e" },
				},
			},
			{
				note = "Helps reach level 10 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 9,5900", map = 1426, x = 26.1, y = 39.86 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 287, title = "Frostmane Hold", npc = 1252, npcName = "Senir Whitebeard", map = 1426, x = 46.77, y = 53.81, f = "e" },
					{ t = "accept", quest = 291, title = "The Reports", npc = 1252, npcName = "Senir Whitebeard", map = 1426, x = 46.77, y = 53.81, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 5612, npcName = "Gimrizz Shadowcog", map = 1426, x = 47.33, y = 53.69, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6328, npcName = "Dannie Fizzwizzle", map = 1426, x = 47.28, y = 53.67, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 1228, npcName = "Magis Sparkmantle", map = 1426, x = 47.5, y = 52.08, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 1232, npcName = "Azar Stronghammer", map = 1426, x = 47.6, y = 52.07, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", map = 1426, x = 47.59, y = 51.95, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 1226, npcName = "Maxan Anvol", map = 1426, x = 47.34, y = 52.19, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 5637, title = "Desperate Prayer", npc = 1226, npcName = "Maxan Anvol", map = 1426, x = 47.34, y = 52.19, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 1234, npcName = "Hogral Bakkan", map = 1426, x = 47.56, y = 52.61, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 1229, npcName = "Granis Swiftaxe", map = 1426, x = 47.36, y = 52.65, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 6064, title = "Taming the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.03, f = "e" },
				},
			},
			{
				note = "On a Large Crag Boar.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15911, itemName = "Taming Rod" },
					{ t = "complete", quest = 6064, title = "Taming the Beast", note = "Tame a Large Crag Boar", map = 1426, x = 49.8, y = 53.4, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6064, title = "Taming the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
					{ t = "accept", quest = 6084, title = "Taming the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
				},
			},
			{
				note = "On a Snow Leopard. Dismiss your pet first.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15913, itemName = "Taming Rod" },
					{ t = "complete", quest = 6084, title = "Taming the Beast", note = "Tame a Snow Leopard", map = 1426, x = 48.2, y = 57.4, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6084, title = "Taming the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
					{ t = "accept", quest = 6085, title = "Taming the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
				},
			},
			{
				note = "On an Ice Claw Bear. Dismiss your pet first.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15908, itemName = "Taming Rod" },
					{ t = "complete", quest = 6085, title = "Taming the Beast", note = "Tame an Ice Claw Bear", map = 1426, x = 50.2, y = 53.0, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6085, title = "Taming the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
					{ t = "accept", quest = 6086, title = "Training the Beast", npc = 1231, npcName = "Grif Wildheart", map = 1426, x = 45.81, y = 53.04, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6086, title = "Training the Beast", npc = 10090, npcName = "Belia Thundergranite", map = 1455, x = 70.87, y = 85.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10090, npcName = "Belia Thundergranite", map = 1455, x = 70.86, y = 85.85, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 412, title = "Operation Recombobulation", npc = 1269, npcName = "Razzle Sprysprocket", map = 1426, x = 45.85, y = 49.37, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 320, title = "Return to Bellowfiz", npc = 1378, npcName = "Pilot Bellowfiz", map = 1426, x = 49.43, y = 48.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 433, title = "The Public Servant", npc = 1977, npcName = "Senator Mehr Stonehallow", map = 1426, x = 68.67, y = 55.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 432, title = "Those Blasted Troggs!", npc = 1254, npcName = "Foreman Stonebrow", map = 1426, x = 69.08, y = 56.33, f = "e" },
				},
			},
			{
				note = "More inside the cave nearby.",
				goals = {
					{ t = "kill", quest = 432, npc = 1115, target = "Rockjaw Skullthumper", count = 6, oi = 1, map = 1426, x = 69.17, y = 58.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1426, x = 70.7, y = 56.49 },
					{ t = "turnin", quest = 432, title = "Those Blasted Troggs!", npc = 1254, npcName = "Foreman Stonebrow", map = 1426, x = 69.08, y = 56.33, f = "e" },
				},
			},
			{
				label = "Kill_Rockjaw_Bonesnappers",
				along = true,
				goals = {
					{ t = "kill", quest = 433, npc = 1117, target = "Rockjaw Bonesnapper", count = 10, oi = 1, map = 1426, x = 75.24, y = 56.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 433, title = "The Public Servant", npc = 1977, npcName = "Senator Mehr Stonehallow", map = 1426, x = 68.67, y = 55.97, f = "e" },
				},
			},
			{
				note = "Follow the road through the tunnel.",
				goals = {
					{ t = "accept", quest = 419, title = "The Lost Pilot", npc = 1960, npcName = "Pilot Hammerfoot", map = 1426, x = 83.89, y = 39.19, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 419, title = "The Lost Pilot", map = 1426, x = 79.67, y = 36.17, f = "e" },
					{ t = "accept", quest = 417, title = "A Pilot's Revenge", map = 1426, x = 79.67, y = 36.17, f = "e" },
				},
			},
			{
				note = "White bear. Walks around.",
				goals = {
					{ t = "collect", quest = 417, item = 3183, itemName = "Mangy Claw", oi = 1, map = 1426, x = 78.97, y = 37.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 417, title = "A Pilot's Revenge", npc = 1960, npcName = "Pilot Hammerfoot", map = 1426, x = 83.89, y = 39.19, f = "e" },
				},
			},
			{
				note = "Follow the road through the tunnels.",
				goals = {
					{ t = "turnin", quest = 413, title = "Shimmer Stout", npc = 1959, npcName = "Mountaineer Barleybrew", map = 1426, x = 86.28, y = 48.81, f = "e" },
					{ t = "accept", quest = 414, title = "Stout to Kadrell", npc = 1959, npcName = "Mountaineer Barleybrew", map = 1426, x = 86.28, y = 48.81, f = "e" },
				},
			},
			{
				note = "Inside the small cave. Top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1426, x = 86.9, y = 46.97 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 224, title = "In Defense of the King's Lands", npc = 1089, npcName = "Mountaineer Cobbleflint", map = 1432, x = 22.07, y = 73.12, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 267, title = "The Trogg Threat", npc = 1092, npcName = "Captain Rugelfuss", map = 1432, x = 23.23, y = 73.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the road to the path here", map = 1432, x = 29.32, y = 66.73 },
					{ t = "collect", quest = 267, item = 2536, itemName = "Trogg Stone Tooth", count = 8, oi = 1, map = 1432, x = 32.79, y = 74.99, f = "e" },
				},
			},
			{
				label = "Kill_Stonesplinter_Troggs_And_Scouts",
				along = true,
				goals = {
					{ t = "kill", quest = 224, npc = 1161, target = "Stonesplinter Trogg", count = 10, oi = 1, map = 1432, x = 32.79, y = 74.99, f = "e" },
					{ t = "kill", quest = 224, npc = 1162, target = "Stonesplinter Scout", count = 10, oi = 2, map = 1432, x = 32.79, y = 74.99, f = "e" },
				},
			},
			{
				label = "Collect_Linen_Cloth_Paladin",
				along = true,
				note = "Needed for class quest soon. Don't vendor them.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 1648, item = 2589, itemName = "Linen Cloth", count = 10, map = 1432, x = 32.79, y = 74.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave Stonesplinter Valley and follow the road", map = 1432, x = 30.57, y = 69.69 },
					{ t = "turnin", quest = 224, title = "In Defense of the King's Lands", npc = 1089, npcName = "Mountaineer Cobbleflint", map = 1432, x = 22.07, y = 73.13, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 267, title = "The Trogg Threat", npc = 1092, npcName = "Captain Rugelfuss", map = 1432, x = 23.23, y = 73.67, f = "e" },
				},
			},
		},
	})
end

