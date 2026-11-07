-- TuWoW_Leveling — Guides/Leveling_Horde_38.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-outland-68-70-part-2",
		pack = "guides",
		title = "Outland (68-70) (Parte 2/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-outland-68-70-part-3",
		author = "TuWoW & Zygor",
		minLevel = 68,
		maxLevel = 70,
		zone = 1949,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 10721, title = "A Boaring Time for Grulloc", npc = 22103, npcName = "Baron Sablemane", map = 1949, x = 53.3, y = 41.2, f = "e" },
					{ t = "accept", quest = 10785, title = "It's a Trap!", npc = 22103, npcName = "Baron Sablemane", map = 1949, x = 53.3, y = 41.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10785, title = "It's a Trap!", npc = 21984, npcName = "Rexxar", map = 1949, x = 51.9, y = 58.4, f = "e" },
					{ t = "accept", quest = 10723, title = "Gorgrom the Dragon-Eater", npc = 21984, npcName = "Rexxar", map = 1949, x = 51.9, y = 58.4, f = "e" },
					{ t = "accept", quest = 10786, title = "Slaughter at Boulder'mok", npc = 21147, npcName = "Tor'chunk Twoclaws", map = 1949, x = 51.9, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10894, title = "Wyrmskull Watcher", npc = 22386, npcName = "Watcher Moonshade", map = 1949, x = 49.9, y = 35.9, f = "e" },
					{ t = "accept", quest = 10893, title = "Longtail is the Lynchpin", npc = 22386, npcName = "Watcher Moonshade", map = 1949, x = 49.9, y = 35.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10893, target = "Draaca Longtail", count = 1, oi = 1, map = 1949, x = 46.7, y = 32.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10893, title = "Longtail is the Lynchpin", npc = 22386, npcName = "Watcher Moonshade", map = 1949, x = 49.9, y = 35.9, f = "e" },
					{ t = "accept", quest = 10722, title = "Meeting at the Blackwing Coven", npc = 22386, npcName = "Watcher Moonshade", map = 1949, x = 49.9, y = 35.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "arakkoas", count = 1, map = 1949, x = 40.9, y = 20.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 40.7, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 39.0, y = 17.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 42.5, y = 21.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "the Orb of the Grishna", count = 1, map = 1949, x = 40.2, y = 23.0, f = "e" },
					{ t = "accept", quest = 10825, title = "The Truth Unorbed", map = 1949, x = 40.2, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10722, item = 31121, itemName = "Costume Scraps", count = 5, map = 1949, x = 32.3, y = 34.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 22019, npcName = "Kolphis Darkscale", map = 1949, x = 32.6, y = 37.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10786, target = "Boulder'mok Brute", count = 5, oi = 1, map = 1949, x = 30.3, y = 24.6, f = "e" },
					{ t = "kill", quest = 10786, target = "Boulder'mok Shaman", count = 3, oi = 2, map = 1949, x = 30.3, y = 24.6, f = "e" },
					{ t = "collect", quest = 10723, item = 31754, itemName = "Grisly Totem", count = 3, map = 1949, x = 30.3, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 30.6, y = 22.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10747, title = "Whelps of the Wyrmcult", npc = 21983, npcName = "Samia Inkling", map = 1949, x = 62.0, y = 39.5, f = "e" },
					{ t = "turnin", quest = 10722, title = "Meeting at the Blackwing Coven", npc = 22007, npcName = "Tree Warden Chawn", map = 1949, x = 62.0, y = 39.5, f = "e" },
					{ t = "accept", quest = 10748, title = "Maxnar Must Die!", npc = 22007, npcName = "Tree Warden Chawn", map = 1949, x = 62.0, y = 39.5, f = "e" },
					{ t = "turnin", quest = 10825, title = "The Truth Unorbed", npc = 22007, npcName = "Tree Warden Chawn", map = 1949, x = 62.0, y = 39.5, f = "e" },
					{ t = "accept", quest = 10829, title = "Treebole Must Know", npc = 22007, npcName = "Tree Warden Chawn", map = 1949, x = 62.0, y = 39.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10607, title = "Whispers of the Raven God", npc = 21782, npcName = "Timeon", map = 1949, x = 62.2, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10723, title = "Gorgrom the Dragon-Eater", npc = 21984, npcName = "Rexxar", map = 1949, x = 51.9, y = 58.4, f = "e" },
					{ t = "turnin", quest = 10786, title = "Slaughter at Boulder'mok", npc = 21147, npcName = "Tor'chunk Twoclaws", map = 1949, x = 51.9, y = 58.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10829, title = "Treebole Must Know", npc = 22215, npcName = "Treebole", map = 1949, x = 36.9, y = 22.5, f = "e" },
					{ t = "accept", quest = 10830, title = "Exorcising the Trees", npc = 22215, npcName = "Treebole", map = 1949, x = 36.9, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10830, item = 31495, itemName = "Grishnath Orb", count = 5, map = 1949, x = 39.3, y = 20.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10830, item = 31517, itemName = "Dire Pinfeather", count = 5, map = 1949, x = 30.1, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 33.8, y = 29.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10830, title = "Exorcising the Trees", npc = 22215, npcName = "Treebole", map = 1949, x = 36.9, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10748, target = "Maxnar the Ashmaw", count = 1, oi = 1, map = 1949, x = 33.9, y = 35.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10748, title = "Maxnar Must Die!", npc = 22007, npcName = "Tree Warden Chawn", map = 1949, x = 62.0, y = 39.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10183, title = "Off To Area 52", npc = 19569, npcName = "Netherologist Coppernickels", map = 1953, x = 21.3, y = 55.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10190, title = "Recharging the Batteries", npc = 19578, npcName = "Bot-Specialist Alley", map = 1953, x = 31.5, y = 56.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 26.5, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10190, title = "Recharging the Batteries", npc = 19578, npcName = "Bot-Specialist Alley", map = 1953, x = 31.5, y = 56.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 69, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10342, title = "Securing the Shaleskin Shale", npc = 19617, npcName = "Boots", map = 1953, x = 32.3, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10265, title = "Consortium Crystal Collection", npc = 19880, npcName = "Nether-Stalker Khay'ji", map = 1953, x = 32.4, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10189, title = "Manaforge B'naar", npc = 19468, npcName = "Spymaster Thalodien", map = 1953, x = 32.0, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Area 52", text = "Area 52", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10183, title = "Off To Area 52", npc = 19570, npcName = "Rocket-Chief Fuselage", map = 1953, x = 32.7, y = 65.0, f = "e" },
					{ t = "accept", quest = 10186, title = "You're Hired!", npc = 19570, npcName = "Rocket-Chief Fuselage", map = 1953, x = 32.7, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10173, title = "The Archmage's Staff", npc = 19217, npcName = "Ravandwyr", map = 1953, x = 31.4, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Area 52", text = "Area 52", map = 1953, x = 33.7, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10342, itemName = "Shaleskin Shale", count = 5, oi = 1, map = 1953, x = 33.1, y = 60.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10191, title = "Mark V is Alive!", npc = 19589, npcName = "Maxx A. Million Mk. V", map = 1953, x = 31.5, y = 56.6, f = "e" },
					{ t = "collect", quest = 10186, itemName = "Etherlithium Matrix Crystal", count = 10, oi = 1, map = 1953, x = 31.5, y = 56.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10191, title = "Mark V is Alive!", npc = 19578, npcName = "Bot-Specialist Alley", map = 1953, x = 31.5, y = 56.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10342, title = "Securing the Shaleskin Shale", npc = 19617, npcName = "Boots", map = 1953, x = 32.3, y = 63.9, f = "e" },
					{ t = "accept", quest = 10199, title = "That Little Extra Kick", npc = 19617, npcName = "Boots", map = 1953, x = 32.3, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10186, title = "You're Hired!", npc = 19570, npcName = "Rocket-Chief Fuselage", map = 1953, x = 32.7, y = 65.0, f = "e" },
					{ t = "accept", quest = 10203, title = "Invaluable Asset Zapping", npc = 19570, npcName = "Rocket-Chief Fuselage", map = 1953, x = 32.7, y = 65.0, f = "e" },
					{ t = "accept", quest = 10225, title = "Report to Engineering", npc = 19570, npcName = "Rocket-Chief Fuselage", map = 1953, x = 32.7, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10225, title = "Report to Engineering", npc = 19709, npcName = "Chief Engineer Trep", map = 1953, x = 32.4, y = 66.8, f = "e" },
					{ t = "accept", quest = 10224, title = "Essence for the Engines", npc = 19709, npcName = "Chief Engineer Trep", map = 1953, x = 32.4, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10224, itemName = "Mana Wraith Essence", count = 7, oi = 1, map = 1953, x = 34.8, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10224, title = "Essence for the Engines", npc = 19709, npcName = "Chief Engineer Trep", map = 1953, x = 32.4, y = 66.8, f = "e" },
					{ t = "accept", quest = 10226, title = "Elemental Power Extraction", npc = 19709, npcName = "Chief Engineer Trep", map = 1953, x = 32.4, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10189, itemName = "B'naar Personnel Roster", count = 1, oi = 1, map = 1953, x = 27.8, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10226, itemName = "Elemental Power", count = 5, oi = 1, map = 1953, x = 35.4, y = 76.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 40.3, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 41.0, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10265, itemName = "Arklon Crystal Artifact", count = 1, oi = 1, map = 1953, x = 42.4, y = 72.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 42.5, y = 72.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 41.4, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10173, itemName = "Archmage Vargoth's Staff", count = 1, oi = 1, map = 1953, x = 40.9, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Nether Rays", count = 1, map = 1953, x = 44.6, y = 72.1, f = "e" },
					{ t = "collect", quest = 10199, itemName = "Nether Ray Stinger", count = 5, oi = 1, map = 1953, x = 44.6, y = 72.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10203, title = "Invaluable Asset Zapping", npc = 19634, npcName = "Lead Sapper Blastfizzle", map = 1953, x = 34.2, y = 68.1, f = "e" },
					{ t = "accept", quest = 10221, title = "Dr. Boom!", npc = 19634, npcName = "Lead Sapper Blastfizzle", map = 1953, x = 34.2, y = 68.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10226, title = "Elemental Power Extraction", npc = 19709, npcName = "Chief Engineer Trep", map = 1953, x = 32.4, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10173, title = "The Archmage's Staff", npc = 19217, npcName = "Ravandwyr", map = 1953, x = 31.4, y = 66.2, f = "e" },
					{ t = "accept", quest = 10300, title = "Rebuilding the Staff", npc = 19217, npcName = "Ravandwyr", map = 1953, x = 31.4, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10265, title = "Consortium Crystal Collection", npc = 19880, npcName = "Nether-Stalker Khay'ji", map = 1953, x = 32.4, y = 64.2, f = "e" },
					{ t = "accept", quest = 10262, title = "A Heap of Ethereals", npc = 19880, npcName = "Nether-Stalker Khay'ji", map = 1953, x = 32.4, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10199, title = "That Little Extra Kick", npc = 19617, npcName = "Boots", map = 1953, x = 32.3, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10206, title = "Pick Your Part", npc = 19645, npcName = "Papa Wheeler", map = 1953, x = 33.0, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10189, title = "Manaforge B'naar", npc = 19468, npcName = "Spymaster Thalodien", map = 1953, x = 32.0, y = 64.0, f = "e" },
					{ t = "accept", quest = 10193, title = "High Value Targets", npc = 19468, npcName = "Spymaster Thalodien", map = 1953, x = 32.0, y = 64.0, f = "e" },
					{ t = "accept", quest = 10204, title = "Bloodgem Crystals", npc = 19469, npcName = "Magistrix Larynna", map = 1953, x = 32.0, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Disembodied Ghosts", count = 1, map = 1953, x = 33.5, y = 53.0, f = "e" },
					{ t = "collect", quest = 10300, itemName = "Flawless Crystal Shard", count = 4, oi = 1, map = 1953, x = 33.5, y = 53.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10221, target = "Dr. Boom", count = 1, oi = 1, map = 1953, x = 35.0, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10300, title = "Rebuilding the Staff", npc = 19217, npcName = "Ravandwyr", map = 1953, x = 31.4, y = 66.2, f = "e" },
					{ t = "accept", quest = 10174, title = "Curse of the Violet Tower", npc = 19217, npcName = "Ravandwyr", map = 1953, x = 31.4, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10221, title = "Dr. Boom!", npc = 19634, npcName = "Lead Sapper Blastfizzle", map = 1953, x = 34.2, y = 68.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "a Bloodgem Shard", count = 1, map = 1953, x = 26.3, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10193, target = "Sunfury Warp-Master", count = 2, oi = 1, map = 1953, x = 26.9, y = 70.5, f = "e" },
					{ t = "kill", quest = 10193, target = "Sunfury Warp-Engineer", count = 6, oi = 2, map = 1953, x = 26.9, y = 70.5, f = "e" },
					{ t = "kill", quest = 10193, target = "Sunfury Geologist", count = 8, oi = 3, map = 1953, x = 26.9, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10262, itemName = "Zaxxis Insignia", count = 10, oi = 1, map = 1953, x = 30.2, y = 75.5, f = "e" },
					{ t = "collect", quest = 10206, itemName = "Ethereal Technology", count = 10, oi = 1, map = 1953, x = 30.2, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10206, title = "Pick Your Part", npc = 19645, npcName = "Papa Wheeler", map = 1953, x = 33.0, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10262, title = "A Heap of Ethereals", npc = 19880, npcName = "Nether-Stalker Khay'ji", map = 1953, x = 32.4, y = 64.2, f = "e" },
					{ t = "accept", quest = 10205, title = "Warp-Raider Nesaad", npc = 19880, npcName = "Nether-Stalker Khay'ji", map = 1953, x = 32.4, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10193, title = "High Value Targets", npc = 19468, npcName = "Spymaster Thalodien", map = 1953, x = 32.0, y = 64.0, f = "e" },
					{ t = "accept", quest = 10329, title = "Shutting Down Manaforge B'naar", npc = 19468, npcName = "Spymaster Thalodien", map = 1953, x = 32.0, y = 64.0, f = "e" },
					{ t = "turnin", quest = 10204, title = "Bloodgem Crystals", npc = 19469, npcName = "Magistrix Larynna", map = 1953, x = 32.0, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10329, itemName = "B'naar Access Crystal", count = 1, oi = 1, map = 1953, x = 23.9, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 23.2, y = 68.1, f = "e" },
				},
			},
			{
				note = "Hearth to Area 52|goto Netherstorm,32.3,65.5,3|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10329, title = "Shutting Down Manaforge B'naar", npc = 19468, npcName = "Spymaster Thalodien", map = 1953, x = 32.0, y = 64.0, f = "e" },
					{ t = "accept", quest = 10194, title = "Stealth Flight", npc = 19468, npcName = "Spymaster Thalodien", map = 1953, x = 32.0, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10205, target = "Warp-Raider Nesaad", count = 1, oi = 1, map = 1953, x = 28.2, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10205, title = "Warp-Raider Nesaad", npc = 19880, npcName = "Nether-Stalker Khay'ji", map = 1953, x = 32.4, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10194, title = "Stealth Flight", npc = 20162, npcName = "Veronia", map = 1953, x = 33.8, y = 64.2, f = "e" },
					{ t = "accept", quest = 10652, title = "Behind Enemy Lines", npc = 20162, npcName = "Veronia", map = 1953, x = 33.8, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10652, title = "Behind Enemy Lines", npc = 19840, npcName = "Caledis Brightdawn", map = 1953, x = 48.2, y = 86.6, f = "e" },
					{ t = "accept", quest = 10197, title = "A Convincing Disguise", npc = 19840, npcName = "Caledis Brightdawn", map = 1953, x = 48.2, y = 86.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Sunfury Arcanists", count = 1, map = 1953, x = 47.7, y = 84.9, f = "e" },
					{ t = "collect", quest = 10197, itemName = "Sunfury Arcanist Robes", count = 1, oi = 3, map = 1953, x = 47.7, y = 84.9, f = "e" },
				},
			},
			{
				note = "Go inside Manaforge Coruu to 49,81.5",
				goals = {
					{ t = "kill", target = "Sunfury Researchers", count = 1, map = 1953, x = 49.0, y = 81.5, f = "e" },
					{ t = "collect", quest = 10197, itemName = "Sunfury Researcher Gloves", count = 1, oi = 1, map = 1953, x = 49.0, y = 81.5, f = "e" },
				},
			},
			{
				note = "Go outside to 50.8,83.2",
				goals = {
					{ t = "kill", target = "Sunfury Guardsmen", count = 1, map = 1953, x = 50.8, y = 83.2, f = "e" },
					{ t = "collect", quest = 10197, itemName = "Sunfury Guardsman Medallion", count = 1, oi = 2, map = 1953, x = 50.8, y = 83.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10197, title = "A Convincing Disguise", npc = 19840, npcName = "Caledis Brightdawn", map = 1953, x = 48.2, y = 86.6, f = "e" },
					{ t = "accept", quest = 10198, title = "Information Gathering", npc = 19840, npcName = "Caledis Brightdawn", map = 1953, x = 48.2, y = 86.6, f = "e" },
				},
			},
			{
				note = "Use the Sunfury Disguise in your bags|havebuff Sunfury Disguise|use Sunfury Disguise##28607",
				goals = {
					{ t = "use", item = 28607, itemName = "Sunfury Disguise", f = "e" },
				},
			},
			{
				note = "Go inside Manaforge Coruu to 48.2,84.1",
				goals = {
					{ t = "goto", map = 1953, x = 48.2, y = 84.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10198, title = "Information Gathering", npc = 19840, npcName = "Caledis Brightdawn", f = "e" },
					{ t = "accept", quest = 10330, title = "Shutting Down Manaforge Coruu", npc = 19840, npcName = "Caledis Brightdawn", f = "e" },
				},
			},
		},
	})
end

