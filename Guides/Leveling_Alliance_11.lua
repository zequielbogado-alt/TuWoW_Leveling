-- TuWoW_Leveling — Guides/Leveling_Alliance_11.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-death-knight-55-60",
		pack = "guides",
		title = "Death Knight (55-60) (Parte 1/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-death-knight-55-60-part-2",
		author = "TuWoW & Zygor",
		minLevel = 55,
		maxLevel = 60,
		zone = 1423,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12593, title = "In Service Of The Lich King", npc = 25462, npcName = "The Lich King", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12593, title = "In Service Of The Lich King", npc = 28357, npcName = "Instructor Razuvious", map = 1423, x = 48.0, y = 28.5, f = "e" },
					{ t = "accept", quest = 12619, title = "The Emblazoned Runeblade", npc = 28357, npcName = "Instructor Razuvious", map = 1423, x = 48.0, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Battle-worn Sword", count = 1, map = 1423, x = 47.4, y = 31.0, f = "e" },
					{ t = "collect", quest = 12619, itemName = "Runebladed Sword", count = 1, oi = 1, map = 1423, x = 47.4, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12619, title = "The Emblazoned Runeblade", npc = 28357, npcName = "Instructor Razuvious", map = 1423, x = 48.0, y = 28.5, f = "e" },
					{ t = "accept", quest = 12842, title = "Runeforging: Preparation For Battle", npc = 28357, npcName = "Instructor Razuvious", map = 1423, x = 48.0, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1423, x = 47.4, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12842, title = "Runeforging: Preparation For Battle", npc = 28357, npcName = "Instructor Razuvious", map = 1423, x = 48.0, y = 28.5, f = "e" },
					{ t = "accept", quest = 12848, title = "The Endless Hunger", npc = 28357, npcName = "Instructor Razuvious", map = 1423, x = 48.0, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1423, x = 48.9, y = 28.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12848, title = "The Endless Hunger", npc = 28357, npcName = "Instructor Razuvious", map = 1423, x = 48.0, y = 28.5, f = "e" },
					{ t = "accept", quest = 12636, title = "The Eye Of Acherus", npc = 28357, npcName = "Instructor Razuvious", map = 1423, x = 48.0, y = 28.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12636, title = "The Eye Of Acherus", npc = 25462, npcName = "The Lich King", map = 1423, x = 51.3, y = 35.2, f = "e" },
					{ t = "accept", quest = 12641, title = "Death Comes From On High", npc = 25462, npcName = "The Lich King", map = 1423, x = 51.3, y = 35.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1423, x = 52.1, y = 35.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12641, title = "Death Comes From On High", npc = 25462, npcName = "The Lich King", map = 1423, x = 51.3, y = 35.2, f = "e" },
					{ t = "accept", quest = 12657, title = "The Might Of The Scourge", npc = 25462, npcName = "The Lich King", map = 1423, x = 51.3, y = 35.2, f = "e" },
				},
			},
			{
				note = "Stand on the pink glowing circle at the bottom of the stairs to teleport to the bottom level of Ebon Hold,0.3|noway|c",
				goals = {
					{ t = "goto", map = 1423, x = 50.1, y = 32.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12657, title = "The Might Of The Scourge", npc = 28444, npcName = "Highlord Darion Mograine", map = 1423, x = 48.9, y = 29.7, f = "e" },
					{ t = "accept", quest = 12850, title = "Report To Scourge Commander Thalanor", npc = 28444, npcName = "Highlord Darion Mograine", map = 1423, x = 48.9, y = 29.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12849, title = "The Power Of Blood, Frost And Unholy", npc = 28472, npcName = "Lord Thorval", map = 1423, x = 47.5, y = 26.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12850, title = "Report To Scourge Commander Thalanor", npc = 28510, npcName = "Scourge Commander Thalanor", map = 1423, x = 51.6, y = 34.5, f = "e" },
					{ t = "accept", quest = 12670, title = "The Scarlet Harvest", npc = 28510, npcName = "Scourge Commander Thalanor", map = 1423, x = 51.6, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1423, x = 52.1, y = 35.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12670, title = "The Scarlet Harvest", npc = 28377, npcName = "Prince Valanar", map = 1423, x = 52.3, y = 34.0, f = "e" },
					{ t = "accept", quest = 12678, title = "If Chaos Drives, Let Suffering Hold The Reins", npc = 28377, npcName = "Prince Valanar", map = 1423, x = 52.3, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12680, title = "Grand Theft Palomino", npc = 28653, npcName = "Salanar the Horseman", map = 1423, x = 52.5, y = 34.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12733, title = "Death's Challenge", npc = 29047, npcName = "Olrun the Battlecaller", map = 1423, x = 54.6, y = 34.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12733, title = "Death's Challenge", npc = 29047, npcName = "Olrun the Battlecaller", map = 1423, x = 54.6, y = 34.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12679, title = "Tonight We Dine In Havenshire", npc = 28647, npcName = "Orithos the Sky Darkener", map = 1423, x = 53.2, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12678, target = "Scarlet Crusader", count = 10, oi = 1, map = 1423, x = 51.8, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12711, title = "Abandoned Mail", map = 1423, x = 55.2, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12678, npc = 28660, target = "Citizen of Havenshire", count = 10, oi = 2, map = 1423, x = 56.4, y = 45.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12679, itemName = "Saronite Arrow", count = 15, oi = 1, map = 1423, x = 56.2, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1423, x = 55.6, y = 43.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12680, title = "Grand Theft Palomino", npc = 28653, npcName = "Salanar the Horseman", map = 1423, x = 52.5, y = 34.6, f = "e" },
					{ t = "accept", quest = 12687, title = "Into the Realm of Shadows", npc = 28653, npcName = "Salanar the Horseman", map = 1423, x = 52.5, y = 34.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1423, x = 52.8, y = 43.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1423, x = 52.5, y = 34.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12687, title = "Into the Realm of Shadows", npc = 28653, npcName = "Salanar the Horseman", map = 1423, x = 52.5, y = 34.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12678, title = "If Chaos Drives, Let Suffering Hold The Reins", npc = 28377, npcName = "Prince Valanar", map = 1423, x = 52.3, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12679, title = "Tonight We Dine In Havenshire", npc = 28647, npcName = "Orithos the Sky Darkener", map = 1423, x = 53.2, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 56, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12697, title = "Gothik the Harvester", npc = 28377, npcName = "Prince Valanar", map = 1423, x = 52.3, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12697, title = "Gothik the Harvester", npc = 28658, npcName = "Gothik the Harvester", map = 1423, x = 54.1, y = 35.0, f = "e" },
					{ t = "accept", quest = 12698, title = "The Gift That Keeps On Giving", npc = 28658, npcName = "Gothik the Harvester", map = 1423, x = 54.1, y = 35.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1423, x = 58.2, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12698, title = "The Gift That Keeps On Giving", npc = 28658, npcName = "Gothik the Harvester", map = 1423, x = 54.1, y = 35.0, f = "e" },
					{ t = "accept", quest = 12700, title = "An Attack Of Opportunity", npc = 28658, npcName = "Gothik the Harvester", map = 1423, x = 54.1, y = 35.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12700, title = "An Attack Of Opportunity", npc = 28377, npcName = "Prince Valanar", map = 1423, x = 52.3, y = 34.0, f = "e" },
					{ t = "accept", quest = 12701, title = "Massacre At Light's Point", npc = 28377, npcName = "Prince Valanar", map = 1423, x = 52.3, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12701, target = "Scarlet Defender", count = 100, oi = 1, map = 1423, x = 58.5, y = 33.0, f = "e" },
				},
			},
			{
				note = "Use your Skeletal Gryphon Escape ability on your hotbar to escape to Death's Breach,0.5|noway|petaction Skeletal Gryphon Escape|c",
				goals = {
					{ t = "goto", map = 1423, x = 52.6, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12701, title = "Massacre At Light's Point", npc = 28377, npcName = "Prince Valanar", map = 1423, x = 52.3, y = 34.0, f = "e" },
					{ t = "accept", quest = 12706, title = "Victory At Death's Breach!", npc = 28377, npcName = "Prince Valanar", map = 1423, x = 52.3, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1423, x = 53.1, y = 32.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12706, title = "Victory At Death's Breach!", npc = 28444, npcName = "Highlord Darion Mograine", map = 1423, x = 48.9, y = 29.7, f = "e" },
					{ t = "accept", quest = 12714, title = "The Will Of The Lich King", npc = 28444, npcName = "Highlord Darion Mograine", map = 1423, x = 48.9, y = 29.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1423, x = 52.1, y = 35.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12714, title = "The Will Of The Lich King", npc = 28907, npcName = "Prince Valanar", map = 1423, x = 53.5, y = 36.6, f = "e" },
					{ t = "accept", quest = 12715, title = "The Crypt of Remembrance", npc = 28907, npcName = "Prince Valanar", map = 1423, x = 53.5, y = 36.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12716, title = "The Plaguebringer's Request", npc = 28919, npcName = "Noth the Plaguebringer", map = 1423, x = 55.9, y = 52.4, f = "e" },
				},
			},
			{
				note = "Go southwest into the crypt to 54.3,57.3",
				goals = {
					{ t = "turnin", quest = 12715, title = "The Crypt of Remembrance", npc = 28911, npcName = "Prince Keleseth", map = 1423, x = 54.3, y = 57.3, f = "e" },
					{ t = "accept", quest = 12719, title = "Nowhere To Run And Nowhere To Hide", npc = 28911, npcName = "Prince Keleseth", map = 1423, x = 54.3, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12722, title = "Lambs To The Slaughter", npc = 28910, npcName = "Baron Rivendare", map = 1423, x = 54.7, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12716, itemName = "Empty Cauldron", count = 1, oi = 1, map = 1423, x = 57.8, y = 61.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12716, itemName = "Iron Chain", count = 1, oi = 2, map = 1423, x = 62.0, y = 60.2, f = "e" },
				},
			},
			{
				note = "Run around the town and do the following:",
				goals = {
					{ t = "kill", quest = 12722, target = "Scarlet Crusade Soldier", count = 10, oi = 1, f = "e" },
					{ t = "collect", quest = 12716, itemName = "Crusader Skull", count = 10, oi = 3, f = "e" },
					{ t = "kill", quest = 12722, target = "Citizen of New Avalon", count = 15, oi = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12719, npc = 28945, target = "Mayor Quimby", count = 1, oi = 1, map = 1423, x = 52.2, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12719, itemName = "New Avalon Registry", count = 1, oi = 2, map = 1423, x = 52.5, y = 71.0, f = "e" },
				},
			},
			{
				note = "Go northeast into the crypt to 54.3,57.3",
				goals = {
					{ t = "turnin", quest = 12719, title = "Nowhere To Run And Nowhere To Hide", npc = 28911, npcName = "Prince Keleseth", map = 1423, x = 54.3, y = 57.3, f = "e" },
					{ t = "accept", quest = 12720, title = "How To Win Friends And Influence Enemies", npc = 28911, npcName = "Prince Keleseth", map = 1423, x = 54.3, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12722, title = "Lambs To The Slaughter", npc = 28910, npcName = "Baron Rivendare", map = 1423, x = 54.7, y = 57.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12716, title = "The Plaguebringer's Request", npc = 28919, npcName = "Noth the Plaguebringer", map = 1423, x = 55.9, y = 52.4, f = "e" },
					{ t = "accept", quest = 12717, title = "Noth's Special Brew", npc = 28919, npcName = "Noth the Plaguebringer", map = 1423, x = 55.9, y = 52.4, f = "e" },
				},
			},
			{
				note = "Click the big Plague Cauldron|tip It's a huge black pot bouncing around on the platform in the field.",
				goals = {
					{ t = "turnin", quest = 12717, title = "Noth's Special Brew", map = 1423, x = 56.1, y = 52.1, f = "e" },
				},
			},
			{
				note = "Open the Ornate Jeweled Box in your bags|use Ornate Jeweled Box##39418",
				goals = {
					{ t = "use", item = 39418, itemName = "Ornate Jeweled Box", map = 1423, x = 55.9, y = 60.5, f = "e" },
				},
			},
			{
				note = "Go northwest into the crypt to 54.3,57.3",
				goals = {
					{ t = "turnin", quest = 12720, title = "How To Win Friends And Influence Enemies", npc = 28911, npcName = "Prince Keleseth", map = 1423, x = 54.3, y = 57.3, f = "e" },
					{ t = "accept", quest = 12723, title = "Behind Scarlet Lines", npc = 28911, npcName = "Prince Keleseth", map = 1423, x = 54.3, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12723, title = "Behind Scarlet Lines", npc = 28914, npcName = "Orbaz Bloodbane", map = 1423, x = 56.3, y = 79.8, f = "e" },
					{ t = "accept", quest = 12724, title = "The Path Of The Righteous Crusader", npc = 28914, npcName = "Orbaz Bloodbane", map = 1423, x = 56.3, y = 79.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12725, title = "Brothers In Death", npc = 28913, npcName = "Thassarian", map = 1423, x = 56.3, y = 80.2, f = "e" },
				},
			},
			{
				note = "Go northeast into Scarlet Hold and into the basement to 63.0,67.8",
				goals = {
					{ t = "turnin", quest = 12725, title = "Brothers In Death", npc = 28912, npcName = "Koltira Deathweaver", map = 1423, x = 63.0, y = 67.8, f = "e" },
					{ t = "accept", quest = 12727, title = "Bloody Breakout", npc = 28912, npcName = "Koltira Deathweaver", map = 1423, x = 63.0, y = 67.8, f = "e" },
				},
			},
			{
				note = "Koltira Deathweaver forms a bubble and you have to fight the mobs as the come in waves",
				goals = {
					{ t = "collect", quest = 12727, itemName = "Valroth's Head", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 57, f = "e" },
				},
			},
			{
				note = "Go upstairs in the fort to 63.0,68.3",
				goals = {
					{ t = "collect", quest = 12724, itemName = "New Avalon Patrol Schedule", count = 1, oi = 1, map = 1423, x = 63.0, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12724, title = "The Path Of The Righteous Crusader", npc = 28914, npcName = "Orbaz Bloodbane", map = 1423, x = 56.3, y = 79.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12727, title = "Bloody Breakout", npc = 28913, npcName = "Thassarian", map = 1423, x = 56.3, y = 80.2, f = "e" },
					{ t = "accept", quest = 12738, title = "A Cry For Vengeance!", npc = 28913, npcName = "Thassarian", map = 1423, x = 56.3, y = 80.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12738, title = "A Cry For Vengeance!", npc = 29053, npcName = "Knight Commander Plaguefist", map = 1423, x = 52.9, y = 81.5, f = "e" },
					{ t = "accept", quest = 12742, title = "A Special Surprise", npc = 29053, npcName = "Knight Commander Plaguefist", map = 1423, x = 52.9, y = 81.5, f = "e" },
					{ t = "accept", quest = 12743, title = "A Special Surprise", npc = 29053, npcName = "Knight Commander Plaguefist", map = 1423, x = 52.9, y = 81.5, f = "e" },
					{ t = "accept", quest = 12744, title = "A Special Surprise", npc = 29053, npcName = "Knight Commander Plaguefist", map = 1423, x = 52.9, y = 81.5, f = "e" },
					{ t = "accept", quest = 12745, title = "A Special Surprise", npc = 29053, npcName = "Knight Commander Plaguefist", map = 1423, x = 52.9, y = 81.5, f = "e" },
					{ t = "accept", quest = 12746, title = "A Special Surprise", npc = 29053, npcName = "Knight Commander Plaguefist", map = 1423, x = 52.9, y = 81.5, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "kill", quest = 12746, npc = 29070, target = "Valok the Righteous", count = 1, oi = 1, map = 1423, x = 54.5, y = 83.4, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "kill", quest = 12743, npc = 29065, target = "Yazmina Oakenthorn", count = 1, oi = 1, map = 1423, x = 54.2, y = 83.9, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "kill", quest = 12745, npc = 29068, target = "Goby Blastenheimer", count = 1, oi = 1, map = 1423, x = 53.9, y = 83.8, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "kill", quest = 12742, npc = 29061, target = "Ellen Stanbridge", count = 1, oi = 1, map = 1423, x = 53.5, y = 83.8, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "kill", quest = 12744, npc = 29067, target = "Donovan Pulfrost", count = 1, oi = 1, map = 1423, x = 54.0, y = 83.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12742, title = "A Special Surprise", npc = 29053, npcName = "Knight Commander Plaguefist", map = 1423, x = 52.9, y = 81.5, f = "e" },
					{ t = "turnin", quest = 12743, title = "A Special Surprise", npc = 29053, npcName = "Knight Commander Plaguefist", map = 1423, x = 52.9, y = 81.5, f = "e" },
					{ t = "turnin", quest = 12744, title = "A Special Surprise", npc = 29053, npcName = "Knight Commander Plaguefist", map = 1423, x = 52.9, y = 81.5, f = "e" },
					{ t = "turnin", quest = 12745, title = "A Special Surprise", npc = 29053, npcName = "Knight Commander Plaguefist", map = 1423, x = 52.9, y = 81.5, f = "e" },
					{ t = "turnin", quest = 12746, title = "A Special Surprise", npc = 29053, npcName = "Knight Commander Plaguefist", map = 1423, x = 52.9, y = 81.5, f = "e" },
					{ t = "accept", quest = 12751, title = "A Sort Of Homecoming", npc = 29053, npcName = "Knight Commander Plaguefist", map = 1423, x = 52.9, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12751, title = "A Sort Of Homecoming", npc = 28913, npcName = "Thassarian", map = 1423, x = 56.3, y = 80.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12754, title = "Ambush At The Overlook", npc = 28914, npcName = "Orbaz Bloodbane", map = 1423, x = 56.3, y = 79.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12754, itemName = "Scarlet Courier's Belongings", count = 1, oi = 1, map = 1423, x = 60.0, y = 78.5, f = "e" },
					{ t = "collect", quest = 12754, itemName = "Scarlet Courier's Message", count = 1, oi = 2, map = 1423, x = 60.0, y = 78.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12754, title = "Ambush At The Overlook", npc = 28914, npcName = "Orbaz Bloodbane", map = 1423, x = 56.3, y = 79.8, f = "e" },
					{ t = "accept", quest = 12755, title = "A Meeting With Fate", npc = 28914, npcName = "Orbaz Bloodbane", map = 1423, x = 56.3, y = 79.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12755, title = "A Meeting With Fate", npc = 29077, npcName = "High General Abbendis", map = 1423, x = 65.6, y = 83.8, f = "e" },
					{ t = "accept", quest = 12756, title = "The Scarlet Onslaught Emerges", npc = 29077, npcName = "High General Abbendis", map = 1423, x = 65.6, y = 83.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12756, title = "The Scarlet Onslaught Emerges", npc = 28914, npcName = "Orbaz Bloodbane", map = 1423, x = 56.3, y = 79.8, f = "e" },
					{ t = "accept", quest = 12757, title = "Scarlet Armies Approach...", npc = 28914, npcName = "Orbaz Bloodbane", map = 1423, x = 56.3, y = 79.8, f = "e" },
				},
			},
			{
				note = "Click the Portal to Acherus to go to Ebon Hold,0.5|noway|c",
				goals = {
					{ t = "goto", map = 1423, x = 50.2, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12757, title = "Scarlet Armies Approach...", npc = 28444, npcName = "Highlord Darion Mograine", map = 1423, x = 48.9, y = 29.7, f = "e" },
					{ t = "accept", quest = 12778, title = "The Scarlet Apocalypse", npc = 28444, npcName = "Highlord Darion Mograine", map = 1423, x = 48.9, y = 29.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1423, x = 52.1, y = 35.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12778, title = "The Scarlet Apocalypse", npc = 29110, npcName = "The Lich King", map = 1423, x = 53.6, y = 36.9, f = "e" },
					{ t = "accept", quest = 12779, title = "An End To All Things...", npc = 29110, npcName = "The Lich King", map = 1423, x = 53.6, y = 36.9, f = "e" },
				},
			},
			{
				note = "Click the Horn of the Frostbrood in your bags|use Horn of the Frostbrood##39700",
				goals = {
					{ t = "use", item = 39700, itemName = "Horn of the Frostbrood", f = "e" },
					{ t = "kill", quest = 12779, target = "Scarlet Soldiers", count = 150, oi = 1, f = "e" },
				},
			},
		},
	})
end

