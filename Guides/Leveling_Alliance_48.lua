-- TuWoW_Leveling — Guides/Leveling_Alliance_48.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-74-76-part-2",
		pack = "guides",
		title = "Northrend (74-76) (Parte 2/5)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-74-76-part-3",
		author = "TuWoW & Zygor",
		minLevel = 74,
		maxLevel = 76,
		zone = 1453,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", target = "Onslaught mobs", count = 1, x = 84.9, y = 35.5, f = "e" },
					{ t = "collect", quest = 12477, itemName = "The Path of Redemption", count = 1, oi = 1, x = 84.9, y = 35.5, f = "e" },
					{ t = "kill", quest = 12476, target = "Scarlet Onslaught", count = 20, oi = 1, x = 84.9, y = 35.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12476, title = "The Return of the Crusade?", npc = 27155, npcName = "Commander Lynore Windstryke", x = 78.6, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12477, title = "The Path of Redemption", npc = 27136, npcName = "High Commander Halford Wyrmbane", x = 78.61, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12475, title = "What Secrets Men Hide", npc = 27314, npcName = "Zelig the Visionary", x = 79.1, y = 47.2, f = "e" },
					{ t = "accept", quest = 12478, title = "Frostmourne Cavern", npc = 27314, npcName = "Zelig the Visionary", x = 79.1, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 74.2, y = 23.8, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 75.1,20.2",
				goals = {
					{ t = "goto", x = 75.1, y = 20.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12466, title = "Chasing Icestorm: The 7th Legion Front", npc = 27844, npcName = "Legion Commander Tyralion", x = 64.7, y = 27.9, f = "e" },
					{ t = "accept", quest = 12467, title = "Chasing Icestorm: Thel'zan's Phylactery", npc = 27844, npcName = "Legion Commander Tyralion", x = 64.7, y = 27.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12142, title = "Pest Control", npc = 26978, npcName = "Duane", x = 64.4, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Icestorm", count = 1, x = 64.6, y = 27.5, f = "e" },
					{ t = "collect", quest = 12467, itemName = "Thel'zan's Phylactery", count = 1, oi = 1, x = 64.6, y = 27.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Magnataurs", count = 1, x = 68.1, y = 33.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Snowplain kobolds", count = 1, x = 70.4, y = 32.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12142, title = "Pest Control", npc = 26978, npcName = "Duane", x = 64.4, y = 26.9, f = "e" },
					{ t = "accept", quest = 12143, title = "Canyon Chase", npc = 26978, npcName = "Duane", x = 64.4, y = 26.9, f = "e" },
				},
			},
			{
				note = "Follow the fleeing kobolds to 72.5,29.2",
				goals = {
					{ t = "kill", quest = 12143, target = "Chilltusk", count = 1, oi = 1, x = 72.5, y = 29.2, f = "e" },
					{ t = "collect", itemName = "Emblazoned Battle Horn", count = 1, x = 72.5, y = 29.2, f = "e" },
					{ t = "accept", quest = 12146, title = "Disturbing Implications", x = 72.5, y = 29.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12143, title = "Canyon Chase", npc = 26978, npcName = "Duane", x = 64.4, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12146, title = "Disturbing Implications", npc = 26983, npcName = "Aurastrasza", x = 60.0, y = 55.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12459, title = "That Which Creates Can Also Destroy", npc = 27785, npcName = "Lord Itharius", x = 59.6, y = 54.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12470, title = "Mystery of the Infinite", npc = 27856, npcName = "Chromie", x = 60.0, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26949, npcName = "Torastrasza", x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Wyrmrest Temple", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12467, title = "Chasing Icestorm: Thel'zan's Phylactery", npc = 27136, npcName = "High Commander Halford Wyrmbane", x = 78.61, y = 48.2, f = "e" },
					{ t = "accept", quest = 12472, title = "Finality", npc = 27136, npcName = "High Commander Halford Wyrmbane", x = 78.61, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12478, title = "Frostmourne Cavern", npc = 27314, npcName = "Zelig the Visionary", x = 79.1, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 82.0, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12472, title = "Finality", npc = 27857, npcName = "Legion Commander Yorik", x = 81.2, y = 50.7, f = "e" },
					{ t = "accept", quest = 12473, title = "An End And A Beginning", npc = 27857, npcName = "Legion Commander Yorik", x = 81.2, y = 50.7, f = "e" },
				},
			},
			{
				note = "Go outside the crypt to 78.61,48.2",
				goals = {
					{ t = "turnin", quest = 12473, title = "An End And A Beginning", npc = 27136, npcName = "High Commander Halford Wyrmbane", x = 78.61, y = 48.2, f = "e" },
					{ t = "accept", quest = 12474, title = "To Fordragon Hold!", npc = 27136, npcName = "High Commander Halford Wyrmbane", x = 78.61, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 37.2, y = 31.8, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 35.2,30.0",
				goals = {
					{ t = "turnin", quest = 12447, title = "The Obsidian Dragonshrine", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "accept", quest = 12262, title = "No One to Save You", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "accept", quest = 12261, title = "No Place to Run", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
				},
			},
			{
				note = "Go outside the cave to 37.9,32",
				goals = {
					{ t = "kill", quest = 12262, target = "Burning Depths Necrolyte", count = 6, oi = 1, x = 37.9, y = 32.0, f = "e" },
					{ t = "kill", quest = 12262, target = "Smoldering Skeleton", count = 10, oi = 2, x = 37.9, y = 32.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 42.1, y = 32.0, f = "e" },
				},
			},
			{
				note = "Go into the cave to 35.2,30",
				goals = {
					{ t = "turnin", quest = 12262, title = "No One to Save You", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "turnin", quest = 12261, title = "No Place to Run", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "accept", quest = 12263, title = "The Best of Intentions", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
				},
			},
			{
				note = "Follow the path in the cave while disguised as a cultist to 31.8,30.5",
				goals = {
					{ t = "goto", x = 31.8, y = 30.5, f = "e" },
				},
			},
			{
				note = "Follow the path back down to 35.2,30",
				goals = {
					{ t = "turnin", quest = 12263, title = "The Best of Intentions", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "accept", quest = 12264, title = "Culling the Damned", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "accept", quest = 12265, title = "Defiling the Defilers", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
				},
			},
			{
				note = "Follow the path in the cave to 34.2,26.8",
				goals = {
					{ t = "kill", quest = 12264, target = "Burning Depths Necromancer", count = 3, oi = 1, x = 34.2, y = 26.8, f = "e" },
					{ t = "kill", quest = 12264, target = "Smoldering Construct", count = 6, oi = 2, x = 34.2, y = 26.8, f = "e" },
					{ t = "kill", quest = 12264, target = "Smoldering Geist", count = 6, oi = 3, x = 34.2, y = 26.8, f = "e" },
				},
			},
			{
				note = "Go back down in the cave to 35.2,30",
				goals = {
					{ t = "turnin", quest = 12264, title = "Culling the Damned", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "turnin", quest = 12265, title = "Defiling the Defilers", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "accept", quest = 12267, title = "Neltharion's Flame", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
				},
			},
			{
				note = "Follow the path in the cave to 31.6,31.2",
				goals = {
					{ t = "kill", quest = 12267, target = "Rothin the Decaying", count = 1, oi = 2, x = 31.6, y = 31.2, f = "e" },
				},
			},
			{
				note = "Go back down in the cave to 35.2,30",
				goals = {
					{ t = "turnin", quest = 12267, title = "Neltharion's Flame", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
					{ t = "accept", quest = 12266, title = "Tales of Destruction", npc = 26593, npcName = "Serinar", x = 35.2, y = 30.0, f = "e" },
				},
			},
			{
				note = "Go outside to 48.5,24.1",
				goals = {
					{ t = "accept", quest = 12469, title = "Return to Sender", npc = 26896, npcName = "Nozzlerust Supply Runner", x = 48.5, y = 24.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12043, title = "Nozzlerust Defense", npc = 26647, npcName = "Narf", x = 54.5, y = 23.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12045, title = "Shaved Ice", npc = 26661, npcName = "Zivlix", x = 54.7, y = 23.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12469, title = "Return to Sender", npc = 26660, npcName = "Xink", x = 55.0, y = 23.4, f = "e" },
					{ t = "accept", quest = 12044, title = "Stocking Up", npc = 26660, npcName = "Xink", x = 55.0, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Crystalline Ice Elementals", count = 1, x = 53.7, y = 18.9, f = "e" },
					{ t = "collect", quest = 12045, itemName = "Ice Shard Cluster", count = 4, oi = 1, x = 53.7, y = 18.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12045, title = "Shaved Ice", npc = 26661, npcName = "Zivlix", x = 54.7, y = 23.2, f = "e" },
					{ t = "accept", quest = 12046, title = "Soft Packaging", npc = 26661, npcName = "Zivlix", x = 54.7, y = 23.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Jormungar Tunnelers", count = 1, x = 53.7, y = 25.4, f = "e" },
					{ t = "collect", quest = 12046, itemName = "Thin Animal Hide", count = 12, oi = 1, x = 53.7, y = 25.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12046, title = "Soft Packaging", npc = 26661, npcName = "Zivlix", x = 54.7, y = 23.2, f = "e" },
					{ t = "accept", quest = 12047, title = "Something That Doesn't Melt", npc = 26661, npcName = "Zivlix", x = 54.7, y = 23.2, f = "e" },
				},
			},
			{
				note = "Also to 55,23.4",
				goals = {
					{ t = "accept", quest = 12049, title = "Hard to Swallow", npc = 26660, npcName = "Xink", x = 55.0, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12047, itemName = "Splintered Bone Chunk", count = 12, oi = 1, x = 57.5, y = 23.9, f = "e" },
					{ t = "collect", quest = 12049, itemName = "Seared Jormungar Meat", count = 6, oi = 1, x = 57.5, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12049, title = "Hard to Swallow", npc = 26660, npcName = "Xink", x = 55.0, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12047, title = "Something That Doesn't Melt", npc = 26661, npcName = "Zivlix", x = 54.7, y = 23.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12052, title = "Harp on This!", npc = 26647, npcName = "Narf", x = 54.5, y = 23.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12050, title = "Lumber Hack", npc = 26660, npcName = "Xink", x = 55.0, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12050, itemName = "Coldwind Lumber", count = 50, oi = 1, x = 53.1, y = 19.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 44.9, y = 9.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12052, title = "Harp on This!", npc = 26647, npcName = "Narf", x = 54.5, y = 23.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12050, title = "Lumber Hack", npc = 26660, npcName = "Xink", x = 55.0, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12112, title = "Stiff Negotiations", npc = 26647, npcName = "Narf", x = 54.5, y = 23.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12043, target = "Wastes Digger", count = 12, oi = 2, x = 52.4, y = 30.4, f = "e" },
					{ t = "kill", quest = 12043, target = "Wastes Taskmaster", count = 1, oi = 1, x = 52.4, y = 30.4, f = "e" },
					{ t = "collect", quest = 12044, itemName = "Composite Ore", count = 8, oi = 1, x = 52.4, y = 30.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12043, title = "Nozzlerust Defense", npc = 26647, npcName = "Narf", x = 54.5, y = 23.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12044, title = "Stocking Up", npc = 26660, npcName = "Xink", x = 55.0, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12112, title = "Stiff Negotiations", npc = 26659, npcName = "Zort", x = 59.4, y = 18.2, f = "e" },
					{ t = "accept", quest = 12075, title = "Slim Pickings", npc = 26659, npcName = "Zort", x = 59.4, y = 18.2, f = "e" },
				},
			},
			{
				note = "Go into the cave to 56.2,12",
				goals = {
					{ t = "collect", quest = 12075, itemName = "Sample of Rockflesh", count = 1, oi = 1, x = 56.2, y = 12.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12075, title = "Slim Pickings", npc = 26659, npcName = "Zort", x = 59.4, y = 18.2, f = "e" },
					{ t = "accept", quest = 12076, title = "Messy Business", npc = 26659, npcName = "Zort", x = 59.4, y = 18.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12079, title = "Stomping Grounds", npc = 26473, npcName = "Ko'char the Unbreakable", x = 59.0, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Vial of Corrosive Spit", count = 2, x = 57.5, y = 12.4, f = "e" },
					{ t = "kill", quest = 12079, target = "Ice Heart Jormungar Feeder", count = 8, oi = 1, x = 57.5, y = 12.4, f = "e" },
				},
			},
			{
				note = "Go outside the cave to 59.4,18.2",
				goals = {
					{ t = "turnin", quest = 12076, title = "Messy Business", npc = 26659, npcName = "Zort", x = 59.4, y = 18.2, f = "e" },
					{ t = "accept", quest = 12077, title = "Apply This Twice A Day", npc = 26659, npcName = "Zort", x = 59.4, y = 18.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12077, title = "Apply This Twice A Day", npc = 26473, npcName = "Ko'char the Unbreakable", x = 59.0, y = 17.8, f = "e" },
					{ t = "turnin", quest = 12079, title = "Stomping Grounds", npc = 26473, npcName = "Ko'char the Unbreakable", x = 59.0, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12078, title = "Worm Wrangler", npc = 26659, npcName = "Zort", x = 59.4, y = 18.2, f = "e" },
				},
			},
			{
				note = "Go into the cave to 55.3,11",
				goals = {
					{ t = "collect", quest = 12078, itemName = "Captured Jormungar Spawn", count = 3, oi = 1, x = 55.3, y = 11.0, f = "e" },
				},
			},
			{
				note = "Go outside the cave to 59.4,18.2",
				goals = {
					{ t = "turnin", quest = 12078, title = "Worm Wrangler", npc = 26659, npcName = "Zort", x = 59.4, y = 18.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Fordragon Hold", x = 39.5, y = 25.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 38.5, y = 26.5, f = "e" },
				},
			},
			{
				note = "Follow the path up the mountain to 37.8,23.4",
				goals = {
					{ t = "turnin", quest = 12474, title = "To Fordragon Hold!", npc = 27872, npcName = "Highlord Bolvar Fordragon", x = 37.8, y = 23.4, f = "e" },
					{ t = "accept", quest = 12495, title = "Audience With The Dragon Queen", npc = 27872, npcName = "Highlord Bolvar Fordragon", x = 37.8, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12266, title = "Tales of Destruction", npc = 27765, npcName = "Nalice", x = 60.1, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12495, title = "Audience With The Dragon Queen", npc = 26917, npcName = "Alexstrasza the Life-Binder", x = 59.8, y = 54.7, f = "e" },
					{ t = "accept", quest = 12497, title = "Galakrond and the Scourge", npc = 26917, npcName = "Alexstrasza the Life-Binder", x = 59.8, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12497, title = "Galakrond and the Scourge", npc = 26949, npcName = "Torastrasza", x = 59.5, y = 53.3, f = "e" },
					{ t = "accept", quest = 12498, title = "On Ruby Wings", npc = 26949, npcName = "Torastrasza", x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				note = "Use your Ruby Beacon of the Dragon Queen|use Ruby Beacon of the Dragon Queen##38302",
				goals = {
					{ t = "use", item = 38302, itemName = "Ruby Beacon of the Dragon Queen", f = "e" },
				},
			},
			{
				note = "Fly to 57.2,33.1",
				goals = {
					{ t = "kill", quest = 12498, target = "Wastes Scavenger", count = 30, oi = 1, x = 57.2, y = 33.1, f = "e" },
				},
			},
			{
				note = "Fly to 54.5,31.3",
				goals = {
					{ t = "collect", quest = 12498, itemName = "Scythe of Antiok", count = 1, oi = 2, x = 54.5, y = 31.3, f = "e" },
				},
			},
			{
				note = "Use your Ruby Beacon of the Dragon Queen|use Ruby Beacon of the Dragon Queen##38302",
				goals = {
					{ t = "use", item = 38302, itemName = "Ruby Beacon of the Dragon Queen", f = "e" },
				},
			},
			{
				note = "Fly to 59.8,54.7",
				goals = {
					{ t = "turnin", quest = 12498, title = "On Ruby Wings", npc = 26917, npcName = "Alexstrasza the Life-Binder", x = 59.8, y = 54.7, f = "e" },
					{ t = "accept", quest = 12499, title = "Return To Angrathar", npc = 26917, npcName = "Alexstrasza the Life-Binder", x = 59.8, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26949, npcName = "Torastrasza", x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				note = "Follow the path up the mountain to 37.8,23.4",
				goals = {
					{ t = "turnin", quest = 12499, title = "Return To Angrathar", npc = 27872, npcName = "Highlord Bolvar Fordragon", x = 37.8, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13347, title = "Reborn From The Ashes", npc = 31333, npcName = "Alexstrasza the Life-Binder", x = 38.5, y = 19.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13347, itemName = "Fordragon's Shield", count = 1, oi = 1, x = 38.0, y = 19.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26877, npcName = "Derek Rammel", x = 39.5, y = 25.9, f = "e" },
				},
			},
		},
	})
end

