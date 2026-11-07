-- TuWoW_Leveling — Guides/Dailies_Horde_24.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-speed-gold-runs-level-80-dailies-speed-gold-run-with-atg-dailies",
		pack = "guides",
		title = "Level 80 Dailies Speed Gold Run (With ATG Dailies) (Parte 1/2)",
		category = "Dailies",
		folder = "Speed Gold Runs",
		faction = "Horde",
		next = "zygor/dailies/h-dai-speed-gold-runs-level-80-dailies-speed-gold-run-with-atg-dailies-part-2",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 14143, title = "A Leg Up", npc = 34771, npcName = "Girana the Blooded", map = 118, x = 76.1, y = 24.1, f = "e" },
					{ t = "accept", quest = 14136, title = "Rescue at Sea", npc = 34771, npcName = "Girana the Blooded", map = 118, x = 76.1, y = 24.1, f = "e" },
					{ t = "accept", quest = 14140, title = "Stop The Aggressors", npc = 34771, npcName = "Girana the Blooded", map = 118, x = 76.1, y = 24.1, f = "e" },
					{ t = "accept", quest = 14144, title = "The Light's Mercy", npc = 34771, npcName = "Girana the Blooded", map = 118, x = 76.1, y = 24.1, f = "e" },
					{ t = "accept", quest = 14142, title = "You've Really Done It This Time, Kul", npc = 34771, npcName = "Girana the Blooded", map = 118, x = 76.1, y = 24.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 14092, title = "Breakfast Of Champions", npc = 34914, npcName = "Tylos Dawnrunner", map = 118, x = 76.1, y = 24.0, f = "e" },
					{ t = "accept", quest = 14141, title = "Gormok Wants His Snobolds", npc = 34914, npcName = "Tylos Dawnrunner", map = 118, x = 76.1, y = 24.0, f = "e" },
					{ t = "accept", quest = 14145, title = "What Do You Feed a Yeti, Anyway?", npc = 34914, npcName = "Tylos Dawnrunner", map = 118, x = 76.1, y = 24.0, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13813, title = "Taking Battle To The Enemy", npc = 33769, npcName = "Zor'be the Bloodletter", map = 118, x = 73.8, y = 19.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13812, title = "Threat From Above", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
					{ t = "accept", quest = 13863, title = "Battle Before The Citadel", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13814, title = "Among the Champions", npc = 33770, npcName = "Illyrie Nightfall", map = 118, x = 73.6, y = 20.1, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13811, title = "Among the Champions", npc = 33771, npcName = "Luuri", map = 118, x = 69.9, y = 23.3, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13809, title = "Threat From Above", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
					{ t = "accept", quest = 13862, title = "Battle Before The Citadel", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13810, title = "Taking Battle To The Enemy", npc = 33763, npcName = "Cellian Daybreak", map = 118, x = 69.9, y = 23.5, f = "e" },
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
				only = { races = { "Orc" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.2, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.0, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.9, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.1, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.2, y = 22.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "collect", quest = 13811, itemName = "Mark of the Champion", count = 4, oi = 1, map = 118, x = 71.6, y = 23.8, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.2, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.0, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.9, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.1, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.2, y = 22.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "collect", quest = 13814, itemName = "Mark of the Champion", count = 4, oi = 1, map = 118, x = 71.6, y = 23.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 47036, itemName = "Fresh Chum", count = 6, map = 118, x = 74.3, y = 10.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 14145, itemName = "North Sea Shark Meat", count = 3, oi = 1, map = 118, x = 74.0, y = 10.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 14136, target = "Kvaldir Berserker", count = 8, oi = 1, map = 118, x = 43.6, y = 54.0, f = "e" },
					{ t = "kill", quest = 14136, target = "Kvaldir Harpooner", count = 3, oi = 2, map = 118, x = 43.6, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 14143, itemName = "Stolen Tallstrider Leg", count = 10, oi = 1, map = 118, x = 43.3, y = 27.5, f = "e" },
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
					{ t = "kill", quest = 13813, target = "Cult of the Damned member", count = 15, oi = 1, map = 118, x = 64.3, y = 21.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13810, target = "Cult of the Damned member", count = 15, oi = 1, map = 118, x = 64.3, y = 21.4, f = "e" },
				},
			},
			{
				note = "Orgrim's Hammer flies in a triangular pattern using these points:",
				goals = {
					{ t = "accept", quest = 13353, title = "Drag and Drop", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
					{ t = "accept", quest = 13365, title = "Not a Bug", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
					{ t = "accept", quest = 13276, title = "That's Abominable!", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "accept", quest = 13331, title = "Keeping the Alliance Blind", npc = 30824, npcName = "Sky-Reaver Korm Blackscar", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "accept", quest = 13330, title = "Blood of the Chosen", npc = 32301, npcName = "Warbringer Davos Rioht", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "accept", quest = 13302, title = "Slaves to Saronite", npc = 31261, npcName = "Brother Keltan", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "accept", quest = 13261, title = "Volatility", npc = 30825, npcName = "Chief Engineer Copperclaw", f = "e" },
					{ t = "accept", quest = 13357, title = "Retest Now", npc = 30825, npcName = "Chief Engineer Copperclaw", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13310, title = "Assault by Air", npc = 31834, npcName = "Ground Commander Xutjja", map = 118, x = 58.3, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 59.5, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13310, title = "Assault by Air", npc = 31834, npcName = "Ground Commander Xutjja", map = 118, x = 58.3, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13301, title = "Assault by Ground", npc = 31833, npcName = "Kor'kron Squad Leader", map = 118, x = 58.2, y = 45.9, f = "e" },
				},
			},
			{
				note = "The entrance to the cave starts here, go inside the cave,0.3|c",
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
				note = "Go outside the cave,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 57.0, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13330, target = "Ymirheim Vrykul", count = 20, oi = 1, map = 118, x = 57.3, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13283, title = "King of the Mountain", npc = 31781, npcName = "Blast Thunderbomb", map = 118, x = 51.9, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 51.9, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 54.9, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13283, title = "King of the Mountain", npc = 31781, npcName = "Blast Thunderbomb", map = 118, x = 51.9, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13301, title = "Assault by Ground", npc = 31834, npcName = "Ground Commander Xutjja", map = 118, x = 58.3, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13261, item = 43616, itemName = "Abandoned Armor", count = 3, map = 118, x = 69.9, y = 64.3, f = "e" },
					{ t = "collect", quest = 13261, item = 43610, itemName = "Abandoned Helm", count = 3, map = 118, x = 69.9, y = 64.3, f = "e" },
					{ t = "collect", quest = 13261, item = 43609, itemName = "Pile of Bones", count = 3, map = 118, x = 69.9, y = 64.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 68.8, y = 67.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Chilled Abomination Guts", count = 1, map = 118, x = 69.8, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 44246, itemName = "Orb of Illusion", count = 3, map = 118, x = 53.9, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 49.4, y = 39.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 47035, itemName = "Discarded Soul Crystal", count = 6, map = 118, x = 51.1, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13406, title = "Riding the Wavelength: The Bombardment", npc = 32430, npcName = "Fringe Engineer Tezzla", map = 118, x = 54.0, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 31839, npcName = "Rizzy Ratchwiggle", map = 118, x = 54.0, y = 36.7, f = "e" },
				},
			},
			{
				note = "You fly off in an airplane:",
				goals = {
					{ t = "kill", quest = 13406, target = "Gargoyle Ambusher", count = 20, oi = 3, f = "e" },
					{ t = "kill", quest = 13406, target = "Bombardment Infantry", count = 50, oi = 1, f = "e" },
					{ t = "kill", quest = 13406, target = "Bombardment Captain", count = 10, oi = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13406, title = "Riding the Wavelength: The Bombardment", npc = 32430, npcName = "Fringe Engineer Tezzla", map = 118, x = 54.0, y = 36.9, f = "e" },
					{ t = "accept", quest = 13376, title = "Total Ohmage: The Valley of Lost Hope!", npc = 32430, npcName = "Fringe Engineer Tezzla", map = 118, x = 54.0, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 31839, npcName = "Rizzy Ratchwiggle", map = 118, x = 54.0, y = 36.7, f = "e" },
				},
			},
			{
				note = "You fly off in an airplane:",
				goals = {
					{ t = "kill", quest = 13376, target = "Gargoyle Ambusher", count = 20, oi = 2, f = "e" },
					{ t = "kill", quest = 13376, target = "Frostbrood Sentry", count = 12, oi = 4, f = "e" },
					{ t = "kill", quest = 13376, target = "Bombardment Infantry", count = 50, oi = 1, f = "e" },
					{ t = "kill", quest = 13376, target = "Scourge War Machine", count = 12, oi = 3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13376, title = "Total Ohmage: The Valley of Lost Hope!", npc = 32430, npcName = "Fringe Engineer Tezzla", map = 118, x = 54.0, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 44301, itemName = "Tainted Essence", count = 10, map = 118, x = 55.2, y = 29.1, f = "e" },
					{ t = "collect", quest = 13357, item = 44304, itemName = "Writhing Mass", count = 1, map = 118, x = 55.2, y = 29.1, f = "e" },
					{ t = "collect", quest = 13365, item = 44434, itemName = "Dark Matter", count = 5, map = 118, x = 55.2, y = 29.1, f = "e" },
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
					{ t = "kill", quest = 13812, target = "Chillmaw", count = 1, oi = 1, map = 118, x = 44.1, y = 32.6, f = "e" },
					{ t = "kill", quest = 13812, target = "Cultist Bombardier", count = 3, oi = 2, map = 118, x = 44.1, y = 32.6, f = "e" },
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
					{ t = "kill", quest = 13863, target = "Boneguard Commander", count = 3, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-speed-gold-runs-level-80-dailies-speed-gold-run-with-atg-dailies-part-2",
		pack = "guides",
		title = "Level 80 Dailies Speed Gold Run (With ATG Dailies) (Parte 2/2)",
		category = "Dailies",
		folder = "Speed Gold Runs",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				note = "Click the red arrow on your hotbar to get off your mount|outvehicle |q 13863",
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13809, target = "Chillmaw", count = 1, oi = 1, map = 118, x = 44.1, y = 32.6, f = "e" },
					{ t = "kill", quest = 13809, target = "Cultist Bombardier", count = 3, oi = 2, map = 118, x = 44.1, y = 32.6, f = "e" },
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
					{ t = "kill", quest = 13862, target = "Boneguard Commander", count = 3, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your hotbar to get off your mount|outvehicle |q 13862",
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				note = "Orgrim's Hammer flies in a triangular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 13353, title = "Drag and Drop", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
					{ t = "turnin", quest = 13365, title = "Not a Bug", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
					{ t = "turnin", quest = 13276, title = "That's Abominable!", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "turnin", quest = 13331, title = "Keeping the Alliance Blind", npc = 30824, npcName = "Sky-Reaver Korm Blackscar", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "turnin", quest = 13330, title = "Blood of the Chosen", npc = 32301, npcName = "Warbringer Davos Rioht", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "turnin", quest = 13302, title = "Slaves to Saronite", npc = 31261, npcName = "Brother Keltan", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "turnin", quest = 13261, title = "Volatility", npc = 30825, npcName = "Chief Engineer Copperclaw", f = "e" },
					{ t = "turnin", quest = 13357, title = "Retest Now", npc = 30825, npcName = "Chief Engineer Copperclaw", f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13811, title = "Among the Champions", npc = 33771, npcName = "Luuri", map = 118, x = 69.9, y = 23.3, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13809, title = "Threat From Above", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
					{ t = "turnin", quest = 13862, title = "Battle Before The Citadel", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13810, title = "Taking Battle To The Enemy", npc = 33763, npcName = "Cellian Daybreak", map = 118, x = 69.9, y = 23.5, f = "e" },
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
					{ t = "turnin", quest = 13813, title = "Taking Battle To The Enemy", npc = 33769, npcName = "Zor'be the Bloodletter", map = 118, x = 73.8, y = 19.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13812, title = "Threat From Above", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
					{ t = "turnin", quest = 13863, title = "Battle Before The Citadel", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13814, title = "Among the Champions", npc = 33770, npcName = "Illyrie Nightfall", map = 118, x = 73.6, y = 20.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 14092, itemName = "Jormungar Egg Sac", count = 4, oi = 1, map = 120, x = 40.5, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 42.8, y = 81.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 14143, title = "A Leg Up", npc = 34771, npcName = "Girana the Blooded", map = 118, x = 76.1, y = 24.1, f = "e" },
					{ t = "turnin", quest = 14136, title = "Rescue at Sea", npc = 34771, npcName = "Girana the Blooded", map = 118, x = 76.1, y = 24.1, f = "e" },
					{ t = "turnin", quest = 14140, title = "Stop The Aggressors", npc = 34771, npcName = "Girana the Blooded", map = 118, x = 76.1, y = 24.1, f = "e" },
					{ t = "turnin", quest = 14144, title = "The Light's Mercy", npc = 34771, npcName = "Girana the Blooded", map = 118, x = 76.1, y = 24.1, f = "e" },
					{ t = "turnin", quest = 14142, title = "You've Really Done It This Time, Kul", npc = 34771, npcName = "Girana the Blooded", map = 118, x = 76.1, y = 24.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 14092, title = "Breakfast Of Champions", npc = 34914, npcName = "Tylos Dawnrunner", map = 118, x = 76.1, y = 24.0, f = "e" },
					{ t = "turnin", quest = 14141, title = "Gormok Wants His Snobolds", npc = 34914, npcName = "Tylos Dawnrunner", map = 118, x = 76.1, y = 24.0, f = "e" },
					{ t = "turnin", quest = 14145, title = "What Do You Feed a Yeti, Anyway?", npc = 34914, npcName = "Tylos Dawnrunner", map = 118, x = 76.1, y = 24.0, f = "e" },
				},
			},
		},
	})
end

