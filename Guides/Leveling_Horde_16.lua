-- TuWoW_Leveling — Guides/Leveling_Horde_16.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-20-25-part-2",
		pack = "guides",
		title = "Levels (20-25) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 20,
		maxLevel = 25,
		zone = 1413,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 3261, title = "Jorn Skyseer", npc = 3387, npcName = "Jorn Skyseer", map = 1440, x = 44.9, y = 59.1, f = "e" },
					{ t = "accept", quest = 882, title = "Ishamuhale", npc = 3387, npcName = "Jorn Skyseer", map = 1440, x = 44.9, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Camp Taurajo", f = "e" },
				},
			},
			{
				note = "Click Chen's Empty Keg",
				goals = {
					{ t = "collect", itemName = "Chen's Empty Keg", count = 1, map = 1440, x = 45.0, y = 62.2, f = "e" },
					{ t = "accept", quest = 819, title = "Chen's Empty Keg", map = 1440, x = 45.0, y = 62.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 868, itemName = "Silithid Egg", count = 12, oi = 1, map = 1440, x = 45.1, y = 69.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 843, title = "Gann's Reclamation", npc = 3341, npcName = "Gann Stonespire", map = 1440, x = 46.0, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 879, itemName = "Kuz's Skull", count = 1, oi = 1, map = 1440, x = 43.4, y = 80.5, f = "e" },
					{ t = "collect", quest = 893, itemName = "Razormane Backstabber", count = 1, oi = 1, map = 1440, x = 43.4, y = 80.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 893, itemName = "Charred Razormane Wand", count = 1, oi = 2, map = 1440, x = 42.0, y = 78.9, f = "e" },
					{ t = "collect", quest = 893, itemName = "Razormane War Shield", count = 1, oi = 3, map = 1440, x = 42.0, y = 78.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1440, x = 41.1, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 879, itemName = "Lok's Skull", count = 1, oi = 3, map = 1440, x = 40.1, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 879, itemName = "Nak's Skull", count = 1, oi = 2, map = 1440, x = 43.9, y = 83.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 843, target = "Bael'dun Excavator", count = 15, oi = 1, map = 1440, x = 46.5, y = 85.2, f = "e" },
					{ t = "kill", quest = 843, target = "Bael'dun Foreman", count = 5, oi = 2, map = 1440, x = 46.5, y = 85.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 843, itemName = "Khazgorm's Journal", count = 1, oi = 3, map = 1440, x = 47.3, y = 84.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 843, title = "Gann's Reclamation", npc = 3341, npcName = "Gann Stonespire", map = 1440, x = 46.0, y = 79.1, f = "e" },
					{ t = "accept", quest = 846, title = "Revenge of Gann (1)", npc = 3341, npcName = "Gann Stonespire", map = 1440, x = 46.0, y = 79.1, f = "e" },
				},
			},
			{
				note = "Hearth to Camp Taurajo|goto The Barrens,45.5,59.0,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 893, title = "Weapons of Choice", npc = 3433, npcName = "Tatternack Steelforge", map = 1440, x = 45.1, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 879, title = "Betrayal from Within (1)", npc = 3430, npcName = "Mangletooth", map = 1440, x = 44.6, y = 59.2, f = "e" },
					{ t = "accept", quest = 906, title = "Betrayal from Within (2)", npc = 3430, npcName = "Mangletooth", map = 1440, x = 44.6, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 906, title = "Betrayal from Within (2)", npc = 3429, npcName = "Thork", map = 1440, x = 51.5, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 868, title = "Egg Hunt", npc = 3428, npcName = "Korran", map = 1440, x = 51.1, y = 29.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 882, itemName = "Ishamuhale's Fang", count = 1, oi = 1, map = 1440, x = 59.8, y = 30.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 819, title = "Chen's Empty Keg", npc = 3292, npcName = "Brewmaster Drohn", map = 1440, x = 62.3, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5881, title = "Calling in the Reserves", npc = 11860, npcName = "Maggran Earthbinder", map = 1442, x = 47.2, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Sun Rock Retreat", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6421, title = "Boulderslide Ravine", npc = 11861, npcName = "Mor'rogal", map = 1442, x = 47.2, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6301, itemName = "Gaea Seed", count = 10, oi = 1, map = 1442, x = 51.8, y = 42.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1058, itemName = "Courser Eye", count = 30, oi = 3, map = 1442, x = 46.2, y = 26.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1058, itemName = "Stonetalon Sap", count = 5, oi = 1, map = 1442, x = 37.7, y = 18.6, f = "e" },
					{ t = "collect", quest = 1058, itemName = "Fey Dragon Scale", count = 1, oi = 4, map = 1442, x = 37.7, y = 18.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1087, target = "Son of Cenarius", count = 4, oi = 1, map = 1442, x = 36.8, y = 15.9, f = "e" },
					{ t = "kill", quest = 1087, target = "Daughter of Cenarius", count = 4, oi = 2, map = 1442, x = 36.8, y = 15.9, f = "e" },
					{ t = "kill", quest = 1087, target = "Cenarion Botanist", count = 4, oi = 3, map = 1442, x = 36.8, y = 15.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1058, itemName = "Twilight Whisker", count = 5, oi = 2, map = 1442, x = 33.7, y = 8.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6301, title = "Cycle of Rebirth", npc = 11864, npcName = "Tammra Windfield", map = 1442, x = 47.5, y = 58.4, f = "e" },
					{ t = "accept", quest = 6381, title = "New Life", npc = 11864, npcName = "Tammra Windfield", map = 1442, x = 47.5, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1087, title = "Cenarius' Legacy", npc = 4198, npcName = "Braelyn Firehand", map = 1442, x = 45.9, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1095, title = "Further Instructions (2)", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 59.0, y = 62.6, f = "e" },
					{ t = "accept", quest = 1096, title = "Gerenzo Wrenchwhistle", npc = 4201, npcName = "Ziz Fizziks", map = 1442, x = 59.0, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6284, title = "Arachnophobia", map = 1442, x = 59.1, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1442, x = 58.1, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6284, itemName = "Besseleth's Fang", count = 1, oi = 1, map = 1442, x = 54.6, y = 71.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1068, target = "XT:9", count = 1, oi = 2, map = 1442, x = 61.5, y = 54.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1068, target = "XT:4", count = 1, oi = 1, map = 1442, x = 71.6, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1058, title = "Jin'Zil's Forest Magic", npc = 3995, npcName = "Witch Doctor Jin'Zil", map = 1442, x = 74.5, y = 97.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1068, title = "Shredding Machines", npc = 4049, npcName = "Seereth Stonebreak", map = 1413, x = 35.2, y = 27.8, f = "e" },
				},
			},
			{
				note = "Hearth to Sun Rock Retreat|goto Stonetalon Mountains,47.5,62.1,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6284, title = "Arachnophobia", npc = 11860, npcName = "Maggran Earthbinder", map = 1442, x = 47.2, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 882, title = "Ishamuhale", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.9, y = 59.1, f = "e" },
					{ t = "accept", quest = 907, title = "Enraged Thunder Lizards", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.9, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Camp Taurajo", f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 907, itemName = "Thunder Lizard Blood", count = 3, oi = 1, map = 1413, x = 47.8, y = 56.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 846, itemName = "Nitroglycerin", count = 6, oi = 1, map = 1413, x = 48.5, y = 84.6, f = "e" },
					{ t = "collect", quest = 846, itemName = "Wood Pulp", count = 6, oi = 2, map = 1413, x = 48.5, y = 84.6, f = "e" },
					{ t = "collect", quest = 846, itemName = "Sodium Nitrate", count = 6, oi = 3, map = 1413, x = 48.5, y = 84.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 846, title = "Revenge of Gann (1)", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 46.0, y = 79.1, f = "e" },
					{ t = "accept", quest = 849, title = "Revenge of Gann (2)", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 46.0, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1413, x = 47.0, y = 85.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 849, title = "Revenge of Gann (2)", npc = 3341, npcName = "Gann Stonespire", map = 1413, x = 46.0, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5881, title = "Calling in the Reserves", npc = 12576, npcName = "Grish Longrunner", map = 1441, x = 31.9, y = 21.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4542, title = "Message to Freewind Post", npc = 10079, npcName = "Brave Moonhorn", map = 1441, x = 32.2, y = 22.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Freewind Post", map = 1441, x = 45.1, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4821, title = "Alien Egg", npc = 10539, npcName = "Hagar Lightninghoof", map = 1441, x = 44.6, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4542, title = "Message to Freewind Post", npc = 10537, npcName = "Cliffwatcher Longhorn", map = 1441, x = 45.6, y = 50.8, f = "e" },
					{ t = "accept", quest = 4841, title = "Pacify the Centaur", npc = 10537, npcName = "Cliffwatcher Longhorn", map = 1441, x = 45.6, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5147, title = "Wanted - Arnak Grimtotem", map = 1441, x = 46.0, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4841, target = "Galak Scout", count = 12, oi = 1, map = 1441, x = 48.6, y = 42.6, f = "e" },
					{ t = "kill", quest = 4841, target = "Galak Wrangler", count = 10, oi = 2, map = 1441, x = 48.6, y = 42.6, f = "e" },
					{ t = "kill", quest = 4841, target = "Galak Windchaser", count = 6, oi = 3, map = 1441, x = 48.6, y = 42.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4821, itemName = "Alien Egg", count = 1, oi = 1, map = 1441, x = 56.5, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4841, title = "Pacify the Centaur", npc = 10537, npcName = "Cliffwatcher Longhorn", map = 1441, x = 45.6, y = 50.8, f = "e" },
					{ t = "accept", quest = 5064, title = "Grimtotem Spying", npc = 10537, npcName = "Cliffwatcher Longhorn", map = 1441, x = 45.6, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4821, title = "Alien Egg", npc = 10539, npcName = "Hagar Lightninghoof", map = 1441, x = 44.6, y = 50.3, f = "e" },
					{ t = "accept", quest = 4865, title = "Serpent Wild", npc = 10539, npcName = "Hagar Lightninghoof", map = 1441, x = 44.6, y = 50.3, f = "e" },
				},
			},
			{
				note = "Hearth to Camp Taurajo|goto The Barrens,45.5,59.0,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 907, title = "Enraged Thunder Lizards", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.9, y = 59.1, f = "e" },
					{ t = "accept", quest = 913, title = "Cry of the Thunderhawk", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.9, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 913, itemName = "Thunderhawk Wings", count = 1, oi = 1, map = 1413, x = 46.5, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 913, title = "Cry of the Thunderhawk", npc = 3387, npcName = "Jorn Skyseer", map = 1413, x = 44.9, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 25, f = "e" },
				},
			},
		},
	})
end

