-- TuWoW_Leveling — Guides/Dailies_Alliance_10.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-sholazar-basin-sholazar-basin-pre-quests",
		pack = "guides",
		title = "Sholazar Basin Pre-Quests",
		category = "Dailies",
		folder = "Sholazar Basin",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 119,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12654, title = "The Part-time Hunter", npc = 28568, npcName = "Tamara Wobblesprocket", map = 119, x = 50.5, y = 62.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12654, itemName = "Pitch's Remains", count = 1, oi = 1, map = 119, x = 50.5, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12528, title = "Playing Along", npc = 28095, npcName = "Tracker Gekgek", map = 119, x = 50.5, y = 76.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12528, title = "Playing Along", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "accept", quest = 12529, title = "The Ape Hunter's Slave", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				note = "Talk to Goregek the Gorilla Hunter who is following you",
				goals = {
					{ t = "accept", quest = 12530, title = "Tormenting the Softknuckles", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12529, target = "Hardknuckle Forager", count = 8, oi = 1, map = 119, x = 57.5, y = 73.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12529, target = "Hardknuckle Charger", count = 6, oi = 2, map = 119, x = 61.1, y = 71.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12530, target = "Hardknuckle Matriarch", count = 1, oi = 1, map = 119, x = 66.9, y = 73.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12529, title = "The Ape Hunter's Slave", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "turnin", quest = 12530, title = "Tormenting the Softknuckles", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "accept", quest = 12533, title = "The Wasp Hunter's Apprentice", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12534, title = "The Sapphire Queen", npc = 28138, npcName = "Elder Harkek", map = 119, x = 55.5, y = 69.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12533, target = "Sapphire Hive Wasp", count = 6, oi = 1, map = 119, x = 59.6, y = 75.8, f = "e" },
					{ t = "kill", quest = 12533, target = "Sapphire Hive Drone", count = 9, oi = 2, map = 119, x = 59.6, y = 75.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 59.4, y = 79.1, f = "e" },
				},
			},
			{
				note = "Follow the path down to 57.1,79.3",
				goals = {
					{ t = "collect", quest = 12534, itemName = "Stinger of the Sapphire Queen", count = 1, oi = 1, map = 119, x = 57.1, y = 79.3, f = "e" },
				},
			},
			{
				note = "Go outside to 55.0,69.1",
				goals = {
					{ t = "turnin", quest = 12533, title = "The Wasp Hunter's Apprentice", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "turnin", quest = 12534, title = "The Sapphire Queen", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12532, title = "Flown the Coop!", npc = 28138, npcName = "Elder Harkek", map = 119, x = 55.5, y = 69.7, f = "e" },
				},
			},
			{
				note = "They are all around the village",
				goals = {
					{ t = "collect", quest = 12532, itemName = "Captured Chicken", count = 12, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12532, title = "Flown the Coop!", npc = 28138, npcName = "Elder Harkek", map = 119, x = 55.5, y = 69.7, f = "e" },
					{ t = "accept", quest = 12531, title = "The Underground Menace", npc = 28138, npcName = "Elder Harkek", map = 119, x = 55.5, y = 69.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12535, title = "Mischief in the Making", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12535, itemName = "Skyreach Crystal Cluster", count = 8, oi = 1, map = 119, x = 56.6, y = 84.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12531, itemName = "Claw of Serfex", count = 1, oi = 1, map = 119, x = 49.8, y = 85.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12531, title = "The Underground Menace", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "turnin", quest = 12535, title = "Mischief in the Making", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "accept", quest = 12536, title = "A Rough Ride", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 28298, npcName = "Captive Crocolisk", map = 119, x = 57.3, y = 68.4, f = "e" },
				},
			},
			{
				note = "When you jump off the crocodile:",
				goals = {
					{ t = "turnin", quest = 12536, title = "A Rough Ride", npc = 28668, npcName = "Zepik the Gorloc Hunter", f = "e" },
					{ t = "accept", quest = 12537, title = "Lightning Definitely Strikes Twice", npc = 28668, npcName = "Zepik the Gorloc Hunter", f = "e" },
					{ t = "accept", quest = 12538, title = "The Mist Isn't Listening", npc = 28668, npcName = "Zepik the Gorloc Hunter", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 45.4, y = 37.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 45.5, y = 39.8, f = "e" },
				},
			},
			{
				note = "Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512",
				goals = {
					{ t = "use", item = 38512, itemName = "Zepik's Hunting Horn", f = "e" },
					{ t = "turnin", quest = 12537, title = "Lightning Definitely Strikes Twice", npc = 28216, npcName = "Zepik the Gorloc Hunter", f = "e" },
					{ t = "turnin", quest = 12538, title = "The Mist Isn't Listening", npc = 28216, npcName = "Zepik the Gorloc Hunter", f = "e" },
					{ t = "accept", quest = 12539, title = "Hoofing It", npc = 28216, npcName = "Zepik the Gorloc Hunter", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12539, title = "Hoofing It", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
					{ t = "accept", quest = 12540, title = "Just Following Orders", npc = 28082, npcName = "High-Shaman Rakjak", map = 119, x = 55.0, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 28217, npcName = "Injured Rainspeaker Oracle", map = 119, x = 55.7, y = 64.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12540, title = "Just Following Orders", npc = 28217, npcName = "Injured Rainspeaker Oracle", map = 119, x = 55.7, y = 64.9, f = "e" },
					{ t = "accept", quest = 12570, title = "Fortunate Misunderstandings", npc = 28217, npcName = "Injured Rainspeaker Oracle", map = 119, x = 55.7, y = 64.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12570, title = "Fortunate Misunderstandings", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
					{ t = "accept", quest = 12571, title = "Make the Bad Snake Go Away", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
				},
			},
			{
				note = "Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622",
				goals = {
					{ t = "use", item = 38622, itemName = "Lafoo's Bug Bag", f = "e" },
					{ t = "accept", quest = 12572, title = "Gods like Shiny Things", npc = 28120, npcName = "Lafoo", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12571, target = "Venomtip", count = 1, oi = 2, map = 119, x = 57.5, y = 52.4, f = "e" },
				},
			},
			{
				note = "Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622",
				goals = {
					{ t = "use", item = 38622, itemName = "Lafoo's Bug Bag", map = 119, x = 52.4, y = 53.2, f = "e" },
					{ t = "collect", quest = 12572, itemName = "Shiny Treasures", count = 6, oi = 1, map = 119, x = 52.4, y = 53.2, f = "e" },
					{ t = "kill", quest = 12571, target = "Emperor Cobra", count = 10, oi = 1, map = 119, x = 52.4, y = 53.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12571, title = "Make the Bad Snake Go Away", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
					{ t = "accept", quest = 12573, title = "Making Peace", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
					{ t = "turnin", quest = 12572, title = "Gods like Shiny Things", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 28315, npcName = "Shaman Vekjik", map = 119, x = 51.3, y = 64.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12654, title = "The Part-time Hunter", npc = 28568, npcName = "Tamara Wobblesprocket", map = 119, x = 50.5, y = 62.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12573, title = "Making Peace", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
					{ t = "accept", quest = 12574, title = "Back So Soon?", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12574, title = "Back So Soon?", npc = 28114, npcName = "Mistcaller Soo-gan", map = 119, x = 42.1, y = 38.6, f = "e" },
					{ t = "accept", quest = 12575, title = "The Lost Mistwhisper Treasure", npc = 28114, npcName = "Mistcaller Soo-gan", map = 119, x = 42.1, y = 38.6, f = "e" },
					{ t = "accept", quest = 12576, title = "Forced Hand", npc = 28114, npcName = "Mistcaller Soo-gan", map = 119, x = 42.1, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12576, target = "Frenzyheart Spearbearer", count = 8, oi = 1, map = 119, x = 40.4, y = 26.4, f = "e" },
					{ t = "kill", quest = 12576, target = "Frenzyheart Scavenger", count = 6, oi = 2, map = 119, x = 40.4, y = 26.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12575, target = "Warlord Tartek", count = 1, oi = 1, map = 119, x = 41.3, y = 19.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12575, itemName = "Mistwhisper Treasure", count = 1, oi = 2, map = 119, x = 41.6, y = 19.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12575, title = "The Lost Mistwhisper Treasure", npc = 28114, npcName = "Mistcaller Soo-gan", map = 119, x = 42.1, y = 38.6, f = "e" },
					{ t = "turnin", quest = 12576, title = "Forced Hand", npc = 28114, npcName = "Mistcaller Soo-gan", map = 119, x = 42.1, y = 38.6, f = "e" },
					{ t = "accept", quest = 12577, title = "Home Time!", npc = 28114, npcName = "Mistcaller Soo-gan", map = 119, x = 42.1, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12577, title = "Home Time!", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
					{ t = "accept", quest = 12578, title = "The Angry Gorloc", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 75.3, y = 54.1, f = "e" },
				},
			},
			{
				note = "Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624",
				goals = {
					{ t = "use", item = 38624, itemName = "Moodle's Stress Ball", f = "e" },
					{ t = "turnin", quest = 12578, title = "The Angry Gorloc", npc = 28122, npcName = "Moodle", f = "e" },
					{ t = "accept", quest = 12580, title = "The Mosswalker Savior", npc = 28122, npcName = "Moodle", f = "e" },
					{ t = "accept", quest = 12579, title = "Lifeblood of the Mosswalker Shrine", npc = 28122, npcName = "Moodle", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 28113, npcName = "Mosswalker Victim", map = 119, x = 75.4, y = 52.4, f = "e" },
				},
			},
			{
				note = "Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624",
				goals = {
					{ t = "use", item = 38624, itemName = "Moodle's Stress Ball", f = "e" },
					{ t = "turnin", quest = 12580, title = "The Mosswalker Savior", npc = 28122, npcName = "Moodle", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12579, itemName = "Lifeblood Shard", count = 10, oi = 1, map = 119, x = 68.9, y = 54.6, f = "e" },
				},
			},
			{
				note = "You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624",
				goals = {
					{ t = "use", item = 38624, itemName = "Moodle's Stress Ball", map = 119, x = 54.5, y = 56.6, f = "e" },
					{ t = "turnin", quest = 12579, title = "Lifeblood of the Mosswalker Shrine", npc = 28122, npcName = "Moodle", map = 119, x = 54.5, y = 56.6, f = "e" },
					{ t = "accept", quest = 12581, title = "A Hero's Burden", npc = 28122, npcName = "Moodle", map = 119, x = 54.5, y = 56.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12581, target = "Artruis the Heartless", count = 1, oi = 1, map = 119, x = 70.8, y = 58.7, f = "e" },
					{ t = "turnin", quest = 12581, title = "A Hero's Burden", map = 119, x = 70.8, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12695, title = "Return of the Friendly Dryskin", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.4, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-sholazar-basin-frenzyheart-tribe-dailies",
		pack = "guides",
		title = "Frenzyheart Tribe Dailies",
		category = "Dailies",
		folder = "Sholazar Basin",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 119,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", map = 119, x = 70.8, y = 58.7, f = "e" },
				},
			},
			{
				note = "Follow the path inside the cave up to 72.2,57.3",
				goals = {
					{ t = "accept", quest = 12582, title = "Frenzyheart Champion", npc = 28668, npcName = "Zepik the Gorloc Hunter", f = "e" },
					{ t = "accept", quest = 12692, title = "Return of the Lich Hunter", npc = 28668, npcName = "Zepik the Gorloc Hunter", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12692, title = "Return of the Lich Hunter", npc = 28138, npcName = "Elder Harkek", map = 119, x = 55.5, y = 69.7, f = "e" },
					{ t = "accept", quest = 12702, title = "Chicken Party!", npc = 28138, npcName = "Elder Harkek", map = 119, x = 55.5, y = 69.7, f = "e" },
					{ t = "collect", item = 38619, itemName = "Goregek's Shackles", count = 1, map = 119, x = 55.5, y = 69.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12758, title = "A Hero's Headgear", npc = 29043, npcName = "Rejek", map = 119, x = 55.7, y = 69.5, f = "e" },
					{ t = "accept", quest = 12734, title = "Rejek: First Blood", npc = 29043, npcName = "Rejek", map = 119, x = 55.7, y = 69.5, f = "e" },
					{ t = "accept", quest = 12741, title = "Strength of the Tempest", npc = 29043, npcName = "Rejek", map = 119, x = 55.7, y = 69.5, f = "e" },
					{ t = "accept", quest = 12732, title = "The Heartblood's Strength", npc = 29043, npcName = "Rejek", map = 119, x = 55.7, y = 69.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12703, title = "Kartak's Rampage", npc = 29146, npcName = "Vekgar", map = 119, x = 55.5, y = 68.7, f = "e" },
					{ t = "accept", quest = 12760, title = "Secret Strength of the Frenzyheart", npc = 29146, npcName = "Vekgar", map = 119, x = 55.5, y = 68.7, f = "e" },
					{ t = "accept", quest = 12759, title = "Tools of War", npc = 29146, npcName = "Vekgar", map = 119, x = 55.5, y = 68.7, f = "e" },
				},
			},
			{
				note = "They are all around the village",
				goals = {
					{ t = "collect", quest = 12702, itemName = "Captured Chicken", count = 12, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 39651, itemName = "Venture Co. Explosives", count = 1, map = 119, x = 33.1, y = 47.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12758, itemName = "Stormwatcher's Head", count = 1, oi = 1, map = 119, x = 26.0, y = 35.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 59.7, y = 70.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 59.3, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 43.1, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 39616, itemName = "Essence of the Monsoon", count = 3, map = 119, x = 26.5, y = 35.1, f = "e" },
					{ t = "collect", item = 39643, itemName = "Essence of the Storm", count = 3, map = 119, x = 26.5, y = 35.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 22.4, y = 33.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 39573, itemName = "Matriarch's Heartblood", count = 1, map = 119, x = 59.7, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 39576, itemName = "Suntouched Water", count = 1, map = 119, x = 33.8, y = 52.1, f = "e" },
					{ t = "collect", quest = 12732, itemName = "Suntouched Heartblood", count = 1, oi = 1, map = 119, x = 33.8, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 39265, itemName = "Oracle Blood", count = 1, map = 119, x = 31.6, y = 69.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 23.3, y = 83.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12703, target = "Sparktouched Gorloc", count = 50, oi = 1, map = 119, x = 30.7, y = 78.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 39738, itemName = "Thunderbrew's Hard Ale", count = 1, map = 119, x = 26.8, y = 60.1, f = "e" },
					{ t = "collect", quest = 12760, itemName = "Secret Strength of the Frenzyheart", count = 1, oi = 2, map = 119, x = 26.8, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 30.1, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 39697, itemName = "Spike Bomb", count = 1, map = 119, x = 24.0, y = 83.1, f = "e" },
					{ t = "collect", item = 39695, itemName = "Ensnaring Trap", count = 1, map = 119, x = 24.0, y = 83.1, f = "e" },
					{ t = "collect", item = 39696, itemName = "Volatile Trap", count = 1, map = 119, x = 24.0, y = 83.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 28.4, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12703, title = "Kartak's Rampage", npc = 28106, npcName = "Shaman Jakjek", map = 119, x = 23.4, y = 83.3, f = "e" },
					{ t = "turnin", quest = 12760, title = "Secret Strength of the Frenzyheart", npc = 28106, npcName = "Shaman Jakjek", map = 119, x = 23.4, y = 83.3, f = "e" },
					{ t = "turnin", quest = 12759, title = "Tools of War", npc = 28106, npcName = "Shaman Jakjek", map = 119, x = 23.4, y = 83.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12702, title = "Chicken Party!", npc = 28138, npcName = "Elder Harkek", map = 119, x = 55.5, y = 69.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12758, title = "A Hero's Headgear", npc = 29043, npcName = "Rejek", map = 119, x = 55.7, y = 69.5, f = "e" },
					{ t = "turnin", quest = 12734, title = "Rejek: First Blood", npc = 29043, npcName = "Rejek", map = 119, x = 55.7, y = 69.5, f = "e" },
					{ t = "turnin", quest = 12741, title = "Strength of the Tempest", npc = 29043, npcName = "Rejek", map = 119, x = 55.7, y = 69.5, f = "e" },
					{ t = "turnin", quest = 12732, title = "The Heartblood's Strength", npc = 29043, npcName = "Rejek", map = 119, x = 55.7, y = 69.5, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-sholazar-basin-the-oracles-dailies",
		pack = "guides",
		title = "The Oracles Dailies",
		category = "Dailies",
		folder = "Sholazar Basin",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 119,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", map = 119, x = 70.8, y = 58.7, f = "e" },
				},
			},
			{
				note = "Follow the path inside the cave up to 72.2,57.3",
				goals = {
					{ t = "accept", quest = 12689, title = "Hand of the Oracles", npc = 28667, npcName = "Jaloot", f = "e" },
					{ t = "accept", quest = 12695, title = "Return of the Friendly Dryskin", npc = 28667, npcName = "Jaloot", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12695, title = "Return of the Friendly Dryskin", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.4, f = "e" },
					{ t = "accept", quest = 12704, title = "Appeasing the Great Rain Stone", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.4, f = "e" },
					{ t = "collect", item = 38622, itemName = "Lafoo's Bug Bag", count = 1, map = 119, x = 54.6, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12735, title = "A Cleansing Song", npc = 29006, npcName = "Oracle Soo-nee", map = 119, x = 53.3, y = 56.5, f = "e" },
					{ t = "accept", quest = 12737, title = "Song of Fecundity", npc = 29006, npcName = "Oracle Soo-nee", map = 119, x = 53.3, y = 56.5, f = "e" },
					{ t = "accept", quest = 12736, title = "Song of Reflection", npc = 29006, npcName = "Oracle Soo-nee", map = 119, x = 53.3, y = 56.5, f = "e" },
					{ t = "accept", quest = 12726, title = "Song of Wind and Water", npc = 29006, npcName = "Oracle Soo-nee", map = 119, x = 53.3, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12761, title = "Mastery of the Crystals", npc = 29149, npcName = "Oracle Soo-dow", map = 119, x = 54.2, y = 53.8, f = "e" },
					{ t = "accept", quest = 12762, title = "Power of the Great Ones", npc = 29149, npcName = "Oracle Soo-dow", map = 119, x = 54.2, y = 53.8, f = "e" },
					{ t = "accept", quest = 12705, title = "Will of the Titans", npc = 29149, npcName = "Oracle Soo-dow", map = 119, x = 54.2, y = 53.8, f = "e" },
				},
			},
			{
				note = "Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622",
				goals = {
					{ t = "use", item = 38622, itemName = "Lafoo's Bug Bag", map = 119, x = 52.4, y = 53.2, f = "e" },
					{ t = "collect", quest = 12704, itemName = "Shiny Treasures", count = 6, oi = 1, map = 119, x = 52.4, y = 53.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12735, target = "Spirit of Atha", count = 1, oi = 1, map = 119, x = 42.7, y = 42.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12735, target = "Spirit of Ha-Khalan", count = 1, oi = 2, map = 119, x = 49.4, y = 62.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12735, target = "Spirit of Koosu", count = 1, oi = 3, map = 119, x = 48.8, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 26.2, y = 37.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 50.0, y = 37.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 33.6, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 36.4, y = 74.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 53.3, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 26.2, y = 37.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 39694, itemName = "Crystal of the Violent Storm", count = 1, map = 119, x = 33.0, y = 75.7, f = "e" },
					{ t = "collect", item = 39693, itemName = "Crystal of Unstable Energy", count = 1, map = 119, x = 33.0, y = 75.7, f = "e" },
					{ t = "collect", item = 39689, itemName = "Crystal of the Frozen Grip", count = 1, map = 119, x = 33.0, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 22.2, y = 78.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12762, itemName = "Energized Polished Crystal", count = 1, oi = 2, map = 119, x = 65.5, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 22.2, y = 78.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 39266, itemName = "Tainted Crystal", count = 1, map = 119, x = 22.9, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 119, x = 33.7, y = 75.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12705, target = "Frenzyheart Attacker", count = 50, oi = 1, map = 119, x = 22.2, y = 78.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12761, title = "Mastery of the Crystals", npc = 28107, npcName = "Lightningcaller Soo-met", map = 119, x = 33.5, y = 74.8, f = "e" },
					{ t = "turnin", quest = 12762, title = "Power of the Great Ones", npc = 28107, npcName = "Lightningcaller Soo-met", map = 119, x = 33.5, y = 74.8, f = "e" },
					{ t = "turnin", quest = 12705, title = "Will of the Titans", npc = 28107, npcName = "Lightningcaller Soo-met", map = 119, x = 33.5, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12735, title = "A Cleansing Song", npc = 29006, npcName = "Oracle Soo-nee", map = 119, x = 53.3, y = 56.5, f = "e" },
					{ t = "turnin", quest = 12737, title = "Song of Fecundity", npc = 29006, npcName = "Oracle Soo-nee", map = 119, x = 53.3, y = 56.5, f = "e" },
					{ t = "turnin", quest = 12736, title = "Song of Reflection", npc = 29006, npcName = "Oracle Soo-nee", map = 119, x = 53.3, y = 56.5, f = "e" },
					{ t = "turnin", quest = 12726, title = "Song of Wind and Water", npc = 29006, npcName = "Oracle Soo-nee", map = 119, x = 53.3, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12704, title = "Appeasing the Great Rain Stone", npc = 28027, npcName = "High-Oracle Soo-say", map = 119, x = 54.6, y = 56.4, f = "e" },
				},
			},
		},
	})
end

