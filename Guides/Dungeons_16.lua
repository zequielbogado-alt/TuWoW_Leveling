-- TuWoW_Leveling — Guides/Dungeons_16.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-stratholme-live-side-quests",
		pack = "guides",
		title = "Stratholme - Live Side Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1423,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 55 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5214, title = "The Great Fras Siabi", npc = 11033, npcName = "Smokey LaRue", map = 1423, x = 70.87, y = 48.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5251, title = "The Archivist", npc = 11039, npcName = "Duke Nicholas Zverenhoff", map = 1423, x = 71.63, y = 50.09, f = "e" },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "accept", quest = 5281, title = "The Restless Souls", npc = 11038, npcName = "Caretaker Alen", map = 1423, x = 70.09, y = 53.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5281, title = "The Restless Souls", npc = 11140, npcName = "Egan", map = 1423, x = 11.36, y = 26.6, f = "e" },
					{ t = "accept", quest = 5282, title = "The Restless Souls", npc = 11140, npcName = "Egan", map = 1423, x = 11.36, y = 26.6, f = "e" },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1423, x = 12.18, y = 22.6 },
					{ t = "goto", text = "Follow the path", map = 1423, x = 10.71, y = 25.1 },
					{ t = "goto", text = "Leave the cave", map = 1423, x = 5.1, y = 32.85 },
					{ t = "accept", quest = 5542, title = "Demon Dogs", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "accept", quest = 5543, title = "Blood Tinged Skies", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "accept", quest = 5544, title = "Carrion Grubbage", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				label = "Kill_Plaguebats",
				goals = {
					{ t = "kill", quest = 5543, npc = 8600, target = "Plaguebat", count = 30, oi = 1, map = 1423, x = 37.26, y = 70.91, f = "e" },
				},
			},
			{
				label = "Kill_Plaguehound_Runts",
				along = true,
				goals = {
					{ t = "kill", quest = 5542, npc = 8596, target = "Plaguehound Runt", count = 20, oi = 1, map = 1423, x = 37.26, y = 70.91, f = "e" },
				},
			},
			{
				label = "Collect_Slabs_Of_Carrion_Worm_Meat",
				along = true,
				goals = {
					{ t = "collect", quest = 5544, item = 13853, itemName = "Slab of Carrion Worm Meat", count = 15, oi = 1, map = 1423, x = 37.26, y = 70.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5542, npc = 8597, target = "Plaguehound", count = 5, oi = 2, map = 1423, x = 61.35, y = 57.79, f = "e" },
				},
			},
			{
				label = "Kill_Frenzied_Plaguehounds",
				goals = {
					{ t = "kill", quest = 5542, npc = 8598, target = "Frenzied Plaguehound", count = 5, oi = 3, map = 1423, x = 54.71, y = 39.4, f = "e" },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "turnin", quest = 5542, title = "Demon Dogs", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "turnin", quest = 5543, title = "Blood Tinged Skies", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "turnin", quest = 5544, title = "Carrion Grubbage", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "accept", quest = 5742, title = "Redemption", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				note = "He walks around this area. Type \"/sit\" into your chat, or press X. You must be sitting for the dialogue option to appear when you talk to him.",
				goals = {
					{ t = "complete", quest = 5742, title = "Redemption", note = "Listen to Tirion's Tale", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "turnin", quest = 5742, title = "Redemption", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "accept", quest = 5781, title = "Of Forgotten Memories", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				note = "Mercutio Filthgorger appears with a group of 3 guards with him. Try to kite Mercutio Filthgorger away from his guards, so you can fight him by himself. If you have trouble, try to find someone to help you.",
				goals = {
					{ t = "collect", quest = 5781, item = 14613, itemName = "Taelan's Hammer", oi = 1, map = 1423, x = 23.83, y = 74.45, f = "e" },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1423, x = 9.09, y = 51.59 },
					{ t = "turnin", quest = 5781, title = "Of Forgotten Memories", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "accept", quest = 5845, title = "Of Lost Honor", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				note = "Underwater.",
				goals = {
					{ t = "collect", quest = 5845, item = 14625, itemName = "Symbol of Lost Honor", oi = 1, map = 1423, x = 62.51, y = 26.79, f = "e" },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "turnin", quest = 5845, title = "Of Lost Honor", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
					{ t = "accept", quest = 5846, title = "Of Love and Family", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5846, title = "Of Love and Family", npc = 11936, npcName = "Artist Renfray", map = 1422, x = 65.77, y = 75.37, f = "e" },
					{ t = "accept", quest = 5848, title = "Of Love and Family", npc = 11936, npcName = "Artist Renfray", map = 1422, x = 65.77, y = 75.37, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5282, title = "The Restless Souls", note = "Enter the Stratholme - Live Dungeon with Your Group" },
				},
			},
			{
				note = "It looks like a small wooden crate on the ground. Turn left twice into King's Square.",
				goals = {
					{ t = "collect", quest = 5214, item = 13172, itemName = "Siabi's Premium Tobacco", oi = 1 },
				},
			},
			{
				note = "Go north and then west once you enter Market Row to reach Crusader's Square. This requires The Scarlet Key from the Scarlet Monastery dungeon or a Rogue with leveled lockpicking to open. Enter The Hall of Lights, go down the hall and enter the small room on the left. In the same room as Malor the Zealous. It looks like a small toolbox in the corner of the room.",
				goals = {
					{ t = "collect", quest = 5122, item = 12845, itemName = "Medallion of Faith" },
				},
			},
			{
				note = "This requires The Scarlet Key from the Scarlet Monastery dungeon or a Rogue with leveled lockpicking to open. Go across the hall from The Hall of Lights to enter The Scarlet Bastion. He is near the end of The Scarlet Bastion across from Grand Crusader Dathrohan.",
				goals = {
					{ t = "complete", quest = 5251, title = "The Archivist", note = "Slay Archivist Galford" },
				},
			},
			{
				note = "In the same room as Archivist Galford.",
				goals = {
					{ t = "collect", quest = 5848, item = 14679, itemName = "Of Love and Family", oi = 1 },
				},
			},
			{
				note = "It looks like a small brown book on the table in the room where Archivist Galford is.",
				goals = {
					{ t = "complete", quest = 5251, title = "The Archivist", note = "Burn the Archive" },
				},
			},
			{
				label = "Free_15_Souls",
				along = true,
				note = "It should be in your inventory. Use it on Spectral Citizens. This will cause Restless Spirits to spawn. Use Egan's Blaster on the Restless Spirits after.",
				goals = {
					{ t = "use", item = 13289, itemName = "Egan's Blaster" },
					{ t = "complete", quest = 5282, title = "The Restless Souls", note = "Free 15 Souls" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5282, title = "The Restless Souls", note = "Click Here to Continue" },
				},
			},
			{
				note = "This requires the Key to the City, which drops from Magistrate barthilas in Stratholme - Live.",
				goals = {
					{ t = "goto", text = "click Elders' Square Service Gate", map = 1423, x = 41.43, y = 17.71 },
				},
			},
			{
				note = "This requires the Key to the City or a Rogue with leveled lockpicking to open. Inside the chapel to the right as you enter.",
				goals = {
					{ t = "accept", quest = 5122, title = "The Medallion of Faith", npc = 10917, npcName = "Aurius" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5122, title = "The Medallion of Faith", note = "Click Here to Continue" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5282, title = "The Restless Souls", npc = 11140, npcName = "Egan", map = 1423, x = 11.4, y = 26.6, f = "e" },
				},
			},
			{
				note = "He walks around this area.",
				goals = {
					{ t = "goto", text = "Leave Strathlome Dungeon", map = 1423, x = 41.47, y = 17.98 },
					{ t = "goto", text = "Enter the cave", map = 1423, x = 12.18, y = 22.6 },
					{ t = "goto", text = "Follow the path", map = 1423, x = 10.71, y = 25.1 },
					{ t = "goto", text = "Leave the cave", map = 1423, x = 5.1, y = 32.85 },
					{ t = "turnin", quest = 5848, title = "Of Love and Family", npc = 1855, npcName = "Tirion Fordring", map = 1423, x = 5.16, y = 35.57, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5214, title = "The Great Fras Siabi", npc = 11033, npcName = "Smokey LaRue", map = 1423, x = 70.87, y = 48.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5251, title = "The Archivist", npc = 11039, npcName = "Duke Nicholas Zverenhoff", map = 1423, x = 71.63, y = 50.09, f = "e" },
				},
			},
			{
				note = "He is the last boss of the Live Side of Stratholme. He is at the very end of The Scarlet Bastion, across from where Archivist Galford was.",
				goals = {
					{ t = "collect", quest = 5262, item = 13250, itemName = "Head of Balnazzar" },
				},
			},
			{
				goals = {
					{ t = "use", item = 13250, itemName = "Head of Balnazzar" },
					{ t = "accept", quest = 5262, title = "The Truth Comes Crashing Down" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5262, title = "The Truth Comes Crashing Down", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5262, title = "The Truth Comes Crashing Down", npc = 11039, npcName = "Duke Nicholas Zverenhoff", map = 1423, x = 71.63, y = 50.09, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-stratholme-undead-side-quests",
		pack = "guides",
		title = "Stratholme - Undead Side Quests",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1422,
		version = 1,
		steps = {
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 55 },
				},
			},
			{
				note = "Click through the dialogue.",
				goals = {
					{ t = "accept", quest = 5382, title = "Doctor Theolen Krastinov, the Butcher", npc = 11216, npcName = "Eva Sarkhoff", map = 1422, x = 70.22, y = 73.72, f = "e" },
				},
			},
			{
				note = "This requires the Skeleton Key from the quest \"The Key to Scholomance\".",
				goals = {
					{ t = "complete", quest = 5382, title = "Doctor Theolen Krastinov, the Butcher", note = "Enter the Scholomance Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the dungeon, follow the path forward to enter The Reliquary. Go left and proceed through the Iron Gate on the north side of the room to reach the Chamber of Summoning. Continue straight through the dungeon to reach The Great Ossuary. Jump down into one of the holes on the sides of the room to reach the lower level with Rattlegore. This key is required to progress further into the dungeon. If someone else in the group already has it you can skip this step.",
				goals = {
					{ t = "collect", quest = 5382, item = 13873, itemName = "Viewing Room Key" },
				},
			},
			{
				note = "They look like a pile of bloodied bones in the northern part of the room with Doctor Theolen Krastinov. Go back upstairs after killing Rattlegore and head north in The Great Ossuary to return to the previous room (the map will just say Scholomance). Go right through the Iron Gate, clear the room and open the Viewing Room Door using the key. Take a quick left in The Viewing Room, go through the Iron Gate and follow the stairs down to reach the Headmaster's Study. Staying on the upper level of the Headmaster's Study, head around the outside of the room and enter the room across from the entrance on the eastern side.",
				goals = {
					{ t = "complete", quest = 5382, title = "Doctor Theolen Krastinov, the Butcher", note = "Burn the Remains of Eva Sarkhoff" },
				},
			},
			{
				note = "They look like a pile of bloodied bones in the southeastern part of the room with Doctor Theolen Krastinov.",
				goals = {
					{ t = "complete", quest = 5382, title = "Doctor Theolen Krastinov, the Butcher", note = "Burn the Remains of Lucien Sarkhoff" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5382, npc = 11261, target = "Doctor Theolen Krastinov", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5382, title = "Doctor Theolen Krastinov, the Butcher", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5382, title = "Doctor Theolen Krastinov, the Butcher", npc = 11216, npcName = "Eva Sarkhoff", map = 1422, x = 70.22, y = 73.72, f = "e" },
					{ t = "accept", quest = 5515, title = "Krastinov's Bag of Horrors", npc = 11216, npcName = "Eva Sarkhoff", map = 1422, x = 70.22, y = 73.72, f = "e" },
				},
			},
			{
				note = "This requires the Skeleton Key from the quest \"The Key to Scholomance\".",
				goals = {
					{ t = "complete", quest = 5515, title = "Krastinov's Bag of Horrors", note = "Enter the Scholomance Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the dungeon, follow the path forward to enter The Reliquary. Go left and proceed through the Iron Gate on the north side of the room to reach the Chamber of Summoning. Proceed into the next main room and then follow the path to the right and go down the stairs. Jandice is in the northeastern part of this room.",
				goals = {
					{ t = "collect", quest = 5515, item = 13725, itemName = "Krastinov's Bag of Horrors", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5515, title = "Krastinov's Bag of Horrors", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5515, title = "Krastinov's Bag of Horrors", npc = 11216, npcName = "Eva Sarkhoff", map = 1422, x = 70.22, y = 73.72, f = "e" },
					{ t = "accept", quest = 5384, title = "Kirtonos the Herald", npc = 11216, npcName = "Eva Sarkhoff", map = 1422, x = 70.22, y = 73.72, f = "e" },
				},
			},
			{
				note = "This requires the Skeleton Key from the quest \"The Key to Scholomance\".",
				goals = {
					{ t = "complete", quest = 5384, title = "Kirtonos the Herald", note = "Enter the Scholomance Dungeon with Your Group" },
				},
			},
			{
				note = "After entering the dungeon, follow the path forward to enter The Reliquary. Go left and proceed through the Iron Gate on the north side of the room to reach the Chamber of Summoning. Follow the path out to the right to the balcony. Clear the Chamber of Summoning before doing this. Drag him back into the gate.",
				goals = {
					{ t = "kill", quest = 5384, npc = 10506, target = "Kirtonos the Herald", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5384, title = "Kirtonos the Herald", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5384, title = "Kirtonos the Herald", npc = 11216, npcName = "Eva Sarkhoff", map = 1422, x = 70.22, y = 73.72, f = "e" },
				},
			},
			{
				note = "Use the Leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 57 },
				},
			},
			{
				note = "You must have the Spectral Essence equipped to see him.",
				goals = {
					{ t = "use", item = 13544, itemName = "Spectral Essence" },
					{ t = "accept", quest = 5461, title = "The Human, Ras Frostwhisper", npc = 11286, npcName = "Magistrate Marduke", map = 1422, x = 70.57, y = 74.11, f = "e" },
				},
			},
			{
				note = "It looks like a small red book at the top of the tower. If it's not there, check in the fireplaces of nearby buildings.",
				goals = {
					{ t = "collect", quest = 5461, item = 13585, itemName = "Keepsake of Remembrance", oi = 1, map = 1417, x = 17.91, y = 69.41, f = "e" },
				},
			},
			{
				note = "You must have the Spectral Essence equipped to see him.",
				goals = {
					{ t = "use", item = 13544, itemName = "Spectral Essence" },
					{ t = "turnin", quest = 5461, title = "The Human, Ras Frostwhisper", npc = 11286, npcName = "Magistrate Marduke", map = 1422, x = 70.57, y = 74.11, f = "e" },
					{ t = "accept", quest = 5462, title = "The Dying, Ras Frostwhisper", npc = 11286, npcName = "Magistrate Marduke", map = 1422, x = 70.57, y = 74.11, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5462, title = "The Dying, Ras Frostwhisper", npc = 11036, npcName = "Leonid Barthalomew the Revered", map = 1423, x = 71.88, y = 48.29, f = "e" },
					{ t = "accept", quest = 5463, title = "Menethil's Gift", npc = 11036, npcName = "Leonid Barthalomew the Revered", map = 1423, x = 71.88, y = 48.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5251, title = "The Archivist", npc = 11039, npcName = "Duke Nicholas Zverenhoff", map = 1423, x = 71.63, y = 50.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5251, title = "The Archivist", note = "Enter the Stratholme - Live Dungeon with Your Group" },
				},
			},
			{
				note = "Go left after entering, then north and then west once you enter Market Row to reach Crusader's Square. This requires The Scarlet Key from the Scarlet Monastery dungeon or a Rogue with leveled lockpicking to open. Enter The Hall of Lights, go down the hall and enter the small room on the left. In the same room as Malor the Zealous. It looks like a small toolbox in the corner of the room.",
				goals = {
					{ t = "collect", quest = 5122, item = 12845, itemName = "Medallion of Faith" },
				},
			},
			{
				note = "This requires The Scarlet Key from the Scarlet Monastery dungeon or a Rogue with leveled lockpicking to open. Go across the hall from The Hall of Lights to enter The Scarlet Bastion. He is near the end of The Scarlet Bastion across from Grand Crusader Dathrohan.",
				goals = {
					{ t = "complete", quest = 5251, title = "The Archivist", note = "Slay Archivist Galford" },
				},
			},
			{
				note = "It looks like a small brown book on the table in the room where Archivist Galford is.",
				goals = {
					{ t = "complete", quest = 5251, title = "The Archivist", note = "Burn the Archive" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5251, title = "The Archivist", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5251, title = "The Archivist", npc = 11039, npcName = "Duke Nicholas Zverenhoff", map = 1423, x = 71.63, y = 50.09, f = "e" },
				},
			},
			{
				note = "He is the last boss of the Live Side of Stratholme. He is at the very end of The Scarlet Bastion, across from where Archivist Galford was.",
				goals = {
					{ t = "collect", quest = 5262, item = 13250, itemName = "Head of Balnazzar" },
				},
			},
			{
				goals = {
					{ t = "use", item = 13250, itemName = "Head of Balnazzar" },
					{ t = "accept", quest = 5262, title = "The Truth Comes Crashing Down" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5262, title = "The Truth Comes Crashing Down", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5262, title = "The Truth Comes Crashing Down", npc = 11039, npcName = "Duke Nicholas Zverenhoff", map = 1423, x = 71.63, y = 50.09, f = "e" },
					{ t = "accept", quest = 5263, title = "Above and Beyond", npc = 11039, npcName = "Duke Nicholas Zverenhoff", map = 1423, x = 71.63, y = 50.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5212, title = "The Flesh Does Not Lie", npc = 11035, npcName = "Betina Bigglezink", map = 1423, x = 71.66, y = 49.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 5243, title = "Houses of the Holy", npc = 11036, npcName = "Leonid Barthalomew the Revered", map = 1423, x = 71.89, y = 48.29, f = "e" },
				},
			},
			{
				note = "This requires the Key to the City, which drops from Magistrate barthilas in Stratholme - Live.",
				goals = {
					{ t = "goto", text = "click Elders' Square Service Gate", map = 1423, x = 41.43, y = 17.71 },
					{ t = "complete", quest = 5263, title = "Above and Beyond", note = "Enter the Stratholme - Undead Dungeon with Your Group" },
				},
			},
			{
				note = "This requires the Key to the City or a Rogue with leveled lockpicking to open. Inside the chapel to the right as you enter.",
				goals = {
					{ t = "accept", quest = 5122, title = "The Medallion of Faith", npc = 10917, npcName = "Aurius" },
				},
			},
			{
				note = "Enter the building in Slaughter Square and go downstairs.",
				goals = {
					{ t = "collect", quest = 5263, item = 13251, itemName = "Head of Baron Rivendare", oi = 1 },
				},
			},
			{
				note = "On the floor in the room with Baron Rivendare. He appears if you've completed The Medallion of Faith quest. He will not appear again if you fail to kill the Baron and you will have to wait for a reset to try again.",
				goals = {
					{ t = "accept", quest = 5125, title = "Aurius' Reckoning", npc = 10917, npcName = "Aurius" },
				},
			},
			{
				note = "It looks like a large orange circular symbol on the floor in the room with Baron Rivendare.",
				goals = {
					{ t = "turnin", quest = 5463, title = "Menethil's Gift" },
					{ t = "accept", quest = 5464, title = "Menethil's Gift" },
				},
			},
			{
				label = "Collect_20_Plagued_Flesh_Sample",
				along = true,
				goals = {
					{ t = "collect", quest = 5212, item = 13174, itemName = "Plagued Flesh Sample", count = 20, oi = 1 },
				},
			},
			{
				label = "Collect_5_Stratholme_Holy_Water",
				along = true,
				note = "They look like brown boxes along the walls of the dungeon. They will sometimes spawn enemies instead.",
				goals = {
					{ t = "collect", quest = 5243, item = 13180, itemName = "Stratholme Holy Water", count = 5, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5243, title = "Houses of the Holy", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5263, title = "Above and Beyond", npc = 11039, npcName = "Duke Nicholas Zverenhoff", map = 1423, x = 71.63, y = 50.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5212, title = "The Flesh Does Not Lie", npc = 11035, npcName = "Betina Bigglezink", map = 1423, x = 71.66, y = 49.93, f = "e" },
					{ t = "accept", quest = 5213, title = "The Active Agent", npc = 11035, npcName = "Betina Bigglezink", map = 1423, x = 71.66, y = 49.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5464, title = "Menethil's Gift", npc = 11036, npcName = "Leonid Barthalomew the Revered", map = 1423, x = 71.88, y = 48.29, f = "e" },
					{ t = "turnin", quest = 5243, title = "Houses of the Holy", npc = 11036, npcName = "Leonid Barthalomew the Revered", map = 1423, x = 71.89, y = 48.29, f = "e" },
				},
			},
			{
				note = "This requires the Key to the City, which drops from Magistrate barthilas in Stratholme - Live.",
				goals = {
					{ t = "goto", text = "click Elders' Square Service Gate", map = 1423, x = 41.43, y = 17.71 },
					{ t = "complete", quest = 5213, title = "The Active Agent", note = "Enter the Stratholme - Undead Dungeon with Your Group" },
				},
			},
			{
				note = "It looks like a small metal box in one of the three Ziggurats in The Gauntlet area. Follow the path north and then east through the two Gauntlet Gates to reach the Gauntlet. This requires the Key to the City or a Rogue with leveled lockpicking to open.",
				goals = {
					{ t = "collect", quest = 5213, item = 13176, itemName = "Scourge Data", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5213, title = "The Active Agent", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5213, title = "The Active Agent", npc = 11035, npcName = "Betina Bigglezink", map = 1423, x = 71.66, y = 49.93, f = "e" },
				},
			},
		},
	})
end

