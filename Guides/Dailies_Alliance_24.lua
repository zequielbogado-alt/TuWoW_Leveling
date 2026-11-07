-- TuWoW_Leveling — Guides/Dailies_Alliance_24.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-netherdrake-mount-guide-netherwing-reputation-revered",
		pack = "guides",
		title = "Netherwing Reputation (Revered)",
		category = "Dailies",
		folder = "Netherdrake Mount Guide",
		faction = "Alliance",
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
					{ t = "accept", quest = 11097, title = "The Deadliest Trap Ever Laid", npc = 23434, npcName = "Commander Hobb", map = 1948, x = 56.5, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 32502, itemName = "Fel Gland", count = 12, map = 1948, x = 60.4, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11101, title = "The Deadliest Trap Ever Laid", npc = 23452, npcName = "Commander Arcus", map = 1948, x = 62.4, y = 29.3, f = "e" },
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
					{ t = "turnin", quest = 11097, title = "The Deadliest Trap Ever Laid", npc = 23139, npcName = "Overlord Mor'ghor", map = 1948, x = 66.2, y = 85.7, f = "e" },
					{ t = "turnin", quest = 11101, title = "The Deadliest Trap Ever Laid", npc = 23139, npcName = "Overlord Mor'ghor", map = 1948, x = 66.2, y = 85.7, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-netherdrake-mount-guide-netherwing-reputation-exalted-getting-your-netherdrake",
		pack = "guides",
		title = "Netherwing Reputation (Exalted) - Getting Your Netherdrake!",
		category = "Dailies",
		folder = "Netherdrake Mount Guide",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1948,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11107, title = "Bow to the Highlord", npc = 23140, npcName = "Taskmaster Varkule Dragonbreath", map = 1948, x = 66.1, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11107, title = "Bow to the Highlord", npc = 23139, npcName = "Overlord Mor'ghor", map = 1948, x = 66.2, y = 85.7, f = "e" },
					{ t = "accept", quest = 11108, title = "Lord Illidan Stormrage", npc = 23139, npcName = "Overlord Mor'ghor", map = 1948, x = 66.2, y = 85.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11108, title = "Lord Illidan Stormrage", npc = 23433, npcName = "Barthamus", map = 1955, x = 66.6, y = 16.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11113, title = "Voranaku the Violet Netherwing Drake", map = 1955, x = 66.8, y = 17.6, f = "e" },
					{ t = "accept", quest = 11114, title = "Zoya the Veridian Netherwing Drake", map = 1955, x = 66.8, y = 17.6, f = "e" },
					{ t = "accept", quest = 11112, title = "Suraku the Azure Netherwing Drake", map = 1955, x = 66.8, y = 17.6, f = "e" },
					{ t = "accept", quest = 11111, title = "Onyxien the Onyx Netherwing Drake", map = 1955, x = 66.8, y = 17.6, f = "e" },
					{ t = "accept", quest = 11110, title = "Malfas the Purple Netherwing Drake", map = 1955, x = 66.8, y = 17.6, f = "e" },
					{ t = "accept", quest = 11109, title = "Jorus the Cobalt Netherwing Drake", map = 1955, x = 66.8, y = 17.6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-netherdrake-mount-guide-netherwing-egg-hunting-optimized-path",
		pack = "guides",
		title = "Netherwing Egg Hunting - Optimized Path",
		category = "Dailies",
		folder = "Netherdrake Mount Guide",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 80,
		zone = 1948,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", map = 1948, x = 69.4, y = 63.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 70.1, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 71.4, y = 60.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 70.9, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 71.3, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 71.4, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 70.0, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 69.7, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 68.1, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 68.3, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 68.5, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 67.2, y = 61.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 67.2, y = 62.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 68.9, y = 62.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 76.0, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 75.2, y = 82.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 73.7, y = 82.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 73.0, y = 84.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 71.0, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 68.2, y = 81.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 66.2, y = 83.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 65.7, y = 84.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 63.3, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 65.4, y = 76.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 63.2, y = 75.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 62.2, y = 74.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 61.7, y = 73.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 63.0, y = 71.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 61.3, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 60.6, y = 73.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 59.3, y = 74.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 60.0, y = 76.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 59.6, y = 78.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 61.2, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 62.2, y = 77.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 63.3, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 63.0, y = 83.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 63.5, y = 84.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 65.5, y = 84.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 23141, npcName = "Yarzill the Merc", map = 1948, x = 66.0, y = 86.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 64.0, y = 86.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 62.5, y = 84.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 60.2, y = 87.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 62.1, y = 89.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 64.9, y = 90.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 68.3, y = 84.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 68.8, y = 86.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 72.3, y = 87.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 69.9, y = 85.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 73.6, y = 85.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 73.0, y = 89.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 73.6, y = 85.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 68.5, y = 81.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 64.8, y = 83.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 65.2, y = 84.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 65.3, y = 90.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 65.5, y = 94.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 68.0, y = 94.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 69.6, y = 91.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 70.9, y = 89.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 71.4, y = 86.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 72.2, y = 87.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 73.4, y = 90.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 75.8, y = 91.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 77.6, y = 92.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 77.4, y = 95.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 77.3, y = 85.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 76.5, y = 83.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 78.9, y = 83.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 78.1, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1948, x = 78.8, y = 79.6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-events-love-is-in-the-air-main-questline",
		pack = "guides",
		title = "Love is in the Air Main Questline",
		category = "Dailies",
		folder = "Events",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1455,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 24804, title = "Uncommon Scents", npc = 38293, npcName = "Junior Inspector", map = 1455, x = 35.3, y = 69.0, f = "e" },
				},
			},
			{
				note = "Ride the Deep Run Tram to Stormwind City|goto Stormwind City|noway|c",
				goals = {
					{ t = "goto", map = 1455, x = 76.9, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24804, title = "Uncommon Scents", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
					{ t = "accept", quest = 24655, title = "Something Stinks", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1453, x = 62.4, y = 76.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24655, title = "Something Stinks", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
					{ t = "accept", quest = 24656, title = "Pilfering Perfume", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24656, title = "Pilfering Perfume", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
					{ t = "accept", quest = 24848, title = "Fireworks At The Gilded Rose", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24848, title = "Fireworks At The Gilded Rose", npc = 38325, npcName = "Marion Sutton", map = 1453, x = 60.6, y = 76.4, f = "e" },
					{ t = "accept", quest = 24849, title = "Hot On The Trail", npc = 38325, npcName = "Marion Sutton", map = 1453, x = 60.6, y = 76.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1453, x = 63.2, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1453, x = 60.9, y = 70.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1453, x = 61.3, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24849, title = "Hot On The Trail", npc = 38325, npcName = "Marion Sutton", map = 1453, x = 60.6, y = 76.4, f = "e" },
					{ t = "accept", quest = 24657, title = "A Friendly Chat...", npc = 38325, npcName = "Marion Sutton", map = 1453, x = 60.6, y = 76.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 24657, item = 49915, itemName = "Snivel's Ledger", count = 1, oi = 1, map = 1453, x = 27.43, y = 34.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 24657, title = "A Friendly Chat...", npc = 38066, npcName = "Inspector Snip Snagglebolt", map = 1453, x = 61.6, y = 75.3, f = "e" },
				},
			},
		},
	})
end

