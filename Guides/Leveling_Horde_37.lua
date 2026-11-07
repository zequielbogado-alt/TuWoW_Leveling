-- TuWoW_Leveling — Guides/Leveling_Horde_37.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-outland-68-70",
		pack = "guides",
		title = "Outland (68-70) (Parte 1/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-outland-68-70-part-2",
		author = "TuWoW & Zygor",
		minLevel = 68,
		maxLevel = 70,
		zone = 1953,
		version = 1,
		steps = {
			{
				note = "Go to the top of the tower to 45.4,80.4|goto Blade's Edge Mountains,45.4,80.4",
				goals = {
					{ t = "kill", quest = 10543, target = "Grimnok Battleborn", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 42.8, y = 46.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10543, target = "Korgaah", count = 1, oi = 2, x = 43.2, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10543, title = "Grimnok and Korgaah, I Am For You!", npc = 21349, npcName = "T'chali the Witch Doctor", x = 45.0, y = 72.3, f = "e" },
					{ t = "accept", quest = 10544, title = "A Curse Upon Both of Your Clans!", npc = 21349, npcName = "T'chali the Witch Doctor", x = 45.0, y = 72.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 47.1, y = 78.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 42.4, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10544, title = "A Curse Upon Both of Your Clans!", npc = 21349, npcName = "T'chali the Witch Doctor", x = 45.0, y = 72.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10505, title = "The Bloodmaul Ogres", npc = 21147, npcName = "Tor'chunk Twoclaws", x = 51.9, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10526, title = "The Thunderspike", npc = 21311, npcName = "Rokgah Bloodgrip", x = 52.8, y = 59.0, f = "e" },
					{ t = "accept", quest = 10718, title = "The Spirits Have Voices", npc = 21950, npcName = "Garm Wolfbrother", x = 52.8, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10718, title = "The Spirits Have Voices", npc = 21984, npcName = "Rexxar", x = 51.9, y = 58.4, f = "e" },
					{ t = "accept", quest = 10614, title = "Whispers on the Wind", npc = 21984, npcName = "Rexxar", x = 51.9, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 55.8, y = 72.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Mok'Nathal Village", x = 76.4, y = 65.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10565, title = "The Stones of Vekh'nir", npc = 21496, npcName = "Dertrok", x = 75.1, y = 62.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10614, title = "Whispers on the Wind", npc = 22004, npcName = "Leoroxx", x = 75.3, y = 60.9, f = "e" },
					{ t = "accept", quest = 10709, title = "Reunion", npc = 22004, npcName = "Leoroxx", x = 75.3, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10860, title = "Mok'Nathal Treats", npc = 21088, npcName = "Matron Varah", x = 76.1, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Mok'Nathal Village", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10617, title = "Silkwing Cocoons", npc = 21895, npcName = "Taerek", x = 75.9, y = 61.5, f = "e" },
					{ t = "accept", quest = 10618, title = "The Softest Wings", npc = 21896, npcName = "Silmara", x = 75.9, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10709, title = "Reunion", npc = 21984, npcName = "Rexxar", x = 51.9, y = 58.4, f = "e" },
					{ t = "accept", quest = 10714, title = "On Spirit's Wings", npc = 21984, npcName = "Rexxar", x = 51.9, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10617, itemName = "Silkwing Cocoon", count = 8, oi = 1, x = 73.8, y = 64.9, f = "e" },
					{ t = "collect", quest = 10618, itemName = "Iridescent Wing", count = 12, oi = 1, x = 73.8, y = 64.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10565, item = 30561, itemName = "Vekh'nir Crystal", count = 1, x = 76.4, y = 75.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 77.8, y = 74.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10565, title = "The Stones of Vekh'nir", npc = 21496, npcName = "Dertrok", x = 75.1, y = 62.1, f = "e" },
					{ t = "accept", quest = 10566, title = "Trial and Error", npc = 21496, npcName = "Dertrok", x = 75.1, y = 62.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10617, title = "Silkwing Cocoons", npc = 21895, npcName = "Taerek", x = 75.9, y = 61.5, f = "e" },
					{ t = "turnin", quest = 10618, title = "The Softest Wings", npc = 21896, npcName = "Silmara", x = 75.9, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10846, title = "Understanding the Mok'Nathal", npc = 22004, npcName = "Leoroxx", x = 75.3, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10566, item = 30651, itemName = "Dertrok's First Wand", count = 1, f = "e" },
					{ t = "collect", quest = 10566, item = 30652, itemName = "Dertrok's Second Wand", count = 1, f = "e" },
					{ t = "collect", quest = 10566, item = 30653, itemName = "Dertrok's Third Wand", count = 1, f = "e" },
					{ t = "collect", quest = 10566, item = 30654, itemName = "Dertrok's Fourth Wand", count = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10566, item = 30655, itemName = "Infused Vekh'nir Crystal", count = 4, x = 73.2, y = 74.6, f = "e" },
				},
			},
			{
				note = "Go inside the cave|n",
				goals = {
					{ t = "kill", quest = 10846, target = "Vekh", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10566, title = "Trial and Error", npc = 21496, npcName = "Dertrok", f = "e" },
					{ t = "accept", quest = 10615, title = "Ruuan Weald", npc = 21496, npcName = "Dertrok", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10846, title = "Understanding the Mok'Nathal", npc = 22004, npcName = "Leoroxx", x = 75.3, y = 60.9, f = "e" },
					{ t = "accept", quest = 10843, title = "Since Time Forgotten...", npc = 22004, npcName = "Leoroxx", x = 75.3, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10851, title = "The Totems of My Enemy", npc = 22312, npcName = "Spiritcaller Dohgar", x = 74.9, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10860, itemName = "Serpent Flesh", count = 3, oi = 2, x = 68.9, y = 67.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10860, itemName = "Raptor Ribs", count = 3, oi = 1, x = 65.2, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10851, itemName = "Bladespire Totem", count = 5, oi = 1, x = 59.3, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10843, target = "Gnosh Brognat", count = 1, oi = 1, x = 57.1, y = 54.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10843, title = "Since Time Forgotten...", npc = 22004, npcName = "Leoroxx", x = 75.3, y = 60.9, f = "e" },
					{ t = "accept", quest = 10845, title = "Slay the Brood Mother", npc = 22004, npcName = "Leoroxx", x = 75.3, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10851, title = "The Totems of My Enemy", npc = 22312, npcName = "Spiritcaller Dohgar", x = 74.9, y = 60.5, f = "e" },
					{ t = "accept", quest = 10853, title = "Spirit Calling", npc = 22312, npcName = "Spiritcaller Dohgar", x = 74.9, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10860, title = "Mok'Nathal Treats", npc = 21088, npcName = "Matron Varah", x = 76.1, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10853, itemName = "Lesser Nether Drake Spirit", count = 8, oi = 1, x = 65.6, y = 75.6, f = "e" },
					{ t = "kill", quest = 10845, target = "Dreadwing", count = 1, oi = 1, x = 65.6, y = 75.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10845, title = "Slay the Brood Mother", npc = 22004, npcName = "Leoroxx", x = 75.3, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10853, title = "Spirit Calling", npc = 22312, npcName = "Spiritcaller Dohgar", x = 74.9, y = 60.5, f = "e" },
					{ t = "accept", quest = 10859, title = "Gather the Orbs", npc = 22312, npcName = "Spiritcaller Dohgar", x = 74.9, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 65.5, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10859, title = "Gather the Orbs", npc = 22312, npcName = "Spiritcaller Dohgar", x = 74.9, y = 60.5, f = "e" },
					{ t = "accept", quest = 10865, title = "Inform Leoroxx!", npc = 22312, npcName = "Spiritcaller Dohgar", x = 74.9, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10865, title = "Inform Leoroxx!", npc = 22004, npcName = "Leoroxx", x = 75.3, y = 60.9, f = "e" },
					{ t = "accept", quest = 10867, title = "There Can Be Only One Response", npc = 22004, npcName = "Leoroxx", x = 75.3, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 66.3, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10615, title = "Ruuan Weald", npc = 21782, npcName = "Timeon", x = 62.2, y = 39.1, f = "e" },
					{ t = "accept", quest = 10567, title = "Creating the Pendant", npc = 21782, npcName = "Timeon", x = 62.2, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10753, title = "Culling the Wild", npc = 22133, npcName = "Faradrella", x = 62.6, y = 38.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10770, title = "Little Embers", npc = 22053, npcName = "Mosswood the Ancient", x = 61.2, y = 38.4, f = "e" },
					{ t = "accept", quest = 10771, title = "From the Ashes", npc = 22053, npcName = "Mosswood the Ancient", x = 61.2, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10682, title = "A Time for Negotiation...", npc = 22007, npcName = "Tree Warden Chawn", x = 62.0, y = 39.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Evergrove", x = 61.7, y = 39.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10867, title = "There Can Be Only One Response", npc = 22312, npcName = "Spiritcaller Dohgar", x = 74.9, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Thunderlord Stronghold", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10753, target = "Fel Corrupter", count = 2, oi = 3, x = 68.9, y = 35.6, f = "e" },
					{ t = "kill", quest = 10753, target = "Felsworn Scalewing", count = 4, oi = 1, x = 68.9, y = 35.6, f = "e" },
					{ t = "kill", quest = 10753, target = "Felsworn Daggermaw", count = 4, oi = 2, x = 68.9, y = 35.6, f = "e" },
					{ t = "collect", itemName = "a Damaged Mask", count = 1, x = 68.9, y = 35.6, f = "e" },
					{ t = "accept", quest = 10810, title = "Damaged Mask", x = 68.9, y = 35.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 71.7, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 71.6, y = 20.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10770, target = "Scorch Imp", count = 8, oi = 1, x = 70.7, y = 20.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 71.6, y = 18.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10810, title = "Damaged Mask", x = 62.7, y = 40.4, f = "e" },
					{ t = "accept", quest = 10812, title = "Mystery Mask", x = 62.7, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10812, title = "Mystery Mask", npc = 22127, npcName = "Wildlord Antelarion", x = 62.2, y = 40.1, f = "e" },
					{ t = "accept", quest = 10819, title = "Felsworn Gas Mask", npc = 22127, npcName = "Wildlord Antelarion", x = 62.2, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10753, title = "Culling the Wild", npc = 22133, npcName = "Faradrella", x = 62.6, y = 38.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10770, title = "Little Embers", npc = 22053, npcName = "Mosswood the Ancient", x = 61.2, y = 38.4, f = "e" },
					{ t = "turnin", quest = 10771, title = "From the Ashes", npc = 22053, npcName = "Mosswood the Ancient", x = 61.2, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 21981, npcName = "Overseer Nuaar", x = 58.8, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10682, title = "A Time for Negotiation...", npc = 22007, npcName = "Tree Warden Chawn", x = 62.0, y = 39.5, f = "e" },
					{ t = "accept", quest = 10713, title = "...and a Time for Action", npc = 22007, npcName = "Tree Warden Chawn", x = 62.0, y = 39.5, f = "e" },
					{ t = "accept", quest = 10717, title = "Poaching from Poachers", npc = 21983, npcName = "Samia Inkling", x = 62.0, y = 39.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10713, target = "Wyrmcult Hewer", count = 10, oi = 1, x = 59.9, y = 37.8, f = "e" },
					{ t = "collect", quest = 10717, itemName = "Wyrmcult Net", count = 5, oi = 1, x = 59.9, y = 37.8, f = "e" },
					{ t = "collect", itemName = "a Meeting note", count = 1, x = 59.9, y = 37.8, f = "e" },
					{ t = "accept", quest = 10719, title = "Did You Get The Note?", x = 59.9, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10717, title = "Poaching from Poachers", npc = 21983, npcName = "Samia Inkling", x = 62.0, y = 39.5, f = "e" },
					{ t = "accept", quest = 10747, title = "Whelps of the Wyrmcult", npc = 21983, npcName = "Samia Inkling", x = 62.0, y = 39.5, f = "e" },
					{ t = "turnin", quest = 10713, title = "...and a Time for Action", npc = 22007, npcName = "Tree Warden Chawn", x = 62.0, y = 39.5, f = "e" },
					{ t = "turnin", quest = 10719, title = "Did You Get The Note?", npc = 22007, npcName = "Tree Warden Chawn", x = 62.0, y = 39.5, f = "e" },
					{ t = "accept", quest = 10894, title = "Wyrmskull Watcher", npc = 22007, npcName = "Tree Warden Chawn", x = 62.0, y = 39.5, f = "e" },
				},
			},
			{
				note = "Put on your Felsworn Gas Mask to wear it|use Felsworn Gas Mask##31366",
				goals = {
					{ t = "use", item = 31366, itemName = "Felsworn Gas Mask", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10819, title = "Felsworn Gas Mask", x = 73.2, y = 40.0, f = "e" },
					{ t = "accept", quest = 10820, title = "Deceive thy Enemy", x = 73.2, y = 40.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10820, target = "Doomforge Attendant", count = 4, oi = 1, x = 74.9, y = 39.9, f = "e" },
					{ t = "kill", quest = 10820, target = "Doomforge Engineer", count = 4, oi = 2, x = 74.9, y = 39.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10820, title = "Deceive thy Enemy", x = 73.2, y = 40.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10567, item = 30704, itemName = "Ruuan'ok Claw", count = 6, x = 63.9, y = 31.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10567, itemName = "Harbinger's Pendant", count = 1, oi = 1, x = 64.5, y = 33.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 58.4, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10714, title = "On Spirit's Wings", npc = 21984, npcName = "Rexxar", x = 51.9, y = 58.4, f = "e" },
					{ t = "accept", quest = 10783, title = "Baron Sablemane", npc = 21984, npcName = "Rexxar", x = 51.9, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10567, title = "Creating the Pendant", npc = 21782, npcName = "Timeon", x = 62.2, y = 39.1, f = "e" },
					{ t = "accept", quest = 10607, title = "Whispers of the Raven God", npc = 21782, npcName = "Timeon", x = 62.2, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10783, title = "Baron Sablemane", npc = 22103, npcName = "Baron Sablemane", x = 53.3, y = 41.2, f = "e" },
					{ t = "accept", quest = 10715, title = "Into the Churning Gulch", npc = 22103, npcName = "Baron Sablemane", x = 53.3, y = 41.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10715, itemName = "Crust Burster Venom Gland", count = 7, oi = 1, x = 49.0, y = 44.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10715, title = "Into the Churning Gulch", npc = 22103, npcName = "Baron Sablemane", x = 53.3, y = 41.2, f = "e" },
					{ t = "accept", quest = 10749, title = "Baron Sablemane's Poison", npc = 22103, npcName = "Baron Sablemane", x = 53.3, y = 41.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10749, title = "Baron Sablemane's Poison", npc = 21984, npcName = "Rexxar", x = 51.9, y = 58.4, f = "e" },
					{ t = "accept", quest = 10720, title = "The Smallest Creatures", npc = 21984, npcName = "Rexxar", x = 51.9, y = 58.4, f = "e" },
					{ t = "accept", quest = 10784, title = "Crush the Bloodmaul Camp", npc = 21147, npcName = "Tor'chunk Twoclaws", x = 51.9, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10784, target = "Bloodmaul Mauler", count = 10, oi = 1, x = 56.2, y = 26.7, f = "e" },
					{ t = "kill", quest = 10784, target = "Bloodmaul Warlock", count = 5, oi = 2, x = 56.2, y = 26.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 56.4, y = 29.2, f = "e" },
				},
			},
			{
				note = "As a marmot, do the following:",
				goals = {
					{ t = "goto", x = 55.4, y = 28.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 55.3, y = 26.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 55.9, y = 23.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 56.0, y = 29.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10720, title = "The Smallest Creatures", npc = 21984, npcName = "Rexxar", x = 51.9, y = 58.4, f = "e" },
					{ t = "accept", quest = 10721, title = "A Boaring Time for Grulloc", npc = 21984, npcName = "Rexxar", x = 51.9, y = 58.4, f = "e" },
					{ t = "turnin", quest = 10784, title = "Crush the Bloodmaul Camp", npc = 21147, npcName = "Tor'chunk Twoclaws", x = 51.9, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10721, itemName = "Grulloc's Sack", count = 1, oi = 1, x = 60.2, y = 47.6, f = "e" },
				},
			},
		},
	})
end

