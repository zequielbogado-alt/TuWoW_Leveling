-- TuWoW_Leveling — Guides/Leveling_Horde_35.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-outland-66-68",
		pack = "guides",
		title = "Outland (66-68) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-outland-66-68-part-2",
		author = "TuWoW & Zygor",
		minLevel = 66,
		maxLevel = 68,
		zone = 1952,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 10448, title = "Report to Stonebreaker Camp", npc = 21007, npcName = "Sergeant Chawni", map = 1952, x = 63.3, y = 42.4, f = "e" },
					{ t = "accept", quest = 9997, title = "Attack on Firewing Point", npc = 21007, npcName = "Sergeant Chawni", map = 1952, x = 63.3, y = 42.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10023, itemName = "Ironjaw's Pelt", count = 1, oi = 1, map = 1952, x = 66.3, y = 34.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9997, target = "Firewing Defender", count = 10, oi = 1, map = 1952, x = 68.1, y = 36.5, f = "e" },
					{ t = "kill", quest = 9997, target = "Firewing Bloodwarder", count = 10, oi = 2, map = 1952, x = 68.1, y = 36.5, f = "e" },
					{ t = "kill", quest = 9997, target = "Firewing Warlock", count = 10, oi = 3, map = 1952, x = 68.1, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9997, title = "Attack on Firewing Point", npc = 21007, npcName = "Sergeant Chawni", map = 1952, x = 63.3, y = 42.4, f = "e" },
					{ t = "accept", quest = 10447, title = "The Final Code", npc = 21007, npcName = "Sergeant Chawni", map = 1952, x = 63.3, y = 42.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 73.3, y = 34.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10447, item = 29912, itemName = "The Final Code", count = 1, map = 1952, x = 73.9, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 74.2, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 71.3, y = 37.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10447, title = "The Final Code", npc = 18447, npcName = "Tooki", map = 1952, x = 50.0, y = 45.9, f = "e" },
					{ t = "accept", quest = 10006, title = "Letting Earthbinder Tavgren Know", npc = 18447, npcName = "Tooki", map = 1952, x = 50.0, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10023, title = "Patriarch Ironjaw", npc = 18384, npcName = "Malukaz", map = 1952, x = 50.2, y = 46.4, f = "e" },
					{ t = "accept", quest = 10791, title = "Welcoming the Wolf Spirit", npc = 18384, npcName = "Malukaz", map = 1952, x = 50.2, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10791, title = "Welcoming the Wolf Spirit", npc = 18384, npcName = "Malukaz", map = 1952, x = 50.2, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10006, title = "Letting Earthbinder Tavgren Know", npc = 18446, npcName = "Earthbinder Tavgren", map = 1952, x = 44.3, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9797, title = "Reinforcements for Garadar", npc = 18091, npcName = "Messenger Gazgrigg", map = 1946, x = 32.0, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9854, title = "Windroc Mastery (1)", npc = 18200, npcName = "Shado \"Fitz\" Farstrider", map = 1951, x = 71.6, y = 40.5, f = "e" },
					{ t = "accept", quest = 9789, title = "Clefthoof Mastery (1)", npc = 18180, npcName = "Hemet Nesingwary", map = 1951, x = 71.6, y = 40.5, f = "e" },
					{ t = "accept", quest = 9857, title = "Talbuk Mastery (1)", npc = 18218, npcName = "Harold Lane", map = 1951, x = 71.6, y = 40.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9857, target = "Talbuk Stag", count = 12, oi = 1, map = 1951, x = 72.2, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9854, target = "Windroc", count = 12, oi = 1, map = 1951, x = 66.5, y = 39.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9789, target = "Clefthoof", count = 12, oi = 1, map = 1951, x = 64.0, y = 45.1, f = "e" },
					{ t = "collect", quest = 9914, item = 25463, itemName = "Pair of Ivory Tusks", count = 3, map = 1951, x = 64.0, y = 45.1, f = "e" },
					{ t = "collect", itemName = "Howling Wind", count = 1, map = 1951, x = 64.0, y = 45.1, f = "e" },
					{ t = "accept", quest = 9861, title = "The Howling Wind", map = 1951, x = 64.0, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9854, title = "Windroc Mastery (1)", npc = 18200, npcName = "Shado \"Fitz\" Farstrider", map = 1951, x = 71.6, y = 40.5, f = "e" },
					{ t = "accept", quest = 9855, title = "Windroc Mastery (2)", npc = 18200, npcName = "Shado \"Fitz\" Farstrider", map = 1951, x = 71.6, y = 40.5, f = "e" },
					{ t = "turnin", quest = 9789, title = "Clefthoof Mastery (1)", npc = 18180, npcName = "Hemet Nesingwary", map = 1951, x = 71.6, y = 40.5, f = "e" },
					{ t = "accept", quest = 9850, title = "Clefthoof Mastery (2)", npc = 18180, npcName = "Hemet Nesingwary", map = 1951, x = 71.6, y = 40.5, f = "e" },
					{ t = "turnin", quest = 9857, title = "Talbuk Mastery (1)", npc = 18218, npcName = "Harold Lane", map = 1951, x = 71.6, y = 40.5, f = "e" },
					{ t = "accept", quest = 9858, title = "Talbuk Mastery (2)", npc = 18218, npcName = "Harold Lane", map = 1951, x = 71.6, y = 40.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Garadar", text = "Garadar", map = 1951, x = 57.2, y = 35.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9944, title = "Missing Mag'hari Procession", npc = 18302, npcName = "Matron Drakia", map = 1951, x = 57.1, y = 34.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Garadar", text = "Garadar", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9797, title = "Reinforcements for Garadar", npc = 18090, npcName = "Captain Kroghan", map = 1951, x = 55.4, y = 37.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9888, title = "The Impotent Leader", npc = 18106, npcName = "Jorin Deadeye", map = 1951, x = 55.5, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10479, title = "Proving Your Strength", npc = 18407, npcName = "Warden Bullrok", map = 1951, x = 55.8, y = 38.0, f = "e" },
					{ t = "accept", quest = 9935, title = "Wanted: Giselda the Crone", npc = 18407, npcName = "Warden Bullrok", map = 1951, x = 55.8, y = 38.0, f = "e" },
					{ t = "accept", quest = 9939, title = "Wanted: Zorbo the Advisor", npc = 18407, npcName = "Warden Bullrok", map = 1951, x = 55.8, y = 38.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9870, title = "The Throne of the Elements", npc = 18234, npcName = "Elementalist Yal'hah", map = 1951, x = 55.0, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9863, title = "Vile Idolatry", npc = 18066, npcName = "Farseer Kurkush", map = 1951, x = 54.7, y = 39.7, f = "e" },
					{ t = "accept", quest = 9864, title = "The Missing War Party", npc = 18067, npcName = "Farseer Corhuk", map = 1951, x = 54.7, y = 39.7, f = "e" },
					{ t = "accept", quest = 9867, title = "Murkblood Leaders...", npc = 18068, npcName = "Farseer Margadesh", map = 1951, x = 54.7, y = 39.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9913, title = "The Consortium Needs You!", npc = 18335, npcName = "the Consortium Recruiter", map = 1951, x = 51.9, y = 34.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9861, title = "The Howling Wind", npc = 18074, npcName = "Elementalist Morgh", map = 1951, x = 60.5, y = 22.4, f = "e" },
					{ t = "accept", quest = 9862, title = "Murkblood Corrupters", npc = 18074, npcName = "Elementalist Morgh", map = 1951, x = 60.5, y = 22.4, f = "e" },
					{ t = "turnin", quest = 9870, title = "The Throne of the Elements", npc = 18072, npcName = "Elementalist Sharvak", map = 1951, x = 60.5, y = 22.4, f = "e" },
					{ t = "accept", quest = 9800, title = "A Rare Bean", npc = 18073, npcName = "Elementalist Lo'ap", map = 1951, x = 60.5, y = 22.4, f = "e" },
					{ t = "accept", quest = 9815, title = "Muck Diving", npc = 18073, npcName = "Elementalist Lo'ap", map = 1951, x = 60.5, y = 22.4, f = "e" },
					{ t = "accept", quest = 9818, title = "The Underneath", npc = 18071, npcName = "Elementalist Untrag", map = 1951, x = 60.5, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9818, title = "The Underneath", npc = 18099, npcName = "Gordawg", map = 1951, x = 61.8, y = 24.4, f = "e" },
					{ t = "accept", quest = 9819, title = "The Tortured Earth", npc = 18099, npcName = "Gordawg", map = 1951, x = 61.8, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9858, target = "Talbuk Thorngrazer", count = 12, oi = 1, map = 1951, x = 52.1, y = 25.6, f = "e" },
					{ t = "collect", quest = 9800, itemName = "Digested Caracoli", count = 8, oi = 1, map = 1951, x = 52.1, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9850, target = "Clefthoof Bull", count = 12, oi = 1, map = 1951, x = 51.6, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9939, target = "Zorbo the Advisor", count = 1, oi = 1, map = 1951, x = 46.5, y = 18.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9939, target = "Warmaul Shaman", count = 5, oi = 2, map = 1951, x = 48.3, y = 21.5, f = "e" },
					{ t = "kill", quest = 9939, target = "Warmaul Reaver", count = 5, oi = 3, map = 1951, x = 48.3, y = 21.5, f = "e" },
					{ t = "collect", quest = 10479, itemName = "Obsidian Warbeads", count = 10, oi = 1, map = 1951, x = 48.3, y = 21.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9864, title = "The Missing War Party", npc = 18229, npcName = "Saurfang the Younger", map = 1951, x = 32.4, y = 36.1, f = "e" },
					{ t = "accept", quest = 9865, title = "Once Were Warriors", npc = 18229, npcName = "Saurfang the Younger", map = 1951, x = 32.4, y = 36.1, f = "e" },
					{ t = "turnin", quest = 9944, title = "Missing Mag'hari Procession", npc = 18414, npcName = "Elder Yorley", map = 1951, x = 32.4, y = 36.1, f = "e" },
					{ t = "accept", quest = 9945, title = "War on the Warmaul", npc = 18414, npcName = "Elder Yorley", map = 1951, x = 32.4, y = 36.1, f = "e" },
					{ t = "accept", quest = 9948, title = "Finding the Survivors", npc = 18415, npcName = "Elder Ungriz", map = 1951, x = 32.4, y = 36.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1951, x = 29.2, y = 31.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9945, target = "Warmaul Brute", count = 8, oi = 1, map = 1951, x = 23.4, y = 29.2, f = "e" },
					{ t = "kill", quest = 9945, target = "Warmaul Warlock", count = 8, oi = 2, map = 1951, x = 23.4, y = 29.2, f = "e" },
					{ t = "collect", quest = 9948, item = 25604, itemName = "Warmaul Prison Key", count = 5, map = 1951, x = 23.4, y = 29.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9945, title = "War on the Warmaul", npc = 18414, npcName = "Elder Yorley", map = 1951, x = 32.4, y = 36.1, f = "e" },
					{ t = "turnin", quest = 9948, title = "Finding the Survivors", npc = 18415, npcName = "Elder Ungriz", map = 1951, x = 32.4, y = 36.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9815, itemName = "Muck-ridden Core", count = 5, oi = 1, map = 1951, x = 41.5, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9865, target = "Murkblood Scavenger", count = 20, oi = 1, map = 1951, x = 32.0, y = 39.1, f = "e" },
					{ t = "kill", quest = 9865, target = "Murkblood Raider", count = 10, oi = 2, map = 1951, x = 32.0, y = 39.1, f = "e" },
					{ t = "kill", quest = 9862, target = "Murkblood Putrifier", count = 5, oi = 1, map = 1951, x = 32.0, y = 39.1, f = "e" },
					{ t = "kill", target = "Murkbloods around this area", count = 1, map = 1951, x = 32.0, y = 39.1, f = "e" },
					{ t = "collect", quest = 9863, itemName = "Murkblood Idol", count = 10, oi = 1, map = 1951, x = 32.0, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9867, itemName = "Head of Ortor of Murkblood", count = 1, oi = 1, map = 1951, x = 30.9, y = 42.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9865, title = "Once Were Warriors", npc = 18229, npcName = "Saurfang the Younger", map = 1951, x = 32.4, y = 36.1, f = "e" },
					{ t = "accept", quest = 9866, title = "He Will Walk The Earth...", npc = 18229, npcName = "Saurfang the Younger", map = 1951, x = 32.4, y = 36.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9900, title = "Gava'xi", npc = 18276, npcName = "Zerid", map = 1951, x = 30.8, y = 58.1, f = "e" },
					{ t = "accept", quest = 9925, title = "Matters of Security", npc = 18276, npcName = "Zerid", map = 1951, x = 30.8, y = 58.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9913, title = "The Consortium Needs You!", npc = 18265, npcName = "Gezhe", map = 1951, x = 31.4, y = 57.8, f = "e" },
					{ t = "accept", quest = 9882, title = "Stealing from Thieves", npc = 18265, npcName = "Gezhe", map = 1951, x = 31.4, y = 57.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9914, title = "A Head Full of Ivory", npc = 18333, npcName = "Shadrek", map = 1951, x = 31.8, y = 56.8, f = "e" },
					{ t = "turnin", quest = 9914, title = "A Head Full of Ivory", npc = 18333, npcName = "Shadrek", map = 1951, x = 31.8, y = 56.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9882, itemName = "Oshu'gun Crystal Fragment", count = 10, oi = 1, map = 1951, x = 33.4, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9925, target = "Voidspawn", count = 8, oi = 1, map = 1951, x = 30.6, y = 67.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9900, target = "Gava'xi", count = 1, oi = 1, map = 1951, x = 42.4, y = 73.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9855, target = "Ravenous Windroc", count = 12, oi = 1, map = 1951, x = 48.4, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9900, title = "Gava'xi", npc = 18276, npcName = "Zerid", map = 1951, x = 30.8, y = 58.1, f = "e" },
					{ t = "turnin", quest = 9925, title = "Matters of Security", npc = 18276, npcName = "Zerid", map = 1951, x = 30.8, y = 58.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9882, title = "Stealing from Thieves", npc = 18265, npcName = "Gezhe", map = 1951, x = 31.4, y = 57.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10109, title = "I Must Have Them!", npc = 19035, npcName = "Wazat", map = 1951, x = 61.7, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9819, target = "Tortured Earth Spirit", count = 10, oi = 1, map = 1951, x = 65.4, y = 70.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Dust Howlers", count = 1, map = 1951, x = 69.4, y = 56.9, f = "e" },
					{ t = "collect", quest = 10109, itemName = "Air Elemental Gas", count = 3, oi = 1, map = 1951, x = 69.4, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10109, title = "I Must Have Them!", npc = 19035, npcName = "Wazat", map = 1951, x = 61.7, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9888, title = "The Impotent Leader", npc = 18273, npcName = "Kilrath", map = 1952, x = 19.8, y = 60.9, f = "e" },
					{ t = "accept", quest = 9889, title = "Don't Kill the Fat One", npc = 18273, npcName = "Kilrath", map = 1952, x = 19.8, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9889, target = "Boulderfist Invader", count = 10, oi = 2, map = 1952, x = 20.0, y = 63.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9889, title = "Don't Kill the Fat One", npc = 18262, npcName = "Unkor the Ruthless", map = 1952, x = 20.0, y = 63.1, f = "e" },
					{ t = "accept", quest = 9890, title = "Success!", npc = 18262, npcName = "Unkor the Ruthless", map = 1952, x = 20.0, y = 63.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9890, title = "Success!", npc = 18273, npcName = "Kilrath", map = 1952, x = 19.8, y = 60.9, f = "e" },
					{ t = "accept", quest = 9891, title = "Because Kilrath is a Coward", npc = 18273, npcName = "Kilrath", map = 1952, x = 19.8, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 67, f = "e" },
				},
			},
			{
				note = "Hearth to Garadar|goto Nagrand,55.0,36.8,6|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9891, title = "Because Kilrath is a Coward", npc = 18106, npcName = "Jorin Deadeye", map = 1951, x = 55.5, y = 37.6, f = "e" },
					{ t = "accept", quest = 9906, title = "Message in a Battle", npc = 18106, npcName = "Jorin Deadeye", map = 1951, x = 55.5, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9939, title = "Wanted: Zorbo the Advisor", npc = 18407, npcName = "Warden Bullrok", map = 1951, x = 55.8, y = 38.0, f = "e" },
					{ t = "turnin", quest = 10479, title = "Proving Your Strength", npc = 18407, npcName = "Warden Bullrok", map = 1951, x = 55.8, y = 38.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9910, title = "Standards and Practices", npc = 18300, npcName = "Elkay'gan the Mystic", map = 1951, x = 55.5, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9863, title = "Vile Idolatry", npc = 18066, npcName = "Farseer Kurkush", map = 1951, x = 54.7, y = 39.7, f = "e" },
					{ t = "turnin", quest = 9866, title = "He Will Walk The Earth...", npc = 18067, npcName = "Farseer Corhuk", map = 1951, x = 54.7, y = 39.7, f = "e" },
					{ t = "turnin", quest = 9867, title = "Murkblood Leaders...", npc = 18068, npcName = "Farseer Margadesh", map = 1951, x = 54.7, y = 39.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9858, title = "Talbuk Mastery (2)", npc = 18218, npcName = "Harold Lane", map = 1951, x = 71.6, y = 40.5, f = "e" },
					{ t = "turnin", quest = 9850, title = "Clefthoof Mastery (2)", npc = 18180, npcName = "Hemet Nesingwary", map = 1951, x = 71.6, y = 40.5, f = "e" },
					{ t = "turnin", quest = 9855, title = "Windroc Mastery (2)", npc = 18200, npcName = "Shado \"Fitz\" Farstrider", map = 1951, x = 71.6, y = 40.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9819, title = "The Tortured Earth", npc = 18099, npcName = "Gordawg", map = 1951, x = 61.8, y = 24.4, f = "e" },
					{ t = "accept", quest = 9821, title = "Eating Damnation", npc = 18099, npcName = "Gordawg", map = 1951, x = 61.8, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9800, title = "A Rare Bean", npc = 18073, npcName = "Elementalist Lo'ap", map = 1951, x = 60.5, y = 22.4, f = "e" },
					{ t = "accept", quest = 9804, title = "Agitated Spirits of Skysong", npc = 18073, npcName = "Elementalist Lo'ap", map = 1951, x = 60.5, y = 22.4, f = "e" },
					{ t = "turnin", quest = 9815, title = "Muck Diving", npc = 18073, npcName = "Elementalist Lo'ap", map = 1951, x = 60.5, y = 22.4, f = "e" },
					{ t = "turnin", quest = 9862, title = "Murkblood Corrupters", npc = 18074, npcName = "Elementalist Morgh", map = 1951, x = 60.5, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9804, target = "Lake Spirit", count = 8, oi = 1, map = 1951, x = 59.7, y = 27.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9804, title = "Agitated Spirits of Skysong", npc = 18073, npcName = "Elementalist Lo'ap", map = 1951, x = 60.5, y = 22.4, f = "e" },
					{ t = "accept", quest = 9805, title = "Blessing of Incineratus", npc = 18073, npcName = "Elementalist Lo'ap", map = 1951, x = 60.5, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Enraged Crushers", count = 1, map = 1951, x = 52.0, y = 20.2, f = "e" },
					{ t = "collect", quest = 9821, itemName = "Enraged Crusher Core", count = 10, oi = 1, map = 1951, x = 52.0, y = 20.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9821, title = "Eating Damnation", npc = 18099, npcName = "Gordawg", map = 1951, x = 61.8, y = 24.4, f = "e" },
					{ t = "accept", quest = 9849, title = "Shattering the Veil", npc = 18099, npcName = "Gordawg", map = 1951, x = 61.8, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1951, x = 70.8, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1951, x = 72.4, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1951, x = 72.8, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1951, x = 71.2, y = 53.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9805, title = "Blessing of Incineratus", npc = 18073, npcName = "Elementalist Lo'ap", map = 1951, x = 60.5, y = 22.4, f = "e" },
					{ t = "accept", quest = 9810, title = "The Spirit Polluted", npc = 18073, npcName = "Elementalist Lo'ap", map = 1951, x = 60.5, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1951, x = 72.1, y = 69.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1951, x = 74.7, y = 69.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1951, x = 75.8, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9906, target = "Boulderfist Mystic", count = 8, oi = 1, map = 1951, x = 72.9, y = 69.8, f = "e" },
					{ t = "kill", quest = 9906, target = "Boulderfist Crusher", count = 8, oi = 2, map = 1951, x = 72.9, y = 69.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9906, title = "Message in a Battle", npc = 18106, npcName = "Jorin Deadeye", map = 1951, x = 55.5, y = 37.6, f = "e" },
					{ t = "accept", quest = 9907, title = "An Audacious Advance", npc = 18106, npcName = "Jorin Deadeye", map = 1951, x = 55.5, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9910, title = "Standards and Practices", npc = 18300, npcName = "Elkay'gan the Mystic", map = 1951, x = 55.5, y = 37.6, f = "e" },
					{ t = "accept", quest = 9916, title = "Bleeding Hollow Supply Crates", npc = 18300, npcName = "Elkay'gan the Mystic", map = 1951, x = 55.5, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9907, target = "Boulderfist Warrior", count = 10, oi = 1, map = 1951, x = 40.8, y = 31.5, f = "e" },
					{ t = "kill", quest = 9907, target = "Boulderfist Mage", count = 10, oi = 2, map = 1951, x = 40.8, y = 31.5, f = "e" },
					{ t = "collect", quest = 9916, itemName = "Bleeding Hollow Supply Crate", count = 10, oi = 1, map = 1951, x = 40.8, y = 31.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9810, target = "Lake Surger", count = 8, oi = 2, map = 1951, x = 33.8, y = 48.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9810, target = "Watoosun's Polluted Essence", count = 1, oi = 1, map = 1951, x = 33.1, y = 50.8, f = "e" },
				},
			},
		},
	})
end

