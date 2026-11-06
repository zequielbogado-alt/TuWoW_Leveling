-- TuWoW_Leveling — Guides/Dungeons_13.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-dire-maul-east-quests",
		pack = "guides",
		title = "Dire Maul East Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1450,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 56 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 5527, title = "A Reliquary of Purity", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.69, y = 45.1, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "collect", quest = 5527, item = 22201, itemName = "Reliquary of Purity", map = 1451, x = 63.23, y = 55.36, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5527, title = "A Reliquary of Purity", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.69, y = 45.1, f = "e" },
					{ t = "accept", quest = 5526, title = "Shards of the Felvine", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.69, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7488, title = "Lethtendris's Web", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.38, y = 46.18, f = "e" },
				},
			},
			{
				note = "On top of the platform.",
				goals = {
					{ t = "accept", quest = 7441, title = "Pusillin and the Elder Azj'Tordin", npc = 14355, npcName = "Azj'Tordin", map = 1444, x = 76.91, y = 37.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1444, x = 59.13, y = 44.67 },
					{ t = "goto", text = "Follow the path", map = 1444, x = 59.52, y = 39.51 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.72, y = 38.78 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.15, y = 34.87 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 64.85, y = 30.18 },
					{ t = "complete", quest = 5526, title = "Shards of the Felvine", note = "Enter the Dire Maul - East Dungeon with Your Group" },
				},
			},
			{
				note = "He's in the northwest part of the Warpwood Quarter. He will run off after speaking to him. If you don't do this, he will not be killable later.",
				goals = {
					{ t = "complete", quest = 7441, title = "Pusillin and the Elder Azj'Tordin", note = "Click Here to Continue" },
				},
			},
			{
				note = "He's in the southern part of the Warpwood Quarter, near the dungeon entrance. He will run off after speaking to him. If you don't do this, he will not be killable later.",
				goals = {
					{ t = "complete", quest = 7441, title = "Pusillin and the Elder Azj'Tordin", note = "Click Here to Continue" },
				},
			},
			{
				note = "He's in the northeastern part of the Warpwood Quarter. He will run off after speaking to him. If you don't do this, he will not be killable later.",
				goals = {
					{ t = "complete", quest = 7441, title = "Pusillin and the Elder Azj'Tordin", note = "Click Here to Continue" },
				},
			},
			{
				note = "Follow the northeastern path from the Warpwood Quarter to reach The Hidden Reach. Continue east down the path through The Hidden Reach to find him. He will be in the Hidden Reach, straight through the tunnel. He will run off after speaking to him. If you don't do this, he will not be killable later.",
				goals = {
					{ t = "complete", quest = 7441, title = "Pusillin and the Elder Azj'Tordin", note = "Click Here to Continue" },
				},
			},
			{
				note = "Continue southeast and run up the ramp to the small upper platform.",
				goals = {
					{ t = "collect", quest = 7441, item = 18261, itemName = "Book of Incantations", oi = 1 },
					{ t = "collect", quest = 7463, item = 18249, itemName = "Crescent Key", only = { classes = { "MAGE" } } },
				},
			},
			{
				note = "After killing Pusillin go west up the ramps back the way you came through The Hidden Reach. After going up the ramps and before reentering the Warpwood Quarter, enter the left room. Go south in this room and then run up the large ramp to reach the upper level to find Lethtendris.",
				goals = {
					{ t = "collect", quest = 7488, item = 18426, itemName = "Lethtendris's Web", oi = 1 },
				},
			},
			{
				note = "This boss must be defeated to gain access to the last boss, Alzzin the Wildshaper. After killing Lethtendris follow the southeastern path down the spiral ramp. Once in the next room go north and follow the ramp up.",
				goals = {
					{ t = "complete", quest = 5526, title = "Shards of the Felvine", note = "Click Here to Continue" },
				},
			},
			{
				note = "After killing Zevrim Thornhoof jump off the west side of the platform. Follow the path in the southwestern part of the room to reach The Conservatory. Go north through The Conservatory to find Ironbark the Redeemed. He walks around this area.",
				goals = {
					{ t = "complete", quest = 5526, title = "Shards of the Felvine", note = "Click Here to Continue" },
				},
			},
			{
				note = "After talking to Ironbark the Redeemed, continue north through The Conservatory. It looks like a small glowing red object sitting on the ground next to a twisted vine plant next to the boss.",
				goals = {
					{ t = "collect", quest = 5526, item = 18501, itemName = "Felvine Shard" },
				},
			},
			{
				note = "Use it next to the twisted vine plant next to the boss.",
				goals = {
					{ t = "use", item = 18539, itemName = "Reliquary of Purity" },
					{ t = "complete", quest = 5526, title = "Shards of the Felvine", note = "Seal the Reliquary of Purity" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5526, title = "Shards of the Felvine", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7488, title = "Lethtendris's Web", npc = 7877, npcName = "Latronicus Moonspear", map = 1444, x = 30.38, y = 46.18, f = "e" },
				},
			},
			{
				note = "On top of the platform.",
				goals = {
					{ t = "turnin", quest = 7441, title = "Pusillin and the Elder Azj'Tordin", npc = 14355, npcName = "Azj'Tordin", map = 1444, x = 76.91, y = 37.35, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5526, title = "Shards of the Felvine", npc = 11801, npcName = "Rabine Saturna", map = 1450, x = 51.69, y = 45.1, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-dire-maul-west-quests",
		pack = "guides",
		title = "Dire Maul West Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1444,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 56 },
				},
			},
			{
				note = "He is the first boss in the Dire Maul East dungeon. Use the Dire Maul East dungeon guide to accomplish this. This item is required to enter Dire Maul West. If someone else in the group has it you can skip this step.",
				goals = {
					{ t = "collect", quest = 7462, item = 18249, itemName = "Crescent Key" },
				},
			},
			{
				note = "You need a Crescent Key to unlock this door. This drops from Pusillin in the \"Dire Maul - East\" dungeon.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1444, x = 59.13, y = 44.67 },
					{ t = "goto", text = "Follow the path", map = 1444, x = 59.52, y = 39.51 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.72, y = 38.78 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.15, y = 34.87 },
					{ t = "goto", text = "click Door", map = 1444, x = 60.32, y = 30.16 },
				},
			},
			{
				note = "She is above the platform overseeing Tendris Warpwood. Head south from the second pylon to reach the Shen'dralar Ancient.",
				goals = {
					{ t = "accept", quest = 7461, title = "The Madness Within", npc = 14358, npcName = "Shen'dralar Ancient" },
				},
			},
			{
				note = "Clear the remaining two pylons in this room in order to engage him.",
				goals = {
					{ t = "complete", quest = 7461, title = "The Madness Within", note = "Slay Immol'thar" },
				},
			},
			{
				note = "Once inside The Athenaeum, jump down. He is underneath the platform that you are on after entering the room.",
				goals = {
					{ t = "complete", quest = 7461, title = "The Madness Within", note = "Slay Prince Tortheldrin" },
				},
			},
			{
				note = "She is above the platform overseeing Tendris Warpwood. Go back up the ramp in The Athenaeum, and east through the Prison of Immol'thar. Go up the ramp in the Court of the Highborne, then north and up a second ramp, then follow the path east and south to reach her.",
				goals = {
					{ t = "turnin", quest = 7461, title = "The Madness Within", npc = 14358, npcName = "Shen'dralar Ancient" },
					{ t = "accept", quest = 7462, title = "The Treasure of the Shen'dralar", npc = 14358, npcName = "Shen'dralar Ancient" },
				},
			},
			{
				note = "It looks like a large stone chest underneath the ramp in The Athenaeum. Go back through the Prison of Immol'thar and reenter The Athenaeum.",
				goals = {
					{ t = "turnin", quest = 7462, title = "The Treasure of the Shen'dralar" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-dire-maul-north-quests",
		pack = "guides",
		title = "Dire Maul North Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 56 },
				},
			},
			{
				note = "You can have a Tailor make these with 20 Runecloth. You can also purchase these from the auction house.",
				goals = {
					{ t = "collect", quest = 5518, item = 14048, itemName = "Bolt of Runecloth", count = 4 },
				},
			},
			{
				note = "Use the Rugged Leather farming guide to accomplish this. You can also purchase these from the Auction House.",
				goals = {
					{ t = "collect", quest = 5518, item = 8170, itemName = "Rugged Leather", count = 8 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 54.11, y = 81.63 },
					{ t = "buy", item = 14341, itemName = "Rune Thread", count = 2, map = 1453, x = 53.14, y = 81.76, f = "e" },
				},
			},
			{
				note = "She patrols along the road.",
				goals = {
					{ t = "accept", quest = 7482, title = "Elven Legends", npc = 14374, npcName = "Scholar Runethorn", map = 1444, x = 31.09, y = 44.1, f = "e" },
				},
			},
			{
				note = "He is the first boss in the Dire Maul East dungeon. Use the Dire Maul East dungeon guide to accomplish this. This item is required to enter Dire Maul West. If someone else in the group has it you can skip this step.",
				goals = {
					{ t = "collect", quest = 7482, item = 18249, itemName = "Crescent Key" },
				},
			},
			{
				note = "You need a Crescent Key to unlock this door. This drops from Pusillin in the \"Dire Maul - East\" dungeon.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1444, x = 59.13, y = 44.67 },
					{ t = "goto", text = "Follow the path", map = 1444, x = 59.52, y = 39.51 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.72, y = 38.78 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.15, y = 34.87 },
					{ t = "goto", text = "click Door", map = 1444, x = 62.49, y = 24.89 },
					{ t = "complete", quest = 7482, title = "Elven Legends", note = "Enter the Dire Maul - North Dungeon with Your Group" },
				},
			},
			{
				note = "Jump down into the courtyard. Once there, head west down a ramp with the Conservatory Door. Run through the tunnel to reach The Athenaeum. You will need the Crescent Key from Dire Maul East or a Rogue to open this. On the ground next to an elf and a bookcase in the north part of the room.",
				goals = {
					{ t = "complete", quest = 7482, title = "Elven Legends", note = "Find the Skeletal Remains of Master Kariel Winthalus" },
				},
			},
			{
				note = "It looks like a brown and black chest in the middle of the courtyard. Leave The Athenaeum and go back through the long tunnel to return to Dire Maul North. Head west into the second large open room.",
				goals = {
					{ t = "collect", quest = 7482, item = 18266, itemName = "Gordok Courtyard Key" },
				},
			},
			{
				note = "It is on the western side of the room.",
				goals = {
					{ t = "complete", quest = 7482, title = "Elven Legends", note = "Click Here to Continue" },
				},
			},
			{
				note = "Follow the tunnel to reach the Halls of Destruction. He is in the northeast corner of the Halls of Destruction.",
				goals = {
					{ t = "accept", quest = 5518, title = "The Gordok Ogre Suit", npc = 14338, npcName = "Knot Thimblejack" },
				},
			},
			{
				note = "It is up the ramp just above where Knot Thimblejack is, in the northwest corner of the room. Only one person in your group will be able to collect this.",
				goals = {
					{ t = "collect", quest = 5518, item = 18240, itemName = "Ogre Tannin", oi = 4 },
				},
			},
			{
				note = "He is in the northeast corner of the Halls of Destruction.",
				goals = {
					{ t = "turnin", quest = 5518, title = "The Gordok Ogre Suit", npc = 14338, npcName = "Knot Thimblejack" },
				},
			},
			{
				note = "Guard Mol'dar, Slip'kik, Fengus and Captain Kromcrush can drop the key. The guards can be found in the Halls of Destruction and in each of the large open rooms at the beginning of the dungeon. Captain Kromcrush is found in Gordok's Seat, which is reached by going through the upper level of the Halls of Destruction. It also has a small chance to drop from Gordok trash mobs throughout the dungeon.",
				goals = {
					{ t = "collect", quest = 5525, item = 18250, itemName = "Gordok Shackle Key" },
				},
			},
			{
				note = "He is in the northeast corner of the Halls of Destruction.",
				goals = {
					{ t = "turnin", quest = 7429, title = "Free Knot!", npc = 14338, npcName = "Knot Thimblejack" },
				},
			},
			{
				note = "You will only be able to speak with him after a tribute run. Use the Dire Maul North Tribute dungeon guide to accomplish this.",
				goals = {
					{ t = "accept", quest = 5528, title = "The Gordok Taste Test", npc = 14322, npcName = "Stomper Kreeg" },
				},
			},
			{
				note = "To do this, you will need to do a tribute run. Use the Dire Maul North Tribute dungeon guide to accomplish this.",
				goals = {
					{ t = "accept", quest = 7703, title = "Unfinished Gordok Business", npc = 14325, npcName = "Captain Kromcrush" },
				},
			},
			{
				note = "Run back to the start of the instance and enter the Library through the courtyard door. The chest will be behind where he stands.",
				goals = {
					{ t = "collect", quest = 7703, item = 18336, itemName = "Gauntlet of Gordok Might", oi = 1 },
				},
			},
			{
				note = "To do this, you will need to do a tribute run. You may need to run another Tribute Run to accomplish this.",
				goals = {
					{ t = "turnin", quest = 7703, title = "Unfinished Gordok Business", npc = 14325, npcName = "Captain Kromcrush" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 7482, title = "Elven Legends", note = "Click Here to Continue" },
				},
			},
			{
				note = "She patrols along the road.",
				goals = {
					{ t = "turnin", quest = 7482, title = "Elven Legends", npc = 14374, npcName = "Scholar Runethorn", map = 1444, x = 31.09, y = 44.1, f = "e" },
				},
			},
		},
	})
end

