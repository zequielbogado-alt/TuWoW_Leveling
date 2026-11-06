-- TuWoW_Leveling — Guides/Leveling_Alliance_32.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-western-plaguelands-51-52",
		pack = "guides",
		title = "Western Plaguelands",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-azshara-and-felwood-52-52",
		author = "TuWoW & Zygor",
		minLevel = 51,
		maxLevel = 52,
		zone = 1422,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 5066, title = "A Call to Arms: The Plaguelands!", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
					{ t = "turnin", quest = 5090, title = "A Call to Arms: The Plaguelands!", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
					{ t = "turnin", quest = 5091, title = "A Call to Arms: The Plaguelands!", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
					{ t = "accept", quest = 5092, title = "Clear the Way", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5401, title = "Argent Dawn Commission", npc = 10840, npcName = "Argent Officer Pureheart", map = 1422, x = 42.97, y = 83.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5092, npc = 1783, target = "Skeletal Flayer", count = 10, oi = 1, map = 1422, x = 50.8, y = 79.4, f = "e" },
					{ t = "kill", quest = 5092, npc = 1791, target = "Slavering Ghoul", count = 10, oi = 2, map = 1422, x = 50.8, y = 79.4, f = "e" },
				},
			},
			{
				note = "Helps reach level 52 after quest turnins.",
				goals = {
					{ t = "goto", text = "ding 51,148800", map = 1422, x = 50.8, y = 79.4 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5092, title = "Clear the Way", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
					{ t = "accept", quest = 5215, title = "The Scourge Cauldrons", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5215, title = "The Scourge Cauldrons", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.97, y = 84.5, f = "e" },
					{ t = "accept", quest = 5216, title = "Target: Felstone Field", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.97, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5216, item = 13194, itemName = "Felstone Field Cauldron Key", oi = 1, map = 1422, x = 37.03, y = 57.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5216, title = "Target: Felstone Field", map = 1422, x = 37.19, y = 56.87, f = "e" },
					{ t = "accept", quest = 5217, title = "Return to Chillwind Camp", map = 1422, x = 37.19, y = 56.87, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 5021, title = "Better Late Than Never", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.05, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5021, title = "Better Late Than Never", map = 1422, x = 38.73, y = 55.24, f = "e" },
					{ t = "accept", quest = 5022, title = "Better Late Than Never", map = 1422, x = 38.73, y = 55.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5217, title = "Return to Chillwind Camp", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.97, y = 84.5, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 7312, npcName = "Dink", map = 1455, x = 27.16, y = 8.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 5114, npcName = "Bilban Tosslespanner", map = 1455, x = 65.9, y = 88.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 5117, npcName = "Regnus Thundergranite", map = 1455, x = 69.87, y = 82.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 5167, npcName = "Fenthwick", map = 1455, x = 65.9, y = 88.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 5172, npcName = "Briarthorn", map = 1455, x = 50.35, y = 5.66, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6382, npcName = "Jubahl Corpseseeker", map = 1455, x = 50.35, y = 5.66, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5148, npcName = "Beldruk Doombrow", map = 1455, x = 24.54, y = 4.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 5143, npcName = "Toldren Deepiron", map = 1455, x = 25.21, y = 10.74, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "goto", text = "Train Ram Riding", map = 1426, x = 63.94, y = 50.1 },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "goto", text = "Train Mechanostrider Piloting", map = 1426, x = 49.15, y = 48.13 },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", text = "Train Horse Riding", map = 1429, x = 84.32, y = 64.87 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-azshara-and-felwood-52-52",
		pack = "guides",
		title = "Azshara & Felwood",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-feralas-and-azshara-52-53",
		author = "TuWoW & Zygor",
		minLevel = 52,
		maxLevel = 52,
		zone = 1438,
		version = 1,
		steps = {
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3661, title = "Favored of Elune?", npc = 7916, npcName = "Erelas Ambersky", map = 1438, x = 55.5, y = 92.05, f = "e" },
					{ t = "accept", quest = 978, title = "Moontouched Wildkin", npc = 7916, npcName = "Erelas Ambersky", map = 1438, x = 55.5, y = 92.05, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 2944, title = "The Super Snapper FX", npc = 7907, npcName = "Daryn Lightwind", map = 1438, x = 55.41, y = 92.23, f = "e" },
					{ t = "accept", quest = 2943, title = "Return to Troyas", npc = 7907, npcName = "Daryn Lightwind", map = 1438, x = 55.41, y = 92.23, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 162, item = 8594, itemName = "Insect Analysis Report", map = 1457, x = 39.6, y = 41.98, f = "e" },
					{ t = "collect", quest = 3908, item = 11133, itemName = "Linken's Training Sword", map = 1457, x = 39.6, y = 41.98, f = "e" },
					{ t = "collect", quest = 4142, item = 11316, itemName = "Bloodpetal", map = 1457, x = 39.6, y = 41.98, f = "e" },
					{ t = "collect", quest = 3764, item = 11018, itemName = "Un'Goro Soil", count = 20, map = 1457, x = 39.6, y = 41.98, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 5022, title = "Better Late Than Never", note = "bank Janice's Parcel##12724", map = 1457, x = 39.6, y = 41.98, f = "e" },
					{ t = "complete", quest = 3449, title = "Arcane Runes", note = "bank Standard Issue Flare Gun##10444", map = 1457, x = 39.6, y = 41.98, f = "e" },
					{ t = "complete", quest = 2641, title = "Sprinkle's Secret Ingredient", note = "bank Violet Tragan##8526", map = 1457, x = 39.6, y = 41.98, f = "e" },
				},
			},
			{
				note = "Walks around. Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 3763, title = "Assisting Arch Druid Staghelm", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 34.82, y = 9.25, f = "e" },
					{ t = "turnin", quest = 3789, title = "Assisting Arch Druid Staghelm", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 34.82, y = 9.25, f = "e" },
					{ t = "turnin", quest = 3790, title = "Assisting Arch Druid Staghelm", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 34.82, y = 9.25, f = "e" },
					{ t = "accept", quest = 3764, title = "Un'Goro Soil", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 34.82, y = 9.25, f = "e" },
				},
			},
			{
				note = "Outside the building.",
				goals = {
					{ t = "turnin", quest = 3764, title = "Un'Goro Soil", npc = 9047, npcName = "Jenal", map = 1457, x = 31.49, y = 8.23, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "goto", text = "Train Tiger Riding", map = 1457, x = 38.69, y = 15.84 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 162, title = "Rise of the Silithid", npc = 7740, npcName = "Gracina Spiritmight", map = 1457, x = 41.84, y = 85.62, f = "e" },
					{ t = "accept", quest = 4493, title = "March of the Silithid", npc = 7740, npcName = "Gracina Spiritmight", map = 1457, x = 41.84, y = 85.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Auberdine", map = 1439, x = 37.04, y = 44.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5535, title = "Spiritual Unrest", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.37, y = 78.16, f = "e" },
					{ t = "accept", quest = 5536, title = "A Land Filled with Hatred", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.37, y = 78.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5535, npc = 6116, target = "Highborne Apparition", count = 6, oi = 1, map = 1447, x = 13.4, y = 73.4, f = "e" },
					{ t = "kill", quest = 5535, npc = 6117, target = "Highborne Lichling", count = 6, oi = 2, map = 1447, x = 13.4, y = 73.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5536, npc = 6126, target = "Haldarr Trickster", count = 2, oi = 2, map = 1447, x = 19.8, y = 64.6, f = "e" },
					{ t = "kill", quest = 5536, npc = 6127, target = "Haldarr Felsworn", count = 2, oi = 3, map = 1447, x = 19.8, y = 64.6, f = "e" },
					{ t = "kill", quest = 5536, npc = 6125, target = "Haldarr Satyr", count = 6, oi = 1, map = 1447, x = 19.8, y = 64.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5535, title = "Spiritual Unrest", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.37, y = 78.17, f = "e" },
					{ t = "turnin", quest = 5536, title = "A Land Filled with Hatred", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.37, y = 78.17, f = "e" },
				},
			},
			{
				note = "Long questing session. No ammo vendor.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 14301, npcName = "Brinna Valanaar", map = 1447, x = 12.0, y = 78.38, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 4101, title = "Cleansing Felwood", npc = 9528, npcName = "Arathandris Silversky", map = 1448, x = 54.15, y = 86.83, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 5155, title = "Forces of Jaedenar", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.21, y = 82.11, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 4421, title = "The Corruption of the Jadefire", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8460, title = "Timbermaw Ally", npc = 11554, npcName = "Grazle", map = 1448, x = 50.93, y = 85.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8460, npc = 7153, target = "Deadwood Warrior", count = 6, oi = 1, map = 1448, x = 48.4, y = 89.2, f = "e" },
					{ t = "kill", quest = 8460, npc = 7155, target = "Deadwood Pathfinder", count = 6, oi = 2, map = 1448, x = 48.4, y = 89.2, f = "e" },
					{ t = "kill", quest = 8460, npc = 7154, target = "Deadwood Gardener", count = 6, oi = 3, map = 1448, x = 48.4, y = 89.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8460, title = "Timbermaw Ally", npc = 11554, npcName = "Grazle", map = 1448, x = 50.93, y = 85.02, f = "e" },
					{ t = "accept", quest = 8462, title = "Speak to Nafien", npc = 11554, npcName = "Grazle", map = 1448, x = 50.93, y = 85.02, f = "e" },
				},
			},
			{
				note = "Don't vendor them. Can be turned in later for xp and reputation.",
				goals = {
					{ t = "collect", item = 21377, itemName = "Deadwood Headdress Feather", map = 1448, x = 48.7, y = 91.0, f = "e" },
					{ t = "goto", text = "Reach Unfriendly Reputation with the Timbermaw Hold Faction", map = 1448, x = 48.4, y = 89.2 },
				},
			},
			{
				goals = {
					{ t = "use", item = 11912, itemName = "Package of Empty Ooze Containers" },
					{ t = "collect", quest = 4512, item = 11914, itemName = "Empty Cursed Ooze Jar", count = 6 },
					{ t = "collect", quest = 4512, item = 11948, itemName = "Empty Tainted Ooze Jar", count = 6 },
				},
			},
			{
				note = "On their corpses.",
				goals = {
					{ t = "use", item = 11914, itemName = "Empty Cursed Ooze Jar" },
					{ t = "collect", quest = 4512, item = 11947, itemName = "Filled Cursed Ooze Jar", count = 6, oi = 1, map = 1448, x = 41.6, y = 71.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1448, x = 36.85, y = 66.92 },
					{ t = "kill", quest = 4421, npc = 9454, target = "Xavathras", oi = 4, map = 1448, x = 32.24, y = 67.1, f = "e" },
				},
			},
			{
				label = "Kill_Jadefire_Enemies",
				along = true,
				note = "Stealthed.",
				goals = {
					{ t = "kill", quest = 4421, npc = 7110, target = "Jadefire Shadowstalker", count = 9, oi = 2, map = 1448, x = 34.4, y = 66.4, f = "e" },
					{ t = "kill", quest = 4421, npc = 7106, target = "Jadefire Rogue", count = 9, oi = 3, map = 1448, x = 34.4, y = 66.4, f = "e" },
					{ t = "kill", quest = 4421, npc = 7109, target = "Jadefire Felsworn", count = 11, oi = 1, map = 1448, x = 34.4, y = 66.4, f = "e" },
				},
			},
			{
				note = "On their corpses.",
				goals = {
					{ t = "use", item = 11948, itemName = "Empty Tainted Ooze Jar" },
					{ t = "collect", quest = 4512, item = 11949, itemName = "Filled Tainted Ooze Jar", count = 6, oi = 2, map = 1448, x = 40.8, y = 59.0, f = "e" },
				},
			},
			{
				note = "More inside the caves.",
				goals = {
					{ t = "kill", quest = 5155, npc = 7125, target = "Jaedenar Hound", count = 4, oi = 1, map = 1448, x = 40.4, y = 57.6, f = "e" },
					{ t = "kill", quest = 5155, npc = 7113, target = "Jaedenar Guardian", count = 4, oi = 2, map = 1448, x = 40.4, y = 57.6, f = "e" },
					{ t = "kill", quest = 5155, npc = 7115, target = "Jaedenar Adept", count = 6, oi = 3, map = 1448, x = 40.4, y = 57.6, f = "e" },
					{ t = "kill", quest = 5155, npc = 7112, target = "Jaedenar Cultist", count = 6, oi = 4, map = 1448, x = 40.4, y = 57.6, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 5155, title = "Forces of Jaedenar", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.21, y = 82.11, f = "e" },
					{ t = "accept", quest = 5157, title = "Collection of the Corrupt Water", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.21, y = 82.11, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4421, title = "The Corruption of the Jadefire", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
					{ t = "accept", quest = 4906, title = "Further Corruption", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 5156, title = "Verifying the Corruption", npc = 10921, npcName = "Taronn Redfeather", map = 1448, x = 50.89, y = 81.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path into Jaedenar", map = 1448, x = 38.37, y = 59.85 },
					{ t = "use", item = 12922, itemName = "Empty Canteen" },
					{ t = "collect", quest = 5157, item = 12907, itemName = "Corrupt Moonwell Water", oi = 1, map = 1448, x = 35.2, y = 59.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5156, title = "Verifying the Corruption", note = "Explore the Craters in Shatter Scar Vale", map = 1448, x = 41.54, y = 42.98, f = "e" },
				},
			},
			{
				label = "Kill_Entropic_Beasts_And_Horrors",
				along = true,
				goals = {
					{ t = "kill", quest = 5156, npc = 9878, target = "Entropic Beast", count = 2, oi = 1, map = 1448, x = 42.6, y = 41.4, f = "e" },
					{ t = "kill", quest = 5156, npc = 9879, target = "Entropic Horror", count = 2, oi = 2, map = 1448, x = 42.6, y = 41.4, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Follow the path up into Jadefire Run", map = 1448, x = 43.07, y = 21.32 },
					{ t = "kill", quest = 4906, npc = 10648, target = "Xavaric", oi = 4, map = 1448, x = 39.07, y = 22.35, f = "e" },
					{ t = "collect", quest = 939, item = 11668, itemName = "Flute of Xavaric", map = 1448, x = 39.07, y = 22.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 11668, itemName = "Flute of Xavaric" },
					{ t = "accept", quest = 939, title = "Flute of Xavaric" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 939, item = 11674, itemName = "Jadefire Felbind", count = 5, oi = 1, map = 1448, x = 40.4, y = 20.0, f = "e" },
				},
			},
			{
				label = "Kill_Jadefire_Enemies_4906",
				along = true,
				goals = {
					{ t = "kill", quest = 4906, npc = 7111, target = "Jadefire Hellcaller", count = 8, oi = 1, map = 1448, x = 40.4, y = 20.0, f = "e" },
					{ t = "kill", quest = 4906, npc = 7108, target = "Jadefire Betrayer", count = 8, oi = 2, map = 1448, x = 40.4, y = 20.0, f = "e" },
					{ t = "kill", quest = 4906, npc = 7107, target = "Jadefire Trickster", count = 8, oi = 3, map = 1448, x = 40.4, y = 20.0, f = "e" },
				},
			},
			{
				note = "Swamp elementals. Inside and outside the cave.",
				goals = {
					{ t = "collect", quest = 4101, item = 11503, itemName = "Blood Amber", count = 15, oi = 1, map = 1448, x = 55.78, y = 16.85, f = "e" },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1448, x = 55.88, y = 17.15 },
					{ t = "getfp", location = "Talonbranch Glade", map = 1448, x = 62.49, y = 24.24, f = "e" },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "turnin", quest = 8462, title = "Speak to Nafien", npc = 15395, npcName = "Nafien", map = 1448, x = 64.77, y = 8.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3909, title = "The Videre Elixir", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "turnin", quest = 3908, title = "It's a Secret to Everybody", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
				},
			},
			{
				note = "Large blue feathers. Make your way east.",
				goals = {
					{ t = "collect", quest = 978, item = 12383, itemName = "Moontouched Feather", count = 10, oi = 1, map = 1452, x = 29.4, y = 46.7, f = "e" },
				},
			},
			{
				note = "Taming a temporary pet soon. Learning Claw (Rank 7).",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 4101, title = "Cleansing Felwood", note = "Stable Your Pet", map = 1452, x = 60.39, y = 37.92, f = "e" },
				},
			},
			{
				note = "Outside the walls.",
				goals = {
					{ t = "getfp", location = "Everlook", map = 1452, x = 62.33, y = 36.61, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on an Angerclaw Mauler. Diseased brown bears. Kill enemies nearby.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 4101, title = "Cleansing Felwood", note = "Learn the Claw (Rank 7) Pet Ability", map = 1448, x = 47.4, y = 15.4, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5156, title = "Verifying the Corruption", npc = 10921, npcName = "Taronn Redfeather", map = 1448, x = 50.89, y = 81.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 939, title = "Flute of Xavaric", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
					{ t = "accept", quest = 4441, title = "Felbound Ancients", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
					{ t = "turnin", quest = 4906, title = "Further Corruption", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 5157, title = "Collection of the Corrupt Water", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.21, y = 82.11, f = "e" },
					{ t = "accept", quest = 5158, title = "Seeking Spiritual Aid", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.21, y = 82.11, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 4101, title = "Cleansing Felwood", npc = 9528, npcName = "Arathandris Silversky", map = 1448, x = 54.15, y = 86.83, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "collect", quest = 5882, item = 11511, itemName = "Cenarion Beacon", map = 1448, x = 54.15, y = 86.83, f = "e" },
				},
			},
			{
				note = "Abandon your temporary pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Retrieve Your Pet", map = 1439, x = 37.4, y = 44.28 },
				},
			},
		},
	})
end

