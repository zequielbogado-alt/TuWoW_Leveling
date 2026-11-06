-- TuWoW_Leveling — Guides/Leveling_Alliance_16.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-duskwood-and-redridge-mountains-25-27-part-2",
		pack = "guides",
		title = "Duskwood & Redridge Mountains (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-wetlands-27-29",
		author = "TuWoW & Zygor",
		minLevel = 25,
		maxLevel = 27,
		zone = 1431,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 126, title = "Howling in the Hills", npc = 415, npcName = "Verner Osgood", map = 1433, x = 25.88, y = 47.27, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 91, title = "Solomon's Law", npc = 900, npcName = "Bailiff Conacher", map = 1433, x = 24.63, y = 44.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 180, title = "WANTED: Lieutenant Fangore", map = 1433, x = 21.66, y = 46.47, f = "e" },
				},
			},
			{
				note = "Gnoll with sword. Walks around. Multiple locations.",
				goals = {
					{ t = "collect", quest = 126, item = 3614, itemName = "Yowler's Paw", oi = 1, map = 1433, x = 22.56, y = 21.38, f = "e" },
				},
			},
			{
				note = "Gnoll with red robe and long sword. Walks around. Careful, enemies pull with him.",
				goals = {
					{ t = "collect", quest = 180, item = 3632, itemName = "Fangore's Paw", oi = 1, map = 1433, x = 75.07, y = 37.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 94, title = "A Watchful Eye", map = 1433, x = 79.27, y = 46.71, f = "e" },
				},
			},
			{
				label = "Collect_Shadowhide_Pendants",
				along = true,
				note = "Gnolls.",
				goals = {
					{ t = "collect", quest = 91, item = 1075, itemName = "Shadowhide Pendant", count = 10, oi = 1, map = 1433, x = 72.5, y = 40.92, f = "e" },
				},
			},
			{
				note = "Inside and outside the cave. Try to stay inside the cave. Next step is inside the cave.",
				goals = {
					{ t = "kill", quest = 128, npc = 435, target = "Blackrock Champion", count = 15, oi = 1, map = 1433, x = 28.12, y = 6.88, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing. Inside the cave.",
				goals = {
					{ t = "accept", quest = 219, title = "Missing In Action", npc = 349, npcName = "Corporal Keeshan", map = 1433, x = 23.3, y = 12.55, f = "e" },
				},
			},
			{
				note = "Follow and protect Corporal Keeshan. Carefully pull enemies to him at the cave exit.",
				goals = {
					{ t = "complete", quest = 219, title = "Missing In Action", note = "Escort Corporal Keeshan Back to Redridge", map = 1433, x = 28.32, y = 48.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 219, title = "Missing In Action", npc = 382, npcName = "Marshal Marris", map = 1433, x = 28.42, y = 48.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 126, title = "Howling in the Hills", npc = 415, npcName = "Verner Osgood", map = 1433, x = 25.88, y = 47.27, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 91, title = "Solomon's Law", npc = 900, npcName = "Bailiff Conacher", map = 1433, x = 24.62, y = 44.27, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 180, title = "WANTED: Lieutenant Fangore", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.9, y = 44.46, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 128, title = "Blackrock Bounty", npc = 903, npcName = "Guard Howe", map = 1433, x = 26.45, y = 57.86, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 74, title = "The Legend of Stalvan", note = "bank A Torn Journal Page##916", map = 1453, x = 64.18, y = 80.48, f = "e" },
					{ t = "complete", quest = 159, title = "Juice Delivery", note = "bank Bottle of Zombie Juice##1451", map = 1453, x = 64.18, y = 80.48, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "accept", quest = 2923, title = "Tinkmaster Overspark", npc = 7917, npcName = "Brother Sarno", map = 1453, x = 51.05, y = 48.33, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 269, title = "Seeking Wisdom", npc = 1212, npcName = "Bishop Farthing", map = 1453, x = 49.95, y = 46.0, f = "e" },
					{ t = "accept", quest = 270, title = "The Doomed Fleet", npc = 1212, npcName = "Bishop Farthing", map = 1453, x = 49.95, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2923, title = "Tinkmaster Overspark", npc = 7944, npcName = "Tinkmaster Overspark", map = 1455, x = 69.54, y = 50.32, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR", "PALADIN", "HUNTER", "ROGUE" } },
				goals = {
					{ t = "goto", text = "Train Guns", map = 1455, x = 61.17, y = 89.52, only = { classes = { "WARRIOR", "HUNTER", "ROGUE" } } },
					{ t = "goto", text = "Train Two-Handed Axes", map = 1455, x = 61.17, y = 89.52, only = { classes = { "WARRIOR", "PALADIN", "HUNTER" } } },
					{ t = "goto", text = "Train Two-Handed Maces", map = 1455, x = 61.17, y = 89.52, only = { classes = { "WARRIOR" } } },
					{ t = "goto", text = "Train One-Handed Maces", map = 1455, x = 61.17, y = 89.52, only = { classes = { "ROGUE" } } },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-wetlands-27-29",
		pack = "guides",
		title = "Wetlands",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-ashenvale-29-30",
		author = "TuWoW & Zygor",
		minLevel = 27,
		maxLevel = 29,
		zone = 1437,
		version = 1,
		steps = {
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 281, title = "Reclaiming Goods", npc = 1242, npcName = "Karl Boran", map = 1437, x = 8.31, y = 58.53, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 471, title = "Apprentice's Duties", npc = 2094, npcName = "James Halloran", map = 1437, x = 8.51, y = 55.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 289, title = "The Cursed Crew", npc = 1239, npcName = "First Mate Fitzsimmons", map = 1437, x = 10.89, y = 59.67, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 270, title = "The Doomed Fleet", npc = 1217, npcName = "Glorin Steelbrow", map = 1437, x = 10.59, y = 60.59, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "sethome", location = "Deepwater Tavern", map = 1437, x = 10.7, y = 60.96, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 472, title = "Fall of Dun Modr", npc = 2097, npcName = "Harlo Barnaby", map = 1437, x = 10.85, y = 55.9, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 464, title = "War Banners", npc = 2104, npcName = "Captain Stoutfist", map = 1437, x = 9.86, y = 57.49, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 281, title = "Reclaiming Goods", map = 1437, x = 13.51, y = 41.38, f = "e" },
					{ t = "accept", quest = 284, title = "The Search Continues", map = 1437, x = 13.51, y = 41.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 284, title = "The Search Continues", map = 1437, x = 13.61, y = 38.21, f = "e" },
					{ t = "accept", quest = 285, title = "Search More Hovels", map = 1437, x = 13.61, y = 38.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 285, title = "Search More Hovels", map = 1437, x = 13.95, y = 34.81, f = "e" },
					{ t = "accept", quest = 286, title = "Return the Statuette", map = 1437, x = 13.95, y = 34.81, f = "e" },
				},
			},
			{
				note = "Underwater. Inside the sunken ship.",
				goals = {
					{ t = "collect", quest = 289, item = 3619, itemName = "Snellig's Snuffbox", oi = 3, map = 1437, x = 14.08, y = 30.01, f = "e" },
				},
			},
			{
				label = "Kill_Cursed_Marines_And_Cursed_Sailors",
				along = true,
				goals = {
					{ t = "kill", quest = 289, npc = 1158, target = "Cursed Marine", count = 5, oi = 2, map = 1437, x = 13.8, y = 29.6, f = "e" },
					{ t = "kill", quest = 289, npc = 1157, target = "Cursed Sailor", count = 13, oi = 1, map = 1437, x = 13.8, y = 29.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 471, item = 3348, itemName = "Giant Crocolisk Skin", count = 6, oi = 1, map = 1437, x = 21.8, y = 23.31, f = "e" },
				},
			},
			{
				note = "Gnolls.",
				goals = {
					{ t = "collect", quest = 277, item = 2611, itemName = "Crude Flint", count = 9, oi = 1, map = 1437, x = 35.21, y = 31.87, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Enter Whelgar's Excavation Site", map = 1437, x = 34.19, y = 41.09 },
					{ t = "goto", text = "Follow the path up", map = 1437, x = 37.11, y = 42.98 },
					{ t = "accept", quest = 295, title = "Ormer's Revenge", npc = 1078, npcName = "Ormer Ironbraid", map = 1437, x = 38.18, y = 50.89, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "accept", quest = 299, title = "Uncovering the Past", npc = 1077, npcName = "Prospector Whelgar", map = 1437, x = 38.81, y = 52.39, f = "e" },
				},
			},
			{
				label = "Kill_Mottled_Scytheclaws_And_Razormaws",
				along = true,
				goals = {
					{ t = "kill", quest = 295, npc = 1022, target = "Mottled Scytheclaw", count = 10, oi = 1, map = 1437, x = 34.14, y = 48.48, f = "e" },
					{ t = "kill", quest = 295, npc = 1023, target = "Mottled Razormaw", count = 10, oi = 2, map = 1437, x = 34.14, y = 48.48, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1437, x = 37.11, y = 42.98 },
					{ t = "turnin", quest = 295, title = "Ormer's Revenge", npc = 1078, npcName = "Ormer Ironbraid", map = 1437, x = 38.18, y = 50.89, f = "e" },
					{ t = "accept", quest = 296, title = "Ormer's Revenge", npc = 1078, npcName = "Ormer Ironbraid", map = 1437, x = 38.18, y = 50.89, f = "e" },
				},
			},
			{
				note = "Blue raptor. Up on the cliff. Walks around. Sometimes walks in the valley.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1437, x = 31.89, y = 48.63 },
					{ t = "collect", quest = 296, item = 3638, itemName = "Sarltooth's Talon", oi = 1, map = 1437, x = 33.26, y = 51.52, f = "e" },
				},
			},
			{
				label = "Collect_Neru_Fragment",
				along = true,
				note = "Large pile of dirt. Multiple locations. Can also be up on the cliff near Sarltooth. notinsticky",
				goals = {
					{ t = "collect", quest = 299, item = 2661, itemName = "Neru Fragment", oi = 4, map = 1437, x = 34.14, y = 48.48, f = "e" },
				},
			},
			{
				label = "Collect_Golm_Fragment",
				along = true,
				note = "Large wide yellow vase. Multiple locations. notinsticky Can also be up on the cliff near Sarltooth. notinsticky",
				goals = {
					{ t = "collect", quest = 299, item = 2660, itemName = "Golm Fragment", oi = 3, map = 1437, x = 34.14, y = 48.48, f = "e" },
				},
			},
			{
				label = "Collect_Modr_Fragment",
				along = true,
				note = "Large tall red vase. Multiple locations. notinsticky Can also be up on the cliff near Sarltooth. notinsticky",
				goals = {
					{ t = "collect", quest = 299, item = 2659, itemName = "Modr Fragment", oi = 2, map = 1437, x = 34.14, y = 48.48, f = "e" },
				},
			},
			{
				label = "Collect_Ados_Fragment",
				along = true,
				note = "Large stone box. Multiple locations. notinsticky Can also be up on the cliff near Sarltooth. notinsticky",
				goals = {
					{ t = "collect", quest = 299, item = 2658, itemName = "Ados Fragment", oi = 1, map = 1437, x = 34.14, y = 48.48, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1437, x = 37.11, y = 42.98 },
					{ t = "turnin", quest = 296, title = "Ormer's Revenge", npc = 1078, npcName = "Ormer Ironbraid", map = 1437, x = 38.18, y = 50.89, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 299, title = "Uncovering the Past", npc = 1077, npcName = "Prospector Whelgar", map = 1437, x = 38.81, y = 52.39, f = "e" },
				},
			},
			{
				note = "Piece of paper.",
				goals = {
					{ t = "goto", text = "Leave Whelgar's Excavation Site", map = 1437, x = 34.02, y = 40.85 },
					{ t = "goto", text = "Enter the Angerfang Encampment", map = 1437, x = 42.99, y = 41.33 },
					{ t = "goto", text = "Follow the path up", map = 1437, x = 41.66, y = 45.36 },
				},
			},
			{
				label = "Collect_Dragonmaw_War_Banners",
				along = true,
				note = "Orcs.",
				goals = {
					{ t = "collect", quest = 464, item = 3337, itemName = "Dragonmaw War Banner", count = 8, oi = 1, map = 1437, x = 46.66, y = 46.89, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 277, title = "Fire Taboo", npc = 1244, npcName = "Rethiel the Greenwarden", map = 1437, x = 56.37, y = 40.4, f = "e" },
					{ t = "accept", quest = 275, title = "Blisters on the Land", npc = 1244, npcName = "Rethiel the Greenwarden", map = 1437, x = 56.37, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 335, item = 2784, itemName = "Musquash Root", oi = 2, map = 1437, x = 64.76, y = 75.29, f = "e" },
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
					{ t = "turnin", quest = 289, title = "The Cursed Crew", npc = 1239, npcName = "First Mate Fitzsimmons", map = 1437, x = 10.89, y = 59.67, f = "e" },
					{ t = "accept", quest = 290, title = "Lifting the Curse", npc = 1239, npcName = "First Mate Fitzsimmons", map = 1437, x = 10.89, y = 59.67, f = "e" },
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
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 5143, npcName = "Toldren Deepiron", map = 1455, x = 25.21, y = 10.74, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5148, npcName = "Beldruk Doombrow", map = 1455, x = 24.55, y = 4.48, f = "e" },
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
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 5167, npcName = "Fenthwick", map = 1455, x = 65.9, y = 88.41, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 286, title = "Return the Statuette", npc = 1242, npcName = "Karl Boran", map = 1437, x = 8.31, y = 58.54, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 471, title = "Apprentice's Duties", npc = 2094, npcName = "James Halloran", map = 1437, x = 8.51, y = 55.71, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 464, title = "War Banners", npc = 2104, npcName = "Captain Stoutfist", map = 1437, x = 9.86, y = 57.49, f = "e" },
					{ t = "accept", quest = 465, title = "Nek'rosh's Gambit", npc = 2104, npcName = "Captain Stoutfist", map = 1437, x = 9.86, y = 57.49, f = "e" },
				},
			},
			{
				note = "Deck of the ship. Run up the ramp in the back.",
				goals = {
					{ t = "collect", quest = 290, item = 2629, itemName = "Intrepid Strongbox Key", oi = 1, map = 1437, x = 15.45, y = 23.61, f = "e" },
				},
			},
			{
				note = "Bottom of the ship. Underwater. Swim through the hole in the bottom.",
				goals = {
					{ t = "turnin", quest = 290, title = "Lifting the Curse", map = 1437, x = 14.37, y = 24.02, f = "e" },
					{ t = "accept", quest = 292, title = "The Eye of Paleth", map = 1437, x = 14.37, y = 24.02, f = "e" },
				},
			},
			{
				note = "Stealthed. Usually near or in water. Find as many as you can as you travel here. Can finish later.",
				goals = {
					{ t = "kill", quest = 275, npc = 1040, target = "Fen Creeper", count = 12, oi = 1, map = 1437, x = 47.4, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 465, title = "Nek'rosh's Gambit", map = 1437, x = 47.4, y = 46.9, f = "e" },
				},
			},
			{
				note = "Stealthed. Usually near or in water.",
				goals = {
					{ t = "kill", quest = 275, npc = 1040, target = "Fen Creeper", count = 12, oi = 1, map = 1437, x = 46.4, y = 35.2, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 275, title = "Blisters on the Land", npc = 1244, npcName = "Rethiel the Greenwarden", map = 1437, x = 56.37, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 631, title = "The Thandol Span", npc = 1075, npcName = "Rhag Garmason", map = 1437, x = 49.92, y = 18.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 472, title = "Fall of Dun Modr", npc = 1071, npcName = "Longbraid the Grim", map = 1437, x = 49.8, y = 18.26, f = "e" },
				},
			},
			{
				note = "There are 2 elite enemies inside the bridge. Run in and crowd control them, or use abilities to escape. Click the corpse and run out quickly.",
				goals = {
					{ t = "complete", quest = 631, title = "The Thandol Span", note = "Click Here to Continue" },
				},
			},
			{
				note = "You will be attacked. Downstairs inside the bridge.",
				goals = {
					{ t = "goto", text = "Enter the doorway on the bridge and run down the stairs", map = 1437, x = 51.36, y = 8.11 },
					{ t = "turnin", quest = 631, title = "The Thandol Span", map = 1437, x = 51.28, y = 7.95, f = "e" },
					{ t = "accept", quest = 632, title = "The Thandol Span", map = 1437, x = 51.28, y = 7.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 632, title = "The Thandol Span", npc = 1075, npcName = "Rhag Garmason", map = 1437, x = 49.92, y = 18.22, f = "e" },
					{ t = "accept", quest = 633, title = "The Thandol Span", npc = 1075, npcName = "Rhag Garmason", map = 1437, x = 49.92, y = 18.22, f = "e" },
				},
			},
			{
				note = "Rolled up white scroll. In the hand of a dead dwarf. Underwater.",
				goals = {
					{ t = "goto", text = "Jump off the bridge into the water", map = 1437, x = 50.65, y = 8.53 },
					{ t = "collect", item = 4433, itemName = "Waterlogged Envelope" },
					{ t = "use", item = 4433, itemName = "Waterlogged Envelope" },
					{ t = "accept", quest = 637, title = "Sully Balloo's Letter", map = 1417, x = 44.29, y = 92.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 633, title = "The Thandol Span", note = "Leave the water and follow the path up", map = 1417, x = 52.83, y = 90.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 633, title = "The Thandol Span", note = "Destroy the Cache of Explosives", map = 1417, x = 48.73, y = 88.05, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 633, title = "The Thandol Span", npc = 1075, npcName = "Rhag Garmason", map = 1437, x = 49.92, y = 18.22, f = "e" },
					{ t = "accept", quest = 634, title = "Plea to the Alliance", npc = 1075, npcName = "Rhag Garmason", map = 1437, x = 49.92, y = 18.22, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 634, title = "Plea to the Alliance", npc = 2700, npcName = "Captain Nials", map = 1417, x = 45.83, y = 47.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Refuge Pointe", map = 1417, x = 45.76, y = 46.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Southshore", map = 1424, x = 49.34, y = 52.27, f = "e" },
				},
			},
			{
				note = "Turtles. Follow the river north. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 555, item = 3712, itemName = "Turtle Meat", count = 10, map = 1424, x = 55.2, y = 57.0, f = "e" },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "getfp", location = "Chillwind Camp", map = 1422, x = 42.93, y = 85.06, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 292, title = "The Eye of Paleth", npc = 1217, npcName = "Glorin Steelbrow", map = 1437, x = 10.58, y = 60.59, f = "e" },
					{ t = "accept", quest = 293, title = "Cleansing the Eye", npc = 1217, npcName = "Glorin Steelbrow", map = 1437, x = 10.58, y = 60.59, f = "e" },
					{ t = "accept", quest = 321, title = "Lightforge Iron", npc = 1217, npcName = "Glorin Steelbrow", map = 1437, x = 10.58, y = 60.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 321, title = "Lightforge Iron", map = 1437, x = 12.1, y = 64.17, f = "e" },
					{ t = "accept", quest = 324, title = "The Lost Ingots", map = 1437, x = 12.1, y = 64.17, f = "e" },
				},
			},
			{
				label = "Collect_Lightforge_Ingots",
				along = true,
				note = "Underwater and on the land.",
				goals = {
					{ t = "collect", quest = 324, item = 2702, itemName = "Lightforge Ingot", count = 5, oi = 1, map = 1437, x = 9.91, y = 68.3, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 324, title = "The Lost Ingots", npc = 1217, npcName = "Glorin Steelbrow", map = 1437, x = 10.59, y = 60.59, f = "e" },
					{ t = "accept", quest = 322, title = "Blessed Arm", npc = 1217, npcName = "Glorin Steelbrow", map = 1437, x = 10.59, y = 60.59, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 3713, itemName = "Soothing Spices", map = 1424, x = 48.94, y = 55.03, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 555, title = "Soothing Turtle Bisque", npc = 2430, npcName = "Chef Jessen", map = 1424, x = 51.89, y = 58.68, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 555, title = "Soothing Turtle Bisque", npc = 2430, npcName = "Chef Jessen", map = 1424, x = 51.89, y = 58.68, f = "e" },
				},
			},
		},
	})
end

