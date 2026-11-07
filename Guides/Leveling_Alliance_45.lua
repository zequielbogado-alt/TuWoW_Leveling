-- TuWoW_Leveling — Guides/Leveling_Alliance_45.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-72-74-part-3",
		pack = "guides",
		title = "Northrend (72-74) (Parte 3/5)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-72-74-part-4",
		author = "TuWoW & Zygor",
		minLevel = 72,
		maxLevel = 74,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 11390, title = "I've Got a Flying Machine!", npc = 24399, npcName = "Steel Gate Chief Archaeologist", x = 30.8, y = 28.6, f = "e" },
					{ t = "accept", quest = 11391, title = "Steel Gate Patrol", npc = 24399, npcName = "Steel Gate Chief Archaeologist", x = 30.8, y = 28.6, f = "e" },
				},
			},
			{
				note = "Use the abilities on your hotbar as you fly around to fight the flying gargoyles",
				goals = {
					{ t = "kill", quest = 11391, target = "Gjalerbron Gargoyle", count = 8, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11391, title = "Steel Gate Patrol", npc = 24399, npcName = "Steel Gate Chief Archaeologist", x = 30.8, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 27.4, y = 32.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11393, title = "Where is Explorer Jaren?", npc = 23833, npcName = "Explorer Jaren", x = 24.2, y = 32.5, f = "e" },
					{ t = "accept", quest = 11394, title = "And You Thought Murlocs Smelled Bad!", npc = 23833, npcName = "Explorer Jaren", x = 24.2, y = 32.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Scourge mobs", count = 1, x = 22.6, y = 28.6, f = "e" },
					{ t = "collect", itemName = "Scourge Device", count = 1, x = 22.6, y = 28.6, f = "e" },
					{ t = "accept", quest = 11395, title = "It's a Scourge Device", x = 22.6, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11422, title = "Trident of the Son", npc = 24544, npcName = "Old Icefin", x = 19.8, y = 22.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11394, title = "And You Thought Murlocs Smelled Bad!", npc = 23833, npcName = "Explorer Jaren", x = 24.2, y = 32.5, f = "e" },
					{ t = "turnin", quest = 11395, title = "It's a Scourge Device", npc = 23833, npcName = "Explorer Jaren", x = 24.2, y = 32.5, f = "e" },
					{ t = "accept", quest = 11396, title = "Bring Down Those Shields", npc = 23833, npcName = "Explorer Jaren", x = 24.2, y = 32.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11422, itemName = "Rotgill's Trident", count = 1, oi = 1, x = 23.7, y = 35.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 22.7, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 21.9, y = 28.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 21.5, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11422, title = "Trident of the Son", npc = 24544, npcName = "Old Icefin", x = 19.8, y = 22.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11396, title = "Bring Down Those Shields", npc = 23833, npcName = "Explorer Jaren", x = 24.2, y = 32.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 25.1, y = 32.6, f = "e" },
				},
			},
			{
				note = "Follow the path up to 30.8,20.9",
				goals = {
					{ t = "collect", quest = 11154, itemName = "Darkclaw Guano", count = 10, oi = 1, x = 30.8, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11154, title = "Scare the Guano Out of Them!", npc = 24227, npcName = "Engineer Feknut", x = 30.2, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11248, title = "Operation: Skornful Wrath", npc = 24060, npcName = "Westguard Sergeant", x = 44.4, y = 26.4, f = "e" },
					{ t = "accept", quest = 11245, title = "Towers of Certain Doom", npc = 24060, npcName = "Westguard Sergeant", x = 44.4, y = 26.4, f = "e" },
					{ t = "accept", quest = 11246, title = "Gruesome, But Necessary", npc = 24060, npcName = "Westguard Sergeant", x = 44.4, y = 26.4, f = "e" },
					{ t = "accept", quest = 11247, title = "Burn Skorn, Burn!", npc = 24060, npcName = "Westguard Sergeant", x = 44.4, y = 26.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Winterskorn mobs", count = 1, x = 45.3, y = 27.0, f = "e" },
					{ t = "collect", itemName = "Vrykul Scroll of Ascension", count = 1, x = 45.3, y = 27.0, f = "e" },
					{ t = "accept", quest = 11249, title = "Stop the Ascension!", x = 45.3, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 43.7, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 43.6, y = 30.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 43.2, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11249, target = "Halfdan the Ice-Hearted", count = 1, oi = 1, x = 44.9, y = 35.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 46.9, y = 37.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 46.5, y = 33.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 46.0, y = 30.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 46.4, y = 28.2, f = "e" },
				},
			},
			{
				note = "Use your Westguard Command Insignia in your bags|use Westguard Command Insignia##33311",
				goals = {
					{ t = "turnin", quest = 11245, title = "Towers of Certain Doom", npc = 24060, npcName = "Westguard Sergeant", f = "e" },
					{ t = "turnin", quest = 11246, title = "Gruesome, But Necessary", npc = 24060, npcName = "Westguard Sergeant", f = "e" },
					{ t = "turnin", quest = 11247, title = "Burn Skorn, Burn!", npc = 24060, npcName = "Westguard Sergeant", f = "e" },
					{ t = "accept", quest = 11250, title = "All Hail the Conqueror of Skorn!", npc = 24060, npcName = "Westguard Sergeant", f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11329, title = "I'll Try Anything!", npc = 24056, npcName = "Christopher Sloan", x = 60.3, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11329, itemName = "Northern Barbfish", count = 5, oi = 1, x = 61.5, y = 18.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11329, title = "I'll Try Anything!", npc = 24056, npcName = "Christopher Sloan", x = 60.3, y = 18.7, f = "e" },
					{ t = "accept", quest = 11410, title = "The One That Got Away", npc = 24056, npcName = "Christopher Sloan", x = 60.3, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11410, target = "Frostfin", count = 1, oi = 1, x = 64.0, y = 19.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11410, title = "The One That Got Away", npc = 24056, npcName = "Christopher Sloan", x = 60.3, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11302, title = "The Enigmatic Frost Nymphs", npc = 24282, npcName = "Lieutenant Maeve", x = 61.8, y = 17.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11346, title = "The Book of Runes", npc = 24328, npcName = "Prospector Belvar", x = 62.3, y = 17.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11406, title = "Everything Must Be Ready", npc = 24139, npcName = "Gil Grisert", x = 62.6, y = 16.8, f = "e" },
					{ t = "accept", quest = 11269, title = "Down to the Wire", npc = 24139, npcName = "Gil Grisert", x = 62.6, y = 16.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11292, title = "Preying Upon the Weak", npc = 24131, npcName = "Trapper Jethan", x = 62.6, y = 16.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Fort Wildervar", x = 60.1, y = 16.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11284, title = "The Yeti Next Door", npc = 24176, npcName = "Foreman Colbey", x = 60.2, y = 15.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Frosthorn Rams", count = 1, x = 57.3, y = 18.6, f = "e" },
					{ t = "collect", item = 33352, itemName = "Tough Ram Meat", count = 4, x = 57.3, y = 18.6, f = "e" },
					{ t = "collect", quest = 11284, item = 33477, itemName = "Giant Yeti Meal", count = 1, x = 57.3, y = 18.6, f = "e" },
					{ t = "collect", quest = 11269, itemName = "Spotted Hippogryph Down", count = 10, oi = 1, x = 57.3, y = 18.6, f = "e" },
					{ t = "collect", quest = 11292, itemName = "Trapped Prey", count = 8, oi = 1, x = 57.3, y = 18.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 54.1, y = 8.2, f = "e" },
				},
			},
			{
				note = "Follow the path up to 61.1,2",
				goals = {
					{ t = "kill", target = "Inner Turmoil that spawns", count = 1, x = 61.1, y = 2.0, f = "e" },
					{ t = "collect", quest = 11322, itemName = "Cleansed of Your Inner Turmoil", count = 1, oi = 1, x = 61.1, y = 2.0, f = "e" },
				},
			},
			{
				note = "Go inside the fort to 28.8,44.1",
				goals = {
					{ t = "turnin", quest = 11250, title = "All Hail the Conqueror of Skorn!", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
					{ t = "accept", quest = 11235, title = "Dealing With Gjalerbron", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11249, title = "Stop the Ascension!", npc = 24038, npcName = "Father Levariol", x = 28.9, y = 44.0, f = "e" },
					{ t = "accept", quest = 11231, title = "Of Keys and Cages", npc = 24038, npcName = "Father Levariol", x = 28.9, y = 44.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11322, title = "The Cleansing", npc = 24273, npcName = "Watcher Moonleaf", x = 30.2, y = 28.7, f = "e" },
					{ t = "accept", quest = 11325, title = "In Worg's Clothing", npc = 24273, npcName = "Watcher Moonleaf", x = 30.2, y = 28.7, f = "e" },
				},
			},
			{
				note = "Use your Worg Disguise to turn into a Worg|use Worg Disguise##33618",
				goals = {
					{ t = "turnin", quest = 11325, title = "In Worg's Clothing", npc = 24261, npcName = "Ulfang", x = 29.7, y = 5.7, f = "e" },
					{ t = "accept", quest = 11414, title = "Brother Betrayers", npc = 24261, npcName = "Ulfang", x = 29.7, y = 5.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11414, npc = 24516, target = "Bjomolf", count = 1, oi = 1, x = 28.3, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11414, npc = 24517, target = "Varg", count = 1, oi = 2, x = 33.8, y = 29.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11235, target = "Gjalerbron Warrior", count = 15, oi = 1, x = 35.1, y = 16.0, f = "e" },
					{ t = "kill", quest = 11235, target = "Gjalerbron Rune-Caster", count = 8, oi = 2, x = 35.1, y = 16.0, f = "e" },
					{ t = "kill", quest = 11235, target = "Gjalerbron Sleep-Watcher", count = 8, oi = 3, x = 35.1, y = 16.0, f = "e" },
					{ t = "kill", target = "Gjalerbron mobs", count = 1, x = 35.1, y = 16.0, f = "e" },
					{ t = "collect", item = 33284, itemName = "Gjalerbron Cage Key", count = 10, x = 35.1, y = 16.0, f = "e" },
					{ t = "collect", item = 33290, itemName = "Large Gjalerbron Cage Key", count = 1, x = 35.1, y = 16.0, f = "e" },
					{ t = "collect", itemName = "Gjalerbron Attack Plans", count = 1, x = 35.1, y = 16.0, f = "e" },
					{ t = "accept", quest = 11237, title = "Gjalerbron Attack Plans", x = 35.1, y = 16.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11414, title = "Brother Betrayers", npc = 24261, npcName = "Ulfang", x = 29.7, y = 5.7, f = "e" },
					{ t = "accept", quest = 11416, title = "Eyes of the Eagle", npc = 24261, npcName = "Ulfang", x = 29.7, y = 5.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11416, itemName = "Eyes of the Eagle", count = 1, oi = 1, x = 41.4, y = 37.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11416, title = "Eyes of the Eagle", npc = 24261, npcName = "Ulfang", x = 29.7, y = 5.7, f = "e" },
					{ t = "accept", quest = 11326, title = "Alpha Worg", npc = 24261, npcName = "Ulfang", x = 29.7, y = 5.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11326, npc = 24277, target = "Garwal", count = 1, oi = 1, x = 26.3, y = 12.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11326, title = "Alpha Worg", npc = 24273, npcName = "Watcher Moonleaf", x = 30.1, y = 28.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11237, title = "Gjalerbron Attack Plans", npc = 23888, npcName = "Mage-Lieutenant Malister", x = 28.9, y = 44.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11235, title = "Dealing With Gjalerbron", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
					{ t = "accept", quest = 11236, title = "Necro Overlord Mezhen", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11231, title = "Of Keys and Cages", npc = 24038, npcName = "Father Levariol", x = 28.9, y = 44.0, f = "e" },
					{ t = "accept", quest = 11239, title = "In Service to the Light", npc = 24038, npcName = "Father Levariol", x = 28.9, y = 44.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11432, title = "Sleeping Giants", npc = 23888, npcName = "Mage-Lieutenant Malister", x = 28.9, y = 44.2, f = "e" },
				},
			},
			{
				note = "Go up onto the platform to 35.7,15.8",
				goals = {
					{ t = "kill", quest = 11239, target = "Deathless Watcher", count = 10, oi = 1, x = 35.7, y = 15.8, f = "e" },
					{ t = "kill", quest = 11239, target = "Putrid Wight", count = 2, oi = 3, x = 35.7, y = 15.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11236, npc = 24018, target = "Necro Overlord Mezhen", count = 1, oi = 1, x = 38.8, y = 13.0, f = "e" },
					{ t = "collect", itemName = "Mezhen's Writings", count = 1, x = 38.8, y = 13.0, f = "e" },
					{ t = "accept", quest = 11452, title = "The Slumbering King", x = 38.8, y = 13.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 39.8, y = 7.6, f = "e" },
				},
			},
			{
				note = "Go inside and downstairs to 40.9,6.5",
				goals = {
					{ t = "kill", quest = 11452, npc = 24023, target = "Queen Angerboda", count = 1, oi = 1, x = 40.9, y = 6.5, f = "e" },
				},
			},
			{
				note = "Go outside to 34.5,13.2|n",
				goals = {
					{ t = "goto", x = 34.5, y = 13.2, f = "e" },
				},
			},
			{
				note = "Go down the stairs to 35,11.9",
				goals = {
					{ t = "kill", quest = 11239, target = "Fearsome Horror", count = 4, oi = 2, x = 35.0, y = 11.9, f = "e" },
					{ t = "kill", target = "Necrolords", count = 1, x = 35.0, y = 11.9, f = "e" },
					{ t = "collect", item = 34083, itemName = "Awakening Rod", count = 5, x = 35.0, y = 11.9, f = "e" },
					{ t = "kill", quest = 11432, target = "Dormant Vrykul", count = 5, oi = 1, x = 35.0, y = 11.9, f = "e" },
				},
			},
			{
				note = "Go inside the fort to 28.9,44.2",
				goals = {
					{ t = "turnin", quest = 11432, title = "Sleeping Giants", npc = 23888, npcName = "Mage-Lieutenant Malister", x = 28.9, y = 44.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11236, title = "Necro Overlord Mezhen", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
					{ t = "turnin", quest = 11452, title = "The Slumbering King", npc = 23749, npcName = "Captain Adams", x = 28.8, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11239, title = "In Service to the Light", npc = 24038, npcName = "Father Levariol", x = 28.9, y = 44.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 59.7, y = 13.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11284, target = "Shatterhorn", count = 1, oi = 1, x = 60.5, y = 11.9, f = "e" },
				},
			},
			{
				note = "Go outside to 60.2,15.6",
				goals = {
					{ t = "turnin", quest = 11284, title = "The Yeti Next Door", npc = 24176, npcName = "Foreman Colbey", x = 60.2, y = 15.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11269, title = "Down to the Wire", npc = 24139, npcName = "Gil Grisert", x = 62.6, y = 16.8, f = "e" },
					{ t = "accept", quest = 11418, title = "We Call Him Steelfeather", npc = 24139, npcName = "Gil Grisert", x = 62.6, y = 16.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11292, title = "Preying Upon the Weak", npc = 24131, npcName = "Trapper Jethan", x = 62.6, y = 16.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11418, title = "We Call Him Steelfeather", npc = 24139, npcName = "Gil Grisert", x = 62.6, y = 16.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11302, title = "The Enigmatic Frost Nymphs", npc = 24117, npcName = "Lurielle", x = 61.5, y = 22.8, f = "e" },
					{ t = "accept", quest = 11313, title = "Spirits of the Ice", npc = 24117, npcName = "Lurielle", x = 61.5, y = 22.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Ice Elementals", count = 1, x = 60.6, y = 22.4, f = "e" },
					{ t = "collect", quest = 11313, itemName = "Icy Core", count = 15, oi = 1, x = 60.6, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11313, title = "Spirits of the Ice", npc = 24117, npcName = "Lurielle", x = 61.5, y = 22.8, f = "e" },
					{ t = "accept", quest = 11314, title = "The Fallen Sisters", npc = 24117, npcName = "Lurielle", x = 61.5, y = 22.8, f = "e" },
					{ t = "accept", quest = 11315, title = "Wild Vines", npc = 24117, npcName = "Lurielle", x = 61.5, y = 22.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11315, target = "Scarlet Ivy", count = 8, oi = 1, x = 53.3, y = 27.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11314, title = "The Fallen Sisters", npc = 24117, npcName = "Lurielle", x = 61.5, y = 22.8, f = "e" },
					{ t = "turnin", quest = 11315, title = "Wild Vines", npc = 24117, npcName = "Lurielle", x = 61.5, y = 22.8, f = "e" },
					{ t = "accept", quest = 11316, title = "Spawn of the Twisted Glade", npc = 24117, npcName = "Lurielle", x = 61.5, y = 22.8, f = "e" },
					{ t = "accept", quest = 11319, title = "Seeds of the Blacksouled Keepers", npc = 24117, npcName = "Lurielle", x = 61.5, y = 22.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11316, target = "Thornvine Creeper", count = 10, oi = 1, x = 54.7, y = 20.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11316, title = "Spawn of the Twisted Glade", npc = 24117, npcName = "Lurielle", x = 61.5, y = 22.8, f = "e" },
					{ t = "turnin", quest = 11319, title = "Seeds of the Blacksouled Keepers", npc = 24117, npcName = "Lurielle", x = 61.5, y = 22.8, f = "e" },
					{ t = "accept", quest = 11428, title = "Keeper Witherleaf", npc = 24117, npcName = "Lurielle", x = 61.5, y = 22.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11428, npc = 24638, target = "Keeper Witherleaf", count = 1, oi = 1, x = 53.7, y = 18.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11428, title = "Keeper Witherleaf", npc = 24117, npcName = "Lurielle", x = 61.5, y = 22.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Iron Rune Stonecallers and Iron Rune Binders", count = 1, x = 65.0, y = 28.5, f = "e" },
					{ t = "collect", item = 33778, itemName = "Book of Runes - Chapter 1", count = 1, x = 65.0, y = 28.5, f = "e" },
					{ t = "collect", item = 33779, itemName = "Book of Runes - Chapter 2", count = 1, x = 65.0, y = 28.5, f = "e" },
					{ t = "collect", item = 33780, itemName = "Book of Runes - Chapter 3", count = 1, x = 65.0, y = 28.5, f = "e" },
					{ t = "collect", quest = 11346, itemName = "The Book of Runes", count = 1, oi = 1, x = 65.0, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11346, title = "The Book of Runes", npc = 24328, npcName = "Prospector Belvar", x = 62.3, y = 17.2, f = "e" },
					{ t = "accept", quest = 11349, title = "Mastering the Runes", npc = 24328, npcName = "Prospector Belvar", x = 62.3, y = 17.2, f = "e" },
				},
			},
		},
	})
end

