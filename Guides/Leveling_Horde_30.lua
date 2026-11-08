-- TuWoW_Leveling — Guides/Leveling_Horde_30.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-outland-60-62",
		pack = "guides",
		title = "Outland (60-62) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-outland-60-62-part-2",
		author = "TuWoW & Zygor",
		minLevel = 60,
		maxLevel = 62,
		zone = 1419,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 9407, title = "Through the Dark Portal", npc = 19254, npcName = "Warlord Dar'toon", map = 1419, x = 58.1, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9407, title = "Through the Dark Portal", npc = 19253, npcName = "Lieutenant General Orion", map = 1944, x = 87.4, y = 49.8, f = "e" },
					{ t = "accept", quest = 10120, title = "Arrival in Outland", npc = 19253, npcName = "Lieutenant General Orion", map = 1944, x = 87.4, y = 49.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10120, title = "Arrival in Outland", npc = 18930, npcName = "Vlagga Freyfeather", map = 1944, x = 87.3, y = 48.1, f = "e" },
					{ t = "accept", quest = 10289, title = "Journey to Thrallmar", npc = 18930, npcName = "Vlagga Freyfeather", map = 1944, x = 87.3, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10289, title = "Journey to Thrallmar", npc = 19255, npcName = "General Krakork", map = 1944, x = 55.9, y = 36.8, f = "e" },
					{ t = "accept", quest = 10291, title = "Report to Nazgrel", npc = 19255, npcName = "General Krakork", map = 1944, x = 55.9, y = 36.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10291, title = "Report to Nazgrel", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
					{ t = "accept", quest = 10121, title = "Eradicate the Burning Legion", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10450, title = "Bonechewer Blood", npc = 21256, npcName = "Vurtok Axebreaker", map = 1944, x = 55.1, y = 36.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10086, title = "I Work... For the Horde!", npc = 21283, npcName = "Megzeg Nukklebust", map = 1944, x = 55.2, y = 38.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Thrallmar", text = "Thrallmar", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10121, title = "Eradicate the Burning Legion", npc = 19256, npcName = "Sergeant Shatterskull", map = 1944, x = 58.0, y = 41.3, f = "e" },
					{ t = "accept", quest = 10123, title = "Felspark Ravine", npc = 19256, npcName = "Sergeant Shatterskull", map = 1944, x = 58.0, y = 41.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10123, target = "Dreadcaller", count = 1, oi = 1, map = 1944, x = 60.8, y = 35.9, f = "e" },
					{ t = "kill", quest = 10123, target = "Flamewaker Imp", count = 4, oi = 2, map = 1944, x = 60.8, y = 35.9, f = "e" },
					{ t = "kill", quest = 10123, target = "Infernal Warbringer", count = 6, oi = 3, map = 1944, x = 60.8, y = 35.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10123, title = "Felspark Ravine", npc = 19256, npcName = "Sergeant Shatterskull", map = 1944, x = 58.0, y = 41.3, f = "e" },
					{ t = "accept", quest = 10124, title = "Forward Base: Reaver's Fall", npc = 19256, npcName = "Sergeant Shatterskull", map = 1944, x = 58.0, y = 41.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10124, title = "Forward Base: Reaver's Fall", npc = 19273, npcName = "Forward Commander To'arch", map = 1944, x = 65.9, y = 43.6, f = "e" },
					{ t = "accept", quest = 10208, title = "Disrupt Their Reinforcements", npc = 19273, npcName = "Forward Commander To'arch", map = 1944, x = 65.9, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10208, item = 28513, itemName = "Demonic Rune Stone", count = 4, map = 1944, x = 70.8, y = 45.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10208, item = 28513, itemName = "Demonic Rune Stone", count = 4, map = 1944, x = 74.0, y = 38.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10208, title = "Disrupt Their Reinforcements", npc = 19273, npcName = "Forward Commander To'arch", map = 1944, x = 65.9, y = 43.6, f = "e" },
					{ t = "accept", quest = 10129, title = "Mission: Gateways Murketh and Shaadraz", npc = 19273, npcName = "Forward Commander To'arch", map = 1944, x = 65.9, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 19401, npcName = "Wing Commander Brack", map = 1944, x = 66.1, y = 43.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10129, title = "Mission: Gateways Murketh and Shaadraz", npc = 19273, npcName = "Forward Commander To'arch", map = 1944, x = 65.9, y = 43.6, f = "e" },
					{ t = "accept", quest = 10162, title = "Mission: The Abyssal Shelf", npc = 19273, npcName = "Forward Commander To'arch", map = 1944, x = 65.9, y = 43.6, f = "e" },
					{ t = "accept", quest = 10388, title = "Return to Thrallmar", npc = 19273, npcName = "Forward Commander To'arch", map = 1944, x = 65.9, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10162, target = "Mo'arg Overseer", count = 5, oi = 2, map = 1944, x = 66.1, y = 43.7, f = "e" },
					{ t = "kill", quest = 10162, target = "Gan'arg Peon", count = 20, oi = 1, map = 1944, x = 66.1, y = 43.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10162, title = "Mission: The Abyssal Shelf", npc = 19273, npcName = "Forward Commander To'arch", map = 1944, x = 65.9, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9498, title = "Falcon Watch", npc = 16577, npcName = "Martik Tor'seldori", map = 1944, x = 55.2, y = 39.1, f = "e", only = { races = { "BloodElf" } } },
					{ t = "accept", quest = 9499, title = "Falcon Watch", npc = 16577, npcName = "Martik Tor'seldori", map = 1944, x = 55.2, y = 39.1, f = "e", only = { races = { "BloodElf" } } },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10388, title = "Return to Thrallmar", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
					{ t = "accept", quest = 10390, title = "Forge Camp: Mageddon", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
					{ t = "accept", quest = 9400, title = "The Assassin", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10390, target = "Gan'arg Servant", count = 10, oi = 1, map = 1944, x = 64.4, y = 31.9, f = "e" },
					{ t = "collect", quest = 10390, itemName = "Head of Forgefiend Razorsaw", count = 1, oi = 2, map = 1944, x = 64.4, y = 31.9, f = "e" },
					{ t = "collect", itemName = "the Burning Legion Missive", count = 1, map = 1944, x = 64.4, y = 31.9, f = "e" },
					{ t = "accept", quest = 10393, title = "Vile Plans", map = 1944, x = 64.4, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10390, title = "Forge Camp: Mageddon", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
					{ t = "accept", quest = 10391, title = "Cannons of Rage", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10393, title = "Vile Plans", npc = 21175, npcName = "Magister Bloodhawk", map = 1944, x = 55.1, y = 36.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10391, target = "Fel Cannon MKI", count = 3, oi = 1, map = 1944, x = 57.5, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10391, title = "Cannons of Rage", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
					{ t = "accept", quest = 10392, title = "Doorway to the Abyss", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10392, target = "Warbringer Arix'Amal", count = 1, oi = 1, map = 1944, x = 52.8, y = 26.4, f = "e" },
					{ t = "collect", quest = 10392, itemName = "Burning Legion Gate Key", count = 1, oi = 3, map = 1944, x = 52.8, y = 26.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 53.1, y = 27.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10392, title = "Doorway to the Abyss", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10389, title = "The Agony and the Darkness", npc = 21175, npcName = "Magister Bloodhawk", map = 1944, x = 55.1, y = 36.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10086, itemName = "Salvaged Metal", count = 8, oi = 1, map = 1944, x = 56.6, y = 47.1, f = "e" },
					{ t = "collect", quest = 10086, itemName = "Salvaged Wood", count = 8, oi = 2, map = 1944, x = 56.6, y = 47.1, f = "e" },
					{ t = "collect", quest = 10450, itemName = "Bonechewer Blood", count = 12, oi = 1, map = 1944, x = 56.6, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10086, title = "I Work... For the Horde!", npc = 21283, npcName = "Megzeg Nukklebust", map = 1944, x = 55.2, y = 38.8, f = "e" },
					{ t = "accept", quest = 10087, title = "Burn It Up... For the Horde!", npc = 21283, npcName = "Megzeg Nukklebust", map = 1944, x = 55.2, y = 38.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10450, title = "Bonechewer Blood", npc = 21256, npcName = "Vurtok Axebreaker", map = 1944, x = 55.1, y = 36.4, f = "e" },
					{ t = "accept", quest = 10449, title = "Apothecary Zelana", npc = 21256, npcName = "Vurtok Axebreaker", map = 1944, x = 55.1, y = 36.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10449, title = "Apothecary Zelana", npc = 21257, npcName = "Apothecary Zelana", map = 1944, x = 66.2, y = 42.0, f = "e" },
					{ t = "accept", quest = 10242, title = "Spinebreaker Post", npc = 21257, npcName = "Apothecary Zelana", map = 1944, x = 66.2, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 19401, npcName = "Wing Commander Brack", map = 1944, x = 66.1, y = 43.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Spinebreaker Post", text = "Spinebreaker Post", map = 1944, x = 61.7, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10278, title = "The Warp Rifts", npc = 19683, npcName = "Ogath the Mad", map = 1944, x = 61.9, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10220, title = "Make Them Listen", npc = 19682, npcName = "Emissary Mordiba", map = 1944, x = 61.8, y = 81.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10242, title = "Spinebreaker Post", npc = 21279, npcName = "Apothecary Albreck", map = 1944, x = 61.1, y = 81.8, f = "e" },
					{ t = "accept", quest = 10538, title = "Boiling Blood", npc = 21279, npcName = "Apothecary Albreck", map = 1944, x = 61.1, y = 81.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9345, title = "Preparing the Salve", npc = 16858, npcName = "Grelag", map = 1944, x = 60.9, y = 81.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10809, title = "Wanted: Worg Master Kruush", map = 1944, x = 61.2, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 59.5, y = 66.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10220, target = "Unyielding Footman", count = 12, oi = 1, map = 1944, x = 58.0, y = 79.0, f = "e" },
					{ t = "kill", quest = 10220, target = "Unyielding Knight", count = 8, oi = 2, map = 1944, x = 58.0, y = 79.0, f = "e" },
					{ t = "kill", quest = 10220, target = "Unyielding Sorcerer", count = 6, oi = 3, map = 1944, x = 58.0, y = 79.0, f = "e" },
					{ t = "accept", quest = 10229, title = "Decipher the Tome", map = 1944, x = 58.0, y = 79.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9345, title = "Preparing the Salve", npc = 16858, npcName = "Grelag", map = 1944, x = 60.9, y = 81.7, f = "e" },
					{ t = "accept", quest = 10213, title = "Investigate the Crash", npc = 16858, npcName = "Grelag", map = 1944, x = 60.9, y = 81.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10229, title = "Decipher the Tome", npc = 19736, npcName = "Althen the Historian", map = 1944, x = 61.8, y = 81.7, f = "e" },
					{ t = "accept", quest = 10230, title = "The Battle Horn", npc = 19736, npcName = "Althen the Historian", map = 1944, x = 61.8, y = 81.7, f = "e" },
					{ t = "turnin", quest = 10220, title = "Make Them Listen", npc = 19682, npcName = "Emissary Mordiba", map = 1944, x = 61.8, y = 81.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10230, itemName = "Unyielding Battle Horn", count = 1, oi = 1, map = 1944, x = 54.7, y = 83.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10230, title = "The Battle Horn", npc = 19736, npcName = "Althen the Historian", map = 1944, x = 61.8, y = 81.7, f = "e" },
					{ t = "accept", quest = 10250, title = "Bloody Vengeance", npc = 19736, npcName = "Althen the Historian", map = 1944, x = 61.8, y = 81.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10250, target = "Urtrak", count = 1, oi = 1, map = 1944, x = 63.5, y = 77.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10250, title = "Bloody Vengeance", npc = 19736, npcName = "Althen the Historian", map = 1944, x = 61.8, y = 81.7, f = "e" },
					{ t = "accept", quest = 10258, title = "Honor the Fallen", npc = 19736, npcName = "Althen the Historian", map = 1944, x = 61.8, y = 81.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10258, title = "Honor the Fallen", npc = 19937, npcName = "Commander Hogarth", map = 1944, x = 56.9, y = 77.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10538, item = 30425, itemName = "Bleeding Hollow Blood", count = 12, map = 1944, x = 64.6, y = 72.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10538, itemName = "Boiled Blood", count = 12, oi = 1, map = 1944, x = 65.2, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10809, itemName = "Worg Master's Head", count = 1, oi = 1, map = 1944, x = 68.4, y = 73.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10809, title = "Wanted: Worg Master Kruush", npc = 22107, npcName = "Captain Darkhowl", map = 1944, x = 61.2, y = 81.3, f = "e" },
					{ t = "accept", quest = 10792, title = "Zeth'Gor Must Burn!", npc = 22107, npcName = "Captain Darkhowl", map = 1944, x = 61.2, y = 81.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10538, title = "Boiling Blood", npc = 21279, npcName = "Apothecary Albreck", map = 1944, x = 61.1, y = 81.8, f = "e" },
					{ t = "accept", quest = 10835, title = "Apothecary Antonivich", npc = 21279, npcName = "Apothecary Albreck", map = 1944, x = 61.1, y = 81.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10813, title = "The Eyes of Grillok", npc = 22231, npcName = "Zezzak", map = 1944, x = 61.7, y = 81.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 66.4, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10813, title = "The Eyes of Grillok", npc = 22231, npcName = "Zezzak", map = 1944, x = 61.7, y = 81.9, f = "e" },
					{ t = "accept", quest = 10834, title = "Grillok \"Darkeye\"", npc = 22231, npcName = "Zezzak", map = 1944, x = 61.7, y = 81.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10834, itemName = "Grillok's Eyepatch", count = 1, oi = 1, map = 1944, x = 66.6, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Bleeding Hollow Peons", count = 4, map = 1944, x = 68.7, y = 69.8, f = "e" },
					{ t = "collect", quest = 10792, item = 31347, itemName = "Bleeding Hollow Torch", count = 4, map = 1944, x = 68.7, y = 69.8, f = "e" },
					{ t = "collect", quest = 10792, item = 31346, itemName = "Burning Bleeding Hollow Torch", count = 4, map = 1944, x = 68.7, y = 69.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 69.5, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 68.6, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 67.6, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 68.8, y = 76.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10792, title = "Zeth'Gor Must Burn!", npc = 22107, npcName = "Captain Darkhowl", map = 1944, x = 61.2, y = 81.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10834, title = "Grillok \"Darkeye\"", npc = 22231, npcName = "Zezzak", map = 1944, x = 61.7, y = 81.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 61, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10213, title = "Investigate the Crash", npc = 19367, npcName = "\"Screaming\" Screed Luckheed", map = 1944, x = 49.2, y = 74.8, f = "e" },
					{ t = "accept", quest = 10161, title = "In Case of Emergency...", npc = 19367, npcName = "\"Screaming\" Screed Luckheed", map = 1944, x = 49.2, y = 74.8, f = "e" },
					{ t = "accept", quest = 9349, title = "Ravager Egg Roundup", npc = 19344, npcName = "Legassi", map = 1944, x = 49.2, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10161, itemName = "Zeppelin Debris", count = 30, oi = 1, map = 1944, x = 58.1, y = 71.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10161, title = "In Case of Emergency...", npc = 19367, npcName = "\"Screaming\" Screed Luckheed", map = 1944, x = 49.2, y = 74.8, f = "e" },
					{ t = "accept", quest = 9351, title = "Voidwalkers Gone Wild", npc = 19367, npcName = "\"Screaming\" Screed Luckheed", map = 1944, x = 49.2, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "voidwalkers", count = 1, map = 1944, x = 49.5, y = 81.8, f = "e" },
					{ t = "collect", quest = 9351, itemName = "Condensed Voidwalker Essence", count = 10, oi = 1, map = 1944, x = 49.5, y = 81.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Unstable Voidwalkers", count = 1, map = 1944, x = 46.8, y = 83.1, f = "e" },
					{ t = "collect", quest = 10278, itemName = "Warp Nether", count = 3, oi = 1, map = 1944, x = 46.8, y = 83.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Razorfury Ravagers", count = 1, map = 1944, x = 41.2, y = 84.4, f = "e" },
					{ t = "collect", quest = 9349, itemName = "Ravager Egg", count = 12, oi = 1, map = 1944, x = 41.2, y = 84.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9351, title = "Voidwalkers Gone Wild", npc = 19367, npcName = "\"Screaming\" Screed Luckheed", map = 1944, x = 49.2, y = 74.8, f = "e" },
					{ t = "turnin", quest = 9349, title = "Ravager Egg Roundup", npc = 19344, npcName = "Legassi", map = 1944, x = 49.2, y = 74.8, f = "e" },
					{ t = "accept", quest = 9361, title = "Helboar, the Other White Meat", npc = 19344, npcName = "Legassi", map = 1944, x = 49.2, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Helboars", count = 1, map = 1944, x = 50.2, y = 74.8, f = "e" },
					{ t = "collect", quest = 9361, item = 23270, itemName = "Tainted Helboar Meat", count = 1, map = 1944, x = 50.2, y = 74.8, f = "e" },
					{ t = "collect", quest = 9361, itemName = "Purified Helboar Meat", count = 8, oi = 1, map = 1944, x = 50.2, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9373, title = "Missing Missive", map = 1944, x = 47.8, y = 65.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9361, title = "Helboar, the Other White Meat", npc = 19344, npcName = "Legassi", map = 1944, x = 49.2, y = 74.8, f = "e" },
					{ t = "accept", quest = 9356, title = "Smooth as Butter", npc = 19344, npcName = "Legassi", map = 1944, x = 49.2, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "vultures", count = 1, map = 1944, x = 62.6, y = 67.3, f = "e" },
					{ t = "collect", quest = 9356, itemName = "Plump Buzzard Wing", count = 12, oi = 1, map = 1944, x = 62.6, y = 67.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9356, title = "Smooth as Butter", npc = 19344, npcName = "Legassi", map = 1944, x = 49.2, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10278, title = "The Warp Rifts", npc = 19683, npcName = "Ogath the Mad", map = 1944, x = 61.9, y = 81.5, f = "e" },
					{ t = "accept", quest = 10294, title = "Void Ridge", npc = 19683, npcName = "Ogath the Mad", map = 1944, x = 61.9, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 71.3, y = 67.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10294, itemName = "Void Ridge Soul Shard", count = 40, oi = 1, map = 1944, x = 75.4, y = 66.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10294, title = "Void Ridge", npc = 19683, npcName = "Ogath the Mad", map = 1944, x = 61.9, y = 81.5, f = "e" },
					{ t = "accept", quest = 10295, title = "From the Abyss", npc = 19683, npcName = "Ogath the Mad", map = 1944, x = 61.9, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 71.3, y = 67.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10295, itemName = "Galaxis Soul Shard", count = 1, oi = 1, map = 1944, x = 81.1, y = 78.9, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-outland-60-62-part-2",
		pack = "guides",
		title = "Outland (60-62) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 61,
		maxLevel = 62,
		zone = 1419,
		version = 1,
		steps = {
			{
				note = "Hearth to Thrallmar|goto Hellfire Peninsula,56.7,37.5,5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10835, title = "Apothecary Antonivich", npc = 16588, npcName = "Apothecary Antonivich", map = 1944, x = 52.3, y = 36.5, f = "e" },
					{ t = "accept", quest = 10864, title = "A Burden of Souls", npc = 16588, npcName = "Apothecary Antonivich", map = 1944, x = 52.3, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10236, title = "Outland Sucks!", npc = 16915, npcName = "Foreman Razelcraz", map = 1944, x = 51.4, y = 30.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10236, itemName = "Shredder Spare Parts", count = 6, oi = 1, map = 1944, x = 48.9, y = 35.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Shattered Hand Orcs", count = 1, map = 1944, x = 45.9, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10236, title = "Outland Sucks!", npc = 16915, npcName = "Foreman Razelcraz", map = 1944, x = 51.4, y = 30.6, f = "e" },
					{ t = "accept", quest = 10238, title = "How to Serve Goblins", npc = 16915, npcName = "Foreman Razelcraz", map = 1944, x = 51.4, y = 30.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10864, title = "A Burden of Souls", npc = 16588, npcName = "Apothecary Antonivich", map = 1944, x = 52.3, y = 36.5, f = "e" },
					{ t = "accept", quest = 10838, title = "The Demoniac Scryer", npc = 16588, npcName = "Apothecary Antonivich", map = 1944, x = 52.3, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 45.1, y = 41.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 46.5, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 47.5, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10838, itemName = "Demoniac Scryer Reading", count = 1, oi = 1, map = 1944, x = 45.5, y = 47.2, f = "e" },
				},
			},
			{
				note = "Hearth to Thrallmar|goto Hellfire Peninsula,54.7,38.3,5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10838, title = "The Demoniac Scryer", npc = 16588, npcName = "Apothecary Antonivich", map = 1944, x = 52.3, y = 36.5, f = "e" },
					{ t = "accept", quest = 10875, title = "Report to Nazgrel", npc = 16588, npcName = "Apothecary Antonivich", map = 1944, x = 52.3, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10875, title = "Report to Nazgrel", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10238, title = "How to Serve Goblins", npc = 16915, npcName = "Foreman Razelcraz", map = 1944, x = 51.4, y = 30.6, f = "e" },
					{ t = "accept", quest = 10629, title = "Shizz Work", npc = 16915, npcName = "Foreman Razelcraz", map = 1944, x = 51.4, y = 30.6, f = "e" },
				},
			},
			{
				note = "Use the Felhound Whistle while standing next to Forman Razelcraz|use Felhound Whistle##30803",
				goals = {
					{ t = "use", item = 30803, itemName = "Felhound Whistle", map = 1944, x = 51.4, y = 30.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10629, itemName = "Shredder Keys", count = 1, oi = 1, map = 1944, x = 49.9, y = 29.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10629, title = "Shizz Work", npc = 16915, npcName = "Foreman Razelcraz", map = 1944, x = 51.4, y = 30.6, f = "e" },
					{ t = "accept", quest = 10630, title = "Beneath Thrallmar", npc = 16915, npcName = "Foreman Razelcraz", map = 1944, x = 51.4, y = 30.6, f = "e" },
				},
			},
			{
				note = "Go to inside the mine to 54.4,31.4",
				goals = {
					{ t = "kill", quest = 10630, target = "Urga'zz", count = 1, oi = 1, map = 1944, x = 54.4, y = 31.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10630, title = "Beneath Thrallmar", npc = 16915, npcName = "Foreman Razelcraz", map = 1944, x = 51.4, y = 30.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 61.1, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 55.0, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10295, title = "From the Abyss", npc = 19683, npcName = "Ogath the Mad", map = 1944, x = 61.9, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10087, title = "Burn It Up... For the Horde!", npc = 21283, npcName = "Megzeg Nukklebust", map = 1944, x = 55.2, y = 38.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9400, title = "The Assassin", map = 1944, x = 33.6, y = 43.5, f = "e" },
					{ t = "accept", quest = 9401, title = "A Strange Weapon", map = 1944, x = 33.6, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9374, title = "Arelion's Journal", npc = 16793, npcName = "Magistrix Carinda", map = 1944, x = 26.4, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9387, title = "Source of the Corruption", npc = 16794, npcName = "Apothecary Azethen", map = 1944, x = 26.8, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9366, title = "In Need of Felblood", npc = 16791, npcName = "Ryathen the Somber", map = 1944, x = 27.0, y = 59.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9396, title = "Magic of the Arakkoa", npc = 16792, npcName = "Arcanist Calesthris Dawnstar", map = 1944, x = 27.1, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9381, title = "Trueflight Arrows", npc = 16790, npcName = "Falconer Drenna Riverwind", map = 1944, x = 27.7, y = 60.3, f = "e" },
					{ t = "accept", quest = 9397, title = "Birds of a Feather", npc = 16790, npcName = "Falconer Drenna Riverwind", map = 1944, x = 27.7, y = 60.3, f = "e" },
					{ t = "accept", quest = 10442, title = "Helping the Cenarion Post", npc = 16790, npcName = "Falconer Drenna Riverwind", map = 1944, x = 27.7, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Falcon Watch", text = "Falcon Watch", map = 1944, x = 27.8, y = 60.0, f = "e" },
				},
			},
			{
				note = "Go inside the building next to the Flight Path",
				goals = {
					{ t = "goto", map = 1944, x = 28.5, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9498, title = "Falcon Watch", npc = 16789, npcName = "Ranger Captain Venn'ren", map = 1944, x = 28.5, y = 60.2, f = "e", only = { races = { "BloodElf" } } },
					{ t = "turnin", quest = 9499, title = "Falcon Watch", npc = 16789, npcName = "Ranger Captain Venn'ren", map = 1944, x = 28.5, y = 60.2, f = "e", only = { races = { "BloodElf" } } },
					{ t = "accept", quest = 9340, title = "The Great Fissure", npc = 16789, npcName = "Ranger Captain Venn'ren", map = 1944, x = 28.5, y = 60.2, f = "e" },
					{ t = "accept", quest = 10103, title = "Report to Zurai", npc = 16789, npcName = "Ranger Captain Venn'ren", map = 1944, x = 28.5, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 62, f = "e" },
				},
			},
		},
	})
end

