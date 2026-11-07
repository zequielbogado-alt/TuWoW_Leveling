-- TuWoW_Leveling — Guides/Dailies_Alliance_14.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-the-storm-peaks-brunnhildar-village-dailies",
		pack = "guides",
		title = "Brunnhildar Village Dailies",
		category = "Dailies",
		folder = "The Storm Peaks",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 120,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13424, title = "Back to the Pit", npc = 29796, npcName = "Gretta the Arbiter", map = 120, x = 50.9, y = 65.6, f = "e" },
					{ t = "accept", quest = 13423, title = "Defending Your Title", npc = 29796, npcName = "Gretta the Arbiter", map = 120, x = 50.9, y = 65.6, f = "e" },
					{ t = "accept", quest = 13422, title = "Maintaining Discipline", npc = 29796, npcName = "Gretta the Arbiter", map = 120, x = 50.9, y = 65.6, f = "e" },
					{ t = "accept", quest = 13425, title = "The Aberrations Must Die", npc = 29796, npcName = "Gretta the Arbiter", map = 120, x = 50.9, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13424, target = "Hyldsmeet Warbear", count = 6, oi = 1, map = 120, x = 49.4, y = 67.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13423, target = "Victorious Challenger", count = 6, oi = 1, map = 120, x = 50.4, y = 67.5, f = "e" },
				},
			},
			{
				note = "The entrance to the Forlorn Mine is here ,0.5 |c |q 13422",
				goals = {
					{ t = "goto", map = 120, x = 47.1, y = 68.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 44.9, y = 70.1, f = "e" },
				},
			},
			{
				note = "Leave the mine ,0.5 |c |q 13422",
				goals = {
					{ t = "goto", map = 120, x = 47.1, y = 68.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 41612, itemName = "Vial of Frost Oil", count = 6, map = 120, x = 27.3, y = 63.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 23.7, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13424, title = "Back to the Pit", npc = 29796, npcName = "Gretta the Arbiter", map = 120, x = 50.9, y = 65.6, f = "e" },
					{ t = "turnin", quest = 13423, title = "Defending Your Title", npc = 29796, npcName = "Gretta the Arbiter", map = 120, x = 50.9, y = 65.6, f = "e" },
					{ t = "turnin", quest = 13422, title = "Maintaining Discipline", npc = 29796, npcName = "Gretta the Arbiter", map = 120, x = 50.9, y = 65.6, f = "e" },
					{ t = "turnin", quest = 13425, title = "The Aberrations Must Die", npc = 29796, npcName = "Gretta the Arbiter", map = 120, x = 50.9, y = 65.6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-the-storm-peaks-dun-niffelem-the-sons-of-hodir-dailies",
		pack = "guides",
		title = "Dun Niffelem (The Sons of Hodir) Dailies",
		category = "Dailies",
		folder = "The Storm Peaks",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 120,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12994, title = "Spy Hunter", npc = 30294, npcName = "Frostworg Denmother", map = 120, x = 63.5, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13006, title = "Polishing the Helm", map = 120, x = 64.2, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13003, title = "Thrusting Hodir's Spear", map = 120, x = 65.1, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13046, title = "Feeding Arngrim", map = 120, x = 67.6, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12981, title = "Hot and Cold", map = 120, x = 63.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12977, title = "Blowing Hodir's Horn", map = 120, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 57.2, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 56.4, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13006, itemName = "Viscous Oil", count = 5, oi = 1, map = 120, x = 55.6, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 56.6, y = 64.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12994, title = "Spy Hunter", npc = 30294, npcName = "Frostworg Denmother", map = 120, x = 63.5, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13006, title = "Polishing the Helm", map = 120, x = 64.2, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13003, title = "Thrusting Hodir's Spear", map = 120, x = 65.1, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 42246, itemName = "Essence of Ice", count = 6, map = 120, x = 69.7, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12981, itemName = "Frozen Iron Scrap", count = 6, oi = 1, map = 120, x = 75.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 72.1, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12981, title = "Hot and Cold", map = 120, x = 63.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12977, title = "Blowing Hodir's Horn", map = 120, x = 64.1, y = 65.1, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-the-storm-peaks-frosthold-dailies",
		pack = "guides",
		title = "Frosthold Dailies",
		category = "Dailies",
		folder = "The Storm Peaks",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 120,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12869, title = "Pushed Too Far", npc = 29732, npcName = "Fjorlin Frostbrow", map = 120, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12869, target = "Stormpeak Wyrm", count = 16, oi = 1, map = 120, x = 44.6, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12869, title = "Pushed Too Far", npc = 29732, npcName = "Fjorlin Frostbrow", map = 120, x = 29.8, y = 75.7, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-the-storm-peaks-k3-dailies",
		pack = "guides",
		title = "K3 Dailies",
		category = "Dailies",
		folder = "The Storm Peaks",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 120,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12833, title = "Overstock", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12833, target = "Garm Invader", count = 12, oi = 1, map = 120, x = 43.1, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12833, title = "Overstock", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-zuldrak-zuldrak-pre-quests",
		pack = "guides",
		title = "Zul'Drak Pre-Quests",
		category = "Dailies",
		folder = "Zul'Drak",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 121,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12740, title = "Parachutes for the Argent Crusade", npc = 28059, npcName = "Commander Falstaav", map = 121, x = 39.5, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 38.4, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12740, title = "Parachutes for the Argent Crusade", npc = 28059, npcName = "Commander Falstaav", map = 121, x = 39.5, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12596, title = "Pa'Troll", npc = 28039, npcName = "Commander Kunz", map = 121, x = 40.3, y = 66.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12557, title = "Lab Work", npc = 28205, npcName = "Alchemist Finklestein", map = 121, x = 35.0, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12557, title = "Lab Work", npc = 28205, npcName = "Alchemist Finklestein", map = 121, x = 35.0, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12599, title = "Creature Comforts", npc = 28043, npcName = "Captain Grondel", map = 121, x = 48.2, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12599, itemName = "Dead Thornwood", count = 20, oi = 1, map = 121, x = 46.9, y = 61.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12599, title = "Creature Comforts", npc = 28043, npcName = "Captain Grondel", map = 121, x = 48.2, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12597, title = "Something for the Pain", npc = 28042, npcName = "Captain Brandon", map = 121, x = 48.8, y = 78.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12597, itemName = "Mature Water-Poppy", count = 5, oi = 1, map = 121, x = 44.9, y = 79.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12597, title = "Something for the Pain", npc = 28042, npcName = "Captain Brandon", map = 121, x = 48.8, y = 78.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12598, title = "Throwing Down", npc = 28044, npcName = "Captain Rupert", map = 121, x = 58.1, y = 72.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 53.4, y = 68.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12598, title = "Throwing Down", npc = 28044, npcName = "Captain Rupert", map = 121, x = 58.1, y = 72.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12596, title = "Pa'Troll", npc = 28039, npcName = "Commander Kunz", map = 121, x = 40.3, y = 66.6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-zuldrak-the-argent-stand-dailies",
		pack = "guides",
		title = "The Argent Stand Dailies",
		category = "Dailies",
		folder = "Zul'Drak",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 121,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12587, title = "Troll Patrol", npc = 28039, npcName = "Commander Kunz", map = 121, x = 40.3, y = 66.6, f = "e" },
					{ t = "accept", quest = 12563, title = "Troll Patrol", npc = 28039, npcName = "Commander Kunz", map = 121, x = 40.3, y = 66.6, f = "e" },
					{ t = "accept", quest = 12501, title = "Troll Patrol", npc = 28039, npcName = "Commander Kunz", map = 121, x = 40.3, y = 66.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12541, title = "Troll Patrol: The Alchemist's Apprentice", npc = 28205, npcName = "Alchemist Finklestein", map = 121, x = 35.0, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12541, title = "Troll Patrol: The Alchemist's Apprentice", npc = 28205, npcName = "Alchemist Finklestein", map = 121, x = 35.0, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12594, title = "Troll Patrol: Couldn't Care Less", npc = 28043, npcName = "Captain Grondel", map = 121, x = 48.1, y = 63.9, f = "e" },
					{ t = "accept", quest = 12585, title = "Troll Patrol: Creature Comforts", npc = 28043, npcName = "Captain Grondel", map = 121, x = 48.1, y = 63.9, f = "e" },
					{ t = "accept", quest = 12519, title = "Troll Patrol: Whatdya Want, a Medal?", npc = 28043, npcName = "Captain Grondel", map = 121, x = 48.1, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 45.4, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12585, itemName = "Dead Thornwood", count = 20, oi = 1, map = 121, x = 46.0, y = 61.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12519, itemName = "Drakkari Medallion", count = 7, oi = 1, map = 121, x = 45.6, y = 62.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12594, title = "Troll Patrol: Couldn't Care Less", npc = 28043, npcName = "Captain Grondel", map = 121, x = 48.1, y = 63.9, f = "e" },
					{ t = "turnin", quest = 12585, title = "Troll Patrol: Creature Comforts", npc = 28043, npcName = "Captain Grondel", map = 121, x = 48.1, y = 63.9, f = "e" },
					{ t = "turnin", quest = 12519, title = "Troll Patrol: Whatdya Want, a Medal?", npc = 28043, npcName = "Captain Grondel", map = 121, x = 48.1, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12568, title = "Troll Patrol: Done to Death", npc = 28044, npcName = "Captain Rupert", map = 121, x = 58.1, y = 72.4, f = "e" },
					{ t = "accept", quest = 12509, title = "Troll Patrol: Intestinal Fortitude", npc = 28044, npcName = "Captain Rupert", map = 121, x = 58.1, y = 72.4, f = "e" },
					{ t = "accept", quest = 12591, title = "Troll Patrol: Throwing Down", npc = 28044, npcName = "Captain Rupert", map = 121, x = 58.1, y = 72.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 56.0, y = 70.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 28090, npcName = "Crusade Recruit", map = 121, x = 51.6, y = 75.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 53.4, y = 68.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12568, title = "Troll Patrol: Done to Death", npc = 28044, npcName = "Captain Rupert", map = 121, x = 58.1, y = 72.4, f = "e" },
					{ t = "turnin", quest = 12509, title = "Troll Patrol: Intestinal Fortitude", npc = 28044, npcName = "Captain Rupert", map = 121, x = 58.1, y = 72.4, f = "e" },
					{ t = "turnin", quest = 12591, title = "Troll Patrol: Throwing Down", npc = 28044, npcName = "Captain Rupert", map = 121, x = 58.1, y = 72.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12588, title = "Troll Patrol: Can You Dig It?", npc = 28042, npcName = "Captain Brandon", map = 121, x = 48.8, y = 78.9, f = "e" },
					{ t = "accept", quest = 12502, title = "Troll Patrol: High Standards", npc = 28042, npcName = "Captain Brandon", map = 121, x = 48.8, y = 78.9, f = "e" },
					{ t = "accept", quest = 12564, title = "Troll Patrol: Something for the Pain", npc = 28042, npcName = "Captain Brandon", map = 121, x = 48.8, y = 78.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 46.8, y = 80.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 52.5, y = 76.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 53.3, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 121, x = 50.6, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12564, itemName = "Mature Water-Poppy", count = 5, oi = 1, map = 121, x = 45.6, y = 79.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12588, title = "Troll Patrol: Can You Dig It?", npc = 28042, npcName = "Captain Brandon", map = 121, x = 48.8, y = 78.9, f = "e" },
					{ t = "turnin", quest = 12502, title = "Troll Patrol: High Standards", npc = 28042, npcName = "Captain Brandon", map = 121, x = 48.8, y = 78.9, f = "e" },
					{ t = "turnin", quest = 12564, title = "Troll Patrol: Something for the Pain", npc = 28042, npcName = "Captain Brandon", map = 121, x = 48.8, y = 78.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12563, title = "Troll Patrol", npc = 28039, npcName = "Commander Kunz", map = 121, x = 40.3, y = 66.6, f = "e" },
					{ t = "turnin", quest = 12587, title = "Troll Patrol", npc = 28039, npcName = "Commander Kunz", map = 121, x = 40.3, y = 66.6, f = "e" },
					{ t = "turnin", quest = 12501, title = "Troll Patrol", npc = 28039, npcName = "Commander Kunz", map = 121, x = 40.3, y = 66.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12604, title = "Congratulations!", npc = 28039, npcName = "Commander Kunz", map = 121, x = 40.3, y = 66.6, f = "e" },
				},
			},
		},
	})
end

