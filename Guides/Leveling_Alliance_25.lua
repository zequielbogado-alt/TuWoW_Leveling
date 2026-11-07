-- TuWoW_Leveling — Guides/Leveling_Alliance_25.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-45-50",
		pack = "guides",
		title = "Levels (45-50) (Parte 1/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-45-50-part-2",
		author = "TuWoW & Zygor",
		minLevel = 45,
		maxLevel = 50,
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Hearth to Gadgetzan|goto Tanaris,51.7,27.8,6|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1690, title = "Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
					{ t = "accept", quest = 1691, title = "More Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
					{ t = "turnin", quest = 2781, title = "WANTED: Caliph Scorpidsting", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
					{ t = "turnin", quest = 1707, title = "Water Pouch Bounty", npc = 7408, npcName = "Spigot Operator Luglunket", map = 1446, x = 52.5, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1691, target = "Wastewander Rogue", count = 8, oi = 1, map = 1446, x = 64.3, y = 38.2, f = "e" },
					{ t = "kill", quest = 1691, target = "Wastewander Assassin", count = 6, oi = 2, map = 1446, x = 64.3, y = 38.2, f = "e" },
					{ t = "kill", quest = 1691, target = "Wastewander Shadow Mage", count = 10, oi = 3, map = 1446, x = 64.3, y = 38.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2873, title = "Stoley's Shipment", npc = 7881, npcName = "Stoley", map = 1446, x = 67.1, y = 23.9, f = "e" },
					{ t = "accept", quest = 2874, title = "Deliver to MacKinley", npc = 7881, npcName = "Stoley", map = 1446, x = 67.1, y = 23.9, f = "e" },
					{ t = "turnin", quest = 8366, title = "Southsea Shakedown", npc = 7882, npcName = "Security Chief Bilgewhizzle", map = 1446, x = 67.1, y = 23.9, f = "e" },
					{ t = "turnin", quest = 2875, title = "WANTED: Andre Firebeard", npc = 7882, npcName = "Security Chief Bilgewhizzle", map = 1446, x = 67.1, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8365, title = "Pirate Hats Ahoy!", npc = 15165, npcName = "Haughty Modiste", map = 1446, x = 66.6, y = 22.3, f = "e" },
				},
			},
			{
				note = "Hearth to Gadgetzan|goto Tanaris,51.7,27.8,6|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1691, title = "More Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3022, title = "Handle With Care", npc = 7763, npcName = "Curgle Cranklehop", map = 1446, x = 52.4, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2821, title = "The Mark of Quality", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.6, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Feathermoon Stronghold", text = "Feathermoon Stronghold", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2866, title = "The Ruins of Solarsal", npc = 3936, npcName = "Shandris Feathermoon", map = 1444, x = 30.3, y = 46.2, f = "e" },
					{ t = "accept", quest = 4124, title = "The Missing Courier (1)", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.3, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2939, title = "In Search of Knowledge", npc = 7764, npcName = "Troyas Moonbreeze", map = 1444, x = 31.8, y = 45.6, f = "e" },
					{ t = "accept", quest = 2982, title = "The High Wilderness", npc = 7900, npcName = "Angelas Moonbreeze", map = 1444, x = 31.8, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4124, title = "The Missing Courier (1)", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.9, y = 45.1, f = "e" },
					{ t = "accept", quest = 4125, title = "The Missing Courier (2)", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.9, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2866, title = "The Ruins of Solarsal", map = 1444, x = 26.3, y = 52.3, f = "e" },
					{ t = "accept", quest = 2867, title = "Return to Feathermoon Stronghold", map = 1444, x = 26.3, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2867, title = "Return to Feathermoon Stronghold", npc = 3936, npcName = "Shandris Feathermoon", map = 1444, x = 30.3, y = 46.2, f = "e" },
					{ t = "accept", quest = 3130, title = "Against the Hatecrest (1)", npc = 3936, npcName = "Shandris Feathermoon", map = 1444, x = 30.3, y = 46.2, f = "e" },
					{ t = "turnin", quest = 3130, title = "Against the Hatecrest (1)", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.3, y = 46.2, f = "e" },
					{ t = "accept", quest = 2869, title = "Against the Hatecrest (2)", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.3, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Hatecrest nagas", count = 1, map = 1444, x = 27.2, y = 52.2, f = "e" },
					{ t = "collect", quest = 2869, itemName = "Hatecrest Naga Scale", count = 10, oi = 1, map = 1444, x = 27.2, y = 52.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2869, title = "Against the Hatecrest (2)", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.3, y = 46.2, f = "e" },
					{ t = "accept", quest = 2870, title = "Against Lord Shalzaru", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.3, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1444, x = 25.5, y = 64.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2870, itemName = "Mysterious Relic", count = 1, oi = 1, map = 1444, x = 28.5, y = 70.7, f = "e" },
				},
			},
			{
				note = "Go outside the cave to 30.3,46.2",
				goals = {
					{ t = "turnin", quest = 2870, title = "Against Lord Shalzaru", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.3, y = 46.2, f = "e" },
					{ t = "accept", quest = 2871, title = "Delivering the Relic", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.3, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2871, title = "Delivering the Relic", npc = 7878, npcName = "Vestia Moonspear", map = 1444, x = 30.1, y = 45.1, f = "e" },
				},
			},
			{
				note = "Ride the boat to the main continent of Feralas|goto Feralas,43.5,42.7,1|noway|c",
				goals = {
					{ t = "goto", map = 1444, x = 31.0, y = 39.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Rogue Vale Screechers", count = 3, map = 1444, x = 46.6, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4125, title = "The Missing Courier (2)", map = 1444, x = 45.5, y = 65.0, f = "e" },
					{ t = "accept", quest = 4127, title = "Boat Wreckage", map = 1444, x = 45.5, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1444, x = 43.5, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4127, title = "Boat Wreckage", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.9, y = 45.1, f = "e" },
					{ t = "accept", quest = 4129, title = "The Knife Revealed", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.9, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4129, title = "The Knife Revealed", npc = 7879, npcName = "Quintis Jonespyre", map = 1444, x = 32.4, y = 43.8, f = "e" },
					{ t = "accept", quest = 4130, title = "Psychometric Reading", npc = 7879, npcName = "Quintis Jonespyre", map = 1444, x = 32.4, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4130, title = "Psychometric Reading", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.9, y = 45.1, f = "e" },
					{ t = "accept", quest = 4131, title = "The Woodpaw Gnolls", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.9, y = 45.1, f = "e" },
				},
			},
			{
				note = "Ride the boat to the main continent of Feralas|goto Feralas,43.5,42.7,1|noway|c",
				goals = {
					{ t = "goto", map = 1444, x = 31.0, y = 39.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "yetis", count = 1, map = 1444, x = 55.5, y = 54.8, f = "e" },
					{ t = "collect", quest = 2821, itemName = "Thick Yeti Hide", count = 10, oi = 1, map = 1444, x = 55.5, y = 54.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 46, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2982, target = "Gordunni Shaman", count = 8, oi = 2, map = 1444, x = 57.9, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2982, target = "Gordunni Warlock", count = 8, oi = 1, map = 1444, x = 60.4, y = 58.8, f = "e" },
					{ t = "kill", quest = 2982, target = "Gordunni Brute", count = 8, oi = 3, map = 1444, x = 60.4, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1444, x = 65.6, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2969, title = "Freedom for All Creatures", npc = 7956, npcName = "Kindal Moonweaver", map = 1444, x = 65.9, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1444, x = 66.7, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2969, title = "Freedom for All Creatures", npc = 7956, npcName = "Kindal Moonweaver", map = 1444, x = 65.9, y = 45.6, f = "e" },
					{ t = "accept", quest = 2970, title = "Doling Justice (1)", npc = 7957, npcName = "Jer'kai Moonweaver", map = 1444, x = 65.9, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2970, target = "Grimtotem Naturalist", count = 12, oi = 1, map = 1444, x = 67.5, y = 46.4, f = "e" },
					{ t = "kill", quest = 2970, target = "Grimtotem Raider", count = 10, oi = 2, map = 1444, x = 67.5, y = 46.4, f = "e" },
					{ t = "kill", quest = 2970, target = "Grimtotem Shaman", count = 6, oi = 3, map = 1444, x = 67.5, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2970, title = "Doling Justice (1)", npc = 7957, npcName = "Jer'kai Moonweaver", map = 1444, x = 65.9, y = 45.6, f = "e" },
					{ t = "accept", quest = 2972, title = "Doling Justice (2)", npc = 7957, npcName = "Jer'kai Moonweaver", map = 1444, x = 65.9, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4131, title = "The Woodpaw Gnolls", map = 1444, x = 73.3, y = 56.3, f = "e" },
					{ t = "accept", quest = 4135, title = "The Writhing Deep", map = 1444, x = 73.3, y = 56.3, f = "e" },
					{ t = "accept", quest = 4281, title = "Thalanaar Delivery", map = 1444, x = 73.3, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4135, title = "The Writhing Deep", map = 1444, x = 73.5, y = 63.1, f = "e" },
					{ t = "accept", quest = 4265, title = "Freed from the Hive", map = 1444, x = 73.5, y = 63.1, f = "e" },
				},
			},
			{
				note = "Hearth to Feathermoon Stronghold|goto Feralas,31.0,44.0,5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2821, title = "The Mark of Quality", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.6, y = 42.7, f = "e" },
					{ t = "accept", quest = 7733, title = "Improved Quality", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.6, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2982, title = "The High Wilderness", npc = 7900, npcName = "Angelas Moonbreeze", map = 1444, x = 31.8, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4265, title = "Freed from the Hive", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.9, y = 45.1, f = "e" },
					{ t = "accept", quest = 4266, title = "A Hero's Welcome", npc = 7880, npcName = "Ginro Hearthkindle", map = 1444, x = 31.9, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4266, title = "A Hero's Welcome", npc = 3936, npcName = "Shandris Feathermoon", map = 1444, x = 30.3, y = 46.2, f = "e" },
					{ t = "accept", quest = 4267, title = "Rise of the Silithid", npc = 3936, npcName = "Shandris Feathermoon", map = 1444, x = 30.3, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4281, title = "Thalanaar Delivery", npc = 4048, npcName = "Falfindel Waywarder", map = 1444, x = 89.6, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3022, title = "Handle With Care", npc = 7916, npcName = "Erelas Ambersky", map = 1438, x = 55.5, y = 92.0, f = "e" },
					{ t = "accept", quest = 3661, title = "Favored of Elune?", npc = 7916, npcName = "Erelas Ambersky", map = 1438, x = 55.5, y = 92.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2939, title = "In Search of Knowledge", npc = 7907, npcName = "Daryn Lightwind", map = 1438, x = 55.5, y = 92.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2940, title = "Feralas: A History", map = 1438, x = 55.2, y = 91.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2940, title = "Feralas: A History", npc = 7907, npcName = "Daryn Lightwind", map = 1438, x = 55.4, y = 92.2, f = "e" },
					{ t = "accept", quest = 2941, title = "The Borrower", npc = 7907, npcName = "Daryn Lightwind", map = 1438, x = 55.4, y = 92.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4267, title = "Rise of the Silithid", npc = 7740, npcName = "Gracina Spiritmight", map = 1457, x = 41.8, y = 85.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2972, title = "Doling Justice (2)", npc = 7999, npcName = "Tyrande Whisperwind", map = 1457, x = 38.3, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2941, title = "The Borrower", npc = 7763, npcName = "Curgle Cranklehop", map = 1446, x = 52.4, y = 26.9, f = "e" },
					{ t = "accept", quest = 2944, title = "The Super Snapper FX", npc = 7763, npcName = "Curgle Cranklehop", map = 1446, x = 52.4, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2874, title = "Deliver to MacKinley", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.8, y = 77.1, f = "e" },
				},
			},
			{
				note = "Buy 2 Elixirs of Fortitude from the Auction House",
				goals = {
					{ t = "buy", itemName = "Elixir of Fortitude", count = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1424, x = 84.9, y = 31.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Aerie Peak", text = "Aerie Peak", map = 1425, x = 11.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2988, title = "Witherbark Cages", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.8, y = 44.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2877, title = "Skulk Rock Clean-up", npc = 7884, npcName = "Fraggar Thundermantle", map = 1425, x = 14.8, y = 44.6, f = "e" },
					{ t = "accept", quest = 2880, title = "Troll Necklace Bounty", npc = 7884, npcName = "Fraggar Thundermantle", map = 1425, x = 14.8, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Aerie Peak", text = "Aerie Peak", map = 1425, x = 13.8, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9469, title = "Featherbeard's Endorsement", npc = 17223, npcName = "Ambassador Rualeth", map = 1425, x = 15.1, y = 47.2, f = "e" },
					{ t = "accept", quest = 9470, title = "A Gesture of Goodwill", npc = 17223, npcName = "Ambassador Rualeth", map = 1425, x = 15.1, y = 47.2, f = "e" },
					{ t = "accept", quest = 9471, title = "Preying on the Predators", npc = 17223, npcName = "Ambassador Rualeth", map = 1425, x = 15.1, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9469, title = "Featherbeard's Endorsement", map = 1425, x = 13.4, y = 55.2, f = "e" },
					{ t = "accept", quest = 9476, title = "In Pursuit of Featherbeard", map = 1425, x = 13.4, y = 55.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9471, target = "Mangy Silvermane", count = 10, oi = 1, map = 1425, x = 20.5, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3661, itemName = "Wildkin Feather", count = 15, oi = 1, map = 1425, x = 22.9, y = 54.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "trolls", count = 1, map = 1425, x = 24.8, y = 55.4, f = "e" },
					{ t = "collect", quest = 2880, itemName = "Troll Tribal Necklace", count = 5, oi = 1, map = 1425, x = 24.8, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1425, x = 23.2, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9470, target = "Tcha'kaz", count = 1, oi = 2, map = 1425, x = 24.6, y = 65.6, f = "e" },
					{ t = "kill", quest = 9470, target = "Witch Doctor Mai'jin", count = 1, oi = 1, map = 1425, x = 24.6, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9471, target = "Silvermane Wolf", count = 5, oi = 2, map = 1425, x = 27.1, y = 66.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1425, x = 32.1, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2877, target = "Green Sludge", count = 10, oi = 1, map = 1425, x = 48.2, y = 41.7, f = "e" },
					{ t = "kill", quest = 2877, target = "Jade Ooze", count = 10, oi = 2, map = 1425, x = 48.2, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 47, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1425, x = 71.5, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1425, x = 76.9, y = 64.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 580, itemName = "Pupellyverbos Port", count = 12, oi = 1, map = 1425, x = 78.8, y = 63.4, f = "e" },
				},
			},
			{
				note = "Hearth to Aerie Peak|goto The Hinterlands,13.9,42.1,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2877, title = "Skulk Rock Clean-up", npc = 7884, npcName = "Fraggar Thundermantle", map = 1425, x = 14.8, y = 44.6, f = "e" },
					{ t = "turnin", quest = 2880, title = "Troll Necklace Bounty", npc = 7884, npcName = "Fraggar Thundermantle", map = 1425, x = 14.8, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9470, title = "A Gesture of Goodwill", npc = 17223, npcName = "Ambassador Rualeth", map = 1425, x = 15.1, y = 47.2, f = "e" },
					{ t = "turnin", quest = 9471, title = "Preying on the Predators", npc = 17223, npcName = "Ambassador Rualeth", map = 1425, x = 15.1, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2988, title = "Witherbark Cages", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.8, y = 44.5, f = "e" },
					{ t = "accept", quest = 2989, title = "The Altar of Zul", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.8, y = 44.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9476, title = "In Pursuit of Featherbeard", map = 1425, x = 37.2, y = 71.5, f = "e" },
					{ t = "accept", quest = 9475, title = "Reclaiming the Eggs", map = 1425, x = 37.2, y = 71.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9475, itemName = "Gryphon Egg", count = 5, oi = 1, map = 1425, x = 34.1, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1425, x = 48.3, y = 67.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9475, title = "Reclaiming the Eggs", npc = 17223, npcName = "Ambassador Rualeth", map = 1425, x = 15.1, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2989, title = "The Altar of Zul", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.8, y = 44.5, f = "e" },
					{ t = "accept", quest = 2990, title = "Thadius Grimshade", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.8, y = 44.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1453, x = 22.6, y = 56.1, f = "e" },
				},
			},
		},
	})
end

