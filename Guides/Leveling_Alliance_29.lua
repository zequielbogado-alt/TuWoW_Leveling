-- TuWoW_Leveling — Guides/Leveling_Alliance_29.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-feralas-and-tanaris-44-48-part-2",
		pack = "guides",
		title = "Feralas & Tanaris (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-the-hinterlands-48-49",
		author = "TuWoW & Zygor",
		minLevel = 44,
		maxLevel = 48,
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Higher level zones soon. Not enough quests to get high enough level.",
				goals = {
					{ t = "goto", text = "ding 48,67550", map = 1444, x = 25.2, y = 62.8 },
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
					{ t = "train", npc = 7312, npcName = "Dink", map = 1455, x = 27.16, y = 8.56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4281, title = "Thalanaar Delivery", npc = 4048, npcName = "Falfindel Waywarder", map = 1444, x = 89.64, y = 46.57, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 2941, item = 9329, itemName = "A Short Note", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 2741, item = 8564, itemName = "Hippogryph Egg", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2741, title = "The Super Egg-O-Matic", map = 1446, x = 52.37, y = 26.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2941, title = "The Borrower", npc = 7763, npcName = "Curgle Cranklehop", map = 1446, x = 52.36, y = 26.9, f = "e" },
					{ t = "accept", quest = 2944, title = "The Super Snapper FX", npc = 7763, npcName = "Curgle Cranklehop", map = 1446, x = 52.36, y = 26.9, f = "e" },
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
					{ t = "accept", quest = 992, title = "Gadgetzan Water Survey", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
				},
			},
			{
				note = "Avoid elite enemies. You will be attacked.",
				goals = {
					{ t = "use", item = 8584, itemName = "Untapped Dowsing Widget" },
					{ t = "collect", quest = 992, item = 8585, itemName = "Tapped Dowsing Widget", oi = 1, map = 1446, x = 39.09, y = 29.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 992, title = "Gadgetzan Water Survey", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
					{ t = "accept", quest = 82, title = "Noxious Lair Investigation", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
				},
			},
			{
				note = "Insects. Swarmers spawn minions. Stingers and Wasps cast poison DoTs.",
				goals = {
					{ t = "collect", quest = 82, item = 8587, itemName = "Centipaar Insect Parts", count = 5, oi = 1, map = 1446, x = 36.0, y = 40.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 82, title = "Noxious Lair Investigation", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.89, y = 26.96, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 1452, item = 6257, itemName = "Roc Gizzard", count = 3, map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 1452, item = 6258, itemName = "Ironfur Liver", count = 3, map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 1452, item = 6259, itemName = "Groddoc Liver", count = 3, map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Gadgetzan", map = 1446, x = 52.5, y = 27.91, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "goto", text = "Train Tiger Riding", map = 1457, x = 38.69, y = 15.84 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 5114, npcName = "Bilban Tosslespanner", map = 1455, x = 65.9, y = 88.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 5117, npcName = "Regnus Thundergranite", map = 1455, x = 69.87, y = 82.9, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10090, npcName = "Belia Thundergranite", map = 1455, x = 70.86, y = 85.84, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 5167, npcName = "Fenthwick", map = 1455, x = 65.9, y = 88.41, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 5172, npcName = "Briarthorn", map = 1455, x = 50.35, y = 5.66, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6382, npcName = "Jubahl Corpseseeker", map = 1455, x = 50.35, y = 5.66, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 5143, npcName = "Toldren Deepiron", map = 1455, x = 25.21, y = 10.74, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 5148, npcName = "Beldruk Doombrow", map = 1455, x = 24.55, y = 4.48, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building. Long questing session soon. No ammo vendor.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 5101, npcName = "Bryllia Ironbrand", map = 1455, x = 39.23, y = 74.47, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "goto", text = "Train Ram Riding", map = 1426, x = 63.94, y = 50.1 },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "goto", text = "Train Mechanostrider Piloting", map = 1426, x = 49.15, y = 48.13 },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", text = "Train Horse Riding", map = 1429, x = 84.32, y = 64.87 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-the-hinterlands-48-49",
		pack = "guides",
		title = "The Hinterlands",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-tanaris-49-49",
		author = "TuWoW & Zygor",
		minLevel = 48,
		maxLevel = 49,
		zone = 1425,
		version = 1,
		steps = {
			{
				note = "Inside the building. Top of the path.",
				goals = {
					{ t = "accept", quest = 2988, title = "Witherbark Cages", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.76, y = 44.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1425, x = 20.81, y = 47.82 },
					{ t = "turnin", quest = 1452, title = "Rhapsody's Kalimdor Kocktail", npc = 5634, npcName = "Rhapsody Shindigger", map = 1425, x = 26.94, y = 48.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1469, title = "Rhapsody's Tale", npc = 5634, npcName = "Rhapsody Shindigger", map = 1425, x = 26.94, y = 48.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2988, title = "Witherbark Cages", note = "Check the Third Cage", map = 1425, x = 31.99, y = 57.38, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2988, title = "Witherbark Cages", note = "Check the First Cage", map = 1425, x = 23.28, y = 58.75, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 2988, title = "Witherbark Cages", note = "Check the Second Cage", map = 1425, x = 23.13, y = 58.76, f = "e" },
				},
			},
			{
				label = "Collect_Troll_Tribal_Necklaces",
				along = true,
				note = "Trolls. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 2880, item = 9259, itemName = "Troll Tribal Necklace", count = 5, map = 1425, x = 25.2, y = 57.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2880, title = "Troll Necklace Bounty", npc = 7884, npcName = "Fraggar Thundermantle", map = 1425, x = 14.83, y = 44.56, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2880, title = "Troll Necklace Bounty", npc = 7884, npcName = "Fraggar Thundermantle", map = 1425, x = 14.83, y = 44.56, f = "e" },
					{ t = "accept", quest = 2877, title = "Skulk Rock Clean-up", npc = 7884, npcName = "Fraggar Thundermantle", map = 1425, x = 14.83, y = 44.56, f = "e" },
				},
			},
			{
				note = "Inside the building. Top of the path.",
				goals = {
					{ t = "turnin", quest = 2988, title = "Witherbark Cages", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.76, y = 44.48, f = "e" },
					{ t = "accept", quest = 2989, title = "The Altar of Zul", npc = 5636, npcName = "Gryphon Master Talonaxe", map = 1425, x = 9.76, y = 44.48, f = "e" },
				},
			},
			{
				label = "Collect_Wildkin_Feathers",
				along = true,
				note = "Large brown and white feathers. Reduce the Ground Clutter setting to 1. In System > Graphics game settings. Makes them easier to see.",
				goals = {
					{ t = "collect", quest = 3661, item = 10819, itemName = "Wildkin Feather", count = 15, oi = 1, map = 1425, x = 22.9, y = 54.9, f = "e" },
				},
			},
			{
				note = "Elite enemies at top of temple. Run in to complete the goal, then run away. Jump down on the lower ledges of the temple. Enemies can't hit you there. Wait on the ledge until out of combat. Make sure you have a potion to use. Skip quest if you're not comfortable.",
				goals = {
					{ t = "complete", quest = 2989, title = "The Altar of Zul", note = "Click Here to Continue" },
				},
			},
			{
				note = "Top of the temple. Careful, elite enemies. Jump down on a ledge after. Skip quest if you're not comfortable.",
				goals = {
					{ t = "complete", quest = 2989, title = "The Altar of Zul", note = "Search the Altar of Zul", map = 1425, x = 48.85, y = 68.45, f = "e" },
				},
			},
			{
				note = "Enemies can't hit you here. Wait until out of combat.",
				goals = {
					{ t = "complete", quest = 2989, title = "The Altar of Zul", note = "Click Here to Continue", map = 1425, x = 49.12, y = 66.54, f = "e" },
				},
			},
			{
				note = "Shared spawns.",
				goals = {
					{ t = "kill", quest = 2877, npc = 2655, target = "Green Sludge", count = 10, oi = 1, map = 1425, x = 48.6, y = 42.6, f = "e" },
					{ t = "kill", quest = 2877, npc = 2656, target = "Jade Ooze", count = 10, oi = 2, map = 1425, x = 48.6, y = 42.6, f = "e" },
				},
			},
			{
				note = "Skip if not found by level 49.",
				goals = {
					{ t = "collect", item = 8704, itemName = "OOX-09/HL Distress Beacon" },
					{ t = "use", item = 8704, itemName = "OOX-09/HL Distress Beacon" },
					{ t = "accept", quest = 485, title = "Find OOX-09/HL!", map = 1425, x = 57.4, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 485, title = "Find OOX-09/HL!", npc = 7806, npcName = "Homing Robot OOX-09/HL", map = 1425, x = 49.35, y = 37.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "ding 49", map = 1425, x = 57.4, y = 50.4 },
				},
			},
			{
				note = "On Gammerita. Elite blue turtle. Walks around. Use item at max distance. Run away when attacked.",
				goals = {
					{ t = "goto", text = "Follow the road and follow the path down", map = 1425, x = 71.5, y = 65.09 },
					{ t = "use", item = 9328, itemName = "Super Snapper FX" },
					{ t = "collect", quest = 2944, item = 9330, itemName = "Snapshot of Gammerita", oi = 1, map = 1425, x = 81.4, y = 47.2, f = "e" },
				},
			},
			{
				label = "Collect_Pupellyverbos_Ports",
				along = true,
				note = "Small blue bottles. Avoid Revantusk Village. Avoid Gammerita. notinsticky Elite blue turtle. notinsticky Walks around. notinsticky Reduce the Ground Clutter setting to 1. In System > Graphics game settings. Makes them easier to see.",
				goals = {
					{ t = "collect", quest = 580, item = 3900, itemName = "Pupellyverbos Port", count = 12, oi = 1, map = 1425, x = 77.8, y = 65.4, f = "e" },
				},
			},
			{
				note = "Avoid Gammerita. Elite blue turtle. Walks around. Need to hearth back to Gadgetzan.",
				goals = {
					{ t = "complete", quest = 580, title = "Whiskey Slim's Lost Grog", note = "Grind Until Hearthstone Ready", map = 1425, x = 78.2, y = 68.2, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 1469, title = "Rhapsody's Tale", note = "bank Atal'ai Tablet Fragment##6287", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "complete", quest = 2944, title = "The Super Snapper FX", note = "bank Super Snapper FX##9328", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "complete", quest = 2944, title = "The Super Snapper FX", note = "bank Snapshot of Gammerita##9330", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "complete", quest = 580, title = "Whiskey Slim's Lost Grog", note = "bank Pupellyverbos Port##3900", map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "complete", quest = 3661, title = "Favored of Elune?", note = "bank Wildkin Feather##10819", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-tanaris-49-49",
		pack = "guides",
		title = "Tanaris",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-ungoro-crater-49-50",
		author = "TuWoW & Zygor",
		minLevel = 49,
		maxLevel = 49,
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 3520, item = 10699, itemName = "Yeh'kinya's Bramble", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1691, title = "More Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
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
					{ t = "accept", quest = 10, title = "The Scrimshank Redemption", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3445, title = "The Sunken Temple", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.93, f = "e" },
					{ t = "accept", quest = 3161, title = "Gahz'ridian", npc = 7771, npcName = "Marvon Rivetseeker", map = 1446, x = 52.71, y = 45.93, f = "e" },
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
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 8139, npcName = "Jabbey", map = 1446, x = 67.01, y = 21.99, f = "e" },
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
					{ t = "turnin", quest = 3520, title = "Screecher Spirits", npc = 8579, npcName = "Yeh'kinya", map = 1446, x = 66.99, y = 22.36, f = "e" },
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
					{ t = "turnin", quest = 2781, title = "WANTED: Caliph Scorpidsting", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
					{ t = "turnin", quest = 1691, title = "More Wastewander Justice", npc = 7407, npcName = "Chief Engineer Bilgewhizzle", map = 1446, x = 52.46, y = 28.51, f = "e" },
				},
			},
			{
				note = "Collect from the bank. Inside the building.",
				goals = {
					{ t = "collect", quest = 4284, item = 11186, itemName = "Red Power Crystal", count = 7, map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 4284, item = 11188, itemName = "Yellow Power Crystal", count = 7, map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 4284, item = 11185, itemName = "Green Power Crystal", count = 7, map = 1446, x = 52.3, y = 28.91, f = "e" },
					{ t = "collect", quest = 4284, item = 11184, itemName = "Blue Power Crystal", count = 7, map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				note = "Deposit into the bank. Inside the building.",
				goals = {
					{ t = "complete", quest = 2874, title = "Deliver to MacKinley", note = "bank Stoley's Bottle##9245", map = 1446, x = 52.3, y = 28.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2605, title = "The Thirsty Goblin", npc = 7564, npcName = "Marin Noggenfogger", map = 1446, x = 51.81, y = 28.66, f = "e" },
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
					{ t = "accept", quest = 3362, title = "Thistleshrub Valley", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.57, y = 26.76, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5863, title = "The Dunemaul Compound", npc = 11758, npcName = "Andi Lynn", map = 1446, x = 52.82, y = 27.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 113, title = "Insect Part Analysis", npc = 7724, npcName = "Senior Surveyor Fizzledowser", map = 1446, x = 50.21, y = 27.48, f = "e" },
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
					{ t = "collect", quest = 3161, item = 8443, itemName = "Gahz'ridian Ornament", count = 30, oi = 1, map = 1446, x = 40.3, y = 68.9, f = "e" },
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
		},
	})
end

