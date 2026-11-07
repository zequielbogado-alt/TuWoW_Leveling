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
		zone = 119,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 12833, title = "Overstock", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12925, title = "Aberrations", npc = 30041, npcName = "Thyra Kvinnshal", map = 120, x = 48.4, y = 72.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12942, title = "Off With Their Black Wings", npc = 29997, npcName = "Iva the Vengeful", map = 120, x = 48.4, y = 72.1, f = "e" },
					{ t = "turnin", quest = 12968, title = "Yulda's Folly", npc = 29997, npcName = "Iva the Vengeful", map = 120, x = 48.4, y = 72.1, f = "e" },
					{ t = "turnin", quest = 12953, title = "Valkyrion Must Burn", npc = 29997, npcName = "Iva the Vengeful", map = 120, x = 48.4, y = 72.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12915, target = "Stormforged Iron Giant", count = 5, oi = 2, map = 120, x = 75.8, y = 63.0, f = "e" },
					{ t = "collect", item = 41556, itemName = "Slag Covered Metal", count = 1, map = 120, x = 75.8, y = 63.0, f = "e" },
					{ t = "use", item = 41556, itemName = "Slag Covered Metal", map = 120, x = 75.8, y = 63.0, f = "e" },
					{ t = "accept", quest = 12922, title = "The Refiner's Fire", map = 120, x = 75.8, y = 63.0, f = "e" },
				},
			},
			{
				goals = {
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
					{ t = "fpath", text = "Dun Niffelem", map = 120, x = 62.6, y = 60.9, f = "e" },
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
					{ t = "kill", quest = 12967, target = "Seething Revenant", count = 10, oi = 1, map = 120, x = 76.7, y = 63.4, f = "e" },
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
					{ t = "collect", item = 42246, itemName = "Essence of Ice", count = 6, map = 120, x = 69.7, y = 60.2, f = "e" },
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
					{ t = "accept", quest = 12977, title = "Blowing Hodir's Horn", map = 120, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Niffelem Forefathers and Restless Frostborn Ghosts", count = 1, map = 120, x = 72.1, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12977, title = "Blowing Hodir's Horn", map = 120, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12985, title = "Forging a Head", npc = 30127, npcName = "Njormeld", map = 120, x = 63.2, y = 63.2, f = "e" },
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
					{ t = "turnin", quest = 12985, title = "Forging a Head", npc = 30127, npcName = "Njormeld", map = 120, x = 63.2, y = 63.2, f = "e" },
					{ t = "accept", quest = 12987, title = "Mounting Hodir's Helm", npc = 30127, npcName = "Njormeld", map = 120, x = 63.2, y = 63.2, f = "e" },
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
				note = "Go outside and go to 33.4,58",
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
					{ t = "turnin", quest = 13057, title = "The Terrace of the Makers", npc = 30295, npcName = "Thorim", map = 120, x = 56.3, y = 51.4, f = "e" },
					{ t = "accept", quest = 13005, title = "The Earthen Oath", npc = 30295, npcName = "Thorim", map = 120, x = 56.3, y = 51.4, f = "e" },
					{ t = "accept", quest = 13035, title = "Loken's Lackeys", npc = 30295, npcName = "Thorim", map = 120, x = 56.3, y = 51.4, f = "e" },
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
					{ t = "turnin", quest = 13047, title = "The Reckoning", npc = 30105, npcName = "King Jokkum", map = 120, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12862, title = "When All Else Fails", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Frosthold", map = 120, x = 29.5, y = 74.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12854, title = "On Brann's Trail", npc = 29650, npcName = "Archaeologist Andorin", map = 120, x = 29.5, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12863, title = "Offering Thanks", npc = 29743, npcName = "Lagnus", map = 120, x = 29.4, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12862, title = "When All Else Fails", npc = 29744, npcName = "Rork Sharpchin", map = 120, x = 28.8, y = 74.1, f = "e" },
					{ t = "accept", quest = 12870, title = "Ancient Relics", npc = 29744, npcName = "Rork Sharpchin", map = 120, x = 28.8, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Frosthold", map = 120, x = 28.7, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12863, title = "Offering Thanks", npc = 29727, npcName = "Glorthal Stiffbeard", map = 120, x = 29.2, y = 74.9, f = "e" },
					{ t = "accept", quest = 12864, title = "Missing Scouts", npc = 29727, npcName = "Glorthal Stiffbeard", map = 120, x = 29.2, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12865, title = "Loyal Companions", npc = 29732, npcName = "Fjorlin Frostbrow", map = 120, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 29811, npcName = "the Frostborn Scout", map = 120, x = 36.4, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Vrykuls", count = 1, map = 120, x = 46.5, y = 68.3, f = "e" },
				},
			},
			{
				note = "Go outside to 44.5,60.4",
				goals = {
					{ t = "kill", target = "Ice Steppe Rhinos", count = 1, map = 120, x = 44.5, y = 60.4, f = "e" },
					{ t = "collect", quest = 12865, item = 41340, itemName = "Fresh Ice Rhino Meat", count = 8, map = 120, x = 44.5, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12854, itemName = "Burlap-Wrapped Note", count = 1, oi = 1, map = 120, x = 36.1, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 33.2, y = 73.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12854, title = "On Brann's Trail", npc = 29650, npcName = "Archaeologist Andorin", map = 120, x = 29.5, y = 74.1, f = "e" },
					{ t = "accept", quest = 12855, title = "Sniffing Out the Perpetrator", npc = 29650, npcName = "Archaeologist Andorin", map = 120, x = 29.5, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12870, title = "Ancient Relics", npc = 29744, npcName = "Rork Sharpchin", map = 120, x = 28.8, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12864, title = "Missing Scouts", npc = 29727, npcName = "Glorthal Stiffbeard", map = 120, x = 29.2, y = 74.9, f = "e" },
					{ t = "accept", quest = 12866, title = "Stemming the Aggressors", npc = 29727, npcName = "Glorthal Stiffbeard", map = 120, x = 29.2, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12865, title = "Loyal Companions", npc = 29732, npcName = "Fjorlin Frostbrow", map = 120, x = 29.8, y = 75.7, f = "e" },
					{ t = "accept", quest = 12867, title = "Baby Stealers", npc = 29732, npcName = "Fjorlin Frostbrow", map = 120, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12867, itemName = "Stormcrest Eagle Egg", count = 15, oi = 1, map = 120, x = 33.0, y = 66.8, f = "e" },
					{ t = "kill", quest = 12866, target = "Frostfeather Screecher", count = 8, oi = 1, map = 120, x = 33.0, y = 66.8, f = "e" },
					{ t = "kill", quest = 12866, target = "Frostfeather Witch", count = 8, oi = 2, map = 120, x = 33.0, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 36.4, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12855, target = "Tracker Thulin", count = 1, oi = 2, map = 120, x = 48.5, y = 60.8, f = "e" },
					{ t = "collect", quest = 12871, item = 40971, itemName = "Brann's Communicator", count = 1, map = 120, x = 48.5, y = 60.8, f = "e" },
				},
			},
			{
				note = "Use Brann's Communicator in your bags|use Brann's Communicator##40971",
				goals = {
					{ t = "use", item = 40971, itemName = "Brann's Communicator", f = "e" },
					{ t = "turnin", quest = 12855, title = "Sniffing Out the Perpetrator", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
					{ t = "accept", quest = 12858, title = "Pieces to the Puzzle", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Library Guardians", count = 1, map = 120, x = 37.6, y = 43.5, f = "e" },
					{ t = "collect", item = 41130, itemName = "Inventor's Disk Fragment", count = 6, map = 120, x = 37.6, y = 43.5, f = "e" },
					{ t = "collect", quest = 12858, itemName = "The Inventor's Disk", count = 1, oi = 1, map = 120, x = 37.6, y = 43.5, f = "e" },
				},
			},
			{
				note = "Use Brann's Communicator in your bags|use Brann's Communicator##40971",
				goals = {
					{ t = "use", item = 40971, itemName = "Brann's Communicator", f = "e" },
					{ t = "turnin", quest = 12858, title = "Pieces to the Puzzle", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
					{ t = "accept", quest = 12860, title = "Data Mining", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 38.5, y = 44.2, f = "e" },
				},
			},
			{
				note = "Use Brann's Communicator in your bags|use Brann's Communicator##40971",
				goals = {
					{ t = "use", item = 40971, itemName = "Brann's Communicator", f = "e" },
					{ t = "turnin", quest = 12860, title = "Data Mining", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
					{ t = "accept", quest = 13415, title = "The Library Console", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13415, title = "The Library Console", map = 120, x = 37.4, y = 46.8, f = "e" },
					{ t = "accept", quest = 12872, title = "Norgannon's Shell", map = 120, x = 37.4, y = 46.8, f = "e" },
				},
			},
			{
				note = "Click the Charged Disk in your bags|use Charged Disk##44704",
				goals = {
					{ t = "use", item = 44704, itemName = "Charged Disk", f = "e" },
					{ t = "kill", target = "Archivist Mechaton that spawns", count = 1, f = "e" },
					{ t = "collect", quest = 12872, itemName = "Norgannon's Shell", count = 1, oi = 1, f = "e" },
				},
			},
			{
				note = "Use Brann's Communicator in your bags|use Brann's Communicator##40971",
				goals = {
					{ t = "use", item = 40971, itemName = "Brann's Communicator", f = "e" },
					{ t = "turnin", quest = 12872, title = "Norgannon's Shell", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
					{ t = "accept", quest = 12871, title = "Aid from the Explorers' League", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
					{ t = "accept", quest = 12885, title = "The Exiles of Ulduar", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Bouldercrag's Refuge", map = 120, x = 30.6, y = 36.3, f = "e" },
				},
			},
			{
				note = "Go inside the building to 31.4,38.1",
				goals = {
					{ t = "turnin", quest = 12885, title = "The Exiles of Ulduar", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 12930, title = "Rare Earth", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				note = "Hearth to Frosthold|goto The Storm Peaks,28.7,74.4,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12871, title = "Aid from the Explorers' League", npc = 29743, npcName = "Lagnus", map = 120, x = 29.4, y = 73.8, f = "e" },
					{ t = "accept", quest = 12873, title = "The Frostborn King", npc = 29743, npcName = "Lagnus", map = 120, x = 29.4, y = 73.8, f = "e" },
				},
			},
		},
	})
end

