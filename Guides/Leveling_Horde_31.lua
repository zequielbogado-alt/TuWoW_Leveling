-- TuWoW_Leveling — Guides/Leveling_Horde_31.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-outland-62-64",
		pack = "guides",
		title = "Outland (62-64) (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-outland-62-64-part-2",
		author = "TuWoW & Zygor",
		minLevel = 62,
		maxLevel = 64,
		zone = 1944,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 9381, itemName = "Bonestripper Tail Feather", count = 8, oi = 1, map = 1944, x = 30.2, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 40.1, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10389, target = "Terrorfiend", count = 10, oi = 1, map = 1944, x = 39.4, y = 36.1, f = "e" },
					{ t = "collect", quest = 9366, itemName = "Felblood Sample", count = 6, oi = 1, map = 1944, x = 39.4, y = 36.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9340, target = "Stonescythe Whelp", count = 8, oi = 1, map = 1944, x = 35.5, y = 57.4, f = "e" },
					{ t = "kill", quest = 9340, target = "Stonescythe Alpha", count = 3, oi = 2, map = 1944, x = 35.5, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9374, title = "Arelion's Journal", npc = 16793, npcName = "Magistrix Carinda", map = 1944, x = 26.4, y = 60.3, f = "e" },
					{ t = "accept", quest = 10286, title = "Arelion's Secret", npc = 16793, npcName = "Magistrix Carinda", map = 1944, x = 26.4, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9366, title = "In Need of Felblood", npc = 16791, npcName = "Ryathen the Somber", map = 1944, x = 27.0, y = 59.5, f = "e" },
					{ t = "accept", quest = 9370, title = "The Cleansing Must Be Stopped", npc = 16791, npcName = "Ryathen the Somber", map = 1944, x = 27.0, y = 59.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9381, title = "Trueflight Arrows", npc = 16790, npcName = "Falconer Drenna Riverwind", map = 1944, x = 27.7, y = 60.3, f = "e" },
				},
			},
			{
				note = "Go inside the building next to the flight path",
				goals = {
					{ t = "goto", map = 1944, x = 28.5, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9340, title = "The Great Fissure", npc = 16789, npcName = "Ranger Captain Venn'ren", map = 1944, x = 28.5, y = 60.2, f = "e" },
					{ t = "accept", quest = 9391, title = "Marking the Path", npc = 16789, npcName = "Ranger Captain Venn'ren", map = 1944, x = 28.5, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9370, target = "Draenei Anchorite", count = 1, oi = 1, map = 1944, x = 39.0, y = 40.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10286, title = "Arelion's Secret", npc = 20159, npcName = "Magister Aledis", map = 1944, x = 18.1, y = 49.9, f = "e" },
					{ t = "accept", quest = 10287, title = "The Mistress Revealed", npc = 20159, npcName = "Magister Aledis", map = 1944, x = 18.1, y = 49.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9373, title = "Missing Missive", npc = 16991, npcName = "Thiah Redmane", map = 1944, x = 15.7, y = 52.0, f = "e" },
					{ t = "turnin", quest = 10442, title = "Helping the Cenarion Post", npc = 16991, npcName = "Thiah Redmane", map = 1944, x = 15.7, y = 52.0, f = "e" },
					{ t = "accept", quest = 9372, title = "Demonic Contamination", npc = 16991, npcName = "Thiah Redmane", map = 1944, x = 15.7, y = 52.0, f = "e" },
					{ t = "accept", quest = 10159, title = "Keep Thornfang Hill Clear!", npc = 16888, npcName = "Mahuram Stouthoof", map = 1944, x = 15.7, y = 52.0, f = "e" },
					{ t = "accept", quest = 9912, title = "The Cenarion Expedition", npc = 16885, npcName = "Amythiel Mistwalker", map = 1944, x = 15.7, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9372, itemName = "Helboar Blood Sample", count = 6, oi = 1, map = 1944, x = 24.9, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10287, title = "The Mistress Revealed", npc = 16793, npcName = "Magistrix Carinda", map = 1944, x = 26.4, y = 60.3, f = "e" },
					{ t = "accept", quest = 9472, title = "Arelion's Mistress", npc = 16793, npcName = "Magistrix Carinda", map = 1944, x = 26.4, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9370, title = "The Cleansing Must Be Stopped", npc = 16791, npcName = "Ryathen the Somber", map = 1944, x = 27.0, y = 59.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 30.0, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 34.0, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 36.1, y = 65.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9391, title = "Marking the Path", npc = 16789, npcName = "Ranger Captain Venn'ren", map = 1944, x = 28.5, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9372, title = "Demonic Contamination", npc = 16991, npcName = "Thiah Redmane", map = 1944, x = 15.7, y = 52.0, f = "e" },
					{ t = "accept", quest = 10255, title = "Testing the Antidote", npc = 16991, npcName = "Thiah Redmane", map = 1944, x = 15.7, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 25.0, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10255, title = "Testing the Antidote", npc = 16991, npcName = "Thiah Redmane", map = 1944, x = 15.7, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10159, target = "Thornfang Ravager", count = 8, oi = 1, map = 1944, x = 12.3, y = 49.9, f = "e" },
					{ t = "kill", quest = 10159, target = "Thornfang Venomspitter", count = 8, oi = 2, map = 1944, x = 12.3, y = 49.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 18907, npcName = "Innkeeper Coryth Stoktron", itemName = "Cenarion Spirits", count = 1, map = 1946, x = 78.5, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10159, title = "Keep Thornfang Hill Clear!", npc = 16888, npcName = "Mahuram Stouthoof", map = 1944, x = 15.7, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9387, itemName = "Demonic Essence", count = 5, oi = 1, map = 1944, x = 15.1, y = 55.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10403, title = "Naladu", npc = 20678, npcName = "Akoru the Firecaller", map = 1944, x = 15.6, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10403, title = "Naladu", npc = 19361, npcName = "Naladu", map = 1944, x = 16.3, y = 65.1, f = "e" },
					{ t = "accept", quest = 10367, title = "A Traitor Among Us", npc = 19361, npcName = "Naladu", map = 1944, x = 16.3, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10367, itemName = "Sha'naar Key", count = 1, oi = 1, map = 1944, x = 14.3, y = 63.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10367, title = "A Traitor Among Us", npc = 19361, npcName = "Naladu", map = 1944, x = 16.3, y = 65.1, f = "e" },
					{ t = "accept", quest = 10368, title = "The Dreghood Elders", npc = 19361, npcName = "Naladu", map = 1944, x = 16.3, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 20678, npcName = "Akoru the Firecaller", map = 1944, x = 15.6, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 20679, npcName = "Aylaan the Waterwaker", map = 1944, x = 13.0, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 20677, npcName = "Morod the Windstirrer", map = 1944, x = 13.1, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10368, title = "The Dreghood Elders", npc = 19361, npcName = "Naladu", map = 1944, x = 16.3, y = 65.1, f = "e" },
					{ t = "accept", quest = 10369, title = "Arzeth's Demise", npc = 19361, npcName = "Naladu", map = 1944, x = 16.3, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10369, target = "Arzeth the Powerless", count = 1, oi = 1, map = 1944, x = 14.4, y = 62.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10369, title = "Arzeth's Demise", npc = 19361, npcName = "Naladu", map = 1944, x = 16.3, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9387, title = "Source of the Corruption", npc = 16794, npcName = "Apothecary Azethen", map = 1944, x = 26.8, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9483, title = "Life's Finer Pleasures", npc = 17226, npcName = "Viera Sunwhisper", map = 1944, x = 27.1, y = 62.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9472, title = "Arelion's Mistress", npc = 16793, npcName = "Magistrix Carinda", map = 1944, x = 26.4, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Haal'eshi arakkoas", count = 1, map = 1944, x = 25.6, y = 70.3, f = "e" },
					{ t = "collect", quest = 9396, itemName = "Haal'eshi Scroll", count = 4, oi = 1, map = 1944, x = 25.6, y = 70.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 25.4, y = 71.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 26.2, y = 77.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Avruu's Orb", count = 1, map = 1944, x = 25.7, y = 75.1, f = "e" },
					{ t = "accept", quest = 9418, title = "Avruu's Orb", map = 1944, x = 25.7, y = 75.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9418, title = "Avruu's Orb", npc = 17085, npcName = "Aeranas", map = 1944, x = 29.0, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9375, title = "The Road to Falcon Watch", npc = 16993, npcName = "Wounded Blood Elf Pilgrim", map = 1944, x = 24.6, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9375, title = "The Road to Falcon Watch", npc = 17015, npcName = "Taleris Dawngazer", map = 1944, x = 27.2, y = 61.9, f = "e" },
					{ t = "accept", quest = 9376, title = "A Pilgrim's Plight", npc = 17015, npcName = "Taleris Dawngazer", map = 1944, x = 27.2, y = 61.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9396, title = "Magic of the Arakkoa", npc = 16792, npcName = "Arcanist Calesthris Dawnstar", map = 1944, x = 27.1, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9397, title = "Birds of a Feather", npc = 16790, npcName = "Falconer Drenna Riverwind", map = 1944, x = 27.7, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10389, title = "The Agony and the Darkness", npc = 21175, npcName = "Magister Bloodhawk", map = 1944, x = 55.1, y = 36.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9401, title = "A Strange Weapon", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
					{ t = "accept", quest = 9405, title = "The Warchief's Mandate", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9405, title = "The Warchief's Mandate", npc = 16574, npcName = "Far Seer Regulkut", map = 1944, x = 54.2, y = 37.9, f = "e" },
					{ t = "accept", quest = 9410, title = "A Spirit Guide", npc = 16574, npcName = "Far Seer Regulkut", map = 1944, x = 54.2, y = 37.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1944, x = 33.6, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9410, title = "A Spirit Guide", npc = 16845, npcName = "Gorkan Bloodfist", map = 1944, x = 32.0, y = 27.8, f = "e" },
					{ t = "accept", quest = 9406, title = "The Mag'har", npc = 16845, npcName = "Gorkan Bloodfist", map = 1944, x = 32.0, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9406, title = "The Mag'har", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
					{ t = "accept", quest = 9438, title = "Messenger to Thrall", npc = 3230, npcName = "Nazgrel", map = 1944, x = 55.0, y = 36.0, f = "e" },
				},
			},
			{
				note = "Go through the portal to Orgrimmar|goto Orgrimmar|c",
				goals = {
					{ t = "goto", map = 1944, x = 52.2, y = 52.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9438, title = "Messenger to Thrall", npc = 4949, npcName = "Thrall", map = 1454, x = 31.8, y = 37.8, f = "e" },
					{ t = "accept", quest = 9441, title = "Envoy to the Mag'har", npc = 4949, npcName = "Thrall", map = 1454, x = 31.8, y = 37.8, f = "e" },
				},
			},
			{
				note = "Go through the portal to Blasted Lands|goto Blasted Lands|c",
				goals = {
					{ t = "goto", map = 1454, x = 38.1, y = 86.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1454, x = 30.3, y = 35.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9441, title = "Envoy to the Mag'har", npc = 16845, npcName = "Gorkan Bloodfist", map = 1454, x = 32.0, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9376, itemName = "Torn Pilgrim's Pack", count = 1, oi = 1, map = 1454, x = 22.1, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9376, title = "A Pilgrim's Plight", npc = 17015, npcName = "Taleris Dawngazer", map = 1454, x = 27.2, y = 61.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9802, title = "Plants of Zangarmarsh", npc = 17909, npcName = "Lauranna Thar'well", map = 1946, x = 80.4, y = 64.2, f = "e" },
					{ t = "accept", quest = 9747, title = "The Umbrafen Tribe", npc = 17956, npcName = "Ikeyen", map = 1946, x = 80.4, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9728, title = "A Warm Welcome", npc = 17858, npcName = "Warden Hamoot", map = 1946, x = 79.1, y = 65.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9895, title = "The Dying Balance", npc = 17834, npcName = "Lethyn Moonfire", map = 1946, x = 78.5, y = 63.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9912, title = "The Cenarion Expedition", npc = 17841, npcName = "Ysiel Windsinger", map = 1946, x = 78.4, y = 62.0, f = "e" },
					{ t = "accept", quest = 9716, title = "Disturbance at Umbrafen Lake", npc = 17841, npcName = "Ysiel Windsinger", map = 1946, x = 78.4, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9802, itemName = "Unidentified Plant Parts", count = 10, oi = 1, map = 1946, x = 80.1, y = 73.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9895, target = "Boglash", count = 1, oi = 1, map = 1946, x = 81.0, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9806, item = 24449, itemName = "Fertile Spores", count = 6, map = 1946, x = 82.6, y = 72.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9802, title = "Plants of Zangarmarsh", npc = 17909, npcName = "Lauranna Thar'well", map = 1946, x = 80.4, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9895, title = "The Dying Balance", npc = 17834, npcName = "Lethyn Moonfire", map = 1946, x = 78.5, y = 63.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9747, target = "Umbrafen Oracle", count = 6, oi = 2, map = 1946, x = 84.8, y = 84.4, f = "e" },
					{ t = "kill", quest = 9747, target = "Umbrafen Seer", count = 8, oi = 3, map = 1946, x = 84.8, y = 84.4, f = "e" },
					{ t = "kill", quest = 9747, target = "Umbrafen Witchdoctor", count = 6, oi = 4, map = 1946, x = 84.8, y = 84.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9747, target = "Kataru", count = 1, oi = 1, map = 1946, x = 85.3, y = 90.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 63, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9752, title = "Escape from Umbrafen", npc = 17969, npcName = "Kayra Longmane", map = 1946, x = 83.4, y = 85.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9747, title = "The Umbrafen Tribe", npc = 17956, npcName = "Ikeyen", map = 1946, x = 80.4, y = 64.2, f = "e" },
					{ t = "accept", quest = 9788, title = "A Damp, Dark Place", npc = 17956, npcName = "Ikeyen", map = 1946, x = 80.4, y = 64.2, f = "e" },
					{ t = "accept", quest = 10096, title = "Saving the Sporeloks", npc = 17909, npcName = "Lauranna Thar'well", map = 1946, x = 80.4, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9894, title = "Safeguarding the Watchers", npc = 18070, npcName = "Windcaller Blackhoof", map = 1946, x = 80.4, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9752, title = "Escape from Umbrafen", npc = 17841, npcName = "Ysiel Windsinger", map = 1946, x = 78.4, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10096, target = "Marsh Lurker", count = 10, oi = 2, map = 1946, x = 75.7, y = 90.2, f = "e" },
					{ t = "kill", quest = 10096, target = "Marsh Dredger", count = 10, oi = 1, map = 1946, x = 75.7, y = 90.2, f = "e" },
				},
			},
			{
				note = "Go southwest inside the cave to 70.5,97.9",
				goals = {
					{ t = "collect", quest = 9788, itemName = "Ikeyen's Belongings", count = 1, oi = 1, map = 1946, x = 70.5, y = 97.9, f = "e" },
				},
			},
			{
				note = "Go northeast inside the cave to72.5,94",
				goals = {
					{ t = "kill", quest = 9894, target = "Lord Klaq", count = 1, oi = 1, map = 1946, x = 72.5, y = 94.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9728, itemName = "Naga Claws", count = 30, oi = 1, map = 1946, x = 70.9, y = 82.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9894, title = "Safeguarding the Watchers", npc = 18070, npcName = "Windcaller Blackhoof", map = 1946, x = 80.4, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9788, title = "A Damp, Dark Place", npc = 17956, npcName = "Ikeyen", map = 1946, x = 80.4, y = 64.2, f = "e" },
					{ t = "turnin", quest = 10096, title = "Saving the Sporeloks", npc = 17909, npcName = "Lauranna Thar'well", map = 1946, x = 80.4, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9728, title = "A Warm Welcome", npc = 17858, npcName = "Warden Hamoot", map = 1946, x = 79.1, y = 65.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9785, title = "Blessings of the Ancients", npc = 18070, npcName = "Windcaller Blackhoof", map = 1946, x = 80.4, y = 64.7, f = "e" },
				},
			},
		},
	})
end

