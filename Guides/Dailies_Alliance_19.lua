-- TuWoW_Leveling — Guides/Dailies_Alliance_19.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-home-cities-exalted-reputation-guide-part-5",
		pack = "guides",
		title = "Home Cities Exalted Reputation Guide (Parte 5/5)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 77,
		zone = 1429,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 9452, itemName = "Red Snapper", count = 10, oi = 1, map = 1439, x = 61.9, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9452, title = "Red Snapper - Very Tasty!", npc = 17101, npcName = "Diktynna", map = 1439, x = 61.1, y = 54.2, f = "e" },
					{ t = "accept", quest = 9453, title = "Find Acteon!", npc = 17101, npcName = "Diktynna", map = 1439, x = 61.1, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9453, title = "Find Acteon!", npc = 17110, npcName = "Acteon", map = 1439, x = 49.8, y = 51.9, f = "e" },
					{ t = "accept", quest = 9454, title = "The Great Moongraze Hunt (1)", npc = 17110, npcName = "Acteon", map = 1439, x = 49.8, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9463, title = "Medicinal Purpose", npc = 17214, npcName = "Anchorite Fateema", map = 1439, x = 48.4, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9313, title = "Travel to Azure Watch", npc = 16551, npcName = "Technician Dyvuun", map = 1439, x = 48.7, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9314, title = "Word from Azure Watch", npc = 16553, npcName = "Caregiver Chellan", map = 1439, x = 48.3, y = 49.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Azure Watch", text = "Azure Watch", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9454, itemName = "Moongraze Stag Tenderloin", count = 6, oi = 1, map = 1439, x = 50.3, y = 56.6, f = "e" },
					{ t = "collect", quest = 9463, itemName = "Root Trapper Vine", count = 8, oi = 1, map = 1439, x = 50.3, y = 56.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9506, title = "A Small Start", npc = 17240, npcName = "Admiral Odesyus", map = 1439, x = 47.0, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9512, title = "Cookie's Jumbo Gumbo", npc = 17246, npcName = "\"Cookie\" McWeaksauce", map = 1439, x = 46.7, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9512, itemName = "Skittering Crawler Meat", count = 6, oi = 1, map = 1439, x = 47.6, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9512, title = "Cookie's Jumbo Gumbo", npc = 17246, npcName = "\"Cookie\" McWeaksauce", map = 1439, x = 46.7, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9513, title = "Reclaiming the Ruins", npc = 17241, npcName = "Priestess Kyleen Il'dinare", map = 1439, x = 47.0, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9523, title = "Precious and Fragile Things Need Special Handling", npc = 17242, npcName = "Archaeologist Adamant Ironheart", map = 1439, x = 47.2, y = 70.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9506, item = 23739, itemName = "Nautical Map", count = 1, oi = 2, map = 1439, x = 58.6, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9506, item = 23738, itemName = "Nautical Compass", count = 1, oi = 1, map = 1439, x = 59.6, y = 67.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9506, title = "A Small Start", npc = 17240, npcName = "Admiral Odesyus", map = 1439, x = 47.0, y = 70.2, f = "e" },
					{ t = "accept", quest = 9530, title = "I've Got a Plant", npc = 17240, npcName = "Admiral Odesyus", map = 1439, x = 47.0, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9530, itemName = "Hollowed Out Tree", count = 1, oi = 1, map = 1439, x = 45.9, y = 65.7, f = "e" },
					{ t = "collect", quest = 9530, itemName = "Pile of Leaves", count = 5, oi = 2, map = 1439, x = 45.9, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9530, title = "I've Got a Plant", npc = 17240, npcName = "Admiral Odesyus", map = 1439, x = 47.0, y = 70.2, f = "e" },
					{ t = "accept", quest = 9531, title = "Tree's Company", npc = 17240, npcName = "Admiral Odesyus", map = 1439, x = 47.0, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9523, itemName = "Ancient Relic", count = 8, oi = 1, map = 1439, x = 36.1, y = 77.0, f = "e" },
					{ t = "kill", quest = 9513, target = "Wrathscale Myrmidon", count = 5, oi = 1, map = 1439, x = 36.1, y = 77.0, f = "e" },
					{ t = "kill", quest = 9513, target = "Wrathscale Naga", count = 5, oi = 2, map = 1439, x = 36.1, y = 77.0, f = "e" },
					{ t = "kill", quest = 9513, target = "Wrathscale Siren", count = 5, oi = 3, map = 1439, x = 36.1, y = 77.0, f = "e" },
					{ t = "accept", quest = 9514, title = "Rune Covered Tablet", map = 1439, x = 36.1, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 18.5, y = 84.3, f = "e" },
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
					{ t = "turnin", quest = 9463, title = "Medicinal Purpose", npc = 17214, npcName = "Anchorite Fateema", map = 1439, x = 48.4, y = 51.8, f = "e" },
					{ t = "accept", quest = 9473, title = "An Alternative Alternative", npc = 17215, npcName = "Daedal", map = 1439, x = 48.4, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9454, title = "The Great Moongraze Hunt (1)", npc = 17110, npcName = "Acteon", map = 1439, x = 49.8, y = 51.9, f = "e" },
					{ t = "accept", quest = 10324, title = "The Great Moongraze Hunt (2)", npc = 17110, npcName = "Acteon", map = 1439, x = 49.8, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10324, itemName = "Moongraze Buck Hide", count = 6, oi = 1, map = 1439, x = 50.6, y = 46.2, f = "e" },
					{ t = "accept", quest = 9455, title = "Strange Findings", map = 1439, x = 50.6, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9473, itemName = "Azure Snapdragon Bulb", count = 5, oi = 1, map = 1439, x = 50.4, y = 37.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9455, title = "Strange Findings", npc = 17116, npcName = "Exarch Menelaous", map = 1439, x = 47.1, y = 50.6, f = "e" },
					{ t = "accept", quest = 9456, title = "Nightstalker Clean Up, Isle 2...", npc = 17116, npcName = "Exarch Menelaous", map = 1439, x = 47.1, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9473, title = "An Alternative Alternative", npc = 17215, npcName = "Daedal", map = 1439, x = 48.4, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10428, title = "The Missing Fisherman", npc = 17488, npcName = "Dulvi", map = 1439, x = 49.0, y = 51.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10324, title = "The Great Moongraze Hunt (2)", npc = 17110, npcName = "Acteon", map = 1439, x = 49.8, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9456, target = "Infected Nightstalker Runt", count = 8, oi = 1, map = 1439, x = 45.7, y = 43.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9456, title = "Nightstalker Clean Up, Isle 2...", npc = 17116, npcName = "Exarch Menelaous", map = 1439, x = 47.1, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9531, title = "Tree's Company", npc = 17240, npcName = "Admiral Odesyus", map = 1439, x = 47.0, y = 70.2, f = "e" },
					{ t = "accept", quest = 9537, title = "Show Gnomercy", npc = 17240, npcName = "Admiral Odesyus", map = 1439, x = 47.0, y = 70.2, f = "e" },
					{ t = "turnin", quest = 9513, title = "Reclaiming the Ruins", npc = 17241, npcName = "Priestess Kyleen Il'dinare", map = 1439, x = 47.0, y = 70.2, f = "e" },
					{ t = "turnin", quest = 9514, title = "Rune Covered Tablet", npc = 17241, npcName = "Priestess Kyleen Il'dinare", map = 1439, x = 47.0, y = 70.2, f = "e" },
					{ t = "accept", quest = 9515, title = "Warlord Sriss'tiz", npc = 17241, npcName = "Priestess Kyleen Il'dinare", map = 1439, x = 47.0, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9523, title = "Precious and Fragile Things Need Special Handling", npc = 17242, npcName = "Archaeologist Adamant Ironheart", map = 1439, x = 47.2, y = 70.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9537, itemName = "Traitor's Communication", count = 1, oi = 1, map = 1439, x = 48.2, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9537, title = "Show Gnomercy", npc = 17240, npcName = "Admiral Odesyus", map = 1439, x = 47.0, y = 70.2, f = "e" },
					{ t = "accept", quest = 9602, title = "Deliver Them From Evil...", npc = 17240, npcName = "Admiral Odesyus", map = 1439, x = 47.0, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9602, title = "Deliver Them From Evil...", npc = 17116, npcName = "Exarch Menelaous", map = 1439, x = 47.1, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9538, title = "Learning the Language", npc = 17232, npcName = "Cryptographer Aurren", map = 1439, x = 49.4, y = 51.0, f = "e" },
					{ t = "turnin", quest = 9538, title = "Learning the Language", npc = 17232, npcName = "Cryptographer Aurren", map = 1439, x = 49.4, y = 51.0, f = "e" },
					{ t = "accept", quest = 9539, title = "Totem of Coo", npc = 17232, npcName = "Cryptographer Aurren", map = 1439, x = 49.4, y = 51.0, f = "e" },
				},
			},
			{
				note = "Follow the ghost furbolg as he runs up the hill northeast to 55.2,41.6",
				goals = {
					{ t = "turnin", quest = 9539, title = "Totem of Coo", map = 1439, x = 55.2, y = 41.6, f = "e" },
					{ t = "accept", quest = 9540, title = "Totem of Tikti", map = 1439, x = 55.2, y = 41.6, f = "e" },
				},
			},
			{
				note = "Follow the ghost furbolg to the edge of the cliff",
				goals = {
					{ t = "turnin", quest = 9540, title = "Totem of Tikti", f = "e" },
					{ t = "accept", quest = 9541, title = "Totem of Yor", f = "e" },
				},
			},
			{
				note = "Follow the ghost furbolg to the river",
				goals = {
					{ t = "turnin", quest = 9541, title = "Totem of Yor", f = "e" },
					{ t = "accept", quest = 9542, title = "Totem of Vark", f = "e" },
				},
			},
			{
				note = "Follow the ghost furbolg out of the water",
				goals = {
					{ t = "turnin", quest = 9542, title = "Totem of Vark", f = "e" },
					{ t = "accept", quest = 9544, title = "The Prophecy of Akida", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 23801, itemName = "Bristlelimb Key", count = 8, map = 1439, x = 28.5, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1439, x = 27.0, y = 76.7, f = "e" },
				},
			},
			{
				note = "Follow the path to the bottom of the cave to 25.2,74.2",
				goals = {
					{ t = "kill", quest = 9515, target = "Warlord Sriss'tiz", count = 1, oi = 1, map = 1439, x = 25.2, y = 74.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10428, title = "The Missing Fisherman", npc = 17311, npcName = "Cowlen", map = 1439, x = 16.6, y = 94.5, f = "e" },
					{ t = "accept", quest = 9527, title = "All That Remains", npc = 17311, npcName = "Cowlen", map = 1439, x = 16.6, y = 94.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9527, itemName = "Remains of Cowlen's Family", count = 1, oi = 1, map = 1439, x = 14.8, y = 92.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9527, title = "All That Remains", npc = 17311, npcName = "Cowlen", map = 1439, x = 16.6, y = 94.5, f = "e" },
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
					{ t = "turnin", quest = 9544, title = "The Prophecy of Akida", npc = 17114, npcName = "Arugoo the Stillpine", map = 1439, x = 49.41, y = 51.0, f = "e" },
					{ t = "accept", quest = 9559, title = "Stillpine Hold", npc = 17114, npcName = "Arugoo the Stillpine", map = 1439, x = 49.41, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9515, title = "Warlord Sriss'tiz", npc = 17241, npcName = "Priestess Kyleen Il'dinare", map = 1439, x = 47.0, y = 70.2, f = "e" },
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
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-human-champion-rank",
		pack = "guides",
		title = "Human Champion Rank",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13593, title = "Valiant Of Stormwind", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
					{ t = "turnin", quest = 13593, title = "Valiant Of Stormwind", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
					{ t = "accept", quest = 13718, title = "The Valiant's Charge", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13603, title = "A Blade Fit For A Champion", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
					{ t = "accept", quest = 13600, title = "A Worthy Weapon", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
					{ t = "accept", quest = 13616, title = "The Edge Of Winter", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13592, title = "A Valiant's Field Training", npc = 33222, npcName = "Sir Marcus Barlowe", map = 118, x = 76.5, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13665, title = "The Grand Melee", npc = 33223, npcName = "Captain Joseph Holley", map = 118, x = 76.6, y = 19.2, f = "e" },
					{ t = "accept", quest = 13847, title = "At The Enemy's Gates", npc = 33223, npcName = "Captain Joseph Holley", map = 118, x = 76.6, y = 19.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13603, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13600, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13616, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13847, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13847, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13847, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847",
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 76.1, y = 20.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13665, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 18.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13603, title = "A Blade Fit For A Champion", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
					{ t = "turnin", quest = 13600, title = "A Worthy Weapon", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
					{ t = "turnin", quest = 13616, title = "The Edge Of Winter", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13592, title = "A Valiant's Field Training", npc = 33222, npcName = "Sir Marcus Barlowe", map = 118, x = 76.5, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13665, title = "The Grand Melee", npc = 33223, npcName = "Captain Joseph Holley", map = 118, x = 76.6, y = 19.2, f = "e" },
					{ t = "turnin", quest = 13847, title = "At The Enemy's Gates", npc = 33223, npcName = "Captain Joseph Holley", map = 118, x = 76.6, y = 19.2, f = "e" },
				},
			},
			{
				note = "Make sure you have 25 Valiant Seals:",
				goals = {
					{ t = "collect", quest = 13718, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13718, title = "The Valiant's Charge", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.2, f = "e" },
					{ t = "accept", quest = 13699, title = "The Valiant's Challenge", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 76.0, y = 20.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33518, npcName = "Squire Danny", map = 118, x = 68.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13699, title = "The Valiant's Challenge", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-night-elf-champion-rank",
		pack = "guides",
		title = "Night Elf Champion Rank",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13706, title = "Valiant Of Darnassus", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
					{ t = "turnin", quest = 13706, title = "Valiant Of Darnassus", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
					{ t = "accept", quest = 13717, title = "The Valiant's Charge", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13757, title = "A Blade Fit For A Champion", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
					{ t = "accept", quest = 13758, title = "A Worthy Weapon", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
					{ t = "accept", quest = 13759, title = "The Edge Of Winter", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13760, title = "A Valiant's Field Training", npc = 33652, npcName = "Illestria Bladesinger", map = 118, x = 76.3, y = 19.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13761, title = "The Grand Melee", npc = 33654, npcName = "Airae Starseeker", map = 118, x = 76.4, y = 19.0, f = "e" },
					{ t = "accept", quest = 13855, title = "At The Enemy's Gates", npc = 33654, npcName = "Airae Starseeker", map = 118, x = 76.4, y = 19.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13757, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13758, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13759, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13855, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13855, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13855, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855",
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 76.0, y = 20.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13761, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 18.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13757, title = "A Blade Fit For A Champion", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
					{ t = "turnin", quest = 13758, title = "A Worthy Weapon", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
					{ t = "turnin", quest = 13759, title = "The Edge Of Winter", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13760, title = "A Valiant's Field Training", npc = 33652, npcName = "Illestria Bladesinger", map = 118, x = 76.3, y = 19.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13761, title = "The Grand Melee", npc = 33654, npcName = "Airae Starseeker", map = 118, x = 76.4, y = 19.0, f = "e" },
					{ t = "turnin", quest = 13855, title = "At The Enemy's Gates", npc = 33654, npcName = "Airae Starseeker", map = 118, x = 76.4, y = 19.0, f = "e" },
				},
			},
			{
				note = "Make sure you have 25 Valiant Seals:",
				goals = {
					{ t = "collect", quest = 13717, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13717, title = "The Valiant's Charge", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.1, f = "e" },
					{ t = "accept", quest = 13725, title = "The Valiant's Challenge", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 76.0, y = 20.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33518, npcName = "Squire Danny", map = 118, x = 68.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13725, title = "The Valiant's Challenge", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.1, f = "e" },
				},
			},
		},
	})
end

