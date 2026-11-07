-- TuWoW_Leveling — Guides/Dailies_Alliance_03.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-howling-fjord-steel-gate-dailies",
		pack = "guides",
		title = "Steel Gate Dailies",
		category = "Dailies",
		folder = "Howling Fjord",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 117,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11391, title = "Steel Gate Patrol", npc = 24399, npcName = "Steel Gate Chief Archaeologist", map = 117, x = 30.8, y = 28.6, f = "e" },
				},
			},
			{
				note = "Use the abilities on your hotbar as you fly around to fight the flying gargoyles",
				goals = {
					{ t = "kill", quest = 11391, target = "Gjalerbron Gargoyle", count = 8, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11391, title = "Steel Gate Patrol", npc = 24399, npcName = "Steel Gate Chief Archaeologist", map = 117, x = 30.8, y = 28.6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-howling-fjord-kamagua-dailies",
		pack = "guides",
		title = "Kamagua Dailies",
		category = "Dailies",
		folder = "Howling Fjord",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 117,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11472, title = "The Way to His Heart...", npc = 24810, npcName = "Anuniaq", map = 117, x = 24.6, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Great Reef Sharks", count = 1, map = 117, x = 28.9, y = 74.8, f = "e" },
					{ t = "collect", quest = 11472, item = 34127, itemName = "Tasty Reef Fish", count = 10, map = 117, x = 28.9, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 31.0, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11472, title = "The Way to His Heart...", npc = 24810, npcName = "Anuniaq", map = 117, x = 24.6, y = 58.9, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-howling-fjord-westguard-keep-dailies",
		pack = "guides",
		title = "Westguard Keep Dailies",
		category = "Dailies",
		folder = "Howling Fjord",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 117,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11153, title = "Break the Blockade", npc = 23895, npcName = "Bombardier Petrov", map = 117, x = 29.0, y = 41.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11153, target = "Blockade Pirate", count = 25, oi = 1, map = 117, x = 28.1, y = 42.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11153, title = "Break the Blockade", npc = 23895, npcName = "Bombardier Petrov", map = 117, x = 29.0, y = 41.9, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-icecrown-full-zone-quest-path-includes-regular-dailies-pre-q",
		pack = "guides",
		title = "Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) (Parte 1/4)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		next = "zygor/dailies/a-dai-icecrown-icecrown-full-zone-quest-path-includes-regular-dailies-pre-q-part-2",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "fpath", text = "The Argent Vanguard", map = 118, x = 87.8, y = 78.1, f = "e" },
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
					{ t = "accept", quest = 13225, title = "The Skybreaker", npc = 31241, npcName = "Marshal Ivalius", map = 118, x = 79.4, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Crusaders' Pinnacle", map = 118, x = 79.4, y = 72.4, f = "e" },
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
				note = "The Skybreaker flies in a circular pattern using these points:",
				goals = {
					{ t = "talk", npc = 30344, npcName = "High Captain Justin Bartlett", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "accept", quest = 12887, title = "It's All Fun and Games", npc = 29799, npcName = "Thassarian", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "accept", quest = 13336, title = "Blood of the Chosen", npc = 32302, npcName = "Knight-Captain Drosche", f = "e" },
					{ t = "accept", quest = 13341, title = "Joining the Assault", npc = 32302, npcName = "Knight-Captain Drosche", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "accept", quest = 13300, title = "Slaves to Saronite", npc = 31259, npcName = "Absalan the Pious", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "accept", quest = 13296, title = "Get to Ymirheim!", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13341, title = "Joining the Assault", npc = 31808, npcName = "Ground Commander Koup", map = 118, x = 62.6, y = 51.3, f = "e" },
					{ t = "accept", quest = 13309, title = "Assault by Air", npc = 31808, npcName = "Ground Commander Koup", map = 118, x = 62.6, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13284, title = "Assault by Ground", npc = 31737, npcName = "Skybreaker Squad Leader", map = 118, x = 62.5, y = 51.1, f = "e" },
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
					{ t = "kill", quest = 13336, target = "Ymirheim Vrykul", count = 20, oi = 1, map = 118, x = 57.3, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13296, title = "Get to Ymirheim!", npc = 31776, npcName = "Frazzle Geargrinder", map = 118, x = 57.0, y = 62.5, f = "e" },
					{ t = "accept", quest = 13280, title = "King of the Mountain", npc = 31776, npcName = "Frazzle Geargrinder", map = 118, x = 57.0, y = 62.5, f = "e" },
				},
			},
			{
				note = "Click Geargrinder's Jumpbot to get in the robot |invehicle",
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
					{ t = "turnin", quest = 13280, title = "King of the Mountain", npc = 31776, npcName = "Frazzle Geargrinder", map = 118, x = 57.0, y = 62.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13284, title = "Assault by Ground", npc = 31808, npcName = "Ground Commander Koup", map = 118, x = 62.6, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 62.6, y = 50.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13309, title = "Assault by Air", npc = 31808, npcName = "Ground Commander Koup", map = 118, x = 62.6, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 31304, npcName = "Dying Soldier", map = 118, x = 69.0, y = 67.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13232, title = "Finish Me!", npc = 31304, npcName = "Dying Soldier", map = 118, x = 69.0, y = 67.3, f = "e" },
				},
			},
		},
	})
end

