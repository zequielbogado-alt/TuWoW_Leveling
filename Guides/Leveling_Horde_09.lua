-- TuWoW_Leveling — Guides/Leveling_Horde_09.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-blood-elf-1-13",
		pack = "guides",
		title = "Blood Elf (1-13) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-blood-elf-1-13-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1944,
		version = 1,
		races = { "BloodElf" },
		steps = {
			{
				goals = {
					{ t = "accept", quest = 8325, title = "Reclaiming Sunstrider Isle", npc = 15278, npcName = "Magistrix Erona", map = 1944, x = 38.0, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8325, target = "Mana Wyrm", count = 8, oi = 1, map = 1944, x = 36.2, y = 20.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8325, title = "Reclaiming Sunstrider Isle", npc = 15278, npcName = "Magistrix Erona", map = 1944, x = 38.0, y = 21.0, f = "e" },
					{ t = "accept", quest = 8326, title = "Unfortunate Measures", npc = 15278, npcName = "Magistrix Erona", map = 1944, x = 38.0, y = 21.0, f = "e" },
					{ t = "accept", quest = 8328, title = "Mage Training", npc = 15278, npcName = "Magistrix Erona", map = 1944, x = 38.0, y = 21.0, f = "e", only = { races = { "BloodElf" }, classes = { "MAGE" } } },
					{ t = "accept", quest = 8563, title = "Warlock Training", npc = 15278, npcName = "Magistrix Erona", map = 1944, x = 38.0, y = 21.0, f = "e", only = { races = { "BloodElf" }, classes = { "WARLOCK" } } },
					{ t = "accept", quest = 9392, title = "Rogue Training", npc = 15278, npcName = "Magistrix Erona", map = 1944, x = 38.0, y = 21.0, f = "e", only = { races = { "BloodElf" }, classes = { "ROGUE" } } },
					{ t = "accept", quest = 8564, title = "Priest Training", npc = 15278, npcName = "Magistrix Erona", map = 1944, x = 38.0, y = 21.0, f = "e", only = { races = { "BloodElf" }, classes = { "PRIEST" } } },
					{ t = "accept", quest = 9676, title = "Paladin Training", npc = 15278, npcName = "Magistrix Erona", map = 1944, x = 38.0, y = 21.0, f = "e", only = { races = { "BloodElf" }, classes = { "PALADIN" } } },
					{ t = "accept", quest = 9393, title = "Hunter Training", npc = 15278, npcName = "Magistrix Erona", map = 1944, x = 38.0, y = 21.0, f = "e", only = { races = { "BloodElf" }, classes = { "HUNTER" } } },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 8328, title = "Mage Training", npc = 15279, npcName = "Julia Sunstriker", map = 1944, x = 39.2, y = 21.5, f = "e" },
					{ t = "accept", quest = 10068, title = "Well Watcher Solanian", npc = 15279, npcName = "Julia Sunstriker", map = 1944, x = 39.2, y = 21.5, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 8563, title = "Warlock Training", npc = 15283, npcName = "Summoner Teli'Larien", map = 1944, x = 38.9, y = 21.4, f = "e" },
					{ t = "accept", quest = 10073, title = "Well Watcher Solanian", npc = 15283, npcName = "Summoner Teli'Larien", map = 1944, x = 38.9, y = 21.4, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 9392, title = "Rogue Training", npc = 15285, npcName = "Pathstalker Kariel", map = 1944, x = 38.9, y = 20.0, f = "e" },
					{ t = "accept", quest = 10071, title = "Well Watcher Solanian", npc = 15285, npcName = "Pathstalker Kariel", map = 1944, x = 38.9, y = 20.0, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 8564, title = "Priest Training", npc = 15284, npcName = "Matron Arena", map = 1944, x = 39.4, y = 20.4, f = "e" },
					{ t = "accept", quest = 10072, title = "Well Watcher Solanian", npc = 15284, npcName = "Matron Arena", map = 1944, x = 39.4, y = 20.4, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 9676, title = "Paladin Training", npc = 15280, npcName = "Jesthenis Sunstriker", map = 1944, x = 39.5, y = 20.6, f = "e" },
					{ t = "accept", quest = 10069, title = "Well Watcher Solanian", npc = 15280, npcName = "Jesthenis Sunstriker", map = 1944, x = 39.5, y = 20.6, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 9393, title = "Hunter Training", npc = 15513, npcName = "Ranger Sallina", map = 1944, x = 39.0, y = 20.0, f = "e" },
					{ t = "accept", quest = 10070, title = "Well Watcher Solanian", npc = 15513, npcName = "Ranger Sallina", map = 1944, x = 39.0, y = 20.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10068, title = "Well Watcher Solanian", npc = 15295, npcName = "Well Watcher Solanian", map = 1944, x = 38.8, y = 19.4, f = "e", only = { classes = { "MAGE" } } },
					{ t = "turnin", quest = 10073, title = "Well Watcher Solanian", npc = 15295, npcName = "Well Watcher Solanian", map = 1944, x = 38.8, y = 19.4, f = "e", only = { classes = { "WARLOCK" } } },
					{ t = "turnin", quest = 10071, title = "Well Watcher Solanian", npc = 15295, npcName = "Well Watcher Solanian", map = 1944, x = 38.8, y = 19.4, f = "e", only = { classes = { "ROGUE" } } },
					{ t = "turnin", quest = 10069, title = "Well Watcher Solanian", npc = 15295, npcName = "Well Watcher Solanian", map = 1944, x = 38.8, y = 19.4, f = "e", only = { classes = { "PRIEST" } } },
					{ t = "turnin", quest = 10069, title = "Well Watcher Solanian", npc = 15295, npcName = "Well Watcher Solanian", map = 1944, x = 38.8, y = 19.4, f = "e", only = { classes = { "PALADIN" } } },
					{ t = "turnin", quest = 10069, title = "Well Watcher Solanian", npc = 15295, npcName = "Well Watcher Solanian", map = 1944, x = 38.8, y = 19.4, f = "e", only = { classes = { "HUNTER" } } },
					{ t = "accept", quest = 8330, title = "Solanian's Belongings", npc = 15295, npcName = "Well Watcher Solanian", map = 1944, x = 38.8, y = 19.4, f = "e" },
					{ t = "accept", quest = 8345, title = "The Shrine of Dath'Remar", npc = 15295, npcName = "Well Watcher Solanian", map = 1944, x = 38.8, y = 19.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8330, title = "Solanian's Belongings", npc = 15295, npcName = "Well Watcher Solanian", map = 1944, x = 38.8, y = 19.4, f = "e" },
					{ t = "accept", quest = 8345, title = "The Shrine of Dath'Remar", npc = 15295, npcName = "Well Watcher Solanian", map = 1944, x = 38.8, y = 19.4, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "accept", quest = 8336, title = "A Fistful of Slivers", npc = 15296, npcName = "Arcanist Ithanas", map = 1944, x = 38.3, y = 19.1, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "accept", quest = 8346, title = "Thirst Unending", npc = 15297, npcName = "Arcanist Helion", map = 1944, x = 37.2, y = 18.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8336, itemName = "Arcane Sliver", count = 6, oi = 1, map = 1944, x = 34.8, y = 20.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8326, itemName = "Lynx Collar", count = 8, oi = 1, map = 1944, x = 33.6, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8326, title = "Unfortunate Measures", npc = 15278, npcName = "Magistrix Erona", map = 1944, x = 38.2, y = 20.8, f = "e" },
					{ t = "accept", quest = 8327, title = "Report to Lanthan Perilon", npc = 15278, npcName = "Magistrix Erona", map = 1944, x = 38.2, y = 20.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8336, title = "A Fistful of Slivers", npc = 15296, npcName = "Arcanist Ithanas", map = 1944, x = 38.3, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8346, title = "Thirst Unending", npc = 15297, npcName = "Arcanist Helion", map = 1944, x = 37.2, y = 18.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8327, title = "Report to Lanthan Perilon", npc = 15281, npcName = "Lanthan Perilon", map = 1944, x = 35.4, y = 22.5, f = "e" },
					{ t = "accept", quest = 8334, title = "Aggression", npc = 15281, npcName = "Lanthan Perilon", map = 1944, x = 35.4, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8334, target = "Tender", count = 7, oi = 1, map = 1944, x = 33.5, y = 24.2, f = "e" },
					{ t = "kill", quest = 8334, target = "Feral Tender", count = 7, oi = 2, map = 1944, x = 33.5, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 29.6, y = 19.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8330, itemName = "Scroll of Scourge Magic", count = 1, oi = 2, map = 1944, x = 31.3, y = 22.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8330, itemName = "Solanian's Scrying Orb", count = 1, oi = 1, map = 1944, x = 35.1, y = 28.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8330, itemName = "Solanian's Journal", count = 1, oi = 3, map = 1944, x = 37.7, y = 24.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8330, title = "Solanian's Belongings", npc = 15295, npcName = "Well Watcher Solanian", map = 1944, x = 38.8, y = 19.4, f = "e" },
					{ t = "turnin", quest = 8345, title = "The Shrine of Dath'Remar", npc = 15295, npcName = "Well Watcher Solanian", map = 1944, x = 38.8, y = 19.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8334, title = "Aggression", npc = 15281, npcName = "Lanthan Perilon", map = 1944, x = 35.4, y = 22.5, f = "e" },
					{ t = "accept", quest = 8335, title = "Felendren the Banished", npc = 15281, npcName = "Lanthan Perilon", map = 1944, x = 35.4, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8335, target = "Arcane Wraith", count = 8, oi = 1, map = 1944, x = 32.2, y = 25.9, f = "e" },
					{ t = "kill", quest = 8335, target = "Tainted Arcane Wraith", count = 2, oi = 2, map = 1944, x = 32.2, y = 25.9, f = "e" },
					{ t = "collect", itemName = "Tainted Arcane Sliver", count = 1, map = 1944, x = 32.2, y = 25.9, f = "e" },
					{ t = "accept", quest = 8338, title = "Tainted Arcane Sliver", map = 1944, x = 32.2, y = 25.9, f = "e" },
				},
			},
			{
				note = "Follow the ramps all the way to the top to 30.8,27.1",
				goals = {
					{ t = "collect", quest = 8335, itemName = "Felendren's Head", count = 1, oi = 3, map = 1944, x = 30.8, y = 27.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8335, title = "Felendren the Banished", npc = 15281, npcName = "Lanthan Perilon", map = 1944, x = 35.4, y = 22.5, f = "e" },
					{ t = "accept", quest = 8347, title = "Aiding the Outrunners", npc = 15281, npcName = "Lanthan Perilon", map = 1944, x = 35.4, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8338, title = "Tainted Arcane Sliver", npc = 15297, npcName = "Arcanist Helion", map = 1944, x = 37.2, y = 18.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8347, title = "Aiding the Outrunners", npc = 15301, npcName = "Outrunner Alarion", map = 1944, x = 40.4, y = 32.2, f = "e" },
					{ t = "accept", quest = 9704, title = "Slain by the Wretched", npc = 15301, npcName = "Outrunner Alarion", map = 1944, x = 40.4, y = 32.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9704, title = "Slain by the Wretched", map = 1944, x = 42.0, y = 35.7, f = "e" },
					{ t = "accept", quest = 9705, title = "Package Recovery", map = 1944, x = 42.0, y = 35.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9705, title = "Package Recovery", npc = 15301, npcName = "Outrunner Alarion", map = 1944, x = 40.4, y = 32.2, f = "e" },
					{ t = "accept", quest = 8350, title = "Completing the Delivery", npc = 15301, npcName = "Outrunner Alarion", map = 1944, x = 40.4, y = 32.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8472, title = "Major Malfunction", npc = 15418, npcName = "Magister Jaronis", map = 1944, x = 47.3, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8350, title = "Completing the Delivery", npc = 15433, npcName = "Innkeeper Delaniel", map = 1944, x = 48.1, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Falconwing Square", text = "Falconwing Square", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8463, title = "Unstable Mana Crystals", npc = 15403, npcName = "Aeldon Sunbrand", map = 1944, x = 48.2, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8468, title = "Wanted: Thaelis the Hungerer", map = 1944, x = 48.2, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8463, itemName = "Unstable Mana Crystal", count = 6, oi = 1, map = 1944, x = 45.9, y = 43.7, f = "e" },
					{ t = "collect", quest = 8472, itemName = "Arcane Core", count = 6, oi = 1, map = 1944, x = 45.9, y = 43.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8468, itemName = "Thaelis's Head", count = 1, oi = 1, map = 1944, x = 45.0, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8472, title = "Major Malfunction", npc = 15418, npcName = "Magister Jaronis", map = 1944, x = 47.3, y = 46.3, f = "e" },
					{ t = "accept", quest = 8895, title = "Delivery to the North Sanctum", npc = 15418, npcName = "Magister Jaronis", map = 1944, x = 47.3, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8468, title = "Wanted: Thaelis the Hungerer", npc = 16924, npcName = "Sergeant Kan'ren", map = 1944, x = 47.8, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8463, title = "Unstable Mana Crystals", npc = 15403, npcName = "Aeldon Sunbrand", map = 1944, x = 48.2, y = 46.0, f = "e" },
					{ t = "accept", quest = 9352, title = "Darnassian Intrusions", npc = 15403, npcName = "Aeldon Sunbrand", map = 1944, x = 48.2, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8895, title = "Delivery to the North Sanctum", npc = 15405, npcName = "Ley-Keeper Caidanis", map = 1944, x = 44.6, y = 53.1, f = "e" },
					{ t = "accept", quest = 9119, title = "Malfunction at the West Sanctum", npc = 15405, npcName = "Ley-Keeper Caidanis", map = 1944, x = 44.6, y = 53.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9035, title = "Roadside Ambush", npc = 15941, npcName = "Apprentice Ralen", map = 1944, x = 45.2, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9119, title = "Malfunction at the West Sanctum", npc = 15401, npcName = "Ley-Keeper Velania", map = 1944, x = 36.7, y = 57.4, f = "e" },
					{ t = "accept", quest = 8486, title = "Arcane Instability", npc = 15401, npcName = "Ley-Keeper Velania", map = 1944, x = 36.7, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8486, target = "Manawraith", count = 5, oi = 1, map = 1944, x = 35.4, y = 57.4, f = "e" },
					{ t = "kill", quest = 8486, target = "Mana Stalker", count = 5, oi = 2, map = 1944, x = 35.4, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "the Incriminating Documents", count = 1, map = 1944, x = 33.9, y = 58.4, f = "e" },
					{ t = "accept", quest = 8482, title = "Incriminating Documents", map = 1944, x = 33.9, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9352, title = "Darnassian Intrusions", npc = 15401, npcName = "Ley-Keeper Velania", map = 1944, x = 36.7, y = 57.4, f = "e" },
					{ t = "turnin", quest = 8486, title = "Arcane Instability", npc = 15401, npcName = "Ley-Keeper Velania", map = 1944, x = 36.7, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8884, title = "Fish Heads, Fish Heads...", npc = 15920, npcName = "Hathvelion Sungaze", map = 1944, x = 30.2, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8884, itemName = "Grimscale Murloc Head", count = 8, oi = 1, map = 1944, x = 27.3, y = 57.2, f = "e" },
					{ t = "collect", itemName = "Captain Kelisendra's Lost Rutters", count = 1, map = 1944, x = 27.3, y = 57.2, f = "e" },
					{ t = "accept", quest = 8887, title = "Captain Kelisendra's Lost Rutters", map = 1944, x = 27.3, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8884, title = "Fish Heads, Fish Heads...", npc = 15920, npcName = "Hathvelion Sungaze", map = 1944, x = 30.2, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8887, title = "Captain Kelisendra's Lost Rutters", npc = 15921, npcName = "Captain Kelisendra", map = 1944, x = 36.4, y = 66.7, f = "e" },
					{ t = "accept", quest = 8886, title = "Grimscale Pirates!", npc = 15921, npcName = "Captain Kelisendra", map = 1944, x = 36.4, y = 66.7, f = "e" },
					{ t = "accept", quest = 8480, title = "Lost Armaments", npc = 15404, npcName = "Velendris Whitemorn", map = 1944, x = 36.4, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8480, itemName = "Sin'dorei Armaments", count = 8, oi = 1, map = 1944, x = 31.7, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8886, itemName = "Captain Kelisendra's Cargo", count = 6, oi = 1, map = 1944, x = 25.6, y = 70.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8886, title = "Grimscale Pirates!", npc = 15921, npcName = "Captain Kelisendra", map = 1944, x = 36.4, y = 66.7, f = "e" },
					{ t = "turnin", quest = 8480, title = "Lost Armaments", npc = 15404, npcName = "Velendris Whitemorn", map = 1944, x = 36.4, y = 66.7, f = "e" },
					{ t = "accept", quest = 9076, title = "Wretched Ringleader", npc = 15404, npcName = "Velendris Whitemorn", map = 1944, x = 36.4, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9076, itemName = "Aldaron's Head", count = 1, oi = 1, map = 1944, x = 32.8, y = 69.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9076, title = "Wretched Ringleader", npc = 15404, npcName = "Velendris Whitemorn", map = 1944, x = 36.4, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8491, title = "Pelt Collection", npc = 15417, npcName = "Velan Brightoak", map = 1944, x = 44.7, y = 69.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9395, title = "Saltheril's Haven", npc = 16210, npcName = "Magistrix Landra Dawnstrider", map = 1944, x = 44.0, y = 70.8, f = "e" },
					{ t = "accept", quest = 9254, title = "The Wayward Apprentice", npc = 16210, npcName = "Magistrix Landra Dawnstrider", map = 1944, x = 44.0, y = 70.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9358, title = "Ranger Sareyn", npc = 15397, npcName = "Marniel Amberlight", map = 1944, x = 43.7, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Fairbreeze Village", text = "Fairbreeze Village", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8892, title = "Situation at Sunsail Anchorage", npc = 15939, npcName = "Ranger Degolien", map = 1944, x = 43.3, y = 70.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9035, title = "Roadside Ambush", npc = 15945, npcName = "Apprentice Meledor", map = 1944, x = 44.9, y = 61.0, f = "e" },
					{ t = "accept", quest = 9062, title = "Soaked Pages", npc = 15945, npcName = "Apprentice Meledor", map = 1944, x = 44.9, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9062, itemName = "Antheol's Elemental Grimoire", count = 1, oi = 1, map = 1944, x = 44.3, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9062, title = "Soaked Pages", npc = 15945, npcName = "Apprentice Meledor", map = 1944, x = 44.9, y = 61.0, f = "e" },
					{ t = "accept", quest = 9064, title = "Taking the Fall", npc = 15945, npcName = "Apprentice Meledor", map = 1944, x = 44.9, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8482, title = "Incriminating Documents", npc = 15403, npcName = "Aeldon Sunbrand", map = 1944, x = 48.2, y = 46.0, f = "e" },
					{ t = "accept", quest = 8483, title = "The Dwarven Spy", npc = 15403, npcName = "Aeldon Sunbrand", map = 1944, x = 48.2, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8483, itemName = "Prospector Anvilward's Head", count = 1, oi = 1, map = 1944, x = 44.6, y = 53.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8483, title = "The Dwarven Spy", npc = 15403, npcName = "Aeldon Sunbrand", map = 1944, x = 48.2, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8475, title = "The Dead Scar", npc = 15416, npcName = "Ranger Jaela", map = 1944, x = 50.3, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8475, target = "Plaguebone Pillager", count = 8, oi = 1, map = 1944, x = 50.0, y = 52.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8475, title = "The Dead Scar", npc = 15416, npcName = "Ranger Jaela", map = 1944, x = 50.3, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9064, title = "Taking the Fall", npc = 15970, npcName = "Instructor Antheol", map = 1944, x = 55.7, y = 54.5, f = "e" },
					{ t = "accept", quest = 9066, title = "Swift Discipline", npc = 15970, npcName = "Instructor Antheol", map = 1944, x = 55.7, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9254, title = "The Wayward Apprentice", npc = 15402, npcName = "Apprentice Mirveda", map = 1944, x = 54.3, y = 71.0, f = "e" },
					{ t = "accept", quest = 8487, title = "Corrupted Soil", npc = 15402, npcName = "Apprentice Mirveda", map = 1944, x = 54.3, y = 71.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8487, item = 20771, itemName = "Tainted Soil Sample", count = 8, oi = 1, map = 1944, x = 52.6, y = 70.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8487, title = "Corrupted Soil", npc = 15402, npcName = "Apprentice Mirveda", map = 1944, x = 54.3, y = 71.0, f = "e" },
					{ t = "accept", quest = 8488, title = "Unexpected Results", npc = 15402, npcName = "Apprentice Mirveda", map = 1944, x = 54.3, y = 71.0, f = "e" },
				},
			},
			{
				note = "Protect Apprentice Mirveda from the ambushers",
				goals = {
					{ t = "turnin", quest = 8488, title = "Unexpected Results", map = 1944, x = 54.3, y = 71.0, f = "e" },
					{ t = "accept", quest = 9255, title = "Research Notes", map = 1944, x = 54.3, y = 71.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 9, f = "e" },
				},
			},
		},
	})
end

