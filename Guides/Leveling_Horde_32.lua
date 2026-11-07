-- TuWoW_Leveling — Guides/Leveling_Horde_32.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-outland-62-64-part-2",
		pack = "guides",
		title = "Outland (62-64) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 62,
		maxLevel = 64,
		zone = 1944,
		version = 1,
		steps = {
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
				note = "The pump controls look like a little box with some levers on it",
				goals = {
					{ t = "goto", map = 1946, x = 63.1, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Swamprat Post", map = 1946, x = 84.8, y = 55.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10103, title = "Report to Zurai", npc = 18011, npcName = "Zurai", map = 1946, x = 85.3, y = 54.8, f = "e" },
					{ t = "accept", quest = 9774, title = "Thick Hydra Scales", npc = 18011, npcName = "Zurai", map = 1946, x = 85.3, y = 54.8, f = "e" },
					{ t = "accept", quest = 9796, title = "News from Zangarmarsh", npc = 18011, npcName = "Zurai", map = 1946, x = 85.3, y = 54.8, f = "e" },
					{ t = "accept", quest = 9775, title = "Report to Shadow Hunter Denjai", npc = 18011, npcName = "Zurai", map = 1946, x = 85.3, y = 54.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9770, title = "Menacing Marshfangs", npc = 18012, npcName = "Reavij", map = 1946, x = 85.0, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9769, title = "There's No Explanation for Fashion", npc = 18016, npcName = "Magasha", map = 1946, x = 84.4, y = 54.3, f = "e" },
					{ t = "accept", quest = 9773, title = "No More Mushrooms!", npc = 18016, npcName = "Magasha", map = 1946, x = 84.4, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9774, itemName = "Thick Hydra Scale", count = 12, oi = 1, map = 1946, x = 74.2, y = 60.7, f = "e" },
					{ t = "collect", quest = 9773, itemName = "Eel Filet", count = 8, oi = 1, map = 1946, x = 74.2, y = 60.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9769, itemName = "Diaphanous Wing", count = 8, oi = 1, map = 1946, x = 79.7, y = 70.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9769, title = "There's No Explanation for Fashion", npc = 18016, npcName = "Magasha", map = 1946, x = 84.4, y = 54.3, f = "e" },
					{ t = "turnin", quest = 9773, title = "No More Mushrooms!", npc = 18016, npcName = "Magasha", map = 1946, x = 84.4, y = 54.3, f = "e" },
					{ t = "accept", quest = 9899, title = "A Job Undone", npc = 18016, npcName = "Magasha", map = 1946, x = 84.4, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9774, title = "Thick Hydra Scales", npc = 18011, npcName = "Zurai", map = 1946, x = 85.3, y = 54.8, f = "e" },
					{ t = "accept", quest = 9771, title = "Searching for Scout Jyoba", npc = 18011, npcName = "Zurai", map = 1946, x = 85.3, y = 54.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9731, title = "Drain Schematics", map = 1946, x = 62.0, y = 40.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9770, target = "Marshfang Ripper", count = 10, oi = 1, map = 1946, x = 73.2, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9899, target = "Sporewing", count = 1, oi = 1, map = 1946, x = 77.2, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9743, item = 24291, itemName = "Bog Lord Tendril", count = 6, map = 1946, x = 78.3, y = 45.2, f = "e" },
					{ t = "collect", itemName = "a Withered Basidium", count = 1, map = 1946, x = 78.3, y = 45.2, f = "e" },
					{ t = "accept", quest = 9828, title = "Withered Basidium", map = 1946, x = 78.3, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9771, title = "Searching for Scout Jyoba", npc = 18035, npcName = "Scout Jyoba", map = 1946, x = 80.8, y = 36.3, f = "e" },
					{ t = "accept", quest = 9772, title = "Jyoba's Report", npc = 18035, npcName = "Scout Jyoba", map = 1946, x = 80.8, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9772, itemName = "Scout Jyoba's Report", count = 1, oi = 1, map = 1946, x = 81.6, y = 35.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9899, title = "A Job Undone", npc = 18016, npcName = "Magasha", map = 1946, x = 84.4, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9770, title = "Menacing Marshfangs", npc = 18012, npcName = "Reavij", map = 1946, x = 85.0, y = 54.0, f = "e" },
					{ t = "accept", quest = 9898, title = "Nothin' Says Lovin' Like a Big Stinger", npc = 18012, npcName = "Reavij", map = 1946, x = 85.0, y = 54.0, f = "e" },
					{ t = "turnin", quest = 9828, title = "Withered Basidium", npc = 18012, npcName = "Reavij", map = 1946, x = 85.0, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9772, title = "Jyoba's Report", npc = 18011, npcName = "Zurai", map = 1946, x = 85.3, y = 54.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1946, x = 50.4, y = 40.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9898, itemName = "Blacksting's Stinger", count = 1, oi = 1, map = 1946, x = 49.5, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9911, title = "The Count of the Marshes", map = 1946, x = 32.8, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9814, title = "Burstcap Mushrooms, Mon!", npc = 18014, npcName = "Witch Doctor Tor'gash", map = 1946, x = 32.9, y = 48.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9845, title = "Angling to Beat the Competition", npc = 18018, npcName = "Zurjaya", map = 1946, x = 32.2, y = 49.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9820, title = "WANTED: Boss Grog'ak", map = 1946, x = 32.0, y = 49.3, f = "e" },
					{ t = "accept", quest = 10117, title = "Wanted: Chieftain Mummaki", map = 1946, x = 32.0, y = 49.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9841, title = "Stinging the Stingers", npc = 18015, npcName = "Gambarinka", map = 1946, x = 31.6, y = 49.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Zabra'jin", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9775, title = "Report to Shadow Hunter Denjai", npc = 18013, npcName = "Shadow Hunter Denjai", map = 1946, x = 30.7, y = 50.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9846, title = "Spirits of the Feralfen", npc = 18017, npcName = "Seer Janidi", map = 1946, x = 32.4, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Zabra'jin", map = 1946, x = 33.1, y = 51.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9846, itemName = "Feralfen Protection Totem", count = 10, oi = 1, map = 1946, x = 46.0, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9845, target = "Fenclaw Thrasher", count = 10, oi = 1, map = 1946, x = 48.1, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9845, title = "Angling to Beat the Competition", npc = 18018, npcName = "Zurjaya", map = 1946, x = 32.2, y = 49.6, f = "e" },
					{ t = "accept", quest = 9903, title = "The Biggest of Them All", npc = 18018, npcName = "Zurjaya", map = 1946, x = 32.2, y = 49.6, f = "e" },
					{ t = "accept", quest = 9904, title = "Pursuing Terrorclaw", npc = 18018, npcName = "Zurjaya", map = 1946, x = 32.2, y = 49.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9846, title = "Spirits of the Feralfen", npc = 18017, npcName = "Seer Janidi", map = 1946, x = 32.4, y = 52.0, f = "e" },
					{ t = "accept", quest = 9847, title = "A Spirit Ally?", npc = 18017, npcName = "Seer Janidi", map = 1946, x = 32.4, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9903, target = "Mragesh", count = 1, oi = 1, map = 1946, x = 42.2, y = 41.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1946, x = 44.4, y = 66.0, f = "e" },
				},
			},
			{
				note = "Hearth to Zabra'jin|goto Zangarmarsh,31.7,49.8,4|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9903, title = "The Biggest of Them All", npc = 18018, npcName = "Zurjaya", map = 1946, x = 32.2, y = 49.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9847, title = "A Spirit Ally?", npc = 18017, npcName = "Seer Janidi", map = 1946, x = 32.4, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9814, itemName = "Burstcap Mushroom", count = 6, oi = 1, map = 1946, x = 28.9, y = 52.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9814, title = "Burstcap Mushrooms, Mon!", npc = 18014, npcName = "Witch Doctor Tor'gash", map = 1946, x = 32.9, y = 48.9, f = "e" },
					{ t = "accept", quest = 9816, title = "Have You Ever Seen One of These?", npc = 18014, npcName = "Witch Doctor Tor'gash", map = 1946, x = 32.9, y = 48.9, f = "e" },
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
					{ t = "accept", quest = 9739, title = "The Sporelings' Plight", npc = 17923, npcName = "Fahssn", map = 1946, x = 19.0, y = 64.0, f = "e" },
					{ t = "accept", quest = 9743, title = "Natural Enemies", npc = 17923, npcName = "Fahssn", map = 1946, x = 19.0, y = 64.0, f = "e" },
					{ t = "turnin", quest = 9743, title = "Natural Enemies", npc = 17923, npcName = "Fahssn", map = 1946, x = 19.0, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9739, item = 24290, itemName = "Mature Spore Sac", count = 10, map = 1946, x = 14.5, y = 61.6, f = "e" },
					{ t = "collect", quest = 9919, item = 24290, itemName = "Mature Spore Sac", count = 40, map = 1946, x = 14.5, y = 61.6, f = "e" },
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
			{
				goals = {
					{ t = "level", level = 64, f = "e" },
				},
			},
		},
	})
end

