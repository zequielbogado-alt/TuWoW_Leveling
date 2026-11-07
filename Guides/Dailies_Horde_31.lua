-- TuWoW_Leveling — Guides/Dailies_Horde_31.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-events-zalazanes-fall-pre-cataclysm-event",
		pack = "guides",
		title = "Zalazane's Fall Pre-Cataclysm Event",
		category = "Dailies",
		folder = "Events",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1411,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 25444, title = "Da Perfect Spies", npc = 40184, npcName = "Vanira", map = 1411, x = 57.5, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 53510, itemName = "Captured Frog", count = 5, map = 1411, x = 57.2, y = 76.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 57.6, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25444, title = "Da Perfect Spies", npc = 40184, npcName = "Vanira", map = 1411, x = 57.5, y = 72.5, f = "e" },
					{ t = "accept", quest = 25446, title = "Frogs Away!", npc = 40184, npcName = "Vanira", map = 1411, x = 57.5, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 40204, npcName = "Handler Marnlek", map = 1411, x = 57.1, y = 75.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25446, title = "Frogs Away!", npc = 40184, npcName = "Vanira", map = 1411, x = 57.5, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 25461, title = "Trollin' For Volunteers", npc = 40253, npcName = "Champion Uru'zin", map = 1411, x = 57.8, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 52.9, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 57.8, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25461, title = "Trollin' For Volunteers", npc = 40253, npcName = "Champion Uru'zin", map = 1411, x = 57.8, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 25470, title = "Lady Of Da Tigers", npc = 40184, npcName = "Vanira", map = 1411, x = 57.5, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 59.8, y = 82.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25470, title = "Lady Of Da Tigers", npc = 40391, npcName = "Vol'jin", map = 1411, x = 57.4, y = 72.7, f = "e" },
					{ t = "accept", quest = 25480, title = "Dance Of De Spirits", npc = 40391, npcName = "Vol'jin", map = 1411, x = 57.4, y = 72.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 40352, npcName = "Witch Doctor Hez'tok", map = 1411, x = 57.0, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25480, title = "Dance Of De Spirits", npc = 40391, npcName = "Vol'jin", map = 1411, x = 57.4, y = 72.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 25495, title = "Preparin' For Battle", npc = 40253, npcName = "Champion Uru'zin", map = 1411, x = 57.8, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 40204, npcName = "Handler Marnlek", map = 1411, x = 57.1, y = 75.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25495, title = "Preparin' For Battle", npc = 39654, npcName = "Vol'jin", map = 1411, x = 64.5, y = 74.1, f = "e" },
					{ t = "accept", quest = 25445, title = "Zalazane's Fall", npc = 39654, npcName = "Vol'jin", map = 1411, x = 64.5, y = 74.1, f = "e" },
				},
			},
			{
				note = "Use your Darkspear Pride |use Darkspear Pride##54653",
				goals = {
					{ t = "use", item = 54653, itemName = "Darkspear Pride", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25445, title = "Zalazane's Fall", npc = 40391, npcName = "Vol'jin", map = 1411, x = 57.4, y = 72.7, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-events-harvest-festival",
		pack = "guides",
		title = "Harvest Festival",
		category = "Dailies",
		folder = "Events",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1411,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 8150, title = "Honoring a Hero", npc = 15012, npcName = "Javnir Nashak", map = 1411, x = 46.1, y = 13.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3310, npcName = "Doras", map = 1411, x = 45.1, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 82.9, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 12616, npcName = "Vhulgra", map = 1411, x = 73.2, y = 61.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8150, title = "Honoring a Hero", npc = 15012, npcName = "Javnir Nashak", map = 1411, x = 46.1, y = 13.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 46.5, y = 13.5, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-events-brewfest-quests",
		pack = "guides",
		title = "Brewfest Quests",
		category = "Dailies",
		folder = "Events",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11446, title = "Brewfest!", npc = 19175, npcName = "Orc Commoner", map = 1454, x = 51.4, y = 69.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11409, title = "Now This is Ram Racing... Almost.", npc = 24497, npcName = "Ram Master Ray", map = 1411, x = 46.3, y = 15.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11409, title = "Now This is Ram Racing... Almost.", npc = 24497, npcName = "Ram Master Ray", map = 1411, x = 46.3, y = 15.0, f = "e" },
					{ t = "accept", quest = 11412, title = "There and Back Again", npc = 24497, npcName = "Ram Master Ray", map = 1411, x = 46.3, y = 15.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 48.2, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11412, title = "There and Back Again", npc = 24497, npcName = "Ram Master Ray", map = 1411, x = 46.3, y = 15.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13931, title = "Another Year, Another Souvenir.", npc = 24510, npcName = "Driz Tumblequick", map = 1411, x = 46.3, y = 14.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11446, title = "Brewfest!", npc = 24711, npcName = "Tapper Swindlekeg", map = 1411, x = 45.6, y = 17.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12191, title = "Chug and Chuck!", npc = 27216, npcName = "Bizzle Quicklift", map = 1411, x = 45.3, y = 17.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 45.2, y = 17.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12191, title = "Chug and Chuck!", npc = 27216, npcName = "Bizzle Quicklift", map = 1411, x = 45.3, y = 17.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11431, title = "Catch the Wild Wolpertinger!", npc = 24657, npcName = "Glodrak Huntsniper", map = 1411, x = 45.0, y = 17.4, f = "e" },
					{ t = "accept", quest = 11120, title = "Pink Elekks On Parade", npc = 24657, npcName = "Glodrak Huntsniper", map = 1411, x = 45.0, y = 17.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 46735, itemName = "Synthebrew Goggles", count = 1, map = 1411, x = 45.0, y = 17.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13931, title = "Another Year, Another Souvenir.", npc = 24495, npcName = "Blix Fixwidget", map = 1411, x = 44.1, y = 18.0, f = "e" },
				},
			},
			{
				note = "Use your Synthebrew Goggles |use Synthebrew Goggles##46735",
				goals = {
					{ t = "use", item = 46735, itemName = "Synthebrew Goggles", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11431, itemName = "Stunned Wolpertinger", count = 5, oi = 1, map = 1411, x = 44.0, y = 17.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11431, title = "Catch the Wild Wolpertinger!", npc = 24657, npcName = "Glodrak Huntsniper", map = 1411, x = 45.0, y = 17.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 50.9, y = 13.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11120, target = "Tirisfal Pink Elekk", count = 3, oi = 3, map = 1458, x = 70.5, y = 12.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1458, x = 54.9, y = 11.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11120, target = "Eversong Pink Elekk", count = 3, oi = 1, map = 1944, x = 57.0, y = 53.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 49.5, y = 14.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 60.7, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3310, npcName = "Doras", map = 1454, x = 45.1, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11120, target = "Mulgore Pink Elekk", count = 3, oi = 2, map = 1456, x = 34.7, y = 74.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 2995, npcName = "Tal", map = 1456, x = 47.0, y = 49.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11120, title = "Pink Elekks On Parade", npc = 24657, npcName = "Glodrak Huntsniper", map = 1411, x = 45.0, y = 17.4, f = "e" },
				},
			},
			{
				note = "Use the Dungeon Finder (press I) to queue for Coren Direbrew |tip You must be level 80 do complete this quest.",
				goals = {
					{ t = "collect", item = 38281, itemName = "Direbrew's Dire Brew", count = 1, f = "e" },
					{ t = "accept", quest = 12492, title = "Direbrew's Dire Brew", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12492, title = "Direbrew's Dire Brew", npc = 24711, npcName = "Tapper Swindlekeg", map = 1411, x = 45.6, y = 17.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-events-brewfest-dailies",
		pack = "guides",
		title = "Brewfest Dailies",
		category = "Dailies",
		folder = "Events",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1411,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11407, title = "Bark for Drohn's Distillery!", npc = 24498, npcName = "Cort Gorestein", map = 1411, x = 44.4, y = 17.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11408, title = "Bark for T'chali's Voodoo Brewery!", npc = 24499, npcName = "Ja'ron", map = 1411, x = 43.6, y = 17.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1454, x = 52.9, y = 66.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1454, x = 71.5, y = 34.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1454, x = 43.8, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1454, x = 37.0, y = 74.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1454, x = 52.9, y = 66.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1454, x = 71.5, y = 34.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1454, x = 43.8, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1454, x = 37.0, y = 74.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11407, title = "Bark for Drohn's Distillery!", npc = 24498, npcName = "Cort Gorestein", map = 1411, x = 44.4, y = 17.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11408, title = "Bark for T'chali's Voodoo Brewery!", npc = 24499, npcName = "Ja'ron", map = 1411, x = 43.6, y = 17.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12192, title = "This One Time, When I Was Drunk...", map = 1411, x = 44.1, y = 17.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12192, title = "This One Time, When I Was Drunk...", npc = 27216, npcName = "Bizzle Quicklift", map = 1411, x = 45.3, y = 17.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 24497, npcName = "Ram Master Ray", map = 1411, x = 46.3, y = 15.0, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-events-brewfest-achievements",
		pack = "guides",
		title = "Brewfest Achievements",
		category = "Dailies",
		folder = "Events",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1411,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "buy", npc = 23603, npcName = "Uta Roughdough", item = 33043, itemName = "The Essential Brewfest Pretzel", count = 1, map = 1411, x = 44.8, y = 17.5, f = "e" },
				},
			},
			{
				note = "Click The Essential Brewfest Pretzels in your bags |use The Essential Brewfest Pretzel##33043",
				goals = {
					{ t = "use", item = 33043, itemName = "The Essential Brewfest Pretzel", f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 23604, npcName = "Agnes Farwithers", item = 34065, itemName = "Spiced Onion Cheese", count = 1, map = 1411, x = 43.9, y = 17.9, f = "e" },
				},
			},
			{
				note = "Click the Spiced Onion Cheese in your bags |use Spiced Onion Cheese##34065",
				goals = {
					{ t = "use", item = 34065, itemName = "Spiced Onion Cheese", f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 23605, npcName = "Bron", item = 34063, itemName = "Dried Sausage", count = 1, map = 1411, x = 44.4, y = 16.6, f = "e" },
					{ t = "buy", npc = 23605, npcName = "Bron", item = 34064, itemName = "Succulent Sausage", count = 1, map = 1411, x = 44.4, y = 16.6, f = "e" },
					{ t = "buy", npc = 23605, npcName = "Bron", item = 33023, itemName = "Savory Sausage", count = 1, map = 1411, x = 44.4, y = 16.6, f = "e" },
					{ t = "buy", npc = 23605, npcName = "Bron", item = 33024, itemName = "Pickled Sausage", count = 1, map = 1411, x = 44.4, y = 16.6, f = "e" },
					{ t = "buy", npc = 23605, npcName = "Bron", item = 33025, itemName = "Spicy Smoked Sausage", count = 1, map = 1411, x = 44.4, y = 16.6, f = "e" },
					{ t = "buy", npc = 23605, npcName = "Bron", item = 33026, itemName = "The Golden Link", count = 1, map = 1411, x = 44.4, y = 16.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 24495, npcName = "Blix Fixwidget", item = 37750, itemName = "Fresh Brewfest Hops", count = 1, map = 1411, x = 44.1, y = 18.0, f = "e" },
				},
			},
			{
				note = "Use your Fresh Brewfest Hops |use Fresh Brewfest Hops##37750",
				goals = {
					{ t = "use", item = 37750, itemName = "Fresh Brewfest Hops", f = "e" },
				},
			},
			{
				note = "Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens",
				goals = {
					{ t = "collect", item = 37829, itemName = "Brewfest Prize Token", count = 200, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 24495, npcName = "Blix Fixwidget", item = 37599, itemName = "\"Brew of the Month\" Club Membership Form", count = 1, map = 1411, x = 44.1, y = 18.0, f = "e" },
					{ t = "accept", quest = 12306, title = "Brew of the Month Club", npc = 24495, npcName = "Blix Fixwidget", map = 1411, x = 44.1, y = 18.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12306, title = "Brew of the Month Club", npc = 27489, npcName = "Ray'ma", map = 1454, x = 37.7, y = 85.7, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-events-zalazanes-fall-pre-cataclysm-event-2",
		pack = "guides",
		title = "Zalazane's Fall Pre-Cataclysm Event",
		category = "Dailies",
		folder = "Events",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1411,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 25444, title = "Da Perfect Spies", npc = 40184, npcName = "Vanira", map = 1411, x = 57.5, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 53510, itemName = "Captured Frog", count = 5, map = 1411, x = 57.2, y = 76.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 57.6, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25444, title = "Da Perfect Spies", npc = 40184, npcName = "Vanira", map = 1411, x = 57.5, y = 72.5, f = "e" },
					{ t = "accept", quest = 25446, title = "Frogs Away!", npc = 40184, npcName = "Vanira", map = 1411, x = 57.5, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 40204, npcName = "Handler Marnlek", map = 1411, x = 57.1, y = 75.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25446, title = "Frogs Away!", npc = 40184, npcName = "Vanira", map = 1411, x = 57.5, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 25461, title = "Trollin' For Volunteers", npc = 40253, npcName = "Champion Uru'zin", map = 1411, x = 57.8, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 52.9, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 57.8, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25461, title = "Trollin' For Volunteers", npc = 40253, npcName = "Champion Uru'zin", map = 1411, x = 57.8, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 25470, title = "Lady Of Da Tigers", npc = 40184, npcName = "Vanira", map = 1411, x = 57.5, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 59.8, y = 82.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25470, title = "Lady Of Da Tigers", npc = 40391, npcName = "Vol'jin", map = 1411, x = 57.4, y = 72.7, f = "e" },
					{ t = "accept", quest = 25480, title = "Dance Of De Spirits", npc = 40391, npcName = "Vol'jin", map = 1411, x = 57.4, y = 72.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 40352, npcName = "Witch Doctor Hez'tok", map = 1411, x = 57.0, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25480, title = "Dance Of De Spirits", npc = 40391, npcName = "Vol'jin", map = 1411, x = 57.4, y = 72.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 25495, title = "Preparin' For Battle", npc = 40253, npcName = "Champion Uru'zin", map = 1411, x = 57.8, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 40204, npcName = "Handler Marnlek", map = 1411, x = 57.1, y = 75.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25495, title = "Preparin' For Battle", npc = 39654, npcName = "Vol'jin", map = 1411, x = 64.5, y = 74.1, f = "e" },
					{ t = "accept", quest = 25445, title = "Zalazane's Fall", npc = 39654, npcName = "Vol'jin", map = 1411, x = 64.5, y = 74.1, f = "e" },
				},
			},
			{
				note = "Use your Darkspear Pride |use Darkspear Pride##54653",
				goals = {
					{ t = "use", item = 54653, itemName = "Darkspear Pride", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25445, title = "Zalazane's Fall", npc = 40391, npcName = "Vol'jin", map = 1411, x = 57.4, y = 72.7, f = "e" },
				},
			},
		},
	})
end

