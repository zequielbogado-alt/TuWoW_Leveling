-- TuWoW_Leveling — Guides/Dailies_Alliance_15.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-home-cities-exalted-reputation-guide",
		pack = "guides",
		title = "Home Cities Exalted Reputation Guide (Parte 1/5)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		next = "zygor/dailies/a-dai-icecrown-home-cities-exalted-reputation-guide-part-2",
		author = "TuWoW & Zygor",
		minLevel = 77,
		zone = 1429,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 783, title = "A Threat Within", npc = 823, npcName = "Deputy Willem", map = 1429, x = 48.1, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 783, title = "A Threat Within", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.9, y = 41.6, f = "e" },
					{ t = "accept", quest = 7, title = "Kobold Camp Cleanup", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.9, y = 41.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5261, title = "Eagan Peltskinner", npc = 823, npcName = "Deputy Willem", map = 1429, x = 48.1, y = 43.6, f = "e" },
					{ t = "accept", quest = 18, title = "Brotherhood of Thieves", npc = 823, npcName = "Deputy Willem", map = 1429, x = 48.1, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5261, title = "Eagan Peltskinner", npc = 196, npcName = "Eagan Peltskinner", map = 1429, x = 48.9, y = 40.2, f = "e" },
					{ t = "accept", quest = 33, title = "Wolves Across the Border", npc = 196, npcName = "Eagan Peltskinner", map = 1429, x = 48.9, y = 40.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 33, itemName = "Diseased Wolf Pelt", count = 8, oi = 1, map = 1429, x = 47.4, y = 39.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 7, target = "Kobold Vermin", count = 8, oi = 1, map = 1429, x = 47.9, y = 37.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 33, title = "Wolves Across the Border", npc = 196, npcName = "Eagan Peltskinner", map = 1429, x = 48.9, y = 40.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7, title = "Kobold Camp Cleanup", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.9, y = 41.6, f = "e" },
					{ t = "accept", quest = 15, title = "Investigate Echo Ridge", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.9, y = 41.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 15, target = "Kobold Workers", count = 10, oi = 1, map = 1429, x = 51.3, y = 37.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 15, title = "Investigate Echo Ridge", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.9, y = 41.6, f = "e" },
					{ t = "accept", quest = 21, title = "Skirmish at Echo Ridge", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.9, y = 41.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 21, npc = 80, target = "Kobold Laborer", count = 12, oi = 1, map = 1429, x = 47.7, y = 32.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 18, itemName = "Red Burlap Bandana", count = 8, oi = 1, map = 1429, x = 54.3, y = 41.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 18, title = "Brotherhood of Thieves", npc = 823, npcName = "Deputy Willem", map = 1429, x = 48.1, y = 43.6, f = "e" },
					{ t = "accept", quest = 3903, title = "Milly Osworth", npc = 823, npcName = "Deputy Willem", map = 1429, x = 48.1, y = 43.6, f = "e" },
					{ t = "accept", quest = 6, title = "Bounty on Garrick Padfoot", npc = 823, npcName = "Deputy Willem", map = 1429, x = 48.1, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3903, title = "Milly Osworth", npc = 9296, npcName = "Milly Osworth", map = 1429, x = 50.7, y = 39.3, f = "e" },
					{ t = "accept", quest = 3904, title = "Milly's Harvest", npc = 9296, npcName = "Milly Osworth", map = 1429, x = 50.7, y = 39.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3904, itemName = "Milly's Harvest", count = 8, oi = 1, map = 1429, x = 53.6, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6, itemName = "Garrick's Head", count = 1, oi = 1, map = 1429, x = 57.5, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3904, title = "Milly's Harvest", npc = 9296, npcName = "Milly Osworth", map = 1429, x = 50.7, y = 39.3, f = "e" },
					{ t = "accept", quest = 3905, title = "Grape Manifest", npc = 9296, npcName = "Milly Osworth", map = 1429, x = 50.7, y = 39.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6, title = "Bounty on Garrick Padfoot", npc = 823, npcName = "Deputy Willem", map = 1429, x = 48.1, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3905, title = "Grape Manifest", npc = 952, npcName = "Brother Neals", map = 1429, x = 49.5, y = 41.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 21, title = "Skirmish at Echo Ridge", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.9, y = 41.6, f = "e" },
					{ t = "accept", quest = 54, title = "Report to Goldshire", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.9, y = 41.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2158, title = "Rest and Relaxation", npc = 6774, npcName = "Falkhaan Isenstrider", map = 1429, x = 45.6, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 54, title = "Report to Goldshire", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
					{ t = "accept", quest = 62, title = "The Fargodeep Mine", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 60, title = "Kobold Candles", npc = 253, npcName = "William Pestle", map = 1429, x = 43.3, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2158, title = "Rest and Relaxation", npc = 295, npcName = "Innkeeper Farley", map = 1429, x = 43.8, y = 65.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Goldshire", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 47, title = "Gold Dust Exchange", npc = 241, npcName = "Remy \"Two Times\"", map = 1429, x = 42.1, y = 67.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 47, itemName = "Gold Dust", count = 10, oi = 1, map = 1429, x = 39.0, y = 82.3, f = "e" },
					{ t = "collect", quest = 60, itemName = "Large Candle", count = 8, oi = 1, map = 1429, x = 39.0, y = 82.3, f = "e" },
				},
			},
			{
				note = "Go northeast inside the mine to 41.3,79.1",
				goals = {
					{ t = "goto", map = 1429, x = 41.3, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 47, title = "Gold Dust Exchange", npc = 241, npcName = "Remy \"Two Times\"", map = 1429, x = 42.1, y = 67.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 62, title = "The Fargodeep Mine", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
					{ t = "accept", quest = 76, title = "The Jasperlode Mine", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1097, title = "Elmore's Task", npc = 514, npcName = "Smith Argus", map = 1429, x = 41.7, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 60, title = "Kobold Candles", npc = 253, npcName = "William Pestle", map = 1429, x = 43.3, y = 65.7, f = "e" },
					{ t = "accept", quest = 61, title = "Shipment to Stormwind", npc = 253, npcName = "William Pestle", map = 1429, x = 43.3, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 85, title = "Lost Necklace", npc = 246, npcName = "\"Auntie\" Bernice Stonefield", map = 1429, x = 34.5, y = 84.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 88, title = "Princess Must Die!", npc = 244, npcName = "Ma Stonefield", map = 1429, x = 34.6, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 85, title = "Lost Necklace", npc = 247, npcName = "Billy Maclure", map = 1429, x = 43.1, y = 85.7, f = "e" },
					{ t = "accept", quest = 86, title = "Pie for Billy", npc = 247, npcName = "Billy Maclure", map = 1429, x = 43.1, y = 85.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 86, itemName = "Chunk of Boar Meat", count = 4, oi = 1, map = 1429, x = 41.7, y = 86.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 106, title = "Young Lovers", npc = 251, npcName = "Maybell Maclure", map = 1429, x = 43.2, y = 89.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 86, title = "Pie for Billy", npc = 246, npcName = "\"Auntie\" Bernice Stonefield", map = 1429, x = 34.5, y = 84.2, f = "e" },
					{ t = "accept", quest = 84, title = "Back to Billy", npc = 246, npcName = "\"Auntie\" Bernice Stonefield", map = 1429, x = 34.5, y = 84.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 106, title = "Young Lovers", npc = 252, npcName = "Tommy Joe Stonefield", map = 1429, x = 29.8, y = 86.0, f = "e" },
					{ t = "accept", quest = 111, title = "Speak with Gramma", npc = 252, npcName = "Tommy Joe Stonefield", map = 1429, x = 29.8, y = 86.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 111, title = "Speak with Gramma", npc = 248, npcName = "Gramma Stonefield", map = 1429, x = 34.9, y = 83.9, f = "e" },
					{ t = "accept", quest = 107, title = "Note to William", npc = 248, npcName = "Gramma Stonefield", map = 1429, x = 34.9, y = 83.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 84, title = "Back to Billy", npc = 247, npcName = "Billy Maclure", map = 1429, x = 43.1, y = 85.7, f = "e" },
					{ t = "accept", quest = 87, title = "Goldtooth", npc = 247, npcName = "Billy Maclure", map = 1429, x = 43.1, y = 85.7, f = "e" },
				},
			},
			{
				note = "Go northwest into the Fargodeep Mine to 38.3,81.6|n",
				goals = {
					{ t = "goto", map = 1429, x = 38.3, y = 81.6, f = "e" },
				},
			},
			{
				note = "Follow the path inside the cave to 41.7,78.3",
				goals = {
					{ t = "collect", quest = 87, itemName = "Bernice's Necklace", count = 1, oi = 1, map = 1429, x = 41.7, y = 78.3, f = "e" },
				},
			},
			{
				note = "Go outside to 42.1,67.3",
				goals = {
					{ t = "accept", quest = 40, title = "A Fishy Peril", npc = 241, npcName = "Remy \"Two Times\"", map = 1429, x = 42.1, y = 67.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 40, title = "A Fishy Peril", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
					{ t = "accept", quest = 35, title = "Further Concerns", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 107, title = "Note to William", npc = 253, npcName = "William Pestle", map = 1429, x = 43.3, y = 65.7, f = "e" },
					{ t = "accept", quest = 112, title = "Collecting Kelp", npc = 253, npcName = "William Pestle", map = 1429, x = 43.3, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 112, itemName = "Crystal Kelp Frond", count = 4, oi = 1, map = 1429, x = 49.7, y = 66.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 112, title = "Collecting Kelp", npc = 253, npcName = "William Pestle", map = 1429, x = 43.3, y = 65.7, f = "e" },
					{ t = "accept", quest = 114, title = "The Escape", npc = 253, npcName = "William Pestle", map = 1429, x = 43.3, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 114, title = "The Escape", npc = 251, npcName = "Maybell Maclure", map = 1429, x = 43.2, y = 89.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 87, title = "Goldtooth", npc = 246, npcName = "\"Auntie\" Bernice Stonefield", map = 1429, x = 34.5, y = 84.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 35, title = "Further Concerns", npc = 261, npcName = "Guard Thomas", map = 1429, x = 74.0, y = 72.2, f = "e" },
					{ t = "accept", quest = 37, title = "Find the Lost Guards", npc = 261, npcName = "Guard Thomas", map = 1429, x = 74.0, y = 72.2, f = "e" },
					{ t = "accept", quest = 52, title = "Protect the Frontier", npc = 261, npcName = "Guard Thomas", map = 1429, x = 74.0, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 83, title = "Red Linen Goods", npc = 278, npcName = "Sara Timberlain", map = 1429, x = 79.5, y = 68.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5545, title = "A Bundle of Trouble", npc = 10616, npcName = "Supervisor Raelen", map = 1429, x = 81.4, y = 66.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5545, itemName = "Bundle of Wood", count = 8, oi = 1, map = 1429, x = 81.3, y = 60.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 37, title = "Find the Lost Guards", map = 1429, x = 72.7, y = 60.3, f = "e" },
					{ t = "accept", quest = 45, title = "Discover Rolf's Fate", map = 1429, x = 72.7, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 45, title = "Discover Rolf's Fate", map = 1429, x = 79.8, y = 55.5, f = "e" },
					{ t = "accept", quest = 71, title = "Report to Thomas", map = 1429, x = 79.8, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5545, title = "A Bundle of Trouble", npc = 10616, npcName = "Supervisor Raelen", map = 1429, x = 81.4, y = 66.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 71, title = "Report to Thomas", npc = 261, npcName = "Guard Thomas", map = 1429, x = 74.0, y = 72.2, f = "e" },
					{ t = "accept", quest = 39, title = "Deliver Thomas' Report", npc = 261, npcName = "Guard Thomas", map = 1429, x = 74.0, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 52, target = "Prowler", count = 8, oi = 1, map = 1429, x = 80.0, y = 77.8, f = "e" },
					{ t = "kill", quest = 52, target = "Young Forest Bear", count = 5, oi = 2, map = 1429, x = 80.0, y = 77.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 83, itemName = "Red Linen Bandana", count = 6, oi = 1, map = 1429, x = 70.6, y = 76.3, f = "e" },
				},
			},
			{
				note = "Kill Princess",
				goals = {
					{ t = "collect", quest = 88, item = 1006, itemName = "Brass Collar", count = 1, oi = 1, map = 1429, x = 69.7, y = 79.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 52, title = "Protect the Frontier", npc = 261, npcName = "Guard Thomas", map = 1429, x = 74.0, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 83, title = "Red Linen Goods", npc = 278, npcName = "Sara Timberlain", map = 1429, x = 79.5, y = 68.8, f = "e" },
				},
			},
			{
				note = "Go inside the mine to 60.4,49.7",
				goals = {
					{ t = "goto", map = 1429, x = 60.4, y = 49.7, f = "e" },
				},
			},
			{
				note = "Hearth to Goldshire|goto Elwynn Forest,42.4,65.8,2|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 76, title = "The Jasperlode Mine", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
					{ t = "turnin", quest = 39, title = "Deliver Thomas' Report", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
					{ t = "accept", quest = 239, title = "Westbrook Garrison Needs Help!", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
					{ t = "accept", quest = 59, title = "Cloth and Leather Armor", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 46, title = "Bounty on Murlocs", npc = 261, npcName = "Guard Thomas", map = 1429, x = 74.0, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 59, title = "Cloth and Leather Armor", npc = 278, npcName = "Sara Timberlain", map = 1429, x = 79.5, y = 68.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 46, itemName = "Torn Murloc Fin", count = 8, oi = 1, map = 1429, x = 78.8, y = 56.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 46, title = "Bounty on Murlocs", npc = 261, npcName = "Guard Thomas", map = 1429, x = 74.0, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 88, title = "Princess Must Die!", npc = 244, npcName = "Ma Stonefield", map = 1429, x = 34.6, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 239, title = "Westbrook Garrison Needs Help!", npc = 963, npcName = "Deputy Rainer", map = 1429, x = 24.3, y = 74.8, f = "e" },
					{ t = "accept", quest = 11, title = "Riverpaw Gnoll Bounty", npc = 963, npcName = "Deputy Rainer", map = 1429, x = 24.3, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11, itemName = "Painted Gnoll Armband", count = 8, oi = 1, map = 1429, x = 26.8, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11, title = "Riverpaw Gnoll Bounty", npc = 963, npcName = "Deputy Rainer", map = 1429, x = 24.3, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 61, title = "Shipment to Stormwind", npc = 279, npcName = "Morgan Pestle", map = 1453, x = 63.2, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 332, title = "Wine Shop Advert", npc = 1432, npcName = "Renato Gallina", map = 1453, x = 63.8, y = 73.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 333, title = "Harlan Needs a Resupply", npc = 1427, npcName = "Harlan Bagley", map = 1453, x = 62.3, y = 67.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 332, title = "Wine Shop Advert", npc = 1431, npcName = "Suzetta Gallina", map = 1453, x = 60.3, y = 76.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 333, title = "Harlan Needs a Resupply", npc = 1428, npcName = "Rema Schneider", map = 1453, x = 58.1, y = 67.5, f = "e" },
					{ t = "accept", quest = 334, title = "Package for Thurman", npc = 1428, npcName = "Rema Schneider", map = 1453, x = 58.1, y = 67.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 334, title = "Package for Thurman", npc = 1429, npcName = "Thurman Schneider", map = 1453, x = 52.6, y = 83.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1097, title = "Elmore's Task", npc = 1416, npcName = "Grimand Elmore", map = 1453, x = 59.7, y = 33.8, f = "e" },
					{ t = "accept", quest = 353, title = "Stormpike's Delivery", npc = 1416, npcName = "Grimand Elmore", map = 1453, x = 59.7, y = 33.8, f = "e" },
				},
			},
			{
				note = "Ride the train to Ironforge|goto Ironforge|noway|c",
				goals = {
					{ t = "goto", map = 1453, x = 69.0, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Ironforge", map = 1455, x = 55.5, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 179, title = "Dwarven Outfitters", npc = 658, npcName = "Sten Stoutarm", map = 1426, x = 29.9, y = 71.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 179, itemName = "Tough Wolf Meat", count = 8, oi = 1, map = 1426, x = 29.8, y = 73.8, f = "e" },
				},
			},
		},
	})
end

