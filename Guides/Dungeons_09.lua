-- TuWoW_Leveling — Guides/Dungeons_09.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-scarlet-monastery-cathedral-quests",
		pack = "guides",
		title = "Scarlet Monastery Cathedral Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.86, y = 50.85 },
					{ t = "goto", text = "Run down the ramp", map = 1453, x = 51.66, y = 43.86 },
					{ t = "accept", quest = 6141, title = "Brother Anton", npc = 12336, npcName = "Brother Crowley", map = 1453, x = 52.62, y = 43.18, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 6141, title = "Brother Anton", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.9, f = "e" },
					{ t = "accept", quest = 261, title = "Down the Scarlet Path", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 261, npc = 11561, target = "Undead Ravager", count = 30, oi = 1, map = 1443, x = 64.09, y = 91.64, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 261, title = "Down the Scarlet Path", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.9, f = "e" },
					{ t = "accept", quest = 1052, title = "Down the Scarlet Path", npc = 1182, npcName = "Brother Anton", map = 1443, x = 66.52, y = 7.9, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 50.47, y = 58.56 },
					{ t = "turnin", quest = 1052, title = "Down the Scarlet Path", npc = 3980, npcName = "Raleigh the Devout", map = 1424, x = 51.46, y = 58.36, f = "e" },
					{ t = "accept", quest = 1053, title = "In the Name of the Light", npc = 3980, npcName = "Raleigh the Devout", map = 1424, x = 51.46, y = 58.36, f = "e" },
				},
			},
			{
				note = "You will need The Scarlet Key from the chest behind Arcanist Doan in the Library to open this. A rogue with 175 Lockpicking skill can pick it and a Truesilver Key opens it too. Engineers can also blast the door open.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1420, x = 82.65, y = 32.88 },
					{ t = "goto", text = "click Cathedral Door", map = 1420, x = 85.21, y = 30.86 },
					{ t = "goto", text = "Enter the Portal", map = 1420, x = 85.32, y = 30.48 },
					{ t = "complete", quest = 1053, title = "In the Name of the Light", note = "Enter the Scarlet Monastery - Cathedral Dungeon with Your Group" },
				},
			},
			{
				note = "He is the last boss of the dungeon, found all the way at the end.",
				goals = {
					{ t = "kill", quest = 1053, npc = 3976, target = "Scarlet Commander Mograine", oi = 2 },
				},
			},
			{
				note = "She is the last boss of the dungeon, found all the way at the end.",
				goals = {
					{ t = "kill", quest = 1053, npc = 3977, target = "High Inquisitor Whitemane", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 1053, title = "In the Name of the Light", note = "Click Here to Continue" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1424, x = 50.47, y = 58.56 },
					{ t = "turnin", quest = 1053, title = "In the Name of the Light", npc = 3980, npcName = "Raleigh the Devout", map = 1424, x = 51.46, y = 58.36, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-razorfen-downs-quests",
		pack = "guides",
		title = "Razorfen Downs Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 39 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.86, y = 50.85 },
					{ t = "accept", quest = 3636, title = "Bring the Light", npc = 1284, npcName = "Archbishop Benedictus", map = 1453, x = 50.3, y = 45.53, f = "e" },
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
					{ t = "complete", quest = 3636, title = "Bring the Light", note = "Enter the Razorfen Downs Dungeon with Your Group" },
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
					{ t = "kill", quest = 3636, npc = 7358, target = "Amnennar the Coldbringer", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 3636, title = "Bring the Light", note = "Click Here to Continue" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 52.86, y = 50.85 },
					{ t = "turnin", quest = 3636, title = "Bring the Light", npc = 1284, npcName = "Archbishop Benedictus", map = 1453, x = 50.3, y = 45.53, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-uldaman-quests",
		pack = "guides",
		title = "Uldaman Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1432,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 38 },
				},
			},
			{
				note = "You may need help with this. You can find more inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1432, x = 46.86, y = 77.59 },
					{ t = "collect", quest = 2198, item = 7666, itemName = "Shattered Necklace", map = 1418, x = 45.1, y = 12.01, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 7666, itemName = "Shattered Necklace" },
					{ t = "accept", quest = 2198, title = "The Shattered Necklace" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2198, title = "The Shattered Necklace", npc = 6826, npcName = "Talvash del Kissel", map = 1455, x = 36.37, y = 3.62, f = "e" },
					{ t = "accept", quest = 2199, title = "Lore for a Price", npc = 6826, npcName = "Talvash del Kissel", map = 1455, x = 36.36, y = 3.62, f = "e" },
				},
			},
			{
				note = "If you have the Mining profession, you can gather these. Search the guide menu for the item(s) to use the farming guides. You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", quest = 2199, item = 2842, itemName = "Silver Bar", count = 5, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2199, title = "Lore for a Price", npc = 6826, npcName = "Talvash del Kissel", map = 1455, x = 36.36, y = 3.62, f = "e" },
					{ t = "accept", quest = 2200, title = "Back to Uldaman", npc = 6826, npcName = "Talvash del Kissel", map = 1455, x = 36.36, y = 3.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2398, title = "The Lost Dwarves", npc = 1356, npcName = "Prospector Stormpike", map = 1455, x = 74.62, y = 11.79, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1418, x = 51.84, y = 15.51 },
					{ t = "goto", text = "Follow the path", map = 1418, x = 51.77, y = 33.17 },
					{ t = "accept", quest = 720, title = "A Sign of Hope", map = 1418, x = 53.03, y = 33.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1418, x = 50.48, y = 37.05 },
					{ t = "turnin", quest = 720, title = "A Sign of Hope", npc = 2910, npcName = "Prospector Ryedol", map = 1418, x = 53.42, y = 43.4, f = "e" },
					{ t = "accept", quest = 721, title = "A Sign of Hope", npc = 2910, npcName = "Prospector Ryedol", map = 1418, x = 53.42, y = 43.4, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1418, x = 51.9, y = 15.69 },
					{ t = "goto", text = "Enter the cave", map = 1418, x = 54.5, y = 57.78 },
					{ t = "complete", quest = 721, title = "A Sign of Hope", note = "Find Hammertoe Grez in Uldaman", map = 1418, x = 54.04, y = 57.67, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "turnin", quest = 721, title = "A Sign of Hope", npc = 2909, npcName = "Hammertoe Grez", map = 1418, x = 54.04, y = 57.67, f = "e" },
					{ t = "accept", quest = 722, title = "Amulet of Secrets", npc = 2909, npcName = "Hammertoe Grez", map = 1418, x = 54.04, y = 57.67, f = "e" },
				},
			},
			{
				note = "He patrols through the tunnels before the entrance. He has a slow respawn rate.",
				goals = {
					{ t = "collect", quest = 722, item = 4635, itemName = "Hammertoe's Amulet", oi = 1, map = 1418, x = 53.85, y = 57.95, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "turnin", quest = 722, title = "Amulet of Secrets", npc = 2909, npcName = "Hammertoe Grez", map = 1418, x = 54.04, y = 57.67, f = "e" },
					{ t = "accept", quest = 723, title = "Prospect of Faith", npc = 2909, npcName = "Hammertoe Grez", map = 1418, x = 54.04, y = 57.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1418, x = 54.48, y = 57.78 },
					{ t = "turnin", quest = 723, title = "Prospect of Faith", npc = 2910, npcName = "Prospector Ryedol", map = 1418, x = 53.42, y = 43.4, f = "e" },
					{ t = "accept", quest = 724, title = "Prospect of Faith", npc = 2910, npcName = "Prospector Ryedol", map = 1418, x = 53.42, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 707, title = "Ironband Wants You!", npc = 1356, npcName = "Prospector Stormpike", map = 1455, x = 74.7, y = 11.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 724, title = "Prospect of Faith", npc = 2916, npcName = "Historian Karnik", map = 1455, x = 77.57, y = 11.83, f = "e" },
					{ t = "accept", quest = 725, title = "Passing Word of a Threat", npc = 2916, npcName = "Historian Karnik", map = 1455, x = 77.57, y = 11.83, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 725, title = "Passing Word of a Threat", npc = 2918, npcName = "Advisor Belgrum", map = 1455, x = 77.32, y = 9.75, f = "e" },
					{ t = "accept", quest = 726, title = "Passing Word of a Threat", npc = 2918, npcName = "Advisor Belgrum", map = 1455, x = 77.32, y = 9.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 726, title = "Passing Word of a Threat", npc = 2916, npcName = "Historian Karnik", map = 1455, x = 77.57, y = 11.83, f = "e" },
					{ t = "accept", quest = 762, title = "An Ambassador of Evil", npc = 2916, npcName = "Historian Karnik", map = 1455, x = 77.57, y = 11.83, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1432, x = 36.64, y = 48.53 },
					{ t = "accept", quest = 2500, title = "Badlands Reagent Run", npc = 1470, npcName = "Ghak Healtouch", map = 1432, x = 37.07, y = 49.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 707, title = "Ironband Wants You!", npc = 1344, npcName = "Prospector Ironband", map = 1432, x = 65.94, y = 65.62, f = "e" },
					{ t = "accept", quest = 738, title = "Find Agmond", npc = 1344, npcName = "Prospector Ironband", map = 1432, x = 65.94, y = 65.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 738, title = "Find Agmond", map = 1418, x = 50.89, y = 62.4, f = "e" },
					{ t = "accept", quest = 739, title = "Murdaloc", map = 1418, x = 50.89, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 739, npc = 2945, target = "Murdaloc", oi = 1, map = 1418, x = 49.63, y = 66.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 739, npc = 2893, target = "Stonevault Bonesnapper", count = 12, oi = 2, map = 1418, x = 51.18, y = 68.27, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building. You may need help with this.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1418, x = 42.93, y = 29.93 },
					{ t = "goto", text = "Follow the path", map = 1418, x = 43.1, y = 28.83 },
					{ t = "goto", text = "Run down the stairs", map = 1418, x = 42.2, y = 26.74 },
					{ t = "goto", text = "Continue down the stairs", map = 1418, x = 41.24, y = 27.44 },
					{ t = "collect", quest = 762, item = 4621, itemName = "Ambassador Infernus' Bracer", oi = 1, map = 1418, x = 42.1, y = 28.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2500, item = 7848, itemName = "Rock Elemental Shard", count = 5, oi = 3, map = 1418, x = 19.46, y = 43.02, f = "e" },
				},
			},
			{
				label = "Collect_Buzzard_Gizzards",
				along = true,
				goals = {
					{ t = "collect", quest = 2500, item = 7847, itemName = "Buzzard Gizzard", count = 5, oi = 1, map = 1418, x = 16.82, y = 59.84, f = "e" },
				},
			},
			{
				label = "Collect_Crag_Coyote_Fangs",
				along = true,
				goals = {
					{ t = "collect", quest = 2500, item = 7846, itemName = "Crag Coyote Fang", count = 10, oi = 2, map = 1418, x = 23.75, y = 55.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 738, title = "Find Agmond", npc = 1344, npcName = "Prospector Ironband", map = 1432, x = 65.94, y = 65.62, f = "e" },
					{ t = "accept", quest = 704, title = "Agmond's Fate", npc = 1344, npcName = "Prospector Ironband", map = 1432, x = 65.94, y = 65.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1432, x = 36.63, y = 48.53 },
					{ t = "turnin", quest = 2500, title = "Badlands Reagent Run", npc = 1470, npcName = "Ghak Healtouch", map = 1432, x = 37.07, y = 49.38, f = "e" },
					{ t = "accept", quest = 17, title = "Uldaman Reagent Run", npc = 1470, npcName = "Ghak Healtouch", map = 1432, x = 37.07, y = 49.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 762, title = "An Ambassador of Evil", npc = 2918, npcName = "Advisor Belgrum", map = 1455, x = 77.32, y = 9.75, f = "e" },
					{ t = "accept", quest = 1139, title = "The Lost Tablets of Will", npc = 2918, npcName = "Advisor Belgrum", map = 1455, x = 77.32, y = 9.75, f = "e" },
				},
			},
			{
				note = "He's laying on the ground surrounded by enemies.",
				goals = {
					{ t = "turnin", quest = 2200, title = "Back to Uldaman", npc = 6912, npcName = "Remains of a Paladin" },
					{ t = "accept", quest = 2201, title = "Find the Gems", npc = 6912, npcName = "Remains of a Paladin" },
				},
			},
			{
				note = "He is the first boss of the dungeon. Follow the path through the first corridor to enter the big open room, then follow the left corridor and enter the room to the south to reach Dig Two.",
				goals = {
					{ t = "turnin", quest = 2398, title = "The Lost Dwarves", npc = 6906, npcName = "Baelog" },
					{ t = "accept", quest = 2240, title = "The Hidden Chamber", npc = 6906, npcName = "Baelog" },
				},
			},
			{
				note = "On the table behind Baelog.",
				goals = {
					{ t = "collect", quest = 2240, item = 7740, itemName = "Gni'kiv Medallion" },
				},
			},
			{
				note = "It looks like a tall brown urn in the southeastern side of Dig Two, to the right of the large double doors.",
				goals = {
					{ t = "collect", quest = 2201, item = 7671, itemName = "Shattered Necklace Topaz", oi = 3 },
				},
			},
			{
				note = "He is the second boss of the dungeon. Leave Dig Two and go left.",
				goals = {
					{ t = "collect", quest = 2240, item = 7741, itemName = "The Shaft of Tsol" },
				},
			},
			{
				goals = {
					{ t = "use", item = 7741, itemName = "The Shaft of Tsol" },
					{ t = "collect", quest = 2240, item = 7733, itemName = "Staff of Prehistoria" },
				},
			},
			{
				note = "In the Map Chamber, just after Revelosh. This will only be usable by someone with the Staff of Prehistoria. This will open the locked door, guarded by the boss Ironaya. After defeating Ironaya, enter the room she was in.",
				goals = {
					{ t = "complete", quest = 2240, title = "The Hidden Chamber", note = "Explore the Hidden Chamber" },
				},
			},
			{
				note = "Looting this will cause a few enemies to spawn. It looks like a stone chest on the northwestern side of Dig Three. Proceed north and follow the western-most path. After passing through the caves with bats you'll reach a more open area with a pit of non-elite scorpions. Go left here and immediately left again to reach Dig Three.",
				goals = {
					{ t = "collect", quest = 2201, item = 7669, itemName = "Shattered Necklace Ruby", oi = 1 },
				},
			},
			{
				note = "It is against the wall in Dig Three.",
				goals = {
					{ t = "collect", quest = 1139, item = 5824, itemName = "Tablet of Will", oi = 1 },
				},
			},
			{
				note = "Leave Dig Three and go left, then continue left to the end of The Stone Vault.",
				goals = {
					{ t = "collect", quest = 2201, item = 7670, itemName = "Shattered Necklace Sapphire", oi = 2 },
				},
			},
			{
				goals = {
					{ t = "use", item = 7667, itemName = "Talvash's Phial of Scrying" },
					{ t = "turnin", quest = 2201, title = "Find the Gems" },
					{ t = "accept", quest = 2204, title = "Restoring the Necklace" },
				},
			},
			{
				note = "He is the last boss of the dungeon. Leave The Stone Vault and follow the left path to reach the Hall of the Crafters.",
				goals = {
					{ t = "collect", quest = 2204, item = 7672, itemName = "Shattered Necklace Power Source", oi = 1 },
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
					{ t = "accept", quest = 2279, title = "The Platinum Discs" },
				},
			},
			{
				label = "Collect_4_Carved_Stone_Urn",
				along = true,
				note = "They are scattered throughout the instance.",
				goals = {
					{ t = "collect", quest = 704, item = 4610, itemName = "Carved Stone Urn", count = 4, oi = 1 },
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
				goals = {
					{ t = "complete", quest = 1139, title = "The Lost Tablets of Will", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 704, title = "Agmond's Fate", npc = 1344, npcName = "Prospector Ironband", map = 1432, x = 65.93, y = 65.62, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1432, x = 36.63, y = 48.52 },
					{ t = "turnin", quest = 17, title = "Uldaman Reagent Run", npc = 1470, npcName = "Ghak Healtouch", map = 1432, x = 37.07, y = 49.37, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1455, x = 31.94, y = 8.36 },
					{ t = "goto", text = "Enter the building", map = 1455, x = 31.98, y = 5.42 },
					{ t = "turnin", quest = 3448, title = "Passing the Burden", npc = 8507, npcName = "Tymor", map = 1455, x = 30.98, y = 4.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2279, title = "The Platinum Discs", npc = 5387, npcName = "High Explorer Magellas", map = 1455, x = 69.93, y = 18.54, f = "e" },
					{ t = "accept", quest = 2439, title = "The Platinum Discs", npc = 5387, npcName = "High Explorer Magellas", map = 1455, x = 69.93, y = 18.54, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 34.08, y = 62.42 },
					{ t = "turnin", quest = 2439, title = "The Platinum Discs", npc = 7292, npcName = "Dinita Stonemantle", map = 1455, x = 33.48, y = 60.21, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2204, title = "Restoring the Necklace", npc = 6826, npcName = "Talvash del Kissel", map = 1455, x = 36.36, y = 3.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2240, title = "The Hidden Chamber", npc = 1356, npcName = "Prospector Stormpike", map = 1455, x = 74.66, y = 11.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1139, title = "The Lost Tablets of Will", npc = 2918, npcName = "Advisor Belgrum", map = 1455, x = 77.32, y = 9.75, f = "e" },
				},
			},
		},
	})
end

