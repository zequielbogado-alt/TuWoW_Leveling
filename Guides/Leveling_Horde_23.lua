-- TuWoW_Leveling — Guides/Leveling_Horde_23.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-45-50",
		pack = "guides",
		title = "Levels (45-50) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-levels-45-50-part-2",
		author = "TuWoW & Zygor",
		minLevel = 45,
		maxLevel = 50,
		zone = 1446,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", quest = 8366, target = "Southsea Dock Worker", count = 10, oi = 3, map = 1446, x = 73.3, y = 46.2, f = "e" },
					{ t = "kill", quest = 8366, target = "Southsea Swashbuckler", count = 10, oi = 4, map = 1446, x = 73.3, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2875, itemName = "Firebeard's Head", count = 1, oi = 1, map = 1446, x = 73.3, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2873, itemName = "Stoley's Shipment", count = 1, oi = 1, map = 1446, x = 72.2, y = 46.7, f = "e" },
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
					{ t = "turnin", quest = 1707, title = "Water Pouch Bounty", npc = 7408, npcName = "Spigot Operator Luglunket", map = 1446, x = 52.5, y = 28.5, f = "e" },
					{ t = "turnin", quest = 1690, title = "Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
					{ t = "accept", quest = 1691, title = "More Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
					{ t = "turnin", quest = 2781, title = "WANTED: Caliph Scorpidsting", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1691, target = "Wastewander Rogue", count = 8, oi = 1, map = 1446, x = 59.8, y = 32.6, f = "e" },
					{ t = "kill", quest = 1691, target = "Wastewander Assassin", count = 6, oi = 2, map = 1446, x = 59.8, y = 32.6, f = "e" },
					{ t = "kill", quest = 1691, target = "Wastewander Shadow Mage", count = 10, oi = 3, map = 1446, x = 59.8, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2875, title = "WANTED: Andre Firebeard", npc = 7882, npcName = "Security Chief Bilgewhizzle", map = 1446, x = 67.1, y = 23.9, f = "e" },
					{ t = "turnin", quest = 8366, title = "Southsea Shakedown", npc = 7882, npcName = "Security Chief Bilgewhizzle", map = 1446, x = 67.1, y = 23.9, f = "e" },
					{ t = "turnin", quest = 2873, title = "Stoley's Shipment", npc = 7881, npcName = "Stoley", map = 1446, x = 67.1, y = 23.9, f = "e" },
					{ t = "accept", quest = 2874, title = "Deliver to MacKinley", npc = 7881, npcName = "Stoley", map = 1446, x = 67.1, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8365, title = "Pirate Hats Ahoy!", npc = 15165, npcName = "Haughty Modiste", map = 1446, x = 66.6, y = 22.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1691, title = "More Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2973, title = "A New Cloak's Sheen", npc = 4544, npcName = "Krueg Skullsplitter", map = 1444, x = 75.9, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2981, title = "A Threat in Feralas", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.9, y = 43.6, f = "e" },
					{ t = "accept", quest = 2975, title = "The Ogres of Feralas (1)", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.9, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3062, title = "Dark Heart", npc = 7776, npcName = "Talo Thornhoof", map = 1444, x = 76.2, y = 43.8, f = "e" },
					{ t = "accept", quest = 3063, title = "Vengeance on the Northspring", npc = 7776, npcName = "Talo Thornhoof", map = 1444, x = 76.2, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2987, title = "Gordunni Cobalt", npc = 8021, npcName = "Orwin Gizzmick", map = 1444, x = 75.7, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Camp Mojache", text = "Camp Mojache", map = 1444, x = 75.4, y = 44.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2862, title = "War on the Woodpaw", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.9, y = 42.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2822, title = "The Mark of Quality", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.4, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3121, title = "A Strange Request", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.4, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Camp Mojache", text = "Camp Mojache", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2862, itemName = "Woodpaw Gnoll Mane", count = 10, oi = 1, map = 1444, x = 72.5, y = 40.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2975, target = "Gordunni Ogre", count = 10, oi = 1, map = 1444, x = 75.4, y = 34.3, f = "e" },
					{ t = "kill", quest = 2975, target = "Gordunni Ogre Mage", count = 10, oi = 2, map = 1444, x = 75.4, y = 34.3, f = "e" },
					{ t = "kill", quest = 2975, target = "Gordunni Brute", count = 5, oi = 3, map = 1444, x = 75.4, y = 34.3, f = "e" },
					{ t = "collect", quest = 2987, itemName = "Gordunni Cobalt", count = 12, oi = 1, map = 1444, x = 75.4, y = 34.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "the Gordunni Scroll", count = 1, map = 1444, x = 80.6, y = 34.3, f = "e" },
					{ t = "accept", quest = 2978, title = "The Gordunni Scroll", map = 1444, x = 80.6, y = 34.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2862, title = "War on the Woodpaw", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.9, y = 42.5, f = "e" },
					{ t = "accept", quest = 2863, title = "Alpha Strike", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.9, y = 42.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2987, title = "Gordunni Cobalt", npc = 8021, npcName = "Orwin Gizzmick", map = 1444, x = 75.7, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2975, title = "The Ogres of Feralas (1)", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.9, y = 43.6, f = "e" },
					{ t = "accept", quest = 2980, title = "The Ogres of Feralas (2)", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.9, y = 43.6, f = "e" },
					{ t = "turnin", quest = 2978, title = "The Gordunni Scroll", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.9, y = 43.6, f = "e" },
					{ t = "accept", quest = 2979, title = "Dark Ceremony", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.9, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2863, target = "Woodpaw Alpha", count = 5, oi = 1, map = 1444, x = 73.5, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2863, title = "Alpha Strike", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.9, y = 42.5, f = "e" },
					{ t = "accept", quest = 2902, title = "Woodpaw Investigation", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.9, y = 42.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2902, title = "Woodpaw Investigation", map = 1444, x = 71.6, y = 55.9, f = "e" },
					{ t = "accept", quest = 2903, title = "The Battle Plans", map = 1444, x = 71.6, y = 55.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 46, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2973, itemName = "Iridescent Sprite Darter Wing", count = 10, oi = 1, map = 1444, x = 69.0, y = 49.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2903, title = "The Battle Plans", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.9, y = 42.5, f = "e" },
					{ t = "accept", quest = 7730, title = "Zukk'ash Infestation", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.9, y = 42.5, f = "e" },
					{ t = "accept", quest = 7731, title = "Stinglasher", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.9, y = 42.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2973, title = "A New Cloak's Sheen", npc = 4544, npcName = "Krueg Skullsplitter", map = 1444, x = 75.9, y = 42.7, f = "e" },
					{ t = "accept", quest = 2974, title = "A Grim Discovery (1)", npc = 4544, npcName = "Krueg Skullsplitter", map = 1444, x = 75.9, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 7731, itemName = "Stinglasher's Glands", count = 1, oi = 1, map = 1444, x = 75.3, y = 60.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 7730, itemName = "Zukk'ash Carapace", count = 20, oi = 1, map = 1444, x = 72.8, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2974, itemName = "Grimtotem Horn", count = 20, oi = 1, map = 1444, x = 69.6, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7730, title = "Zukk'ash Infestation", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.9, y = 42.5, f = "e" },
					{ t = "turnin", quest = 7731, title = "Stinglasher", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.9, y = 42.5, f = "e" },
					{ t = "accept", quest = 7732, title = "Zukk'ash Report", npc = 7875, npcName = "Hadoken Swiftstrider", map = 1444, x = 74.9, y = 42.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2974, title = "A Grim Discovery (1)", npc = 4544, npcName = "Krueg Skullsplitter", map = 1444, x = 75.9, y = 42.7, f = "e" },
					{ t = "accept", quest = 2976, title = "A Grim Discovery (2)", npc = 4544, npcName = "Krueg Skullsplitter", map = 1444, x = 75.9, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 8612, npcName = "Screecher Spirit", map = 1444, x = 46.5, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2822, itemName = "Thick Yeti Hide", count = 10, oi = 1, map = 1444, x = 55.4, y = 54.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2980, target = "Gordunni Shaman", count = 10, oi = 1, map = 1444, x = 59.1, y = 62.6, f = "e" },
					{ t = "kill", quest = 2980, target = "Gordunni Warlock", count = 10, oi = 2, map = 1444, x = 59.1, y = 62.6, f = "e" },
					{ t = "kill", quest = 2980, target = "Gordunni Mauler", count = 5, oi = 3, map = 1444, x = 59.1, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2979, itemName = "Gordunni Orb", count = 1, oi = 1, map = 1444, x = 59.5, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3380, title = "The Sunken Temple", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.4, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2822, title = "The Mark of Quality", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.4, y = 42.9, f = "e" },
					{ t = "accept", quest = 7734, title = "Improved Quality", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.4, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2979, title = "Dark Ceremony", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.9, y = 43.6, f = "e" },
					{ t = "accept", quest = 3002, title = "The Gordunni Orb", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.9, y = 43.6, f = "e" },
					{ t = "turnin", quest = 2980, title = "The Ogres of Feralas (2)", npc = 7777, npcName = "Rok Orhan", map = 1444, x = 75.9, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3002, title = "The Gordunni Orb", npc = 7311, npcName = "Uthel'nay", map = 1454, x = 39.2, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7732, title = "Zukk'ash Report", npc = 7010, npcName = "Zilzibin Drumlore", map = 1454, x = 56.2, y = 46.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 649, title = "Ripple Recover (1)", npc = 6986, npcName = "Dran Droffers", map = 1454, x = 59.5, y = 36.8, f = "e" },
					{ t = "turnin", quest = 649, title = "Ripple Recovery (1)", npc = 6987, npcName = "Malton Droffers", map = 1454, x = 59.5, y = 36.8, f = "e" },
					{ t = "accept", quest = 650, title = "Ripple Recovery (2)", npc = 6987, npcName = "Malton Droffers", map = 1454, x = 59.5, y = 36.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2976, title = "A Grim Discovery (2)", npc = 4485, npcName = "Belgrom Rockmaul", map = 1454, x = 75.2, y = 34.2, f = "e" },
					{ t = "accept", quest = 3504, title = "Betrayed (1)", npc = 4485, npcName = "Belgrom Rockmaul", map = 1454, x = 75.2, y = 34.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1262, title = "Report to Zor", npc = 4047, npcName = "Zor Lonetree", map = 1454, x = 38.9, y = 38.4, f = "e" },
					{ t = "accept", quest = 7541, title = "Service to the Horde", npc = 4047, npcName = "Zor Lonetree", map = 1454, x = 38.9, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 47, f = "e" },
				},
			},
			{
				note = "Hearth to Camp Mojache|goto Feralas,74.8,45.1,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3121, title = "A Strange Request", npc = 36208, npcName = "Xerash Fireblade", map = 1454, x = 76.8, y = 37.5, f = "e" },
					{ t = "accept", quest = 3122, title = "Return to Witch Doctor Uzer'i", npc = 36208, npcName = "Xerash Fireblade", map = 1454, x = 76.8, y = 37.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3122, title = "Return to Witch Doctor Uzer'i", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.4, y = 43.4, f = "e" },
					{ t = "accept", quest = 3128, title = "Natural Materials", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.4, y = 43.4, f = "e" },
					{ t = "accept", quest = 3123, title = "Testing the Vessel", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.4, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3128, itemName = "Encrusted Minerals", count = 6, oi = 2, map = 1444, x = 68.4, y = 49.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3128, itemName = "Splintered Log", count = 2, oi = 1, map = 1444, x = 56.3, y = 61.0, f = "e" },
					{ t = "collect", quest = 3128, itemName = "Resilient Sinew", count = 20, oi = 3, map = 1444, x = 56.3, y = 61.0, f = "e" },
					{ t = "collect", quest = 3128, itemName = "Metallic Fragments", count = 40, oi = 4, map = 1444, x = 56.3, y = 61.0, f = "e" },
				},
			},
			{
				note = "Hearth to Camp Mojache|goto Feralas,74.8,45.1,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3128, title = "Natural Materials", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.4, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5535, title = "Spiritual Unrest", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.4, y = 78.2, f = "e" },
					{ t = "accept", quest = 5536, title = "A Land Filled with Hatred", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.4, y = 78.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5535, target = "Highborne Apparition", count = 6, oi = 1, map = 1447, x = 13.4, y = 73.9, f = "e" },
					{ t = "kill", quest = 5535, target = "Highborne Lichling", count = 6, oi = 2, map = 1447, x = 13.4, y = 73.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5536, target = "Haldarr Satyr", count = 6, oi = 1, map = 1447, x = 19.3, y = 64.0, f = "e" },
					{ t = "kill", quest = 5536, target = "Haldarr Trickster", count = 2, oi = 2, map = 1447, x = 19.3, y = 64.0, f = "e" },
					{ t = "kill", quest = 5536, target = "Haldarr Felsworn", count = 2, oi = 3, map = 1447, x = 19.3, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5535, title = "Spiritual Unrest", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.4, y = 78.2, f = "e" },
					{ t = "turnin", quest = 5536, title = "A Land Filled with Hatred", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.4, y = 78.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3504, title = "Betrayed (1)", npc = 8576, npcName = "Ag'tor Bloodfist", map = 1447, x = 22.3, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Valormok", text = "Valormok", map = 1447, x = 22.0, y = 49.6, f = "e" },
				},
			},
			{
				note = "Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c",
				goals = {
					{ t = "goto", map = 1411, x = 50.8, y = 13.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2995, title = "Lines of Communication", npc = 7825, npcName = "Oran Snakewrithe", map = 1458, x = 73.0, y = 32.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3568, title = "Seeping Corruption (1)", npc = 8390, npcName = "Chemist Cuely", map = 1458, x = 48.4, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 232, title = "Errand for Apothecary Zinge (1)", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 49.9, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 232, title = "Errand for Apothecary Zinge (1)", npc = 7683, npcName = "Alessandro Luca", map = 1458, x = 58.6, y = 54.7, f = "e" },
					{ t = "accept", quest = 238, title = "Errand for Apothecary Zinge (2)", npc = 7683, npcName = "Alessandro Luca", map = 1458, x = 58.6, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 238, title = "Errand for Apothecary Zinge (2)", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 49.9, y = 68.4, f = "e" },
					{ t = "accept", quest = 243, title = "Into the Field", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 49.9, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Tarren Mill", text = "Tarren Mill", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1458, x = 84.9, y = 31.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1425, x = 20.4, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 650, title = "Ripple Recovery (2)", npc = 7801, npcName = "Gilveradin Sunchaser", map = 1425, x = 26.7, y = 48.6, f = "e" },
					{ t = "accept", quest = 77, title = "A Sticky Situation", npc = 7801, npcName = "Gilveradin Sunchaser", map = 1425, x = 26.7, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1425, x = 28.6, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1425, x = 29.6, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1425, x = 32.0, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2742, title = "Rin'ji is Trapped!", npc = 7780, npcName = "Rin'ji", map = 1425, x = 30.7, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2932, item = 9320, itemName = "Witherbark Skull", count = 20, map = 1425, x = 32.6, y = 56.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2933, title = "Venom Bottles", map = 1425, x = 31.5, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 77, itemName = "Hinterlands Honey Ripple", count = 10, oi = 1, map = 1425, x = 47.2, y = 40.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1425, x = 71.2, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7844, title = "Cannibalistic Cousins", npc = 14739, npcName = "Mystic Yayo'jin", map = 1425, x = 78.8, y = 78.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7841, title = "Message to the Wildhammer", npc = 14738, npcName = "Otho Moji'ko", map = 1425, x = 79.4, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7828, title = "Stalking the Stalkers", npc = 14741, npcName = "Huntsman Markhor", map = 1425, x = 79.2, y = 79.5, f = "e" },
					{ t = "accept", quest = 7829, title = "Hunt the Savages", npc = 14741, npcName = "Huntsman Markhor", map = 1425, x = 79.2, y = 79.5, f = "e" },
					{ t = "accept", quest = 7830, title = "Avenging the Fallen", npc = 14741, npcName = "Huntsman Markhor", map = 1425, x = 79.2, y = 79.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Revantusk Village", text = "Revantusk Village", map = 1425, x = 81.7, y = 81.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7839, title = "Vilebranch Hooligans", npc = 14737, npcName = "Smith Slagtree", map = 1425, x = 77.5, y = 80.3, f = "e" },
				},
			},
		},
	})
end

