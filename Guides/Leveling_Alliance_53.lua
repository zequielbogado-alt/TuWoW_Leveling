-- TuWoW_Leveling — Guides/Leveling_Alliance_53.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-76-78-part-3",
		pack = "guides",
		title = "Northrend (76-78) (Parte 3/4)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-76-78-part-4",
		author = "TuWoW & Zygor",
		minLevel = 76,
		maxLevel = 78,
		zone = 116,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", quest = 12552, target = "Hath'ar Necromagus", count = 8, oi = 1, map = 121, x = 57.6, y = 75.2, f = "e" },
					{ t = "kill", target = "Hath'ar Skimmers", count = 1, map = 121, x = 57.6, y = 75.2, f = "e" },
					{ t = "collect", quest = 12553, itemName = "Intact Skimmer Spinneret", count = 5, oi = 1, map = 121, x = 57.6, y = 75.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12552, title = "Death to the Necromagi", npc = 28283, npcName = "Sergeant Moonshard", map = 121, x = 58.1, y = 72.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12553, title = "Skimmer Spinnerets", npc = 28284, npcName = "Specialist Cogwheel", map = 121, x = 58.3, y = 72.0, f = "e" },
					{ t = "accept", quest = 12583, title = "Crashed Sprayer", npc = 28284, npcName = "Specialist Cogwheel", map = 121, x = 58.3, y = 72.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12584, title = "Pure Evil", npc = 28044, npcName = "Captain Rupert", map = 121, x = 58.1, y = 72.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 56.7, y = 69.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12583, itemName = "Plague Sprayer Parts", count = 1, oi = 1, map = 121, x = 48.8, y = 75.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12606, title = "Cocooned!", npc = 28044, npcName = "Captain Rupert", map = 121, x = 58.1, y = 72.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12583, title = "Crashed Sprayer", npc = 28284, npcName = "Specialist Cogwheel", map = 121, x = 58.3, y = 72.0, f = "e" },
					{ t = "accept", quest = 12555, title = "A Tangled Skein", npc = 28284, npcName = "Specialist Cogwheel", map = 121, x = 58.3, y = 72.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 58.3, y = 74.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Chunks of Saronite", count = 10, map = 121, x = 61.0, y = 78.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12555, title = "A Tangled Skein", npc = 28284, npcName = "Specialist Cogwheel", map = 121, x = 58.3, y = 72.0, f = "e" },
				},
			},
			{
				note = "Hearth to The Argent Stand|goto Zul'Drak,40.8,66.3,0.1|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "your Expert Riding Training (if you don't already have it)", count = 1, map = 125, x = 69.7, y = 45.4, f = "e" },
					{ t = "collect", itemName = "your Cold Weather Flying Training", count = 1, map = 125, x = 69.7, y = 45.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12521, title = "Where in the World is Hemet Nesingwary?", npc = 28160, npcName = "Archmage Pentarus", map = 125, x = 68.6, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12584, title = "Pure Evil", npc = 28244, npcName = "Eitrigg", map = 121, x = 40.8, y = 66.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12596, title = "Pa'Troll", npc = 28039, npcName = "Commander Kunz", map = 121, x = 40.3, y = 66.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12623, title = "To the Witch Doctor", npc = 28479, npcName = "Witch Doctor Khufu", map = 121, x = 59.5, y = 58.1, f = "e" },
					{ t = "accept", quest = 12627, title = "Breaking Through Jin'Alai", npc = 28479, npcName = "Witch Doctor Khufu", map = 121, x = 59.5, y = 58.1, f = "e" },
					{ t = "accept", quest = 12615, title = "The Blessing of Zim'Torga", npc = 28479, npcName = "Witch Doctor Khufu", map = 121, x = 59.5, y = 58.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12615, title = "The Blessing of Zim'Torga", npc = 190602, npcName = "Zim'Torga", map = 121, x = 59.4, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Zim'Torga", text = "Zim'Torga", map = 121, x = 59.3, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12622, title = "The Leaders at Jin'Alai", npc = 28484, npcName = "Scalper Ahunae", map = 121, x = 59.2, y = 56.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 57.6, y = 61.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 55.7, y = 64.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 57.2, y = 65.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 58.8, y = 62.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Jin'Alai mobs around this area", count = 1, f = "e" },
					{ t = "kill", target = "them and click their Treasure boxes that spawn", count = 1, f = "e" },
					{ t = "collect", quest = 12622, itemName = "Treasure of Kutube'sa", count = 1, oi = 1, f = "e" },
					{ t = "collect", quest = 12622, itemName = "Treasure of Gawanil", count = 1, oi = 2, f = "e" },
					{ t = "collect", quest = 12622, itemName = "Treasure of Chulo the Mad", count = 1, oi = 3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12627, title = "Breaking Through Jin'Alai", npc = 28479, npcName = "Witch Doctor Khufu", map = 121, x = 59.5, y = 58.1, f = "e" },
					{ t = "accept", quest = 12628, title = "To Speak With Har'koa", npc = 28479, npcName = "Witch Doctor Khufu", map = 121, x = 59.5, y = 58.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12635, title = "Relics of the Snow Leopard Goddess", npc = 28527, npcName = "Chronicler To'kini", map = 121, x = 60.0, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12622, title = "The Leaders at Jin'Alai", npc = 28484, npcName = "Scalper Ahunae", map = 121, x = 59.2, y = 56.2, f = "e" },
					{ t = "accept", quest = 12640, title = "Sealing the Rifts", npc = 28484, npcName = "Scalper Ahunae", map = 121, x = 59.2, y = 56.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12639, title = "The Frozen Earth", npc = 28480, npcName = "Element-Tamer Dagoda", map = 121, x = 59.4, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12628, title = "To Speak With Har'koa", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
					{ t = "accept", quest = 12632, title = "But First My Offspring", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12635, itemName = "Har'koan Relic", count = 10, oi = 1, map = 121, x = 62.9, y = 70.6, f = "e" },
					{ t = "kill", target = "Cursed Offsprings of Har'koa", count = 1, map = 121, x = 62.9, y = 70.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12632, title = "But First My Offspring", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
					{ t = "accept", quest = 12642, title = "Spirit of Rhunok", npc = 28401, npcName = "Har'koa", map = 121, x = 63.8, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12635, title = "Relics of the Snow Leopard Goddess", npc = 28527, npcName = "Chronicler To'kini", map = 121, x = 60.0, y = 57.9, f = "e" },
					{ t = "accept", quest = 12650, title = "Plundering Their Own", npc = 28527, npcName = "Chronicler To'kini", map = 121, x = 60.0, y = 57.9, f = "e" },
					{ t = "accept", quest = 13549, title = "Tails Up", npc = 28527, npcName = "Chronicler To'kini", map = 121, x = 60.0, y = 57.9, f = "e" },
				},
			},
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
				note = "Hearth to Zim'Torga|goto Zul'Drak,59.3,57.2,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
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
					{ t = "collect", quest = 12712, item = 39315, itemName = "Drek'Maz's Tiki", count = 1, map = 121, x = 68.2, y = 35.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12712, item = 39313, itemName = "Yara's Sword", count = 1, map = 121, x = 67.9, y = 32.8, f = "e" },
				},
			},
			{
				goals = {
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
					{ t = "getfp", location = "Gundrak", text = "Gundrak", map = 121, x = 70.5, y = 23.3, f = "e" },
				},
			},
		},
	})
end

