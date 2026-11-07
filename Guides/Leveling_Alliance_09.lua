-- TuWoW_Leveling — Guides/Leveling_Alliance_09.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-draenei-1-13",
		pack = "guides",
		title = "Draenei (1-13) (Parte 1/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-draenei-1-13-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1941,
		version = 1,
		races = { "Draenei" },
		steps = {
			{
				goals = {
					{ t = "accept", quest = 9279, title = "You Survived!", npc = 16475, npcName = "Megelon", map = 1941, x = 84.2, y = 43.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9279, title = "You Survived!", npc = 16477, npcName = "Proenitus", map = 1941, x = 80.4, y = 45.9, f = "e" },
					{ t = "accept", quest = 9280, title = "Replenishing the Healing Crystals", npc = 16477, npcName = "Proenitus", map = 1941, x = 80.4, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10302, title = "Volatile Mutations", npc = 16514, npcName = "Botanist Taerix", map = 1941, x = 79.1, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10302, target = "Volatile Mutation", count = 8, oi = 1, map = 1941, x = 78.6, y = 45.4, f = "e" },
					{ t = "collect", quest = 9280, itemName = "Vial of Moth Blood", count = 8, oi = 1, map = 1941, x = 78.6, y = 45.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10302, title = "Volatile Mutations", npc = 16514, npcName = "Botanist Taerix", map = 1941, x = 79.1, y = 46.5, f = "e" },
					{ t = "accept", quest = 9293, title = "What Must Be Done...", npc = 16514, npcName = "Botanist Taerix", map = 1941, x = 79.1, y = 46.5, f = "e" },
					{ t = "accept", quest = 9799, title = "Botanical Legwork", npc = 20233, npcName = "Apprentice Vishael", map = 1941, x = 79.1, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9280, title = "Replenishing the Healing Crystals", npc = 16477, npcName = "Proenitus", map = 1941, x = 80.4, y = 45.9, f = "e" },
					{ t = "accept", quest = 9409, title = "Urgent Delivery!", npc = 16477, npcName = "Proenitus", map = 1941, x = 80.4, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9409, title = "Urgent Delivery!", npc = 16502, npcName = "Zalduun", map = 1941, x = 80.1, y = 48.8, f = "e" },
					{ t = "accept", quest = 9283, title = "Rescue the Survivors!", npc = 16502, npcName = "Zalduun", map = 1941, x = 80.1, y = 48.8, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "MAGE" } },
				goals = {
					{ t = "accept", quest = 9290, title = "Mage Training", npc = 16500, npcName = "Valaatu", map = 1941, x = 79.6, y = 48.8, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 9289, title = "Warrior Training", npc = 16503, npcName = "Kore", map = 1941, x = 79.6, y = 49.4, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 9421, title = "Shaman Training", npc = 17089, npcName = "Firmanvaar", map = 1941, x = 79.3, y = 49.1, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 9291, title = "Priest Training", npc = 16502, npcName = "Zalduun", map = 1941, x = 80.1, y = 48.8, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "PALADIN" } },
				goals = {
					{ t = "accept", quest = 9287, title = "Paladin Training", npc = 16501, npcName = "Aurelon", map = 1941, x = 79.7, y = 48.2, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 9288, title = "Hunter Training", npc = 16499, npcName = "Keilnei", map = 1941, x = 79.9, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9305, title = "Spare Parts", npc = 17071, npcName = "Technician Zhanaa", map = 1941, x = 79.5, y = 51.4, f = "e" },
					{ t = "accept", quest = 9303, title = "Inoculation", npc = 16535, npcName = "Vindicator Aldar", map = 1941, x = 79.5, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1941, x = 80.3, y = 42.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9283, title = "Rescue the Survivors!", npc = 16502, npcName = "Zalduun", map = 1941, x = 80.1, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9293, itemName = "Lasher Sample", count = 10, oi = 1, map = 1941, x = 74.9, y = 50.4, f = "e" },
					{ t = "collect", quest = 9799, itemName = "Corrupted Flower", count = 3, oi = 1, map = 1941, x = 74.9, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9293, title = "What Must Be Done...", npc = 16514, npcName = "Botanist Taerix", map = 1941, x = 79.1, y = 46.5, f = "e" },
					{ t = "accept", quest = 9294, title = "Healing the Lake", npc = 16514, npcName = "Botanist Taerix", map = 1941, x = 79.1, y = 46.5, f = "e" },
					{ t = "turnin", quest = 9799, title = "Botanical Legwork", npc = 20233, npcName = "Apprentice Vishael", map = 1941, x = 79.1, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1941, x = 77.3, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1941, x = 78.4, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9305, itemName = "Emitter Spare Part", count = 4, oi = 1, map = 1941, x = 84.7, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9294, title = "Healing the Lake", npc = 16514, npcName = "Botanist Taerix", map = 1941, x = 79.1, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 4, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 9449, title = "Call of Earth (1)", npc = 17089, npcName = "Firmanvaar", map = 1941, x = 79.3, y = 49.1, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", map = 1941, x = 74.0, y = 42.0, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 9449, title = "Call of Earth (1)", npc = 17087, npcName = "Spirit of the Vale", map = 1941, x = 71.3, y = 39.0, f = "e" },
					{ t = "accept", quest = 9450, title = "Call of Earth (2)", npc = 17087, npcName = "Spirit of the Vale", map = 1941, x = 71.3, y = 39.0, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "kill", quest = 9450, target = "Restless Spirit of Earth", count = 4, oi = 1, map = 1941, x = 70.8, y = 37.8, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 9450, title = "Call of Earth (2)", npc = 17087, npcName = "Spirit of the Vale", map = 1941, x = 71.3, y = 39.0, f = "e" },
					{ t = "accept", quest = 9451, title = "Call of Earth (3)", npc = 17087, npcName = "Spirit of the Vale", map = 1941, x = 71.3, y = 39.0, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 9451, title = "Call of Earth (3)", npc = 17089, npcName = "Firmanvaar", map = 1941, x = 79.3, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9305, title = "Spare Parts", npc = 17071, npcName = "Technician Zhanaa", map = 1941, x = 79.5, y = 51.4, f = "e" },
					{ t = "turnin", quest = 9303, title = "Inoculation", npc = 16535, npcName = "Vindicator Aldar", map = 1941, x = 79.5, y = 51.4, f = "e" },
					{ t = "accept", quest = 9309, title = "The Missing Scout", npc = 16535, npcName = "Vindicator Aldar", map = 1941, x = 79.5, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9309, title = "The Missing Scout", npc = 16546, npcName = "Tolaan", map = 1941, x = 72.0, y = 60.8, f = "e" },
					{ t = "accept", quest = 10303, title = "The Blood Elves", npc = 16546, npcName = "Tolaan", map = 1941, x = 72.0, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10303, target = "Blood Elf Scout", count = 10, oi = 1, map = 1941, x = 71.3, y = 60.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10303, title = "The Blood Elves", npc = 16546, npcName = "Tolaan", map = 1941, x = 72.0, y = 60.8, f = "e" },
					{ t = "accept", quest = 9311, title = "Blood Elf Spy", npc = 16546, npcName = "Tolaan", map = 1941, x = 72.0, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9311, npc = 16522, target = "Surveyor Candress", count = 1, oi = 1, map = 1941, x = 69.3, y = 65.7, f = "e" },
					{ t = "accept", quest = 9798, title = "Blood Elf Plans", map = 1941, x = 69.3, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9311, title = "Blood Elf Spy", npc = 16535, npcName = "Vindicator Aldar", map = 1941, x = 79.5, y = 51.4, f = "e" },
					{ t = "turnin", quest = 9798, title = "Blood Elf Plans", npc = 16535, npcName = "Vindicator Aldar", map = 1941, x = 79.5, y = 51.4, f = "e" },
					{ t = "accept", quest = 9312, title = "The Emitter", npc = 16535, npcName = "Vindicator Aldar", map = 1941, x = 79.5, y = 51.4, f = "e" },
					{ t = "turnin", quest = 9312, title = "The Emitter", npc = 17071, npcName = "Technician Zhanaa", map = 1941, x = 79.5, y = 51.4, f = "e" },
					{ t = "accept", quest = 9313, title = "Travel to Azure Watch", npc = 17071, npcName = "Technician Zhanaa", map = 1941, x = 79.5, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9314, title = "Word from Azure Watch", npc = 16554, npcName = "Aeun", map = 1941, x = 64.5, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9452, title = "Red Snapper - Very Tasty!", npc = 17101, npcName = "Diktynna", map = 1941, x = 61.1, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9452, itemName = "Red Snapper", count = 10, oi = 1, map = 1941, x = 61.9, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9452, title = "Red Snapper - Very Tasty!", npc = 17101, npcName = "Diktynna", map = 1941, x = 61.1, y = 54.2, f = "e" },
					{ t = "accept", quest = 9453, title = "Find Acteon!", npc = 17101, npcName = "Diktynna", map = 1941, x = 61.1, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9453, title = "Find Acteon!", npc = 17110, npcName = "Acteon", map = 1941, x = 49.8, y = 51.9, f = "e" },
					{ t = "accept", quest = 9454, title = "The Great Moongraze Hunt (1)", npc = 17110, npcName = "Acteon", map = 1941, x = 49.8, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9463, title = "Medicinal Purpose", npc = 17214, npcName = "Anchorite Fateema", map = 1941, x = 48.4, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9313, title = "Travel to Azure Watch", npc = 16551, npcName = "Technician Dyvuun", map = 1941, x = 48.7, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9314, title = "Word from Azure Watch", npc = 16553, npcName = "Caregiver Chellan", map = 1941, x = 48.3, y = 49.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Azure Watch", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9454, itemName = "Moongraze Stag Tenderloin", count = 6, oi = 1, map = 1941, x = 50.3, y = 56.6, f = "e" },
					{ t = "collect", quest = 9463, itemName = "Root Trapper Vine", count = 8, oi = 1, map = 1941, x = 50.3, y = 56.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9506, title = "A Small Start", npc = 17240, npcName = "Admiral Odesyus", map = 1941, x = 47.0, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9512, title = "Cookie's Jumbo Gumbo", npc = 17246, npcName = "\"Cookie\" McWeaksauce", map = 1941, x = 46.7, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9512, itemName = "Skittering Crawler Meat", count = 6, oi = 1, map = 1941, x = 47.6, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9512, title = "Cookie's Jumbo Gumbo", npc = 17246, npcName = "\"Cookie\" McWeaksauce", map = 1941, x = 46.7, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9513, title = "Reclaiming the Ruins", npc = 17241, npcName = "Priestess Kyleen Il'dinare", map = 1941, x = 47.0, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9523, title = "Precious and Fragile Things Need Special Handling", npc = 17242, npcName = "Archaeologist Adamant Ironheart", map = 1941, x = 47.2, y = 70.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9506, item = 23739, itemName = "Nautical Map", count = 1, oi = 2, map = 1941, x = 58.6, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9506, item = 23738, itemName = "Nautical Compass", count = 1, oi = 1, map = 1941, x = 59.6, y = 67.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9506, title = "A Small Start", npc = 17240, npcName = "Admiral Odesyus", map = 1941, x = 47.0, y = 70.2, f = "e" },
					{ t = "accept", quest = 9530, title = "I've Got a Plant", npc = 17240, npcName = "Admiral Odesyus", map = 1941, x = 47.0, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9530, itemName = "Hollowed Out Tree", count = 1, oi = 1, map = 1941, x = 45.9, y = 65.7, f = "e" },
					{ t = "collect", quest = 9530, itemName = "Pile of Leaves", count = 5, oi = 2, map = 1941, x = 45.9, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9530, title = "I've Got a Plant", npc = 17240, npcName = "Admiral Odesyus", map = 1941, x = 47.0, y = 70.2, f = "e" },
					{ t = "accept", quest = 9531, title = "Tree's Company", npc = 17240, npcName = "Admiral Odesyus", map = 1941, x = 47.0, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9523, itemName = "Ancient Relic", count = 8, oi = 1, map = 1941, x = 36.1, y = 77.0, f = "e" },
					{ t = "kill", quest = 9513, target = "Wrathscale Myrmidon", count = 5, oi = 1, map = 1941, x = 36.1, y = 77.0, f = "e" },
					{ t = "kill", quest = 9513, target = "Wrathscale Naga", count = 5, oi = 2, map = 1941, x = 36.1, y = 77.0, f = "e" },
					{ t = "kill", quest = 9513, target = "Wrathscale Siren", count = 5, oi = 3, map = 1941, x = 36.1, y = 77.0, f = "e" },
					{ t = "accept", quest = 9514, title = "Rune Covered Tablet", map = 1941, x = 36.1, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1941, x = 18.5, y = 84.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9463, title = "Medicinal Purpose", npc = 17214, npcName = "Anchorite Fateema", map = 1941, x = 48.4, y = 51.8, f = "e" },
					{ t = "accept", quest = 9473, title = "An Alternative Alternative", npc = 17215, npcName = "Daedal", map = 1941, x = 48.4, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9454, title = "The Great Moongraze Hunt (1)", npc = 17110, npcName = "Acteon", map = 1941, x = 49.8, y = 51.9, f = "e" },
					{ t = "accept", quest = 10324, title = "The Great Moongraze Hunt (2)", npc = 17110, npcName = "Acteon", map = 1941, x = 49.8, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10324, itemName = "Moongraze Buck Hide", count = 6, oi = 1, map = 1941, x = 50.6, y = 46.2, f = "e" },
					{ t = "accept", quest = 9455, title = "Strange Findings", map = 1941, x = 50.6, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9473, itemName = "Azure Snapdragon Bulb", count = 5, oi = 1, map = 1941, x = 50.4, y = 37.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9455, title = "Strange Findings", npc = 17116, npcName = "Exarch Menelaous", map = 1941, x = 47.1, y = 50.6, f = "e" },
					{ t = "accept", quest = 9456, title = "Nightstalker Clean Up, Isle 2...", npc = 17116, npcName = "Exarch Menelaous", map = 1941, x = 47.1, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9473, title = "An Alternative Alternative", npc = 17215, npcName = "Daedal", map = 1941, x = 48.4, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10428, title = "The Missing Fisherman", npc = 17488, npcName = "Dulvi", map = 1941, x = 49.0, y = 51.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10324, title = "The Great Moongraze Hunt (2)", npc = 17110, npcName = "Acteon", map = 1941, x = 49.8, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9456, target = "Infected Nightstalker Runt", count = 8, oi = 1, map = 1941, x = 45.7, y = 43.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9456, title = "Nightstalker Clean Up, Isle 2...", npc = 17116, npcName = "Exarch Menelaous", map = 1941, x = 47.1, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9531, title = "Tree's Company", npc = 17240, npcName = "Admiral Odesyus", map = 1941, x = 47.0, y = 70.2, f = "e" },
					{ t = "accept", quest = 9537, title = "Show Gnomercy", npc = 17240, npcName = "Admiral Odesyus", map = 1941, x = 47.0, y = 70.2, f = "e" },
					{ t = "turnin", quest = 9513, title = "Reclaiming the Ruins", npc = 17241, npcName = "Priestess Kyleen Il'dinare", map = 1941, x = 47.0, y = 70.2, f = "e" },
					{ t = "turnin", quest = 9514, title = "Rune Covered Tablet", npc = 17241, npcName = "Priestess Kyleen Il'dinare", map = 1941, x = 47.0, y = 70.2, f = "e" },
					{ t = "accept", quest = 9515, title = "Warlord Sriss'tiz", npc = 17241, npcName = "Priestess Kyleen Il'dinare", map = 1941, x = 47.0, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9523, title = "Precious and Fragile Things Need Special Handling", npc = 17242, npcName = "Archaeologist Adamant Ironheart", map = 1941, x = 47.2, y = 70.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9537, itemName = "Traitor's Communication", count = 1, oi = 1, map = 1941, x = 48.2, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9537, title = "Show Gnomercy", npc = 17240, npcName = "Admiral Odesyus", map = 1941, x = 47.0, y = 70.2, f = "e" },
					{ t = "accept", quest = 9602, title = "Deliver Them From Evil...", npc = 17240, npcName = "Admiral Odesyus", map = 1941, x = 47.0, y = 70.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9602, title = "Deliver Them From Evil...", npc = 17116, npcName = "Exarch Menelaous", map = 1941, x = 47.1, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9538, title = "Learning the Language", npc = 17232, npcName = "Cryptographer Aurren", map = 1941, x = 49.4, y = 51.0, f = "e" },
					{ t = "turnin", quest = 9538, title = "Learning the Language", npc = 17232, npcName = "Cryptographer Aurren", map = 1941, x = 49.4, y = 51.0, f = "e" },
					{ t = "accept", quest = 9539, title = "Totem of Coo", npc = 17232, npcName = "Cryptographer Aurren", map = 1941, x = 49.4, y = 51.0, f = "e" },
				},
			},
			{
				note = "Follow the ghost furbolg as he runs up the hill northeast to 55.2,41.6",
				goals = {
					{ t = "turnin", quest = 9539, title = "Totem of Coo", map = 1941, x = 55.2, y = 41.6, f = "e" },
					{ t = "accept", quest = 9540, title = "Totem of Tikti", map = 1941, x = 55.2, y = 41.6, f = "e" },
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
		},
	})
end

