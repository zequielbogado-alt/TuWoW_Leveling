-- TuWoW_Leveling — Guides/Leveling_Alliance_44.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-72-74-part-2",
		pack = "guides",
		title = "Northrend (72-74) (Parte 2/5)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-72-74-part-3",
		author = "TuWoW & Zygor",
		minLevel = 72,
		maxLevel = 74,
		version = 1,
		steps = {
			{
				note = "Run to the other end of the ship deck to the big cannon",
				goals = {
					{ t = "collect", quest = 11529, itemName = "Sorlof's Booty", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11529, title = "Sorlof's Booty", npc = 24910, npcName = "Captain Ellis", x = 37.2, y = 74.8, f = "e" },
					{ t = "accept", quest = 11530, title = "The Shield of the Aesirites", npc = 24910, npcName = "Captain Ellis", x = 37.2, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Rabid Brown Bears", count = 1, x = 34.1, y = 76.9, f = "e" },
					{ t = "collect", quest = 11455, itemName = "Bear Musk", count = 4, oi = 1, x = 34.1, y = 76.9, f = "e" },
				},
			},
			{
				note = "Go down the hill to 33.5,75.3 Go into the cave to 32.3,78.7",
				goals = {
					{ t = "collect", quest = 11512, itemName = "The Frozen Heart of Isuldof", count = 1, oi = 1, x = 32.3, y = 78.7, f = "e" },
				},
			},
			{
				note = "Leave the cave and go to 33.2,63.9",
				goals = {
					{ t = "kill", quest = 11458, target = "Crazed Northsea Slaver", count = 8, oi = 1, x = 33.2, y = 63.9, f = "e" },
				},
			},
			{
				note = "Go onto the ship to 35.3,64.8",
				goals = {
					{ t = "collect", quest = 11511, itemName = "The Staff of Storm's Fury", count = 1, oi = 1, x = 35.3, y = 64.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 29.0, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11467, itemName = "Black Conrad's Treasure", count = 1, oi = 1, x = 32.7, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11458, title = "Avenge Iskaal", npc = 24755, npcName = "Elder Atuik", x = 25.0, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11472, title = "The Way to His Heart...", npc = 24810, npcName = "Anuniaq", x = 24.6, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Great Reef Sharks", count = 1, x = 28.9, y = 74.8, f = "e" },
					{ t = "collect", quest = 11472, item = 34127, itemName = "Tasty Reef Fish", count = 10, x = 28.9, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 31.0, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11455, title = "The Fragrance of Money", npc = 24537, npcName = "Handsome Terry", x = 35.6, y = 80.2, f = "e" },
					{ t = "accept", quest = 11473, title = "A Traitor Among Us", npc = 24537, npcName = "Handsome Terry", x = 35.6, y = 80.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11473, title = "A Traitor Among Us", npc = 24525, npcName = "Zeh'gehn", x = 35.6, y = 80.6, f = "e" },
					{ t = "accept", quest = 11459, title = "Zeh'gehn Sez", npc = 24525, npcName = "Zeh'gehn", x = 35.6, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11459, title = "Zeh'gehn Sez", npc = 24537, npcName = "Handsome Terry", x = 35.6, y = 80.2, f = "e" },
					{ t = "accept", quest = 11476, title = "A Carver and a Croaker", npc = 24537, npcName = "Handsome Terry", x = 35.6, y = 80.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 24539, npcName = "\"Silvermoon\" Harry", itemName = "Shiny Knife", count = 1, x = 35.1, y = 80.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11476, itemName = "Scalawag Frog", count = 1, oi = 1, x = 35.6, y = 81.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11476, title = "A Carver and a Croaker", npc = 24525, npcName = "Zeh'gehn", x = 35.6, y = 80.6, f = "e" },
					{ t = "accept", quest = 11479, title = "\"Crowleg\" Dan", npc = 24525, npcName = "Zeh'gehn", x = 35.6, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11467, title = "Dead Man's Debt", npc = 24541, npcName = "Taruk", x = 36.3, y = 80.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11479, target = "\"Crowleg\" Dan", count = 1, oi = 1, x = 35.9, y = 83.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11479, title = "\"Crowleg\" Dan", npc = 24537, npcName = "Handsome Terry", x = 35.6, y = 80.2, f = "e" },
					{ t = "accept", quest = 11480, title = "Meet Number Two", npc = 24537, npcName = "Handsome Terry", x = 35.6, y = 80.2, f = "e" },
				},
			},
			{
				note = "Go inside the long building to 35.4,79.4",
				goals = {
					{ t = "turnin", quest = 11480, title = "Meet Number Two", npc = 24741, npcName = "Annie Bonn", x = 35.4, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 27933, npcName = "Alanya", x = 36.1, y = 81.6, f = "e" },
				},
			},
			{
				note = "Go onto the ship and downstairs to 81.8,73.9",
				goals = {
					{ t = "collect", quest = 11567, itemName = "The Ancient Armor of the Kvaldir", count = 1, oi = 1, x = 81.8, y = 73.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 80.9, y = 75.1, f = "e" },
				},
			},
			{
				note = "Ride the big lift to the top of the cliff and go to 40.3,60.3",
				goals = {
					{ t = "turnin", quest = 11567, title = "The Ancient Armor of the Kvaldir", npc = 23804, npcName = "Orfus of Kamagua", x = 40.3, y = 60.3, f = "e" },
					{ t = "turnin", quest = 11512, title = "The Frozen Heart of Isuldof", npc = 23804, npcName = "Orfus of Kamagua", x = 40.3, y = 60.3, f = "e" },
					{ t = "turnin", quest = 11530, title = "The Shield of the Aesirites", npc = 23804, npcName = "Orfus of Kamagua", x = 40.3, y = 60.3, f = "e" },
					{ t = "turnin", quest = 11511, title = "The Staff of Storm's Fury", npc = 23804, npcName = "Orfus of Kamagua", x = 40.3, y = 60.3, f = "e" },
					{ t = "accept", quest = 11568, title = "A Return to Resting", npc = 23804, npcName = "Orfus of Kamagua", x = 40.3, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 57.6, y = 77.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 59.2, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 59.8, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 62.0, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11568, title = "A Return to Resting", npc = 23804, npcName = "Orfus of Kamagua", x = 40.3, y = 60.3, f = "e" },
					{ t = "accept", quest = 11572, title = "Return to Atuik", npc = 23804, npcName = "Orfus of Kamagua", x = 40.3, y = 60.3, f = "e" },
				},
			},
			{
				note = "Go across the Ancient Lift to 25.0,57.0",
				goals = {
					{ t = "turnin", quest = 11572, title = "Return to Atuik", npc = 24755, npcName = "Elder Atuik", x = 25.0, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11472, title = "The Way to His Heart...", npc = 24810, npcName = "Anuniaq", x = 24.6, y = 58.9, f = "e" },
				},
			},
			{
				note = "Go across the Ancient Lift to 37.4,51.9",
				goals = {
					{ t = "accept", quest = 11182, title = "Root Causes", npc = 23870, npcName = "Ember Clutch Ancient", x = 37.4, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11182, target = "Dragonflayer Handler", count = 5, oi = 1, x = 40.6, y = 51.5, f = "e" },
				},
			},
			{
				note = "Go inside the small house to 41.5,52.3",
				goals = {
					{ t = "kill", quest = 11182, npc = 23940, target = "Skeld Drakeson", count = 1, oi = 2, x = 41.5, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11182, title = "Root Causes", npc = 23870, npcName = "Ember Clutch Ancient", x = 37.4, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11190, title = "One Size Does Not Fit All", npc = 23770, npcName = "Cannoneer Ely", x = 34.0, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Westguard Keep", x = 31.3, y = 44.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Westguard Keep", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11155, title = "Shoveltusk Soup Again?", npc = 23773, npcName = "Chef Kettleblack", x = 31.2, y = 40.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11153, title = "Break the Blockade", npc = 23895, npcName = "Bombardier Petrov", x = 29.0, y = 41.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11153, target = "Blockade Pirate", count = 25, oi = 1, x = 28.1, y = 42.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11153, title = "Break the Blockade", npc = 23895, npcName = "Bombardier Petrov", x = 29.0, y = 41.9, f = "e" },
				},
			},
			{
				note = "Go inside the fort to 28.8,44.1",
				goals = {
					{ t = "turnin", quest = 11291, title = "To Westguard Keep!", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
					{ t = "accept", quest = 11157, title = "The Clutches of Evil", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11190, itemName = "Westguard Cannonball", count = 10, oi = 1, x = 35.6, y = 40.6, f = "e" },
					{ t = "kill", target = "Shoveltusks", count = 1, x = 35.6, y = 40.6, f = "e" },
					{ t = "collect", quest = 11155, itemName = "Shoveltusk Meat", count = 6, oi = 1, x = 35.6, y = 40.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11157, npc = 23688, target = "Proto-Whelp", count = 15, oi = 2, x = 38.3, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11190, title = "One Size Does Not Fit All", npc = 23770, npcName = "Cannoneer Ely", x = 34.0, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11155, title = "Shoveltusk Soup Again?", npc = 23773, npcName = "Chef Kettleblack", x = 31.2, y = 40.8, f = "e" },
				},
			},
			{
				note = "Go inside the fort to 28.8,44.1",
				goals = {
					{ t = "turnin", quest = 11157, title = "The Clutches of Evil", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
					{ t = "accept", quest = 11187, title = "Mage-Lieutenant Malister", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11187, title = "Mage-Lieutenant Malister", npc = 23888, npcName = "Mage-Lieutenant Malister", x = 28.9, y = 44.2, f = "e" },
					{ t = "accept", quest = 11188, title = "Two Wrongs...", npc = 23888, npcName = "Mage-Lieutenant Malister", x = 28.9, y = 44.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11188, npc = 23689, target = "Proto-Drake", count = 3, oi = 1, x = 36.1, y = 47.6, f = "e" },
				},
			},
			{
				note = "Go inside the fort to 28.9,44.2",
				goals = {
					{ t = "turnin", quest = 11188, title = "Two Wrongs...", npc = 23888, npcName = "Mage-Lieutenant Malister", x = 28.9, y = 44.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11199, title = "Report to Scout Knowles", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11218, title = "Danger! Explosives!", npc = 23976, npcName = "Sapper Steelring", x = 29.1, y = 41.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11224, title = "Send Them Packing", npc = 23978, npcName = "Explorer Abigail", x = 31.6, y = 41.5, f = "e" },
				},
			},
			{
				note = "The path down into the canyon starts here,0.5|noway|c",
				goals = {
					{ t = "goto", x = 33.8, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11218, itemName = "Whisper Gulch Ore Fragment", count = 6, oi = 1, x = 33.5, y = 36.1, f = "e" },
					{ t = "collect", quest = 11218, itemName = "Whisper Gulch Gem", count = 18, oi = 2, x = 33.5, y = 36.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11224, title = "Send Them Packing", npc = 23978, npcName = "Explorer Abigail", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11218, title = "Danger! Explosives!", npc = 23976, npcName = "Sapper Steelring", x = 29.1, y = 41.8, f = "e" },
					{ t = "accept", quest = 11240, title = "Leader of the Deranged", npc = 23976, npcName = "Sapper Steelring", x = 29.1, y = 41.8, f = "e" },
				},
			},
			{
				note = "The path down into the canyon starts here,0.5|noway|c",
				goals = {
					{ t = "goto", x = 33.8, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11240, npc = 24048, target = "Squeeg Idolhunter", count = 1, oi = 1, x = 31.6, y = 34.8, f = "e" },
				},
			},
			{
				note = "Go out of the canyon to 29,41.9",
				goals = {
					{ t = "turnin", quest = 11240, title = "Leader of the Deranged", npc = 23976, npcName = "Sapper Steelring", x = 29.0, y = 41.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11175, title = "My Daughter", npc = 23831, npcName = "Old Man Stonemantle", x = 31.7, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11199, title = "Report to Scout Knowles", npc = 23906, npcName = "Scout Knowles", x = 44.5, y = 57.6, f = "e" },
					{ t = "accept", quest = 11202, title = "Mission: Eternal Flame", npc = 23906, npcName = "Scout Knowles", x = 44.5, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 48.4, y = 55.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 48.2, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 51.2, y = 50.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 51.5, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11202, title = "Mission: Eternal Flame", npc = 23906, npcName = "Scout Knowles", x = 44.5, y = 57.6, f = "e" },
					{ t = "accept", quest = 11327, title = "Mission: Package Retrieval", npc = 23906, npcName = "Scout Knowles", x = 44.5, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 47.8, y = 58.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11327, itemName = "Apothecary's Package", count = 1, oi = 1, x = 50.8, y = 53.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11327, title = "Mission: Package Retrieval", npc = 23906, npcName = "Scout Knowles", x = 44.5, y = 57.6, f = "e" },
					{ t = "accept", quest = 11328, title = "Mission: Forsaken Intel", npc = 23906, npcName = "Scout Knowles", x = 44.5, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11328, title = "Mission: Forsaken Intel", npc = 24283, npcName = "Peppy Wrongnozzle", x = 30.8, y = 41.6, f = "e" },
					{ t = "accept", quest = 11330, title = "Absholutely... Thish Will Work!", npc = 24283, npcName = "Peppy Wrongnozzle", x = 30.8, y = 41.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 29.3, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 29.5, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11330, title = "Absholutely... Thish Will Work!", npc = 24283, npcName = "Peppy Wrongnozzle", x = 30.8, y = 41.6, f = "e" },
					{ t = "accept", quest = 11331, title = "You Tell Him ...Hic!", npc = 24283, npcName = "Peppy Wrongnozzle", x = 30.8, y = 41.6, f = "e" },
				},
			},
			{
				note = "Go into the fort to 28.8,44.1",
				goals = {
					{ t = "turnin", quest = 11331, title = "You Tell Him ...Hic!", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
					{ t = "accept", quest = 11332, title = "Mission: Plague This!", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 23859, npcName = "Greer Orehammer", x = 31.3, y = 44.0, f = "e" },
				},
			},
			{
				note = "Go into the fort to 28.8,44.1",
				goals = {
					{ t = "turnin", quest = 11332, title = "Mission: Plague This!", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
					{ t = "accept", quest = 11248, title = "Operation: Skornful Wrath", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11406, title = "Everything Must Be Ready", npc = 24494, npcName = "Quartermaster Brevin", x = 30.6, y = 42.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11175, title = "My Daughter", npc = 23891, npcName = "Overseer Irena Stonemantle", x = 30.2, y = 28.7, f = "e" },
					{ t = "accept", quest = 11176, title = "See to the Operations", npc = 23891, npcName = "Overseer Irena Stonemantle", x = 30.2, y = 28.7, f = "e" },
					{ t = "accept", quest = 11393, title = "Where is Explorer Jaren?", npc = 23891, npcName = "Overseer Irena Stonemantle", x = 30.2, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11154, title = "Scare the Guano Out of Them!", npc = 24227, npcName = "Engineer Feknut", x = 30.2, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11322, title = "The Cleansing", npc = 24273, npcName = "Watcher Moonleaf", x = 30.2, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11176, title = "See to the Operations", npc = 24399, npcName = "Steel Gate Chief Archaeologist", x = 30.8, y = 28.6, f = "e" },
					{ t = "accept", quest = 11390, title = "I've Got a Flying Machine!", npc = 24399, npcName = "Steel Gate Chief Archaeologist", x = 30.8, y = 28.6, f = "e" },
				},
			},
		},
	})
end

