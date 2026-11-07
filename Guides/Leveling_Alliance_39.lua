-- TuWoW_Leveling — Guides/Leveling_Alliance_39.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-70-72",
		pack = "guides",
		title = "Northrend (70-72) (Parte 1/4)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-70-72-part-2",
		author = "TuWoW & Zygor",
		minLevel = 70,
		maxLevel = 72,
		zone = 114,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", map = 114, x = 18.2, y = 25.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Valiance Keep", text = "Valiance Keep", map = 114, x = 59.0, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Valiance Keep", text = "Valiance Keep", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11672, title = "Enlistment Day", npc = 25307, npcName = "Recruitment Officer Blythe", map = 114, x = 57.8, y = 67.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11672, title = "Enlistment Day", npc = 25250, npcName = "General Arlos", map = 114, x = 56.7, y = 72.6, f = "e" },
					{ t = "accept", quest = 11727, title = "A Time for Heroes", npc = 25250, npcName = "General Arlos", map = 114, x = 56.7, y = 72.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11727, title = "A Time for Heroes", npc = 25816, npcName = "Sergeant Hammerhill", map = 114, x = 56.4, y = 69.6, f = "e" },
					{ t = "accept", quest = 11797, title = "The Siege", npc = 25816, npcName = "Sergeant Hammerhill", map = 114, x = 56.4, y = 69.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11789, title = "A Soldier in Need", npc = 25825, npcName = "Medic Hawthorn", map = 114, x = 55.0, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11797, target = "Crypt Crawler", count = 6, oi = 1, map = 114, x = 54.4, y = 69.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11797, title = "The Siege", npc = 25816, npcName = "Sergeant Hammerhill", map = 114, x = 56.4, y = 69.6, f = "e" },
					{ t = "accept", quest = 11889, title = "Death From Above", npc = 25816, npcName = "Sergeant Hammerhill", map = 114, x = 56.4, y = 69.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11789, itemName = "Hawthorn's Anti-Venom", count = 1, oi = 1, map = 114, x = 57.5, y = 69.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11920, title = "Cultists Among Us", map = 114, x = 57.5, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11920, title = "Cultists Among Us", npc = 25298, npcName = "Captain \"Lefty\" Lugsail", map = 114, x = 57.8, y = 69.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11791, title = "Notify Arlos", npc = 25299, npcName = "Admiral Cantlebree", map = 114, x = 57.8, y = 69.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11791, title = "Notify Arlos", npc = 25250, npcName = "General Arlos", map = 114, x = 56.7, y = 72.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12141, title = "A Diplomatic Mission", npc = 25301, npcName = "Counselor Talbot", map = 114, x = 56.7, y = 72.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11792, title = "Enemies of the Light", npc = 25285, npcName = "Harbinger Vurenn", map = 114, x = 56.6, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11789, title = "A Soldier in Need", npc = 25825, npcName = "Medic Hawthorn", map = 114, x = 55.0, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11889, target = "Scourged Flamespitter", count = 6, oi = 1, map = 114, x = 55.0, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11889, title = "Death From Above", npc = 25816, npcName = "Sergeant Hammerhill", map = 114, x = 56.4, y = 69.6, f = "e" },
					{ t = "accept", quest = 11897, title = "Plug the Sinkholes", npc = 25816, npcName = "Sergeant Hammerhill", map = 114, x = 56.4, y = 69.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 50.9, y = 72.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 54.1, y = 63.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Cultist Necrolytes", count = 1, map = 114, x = 53.7, y = 60.1, f = "e" },
					{ t = "collect", quest = 11792, itemName = "Cultist Communique", count = 1, oi = 1, map = 114, x = 53.7, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11897, title = "Plug the Sinkholes", npc = 25816, npcName = "Sergeant Hammerhill", map = 114, x = 56.4, y = 69.6, f = "e" },
					{ t = "accept", quest = 11928, title = "Farshire", npc = 25816, npcName = "Sergeant Hammerhill", map = 114, x = 56.4, y = 69.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11927, title = "Word on the Street", npc = 26155, npcName = "Mark Hanes", map = 114, x = 56.8, y = 69.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11792, title = "Enemies of the Light", npc = 25285, npcName = "Harbinger Vurenn", map = 114, x = 56.6, y = 72.5, f = "e" },
					{ t = "accept", quest = 11793, title = "Further Investigation", npc = 25285, npcName = "Harbinger Vurenn", map = 114, x = 56.6, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11575, title = "Nick of Time", npc = 25249, npcName = "Midge", map = 114, x = 58.4, y = 67.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11927, title = "Word on the Street", npc = 25251, npcName = "Leryssa", map = 114, x = 58.7, y = 68.4, f = "e" },
					{ t = "accept", quest = 11599, title = "Thassarian, My Brother", npc = 25251, npcName = "Leryssa", map = 114, x = 58.7, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11793, title = "Further Investigation", npc = 25826, npcName = "Vindicator Yaala", map = 114, x = 58.6, y = 67.3, f = "e" },
					{ t = "accept", quest = 11794, title = "The Hunt is On", npc = 25826, npcName = "Vindicator Yaala", map = 114, x = 58.6, y = 67.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 25248, npcName = "\"Salty\" John Thorpe", map = 114, x = 58.6, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11707, title = "Distress Call", npc = 25737, npcName = "Airman Skyhopper", map = 114, x = 58.8, y = 68.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 25827, npcName = "Tom Hegger", map = 114, x = 59.2, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 25828, npcName = "Guard Mitchells", map = 114, x = 56.7, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11794, title = "The Hunt is On", npc = 25826, npcName = "Vindicator Yaala", map = 114, x = 58.6, y = 67.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11928, title = "Farshire", npc = 26083, npcName = "Gerald Green", map = 114, x = 58.2, y = 62.8, f = "e" },
					{ t = "accept", quest = 11901, title = "Military?  What Military?", npc = 26083, npcName = "Gerald Green", map = 114, x = 58.2, y = 62.8, f = "e" },
				},
			},
			{
				note = "Go inside the mine to 56.8,55.6",
				goals = {
					{ t = "turnin", quest = 11901, title = "Military? What Military?", map = 114, x = 56.8, y = 55.6, f = "e" },
					{ t = "accept", quest = 11902, title = "Pernicious Evidence", map = 114, x = 56.8, y = 55.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11599, title = "Thassarian, My Brother", npc = 25385, npcName = "William Allerton", map = 114, x = 56.0, y = 55.4, f = "e" },
					{ t = "accept", quest = 11600, title = "The Late William Allerton", npc = 25385, npcName = "William Allerton", map = 114, x = 56.0, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11902, title = "Pernicious Evidence", npc = 26083, npcName = "Gerald Green", map = 114, x = 58.2, y = 62.8, f = "e" },
					{ t = "accept", quest = 11903, title = "It's Time for Action", npc = 26083, npcName = "Gerald Green", map = 114, x = 58.2, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11913, title = "Take No Chances", npc = 26085, npcName = "Wendy Darren", map = 114, x = 58.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11908, title = "Reference Material", npc = 26084, npcName = "Jeremiah Hawning", map = 114, x = 58.2, y = 63.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11903, target = "Plagued Scavenger", count = 14, oi = 1, map = 114, x = 57.0, y = 61.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11908, item = 35481, itemName = "Fields, Factories and Workshops", count = 1, oi = 1, map = 114, x = 55.8, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11913, title = "Take No Chances", npc = 26085, npcName = "Wendy Darren", map = 114, x = 58.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11903, title = "It's Time for Action", npc = 26083, npcName = "Gerald Green", map = 114, x = 58.2, y = 62.8, f = "e" },
					{ t = "accept", quest = 11904, title = "Fruits of Our Labor", npc = 26083, npcName = "Gerald Green", map = 114, x = 58.2, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11908, title = "Reference Material", npc = 26084, npcName = "Jeremiah Hawning", map = 114, x = 58.2, y = 63.0, f = "e" },
					{ t = "accept", quest = 12035, title = "Repurposed Technology", npc = 26084, npcName = "Jeremiah Hawning", map = 114, x = 58.2, y = 63.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Harvest Collectors", count = 1, map = 114, x = 58.1, y = 61.1, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 57.9,53.4",
				goals = {
					{ t = "collect", quest = 11904, item = 35705, itemName = "Cart Release Key", count = 1, map = 114, x = 57.9, y = 53.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 57.2, y = 54.6, f = "e" },
				},
			},
			{
				note = "Go outside to 58.2,62.8",
				goals = {
					{ t = "turnin", quest = 11904, title = "Fruits of Our Labor", npc = 26083, npcName = "Gerald Green", map = 114, x = 58.2, y = 62.8, f = "e" },
					{ t = "accept", quest = 11962, title = "One Last Delivery", npc = 26083, npcName = "Gerald Green", map = 114, x = 58.2, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12035, title = "Repurposed Technology", npc = 26084, npcName = "Jeremiah Hawning", map = 114, x = 58.2, y = 63.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11962, title = "One Last Delivery", npc = 25235, npcName = "Hilda Stoneforge", map = 114, x = 57.3, y = 66.6, f = "e" },
					{ t = "accept", quest = 11963, title = "Weapons for Farshire", npc = 25235, npcName = "Hilda Stoneforge", map = 114, x = 57.3, y = 66.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11600, title = "The Late William Allerton", npc = 25251, npcName = "Leryssa", map = 114, x = 58.7, y = 68.4, f = "e" },
					{ t = "accept", quest = 11601, title = "Lost and Found", npc = 25251, npcName = "Leryssa", map = 114, x = 58.7, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11601, title = "Lost and Found", npc = 25245, npcName = "James Deacon", map = 114, x = 58.3, y = 68.0, f = "e" },
					{ t = "accept", quest = 11603, title = "In Wine, Truth", npc = 25245, npcName = "James Deacon", map = 114, x = 58.3, y = 68.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11963, title = "Weapons for Farshire", npc = 26083, npcName = "Gerald Green", map = 114, x = 58.2, y = 62.8, f = "e" },
					{ t = "accept", quest = 11965, title = "Call to Arms!", npc = 26083, npcName = "Gerald Green", map = 114, x = 58.2, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 57.3, y = 59.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11965, title = "Call to Arms!", npc = 26083, npcName = "Gerald Green", map = 114, x = 58.2, y = 62.8, f = "e" },
				},
			},
			{
				note = "Go underwater to 61.9,65.7",
				goals = {
					{ t = "collect", quest = 11603, itemName = "Kul Tiras Wine", count = 1, oi = 1, map = 114, x = 61.9, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11603, title = "In Wine, Truth", npc = 25302, npcName = "Old Man Colburn", map = 114, x = 58.5, y = 68.1, f = "e" },
					{ t = "accept", quest = 11604, title = "A Deserter", npc = 25302, npcName = "Old Man Colburn", map = 114, x = 58.5, y = 68.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11604, title = "A Deserter", npc = 25395, npcName = "Private Brau", map = 114, x = 56.7, y = 71.5, f = "e" },
					{ t = "accept", quest = 11932, title = "Cowards and Fools", npc = 25395, npcName = "Private Brau", map = 114, x = 56.7, y = 71.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12141, title = "A Diplomatic Mission", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
					{ t = "accept", quest = 11613, title = "Karuk's Oath", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11613, target = "Skadir Raider", count = 6, oi = 1, map = 114, x = 46.5, y = 77.2, f = "e" },
					{ t = "kill", quest = 11613, target = "Skadir Longboatsman", count = 5, oi = 2, map = 114, x = 46.5, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12471, title = "Cruelty of the Kvaldir", npc = 25636, npcName = "Captured Tuskarr Prisoner", map = 114, x = 44.2, y = 77.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11613, title = "Karuk's Oath", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
					{ t = "accept", quest = 11619, title = "Gamel the Cruel", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
					{ t = "turnin", quest = 12471, title = "Cruelty of the Kvaldir", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 46.4,78.2",
				goals = {
					{ t = "kill", quest = 11619, npc = 26449, target = "Gamel the Cruel", count = 1, oi = 1, map = 114, x = 46.4, y = 78.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11619, title = "Gamel the Cruel", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
					{ t = "accept", quest = 11620, title = "A Father's Words", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11620, title = "A Father's Words", npc = 25450, npcName = "Veehja", map = 114, x = 43.6, y = 80.5, f = "e" },
					{ t = "accept", quest = 11625, title = "The Trident of Naz'jan", npc = 25450, npcName = "Veehja", map = 114, x = 43.6, y = 80.5, f = "e" },
				},
			},
			{
				note = "Go into the big building to 54.7,89.1",
				goals = {
					{ t = "collect", quest = 11625, itemName = "Trident of Naz'jan", count = 1, oi = 1, map = 114, x = 54.7, y = 89.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11625, title = "The Trident of Naz'jan", npc = 25450, npcName = "Veehja", map = 114, x = 43.6, y = 80.5, f = "e" },
					{ t = "accept", quest = 11626, title = "The Emissary", npc = 25450, npcName = "Veehja", map = 114, x = 43.6, y = 80.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11626, npc = 26452, target = "Leviroth", count = 1, oi = 1, map = 114, x = 52.2, y = 88.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11626, title = "The Emissary", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11864, title = "A Mission Statement", npc = 25809, npcName = "Arch Druid Lathorius", map = 114, x = 57.0, y = 44.3, f = "e" },
					{ t = "accept", quest = 11866, title = "Ears of Our Enemies", npc = 25809, npcName = "Arch Druid Lathorius", map = 114, x = 57.0, y = 44.3, f = "e" },
					{ t = "accept", quest = 11876, title = "Help Those That Cannot Help Themselves", npc = 25809, npcName = "Arch Druid Lathorius", map = 114, x = 57.0, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11869, title = "Happy as a Clam", npc = 25810, npcName = "Hierophant Cenius", map = 114, x = 57.3, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11884, title = "Ned, Lord of Rhinos...", npc = 25812, npcName = "Killinger the Den Watcher", map = 114, x = 57.0, y = 44.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11865, title = "Unfit for Death", npc = 25811, npcName = "Zaza", map = 114, x = 56.8, y = 44.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 53.8, y = 40.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11869, target = "Loot Crazed Diver", count = 10, oi = 1, map = 114, x = 53.4, y = 42.7, f = "e" },
					{ t = "kill", target = "Loot Crazed Divers", count = 1, map = 114, x = 53.4, y = 42.7, f = "e" },
					{ t = "collect", quest = 11866, itemName = "Nesingwary Lackey Ear", count = 15, oi = 1, map = 114, x = 53.4, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11884, npc = 25801, target = "Nedar, Lord of Rhinos", count = 1, oi = 1, map = 114, x = 46.4, y = 40.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 56.2, y = 50.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11866, title = "Ears of Our Enemies", npc = 25809, npcName = "Arch Druid Lathorius", map = 114, x = 57.0, y = 44.3, f = "e" },
					{ t = "turnin", quest = 11876, title = "Help Those That Cannot Help Themselves", npc = 25809, npcName = "Arch Druid Lathorius", map = 114, x = 57.0, y = 44.3, f = "e" },
					{ t = "accept", quest = 11878, title = "Khu'nok Will Know", npc = 25809, npcName = "Arch Druid Lathorius", map = 114, x = 57.0, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11869, title = "Happy as a Clam", npc = 25810, npcName = "Hierophant Cenius", map = 114, x = 57.3, y = 44.1, f = "e" },
					{ t = "accept", quest = 11870, title = "The Abandoned Reach", npc = 25810, npcName = "Hierophant Cenius", map = 114, x = 57.3, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11884, title = "Ned, Lord of Rhinos...", npc = 25812, npcName = "Killinger the Den Watcher", map = 114, x = 57.0, y = 44.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11865, title = "Unfit for Death", npc = 25811, npcName = "Zaza", map = 114, x = 56.8, y = 44.0, f = "e" },
					{ t = "accept", quest = 11868, title = "The Culler Cometh", npc = 25811, npcName = "Zaza", map = 114, x = 56.8, y = 44.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11878, title = "Khu'nok Will Know", npc = 25862, npcName = "Khu'nok the Behemoth", map = 114, x = 59.5, y = 30.4, f = "e" },
					{ t = "accept", quest = 11879, title = "Kaw the Mammoth Destroyer", npc = 25862, npcName = "Khu'nok the Behemoth", map = 114, x = 59.5, y = 30.4, f = "e" },
				},
			},
			{
				note = "Go north on the Wooly Mammoth Bull to 53.7,23.9",
				goals = {
					{ t = "collect", quest = 11879, itemName = "Kaw's War Halberd", count = 1, oi = 1, map = 114, x = 53.7, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11879, title = "Kaw the Mammoth Destroyer", npc = 25809, npcName = "Arch Druid Lathorius", map = 114, x = 57.0, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11868, npc = 25803, target = "Karen \"I Don't Caribou\" the Culler", count = 1, oi = 1, map = 114, x = 57.3, y = 56.5, f = "e" },
				},
			},
		},
	})
end

