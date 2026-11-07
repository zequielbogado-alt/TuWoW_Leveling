-- TuWoW_Leveling — Guides/Leveling_Horde_46.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-72-74-part-3",
		pack = "guides",
		title = "Northrend (72-74) (Parte 3/4)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-72-74-part-4",
		author = "TuWoW & Zygor",
		minLevel = 73,
		maxLevel = 74,
		zone = 117,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11275, title = "Making the Horn", npc = 24123, npcName = "Nokoma Snowseer", map = 117, x = 49.3, y = 12.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Camp Winterhoof", text = "Camp Winterhoof", map = 117, x = 49.6, y = 11.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11271, title = "Hasty Preparations", npc = 24127, npcName = "Ahota Whitefrost", map = 117, x = 48.4, y = 11.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12566, title = "Help for Camp Winterhoof", npc = 24129, npcName = "Chieftain Ashtotem", map = 117, x = 48.0, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11271, itemName = "Spotted Hippogryph Down", count = 10, oi = 1, map = 117, x = 50.9, y = 11.0, f = "e" },
					{ t = "kill", target = "Frosthorn Rams", count = 1, map = 117, x = 50.9, y = 11.0, f = "e" },
					{ t = "collect", quest = 11275, itemName = "Undamaged Ram Horn", count = 6, oi = 1, map = 117, x = 50.9, y = 11.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11311, target = "Mountain Elementals", count = 8, oi = 1, map = 117, x = 52.5, y = 6.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11271, title = "Hasty Preparations", npc = 24127, npcName = "Ahota Whitefrost", map = 117, x = 48.4, y = 11.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11311, title = "Suppressing the Elements", npc = 24256, npcName = "Wind Tamer Kagan", map = 117, x = 48.9, y = 12.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11275, title = "Making the Horn", npc = 24123, npcName = "Nokoma Snowseer", map = 117, x = 49.3, y = 12.0, f = "e" },
					{ t = "accept", quest = 11281, title = "Mimicking Nature's Call", npc = 24123, npcName = "Nokoma Snowseer", map = 117, x = 49.3, y = 12.0, f = "e" },
					{ t = "accept", quest = 11312, title = "The Frozen Glade", npc = 24123, npcName = "Nokoma Snowseer", map = 117, x = 49.3, y = 12.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11350, title = "The Book of Runes", npc = 24362, npcName = "Longrunner Pembe", map = 117, x = 49.2, y = 12.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Frostgore that spawns", count = 1, map = 117, x = 52.4, y = 3.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 54.1, y = 8.2, f = "e" },
				},
			},
			{
				note = "Follow the path up to 61.1,2",
				goals = {
					{ t = "goto", map = 117, x = 61.1, y = 2.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11312, title = "The Frozen Glade", npc = 24117, npcName = "Lurielle", map = 117, x = 61.5, y = 22.8, f = "e" },
					{ t = "accept", quest = 11313, title = "Spirits of the Ice", npc = 24117, npcName = "Lurielle", map = 117, x = 61.5, y = 22.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Ice Elementals", count = 1, map = 117, x = 60.6, y = 22.4, f = "e" },
					{ t = "collect", quest = 11313, itemName = "Icy Core", count = 15, oi = 1, map = 117, x = 60.6, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11313, title = "Spirits of the Ice", npc = 24117, npcName = "Lurielle", map = 117, x = 61.5, y = 22.8, f = "e" },
					{ t = "accept", quest = 11314, title = "The Fallen Sisters", npc = 24117, npcName = "Lurielle", map = 117, x = 61.5, y = 22.8, f = "e" },
					{ t = "accept", quest = 11315, title = "Wild Vines", npc = 24117, npcName = "Lurielle", map = 117, x = 61.5, y = 22.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11315, target = "Scarlet Ivy", count = 8, oi = 1, map = 117, x = 53.3, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11314, title = "The Fallen Sisters", npc = 24117, npcName = "Lurielle", map = 117, x = 61.5, y = 22.8, f = "e" },
					{ t = "turnin", quest = 11315, title = "Wild Vines", npc = 24117, npcName = "Lurielle", map = 117, x = 61.5, y = 22.8, f = "e" },
					{ t = "accept", quest = 11316, title = "Spawn of the Twisted Glade", npc = 24117, npcName = "Lurielle", map = 117, x = 61.5, y = 22.8, f = "e" },
					{ t = "accept", quest = 11319, title = "Seeds of the Blacksouled Keepers", npc = 24117, npcName = "Lurielle", map = 117, x = 61.5, y = 22.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11316, target = "Thornvine Creeper", count = 10, oi = 1, map = 117, x = 54.7, y = 20.5, f = "e" },
					{ t = "kill", target = "Spores", count = 1, map = 117, x = 54.7, y = 20.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11316, title = "Spawn of the Twisted Glade", npc = 24117, npcName = "Lurielle", map = 117, x = 61.5, y = 22.8, f = "e" },
					{ t = "turnin", quest = 11319, title = "Seeds of the Blacksouled Keepers", npc = 24117, npcName = "Lurielle", map = 117, x = 61.5, y = 22.8, f = "e" },
					{ t = "accept", quest = 11428, title = "Keeper Witherleaf", npc = 24117, npcName = "Lurielle", map = 117, x = 61.5, y = 22.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11428, target = "Keeper Witherleaf", count = 1, oi = 1, map = 117, x = 53.7, y = 18.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11428, title = "Keeper Witherleaf", npc = 24117, npcName = "Lurielle", map = 117, x = 61.5, y = 22.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Iron Rune Stonecallers and Iron Rune Binders", count = 1, map = 117, x = 65.0, y = 28.5, f = "e" },
					{ t = "collect", quest = 11350, item = 33778, itemName = "Book of Runes - Chapter 1", count = 1, map = 117, x = 65.0, y = 28.5, f = "e" },
					{ t = "collect", quest = 11350, item = 33779, itemName = "Book of Runes - Chapter 2", count = 1, map = 117, x = 65.0, y = 28.5, f = "e" },
					{ t = "collect", quest = 11350, item = 33780, itemName = "Book of Runes - Chapter 3", count = 1, map = 117, x = 65.0, y = 28.5, f = "e" },
					{ t = "collect", quest = 11350, itemName = "The Book of Runes", count = 1, oi = 1, map = 117, x = 65.0, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11350, title = "The Book of Runes", npc = 24362, npcName = "Longrunner Pembe", map = 117, x = 49.2, y = 12.2, f = "e" },
					{ t = "accept", quest = 11351, title = "Mastering the Runes", npc = 24362, npcName = "Longrunner Pembe", map = 117, x = 49.2, y = 12.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11281, title = "Mimicking Nature's Call", npc = 24123, npcName = "Nokoma Snowseer", map = 117, x = 49.3, y = 12.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11256, title = "Skorn Must Fall!", npc = 24129, npcName = "Chieftain Ashtotem", map = 117, x = 48.0, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11351, itemName = "Iron Rune Carving Tools", count = 1, oi = 1, map = 117, x = 71.2, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11351, title = "Mastering the Runes", npc = 24362, npcName = "Longrunner Pembe", map = 117, x = 49.2, y = 12.2, f = "e" },
					{ t = "accept", quest = 11352, title = "The Rune of Command", npc = 24362, npcName = "Longrunner Pembe", map = 117, x = 49.2, y = 12.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11352, target = "Binder Murdis", count = 1, oi = 2, map = 117, x = 71.9, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11352, title = "The Rune of Command", npc = 24362, npcName = "Longrunner Pembe", map = 117, x = 49.2, y = 12.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11256, title = "Skorn Must Fall!", npc = 24130, npcName = "Winterhoof Brave", map = 117, x = 44.4, y = 26.2, f = "e" },
					{ t = "accept", quest = 11257, title = "Gruesome, But Necessary", npc = 24130, npcName = "Winterhoof Brave", map = 117, x = 44.4, y = 26.2, f = "e" },
					{ t = "accept", quest = 11258, title = "Burn Skorn, Burn!", npc = 24130, npcName = "Winterhoof Brave", map = 117, x = 44.4, y = 26.2, f = "e" },
					{ t = "accept", quest = 11259, title = "Towers of Certain Doom", npc = 24130, npcName = "Winterhoof Brave", map = 117, x = 44.4, y = 26.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Winterskorn mobs", count = 1, map = 117, x = 45.3, y = 27.0, f = "e" },
					{ t = "collect", itemName = "Vrykul Scroll of Ascension", count = 1, map = 117, x = 45.3, y = 27.0, f = "e" },
					{ t = "accept", quest = 11260, title = "Stop the Ascension!", map = 117, x = 45.3, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 43.7, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 43.6, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 43.2, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11260, target = "Halfdan the Ice-Hearted", count = 1, oi = 1, map = 117, x = 44.9, y = 35.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 46.9, y = 37.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 46.5, y = 33.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 46.0, y = 30.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 46.4, y = 28.2, f = "e" },
				},
			},
			{
				note = "Use your Winterhoof Emblem in your bags|use Winterhoof Emblem##33340",
				goals = {
					{ t = "use", item = 33340, itemName = "Winterhoof Emblem", f = "e" },
					{ t = "turnin", quest = 11257, title = "Gruesome, But Necessary", npc = 24130, npcName = "Winterhoof Brave", f = "e" },
					{ t = "turnin", quest = 11258, title = "Burn Skorn, Burn!", npc = 24130, npcName = "Winterhoof Brave", f = "e" },
					{ t = "turnin", quest = 11259, title = "Towers of Certain Doom", npc = 24130, npcName = "Winterhoof Brave", f = "e" },
					{ t = "accept", quest = 11261, title = "The Conqueror of Skorn!", npc = 24130, npcName = "Winterhoof Brave", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11260, title = "Stop the Ascension!", npc = 24135, npcName = "Greatmother Ankha", map = 117, x = 48.2, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11261, title = "The Conqueror of Skorn!", npc = 24129, npcName = "Chieftain Ashtotem", map = 117, x = 48.0, y = 10.7, f = "e" },
					{ t = "accept", quest = 11263, title = "Dealing With Gjalerbron", npc = 24129, npcName = "Chieftain Ashtotem", map = 117, x = 48.0, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11265, title = "Of Keys and Cages", npc = 24135, npcName = "Greatmother Ankha", map = 117, x = 48.2, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11317, title = "The Cleansing", npc = 24186, npcName = "Sage Mistwalker", map = 117, x = 31.2, y = 24.5, f = "e" },
					{ t = "accept", quest = 11323, title = "In Worg's Clothing", npc = 24186, npcName = "Sage Mistwalker", map = 117, x = 31.2, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11323, title = "In Worg's Clothing", npc = 24261, npcName = "Ulfang", map = 117, x = 29.7, y = 5.7, f = "e" },
					{ t = "accept", quest = 11415, title = "Brother Betrayers", npc = 24261, npcName = "Ulfang", map = 117, x = 29.7, y = 5.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11415, target = "Bjomolf", count = 1, oi = 1, map = 117, x = 28.3, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11415, target = "Varg", count = 1, oi = 2, map = 117, x = 33.8, y = 29.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11263, target = "Gjalerbron Warrior", count = 15, oi = 1, map = 117, x = 35.1, y = 16.0, f = "e" },
					{ t = "kill", quest = 11263, target = "Gjalerbron Rune-Caster", count = 8, oi = 2, map = 117, x = 35.1, y = 16.0, f = "e" },
					{ t = "kill", quest = 11263, target = "Gjalerbron Sleep-Watcher", count = 8, oi = 3, map = 117, x = 35.1, y = 16.0, f = "e" },
					{ t = "kill", target = "Gjalerbron mobs", count = 1, map = 117, x = 35.1, y = 16.0, f = "e" },
					{ t = "collect", itemName = "Gjalerbron Cage Keys", count = 1, map = 117, x = 35.1, y = 16.0, f = "e" },
					{ t = "collect", itemName = "Gjalerbron Attack Plans", count = 1, map = 117, x = 35.1, y = 16.0, f = "e" },
					{ t = "accept", quest = 11266, title = "Gjalerbron Attack Plans", map = 117, x = 35.1, y = 16.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11415, title = "Brother Betrayers", npc = 24261, npcName = "Ulfang", map = 117, x = 29.7, y = 5.7, f = "e" },
					{ t = "accept", quest = 11417, title = "Eyes of the Eagle", npc = 24261, npcName = "Ulfang", map = 117, x = 29.7, y = 5.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11417, itemName = "Eyes of the Eagle", count = 1, oi = 1, map = 117, x = 41.4, y = 37.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11417, title = "Eyes of the Eagle", npc = 24261, npcName = "Ulfang", map = 117, x = 29.7, y = 5.7, f = "e" },
					{ t = "accept", quest = 11324, title = "Alpha Worg", npc = 24261, npcName = "Ulfang", map = 117, x = 29.7, y = 5.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11324, target = "Garwal", count = 1, oi = 1, map = 117, x = 26.3, y = 12.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11324, title = "Alpha Worg", npc = 24186, npcName = "Sage Mistwalker", map = 117, x = 31.2, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11265, title = "Of Keys and Cages", npc = 24135, npcName = "Greatmother Ankha", map = 117, x = 48.2, y = 10.7, f = "e" },
					{ t = "accept", quest = 11268, title = "The Walking Dead", npc = 24135, npcName = "Greatmother Ankha", map = 117, x = 48.2, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11263, title = "Dealing With Gjalerbron", npc = 24129, npcName = "Chieftain Ashtotem", map = 117, x = 48.0, y = 10.7, f = "e" },
					{ t = "accept", quest = 11264, title = "Necro Overlord Mezhen", npc = 24129, npcName = "Chieftain Ashtotem", map = 117, x = 48.0, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11433, title = "Sleeping Giants", npc = 24127, npcName = "Ahota Whitefrost", map = 117, x = 48.4, y = 11.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11266, title = "Gjalerbron Attack Plans", npc = 24032, npcName = "Celea Frozenmane", map = 117, x = 49.6, y = 11.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Camp Winterhoof", text = "Camp Winterhoof", f = "e" },
				},
			},
			{
				note = "Go up onto the platform to 35.7,15.8",
				goals = {
					{ t = "kill", quest = 11268, target = "Deathless Watcher", count = 10, oi = 1, map = 117, x = 35.7, y = 15.8, f = "e" },
					{ t = "kill", quest = 11268, target = "Putrid Wight", count = 2, oi = 3, map = 117, x = 35.7, y = 15.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11264, target = "Necro Overlord Mezhen", count = 1, oi = 1, map = 117, x = 38.8, y = 13.0, f = "e" },
					{ t = "collect", itemName = "Mezhen's Writings", count = 1, map = 117, x = 38.8, y = 13.0, f = "e" },
					{ t = "accept", quest = 11453, title = "The Slumbering King", map = 117, x = 38.8, y = 13.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 39.8, y = 7.6, f = "e" },
				},
			},
			{
				note = "Go inside and downstairs to 40.9,6.5",
				goals = {
					{ t = "kill", quest = 11453, target = "Queen Angerboda", count = 1, oi = 1, map = 117, x = 40.9, y = 6.5, f = "e" },
				},
			},
			{
				note = "Go outside to 34.5,13.2|n",
				goals = {
					{ t = "goto", map = 117, x = 34.5, y = 13.2, f = "e" },
				},
			},
			{
				note = "Go down the stairs to 35,11.9",
				goals = {
					{ t = "kill", quest = 11268, target = "Fearsome Horror", count = 4, oi = 2, map = 117, x = 35.0, y = 11.9, f = "e" },
					{ t = "kill", target = "Necrolords", count = 1, map = 117, x = 35.0, y = 11.9, f = "e" },
					{ t = "collect", quest = 11433, item = 34083, itemName = "Awakening Rod", count = 5, map = 117, x = 35.0, y = 11.9, f = "e" },
					{ t = "kill", quest = 11433, target = "Dormant Vrykul", count = 5, oi = 1, map = 117, x = 35.0, y = 11.9, f = "e" },
				},
			},
			{
				note = "Hearth to Camp Winterhoof,0.3|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 117, x = 49.5, y = 10.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11433, title = "Sleeping Giants", npc = 24127, npcName = "Ahota Whitefrost", map = 117, x = 48.4, y = 11.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11268, title = "The Walking Dead", npc = 24135, npcName = "Greatmother Ankha", map = 117, x = 48.2, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11264, title = "Necro Overlord Mezhen", npc = 24129, npcName = "Chieftain Ashtotem", map = 117, x = 48.0, y = 10.7, f = "e" },
					{ t = "turnin", quest = 11453, title = "The Slumbering King", npc = 24129, npcName = "Chieftain Ashtotem", map = 117, x = 48.0, y = 10.7, f = "e" },
				},
			},
			{
				note = "Fly to New Agamand,0.3|noway|c",
				goals = {
					{ t = "goto", map = 117, x = 52.0, y = 67.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12181, title = "Give it a Name", npc = 24251, npcName = "Chief Plaguebringer Harris", map = 117, x = 53.6, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12181, title = "Give it a Name", npc = 24155, npcName = "Tobias Sarkhoff", map = 117, x = 52.0, y = 67.4, f = "e" },
					{ t = "accept", quest = 12182, title = "To Venomspite!", npc = 24155, npcName = "Tobias Sarkhoff", map = 117, x = 52.0, y = 67.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Venomspite", text = "Venomspite", map = 115, x = 76.5, y = 62.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12206, title = "Blighted Last Rites", npc = 27248, npcName = "Apothecary Vicky Levine", map = 115, x = 77.0, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12206, title = "Blighted Last Rites", npc = 27248, npcName = "Apothecary Vicky Levine", map = 115, x = 77.0, y = 62.9, f = "e" },
					{ t = "accept", quest = 12211, title = "Let Them Not Rise!", npc = 27248, npcName = "Apothecary Vicky Levine", map = 115, x = 77.0, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12182, title = "To Venomspite!", npc = 27172, npcName = "Chief Plaguebringer Middleton", map = 115, x = 77.7, y = 62.8, f = "e" },
					{ t = "accept", quest = 12188, title = "The Forsaken Blight and You: How Not to Die", npc = 27172, npcName = "Chief Plaguebringer Middleton", map = 115, x = 77.7, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12205, title = "Wanted: The Scarlet Onslaught", map = 115, x = 76.9, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Venomspite", text = "Venomspite", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12487, title = "To Conquest Hold, But Be Careful!", npc = 27243, npcName = "High Executor Wroth", map = 115, x = 76.8, y = 63.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12303, title = "Funding the War Effort", npc = 27267, npcName = "Quartermaster Bartlett", map = 115, x = 76.0, y = 63.3, f = "e" },
					{ t = "accept", quest = 12209, title = "Materiel Plunder", npc = 27267, npcName = "Quartermaster Bartlett", map = 115, x = 76.0, y = 63.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12304, title = "Beachfront Property", npc = 32599, npcName = "Surveyor Hansen", map = 115, x = 79.3, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12304, target = "Forgotten ghosts", count = 20, oi = 1, map = 115, x = 82.9, y = 65.1, f = "e" },
					{ t = "kill", target = "Forgotten ghosts", count = 1, map = 115, x = 82.9, y = 65.1, f = "e" },
					{ t = "collect", quest = 12188, itemName = "Ectoplasmic Residue", count = 10, oi = 1, map = 115, x = 82.9, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12303, itemName = "Forgotten Treasure", count = 6, oi = 1, map = 115, x = 82.5, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12304, title = "Beachfront Property", npc = 32599, npcName = "Surveyor Hansen", map = 115, x = 79.3, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12303, title = "Funding the War Effort", npc = 27267, npcName = "Quartermaster Bartlett", map = 115, x = 76.0, y = 63.3, f = "e" },
				},
			},
		},
	})
end

