-- TuWoW_Leveling — Guides/Leveling_Alliance_47.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-74-76",
		pack = "guides",
		title = "Northrend (74-76) (Parte 1/5)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-74-76-part-2",
		author = "TuWoW & Zygor",
		minLevel = 74,
		maxLevel = 76,
		zone = 115,
		version = 1,
		steps = {
			{
				note = "Go into the tree trunk to 47.6,49|goto Dragonblight,47.6,49",
				goals = {
					{ t = "collect", itemName = "Ruby Brooch", count = 1, f = "e" },
					{ t = "accept", quest = 12419, title = "The Fate of the Ruby Dragonshrine", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12418, title = "Through Fields of Flame", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
					{ t = "accept", quest = 12768, title = "The Steward of Wyrmrest Temple", npc = 27506, npcName = "Ceristrasz", map = 115, x = 52.2, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12768, title = "The Steward of Wyrmrest Temple", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
					{ t = "accept", quest = 12123, title = "Informing the Queen", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", map = 115, x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12123, title = "Informing the Queen", npc = 26917, npcName = "Alexstrasza the Life-Binder", map = 115, x = 59.8, y = 54.7, f = "e" },
					{ t = "accept", quest = 12435, title = "Report to Lord Afrasastrasz", npc = 26917, npcName = "Alexstrasza the Life-Binder", map = 115, x = 59.8, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12419, title = "The Fate of the Ruby Dragonshrine", npc = 27990, npcName = "Krasus", map = 115, x = 59.8, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26949, npcName = "Torastrasza", map = 115, x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12435, title = "Report to Lord Afrasastrasz", npc = 27575, npcName = "Lord Afrasastrasz", map = 115, x = 59.2, y = 54.3, f = "e" },
					{ t = "accept", quest = 12372, title = "Defending Wyrmrest Temple", npc = 27575, npcName = "Lord Afrasastrasz", map = 115, x = 59.2, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12372, target = "Azure Dragon", count = 3, oi = 1, map = 115, x = 58.3, y = 55.2, f = "e" },
					{ t = "kill", quest = 12372, target = "Azure Drake", count = 5, oi = 2, map = 115, x = 58.3, y = 55.2, f = "e" },
				},
			},
			{
				note = "Fly southwest to 55.1,66.4",
				goals = {
					{ t = "goto", map = 115, x = 55.1, y = 66.4, f = "e" },
				},
			},
			{
				note = "Click the red arrow to get off the dragon on the middle level of the temple|script VehicleExit()|outvehicle|c",
				goals = {
					{ t = "goto", map = 115, x = 58.7, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12372, title = "Defending Wyrmrest Temple", npc = 27575, npcName = "Lord Afrasastrasz", map = 115, x = 59.2, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 27575, npcName = "Lord Afrasastrasz", map = 115, x = 59.2, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12459, target = "Weakened Reanimated Frost Wyrm", count = 1, oi = 1, map = 115, x = 55.2, y = 45.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12794, title = "The Magical Kingdom of Dalaran", npc = 26673, npcName = "Image of Archmage Modera", map = 115, x = 29.0, y = 55.5, f = "e" },
				},
			},
			{
				note = "She is the Flight Path Master",
				goals = {
					{ t = "accept", quest = 12174, title = "High Commander Halford Wyrmbane", npc = 26881, npcName = "Palena Silvercloud", map = 115, x = 29.2, y = 55.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Wintergarde Keep", text = "Wintergarde Keep", map = 115, x = 77.0, y = 49.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12174, title = "High Commander Halford Wyrmbane", npc = 27136, npcName = "High Commander Halford Wyrmbane", map = 115, x = 78.61, y = 48.2, f = "e" },
					{ t = "accept", quest = 12235, title = "Naxxramas and the Fall of Wintergarde", npc = 27136, npcName = "High Commander Halford Wyrmbane", map = 115, x = 78.61, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12235, title = "Naxxramas and the Fall of Wintergarde", npc = 27317, npcName = "Gryphon Commander Urik", map = 115, x = 77.1, y = 50.1, f = "e" },
					{ t = "accept", quest = 12237, title = "Flight of the Wintergarde Defender", npc = 27317, npcName = "Gryphon Commander Urik", map = 115, x = 77.1, y = 50.1, f = "e" },
				},
			},
			{
				note = "Use the Wintergarde Gryphon Whistle in your bags|use Wintergarde Gryphon Whistle##37287",
				goals = {
					{ t = "use", item = 37287, itemName = "Wintergarde Gryphon Whistle", f = "e" },
				},
			},
			{
				note = "Fly to 83.6,48.8",
				goals = {
					{ t = "goto", map = 115, x = 83.6, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12237, title = "Flight of the Wintergarde Defender", npc = 27317, npcName = "Gryphon Commander Urik", map = 115, x = 77.1, y = 50.1, f = "e" },
					{ t = "accept", quest = 12251, title = "Return to the High Commander", npc = 27317, npcName = "Gryphon Commander Urik", map = 115, x = 77.1, y = 50.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12251, title = "Return to the High Commander", npc = 27136, npcName = "High Commander Halford Wyrmbane", map = 115, x = 78.61, y = 48.2, f = "e" },
					{ t = "accept", quest = 12253, title = "Rescue from Town Square", npc = 27136, npcName = "High Commander Halford Wyrmbane", map = 115, x = 78.61, y = 48.2, f = "e" },
					{ t = "accept", quest = 12275, title = "The Demo-gnome", npc = 27136, npcName = "High Commander Halford Wyrmbane", map = 115, x = 78.61, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12258, title = "The Fate of the Dead", npc = 27155, npcName = "Commander Lynore Windstryke", map = 115, x = 78.6, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12282, title = "Imprints on the Past", npc = 27314, npcName = "Zelig the Visionary", map = 115, x = 79.1, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12275, title = "The Demo-gnome", npc = 27159, npcName = "Siege Engineer Quarterflash", map = 115, x = 77.8, y = 50.3, f = "e" },
					{ t = "accept", quest = 12276, title = "The Search for Slinkin", npc = 27159, npcName = "Siege Engineer Quarterflash", map = 115, x = 77.8, y = 50.3, f = "e" },
					{ t = "accept", quest = 12272, title = "The Bleeding Ore", npc = 27159, npcName = "Siege Engineer Quarterflash", map = 115, x = 77.8, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12269, title = "Not In Our Mine", npc = 27156, npcName = "Highlord Leoric Von Zeldig", map = 115, x = 77.8, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Wintergarde Keep", text = "Wintergarde Keep", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12258, target = "Vengeful Geist", count = 15, oi = 1, map = 115, x = 79.9, y = 49.7, f = "e" },
				},
			},
			{
				note = "Go upstairs in this building to 78.9,50.9",
				goals = {
					{ t = "collect", quest = 12282, itemName = "Scrying Orb", count = 1, oi = 1, map = 115, x = 78.9, y = 50.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12258, title = "The Fate of the Dead", npc = 27155, npcName = "Commander Lynore Windstryke", map = 115, x = 78.6, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12253, title = "Rescue from Town Square", npc = 27136, npcName = "High Commander Halford Wyrmbane", map = 115, x = 78.61, y = 48.2, f = "e" },
					{ t = "accept", quest = 12309, title = "Find Durkon!", npc = 27136, npcName = "High Commander Halford Wyrmbane", map = 115, x = 78.61, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12282, title = "Imprints on the Past", npc = 27314, npcName = "Zelig the Visionary", map = 115, x = 79.1, y = 47.2, f = "e" },
					{ t = "accept", quest = 12287, title = "Orik Trueheart and the Forgotten Shore", npc = 27314, npcName = "Zelig the Visionary", map = 115, x = 79.1, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12309, title = "Find Durkon!", npc = 27318, npcName = "Cavalier Durkon", map = 115, x = 79.1, y = 53.2, f = "e" },
					{ t = "accept", quest = 12311, title = "The Noble's Crypt", npc = 27318, npcName = "Cavalier Durkon", map = 115, x = 79.1, y = 53.2, f = "e" },
				},
			},
			{
				note = "Go inside the crypt to 78.6,52.4",
				goals = {
					{ t = "accept", quest = 12312, title = "Secrets of the Scourge", map = 115, x = 78.6, y = 52.4, f = "e" },
				},
			},
			{
				note = "Go outside the crypt to 79.1,53.2",
				goals = {
					{ t = "turnin", quest = 12311, title = "The Noble's Crypt", npc = 27318, npcName = "Cavalier Durkon", map = 115, x = 79.1, y = 53.2, f = "e" },
					{ t = "turnin", quest = 12312, title = "Secrets of the Scourge", npc = 27318, npcName = "Cavalier Durkon", map = 115, x = 79.1, y = 53.2, f = "e" },
					{ t = "accept", quest = 12319, title = "Mystery of the Tome", npc = 27318, npcName = "Cavalier Durkon", map = 115, x = 79.1, y = 53.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12319, title = "Mystery of the Tome", npc = 27136, npcName = "High Commander Halford Wyrmbane", map = 115, x = 78.61, y = 48.2, f = "e" },
					{ t = "accept", quest = 12320, title = "Understanding the Language of Death", npc = 27136, npcName = "High Commander Halford Wyrmbane", map = 115, x = 78.61, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12320, title = "Understanding the Language of Death", npc = 27316, npcName = "Inquisitor Hallard", map = 115, x = 76.8, y = 47.4, f = "e" },
					{ t = "accept", quest = 12321, title = "A Righteous Sermon", npc = 27316, npcName = "Inquisitor Hallard", map = 115, x = 76.8, y = 47.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 76.8, y = 47.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12321, title = "A Righteous Sermon", npc = 27136, npcName = "High Commander Halford Wyrmbane", map = 115, x = 78.61, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12269, itemName = "Wintergarde Miner's Card", count = 10, oi = 1, map = 115, x = 80.4, y = 45.1, f = "e" },
					{ t = "collect", quest = 12272, itemName = "Strange Ore", count = 10, oi = 1, map = 115, x = 80.4, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12276, title = "The Search for Slinkin", npc = 27412, npcName = "Slinkin the Demo-gnome", map = 115, x = 81.5, y = 42.2, f = "e" },
					{ t = "accept", quest = 12277, title = "Leave Nothing to Chance", npc = 27412, npcName = "Slinkin the Demo-gnome", map = 115, x = 81.5, y = 42.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12277, item = 37465, itemName = "Wintergarde Mine Bomb", count = 1, map = 115, x = 80.7, y = 41.3, f = "e" },
				},
			},
			{
				note = "Follow the path in the mine to 80.4,44.8",
				goals = {
					{ t = "goto", map = 115, x = 80.4, y = 44.8, f = "e" },
				},
			},
			{
				note = "Go outside and around to 80.2,45.3",
				goals = {
					{ t = "goto", map = 115, x = 80.2, y = 45.3, f = "e" },
				},
			},
			{
				note = "Follow the path up into town to 77.8,50.3",
				goals = {
					{ t = "turnin", quest = 12277, title = "Leave Nothing to Chance", npc = 27159, npcName = "Siege Engineer Quarterflash", map = 115, x = 77.8, y = 50.3, f = "e" },
					{ t = "turnin", quest = 12272, title = "The Bleeding Ore", npc = 27159, npcName = "Siege Engineer Quarterflash", map = 115, x = 77.8, y = 50.3, f = "e" },
					{ t = "accept", quest = 12281, title = "Understanding the Scourge War Machine", npc = 27159, npcName = "Siege Engineer Quarterflash", map = 115, x = 77.8, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12269, title = "Not In Our Mine", npc = 27156, npcName = "Highlord Leoric Von Zeldig", map = 115, x = 77.8, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12281, title = "Understanding the Scourge War Machine", npc = 27136, npcName = "High Commander Halford Wyrmbane", map = 115, x = 78.61, y = 48.2, f = "e" },
					{ t = "accept", quest = 12325, title = "Into Hostile Territory", npc = 27136, npcName = "High Commander Halford Wyrmbane", map = 115, x = 78.61, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 77.1, y = 49.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12325, title = "Into Hostile Territory", npc = 27157, npcName = "Duke August Foehammer", map = 115, x = 89.7, y = 46.4, f = "e" },
					{ t = "accept", quest = 12326, title = "Steamtank Surprise", npc = 27157, npcName = "Duke August Foehammer", map = 115, x = 89.7, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 89.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 88.8, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 85.6, y = 49.8, f = "e" },
				},
			},
			{
				note = "Go inside the crypt to 85.9,50.9",
				goals = {
					{ t = "turnin", quest = 12326, title = "Steamtank Surprise", npc = 1293, npcName = "Ambo Cash", map = 115, x = 85.9, y = 50.9, f = "e" },
					{ t = "accept", quest = 12455, title = "Scattered To The Wind", npc = 1293, npcName = "Ambo Cash", map = 115, x = 85.9, y = 50.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12462, title = "Breaking Off A Piece", npc = 27319, npcName = "Yord \"Calamity\" Icebeard", map = 115, x = 85.9, y = 51.0, f = "e" },
				},
			},
			{
				note = "Go outside of the crypt to 85.1,49.5",
				goals = {
					{ t = "collect", quest = 12455, itemName = "Wintergarde Munitions", count = 8, oi = 1, map = 115, x = 85.1, y = 49.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12459, target = "Weakened Turgid the Vile", count = 1, oi = 2, map = 115, x = 86.2, y = 47.0, f = "e" },
				},
			},
			{
				note = "Go into the crypt to 85.9,50.9",
				goals = {
					{ t = "turnin", quest = 12455, title = "Scattered To The Wind", npc = 1293, npcName = "Ambo Cash", map = 115, x = 85.9, y = 50.9, f = "e" },
					{ t = "accept", quest = 12457, title = "The Chain Gun And You", npc = 1293, npcName = "Ambo Cash", map = 115, x = 85.9, y = 50.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 86.2, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12457, title = "The Chain Gun And You", npc = 1293, npcName = "Ambo Cash", map = 115, x = 85.9, y = 50.9, f = "e" },
					{ t = "accept", quest = 12463, title = "Plunderbeard Must Be Found!", npc = 1293, npcName = "Ambo Cash", map = 115, x = 85.9, y = 50.9, f = "e" },
				},
			},
			{
				note = "Go downstairs to 84.4,51",
				goals = {
					{ t = "kill", quest = 12462, npc = 27826, target = "Necrolord X'avius", count = 1, oi = 2, map = 115, x = 84.4, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12462, npc = 27805, target = "Necrolord Horus", count = 1, oi = 1, map = 115, x = 86.7, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12462, target = "Naxxramas Scourge", count = 15, oi = 3, map = 115, x = 85.6, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12463, title = "Plunderbeard Must Be Found!", npc = 27828, npcName = "Plunderbeard", map = 115, x = 84.2, y = 54.7, f = "e" },
					{ t = "accept", quest = 12465, title = "Plunderbeard's Journal", npc = 27828, npcName = "Plunderbeard", map = 115, x = 84.2, y = 54.7, f = "e" },
				},
			},
			{
				note = "Follow the tunnel to the other side to 83,55",
				goals = {
					{ t = "kill", target = "undead mobs", count = 1, map = 115, x = 83.0, y = 55.0, f = "e" },
					{ t = "collect", quest = 12465, itemName = "Page 4 of Plunderbeard's Journal", count = 1, oi = 1, map = 115, x = 83.0, y = 55.0, f = "e" },
					{ t = "collect", quest = 12465, itemName = "Page 5 of Plunderbeard's Journal", count = 1, oi = 2, map = 115, x = 83.0, y = 55.0, f = "e" },
					{ t = "collect", quest = 12465, itemName = "Page 6 of Plunderbeard's Journal", count = 1, oi = 3, map = 115, x = 83.0, y = 55.0, f = "e" },
					{ t = "collect", quest = 12465, itemName = "Page 7 of Plunderbeard's Journal", count = 1, oi = 4, map = 115, x = 83.0, y = 55.0, f = "e" },
				},
			},
			{
				note = "Follow the tunnel back to the other side to 85.9,51",
				goals = {
					{ t = "turnin", quest = 12462, title = "Breaking Off A Piece", npc = 27319, npcName = "Yord \"Calamity\" Icebeard", map = 115, x = 85.9, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12465, title = "Plunderbeard's Journal", npc = 1293, npcName = "Ambo Cash", map = 115, x = 85.9, y = 50.9, f = "e" },
					{ t = "accept", quest = 12466, title = "Chasing Icestorm: The 7th Legion Front", npc = 1293, npcName = "Ambo Cash", map = 115, x = 85.9, y = 50.9, f = "e" },
				},
			},
			{
				note = "Go outside the crypt to 87.2,57.4",
				goals = {
					{ t = "turnin", quest = 12287, title = "Orik Trueheart and the Forgotten Shore", npc = 27347, npcName = "Orik Trueheart", map = 115, x = 87.2, y = 57.4, f = "e" },
					{ t = "accept", quest = 12290, title = "The Murkweed Elixir", npc = 27347, npcName = "Orik Trueheart", map = 115, x = 87.2, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12542, title = "The Call Of The Crusade", npc = 27348, npcName = "Tilda Darathan", map = 115, x = 87.2, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12290, itemName = "Murkweed", count = 5, oi = 1, map = 115, x = 90.8, y = 64.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12290, title = "The Murkweed Elixir", npc = 27347, npcName = "Orik Trueheart", map = 115, x = 87.2, y = 57.4, f = "e" },
					{ t = "accept", quest = 12291, title = "The Forgotten Tale", npc = 27347, npcName = "Orik Trueheart", map = 115, x = 87.2, y = 57.4, f = "e" },
				},
			},
			{
				note = "As a spirit, go to 84.2,66.4",
				goals = {
					{ t = "talk", npc = 27229, npcName = "a Forgotten Footman", map = 115, x = 84.2, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12291, title = "The Forgotten Tale", npc = 27347, npcName = "Orik Trueheart", map = 115, x = 87.2, y = 57.4, f = "e" },
					{ t = "accept", quest = 12301, title = "The Truth Shall Set Us Free", npc = 27347, npcName = "Orik Trueheart", map = 115, x = 87.2, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 86.8, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12301, title = "The Truth Shall Set Us Free", npc = 27347, npcName = "Orik Trueheart", map = 115, x = 87.2, y = 57.4, f = "e" },
					{ t = "accept", quest = 12305, title = "Parting Thoughts", npc = 27347, npcName = "Orik Trueheart", map = 115, x = 87.2, y = 57.4, f = "e" },
				},
			},
			{
				note = "Hearth to Wintergarde Keep|goto Dragonblight,77.4,51.5,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12305, title = "Parting Thoughts", npc = 27314, npcName = "Zelig the Visionary", map = 115, x = 79.1, y = 47.2, f = "e" },
					{ t = "accept", quest = 12475, title = "What Secrets Men Hide", npc = 27314, npcName = "Zelig the Visionary", map = 115, x = 79.1, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12476, title = "The Return of the Crusade?", npc = 27155, npcName = "Commander Lynore Windstryke", map = 115, x = 78.6, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12477, title = "The Path of Redemption", npc = 27136, npcName = "High Commander Halford Wyrmbane", map = 115, x = 78.61, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 71.7, y = 38.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12542, title = "The Call Of The Crusade", npc = 28228, npcName = "Crusader Valus", map = 115, x = 84.0, y = 26.1, f = "e" },
					{ t = "accept", quest = 12545, title = "The Cleansing Of Jintha'kalar", npc = 28228, npcName = "Crusader Valus", map = 115, x = 84.0, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12459, npc = 27122, target = "Weakened Overseer Deathgaze", count = 1, oi = 3, map = 115, x = 89.5, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "undead mobs", count = 1, map = 115, x = 86.8, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12545, title = "The Cleansing Of Jintha'kalar", npc = 28228, npcName = "Crusader Valus", map = 115, x = 84.0, y = 26.1, f = "e" },
					{ t = "accept", quest = 12789, title = "Into the Breach!", npc = 28228, npcName = "Crusader Valus", map = 115, x = 84.0, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12475, itemName = "Onslaught Map", count = 1, oi = 1, map = 115, x = 87.6, y = 38.1, f = "e" },
				},
			},
		},
	})
end

