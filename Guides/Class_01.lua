-- TuWoW_Leveling — Guides/Class_01.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-druid-class-quests",
		pack = "guides",
		title = "Druid Class Quests",
		category = "Class",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1457,
		version = 1,
		classes = { "DRUID" },
		steps = {
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "accept", quest = 5923, title = "Heeding the Call", npc = 4218, npcName = "Denatharion", map = 1457, x = 34.77, y = 7.36, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1457, x = 54.81, y = 58.48 },
					{ t = "goto", text = "Enter Darnassus", map = 1457, x = 36.06, y = 54.39 },
					{ t = "goto", text = "Enter the building", map = 1457, x = 35.52, y = 10.72 },
					{ t = "turnin", quest = 5923, title = "Heeding the Call", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.38, y = 8.41, f = "e" },
					{ t = "accept", quest = 5921, title = "Moonglade", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.38, y = 8.41, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 5921, title = "Moonglade", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 5929, title = "Great Bear Spirit", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1450, x = 42.47, y = 34.44 },
					{ t = "complete", quest = 5929, title = "Great Bear Spirit", note = "Seek Out the Great Bear Spirit and Learn what it Has to Share with You About the Nature of the Bear", map = 1450, x = 39.11, y = 27.51, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1450, x = 56.13, y = 30.98 },
					{ t = "turnin", quest = 5929, title = "Great Bear Spirit", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 5931, title = "Back to Darnassus", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "getfp", location = "Moonglade", map = 1450, x = 48.1, y = 67.34, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1457, x = 35.52, y = 10.72 },
					{ t = "turnin", quest = 5931, title = "Back to Darnassus", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.38, y = 8.41, f = "e" },
					{ t = "accept", quest = 6001, title = "Body and Heart", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.38, y = 8.41, f = "e" },
				},
			},
			{
				note = "Inside the cave. This enemy is level 12. The area is surrounded by level 13 enemies. The Owlbear enemies around here aggro from quite a bit away, so it may be safe to level up to 11 or even 12 before attempting the quest.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1439, x = 43.06, y = 45.55 },
					{ t = "use", item = 15208, itemName = "Cenarion Moondust" },
					{ t = "complete", quest = 6001, title = "Body and Heart", note = "Face Lunaclaw and Earn the Strength of Body and Heart it Possesses", map = 1439, x = 43.48, y = 45.96, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1439, x = 42.97, y = 45.44 },
					{ t = "goto", text = "Enter the building", map = 1457, x = 35.52, y = 10.72 },
					{ t = "turnin", quest = 6001, title = "Body and Heart", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.38, y = 8.41, f = "e" },
				},
			},
			{
				note = "You can gather these with the Herbalism Profession. Refer to the Earthroot Gathering Guide to accomplish this. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", quest = 6123, item = 2449, itemName = "Earthroot", count = 5 },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1457, x = 35.52, y = 10.72 },
					{ t = "accept", quest = 6121, title = "Lessons Anew", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.38, y = 8.41, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6121, title = "Lessons Anew", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 6122, title = "The Principal Source", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				note = "At the entrance of the cave. There may be around 4 naga around the cave entrance. Pull them carefully before attempting to fill the sampler. Stormscale Sirens are ranged attackers that may heal. Enemies around here may run away in fear when at low health.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1439, x = 40.33, y = 46.35 },
					{ t = "goto", text = "Follow the path", map = 1439, x = 46.41, y = 32.14 },
					{ t = "goto", text = "Follow the path up", map = 1439, x = 54.64, y = 31.76 },
					{ t = "use", item = 15844, itemName = "Empty Cliffspring Falls Sampler" },
					{ t = "collect", quest = 6122, item = 15845, itemName = "Filled Cliffspring Falls Sampler", oi = 1, map = 1439, x = 54.93, y = 33.32, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1439, x = 47.1, y = 26.84 },
					{ t = "goto", text = "Follow the path", map = 1439, x = 42.21, y = 42.33 },
					{ t = "goto", text = "Enter the building", map = 1439, x = 37.77, y = 41.36 },
					{ t = "turnin", quest = 6122, title = "The Principal Source", npc = 3702, npcName = "Alanndarian Nightsong", map = 1439, x = 37.69, y = 40.66, f = "e" },
					{ t = "accept", quest = 6123, title = "Gathering the Cure", npc = 3702, npcName = "Alanndarian Nightsong", map = 1439, x = 37.69, y = 40.66, f = "e" },
				},
			},
			{
				note = "They look like clusters of small white-spotted mushrooms on the ground inside the small caves around this area. Watch for respawns while in the area. Owlbear enemies around here have an abnormal aggro radius.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1439, x = 37.77, y = 41.36 },
					{ t = "goto", text = "Follow the road", map = 1439, x = 40.04, y = 46.77 },
					{ t = "collect", quest = 6123, item = 15851, itemName = "Lunar Fungus", count = 12, oi = 2, map = 1439, x = 43.07, y = 45.55, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1439, x = 39.93, y = 46.07 },
					{ t = "goto", text = "Enter the building", map = 1439, x = 37.77, y = 41.36 },
					{ t = "turnin", quest = 6123, title = "Gathering the Cure", npc = 3702, npcName = "Alanndarian Nightsong", map = 1439, x = 37.69, y = 40.66, f = "e" },
					{ t = "accept", quest = 6124, title = "Curing the Sick", npc = 3702, npcName = "Alanndarian Nightsong", map = 1439, x = 37.69, y = 40.66, f = "e" },
				},
			},
			{
				note = "Use it on Sickly Deer around this area. They look like green diseased deer in areas with trees. They are spread out all throughout Darkshore.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Leave the building", map = 1439, x = 37.77, y = 41.34 },
					{ t = "goto", text = "Follow the road", map = 1439, x = 39.55, y = 45.39 },
					{ t = "use", item = 15826, itemName = "Curative Animal Salve" },
					{ t = "complete", quest = 6124, title = "Curing the Sick", note = "Cure #10# Sickly Deer", map = 1439, x = 41.51, y = 46.08, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 6124, title = "Curing the Sick", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 6125, title = "Power over Poison", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1457, x = 35.52, y = 10.72 },
					{ t = "turnin", quest = 6125, title = "Power over Poison", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.38, y = 8.41, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1457, x = 35.49, y = 10.63 },
					{ t = "accept", quest = 26, title = "A Lesson to Learn", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.37, y = 8.39, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 26, title = "A Lesson to Learn", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 29, title = "Trial of the Lake", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				note = "It looks like a wicker basket vase on the ground underwater. They spawn randomly, so you may have to search around this area. Don't linger in the water for any reason.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 29, item = 15877, itemName = "Shrine Bauble", map = 1450, x = 54.33, y = 55.65, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 15877, itemName = "Shrine Bauble" },
					{ t = "complete", quest = 29, title = "Trial of the Lake", note = "Complete the Trial of the Lake", map = 1450, x = 35.92, y = 41.38, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 29, title = "Trial of the Lake", npc = 11799, npcName = "Tajarri", map = 1450, x = 36.51, y = 40.11, f = "e" },
					{ t = "accept", quest = 272, title = "Trial of the Sea Lion", npc = 11799, npcName = "Tajarri", map = 1450, x = 36.51, y = 40.11, f = "e" },
				},
			},
			{
				note = "Underwater. If you fight enemies around here, make sure you do so above water.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Follow the road", map = 1439, x = 40.23, y = 46.41 },
					{ t = "goto", text = "Follow the path", map = 1439, x = 48.43, y = 24.86 },
					{ t = "collect", quest = 272, item = 15883, itemName = "Half Pendant of Aquatic Agility", map = 1439, x = 48.87, y = 11.32, f = "e" },
				},
			},
			{
				note = "Underwater. If you fight enemies around here, make sure you do so above water. You should wait until you quest into Loch Modan to do this portion of the quest.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 272, item = 15882, itemName = "Half Pendant of Aquatic Endurance", map = 1436, x = 17.87, y = 33.11, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 15883, itemName = "Half Pendant of Aquatic Agility" },
					{ t = "collect", quest = 272, item = 15885, itemName = "Pendant of the Sea Lion", oi = 1, map = 1450, x = 35.92, y = 41.42, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 272, title = "Trial of the Sea Lion", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
					{ t = "accept", quest = 5061, title = "Aquatic Form", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.21, y = 30.64, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1457, x = 35.49, y = 10.63 },
					{ t = "turnin", quest = 5061, title = "Aquatic Form", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.37, y = 8.39, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1457, x = 35.52, y = 10.72 },
					{ t = "accept", quest = 9063, title = "Torwa Pathfinder", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.38, y = 8.41, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 9063, title = "Torwa Pathfinder", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
					{ t = "accept", quest = 9052, title = "Bloodpetal Poison", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
				},
			},
			{
				note = "Gorishi Workers may call for help when at low health. Watch for patrols and respawns while in the cave.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 9052, item = 22435, itemName = "Gorishi Sting", count = 8, oi = 1, map = 1449, x = 50.4, y = 78.6, f = "e" },
				},
			},
			{
				note = "They look like vines entwined in a ball. They are all over Un'Goro Crater.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 9052, item = 22434, itemName = "Bloodcap", count = 8, oi = 2, map = 1449, x = 71.9, y = 57.4, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 9052, title = "Bloodpetal Poison", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
					{ t = "accept", quest = 9051, title = "Toxic Test", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
				},
			},
			{
				note = "Use it on roaming Devilsaur around Un'Goro Crater. Root the Devisaur before trying to use the Barb and run away after you accomplish this.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "use", item = 22432, itemName = "Devilsaur Barb" },
					{ t = "complete", quest = 9051, title = "Toxic Test", note = "Stab a Devilsaur with the Barb", map = 1449, x = 67.31, y = 33.89, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 9051, title = "Toxic Test", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
					{ t = "accept", quest = 9053, title = "A Better Ingredient", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
				},
			},
			{
				note = "The next couple of steps will be taking you to the Sunken Temple dungeon. You will need a group to complete the dungeon as well as the quest. If you don't have a group, wait until you do before continuing.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "complete", quest = 9053, title = "A Better Ingredient", note = "Click Here to Continue" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1435, x = 69.36, y = 56.89 },
					{ t = "goto", text = "Enter the building and swim under the water", map = 1435, x = 70.54, y = 49.78 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 72.69, y = 42.22 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 75.69, y = 45.78 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 78.62, y = 47.47 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 80.22, y = 49.62 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 81.33, y = 42.38 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 78.86, y = 40.74 },
					{ t = "goto", text = "Run down the ramp", map = 1435, x = 76.85, y = 38.82 },
				},
			},
			{
				note = "Refer to the Temple of Atal'Hakkar Dungeon Guide to accomplish that.",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 9053, item = 22444, itemName = "Putrid Vine", oi = 1 },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 9053, title = "A Better Ingredient", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.63, y = 75.96, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-priest-class-quests",
		pack = "guides",
		title = "Priest Class Quests",
		category = "Class",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1426,
		version = 1,
		classes = { "PRIEST" },
		steps = {
			{
				note = "Inside the building.",
				only = { races = { "Dwarf" }, classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1426, x = 46.95, y = 52.05 },
					{ t = "accept", quest = 5637, title = "Desperate Prayer", npc = 1226, npcName = "Maxan Anvol", map = 1426, x = 47.34, y = 52.18, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Dwarf" }, classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.14 },
					{ t = "turnin", quest = 5637, title = "Desperate Prayer", npc = 376, npcName = "High Priestess Laurena", map = 1453, x = 49.53, y = 44.57, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Human" }, classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1429, x = 42.95, y = 65.64 },
					{ t = "accept", quest = 5637, title = "Desperate Prayer", npc = 377, npcName = "Priestess Josetta", map = 1429, x = 43.29, y = 65.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Human" }, classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.14 },
					{ t = "turnin", quest = 5637, title = "Desperate Prayer", npc = 376, npcName = "High Priestess Laurena", map = 1453, x = 49.53, y = 44.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "NightElf" }, classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1438, x = 55.76, y = 57.24 },
					{ t = "accept", quest = 5629, title = "Returning Home", npc = 3600, npcName = "Laurna Morninglight", map = 1438, x = 55.57, y = 56.75, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5629, title = "Returning Home", npc = 11401, npcName = "Priestess Alathea", map = 1457, x = 39.53, y = 81.18, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Dwarf" }, classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 5641, title = "Chastise", npc = 11406, npcName = "High Priest Rohan", map = 1455, x = 24.72, y = 8.14, f = "e" },
					{ t = "turnin", quest = 5641, title = "Chastise", npc = 11406, npcName = "High Priest Rohan", map = 1455, x = 24.72, y = 8.14, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { races = { "Human" }, classes = { "PRIEST" } },
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.98, y = 51.14 },
					{ t = "accept", quest = 5676, title = "Arcane Feedback", npc = 376, npcName = "High Priestess Laurena", map = 1453, x = 49.53, y = 44.57, f = "e" },
					{ t = "turnin", quest = 5676, title = "Arcane Feedback", npc = 376, npcName = "High Priestess Laurena", map = 1453, x = 49.53, y = 44.57, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "NightElf" }, classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 5672, title = "Elune's Grace", npc = 11401, npcName = "Priestess Alathea", map = 1457, x = 39.53, y = 81.18, f = "e" },
					{ t = "turnin", quest = 5672, title = "Elune's Grace", npc = 11401, npcName = "Priestess Alathea", map = 1457, x = 39.53, y = 81.18, f = "e" },
				},
			},
		},
	})
end

