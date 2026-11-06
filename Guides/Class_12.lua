-- TuWoW_Leveling — Guides/Class_12.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-warlock-class-quests-part-2",
		pack = "guides",
		title = "Warlock Class Quests (Parte 2/2)",
		category = "Class",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1411,
		version = 1,
		classes = { "WARLOCK" },
		steps = {
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1428, x = 15.46, y = 40.26 },
					{ t = "turnin", quest = 7625, title = "Xorothian Stardust", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
					{ t = "accept", quest = 7629, title = "Imp Delivery", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
				},
			},
			{
				note = "This requires the Skeleton Key from the quest \"The Key to Scholomance\".",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "complete", quest = 7629, title = "Imp Delivery", note = "Enter the Scholomance Dungeon with Your Group" },
				},
			},
			{
				note = "Use it near the Alchemy Station at the start of the room with Ras Frostwhisper.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 18688, itemName = "Imp in a Jar" },
					{ t = "complete", quest = 7629, title = "Imp Delivery", note = "Create the Parchment" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Follow the path", map = 1428, x = 15.46, y = 40.26 },
					{ t = "turnin", quest = 7629, title = "Imp Delivery", npc = 14437, npcName = "Gorzeeki Wildeyes", map = 1428, x = 12.43, y = 31.63, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "buy", item = 18663, itemName = "J'eevee's Jar", map = 1428, x = 12.43, y = 31.63, f = "e" },
					{ t = "buy", item = 18629, itemName = "Black Lodestone", map = 1428, x = 12.43, y = 31.63, f = "e" },
					{ t = "buy", item = 18670, itemName = "Xorothian Glyphs", map = 1428, x = 12.43, y = 31.63, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 7631, title = "Dreadsteed of Xoroth", npc = 14436, npcName = "Mor'zul Bloodbringer", map = 1428, x = 12.69, y = 31.64, f = "e" },
				},
			},
			{
				note = "You need a Crescent Key to unlock this door. This drops from Pusillin in the \"Dire Maul - East\" dungeon.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1444, x = 59.13, y = 44.67 },
					{ t = "goto", text = "Follow the path", map = 1444, x = 59.52, y = 39.51 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.72, y = 38.78 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.15, y = 34.87 },
					{ t = "goto", text = "click Door", map = 1444, x = 60.32, y = 30.16 },
					{ t = "complete", quest = 7631, title = "Dreadsteed of Xoroth", note = "Enter the Dire Maul - West Dungeon with Your Group" },
				},
			},
			{
				note = "Use it in the area where Immol'thar is. Clear the room before starting. Focus on Dread Guards as they appear. They will spawn in waves after using J'eevee's Jar. Recharge the Bell, Wheel and Candle as they run out of charges. They will tilt when they need to be recharged. Use the \"Black Lodestone\" to fix them, which costs a soul shard. At 50% health, Lord Hel'nurath will appear and need to be killed.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "use", item = 18663, itemName = "J'eevee's Jar" },
					{ t = "use", item = 18670, itemName = "Xorothian Glyphs" },
					{ t = "turnin", quest = 7631, title = "Dreadsteed of Xoroth", npc = 14504, npcName = "Dreadsteed Spirit" },
				},
			},
		},
	})
end

