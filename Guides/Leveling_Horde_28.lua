-- TuWoW_Leveling — Guides/Leveling_Horde_28.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-the-hinterlands-48-49",
		pack = "guides",
		title = "The Hinterlands",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-feralas-and-ungoro-crater-49-50",
		author = "TuWoW & Zygor",
		minLevel = 48,
		maxLevel = 49,
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "Buy from the Auction House, if possible. Saves time in Un'Goro Crater. Inside the building.",
				goals = {
					{ t = "collect", quest = 4284, item = 11186, itemName = "Red Power Crystal", count = 7, map = 1454, x = 55.69, y = 62.86, f = "e" },
					{ t = "collect", quest = 4284, item = 11188, itemName = "Yellow Power Crystal", count = 7, map = 1454, x = 55.69, y = 62.86, f = "e" },
					{ t = "collect", quest = 4284, item = 11185, itemName = "Green Power Crystal", count = 7, map = 1454, x = 55.69, y = 62.86, f = "e" },
					{ t = "collect", quest = 4284, item = 11184, itemName = "Blue Power Crystal", count = 7, map = 1454, x = 55.69, y = 62.86, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 7842, item = 4589, itemName = "Long Elegant Feather", count = 10, map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 864, item = 8527, itemName = "Sealed Field Testing Kit", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 1429, item = 6193, itemName = "Bundle of Atal'ai Artifacts", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "collect", quest = 3123, item = 9618, itemName = "Wildkin Muisek Vessel", map = 1454, x = 49.58, y = 69.12, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 3444, title = "The Stone Circle", note = "bank Stone Circle##10556", map = 1454, x = 49.58, y = 69.12, f = "e" },
					{ t = "goto", text = "bank Red Power Crystal##11186", map = 1454, x = 49.58, y = 69.12 },
					{ t = "goto", text = "bank Yellow Power Crystal##11188", map = 1454, x = 49.58, y = 69.12 },
					{ t = "goto", text = "bank Green Power Crystal##11185", map = 1454, x = 49.58, y = 69.12 },
					{ t = "goto", text = "bank Blue Power Crystal##11184", map = 1454, x = 49.58, y = 69.12 },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", text = "Train Undead Horsemanship", map = 1420, x = 60.08, y = 52.57 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2995, title = "Lines of Communication", npc = 7825, npcName = "Oran Snakewrithe", map = 1458, x = 73.06, y = 32.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.86, y = 77.57 },
					{ t = "turnin", quest = 864, title = "Return to Apothecary Zinge", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 50.14, y = 67.97, f = "e" },
				},
			},
			{
				note = "Stock up on ammo. No level 40 ammo in the Hinterlands.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 2401, npcName = "Kayren Soothallow", map = 1424, x = 62.56, y = 19.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2933, title = "Venom Bottles", map = 1425, x = 22.99, y = 57.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1425, x = 20.8, y = 47.91 },
					{ t = "turnin", quest = 650, title = "Ripple Recovery", npc = 7801, npcName = "Gilveradin Sunchaser", map = 1425, x = 26.71, y = 48.59, f = "e" },
					{ t = "accept", quest = 77, title = "A Sticky Situation", npc = 7801, npcName = "Gilveradin Sunchaser", map = 1425, x = 26.71, y = 48.59, f = "e" },
				},
			},
			{
				note = "Brown mushrooms. Underwater.",
				goals = {
					{ t = "collect", quest = 2641, item = 8526, itemName = "Violet Tragan", oi = 1, map = 1425, x = 41.04, y = 59.79, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "goto", text = "Follow the road around the mountain and run down the path", map = 1425, x = 72.48, y = 66.1 },
					{ t = "accept", quest = 7839, title = "Vilebranch Hooligans", npc = 14737, npcName = "Smith Slagtree", map = 1425, x = 77.23, y = 80.12, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7840, title = "Lard Lost His Lunch", npc = 14731, npcName = "Lard", map = 1425, x = 78.14, y = 81.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7815, title = "Snapjaws, Mon!", npc = 14740, npcName = "Katoom the Angler", map = 1425, x = 80.33, y = 81.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Revantusk Village", map = 1425, x = 81.7, y = 81.76, f = "e" },
				},
			},
			{
				note = "Three attack.",
				goals = {
					{ t = "collect", quest = 7840, item = 19034, itemName = "Lard's Lunch", oi = 1, map = 1425, x = 84.47, y = 41.22, f = "e" },
				},
			},
			{
				label = "Collect_Pupellyverbos_Port",
				along = true,
				note = "Small blue bottles. Reduce the Ground Clutter setting to 1. In System > Graphics game settings. Makes them easier to see.",
				goals = {
					{ t = "collect", quest = 580, item = 3900, itemName = "Pupellyverbos Port", count = 12, oi = 1, map = 1425, x = 77.4, y = 70.3, f = "e" },
				},
			},
			{
				label = "Kill_Saltwater_Snapjaws",
				along = true,
				goals = {
					{ t = "kill", quest = 7815, npc = 2505, target = "Saltwater Snapjaw", count = 15, oi = 1, map = 1425, x = 78.2, y = 68.2, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 7840, title = "Lard Lost His Lunch", npc = 14731, npcName = "Lard", map = 1425, x = 78.14, y = 81.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7815, title = "Snapjaws, Mon!", npc = 14740, npcName = "Katoom the Angler", map = 1425, x = 80.33, y = 81.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7828, title = "Stalking the Stalkers", npc = 14741, npcName = "Huntsman Markhor", map = 1425, x = 79.16, y = 79.52, f = "e" },
					{ t = "accept", quest = 7829, title = "Hunt the Savages", npc = 14741, npcName = "Huntsman Markhor", map = 1425, x = 79.16, y = 79.52, f = "e" },
					{ t = "accept", quest = 7830, title = "Avenging the Fallen", npc = 14741, npcName = "Huntsman Markhor", map = 1425, x = 79.16, y = 79.52, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 7841, title = "Message to the Wildhammer", npc = 14738, npcName = "Otho Moji'ko", map = 1425, x = 79.4, y = 79.09, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "accept", quest = 7844, title = "Cannibalistic Cousins", npc = 14739, npcName = "Mystic Yayo'jin", map = 1425, x = 78.8, y = 78.24, f = "e" },
				},
			},
			{
				note = "Small silver bucket of tools. Multiple locations.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1425, x = 76.06, y = 61.17 },
					{ t = "collect", quest = 7839, item = 19033, itemName = "Slagtree's Lost Tools", oi = 1, map = 1425, x = 72.6, y = 53.0, f = "e" },
				},
			},
			{
				label = "Collect_Skylord_Plume",
				along = true,
				note = "Large eagle beasts. Shared spawns with wolves and owlbeasts.",
				goals = {
					{ t = "collect", quest = 7830, item = 19025, itemName = "Skylord Plume", oi = 1, map = 1425, x = 60.2, y = 50.6, f = "e" },
				},
			},
			{
				note = "Wooden boxes. Inside the cave.",
				goals = {
					{ t = "collect", quest = 77, item = 8684, itemName = "Hinterlands Honey Ripple", count = 10, oi = 1, map = 1425, x = 57.46, y = 38.88, f = "e" },
				},
			},
			{
				note = "Wolves.",
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1425, x = 57.46, y = 38.88 },
					{ t = "kill", quest = 7828, npc = 2925, target = "Silvermane Howler", count = 15, oi = 2, map = 1425, x = 46.6, y = 53.6, f = "e" },
				},
			},
			{
				label = "Kill_Vilebranch__Soothsayers",
				along = true,
				goals = {
					{ t = "kill", quest = 7844, npc = 4467, target = "Vilebranch Soothsayer", count = 15, oi = 2, map = 1425, x = 46.8, y = 63.2, f = "e" },
				},
			},
			{
				label = "Kill_Vilebranch_Scalpers",
				along = true,
				note = "Multiple locations. notinsticky",
				goals = {
					{ t = "kill", quest = 7844, npc = 4466, target = "Vilebranch Scalper", count = 30, oi = 1, map = 1425, x = 45.6, y = 63.4, f = "e" },
				},
			},
			{
				label = "Kill_Silvermane_Stalkers",
				along = true,
				note = "Stealthed wolves.",
				goals = {
					{ t = "kill", quest = 7828, npc = 2926, target = "Silvermane Stalker", count = 15, oi = 1, map = 1425, x = 51.8, y = 49.4, f = "e" },
				},
			},
			{
				label = "Collect_Wildkin_Muiseks",
				along = true,
				note = "On their corpses.",
				goals = {
					{ t = "use", item = 9618, itemName = "Wildkin Muisek Vessel" },
					{ t = "collect", quest = 3123, item = 9594, itemName = "Wildkin Muisek", count = 10, oi = 1, map = 1425, x = 57.4, y = 50.4, f = "e" },
				},
			},
			{
				label = "Kill_Savage_Owlbeasts",
				along = true,
				goals = {
					{ t = "kill", quest = 7829, npc = 2929, target = "Savage Owlbeast", count = 20, oi = 1, map = 1425, x = 57.4, y = 50.4, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "complete", quest = 2995, title = "Lines of Communication", note = "Burn the Highvale Records", map = 1425, x = 31.98, y = 46.83, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until he respawns, if missing. Inside the building.",
				goals = {
					{ t = "accept", quest = 2742, title = "Rin'ji is Trapped!", npc = 7780, npcName = "Rin'ji", map = 1425, x = 30.73, y = 46.97, f = "e" },
				},
			},
			{
				note = "Follow and protect Rin'ji. Two groups of three enemies attack.",
				goals = {
					{ t = "complete", quest = 2742, title = "Rin'ji is Trapped!", note = "Escort Rin'ji to Safety", map = 1425, x = 34.64, y = 56.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2995, title = "Lines of Communication", note = "Burn the Highvale Notes", map = 1425, x = 29.63, y = 48.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2995, title = "Lines of Communication", note = "Burn the Highvale Report", map = 1425, x = 28.56, y = 46.05, f = "e" },
				},
			},
			{
				label = "Kill_Highvale_Marksmen",
				along = true,
				goals = {
					{ t = "kill", quest = 7841, npc = 2693, target = "Highvale Marksman", count = 15, oi = 4, map = 1425, x = 31.74, y = 49.4, f = "e" },
				},
			},
			{
				label = "Kill_Highvale_Outrunners",
				along = true,
				goals = {
					{ t = "kill", quest = 7841, npc = 2691, target = "Highvale Outrunner", count = 15, oi = 2, map = 1425, x = 32.2, y = 51.0, f = "e" },
				},
			},
			{
				label = "Kill_Highvale_Rangers",
				along = true,
				goals = {
					{ t = "kill", quest = 7841, npc = 2694, target = "Highvale Ranger", count = 15, oi = 3, map = 1425, x = 32.4, y = 50.4, f = "e" },
				},
			},
			{
				label = "Kill_Highvale_Scouts",
				along = true,
				goals = {
					{ t = "kill", quest = 7841, npc = 2692, target = "Highvale Scout", count = 15, oi = 1, map = 1425, x = 32.2, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8704, itemName = "OOX-09/HL Distress Beacon" },
					{ t = "accept", quest = 485, title = "Find OOX-09/HL!" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 485, title = "Find OOX-09/HL!", npc = 7806, npcName = "Homing Robot OOX-09/HL", map = 1425, x = 49.35, y = 37.66, f = "e" },
				},
			},
			{
				note = "Follow the road down to the coast. Can also follow the river and jump off the waterfall.",
				goals = {
					{ t = "turnin", quest = 2742, title = "Rin'ji is Trapped!", map = 1425, x = 86.3, y = 59.01, f = "e" },
					{ t = "accept", quest = 2782, title = "Rin'ji's Secret", map = 1425, x = 86.3, y = 59.01, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 7839, title = "Vilebranch Hooligans", npc = 14737, npcName = "Smith Slagtree", map = 1425, x = 77.24, y = 80.12, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "turnin", quest = 7844, title = "Cannibalistic Cousins", npc = 14739, npcName = "Mystic Yayo'jin", map = 1425, x = 78.8, y = 78.25, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 7841, title = "Message to the Wildhammer", npc = 14738, npcName = "Otho Moji'ko", map = 1425, x = 79.4, y = 79.08, f = "e" },
					{ t = "accept", quest = 7842, title = "Another Message to the Wildhammer", npc = 14738, npcName = "Otho Moji'ko", map = 1425, x = 79.4, y = 79.08, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 7842, title = "Another Message to the Wildhammer", npc = 14738, npcName = "Otho Moji'ko", map = 1425, x = 79.4, y = 79.08, f = "e" },
					{ t = "accept", quest = 7843, title = "The Final Message to the Wildhammer", npc = 14738, npcName = "Otho Moji'ko", map = 1425, x = 79.4, y = 79.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7828, title = "Stalking the Stalkers", npc = 14741, npcName = "Huntsman Markhor", map = 1425, x = 79.16, y = 79.53, f = "e" },
					{ t = "turnin", quest = 7829, title = "Hunt the Savages", npc = 14741, npcName = "Huntsman Markhor", map = 1425, x = 79.16, y = 79.53, f = "e" },
					{ t = "turnin", quest = 7830, title = "Avenging the Fallen", npc = 14741, npcName = "Huntsman Markhor", map = 1425, x = 79.16, y = 79.53, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2933, title = "Venom Bottles", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
					{ t = "accept", quest = 2934, title = "Undamaged Venom Sac", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.06, f = "e" },
				},
			},
			{
				note = "Avoid Alliance NPC enemies. Careful, you'll be flagged for PvP.",
				goals = {
					{ t = "use", item = 19036, itemName = "Final Message to the Wildhammer" },
					{ t = "complete", quest = 7843, title = "The Final Message to the Wildhammer", note = "Deliver the Message to the Wildhammer", map = 1425, x = 14.39, y = 48.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1425, x = 20.44, y = 48.08 },
					{ t = "turnin", quest = 77, title = "A Sticky Situation", npc = 7801, npcName = "Gilveradin Sunchaser", map = 1425, x = 26.71, y = 48.59, f = "e" },
					{ t = "accept", quest = 81, title = "Ripple Delivery", npc = 7801, npcName = "Gilveradin Sunchaser", map = 1425, x = 26.71, y = 48.59, f = "e" },
				},
			},
			{
				note = "Up on the ledge.",
				goals = {
					{ t = "goto", text = "Enter Shadra'Alor", map = 1425, x = 35.81, y = 63.99 },
					{ t = "turnin", quest = 1429, title = "The Atal'ai Exile", npc = 5598, npcName = "Atal'ai Exile", map = 1425, x = 33.75, y = 75.21, f = "e" },
					{ t = "accept", quest = 1444, title = "Return to Fel'Zerul", npc = 5598, npcName = "Atal'ai Exile", map = 1425, x = 33.75, y = 75.21, f = "e" },
				},
			},
			{
				label = "Collect_Undamaged_Venom_Sac",
				along = true,
				note = "Spiders.",
				goals = {
					{ t = "collect", quest = 2934, item = 9322, itemName = "Undamaged Venom Sac", oi = 1, map = 1425, x = 34.2, y = 67.0, f = "e" },
				},
			},
			{
				note = "Hurry, timed quest.",
				goals = {
					{ t = "complete", quest = 2934, title = "Undamaged Venom Sac", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8704, itemName = "OOX-09/HL Distress Beacon" },
					{ t = "accept", quest = 485, title = "Find OOX-09/HL!" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave Shadra'Alor", map = 1425, x = 35.8, y = 64.19 },
					{ t = "turnin", quest = 485, title = "Find OOX-09/HL!", npc = 7806, npcName = "Homing Robot OOX-09/HL", map = 1425, x = 49.35, y = 37.66, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Leave Shadra'Alor", map = 1425, x = 35.8, y = 64.19 },
					{ t = "goto", text = "Follow the road around the mountain and run down the path", map = 1425, x = 72.48, y = 66.1 },
					{ t = "turnin", quest = 7843, title = "The Final Message to the Wildhammer", npc = 14738, npcName = "Otho Moji'ko", map = 1425, x = 79.38, y = 79.08, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Leave Shadra'Alor", map = 1425, x = 35.8, y = 64.19 },
					{ t = "goto", text = "Follow the road around the mountain and run down the path", map = 1425, x = 72.48, y = 66.1 },
					{ t = "turnin", quest = 2934, title = "Undamaged Venom Sac", npc = 2216, npcName = "Apothecary Lydon", map = 1424, x = 61.44, y = 19.07, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2995, title = "Lines of Communication", npc = 7825, npcName = "Oran Snakewrithe", map = 1458, x = 73.07, y = 32.85, f = "e" },
					{ t = "turnin", quest = 2782, title = "Rin'ji's Secret", npc = 7825, npcName = "Oran Snakewrithe", map = 1458, x = 73.07, y = 32.85, f = "e" },
					{ t = "accept", quest = 8273, title = "Oran's Gratitude", npc = 7825, npcName = "Oran Snakewrithe", map = 1458, x = 73.07, y = 32.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.86, y = 77.57 },
					{ t = "accept", quest = 3568, title = "Seeping Corruption", npc = 8390, npcName = "Chemist Cuely", map = 1458, x = 48.71, y = 71.42, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", text = "Train Undead Horsemanship", map = 1420, x = 60.08, y = 52.57 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2641, title = "Sprinkle's Secret Ingredient", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.06, y = 26.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2661, title = "Delivery for Marin", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.06, y = 26.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2661, title = "Delivery for Marin", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.81, y = 28.66, f = "e" },
					{ t = "accept", quest = 2662, title = "Noggenfogger Elixir", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.81, y = 28.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2662, title = "Noggenfogger Elixir", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.81, y = 28.66, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 81, title = "Ripple Delivery", note = "bank Dran's Ripple Delivery##8685", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "complete", quest = 580, title = "Whiskey Slim's Lost Grog", note = "bank Pupellyverbos Port##3900", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "complete", quest = 3568, title = "Seeping Corruption", note = "bank Box of Empty Vials##10695", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
		},
	})
end

