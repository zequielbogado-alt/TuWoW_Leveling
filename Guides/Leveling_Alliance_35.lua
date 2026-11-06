-- TuWoW_Leveling — Guides/Leveling_Alliance_35.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-winterspring-and-felwood-54-56",
		pack = "guides",
		title = "Winterspring & Felwood",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-burning-steppes-56-57",
		author = "TuWoW & Zygor",
		minLevel = 54,
		maxLevel = 56,
		zone = 1448,
		version = 1,
		steps = {
			{
				note = "Don't vendor them. Can be turned in later for xp and reputation.",
				goals = {
					{ t = "collect", item = 21377, itemName = "Deadwood Headdress Feather", map = 1448, x = 61.0, y = 6.0, f = "e" },
					{ t = "collect", quest = 5882, item = 11515, itemName = "Corrupted Soul Shard", count = 6, map = 1448, x = 62.4, y = 12.6, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 5159, title = "Cleansed Water Returns to Felwood", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.21, y = 82.11, f = "e" },
					{ t = "accept", quest = 5165, title = "Dousing the Flames of Protection", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.21, y = 82.11, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4441, title = "Felbound Ancients", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 4442, title = "Purified!", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4442, title = "Purified!", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 5882, title = "Salve via Hunting", npc = 9528, npcName = "Arathandris Silversky", map = 1448, x = 54.15, y = 86.83, f = "e" },
				},
			},
			{
				note = "Top level inside the cave.",
				goals = {
					{ t = "goto", text = "Enter Jaedenar", map = 1448, x = 38.4, y = 59.74 },
					{ t = "goto", text = "Enter the cave", map = 1448, x = 35.41, y = 58.69 },
					{ t = "complete", quest = 5165, title = "Dousing the Flames of Protection", note = "Extinguish the Brazier of Pain", map = 1448, x = 36.27, y = 56.29, f = "e" },
				},
			},
			{
				note = "Top level inside the cave.",
				goals = {
					{ t = "complete", quest = 5165, title = "Dousing the Flames of Protection", note = "Extinguish the Brazier of Hatred", map = 1448, x = 36.48, y = 55.18, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5165, title = "Dousing the Flames of Protection", note = "Run around the hole in the floor and follow the path down", map = 1448, x = 38.25, y = 54.06, f = "e" },
				},
			},
			{
				note = "Bottom level inside the cave.",
				goals = {
					{ t = "complete", quest = 5165, title = "Dousing the Flames of Protection", note = "Extinguish the Brazier of Suffering", map = 1448, x = 36.73, y = 53.26, f = "e" },
				},
			},
			{
				note = "Bottom level inside the cave.",
				goals = {
					{ t = "complete", quest = 5165, title = "Dousing the Flames of Protection", note = "Extinguish the Brazier of Malice", map = 1448, x = 37.68, y = 52.69, f = "e" },
				},
			},
			{
				label = "Accept_A_Strange_Red_Key",
				along = true,
				note = "Both levels inside the cave.",
				goals = {
					{ t = "collect", item = 13140, itemName = "Blood Red Key", map = 1439, x = 51.2, y = 77.4, f = "e" },
					{ t = "use", item = 13140, itemName = "Blood Red Key" },
					{ t = "accept", quest = 5202, title = "A Strange Red Key", npc = 7118, npcName = "Jaedenar Darkweaver", map = 1448, x = 36.21, y = 55.5, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing. Inside a yellow wooden cage. Top level inside the cave.",
				goals = {
					{ t = "turnin", quest = 5202, title = "A Strange Red Key", npc = 11016, npcName = "Captured Arko'narin", map = 1448, x = 36.21, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 5165, title = "Dousing the Flames of Protection", note = "Follow the path up and leave the cave", map = 1448, x = 35.42, y = 58.81, f = "e" },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "accept", quest = 8461, title = "Deadwood of the North", npc = 15395, npcName = "Nafien", map = 1448, x = 64.77, y = 8.13, f = "e" },
				},
			},
			{
				label = "Kill_Deadwood_Enemies",
				goals = {
					{ t = "kill", quest = 8461, npc = 7156, target = "Deadwood Den Watcher", count = 6, oi = 1, map = 1448, x = 63.6, y = 9.6, f = "e" },
					{ t = "kill", quest = 8461, npc = 7157, target = "Deadwood Avenger", count = 6, oi = 2, map = 1448, x = 63.6, y = 9.6, f = "e" },
					{ t = "kill", quest = 8461, npc = 7158, target = "Deadwood Shaman", count = 6, oi = 3, map = 1448, x = 63.6, y = 9.6, f = "e" },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "turnin", quest = 8461, title = "Deadwood of the North", npc = 15395, npcName = "Nafien", map = 1448, x = 64.77, y = 8.13, f = "e" },
					{ t = "accept", quest = 8465, title = "Speak to Salfa", npc = 15395, npcName = "Nafien", map = 1448, x = 64.77, y = 8.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8465, title = "Speak to Salfa", npc = 11556, npcName = "Salfa", map = 1452, x = 27.74, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3909, title = "The Videre Elixir", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "accept", quest = 3912, title = "Meet at the Grave", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "turnin", quest = 980, title = "The New Springs", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "accept", quest = 5082, title = "Threat of the Winterfall", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
				},
			},
			{
				note = "Furbolgs.",
				goals = {
					{ t = "collect", item = 12771, itemName = "Empty Firewater Flask", map = 1452, x = 30.1, y = 36.4, f = "e" },
					{ t = "use", item = 12771, itemName = "Empty Firewater Flask" },
					{ t = "accept", quest = 5083, title = "Winterfall Firewater", npc = 7441, npcName = "Winterfall Totemic", map = 1452, x = 30.0, y = 35.4, f = "e" },
				},
			},
			{
				label = "Kill_Winterfall_Enemies",
				along = true,
				note = "Shared spawns.",
				goals = {
					{ t = "kill", quest = 5082, npc = 7441, target = "Winterfall Totemic", count = 8, oi = 3, map = 1452, x = 30.0, y = 35.4, f = "e" },
					{ t = "kill", quest = 5082, npc = 7442, target = "Winterfall Pathfinder", count = 8, oi = 1, map = 1452, x = 30.0, y = 35.4, f = "e" },
					{ t = "kill", quest = 5082, npc = 7440, target = "Winterfall Den Watcher", count = 8, oi = 2, map = 1452, x = 30.0, y = 35.4, f = "e" },
				},
			},
			{
				note = "Helps reach level 55 after quest turnins. Difficult quest soon.",
				goals = {
					{ t = "goto", text = "ding 54,165200", map = 1452, x = 30.0, y = 35.4 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5082, title = "Threat of the Winterfall", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "turnin", quest = 5083, title = "Winterfall Firewater", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "accept", quest = 5084, title = "Falling to Corruption", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
				},
			},
			{
				note = "Run away, if needed.",
				goals = {
					{ t = "turnin", quest = 5084, title = "Falling to Corruption", map = 1448, x = 60.2, y = 5.87, f = "e" },
					{ t = "accept", quest = 5085, title = "Mystery Goo", map = 1448, x = 60.2, y = 5.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5085, title = "Mystery Goo", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "accept", quest = 5086, title = "Toxic Horrors", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
				},
			},
			{
				note = "Drink the elixir in the Gadgetzan graveyard. It will kill you, that's normal. After dying, release spirit but don't resurrect. Need to stay dead to complete quest.",
				goals = {
					{ t = "complete", quest = 3912, title = "Meet at the Grave", note = "Click Here to Continue" },
				},
			},
			{
				note = "In this exact location. You will die. Careful, clear nearby enemies first. Reduces your health to very low.",
				goals = {
					{ t = "use", item = 11243, itemName = "Videre Elixir" },
					{ t = "complete", quest = 3912, title = "Meet at the Grave", note = "Drink the Videre Elixir", map = 1446, x = 54.03, y = 28.73, f = "e" },
				},
			},
			{
				note = "Human ghost. Walks around.",
				goals = {
					{ t = "turnin", quest = 3912, title = "Meet at the Grave", npc = 9299, npcName = "Gaeriyan", map = 1446, x = 53.98, y = 23.39, f = "e" },
					{ t = "accept", quest = 3913, title = "A Grave Situation", npc = 9299, npcName = "Gaeriyan", map = 1446, x = 53.98, y = 23.39, f = "e" },
					{ t = "turnin", quest = 3912, title = "Meet at the Grave", npc = 9299, npcName = "Gaeriyan", map = 1446, x = 53.98, y = 23.39, f = "e" },
					{ t = "accept", quest = 3913, title = "A Grave Situation", npc = 9299, npcName = "Gaeriyan", map = 1446, x = 53.98, y = 23.39, f = "e" },
				},
			},
			{
				note = "Return to your corpse.",
				goals = {
					{ t = "complete", quest = 3913, title = "A Grave Situation", note = "Resurrect At the Graveyard", map = 1446, x = 54.03, y = 28.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3913, title = "A Grave Situation", map = 1446, x = 53.82, y = 29.06, f = "e" },
					{ t = "accept", quest = 3914, title = "Linken's Sword", map = 1446, x = 53.82, y = 29.06, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3914, title = "Linken's Sword", npc = 8737, npcName = "Linken", map = 1449, x = 44.66, y = 8.1, f = "e" },
					{ t = "accept", quest = 3941, title = "A Gnome's Assistance", npc = 8737, npcName = "Linken", map = 1449, x = 44.66, y = 8.1, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1449, x = 43.47, y = 6.79 },
					{ t = "turnin", quest = 3941, title = "A Gnome's Assistance", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "accept", quest = 3942, title = "Linken's Memory", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.92, y = 2.7, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1449, x = 43.47, y = 6.79 },
					{ t = "turnin", quest = 5165, title = "Dousing the Flames of Protection", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.21, y = 82.11, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 3942, title = "Linken's Memory", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
					{ t = "accept", quest = 4084, title = "Silver Heart", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
				},
			},
			{
				note = "Walking trees with no leaves.",
				goals = {
					{ t = "collect", quest = 4084, item = 11173, itemName = "Irontree Heart", oi = 2, map = 1448, x = 45.2, y = 23.4, f = "e" },
				},
			},
			{
				label = "Collect_Toxic_Horror_Droplets",
				along = true,
				note = "Green water elementals.",
				goals = {
					{ t = "collect", quest = 5086, item = 12822, itemName = "Toxic Horror Droplet", count = 3, oi = 1, map = 1448, x = 47.4, y = 23.4, f = "e" },
				},
			},
			{
				label = "Collect_Silvery_Claws",
				along = true,
				note = "Bears and wolves.",
				goals = {
					{ t = "collect", quest = 4084, item = 11172, itemName = "Silvery Claws", count = 11, oi = 1, map = 1448, x = 52.4, y = 27.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5086, title = "Toxic Horrors", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "accept", quest = 5087, title = "Winterfall Runners", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "accept", quest = 4842, title = "Strange Sources", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
				},
			},
			{
				note = "Group of 3 white furbolgs. Walking a large path along the road. Skip if not found by end of path. Can finish later.",
				goals = {
					{ t = "collect", quest = 5087, item = 12829, itemName = "Winterfall Crate", oi = 1, map = 1448, x = 60.2, y = 5.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5250, title = "Starfall", npc = 11079, npcName = "Wynd Nightchaser", map = 1452, x = 51.97, y = 30.39, f = "e" },
					{ t = "accept", quest = 5244, title = "The Ruins of Kel'Theril", npc = 11079, npcName = "Wynd Nightchaser", map = 1452, x = 51.97, y = 30.39, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 5244, title = "The Ruins of Kel'Theril", npc = 10301, npcName = "Jaron Stoneshaper", map = 1452, x = 52.14, y = 30.43, f = "e" },
					{ t = "accept", quest = 5245, title = "Troubled Spirits of Kel'Theril", npc = 10301, npcName = "Jaron Stoneshaper", map = 1452, x = 52.14, y = 30.43, f = "e" },
					{ t = "accept", quest = 4861, title = "Enraged Wildkin", npc = 10301, npcName = "Jaron Stoneshaper", map = 1452, x = 52.14, y = 30.43, f = "e" },
				},
			},
			{
				note = "You will be attacked.",
				goals = {
					{ t = "collect", quest = 5245, item = 12897, itemName = "Second Relic Fragment", oi = 2, map = 1452, x = 50.88, y = 41.71, f = "e" },
				},
			},
			{
				note = "You will be attacked.",
				goals = {
					{ t = "collect", quest = 5245, item = 12899, itemName = "Fourth Relic Fragment", oi = 4, map = 1452, x = 52.42, y = 41.5, f = "e" },
				},
			},
			{
				note = "You will be attacked.",
				goals = {
					{ t = "collect", quest = 5245, item = 12898, itemName = "Third Relic Fragment", oi = 3, map = 1452, x = 53.31, y = 43.43, f = "e" },
				},
			},
			{
				note = "You will be attacked.",
				goals = {
					{ t = "collect", quest = 5245, item = 12896, itemName = "First Relic Fragment", oi = 1, map = 1452, x = 55.14, y = 42.98, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Everlook", map = 1452, x = 61.36, y = 38.83, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 6028, title = "The Everlook Report", npc = 10431, npcName = "Gregor Greystone", map = 1452, x = 61.35, y = 38.97, f = "e" },
					{ t = "accept", quest = 6030, title = "Duke Nicholas Zverenhoff", npc = 10431, npcName = "Gregor Greystone", map = 1452, x = 61.35, y = 38.97, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 4084, title = "Silver Heart", note = "bank Irontree Heart##11173", map = 1452, x = 61.46, y = 36.97, f = "e" },
					{ t = "complete", quest = 4084, title = "Silver Heart", note = "bank Silvery Claws##11172", map = 1452, x = 61.46, y = 36.97, f = "e" },
					{ t = "complete", quest = 6028, title = "The Everlook Report", note = "bank Everlook Report##15788", map = 1452, x = 61.46, y = 36.97, f = "e" },
					{ t = "complete", quest = 6030, title = "Duke Nicholas Zverenhoff", note = "bank Studies in Spirit Speaking##15790", map = 1452, x = 61.46, y = 36.97, f = "e" },
					{ t = "complete", quest = 5245, title = "Troubled Spirits of Kel'Theril", note = "bank Jaron's Pick##12891", map = 1452, x = 61.46, y = 36.97, f = "e" },
					{ t = "complete", quest = 5245, title = "Troubled Spirits of Kel'Theril", note = "bank First Relic Fragment##12896", map = 1452, x = 61.46, y = 36.97, f = "e" },
					{ t = "complete", quest = 5245, title = "Troubled Spirits of Kel'Theril", note = "bank Second Relic Fragment##12897", map = 1452, x = 61.46, y = 36.97, f = "e" },
					{ t = "complete", quest = 5245, title = "Troubled Spirits of Kel'Theril", note = "bank Third Relic Fragment##12898", map = 1452, x = 61.46, y = 36.97, f = "e" },
					{ t = "complete", quest = 5245, title = "Troubled Spirits of Kel'Theril", note = "bank Fourth Relic Fragment##12899", map = 1452, x = 61.46, y = 36.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4861, title = "Enraged Wildkin", map = 1452, x = 59.0, y = 59.78, f = "e" },
					{ t = "accept", quest = 4863, title = "Enraged Wildkin", map = 1452, x = 59.0, y = 59.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4863, title = "Enraged Wildkin", map = 1452, x = 61.41, y = 60.68, f = "e" },
					{ t = "accept", quest = 4864, title = "Enraged Wildkin", map = 1452, x = 61.41, y = 60.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4864, item = 12525, itemName = "Jaron's Supplies", oi = 1, map = 1452, x = 61.39, y = 60.73, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until she respawns, if missing.",
				goals = {
					{ t = "turnin", quest = 979, title = "Find Ranshalla", npc = 10300, npcName = "Ranshalla", map = 1452, x = 63.07, y = 59.47, f = "e" },
					{ t = "accept", quest = 4901, title = "Guardians of the Altar", npc = 10300, npcName = "Ranshalla", map = 1452, x = 63.07, y = 59.47, f = "e" },
				},
			},
			{
				note = "Follow and protect Ranshalla. Let enemies attack her first. Otherwise, she won't help fight. She is tough and unlikely to die. Try to let her tank for you. Brown torch poles. Inside each cave. Stone table. At this location. May need help.",
				goals = {
					{ t = "complete", quest = 4901, title = "Guardians of the Altar", note = "Discover the Secret of the Altar of Elune", map = 1452, x = 64.86, y = 63.69, f = "e" },
				},
			},
			{
				label = "Collect_Blue_Feathered_Amulet",
				along = true,
				goals = {
					{ t = "collect", quest = 4864, item = 12524, itemName = "Blue-feathered Amulet", oi = 2, map = 1452, x = 63.4, y = 59.2, f = "e" },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "complete", quest = 4842, title = "Strange Sources", note = "Discover Darkwhisper Gorge", map = 1452, x = 59.84, y = 74.12, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4864, title = "Enraged Wildkin", npc = 10301, npcName = "Jaron Stoneshaper", map = 1452, x = 52.14, y = 30.43, f = "e" },
				},
			},
			{
				note = "Group of 3 white furbolgs. Walking a large path along the road.",
				goals = {
					{ t = "collect", quest = 5087, item = 12829, itemName = "Winterfall Crate", oi = 1, map = 1448, x = 60.2, y = 5.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4842, title = "Strange Sources", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "turnin", quest = 5087, title = "Winterfall Runners", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8464, title = "Winterfall Activity", npc = 11556, npcName = "Salfa", map = 1452, x = 27.74, y = 34.5, f = "e" },
				},
			},
			{
				note = "Alternatively, run dungeons to reach level 56. Turn in stacks of 5 to Nafien. Each stack gives 50 reputation.",
				goals = {
					{ t = "collect", item = 21377, itemName = "Deadwood Headdress Feather", map = 1448, x = 61.0, y = 6.0, f = "e" },
					{ t = "goto", text = "Reach Neutral Reputation with the Timbermaw Hold Faction", map = 1448, x = 63.6, y = 9.6 },
				},
			},
			{
				label = "Accept_Deadwood_Ritual_Totem",
				along = true,
				goals = {
					{ t = "collect", item = 20741, itemName = "Deadwood Ritual Totem", map = 1448, x = 61.0, y = 6.0, f = "e" },
					{ t = "use", item = 20741, itemName = "Deadwood Ritual Totem" },
					{ t = "accept", quest = 8470, title = "Deadwood Ritual Totem", npc = 7156, npcName = "Deadwood Den Watcher", map = 1448, x = 63.6, y = 9.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8467, title = "Feathers for Nafien", npc = 15395, npcName = "Nafien", map = 1448, x = 64.77, y = 8.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20742, itemName = "Winterfall Ritual Totem" },
					{ t = "accept", quest = 8471, title = "Winterfall Ritual Totem" },
				},
			},
			{
				note = "Walks around. Inside the tunnel.",
				goals = {
					{ t = "turnin", quest = 8470, title = "Deadwood Ritual Totem", npc = 11558, npcName = "Kernda", map = 1448, x = 65.49, y = 3.48, f = "e" },
					{ t = "turnin", quest = 8471, title = "Winterfall Ritual Totem", npc = 11558, npcName = "Kernda", map = 1448, x = 65.49, y = 3.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 56", map = 1448, x = 62.4, y = 12.6 },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4901, title = "Guardians of the Altar", npc = 7916, npcName = "Erelas Ambersky", map = 1438, x = 55.5, y = 92.05, f = "e" },
					{ t = "accept", quest = 4902, title = "Wildkin of Elune", npc = 7916, npcName = "Erelas Ambersky", map = 1438, x = 55.5, y = 92.05, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 4091, npcName = "Jandria", map = 1457, x = 37.9, y = 82.73, f = "e" },
				},
			},
			{
				note = "Collect from the bank.",
				goals = {
					{ t = "collect", quest = 4022, item = 10575, itemName = "Black Dragonflight Molt", map = 1457, x = 39.6, y = 41.99, f = "e" },
					{ t = "collect", quest = 5022, item = 12724, itemName = "Janice's Parcel", map = 1457, x = 39.6, y = 41.99, f = "e" },
					{ t = "collect", quest = 3461, item = 10445, itemName = "Drawing Kit", map = 1457, x = 39.6, y = 41.99, f = "e" },
					{ t = "collect", quest = 4512, item = 11947, itemName = "Filled Cursed Ooze Jar", count = 6, map = 1457, x = 39.6, y = 41.99, f = "e" },
					{ t = "collect", quest = 4512, item = 11949, itemName = "Filled Tainted Ooze Jar", count = 6, map = 1457, x = 39.6, y = 41.99, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 4089, npcName = "Sildanair", map = 1457, x = 61.78, y = 42.21, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "skill", level = 75, skill = "Riding" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 4146, npcName = "Jocaste", map = 1457, x = 40.38, y = 8.54, f = "e" },
				},
			},
			{
				note = "Downstairs inside the tree cave.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "goto", text = "Enter the tree cave", map = 1457, x = 32.14, y = 16.46 },
					{ t = "train", npc = 4163, npcName = "Syurna", map = 1457, x = 37.0, y = 21.92, f = "e" },
				},
			},
			{
				note = "Walks around. Top of the tower.",
				goals = {
					{ t = "turnin", quest = 4902, title = "Wildkin of Elune", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 34.82, y = 9.25, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 7312, npcName = "Dink", map = 1455, x = 27.16, y = 8.56, f = "e" },
				},
			},
		},
	})
end

