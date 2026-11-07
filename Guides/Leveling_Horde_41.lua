-- TuWoW_Leveling — Guides/Leveling_Horde_41.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-70-72-part-2",
		pack = "guides",
		title = "Northrend (70-72) (Parte 2/5)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-70-72-part-3",
		author = "TuWoW & Zygor",
		minLevel = 70,
		maxLevel = 72,
		zone = 1411,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11869, title = "Happy as a Clam", npc = 25810, npcName = "Hierophant Cenius", map = 1411, x = 57.3, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11884, title = "Ned, Lord of Rhinos...", npc = 25812, npcName = "Killinger the Den Watcher", map = 1411, x = 57.0, y = 44.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11865, title = "Unfit for Death", npc = 25811, npcName = "Zaza", map = 1411, x = 56.8, y = 44.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 53.8, y = 40.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11869, target = "Loot Crazed Diver", count = 10, oi = 1, map = 1411, x = 53.4, y = 42.7, f = "e" },
					{ t = "kill", target = "Loot Crazed Divers", count = 1, map = 1411, x = 53.4, y = 42.7, f = "e" },
					{ t = "collect", quest = 11866, itemName = "Nesingwary Lackey Ear", count = 15, oi = 1, map = 1411, x = 53.4, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11884, npc = 25801, target = "Nedar, Lord of Rhinos", count = 1, oi = 1, map = 1411, x = 46.4, y = 40.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 56.2, y = 50.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11866, title = "Ears of Our Enemies", npc = 25809, npcName = "Arch Druid Lathorius", map = 1411, x = 57.0, y = 44.3, f = "e" },
					{ t = "turnin", quest = 11876, title = "Help Those That Cannot Help Themselves", npc = 25809, npcName = "Arch Druid Lathorius", map = 1411, x = 57.0, y = 44.3, f = "e" },
					{ t = "accept", quest = 11878, title = "Khu'nok Will Know", npc = 25809, npcName = "Arch Druid Lathorius", map = 1411, x = 57.0, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11869, title = "Happy as a Clam", npc = 25810, npcName = "Hierophant Cenius", map = 1411, x = 57.3, y = 44.1, f = "e" },
					{ t = "accept", quest = 11870, title = "The Abandoned Reach", npc = 25810, npcName = "Hierophant Cenius", map = 1411, x = 57.3, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11884, title = "Ned, Lord of Rhinos...", npc = 25812, npcName = "Killinger the Den Watcher", map = 1411, x = 57.0, y = 44.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11865, title = "Unfit for Death", npc = 25811, npcName = "Zaza", map = 1411, x = 56.8, y = 44.0, f = "e" },
					{ t = "accept", quest = 11868, title = "The Culler Cometh", npc = 25811, npcName = "Zaza", map = 1411, x = 56.8, y = 44.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11878, title = "Khu'nok Will Know", npc = 25862, npcName = "Khu'nok the Behemoth", map = 1411, x = 59.5, y = 30.4, f = "e" },
					{ t = "accept", quest = 11879, title = "Kaw the Mammoth Destroyer", npc = 25862, npcName = "Khu'nok the Behemoth", map = 1411, x = 59.5, y = 30.4, f = "e" },
				},
			},
			{
				note = "Go north on the Wooly Mammoth Bull to 53.7,23.9",
				goals = {
					{ t = "collect", quest = 11879, itemName = "Kaw's War Halberd", count = 1, oi = 1, map = 1411, x = 53.7, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11879, title = "Kaw the Mammoth Destroyer", npc = 25809, npcName = "Arch Druid Lathorius", map = 1411, x = 57.0, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11868, target = "Karen \"I Don't Caribou\" the Culler", count = 1, oi = 1, map = 1411, x = 57.3, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11870, title = "The Abandoned Reach", npc = 25838, npcName = "Hierophant Liandra", map = 1411, x = 57.8, y = 55.1, f = "e" },
					{ t = "accept", quest = 11871, title = "Not On Our Watch", npc = 25838, npcName = "Hierophant Liandra", map = 1411, x = 57.8, y = 55.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Northsea Thugs", count = 1, map = 1411, x = 59.1, y = 55.9, f = "e" },
					{ t = "collect", quest = 11871, itemName = "Shipment of Animal Parts", count = 12, oi = 1, map = 1411, x = 59.1, y = 55.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11871, title = "Not On Our Watch", npc = 25838, npcName = "Hierophant Liandra", map = 1411, x = 57.8, y = 55.1, f = "e" },
					{ t = "accept", quest = 11872, title = "The Nefarious Clam Master...", npc = 25838, npcName = "Hierophant Liandra", map = 1411, x = 57.8, y = 55.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11872, target = "Clam Master K", count = 1, oi = 1, map = 1411, x = 61.5, y = 66.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11872, title = "The Nefarious Clam Master...", npc = 25810, npcName = "Hierophant Cenius", map = 1411, x = 57.3, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11868, title = "The Culler Cometh", npc = 25811, npcName = "Zaza", map = 1411, x = 56.8, y = 44.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11612, title = "Reclaiming the Quarry", npc = 25292, npcName = "Etaruk", map = 1411, x = 54.3, y = 36.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11605, title = "The Honored Ancestors", npc = 187565, npcName = "Elder Atkanok", map = 1411, x = 54.7, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11612, target = "Beryl Treasure Hunter", count = 12, oi = 1, map = 1411, x = 54.4, y = 35.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 52.8, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 52.3, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 50.9, y = 32.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11605, title = "The Honored Ancestors", npc = 187565, npcName = "Elder Atkanok", map = 1411, x = 54.7, y = 35.8, f = "e" },
					{ t = "accept", quest = 11607, title = "The Lost Spirits", npc = 187565, npcName = "Elder Atkanok", map = 1411, x = 54.7, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11612, title = "Reclaiming the Quarry", npc = 25292, npcName = "Etaruk", map = 1411, x = 54.3, y = 36.1, f = "e" },
					{ t = "accept", quest = 11617, title = "Hampering Their Escape", npc = 25292, npcName = "Etaruk", map = 1411, x = 54.3, y = 36.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Beryl Hounds", count = 1, map = 1411, x = 51.5, y = 31.4, f = "e" },
					{ t = "collect", itemName = "Cores of Malice", count = 6, map = 1411, x = 51.5, y = 31.4, f = "e" },
				},
			},
			{
				note = "Kill Beryl Reclaimers all around this area",
				goals = {
					{ t = "collect", quest = 11617, item = 34772, itemName = "Gnomish Grenade", count = 3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 52.2, y = 32.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 51.0, y = 33.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 52.8, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11607, title = "The Lost Spirits", npc = 187565, npcName = "Elder Atkanok", map = 1411, x = 54.7, y = 35.8, f = "e" },
					{ t = "accept", quest = 11609, title = "Picking Up the Pieces", npc = 187565, npcName = "Elder Atkanok", map = 1411, x = 54.7, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11617, title = "Hampering Their Escape", npc = 25292, npcName = "Etaruk", map = 1411, x = 54.3, y = 36.1, f = "e" },
					{ t = "accept", quest = 11623, title = "A Visit to the Curator", npc = 25292, npcName = "Etaruk", map = 1411, x = 54.3, y = 36.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11609, itemName = "Tuskarr Ritual Object", count = 6, oi = 1, map = 1411, x = 53.1, y = 33.3, f = "e" },
				},
			},
			{
				note = "Go west up the hill to 50.1,32.6",
				goals = {
					{ t = "kill", quest = 11623, target = "Curator Insivius", count = 1, oi = 1, map = 1411, x = 50.1, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11609, title = "Picking Up the Pieces", npc = 187565, npcName = "Elder Atkanok", map = 1411, x = 54.7, y = 35.8, f = "e" },
					{ t = "accept", quest = 11610, title = "Leading the Ancestors Home", npc = 187565, npcName = "Elder Atkanok", map = 1411, x = 54.7, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11623, title = "A Visit to the Curator", npc = 25292, npcName = "Etaruk", map = 1411, x = 54.3, y = 36.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 52.8, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 52.3, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 50.9, y = 32.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11610, title = "Leading the Ancestors Home", npc = 187565, npcName = "Elder Atkanok", map = 1411, x = 54.7, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Amber Ledge", map = 1411, x = 45.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11574, title = "Too Close For Comfort", npc = 25262, npcName = "Librarian Donathan", map = 1411, x = 45.0, y = 33.4, f = "e" },
					{ t = "accept", quest = 11587, title = "Prison Break", npc = 25262, npcName = "Librarian Donathan", map = 1411, x = 45.0, y = 33.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11576, title = "Monitoring the Rift: Cleftcliff Anomaly", npc = 25291, npcName = "Librarian Garren", map = 1411, x = 45.0, y = 33.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Beryl Mage Hunters", count = 1, map = 1411, x = 40.5, y = 39.2, f = "e" },
					{ t = "collect", itemName = "Beryl Prison Key", count = 1, map = 1411, x = 40.5, y = 39.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 41.2, y = 41.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 34.3, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11587, title = "Prison Break", npc = 25262, npcName = "Librarian Donathan", map = 1411, x = 45.3, y = 33.3, f = "e" },
					{ t = "accept", quest = 11590, title = "Abduction", npc = 25262, npcName = "Librarian Donathan", map = 1411, x = 45.3, y = 33.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11576, title = "Monitoring the Rift: Cleftcliff Anomaly", npc = 25291, npcName = "Librarian Garren", map = 1411, x = 45.0, y = 33.4, f = "e" },
					{ t = "accept", quest = 11582, title = "Monitoring the Rift: Sundered Chasm", npc = 25291, npcName = "Librarian Garren", map = 1411, x = 45.0, y = 33.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 46.8, y = 29.3, f = "e" },
				},
			},
			{
				note = "Go down the path and underwater to 44,28.6",
				goals = {
					{ t = "goto", map = 1411, x = 44.0, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11582, title = "Monitoring the Rift: Sundered Chasm", npc = 25291, npcName = "Librarian Garren", map = 1411, x = 45.0, y = 33.4, f = "e" },
					{ t = "accept", quest = 12728, title = "Monitoring the Rift: Winterfin Cavern", npc = 25291, npcName = "Librarian Garren", map = 1411, x = 45.0, y = 33.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 46.8, y = 29.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 40.1, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12728, title = "Monitoring the Rift: Winterfin Cavern", npc = 25291, npcName = "Librarian Garren", map = 1411, x = 45.0, y = 33.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 43.5, y = 37.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11590, title = "Abduction", npc = 25262, npcName = "Librarian Donathan", map = 1411, x = 45.3, y = 33.3, f = "e" },
					{ t = "accept", quest = 11646, title = "The Borean Inquisition", npc = 25262, npcName = "Librarian Donathan", map = 1411, x = 45.3, y = 33.3, f = "e" },
				},
			},
			{
				note = "Go inside the tall tower to 46.3,32.8",
				goals = {
					{ t = "turnin", quest = 11646, title = "The Borean Inquisition", npc = 25480, npcName = "Librarian Normantis", map = 1411, x = 46.3, y = 32.8, f = "e" },
					{ t = "accept", quest = 11648, title = "The Art of Persuasion", npc = 25480, npcName = "Librarian Normantis", map = 1411, x = 46.3, y = 32.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11648, title = "The Art of Persuasion", npc = 25480, npcName = "Librarian Normantis", map = 1411, x = 46.3, y = 32.8, f = "e" },
					{ t = "accept", quest = 11663, title = "Sharing Intelligence", npc = 25480, npcName = "Librarian Normantis", map = 1411, x = 46.3, y = 32.8, f = "e" },
				},
			},
			{
				note = "Go outside the tower to 45.3,33.3",
				goals = {
					{ t = "turnin", quest = 11663, title = "Sharing Intelligence", npc = 25262, npcName = "Librarian Donathan", map = 1411, x = 45.3, y = 33.3, f = "e" },
					{ t = "accept", quest = 11671, title = "A Race Against Time", npc = 25262, npcName = "Librarian Donathan", map = 1411, x = 45.3, y = 33.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Inquisitor Salrand", count = 1, map = 1411, x = 42.1, y = 39.5, f = "e" },
					{ t = "collect", quest = 11671, itemName = "Salrand's Broken Key", count = 1, oi = 1, map = 1411, x = 42.1, y = 39.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11671, title = "A Race Against Time", npc = 25262, npcName = "Librarian Donathan", map = 1411, x = 45.3, y = 33.3, f = "e" },
					{ t = "accept", quest = 11679, title = "Reforging the Key", npc = 25262, npcName = "Librarian Donathan", map = 1411, x = 45.3, y = 33.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11679, title = "Reforging the Key", npc = 24795, npcName = "Surristrasz", map = 1411, x = 45.3, y = 34.5, f = "e" },
					{ t = "accept", quest = 11680, title = "Taking Wing", npc = 24795, npcName = "Surristrasz", map = 1411, x = 45.3, y = 34.5, f = "e" },
				},
			},
			{
				note = "Watch the cutscene, then you'll get teleported back to Amber Ledge,0.3|noway|c",
				goals = {
					{ t = "turnin", quest = 11680, title = "Taking Wing", npc = 25356, npcName = "Warmage Anzim", map = 1411, x = 46.4, y = 37.3, f = "e" },
					{ t = "accept", quest = 11681, title = "Rescuing Evanor", npc = 25356, npcName = "Warmage Anzim", map = 1411, x = 46.4, y = 37.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11681, title = "Rescuing Evanor", npc = 25785, npcName = "Archmage Evanor", map = 1411, x = 46.4, y = 32.4, f = "e" },
					{ t = "accept", quest = 11682, title = "Dragonspeak", npc = 25785, npcName = "Archmage Evanor", map = 1411, x = 46.4, y = 32.4, f = "e" },
				},
			},
			{
				note = "Go outside the tower to 45.3,34.5",
				goals = {
					{ t = "turnin", quest = 11682, title = "Dragonspeak", npc = 24795, npcName = "Surristrasz", map = 1411, x = 45.3, y = 34.5, f = "e" },
					{ t = "accept", quest = 11733, title = "Traversing the Rift", npc = 24795, npcName = "Surristrasz", map = 1411, x = 45.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11733, title = "Traversing the Rift", npc = 25314, npcName = "Archmage Berinand", map = 1411, x = 32.9, y = 34.4, f = "e" },
					{ t = "accept", quest = 11900, title = "Reading the Meters", npc = 25314, npcName = "Archmage Berinand", map = 1411, x = 32.9, y = 34.4, f = "e" },
					{ t = "accept", quest = 11910, title = "Secrets of the Ancients", npc = 25314, npcName = "Archmage Berinand", map = 1411, x = 32.9, y = 34.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11918, title = "Basic Training", npc = 26117, npcName = "Raelorasz", map = 1411, x = 33.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11912, title = "Nuts for Berries", npc = 26110, npcName = "Librarian Serrah", map = 1411, x = 33.5, y = 34.4, f = "e" },
				},
			},
			{
				note = "As you do the following steps, do the following:",
				goals = {
					{ t = "collect", itemName = "Frostberry", count = 10, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Coldarra Spellbinders", count = 1, map = 1411, x = 32.7, y = 29.0, f = "e" },
					{ t = "collect", itemName = "Scintillating Fragment", count = 1, map = 1411, x = 32.7, y = 29.0, f = "e" },
					{ t = "accept", quest = 11941, title = "Puzzling...", map = 1411, x = 32.7, y = 29.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 28.3, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 31.7, y = 20.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 22.6, y = 23.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 28.3, y = 35.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11900, title = "Reading the Meters", npc = 25314, npcName = "Archmage Berninand", map = 1411, x = 32.9, y = 34.4, f = "e" },
					{ t = "turnin", quest = 11910, title = "Secrets of the Ancients", npc = 25314, npcName = "Archmage Berninand", map = 1411, x = 32.9, y = 34.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11918, title = "Basic Training", npc = 26117, npcName = "Raelorasz", map = 1411, x = 33.3, y = 34.5, f = "e" },
					{ t = "accept", quest = 11936, title = "Hatching a Plan", npc = 26117, npcName = "Raelorasz", map = 1411, x = 33.3, y = 34.5, f = "e" },
					{ t = "turnin", quest = 11941, title = "Puzzling...", npc = 26117, npcName = "Raelorasz", map = 1411, x = 33.3, y = 34.5, f = "e" },
					{ t = "accept", quest = 11943, title = "The Cell", npc = 26117, npcName = "Raelorasz", map = 1411, x = 33.3, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11912, title = "Nuts for Berries", npc = 26110, npcName = "Librarian Serrah", map = 1411, x = 33.5, y = 34.4, f = "e" },
					{ t = "accept", quest = 11914, title = "Keep the Secret Safe", npc = 26110, npcName = "Librarian Serrah", map = 1411, x = 33.5, y = 34.4, f = "e" },
				},
			},
			{
				note = "As you do the following steps:",
				goals = {
					{ t = "kill", target = "Coldarra Wyrmkin", count = 1, f = "e" },
					{ t = "collect", itemName = "Frozen Axe", count = 5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11943, itemName = "Energy Core", count = 1, oi = 1, map = 1411, x = 24.1, y = 29.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11943, itemName = "Prison Casing", count = 1, oi = 2, map = 1411, x = 27.3, y = 20.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Arcane Serpents", count = 1, map = 1411, x = 27.8, y = 24.2, f = "e" },
					{ t = "collect", quest = 11914, itemName = "Nexus Mana Essence", count = 5, oi = 1, map = 1411, x = 27.8, y = 24.2, f = "e" },
				},
			},
		},
	})
end

