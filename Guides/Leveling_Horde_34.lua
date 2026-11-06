-- TuWoW_Leveling — Guides/Leveling_Horde_34.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-western-and-eastern-plaguelands-56-58",
		pack = "guides",
		title = "Western & Eastern Plaguelands (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-western-and-eastern-plaguelands-56-58-part-2",
		author = "TuWoW & Zygor",
		minLevel = 56,
		maxLevel = 58,
		zone = 1458,
		version = 1,
		steps = {
			{
				note = "White shirt with lantern. Walks a large path.",
				goals = {
					{ t = "accept", quest = 5094, title = "A Call to Arms: The Plaguelands!", npc = 10879, npcName = "Harbinger Balthazad", map = 1458, x = 63.4, y = 44.0, f = "e" },
				},
			},
			{
				note = "Long questing session soon. No ammo vendor available.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 4555, npcName = "Eleanor Rusk", map = 1458, x = 69.16, y = 48.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "turninany A Call to Arms: The Plaguelands!##5093,5094,5095", map = 1420, x = 83.13, y = 68.93 },
					{ t = "accept", quest = 5096, title = "Scarlet Diversions", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.13, y = 68.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5096, item = 12814, itemName = "Flame in a Bottle", map = 1420, x = 83.17, y = 69.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6029, title = "The Everlook Report", npc = 10839, npcName = "Argent Officer Garush", map = 1420, x = 83.19, y = 68.45, f = "e" },
					{ t = "accept", quest = 5405, title = "Argent Dawn Commission", npc = 10839, npcName = "Argent Officer Garush", map = 1420, x = 83.19, y = 68.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 12807, itemName = "Scourge Banner" },
					{ t = "complete", quest = 5096, title = "Scarlet Diversions", note = "Destroy the Command Tent and Plant the Scourge Banner in the Camp", map = 1422, x = 40.68, y = 51.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5096, title = "Scarlet Diversions", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.13, y = 68.93, f = "e" },
					{ t = "accept", quest = 5098, title = "All Along the Watchtowers", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.13, y = 68.94, f = "e" },
					{ t = "accept", quest = 5228, title = "The Scourge Cauldrons", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.13, y = 68.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5228, title = "The Scourge Cauldrons", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.03, y = 71.91, f = "e" },
					{ t = "accept", quest = 5229, title = "Target: Felstone Field", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.03, y = 71.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5229, item = 13194, itemName = "Felstone Field Cauldron Key", oi = 1, map = 1422, x = 37.03, y = 57.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5229, title = "Target: Felstone Field", map = 1422, x = 37.19, y = 56.87, f = "e" },
					{ t = "accept", quest = 5230, title = "Return to the Bulwark", map = 1422, x = 37.19, y = 56.87, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 5021, title = "Better Late Than Never", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.05, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5021, title = "Better Late Than Never", map = 1422, x = 38.73, y = 55.24, f = "e" },
					{ t = "accept", quest = 5023, title = "Better Late Than Never", map = 1422, x = 38.73, y = 55.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5230, title = "Return to the Bulwark", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.04, y = 71.91, f = "e" },
					{ t = "accept", quest = 5231, title = "Target: Dalson's Tears", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.04, y = 71.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5231, item = 13195, itemName = "Dalson's Tears Cauldron Key", oi = 1, map = 1422, x = 46.18, y = 52.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5231, title = "Target: Dalson's Tears", map = 1422, x = 46.18, y = 52.02, f = "e" },
					{ t = "accept", quest = 5232, title = "Return to the Bulwark", map = 1422, x = 46.18, y = 52.02, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 5058, title = "Mrs. Dalson's Diary", map = 1422, x = 47.79, y = 50.67, f = "e" },
				},
			},
			{
				note = "White skeleton. Walks around. Multiple spawn locations.",
				goals = {
					{ t = "collect", quest = 5060, item = 12738, itemName = "Dalson Outhouse Key", map = 1422, x = 48.34, y = 49.27, f = "e" },
				},
			},
			{
				note = "Complete the Locked Away quest.",
				goals = {
					{ t = "collect", quest = 5060, item = 12739, itemName = "Dalson Cabinet Key", map = 1422, x = 48.11, y = 49.71, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 5060, title = "Locked Away", map = 1422, x = 47.37, y = 49.65, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 4971, title = "A Matter of Time", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
				},
			},
			{
				note = "Tower entrance. Avoid the elite enemy inside.",
				goals = {
					{ t = "use", item = 12815, itemName = "Beacon Torch" },
					{ t = "complete", quest = 5098, title = "All Along the Watchtowers", note = "Mark Tower One", map = 1422, x = 40.13, y = 71.52, f = "e" },
				},
			},
			{
				note = "Tower entrance. Avoid the elite enemy inside.",
				goals = {
					{ t = "use", item = 12815, itemName = "Beacon Torch" },
					{ t = "complete", quest = 5098, title = "All Along the Watchtowers", note = "Mark Tower Four", map = 1422, x = 46.7, y = 71.1, f = "e" },
				},
			},
			{
				note = "Near large structures with blue lights. Another can spawn when they die.",
				goals = {
					{ t = "use", item = 12627, itemName = "Temporal Displacer" },
					{ t = "kill", quest = 4971, npc = 10717, target = "Temporal Parasite", count = 15, oi = 1, map = 1422, x = 45.0, y = 63.0, f = "e" },
				},
			},
			{
				note = "Tower entrance. Avoid the elite enemy inside.",
				goals = {
					{ t = "use", item = 12815, itemName = "Beacon Torch" },
					{ t = "complete", quest = 5098, title = "All Along the Watchtowers", note = "Mark Tower Three", map = 1422, x = 44.22, y = 63.37, f = "e" },
				},
			},
			{
				note = "Tower entrance. Avoid the elite enemy inside.",
				goals = {
					{ t = "use", item = 12815, itemName = "Beacon Torch" },
					{ t = "complete", quest = 5098, title = "All Along the Watchtowers", note = "Mark Tower Two", map = 1422, x = 42.44, y = 66.27, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 4971, title = "A Matter of Time", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
					{ t = "accept", quest = 4972, title = "Counting Out Time", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
				},
			},
			{
				label = "Collect_Andorhal_Watches",
				note = "Small grey metal chests. Inside crumbled buildings.",
				goals = {
					{ t = "collect", quest = 4972, item = 12638, itemName = "Andorhal Watch", count = 5, oi = 1, map = 1422, x = 42.3, y = 68.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5098, title = "All Along the Watchtowers", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.13, y = 68.93, f = "e" },
					{ t = "accept", quest = 838, title = "Scholomance", npc = 10837, npcName = "High Executor Derrington", map = 1420, x = 83.13, y = 68.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 838, title = "Scholomance", npc = 11057, npcName = "Apothecary Dithers", map = 1420, x = 83.28, y = 69.23, f = "e" },
					{ t = "accept", quest = 964, title = "Skeletal Fragments", npc = 11057, npcName = "Apothecary Dithers", map = 1420, x = 83.28, y = 69.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5232, title = "Return to the Bulwark", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.04, y = 71.91, f = "e" },
					{ t = "accept", quest = 5233, title = "Target: Writhing Haunt", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.04, y = 71.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5901, title = "A Plague Upon Thee", npc = 11615, npcName = "Mickey Levine", map = 1420, x = 83.29, y = 72.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 964, item = 14619, itemName = "Skeletal Fragments", count = 15, oi = 1, map = 1422, x = 36.2, y = 58.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5233, item = 13197, itemName = "Writhing Haunt Cauldron Key", oi = 1, map = 1422, x = 53.02, y = 66.06, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5233, title = "Target: Writhing Haunt", map = 1422, x = 53.02, y = 65.72, f = "e" },
					{ t = "accept", quest = 5234, title = "Return to the Bulwark", map = 1422, x = 53.02, y = 65.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 4984, title = "The Wildlife Suffers Too", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.72, y = 64.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6004, title = "Unfinished Business", npc = 11610, npcName = "Kirsta Deepshadow", map = 1422, x = 51.92, y = 28.06, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6004, npc = 1826, target = "Scarlet Mage", count = 2, oi = 3, map = 1422, x = 50.47, y = 41.12, f = "e" },
					{ t = "kill", quest = 6004, npc = 1833, target = "Scarlet Knight", count = 2, oi = 4, map = 1422, x = 50.47, y = 41.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6004, npc = 10605, target = "Scarlet Medic", count = 2, oi = 1, map = 1422, x = 51.6, y = 44.6, f = "e" },
					{ t = "kill", quest = 6004, npc = 1831, target = "Scarlet Hunter", count = 2, oi = 2, map = 1422, x = 51.6, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6004, title = "Unfinished Business", npc = 11610, npcName = "Kirsta Deepshadow", map = 1422, x = 51.92, y = 28.06, f = "e" },
					{ t = "accept", quest = 6023, title = "Unfinished Business", npc = 11610, npcName = "Kirsta Deepshadow", map = 1422, x = 51.92, y = 28.06, f = "e" },
				},
			},
			{
				note = "Run around the mountain.",
				goals = {
					{ t = "kill", quest = 6023, npc = 11613, target = "Huntsman Radley", oi = 1, map = 1422, x = 57.83, y = 36.09, f = "e" },
				},
			},
			{
				note = "Walks around. Inside and outside the tower. Wait outside if elite enemy at top of tower. notinsticky",
				goals = {
					{ t = "kill", quest = 6023, npc = 11611, target = "Cavalier Durgen", oi = 2, map = 1422, x = 54.71, y = 23.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6023, title = "Unfinished Business", npc = 11610, npcName = "Kirsta Deepshadow", map = 1422, x = 51.92, y = 28.06, f = "e" },
				},
			},
			{
				label = "Kill_Diseased_Wolves",
				along = true,
				note = "Shared spawns with spiders. notinsticky",
				goals = {
					{ t = "kill", quest = 4984, npc = 1817, target = "Diseased Wolf", count = 8, oi = 1, map = 1422, x = 46.8, y = 39.4, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4984, title = "The Wildlife Suffers Too", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.72, y = 64.67, f = "e" },
					{ t = "accept", quest = 4985, title = "The Wildlife Suffers Too", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.72, y = 64.67, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 5542, title = "Demon Dogs", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "accept", quest = 5543, title = "Blood Tinged Skies", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "accept", quest = 5544, title = "Carrion Grubbage", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6022, title = "To Kill With Purpose", npc = 11878, npcName = "Nathanos Blightcaller", map = 1423, x = 22.23, y = 63.52, f = "e" },
					{ t = "accept", quest = 6042, title = "Un-Life's Little Annoyances", npc = 11878, npcName = "Nathanos Blightcaller", map = 1423, x = 22.23, y = 63.52, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the crumbled house.",
				goals = {
					{ t = "turnin", quest = 5601, title = "Sister Pamela", npc = 10926, npcName = "Pamela Redpath", map = 1423, x = 31.15, y = 77.98, f = "e" },
					{ t = "accept", quest = 5149, title = "Pamela's Doll", npc = 10926, npcName = "Pamela Redpath", map = 1423, x = 31.15, y = 77.98, f = "e" },
				},
			},
			{
				note = "Inside the buildings. You will be attacked.",
				goals = {
					{ t = "collect", quest = 5149, item = 12886, itemName = "Pamela's Doll's Head", map = 1423, x = 32.63, y = 79.33, f = "e" },
				},
			},
			{
				label = "Collect_Pamelas_Dolls_Left_Side",
				along = true,
				note = "Inside the buildings. notinsticky You will be attacked. notinsticky",
				goals = {
					{ t = "collect", quest = 5149, item = 12887, itemName = "Pamela's Doll's Left Side", map = 1423, x = 32.63, y = 79.33, f = "e" },
				},
			},
			{
				label = "Collect_Pamelas_Dolls_Right_Side",
				along = true,
				note = "Inside the buildings. notinsticky You will be attacked. notinsticky",
				goals = {
					{ t = "collect", quest = 5149, item = 12888, itemName = "Pamela's Doll's Right Side", map = 1423, x = 32.63, y = 79.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 12886, itemName = "Pamela's Doll's Head" },
					{ t = "collect", quest = 5149, item = 12885, itemName = "Pamela's Doll", oi = 1 },
				},
			},
			{
				note = "Walks around. Inside the crumbled house.",
				goals = {
					{ t = "turnin", quest = 5149, title = "Pamela's Doll", npc = 10926, npcName = "Pamela Redpath", map = 1423, x = 31.15, y = 77.98, f = "e" },
					{ t = "accept", quest = 5152, title = "Auntie Marlene", npc = 10926, npcName = "Pamela Redpath", map = 1423, x = 31.15, y = 77.98, f = "e" },
					{ t = "accept", quest = 5241, title = "Uncle Carlin", npc = 10926, npcName = "Pamela Redpath", map = 1423, x = 31.15, y = 77.98, f = "e" },
				},
			},
			{
				label = "Collect_Slabs_Of_Carrion_Worm_Meat",
				along = true,
				note = "Large yellow worms.",
				goals = {
					{ t = "collect", quest = 5544, item = 13853, itemName = "Slab of Carrion Worm Meat", count = 15, oi = 1, map = 1423, x = 34.52, y = 71.5, f = "e" },
				},
			},
			{
				label = "Kill_Plaguehound_Runts_And_Plaguebats",
				along = true,
				goals = {
					{ t = "kill", quest = 5542, npc = 8596, target = "Plaguehound Runt", count = 20, oi = 1, map = 1423, x = 34.52, y = 71.5, f = "e" },
					{ t = "kill", quest = 5543, npc = 8600, target = "Plaguebat", count = 30, oi = 1, map = 1423, x = 34.52, y = 71.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 57", map = 1423, x = 34.52, y = 71.5 },
				},
			},
			{
				note = "Undead. Careful, stealthed enemies. Avoid the elite human enemies that patrol. Hurry, they disappear after 10 minutes. They don't stack, clear bag space.",
				goals = {
					{ t = "collect", item = 15447, itemName = "Living Rot", count = 7, map = 1423, x = 52.1, y = 59.9, f = "e" },
					{ t = "use", item = 15454, itemName = "Mortar and Pestle" },
					{ t = "collect", quest = 6022, item = 15448, itemName = "Coagulated Rot", oi = 1, map = 1423, x = 50.18, y = 59.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5542, npc = 8597, target = "Plaguehound", count = 5, oi = 2, map = 1423, x = 59.54, y = 64.29, f = "e" },
					{ t = "kill", quest = 6042, npc = 8601, target = "Noxious Plaguebat", count = 20, oi = 1, map = 1423, x = 59.54, y = 64.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6030, title = "Duke Nicholas Zverenhoff", npc = 11039, npcName = "Duke Nicholas Zverenhoff", map = 1423, x = 71.62, y = 50.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5241, title = "Uncle Carlin", npc = 11063, npcName = "Carlin Redpath", map = 1423, x = 71.7, y = 50.04, f = "e" },
					{ t = "accept", quest = 5211, title = "Defenders of Darrowshire", npc = 11063, npcName = "Carlin Redpath", map = 1423, x = 71.7, y = 50.04, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 6021, title = "Zaeldarr the Outcast", npc = 11038, npcName = "Caretaker Alen", map = 1423, x = 69.92, y = 53.64, f = "e" },
					{ t = "accept", quest = 5281, title = "The Restless Souls", npc = 11038, npcName = "Caretaker Alen", map = 1423, x = 69.92, y = 53.64, f = "e" },
				},
			},
			{
				note = "Long questing session soon. Walks around.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 11038, npcName = "Caretaker Alen", map = 1423, x = 69.92, y = 53.64, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Light's Hope Chapel", map = 1423, x = 70.53, y = 47.55, f = "e" },
				},
			},
			{
				note = "Large stones leaking green ooze. Work your way west.",
				goals = {
					{ t = "collect", quest = 5901, item = 15043, itemName = "Plagueland Termites", count = 100, oi = 1, map = 1423, x = 39.65, y = 26.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5281, title = "The Restless Souls", npc = 11140, npcName = "Egan", map = 1423, x = 11.36, y = 26.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 6164, title = "Augustus' Receipt Book", npc = 12384, npcName = "Augustus the Touched", map = 1423, x = 11.36, y = 26.37, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "collect", quest = 6164, item = 15884, itemName = "Augustus' Receipt Book", oi = 1, map = 1423, x = 14.04, y = 24.22, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6164, title = "Augustus' Receipt Book", npc = 12384, npcName = "Augustus the Touched", map = 1423, x = 11.36, y = 26.37, f = "e" },
				},
			},
			{
				label = "Kill_Frenzied_Plaguehounds_And_Monstrous_Plaguebats",
				along = true,
				goals = {
					{ t = "kill", quest = 5542, npc = 8598, target = "Frenzied Plaguehound", count = 5, oi = 3, map = 1423, x = 38.84, y = 30.98, f = "e" },
					{ t = "kill", quest = 6042, npc = 8602, target = "Monstrous Plaguebat", count = 10, oi = 2, map = 1423, x = 38.84, y = 30.98, f = "e" },
				},
			},
			{
				label = "Free_Darrowshire_Spirits",
				along = true,
				note = "Ghouls. Shared spawns with other undead. Appear at their corpses.",
				goals = {
					{ t = "complete", quest = 5211, title = "Defenders of Darrowshire", note = "Free #15# Darrowshire Spirits", map = 1423, x = 58.64, y = 32.96, f = "e" },
				},
			},
			{
				note = "Downstairs inside the crypt.",
				goals = {
					{ t = "goto", text = "Enter the crypt", map = 1423, x = 23.42, y = 73.19 },
					{ t = "collect", quest = 6021, item = 15785, itemName = "Zaeldarr's Head", oi = 1, map = 1423, x = 23.06, y = 72.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6022, title = "To Kill With Purpose", npc = 11878, npcName = "Nathanos Blightcaller", map = 1423, x = 22.23, y = 63.52, f = "e" },
					{ t = "turnin", quest = 6042, title = "Un-Life's Little Annoyances", npc = 11878, npcName = "Nathanos Blightcaller", map = 1423, x = 22.23, y = 63.52, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 5542, title = "Demon Dogs", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "turnin", quest = 5543, title = "Blood Tinged Skies", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "turnin", quest = 5544, title = "Carrion Grubbage", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "accept", quest = 5742, title = "Redemption", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				note = "Walks around. Must be sitting. Type /sit in chat. macro /sit",
				goals = {
					{ t = "complete", quest = 5742, title = "Redemption", note = "Listen to Tirion's Tale", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 5742, title = "Redemption", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				label = "Kill_Diseased_Grizzlies",
				along = true,
				note = "Shared spawns with spiders. notinsticky",
				goals = {
					{ t = "kill", quest = 4985, npc = 1816, target = "Diseased Grizzly", count = 8, oi = 1, map = 1422, x = 66.4, y = 51.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4985, title = "The Wildlife Suffers Too", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.72, y = 64.67, f = "e" },
					{ t = "accept", quest = 4987, title = "Glyphed Oaken Branch", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.72, y = 64.67, f = "e" },
				},
			},
			{
				note = "Walks around. Both floors inside the building.",
				goals = {
					{ t = "turnin", quest = 5152, title = "Auntie Marlene", npc = 10927, npcName = "Marlene Redpath", map = 1422, x = 49.17, y = 78.58, f = "e" },
					{ t = "accept", quest = 5153, title = "A Strange Historian", npc = 10927, npcName = "Marlene Redpath", map = 1422, x = 49.17, y = 78.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5153, item = 12894, itemName = "Joseph's Wedding Ring", oi = 1, map = 1422, x = 49.68, y = 76.77, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 4972, title = "Counting Out Time", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
					{ t = "turnin", quest = 5153, title = "A Strange Historian", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
					{ t = "accept", quest = 5154, title = "The Annals of Darrowshire", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
				},
			},
			{
				note = "Enemies near the building entrance. Run on the ledge of the building. Hug the building outside wall to reach the entrance.",
				goals = {
					{ t = "complete", quest = 5154, title = "The Annals of Darrowshire", note = "Click Here to Continue" },
				},
			},
			{
				note = "Find the real book by zooming in and looking. Fake books spawn enemies. Real book has two appearances: Sharper pages and even shading on both halves. Or Uneven shading with large brown spot on the pages. If no real book, click fakes to get it to spawn. Inside the building.",
				goals = {
					{ t = "collect", quest = 5154, item = 12900, itemName = "Annals of Darrowshire", oi = 1, map = 1422, x = 43.52, y = 69.55, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 5154, title = "The Annals of Darrowshire", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
					{ t = "accept", quest = 5210, title = "Brother Carlin", npc = 10667, npcName = "Chromie", map = 1422, x = 39.45, y = 66.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 964, title = "Skeletal Fragments", npc = 11057, npcName = "Apothecary Dithers", map = 1420, x = 83.28, y = 69.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5234, title = "Return to the Bulwark", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.04, y = 71.91, f = "e" },
					{ t = "accept", quest = 5235, title = "Target: Gahrron's Withering", npc = 11055, npcName = "Shadow Priestess Vandis", map = 1420, x = 83.04, y = 71.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5901, title = "A Plague Upon Thee", npc = 11615, npcName = "Mickey Levine", map = 1420, x = 83.29, y = 72.33, f = "e" },
					{ t = "accept", quest = 5902, title = "A Plague Upon Thee", npc = 11615, npcName = "Mickey Levine", map = 1420, x = 83.29, y = 72.33, f = "e" },
				},
			},
		},
	})
end

