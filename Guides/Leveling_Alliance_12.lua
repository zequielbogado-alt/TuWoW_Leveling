-- TuWoW_Leveling — Guides/Leveling_Alliance_12.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-darkshore-20-21",
		pack = "guides",
		title = "Darkshore",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-ashenvale-and-stonetalon-mountains-21-24",
		author = "TuWoW & Zygor",
		minLevel = 20,
		maxLevel = 21,
		zone = 1439,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 947, title = "Cave Mushrooms", npc = 3583, npcName = "Barithras Moonshade", map = 1439, x = 37.32, y = 43.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3765, title = "The Corruption Abroad", npc = 8997, npcName = "Gershala Nightwhisper", map = 1439, x = 38.33, y = 43.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2139, title = "Tharnariun's Hope", npc = 3701, npcName = "Tharnariun Treetender", map = 1439, x = 38.84, y = 43.42, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 986, title = "A Lost Master", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.37, y = 43.48, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 4763, title = "The Blackwood Corrupted", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 729, title = "The Absent Minded Prospector", npc = 2913, npcName = "Archaeologist Hollee", map = 1439, x = 37.44, y = 41.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 12346, itemName = "Empty Cleansing Bowl" },
					{ t = "collect", quest = 4763, item = 12347, itemName = "Filled Cleansing Bowl", map = 1439, x = 37.78, y = 44.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1003, title = "Buzzbox 525", map = 1439, x = 51.28, y = 24.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2098, title = "Gyromast's Retrieval", npc = 6667, npcName = "Gelkak Gyromast", map = 1439, x = 56.65, y = 13.48, f = "e" },
				},
			},
			{
				note = "Murlocs. Underwater.",
				goals = {
					{ t = "collect", quest = 2098, item = 7499, itemName = "Middle of Gelkak's Key", oi = 2, map = 1439, x = 54.95, y = 12.16, f = "e" },
				},
			},
			{
				label = "Collect_Bottom_Of_Gelkaks_Key",
				along = true,
				note = "Crabs.",
				goals = {
					{ t = "collect", quest = 2098, item = 7500, itemName = "Bottom of Gelkak's Key", oi = 3, map = 1439, x = 54.76, y = 17.34, f = "e" },
				},
			},
			{
				note = "Large walking birds.",
				goals = {
					{ t = "collect", quest = 2098, item = 7498, itemName = "Top of Gelkak's Key", oi = 1, map = 1439, x = 60.55, y = 12.03, f = "e" },
				},
			},
			{
				label = "Collect_Fine_Moonstalker_Pelts",
				along = true,
				note = "Black tigers.",
				goals = {
					{ t = "collect", quest = 986, item = 5386, itemName = "Fine Moonstalker Pelt", count = 5, oi = 1, map = 1439, x = 61.41, y = 9.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2098, title = "Gyromast's Retrieval", npc = 6667, npcName = "Gelkak Gyromast", map = 1439, x = 56.65, y = 13.48, f = "e" },
				},
			},
			{
				note = "Entrance of the cave.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 15844, itemName = "Empty Cliffspring Falls Sampler" },
					{ t = "collect", quest = 6122, item = 15845, itemName = "Filled Cliffspring Falls Sampler", oi = 1, map = 1439, x = 54.93, y = 33.32, f = "e" },
				},
			},
			{
				note = "Brown mushrooms. Upstairs inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1439, x = 54.97, y = 33.37 },
					{ t = "collect", quest = 947, item = 5270, itemName = "Death Cap", oi = 2, map = 1439, x = 55.75, y = 36.19, f = "e" },
				},
			},
			{
				label = "Collect_Scaber_Stalks",
				along = true,
				note = "Blue mushrooms. Inside the cave. notinsticky",
				goals = {
					{ t = "collect", quest = 947, item = 5271, itemName = "Scaber Stalk", count = 5, oi = 1, map = 1439, x = 54.97, y = 33.37, f = "e" },
				},
			},
			{
				note = "May be attacked.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1439, x = 54.97, y = 33.37 },
					{ t = "collect", quest = 4763, item = 12341, itemName = "Blackwood Fruit Sample", map = 1439, x = 52.87, y = 33.38, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1439, x = 52.4, y = 35.94 },
					{ t = "kill", quest = 2139, npc = 6788, target = "Den Mother", oi = 1, map = 1439, x = 51.48, y = 38.26, f = "e" },
				},
			},
			{
				note = "May be attacked.",
				goals = {
					{ t = "collect", quest = 4763, item = 12342, itemName = "Blackwood Grain Sample", map = 1439, x = 50.67, y = 34.99, f = "e" },
				},
			},
			{
				note = "May be attacked.",
				goals = {
					{ t = "collect", quest = 4763, item = 12343, itemName = "Blackwood Nut Sample", map = 1439, x = 51.83, y = 33.56, f = "e" },
				},
			},
			{
				note = "Appears nearby. Appears on the ground.",
				goals = {
					{ t = "use", item = 12347, itemName = "Filled Cleansing Bowl" },
					{ t = "collect", quest = 4763, item = 12355, itemName = "Talisman of Corruption", oi = 1, map = 1439, x = 52.41, y = 33.44, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6122, title = "The Principal Source", npc = 3702, npcName = "Alanndarian Nightsong", map = 1439, x = 37.69, y = 40.66, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4763, title = "The Blackwood Corrupted", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 947, title = "Cave Mushrooms", npc = 3583, npcName = "Barithras Moonshade", map = 1439, x = 37.32, y = 43.64, f = "e" },
					{ t = "accept", quest = 948, title = "Onu", npc = 3583, npcName = "Barithras Moonshade", map = 1439, x = 37.32, y = 43.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4740, title = "WANTED: Murkdeep!", map = 1439, x = 37.23, y = 44.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2139, title = "Tharnariun's Hope", npc = 3701, npcName = "Tharnariun Treetender", map = 1439, x = 38.84, y = 43.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 986, title = "A Lost Master", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.37, y = 43.48, f = "e" },
					{ t = "accept", quest = 993, title = "A Lost Master", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.37, y = 43.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 952, title = "Grove of the Ancients", npc = 3616, npcName = "Onu", map = 1439, x = 43.55, y = 76.29, f = "e" },
					{ t = "turnin", quest = 948, title = "Onu", npc = 3616, npcName = "Onu", map = 1439, x = 43.55, y = 76.29, f = "e" },
					{ t = "accept", quest = 944, title = "The Master's Glaive", npc = 3616, npcName = "Onu", map = 1439, x = 43.55, y = 76.29, f = "e" },
				},
			},
			{
				note = "Murlocs. Groups of murlocs run appear near the water. They run into the camp. Stand away from the camp for safety. Eventually appears.",
				goals = {
					{ t = "kill", quest = 4740, npc = 10323, target = "Murkdeep", oi = 1, map = 1439, x = 36.51, y = 76.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4730, title = "Beached Sea Creature", map = 1439, x = 32.73, y = 80.82, f = "e" },
				},
			},
			{
				note = "Careful to not pull multiple enemies.",
				goals = {
					{ t = "accept", quest = 4731, title = "Beached Sea Turtle", map = 1439, x = 31.7, y = 83.7, f = "e" },
				},
			},
			{
				note = "Careful to not pull multiple enemies.",
				goals = {
					{ t = "accept", quest = 4732, title = "Beached Sea Turtle", map = 1439, x = 31.27, y = 85.54, f = "e" },
				},
			},
			{
				note = "Careful, enemies hidden by terrain. Try not pull multiple enemies.",
				goals = {
					{ t = "accept", quest = 4733, title = "Beached Sea Creature", map = 1439, x = 31.29, y = 87.54, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing.",
				goals = {
					{ t = "turnin", quest = 729, title = "The Absent Minded Prospector", npc = 2917, npcName = "Prospector Remtravel", map = 1439, x = 35.73, y = 83.7, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing.",
				goals = {
					{ t = "accept", quest = 731, title = "The Absent Minded Prospector", npc = 2917, npcName = "Prospector Remtravel", map = 1439, x = 35.73, y = 83.7, f = "e" },
				},
			},
			{
				note = "Follow and protect Prospector Remtravel. He's weak and can die easily. Get enemies off him quckly. Troggs ambush 3 times.",
				goals = {
					{ t = "complete", quest = 731, title = "The Absent Minded Prospector", note = "Escort Prospector Remtravel", map = 1439, x = 35.73, y = 83.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 944, title = "The Master's Glaive", note = "Enter the Master's Glaive", map = 1439, x = 39.51, y = 86.67, f = "e" },
				},
			},
			{
				note = "On the table.",
				goals = {
					{ t = "use", item = 5251, itemName = "Phial of Scrying" },
					{ t = "turnin", quest = 944, title = "The Master's Glaive", map = 1439, x = 38.53, y = 86.17, f = "e" },
					{ t = "accept", quest = 949, title = "The Twilight Camp", map = 1439, x = 38.53, y = 86.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 949, title = "The Twilight Camp", map = 1439, x = 38.54, y = 86.05, f = "e" },
					{ t = "accept", quest = 950, title = "Return to Onu", map = 1439, x = 38.54, y = 86.05, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until she respawns, if missing. Walks around.",
				goals = {
					{ t = "accept", quest = 945, title = "Therylune's Escape", npc = 3584, npcName = "Therylune", map = 1439, x = 38.64, y = 87.34, f = "e" },
				},
			},
			{
				note = "Follow and protect Therylune.",
				goals = {
					{ t = "complete", quest = 945, title = "Therylune's Escape", note = "Escort Therylune Away from the Master's Glaive", map = 1439, x = 40.51, y = 87.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 5352, itemName = "Book: The Powers Below" },
					{ t = "accept", quest = 968, title = "The Powers Below" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing. Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 993, title = "A Lost Master", npc = 3692, npcName = "Volcor", map = 1439, x = 45.01, y = 85.3, f = "e" },
					{ t = "accept", quest = 995, title = "Escape Through Stealth", npc = 3692, npcName = "Volcor", map = 1439, x = 45.01, y = 85.3, f = "e" },
					{ t = "accept", quest = 994, title = "Escape Through Force", npc = 3692, npcName = "Volcor", map = 1439, x = 45.01, y = 85.3, f = "e" },
				},
			},
			{
				note = "Follow and protect Volcor. Let him get attacked first. Otherwise he won't stop to help you fight.",
				goals = {
					{ t = "complete", quest = 994, title = "Escape Through Force", note = "Help Volcor to the Road", map = 1439, x = 41.95, y = 81.8, f = "e" },
				},
			},
			{
				label = "Collect_Grizzled_Scalps",
				along = true,
				goals = {
					{ t = "collect", quest = 1003, item = 5414, itemName = "Grizzled Scalp", count = 4, oi = 1, map = 1439, x = 40.0, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1003, title = "Buzzbox 525", map = 1439, x = 41.4, y = 80.56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 950, title = "Return to Onu", npc = 3616, npcName = "Onu", map = 1439, x = 43.56, y = 76.29, f = "e" },
				},
			},
		},
	})
end

