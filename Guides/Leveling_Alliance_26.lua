-- TuWoW_Leveling — Guides/Leveling_Alliance_26.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-45-50-part-2",
		pack = "guides",
		title = "Levels (45-50) (Parte 2/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-45-50-part-3",
		author = "TuWoW & Zygor",
		minLevel = 47,
		maxLevel = 50,
		zone = 1446,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 3661, title = "Favored of Elune?", npc = 7916, npcName = "Erelas Ambersky", map = 1438, x = 55.5, y = 92.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2944, title = "The Super Snapper FX", npc = 7907, npcName = "Daryn Lightwind", map = 1438, x = 55.4, y = 92.2, f = "e" },
					{ t = "accept", quest = 2943, title = "Return to Troyas", npc = 7907, npcName = "Daryn Lightwind", map = 1438, x = 55.4, y = 92.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Feathermoon Stronghold", text = "Feathermoon Stronghold", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2943, title = "Return to Troyas", npc = 7764, npcName = "Troyas Moonbreeze", map = 1438, x = 31.8, y = 45.6, f = "e" },
					{ t = "accept", quest = 2879, title = "The Stave of Equinex", npc = 7764, npcName = "Troyas Moonbreeze", map = 1438, x = 31.8, y = 45.6, f = "e" },
					{ t = "accept", quest = 3445, title = "The Sunken Temple", npc = 7900, npcName = "Angelas Moonbreeze", map = 1438, x = 31.8, y = 45.6, f = "e" },
				},
			},
			{
				note = "Ride the boat to the main continent of Feralas|goto Feralas,43.5,42.7,1|noway|c",
				goals = {
					{ t = "goto", map = 1438, x = 31.0, y = 39.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7003, title = "Zapped Giants", npc = 14637, npcName = "Zorbin Fandazzle", map = 1438, x = 44.8, y = 43.4, f = "e" },
					{ t = "accept", quest = 7721, title = "Fuel for the Zapping", npc = 14637, npcName = "Zorbin Fandazzle", map = 1438, x = 44.8, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "the shrunken giants", count = 1, map = 1438, x = 44.8, y = 47.3, f = "e" },
					{ t = "collect", quest = 7003, itemName = "Miniaturization Residue", count = 15, oi = 1, map = 1438, x = 44.8, y = 47.3, f = "e" },
					{ t = "kill", target = "water elementals", count = 1, map = 1438, x = 44.8, y = 47.3, f = "e" },
					{ t = "collect", quest = 7721, itemName = "Water Elemental Core", count = 10, oi = 1, map = 1438, x = 44.8, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7003, title = "Zapped Giants", npc = 14637, npcName = "Zorbin Fandazzle", map = 1438, x = 44.8, y = 43.4, f = "e" },
					{ t = "turnin", quest = 7721, title = "Fuel for the Zapping", npc = 14637, npcName = "Zorbin Fandazzle", map = 1438, x = 44.8, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1438, x = 51.5, y = 32.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Rage Scar Yetis", count = 1, map = 1438, x = 52.2, y = 31.6, f = "e" },
					{ t = "collect", quest = 7733, itemName = "Rage Scar Yeti Hide", count = 10, oi = 1, map = 1438, x = 52.2, y = 31.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2844, title = "The Giant Guardian", npc = 7765, npcName = "Rockbiter", map = 1438, x = 42.4, y = 22.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2879, item = 9258, itemName = "Byltan Essence", count = 1, oi = 1, map = 1438, x = 38.5, y = 15.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1438, x = 40.3, y = 11.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2879, item = 9257, itemName = "Samha Essence", count = 1, oi = 1, map = 1438, x = 40.5, y = 12.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2879, item = 9256, itemName = "Imbel Essence", count = 1, oi = 1, map = 1438, x = 39.9, y = 9.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2879, item = 9255, itemName = "Lahassa Essence", count = 1, oi = 1, map = 1438, x = 37.7, y = 12.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2879, title = "The Stave of Equinex", map = 1438, x = 38.8, y = 13.2, f = "e" },
					{ t = "accept", quest = 2942, title = "The Morrow Stone", map = 1438, x = 38.8, y = 13.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2844, title = "The Giant Guardian", npc = 7774, npcName = "Shay Leafrunner", map = 1438, x = 38.2, y = 10.3, f = "e" },
					{ t = "accept", quest = 2845, title = "Wandering Shay", npc = 7774, npcName = "Shay Leafrunner", map = 1438, x = 38.2, y = 10.3, f = "e" },
					{ t = "collect", quest = 2845, item = 9189, itemName = "Shay's Bell", count = 1, oi = 2, map = 1438, x = 38.2, y = 10.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2845, title = "Wandering Shay", npc = 7765, npcName = "Rockbiter", map = 1438, x = 42.4, y = 22.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3841, title = "An Orphan Looking For a Home", npc = 7956, npcName = "Kindal Moonweaver", map = 1438, x = 65.9, y = 45.6, f = "e" },
				},
			},
			{
				note = "Hearth to Feathermoon Stronghold|goto Feralas,31.0,44.0,5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7733, title = "Improved Quality", npc = 7852, npcName = "Pratt McGrubben", map = 1438, x = 30.6, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2942, title = "The Morrow Stone", npc = 7764, npcName = "Troyas Moonbreeze", map = 1438, x = 31.8, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2605, title = "The Thirsty Goblin", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.8, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Gadgetzan", text = "Gadgetzan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5863, title = "The Dunemaul Compound", npc = 11758, npcName = "Andi Lynn", map = 1446, x = 52.8, y = 27.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3362, title = "Thistleshrub Valley", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.6, y = 26.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 992, title = "Gadgetzan Water Survey", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 992, itemName = "Tapped Dowsing Widget", count = 1, oi = 1, map = 1446, x = 38.6, y = 29.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 992, title = "Gadgetzan Water Survey", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
					{ t = "accept", quest = 82, title = "Noxious Lair Investigation", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3445, title = "The Sunken Temple", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.7, y = 45.9, f = "e" },
					{ t = "accept", quest = 3444, title = "The Stone Circle", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.7, y = 45.9, f = "e" },
					{ t = "accept", quest = 3161, title = "Gahz'ridian", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.7, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5863, target = "Dunemaul Brute", count = 10, oi = 1, map = 1446, x = 40.8, y = 55.0, f = "e" },
					{ t = "kill", quest = 5863, target = "Dunemaul Enforcer", count = 10, oi = 2, map = 1446, x = 40.8, y = 55.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5863, target = "Gor'marok the Ravager", count = 1, oi = 3, map = 1446, x = 41.5, y = 57.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Centipaar insects", count = 1, map = 1446, x = 34.8, y = 51.0, f = "e" },
					{ t = "collect", quest = 82, itemName = "Centipaar Insect Parts", count = 5, oi = 1, map = 1446, x = 34.8, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 3362, target = "Gnarled Thistleshrub", count = 8, oi = 1, map = 1446, x = 28.5, y = 65.3, f = "e" },
					{ t = "kill", quest = 3362, target = "Thistleshrub Rootshaper", count = 8, oi = 2, map = 1446, x = 28.5, y = 65.3, f = "e" },
					{ t = "kill", target = "Thistleshrub Dew Collectors", count = 1, map = 1446, x = 28.5, y = 65.3, f = "e" },
					{ t = "collect", quest = 2605, itemName = "Laden Dew Gland", count = 1, oi = 1, map = 1446, x = 28.5, y = 65.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3161, itemName = "Gahz'ridian Ornament", count = 30, oi = 1, map = 1446, x = 38.5, y = 72.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3161, title = "Gahz'ridian", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.7, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4324, title = "Yuka Screwspigot", npc = 9706, npcName = "Yorba Screwspigot", map = 1446, x = 67.0, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3520, title = "Screecher Spirits", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 67.0, y = 22.4, f = "e" },
				},
			},
			{
				note = "Hearth to Gadgetzan|goto Tanaris,51.7,27.8,6|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2605, title = "The Thirsty Goblin", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.8, y = 28.7, f = "e" },
					{ t = "accept", quest = 2606, title = "In Good Taste", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.8, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5863, title = "The Dunemaul Compound", npc = 11758, npcName = "Andi Lynn", map = 1446, x = 52.8, y = 27.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3362, title = "Thistleshrub Valley", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.6, y = 26.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2606, title = "In Good Taste", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.1, y = 26.9, f = "e" },
					{ t = "accept", quest = 2641, title = "Sprinkle's Secret Ingredient", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.1, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 82, title = "Noxious Lair Investigation", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.9, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10, title = "The Scrimshank Redemption", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 56.0, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 55.8, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10, itemName = "Scrimshank's Surveying Gear", count = 1, oi = 1, map = 1446, x = 56.0, y = 71.2, f = "e" },
				},
			},
			{
				note = "Go outside to 50.2,27.5",
				goals = {
					{ t = "turnin", quest = 10, title = "The Scrimshank Redemption", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
					{ t = "accept", quest = 110, title = "Insect Part Analysis (1)", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 110, title = "Insect Part Analysis (1)", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.9, y = 27.0, f = "e" },
					{ t = "accept", quest = 113, title = "Insect Part Analysis (2)", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.9, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 113, title = "Insect Part Analysis (2)", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
					{ t = "accept", quest = 162, title = "Rise of the Silithid", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.2, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 49, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3841, title = "An Orphan Looking For a Home", npc = 9238, npcName = "Quentin", map = 1441, x = 78.3, y = 74.7, f = "e" },
					{ t = "accept", quest = 3842, title = "A Short Incubation", npc = 9238, npcName = "Quentin", map = 1441, x = 78.3, y = 74.7, f = "e" },
					{ t = "turnin", quest = 3842, title = "A Short Incubation", npc = 9238, npcName = "Quentin", map = 1441, x = 78.3, y = 74.7, f = "e" },
					{ t = "accept", quest = 3843, title = "The Newest Member of the Family", npc = 9238, npcName = "Quentin", map = 1441, x = 78.3, y = 74.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3448, title = "Passing the Burden", npc = 2916, npcName = "Historian Karnik", map = 1455, x = 77.5, y = 11.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3448, title = "Passing the Burden", npc = 8507, npcName = "Tymor", map = 1455, x = 31.0, y = 4.8, f = "e" },
					{ t = "accept", quest = 3449, title = "Arcane Runes", npc = 8507, npcName = "Tymor", map = 1455, x = 31.0, y = 4.8, f = "e" },
					{ t = "accept", quest = 3450, title = "An Easy Pickup", npc = 8507, npcName = "Tymor", map = 1455, x = 31.0, y = 4.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3450, title = "An Easy Pickup", npc = 8517, npcName = "Xiggs Fuselighter", map = 1455, x = 70.9, y = 94.6, f = "e" },
					{ t = "accept", quest = 3451, title = "Signal for Pickup", npc = 8517, npcName = "Xiggs Fuselighter", map = 1455, x = 70.9, y = 94.6, f = "e" },
					{ t = "turnin", quest = 3451, title = "Signal for Pickup", npc = 8517, npcName = "Xiggs Fuselighter", map = 1455, x = 70.9, y = 94.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3843, title = "The Newest Member of the Family", npc = 9660, npcName = "Agnar Beastamer", map = 1425, x = 14.2, y = 43.6, f = "e" },
					{ t = "accept", quest = 4297, title = "Food for Baby", npc = 9660, npcName = "Agnar Beastamer", map = 1425, x = 14.2, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2641, itemName = "Violet Tragan", count = 1, oi = 1, map = 1425, x = 40.7, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Silvermane Stalkers", count = 1, map = 1425, x = 70.0, y = 58.0, f = "e" },
					{ t = "collect", quest = 4297, itemName = "Silvermane Stalker Flank", count = 5, oi = 1, map = 1425, x = 70.0, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4297, title = "Food for Baby", npc = 9660, npcName = "Agnar Beastamer", map = 1425, x = 14.2, y = 43.6, f = "e" },
					{ t = "accept", quest = 4298, title = "Becoming a Parent", npc = 9660, npcName = "Agnar Beastamer", map = 1425, x = 14.2, y = 43.6, f = "e" },
					{ t = "turnin", quest = 4298, title = "Becoming a Parent", npc = 9660, npcName = "Agnar Beastamer", map = 1425, x = 14.2, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Booty Bay", text = "Booty Bay", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 580, title = "Whiskey Slim's Lost Grog", npc = 2491, npcName = "Whiskey Slim", map = 1425, x = 27.1, y = 77.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 348, title = "Stranglethorn Fever", npc = 2486, npcName = "Fin Fizracket", map = 1425, x = 27.6, y = 76.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "the Carefully Folded Note", count = 1, map = 1425, x = 35.1, y = 72.9, f = "e" },
					{ t = "accept", quest = 594, title = "Message in a Bottle (1)", map = 1425, x = 35.1, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "gorillas", count = 1, map = 1425, x = 31.2, y = 68.0, f = "e" },
					{ t = "collect", quest = 348, item = 2799, itemName = "Gorilla Fang", count = 1, map = 1425, x = 31.2, y = 68.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 348, itemName = "Heart of Mokk", count = 1, oi = 1, map = 1425, x = 35.3, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 208, itemName = "Head of Bangalash", count = 1, oi = 1, map = 1425, x = 38.2, y = 36.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 208, title = "Big Game Hunter", npc = 715, npcName = "Hemet Nesingwary Jr.", map = 1425, x = 35.8, y = 10.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 24366, npcName = "Nizzle", map = 1425, x = 38.2, y = 4.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 348, title = "Stranglethorn Fever", npc = 2486, npcName = "Fin Fizracket", map = 1425, x = 27.6, y = 76.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 594, title = "Message in a Bottle (1)", npc = 2634, npcName = "Princess Poobah", map = 1425, x = 38.5, y = 80.6, f = "e" },
					{ t = "accept", quest = 630, title = "Message in a Bottle (2)", npc = 2634, npcName = "Princess Poobah", map = 1425, x = 38.5, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 630, itemName = "Shackle Key", count = 1, oi = 1, map = 1425, x = 41.0, y = 83.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 630, title = "Message in a Bottle (2)", npc = 2634, npcName = "Princess Poobah", map = 1425, x = 38.5, y = 80.6, f = "e" },
				},
			},
			{
				note = "While doing the next 3 steps, look for Cortello's Riddle on the ships:",
				goals = {
					{ t = "accept", quest = 624, title = "Cortello's Riddle (1)", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 608, target = "Captain Stillwater", count = 1, oi = 1, map = 1425, x = 32.9, y = 88.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 608, target = "Fleet Master Firallon", count = 1, oi = 3, map = 1425, x = 30.6, y = 90.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 608, target = "Captain Keelhaul", count = 1, oi = 2, map = 1425, x = 29.2, y = 88.3, f = "e" },
				},
			},
			{
				note = "Make sure you have accepted the Cortello's Riddle quest:",
				goals = {
					{ t = "accept", quest = 624, title = "Cortello's Riddle (1)", f = "e" },
				},
			},
			{
				note = "Hearth to Booty Bay|goto Stranglethorn Vale,27.7,74.6,6|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 608, title = "The Bloodsail Buccaneers (5)", npc = 2487, npcName = "Fleet Master Seahorn", map = 1425, x = 27.2, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 624, title = "Cortello's Riddle (1)", map = 1435, x = 22.9, y = 48.2, f = "e" },
					{ t = "accept", quest = 625, title = "Cortello's Riddle (2)", map = 1435, x = 22.9, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2581, title = "Snickerfang Jowls", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.6, y = 14.2, f = "e" },
					{ t = "accept", quest = 2583, title = "A Boar's Vitality", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.6, y = 14.2, f = "e" },
					{ t = "accept", quest = 2585, title = "The Decisive Striker", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.6, y = 14.2, f = "e" },
					{ t = "accept", quest = 2601, title = "The Basilisk's Bite", npc = 7506, npcName = "Bloodmage Lynnore", map = 1419, x = 50.6, y = 14.2, f = "e" },
					{ t = "accept", quest = 2603, title = "Vulture's Vigor", npc = 7506, npcName = "Bloodmage Lynnore", map = 1419, x = 50.6, y = 14.2, f = "e" },
				},
			},
			{
				note = "Follow the Grinding Circle killing boars, hyenas, vultures, basilisks, and scorpions until you: Skip this step if you have done the quests from the previous step already.",
				goals = {
					{ t = "collect", item = 8392, itemName = "Blasted Boar Lung", count = 6, f = "e" },
					{ t = "collect", item = 8391, itemName = "Snickerfang Jowl", count = 5, f = "e" },
					{ t = "collect", item = 8396, itemName = "Vulture Gizzard", count = 14, f = "e" },
					{ t = "collect", item = 8394, itemName = "Basilisk Brain", count = 11, f = "e" },
					{ t = "collect", item = 8393, itemName = "Scorpok Pincer", count = 6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-45-50-part-3",
		pack = "guides",
		title = "Levels (45-50) (Parte 3/3)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 49,
		maxLevel = 50,
		zone = 1446,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 2601, title = "The Basilisk's Bite", npc = 7506, npcName = "Bloodmage Lynnore", map = 1419, x = 50.7, y = 14.2, f = "e" },
					{ t = "turnin", quest = 2603, title = "Vulture's Vigor", npc = 7506, npcName = "Bloodmage Lynnore", map = 1419, x = 50.7, y = 14.2, f = "e" },
					{ t = "turnin", quest = 2581, title = "Snickerfang Jowls", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.7, y = 14.2, f = "e" },
					{ t = "turnin", quest = 2583, title = "A Boar's Vitality", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.7, y = 14.2, f = "e" },
					{ t = "turnin", quest = 2585, title = "The Decisive Striker", npc = 7505, npcName = "Bloodmage Drazial", map = 1419, x = 50.7, y = 14.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 50, f = "e" },
				},
			},
		},
	})
end

