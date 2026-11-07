-- TuWoW_Leveling — Guides/Leveling_Alliance_35.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-66-68",
		pack = "guides",
		title = "Levels (66-68) (Parte 1/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-66-68-part-2",
		author = "TuWoW & Zygor",
		minLevel = 66,
		maxLevel = 68,
		zone = 1946,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 9792, title = "A Message to Telaar", npc = 18008, npcName = "Ikuti", map = 1946, x = 41.9, y = 27.2, f = "e" },
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
					{ t = "turnin", quest = 9861, title = "The Howling Wind", npc = 18074, npcName = "Elementalist Morgh", map = 1951, x = 60.5, y = 22.4, f = "e" },
					{ t = "accept", quest = 9862, title = "Murkblood Corrupters", npc = 18074, npcName = "Elementalist Morgh", map = 1951, x = 60.5, y = 22.4, f = "e" },
					{ t = "accept", quest = 9818, title = "The Underneath", npc = 18071, npcName = "Elementalist Untrag", map = 1951, x = 60.5, y = 22.4, f = "e" },
					{ t = "accept", quest = 9800, title = "A Rare Bean", npc = 18073, npcName = "Elementalist Lo'ap", map = 1951, x = 60.5, y = 22.4, f = "e" },
					{ t = "accept", quest = 9815, title = "Muck Diving", npc = 18073, npcName = "Elementalist Lo'ap", map = 1951, x = 60.5, y = 22.4, f = "e" },
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
					{ t = "collect", quest = 9800, itemName = "Digested Caracoli", count = 8, oi = 1, map = 1951, x = 52.1, y = 25.6, f = "e" },
					{ t = "kill", quest = 9858, target = "Talbuk Thorngrazer", count = 12, oi = 1, map = 1951, x = 52.1, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9850, target = "Clefthoof Bull", count = 12, oi = 1, map = 1951, x = 51.6, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9913, title = "The Consortium Needs You!", npc = 18335, npcName = "Consortium Recruiter", map = 1951, x = 51.8, y = 34.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9815, itemName = "Muck-ridden Core", count = 5, oi = 1, map = 1951, x = 41.5, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9862, target = "Murkblood Putrifier", count = 5, oi = 1, map = 1951, x = 33.8, y = 43.7, f = "e" },
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
					{ t = "collect", item = 25416, itemName = "Oshu'gun Crystal Fragment", count = 10, map = 1951, x = 33.4, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9925, target = "Voidspawn", count = 8, oi = 1, map = 1951, x = 30.6, y = 67.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9900, npc = 18298, target = "Gava'xi", count = 1, oi = 1, map = 1951, x = 42.4, y = 73.5, f = "e" },
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
					{ t = "accept", quest = 9956, title = "The Ravaged Caravan", npc = 18416, npcName = "Huntress Kima", map = 1951, x = 54.2, y = 70.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9869, title = "The Throne of the Elements", npc = 18233, npcName = "Elementalist Ioki", map = 1951, x = 55.5, y = 68.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9917, title = "Do My Eyes Deceive Me", npc = 18353, npcName = "Huntress Bintook", map = 1951, x = 55.0, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9936, title = "Wanted: Giselda the Crone", map = 1951, x = 54.6, y = 70.7, f = "e" },
					{ t = "accept", quest = 9940, title = "Wanted: Zorbo the Advisor", map = 1951, x = 54.6, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10476, title = "Fierce Enemies", npc = 18408, npcName = "Warden Moi'bff Jill", map = 1951, x = 54.8, y = 71.0, f = "e" },
					{ t = "turnin", quest = 9792, title = "A Message to Telaar", npc = 18097, npcName = "Nahuud", map = 1951, x = 54.8, y = 71.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9874, title = "Stopping the Spread", npc = 18222, npcName = "Otonbu the Sage", map = 1951, x = 54.5, y = 72.2, f = "e" },
					{ t = "accept", quest = 9878, title = "Solving the Problem", npc = 18224, npcName = "Poli'lukluk the Wiser", map = 1951, x = 54.5, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Telaar", map = 1951, x = 54.2, y = 75.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10109, title = "I Must Have Them!", npc = 19035, npcName = "Wazat", map = 1951, x = 61.7, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9917, itemName = "Boulderfist Plans", count = 1, oi = 1, map = 1951, x = 63.1, y = 73.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9819, target = "Tortured Earth Spirit", count = 10, oi = 1, map = 1951, x = 65.4, y = 70.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9936, target = "Kil'sorrow Agent", count = 10, oi = 2, map = 1951, x = 67.9, y = 79.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9936, npc = 18391, target = "Giselda the Crone", count = 1, oi = 1, map = 1951, x = 71.1, y = 82.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9923, title = "HELP!", npc = 18369, npcName = "Corki", map = 1951, x = 72.6, y = 70.7, f = "e" },
					{ t = "collect", itemName = "Boulderfist Key", count = 1, map = 1951, x = 72.6, y = 70.7, f = "e" },
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
					{ t = "turnin", quest = 9869, title = "The Throne of the Elements", npc = 18072, npcName = "Elementalist Sharvak", map = 1951, x = 60.5, y = 22.4, f = "e" },
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
					{ t = "collect", quest = 9821, itemName = "Enraged Crusher Core", count = 10, oi = 1, map = 1951, x = 52.0, y = 20.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9940, target = "Warmaul Shaman", count = 5, oi = 2, map = 1951, x = 48.3, y = 21.5, f = "e" },
					{ t = "kill", quest = 9940, target = "Warmaul Reaver", count = 5, oi = 3, map = 1951, x = 48.3, y = 21.5, f = "e" },
					{ t = "collect", quest = 10476, itemName = "Obsidian Warbeads", count = 10, oi = 1, map = 1951, x = 48.3, y = 21.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9940, npc = 18413, target = "Zorbo the Advisor", count = 1, oi = 1, map = 1951, x = 46.5, y = 18.2, f = "e" },
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
					{ t = "collect", quest = 9956, itemName = "Telaar Supply Crate", count = 10, oi = 1, map = 1951, x = 27.9, y = 29.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9878, target = "Murkblood Scavenger", count = 10, oi = 1, map = 1951, x = 29.5, y = 43.5, f = "e" },
					{ t = "kill", quest = 9878, target = "Murkblood Raider", count = 5, oi = 2, map = 1951, x = 29.5, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1951, x = 33.2, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9810, target = "Lake Surger", count = 8, oi = 2, map = 1951, x = 33.8, y = 48.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9810, npc = 18145, target = "Watoosun's Polluted Essence", count = 1, oi = 1, map = 1951, x = 33.1, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9849, target = "Minion of Gurok", count = 30, oi = 1, map = 1951, x = 27.9, y = 77.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9878, title = "Solving the Problem", npc = 18224, npcName = "Poli'lukluk the Wiser", map = 1951, x = 54.5, y = 72.2, f = "e" },
					{ t = "turnin", quest = 9874, title = "Stopping the Spread", npc = 18222, npcName = "Otonbu the Sage", map = 1951, x = 54.5, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9956, title = "The Ravaged Caravan", npc = 18416, npcName = "Huntress Kima", map = 1951, x = 54.2, y = 70.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9923, title = "HELP!", npc = 18183, npcName = "Arechron", map = 1951, x = 55.5, y = 68.8, f = "e" },
					{ t = "accept", quest = 9924, title = "Corki's Gone Missing Again!", npc = 18183, npcName = "Arechron", map = 1951, x = 55.5, y = 68.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9917, title = "Do My Eyes Deceive Me", npc = 18353, npcName = "Huntress Bintook", map = 1951, x = 55.0, y = 70.5, f = "e" },
					{ t = "accept", quest = 9918, title = "Not On My Watch!", npc = 18353, npcName = "Huntress Bintook", map = 1951, x = 55.0, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9936, title = "Wanted: Giselda the Crone", npc = 18408, npcName = "Warden Moi'bff Jill", map = 1951, x = 54.8, y = 71.0, f = "e" },
					{ t = "turnin", quest = 9940, title = "Wanted: Zorbo the Advisor", npc = 18408, npcName = "Warden Moi'bff Jill", map = 1951, x = 54.8, y = 71.0, f = "e" },
					{ t = "turnin", quest = 10476, title = "Fierce Enemies", npc = 18408, npcName = "Warden Moi'bff Jill", map = 1951, x = 54.8, y = 71.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10109, title = "I Must Have Them!", npc = 19035, npcName = "Wazat", map = 1951, x = 61.7, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1951, x = 62.7, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9918, title = "Not On My Watch!", npc = 18353, npcName = "Huntress Bintook", map = 1951, x = 55.0, y = 70.5, f = "e" },
					{ t = "accept", quest = 9920, title = "Mo'mor the Breaker", npc = 18353, npcName = "Huntress Bintook", map = 1951, x = 55.0, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9920, title = "Mo'mor the Breaker", npc = 18223, npcName = "Mo'mor the Breaker", map = 1951, x = 54.5, y = 72.2, f = "e" },
					{ t = "accept", quest = 9921, title = "The Ruins of Burning Blade", npc = 18223, npcName = "Mo'mor the Breaker", map = 1951, x = 54.5, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9921, target = "Boulderfist Crusher", count = 8, oi = 1, map = 1951, x = 72.9, y = 69.8, f = "e" },
					{ t = "kill", quest = 9921, target = "Boulderfist Mystic", count = 8, oi = 2, map = 1951, x = 72.9, y = 69.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9921, title = "The Ruins of Burning Blade", npc = 18223, npcName = "Mo'mor the Breaker", map = 1951, x = 54.5, y = 72.2, f = "e" },
					{ t = "accept", quest = 9922, title = "The Twin Clefts of Nagrand", npc = 18223, npcName = "Mo'mor the Breaker", map = 1951, x = 54.5, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9922, target = "Boulderfist Warrior", count = 10, oi = 1, map = 1951, x = 40.7, y = 35.6, f = "e" },
					{ t = "kill", quest = 9922, target = "Boulderfist Mage", count = 10, oi = 2, map = 1951, x = 40.7, y = 35.6, f = "e" },
					{ t = "collect", quest = 9924, item = 25509, itemName = "Northwind Cleft Key", count = 1, map = 1951, x = 40.7, y = 35.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1951, x = 39.3, y = 27.5, f = "e" },
				},
			},
			{
				note = "Go outside to 54.5,72.2",
				goals = {
					{ t = "turnin", quest = 9922, title = "The Twin Clefts of Nagrand", npc = 18223, npcName = "Mo'mor the Breaker", map = 1951, x = 54.5, y = 72.2, f = "e" },
					{ t = "accept", quest = 10108, title = "Diplomatic Measures", npc = 18223, npcName = "Mo'mor the Breaker", map = 1951, x = 54.5, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9924, title = "Corki's Gone Missing Again!", npc = 18183, npcName = "Arechron", map = 1951, x = 55.5, y = 68.8, f = "e" },
				},
			},
			{
				note = "The path up to Lantresor of the Blade starts here|goto Nagrand,73.8,68.1,0.5|noway|c",
				goals = {
					{ t = "goto", map = 1951, x = 73.8, y = 68.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10108, title = "Diplomatic Measures", npc = 18261, npcName = "Lantressor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
					{ t = "accept", quest = 9928, title = "Armaments for Deception", npc = 18261, npcName = "Lantressor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
					{ t = "accept", quest = 9927, title = "Ruthless Cunning", npc = 18261, npcName = "Lantressor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9928, itemName = "Kil'sorrow Armaments", count = 10, oi = 1, map = 1951, x = 71.4, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9928, title = "Armaments for Deception", npc = 18261, npcName = "Lantresor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
					{ t = "turnin", quest = 9927, title = "Ruthless Cunning", npc = 18261, npcName = "Lantresor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
					{ t = "accept", quest = 9931, title = "Returning the Favor", npc = 18261, npcName = "Lantresor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
					{ t = "accept", quest = 9932, title = "Body of Evidence", npc = 18261, npcName = "Lantresor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9849, title = "Shattering the Veil", npc = 18099, npcName = "Gordawg", map = 1951, x = 61.8, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9810, title = "The Spirit Polluted", npc = 18073, npcName = "Elementalist Lo'ap", map = 1951, x = 60.5, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Warmaul ogres", count = 10, map = 1951, x = 46.5, y = 24.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9931, title = "Returning the Favor", npc = 18261, npcName = "Lantresor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
					{ t = "turnin", quest = 9932, title = "Body of Evidence", npc = 18261, npcName = "Lantresor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
					{ t = "accept", quest = 9933, title = "Message to Telaar", npc = 18261, npcName = "Lantresor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9933, title = "Message to Telaar", npc = 18183, npcName = "Arechron", map = 1951, x = 55.5, y = 68.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9794, title = "No Time for Curiosity", npc = 18019, npcName = "Timothy Daniels", map = 1946, x = 41.2, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10927, title = "Killing the Crawlers", npc = 22488, npcName = "Sentinel Moonwhisper", map = 1949, x = 32.2, y = 91.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 34.5, y = 87.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9794, title = "No Time for Curiosity", npc = 18098, npcName = "Kialon Nightblade", map = 1949, x = 36.0, y = 67.8, f = "e" },
				},
			},
		},
	})
end

