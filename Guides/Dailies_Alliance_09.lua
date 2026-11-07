-- TuWoW_Leveling — Guides/Dailies_Alliance_09.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-the-skybreaker",
		pack = "guides",
		title = "The Skybreaker",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
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
					{ t = "collect", item = 44301, itemName = "Tainted Essence", count = 10, map = 118, x = 55.2, y = 29.1, f = "e" },
					{ t = "collect", quest = 13322, item = 44304, itemName = "Writhing Mass", count = 1, map = 118, x = 55.2, y = 29.1, f = "e" },
					{ t = "collect", quest = 13344, item = 44434, itemName = "Dark Matter", count = 5, map = 118, x = 55.2, y = 29.1, f = "e" },
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
					{ t = "collect", item = 44220, itemName = "Orgrim's Hammer Dispatch", count = 6, map = 118, x = 43.3, y = 58.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 56.0, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13336, target = "Ymirheim Vrykul", count = 20, oi = 1, map = 118, x = 57.3, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Chilled Abomination Guts", count = 1, map = 118, x = 69.8, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13292, item = 43616, itemName = "Abandoned Armor", count = 3, map = 118, x = 69.9, y = 64.3, f = "e" },
					{ t = "collect", quest = 13292, item = 43610, itemName = "Abandoned Helm", count = 3, map = 118, x = 69.9, y = 64.3, f = "e" },
					{ t = "collect", quest = 13292, item = 43609, itemName = "Pile of Bones", count = 3, map = 118, x = 69.9, y = 64.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 68.8, y = 67.5, f = "e" },
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
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-the-valley-of-lost-hope",
		pack = "guides",
		title = "The Valley of Lost Hope",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13309, title = "Assault by Air", npc = 31808, npcName = "Ground Commander Koup", map = 118, x = 62.6, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13284, title = "Assault by Ground", npc = 31737, npcName = "Skybreaker Squad Leader", map = 118, x = 62.5, y = 51.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13284, title = "Assault by Ground", npc = 31808, npcName = "Ground Commander Koup", map = 118, x = 62.6, y = 51.3, f = "e" },
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
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-ymirheim",
		pack = "guides",
		title = "Ymirheim",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
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
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-aldurthar-the-desolation-gate",
		pack = "guides",
		title = "Aldur'thar: The Desolation Gate",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
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
				},
			},
			{
				goals = {
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
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-shadowvault-dailies",
		pack = "guides",
		title = "Shadowvault Dailies",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
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
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-deaths-rise-dailies",
		pack = "guides",
		title = "Death's Rise Dailies",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12813, title = "From Their Corpses, Rise!", npc = 29396, npcName = "Setaal Darkmender", map = 118, x = 19.7, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12838, title = "Intelligence Gathering", npc = 29456, npcName = "Aurochs Grimbane", map = 118, x = 19.9, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12815, title = "No Fly Zone", npc = 29405, npcName = "Uzo Deathcaller", map = 118, x = 19.6, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 40652, itemName = "Scarlet Onslaught Trunk Key", count = 1, map = 118, x = 9.6, y = 44.3, f = "e" },
					{ t = "collect", quest = 12838, itemName = "Onslaught Intel Documents", count = 5, oi = 1, map = 118, x = 9.6, y = 44.3, f = "e" },
				},
			},
			{
				note = "Use your Bone Gryphon in your bags while in Onslaught Harbor|use Bone Gryphon##40600",
				goals = {
					{ t = "use", item = 40600, itemName = "Bone Gryphon", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12815, target = "Onslaught Gryphon Rider", count = 10, oi = 1, map = 118, x = 10.2, y = 41.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12813, title = "From Their Corpses, Rise!", npc = 29396, npcName = "Setaal Darkmender", map = 118, x = 19.7, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12838, title = "Intelligence Gathering", npc = 29456, npcName = "Aurochs Grimbane", map = 118, x = 19.9, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12815, title = "No Fly Zone", npc = 29405, npcName = "Uzo Deathcaller", map = 118, x = 19.6, y = 47.8, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-the-silver-covenant-dailies",
		pack = "guides",
		title = "The Silver Covenant Dailies",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 14074, title = "A Leg Up", npc = 34880, npcName = "Narasi Snowdawn", map = 118, x = 76.3, y = 19.6, f = "e" },
					{ t = "accept", quest = 14152, title = "Rescue at Sea", npc = 34880, npcName = "Narasi Snowdawn", map = 118, x = 76.3, y = 19.6, f = "e" },
					{ t = "accept", quest = 14140, title = "Stop The Aggressors", npc = 34880, npcName = "Narasi Snowdawn", map = 118, x = 76.3, y = 19.6, f = "e" },
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
				goals = {
					{ t = "collect", item = 47036, itemName = "Fresh Chum", count = 6, map = 118, x = 67.0, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 14112, itemName = "North Sea Shark Meat", count = 3, oi = 1, map = 118, x = 66.8, y = 9.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 14152, target = "Kvaldir Berserker", count = 8, oi = 1, map = 118, x = 50.4, y = 49.3, f = "e" },
					{ t = "kill", quest = 14152, target = "Kvaldir Harpooner", count = 3, oi = 2, map = 118, x = 50.4, y = 49.3, f = "e" },
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

