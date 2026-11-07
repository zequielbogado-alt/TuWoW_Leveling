-- TuWoW_Leveling — Guides/Leveling_Alliance_29.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-55-60",
		pack = "guides",
		title = "Levels (55-60) (Parte 1/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-55-60-part-2",
		author = "TuWoW & Zygor",
		minLevel = 55,
		maxLevel = 60,
		zone = 1448,
		version = 1,
		steps = {
			{
				note = "Outside the tunnel to the right at 27.7,34.5|goto Winterspring,27.7,34.5",
				goals = {
					{ t = "accept", quest = 8464, title = "Winterfall Activity", npc = 11556, npcName = "Salfa", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3909, title = "The Videre Elixir", npc = 9298, npcName = "Donova Snowden", map = 1448, x = 31.3, y = 45.2, f = "e" },
					{ t = "accept", quest = 3912, title = "Meet at the Grave", npc = 9298, npcName = "Donova Snowden", map = 1448, x = 31.3, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Everlook", text = "Everlook", map = 1448, x = 62.3, y = 36.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4502, title = "Volcanic Activity", npc = 8496, npcName = "Liv Rizzlefix", map = 1413, x = 62.4, y = 38.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5158, title = "Seeking Spiritual Aid", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.8, y = 43.8, f = "e" },
					{ t = "accept", quest = 5159, title = "Cleansed Water Returns to Felwood", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.8, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4512, title = "A Little Slime Goes a Long Way (1)", npc = 9616, npcName = "Laris Geardawdle", map = 1455, x = 75.8, y = 23.4, f = "e" },
					{ t = "accept", quest = 4513, title = "A Little Slime Goes a Long Way (2)", npc = 9616, npcName = "Laris Geardawdle", map = 1455, x = 75.8, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3461, title = "Return to Tymor", npc = 8507, npcName = "Tymor", map = 1455, x = 31.0, y = 4.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1019, title = "The New Frontier (1)", npc = 10877, npcName = "Courier Hammerfall", map = 1455, x = 29.4, y = 22.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 54.0, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3912, title = "Meet at the Grave", npc = 9299, npcName = "Gaeriyan", map = 1446, x = 54.0, y = 23.4, f = "e" },
					{ t = "accept", quest = 3913, title = "A Grave Situation", npc = 9299, npcName = "Gaeriyan", map = 1446, x = 54.0, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3913, title = "A Grave Situation", map = 1446, x = 53.8, y = 29.1, f = "e" },
					{ t = "accept", quest = 3914, title = "Linken's Sword", map = 1446, x = 53.8, y = 29.1, f = "e" },
				},
			},
			{
				note = "Click the Bag of Empty Ooze Containers in your bags|use Bag of Empty Ooze Containers##11955",
				goals = {
					{ t = "use", item = 11955, itemName = "Bag of Empty Ooze Containers", f = "e" },
					{ t = "collect", quest = 4513, item = 11953, itemName = "Empty Pure Sample Jar", count = 10, f = "e" },
				},
			},
			{
				note = "Kill Oozes as you see them in Un'Goro Crater while doing other quests",
				goals = {
					{ t = "collect", item = 11954, itemName = "Filled Pure Sample Jar", count = 10, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4301, title = "The Mighty U'cha", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.6, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4301, itemName = "U'cha's Pelt", count = 1, oi = 1, map = 1449, x = 68.3, y = 12.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4244, title = "Chasing A-Me 01 (2)", npc = 9623, npcName = "A-Me 01", map = 1449, x = 67.7, y = 16.8, f = "e" },
					{ t = "turnin", quest = 4244, title = "Chasing A-Me 01 (2)", npc = 9623, npcName = "A-Me 01", map = 1449, x = 67.7, y = 16.8, f = "e" },
					{ t = "accept", quest = 4245, title = "Chasing A-Me 01 (3)", npc = 9623, npcName = "A-Me 01", map = 1449, x = 67.7, y = 16.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4245, title = "Chasing A-Me 01 (3)", npc = 9618, npcName = "Karna Remtravel", map = 1449, x = 46.4, y = 13.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3914, title = "Linken's Sword", npc = 8737, npcName = "Linken", map = 1449, x = 44.7, y = 8.1, f = "e" },
					{ t = "accept", quest = 3941, title = "A Gnome's Assistance", npc = 8737, npcName = "Linken", map = 1449, x = 44.7, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3941, title = "A Gnome's Assistance", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.9, y = 2.7, f = "e" },
					{ t = "accept", quest = 3942, title = "Linken's Memory", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.9, y = 2.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4301, title = "The Mighty U'cha", npc = 9619, npcName = "Torwa Pathfinder", map = 1449, x = 71.6, y = 76.0, f = "e" },
				},
			},
			{
				note = "Make sure you have 10 Filled Pure Sample Jars",
				goals = {
					{ t = "collect", quest = 4513, item = 11954, itemName = "Filled Pure Sample Jar", count = 10, oi = 1, f = "e" },
				},
			},
			{
				note = "Hearth to Astranaar|goto Ashenvale,35.5,50.2,5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4441, itemName = "Vial of Blessed Water", count = 1, oi = 1, map = 1457, x = 39.5, y = 83.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5159, title = "Cleansed Water Returns to Felwood", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.2, y = 82.3, f = "e" },
					{ t = "accept", quest = 5165, title = "Dousing the Flames of Protection", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.2, y = 82.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4441, title = "Felbound Ancients", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.3, y = 81.5, f = "e" },
					{ t = "accept", quest = 4442, title = "Purified!", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.3, y = 81.5, f = "e" },
					{ t = "turnin", quest = 4442, title = "Purified!", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.3, y = 81.5, f = "e" },
					{ t = "turnin", quest = 3942, title = "Linken's Memory", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.3, y = 81.5, f = "e" },
					{ t = "accept", quest = 4084, title = "Silver Heart", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.3, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "wolves and bears", count = 1, map = 1448, x = 48.7, y = 79.2, f = "e" },
					{ t = "collect", quest = 4084, itemName = "Silvery Claws", count = 11, oi = 1, map = 1448, x = 48.7, y = 79.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1448, x = 35.4, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1448, x = 36.3, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1448, x = 36.5, y = 55.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1448, x = 36.7, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1448, x = 37.7, y = 52.7, f = "e" },
				},
			},
			{
				note = "Leave the cave and go to 48.5,20.2",
				goals = {
					{ t = "kill", target = "Irontree Stompers", count = 1, map = 1448, x = 48.5, y = 20.2, f = "e" },
					{ t = "collect", quest = 4084, itemName = "Irontree Heart", count = 1, oi = 2, map = 1448, x = 48.5, y = 20.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5165, title = "Dousing the Flames of Protection", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.2, y = 82.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4084, title = "Silver Heart", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.3, y = 81.5, f = "e" },
					{ t = "accept", quest = 4005, title = "Aquementas", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.3, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6604, title = "Enraged Wildkin (1)", npc = 11755, npcName = "Harlo Wigglesworth", map = 1452, x = 61.1, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5601, title = "Sister Pamela", npc = 11629, npcName = "Jessica Redpath", map = 1452, x = 61.3, y = 39.0, f = "e" },
					{ t = "accept", quest = 6028, title = "The Everlook Report", npc = 10431, npcName = "Gregor Greystone", map = 1452, x = 61.3, y = 39.0, f = "e" },
					{ t = "accept", quest = 6030, title = "Duke Nicholas Zverenhoff", npc = 10431, npcName = "Gregor Greystone", map = 1452, x = 61.3, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Everlook", text = "Everlook", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3783, title = "Are We There, Yeti? (1)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.9, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5249, title = "To Winterspring!", npc = 11079, npcName = "Wynd Nightchaser", map = 1452, x = 52.1, y = 30.4, f = "e" },
					{ t = "accept", quest = 5244, title = "The Ruins of Kel'Theril", npc = 11079, npcName = "Wynd Nightchaser", map = 1452, x = 52.1, y = 30.4, f = "e" },
					{ t = "turnin", quest = 6604, title = "Enraged Wildkin (1)", npc = 10301, npcName = "Jaron Stoneshaper", map = 1452, x = 52.1, y = 30.4, f = "e" },
					{ t = "turnin", quest = 5244, title = "The Ruins of Kel'Theril", npc = 10301, npcName = "Jaron Stoneshaper", map = 1452, x = 52.1, y = 30.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5082, target = "Winterfall Pathfinder", count = 8, oi = 1, map = 1452, x = 39.4, y = 43.8, f = "e" },
					{ t = "kill", quest = 5082, target = "Winterfall Den Watcher", count = 8, oi = 2, map = 1452, x = 39.4, y = 43.8, f = "e" },
					{ t = "kill", quest = 5082, target = "Winterfall Totemic", count = 8, oi = 3, map = 1452, x = 39.4, y = 43.8, f = "e" },
					{ t = "kill", target = "Winterfall furbolgs", count = 1, map = 1452, x = 39.4, y = 43.8, f = "e" },
					{ t = "collect", itemName = "Empty Firewater Flask", count = 1, map = 1452, x = 39.4, y = 43.8, f = "e" },
					{ t = "accept", quest = 5083, title = "Winterfall Firewater", map = 1452, x = 39.4, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "yetis", count = 1, map = 1452, x = 65.0, y = 41.6, f = "e" },
					{ t = "collect", quest = 3783, itemName = "Thick Yeti Fur", count = 10, oi = 1, map = 1452, x = 65.0, y = 41.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3783, title = "Are We There, Yeti? (1)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.9, y = 37.6, f = "e" },
					{ t = "accept", quest = 977, title = "Are We There. Yeti? (2)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.9, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Ice Thistle Matriarchs", count = 1, map = 1452, x = 66.0, y = 42.8, f = "e" },
					{ t = "kill", target = "Ice Thistle Patriarchs", count = 1, map = 1452, x = 66.0, y = 42.8, f = "e" },
					{ t = "collect", quest = 977, itemName = "Pristine Yeti Horn", count = 2, oi = 1, map = 1452, x = 66.0, y = 42.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1452, x = 59.8, y = 74.3, f = "e" },
				},
			},
			{
				note = "Hearth to Everlook|goto Winterspring,61.2,38.3,3|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 977, title = "Are We There. Yeti? (2)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.9, y = 37.6, f = "e" },
					{ t = "accept", quest = 5163, title = "Are We There, Yeti? (3)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.9, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1452, x = 61.5, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8464, target = "Winterfall Shaman", count = 8, oi = 1, map = 1452, x = 67.0, y = 35.0, f = "e" },
					{ t = "kill", quest = 8464, target = "Winterfall Den Watcher", count = 8, oi = 2, map = 1452, x = 67.0, y = 35.0, f = "e" },
					{ t = "kill", quest = 8464, target = "Winterfall Ursa", count = 8, oi = 3, map = 1452, x = 67.0, y = 35.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4842, title = "Strange Sources", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
					{ t = "turnin", quest = 5082, title = "Threat of the Winterfall", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
					{ t = "turnin", quest = 5083, title = "Winterfall Firewater", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
					{ t = "accept", quest = 5084, title = "Falling to Corruption", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8464, title = "Winterfall Activity", npc = 11556, npcName = "Salfa", map = 1452, x = 27.7, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5084, title = "Falling to Corruption", map = 1448, x = 60.2, y = 5.8, f = "e" },
					{ t = "accept", quest = 5085, title = "Mystery Goo", map = 1448, x = 60.2, y = 5.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5085, title = "Mystery Goo", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
					{ t = "accept", quest = 5086, title = "Toxic Horrors", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Toxic Horrors", count = 1, map = 1448, x = 50.4, y = 26.4, f = "e" },
					{ t = "collect", quest = 5086, itemName = "Toxic Horror Droplet", count = 3, oi = 1, map = 1448, x = 50.4, y = 26.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5086, title = "Toxic Horrors", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.3, y = 45.2, f = "e" },
				},
			},
			{
				note = "Hearth to Everlook|goto Winterspring,61.3,38.9,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 978, title = "Moontouched Wildkin", npc = 7916, npcName = "Erelas Ambersky", map = 1438, x = 55.5, y = 92.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1019, title = "The New Frontier (1)", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 35.1, y = 9.1, f = "e" },
					{ t = "accept", quest = 6761, title = "The New Frontier (2)", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 35.1, y = 9.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6761, title = "The New Frontier (2)", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.2, y = 8.1, f = "e" },
					{ t = "accept", quest = 6762, title = "Rabine Saturna", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.2, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6762, title = "Rabine Saturna", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.7, y = 45.1, f = "e" },
					{ t = "accept", quest = 1124, title = "Wasteland", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.7, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8275, title = "Taking Back Silithus", npc = 15187, npcName = "Cenarion Emissary Jademoon", map = 1455, x = 58.6, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4513, title = "A Little Slime Goes a Long Way (2)", npc = 9616, npcName = "Laris Geardawdle", map = 1455, x = 75.8, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3702, title = "The Smoldering Ruins of Thaurissan (1)", npc = 8879, npcName = "Royal Historian Archesonus", map = 1455, x = 38.4, y = 55.3, f = "e" },
					{ t = "turnin", quest = 3702, title = "The Smoldering Ruins of Thaurissan (1)", npc = 8879, npcName = "Royal Historian Archesonus", map = 1455, x = 38.4, y = 55.3, f = "e" },
					{ t = "accept", quest = 3701, title = "The Smoldering Ruins of Thaurissan (2)", npc = 8879, npcName = "Royal Historian Archesonus", map = 1455, x = 38.4, y = 55.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Lakeshire", text = "Lakeshire", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1428, x = 82.8, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Morgan's Vigil", text = "Morgan's Vigil", map = 1428, x = 84.3, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3823, title = "Extinguish the Firegut", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
					{ t = "accept", quest = 4283, title = "FIFTY! YEP!", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1428, x = 64.1, y = 41.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4324, title = "Yuka Screwspigot", npc = 9544, npcName = "Yuka Screwspigot", map = 1428, x = 66.1, y = 21.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4726, title = "Broodling Essence", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.2, y = 23.9, f = "e" },
					{ t = "accept", quest = 4296, title = "Tablet of the Seven", npc = 9536, npcName = "Maxwort Uberglint", map = 1428, x = 65.2, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4296, itemName = "Tablet Transcript", count = 1, oi = 1, map = 1428, x = 54.1, y = 40.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Blackrock orcs", count = 1, map = 1428, x = 44.4, y = 36.4, f = "e" },
					{ t = "collect", quest = 4283, itemName = "Blackrock Medallion", count = 50, oi = 1, map = 1428, x = 44.4, y = 36.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 3823, target = "Firegut Ogre Mage", count = 15, oi = 1, map = 1428, x = 74.7, y = 42.0, f = "e" },
					{ t = "kill", quest = 3823, target = "Firegut Ogre", count = 7, oi = 2, map = 1428, x = 74.7, y = 42.0, f = "e" },
					{ t = "kill", quest = 3823, target = "Firegut Brute", count = 7, oi = 3, map = 1428, x = 74.7, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3823, title = "Extinguish the Firegut", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
					{ t = "accept", quest = 3824, title = "Gor'tesh the Brute Lord", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
					{ t = "turnin", quest = 4283, title = "FIFTY! YEP!", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4726, itemName = "Broodling Essence", count = 8, oi = 1, map = 1428, x = 90.4, y = 55.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4022, title = "A Taste of Flame (1)", npc = 9459, npcName = "Cyrus Therepentous", map = 1428, x = 95.1, y = 31.6, f = "e" },
					{ t = "turnin", quest = 4022, title = "A Taste of Flame (1)", npc = 9459, npcName = "Cyrus Therepentous", map = 1428, x = 95.1, y = 31.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4726, title = "Broodling Essence", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.2, y = 23.9, f = "e" },
					{ t = "accept", quest = 4808, title = "Felnok Steelspring", npc = 10267, npcName = "Tinkee Steamboil", map = 1428, x = 65.2, y = 23.9, f = "e" },
					{ t = "turnin", quest = 4296, title = "Tablet of the Seven", npc = 9536, npcName = "Maxwort Uberglint", map = 1428, x = 65.2, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3824, itemName = "Gor'tesh's Lopped Off Head", count = 1, oi = 1, map = 1428, x = 39.3, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3824, title = "Gor'tesh the Brute Lord", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
					{ t = "accept", quest = 3825, title = "Ogre Head On A Stick = Party", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
				},
			},
			{
				note = "Go to the top of Dreadmaul Rock to 81,46.8",
				goals = {
					{ t = "goto", map = 1428, x = 81.0, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3825, title = "Ogre Head On A Stick = Party", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3701, title = "The Smoldering Ruins of Thaurissan (2)", npc = 8879, npcName = "Royal Historian Archesonus", map = 1455, x = 38.4, y = 55.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 51.1, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Gadgetzan", text = "Gadgetzan", f = "e" },
				},
			},
		},
	})
end

