-- TuWoW_Leveling — Guides/Leveling_Alliance_14.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-wetlands-24-25",
		pack = "guides",
		title = "Wetlands",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-duskwood-and-redridge-mountains-25-27",
		author = "TuWoW & Zygor",
		minLevel = 24,
		maxLevel = 25,
		zone = 1437,
		version = 1,
		steps = {
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 484, title = "Young Crocolisk Skins", npc = 2094, npcName = "James Halloran", map = 1437, x = 8.51, y = 55.71, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 279, title = "Claws from the Deep", npc = 1242, npcName = "Karl Boran", map = 1437, x = 8.31, y = 58.53, f = "e" },
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
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "learnspell Teleport: Ironforge##3562", map = 1455, x = 25.5, y = 7.07 },
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
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", map = 1455, x = 47.15, y = 13.87, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 968, title = "The Powers Below", npc = 2786, npcName = "Gerrig Bonegrip", map = 1455, x = 50.83, y = 5.62, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 288, title = "The Third Fleet", npc = 1239, npcName = "First Mate Fitzsimmons", map = 1437, x = 10.89, y = 59.67, f = "e" },
					{ t = "accept", quest = 463, title = "The Greenwarden", npc = 1239, npcName = "First Mate Fitzsimmons", map = 1437, x = 10.89, y = 59.67, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "sethome", location = "Deepwater Tavern", map = 1437, x = 10.7, y = 60.95, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "buy", item = 2594, itemName = "Flagon of Mead", map = 1437, x = 10.7, y = 60.95, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 942, title = "The Absent Minded Prospector", npc = 2911, npcName = "Archaeologist Flagongut", map = 1437, x = 10.84, y = 60.43, f = "e" },
					{ t = "accept", quest = 943, title = "The Absent Minded Prospector", npc = 2911, npcName = "Archaeologist Flagongut", map = 1437, x = 10.84, y = 60.43, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 288, title = "The Third Fleet", npc = 1239, npcName = "First Mate Fitzsimmons", map = 1437, x = 10.89, y = 59.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 470, title = "Digging Through the Ooze", npc = 2111, npcName = "Sida", map = 1437, x = 11.8, y = 57.99, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building. If possible. Limited supply item. Needed later for Duskwood quest.",
				goals = {
					{ t = "buy", item = 4371, itemName = "Bronze Tube", map = 1437, x = 10.8, y = 56.8, f = "e" },
					{ t = "vendor", npc = 1448, npcName = "Neal Allen", map = 1437, x = 10.75, y = 56.75, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 305, title = "In Search of the Excavation Team", npc = 2096, npcName = "Tarrel Rockweaver", map = 1437, x = 11.5, y = 52.14, f = "e" },
				},
			},
			{
				note = "Grey murloc. Walks around. Spawns here.",
				goals = {
					{ t = "collect", quest = 279, item = 3618, itemName = "Gobbler's Head", oi = 2, map = 1437, x = 17.99, y = 40.38, f = "e" },
				},
			},
			{
				label = "Slay_Bluegill_Murlocs",
				along = true,
				goals = {
					{ t = "complete", quest = 279, title = "Claws from the Deep", note = "Slay #12# Bluegill Murlocs", map = 1437, x = 15.85, y = 39.81, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Enter Whelgar's Excavation Site", map = 1437, x = 34.19, y = 41.09 },
					{ t = "goto", text = "Follow the path up", map = 1437, x = 37.11, y = 42.98 },
					{ t = "accept", quest = 294, title = "Ormer's Revenge", npc = 1078, npcName = "Ormer Ironbraid", map = 1437, x = 38.18, y = 50.89, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 305, title = "In Search of the Excavation Team", npc = 1076, npcName = "Merrin Rockweaver", map = 1437, x = 38.91, y = 52.34, f = "e" },
					{ t = "accept", quest = 306, title = "In Search of the Excavation Team", npc = 1076, npcName = "Merrin Rockweaver", map = 1437, x = 38.91, y = 52.34, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "collect", quest = 943, item = 5234, itemName = "Flagongut's Fossil", oi = 2, map = 1437, x = 38.86, y = 52.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave Whelgar's Excavation Site", map = 1437, x = 34.02, y = 40.85 },
					{ t = "kill", quest = 294, npc = 1020, target = "Mottled Raptor", count = 10, oi = 1, map = 1437, x = 24.81, y = 47.68, f = "e" },
					{ t = "kill", quest = 294, npc = 1021, target = "Mottled Screecher", count = 10, oi = 2, map = 1437, x = 24.81, y = 47.68, f = "e" },
				},
			},
			{
				label = "Collect_Stone_Of_Relu",
				along = true,
				note = "Raptors.",
				goals = {
					{ t = "collect", quest = 943, item = 5233, itemName = "Stone of Relu", oi = 1, map = 1437, x = 24.81, y = 47.68, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Enter Whelgar's Excavation Site", map = 1437, x = 34.19, y = 41.09 },
					{ t = "goto", text = "Follow the path up", map = 1437, x = 37.11, y = 42.98 },
					{ t = "turnin", quest = 294, title = "Ormer's Revenge", npc = 1078, npcName = "Ormer Ironbraid", map = 1437, x = 38.18, y = 50.89, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave Whelgar's Excavation Site", map = 1437, x = 34.02, y = 40.85 },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 463, title = "The Greenwarden", npc = 1244, npcName = "Rethiel the Greenwarden", map = 1437, x = 56.34, y = 40.43, f = "e" },
					{ t = "accept", quest = 276, title = "Tramping Paws", npc = 1244, npcName = "Rethiel the Greenwarden", map = 1437, x = 56.34, y = 40.43, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1437, x = 52.63, y = 63.01 },
					{ t = "kill", quest = 276, npc = 1008, target = "Mosshide Mongrel", count = 10, oi = 2, map = 1437, x = 63.6, y = 62.2, f = "e" },
				},
			},
			{
				label = "Kill_Mosshide_Gnolls",
				along = true,
				goals = {
					{ t = "kill", quest = 276, npc = 1007, target = "Mosshide Gnoll", count = 15, oi = 1, map = 1437, x = 63.16, y = 67.42, f = "e" },
				},
			},
			{
				label = "Collect_Young_Crocolisk_Skins",
				along = true,
				goals = {
					{ t = "collect", quest = 484, item = 3397, itemName = "Young Crocolisk Skin", count = 6, oi = 1, map = 1437, x = 58.83, y = 53.02, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 276, title = "Tramping Paws", npc = 1244, npcName = "Rethiel the Greenwarden", map = 1437, x = 56.34, y = 40.43, f = "e" },
					{ t = "accept", quest = 277, title = "Fire Taboo", npc = 1244, npcName = "Rethiel the Greenwarden", map = 1437, x = 56.34, y = 40.43, f = "e" },
				},
			},
			{
				note = "Inside and outside the crypt.",
				goals = {
					{ t = "collect", quest = 470, item = 3349, itemName = "Sida's Bag", oi = 1, map = 1437, x = 44.29, y = 25.36, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 943, title = "The Absent Minded Prospector", npc = 2911, npcName = "Archaeologist Flagongut", map = 1437, x = 10.84, y = 60.43, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 470, title = "Digging Through the Ooze", npc = 2111, npcName = "Sida", map = 1437, x = 11.8, y = 57.99, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 306, title = "In Search of the Excavation Team", npc = 2096, npcName = "Tarrel Rockweaver", map = 1437, x = 11.5, y = 52.14, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building. If possible. Limited supply item. Needed later for Duskwood quest.",
				goals = {
					{ t = "buy", item = 4371, itemName = "Bronze Tube", map = 1437, x = 10.8, y = 56.8, f = "e" },
					{ t = "vendor", npc = 1448, npcName = "Neal Allen", map = 1437, x = 10.75, y = 56.75, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 484, title = "Young Crocolisk Skins", npc = 2094, npcName = "James Halloran", map = 1437, x = 8.51, y = 55.71, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 279, title = "Claws from the Deep", npc = 1242, npcName = "Karl Boran", map = 1437, x = 8.31, y = 58.53, f = "e" },
				},
			},
			{
				note = "Buy level 25 ammo when restocking.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 1075, title = "A Scroll from Mauren", note = "Click Here to Continue" },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Needed for a quest soon. Inside the building.",
				goals = {
					{ t = "collect", quest = 1073, item = 2458, itemName = "Elixir of Minor Fortitude", count = 2, map = 1455, x = 24.24, y = 74.57, f = "e" },
					{ t = "collect", quest = 1073, item = 2455, itemName = "Minor Mana Potion", count = 4, map = 1455, x = 24.24, y = 74.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Train Guns", map = 1455, x = 61.17, y = 89.52 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1072, title = "An Old Colleague", npc = 4081, npcName = "Lomac Gearstrip", map = 1455, x = 72.09, y = 51.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1073, title = "Ineptitude + Chemicals = Fun", npc = 4081, npcName = "Lomac Gearstrip", map = 1455, x = 72.09, y = 51.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1073, title = "Ineptitude + Chemicals = Fun", npc = 4081, npcName = "Lomac Gearstrip", map = 1455, x = 72.09, y = 51.88, f = "e" },
				},
			},
			{
				note = "Walk into the portal.",
				goals = {
					{ t = "complete", quest = 1075, title = "A Scroll from Mauren", note = "Enter the Deeprun Tram", map = 1455, x = 76.86, y = 51.19, f = "e" },
				},
			},
			{
				note = "Ride the tram. Walk into the portal.",
				goals = {
					{ t = "complete", quest = 1075, title = "A Scroll from Mauren", note = "Enter Stormwind City" },
				},
			},
			{
				note = "If possible. Limited supply item. Needed later for Duskwood quest.",
				goals = {
					{ t = "buy", item = 4371, itemName = "Bronze Tube", map = 1453, x = 55.25, y = 7.07, f = "e" },
					{ t = "vendor", npc = 5519, npcName = "Billibub Cogspinner", map = 1453, x = 62.42, y = 29.91, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "accept", quest = 1650, title = "The Tome of Valor", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.47, y = 47.47, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 2360, title = "Mathias and the Defias", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.26, y = 70.74, f = "e" },
				},
			},
			{
				note = "Inside the building. Needed for quest in Duskwood soon.",
				goals = {
					{ t = "buy", item = 4371, itemName = "Bronze Tube", map = 1453, x = 61.13, y = 70.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1075, title = "A Scroll from Mauren", npc = 4078, npcName = "Collin Mauren", map = 1453, x = 53.01, y = 86.63, f = "e" },
				},
			},
			{
				note = "Upstairs inside the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "learnspell Teleport: Stormwind##3561", map = 1453, x = 50.5, y = 85.91 },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.25, y = 81.81 },
					{ t = "turnin", quest = 1738, title = "Heartswood", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.23, y = 85.22, f = "e" },
					{ t = "accept", quest = 1739, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.23, y = 85.22, f = "e" },
				},
			},
			{
				note = "Stand on the pink symbol. Inside the crypt beneath the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 6913, itemName = "Heartswood Core" },
					{ t = "kill", quest = 1739, npc = 5677, target = "Summoned Succubus", oi = 1, map = 1453, x = 39.12, y = 84.37, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building. Above the crypt.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1739, title = "The Binding", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.23, y = 85.22, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5520, npcName = "Spackle Thornberry", map = 1453, x = 39.54, y = 84.52, f = "e" },
				},
			},
		},
	})
end

