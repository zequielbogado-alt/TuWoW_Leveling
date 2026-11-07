-- TuWoW_Leveling — Guides/Leveling_Alliance_42.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-70-72-part-4",
		pack = "guides",
		title = "Northrend (70-72) (Parte 4/4)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-72-74",
		author = "TuWoW & Zygor",
		minLevel = 70,
		maxLevel = 72,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11564, title = "Succulent Orca Stew", npc = 25211, npcName = "Cleaver Bmurglbrm", x = 42.0, y = 13.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Glimmer Bay Orcas", count = 1, x = 40.3, y = 12.4, f = "e" },
					{ t = "collect", quest = 11564, itemName = "Succulent Orca Blubber", count = 7, oi = 1, x = 40.3, y = 12.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11563, itemName = "Glrggl's Head", count = 1, oi = 1, x = 37.4, y = 9.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11563, title = "Grmmurggll Mrllggrl Glrggl!!!", npc = 25205, npcName = "Mrmrglmr", x = 42.0, y = 12.8, f = "e" },
					{ t = "accept", quest = 11565, title = "The Spare Suit", npc = 25205, npcName = "Mrmrglmr", x = 42.0, y = 12.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11564, title = "Succulent Orca Stew", npc = 25211, npcName = "Cleaver Bmurglbrm", x = 42.0, y = 13.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11565, title = "The Spare Suit", npc = 25197, npcName = "King Mrgl-Mrgl", x = 43.5, y = 14.0, f = "e" },
					{ t = "accept", quest = 11566, title = "Surrender... Not!", npc = 25197, npcName = "King Mrgl-Mrgl", x = 43.5, y = 14.0, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 37.8,23.2",
				goals = {
					{ t = "accept", quest = 11569, title = "Keymaster Urmgrgl", npc = 28375, npcName = "Glrglrglr", x = 37.8, y = 23.2, f = "e" },
				},
			},
			{
				note = "Go down the path and underneath you to 38.4,22.7",
				goals = {
					{ t = "collect", quest = 11569, itemName = "Urmgrgl's Key", count = 1, oi = 1, x = 38.4, y = 22.7, f = "e" },
				},
			},
			{
				note = "Follow the path up and to the back of the cave to 37.6,27.4",
				goals = {
					{ t = "collect", quest = 11566, itemName = "Claw of Claximus", count = 1, oi = 1, x = 37.6, y = 27.4, f = "e" },
				},
			},
			{
				note = "Go back up the path to 37.8,23.2",
				goals = {
					{ t = "turnin", quest = 11569, title = "Keymaster Urmgrgl", npc = 28375, npcName = "Glrglrglr", x = 37.8, y = 23.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11570, title = "Escape from the Winterfin Caverns", npc = 25208, npcName = "Lurgglbr", x = 37.8, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11566, title = "Surrender... Not!", npc = 25197, npcName = "King Mrgl-Mrgl", x = 43.5, y = 14.0, f = "e" },
					{ t = "turnin", quest = 11570, title = "Escape from the Winterfin Caverns", npc = 25197, npcName = "King Mrgl-Mrgl", x = 43.5, y = 14.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11658, title = "Plan B", npc = 25477, npcName = "Crafty Wobblesprocket", x = 57.6, y = 18.7, f = "e" },
					{ t = "accept", quest = 11670, title = "It Was The Orcs, Honest!", npc = 25477, npcName = "Crafty Wobblesprocket", x = 57.6, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 54.0, y = 13.5, f = "e" },
				},
			},
			{
				note = "Go down into the cave to 54.9,12",
				goals = {
					{ t = "goto", x = 54.9, y = 12.0, f = "e" },
				},
			},
			{
				note = "Go outside to 57.6,18.7",
				goals = {
					{ t = "turnin", quest = 11670, title = "It Was The Orcs, Honest!", npc = 25477, npcName = "Crafty Wobblesprocket", x = 57.6, y = 18.7, f = "e" },
				},
			},
			{
				note = "Go on top of the pump station to 64.5,23.4",
				goals = {
					{ t = "collect", quest = 11798, itemName = "Mechazod's Head", count = 1, oi = 2, x = 64.5, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 66.4, y = 32.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 69.9, y = 32.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 70.6, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11692, title = "Check in With Bixie", npc = 25705, npcName = "Bixie Wrenchshanker", x = 73.4, y = 18.8, f = "e" },
					{ t = "accept", quest = 11693, title = "Oh Great... Plagued Magnataur!", npc = 25705, npcName = "Bixie Wrenchshanker", x = 73.4, y = 18.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11693, target = "Plagued Magnataur", count = 10, oi = 1, x = 73.3, y = 19.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11693, title = "Oh Great... Plagued Magnataur!", npc = 25705, npcName = "Bixie Wrenchshanker", x = 73.4, y = 18.8, f = "e" },
					{ t = "accept", quest = 11694, title = "There's Something Going On In Those Caves", npc = 25705, npcName = "Bixie Wrenchshanker", x = 73.4, y = 18.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 74.7, y = 14.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11694, title = "There's Something Going On In Those Caves", npc = 25705, npcName = "Bixie Wrenchshanker", x = 73.4, y = 18.8, f = "e" },
					{ t = "accept", quest = 11697, title = "Rats, Tinky Went into the Necropolis!", npc = 25705, npcName = "Bixie Wrenchshanker", x = 73.4, y = 18.8, f = "e" },
					{ t = "accept", quest = 11698, title = "Might As Well Wipe Out the Scourge", npc = 25705, npcName = "Bixie Wrenchshanker", x = 73.4, y = 18.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Undead mobs", count = 1, x = 68.2, y = 17.0, f = "e" },
				},
			},
			{
				note = "Go inside the undead building to 69.9,14.7",
				goals = {
					{ t = "turnin", quest = 11697, title = "Rats, Tinky Went into the Necropolis!", npc = 25714, npcName = "Tinky Wickwhistle", x = 69.9, y = 14.7, f = "e" },
					{ t = "accept", quest = 11699, title = "I'm Stuck in this Damned Cage... But Not For Long!", npc = 25714, npcName = "Tinky Wickwhistle", x = 69.9, y = 14.7, f = "e" },
				},
			},
			{
				note = "Go outside to 68.6,17.5",
				goals = {
					{ t = "kill", target = "Festering Ghouls", count = 1, x = 68.6, y = 17.5, f = "e" },
					{ t = "collect", quest = 11699, itemName = "Engine-Core Crystal", count = 1, oi = 1, x = 68.6, y = 17.5, f = "e" },
				},
			},
			{
				note = "Go around to the back of the building and up to 69.7,13.9",
				goals = {
					{ t = "collect", quest = 11699, itemName = "Piloting Scourgestone", count = 1, oi = 3, x = 69.7, y = 13.9, f = "e" },
				},
			},
			{
				note = "Jump down into the huge hole to 69.7,13",
				goals = {
					{ t = "collect", quest = 11699, itemName = "Magical Gyroscope", count = 1, oi = 2, x = 69.7, y = 13.0, f = "e" },
				},
			},
			{
				note = "Go inside the undead building to 69.9,14.7",
				goals = {
					{ t = "turnin", quest = 11699, title = "I'm Stuck in this Damned Cage... But Not For Long!", npc = 25714, npcName = "Tinky Wickwhistle", x = 69.9, y = 14.7, f = "e" },
					{ t = "accept", quest = 11700, title = "Let Bixie Know", npc = 25714, npcName = "Tinky Wickwhistle", x = 69.9, y = 14.7, f = "e" },
				},
			},
			{
				note = "Go outside to 73.4,18.8",
				goals = {
					{ t = "turnin", quest = 11698, title = "Might As Well Wipe Out the Scourge", npc = 25705, npcName = "Bixie Wrenchshanker", x = 73.4, y = 18.8, f = "e" },
					{ t = "turnin", quest = 11700, title = "Let Bixie Know", npc = 25705, npcName = "Bixie Wrenchshanker", x = 73.4, y = 18.8, f = "e" },
					{ t = "accept", quest = 11701, title = "Back to the Airstrip", npc = 25705, npcName = "Bixie Wrenchshanker", x = 73.4, y = 18.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11713, title = "Scouting the Sinkholes", npc = 25780, npcName = "Abner Fizzletorque", x = 57.1, y = 20.1, f = "e" },
					{ t = "accept", quest = 11715, title = "Fueling the Project", npc = 25780, npcName = "Abner Fizzletorque", x = 57.1, y = 20.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11701, title = "Back to the Airstrip", npc = 25590, npcName = "Fizzcrank Fullthrottle", x = 57.0, y = 18.7, f = "e" },
					{ t = "turnin", quest = 11798, title = "The Gearmaster", npc = 25590, npcName = "Fizzcrank Fullthrottle", x = 57.0, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 57.6, y = 23.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11715, title = "Fueling the Project", npc = 25780, npcName = "Abner Fizzletorque", x = 57.1, y = 20.1, f = "e" },
					{ t = "accept", quest = 11718, title = "A Bot in Mammoth's Clothing", npc = 25780, npcName = "Abner Fizzletorque", x = 57.1, y = 20.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "mammoths", count = 1, x = 56.9, y = 29.1, f = "e" },
					{ t = "collect", quest = 11718, itemName = "Thick Mammoth Hide", count = 6, oi = 1, x = 56.9, y = 29.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11718, title = "A Bot in Mammoth's Clothing", npc = 25780, npcName = "Abner Fizzletorque", x = 57.1, y = 20.1, f = "e" },
					{ t = "accept", quest = 11723, title = "Deploy the Shake-n-Quake!", npc = 25780, npcName = "Abner Fizzletorque", x = 57.1, y = 20.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11723, target = "Lord Kryxix", count = 1, oi = 1, x = 70.6, y = 36.9, f = "e" },
				},
			},
			{
				note = "Hearth to Fizzcrank Airstrip,1|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "goto", x = 57.1, y = 18.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11723, title = "Deploy the Shake-n-Quake!", npc = 25780, npcName = "Abner Fizzletorque", x = 57.1, y = 20.1, f = "e" },
				},
			},
			{
				note = "Ride the boat to Howling Fjord|goto Howling Fjord|noway|c",
				goals = {
					{ t = "goto", x = 4.6, y = 57.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11228, title = "Hell Has Frozen Over...", npc = 23547, npcName = "Macalroy", x = 61.1, y = 62.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11228, title = "Hell Has Frozen Over...", npc = 23546, npcName = "Vice Admiral Keller", x = 60.5, y = 61.1, f = "e" },
					{ t = "accept", quest = 11243, title = "If Valgarde Falls...", npc = 23546, npcName = "Vice Admiral Keller", x = 60.5, y = 61.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Valgarde", x = 59.8, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Valgarde", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Dragonflayer Worgs", count = 1, x = 58.9, y = 59.6, f = "e" },
					{ t = "kill", target = "Dragonflayer Invaders", count = 1, x = 58.9, y = 59.6, f = "e" },
					{ t = "kill", quest = 11243, target = "Dragonflayer Invader", count = 12, oi = 1, x = 58.9, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11243, title = "If Valgarde Falls...", npc = 23546, npcName = "Vice Admiral Keller", x = 60.5, y = 61.1, f = "e" },
					{ t = "accept", quest = 11244, title = "Rescuing the Rescuers", npc = 23546, npcName = "Vice Admiral Keller", x = 60.5, y = 61.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 58.1, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11251, title = "Fresh Legs", npc = 24106, npcName = "Scout Valory", x = 56.0, y = 55.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11251, title = "Fresh Legs", npc = 24111, npcName = "Defender Mordun", x = 59.6, y = 48.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11244, title = "Rescuing the Rescuers", npc = 23546, npcName = "Vice Admiral Keller", x = 60.5, y = 61.1, f = "e" },
					{ t = "accept", quest = 11255, title = "Prisoners of Wyrmskull", npc = 23546, npcName = "Vice Admiral Keller", x = 60.5, y = 61.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11273, title = "The Human League", npc = 23548, npcName = "Beltrand McSorf", x = 60.2, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11333, title = "Into the World of Spirits", npc = 23975, npcName = "Thoralius the Wise", x = 59.8, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11420, title = "The Path to Payback", npc = 23728, npcName = "Guard Captain Zorek", x = 60.1, y = 62.4, f = "e" },
				},
			},
			{
				note = "Go underwater to 62.4,59.3",
				goals = {
					{ t = "collect", quest = 11333, itemName = "Reagent Pouch", count = 1, oi = 1, x = 62.4, y = 59.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11443, title = "Daggercap Divin'", npc = 23730, npcName = "Harold Lagras", x = 63.0, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11443, itemName = "Valgarde Supply Crate", count = 10, oi = 1, x = 62.2, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11443, title = "Daggercap Divin'", npc = 23730, npcName = "Harold Lagras", x = 63.0, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11273, title = "The Human League", npc = 24122, npcName = "Pulroy the Archaeologist", x = 59.2, y = 54.6, f = "e" },
					{ t = "accept", quest = 11274, title = "Zedd's Probably Dead", npc = 24122, npcName = "Pulroy the Archaeologist", x = 59.2, y = 54.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Dragonflayer Tribesmen", count = 1, x = 58.8, y = 54.1, f = "e" },
					{ t = "kill", target = "Dragonflayer Death Weavers", count = 1, x = 58.8, y = 54.1, f = "e" },
					{ t = "kill", target = "Dragonflayer Thanes", count = 1, x = 58.8, y = 54.1, f = "e" },
					{ t = "collect", item = 33308, itemName = "Dragonflayer Cage Key", count = 3, x = 58.8, y = 54.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11274, title = "Zedd's Probably Dead", npc = 24145, npcName = "Zedd", x = 56.6, y = 52.4, f = "e" },
					{ t = "accept", quest = 11276, title = "And Then There Were Two...", npc = 24145, npcName = "Zedd", x = 56.6, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 56.6, y = 49.6, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 56.9,53.8",
				goals = {
					{ t = "turnin", quest = 11276, title = "And Then There Were Two...", npc = 24150, npcName = "Glorenfeld", x = 56.9, y = 53.8, f = "e" },
					{ t = "accept", quest = 11277, title = "The Depths of Depravity", npc = 24150, npcName = "Glorenfeld", x = 56.9, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11277, itemName = "Wyrmskull Tablet", count = 10, oi = 1, x = 57.3, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11420, itemName = "Harpoon Operation Manual", count = 1, oi = 1, x = 59.3, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11288, title = "The Shining Light", npc = 24189, npcName = "Ares the Oathbound", x = 59.3, y = 55.4, f = "e" },
				},
			},
			{
				note = "Go downstairs into the ghoul pit to 56.6,53.4",
				goals = {
					{ t = "collect", quest = 11288, itemName = "Sacred Artifact", count = 1, oi = 1, x = 56.6, y = 53.4, f = "e" },
				},
			},
			{
				note = "Go upstairs to 59.3,55.4",
				goals = {
					{ t = "turnin", quest = 11288, title = "The Shining Light", npc = 24189, npcName = "Ares the Oathbound", x = 59.3, y = 55.4, f = "e" },
					{ t = "accept", quest = 11289, title = "Guided by Honor", npc = 24189, npcName = "Ares the Oathbound", x = 59.3, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11277, title = "The Depths of Depravity", npc = 24150, npcName = "Glorenfeld", x = 56.9, y = 53.8, f = "e" },
					{ t = "accept", quest = 11299, title = "The Ring of Judgement", npc = 24150, npcName = "Glorenfeld", x = 56.9, y = 53.8, f = "e" },
				},
			},
			{
				note = "Go downstairs to 55.7,57.4",
				goals = {
					{ t = "turnin", quest = 11299, title = "The Ring of Judgement", npc = 24151, npcName = "Daegarn", x = 55.7, y = 57.4, f = "e" },
					{ t = "accept", quest = 11300, title = "Stunning Defeat at the Ring", npc = 24151, npcName = "Daegarn", x = 55.7, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11300, itemName = "Ancient Cipher", count = 1, oi = 1, x = 55.0, y = 57.5, f = "e" },
				},
			},
			{
				note = "Go upstairs to 56.9,53.8",
				goals = {
					{ t = "turnin", quest = 11300, title = "Stunning Defeat at the Ring", npc = 24150, npcName = "Glorenfeld", x = 56.9, y = 53.8, f = "e" },
					{ t = "accept", quest = 11278, title = "Return to Valgarde", npc = 24150, npcName = "Glorenfeld", x = 56.9, y = 53.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11289, title = "Guided by Honor", npc = 24191, npcName = "Lord Irulon Trueblade", x = 59.8, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11420, title = "The Path to Payback", npc = 23728, npcName = "Guard Captain Zorek", x = 60.1, y = 62.4, f = "e" },
					{ t = "accept", quest = 11426, title = "Locating the Mechanism", npc = 23728, npcName = "Guard Captain Zorek", x = 60.1, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11255, title = "Prisoners of Wyrmskull", npc = 23546, npcName = "Vice Admiral Keller", x = 60.5, y = 61.1, f = "e" },
					{ t = "accept", quest = 11290, title = "Dragonflayer Battle Plans", npc = 23546, npcName = "Vice Admiral Keller", x = 60.5, y = 61.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11278, title = "Return to Valgarde", npc = 23548, npcName = "Beltrand McSorf", x = 60.2, y = 61.0, f = "e" },
					{ t = "accept", quest = 11448, title = "The Explorers' League Outpost", npc = 23548, npcName = "Beltrand McSorf", x = 60.2, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11333, title = "Into the World of Spirits", npc = 23975, npcName = "Thoralius the Wise", x = 59.8, y = 61.5, f = "e" },
					{ t = "accept", quest = 11343, title = "The Echo of Ymiron", npc = 23975, npcName = "Thoralius the Wise", x = 59.8, y = 61.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 72, f = "e" },
				},
			},
		},
	})
end

