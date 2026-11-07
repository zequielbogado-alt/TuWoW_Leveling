-- TuWoW_Leveling — Guides/Leveling_Horde_52.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-76-78",
		pack = "guides",
		title = "Northrend (76-78) (Parte 1/4)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-76-78-part-2",
		author = "TuWoW & Zygor",
		minLevel = 76,
		maxLevel = 78,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 12327, title = "Out of Body Experience", npc = 27581, npcName = "Ruuna the Blind", x = 44.0, y = 47.9, f = "e" },
					{ t = "accept", quest = 12329, title = "Fate and Coincidence", npc = 27581, npcName = "Ruuna the Blind", x = 44.0, y = 47.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12329, title = "Fate and Coincidence", npc = 26935, npcName = "Sasha", x = 57.5, y = 41.3, f = "e" },
					{ t = "accept", quest = 12134, title = "Sasha's Hunt", npc = 26935, npcName = "Sasha", x = 57.5, y = 41.3, f = "e" },
					{ t = "accept", quest = 12330, title = "Anatoly Will Talk", npc = 26935, npcName = "Sasha", x = 57.5, y = 41.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12134, target = "Solstice Hunter", count = 12, oi = 1, x = 60.4, y = 40.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 62.3, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12134, title = "Sasha's Hunt", npc = 26935, npcName = "Sasha", x = 57.5, y = 41.3, f = "e" },
					{ t = "turnin", quest = 12330, title = "Anatoly Will Talk", npc = 26935, npcName = "Sasha", x = 57.5, y = 41.3, f = "e" },
					{ t = "accept", quest = 12411, title = "A Sister's Pledge", npc = 26935, npcName = "Sasha", x = 57.5, y = 41.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12411, title = "A Sister's Pledge", npc = 27646, npcName = "Anya", x = 64.8, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12195, title = "The Unexpected 'Guest'", npc = 27221, npcName = "Tormak the Scarred", x = 65.3, y = 47.5, f = "e" },
					{ t = "accept", quest = 12165, title = "An Intriguing Plan", npc = 27221, npcName = "Tormak the Scarred", x = 65.3, y = 47.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12279, title = "A Bear of an Appetite", npc = 26484, npcName = "Hugh Glass", x = 69.1, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12190, title = "Say Hello to My Little Friend", npc = 26884, npcName = "Harkor", x = 73.8, y = 34.0, f = "e" },
					{ t = "accept", quest = 12113, title = "Nice to Meat You", npc = 26884, npcName = "Harkor", x = 73.8, y = 34.0, f = "e" },
					{ t = "accept", quest = 12114, title = "Therapy", npc = 26884, npcName = "Harkor", x = 73.8, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12116, title = "It Takes Guts....", npc = 26886, npcName = "Kraz", x = 73.9, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Longhoof Grazers", count = 1, x = 72.7, y = 37.6, f = "e" },
					{ t = "collect", quest = 12113, itemName = "Shovelhorn Steak", count = 10, oi = 2, x = 72.7, y = 37.6, f = "e" },
					{ t = "kill", target = "Duskhowl Prowlers", count = 1, x = 72.7, y = 37.6, f = "e" },
					{ t = "collect", quest = 12113, itemName = "Fibrous Worg Meat", count = 10, oi = 1, x = 72.7, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 61.6, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 64.3, y = 15.0, f = "e" },
				},
			},
			{
				note = "Follow the road into the mountains around to 65.8,17.8",
				goals = {
					{ t = "turnin", quest = 12074, title = "An Expedient Ally", npc = 26260, npcName = "Kurun", x = 65.8, y = 17.8, f = "e" },
					{ t = "accept", quest = 11982, title = "Raining Down Destruction", npc = 26260, npcName = "Kurun", x = 65.8, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11982, item = 35734, itemName = "Boulder", count = 5, x = 66.1, y = 13.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11982, title = "Raining Down Destruction", npc = 26260, npcName = "Kurun", x = 65.8, y = 17.8, f = "e" },
					{ t = "accept", quest = 12070, title = "Rallying the Troops", npc = 26260, npcName = "Kurun", x = 65.8, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 68.3, y = 10.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12070, title = "Rallying the Troops", npc = 26260, npcName = "Kurun", x = 65.8, y = 17.8, f = "e" },
					{ t = "accept", quest = 11985, title = "Into the Breach", npc = 26260, npcName = "Kurun", x = 65.8, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12026, title = "The Damaged Journal", x = 64.3, y = 19.8, f = "e" },
				},
			},
			{
				note = "They look like torn pages that spawn all around this area on the ground",
				goals = {
					{ t = "collect", quest = 12026, item = 35737, itemName = "Missing Journal Page", count = 8, f = "e" },
					{ t = "collect", quest = 12026, itemName = "Brann Bronzebeard's Journal", count = 1, oi = 1, f = "e" },
				},
			},
			{
				note = "Go into the building to 70.2,13.0",
				goals = {
					{ t = "kill", quest = 11985, target = "Iron Thane Argrum", count = 1, oi = 1, x = 70.2, y = 13.0, f = "e" },
				},
			},
			{
				note = "Go out of the building and up the path to 65.8,17.8",
				goals = {
					{ t = "turnin", quest = 11985, title = "Into the Breach", npc = 26260, npcName = "Kurun", x = 65.8, y = 17.8, f = "e" },
					{ t = "accept", quest = 12081, title = "Gavrock", npc = 26260, npcName = "Kurun", x = 65.8, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12114, target = "Drakkari Protector", count = 10, oi = 1, x = 70.5, y = 27.4, f = "e" },
					{ t = "kill", quest = 12114, target = "Drakkari Oracle", count = 10, oi = 2, x = 70.5, y = 27.4, f = "e" },
					{ t = "kill", target = "Drakkari mobs", count = 1, x = 70.5, y = 27.4, f = "e" },
					{ t = "collect", quest = 12068, item = 36758, itemName = "Sacred Mojo", count = 5, x = 70.5, y = 27.4, f = "e" },
				},
			},
			{
				note = "Go inside the underground crypt to 70.8,21.8",
				goals = {
					{ t = "collect", quest = 12116, itemName = "Drakkari Canopic Jar", count = 5, oi = 1, x = 70.8, y = 21.8, f = "e" },
				},
			},
			{
				note = "Inside the crypt, go to 69.4,18.2",
				goals = {
					{ t = "collect", quest = 12068, itemName = "Drakkari Tablets", count = 1, oi = 1, x = 69.4, y = 18.2, f = "e" },
				},
			},
			{
				note = "Inside the crypt, go to 69.5,17.5",
				goals = {
					{ t = "accept", quest = 12082, title = "Dun-da-Dun-tah!", npc = 26814, npcName = "Harrison Jones", x = 69.5, y = 17.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12068, title = "Voices From the Dust", npc = 26787, npcName = "Image of Drakuru", x = 71.7, y = 26.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12279, itemName = "Northern Salmon", count = 6, oi = 1, x = 75.5, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12081, title = "Gavrock", npc = 26420, npcName = "Gavrock", x = 79.8, y = 33.6, f = "e" },
					{ t = "accept", quest = 12093, title = "Runes of Compulsion", npc = 26420, npcName = "Gavrock", x = 79.8, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Iron Rune-Weavers", count = 4, x = 79.1, y = 43.3, f = "e" },
					{ t = "kill", quest = 12093, target = "Overseer Brunon", count = 1, oi = 4, x = 79.1, y = 43.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Iron Rune-Weavers", count = 4, x = 75.3, y = 36.7, f = "e" },
					{ t = "kill", quest = 12093, target = "Overseer Lochli", count = 1, oi = 3, x = 75.3, y = 36.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12116, title = "It Takes Guts....", npc = 26886, npcName = "Kraz", x = 73.9, y = 34.1, f = "e" },
					{ t = "accept", quest = 12120, title = "Drak'aguul's Mallet", npc = 26886, npcName = "Kraz", x = 73.9, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12113, title = "Nice to Meat You", npc = 26884, npcName = "Harkor", x = 73.8, y = 34.0, f = "e" },
					{ t = "turnin", quest = 12114, title = "Therapy", npc = 26884, npcName = "Harkor", x = 73.8, y = 34.0, f = "e" },
					{ t = "turnin", quest = 12082, title = "Dun-da-Dun-tah!", npc = 26884, npcName = "Harkor", x = 73.8, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Iron Rune-Weavers", count = 4, x = 72.1, y = 33.9, f = "e" },
					{ t = "kill", quest = 12093, target = "Overseer Korgan", count = 1, oi = 2, x = 72.1, y = 33.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Iron Rune-Weavers", count = 4, x = 67.7, y = 29.6, f = "e" },
					{ t = "kill", quest = 12093, target = "Overseer Durval", count = 1, oi = 1, x = 67.7, y = 29.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12120, itemName = "Drakil'jin Mallet", count = 1, oi = 1, x = 71.6, y = 28.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12120, title = "Drak'aguul's Mallet", npc = 26886, npcName = "Kraz", x = 73.9, y = 34.1, f = "e" },
					{ t = "accept", quest = 12121, title = "See You on the Other Side", npc = 26886, npcName = "Kraz", x = 73.9, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12093, title = "Runes of Compulsion", npc = 26420, npcName = "Gavrock", x = 79.8, y = 33.6, f = "e" },
					{ t = "accept", quest = 12094, title = "Latent Power", npc = 26420, npcName = "Gavrock", x = 79.8, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 78.8, y = 39.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 74.1, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 71.3, y = 39.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "killed by Warlord Jin'arrak", count = 1, x = 71.5, y = 24.7, f = "e" },
				},
			},
			{
				note = "While dead, go inside the crypt to 69.4,19.5",
				goals = {
					{ t = "turnin", quest = 12121, title = "See You on the Other Side", npc = 26924, npcName = "Gan'jo", x = 69.4, y = 19.5, f = "e" },
					{ t = "accept", quest = 12137, title = "Chill Out, Mon", npc = 26924, npcName = "Gan'jo", x = 69.4, y = 19.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12137, itemName = "Snow of Eternal Slumber", count = 1, oi = 1, x = 69.4, y = 19.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26924, npcName = "Gan'jo", x = 69.4, y = 19.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12137, itemName = "Drakkari Spirit Particles", count = 5, oi = 2, x = 70.0, y = 20.4, f = "e" },
				},
			},
			{
				note = "Go outside to 73.9,34.1",
				goals = {
					{ t = "turnin", quest = 12137, title = "Chill Out, Mon", npc = 26886, npcName = "Kraz", x = 73.9, y = 34.1, f = "e" },
					{ t = "accept", quest = 12152, title = "Jin'arrak's End", npc = 26886, npcName = "Kraz", x = 73.9, y = 34.1, f = "e" },
				},
			},
			{
				note = "Go into the crypt to 71.3,19.6",
				goals = {
					{ t = "collect", itemName = "Sacred Drakkari Offering", count = 1, x = 71.3, y = 19.6, f = "e" },
					{ t = "collect", quest = 12152, item = 37063, itemName = "Infused Drakkari Offering", count = 1, x = 71.3, y = 19.6, f = "e" },
				},
			},
			{
				note = "Go outside to 71.4,24.4",
				goals = {
					{ t = "goto", x = 71.4, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12152, title = "Jin'arrak's End", npc = 26886, npcName = "Kraz", x = 73.9, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12094, title = "Latent Power", npc = 26420, npcName = "Gavrock", x = 79.8, y = 33.6, f = "e" },
					{ t = "accept", quest = 12099, title = "Free at Last", npc = 26420, npcName = "Gavrock", x = 79.8, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 76.2, y = 37.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12099, title = "Free at Last", npc = 26420, npcName = "Gavrock", x = 79.8, y = 33.6, f = "e" },
				},
			},
			{
				note = "Hearth to Camp Oneqwah,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "goto", x = 65.4, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12026, title = "The Damaged Journal", npc = 26584, npcName = "Sage Paluna", x = 65.2, y = 47.7, f = "e" },
					{ t = "accept", quest = 12054, title = "Deciphering the Journal", npc = 26584, npcName = "Sage Paluna", x = 65.2, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12204, title = "In the Name of Loken", npc = 26666, npcName = "Scout Vor'takh", x = 65.2, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12415, title = "The Horse Hollerer", npc = 26944, npcName = "Soulok Stormfury", x = 65.0, y = 47.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12279, title = "A Bear of an Appetite", npc = 26484, npcName = "Hugh Glass", x = 69.1, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26420, npcName = "Gavrock", x = 79.8, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Iron Rune-Smiths", count = 1, x = 76.6, y = 55.1, f = "e" },
					{ t = "collect", quest = 12165, item = 36849, itemName = "Golem Blueprint Section 1", count = 1, x = 76.6, y = 55.1, f = "e" },
					{ t = "collect", quest = 12165, item = 36850, itemName = "Golem Blueprint Section 2", count = 1, x = 76.6, y = 55.1, f = "e" },
					{ t = "collect", quest = 12165, item = 36851, itemName = "Golem Blueprint Section 3", count = 1, x = 76.6, y = 55.1, f = "e" },
					{ t = "collect", quest = 12165, itemName = "War Golem Blueprint", count = 1, oi = 1, x = 76.6, y = 55.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12054, itemName = "Spiritsbreath", count = 1, oi = 1, x = 66.6, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12054, title = "Deciphering the Journal", npc = 26584, npcName = "Sage Paluna", x = 65.2, y = 47.7, f = "e" },
					{ t = "accept", quest = 12058, title = "The Runic Prophecies", npc = 26584, npcName = "Sage Paluna", x = 65.2, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12204, title = "In the Name of Loken", npc = 26666, npcName = "Scout Vor'takh", x = 65.2, y = 47.7, f = "e" },
					{ t = "accept", quest = 12201, title = "The Overseer's Shadow", npc = 26666, npcName = "Scout Vor'takh", x = 65.2, y = 47.7, f = "e" },
					{ t = "accept", quest = 12073, title = "Pounding the Iron", npc = 26666, npcName = "Scout Vor'takh", x = 65.2, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12165, title = "An Intriguing Plan", npc = 27227, npcName = "Prospector Rokar", x = 65.0, y = 47.0, f = "e" },
					{ t = "accept", quest = 12196, title = "From the Ground Up", npc = 27227, npcName = "Prospector Rokar", x = 65.0, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12201, itemName = "Overseer's Uniform", count = 1, oi = 1, x = 76.6, y = 54.8, f = "e" },
					{ t = "collect", quest = 12196, itemName = "War Golem Part", count = 8, oi = 1, x = 76.6, y = 54.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12201, title = "The Overseer's Shadow", npc = 26666, npcName = "Scout Vor'takh", x = 65.2, y = 47.7, f = "e" },
					{ t = "accept", quest = 12202, title = "Cultivating an Image", npc = 26666, npcName = "Scout Vor'takh", x = 65.2, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12196, title = "From the Ground Up", npc = 27227, npcName = "Propector Rokar", x = 65.0, y = 47.0, f = "e" },
					{ t = "accept", quest = 12197, title = "We Have the Power", npc = 27227, npcName = "Propector Rokar", x = 65.0, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Iron dwarves", count = 1, x = 76.2, y = 53.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12197, itemName = "Kathorn's Power Cell", count = 1, oi = 2, x = 76.8, y = 59.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12197, itemName = "Durar's Power Cell", count = 1, oi = 1, x = 74.9, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12202, title = "Cultivating an Image", npc = 26666, npcName = "Scout Vor'takh", x = 65.2, y = 47.7, f = "e" },
					{ t = "accept", quest = 12203, title = "Loken's Orders", npc = 26666, npcName = "Scout Vor'takh", x = 65.2, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12197, title = "We Have the Power", npc = 27227, npcName = "Prospector Rokar", x = 65.0, y = 47.0, f = "e" },
					{ t = "accept", quest = 12198, title = "... Or Maybe We Don't", npc = 27227, npcName = "Prospector Rokar", x = 65.0, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Lightning Sentries", count = 1, x = 73.7, y = 51.4, f = "e" },
					{ t = "collect", quest = 12198, itemName = "Charge Level", count = 10, oi = 1, x = 73.7, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 81.5, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12203, title = "Loken's Orders", npc = 26666, npcName = "Scout Vor'takh", x = 65.2, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12198, title = "... Or Maybe We Don't", npc = 27227, npcName = "Prospector Rokar", x = 65.0, y = 47.0, f = "e" },
					{ t = "accept", quest = 12199, title = "Bringing Down the Iron Thane", npc = 27227, npcName = "Prospector Rokar", x = 65.0, y = 47.0, f = "e" },
				},
			},
			{
				note = "Go into this building and downstairs to 76.2,63.2",
				goals = {
					{ t = "kill", quest = 12199, target = "Iron Thane Furyhammer", count = 1, oi = 1, x = 76.2, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12199, title = "Bringing Down the Iron Thane", npc = 27221, npcName = "Tormak the Scarred", x = 65.3, y = 47.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 65.2, y = 19.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 68.5, y = 16.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 69.0, y = 14.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 70.2, y = 14.7, f = "e" },
				},
			},
			{
				note = "Hearth to Camp Oneqwah,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "goto", x = 65.4, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12073, title = "Pounding the Iron", npc = 26666, npcName = "Scout Vor'takh", x = 65.2, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12058, title = "The Runic Prophecies", npc = 26584, npcName = "Sage Paluna", x = 65.2, y = 47.7, f = "e" },
				},
			},
		},
	})
end

