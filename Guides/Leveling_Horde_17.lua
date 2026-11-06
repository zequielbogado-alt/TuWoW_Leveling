-- TuWoW_Leveling — Guides/Leveling_Horde_17.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-hillsbrad-foothills-30-32",
		pack = "guides",
		title = "Hillsbrad Foothills",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-arathi-highlands-32-33",
		author = "TuWoW & Zygor",
		minLevel = 30,
		maxLevel = 32,
		zone = 1458,
		version = 1,
		steps = {
			{
				note = "Deposit into the bank.",
				goals = {
					{ t = "complete", quest = 1146, title = "The Swarm Grows", note = "bank Belgrom's Sealed Note##5850", map = 1458, x = 65.97, y = 44.75, f = "e" },
				},
			},
			{
				note = "Collect from the bank.",
				goals = {
					{ t = "collect", quest = 529, item = 3564, itemName = "Shipment of Iron", map = 1458, x = 65.97, y = 44.75, f = "e" },
					{ t = "collect", quest = 546, item = 3692, itemName = "Hillsbrad Human Skull", map = 1458, x = 65.97, y = 44.75, f = "e" },
				},
			},
			{
				note = "Needed to accept a quest soon.",
				goals = {
					{ t = "skill", level = 75, skill = "Cooking" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Train Crossbows", map = 1458, x = 57.31, y = 32.77 },
					{ t = "goto", text = "Train Two-Handed Swords", map = 1458, x = 57.31, y = 32.77 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1164, title = "To Steal From Thieves", npc = 4486, npcName = "Genavie Callow", map = 1458, x = 63.83, y = 49.45, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Jump up and follow the path behind the tree", map = 1421, x = 42.03, y = 40.66 },
					{ t = "use", item = 6637, itemName = "Water Sapta" },
					{ t = "collect", quest = 63, item = 7812, itemName = "Corrupt Manifestation's Bracers", oi = 1, map = 1421, x = 38.28, y = 44.56, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 63, title = "Call of Water", map = 1421, x = 38.28, y = 44.56, f = "e" },
					{ t = "accept", quest = 100, title = "Call of Water", map = 1421, x = 38.28, y = 44.56, f = "e" },
				},
			},
			{
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 100, title = "Call of Water", npc = 5895, npcName = "Minor Manifestation of Water", map = 1421, x = 38.75, y = 44.62, f = "e" },
					{ t = "accept", quest = 96, title = "Call of Water", npc = 5895, npcName = "Minor Manifestation of Water", map = 1421, x = 38.75, y = 44.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 509, title = "Elixir of Agony", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 529, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.45, f = "e" },
					{ t = "accept", quest = 532, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.45, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7321, title = "Soothing Turtle Bisque", npc = 2393, npcName = "Christoph Jeffcoat", map = 1424, x = 62.29, y = 19.04, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 533, title = "Infiltration", npc = 2229, npcName = "Krusk", map = 1424, x = 63.24, y = 20.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 552, title = "Helcular's Revenge", npc = 2429, npcName = "Novice Thaivand", map = 1424, x = 63.88, y = 19.66, f = "e" },
				},
			},
			{
				note = "Inside the building. Follow the river north to travel to this location.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 1791, title = "The Windwatcher", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
					{ t = "accept", quest = 1712, title = "Cyclonian", npc = 6176, npcName = "Bath'rah the Windwatcher", map = 1416, x = 80.5, y = 66.92, f = "e" },
				},
			},
			{
				label = "Collect_Turtle_Meat",
				along = true,
				note = "Turtles. Avoid Southshore. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 7321, item = 3712, itemName = "Turtle Meat", count = 10, oi = 1, map = 1424, x = 67.8, y = 21.2, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 3713, itemName = "Soothing Spices", map = 1424, x = 62.29, y = 19.02, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 7321, title = "Soothing Turtle Bisque", npc = 2393, npcName = "Christoph Jeffcoat", map = 1424, x = 62.29, y = 19.04, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 544, title = "Prison Break In", npc = 2410, npcName = "Magus Wordeen Voidglare", map = 1424, x = 61.6, y = 20.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 556, title = "Stone Tokens", npc = 2437, npcName = "Keeper Bel'varil", map = 1424, x = 61.5, y = 20.93, f = "e" },
				},
			},
			{
				note = "Inside and outside the cave.",
				goals = {
					{ t = "collect", quest = 552, item = 3708, itemName = "Helcular's Rod", oi = 1, map = 1424, x = 46.18, y = 31.83, f = "e" },
				},
			},
			{
				note = "Difficult quest soon. Higher level enemies. Inside and outside the cave.",
				goals = {
					{ t = "goto", text = "ding 31", map = 1424, x = 46.18, y = 31.83 },
				},
			},
			{
				note = "Try to pull enemies individually. Avoid having to fight them all at once. Inside the building.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1424, x = 46.18, y = 31.83 },
					{ t = "kill", quest = 567, npc = 2448, target = "Clerk Horrace Whitesteed", oi = 1, map = 1424, x = 29.81, y = 42.42, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "kill", quest = 532, npc = 2335, target = "Magistrate Burnside", oi = 1, map = 1424, x = 29.67, y = 41.64, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "complete", quest = 532, title = "Battle of Hillsbrad", note = "Destroy the Hillsbrad Proclamation", map = 1424, x = 29.73, y = 41.75, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "collect", quest = 532, item = 3657, itemName = "Hillsbrad Town Registry", oi = 4, map = 1424, x = 29.52, y = 41.53, f = "e" },
				},
			},
			{
				label = "Kill_Hillsbrad_Councilmen",
				along = true,
				note = "Inside and outside the building. notinsticky",
				goals = {
					{ t = "kill", quest = 532, npc = 2387, target = "Hillsbrad Councilman", count = 4, oi = 2, map = 1424, x = 30.2, y = 42.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 532, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.45, f = "e" },
					{ t = "accept", quest = 539, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 552, title = "Helcular's Revenge", npc = 2429, npcName = "Novice Thaivand", map = 1424, x = 63.88, y = 19.66, f = "e" },
					{ t = "accept", quest = 553, title = "Helcular's Revenge", npc = 2429, npcName = "Novice Thaivand", map = 1424, x = 63.88, y = 19.66, f = "e" },
				},
			},
			{
				note = "Downstairs inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1424, x = 46.21, y = 31.86 },
					{ t = "goto", text = "Run down the ramp and follow the path", map = 1424, x = 45.0, y = 28.07 },
					{ t = "complete", quest = 553, title = "Helcular's Revenge", note = "Charge the Flame of Veraz", map = 1424, x = 44.04, y = 26.56, f = "e" },
				},
			},
			{
				note = "Upstairs inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path up to the top floor of the cave", map = 1424, x = 44.11, y = 28.54 },
					{ t = "complete", quest = 553, title = "Helcular's Revenge", note = "Charge the Flame of Azel", map = 1424, x = 43.9, y = 28.05, f = "e" },
				},
			},
			{
				note = "Summons two guards at low health. Inside the mine.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1424, x = 46.27, y = 31.94 },
					{ t = "goto", text = "Enter the mine", map = 1424, x = 26.51, y = 58.61 },
					{ t = "kill", quest = 539, npc = 2305, target = "Foreman Bonds", oi = 1, map = 1424, x = 31.21, y = 56.01, f = "e" },
				},
			},
			{
				note = "Multiple locations. Inside the mine.",
				goals = {
					{ t = "kill", quest = 567, npc = 2450, target = "Miner Hackett", oi = 3, map = 1424, x = 31.12, y = 58.62, f = "e" },
				},
			},
			{
				label = "Kill_Hillsbrad_Miners",
				along = true,
				note = "Inside the mine. notinsticky",
				goals = {
					{ t = "kill", quest = 539, npc = 2269, target = "Hillsbrad Miner", count = 10, oi = 2, map = 1424, x = 29.8, y = 54.6, f = "e" },
				},
			},
			{
				label = "Collect_Hillsbrad_Human_Skulls",
				along = true,
				note = "Humans. Inside the mine. notinsticky",
				goals = {
					{ t = "collect", quest = 546, item = 3692, itemName = "Hillsbrad Human Skull", count = 30, oi = 1, map = 1424, x = 29.8, y = 54.6, f = "e" },
				},
			},
			{
				note = "Multiple exits. Use whichever you find first.",
				goals = {
					{ t = "complete", quest = 567, title = "Dangerous!", note = "Leave Azurelode Mine" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "collect", quest = 544, item = 3689, itemName = "Bloodstone Marble", oi = 2, map = 1416, x = 20.2, y = 84.08, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "collect", quest = 544, item = 3690, itemName = "Bloodstone Shard", oi = 3, map = 1416, x = 20.35, y = 86.35, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "collect", quest = 544, item = 3691, itemName = "Bloodstone Wedge", oi = 1, map = 1416, x = 20.01, y = 86.13, f = "e" },
				},
			},
			{
				note = "Guarded by Warden Belamoore. Level 36 mage. Kill Kegan while using doorways and stairs to line-of-sight her. Prevents her from casting spells and hurting you. Upstairs inside the building.",
				goals = {
					{ t = "collect", quest = 544, item = 3688, itemName = "Bloodstone Oval", oi = 4, map = 1416, x = 17.78, y = 83.2, f = "e" },
				},
			},
			{
				label = "Collect_Worn_Stone_Tokens",
				along = true,
				note = "Don't hit Shield Guards with melee when they're glowing. Deals high damage. Humans.",
				goals = {
					{ t = "collect", quest = 556, item = 3714, itemName = "Worn Stone Token", count = 10, oi = 1, map = 1416, x = 20.2, y = 82.4, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "complete", quest = 553, title = "Helcular's Revenge", note = "Charge the Flame of Uzel", map = 1416, x = 37.54, y = 66.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 533, item = 3601, itemName = "Syndicate Missive", oi = 1, map = 1416, x = 47.6, y = 82.8, f = "e" },
				},
			},
			{
				note = "Helps reach level 32 after quest turnins. Inside and outside the cave.",
				goals = {
					{ t = "goto", text = "ding 31,35550", map = 1424, x = 46.18, y = 31.83 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 544, title = "Prison Break In", npc = 2410, npcName = "Magus Wordeen Voidglare", map = 1424, x = 61.6, y = 20.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 556, title = "Stone Tokens", npc = 2437, npcName = "Keeper Bel'varil", map = 1424, x = 61.5, y = 20.94, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 676, title = "The Hammer May Fall", npc = 2770, npcName = "Tallow", map = 1424, x = 61.87, y = 19.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 546, title = "Souvenirs of Death", npc = 2418, npcName = "Deathguard Samsa", map = 1424, x = 62.11, y = 19.7, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 539, title = "Battle of Hillsbrad", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.46, f = "e" },
					{ t = "turnin", quest = 567, title = "Dangerous!", npc = 2215, npcName = "High Executor Darthalia", map = 1424, x = 62.33, y = 20.46, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 533, title = "Infiltration", npc = 2229, npcName = "Krusk", map = 1424, x = 63.24, y = 20.65, f = "e" },
				},
			},
			{
				note = "Avoid Southshore guards. Be extremely careful.",
				goals = {
					{ t = "goto", text = "Avoid Southshore", map = 1424, x = 54.96, y = 49.07 },
					{ t = "goto", text = "Follow the path and be careful to avoid the guards", map = 1424, x = 53.54, y = 52.18 },
					{ t = "turnin", quest = 553, title = "Helcular's Revenge", map = 1424, x = 52.78, y = 53.38, f = "e" },
				},
			},
			{
				note = "Large mushrooms.",
				goals = {
					{ t = "collect", quest = 509, item = 3502, itemName = "Mudsnout Blossoms", count = 6, oi = 1, map = 1424, x = 64.0, y = 59.9, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-arathi-highlands-32-33",
		pack = "guides",
		title = "Arathi Highlands",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-thousand-needles-33-34",
		author = "TuWoW & Zygor",
		minLevel = 32,
		maxLevel = 33,
		zone = 1417,
		version = 1,
		steps = {
			{
				note = "Inside the cave.",
				goals = {
					{ t = "kill", quest = 676, npc = 2564, target = "Boulderfist Enforcer", count = 10, oi = 2, map = 1417, x = 34.81, y = 44.14, f = "e" },
				},
			},
			{
				label = "Kill_Boulderfist_Ogres",
				along = true,
				note = "Outside the cave. notinsticky",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1417, x = 34.82, y = 44.15 },
					{ t = "kill", quest = 676, npc = 2562, target = "Boulderfist Ogre", count = 8, oi = 1, map = 1417, x = 37.6, y = 43.4, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1417, x = 34.82, y = 44.15 },
					{ t = "collect", quest = 1164, item = 5832, itemName = "Marcel's Head", oi = 2, map = 1417, x = 54.14, y = 38.16, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "collect", quest = 1164, item = 5830, itemName = "Kenata's Head", oi = 1, map = 1417, x = 56.37, y = 36.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 642, title = "The Princess Trapped", map = 1417, x = 62.48, y = 33.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Hammerfall", map = 1417, x = 73.06, y = 32.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 676, title = "The Hammer May Fall", npc = 2771, npcName = "Drum Fel", map = 1417, x = 74.24, y = 33.91, f = "e" },
					{ t = "accept", quest = 677, title = "Call to Arms", npc = 2771, npcName = "Drum Fel", map = 1417, x = 74.24, y = 33.91, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 655, title = "Hammerfall", npc = 2792, npcName = "Gor'mul", map = 1417, x = 72.67, y = 34.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 655, title = "Hammerfall", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.71, y = 36.29, f = "e" },
					{ t = "accept", quest = 672, title = "Raising Spirits", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.71, y = 36.29, f = "e" },
					{ t = "accept", quest = 671, title = "Foul Magics", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.71, y = 36.29, f = "e" },
				},
			},
			{
				note = "Avoid Refuge Point. Careful, stealthed enemies. More stealthed along the ridges. Also inside buildings.",
				goals = {
					{ t = "collect", quest = 671, item = 4495, itemName = "Bloodstone Amulet", count = 10, oi = 1, map = 1417, x = 33.4, y = 30.0, f = "e" },
				},
			},
			{
				label = "Collect_Highland_Raptor_Eyes",
				along = true,
				note = "Raptors. Avoid Refuge Pointe. notinsticky",
				goals = {
					{ t = "collect", quest = 672, item = 4512, itemName = "Highland Raptor Eye", count = 10, oi = 1, map = 1417, x = 42.4, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 677, npc = 2555, target = "Witherbark Witch Doctor", count = 8, oi = 3, map = 1417, x = 65.8, y = 68.0, f = "e" },
					{ t = "kill", quest = 677, npc = 2556, target = "Witherbark Headhunter", count = 10, oi = 2, map = 1417, x = 65.8, y = 68.0, f = "e" },
					{ t = "kill", quest = 677, npc = 2554, target = "Witherbark Axe Thrower", count = 10, oi = 1, map = 1417, x = 65.8, y = 68.0, f = "e" },
				},
			},
			{
				note = "Helps reach level 33 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 32,43760", map = 1417, x = 65.8, y = 68.0 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 671, title = "Foul Magics", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.71, y = 36.29, f = "e" },
					{ t = "turnin", quest = 672, title = "Raising Spirits", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.71, y = 36.29, f = "e" },
					{ t = "accept", quest = 674, title = "Raising Spirits", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.71, y = 36.29, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 674, title = "Raising Spirits", npc = 2792, npcName = "Gor'mul", map = 1417, x = 72.67, y = 34.12, f = "e" },
					{ t = "accept", quest = 675, title = "Raising Spirits", npc = 2792, npcName = "Gor'mul", map = 1417, x = 72.67, y = 34.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 675, title = "Raising Spirits", npc = 2706, npcName = "Tor'gan", map = 1417, x = 74.71, y = 36.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 677, title = "Call to Arms", npc = 2771, npcName = "Drum Fel", map = 1417, x = 74.24, y = 33.91, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 509, title = "Elixir of Agony", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
					{ t = "accept", quest = 513, title = "Elixir of Agony", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 4568, npcName = "Anastasia Hartwell", map = 1458, x = 85.14, y = 10.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1164, title = "To Steal From Thieves", npc = 4486, npcName = "Genavie Callow", map = 1458, x = 63.84, y = 49.45, f = "e" },
				},
			},
			{
				note = "Collect from the bank.",
				goals = {
					{ t = "collect", quest = 1112, item = 5800, itemName = "Kravel's Parts", map = 1458, x = 65.97, y = 44.75, f = "e" },
					{ t = "collect", quest = 1146, item = 5850, itemName = "Belgrom's Sealed Note", map = 1458, x = 65.97, y = 44.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.84, y = 77.63 },
					{ t = "turnin", quest = 513, title = "Elixir of Agony", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.82, y = 69.28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the Apothecarium", map = 1458, x = 47.84, y = 76.46 },
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.18, y = 64.42 },
					{ t = "turnin", quest = 550, title = "Battle of Hillsbrad", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.24, y = 92.22, f = "e" },
				},
			},
			{
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 4608, npcName = "Father Lazarus", map = 1458, x = 47.57, y = 18.9, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 4582, npcName = "Carolyn Ward", map = 1458, x = 83.86, y = 72.07, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 4563, npcName = "Kaal Soulreaper", map = 1458, x = 86.21, y = 15.93, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5753, npcName = "Martha Strain", map = 1458, x = 85.7, y = 16.08, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 4595, npcName = "Baltus Fowler", map = 1458, x = 47.4, y = 17.29, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
		},
	})
end

