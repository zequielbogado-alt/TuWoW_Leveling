-- TuWoW_Leveling — Guides/Dailies_Horde_11.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-home-cities-exalted-reputation-guide-part-3",
		pack = "guides",
		title = "Home Cities Exalted Reputation Guide (Parte 3/8)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		next = "zygor/dailies/h-dai-icecrown-home-cities-exalted-reputation-guide-part-4",
		author = "TuWoW & Zygor",
		minLevel = 77,
		zone = 1420,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", map = 1424, x = 75.3, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 509, itemName = "Mudsnout Blossoms", count = 6, oi = 1, map = 1424, x = 64.6, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 501, itemName = "Mountain Lion Blood", count = 10, oi = 1, map = 1424, x = 68.0, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 547, itemName = "Humbert's Sword", count = 1, oi = 1, map = 1424, x = 69.2, y = 77.6, f = "e" },
				},
			},
			{
				note = "Hearth to Tarren Mill |goto Hillsbrad Foothills,62.8,19.1,0.5 |use Hearthstone##6948 |noway |c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 549, title = "WANTED: Syndicate Personnel", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.3, y = 20.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 547, title = "Humbert's Sword", npc = 2419, npcName = "Deathguard Humbert", map = 1424, x = 62.8, y = 20.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 498, title = "The Rescue", npc = 2229, npcName = "Krusk", map = 1424, x = 63.2, y = 20.7, f = "e" },
					{ t = "accept", quest = 1361, title = "Regthar Deathgate", npc = 2229, npcName = "Krusk", map = 1424, x = 63.2, y = 20.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 496, title = "Elixir of Suffering", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
					{ t = "accept", quest = 499, title = "Elixir of Suffering", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
					{ t = "turnin", quest = 509, title = "Elixir of Agony", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
					{ t = "accept", quest = 513, title = "Elixir of Agony", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
					{ t = "turnin", quest = 501, title = "Elixir of Pain", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
					{ t = "accept", quest = 502, title = "Elixir of Pain", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 499, title = "Elixir of Suffering", npc = 2230, npcName = "Umpi", map = 1424, x = 61.5, y = 19.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 552, itemName = "Helcular's Rod", count = 1, oi = 1, map = 1424, x = 46.4, y = 32.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 567, target = "Farmer Kalaba", count = 1, oi = 4, map = 1424, x = 36.0, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 527, target = "Farmer Getz", count = 1, oi = 4, map = 1424, x = 35.3, y = 40.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 502, title = "Elixir of Pain", npc = 2274, npcName = "Stanley", map = 1424, x = 32.7, y = 35.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 527, target = "Farmer Ray", count = 1, oi = 3, map = 1424, x = 33.2, y = 34.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 527, target = "Hillsbrad Farmer", count = 6, oi = 1, map = 1424, x = 35.7, y = 45.3, f = "e" },
					{ t = "kill", quest = 527, target = "Hillsbrad Farmhand", count = 6, oi = 2, map = 1424, x = 35.7, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 567, target = "Clerk Horrace Whitesteed", count = 1, oi = 1, map = 1424, x = 29.5, y = 42.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 567, target = "Citizen Wilkes", count = 1, oi = 2, map = 1424, x = 32.6, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 544, itemName = "Bloodstone Marble", count = 1, oi = 2, map = 1416, x = 20.1, y = 84.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 544, itemName = "Bloodstone Shard", count = 1, oi = 3, map = 1416, x = 20.4, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 544, itemName = "Bloodstone Wedge", count = 1, oi = 1, map = 1416, x = 19.9, y = 85.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 544, itemName = "Bloodstone Oval", count = 1, oi = 4, map = 1416, x = 17.8, y = 83.2, f = "e" },
				},
			},
			{
				note = "Go outside to 20.2,82.4",
				goals = {
					{ t = "collect", quest = 556, itemName = "Worn Stone Token", count = 10, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1424, x = 27.4, y = 59.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 567, target = "Miner Hackett", count = 1, oi = 3, map = 1424, x = 31.1, y = 58.7, f = "e" },
				},
			},
			{
				note = "Hearth to Tarren Mill |goto Hillsbrad Foothills,62.8,19.1,0.5 |use Hearthstone##6948 |noway |c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 527, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.3, y = 20.4, f = "e" },
					{ t = "accept", quest = 528, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.3, y = 20.4, f = "e" },
					{ t = "turnin", quest = 567, title = "Dangerous!", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.3, y = 20.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 552, title = "Helcular's Revenge", npc = 2429, npcName = "Novice Thaivand", map = 1424, x = 63.9, y = 19.7, f = "e" },
					{ t = "accept", quest = 553, title = "Helcular's Revenge", npc = 2429, npcName = "Novice Thaivand", map = 1424, x = 63.9, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 546, title = "Souvenirs of Death", npc = 2418, npcName = "Deathguard Samsa", map = 1424, x = 62.1, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 544, title = "Prison Break In", npc = 2410, npcName = "Magus Wordeen Voidglare", map = 1424, x = 61.6, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 556, title = "Stone Tokens", npc = 2437, npcName = "Keeper Bel'varil", map = 1424, x = 61.5, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1424, x = 46.2, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1424, x = 43.9, y = 28.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1424, x = 44.0, y = 26.6, f = "e" },
				},
			},
			{
				note = "Go outside the cave ,0.5 |noway |c",
				goals = {
					{ t = "goto", map = 1424, x = 46.2, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 528, target = "Hillsbrad Peasant", count = 15, oi = 1, map = 1424, x = 36.4, y = 47.0, f = "e" },
					{ t = "collect", quest = 546, itemName = "Hillsbrad Human Skull", count = 30, oi = 1, map = 1424, x = 36.4, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1416, x = 37.5, y = 66.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 546, title = "Souvenirs of Death", npc = 2418, npcName = "Deathguard Samsa", map = 1424, x = 62.1, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 528, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.4, y = 20.4, f = "e" },
					{ t = "accept", quest = 529, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.4, y = 20.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 553, title = "Helcular's Revenge", map = 1424, x = 52.8, y = 53.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 529, itemName = "Shipment of Iron", count = 1, oi = 3, map = 1424, x = 32.0, y = 45.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 529, target = "Blacksmith Verringtan", count = 1, oi = 1, map = 1424, x = 32.5, y = 46.0, f = "e" },
					{ t = "kill", quest = 529, target = "Hillsbrad Apprentice Blacksmith", count = 4, oi = 2, map = 1424, x = 32.5, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 529, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.3, y = 20.4, f = "e" },
					{ t = "accept", quest = 532, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.3, y = 20.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 532, target = "Magistrate Burnside", count = 1, oi = 1, map = 1424, x = 29.7, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 532, itemName = "Hillsbrad Town Registry", count = 1, oi = 4, map = 1424, x = 29.5, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 532, target = "Hillsbrad Councilman", count = 4, oi = 2, map = 1424, x = 31.1, y = 42.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 532, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.3, y = 20.4, f = "e" },
					{ t = "accept", quest = 539, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.3, y = 20.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1424, x = 27.4, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 539, target = "Foreman Bonds", count = 1, oi = 1, map = 1424, x = 31.2, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 539, target = "Hillsbrad Miner", count = 10, oi = 2, map = 1424, x = 30.5, y = 55.6, f = "e" },
				},
			},
			{
				note = "Hearth to Tarren Mill |goto Hillsbrad Foothills,62.8,19.1,0.5 |use Hearthstone##6948 |noway |c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 539, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.3, y = 20.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2389, npcName = "Zarise", map = 1424, x = 60.1, y = 18.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 513, title = "Elixir of Agony", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.8, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1458, x = 54.9, y = 11.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9704, title = "Slain by the Wretched", npc = 15301, npcName = "Outrunner Alarion", map = 1944, x = 40.4, y = 32.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9704, title = "Slain by the Wretched", map = 1944, x = 42.0, y = 35.7, f = "e" },
					{ t = "accept", quest = 9705, title = "Package Recovery", map = 1944, x = 42.0, y = 35.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9705, title = "Package Recovery", npc = 15301, npcName = "Outrunner Alarion", map = 1944, x = 40.4, y = 32.2, f = "e" },
					{ t = "accept", quest = 8350, title = "Completing the Delivery", npc = 15301, npcName = "Outrunner Alarion", map = 1944, x = 40.4, y = 32.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8472, title = "Major Malfunction", npc = 15418, npcName = "Magister Jaronis", map = 1944, x = 47.3, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8350, title = "Completing the Delivery", npc = 15433, npcName = "Innkeeper Delaniel", map = 1944, x = 48.1, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Falconwing Square", map = 1944, x = 48.1, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8463, title = "Unstable Mana Crystals", npc = 15403, npcName = "Aeldon Sunbrand", map = 1944, x = 48.2, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8468, title = "Wanted: Thaelis the Hungerer", map = 1944, x = 48.2, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8463, itemName = "Unstable Mana Crystal", count = 6, oi = 1, map = 1944, x = 45.9, y = 43.7, f = "e" },
					{ t = "collect", quest = 8472, itemName = "Arcane Core", count = 6, oi = 1, map = 1944, x = 45.9, y = 43.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8468, itemName = "Thaelis's Head", count = 1, oi = 1, map = 1944, x = 45.0, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8472, title = "Major Malfunction", npc = 15418, npcName = "Magister Jaronis", map = 1944, x = 47.3, y = 46.3, f = "e" },
					{ t = "accept", quest = 8895, title = "Delivery to the North Sanctum", npc = 15418, npcName = "Magister Jaronis", map = 1944, x = 47.3, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8468, title = "Wanted: Thaelis the Hungerer", npc = 16924, npcName = "Sergeant Kan'ren", map = 1944, x = 47.8, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8463, title = "Unstable Mana Crystals", npc = 15403, npcName = "Aeldon Sunbrand", map = 1944, x = 48.2, y = 46.0, f = "e" },
					{ t = "accept", quest = 9352, title = "Darnassian Intrusions", npc = 15403, npcName = "Aeldon Sunbrand", map = 1944, x = 48.2, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8895, title = "Delivery to the North Sanctum", npc = 15405, npcName = "Ley-Keeper Caidanis", map = 1944, x = 44.6, y = 53.1, f = "e" },
					{ t = "accept", quest = 9119, title = "Malfunction at the West Sanctum", npc = 15405, npcName = "Ley-Keeper Caidanis", map = 1944, x = 44.6, y = 53.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9035, title = "Roadside Ambush", npc = 15941, npcName = "Apprentice Ralen", map = 1944, x = 45.2, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9119, title = "Malfunction at the West Sanctum", npc = 15401, npcName = "Ley-Keeper Velania", map = 1944, x = 36.7, y = 57.4, f = "e" },
					{ t = "accept", quest = 8486, title = "Arcane Instability", npc = 15401, npcName = "Ley-Keeper Velania", map = 1944, x = 36.7, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8486, target = "Manawraith", count = 5, oi = 1, map = 1944, x = 35.4, y = 57.4, f = "e" },
					{ t = "kill", quest = 8486, target = "Mana Stalker", count = 5, oi = 2, map = 1944, x = 35.4, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 20765, itemName = "Incriminating Documents", count = 1, map = 1944, x = 33.9, y = 58.4, f = "e" },
					{ t = "accept", quest = 8482, title = "Incriminating Documents", map = 1944, x = 33.9, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9352, title = "Darnassian Intrusions", npc = 15401, npcName = "Ley-Keeper Velania", map = 1944, x = 36.7, y = 57.4, f = "e" },
					{ t = "turnin", quest = 8486, title = "Arcane Instability", npc = 15401, npcName = "Ley-Keeper Velania", map = 1944, x = 36.7, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8884, title = "Fish Heads, Fish Heads...", npc = 15920, npcName = "Hathvelion Sungaze", map = 1944, x = 30.2, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8884, itemName = "Grimscale Murloc Head", count = 8, oi = 1, map = 1944, x = 27.3, y = 57.2, f = "e" },
					{ t = "collect", item = 21776, itemName = "Captain Kelisendra's Lost Rutters", count = 1, map = 1944, x = 27.3, y = 57.2, f = "e" },
					{ t = "accept", quest = 8887, title = "Captain Kelisendra's Lost Rutters", map = 1944, x = 27.3, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8884, title = "Fish Heads, Fish Heads...", npc = 15920, npcName = "Hathvelion Sungaze", map = 1944, x = 30.2, y = 58.3, f = "e" },
					{ t = "accept", quest = 8885, title = "The Ring of Mmmrrrggglll", npc = 15920, npcName = "Hathvelion Sungaze", map = 1944, x = 30.2, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8885, itemName = "Ring of Mmmrrrggglll", count = 1, oi = 1, map = 1944, x = 25.3, y = 67.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8885, title = "The Ring of Mmmrrrggglll", npc = 15920, npcName = "Hathvelion Sungaze", map = 1944, x = 30.2, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8887, title = "Captain Kelisendra's Lost Rutters", npc = 15921, npcName = "Captain Kelisendra", map = 1944, x = 36.4, y = 66.7, f = "e" },
					{ t = "accept", quest = 8886, title = "Grimscale Pirates!", npc = 15921, npcName = "Captain Kelisendra", map = 1944, x = 36.4, y = 66.7, f = "e" },
					{ t = "accept", quest = 8480, title = "Lost Armaments", npc = 15404, npcName = "Velendris Whitemorn", map = 1944, x = 36.4, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8480, itemName = "Sin'dorei Armaments", count = 8, oi = 1, map = 1944, x = 31.7, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8886, itemName = "Captain Kelisendra's Cargo", count = 6, oi = 1, map = 1944, x = 25.6, y = 70.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8886, title = "Grimscale Pirates!", npc = 15921, npcName = "Captain Kelisendra", map = 1944, x = 36.4, y = 66.7, f = "e" },
					{ t = "turnin", quest = 8480, title = "Lost Armaments", npc = 15404, npcName = "Velendris Whitemorn", map = 1944, x = 36.4, y = 66.7, f = "e" },
					{ t = "accept", quest = 9076, title = "Wretched Ringleader", npc = 15404, npcName = "Velendris Whitemorn", map = 1944, x = 36.4, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9076, itemName = "Aldaron's Head", count = 1, oi = 1, map = 1944, x = 32.8, y = 69.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9076, title = "Wretched Ringleader", npc = 15404, npcName = "Velendris Whitemorn", map = 1944, x = 36.4, y = 66.7, f = "e" },
				},
			},
		},
	})
end

