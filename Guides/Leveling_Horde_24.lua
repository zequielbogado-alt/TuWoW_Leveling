-- TuWoW_Leveling — Guides/Leveling_Horde_24.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-45-50-part-2",
		pack = "guides",
		title = "Levels (45-50) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 47,
		maxLevel = 50,
		zone = 1446,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 580, itemName = "Pupellyverbos Port", count = 12, oi = 1, map = 1425, x = 77.2, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2742, title = "Rin'ji is Trapped!", map = 1425, x = 86.3, y = 59.0, f = "e" },
					{ t = "accept", quest = 2782, title = "Rin'ji's Secret", map = 1425, x = 86.3, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 7828, target = "Silvermane Stalker", count = 5, oi = 1, map = 1425, x = 70.3, y = 58.9, f = "e" },
				},
			},
			{
				note = "Slagtree's Lost Tools can be at any of these 5 spots:",
				goals = {
					{ t = "collect", quest = 7839, itemName = "Slagtree's Lost Tools", count = 1, oi = 1, map = 1425, x = 72.6, y = 53.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 7844, target = "Vilebranch Scalper", count = 6, oi = 1, map = 1425, x = 70.8, y = 49.5, f = "e" },
					{ t = "kill", quest = 7844, target = "Vilebranch Soothsayer", count = 2, oi = 2, map = 1425, x = 70.8, y = 49.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 7830, itemName = "Skylord Plume", count = 1, oi = 1, map = 1425, x = 59.4, y = 53.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 7829, target = "Savage Owlbeast", count = 10, oi = 1, map = 1425, x = 54.1, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 7828, target = "Silvermane Howler", count = 5, oi = 2, map = 1425, x = 43.9, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7839, title = "Vilebranch Hooligans", npc = 14737, npcName = "Smith Slagtree", map = 1425, x = 77.5, y = 80.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7844, title = "Cannibalistic Cousins", npc = 14739, npcName = "Mystic Yayo'jin", map = 1425, x = 78.8, y = 78.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7828, title = "Stalking the Stalkers", npc = 14741, npcName = "Huntsman Markhor", map = 1425, x = 79.2, y = 79.5, f = "e" },
					{ t = "turnin", quest = 7829, title = "Hunt the Savages", npc = 14741, npcName = "Huntsman Markhor", map = 1425, x = 79.2, y = 79.5, f = "e" },
					{ t = "turnin", quest = 7830, title = "Avenging the Fallen", npc = 14741, npcName = "Huntsman Markhor", map = 1425, x = 79.2, y = 79.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2933, title = "Venom Bottles", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
					{ t = "accept", quest = 2934, title = "Undamaged Venom Sac", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1424, x = 84.9, y = 31.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 77, title = "A Sticky Situation", npc = 7801, npcName = "Gilveradin Sunchaser", map = 1425, x = 26.7, y = 48.6, f = "e" },
					{ t = "accept", quest = 81, title = "Ripple Delivery", npc = 7801, npcName = "Gilveradin Sunchaser", map = 1425, x = 26.7, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 7841, target = "Highvale Scout", count = 8, oi = 1, map = 1425, x = 29.1, y = 51.5, f = "e" },
					{ t = "kill", quest = 7841, target = "Highvale Outrunner", count = 5, oi = 2, map = 1425, x = 29.1, y = 51.5, f = "e" },
					{ t = "kill", quest = 7841, target = "Highvale Ranger", count = 5, oi = 3, map = 1425, x = 29.1, y = 51.5, f = "e" },
					{ t = "kill", quest = 7841, target = "Highvale Marksman", count = 2, oi = 4, map = 1425, x = 29.1, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "spiders", count = 1, map = 1425, x = 35.7, y = 64.8, f = "e" },
					{ t = "collect", quest = 2934, itemName = "Undamaged Venom Sac", count = 1, oi = 1, map = 1425, x = 35.7, y = 64.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7841, title = "Message to the Wildhammer", npc = 14738, npcName = "Otho Moji'ko", map = 1425, x = 79.4, y = 79.1, f = "e" },
				},
			},
			{
				note = "Hearth to Tarren Mill|goto Hillsbrad Foothills,62.7,19.1,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2934, title = "Undamaged Venom Sac", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.4, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2782, title = "Rin'ji's Secret", npc = 7825, npcName = "Oran Snakewrithe", map = 1458, x = 73.0, y = 32.9, f = "e" },
					{ t = "turnin", quest = 2995, title = "Lines of Communication", npc = 7825, npcName = "Oran Snakewrithe", map = 1458, x = 73.0, y = 32.9, f = "e" },
					{ t = "accept", quest = 8273, title = "Oran's Gratitude", npc = 7825, npcName = "Oran Snakewrithe", map = 1458, x = 73.0, y = 32.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2932, title = "Grim Message", npc = 2497, npcName = "Nimboya", map = 1434, x = 32.2, y = 27.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 197, itemName = "Talon of Tethis", count = 1, oi = 1, map = 1434, x = 29.2, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 197, title = "Raptor Mastery (4)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "accept", quest = 208, title = "Big Game Hunter", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.6, y = 10.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 208, itemName = "Head of Bangalash", count = 1, oi = 1, map = 1434, x = 38.2, y = 36.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 208, title = "Big Game Hunter", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.6, y = 10.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 608, title = "The Bloodsail Buccaneers (5)", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.2, y = 76.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 580, title = "Whiskey Slim's Lost Grog", npc = 2491, npcName = "Whiskey Slim", map = 1434, x = 27.1, y = 77.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Booty Bay", text = "Booty Bay", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2874, title = "Deliver to MacKinley", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.8, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 348, title = "Stranglethorn Fever", npc = 2486, npcName = "Fin Fizracket", map = 1434, x = 27.6, y = 76.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 348, item = 2799, itemName = "Gorilla Fang", count = 1, map = 1434, x = 31.1, y = 68.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 348, itemName = "Heart of Mokk", count = 1, oi = 1, map = 1434, x = 35.3, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "the Carefully Folded Note", count = 1, map = 1434, x = 35.1, y = 72.9, f = "e" },
					{ t = "accept", quest = 594, title = "Message in a Bottle (1)", map = 1434, x = 35.1, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 594, title = "Message in a Bottle (1)", npc = 2634, npcName = "Princess Poobah", map = 1434, x = 38.5, y = 80.6, f = "e" },
					{ t = "accept", quest = 630, title = "Message in a Bottle (2)", npc = 2634, npcName = "Princess Poobah", map = 1434, x = 38.5, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 630, itemName = "Shackle Key", count = 1, oi = 1, map = 1434, x = 41.0, y = 83.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 630, title = "Message in a Bottle (2)", npc = 2634, npcName = "Princess Poobah", map = 1434, x = 38.5, y = 80.6, f = "e" },
				},
			},
			{
				note = "While doing the next 3 steps, look for Cortello's Riddle on the ships:",
				goals = {
					{ t = "accept", quest = 624, title = "Cortello's Riddle (1)", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1434, x = 32.9, y = 88.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1434, x = 30.6, y = 90.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1434, x = 29.2, y = 88.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 49, f = "e" },
				},
			},
			{
				note = "Make sure you have accepted the Cortello's Riddle quest:",
				goals = {
					{ t = "accept", quest = 624, title = "Cortello's Riddle (1)", f = "e" },
				},
			},
			{
				note = "Hearth to Booty Bay,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1434, x = 27.1, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 608, title = "The Bloodsail Buccaneers (5)", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.2, y = 76.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 348, title = "Stranglethorn Fever", npc = 2486, npcName = "Fin Fizracket", map = 1434, x = 27.6, y = 76.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3123, itemName = "Beast Muisek", count = 10, oi = 1, map = 1444, x = 70.6, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4120, title = "The Strength of Corruption", npc = 7776, npcName = "Talo Thornhoof", map = 1444, x = 76.2, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3123, title = "Testing the Vessel", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.4, y = 43.4, f = "e" },
					{ t = "accept", quest = 3124, title = "Hippogryph Muisek", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.4, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Camp Mojache", text = "Camp Mojache", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3124, itemName = "Hippogryph Muisek", count = 10, oi = 1, map = 1444, x = 56.7, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3124, title = "Hippogryph Muisek", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.4, y = 43.4, f = "e" },
					{ t = "accept", quest = 3125, title = "Faerie Dragon Muisek", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.4, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3125, itemName = "Faerie Dragon Muisek", count = 8, oi = 1, map = 1444, x = 69.4, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3125, title = "Faerie Dragon Muisek", npc = 8115, npcName = "Witch Doctor Uzer'i", map = 1444, x = 74.4, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7003, title = "Zapped Giants", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.8, y = 43.4, f = "e" },
					{ t = "accept", quest = 7721, title = "Fuel for the Zapping", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.8, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 7721, itemName = "Water Elemental Core", count = 10, oi = 1, map = 1444, x = 44.6, y = 51.4, f = "e" },
					{ t = "collect", quest = 7003, itemName = "Miniaturization Residue", count = 15, oi = 1, map = 1444, x = 44.6, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7003, title = "Zapped Giants", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.8, y = 43.4, f = "e" },
					{ t = "turnin", quest = 7721, title = "Fuel for the Zapping", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.8, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 7734, itemName = "Rage Scar Yeti Hide", count = 10, oi = 1, map = 1444, x = 52.8, y = 31.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 3063, target = "Northspring Harpy", count = 4, oi = 1, map = 1444, x = 41.0, y = 11.0, f = "e" },
					{ t = "kill", quest = 3063, target = "Northspring Roguefeather", count = 4, oi = 2, map = 1444, x = 41.0, y = 11.0, f = "e" },
					{ t = "kill", quest = 3063, target = "Northspring Slayer", count = 4, oi = 3, map = 1444, x = 41.0, y = 11.0, f = "e" },
					{ t = "kill", quest = 3063, target = "Northspring Windcaller", count = 4, oi = 4, map = 1444, x = 41.0, y = 11.0, f = "e" },
					{ t = "collect", quest = 3063, item = 9530, itemName = "Horn of Hatetalon", count = 1, map = 1444, x = 41.0, y = 11.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3062, itemName = "Edana's Dark Heart", count = 1, oi = 1, map = 1444, x = 40.3, y = 8.6, f = "e" },
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
					{ t = "turnin", quest = 7734, title = "Improved Quality", npc = 7854, npcName = "Jangdor Swiftstrider", map = 1444, x = 74.4, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3062, title = "Dark Heart", npc = 7776, npcName = "Talo Thornhoof", map = 1444, x = 76.2, y = 43.8, f = "e" },
					{ t = "turnin", quest = 3063, title = "Vengeance on the Northspring", npc = 7776, npcName = "Talo Thornhoof", map = 1444, x = 76.2, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3362, title = "Thistleshrub Valley", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.6, y = 26.8, f = "e" },
					{ t = "accept", quest = 4504, title = "Super Sticky", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.6, y = 26.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 82, title = "Noxious Lair Investigation", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2605, title = "The Thirsty Goblin", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.8, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 243, title = "Into the Field", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
					{ t = "accept", quest = 379, title = "Slake That Thirst", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
					{ t = "turnin", quest = 379, title = "Slake That Thirst", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
					{ t = "accept", quest = 654, title = "Tanaris Field Sampling", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 654, itemName = "Acceptable Basilisk Sample", count = 8, oi = 1, map = 1446, x = 50.0, y = 34.0, f = "e" },
					{ t = "collect", quest = 654, itemName = "Acceptable Hyena Sample", count = 8, oi = 2, map = 1446, x = 50.0, y = 34.0, f = "e" },
					{ t = "collect", quest = 654, itemName = "Acceptable Scorpid Sample", count = 8, oi = 3, map = 1446, x = 50.0, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 654, title = "Tanaris Field Sampling", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
					{ t = "accept", quest = 864, title = "Return to Apothecary Zinge", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Gadgetzan", text = "Gadgetzan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 50, f = "e" },
				},
			},
		},
	})
end

