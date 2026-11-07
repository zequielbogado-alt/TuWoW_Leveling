-- TuWoW_Leveling — Guides/Leveling_Alliance_43.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-72-74",
		pack = "guides",
		title = "Northrend (72-74) (Parte 1/5)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-72-74-part-2",
		author = "TuWoW & Zygor",
		minLevel = 72,
		maxLevel = 74,
		zone = 117,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 11290, itemName = "Dragonflayer Battle Plans", count = 1, oi = 1, map = 117, x = 55.7, y = 52.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11426, itemName = "Harpoon Control Mechanism", count = 1, oi = 1, map = 117, x = 60.2, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 60.1, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11343, title = "The Echo of Ymiron", npc = 23975, npcName = "Thoralius the Wise", map = 117, x = 59.8, y = 61.5, f = "e" },
					{ t = "accept", quest = 11344, title = "Anguish of Nifflevar", npc = 23975, npcName = "Thoralius the Wise", map = 117, x = 59.8, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11290, title = "Dragonflayer Battle Plans", npc = 23546, npcName = "Vice Admiral Keller", map = 117, x = 60.5, y = 61.1, f = "e" },
					{ t = "accept", quest = 11291, title = "To Westguard Keep!", npc = 23546, npcName = "Vice Admiral Keller", map = 117, x = 60.5, y = 61.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11426, title = "Locating the Mechanism", npc = 23728, npcName = "Guard Captain Zorek", map = 117, x = 60.1, y = 62.4, f = "e" },
					{ t = "accept", quest = 11427, title = "Meet Lieutenant Icehammer...", npc = 23728, npcName = "Guard Captain Zorek", map = 117, x = 60.1, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 24040, npcName = "McGoyver", map = 117, x = 60.8, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11448, title = "The Explorers' League Outpost", npc = 24717, npcName = "Stanwad", map = 117, x = 75.0, y = 65.4, f = "e" },
					{ t = "accept", quest = 11474, title = "Problems on the High Bluff", npc = 24717, npcName = "Stanwad", map = 117, x = 75.0, y = 65.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11474, title = "Problems on the High Bluff", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
					{ t = "accept", quest = 11475, title = "Tools to Get the Job Done", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11460, title = "Trust is Earned", npc = 24750, npcName = "Hidalgo the Master Falconer", map = 117, x = 75.3, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11460, item = 34102, itemName = "Fjord Grub", count = 1, map = 117, x = 75.5, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 24752, npcName = "a Rock Falcon", map = 117, x = 75.3, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11460, title = "Trust is Earned", npc = 24750, npcName = "Hidalgo the Master Falconer", map = 117, x = 75.3, y = 65.0, f = "e" },
					{ t = "accept", quest = 11465, title = "The Ransacked Caravan", npc = 24750, npcName = "Hidalgo the Master Falconer", map = 117, x = 75.3, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11465, item = 34102, itemName = "Fjord Grub", count = 5, map = 117, x = 75.5, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11465, item = 34112, itemName = "Fjord Turkey", count = 5, oi = 1, map = 117, x = 69.6, y = 64.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11465, title = "The Ransacked Caravan", npc = 24750, npcName = "Hidalgo the Master Falconer", map = 117, x = 75.3, y = 65.0, f = "e" },
					{ t = "accept", quest = 11468, title = "Falcon Versus Hawk", npc = 24750, npcName = "Hidalgo the Master Falconer", map = 117, x = 75.3, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11468, item = 34102, itemName = "Fjord Grub", count = 10, map = 117, x = 75.5, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11468, itemName = "Fjord Hawk", count = 10, oi = 1, map = 117, x = 72.2, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11468, title = "Falcon Versus Hawk", npc = 24750, npcName = "Hidalgo the Master Falconer", map = 117, x = 75.3, y = 65.0, f = "e" },
					{ t = "accept", quest = 11470, title = "There Exists No Honor Among Birds", npc = 24750, npcName = "Hidalgo the Master Falconer", map = 117, x = 75.3, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11470, itemName = "Fjord Hawk Egg", count = 8, oi = 1, map = 117, x = 76.7, y = 67.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11470, title = "There Exists No Honor Among Birds", npc = 24750, npcName = "Hidalgo the Master Falconer", map = 117, x = 75.3, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11427, title = "Meet Lieutenant Icehammer...", npc = 24634, npcName = "Lieutenant Icehammer", map = 117, x = 64.4, y = 47.0, f = "e" },
					{ t = "accept", quest = 11429, title = "Drop It then Rock It!", npc = 24634, npcName = "Lieutenant Icehammer", map = 117, x = 64.4, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 65.0, y = 39.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11429, title = "Drop It then Rock It!", npc = 24634, npcName = "Lieutenant Icehammer", map = 117, x = 64.4, y = 47.0, f = "e" },
					{ t = "accept", quest = 11430, title = "Harpoon Master Yavus", npc = 24634, npcName = "Lieutenant Icehammer", map = 117, x = 64.4, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11430, npc = 24644, target = "Harpoon Master Yavus", count = 1, oi = 1, map = 117, x = 65.1, y = 56.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 69.0, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11430, title = "Harpoon Master Yavus", npc = 24634, npcName = "Lieutenant Icehammer", map = 117, x = 64.4, y = 47.0, f = "e" },
					{ t = "accept", quest = 11421, title = "It Goes to 11...", npc = 24634, npcName = "Lieutenant Icehammer", map = 117, x = 64.4, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11421, target = "Dragonflayer Defender", count = 8, oi = 1, map = 117, x = 64.8, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11421, title = "It Goes to 11...", npc = 24634, npcName = "Lieutenant Icehammer", map = 117, x = 64.4, y = 47.0, f = "e" },
					{ t = "accept", quest = 11436, title = "Let's Go Surfing Now", npc = 24634, npcName = "Lieutenant Icehammer", map = 117, x = 64.4, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11477, title = "Out of My Element?", npc = 24811, npcName = "Donny", map = 117, x = 78.8, y = 48.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11477, target = "Iron Rune Laborer", count = 5, oi = 2, map = 117, x = 79.0, y = 47.6, f = "e" },
					{ t = "kill", quest = 11477, target = "Iron Rune Sage", count = 2, oi = 3, map = 117, x = 79.0, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11475, itemName = "Building Tools", count = 1, oi = 1, map = 117, x = 79.0, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11477, target = "Iron Rune Destroyer", count = 10, oi = 1, map = 117, x = 78.4, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11477, title = "Out of My Element?", npc = 24811, npcName = "Donny", map = 117, x = 78.8, y = 48.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11475, title = "Tools to Get the Job Done", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
					{ t = "accept", quest = 11483, title = "We Can Rebuild It", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
					{ t = "accept", quest = 11484, title = "We Have the Technology", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Shoveltusks", count = 1, map = 117, x = 75.4, y = 63.3, f = "e" },
					{ t = "collect", quest = 11484, itemName = "Pristine Shoveltusk Hide", count = 1, oi = 1, map = 117, x = 75.4, y = 63.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11483, itemName = "Industrial Strength Rope", count = 1, oi = 2, map = 117, x = 64.8, y = 40.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11483, itemName = "Large Barrel", count = 1, oi = 1, map = 117, x = 67.6, y = 52.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Dragonflayer mobs", count = 1, map = 117, x = 67.9, y = 52.7, f = "e" },
					{ t = "collect", quest = 11484, itemName = "Steel Ribbing", count = 1, oi = 2, map = 117, x = 67.9, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 65.3, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11436, title = "Let's Go Surfing Now", npc = 23728, npcName = "Guard Captain Zorek", map = 117, x = 60.1, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11344, title = "Anguish of Nifflevar", npc = 23975, npcName = "Thoralius the Wise", map = 117, x = 59.8, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11483, itemName = "Dark Iron Ingots", count = 1, oi = 3, map = 117, x = 60.8, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 24040, npcName = "McGoyver", map = 117, x = 60.8, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11483, title = "We Can Rebuild It", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
					{ t = "turnin", quest = 11484, title = "We Have the Technology", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
					{ t = "accept", quest = 11485, title = "Iron Rune Constructs and You: Rocket Jumping", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
				},
			},
			{
				note = "Click the Work Bench tablet next to the iron golem next to you",
				goals = {
					{ t = "goto", map = 117, x = 75.1, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11485, title = "Iron Rune Constructs and You: Rocket Jumping", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
					{ t = "accept", quest = 11489, title = "Iron Rune Constructs and You: Collecting Data", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 74.8, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11489, title = "Iron Rune Constructs and You: Collecting Data", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
					{ t = "accept", quest = 11491, title = "Iron Rune Constructs and You: The Bluff", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 74.8, y = 65.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11491, title = "Iron Rune Constructs and You: The Bluff", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
					{ t = "accept", quest = 11494, title = "Lightning Infused Relics", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 72.7, y = 67.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 71.8, y = 69.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11494, title = "Lightning Infused Relics", npc = 24807, npcName = "Walt", map = 117, x = 75.1, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11504, title = "The Dead Rise!", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11504, itemName = "Fengir's Clue", count = 1, oi = 1, map = 117, x = 57.7, y = 77.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11504, itemName = "Rodin's Clue", count = 1, oi = 2, map = 117, x = 59.2, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11504, itemName = "Isuldof's Clue", count = 1, oi = 3, map = 117, x = 59.8, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11504, itemName = "Windan's Clue", count = 1, oi = 4, map = 117, x = 62.0, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11504, title = "The Dead Rise!", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
					{ t = "accept", quest = 11507, title = "Elder Atuik and Kamagua", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
				},
			},
			{
				note = "Go across The Ancient Lift to 25.0,57.0",
				goals = {
					{ t = "turnin", quest = 11507, title = "Elder Atuik and Kamagua", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
					{ t = "accept", quest = 11508, title = "Grezzix Spindlesnap", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
					{ t = "accept", quest = 11456, title = "Feeding the Survivors", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Kamagua", text = "Kamagua", map = 117, x = 24.7, y = 57.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Island Shoveltusks", count = 1, map = 117, x = 29.1, y = 58.8, f = "e" },
					{ t = "collect", quest = 11456, itemName = "Island Shoveltusk Meat", count = 6, oi = 1, map = 117, x = 29.1, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11456, title = "Feeding the Survivors", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
					{ t = "accept", quest = 11457, title = "Arming Kamagua", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11457, itemName = "Chimaera Horn", count = 3, oi = 1, map = 117, x = 26.4, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11457, title = "Arming Kamagua", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
					{ t = "accept", quest = 11458, title = "Avenge Iskaal", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11508, title = "Grezzix Spindlesnap", npc = 24643, npcName = "Grezzix Spindlesnap", map = 117, x = 23.1, y = 62.7, f = "e" },
					{ t = "accept", quest = 11509, title = "Street \"Cred\"", npc = 24643, npcName = "Grezzix Spindlesnap", map = 117, x = 23.1, y = 62.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11509, title = "Street \"Cred\"", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
					{ t = "accept", quest = 11510, title = "\"Scoodles\"", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11434, title = "Forgotten Treasure", npc = 24537, npcName = "Handsome Terry", map = 117, x = 35.6, y = 80.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11469, title = "Swabbin' Soap", npc = 24784, npcName = "Scuttle Frostprow", map = 117, x = 37.8, y = 79.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11510, itemName = "Sin'dorei Scrying Crystal", count = 1, oi = 1, map = 117, x = 38.3, y = 83.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11434, itemName = "Eagle Figurine", count = 1, oi = 2, map = 117, x = 37.8, y = 84.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11434, itemName = "Amani Vase", count = 1, oi = 1, map = 117, x = 37.1, y = 85.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11469, itemName = "Big Roy's Blubber", count = 1, oi = 1, map = 117, x = 31.4, y = 77.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11510, title = "\"Scoodles\"", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
					{ t = "accept", quest = 11567, title = "The Ancient Armor of the Kvaldir", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
					{ t = "accept", quest = 11512, title = "The Frozen Heart of Isuldof", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
					{ t = "accept", quest = 11519, title = "The Lost Shield of the Aesirites", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
					{ t = "accept", quest = 11511, title = "The Staff of Storm's Fury", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11434, title = "Forgotten Treasure", npc = 24537, npcName = "Handsome Terry", map = 117, x = 35.6, y = 80.2, f = "e" },
					{ t = "accept", quest = 11455, title = "The Fragrance of Money", npc = 24537, npcName = "Handsome Terry", map = 117, x = 35.6, y = 80.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11464, title = "Gambling Debt", npc = 24541, npcName = "Taruk", map = 117, x = 36.3, y = 80.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11464, itemName = "\"Silvermoon\" Harry's Debt", count = 1, oi = 1, map = 117, x = 35.1, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11464, title = "Gambling Debt", npc = 24541, npcName = "Taruk", map = 117, x = 36.3, y = 80.5, f = "e" },
					{ t = "accept", quest = 11466, title = "Jack Likes His Drink", npc = 24541, npcName = "Taruk", map = 117, x = 36.3, y = 80.5, f = "e" },
				},
			},
			{
				note = "Go inside the long building to 35.3,79.6",
				goals = {
					{ t = "collect", quest = 11466, itemName = "Jack Adams' Debt", count = 1, oi = 1, map = 117, x = 35.3, y = 79.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11466, title = "Jack Likes His Drink", npc = 24541, npcName = "Taruk", map = 117, x = 36.3, y = 80.5, f = "e" },
					{ t = "accept", quest = 11467, title = "Dead Man's Debt", npc = 24541, npcName = "Taruk", map = 117, x = 36.3, y = 80.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11469, title = "Swabbin' Soap", npc = 24784, npcName = "Scuttle Frostprow", map = 117, x = 37.8, y = 79.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11519, title = "The Lost Shield of the Aesirites", npc = 24910, npcName = "Captain Ellis", map = 117, x = 37.2, y = 74.8, f = "e" },
					{ t = "accept", quest = 11527, title = "Mutiny on the Mercy", npc = 24910, npcName = "Captain Ellis", map = 117, x = 37.2, y = 74.8, f = "e" },
				},
			},
			{
				note = "Go downstairs in the ship",
				goals = {
					{ t = "kill", target = "Mutinous Sea Dog ghouls", count = 1, f = "e" },
					{ t = "collect", quest = 11527, itemName = "Barrel of Blasting Powder", count = 5, oi = 1, f = "e" },
				},
			},
			{
				note = "Go upstairs to the ship deck",
				goals = {
					{ t = "turnin", quest = 11527, title = "Mutiny on the Mercy", npc = 24910, npcName = "Captain Ellis", f = "e" },
					{ t = "accept", quest = 11529, title = "Sorlof's Booty", npc = 24910, npcName = "Captain Ellis", f = "e" },
				},
			},
		},
	})
end

