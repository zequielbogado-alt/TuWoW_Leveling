-- TuWoW_Leveling — Guides/Leveling_Horde_20.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-35-40-part-2",
		pack = "guides",
		title = "Levels (35-40) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 38,
		maxLevel = 40,
		zone = 1434,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 668, title = "Sunken Treasure (3)", npc = 2610, npcName = "Shakes O'Breen", map = 1458, x = 32.3, y = 81.4, f = "e" },
					{ t = "accept", quest = 669, title = "Sunken Treasure (4)", npc = 2610, npcName = "Shakes O'Breen", map = 1458, x = 32.3, y = 81.4, f = "e" },
				},
			},
			{
				note = "Hearth to Hammerfall,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1458, x = 73.8, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 60.8, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1146, title = "The Swarm Grows (2)", npc = 4485, npcName = "Belgrom Rockmaul", map = 1454, x = 75.2, y = 34.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "The Crossroads", text = "The Crossroads", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1146, title = "The Swarm Grows (2)", npc = 4483, npcName = "Moktar Krin", map = 1441, x = 67.6, y = 63.9, f = "e" },
					{ t = "accept", quest = 1147, title = "The Swarm Grows (3)", npc = 4483, npcName = "Moktar Krin", map = 1441, x = 67.6, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1147, target = "Silithid Searcher", count = 5, oi = 1, map = 1441, x = 68.3, y = 81.2, f = "e" },
					{ t = "kill", quest = 1147, target = "Silithid Hive Drone", count = 5, oi = 2, map = 1441, x = 68.3, y = 81.2, f = "e" },
					{ t = "kill", quest = 1147, target = "Silithid Invader", count = 5, oi = 3, map = 1441, x = 68.3, y = 81.2, f = "e" },
					{ t = "collect", itemName = "a Cracked Silithid Carapace", count = 1, map = 1441, x = 68.3, y = 81.2, f = "e" },
					{ t = "accept", quest = 1148, title = "Parts of the Swarm (1)", map = 1441, x = 68.3, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1148, itemName = "Silithid Heart", count = 1, oi = 1, map = 1441, x = 68.4, y = 85.8, f = "e" },
					{ t = "collect", quest = 1148, itemName = "Silithid Talon", count = 5, oi = 2, map = 1441, x = 68.4, y = 85.8, f = "e" },
					{ t = "collect", quest = 1148, itemName = "Intact Silithid Carapace", count = 3, oi = 3, map = 1441, x = 68.4, y = 85.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1183, title = "Goblin Sponsorship (5)", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.2, y = 75.9, f = "e" },
					{ t = "accept", quest = 1186, title = "The Eighteenth Pilot", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.2, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1186, title = "The Eighteenth Pilot", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.3, y = 76.1, f = "e" },
					{ t = "accept", quest = 1187, title = "Razzeric's Tweaking", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.3, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1112, title = "Parts for Kravel", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.8, y = 77.3, f = "e" },
					{ t = "accept", quest = 1114, title = "Delivery to the Gnomes", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.8, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1114, title = "Delivery to the Gnomes", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.1, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1115, title = "The Rumormonger", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.8, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1147, title = "The Swarm Grows (3)", npc = 4483, npcName = "Moktar Krin", map = 1441, x = 67.6, y = 63.9, f = "e" },
				},
			},
			{
				note = "Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1148, title = "Parts of the Swarm (1)", npc = 3428, npcName = "Korran", map = 1413, x = 51.1, y = 29.6, f = "e" },
					{ t = "accept", quest = 1184, title = "Parts of the Swarm (2)", npc = 3428, npcName = "Korran", map = 1413, x = 51.1, y = 29.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1201, title = "Theramore Spies", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.2, y = 30.7, f = "e" },
					{ t = "accept", quest = 11213, title = "Check Up on Tabetha", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.2, y = 30.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9437, title = "Twilight of the Dawn Runner", npc = 17095, npcName = "Balandar Brightstar", map = 1445, x = 35.9, y = 31.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11124, title = "Inspecting the Ruins", npc = 4926, npcName = "Krog", map = 1445, x = 36.4, y = 31.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11124, title = "Inspecting the Ruins", npc = 23567, npcName = "Inspector Tarem", map = 1445, x = 29.7, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Mudsprocket", text = "Mudsprocket", map = 1445, x = 42.8, y = 72.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11184, title = "WANTED: Goreclaw the Ravenous", map = 1445, x = 41.8, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11158, title = "Bloodfen Feathers", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11158, itemName = "Bloodfen Feather", count = 5, oi = 1, map = 1445, x = 33.3, y = 64.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11184, target = "Goreclaw the Ravenous", count = 1, oi = 1, map = 1445, x = 32.4, y = 65.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11184, title = "WANTED: Goreclaw the Ravenous", npc = 23572, npcName = "Drazzit Dripvalve", map = 1445, x = 42.3, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11158, title = "Bloodfen Feathers", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11213, title = "Check Up on Tabetha", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.1, y = 57.2, f = "e" },
					{ t = "accept", quest = 11172, title = "The Zeppelin Crash", npc = 23600, npcName = "Apprentice Morlann", map = 1445, x = 46.1, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11172, title = "The Zeppelin Crash", npc = 23797, npcName = "Moxie Steelgrille", map = 1445, x = 53.6, y = 56.9, f = "e" },
					{ t = "accept", quest = 11174, title = "Corrosion Prevention", npc = 23797, npcName = "Moxie Steelgrille", map = 1445, x = 53.6, y = 56.9, f = "e" },
					{ t = "accept", quest = 11207, title = "Secure the Cargo!", npc = 23797, npcName = "Moxie Steelgrille", map = 1445, x = 53.6, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11207, itemName = "Zeppelin Cargo", count = 8, oi = 1, map = 1445, x = 53.0, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11174, title = "Corrosion Prevention", npc = 23797, npcName = "Moxie Steelgrille", map = 1445, x = 53.6, y = 56.9, f = "e" },
					{ t = "turnin", quest = 11207, title = "Secure the Cargo!", npc = 23797, npcName = "Moxie Steelgrille", map = 1445, x = 53.6, y = 56.9, f = "e" },
					{ t = "accept", quest = 11208, title = "Delivery for Drazzit", npc = 23797, npcName = "Moxie Steelgrille", map = 1445, x = 53.6, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1187, itemName = "Seaforium Booster", count = 1, oi = 1, map = 1445, x = 54.1, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1201, target = "Theramore Infiltrator", count = 9, oi = 1, map = 1445, x = 42.8, y = 31.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9437, itemName = "Dawn Runner Cargo", count = 1, oi = 2, map = 1445, x = 46.6, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1218, title = "Marsh Frog Legs", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.4, y = 26.3, f = "e" },
					{ t = "accept", quest = 11180, title = "What's Haunting Witch Hill?", npc = 23843, npcName = "Mordant Grimsby", map = 1445, x = 55.4, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1238, title = "The Lost Report", map = 1445, x = 55.4, y = 25.9, f = "e" },
				},
			},
			{
				note = "Kill Giant Marsh Frogs around \"Swamp Eye\" Jarl's house",
				goals = {
					{ t = "collect", quest = 1218, itemName = "Marsh Frog Leg", count = 10, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1218, title = "Marsh Frog Legs", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.4, y = 26.3, f = "e" },
					{ t = "accept", quest = 1206, title = "Jarl Needs Eyes", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.4, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 55.0, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11180, title = "What's Haunting Witch Hill?", npc = 23843, npcName = "Mordant Grimsby", map = 1445, x = 55.4, y = 26.3, f = "e" },
					{ t = "accept", quest = 11181, title = "The Witch's Bane", npc = 23843, npcName = "Mordant Grimsby", map = 1445, x = 55.4, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11181, itemName = "Witchbane", count = 9, oi = 1, map = 1445, x = 55.2, y = 27.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11181, title = "The Witch's Bane", npc = 23843, npcName = "Mordant Grimsby", map = 1445, x = 55.4, y = 26.3, f = "e" },
					{ t = "accept", quest = 11183, title = "Cleansing Witch Hill", npc = 23843, npcName = "Mordant Grimsby", map = 1445, x = 55.4, y = 26.3, f = "e" },
				},
			},
			{
				note = "Use the Witchbane Torch while standing at the end of the dock right outside|use Witchbane Torch##33113",
				goals = {
					{ t = "use", item = 33113, itemName = "Witchbane Torch", map = 1445, x = 55.2, y = 26.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11183, title = "Cleansing Witch Hill", npc = 23843, npcName = "Mordant Grimsby", map = 1445, x = 55.4, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1270, title = "Stinky's Escape", npc = 4880, npcName = "\"Stinky\" Ignatz", map = 1445, x = 46.9, y = 17.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1206, itemName = "Unpopped Darkmist Eye", count = 20, oi = 1, map = 1445, x = 34.9, y = 22.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1201, title = "Theramore Spies", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.2, y = 30.7, f = "e" },
					{ t = "turnin", quest = 1238, title = "The Lost Report", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.2, y = 30.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9437, title = "Twilight of the Dawn Runner", npc = 17095, npcName = "Balandar Brightstar", map = 1445, x = 35.9, y = 31.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1206, title = "Jarl Needs Eyes", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.4, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1239, title = "The Severed Head", map = 1445, x = 55.4, y = 25.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1239, title = "The Severed Head", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.2, y = 30.7, f = "e" },
					{ t = "accept", quest = 1240, title = "The Troll Witchdoctor", npc = 4791, npcName = "Nazeer Bloodpike", map = 1445, x = 35.2, y = 30.7, f = "e" },
				},
			},
			{
				note = "Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1270, title = "Stinky's Escape", npc = 3446, npcName = "Mebok Mizzyrix", map = 1445, x = 62.4, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 595, title = "The Bloodsail Buccaneers (1)", npc = 2490, npcName = "First Mate Crazz", map = 1434, x = 28.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Booty Bay", text = "Booty Bay", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 600, title = "Venture Company Mining", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.1, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1115, title = "The Rumormonger", npc = 773, npcName = "Krazek", map = 1434, x = 27.0, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 669, title = "Sunken Treasure (4)", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.2, y = 76.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1240, title = "The Troll Witchdoctor", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.2, y = 27.7, f = "e" },
					{ t = "accept", quest = 1261, title = "Marg Speaks", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.2, y = 27.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 40, f = "e" },
				},
			},
		},
	})
end

