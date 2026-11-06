-- TuWoW_Leveling — Guides/Leveling_Alliance_18.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-duskwood-and-stranglethorn-vale-30-32",
		pack = "guides",
		title = "Duskwood & Stranglethorn Vale (Parte 1/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-duskwood-and-stranglethorn-vale-30-32-part-2",
		author = "TuWoW & Zygor",
		minLevel = 30,
		maxLevel = 32,
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "turnin", quest = 293, title = "Cleansing the Eye", npc = 1284, npcName = "Archbishop Benedictus", map = 1453, x = 50.3, y = 45.5, f = "e" },
				},
			},
			{
				label = "Accept_The_Missing_Diplomat",
				along = true,
				note = "Walks around. Inside the building. notinsticky",
				goals = {
					{ t = "accept", quest = 1274, title = "The Missing Diplomat", npc = 4982, npcName = "Thomas", map = 1453, x = 50.91, y = 47.16, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 322, title = "Blessed Arm", npc = 1416, npcName = "Grimand Elmore", map = 1453, x = 59.71, y = 33.74, f = "e" },
					{ t = "accept", quest = 325, title = "Armed and Ready", npc = 1416, npcName = "Grimand Elmore", map = 1453, x = 59.71, y = 33.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 2794, itemName = "An Old History Book" },
					{ t = "accept", quest = 337, title = "An Old History Book" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "goto", text = "Enter Stormwind Keep", map = 1453, x = 73.08, y = 46.68 },
					{ t = "turnin", quest = 1274, title = "The Missing Diplomat", npc = 4960, npcName = "Bishop DeLavey", map = 1453, x = 80.21, y = 44.1, f = "e" },
					{ t = "accept", quest = 1241, title = "The Missing Diplomat", npc = 4960, npcName = "Bishop DeLavey", map = 1453, x = 80.21, y = 44.1, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1453, x = 75.9, y = 42.15 },
					{ t = "turnin", quest = 337, title = "An Old History Book", npc = 1440, npcName = "Milton Sheaf", map = 1453, x = 77.02, y = 30.2, f = "e" },
					{ t = "accept", quest = 538, title = "Southshore", npc = 1440, npcName = "Milton Sheaf", map = 1453, x = 77.02, y = 30.2, f = "e" },
				},
			},
			{
				note = "Next to the water.",
				goals = {
					{ t = "turnin", quest = 1241, title = "The Missing Diplomat", npc = 4959, npcName = "Jorgen", map = 1453, x = 76.25, y = 85.11, f = "e" },
					{ t = "accept", quest = 1242, title = "The Missing Diplomat", npc = 4959, npcName = "Jorgen", map = 1453, x = 76.25, y = 85.11, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1242, title = "The Missing Diplomat", npc = 482, npcName = "Elling Trias", map = 1453, x = 66.0, y = 74.08, f = "e" },
					{ t = "accept", quest = 1243, title = "The Missing Diplomat", npc = 482, npcName = "Elling Trias", map = 1453, x = 66.0, y = 74.08, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 1179, title = "The Brassbolts Brothers", note = "bank Crate of Crash Helmets##5849", map = 1453, x = 64.26, y = 80.75, f = "e" },
					{ t = "complete", quest = 335, title = "A Noble Brew", note = "bank Musquash Root##2784", map = 1453, x = 64.26, y = 80.75, f = "e" },
					{ t = "goto", text = "bank Turtle Meat##3712", map = 1453, x = 64.26, y = 80.75 },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 74, item = 916, itemName = "A Torn Journal Page", map = 1453, x = 64.26, y = 80.75, f = "e" },
					{ t = "collect", quest = 159, item = 1451, itemName = "Bottle of Zombie Juice", map = 1453, x = 64.26, y = 80.75, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 181, title = "Look to the Stars", npc = 276, npcName = "Viktori Prism'Antras", map = 1431, x = 79.8, y = 48.02, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 173, title = "Worgen in the Woods", npc = 663, npcName = "Calor", map = 1431, x = 75.3, y = 48.05, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 58, title = "The Night Watch", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.6, y = 46.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Darkshire", map = 1431, x = 73.87, y = 44.41, f = "e" },
				},
			},
			{
				note = "Walks along the road.",
				goals = {
					{ t = "turnin", quest = 1243, title = "The Missing Diplomat", npc = 840, npcName = "Watcher Backus", map = 1431, x = 74.8, y = 44.2, f = "e" },
					{ t = "accept", quest = 1244, title = "The Missing Diplomat", npc = 840, npcName = "Watcher Backus", map = 1431, x = 74.8, y = 44.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 173, npc = 533, target = "Nightbane Shadow Weaver", count = 6, oi = 1, map = 1431, x = 62.4, y = 42.4, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 173, title = "Worgen in the Woods", npc = 663, npcName = "Calor", map = 1431, x = 75.3, y = 48.05, f = "e" },
					{ t = "accept", quest = 221, title = "Worgen in the Woods", npc = 663, npcName = "Calor", map = 1431, x = 75.3, y = 48.05, f = "e" },
				},
			},
			{
				note = "Worgen.",
				goals = {
					{ t = "collect", quest = 337, item = 2794, itemName = "An Old History Book", map = 1431, x = 67.0, y = 43.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 2794, itemName = "An Old History Book" },
					{ t = "accept", quest = 337, title = "An Old History Book" },
				},
			},
			{
				label = "Kill_Nightbane_Dark_Runners",
				along = true,
				goals = {
					{ t = "kill", quest = 221, npc = 205, target = "Nightbane Dark Runner", count = 12, oi = 1, map = 1431, x = 67.0, y = 43.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 74, title = "The Legend of Stalvan", npc = 294, npcName = "Marshal Haggard", map = 1429, x = 84.61, y = 69.38, f = "e" },
					{ t = "accept", quest = 75, title = "The Legend of Stalvan", npc = 294, npcName = "Marshal Haggard", map = 1429, x = 84.61, y = 69.38, f = "e" },
				},
			},
			{
				note = "You will be attacked. Upstairs inside the building.",
				goals = {
					{ t = "collect", quest = 75, item = 921, itemName = "A Faded Journal Page", oi = 1, map = 1429, x = 85.69, y = 69.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 75, title = "The Legend of Stalvan", npc = 294, npcName = "Marshal Haggard", map = 1429, x = 84.61, y = 69.38, f = "e" },
					{ t = "accept", quest = 78, title = "The Legend of Stalvan", npc = 294, npcName = "Marshal Haggard", map = 1429, x = 84.61, y = 69.38, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 159, title = "Juice Delivery", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.11, y = 31.47, f = "e" },
					{ t = "accept", quest = 133, title = "Ghoulish Effigy", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.11, y = 31.47, f = "e" },
				},
			},
			{
				note = "Ghouls. Inside and outside the crypt.",
				goals = {
					{ t = "collect", quest = 133, item = 884, itemName = "Ghoul Rib", count = 7, oi = 1, map = 1431, x = 23.59, y = 34.89, f = "e" },
				},
			},
			{
				label = "Kill_Plague_Spreaders",
				along = true,
				note = "Shared spawns with other ghouls. Inside and outside the crypt. notinsticky",
				goals = {
					{ t = "kill", quest = 58, npc = 604, target = "Plague Spreader", count = 20, oi = 1, map = 1431, x = 23.59, y = 34.89, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Leave the crypt", map = 1431, x = 23.63, y = 34.92 },
					{ t = "turnin", quest = 133, title = "Ghoulish Effigy", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.11, y = 31.47, f = "e" },
					{ t = "accept", quest = 134, title = "Ogre Thieves", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.11, y = 31.47, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "collect", quest = 1244, item = 5947, itemName = "Defias Docket", oi = 1, map = 1431, x = 23.93, y = 72.07, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 134, item = 1349, itemName = "Abercrombie's Crate", oi = 1, map = 1431, x = 33.42, y = 76.34, f = "e" },
				},
			},
			{
				note = "Inside the cave. Multiple locations.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1431, x = 34.08, y = 77.02 },
					{ t = "collect", quest = 181, item = 1968, itemName = "Ogre's Monocle", oi = 1, map = 1431, x = 36.06, y = 80.58, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1431, x = 34.08, y = 77.02 },
					{ t = "turnin", quest = 134, title = "Ogre Thieves", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.11, y = 31.47, f = "e" },
					{ t = "accept", quest = 160, title = "Note to the Mayor", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.11, y = 31.47, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 225, title = "The Weathered Grave", map = 1431, x = 17.72, y = 29.08, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 325, title = "Armed and Ready", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.78, y = 34.07, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 78, title = "The Legend of Stalvan", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 73.78, y = 44.48, f = "e" },
					{ t = "accept", quest = 79, title = "The Legend of Stalvan", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 73.78, y = 44.48, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 58, title = "The Night Watch", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.59, y = 46.89, f = "e" },
					{ t = "turnin", quest = 79, title = "The Legend of Stalvan", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.59, y = 46.89, f = "e" },
					{ t = "accept", quest = 80, title = "The Legend of Stalvan", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.59, y = 46.89, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 80, title = "The Legend of Stalvan", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.52, y = 46.85, f = "e" },
					{ t = "accept", quest = 97, title = "The Legend of Stalvan", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.52, y = 46.85, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 225, title = "The Weathered Grave", npc = 268, npcName = "Sirra Von'Indi", map = 1431, x = 72.64, y = 47.62, f = "e" },
					{ t = "accept", quest = 227, title = "Morgan Ladimore", npc = 268, npcName = "Sirra Von'Indi", map = 1431, x = 72.64, y = 47.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 160, title = "Note to the Mayor", npc = 263, npcName = "Lord Ello Ebonlocke", map = 1431, x = 71.93, y = 46.42, f = "e" },
					{ t = "accept", quest = 251, title = "Translate Abercrombie's Note", npc = 263, npcName = "Lord Ello Ebonlocke", map = 1431, x = 71.93, y = 46.42, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 251, title = "Translate Abercrombie's Note", npc = 268, npcName = "Sirra Von'Indi", map = 1431, x = 72.64, y = 47.62, f = "e" },
					{ t = "accept", quest = 401, title = "Wait for Sirra to Finish", npc = 268, npcName = "Sirra Von'Indi", map = 1431, x = 72.64, y = 47.62, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 401, title = "Wait for Sirra to Finish", npc = 268, npcName = "Sirra Von'Indi", map = 1431, x = 72.64, y = 47.62, f = "e" },
					{ t = "accept", quest = 252, title = "Translation to Ello", npc = 268, npcName = "Sirra Von'Indi", map = 1431, x = 72.64, y = 47.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 252, title = "Translation to Ello", npc = 263, npcName = "Lord Ello Ebonlocke", map = 1431, x = 71.93, y = 46.42, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 227, title = "Morgan Ladimore", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.59, y = 46.89, f = "e" },
					{ t = "turnin", quest = 97, title = "The Legend of Stalvan", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.59, y = 46.89, f = "e" },
					{ t = "accept", quest = 98, title = "The Legend of Stalvan", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.59, y = 46.89, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 221, title = "Worgen in the Woods", npc = 663, npcName = "Calor", map = 1431, x = 75.3, y = 48.05, f = "e" },
					{ t = "accept", quest = 222, title = "Worgen in the Woods", npc = 663, npcName = "Calor", map = 1431, x = 75.3, y = 48.05, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 181, title = "Look to the Stars", npc = 276, npcName = "Viktori Prism'Antras", map = 1431, x = 79.8, y = 48.02, f = "e" },
				},
			},
			{
				note = "Walks along the road.",
				goals = {
					{ t = "turnin", quest = 1244, title = "The Missing Diplomat", npc = 840, npcName = "Watcher Backus", map = 1431, x = 74.8, y = 44.2, f = "e" },
					{ t = "accept", quest = 1245, title = "The Missing Diplomat", npc = 840, npcName = "Watcher Backus", map = 1431, x = 74.8, y = 44.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 335, item = 2779, itemName = "Tear of Tilloa", oi = 1, map = 1431, x = 78.35, y = 35.95, f = "e" },
				},
			},
			{
				label = "Collect_Mistmantle_Famiy_Ring",
				along = true,
				note = "Inside or outside the building. notinsticky",
				goals = {
					{ t = "collect", quest = 98, item = 3629, itemName = "Mistmantle Family Ring", oi = 1, map = 1431, x = 77.35, y = 36.19, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 98, title = "The Legend of Stalvan", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.82, y = 45.29, f = "e" },
				},
			},
			{
				note = "Inside the mine. Outside the mine.",
				goals = {
					{ t = "kill", quest = 222, npc = 920, target = "Nightbane Tainted One", count = 8, oi = 2, map = 1431, x = 73.03, y = 75.08, f = "e" },
					{ t = "kill", quest = 222, npc = 206, target = "Nightbane Vile Fang", count = 8, oi = 1, map = 1431, x = 73.03, y = 75.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 32", map = 1431, x = 40.6, y = 69.8 },
				},
			},
			{
				note = "Walks the path to the south every 20-30 minutes. Two enemies attack him. Save him to get a quest. Unlocks a quest chain. Wait now to save time later.",
				goals = {
					{ t = "accept", quest = 215, title = "Jungle Secrets", npc = 738, npcName = "Private Thorsen", map = 1434, x = 37.98, y = 3.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 583, title = "Welcome to the Jungle", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 583, title = "Welcome to the Jungle", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 185, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.61, y = 10.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 190, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.55, y = 10.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 185, npc = 681, target = "Young Stranglethorn Tiger", count = 10, oi = 1, map = 1434, x = 33.8, y = 13.0, f = "e" },
				},
			},
			{
				label = "Kill_Young_Panthers",
				along = true,
				goals = {
					{ t = "kill", quest = 190, npc = 683, target = "Young Panther", count = 10, oi = 1, map = 1434, x = 41.4, y = 13.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 185, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.61, y = 10.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 190, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.55, y = 10.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 215, title = "Jungle Secrets", npc = 469, npcName = "Lieutenant Doren", map = 1434, x = 38.04, y = 3.01, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 222, title = "Worgen in the Woods", npc = 663, npcName = "Calor", map = 1431, x = 75.3, y = 48.05, f = "e" },
					{ t = "accept", quest = 223, title = "Worgen in the Woods", npc = 663, npcName = "Calor", map = 1431, x = 75.3, y = 48.05, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 223, title = "Worgen in the Woods", npc = 661, npcName = "Jonathan Carevin", map = 1431, x = 75.32, y = 49.02, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5498, npcName = "Elsharin", map = 1453, x = 48.2, y = 87.21, f = "e" },
				},
			},
			{
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 690, title = "Malin's Request", npc = 2708, npcName = "Archmage Malin", map = 1453, x = 50.5, y = 87.47, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 50.51, y = 90.4 },
					{ t = "accept", quest = 1301, title = "James Hyal", npc = 5081, npcName = "Connor Rivers", map = 1453, x = 51.1, y = 95.5, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.27, y = 81.78 },
					{ t = "turnin", quest = 335, title = "A Noble Brew", npc = 1435, npcName = "Zardeth of the Black Claw", map = 1453, x = 40.15, y = 85.29, f = "e" },
					{ t = "accept", quest = 336, title = "A Noble Brew", npc = 1435, npcName = "Zardeth of the Black Claw", map = 1453, x = 40.15, y = 85.29, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "collect", quest = 1179, item = 5849, itemName = "Crate of Crash Helmets", map = 1453, x = 64.26, y = 80.75, f = "e" },
					{ t = "collect", quest = 335, item = 2784, itemName = "Musquash Root", map = 1453, x = 64.26, y = 80.75, f = "e" },
					{ t = "collect", quest = 555, item = 3712, itemName = "Turtle Meat", count = 10, map = 1453, x = 64.26, y = 80.75, f = "e" },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Needed for future quest. Inside the building. Don't vendor them.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "buy", item = 3719, itemName = "Hillman's Cloak", map = 1453, x = 61.13, y = 70.67, f = "e" },
					{ t = "buy", item = 2997, itemName = "Bolt of Woolen Cloth", map = 1453, x = 61.13, y = 70.67, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1245, title = "The Missing Diplomat", npc = 482, npcName = "Elling Trias", map = 1453, x = 66.0, y = 74.08, f = "e" },
					{ t = "accept", quest = 1246, title = "The Missing Diplomat", npc = 482, npcName = "Elling Trias", map = 1453, x = 66.0, y = 74.08, f = "e" },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Needed for future quest. Inside the building. Don't vendor them.",
				goals = {
					{ t = "buy", item = 3719, itemName = "Hillman's Cloak", map = 1453, x = 61.13, y = 70.67, f = "e" },
					{ t = "buy", item = 2997, itemName = "Bolt of Woolen Cloth", map = 1453, x = 61.13, y = 70.67, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 1179, item = 5849, itemName = "Crate of Crash Helmets", map = 1453, x = 64.26, y = 80.75, f = "e" },
					{ t = "collect", quest = 335, item = 2784, itemName = "Musquash Root", map = 1453, x = 64.26, y = 80.75, f = "e" },
					{ t = "collect", quest = 555, item = 3712, itemName = "Turtle Meat", count = 10, map = 1453, x = 64.26, y = 80.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 690, title = "Malin's Request", npc = 2708, npcName = "Archmage Malin", map = 1453, x = 50.5, y = 87.47, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 50.51, y = 90.4 },
					{ t = "accept", quest = 1301, title = "James Hyal", npc = 5081, npcName = "Connor Rivers", map = 1453, x = 51.1, y = 95.5, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.27, y = 81.78 },
					{ t = "turnin", quest = 335, title = "A Noble Brew", npc = 1435, npcName = "Zardeth of the Black Claw", map = 1453, x = 40.15, y = 85.29, f = "e" },
					{ t = "accept", quest = 336, title = "A Noble Brew", npc = 1435, npcName = "Zardeth of the Black Claw", map = 1453, x = 40.15, y = 85.29, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.27, y = 81.78 },
					{ t = "train", npc = 461, npcName = "Demisette Cloyce", map = 1453, x = 39.25, y = 84.96, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5520, npcName = "Spackle Thornberry", map = 1453, x = 39.54, y = 84.52, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1798, title = "Seeking Strahad", npc = 6122, npcName = "Gakin the Darkbinder", map = 1453, x = 39.23, y = 85.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "train", npc = 5492, npcName = "Katherine the Pure", map = 1453, x = 48.47, y = 49.06, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "train", npc = 5484, npcName = "Brother Benjamin", map = 1453, x = 51.64, y = 46.42, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 5479, npcName = "Wu Shen", map = 1453, x = 80.5, y = 59.86, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1718, title = "The Islander", npc = 5479, npcName = "Wu Shen", map = 1453, x = 80.5, y = 59.85, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 918, npcName = "Osborne the Night Man", map = 1453, x = 77.38, y = 65.3, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 5515, npcName = "Einris Brightspear", map = 1453, x = 67.32, y = 36.23, f = "e" },
				},
			},
			{
				note = "You will be attacked. In the alley between buildings.",
				goals = {
					{ t = "turnin", quest = 1246, title = "The Missing Diplomat", npc = 4961, npcName = "Dashel Stonefist", map = 1453, x = 74.21, y = 59.15, f = "e" },
					{ t = "accept", quest = 1447, title = "The Missing Diplomat", npc = 4961, npcName = "Dashel Stonefist", map = 1453, x = 74.21, y = 59.15, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-duskwood-and-stranglethorn-vale-30-32-part-2",
		pack = "guides",
		title = "Duskwood & Stranglethorn Vale (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-hillsbrad-foothills-and-arathi-highlands-32-33",
		author = "TuWoW & Zygor",
		minLevel = 30,
		maxLevel = 32,
		zone = 1453,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "complete", quest = 1447, title = "The Missing Diplomat", note = "Defeat Dashel Stonefist", map = 1453, x = 74.21, y = 59.15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1447, title = "The Missing Diplomat", npc = 4961, npcName = "Dashel Stonefist", map = 1453, x = 74.21, y = 59.15, f = "e" },
					{ t = "accept", quest = 1247, title = "The Missing Diplomat", npc = 4961, npcName = "Dashel Stonefist", map = 1453, x = 74.21, y = 59.15, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 1247, title = "The Missing Diplomat", npc = 482, npcName = "Elling Trias", map = 1453, x = 66.0, y = 74.08, f = "e" },
					{ t = "accept", quest = 1248, title = "The Missing Diplomat", npc = 482, npcName = "Elling Trias", map = 1453, x = 66.0, y = 74.08, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 73.09, y = 46.62 },
					{ t = "turnin", quest = 336, title = "A Noble Brew", npc = 1439, npcName = "Lord Baurles K. Wishock", map = 1453, x = 77.84, y = 48.92, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 337, title = "An Old History Book", npc = 1440, npcName = "Milton Sheaf", map = 1453, x = 77.02, y = 30.2, f = "e" },
					{ t = "accept", quest = 538, title = "Southshore", npc = 1440, npcName = "Milton Sheaf", map = 1453, x = 77.02, y = 30.2, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1301, title = "James Hyal", npc = 5082, npcName = "Vincent Hyal", map = 1437, x = 10.83, y = 60.4, f = "e" },
					{ t = "accept", quest = 1302, title = "James Hyal", npc = 5082, npcName = "Vincent Hyal", map = 1437, x = 10.83, y = 60.4, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1248, title = "The Missing Diplomat", npc = 4963, npcName = "Mikhail", map = 1437, x = 10.6, y = 60.77, f = "e" },
					{ t = "accept", quest = 1249, title = "The Missing Diplomat", npc = 4963, npcName = "Mikhail", map = 1437, x = 10.6, y = 60.77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1249, title = "The Missing Diplomat", note = "Defeat Tapoke Jahn", map = 1437, x = 10.79, y = 59.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1249, title = "The Missing Diplomat", npc = 4963, npcName = "Mikhail", map = 1437, x = 10.6, y = 60.77, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 1250, title = "The Missing Diplomat", npc = 4962, npcName = "Tapoke \"Slim\" Jahn", map = 1437, x = 10.54, y = 60.26, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1250, title = "The Missing Diplomat", npc = 4963, npcName = "Mikhail", map = 1437, x = 10.6, y = 60.77, f = "e" },
					{ t = "accept", quest = 1264, title = "The Missing Diplomat", npc = 4963, npcName = "Mikhail", map = 1437, x = 10.6, y = 60.77, f = "e" },
				},
			},
		},
	})
end

