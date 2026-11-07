-- TuWoW_Leveling — Guides/Leveling_Alliance_50.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-74-76-part-4",
		pack = "guides",
		title = "Northrend (74-76) (Parte 4/5)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-74-76-part-5",
		author = "TuWoW & Zygor",
		minLevel = 75,
		maxLevel = 76,
		zone = 115,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", map = 116, x = 28.5, y = 45.0, f = "e" },
				},
			},
			{
				note = "Go underground to 30.5,43.9",
				goals = {
					{ t = "goto", map = 116, x = 30.5, y = 43.9, f = "e" },
				},
			},
			{
				note = "Go outside the tunnel to 33.3,48.5|n",
				goals = {
					{ t = "goto", map = 116, x = 33.3, y = 48.5, f = "e" },
				},
			},
			{
				note = "Go underground to 32.2,45.8|n",
				goals = {
					{ t = "goto", map = 116, x = 32.2, y = 45.8, f = "e" },
				},
			},
			{
				note = "Go outside the tunnel to 40.7,52|n",
				goals = {
					{ t = "goto", map = 116, x = 40.7, y = 52.0, f = "e" },
				},
			},
			{
				note = "Go underground to 41.2,54.7",
				goals = {
					{ t = "goto", map = 116, x = 41.2, y = 54.7, f = "e" },
				},
			},
			{
				note = "Go outside the tunnel to 40.4,50.6",
				goals = {
					{ t = "kill", target = "Entropic Oozes", count = 1, map = 116, x = 40.4, y = 50.6, f = "e" },
					{ t = "collect", quest = 12219, itemName = "Slime Sample", count = 6, oi = 1, map = 116, x = 40.4, y = 50.6, f = "e" },
				},
			},
			{
				note = "Hearth to Amberpine Lodge|goto Grizzly Hills,32.0,60.3,0.1|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12219, title = "The Failed World Tree", npc = 27295, npcName = "Hierophant Thayreen", map = 116, x = 31.2, y = 59.5, f = "e" },
					{ t = "turnin", quest = 12220, title = "A Dark Influence", npc = 27295, npcName = "Hierophant Thayreen", map = 116, x = 31.2, y = 59.5, f = "e" },
					{ t = "accept", quest = 12246, title = "A Possible Link", npc = 27295, npcName = "Hierophant Thayreen", map = 116, x = 31.2, y = 59.5, f = "e" },
					{ t = "accept", quest = 12247, title = "Children of Ursoc", npc = 27295, npcName = "Hierophant Thayreen", map = 116, x = 31.2, y = 59.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 27275, npcName = "Kodian", map = 116, x = 66.9, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Redfang furbolgs", count = 1, map = 116, x = 63.6, y = 57.9, f = "e" },
					{ t = "collect", quest = 12246, itemName = "Crazed Furbolg Blood", count = 8, oi = 1, map = 116, x = 63.6, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 27274, npcName = "Orsonn", map = 116, x = 48.1, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12027, title = "Mr. Floppy's Perilous Adventure", npc = 26588, npcName = "Emily", map = 116, x = 49.2, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12414, title = "Mounting Up", npc = 26377, npcName = "Squire Percy", map = 116, x = 59.1, y = 26.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12027, title = "Mr. Floppy's Perilous Adventure", npc = 26371, npcName = "Squire Walter", map = 116, x = 59.1, y = 26.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12109, title = "Report to Gryan Stoutmantle... Again", npc = 26212, npcName = "Captain Gryan Stoutmantle", map = 116, x = 59.4, y = 26.0, f = "e" },
					{ t = "accept", quest = 12158, title = "Hollowstone Mine", npc = 26212, npcName = "Captain Gryan Stoutmantle", map = 116, x = 59.4, y = 26.0, f = "e" },
					{ t = "accept", quest = 11998, title = "Softening the Blow", npc = 26212, npcName = "Captain Gryan Stoutmantle", map = 116, x = 59.4, y = 26.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Westfall Brigade Encampment", text = "Westfall Brigade Encampment", f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Westfall Brigade Encampment", text = "Westfall Brigade Encampment", map = 116, x = 59.9, y = 26.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12158, title = "Hollowstone Mine", npc = 26932, npcName = "Petrov", map = 116, x = 55.1, y = 23.4, f = "e" },
					{ t = "accept", quest = 12159, title = "Souls at Unrest", npc = 26932, npcName = "Petrov", map = 116, x = 55.1, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Undead Miners", count = 1, map = 116, x = 54.9, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12159, title = "Souls at Unrest", npc = 26932, npcName = "Petrov", map = 116, x = 55.1, y = 23.4, f = "e" },
					{ t = "accept", quest = 12160, title = "A Name from the Past", npc = 26932, npcName = "Petrov", map = 116, x = 55.1, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12160, title = "A Name from the Past", npc = 26212, npcName = "Captain Gryan Stoutmantle", map = 116, x = 59.4, y = 26.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12161, title = "Ruuna the Blind", npc = 27582, npcName = "Private Arun", map = 116, x = 59.2, y = 26.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12246, title = "A Possible Link", npc = 27295, npcName = "Hierophant Thayreen", map = 116, x = 31.2, y = 59.5, f = "e" },
					{ t = "turnin", quest = 12247, title = "Children of Ursoc", npc = 27295, npcName = "Hierophant Thayreen", map = 116, x = 31.2, y = 59.5, f = "e" },
					{ t = "accept", quest = 12248, title = "Vordrassil's Sapling", npc = 27295, npcName = "Hierophant Thayreen", map = 116, x = 31.2, y = 59.5, f = "e" },
					{ t = "accept", quest = 12250, title = "Vordrassil's Seeds", npc = 27295, npcName = "Hierophant Thayreen", map = 116, x = 31.2, y = 59.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12161, title = "Ruuna the Blind", npc = 27581, npcName = "Ruuna the Blind", map = 116, x = 44.0, y = 47.9, f = "e" },
					{ t = "accept", quest = 12328, title = "Ruuna's Request", npc = 27581, npcName = "Ruuna the Blind", map = 116, x = 44.0, y = 47.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Fern Feeder Moths", count = 1, map = 116, x = 46.8, y = 35.7, f = "e" },
					{ t = "collect", quest = 12328, itemName = "Gossamer Dust", count = 4, oi = 1, map = 116, x = 46.8, y = 35.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12328, title = "Ruuna's Request", npc = 27581, npcName = "Ruuna the Blind", map = 116, x = 44.0, y = 47.9, f = "e" },
					{ t = "accept", quest = 12327, title = "Out of Body Experience", npc = 27581, npcName = "Ruuna the Blind", map = 116, x = 44.0, y = 47.9, f = "e" },
				},
			},
			{
				note = "Drink the Gossamer Potion in your bags next to Ruuna's Crystal Ball right next to you|use Gossamer Potion##37661",
				goals = {
					{ t = "use", item = 37661, itemName = "Gossamer Potion", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12327, title = "Out of Body Experience", npc = 27581, npcName = "Ruuna the Blind", map = 116, x = 44.0, y = 47.9, f = "e" },
					{ t = "accept", quest = 12329, title = "Fate and Coincidence", npc = 27581, npcName = "Ruuna the Blind", map = 116, x = 44.0, y = 47.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 50.5, y = 46.0, f = "e" },
				},
			},
			{
				note = "Follow the path down to 50.8,42.6",
				goals = {
					{ t = "collect", quest = 12248, itemName = "Vordrassil's Ashes", count = 1, oi = 1, map = 116, x = 50.8, y = 42.6, f = "e" },
				},
			},
			{
				note = "Go outside to 51.5,47.1",
				goals = {
					{ t = "collect", quest = 12250, itemName = "Vordrassil's Seed", count = 8, oi = 1, map = 116, x = 51.5, y = 47.1, f = "e" },
				},
			},
			{
				note = "Go outside to 57.5,41.3",
				goals = {
					{ t = "turnin", quest = 12329, title = "Fate and Coincidence", npc = 26935, npcName = "Sasha", map = 116, x = 57.5, y = 41.3, f = "e" },
					{ t = "accept", quest = 12134, title = "Sasha's Hunt", npc = 26935, npcName = "Sasha", map = 116, x = 57.5, y = 41.3, f = "e" },
					{ t = "accept", quest = 12330, title = "Anatoly Will Talk", npc = 26935, npcName = "Sasha", map = 116, x = 57.5, y = 41.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12134, target = "Solstice Hunter", count = 12, oi = 1, map = 116, x = 60.4, y = 40.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 62.3, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12134, title = "Sasha's Hunt", npc = 26935, npcName = "Sasha", map = 116, x = 57.5, y = 41.3, f = "e" },
					{ t = "turnin", quest = 12330, title = "Anatoly Will Talk", npc = 26935, npcName = "Sasha", map = 116, x = 57.5, y = 41.3, f = "e" },
					{ t = "accept", quest = 12411, title = "A Sister's Pledge", npc = 26935, npcName = "Sasha", map = 116, x = 57.5, y = 41.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12411, title = "A Sister's Pledge", npc = 27646, npcName = "Anya", map = 116, x = 64.8, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12279, title = "A Bear of an Appetite", npc = 26484, npcName = "Hugh Glass", map = 116, x = 69.1, y = 40.1, f = "e" },
					{ t = "buy", npc = 26484, npcName = "Hugh Glass", itemName = "Howlin' Good Moonshine", count = 1, map = 116, x = 69.1, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12414, item = 37707, itemName = "Wild Carrot", count = 5, map = 116, x = 61.6, y = 32.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 60.3, y = 25.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12414, title = "Mounting Up", npc = 26377, npcName = "Squire Percy", map = 116, x = 59.1, y = 26.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11998, title = "Softening the Blow", npc = 26226, npcName = "Brugar Stoneshear", map = 116, x = 59.8, y = 27.5, f = "e" },
					{ t = "accept", quest = 12002, title = "Brothers in Battle", npc = 26226, npcName = "Brugar Stoneshear", map = 116, x = 59.8, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11981, title = "Find Kurun!", npc = 26335, npcName = "Fallen Earthen Warrior", map = 116, x = 63.7, y = 23.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11986, title = "The Damaged Journal", map = 116, x = 64.3, y = 19.8, f = "e" },
				},
			},
			{
				note = "They look like torn pages that spawn all around this area on the ground",
				goals = {
					{ t = "collect", item = 35737, itemName = "Missing Journal Page", count = 8, f = "e" },
					{ t = "collect", quest = 11986, itemName = "Brann Bronzebeard's Journal", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12002, target = "Runic Battle Golem", count = 10, oi = 1, map = 116, x = 63.1, y = 24.1, f = "e" },
				},
			},
			{
				note = "Follow the road into the mountains around to 66,18",
				goals = {
					{ t = "turnin", quest = 11981, title = "Find Kurun!", npc = 26260, npcName = "Kurun", map = 116, x = 65.8, y = 17.8, f = "e" },
					{ t = "accept", quest = 11982, title = "Raining Down Destruction", npc = 26260, npcName = "Kurun", map = 116, x = 65.8, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11982, item = 35734, itemName = "Boulder", count = 5, map = 116, x = 66.1, y = 13.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 66.9, y = 14.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11982, title = "Raining Down Destruction", npc = 26260, npcName = "Kurun", map = 116, x = 65.8, y = 17.8, f = "e" },
					{ t = "accept", quest = 12070, title = "Rallying the Troops", npc = 26260, npcName = "Kurun", map = 116, x = 65.8, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 68.3, y = 10.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12070, title = "Rallying the Troops", npc = 26260, npcName = "Kurun", map = 116, x = 65.8, y = 17.8, f = "e" },
					{ t = "accept", quest = 11985, title = "Into the Breach", npc = 26260, npcName = "Kurun", map = 116, x = 65.8, y = 17.8, f = "e" },
				},
			},
			{
				note = "Go down the hill and into the building to 70.2,13",
				goals = {
					{ t = "kill", quest = 11985, npc = 26348, target = "Iron Thane Argrum", count = 1, oi = 1, map = 116, x = 70.2, y = 13.0, f = "e" },
				},
			},
			{
				note = "Go out of the building and up the path to 65.8,17.8",
				goals = {
					{ t = "turnin", quest = 11985, title = "Into the Breach", npc = 26260, npcName = "Kurun", map = 116, x = 65.8, y = 17.8, f = "e" },
					{ t = "accept", quest = 12081, title = "Gavrock", npc = 26260, npcName = "Kurun", map = 116, x = 65.8, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12002, title = "Brothers in Battle", npc = 26226, npcName = "Brugar Stoneshear", map = 116, x = 59.8, y = 27.5, f = "e" },
					{ t = "accept", quest = 12003, title = "Uncovering the Tunnels", npc = 26226, npcName = "Brugar Stoneshear", map = 116, x = 59.8, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11986, title = "The Damaged Journal", npc = 26361, npcName = "Torthen Deepdig", map = 116, x = 59.8, y = 27.5, f = "e" },
					{ t = "accept", quest = 11988, title = "The Runic Keystone", npc = 26361, npcName = "Torthen Deepdig", map = 116, x = 59.8, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 62.7, y = 20.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 63.5, y = 28.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 66.6, y = 24.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "iron dwarves", count = 1, map = 116, x = 65.1, y = 19.3, f = "e" },
					{ t = "collect", quest = 11988, itemName = "Runic Keystone Fragment", count = 5, oi = 1, map = 116, x = 65.1, y = 19.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12003, title = "Uncovering the Tunnels", npc = 26226, npcName = "Brugar Stoneshear", map = 116, x = 59.8, y = 27.5, f = "e" },
					{ t = "accept", quest = 12010, title = "The Fate of Orlond", npc = 26226, npcName = "Brugar Stoneshear", map = 116, x = 59.8, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11988, title = "The Runic Keystone", npc = 26361, npcName = "Torthen Deepdig", map = 116, x = 59.8, y = 27.5, f = "e" },
					{ t = "accept", quest = 11993, title = "The Runic Prophecies", npc = 26361, npcName = "Torthen Deepdig", map = 116, x = 59.8, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12010, title = "The Fate of Orlond", npc = 26514, npcName = "Surveyor Orlond", map = 116, x = 67.5, y = 15.3, f = "e" },
					{ t = "accept", quest = 12014, title = "Steady as a Rock?", npc = 26514, npcName = "Surveyor Orlond", map = 116, x = 67.5, y = 15.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Subterranean Threshers in the water", count = 1, map = 116, x = 67.8, y = 15.5, f = "e" },
					{ t = "collect", quest = 12014, itemName = "Portable Seismograph", count = 1, oi = 2, map = 116, x = 67.8, y = 15.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 68.5, y = 16.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 69.0, y = 14.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 70.2, y = 14.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12014, itemName = "Thor Modan Stability Profile", count = 1, oi = 1, map = 116, x = 70.6, y = 13.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12014, title = "Steady as a Rock?", npc = 26226, npcName = "Brugar Stoneshear", map = 116, x = 59.8, y = 27.5, f = "e" },
					{ t = "accept", quest = 12128, title = "Check Up on Raegar", npc = 26226, npcName = "Brugar Stoneshear", map = 116, x = 59.8, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11993, title = "The Runic Prophecies", npc = 26361, npcName = "Torthen Deepdig", map = 116, x = 59.8, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12190, title = "Say Hello to My Little Friend", npc = 26884, npcName = "Harkor", map = 116, x = 73.8, y = 34.0, f = "e" },
					{ t = "accept", quest = 12113, title = "Nice to Meat You", npc = 26884, npcName = "Harkor", map = 116, x = 73.8, y = 34.0, f = "e" },
					{ t = "accept", quest = 12114, title = "Therapy", npc = 26884, npcName = "Harkor", map = 116, x = 73.8, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12116, title = "It Takes Guts....", npc = 26886, npcName = "Kraz", map = 116, x = 73.9, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Longhoof Grazers", count = 1, map = 116, x = 72.7, y = 37.6, f = "e" },
					{ t = "collect", quest = 12113, itemName = "Shovelhorn Steak", count = 10, oi = 2, map = 116, x = 72.7, y = 37.6, f = "e" },
					{ t = "kill", target = "Duskhowl Prowlers", count = 1, map = 116, x = 72.7, y = 37.6, f = "e" },
					{ t = "collect", quest = 12113, itemName = "Fibrous Worg Meat", count = 10, oi = 1, map = 116, x = 72.7, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12113, title = "Nice to Meat You", npc = 26884, npcName = "Harkor", map = 116, x = 73.8, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12114, target = "Drakkari Protector", count = 10, oi = 1, map = 116, x = 70.5, y = 27.4, f = "e" },
					{ t = "kill", quest = 12114, target = "Drakkari Oracle", count = 10, oi = 2, map = 116, x = 70.5, y = 27.4, f = "e" },
					{ t = "collect", quest = 12068, item = 36758, itemName = "Sacred Mojo", count = 5, map = 116, x = 70.5, y = 27.4, f = "e" },
				},
			},
			{
				note = "Go inside the underground crypt to 70.8,21.8",
				goals = {
					{ t = "collect", quest = 12116, itemName = "Drakkari Canopic Jar", count = 5, oi = 1, map = 116, x = 70.8, y = 21.8, f = "e" },
				},
			},
			{
				note = "Inside the crypt, go to 69.4,18.2",
				goals = {
					{ t = "collect", quest = 12068, itemName = "Drakkari Tablets", count = 1, oi = 1, map = 116, x = 69.4, y = 18.2, f = "e" },
				},
			},
			{
				note = "Inside the crypt, go to 69.5,17.5",
				goals = {
					{ t = "accept", quest = 12082, title = "Dun-da-Dun-tah!", npc = 26814, npcName = "Harrison Jones", map = 116, x = 69.5, y = 17.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12068, title = "Voices From the Dust", npc = 26787, npcName = "Image of Drakuru", map = 116, x = 71.7, y = 26.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12279, itemName = "Northern Salmon", count = 6, oi = 1, map = 116, x = 75.5, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12081, title = "Gavrock", npc = 26420, npcName = "Gavrock", map = 116, x = 79.8, y = 33.6, f = "e" },
					{ t = "accept", quest = 12093, title = "Runes of Compulsion", npc = 26420, npcName = "Gavrock", map = 116, x = 79.8, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Iron Rune-Weavers", count = 4, map = 116, x = 79.1, y = 43.3, f = "e" },
					{ t = "kill", quest = 12093, target = "Overseer Brunon", count = 1, oi = 4, map = 116, x = 79.1, y = 43.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Iron Rune-Weavers", count = 4, map = 116, x = 75.3, y = 36.7, f = "e" },
					{ t = "kill", quest = 12093, target = "Overseer Lochli", count = 1, oi = 3, map = 116, x = 75.3, y = 36.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12116, title = "It Takes Guts....", npc = 26886, npcName = "Kraz", map = 116, x = 73.9, y = 34.1, f = "e" },
					{ t = "accept", quest = 12120, title = "Drak'aguul's Mallet", npc = 26886, npcName = "Kraz", map = 116, x = 73.9, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12082, title = "Dun-da-Dun-tah!", npc = 26884, npcName = "Harkor", map = 116, x = 73.8, y = 34.0, f = "e" },
					{ t = "turnin", quest = 12114, title = "Therapy", npc = 26884, npcName = "Harkor", map = 116, x = 73.8, y = 34.0, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-74-76-part-5",
		pack = "guides",
		title = "Northrend (74-76) (Parte 5/5)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 75,
		maxLevel = 76,
		zone = 115,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", target = "Iron Rune-Weavers", count = 4, map = 116, x = 72.1, y = 33.9, f = "e" },
					{ t = "kill", quest = 12093, target = "Overseer Korgan", count = 1, oi = 2, map = 116, x = 72.1, y = 33.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Iron Rune-Weavers", count = 4, map = 116, x = 67.7, y = 29.6, f = "e" },
					{ t = "kill", quest = 12093, target = "Overseer Durval", count = 1, oi = 1, map = 116, x = 67.7, y = 29.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12120, itemName = "Drakil'jin Mallet", count = 1, oi = 1, map = 116, x = 71.6, y = 28.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12120, title = "Drak'aguul's Mallet", npc = 26886, npcName = "Kraz", map = 116, x = 73.9, y = 34.1, f = "e" },
					{ t = "accept", quest = 12121, title = "See You on the Other Side", npc = 26886, npcName = "Kraz", map = 116, x = 73.9, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 76, f = "e" },
				},
			},
		},
	})
end

