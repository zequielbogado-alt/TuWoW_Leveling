-- TuWoW_Leveling — Guides/Dungeons_18.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-onyxias-lair-attunement",
		pack = "guides",
		title = "Onyxia's Lair Attunement",
		category = "Dungeons",
		folder = "Raid Attunements",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1428,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 48 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 82.89, y = 63.37 },
					{ t = "accept", quest = 4182, title = "Dragonkin Menace", npc = 9562, npcName = "Helendis Riverhorn", map = 1428, x = 85.82, y = 68.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4182, npc = 7047, target = "Black Broodling", count = 15, oi = 1, map = 1428, x = 89.18, y = 53.85, f = "e" },
				},
			},
			{
				label = "Slay_Black_Dragonspawns",
				along = true,
				note = "These enemies are Elite, you may need a group to complete this.",
				goals = {
					{ t = "kill", quest = 4182, npc = 7040, target = "Black Dragonspawn", count = 10, oi = 2, map = 1428, x = 92.05, y = 53.82, f = "e" },
				},
			},
			{
				label = "Slay_Black_Drake",
				along = true,
				note = "These enemies are Elite, you may need a group to complete this.",
				goals = {
					{ t = "kill", quest = 4182, npc = 7044, target = "Black Drake", oi = 3, map = 1428, x = 89.18, y = 53.85, f = "e" },
				},
			},
			{
				label = "Slay_Black_Wrymkins",
				along = true,
				note = "These enemies are Elite, you may need a group to complete this.",
				goals = {
					{ t = "kill", quest = 4182, npc = 7041, target = "Black Wyrmkin", count = 4, oi = 4, map = 1428, x = 92.05, y = 53.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 82.89, y = 63.37 },
					{ t = "turnin", quest = 4182, title = "Dragonkin Menace", npc = 9562, npcName = "Helendis Riverhorn", map = 1428, x = 85.82, y = 68.95, f = "e" },
					{ t = "accept", quest = 4183, title = "The True Masters", npc = 9562, npcName = "Helendis Riverhorn", map = 1428, x = 85.82, y = 68.95, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1433, x = 24.42, y = 46.07 },
					{ t = "turnin", quest = 4183, title = "The True Masters", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.89, y = 44.45, f = "e" },
					{ t = "accept", quest = 4184, title = "The True Masters", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.89, y = 44.45, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 73.21, y = 46.56 },
					{ t = "turnin", quest = 4184, title = "The True Masters", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.2, y = 38.35, f = "e" },
					{ t = "accept", quest = 4185, title = "The True Masters", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.2, y = 38.35, f = "e" },
				},
			},
			{
				note = "Inside the building. Click through the dialogue.",
				goals = {
					{ t = "complete", quest = 4185, title = "The True Masters", note = "Receive Advice From Lady Prestor", map = 1453, x = 80.1, y = 38.17, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4185, title = "The True Masters", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.2, y = 38.35, f = "e" },
					{ t = "accept", quest = 4186, title = "The True Masters", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.2, y = 38.35, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1433, x = 24.42, y = 46.07 },
					{ t = "turnin", quest = 4186, title = "The True Masters", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.89, y = 44.45, f = "e" },
					{ t = "accept", quest = 4223, title = "The True Masters", npc = 344, npcName = "Magistrate Solomon", map = 1433, x = 24.89, y = 44.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 82.89, y = 63.37 },
					{ t = "turnin", quest = 4223, title = "The True Masters", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
					{ t = "accept", quest = 4224, title = "The True Masters", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
				},
			},
			{
				note = "Click through the dialogue.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 63.86, y = 30.11 },
					{ t = "complete", quest = 4224, title = "The True Masters", note = "Hear Ragged John's Story", map = 1428, x = 65.02, y = 23.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 82.89, y = 63.37 },
					{ t = "turnin", quest = 4224, title = "The True Masters", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
					{ t = "accept", quest = 4241, title = "Marshal Windsor", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run down the chain", map = 1427, x = 37.25, y = 94.39 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 35.91, y = 10.0 },
				},
			},
			{
				note = "This quest requires you to progress through the Blackrock Depths dungeon. You will likely need a full group to complete the quest.",
				goals = {
					{ t = "goto", text = "Continue down and run down the chain", map = 1427, x = 34.86, y = 99.2 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 32.55, y = 94.94 },
					{ t = "goto", text = "Follow the path", map = 1427, x = 26.88, y = 83.87 },
					{ t = "complete", quest = 4241, title = "Marshal Windsor", note = "Enter the Blackrock Depths Dungeon with Your Group" },
				},
			},
			{
				note = "She is the fourth boss in the dungeon. Use the Dungeon guides to accomplish this. You need this key to unlock Marshal Windsor's cell door. If someone else in the group already has the key you can skip this step. A Rogue can also pick the lock.",
				goals = {
					{ t = "collect", quest = 4241, item = 11140, itemName = "Prison Cell Key" },
				},
			},
			{
				note = "He is in a prison cell inside the Detention Block. After entering the dungeon enter the first room and then take the third tunnel on the right. If you enter the Halls of the Law you went too far.",
				goals = {
					{ t = "turnin", quest = 4241, title = "Marshal Windsor", npc = 9023, npcName = "Marshal Windsor" },
					{ t = "accept", quest = 4242, title = "Abandoned Hope", npc = 9023, npcName = "Marshal Windsor" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 82.89, y = 63.37 },
					{ t = "turnin", quest = 4242, title = "Abandoned Hope", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
				},
			},
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 50 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run down the chain", map = 1427, x = 37.25, y = 94.39 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 35.91, y = 10.0 },
				},
			},
			{
				note = "This quest requires you to progress through the Blackrock Depths dungeon. You will likely need a full group to complete the quest.",
				goals = {
					{ t = "goto", text = "Continue down and run down the chain", map = 1427, x = 34.86, y = 99.2 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 32.55, y = 94.94 },
					{ t = "goto", text = "Follow the path", map = 1427, x = 26.88, y = 83.87 },
				},
			},
			{
				note = "Just clear the first few rooms of the dungeon, killing all the Anvilrage dwarves and resetting the instance if needed, until you get the item drop.",
				goals = {
					{ t = "collect", item = 11446, itemName = "A Crumpled Up Note" },
				},
			},
			{
				goals = {
					{ t = "use", item = 11446, itemName = "A Crumpled Up Note" },
					{ t = "accept", quest = 4264, title = "A Crumpled Up Note" },
				},
			},
			{
				note = "She is the fourth boss in the dungeon. Use the Dungeon guides to accomplish this. You need this key to unlock Marshal Windsor's cell door. If someone else in the group already has the key you can skip this step. A Rogue can also pick the lock.",
				goals = {
					{ t = "collect", quest = 4264, item = 11140, itemName = "Prison Cell Key" },
				},
			},
			{
				note = "He is in a prison cell inside the Detention Block. After entering the dungeon enter the first room and then take the third tunnel on the right. If you enter the Halls of the Law you went too far.",
				goals = {
					{ t = "turnin", quest = 4264, title = "A Crumpled Up Note", npc = 9023, npcName = "Marshal Windsor" },
					{ t = "accept", quest = 4282, title = "A Shred of Hope", npc = 9023, npcName = "Marshal Windsor" },
				},
			},
			{
				note = "Use the Dungeon guides to accomplish this.",
				goals = {
					{ t = "collect", quest = 4282, item = 11464, itemName = "Marshal Windsor's Lost Information", oi = 1 },
				},
			},
			{
				note = "Use the Dungeon guides to accomplish this.",
				goals = {
					{ t = "collect", quest = 4282, item = 11465, itemName = "Marshal Windsor's Lost Information", oi = 2 },
				},
			},
			{
				note = "He is in a prison cell inside the Detention Block. After entering the dungeon enter the first room and then take the third tunnel on the right. If you enter the Halls of the Law you went too far. Make sure everyone turns this quest in before anyone accepts the next one. Accepting Jail Break! will start the escort quest and other party members will not be able to interact with Marshal Windsor.",
				goals = {
					{ t = "turnin", quest = 4282, title = "A Shred of Hope", npc = 9023, npcName = "Marshal Windsor" },
					{ t = "accept", quest = 4322, title = "Jail Break!", npc = 9023, npcName = "Marshal Windsor" },
				},
			},
			{
				note = "He will walk around the Detention Block and Halls of the Law, so clearing these beforehand can be helpful. There will be a few cells he will have you open. Sometimes you'll have to fight the prisoners or talk to a friendly NPC to free them. Eventually he will walk back to the dungeon entrance and escape.",
				goals = {
					{ t = "complete", quest = 4322, title = "Jail Break!" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1428, x = 82.89, y = 63.37 },
					{ t = "turnin", quest = 4322, title = "Jail Break!", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
					{ t = "accept", quest = 6402, title = "Stormwind Rendezvous", npc = 9560, npcName = "Marshal Maxwell", map = 1428, x = 84.75, y = 69.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6402, title = "Stormwind Rendezvous", map = 1453, x = 70.43, y = 85.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6402, title = "Stormwind Rendezvous", npc = 12580, npcName = "Reginald Windsor", map = 1453, x = 73.61, y = 91.04, f = "e" },
					{ t = "accept", quest = 6403, title = "The Great Masquerade", npc = 12580, npcName = "Reginald Windsor", map = 1453, x = 73.61, y = 91.04, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6403, title = "The Great Masquerade", note = "Follow Reginald Windsor through Stormwind", map = 1453, x = 72.3, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6403, title = "The Great Masquerade", map = 1453, x = 73.6, y = 91.1, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 73.2, y = 46.59 },
					{ t = "complete", quest = 6403, title = "The Great Masquerade", note = "Complete Reginald Windsor's March", map = 1453, x = 80.1, y = 38.32, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6403, title = "The Great Masquerade", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.2, y = 38.35, f = "e" },
					{ t = "accept", quest = 6501, title = "The Dragon's Eye", npc = 1748, npcName = "Highlord Bolvar Fordragon", map = 1453, x = 80.2, y = 38.35, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1452, x = 59.3, y = 43.21 },
					{ t = "goto", text = "Enter the cave", map = 1452, x = 57.15, y = 49.93 },
					{ t = "goto", text = "Follow the path down", map = 1452, x = 54.65, y = 49.94 },
					{ t = "goto", text = "Step onto the Blue Rune", map = 1452, x = 52.65, y = 55.78 },
					{ t = "complete", quest = 6501, title = "The Dragon's Eye", note = "Teleport to Haleh", map = 1452, x = 54.56, y = 51.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6501, title = "The Dragon's Eye", npc = 10929, npcName = "Haleh", map = 1452, x = 54.55, y = 51.2, f = "e" },
					{ t = "accept", quest = 6502, title = "Drakefire Amulet", npc = 10929, npcName = "Haleh", map = 1452, x = 54.55, y = 51.2, f = "e" },
				},
			},
			{
				note = "This quest requires you to progress through the Upper Blackrock Spire dungeon. You will likely need a 10 person raid group to complete the quest.",
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
					{ t = "complete", quest = 6502, title = "Drakefire Amulet", note = "Enter the Blackrock Spire Dungeon with Your Group" },
				},
			},
			{
				note = "Use the Dungeon guides to accomplish this.",
				goals = {
					{ t = "collect", quest = 6502, item = 16663, itemName = "Blood of the Black Dragon Champion", oi = 1 },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1452, x = 59.3, y = 43.21 },
					{ t = "goto", text = "Enter the cave", map = 1452, x = 57.15, y = 49.93 },
					{ t = "goto", text = "Follow the path down", map = 1452, x = 54.65, y = 49.94 },
					{ t = "goto", text = "Step onto the Blue Rune", map = 1452, x = 52.65, y = 55.78 },
					{ t = "complete", quest = 6502, title = "Drakefire Amulet", note = "Teleport to Haleh", map = 1452, x = 54.56, y = 51.27, f = "e" },
				},
			},
			{
				note = "Completing this quest will award you with a Darkfire Amulet, which will allow you to enter the Onyxia's Lair raid. You must keep it in your inventory in order to enter the raid instance.",
				goals = {
					{ t = "turnin", quest = 6502, title = "Drakefire Amulet", npc = 10929, npcName = "Haleh", map = 1452, x = 54.55, y = 51.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-naxxramas-attunement",
		pack = "guides",
		title = "Naxxramas Attunement",
		category = "Dungeons",
		folder = "Raid Attunements",
		faction = "Alliance",
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
					{ t = "collect", quest = 9121, item = 12363, itemName = "Arcane Crystal", count = 5, oi = 1 },
					{ t = "collect", quest = 9122, item = 12363, itemName = "Arcane Crystal", count = 3, oi = 1 },
				},
			},
			{
				label = "Collect_Nexus_Crystals",
				along = true,
				note = "Disenchant them from epic items with Enchanting or purchase them from the Auction House.",
				goals = {
					{ t = "collect", quest = 9121, item = 20725, itemName = "Nexus Crystal", count = 2, oi = 2 },
					{ t = "collect", quest = 9122, item = 20725, itemName = "Nexus Crystal", oi = 2 },
				},
			},
			{
				label = "Collect_1_Righteous_Orb",
				along = true,
				note = "Farm it from Crimson Elites in Western Plaguelands, Crimson mobs in Stratholme Live, or purchase it from the Auction House.",
				goals = {
					{ t = "collect", quest = 9121, item = 12811, itemName = "Righteous Orb", oi = 3 },
				},
			},
			{
				label = "Reach_Honored_Reputation",
				along = true,
				goals = {
					{ t = "complete", quest = 9121, title = "The Dread Citadel - Naxxramas", note = "Reach Honored Reputation with the Argent Dawn" },
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

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-ragefire-chasm-13-18",
		pack = "guides",
		title = "Ragefire Chasm",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 13,
		maxLevel = 18,
		version = 1,
		steps = {
			{
				note = "Oggleflint has two guards so CC one before pulling, if able. The tank should keep him facing away from the rest of the group to avoid his \"Cleave\" ability. Kill the adds and then focus on killing Oggleflint.",
				goals = {
					{ t = "talk", npc = 11517, npcName = "Oggleflint" },
				},
			},
			{
				note = "The tank should keep him away from the edges of the platform to avoid being knocked into the lava from his \"Uppercut\" ability. The healer and DPS should stay as far away as possible to avoid damage from his \"Fire Nova\" ability, if possible.",
				goals = {
					{ t = "talk", npc = 11520, npcName = "Taragaman the Hungerer" },
				},
			},
			{
				note = "Jergosh has two guards with him so CC one before pulling, if able. Kill the adds and then focus on killing Jergosh.",
				goals = {
					{ t = "talk", npc = 11518, npcName = "Jergosh the Invoker" },
				},
			},
			{
				note = "The Searing Blade Cultist to the right of the boss can be pulled by itself and should be killed before pulling the boss. CC the second Searing Blade Cultist and then focus on kill Bazzalan.",
				goals = {
					{ t = "talk", npc = 11519, npcName = "Bazzalan" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-wailing-caverns-15-25",
		pack = "guides",
		title = "Wailing Caverns",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 15,
		maxLevel = 25,
		version = 1,
		steps = {
			{
				note = "Kresh has no abilities, it is a simple tank and spank fight.",
				goals = {
					{ t = "talk", npc = 3653, npcName = "Kresh" },
				},
			},
			{
				note = "Interrupt her \"Sleep\" ability.",
				goals = {
					{ t = "talk", npc = 3671, npcName = "Lady Anacondra" },
				},
			},
			{
				note = "After pulling, immediately kill the three Deviate Pythons before switching to Lord Cobrahn. Interrupt his \"Sleep\" ability.",
				goals = {
					{ t = "talk", npc = 3669, npcName = "Lord Cobrahn" },
				},
			},
			{
				note = "It's located in the Winding Chasm before Lord Pythas. This is a rare mob that may not be available.",
				goals = {
					{ t = "talk", npc = 5912, npcName = "Deviate Faerie Dragon" },
				},
			},
			{
				note = "Interrupt his \"Sleep\" ability. After pulling, CC the Druid of the Fang and kill the other add before switching to Pythas.",
				goals = {
					{ t = "talk", npc = 3670, npcName = "Lord Pythas" },
				},
			},
			{
				note = "\"Chained Bolt\" does damage to players near each other so melee DPS should spread out around the boss to avoid damage.",
				goals = {
					{ t = "talk", npc = 3674, npcName = "Skum" },
				},
			},
			{
				note = "Interrupt his \"Sleep\" ability.",
				goals = {
					{ t = "talk", npc = 3673, npcName = "Lord Serpentis" },
				},
			},
			{
				note = "\"Grasping Vines\" roots all players within 10 yards, knocks them down and does damage so the healer should try to keep the group's health topped off as much as possible.",
				goals = {
					{ t = "talk", npc = 5775, npcName = "Verdan the Everliving" },
				},
			},
			{
				note = "Mutanus is spawned during an optional dungeon event that can occur if the four Lords of the Fang bosses have been defeated. These four bosses include Lady Anacondra, Lord Cobrahn, Lord Pythas and Lord Serpentis. The event is started by escorting the Disciple of Naralex through the dungeon. The Disciple of Naralex is found at the start of the dungeon. Once the Disciple reaches the ritual stone where Naralex sleeps, you will be attacked by waves of enemies. Mutanus' \"Thunderclap\" ability does high damage to the tank and any nearby melee DPS so ranged DPS is better for this fight. He also has two abilities, \"Terrify\" and \"Naralex's Nightmare\" that both stun/sleep players so the healer should try to keep the group's health topped off as much as possible.",
				goals = {
					{ t = "talk", npc = 3654, npcName = "Mutanus the Devourer" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-the-deadmines-17-26",
		pack = "guides",
		title = "The Deadmines",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 17,
		maxLevel = 26,
		zone = 1436,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1436, x = 42.57, y = 71.83 },
					{ t = "goto", text = "Jump down here", map = 1436, x = 43.42, y = 72.89 },
					{ t = "goto", text = "Follow the path", map = 1436, x = 42.4, y = 75.87 },
					{ t = "goto", text = "Follow the path", map = 1436, x = 41.79, y = 78.54 },
					{ t = "goto", text = "Jump down here", map = 1436, x = 39.64, y = 78.12 },
				},
			},
			{
				note = "Before the encounter, you can pull the 2 Defias Watchman without drawing aggro from the boss. If you cannot do this, use CC on one archer. If you can't CC, kill the adds before the boss. Be careful of patrolling elites.",
				goals = {
					{ t = "talk", npc = 644, npcName = "Rhahk'Zor" },
				},
			},
			{
				note = "This is a rare mob that may not be available. He will be surrounded by Defias Miners that aren't elite. Try picking them off before engaging Miner Johnson. Click the line below if the rare spawn isn't available.",
				goals = {
					{ t = "talk", npc = 3586, npcName = "Miner Johnson" },
				},
			},
			{
				note = "Clear the entire room before engaging Sneed's Shredder. It uses an ability called \"Terrify\" that will cause you to run in fear. Once the Shredder is killed, Sneed will hop out and the tank will need to pick it up quickly. It will disarm the tank so give them time to get aggro.",
				goals = {
					{ t = "talk", npc = 642, npcName = "Sneed's Shredder" },
				},
			},
			{
				note = "A Goblin Engineer will pull when you engage him. CC the engineer, or it will summing a Remote Controlled Golem, which is immune to most abilities. If the Golem is summoned focus on the engineer.",
				goals = {
					{ t = "talk", npc = 1763, npcName = "Gilnid" },
				},
			},
			{
				note = "When you approach the plank, he will automatically engage your group. There will be two Defias Blackguard that are stealthed. They need to die before you begin damaging Mr. Smite. At 66% and 33% he will stun the group for nearly 10 seconds. At 33% he will gain the ability to stun your tank. It will be important to keep your tank healed up.",
				goals = {
					{ t = "talk", npc = 646, npcName = "Mr. Smite" },
				},
			},
			{
				note = "CC adds next to Captain Greenskin before pulling. Start the encounter by killing the adds, CCing as many as possible.",
				goals = {
					{ t = "talk", npc = 647, npcName = "Captain Greenskin" },
				},
			},
			{
				note = "When you begin the encounter, there will be two Defias Blackguard that break stealth. CC and kill them before attacking Edwin VanCleef. At 50% he will summon two more adds. Repeat the process from before, killing the adds. Finish the encounter after.",
				goals = {
					{ t = "talk", npc = 639, npcName = "Edwin VanCleef" },
				},
			},
			{
				note = "This is a bonus boss, on a little island below. If you want to be safe, you can clear the adds below before jumping down. Interrupt \"Cookie's Cooking\" spell or it heals him.",
				goals = {
					{ t = "talk", npc = 645, npcName = "Cookie" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-shadowfang-keep-22-30",
		pack = "guides",
		title = "Shadowfang Keep",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 22,
		maxLevel = 30,
		version = 1,
		steps = {
			{
				note = "This is a straight forward encounter, with his only ability being \"Soul Drain\" It will immobilize the target and gain health while casting it.",
				goals = {
					{ t = "talk", npc = 3914, npcName = "Rethilgore" },
				},
			},
			{
				note = "Pulling one of the 3 horses in the stable will pull all 3. Use CC on at least one of the horses if possible as they deal high damage. Focus them down one at a time. Make sure your healer is prepared for the enounter before starting.",
				goals = {
					{ t = "talk", npc = 3865, npcName = "Shadow Charger" },
				},
			},
			{
				note = "Clear the room before starting the encounter. The fight itself is a simple enough.",
				goals = {
					{ t = "talk", npc = 3886, npcName = "Razorclaw the Butcher" },
				},
			},
			{
				note = "Healers will need to watch for the \"Veil of Shadow\" ability when it is cast. If you have a hybrid class in your group, support the healer when this ability goes off. Veil of Shadows will reduce incoming healing by 75%.",
				goals = {
					{ t = "talk", npc = 3887, npcName = "Baron Silverlaine" },
				},
			},
			{
				note = "This encounter starts with two adds. Start by focus DPSing the Haunted Servitor. You can either kill the Wailing Guardsman next, or have a Warlock or Hunter pet Off-tank it.",
				goals = {
					{ t = "talk", npc = 4278, npcName = "Commander Springvale" },
				},
			},
			{
				note = "This encounter starts with two adds. They have the \"Disarm\" and \"Cleave\" abilities, so be sure to keep them away from the group as a tank. You can use CC or focus DPS them down quickly.",
				goals = {
					{ t = "talk", npc = 4279, npcName = "Odo the Blindwatcher" },
				},
			},
			{
				note = "This is a rare mob that may not be available. The tank should keep this boss 10 yards away from the group to avoid the AoE Silence it uses.",
				goals = {
					{ t = "talk", npc = 3872, npcName = "Deathsworn Captain" },
				},
			},
			{
				note = "This boss has a dot ability and is otherwise simple.",
				goals = {
					{ t = "talk", npc = 4274, npcName = "Fenrus the Devourer" },
				},
			},
			{
				note = "In the he room where this encounter takes place, there are 4 adds that should be killed beforehand. During the fight, he will summon additional Worg that should be killed.",
				goals = {
					{ t = "talk", npc = 3927, npcName = "Wolf Master Nandos" },
				},
			},
			{
				note = "For this encounter, you will want to have ranged DPS and Healers stand at the platform you entered the room in. As the encounter progresses, Arugal will teleport around the room. His standard attack, \"Shadow Bolt\" hits very hard.",
				goals = {
					{ t = "talk", npc = 4275, npcName = "Archmage Arugal" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-blackfathom-deeps-24-32",
		pack = "guides",
		title = "Blackfathom Deeps",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 24,
		maxLevel = 32,
		zone = 1440,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Jump into the water", map = 1440, x = 14.12, y = 13.88 },
					{ t = "goto", text = "Swim underwater into the cave", map = 1440, x = 13.28, y = 13.23 },
					{ t = "goto", text = "Follow the path", map = 1440, x = 13.9, y = 10.92 },
					{ t = "goto", text = "Follow the path", map = 1440, x = 13.74, y = 9.38 },
					{ t = "goto", text = "Follow the path", map = 1440, x = 14.37, y = 9.2 },
					{ t = "goto", text = "Follow the path", map = 1440, x = 16.5, y = 11.61 },
				},
			},
			{
				note = "Ghamoo-ra has high armor so melee damage will be significantly reduced. Spread out as best as possible to avoid taking damage from \"Trample\".",
				goals = {
					{ t = "talk", npc = 4887, npcName = "Ghamoo-ra" },
				},
			},
			{
				note = "Lady Sarevess will be patrolling a cave with 2 other Naga. It's recommended that you kill them before engaging her. Use CC abilities on her two bodyguards that accompany her. Kill the adds before starting DPS on her.",
				goals = {
					{ t = "talk", npc = 4831, npcName = "Lady Sarevess" },
				},
			},
			{
				note = "Before starting the encounter, clear the room of the Murlocs. Be careful not to pull them with the boss while clearing them out. Once the room is clear of adds, kill Gelihast.",
				goals = {
					{ t = "talk", npc = 6243, npcName = "Gelihast" },
				},
			},
			{
				note = "Kelris will cast the \"Sleep\" ability on a random party member. The healer should keep the tank topped off in case they get slept. If there is a hybrid class in the group and the healer is slept, you may need to assist.",
				goals = {
					{ t = "talk", npc = 4832, npcName = "Twilight Lord Kelris" },
				},
			},
			{
				note = "To unlock the door, click each brazier one at a time and defeat the wave of enemies that spawn from them. This is an optional encounter. It takes place underwater. Keep your eye out for air vents underwater.",
				goals = {
					{ t = "talk", npc = 4830, npcName = "Old Serra'kis" },
				},
			},
			{
				note = "Aku'mai deals high damage to a single target during \"Frenzied Rage\". This ability lasts for 15 seconds. High healing will be required for these phases.",
				goals = {
					{ t = "talk", npc = 4829, npcName = "Aku'mai" },
				},
			},
		},
	})
end

