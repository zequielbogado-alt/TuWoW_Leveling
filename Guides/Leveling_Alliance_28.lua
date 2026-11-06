-- TuWoW_Leveling — Guides/Leveling_Alliance_28.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-feralas-and-tanaris-44-48",
		pack = "guides",
		title = "Feralas & Tanaris (Parte 1/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-feralas-and-tanaris-44-48-part-2",
		author = "TuWoW & Zygor",
		minLevel = 44,
		maxLevel = 48,
		zone = 1446,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 3022, title = "Handle With Care", npc = 7763, npcName = "Curgle Cranklehop", map = 1446, x = 52.35, y = 26.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2821, title = "The Mark of Quality", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Feathermoon Stronghold", map = 1444, x = 30.97, y = 43.49, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 4124, title = "The Missing Courier", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.38, y = 46.17, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2866, title = "The Ruins of Solarsal", npc = 3936, npcName = "Shandris Feathermoon", map = 1444, x = 30.28, y = 46.17, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2939, title = "In Search of Knowledge", npc = 7764, npcName = "Troyas Moonbreeze", map = 1444, x = 31.78, y = 45.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2982, title = "The High Wilderness", npc = 7900, npcName = "Angelas Moonbreeze", map = 1444, x = 31.83, y = 45.61, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 4124, title = "The Missing Courier", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.86, y = 45.13, f = "e" },
					{ t = "accept", quest = 4125, title = "The Missing Courier", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.86, y = 45.13, f = "e" },
				},
			},
			{
				note = "Stand inside it.",
				goals = {
					{ t = "turnin", quest = 2866, title = "The Ruins of Solarsal", map = 1444, x = 26.32, y = 52.34, f = "e" },
					{ t = "accept", quest = 2867, title = "Return to Feathermoon Stronghold", map = 1444, x = 26.32, y = 52.34, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2867, title = "Return to Feathermoon Stronghold", npc = 3936, npcName = "Shandris Feathermoon", map = 1444, x = 30.28, y = 46.17, f = "e" },
					{ t = "accept", quest = 3130, title = "Against the Hatecrest", npc = 3936, npcName = "Shandris Feathermoon", map = 1444, x = 30.28, y = 46.17, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3130, title = "Against the Hatecrest", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.38, y = 46.17, f = "e" },
					{ t = "accept", quest = 2869, title = "Against the Hatecrest", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.38, y = 46.17, f = "e" },
				},
			},
			{
				note = "Nagas.",
				goals = {
					{ t = "collect", quest = 2869, item = 9247, itemName = "Hatecrest Naga Scale", count = 10, oi = 1, map = 1444, x = 29.0, y = 53.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2869, title = "Against the Hatecrest", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.38, y = 46.17, f = "e" },
					{ t = "accept", quest = 2870, title = "Against Lord Shalzaru", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.38, y = 46.17, f = "e" },
				},
			},
			{
				note = "Long grind soon. Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 7942, npcName = "Faralorn", map = 1444, x = 30.65, y = 43.43, f = "e" },
				},
			},
			{
				note = "Cave in next step can be dangerous. Skip quest, if you prefer.",
				goals = {
					{ t = "complete", quest = 2870, title = "Against Lord Shalzaru", note = "Click Here to Continue" },
				},
			},
			{
				note = "May need help. Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1444, x = 26.09, y = 67.26 },
					{ t = "collect", quest = 2870, item = 9248, itemName = "Mysterious Relic", oi = 1, map = 1444, x = 28.49, y = 70.45, f = "e" },
				},
			},
			{
				note = "Low drop rate.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1444, x = 26.09, y = 67.26 },
					{ t = "collect", item = 8705, itemName = "OOX-22/FE Distress Beacon", map = 1444, x = 25.7, y = 63.4, f = "e" },
					{ t = "use", item = 8705, itemName = "OOX-22/FE Distress Beacon" },
					{ t = "accept", quest = 2766, title = "Find OOX-22/FE!", npc = 5334, npcName = "Hatecrest Myrmidon", map = 1444, x = 25.2, y = 62.8, f = "e" },
				},
			},
			{
				note = "Higher level zones soon. Not enough quests to get high enough level.",
				goals = {
					{ t = "goto", text = "ding 46", map = 1444, x = 25.2, y = 62.8 },
				},
			},
			{
				note = "Underwater.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1444, x = 26.09, y = 67.26 },
					{ t = "goto", text = "Swim to this location to avoid fatigue", map = 1444, x = 38.94, y = 74.91 },
					{ t = "goto", text = "Swim to this location to avoid fatigue", map = 1444, x = 41.29, y = 74.3 },
					{ t = "turnin", quest = 4125, title = "The Missing Courier", map = 1444, x = 45.45, y = 64.97, f = "e" },
					{ t = "accept", quest = 4127, title = "Boat Wreckage", map = 1444, x = 45.45, y = 64.97, f = "e" },
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
					{ t = "train", npc = 7312, npcName = "Dink", map = 1455, x = 27.16, y = 8.56, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 4127, title = "Boat Wreckage", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.86, y = 45.13, f = "e" },
					{ t = "accept", quest = 4129, title = "The Knife Revealed", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.86, y = 45.13, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "turnin", quest = 4129, title = "The Knife Revealed", npc = 7879, npcName = "Quintis Jonespyre", map = 1444, x = 32.45, y = 43.79, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "accept", quest = 4130, title = "Psychometric Reading", npc = 7879, npcName = "Quintis Jonespyre", map = 1444, x = 32.45, y = 43.79, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 4130, title = "Psychometric Reading", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.86, y = 45.13, f = "e" },
					{ t = "accept", quest = 4131, title = "The Woodpaw Gnolls", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.86, y = 45.13, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2870, title = "Against Lord Shalzaru", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.38, y = 46.17, f = "e" },
					{ t = "accept", quest = 2871, title = "Delivering the Relic", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.38, y = 46.17, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2871, title = "Delivering the Relic", npc = 7878, npcName = "Vestia Moonspear", map = 1444, x = 30.08, y = 45.06, f = "e" },
				},
			},
			{
				note = "Red flying snakes. On their corpses.",
				goals = {
					{ t = "use", item = 10699, itemName = "Yeh'kinya's Bramble" },
					{ t = "complete", quest = 3520, title = "Screecher Spirits", note = "Collect #3# Screecher Spirits", map = 1444, x = 43.2, y = 37.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3520, title = "Screecher Spirits", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.99, y = 22.36, f = "e" },
					{ t = "accept", quest = 3527, title = "The Prophecy of Mosh'aru", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.99, y = 22.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2768, title = "Divino-matic Rod", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2865, title = "Scarab Shells", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3042, title = "Troll Temper", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.41, y = 28.75, f = "e" },
				},
			},
			{
				note = "Second boss.",
				goals = {
					{ t = "collect", quest = 3527, item = 10660, itemName = "First Mosh'aru Tablet", oi = 1 },
				},
			},
			{
				note = "Killable after releasing them. Clear the temple event.",
				goals = {
					{ t = "collect", quest = 2768, item = 8548, itemName = "Divino-matic Rod", oi = 1 },
				},
			},
			{
				note = "Follow the path southeast. In large room with pool in the center. Walks around.",
				goals = {
					{ t = "collect", quest = 3527, item = 10661, itemName = "Second Mosh'aru Tablet", oi = 2 },
				},
			},
			{
				label = "Collect_Uncracked_Scarab_Shell",
				along = true,
				note = "Throughout the dungeon. Mostly in the scarab room with Theka the Martyr.",
				goals = {
					{ t = "collect", quest = 2865, item = 9238, itemName = "Uncracked Scarab Shell", count = 5, oi = 1 },
				},
			},
			{
				label = "Collect_Troll_Temper",
				along = true,
				note = "Trolls. Throughout the dungeon. May require multiple dungeon runs.",
				goals = {
					{ t = "collect", quest = 3042, item = 9523, itemName = "Troll Temper", count = 20, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3527, title = "The Prophecy of Mosh'aru", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.99, y = 22.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2768, title = "Divino-matic Rod", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2865, title = "Scarab Shells", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3042, title = "Troll Temper", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.41, y = 28.75, f = "e" },
				},
			},
			{
				note = "In the clearing between the tunnel and cave.",
				goals = {
					{ t = "goto", text = "Follow the road and run through the tunnel", map = 1444, x = 55.22, y = 56.39 },
					{ t = "turnin", quest = 2766, title = "Find OOX-22/FE!", npc = 7807, npcName = "Homing Robot OOX-22/FE", map = 1444, x = 53.35, y = 55.7, f = "e" },
				},
			},
			{
				label = "Collect_Thick_Yeti_Hides",
				along = true,
				note = "Yetis. More through the tunnel.",
				goals = {
					{ t = "collect", quest = 2821, item = 8973, itemName = "Thick Yeti Hide", count = 10, oi = 1, map = 1444, x = 55.4, y = 57.4, f = "e" },
				},
			},
			{
				note = "Large white egg. Multiple locations. Don't vendor it. Needed for future quest.",
				goals = {
					{ t = "goto", text = "Leave the cave and run through the tunnel", map = 1444, x = 55.22, y = 56.39 },
					{ t = "goto", text = "Follow the path up", map = 1444, x = 54.1, y = 68.24 },
					{ t = "collect", quest = 2741, item = 8564, itemName = "Hippogryph Egg", map = 1444, x = 56.6, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2982, npc = 5236, target = "Gordunni Shaman", count = 8, oi = 2, map = 1444, x = 60.4, y = 68.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2982, npc = 5232, target = "Gordunni Brute", count = 8, oi = 3, map = 1444, x = 60.4, y = 58.8, f = "e" },
				},
			},
			{
				label = "Kill_Gordunni_Warlocks",
				along = true,
				goals = {
					{ t = "kill", quest = 2982, npc = 5240, target = "Gordunni Warlock", count = 8, oi = 1, map = 1444, x = 60.4, y = 57.0, f = "e" },
				},
			},
			{
				label = "Collect_Groddoc_Livers",
				along = true,
				note = "Gorillas. Shared spawns with bears. notinsticky",
				goals = {
					{ t = "collect", quest = 1452, item = 6259, itemName = "Groddoc Liver", count = 3, oi = 3, map = 1444, x = 59.0, y = 61.8, f = "e" },
				},
			},
			{
				label = "Collect_Ironfur_Livers",
				along = true,
				note = "Bears. Shared spawns with apes. notinsticky",
				goals = {
					{ t = "collect", quest = 1452, item = 6258, itemName = "Ironfur Liver", count = 3, oi = 2, map = 1444, x = 59.0, y = 61.8, f = "e" },
				},
			},
			{
				note = "Clear enemies around the large cage. Makes next step easier.",
				goals = {
					{ t = "goto", text = "Feralas", map = 1444, x = 66.69, y = 46.57 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1444, x = 65.66, y = 46.77 },
					{ t = "accept", quest = 2969, title = "Freedom for All Creatures", npc = 7956, npcName = "Kindal Moonweaver", map = 1444, x = 65.94, y = 45.65, f = "e" },
				},
			},
			{
				note = "Releases the Captured Sprite Darters. Protect as many as you can. At least 6 of them must survive. HURRY, timed quest.",
				goals = {
					{ t = "complete", quest = 2969, title = "Freedom for All Creatures", note = "Save at Least 6 Sprite Darters from Capture", map = 1444, x = 66.67, y = 46.75, f = "e" },
				},
			},
			{
				note = "HURRY, timed quest. Wait for her to respawn, if missing.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1444, x = 65.66, y = 46.77 },
					{ t = "turnin", quest = 2969, title = "Freedom for All Creatures", npc = 7956, npcName = "Kindal Moonweaver", map = 1444, x = 65.94, y = 45.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2970, title = "Doling Justice", npc = 7957, npcName = "Jer'kai Moonweaver", map = 1444, x = 65.95, y = 45.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2970, npc = 7727, target = "Grimtotem Shaman", count = 6, oi = 3, map = 1444, x = 67.4, y = 46.4, f = "e" },
					{ t = "kill", quest = 2970, npc = 7725, target = "Grimtotem Raider", count = 10, oi = 2, map = 1444, x = 67.4, y = 46.4, f = "e" },
					{ t = "kill", quest = 2970, npc = 7726, target = "Grimtotem Naturalist", count = 12, oi = 1, map = 1444, x = 67.4, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1444, x = 65.66, y = 46.77 },
					{ t = "turnin", quest = 2970, title = "Doling Justice", npc = 7957, npcName = "Jer'kai Moonweaver", map = 1444, x = 65.95, y = 45.61, f = "e" },
					{ t = "accept", quest = 2972, title = "Doling Justice", npc = 7957, npcName = "Jer'kai Moonweaver", map = 1444, x = 65.95, y = 45.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4131, title = "The Woodpaw Gnolls", map = 1444, x = 73.31, y = 56.31, f = "e" },
					{ t = "accept", quest = 4135, title = "The Writhing Deep", map = 1444, x = 73.31, y = 56.31, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 11463, itemName = "Undelivered Parcel" },
					{ t = "accept", quest = 4281, title = "Thalanaar Delivery" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave at the bottom of the path", map = 1444, x = 73.17, y = 63.88 },
					{ t = "goto", text = "Follow the path down", map = 1444, x = 72.69, y = 64.56 },
					{ t = "turnin", quest = 4135, title = "The Writhing Deep", map = 1444, x = 72.08, y = 63.75, f = "e" },
					{ t = "accept", quest = 4265, title = "Freed from the Hive", map = 1444, x = 72.08, y = 63.75, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "complete", quest = 4265, title = "Freed from the Hive", note = "Free Raschal", map = 1444, x = 72.08, y = 63.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2821, title = "The Mark of Quality", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2982, title = "The High Wilderness", npc = 7900, npcName = "Angelas Moonbreeze", map = 1444, x = 31.83, y = 45.61, f = "e" },
					{ t = "accept", quest = 3445, title = "The Sunken Temple", npc = 7900, npcName = "Angelas Moonbreeze", map = 1444, x = 31.83, y = 45.61, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 4265, title = "Freed from the Hive", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.86, y = 45.13, f = "e" },
					{ t = "accept", quest = 4266, title = "A Hero's Welcome", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.86, y = 45.13, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4266, title = "A Hero's Welcome", npc = 3936, npcName = "Shandris Feathermoon", map = 1444, x = 30.28, y = 46.17, f = "e" },
					{ t = "accept", quest = 4267, title = "Rise of the Silithid", npc = 3936, npcName = "Shandris Feathermoon", map = 1444, x = 30.28, y = 46.17, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3022, title = "Handle With Care", npc = 7916, npcName = "Erelas Ambersky", map = 1438, x = 55.5, y = 92.05, f = "e" },
					{ t = "accept", quest = 3661, title = "Favored of Elune?", npc = 7916, npcName = "Erelas Ambersky", map = 1438, x = 55.5, y = 92.05, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 2939, title = "In Search of Knowledge", npc = 7907, npcName = "Daryn Lightwind", map = 1438, x = 55.41, y = 92.23, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 2940, title = "Feralas: A History", map = 1438, x = 55.22, y = 91.46, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 2940, title = "Feralas: A History", npc = 7907, npcName = "Daryn Lightwind", map = 1438, x = 55.41, y = 92.23, f = "e" },
					{ t = "accept", quest = 2941, title = "The Borrower", npc = 7907, npcName = "Daryn Lightwind", map = 1438, x = 55.41, y = 92.23, f = "e" },
				},
			},
			{
				note = "Deposit into the bank.",
				goals = {
					{ t = "complete", quest = 2941, title = "The Borrower", note = "bank A Short Note##9329", map = 1457, x = 39.6, y = 41.98, f = "e" },
					{ t = "complete", quest = 3520, title = "Screecher Spirits", note = "bank Yeh'kinya's Bramble##10699", map = 1457, x = 39.6, y = 41.98, f = "e" },
					{ t = "goto", text = "bank Hippogryph Egg##8564", map = 1457, x = 39.6, y = 41.98 },
					{ t = "complete", quest = 1452, title = "Rhapsody's Kalimdor Kocktail", note = "bank Ironfur Liver##6258", map = 1457, x = 39.6, y = 41.98, f = "e" },
					{ t = "complete", quest = 1452, title = "Rhapsody's Kalimdor Kocktail", note = "bank Groddoc Liver##6259", map = 1457, x = 39.6, y = 41.98, f = "e" },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Saves time in Un'Goro Crater. Inside the building.",
				goals = {
					{ t = "collect", quest = 4284, item = 11186, itemName = "Red Power Crystal", count = 7, map = 1457, x = 56.24, y = 54.05, f = "e" },
					{ t = "collect", quest = 4284, item = 11188, itemName = "Yellow Power Crystal", count = 7, map = 1457, x = 56.24, y = 54.05, f = "e" },
					{ t = "collect", quest = 4284, item = 11185, itemName = "Green Power Crystal", count = 7, map = 1457, x = 56.24, y = 54.05, f = "e" },
					{ t = "collect", quest = 4284, item = 11184, itemName = "Blue Power Crystal", count = 7, map = 1457, x = 56.24, y = 54.05, f = "e" },
				},
			},
			{
				note = "Deposit into the bank.",
				goals = {
					{ t = "goto", text = "bank Red Power Crystal##11186", map = 1457, x = 39.6, y = 41.98 },
					{ t = "goto", text = "bank Yellow Power Crystal##11188", map = 1457, x = 39.6, y = 41.98 },
					{ t = "goto", text = "bank Green Power Crystal##11185", map = 1457, x = 39.6, y = 41.98 },
					{ t = "goto", text = "bank Blue Power Crystal##11184", map = 1457, x = 39.6, y = 41.98 },
				},
			},
			{
				note = "Downstairs inside the tree cave.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Enter the tree cave", map = 1457, x = 32.14, y = 16.46 },
					{ t = "train", npc = 4163, npcName = "Syurna", map = 1457, x = 37.0, y = 21.92, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 4146, npcName = "Jocaste", map = 1457, x = 40.38, y = 8.54, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 4089, npcName = "Sildanair", map = 1457, x = 61.78, y = 42.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 4091, npcName = "Jandria", map = 1457, x = 37.9, y = 82.73, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 4267, title = "Rise of the Silithid", npc = 7740, npcName = "Gracina Spiritmight", map = 1457, x = 41.85, y = 85.62, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 2972, title = "Doling Justice", npc = 7999, npcName = "Tyrande Whisperwind", map = 1457, x = 39.1, y = 81.59, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "goto", text = "Train Tiger Riding", map = 1457, x = 38.69, y = 15.84 },
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
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "goto", text = "Train Ram Riding", map = 1426, x = 63.94, y = 50.1 },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "goto", text = "Train Mechanostrider Piloting", map = 1426, x = 49.15, y = 48.13 },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", text = "Train Horse Riding", map = 1429, x = 84.32, y = 64.87 },
				},
			},
			{
				note = "Long grind soon. Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 7942, npcName = "Faralorn", map = 1444, x = 30.65, y = 43.43, f = "e" },
				},
			},
		},
	})
end

