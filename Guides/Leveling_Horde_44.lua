-- TuWoW_Leveling — Guides/Leveling_Horde_44.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-72-74-part-2",
		pack = "guides",
		title = "Northrend (72-74) (Parte 2/4)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-72-74-part-3",
		author = "TuWoW & Zygor",
		minLevel = 72,
		maxLevel = 74,
		zone = 117,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 11456, title = "Feeding the Survivors", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
					{ t = "accept", quest = 11457, title = "Arming Kamagua", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Frostwing Chimaeras", count = 1, map = 117, x = 26.4, y = 62.9, f = "e" },
					{ t = "collect", quest = 11457, itemName = "Chimaera Horn", count = 3, oi = 1, map = 117, x = 26.4, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11457, title = "Arming Kamagua", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
					{ t = "accept", quest = 11458, title = "Avenge Iskaal", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11508, title = "Grezzix Spindlesnap", npc = 24643, npcName = "Grezzix Spindlesnap", map = 117, x = 23.1, y = 62.7, f = "e" },
					{ t = "accept", quest = 11509, title = "Street \"Cred\"", npc = 24643, npcName = "Grezzix Spindlesnap", map = 117, x = 23.1, y = 62.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11509, title = "Street \"Cred\"", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
					{ t = "accept", quest = 11510, title = "\"Scoodles\"", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11434, title = "Forgotten Treasure", npc = 24537, npcName = "Handsome Terry", map = 117, x = 35.6, y = 80.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11469, title = "Swabbin' Soap", npc = 24784, npcName = "Scuttle Frostprow", map = 117, x = 37.8, y = 79.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11510, itemName = "Sin'dorei Scrying Crystal", count = 1, oi = 1, map = 117, x = 38.3, y = 83.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11434, itemName = "Eagle Figurine", count = 1, oi = 2, map = 117, x = 37.8, y = 84.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11434, itemName = "Amani Vase", count = 1, oi = 1, map = 117, x = 37.1, y = 85.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11469, itemName = "Big Roy's Blubber", count = 1, oi = 1, map = 117, x = 31.4, y = 77.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11510, title = "\"Scoodles\"", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
					{ t = "accept", quest = 11567, title = "The Ancient Armor of the Kvaldir", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
					{ t = "accept", quest = 11512, title = "The Frozen Heart of Isuldof", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
					{ t = "accept", quest = 11519, title = "The Lost Shield of the Aesirites", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
					{ t = "accept", quest = 11511, title = "The Staff of Storm's Fury", npc = 24539, npcName = "\"Silvermoon\" Harry", map = 117, x = 35.1, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11434, title = "Forgotten Treasure", npc = 24537, npcName = "Handsome Terry", map = 117, x = 35.6, y = 80.2, f = "e" },
					{ t = "accept", quest = 11455, title = "The Fragrance of Money", npc = 24537, npcName = "Handsome Terry", map = 117, x = 35.6, y = 80.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11464, title = "Gambling Debt", npc = 24541, npcName = "Taruk", map = 117, x = 36.3, y = 80.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11464, itemName = "\"Silvermoon\" Harry's Debt", count = 1, oi = 1, map = 117, x = 35.1, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11464, title = "Gambling Debt", npc = 24541, npcName = "Taruk", map = 117, x = 36.3, y = 80.5, f = "e" },
					{ t = "accept", quest = 11466, title = "Jack Likes His Drink", npc = 24541, npcName = "Taruk", map = 117, x = 36.3, y = 80.5, f = "e" },
				},
			},
			{
				note = "Go inside the long building to 35.3,79.6",
				goals = {
					{ t = "collect", quest = 11466, itemName = "Jack Adams' Debt", count = 1, oi = 1, map = 117, x = 35.3, y = 79.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11466, title = "Jack Likes His Drink", npc = 24541, npcName = "Taruk", map = 117, x = 36.3, y = 80.5, f = "e" },
					{ t = "accept", quest = 11467, title = "Dead Man's Debt", npc = 24541, npcName = "Taruk", map = 117, x = 36.3, y = 80.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11469, title = "Swabbin' Soap", npc = 24784, npcName = "Scuttle Frostprow", map = 117, x = 37.8, y = 79.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11519, title = "The Lost Shield of the Aesirites", npc = 24910, npcName = "Captain Ellis", map = 117, x = 37.2, y = 74.8, f = "e" },
					{ t = "accept", quest = 11527, title = "Mutiny on the Mercy", npc = 24910, npcName = "Captain Ellis", map = 117, x = 37.2, y = 74.8, f = "e" },
				},
			},
			{
				note = "Go downstairs in the ship",
				goals = {
					{ t = "kill", target = "Mutinous Sea Dog ghouls", count = 1, f = "e" },
					{ t = "collect", quest = 11527, itemName = "Barrel of Blasting Powder", count = 5, oi = 1, f = "e" },
				},
			},
			{
				note = "Go upstairs to the ship deck to 37.2,74.8",
				goals = {
					{ t = "turnin", quest = 11527, title = "Mutiny on the Mercy", npc = 24910, npcName = "Captain Ellis", map = 117, x = 37.2, y = 74.8, f = "e" },
					{ t = "accept", quest = 11529, title = "Sorlof's Booty", npc = 24910, npcName = "Captain Ellis", map = 117, x = 37.2, y = 74.8, f = "e" },
				},
			},
			{
				note = "Run to the other end of the ship deck to the big cannon",
				goals = {
					{ t = "collect", quest = 11529, itemName = "Sorlof's Booty", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11529, title = "Sorlof's Booty", npc = 24910, npcName = "Captain Ellis", map = 117, x = 37.2, y = 74.8, f = "e" },
					{ t = "accept", quest = 11530, title = "The Shield of the Aesirites", npc = 24910, npcName = "Captain Ellis", map = 117, x = 37.2, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Rabid Brown Bears", count = 1, map = 117, x = 34.1, y = 76.9, f = "e" },
					{ t = "collect", quest = 11455, itemName = "Bear Musk", count = 4, oi = 1, map = 117, x = 34.1, y = 76.9, f = "e" },
				},
			},
			{
				note = "Go down into the cave to 33.5,75.4,0.5|c",
				goals = {
					{ t = "goto", map = 117, x = 33.5, y = 75.4, f = "e" },
				},
			},
			{
				note = "Go down the hill and into the cave to 32.3,78.7",
				goals = {
					{ t = "collect", quest = 11512, itemName = "The Frozen Heart of Isuldof", count = 1, oi = 1, map = 117, x = 32.3, y = 78.7, f = "e" },
				},
			},
			{
				note = "Leave the cave and go north to 33.2,63.9",
				goals = {
					{ t = "kill", quest = 11458, target = "Crazed Northsea Slaver", count = 8, oi = 1, map = 117, x = 33.2, y = 63.9, f = "e" },
				},
			},
			{
				note = "Go onto the ship to 35.3,64.8",
				goals = {
					{ t = "collect", quest = 11511, itemName = "The Staff of Storm's Fury", count = 1, oi = 1, map = 117, x = 35.3, y = 64.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 29.0, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11467, itemName = "Black Conrad's Treasure", count = 1, oi = 1, map = 117, x = 32.7, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11458, title = "Avenge Iskaal", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11472, title = "The Way to His Heart...", npc = 24810, npcName = "Anuniaq", map = 117, x = 24.6, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Great Reef Sharks", count = 1, map = 117, x = 28.9, y = 74.8, f = "e" },
					{ t = "collect", quest = 11472, item = 34127, itemName = "Tasty Reef Fish", count = 10, map = 117, x = 28.9, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 31.0, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11455, title = "The Fragrance of Money", npc = 24537, npcName = "Handsome Terry", map = 117, x = 35.6, y = 80.2, f = "e" },
					{ t = "accept", quest = 11473, title = "A Traitor Among Us", npc = 24537, npcName = "Handsome Terry", map = 117, x = 35.6, y = 80.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11473, title = "A Traitor Among Us", npc = 24525, npcName = "Zeh'gehn", map = 117, x = 35.6, y = 80.6, f = "e" },
					{ t = "accept", quest = 11459, title = "Zeh'gehn Sez", npc = 24525, npcName = "Zeh'gehn", map = 117, x = 35.6, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11459, title = "Zeh'gehn Sez", npc = 24537, npcName = "Handsome Terry", map = 117, x = 35.6, y = 80.2, f = "e" },
					{ t = "accept", quest = 11476, title = "A Carver and a Croaker", npc = 24537, npcName = "Handsome Terry", map = 117, x = 35.6, y = 80.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 24539, npcName = "\"Silvermoon\" Harry", itemName = "Shiny Knife", count = 1, map = 117, x = 35.1, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11476, itemName = "Scalawag Frog", count = 1, oi = 1, map = 117, x = 35.6, y = 81.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11476, title = "A Carver and a Croaker", npc = 24525, npcName = "Zeh'gehn", map = 117, x = 35.6, y = 80.6, f = "e" },
					{ t = "accept", quest = 11479, title = "\"Crowleg\" Dan", npc = 24525, npcName = "Zeh'gehn", map = 117, x = 35.6, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11467, title = "Dead Man's Debt", npc = 24541, npcName = "Taruk", map = 117, x = 36.3, y = 80.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11479, target = "\"Crowleg\" Dan", count = 1, oi = 1, map = 117, x = 35.9, y = 83.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11479, title = "\"Crowleg\" Dan", npc = 24537, npcName = "Handsome Terry", map = 117, x = 35.6, y = 80.2, f = "e" },
					{ t = "accept", quest = 11480, title = "Meet Number Two", npc = 24537, npcName = "Handsome Terry", map = 117, x = 35.6, y = 80.2, f = "e" },
				},
			},
			{
				note = "Go inside the long building to 35.4,79.4",
				goals = {
					{ t = "turnin", quest = 11480, title = "Meet Number Two", npc = 24741, npcName = "Annie Bonn", map = 117, x = 35.4, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 27933, npcName = "Alanya", map = 117, x = 36.1, y = 81.6, f = "e" },
				},
			},
			{
				note = "Go onto the ship and downstairs to 81.8,73.9",
				goals = {
					{ t = "collect", quest = 11567, itemName = "The Ancient Armor of the Kvaldir", count = 1, oi = 1, map = 117, x = 81.8, y = 73.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 80.9, y = 75.1, f = "e" },
				},
			},
			{
				note = "Ride the big lift to the top of the cliff and go to 40.3,60.3",
				goals = {
					{ t = "turnin", quest = 11567, title = "The Ancient Armor of the Kvaldir", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
					{ t = "turnin", quest = 11512, title = "The Frozen Heart of Isuldof", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
					{ t = "turnin", quest = 11530, title = "The Shield of the Aesirites", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
					{ t = "turnin", quest = 11511, title = "The Staff of Storm's Fury", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
					{ t = "accept", quest = 11568, title = "A Return to Resting", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 57.6, y = 77.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 59.2, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 59.7, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 61.9, y = 80.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11568, title = "A Return to Resting", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
					{ t = "accept", quest = 11572, title = "Return to Atuik", npc = 23804, npcName = "Orfus of Kamagua", map = 117, x = 40.3, y = 60.3, f = "e" },
				},
			},
			{
				note = "Go across the Ancient Lift to 25.0,57.0",
				goals = {
					{ t = "turnin", quest = 11572, title = "Return to Atuik", npc = 24755, npcName = "Elder Atuik", map = 117, x = 25.0, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11472, title = "The Way to His Heart...", npc = 24810, npcName = "Anuniaq", map = 117, x = 24.6, y = 58.9, f = "e" },
				},
			},
			{
				note = "Go back across the Ancient Lift and north to 31.3,24.4",
				goals = {
					{ t = "accept", quest = 11296, title = "Rivenwood Captives", npc = 24209, npcName = "Longrunner Skycloud", map = 117, x = 31.3, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11286, title = "The Artifacts of Steel Gate", npc = 24186, npcName = "Sage Mistwalker", map = 117, x = 31.2, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 31.1, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11296, title = "Rivenwood Captives", npc = 24209, npcName = "Longrunner Skycloud", map = 117, x = 31.3, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11286, itemName = "Steel Gate Artifact", count = 10, oi = 1, map = 117, x = 31.8, y = 25.6, f = "e" },
				},
			},
			{
				note = "Go back up the hill to 31.2,24.5",
				goals = {
					{ t = "turnin", quest = 11286, title = "The Artifacts of Steel Gate", npc = 24186, npcName = "Sage Mistwalker", map = 117, x = 31.2, y = 24.5, f = "e" },
					{ t = "accept", quest = 11317, title = "The Cleansing", npc = 24186, npcName = "Sage Mistwalker", map = 117, x = 31.2, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Apothecary Camp", text = "Apothecary Camp", map = 117, x = 26.0, y = 25.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11397, title = "And You Thought Murlocs Smelled Bad!", npc = 24359, npcName = "Apothecary Anastasia", map = 117, x = 26.1, y = 24.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11301, title = "Brains! Brains! Brains!", npc = 24218, npcName = "Apothecary Grick", map = 117, x = 26.0, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11298, title = "What's in That Brew?", npc = 24152, npcName = "Apothecary Malthus", map = 117, x = 26.4, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 33.8, y = 33.7, f = "e" },
				},
			},
			{
				note = "Go down the hill to 33.3,36.5",
				goals = {
					{ t = "collect", quest = 11298, itemName = "Dwarven Keg", count = 5, oi = 1, map = 117, x = 33.3, y = 36.5, f = "e" },
					{ t = "kill", target = "Deranged Explorers all around this area", count = 1, map = 117, x = 33.3, y = 36.5, f = "e" },
					{ t = "collect", quest = 11301, itemName = "Deranged Explorer Brain", count = 12, oi = 1, map = 117, x = 33.3, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11298, title = "What's in That Brew?", npc = 24152, npcName = "Apothecary Malthus", map = 117, x = 26.4, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11301, title = "Brains! Brains! Brains!", npc = 24218, npcName = "Apothecary Grick", map = 117, x = 26.0, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 25.5, y = 20.1, f = "e" },
				},
			},
			{
				note = "Go down the path to 23,21.9",
				goals = {
					{ t = "kill", target = "undead murlocs and other mobs", count = 1, map = 117, x = 23.0, y = 21.9, f = "e" },
					{ t = "kill", target = "undead mobs", count = 1, map = 117, x = 23.0, y = 21.9, f = "e" },
					{ t = "collect", itemName = "a Scourge Device", count = 1, map = 117, x = 23.0, y = 21.9, f = "e" },
					{ t = "accept", quest = 11398, title = "It's a Scourge Device", map = 117, x = 23.0, y = 21.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11422, title = "Trident of the Son", npc = 24544, npcName = "Old Icefin", map = 117, x = 19.8, y = 22.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11422, itemName = "Rotgill's Trident", count = 1, oi = 1, map = 117, x = 23.7, y = 35.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11422, title = "Trident of the Son", npc = 24544, npcName = "Old Icefin", map = 117, x = 19.8, y = 22.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 23.7, y = 21.8, f = "e" },
				},
			},
			{
				note = "Go up the path and south to 26.1,24.7",
				goals = {
					{ t = "turnin", quest = 11397, title = "And You Thought Murlocs Smelled Bad!", npc = 24359, npcName = "Apothecary Anastasia", map = 117, x = 26.1, y = 24.7, f = "e" },
					{ t = "turnin", quest = 11398, title = "It's a Scourge Device", npc = 24359, npcName = "Apothecary Anastasia", map = 117, x = 26.1, y = 24.7, f = "e" },
					{ t = "accept", quest = 11399, title = "Bring Down Those Shields", npc = 24359, npcName = "Apothecary Anastasia", map = 117, x = 26.1, y = 24.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 25.5, y = 20.1, f = "e" },
				},
			},
			{
				note = "Go down the path to 22.9,20.1",
				goals = {
					{ t = "goto", map = 117, x = 22.9, y = 20.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 22.6, y = 17.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 21.8, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 117, x = 23.7, y = 21.8, f = "e" },
				},
			},
			{
				note = "Go up the path and south to 26.1,24.7",
				goals = {
					{ t = "turnin", quest = 11399, title = "Bring Down Those Shields", npc = 24359, npcName = "Apothecary Anastasia", map = 117, x = 26.1, y = 24.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11311, title = "Suppressing the Elements", npc = 24256, npcName = "Wind Tamer Kagan", map = 117, x = 48.9, y = 12.0, f = "e" },
				},
			},
		},
	})
end

