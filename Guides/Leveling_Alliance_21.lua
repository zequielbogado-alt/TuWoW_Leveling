-- TuWoW_Leveling — Guides/Leveling_Alliance_21.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-desolace-35-37",
		pack = "guides",
		title = "Desolace",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-stranglethorn-vale-37-38",
		author = "TuWoW & Zygor",
		minLevel = 35,
		maxLevel = 37,
		zone = 1443,
		version = 1,
		steps = {
			{
				note = "Taming a temporary pet soon. Learning Claw (Rank 5).",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Stable Your Pet", map = 1443, x = 65.62, y = 7.84 },
				},
			},
			{
				note = "Cast Tame Beast on an Scorpashi Lasher. Kill enemies nearby.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Learn the Claw (Rank 5) Pet Ability", map = 1443, x = 61.8, y = 44.4 },
				},
			},
			{
				note = "Abandon your temporary pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Run up the path to enter Nijel's Point", map = 1443, x = 67.49, y = 15.76 },
					{ t = "goto", text = "Retrieve Your Pet", map = 1443, x = 65.62, y = 7.84 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Nijel's Point", map = 1443, x = 66.27, y = 6.56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1453, title = "Reclaimers' Business in Desolace", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.63, f = "e" },
					{ t = "accept", quest = 1454, title = "The Karnitol Shipwreck", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.63, f = "e" },
					{ t = "accept", quest = 1458, title = "Reagents for Reclaimers Inc.", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.63, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1387, title = "Centaur Bounty", npc = 5752, npcName = "Corporal Melkins", map = 1443, x = 66.74, y = 10.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1382, title = "Strange Alliance", npc = 5396, npcName = "Captain Pentigast", map = 1443, x = 66.66, y = 10.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1437, title = "Vahlarriel's Search", npc = 5642, npcName = "Vahlarriel Demonslayer", map = 1443, x = 66.44, y = 11.82, f = "e" },
				},
			},
			{
				note = "Satyrs. Careful, stealthed enemies.",
				goals = {
					{ t = "collect", quest = 1458, item = 6246, itemName = "Hatefury Claw", count = 10, oi = 1, map = 1443, x = 69.4, y = 15.8, f = "e" },
					{ t = "collect", quest = 1458, item = 6247, itemName = "Hatefury Horn", count = 10, oi = 2, map = 1443, x = 69.4, y = 15.8, f = "e" },
				},
			},
			{
				note = "Helps reach level 36 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 35,64450", map = 1443, x = 69.4, y = 15.8 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the path to enter Nijel's Point", map = 1443, x = 67.49, y = 15.76 },
					{ t = "turnin", quest = 1458, title = "Reagents for Reclaimers Inc.", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.63, f = "e" },
					{ t = "accept", quest = 1459, title = "Reagents for Reclaimers Inc.", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.63, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1437, title = "Vahlarriel's Search", map = 1443, x = 56.54, y = 17.83, f = "e" },
					{ t = "accept", quest = 1465, title = "Vahlarriel's Search", map = 1443, x = 56.54, y = 17.83, f = "e" },
				},
			},
			{
				note = "Up on the cliff.",
				goals = {
					{ t = "accept", quest = 5741, title = "Sceptre of Light", npc = 11863, npcName = "Azore Aldamort", map = 1443, x = 38.88, y = 27.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1454, title = "The Karnitol Shipwreck", map = 1443, x = 36.11, y = 30.45, f = "e" },
					{ t = "accept", quest = 1455, title = "The Karnitol Shipwreck", map = 1443, x = 36.11, y = 30.45, f = "e" },
				},
			},
			{
				note = "Small book.",
				goals = {
					{ t = "accept", quest = 6161, title = "Claim Rackmore's Treasure!", map = 1443, x = 36.07, y = 30.41, f = "e" },
				},
			},
			{
				note = "Lobsters. Underwater.",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 6161, item = 15878, itemName = "Rackmore's Silver Key", oi = 1, map = 1443, x = 33.8, y = 30.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1455, title = "The Karnitol Shipwreck", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.63, f = "e" },
					{ t = "accept", quest = 1456, title = "The Karnitol Shipwreck", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.63, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1465, title = "Vahlarriel's Search", npc = 5642, npcName = "Vahlarriel Demonslayer", map = 1443, x = 66.44, y = 11.82, f = "e" },
					{ t = "accept", quest = 1438, title = "Vahlarriel's Search", npc = 5642, npcName = "Vahlarriel Demonslayer", map = 1443, x = 66.44, y = 11.82, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "collect", quest = 5741, item = 15750, itemName = "Sceptre of Light", oi = 1, map = 1443, x = 55.17, y = 30.15, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until she respawns, if missing. Inside the building.",
				goals = {
					{ t = "turnin", quest = 1438, title = "Vahlarriel's Search", npc = 5644, npcName = "Dalinda Malem", map = 1443, x = 54.86, y = 26.13, f = "e" },
					{ t = "accept", quest = 1439, title = "Search for Tyranis", npc = 5644, npcName = "Dalinda Malem", map = 1443, x = 54.86, y = 26.13, f = "e" },
				},
			},
			{
				note = "Pull him to building entrance to avoid enemies. Inside the building.",
				goals = {
					{ t = "collect", quest = 1439, item = 6767, itemName = "Tyranis' Pendant", oi = 1, map = 1443, x = 53.01, y = 29.08, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until she respawns, if missing. Inside the building. This is an escort quest. Kill nearby enemies first.",
				goals = {
					{ t = "turnin", quest = 1439, title = "Search for Tyranis", npc = 5644, npcName = "Dalinda Malem", map = 1443, x = 54.86, y = 26.13, f = "e" },
					{ t = "accept", quest = 1440, title = "Return to Vahlarriel", npc = 5644, npcName = "Dalinda Malem", map = 1443, x = 54.86, y = 26.13, f = "e" },
				},
			},
			{
				note = "Follow and protect Dalinda Malem.",
				goals = {
					{ t = "complete", quest = 1440, title = "Return to Vahlarriel", note = "Rescue Dalinda Malem", map = 1443, x = 58.26, y = 30.95, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 5501, title = "Bone Collector", npc = 11438, npcName = "Bibbly F'utzbuckle", map = 1443, x = 62.33, y = 38.98, f = "e" },
				},
			},
			{
				note = "Centaurs. Avoid Magram Pack Runners walking with 2 hyena guards.",
				goals = {
					{ t = "collect", quest = 1387, item = 6067, itemName = "Centaur Ear", count = 15, oi = 1, map = 1443, x = 69.0, y = 69.2, f = "e" },
					{ t = "complete", quest = 1382, title = "Strange Alliance", note = "Reach Friendly Reputation with Gelkis Clan Centaur", map = 1443, x = 69.0, y = 69.2, f = "e" },
				},
			},
			{
				note = "Avoid Ghost Walker Post.",
				goals = {
					{ t = "accept", quest = 5561, title = "Kodo Roundup", npc = 11596, npcName = "Smeed Scrabblescrew", map = 1443, x = 60.86, y = 61.86, f = "e" },
				},
			},
			{
				note = "On Kodo enemies. They will follow you. Talk to them near Smeed Scrabblescrew.",
				goals = {
					{ t = "use", item = 13892, itemName = "Kodo Kombobulator" },
					{ t = "complete", quest = 5561, title = "Kodo Roundup", note = "Tame #5# Kodos", map = 1443, x = 54.4, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5561, title = "Kodo Roundup", npc = 11596, npcName = "Smeed Scrabblescrew", map = 1443, x = 60.86, y = 61.86, f = "e" },
				},
			},
			{
				label = "Collect_Aged_Kodo_Hides",
				along = true,
				goals = {
					{ t = "collect", quest = 1459, item = 6249, itemName = "Aged Kodo Hide", count = 3, oi = 2, map = 1443, x = 54.4, y = 60.3, f = "e" },
				},
			},
			{
				label = "Collect_Kodo_Bones",
				along = true,
				note = "White horned animal skulls. May be attacked.",
				goals = {
					{ t = "collect", quest = 5501, item = 13703, itemName = "Kodo Bone", count = 10, oi = 1, map = 1443, x = 54.4, y = 60.3, f = "e" },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "turnin", quest = 1382, title = "Strange Alliance", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.23, y = 79.25, f = "e" },
					{ t = "accept", quest = 1384, title = "Raid on the Kolkar", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.23, y = 79.25, f = "e" },
				},
			},
			{
				note = "Inside the building. Long grind soon.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 12960, npcName = "Christi Galvanis", map = 1443, x = 66.61, y = 6.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1387, title = "Centaur Bounty", npc = 5752, npcName = "Corporal Melkins", map = 1443, x = 66.74, y = 10.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1440, title = "Return to Vahlarriel", npc = 5642, npcName = "Vahlarriel Demonslayer", map = 1443, x = 66.44, y = 11.82, f = "e" },
				},
			},
			{
				note = "Centaurs.",
				goals = {
					{ t = "collect", quest = 1384, item = 6079, itemName = "Crude Charm", count = 10, oi = 1, map = 1443, x = 68.4, y = 39.0, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 5501, title = "Bone Collector", npc = 11438, npcName = "Bibbly F'utzbuckle", map = 1443, x = 62.33, y = 38.98, f = "e" },
				},
			},
			{
				note = "Up on the cliff.",
				goals = {
					{ t = "turnin", quest = 5741, title = "Sceptre of Light", npc = 11863, npcName = "Azore Aldamort", map = 1443, x = 38.89, y = 27.17, f = "e" },
					{ t = "accept", quest = 6027, title = "Book of the Ancients", npc = 11863, npcName = "Azore Aldamort", map = 1443, x = 38.89, y = 27.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6027, item = 15803, itemName = "Book of the Ancients", oi = 1, map = 1443, x = 28.19, y = 6.62, f = "e" },
				},
			},
			{
				label = "Collect_Karnitols_Satchel",
				along = true,
				note = "Tidehunters and Sea Witches. Nagas. Shared spawns with other nagas. notinsticky On the island and underwater. notinsticky Low drop rate. notinsticky Take the time to grind for it. notinsticky Skip if not found by 10% into level 37. notinsticky",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 1456, item = 6245, itemName = "Karnitol's Satchel", oi = 1, map = 1443, x = 28.4, y = 12.2, f = "e" },
				},
			},
			{
				label = "Collect_Rackmores_Golden_Key",
				along = true,
				note = "Nagas. notinsticky On islands and underwater. notinsticky",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 6161, item = 15881, itemName = "Rackmore's Golden Key", oi = 2, map = 1443, x = 29.2, y = 13.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6161, title = "Claim Rackmore's Treasure!", map = 1443, x = 30.0, y = 8.7, f = "e" },
				},
			},
			{
				note = "Reduces grinding all at once later.",
				goals = {
					{ t = "goto", text = "ding 37", map = 1443, x = 28.4, y = 12.2 },
				},
			},
			{
				note = "Up on the cliff.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1443, x = 40.74, y = 28.95 },
					{ t = "turnin", quest = 6027, title = "Book of the Ancients", npc = 11863, npcName = "Azore Aldamort", map = 1443, x = 38.89, y = 27.17, f = "e" },
				},
			},
			{
				note = "Follow the path through the mountains. Avoid the Valley of Spears.",
				goals = {
					{ t = "turnin", quest = 1384, title = "Raid on the Kolkar", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.22, y = 79.25, f = "e" },
					{ t = "accept", quest = 1370, title = "Stealing Supplies", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.22, y = 79.25, f = "e" },
				},
			},
			{
				note = "Tan bags near buildings. Not all will be clickable. Avoid Magram Pack Runners walking with 2 hyena guards.",
				goals = {
					{ t = "collect", quest = 1370, item = 6069, itemName = "Crudely Dried Meat", count = 6, oi = 1, map = 1443, x = 70.9, y = 75.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1370, title = "Stealing Supplies", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.22, y = 79.25, f = "e" },
					{ t = "accept", quest = 1373, title = "Ongeku", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.22, y = 79.25, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1456, title = "The Karnitol Shipwreck", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.63, f = "e" },
					{ t = "accept", quest = 1457, title = "The Karnitol Shipwreck", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.63, f = "e" },
				},
			},
			{
				label = "Collect_Scorpashi_Venom",
				along = true,
				note = "Scorpions. Shared spawns with basilisks. notinsticky",
				goals = {
					{ t = "collect", quest = 1459, item = 6248, itemName = "Scorpashi Venom", count = 10, oi = 1, map = 1443, x = 67.6, y = 18.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the path to enter Nijel's Point", map = 1443, x = 67.49, y = 15.76 },
					{ t = "turnin", quest = 1459, title = "Reagents for Reclaimers Inc.", npc = 5638, npcName = "Kreldig Ungor", map = 1443, x = 66.2, y = 9.63, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "goto", text = "bank Karnitol's Satchel##6245", map = 1446, x = 52.3, y = 28.91 },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 1112, item = 5800, itemName = "Kravel's Parts", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 1183, item = 5852, itemName = "Fuel Regulator Blueprints", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1112, title = "Parts for Kravel", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1114, title = "Delivery to the Gnomes", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1114, title = "Delivery to the Gnomes", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.06, y = 77.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1115, title = "The Rumormonger", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1183, title = "Goblin Sponsorship", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.18, y = 75.88, f = "e" },
					{ t = "accept", quest = 1186, title = "The Eighteenth Pilot", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.18, y = 75.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1186, title = "The Eighteenth Pilot", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.33, y = 76.09, f = "e" },
					{ t = "accept", quest = 1187, title = "Razzeric's Tweaking", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.33, y = 76.09, f = "e" },
				},
			},
		},
	})
end

