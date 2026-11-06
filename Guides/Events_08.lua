-- TuWoW_Leveling — Guides/Events_08.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/events/h-midsummer-fire-festival-quests",
		pack = "guides",
		title = "Midsummer Fire Festival Quests",
		category = "Events",
		folder = "Midsummer Fire Festival",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 9368, title = "The Festival of Fire", npc = 16818, npcName = "Festival Talespinner", map = 1454, x = 42.53, y = 34.61, f = "e" },
					{ t = "accept", quest = 9389, title = "Flickering Flames in the Eastern Kingdoms", npc = 16818, npcName = "Festival Talespinner", map = 1454, x = 42.53, y = 34.61, f = "e" },
					{ t = "accept", quest = 9388, title = "Flickering Flames in Kalimdor", npc = 16818, npcName = "Festival Talespinner", map = 1454, x = 42.53, y = 34.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9323, title = "Wild Fires in the Eastern Kingdoms", npc = 16788, npcName = "Festival Flamekeeper", map = 1454, x = 42.63, y = 34.31, f = "e" },
					{ t = "accept", quest = 9322, title = "Wild Fires in Kalimdor", npc = 16788, npcName = "Festival Flamekeeper", map = 1454, x = 42.63, y = 34.31, f = "e" },
					{ t = "accept", quest = 9319, title = "A Light in Dark Places", npc = 16788, npcName = "Festival Flamekeeper", map = 1454, x = 42.63, y = 34.31, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9368, title = "The Festival of Fire", note = "Touch the Flame of Orgrimmar", map = 1454, x = 42.32, y = 34.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9322, title = "Wild Fires in Kalimdor", note = "Touch the Flame of Azshara", map = 1447, x = 41.44, y = 43.07, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9322, title = "Wild Fires in Kalimdor", note = "Touch the Flame of Winterspring", map = 1452, x = 30.72, y = 43.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9388, title = "Flickering Flames in Kalimdor", note = "Touch the Flame of Darkshore", map = 1439, x = 41.54, y = 90.61, f = "e" },
				},
			},
			{
				note = "You will have to pass Alliance guards and will become flagged for PvP.",
				goals = {
					{ t = "goto", text = "Wait for the boat", map = 1439, x = 33.23, y = 40.13 },
					{ t = "complete", quest = 9388, title = "Flickering Flames in Kalimdor", note = "Ride the Boat to Teldrassil", map = 1438, x = 54.86, y = 96.72, f = "e" },
				},
			},
			{
				note = "This step requires you to enter the opposing faction's capital city If skipped, you will not be able to complete this quest or the \"A Thief's Reward\" quest.",
				goals = {
					{ t = "accept", quest = 9332, title = "Stealing Darnassus's Flame", map = 1438, x = 56.63, y = 92.32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9388, title = "Flickering Flames in Kalimdor", note = "Touch the Flame of Ashenvale", map = 1440, x = 64.75, y = 71.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9388, title = "Flickering Flames in Kalimdor", note = "Touch the Flame of Stonetalon", map = 1442, x = 59.54, y = 72.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9368, title = "The Festival of Fire", note = "Touch the Flame of Thunder Bluff", map = 1456, x = 21.3, y = 26.68, f = "e" },
				},
			},
			{
				note = "Inside Dire Maul North, at the top of the staircase following Guard Slip'kik. You will need the Crescent Key from Dire Maul East to enter the dungeon. You can also have another player let you in. If skipped, you will not be able to complete the \"A Light in Dark Places\" quest.",
				goals = {
					{ t = "complete", quest = 9319, title = "A Light in Dark Places", note = "Touch the Flame of Dire Maul", map = 1414, x = 43.39, y = 66.52, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9322, title = "Wild Fires in Kalimdor", note = "Touch the Flame of Silithus", map = 1451, x = 78.08, y = 18.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9322, title = "Wild Fires in Kalimdor", note = "Touch the Flame of Un'Goro", map = 1449, x = 70.34, y = 75.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9388, title = "Flickering Flames in Kalimdor", note = "Touch the Flame of the Barrens", map = 1413, x = 59.82, y = 39.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Wait for the boat", map = 1413, x = 63.67, y = 38.62 },
					{ t = "complete", quest = 9388, title = "Flickering Flames in Kalimdor", note = "Ride the Boat to Booty Bay", map = 1434, x = 25.86, y = 73.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9323, title = "Wild Fires in the Eastern Kingdoms", note = "Touch the Flame of the Blasted Lands", map = 1419, x = 54.01, y = 31.28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9389, title = "Flickering Flames in the Eastern Kingdoms", note = "Touch the Flame of Westfall", map = 1436, x = 33.99, y = 80.26, f = "e" },
				},
			},
			{
				note = "This step requires you to enter the opposing faction's capital city If skipped, you will not be able to complete this quest or the \"A Thief's Reward\" quest.",
				goals = {
					{ t = "accept", quest = 9330, title = "Stealing Stormwind's Flame", map = 1453, x = 49.73, y = 71.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9323, title = "Wild Fires in the Eastern Kingdoms", note = "Touch the Flame of Searing Gorge", map = 1427, x = 33.05, y = 73.03, f = "e" },
				},
			},
			{
				note = "Inside Lower Blackrock Spire on Urok Doomhowl's platform. If skipped, you will not be able to complete the \"A Light in Dark Places\" quest.",
				goals = {
					{ t = "goto", text = "Enter Blackrock Mountain", map = 1427, x = 34.75, y = 84.02 },
					{ t = "goto", text = "Run up the chain", map = 1415, x = 48.74, y = 63.79 },
					{ t = "goto", text = "Jump down", map = 1415, x = 48.77, y = 63.67 },
					{ t = "goto", text = "Jump down", map = 1415, x = 48.89, y = 63.87 },
					{ t = "complete", quest = 9319, title = "A Light in Dark Places", note = "Touch the Flame of Blackrock Spire", map = 1415, x = 48.95, y = 63.88, f = "e" },
				},
			},
			{
				note = "This step requires you to enter the opposing faction's capital city If skipped, you will not be able to complete this quest or the \"A Thief's Reward\" quest.",
				goals = {
					{ t = "accept", quest = 9331, title = "Stealing Ironforge's Flame", map = 1455, x = 64.24, y = 25.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9389, title = "Flickering Flames in the Eastern Kingdoms", note = "Touch the Flame of the Wetlands", map = 1437, x = 51.19, y = 16.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9389, title = "Flickering Flames in the Eastern Kingdoms", note = "Touch the Flame of Hillsbrad", map = 1424, x = 54.48, y = 33.89, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9389, title = "Flickering Flames in the Eastern Kingdoms", note = "Touch the Flame of Silverpine", map = 1421, x = 54.11, y = 69.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9368, title = "The Festival of Fire", note = "Touch the Flame of the Undercity", map = 1458, x = 66.05, y = 36.31, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9323, title = "Wild Fires in the Eastern Kingdoms", note = "Touch the Flame of the Hinterlands", map = 1425, x = 62.03, y = 53.41, f = "e" },
				},
			},
			{
				note = "Inside The Viewing Room with Marduk Blackpool and Vectus. You will need The Key to Scholomance to enter the dungeon. You will also need the Viewing Room Key dropped by Rattlegore to enter the Viewing Room. You can also have another player let you in. If skipped, you will not be able to complete the \"A Light in Dark Places\" quest.",
				goals = {
					{ t = "complete", quest = 9319, title = "A Light in Dark Places", note = "Touch the Flame of Scholomance", map = 1415, x = 52.75, y = 26.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 9323, title = "Wild Fires in the Eastern Kingdoms", note = "Touch the Flame of the Plaguelands", map = 1423, x = 50.09, y = 61.55, f = "e" },
				},
			},
			{
				note = "On the live side, just before entering the Scarlet Crusade compound. If skipped, you will not be able to complete the \"A Light in Dark Places\" quest.",
				goals = {
					{ t = "complete", quest = 9319, title = "A Light in Dark Places", note = "Touch the Flame of Stratholme", map = 1415, x = 55.12, y = 17.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9368, title = "The Festival of Fire", npc = 16818, npcName = "Festival Talespinner", map = 1454, x = 56.58, y = 92.29, f = "e" },
					{ t = "turnin", quest = 9332, title = "Stealing Darnassus's Flame", npc = 16818, npcName = "Festival Talespinner", map = 1454, x = 56.58, y = 92.29, f = "e" },
					{ t = "turnin", quest = 9330, title = "Stealing Stormwind's Flame", npc = 16818, npcName = "Festival Talespinner", map = 1454, x = 56.58, y = 92.29, f = "e" },
					{ t = "turnin", quest = 9331, title = "Stealing Ironforge's Flame", npc = 16818, npcName = "Festival Talespinner", map = 1454, x = 56.58, y = 92.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9339, title = "A Thief's Reward", npc = 16818, npcName = "Festival Talespinner", map = 1454, x = 56.58, y = 92.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9389, title = "Flickering Flames in the Eastern Kingdoms", npc = 16788, npcName = "Festival Flamekeeper", map = 1454, x = 56.55, y = 91.98, f = "e" },
					{ t = "turnin", quest = 9388, title = "Flickering Flames in Kalimdor", npc = 16788, npcName = "Festival Flamekeeper", map = 1454, x = 56.55, y = 91.98, f = "e" },
					{ t = "turnin", quest = 9323, title = "Wild Fires in the Eastern Kingdoms", npc = 16788, npcName = "Festival Flamekeeper", map = 1454, x = 56.55, y = 91.98, f = "e" },
					{ t = "turnin", quest = 9322, title = "Wild Fires in Kalimdor", npc = 16788, npcName = "Festival Flamekeeper", map = 1454, x = 56.55, y = 91.98, f = "e" },
					{ t = "turnin", quest = 9319, title = "A Light in Dark Places", npc = 16788, npcName = "Festival Flamekeeper", map = 1454, x = 56.55, y = 91.98, f = "e" },
				},
			},
		},
	})
end

