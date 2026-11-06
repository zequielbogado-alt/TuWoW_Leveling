-- TuWoW_Leveling — Guides/Dungeons_21.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-upper-blackrock-spire-55-60",
		pack = "guides",
		title = "Upper Blackrock Spire",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 55,
		maxLevel = 60,
		zone = 1427,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
				},
			},
			{
				note = "This will start the fight. The Tank should keep him away from the group. Melee will need extra heals during the encounter from its AoE attacks.",
				goals = {
					{ t = "talk", npc = 9816, npcName = "Pyroguard Emberseer" },
				},
			},
			{
				note = "Clear all dragon spawn before starting the event. Click on father flame and take the item to start the event. DPS need to focus down \"Rookery Hatchers\" as quickly as possible. AoE down whelps that spawn meanwhile. Tanks pick up \"Rookery Guardians\" as soon as they appear. Tanks should have their backs to the wall for these. After a bit, Solakar will spawn, who will also need to be tanked with against the wall. Finish off the whelps before switching DPS to Solakar. Hug the wall after to avoid spawning additional whelps.",
				goals = {
					{ t = "talk", npc = 10264, npcName = "Solakar Flamewreath" },
				},
			},
			{
				note = "This is a rare mob that may not be available. The tank should have their back to the wall. All ranged should be at max distance as well.",
				goals = {
					{ t = "talk", npc = 10509, npcName = "Jed Runewatcher" },
				},
			},
			{
				note = "The tank should have their back to the wall. All ranged should be at max distance as well.",
				goals = {
					{ t = "talk", npc = 10899, npcName = "Goraluk Anvilcrack" },
				},
			},
			{
				note = "They will spawn after clearing the gauntlet of orcs and dragon spawn. Focus on Flame Tongues, Dragonguard, Dragon Spawn, Chromatic Dragonspawn, Chromatic Whelps then Blackhand Orcs in that order. When Gyth appears, the tank should face it away from the group. At 20%, Rend will join the fight. The Offtank should immediately grab Rend. Finish off Gyth before switching to Warchief Rend Blackhand. Melee move out of range when he casts the \"Whirlwind\" ability.",
				goals = {
					{ t = "talk", npc = 10339, npcName = "Gyth" },
				},
			},
			{
				note = "It's \"Berserker Charge\" ability targets the player with the most aggro. The tanks must ensure that they have the highest aggro at all times. All ranged should stand at max range to avoid its \"Fear\" ability. The final ability will be \"Flamebreak\". It will knockback anyone near it, so the tanks should fight The Beast with their back to the wall.",
				goals = {
					{ t = "talk", npc = 10430, npcName = "The Beast" },
				},
			},
			{
				note = "To start, if you have a hunter, you can have them kite General Drakkisath into The Beasts room and feign death while the group burns down the \"Chromatic Elite Guards\". You can also tank all 3 where they stand, AoEing down the Elite Guards as quickly as possible. Melee should stand behind Drakkisath at all times. The Tank should have their back to the wall.",
				goals = {
					{ t = "talk", npc = 10363, npcName = "General Drakkisath" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-ragefire-chasm-quests",
		pack = "guides",
		title = "Ragefire Chasm Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1456,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 9 },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "accept", quest = 5723, title = "Testing an Enemy's Strength", npc = 11833, npcName = "Rahauro", map = 1456, x = 70.51, y = 31.83, f = "e" },
					{ t = "accept", quest = 5722, title = "Searching for the Lost Satchel", npc = 11833, npcName = "Rahauro", map = 1456, x = 70.51, y = 31.83, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the tunnel", map = 1458, x = 51.93, y = 64.78 },
					{ t = "goto", text = "Follow the path", map = 1458, x = 45.95, y = 73.73 },
					{ t = "accept", quest = 5725, title = "The Power to Destroy...", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.26, y = 92.19, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.07, y = 37.01 },
					{ t = "accept", quest = 5726, title = "Hidden Enemies", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1411, x = 54.96, y = 9.64 },
					{ t = "collect", quest = 5726, item = 14544, itemName = "Lieutenant's Insignia", oi = 1, map = 1411, x = 53.83, y = 9.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1411, x = 54.96, y = 9.64 },
					{ t = "complete", quest = 5726, title = "Hidden Enemies", note = "Enter Orgrimmar", map = 1454, x = 49.08, y = 94.82, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.07, y = 37.01 },
					{ t = "turnin", quest = 5726, title = "Hidden Enemies", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
					{ t = "accept", quest = 5727, title = "Hidden Enemies", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1454, x = 54.4, y = 35.58 },
					{ t = "goto", text = "Follow the path down", map = 1454, x = 55.22, y = 40.76 },
					{ t = "complete", quest = 5727, title = "Hidden Enemies", note = "Gauge Neeru Fireblade's Reaction to Being a Member of the Burning Blade", map = 1454, x = 49.47, y = 50.63, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1454, x = 48.35, y = 49.33 },
					{ t = "goto", text = "Follow the path", map = 1454, x = 56.91, y = 40.8 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.07, y = 37.01 },
					{ t = "turnin", quest = 5727, title = "Hidden Enemies", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
					{ t = "accept", quest = 5728, title = "Hidden Enemies", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1454, x = 55.22, y = 40.76 },
					{ t = "accept", quest = 5761, title = "Slaying the Beast", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.49, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5723, title = "Testing an Enemy's Strength", note = "Enter the Ragefire Chasm Dungeon with Your Group" },
				},
			},
			{
				note = "Follow long path down and take the first right. Run up the ramp in the room, killing the troggs. Maur Grimtotem will be on the floor up in the room.",
				goals = {
					{ t = "turnin", quest = 5722, title = "Searching for the Lost Satchel", npc = 11834, npcName = "Maur Grimtotem" },
					{ t = "accept", quest = 5724, title = "Returning the Lost Satchel", npc = 11834, npcName = "Maur Grimtotem" },
				},
			},
			{
				note = "The second boss of the dungeon.",
				goals = {
					{ t = "collect", quest = 5761, item = 14540, itemName = "Taragaman the Hungerer's Heart", oi = 1 },
				},
			},
			{
				note = "The third boss of the dungeon.",
				goals = {
					{ t = "kill", quest = 5728, npc = 11518, target = "Jergosh the Invoker", oi = 2 },
				},
			},
			{
				note = "The final boss of the dungeon.",
				goals = {
					{ t = "kill", quest = 5728, npc = 11519, target = "Bazzalan", oi = 1 },
				},
			},
			{
				label = "Slay_8_Ragefire_Trogg",
				along = true,
				note = "They are found throughout the instance.",
				goals = {
					{ t = "complete", quest = 5723, title = "Testing an Enemy's Strength", note = "Slay #8# Ragefire Troggs" },
				},
			},
			{
				label = "Slay_8_Ragefire_Shaman",
				along = true,
				note = "They are found throughout the instance.",
				goals = {
					{ t = "kill", npc = 11319, target = "Ragefire Shaman", count = 8 },
					{ t = "complete", quest = 5723, title = "Testing an Enemy's Strength", note = "Slay #8# Ragefire Shaman" },
				},
			},
			{
				label = "Collect_Spells_of_Shadow",
				along = true,
				note = "Only Searing Blade Cultists and Searing Blade Warlocks will drop this quest item.",
				goals = {
					{ t = "collect", quest = 5725, item = 14395, itemName = "Spells of Shadow", oi = 1 },
				},
			},
			{
				label = "Collect_Incantations_from_the_Nether",
				along = true,
				note = "Only Searing Blade Cultists and Searing Blade Warlocks will drop this quest item.",
				goals = {
					{ t = "collect", quest = 5725, item = 14396, itemName = "Incantations from the Nether", oi = 2 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5724, title = "Returning the Lost Satchel", note = "Click Here to Continue" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5761, title = "Slaying the Beast", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.49, y = 50.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1454, x = 48.35, y = 49.33 },
					{ t = "goto", text = "Follow the path", map = 1454, x = 56.91, y = 40.8 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.07, y = 37.01 },
					{ t = "turnin", quest = 5728, title = "Hidden Enemies", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
					{ t = "accept", quest = 5729, title = "Hidden Enemies", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5729, title = "Hidden Enemies", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.49, y = 50.6, f = "e" },
					{ t = "accept", quest = 5730, title = "Hidden Enemies", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.49, y = 50.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1454, x = 48.35, y = 49.33 },
					{ t = "goto", text = "Follow the path", map = 1454, x = 56.91, y = 40.8 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.07, y = 37.01 },
					{ t = "turnin", quest = 5730, title = "Hidden Enemies", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the tunnel", map = 1458, x = 51.93, y = 64.78 },
					{ t = "goto", text = "Follow the path", map = 1458, x = 45.95, y = 73.73 },
					{ t = "turnin", quest = 5725, title = "The Power to Destroy...", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.26, y = 92.19, f = "e" },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "turnin", quest = 5724, title = "Returning the Lost Satchel", npc = 11833, npcName = "Rahauro", map = 1456, x = 70.51, y = 31.83, f = "e" },
					{ t = "turnin", quest = 5723, title = "Testing an Enemy's Strength", npc = 11833, npcName = "Rahauro", map = 1456, x = 70.51, y = 31.83, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-wailing-caverns-quests",
		pack = "guides",
		title = "Wailing Caverns Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1456,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 15 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 886, title = "The Barrens Oases", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.59, y = 28.56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 886, title = "The Barrens Oases", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
					{ t = "accept", quest = 870, title = "The Forgotten Pools", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
				},
			},
			{
				note = "Underwater.",
				goals = {
					{ t = "complete", quest = 870, title = "The Forgotten Pools", note = "Explore the Waters of the Forgotten Pools", map = 1413, x = 45.07, y = 22.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 870, title = "The Forgotten Pools", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
					{ t = "accept", quest = 877, title = "The Stagnant Oasis", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
				},
			},
			{
				note = "Underwater.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1413, x = 59.88, y = 38.96 },
					{ t = "complete", quest = 877, title = "The Stagnant Oasis", note = "Test the Dried Seeds", map = 1413, x = 55.61, y = 42.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 877, title = "The Stagnant Oasis", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
					{ t = "accept", quest = 880, title = "Altered Beings", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
				},
			},
			{
				note = "Underwater and along the edges of the water around this area.",
				goals = {
					{ t = "collect", quest = 880, item = 5098, itemName = "Altered Snapjaw Shell", count = 8, oi = 1, map = 1413, x = 55.53, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 880, title = "Altered Beings", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
					{ t = "accept", quest = 1489, title = "Hamuul Runetotem", npc = 3448, npcName = "Tonga Runetotem", map = 1413, x = 52.26, y = 31.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1489, title = "Hamuul Runetotem", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.59, y = 28.56, f = "e" },
					{ t = "accept", quest = 1490, title = "Nara Wildmane", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.59, y = 28.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 1490, title = "Nara Wildmane", npc = 5770, npcName = "Nara Wildmane", map = 1456, x = 75.65, y = 31.6, f = "e" },
					{ t = "accept", quest = 914, title = "Leaders of the Fang", npc = 5770, npcName = "Nara Wildmane", map = 1456, x = 75.65, y = 31.6, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1456, x = 29.89, y = 29.8 },
					{ t = "accept", quest = 962, title = "Serpentbloom", npc = 3419, npcName = "Apothecary Zamah", map = 1456, x = 22.82, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 865, title = "Raptor Horns", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
				},
			},
			{
				note = "They look like purple raptors.",
				goals = {
					{ t = "collect", quest = 865, item = 5055, itemName = "Intact Raptor Horn", count = 5, oi = 1, map = 1413, x = 43.36, y = 15.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 865, title = "Raptor Horns", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
					{ t = "accept", quest = 1491, title = "Smart Drinks", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 959, title = "Trouble at the Docks", npc = 3665, npcName = "Crane Operator Bigglefuzz", map = 1413, x = 63.09, y = 37.61, f = "e" },
				},
			},
			{
				note = "Aim for the stone.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 50.32, y = 35.44 },
					{ t = "goto", text = "Continue up the path", map = 1413, x = 49.17, y = 34.09 },
					{ t = "goto", text = "Follow the path", map = 1413, x = 48.09, y = 32.95 },
					{ t = "goto", text = "Follow the path down", map = 1413, x = 47.28, y = 33.56 },
					{ t = "goto", text = "Jump down here", map = 1413, x = 45.86, y = 35.86 },
					{ t = "goto", text = "Jump down carefully here", map = 1413, x = 45.77, y = 36.16 },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1413, x = 45.85, y = 35.95 },
					{ t = "accept", quest = 1486, title = "Deviate Hides", npc = 5767, npcName = "Nalpak", map = 1413, x = 45.98, y = 35.66, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "accept", quest = 1487, title = "Deviate Eradication", npc = 5768, npcName = "Ebru", map = 1413, x = 46.01, y = 35.74, f = "e" },
				},
			},
			{
				note = "He is stealthed inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1413, x = 45.97, y = 36.33 },
					{ t = "goto", text = "Follow the path", map = 1413, x = 45.91, y = 35.62 },
					{ t = "goto", text = "Continue follow the path", map = 1413, x = 46.26, y = 34.98 },
					{ t = "goto", text = "Follow the path", map = 1413, x = 45.94, y = 34.24 },
					{ t = "collect", quest = 959, item = 5334, itemName = "99-Year-Old Port", oi = 1, map = 1413, x = 45.69, y = 33.6, f = "e" },
				},
			},
			{
				note = "She is the first boss of the dungeon. She can spawn at several locations in the Screaming Gully.",
				goals = {
					{ t = "collect", quest = 914, item = 9739, itemName = "Gem of Anacondra", oi = 2 },
				},
			},
			{
				note = "He is the second boss of the dungeon. Follow the water path west from the Screaming Gully into the Pit of Fangs. Follow the path up and around through the Pit of Fangs.",
				goals = {
					{ t = "collect", quest = 914, item = 9738, itemName = "Gem of Cobrahn", oi = 1 },
				},
			},
			{
				note = "He is the third boss of the dungeon. Leave the Pit of Fangs and reenter the Screaming Gully. Follow the water path east to briefly enter The Wailing Caverns and then the Crag of the Everliving. Continue through the Crag of the Everliving to reach the Winding Chasm. Immediately after reaching the Winding Chasm, follow the right path northeast through the small pool of water. He is back in the northern part of the Winding Chasm.",
				goals = {
					{ t = "collect", quest = 914, item = 9740, itemName = "Gem of Pythas", oi = 3 },
				},
			},
			{
				note = "After killing Lord Pythas in the Winding Chasm, head southeast to enter The Wailing Caverns. Continue south a short distance and head left after reaching an area with lots of small white candles on the ground and a Druid of the Fang. You will now be back in the Winding Chasm, continue straight southeast through this cave section, passing a pool of water on your left. You will reach a fenced off area with two Druid of the Fang guards and an optional boss, Skum. Follow the path to the right of the fence and continue going southwest to reach the Crag of the Everliving. Carefully jump across the gap by the small waterfall and continue along this upper path to reach Lord Serpentis.",
				goals = {
					{ t = "collect", quest = 914, item = 9741, itemName = "Gem of Serpentis", oi = 4 },
				},
			},
			{
				label = "Collect_6_Wailing_Essence",
				along = true,
				note = "They are found throughout the dungeon.",
				goals = {
					{ t = "collect", quest = 1491, item = 6464, itemName = "Wailing Essence", count = 6, oi = 1 },
				},
			},
			{
				label = "Collect_10_Serpentbloom",
				along = true,
				note = "They look like small green, purple and pink plants along the walls inside of the dungeon.",
				goals = {
					{ t = "collect", quest = 962, item = 5339, itemName = "Serpentbloom", count = 10, oi = 1 },
				},
			},
			{
				label = "Collect_20_Deviate_Hide",
				along = true,
				note = "They are found throughout the dungeon.",
				goals = {
					{ t = "collect", quest = 1486, item = 6443, itemName = "Deviate Hide", count = 20, oi = 1 },
				},
			},
			{
				label = "Slay_7_Deviate_Ravager",
				along = true,
				note = "They are found in the Screaming Gully.",
				goals = {
					{ t = "kill", quest = 1487, npc = 3636, target = "Deviate Ravager", count = 7, oi = 1 },
				},
			},
			{
				label = "Slay_7_Deviate_Viper",
				along = true,
				note = "They are found in the Pit of Fangs.",
				goals = {
					{ t = "kill", quest = 1487, npc = 5755, target = "Deviate Viper", count = 7, oi = 2 },
				},
			},
			{
				label = "Slay_7_Deviate_Shambler",
				along = true,
				note = "They are found in the Crag of the Everliving.",
				goals = {
					{ t = "kill", quest = 1487, npc = 5761, target = "Deviate Shambler", count = 7, oi = 3 },
				},
			},
			{
				label = "Slay_7_Deviate_Dreadfang",
				along = true,
				note = "They are found in the Winding Chasm.",
				goals = {
					{ t = "kill", quest = 1487, npc = 5056, target = "Deviate Dreadfang", count = 7, oi = 4 },
				},
			},
			{
				note = "He is standing at the dungeon entrance. This will only be an available option once the previous bosses have been killed. Kill the enemies that spawn and attack and don't let him die. This will be easier if the Screaming Gully is already cleared of enemies. He will spawn at Dreamer's Rock, after several waves of enemies.",
				goals = {
					{ t = "collect", item = 10441, itemName = "Glowing Shard" },
					{ t = "use", item = 10441, itemName = "Glowing Shard" },
					{ t = "accept", quest = 6981, title = "The Glowing Shard", npc = 3654, npcName = "Mutanus the Devourer" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1413, x = 45.85, y = 35.95 },
					{ t = "turnin", quest = 1486, title = "Deviate Hides", npc = 5767, npcName = "Nalpak", map = 1413, x = 45.98, y = 35.66, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "turnin", quest = 1487, title = "Deviate Eradication", npc = 5768, npcName = "Ebru", map = 1413, x = 46.01, y = 35.74, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1491, title = "Smart Drinks", npc = 3446, npcName = "Mebok Mizzyrix", map = 1413, x = 62.37, y = 37.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 959, title = "Trouble at the Docks", npc = 3665, npcName = "Crane Operator Bigglefuzz", map = 1413, x = 63.09, y = 37.61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6981, title = "The Glowing Shard", note = "Speak with Someone in Ratchet About the Glowing Shard", map = 1413, x = 62.98, y = 37.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 50.32, y = 35.44 },
					{ t = "goto", text = "Continue up the path", map = 1413, x = 49.17, y = 34.09 },
					{ t = "turnin", quest = 6981, title = "The Glowing Shard", npc = 8418, npcName = "Falla Sagewind", map = 1413, x = 48.18, y = 32.78, f = "e" },
					{ t = "accept", quest = 3369, title = "In Nightmares", npc = 8418, npcName = "Falla Sagewind", map = 1413, x = 48.18, y = 32.78, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 914, title = "Leaders of the Fang", npc = 5770, npcName = "Nara Wildmane", map = 1456, x = 75.65, y = 31.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3369, title = "In Nightmares", npc = 5769, npcName = "Arch Druid Hamuul Runetotem", map = 1456, x = 78.59, y = 28.56, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1456, x = 29.89, y = 29.8 },
					{ t = "turnin", quest = 962, title = "Serpentbloom", npc = 3419, npcName = "Apothecary Zamah", map = 1456, x = 22.82, y = 20.9, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-shadowfang-keep-quests",
		pack = "guides",
		title = "Shadowfang Keep Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1458,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 18 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1013, title = "The Book of Ur", npc = 2934, npcName = "Keeper Bel'dugur", map = 1458, x = 53.72, y = 54.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1014, title = "Arugal Must Die", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.79, f = "e" },
				},
			},
			{
				note = "Inside the crypt.",
				goals = {
					{ t = "goto", text = "Enter the crypt", map = 1421, x = 43.09, y = 41.38 },
					{ t = "accept", quest = 1098, title = "Deathstalkers in Shadowfang", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.42, y = 40.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1013, title = "The Book of Ur", note = "Enter the Shadowfang Keep Dungeon with Your Group" },
				},
			},
			{
				note = "The first boss of the dungeon. Open the cell door and speak with Deathstalker Adamant. Follow him and once he opens the door, jump down to the right of the stairs.",
				goals = {
					{ t = "turnin", quest = 1098, title = "Deathstalkers in Shadowfang", npc = 4444, npcName = "Deathstalker Vincent" },
				},
			},
			{
				note = "Follow the path through the dungeon, defeat Baron Silverlaine, and then head upstairs. Continue following the path to defeat Commander Springvale then go downstairs and outside. Continue along the outside path to reenter the building and reach Odo the Blindwatcher and eventually Fenrus the Devourer. It looks like a blue blook on a bookshelf on the left side of the room where Fenrus the Devourer is.",
				goals = {
					{ t = "collect", quest = 1013, item = 6283, itemName = "The Book of Ur", oi = 1 },
				},
			},
			{
				note = "He is the last boss of the dungeon.",
				goals = {
					{ t = "collect", quest = 1014, item = 5442, itemName = "Head of Arugal", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1013, title = "The Book of Ur", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1014, title = "Arugal Must Die", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1013, title = "The Book of Ur", npc = 2934, npcName = "Keeper Bel'dugur", map = 1458, x = 53.72, y = 54.45, f = "e" },
				},
			},
		},
	})
end

