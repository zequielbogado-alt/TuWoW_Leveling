-- TuWoW_Leveling — Guides/Leveling_Horde_37.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-scepter-of-the-shifting-sands",
		pack = "guides",
		title = "Scepter of the Shifting Sands",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1451,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 8286, title = "What Tomorrow Brings", npc = 15180, npcName = "Baristolth of the Shifting Sands", map = 1451, x = 49.45, y = 36.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1446, x = 61.19, y = 50.58 },
					{ t = "complete", quest = 8286, title = "What Tomorrow Brings", note = "Discover the Brood of Nozdormu", map = 1446, x = 64.24, y = 50.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8286, title = "What Tomorrow Brings", npc = 15180, npcName = "Baristolth of the Shifting Sands", map = 1451, x = 49.45, y = 36.45, f = "e" },
					{ t = "accept", quest = 8288, title = "Only One May Rise", npc = 15180, npcName = "Baristolth of the Shifting Sands", map = 1451, x = 49.45, y = 36.45, f = "e" },
				},
			},
			{
				note = "It's the third boss in the Blackwing Lair raid. You will need a raid group for this.",
				goals = {
					{ t = "collect", quest = 8288, item = 20383, itemName = "Head of the Broodlord Lashlayer", oi = 1 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8288, title = "Only One May Rise", npc = 15180, npcName = "Baristolth of the Shifting Sands", map = 1451, x = 49.45, y = 36.45, f = "e" },
					{ t = "accept", quest = 8301, title = "The Path of the Righteous", npc = 15180, npcName = "Baristolth of the Shifting Sands", map = 1451, x = 49.45, y = 36.45, f = "e" },
				},
			},
			{
				note = "They look like large bugs. These enemies are elite and may require a group to kill.",
				goals = {
					{ t = "collect", quest = 8301, item = 20384, itemName = "Silithid Carapace Fragment", count = 200, oi = 1, map = 1451, x = 45.22, y = 26.25, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8301, title = "The Path of the Righteous", npc = 15180, npcName = "Baristolth of the Shifting Sands", map = 1451, x = 49.45, y = 36.45, f = "e" },
				},
			},
			{
				label = "Accept_The_Hand_of_the_Righteous",
				goals = {
					{ t = "accept", quest = 8302, title = "The Hand of the Righteous", npc = 15180, npcName = "Baristolth of the Shifting Sands", map = 1451, x = 49.45, y = 36.45, f = "e" },
				},
			},
			{
				note = "They look like large bugs. These enemies are elite and may require a group to kill. You will repeat this quest until neutral with the Brood of Nozdormu faction. This requires around 41,400 carapace fragments, so it's best to find a group.",
				goals = {
					{ t = "collect", quest = 8302, item = 20384, itemName = "Silithid Carapace Fragment", count = 200, oi = 1, map = 1451, x = 45.22, y = 26.25, f = "e" },
				},
			},
			{
				note = "Each time you turn in this quest you will receive a \"Proxy of Nozdormu\" item. Target a friend and use the item to deputize them so they can collect carapace fragments as well. You must use or destroy your previous \"Proxy of Nozdormu\" before you can complete this quest.",
				goals = {
					{ t = "turnin", quest = 8302, title = "The Hand of the Righteous", npc = 15180, npcName = "Baristolth of the Shifting Sands", map = 1451, x = 49.45, y = 36.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8303, title = "Anachronos", npc = 15180, npcName = "Baristolth of the Shifting Sands", map = 1451, x = 49.45, y = 36.45, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8303, title = "Anachronos", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8305, title = "Long Forgotten Memories", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				note = "It's a small red crystal on the ground.",
				goals = {
					{ t = "turnin", quest = 8305, title = "Long Forgotten Memories", map = 1451, x = 28.67, y = 89.14, f = "e" },
					{ t = "accept", quest = 8519, title = "A Pawn on the Eternal Board", map = 1451, x = 28.67, y = 89.14, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8519, title = "A Pawn on the Eternal Board", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8555, title = "The Charge of the Dragonflights", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8555, title = "The Charge of the Dragonflights", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				note = "These are required to complete the quest \"Dirge's Kickin' Chimaerok Chops.\" notinsticky You can create them with Alchemy or purchase them from the Auction House. You can create them with Alchemy. Each one requires one Firebloom, one Volatile Rum, and one Leaded Vial to craft.",
				goals = {
					{ t = "collect", quest = 8586, item = 9061, itemName = "Goblin Rocket Fuel", count = 20 },
				},
			},
			{
				label = "Collect_Deeprock_Salt",
				along = true,
				note = "You can also purchase these from the Auction House. These are required to complete the quest \"Dirge's Kickin' Chimaerok Chops.\" notinsticky",
				goals = {
					{ t = "collect", quest = 8586, item = 8150, itemName = "Deeprock Salt", count = 20, map = 1418, x = 14.16, y = 39.38, f = "e" },
				},
			},
			{
				label = "Collect_Arcanite_Bar",
				along = true,
				note = "These are required to complete the quest \"The Good News and The Bad News.\" notinsticky You can create them with Alchemy or purchase them from the Auction House. You can create them with Alchemy. Each one requires one Arcane Crystal and one Thorium Bar to craft.",
				goals = {
					{ t = "collect", quest = 8728, item = 12360, itemName = "Arcanite Bar", count = 20 },
				},
			},
			{
				label = "Collect_Elementium_Ore",
				along = true,
				note = "These spawn and flee from Vaelastrasz the Corrupt's room in Blackwing Lair. You must kill them quickly before they flee to safety. These are required to complete the quest \"The Good News and The Bad News.\" notinsticky You can also purchase these from the Auction House.",
				goals = {
					{ t = "collect", quest = 8728, item = 18562, itemName = "Elementium Ore", count = 10 },
				},
			},
			{
				label = "Collect_Azerothian_Diamond",
				along = true,
				note = "These are required to complete the quest \"The Good News and The Bad News.\" notinsticky These can be mined from any type of Thorium Vein. They can also be contained inside Gray Sacks of Gems dropped by Onyxia, Nefarian, and the various World Bosses.",
				goals = {
					{ t = "collect", quest = 8728, item = 12800, itemName = "Azerothian Diamond", count = 10 },
				},
			},
			{
				label = "Collect_Blue_Sapphire",
				along = true,
				note = "These are required to complete the quest \"The Good News and The Bad News.\" notinsticky These can be mined from any type of Thorium Vein. They can also be contained inside Gray Sacks of Gems dropped by Onyxia, Nefarian, and the various World Bosses.",
				goals = {
					{ t = "collect", quest = 8728, item = 12361, itemName = "Blue Sapphire", count = 10 },
				},
			},
			{
				note = "He walks all over the area. You will need to search around. Make sure you talk to the spirit version.",
				goals = {
					{ t = "collect", item = 20949, itemName = "Magical Ledger", map = 1447, x = 55.58, y = 79.77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20949, itemName = "Magical Ledger" },
					{ t = "accept", quest = 8575, title = "Azuregos's Magical Ledger", npc = 15481, npcName = "Spirit of Azuregos", map = 1447, x = 53.0, y = 81.7, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8575, title = "Azuregos's Magical Ledger", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 8576, title = "Translating the Ledger", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8576, title = "Translating the Ledger", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 8577, title = "Stewvul, Ex-B.F.F.", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
					{ t = "accept", quest = 8584, title = "Never Ask Me About My Business", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
					{ t = "accept", quest = 8597, title = "Draconic for Dummies", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
				},
			},
			{
				note = "Underwater.",
				goals = {
					{ t = "accept", quest = 8599, title = "Love Song for Narain", npc = 15526, npcName = "Meridith the Mermaiden", map = 1446, x = 59.43, y = 96.04, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8599, title = "Love Song for Narain", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
				},
			},
			{
				note = "Underwater.",
				goals = {
					{ t = "complete", quest = 8597, title = "Draconic for Dummies", note = "Gain the \"Siren's Song\" Buff", map = 1446, x = 59.43, y = 96.04, f = "e" },
				},
			},
			{
				note = "Quickly swim southeast to the pair of secret islands. The buff will expire in three minutes. On the island south of the metal rig.",
				goals = {
					{ t = "turnin", quest = 8597, title = "Draconic for Dummies" },
					{ t = "accept", quest = 8598, title = "rAnS0m" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8598, title = "rAnS0m", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
					{ t = "accept", quest = 8606, title = "Decoy!", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8584, title = "Never Ask Me About My Business", npc = 8125, npcName = "Dirge Quikcleave", map = 1446, x = 52.63, y = 28.12, f = "e" },
					{ t = "accept", quest = 8585, title = "The Isle of Dread!", npc = 8125, npcName = "Dirge Quikcleave", map = 1446, x = 52.63, y = 28.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1452, x = 61.24, y = 74.2 },
					{ t = "goto", text = "Follow the path", map = 1452, x = 63.43, y = 72.69 },
					{ t = "goto", text = "Follow the path up", map = 1452, x = 66.02, y = 72.69 },
					{ t = "use", item = 21042, itemName = "Narain's Special Kit" },
					{ t = "complete", quest = 8606, title = "Decoy!", note = "Open Narain's Special Kit", map = 1452, x = 67.55, y = 72.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21039, itemName = "Narain's Turban" },
					{ t = "complete", quest = 8606, title = "Decoy!", note = "Transform into Narain Soothfancy", map = 1452, x = 67.55, y = 72.84, f = "e" },
				},
			},
			{
				note = "Placing the Bag of Loot will summon Number Two.",
				goals = {
					{ t = "use", item = 21041, itemName = "Bag of Gold" },
					{ t = "complete", quest = 8606, title = "Decoy!", note = "Place the Bag of Loot", map = 1452, x = 67.55, y = 72.84, f = "e" },
				},
			},
			{
				label = "Kill_Number_Two",
				along = true,
				note = "You will need a group of at least three people to kill it.",
				goals = {
					{ t = "kill", quest = 8606, npc = 15554, target = "Number Two", oi = 1, map = 1452, x = 67.23, y = 72.6, f = "e" },
				},
			},
			{
				note = "You will need a group for this, preferrably at least ten people.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1444, x = 34.14, y = 77.78 },
					{ t = "collect", quest = 8585, item = 21027, itemName = "Lakmaeran's Carcass", oi = 1, map = 1444, x = 29.34, y = 72.63, f = "e" },
				},
			},
			{
				label = "Collect_Chimaerok_Tenderloin",
				along = true,
				note = "You will need a group for this, preferrably at least ten people. notinsticky",
				goals = {
					{ t = "collect", quest = 8585, item = 21024, itemName = "Chimaerok Tenderloin", count = 20, oi = 2, map = 1444, x = 28.51, y = 74.88, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8585, title = "The Isle of Dread!", npc = 8125, npcName = "Dirge Quikcleave", map = 1446, x = 52.63, y = 28.12, f = "e" },
					{ t = "accept", quest = 8586, title = "Dirge's Kickin' Chimaerok Chops", npc = 8125, npcName = "Dirge Quikcleave", map = 1446, x = 52.63, y = 28.12, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8606, title = "Decoy!", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
					{ t = "accept", quest = 8620, title = "The Only Prescription", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building. You will need a sizeable group to kill him.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1445, x = 77.25, y = 17.41 },
					{ t = "collect", quest = 8620, item = 21103, itemName = "Draconic for Dummies", map = 1445, x = 77.85, y = 17.12, f = "e" },
				},
			},
			{
				note = "Inside Onxyia's Lair.",
				goals = {
					{ t = "collect", quest = 8620, item = 21103, itemName = "Draconic for Dummies", count = 2, map = 1414, x = 56.58, y = 71.55, f = "e" },
				},
			},
			{
				note = "Any elite demon in Darkwhisper Gorge can drop this.",
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1452, x = 62.43, y = 67.46 },
					{ t = "collect", quest = 8620, item = 21103, itemName = "Draconic for Dummies", count = 3, map = 1452, x = 60.59, y = 78.67, f = "e" },
				},
			},
			{
				note = "You will need a group or stealth to survive the opposing faction's city. only Alliance",
				goals = {
					{ t = "collect", quest = 8620, item = 21103, itemName = "Draconic for Dummies", count = 8, map = 1458, x = 77.05, y = 38.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8577, title = "Stewvul, Ex-B.F.F.", map = 1421, x = 46.19, y = 86.67, f = "e" },
					{ t = "accept", quest = 8578, title = "Scrying Goggles? No Problem!", map = 1421, x = 46.19, y = 86.67, f = "e" },
				},
			},
			{
				note = "You can also purchase these from the Auction House.",
				goals = {
					{ t = "collect", quest = 8586, item = 8150, itemName = "Deeprock Salt", count = 20, oi = 2, map = 1418, x = 14.16, y = 39.38, f = "e" },
				},
			},
			{
				note = "It is the fifth boss of the Blackwing Lair raid.",
				goals = {
					{ t = "collect", quest = 8620, item = 21103, itemName = "Draconic for Dummies", count = 6 },
				},
			},
			{
				note = "He is the final boss of the Molten Core raid.",
				goals = {
					{ t = "collect", quest = 8620, item = 21103, itemName = "Draconic for Dummies", count = 5 },
				},
			},
			{
				label = "Collect_Draconic_Scrying_Goggles",
				along = true,
				note = "These goggles have a chance to drop from trash mobs inside the Molten Core raid.",
				goals = {
					{ t = "collect", quest = 8578, item = 20951, itemName = "Narain's Scrying Goggles", oi = 1 },
				},
			},
			{
				note = "You will need a group or stealth to survive the opposing faction's city. only Horde It's the open book on the corner of the statue.",
				goals = {
					{ t = "goto", text = "Enter Stormwind Keep", map = 1453, x = 73.35, y = 46.4 },
					{ t = "collect", quest = 8620, item = 21103, itemName = "Draconic for Dummies", count = 7, map = 1453, x = 75.36, y = 29.76, f = "e" },
				},
			},
			{
				note = "Inside the Sunken Temple dungeon. He will appear in front of Shade of Eranikus when you walk near.",
				goals = {
					{ t = "accept", quest = 8733, title = "Eranikus, Tyrant of the Dream", npc = 15362, npcName = "Malfurion Stormrage" },
				},
			},
			{
				note = "Any elite demon in The Tainted Scar can drop this.",
				goals = {
					{ t = "collect", quest = 8620, item = 21103, itemName = "Draconic for Dummies", count = 4, map = 1419, x = 44.4, y = 56.63, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8733, title = "Eranikus, Tyrant of the Dream", npc = 15624, npcName = "Forest Wisp", map = 1438, x = 37.56, y = 47.93, f = "e" },
					{ t = "accept", quest = 8734, title = "Tyrande and Remulos", npc = 15624, npcName = "Forest Wisp", map = 1438, x = 37.56, y = 47.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8734, title = "Tyrande and Remulos", npc = 11832, npcName = "Keeper Remulos", map = 1450, x = 36.19, y = 41.81, f = "e" },
					{ t = "accept", quest = 8735, title = "The Nightmare's Corruption", npc = 11832, npcName = "Keeper Remulos", map = 1450, x = 36.19, y = 41.81, f = "e" },
				},
			},
			{
				note = "You will need a group for this.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1440, x = 89.0, y = 41.02 },
					{ t = "collect", quest = 8735, item = 21147, itemName = "Fragment of the Nightmare's Corruption", oi = 1, map = 1440, x = 93.61, y = 39.65, f = "e" },
				},
			},
			{
				note = "You will need a group for this.",
				goals = {
					{ t = "collect", quest = 8735, item = 21148, itemName = "Fragment of the Nightmare's Corruption", oi = 3, map = 1444, x = 50.7, y = 12.5, f = "e" },
				},
			},
			{
				note = "You will need a group for this.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1431, x = 47.36, y = 61.77 },
					{ t = "goto", text = "Enter the Twilight Grove", map = 1431, x = 46.49, y = 55.22 },
					{ t = "collect", quest = 8735, item = 21149, itemName = "Fragment of the Nightmare's Corruption", oi = 2, map = 1431, x = 48.98, y = 34.39, f = "e" },
				},
			},
			{
				note = "You will need a group for this.",
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1425, x = 60.64, y = 38.41 },
					{ t = "collect", quest = 8735, item = 21146, itemName = "Fragment of the Nightmare's Corruption", oi = 4, map = 1425, x = 62.91, y = 30.32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8735, title = "The Nightmare's Corruption", npc = 11832, npcName = "Keeper Remulos", map = 1450, x = 36.19, y = 41.81, f = "e" },
					{ t = "accept", quest = 8736, title = "The Nightmare Manifests", npc = 11832, npcName = "Keeper Remulos", map = 1450, x = 36.19, y = 41.81, f = "e" },
				},
			},
			{
				note = "You will need a raid to accomplish this. You cannot let Keeper Remulos die or kill Eranikus.",
				goals = {
					{ t = "complete", quest = 8736, title = "The Nightmare Manifests", note = "Defend Nighthaven from Eranikus", map = 1450, x = 48.04, y = 34.31, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8736, title = "The Nightmare Manifests", npc = 11832, npcName = "Keeper Remulos", map = 1450, x = 36.19, y = 41.81, f = "e" },
					{ t = "accept", quest = 8741, title = "The Champion Returns", npc = 11832, npcName = "Keeper Remulos", map = 1450, x = 36.19, y = 41.81, f = "e" },
				},
			},
			{
				note = "You can create them with Alchemy or purchase them from the Auction House. You can create them with Alchemy. Each one requires one Firebloom, one Volatile Rum, and one Leaded Vial to craft.",
				goals = {
					{ t = "collect", quest = 8586, item = 9061, itemName = "Goblin Rocket Fuel", count = 20, oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8586, title = "Dirge's Kickin' Chimaerok Chops", npc = 8125, npcName = "Dirge Quikcleave", map = 1446, x = 52.63, y = 28.12, f = "e" },
					{ t = "accept", quest = 8587, title = "Return to Narain", npc = 8125, npcName = "Dirge Quikcleave", map = 1446, x = 52.63, y = 28.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21112, itemName = "Magical Book Binding" },
					{ t = "collect", quest = 8620, item = 21111, itemName = "Draconic For Dummies: Volume II", oi = 1 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8578, title = "Scrying Goggles? No Problem!", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
					{ t = "turnin", quest = 8587, title = "Return to Narain", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
					{ t = "turnin", quest = 8620, title = "The Only Prescription", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8741, title = "The Champion Returns", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				note = "The second boss inside the Blackwing Lair raid. You will only have five hours to kill Nefarian, collect the Red Scepter Shard, and turn in this quest.",
				goals = {
					{ t = "accept", quest = 8730, title = "Nefarius's Corruption", npc = 13020, npcName = "Vaelastrasz the Corrupt" },
				},
			},
			{
				note = "He is the final boss inside the Blackwing Lair raid. You must kill him and turn in this quest within the five hour time limit. Only one person in the raid can loot this item per reset.",
				goals = {
					{ t = "collect", item = 21138, itemName = "Red Scepter Shard" },
				},
			},
			{
				note = "You must turn in this quest within the five hour time limit.",
				goals = {
					{ t = "turnin", quest = 8730, title = "Nefarius's Corruption", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 8728, title = "The Good News and The Bad News", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
				},
			},
			{
				note = "These are required to complete the quest \"The Good News and The Bad News.\" notinsticky You can create them with Alchemy or purchase them from the Auction House. You can create them with Alchemy. Each one requires one Arcane Crystal and one Thorium Bar to craft.",
				goals = {
					{ t = "collect", quest = 8728, item = 12360, itemName = "Arcanite Bar", count = 20, oi = 1 },
				},
			},
			{
				label = "Collect_Elementium_Ores",
				along = true,
				note = "These spawn and flee from Vaelastrasz the Corrupt's room in Blackwing Lair. You must kill them quickly before they flee to safety. These are required to complete the quest \"The Good News and The Bad News.\" notinsticky You can also purchase these from the Auction House.",
				goals = {
					{ t = "collect", quest = 8728, item = 18562, itemName = "Elementium Ore", count = 10, oi = 2 },
				},
			},
			{
				label = "Collect_Azerothian_Diamonds",
				along = true,
				note = "These are required to complete the quest \"The Good News and The Bad News.\" notinsticky These can be mined from any type of Thorium Vein. They can also be contained inside Gray Sacks of Gems dropped by Onyxia, Nefarian, and the various World Bosses.",
				goals = {
					{ t = "collect", quest = 8728, item = 12800, itemName = "Azerothian Diamond", count = 10, oi = 3 },
				},
			},
			{
				label = "Collect_Blue_Sapphires",
				along = true,
				note = "These are required to complete the quest \"The Good News and The Bad News.\" notinsticky These can be mined from any type of Thorium Vein. They can also be contained inside Gray Sacks of Gems dropped by Onyxia, Nefarian, and the various World Bosses.",
				goals = {
					{ t = "collect", quest = 8728, item = 12361, itemName = "Blue Sapphire", count = 10, oi = 4 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8728, title = "The Good News and The Bad News", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
					{ t = "accept", quest = 8729, title = "The Wrath of Neptulon", npc = 11811, npcName = "Narain Soothfancy", map = 1446, x = 65.24, y = 18.58, f = "e" },
				},
			},
			{
				note = "Using the buoy will summon it. You will need a raid to defeat it.",
				goals = {
					{ t = "use", item = 21136, itemName = "Arcanite Buoy" },
					{ t = "collect", item = 21137, itemName = "Blue Scepter Shard", map = 1447, x = 65.88, y = 54.05, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8729, title = "The Wrath of Neptulon", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8742, title = "The Might of Kalimdor", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8743, title = "Bang a Gong!", map = 1451, x = 25.71, y = 90.86, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8743, title = "Bang a Gong!", map = 1451, x = 25.71, y = 90.86, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8745, title = "Treasure of the Timeless One", npc = 15693, npcName = "Jonathan the Revelator", map = 1451, x = 25.94, y = 90.96, f = "e" },
				},
			},
		},
	})
end

