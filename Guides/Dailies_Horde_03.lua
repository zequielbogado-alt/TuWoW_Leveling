-- TuWoW_Leveling — Guides/Dailies_Horde_03.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-icecrown-full-zone-quest-path-includes-regular-dailies-pre-q",
		pack = "guides",
		title = "Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) (Parte 1/4)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		next = "zygor/dailies/h-dai-icecrown-icecrown-full-zone-quest-path-includes-regular-dailies-pre-q-part-2",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "getfp", location = "The Argent Vanguard", text = "The Argent Vanguard", map = 118, x = 87.8, y = 78.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13036, title = "Honor Above All Else", npc = 28179, npcName = "Highlord Tirion Fordring", map = 118, x = 87.5, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13036, title = "Honor Above All Else", npc = 30223, npcName = "Crusade Commander Entari", map = 118, x = 87.1, y = 75.8, f = "e" },
					{ t = "accept", quest = 13008, title = "Scourge Tactics", npc = 30223, npcName = "Crusade Commander Entari", map = 118, x = 87.1, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13040, title = "Curing The Incurable", npc = 30226, npcName = "Father Gustav", map = 118, x = 86.8, y = 76.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13039, title = "Defending The Vanguard", npc = 30224, npcName = "Crusade Lord Dalfors", map = 118, x = 86.1, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13039, target = "Forgotten Depths Nerubian", count = 15, oi = 1, map = 118, x = 84.4, y = 74.3, f = "e" },
					{ t = "collect", quest = 13040, itemName = "Forgotten Depths Venom Sac", count = 10, oi = 1, map = 118, x = 84.4, y = 74.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13039, title = "Defending The Vanguard", npc = 30224, npcName = "Crusade Lord Dalfors", map = 118, x = 86.1, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13040, title = "Curing The Incurable", npc = 30226, npcName = "Father Gustav", map = 118, x = 86.8, y = 76.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13008, title = "Scourge Tactics", npc = 30223, npcName = "Crusade Commander Entari", map = 118, x = 87.1, y = 75.8, f = "e" },
					{ t = "accept", quest = 13044, title = "If There Are Survivors...", npc = 30223, npcName = "Crusade Commander Entari", map = 118, x = 87.1, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13044, title = "If There Are Survivors...", npc = 30227, npcName = "Penumbrius", map = 118, x = 87.0, y = 79.0, f = "e" },
					{ t = "accept", quest = 13045, title = "Into The Wild Green Yonder", npc = 30227, npcName = "Penumbrius", map = 118, x = 87.0, y = 79.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 87.1, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 79.0, y = 67.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13045, title = "Into The Wild Green Yonder", npc = 28179, npcName = "Highlord Tirion Fordring", map = 118, x = 87.5, y = 75.8, f = "e" },
					{ t = "accept", quest = 13070, title = "A Cold Front Approaches", npc = 28179, npcName = "Highlord Tirion Fordring", map = 118, x = 87.5, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13070, title = "A Cold Front Approaches", npc = 30657, npcName = "Siegemaster Fezzik", map = 118, x = 85.6, y = 76.0, f = "e" },
					{ t = "accept", quest = 13086, title = "The Last Line Of Defense", npc = 30657, npcName = "Siegemaster Fezzik", map = 118, x = 85.6, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 85.3, y = 75.9, f = "e" },
				},
			},
			{
				note = "Use the skills on your hotbar to kill scourge mobs and dragons",
				goals = {
					{ t = "kill", quest = 13086, target = "Scourge Attacker", count = 100, oi = 1, f = "e" },
					{ t = "kill", quest = 13086, target = "Frostbrood Destroyer", count = 3, oi = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13086, title = "The Last Line Of Defense", npc = 30657, npcName = "Siegemaster Fezzik", map = 118, x = 85.6, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13105, title = "Once More Unto The Breach, Hero", npc = 30677, npcName = "Highlord Tirion Fordring", map = 118, x = 86.0, y = 75.8, f = "e" },
					{ t = "accept", quest = 13104, title = "Once More Unto The Breach, Hero", npc = 30677, npcName = "Highlord Tirion Fordring", map = 118, x = 86.0, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13105, title = "Once More Unto The Breach, Hero", npc = 30596, npcName = "The Ebon Watcher", map = 118, x = 83.0, y = 72.9, f = "e" },
					{ t = "turnin", quest = 13104, title = "Once More Unto The Breach, Hero", npc = 30596, npcName = "The Ebon Watcher", map = 118, x = 83.0, y = 72.9, f = "e" },
					{ t = "accept", quest = 13118, title = "The Purging Of Scourgeholme", npc = 30596, npcName = "The Ebon Watcher", map = 118, x = 83.0, y = 72.9, f = "e" },
					{ t = "accept", quest = 13122, title = "The Scourgestone", npc = 30596, npcName = "The Ebon Watcher", map = 118, x = 83.0, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13130, title = "The Stone That Started A Revolution", npc = 30686, npcName = "Crusade Architect Silas", map = 118, x = 83.0, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13135, title = "It Could Kill Us All", npc = 30714, npcName = "Crusade Engineer Spitzpatrick", map = 118, x = 83.0, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13110, title = "The Restless Dead", npc = 30683, npcName = "Father Gustav", map = 118, x = 82.9, y = 72.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13118, target = "Reanimated Crusader", count = 8, oi = 3, map = 118, x = 80.4, y = 68.2, f = "e" },
					{ t = "kill", quest = 13118, target = "Forgotten Depths Underking", count = 3, oi = 2, map = 118, x = 80.4, y = 68.2, f = "e" },
					{ t = "collect", quest = 13122, itemName = "Scourgestone", count = 15, oi = 1, map = 118, x = 80.4, y = 68.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13118, target = "Forgotten Depths High Priest", count = 3, oi = 1, map = 118, x = 78.7, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13110, title = "The Restless Dead", npc = 30683, npcName = "Father Gustav", map = 118, x = 82.9, y = 72.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13118, title = "The Purging Of Scourgeholme", npc = 30596, npcName = "The Ebon Watcher", map = 118, x = 83.0, y = 72.9, f = "e" },
					{ t = "turnin", quest = 13122, title = "The Scourgestone", npc = 30596, npcName = "The Ebon Watcher", map = 118, x = 83.0, y = 72.9, f = "e" },
					{ t = "accept", quest = 13125, title = "The Air Stands Still", npc = 30596, npcName = "The Ebon Watcher", map = 118, x = 83.0, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 30829, target = "Salranax the Flesh Render", count = 1, map = 118, x = 77.6, y = 62.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 30831, target = "High Priest Yath'amon", count = 1, map = 118, x = 79.7, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 30830, target = "Underking Talonox", count = 1, map = 118, x = 76.6, y = 54.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13125, title = "The Air Stands Still", npc = 30596, npcName = "The Ebon Watcher", map = 118, x = 83.0, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13135, itemName = "Crystallized Energy", count = 8, oi = 1, map = 127, x = 59.9, y = 57.2, f = "e" },
					{ t = "collect", quest = 13130, itemName = "Crystalline Heartwood", count = 10, oi = 1, map = 127, x = 59.9, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13130, itemName = "Ancient Elven Masonry", count = 10, oi = 2, map = 127, x = 73.8, y = 53.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13130, title = "The Stone That Started A Revolution", npc = 30686, npcName = "Crusade Architect Silas", map = 118, x = 83.0, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13135, title = "It Could Kill Us All", npc = 30714, npcName = "Crusade Engineer Spitzpatrick", map = 118, x = 83.0, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13139, title = "Into The Frozen Heart Of Northrend", npc = 30683, npcName = "Father Gustav", map = 118, x = 82.9, y = 72.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13139, title = "Into The Frozen Heart Of Northrend", npc = 30677, npcName = "Highlord Tirion Fordring", map = 118, x = 86.0, y = 75.8, f = "e" },
					{ t = "accept", quest = 13141, title = "The Battle For Crusaders' Pinnacle", npc = 30677, npcName = "Highlord Tirion Fordring", map = 118, x = 86.0, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 80.1, y = 72.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13141, title = "The Battle For Crusaders' Pinnacle", npc = 30683, npcName = "Father Gustav", map = 118, x = 82.9, y = 72.8, f = "e" },
					{ t = "accept", quest = 13157, title = "The Crusaders' Pinnacle", npc = 30683, npcName = "Father Gustav", map = 118, x = 82.9, y = 72.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13157, title = "The Crusaders' Pinnacle", npc = 31044, npcName = "Highlord Tirion Fordring", map = 118, x = 79.8, y = 71.8, f = "e" },
					{ t = "accept", quest = 13068, title = "A Tale of Valor", npc = 31044, npcName = "Highlord Tirion Fordring", map = 118, x = 79.8, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13224, title = "Orgrim's Hammer", npc = 31240, npcName = "Warlord Hork Strongbrow", map = 118, x = 79.5, y = 72.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Crusaders' Pinnacle", text = "Crusaders' Pinnacle", map = 118, x = 79.4, y = 72.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13068, title = "A Tale of Valor", npc = 30562, npcName = "Crusader Bridenbrad", map = 118, x = 79.8, y = 30.8, f = "e" },
					{ t = "accept", quest = 13072, title = "A Hero Remains", npc = 30562, npcName = "Crusader Bridenbrad", map = 118, x = 79.8, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13072, title = "A Hero Remains", npc = 31044, npcName = "Highlord Tirion Fordring", map = 118, x = 79.8, y = 71.8, f = "e" },
					{ t = "accept", quest = 13073, title = "The Keeper's Favor", npc = 31044, npcName = "Highlord Tirion Fordring", map = 118, x = 79.8, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30630, npcName = "Arch Druid Lilliandra", map = 118, x = 87.1, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13073, title = "The Keeper's Favor", npc = 11832, npcName = "Keeper Remulos", map = 1450, x = 36.2, y = 41.8, f = "e" },
					{ t = "accept", quest = 13074, title = "Hope Within the Emerald Nightmare", npc = 11832, npcName = "Keeper Remulos", map = 1450, x = 36.2, y = 41.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13074, itemName = "Emerald Acorn", count = 3, oi = 1, map = 1450, x = 33.7, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13074, title = "Hope Within the Emerald Nightmare", npc = 11832, npcName = "Keeper Remulos", map = 1450, x = 36.2, y = 41.8, f = "e" },
					{ t = "accept", quest = 13075, title = "The Boon of Remulos", npc = 11832, npcName = "Keeper Remulos", map = 1450, x = 36.2, y = 41.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13075, title = "The Boon of Remulos", npc = 30562, npcName = "Crusader Bridenbrad", map = 1450, x = 79.8, y = 30.8, f = "e" },
					{ t = "accept", quest = 13076, title = "Time Yet Remains", npc = 30562, npcName = "Crusader Bridenbrad", map = 1450, x = 79.8, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13076, title = "Time Yet Remains", npc = 31044, npcName = "Highlord Tirion Fordring", map = 1450, x = 79.8, y = 71.8, f = "e" },
					{ t = "accept", quest = 13077, title = "The Touch of an Aspect", npc = 31044, npcName = "Highlord Tirion Fordring", map = 1450, x = 79.8, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 31069, npcName = "Penumbrius", map = 1450, x = 79.4, y = 72.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13077, title = "The Touch of an Aspect", npc = 26917, npcName = "Alexstrasza the Life-Binder", map = 115, x = 59.8, y = 54.7, f = "e" },
					{ t = "accept", quest = 13078, title = "Dahlia's Tears", npc = 26917, npcName = "Alexstrasza the Life-Binder", map = 115, x = 59.8, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26949, npcName = "Torastrasza", map = 115, x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13078, itemName = "Dahlia's Tears", count = 1, oi = 1, map = 115, x = 43.2, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13078, title = "Dahlia's Tears", npc = 26917, npcName = "Alexstrasza the Life-Binder", map = 115, x = 59.8, y = 54.7, f = "e" },
					{ t = "accept", quest = 13079, title = "The Boon of Alexstrasza", npc = 26917, npcName = "Alexstrasza the Life-Binder", map = 115, x = 59.8, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26949, npcName = "Torastrasza", map = 115, x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26851, npcName = "Nethestrasz", map = 115, x = 60.3, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13079, title = "The Boon of Alexstrasza", npc = 30562, npcName = "Crusader Bridenbrad", map = 115, x = 79.8, y = 30.8, f = "e" },
					{ t = "accept", quest = 13080, title = "Hope Yet Remains", npc = 30562, npcName = "Crusader Bridenbrad", map = 115, x = 79.8, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13080, title = "Hope Yet Remains", npc = 31044, npcName = "Highlord Tirion Fordring", map = 115, x = 79.8, y = 71.8, f = "e" },
					{ t = "accept", quest = 13081, title = "The Will of the Naaru", npc = 31044, npcName = "Highlord Tirion Fordring", map = 115, x = 79.8, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13081, title = "The Will of the Naaru", npc = 18481, npcName = "A'dal", map = 1955, x = 54.0, y = 44.8, f = "e" },
					{ t = "accept", quest = 13082, title = "The Boon of A'dal", npc = 18481, npcName = "A'dal", map = 1955, x = 54.0, y = 44.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 28674, npcName = "Aludane Whitecloud", map = 125, x = 72.2, y = 45.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13082, title = "The Boon of A'dal", npc = 30562, npcName = "Crusader Bridenbrad", map = 118, x = 79.8, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13083, title = "Light Within the Darkness", npc = 192833, npcName = "Bridenbrad's Possessions", map = 118, x = 79.8, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13083, title = "Light Within the Darkness", npc = 31044, npcName = "Highlord Tirion Fordring", map = 118, x = 79.8, y = 71.8, f = "e" },
				},
			},
			{
				note = "Orgrim's Hammer flies in a triangular pattern using these points:",
				goals = {
					{ t = "talk", npc = 30824, npcName = "Sky-Reaver Korm Blackscar", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "accept", quest = 12892, title = "It's All Fun and Games", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "accept", quest = 13330, title = "Blood of the Chosen", npc = 32301, npcName = "Warbringer Davos Rioht", f = "e" },
					{ t = "accept", quest = 13340, title = "Joining the Assault", npc = 32301, npcName = "Warbringer Davos Rioht", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "accept", quest = 13302, title = "Slaves to Saronite", npc = 31261, npcName = "Brother Keltan", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "accept", quest = 13293, title = "Get to Ymirheim!", npc = 30825, npcName = "Chief Engineer Copperclaw", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13340, title = "Joining the Assault", npc = 31834, npcName = "Ground Commander Xutjja", map = 118, x = 58.3, y = 46.0, f = "e" },
					{ t = "accept", quest = 13310, title = "Assault by Air", npc = 31834, npcName = "Ground Commander Xutjja", map = 118, x = 58.3, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13301, title = "Assault by Ground", npc = 31833, npcName = "Kor'kron Squad Leader", map = 118, x = 58.2, y = 45.9, f = "e" },
				},
			},
			{
				note = "The entrance to the cave starts here, go inside the cave,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 57.0, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 56.0, y = 57.6, f = "e" },
				},
			},
			{
				note = "Go outside the cave,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 57.0, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13330, target = "Ymirheim Vrykul", count = 20, oi = 1, map = 118, x = 57.3, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13293, title = "Get to Ymirheim!", npc = 31781, npcName = "Blast Thunderbomb", map = 118, x = 51.9, y = 57.6, f = "e" },
					{ t = "accept", quest = 13283, title = "King of the Mountain", npc = 31781, npcName = "Blast Thunderbomb", map = 118, x = 51.9, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 51.9, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 54.9, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13283, title = "King of the Mountain", npc = 31781, npcName = "Blast Thunderbomb", map = 118, x = 51.9, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13301, title = "Assault by Ground", npc = 31834, npcName = "Ground Commander Xutjja", map = 118, x = 58.3, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 59.5, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13310, title = "Assault by Air", npc = 31834, npcName = "Ground Commander Xutjja", map = 118, x = 58.3, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 31273, npcName = "Dying Berserker", map = 118, x = 69.0, y = 67.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13230, title = "Avenge Me!", npc = 31273, npcName = "Dying Berserker", map = 118, x = 69.0, y = 67.3, f = "e" },
				},
			},
		},
	})
end

