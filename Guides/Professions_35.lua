-- TuWoW_Leveling — Guides/Professions_35.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-runecloth",
		pack = "guides",
		title = "Runecloth",
		category = "Professions",
		folder = "Tailoring",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1428,
		version = 1,
		steps = {
			{
				note = "You can find more inside the building.",
				goals = {
					{ t = "goto", text = "collect Runecloth###14047", map = 1428, x = 42.17, y = 35.64 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-felcloth",
		pack = "guides",
		title = "Felcloth",
		category = "Professions",
		folder = "Tailoring",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1448,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 14256, itemName = "Felcloth", map = 1448, x = 37.17, y = 67.0, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-mooncloth",
		pack = "guides",
		title = "Mooncloth",
		category = "Professions",
		folder = "Tailoring",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1448,
		version = 1,
		steps = {
			{
				label = "Farm_Felcloth",
				note = "It only takes 2 Felcloth to make a Mooncloth, but it requires a rare Tailoring pattern and has a 4 day cooldown.",
				goals = {
					{ t = "collect", item = 14256, itemName = "Felcloth", map = 1448, x = 37.17, y = 67.0, f = "e" },
				},
			},
			{
				note = "This spell has a 4 day cooldown.",
				goals = {
					{ t = "collect", item = 14342, itemName = "Mooncloth", map = 1440, x = 60.19, y = 72.9, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-spiders-silk",
		pack = "guides",
		title = "Spider's Silk",
		category = "Professions",
		folder = "Tailoring",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1437,
		version = 1,
		steps = {
			{
				note = "Inside the cave. These have a low drop rate.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1437, x = 52.79, y = 62.9 },
					{ t = "collect", item = 3182, itemName = "Spider's Silk", map = 1437, x = 48.51, y = 60.67, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-thick-spiders-silk",
		pack = "guides",
		title = "Thick Spider's Silk",
		category = "Professions",
		folder = "Tailoring",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1423,
		version = 1,
		steps = {
			{
				note = "You can find more inside the nearby crypt buildings. These have a low drop rate.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1423, x = 68.14, y = 38.72 },
					{ t = "collect", item = 4337, itemName = "Thick Spider's Silk", map = 1423, x = 73.57, y = 34.1, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-shadow-silk",
		pack = "guides",
		title = "Shadow Silk",
		category = "Professions",
		folder = "Tailoring",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1435,
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 10285, itemName = "Shadow Silk", map = 1435, x = 58.74, y = 62.39, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-ironweb-spider-silk",
		pack = "guides",
		title = "Ironweb Spider Silk",
		category = "Professions",
		folder = "Tailoring",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1451,
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 14227, itemName = "Ironweb Spider Silk", map = 1451, x = 56.25, y = 26.22, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-righteous-orb",
		pack = "guides",
		title = "Righteous Orb",
		category = "Professions",
		folder = "Dropped",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "It will be to the left of the rat gate. All Crimson enemies in The Scarlet Bastion have a chance to drop the orb.",
				goals = {
					{ t = "collect", item = 12811, itemName = "Righteous Orb" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-demonic-rune",
		pack = "guides",
		title = "Demonic Rune",
		category = "Professions",
		folder = "Dropped",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1448,
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1448, x = 38.44, y = 59.39 },
					{ t = "goto", text = "Continue following the path", map = 1448, x = 37.63, y = 60.96 },
					{ t = "goto", text = "Continue following the path", map = 1448, x = 36.04, y = 61.32 },
					{ t = "goto", text = "Enter the building", map = 1448, x = 35.39, y = 58.61 },
					{ t = "collect", item = 12662, itemName = "Demonic Rune", map = 1448, x = 37.61, y = 54.67, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-sharp-claw",
		pack = "guides",
		title = "Sharp Claw",
		category = "Professions",
		folder = "Dropped",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 5635, itemName = "Sharp Claw" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-ogre-tannin",
		pack = "guides",
		title = "Ogre Tannin",
		category = "Professions",
		folder = "Dropped",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "It will be up the ramp past the broken trap. Once up the first ramp, it will be in the far northwest corner of the room. Only one person will be able to loot it.",
				goals = {
					{ t = "collect", item = 18240, itemName = "Ogre Tannin" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-small-venom-sac",
		pack = "guides",
		title = "Small Venom Sac",
		category = "Professions",
		folder = "Dropped",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1421,
		version = 1,
		steps = {
			{
				note = "Inside the mine. You can find more outside the mine. These have a low drop rate.",
				goals = {
					{ t = "goto", text = "Enter the mine", map = 1421, x = 35.64, y = 13.54 },
					{ t = "collect", item = 1475, itemName = "Small Venom Sac", map = 1421, x = 35.38, y = 8.06, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-huge-venom-sac",
		pack = "guides",
		title = "Huge Venom Sac",
		category = "Professions",
		folder = "Dropped",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 19441, itemName = "Huge Venom Sac" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-iridescent-pearl",
		pack = "guides",
		title = "Iridescent Pearl",
		category = "Professions",
		folder = "Dropped",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				label = "Path_One",
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 5524, itemName = "Thick-shelled Clam" },
					{ t = "use", item = 5524, itemName = "Thick-shelled Clam" },
					{ t = "collect", item = 5500, itemName = "Iridescent Pearl" },
				},
			},
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 5524, itemName = "Thick-shelled Clam" },
					{ t = "use", item = 5524, itemName = "Thick-shelled Clam" },
					{ t = "collect", item = 5500, itemName = "Iridescent Pearl" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-black-pearl",
		pack = "guides",
		title = "Black Pearl",
		category = "Professions",
		folder = "Dropped",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 7973, itemName = "Big-mouth Clam" },
					{ t = "use", item = 7973, itemName = "Big-mouth Clam" },
					{ t = "collect", item = 7971, itemName = "Black Pearl" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-golden-pearl",
		pack = "guides",
		title = "Golden Pearl",
		category = "Professions",
		folder = "Dropped",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 7973, itemName = "Big-mouth Clam" },
					{ t = "use", item = 7973, itemName = "Big-mouth Clam" },
					{ t = "collect", item = 13926, itemName = "Golden Pearl" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-giant-egg",
		pack = "guides",
		title = "Giant Egg",
		category = "Professions",
		folder = "Dropped",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "They are found all around the zone.",
				goals = {
					{ t = "collect", item = 12207, itemName = "Giant Egg", map = 1446, x = 49.3, y = 36.17, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-zesty-clam-meat",
		pack = "guides",
		title = "Zesty Clam Meat",
		category = "Professions",
		folder = "Dropped",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 7973, itemName = "Big-mouth Clam" },
					{ t = "use", item = 7973, itemName = "Big-mouth Clam" },
					{ t = "collect", item = 7974, itemName = "Zesty Clam Meat" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-armorsmith-questline",
		pack = "guides",
		title = "Armorsmith Questline",
		category = "Professions",
		folder = "Blacksmithing",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "You must be at least this level before you can begin this questline. Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "You must be at least this level with your Blacksmithing profession before you can create some of the item needed in this questline. Use the \"Blacksmithing (1-300)\" guide to accomplish this.",
				goals = {
					{ t = "skill", level = 245, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5301, title = "The Art of the Armorsmith", npc = 11177, npcName = "Okothos Ironrager", map = 1454, x = 79.81, y = 24.05, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 81.61, y = 22.77 },
					{ t = "goto", text = "learn Heavy Grinding Stone##3337", map = 1454, x = 82.34, y = 22.97 },
					{ t = "goto", text = "learn Solid Grinding Stone##9920", map = 1454, x = 82.34, y = 22.97 },
					{ t = "goto", text = "learn Steel Breastplate##9916", map = 1454, x = 82.34, y = 22.97 },
					{ t = "goto", text = "learn Steel Plate Helm##9935", map = 1454, x = 82.34, y = 22.97 },
				},
			},
			{
				note = "If you have the Mining profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", quest = 2756, item = 3859, itemName = "Steel Bar", count = 120 },
					{ t = "collect", quest = 2756, item = 2838, itemName = "Heavy Stone", count = 36 },
					{ t = "collect", quest = 2756, item = 7912, itemName = "Solid Stone", count = 16 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2756, item = 3486, itemName = "Heavy Grinding Stone", count = 12 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2756, item = 7966, itemName = "Solid Grinding Stone", count = 4 },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 2756, item = 7963, itemName = "Steel Breastplate", count = 4, map = 1454, x = 79.76, y = 22.99, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 2756, item = 7922, itemName = "Steel Plate Helm", count = 4, map = 1454, x = 79.76, y = 22.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2756, title = "The Old Ways", npc = 7792, npcName = "Aturk the Anvil", map = 1454, x = 80.94, y = 23.32, f = "e" },
				},
			},
			{
				note = "You will learn this automatically.",
				goals = {
					{ t = "turnin", quest = 2756, title = "The Old Ways", npc = 7792, npcName = "Aturk the Anvil", map = 1454, x = 80.94, y = 23.32, f = "e" },
					{ t = "goto", text = "learn Orcish War Leggings##9957", map = 1454, x = 80.94, y = 23.32 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2757, title = "Booty Bay or Bust!", npc = 7793, npcName = "Ox", map = 1454, x = 80.45, y = 23.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1434, x = 27.85, y = 76.75 },
					{ t = "goto", text = "Follow the path", map = 1434, x = 28.4, y = 75.77 },
					{ t = "turnin", quest = 2757, title = "Booty Bay or Bust!", npc = 7794, npcName = "McGavan", map = 1434, x = 28.87, y = 75.42, f = "e" },
					{ t = "accept", quest = 2760, title = "The Mithril Order", npc = 7794, npcName = "McGavan", map = 1434, x = 28.87, y = 75.42, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1434, x = 28.95, y = 75.34 },
					{ t = "goto", text = "learn Heavy Mithril Breastplate##9959", map = 1434, x = 28.99, y = 75.55 },
					{ t = "goto", text = "learn Mithril Coif##9961", map = 1434, x = 28.99, y = 75.55 },
					{ t = "goto", text = "learn Heavy Mithril Boots##9968", map = 1434, x = 28.99, y = 75.55 },
				},
			},
			{
				note = "If you have the Mining profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", quest = 2761, item = 3575, itemName = "Iron Bar", count = 40 },
					{ t = "collect", quest = 2763, item = 3860, itemName = "Mithril Bar", count = 120 },
					{ t = "collect", quest = 2762, item = 6037, itemName = "Truesilver Bar", count = 5 },
					{ t = "collect", quest = 2763, item = 3864, itemName = "Citrine", count = 4 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the tunnel", map = 1434, x = 27.95, y = 73.61 },
					{ t = "goto", text = "Leave the tunnel", map = 1434, x = 29.59, y = 72.46 },
					{ t = "goto", text = "Follow the road", map = 1434, x = 30.96, y = 71.7 },
					{ t = "goto", text = "Continue following the road", map = 1434, x = 33.46, y = 55.53 },
					{ t = "goto", text = "Continue following the road", map = 1434, x = 36.15, y = 48.91 },
					{ t = "goto", text = "Follow the path", map = 1434, x = 44.0, y = 26.14 },
					{ t = "goto", text = "Follow the path up", map = 1434, x = 47.03, y = 22.84 },
					{ t = "turnin", quest = 2760, title = "The Mithril Order", npc = 7802, npcName = "Galvan the Ancient", map = 1434, x = 50.62, y = 20.48, f = "e" },
					{ t = "accept", quest = 2761, title = "Smelt On, Smelt Off", npc = 7802, npcName = "Galvan the Ancient", map = 1434, x = 50.62, y = 20.48, f = "e" },
					{ t = "accept", quest = 2762, title = "The Great Silver Deceiver", npc = 7802, npcName = "Galvan the Ancient", map = 1434, x = 50.62, y = 20.48, f = "e" },
					{ t = "accept", quest = 2763, title = "The Art of the Imbue", npc = 7802, npcName = "Galvan the Ancient", map = 1434, x = 50.62, y = 20.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2761, title = "Smelt On, Smelt Off", npc = 7802, npcName = "Galvan the Ancient", map = 1434, x = 50.62, y = 20.48, f = "e" },
					{ t = "turnin", quest = 2762, title = "The Great Silver Deceiver", npc = 7802, npcName = "Galvan the Ancient", map = 1434, x = 50.62, y = 20.48, f = "e" },
					{ t = "turnin", quest = 2763, title = "The Art of the Imbue", npc = 7802, npcName = "Galvan the Ancient", map = 1434, x = 50.62, y = 20.48, f = "e" },
					{ t = "accept", quest = 2765, title = "Expert Blacksmith!", npc = 7802, npcName = "Galvan the Ancient", map = 1434, x = 50.62, y = 20.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2765, title = "Expert Blacksmith!", note = "Watch Galvan Work", map = 1434, x = 50.57, y = 20.37, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2765, title = "Expert Blacksmith!", npc = 7802, npcName = "Galvan the Ancient", map = 1434, x = 50.57, y = 20.37, f = "e" },
					{ t = "accept", quest = 2764, title = "Galvan's Finest Pupil", npc = 7802, npcName = "Galvan the Ancient", map = 1434, x = 50.57, y = 20.37, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 7983, itemName = "Plans: Ornate Mithril Pants" },
				},
			},
			{
				goals = {
					{ t = "use", item = 7984, itemName = "Plans: Ornate Mithril Gloves" },
				},
			},
			{
				goals = {
					{ t = "use", item = 7985, itemName = "Plans: Ornate Mithril Shoulder" },
				},
			},
			{
				note = "If you have the Mining profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House. If you have the Skinning profession, you can gather this.",
				goals = {
					{ t = "collect", quest = 2773, item = 3860, itemName = "Mithril Bar", count = 114 },
					{ t = "collect", quest = 2773, item = 6037, itemName = "Truesilver Bar", count = 3 },
					{ t = "collect", quest = 2772, item = 7909, itemName = "Aquamarine" },
					{ t = "collect", quest = 2773, item = 7912, itemName = "Solid Stone", count = 8 },
					{ t = "collect", quest = 2772, item = 4304, itemName = "Thick Leather", count = 14 },
					{ t = "collect", quest = 2773, item = 4338, itemName = "Mageweave Cloth", count = 18 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2764, title = "Galvan's Finest Pupil", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.42, y = 28.75, f = "e" },
					{ t = "accept", quest = 2771, title = "A Good Head On Your Shoulders", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.42, y = 28.75, f = "e" },
					{ t = "accept", quest = 2772, title = "The World At Your Feet", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.42, y = 28.75, f = "e" },
					{ t = "accept", quest = 2773, title = "The Mithril Kid", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2773, item = 7966, itemName = "Solid Grinding Stone", count = 2 },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 2771, item = 7931, itemName = "Mithril Coif", count = 2, oi = 1, map = 1446, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 2771, item = 7931, itemName = "Mithril Coif", oi = 2, map = 1446, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				note = "You will learn this automatically.",
				goals = {
					{ t = "turnin", quest = 2771, title = "A Good Head On Your Shoulders", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.42, y = 28.75, f = "e" },
					{ t = "goto", text = "learn Ornate Mithril Helm##9980", map = 1446, x = 51.42, y = 28.75 },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 2772, item = 7933, itemName = "Heavy Mithril Boots", count = 2, oi = 1, map = 1446, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 2771, item = 7926, itemName = "Ornate Mithril Pants", oi = 2, map = 1446, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				note = "You will learn this automatically.",
				goals = {
					{ t = "turnin", quest = 2772, title = "The World At Your Feet", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.42, y = 28.75, f = "e" },
					{ t = "goto", text = "learn Ornate Mithril Boots##9979", map = 1446, x = 51.42, y = 28.75 },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 2773, item = 7930, itemName = "Heavy Mithril Breastplate", count = 2, oi = 1, map = 1446, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 2773, item = 7927, itemName = "Ornate Mithril Gloves", oi = 2, map = 1446, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				note = "You will learn this automatically.",
				goals = {
					{ t = "turnin", quest = 2773, title = "The Mithril Kid", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.42, y = 28.75, f = "e" },
					{ t = "goto", text = "learn Ornate Mithril Breastplate##9972", map = 1446, x = 51.42, y = 28.75 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3321, title = "Did You Lose This?", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3321, title = "Did You Lose This?", note = "Watch Trenton Work", map = 1446, x = 51.42, y = 28.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3321, title = "Did You Lose This?", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.42, y = 28.76, f = "e" },
				},
			},
			{
				note = "If you have the Mining profession, you can gather most these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House. If you have the Skinning profession, you can gather this.",
				goals = {
					{ t = "collect", quest = 5301, item = 3860, itemName = "Mithril Bar", count = 108 },
					{ t = "collect", quest = 5301, item = 6037, itemName = "Truesilver Bar", count = 18 },
					{ t = "collect", quest = 5301, item = 7909, itemName = "Aquamarine", count = 2 },
					{ t = "collect", quest = 5301, item = 7912, itemName = "Solid Stone", count = 28 },
					{ t = "collect", quest = 5301, item = 7971, itemName = "Black Pearl", count = 4 },
					{ t = "collect", quest = 5301, item = 7077, itemName = "Heart of Fire" },
					{ t = "collect", quest = 5301, item = 4304, itemName = "Thick Leather", count = 8 },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5301, item = 7966, itemName = "Solid Grinding Stone", count = 7 },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 5301, item = 7937, itemName = "Ornate Mithril Helm", count = 4, oi = 1, map = 1454, x = 79.76, y = 22.99, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 5301, item = 7936, itemName = "Ornate Mithril Boots", count = 2, oi = 2, map = 1454, x = 79.76, y = 22.99, f = "e" },
				},
			},
			{
				note = "Stand next to the anvil.",
				goals = {
					{ t = "collect", quest = 5301, item = 7935, itemName = "Ornate Mithril Breastplate", oi = 3, map = 1454, x = 79.76, y = 22.99, f = "e" },
				},
			},
			{
				note = "You will learn this automatically.",
				goals = {
					{ t = "turnin", quest = 5283, title = "The Art of the Armorsmith", npc = 11177, npcName = "Okothos Ironrager", map = 1454, x = 79.81, y = 24.05, f = "e" },
					{ t = "goto", text = "learn Armorsmith##9788", map = 1454, x = 79.81, y = 24.05 },
				},
			},
		},
	})
end

