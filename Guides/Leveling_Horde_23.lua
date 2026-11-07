-- TuWoW_Leveling — Guides/Leveling_Horde_23.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-40-45-part-2",
		pack = "guides",
		title = "Levels (40-45) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 40,
		maxLevel = 45,
		zone = 1434,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 621, itemName = "Zanzil's Mixture", count = 12, oi = 1, map = 1434, x = 39.0, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 43, f = "e" },
				},
			},
			{
				note = "Hearth to Booty Bay,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1434, x = 27.1, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 621, title = "Zanzil's Secret", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.1, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 587, title = "Up to Snuff", npc = 2488, npcName = "Deeg", map = 1434, x = 26.9, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 604, title = "The Bloodsail Buccaneers (4)", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.2, y = 76.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 617, title = "Akiris by the Bundle", npc = 2494, npcName = "Privateer Bloads", map = 1434, x = 26.8, y = 76.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 609, title = "Voodoo Dues", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.8, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 576, title = "Keep An Eye Out", npc = 2493, npcName = "Dizzy One-Eye", map = 1434, x = 28.6, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 573, title = "Mok'thardin's Enchantment (4)", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1434, x = 32.1, y = 29.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1184, title = "Parts of the Swarm (2)", npc = 4485, npcName = "Belgrom Rockmaul", map = 1454, x = 75.2, y = 34.2, f = "e" },
					{ t = "accept", quest = 2981, title = "A Threat in Feralas", npc = 4485, npcName = "Belgrom Rockmaul", map = 1454, x = 75.2, y = 34.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1136, title = "Frostmaw", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.5, y = 80.9, f = "e" },
					{ t = "accept", quest = 1205, title = "Deadmire", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.5, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1166, title = "Overlord Mok'Morokk's Concern", npc = 4500, npcName = "Overlord Mok'Morokk", map = 1445, x = 36.3, y = 31.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1169, title = "Identifying the Brood", npc = 4501, npcName = "Draz'Zilb", map = 1445, x = 37.2, y = 33.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1168, title = "Army of the Black Dragon", npc = 4502, npcName = "Tharg", map = 1445, x = 37.4, y = 31.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1273, title = "Questioning Reethe", npc = 4983, npcName = "Ogron", map = 1445, x = 41.0, y = 36.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1205, itemName = "Deadmire's Tooth", count = 1, oi = 1, map = 1445, x = 45.6, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11156, title = "Direhorn Raiders", npc = 23600, npcName = "Apprentice Morlann", map = 1445, x = 46.1, y = 57.2, f = "e" },
					{ t = "accept", quest = 11169, title = "The Grimtotem Weapon", npc = 23601, npcName = "Apprentice Garion", map = 1445, x = 46.1, y = 57.2, f = "e" },
					{ t = "accept", quest = 11173, title = "The Reagent Thief", npc = 23601, npcName = "Apprentice Garion", map = 1445, x = 46.1, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Mottled Drywallow Crocolisks next to the totem", count = 1, map = 1445, x = 43.8, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11173, itemName = "Marsh Venom", count = 6, oi = 1, map = 1445, x = 45.0, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 47.0, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "the Sealed Letter", count = 1, map = 1445, x = 47.2, y = 46.6, f = "e" },
					{ t = "accept", quest = 11186, title = "Signs of Treachery?", map = 1445, x = 47.2, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11173, title = "The Reagent Thief", npc = 23601, npcName = "Apprentice Garion", map = 1445, x = 46.1, y = 57.2, f = "e" },
					{ t = "turnin", quest = 11169, title = "The Grimtotem Weapon", npc = 23601, npcName = "Apprentice Garion", map = 1445, x = 46.1, y = 57.2, f = "e" },
					{ t = "turnin", quest = 11156, title = "Direhorn Raiders", npc = 23600, npcName = "Apprentice Morlann", map = 1445, x = 46.1, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11208, title = "Delivery for Drazzit", npc = 23572, npcName = "Drazzit Dripvalve", map = 1445, x = 42.3, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11160, title = "Banner of the Stonemaul", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
					{ t = "accept", quest = 11161, title = "The Essence of Enmity", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11217, title = "Catch a Dragon by the Tail", npc = 23570, npcName = "Gizzix Grimegurgle", map = 1445, x = 41.5, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11161, itemName = "Black Dragonkin Essence", count = 10, oi = 1, map = 1445, x = 39.0, y = 66.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1166, itemName = "Mok'Morokk's Grog", count = 1, oi = 2, map = 1445, x = 38.7, y = 65.6, f = "e" },
				},
			},
			{
				note = "Go southwest into the cave to 38,69",
				goals = {
					{ t = "collect", quest = 11160, itemName = "Stonemaul Banner", count = 1, oi = 1, map = 1445, x = 38.1, y = 69.4, f = "e" },
				},
			},
			{
				note = "Go southwest inside the cave to 37,70",
				goals = {
					{ t = "collect", quest = 1166, itemName = "Mok'Morokk's Strongbox", count = 1, oi = 3, map = 1445, x = 36.6, y = 69.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1168, target = "Firemane Scout", count = 10, oi = 1, map = 1445, x = 41.7, y = 67.3, f = "e" },
					{ t = "kill", quest = 1168, target = "Firemane Ash Tail", count = 10, oi = 2, map = 1445, x = 41.7, y = 67.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1166, itemName = "Mok'Morokk's Snuff", count = 1, oi = 1, map = 1445, x = 44.5, y = 66.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11217, itemName = "Wyrmtail", count = 8, oi = 1, map = 1445, x = 46.0, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1169, itemName = "Searing Tongue", count = 7, oi = 1, map = 1445, x = 42.0, y = 77.8, f = "e" },
					{ t = "collect", quest = 1169, itemName = "Searing Heart", count = 7, oi = 2, map = 1445, x = 42.0, y = 77.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11160, title = "Banner of the Stonemaul", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
					{ t = "turnin", quest = 11161, title = "The Essence of Enmity", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
					{ t = "accept", quest = 11159, title = "Spirits of Stonemaul Hold", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11217, title = "Catch a Dragon by the Tail", npc = 23570, npcName = "Gizzix Grimegurgle", map = 1445, x = 41.5, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 45.0, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11159, title = "Spirits of Stonemaul Hold", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
					{ t = "accept", quest = 11162, title = "Challenge to the Black Flight", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1168, target = "Firemane Scalebane", count = 5, oi = 3, map = 1445, x = 51.4, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 52.1, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 55.5, y = 67.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1261, itemName = "Jeweled Pendant", count = 1, oi = 1, map = 1445, x = 55.8, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11162, title = "Challenge to the Black Flight", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1261, title = "Marg Speaks", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.2, y = 30.7, f = "e" },
					{ t = "accept", quest = 1262, title = "Report to Zor", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.2, y = 30.7, f = "e" },
					{ t = "turnin", quest = 11186, title = "Signs of Treachery?", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.2, y = 30.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1166, title = "Overlord Mok'Morokk's Concern", npc = 4500, npcName = "Overlord Mok'Morokk", map = 1445, x = 36.3, y = 31.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1273, title = "Questioning Reethe", npc = 4926, npcName = "Krog", map = 1445, x = 36.4, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1169, title = "Identifying the Brood", npc = 4501, npcName = "Draz'Zilb", map = 1445, x = 37.2, y = 33.1, f = "e" },
					{ t = "accept", quest = 1170, title = "The Brood of Onyxia (1)", npc = 4501, npcName = "Draz'Zilb", map = 1445, x = 37.2, y = 33.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1170, title = "The Brood of Onyxia (1)", npc = 4500, npcName = "Overlord Mok'Morokk", map = 1445, x = 36.3, y = 31.4, f = "e" },
					{ t = "accept", quest = 1171, title = "The Brood of Onyxia (2)", npc = 4500, npcName = "Overlord Mok'Morokk", map = 1445, x = 36.3, y = 31.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1171, title = "The Brood of Onyxia (2)", npc = 4501, npcName = "Draz'Zilb", map = 1445, x = 37.2, y = 33.1, f = "e" },
					{ t = "accept", quest = 1172, title = "The Brood of Onyxia (3)", npc = 4501, npcName = "Draz'Zilb", map = 1445, x = 37.2, y = 33.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1168, title = "Army of the Black Dragon", npc = 4502, npcName = "Tharg", map = 1445, x = 37.4, y = 31.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 48.4, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 48.5, y = 73.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1172, title = "The Brood of Onyxia (3)", npc = 4501, npcName = "Draz'Zilb", map = 1445, x = 37.2, y = 33.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1205, title = "Deadmire", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.5, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2864, title = "Tran'rek", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.6, y = 26.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2781, title = "WANTED: Caliph Scorpidsting", map = 1446, x = 51.8, y = 27.0, f = "e" },
					{ t = "accept", quest = 2875, title = "WANTED: Andre Firebeard", map = 1446, x = 51.8, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Gadgetzan", text = "Gadgetzan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1707, title = "Water Pouch Bounty", npc = 7408, npcName = "Spigot Operator Luglunket", map = 1446, x = 52.5, y = 28.5, f = "e" },
					{ t = "accept", quest = 1690, title = "Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 992, title = "Gadgetzan Water Survey", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1137, title = "News for Fizzle", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.1, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1190, title = "Keeping Pace", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.2, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1191, title = "Zamek's Distraction", npc = 4709, npcName = "Zamek", map = 1441, x = 79.8, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1190, title = "Keeping Pace", map = 1441, x = 77.2, y = 77.4, f = "e" },
					{ t = "accept", quest = 1194, title = "Rizzle's Schematics", map = 1441, x = 77.2, y = 77.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1194, title = "Rizzle's Schematics", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.2, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1187, title = "Razzeric's Tweaking", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.3, y = 76.1, f = "e" },
					{ t = "accept", quest = 1188, title = "Safety First (1)", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.3, y = 76.1, f = "e" },
				},
			},
			{
				note = "Hearth to Gadgetzan|goto Tanaris,52.4,27.9,0.3|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1188, title = "Safety First (1)", npc = 4708, npcName = "Shreev", map = 1446, x = 51.0, y = 27.2, f = "e" },
					{ t = "accept", quest = 1189, title = "Safety First (2)", npc = 4708, npcName = "Shreev", map = 1446, x = 51.0, y = 27.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1189, title = "Safety First (2)", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.3, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 992, itemName = "Tapped Dowsing Widget", count = 1, oi = 1, map = 1446, x = 38.6, y = 29.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 992, title = "Gadgetzan Water Survey", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1690, target = "Wastewander Bandit", count = 10, oi = 1, map = 1446, x = 59.5, y = 24.9, f = "e" },
					{ t = "kill", quest = 1690, target = "Wastewander Thief", count = 10, oi = 2, map = 1446, x = 59.5, y = 24.9, f = "e" },
					{ t = "collect", quest = 1707, itemName = "Wastewander Water Pouch", count = 5, oi = 1, map = 1446, x = 59.5, y = 24.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8366, title = "Southsea Shakedown", npc = 7882, npcName = "Security Chief Bilgewhizzle", map = 1446, x = 67.1, y = 23.9, f = "e" },
					{ t = "turnin", quest = 2872, title = "Stoley's Debt", npc = 7881, npcName = "Stoley", map = 1446, x = 67.1, y = 23.9, f = "e" },
					{ t = "accept", quest = 2873, title = "Stoley's Shipment", npc = 7881, npcName = "Stoley", map = 1446, x = 67.1, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8365, title = "Pirate Hats Ahoy!", npc = 15165, npcName = "Haughty Modiste", map = 1446, x = 66.6, y = 22.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3520, title = "Screecher Spirits", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 67.0, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2781, itemName = "Caliph Scorpidsting's Head", count = 1, oi = 1, map = 1446, x = 62.8, y = 34.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8366, target = "Southsea Pirate", count = 10, oi = 1, map = 1446, x = 70.8, y = 42.7, f = "e" },
					{ t = "kill", quest = 8366, target = "Southsea Freebooter", count = 10, oi = 2, map = 1446, x = 70.8, y = 42.7, f = "e" },
					{ t = "collect", quest = 8365, itemName = "Southsea Pirate Hat", count = 20, oi = 1, map = 1446, x = 70.8, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 45, f = "e" },
				},
			},
		},
	})
end

