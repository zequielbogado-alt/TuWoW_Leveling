-- TuWoW_Leveling — Guides/Leveling_Horde_19.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-desolace-34-36",
		pack = "guides",
		title = "Desolace",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-stranglethorn-vale-36-37",
		author = "TuWoW & Zygor",
		minLevel = 34,
		maxLevel = 36,
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "Inside the building. Long grind soon.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 3313, npcName = "Trak'gen", map = 1454, x = 48.13, y = 80.54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 20310, itemName = "Flayed Demon Skin", map = 1443, x = 56.2, y = 23.1, f = "e" },
					{ t = "use", item = 20310, itemName = "Flayed Demon Skin" },
					{ t = "accept", quest = 1480, title = "The Corrupter", npc = 4663, npcName = "Burning Blade Augur", map = 1443, x = 57.8, y = 25.4, f = "e" },
				},
			},
			{
				note = "Long grind. Run dungeons, if you prefer.",
				goals = {
					{ t = "goto", text = "ding 35", map = 1443, x = 57.8, y = 25.4 },
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
					{ t = "goto", text = "Follow the path up", map = 1443, x = 56.1, y = 53.66 },
					{ t = "turnin", quest = 5361, title = "Family Tree", npc = 11259, npcName = "Nataka Longhorn", map = 1443, x = 55.41, y = 55.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1432, title = "Alliance Relations", npc = 5641, npcName = "Takata Steelblade", map = 1443, x = 52.57, y = 54.39, f = "e" },
					{ t = "accept", quest = 1433, title = "Alliance Relations", npc = 5641, npcName = "Takata Steelblade", map = 1443, x = 52.57, y = 54.39, f = "e" },
					{ t = "accept", quest = 1434, title = "Befouled by Satyr", npc = 5641, npcName = "Takata Steelblade", map = 1443, x = 52.57, y = 54.39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1433, title = "Alliance Relations", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.24, y = 53.44, f = "e" },
					{ t = "accept", quest = 1435, title = "The Burning of Spirits", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.24, y = 53.44, f = "e" },
					{ t = "turnin", quest = 1480, title = "The Corrupter", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.24, y = 53.44, f = "e" },
					{ t = "accept", quest = 1481, title = "The Corrupter", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.24, y = 53.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1365, title = "Khan Dez'hepah", npc = 5395, npcName = "Felgur Twocuts", map = 1443, x = 56.2, y = 59.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1368, title = "Gelkis Alliance", npc = 5412, npcName = "Gurda Wildmane", map = 1443, x = 56.29, y = 59.68, f = "e" },
				},
			},
			{
				note = "Multiple locations. Inside the building.",
				goals = {
					{ t = "collect", quest = 1365, item = 6066, itemName = "Khan Dez'hepah's Head", oi = 1, map = 1443, x = 74.68, y = 48.84, f = "e" },
				},
			},
			{
				note = "Shared spawns with other satyrs. Careful, stealthed enemies. notinsticky",
				goals = {
					{ t = "collect", quest = 1481, item = 6441, itemName = "Shadowstalker Scalp", oi = 1, map = 1443, x = 72.4, y = 24.2, f = "e" },
				},
			},
			{
				label = "Kill_Hatefury_Enemies",
				along = true,
				note = "Careful, stealthed enemies. notinsticky",
				goals = {
					{ t = "kill", quest = 1434, npc = 4670, target = "Hatefury Rogue", count = 7, oi = 1, map = 1443, x = 72.4, y = 24.2, f = "e" },
					{ t = "kill", quest = 1434, npc = 4672, target = "Hatefury Felsworn", count = 7, oi = 2, map = 1443, x = 72.4, y = 24.2, f = "e" },
					{ t = "kill", quest = 1434, npc = 4673, target = "Hatefury Betrayer", count = 7, oi = 3, map = 1443, x = 72.4, y = 24.2, f = "e" },
					{ t = "kill", quest = 1434, npc = 4675, target = "Hatefury Hellcaller", count = 7, oi = 4, map = 1443, x = 72.4, y = 24.2, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 5501, title = "Bone Collector", npc = 11438, npcName = "Bibbly F'utzbuckle", map = 1443, x = 62.33, y = 38.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1443, x = 55.89, y = 53.49 },
					{ t = "turnin", quest = 1434, title = "Befouled by Satyr", npc = 5641, npcName = "Takata Steelblade", map = 1443, x = 52.57, y = 54.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1481, title = "The Corrupter", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.25, y = 53.45, f = "e" },
					{ t = "accept", quest = 1482, title = "The Corrupter", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.25, y = 53.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1365, title = "Khan Dez'hepah", npc = 5395, npcName = "Felgur Twocuts", map = 1443, x = 56.2, y = 59.56, f = "e" },
					{ t = "accept", quest = 1366, title = "Centaur Bounty", npc = 5395, npcName = "Felgur Twocuts", map = 1443, x = 56.2, y = 59.56, f = "e" },
				},
			},
			{
				note = "Centaurs. Avoid Magram Pack Runners walking with 2 hyena guards.",
				goals = {
					{ t = "collect", quest = 1366, item = 6067, itemName = "Centaur Ear", count = 15, oi = 1, map = 1443, x = 69.0, y = 69.2, f = "e" },
					{ t = "complete", quest = 1368, title = "Gelkis Alliance", note = "Reach Friendly Reputation with Gelkis Clan Centaur", map = 1443, x = 69.0, y = 69.2, f = "e" },
				},
			},
			{
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
				label = "Collect_Kodo_Bones",
				along = true,
				note = "White horned animal skulls. May be attacked. Run away, if needed.",
				goals = {
					{ t = "collect", quest = 5501, item = 13703, itemName = "Kodo Bone", count = 10, oi = 1, map = 1443, x = 54.4, y = 60.3, f = "e" },
				},
			},
			{
				note = "Up on the cliff.",
				goals = {
					{ t = "turnin", quest = 1366, title = "Centaur Bounty", npc = 5395, npcName = "Felgur Twocuts", map = 1443, x = 56.19, y = 59.56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1368, title = "Gelkis Alliance", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.23, y = 79.25, f = "e" },
					{ t = "accept", quest = 1370, title = "Stealing Supplies", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.23, y = 79.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path into Shadowprey Village", map = 1443, x = 26.27, y = 74.83 },
					{ t = "accept", quest = 5381, title = "Hand of Iruxos", npc = 11624, npcName = "Taiga Wisemane", map = 1443, x = 25.81, y = 68.22, f = "e" },
				},
			},
			{
				note = "Taming a temporary pet soon. Learning Claw (Rank 5).",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 5501, title = "Bone Collector", note = "Stable Your Pet", map = 1443, x = 24.9, y = 68.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6143, title = "Other Fish to Fry", npc = 12340, npcName = "Drulzegar Skraghook", map = 1443, x = 23.32, y = 72.87, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 6142, title = "Clam Bait", npc = 12031, npcName = "Mai'Lahii", map = 1443, x = 22.65, y = 71.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Shadowprey Village", map = 1443, x = 21.6, y = 74.13, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on an Scorpashi Lasher. Kill enemies nearby.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 5501, title = "Bone Collector", note = "Learn the Claw (Rank 5) Pet Ability", map = 1443, x = 33.4, y = 77.2, f = "e" },
				},
			},
			{
				note = "Abandon your temporary pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Follow the path into Shadowprey Village", map = 1443, x = 26.27, y = 74.83 },
					{ t = "complete", quest = 5501, title = "Bone Collector", note = "Retrieve Your Pet", map = 1443, x = 24.9, y = 68.67, f = "e" },
				},
			},
			{
				note = "Use Beast Training ability.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 5501, title = "Bone Collector", note = "Teach Claw (Rank 5) to Your Pet" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 5501, title = "Bone Collector", npc = 11438, npcName = "Bibbly F'utzbuckle", map = 1443, x = 62.33, y = 38.98, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "collect", quest = 5741, item = 15750, itemName = "Sceptre of Light", oi = 1, map = 1443, x = 55.17, y = 30.15, f = "e" },
				},
			},
			{
				note = "Kill all enemies in the room first. Inside the building.",
				goals = {
					{ t = "collect", quest = 5381, item = 13542, itemName = "Demon Box", oi = 1, map = 1443, x = 54.97, y = 26.65, f = "e" },
				},
			},
			{
				label = "Collect_Infused_Burning_Gems",
				along = true,
				note = "On Burning Blade enemies. When low health.",
				goals = {
					{ t = "use", item = 6436, itemName = "Burning Gem" },
					{ t = "collect", quest = 1435, item = 6435, itemName = "Infused Burning Gem", count = 15, oi = 1, map = 1443, x = 56.0, y = 29.4, f = "e" },
				},
			},
			{
				note = "Up on the cliff.",
				goals = {
					{ t = "turnin", quest = 5741, title = "Sceptre of Light", npc = 11863, npcName = "Azore Aldamort", map = 1443, x = 38.88, y = 27.17, f = "e" },
					{ t = "accept", quest = 6027, title = "Book of the Ancients", npc = 11863, npcName = "Azore Aldamort", map = 1443, x = 38.88, y = 27.17, f = "e" },
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
				label = "Collect_Softshelled_Clam_Meats",
				along = true,
				note = "Large white clams. Underwater. Crabs.",
				goals = {
					{ t = "collect", item = 15874, itemName = "Soft-shelled Clam", map = 1443, x = 33.5, y = 31.3, f = "e" },
					{ t = "use", item = 15874, itemName = "Soft-shelled Clam" },
					{ t = "collect", quest = 6142, item = 15924, itemName = "Soft-shelled Clam Meat", count = 10, oi = 1, map = 1443, x = 33.0, y = 28.4, f = "e" },
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
				goals = {
					{ t = "goto", text = "ding 36", map = 1443, x = 28.4, y = 12.2 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6027, item = 15803, itemName = "Book of the Ancients", oi = 1, map = 1443, x = 28.19, y = 6.62, f = "e" },
				},
			},
			{
				label = "Collect_Oracle_Crystal",
				along = true,
				note = "Shared spawns with other nagas. notinsticky On islands and underwater. notinsticky",
				goals = {
					{ t = "collect", quest = 1482, item = 6442, itemName = "Oracle Crystal", oi = 1, map = 1443, x = 27.4, y = 8.0, f = "e" },
				},
			},
			{
				label = "Kill_Slitherblade_Myrmidons",
				along = true,
				note = "Shared spawns with other nagas. notinsticky",
				goals = {
					{ t = "kill", quest = 6143, npc = 4714, target = "Slitherblade Myrmidon", count = 7, oi = 1, map = 1443, x = 29.2, y = 13.6, f = "e" },
				},
			},
			{
				label = "Kill_Slitherblade_Sorceresses",
				along = true,
				note = "Shared spawns with other nagas. notinsticky",
				goals = {
					{ t = "kill", quest = 6143, npc = 4712, target = "Slitherblade Sorceress", count = 5, oi = 3, map = 1443, x = 34.4, y = 22.4, f = "e" },
				},
			},
			{
				label = "Kill_Slitherblade_Nagas",
				along = true,
				note = "Shared spawns with other nagas. notinsticky",
				goals = {
					{ t = "kill", quest = 6143, npc = 4711, target = "Slitherblade Naga", count = 7, oi = 2, map = 1443, x = 35.4, y = 21.4, f = "e" },
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
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1443, x = 55.89, y = 53.49 },
					{ t = "turnin", quest = 1435, title = "The Burning of Spirits", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.24, y = 53.44, f = "e" },
					{ t = "turnin", quest = 1482, title = "The Corrupter", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.24, y = 53.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1484, title = "The Corrupter", npc = 4498, npcName = "Maurin Bonesplitter", map = 1443, x = 52.25, y = 53.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1484, title = "The Corrupter", npc = 5641, npcName = "Takata Steelblade", map = 1443, x = 52.57, y = 54.38, f = "e" },
					{ t = "accept", quest = 1436, title = "Alliance Relations", npc = 5641, npcName = "Takata Steelblade", map = 1443, x = 52.57, y = 54.38, f = "e" },
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
					{ t = "turnin", quest = 1370, title = "Stealing Supplies", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.23, y = 79.25, f = "e" },
					{ t = "accept", quest = 1373, title = "Ongeku", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.23, y = 79.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path into Shadowprey Village", map = 1443, x = 26.27, y = 74.83 },
					{ t = "accept", quest = 5763, title = "Hunting in Stranglethorn", npc = 11877, npcName = "Roon Wildmane", map = 1443, x = 25.05, y = 72.28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5381, title = "Hand of Iruxos", npc = 11624, npcName = "Taiga Wisemane", map = 1443, x = 25.81, y = 68.22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6143, title = "Other Fish to Fry", npc = 12340, npcName = "Drulzegar Skraghook", map = 1443, x = 23.32, y = 72.87, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6142, title = "Clam Bait", npc = 12031, npcName = "Mai'Lahii", map = 1443, x = 22.64, y = 71.97, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5883, npcName = "Enyo", map = 1454, x = 38.79, y = 85.65, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 6018, npcName = "Ur'kyo", map = 1454, x = 35.59, y = 87.8, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3328, npcName = "Ormok", map = 1454, x = 43.91, y = 54.63, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3325, npcName = "Mirket", map = 1454, x = 48.62, y = 46.95, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5815, npcName = "Kurgul", map = 1454, x = 47.52, y = 46.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3344, npcName = "Kardris Dreamseeker", map = 1454, x = 38.8, y = 36.38, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 1436, title = "Alliance Relations", npc = 5640, npcName = "Keldran", map = 1454, x = 22.56, y = 52.63, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3352, npcName = "Ormak Grimshot", map = 1454, x = 66.06, y = 18.54, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10088, npcName = "Xao'tsu", map = 1454, x = 66.33, y = 14.82, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3353, npcName = "Grezz Ragefist", map = 1454, x = 79.78, y = 31.42, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 5762, item = 14542, itemName = "Kravel's Crate", map = 1454, x = 49.58, y = 69.12, f = "e" },
				},
			},
		},
	})
end

