-- TuWoW_Leveling — Guides/Reputation_01.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/a-bloodsail-buccaneers",
		pack = "guides",
		title = "Bloodsail Buccaneers",
		category = "Reputation",
		folder = "Reputations",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1434,
		version = 1,
		steps = {
			{
				note = "This is the safest location to grind if you are solo. There are 4 patrolling guards that you can kill one at a time. If you kill the patrolling guards quickly, go inside the Blacksmithing Houses and attack civilians to spawn more guards. To get the Admiral's Hat, you must be Hated with Booty Bay. You can't keep both reputations Friendly at the same time.",
				goals = {
					{ t = "goto", text = "Reach Hated Reputation with Booty Bay", map = 1434, x = 28.77, y = 74.7 },
					{ t = "goto", text = "Reach Friendly Reputation with the Bloodsail Buccaneers Faction", map = 1434, x = 28.77, y = 74.7 },
				},
			},
			{
				note = "He gets killed for a quest. If he's not here, wait for him to respawn.",
				goals = {
					{ t = "accept", quest = 1036, title = "Avast Ye, Scallywag", npc = 2545, npcName = "\"Pretty Boy\" Duncan", map = 1434, x = 27.6, y = 69.6, f = "e" },
				},
			},
			{
				note = "Inside the ship, on the middle floor. You must be Hated with Booty Bay.",
				goals = {
					{ t = "accept", quest = 9272, title = "Dressing the Part", npc = 2546, npcName = "Fleet Master Firallon", map = 1434, x = 30.6, y = 90.6, f = "e" },
					{ t = "turnin", quest = 1036, title = "Avast Ye, Scallywag", npc = 2546, npcName = "Fleet Master Firallon", map = 1434, x = 30.6, y = 90.6, f = "e" },
					{ t = "accept", quest = 4621, title = "Avast Ye, Admiral!", npc = 2546, npcName = "Fleet Master Firallon", map = 1434, x = 30.6, y = 90.6, f = "e" },
				},
			},
			{
				note = "On the top floor of the building, outside on the balcony.",
				goals = {
					{ t = "kill", quest = 4621, npc = 2496, target = "Baron Revilgaz", oi = 1, map = 1434, x = 27.12, y = 76.97, f = "e" },
					{ t = "kill", quest = 4621, npc = 2487, target = "Fleet Master Seahorn", oi = 2, map = 1434, x = 27.12, y = 76.97, f = "e" },
				},
			},
			{
				note = "Inside the ship, on the middle floor.",
				goals = {
					{ t = "turnin", quest = 4621, title = "Avast Ye, Admiral!", npc = 2546, npcName = "Fleet Master Firallon", map = 1434, x = 30.6, y = 90.6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/a-brood-of-nozdormu",
		pack = "guides",
		title = "Brood of Nozdormu",
		category = "Reputation",
		folder = "Reputations",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "You will collect items that can be turned in for Brood of Nozdormu reputation. Don't turn them in until you reach at least 2999/3000 Neutral reputation. Killing enemies in the raid gives reputation until that point, so it's best to save the items until later. Any enemies can drop these. Bosses drop these.",
				goals = {
					{ t = "collect", item = 21230, itemName = "Ancient Qiraji Artifact" },
					{ t = "collect", item = 21229, itemName = "Qiraji Lord's Insignia" },
				},
			},
			{
				note = "Accept the Secrets of the Qiraji quest. Turn in the repeatable quest. Repeat this process until you have no more Ancient Qiraji Artifacts.",
				goals = {
					{ t = "use", item = 21230, itemName = "Ancient Qiraji Artifact" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8579, title = "Mortal Champions", npc = 15503, npcName = "Kandrostrasz" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8579, title = "Mortal Champions", npc = 15503, npcName = "Kandrostrasz" },
				},
			},
			{
				label = "Collect_Rep_items",
				note = "You will collect items that can be turned in for Brood of Nozdormu reputation. Any enemies can drop these. Bosses drop these.",
				goals = {
					{ t = "collect", item = 21230, itemName = "Ancient Qiraji Artifact" },
					{ t = "collect", item = 21229, itemName = "Qiraji Lord's Insignia" },
				},
			},
			{
				note = "Accept the Secrets of the Qiraji quest. Turn in the repeatable quest. Repeat this process until you have no more Ancient Qiraji Artifacts.",
				goals = {
					{ t = "use", item = 21230, itemName = "Ancient Qiraji Artifact" },
				},
			},
			{
				note = "Accept and turn in the Mortal Champions quest. This is a repeatable quest. You must have a Qiraji Lord's Insignia item to be able to complete this quest.",
				goals = {
					{ t = "talk", npc = 15503, npcName = "Kandrostrasz" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/a-cenarion-circle",
		pack = "guides",
		title = "Cenarion Circle",
		category = "Reputation",
		folder = "Reputations",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1451,
		version = 1,
		steps = {
			{
				note = "Group up with nearby players, if you can, to make the grind easier. Save any of these you find, you will turn them in later.",
				goals = {
					{ t = "collect", item = 20404, itemName = "Encrypted Twilight Text" },
					{ t = "goto", text = "Reach Honored Reputation with the Cenarion Circle Faction", map = 1451, x = 66.6, y = 17.8 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8318, title = "Secret Communication", npc = 15306, npcName = "Bor Wildmane", map = 1451, x = 48.57, y = 37.78, f = "e" },
				},
			},
			{
				note = "Group up with nearby players, if you can, to make the grind easier.",
				goals = {
					{ t = "collect", quest = 8318, item = 20404, itemName = "Encrypted Twilight Text", count = 10, oi = 1, map = 1451, x = 66.6, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8318, title = "Secret Communication", npc = 15306, npcName = "Bor Wildmane", map = 1451, x = 48.57, y = 37.78, f = "e" },
				},
			},
			{
				note = "Group up with nearby players, if you can, to make the grind easier. You can turn in stacks of 10 for reputation. Each stack of 10 is worth 110 reputation until Exalted. You can buy these from the Auction House, if you have gold and want to save time. He offers an Encrypted Twilight Texts quest that is repeatable.",
				goals = {
					{ t = "collect", item = 20404, itemName = "Encrypted Twilight Text" },
					{ t = "goto", text = "Reach Exalted Reputation with the Cenarion Circle Faction", map = 1451, x = 66.6, y = 17.8 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/a-gelkis-and-magram-centaur-clans",
		pack = "guides",
		title = "Gelkis & Magram Centaur Clans",
		category = "Reputation",
		folder = "Reputations",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1443,
		version = 1,
		steps = {
			{
				label = "Gelkis",
				note = "They look like centaurs.",
				goals = {
					{ t = "goto", text = "Reach 11999/20000 Honored Reputation with the Glekis Clan Centaur Faction", map = 1443, x = 70.9, y = 75.3 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1382, title = "Strange Alliance", npc = 5396, npcName = "Captain Pentigast", map = 1443, x = 66.66, y = 10.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1368, title = "Gelkis Alliance", npc = 5412, npcName = "Gurda Wildmane", map = 1443, x = 56.29, y = 59.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1382, title = "Strange Alliance", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.23, y = 79.25, f = "e" },
					{ t = "turnin", quest = 1368, title = "Gelkis Alliance", npc = 5397, npcName = "Uthek the Wise", map = 1443, x = 36.23, y = 79.25, f = "e" },
				},
			},
			{
				label = "Magram",
				note = "They look like centaurs.",
				goals = {
					{ t = "goto", text = "Reach 11999/20000 Honored Reputation with the Magram Clan Centaur Faction", map = 1443, x = 37.4, y = 85.3 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1385, title = "Brutal Politics", npc = 5396, npcName = "Captain Pentigast", map = 1443, x = 66.66, y = 10.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1367, title = "Magram Alliance", npc = 5412, npcName = "Gurda Wildmane", map = 1443, x = 56.29, y = 59.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1385, title = "Brutal Politics", npc = 5398, npcName = "Warug", map = 1443, x = 74.97, y = 68.16, f = "e" },
					{ t = "turnin", quest = 1367, title = "Magram Alliance", npc = 5398, npcName = "Warug", map = 1443, x = 74.97, y = 68.16, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/a-ravenholdt",
		pack = "guides",
		title = "Ravenholdt",
		category = "Reputation",
		folder = "Reputations",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1417,
		version = 1,
		steps = {
			{
				note = "They look like humans.",
				goals = {
					{ t = "goto", text = "Reach 11,999/12,000 Honored Reputation with the Ravenholdt Faction", map = 1417, x = 27.1, y = 30.6 },
				},
			},
			{
				note = "Find a Rogue to pickpocket enemies inside the Blackrock Spire dungeon. The Rogue can give you the Heavy Junkboxes they pickpocket. You can also try to purchase Heavy Junkboxes in major city Trade Chat, paying either by mail or in person. The Heavy Junkboxes need at least 1 item left in them to count. Every 5 junkboxes you turn in, you get 75 repututation. This step will complete when you have enough.",
				goals = {
					{ t = "collect", item = 16885, itemName = "Heavy Junkbox" },
				},
			},
			{
				note = "Upstairs in the building, outside on the balcony. Complete the Junkboxes Needed quest repeatedly.",
				goals = {
					{ t = "goto", text = "Reach Exalted Reputation with the Ravenholdt Faction", map = 1416, x = 84.45, y = 80.32 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/a-steamwheedle-cartel",
		pack = "guides",
		title = "Steamwheedle Cartel",
		category = "Reputation",
		folder = "Reputations",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1444,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 7003, title = "Zapped Giants", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.81, y = 43.42, f = "e" },
				},
			},
			{
				note = "Use it on Wave Striders. They look like tall green giants that walk on the shore and in the water. This quest item only lasts for 2 hours. If you need a new one, abandon the quest and accept it again from the goblin in the previous guide step. The water elementals nearby are immune to frost damage.",
				goals = {
					{ t = "use", item = 18904, itemName = "Zorbin's Ultra-Shrinker" },
					{ t = "collect", quest = 7003, item = 18956, itemName = "Miniaturization Residue", count = 15, oi = 1, map = 1444, x = 44.38, y = 50.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7003, title = "Zapped Giants", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.81, y = 43.42, f = "e" },
				},
			},
			{
				label = "Again_With_The_Zapped_Giants",
				goals = {
					{ t = "accept", quest = 7725, title = "Again With the Zapped Giants", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.81, y = 43.42, f = "e" },
				},
			},
			{
				note = "Use it on Wave Striders. They look like tall green giants that walk on the shore and in the water. This quest item only lasts for 2 hours. If you need a new one, abandon the quest and accept it again from the goblin in the previous guide step. The water elementals nearby are immune to frost damage.",
				goals = {
					{ t = "use", item = 18904, itemName = "Zorbin's Ultra-Shrinker" },
					{ t = "collect", quest = 7725, item = 18956, itemName = "Miniaturization Residue", count = 10, oi = 1, map = 1444, x = 44.38, y = 50.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7725, title = "Again With the Zapped Giants", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.81, y = 43.42, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/a-timbermaw-hold",
		pack = "guides",
		title = "Timbermaw Hold",
		category = "Reputation",
		folder = "Reputations",
		faction = "Alliance",
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
		id = "zygor/reputation/a-thorium-brotherhood",
		pack = "guides",
		title = "Thorium Brotherhood",
		category = "Reputation",
		folder = "Reputations",
		faction = "Alliance",
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
		id = "zygor/reputation/a-wintersaber-trainers",
		pack = "guides",
		title = "Wintersaber Trainers",
		category = "Reputation",
		folder = "Reputations",
		faction = "Alliance",
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

