-- TuWoW_Leveling — Guides/Leveling_Alliance_32.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-62-64",
		pack = "guides",
		title = "Levels (62-64) (Parte 1/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-62-64-part-2",
		author = "TuWoW & Zygor",
		minLevel = 62,
		maxLevel = 64,
		zone = 1946,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 10057, title = "Looking to the Leadership", npc = 16827, npcName = "Honor Guard Wesilow", x = 50.9, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Bleeding Hollow Orcs", count = 1, x = 64.2, y = 71.8, f = "e" },
					{ t = "collect", quest = 10484, itemName = "Cursed Talisman", count = 12, oi = 1, x = 64.2, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10484, title = "Cursed Talismans", npc = 21133, npcName = "Corporal Ironridge", x = 71.0, y = 63.4, f = "e" },
					{ t = "accept", quest = 10485, title = "Warlord of the Bleeding Hollow", npc = 21133, npcName = "Corporal Ironridge", x = 71.0, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10895, title = "Zeth'Gor Must Burn!", npc = 19409, npcName = "Wing Commander Dabir'ee", x = 71.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 70.1, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 70.9, y = 71.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10485, itemName = "Morkh's Shattered Armor", count = 1, oi = 1, x = 70.1, y = 76.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 66.4, y = 76.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 67.9, y = 67.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10485, title = "Warlord of the Bleeding Hollow", npc = 21133, npcName = "Corporal Ironridge", x = 71.0, y = 63.4, f = "e" },
					{ t = "accept", quest = 10903, title = "Return to Honor Hold", npc = 21133, npcName = "Corporal Ironridge", x = 71.0, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10895, title = "Zeth'Gor Must Burn!", npc = 19409, npcName = "Wing Commander Dabir'ee", x = 71.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10903, title = "Return to Honor Hold", npc = 22430, npcName = "Assistant Klatu", x = 54.3, y = 63.6, f = "e" },
					{ t = "accept", quest = 10909, title = "Fel Spirits", npc = 22430, npcName = "Assistant Klatu", x = 54.3, y = 63.6, f = "e" },
					{ t = "accept", quest = 10916, title = "Digging for Prayer Beads", npc = 22430, npcName = "Assistant Klatu", x = 54.3, y = 63.6, f = "e" },
				},
			},
			{
				note = "Go outside and behind the inn to 54.2,63.3",
				goals = {
					{ t = "collect", quest = 10916, itemName = "Draenei Prayer Beads", count = 1, oi = 1, x = 54.2, y = 63.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 45.0, y = 75.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10909, title = "Fel Spirits", npc = 22430, npcName = "Assistant Klatu", x = 54.3, y = 63.6, f = "e" },
					{ t = "turnin", quest = 10916, title = "Digging for Prayer Beads", npc = 22430, npcName = "Assistant Klatu", x = 54.3, y = 63.6, f = "e" },
					{ t = "accept", quest = 10935, title = "The Exorcism of Colonel Jules", npc = 22430, npcName = "Assistant Klatu", x = 54.3, y = 63.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 22431, npcName = "Anchorite Barada", x = 54.0, y = 63.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10935, title = "The Exorcism of Colonel Jules", npc = 22430, npcName = "Assistant Klatu", x = 54.3, y = 63.6, f = "e" },
					{ t = "accept", quest = 10936, title = "Trollbane is Looking for You", npc = 22430, npcName = "Assistant Klatu", x = 54.3, y = 63.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10936, title = "Trollbane is Looking for You", npc = 16819, npcName = "Force Commander Danath Trollbane", x = 56.6, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9912, title = "The Cenarion Expedition", npc = 16885, npcName = "Amythiel Mistwalker", x = 15.7, y = 52.0, f = "e" },
					{ t = "accept", quest = 10159, title = "Keep Thornfang Hill Clear!", npc = 16888, npcName = "Mahuram Stouthoof", x = 15.7, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10159, target = "Thornfang Ravager", count = 8, oi = 1, x = 12.3, y = 49.9, f = "e" },
					{ t = "kill", quest = 10159, target = "Thornfang Venomspitter", count = 8, oi = 2, x = 12.3, y = 49.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10159, title = "Keep Thornfang Hill Clear!", npc = 16888, npcName = "Mahuram Stouthoof", x = 15.7, y = 52.0, f = "e" },
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
					{ t = "kill", quest = 9895, target = "Boglash", count = 1, oi = 1, map = 1946, x = 80.1, y = 73.3, f = "e" },
					{ t = "kill", target = "Boglash and Fen Striders", count = 1, map = 1946, x = 80.1, y = 73.3, f = "e" },
					{ t = "collect", quest = 9806, item = 24449, itemName = "Fertile Spores", count = 6, oi = 1, map = 1946, x = 80.1, y = 73.3, f = "e" },
					{ t = "kill", target = "all mobs in this area", count = 1, map = 1946, x = 80.1, y = 73.3, f = "e" },
					{ t = "collect", quest = 9802, itemName = "Unidentified Plant Parts", count = 10, oi = 1, map = 1946, x = 80.1, y = 73.3, f = "e" },
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
					{ t = "kill", quest = 9747, target = "Kataru", count = 1, oi = 1, map = 1946, x = 85.3, y = 90.9, f = "e" },
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
					{ t = "goto", map = 1946, x = 74.7, y = 91.6, f = "e" },
				},
			},
			{
				note = "Go southwest inside the cave to 70.5,97.9",
				goals = {
					{ t = "collect", quest = 9788, itemName = "Ikeyen's Belongings", count = 1, oi = 1, map = 1946, x = 70.5, y = 97.9, f = "e" },
				},
			},
			{
				note = "Go northeast inside the cave to 72.5,94.0",
				goals = {
					{ t = "kill", quest = 9894, target = "Lord Klaq", count = 1, oi = 1, map = 1946, x = 72.5, y = 94.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10096, target = "Marsh Lurker", count = 10, oi = 2, map = 1946, x = 75.7, y = 90.2, f = "e" },
					{ t = "kill", quest = 10096, target = "Marsh Dredger", count = 10, oi = 1, map = 1946, x = 75.7, y = 90.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "nagas", count = 1, map = 1946, x = 70.9, y = 82.1, f = "e" },
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
			{
				goals = {
					{ t = "accept", quest = 9697, title = "Watcher Leesa'oh", npc = 17834, npcName = "Lethyn Moonfire", map = 1946, x = 78.5, y = 63.1, f = "e" },
					{ t = "accept", quest = 9957, title = "What's Wrong at Cenarion Thicket?", npc = 17834, npcName = "Lethyn Moonfire", map = 1946, x = 78.5, y = 63.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9716, title = "Disturbance at Umbrafen Lake", npc = 17841, npcName = "Ysiel Windsinger", map = 1946, x = 78.4, y = 62.0, f = "e" },
					{ t = "accept", quest = 9718, title = "As the Crow Flies", npc = 17841, npcName = "Ysiel Windsinger", map = 1946, x = 78.4, y = 62.0, f = "e" },
					{ t = "turnin", quest = 9718, title = "As the Crow Flies", npc = 17841, npcName = "Ysiel Windsinger", map = 1946, x = 78.4, y = 62.0, f = "e" },
					{ t = "accept", quest = 9720, title = "Balance Must Be Preserved", npc = 17841, npcName = "Ysiel Windsinger", map = 1946, x = 78.4, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 17901, npcName = "Keleth", map = 1946, x = 78.1, y = 63.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 17900, npcName = "Ashyen", map = 1946, x = 81.1, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9785, title = "Blessings of the Ancients", npc = 18070, npcName = "Windcaller Blackhoof", map = 1946, x = 80.4, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1946, x = 70.6, y = 80.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1946, x = 63.1, y = 64.1, f = "e" },
				},
			},
			{
				note = "Ride the elevator up into Telredor and go to 68.3,50.1",
				goals = {
					{ t = "accept", quest = 9793, title = "The Fate of Tuurem", npc = 18004, npcName = "Vindicator Idaar", map = 1946, x = 68.3, y = 50.1, f = "e" },
					{ t = "accept", quest = 9782, title = "The Dead Mire", npc = 18004, npcName = "Vindicator Idaar", map = 1946, x = 68.3, y = 50.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9776, title = "The Orebor Harborage", npc = 18003, npcName = "Anchorite Ahuurn", map = 1946, x = 68.2, y = 49.4, f = "e" },
					{ t = "accept", quest = 9786, title = "The Boha'mu Ruins", npc = 18003, npcName = "Anchorite Ahuurn", map = 1946, x = 68.2, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9901, title = "Unfinished Business", npc = 18295, npcName = "Prospector Conall", map = 1946, x = 68.6, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9777, title = "Fulgor Spores", npc = 18007, npcName = "Ruam", map = 1946, x = 68.6, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9781, title = "Too Many Mouths to Feed", npc = 18005, npcName = "Haalrun", map = 1946, x = 67.7, y = 48.0, f = "e" },
					{ t = "accept", quest = 9791, title = "Menacing Marshfangs", npc = 18006, npcName = "Noraani", map = 1946, x = 67.7, y = 48.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Telredor", map = 1946, x = 67.8, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9777, itemName = "Fulgor Spore", count = 6, oi = 1, map = 1946, x = 71.3, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9791, target = "Marshfang Ripper", count = 10, oi = 1, map = 1946, x = 73.2, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9901, target = "Sporewing", count = 1, oi = 1, map = 1946, x = 77.2, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9782, itemName = "Dead Mire Soil Sample", count = 1, oi = 1, map = 1946, x = 80.7, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9782, title = "The Dead Mire", npc = 18004, npcName = "Vindicator Idaar", map = 1946, x = 68.3, y = 50.1, f = "e" },
					{ t = "accept", quest = 9783, title = "An Unnatural Drought", npc = 18004, npcName = "Vindicator Idaar", map = 1946, x = 68.3, y = 50.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9901, title = "Unfinished Business", npc = 18295, npcName = "Prospector Conall", map = 1946, x = 68.6, y = 49.4, f = "e" },
					{ t = "accept", quest = 9896, title = "Blacksting's Bane", npc = 18295, npcName = "Prospector Conall", map = 1946, x = 68.6, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9777, title = "Fulgor Spores", npc = 18007, npcName = "Ruam", map = 1946, x = 68.6, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9791, title = "Menacing Marshfangs", npc = 18006, npcName = "Noraani", map = 1946, x = 67.7, y = 48.0, f = "e" },
					{ t = "accept", quest = 9780, title = "Umbrafen Eel Filets", npc = 18006, npcName = "Noraani", map = 1946, x = 67.7, y = 48.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 63, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9783, target = "Withered Giant", count = 12, oi = 1, map = 1946, x = 78.3, y = 45.2, f = "e" },
					{ t = "kill", target = "Withered Bog Lords", count = 1, map = 1946, x = 78.3, y = 45.2, f = "e" },
					{ t = "kill", target = "Withered mobs", count = 1, map = 1946, x = 78.3, y = 45.2, f = "e" },
					{ t = "collect", itemName = "Withered Basidium", count = 1, map = 1946, x = 78.3, y = 45.2, f = "e" },
					{ t = "accept", quest = 9827, title = "Withered Basidium", map = 1946, x = 78.3, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9781, target = "Mire Hydra", count = 10, oi = 1, map = 1946, x = 74.2, y = 60.7, f = "e" },
					{ t = "kill", target = "Umbrafen Eels", count = 1, map = 1946, x = 74.2, y = 60.7, f = "e" },
					{ t = "collect", quest = 9780, itemName = "Eel Filet", count = 8, oi = 1, map = 1946, x = 74.2, y = 60.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9783, title = "An Unnatural Drought", npc = 18004, npcName = "Vindicator Idaar", map = 1946, x = 68.3, y = 50.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9827, title = "Withered Basidium", npc = 18007, npcName = "Ruam", map = 1946, x = 68.6, y = 48.7, f = "e" },
					{ t = "accept", quest = 10355, title = "Withered Flesh", npc = 18007, npcName = "Ruam", map = 1946, x = 68.6, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9780, title = "Umbrafen Eel Filets", npc = 18006, npcName = "Noraani", map = 1946, x = 67.7, y = 48.0, f = "e" },
					{ t = "turnin", quest = 9781, title = "Too Many Mouths to Feed", npc = 18005, npcName = "Haalrun", map = 1946, x = 67.7, y = 48.0, f = "e" },
					{ t = "accept", quest = 9790, title = "Diaphanous Wings", npc = 18005, npcName = "Haalrun", map = 1946, x = 67.7, y = 48.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Umbraglow Stingers", count = 1, map = 1946, x = 79.7, y = 70.1, f = "e" },
					{ t = "collect", quest = 9790, itemName = "Diaphanous Wing", count = 8, oi = 1, map = 1946, x = 79.7, y = 70.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Parched Hydras", count = 1, map = 1946, x = 82.6, y = 43.7, f = "e" },
					{ t = "collect", quest = 10355, itemName = "Parched Hydra Sample", count = 5, oi = 1, map = 1946, x = 82.6, y = 43.7, f = "e" },
					{ t = "kill", target = "Withered Bog Lords", count = 1, map = 1946, x = 82.6, y = 43.7, f = "e" },
					{ t = "collect", quest = 10355, itemName = "Withered Bog Lord Sample", count = 5, oi = 2, map = 1946, x = 82.6, y = 43.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10355, title = "Withered Flesh", npc = 18007, npcName = "Ruam", map = 1946, x = 68.6, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9790, title = "Diaphanous Wings", npc = 18005, npcName = "Haalrun", map = 1946, x = 67.7, y = 48.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Drain Schematics", count = 1, map = 1946, x = 62.0, y = 40.8, f = "e" },
					{ t = "accept", quest = 9731, title = "Drain Schematics", map = 1946, x = 62.0, y = 40.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9896, itemName = "Blacksting's Stinger", count = 1, oi = 1, map = 1946, x = 49.5, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1946, x = 44.5, y = 66.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1946, x = 44.1, y = 68.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "\"Count\" Ungula's Mandible", count = 1, map = 1946, x = 32.8, y = 59.1, f = "e" },
					{ t = "accept", quest = 9911, title = "The Count of the Marshes", map = 1946, x = 32.8, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9697, title = "Watcher Leesa'oh", npc = 17831, npcName = "Watcher Leesa'oh", map = 1946, x = 23.3, y = 66.2, f = "e" },
					{ t = "accept", quest = 9701, title = "Observing the Sporelings", npc = 17831, npcName = "Watcher Leesa'oh", map = 1946, x = 23.3, y = 66.2, f = "e" },
					{ t = "turnin", quest = 9911, title = "The Count of the Marshes", npc = 17831, npcName = "Watcher Leesa'oh", map = 1946, x = 23.3, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9739, title = "The Sporelings' Plight", npc = 17923, npcName = "Fahssn", map = 1946, x = 19.1, y = 63.9, f = "e" },
					{ t = "accept", quest = 9743, title = "Natural Enemies", npc = 17923, npcName = "Fahssn", map = 1946, x = 19.1, y = 63.9, f = "e" },
					{ t = "turnin", quest = 9743, title = "Natural Enemies", npc = 17923, npcName = "Fahssn", map = 1946, x = 19.1, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9739, item = 24290, itemName = "Mature Spore Sac", count = 40, map = 1946, x = 14.5, y = 61.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1946, x = 13.6, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9739, title = "The Sporelings' Plight", npc = 17923, npcName = "Fahssn", map = 1946, x = 19.1, y = 63.9, f = "e" },
					{ t = "accept", quest = 9919, title = "Sporeggar", npc = 17923, npcName = "Fahssn", map = 1946, x = 19.1, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9701, title = "Observing the Sporelings", npc = 17831, npcName = "Watcher Leesa'oh", map = 1946, x = 23.3, y = 66.2, f = "e" },
					{ t = "accept", quest = 9702, title = "A Question of Gluttony", npc = 17831, npcName = "Watcher Leesa'oh", map = 1946, x = 23.3, y = 66.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-62-64-part-2",
		pack = "guides",
		title = "Levels (62-64) (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-64-66",
		author = "TuWoW & Zygor",
		minLevel = 62,
		maxLevel = 64,
		zone = 1946,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 9702, itemName = "Discarded Nutriment", count = 10, oi = 1, map = 1946, x = 27.0, y = 63.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9702, title = "A Question of Gluttony", npc = 17831, npcName = "Watcher Leesa'oh", map = 1946, x = 23.3, y = 66.2, f = "e" },
					{ t = "accept", quest = 9708, title = "Familiar Fungi", npc = 17831, npcName = "Watcher Leesa'oh", map = 1946, x = 23.3, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9919, title = "Sporeggar", npc = 17924, npcName = "Msshi'fn", map = 1946, x = 19.7, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9726, title = "Now That We're Friends...", npc = 17856, npcName = "Gzhun'tt", map = 1946, x = 19.5, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9806, title = "Fertile Spores", npc = 17925, npcName = "Gshaff", map = 1946, x = 19.2, y = 49.4, f = "e" },
					{ t = "turnin", quest = 9806, title = "Fertile Spores", npc = 17925, npcName = "Gshaff", map = 1946, x = 19.2, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1946, x = 25.4, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9726, target = "Bloodscale Slavedriver", count = 12, oi = 1, map = 1946, x = 26.8, y = 43.0, f = "e" },
					{ t = "kill", quest = 9726, target = "Bloodscale Enchantress", count = 6, oi = 2, map = 1946, x = 26.8, y = 43.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9726, title = "Now That We're Friends...", npc = 17856, npcName = "Gzhun'tt", map = 1946, x = 19.5, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Orebor Harborage", map = 1946, x = 41.3, y = 29.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9848, title = "Secrets of the Daggerfen", npc = 18019, npcName = "Timothy Daniels", map = 1946, x = 41.2, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10116, title = "Wanted: Chieftain Mummaki", map = 1946, x = 41.7, y = 27.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9776, title = "The Orebor Harborage", npc = 18008, npcName = "Ikuti", map = 1946, x = 41.9, y = 27.2, f = "e" },
					{ t = "accept", quest = 9835, title = "Ango'rosh Encroachment", npc = 18008, npcName = "Ikuti", map = 1946, x = 41.9, y = 27.2, f = "e" },
					{ t = "accept", quest = 10115, title = "Daggerfen Deviance", npc = 18008, npcName = "Ikuti", map = 1946, x = 41.9, y = 27.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9848, itemName = "Daggerfen Poison Vial", count = 1, oi = 2, map = 1946, x = 26.4, y = 22.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9848, itemName = "Daggerfen Poison Manual", count = 1, oi = 1, map = 1946, x = 24.4, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10116, itemName = "Chieftain Mummaki's Totem", count = 1, oi = 1, map = 1946, x = 23.8, y = 26.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10115, target = "Daggerfen Assassin", count = 3, oi = 1, map = 1946, x = 28.2, y = 22.1, f = "e" },
					{ t = "kill", quest = 10115, target = "Daggerfen Muckdweller", count = 15, oi = 2, map = 1946, x = 28.2, y = 22.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9835, target = "Ango'rosh Shaman", count = 5, oi = 1, map = 1946, x = 29.6, y = 28.3, f = "e" },
					{ t = "kill", quest = 9835, target = "Ango'rosh Ogre", count = 10, oi = 2, map = 1946, x = 29.6, y = 28.3, f = "e" },
					{ t = "collect", quest = 9708, itemName = "Mushroom Sample", count = 15, oi = 1, map = 1946, x = 29.6, y = 28.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9848, title = "Secrets of the Daggerfen", npc = 18019, npcName = "Timothy Daniels", map = 1946, x = 41.2, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9835, title = "Ango'rosh Encroachment", npc = 18008, npcName = "Ikuti", map = 1946, x = 41.9, y = 27.2, f = "e" },
					{ t = "accept", quest = 9839, title = "Overlord Gorefist", npc = 18008, npcName = "Ikuti", map = 1946, x = 41.9, y = 27.2, f = "e" },
					{ t = "turnin", quest = 10116, title = "Wanted: Chieftain Mummaki", npc = 18008, npcName = "Ikuti", map = 1946, x = 41.9, y = 27.2, f = "e" },
					{ t = "turnin", quest = 10115, title = "Daggerfen Deviance", npc = 18008, npcName = "Ikuti", map = 1946, x = 41.9, y = 27.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Orebor Harborage", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9834, title = "Natural Armor", npc = 18010, npcName = "Maktu", map = 1946, x = 41.6, y = 27.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9830, title = "Stinger Venom", npc = 18009, npcName = "Puluu", map = 1946, x = 40.8, y = 28.7, f = "e" },
					{ t = "accept", quest = 9833, title = "Lines of Communication", npc = 18009, npcName = "Puluu", map = 1946, x = 40.8, y = 28.7, f = "e" },
					{ t = "accept", quest = 9902, title = "The Terror of Marshlight Lake", npc = 18009, npcName = "Puluu", map = 1946, x = 40.8, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Fenclaw Thrashers", count = 1, map = 1946, x = 48.1, y = 38.4, f = "e" },
					{ t = "collect", quest = 9834, itemName = "Fenclaw Hide", count = 8, oi = 1, map = 1946, x = 48.1, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1946, x = 50.4, y = 40.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9833, target = "Marshfang Slicer", count = 12, oi = 1, map = 1946, x = 35.9, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9708, title = "Familiar Fungi", npc = 17831, npcName = "Watcher Leesa'oh", map = 1946, x = 23.3, y = 66.2, f = "e" },
					{ t = "accept", quest = 9709, title = "Stealing Back the Mushrooms", npc = 17831, npcName = "Watcher Leesa'oh", map = 1946, x = 23.3, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9902, target = "Terrorclaw", count = 1, oi = 1, map = 1946, x = 22.4, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Marshlight Bleeders", count = 1, map = 1946, x = 17.3, y = 38.4, f = "e" },
					{ t = "collect", quest = 9830, itemName = "Marshlight Bleeder Venom", count = 6, oi = 1, map = 1946, x = 17.3, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9839, target = "Ango'rosh Mauler", count = 10, oi = 2, map = 1946, x = 17.3, y = 10.2, f = "e" },
					{ t = "collect", quest = 9709, itemName = "Box of Mushrooms", count = 10, oi = 1, map = 1946, x = 17.3, y = 10.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9839, target = "Overlord Gorefist", count = 1, oi = 1, map = 1946, x = 18.3, y = 7.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9830, title = "Stinger Venom", npc = 18009, npcName = "Puluu", map = 1946, x = 40.8, y = 28.7, f = "e" },
					{ t = "turnin", quest = 9833, title = "Lines of Communication", npc = 18009, npcName = "Puluu", map = 1946, x = 40.8, y = 28.7, f = "e" },
					{ t = "turnin", quest = 9902, title = "The Terror of Marshlight Lake", npc = 18009, npcName = "Puluu", map = 1946, x = 40.8, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9834, title = "Natural Armor", npc = 18010, npcName = "Maktu", map = 1946, x = 41.6, y = 27.3, f = "e" },
					{ t = "accept", quest = 9905, title = "Maktu's Revenge", npc = 18010, npcName = "Maktu", map = 1946, x = 41.6, y = 27.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9839, title = "Overlord Gorefist", npc = 18008, npcName = "Ikuti", map = 1946, x = 41.9, y = 27.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 64, f = "e" },
				},
			},
		},
	})
end

