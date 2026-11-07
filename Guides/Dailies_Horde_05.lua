-- TuWoW_Leveling — Guides/Dailies_Horde_05.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-icecrown-full-zone-quest-path-includes-regular-dailies-pre-q-part-3",
		pack = "guides",
		title = "Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) (Parte 3/4)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		next = "zygor/dailies/h-dai-icecrown-icecrown-full-zone-quest-path-includes-regular-dailies-pre-q-part-4",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				note = "The entrance to Kul'galar Keep starts here,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 25.1, y = 61.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 26.2, y = 62.3, f = "e" },
				},
			},
			{
				note = "Leave Kul'galar Keep,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 25.1, y = 61.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13121, title = "Through the Eye", npc = 30232, npcName = "The Bone Witch", map = 118, x = 32.5, y = 42.9, f = "e" },
					{ t = "accept", quest = 13133, title = "Find the Ancient Hero", npc = 30232, npcName = "The Bone Witch", map = 118, x = 32.5, y = 42.9, f = "e" },
				},
			},
			{
				note = "The entrance to the Halls of the Ancestors starts here,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 27.9, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30718, npcName = "Slumbering Mjordin", map = 118, x = 27.4, y = 47.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13133, title = "Find the Ancient Hero", npc = 30232, npcName = "The Bone Witch", map = 118, x = 32.5, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13106, title = "Blackwatch", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
					{ t = "accept", quest = 13117, title = "Where Are They Coming From?", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 36.8, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13117, title = "Where Are They Coming From?", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
					{ t = "accept", quest = 13119, title = "Destroying the Altars", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
					{ t = "accept", quest = 13120, title = "Death's Gaze", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 30.5, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 32.6, y = 70.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 34.6, y = 69.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13119, item = 43159, itemName = "Master Summoner's Staff", count = 1, map = 118, x = 37.0, y = 71.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 36.7, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 36.6, y = 71.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 37.4, y = 71.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 37.8, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13119, title = "Destroying the Altars", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
					{ t = "turnin", quest = 13120, title = "Death's Gaze", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
					{ t = "accept", quest = 13134, title = "Spill Their Blood", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 43242, itemName = "Jagged Shard", count = 1, map = 118, x = 34.0, y = 70.0, f = "e" },
					{ t = "accept", quest = 13136, title = "Jagged Shards", map = 118, x = 34.0, y = 70.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13136, itemName = "Jagged Shard", count = 10, oi = 1, map = 118, x = 34.4, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13134, title = "Spill Their Blood", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13136, title = "Jagged Shards", npc = 30708, npcName = "Crusader Olakin Sainrith", map = 118, x = 35.5, y = 66.4, f = "e" },
					{ t = "accept", quest = 13138, title = "I'm Smelting... Smelting!", npc = 30708, npcName = "Crusader Olakin Sainrith", map = 118, x = 35.5, y = 66.4, f = "e" },
					{ t = "accept", quest = 13140, title = "The Runesmiths of Malykriss", npc = 30708, npcName = "Crusader Olakin Sainrith", map = 118, x = 35.5, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13258, title = "Opportunity", npc = 31440, npcName = "Sergeant Kregga", map = 118, x = 54.9, y = 84.2, f = "e" },
					{ t = "accept", quest = 13259, title = "Establishing Superiority", npc = 31440, npcName = "Sergeant Kregga", map = 118, x = 54.9, y = 84.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13259, target = "Hulking Horror", count = 10, oi = 1, map = 118, x = 54.8, y = 85.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13259, title = "Establishing Superiority", npc = 31440, npcName = "Sergeant Kregga", map = 118, x = 54.9, y = 84.2, f = "e" },
					{ t = "accept", quest = 13262, title = "Blow it Up!", npc = 31440, npcName = "Sergeant Kregga", map = 118, x = 54.9, y = 84.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13262, title = "Blow it Up!", map = 118, x = 54.4, y = 86.3, f = "e" },
					{ t = "accept", quest = 13263, title = "A Short Fuse", map = 118, x = 54.4, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13263, title = "A Short Fuse", map = 118, x = 54.0, y = 87.3, f = "e" },
					{ t = "accept", quest = 13271, title = "A Voice in the Dark", map = 118, x = 54.0, y = 87.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13271, title = "A Voice in the Dark", npc = 31237, npcName = "Matthias Lehner", map = 118, x = 53.8, y = 86.9, f = "e" },
					{ t = "accept", quest = 13275, title = "Time to Hide", npc = 31237, npcName = "Matthias Lehner", map = 118, x = 53.8, y = 86.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13275, itemName = "Faceless One's Blood", count = 3, oi = 1, map = 118, x = 54.5, y = 87.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13275, title = "Time to Hide", npc = 31237, npcName = "Matthias Lehner", map = 118, x = 53.8, y = 86.9, f = "e" },
					{ t = "accept", quest = 13282, title = "Return to the Surface", npc = 31237, npcName = "Matthias Lehner", map = 118, x = 53.8, y = 86.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 53.8, y = 86.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13138, itemName = "Smelted Bar", count = 1, oi = 1, map = 118, x = 58.1, y = 70.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13140, itemName = "Runed Saronite Plate", count = 5, oi = 1, map = 118, x = 58.9, y = 73.3, f = "e" },
				},
			},
			{
				note = "Orgrim's Hammer flies in a triangular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 13282, title = "Return to the Surface", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
					{ t = "accept", quest = 13304, title = "Field Repairs", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13304, itemName = "Demolisher Parts", count = 5, oi = 1, map = 118, x = 66.0, y = 53.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13304, title = "Field Repairs", npc = 31868, npcName = "Wrecked Demolisher", map = 118, x = 68.0, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13305, title = "Do Your Worst", npc = 32408, npcName = "Matthias Lehner", map = 118, x = 68.0, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 68.0, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13305, target = "Decomposed Ghoul", count = 150, oi = 1, map = 118, x = 65.4, y = 47.9, f = "e" },
					{ t = "kill", quest = 13305, target = "Frostskull Magus", count = 20, oi = 2, map = 118, x = 65.4, y = 47.9, f = "e" },
					{ t = "kill", quest = 13305, target = "Bone Giant", count = 2, oi = 3, map = 118, x = 65.4, y = 47.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13305, title = "Do Your Worst", npc = 32404, npcName = "Matthias Lehner", map = 118, x = 64.5, y = 44.0, f = "e" },
					{ t = "accept", quest = 13236, title = "Army of the Damned", npc = 32404, npcName = "Matthias Lehner", map = 118, x = 64.5, y = 44.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 64.9, y = 43.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13236, title = "Army of the Damned", npc = 32404, npcName = "Matthias Lehner", map = 118, x = 64.5, y = 44.0, f = "e" },
					{ t = "accept", quest = 13348, title = "Futility", npc = 32404, npcName = "Matthias Lehner", map = 118, x = 64.5, y = 44.0, f = "e" },
				},
			},
			{
				note = "Orgrim's Hammer flies in a triangular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 13348, title = "Futility", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
					{ t = "accept", quest = 13349, title = "Cradle of the Frostbrood", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
					{ t = "turnin", quest = 13366, title = "Need More Info", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
					{ t = "accept", quest = 13306, title = "Raise the Barricades", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13359, title = "Where Dragons Fell", npc = 32423, npcName = "Matthias Lehner", map = 118, x = 71.5, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13349, target = "Cultist Corrupter", count = 8, oi = 2, map = 118, x = 69.7, y = 36.7, f = "e" },
					{ t = "kill", quest = 13349, target = "Vrykul Necrolord", count = 3, oi = 3, map = 118, x = 69.7, y = 36.7, f = "e" },
					{ t = "collect", quest = 13359, itemName = "Whelp Bone Dust", count = 6, oi = 1, map = 118, x = 69.7, y = 36.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13359, title = "Where Dragons Fell", npc = 32423, npcName = "Matthias Lehner", map = 118, x = 71.5, y = 37.6, f = "e" },
					{ t = "accept", quest = 13360, title = "Time for Answers", npc = 32423, npcName = "Matthias Lehner", map = 118, x = 71.5, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13349, target = "Wyrm Reanimator", count = 5, oi = 1, map = 118, x = 72.3, y = 36.7, f = "e" },
				},
			},
			{
				note = "Orgrim's Hammer flies in a triangular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 13349, title = "Cradle of the Frostbrood", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 51.1, y = 39.6, f = "e" },
				},
			},
			{
				note = "Orgrim's Hammer flies in a triangular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 13306, title = "Raise the Barricades", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "accept", quest = 13313, title = "Blinding the Eyes in the Sky", npc = 30824, npcName = "Sky-Reaver Korm Blackscar", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 49.4, y = 39.3, f = "e" },
				},
			},
			{
				note = "Orgrim's Hammer flies in a triangular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 13313, title = "Blinding the Eyes in the Sky", npc = 30824, npcName = "Sky-Reaver Korm Blackscar", f = "e" },
				},
			},
			{
				note = "Hearth to The Shadow Vault|goto Icecrown,44.0,22.2,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12982, title = "Ebon Blade Prisoners", npc = 30218, npcName = "Vaelen the Flayed", map = 118, x = 43.1, y = 21.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13084, title = "Vandalizing Jotunheim", npc = 30002, npcName = "Duke Lankral", map = 118, x = 44.7, y = 20.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12992, title = "Crush Dem Vrykuls!", npc = 30216, npcName = "Vile", map = 118, x = 43.3, y = 24.8, f = "e" },
					{ t = "accept", quest = 13071, title = "Vile Like Fire!", npc = 30216, npcName = "Vile", map = 118, x = 43.3, y = 24.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12995, title = "Leave Our Mark", npc = 29343, npcName = "Baron Sliver", map = 118, x = 42.8, y = 24.9, f = "e" },
					{ t = "accept", quest = 12806, title = "To the Rise with all Due Haste!", npc = 29343, npcName = "Baron Sliver", map = 118, x = 42.8, y = 24.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13168, title = "Parting Gifts", npc = 30946, npcName = "Keritose Bloodblade", map = 118, x = 44.1, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 44.1, y = 24.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13168, title = "Parting Gifts", npc = 30946, npcName = "Keritose Bloodblade", map = 118, x = 44.1, y = 24.5, f = "e" },
					{ t = "accept", quest = 13171, title = "From Whence They Came", npc = 30946, npcName = "Keritose Bloodblade", map = 118, x = 44.1, y = 24.5, f = "e" },
					{ t = "accept", quest = 13169, title = "An Undead's Best Friend", npc = 30946, npcName = "Keritose Bloodblade", map = 118, x = 44.1, y = 24.5, f = "e" },
					{ t = "accept", quest = 13170, title = "Honor is for the Weak", npc = 30946, npcName = "Keritose Bloodblade", map = 118, x = 44.1, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 44.1, y = 24.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 41.5, y = 32.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13171, title = "From Whence They Came", npc = 30946, npcName = "Keritose Bloodblade", map = 118, x = 44.1, y = 24.5, f = "e" },
					{ t = "turnin", quest = 13169, title = "An Undead's Best Friend", npc = 30946, npcName = "Keritose Bloodblade", map = 118, x = 44.1, y = 24.5, f = "e" },
					{ t = "turnin", quest = 13170, title = "Honor is for the Weak", npc = 30946, npcName = "Keritose Bloodblade", map = 118, x = 44.1, y = 24.5, f = "e" },
					{ t = "accept", quest = 13172, title = "Seeds of Chaos", npc = 30946, npcName = "Keritose Bloodblade", map = 118, x = 44.1, y = 24.5, f = "e" },
					{ t = "accept", quest = 13174, title = "Amidst the Confusion", npc = 30946, npcName = "Keritose Bloodblade", map = 118, x = 44.1, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30946, npcName = "Keritose Bloodblade", map = 118, x = 44.1, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13174, itemName = "Weeping Quarry Schedule", count = 1, oi = 4, map = 118, x = 37.2, y = 41.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13174, itemName = "Weeping Quarry Map", count = 1, oi = 3, map = 118, x = 38.7, y = 39.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13174, itemName = "Weeping Quarry Ledger", count = 1, oi = 2, map = 118, x = 39.2, y = 36.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13174, itemName = "Weeping Quarry Document", count = 1, oi = 1, map = 118, x = 39.1, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13172, title = "Seeds of Chaos", npc = 30946, npcName = "Keritose Bloodblade", map = 118, x = 44.1, y = 24.5, f = "e" },
					{ t = "turnin", quest = 13174, title = "Amidst the Confusion", npc = 30946, npcName = "Keritose Bloodblade", map = 118, x = 44.1, y = 24.5, f = "e" },
					{ t = "accept", quest = 13155, title = "Vereth the Cunning", npc = 30946, npcName = "Keritose Bloodblade", map = 118, x = 44.1, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 27.2, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 28.4, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Death's Rise", text = "Death's Rise", map = 118, x = 19.3, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12806, title = "To the Rise with all Due Haste!", npc = 29344, npcName = "Lord-Commander Arete", map = 118, x = 19.5, y = 48.2, f = "e" },
					{ t = "accept", quest = 12807, title = "The Story Thus Far...", npc = 29344, npcName = "Lord-Commander Arete", map = 118, x = 19.5, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 29344, npcName = "Lord-Commander Arete", map = 118, x = 19.5, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12807, title = "The Story Thus Far...", npc = 29344, npcName = "Lord-Commander Arete", map = 118, x = 19.5, y = 48.2, f = "e" },
					{ t = "accept", quest = 12810, title = "Blood in the Water", npc = 29344, npcName = "Lord-Commander Arete", map = 118, x = 19.5, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12813, title = "From Their Corpses, Rise!", npc = 29396, npcName = "Setaal Darkmender", map = 118, x = 19.7, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12838, title = "Intelligence Gathering", npc = 29456, npcName = "Aurochs Grimbane", map = 118, x = 19.9, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 40652, itemName = "Scarlet Onslaught Trunk Key", count = 1, map = 118, x = 9.6, y = 44.3, f = "e" },
					{ t = "collect", quest = 12838, itemName = "Onslaught Intel Documents", count = 5, oi = 1, map = 118, x = 9.6, y = 44.3, f = "e" },
					{ t = "collect", item = 40666, itemName = "Note from the Grand Admiral", count = 1, map = 118, x = 9.6, y = 44.3, f = "e" },
					{ t = "accept", quest = 12839, title = "The Grand (Admiral's) Plan", map = 118, x = 9.6, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 10.5, y = 40.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12810, title = "Blood in the Water", npc = 29344, npcName = "Lord-Commander Arete", map = 118, x = 19.5, y = 48.2, f = "e" },
					{ t = "accept", quest = 12814, title = "You'll Need a Gryphon", npc = 29344, npcName = "Lord-Commander Arete", map = 118, x = 19.5, y = 48.2, f = "e" },
					{ t = "turnin", quest = 12839, title = "The Grand (Admiral's) Plan", npc = 29344, npcName = "Lord-Commander Arete", map = 118, x = 19.5, y = 48.2, f = "e" },
					{ t = "accept", quest = 12840, title = "In Strict Confidence", npc = 29344, npcName = "Lord-Commander Arete", map = 118, x = 19.5, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12813, title = "From Their Corpses, Rise!", npc = 29396, npcName = "Setaal Darkmender", map = 118, x = 19.7, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12838, title = "Intelligence Gathering", npc = 29456, npcName = "Aurochs Grimbane", map = 118, x = 19.9, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12814, item = 40970, itemName = "Onslaught Gryphon Reins", count = 1, map = 118, x = 8.5, y = 44.3, f = "e" },
				},
			},
		},
	})
end

