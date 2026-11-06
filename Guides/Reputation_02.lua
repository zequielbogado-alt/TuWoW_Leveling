-- TuWoW_Leveling — Guides/Reputation_02.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/a-darnassus",
		pack = "guides",
		title = "Darnassus",
		category = "Reputation",
		folder = "Reputations",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1457,
		version = 1,
		steps = {
			{
				note = "Farm the following cloth, or purchase them from the Auction House. You need to complete the initial cloth quests to unlock the repeatable Runecloth quest.",
				goals = {
					{ t = "collect", quest = 7792, item = 2592, itemName = "Wool Cloth", count = 60 },
					{ t = "collect", quest = 7798, item = 4306, itemName = "Silk Cloth", count = 60 },
					{ t = "collect", quest = 7799, item = 4338, itemName = "Mageweave Cloth", count = 60 },
					{ t = "collect", quest = 7800, item = 14047, itemName = "Runecloth", count = 60 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7792, title = "A Donation of Wool", npc = 14725, npcName = "Raedon Duskstriker", map = 1457, x = 64.02, y = 23.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7798, title = "A Donation of Silk", npc = 14725, npcName = "Raedon Duskstriker", map = 1457, x = 64.02, y = 23.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7799, title = "A Donation of Mageweave", npc = 14725, npcName = "Raedon Duskstriker", map = 1457, x = 64.02, y = 23.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7800, title = "A Donation of Runecloth", npc = 14725, npcName = "Raedon Duskstriker", map = 1457, x = 64.02, y = 23.0, f = "e" },
				},
			},
			{
				note = "Inside the building. Repeatedly complete the Additional Runecloth quest.",
				goals = {
					{ t = "goto", text = "Reach Exalted Reputation with the Darnassus Faction", map = 1457, x = 64.02, y = 23.0 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/a-gnomeregan-exiles",
		pack = "guides",
		title = "Gnomeregan Exiles",
		category = "Reputation",
		folder = "Reputations",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1455,
		version = 1,
		steps = {
			{
				note = "Farm the following cloth, or purchase them from the Auction House. You need to complete the initial cloth quests to unlock the repeatable Runecloth quest.",
				goals = {
					{ t = "collect", quest = 7807, item = 2592, itemName = "Wool Cloth", count = 60 },
					{ t = "collect", quest = 7808, item = 4306, itemName = "Silk Cloth", count = 60 },
					{ t = "collect", quest = 7809, item = 4338, itemName = "Mageweave Cloth", count = 60 },
					{ t = "collect", quest = 7811, item = 14047, itemName = "Runecloth", count = 60 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7807, title = "A Donation of Wool", npc = 14724, npcName = "Bubulo Acerbus", map = 1455, x = 74.09, y = 48.22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7808, title = "A Donation of Silk", npc = 14724, npcName = "Bubulo Acerbus", map = 1455, x = 74.09, y = 48.22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7809, title = "A Donation of Mageweave", npc = 14724, npcName = "Bubulo Acerbus", map = 1455, x = 74.09, y = 48.22, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7811, title = "A Donation of Runecloth", npc = 14724, npcName = "Bubulo Acerbus", map = 1455, x = 74.09, y = 48.22, f = "e" },
				},
			},
			{
				note = "Repeatedly complete the Additional Runecloth quest.",
				goals = {
					{ t = "goto", text = "Reach Exalted Reputation with the Gnomeregan Exiles Faction", map = 1455, x = 74.09, y = 48.22 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/a-ironforge",
		pack = "guides",
		title = "Ironforge",
		category = "Reputation",
		folder = "Reputations",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1455,
		version = 1,
		steps = {
			{
				note = "Farm the following cloth, or purchase them from the Auction House. You need to complete the initial cloth quests to unlock the repeatable Runecloth quest.",
				goals = {
					{ t = "collect", quest = 7802, item = 2592, itemName = "Wool Cloth", count = 60 },
					{ t = "collect", quest = 7803, item = 4306, itemName = "Silk Cloth", count = 60 },
					{ t = "collect", quest = 7804, item = 4338, itemName = "Mageweave Cloth", count = 60 },
					{ t = "collect", quest = 7805, item = 14047, itemName = "Runecloth", count = 60 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7802, title = "A Donation of Wool", npc = 14723, npcName = "Mistina Steelshield", map = 1455, x = 43.22, y = 31.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7803, title = "A Donation of Silk", npc = 14723, npcName = "Mistina Steelshield", map = 1455, x = 43.22, y = 31.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7804, title = "A Donation of Mageweave", npc = 14723, npcName = "Mistina Steelshield", map = 1455, x = 43.22, y = 31.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7805, title = "A Donation of Runecloth", npc = 14723, npcName = "Mistina Steelshield", map = 1455, x = 43.22, y = 31.57, f = "e" },
				},
			},
			{
				note = "Repeatedly complete the Additional Runecloth quest.",
				goals = {
					{ t = "goto", text = "Reach Exalted Reputation with the Ironforge Faction", map = 1455, x = 43.22, y = 31.57 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/a-stormwind-city",
		pack = "guides",
		title = "Stormwind City",
		category = "Reputation",
		folder = "Reputations",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Farm the following cloth, or purchase them from the Auction House. You need to complete the initial cloth quests to unlock the repeatable Runecloth quest.",
				goals = {
					{ t = "collect", quest = 7791, item = 2592, itemName = "Wool Cloth", count = 60 },
					{ t = "collect", quest = 7793, item = 4306, itemName = "Silk Cloth", count = 60 },
					{ t = "collect", quest = 7794, item = 4338, itemName = "Mageweave Cloth", count = 60 },
					{ t = "collect", quest = 7795, item = 14047, itemName = "Runecloth", count = 60 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 7791, title = "A Donation of Wool", npc = 14722, npcName = "Clavicus Knavingham", map = 1453, x = 53.93, y = 81.67, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 7793, title = "A Donation of Silk", npc = 14722, npcName = "Clavicus Knavingham", map = 1453, x = 53.93, y = 81.67, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 7794, title = "A Donation of Mageweave", npc = 14722, npcName = "Clavicus Knavingham", map = 1453, x = 53.93, y = 81.67, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "accept", quest = 7795, title = "A Donation of Runecloth", npc = 14722, npcName = "Clavicus Knavingham", map = 1453, x = 53.93, y = 81.67, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building. Repeatedly complete the Additional Runecloth quest.",
				goals = {
					{ t = "goto", text = "Reach Exalted Reputation with the Stormwind City Faction", map = 1453, x = 53.93, y = 81.67 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/a-argent-dawn",
		pack = "guides",
		title = "Argent Dawn",
		category = "Reputation",
		folder = "Reputations",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1422,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 5401, title = "Argent Dawn Commission", npc = 10840, npcName = "Argent Officer Pureheart", map = 1422, x = 42.97, y = 83.55, f = "e" },
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
					{ t = "collect", item = 12844, itemName = "Argent Dawn Valor Token", map = 1422, x = 43.0, y = 83.6, f = "e" },
					{ t = "use", item = 12844, itemName = "Argent Dawn Valor Token" },
					{ t = "goto", text = "Reach Honored Reputation with the Argent Dawn", map = 1422, x = 42.97, y = 83.55 },
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
					{ t = "collect", item = 12844, itemName = "Argent Dawn Valor Token", map = 1422, x = 43.0, y = 83.6, f = "e" },
					{ t = "use", item = 12844, itemName = "Argent Dawn Valor Token" },
					{ t = "goto", text = "Reach Revered Reputation with the Argent Dawn", map = 1422, x = 42.97, y = 83.55 },
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
					{ t = "collect", item = 12844, itemName = "Argent Dawn Valor Token", map = 1422, x = 43.0, y = 83.6, f = "e" },
					{ t = "use", item = 12844, itemName = "Argent Dawn Valor Token" },
					{ t = "goto", text = "Reach Exalted Reputation with the Argent Dawn", map = 1422, x = 42.97, y = 83.55 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/reputation/h-bloodsail-buccaneers",
		pack = "guides",
		title = "Bloodsail Buccaneers",
		category = "Reputation",
		folder = "Reputations",
		faction = "Horde",
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
		id = "zygor/reputation/h-brood-of-nozdormu",
		pack = "guides",
		title = "Brood of Nozdormu",
		category = "Reputation",
		folder = "Reputations",
		faction = "Horde",
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
		id = "zygor/reputation/h-cenarion-circle",
		pack = "guides",
		title = "Cenarion Circle",
		category = "Reputation",
		folder = "Reputations",
		faction = "Horde",
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
		id = "zygor/reputation/h-gelkis-and-magram-centaur-clans",
		pack = "guides",
		title = "Gelkis & Magram Centaur Clans",
		category = "Reputation",
		folder = "Reputations",
		faction = "Horde",
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
		id = "zygor/reputation/h-ravenholdt",
		pack = "guides",
		title = "Ravenholdt",
		category = "Reputation",
		folder = "Reputations",
		faction = "Horde",
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
		id = "zygor/reputation/h-steamwheedle-cartel",
		pack = "guides",
		title = "Steamwheedle Cartel",
		category = "Reputation",
		folder = "Reputations",
		faction = "Horde",
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

