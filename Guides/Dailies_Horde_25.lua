-- TuWoW_Leveling — Guides/Dailies_Horde_25.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-netherdrake-mount-guide-netherwing-reputation-neutral-pre-quests",
		pack = "guides",
		title = "Netherwing Reputation (Neutral) - Pre-Quests",
		category = "Dailies",
		folder = "Netherdrake Mount Guide",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1948,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 10804, title = "Kindness", npc = 22113, npcName = "Mordenai", map = 1948, x = 62.9, y = 59.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 31373, itemName = "Rocknail Flayer Giblets", count = 1, map = 1948, x = 60.5, y = 57.7, f = "e" },
					{ t = "collect", item = 31372, itemName = "Rocknail Flayer Carcass", count = 8, map = 1948, x = 60.5, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 60.5, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10804, title = "Kindness", npc = 22113, npcName = "Mordenai", map = 1948, x = 62.9, y = 59.5, f = "e" },
					{ t = "accept", quest = 10811, title = "Seek Out Neltharaku", npc = 22113, npcName = "Mordenai", map = 1948, x = 62.9, y = 59.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10811, title = "Seek Out Neltharaku", npc = 21657, npcName = "Neltharaku", map = 1948, x = 68.2, y = 60.4, f = "e" },
					{ t = "accept", quest = 10814, title = "Neltharaku's Tale", npc = 21657, npcName = "Neltharaku", map = 1948, x = 68.2, y = 60.4, f = "e" },
					{ t = "turnin", quest = 10814, title = "Neltharaku's Tale", npc = 21657, npcName = "Neltharaku", map = 1948, x = 68.2, y = 60.4, f = "e" },
					{ t = "accept", quest = 10836, title = "Infiltrating Dragonmaw Fortress", npc = 21657, npcName = "Neltharaku", map = 1948, x = 68.2, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10836, target = "Dragonmaw Orc", count = 15, oi = 1, map = 1948, x = 66.4, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10836, title = "Infiltrating Dragonmaw Fortress", npc = 21657, npcName = "Neltharaku", map = 1948, x = 68.2, y = 60.4, f = "e" },
					{ t = "accept", quest = 10837, title = "To Netherwing Ledge!", npc = 21657, npcName = "Neltharaku", map = 1948, x = 68.2, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10837, itemName = "Nethervine Crystal", count = 12, oi = 1, map = 1948, x = 64.1, y = 80.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10837, title = "To Netherwing Ledge!", npc = 21657, npcName = "Neltharaku", map = 1948, x = 68.2, y = 60.4, f = "e" },
					{ t = "accept", quest = 10854, title = "The Force of Neltharaku", npc = 21657, npcName = "Neltharaku", map = 1948, x = 68.2, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 67.4, y = 59.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10854, title = "The Force of Neltharaku", npc = 21657, npcName = "Neltharaku", map = 1948, x = 68.2, y = 60.4, f = "e" },
					{ t = "accept", quest = 10858, title = "Karynaku", npc = 21657, npcName = "Neltharaku", map = 1948, x = 68.2, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10858, title = "Karynaku", npc = 22112, npcName = "Karynaku", map = 1948, x = 69.9, y = 61.5, f = "e" },
					{ t = "accept", quest = 10866, title = "Zuluhed the Whacked", npc = 22112, npcName = "Karynaku", map = 1948, x = 69.9, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10866, target = "Zuluhed the Whacked", count = 1, oi = 2, map = 1948, x = 70.9, y = 61.5, f = "e" },
					{ t = "collect", item = 31664, itemName = "Zuluhed's Key", count = 1, map = 1948, x = 70.9, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 69.8, y = 61.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10866, title = "Zuluhed the Whacked", npc = 22112, npcName = "Karynaku", map = 1948, x = 69.9, y = 61.5, f = "e" },
					{ t = "accept", quest = 10870, title = "Ally of the Netherwing", npc = 22112, npcName = "Karynaku", map = 1948, x = 69.9, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10870, title = "Ally of the Netherwing", npc = 22113, npcName = "Mordenai", map = 1948, x = 62.9, y = 59.5, f = "e" },
					{ t = "accept", quest = 11012, title = "Blood Oath of the Netherwing", npc = 22113, npcName = "Mordenai", map = 1948, x = 62.9, y = 59.5, f = "e" },
					{ t = "accept", quest = 11013, title = "In Service of the Illidari", npc = 22113, npcName = "Mordenai", map = 1948, x = 62.9, y = 59.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11013, title = "In Service of the Illidari", npc = 23139, npcName = "Overlord Mor'ghor", map = 1948, x = 66.2, y = 85.7, f = "e" },
					{ t = "accept", quest = 11014, title = "Enter the Taskmaster", npc = 23139, npcName = "Overlord Mor'ghor", map = 1948, x = 66.2, y = 85.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11014, title = "Enter the Taskmaster", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11019, title = "Your Friend on the Inside", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
					{ t = "accept", quest = 11049, title = "The Great Netherwing Egg Hunt", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11049, itemName = "Netherwing Egg", count = 1, oi = 1, map = 1948, x = 68.5, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11049, title = "The Great Netherwing Egg Hunt", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-netherdrake-mount-guide-netherwing-reputation-neutral",
		pack = "guides",
		title = "Netherwing Reputation (Neutral)",
		category = "Dailies",
		folder = "Netherdrake Mount Guide",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1948,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11020, title = "A Slow Death", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
					{ t = "accept", quest = 11035, title = "The Not-So-Friendly Skies", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11015, title = "Netherwing Crystals", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "accept", quest = 11016, title = "Nethermine Flayer Hide", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "accept", quest = 11018, title = "Nethercite Ore", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "accept", quest = 11017, title = "Netherdust Pollen", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11035, itemName = "Netherwing Relic", count = 10, oi = 1, map = 1948, x = 72.1, y = 75.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 32502, itemName = "Fel Gland", count = 12, map = 1948, x = 60.4, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 73.6, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11017, itemName = "Netherdust Pollen", count = 40, oi = 1, map = 1948, x = 62.6, y = 86.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11018, itemName = "Nethercite Ore", count = 40, oi = 1, map = 1948, x = 70.0, y = 91.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 65.3, y = 90.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11015, itemName = "Netherwing Crystal", count = 30, oi = 1, map = 1948, x = 70.8, y = 84.4, f = "e" },
					{ t = "collect", quest = 11016, itemName = "Nethermine Flayer Hide", count = 35, oi = 1, map = 1948, x = 70.8, y = 84.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 65.3, y = 90.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11020, title = "A Slow Death", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
					{ t = "turnin", quest = 11035, title = "The Not-So-Friendly Skies", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11015, title = "Netherwing Crystals", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "turnin", quest = 11016, title = "Nethermine Flayer Hide", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "turnin", quest = 11018, title = "Nethercite Ore", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "turnin", quest = 11017, title = "Netherdust Pollen", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-netherdrake-mount-guide-netherwing-reputation-friendly-pre-quests",
		pack = "guides",
		title = "Netherwing Reputation (Friendly) - Pre-Quests",
		category = "Dailies",
		folder = "Netherdrake Mount Guide",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1948,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11053, title = "Rise, Overseer!", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11053, title = "Rise, Overseer!", npc = 23139, npcName = "Overlord Mor'ghor", map = 1948, x = 66.2, y = 85.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11075, title = "The Netherwing Mines", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11054, title = "Overseeing and You: Making the Right Choices", npc = 23291, npcName = "Chief Overseer Mudlump", map = 1948, x = 66.8, y = 86.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11075, title = "The Netherwing Mines", npc = 23149, npcName = "Mistress of the Mines", map = 1948, x = 65.4, y = 90.2, f = "e" },
				},
			},
			{
				note = "Go inside the mine to 71.6,87.6",
				goals = {
					{ t = "accept", quest = 11083, title = "Crazed and Confused", npc = 23166, npcName = "Ronag the Slave Driver", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11083, target = "Crazed Murkblood Foreman", count = 1, oi = 1, map = 1948, x = 73.7, y = 88.1, f = "e" },
					{ t = "kill", quest = 11083, target = "Crazed Murkblood Miner", count = 5, oi = 2, map = 1948, x = 73.7, y = 88.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11083, title = "Crazed and Confused", npc = 23166, npcName = "Ronag the Slave Driver", map = 1948, x = 71.6, y = 87.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 32724, itemName = "Sludge-covered Object", count = 1, map = 1948, x = 64.8, y = 85.6, f = "e" },
					{ t = "collect", item = 32726, itemName = "Murkblood Escape Plans", count = 1, map = 1948, x = 64.8, y = 85.6, f = "e" },
					{ t = "accept", quest = 11081, title = "The Great Murkblood Revolt", map = 1948, x = 64.8, y = 85.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 65.3, y = 90.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11081, title = "The Great Murkblood Revolt", npc = 23149, npcName = "Mistress of the Mines", map = 1948, x = 65.4, y = 90.2, f = "e" },
					{ t = "accept", quest = 11082, title = "Seeker of Truth", npc = 23149, npcName = "Mistress of the Mines", map = 1948, x = 65.4, y = 90.2, f = "e" },
				},
			},
			{
				note = "Go inside the mine and follow the path to 73.0,82.2",
				goals = {
					{ t = "collect", quest = 11082, itemName = "Hand of the Overseer", count = 1, oi = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 65.3, y = 90.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11082, title = "Seeker of Truth", npc = 23149, npcName = "Mistress of the Mines", map = 1948, x = 65.4, y = 90.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11054, itemName = "Knothide Leather", count = 10, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11054, itemName = "Hardened Hide of Tyrantus", count = 1, oi = 2, map = 1953, x = 46.4, y = 10.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11054, title = "Overseeing and You: Making the Right Choices", npc = 23291, npcName = "Chief Overseer Mudlump", map = 1948, x = 66.8, y = 86.1, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-netherdrake-mount-guide-netherwing-reputation-friendly",
		pack = "guides",
		title = "Netherwing Reputation (Friendly)",
		category = "Dailies",
		folder = "Netherdrake Mount Guide",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1948,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11020, title = "A Slow Death", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
					{ t = "accept", quest = 11035, title = "The Not-So-Friendly Skies", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11015, title = "Netherwing Crystals", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "accept", quest = 11016, title = "Nethermine Flayer Hide", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "accept", quest = 11018, title = "Nethercite Ore", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "accept", quest = 11017, title = "Netherdust Pollen", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11055, title = "The Booterang: A Cure For The Common Worthless Peon", npc = 23291, npcName = "Chief Overseer Mudlump", map = 1948, x = 66.8, y = 86.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11035, itemName = "Netherwing Relic", count = 10, oi = 1, map = 1948, x = 72.1, y = 75.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 32502, itemName = "Fel Gland", count = 12, map = 1948, x = 60.4, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 73.6, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11017, itemName = "Netherdust Pollen", count = 40, oi = 1, map = 1948, x = 62.6, y = 86.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11018, itemName = "Nethercite Ore", count = 40, oi = 1, map = 1948, x = 70.0, y = 91.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11076, title = "Picking Up the Pieces...", npc = 23149, npcName = "Mistress of the Mines", map = 1948, x = 65.4, y = 90.2, f = "e" },
				},
			},
			{
				note = "Go inside the mine to 65.1,87.5",
				goals = {
					{ t = "accept", quest = 11077, title = "Dragons are the Least of Our Problems", npc = 23376, npcName = "Dragonmaw Foreman", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11076, itemName = "Nethermine Cargo", count = 15, oi = 1, map = 1948, x = 66.9, y = 84.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11077, target = "Nethermine Flayer", count = 15, oi = 1, map = 1948, x = 71.5, y = 83.9, f = "e" },
					{ t = "kill", quest = 11077, target = "Nethermine Ravager", count = 5, oi = 2, map = 1948, x = 71.5, y = 83.9, f = "e" },
					{ t = "collect", quest = 11015, itemName = "Netherwing Crystal", count = 30, oi = 1, map = 1948, x = 71.5, y = 83.9, f = "e" },
					{ t = "collect", quest = 11016, itemName = "Nethermine Flayer Hide", count = 35, oi = 1, map = 1948, x = 71.5, y = 83.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11077, title = "Dragons are the Least of Our Problems", npc = 23376, npcName = "Dragonmaw Foreman", map = 1948, x = 65.1, y = 87.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11076, title = "Picking Up the Pieces...", npc = 23149, npcName = "Mistress of the Mines", map = 1948, x = 65.4, y = 90.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11020, title = "A Slow Death", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
					{ t = "turnin", quest = 11035, title = "The Not-So-Friendly Skies", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11015, title = "Netherwing Crystals", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "turnin", quest = 11016, title = "Nethermine Flayer Hide", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "turnin", quest = 11018, title = "Nethercite Ore", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "turnin", quest = 11017, title = "Netherdust Pollen", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11055, title = "The Booterang: A Cure For The Common Worthless Peon", npc = 23291, npcName = "Chief Overseer Mudlump", map = 1948, x = 66.8, y = 86.1, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-netherdrake-mount-guide-netherwing-reputation-honored-pre-quests",
		pack = "guides",
		title = "Netherwing Reputation (Honored) - Pre-Quests",
		category = "Dailies",
		folder = "Netherdrake Mount Guide",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1948,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11084, title = "Stand Tall, Captain!", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11084, title = "Stand Tall, Captain!", npc = 23139, npcName = "Overlord Mor'ghor", map = 1948, x = 66.2, y = 85.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11063, title = "Earning Your Wings...", npc = 22433, npcName = "Ja'y Nosliw", map = 1948, x = 65.9, y = 87.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11064, title = "Dragonmaw Race: The Ballad of Oldie McOld", npc = 23340, npcName = "Murg \"Oldie\" Muckjaw", map = 1948, x = 65.2, y = 85.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11064, title = "Dragonmaw Race: The Ballad of Oldie McOld", npc = 22433, npcName = "Ja'y Nosliw", map = 1948, x = 65.9, y = 87.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11067, title = "Dragonmaw Race: Trope the Filth-Belcher", npc = 23342, npcName = "Trope the Filth-Belcher", map = 1948, x = 65.2, y = 85.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11067, title = "Dragonmaw Race: Trope the Filth-Belcher", npc = 22433, npcName = "Ja'y Nosliw", map = 1948, x = 65.9, y = 87.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11068, title = "Dragonmaw Race: Corlok the Vet", npc = 23344, npcName = "Corlok the Vet", map = 1948, x = 65.2, y = 85.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11068, title = "Dragonmaw Race: Corlok the Vet", npc = 22433, npcName = "Ja'y Nosliw", map = 1948, x = 65.9, y = 87.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11069, title = "Dragonmaw Race: Wing Commander Ichman", npc = 13437, npcName = "Wing Commander Ichman", map = 1948, x = 65.2, y = 85.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11069, title = "Dragonmaw Race: Wing Commander Ichman", npc = 22433, npcName = "Ja'y Nosliw", map = 1948, x = 65.9, y = 87.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11070, title = "Dragonmaw Race: Wing Commander Mulverick", npc = 13181, npcName = "Wing Commander Mulverick", map = 1948, x = 65.2, y = 84.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11070, title = "Dragonmaw Race: Wing Commander Mulverick", npc = 22433, npcName = "Ja'y Nosliw", map = 1948, x = 65.9, y = 87.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11071, title = "Dragonmaw Race: Captain Skyshatter", npc = 23348, npcName = "Captain Skyshatter", map = 1948, x = 65.5, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11071, title = "Dragonmaw Race: Captain Skyshatter", npc = 22433, npcName = "Ja'y Nosliw", map = 1948, x = 65.9, y = 87.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-netherdrake-mount-guide-netherwing-reputation-honored",
		pack = "guides",
		title = "Netherwing Reputation (Honored)",
		category = "Dailies",
		folder = "Netherdrake Mount Guide",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1948,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11020, title = "A Slow Death", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
					{ t = "accept", quest = 11035, title = "The Not-So-Friendly Skies", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11015, title = "Netherwing Crystals", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "accept", quest = 11016, title = "Nethermine Flayer Hide", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "accept", quest = 11018, title = "Nethercite Ore", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "accept", quest = 11017, title = "Netherdust Pollen", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11055, title = "The Booterang: A Cure For The Common Worthless Peon", npc = 23291, npcName = "Chief Overseer Mudlump", map = 1948, x = 66.8, y = 86.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11086, title = "Disrupting the Twilight Portal", npc = 23139, npcName = "Overlord Mor'ghor", map = 1948, x = 66.2, y = 85.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11035, itemName = "Netherwing Relic", count = 10, oi = 1, map = 1948, x = 72.1, y = 75.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 32502, itemName = "Fel Gland", count = 12, map = 1948, x = 60.4, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 73.6, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11017, itemName = "Netherdust Pollen", count = 40, oi = 1, map = 1948, x = 62.6, y = 86.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11018, itemName = "Nethercite Ore", count = 40, oi = 1, map = 1948, x = 70.0, y = 91.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11076, title = "Picking Up the Pieces...", npc = 23149, npcName = "Mistress of the Mines", map = 1948, x = 65.4, y = 90.2, f = "e" },
				},
			},
			{
				note = "Go inside the mine to 65.1,87.5",
				goals = {
					{ t = "accept", quest = 11077, title = "Dragons are the Least of Our Problems", npc = 23376, npcName = "Dragonmaw Foreman", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11076, itemName = "Nethermine Cargo", count = 15, oi = 1, map = 1948, x = 66.9, y = 84.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11077, target = "Nethermine Flayer", count = 15, oi = 1, map = 1948, x = 71.5, y = 83.9, f = "e" },
					{ t = "kill", quest = 11077, target = "Nethermine Ravager", count = 5, oi = 2, map = 1948, x = 71.5, y = 83.9, f = "e" },
					{ t = "collect", quest = 11015, itemName = "Netherwing Crystal", count = 30, oi = 1, map = 1948, x = 71.5, y = 83.9, f = "e" },
					{ t = "collect", quest = 11016, itemName = "Nethermine Flayer Hide", count = 35, oi = 1, map = 1948, x = 71.5, y = 83.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11077, title = "Dragons are the Least of Our Problems", npc = 23376, npcName = "Dragonmaw Foreman", map = 1948, x = 65.1, y = 87.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11076, title = "Picking Up the Pieces...", npc = 23149, npcName = "Mistress of the Mines", map = 1948, x = 65.4, y = 90.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11086, target = "Deathshadow Agent", count = 20, oi = 1, map = 1951, x = 12.7, y = 38.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11020, title = "A Slow Death", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
					{ t = "turnin", quest = 11035, title = "The Not-So-Friendly Skies", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11015, title = "Netherwing Crystals", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "turnin", quest = 11016, title = "Nethermine Flayer Hide", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "turnin", quest = 11018, title = "Nethercite Ore", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
					{ t = "turnin", quest = 11017, title = "Netherdust Pollen", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11055, title = "The Booterang: A Cure For The Common Worthless Peon", npc = 23291, npcName = "Chief Overseer Mudlump", map = 1948, x = 66.8, y = 86.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11086, title = "Disrupting the Twilight Portal", npc = 23139, npcName = "Overlord Mor'ghor", map = 1948, x = 66.2, y = 85.7, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-netherdrake-mount-guide-netherwing-reputation-revered-pre-quests",
		pack = "guides",
		title = "Netherwing Reputation (Revered) - Pre-Quests",
		category = "Dailies",
		folder = "Netherdrake Mount Guide",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1948,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11092, title = "Hail, Commander!", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11092, title = "Hail, Commander!", npc = 23139, npcName = "Overlord Mor'ghor", map = 1948, x = 66.2, y = 85.7, f = "e" },
					{ t = "accept", quest = 11094, title = "Kill Them All!", npc = 23139, npcName = "Overlord Mor'ghor", map = 1948, x = 66.2, y = 85.7, f = "e" },
					{ t = "accept", quest = 11099, title = "Kill Them All!", npc = 23139, npcName = "Overlord Mor'ghor", map = 1948, x = 66.2, y = 85.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 32621, itemName = "Partially Digested Hand", count = 1, map = 1948, x = 74.5, y = 86.3, f = "e" },
					{ t = "accept", quest = 11041, title = "A Job Unfinished...", map = 1948, x = 74.5, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11041, target = "Barash the Den Mother", count = 1, oi = 2, map = 1948, x = 70.2, y = 84.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11041, target = "Overmine Flayer", count = 10, oi = 1, map = 1948, x = 71.3, y = 85.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11041, title = "A Job Unfinished...", npc = 23139, npcName = "Overlord Mor'ghor", map = 1948, x = 66.2, y = 85.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11094, title = "Kill Them All!", npc = 21955, npcName = "Arcanist Thelis", map = 1948, x = 56.3, y = 59.6, f = "e" },
					{ t = "accept", quest = 11095, title = "Commander Hobb", npc = 21955, npcName = "Arcanist Thelis", map = 1948, x = 56.3, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11095, title = "Commander Hobb", npc = 23434, npcName = "Commander Hobb", map = 1948, x = 56.5, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11099, title = "Kill Them All!", npc = 21402, npcName = "Anchorite Ceyla", map = 1948, x = 62.6, y = 28.4, f = "e" },
					{ t = "accept", quest = 11100, title = "Commander Arcus", npc = 21402, npcName = "Anchorite Ceyla", map = 1948, x = 62.6, y = 28.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11100, title = "Commander Arcus", npc = 23452, npcName = "Commander Arcus", map = 1948, x = 62.4, y = 29.3, f = "e" },
				},
			},
		},
	})
end

