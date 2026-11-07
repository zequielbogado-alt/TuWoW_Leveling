-- TuWoW_Leveling — Guides/Leveling_Alliance_23.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-40-45",
		pack = "guides",
		title = "Levels (40-45) (Parte 1/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-40-45-part-2",
		author = "TuWoW & Zygor",
		minLevel = 40,
		maxLevel = 45,
		zone = 1445,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", target = "Zelfrax", count = 1, map = 1445, x = 55.2, y = 26.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11183, title = "Cleansing Witch Hill", npc = 23843, npcName = "Mordant Grimsby", map = 1445, x = 55.4, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11146, title = "Raptor Captor", npc = 23723, npcName = "Sergeant Lukas", map = 1445, x = 46.7, y = 23.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 47.0, y = 19.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1222, title = "Stinky's Escape", npc = 4880, npcName = "\"Stinky\" Ignatz", map = 1445, x = 46.9, y = 17.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11146, title = "Raptor Captor", npc = 23723, npcName = "Sergeant Lukas", map = 1445, x = 46.7, y = 23.1, f = "e" },
					{ t = "accept", quest = 11145, title = "Prisoners of the Grimtotems", npc = 23723, npcName = "Sergeant Lukas", map = 1445, x = 46.7, y = 23.1, f = "e" },
					{ t = "accept", quest = 11147, title = "Unleash the Raptors", npc = 23723, npcName = "Sergeant Lukas", map = 1445, x = 46.7, y = 23.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Grimtotem mobs", count = 1, map = 1445, x = 44.0, y = 16.0, f = "e" },
					{ t = "collect", itemName = "Grimtotem Keys", count = 1, map = 1445, x = 44.0, y = 16.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 42.0, y = 12.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11147, title = "Unleash the Raptors", npc = 23723, npcName = "Sergeant Lukas", map = 1445, x = 46.7, y = 23.1, f = "e" },
					{ t = "turnin", quest = 11145, title = "Prisoners of the Grimtotems", npc = 23723, npcName = "Sergeant Lukas", map = 1445, x = 46.7, y = 23.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Darkmist spiders", count = 1, map = 1445, x = 35.1, y = 23.0, f = "e" },
					{ t = "collect", quest = 1206, itemName = "Unpopped Darkmist Eye", count = 20, oi = 1, map = 1445, x = 35.1, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11123, title = "Inspecting the Ruins", npc = 23567, npcName = "Inspector Tarem", map = 1445, x = 29.7, y = 47.6, f = "e" },
					{ t = "accept", quest = 1284, title = "Suspicious Hoofprints", npc = 23567, npcName = "Inspector Tarem", map = 1445, x = 29.7, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1252, title = "Lieutenant Paval Reethe (1)", map = 1445, x = 29.8, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1253, title = "The Black Shield (1)", map = 1445, x = 29.6, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Mudsprocket", text = "Mudsprocket", map = 1445, x = 42.8, y = 72.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11214, title = "Mission to Mudsprocket", npc = 23572, npcName = "Drazzit Dripvalve", map = 1445, x = 42.3, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11184, title = "WANTED: Goreclaw the Ravenous", map = 1445, x = 41.8, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11158, title = "Bloodfen Feathers", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11217, title = "Catch a Dragon by the Tail", npc = 23570, npcName = "Gizzix Grimegurgle", map = 1445, x = 41.5, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11212, title = "Tabetha's Farm", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.1, y = 57.2, f = "e" },
					{ t = "accept", quest = 11172, title = "The Zeppelin Crash", npc = 23600, npcName = "Apprentice Morlann", map = 1445, x = 46.1, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11172, title = "The Zeppelin Crash", npc = 23797, npcName = "Moxie Steelgrille", map = 1445, x = 53.6, y = 56.9, f = "e" },
					{ t = "accept", quest = 11174, title = "Corrosion Prevention", npc = 23797, npcName = "Moxie Steelgrille", map = 1445, x = 53.6, y = 56.9, f = "e" },
					{ t = "accept", quest = 11207, title = "Secure the Cargo!", npc = 23797, npcName = "Moxie Steelgrille", map = 1445, x = 53.6, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11207, itemName = "Zeppelin Cargo", count = 8, oi = 1, map = 1445, x = 53.0, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11174, title = "Corrosion Prevention", npc = 23797, npcName = "Moxie Steelgrille", map = 1445, x = 53.6, y = 56.9, f = "e" },
					{ t = "turnin", quest = 11207, title = "Secure the Cargo!", npc = 23797, npcName = "Moxie Steelgrille", map = 1445, x = 53.6, y = 56.9, f = "e" },
					{ t = "accept", quest = 11208, title = "Delivery for Drazzit", npc = 23797, npcName = "Moxie Steelgrille", map = 1445, x = 53.6, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1187, itemName = "Seaforium Booster", count = 1, oi = 1, map = 1445, x = 54.1, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 54.6, y = 58.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11194, title = "Is it Real?", npc = 12919, npcName = "Nat Pagle", map = 1445, x = 58.5, y = 60.0, f = "e" },
					{ t = "accept", quest = 11209, title = "Nat's Bargain", npc = 12919, npcName = "Nat Pagle", map = 1445, x = 58.5, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 56.2, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11209, title = "Nat's Bargain", npc = 12919, npcName = "Nat Pagle", map = 1445, x = 58.5, y = 60.0, f = "e" },
					{ t = "accept", quest = 11210, title = "Oh, It's Real", npc = 12919, npcName = "Nat Pagle", map = 1445, x = 58.5, y = 60.0, f = "e" },
				},
			},
			{
				note = "Hearth to Theramore|goto Dustwallow Marsh,66.6,45.2,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1204, title = "Mudrock Soup and Bugs", npc = 4794, npcName = "Morgan Stern", map = 1445, x = 66.3, y = 45.5, f = "e" },
					{ t = "turnin", quest = 1222, title = "Stinky's Escape", npc = 4794, npcName = "Morgan Stern", map = 1445, x = 66.3, y = 45.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1219, title = "The Orc Report", npc = 23951, npcName = "the Lieutenant Aden", map = 1445, x = 65.1, y = 47.1, f = "e" },
					{ t = "accept", quest = 1220, title = "Captain Vimes", npc = 23951, npcName = "the Lieutenant Aden", map = 1445, x = 65.1, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1220, title = "Captain Vimes", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
					{ t = "turnin", quest = 1252, title = "Lieutenant Paval Reethe (1)", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
					{ t = "accept", quest = 1259, title = "Lieutenant Paval Reethe (2)", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
					{ t = "turnin", quest = 1253, title = "The Black Shield (1)", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
					{ t = "accept", quest = 1319, title = "The Black Shield (2)", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
					{ t = "turnin", quest = 1284, title = "Suspicious Hoofprints", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1259, title = "Lieutenant Paval Reethe (2)", npc = 4948, npcName = "Adjutant Tesoran", map = 1445, x = 68.0, y = 48.1, f = "e" },
					{ t = "accept", quest = 1285, title = "Daelin's Men", npc = 4948, npcName = "Adjutant Tesoran", map = 1445, x = 68.0, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1285, title = "Daelin's Men", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
					{ t = "accept", quest = 1286, title = "The Deserters (1)", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11210, title = "Oh, It's Real", npc = 23905, npcName = "Major Mills", map = 1445, x = 69.7, y = 51.2, f = "e" },
					{ t = "accept", quest = 11198, title = "Take Down Tethyr!", npc = 23905, npcName = "Major Mills", map = 1445, x = 69.7, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11198, title = "Take Down Tethyr!", npc = 23905, npcName = "Major Mills", map = 1445, x = 69.7, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1319, title = "The Black Shield (2)", npc = 4941, npcName = "Caz Twosprocket", map = 1445, x = 64.8, y = 50.4, f = "e" },
					{ t = "accept", quest = 1320, title = "The Black Shield (3)", npc = 4941, npcName = "Caz Twosprocket", map = 1445, x = 64.8, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1320, title = "The Black Shield (3)", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
				},
			},
			{
				note = "Go outside to 55.4,26.3",
				goals = {
					{ t = "turnin", quest = 1206, title = "Jarl Needs Eyes", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.4, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11208, title = "Delivery for Drazzit", npc = 23572, npcName = "Drazzit Dripvalve", map = 1445, x = 42.3, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1286, title = "The Deserters (1)", npc = 5089, npcName = "Balos Jacken", map = 1445, x = 36.1, y = 54.3, f = "e" },
					{ t = "accept", quest = 1287, title = "The Deserters (2)", npc = 5089, npcName = "Balos Jacken", map = 1445, x = 36.1, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "raptors", count = 1, map = 1445, x = 35.0, y = 65.0, f = "e" },
					{ t = "collect", quest = 11158, itemName = "Bloodfen Feather", count = 5, oi = 1, map = 1445, x = 35.0, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11184, target = "Goreclaw the Ravenous", count = 1, oi = 1, map = 1445, x = 32.0, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11184, title = "WANTED: Goreclaw the Ravenous", npc = 23572, npcName = "Drazzit Dripvalve", map = 1445, x = 42.3, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11158, title = "Bloodfen Feathers", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
					{ t = "accept", quest = 11160, title = "Banner of the Stonemaul", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
					{ t = "accept", quest = 11161, title = "The Essence of Enmity", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Firemane mobs", count = 1, map = 1445, x = 39.0, y = 66.0, f = "e" },
					{ t = "collect", quest = 11161, itemName = "Black Dragonkin Essence", count = 10, oi = 1, map = 1445, x = 39.0, y = 66.0, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 38.1,69.4",
				goals = {
					{ t = "collect", quest = 11160, itemName = "Stonemaul Banner", count = 1, oi = 1, map = 1445, x = 38.1, y = 69.4, f = "e" },
				},
			},
			{
				note = "Go outside to 41.9,74",
				goals = {
					{ t = "turnin", quest = 11160, title = "Banner of the Stonemaul", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
					{ t = "turnin", quest = 11161, title = "The Essence of Enmity", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
					{ t = "accept", quest = 11159, title = "Spirits of Stonemaul Hold", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11217, itemName = "Wyrmtail", count = 8, oi = 1, map = 1445, x = 46.0, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "the Ogre Spirits", count = 1, map = 1445, x = 46.0, y = 69.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11217, title = "Catch a Dragon by the Tail", npc = 23570, npcName = "Gizzix Grimegurgle", map = 1445, x = 41.5, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11159, title = "Spirits of Stonemaul Hold", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
					{ t = "accept", quest = 11162, title = "Challenge to the Black Flight", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Smolderwing", count = 1, map = 1445, x = 52.1, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11162, title = "Challenge to the Black Flight", npc = 23579, npcName = "Brogg", map = 1445, x = 41.9, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11156, title = "Direhorn Raiders", npc = 23600, npcName = "Apprentice Morlann", map = 1445, x = 46.1, y = 57.2, f = "e" },
					{ t = "accept", quest = 11173, title = "The Reagent Thief", npc = 23601, npcName = "Apprentice Garion", map = 1445, x = 46.1, y = 57.2, f = "e" },
					{ t = "accept", quest = 11169, title = "The Grimtotem Weapon", npc = 23601, npcName = "Apprentice Garion", map = 1445, x = 46.1, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Mottled Drywallow Crocolisks next to the totem", count = 1, map = 1445, x = 43.8, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Darkfang Creepers", count = 1, map = 1445, x = 41.7, y = 51.4, f = "e" },
					{ t = "kill", target = "Noxious Shredders", count = 1, map = 1445, x = 41.7, y = 51.4, f = "e" },
					{ t = "collect", quest = 11173, itemName = "Marsh Venom", count = 6, oi = 1, map = 1445, x = 41.7, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Grimtotem mobs", count = 1, map = 1445, x = 47.0, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "the Sealed Letter", count = 1, map = 1445, x = 47.2, y = 46.6, f = "e" },
					{ t = "accept", quest = 11185, title = "The Apothecary's Letter", map = 1445, x = 47.2, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11185, title = "The Apothecary's Letter", npc = 23942, npcName = "Andello Porter", map = 1445, x = 45.5, y = 57.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11173, title = "The Reagent Thief", npc = 23601, npcName = "Apprentice Garion", map = 1445, x = 46.1, y = 57.2, f = "e" },
					{ t = "turnin", quest = 11169, title = "The Grimtotem Weapon", npc = 23601, npcName = "Apprentice Garion", map = 1445, x = 46.1, y = 57.2, f = "e" },
					{ t = "turnin", quest = 11156, title = "Direhorn Raiders", npc = 23600, npcName = "Apprentice Morlann", map = 1445, x = 46.1, y = 57.2, f = "e" },
				},
			},
			{
				note = "Hearth to Theramore|goto Dustwallow Marsh,67.5,50.3,9|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1287, title = "The Deserters (2)", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
					{ t = "accept", quest = 11143, title = "A Grim Connection", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
				},
			},
			{
				note = "Go outside to 46.6,24.6",
				goals = {
					{ t = "turnin", quest = 11143, title = "A Grim Connection", npc = 23568, npcName = "Captain Darill", map = 1445, x = 46.6, y = 24.6, f = "e" },
					{ t = "accept", quest = 11144, title = "Confirming the Suspicion", npc = 23568, npcName = "Captain Darill", map = 1445, x = 46.6, y = 24.6, f = "e" },
					{ t = "accept", quest = 11148, title = "Arms of the Grimtotems", npc = 23568, npcName = "Captain Darill", map = 1445, x = 46.6, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Grimtotem Elders", count = 1, map = 1445, x = 43.1, y = 15.0, f = "e" },
					{ t = "collect", itemName = "Grimtotem Note", count = 4, map = 1445, x = 43.1, y = 15.0, f = "e" },
					{ t = "collect", quest = 11144, itemName = "Grimtotem Battle Plan", count = 1, oi = 1, map = 1445, x = 43.1, y = 15.0, f = "e" },
					{ t = "collect", quest = 11148, itemName = "Blackhoof Armaments", count = 7, oi = 1, map = 1445, x = 43.1, y = 15.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11144, title = "Confirming the Suspicion", npc = 23568, npcName = "Captain Darill", map = 1445, x = 46.6, y = 24.6, f = "e" },
					{ t = "turnin", quest = 11148, title = "Arms of the Grimtotems", npc = 23568, npcName = "Captain Darill", map = 1445, x = 46.6, y = 24.6, f = "e" },
					{ t = "accept", quest = 11149, title = "Tabetha's Assistance", npc = 23568, npcName = "Captain Darill", map = 1445, x = 46.6, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11149, title = "Tabetha's Assistance", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.1, y = 57.2, f = "e" },
					{ t = "accept", quest = 11150, title = "Raze Direhorn Post!", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.1, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 47.4, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 47.3, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 46.6, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11150, title = "Raze Direhorn Post!", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.1, y = 57.2, f = "e" },
					{ t = "accept", quest = 11151, title = "Justice for the Hyals", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.1, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11151, title = "Justice for the Hyals", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
					{ t = "accept", quest = 11152, title = "Peace at Last", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
				},
			},
			{
				note = "Go outside to 63.7,42.8",
				goals = {
					{ t = "goto", map = 1445, x = 63.7, y = 42.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11152, title = "Peace at Last", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1187, title = "Razzeric's Tweaking", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.2, y = 75.9, f = "e" },
					{ t = "accept", quest = 1188, title = "Safety First (1)", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.2, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1188, title = "Safety First (1)", npc = 4708, npcName = "Shreev", map = 1446, x = 51.0, y = 27.2, f = "e" },
					{ t = "accept", quest = 1189, title = "Safety First (2)", npc = 4708, npcName = "Shreev", map = 1446, x = 51.0, y = 27.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1189, title = "Safety First (2)", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.2, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 595, title = "The Bloodsail Buccaneers (1)", npc = 2490, npcName = "First Mate Crazz", map = 1434, x = 28.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 606, title = "Scaring Shaky", npc = 2501, npcName = "\"Sea Wolf\" MacKinley", map = 1434, x = 27.8, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Booty Bay", text = "Booty Bay", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 600, title = "Venture Company Mining", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.1, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 209, title = "Skullsplitter Tusks", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 669, title = "Sunken Treasure (4)", npc = 2487, npcName = "Fleet Master Seahorn", map = 1434, x = 27.2, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 196, target = "Jungle Stalker", count = 10, oi = 1, map = 1434, x = 32.6, y = 40.4, f = "e" },
				},
			},
		},
	})
end

