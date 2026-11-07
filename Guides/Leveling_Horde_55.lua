-- TuWoW_Leveling — Guides/Leveling_Horde_55.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-76-78-part-4",
		pack = "guides",
		title = "Northrend (76-78) (Parte 4/4)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 76,
		maxLevel = 78,
		zone = 116,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12655, title = "The Blessing of Zim'Rhuk", npc = 28479, npcName = "Witch Doctor Khufu", map = 121, x = 59.5, y = 58.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Frozen Earths", count = 1, map = 121, x = 56.4, y = 52.8, f = "e" },
					{ t = "collect", quest = 12639, itemName = "Essence of the Frozen Earth", count = 7, oi = 1, map = 121, x = 56.4, y = 52.8, f = "e" },
					{ t = "collect", quest = 12655, item = 38551, itemName = "Drakkari Offerings", count = 10, map = 121, x = 56.4, y = 52.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Priests of Rhunok", count = 1, map = 121, x = 54.0, y = 49.1, f = "e" },
					{ t = "collect", quest = 12650, itemName = "Rhunokian Artifact", count = 7, oi = 1, map = 121, x = 54.0, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12642, title = "Spirit of Rhunok", npc = 28561, npcName = "Spirit of Rhunok", map = 121, x = 53.4, y = 39.2, f = "e" },
					{ t = "accept", quest = 12646, title = "My Prophet, My Enemy", npc = 28561, npcName = "Spirit of Rhunok", map = 121, x = 53.4, y = 39.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12646, itemName = "Arctic Bear God Mojo", count = 1, oi = 1, map = 121, x = 54.0, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12646, title = "My Prophet, My Enemy", npc = 28561, npcName = "Spirit of Rhunok", map = 121, x = 53.4, y = 39.2, f = "e" },
					{ t = "accept", quest = 12647, title = "An End to the Suffering", npc = 28561, npcName = "Spirit of Rhunok", map = 121, x = 53.4, y = 39.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12647, item = 38696, itemName = "Tormentor's Incense", count = 1, map = 121, x = 53.4, y = 35.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12647, target = "Rhunok", count = 1, oi = 1, map = 121, x = 53.5, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12647, title = "An End to the Suffering", npc = 28561, npcName = "Spirit of Rhunok", map = 121, x = 53.4, y = 39.2, f = "e" },
					{ t = "accept", quest = 12653, title = "Back to Har'koa", npc = 28561, npcName = "Spirit of Rhunok", map = 121, x = 53.4, y = 39.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12655, title = "The Blessing of Zim'Rhuk", npc = 190657, npcName = "Zim'Rhuk", map = 121, x = 59.3, y = 44.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12640, title = "Sealing the Rifts", npc = 28484, npcName = "Scalper Ahunae", map = 121, x = 59.2, y = 56.2, f = "e" },
					{ t = "accept", quest = 12659, title = "Scalps!", npc = 28484, npcName = "Scalper Ahunae", map = 121, x = 59.2, y = 56.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12639, title = "The Frozen Earth", npc = 28480, npcName = "Element-Tamer Dagoda", map = 121, x = 59.4, y = 56.4, f = "e" },
					{ t = "accept", quest = 12662, title = "Bringing Down Heb'Jin", npc = 28480, npcName = "Element-Tamer Dagoda", map = 121, x = 59.4, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12650, title = "Plundering Their Own", npc = 28527, npcName = "Chronicler To'kini", map = 121, x = 60.0, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12653, title = "Back to Har'koa", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
					{ t = "accept", quest = 12665, title = "I Sense a Disturbance", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
				},
			},
			{
				note = "When you return to 63.8,70.5",
				goals = {
					{ t = "turnin", quest = 12665, title = "I Sense a Disturbance", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
					{ t = "accept", quest = 12666, title = "Preparations for the Underworld", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Har'koan Subduers", count = 1, map = 121, x = 64.1, y = 69.9, f = "e" },
					{ t = "kill", target = "Claws of Har'koa", count = 1, map = 121, x = 64.1, y = 69.9, f = "e" },
					{ t = "collect", quest = 12666, itemName = "Sacred Adornment", count = 8, oi = 1, map = 121, x = 64.1, y = 69.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12666, title = "Preparations for the Underworld", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
					{ t = "accept", quest = 12667, title = "Seek the Wind Serpent Goddess", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 74.3, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12667, title = "Seek the Wind Serpent Goddess", npc = 28030, npcName = "Quetz'lun's Spirit", map = 121, x = 75.4, y = 58.6, f = "e" },
					{ t = "accept", quest = 12672, title = "Setting the Stage", npc = 28030, npcName = "Quetz'lun's Spirit", map = 121, x = 75.4, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12672, itemName = "Underworld Power Fragment", count = 10, oi = 1, map = 121, x = 74.6, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12672, title = "Setting the Stage", npc = 28030, npcName = "Quetz'lun's Spirit", map = 121, x = 75.4, y = 58.6, f = "e" },
					{ t = "accept", quest = 12668, title = "Foundation for Revenge", npc = 28030, npcName = "Quetz'lun's Spirit", map = 121, x = 75.4, y = 58.6, f = "e" },
				},
			},
			{
				note = "They look like altars all around this whole area.",
				goals = {
					{ t = "kill", target = "Quetz'lun Worshippers and Serpent-Touched Berserkers next to the Soul Fonts", count = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12668, title = "Foundation for Revenge", npc = 28030, npcName = "Quetz'lun's Spirit", map = 121, x = 75.4, y = 58.6, f = "e" },
					{ t = "accept", quest = 12674, title = "Hell Hath a Fury", npc = 28030, npcName = "Quetz'lun's Spirit", map = 121, x = 75.4, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 74.5, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "High Priest Tua-Tua", count = 1, map = 121, x = 73.5, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "High Priest Hawinni", count = 1, map = 121, x = 76.0, y = 54.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12674, title = "Hell Hath a Fury", npc = 28030, npcName = "Quetz'lun's Spirit", map = 121, x = 75.4, y = 58.6, f = "e" },
					{ t = "accept", quest = 12675, title = "One Last Thing", npc = 28030, npcName = "Quetz'lun's Spirit", map = 121, x = 75.4, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12675, title = "One Last Thing", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
					{ t = "accept", quest = 12684, title = "Blood of a Dead God", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12662, target = "Heb'Jin", count = 1, oi = 1, map = 121, x = 64.2, y = 52.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Heb'Drakkar trolls", count = 1, map = 121, x = 64.6, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Bloods of Mam'toth", count = 1, map = 121, x = 70.5, y = 50.4, f = "e" },
					{ t = "collect", quest = 12684, itemName = "Blood of Mam'toth", count = 7, oi = 1, map = 121, x = 70.5, y = 50.4, f = "e" },
				},
			},
			{
				note = "Hearth to Zim'Torga|goto Zul'Drak,59.3,57.2,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12662, title = "Bringing Down Heb'Jin", npc = 28480, npcName = "Element-Tamer Dagoda", map = 121, x = 59.4, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12659, title = "Scalps!", npc = 28484, npcName = "Scalper Ahunae", map = 121, x = 59.2, y = 56.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13549, title = "Tails Up", npc = 28527, npcName = "Chronicler To'kini", map = 121, x = 60.0, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12684, title = "Blood of a Dead God", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
					{ t = "accept", quest = 12685, title = "You Reap What You Sow", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12685, target = "Drained Prophet of Quetz'lun", count = 1, oi = 1, map = 121, x = 75.2, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12685, title = "You Reap What You Sow", npc = 28479, npcName = "Witch Doctor Khufu", map = 121, x = 59.5, y = 58.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12709, title = "Hexed Caches", npc = 28527, npcName = "Chronicler To'kini", map = 121, x = 60.0, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12712, title = "The Key of Warlord Zol'Maz", npc = 28401, npcName = "Har'koa", map = 121, x = 60.3, y = 57.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12708, title = "Enchanted Tiki Warriors", npc = 28480, npcName = "Element-Tamer Dagoda", map = 121, x = 59.4, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12707, title = "Wooly Justice", npc = 28484, npcName = "Scalper Ahunae", map = 121, x = 59.2, y = 56.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 69.5, y = 41.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Drek'Maz", count = 1, map = 121, x = 68.2, y = 35.3, f = "e" },
					{ t = "collect", quest = 12712, item = 39315, itemName = "Drek'Maz's Tiki", count = 1, map = 121, x = 68.2, y = 35.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Yara", count = 1, map = 121, x = 67.9, y = 32.8, f = "e" },
					{ t = "collect", quest = 12712, item = 39313, itemName = "Yara's Sword", count = 1, map = 121, x = 67.9, y = 32.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Tiri", count = 1, map = 121, x = 63.8, y = 37.2, f = "e" },
					{ t = "collect", quest = 12712, item = 39316, itemName = "Tiri's Magical Incantation", count = 1, map = 121, x = 63.8, y = 37.2, f = "e" },
				},
			},
			{
				note = "Click Tiri's Magical Incantation in your bags|use Tiri's Magical Incantation##39316",
				goals = {
					{ t = "use", item = 39316, itemName = "Tiri's Magical Incantation", f = "e" },
					{ t = "collect", quest = 12712, item = 39314, itemName = "Tiki Dervish Ceremony", count = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12709, itemName = "Zol'Maz Stronghold Cache", count = 12, oi = 1, map = 121, x = 69.2, y = 35.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12712, itemName = "Key of Warlord Zol'Maz", count = 1, oi = 1, map = 121, x = 66.2, y = 33.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Gundrak", map = 121, x = 70.5, y = 23.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13099, title = "Just Checkin'", npc = 30676, npcName = "Chronicler Bah'Kini", map = 121, x = 70.1, y = 20.9, f = "e" },
				},
			},
			{
				note = "Fly to Zim'Torga,0.5|noway|c",
				goals = {
					{ t = "goto", map = 121, x = 60.0, y = 56.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12712, title = "The Key of Warlord Zol'Maz", npc = 28401, npcName = "Har'koa", map = 121, x = 60.3, y = 57.8, f = "e" },
					{ t = "accept", quest = 12721, title = "Rampage", npc = 28401, npcName = "Har'koa", map = 121, x = 60.3, y = 57.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12709, title = "Hexed Caches", npc = 28527, npcName = "Chronicler To'kini", map = 121, x = 60.0, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12708, title = "Enchanted Tiki Warriors", npc = 28480, npcName = "Element-Tamer Dagoda", map = 121, x = 59.4, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12707, title = "Wooly Justice", npc = 28484, npcName = "Scalper Ahunae", map = 121, x = 59.2, y = 56.2, f = "e" },
				},
			},
			{
				note = "Fly to Gundrak,0.5|noway|c",
				goals = {
					{ t = "goto", map = 121, x = 70.5, y = 23.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 78.1, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30569, npcName = "Rafae", map = 121, x = 70.5, y = 23.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12721, title = "Rampage", npc = 28479, npcName = "Witch Doctor Khufu", map = 121, x = 59.5, y = 58.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12524, title = "Venture Co. Misadventure", npc = 28032, npcName = "Debaar", map = 119, x = 27.2, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Nesingwary Base Camp", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12624, title = "It Could Be Anywhere!", npc = 28497, npcName = "Chad", map = 119, x = 26.9, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12522, title = "Need an Engine, Take an Engine", npc = 28033, npcName = "Weslex Quickwrench", map = 119, x = 25.4, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12522, itemName = "Flying Machine Engine", count = 1, oi = 1, map = 119, x = 38.7, y = 56.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12521, title = "Where in the World is Hemet Nesingwary?", npc = 27987, npcName = "Monte Muzzleshot", map = 119, x = 39.7, y = 58.7, f = "e" },
					{ t = "accept", quest = 12489, title = "Welcome to Sholazar Basin", npc = 27987, npcName = "Monte Muzzleshot", map = 119, x = 39.7, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12688, title = "Engineering a Disaster", npc = 28787, npcName = "Engineering Helice", map = 119, x = 35.5, y = 47.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Venture Company mobs", count = 1, map = 119, x = 37.4, y = 46.1, f = "e" },
					{ t = "collect", quest = 12624, itemName = "Golden Engagement Ring", count = 1, oi = 1, map = 119, x = 37.4, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12524, title = "Venture Co. Misadventure", npc = 28032, npcName = "Debaar", map = 119, x = 27.2, y = 59.9, f = "e" },
					{ t = "accept", quest = 12525, title = "Wipe That Grin Off His Face", npc = 28032, npcName = "Debaar", map = 119, x = 27.2, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12624, title = "It Could Be Anywhere!", npc = 28497, npcName = "Chad", map = 119, x = 26.9, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12489, title = "Welcome to Sholazar Basin", npc = 27986, npcName = "Hemet Nesingwary", map = 119, x = 27.1, y = 58.6, f = "e" },
					{ t = "turnin", quest = 12688, title = "Engineering a Disaster", npc = 27986, npcName = "Hemet Nesingwary", map = 119, x = 27.1, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 78, f = "e" },
				},
			},
		},
	})
end

