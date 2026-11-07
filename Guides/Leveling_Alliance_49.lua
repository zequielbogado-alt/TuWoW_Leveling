-- TuWoW_Leveling — Guides/Leveling_Alliance_49.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-74-76-part-3",
		pack = "guides",
		title = "Northrend (74-76) (Parte 3/5)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-74-76-part-4",
		author = "TuWoW & Zygor",
		minLevel = 74,
		maxLevel = 76,
		zone = 115,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 13347, title = "Reborn From The Ashes", npc = 29611, npcName = "King Varian Wrynn", map = 1453, x = 80.0, y = 38.4, f = "e" },
				},
			},
			{
				note = "Hearth to Wyrmrest Temple|goto Dragonblight,59.8,54.3,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26673, npcName = "Image of Archmage Modera", map = 1453, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				note = "Go downstairs to 56.3,46.8|goto Dalaran,56.3,46.8",
				goals = {
					{ t = "turnin", quest = 12794, title = "The Magical Kingdom of Dalaran", npc = 29156, npcName = "Archmage Celindra", f = "e" },
					{ t = "accept", quest = 12790, title = "Learning to Leave and Return: the Magical Way", npc = 29156, npcName = "Archmage Celindra", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1453, x = 56.3, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 127, x = 15.7, y = 42.5, f = "e" },
				},
			},
			{
				note = "Go downstairs to 56.3,46.8|goto Dalaran,56.3,46.8",
				goals = {
					{ t = "turnin", quest = 12790, title = "Learning to Leave and Return: the Magical Way", npc = 29156, npcName = "Archmage Celindra", f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Dalaran", text = "Dalaran", map = 127, x = 72.2, y = 45.8, f = "e" },
				},
			},
			{
				note = "Go underground into the sewer to 45.4,40.8",
				goals = {
					{ t = "accept", quest = 12974, title = "The Champion's Call!", npc = 30137, npcName = "Shifty Vickers", map = 127, x = 45.4, y = 40.8, f = "e" },
				},
			},
			{
				note = "Go upstairs to 30.6,48.6",
				goals = {
					{ t = "accept", quest = 13158, title = "Discretion is Key", npc = 16128, npcName = "Rhonin", map = 127, x = 30.6, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13158, title = "Discretion is Key", npc = 31080, npcName = "Warden Alturas", map = 127, x = 61.3, y = 63.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12511, title = "The Hills Have Us", npc = 27317, npcName = "Gryphon Commander Urik", map = 115, x = 77.1, y = 50.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Amberpine Lodge", text = "Amberpine Lodge", map = 116, x = 31.3, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12225, title = "Mmm... Amberseeds!", map = 116, x = 31.8, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12511, title = "The Hills Have Us", npc = 26875, npcName = "Lieutenant Dumont", map = 116, x = 31.8, y = 60.2, f = "e" },
					{ t = "accept", quest = 12292, title = "Local Support", npc = 26875, npcName = "Lieutenant Dumont", map = 116, x = 31.8, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12225, title = "Mmm... Amberseeds!", npc = 27277, npcName = "Master Woodsman Anderhol", map = 116, x = 32.1, y = 60.0, f = "e" },
					{ t = "accept", quest = 12226, title = "Just Passing Through", npc = 27277, npcName = "Master Woodsman Anderhol", map = 116, x = 32.1, y = 60.0, f = "e" },
					{ t = "accept", quest = 12212, title = "Replenishing the Storehouse", npc = 27277, npcName = "Master Woodsman Anderhol", map = 116, x = 32.1, y = 60.0, f = "e" },
					{ t = "accept", quest = 12215, title = "Them or Us!", npc = 27277, npcName = "Master Woodsman Anderhol", map = 116, x = 32.1, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Amberpine Lodge", text = "Amberpine Lodge", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Tallhorn Stags", count = 1, map = 116, x = 33.3, y = 58.0, f = "e" },
					{ t = "collect", quest = 12212, itemName = "Succulent Venison", count = 8, oi = 1, map = 116, x = 33.3, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12212, title = "Replenishing the Storehouse", npc = 27277, npcName = "Master Woodsman Anderhol", map = 116, x = 32.1, y = 60.0, f = "e" },
					{ t = "accept", quest = 12216, title = "Take Their Rear!", npc = 27277, npcName = "Master Woodsman Anderhol", map = 116, x = 32.1, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12210, title = "Troll Season!", npc = 26875, npcName = "Lieutenant Dumont", map = 116, x = 31.8, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12226, itemName = "Blackroot Stalk", count = 5, oi = 1, map = 116, x = 30.6, y = 53.4, f = "e" },
					{ t = "kill", target = "Grizzly Bears", count = 1, map = 116, x = 30.6, y = 53.4, f = "e" },
					{ t = "collect", quest = 12216, itemName = "Grizzly Flank", count = 8, oi = 1, map = 116, x = 30.6, y = 53.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12216, title = "Take Their Rear!", npc = 27277, npcName = "Master Woodsman Anderhol", map = 116, x = 32.1, y = 60.0, f = "e" },
					{ t = "turnin", quest = 12226, title = "Just Passing Through", npc = 27277, npcName = "Master Woodsman Anderhol", map = 116, x = 32.1, y = 60.0, f = "e" },
					{ t = "accept", quest = 12227, title = "Doing Your Duty", npc = 27277, npcName = "Master Woodsman Anderhol", map = 116, x = 32.1, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12227, itemName = "Partially Processed Amberseeds", count = 1, oi = 1, map = 116, x = 32.2, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12227, title = "Doing Your Duty", npc = 27277, npcName = "Master Woodsman Anderhol", map = 116, x = 32.1, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12215, target = "Graymist Hunter", count = 6, oi = 1, map = 116, x = 26.0, y = 67.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12292, itemName = "Cedar Chest", count = 1, oi = 1, map = 116, x = 15.9, y = 65.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12210, title = "Troll Season!", npc = 26424, npcName = "Samir", map = 116, x = 16.2, y = 47.6, f = "e" },
					{ t = "accept", quest = 11984, title = "Filling the Cages", npc = 26424, npcName = "Samir", map = 116, x = 16.2, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26429, npcName = "Budd", map = 116, x = 16.4, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 13.2, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11984, title = "Filling the Cages", npc = 26424, npcName = "Samir", map = 116, x = 16.2, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11989, title = "Truce?", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11989, item = 38083, itemName = "Dull Carving Knife", count = 1, map = 116, x = 16.5, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11989, title = "Truce?", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
					{ t = "accept", quest = 11990, title = "Vial of Visions", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 26474, npcName = "Ameenah", itemName = "Imbued Vial", count = 1, map = 116, x = 16.0, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11990, itemName = "Haze Leaf", count = 3, oi = 2, map = 116, x = 14.6, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11990, itemName = "Waterweed Frond", count = 1, oi = 3, map = 116, x = 15.2, y = 40.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11990, title = "Vial of Visions", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
					{ t = "accept", quest = 11991, title = "Subject to Interpretation", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12484, title = "Scourgekabob", npc = 26519, npcName = "Prigmon", map = 116, x = 15.7, y = 46.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12484, item = 38149, itemName = "Scourged Troll Mummy", count = 1, map = 116, x = 15.7, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 16.9, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12484, title = "Scourgekabob", npc = 26604, npcName = "Mack Fearsen", map = 116, x = 16.7, y = 48.3, f = "e" },
					{ t = "accept", quest = 12029, title = "Seared Scourge", npc = 26604, npcName = "Mack Fearsen", map = 116, x = 16.7, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12483, title = "Shimmercap Stew", npc = 26519, npcName = "Prigmon", map = 116, x = 15.7, y = 46.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12483, itemName = "Shimmering Snowcap", count = 5, oi = 2, map = 116, x = 11.1, y = 61.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Ice Serpents", count = 1, map = 116, x = 13.3, y = 58.5, f = "e" },
					{ t = "collect", quest = 12483, itemName = "Ice Serpent Eye", count = 5, oi = 1, map = 116, x = 13.3, y = 58.5, f = "e" },
					{ t = "kill", target = "trolls", count = 1, map = 116, x = 13.3, y = 58.5, f = "e" },
					{ t = "collect", quest = 11991, item = 35799, itemName = "Frozen Mojo", count = 5, map = 116, x = 13.3, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11991, title = "Subject to Interpretation", npc = 26500, npcName = "Image of Drakuru", map = 116, x = 13.2, y = 60.9, f = "e" },
					{ t = "accept", quest = 12007, title = "Sacrifices Must be Made", npc = 26500, npcName = "Image of Drakuru", map = 116, x = 13.2, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12483, itemName = "Sweetroot", count = 5, oi = 3, map = 116, x = 18.4, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12007, item = 35836, itemName = "Zim'bo's Mojo", count = 1, map = 116, x = 14.5, y = 38.0, f = "e" },
				},
			},
			{
				note = "Go up the huge stairs to 17.9,36.5",
				goals = {
					{ t = "collect", quest = 12007, itemName = "Eye of the Prophets", count = 1, oi = 1, map = 116, x = 17.9, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12007, title = "Sacrifices Must be Made", npc = 26543, npcName = "Image of Drakuru", map = 116, x = 17.4, y = 36.4, f = "e" },
					{ t = "accept", quest = 12042, title = "Heart of the Ancients", npc = 26543, npcName = "Image of Drakuru", map = 116, x = 17.4, y = 36.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 16.0, y = 29.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12307, title = "Wolfsbane Root", npc = 27545, npcName = "Katja", map = 116, x = 25.6, y = 33.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 28.6, y = 35.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12307, title = "Wolfsbane Root", npc = 27545, npcName = "Katja", map = 116, x = 25.6, y = 33.3, f = "e" },
				},
			},
			{
				note = "Go on top of the control station to 36.9,32.4",
				goals = {
					{ t = "turnin", quest = 12042, title = "Heart of the Ancients", map = 116, x = 36.9, y = 32.4, f = "e" },
					{ t = "accept", quest = 12802, title = "My Heart is in Your Hands", map = 116, x = 36.9, y = 32.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Drakkari Defenders", count = 1, map = 116, x = 44.2, y = 30.4, f = "e" },
					{ t = "collect", quest = 12802, item = 36743, itemName = "Desperate Mojo", count = 5, map = 116, x = 44.2, y = 30.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12802, title = "My Heart is in Your Hands", npc = 26701, npcName = "Image of Drakuru", map = 116, x = 45.0, y = 28.4, f = "e" },
					{ t = "accept", quest = 12068, title = "Voices From the Dust", npc = 26701, npcName = "Image of Drakuru", map = 116, x = 45.0, y = 28.4, f = "e" },
				},
			},
			{
				note = "Hearth to Amberpine Lodge|goto Grizzly Hills,32.0,60.3,0.1|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12292, title = "Local Support", npc = 26875, npcName = "Lieutenant Dumont", map = 116, x = 31.8, y = 60.2, f = "e" },
					{ t = "accept", quest = 12293, title = "Close the Deal", npc = 26875, npcName = "Lieutenant Dumont", map = 116, x = 31.8, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12215, title = "Them or Us!", npc = 27277, npcName = "Master Woodsman Anderhol", map = 116, x = 32.1, y = 60.0, f = "e" },
					{ t = "accept", quest = 12217, title = "Eagle Eyes", npc = 27277, npcName = "Master Woodsman Anderhol", map = 116, x = 32.1, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12293, title = "Close the Deal", npc = 27469, npcName = "Ivan", map = 116, x = 34.8, y = 55.6, f = "e" },
					{ t = "accept", quest = 12294, title = "A Tentative Pact", npc = 27469, npcName = "Ivan", map = 116, x = 34.8, y = 55.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12294, title = "A Tentative Pact", npc = 26875, npcName = "Lieutenant Dumont", map = 116, x = 31.8, y = 60.2, f = "e" },
					{ t = "accept", quest = 12295, title = "An Exercise in Diplomacy", npc = 26875, npcName = "Lieutenant Dumont", map = 116, x = 31.8, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12222, title = "Secrets of the Flamebinders", npc = 27391, npcName = "Woodsman Drake", map = 116, x = 32.4, y = 59.9, f = "e" },
					{ t = "accept", quest = 12223, title = "Thinning the Ranks", npc = 27391, npcName = "Woodsman Drake", map = 116, x = 32.4, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12223, target = "Dragonflayer Huscarl", count = 12, oi = 1, map = 116, x = 33.6, y = 79.0, f = "e" },
					{ t = "kill", target = "Dragonflayer Flamebinders", count = 1, map = 116, x = 33.6, y = 79.0, f = "e" },
					{ t = "collect", quest = 12222, itemName = "Flame-Imbued Talisman", count = 3, oi = 1, map = 116, x = 33.6, y = 79.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12222, title = "Secrets of the Flamebinders", npc = 27391, npcName = "Woodsman Drake", map = 116, x = 32.4, y = 59.9, f = "e" },
					{ t = "turnin", quest = 12223, title = "Thinning the Ranks", npc = 27391, npcName = "Woodsman Drake", map = 116, x = 32.4, y = 59.9, f = "e" },
					{ t = "accept", quest = 12255, title = "The Thane of Voldrune", npc = 27391, npcName = "Woodsman Drake", map = 116, x = 32.4, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 27292, npcName = "Flamebringer", map = 116, x = 26.6, y = 77.9, f = "e" },
				},
			},
			{
				note = "Fly to 27.1,73",
				goals = {
					{ t = "kill", quest = 12255, npc = 27377, target = "Thane Torvald Eriksson", count = 1, oi = 1, map = 116, x = 27.1, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12255, title = "The Thane of Voldrune", npc = 27391, npcName = "Woodsman Drake", map = 116, x = 32.4, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12217, npc = 26369, target = "Imperial Eagle", count = 5, oi = 1, map = 116, x = 34.4, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12217, title = "Eagle Eyes", npc = 27277, npcName = "Master Woodsman Anderhol", map = 116, x = 32.1, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12029, title = "Seared Scourge", npc = 26604, npcName = "Mack Fearsen", map = 116, x = 16.7, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12483, title = "Shimmercap Stew", npc = 26519, npcName = "Prigmon", map = 116, x = 15.7, y = 46.7, f = "e" },
					{ t = "accept", quest = 12190, title = "Say Hello to My Little Friend", npc = 26519, npcName = "Prigmon", map = 116, x = 15.7, y = 46.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12295, title = "An Exercise in Diplomacy", npc = 26821, npcName = "Envoy Ducal", map = 116, x = 26.4, y = 35.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12299, title = "Northern Hospitality", npc = 27486, npcName = "Sergei", map = 116, x = 26.5, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12299, target = "Conquest Hold Marauder", count = 8, oi = 1, map = 116, x = 24.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12299, title = "Northern Hospitality", npc = 27486, npcName = "Sergei", map = 116, x = 26.5, y = 35.8, f = "e" },
					{ t = "accept", quest = 12300, title = "Test of Mettle", npc = 27486, npcName = "Sergei", map = 116, x = 26.5, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 21.9, y = 29.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12300, title = "Test of Mettle", npc = 27497, npcName = "Captured Trapper", map = 116, x = 21.9, y = 29.9, f = "e" },
					{ t = "accept", quest = 12302, title = "Words of Warning", npc = 27497, npcName = "Captured Trapper", map = 116, x = 21.9, y = 29.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12302, title = "Words of Warning", npc = 27499, npcName = "Caged Prisoner", map = 116, x = 26.5, y = 31.8, f = "e" },
					{ t = "accept", quest = 12308, title = "Escape from Silverbrook", npc = 27499, npcName = "Caged Prisoner", map = 116, x = 26.5, y = 31.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12308, title = "Escape from Silverbrook", npc = 26875, npcName = "Lieutenant Dumont", map = 116, x = 31.8, y = 60.2, f = "e" },
					{ t = "accept", quest = 12310, title = "A Swift Response", npc = 26875, npcName = "Lieutenant Dumont", map = 116, x = 31.8, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12310, npc = 27547, target = "Vladek", count = 1, oi = 2, map = 116, x = 36.3, y = 67.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12310, target = "Silverbrook Hunter", count = 7, oi = 1, map = 116, x = 37.0, y = 66.5, f = "e" },
					{ t = "collect", itemName = "Mikhail's Journal", count = 1, map = 116, x = 37.0, y = 66.5, f = "e" },
					{ t = "accept", quest = 12105, title = "Descent into Darkness", map = 116, x = 37.0, y = 66.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12310, title = "A Swift Response", npc = 26875, npcName = "Lieutenant Dumont", map = 116, x = 31.8, y = 60.2, f = "e" },
					{ t = "turnin", quest = 12105, title = "Descent into Darkness", npc = 26875, npcName = "Lieutenant Dumont", map = 116, x = 31.8, y = 60.2, f = "e" },
					{ t = "accept", quest = 12109, title = "Report to Gryan Stoutmantle... Again", npc = 26875, npcName = "Lieutenant Dumont", map = 116, x = 31.8, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12219, title = "The Failed World Tree", npc = 27295, npcName = "Hierophant Thayreen", map = 116, x = 31.2, y = 59.5, f = "e" },
					{ t = "accept", quest = 12220, title = "A Dark Influence", npc = 27295, npcName = "Hierophant Thayreen", map = 116, x = 31.2, y = 59.5, f = "e" },
				},
			},
		},
	})
end

