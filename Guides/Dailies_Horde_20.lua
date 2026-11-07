-- TuWoW_Leveling — Guides/Dailies_Horde_20.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-the-storm-peaks-the-storm-peaks-full-zone-quest-path-includes-pre-quests-part-2",
		pack = "guides",
		title = "The Storm Peaks Full Zone Quest Path (Includes Pre-Quests) (Parte 2/3)",
		category = "Dailies",
		folder = "The Storm Peaks",
		faction = "Horde",
		next = "zygor/dailies/h-dai-the-storm-peaks-the-storm-peaks-full-zone-quest-path-includes-pre-quests-part-3",
		author = "TuWoW & Zygor",
		zone = 120,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", target = "Seething Revenants", count = 1, map = 120, x = 75.4, y = 63.5, f = "e" },
					{ t = "collect", quest = 12922, itemName = "Furious Spark", count = 10, oi = 1, map = 120, x = 75.4, y = 63.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12915, target = "Fjorn", count = 1, oi = 1, map = 120, x = 77.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12922, title = "The Refiner's Fire", map = 120, x = 77.2, y = 62.9, f = "e" },
					{ t = "accept", quest = 12956, title = "A Spark of Hope", map = 120, x = 77.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12956, title = "A Spark of Hope", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
					{ t = "turnin", quest = 12915, title = "Mending Fences", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
					{ t = "accept", quest = 12924, title = "Forging an Alliance", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Dun Niffelem", text = "Dun Niffelem", map = 120, x = 62.6, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12966, title = "You Can't Miss Him", npc = 30105, npcName = "King Jokkum", map = 120, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12966, title = "You Can't Miss Him", npc = 30099, npcName = "Njormeld", map = 120, x = 75.4, y = 63.6, f = "e" },
					{ t = "accept", quest = 12967, title = "Battling the Elements", npc = 30099, npcName = "Njormeld", map = 120, x = 75.4, y = 63.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 75.7, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12967, target = "Seething Revenants", count = 10, oi = 1, map = 120, x = 76.7, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12967, title = "Battling the Elements", npc = 30099, npcName = "Njormeld", map = 120, x = 75.4, y = 63.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12924, title = "Forging an Alliance", npc = 30127, npcName = "Njormeld", map = 120, x = 63.2, y = 63.2, f = "e" },
					{ t = "accept", quest = 13009, title = "A New Beginning", npc = 30127, npcName = "Njormeld", map = 120, x = 63.2, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12981, title = "Hot and Cold", map = 120, x = 63.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12975, title = "In Memoriam", npc = 30105, npcName = "King Jokkum", map = 120, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Brittle Revenants", count = 1, map = 120, x = 69.7, y = 60.2, f = "e" },
					{ t = "collect", quest = 12981, item = 42246, itemName = "Essence of Ice", count = 6, map = 120, x = 69.7, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12981, itemName = "Frozen Iron Scrap", count = 6, oi = 1, map = 120, x = 75.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12975, itemName = "Horn Fragment", count = 8, oi = 1, map = 120, x = 72.1, y = 49.4, f = "e" },
					{ t = "collect", quest = 12975, item = 42780, itemName = "Relic of Ulduar", count = 10, map = 120, x = 72.1, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12975, title = "In Memoriam", npc = 30105, npcName = "King Jokkum", map = 120, x = 65.4, y = 60.2, f = "e" },
					{ t = "accept", quest = 12976, title = "A Monument to the Fallen", npc = 30105, npcName = "King Jokkum", map = 120, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12976, title = "A Monument to the Fallen", npc = 30127, npcName = "Njormeld", map = 120, x = 63.2, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12981, title = "Hot and Cold", map = 120, x = 63.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12985, title = "Forging a Head", npc = 30127, npcName = "Njormeld", map = 120, x = 63.2, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12977, title = "Blowing Hodir's Horn", map = 120, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13011, title = "Jormuttar is Soo Fat...", npc = 30105, npcName = "King Jokkum", map = 120, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "the Stormforged Ambushers that spawn", count = 1, map = 120, x = 69.7, y = 58.9, f = "e" },
					{ t = "collect", quest = 12985, itemName = "Stormforged Eye", count = 8, oi = 1, map = 120, x = 69.7, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Niffelem Forefathers and Restless Frostborn Ghosts", count = 1, map = 120, x = 72.1, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12985, title = "Forging a Head", npc = 30127, npcName = "Njormeld", map = 120, x = 63.2, y = 63.2, f = "e" },
					{ t = "accept", quest = 12987, title = "Mounting Hodir's Helm", npc = 30127, npcName = "Njormeld", map = 120, x = 63.2, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12977, title = "Blowing Hodir's Horn", map = 120, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 64.3, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12987, title = "Mounting Hodir's Helm", npc = 30127, npcName = "Njormeld", map = 120, x = 63.2, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13006, title = "Polishing the Helm", map = 120, x = 64.2, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Viscous Oils inside this cave", count = 1, map = 120, x = 55.6, y = 63.4, f = "e" },
					{ t = "collect", quest = 13006, itemName = "Viscous Oil", count = 5, oi = 1, map = 120, x = 55.6, y = 63.4, f = "e" },
					{ t = "collect", quest = 13011, item = 42733, itemName = "Icemaw Bear Flank", count = 1, map = 120, x = 55.6, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13011, target = "Jormuttar", count = 1, oi = 1, map = 120, x = 54.7, y = 60.8, f = "e" },
				},
			},
			{
				note = "Go outside and go to 33.4,58.0",
				goals = {
					{ t = "turnin", quest = 13009, title = "A New Beginning", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
					{ t = "accept", quest = 13050, title = "Veranus", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13050, itemName = "Small Proto-Drake Egg", count = 5, oi = 1, map = 120, x = 43.7, y = 67.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13050, title = "Veranus", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
					{ t = "accept", quest = 13051, title = "Territorial Trespass", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 38.7, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13051, title = "Territorial Trespass", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
					{ t = "accept", quest = 13010, title = "Krolmir, Hammer of Storms", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13006, title = "Polishing the Helm", map = 120, x = 64.2, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13011, title = "Jormuttar is Soo Fat...", npc = 30105, npcName = "King Jokkum", map = 120, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30105, npcName = "King Jokkum", map = 120, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13010, title = "Krolmir, Hammer of Storms", npc = 30390, npcName = "Thorim", map = 120, x = 71.4, y = 48.8, f = "e" },
					{ t = "accept", quest = 13057, title = "The Terrace of the Makers", npc = 30390, npcName = "Thorim", map = 120, x = 71.4, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Camp Tunka'lo", text = "Camp Tunka'lo", map = 120, x = 65.4, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13034, title = "The Witness and the Hero", npc = 30381, npcName = "Xarantaur", map = 120, x = 65.7, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 65.8, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 66.8, y = 50.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 67.5, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13034, title = "The Witness and the Hero", npc = 30381, npcName = "Xarantaur", map = 120, x = 65.7, y = 51.4, f = "e" },
					{ t = "accept", quest = 13037, title = "Memories of Stormhoof", npc = 30381, npcName = "Xarantaur", map = 120, x = 65.7, y = 51.4, f = "e" },
				},
			},
			{
				note = "The entrance to the cave starts here ,0.5 |c",
				goals = {
					{ t = "goto", map = 120, x = 62.5, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30395, npcName = "Chieftain Swiftspear", map = 120, x = 61.2, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13038, title = "Distortions in Time", npc = 30395, npcName = "Chieftain Swiftspear", map = 120, x = 61.2, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 61.7, y = 39.8, f = "e" },
				},
			},
			{
				note = "Leave the cave ,0.5 |c",
				goals = {
					{ t = "goto", map = 120, x = 62.5, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13037, title = "Memories of Stormhoof", npc = 30381, npcName = "Xarantaur", map = 120, x = 65.7, y = 51.4, f = "e" },
					{ t = "turnin", quest = 13038, title = "Distortions in Time", npc = 30381, npcName = "Xarantaur", map = 120, x = 65.7, y = 51.4, f = "e" },
					{ t = "accept", quest = 13048, title = "Where Time Went Wrong", npc = 30381, npcName = "Xarantaur", map = 120, x = 65.7, y = 51.4, f = "e" },
					{ t = "accept", quest = 13049, title = "The Hero's Arms", npc = 30381, npcName = "Xarantaur", map = 120, x = 65.7, y = 51.4, f = "e" },
				},
			},
			{
				note = "The entrance to the cave starts here ,0.5 |c",
				goals = {
					{ t = "goto", map = 120, x = 67.0, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13049, itemName = "Stormhoof's Spear", count = 1, oi = 1, map = 120, x = 67.2, y = 44.3, f = "e" },
					{ t = "collect", quest = 13049, itemName = "Stormhoof's Mail", count = 1, oi = 2, map = 120, x = 67.2, y = 44.3, f = "e" },
				},
			},
			{
				note = "Leave the cave ,0.5 |c",
				goals = {
					{ t = "goto", map = 120, x = 67.0, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13048, title = "Where Time Went Wrong", npc = 30381, npcName = "Xarantaur", map = 120, x = 65.7, y = 51.4, f = "e" },
					{ t = "turnin", quest = 13049, title = "The Hero's Arms", npc = 30381, npcName = "Xarantaur", map = 120, x = 65.7, y = 51.4, f = "e" },
					{ t = "accept", quest = 13058, title = "Changing the Wind's Course", npc = 30381, npcName = "Xarantaur", map = 120, x = 65.7, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 64.9, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 64.5, y = 47.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13058, title = "Changing the Wind's Course", npc = 30381, npcName = "Xarantaur", map = 120, x = 65.7, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13057, title = "The Terrace of the Makers", npc = 30295, npcName = "Thorim", map = 120, x = 56.2, y = 51.3, f = "e" },
					{ t = "accept", quest = 13005, title = "The Earthen Oath", npc = 30295, npcName = "Thorim", map = 120, x = 56.2, y = 51.3, f = "e" },
					{ t = "accept", quest = 13035, title = "Loken's Lackeys", npc = 30295, npcName = "Thorim", map = 120, x = 56.2, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13005, target = "Iron Sentinel", count = 7, oi = 1, map = 120, x = 57.3, y = 46.7, f = "e" },
					{ t = "kill", quest = 13005, target = "Iron Dwarf Assailant", count = 20, oi = 2, map = 120, x = 57.3, y = 46.7, f = "e" },
				},
			},
			{
				note = "Fly up into the building to 55.3,43.3",
				goals = {
					{ t = "kill", quest = 13035, target = "Eisenfaust", count = 1, oi = 1, map = 120, x = 55.3, y = 43.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13035, target = "Halefnir the Windborn", count = 1, oi = 2, map = 120, x = 48.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13035, target = "Duronn the Runewrought", count = 1, oi = 3, map = 120, x = 45.0, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13005, title = "The Earthen Oath", npc = 30295, npcName = "Thorim", map = 120, x = 56.3, y = 51.4, f = "e" },
					{ t = "turnin", quest = 13035, title = "Loken's Lackeys", npc = 30295, npcName = "Thorim", map = 120, x = 56.3, y = 51.4, f = "e" },
					{ t = "accept", quest = 13047, title = "The Reckoning", npc = 30295, npcName = "Thorim", map = 120, x = 56.3, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30399, npcName = "Thorim", map = 120, x = 35.9, y = 31.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Grom'arsh Crash-Site", text = "Grom'arsh Crash-Site", map = 120, x = 36.2, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13054, title = "The Missing Tracker", npc = 30247, npcName = "Bloodguard Lorga", map = 120, x = 36.4, y = 49.1, f = "e" },
					{ t = "accept", quest = 13000, title = "Emergency Measures", npc = 30247, npcName = "Bloodguard Lorga", map = 120, x = 36.4, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12882, title = "Ancient Relics", npc = 30472, npcName = "Olut Alegut", map = 120, x = 37.0, y = 49.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12895, title = "The Missing Bronzebeard", npc = 29651, npcName = "Boktar Bloodfury", map = 120, x = 37.3, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Grom'arsh Crash-Site", text = "Grom'arsh Crash-Site", f = "e" },
				},
			},
			{
				note = "Go inside the cave to 48.5,54.3",
				goals = {
					{ t = "turnin", quest = 13054, title = "The Missing Tracker", npc = 30469, npcName = "Tracker Val'zij", map = 120, x = 48.5, y = 54.3, f = "e" },
					{ t = "accept", quest = 13055, title = "Cave Medicine", npc = 30469, npcName = "Tracker Val'zij", map = 120, x = 48.5, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13055, item = 42926, itemName = "Cave Mushroom", count = 8, map = 120, x = 48.3, y = 53.8, f = "e" },
					{ t = "kill", target = "Infesting Jormungars", count = 1, map = 120, x = 48.3, y = 53.8, f = "e" },
					{ t = "collect", quest = 13055, item = 42927, itemName = "Toxin Gland", count = 1, map = 120, x = 48.3, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13055, title = "Cave Medicine", npc = 30469, npcName = "Tracker Val'zij", map = 120, x = 48.5, y = 54.3, f = "e" },
					{ t = "accept", quest = 13056, title = "There's Always Time for Revenge", npc = 30469, npcName = "Tracker Val'zij", map = 120, x = 48.5, y = 54.3, f = "e" },
				},
			},
			{
				note = "Go deeper into the cave to 48.2,48.1",
				goals = {
					{ t = "collect", quest = 13056, item = 42510, itemName = "Worg Fur", count = 6, map = 120, x = 48.2, y = 48.1, f = "e" },
					{ t = "kill", quest = 13056, target = "Gimorak", count = 1, oi = 1, map = 120, x = 48.2, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13056, title = "There's Always Time for Revenge", npc = 30469, npcName = "Tracker Val'zij", map = 120, x = 48.5, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13047, title = "The Reckoning", npc = 30105, npcName = "King Jokkum", map = 120, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12895, item = 40947, itemName = "Burlap-Wrapped Note", count = 1, map = 120, x = 36.1, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13000, title = "Emergency Measures", npc = 30247, npcName = "Bloodguard Lorga", map = 120, x = 36.4, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12895, title = "The Missing Bronzebeard", npc = 29651, npcName = "Boktar Bloodfury", map = 120, x = 37.3, y = 49.7, f = "e" },
					{ t = "accept", quest = 12909, title = "The Nose Knows", npc = 29651, npcName = "Boktar Bloodfury", map = 120, x = 37.3, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12909, title = "The Nose Knows", npc = 29855, npcName = "Khaliisi", map = 120, x = 40.8, y = 51.2, f = "e" },
					{ t = "accept", quest = 12910, title = "Sniffing Out the Perpetrator", npc = 29855, npcName = "Khaliisi", map = 120, x = 40.8, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12910, target = "Tracker Thulin", count = 1, oi = 1, map = 120, x = 48.5, y = 60.8, f = "e" },
					{ t = "collect", quest = 12920, item = 40971, itemName = "Brann's Communicator", count = 1, map = 120, x = 48.5, y = 60.8, f = "e" },
				},
			},
			{
				note = "Use Brann's Communicator in your bags|use Brann's Communicator##40971",
				goals = {
					{ t = "use", item = 40971, itemName = "Brann's Communicator", f = "e" },
					{ t = "turnin", quest = 12910, title = "Sniffing Out the Perpetrator", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
					{ t = "accept", quest = 12913, title = "Speak Orcish, Man!", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12913, title = "Speak Orcish, Man!", npc = 29937, npcName = "Moteha Windborn", map = 120, x = 37.3, y = 49.7, f = "e" },
					{ t = "accept", quest = 12917, title = "Speaking with the Wind's Voice", npc = 29937, npcName = "Moteha Windborn", map = 120, x = 37.3, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12917, item = 41514, itemName = "Voice of the Wind", count = 5, map = 120, x = 28.5, y = 48.5, f = "e" },
					{ t = "collect", quest = 12882, item = 42780, itemName = "Relic of Ulduar", count = 10, map = 120, x = 28.5, y = 48.5, f = "e" },
				},
			},
		},
	})
end

