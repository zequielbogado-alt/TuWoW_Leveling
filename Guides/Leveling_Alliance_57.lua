-- TuWoW_Leveling — Guides/Leveling_Alliance_57.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-78-80-part-3",
		pack = "guides",
		title = "Northrend (78-80) (Parte 3/4)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-78-80-part-4",
		author = "TuWoW & Zygor",
		minLevel = 78,
		maxLevel = 80,
		zone = 1449,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", quest = 12915, target = "Fjorn", count = 1, oi = 1, map = 1449, x = 77.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12922, title = "The Refiner's Fire", map = 1449, x = 77.2, y = 62.9, f = "e" },
					{ t = "accept", quest = 12956, title = "A Spark of Hope", map = 1449, x = 77.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12956, title = "A Spark of Hope", npc = 29445, npcName = "Thorim", map = 1449, x = 33.4, y = 58.0, f = "e" },
					{ t = "turnin", quest = 12915, title = "Mending Fences", npc = 29445, npcName = "Thorim", map = 1449, x = 33.4, y = 58.0, f = "e" },
					{ t = "accept", quest = 12924, title = "Forging an Alliance", npc = 29445, npcName = "Thorim", map = 1449, x = 33.4, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Dun Niffelem", map = 1449, x = 62.6, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12966, title = "You Can't Miss Him", npc = 30105, npcName = "King Jokkum", map = 1449, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12966, title = "You Can't Miss Him", npc = 30099, npcName = "Njormeld", map = 1449, x = 75.4, y = 63.6, f = "e" },
					{ t = "accept", quest = 12967, title = "Battling the Elements", npc = 30099, npcName = "Njormeld", map = 1449, x = 75.4, y = 63.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 75.7, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12967, target = "Seething Revenant", count = 10, oi = 1, map = 1449, x = 76.7, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12967, title = "Battling the Elements", npc = 30099, npcName = "Njormeld", map = 1449, x = 75.4, y = 63.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12924, title = "Forging an Alliance", npc = 30127, npcName = "Njormeld", map = 1449, x = 63.2, y = 63.2, f = "e" },
					{ t = "accept", quest = 13009, title = "A New Beginning", npc = 30127, npcName = "Njormeld", map = 1449, x = 63.2, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12981, title = "Hot and Cold", map = 1449, x = 63.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12975, title = "In Memoriam", npc = 30105, npcName = "King Jokkum", map = 1449, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Brittle Revenants", count = 1, map = 1449, x = 69.7, y = 60.2, f = "e" },
					{ t = "collect", item = 42246, itemName = "Essence of Ice", count = 6, map = 1449, x = 69.7, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12981, itemName = "Frozen Iron Scrap", count = 6, oi = 1, map = 1449, x = 75.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12975, itemName = "Horn Fragment", count = 8, oi = 1, map = 1449, x = 72.1, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12975, title = "In Memoriam", npc = 30105, npcName = "King Jokkum", map = 1449, x = 65.4, y = 60.2, f = "e" },
					{ t = "accept", quest = 12976, title = "A Monument to the Fallen", npc = 30105, npcName = "King Jokkum", map = 1449, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12976, title = "A Monument to the Fallen", npc = 30127, npcName = "Njormeld", map = 1449, x = 63.2, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12981, title = "Hot and Cold", map = 1449, x = 63.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12977, title = "Blowing Hodir's Horn", map = 1449, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Niffelem Forefathers and Restless Frostborn Ghosts", count = 1, map = 1449, x = 72.1, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12977, title = "Blowing Hodir's Horn", map = 1449, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12985, title = "Forging a Head", npc = 30127, npcName = "Njormeld", map = 1449, x = 63.2, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13011, title = "Jormuttar is Soo Fat...", npc = 30105, npcName = "King Jokkum", map = 1449, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "the Stormforged Ambushers that spawn", count = 1, map = 1449, x = 69.7, y = 58.9, f = "e" },
					{ t = "collect", quest = 12985, itemName = "Stormforged Eye", count = 8, oi = 1, map = 1449, x = 69.7, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12985, title = "Forging a Head", npc = 30127, npcName = "Njormeld", map = 1449, x = 63.2, y = 63.2, f = "e" },
					{ t = "accept", quest = 12987, title = "Mounting Hodir's Helm", npc = 30127, npcName = "Njormeld", map = 1449, x = 63.2, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 64.3, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12987, title = "Mounting Hodir's Helm", npc = 30127, npcName = "Njormeld", map = 1449, x = 63.2, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13006, title = "Polishing the Helm", map = 1449, x = 64.2, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Viscous Oils inside this cave", count = 1, map = 1449, x = 55.6, y = 63.4, f = "e" },
					{ t = "collect", quest = 13006, itemName = "Viscous Oil", count = 5, oi = 1, map = 1449, x = 55.6, y = 63.4, f = "e" },
					{ t = "collect", quest = 13011, item = 42733, itemName = "Icemaw Bear Flank", count = 1, map = 1449, x = 55.6, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13011, target = "Jormuttar", count = 1, oi = 1, map = 1449, x = 54.7, y = 60.8, f = "e" },
				},
			},
			{
				note = "Go outside and go to 33.4,58",
				goals = {
					{ t = "turnin", quest = 13009, title = "A New Beginning", npc = 29445, npcName = "Thorim", map = 1449, x = 33.4, y = 58.0, f = "e" },
					{ t = "accept", quest = 13050, title = "Veranus", npc = 29445, npcName = "Thorim", map = 1449, x = 33.4, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13050, itemName = "Small Proto-Drake Egg", count = 5, oi = 1, map = 1449, x = 43.7, y = 67.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13050, title = "Veranus", npc = 29445, npcName = "Thorim", map = 1449, x = 33.4, y = 58.0, f = "e" },
					{ t = "accept", quest = 13051, title = "Territorial Trespass", npc = 29445, npcName = "Thorim", map = 1449, x = 33.4, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 38.7, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13051, title = "Territorial Trespass", npc = 29445, npcName = "Thorim", map = 1449, x = 33.4, y = 58.0, f = "e" },
					{ t = "accept", quest = 13010, title = "Krolmir, Hammer of Storms", npc = 29445, npcName = "Thorim", map = 1449, x = 33.4, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13006, title = "Polishing the Helm", map = 1449, x = 64.2, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13011, title = "Jormuttar is Soo Fat...", npc = 30105, npcName = "King Jokkum", map = 1449, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30105, npcName = "King Jokkum", map = 1449, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13010, title = "Krolmir, Hammer of Storms", npc = 30390, npcName = "Thorim", map = 1449, x = 71.4, y = 48.8, f = "e" },
					{ t = "accept", quest = 13057, title = "The Terrace of the Makers", npc = 30390, npcName = "Thorim", map = 1449, x = 71.4, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13057, title = "The Terrace of the Makers", npc = 30295, npcName = "Thorim", map = 1449, x = 56.3, y = 51.4, f = "e" },
					{ t = "accept", quest = 13005, title = "The Earthen Oath", npc = 30295, npcName = "Thorim", map = 1449, x = 56.3, y = 51.4, f = "e" },
					{ t = "accept", quest = 13035, title = "Loken's Lackeys", npc = 30295, npcName = "Thorim", map = 1449, x = 56.3, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13005, target = "Iron Sentinel", count = 7, oi = 1, map = 1449, x = 57.3, y = 46.7, f = "e" },
					{ t = "kill", quest = 13005, target = "Iron Dwarf Assailant", count = 20, oi = 2, map = 1449, x = 57.3, y = 46.7, f = "e" },
				},
			},
			{
				note = "Fly up into the building to 55.3,43.3",
				goals = {
					{ t = "kill", quest = 13035, target = "Eisenfaust", count = 1, oi = 1, map = 1449, x = 55.3, y = 43.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13035, target = "Halefnir the Windborn", count = 1, oi = 2, map = 1449, x = 48.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13035, target = "Duronn the Runewrought", count = 1, oi = 3, map = 1449, x = 45.0, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13005, title = "The Earthen Oath", npc = 30295, npcName = "Thorim", map = 1449, x = 56.3, y = 51.4, f = "e" },
					{ t = "turnin", quest = 13035, title = "Loken's Lackeys", npc = 30295, npcName = "Thorim", map = 1449, x = 56.3, y = 51.4, f = "e" },
					{ t = "accept", quest = 13047, title = "The Reckoning", npc = 30295, npcName = "Thorim", map = 1449, x = 56.3, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30399, npcName = "Thorim", map = 1449, x = 35.9, y = 31.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13047, title = "The Reckoning", npc = 30105, npcName = "King Jokkum", map = 1449, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12862, title = "When All Else Fails", npc = 29428, npcName = "Ricket", map = 1449, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 29428, npcName = "Ricket", map = 1449, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Frosthold", map = 1449, x = 29.5, y = 74.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12854, title = "On Brann's Trail", npc = 29650, npcName = "Archaeologist Andorin", map = 1449, x = 29.5, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12863, title = "Offering Thanks", npc = 29743, npcName = "Lagnus", map = 1449, x = 29.4, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12862, title = "When All Else Fails", npc = 29744, npcName = "Rork Sharpchin", map = 1449, x = 28.8, y = 74.1, f = "e" },
					{ t = "accept", quest = 12870, title = "Ancient Relics", npc = 29744, npcName = "Rork Sharpchin", map = 1449, x = 28.8, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Frosthold", map = 1449, x = 28.7, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12863, title = "Offering Thanks", npc = 29727, npcName = "Glorthal Stiffbeard", map = 1449, x = 29.2, y = 74.9, f = "e" },
					{ t = "accept", quest = 12864, title = "Missing Scouts", npc = 29727, npcName = "Glorthal Stiffbeard", map = 1449, x = 29.2, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12865, title = "Loyal Companions", npc = 29732, npcName = "Fjorlin Frostbrow", map = 1449, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 29811, npcName = "the Frostborn Scout", map = 1449, x = 36.4, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Vrykuls", count = 1, map = 1449, x = 46.5, y = 68.3, f = "e" },
				},
			},
			{
				note = "Go outside to 44.5,60.4",
				goals = {
					{ t = "kill", target = "Ice Steppe Rhinos", count = 1, map = 1449, x = 44.5, y = 60.4, f = "e" },
					{ t = "collect", quest = 12865, item = 41340, itemName = "Fresh Ice Rhino Meat", count = 8, map = 1449, x = 44.5, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12854, itemName = "Burlap-Wrapped Note", count = 1, oi = 1, map = 1449, x = 36.1, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 33.2, y = 73.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12854, title = "On Brann's Trail", npc = 29650, npcName = "Archaeologist Andorin", map = 1449, x = 29.5, y = 74.1, f = "e" },
					{ t = "accept", quest = 12855, title = "Sniffing Out the Perpetrator", npc = 29650, npcName = "Archaeologist Andorin", map = 1449, x = 29.5, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12870, title = "Ancient Relics", npc = 29744, npcName = "Rork Sharpchin", map = 1449, x = 28.8, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12864, title = "Missing Scouts", npc = 29727, npcName = "Glorthal Stiffbeard", map = 1449, x = 29.2, y = 74.9, f = "e" },
					{ t = "accept", quest = 12866, title = "Stemming the Aggressors", npc = 29727, npcName = "Glorthal Stiffbeard", map = 1449, x = 29.2, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12865, title = "Loyal Companions", npc = 29732, npcName = "Fjorlin Frostbrow", map = 1449, x = 29.8, y = 75.7, f = "e" },
					{ t = "accept", quest = 12867, title = "Baby Stealers", npc = 29732, npcName = "Fjorlin Frostbrow", map = 1449, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12867, itemName = "Stormcrest Eagle Egg", count = 15, oi = 1, map = 1449, x = 33.0, y = 66.8, f = "e" },
					{ t = "kill", quest = 12866, target = "Frostfeather Screecher", count = 8, oi = 1, map = 1449, x = 33.0, y = 66.8, f = "e" },
					{ t = "kill", quest = 12866, target = "Frostfeather Witch", count = 8, oi = 2, map = 1449, x = 33.0, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 36.4, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12855, target = "Tracker Thulin", count = 1, oi = 2, map = 1449, x = 48.5, y = 60.8, f = "e" },
					{ t = "collect", quest = 12871, item = 40971, itemName = "Brann's Communicator", count = 1, map = 1449, x = 48.5, y = 60.8, f = "e" },
				},
			},
			{
				note = "Use Brann's Communicator in your bags|use Brann's Communicator##40971",
				goals = {
					{ t = "turnin", quest = 12855, title = "Sniffing Out the Perpetrator", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
					{ t = "accept", quest = 12858, title = "Pieces to the Puzzle", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Library Guardians", count = 1, map = 1449, x = 37.6, y = 43.5, f = "e" },
					{ t = "collect", item = 41130, itemName = "Inventor's Disk Fragment", count = 6, map = 1449, x = 37.6, y = 43.5, f = "e" },
					{ t = "collect", quest = 12858, itemName = "The Inventor's Disk", count = 1, oi = 1, map = 1449, x = 37.6, y = 43.5, f = "e" },
				},
			},
			{
				note = "Use Brann's Communicator in your bags|use Brann's Communicator##40971",
				goals = {
					{ t = "turnin", quest = 12858, title = "Pieces to the Puzzle", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
					{ t = "accept", quest = 12860, title = "Data Mining", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 38.5, y = 44.2, f = "e" },
				},
			},
			{
				note = "Use Brann's Communicator in your bags|use Brann's Communicator##40971",
				goals = {
					{ t = "turnin", quest = 12860, title = "Data Mining", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
					{ t = "accept", quest = 13415, title = "The Library Console", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13415, title = "The Library Console", map = 1449, x = 37.4, y = 46.8, f = "e" },
					{ t = "accept", quest = 12872, title = "Norgannon's Shell", map = 1449, x = 37.4, y = 46.8, f = "e" },
				},
			},
			{
				note = "Click the Charged Disk in your bags|use Charged Disk##44704",
				goals = {
					{ t = "kill", target = "Archivist Mechaton that spawns", count = 1, f = "e" },
					{ t = "collect", quest = 12872, itemName = "Norgannon's Shell", count = 1, oi = 1, f = "e" },
				},
			},
			{
				note = "Use Brann's Communicator in your bags|use Brann's Communicator##40971",
				goals = {
					{ t = "turnin", quest = 12872, title = "Norgannon's Shell", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
					{ t = "accept", quest = 12871, title = "Aid from the Explorers' League", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
					{ t = "accept", quest = 12885, title = "The Exiles of Ulduar", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Bouldercrag's Refuge", map = 1449, x = 30.6, y = 36.3, f = "e" },
				},
			},
			{
				note = "Go inside the building to 31.4,38.1",
				goals = {
					{ t = "turnin", quest = 12885, title = "The Exiles of Ulduar", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 1449, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 12930, title = "Rare Earth", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 1449, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12871, title = "Aid from the Explorers' League", npc = 29743, npcName = "Lagnus", map = 1449, x = 29.4, y = 73.8, f = "e" },
					{ t = "accept", quest = 12873, title = "The Frostborn King", npc = 29743, npcName = "Lagnus", map = 1449, x = 29.4, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12866, title = "Stemming the Aggressors", npc = 29727, npcName = "Glorthal Stiffbeard", map = 1449, x = 29.2, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12867, title = "Baby Stealers", npc = 29732, npcName = "Fjorlin Frostbrow", map = 1449, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12873, title = "The Frostborn King", npc = 29593, npcName = "Yorg Stormheart", map = 1449, x = 30.31, y = 74.8, f = "e" },
					{ t = "accept", quest = 12874, title = "Fervor of the Frostborn", npc = 29593, npcName = "Yorg Stormheart", map = 1449, x = 30.31, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 29732, npcName = "Fjorlin Frostbrow", map = 1449, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12874, item = 42624, itemName = "Battered Storm Hammer", count = 1, map = 1449, x = 53.6, y = 35.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12874, target = "The Iron Watcher", count = 1, oi = 1, map = 1449, x = 53.5, y = 37.9, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-78-80-part-4",
		pack = "guides",
		title = "Northrend (78-80) (Parte 4/4)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 78,
		maxLevel = 80,
		zone = 1449,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 12874, title = "Fervor of the Frostborn", npc = 29593, npcName = "Yorg Stormheart", map = 1449, x = 30.31, y = 74.8, f = "e" },
					{ t = "accept", quest = 12875, title = "An Experienced Guide", npc = 29593, npcName = "Yorg Stormheart", map = 1449, x = 30.31, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12876, title = "Unwelcome Guests", npc = 29732, npcName = "Fjorlin Frostbrow", map = 1449, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 27.0, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Stormforged mobs inside this cave", count = 1, map = 1449, x = 26.3, y = 66.7, f = "e" },
					{ t = "kill", quest = 12876, target = "Stormforged Invaders", count = 10, oi = 1, map = 1449, x = 26.3, y = 66.7, f = "e" },
					{ t = "collect", quest = 12930, itemName = "Frostweave Cloth", count = 5, oi = 2, map = 1449, x = 26.3, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12875, title = "An Experienced Guide", npc = 29751, npcName = "Drom Frostgrip", map = 1449, x = 25.2, y = 68.5, f = "e" },
					{ t = "accept", quest = 12877, title = "The Lonesome Watcher", npc = 29751, npcName = "Drom Frostgrip", map = 1449, x = 25.2, y = 68.5, f = "e" },
				},
			},
			{
				note = "Go outside to 27.1,67.3",
				goals = {
					{ t = "collect", quest = 12877, itemName = "Frostgrip's Signet Ring", count = 1, oi = 1, map = 1449, x = 27.1, y = 67.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12877, title = "The Lonesome Watcher", npc = 30052, npcName = "Creteus", map = 1449, x = 39.6, y = 59.8, f = "e" },
					{ t = "accept", quest = 12986, title = "Fate of the Titans", npc = 30052, npcName = "Creteus", map = 1449, x = 39.6, y = 59.8, f = "e" },
				},
			},
			{
				note = "Fly to the top of this temple to 52.6,56.9",
				goals = {
					{ t = "goto", map = 1449, x = 52.6, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 64.3, y = 46.7, f = "e" },
				},
			},
			{
				note = "Fly to the top of this temple to 53.5,42.3",
				goals = {
					{ t = "goto", map = 1449, x = 53.5, y = 42.3, f = "e" },
				},
			},
			{
				note = "Fly to the top of this temple to 45.6,49.2",
				goals = {
					{ t = "goto", map = 1449, x = 45.6, y = 49.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12986, title = "Fate of the Titans", npc = 30052, npcName = "Creteus", map = 1449, x = 39.6, y = 59.8, f = "e" },
					{ t = "accept", quest = 12878, title = "The Hidden Relic", npc = 30052, npcName = "Creteus", map = 1449, x = 39.6, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 41.5, y = 62.1, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 44.5,64.5",
				goals = {
					{ t = "turnin", quest = 12878, title = "The Hidden Relic", map = 1449, x = 44.5, y = 64.5, f = "e" },
					{ t = "accept", quest = 12879, title = "Fury of the Frostborn King", map = 1449, x = 44.5, y = 64.5, f = "e" },
				},
			},
			{
				note = "Go outside the cave to 38.2,61.7",
				goals = {
					{ t = "turnin", quest = 12879, title = "Fury of the Frostborn King", npc = 30082, npcName = "Creteus", map = 1449, x = 38.2, y = 61.7, f = "e" },
					{ t = "accept", quest = 12880, title = "The Master Explorer", npc = 30082, npcName = "Creteus", map = 1449, x = 38.2, y = 61.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12880, title = "The Master Explorer", npc = 30382, npcName = "Brann Bronzebeard", map = 1449, x = 39.6, y = 56.4, f = "e" },
					{ t = "accept", quest = 12973, title = "The Brothers Bronzebeard", npc = 30382, npcName = "Brann Bronzebeard", map = 1449, x = 39.6, y = 56.4, f = "e" },
				},
			},
			{
				note = "Click Brann's Flying Machine next to you",
				goals = {
					{ t = "kill", target = "the dwarves that jump on the plane as you fly", count = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12973, title = "The Brothers Bronzebeard", npc = 30401, npcName = "Velog Icebellow", map = 1449, x = 30.3, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12876, title = "Unwelcome Guests", npc = 29732, npcName = "Fjorlin Frostbrow", map = 1449, x = 29.8, y = 75.7, f = "e" },
					{ t = "accept", quest = 12869, title = "Pushed Too Far", npc = 29732, npcName = "Fjorlin Frostbrow", map = 1449, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12869, target = "Stormpeak Wyrm", count = 16, oi = 1, map = 1449, x = 44.6, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12869, title = "Pushed Too Far", npc = 29732, npcName = "Fjorlin Frostbrow", map = 1449, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12930, itemName = "Enchanted Earth", count = 7, oi = 1, map = 1449, x = 28.3, y = 29.4, f = "e" },
				},
			},
			{
				note = "Go inside the building to 31.4,38.1",
				goals = {
					{ t = "turnin", quest = 12930, title = "Rare Earth", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 1449, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 12931, title = "Fighting Back", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 1449, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 12937, title = "Relief for the Fallen", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 1449, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Bouldercrag's Refuge", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Stormforged Raiders and Stormforged Reavers", count = 1, map = 1449, x = 28.1, y = 36.7, f = "e" },
					{ t = "kill", quest = 12931, target = "Stormforged Attacker", count = 10, oi = 1, map = 1449, x = 28.1, y = 36.7, f = "e" },
				},
			},
			{
				note = "Go inside the building to 31.4,38.1",
				goals = {
					{ t = "turnin", quest = 12931, title = "Fighting Back", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 1449, x = 31.4, y = 38.1, f = "e" },
					{ t = "turnin", quest = 12937, title = "Relief for the Fallen", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 1449, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 12957, title = "Slaves of the Stormforged", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 1449, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 12964, title = "The Dark Ore", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 1449, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				note = "Go inside the mine to 27.5,49.7",
				goals = {
					{ t = "kill", quest = 12957, target = "Stormforged Taskmaster", count = 3, oi = 2, map = 1449, x = 27.5, y = 49.7, f = "e" },
					{ t = "collect", quest = 12964, itemName = "Dark Ore Sample", count = 5, oi = 1, map = 1449, x = 27.5, y = 49.7, f = "e" },
				},
			},
			{
				note = "Go outside and inside the building to 31.4,38.1",
				goals = {
					{ t = "turnin", quest = 12957, title = "Slaves of the Stormforged", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 1449, x = 31.4, y = 38.1, f = "e" },
					{ t = "turnin", quest = 12964, title = "The Dark Ore", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 1449, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 12965, title = "The Gifts of Loken", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 1449, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12978, title = "Facing the Storm", npc = 30152, npcName = "Bruor Ironbane", map = 1449, x = 31.3, y = 38.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 24.0, y = 42.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 26.2, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 24.6, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Stormforged mobs", count = 1, map = 1449, x = 25.0, y = 42.9, f = "e" },
					{ t = "kill", quest = 12978, target = "Nidavelir Stormforged", count = 10, oi = 1, map = 1449, x = 25.0, y = 42.9, f = "e" },
				},
			},
			{
				note = "Go inside the building to 31.4,38.1",
				goals = {
					{ t = "turnin", quest = 12965, title = "The Gifts of Loken", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 1449, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12978, title = "Facing the Storm", npc = 30152, npcName = "Bruor Ironbane", map = 1449, x = 31.3, y = 38.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 80, f = "e" },
				},
			},
		},
	})
end

