-- TuWoW_Leveling — Guides/Leveling_Alliance_55.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-78-80",
		pack = "guides",
		title = "Northrend (78-80) (Parte 1/4)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-78-80-part-2",
		author = "TuWoW & Zygor",
		minLevel = 78,
		maxLevel = 80,
		zone = 119,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", quest = 12533, target = "Sapphire Hive Wasp", count = 6, oi = 1, map = 119, x = 59.6, y = 75.8, f = "e" },
					{ t = "kill", quest = 12533, target = "Sapphire Hive Drone", count = 9, oi = 2, map = 119, x = 59.6, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 59.4, y = 79.1, f = "e" },
				},
			},
			{
				note = "Follow the path down to 57.1,79.3",
				goals = {
					{ t = "collect", quest = 12534, itemName = "Stinger of the Sapphire Queen", count = 1, oi = 1, f = "e" },
				},
			},
			{
				note = "Go outside to 55,69.1",
				goals = {
					{ t = "turnin", quest = 12533, title = "The Wasp Hunter's Apprentice", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "turnin", quest = 12534, title = "The Sapphire Queen", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12532, title = "Flown the Coop!", npc = 28138, npcName = "Elder Harkek", map = 119, x = 55.5, y = 69.7, f = "e" },
				},
			},
			{
				note = "They are all around the village",
				goals = {
					{ t = "collect", quest = 12532, itemName = "Captured Chicken", count = 12, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12532, title = "Flown the Coop!", npc = 28138, npcName = "Elder Harkek", map = 119, x = 55.5, y = 69.7, f = "e" },
					{ t = "accept", quest = 12531, title = "The Underground Menace", npc = 28138, npcName = "Elder Harkek", map = 119, x = 55.5, y = 69.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12535, title = "Mischief in the Making", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12535, itemName = "Skyreach Crystal Cluster", count = 8, oi = 1, map = 119, x = 56.6, y = 84.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12531, itemName = "Claw of Serfex", count = 1, oi = 1, map = 119, x = 49.8, y = 85.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12531, title = "The Underground Menace", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "turnin", quest = 12535, title = "Mischief in the Making", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "accept", quest = 12536, title = "A Rough Ride", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 28298, npcName = "Captive Crocolisk", map = 119, x = 57.3, y = 68.4, f = "e" },
				},
			},
			{
				note = "When you jump off the crocodile:",
				goals = {
					{ t = "turnin", quest = 12536, title = "A Rough Ride", npc = 28668, npcName = "Zepik the Gorloc Hunter", f = "e" },
					{ t = "accept", quest = 12537, title = "Lightning Definitely Strikes Twice", npc = 28668, npcName = "Zepik the Gorloc Hunter", f = "e" },
					{ t = "accept", quest = 12538, title = "The Mist Isn't Listening", npc = 28668, npcName = "Zepik the Gorloc Hunter", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 45.4, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 45.5, y = 39.8, f = "e" },
				},
			},
			{
				note = "Use Zepik's Hunting Horn if Zepik is not standing next to you:|use Zepik's Hunting Horn##38512",
				goals = {
					{ t = "use", item = 38512, itemName = "Zepik's Hunting Horn", f = "e" },
					{ t = "turnin", quest = 12537, title = "Lightning Definitely Strikes Twice", npc = 28216, npcName = "Zepik the Gorloc Hunter", f = "e" },
					{ t = "turnin", quest = 12538, title = "The Mist Isn't Listening", npc = 28216, npcName = "Zepik the Gorloc Hunter", f = "e" },
					{ t = "accept", quest = 12539, title = "Hoofing It", npc = 28216, npcName = "Zepik the Gorloc Hunter", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12539, title = "Hoofing It", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "accept", quest = 12540, title = "Just Following Orders", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "the crocodile that spawns", count = 1, map = 119, x = 55.7, y = 64.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12540, title = "Just Following Orders", npc = 28217, npcName = "Injured Rainspeaker Oracle", map = 119, x = 55.7, y = 64.9, f = "e" },
					{ t = "accept", quest = 12570, title = "Fortunate Misunderstandings", npc = 28217, npcName = "Injured Rainspeaker Oracle", map = 119, x = 55.7, y = 64.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12570, title = "Fortunate Misunderstandings", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
					{ t = "accept", quest = 12571, title = "Make the Bad Snake Go Away", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
				},
			},
			{
				note = "Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622",
				goals = {
					{ t = "use", item = 38622, itemName = "Lafoo's Bug Bag", f = "e" },
					{ t = "accept", quest = 12572, title = "Gods like Shiny Things", npc = 28120, npcName = "Lafoo", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12571, npc = 28358, target = "Venomtip", count = 1, oi = 2, map = 119, x = 57.5, y = 52.4, f = "e" },
				},
			},
			{
				note = "Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622",
				goals = {
					{ t = "use", item = 38622, itemName = "Lafoo's Bug Bag", map = 119, x = 52.4, y = 53.2, f = "e" },
					{ t = "collect", quest = 12572, itemName = "Shiny Treasures", count = 6, oi = 1, map = 119, x = 52.4, y = 53.2, f = "e" },
					{ t = "kill", quest = 12571, target = "Emperor Cobra", count = 10, oi = 1, map = 119, x = 52.4, y = 53.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12571, title = "Make the Bad Snake Go Away", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
					{ t = "accept", quest = 12573, title = "Making Peace", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
					{ t = "turnin", quest = 12572, title = "Gods like Shiny Things", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
				},
			},
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
					{ t = "kill", quest = 12575, npc = 28105, target = "Warlord Tartek", count = 1, oi = 1, map = 119, x = 41.3, y = 19.8, f = "e" },
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
				note = "Hearth to Nesingwary Base Camp|goto Sholazar Basin,26.8,59.2,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
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
					{ t = "accept", quest = 12681, title = "Reagent Agent", npc = 28771, npcName = "Colvin Norrington", map = 119, x = 42.1, y = 28.7, f = "e" },
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
				note = "Hearth to Nesingwary Base Camp|goto Sholazar Basin,26.8,59.2,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
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
				note = "Hearth to Nesingwary Base Camp|goto Sholazar Basin,26.8,59.2,0.1|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
		},
	})
end

