-- TuWoW_Leveling — Guides/Leveling_Horde_13.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-hillsbrad-foothills-22-24",
		pack = "guides",
		title = "Hillsbrad Foothills",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-the-barrens-24-25",
		author = "TuWoW & Zygor",
		minLevel = 22,
		maxLevel = 24,
		zone = 1458,
		version = 1,
		steps = {
			{
				note = "Up on the platform.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "learnspell Teleport: Undercity##3563", map = 1458, x = 84.19, y = 15.58 },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5644, title = "Dark Sacrifice", npc = 4606, npcName = "Aelthalyste", map = 1458, x = 49.26, y = 17.12, f = "e" },
				},
			},
			{
				note = "Underwater.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 30, item = 15882, itemName = "Half Pendant of Aquatic Endurance", map = 1421, x = 29.54, y = 29.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1456, x = 29.81, y = 29.82 },
					{ t = "turnin", quest = 264, title = "Until Death Do Us Part", map = 1421, x = 44.18, y = 42.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3301, title = "Mura Runetotem", npc = 8385, npcName = "Mura Runetotem", map = 1421, x = 42.91, y = 41.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 493, title = "Journey to Hillsbrad Foothills", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 516, title = "Beren's Peril", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 43.98, y = 40.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 494, title = "Time To Strike", npc = 2214, npcName = "Deathstalker Lesh", map = 1424, x = 20.78, y = 47.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Tarren Mill", map = 1424, x = 60.14, y = 18.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 493, title = "Journey to Hillsbrad Foothills", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
					{ t = "turnin", quest = 1065, title = "Journey to Tarren Mill", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
					{ t = "accept", quest = 1066, title = "Blood of Innocents", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
					{ t = "accept", quest = 496, title = "Elixir of Suffering", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
					{ t = "accept", quest = 501, title = "Elixir of Pain", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2479, title = "Hinott's Assistance", npc = 2391, npcName = "Serge Hinott", map = 1424, x = 61.63, y = 19.19, f = "e" },
					{ t = "accept", quest = 2480, title = "Hinott's Assistance", npc = 2391, npcName = "Serge Hinott", map = 1424, x = 61.63, y = 19.19, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "complete", quest = 2480, title = "Hinott's Assistance", note = "Complete the Cure", map = 1424, x = 61.58, y = 18.97, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 2480, title = "Hinott's Assistance", npc = 2391, npcName = "Serge Hinott", map = 1424, x = 61.58, y = 18.97, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "use", item = 8095, itemName = "Hinott's Oil" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 494, title = "Time To Strike", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.46, f = "e" },
					{ t = "accept", quest = 527, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.46, f = "e" },
				},
			},
			{
				note = "Taming a temporary pet soon. Learning Claw (Rank 3).",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 496, title = "Elixir of Suffering", note = "Stable Your Pet", map = 1424, x = 62.31, y = 19.7, f = "e" },
				},
			},
			{
				note = "Wanted poster.",
				goals = {
					{ t = "accept", quest = 567, title = "Dangerous!", map = 1424, x = 62.55, y = 19.69, f = "e" },
				},
			},
			{
				note = "Wanted poster.",
				goals = {
					{ t = "accept", quest = 549, title = "WANTED: Syndicate Personnel", map = 1424, x = 62.62, y = 20.74, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 498, title = "The Rescue", npc = 2229, npcName = "Krusk", map = 1424, x = 63.23, y = 20.66, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "use", item = 7768, itemName = "Empty Red Waterskin" },
					{ t = "collect", quest = 1536, item = 7771, itemName = "Filled Red Waterskin", oi = 1, map = 1424, x = 62.15, y = 20.75, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on a Gray Bear. Kill enemies nearby.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 496, title = "Elixir of Suffering", note = "Learn the Claw (Rank 3) Pet Ability", map = 1424, x = 66.4, y = 19.0, f = "e" },
				},
			},
			{
				note = "Abandon your temporary pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 496, title = "Elixir of Suffering", note = "Retrieve Your Pet", map = 1424, x = 62.31, y = 19.7, f = "e" },
				},
			},
			{
				note = "Use Beast Training ability.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 496, title = "Elixir of Suffering", note = "Teach Claw (Rank 3) to Your Pet" },
				},
			},
			{
				note = "Walks around. Multiple locations.",
				goals = {
					{ t = "goto", text = "Enter Durnholde Keep and cross the bridge", map = 1424, x = 76.57, y = 46.48 },
					{ t = "collect", quest = 498, item = 3499, itemName = "Burnished Gold Key", map = 1424, x = 78.8, y = 42.0, f = "e" },
				},
			},
			{
				note = "Tied to the orc's leg.",
				goals = {
					{ t = "complete", quest = 498, title = "The Rescue", note = "Rescue Tog'thar", map = 1424, x = 79.79, y = 39.66, f = "e" },
				},
			},
			{
				note = "Walks around. Multiple locations.",
				goals = {
					{ t = "collect", quest = 498, item = 3467, itemName = "Dull Iron Key", map = 1424, x = 79.6, y = 41.83, f = "e" },
				},
			},
			{
				note = "Tied to the orc's leg. Inside the building.",
				goals = {
					{ t = "complete", quest = 498, title = "The Rescue", note = "Rescue Drull", map = 1424, x = 75.33, y = 41.5, f = "e" },
				},
			},
			{
				label = "Collect_Vials_of_Innocent_Blood",
				along = true,
				goals = {
					{ t = "collect", quest = 1066, item = 5620, itemName = "Vial of Innocent Blood", count = 5, oi = 1, map = 1424, x = 79.7, y = 42.49, f = "e" },
				},
			},
			{
				label = "Kill_Syndicate_Rogues_And_Watchmen",
				along = true,
				goals = {
					{ t = "kill", quest = 549, npc = 2260, target = "Syndicate Rogue", count = 10, oi = 1, map = 1424, x = 78.99, y = 43.13, f = "e" },
					{ t = "kill", quest = 549, npc = 2261, target = "Syndicate Watchman", count = 10, oi = 2, map = 1424, x = 78.99, y = 43.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 498, title = "The Rescue", note = "Cross the bridge and leave Durnholde Keep", map = 1424, x = 76.57, y = 46.48, f = "e" },
				},
			},
			{
				label = "Collect_Creeper_Ichor",
				along = true,
				note = "Green spiders.",
				goals = {
					{ t = "collect", quest = 496, item = 3477, itemName = "Creeper Ichor", oi = 2, map = 1424, x = 62.8, y = 34.2, f = "e" },
				},
			},
			{
				label = "Collect_Gray_Bear_Tongues",
				along = true,
				goals = {
					{ t = "collect", quest = 496, item = 3476, itemName = "Gray Bear Tongue", count = 10, oi = 1, map = 1424, x = 62.8, y = 34.2, f = "e" },
				},
			},
			{
				note = "Helps reach level 23 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 22,19570", map = 1424, x = 62.8, y = 34.2 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1066, title = "Blood of Innocents", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
					{ t = "turnin", quest = 496, title = "Elixir of Suffering", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
					{ t = "accept", quest = 499, title = "Elixir of Suffering", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
					{ t = "accept", quest = 1067, title = "Return to Thunder Bluff", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 499, title = "Elixir of Suffering", npc = 2230, npcName = "Umpi", map = 1424, x = 61.52, y = 19.2, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 549, title = "WANTED: Syndicate Personnel", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.46, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 498, title = "The Rescue", npc = 2229, npcName = "Krusk", map = 1424, x = 63.23, y = 20.6, f = "e" },
				},
			},
			{
				note = "Multiple locations. Inside buildings or in the field.",
				goals = {
					{ t = "kill", quest = 527, npc = 2403, target = "Farmer Getz", oi = 4, map = 1424, x = 36.74, y = 39.44, f = "e" },
				},
			},
			{
				note = "Both floors inside the building. Can also be outside.",
				goals = {
					{ t = "kill", quest = 527, npc = 232, target = "Farmer Ray", oi = 3, map = 1424, x = 33.68, y = 35.42, f = "e" },
				},
			},
			{
				label = "Kill_Hillsbrad_Farmers_Farmhands",
				along = true,
				goals = {
					{ t = "kill", quest = 527, npc = 2266, target = "Hillsbrad Farmer", count = 6, oi = 1, map = 1424, x = 33.4, y = 40.8, f = "e" },
					{ t = "kill", quest = 527, npc = 2360, target = "Hillsbrad Farmhand", count = 6, oi = 2, map = 1424, x = 33.4, y = 40.8, f = "e" },
				},
			},
			{
				label = "Collect_Mountain_Lion_Blood",
				along = true,
				goals = {
					{ t = "collect", quest = 501, item = 3496, itemName = "Mountain Lion Blood", count = 10, oi = 1, map = 1424, x = 43.98, y = 37.68, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 501, title = "Elixir of Pain", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
					{ t = "accept", quest = 502, title = "Elixir of Pain", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 527, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.45, f = "e" },
					{ t = "accept", quest = 528, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 546, title = "Souvenirs of Death", npc = 2418, npcName = "Deathguard Samsa", map = 1424, x = 62.1, y = 19.73, f = "e" },
				},
			},
			{
				note = "Kill enemies as you walk. Reduces grinding later.",
				goals = {
					{ t = "complete", quest = 502, title = "Elixir of Pain", note = "Click Here to Continue" },
				},
			},
			{
				note = "Small wolf. Walks around. Enrages and attacks after quest turnin. Kill him for 1000+ xp.",
				goals = {
					{ t = "turnin", quest = 502, title = "Elixir of Pain", npc = 2274, npcName = "Stanley", map = 1424, x = 32.66, y = 35.32, f = "e" },
				},
			},
			{
				note = "Female carrying a pitchfork. Walks around.",
				goals = {
					{ t = "kill", quest = 567, npc = 2451, target = "Farmer Kalaba", oi = 4, map = 1424, x = 34.4, y = 45.8, f = "e" },
				},
			},
			{
				label = "Kill_Citizen_Wilkes",
				along = true,
				note = "Walks the path between buildings.",
				goals = {
					{ t = "kill", quest = 567, npc = 2449, target = "Citizen Wilkes", oi = 2, map = 1424, x = 32.6, y = 39.8, f = "e" },
				},
			},
			{
				label = "Kill_Hillsbrad_Peasants",
				along = true,
				goals = {
					{ t = "kill", quest = 528, npc = 2267, target = "Hillsbrad Peasant", count = 15, oi = 1, map = 1424, x = 35.32, y = 45.42, f = "e" },
				},
			},
			{
				note = "Helps reach level 24 after quest turnins. Higher level enemies soon.",
				goals = {
					{ t = "goto", text = "ding 23,24600", map = 1424, x = 41.8, y = 37.6 },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 528, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.45, f = "e" },
					{ t = "accept", quest = 529, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 516, title = "Beren's Peril", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 43.98, y = 40.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "collect", quest = 529, item = 3564, itemName = "Shipment of Iron", oi = 3, map = 1424, x = 32.01, y = 45.45, f = "e" },
				},
			},
			{
				label = "Kill_Blacksmith_Verrington",
				along = true,
				note = "Walks around. Multiple locations. Can be inside the blacksmith building.",
				goals = {
					{ t = "kill", quest = 529, npc = 2404, target = "Blacksmith Verringtan", oi = 1, map = 1424, x = 32.41, y = 44.81, f = "e" },
				},
			},
			{
				label = "Kill_Hillsbrad_Apprentice_Blacksmiths",
				along = true,
				goals = {
					{ t = "kill", quest = 529, npc = 2265, target = "Hillsbrad Apprentice Blacksmith", count = 4, oi = 2, map = 1424, x = 32.41, y = 44.81, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 15883, itemName = "Half Pendant of Aquatic Agility" },
					{ t = "collect", quest = 30, item = 15885, itemName = "Pendant of the Sea Lion", oi = 1, map = 1450, x = 35.92, y = 41.42, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 30, title = "Trial of the Sea Lion", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 31, title = "Aquatic Form", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				label = "Collect_Hillsbrad_Human_Skulls",
				along = true,
				goals = {
					{ t = "collect", quest = 546, item = 3692, itemName = "Hillsbrad Human Skull", count = 30, oi = 1, map = 1416, x = 26.3, y = 99.1, f = "e" },
				},
			},
		},
	})
end

