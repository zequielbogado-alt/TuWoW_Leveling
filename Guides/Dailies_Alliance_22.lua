-- TuWoW_Leveling — Guides/Dailies_Alliance_22.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-speed-gold-runs-level-80-dailies-speed-gold-run-with-atg-dailies",
		pack = "guides",
		title = "Level 80 Dailies Speed Gold Run (With ATG Dailies) (Parte 1/2)",
		category = "Dailies",
		folder = "Speed Gold Runs",
		faction = "Alliance",
		next = "zygor/dailies/a-dai-speed-gold-runs-level-80-dailies-speed-gold-run-with-atg-dailies-part-2",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 14074, title = "A Leg Up", npc = 34880, npcName = "Narasi Snowdawn", map = 118, x = 76.3, y = 19.6, f = "e" },
					{ t = "accept", quest = 14152, title = "Rescue at Sea", npc = 34880, npcName = "Narasi Snowdawn", map = 118, x = 76.3, y = 19.6, f = "e" },
					{ t = "accept", quest = 14080, title = "Stop The Aggressors", npc = 34880, npcName = "Narasi Snowdawn", map = 118, x = 76.3, y = 19.6, f = "e" },
					{ t = "accept", quest = 14077, title = "The Light's Mercy", npc = 34880, npcName = "Narasi Snowdawn", map = 118, x = 76.3, y = 19.6, f = "e" },
					{ t = "accept", quest = 14096, title = "You've Really Done It This Time, Kul", npc = 34880, npcName = "Narasi Snowdawn", map = 118, x = 76.3, y = 19.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 14076, title = "Breakfast Of Champions", npc = 34912, npcName = "Savinia Loresong", map = 118, x = 76.2, y = 19.6, f = "e" },
					{ t = "accept", quest = 14090, title = "Gormok Wants His Snobolds", npc = 34912, npcName = "Savinia Loresong", map = 118, x = 76.2, y = 19.6, f = "e" },
					{ t = "accept", quest = 14112, title = "What Do You Feed a Yeti, Anyway?", npc = 34912, npcName = "Savinia Loresong", map = 118, x = 76.2, y = 19.6, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13791, title = "Taking Battle To The Enemy", npc = 33769, npcName = "Zor'be the Bloodletter", map = 118, x = 73.8, y = 19.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13788, title = "Threat From Above", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
					{ t = "accept", quest = 13864, title = "Battle Before The Citadel", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13793, title = "Among the Champions", npc = 33770, npcName = "Illyrie Nightfall", map = 118, x = 73.6, y = 20.1, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13790, title = "Among the Champions", npc = 33771, npcName = "Luuri", map = 118, x = 69.9, y = 23.3, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13682, title = "Threat From Above", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
					{ t = "accept", quest = 13861, title = "Battle Before The Citadel", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13789, title = "Taking Battle To The Enemy", npc = 33763, npcName = "Cellian Daybreak", map = 118, x = 69.9, y = 23.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 14105, title = "Deathspeaker Kharos", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "accept", quest = 14101, title = "Drottinn Hrothgar", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "accept", quest = 14102, title = "Mistcaller Yngvar", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "accept", quest = 14104, title = "Ornolf The Scarred", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 14108, title = "Get Kraken!", npc = 35094, npcName = "Crusader Silverdawn", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "accept", quest = 14107, title = "The Fate Of The Fallen", npc = 35094, npcName = "Crusader Silverdawn", map = 118, x = 69.5, y = 23.1, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "WARRIOR", "PALADIN", "HUNTER", "PRIEST", "SHAMAN", "MAGE" } },
				goals = {
					{ t = "goto", map = 118, x = 71.7, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "WARRIOR", "PALADIN", "HUNTER", "ROGUE", "PRIEST", "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.8, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "WARRIOR", "PALADIN", "ROGUE", "PRIEST", "MAGE", "WARLOCK", "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.6, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "WARRIOR", "HUNTER", "ROGUE", "PRIEST", "DRUID", "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.6, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" }, classes = { "WARRIOR", "ROGUE", "MAGE", "WARLOCK", "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.9, y = 22.5, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "collect", quest = 13790, itemName = "Mark of the Champion", count = 4, oi = 1, map = 118, x = 71.6, y = 23.8, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.7, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.8, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.6, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.6, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.9, y = 22.5, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "collect", quest = 13793, itemName = "Mark of the Champion", count = 4, oi = 1, map = 118, x = 71.6, y = 23.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 47036, itemName = "Fresh Chum", count = 6, map = 118, x = 66.9, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 14112, itemName = "North Sea Shark Meat", count = 3, oi = 1, map = 118, x = 66.8, y = 9.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 14152, target = "Kvaldir Berserker", count = 8, oi = 1, map = 118, x = 50.6, y = 49.4, f = "e" },
					{ t = "kill", quest = 14152, target = "Kvaldir Harpooner", count = 3, oi = 2, map = 118, x = 50.6, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 14074, itemName = "Stolen Tallstrider Leg", count = 10, oi = 1, map = 118, x = 43.3, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 46.5, y = 32.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 46.5, y = 32.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 14102, target = "Mistcaller Yngvar", count = 1, oi = 1, map = 118, x = 43.9, y = 24.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 14101, target = "Drottinn Hrothgar", count = 1, oi = 1, map = 118, x = 50.7, y = 15.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 14104, target = "Ornolf the Scarred", count = 1, oi = 1, map = 118, x = 58.5, y = 31.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 14108, target = "Kvaldir Deepcaller", count = 3, oi = 2, map = 118, x = 69.8, y = 22.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 14105, target = "Deathspeaker Kharos", count = 1, oi = 1, map = 118, x = 64.2, y = 21.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 46895, itemName = "Black Cage Key", count = 4, map = 118, x = 64.0, y = 21.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 46895, itemName = "Black Cage Key", count = 1, map = 118, x = 64.0, y = 21.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 60.8, y = 23.2, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13791, target = "Cult of the Damned member", count = 15, oi = 1, map = 118, x = 64.3, y = 21.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13789, target = "Cult of the Damned member", count = 15, oi = 1, map = 118, x = 64.3, y = 21.4, f = "e" },
				},
			},
			{
				note = "The Skybreaker flies in a circular pattern using these points:",
				goals = {
					{ t = "accept", quest = 13333, title = "Capture More Dispatches", npc = 30344, npcName = "High Captain Justin Bartlett", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "accept", quest = 13289, title = "That's Abominable!", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "accept", quest = 13323, title = "Drag and Drop", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "accept", quest = 13344, title = "Not a Bug", npc = 29799, npcName = "Thassarian", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "accept", quest = 13300, title = "Slaves to Saronite", npc = 31259, npcName = "Absalan the Pious", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "accept", quest = 13336, title = "Blood of the Chosen", npc = 32302, npcName = "Knight-Captain Drosche", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "accept", quest = 13292, title = "The Solution Solution", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
					{ t = "accept", quest = 13322, title = "Retest Now", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13309, title = "Assault by Air", npc = 31808, npcName = "Ground Commander Koup", map = 118, x = 62.6, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 62.6, y = 50.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13309, title = "Assault by Air", npc = 31808, npcName = "Ground Commander Koup", map = 118, x = 62.6, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13284, title = "Assault by Ground", npc = 31737, npcName = "Skybreaker Squad Leader", map = 118, x = 62.5, y = 51.1, f = "e" },
				},
			},
			{
				note = "The entrance to the cave starts here, go inside the cave ,0.3 |c",
				goals = {
					{ t = "goto", map = 118, x = 57.0, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 56.0, y = 57.6, f = "e" },
				},
			},
			{
				note = "Go outside the cave ,0.3 |c",
				goals = {
					{ t = "goto", map = 118, x = 57.0, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13336, target = "Ymirheim Vrykul", count = 20, oi = 1, map = 118, x = 57.3, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13280, title = "King of the Mountain", npc = 31776, npcName = "Frazzle Geargrinder", map = 118, x = 57.0, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 57.0, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 54.9, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13280, title = "King of the Mountain", npc = 31776, npcName = "Frazzle Geargrinder", map = 118, x = 57.0, y = 62.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13284, title = "Assault by Ground", npc = 31808, npcName = "Ground Commander Koup", map = 118, x = 62.6, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 43616, itemName = "Abandoned Armor", count = 3, map = 118, x = 69.9, y = 64.3, f = "e" },
					{ t = "collect", item = 43610, itemName = "Abandoned Helm", count = 3, map = 118, x = 69.9, y = 64.3, f = "e" },
					{ t = "collect", item = 43609, itemName = "Pile of Bones", count = 3, map = 118, x = 69.9, y = 64.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 68.8, y = 67.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Chilled Abomination Guts", count = 1, map = 118, x = 69.8, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13333, itemName = "Orgrim's Hammer Dispatch", count = 6, oi = 1, map = 118, x = 43.3, y = 58.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13323, itemName = "Orb of Illusion", count = 3, map = 118, x = 53.9, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 54.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13382, title = "Putting the Hertz: The Valley of Lost Hope", npc = 32444, npcName = "Kibli Killohertz", map = 118, x = 54.0, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 31648, npcName = "Karen No", map = 118, x = 54.0, y = 43.1, f = "e" },
				},
			},
			{
				note = "You fly off in an airplane:",
				goals = {
					{ t = "kill", quest = 13382, target = "Gargoyle Ambusher", count = 20, oi = 2, f = "e" },
					{ t = "kill", quest = 13382, target = "Frostbrood Sentries", count = 12, oi = 4, f = "e" },
					{ t = "kill", quest = 13382, target = "Bombardment Infantry", count = 50, oi = 1, f = "e" },
					{ t = "kill", quest = 13382, target = "Scourge War Machines", count = 12, oi = 3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13382, title = "Putting the Hertz: The Valley of Lost Hope", npc = 32444, npcName = "Kibli Killohertz", map = 118, x = 54.0, y = 42.9, f = "e" },
					{ t = "accept", quest = 13404, title = "Static Shock Troops: the Bombardment", npc = 32444, npcName = "Kibli Killohertz", map = 118, x = 54.0, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 31648, npcName = "Karen No", map = 118, x = 54.0, y = 43.1, f = "e" },
				},
			},
			{
				note = "You fly off in an airplane:",
				goals = {
					{ t = "kill", quest = 13404, target = "Gargoyle Ambusher", count = 20, oi = 3, f = "e" },
					{ t = "kill", quest = 13404, target = "Bombardment Infantry", count = 50, oi = 1, f = "e" },
					{ t = "kill", quest = 13404, target = "Bombardment Captain", count = 10, oi = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13404, title = "Static Shock Troops: the Bombardment", npc = 32444, npcName = "Kibli Killohertz", map = 118, x = 54.0, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 47035, itemName = "Discarded Soul Crystal", count = 6, map = 118, x = 51.1, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 44301, itemName = "Tainted Essence", count = 10, map = 118, x = 55.2, y = 29.1, f = "e" },
					{ t = "collect", item = 44304, itemName = "Writhing Mass", count = 1, map = 118, x = 55.2, y = 29.1, f = "e" },
					{ t = "collect", item = 44434, itemName = "Dark Matter", count = 5, map = 118, x = 55.2, y = 29.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 53.8, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 34.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12995, title = "Leave Our Mark", npc = 29804, npcName = "Baron Sliver", map = 118, x = 42.8, y = 24.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13069, title = "Shoot 'Em Up", npc = 30074, npcName = "The Leaper", map = 118, x = 43.6, y = 25.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13071, title = "Vile Like Fire!", npc = 30216, npcName = "Vile", map = 118, x = 43.1, y = 25.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 33.0, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 33.0, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 27.2, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 28.4, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12995, title = "Leave Our Mark", npc = 29804, npcName = "Baron Sliver", map = 118, x = 42.8, y = 24.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13069, title = "Shoot 'Em Up", npc = 30074, npcName = "The Leaper", map = 118, x = 43.6, y = 25.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13071, title = "Vile Like Fire!", npc = 30216, npcName = "Vile", map = 118, x = 43.1, y = 25.2, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13788, target = "Chillmaw", count = 1, oi = 1, map = 118, x = 44.1, y = 32.6, f = "e" },
					{ t = "kill", quest = 13788, target = "Cultist Bombardier", count = 3, oi = 2, map = 118, x = 44.1, y = 32.6, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-speed-gold-runs-level-80-dailies-speed-gold-run-with-atg-dailies-part-2",
		pack = "guides",
		title = "Level 80 Dailies Speed Gold Run (With ATG Dailies) (Parte 2/2)",
		category = "Dailies",
		folder = "Speed Gold Runs",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13864, target = "Boneguard Commander", count = 3, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your hotbar to get off your mount|outvehicle |q 13864",
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13682, target = "Chillmaw", count = 1, oi = 1, map = 118, x = 44.1, y = 32.6, f = "e" },
					{ t = "kill", quest = 13682, target = "Cultist Bombardier", count = 3, oi = 2, map = 118, x = 44.1, y = 32.6, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13861, target = "Boneguard Commander", count = 3, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your hotbar to get off your mount|outvehicle |q 13861",
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				note = "The Skybreaker flies in a circular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 13333, title = "Capture More Dispatches", npc = 30344, npcName = "High Captain Justin Bartlett", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13289, title = "That's Abominable!", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "turnin", quest = 13323, title = "Drag and Drop", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "turnin", quest = 13344, title = "Not a Bug", npc = 29799, npcName = "Thassarian", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13300, title = "Slaves to Saronite", npc = 31259, npcName = "Absalan the Pious", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13336, title = "Blood of the Chosen", npc = 32302, npcName = "Knight-Captain Drosche", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13292, title = "The Solution Solution", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
					{ t = "turnin", quest = 13322, title = "Retest Now", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13790, title = "Among the Champions", npc = 33771, npcName = "Luuri", map = 118, x = 69.9, y = 23.3, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13682, title = "Threat From Above", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
					{ t = "turnin", quest = 13861, title = "Battle Before The Citadel", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13789, title = "Taking Battle To The Enemy", npc = 33763, npcName = "Cellian Daybreak", map = 118, x = 69.9, y = 23.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 14105, title = "Deathspeaker Kharos", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "turnin", quest = 14101, title = "Drottinn Hrothgar", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "turnin", quest = 14102, title = "Mistcaller Yngvar", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "turnin", quest = 14104, title = "Ornolf The Scarred", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 14108, title = "Get Kraken!", npc = 35094, npcName = "Crusader Silverdawn", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "turnin", quest = 14107, title = "The Fate Of The Fallen", npc = 35094, npcName = "Crusader Silverdawn", map = 118, x = 69.5, y = 23.1, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13791, title = "Taking Battle To The Enemy", npc = 33769, npcName = "Zor'be the Bloodletter", map = 118, x = 73.8, y = 19.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13788, title = "Threat From Above", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
					{ t = "turnin", quest = 13864, title = "Battle Before The Citadel", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13793, title = "Among the Champions", npc = 33770, npcName = "Illyrie Nightfall", map = 118, x = 73.6, y = 20.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 14076, itemName = "Jormungar Egg Sac", count = 4, oi = 1, map = 120, x = 40.5, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 42.8, y = 81.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 14074, title = "A Leg Up", npc = 34880, npcName = "Narasi Snowdawn", map = 118, x = 76.3, y = 19.6, f = "e" },
					{ t = "turnin", quest = 14152, title = "Rescue at Sea", npc = 34880, npcName = "Narasi Snowdawn", map = 118, x = 76.3, y = 19.6, f = "e" },
					{ t = "turnin", quest = 14140, title = "Stop The Aggressors", npc = 34880, npcName = "Narasi Snowdawn", map = 118, x = 76.3, y = 19.6, f = "e" },
					{ t = "turnin", quest = 14077, title = "The Light's Mercy", npc = 34880, npcName = "Narasi Snowdawn", map = 118, x = 76.3, y = 19.6, f = "e" },
					{ t = "turnin", quest = 14096, title = "You've Really Done It This Time, Kul", npc = 34880, npcName = "Narasi Snowdawn", map = 118, x = 76.3, y = 19.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 14076, title = "Breakfast Of Champions", npc = 34912, npcName = "Savinia Loresong", map = 118, x = 76.2, y = 19.6, f = "e" },
					{ t = "turnin", quest = 14090, title = "Gormok Wants His Snobolds", npc = 34912, npcName = "Savinia Loresong", map = 118, x = 76.2, y = 19.6, f = "e" },
					{ t = "turnin", quest = 14112, title = "What Do You Feed a Yeti, Anyway?", npc = 34912, npcName = "Savinia Loresong", map = 118, x = 76.2, y = 19.6, f = "e" },
				},
			},
		},
	})
end

