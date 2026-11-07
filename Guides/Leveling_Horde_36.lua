-- TuWoW_Leveling — Guides/Leveling_Horde_36.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-outland-66-68-part-2",
		pack = "guides",
		title = "Outland (66-68) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 66,
		maxLevel = 68,
		zone = 1952,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", quest = 9849, target = "Minion of Gurok", count = 30, oi = 1, map = 1951, x = 27.9, y = 77.6, f = "e" },
				},
			},
			{
				note = "Hearth to Garadar|goto Nagrand,55.0,36.8,6|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9916, title = "Bleeding Hollow Supply Crates", npc = 18300, npcName = "Elkay'gan the Mystic", map = 1951, x = 55.5, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9907, title = "An Audacious Advance", npc = 18106, npcName = "Jorin Deadeye", map = 1951, x = 55.5, y = 37.6, f = "e" },
					{ t = "accept", quest = 10107, title = "Diplomatic Measures", npc = 18106, npcName = "Jorin Deadeye", map = 1951, x = 55.5, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1951, x = 73.8, y = 68.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10107, title = "Diplomatic Measures", npc = 18261, npcName = "Lantresor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
					{ t = "accept", quest = 9928, title = "Armaments for Deception", npc = 18261, npcName = "Lantresor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
					{ t = "accept", quest = 9927, title = "Ruthless Cunning", npc = 18261, npcName = "Lantresor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9928, itemName = "Kil'sorrow Armaments", count = 10, oi = 1, map = 1951, x = 71.4, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9935, target = "Giselda the Crone", count = 1, oi = 1, map = 1951, x = 71.1, y = 82.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9928, title = "Armaments for Deception", npc = 18261, npcName = "Lantresor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
					{ t = "turnin", quest = 9927, title = "Ruthless Cunning", npc = 18261, npcName = "Lantresor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
					{ t = "accept", quest = 9931, title = "Returning the Favor", npc = 18261, npcName = "Lantresor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
					{ t = "accept", quest = 9932, title = "Body of Evidence", npc = 18261, npcName = "Lantresor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9935, title = "Wanted: Giselda the Crone", npc = 18407, npcName = "Warden Bullrok", map = 1951, x = 55.8, y = 38.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9849, title = "Shattering the Veil", npc = 18099, npcName = "Gordawg", map = 1951, x = 61.8, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9810, title = "The Spirit Polluted", npc = 18073, npcName = "Elementalist Lo'ap", map = 1951, x = 60.5, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Warmaul ogres", count = 1, map = 1951, x = 46.5, y = 24.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9931, title = "Returning the Favor", npc = 18261, npcName = "Lantressor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
					{ t = "turnin", quest = 9932, title = "Body of Evidence", npc = 18261, npcName = "Lantressor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
					{ t = "accept", quest = 9934, title = "Message to Garadar", npc = 18261, npcName = "Lantressor of the Blade", map = 1951, x = 73.8, y = 62.6, f = "e" },
				},
			},
			{
				note = "Hearth to Garadar|goto Nagrand,55.0,36.8,6|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9934, title = "Message to Garadar", npc = 18063, npcName = "Garrosh", map = 1951, x = 55.5, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1946, x = 70.1, y = 33.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10928, title = "Killing the Crawlers", npc = 22489, npcName = "Grunt Grahk", map = 1949, x = 53.0, y = 96.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10928, target = "Cavern Crawler", count = 6, oi = 1, map = 1949, x = 52.4, y = 93.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10928, title = "Killing the Crawlers", npc = 21147, npcName = "Tor'chunk Twoclaws", map = 1949, x = 51.9, y = 58.4, f = "e" },
					{ t = "accept", quest = 10503, title = "The Bladespire Threat", npc = 21147, npcName = "Tor'chunk Twoclaws", map = 1949, x = 51.9, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10489, title = "Felling an Ancient Tree", map = 1949, x = 51.9, y = 57.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10486, title = "The Encroaching Wilderness", npc = 21117, npcName = "Gor'drek", map = 1949, x = 52.3, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Thunderlord Stronghold", f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Thunderlord Stronghold", map = 1949, x = 52.1, y = 54.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10486, target = "Bladewing Bloodletter", count = 12, oi = 1, map = 1949, x = 51.3, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10486, title = "The Encroaching Wilderness", npc = 21117, npcName = "Gor'drek", map = 1949, x = 52.3, y = 57.6, f = "e" },
					{ t = "accept", quest = 10487, title = "Dust from the Drakes", npc = 21117, npcName = "Gor'drek", map = 1949, x = 52.3, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10487, itemName = "Dust of the Fey Drake", count = 4, oi = 1, map = 1949, x = 41.2, y = 67.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10489, itemName = "Stronglimb Deeproot's Trunk", count = 1, oi = 1, map = 1949, x = 37.1, y = 70.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10489, title = "Felling an Ancient Tree", npc = 21147, npcName = "Tor'chunk Twoclaws", map = 1949, x = 51.9, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10487, title = "Dust from the Drakes", npc = 21117, npcName = "Gor'drek", map = 1949, x = 52.3, y = 57.6, f = "e" },
					{ t = "accept", quest = 10488, title = "Protecting Our Own", npc = 21117, npcName = "Gor'drek", map = 1949, x = 52.3, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 50.4, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10488, title = "Protecting Our Own", npc = 21117, npcName = "Gor'drek", map = 1949, x = 52.3, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 49.8, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10503, target = "Bladespire Raptor", count = 10, oi = 2, map = 1949, x = 41.6, y = 54.0, f = "e" },
					{ t = "accept", quest = 10524, title = "Thunderlord Clan Artifacts", map = 1949, x = 41.6, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10524, itemName = "Thunderlord Clan Drum", count = 1, oi = 2, map = 1949, x = 40.2, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 40.9, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10524, itemName = "Thunderlord Clan Arrow", count = 1, oi = 1, map = 1949, x = 41.5, y = 52.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10524, itemName = "Thunderlord Clan Tablet", count = 1, oi = 3, map = 1949, x = 41.2, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10503, title = "The Bladespire Threat", npc = 21147, npcName = "Tor'chunk Twoclaws", map = 1949, x = 51.9, y = 58.4, f = "e" },
					{ t = "accept", quest = 10505, title = "The Bloodmaul Ogres", npc = 21147, npcName = "Tor'chunk Twoclaws", map = 1949, x = 51.9, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10524, title = "Thunderlord Clan Artifacts", npc = 21311, npcName = "Rokgah Bloodgrip", map = 1949, x = 52.8, y = 59.0, f = "e" },
					{ t = "accept", quest = 10525, title = "Vision Guide", npc = 21311, npcName = "Rokgah Bloodgrip", map = 1949, x = 52.8, y = 59.0, f = "e" },
					{ t = "turnin", quest = 10525, title = "Vision Guide", npc = 21311, npcName = "Rokgah Bloodgrip", map = 1949, x = 52.8, y = 59.0, f = "e" },
					{ t = "accept", quest = 10526, title = "The Thunderspike", npc = 21311, npcName = "Rokgah Bloodgrip", map = 1949, x = 52.8, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 51.7, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10542, title = "They Stole Me Hookah and Me Brews!", npc = 21349, npcName = "T'chali the Witch Doctor", map = 1949, x = 45.0, y = 72.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 42.4, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10542, itemName = "T'chali's Hookah", count = 1, oi = 1, map = 1949, x = 42.1, y = 81.2, f = "e" },
				},
			},
			{
				note = "Go to 39.7,85.5 inside the mine",
				goals = {
					{ t = "collect", quest = 10526, itemName = "The Thunderspike", count = 1, oi = 1, map = 1949, x = 39.7, y = 85.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10542, title = "They Stole Me Hookah and Me Brews!", npc = 21349, npcName = "T'chali the Witch Doctor", map = 1949, x = 45.0, y = 72.3, f = "e" },
					{ t = "accept", quest = 10545, title = "Bladespire Kegger", npc = 21349, npcName = "T'chali the Witch Doctor", map = 1949, x = 45.0, y = 72.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10545, itemName = "Bladespire Ogres drunk", count = 5, oi = 1, map = 1949, x = 42.7, y = 55.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10545, title = "Bladespire Kegger", npc = 21349, npcName = "T'chali the Witch Doctor", map = 1949, x = 45.0, y = 72.3, f = "e" },
					{ t = "accept", quest = 10543, title = "Grimnok and Korgaah, I Am For You!", npc = 21349, npcName = "T'chali the Witch Doctor", map = 1949, x = 45.0, y = 72.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 68, f = "e" },
				},
			},
		},
	})
end

