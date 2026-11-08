-- TuWoW_Leveling — Guides/Leveling_Horde_57.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-78-80-part-2",
		pack = "guides",
		title = "Northrend (78-80) (Parte 2/4)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-78-80-part-3",
		author = "TuWoW & Zygor",
		minLevel = 78,
		maxLevel = 80,
		zone = 119,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "talk", npc = 28315, npcName = "Shaman Vekjik", map = 119, x = 51.3, y = 64.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12654, title = "The Part-time Hunter", npc = 28568, npcName = "Tamara Wobblesprocket", map = 119, x = 50.5, y = 62.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12573, title = "Making Peace", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
					{ t = "accept", quest = 12574, title = "Back So Soon?", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12574, title = "Back So Soon?", npc = 28114, npcName = "Mistcaller Soo-gan", map = 119, x = 42.1, y = 38.6, f = "e" },
					{ t = "accept", quest = 12575, title = "The Lost Mistwhisper Treasure", npc = 28114, npcName = "Mistcaller Soo-gan", map = 119, x = 42.1, y = 38.6, f = "e" },
					{ t = "accept", quest = 12576, title = "Forced Hand", npc = 28114, npcName = "Mistcaller Soo-gan", map = 119, x = 42.1, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12683, title = "Burning to Help", npc = 28771, npcName = "Colvin Norrington", map = 119, x = 42.1, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12576, target = "Frenzyheart Spearbearer", count = 8, oi = 1, map = 119, x = 40.4, y = 26.4, f = "e" },
					{ t = "kill", quest = 12576, target = "Frenzyheart Scavenger", count = 6, oi = 2, map = 119, x = 40.4, y = 26.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12575, target = "Warlord Tartek", count = 1, oi = 1, map = 119, x = 41.3, y = 19.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12575, itemName = "Mistwhisper Treasure", count = 1, oi = 2, map = 119, x = 41.6, y = 19.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12683, target = "Bittertide Hydra", count = 5, oi = 2, map = 119, x = 39.7, y = 38.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12575, title = "The Lost Mistwhisper Treasure", npc = 28114, npcName = "Mistcaller Soo-gan", map = 119, x = 42.1, y = 38.6, f = "e" },
					{ t = "turnin", quest = 12576, title = "Forced Hand", npc = 28114, npcName = "Mistcaller Soo-gan", map = 119, x = 42.1, y = 38.6, f = "e" },
					{ t = "accept", quest = 12577, title = "Home Time!", npc = 28114, npcName = "Mistcaller Soo-gan", map = 119, x = 42.1, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12683, title = "Burning to Help", npc = 28771, npcName = "Colvin Norrington", map = 119, x = 42.1, y = 28.7, f = "e" },
				},
			},
			{
				note = "Hearth to Nesingwary Base Camp,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 119, x = 26.9, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12569, title = "Crocolisk Mastery: The Ambush", npc = 28032, npcName = "Debaar", map = 119, x = 27.2, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12595, title = "In Search of Bigger Game", npc = 27986, npcName = "Hemet Nesingwary", map = 119, x = 27.1, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12595, title = "In Search of Bigger Game", npc = 28376, npcName = "Dorian Drakestalker", map = 119, x = 42.3, y = 28.7, f = "e" },
					{ t = "accept", quest = 12603, title = "Sharpening Your Talons", npc = 28376, npcName = "Dorian Drakestalker", map = 119, x = 42.3, y = 28.7, f = "e" },
					{ t = "accept", quest = 12605, title = "Securing the Bait", npc = 28376, npcName = "Dorian Drakestalker", map = 119, x = 42.3, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12603, target = "Primordial Drake", count = 6, oi = 1, map = 119, x = 44.7, y = 27.4, f = "e" },
					{ t = "collect", quest = 12605, itemName = "Primordial Hatchling", count = 6, oi = 1, map = 119, x = 44.7, y = 27.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12603, title = "Sharpening Your Talons", npc = 28376, npcName = "Dorian Drakestalker", map = 119, x = 42.3, y = 28.7, f = "e" },
					{ t = "turnin", quest = 12605, title = "Securing the Bait", npc = 28376, npcName = "Dorian Drakestalker", map = 119, x = 42.3, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12681, title = "Reagent Agent", npc = 28771, npcName = "Colvin Norrginton", map = 119, x = 42.1, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12607, title = "A Mammoth Undertaking", npc = 28374, npcName = "Zootfizzle", map = 119, x = 42.1, y = 28.9, f = "e" },
					{ t = "accept", quest = 12658, title = "My Pet Roc", npc = 28374, npcName = "Zootfizzle", map = 119, x = 42.1, y = 28.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 39.3, y = 27.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12607, title = "A Mammoth Undertaking", npc = 28374, npcName = "Zootfizzle", map = 119, x = 42.1, y = 28.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Goretalon Rocs", count = 1, map = 119, x = 54.5, y = 27.9, f = "e" },
					{ t = "collect", quest = 12681, itemName = "Twisted Roc Talon", count = 5, oi = 1, map = 119, x = 54.5, y = 27.9, f = "e" },
					{ t = "collect", quest = 12658, itemName = "Roc Egg", count = 7, oi = 1, map = 119, x = 54.5, y = 27.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12681, title = "Reagent Agent", npc = 28771, npcName = "Colvin Norrington", map = 119, x = 42.1, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12658, title = "My Pet Roc", npc = 28374, npcName = "Zootfizzle", map = 119, x = 42.1, y = 28.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12577, title = "Home Time!", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
					{ t = "accept", quest = 12578, title = "The Angry Gorloc", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12803, title = "Force of Nature", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
					{ t = "accept", quest = 12561, title = "An Issue of Trust", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12561, target = "Blighted Corpse", count = 6, oi = 1, map = 119, x = 67.3, y = 51.4, f = "e" },
					{ t = "kill", quest = 12561, target = "Bonescythe Ravager", count = 10, oi = 2, map = 119, x = 67.3, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12561, title = "An Issue of Trust", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
					{ t = "accept", quest = 12611, title = "Returned Sevenfold", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12611, target = "Thalgran Blightbringer", count = 1, oi = 1, map = 119, x = 66.5, y = 44.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12611, title = "Returned Sevenfold", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
					{ t = "accept", quest = 12612, title = "The Fallen Pillar", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
					{ t = "accept", quest = 12805, title = "Salvaging Life's Strength", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12612, title = "The Fallen Pillar", map = 119, x = 65.1, y = 60.3, f = "e" },
					{ t = "accept", quest = 12608, title = "Cultist Incursion", map = 119, x = 65.1, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Lifeblood Elementals", count = 1, map = 119, x = 69.7, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 75.3, y = 54.1, f = "e" },
				},
			},
			{
				note = "Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624",
				goals = {
					{ t = "use", item = 38624, itemName = "Moodle's Stress Ball", f = "e" },
					{ t = "turnin", quest = 12578, title = "The Angry Gorloc", npc = 28122, npcName = "Moodle", f = "e" },
					{ t = "accept", quest = 12580, title = "The Mosswalker Savior", npc = 28122, npcName = "Moodle", f = "e" },
					{ t = "accept", quest = 12579, title = "Lifeblood of the Mosswalker Shrine", npc = 28122, npcName = "Moodle", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 28113, npcName = "Mosswalker Victim", map = 119, x = 75.4, y = 52.4, f = "e" },
				},
			},
			{
				note = "Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624",
				goals = {
					{ t = "use", item = 38624, itemName = "Moodle's Stress Ball", f = "e" },
					{ t = "turnin", quest = 12580, title = "The Mosswalker Savior", npc = 28122, npcName = "Moodle", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12579, itemName = "Lifeblood Shard", count = 10, oi = 1, map = 119, x = 68.9, y = 54.6, f = "e" },
				},
			},
			{
				note = "Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624",
				goals = {
					{ t = "use", item = 38624, itemName = "Moodle's Stress Ball", f = "e" },
					{ t = "turnin", quest = 12579, title = "Lifeblood of the Mosswalker Shrine", npc = 28122, npcName = "Moodle", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12608, title = "Cultist Incursion", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
					{ t = "turnin", quest = 12805, title = "Salvaging Life's Strength", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
					{ t = "accept", quest = 12617, title = "Exterminate the Intruders", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
					{ t = "accept", quest = 12660, title = "Weapons of Destruction", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12617, target = "Cultist Infiltrator", count = 8, oi = 1, map = 119, x = 57.5, y = 41.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12617, title = "Exterminate the Intruders", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
					{ t = "turnin", quest = 12660, title = "Weapons of Destruction", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
					{ t = "accept", quest = 12620, title = "The Lifewarden's Wrath", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 50.1, y = 37.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12620, title = "The Lifewarden's Wrath", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
					{ t = "accept", quest = 12621, title = "Freya's Pact", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12621, itemName = "Freya's Pact", count = 1, oi = 1, map = 119, x = 64.5, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12621, title = "Freya's Pact", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
					{ t = "accept", quest = 12559, title = "Powering the Waygate - The Maker's Perch", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
				},
			},
			{
				note = "Hearth to Nesingwary Base Camp,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 119, x = 26.9, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 28.4, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 26.2, y = 35.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12559, title = "Powering the Waygate - The Maker's Perch", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
					{ t = "accept", quest = 12613, title = "Powering the Waygate - The Maker's Overlook", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12691, title = "A Timeworn Coffer", map = 119, x = 80.4, y = 55.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 89.1, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Sholazar Guardians", count = 1, map = 119, x = 80.3, y = 54.9, f = "e" },
					{ t = "collect", quest = 12691, itemName = "Huge Stone Key", count = 1, oi = 1, map = 119, x = 80.3, y = 54.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12691, title = "A Timeworn Coffer", map = 119, x = 80.4, y = 55.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12613, title = "Powering the Waygate - The Maker's Overlook", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
					{ t = "accept", quest = 12548, title = "The Etymidian", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 40.3, y = 82.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12548, title = "The Etymidian", npc = 28092, npcName = "The Etymidian", map = 1449, x = 47.4, y = 9.2, f = "e" },
					{ t = "accept", quest = 12547, title = "The Activation Rune", npc = 28092, npcName = "The Etymidian", map = 1449, x = 47.4, y = 9.2, f = "e" },
				},
			},
			{
				note = "Go up the steps and into the tunnel to 48.2,2.5",
				goals = {
					{ t = "collect", quest = 12547, itemName = "Omega Rune", count = 1, oi = 1, map = 1449, x = 48.2, y = 2.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12547, title = "The Activation Rune", npc = 28092, npcName = "The Etymidian", map = 1449, x = 47.4, y = 9.2, f = "e" },
					{ t = "accept", quest = 12797, title = "Back Through the Waygate", npc = 28092, npcName = "The Etymidian", map = 1449, x = 47.4, y = 9.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 50.5, y = 7.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12797, title = "Back Through the Waygate", npc = 27801, npcName = "Avatar of Freya", map = 119, x = 64.5, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 79, f = "e" },
				},
			},
			{
				note = "Hearth to Nesingwary Base Camp,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 119, x = 26.9, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 125, x = 35.0, y = 45.3, f = "e" },
				},
			},
			{
				note = "Go into the sewer to 30.9,50.2",
				goals = {
					{ t = "accept", quest = 12853, title = "Luxurious Getaway!", npc = 30490, npcName = "Rin Duoctane", map = 125, x = 30.9, y = 50.2, f = "e" },
				},
			},
			{
				note = "Go back up to the top level of the city to 56.3,46.8",
				goals = {
					{ t = "goto", map = 125, x = 56.3, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12853, title = "Luxurious Getaway!", npc = 29431, npcName = "Jeer Sparksocket", map = 120, x = 41.0, y = 86.4, f = "e" },
					{ t = "accept", quest = 12818, title = "Clean Up", npc = 29431, npcName = "Jeer Sparksocket", map = 120, x = 41.0, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "K3", text = "K3", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12843, title = "They Took Our Men!", npc = 29473, npcName = "Gretchen Fizzlespark", map = 120, x = 41.1, y = 86.1, f = "e" },
					{ t = "accept", quest = 12844, title = "Equipment Recovery", npc = 29473, npcName = "Gretchen Fizzlespark", map = 120, x = 41.1, y = 86.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12827, title = "Reclaimed Rations", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
					{ t = "accept", quest = 12836, title = "Expression of Gratitude", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "K3", text = "K3", map = 120, x = 40.8, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12818, itemName = "Charred Wreckage", count = 10, oi = 1, map = 120, x = 39.8, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Savage Hill gnolls", count = 1, map = 120, x = 35.0, y = 83.8, f = "e" },
					{ t = "collect", quest = 12827, itemName = "Dried Gnoll Rations", count = 16, oi = 1, map = 120, x = 35.0, y = 83.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12836, target = "Gnarlhide", count = 1, oi = 1, map = 120, x = 30.3, y = 85.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12818, title = "Clean Up", npc = 29431, npcName = "Jeer Sparksocket", map = 120, x = 41.0, y = 86.4, f = "e" },
					{ t = "accept", quest = 12819, title = "Just Around the Corner", npc = 29431, npcName = "Jeer Sparksocket", map = 120, x = 41.0, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12827, title = "Reclaimed Rations", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
					{ t = "turnin", quest = 12836, title = "Expression of Gratitude", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
					{ t = "accept", quest = 12828, title = "Ample Inspiration", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12819, itemName = "Sparksocket's Tools", count = 1, oi = 1, map = 120, x = 35.1, y = 87.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12819, title = "Just Around the Corner", npc = 29431, npcName = "Jeer Sparksocket", map = 120, x = 41.0, y = 86.4, f = "e" },
					{ t = "accept", quest = 12826, title = "Slightly Unstable", npc = 29431, npcName = "Jeer Sparksocket", map = 120, x = 41.0, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12826, title = "Slightly Unstable", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
					{ t = "accept", quest = 12820, title = "A Delicate Touch", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12820, target = "Garm Attackers", count = 12, oi = 1, map = 120, x = 43.1, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12829, title = "Moving In", npc = 29430, npcName = "Tore Rumblewrench", map = 120, x = 41.7, y = 80.0, f = "e" },
					{ t = "accept", quest = 12830, title = "Ore Repossession", npc = 29430, npcName = "Tore Rumblewrench", map = 120, x = 41.7, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12828, item = 40686, itemName = "U.D.E.D.", count = 1, map = 120, x = 41.7, y = 80.0, f = "e" },
				},
			},
			{
				note = "HURRY HURRY to 43.9,79.0",
				goals = {
					{ t = "collect", quest = 12828, itemName = "Hearty Mammoth Meat", count = 8, oi = 1, map = 120, x = 43.9, y = 79.0, f = "e" },
				},
			},
			{
				note = "Go into the cave to 40.4,77.8",
				goals = {
					{ t = "kill", quest = 12829, target = "Crystalweb Spiders", count = 12, oi = 1, map = 120, x = 40.4, y = 77.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12831, title = "Only Partly Forgotten", npc = 29434, npcName = "Injured Goblin Miner", map = 120, x = 41.5, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Snowblind Diggers", count = 1, map = 120, x = 44.0, y = 75.9, f = "e" },
					{ t = "collect", quest = 12830, itemName = "Impure Saronite Ore", count = 5, oi = 1, map = 120, x = 44.0, y = 75.9, f = "e" },
				},
			},
		},
	})
end

