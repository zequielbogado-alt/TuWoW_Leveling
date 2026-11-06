-- TuWoW_Leveling — Guides/Leveling_Horde_27.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-tanaris-and-dustwallow-marsh-46-48",
		pack = "guides",
		title = "Tanaris & Dustwallow Marsh (Parte 1/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-tanaris-and-dustwallow-marsh-46-48-part-2",
		author = "TuWoW & Zygor",
		minLevel = 46,
		maxLevel = 48,
		zone = 1441,
		version = 1,
		steps = {
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
					{ t = "turnin", quest = 1187, title = "Razzeric's Tweaking", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.33, y = 76.1, f = "e" },
					{ t = "accept", quest = 1188, title = "Safety First", npc = 4706, npcName = "Razzeric", map = 1441, x = 80.33, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3362, title = "Thistleshrub Valley", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1188, title = "Safety First", npc = 4708, npcName = "Shreev", map = 1446, x = 50.96, y = 27.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 992, title = "Gadgetzan Water Survey", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
				},
			},
			{
				note = "Avoid elite enemies. You will be attacked. Careful, two higher level enemies. Run away quickly.",
				goals = {
					{ t = "use", item = 8584, itemName = "Untapped Dowsing Widget" },
					{ t = "collect", quest = 992, item = 8585, itemName = "Tapped Dowsing Widget", oi = 1, map = 1446, x = 39.09, y = 29.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 992, title = "Gadgetzan Water Survey", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 82, title = "Noxious Lair Investigation", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2781, title = "WANTED: Caliph Scorpidsting", map = 1446, x = 51.84, y = 27.02, f = "e" },
					{ t = "accept", quest = 2875, title = "WANTED: Andre Firebeard", map = 1446, x = 51.84, y = 27.02, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2741, title = "The Super Egg-O-Matic", map = 1446, x = 52.37, y = 26.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 8647, itemName = "Egg Crate" },
					{ t = "collect", item = 8646, itemName = "Bad Egg" },
					{ t = "collect", item = 8645, itemName = "Ordinary Egg" },
					{ t = "collect", item = 8644, itemName = "Fine Egg" },
					{ t = "collect", item = 8643, itemName = "Extraordinary Egg" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2750, title = "A Bad Egg", npc = 7763, npcName = "Curgle Cranklehop", map = 1446, x = 52.36, y = 26.91, f = "e" },
					{ t = "accept", quest = 2749, title = "An Ordinary Egg", npc = 7763, npcName = "Curgle Cranklehop", map = 1446, x = 52.36, y = 26.91, f = "e" },
					{ t = "accept", quest = 2748, title = "A Fine Egg", npc = 7763, npcName = "Curgle Cranklehop", map = 1446, x = 52.36, y = 26.91, f = "e" },
					{ t = "accept", quest = 2747, title = "An Extraordinary Egg", npc = 7763, npcName = "Curgle Cranklehop", map = 1446, x = 52.36, y = 26.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5863, title = "The Dunemaul Compound", npc = 11758, npcName = "Andi Lynn", map = 1446, x = 52.82, y = 27.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1691, title = "More Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "goto", text = "bank Wildkin Muisek Vessel##9618", map = 1446, x = 52.3, y = 28.91 },
					{ t = "goto", text = "bank Fool's Stout Report##5807", map = 1446, x = 52.3, y = 28.91 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2605, title = "The Thirsty Goblin", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.81, y = 28.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8365, title = "Pirate Hats Ahoy!", npc = 15165, npcName = "Haughty Modiste", map = 1446, x = 66.56, y = 22.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3520, title = "Screecher Spirits", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.99, y = 22.36, f = "e" },
				},
			},
			{
				note = "Long grind soon. Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 8139, npcName = "Jabbey", map = 1446, x = 67.01, y = 21.99, f = "e" },
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
					{ t = "accept", quest = 2873, title = "Stoley's Shipment", npc = 7881, npcName = "Stoley", map = 1446, x = 67.11, y = 23.98, f = "e" },
				},
			},
			{
				note = "Walks a large counter-clockwise pattern. Careful, two stealthed guards.",
				goals = {
					{ t = "collect", quest = 2781, item = 8723, itemName = "Caliph Scorpidsting's Head", oi = 1, map = 1446, x = 61.8, y = 38.2, f = "e" },
				},
			},
			{
				label = "Kill_Wastewander_Assassins_Rogues_Shadow_Mages",
				along = true,
				note = "Stealthed.",
				goals = {
					{ t = "kill", quest = 1691, npc = 5623, target = "Wastewander Assassin", count = 6, oi = 2, map = 1446, x = 60.8, y = 36.6, f = "e" },
					{ t = "kill", quest = 1691, npc = 5615, target = "Wastewander Rogue", count = 8, oi = 1, map = 1446, x = 60.8, y = 36.6, f = "e" },
					{ t = "kill", quest = 1691, npc = 5617, target = "Wastewander Shadow Mage", count = 10, oi = 3, map = 1446, x = 60.8, y = 36.6, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Run through the tunnel to enter Lost Rigger Cove", map = 1446, x = 68.62, y = 41.46 },
					{ t = "collect", quest = 2873, item = 9244, itemName = "Stoley's Shipment", oi = 1, map = 1446, x = 72.19, y = 46.77, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2875, item = 9246, itemName = "Firebeard's Head", oi = 1, map = 1446, x = 73.37, y = 47.14, f = "e" },
				},
			},
			{
				label = "Collect_Ship_Schedule",
				along = true,
				note = "Rare.",
				goals = {
					{ t = "collect", item = 9276, itemName = "Pirate's Footlocker", map = 1446, x = 73.6, y = 46.2, f = "e" },
					{ t = "use", item = 9276, itemName = "Pirate's Footlocker" },
					{ t = "collect", item = 9250, itemName = "Ship Schedule", map = 1446, x = 73.6, y = 46.2, f = "e" },
					{ t = "use", item = 9250, itemName = "Ship Schedule" },
					{ t = "accept", quest = 2876, title = "Ship Schedules", npc = 7855, npcName = "Southsea Pirate", map = 1446, x = 73.8, y = 46.6, f = "e" },
				},
			},
			{
				label = "Accept_Find_OOX_17TN",
				along = true,
				note = "Rare.",
				goals = {
					{ t = "collect", item = 8623, itemName = "OOX-17/TN Distress Beacon", map = 1446, x = 73.6, y = 46.2, f = "e" },
					{ t = "use", item = 8623, itemName = "OOX-17/TN Distress Beacon" },
					{ t = "accept", quest = 351, title = "Find OOX-17/TN!", npc = 7855, npcName = "Southsea Pirate", map = 1446, x = 73.8, y = 46.6, f = "e" },
				},
			},
			{
				label = "Collect_Southsea_Pirate_Hats",
				along = true,
				goals = {
					{ t = "collect", quest = 8365, item = 20519, itemName = "Southsea Pirate Hat", count = 20, oi = 1, map = 1446, x = 73.8, y = 46.6, f = "e" },
				},
			},
			{
				label = "Kill_Southsea_Pirates_And_Freebooters",
				along = true,
				goals = {
					{ t = "kill", quest = 8366, npc = 7855, target = "Southsea Pirate", count = 10, oi = 1, map = 1446, x = 73.8, y = 46.6, f = "e" },
					{ t = "kill", quest = 8366, npc = 7856, target = "Southsea Freebooter", count = 10, oi = 2, map = 1446, x = 73.8, y = 46.6, f = "e" },
				},
			},
			{
				label = "Kill_Southsea_Dock_Workers",
				along = true,
				note = "More up on the wooden platforms nearby. notinsticky",
				goals = {
					{ t = "kill", quest = 8366, npc = 7857, target = "Southsea Dock Worker", count = 10, oi = 3, map = 1446, x = 73.0, y = 47.8, f = "e" },
				},
			},
			{
				label = "Kill_Southsea_Swashbucklers",
				along = true,
				note = "More inside buildings. notinsticky",
				goals = {
					{ t = "kill", quest = 8366, npc = 7858, target = "Southsea Swashbuckler", count = 10, oi = 4, map = 1446, x = 74.4, y = 45.2, f = "e" },
				},
			},
			{
				note = "Higher level enemies soon. Run dungeons, if you prefer.",
				goals = {
					{ t = "goto", text = "ding 47", map = 1446, x = 73.8, y = 46.6 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run through the tunnel to leave Lost Rigger Cove", map = 1446, x = 69.63, y = 42.37 },
					{ t = "turnin", quest = 2875, title = "WANTED: Andre Firebeard", npc = 7882, npcName = "Security Chief Bilgewhizzle", map = 1446, x = 67.06, y = 23.89, f = "e" },
					{ t = "turnin", quest = 8366, title = "Southsea Shakedown", npc = 7882, npcName = "Security Chief Bilgewhizzle", map = 1446, x = 67.06, y = 23.89, f = "e" },
					{ t = "turnin", quest = 2876, title = "Ship Schedules", npc = 7882, npcName = "Security Chief Bilgewhizzle", map = 1446, x = 67.06, y = 23.89, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2873, title = "Stoley's Shipment", npc = 7881, npcName = "Stoley", map = 1446, x = 67.11, y = 23.97, f = "e" },
					{ t = "accept", quest = 2874, title = "Deliver to MacKinley", npc = 7881, npcName = "Stoley", map = 1446, x = 67.11, y = 23.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8365, title = "Pirate Hats Ahoy!", npc = 15165, npcName = "Haughty Modiste", map = 1446, x = 66.56, y = 22.27, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2781, title = "WANTED: Caliph Scorpidsting", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
					{ t = "turnin", quest = 1691, title = "More Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 2874, title = "Deliver to MacKinley", note = "bank Stoley's Bottle##9245", map = 1446, x = 52.3, y = 28.92, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3380, title = "The Sunken Temple", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.93, f = "e" },
					{ t = "accept", quest = 3444, title = "The Stone Circle", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.93, f = "e" },
					{ t = "accept", quest = 3161, title = "Gahz'ridian", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.93, f = "e" },
				},
			},
			{
				note = "Insects.",
				goals = {
					{ t = "collect", quest = 82, item = 8587, itemName = "Centipaar Insect Parts", count = 5, oi = 1, map = 1446, x = 36.0, y = 40.0, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "kill", quest = 5863, npc = 12046, target = "Gor'marok the Ravager", oi = 3, map = 1446, x = 41.5, y = 57.81, f = "e" },
				},
			},
			{
				label = "Kill_Dunemaul_Brutes_And_Enforcers",
				along = true,
				goals = {
					{ t = "kill", quest = 5863, npc = 5474, target = "Dunemaul Brute", count = 10, oi = 1, map = 1446, x = 40.4, y = 56.0, f = "e" },
					{ t = "kill", quest = 5863, npc = 5472, target = "Dunemaul Enforcer", count = 10, oi = 2, map = 1446, x = 40.4, y = 56.0, f = "e" },
				},
			},
			{
				label = "Collect_Gahzridian_Ornaments",
				along = true,
				note = "Piles of sand.",
				goals = {
					{ t = "collect", quest = 3161, item = 8443, itemName = "Gahz'ridian Ornament", count = 30, oi = 1, map = 1446, x = 48.2, y = 64.7, f = "e" },
				},
			},
			{
				note = "Shares spawns.",
				goals = {
					{ t = "collect", quest = 2605, item = 8428, itemName = "Laden Dew Gland", oi = 1, map = 1446, x = 29.8, y = 66.8, f = "e" },
				},
			},
			{
				label = "Kill_Gnarled_Thistleshrubs_And_Rootshapers",
				along = true,
				goals = {
					{ t = "kill", quest = 3362, npc = 5490, target = "Gnarled Thistleshrub", count = 8, oi = 1, map = 1446, x = 29.8, y = 66.8, f = "e" },
					{ t = "kill", quest = 3362, npc = 5485, target = "Thistleshrub Rootshaper", count = 8, oi = 2, map = 1446, x = 29.8, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3161, title = "Gahz'ridian", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.93, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2605, title = "The Thirsty Goblin", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.81, y = 28.66, f = "e" },
					{ t = "accept", quest = 2606, title = "In Good Taste", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.81, y = 28.66, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Gadgetzan", map = 1446, x = 52.51, y = 27.92, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5863, title = "The Dunemaul Compound", npc = 11758, npcName = "Andi Lynn", map = 1446, x = 52.82, y = 27.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3362, title = "Thistleshrub Valley", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2606, title = "In Good Taste", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.06, y = 26.87, f = "e" },
					{ t = "accept", quest = 2641, title = "Sprinkle's Secret Ingredient", npc = 7583, npcName = "Sprinkle", map = 1446, x = 51.06, y = 26.87, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 82, title = "Noxious Lair Investigation", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.89, y = 26.96, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10, title = "The Scrimshank Redemption", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
				},
			},
			{
				note = "Escort quest. Wait until it respawns, if missing.",
				goals = {
					{ t = "turnin", quest = 351, title = "Find OOX-17/TN!", npc = 7784, npcName = "Homing Robot OOX-17/TN", map = 1446, x = 60.23, y = 64.72, f = "e" },
				},
			},
			{
				note = "Inside the cave.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1446, x = 55.78, y = 68.91 },
					{ t = "goto", text = "Follow the path down", map = 1446, x = 57.61, y = 70.67 },
					{ t = "collect", quest = 10, item = 8593, itemName = "Scrimshank's Surveying Gear", oi = 1, map = 1446, x = 55.97, y = 71.18, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 864, title = "Return to Apothecary Zinge", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 864, title = "Return to Apothecary Zinge", note = "bank Sealed Field Testing Kit##8527", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10, title = "The Scrimshank Redemption", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
					{ t = "accept", quest = 110, title = "Insect Part Analysis", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 110, title = "Insect Part Analysis", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.89, y = 26.96, f = "e" },
					{ t = "accept", quest = 113, title = "Insect Part Analysis", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.89, y = 26.96, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 113, title = "Insect Part Analysis", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
					{ t = "accept", quest = 32, title = "Rise of the Silithid", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
				},
			},
			{
				note = "Humans. Careful, stealted enemies. Higher level zones soon. Not enough quests to get high enough level. Turn in stacks of 5 in Gadgetzan for 380 xp. Count will reduce as you grind.",
				goals = {
					{ t = "collect", item = 8483, itemName = "Wastewander Water Pouch", map = 1446, x = 58.8, y = 36.7, f = "e" },
					{ t = "goto", text = "ding 48", map = 1446, x = 60.8, y = 36.6 },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "accept", quest = 1172, title = "The Brood of Onyxia", npc = 4501, npcName = "Draz'Zilb", map = 1445, x = 37.15, y = 33.08, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2846, title = "Tiara of the Deep", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				note = "Brown spikey eggs.",
				goals = {
					{ t = "complete", quest = 1172, title = "The Brood of Onyxia", note = "Destroy #5# Eggs of Onyxia", map = 1445, x = 48.39, y = 75.98, f = "e" },
				},
			},
			{
				note = "Inside the small cave.",
				goals = {
					{ t = "turnin", quest = 1172, title = "The Brood of Onyxia", npc = 4501, npcName = "Draz'Zilb", map = 1445, x = 37.15, y = 33.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3527, title = "The Prophecy of Mosh'aru", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.99, y = 22.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2768, title = "Divino-matic Rod", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2865, title = "Scarab Shells", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3042, title = "Troll Temper", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.41, y = 28.75, f = "e" },
				},
			},
			{
				note = "Second boss.",
				goals = {
					{ t = "collect", quest = 3527, item = 10660, itemName = "First Mosh'aru Tablet", oi = 1 },
				},
			},
			{
				note = "Killable after releasing them. Clear the temple event.",
				goals = {
					{ t = "collect", quest = 2768, item = 8548, itemName = "Divino-matic Rod", oi = 1 },
				},
			},
			{
				note = "Follow the path southeast. In large room with pool in the center. Walks around.",
				goals = {
					{ t = "collect", quest = 3527, item = 10661, itemName = "Second Mosh'aru Tablet", oi = 2 },
					{ t = "collect", quest = 2846, item = 9234, itemName = "Tiara of the Deep", oi = 2 },
				},
			},
			{
				label = "Collect_Uncracked_Scarab_Shell",
				along = true,
				note = "Throughout the dungeon. Mostly in the scarab room with Theka the Martyr.",
				goals = {
					{ t = "collect", quest = 2865, item = 9238, itemName = "Uncracked Scarab Shell", count = 5, oi = 1 },
				},
			},
			{
				label = "Collect_Troll_Temper",
				along = true,
				note = "Trolls. Throughout the dungeon. May require multiple dungeon runs.",
				goals = {
					{ t = "collect", quest = 3042, item = 9523, itemName = "Troll Temper", count = 20, oi = 1 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3527, title = "The Prophecy of Mosh'aru", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.99, y = 22.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2768, title = "Divino-matic Rod", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2865, title = "Scarab Shells", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3042, title = "Troll Temper", npc = 7804, npcName = "Trenton Lighthammer", map = 1446, x = 51.41, y = 28.75, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2846, title = "Tiara of the Deep", npc = 6546, npcName = "Tabetha", map = 1445, x = 46.06, y = 57.09, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3444, item = 10556, itemName = "Stone Circle", oi = 1, map = 1413, x = 62.5, y = 38.54, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", text = "Train Kodo Riding", map = 1412, x = 46.78, y = 62.01 },
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
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5883, npcName = "Enyo", map = 1454, x = 38.79, y = 85.65, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-tanaris-and-dustwallow-marsh-46-48-part-2",
		pack = "guides",
		title = "Tanaris & Dustwallow Marsh (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-the-hinterlands-48-49",
		author = "TuWoW & Zygor",
		minLevel = 46,
		maxLevel = 48,
		zone = 1441,
		version = 1,
		steps = {
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
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.42, y = 56.92 },
					{ t = "turnin", quest = 32, title = "Rise of the Silithid", npc = 7010, npcName = "Zilzibin Drumlore", map = 1454, x = 56.27, y = 46.67, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 649, title = "Ripple Recovery", npc = 6986, npcName = "Dran Droffers", map = 1454, x = 59.48, y = 36.59, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 649, title = "Ripple Recovery", npc = 6987, npcName = "Malton Droffers", map = 1454, x = 59.64, y = 36.92, f = "e" },
					{ t = "accept", quest = 650, title = "Ripple Recovery", npc = 6987, npcName = "Malton Droffers", map = 1454, x = 59.64, y = 36.92, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "accept", quest = 4300, title = "Bone-Bladed Weapons", npc = 8659, npcName = "Jes'rimon", map = 1454, x = 55.51, y = 34.09, f = "e" },
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
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10088, npcName = "Xao'tsu", map = 1454, x = 66.33, y = 14.82, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "goto", text = "Train Wolf Riding", map = 1454, x = 69.4, y = 13.1 },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "goto", text = "Train Raptor Riding", map = 1411, x = 55.28, y = 75.49 },
				},
			},
		},
	})
end

