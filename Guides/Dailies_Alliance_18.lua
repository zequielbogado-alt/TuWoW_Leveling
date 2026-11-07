-- TuWoW_Leveling — Guides/Dailies_Alliance_18.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-home-cities-exalted-reputation-guide-part-4",
		pack = "guides",
		title = "Home Cities Exalted Reputation Guide (Parte 4/5)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		next = "zygor/dailies/a-dai-icecrown-home-cities-exalted-reputation-guide-part-5",
		author = "TuWoW & Zygor",
		minLevel = 77,
		zone = 1429,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 931, title = "The Shimmering Frond", map = 1438, x = 34.7, y = 29.0, f = "e" },
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
					{ t = "turnin", quest = 7383, title = "Crown of the Earth (5)", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.1, y = 61.7, f = "e" },
					{ t = "accept", quest = 935, title = "Crown of the Earth (6)", npc = 3515, npcName = "Corithras Moonrage", map = 1438, x = 56.1, y = 61.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 486, npc = 2039, target = "Ursal the Mauler", count = 1, oi = 1, map = 1438, x = 39.2, y = 80.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 931, title = "The Shimmering Frond", npc = 2080, npcName = "Denalan", map = 1438, x = 60.9, y = 68.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 486, title = "Ursal the Mauler", npc = 2078, npcName = "Athridas Bearmantle", map = 1438, x = 56.0, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 922, title = "Rellian Greenspyre", npc = 3517, npcName = "Rellian Greenspyre", map = 1438, x = 38.2, y = 21.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 935, title = "Crown of the Earth (6)", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1438, x = 35.1, y = 9.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6342, title = "Flight to Auberdine", npc = 3838, npcName = "Vesprystus", map = 1438, x = 58.4, y = 94.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3524, title = "Washed Ashore (1)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 983, title = "Buzzbox 827", npc = 3666, npcName = "Wizbang Cranktoggle", map = 1439, x = 37.0, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Auberdine", text = "Auberdine", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4811, title = "The Red Crystal", npc = 2930, npcName = "Sentinel Glynda Nal'Shea", map = 1439, x = 37.7, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 982, title = "Deep Ocean, Vast Sea", npc = 6301, npcName = "Gorbold Steelhand", map = 1439, x = 38.1, y = 41.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 984, title = "How Big a Threat? (1)", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 954, title = "Bashal'Aran (1)", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
					{ t = "accept", quest = 958, title = "Tools of the Highborne", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 983, itemName = "Crawler Leg", count = 6, oi = 1, map = 1439, x = 36.1, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3524, itemName = "Sea Creature Bones", count = 1, oi = 1, map = 1439, x = 36.4, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 983, title = "Buzzbox 827", map = 1439, x = 36.7, y = 46.3, f = "e" },
					{ t = "accept", quest = 1001, title = "Buzzbox 411", map = 1439, x = 36.7, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3524, title = "Washed Ashore (1)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
					{ t = "accept", quest = 4681, title = "Washed Ashore (2)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1001, itemName = "Thresher Eye", count = 3, oi = 1, map = 1439, x = 32.7, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4681, itemName = "Sea Turtle Remains", count = 1, oi = 1, map = 1439, x = 31.9, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 39.6, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 47.4, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 958, itemName = "Highborne Relics", count = 7, oi = 1, map = 1439, x = 42.2, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4811, title = "The Red Crystal", npc = 2930, npcName = "Sentinel Glynda Nal'Shea", map = 1439, x = 37.7, y = 43.4, f = "e" },
					{ t = "accept", quest = 4812, title = "As Water Cascades", npc = 2930, npcName = "Sentinel Glynda Nal'Shea", map = 1439, x = 37.7, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 984, title = "How Big a Threat? (1)", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
					{ t = "accept", quest = 4761, title = "Thundris Windweaver", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4681, title = "Washed Ashore (2)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4761, title = "Thundris Windweaver", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
					{ t = "turnin", quest = 958, title = "Tools of the Highborne", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
					{ t = "accept", quest = 4762, title = "The Cliffspring River", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4812, itemName = "Moonwell Water Tube", count = 1, oi = 1, map = 1439, x = 37.8, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4812, title = "As Water Cascades", map = 1439, x = 47.3, y = 48.7, f = "e" },
					{ t = "accept", quest = 4813, title = "The Fragments Within", map = 1439, x = 47.3, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4813, title = "The Fragments Within", npc = 2930, npcName = "Sentinel Glynda Nal'Shea", map = 1439, x = 37.7, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 954, title = "Bashal'Aran (1)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
					{ t = "accept", quest = 955, title = "Bashal'Aran (2)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 955, itemName = "Grell Earring", count = 8, oi = 1, map = 1439, x = 44.6, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 955, title = "Bashal'Aran (2)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1001, title = "Buzzbox 411", map = 1439, x = 42.0, y = 28.6, f = "e" },
				},
			},
			{
				note = "Go underwater to 39.6,27.5",
				goals = {
					{ t = "collect", quest = 982, itemName = "Mist Veil's Lockbox", count = 1, oi = 2, map = 1439, x = 39.6, y = 27.5, f = "e" },
				},
			},
			{
				note = "Go underwater to 38.2,28.8",
				goals = {
					{ t = "collect", quest = 982, itemName = "Silver Dawning's Lockbox", count = 1, oi = 1, map = 1439, x = 38.2, y = 28.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 982, title = "Deep Ocean, Vast Sea", npc = 6301, npcName = "Gorbold Steelhand", map = 1439, x = 38.1, y = 41.2, f = "e" },
				},
			},
			{
				note = "Jump down into the water below the bridge to 50.9,25.7",
				goals = {
					{ t = "collect", quest = 4762, itemName = "Cliffspring River Sample", count = 1, oi = 1, map = 1439, x = 50.9, y = 25.7, f = "e" },
				},
			},
			{
				note = "Hearth to Auberdine|goto Darkshore,37.0,44.1,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Auberdine", text = "Auberdine", map = 1439, x = 36.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3524, title = "Washed Ashore (1)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 983, title = "Buzzbox 827", npc = 3666, npcName = "Wizbang Cranktoggle", map = 1439, x = 37.0, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Auberdine", text = "Auberdine", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 984, title = "How Big a Threat? (1)", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 954, title = "Bashal'Aran (1)", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 983, itemName = "Crawler Leg", count = 6, oi = 1, map = 1439, x = 36.1, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3524, itemName = "Sea Creature Bones", count = 1, oi = 1, map = 1439, x = 36.4, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 983, title = "Buzzbox 827", map = 1439, x = 36.7, y = 46.3, f = "e" },
					{ t = "accept", quest = 1001, title = "Buzzbox 411", map = 1439, x = 36.7, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3524, title = "Washed Ashore (1)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
					{ t = "accept", quest = 4681, title = "Washed Ashore (2)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1001, itemName = "Thresher Eye", count = 3, oi = 1, map = 1439, x = 32.7, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4681, itemName = "Sea Turtle Remains", count = 1, oi = 1, map = 1439, x = 31.9, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 39.6, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 984, title = "How Big a Threat? (1)", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
					{ t = "accept", quest = 4761, title = "Thundris Windweaver", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4681, title = "Washed Ashore (2)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4761, title = "Thundris Windweaver", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 954, title = "Bashal'Aran (1)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
					{ t = "accept", quest = 955, title = "Bashal'Aran (2)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 955, itemName = "Grell Earring", count = 8, oi = 1, map = 1439, x = 44.6, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 955, title = "Bashal'Aran (2)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1001, title = "Buzzbox 411", map = 1439, x = 42.0, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9369, title = "Replenishing the Healing Crystals", npc = 16477, npcName = "Proenitus", map = 1439, x = 80.4, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10302, title = "Volatile Mutations", npc = 16514, npcName = "Botanist Taerix", map = 1439, x = 79.1, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10302, target = "Volatile Mutation", count = 8, oi = 1, map = 1439, x = 78.6, y = 45.4, f = "e" },
					{ t = "collect", quest = 9280, itemName = "Vial of Moth Blood", count = 8, oi = 1, map = 1439, x = 78.6, y = 45.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10302, title = "Volatile Mutations", npc = 16514, npcName = "Botanist Taerix", map = 1439, x = 79.1, y = 46.5, f = "e" },
					{ t = "accept", quest = 9293, title = "What Must Be Done...", npc = 16514, npcName = "Botanist Taerix", map = 1439, x = 79.1, y = 46.5, f = "e" },
					{ t = "accept", quest = 9799, title = "Botanical Legwork", npc = 20233, npcName = "Apprentice Vishael", map = 1439, x = 79.1, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9369, title = "Replenishing the Healing Crystals", npc = 16477, npcName = "Proenitus", map = 1439, x = 80.4, y = 45.9, f = "e" },
					{ t = "accept", quest = 9409, title = "Urgent Delivery!", npc = 16477, npcName = "Proenitus", map = 1439, x = 80.4, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9409, title = "Urgent Delivery!", npc = 16502, npcName = "Zalduun", map = 1439, x = 80.1, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9305, title = "Spare Parts", npc = 17071, npcName = "Technician Zhanaa", map = 1439, x = 79.5, y = 51.4, f = "e" },
					{ t = "accept", quest = 9303, title = "Inoculation", npc = 16535, npcName = "Vindicator Aldar", map = 1439, x = 79.5, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 80.3, y = 42.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9283, title = "Rescue the Survivors!", npc = 16502, npcName = "Zalduun", map = 1439, x = 80.1, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9293, itemName = "Lasher Sample", count = 10, oi = 1, map = 1439, x = 74.9, y = 50.4, f = "e" },
					{ t = "collect", quest = 9799, itemName = "Corrupted Flower", count = 3, oi = 1, map = 1439, x = 74.9, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9293, title = "What Must Be Done...", npc = 16514, npcName = "Botanist Taerix", map = 1439, x = 79.1, y = 46.5, f = "e" },
					{ t = "accept", quest = 9294, title = "Healing the Lake", npc = 16514, npcName = "Botanist Taerix", map = 1439, x = 79.1, y = 46.5, f = "e" },
					{ t = "turnin", quest = 9799, title = "Botanical Legwork", npc = 20233, npcName = "Apprentice Vishael", map = 1439, x = 79.1, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 77.3, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 78.4, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9305, itemName = "Emitter Spare Part", count = 4, oi = 1, map = 1439, x = 84.7, y = 65.6, f = "e" },
				},
			},
			{
				note = "Hearth to Ammen Vale|goto Azuremyst Isle,84.3,43.0,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9294, title = "Healing the Lake", npc = 16514, npcName = "Botanist Taerix", map = 1439, x = 79.1, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9305, title = "Spare Parts", npc = 17071, npcName = "Technician Zhanaa", map = 1439, x = 79.5, y = 51.4, f = "e" },
					{ t = "turnin", quest = 9303, title = "Inoculation", npc = 16535, npcName = "Vindicator Aldar", map = 1439, x = 79.5, y = 51.4, f = "e" },
					{ t = "accept", quest = 9309, title = "The Missing Scout", npc = 16535, npcName = "Vindicator Aldar", map = 1439, x = 79.5, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9309, title = "The Missing Scout", npc = 16546, npcName = "Tolaan", map = 1439, x = 72.0, y = 60.8, f = "e" },
					{ t = "accept", quest = 10303, title = "The Blood Elves", npc = 16546, npcName = "Tolaan", map = 1439, x = 72.0, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10303, target = "Blood Elf Scout", count = 10, oi = 1, map = 1439, x = 71.3, y = 60.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10303, title = "The Blood Elves", npc = 16546, npcName = "Tolaan", map = 1439, x = 72.0, y = 60.8, f = "e" },
					{ t = "accept", quest = 9311, title = "Blood Elf Spy", npc = 16546, npcName = "Tolaan", map = 1439, x = 72.0, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9311, npc = 16522, target = "Surveyor Candress", count = 1, oi = 1, map = 1439, x = 69.3, y = 65.7, f = "e" },
					{ t = "accept", quest = 9798, title = "Blood Elf Plans", map = 1439, x = 69.3, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9311, title = "Blood Elf Spy", npc = 16535, npcName = "Vindicator Aldar", map = 1439, x = 79.5, y = 51.4, f = "e" },
					{ t = "turnin", quest = 9798, title = "Blood Elf Plans", npc = 16535, npcName = "Vindicator Aldar", map = 1439, x = 79.5, y = 51.4, f = "e" },
					{ t = "accept", quest = 9312, title = "The Emitter", npc = 16535, npcName = "Vindicator Aldar", map = 1439, x = 79.5, y = 51.4, f = "e" },
					{ t = "turnin", quest = 9312, title = "The Emitter", npc = 17071, npcName = "Technician Zhanaa", map = 1439, x = 79.5, y = 51.4, f = "e" },
					{ t = "accept", quest = 9313, title = "Travel to Azure Watch", npc = 17071, npcName = "Technician Zhanaa", map = 1439, x = 79.5, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9314, title = "Word from Azure Watch", npc = 16554, npcName = "Aeun", map = 1439, x = 64.5, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9452, title = "Red Snapper - Very Tasty!", npc = 17101, npcName = "Diktynna", map = 1439, x = 61.1, y = 54.2, f = "e" },
				},
			},
		},
	})
end

