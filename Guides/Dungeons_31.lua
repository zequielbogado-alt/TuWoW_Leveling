-- TuWoW_Leveling — Guides/Dungeons_31.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-onyxias-lair-attunement",
		pack = "guides",
		title = "Onyxia's Lair Attunement",
		category = "Dungeons",
		folder = "Raid Attunements",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1418,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 55 },
				},
			},
			{
				note = "At the top of the tower. Click through the dialogue.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1418, x = 6.2, y = 47.59 },
					{ t = "collect", item = 12563, itemName = "Warlord Goretooth's Command", map = 1418, x = 5.8, y = 47.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 12563, itemName = "Warlord Goretooth's Command" },
					{ t = "accept", quest = 4903, title = "Warlord's Command", npc = 9077, npcName = "Warlord Goretooth", map = 1418, x = 5.8, y = 47.5, f = "e" },
				},
			},
			{
				note = "This quest requires you to progress through the Lower Blackrock Spire dungeon. You will likely need a full group to complete the quest.",
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "complete", quest = 4903, title = "Warlord's Command", note = "Enter the Blackrock Spire Dungeon with Your Group" },
				},
			},
			{
				note = "Use the Dungeon guides to accomplish this.",
				goals = {
					{ t = "kill", quest = 4903, npc = 9196, target = "Highlord Omokk", oi = 2 },
				},
			},
			{
				note = "Use the Dungeon guides to accomplish this.",
				goals = {
					{ t = "kill", quest = 4903, npc = 9237, target = "War Master Voone", oi = 3 },
				},
			},
			{
				note = "Use the Dungeon guides to accomplish this.",
				goals = {
					{ t = "kill", quest = 4903, npc = 9568, target = "Overlord Wyrmthalak", oi = 1 },
				},
			},
			{
				label = "Collect_Important_Blackrock_Documents",
				along = true,
				note = "It looks like a small open scroll laying on the ground behind one of these three bosses. Check behind each boss after killing them to see if it's there.",
				goals = {
					{ t = "collect", quest = 4903, item = 12562, itemName = "Important Blackrock Documents", oi = 4 },
				},
			},
			{
				note = "At the top of the tower.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1418, x = 6.2, y = 47.59 },
					{ t = "turnin", quest = 4903, title = "Warlord's Command", npc = 9077, npcName = "Warlord Goretooth", map = 1418, x = 5.8, y = 47.53, f = "e" },
					{ t = "accept", quest = 4941, title = "Eitrigg's Wisdom", npc = 9077, npcName = "Warlord Goretooth", map = 1418, x = 5.8, y = 47.53, f = "e" },
				},
			},
			{
				note = "Inside the building. Click through the dialogue.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1454, x = 51.98, y = 57.66 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.25, y = 36.95 },
					{ t = "complete", quest = 4941, title = "Eitrigg's Wisdom", note = "Council with Eitrigg", map = 1454, x = 34.28, y = 39.35, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4941, title = "Eitrigg's Wisdom", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
					{ t = "accept", quest = 4974, title = "For The Horde!", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
				},
			},
			{
				note = "This quest requires you to progress through the Upper Blackrock Spire dungeon. You will likely need a 10 person raid group to complete the quest.",
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "complete", quest = 4974, title = "For The Horde!", note = "Enter the Blackrock Spire Dungeon with Your Group" },
				},
			},
			{
				note = "Use the Dungeon guides to accomplish this.",
				goals = {
					{ t = "collect", quest = 4974, item = 12630, itemName = "Head of Rend Blackhand", oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1454, x = 51.98, y = 57.66 },
					{ t = "goto", text = "Enter the building", map = 1454, x = 40.25, y = 36.95 },
					{ t = "turnin", quest = 4974, title = "For The Horde!", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
					{ t = "accept", quest = 6566, title = "What the Wind Carries", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
				},
			},
			{
				note = "Inside the building. Click through the dialogue.",
				goals = {
					{ t = "complete", quest = 6566, title = "What the Wind Carries", note = "Listen to Thrall's Tale", map = 1454, x = 31.74, y = 37.83, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6566, title = "What the Wind Carries", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
					{ t = "accept", quest = 6567, title = "The Champion of the Horde", npc = 4949, npcName = "Thrall", map = 1454, x = 31.74, y = 37.83, f = "e" },
				},
			},
			{
				label = "Rexxar_Champion_of_the_Horde_Path_One",
				note = "He walks along the road through Stonetalon Mountains, Desolace and Feralas. He's an Orc that walks with a pet bear.",
				goals = {
					{ t = "turnin", quest = 6567, title = "The Champion of the Horde", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
			{
				note = "He walks along the road through Stonetalon Mountains, Desolace and Feralas. He's an Orc that walks with a pet bear.",
				goals = {
					{ t = "turnin", quest = 6567, title = "The Champion of the Horde", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
			{
				label = "Accept_Testament_of_Power",
				goals = {
					{ t = "accept", quest = 6568, title = "The Testament of Rexxar", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6568, title = "The Testament of Rexxar", npc = 11872, npcName = "Myranda the Hag", map = 1422, x = 50.79, y = 77.85, f = "e" },
					{ t = "accept", quest = 6569, title = "Oculus Illusions", npc = 11872, npcName = "Myranda the Hag", map = 1422, x = 50.79, y = 77.85, f = "e" },
				},
			},
			{
				note = "This quest requires you to progress through the Upper Blackrock Spire dungeon. You will likely need a 10 person raid group to complete the quest.",
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "complete", quest = 6569, title = "Oculus Illusions", note = "Enter the Blackrock Spire Dungeon with Your Group" },
				},
			},
			{
				note = "There's a few at the very beginning of the dungeon and a lot more in The Rookery.",
				goals = {
					{ t = "collect", quest = 6569, item = 16786, itemName = "Black Dragonspawn Eye", count = 20, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6569, title = "Oculus Illusions", npc = 11872, npcName = "Myranda the Hag", map = 1422, x = 50.79, y = 77.85, f = "e" },
					{ t = "accept", quest = 6570, title = "Emberstrife", npc = 11872, npcName = "Myranda the Hag", map = 1422, x = 50.79, y = 77.85, f = "e" },
				},
			},
			{
				note = "It should be in your bags.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1445, x = 54.54, y = 84.73 },
					{ t = "complete", quest = 6570, title = "Emberstrife", note = "Equip the Amulet of Draconic Subversion", map = 1445, x = 55.09, y = 85.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16787, itemName = "Amulet of Draconic Subversion" },
					{ t = "complete", quest = 6570, title = "Emberstrife", note = "Become Disguised", map = 1445, x = 55.09, y = 85.62, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1445, x = 55.43, y = 86.98 },
					{ t = "goto", text = "Continue following the path", map = 1445, x = 57.76, y = 86.86 },
					{ t = "turnin", quest = 6570, title = "Emberstrife", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
					{ t = "accept", quest = 6582, title = "The Test of Skulls, Scryer", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
					{ t = "accept", quest = 6583, title = "The Test of Skulls, Somnus", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
					{ t = "accept", quest = 6584, title = "The Test of Skulls, Chronalis", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
				},
			},
			{
				note = "It flies around this area. Killing it will require a full group.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1446, x = 61.28, y = 50.59 },
					{ t = "collect", quest = 6584, item = 16871, itemName = "The Skull of Chronalis", oi = 1, map = 1446, x = 64.07, y = 48.75, f = "e" },
				},
			},
			{
				note = "Inside the cave. It flies around this area. Killing it will require a full group.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1452, x = 59.3, y = 43.21 },
					{ t = "goto", text = "Enter the cave", map = 1452, x = 57.15, y = 49.93 },
					{ t = "goto", text = "Follow the path down", map = 1452, x = 54.65, y = 49.94 },
					{ t = "collect", quest = 6582, item = 16869, itemName = "The Skull of Scryer", oi = 1, map = 1452, x = 52.87, y = 56.08, f = "e" },
				},
			},
			{
				note = "It flies around this area, between these two spots. Killing it will require a full group.",
				goals = {
					{ t = "collect", quest = 6583, item = 16870, itemName = "The Skull of Somnus", oi = 1, map = 1435, x = 80.44, y = 68.4, f = "e" },
				},
			},
			{
				note = "It should be in your bags.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1445, x = 54.54, y = 84.73 },
					{ t = "complete", quest = 6584, title = "The Test of Skulls, Chronalis", note = "Equip the Amulet of Draconic Subversion", map = 1445, x = 55.09, y = 85.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16787, itemName = "Amulet of Draconic Subversion" },
					{ t = "complete", quest = 6584, title = "The Test of Skulls, Chronalis", note = "Become Disguised", map = 1445, x = 55.09, y = 85.62, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1445, x = 55.43, y = 86.98 },
					{ t = "goto", text = "Continue following the path", map = 1445, x = 57.76, y = 86.86 },
					{ t = "turnin", quest = 6582, title = "The Test of Skulls, Scryer", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
					{ t = "turnin", quest = 6583, title = "The Test of Skulls, Somnus", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
					{ t = "turnin", quest = 6584, title = "The Test of Skulls, Chronalis", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
					{ t = "accept", quest = 6585, title = "The Test of Skulls, Axtroz", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
				},
			},
			{
				note = "It flies back and forth between these two gates. Killing it will require a full group.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1437, x = 74.18, y = 47.32 },
					{ t = "collect", quest = 6585, item = 16872, itemName = "The Skull of Axtroz", oi = 1, map = 1437, x = 82.81, y = 48.88, f = "e" },
				},
			},
			{
				note = "It should be in your bags.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1445, x = 54.54, y = 84.73 },
					{ t = "complete", quest = 6585, title = "The Test of Skulls, Axtroz", note = "Equip the Amulet of Draconic Subversion", map = 1445, x = 55.09, y = 85.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 16787, itemName = "Amulet of Draconic Subversion" },
					{ t = "complete", quest = 6585, title = "The Test of Skulls, Axtroz", note = "Become Disguised", map = 1445, x = 55.09, y = 85.62, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1445, x = 55.43, y = 86.98 },
					{ t = "goto", text = "Continue following the path", map = 1445, x = 57.76, y = 86.86 },
					{ t = "turnin", quest = 6585, title = "The Test of Skulls, Axtroz", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
					{ t = "accept", quest = 6601, title = "Ascension...", npc = 10321, npcName = "Emberstrife", map = 1445, x = 56.65, y = 87.71, f = "e" },
				},
			},
			{
				label = "Rexxar_Ascension_Path_One",
				note = "He walks along the road through Stonetalon Mountains, Desolace and Feralas. He's an Orc that walks with a pet bear.",
				goals = {
					{ t = "turnin", quest = 6601, title = "Ascension...", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
			{
				note = "He walks along the road through Stonetalon Mountains, Desolace and Feralas. He's an Orc that walks with a pet bear.",
				goals = {
					{ t = "turnin", quest = 6601, title = "Ascension...", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
			{
				label = "Accept_Blood_of_the_Black_Dragon_Champion",
				goals = {
					{ t = "accept", quest = 6602, title = "Blood of the Black Dragon Champion", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
			{
				note = "This quest requires you to progress through the Upper Blackrock Spire dungeon. You will likely need a 10 person raid group to complete the quest.",
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "complete", quest = 6602, title = "Blood of the Black Dragon Champion", note = "Enter the Blackrock Spire Dungeon with Your Group" },
				},
			},
			{
				note = "Use the Dungeon guides to accomplish this.",
				goals = {
					{ t = "collect", quest = 6602, item = 16663, itemName = "Blood of the Black Dragon Champion", oi = 1 },
				},
			},
			{
				label = "Rexxar_Blood_of_the_Black_Dragon_Champion_Path_One",
				note = "He walks along the road through Stonetalon Mountains, Desolace and Feralas. He's an Orc that walks with a pet bear. Completing this quest will award you with a Darkfire Amulet, which will allow you to enter the Onyxia's Lair raid. You must keep it in your inventory in order to enter the raid instance.",
				goals = {
					{ t = "turnin", quest = 6602, title = "Blood of the Black Dragon Champion", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
			{
				note = "He walks along the road through Stonetalon Mountains, Desolace and Feralas. He's an Orc that walks with a pet bear. Completing this quest will award you with a Darkfire Amulet, which will allow you to enter the Onyxia's Lair raid. You must keep it in your inventory in order to enter the raid instance.",
				goals = {
					{ t = "turnin", quest = 6602, title = "Blood of the Black Dragon Champion", npc = 10182, npcName = "Rexxar", map = 1443, x = 54.0, y = 2.0, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-naxxramas-attunement",
		pack = "guides",
		title = "Naxxramas Attunement",
		category = "Dungeons",
		folder = "Raid Attunements",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1423,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 60 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 9121, title = "The Dread Citadel - Naxxramas", npc = 16116, npcName = "Archmage Angela Dosantos", map = 1423, x = 71.71, y = 48.7, f = "e" },
					{ t = "accept", quest = 9122, title = "The Dread Citadel - Naxxramas", npc = 16116, npcName = "Archmage Angela Dosantos", map = 1423, x = 71.71, y = 48.7, f = "e" },
					{ t = "accept", quest = 9123, title = "The Dread Citadel - Naxxramas", npc = 16116, npcName = "Archmage Angela Dosantos", map = 1423, x = 71.71, y = 48.7, f = "e" },
				},
			},
			{
				note = "Farm them from Rich Thorium Veins with Mining or purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 12363, itemName = "Arcane Crystal", count = 5 },
					{ t = "collect", item = 12363, itemName = "Arcane Crystal", count = 3 },
				},
			},
			{
				label = "Collect_Nexus_Crystals",
				along = true,
				note = "Disenchant them from epic items with Enchanting or purchase them from the Auction House.",
				goals = {
					{ t = "collect", item = 20725, itemName = "Nexus Crystal", count = 2 },
					{ t = "collect", item = 20725, itemName = "Nexus Crystal" },
				},
			},
			{
				label = "Collect_1_Righteous_Orb",
				along = true,
				note = "Farm it from Crimson Elites in Western Plaguelands, Crimson mobs in Stratholme Live, or purchase it from the Auction House.",
				goals = {
					{ t = "collect", item = 12811, itemName = "Righteous Orb" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 9121, title = "The Dread Citadel - Naxxramas", npc = 16116, npcName = "Archmage Angela Dosantos", map = 1423, x = 71.71, y = 48.7, f = "e" },
					{ t = "turnin", quest = 9122, title = "The Dread Citadel - Naxxramas", npc = 16116, npcName = "Archmage Angela Dosantos", map = 1423, x = 71.71, y = 48.7, f = "e" },
					{ t = "turnin", quest = 9123, title = "The Dread Citadel - Naxxramas", npc = 16116, npcName = "Archmage Angela Dosantos", map = 1423, x = 71.71, y = 48.7, f = "e" },
				},
			},
		},
	})
end

