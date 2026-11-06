-- TuWoW_Leveling — Guides/Leveling_Alliance_27.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-tanaris-43-44",
		pack = "guides",
		title = "Tanaris",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-feralas-and-tanaris-44-48",
		author = "TuWoW & Zygor",
		minLevel = 43,
		maxLevel = 44,
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 1188, item = 5862, itemName = "Seaforium Booster", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2864, title = "Tran'rek", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1188, title = "Safety First", npc = 4708, npcName = "Shreev", map = 1446, x = 50.96, y = 27.24, f = "e" },
					{ t = "accept", quest = 1189, title = "Safety First", npc = 4708, npcName = "Shreev", map = 1446, x = 50.96, y = 27.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1119, title = "Zanzil's Mixture and a Fool's Stout", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1120, title = "Get the Gnomes Drunk", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1120, title = "Get the Gnomes Drunk", npc = 4495, npcName = "Gnome Pit Boss", map = 1441, x = 77.56, y = 76.94, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1122, title = "Report Back to Fizzlebub", npc = 4452, npcName = "Kravel Koalbeard", map = 1441, x = 77.79, y = 77.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1137, title = "News for Fizzle", npc = 4454, npcName = "Fizzle Brassbolts", map = 1441, x = 78.06, y = 77.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1190, title = "Keeping Pace", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.18, y = 75.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1189, title = "Safety First", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.33, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1191, title = "Zamek's Distraction", npc = 4709, npcName = "Zamek", map = 1441, x = 79.81, y = 77.02, f = "e" },
				},
			},
			{
				note = "Wait for Rizzle to run away. Inside the building.",
				goals = {
					{ t = "turnin", quest = 1190, title = "Keeping Pace", map = 1441, x = 77.21, y = 77.38, f = "e" },
					{ t = "accept", quest = 1194, title = "Rizzle's Schematics", map = 1441, x = 77.21, y = 77.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1194, title = "Rizzle's Schematics", npc = 4630, npcName = "Pozzik", map = 1441, x = 80.18, y = 75.88, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1707, title = "Water Pouch Bounty", npc = 7408, npcName = "Spigot Operator Luglunket", map = 1446, x = 52.48, y = 28.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1690, title = "Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8365, title = "Pirate Hats Ahoy!", npc = 15165, npcName = "Haughty Modiste", map = 1446, x = 66.56, y = 22.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3520, title = "Screecher Spirits", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.99, y = 22.36, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 8366, title = "Southsea Shakedown", npc = 7882, npcName = "Security Chief Bilgewhizzle", map = 1446, x = 67.06, y = 23.89, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2872, title = "Stoley's Debt", npc = 7881, npcName = "Stoley", map = 1446, x = 67.11, y = 23.98, f = "e" },
					{ t = "accept", quest = 2873, title = "Stoley's Shipment", npc = 7881, npcName = "Stoley", map = 1446, x = 67.11, y = 23.98, f = "e" },
				},
			},
			{
				label = "Collect_Wastewander_Water_Pouches",
				along = true,
				note = "Humans. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 1707, item = 8483, itemName = "Wastewander Water Pouch", count = 5, oi = 1, map = 1446, x = 62.8, y = 30.4, f = "e" },
				},
			},
			{
				label = "Kill_Wastewander_Bandits_And_Thieves",
				along = true,
				goals = {
					{ t = "kill", quest = 1690, npc = 5618, target = "Wastewander Bandit", count = 10, oi = 1, map = 1446, x = 62.8, y = 30.4, f = "e" },
					{ t = "kill", quest = 1690, npc = 5616, target = "Wastewander Thief", count = 10, oi = 2, map = 1446, x = 62.8, y = 30.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1690, title = "Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1707, title = "Water Pouch Bounty", npc = 7408, npcName = "Spigot Operator Luglunket", map = 1446, x = 52.48, y = 28.44, f = "e" },
				},
			},
			{
				note = "Humans. Run dungeons, if you prefer. Turn in stacks of 5 in Gadgetzan for 380 xp. Count will reduce as you grind.",
				goals = {
					{ t = "collect", item = 8483, itemName = "Wastewander Water Pouch", map = 1446, x = 58.8, y = 36.7, f = "e" },
					{ t = "goto", text = "ding 44", map = 1446, x = 62.8, y = 30.4 },
				},
			},
			{
				note = "Red birds. Shared spawns with hyenas.",
				goals = {
					{ t = "collect", quest = 1452, item = 6257, itemName = "Roc Gizzard", count = 3, oi = 1, map = 1446, x = 49.91, y = 35.16, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 1122, title = "Report Back to Fizzlebub", note = "bank Fool's Stout Report##5807", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "complete", quest = 1452, title = "Rhapsody's Kalimdor Kocktail", note = "bank Roc Gizzard##6257", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
		},
	})
end

