-- TuWoW_Leveling — Guides/Reputation_03.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/h-timbermaw-hold",
		pack = "guides",
		title = "Timbermaw Hold",
		category = "Reputation",
		folder = "Reputations",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1448,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 8460, title = "Timbermaw Ally", npc = 11554, npcName = "Grazle", map = 1448, x = 50.93, y = 85.01, f = "e" },
				},
			},
			{
				note = "Be careful of enemies grouped in camps, they may attack together. Deadwood Gardeners may reduce the healing on you. Deadwood Pathfinders are ranged attackers.",
				goals = {
					{ t = "kill", quest = 8460, npc = 7153, target = "Deadwood Warrior", count = 6, oi = 1, map = 1448, x = 48.32, y = 92.99, f = "e" },
				},
			},
			{
				label = "Kill_Deadwood_Pathfinders",
				along = true,
				note = "Be careful of enemies grouped in camps, they may attack together. Deadwood Gardeners may reduce the healing on you. Deadwood Pathfinders are ranged attackers.",
				goals = {
					{ t = "kill", quest = 8460, npc = 7155, target = "Deadwood Pathfinder", count = 6, oi = 2, map = 1448, x = 48.32, y = 92.99, f = "e" },
				},
			},
			{
				label = "Kill_Deadwood_Gardeners",
				along = true,
				note = "Be careful of enemies grouped in camps, they may attack together. Deadwood Gardeners may reduce the healing on you. Deadwood Pathfinders are ranged attackers.",
				goals = {
					{ t = "kill", quest = 8460, npc = 7154, target = "Deadwood Gardener", count = 6, oi = 3, map = 1448, x = 48.32, y = 92.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8460, title = "Timbermaw Ally", npc = 11554, npcName = "Grazle", map = 1448, x = 50.93, y = 85.02, f = "e" },
					{ t = "accept", quest = 8462, title = "Speak to Nafien", npc = 11554, npcName = "Grazle", map = 1448, x = 50.93, y = 85.02, f = "e" },
				},
			},
			{
				note = "Up on the cliff, follow the road.",
				goals = {
					{ t = "turnin", quest = 8462, title = "Speak to Nafien", npc = 15395, npcName = "Nafien", map = 1448, x = 64.77, y = 8.13, f = "e" },
					{ t = "accept", quest = 8461, title = "Deadwood of the North", npc = 15395, npcName = "Nafien", map = 1448, x = 64.8, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8461, npc = 7156, target = "Deadwood Den Watcher", count = 6, oi = 1, map = 1448, x = 63.08, y = 8.82, f = "e" },
				},
			},
			{
				label = "Kill_Deadwood_Avengers",
				along = true,
				goals = {
					{ t = "kill", quest = 8461, npc = 7157, target = "Deadwood Avenger", count = 6, oi = 2, map = 1448, x = 63.08, y = 8.82, f = "e" },
				},
			},
			{
				label = "Kill_Deadwood_Shamans",
				along = true,
				goals = {
					{ t = "kill", quest = 8461, npc = 7158, target = "Deadwood Shaman", count = 6, oi = 3, map = 1448, x = 63.08, y = 8.82, f = "e" },
				},
			},
			{
				note = "They look like furbolgs.",
				goals = {
					{ t = "goto", text = "Reach Unfriendly Reputation with the Timbermaw Hold Faction", map = 1448, x = 63.08, y = 8.82 },
				},
			},
			{
				note = "Up on the cliff, follow the road. Don't turn in any Deadwood Headdress Feathers yet.",
				goals = {
					{ t = "turnin", quest = 8461, title = "Deadwood of the North", npc = 15395, npcName = "Nafien", map = 1448, x = 64.8, y = 8.1, f = "e" },
					{ t = "accept", quest = 8465, title = "Speak to Salfa", npc = 15395, npcName = "Nafien", map = 1448, x = 64.8, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the tunnel to leave Felwood", map = 1448, x = 65.13, y = 8.01 },
					{ t = "goto", text = "Leave the tunnel to enter Winterspring", map = 1448, x = 68.4, y = 5.84 },
					{ t = "turnin", quest = 8465, title = "Speak to Salfa", npc = 11556, npcName = "Salfa", map = 1452, x = 27.74, y = 34.5, f = "e" },
					{ t = "accept", quest = 8464, title = "Winterfall Activity", npc = 11556, npcName = "Salfa", map = 1452, x = 27.74, y = 34.5, f = "e" },
				},
			},
			{
				note = "They share spawn points with the other Winterfall enemies. Kill the other types also, to get more to spawn.",
				goals = {
					{ t = "kill", quest = 8464, npc = 7441, target = "Winterfall Totemic", count = 8, oi = 1, map = 1452, x = 67.03, y = 35.57, f = "e" },
				},
			},
			{
				label = "Kill_Winterfall_Den_Watchers",
				along = true,
				note = "They share spawn points with the other Winterfall enemies. notinsticky Kill the other types also, to get more to spawn. notinsticky",
				goals = {
					{ t = "kill", quest = 8464, npc = 7442, target = "Winterfall Pathfinder", count = 8, oi = 2, map = 1452, x = 67.03, y = 35.57, f = "e" },
				},
			},
			{
				label = "Kill_Winterfall_Ursas",
				along = true,
				note = "They share spawn points with the other Winterfall enemies. notinsticky Kill the other types also, to get more to spawn. notinsticky",
				goals = {
					{ t = "kill", quest = 8464, npc = 7440, target = "Winterfall Den Watcher", count = 8, oi = 3, map = 1452, x = 67.03, y = 35.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8464, title = "Winterfall Activity", npc = 11556, npcName = "Salfa", map = 1452, x = 27.74, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20741, itemName = "Deadwood Ritual Totem" },
					{ t = "accept", quest = 8470, title = "Deadwood Ritual Totem" },
				},
			},
			{
				note = "He looks like a grey furbolg. He walks around inside the tunnel near this location and the tunnel leading north.",
				goals = {
					{ t = "goto", text = "Enter the tunnel to leave Winterspring", map = 1448, x = 68.22, y = 5.56 },
					{ t = "turnin", quest = 8470, title = "Deadwood Ritual Totem", npc = 11558, npcName = "Kernda", map = 1448, x = 65.37, y = 2.42, f = "e" },
				},
			},
			{
				note = "Turn in any Deadwood Headdress Feathers you have. He offers a Feathers for Nafien quest that is repeatable.",
				goals = {
					{ t = "talk", npc = 15395, npcName = "Nafien", map = 1448, x = 64.8, y = 8.1, f = "e" },
				},
			},
			{
				note = "They look like furbolgs. Save any Winterfall Spirit Beads you find. We will turn them in after you reach Revered reputation.",
				goals = {
					{ t = "collect", item = 21383, itemName = "Winterfall Spirit Beads" },
					{ t = "goto", text = "Reach Revered Reputation with the Timbermaw Hold Faction", map = 1452, x = 67.3, y = 36.36 },
				},
			},
			{
				note = "They look like furbolgs. Every 5 beads you turn in, you get 50 repututation. This step will complete when you have enough.",
				goals = {
					{ t = "collect", item = 21383, itemName = "Winterfall Spirit Beads" },
					{ t = "goto", text = "Collect Enough Winterfall Spirit Beads to Reach Exalted", map = 1452, x = 67.3, y = 36.36 },
				},
			},
			{
				note = "Turn in any Winterfall Spirit Beads you have. He offers a Beads for Salfa quest that is repeatable.",
				goals = {
					{ t = "goto", text = "Reach Exalted Reputation with the Timbermaw Hold Faction", map = 1452, x = 27.74, y = 34.5 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/h-thorium-brotherhood",
		pack = "guides",
		title = "Thorium Brotherhood",
		category = "Reputation",
		folder = "Reputations",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1427,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 7723, title = "Curse These Fat Fingers", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.57, y = 27.8, f = "e" },
					{ t = "accept", quest = 7724, title = "Fiery Menace!", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.57, y = 27.8, f = "e" },
					{ t = "accept", quest = 7727, title = "Incendosaurs? Whateverosaur is More Like It", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.57, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7722, title = "What the Flux?", npc = 14624, npcName = "Master Smith Burninate", map = 1427, x = 38.77, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7728, title = "STOLEN: Smithing Tuyere and Lookout's Spyglass", map = 1427, x = 37.63, y = 26.53, f = "e" },
					{ t = "accept", quest = 7729, title = "JOB OPPORTUNITY: Culling the Competition", map = 1427, x = 37.63, y = 26.53, f = "e" },
				},
			},
			{
				note = "They are around the watch towers on the cliff surrounding the huge pit.",
				goals = {
					{ t = "collect", quest = 7728, item = 18960, itemName = "Lookout's Spyglass", oi = 2, map = 1427, x = 33.03, y = 53.44, f = "e" },
				},
			},
			{
				label = "Collect_Smithing_Tuyere",
				along = true,
				note = "They have a roughly 5 minute respawn time. Work on the other quests around this area while waiting for them to respawn.",
				goals = {
					{ t = "collect", quest = 7728, item = 18959, itemName = "Smithing Tuyere", oi = 1, map = 1427, x = 39.13, y = 49.64, f = "e" },
				},
			},
			{
				label = "Kill_Greater_Lava_Spiders",
				along = true,
				goals = {
					{ t = "kill", quest = 7724, npc = 5858, target = "Greater Lava Spider", count = 20, oi = 1, map = 1427, x = 28.78, y = 44.44, f = "e" },
				},
			},
			{
				label = "Kill_Heavy_War_Golems",
				along = true,
				goals = {
					{ t = "kill", quest = 7723, npc = 5854, target = "Heavy War Golem", count = 20, oi = 1, map = 1427, x = 32.42, y = 49.43, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Jump down onto the metal walkway here", map = 1427, x = 49.32, y = 43.74 },
					{ t = "goto", text = "Enter the cave", map = 1427, x = 49.58, y = 45.49 },
				},
			},
			{
				note = "It looks like an unrolled scroll on a bench. Inside the cave. Overseer Maltorius can be a very deadly enemy, so you may need help with this.",
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1427, x = 44.45, y = 37.35 },
					{ t = "complete", quest = 7722, title = "What the Flux?", note = "click Secret Plans: Fiery Flux##179826", map = 1427, x = 40.39, y = 35.73, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Jump down from the bridge inside the cave", map = 1427, x = 47.73, y = 41.92 },
					{ t = "kill", quest = 7727, npc = 9318, target = "Incendosaur", count = 20, oi = 1, map = 1427, x = 51.73, y = 37.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1427, x = 47.52, y = 46.46 },
					{ t = "turnin", quest = 7723, title = "Curse These Fat Fingers", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.59, y = 27.81, f = "e" },
					{ t = "turnin", quest = 7724, title = "Fiery Menace!", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.59, y = 27.81, f = "e" },
					{ t = "turnin", quest = 7727, title = "Incendosaurs? Whateverosaur is More Like It", npc = 14627, npcName = "Hansel Heavyhands", map = 1427, x = 38.59, y = 27.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7728, title = "STOLEN: Smithing Tuyere and Lookout's Spyglass", npc = 14626, npcName = "Taskmaster Scrange", map = 1427, x = 38.98, y = 27.51, f = "e" },
					{ t = "turnin", quest = 7729, title = "JOB OPPORTUNITY: Culling the Competition", npc = 14626, npcName = "Taskmaster Scrange", map = 1427, x = 38.98, y = 27.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7722, title = "What the Flux?", npc = 14624, npcName = "Master Smith Burninate", map = 1427, x = 38.77, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Jump down onto the metal walkway here", map = 1427, x = 49.32, y = 43.74 },
					{ t = "goto", text = "Enter the cave", map = 1427, x = 49.58, y = 45.49 },
				},
			},
			{
				note = "Inside the cave. Inside the cave.",
				goals = {
					{ t = "goto", text = "Jump down from the bridge inside the cave", map = 1427, x = 47.73, y = 41.92 },
					{ t = "goto", text = "repcollect Incendosaur Scale##18944,2,25,Thorium Brotherhood,Friendly", map = 1427, x = 51.73, y = 37.16 },
				},
			},
			{
				note = "Buy the amount of Coal you need to reach Friendly reputation.",
				goals = {
					{ t = "buy", item = 3857, itemName = "Coal", map = 1427, x = 38.8, y = 28.5, f = "e" },
					{ t = "goto", text = "repcollect Coal##3857,1,25,Thorium Brotherhood,Friendly", map = 1427, x = 38.8, y = 28.51 },
				},
			},
			{
				note = "Complete the repeatable quest he offers that you have the items for.",
				goals = {
					{ t = "goto", text = "Reach Friendly Reputation with the Thorium Brotherhood Faction", map = 1427, x = 38.8, y = 28.51 },
				},
			},
			{
				note = "Complete the Gaining Acceptance quest repeatedly.",
				goals = {
					{ t = "goto", text = "Reach Honored Reputation with the Thorium Brotherhood Faction", map = 1427, x = 38.8, y = 28.51 },
				},
			},
			{
				note = "In the Grim Guzzler (bar area) inside Blackrock Depths. Complete the repeatable quest he offers that you have the items for.",
				goals = {
					{ t = "talk", npc = 12944, npcName = "Lokhtos Darkbargainer" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/h-wintersaber-trainers",
		pack = "guides",
		title = "Wintersaber Trainers",
		category = "Reputation",
		folder = "Reputations",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1452,
		version = 1,
		steps = {
			{
				label = "Accept_Frostsaber_Provisions",
				note = "On top of the huge rock. You will complete this quest repeatedly until you reach 1500/300 Neutral reputation.",
				goals = {
					{ t = "accept", quest = 4970, title = "Frostsaber Provisions", npc = 10618, npcName = "Rivern Frostwind", map = 1452, x = 49.94, y = 9.84, f = "e" },
				},
			},
			{
				note = "They look like bears. You can find them all around this area. We recommend being solo, since the item isn't shared amongst party members.",
				goals = {
					{ t = "collect", quest = 4970, item = 12622, itemName = "Shardtooth Meat", count = 5, oi = 1, map = 1452, x = 58.0, y = 19.0, f = "e" },
				},
			},
			{
				label = "Collect_Chillwind_Meat",
				along = true,
				note = "They look like chimeras. You can find them all around this area. notinsticky We recommend being solo, since the item isn't shared amongst party members. notinsticky",
				goals = {
					{ t = "collect", quest = 4970, item = 12623, itemName = "Chillwind Meat", count = 5, oi = 2, map = 1452, x = 58.0, y = 19.0, f = "e" },
				},
			},
			{
				note = "On top of the huge rock.",
				goals = {
					{ t = "turnin", quest = 4970, title = "Frostsaber Provisions", npc = 10618, npcName = "Rivern Frostwind", map = 1452, x = 49.94, y = 9.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8464, title = "Winterfall Activity", npc = 11556, npcName = "Salfa", map = 1452, x = 27.74, y = 34.5, f = "e" },
				},
			},
			{
				note = "They share spawn points with the other Winterfall enemies. Kill the other types also, to get more to spawn.",
				goals = {
					{ t = "kill", quest = 8464, npc = 7441, target = "Winterfall Totemic", count = 8, oi = 1, map = 1452, x = 67.03, y = 35.57, f = "e" },
				},
			},
			{
				label = "Kill_Winterfall_Den_Watchers",
				along = true,
				note = "They share spawn points with the other Winterfall enemies. notinsticky Kill the other types also, to get more to spawn. notinsticky",
				goals = {
					{ t = "kill", quest = 8464, npc = 7442, target = "Winterfall Pathfinder", count = 8, oi = 2, map = 1452, x = 67.03, y = 35.57, f = "e" },
				},
			},
			{
				label = "Kill_Winterfall_Ursas",
				along = true,
				note = "They share spawn points with the other Winterfall enemies. notinsticky Kill the other types also, to get more to spawn. notinsticky",
				goals = {
					{ t = "kill", quest = 8464, npc = 7440, target = "Winterfall Den Watcher", count = 8, oi = 3, map = 1452, x = 67.03, y = 35.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8464, title = "Winterfall Activity", npc = 11556, npcName = "Salfa", map = 1452, x = 27.74, y = 34.5, f = "e" },
				},
			},
			{
				label = "Accept_Winterfall_Intrusion_Or_Rampaging_Giants",
				note = "On top of the huge rock. Choose the quest you want to complete. This is the best repeatable quest to do until Exalted. It's fast, can be done in a group, makes a lot of gold, and gets Timbermaw Hold reputation at the same time. Save any Winterfall Prayer Beads you find, to turn in later for Timbermaw Hold reputation. If Winterfell Village has too many players trying to kill the same enemies, it may be better to accept this quest. This quest is slower and less efficient, and should only be done as a backup. The giants are elite and you may need a group.",
				goals = {
					{ t = "accept", quest = 5201, title = "Winterfall Intrusion", npc = 10618, npcName = "Rivern Frostwind", map = 1452, x = 49.94, y = 9.84, f = "e" },
					{ t = "accept", quest = 5981, title = "Rampaging Giants", npc = 10618, npcName = "Rivern Frostwind", map = 1452, x = 49.94, y = 9.84, f = "e" },
				},
			},
			{
				label = "Winterfall_Intrusion",
				note = "They share spawn points with the other Winterfall enemies. Kill the other types also, to get more to spawn.",
				goals = {
					{ t = "kill", quest = 5201, npc = 7441, target = "Winterfall Totemic", count = 8, oi = 1, map = 1452, x = 30.1, y = 36.4, f = "e" },
				},
			},
			{
				label = "Kill_Winterfall_Ursa_5201",
				along = true,
				note = "They share spawn points with the other Winterfall enemies. notinsticky Kill the other types also, to get more to spawn. notinsticky",
				goals = {
					{ t = "kill", quest = 5201, npc = 7440, target = "Winterfall Den Watcher", count = 8, oi = 2, map = 1452, x = 66.5, y = 34.9, f = "e" },
				},
			},
			{
				label = "Rampaging_Giants",
				note = "They look like rock giants. They can spawn above and inside the canyon.",
				goals = {
					{ t = "kill", quest = 5981, npc = 7428, target = "Frostmaul Giant", count = 4, oi = 1, map = 1452, x = 62.19, y = 68.75, f = "e" },
				},
			},
			{
				label = "Kill_Frostmaul_Preservers",
				along = true,
				note = "They look like rock giants. notinsticky They can spawn above and inside the canyon. notinsticky",
				goals = {
					{ t = "kill", quest = 5981, npc = 7429, target = "Frostmaul Preserver", count = 4, oi = 2, map = 1452, x = 62.19, y = 68.75, f = "e" },
				},
			},
			{
				label = "Turnin_Quests",
				note = "On top of the huge rock.",
				goals = {
					{ t = "turnin", quest = 5201, title = "Winterfall Intrusion", npc = 10618, npcName = "Rivern Frostwind", map = 1452, x = 49.94, y = 9.84, f = "e" },
					{ t = "turnin", quest = 5981, title = "Rampaging Giants", npc = 10618, npcName = "Rivern Frostwind", map = 1452, x = 49.94, y = 9.84, f = "e" },
				},
			},
			{
				label = "Exalted",
				note = "On top of the huge rock.",
				goals = {
					{ t = "buy", item = 13086, itemName = "Reins of the Winterspring Frostsaber", map = 1452, x = 49.94, y = 9.84, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/h-darkspear-trolls",
		pack = "guides",
		title = "Darkspear Trolls",
		category = "Reputation",
		folder = "Reputations",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "Farm the following cloth, or purchase them from the Auction House. You need to complete the initial cloth quests to unlock the repeatable Runecloth quest.",
				goals = {
					{ t = "collect", quest = 7833, item = 2592, itemName = "Wool Cloth", count = 60 },
					{ t = "collect", quest = 7834, item = 4306, itemName = "Silk Cloth", count = 60 },
					{ t = "collect", quest = 7835, item = 4338, itemName = "Mageweave Cloth", count = 60 },
					{ t = "collect", quest = 7836, item = 14047, itemName = "Runecloth", count = 60 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7833, title = "A Donation of Wool", npc = 14727, npcName = "Vehena", map = 1454, x = 37.7, y = 87.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7834, title = "A Donation of Silk", npc = 14727, npcName = "Vehena", map = 1454, x = 37.7, y = 87.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7835, title = "A Donation of Mageweave", npc = 14727, npcName = "Vehena", map = 1454, x = 37.7, y = 87.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7836, title = "A Donation of Runecloth", npc = 14727, npcName = "Vehena", map = 1454, x = 37.7, y = 87.9, f = "e" },
				},
			},
			{
				note = "Inside the building. Repeatedly complete the Additional Runecloth quest.",
				goals = {
					{ t = "goto", text = "Reach Exalted Reputation with the Darkspear Trolls Faction", map = 1454, x = 37.7, y = 87.9 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/h-orgrimmar",
		pack = "guides",
		title = "Orgrimmar",
		category = "Reputation",
		folder = "Reputations",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "Farm the following cloth, or purchase them from the Auction House. You need to complete the initial cloth quests to unlock the repeatable Runecloth quest.",
				goals = {
					{ t = "collect", quest = 7826, item = 2592, itemName = "Wool Cloth", count = 60 },
					{ t = "collect", quest = 7827, item = 4306, itemName = "Silk Cloth", count = 60 },
					{ t = "collect", quest = 7831, item = 4338, itemName = "Mageweave Cloth", count = 60 },
					{ t = "collect", quest = 7824, item = 14047, itemName = "Runecloth", count = 60 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7826, title = "A Donation of Wool", npc = 14726, npcName = "Rashona Straglash", map = 1454, x = 63.6, y = 51.23, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7827, title = "A Donation of Silk", npc = 14726, npcName = "Rashona Straglash", map = 1454, x = 63.6, y = 51.23, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7831, title = "A Donation of Mageweave", npc = 14726, npcName = "Rashona Straglash", map = 1454, x = 63.6, y = 51.23, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7824, title = "A Donation of Runecloth", npc = 14726, npcName = "Rashona Straglash", map = 1454, x = 63.6, y = 51.23, f = "e" },
				},
			},
			{
				note = "Inside the building. Repeatedly complete the Additional Runecloth quest.",
				goals = {
					{ t = "goto", text = "Reach Exalted Reputation with the Orgrimmar Faction", map = 1454, x = 63.6, y = 51.23 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/h-thunder-bluff",
		pack = "guides",
		title = "Thunder Bluff",
		category = "Reputation",
		folder = "Reputations",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1456,
		version = 1,
		steps = {
			{
				note = "Farm the following cloth, or purchase them from the Auction House. You need to complete the initial cloth quests to unlock the repeatable Runecloth quest.",
				goals = {
					{ t = "collect", quest = 7820, item = 2592, itemName = "Wool Cloth", count = 60 },
					{ t = "collect", quest = 7821, item = 4306, itemName = "Silk Cloth", count = 60 },
					{ t = "collect", quest = 7822, item = 4338, itemName = "Mageweave Cloth", count = 60 },
					{ t = "collect", quest = 7823, item = 14047, itemName = "Runecloth", count = 60 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7820, title = "A Donation of Wool", npc = 14728, npcName = "Rumstag Proudstrider", map = 1456, x = 43.05, y = 42.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7821, title = "A Donation of Silk", npc = 14728, npcName = "Rumstag Proudstrider", map = 1456, x = 43.05, y = 42.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7822, title = "A Donation of Mageweave", npc = 14728, npcName = "Rumstag Proudstrider", map = 1456, x = 43.05, y = 42.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7823, title = "A Donation of Runecloth", npc = 14728, npcName = "Rumstag Proudstrider", map = 1456, x = 43.05, y = 42.72, f = "e" },
				},
			},
			{
				note = "Inside the building. Repeatedly complete the Additional Runecloth quest.",
				goals = {
					{ t = "goto", text = "Reach Exalted Reputation with the Thunder Bluff Faction", map = 1456, x = 43.05, y = 42.72 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/h-undercity",
		pack = "guides",
		title = "Undercity",
		category = "Reputation",
		folder = "Reputations",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1458,
		version = 1,
		steps = {
			{
				note = "Farm the following cloth, or purchase them from the Auction House. You need to complete the initial cloth quests to unlock the repeatable Runecloth quest.",
				goals = {
					{ t = "collect", quest = 7813, item = 2592, itemName = "Wool Cloth", count = 60 },
					{ t = "collect", quest = 7814, item = 4306, itemName = "Silk Cloth", count = 60 },
					{ t = "collect", quest = 7817, item = 4338, itemName = "Mageweave Cloth", count = 60 },
					{ t = "collect", quest = 7818, item = 14047, itemName = "Runecloth", count = 60 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7813, title = "A Donation of Wool", npc = 14729, npcName = "Ralston Farnsley", map = 1458, x = 71.66, y = 29.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7814, title = "A Donation of Silk", npc = 14729, npcName = "Ralston Farnsley", map = 1458, x = 71.66, y = 29.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7817, title = "A Donation of Mageweave", npc = 14729, npcName = "Ralston Farnsley", map = 1458, x = 71.66, y = 29.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7818, title = "A Donation of Runecloth", npc = 14729, npcName = "Ralston Farnsley", map = 1458, x = 71.66, y = 29.23, f = "e" },
				},
			},
			{
				note = "Repeatedly complete the Additional Runecloth quest.",
				goals = {
					{ t = "goto", text = "Reach Exalted Reputation with the Undercity Faction", map = 1458, x = 71.66, y = 29.23 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/h-argent-dawn",
		pack = "guides",
		title = "Argent Dawn",
		category = "Reputation",
		folder = "Reputations",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1420,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 5503, title = "Argent Dawn Commission", npc = 10839, npcName = "Argent Officer Garush", map = 1420, x = 83.19, y = 68.45, f = "e" },
				},
			},
			{
				note = "You need 20 Minion's Scourgestones per turn in. You need 10 Invader's Scourgestones per turn in. Save any Scourgestones you collect for later. Enemies at the above coordinates tend to be around level 52-54. Enemies at the above coordinates tend to be around level 54-56. Enemies at the above coordinates tend to be around level 56-58.",
				goals = {
					{ t = "collect", item = 12840, itemName = "Minion's Scourgestone" },
					{ t = "collect", item = 12841, itemName = "Invader's Scourgestone" },
					{ t = "goto", text = "Reach Friendly Reputation with the Argent Dawn", map = 1422, x = 36.97, y = 57.26 },
				},
			},
			{
				note = "You need 20 Minion's Scourgestones per turn in. You need 10 Invader's Scourgestones per turn in. Save any Scourgestones you collect for later. Normal enemies stop giving reputation at this point. Enemies at the above coordinates tend to be around level 52-54. Enemies at the above coordinates tend to be around level 54-56. Enemies at the above coordinates tend to be around level 56-58.",
				goals = {
					{ t = "collect", item = 12840, itemName = "Minion's Scourgestone" },
					{ t = "collect", item = 12841, itemName = "Invader's Scourgestone" },
					{ t = "goto", text = "Reach 3,000 Reputation into Friendly with the Argent Dawn", map = 1422, x = 36.97, y = 57.26 },
				},
			},
			{
				label = "Honor_Loop_Pre_11999",
				note = "You need 20 Minion's Scourgestones per turn in. You need 10 Invader's Scourgestones per turn in. Enemies at the above coordinates tend to be around level 52-54. Enemies at the above coordinates tend to be around level 54-56. Enemies at the above coordinates tend to be around level 56-58. If you have a group ready, you can also kill Elite Undead Enemies in the dungeons Scholomance and Stratholme for reputation.",
				goals = {
					{ t = "collect", item = 12840, itemName = "Minion's Scourgestone" },
					{ t = "collect", item = 12841, itemName = "Invader's Scourgestone" },
					{ t = "goto", text = "Reach Honored Reputation with the Argent Dawn", map = 1422, x = 36.97, y = 57.26 },
				},
			},
			{
				note = "Turn in all Scourgestone quests you can. You'll get 25 rep per token.",
				goals = {
					{ t = "collect", item = 12844, itemName = "Argent Dawn Valor Token", map = 1420, x = 83.2, y = 68.5, f = "e" },
					{ t = "use", item = 12844, itemName = "Argent Dawn Valor Token" },
					{ t = "goto", text = "Reach Honored Reputation with the Argent Dawn", map = 1420, x = 83.19, y = 68.45 },
				},
			},
			{
				label = "Revered_Loop",
				note = "You need 20 Minion's Scourgestones per turn in. You need 10 Invader's Scourgestones per turn in. Elite enemies stop giving reputation at this point. Enemies at the above coordinates tend to be around level 52-54. Enemies at the above coordinates tend to be around level 54-56. Enemies at the above coordinates tend to be around level 56-58. If you have a group ready, you can also kill Elite Undead Enemies in the dungeons Scholomance and Stratholme for reputation.",
				goals = {
					{ t = "collect", item = 12840, itemName = "Minion's Scourgestone" },
					{ t = "collect", item = 12841, itemName = "Invader's Scourgestone" },
					{ t = "goto", text = "Reach 11,999 Reputation into Honored with the Argent Dawn", map = 1422, x = 36.97, y = 57.26 },
				},
			},
			{
				note = "Turn in all Scourgestone quests you can. You'll get 25 rep per token.",
				goals = {
					{ t = "collect", item = 12844, itemName = "Argent Dawn Valor Token", map = 1420, x = 83.2, y = 68.5, f = "e" },
					{ t = "use", item = 12844, itemName = "Argent Dawn Valor Token" },
					{ t = "goto", text = "Reach Revered Reputation with the Argent Dawn", map = 1420, x = 83.19, y = 68.45 },
				},
			},
			{
				label = "Exalted_Loop",
				note = "You need 20 Minion's Scourgestones per turn in. You need 10 Invader's Scourgestones per turn in. Elite enemies stop giving reputation at this point. Enemies at the above coordinates tend to be around level 52-54. Enemies at the above coordinates tend to be around level 54-56. Enemies at the above coordinates tend to be around level 56-58. If you have a group ready, enter Scholomance and Stratholme for Corrupted Scourgestones.",
				goals = {
					{ t = "collect", item = 12840, itemName = "Minion's Scourgestone" },
					{ t = "collect", item = 12841, itemName = "Invader's Scourgestone" },
					{ t = "goto", text = "Reach 11,999 Reputation into Honored with the Argent Dawn", map = 1422, x = 36.97, y = 57.26 },
				},
			},
			{
				note = "Turn in all Scourgestone quests you can. You'll get 25 rep per token.",
				goals = {
					{ t = "collect", item = 12844, itemName = "Argent Dawn Valor Token", map = 1420, x = 83.2, y = 68.5, f = "e" },
					{ t = "use", item = 12844, itemName = "Argent Dawn Valor Token" },
					{ t = "goto", text = "Reach Exalted Reputation with the Argent Dawn", map = 1420, x = 83.19, y = 68.45 },
				},
			},
		},
	})
end

