-- TuWoW_Leveling — Guides/Leveling_Alliance_10.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-draenei-1-13-part-2",
		pack = "guides",
		title = "Draenei (1-13) (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 9,
		maxLevel = 13,
		zone = 1941,
		version = 1,
		races = { "Draenei" },
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 10428, title = "The Missing Fisherman", npc = 17311, npcName = "Cowlen", map = 1941, x = 16.6, y = 94.5, f = "e" },
					{ t = "accept", quest = 9527, title = "All That Remains", npc = 17311, npcName = "Cowlen", map = 1941, x = 16.6, y = 94.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9527, itemName = "Remains of Cowlen's Family", count = 1, oi = 1, map = 1941, x = 14.8, y = 92.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9527, title = "All That Remains", npc = 17311, npcName = "Cowlen", map = 1941, x = 16.6, y = 94.5, f = "e" },
				},
			},
			{
				note = "Hearth to Azure Watch|goto Azuremyst Isle,49.2,50.8,2|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9544, title = "The Prophecy of Akida", npc = 17114, npcName = "Arugoo the Stillpine", map = 1941, x = 49.41, y = 51.0, f = "e" },
					{ t = "accept", quest = 9559, title = "Stillpine Hold", npc = 17114, npcName = "Arugoo the Stillpine", map = 1941, x = 49.41, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9515, title = "Warlord Sriss'tiz", npc = 17241, npcName = "Priestess Kyleen Il'dinare", map = 1941, x = 47.0, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 10, f = "e" },
				},
			},
			{
				note = "Go west into Stillpine Hold to 46.1,16.6",
				only = { races = { "Draenei" } },
				goals = {
					{ t = "accept", quest = 9582, title = "Strength of One", npc = 17480, npcName = "Ruada", map = 1941, x = 50.0, y = 50.5, f = "e" },
					{ t = "kill", quest = 9582, target = "Death Ravager", count = 1, oi = 1, map = 1941, x = 53.9, y = 10.0, f = "e" },
					{ t = "turnin", quest = 9582, title = "Strength of One", npc = 17480, npcName = "Ruada", map = 1941, x = 50.0, y = 50.5, f = "e" },
					{ t = "accept", quest = 10350, title = "Behomat", npc = 17480, npcName = "Ruada", map = 1941, x = 50.0, y = 50.5, f = "e" },
					{ t = "turnin", quest = 10350, title = "Behomat", npc = 17120, npcName = "Behomat", map = 1947, x = 55.6, y = 82.3, f = "e" },
					{ t = "accept", quest = 9462, title = "Call of Fire (1)", npc = 17219, npcName = "Sulaa", map = 1947, x = 32.3, y = 23.9, f = "e" },
					{ t = "turnin", quest = 9462, title = "Call of Fire (1)", npc = 17212, npcName = "Tuluun", map = 1941, x = 48.1, y = 50.4, f = "e" },
					{ t = "accept", quest = 9464, title = "Call of Fire (2)", npc = 17212, npcName = "Tuluun", map = 1941, x = 48.1, y = 50.4, f = "e" },
					{ t = "turnin", quest = 9464, title = "Call of Fire (2)", npc = 17205, npcName = "Temper", map = 1941, x = 59.5, y = 18.1, f = "e" },
					{ t = "accept", quest = 9465, title = "Call of Fire (3)", npc = 17205, npcName = "Temper", map = 1941, x = 59.5, y = 18.1, f = "e" },
					{ t = "collect", quest = 9465, itemName = "Ritual Torch", count = 1, oi = 1, map = 1941, x = 46.1, y = 16.6, f = "e" },
					{ t = "turnin", quest = 9465, title = "Call of Fire (3)", npc = 17205, npcName = "Temper", map = 1941, x = 59.5, y = 18.1, f = "e" },
					{ t = "accept", quest = 9467, title = "Call of Fire (4)", npc = 17205, npcName = "Temper", map = 1941, x = 59.5, y = 18.1, f = "e" },
					{ t = "collect", quest = 9467, itemName = "Hauteur's Ashes", count = 1, oi = 1, map = 1941, x = 11.4, y = 82.3, f = "e" },
					{ t = "turnin", quest = 9467, title = "Call of Fire (4)", npc = 17205, npcName = "Temper", map = 1941, x = 59.5, y = 18.1, f = "e" },
					{ t = "accept", quest = 9468, title = "Call of Fire (5)", npc = 17205, npcName = "Temper", map = 1941, x = 59.5, y = 18.1, f = "e" },
					{ t = "turnin", quest = 9468, title = "Call of Fire (5)", npc = 17212, npcName = "Tuluun", map = 1941, x = 48.1, y = 50.4, f = "e" },
					{ t = "accept", quest = 9461, title = "Call of Fire (6)", npc = 17212, npcName = "Tuluun", map = 1941, x = 48.1, y = 50.4, f = "e" },
					{ t = "turnin", quest = 9461, title = "Call of Fire (6)", npc = 17468, npcName = "Prophet Velen", map = 1947, x = 32.8, y = 54.5, f = "e" },
					{ t = "accept", quest = 9555, title = "Call of Fire (7)", npc = 17468, npcName = "Prophet Velen", map = 1947, x = 32.8, y = 54.5, f = "e" },
					{ t = "turnin", quest = 9555, title = "Call of Fire (7)", npc = 17204, npcName = "Farseer Nobundo", map = 1947, x = 31.4, y = 27.7, f = "e" },
					{ t = "accept", quest = 9757, title = "Seek Huntress Kella Nightbow", npc = 17110, npcName = "Acteon", map = 1941, x = 49.8, y = 51.9, f = "e" },
					{ t = "turnin", quest = 9757, title = "Seek Huntress Kella Nightbow", npc = 17614, npcName = "Huntress Kella Nightbow", map = 1941, x = 24.2, y = 54.3, f = "e" },
					{ t = "accept", quest = 9591, title = "Taming the Beast (1)", npc = 17614, npcName = "Huntress Kella Nightbow", map = 1941, x = 24.2, y = 54.3, f = "e" },
					{ t = "turnin", quest = 9591, title = "Taming the Beast (1)", npc = 17614, npcName = "Huntress Kella Nightbow", map = 1941, x = 24.2, y = 54.3, f = "e" },
					{ t = "accept", quest = 9592, title = "Taming the Beast (2)", npc = 17614, npcName = "Huntress Kella Nightbow", map = 1941, x = 24.2, y = 54.3, f = "e" },
					{ t = "turnin", quest = 9592, title = "Taming the Beast (2)", npc = 17614, npcName = "Huntress Kella Nightbow", map = 1941, x = 24.2, y = 54.3, f = "e" },
					{ t = "accept", quest = 9593, title = "Taming the Beast (3)", npc = 17614, npcName = "Huntress Kella Nightbow", map = 1941, x = 24.2, y = 54.3, f = "e" },
					{ t = "turnin", quest = 9593, title = "Taming the Beast (3)", npc = 17614, npcName = "Huntress Kella Nightbow", map = 1941, x = 24.2, y = 54.3, f = "e" },
					{ t = "accept", quest = 9675, title = "Beast Training", npc = 17614, npcName = "Huntress Kella Nightbow", map = 1941, x = 24.2, y = 54.3, f = "e" },
					{ t = "turnin", quest = 9675, title = "Beast Training", npc = 16712, npcName = "Ganaar", map = 1947, x = 44.0, y = 86.7, f = "e" },
					{ t = "goto", map = 1941, x = 22.8, y = 75.0, f = "e", only = { classes = { "HUNTER" } } },
					{ t = "goto", map = 1941, x = 34.9, y = 35.1, f = "e", only = { classes = { "HUNTER" } } },
					{ t = "goto", map = 1941, x = 36.6, y = 40.8, f = "e", only = { classes = { "HUNTER" } } },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9623, title = "Coming of Age", npc = 17116, npcName = "Exarch Menelaous", map = 1941, x = 47.1, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9559, title = "Stillpine Hold", npc = 17440, npcName = "High Chief Stillpine", map = 1941, x = 46.7, y = 20.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9562, title = "Murlocs... Why Here? Why Now?", npc = 17441, npcName = "Gurf", map = 1941, x = 44.7, y = 23.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9562, itemName = "Stillpine Grain", count = 5, oi = 1, map = 1941, x = 33.8, y = 25.7, f = "e" },
					{ t = "accept", quest = 9564, title = "Gurf's Dignity", map = 1941, x = 33.8, y = 25.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9562, title = "Murlocs... Why Here? Why Now?", npc = 17441, npcName = "Gurf", map = 1941, x = 44.7, y = 23.6, f = "e" },
					{ t = "turnin", quest = 9564, title = "Gurf's Dignity", npc = 17441, npcName = "Gurf", map = 1941, x = 44.7, y = 23.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9565, title = "Search Stillpine Hold", npc = 17440, npcName = "High Chief Stillpine", map = 1941, x = 46.7, y = 20.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9573, title = "Chieftain Oomooroo", npc = 17445, npcName = "Stillpine the Younger", map = 1941, x = 46.9, y = 21.2, f = "e" },
				},
			},
			{
				note = "Go inside the big cave to 50.5,11.5",
				goals = {
					{ t = "turnin", quest = 9565, title = "Search Stillpine Hold", map = 1941, x = 50.5, y = 11.5, f = "e" },
					{ t = "accept", quest = 9566, title = "Blood Crystals", map = 1941, x = 50.5, y = 11.5, f = "e" },
				},
			},
			{
				note = "Go upstairs in the cave to 47.4,16.0",
				goals = {
					{ t = "kill", quest = 9573, target = "Crazed Wildkin", count = 9, oi = 2, map = 1941, x = 47.4, y = 16.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9573, npc = 17448, target = "Chieftain Oomooroo", count = 1, oi = 1, map = 1941, x = 47.4, y = 14.1, f = "e" },
				},
			},
			{
				note = "Go outside the cave to 46.7,20.6",
				goals = {
					{ t = "turnin", quest = 9566, title = "Blood Crystals", npc = 17440, npcName = "High Chief Stillpine", map = 1941, x = 46.7, y = 20.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9573, title = "Chieftain Oomooroo", npc = 17445, npcName = "Stillpine the Younger", map = 1941, x = 46.9, y = 21.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9570, title = "The Kurken is Lurkin'", npc = 17443, npcName = "Kurz the Revelator", map = 1941, x = 47.0, y = 22.3, f = "e" },
				},
			},
			{
				note = "Go inside the big cave to 49.9,13.0",
				goals = {
					{ t = "collect", quest = 9570, itemName = "The Kurken's Hide", count = 1, oi = 1, map = 1941, x = 49.9, y = 13.0, f = "e" },
				},
			},
			{
				note = "Go outside the cave to 47.0,22.3",
				goals = {
					{ t = "turnin", quest = 9570, title = "The Kurken is Lurkin'", npc = 17443, npcName = "Kurz the Revelator", map = 1941, x = 47.0, y = 22.3, f = "e" },
					{ t = "accept", quest = 9571, title = "The Kurken's Hide", npc = 17443, npcName = "Kurz the Revelator", map = 1941, x = 47.0, y = 22.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9571, title = "The Kurken's Hide", npc = 17442, npcName = "Moordo", map = 1941, x = 44.8, y = 23.9, f = "e" },
				},
			},
			{
				note = "Hearth to Azure Watch|goto Azuremyst Isle,49.2,50.8,2|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9623, title = "Coming of Age", npc = 17584, npcName = "Torallius the Pack Handler", map = 1941, x = 35.1, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1941, x = 21.6, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Auberdine", text = "Auberdine", map = 1439, x = 36.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3524, title = "Washed Ashore (1)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 983, title = "Buzzbox 827", npc = 3666, npcName = "Wizbang Cranktoggle", map = 1439, x = 37.0, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Auberdine", text = "Auberdine", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 984, title = "How Big a Threat? (1)", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 954, title = "Bashal'Aran (1)", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 983, itemName = "Crawler Leg", count = 6, oi = 1, map = 1439, x = 36.1, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3524, itemName = "Sea Creature Bones", count = 1, oi = 1, map = 1439, x = 36.4, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 983, title = "Buzzbox 827", map = 1439, x = 36.7, y = 46.3, f = "e" },
					{ t = "accept", quest = 1001, title = "Buzzbox 411", map = 1439, x = 36.7, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3524, title = "Washed Ashore (1)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
					{ t = "accept", quest = 4681, title = "Washed Ashore (2)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1001, itemName = "Thresher Eye", count = 3, oi = 1, map = 1439, x = 32.7, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4681, itemName = "Sea Turtle Remains", count = 1, oi = 1, map = 1439, x = 31.9, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 39.6, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 984, title = "How Big a Threat? (1)", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
					{ t = "accept", quest = 4761, title = "Thundris Windweaver", npc = 3693, npcName = "Terenthis", map = 1439, x = 39.4, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4681, title = "Washed Ashore (2)", npc = 10219, npcName = "Gwennyth Bly'Leggonde", map = 1439, x = 36.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4761, title = "Thundris Windweaver", npc = 3649, npcName = "Thundris Windweaver", map = 1439, x = 37.4, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 954, title = "Bashal'Aran (1)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
					{ t = "accept", quest = 955, title = "Bashal'Aran (2)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 955, itemName = "Grell Earring", count = 8, oi = 1, map = 1439, x = 44.6, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 955, title = "Bashal'Aran (2)", npc = 3650, npcName = "Asterion", map = 1439, x = 44.2, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1001, title = "Buzzbox 411", map = 1439, x = 42.0, y = 28.6, f = "e" },
				},
			},
			{
				note = "Hearth to Auberdine|goto Darkshore,37.0,44.1,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				note = "Ride the boat to Azuremyst Isle|goto Azuremyst Isle|noway|c",
				only = { races = { "Draenei" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", map = 1439, x = 30.8, y = 41.02, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "PALADIN" } },
				goals = {
					{ t = "accept", quest = 10366, title = "Jol", npc = 17483, npcName = "Tullas", map = 1941, x = 48.4, y = 49.6, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 10366, title = "Jol", npc = 17509, npcName = "Jol", map = 1947, x = 38.0, y = 82.0, f = "e" },
					{ t = "accept", quest = 9598, title = "Redemption (1)", npc = 17509, npcName = "Jol", map = 1947, x = 38.0, y = 82.0, f = "e" },
					{ t = "turnin", quest = 9598, title = "Redemption (1)", npc = 17509, npcName = "Jol", map = 1947, x = 38.0, y = 82.0, f = "e" },
					{ t = "accept", quest = 9600, title = "Redemption (2)", npc = 17509, npcName = "Jol", map = 1947, x = 38.0, y = 82.0, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", map = 1942, x = 65.3, y = 77.6, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 9600, title = "Redemption (2)", npc = 17509, npcName = "Jol", map = 1947, x = 38.0, y = 82.0, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "PALADIN" } },
				goals = {
					{ t = "goto", map = 1947, x = 22.0, y = 54.0, f = "e" },
				},
			},
			{
				note = "Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c",
				goals = {
					{ t = "goto", map = 1439, x = 32.4, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Stormwind City", text = "Stormwind City", map = 1453, x = 71.0, y = 72.5, f = "e" },
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
					{ t = "getfp", location = "Ironforge", text = "Ironforge", map = 1455, x = 55.5, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 433, title = "The Public Servant", npc = 1977, npcName = "Senator Mehr Stonehallow", map = 1426, x = 68.7, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 432, title = "Those Blasted Troggs!", npc = 1254, npcName = "Foreman Stonebrow", map = 1426, x = 69.1, y = 56.3, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 70.7,56.5",
				goals = {
					{ t = "kill", quest = 432, target = "Rockjaw Skullthumper", count = 6, oi = 1, map = 1426, x = 70.7, y = 56.5, f = "e" },
					{ t = "kill", quest = 433, target = "Rockjaw Bonesnapper", count = 10, oi = 1, map = 1426, x = 70.7, y = 56.5, f = "e" },
				},
			},
			{
				note = "Go outside to 68.7,56.0",
				goals = {
					{ t = "turnin", quest = 433, title = "The Public Servant", npc = 1977, npcName = "Senator Mehr Stonehallow", map = 1426, x = 68.7, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 432, title = "Those Blasted Troggs!", npc = 1254, npcName = "Foreman Stonebrow", map = 1426, x = 69.1, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Thelsamar", text = "Thelsamar", map = 1432, x = 33.9, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 416, title = "Rat Catching", npc = 1340, npcName = "Mountaineer Kadrell", map = 1432, x = 34.8, y = 47.1, f = "e" },
					{ t = "accept", quest = 1339, title = "Mountaineer Stormpike's Task", npc = 1340, npcName = "Mountaineer Kadrell", map = 1432, x = 34.8, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Thelsamar", text = "Thelsamar", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 418, title = "Thelsamar Blood Sausages", npc = 1963, npcName = "Vidra Hearthstove", map = 1432, x = 34.8, y = 49.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 418, itemName = "Boar Intestines", count = 3, oi = 1, map = 1432, x = 37.4, y = 38.9, f = "e" },
					{ t = "collect", quest = 418, itemName = "Spider Ichor", count = 3, oi = 3, map = 1432, x = 37.4, y = 38.9, f = "e" },
					{ t = "collect", quest = 418, itemName = "Bear Meat", count = 3, oi = 2, map = 1432, x = 37.4, y = 38.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 416, itemName = "Tunnel Rat Ear", count = 12, oi = 1, map = 1432, x = 24.5, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1339, title = "Mountaineer Stormpike's Task", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.8, y = 18.4, f = "e" },
					{ t = "accept", quest = 1338, title = "Stormpike's Order", npc = 1343, npcName = "Mountaineer Stormpike", map = 1432, x = 24.8, y = 18.4, f = "e" },
				},
			},
			{
				note = "Hearth to Thelsamar|goto Loch Modan,35.5,48.3,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 418, title = "Thelsamar Blood Sausages", npc = 1963, npcName = "Vidra Hearthstove", map = 1432, x = 34.8, y = 49.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 416, title = "Rat Catching", npc = 1340, npcName = "Mountaineer Kadrell", map = 1432, x = 34.8, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 224, title = "In Defense of the King's Lands (1)", npc = 1089, npcName = "Mountaineer Cobbleflint", map = 1432, x = 22.1, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 267, title = "The Trogg Threat", npc = 1092, npcName = "Captain Rugelfuss", map = 1432, x = 23.2, y = 73.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 224, target = "Stonesplinter Trogg", count = 10, oi = 1, map = 1432, x = 31.1, y = 70.7, f = "e" },
					{ t = "kill", quest = 224, target = "Stonesplinter Scout", count = 10, oi = 2, map = 1432, x = 31.1, y = 70.7, f = "e" },
					{ t = "collect", quest = 267, itemName = "Trogg Stone Tooth", count = 8, oi = 1, map = 1432, x = 31.1, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 224, title = "In Defense of the King's Lands (1)", npc = 1089, npcName = "Mountaineer Cobbleflint", map = 1432, x = 22.1, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 267, title = "The Trogg Threat", npc = 1092, npcName = "Captain Rugelfuss", map = 1432, x = 23.2, y = 73.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 13, f = "e" },
				},
			},
			{
				note = "Fly to Stormwind|goto Stormwind City|noway|c",
				goals = {
					{ t = "talk", npc = 1572, npcName = "Thorgrum Borrelson", map = 1432, x = 33.9, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1338, title = "Stormpike's Order", npc = 5413, npcName = "Furen Longbeard", map = 1453, x = 64.6, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 109, title = "Report to Gryan Stoutmantle", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.9, f = "e" },
				},
			},
		},
	})
end

