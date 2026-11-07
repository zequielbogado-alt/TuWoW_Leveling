-- TuWoW_Leveling — Guides/Leveling_Alliance_24.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-40-45-part-2",
		pack = "guides",
		title = "Levels (40-45) (Parte 2/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-40-45-part-3",
		author = "TuWoW & Zygor",
		minLevel = 40,
		maxLevel = 45,
		zone = 1445,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", target = "goblins", count = 1, map = 1434, x = 41.4, y = 42.3, f = "e" },
					{ t = "collect", quest = 600, itemName = "Singing Blue Crystal", count = 10, oi = 1, map = 1434, x = 41.4, y = 42.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Skullsplitter trolls", count = 1, map = 1434, x = 42.5, y = 36.7, f = "e" },
					{ t = "collect", quest = 209, itemName = "Skullsplitter Tusk", count = 18, oi = 1, map = 1434, x = 42.5, y = 36.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 193, itemName = "Fang of Bhag'thera", count = 1, oi = 1, map = 1434, x = 50.0, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Snapjaw Crocolisks", count = 1, map = 1434, x = 40.0, y = 29.0, f = "e" },
					{ t = "collect", quest = 577, itemName = "Snapjaw Crocolisk Skin", count = 5, oi = 1, map = 1434, x = 40.0, y = 29.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Lesser Water Elementals", count = 1, map = 1434, x = 21.7, y = 25.0, f = "e" },
					{ t = "collect", quest = 601, itemName = "Water Elemental Bracers", count = 6, oi = 1, map = 1434, x = 21.7, y = 25.0, f = "e" },
				},
			},
			{
				note = "Hearth to Booty Bay|goto Stranglethorn Vale,27.7,74.6,6|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 600, title = "Venture Company Mining", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.1, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 209, title = "Skullsplitter Tusks", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 601, title = "Water Elementals", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.2, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 577, title = "Some Assembly Required", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.3, y = 77.6, f = "e" },
					{ t = "accept", quest = 628, title = "Excelsior", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.3, y = 77.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 595, title = "The Bloodsail Buccaneers (1)", map = 1434, x = 27.3, y = 69.5, f = "e" },
					{ t = "accept", quest = 597, title = "The Bloodsail Buccaneers (2)", map = 1434, x = 27.3, y = 69.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Elder Mistvale Gorillas", count = 1, map = 1434, x = 32.2, y = 66.8, f = "e" },
					{ t = "collect", quest = 606, itemName = "Mistvale Giblets", count = 5, oi = 1, map = 1434, x = 32.2, y = 66.8, f = "e" },
				},
			},
			{
				note = "Go inside Booty Bay to 26.9,73.6",
				goals = {
					{ t = "turnin", quest = 606, title = "Scaring Shaky", npc = 2502, npcName = "\"Shaky\" Phillipe", map = 1434, x = 26.9, y = 73.6, f = "e" },
					{ t = "accept", quest = 607, title = "Return to MacKinley", npc = 2502, npcName = "\"Shaky\" Phillipe", map = 1434, x = 26.9, y = 73.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 597, title = "The Bloodsail Buccaneers (2)", npc = 2490, npcName = "First Mate Crazz", map = 1434, x = 28.1, y = 76.2, f = "e" },
					{ t = "accept", quest = 599, title = "The Bloodsail Buccaneers (3)", npc = 2490, npcName = "First Mate Crazz", map = 1434, x = 28.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 607, title = "Return to MacKinley", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.8, y = 77.1, f = "e" },
					{ t = "accept", quest = 609, title = "Voodoo Dues", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.8, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 587, title = "Up to Snuff", npc = 2488, npcName = "Deeg", map = 1434, x = 26.9, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 599, title = "The Bloodsail Buccaneers (3)", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.2, y = 77.0, f = "e" },
					{ t = "accept", quest = 604, title = "The Bloodsail Buccaneers (4)", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.2, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 193, title = "Panther Mastery (4)", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "turnin", quest = 196, title = "Raptor Mastery (3)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "accept", quest = 197, title = "Raptor Mastery (4)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.8, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 43, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 628, itemName = "Elder Crocolisk Skin", count = 1, oi = 1, map = 1434, x = 25.3, y = 19.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 24366, npcName = "Nizzle", map = 1434, x = 38.2, y = 4.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 628, title = "Excelsior", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.3, y = 77.6, f = "e" },
				},
			},
			{
				note = "Buy the following items from the Auction House:|tip If you cannot buy some of these, ask people to make them for you in General and Trade chat.  Offer to pay well and you will usually get someone to do it for you.",
				goals = {
					{ t = "buy", itemName = "Healing Potion", count = 1, f = "e" },
					{ t = "buy", itemName = "Lesser Invisibility Potion", count = 1, f = "e" },
					{ t = "buy", itemName = "Gyrochronatom", count = 1, f = "e" },
					{ t = "buy", itemName = "Frost Oil", count = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Thelsamar", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 738, title = "Find Agmond", npc = 1344, npcName = "Prospector Ironband", map = 1434, x = 65.9, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 719, title = "A Dwarf and His Tools", npc = 2910, npcName = "Prospector Ryedol", map = 1418, x = 53.6, y = 43.3, f = "e" },
					{ t = "accept", quest = 718, title = "Mirages", npc = 2860, npcName = "Sigrun Ironhew", map = 1418, x = 53.6, y = 43.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1106, title = "Martek the Exiled", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.2, y = 52.7, f = "e" },
					{ t = "accept", quest = 1108, title = "Indurium", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.2, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 710, title = "Study of the Elements: Rock (1)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 713, title = "Coolant Heads Prevail", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "turnin", quest = 713, title = "Coolant Heads Prevail", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 714, title = "Gyro... What?", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "turnin", quest = 714, title = "Gyro... What?", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 715, title = "Liquid Stone", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "turnin", quest = 715, title = "Liquid Stone", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.9, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Lesser Rock Elementals", count = 1, map = 1418, x = 21.9, y = 44.6, f = "e" },
					{ t = "collect", quest = 710, itemName = "Small Stone Shard", count = 10, oi = 1, map = 1418, x = 21.9, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 710, title = "Study of the Elements: Rock (1)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 711, title = "Study of the Elements: Rock (2)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Dark Iron dwarves", count = 1, map = 1418, x = 52.3, y = 30.4, f = "e" },
					{ t = "collect", quest = 719, itemName = "Ryedol's Lucky Pick", count = 1, oi = 1, map = 1418, x = 52.3, y = 30.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 720, title = "A Sign of Hope", map = 1418, x = 53.0, y = 33.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 718, itemName = "Supply Crate", count = 1, oi = 1, map = 1418, x = 66.6, y = 21.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 720, title = "A Sign of Hope", npc = 2910, npcName = "Prospector Ryedol", map = 1418, x = 53.6, y = 43.3, f = "e" },
					{ t = "turnin", quest = 719, title = "A Dwarf and His Tools", npc = 2910, npcName = "Prospector Ryedol", map = 1418, x = 53.6, y = 43.3, f = "e" },
					{ t = "turnin", quest = 718, title = "Mirages", npc = 2860, npcName = "Sigrun Ironhew", map = 1418, x = 53.6, y = 43.3, f = "e" },
					{ t = "accept", quest = 733, title = "Scrounging", npc = 2860, npcName = "Sigrun Ironhew", map = 1418, x = 53.6, y = 43.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 738, title = "Find Agmond", map = 1418, x = 50.9, y = 62.4, f = "e" },
					{ t = "accept", quest = 739, title = "Murdaloc", map = 1418, x = 50.9, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 739, target = "Stonevault Bonesnapper", count = 12, oi = 2, map = 1418, x = 51.8, y = 65.6, f = "e" },
					{ t = "kill", quest = 739, target = "Murdaloc", count = 1, oi = 1, map = 1418, x = 51.8, y = 65.6, f = "e" },
					{ t = "kill", target = "Stonevault mobs", count = 1, map = 1418, x = 51.8, y = 65.6, f = "e" },
					{ t = "collect", quest = 1108, itemName = "Indurium Flake", count = 10, oi = 1, map = 1418, x = 51.8, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1418, x = 46.3, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Rock Elementals", count = 1, map = 1418, x = 44.8, y = 80.6, f = "e" },
					{ t = "collect", quest = 711, itemName = "Large Stone Slab", count = 3, oi = 1, map = 1418, x = 44.8, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "ogres", count = 1, map = 1418, x = 13.5, y = 78.3, f = "e" },
					{ t = "collect", quest = 733, itemName = "Scrap Metal", count = 7, oi = 1, map = 1418, x = 13.5, y = 78.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 711, title = "Study of the Elements: Rock (2)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 712, title = "Study of the Elements: Rock (3)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1418, x = 7.9, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Greater Rock Elementals", count = 1, map = 1418, x = 4.2, y = 81.5, f = "e" },
					{ t = "collect", quest = 712, itemName = "Bracers of Rock Binding", count = 5, oi = 1, map = 1418, x = 4.2, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 712, title = "Study of the Elements: Rock (3)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 734, title = "This Is Going to Be Hard (1)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "turnin", quest = 734, title = "This Is Going to Be Hard (1)", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 777, title = "This Is Going to Be Hard (2)", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.9, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 777, title = "This Is Going to Be Hard (2)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "accept", quest = 778, title = "This Is Going to Be Hard (3)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "collect", itemName = "Lotwil's Shackles of Elemental Binding", count = 1, map = 1418, x = 25.9, y = 44.6, f = "e" },
					{ t = "turnin", quest = 778, title = "This Is Going to Be Hard (3)", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.9, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1108, title = "Indurium", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.2, y = 52.7, f = "e" },
					{ t = "accept", quest = 1137, title = "News for Fizzle", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.2, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 733, title = "Scrounging", npc = 2860, npcName = "Sigrun Ironhew", map = 1418, x = 53.6, y = 43.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 739, title = "Murdaloc", npc = 1344, npcName = "Prospector Ironband", map = 1432, x = 65.9, y = 65.6, f = "e" },
				},
			},
			{
				note = "Hearth to Thelsamar|goto Loch Modan,35.1,46.9,3|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1395, title = "Supplies for Nethergarde", npc = 5464, npcName = "Watchmaster Sorigal", map = 1431, x = 75.8, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1395, title = "Supplies for Nethergarde", npc = 5393, npcName = "Quartermaster Lungertz", map = 1419, x = 66.5, y = 21.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Nethergarde Keep", map = 1419, x = 65.5, y = 24.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2864, title = "Tran'rek", npc = 773, npcName = "Krazek", map = 1434, x = 26.9, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 621, title = "Zanzil's Secret", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.1, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 580, title = "Whiskey Slim's Lost Grog", npc = 2491, npcName = "Whiskey Slim", map = 1434, x = 27.1, y = 77.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Booty Bay", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 617, title = "Akiris by the Bundle (1)", npc = 2494, npcName = "Privateer Bloads", map = 1434, x = 26.8, y = 76.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2872, title = "Stoley's Debt", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.8, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 576, title = "Keep An Eye Out", npc = 2493, npcName = "Dizzy One-Eye", map = 1434, x = 28.6, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 604, target = "Bloodsail Swashbuckler", count = 10, oi = 1, map = 1434, x = 32.8, y = 76.2, f = "e" },
					{ t = "collect", quest = 576, itemName = "Dizzy's Eye", count = 1, oi = 1, map = 1434, x = 32.8, y = 76.2, f = "e" },
					{ t = "collect", quest = 587, itemName = "Snuff", count = 15, oi = 1, map = 1434, x = 32.8, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 604, itemName = "Bloodsail Orders", count = 1, oi = 3, map = 1434, x = 29.6, y = 80.9, f = "e" },
					{ t = "collect", quest = 604, itemName = "Bloodsail Charts", count = 1, oi = 2, map = 1434, x = 29.6, y = 80.9, f = "e" },
				},
			},
			{
				note = "Go north to Booty Bay to 26.9,77.3",
				goals = {
					{ t = "turnin", quest = 587, title = "Up to Snuff", npc = 2488, npcName = "Deeg", map = 1434, x = 26.9, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 604, title = "The Bloodsail Buccaneers (4)", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.2, y = 77.0, f = "e" },
					{ t = "accept", quest = 608, title = "The Bloodsail Buccaneers (5)", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.2, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 576, title = "Keep An Eye Out", npc = 2493, npcName = "Dizzy One-Eye", map = 1434, x = 28.6, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Naga Explorers", count = 1, map = 1434, x = 24.7, y = 63.7, f = "e" },
					{ t = "collect", quest = 617, itemName = "Akiris Reed", count = 10, oi = 1, map = 1434, x = 24.7, y = 63.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Zanzil mobs", count = 1, map = 1434, x = 39.2, y = 57.1, f = "e" },
					{ t = "collect", quest = 621, itemName = "Zanzil's Mixture", count = 12, oi = 1, map = 1434, x = 39.2, y = 57.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 609, itemName = "Chucky's Huge Ring", count = 1, oi = 3, map = 1434, x = 40.0, y = 58.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 609, itemName = "Jon-Jon's Golden Spyglass", count = 1, oi = 2, map = 1434, x = 34.9, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 609, itemName = "Maury's Clubbed Foot", count = 1, oi = 1, map = 1434, x = 35.1, y = 51.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 197, itemName = "Talon of Tethis", count = 1, oi = 1, map = 1434, x = 32.1, y = 43.4, f = "e" },
				},
			},
			{
				note = "Hearth to Booty Bay|goto Stranglethorn Vale,27.7,74.6,6|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 621, title = "Zanzil's Secret", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.1, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 197, title = "Raptor Mastery (4)", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.8, y = 10.7, f = "e" },
					{ t = "accept", quest = 208, title = "Big Game Hunter", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1434, x = 35.8, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 24366, npcName = "Nizzle", map = 1434, x = 38.2, y = 4.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 609, title = "Voodoo Dues", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.8, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 617, title = "Akiris by the Bundle (1)", npc = 2494, npcName = "Privateer Bloads", map = 1434, x = 26.8, y = 76.4, f = "e" },
					{ t = "accept", quest = 623, title = "Akiris by the Bundle (2)", npc = 2494, npcName = "Privateer Bloads", map = 1434, x = 26.8, y = 76.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 623, title = "Akiris by the Bundle (2)", npc = 2616, npcName = "Privateer Groy", map = 1445, x = 67.7, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1690, title = "Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.5, y = 28.5, f = "e" },
					{ t = "accept", quest = 1707, title = "Water Pouch Bounty", npc = 7408, npcName = "Spigot Operator Luglunket", map = 1446, x = 52.5, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Gadgetzan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2875, title = "WANTED: Andre Firebeard", map = 1446, x = 51.8, y = 27.0, f = "e" },
					{ t = "accept", quest = 2781, title = "WANTED: Caliph Scorpidsting", map = 1446, x = 51.8, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2864, title = "Tran'rek", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.6, y = 26.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1137, title = "News for Fizzle", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.1, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1190, title = "Keeping Pace", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.2, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 4709, npcName = "Zamek", map = 1441, x = 79.8, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1190, title = "Keeping Pace", map = 1441, x = 77.2, y = 77.4, f = "e" },
					{ t = "accept", quest = 1194, title = "Rizzle's Schematics", map = 1441, x = 77.2, y = 77.4, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-40-45-part-3",
		pack = "guides",
		title = "Levels (40-45) (Parte 3/3)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 40,
		maxLevel = 45,
		zone = 1445,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 1194, title = "Rizzle's Schematics", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.2, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1690, target = "Wastewander Bandit", count = 10, oi = 1, map = 1441, x = 59.8, y = 24.7, f = "e" },
					{ t = "kill", quest = 1690, target = "Wastewander Thief", count = 10, oi = 2, map = 1441, x = 59.8, y = 24.7, f = "e" },
					{ t = "kill", target = "Wastewander mobs", count = 1, map = 1441, x = 59.8, y = 24.7, f = "e" },
					{ t = "collect", quest = 1707, itemName = "Wastewander Water Pouch", count = 5, oi = 1, map = 1441, x = 59.8, y = 24.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2872, title = "Stoley's Debt", npc = 7881, npcName = "Stoley", map = 1441, x = 67.1, y = 23.9, f = "e" },
					{ t = "accept", quest = 2873, title = "Stoley's Shipment", npc = 7881, npcName = "Stoley", map = 1441, x = 67.1, y = 23.9, f = "e" },
					{ t = "accept", quest = 8366, title = "Southsea Shakedown", npc = 7882, npcName = "Security Chief Bilgewhizzle", map = 1441, x = 67.1, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8365, title = "Pirate Hats Ahoy!", npc = 15165, npcName = "Haughty Modiste", map = 1441, x = 66.6, y = 22.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3520, title = "Screecher Spirits", npc = 8579, npcName = "Yeh'kinya", map = 1441, x = 67.0, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2781, itemName = "Caliph Scorpidsting's Head", count = 1, oi = 1, map = 1441, x = 64.7, y = 35.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8366, target = "Southsea Pirate", count = 10, oi = 1, map = 1441, x = 70.4, y = 42.7, f = "e" },
					{ t = "kill", quest = 8366, target = "Southsea Freebooter", count = 10, oi = 2, map = 1441, x = 70.4, y = 42.7, f = "e" },
					{ t = "kill", target = "Southsea Pirates", count = 1, map = 1441, x = 70.4, y = 42.7, f = "e" },
					{ t = "collect", quest = 8365, itemName = "Southsea Pirate Hat", count = 20, oi = 1, map = 1441, x = 70.4, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2873, itemName = "Stoley's Shipment", count = 1, oi = 1, map = 1441, x = 72.2, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2875, itemName = "Firebeard's Head", count = 1, oi = 1, map = 1441, x = 73.4, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8366, target = "Southsea Dock Worker", count = 10, oi = 3, map = 1441, x = 74.3, y = 46.4, f = "e" },
					{ t = "kill", quest = 8366, target = "Southsea Swashbuckler", count = 10, oi = 4, map = 1441, x = 74.3, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 45, f = "e" },
				},
			},
		},
	})
end

