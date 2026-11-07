-- TuWoW_Leveling — Guides/Dailies_Alliance_29.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-midsummer-fire-festival-achievements",
		pack = "guides",
		title = "Midsummer Fire Festival Achievements",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1438,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "talk", npc = 26221, npcName = "Earthen Ring Elder", map = 1438, x = 56.1, y = 92.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 26123, npcName = "Midsummer Supplier", item = 34599, itemName = "Juggling Torch", count = 15, map = 1438, x = 56.0, y = 92.2, f = "e" },
					{ t = "buy", npc = 26123, npcName = "Midsummer Supplier", item = 23324, itemName = "Mantle of the Fire Festival", count = 1, map = 1438, x = 56.0, y = 92.2, f = "e" },
					{ t = "buy", npc = 26123, npcName = "Midsummer Supplier", item = 34685, itemName = "Vestment of Summer", count = 1, map = 1438, x = 56.0, y = 92.2, f = "e" },
					{ t = "buy", npc = 26123, npcName = "Midsummer Supplier", item = 34683, itemName = "Sandals of Summer", count = 1, map = 1438, x = 56.0, y = 92.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1438, x = 56.0, y = 91.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1457, x = 40.5, y = 81.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 8609, npcName = "Alexandra Constantine", map = 1419, x = 65.5, y = 24.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1453, x = 18.2, y = 25.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26879, npcName = "Tomas Riverwell", map = 114, x = 59.0, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 125, x = 36.8, y = 44.1, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-operation-gnomeregan-pre-cataclysm-event",
		pack = "guides",
		title = "Operation Gnomeregan Pre-Cataclysm Event",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1455,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 25229, title = "A Few Good Gnomes", npc = 7937, npcName = "High Tinker Mekkatorque", map = 1455, x = 68.7, y = 49.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 67.6, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 50.2, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25229, title = "A Few Good Gnomes", npc = 39675, npcName = "Captain Tread Sparknozzle", map = 1426, x = 50.2, y = 48.4, f = "e" },
					{ t = "accept", quest = 25199, title = "Basic Orders", npc = 39675, npcName = "Captain Tread Sparknozzle", map = 1426, x = 50.2, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 49.5, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25199, title = "Basic Orders", npc = 39675, npcName = "Captain Tread Sparknozzle", map = 1426, x = 50.2, y = 48.4, f = "e" },
					{ t = "accept", quest = 25285, title = "In and Out", npc = 39675, npcName = "Captain Tread Sparknozzle", map = 1426, x = 50.2, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 50.2, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25285, title = "In and Out", npc = 39675, npcName = "Captain Tread Sparknozzle", map = 1426, x = 50.2, y = 48.4, f = "e" },
					{ t = "accept", quest = 25289, title = "One Step Forward...", npc = 39675, npcName = "Captain Tread Sparknozzle", map = 1426, x = 50.2, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 50.1, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25289, title = "One Step Forward...", npc = 39675, npcName = "Captain Tread Sparknozzle", map = 1426, x = 50.2, y = 48.4, f = "e" },
					{ t = "accept", quest = 25295, title = "Press Fire", npc = 39675, npcName = "Captain Tread Sparknozzle", map = 1426, x = 50.2, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 25212, title = "Vent Horizon", npc = 39386, npcName = "Pilot Muzzlesprock", map = 1426, x = 50.1, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 50.1, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25212, title = "Vent Horizon", npc = 39386, npcName = "Pilot Muzzlesprock", map = 1426, x = 50.1, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 50.4, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 50.6, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25295, title = "Press Fire", npc = 39675, npcName = "Captain Tread Sparknozzle", map = 1426, x = 50.2, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 25283, title = "Prepping the Speech", npc = 39678, npcName = "Toby Zeigear", map = 1426, x = 49.3, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 49.1, y = 48.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 45.9, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 47.3, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25283, title = "Prepping the Speech", npc = 39678, npcName = "Toby Zeigear", map = 1426, x = 49.3, y = 48.3, f = "e" },
					{ t = "accept", quest = 25286, title = "Words for Delivery", npc = 39678, npcName = "Toby Zeigear", map = 1426, x = 49.3, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25286, title = "Words for Delivery", npc = 39675, npcName = "Captain Tread Sparknozzle", map = 1426, x = 50.2, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 25287, title = "Words for Delivery", npc = 39675, npcName = "Captain Tread Sparknozzle", map = 1426, x = 50.2, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 50.1, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25287, title = "Words for Delivery", npc = 39271, npcName = "High Tinker Mekkatorque", map = 1426, x = 25.9, y = 47.1, f = "e" },
					{ t = "accept", quest = 25393, title = "Operation: Gnomeregan", npc = 39271, npcName = "High Tinker Mekkatorque", map = 1426, x = 25.9, y = 47.1, f = "e" },
				},
			},
			{
				note = "Use your Gnomeregan Pride |use Gnomeregan Pride##54651",
				goals = {
					{ t = "use", item = 54651, itemName = "Gnomeregan Pride", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 25393, title = "Operation: Gnomeregan", npc = 7937, npcName = "High Tinker Mekkatorque", map = 1455, x = 68.7, y = 49.0, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-harvest-festival",
		pack = "guides",
		title = "Harvest Festival",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1426,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 8149, title = "Honoring a Hero", npc = 15011, npcName = "Wagner Hammerstrike", map = 1426, x = 52.6, y = 36.0, f = "e" },
				},
			},
			{
				note = "Fly to Chillwind Camp|goto Western Plaguelands,43.0,84.3,1.5|noway|c",
				goals = {
					{ t = "talk", npc = 1573, npcName = "Gryth Thurden", map = 1455, x = 55.5, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 52.0, y = 83.4, f = "e" },
				},
			},
			{
				note = "Fly to Ironforge|goto Ironforge|noway|c",
				goals = {
					{ t = "talk", npc = 12596, npcName = "Bibilfaz Featherwhistle", map = 1455, x = 42.9, y = 85.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8149, title = "Honoring a Hero", npc = 15011, npcName = "Wagner Hammerstrike", map = 1426, x = 52.6, y = 36.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1426, x = 52.8, y = 36.6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-brewfest-dailies",
		pack = "guides",
		title = "Brewfest Dailies",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1426,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11293, title = "Bark for the Barleybrews!", npc = 23627, npcName = "Becan Barleybrew", map = 1426, x = 49.0, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11294, title = "Bark for the Thunderbrews!", npc = 23628, npcName = "Daran Thunderbrew", map = 1426, x = 49.5, y = 38.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 31.7, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 61.2, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 65.3, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 29.5, y = 14.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 31.7, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 61.2, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 65.3, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 29.5, y = 14.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11293, title = "Bark for the Barleybrews!", npc = 23627, npcName = "Becan Barleybrew", map = 1426, x = 49.0, y = 39.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11294, title = "Bark for the Thunderbrews!", npc = 23628, npcName = "Daran Thunderbrew", map = 1426, x = 49.5, y = 38.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12020, title = "This One Time, When I Was Drunk...", map = 1426, x = 48.9, y = 38.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12020, title = "This One Time, When I Was Drunk...", npc = 27215, npcName = "Boxey Boltspinner", map = 1426, x = 47.6, y = 39.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 23558, npcName = "Neill Ramstein", map = 1426, x = 46.6, y = 40.3, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-brewfest-achievements",
		pack = "guides",
		title = "Brewfest Achievements",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1426,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "buy", npc = 23522, npcName = "Arlen Lochlan", item = 33043, itemName = "The Essential Brewfest Pretzel", count = 1, map = 1426, x = 48.5, y = 40.0, f = "e" },
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
					{ t = "buy", npc = 23521, npcName = "Anne Summers", item = 34065, itemName = "Spiced Onion Cheese", count = 1, map = 1426, x = 49.3, y = 39.5, f = "e" },
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
					{ t = "buy", npc = 23481, npcName = "Keiran Donoghue", item = 34063, itemName = "Dried Sausage", count = 1, map = 1426, x = 48.9, y = 38.1, f = "e" },
					{ t = "buy", npc = 23481, npcName = "Keiran Donoghue", item = 34064, itemName = "Succulent Sausage", count = 1, map = 1426, x = 48.9, y = 38.1, f = "e" },
					{ t = "buy", npc = 23481, npcName = "Keiran Donoghue", item = 33023, itemName = "Savory Sausage", count = 1, map = 1426, x = 48.9, y = 38.1, f = "e" },
					{ t = "buy", npc = 23481, npcName = "Keiran Donoghue", item = 33024, itemName = "Pickled Sausage", count = 1, map = 1426, x = 48.9, y = 38.1, f = "e" },
					{ t = "buy", npc = 23481, npcName = "Keiran Donoghue", item = 33025, itemName = "Spicy Smoked Sausage", count = 1, map = 1426, x = 48.9, y = 38.1, f = "e" },
					{ t = "buy", npc = 23481, npcName = "Keiran Donoghue", item = 33026, itemName = "The Golden Link", count = 1, map = 1426, x = 48.9, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 23710, npcName = "Belbi Quikswitch", item = 37750, itemName = "Fresh Brewfest Hops", count = 1, map = 1426, x = 49.3, y = 39.6, f = "e" },
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
					{ t = "buy", npc = 23710, npcName = "Belbi Quikswitch", item = 37571, itemName = "\"Brew of the Month\" Club Membership Form", count = 1, map = 1426, x = 49.3, y = 39.6, f = "e" },
					{ t = "accept", quest = 12278, title = "Brew of the Month Club", npc = 23710, npcName = "Belbi Quikswitch", map = 1426, x = 49.3, y = 39.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12278, title = "Brew of the Month Club", npc = 27478, npcName = "Larkin Thunderbrew", map = 1455, x = 18.8, y = 53.1, f = "e" },
				},
			},
		},
	})
end

