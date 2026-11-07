-- TuWoW_Leveling — Guides/Dailies_Horde_14.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-home-cities-exalted-reputation-guide-part-6",
		pack = "guides",
		title = "Home Cities Exalted Reputation Guide (Parte 6/8)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		next = "zygor/dailies/h-dai-icecrown-home-cities-exalted-reputation-guide-part-7",
		author = "TuWoW & Zygor",
		minLevel = 77,
		zone = 1420,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", quest = 792, target = "Vile Familiar", count = 8, oi = 1, map = 1411, x = 45.8, y = 59.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 45.5, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6394, itemName = "Thazz'ril's Pick", count = 1, oi = 1, map = 1411, x = 43.8, y = 53.8, f = "e" },
				},
			},
			{
				note = "Leave the cave ,0.3 |noway |c",
				goals = {
					{ t = "goto", map = 1411, x = 45.5, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 789, itemName = "Scorpid Worker Tail", count = 10, oi = 1, map = 1411, x = 41.3, y = 63.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 790, title = "Sarkoth (1)", npc = 3287, npcName = "Hana'zua", map = 1411, x = 40.6, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 790, itemName = "Sarkoth's Mangled Claw", count = 1, oi = 1, map = 1411, x = 40.6, y = 66.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 790, title = "Sarkoth (1)", npc = 3287, npcName = "Hana'zua", map = 1411, x = 40.6, y = 62.6, f = "e" },
					{ t = "accept", quest = 804, title = "Sarkoth (2)", npc = 3287, npcName = "Hana'zua", map = 1411, x = 40.6, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4402, title = "Galgar's Cactus Apple Surprise", npc = 9796, npcName = "Galgar", map = 1411, x = 42.7, y = 67.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 789, title = "Sting of the Scorpid", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
					{ t = "turnin", quest = 804, title = "Sarkoth (2)", npc = 3143, npcName = "Gornek", map = 1411, x = 42.1, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 792, title = "Vile Familiars", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.9, y = 69.2, f = "e" },
					{ t = "accept", quest = 794, title = "Burning Blade Medallion", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.9, y = 69.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6394, title = "Thazz'ril's Pick", npc = 11378, npcName = "Foreman Thazz'ril", map = 1411, x = 44.6, y = 68.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 45.5, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 794, itemName = "Burning Blade Medallion", count = 1, oi = 1, map = 1411, x = 42.7, y = 53.0, f = "e" },
				},
			},
			{
				note = "Leave the cave ,0.3 |noway |c",
				goals = {
					{ t = "goto", map = 1411, x = 45.5, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 794, title = "Burning Blade Medallion", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.8, y = 69.1, f = "e" },
					{ t = "accept", quest = 805, title = "Report to Sen'jin Village", npc = 3145, npcName = "Zureetha Fargaze", map = 1411, x = 42.8, y = 69.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2161, title = "A Peon's Burden", npc = 6786, npcName = "Ukor", map = 1411, x = 52.1, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 786, title = "Thwarting Kolkar Aggression", npc = 3140, npcName = "Lar Prowltusk", map = 1411, x = 54.2, y = 73.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 805, title = "Report to Sen'jin Village", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 56.0, y = 74.7, f = "e" },
					{ t = "accept", quest = 808, title = "Minshina's Skull", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 56.0, y = 74.7, f = "e" },
					{ t = "accept", quest = 826, title = "Zalazane", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 56.0, y = 74.7, f = "e" },
					{ t = "accept", quest = 823, title = "Report to Orgnil", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 56.0, y = 74.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 818, title = "A Solvent Spirit", npc = 3304, npcName = "Master Vornal", map = 1411, x = 55.9, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 817, title = "Practical Prey", npc = 3194, npcName = "Vel'rin Fang", map = 1411, x = 55.9, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 818, itemName = "Crawler Mucus", count = 8, oi = 2, map = 1411, x = 57.8, y = 77.3, f = "e" },
					{ t = "collect", quest = 818, itemName = "Intact Makrura Eye", count = 4, oi = 1, map = 1411, x = 57.8, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 817, itemName = "Durotar Tiger Fur", count = 4, oi = 1, map = 1411, x = 64.9, y = 80.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 826, itemName = "Zalazane's Head", count = 1, oi = 3, map = 1411, x = 67.4, y = 87.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 808, itemName = "Minshina's Skull", count = 1, oi = 1, map = 1411, x = 67.5, y = 87.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 826, target = "Hexed Troll", count = 8, oi = 1, map = 1411, x = 67.4, y = 87.2, f = "e" },
					{ t = "kill", quest = 826, target = "Voodoo Troll", count = 8, oi = 2, map = 1411, x = 67.4, y = 87.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 808, title = "Minshina's Skull", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 56.0, y = 74.7, f = "e" },
					{ t = "turnin", quest = 826, title = "Zalazane", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 56.0, y = 74.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 818, title = "A Solvent Spirit", npc = 3304, npcName = "Master Vornal", map = 1411, x = 55.9, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 817, title = "Practical Prey", npc = 3194, npcName = "Vel'rin Fang", map = 1411, x = 56.0, y = 73.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 51.3, y = 79.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 49.8, y = 81.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 47.7, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 46.2, y = 78.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 786, title = "Thwarting Kolkar Aggression", npc = 3140, npcName = "Lar Prowltusk", map = 1411, x = 54.2, y = 73.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 823, title = "Report to Orgnil", npc = 3142, npcName = "Orgnil Soulscar", map = 1411, x = 52.2, y = 43.1, f = "e" },
					{ t = "accept", quest = 806, title = "Dark Storms", npc = 3142, npcName = "Orgnil Soulscar", map = 1411, x = 52.2, y = 43.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 784, title = "Vanquish the Betrayers", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 52.0, y = 43.5, f = "e" },
					{ t = "accept", quest = 837, title = "Encroachment", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 52.0, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2161, title = "A Peon's Burden", npc = 6928, npcName = "Innkeeper Grosk", map = 1411, x = 51.5, y = 41.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 815, title = "Break a Few Eggs", npc = 3191, npcName = "Cook Torka", map = 1411, x = 51.1, y = 42.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 840, title = "Conscript of the Horde", npc = 3336, npcName = "Takrin Pathseeker", map = 1411, x = 50.8, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 791, title = "Carry Your Weight", npc = 3147, npcName = "Furl Scornbrow", map = 1411, x = 49.9, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 784, target = "Kul Tiras Marine", count = 8, oi = 2, map = 1411, x = 57.1, y = 53.2, f = "e" },
					{ t = "kill", quest = 784, target = "Kul Tiras Sailor", count = 10, oi = 1, map = 1411, x = 57.1, y = 53.2, f = "e" },
					{ t = "collect", quest = 791, itemName = "Canvas Scraps", count = 8, oi = 1, map = 1411, x = 57.1, y = 53.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 3192, target = "Lieutenant Benedict", count = 1, map = 1411, x = 59.7, y = 58.3, f = "e" },
					{ t = "collect", item = 4882, itemName = "Benedict's Key", count = 1, map = 1411, x = 59.7, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 4881, itemName = "Aged Envelope", count = 1, map = 1411, x = 59.3, y = 57.7, f = "e" },
					{ t = "accept", quest = 830, title = "The Admiral's Orders (1)", map = 1411, x = 59.3, y = 57.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 815, itemName = "Taillasher Egg", count = 3, oi = 1, map = 1411, x = 60.3, y = 82.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 784, title = "Vanquish the Betrayers", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 52.0, y = 43.5, f = "e" },
					{ t = "accept", quest = 825, title = "From The Wreckage....", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 52.0, y = 43.5, f = "e" },
					{ t = "turnin", quest = 830, title = "The Admiral's Orders", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 52.0, y = 43.5, f = "e" },
					{ t = "accept", quest = 831, title = "The Admiral's Orders", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 52.0, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 815, title = "Break a Few Eggs", npc = 3191, npcName = "Cook Torka", map = 1411, x = 51.1, y = 42.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 791, title = "Carry Your Weight", npc = 3147, npcName = "Furl Scornbrow", map = 1411, x = 49.9, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 825, itemName = "Gnomish Tools", count = 3, oi = 1, map = 1411, x = 60.8, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 825, title = "From The Wreckage....", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 52.0, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 837, target = "Razormane Quilboar", count = 4, oi = 1, map = 1411, x = 44.6, y = 48.6, f = "e" },
					{ t = "kill", quest = 837, target = "Razormane Scout", count = 4, oi = 2, map = 1411, x = 44.6, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 837, target = "Razormane Dustrunner", count = 4, oi = 3, map = 1411, x = 44.5, y = 41.0, f = "e" },
					{ t = "kill", quest = 837, target = "Razormane Battleguard", count = 4, oi = 4, map = 1411, x = 44.5, y = 41.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 816, title = "Lost But Not Forgotten", npc = 3193, npcName = "Misha Tor'kren", map = 1411, x = 43.1, y = 30.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 834, title = "Winds in the Desert", npc = 3293, npcName = "Rezlak", map = 1411, x = 46.4, y = 22.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 50.8, y = 31.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 834, itemName = "Sack of Supplies", count = 5, oi = 1, map = 1411, x = 48.6, y = 33.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 834, title = "Winds in the Desert", npc = 3293, npcName = "Rezlak", map = 1411, x = 46.4, y = 22.9, f = "e" },
					{ t = "accept", quest = 835, title = "Securing the Lines", npc = 3293, npcName = "Rezlak", map = 1411, x = 46.4, y = 22.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 51.7, y = 27.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 835, target = "Dustwind Savage", count = 12, oi = 1, map = 1411, x = 54.1, y = 26.9, f = "e" },
					{ t = "kill", quest = 835, target = "Dustwind Storm Witch", count = 8, oi = 2, map = 1411, x = 54.1, y = 26.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 835, title = "Securing the Lines", npc = 3293, npcName = "Rezlak", map = 1411, x = 46.4, y = 22.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 812, title = "Need for a Cure", npc = 3190, npcName = "Rhinag", map = 1411, x = 42.1, y = 15.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 813, title = "Finding the Antidote", npc = 3189, npcName = "Kor'ghan", map = 1454, x = 43.1, y = 50.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 813, itemName = "Venomtail Poison Sac", count = 4, oi = 1, map = 1411, x = 39.9, y = 20.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 813, title = "Finding the Antidote", npc = 3189, npcName = "Kor'ghan", map = 1454, x = 43.1, y = 50.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 831, title = "The Admiral's Orders", npc = 10540, npcName = "Vol'jin", map = 1454, x = 34.3, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5726, title = "Hidden Enemies (1)", npc = 4949, npcName = "Thrall", map = 1454, x = 31.8, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 812, title = "Need for a Cure", npc = 3190, npcName = "Rhinag", map = 1411, x = 42.1, y = 15.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 816, itemName = "Kron's Amulet", count = 1, oi = 1, map = 1411, x = 37.2, y = 17.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1411, x = 39.2, y = 32.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 806, itemName = "Fizzle's Claw", count = 1, oi = 1, map = 1411, x = 42.1, y = 26.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 837, title = "Encroachment", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.9, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 816, title = "Lost But Not Forgotten", npc = 3193, npcName = "Misha Tor'kren", map = 1411, x = 43.1, y = 30.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 806, title = "Dark Storms", npc = 3142, npcName = "Orgnil Soulscar", map = 1411, x = 52.3, y = 43.1, f = "e" },
					{ t = "accept", quest = 828, title = "Margoz", npc = 3142, npcName = "Orgnil Soulscar", map = 1411, x = 52.3, y = 43.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 828, title = "Margoz", npc = 3208, npcName = "Margoz", map = 1411, x = 56.4, y = 20.0, f = "e" },
					{ t = "accept", quest = 827, title = "Skull Rock", npc = 3208, npcName = "Margoz", map = 1411, x = 56.4, y = 20.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 827, itemName = "Searing Collar", count = 6, oi = 1, map = 1411, x = 55.1, y = 10.1, f = "e" },
					{ t = "collect", quest = 5726, itemName = "Lieutenant's Insignia", count = 1, oi = 1, map = 1411, x = 55.1, y = 10.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 827, title = "Skull Rock", npc = 3208, npcName = "Margoz", map = 1411, x = 56.4, y = 20.0, f = "e" },
					{ t = "accept", quest = 829, title = "Neeru Fireblade", npc = 3208, npcName = "Margoz", map = 1411, x = 56.4, y = 20.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 829, title = "Neeru Fireblade", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.5, y = 50.6, f = "e" },
					{ t = "accept", quest = 809, title = "Ak'Zeloth", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.5, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5726, title = "Hidden Enemies (1)", npc = 4949, npcName = "Thrall", map = 1454, x = 31.8, y = 37.8, f = "e" },
					{ t = "accept", quest = 5727, title = "Hidden Enemies (2)", npc = 4949, npcName = "Thrall", map = 1454, x = 31.8, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 3216, npcName = "Neeru Fireblade", map = 1454, x = 49.5, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5727, title = "Hidden Enemies (2)", npc = 4949, npcName = "Thrall", map = 1454, x = 31.8, y = 37.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 840, title = "Conscript of the Horde", npc = 3337, npcName = "Kargal Battlescar", map = 1413, x = 62.3, y = 19.4, f = "e" },
					{ t = "accept", quest = 842, title = "Crossroads Conscription", npc = 3337, npcName = "Kargal Battlescar", map = 1413, x = 62.3, y = 19.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 809, title = "Ak'Zeloth", npc = 3521, npcName = "Ak'Zeloth", map = 1413, x = 62.3, y = 20.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 868, title = "Egg Hunt", npc = 3428, npcName = "Korran", map = 1413, x = 51.1, y = 29.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1358, title = "Sample for Helbrim", npc = 3390, npcName = "Apothecary Helbrim", map = 1413, x = 51.4, y = 30.1, f = "e" },
					{ t = "accept", quest = 848, title = "Fungal Spores", npc = 3390, npcName = "Apothecary Helbrim", map = 1413, x = 51.4, y = 30.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 871, title = "Disrupt the Attacks", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.9, f = "e" },
					{ t = "accept", quest = 5041, title = "Supplies for the Crossroads", npc = 3429, npcName = "Thork", map = 1413, x = 51.5, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 867, title = "Harpy Raiders", npc = 3449, npcName = "Darsok Swiftdagger", map = 1413, x = 51.6, y = 30.9, f = "e" },
				},
			},
		},
	})
end

