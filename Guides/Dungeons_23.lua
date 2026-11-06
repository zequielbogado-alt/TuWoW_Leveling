-- TuWoW_Leveling — Guides/Dungeons_23.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-scarlet-monastery-cathedral-quests",
		pack = "guides",
		title = "Scarlet Monastery Cathedral Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1458,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 52.15, y = 64.37 },
					{ t = "accept", quest = 1048, title = "Into The Scarlet Monastery", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.26, y = 92.2, f = "e" },
				},
			},
			{
				note = "You will need The Scarlet Key from the chest behind Arcanist Doan in the Library to open this. A rogue with 175 Lockpicking skill can pick it and a Truesilver Key opens it too. Engineers can also blast the door open.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1420, x = 82.65, y = 32.88 },
					{ t = "goto", text = "click Cathedral Door", map = 1420, x = 85.21, y = 30.86 },
					{ t = "goto", text = "Enter the Portal", map = 1420, x = 85.32, y = 30.48 },
					{ t = "complete", quest = 1048, title = "Into The Scarlet Monastery", note = "Enter the Scarlet Monastery - Cathedral Dungeon with Your Group" },
				},
			},
			{
				note = "He is the last boss of the dungeon, found all the way at the end.",
				goals = {
					{ t = "kill", quest = 1048, npc = 3976, target = "Scarlet Commander Mograine", oi = 2 },
				},
			},
			{
				note = "She is the last boss of the dungeon, found all the way at the end.",
				goals = {
					{ t = "kill", quest = 1048, npc = 3977, target = "High Inquisitor Whitemane", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1048, title = "Into The Scarlet Monastery", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 52.15, y = 64.37 },
					{ t = "turnin", quest = 1048, title = "Into The Scarlet Monastery", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.26, y = 92.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-razorfen-downs-quests",
		pack = "guides",
		title = "Razorfen Downs Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1458,
		version = 1,
		steps = {
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 37 },
				},
			},
			{
				note = "She is the last boss of the Razorfen Kraul Dungeon. Use the Razorfen Kraul Dungeon guide to accomplish this.",
				goals = {
					{ t = "collect", item = 17008, itemName = "Small Scroll" },
					{ t = "use", item = 17008, itemName = "Small Scroll" },
					{ t = "accept", quest = 6522, title = "An Unholy Alliance", npc = 4421, npcName = "Charlga Razorflank" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 51.86, y = 64.67 },
					{ t = "turnin", quest = 6522, title = "An Unholy Alliance", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.23, y = 92.18, f = "e" },
					{ t = "accept", quest = 6521, title = "An Unholy Alliance", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.23, y = 92.18, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3341, title = "Bring the End", npc = 2308, npcName = "Andrew Brownell", map = 1458, x = 74.06, y = 33.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1413, x = 45.3, y = 89.28 },
					{ t = "goto", text = "Follow the path up", map = 1413, x = 49.1, y = 94.49 },
					{ t = "accept", quest = 6626, title = "A Host of Evil", npc = 12866, npcName = "Myriam Moonsinger", map = 1413, x = 49.01, y = 94.94, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6521, item = 17009, itemName = "Ambassador Malcin's Head", oi = 1, map = 1413, x = 48.52, y = 95.62, f = "e" },
				},
			},
			{
				label = "Kill_8_Razorfen_Battleguards",
				along = true,
				goals = {
					{ t = "kill", quest = 6626, npc = 7873, target = "Razorfen Battleguard", count = 8, oi = 1, map = 1413, x = 48.59, y = 95.47, f = "e" },
				},
			},
			{
				label = "Kill_8_Razorfen_Thronweavers",
				along = true,
				goals = {
					{ t = "kill", quest = 6626, npc = 7874, target = "Razorfen Thornweaver", count = 8, oi = 2, map = 1413, x = 48.14, y = 92.26, f = "e" },
				},
			},
			{
				label = "Kill_8_Death's_Head_Cultists",
				along = true,
				goals = {
					{ t = "kill", quest = 6626, npc = 7872, target = "Death's Head Cultist", count = 8, oi = 3, map = 1413, x = 46.68, y = 87.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1413, x = 49.1, y = 94.49 },
					{ t = "turnin", quest = 6626, title = "A Host of Evil", npc = 12866, npcName = "Myriam Moonsinger", map = 1413, x = 49.01, y = 94.94, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6521, title = "An Unholy Alliance", note = "Enter the Razorfen Downs Dungeon with Your Group" },
				},
			},
			{
				note = "It looks like a large wooden fence on the north side of The Murder Pens. Follow the path left along the north side of the dungeon to reach the Spiral of Thorns and eventually The Caller's Chamber. Continue through The Caller's Chamber to reach The Murder Pens and immediately go left. Be sure to clear each area of enemies as you go. Inside the Holding Pen.",
				goals = {
					{ t = "accept", quest = 3523, title = "Scourge of the Downs", npc = 8516, npcName = "Belnistrasz" },
				},
			},
			{
				note = "Inside the Holding Pen. This is an escort quest. Accepting this quest will automatically start the escort after a few seconds. All group members will need to accept it at the same time to avoid missing the quest.",
				goals = {
					{ t = "turnin", quest = 3523, title = "Scourge of the Downs", npc = 8516, npcName = "Belnistrasz" },
					{ t = "accept", quest = 3525, title = "Extinguishing the Idol", npc = 8516, npcName = "Belnistrasz" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3525, title = "Extinguishing the Idol", note = "Escort Belnistrasz to the Quilboar's Idol" },
				},
			},
			{
				note = "It will be in the room where he was channeling.",
				goals = {
					{ t = "turnin", quest = 3525, title = "Extinguishing the Idol", npc = 8516, npcName = "Belnistrasz" },
				},
			},
			{
				note = "He is the last boss of the dungeon. Follow the left path out of the Belnistrasz escort room, then go right in the Spiral of Thorns and jump down. From here, go west and follow the path as it wraps up and around, eventually reaching Amnennar at the top.",
				goals = {
					{ t = "collect", quest = 3341, item = 10420, itemName = "Skull of the Coldbringer", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 6521, title = "An Unholy Alliance", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3341, title = "Bring the End", npc = 2308, npcName = "Andrew Brownell", map = 1458, x = 74.06, y = 33.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1458, x = 51.86, y = 64.67 },
					{ t = "turnin", quest = 6521, title = "An Unholy Alliance", npc = 2425, npcName = "Varimathras", map = 1458, x = 56.23, y = 92.18, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-uldaman-quests",
		pack = "guides",
		title = "Uldaman Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1458,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 37 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2342, title = "Reclaimed Treasures", npc = 5651, npcName = "Patrick Garrett", map = 1458, x = 62.32, y = 48.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2418, title = "Power Stones", npc = 2817, npcName = "Rigglefuzz", map = 1418, x = 42.38, y = 52.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 709, title = "Solution to Doom", npc = 2785, npcName = "Theldurin the Lost", map = 1418, x = 51.39, y = 76.86, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1418, x = 3.83, y = 46.98 },
					{ t = "accept", quest = 2258, title = "Badlands Reagent Run", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.43, y = 46.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1418, x = 9.18, y = 43.23 },
					{ t = "collect", quest = 2258, item = 7848, itemName = "Rock Elemental Shard", count = 5, oi = 3, map = 1418, x = 19.46, y = 43.02, f = "e" },
				},
			},
			{
				label = "Collect_Buzzard_Gizzards",
				along = true,
				goals = {
					{ t = "collect", quest = 2258, item = 7847, itemName = "Buzzard Gizzard", count = 5, oi = 1, map = 1418, x = 16.82, y = 59.84, f = "e" },
				},
			},
			{
				label = "Collect_Crag_Coyote_Fangs",
				along = true,
				goals = {
					{ t = "collect", quest = 2258, item = 7846, itemName = "Crag Coyote Fang", count = 10, oi = 2, map = 1418, x = 23.75, y = 55.12, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1418, x = 3.83, y = 46.98 },
					{ t = "turnin", quest = 2258, title = "Badlands Reagent Run", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.43, y = 46.08, f = "e" },
					{ t = "accept", quest = 2202, title = "Uldaman Reagent Run", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.43, y = 46.08, f = "e" },
				},
			},
			{
				note = "You may need help with this. You can find more inside the cave.",
				goals = {
					{ t = "collect", quest = 2283, item = 7666, itemName = "Shattered Necklace", map = 1418, x = 45.1, y = 12.01, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2283, title = "Necklace Recovery", npc = 6986, npcName = "Dran Droffers", map = 1454, x = 59.48, y = 36.59, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2283, title = "Necklace Recovery", npc = 6986, npcName = "Dran Droffers", map = 1454, x = 59.48, y = 36.59, f = "e" },
					{ t = "accept", quest = 2284, title = "Necklace Recovery, Take 2", npc = 6986, npcName = "Dran Droffers", map = 1454, x = 59.48, y = 36.59, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1418, x = 51.9, y = 15.69 },
					{ t = "goto", text = "Enter the cave", map = 1418, x = 54.5, y = 57.78 },
					{ t = "goto", text = "Follow the path", map = 1418, x = 54.16, y = 57.78 },
					{ t = "goto", text = "Continue following the path", map = 1418, x = 53.97, y = 57.75 },
					{ t = "goto", text = "Continue following the path", map = 1418, x = 54.08, y = 58.0 },
					{ t = "collect", quest = 709, item = 4631, itemName = "Tablet of Ryun'eh", oi = 1, map = 1418, x = 54.14, y = 58.24, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1418, x = 54.09, y = 58.01 },
					{ t = "goto", text = "Continue following the path", map = 1418, x = 53.78, y = 57.96 },
					{ t = "collect", quest = 2342, item = 8026, itemName = "Garrett Family Treasure", oi = 1, map = 1418, x = 53.78, y = 58.23, f = "e" },
				},
			},
			{
				note = "After entering the dungeon, follow the corridor on the right into the big open room, then continue to the second corridor on the right. He's laying on the ground surrounded by enemies.",
				goals = {
					{ t = "turnin", quest = 2284, title = "Necklace Recovery, Take 2", npc = 6912, npcName = "Remains of a Paladin" },
					{ t = "accept", quest = 2318, title = "Translating the Journal", npc = 6912, npcName = "Remains of a Paladin" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2318, title = "Translating the Journal", note = "Click Here to Continue" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1418, x = 3.83, y = 46.98 },
					{ t = "turnin", quest = 2318, title = "Translating the Journal", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.43, y = 46.07, f = "e" },
					{ t = "accept", quest = 2338, title = "Translating the Journal", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.43, y = 46.07, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 2338, title = "Translating the Journal", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.4, y = 46.1, f = "e" },
					{ t = "accept", quest = 2339, title = "Find the Gems and Power Source", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.43, y = 46.07, f = "e" },
				},
			},
			{
				note = "It looks like a tall brown urn in the southeastern side of Dig Two, to the right of the large double doors. Follow the path through the first corridor to enter the big open room, then follow the left corridor and enter the room to the south to reach Dig Two.",
				goals = {
					{ t = "collect", quest = 2339, item = 7671, itemName = "Shattered Necklace Topaz", oi = 3 },
				},
			},
			{
				note = "Looting this will cause a few enemies to spawn. It looks like a stone chest on the northwestern side of Dig Three. Continue west through the dungeon, pass through the Map Chamber and then continue north. Proceed north and follow the western-most path. After passing through the caves with bats you'll reach a more open area with a pit of non-elite scorpions. Go left here and immediately left again to reach Dig Three.",
				goals = {
					{ t = "collect", quest = 2339, item = 7669, itemName = "Shattered Necklace Ruby", oi = 1 },
				},
			},
			{
				note = "Leave Dig Three and go left, then continue left to the end of The Stone Vault.",
				goals = {
					{ t = "collect", quest = 2339, item = 7670, itemName = "Shattered Necklace Sapphire", oi = 2 },
				},
			},
			{
				note = "Leave The Stone Vault and follow the left path to reach the Hall of the Crafters. He is the last boss of the dungeon.",
				goals = {
					{ t = "collect", quest = 2339, item = 7672, itemName = "Shattered Necklace Power Source", oi = 4 },
				},
			},
			{
				note = "In the room behind Archaedas. You will only be able to access this room after Archadas is defeated.",
				goals = {
					{ t = "accept", quest = 2278, title = "The Platinum Discs" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2278, title = "The Platinum Discs", note = "Learn What Lore That the Stone Watcher Has to Offer" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2278, title = "The Platinum Discs" },
					{ t = "accept", quest = 2280, title = "The Platinum Discs" },
				},
			},
			{
				label = "Collect_12_Magenta_Cap_Cluster",
				along = true,
				note = "They look like a pair of mushrooms along the walls of the cave areas. You can find more outside of the dungeon.",
				goals = {
					{ t = "collect", quest = 2202, item = 8047, itemName = "Magenta Fungus Cap", count = 12, oi = 1 },
				},
			},
			{
				label = "Collect_8_Dentrium_Power_Stone",
				along = true,
				note = "You can find more outside of the dungeon.",
				goals = {
					{ t = "collect", quest = 2418, item = 8009, itemName = "Dentrium Power Stone", count = 8, oi = 1 },
				},
			},
			{
				label = "Collect_8_An'Alleum_Power_Stone",
				along = true,
				note = "You can find more outside of the dungeon.",
				goals = {
					{ t = "collect", quest = 2418, item = 8052, itemName = "An'Alleum Power Stone", count = 8, oi = 2 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1418, x = 3.83, y = 46.98 },
					{ t = "turnin", quest = 2202, title = "Uldaman Reagent Run", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.43, y = 46.08, f = "e" },
					{ t = "turnin", quest = 2339, title = "Find the Gems and Power Source", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.43, y = 46.07, f = "e" },
					{ t = "accept", quest = 2340, title = "Deliver the Gems", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.43, y = 46.07, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2418, title = "Power Stones", npc = 2817, npcName = "Rigglefuzz", map = 1418, x = 42.38, y = 52.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 709, title = "Solution to Doom", npc = 2785, npcName = "Theldurin the Lost", map = 1418, x = 51.39, y = 76.86, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2342, title = "Reclaimed Treasures", npc = 5651, npcName = "Patrick Garrett", map = 1458, x = 62.32, y = 48.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 59.01, y = 37.57 },
					{ t = "turnin", quest = 2340, title = "Deliver the Gems", npc = 6986, npcName = "Dran Droffers", map = 1454, x = 59.5, y = 36.6, f = "e" },
					{ t = "accept", quest = 2341, title = "Necklace Recovery, Take 3", npc = 6986, npcName = "Dran Droffers", map = 1454, x = 59.5, y = 36.6, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1456, x = 36.34, y = 50.53 },
					{ t = "turnin", quest = 2280, title = "The Platinum Discs", npc = 3978, npcName = "Sage Truthseeker", map = 1456, x = 34.4, y = 46.91, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1418, x = 3.83, y = 46.98 },
					{ t = "turnin", quest = 2341, title = "Necklace Recovery, Take 3", npc = 6868, npcName = "Jarkal Mossmeld", map = 1418, x = 2.43, y = 46.07, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-zulfarrak-quests",
		pack = "guides",
		title = "Zul'Farrak Quests",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1425,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "It looks like a green battle laying against a crate.",
				goals = {
					{ t = "accept", quest = 2933, title = "Venom Bottles", map = 1425, x = 23.51, y = 58.78, f = "e" },
				},
			},
			{
				note = "At the top of the Altar of Zul. You may need help with this.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 47.74, y = 66.6 },
					{ t = "collect", quest = 2770, item = 9241, itemName = "Sacred Mallet", map = 1425, x = 48.66, y = 68.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 66.67, y = 66.75 },
					{ t = "goto", text = "Continue up the stairs", map = 1425, x = 67.91, y = 69.04 },
					{ t = "goto", text = "Follow the path", map = 1425, x = 67.78, y = 70.69 },
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 65.07, y = 68.93 },
					{ t = "goto", text = "Follow the path", map = 1425, x = 63.77, y = 70.68 },
					{ t = "goto", text = "Continue following the path", map = 1425, x = 65.39, y = 72.99 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 67.16, y = 73.31 },
					{ t = "goto", text = "Follow the path", map = 1425, x = 64.54, y = 74.99 },
					{ t = "goto", text = "Run up the stairs", map = 1425, x = 62.17, y = 71.38 },
					{ t = "goto", text = "Continue up the stairs", map = 1425, x = 59.92, y = 70.16 },
					{ t = "goto", text = "Follow the path", map = 1425, x = 59.16, y = 74.13 },
				},
			},
			{
				goals = {
					{ t = "use", item = 9241, itemName = "Sacred Mallet" },
					{ t = "collect", quest = 2770, item = 9240, itemName = "Mallet of Zul'Farrak", map = 1425, x = 59.64, y = 77.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 61.5, y = 19.43 },
					{ t = "turnin", quest = 2933, title = "Venom Bottles", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
					{ t = "accept", quest = 2934, title = "Undamaged Venom Sac", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1424, x = 72.92, y = 23.67 },
					{ t = "goto", text = "Continue following the path", map = 1424, x = 74.43, y = 23.22 },
					{ t = "goto", text = "Continue following the path", map = 1424, x = 84.1, y = 32.7 },
					{ t = "goto", text = "Enter the Hinterlands", map = 1424, x = 90.05, y = 24.99 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1425, x = 35.74, y = 64.01 },
					{ t = "collect", quest = 2934, item = 9322, itemName = "Undamaged Venom Sac", oi = 1, map = 1425, x = 34.78, y = 69.45, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 61.5, y = 19.43 },
					{ t = "turnin", quest = 2934, title = "Undamaged Venom Sac", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
					{ t = "accept", quest = 2935, title = "Consult Master Gadrin", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2935, title = "Consult Master Gadrin", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.95, y = 74.72, f = "e" },
					{ t = "accept", quest = 2936, title = "The Spider God", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.95, y = 74.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1445, x = 45.88, y = 57.22 },
					{ t = "accept", quest = 2846, title = "Tiara of the Deep", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2770, title = "Gahz'rilla", npc = 4453, npcName = "Wizzle Brassbolts", map = 1441, x = 78.14, y = 77.11, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3520, title = "Screecher Spirits", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
				},
			},
			{
				note = "These have a low spawn rate. Use it on their corpse.",
				goals = {
					{ t = "use", item = 10699, itemName = "Yeh'kinya's Bramble" },
					{ t = "complete", quest = 3520, title = "Screecher Spirits", note = "collect 3 Screecher Spirits", map = 1444, x = 58.31, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3520, title = "Screecher Spirits", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
					{ t = "accept", quest = 3527, title = "The Prophecy of Mosh'aru", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2768, title = "Divino-matic Rod", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2865, title = "Scarab Shells", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3042, title = "Troll Temper", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2936, title = "The Spider God", note = "Enter the Zul'Farrak Dungeon with Your Group" },
				},
			},
			{
				note = "It looks like a large stone tablet laying up against a wall in the center of the scarab room. Follow the path north and then go right when the path splits. Quickly go left afterwards and then north.",
				goals = {
					{ t = "complete", quest = 2936, title = "The Spider God", note = "Find the Spider God's Name" },
				},
			},
			{
				note = "He is the second boss of the dungeon.",
				goals = {
					{ t = "collect", quest = 3527, item = 10660, itemName = "First Mosh'aru Tablet", oi = 1 },
				},
			},
			{
				note = "Continue following the path west and run up the stairs to reach the top of the large pyramid. Kill the Sandfury Executioner and then open the cages to start the event. He will be killable after you release them from captivity and clear the temple event.",
				goals = {
					{ t = "collect", quest = 2768, item = 8548, itemName = "Divino-matic Rod", oi = 1 },
				},
			},
			{
				note = "Follow the path southeast to reach the large room with a pool in the center. She walks around this area.",
				goals = {
					{ t = "collect", quest = 2846, item = 9234, itemName = "Tiara of the Deep", oi = 1 },
					{ t = "collect", quest = 3527, item = 10661, itemName = "Second Mosh'aru Tablet", oi = 2 },
				},
			},
			{
				note = "Clear the room. Use it near the gong atop the pool of water.",
				goals = {
					{ t = "use", item = 9240, itemName = "Mallet of Zul'Farrak" },
					{ t = "collect", quest = 2770, item = 8707, itemName = "Gahz'rilla's Electrified Scale", oi = 1 },
				},
			},
			{
				label = "Collect_5_Uncracked_Scarab_Shell",
				along = true,
				note = "They are found all around the instance, but mostly in the scarab room with Theka the Martyr.",
				goals = {
					{ t = "collect", quest = 2865, item = 9238, itemName = "Uncracked Scarab Shell", count = 5, oi = 1 },
				},
			},
			{
				label = "Collect_20_Troll_Temper",
				along = true,
				note = "These drop from troll enemies inside of Zul'Farrak. It will likely take multiple runs to complete.",
				goals = {
					{ t = "collect", quest = 3042, item = 9523, itemName = "Troll Temper", count = 20, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2936, title = "The Spider God", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3527, title = "The Prophecy of Mosh'aru", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.98, y = 22.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2768, title = "Divino-matic Rod", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2865, title = "Scarab Shells", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3042, title = "Troll Temper", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.42, y = 28.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2770, title = "Gahz'rilla", npc = 4453, npcName = "Wizzle Brassbolts", map = 1441, x = 78.14, y = 77.11, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1445, x = 45.88, y = 57.22 },
					{ t = "turnin", quest = 2846, title = "Tiara of the Deep", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2936, title = "The Spider God", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.95, y = 74.72, f = "e" },
				},
			},
		},
	})
end

