-- TuWoW_Leveling — Guides/Leveling_Horde_50.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-74-76-part-3",
		pack = "guides",
		title = "Northrend (74-76) (Parte 3/4)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-74-76-part-4",
		author = "TuWoW & Zygor",
		minLevel = 74,
		maxLevel = 76,
		zone = 1454,
		version = 1,
		steps = {
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
					{ t = "kill", quest = 12052, target = "Mistress of the Coldwind", count = 1, oi = 1, x = 44.9, y = 9.1, f = "e" },
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
				note = "Go into the cave to 56.2,12.0",
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
					{ t = "collect", quest = 12076, itemName = "Vial of Corrosive Spit", count = 2, oi = 1, x = 57.5, y = 12.4, f = "e" },
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
				note = "Go into the cave to 55.3,11.0",
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
				note = "Hearth to Wyrmrest Temple,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "goto", x = 59.7, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12147, title = "Disturbing Implications", npc = 26983, npcName = "Aurastasza", x = 60.0, y = 55.2, f = "e" },
				},
			},
			{
				note = "Fly to Agmar's Hammer,0.5|noway|c",
				goals = {
					{ t = "goto", x = 37.5, y = 45.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12224, title = "The Kor'kron Vanguard!", npc = 26379, npcName = "Overlord Agmar", x = 36.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12224, title = "The Kor'kron Vanguard!", npc = 25257, npcName = "Saurfang the Younger", x = 40.7, y = 18.1, f = "e" },
					{ t = "accept", quest = 12496, title = "Audience With The Dragon Queen", npc = 25257, npcName = "Saurfang the Younger", x = 40.7, y = 18.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Kor'kron Vanguard", x = 43.8, y = 16.9, f = "e" },
				},
			},
			{
				note = "Fly to Wyrmrest Temple,0.5|noway|c",
				goals = {
					{ t = "goto", x = 60.3, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26443, npcName = "Tariolstrasz", x = 57.9, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12496, title = "Audience With The Dragon Queen", npc = 26917, npcName = "Alexstrasza the Life-Binder", x = 59.8, y = 54.7, f = "e" },
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
				note = "Fly to 57.2,33.1",
				goals = {
					{ t = "kill", quest = 12498, target = "Wastes Scavenger", count = 30, oi = 1, x = 57.2, y = 33.1, f = "e" },
				},
			},
			{
				note = "Fly to 54.5,31.3",
				goals = {
					{ t = "kill", target = "Thiassi the Lightning Bringer", count = 1, x = 54.5, y = 31.3, f = "e" },
					{ t = "collect", quest = 12498, itemName = "Scythe of Antiok", count = 1, oi = 2, x = 54.5, y = 31.3, f = "e" },
				},
			},
			{
				note = "Fly to 59.8,54.7",
				goals = {
					{ t = "turnin", quest = 12498, title = "On Ruby Wings", npc = 26917, npcName = "Alexstrasza the Life-Binder", x = 59.8, y = 54.7, f = "e" },
					{ t = "accept", quest = 12500, title = "Return To Angrathar", npc = 26917, npcName = "Alexstrasza the Life-Binder", x = 59.8, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26949, npcName = "Torastrasza", x = 59.5, y = 53.3, f = "e" },
				},
			},
			{
				note = "Fly to Kor'kron Vanguard,0.5|noway|c",
				goals = {
					{ t = "goto", x = 43.9, y = 16.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12500, title = "Return To Angrathar", npc = 25257, npcName = "Saurfang the Younger", x = 40.7, y = 18.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13242, title = "Darkness Stirs", npc = 31333, npcName = "Alexstrasza the Life-Binder", x = 38.5, y = 19.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13242, itemName = "Saurfang's Battle Armor", count = 1, oi = 1, x = 38.2, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26850, npcName = "Numo Spiritbreeze", x = 43.8, y = 16.9, f = "e" },
				},
			},
			{
				note = "Go downstairs to 41.4,53.7|goto Borean Tundra,41.4,53.7",
				goals = {
					{ t = "turnin", quest = 13242, title = "Darkness Stirs", npc = 25256, npcName = "High Overlord Saurfang", f = "e" },
					{ t = "accept", quest = 13257, title = "Herald of War", npc = 25256, npcName = "High Overlord Saurfang", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13257, title = "Herald of War", npc = 31412, npcName = "Thrall", map = 1454, x = 31.8, y = 37.8, f = "e" },
					{ t = "accept", quest = 13266, title = "A Life Without Regret", npc = 31412, npcName = "Thrall", map = 1454, x = 31.8, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13266, title = "A Life Without Regret", npc = 31649, npcName = "Vol'jin", map = 1420, x = 61.7, y = 62.7, f = "e" },
					{ t = "accept", quest = 13267, title = "The Battle For The Undercity", npc = 31649, npcName = "Vol'jin", map = 1420, x = 61.7, y = 62.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13267, title = "The Battle For The Undercity", npc = 31650, npcName = "Thrall", map = 1420, x = 62.0, y = 62.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 1420, x = 38.1, y = 46.2, f = "e" },
				},
			},
			{
				note = "Go downstairs to 56.3,46.8|goto Dalaran,56.3,46.8",
				goals = {
					{ t = "turnin", quest = 12791, title = "The Magical Kingdom of Dalaran", npc = 29156, npcName = "Archmage Celindra", f = "e" },
					{ t = "accept", quest = 12790, title = "Learning to Leave and Return: the Magical Way", npc = 29156, npcName = "Archmage Celindra", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 56.3, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1420, x = 15.8, y = 42.5, f = "e" },
				},
			},
			{
				note = "Go downstairs to 56.3,46.8|goto Dalaran,56.3,46.8",
				goals = {
					{ t = "turnin", quest = 12790, title = "Learning to Leave and Return: the Magical Way", npc = 29156, npcName = "Archmage Celindra", f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Dalaran", map = 1420, x = 72.2, y = 45.8, f = "e" },
				},
			},
			{
				note = "Go underground into the sewer to 45.4,40.8",
				goals = {
					{ t = "accept", quest = 12974, title = "The Champion's Call!", npc = 30137, npcName = "Shifty Vickers", map = 1420, x = 45.4, y = 40.8, f = "e" },
				},
			},
			{
				note = "Go outside the sewer to 30.6,48.6",
				goals = {
					{ t = "accept", quest = 13158, title = "Discretion is Key", npc = 16128, npcName = "Rhonin", map = 1420, x = 30.6, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13158, title = "Discretion is Key", npc = 31080, npcName = "Warden Alturas", map = 1420, x = 61.3, y = 63.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12436, title = "Supplemental Income", npc = 26868, npcName = "Provisioner Lorkran", map = 1420, x = 22.7, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12175, title = "Gray Worg Hides", npc = 27037, npcName = "Hidetrader Jun'ik", map = 1420, x = 22.0, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Conquest Hold", map = 1420, x = 22.0, y = 64.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Conquest Hold", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12487, title = "To Conquest Hold, But Be Careful!", npc = 26860, npcName = "Conqueror Krenna", map = 1420, x = 20.7, y = 64.2, f = "e" },
					{ t = "accept", quest = 12468, title = "The Conqueror's Task", npc = 26860, npcName = "Conqueror Krenna", map = 1420, x = 20.7, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12468, title = "The Conqueror's Task", npc = 27388, npcName = "Sergeant Nazgrim", map = 1420, x = 21.0, y = 64.1, f = "e" },
					{ t = "accept", quest = 12257, title = "A Show of Strength", npc = 27388, npcName = "Sergeant Nazgrim", map = 1420, x = 21.0, y = 64.1, f = "e" },
					{ t = "accept", quest = 12256, title = "The Flamebinders' Secrets", npc = 27388, npcName = "Sergeant Nazgrim", map = 1420, x = 21.0, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Graymist Hunters", count = 1, map = 1420, x = 24.7, y = 66.9, f = "e" },
					{ t = "collect", quest = 12175, itemName = "Gray Worg Hide", count = 3, oi = 1, map = 1420, x = 24.7, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Tallhorn Stags", count = 1, map = 1420, x = 24.4, y = 60.7, f = "e" },
					{ t = "collect", quest = 12436, itemName = "Succulent Venison", count = 5, oi = 1, map = 1420, x = 24.4, y = 60.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12436, title = "Supplemental Income", npc = 26868, npcName = "Provisioner Lorkran", map = 1420, x = 22.7, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12175, title = "Gray Worg Hides", npc = 27037, npcName = "Hidetrader Jun'ik", map = 1420, x = 22.0, y = 65.1, f = "e" },
					{ t = "accept", quest = 12176, title = "A Minor Substitution", npc = 27037, npcName = "Hidetrader Jun'ik", map = 1420, x = 22.0, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Grizzly Bears", count = 1, map = 1420, x = 28.4, y = 56.5, f = "e" },
					{ t = "collect", quest = 12176, itemName = "Grizzly Hide", count = 6, oi = 1, map = 1420, x = 28.4, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12176, title = "A Minor Substitution", npc = 27037, npcName = "Hidetrader Jun'ik", map = 1420, x = 22.0, y = 65.1, f = "e" },
					{ t = "accept", quest = 12177, title = "Jun'ik's Coverup", npc = 27037, npcName = "Hidetrader Jun'ik", map = 1420, x = 22.0, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 26868, npcName = "Provisioner Lorkran", itemName = "Simple Flour", count = 5, map = 1420, x = 22.7, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 27134, npcName = "Smith Prigka", itemName = "Coal", count = 1, map = 1420, x = 23.4, y = 63.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12177, title = "Jun'ik's Coverup", npc = 27037, npcName = "Hidetrader Jun'ik", map = 1420, x = 22.0, y = 65.1, f = "e" },
					{ t = "accept", quest = 12178, title = "Delivery to Krenna", npc = 27037, npcName = "Hidetrader Jun'ik", map = 1420, x = 22.0, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12178, title = "Delivery to Krenna", npc = 26860, npcName = "Conqueror Krenna", map = 1420, x = 20.7, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12257, target = "Dragonflayer Huscarl", count = 12, oi = 1, map = 1420, x = 33.6, y = 79.0, f = "e" },
					{ t = "kill", target = "Dragonflayer Flamebinders", count = 1, map = 1420, x = 33.6, y = 79.0, f = "e" },
					{ t = "collect", quest = 12256, itemName = "Flame-Imbued Talisman", count = 3, oi = 1, map = 1420, x = 33.6, y = 79.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12257, title = "A Show of Strength", npc = 27388, npcName = "Sergeant Nazgrim", map = 1420, x = 21.0, y = 64.1, f = "e" },
					{ t = "turnin", quest = 12256, title = "The Flamebinders' Secrets", npc = 27388, npcName = "Sergeant Nazgrim", map = 1420, x = 21.0, y = 64.1, f = "e" },
					{ t = "accept", quest = 12259, title = "The Thane of Voldrune", npc = 27388, npcName = "Sergeant Nazgrim", map = 1420, x = 21.0, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 27292, npcName = "Flamebringer", map = 1420, x = 26.6, y = 77.9, f = "e" },
				},
			},
			{
				note = "Fly to 27.1,73.0",
				goals = {
					{ t = "kill", quest = 12259, target = "Thane Torvald Eriksson", count = 1, oi = 1, map = 1420, x = 27.1, y = 73.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12259, title = "The Thane of Voldrune", npc = 27388, npcName = "Sergeant Nazgrim", map = 1420, x = 21.0, y = 64.1, f = "e" },
					{ t = "accept", quest = 12451, title = "Onward to Camp Oneqwah", npc = 27388, npcName = "Sergeant Nazgrim", map = 1420, x = 21.0, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12412, title = "My Enemy's Friend", npc = 26860, npcName = "Conqueror Krenna", map = 1420, x = 20.7, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12412, target = "Vladek", count = 1, oi = 2, map = 1420, x = 36.3, y = 67.9, f = "e" },
					{ t = "collect", itemName = "Mikhail's Journal", count = 1, map = 1420, x = 36.3, y = 67.9, f = "e" },
					{ t = "accept", quest = 12423, title = "Mikhail's Journal", map = 1420, x = 36.3, y = 67.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12412, target = "Silverbrook Hunter", count = 8, oi = 1, map = 1420, x = 35.2, y = 69.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12412, title = "My Enemy's Friend", npc = 26860, npcName = "Conqueror Krenna", map = 1420, x = 20.7, y = 64.2, f = "e" },
					{ t = "accept", quest = 12413, title = "Attack on Silverbrook", npc = 26860, npcName = "Conqueror Krenna", map = 1420, x = 20.7, y = 64.2, f = "e" },
					{ t = "turnin", quest = 12423, title = "Mikhail's Journal", npc = 26860, npcName = "Conqueror Krenna", map = 1420, x = 20.7, y = 64.2, f = "e" },
					{ t = "accept", quest = 12424, title = "Gorgonna", npc = 26860, npcName = "Conqueror Krenna", map = 1420, x = 20.7, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12424, title = "Gorgonna", npc = 27102, npcName = "Gorgonna", map = 1420, x = 21.0, y = 64.0, f = "e" },
					{ t = "accept", quest = 12422, title = "Tactical Clemency", npc = 27102, npcName = "Gorgonna", map = 1420, x = 21.0, y = 64.0, f = "e" },
				},
			},
		},
	})
end

