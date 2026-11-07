-- TuWoW_Leveling — Guides/Leveling_Horde_43.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-70-72-part-4",
		pack = "guides",
		title = "Northrend (70-72) (Parte 4/5)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-70-72-part-5",
		author = "TuWoW & Zygor",
		minLevel = 70,
		maxLevel = 72,
		zone = 1411,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 11647, title = "Neutralizing the Cauldrons", npc = 24709, npcName = "Sage Aeire", map = 1411, x = 76.0, y = 37.3, f = "e" },
					{ t = "accept", quest = 11641, title = "A Courageous Strike", npc = 24706, npcName = "Durm Icehide", map = 1411, x = 76.0, y = 37.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Burblegobble's Key", count = 1, map = 1411, x = 68.6, y = 40.4, f = "e" },
					{ t = "collect", quest = 11695, itemName = "Upper Horn Half", count = 1, oi = 1, map = 1411, x = 68.6, y = 40.4, f = "e" },
				},
			},
			{
				note = "Click Fizzcrank Spare Parts on the ground as you do the following steps:|tip They look like metal parts on the ground.",
				goals = {
					{ t = "collect", itemName = "Fizzcrank Spare Parts", count = 15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 68.1, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Fizzcrank Mechagnomes", count = 1, map = 1411, x = 64.6, y = 23.6, f = "e" },
				},
			},
			{
				note = "Hearth to Taunka'le Village,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "goto", map = 1411, x = 76.3, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11906, title = "Cleaning Up the Pools", npc = 26104, npcName = "Iron Eyes", map = 1411, x = 76.9, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11896, title = "Weakness to Lightning", npc = 25982, npcName = "Sage Earth and Sky", map = 1411, x = 77.3, y = 38.5, f = "e" },
					{ t = "accept", quest = 11907, title = "The Sub-Chieftains", npc = 25982, npcName = "Sage Earth and Sky", map = 1411, x = 77.3, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11899, title = "Souls of the Decursed", npc = 25602, npcName = "Greatmother Taiga", map = 1411, x = 77.3, y = 36.9, f = "e" },
					{ t = "accept", quest = 11909, title = "Defeat the Gearmaster", npc = 25602, npcName = "Greatmother Taiga", map = 1411, x = 77.3, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11695, title = "The Horn of Elemental Fury", npc = 24730, npcName = "Wind Tamer Barah", map = 1411, x = 75.6, y = 35.8, f = "e" },
					{ t = "accept", quest = 11706, title = "The Collapse", npc = 24730, npcName = "Wind Tamer Barah", map = 1411, x = 75.6, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11641, target = "En'kilah Ghoul", count = 15, oi = 1, map = 1411, x = 85.2, y = 28.5, f = "e" },
					{ t = "kill", quest = 11641, target = "En'kilah Necromancer", count = 5, oi = 2, map = 1411, x = 85.2, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11640, itemName = "High Priest Talet-Kha's Scroll", count = 1, oi = 2, map = 1411, x = 89.4, y = 28.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 87.7, y = 29.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11640, itemName = "High Priest Andorath's Scroll", count = 1, oi = 3, map = 1411, x = 88.1, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 86.2, y = 22.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "the 3 guards", count = 1, map = 1411, x = 83.9, y = 20.5, f = "e" },
					{ t = "collect", quest = 11640, itemName = "High Priest Naferset's Scroll", count = 1, oi = 1, map = 1411, x = 83.9, y = 20.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 85.5, y = 20.2, f = "e" },
				},
			},
			{
				note = "Find and Kill Darkfallen Bloodbearer|tip He walks up and down the path to the biggest temple.",
				goals = {
					{ t = "collect", itemName = "Vial of Fresh Blood", count = 1, map = 1411, x = 87.7, y = 22.0, f = "e" },
					{ t = "accept", quest = 11654, title = "The Spire of Blood", map = 1411, x = 87.7, y = 22.0, f = "e" },
				},
			},
			{
				note = "Go inside the big temple to 87.6,20",
				goals = {
					{ t = "turnin", quest = 11654, title = "The Spire of Blood", npc = 25516, npcName = "Snow Tracker Grumm", map = 1411, x = 87.6, y = 20.0, f = "e" },
					{ t = "accept", quest = 11659, title = "Shatter the Orbs!", npc = 25516, npcName = "Snow Tracker Grumm", map = 1411, x = 87.6, y = 20.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11659, title = "Shatter the Orbs!", npc = 24733, npcName = "Snow Tracker Junek", map = 1411, x = 76.7, y = 37.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11647, title = "Neutralizing the Cauldrons", npc = 24709, npcName = "Sage Aeire", map = 1411, x = 76.0, y = 37.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11641, title = "A Courageous Strike", npc = 24706, npcName = "Durm Icehide", map = 1411, x = 76.0, y = 37.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11640, title = "Words of Power", npc = 24703, npcName = "Chieftain Wintergale", map = 1411, x = 75.9, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11706, target = "Lord Kryxix", count = 1, oi = 1, map = 1411, x = 70.6, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11907, target = "The Grinder", count = 1, oi = 4, map = 1411, x = 65.2, y = 28.8, f = "e" },
				},
			},
			{
				note = "Go north on top of the pump station to 64.4,23.4",
				goals = {
					{ t = "collect", quest = 11909, itemName = "Mechazod's Head", count = 1, oi = 2, map = 1411, x = 64.4, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11907, target = "Max Blasto", count = 1, oi = 3, map = 1411, x = 63.7, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11907, target = "Twonky", count = 1, oi = 1, map = 1411, x = 60.2, y = 20.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11907, target = "ED-210", count = 1, oi = 2, map = 1411, x = 65.4, y = 17.4, f = "e" },
				},
			},
			{
				note = "Hearth to Taunka'le Village,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "goto", map = 1411, x = 76.3, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11706, title = "The Collapse", npc = 24730, npcName = "Wind Tamer Barah", map = 1411, x = 75.6, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11909, title = "Defeat the Gearmaster", npc = 25602, npcName = "Greatmother Taiga", map = 1411, x = 77.3, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11907, title = "The Sub-Chieftains", npc = 25982, npcName = "Sage Earth and Sky", map = 1411, x = 77.3, y = 38.5, f = "e" },
				},
			},
			{
				note = "Fly to Amber Ledge,0.5|noway|c",
				goals = {
					{ t = "goto", map = 1411, x = 45.1, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11593, title = "The Honored Dead", npc = 25336, npcName = "Grunt Ragefist", map = 1411, x = 48.4, y = 19.7, f = "e" },
					{ t = "accept", quest = 11594, title = "Put Them to Rest", npc = 25336, npcName = "Grunt Ragefist", map = 1411, x = 48.4, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Ghostly Sages and Risen Longrunners", count = 1, map = 1411, x = 47.9, y = 21.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11593, title = "The Honored Dead", npc = 25336, npcName = "Grunt Ragefist", map = 1411, x = 48.4, y = 19.7, f = "e" },
					{ t = "turnin", quest = 11594, title = "Put Them to Rest", npc = 25336, npcName = "Grunt Ragefist", map = 1411, x = 48.4, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11592, title = "We Strike!", npc = 25335, npcName = "Longrunner Proudhoof", map = 1411, x = 48.3, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11571, title = "Learning to Communicate", npc = 25197, npcName = "King Mrgl-Mrgl", map = 1411, x = 43.5, y = 14.0, f = "e" },
				},
			},
			{
				note = "Go southwest underwater to 42.5,15.9",
				goals = {
					{ t = "kill", target = "Scalder", count = 1, map = 1411, x = 42.5, y = 15.9, f = "e" },
					{ t = "collect", quest = 11571, itemName = "The King's Filled Conch", count = 1, oi = 1, map = 1411, x = 42.5, y = 15.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11571, title = "Learning to Communicate", npc = 25197, npcName = "King Mrgl-Mrgl", map = 1411, x = 43.5, y = 14.0, f = "e" },
					{ t = "accept", quest = 11559, title = "Winterfin Commerce", npc = 25197, npcName = "King Mrgl-Mrgl", map = 1411, x = 43.5, y = 14.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11559, itemName = "Winterfin Clam", count = 5, oi = 1, map = 1411, x = 41.5, y = 13.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11559, title = "Winterfin Commerce", npc = 25206, npcName = "Ahlurglgr", map = 1411, x = 43.0, y = 13.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11561, title = "Them!", npc = 25199, npcName = "Brglmurgl", map = 1411, x = 42.8, y = 13.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11560, title = "Oh Noes, the Tadpoles!", npc = 25197, npcName = "King Mrgl-Mrgl", map = 1411, x = 43.5, y = 14.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11561, target = "Winterfin murlocs", count = 15, oi = 1, map = 1411, x = 40.6, y = 17.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11561, title = "Them!", npc = 25199, npcName = "Brglmurgl", map = 1411, x = 42.8, y = 13.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11560, title = "Oh Noes, the Tadpoles!", npc = 25197, npcName = "King Mrgl-Mrgl", map = 1411, x = 43.5, y = 14.0, f = "e" },
					{ t = "accept", quest = 11562, title = "I'm Being Blackmailed By My Cleaner", npc = 25197, npcName = "King Mrgl-Mrgl", map = 1411, x = 43.5, y = 14.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11562, title = "I'm Being Blackmailed By My Cleaner", npc = 25205, npcName = "Mrmrglmr", map = 1411, x = 42.0, y = 12.8, f = "e" },
					{ t = "accept", quest = 11563, title = "Grmmurggll Mrllggrl Glrggl!!!", npc = 25205, npcName = "Mrmrglmr", map = 1411, x = 42.0, y = 12.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11564, title = "Succulent Orca Stew", npc = 25211, npcName = "Cleaver Bmurglbrm", map = 1411, x = 42.0, y = 13.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Glimmer Bay Orcas", count = 1, map = 1411, x = 40.3, y = 12.4, f = "e" },
					{ t = "collect", quest = 11564, itemName = "Succulent Orca Blubber", count = 7, oi = 1, map = 1411, x = 40.3, y = 12.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11563, itemName = "Glrggl's Head", count = 1, oi = 1, map = 1411, x = 37.4, y = 9.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11563, title = "Grmmurggll Mrllggrl Glrggl!!!", npc = 25205, npcName = "Mrmrglmr", map = 1411, x = 42.0, y = 12.8, f = "e" },
					{ t = "accept", quest = 11565, title = "The Spare Suit", npc = 25205, npcName = "Mrmrglmr", map = 1411, x = 42.0, y = 12.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11564, title = "Succulent Orca Stew", npc = 25211, npcName = "Cleaver Bmurglbrm", map = 1411, x = 42.0, y = 13.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11565, title = "The Spare Suit", npc = 25197, npcName = "King Mrgl-Mrgl", map = 1411, x = 43.5, y = 14.0, f = "e" },
					{ t = "accept", quest = 11566, title = "Surrender... Not!", npc = 25197, npcName = "King Mrgl-Mrgl", map = 1411, x = 43.5, y = 14.0, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 37.8,23.2",
				goals = {
					{ t = "accept", quest = 11569, title = "Keymaster Urmgrgl", npc = 28375, npcName = "Glrglrglr", map = 1411, x = 37.8, y = 23.2, f = "e" },
				},
			},
			{
				note = "Go down the path and underneath you to 38.4,22.7",
				goals = {
					{ t = "collect", quest = 11569, itemName = "Urmgrgl's Key", count = 1, oi = 1, map = 1411, x = 38.4, y = 22.7, f = "e" },
				},
			},
			{
				note = "Follow the path up and to the back of the cave to 37.6,27.4",
				goals = {
					{ t = "collect", quest = 11566, itemName = "Claw of Claximus", count = 1, oi = 1, map = 1411, x = 37.6, y = 27.4, f = "e" },
				},
			},
			{
				note = "Go back up the path to 37.8,23.2",
				goals = {
					{ t = "turnin", quest = 11569, title = "Keymaster Urmgrgl", npc = 28375, npcName = "Glrglrglr", map = 1411, x = 37.8, y = 23.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11570, title = "Escape from the Winterfin Caverns", npc = 25208, npcName = "Lurgglbr", map = 1411, x = 37.8, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11566, title = "Surrender... Not!", npc = 25197, npcName = "King Mrgl-Mrgl", map = 1411, x = 43.5, y = 14.0, f = "e" },
					{ t = "turnin", quest = 11570, title = "Escape from the Winterfin Caverns", npc = 25197, npcName = "King Mrgl-Mrgl", map = 1411, x = 43.5, y = 14.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Bor'gorok Outpost", map = 1411, x = 49.6, y = 11.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11592, title = "We Strike!", npc = 25326, npcName = "Overlord Bor'gorok", map = 1411, x = 49.6, y = 10.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12486, title = "To Bor'gorok Outpost, Quickly!", npc = 25339, npcName = "Spirit Talker Snarlfang", map = 1411, x = 50.3, y = 9.7, f = "e" },
					{ t = "accept", quest = 11624, title = "The Sky Will Know", npc = 25339, npcName = "Spirit Talker Snarlfang", map = 1411, x = 50.3, y = 9.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11624, title = "The Sky Will Know", npc = 25376, npcName = "Imperean", map = 1411, x = 46.6, y = 9.3, f = "e" },
					{ t = "accept", quest = 11627, title = "Boiling Point", npc = 25376, npcName = "Imperean", map = 1411, x = 46.6, y = 9.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 45.9, y = 13.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 50.8, y = 15.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11627, title = "Boiling Point", npc = 25376, npcName = "Imperean", map = 1411, x = 46.6, y = 9.3, f = "e" },
					{ t = "accept", quest = 11649, title = "Motes of the Enraged", npc = 25376, npcName = "Imperean", map = 1411, x = 46.6, y = 9.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Enraged Tempests", count = 1, map = 1411, x = 45.2, y = 9.3, f = "e" },
					{ t = "collect", quest = 11649, itemName = "Tempest Mote", count = 5, oi = 1, map = 1411, x = 45.2, y = 9.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11649, title = "Motes of the Enraged", npc = 25376, npcName = "Imperean", map = 1411, x = 46.6, y = 9.3, f = "e" },
					{ t = "accept", quest = 11629, title = "Return to the Spirit Talker", npc = 25376, npcName = "Imperean", map = 1411, x = 46.6, y = 9.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11629, title = "Return to the Spirit Talker", npc = 25339, npcName = "Spirit Talker Snarlfang", map = 1411, x = 50.3, y = 9.7, f = "e" },
					{ t = "accept", quest = 11631, title = "Vision of Air", npc = 25339, npcName = "Spirit Talker Snarlfang", map = 1411, x = 50.3, y = 9.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11631, title = "Vision of Air", npc = 25339, npcName = "Spirit Talker Snarlfang", map = 1411, x = 50.3, y = 9.7, f = "e" },
					{ t = "accept", quest = 11635, title = "Farseer Grimwalker's Spirit", npc = 25339, npcName = "Spirit Talker Snarlfang", map = 1411, x = 50.3, y = 9.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11639, title = "Revenge Upon Magmoth", npc = 25374, npcName = "Ortrosh", map = 1411, x = 49.5, y = 10.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11639, target = "Magmoth Shaman", count = 10, oi = 1, map = 1411, x = 53.8, y = 9.4, f = "e" },
					{ t = "kill", quest = 11639, target = "Magmoth Forager", count = 5, oi = 2, map = 1411, x = 53.8, y = 9.4, f = "e" },
					{ t = "kill", quest = 11639, target = "Magmoth Crusher", count = 3, oi = 3, map = 1411, x = 53.8, y = 9.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 54.2, y = 13.1, f = "e" },
				},
			},
			{
				note = "Go to the bottom of the cave to 56.1,9.1",
				goals = {
					{ t = "turnin", quest = 11635, title = "Farseer Grimwalker's Spirit", npc = 25425, npcName = "Farseer Grimwalker's Spirit", map = 1411, x = 56.1, y = 9.1, f = "e" },
					{ t = "accept", quest = 11637, title = "Kaganishu", npc = 25425, npcName = "Farseer Grimwalker's Spirit", map = 1411, x = 56.1, y = 9.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11637, itemName = "Kaganishu's Fetish", count = 1, oi = 2, map = 1411, x = 56.2, y = 12.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11637, title = "Kaganishu", npc = 25425, npcName = "Farseer Grimwalker's Spirit", map = 1411, x = 56.1, y = 9.1, f = "e" },
					{ t = "accept", quest = 11638, title = "Return My Remains", npc = 25425, npcName = "Farseer Grimwalker's Spirit", map = 1411, x = 56.1, y = 9.1, f = "e" },
					{ t = "collect", quest = 11638, itemName = "Farseer Grimwalker's Remains", count = 1, oi = 1, map = 1411, x = 56.1, y = 9.1, f = "e" },
				},
			},
			{
				note = "Leave the cave and go to 49.5,10",
				goals = {
					{ t = "turnin", quest = 11639, title = "Revenge Upon Magmoth", npc = 25374, npcName = "Ortrosh", map = 1411, x = 49.5, y = 10.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11638, title = "Return My Remains", npc = 25339, npcName = "Spirit Talker Snarlfang", map = 1411, x = 50.3, y = 9.7, f = "e" },
				},
			},
			{
				note = "Fly to Warsong Hold,0.5|noway|c",
				goals = {
					{ t = "goto", map = 1411, x = 40.4, y = 51.5, f = "e" },
				},
			},
			{
				note = "Ride the zeppelin to Orgrimmar|goto Durotar|noway|c",
				goals = {
					{ t = "goto", map = 1411, x = 41.4, y = 53.7, f = "e" },
				},
			},
			{
				note = "Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c",
				goals = {
					{ t = "goto", map = 1411, x = 50.8, y = 13.8, f = "e" },
				},
			},
			{
				note = "Ride the zeppelin to Howling Fjord|goto Howling Fjord|noway|c",
				goals = {
					{ t = "goto", map = 1420, x = 59.1, y = 59.0, f = "e" },
				},
			},
			{
				note = "Go down the zeppelin tower to 78.5,29|goto Howling Fjord,78.5,29",
				goals = {
					{ t = "accept", quest = 11167, title = "The New Plague", npc = 24126, npcName = "Apothecary Lysander", f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-70-72-part-5",
		pack = "guides",
		title = "Northrend (70-72) (Parte 5/5)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-72-74",
		author = "TuWoW & Zygor",
		minLevel = 70,
		maxLevel = 72,
		zone = 1411,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "fpath", text = "Vengeance Landing", map = 1420, x = 79.0, y = 29.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Vengeance Landing", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11227, title = "Let Them Eat Crow", npc = 23938, npcName = "Pontius", map = 1420, x = 79.2, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11270, title = "War is Hell", npc = 23780, npcName = "High Executor Anselm", map = 1420, x = 78.6, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Fjord Crows", count = 1, map = 1420, x = 75.8, y = 31.5, f = "e" },
					{ t = "collect", quest = 11227, item = 33238, itemName = "Crow Meat", count = 5, map = 1420, x = 75.8, y = 31.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11167, itemName = "Intact Plague Container", count = 10, oi = 1, map = 1420, x = 81.0, y = 35.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11270, title = "War is Hell", npc = 23780, npcName = "High Executor Anselm", map = 1420, x = 78.6, y = 31.2, f = "e" },
					{ t = "accept", quest = 11221, title = "Reports from the Field", npc = 23780, npcName = "High Executor Anselm", map = 1420, x = 78.6, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11227, title = "Let Them Eat Crow", npc = 23938, npcName = "Pontius", map = 1420, x = 79.2, y = 31.2, f = "e" },
					{ t = "accept", quest = 11253, title = "Sniff Out the Enemy", npc = 23938, npcName = "Pontius", map = 1420, x = 79.2, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11167, title = "The New Plague", npc = 24126, npcName = "Apothecary Lysander", map = 1420, x = 78.5, y = 29.0, f = "e" },
					{ t = "accept", quest = 11168, title = "Spiking the Mix", npc = 24126, npcName = "Apothecary Lysander", map = 1420, x = 78.5, y = 29.0, f = "e" },
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

