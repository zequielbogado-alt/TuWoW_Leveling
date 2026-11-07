-- TuWoW_Leveling — Guides/Dailies_Alliance_17.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-home-cities-exalted-reputation-guide-part-3",
		pack = "guides",
		title = "Home Cities Exalted Reputation Guide (Parte 3/5)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		next = "zygor/dailies/a-dai-icecrown-home-cities-exalted-reputation-guide-part-4",
		author = "TuWoW & Zygor",
		minLevel = 77,
		zone = 1429,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", quest = 255, target = "Mo'grosh Brute", count = 4, oi = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 256, target = "Chok'sul", count = 1, oi = 1, map = 1432, x = 79.7, y = 14.7, f = "e" },
				},
			},
			{
				note = "Hearth to Thelsamar|goto Loch Modan,35.5,48.3,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 418, title = "Thelsamar Blood Sausages", npc = 1963, npcName = "Vidra Hearthstove", map = 1432, x = 34.8, y = 49.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 416, title = "Rat Catching", npc = 1340, npcName = "Mountaineer Kadrell", map = 1432, x = 34.8, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 255, title = "Mercenaries", npcName = "Magistrate Bluntnose", map = 1432, x = 34.6, y = 44.5, f = "e" },
					{ t = "turnin", quest = 256, title = "WANTED: Chok'sul", npcName = "Magistrate Bluntnose", map = 1432, x = 34.6, y = 44.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 263, title = "In Defense of the King's Lands (3)", npc = 1090, npcName = "Mountaineer Wallbang", map = 1432, x = 23.5, y = 74.5, f = "e" },
				},
			},
			{
				note = "Fly to Ironforge|goto Ironforge|noway|c",
				goals = {
					{ t = "talk", npc = 1572, npcName = "Thorgrum Borrelson", map = 1432, x = 33.9, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 291, title = "The Reports", npc = 1274, npcName = "Senator Barin Redstone", map = 1455, x = 39.5, y = 57.5, f = "e" },
				},
			},
			{
				note = "Ride the train to Stormwind|goto Stormwind City|noway|c",
				goals = {
					{ t = "goto", map = 1455, x = 76.9, y = 51.2, f = "e" },
				},
			},
			{
				note = "Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c",
				goals = {
					{ t = "goto", map = 1455, x = 22.6, y = 56.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 456, title = "The Balance of Nature (1)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.6, y = 44.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 456, target = "Young Nightsaber", count = 7, oi = 1, map = 1438, x = 58.5, y = 45.9, f = "e" },
					{ t = "kill", quest = 456, target = "Young Thistle Boar", count = 4, oi = 2, map = 1438, x = 58.5, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 456, title = "The Balance of Nature (1)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.6, y = 44.7, f = "e" },
					{ t = "accept", quest = 457, title = "The Balance of Nature (2)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.6, y = 44.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 458, title = "The Woodland Protector (1)", npc = 2077, npcName = "Melithar Staghelm", map = 1438, x = 59.9, y = 42.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4495, title = "A Good Friend", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 458, title = "The Woodland Protector (1)", npc = 1992, npcName = "Tarindrella", map = 1438, x = 57.6, y = 45.3, f = "e" },
					{ t = "accept", quest = 459, title = "The Woodland Protector (2)", npc = 1992, npcName = "Tarindrella", map = 1438, x = 57.6, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 459, itemName = "Fel Moss", count = 8, oi = 1, map = 1438, x = 56.5, y = 45.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 459, title = "The Woodland Protector (2)", npc = 1992, npcName = "Tarindrella", map = 1438, x = 57.6, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 916, title = "Webwood Venom", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.8, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 457, target = "Mangy Nightsaber", count = 7, oi = 1, map = 1438, x = 58.8, y = 36.8, f = "e" },
					{ t = "kill", quest = 457, target = "Thistle Boar", count = 7, oi = 2, map = 1438, x = 58.8, y = 36.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 916, itemName = "Webwood Venom Sac", count = 10, oi = 1, map = 1438, x = 58.3, y = 32.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4495, title = "A Good Friend", npc = 8584, npcName = "Iverron", map = 1438, x = 54.6, y = 33.0, f = "e" },
					{ t = "accept", quest = 3519, title = "A Friend in Need", npc = 8584, npcName = "Iverron", map = 1438, x = 54.6, y = 33.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 916, title = "Webwood Venom", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.8, y = 41.7, f = "e" },
					{ t = "accept", quest = 917, title = "Webwood Egg", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.8, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 457, title = "The Balance of Nature (2)", npc = 2079, npcName = "Conservator Ilthalaine", map = 1438, x = 58.7, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3519, title = "A Friend in Need", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 42.0, f = "e" },
					{ t = "accept", quest = 3521, title = "Iverron's Antidote (1)", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3521, itemName = "Hyacinth Mushroom", count = 7, oi = 1, map = 1438, x = 55.2, y = 39.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3521, itemName = "Moonpetal Lily", count = 4, oi = 2, map = 1438, x = 57.7, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3521, itemName = "Webwood Ichor", count = 1, oi = 3, map = 1438, x = 56.7, y = 32.1, f = "e" },
				},
			},
			{
				note = "Go into the cave at 56.8,31.7|n",
				goals = {
					{ t = "goto", map = 1438, x = 56.8, y = 31.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 917, itemName = "Webwood Egg", count = 1, oi = 1, map = 1438, x = 56.7, y = 26.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 917, title = "Webwood Egg", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.8, y = 41.7, f = "e" },
					{ t = "accept", quest = 920, title = "Tenaron's Summons", npc = 2082, npcName = "Gilshalan Windwalker", map = 1438, x = 57.8, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 920, title = "Tenaron's Summons", npc = 3514, npcName = "Tenaron Stormgrip", map = 1438, x = 59.1, y = 39.4, f = "e" },
					{ t = "accept", quest = 921, title = "Crown of the Earth (1)", npc = 3514, npcName = "Tenaron Stormgrip", map = 1438, x = 59.1, y = 39.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3521, title = "Iverron's Antidote (1)", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 42.0, f = "e" },
					{ t = "accept", quest = 3522, title = "Iverron's Antidote (2)", npc = 8583, npcName = "Dirania Silvershine", map = 1438, x = 60.9, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3522, title = "Iverron's Antidote (2)", npc = 8584, npcName = "Iverron", map = 1438, x = 54.6, y = 33.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 921, itemName = "Filled Crystal Phial", count = 1, oi = 1, map = 1438, x = 59.9, y = 33.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 921, title = "Crown of the Earth (1)", npc = 3514, npcName = "Tenaron Stormgrip", map = 1438, x = 59.1, y = 39.4, f = "e" },
					{ t = "accept", quest = 928, title = "Crown of the Earth (2)", npc = 3514, npcName = "Tenaron Stormgrip", map = 1438, x = 59.1, y = 39.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2159, title = "Dolanaar Delivery", npc = 6780, npcName = "Porthannius", map = 1438, x = 61.2, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 488, title = "Zenn's Bidding", npc = 2150, npcName = "Zenn Foulhoof", map = 1438, x = 60.4, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 488, itemName = "Strigid Owl Feather", count = 3, oi = 2, map = 1438, x = 63.8, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 488, itemName = "Webwood Spider Silk", count = 3, oi = 3, map = 1438, x = 60.6, y = 58.2, f = "e" },
					{ t = "collect", quest = 488, itemName = "Nightsaber Fang", count = 3, oi = 1, map = 1438, x = 60.6, y = 58.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 488, title = "Zenn's Bidding", npc = 2150, npcName = "Zenn Foulhoof", map = 1438, x = 60.4, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 489, title = "Seek Redemption!", npc = 2083, npcName = "Syral Bladeleaf", map = 1438, x = 56.1, y = 57.7, f = "e" },
					{ t = "accept", quest = 997, title = "Denalan's Earth", npc = 2083, npcName = "Syral Bladeleaf", map = 1438, x = 56.1, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 475, title = "A Troubling Breeze", npc = 2078, npcName = "Athridas Bearmantle", map = 1438, x = 56.0, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2438, title = "The Emerald Dreamcatcher", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.6, y = 56.9, f = "e" },
					{ t = "accept", quest = 932, title = "Twisted Hatred", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.6, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2159, title = "Dolanaar Delivery", npc = 6736, npcName = "Innkeeper Keldamyr", map = 1438, x = 55.6, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 928, title = "Crown of the Earth (2)", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.1, y = 61.7, f = "e" },
					{ t = "accept", quest = 929, title = "Crown of the Earth (3)", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.1, y = 61.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 929, itemName = "Filled Jade Phial", count = 1, oi = 1, map = 1438, x = 63.3, y = 58.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 475, title = "A Troubling Breeze", npc = 2107, npcName = "Gaerolas Talvethren", map = 1438, x = 66.3, y = 58.5, f = "e" },
					{ t = "accept", quest = 476, title = "Gnarlpine Corruption", npc = 2107, npcName = "Gaerolas Talvethren", map = 1438, x = 66.3, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2438, itemName = "Emerald Dreamcatcher", count = 1, oi = 1, map = 1438, x = 68.0, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 489, itemName = "Fel Cone", count = 3, oi = 1, map = 1438, x = 63.6, y = 62.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 476, title = "Gnarlpine Corruption", npc = 2078, npcName = "Athridas Bearmantle", map = 1438, x = 56.0, y = 57.3, f = "e" },
					{ t = "accept", quest = 483, title = "The Relics of Wakening", npc = 2078, npcName = "Athridas Bearmantle", map = 1438, x = 56.0, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2438, title = "The Emerald Dreamcatcher", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.6, y = 56.9, f = "e" },
					{ t = "accept", quest = 2459, title = "Ferocitas the Dream Eater", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.6, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 929, title = "Crown of the Earth (3)", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.1, y = 61.7, f = "e" },
					{ t = "accept", quest = 933, title = "Crown of the Earth (4)", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.1, y = 61.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 489, title = "Seek Redemption!", npc = 2150, npcName = "Zenn Foulhoof", map = 1438, x = 60.4, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 997, title = "Denalan's Earth", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
					{ t = "accept", quest = 918, title = "Timberling Seeds", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
					{ t = "accept", quest = 919, title = "Timberling Sprouts", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 918, itemName = "Timberling Seed", count = 8, oi = 1, map = 1438, x = 61.2, y = 66.8, f = "e" },
					{ t = "collect", quest = 919, itemName = "Timberling Sprout", count = 12, oi = 1, map = 1438, x = 61.2, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 918, title = "Timberling Seeds", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
					{ t = "accept", quest = 922, title = "Rellian Greenspyre", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
					{ t = "turnin", quest = 919, title = "Timberling Sprouts", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 2459, target = "Gnarlpine Mystic", count = 7, oi = 1, map = 1438, x = 68.3, y = 53.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Gnarlpine Necklace", count = 1, map = 1438, x = 69.4, y = 53.3, f = "e" },
					{ t = "collect", quest = 2459, itemName = "Tallonkai's Jewel", count = 1, oi = 2, map = 1438, x = 69.4, y = 53.3, f = "e" },
				},
			},
			{
				note = "Go to the top of the tower to 55.6,56.9",
				goals = {
					{ t = "turnin", quest = 2459, title = "Ferocitas the Dream Eater", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.6, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 487, title = "The Road to Darnassus", npc = 2151, npcName = "Moon Priestess Amara", map = 1438, x = 52.4, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 487, target = "Gnarlpine Ambusher", count = 6, oi = 1, map = 1438, x = 46.7, y = 53.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 483, itemName = "Black Feather Quill", count = 1, oi = 2, map = 1438, x = 43.7, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 483, itemName = "Rune of Nesting", count = 1, oi = 4, map = 1438, x = 44.4, y = 60.7, f = "e" },
				},
			},
			{
				note = "Go downstairs to 44.9,61.6",
				goals = {
					{ t = "accept", quest = 2541, title = "The Sleeping Druid", npc = 7317, npcName = "Oben Rageclaw", map = 1438, x = 44.9, y = 61.6, f = "e" },
				},
			},
			{
				note = "Go to the next room over to 45.6,58.7",
				goals = {
					{ t = "collect", quest = 2541, itemName = "Shaman Voodoo Charm", count = 1, oi = 1, map = 1438, x = 45.6, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 483, itemName = "Raven Claw Talisman", count = 1, oi = 1, map = 1438, x = 45.7, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2541, title = "The Sleeping Druid", npc = 7317, npcName = "Oben Rageclaw", map = 1438, x = 44.9, y = 61.6, f = "e" },
					{ t = "accept", quest = 2561, title = "Druid of the Claw", npc = 7317, npcName = "Oben Rageclaw", map = 1438, x = 44.9, y = 61.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 7318, target = "Rageclaw", count = 1, map = 1438, x = 45.6, y = 58.7, f = "e" },
				},
			},
			{
				note = "Go through the tunnel back to where Oben Rageclaw is to 44.7,62.5",
				goals = {
					{ t = "collect", quest = 483, itemName = "Sapphire of Sky", count = 1, oi = 3, map = 1438, x = 44.7, y = 62.5, f = "e" },
				},
			},
			{
				note = "Go back up the path to 44.9,61.6",
				goals = {
					{ t = "turnin", quest = 2561, title = "Druid of the Claw", npc = 7317, npcName = "Oben Rageclaw", map = 1438, x = 44.9, y = 61.6, f = "e" },
				},
			},
			{
				note = "Hearth to Dolanaar|goto Teldrassil,55.7,59.8,1|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 483, title = "The Relics of Wakening", npc = 2078, npcName = "Athridas Bearmantle", map = 1438, x = 56.0, y = 57.3, f = "e" },
					{ t = "accept", quest = 486, title = "Ursal the Mauler", npc = 2078, npcName = "Athridas Bearmantle", map = 1438, x = 56.0, y = 57.3, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 52.8,50.2",
				goals = {
					{ t = "collect", quest = 932, itemName = "Melenas' Head", count = 1, oi = 1, map = 1438, x = 52.8, y = 50.2, f = "e" },
				},
			},
			{
				note = "Go outside and go to the top of the tower to 55.6,56.9",
				goals = {
					{ t = "turnin", quest = 932, title = "Twisted Hatred", npc = 3567, npcName = "Tallonkai Swiftroot", map = 1438, x = 55.6, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 933, itemName = "Filled Tourmaline Phial", count = 1, oi = 1, map = 1438, x = 42.4, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 930, title = "The Glowing Fruit", map = 1438, x = 42.6, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 930, title = "The Glowing Fruit", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 933, title = "Crown of the Earth (4)", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.1, y = 61.7, f = "e" },
					{ t = "accept", quest = 7383, title = "Crown of the Earth (5)", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.1, y = 61.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 487, title = "The Road to Darnassus", npc = 2151, npcName = "Moon Priestess Amara", map = 1438, x = 52.4, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 937, title = "The Enchanted Glade", npc = 3519, npcName = "Sentinel Arynia Cloudsbreak", map = 1438, x = 38.3, y = 34.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 7383, itemName = "Filled Amethyst Phial", count = 1, oi = 1, map = 1438, x = 38.4, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 937, itemName = "Bloodfeather Belt", count = 6, oi = 1, map = 1438, x = 37.4, y = 37.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 937, title = "The Enchanted Glade", npc = 3519, npcName = "Sentinel Arynia Cloudsbreak", map = 1438, x = 38.3, y = 34.4, f = "e" },
				},
			},
		},
	})
end

