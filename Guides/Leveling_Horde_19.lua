-- TuWoW_Leveling — Guides/Leveling_Horde_19.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-levels-35-40",
		pack = "guides",
		title = "Levels (35-40) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-levels-35-40-part-2",
		author = "TuWoW & Zygor",
		minLevel = 35,
		maxLevel = 40,
		zone = 1434,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", quest = 187, target = "Elder Stranglethorn Tiger", count = 10, oi = 1, map = 1434, x = 31.8, y = 19.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 568, target = "Lashtail Raptor", count = 15, oi = 1, map = 1434, x = 32.4, y = 21.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 581, title = "Hunt for Yenniku", npc = 2497, npcName = "Nimboya", map = 1434, x = 32.2, y = 27.7, f = "e" },
					{ t = "accept", quest = 582, title = "Headhunting", npc = 2497, npcName = "Nimboya", map = 1434, x = 32.2, y = 27.7, f = "e" },
					{ t = "accept", quest = 2932, title = "Grim Message", npc = 2497, npcName = "Nimboya", map = 1434, x = 32.2, y = 27.7, f = "e" },
					{ t = "turnin", quest = 596, title = "Bloody Bone Necklaces", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.2, y = 27.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9436, title = "Bloodscalp Insight", npc = 17094, npcName = "Nemeth Hawkeye", map = 1434, x = 32.0, y = 28.6, f = "e" },
					{ t = "accept", quest = 9457, title = "An Unusual Patron", npc = 17094, npcName = "Nemeth Hawkeye", map = 1434, x = 32.0, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 568, title = "The Defense of Grom'gol (1)", npc = 2464, npcName = "Commander Aggro'gosh", map = 1434, x = 32.2, y = 28.9, f = "e" },
					{ t = "accept", quest = 569, title = "The Defense of Grom'gol (2)", npc = 2464, npcName = "Commander Aggro'gosh", map = 1434, x = 32.2, y = 28.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 582, itemName = "Shrunken Head", count = 20, oi = 1, map = 1434, x = 20.1, y = 14.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 195, title = "Raptor Mastery (2)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "accept", quest = 196, title = "Raptor Mastery (3)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "turnin", quest = 5763, title = "Hunting in Stranglethorn", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "turnin", quest = 187, title = "Tiger Mastery (3)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.6, y = 10.6, f = "e" },
					{ t = "accept", quest = 188, title = "Tiger Mastery (4)", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.6, y = 10.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 575, itemName = "Large River Crocolisk Skin", count = 2, oi = 1, map = 1434, x = 40.3, y = 12.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 213, itemName = "Tumbled Crystal", count = 8, oi = 1, map = 1434, x = 45.5, y = 21.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 569, target = "Mosh'Ogg Brute", count = 10, oi = 1, map = 1434, x = 37.4, y = 29.3, f = "e" },
					{ t = "kill", quest = 569, target = "Mosh'Ogg Witch Doctor", count = 5, oi = 2, map = 1434, x = 37.4, y = 29.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 569, title = "The Defense of Grom'gol (2)", npc = 2464, npcName = "Commander Aggro'gosh", map = 1434, x = 32.2, y = 28.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 582, title = "Headhunting", npc = 2497, npcName = "Nimboya", map = 1434, x = 32.2, y = 27.7, f = "e" },
					{ t = "accept", quest = 638, title = "Trollbane", npc = 2497, npcName = "Nimboya", map = 1434, x = 32.2, y = 27.7, f = "e" },
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
					{ t = "turnin", quest = 605, title = "Singing Blue Shards", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.1, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 189, title = "Bloodscalp Ears", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.2, f = "e" },
					{ t = "turnin", quest = 213, title = "Hostile Takeover", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.2, f = "e" },
					{ t = "turnin", quest = 201, title = "Investigate the Camp", npc = 773, npcName = "Krazek", map = 1434, x = 27.0, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 621, title = "Zanzil's Secret", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.1, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 575, title = "Supply and Demand", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.3, y = 77.6, f = "e" },
					{ t = "accept", quest = 577, title = "Some Assembly Required", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.3, y = 77.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1164, title = "To Steal From Thieves", npc = 4486, npcName = "Genavie Callow", map = 1458, x = 63.8, y = 49.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 638, title = "Trollbane", npc = 2703, npcName = "Zengu", map = 1417, x = 73.8, y = 34.0, f = "e" },
					{ t = "accept", quest = 639, title = "Sigil of Strom", npc = 2703, npcName = "Zengu", map = 1417, x = 73.8, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 677, title = "Call to Arms (1)", npc = 2771, npcName = "Drum Fel", map = 1417, x = 74.2, y = 33.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 701, title = "Guile of the Raptor (1)", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.7, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 677, target = "Witherbark Axe Thrower", count = 10, oi = 1, map = 1417, x = 70.2, y = 58.9, f = "e" },
					{ t = "kill", quest = 677, target = "Witherbark Headhunter", count = 10, oi = 2, map = 1417, x = 70.2, y = 58.9, f = "e" },
					{ t = "kill", quest = 677, target = "Witherbark Witch Doctor", count = 8, oi = 3, map = 1417, x = 70.2, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 642, title = "The Princess Trapped", map = 1417, x = 62.5, y = 33.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 677, title = "Call to Arms (1)", npc = 2771, npcName = "Drum Fel", map = 1417, x = 74.2, y = 33.9, f = "e" },
					{ t = "accept", quest = 678, title = "Call to Arms (2)", npc = 2771, npcName = "Drum Fel", map = 1417, x = 74.2, y = 33.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Hammerfall", text = "Hammerfall", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1417, x = 80.9, y = 39.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 642, itemName = "Mote of Myzrael", count = 12, oi = 1, map = 1417, x = 82.6, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 642, title = "The Princess Trapped", map = 1417, x = 84.3, y = 31.0, f = "e" },
					{ t = "accept", quest = 651, title = "Stones of Binding", map = 1417, x = 84.3, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1164, itemName = "Kenata's Head", count = 1, oi = 1, map = 1417, x = 56.4, y = 36.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1164, itemName = "Marcel's Head", count = 1, oi = 2, map = 1417, x = 54.2, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1164, itemName = "Fardel's Head", count = 1, oi = 3, map = 1417, x = 56.7, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 701, itemName = "Raptor Heart", count = 12, oi = 1, map = 1417, x = 52.3, y = 67.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 678, target = "Boulderfist Brute", count = 10, oi = 1, map = 1417, x = 53.0, y = 72.8, f = "e" },
					{ t = "kill", quest = 678, target = "Boulderfist Magus", count = 4, oi = 2, map = 1417, x = 53.0, y = 72.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 639, itemName = "Sigil of Strom", count = 1, oi = 1, map = 1417, x = 26.0, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 671, itemName = "Bloodstone Amulet", count = 10, oi = 1, map = 1417, x = 34.1, y = 31.6, f = "e" },
				},
			},
			{
				note = "Hearth to Hammerfall,0.1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 1417, x = 73.8, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 639, title = "Sigil of Strom", npc = 2703, npcName = "Zengu", map = 1417, x = 73.8, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 678, title = "Call to Arms (2)", npc = 2771, npcName = "Drum Fel", map = 1417, x = 74.2, y = 33.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 671, title = "Foul Magics (1)", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.7, y = 36.3, f = "e" },
					{ t = "turnin", quest = 701, title = "Guile of the Raptor (1)", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.7, y = 36.3, f = "e" },
					{ t = "accept", quest = 702, title = "Guile of the Raptor (2)", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.7, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 702, title = "Guile of the Raptor (2)", npc = 2792, npcName = "Gor'mul", map = 1417, x = 72.6, y = 33.9, f = "e" },
					{ t = "accept", quest = 847, title = "Guile of the Raptor (3)", npc = 2792, npcName = "Gor'mul", map = 1417, x = 72.6, y = 33.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 847, title = "Guile of the Raptor (3)", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.7, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 37, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 544, title = "Prison Break In", npc = 2410, npcName = "Magus Wordeen Voidglare", map = 1424, x = 61.5, y = 20.9, f = "e" },
					{ t = "accept", quest = 556, title = "Stone Tokens", npc = 2437, npcName = "Keeper Bel'varil", map = 1424, x = 61.5, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 556, itemName = "Worn Stone Token", count = 10, oi = 1, map = 1416, x = 21.3, y = 83.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 544, itemName = "Bloodstone Marble", count = 1, oi = 2, map = 1416, x = 20.1, y = 84.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 544, itemName = "Bloodstone Shard", count = 1, oi = 3, map = 1416, x = 20.2, y = 86.4, f = "e" },
					{ t = "collect", quest = 544, itemName = "Bloodstone Wedge", count = 1, oi = 1, map = 1416, x = 20.2, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 544, itemName = "Bloodstone Oval", count = 1, oi = 4, map = 1416, x = 17.8, y = 83.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1136, item = 5810, itemName = "Fresh Carcass", count = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 544, title = "Prison Break In", npc = 2410, npcName = "Magus Wordeen Voidglare", map = 1416, x = 61.5, y = 20.9, f = "e" },
					{ t = "accept", quest = 545, title = "Dalaran Patrols", npc = 2410, npcName = "Magus Wordeen Voidglare", map = 1416, x = 61.5, y = 20.9, f = "e" },
					{ t = "turnin", quest = 556, title = "Stone Tokens", npc = 2437, npcName = "Keeper Bel'varil", map = 1416, x = 61.5, y = 20.9, f = "e" },
					{ t = "accept", quest = 557, title = "Bracers of Binding", npc = 2437, npcName = "Keeper Bel'varil", map = 1416, x = 61.5, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1136, itemName = "Frostmaw's Mane", count = 1, oi = 1, map = 1416, x = 37.5, y = 66.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 545, target = "Dalaran Summoner", count = 6, oi = 1, map = 1416, x = 20.0, y = 74.0, f = "e" },
					{ t = "kill", quest = 545, target = "Elemental Slave", count = 12, oi = 2, map = 1416, x = 20.0, y = 74.0, f = "e" },
					{ t = "collect", quest = 557, itemName = "Bracers of Earth Binding", count = 4, oi = 1, map = 1416, x = 20.0, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 545, title = "Dalaran Patrols", npc = 2410, npcName = "Magus Wordeen Voidglare", map = 1424, x = 61.5, y = 20.9, f = "e" },
					{ t = "turnin", quest = 557, title = "Bracers of Binding", npc = 2437, npcName = "Keeper Bel'varil", map = 1424, x = 61.5, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 553, title = "Helcular's Revenge (2)", map = 1424, x = 52.7, y = 53.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1164, title = "To Steal From Thieves", npc = 4486, npcName = "Genavie Callow", map = 1458, x = 63.8, y = 49.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1458, x = 61.9, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9457, itemName = "Heart of Naias", count = 1, oi = 1, map = 1458, x = 19.8, y = 22.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 629, itemName = "Tablet Shard", count = 1, oi = 1, map = 1458, x = 24.8, y = 23.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1182, item = 5851, itemName = "Cozzle's Key", count = 1, map = 1458, x = 42.7, y = 18.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1182, itemName = "Fuel Regulator Blueprints", count = 1, oi = 1, map = 1458, x = 43.3, y = 20.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 192, target = "Shadowmaw Panther", count = 10, oi = 1, map = 1458, x = 47.1, y = 22.9, f = "e" },
					{ t = "collect", quest = 570, itemName = "Shadowmaw Claw", count = 8, oi = 1, map = 1458, x = 47.1, y = 22.9, f = "e" },
					{ t = "collect", quest = 570, itemName = "Pristine Tigress Fang", count = 1, oi = 2, map = 1458, x = 47.1, y = 22.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 570, title = "Mok'thardin's Enchantment (1)", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1458, x = 32.1, y = 29.2, f = "e" },
					{ t = "accept", quest = 572, title = "Mok'thardin's Enchantment (2)", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1458, x = 32.1, y = 29.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9457, title = "An Unusual Patron", npc = 17094, npcName = "Nemeth Hawkeye", map = 1458, x = 32.0, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 629, title = "The Vile Reef", npc = 2519, npcName = "Kin'weelay", map = 1458, x = 32.3, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1182, title = "Goblin Sponsorship (4)", npc = 2496, npcName = "Baron Revilgaz", map = 1458, x = 27.2, y = 76.9, f = "e" },
					{ t = "accept", quest = 1183, title = "Goblin Sponsorship (5)", npc = 2496, npcName = "Baron Revilgaz", map = 1458, x = 27.2, y = 76.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5361, title = "Family Tree", npc = 11259, npcName = "Nataka Longhorn", map = 1458, x = 55.4, y = 55.8, f = "e" },
				},
			},
			{
				note = "Hearth to Hammerfall|goto Arathi Highlands,73.8,32.6,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 651, itemName = "Cresting Key", count = 1, oi = 2, map = 1458, x = 66.8, y = 29.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 651, itemName = "Thundering Key", count = 1, oi = 3, map = 1458, x = 52.1, y = 50.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 651, itemName = "Burning Key", count = 1, oi = 1, map = 1458, x = 25.5, y = 30.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 651, title = "Stones of Binding", map = 1458, x = 36.2, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1458, x = 31.3, y = 64.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 663, title = "Land Ho!", npc = 2766, npcName = "Lolo the Lookout", map = 1458, x = 31.8, y = 82.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 663, title = "Land Ho!", npc = 2610, npcName = "Shakes O'Breen", map = 1458, x = 32.3, y = 81.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 662, title = "Deep Sea Salvage", npc = 2767, npcName = "First Mate Nilzlix", map = 1458, x = 32.8, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 664, title = "Drowned Sorrows", npc = 2769, npcName = "Captain Steelgut", map = 1458, x = 33.9, y = 80.7, f = "e" },
					{ t = "accept", quest = 665, title = "Sunken Treasure (1)", npc = 2768, npcName = "Professor Phizzlethorpe", map = 1458, x = 33.9, y = 80.7, f = "e" },
					{ t = "turnin", quest = 665, title = "Sunken Treasure (1)", npc = 2774, npcName = "Doctor Draxlegauge", map = 1458, x = 33.9, y = 80.7, f = "e" },
					{ t = "accept", quest = 666, title = "Sunken Treasure (2)", npc = 2774, npcName = "Doctor Draxlegauge", map = 1458, x = 33.9, y = 80.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 664, target = "Daggerspine Raider", count = 10, oi = 1, map = 1458, x = 25.2, y = 84.7, f = "e" },
					{ t = "kill", quest = 664, target = "Daggerspine Sorceress", count = 3, oi = 2, map = 1458, x = 25.2, y = 84.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 662, itemName = "Maiden's Folly Log", count = 1, oi = 2, map = 1458, x = 23.4, y = 85.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 662, itemName = "Maiden's Folly Charts", count = 1, oi = 1, map = 1458, x = 23.0, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 662, itemName = "Spirit of Silverpine Charts", count = 1, oi = 3, map = 1458, x = 20.5, y = 85.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 662, itemName = "Spirit of Silverpine Log", count = 1, oi = 4, map = 1458, x = 20.6, y = 85.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 666, itemName = "Elven Gem", count = 10, oi = 1, map = 1458, x = 21.9, y = 83.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 662, title = "Deep Sea Salvage", npc = 2767, npcName = "First Mate Nilzlix", map = 1458, x = 32.8, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 664, title = "Drowned Sorrows", npc = 2769, npcName = "Captain Steelgut", map = 1458, x = 33.9, y = 80.7, f = "e" },
					{ t = "turnin", quest = 666, title = "Sunken Treasure (2)", npc = 2774, npcName = "Doctor Draxlegauge", map = 1458, x = 33.9, y = 80.7, f = "e" },
					{ t = "accept", quest = 668, title = "Sunken Treasure (3)", npc = 2774, npcName = "Doctor Draxlegauge", map = 1458, x = 33.9, y = 80.7, f = "e" },
				},
			},
		},
	})
end

