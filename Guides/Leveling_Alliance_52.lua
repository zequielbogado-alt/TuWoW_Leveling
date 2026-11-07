-- TuWoW_Leveling — Guides/Leveling_Alliance_52.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-76-78-part-2",
		pack = "guides",
		title = "Northrend (76-78) (Parte 2/4)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-76-78-part-3",
		author = "TuWoW & Zygor",
		minLevel = 76,
		maxLevel = 78,
		zone = 116,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12673, title = "It Rolls Downhill", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 27.2, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 26.8, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12673, title = "It Rolls Downhill", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				note = "Use Stefan's Horn in your bags|use Stefan's Horn##41390",
				goals = {
					{ t = "use", item = 41390, itemName = "Stefan's Horn", f = "e" },
					{ t = "turnin", quest = 12669, title = "So Far, So Bad", npc = 28518, npcName = "Stefan Vadu", f = "e" },
					{ t = "accept", quest = 12677, title = "Hazardous Materials", npc = 28518, npcName = "Stefan Vadu", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12686, title = "Zero Tolerance", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12677, itemName = "Harvested Blight Crystal", count = 5, oi = 2, map = 121, x = 27.1, y = 43.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 29.7, y = 49.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12686, title = "Zero Tolerance", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				note = "Use Stefan's Horn in your bags|use Stefan's Horn##41390",
				goals = {
					{ t = "use", item = 41390, itemName = "Stefan's Horn", f = "e" },
					{ t = "turnin", quest = 12677, title = "Hazardous Materials", npc = 28518, npcName = "Stefan Vadu", f = "e" },
					{ t = "accept", quest = 12676, title = "Sabotage", npc = 28518, npcName = "Stefan Vadu", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12690, title = "Fuel for the Fire", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 32.1, y = 40.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 30.6, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12690, title = "Fuel for the Fire", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 12710, title = "Disclosure", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 27.2, y = 42.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12710, title = "Disclosure", npc = 28503, npcName = "Overlord Drakuru", map = 121, x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				note = "Use Stefan's Horn in your bags|use Stefan's Horn##41390",
				goals = {
					{ t = "use", item = 41390, itemName = "Stefan's Horn", f = "e" },
					{ t = "turnin", quest = 12676, title = "Sabotage", npc = 28518, npcName = "Stefan Vadu", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12901, title = "Making Something Out Of Nothing", npc = 29688, npcName = "Engineer Reed", map = 121, x = 25.3, y = 64.0, f = "e" },
					{ t = "turnin", quest = 12912, title = "A Great Storm Approaches", npc = 29688, npcName = "Engineer Reed", map = 121, x = 25.3, y = 64.0, f = "e" },
					{ t = "accept", quest = 12914, title = "Gymer's Salvation", npc = 29688, npcName = "Engineer Reed", map = 121, x = 25.3, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12903, title = "That's What Friends Are For...", npc = 29689, npcName = "Crusader MacKellar", map = 121, x = 25.3, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12914, itemName = "Banshee Essence", count = 6, oi = 1, map = 121, x = 23.9, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Icetouched Earthragers", count = 1, map = 121, x = 15.9, y = 71.5, f = "e" },
					{ t = "collect", quest = 12914, itemName = "Diatomaceous Earth", count = 6, oi = 2, map = 121, x = 15.9, y = 71.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12914, title = "Gymer's Salvation", npc = 29688, npcName = "Engineer Reed", map = 121, x = 25.3, y = 64.0, f = "e" },
					{ t = "accept", quest = 12916, title = "Our Only Hope", npc = 29688, npcName = "Engineer Reed", map = 121, x = 25.3, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12916, title = "Our Only Hope", npc = 29647, npcName = "Gymer", map = 121, x = 19.7, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12795, title = "Taking a Stand", npc = 28059, npcName = "Commander Falstaav", map = 121, x = 39.4, y = 67.0, f = "e" },
					{ t = "accept", quest = 12503, title = "Defend the Stand", npc = 28059, npcName = "Commander Falstaav", map = 121, x = 39.4, y = 67.0, f = "e" },
					{ t = "accept", quest = 12740, title = "Parachutes for the Argent Crusade", npc = 28059, npcName = "Commander Falstaav", map = 121, x = 39.4, y = 67.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "The Argent Stand", text = "The Argent Stand", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12565, title = "The Blessing of Zim'Abwa", npc = 28062, npcName = "Hexxer Ubungo", map = 121, x = 40.5, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Scourge mobs", count = 1, map = 121, x = 38.4, y = 67.1, f = "e" },
					{ t = "collect", quest = 12565, item = 38551, itemName = "Drakkari Offerings", count = 10, map = 121, x = 38.4, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12565, title = "The Blessing of Zim'Abwa", npc = 190535, npcName = "Zim'Abwa", map = 121, x = 36.7, y = 72.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12503, title = "Defend the Stand", npc = 28059, npcName = "Commander Falstaav", map = 121, x = 39.4, y = 67.0, f = "e" },
					{ t = "turnin", quest = 12740, title = "Parachutes for the Argent Crusade", npc = 28059, npcName = "Commander Falstaav", map = 121, x = 39.4, y = 67.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12505, title = "New Orders for Sergeant Stackhammer", npc = 28039, npcName = "Commander Kunz", map = 121, x = 40.3, y = 66.6, f = "e" },
					{ t = "accept", quest = 12596, title = "Pa'Troll", npc = 28039, npcName = "Commander Kunz", map = 121, x = 40.3, y = 66.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12506, title = "Trouble at the Altar of Sseratus", npc = 28062, npcName = "Hexxer Ubungo", map = 121, x = 40.5, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12799, title = "Siphoning the Spirits", npc = 28045, npcName = "Captain Arnath", map = 121, x = 35.6, y = 52.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12557, title = "Lab Work", npc = 28205, npcName = "Alchemist Finklestein", map = 121, x = 35.0, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12557, title = "Lab Work", npc = 28205, npcName = "Alchemist Finklestein", map = 121, x = 35.0, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Lost Drakkari Spirits", count = 1, map = 121, x = 36.6, y = 60.5, f = "e" },
					{ t = "collect", quest = 12799, itemName = "Ancient Ectoplasm", count = 5, oi = 1, map = 121, x = 36.6, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12799, title = "Siphoning the Spirits", npc = 28045, npcName = "Captain Arnath", map = 121, x = 35.6, y = 52.2, f = "e" },
					{ t = "accept", quest = 12609, title = "Stocking the Shelves", npc = 28045, npcName = "Captain Arnath", map = 121, x = 35.6, y = 52.2, f = "e" },
					{ t = "accept", quest = 12610, title = "Clipping Their Wings", npc = 28045, npcName = "Captain Arnath", map = 121, x = 35.6, y = 52.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Trapdoor Crawlers", count = 1, map = 121, x = 36.1, y = 51.1, f = "e" },
					{ t = "collect", quest = 12609, itemName = "Fresh Spider Ichor", count = 7, oi = 1, map = 121, x = 36.1, y = 51.1, f = "e" },
					{ t = "kill", target = "Zul'Drak Bats", count = 1, map = 121, x = 36.1, y = 51.1, f = "e" },
					{ t = "collect", quest = 12610, itemName = "Unblemished Bat Wing", count = 7, oi = 1, map = 121, x = 36.1, y = 51.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12609, title = "Stocking the Shelves", npc = 28045, npcName = "Captain Arnath", map = 121, x = 35.6, y = 52.2, f = "e" },
					{ t = "turnin", quest = 12610, title = "Clipping Their Wings", npc = 28045, npcName = "Captain Arnath", map = 121, x = 35.6, y = 52.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12505, title = "New Orders for Sergeant Stackhammer", npc = 28056, npcName = "Sergeant Stackhammer", map = 121, x = 40.4, y = 48.2, f = "e" },
					{ t = "accept", quest = 12504, title = "Argent Crusade, We Are Leaving!", npc = 28056, npcName = "Sergeant Stackhammer", map = 121, x = 40.4, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12508, title = "Mopping Up", npc = 28099, npcName = "Corporal Maga", map = 121, x = 40.4, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Sseratus mobs", count = 1, map = 121, x = 40.4, y = 47.0, f = "e" },
					{ t = "kill", quest = 12508, target = "Followers of Sseratus", count = 10, oi = 1, map = 121, x = 40.4, y = 47.0, f = "e" },
					{ t = "collect", itemName = "a Strange Mojo", count = 1, map = 121, x = 40.4, y = 47.0, f = "e" },
					{ t = "accept", quest = 12507, title = "Strange Mojo", npc = 28041, npcName = "Argent Soldier", map = 121, x = 40.4, y = 47.0, f = "e" },
				},
			},
			{
				note = "Go inside the building to 40,39",
				goals = {
					{ t = "goto", map = 121, x = 40.0, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12504, title = "Argent Crusade, We Are Leaving!", npc = 28056, npcName = "Sergeant Stackhammer", map = 121, x = 40.4, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12508, title = "Mopping Up", npc = 28099, npcName = "Corporal Maga", map = 121, x = 40.4, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12506, title = "Trouble at the Altar of Sseratus", npc = 28062, npcName = "Hexxer Ubungo", map = 121, x = 40.5, y = 65.6, f = "e" },
					{ t = "turnin", quest = 12507, title = "Strange Mojo", npc = 28062, npcName = "Hexxer Ubungo", map = 121, x = 40.5, y = 65.6, f = "e" },
					{ t = "accept", quest = 12510, title = "Precious Elemental Fluids", npc = 28062, npcName = "Hexxer Ubungo", map = 121, x = 40.5, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12562, title = "The Drakkari Do Not Need Water Elementals!", npc = 28309, npcName = "Sub-Lieutenant Jax", map = 121, x = 40.2, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12562, target = "Drakkari Water Binder", count = 10, oi = 1, map = 121, x = 40.2, y = 73.6, f = "e" },
					{ t = "kill", target = "Crazed Water Spirits", count = 1, map = 121, x = 40.2, y = 73.6, f = "e" },
					{ t = "collect", item = 38323, itemName = "Water Elemental Link", count = 3, map = 121, x = 40.2, y = 73.6, f = "e" },
					{ t = "kill", target = "Watery Lords that spawn", count = 1, map = 121, x = 40.2, y = 73.6, f = "e" },
					{ t = "collect", quest = 12510, itemName = "Precious Elemental Fluids", count = 3, oi = 1, map = 121, x = 40.2, y = 73.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12562, title = "The Drakkari Do Not Need Water Elementals!", npc = 28309, npcName = "Sub-Lieutenant Jax", map = 121, x = 40.2, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12510, title = "Precious Elemental Fluids", npc = 28062, npcName = "Hexxer Ubungo", map = 121, x = 40.5, y = 65.6, f = "e" },
					{ t = "accept", quest = 12514, title = "Mushroom Mixer", npc = 28062, npcName = "Hexxer Ubungo", map = 121, x = 40.5, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12527, title = "Gluttonous Lurkers", npc = 28204, npcName = "Apprentice Pestlepot", map = 121, x = 41.3, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 38380, itemName = "Zul'Drak Rat", count = 25, map = 121, x = 41.4, y = 57.4, f = "e" },
					{ t = "collect", quest = 12527, itemName = "Basilisk Crystals", count = 5, oi = 1, map = 121, x = 41.4, y = 57.4, f = "e" },
					{ t = "collect", quest = 12514, itemName = "Muddlecap Fungus", count = 10, oi = 1, map = 121, x = 41.4, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12514, title = "Mushroom Mixer", npc = 28062, npcName = "Hexxer Ubungo", map = 121, x = 40.5, y = 65.6, f = "e" },
					{ t = "accept", quest = 12516, title = "Too Much of a Good Thing", npc = 28062, npcName = "Hexxer Ubungo", map = 121, x = 40.5, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12527, title = "Gluttonous Lurkers", npc = 28205, npcName = "Alchemist Finklestein", map = 121, x = 35.0, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12516, target = "Muddled Prophet of Sseratus", count = 1, oi = 1, map = 121, x = 40.2, y = 42.6, f = "e" },
				},
			},
			{
				note = "Hearth to The Argent Stand|goto Zul'Drak,40.8,66.3,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12516, title = "Too Much of a Good Thing", npc = 28062, npcName = "Hexxer Ubungo", map = 121, x = 40.5, y = 65.6, f = "e" },
					{ t = "accept", quest = 12623, title = "To the Witch Doctor", npc = 28062, npcName = "Hexxer Ubungo", map = 121, x = 40.5, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12599, title = "Creature Comforts", npc = 28043, npcName = "Captain Grondel", map = 121, x = 48.2, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12599, itemName = "Dead Thornwood", count = 20, oi = 1, map = 121, x = 46.9, y = 61.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12599, title = "Creature Comforts", npc = 28043, npcName = "Captain Grondel", map = 121, x = 48.2, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12597, title = "Something for the Pain", npc = 28042, npcName = "Captain Brandon", map = 121, x = 48.8, y = 78.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12597, itemName = "Mature Water-Poppy", count = 5, oi = 1, map = 121, x = 44.9, y = 79.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12597, title = "Something for the Pain", npc = 28042, npcName = "Captain Brandon", map = 121, x = 48.8, y = 78.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12598, title = "Throwing Down", npc = 28044, npcName = "Captain Rupert", map = 121, x = 58.1, y = 72.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12512, title = "Leave No One Behind", npc = 28125, npcName = "Dr. Rogers", map = 121, x = 58.7, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 53.6, y = 75.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 49.4, y = 74.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 53.4, y = 68.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 50.7, y = 69.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12598, title = "Throwing Down", npc = 28044, npcName = "Captain Rupert", map = 121, x = 58.1, y = 72.4, f = "e" },
					{ t = "accept", quest = 12606, title = "Cocooned!", npc = 28044, npcName = "Captain Rupert", map = 121, x = 58.1, y = 72.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12512, title = "Leave No One Behind", npc = 28125, npcName = "Dr. Rogers", map = 121, x = 58.7, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12552, title = "Death to the Necromagi", npc = 28283, npcName = "Sergeant Moonshard", map = 121, x = 58.1, y = 72.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12553, title = "Skimmer Spinnerets", npc = 28284, npcName = "Specialist Cogwheel", map = 121, x = 58.3, y = 72.0, f = "e" },
				},
			},
		},
	})
end

