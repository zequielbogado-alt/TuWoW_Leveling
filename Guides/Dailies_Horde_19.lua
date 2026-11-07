-- TuWoW_Leveling — Guides/Dailies_Horde_19.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-the-storm-peaks-the-storm-peaks-full-zone-quest-path-includes-pre-quests",
		pack = "guides",
		title = "The Storm Peaks Full Zone Quest Path (Includes Pre-Quests) (Parte 1/3)",
		category = "Dailies",
		folder = "The Storm Peaks",
		faction = "Horde",
		next = "zygor/dailies/h-dai-the-storm-peaks-the-storm-peaks-full-zone-quest-path-includes-pre-quests-part-2",
		author = "TuWoW & Zygor",
		zone = 120,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 12853, title = "Luxurious Getaway!", npc = 29431, npcName = "Jeer Sparksocket", map = 120, x = 41.0, y = 86.4, f = "e" },
					{ t = "accept", quest = 12818, title = "Clean Up", npc = 29431, npcName = "Jeer Sparksocket", map = 120, x = 41.0, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "K3", text = "K3", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12843, title = "They Took Our Men!", npc = 29473, npcName = "Gretchen Fizzlespark", map = 120, x = 41.1, y = 86.1, f = "e" },
					{ t = "accept", quest = 12844, title = "Equipment Recovery", npc = 29473, npcName = "Gretchen Fizzlespark", map = 120, x = 41.1, y = 86.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12827, title = "Reclaimed Rations", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
					{ t = "accept", quest = 12836, title = "Expression of Gratitude", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "K3", text = "K3", map = 120, x = 40.8, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12818, itemName = "Charred Wreckage", count = 10, oi = 1, map = 120, x = 39.8, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Savage Hill gnolls", count = 1, map = 120, x = 35.0, y = 83.8, f = "e" },
					{ t = "collect", quest = 12827, itemName = "Dried Gnoll Rations", count = 16, oi = 1, map = 120, x = 35.0, y = 83.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12836, target = "Gnarlhide", count = 1, oi = 1, map = 120, x = 30.3, y = 85.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12818, title = "Clean Up", npc = 29431, npcName = "Jeer Sparksocket", map = 120, x = 41.0, y = 86.4, f = "e" },
					{ t = "accept", quest = 12819, title = "Just Around the Corner", npc = 29431, npcName = "Jeer Sparksocket", map = 120, x = 41.0, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12827, title = "Reclaimed Rations", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
					{ t = "turnin", quest = 12836, title = "Expression of Gratitude", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
					{ t = "accept", quest = 12828, title = "Ample Inspiration", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12819, itemName = "Sparksocket's Tools", count = 1, oi = 1, map = 120, x = 35.1, y = 87.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12819, title = "Just Around the Corner", npc = 29431, npcName = "Jeer Sparksocket", map = 120, x = 41.0, y = 86.4, f = "e" },
					{ t = "accept", quest = 12826, title = "Slightly Unstable", npc = 29431, npcName = "Jeer Sparksocket", map = 120, x = 41.0, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12826, title = "Slightly Unstable", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
					{ t = "accept", quest = 12820, title = "A Delicate Touch", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12820, target = "Garm Attackers", count = 12, oi = 1, map = 120, x = 43.1, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12829, title = "Moving In", npc = 29430, npcName = "Tore Rumblewrench", map = 120, x = 41.7, y = 80.0, f = "e" },
					{ t = "accept", quest = 12830, title = "Ore Repossession", npc = 29430, npcName = "Tore Rumblewrench", map = 120, x = 41.7, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12828, item = 40686, itemName = "U.D.E.D.", count = 1, map = 120, x = 41.7, y = 80.0, f = "e" },
				},
			},
			{
				note = "HURRY HURRY to 43.9,79.0",
				goals = {
					{ t = "collect", quest = 12828, itemName = "Hearty Mammoth Meat", count = 8, oi = 1, map = 120, x = 43.9, y = 79.0, f = "e" },
				},
			},
			{
				note = "Go into the cave to 40.4,77.8",
				goals = {
					{ t = "kill", quest = 12829, target = "Crystalweb Spiders", count = 12, oi = 1, map = 120, x = 40.4, y = 77.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12831, title = "Only Partly Forgotten", npc = 29434, npcName = "Injured Goblin Miner", map = 120, x = 41.5, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Snowblind Diggers", count = 1, map = 120, x = 44.0, y = 75.9, f = "e" },
					{ t = "collect", quest = 12830, itemName = "Impure Saronite Ore", count = 5, oi = 1, map = 120, x = 44.0, y = 75.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Icetip Crawlers", count = 1, map = 120, x = 47.1, y = 72.3, f = "e" },
					{ t = "collect", quest = 12831, itemName = "Icetip Venom Sac", count = 1, oi = 1, map = 120, x = 47.1, y = 72.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12831, title = "Only Partly Forgotten", npc = 29434, npcName = "Injured Goblin Miner", map = 120, x = 43.5, y = 75.2, f = "e" },
					{ t = "accept", quest = 12832, title = "Bitter Departure", npc = 29434, npcName = "Injured Goblin Miner", map = 120, x = 43.5, y = 75.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 29434, npcName = "Injured Goblin Miner", map = 120, x = 43.5, y = 75.2, f = "e" },
				},
			},
			{
				note = "Fly up to 39.8,73.3",
				goals = {
					{ t = "kill", target = "Sifreldar Storm Maidens", count = 1, map = 120, x = 39.8, y = 73.3, f = "e" },
					{ t = "collect", quest = 12843, item = 40641, itemName = "Cold Iron Key", count = 5, map = 120, x = 39.8, y = 73.3, f = "e" },
					{ t = "collect", quest = 12844, itemName = "K3 Equipment", count = 8, oi = 1, map = 120, x = 39.8, y = 73.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12829, title = "Moving In", npc = 29430, npcName = "Tore Rumblewrench", map = 120, x = 41.7, y = 80.0, f = "e" },
					{ t = "turnin", quest = 12830, title = "Ore Repossession", npc = 29430, npcName = "Tore Rumblewrench", map = 120, x = 41.7, y = 80.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12820, title = "A Delicate Touch", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
					{ t = "turnin", quest = 12828, title = "Ample Inspiration", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
					{ t = "turnin", quest = 12832, title = "Bitter Departure", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
					{ t = "accept", quest = 12821, title = "Opening the Backdoor", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12843, title = "They Took Our Men!", npc = 29473, npcName = "Gretchen Fizzlespark", map = 120, x = 41.1, y = 86.1, f = "e" },
					{ t = "accept", quest = 12846, title = "Leave No Goblin Behind", npc = 29473, npcName = "Gretchen Fizzlespark", map = 120, x = 41.1, y = 86.1, f = "e" },
					{ t = "turnin", quest = 12844, title = "Equipment Recovery", npc = 29473, npcName = "Gretchen Fizzlespark", map = 120, x = 41.1, y = 86.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12821, itemName = "Transporter Power Cell", count = 1, oi = 2, map = 120, x = 45.1, y = 82.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 50.7, y = 81.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12821, title = "Opening the Backdoor", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
					{ t = "accept", quest = 12822, title = "Know No Fear", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12823, title = "A Flawless Plan", npc = 29432, npcName = "Gino", map = 120, x = 50.0, y = 81.8, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 50.5,77.8",
				goals = {
					{ t = "kill", quest = 12823, target = "Tormar Frostgut", count = 1, oi = 2, map = 120, x = 50.5, y = 77.8, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 48.1,81.9",
				goals = {
					{ t = "kill", quest = 12822, target = "Garm Watcher", count = 6, oi = 1, map = 120, x = 48.1, y = 81.9, f = "e" },
					{ t = "kill", quest = 12822, target = "Snowblind Devotee", count = 8, oi = 2, map = 120, x = 48.1, y = 81.9, f = "e" },
				},
			},
			{
				note = "Go outside and go to 50.0,81.8",
				goals = {
					{ t = "turnin", quest = 12823, title = "A Flawless Plan", npc = 29432, npcName = "Gino", map = 120, x = 50.0, y = 81.8, f = "e" },
					{ t = "accept", quest = 12824, title = "Demolitionist Extraordinaire", npc = 29432, npcName = "Gino", map = 120, x = 50.0, y = 81.8, f = "e" },
				},
			},
			{
				note = "Go outside and fly up into the cave to 42.8,68.9",
				goals = {
					{ t = "turnin", quest = 12846, title = "Leave No Goblin Behind", npc = 29481, npcName = "Lok'lira the Crone", map = 120, x = 42.8, y = 68.9, f = "e" },
					{ t = "accept", quest = 12841, title = "The Crone's Bargain", npc = 29481, npcName = "Lok'lira the Crone", map = 120, x = 42.8, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12841, itemName = "Runes of the Yrkvinn", count = 1, oi = 1, map = 120, x = 44.2, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12841, title = "The Crone's Bargain", npc = 29481, npcName = "Lok'lira the Crone", map = 120, x = 42.8, y = 68.9, f = "e" },
					{ t = "accept", quest = 12905, title = "Mildred the Cruel", npc = 29481, npcName = "Lok'lira the Crone", map = 120, x = 42.8, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12905, title = "Mildred the Cruel", npc = 29885, npcName = "Mildred the Cruel", map = 120, x = 44.4, y = 68.9, f = "e" },
					{ t = "accept", quest = 12906, title = "Discipline", npc = 29885, npcName = "Mildred the Cruel", map = 120, x = 44.4, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 44.8, y = 70.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12906, title = "Discipline", npc = 29885, npcName = "Mildred the Cruel", map = 120, x = 44.4, y = 68.9, f = "e" },
					{ t = "accept", quest = 12907, title = "Examples to be Made", npc = 29885, npcName = "Mildred the Cruel", map = 120, x = 44.4, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12907, target = "Garhal", count = 1, oi = 1, map = 120, x = 45.4, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12907, title = "Examples to be Made", npc = 29885, npcName = "Mildred the Cruel", map = 120, x = 44.4, y = 68.9, f = "e" },
					{ t = "accept", quest = 12908, title = "A Certain Prisoner", npc = 29885, npcName = "Mildred the Cruel", map = 120, x = 44.4, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12908, title = "A Certain Prisoner", npc = 29481, npcName = "Lok'lira the Crone", map = 120, x = 42.8, y = 68.9, f = "e" },
					{ t = "accept", quest = 12921, title = "A Change of Scenery", npc = 29481, npcName = "Lok'lira the Crone", map = 120, x = 42.8, y = 68.9, f = "e" },
				},
			},
			{
				note = "Follow the path in the mine east out to the other side to 47.5,69.1",
				goals = {
					{ t = "turnin", quest = 12921, title = "A Change of Scenery", npc = 29975, npcName = "Lok'lira the Crone", map = 120, x = 47.5, y = 69.1, f = "e" },
					{ t = "accept", quest = 12969, title = "Is That Your Goblin?", npc = 29975, npcName = "Lok'lira the Crone", map = 120, x = 47.5, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12969, target = "Agnetta Tyrsdottar", count = 1, oi = 1, map = 120, x = 48.2, y = 69.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12969, title = "Is That Your Goblin?", npc = 29975, npcName = "Lok'lira the Crone", map = 120, x = 47.5, y = 69.1, f = "e" },
					{ t = "accept", quest = 12970, title = "The Hyldsmeet", npc = 29975, npcName = "Lok'lira the Crone", map = 120, x = 47.5, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 29975, npcName = "Lok'lira the Crone", map = 120, x = 47.5, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12970, title = "The Hyldsmeet", npc = 29975, npcName = "Lok'lira the Crone", map = 120, x = 47.5, y = 69.1, f = "e" },
					{ t = "accept", quest = 12971, title = "Taking on All Challengers", npc = 29975, npcName = "Lok'lira the Crone", map = 120, x = 47.5, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12971, target = "Victorious Challenger", count = 6, oi = 1, map = 120, x = 51.0, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12971, title = "Taking on All Challengers", npc = 29975, npcName = "Lok'lira the Crone", map = 120, x = 47.5, y = 69.1, f = "e" },
					{ t = "accept", quest = 12972, title = "You'll Need a Bear", npc = 29975, npcName = "Lok'lira the Crone", map = 120, x = 47.5, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12942, title = "Off With Their Black Wings", npc = 29997, npcName = "Iva the Vengeful", map = 120, x = 48.4, y = 72.1, f = "e" },
					{ t = "accept", quest = 12968, title = "Yulda's Folly", npc = 29997, npcName = "Iva the Vengeful", map = 120, x = 48.4, y = 72.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12925, title = "Aberrations", npc = 30041, npcName = "Thyra Kvinnshal", map = 120, x = 48.4, y = 72.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12972, title = "You'll Need a Bear", npc = 29592, npcName = "Brijana", map = 120, x = 53.1, y = 65.7, f = "e" },
					{ t = "accept", quest = 12851, title = "Going Bearback", npc = 29592, npcName = "Brijana", map = 120, x = 53.1, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 53.1, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12851, title = "Going Bearback", npc = 29592, npcName = "Brijana", map = 120, x = 53.1, y = 65.7, f = "e" },
					{ t = "accept", quest = 12856, title = "Cold Hearted", npc = 29592, npcName = "Brijana", map = 120, x = 53.1, y = 65.7, f = "e" },
				},
			},
			{
				note = "Fly to 63.9,62.5",
				goals = {
					{ t = "goto", map = 120, x = 63.9, y = 62.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12856, title = "Cold Hearted", npc = 29592, npcName = "Brijana", map = 120, x = 53.1, y = 65.7, f = "e" },
					{ t = "accept", quest = 13063, title = "Deemed Worthy", npc = 29592, npcName = "Brijana", map = 120, x = 53.1, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13063, title = "Deemed Worthy", npc = 29839, npcName = "Astrid Bjornrittar", map = 120, x = 49.7, y = 71.8, f = "e" },
					{ t = "accept", quest = 12900, title = "Making a Harness", npc = 29839, npcName = "Astrid Bjornrittar", map = 120, x = 49.7, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Icemane Yetis", count = 1, map = 120, x = 47.9, y = 74.7, f = "e" },
					{ t = "collect", quest = 12900, itemName = "Icemane Yeti Hide", count = 3, oi = 1, map = 120, x = 47.9, y = 74.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12900, title = "Making a Harness", npc = 29839, npcName = "Astrid Bjornrittar", map = 120, x = 49.7, y = 71.8, f = "e" },
					{ t = "accept", quest = 12983, title = "The Last of Her Kind", npc = 29839, npcName = "Astrid Bjornrittar", map = 120, x = 49.7, y = 71.8, f = "e" },
					{ t = "accept", quest = 12989, title = "The Slithering Darkness", npc = 29839, npcName = "Astrid Bjornrittar", map = 120, x = 49.7, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 55.8, y = 63.9, f = "e" },
				},
			},
			{
				note = "Follow the path in the cave to 54.8,60.4",
				goals = {
					{ t = "goto", map = 120, x = 54.8, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12983, title = "The Last of Her Kind", npc = 29839, npcName = "Astrid Bjornrittar", map = 120, x = 49.7, y = 71.8, f = "e" },
					{ t = "accept", quest = 12996, title = "The Warm-Up", npc = 29839, npcName = "Astrid Bjornrittar", map = 120, x = 49.7, y = 71.8, f = "e" },
					{ t = "turnin", quest = 12989, title = "The Slithering Darkness", npc = 29839, npcName = "Astrid Bjornrittar", map = 120, x = 49.7, y = 71.8, f = "e" },
				},
			},
			{
				note = "Use your Reins of the Icemaw Matriarch outside the building to ride a bear|invehicle|c|use Reins of the Warbear Matriarch##42481",
				goals = {
					{ t = "use", item = 42481, itemName = "Reins of the Warbear Matriarch", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 50.8, y = 67.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12996, title = "The Warm-Up", npc = 29839, npcName = "Astrid Bjornrittar", map = 120, x = 49.7, y = 71.8, f = "e" },
					{ t = "accept", quest = 12997, title = "Into the Pit", npc = 29839, npcName = "Astrid Bjornrittar", map = 120, x = 49.7, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12997, target = "Hyldsmeet Warbear", count = 6, oi = 1, map = 120, x = 49.1, y = 69.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12997, title = "Into the Pit", npc = 29839, npcName = "Astrid Bjornrittar", map = 120, x = 49.7, y = 71.8, f = "e" },
					{ t = "accept", quest = 13061, title = "Prepare for Glory", npc = 29839, npcName = "Astrid Bjornrittar", map = 120, x = 49.7, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13061, title = "Prepare for Glory", npc = 29975, npcName = "Lok'lira the Crone", map = 120, x = 47.5, y = 69.1, f = "e" },
					{ t = "accept", quest = 13062, title = "Lok'lira's Parting Gift", npc = 29975, npcName = "Lok'lira the Crone", map = 120, x = 47.5, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13062, title = "Lok'lira's Parting Gift", npc = 29796, npcName = "Gretta the Arbiter", map = 120, x = 50.9, y = 65.6, f = "e" },
					{ t = "accept", quest = 12886, title = "The Drakkensryd", npc = 29796, npcName = "Gretta the Arbiter", map = 120, x = 50.9, y = 65.6, f = "e" },
				},
			},
			{
				note = "You fly off on a drake and start flying in circles around a tower:",
				goals = {
					{ t = "kill", target = "Hyldsmeet Drakeriders", count = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12886, title = "The Drakkensryd", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
					{ t = "accept", quest = 13064, title = "Sibling Rivalry", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13064, title = "Sibling Rivalry", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
					{ t = "accept", quest = 12915, title = "Mending Fences", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12942, target = "Nascent Val'kyr", count = 12, oi = 1, map = 120, x = 27.3, y = 63.7, f = "e" },
					{ t = "kill", target = "Valkyrion Aspirants", count = 1, map = 120, x = 27.3, y = 63.7, f = "e" },
					{ t = "collect", quest = 12925, item = 41612, itemName = "Vial of Frost Oil", count = 6, map = 120, x = 27.3, y = 63.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 23.7, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12968, target = "Yulda the Stormspeaker", count = 1, oi = 1, map = 120, x = 24.0, y = 61.8, f = "e" },
					{ t = "accept", quest = 12953, title = "Valkyrion Must Burn", map = 120, x = 24.0, y = 61.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 26.0, y = 59.8, f = "e" },
				},
			},
			{
				note = "Hearth to K3,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 120, x = 41.0, y = 85.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12824, title = "Demolitionist Extraordinaire", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
					{ t = "turnin", quest = 12822, title = "Know No Fear", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
					{ t = "accept", quest = 12833, title = "Overstock", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12833, target = "Garm Invader", count = 12, oi = 1, map = 120, x = 43.1, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12833, title = "Overstock", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12925, title = "Aberrations", npc = 30041, npcName = "Thyra Kvinnshal", map = 120, x = 48.4, y = 72.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12942, title = "Off With Their Black Wings", npc = 29997, npcName = "Iva the Vengeful", map = 120, x = 48.4, y = 72.1, f = "e" },
					{ t = "turnin", quest = 12968, title = "Yulda's Folly", npc = 29997, npcName = "Iva the Vengeful", map = 120, x = 48.4, y = 72.1, f = "e" },
					{ t = "turnin", quest = 12953, title = "Valkyrion Must Burn", npc = 29997, npcName = "Iva the Vengeful", map = 120, x = 48.4, y = 72.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12915, target = "Stormforged Iron Giants", count = 5, oi = 2, map = 120, x = 75.8, y = 63.0, f = "e" },
					{ t = "accept", quest = 12922, title = "The Refiner's Fire", map = 120, x = 75.8, y = 63.0, f = "e" },
				},
			},
		},
	})
end

