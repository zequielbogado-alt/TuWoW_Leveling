-- TuWoW_Leveling — Guides/Leveling_Alliance_46.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-72-74-part-4",
		pack = "guides",
		title = "Northrend (72-74) (Parte 4/5)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-72-74-part-5",
		author = "TuWoW & Zygor",
		minLevel = 72,
		maxLevel = 74,
		zone = 117,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", target = "Iron Rune Stonecallers and Iron Rune Binders", count = 1, map = 117, x = 65.0, y = 28.5, f = "e" },
					{ t = "collect", item = 33778, itemName = "Book of Runes - Chapter 1", count = 1, map = 117, x = 65.0, y = 28.5, f = "e" },
					{ t = "collect", item = 33779, itemName = "Book of Runes - Chapter 2", count = 1, map = 117, x = 65.0, y = 28.5, f = "e" },
					{ t = "collect", item = 33780, itemName = "Book of Runes - Chapter 3", count = 1, map = 117, x = 65.0, y = 28.5, f = "e" },
					{ t = "collect", quest = 11346, itemName = "The Book of Runes", count = 1, oi = 1, map = 117, x = 65.0, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11346, title = "The Book of Runes", npc = 24328, npcName = "Prospector Belvar", map = 117, x = 62.3, y = 17.2, f = "e" },
					{ t = "accept", quest = 11349, title = "Mastering the Runes", npc = 24328, npcName = "Prospector Belvar", map = 117, x = 62.3, y = 17.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11349, itemName = "Iron Rune Carving Tools", count = 1, oi = 1, map = 117, x = 71.2, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11349, title = "Mastering the Runes", npc = 24328, npcName = "Prospector Belvar", map = 117, x = 62.3, y = 17.2, f = "e" },
					{ t = "accept", quest = 11348, title = "The Rune of Command", npc = 24328, npcName = "Prospector Belvar", map = 117, x = 62.3, y = 17.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11348, target = "Binder Murdis", count = 1, oi = 2, map = 117, x = 71.9, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11348, title = "The Rune of Command", npc = 24328, npcName = "Prospector Belvar", map = 117, x = 62.3, y = 17.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12000, title = "Rifle the Bodies", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Stars' Rest", map = 115, x = 29.2, y = 55.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12166, title = "The Liquid Fire of Elune", npc = 26973, npcName = "Warden Jodi Moonsong", map = 115, x = 29.2, y = 55.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Stars' Rest", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12157, title = "The Lost Courier", npc = 27060, npcName = "Courier Lanson", map = 115, x = 28.8, y = 56.2, f = "e" },
					{ t = "accept", quest = 12171, title = "Of Traitors and Treason", npc = 27060, npcName = "Courier Lanson", map = 115, x = 28.8, y = 56.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12171, title = "Of Traitors and Treason", npc = 26881, npcName = "Palena Silvercloud", map = 115, x = 29.2, y = 55.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 26.3, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Mage Hunter Personal Effects bags", count = 1, map = 115, x = 24.1, y = 53.7, f = "e" },
					{ t = "collect", quest = 12000, itemName = "Moonrest Gardens Plans", count = 1, oi = 1, map = 115, x = 24.1, y = 53.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12000, title = "Rifle the Bodies", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
					{ t = "accept", quest = 12004, title = "Prevent the Accord", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12166, title = "The Liquid Fire of Elune", npc = 26973, npcName = "Warden Jodi Moonsong", map = 115, x = 29.2, y = 55.6, f = "e" },
					{ t = "accept", quest = 12167, title = "Kill the Cultists", npc = 26973, npcName = "Warden Jodi Moonsong", map = 115, x = 29.2, y = 55.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12006, title = "Avenge this Atrocity!", npc = 26501, npcName = "Ethenial Moonshadow", map = 115, x = 24.2, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12006, target = "Blue Dragonflight forces at Moonrest Gardens", count = 15, oi = 1, map = 115, x = 20.9, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12004, itemName = "Wind Trader Mu'fah's Remains", count = 1, oi = 1, map = 115, x = 18.4, y = 58.9, f = "e" },
				},
			},
			{
				note = "Go inside the building to 19.4,58.1",
				goals = {
					{ t = "collect", quest = 12004, itemName = "The Scales of Goramosh", count = 1, oi = 2, map = 115, x = 19.4, y = 58.1, f = "e" },
					{ t = "collect", itemName = "Goramosh's Strange Device", count = 1, map = 115, x = 19.4, y = 58.1, f = "e" },
					{ t = "accept", quest = 12055, title = "A Strange Device", map = 115, x = 19.4, y = 58.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12006, title = "Avenge this Atrocity!", npc = 26501, npcName = "Ethenial Moonshadow", map = 115, x = 24.2, y = 60.1, f = "e" },
					{ t = "accept", quest = 12013, title = "End Arcanimus", npc = 26501, npcName = "Ethenial Moonshadow", map = 115, x = 24.2, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12013, npc = 26370, target = "Arcanimus", count = 1, oi = 1, map = 115, x = 20.0, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12013, title = "End Arcanimus", npc = 26501, npcName = "Ethenial Moonshadow", map = 115, x = 24.2, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12004, title = "Prevent the Accord", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
					{ t = "turnin", quest = 12055, title = "A Strange Device", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
					{ t = "accept", quest = 12060, title = "Projections and Plans", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 24.2, y = 55.6, f = "e" },
				},
			},
			{
				note = "Use your Surge Needle Teleporter to go back down to the ground|goto Dragonblight,22.6,57.0,1.0|use Surge Needle Teleporter##36747|noway|c",
				goals = {
					{ t = "use", item = 36747, itemName = "Surge Needle Teleporter", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12060, title = "Projections and Plans", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
					{ t = "accept", quest = 12065, title = "The Focus on the Beach", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Ley Line Focus Control Ring", count = 1, map = 115, x = 26.4, y = 65.0, f = "e" },
					{ t = "collect", itemName = "Captain Malin's Letter", count = 1, map = 115, x = 26.4, y = 65.0, f = "e" },
					{ t = "accept", quest = 12067, title = "A Letter for Home", map = 115, x = 26.4, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12065, title = "The Focus on the Beach", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
					{ t = "accept", quest = 12083, title = "Atop the Woodlands", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12067, title = "A Letter for Home", npc = 26459, npcName = "Commander Saia Azuresteel", map = 115, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12092, title = "Strengthen the Ancients", npc = 26837, npcName = "Sarendryana", map = 115, x = 28.7, y = 57.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12092, item = 36786, itemName = "Bark of the Walkers", count = 3, map = 115, x = 31.2, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 30.6, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12083, item = 36779, itemName = "Ley Line Focus Control Amulet", count = 1, map = 115, x = 32.2, y = 70.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 32.2, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12092, title = "Strengthen the Ancients", npc = 26837, npcName = "Sarendryana", map = 115, x = 28.7, y = 57.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12083, title = "Atop the Woodlands", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
					{ t = "accept", quest = 12098, title = "Search Indu'le Village", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12167, itemName = "Functional Cultist Suit", count = 5, oi = 1, map = 115, x = 26.4, y = 45.7, f = "e" },
					{ t = "collect", itemName = "The Favor of Zangus", count = 1, map = 115, x = 26.4, y = 45.7, f = "e" },
					{ t = "accept", quest = 12168, title = "The Favor of Zangus", map = 115, x = 26.4, y = 45.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12167, title = "Kill the Cultists", npc = 26973, npcName = "Warden Jodi Moonsong", map = 115, x = 29.2, y = 55.6, f = "e" },
					{ t = "turnin", quest = 12168, title = "The Favor of Zangus", npc = 26973, npcName = "Warden Jodi Moonsong", map = 115, x = 29.2, y = 55.6, f = "e" },
					{ t = "accept", quest = 12169, title = "The High Cultist", npc = 26973, npcName = "Warden Jodi Moonsong", map = 115, x = 29.2, y = 55.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 27.0, y = 50.4, f = "e" },
				},
			},
			{
				note = "Go down into the cave to 28.9,49.7",
				goals = {
					{ t = "kill", quest = 12169, npc = 26655, target = "High Cultist Zangus", count = 1, oi = 1, map = 115, x = 28.9, y = 49.7, f = "e" },
				},
			},
			{
				note = "Go out of the cave to 29.2,55.6",
				goals = {
					{ t = "turnin", quest = 12169, title = "The High Cultist", npc = 26973, npcName = "Warden Jodi Moonsong", map = 115, x = 29.2, y = 55.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12098, title = "Search Indu'le Village", map = 115, x = 40.3, y = 66.9, f = "e" },
					{ t = "accept", quest = 12107, title = "The End of the Line", map = 115, x = 40.3, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 39.8, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 53.0, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Moa'ki", map = 115, x = 48.5, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Moa'ki Harbor", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12117, title = "Travel to Moa'ki Harbor", npc = 26194, npcName = "Elder Ko'nani", map = 115, x = 48.0, y = 74.9, f = "e" },
					{ t = "accept", quest = 11958, title = "Let Nothing Go To Waste", npc = 26194, npcName = "Elder Ko'nani", map = 115, x = 48.0, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11960, title = "Planning for the Future", npc = 26228, npcName = "Trapper Mau'i", map = 115, x = 48.3, y = 74.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Snowfall Glade mobs", count = 1, map = 115, x = 45.3, y = 63.7, f = "e" },
					{ t = "collect", quest = 11958, itemName = "Stolen Moa'ki Goods", count = 6, oi = 1, map = 115, x = 45.3, y = 63.7, f = "e" },
					{ t = "collect", quest = 11960, itemName = "Snowfall Glade Pup", count = 12, oi = 1, map = 115, x = 45.3, y = 63.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11960, title = "Planning for the Future", npc = 26228, npcName = "Trapper Mau'i", map = 115, x = 48.3, y = 74.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11958, title = "Let Nothing Go To Waste", npc = 26194, npcName = "Elder Ko'nani", map = 115, x = 48.0, y = 74.9, f = "e" },
					{ t = "accept", quest = 11959, title = "Slay Loguhn", npc = 26194, npcName = "Elder Ko'nani", map = 115, x = 48.0, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Blood of Loguhn", count = 1, map = 115, x = 46.3, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11959, title = "Slay Loguhn", npc = 26194, npcName = "Elder Ko'nani", map = 115, x = 48.0, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12028, title = "Spiritual Insight", npc = 26595, npcName = "Toalu'u the Mystic", map = 115, x = 49.2, y = 75.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 48.9, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12028, title = "Spiritual Insight", npc = 26595, npcName = "Toalu'u the Mystic", map = 115, x = 49.2, y = 75.6, f = "e" },
					{ t = "accept", quest = 12030, title = "Elder Mana'loa", npc = 26595, npcName = "Toalu'u the Mystic", map = 115, x = 49.2, y = 75.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12009, title = "Tua'kea's Crab Traps", npc = 26245, npcName = "Tua'kea", map = 115, x = 47.7, y = 76.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12009, itemName = "Tua'kea Crab Trap", count = 8, oi = 1, map = 115, x = 46.6, y = 77.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12011, title = "Signs of Big Watery Trouble", map = 115, x = 47.7, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12009, title = "Tua'kea's Crab Traps", npc = 26245, npcName = "Tua'kea", map = 115, x = 47.7, y = 76.6, f = "e" },
					{ t = "turnin", quest = 12011, title = "Signs of Big Watery Trouble", npc = 26245, npcName = "Tua'kea", map = 115, x = 47.7, y = 76.6, f = "e" },
					{ t = "accept", quest = 12016, title = "The Bait", npc = 26245, npcName = "Tua'kea", map = 115, x = 47.7, y = 76.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12016, itemName = "The Flesh of \"Two Huge Pincers\"", count = 1, oi = 1, map = 115, x = 43.7, y = 82.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12016, title = "The Bait", npc = 26245, npcName = "Tua'kea", map = 115, x = 47.7, y = 76.6, f = "e" },
					{ t = "accept", quest = 12017, title = "Meat on the Hook", npc = 26245, npcName = "Tua'kea", map = 115, x = 47.7, y = 76.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 46.7, y = 78.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12017, title = "Meat on the Hook", npc = 26245, npcName = "Tua'kea", map = 115, x = 47.7, y = 76.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12030, title = "Elder Mana'loa", npc = 188419, npcName = "Elder Mana'loa", map = 115, x = 36.4, y = 65.0, f = "e" },
					{ t = "accept", quest = 12031, title = "Freedom for the Lingering", npc = 188419, npcName = "Elder Mana'loa", map = 115, x = 36.4, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Indu'le mobs", count = 1, map = 115, x = 37.2, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12031, title = "Freedom for the Lingering", npc = 188419, npcName = "Elder Mana'loa", map = 115, x = 36.4, y = 65.0, f = "e" },
					{ t = "accept", quest = 12032, title = "Conversing With the Depths", npc = 188419, npcName = "Elder Mana'loa", map = 115, x = 36.4, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 34.3, y = 79.8, f = "e" },
				},
			},
			{
				note = "Follow the path up to 34,83.4",
				goals = {
					{ t = "goto", map = 115, x = 34.0, y = 83.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12032, title = "Conversing With the Depths", npc = 26595, npcName = "Toalu'u the Mystic", map = 115, x = 49.2, y = 75.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12107, title = "The End of the Line", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
					{ t = "accept", quest = 12119, title = "Gaining an Audience", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				note = "Hearth to Moa'ki Harbor|goto Dragonblight,48.2,74.8,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12119, title = "Gaining an Audience", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
					{ t = "accept", quest = 12766, title = "Speak with your Ambassador", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Wyrmrest Temple", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12766, title = "Speak with your Ambassador", npc = 27803, npcName = "Lauriel Trueblade", map = 115, x = 60.0, y = 55.1, f = "e" },
					{ t = "accept", quest = 12460, title = "Report to the Ruby Dragonshrine", npc = 27803, npcName = "Lauriel Trueblade", map = 115, x = 60.0, y = 55.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Wyrmrest Temple", map = 115, x = 60.3, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12458, title = "Seeds of the Lashers", npc = 27785, npcName = "Lord Itharius", map = 115, x = 59.6, y = 54.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12470, title = "Mystery of the Infinite", npc = 27856, npcName = "Chromie", map = 115, x = 60.0, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12447, title = "The Obsidian Dragonshrine", npc = 27765, npcName = "Nalice", map = 115, x = 60.1, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26949, npcName = "Torastrasza", map = 115, x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 63.3, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Emerald Lashers", count = 1, map = 115, x = 63.3, y = 71.0, f = "e" },
					{ t = "collect", quest = 12458, itemName = "Lasher Seed", count = 3, oi = 1, map = 115, x = 63.3, y = 71.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12454, title = "Cycle of Life", npc = 27255, npcName = "Nishera the Garden Keeper", map = 115, x = 63.7, y = 71.9, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-72-74-part-5",
		pack = "guides",
		title = "Northrend (72-74) (Parte 5/5)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 72,
		maxLevel = 74,
		zone = 117,
		version = 1,
		steps = {
			{
				note = "They fly around over your head around the lake",
				goals = {
					{ t = "kill", quest = 12454, target = "Emerald Skytalon", count = 5, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12454, title = "Cycle of Life", npc = 27255, npcName = "Nishera the Garden Keeper", map = 115, x = 63.7, y = 71.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12458, title = "Seeds of the Lashers", npc = 27785, npcName = "Lord Itharius", map = 115, x = 59.6, y = 54.4, f = "e" },
					{ t = "accept", quest = 12459, title = "That Which Creates Can Also Destroy", npc = 27785, npcName = "Lord Itharius", map = 115, x = 59.6, y = 54.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26949, npcName = "Torastrasza", map = 115, x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12460, title = "Report to the Ruby Dragonshrine", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
					{ t = "accept", quest = 12416, title = "Heated Battle", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 52.7, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12416, title = "Heated Battle", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
					{ t = "accept", quest = 12417, title = "Return to the Earth", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 37727, itemName = "Ruby Acorn", count = 6, map = 115, x = 46.7, y = 52.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12417, title = "Return to the Earth", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
					{ t = "accept", quest = 12418, title = "Through Fields of Flame", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
				},
			},
			{
				note = "Go into the valley to 48.2,47.8",
				goals = {
					{ t = "kill", quest = 12418, target = "Frigid Necromancer", count = 6, oi = 1, map = 115, x = 48.2, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 74, f = "e" },
				},
			},
		},
	})
end

