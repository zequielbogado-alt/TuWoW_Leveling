-- TuWoW_Leveling — Guides/Leveling_Horde_33.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-felwood-and-winterspring-54-56",
		pack = "guides",
		title = "Felwood & Winterspring (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-felwood-and-winterspring-54-56-part-2",
		author = "TuWoW & Zygor",
		minLevel = 54,
		maxLevel = 56,
		zone = 1448,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 4506, title = "Corrupted Sabers", npc = 9996, npcName = "Winna Hazzard", map = 1448, x = 34.21, y = 52.34, f = "e" },
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
				note = "Don't vendor them. Can be turned in later for xp and reputation.",
				goals = {
					{ t = "collect", item = 21377, itemName = "Deadwood Headdress Feather", map = 1448, x = 48.7, y = 91.0, f = "e" },
					{ t = "collect", quest = 5887, item = 11515, itemName = "Corrupted Soul Shard", count = 6, map = 1448, x = 48.4, y = 89.2, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 5887, title = "Salve via Hunting", npc = 9529, npcName = "Maybess Riverbreeze", map = 1448, x = 46.72, y = 83.07, f = "e" },
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
				note = "Summons a green Corrupted Saber cat. Wait until it starts following you. Careful, stealthed enemies.",
				goals = {
					{ t = "goto", text = "Run around the mountain and follow the path", map = 1448, x = 36.64, y = 66.86 },
					{ t = "use", item = 12565, itemName = "Winna's Kitten Carrier" },
					{ t = "complete", quest = 4506, title = "Corrupted Sabers", note = "Click Here to Continue", map = 1448, x = 32.41, y = 66.58, f = "e" },
				},
			},
			{
				note = "Green cat next to you. Next to Winna Hazzard.",
				goals = {
					{ t = "goto", text = "Follow the river west", map = 1448, x = 37.54, y = 49.25 },
					{ t = "complete", quest = 4506, title = "Corrupted Sabers", note = "Return the Corrupted Cat to Winna Hazzard", map = 1448, x = 34.21, y = 52.34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4506, title = "Corrupted Sabers", npc = 9996, npcName = "Winna Hazzard", map = 1448, x = 34.21, y = 52.34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4521, title = "Wild Guardians", npc = 10306, npcName = "Trull Failbane", map = 1448, x = 34.73, y = 52.79, f = "e" },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "accept", quest = 8461, title = "Deadwood of the North", npc = 15395, npcName = "Nafien", map = 1448, x = 64.77, y = 8.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8461, npc = 7156, target = "Deadwood Den Watcher", count = 6, oi = 1, map = 1448, x = 63.6, y = 9.6, f = "e" },
					{ t = "kill", quest = 8461, npc = 7157, target = "Deadwood Avenger", count = 6, oi = 2, map = 1448, x = 63.6, y = 9.6, f = "e" },
					{ t = "kill", quest = 8461, npc = 7158, target = "Deadwood Shaman", count = 6, oi = 3, map = 1448, x = 63.6, y = 9.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 55", map = 1448, x = 63.6, y = 9.6 },
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
				note = "Follow the road.",
				goals = {
					{ t = "turnin", quest = 8461, title = "Deadwood of the North", npc = 15395, npcName = "Nafien", map = 1448, x = 64.77, y = 8.13, f = "e" },
					{ t = "accept", quest = 8465, title = "Speak to Salfa", npc = 15395, npcName = "Nafien", map = 1448, x = 64.77, y = 8.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8467, title = "Feathers for Nafien", npc = 15395, npcName = "Nafien", map = 1448, x = 64.77, y = 8.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8465, title = "Speak to Salfa", npc = 11556, npcName = "Salfa", map = 1452, x = 27.74, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 980, title = "The New Springs", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "accept", quest = 4842, title = "Strange Sources", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "turnin", quest = 3909, title = "The Videre Elixir", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "accept", quest = 3912, title = "Meet at the Grave", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "turnin", quest = 5085, title = "Mystery Goo", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "accept", quest = 5086, title = "Toxic Horrors", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4521, npc = 7450, target = "Ragged Owlbeast", count = 15, oi = 2, map = 1452, x = 29.0, y = 44.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3783, title = "Are We There, Yeti?", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.88, y = 37.62, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 3542, title = "Delivery to Andron Gant", note = "bank Tablet of Markri##10540", map = 1452, x = 61.45, y = 36.98, f = "e" },
					{ t = "complete", quest = 3912, title = "Meet at the Grave", note = "bank Videre Elixir##11243", map = 1452, x = 61.45, y = 36.98, f = "e" },
					{ t = "complete", quest = 3912, title = "Meet at the Grave", note = "bank Linken's Tempered Sword##11136", map = 1452, x = 61.45, y = 36.98, f = "e" },
					{ t = "complete", quest = 3507, title = "Betrayed", note = "bank Head of Magus Rimtori##10597", map = 1452, x = 61.45, y = 36.98, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4521, npc = 7451, target = "Raging Owlbeast", count = 15, oi = 1, map = 1452, x = 59.4, y = 31.4, f = "e" },
				},
			},
			{
				label = "Collect_Thick_Yeti_Fur",
				along = true,
				note = "Yetis. Inside and outside the cave. notinsticky",
				goals = {
					{ t = "collect", quest = 3783, item = 12366, itemName = "Thick Yeti Fur", count = 10, oi = 1, map = 1452, x = 67.65, y = 41.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3783, title = "Are We There, Yeti?", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.88, y = 37.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4809, title = "Chillwind Horns", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.63, y = 38.61, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Everlook", map = 1452, x = 61.36, y = 38.83, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4521, title = "Wild Guardians", npc = 10306, npcName = "Trull Failbane", map = 1448, x = 34.73, y = 52.79, f = "e" },
					{ t = "accept", quest = 4741, title = "Wild Guardians", npc = 10306, npcName = "Trull Failbane", map = 1448, x = 34.73, y = 52.79, f = "e" },
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
					{ t = "accept", quest = 4504, title = "Super Sticky", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
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
				note = "Swamp elementals.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1449, x = 43.47, y = 6.79 },
					{ t = "collect", quest = 4504, item = 11834, itemName = "Super Sticky Tar", count = 12, oi = 1, map = 1449, x = 45.4, y = 15.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4504, title = "Super Sticky", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 6029, title = "The Everlook Report", npc = 10431, npcName = "Gregor Greystone", map = 1452, x = 61.35, y = 38.97, f = "e" },
					{ t = "accept", quest = 6030, title = "Duke Nicholas Zverenhoff", npc = 10431, npcName = "Gregor Greystone", map = 1452, x = 61.35, y = 38.97, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 5601, title = "Sister Pamela", npc = 11629, npcName = "Jessica Redpath", map = 1452, x = 61.28, y = 38.98, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 6029, title = "The Everlook Report", note = "bank Everlook Report##15788", map = 1452, x = 61.45, y = 36.98, f = "e" },
					{ t = "complete", quest = 6030, title = "Duke Nicholas Zverenhoff", note = "bank Studies in Spirit Speaking##15790", map = 1452, x = 61.45, y = 36.98, f = "e" },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "complete", quest = 4842, title = "Strange Sources", note = "Discover Darkwhisper Gorge", map = 1452, x = 59.84, y = 74.12, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
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
				note = "Turn in stacks of 5 to Nafien. Each stack gives 50 reputation.",
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
				note = "Walks around. Inside the tunnel.",
				goals = {
					{ t = "turnin", quest = 8470, title = "Deadwood Ritual Totem", npc = 11558, npcName = "Kernda", map = 1448, x = 65.49, y = 3.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4842, title = "Strange Sources", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "turnin", quest = 5086, title = "Toxic Horrors", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
					{ t = "accept", quest = 5087, title = "Winterfall Runners", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
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
					{ t = "turnin", quest = 5087, title = "Winterfall Runners", npc = 9298, npcName = "Donova Snowden", map = 1452, x = 31.27, y = 45.16, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8464, title = "Winterfall Activity", npc = 11556, npcName = "Salfa", map = 1452, x = 27.74, y = 34.5, f = "e" },
				},
			},
			{
				note = "Count will reduce as you grind.",
				goals = {
					{ t = "goto", text = "ding 56", map = 1448, x = 63.6, y = 9.6 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 4084, title = "Silver Heart", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
					{ t = "accept", quest = 4005, title = "Aquementas", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.35, y = 81.51, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 3507, item = 10597, itemName = "Head of Magus Rimtori", map = 1452, x = 61.46, y = 36.97, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 4005, title = "Aquementas", note = "bank Eridan's Supplies##11617", map = 1452, x = 61.46, y = 36.97, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5883, npcName = "Enyo", map = 1454, x = 38.79, y = 85.65, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 6018, npcName = "Ur'kyo", map = 1454, x = 35.59, y = 87.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3344, npcName = "Kardris Dreamseeker", map = 1454, x = 38.8, y = 36.38, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3328, npcName = "Ormok", map = 1454, x = 43.91, y = 54.63, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3325, npcName = "Mirket", map = 1454, x = 48.62, y = 46.95, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the Cleft of Shadow.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5815, npcName = "Kurgul", map = 1454, x = 47.52, y = 46.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3507, title = "Betrayed", npc = 4485, npcName = "Belgrom Rockmaul", map = 1454, x = 75.23, y = 34.23, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3353, npcName = "Grezz Ragefist", map = 1454, x = 79.78, y = 31.42, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3352, npcName = "Ormak Grimshot", map = 1454, x = 66.06, y = 18.54, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "goto", text = "Train Wolf Riding", map = 1454, x = 69.4, y = 13.1 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Orgrimmar", map = 1454, x = 54.09, y = 68.42, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "goto", text = "Train Raptor Riding", map = 1411, x = 55.28, y = 75.49 },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", text = "Train Kodo Riding", map = 1412, x = 46.78, y = 62.01 },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", text = "Train Undead Horsemanship", map = 1420, x = 60.08, y = 52.57 },
				},
			},
			{
				note = "Collect from the bank.",
				goals = {
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "collect Filled Vial Labeled #1##10691", map = 1458, x = 65.97, y = 44.75, f = "e" },
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "collect Filled Vial Labeled #2##10692", map = 1458, x = 65.97, y = 44.75, f = "e" },
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "collect Filled Vial Labeled #3##10693", map = 1458, x = 65.97, y = 44.75, f = "e" },
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "collect Filled Vial Labeled #4##10694", map = 1458, x = 65.97, y = 44.75, f = "e" },
					{ t = "collect", quest = 3542, item = 10540, itemName = "Tablet of Markri", map = 1458, x = 65.97, y = 44.75, f = "e" },
					{ t = "collect", quest = 6029, item = 15788, itemName = "Everlook Report", map = 1458, x = 65.97, y = 44.75, f = "e" },
					{ t = "collect", quest = 6030, item = 15790, itemName = "Studies in Spirit Speaking", map = 1458, x = 65.97, y = 44.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3542, title = "Delivery to Andron Gant", npc = 6522, npcName = "Andron Gant", map = 1458, x = 54.82, y = 76.33, f = "e" },
					{ t = "accept", quest = 3564, title = "Andron's Payment to Jediga", npc = 6522, npcName = "Andron Gant", map = 1458, x = 54.82, y = 76.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.86, y = 77.57 },
					{ t = "turnin", quest = 3568, title = "Seeping Corruption", npc = 8390, npcName = "Chemist Cuely", map = 1458, x = 48.71, y = 71.42, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3569, title = "Seeping Corruption", npc = 8390, npcName = "Chemist Cuely", map = 1458, x = 48.69, y = 71.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3569, title = "Seeping Corruption", npc = 8393, npcName = "Thersa Windsong", map = 1458, x = 49.03, y = 70.83, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-felwood-and-winterspring-54-56-part-2",
		pack = "guides",
		title = "Felwood & Winterspring (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-western-and-eastern-plaguelands-56-58",
		author = "TuWoW & Zygor",
		minLevel = 54,
		maxLevel = 56,
		zone = 1448,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 3570, title = "Seeping Corruption", npc = 8390, npcName = "Chemist Cuely", map = 1458, x = 48.71, y = 71.4, f = "e" },
				},
			},
			{
				note = "Collect from the bank.",
				goals = {
					{ t = "complete", quest = 3564, title = "Andron's Payment to Jediga", note = "bank Andron's Note##10679", map = 1458, x = 65.97, y = 44.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7816, title = "Gammerita, Mon!", npc = 14740, npcName = "Katoom the Angler", map = 1425, x = 80.33, y = 81.53, f = "e" },
				},
			},
			{
				note = "Bottom of the waterfall. Underwater.",
				goals = {
					{ t = "turnin", quest = 626, title = "Cortello's Riddle", map = 1425, x = 80.81, y = 46.81, f = "e" },
				},
			},
			{
				label = "Collect_Katooms_Best_Lure",
				along = true,
				note = "Level 48 elite blue turtle. Walks around.",
				goals = {
					{ t = "collect", quest = 7816, item = 19023, itemName = "Katoom's Best Lure", oi = 1, map = 1425, x = 81.4, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7816, title = "Gammerita, Mon!", npc = 14740, npcName = "Katoom the Angler", map = 1425, x = 80.33, y = 81.53, f = "e" },
				},
			},
		},
	})
end

