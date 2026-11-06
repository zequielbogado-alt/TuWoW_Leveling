-- TuWoW_Leveling — Guides/Dungeons_04.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-signet-ring-of-the-bronze-dragonflight",
		pack = "guides",
		title = "Signet Ring of the Bronze Dragonflight",
		category = "Dungeons",
		folder = "Gear & Raid Quests",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Accepting one of these quests will lock you into that questline until you complete it. You can switch to a different ring after you complete your first questline. This quest grants an intellect-based caster ring. This quest grants a strength-based defensive ring. This quest grants an agility-based offensive ring.",
				goals = {
					{ t = "accept", quest = 8757, title = "The Path of the Invoker", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8747, title = "The Path of the Protector", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8752, title = "The Path of the Conqueror", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8758, title = "The Path of the Invoker", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8748, title = "The Path of the Protector", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8753, title = "The Path of the Conqueror", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8759, title = "The Path of the Invoker", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8749, title = "The Path of the Protector", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8754, title = "The Path of the Conqueror", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8760, title = "The Path of the Invoker", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8750, title = "The Path of the Protector", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8755, title = "The Path of the Conqueror", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8761, title = "The Grand Invoker", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8751, title = "The Protector of Kalimdor", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8756, title = "The Qiraji Conqueror", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8765, item = 20861, itemName = "Bronze Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Crystal_Scarabs",
				along = true,
				goals = {
					{ t = "collect", quest = 8765, item = 20862, itemName = "Crystal Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Clay_Scarabs",
				along = true,
				goals = {
					{ t = "collect", quest = 8765, item = 20863, itemName = "Clay Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Stone_Scarabs_8764",
				along = true,
				goals = {
					{ t = "collect", quest = 8764, item = 20858, itemName = "Stone Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Gold_Scarabs",
				along = true,
				goals = {
					{ t = "collect", quest = 8764, item = 20859, itemName = "Gold Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Silver_Scarabs",
				along = true,
				goals = {
					{ t = "collect", quest = 8764, item = 20860, itemName = "Silver Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Bone_Scarabs",
				along = true,
				goals = {
					{ t = "collect", quest = 8766, item = 20864, itemName = "Bone Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Ivory_Scarabs",
				along = true,
				goals = {
					{ t = "collect", quest = 8766, item = 20865, itemName = "Ivory Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Stone_Scarabs_8766",
				along = true,
				goals = {
					{ t = "collect", quest = 8766, item = 20858, itemName = "Stone Scarab", count = 15 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8765, title = "The Changing of Paths - Invoker No More", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.3, y = 50.0, f = "e" },
					{ t = "accept", quest = 8764, title = "The Changing of Paths - Protector No More", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.3, y = 50.0, f = "e" },
					{ t = "accept", quest = 8766, title = "The Changing of Paths - Conqueror No More", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.3, y = 50.0, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-cenarion-battlegear",
		pack = "guides",
		title = "Cenarion Battlegear",
		category = "Dungeons",
		folder = "Gear & Raid Quests",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1451,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 8800, title = "Cenarion Battlegear", npc = 15540, npcName = "Windcaller Kaldon", map = 1451, x = 49.98, y = 36.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8800, title = "Cenarion Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8548, title = "Volunteer's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				note = "Use the \"Cenarion Field Duty Combat Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8548, item = 20802, itemName = "Cenarion Combat Badge", count = 5, oi = 1 },
				},
			},
			{
				label = "Collect_Cenarion_Logistics_Badge_8548",
				along = true,
				note = "Use the \"Cenarion Field Duty Logistics Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8548, item = 20800, itemName = "Cenarion Logistics Badge", count = 3, oi = 2 },
				},
			},
			{
				label = "Collect_Cenarion_Tactical_Badge_8548",
				along = true,
				note = "Use the \"Cenarion Field Duty Tactical Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8548, item = 20801, itemName = "Cenarion Tactical Badge", count = 7, oi = 3 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8548, title = "Volunteer's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8572, title = "Veteran's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				note = "Use the \"Cenarion Field Duty Combat Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8572, item = 20802, itemName = "Cenarion Combat Badge", count = 7, oi = 1 },
				},
			},
			{
				label = "Collect_Cenarion_Logistics_Badge_8572",
				along = true,
				note = "Use the \"Cenarion Field Duty Logistics Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8572, item = 20800, itemName = "Cenarion Logistics Badge", count = 4, oi = 2 },
				},
			},
			{
				label = "Collect_Cenarion_Tactical_Badge_8572",
				along = true,
				note = "Use the \"Cenarion Field Duty Tactical Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8572, item = 20801, itemName = "Cenarion Tactical Badge", count = 4, oi = 3 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8572, title = "Veteran's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8573, title = "Champion's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				note = "Use the \"Cenarion Field Duty Combat Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8573, item = 20802, itemName = "Cenarion Combat Badge", count = 15, oi = 1 },
				},
			},
			{
				label = "Collect_Cenarion_Logistics_Badge_8573",
				along = true,
				note = "Use the \"Cenarion Field Duty Logistics Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8573, item = 20800, itemName = "Cenarion Logistics Badge", count = 20, oi = 2 },
				},
			},
			{
				label = "Collect_Cenarion_Tactical_Badge_8573",
				along = true,
				note = "Use the \"Cenarion Field Duty Tactical Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8573, item = 20801, itemName = "Cenarion Tactical Badge", count = 20, oi = 3 },
				},
			},
			{
				label = "Collect_Mark_of_Cenarius_8573",
				along = true,
				note = "Use the \"Cenarion Field Duty Tactical Assignments\" leveling guide to collect these. This item is a reward exclusive to the followup tactical assignment quest \"The Four Dukes.\"",
				goals = {
					{ t = "collect", quest = 8573, item = 21508, itemName = "Mark of Cenarius", oi = 4 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8573, title = "Champion's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8574, title = "Stalwart's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				note = "Use the \"Cenarion Field Duty Combat Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8574, item = 20802, itemName = "Cenarion Combat Badge", count = 15, oi = 1 },
				},
			},
			{
				label = "Collect_Cenarion_Logistics_Badge_8574",
				along = true,
				note = "Use the \"Cenarion Field Duty Logistics Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8574, item = 20800, itemName = "Cenarion Logistics Badge", count = 20, oi = 2 },
				},
			},
			{
				label = "Collect_Cenarion_Tactical_Badge_8574",
				along = true,
				note = "Use the \"Cenarion Field Duty Tactical Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8574, item = 20801, itemName = "Cenarion Tactical Badge", count = 17, oi = 3 },
				},
			},
			{
				label = "Collect_Mark_of_Remulos_8574",
				along = true,
				note = "Use the \"Cenarion Field Duty Logistics Assignments\" leveling guide to collect these. This item is a reward exclusive to the followup logistics assignment quest \"The Ultimate Deception.\"",
				goals = {
					{ t = "collect", quest = 8574, item = 21515, itemName = "Mark of Remulos", oi = 4 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8574, title = "Stalwart's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-wailing-caverns-15-25",
		pack = "guides",
		title = "Wailing Caverns",
		category = "Dungeons",
		faction = "Alliance",
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
		id = "zygor/dungeons/a-the-deadmines-17-26",
		pack = "guides",
		title = "The Deadmines",
		category = "Dungeons",
		faction = "Alliance",
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
		id = "zygor/dungeons/a-shadowfang-keep-22-30",
		pack = "guides",
		title = "Shadowfang Keep",
		category = "Dungeons",
		faction = "Alliance",
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
		id = "zygor/dungeons/a-the-stockade-22-30",
		pack = "guides",
		title = "The Stockade",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 22,
		maxLevel = 30,
		version = 1,
		steps = {
			{
				note = "There will be Defias enemies surrounding him in the room. Use CC on the Defias before the encounter. DPS should focus on the adds before engaging Targorr the Dread. Finish off the CC'd adds after killing the boss.",
				goals = {
					{ t = "talk", npc = 1696, npcName = "Targorr the Dread" },
				},
			},
			{
				note = "There will be Defias enemies surrounding him in the room. Use CC on the Defias before the encounter. DPS should focus on the adds before engaging Kam Deepfury. Finish off the CC'd adds after killing the boss.",
				goals = {
					{ t = "talk", npc = 1666, npcName = "Kam Deepfury" },
				},
			},
			{
				note = "There will be two Defias enemies along side Hamhock. Use CC on them if possible before starting the enounter. All DPS should focus on killing a single add at a time before switching to Hamhock. Hamhock will cast \"Chain Lightning\" which will deal heavy damage to bunched up allies, so spread out as best as possible.",
				goals = {
					{ t = "talk", npc = 1717, npcName = "Hamhock" },
				},
			},
			{
				note = "It will be important to keep the tank topped off during this encounter. His \"Smoke Bomb\" ability will stun the group for 4 seconds upon use. Bazil Thredd deals high amounts of single target damage.",
				goals = {
					{ t = "talk", npc = 1716, npcName = "Bazil Thredd" },
				},
			},
			{
				note = "His \"Intimidating Shout\" ability will cause your group to run in fear. It is important to clear any area around him before engaging. If you pull extra adds during the fear, be sure to use CC abilities on them as best you can. DPS should focus down Dextren Ward as soon as possible.",
				goals = {
					{ t = "talk", npc = 1663, npcName = "Dextren Ward" },
				},
			},
			{
				note = "This is a rare mob that may not be available. Clear adds before engaging him and kill the boss.",
				goals = {
					{ t = "talk", npc = 1720, npcName = "Bruegal Ironknuckle" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-blackfathom-deeps-24-32",
		pack = "guides",
		title = "Blackfathom Deeps",
		category = "Dungeons",
		faction = "Alliance",
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

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-gnomeregan-29-38",
		pack = "guides",
		title = "Gnomeregan",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 29,
		maxLevel = 38,
		zone = 1426,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1426, x = 24.29, y = 39.77 },
					{ t = "goto", text = "Ride the elevator down", map = 1426, x = 23.41, y = 39.21 },
					{ t = "goto", text = "Follow the path", map = 1426, x = 21.98, y = 36.73 },
					{ t = "goto", text = "Follow the path", map = 1426, x = 19.93, y = 36.02 },
				},
			},
			{
				note = "This boss spawns from an event started by \"Blastmaster Emi Shortfuse\". She will trigger an explosive tha twill cause mobs to spawn from a cave. Grubbis will eventually spawn.",
				goals = {
					{ t = "talk", npc = 7361, npcName = "Grubbis" },
				},
			},
			{
				note = "Before engaging in this encounter, it is recommended that you clear the trash in the room. After that, the fight itself is simple.",
				goals = {
					{ t = "talk", npc = 7079, npcName = "Viscous Fallout" },
				},
			},
			{
				note = "This encounter is standard. DPS the boss down and move on.",
				goals = {
					{ t = "talk", npc = 6235, npcName = "Electrocutioner 6000" },
				},
			},
			{
				note = "For this encounter, place the groups back against the wall to avoid being knocked off the ledge.",
				goals = {
					{ t = "talk", npc = 6229, npcName = "Crowd Pummeler 9-60" },
				},
			},
			{
				note = "This is a rare mob that may not be available. Click the line below to continue.",
				goals = {
					{ t = "talk", npc = 6228, npcName = "Dark Iron Ambassador" },
				},
			},
			{
				note = "For this encounter, the DPS in the group should focus down \"Walking Bombs\" as they close in on the group. Other than that, kill Thermaplugg in between them.",
				goals = {
					{ t = "talk", npc = 7800, npcName = "Mekgineer Thermaplugg" },
				},
			},
		},
	})
end

