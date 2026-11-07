-- TuWoW_Leveling — Guides/Leveling_Alliance_14.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-main-guide-13-20-part-2",
		pack = "guides",
		title = "Main Guide (13-20) (Parte 2/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-main-guide-13-20-part-3",
		author = "TuWoW & Zygor",
		minLevel = 17,
		maxLevel = 20,
		zone = 1436,
		version = 1,
		steps = {
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 27, title = "A Lesson to Learn", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.2, y = 30.5, f = "e" },
					{ t = "accept", quest = 29, title = "Trial of the Lake", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.2, y = 30.5, f = "e" },
				},
			},
			{
				note = "Go south in the lake to 57.6,57.8",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 29, item = 15877, itemName = "Shrine Bauble", count = 1, oi = 1, map = 1450, x = 57.6, y = 57.8, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", map = 1450, x = 36.1, y = 41.6, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 29, title = "Trial of the Lake", npc = 11799, npcName = "Tajarri", map = 1450, x = 36.5, y = 41.8, f = "e" },
					{ t = "accept", quest = 272, title = "Trial of the Sea Lion", npc = 11799, npcName = "Tajarri", map = 1450, x = 36.5, y = 41.8, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "talk", npc = 11800, npcName = "Silva Fil'naveth", map = 1450, x = 44.2, y = 45.3, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 272, item = 15883, itemName = "Half Pendant of Aquatic Agility", count = 1, oi = 1, map = 1439, x = 48.9, y = 11.3, f = "e" },
				},
			},
			{
				note = "Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c",
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "goto", map = 1439, x = 32.4, y = 43.8, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 272, item = 15882, itemName = "Half Pendant of Aquatic Endurance", count = 1, oi = 1, map = 1436, x = 18.0, y = 33.0, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "collect", quest = 272, itemName = "Pendant of the Sea Lion", count = 1, oi = 1, map = 1450, x = 36.0, y = 42.0, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 272, title = "Trial of the Sea Lion", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.2, y = 30.5, f = "e" },
					{ t = "accept", quest = 5061, title = "Aquatic Form", npc = 11802, npcName = "Dendrite Starblaze", map = 1450, x = 56.2, y = 30.5, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "talk", npc = 11800, npcName = "Silva Fil'naveth", map = 1450, x = 44.2, y = 45.3, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DRUID" } },
				goals = {
					{ t = "turnin", quest = 5061, title = "Aquatic Form", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.2, y = 8.1, f = "e" },
				},
			},
			{
				note = "Hearth to Sentinel Hill|goto Westfall,52.9,53.6,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13, target = "Defias Looter", count = 15, oi = 2, map = 1436, x = 31.4, y = 44.5, f = "e" },
					{ t = "kill", quest = 13, target = "Defias Pillager", count = 15, oi = 1, map = 1436, x = 31.4, y = 44.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13, title = "The People's Militia (2)", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.3, y = 47.5, f = "e" },
					{ t = "accept", quest = 14, title = "The People's Militia (3)", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.3, y = 47.5, f = "e" },
					{ t = "accept", quest = 65, title = "The Defias Brotherhood (1)", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.3, y = 47.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 14, target = "Defias Highwayman", count = 15, oi = 1, map = 1436, x = 52.6, y = 72.3, f = "e" },
					{ t = "kill", quest = 14, target = "Defias Pathstalker", count = 5, oi = 2, map = 1436, x = 52.6, y = 72.3, f = "e" },
					{ t = "kill", quest = 14, target = "Defias Knuckleduster", count = 5, oi = 3, map = 1436, x = 52.6, y = 72.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 14, title = "The People's Militia (3)", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.3, y = 47.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Thelsamar", text = "Thelsamar", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 255, title = "Mercenaries", npc = 1139, npcName = "Magistrate Bluntnose", map = 1436, x = 34.7, y = 43.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 307, title = "Filthy Paws", npc = 1343, npcName = "Mountaineer Stormpike", map = 1436, x = 24.8, y = 18.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 307, itemName = "Miners' Gear", count = 4, oi = 1, map = 1436, x = 35.4, y = 18.5, f = "e" },
				},
			},
			{
				note = "Go outside to 24.8,18.4",
				goals = {
					{ t = "turnin", quest = 307, title = "Filthy Paws", npc = 1343, npcName = "Mountaineer Stormpike", map = 1436, x = 24.8, y = 18.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 436, title = "Ironband's Excavation", npc = 1105, npcName = "Jern Hornhelm", map = 1436, x = 37.2, y = 47.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 436, title = "Ironband's Excavation", npc = 1345, npcName = "Magmar Fellhew", map = 1436, x = 64.9, y = 66.7, f = "e" },
					{ t = "accept", quest = 297, title = "Gathering Idols", npc = 1345, npcName = "Magmar Fellhew", map = 1436, x = 64.9, y = 66.7, f = "e" },
				},
			},
			{
				note = "Go northeast to 65.9,65.6",
				goals = {
					{ t = "accept", quest = 298, title = "Excavation Progress Report", npc = 1344, npcName = "Prospector Ironband", map = 1436, x = 65.9, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 297, itemName = "Carved Stone Idol", count = 8, oi = 1, map = 1436, x = 68.1, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 297, title = "Gathering Idols", npc = 1345, npcName = "Magmar Fellhew", map = 1436, x = 64.9, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 18, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 257, title = "A Hunter's Boast", npc = 1187, npcName = "Daryl the Youngling", map = 1436, x = 83.5, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 385, title = "Crocolisk Hunting", npc = 1154, npcName = "Marek Ironheart", map = 1436, x = 81.8, y = 61.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 257, target = "Mountain Buzzard", count = 6, oi = 1, map = 1436, x = 77.4, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 257, title = "A Hunter's Boast", npc = 1187, npcName = "Daryl the Youngling", map = 1436, x = 83.5, y = 65.5, f = "e" },
					{ t = "accept", quest = 258, title = "A Hunter's Challenge", npc = 1187, npcName = "Daryl the Youngling", map = 1436, x = 83.5, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 258, target = "Elder Mountain Boar", count = 5, oi = 1, map = 1436, x = 65.3, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 258, title = "A Hunter's Challenge", npc = 1187, npcName = "Daryl the Youngling", map = 1436, x = 83.5, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2038, title = "Bingles' Missing Supplies", npc = 6577, npcName = "Bingles Blastenheimer", map = 1436, x = 63.6, y = 47.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 385, itemName = "Crocolisk Meat", count = 5, oi = 1, map = 1436, x = 55.2, y = 54.0, f = "e" },
					{ t = "collect", quest = 385, itemName = "Crocolisk Skin", count = 6, oi = 2, map = 1436, x = 55.2, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2038, itemName = "Bingles' Wrench", count = 1, oi = 1, map = 1436, x = 48.7, y = 30.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2038, itemName = "Bingles' Blastencapper", count = 1, oi = 4, map = 1436, x = 54.2, y = 26.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2038, itemName = "Bingles' Hammer", count = 1, oi = 3, map = 1436, x = 51.8, y = 24.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2038, itemName = "Bingles' Screwdriver", count = 1, oi = 2, map = 1436, x = 48.1, y = 21.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 250, title = "A Dark Threat Looms (1)", npc = 1093, npcName = "Chief Engineer Hinderweir VII", map = 1436, x = 46.0, y = 13.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 250, title = "A Dark Threat Looms (1)", map = 1436, x = 56.0, y = 13.3, f = "e" },
					{ t = "accept", quest = 199, title = "A Dark Threat Looms (2)", map = 1436, x = 56.0, y = 13.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 199, title = "A Dark Threat Looms (2)", npc = 1093, npcName = "Chief Engineer Hinderweir VII", map = 1436, x = 46.0, y = 13.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 255, target = "Mo'grosh Ogre", count = 4, oi = 1, map = 1436, x = 67.1, y = 22.2, f = "e" },
					{ t = "kill", quest = 255, target = "Mo'grosh Enforcer", count = 4, oi = 3, map = 1436, x = 67.1, y = 22.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 255, target = "Mo'grosh Brute", count = 4, oi = 2, map = 1436, x = 75.0, y = 19.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2038, title = "Bingles' Missing Supplies", npc = 6577, npcName = "Bingles Blastenheimer", map = 1436, x = 63.6, y = 47.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 385, title = "Crocolisk Hunting", npc = 1154, npcName = "Marek Ironheart", map = 1436, x = 81.8, y = 61.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 271, title = "Vyrin's Revenge (1)", npc = 1156, npcName = "Vyrin Swiftwind", map = 1436, x = 81.7, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 271, itemName = "Ol' Sooty's Head", count = 1, oi = 1, map = 1436, x = 43.0, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 271, title = "Vyrin's Revenge (1)", npc = 1187, npcName = "Daryl the Youngling", map = 1436, x = 83.5, y = 65.5, f = "e" },
					{ t = "accept", quest = 531, title = "Vyrin's Revenge (2)", npc = 1187, npcName = "Daryl the Youngling", map = 1436, x = 83.5, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 531, title = "Vyrin's Revenge (2)", npc = 1156, npcName = "Vyrin Swiftwind", map = 1436, x = 81.7, y = 64.2, f = "e" },
				},
			},
			{
				note = "Hearth to Thelsamar|goto Loch Modan,35.1,46.9,3|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 255, title = "Mercenaries", npc = 1139, npcName = "Magistrate Bluntnose", map = 1436, x = 34.7, y = 43.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 298, title = "Excavation Progress Report", npc = 1105, npcName = "Jern Hornhelm", map = 1436, x = 37.2, y = 47.4, f = "e" },
					{ t = "accept", quest = 301, title = "Report to Ironforge", npc = 1105, npcName = "Jern Hornhelm", map = 1436, x = 37.2, y = 47.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 19, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 301, title = "Report to Ironforge", npc = 1356, npcName = "Prospector Stormpike", map = 1455, x = 74.7, y = 11.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 244, title = "Encroaching Gnolls", npc = 464, npcName = "Guard Parker", map = 1433, x = 15.3, y = 71.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 244, title = "Encroaching Gnolls", npc = 1070, npcName = "Deputy Feldon", map = 1433, x = 30.7, y = 60.0, f = "e" },
					{ t = "accept", quest = 246, title = "Assessing the Threat", npc = 1070, npcName = "Deputy Feldon", map = 1433, x = 30.7, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Lakeshire", text = "Lakeshire", map = 1433, x = 30.6, y = 59.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 20, title = "Blackrock Menace", npc = 382, npcName = "Marshal Marris", map = 1433, x = 33.5, y = 49.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 125, title = "The Lost Tools", npc = 341, npcName = "Foreman Oslow", map = 1433, x = 32.1, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 118, title = "The Price of Shoes", npc = 415, npcName = "Verner Osgood", map = 1433, x = 31.0, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3741, title = "Hilary's Necklace", npc = 8965, npcName = "Shawn", map = 1433, x = 29.3, y = 53.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3741, itemName = "Hilary's Necklace", count = 1, oi = 1, map = 1433, x = 29.1, y = 55.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 125, itemName = "Oslow's Toolbox", count = 1, oi = 1, map = 1433, x = 41.5, y = 54.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 125, title = "The Lost Tools", npc = 341, npcName = "Foreman Oslow", map = 1433, x = 32.1, y = 48.6, f = "e" },
					{ t = "accept", quest = 89, title = "The Everstill Bridge", npc = 341, npcName = "Foreman Oslow", map = 1433, x = 32.1, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3741, title = "Hilary's Necklace", npc = 8962, npcName = "Hilary", map = 1433, x = 29.3, y = 53.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 91, title = "Solomon's Law", npc = 900, npcName = "Bailiff Conacher", map = 1433, x = 30.0, y = 44.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 127, title = "Selling Fish", npc = 381, npcName = "Dockmaster Baren", map = 1433, x = 27.7, y = 47.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 129, title = "A Free Lunch", npc = 379, npcName = "Darcy", map = 1433, x = 26.6, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Lakeshire", text = "Lakeshire", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 65, title = "The Defias Brotherhood (1)", npc = 266, npcName = "Wiley the Black", map = 1433, x = 26.5, y = 45.3, f = "e" },
					{ t = "accept", quest = 132, title = "The Defias Brotherhood (2)", npc = 266, npcName = "Wiley the Black", map = 1433, x = 26.5, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 92, title = "Redridge Goulash", npc = 343, npcName = "Chef Breanna", map = 1433, x = 22.7, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 34, title = "An Unwelcome Guest", npc = 342, npcName = "Martie Jainrose", map = 1433, x = 21.9, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 129, title = "A Free Lunch", npc = 464, npcName = "Guard Parker", map = 1433, x = 15.3, y = 71.5, f = "e" },
					{ t = "accept", quest = 130, title = "Visit the Herbalist", npc = 464, npcName = "Guard Parker", map = 1433, x = 15.3, y = 71.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 132, title = "The Defias Brotherhood (2)", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.3, y = 47.5, f = "e" },
					{ t = "accept", quest = 135, title = "The Defias Brotherhood (3)", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.3, y = 47.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 135, title = "The Defias Brotherhood (3)", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.3, y = 70.7, f = "e" },
					{ t = "accept", quest = 141, title = "The Defias Brotherhood (4)", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.3, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 141, title = "The Defias Brotherhood (4)", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.3, y = 47.5, f = "e" },
					{ t = "accept", quest = 142, title = "The Defias Brotherhood (5)", npc = 234, npcName = "Gryan Stoutmantle", map = 1436, x = 56.3, y = 47.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 118, title = "The Price of Shoes", npc = 514, npcName = "Smith Argus", map = 1429, x = 41.7, y = 65.5, f = "e" },
					{ t = "accept", quest = 119, title = "Return to Verner", npc = 514, npcName = "Smith Argus", map = 1429, x = 41.7, y = 65.5, f = "e" },
				},
			},
			{
				note = "Hearth to Lakeshire|goto Redridge Mountains,26.9,44.9,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 130, title = "Visit the Herbalist", npc = 342, npcName = "Martie Jainrose", map = 1433, x = 21.9, y = 46.3, f = "e" },
					{ t = "accept", quest = 131, title = "Delivering Daffodils", npc = 342, npcName = "Martie Jainrose", map = 1433, x = 21.9, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 131, title = "Delivering Daffodils", npc = 379, npcName = "Darcy", map = 1433, x = 26.6, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 119, title = "Return to Verner", npc = 415, npcName = "Verner Osgood", map = 1433, x = 31.0, y = 47.3, f = "e" },
					{ t = "accept", quest = 122, title = "Underbelly Scales", npc = 415, npcName = "Verner Osgood", map = 1433, x = 31.0, y = 47.3, f = "e" },
					{ t = "accept", quest = 124, title = "A Baying of Gnolls", npc = 415, npcName = "Verner Osgood", map = 1433, x = 31.0, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 122, itemName = "Underbelly Whelp Scale", count = 6, oi = 1, map = 1433, x = 34.2, y = 67.4, f = "e" },
					{ t = "collect", quest = 92, itemName = "Great Goretusk Snout", count = 5, oi = 1, map = 1433, x = 34.2, y = 67.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 92, itemName = "Crisp Spider Meat", count = 5, oi = 3, map = 1433, x = 19.3, y = 73.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-main-guide-13-20-part-3",
		pack = "guides",
		title = "Main Guide (13-20) (Parte 3/3)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 19,
		maxLevel = 20,
		zone = 1436,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", quest = 246, target = "Redridge Mongrel", count = 10, oi = 1, map = 1433, x = 26.8, y = 80.2, f = "e" },
					{ t = "kill", quest = 246, target = "Redridge Poacher", count = 6, oi = 2, map = 1433, x = 26.8, y = 80.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 246, title = "Assessing the Threat", npc = 1070, npcName = "Deputy Feldon", map = 1433, x = 30.7, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 122, title = "Underbelly Scales", npc = 415, npcName = "Verner Osgood", map = 1433, x = 31.0, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 20, f = "e" },
				},
			},
		},
	})
end

