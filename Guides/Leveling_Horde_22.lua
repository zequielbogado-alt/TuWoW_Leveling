-- TuWoW_Leveling — Guides/Leveling_Horde_22.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-alterac-mountains-and-arathi-highlands-38-39",
		pack = "guides",
		title = "Alterac Mountains & Arathi Highlands",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-badlands-39-40",
		author = "TuWoW & Zygor",
		minLevel = 38,
		maxLevel = 39,
		zone = 1424,
		version = 1,
		steps = {
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 545, title = "Dalaran Patrols", npc = 2410, npcName = "Magus Wordeen Voidglare", map = 1424, x = 61.6, y = 20.84, f = "e" },
				},
			},
			{
				note = "Killing a level 40 elite enemy soon. Use another Nature Protection Potion during the fight. Using one potion now so the cooldown is finished by then.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "use", item = 6052, itemName = "Nature Protection Potion" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 557, title = "Bracers of Binding", npc = 2437, npcName = "Keeper Bel'varil", map = 1424, x = 61.5, y = 20.94, f = "e" },
				},
			},
			{
				note = "Wanted poster.",
				goals = {
					{ t = "accept", quest = 566, title = "WANTED: Baron Vardus", map = 1424, x = 62.62, y = 20.74, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 503, title = "Gol'dir", npc = 2229, npcName = "Krusk", map = 1424, x = 63.24, y = 20.66, f = "e" },
				},
			},
			{
				note = "Follow the river north. Complete the Essence of the Exile quest.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1712, item = 6851, itemName = "Essence of the Exile", oi = 3, map = 1416, x = 79.32, y = 66.81, f = "e" },
				},
			},
			{
				note = "Inside the building. Make sure your Nature Protection Potion cooldown is finished.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1712, title = "Cyclonian", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
					{ t = "accept", quest = 1713, title = "The Summoning", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
				},
			},
			{
				note = "Follow Bath'rah the Windwatcher. Summons Cyclonian. Level 40 elite. Use the other Nature Protection Potion when the first wears off. May need help.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1713, item = 6894, itemName = "Whirlwind Heart", oi = 1, map = 1416, x = 80.6, y = 62.52, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1713, title = "The Summoning", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
					{ t = "accept", quest = 1792, title = "Whirlwind Weapon", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1136, item = 5810, itemName = "Fresh Carcass", map = 1416, x = 48.4, y = 75.0, f = "e" },
				},
			},
			{
				note = "Inside the small cave. Walks to cave entrance.",
				goals = {
					{ t = "use", item = 5810, itemName = "Fresh Carcass" },
					{ t = "collect", quest = 1136, item = 5811, itemName = "Frostmaw's Mane", oi = 1, map = 1416, x = 37.54, y = 66.26, f = "e" },
				},
			},
			{
				note = "Multiple locations. Inside the building. Also check upstairs.",
				goals = {
					{ t = "collect", quest = 503, item = 3704, itemName = "Rusted Iron Key", oi = 1, map = 1416, x = 63.13, y = 43.47, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "complete", quest = 503, title = "Gol'dir", note = "Find Where Gol'dir is Being Held", map = 1416, x = 60.19, y = 43.91, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 503, title = "Gol'dir", npc = 2316, npcName = "Gol'dir", map = 1416, x = 59.96, y = 43.74, f = "e" },
					{ t = "accept", quest = 506, title = "Blackmoore's Legacy", npc = 2316, npcName = "Gol'dir", map = 1416, x = 59.96, y = 43.74, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building. Skip if missing. Can finish later.",
				goals = {
					{ t = "collect", quest = 566, item = 3626, itemName = "Head of Baron Vardus", oi = 1, map = 1416, x = 60.3, y = 43.21, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 506, title = "Blackmoore's Legacy", npc = 2229, npcName = "Krusk", map = 1424, x = 63.24, y = 20.66, f = "e" },
					{ t = "accept", quest = 507, title = "Lord Aliden Perenolde", npc = 2229, npcName = "Krusk", map = 1424, x = 63.24, y = 20.66, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 566, title = "WANTED: Baron Vardus", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the ramp and jump over the wall", map = 1416, x = 38.89, y = 39.43 },
					{ t = "collect", quest = 557, item = 3715, itemName = "Bracers of Earth Binding", count = 4, oi = 1, map = 1416, x = 20.6, y = 76.4, f = "e" },
				},
			},
			{
				label = "Kill_Dalaran_Summoners_And_Elemental_Slavers",
				along = true,
				goals = {
					{ t = "kill", quest = 545, npc = 2358, target = "Dalaran Summoner", count = 6, oi = 1, map = 1416, x = 20.6, y = 76.4, f = "e" },
					{ t = "kill", quest = 545, npc = 2359, target = "Elemental Slave", count = 12, oi = 2, map = 1416, x = 20.6, y = 76.4, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building. Careful, stealthed enemies.",
				goals = {
					{ t = "kill", quest = 507, npc = 2423, target = "Lord Aliden Perenolde", oi = 1, map = 1416, x = 39.32, y = 14.58, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 507, title = "Lord Aliden Perenolde", npc = 2317, npcName = "Elysa", map = 1416, x = 39.3, y = 14.31, f = "e" },
					{ t = "accept", quest = 508, title = "Taretha's Gift", npc = 2317, npcName = "Elysa", map = 1416, x = 39.3, y = 14.31, f = "e" },
				},
			},
			{
				note = "Multiple locations. Downstairs inside the building in Strahnbrad location.",
				goals = {
					{ t = "collect", quest = 566, item = 3626, itemName = "Head of Baron Vardus", oi = 1, map = 1416, x = 47.4, y = 17.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 545, title = "Dalaran Patrols", npc = 2410, npcName = "Magus Wordeen Voidglare", map = 1424, x = 61.6, y = 20.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 557, title = "Bracers of Binding", npc = 2437, npcName = "Keeper Bel'varil", map = 1424, x = 61.5, y = 20.94, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 566, title = "WANTED: Baron Vardus", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.45, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 508, title = "Taretha's Gift", npc = 2229, npcName = "Krusk", map = 1424, x = 63.24, y = 20.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 638, title = "Trollbane", npc = 2703, npcName = "Zengu", map = 1417, x = 73.8, y = 33.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 678, title = "Call to Arms", npc = 2771, npcName = "Drum Fel", map = 1417, x = 74.24, y = 33.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 701, title = "Guile of the Raptor", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.72, y = 36.29, f = "e" },
				},
			},
			{
				note = "Kobolds. More inside the cave up the path. Next step is inside the cave.",
				goals = {
					{ t = "collect", quest = 642, item = 4435, itemName = "Mote of Myzrael", count = 12, oi = 1, map = 1417, x = 76.0, y = 44.2, f = "e" },
				},
			},
			{
				note = "Upstairs inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path up to the cave", map = 1417, x = 80.9, y = 39.96 },
					{ t = "goto", text = "Enter the cave", map = 1417, x = 82.66, y = 36.16 },
					{ t = "turnin", quest = 642, title = "The Princess Trapped", map = 1417, x = 84.31, y = 30.92, f = "e" },
					{ t = "accept", quest = 651, title = "Stones of Binding", map = 1417, x = 84.31, y = 30.92, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1417, x = 82.69, y = 36.21 },
					{ t = "collect", quest = 651, item = 4484, itemName = "Cresting Key", oi = 2, map = 1417, x = 66.75, y = 29.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 651, item = 4485, itemName = "Thundering Key", oi = 3, map = 1417, x = 52.06, y = 50.69, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 678, npc = 2567, target = "Boulderfist Magus", count = 4, oi = 2, map = 1417, x = 51.4, y = 72.4, f = "e" },
					{ t = "kill", quest = 678, npc = 2566, target = "Boulderfist Brute", count = 10, oi = 1, map = 1417, x = 51.4, y = 72.4, f = "e" },
				},
			},
			{
				label = "Collect_Raptor_Hearts",
				along = true,
				note = "Raptors.",
				goals = {
					{ t = "collect", quest = 701, item = 4513, itemName = "Raptor Heart", count = 12, oi = 1, map = 1417, x = 47.4, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 701, title = "Guile of the Raptor", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.71, y = 36.29, f = "e" },
					{ t = "accept", quest = 702, title = "Guile of the Raptor", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.71, y = 36.29, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 702, title = "Guile of the Raptor", npc = 2792, npcName = "Gor'mul", map = 1417, x = 72.55, y = 34.01, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 847, title = "Guile of the Raptor", npc = 2792, npcName = "Gor'mul", map = 1417, x = 72.55, y = 34.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 678, title = "Call to Arms", npc = 2771, npcName = "Drum Fel", map = 1417, x = 74.24, y = 33.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 847, title = "Guile of the Raptor", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.71, y = 36.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 651, item = 4483, itemName = "Burning Key", oi = 1, map = 1417, x = 25.52, y = 30.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 651, title = "Stones of Binding", map = 1417, x = 36.19, y = 57.37, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Follow the path through the mountains", map = 1417, x = 31.22, y = 65.35 },
					{ t = "goto", text = "Run through the tunnel to Faldir's Cove", map = 1417, x = 21.58, y = 75.61 },
					{ t = "accept", quest = 663, title = "Land Ho!", npc = 2766, npcName = "Lolo the Lookout", map = 1417, x = 31.78, y = 82.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 663, title = "Land Ho!", npc = 2610, npcName = "Shakes O'Breen", map = 1417, x = 32.28, y = 81.38, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 662, title = "Deep Sea Salvage", npc = 2767, npcName = "First Mate Nilzlix", map = 1417, x = 32.77, y = 81.47, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 664, title = "Drowned Sorrows", npc = 2769, npcName = "Captain Steelgut", map = 1417, x = 34.0, y = 80.79, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing.",
				goals = {
					{ t = "accept", quest = 665, title = "Sunken Treasure", npc = 2768, npcName = "Professor Phizzlethorpe", map = 1417, x = 33.87, y = 80.55, f = "e" },
				},
			},
			{
				note = "Follow and protect Professor Phizzlethorpe.",
				goals = {
					{ t = "complete", quest = 665, title = "Sunken Treasure", note = "Defend Professor Phizzlethorpe", map = 1417, x = 33.87, y = 80.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 665, title = "Sunken Treasure", npc = 2774, npcName = "Doctor Draxlegauge", map = 1417, x = 33.86, y = 80.45, f = "e" },
					{ t = "accept", quest = 666, title = "Sunken Treasure", npc = 2774, npcName = "Doctor Draxlegauge", map = 1417, x = 33.86, y = 80.45, f = "e" },
				},
			},
			{
				note = "Brown book in a metal cauldron. Middle floor inside the sunken ship.",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 662, item = 4489, itemName = "Maiden's Folly Log", oi = 2, map = 1417, x = 23.41, y = 85.1, f = "e" },
				},
			},
			{
				note = "Tan flat scroll. Middle floor inside the sunken ship.",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 662, item = 4487, itemName = "Maiden's Folly Charts", oi = 1, map = 1417, x = 23.04, y = 84.51, f = "e" },
				},
			},
			{
				note = "Tan flat scroll. Middle floor inside the sunken ship.",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 662, item = 4488, itemName = "Spirit of Silverpine Charts", oi = 3, map = 1417, x = 20.45, y = 85.6, f = "e" },
				},
			},
			{
				note = "Open book. Very bottom inside the ship.",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 662, item = 4490, itemName = "Spirit of Silverpine Log", oi = 4, map = 1417, x = 20.65, y = 85.1, f = "e" },
				},
			},
			{
				label = "Collect_Elven_Gems",
				along = true,
				note = "Large grey stones. On your minimap.",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "collect", quest = 666, item = 4492, itemName = "Elven Gem", count = 10, oi = 1, map = 1417, x = 23.6, y = 87.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 666, title = "Sunken Treasure", note = "Equip Your Regular Head Armor" },
				},
			},
			{
				label = "Kill_Daggerspine_Sorceresses_And_Raiders",
				along = true,
				note = "Underwater. notinsticky",
				goals = {
					{ t = "use", item = 5996, itemName = "Elixir of Water Breathing" },
					{ t = "kill", quest = 664, npc = 2596, target = "Daggerspine Sorceress", count = 3, oi = 2, map = 1417, x = 19.2, y = 84.0, f = "e" },
					{ t = "kill", quest = 664, npc = 2595, target = "Daggerspine Raider", count = 10, oi = 1, map = 1417, x = 19.2, y = 84.0, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 662, title = "Deep Sea Salvage", npc = 2767, npcName = "First Mate Nilzlix", map = 1417, x = 32.8, y = 81.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 664, title = "Drowned Sorrows", npc = 2769, npcName = "Captain Steelgut", map = 1417, x = 34.0, y = 80.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 666, title = "Sunken Treasure", npc = 2774, npcName = "Doctor Draxlegauge", map = 1417, x = 33.85, y = 80.45, f = "e" },
					{ t = "accept", quest = 668, title = "Sunken Treasure", npc = 2774, npcName = "Doctor Draxlegauge", map = 1417, x = 33.85, y = 80.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 668, title = "Sunken Treasure", npc = 2610, npcName = "Shakes O'Breen", map = 1417, x = 32.29, y = 81.38, f = "e" },
					{ t = "accept", quest = 669, title = "Sunken Treasure", npc = 2610, npcName = "Shakes O'Breen", map = 1417, x = 32.29, y = 81.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Swim along the coast into the Wetlands", map = 1437, x = 32.99, y = 10.11 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-badlands-39-40",
		pack = "guides",
		title = "Badlands",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-stranglethorn-vale-and-swamp-of-sorrows-40-41",
		author = "TuWoW & Zygor",
		minLevel = 39,
		maxLevel = 40,
		zone = 1418,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 705, title = "Pearl Diving", npc = 2817, npcName = "Rigglefuzz", map = 1418, x = 42.39, y = 52.93, f = "e" },
					{ t = "accept", quest = 703, title = "Barbecued Buzzard Wings", npc = 2817, npcName = "Rigglefuzz", map = 1418, x = 42.39, y = 52.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 705, title = "Pearl Diving", npc = 2817, npcName = "Rigglefuzz", map = 1418, x = 42.39, y = 52.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1106, title = "Martek the Exiled", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.22, y = 52.69, f = "e" },
					{ t = "accept", quest = 1108, title = "Indurium", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.22, y = 52.69, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 710, title = "Study of the Elements: Rock", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
					{ t = "accept", quest = 713, title = "Coolant Heads Prevail", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 713, title = "Coolant Heads Prevail", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
					{ t = "accept", quest = 714, title = "Gyro... What?", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 714, title = "Gyro... What?", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 715, title = "Liquid Stone", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.82, y = 44.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 715, title = "Liquid Stone", npc = 2920, npcName = "Lucien Tosselwrench", map = 1418, x = 25.82, y = 44.23, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "accept", quest = 1419, title = "Coyote Thieves", npc = 5394, npcName = "Neeka Bloodscar", map = 1418, x = 6.48, y = 47.18, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Kargath", map = 1418, x = 3.99, y = 44.78, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 2258, title = "Badlands Reagent Run", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.42, y = 46.06, f = "e" },
				},
			},
			{
				label = "Collect_Buzzard_Wings",
				note = "Group of them at this location. notinsticky Spread out elsewhere. notinsticky Don't vendor them.",
				goals = {
					{ t = "collect", quest = 703, item = 3404, itemName = "Buzzard Wing", count = 4, oi = 1, map = 1418, x = 17.2, y = 61.0, f = "e" },
				},
			},
			{
				label = "Collect_Small_Stone_Shards",
				along = true,
				goals = {
					{ t = "collect", quest = 710, item = 4626, itemName = "Small Stone Shard", count = 10, oi = 1, map = 1418, x = 21.4, y = 43.4, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 710, title = "Study of the Elements: Rock", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
					{ t = "accept", quest = 711, title = "Study of the Elements: Rock", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 711, item = 4627, itemName = "Large Stone Slab", count = 3, oi = 1, map = 1418, x = 13.4, y = 37.8, f = "e" },
				},
			},
			{
				label = "Collect_Rock_Elemental_Shards",
				along = true,
				goals = {
					{ t = "collect", quest = 2258, item = 7848, itemName = "Rock Elemental Shard", count = 5, oi = 3, map = 1418, x = 21.4, y = 43.4, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 711, title = "Study of the Elements: Rock", npc = 2921, npcName = "Lotwil Veriatus", map = 1418, x = 25.95, y = 44.87, f = "e" },
				},
			},
			{
				label = "Collect_Buzzard_Gizzards",
				along = true,
				note = "Group of them at this location. notinsticky Spread out elsewhere. notinsticky",
				goals = {
					{ t = "collect", quest = 2258, item = 7847, itemName = "Buzzard Gizzard", count = 5, oi = 1, map = 1418, x = 17.2, y = 61.0, f = "e" },
				},
			},
			{
				label = "Collect_Coyote_Items",
				along = true,
				goals = {
					{ t = "collect", quest = 2258, item = 7846, itemName = "Crag Coyote Fang", count = 10, oi = 2, map = 1418, x = 20.8, y = 56.8, f = "e" },
					{ t = "collect", quest = 1419, item = 6166, itemName = "Coyote Jawbone", count = 30, oi = 1, map = 1418, x = 20.8, y = 56.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 40", map = 1418, x = 20.8, y = 56.8 },
				},
			},
			{
				note = "Buy level 40 ammo when restocking.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 703, title = "Barbecued Buzzard Wings", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 703, title = "Barbecued Buzzard Wings", npc = 2817, npcName = "Rigglefuzz", map = 1418, x = 42.39, y = 52.93, f = "e" },
				},
			},
			{
				note = "Troggs.",
				goals = {
					{ t = "collect", quest = 1108, item = 5797, itemName = "Indurium Flake", count = 10, oi = 1, map = 1418, x = 50.4, y = 68.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1108, title = "Indurium", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.21, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1137, title = "News for Fizzle", npc = 4618, npcName = "Martek the Exiled", map = 1418, x = 42.21, y = 52.7, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "turnin", quest = 1419, title = "Coyote Thieves", npc = 5394, npcName = "Neeka Bloodscar", map = 1418, x = 6.48, y = 47.18, f = "e" },
					{ t = "accept", quest = 1420, title = "Report to Helgrum", npc = 5394, npcName = "Neeka Bloodscar", map = 1418, x = 6.48, y = 47.18, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 2258, title = "Badlands Reagent Run", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.42, y = 46.06, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "goto", text = "learnspell Portal: Orgrimmar##11417", map = 1454, x = 38.68, y = 85.41 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5883, npcName = "Enyo", map = 1454, x = 38.79, y = 85.65, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 6018, npcName = "Ur'kyo", map = 1454, x = 35.59, y = 87.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3344, npcName = "Kardris Dreamseeker", map = 1454, x = 38.8, y = 36.38, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3328, npcName = "Ormok", map = 1454, x = 43.91, y = 54.63, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3325, npcName = "Mirket", map = 1454, x = 48.62, y = 46.95, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5815, npcName = "Kurgul", map = 1454, x = 47.52, y = 46.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3353, npcName = "Grezz Ragefist", map = 1454, x = 79.78, y = 31.42, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3352, npcName = "Ormak Grimshot", map = 1454, x = 66.06, y = 18.54, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10088, npcName = "Xao'tsu", map = 1454, x = 66.33, y = 14.82, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "goto", text = "Train Wolf Riding", map = 1454, x = 69.4, y = 13.1 },
				},
			},
			{
				note = "Buy from the Auction House, if possible. Makes quests easier later. Inside the building.",
				only = { races = { "Scourge" }, classes = { "WARLOCK", "DRUID" } },
				goals = {
					{ t = "collect", quest = 1424, item = 5996, itemName = "Elixir of Water Breathing", count = 2, map = 1454, x = 55.69, y = 62.86, f = "e", only = { races = { "Scourge" }, classes = { "SHAMAN", "WARLOCK", "DRUID" } } },
					{ t = "collect", quest = 1424, item = 17057, itemName = "Shiny Fish Scales", count = 2, map = 1454, x = 55.69, y = 62.86, f = "e", only = { classes = { "SHAMAN" } } },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "goto", text = "Train Raptor Riding", map = 1411, x = 55.28, y = 75.49 },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", text = "Train Undead Horsemanship", map = 1420, x = 60.08, y = 52.57 },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 1276, item = 5919, itemName = "Blackened Iron Shield", map = 1456, x = 47.13, y = 57.89, f = "e" },
					{ t = "collect", quest = 1136, item = 5838, itemName = "Kodo Skin Scroll", map = 1456, x = 47.13, y = 57.89, f = "e" },
				},
			},
			{
				note = "Inside the tent.",
				goals = {
					{ t = "turnin", quest = 1276, title = "The Black Shield", npc = 4943, npcName = "Mosarn", map = 1456, x = 54.01, y = 80.77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1136, title = "Frostmaw", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.53, y = 80.9, f = "e" },
					{ t = "accept", quest = 1205, title = "Deadmire", npc = 3441, npcName = "Melor Stonehoof", map = 1456, x = 61.53, y = 80.9, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", text = "Train Kodo Riding", map = 1412, x = 46.78, y = 62.01 },
				},
			},
		},
	})
end

