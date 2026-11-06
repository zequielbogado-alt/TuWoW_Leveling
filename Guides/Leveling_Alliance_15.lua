-- TuWoW_Leveling — Guides/Leveling_Alliance_15.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-duskwood-and-redridge-mountains-25-27",
		pack = "guides",
		title = "Duskwood & Redridge Mountains (Parte 1/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-duskwood-and-redridge-mountains-25-27-part-2",
		author = "TuWoW & Zygor",
		minLevel = 25,
		maxLevel = 27,
		zone = 1431,
		version = 1,
		steps = {
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "accept", quest = 66, title = "The Legend of Stalvan", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.82, y = 45.29, f = "e" },
					{ t = "accept", quest = 101, title = "The Totem of Infliction", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.82, y = 45.29, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Darkshire", map = 1431, x = 73.87, y = 44.41, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 56, title = "The Night Watch", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.6, y = 46.9, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 66, title = "The Legend of Stalvan", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.52, y = 46.85, f = "e" },
					{ t = "accept", quest = 67, title = "The Legend of Stalvan", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.52, y = 46.85, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 163, title = "Raven Hill", npc = 633, npcName = "Elaine Carevin", map = 1431, x = 75.33, y = 48.69, f = "e" },
					{ t = "accept", quest = 165, title = "The Hermit", npc = 633, npcName = "Elaine Carevin", map = 1431, x = 75.33, y = 48.69, f = "e" },
					{ t = "accept", quest = 164, title = "Deliveries to Sven", npc = 633, npcName = "Elaine Carevin", map = 1431, x = 75.33, y = 48.69, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Darkshire", map = 1431, x = 77.49, y = 44.29, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "accept", quest = 174, title = "Look to the Stars", npc = 276, npcName = "Viktori Prism'Antras", map = 1431, x = 79.8, y = 48.02, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 174, title = "Look to the Stars", npc = 276, npcName = "Viktori Prism'Antras", map = 1431, x = 79.8, y = 48.02, f = "e" },
					{ t = "accept", quest = 175, title = "Look to the Stars", npc = 276, npcName = "Viktori Prism'Antras", map = 1431, x = 79.8, y = 48.02, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 175, title = "Look to the Stars", npc = 302, npcName = "Blind Mary", map = 1431, x = 81.99, y = 59.09, f = "e" },
					{ t = "accept", quest = 177, title = "Look to the Stars", npc = 302, npcName = "Blind Mary", map = 1431, x = 81.99, y = 59.09, f = "e" },
				},
			},
			{
				note = "Red ghoul. Walks around. Inside and outside the building.",
				goals = {
					{ t = "collect", quest = 177, item = 1946, itemName = "Mary's Looking Glass", oi = 1, map = 1431, x = 80.94, y = 71.4, f = "e" },
				},
			},
			{
				label = "Collect_Skeleton_Fingers",
				along = true,
				goals = {
					{ t = "collect", quest = 101, item = 2378, itemName = "Skeleton Finger", count = 10, oi = 3, map = 1431, x = 79.3, y = 70.19, f = "e" },
				},
			},
			{
				label = "Kill_Skeletal_Mages_And_Warriors",
				along = true,
				goals = {
					{ t = "kill", quest = 56, npc = 203, target = "Skeletal Mage", count = 6, oi = 2, map = 1431, x = 79.3, y = 70.19, f = "e" },
					{ t = "kill", quest = 56, npc = 48, target = "Skeletal Warrior", count = 8, oi = 1, map = 1431, x = 79.3, y = 70.19, f = "e" },
				},
			},
			{
				note = "Stitches is a level 35 elite abomination. Walks along the main road between Darkshire and Raven Hill.",
				goals = {
					{ t = "complete", quest = 163, title = "Raven Hill", note = "Click Here to Continue" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 163, title = "Raven Hill", npc = 288, npcName = "Jitters", map = 1431, x = 18.16, y = 56.51, f = "e" },
					{ t = "accept", quest = 5, title = "Jitters' Growling Gut", npc = 288, npcName = "Jitters", map = 1431, x = 18.16, y = 56.51, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 164, title = "Deliveries to Sven", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.79, y = 34.0, f = "e" },
					{ t = "accept", quest = 95, title = "Sven's Revenge", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.79, y = 34.0, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 226, title = "Wolves at Our Heels", npc = 893, npcName = "Lars", map = 1431, x = 7.71, y = 33.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 226, npc = 565, target = "Rabid Dire Wolf", count = 8, oi = 2, map = 1431, x = 17.69, y = 27.45, f = "e" },
					{ t = "kill", quest = 226, npc = 213, target = "Starving Dire Wolf", count = 12, oi = 1, map = 1431, x = 17.69, y = 27.45, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 165, title = "The Hermit", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.11, y = 31.47, f = "e" },
					{ t = "accept", quest = 148, title = "Supplies from Darkshire", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.11, y = 31.47, f = "e" },
				},
			},
			{
				label = "Collect_Vials_Of_Spider_Venom_And_Gooey_Spider_Legs",
				along = true,
				note = "Spiders. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 101, item = 1130, itemName = "Vial of Spider Venom", count = 5, oi = 2, map = 1431, x = 32.02, y = 46.71, f = "e" },
					{ t = "collect", quest = 93, item = 2251, itemName = "Gooey Spider Leg", count = 6, map = 1431, x = 32.02, y = 46.71, f = "e" },
				},
			},
			{
				note = "Ghouls. Inside and outside the crypt.",
				goals = {
					{ t = "collect", quest = 101, item = 1129, itemName = "Ghoul Fang", count = 10, oi = 1, map = 1431, x = 23.59, y = 34.89, f = "e" },
				},
			},
			{
				note = "Inside and outside the crypt.",
				goals = {
					{ t = "goto", text = "ding 26", map = 1431, x = 23.59, y = 34.89 },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Leave the crypt", map = 1431, x = 23.59, y = 34.89 },
					{ t = "turnin", quest = 226, title = "Wolves at Our Heels", npc = 893, npcName = "Lars", map = 1431, x = 7.71, y = 33.2, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2360, title = "Mathias and the Defias", npc = 7024, npcName = "Agent Kearnen", map = 1436, x = 68.49, y = 70.08, f = "e" },
					{ t = "accept", quest = 2359, title = "Klaven's Tower", npc = 7024, npcName = "Agent Kearnen", map = 1436, x = 68.49, y = 70.08, f = "e" },
				},
			},
			{
				note = "Cast Pickpocket on a Malformed Defias Drone. Walks around.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 2359, item = 7923, itemName = "Defias Tower Key", oi = 2, map = 1436, x = 71.63, y = 73.91, f = "e" },
				},
			},
			{
				note = "Sap Klaven Mortwake before clicking the chest. You get a debuff after opening it. Top floor inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 2359, item = 7908, itemName = "Klaven Mortwake's Journal", oi = 1, map = 1436, x = 70.41, y = 73.93, f = "e" },
				},
			},
			{
				note = "You will be attacked. Inside the building.",
				goals = {
					{ t = "turnin", quest = 67, title = "The Legend of Stalvan", map = 1436, x = 41.51, y = 66.73, f = "e" },
					{ t = "accept", quest = 68, title = "The Legend of Stalvan", map = 1436, x = 41.51, y = 66.73, f = "e" },
				},
			},
			{
				note = "Walks around.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Follow the path up through the mountains", map = 1436, x = 52.64, y = 72.27 },
					{ t = "goto", text = "Follow the path around the mountain", map = 1436, x = 38.75, y = 83.72 },
					{ t = "turnin", quest = 1650, title = "The Tome of Valor", npc = 6182, npcName = "Daphne Stilwell", map = 1436, x = 42.33, y = 88.64, f = "e" },
					{ t = "accept", quest = 1651, title = "The Tome of Valor", npc = 6182, npcName = "Daphne Stilwell", map = 1436, x = 42.33, y = 88.64, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "complete", quest = 1651, title = "The Tome of Valor", note = "Protect Daphne Stilwell", map = 1436, x = 42.33, y = 88.64, f = "e" },
				},
			},
			{
				note = "Walks around.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 1651, title = "The Tome of Valor", npc = 6182, npcName = "Daphne Stilwell", map = 1436, x = 41.68, y = 89.09, f = "e" },
					{ t = "accept", quest = 1652, title = "The Tome of Valor", npc = 6182, npcName = "Daphne Stilwell", map = 1436, x = 41.68, y = 89.09, f = "e" },
				},
			},
			{
				note = "Underwater.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 272, item = 15882, itemName = "Half Pendant of Aquatic Endurance", map = 1436, x = 17.87, y = 33.11, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 15883, itemName = "Half Pendant of Aquatic Agility" },
					{ t = "collect", quest = 272, item = 15885, itemName = "Pendant of the Sea Lion", oi = 1, map = 1450, x = 35.92, y = 41.42, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 272, title = "Trial of the Sea Lion", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 5061, title = "Aquatic Form", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 5061, title = "Aquatic Form", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.37, y = 8.39, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 5, title = "Jitters' Growling Gut", npc = 272, npcName = "Chef Grual", map = 1431, x = 73.78, y = 43.45, f = "e" },
					{ t = "accept", quest = 93, title = "Dusky Crab Cakes", npc = 272, npcName = "Chef Grual", map = 1431, x = 73.78, y = 43.45, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 93, title = "Dusky Crab Cakes", npc = 272, npcName = "Chef Grual", map = 1431, x = 73.78, y = 43.45, f = "e" },
					{ t = "accept", quest = 240, title = "Return to Jitters", npc = 272, npcName = "Chef Grual", map = 1431, x = 73.78, y = 43.45, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 56, title = "The Night Watch", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.59, y = 46.9, f = "e" },
					{ t = "accept", quest = 57, title = "The Night Watch", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.59, y = 46.9, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 68, title = "The Legend of Stalvan", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.52, y = 46.85, f = "e" },
					{ t = "accept", quest = 69, title = "The Legend of Stalvan", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.52, y = 46.85, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 101, title = "The Totem of Infliction", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.81, y = 45.29, f = "e" },
					{ t = "turnin", quest = 148, title = "Supplies from Darkshire", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.81, y = 45.29, f = "e" },
					{ t = "accept", quest = 149, title = "Ghost Hair Thread", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.81, y = 45.29, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 177, title = "Look to the Stars", npc = 276, npcName = "Viktori Prism'Antras", map = 1431, x = 79.8, y = 48.02, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 149, title = "Ghost Hair Thread", npc = 302, npcName = "Blind Mary", map = 1431, x = 81.98, y = 59.09, f = "e" },
					{ t = "accept", quest = 154, title = "Return the Comb", npc = 302, npcName = "Blind Mary", map = 1431, x = 81.98, y = 59.09, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 154, title = "Return the Comb", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.81, y = 45.29, f = "e" },
					{ t = "accept", quest = 157, title = "Deliver the Thread", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.81, y = 45.29, f = "e" },
				},
			},
			{
				note = "Careful, stealthed enemies.",
				goals = {
					{ t = "turnin", quest = 95, title = "Sven's Revenge", map = 1431, x = 49.86, y = 77.7, f = "e" },
					{ t = "accept", quest = 230, title = "Sven's Camp", map = 1431, x = 49.86, y = 77.7, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 157, title = "Deliver the Thread", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.11, y = 31.47, f = "e" },
					{ t = "accept", quest = 158, title = "Zombie Juice", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.11, y = 31.47, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 230, title = "Sven's Camp", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.79, y = 34.0, f = "e" },
					{ t = "accept", quest = 262, title = "The Shadowy Figure", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.79, y = 34.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 69, title = "The Legend of Stalvan", npc = 295, npcName = "Innkeeper Farley", map = 1429, x = 43.77, y = 65.8, f = "e" },
					{ t = "accept", quest = 70, title = "The Legend of Stalvan", npc = 295, npcName = "Innkeeper Farley", map = 1429, x = 43.77, y = 65.8, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "collect", quest = 70, item = 910, itemName = "An Undelivered Letter", oi = 1, map = 1429, x = 44.29, y = 65.82, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.1 },
					{ t = "turnin", quest = 1652, title = "The Tome of Valor", npc = 6171, npcName = "Duthorian Rall", map = 1453, x = 50.47, y = 47.47, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5492, npcName = "Katherine the Pure", map = 1453, x = 48.47, y = 49.06, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 918, npcName = "Osborne the Night Man", map = 1453, x = 77.38, y = 65.3, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2359, title = "Klaven's Tower", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.26, y = 70.74, f = "e" },
					{ t = "accept", quest = 2607, title = "The Touch of Zanzil", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.26, y = 70.74, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2607, title = "The Touch of Zanzil", npc = 7207, npcName = "Doc Mixilpixil", map = 1453, x = 80.01, y = 69.9, f = "e" },
					{ t = "accept", quest = 2608, title = "The Touch of Zanzil", npc = 7207, npcName = "Doc Mixilpixil", map = 1453, x = 80.01, y = 69.9, f = "e" },
				},
			},
			{
				note = "Type /sit in chat while targeting Doc Mixilpixil.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "complete", quest = 2608, title = "The Touch of Zanzil", note = "Complete the Diagnosis", map = 1453, x = 80.01, y = 69.9, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2608, title = "The Touch of Zanzil", npc = 7207, npcName = "Doc Mixilpixil", map = 1453, x = 80.01, y = 69.9, f = "e" },
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
				goals = {
					{ t = "turnin", quest = 70, title = "The Legend of Stalvan", npc = 297, npcName = "Caretaker Folsom", map = 1453, x = 42.57, y = 72.35, f = "e" },
					{ t = "accept", quest = 72, title = "The Legend of Stalvan", npc = 297, npcName = "Caretaker Folsom", map = 1453, x = 42.57, y = 72.35, f = "e" },
				},
			},
			{
				note = "You will be attacked.",
				goals = {
					{ t = "turnin", quest = 72, title = "The Legend of Stalvan", map = 1453, x = 42.48, y = 72.08, f = "e" },
					{ t = "accept", quest = 74, title = "The Legend of Stalvan", map = 1453, x = 42.48, y = 72.08, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 42.25, y = 81.81 },
					{ t = "accept", quest = 335, title = "A Noble Brew", npc = 1435, npcName = "Zardeth of the Black Claw", map = 1453, x = 40.15, y = 85.3, f = "e" },
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
				note = "Top of the tower.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5498, npcName = "Elsharin", map = 1453, x = 48.2, y = 87.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 20, title = "Blackrock Menace", npc = 382, npcName = "Marshal Marris", map = 1433, x = 28.42, y = 48.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 127, title = "Selling Fish", npc = 381, npcName = "Dockmaster Baren", map = 1433, x = 22.63, y = 47.38, f = "e" },
					{ t = "accept", quest = 150, title = "Murloc Poachers", npc = 381, npcName = "Dockmaster Baren", map = 1433, x = 22.63, y = 47.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 34, title = "An Unwelcome Guest", npc = 342, npcName = "Martie Jainrose", map = 1433, x = 16.77, y = 46.33, f = "e" },
				},
			},
			{
				note = "Darker brown boar. Walks around.",
				goals = {
					{ t = "collect", quest = 34, item = 3631, itemName = "Bellygrub's Tusk", oi = 1, map = 1433, x = 10.59, y = 49.32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 34, title = "An Unwelcome Guest", npc = 342, npcName = "Martie Jainrose", map = 1433, x = 16.77, y = 46.33, f = "e" },
				},
			},
			{
				note = "Orcs.",
				goals = {
					{ t = "collect", quest = 20, item = 3014, itemName = "Battleworn Axe", count = 10, oi = 1, map = 1433, x = 55.86, y = 43.28, f = "e" },
				},
			},
			{
				note = "Don't vendor them.",
				goals = {
					{ t = "collect", quest = 150, item = 1468, itemName = "Murloc Fin", count = 8, oi = 1, map = 1433, x = 51.32, y = 53.27, f = "e" },
					{ t = "collect", quest = 127, item = 1467, itemName = "Spotted Sunfish", count = 10, oi = 1, map = 1433, x = 51.32, y = 53.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 20, title = "Blackrock Menace", npc = 382, npcName = "Marshal Marris", map = 1433, x = 28.42, y = 48.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 127, title = "Selling Fish", npc = 381, npcName = "Dockmaster Baren", map = 1433, x = 22.63, y = 47.38, f = "e" },
					{ t = "turnin", quest = 150, title = "Murloc Poachers", npc = 381, npcName = "Dockmaster Baren", map = 1433, x = 22.63, y = 47.38, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 262, title = "The Shadowy Figure", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.81, y = 45.29, f = "e" },
					{ t = "accept", quest = 265, title = "The Shadowy Search Continues", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.81, y = 45.29, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 265, title = "The Shadowy Search Continues", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.53, y = 46.85, f = "e" },
					{ t = "accept", quest = 266, title = "Inquire at the Inn", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.53, y = 46.85, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 158, title = "Zombie Juice", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 73.78, y = 44.48, f = "e" },
					{ t = "accept", quest = 156, title = "Gather Rot Blossoms", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 73.78, y = 44.48, f = "e" },
					{ t = "turnin", quest = 266, title = "Inquire at the Inn", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 73.78, y = 44.48, f = "e" },
					{ t = "accept", quest = 453, title = "Finding the Shadowy Figure", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 73.78, y = 44.48, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 240, title = "Return to Jitters", npc = 288, npcName = "Jitters", map = 1431, x = 18.14, y = 56.52, f = "e" },
					{ t = "turnin", quest = 453, title = "Finding the Shadowy Figure", npc = 288, npcName = "Jitters", map = 1431, x = 18.14, y = 56.52, f = "e" },
					{ t = "accept", quest = 268, title = "Return to Sven", npc = 288, npcName = "Jitters", map = 1431, x = 18.14, y = 56.52, f = "e" },
				},
			},
			{
				note = "Fiends and Horrors.",
				goals = {
					{ t = "collect", quest = 156, item = 1598, itemName = "Rot Blossom", count = 8, oi = 1, map = 1431, x = 19.26, y = 44.7, f = "e" },
				},
			},
			{
				label = "Kill_Skeletal_Fiends_And_Horrors",
				along = true,
				goals = {
					{ t = "kill", quest = 57, npc = 531, target = "Skeletal Fiend", count = 15, oi = 1, map = 1431, x = 19.26, y = 44.7, f = "e" },
					{ t = "kill", quest = 57, npc = 202, target = "Skeletal Horror", count = 15, oi = 2, map = 1431, x = 19.26, y = 44.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 27", map = 1431, x = 19.26, y = 44.7 },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 268, title = "Return to Sven", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.79, y = 34.0, f = "e" },
					{ t = "accept", quest = 323, title = "Proving Your Worth", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.79, y = 34.0, f = "e" },
				},
			},
			{
				note = "Inside and outside the crypt. Avoid Mor'Ladim, level 35 elite skeleton. Walks around outside the crypt.",
				goals = {
					{ t = "kill", quest = 323, npc = 785, target = "Skeletal Warder", count = 3, oi = 3, map = 1431, x = 15.88, y = 38.72, f = "e" },
					{ t = "kill", quest = 323, npc = 787, target = "Skeletal Healer", count = 3, oi = 2, map = 1431, x = 15.88, y = 38.72, f = "e" },
					{ t = "kill", quest = 323, npc = 1110, target = "Skeletal Raider", count = 15, oi = 1, map = 1431, x = 15.88, y = 38.72, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Run up the stairs and leave the crypt", map = 1431, x = 15.88, y = 38.72 },
					{ t = "turnin", quest = 323, title = "Proving Your Worth", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.79, y = 34.0, f = "e" },
					{ t = "accept", quest = 269, title = "Seeking Wisdom", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.79, y = 34.0, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 156, title = "Gather Rot Blossoms", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 73.78, y = 44.48, f = "e" },
					{ t = "accept", quest = 159, title = "Juice Delivery", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 73.78, y = 44.48, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 57, title = "The Night Watch", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.6, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 128, title = "Blackrock Bounty", npc = 903, npcName = "Guard Howe", map = 1433, x = 26.45, y = 57.85, f = "e" },
				},
			},
		},
	})
end

