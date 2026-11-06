-- TuWoW_Leveling — Guides/Leveling_Horde_07.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-orc-and-troll-starter-1-13-part-2",
		pack = "guides",
		title = "Orc & Troll Starter (Parte 2/3)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-orc-and-troll-starter-1-13-part-3",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1411,
		version = 1,
		races = { "Orc", "Troll" },
		steps = {
			{
				note = "Cast Lesser Heal (Rank 2) on Grunt Kor'ja. Cast Power Word: Fortitude on Grunt Kor'ja.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "complete", quest = 5648, title = "Garments of Spirituality", note = "Heal and Fortify Grunt Kor'ja", map = 1411, x = 53.1, y = 46.46, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5648, title = "Garments of Spirituality", npc = 3706, npcName = "Tai'jin", map = 1411, x = 54.26, y = 42.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3169, npcName = "Tarshaw Jaggedscar", map = 1411, x = 54.19, y = 42.47, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3173, npcName = "Swart", map = 1411, x = 54.42, y = 42.59, f = "e" },
				},
			},
			{
				note = "We will train Mining and Blacksmithing. Allows you to make and use Sharpening Stones. Increases damage. Mine Copper Ore as you see it. Use the Rough Stones to make sharpening stones.",
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "complete", quest = 2161, title = "A Peon's Burden", note = "Click Here to Continue" },
				},
			},
			{
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "buy", item = 2901, itemName = "Mining Pick", map = 1411, x = 52.98, y = 41.97, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "skill", level = 75, skill = "Mining" },
				},
			},
			{
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "skill", level = 75, skill = "Blacksmithing" },
				},
			},
			{
				note = "Outside behind the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3172, npcName = "Dhugru Gorelust", map = 1411, x = 54.38, y = 41.19, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Outside behind the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6027, npcName = "Kitha", map = 1411, x = 54.71, y = 41.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2161, title = "A Peon's Burden", npc = 6928, npcName = "Innkeeper Grosk", map = 1411, x = 51.52, y = 41.65, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 815, title = "Break a Few Eggs", npc = 3191, npcName = "Cook Torka", map = 1411, x = 51.11, y = 42.45, f = "e" },
				},
			},
			{
				label = "Kill_Razormane_Quilboars_And_Scouts",
				along = true,
				goals = {
					{ t = "kill", quest = 837, npc = 3111, target = "Razormane Quilboar", count = 4, oi = 1, map = 1411, x = 46.17, y = 49.03, f = "e" },
					{ t = "kill", quest = 837, npc = 3112, target = "Razormane Scout", count = 4, oi = 2, map = 1411, x = 46.17, y = 49.03, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "accept", quest = 791, title = "Carry Your Weight", npc = 3147, npcName = "Furl Scornbrow", map = 1411, x = 49.89, y = 40.38, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3170, npcName = "Kaplak", map = 1411, x = 51.98, y = 43.69, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 3706, npcName = "Tai'jin", map = 1411, x = 54.26, y = 42.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3169, npcName = "Tarshaw Jaggedscar", map = 1411, x = 54.19, y = 42.47, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3173, npcName = "Swart", map = 1411, x = 54.42, y = 42.59, f = "e" },
				},
			},
			{
				note = "Outside behind the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3172, npcName = "Dhugru Gorelust", map = 1411, x = 54.38, y = 41.19, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Outside behind the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6027, npcName = "Kitha", map = 1411, x = 54.71, y = 41.5, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "kill", quest = 784, npc = 3192, target = "Lieutenant Benedict", oi = 3, map = 1411, x = 59.71, y = 58.27, f = "e" },
					{ t = "collect", quest = 830, item = 4882, itemName = "Benedict's Key", map = 1411, x = 59.71, y = 58.27, f = "e" },
				},
			},
			{
				note = "Top of the building.",
				goals = {
					{ t = "goto", text = "Follow the path and run further up the stairs", map = 1411, x = 59.9, y = 57.87 },
					{ t = "collect", quest = 830, item = 4881, itemName = "Aged Envelope", map = 1411, x = 59.26, y = 57.66, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 4881, itemName = "Aged Envelope" },
					{ t = "accept", quest = 830, title = "The Admiral's Orders" },
				},
			},
			{
				label = "Collect_Canvas_Scraps",
				along = true,
				goals = {
					{ t = "collect", quest = 791, item = 4870, itemName = "Canvas Scraps", count = 8, oi = 1, map = 1411, x = 58.08, y = 55.78, f = "e" },
				},
			},
			{
				label = "Kill_Kul_Tiras_Enemies",
				along = true,
				goals = {
					{ t = "kill", quest = 784, npc = 3129, target = "Kul Tiras Marine", count = 8, oi = 2, map = 1411, x = 58.08, y = 55.78, f = "e" },
					{ t = "kill", quest = 784, npc = 3128, target = "Kul Tiras Sailor", count = 10, oi = 1, map = 1411, x = 58.08, y = 55.78, f = "e" },
				},
			},
			{
				note = "No death penalty at this level. Fast travel.",
				goals = {
					{ t = "complete", quest = 830, title = "The Admiral's Orders", note = "Die on Purpose", map = 1411, x = 58.08, y = 55.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 830, title = "The Admiral's Orders", note = "Resurrect at the Spirit Healer", map = 1411, x = 53.51, y = 44.45, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 784, title = "Vanquish the Betrayers", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.95, y = 43.5, f = "e" },
					{ t = "accept", quest = 825, title = "From The Wreckage....", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.95, y = 43.5, f = "e" },
					{ t = "turnin", quest = 830, title = "The Admiral's Orders", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.95, y = 43.5, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1411, x = 50.09, y = 43.01 },
					{ t = "turnin", quest = 791, title = "Carry Your Weight", npc = 3147, npcName = "Furl Scornbrow", map = 1411, x = 49.89, y = 40.38, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Razor Hill", map = 1411, x = 51.52, y = 41.65, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "skill", level = 75, skill = "First Aid" },
				},
			},
			{
				note = "While waiting for things like boats. Increases skill in First Aid. Need higher skill to make better bandages. Keep bandages to heal yourself.",
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "complete", quest = 808, title = "Minshina's Skull", note = "Click Here to Continue" },
				},
			},
			{
				note = "Grey metal chests. Inside and near sunken ships. Underwater.",
				goals = {
					{ t = "collect", quest = 825, item = 4863, itemName = "Gnomish Tools", count = 3, oi = 1, map = 1411, x = 62.03, y = 56.06, f = "e" },
				},
			},
			{
				note = "Troll wearing a red robe. Walks around.",
				goals = {
					{ t = "collect", quest = 826, item = 4866, itemName = "Zalazane's Head", oi = 3, map = 1411, x = 67.4, y = 86.4, f = "e" },
				},
			},
			{
				note = "Skulls.",
				goals = {
					{ t = "collect", quest = 808, item = 4864, itemName = "Minshina's Skull", oi = 1, map = 1411, x = 67.45, y = 87.81, f = "e" },
				},
			},
			{
				label = "Kill_Hexed_Trolls_And_Voodoo_Trolls",
				along = true,
				goals = {
					{ t = "kill", quest = 826, npc = 3207, target = "Hexed Troll", count = 8, oi = 1, map = 1411, x = 67.36, y = 85.03, f = "e" },
					{ t = "kill", quest = 826, npc = 3206, target = "Voodoo Troll", count = 8, oi = 2, map = 1411, x = 67.36, y = 85.03, f = "e" },
				},
			},
			{
				label = "Collect_Taillasher_Eggs",
				along = true,
				note = "Clusters of purple eggs. Near trees.",
				goals = {
					{ t = "collect", quest = 815, item = 4890, itemName = "Taillasher Egg", count = 3, oi = 1, map = 1411, x = 63.9, y = 85.5, f = "e" },
				},
			},
			{
				label = "Collect_Durotar_Tiger_Fur",
				along = true,
				goals = {
					{ t = "collect", quest = 817, item = 4892, itemName = "Durotar Tiger Fur", count = 4, oi = 1, map = 1411, x = 60.54, y = 89.71, f = "e" },
				},
			},
			{
				note = "No death penalty at this level. Fast travel. Anywhere in Echo Isles.",
				goals = {
					{ t = "goto", text = "Die on Purpose", map = 1411, x = 60.54, y = 89.71 },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 817, title = "Practical Prey", note = "Resurrect at the Spirit Healer", map = 1411, x = 57.5, y = 73.26, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 5880, npcName = "Un'Thuwa", map = 1411, x = 56.31, y = 75.11, f = "e" },
				},
			},
			{
				note = "Save the Faintly Glowing Skull quest reward. Used later to make a quest easier.",
				goals = {
					{ t = "complete", quest = 808, title = "Minshina's Skull", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 808, title = "Minshina's Skull", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.95, y = 74.72, f = "e" },
					{ t = "turnin", quest = 826, title = "Zalazane", npc = 3188, npcName = "Master Gadrin", map = 1411, x = 55.95, y = 74.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 817, title = "Practical Prey", npc = 3194, npcName = "Vel'rin Fang", map = 1411, x = 55.95, y = 73.93, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 815, title = "Break a Few Eggs", npc = 3191, npcName = "Cook Torka", map = 1411, x = 51.11, y = 42.45, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 825, title = "From The Wreckage....", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.95, y = 43.5, f = "e" },
					{ t = "accept", quest = 831, title = "The Admiral's Orders", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.95, y = 43.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 3706, npcName = "Tai'jin", map = 1411, x = 54.26, y = 42.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 5654, title = "Hex of Weakness", npc = 3706, npcName = "Tai'jin", map = 1411, x = 54.26, y = 42.93, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 3170, npcName = "Kaplak", map = 1411, x = 51.98, y = 43.69, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "accept", quest = 1859, title = "Therzok", npc = 3170, npcName = "Kaplak", map = 1411, x = 51.98, y = 43.69, f = "e" },
				},
			},
			{
				note = "Outside behind the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 3172, npcName = "Dhugru Gorelust", map = 1411, x = 54.38, y = 41.19, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Outside behind the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6027, npcName = "Kitha", map = 1411, x = 54.71, y = 41.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 3169, npcName = "Tarshaw Jaggedscar", map = 1411, x = 54.19, y = 42.47, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "accept", quest = 1505, title = "Veteran Uzzek", npc = 3169, npcName = "Tarshaw Jaggedscar", map = 1411, x = 54.19, y = 42.47, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 6062, title = "Taming the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
				},
			},
			{
				note = "On a Dire Mottled Boar.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15917, itemName = "Taming Rod" },
					{ t = "complete", quest = 6062, title = "Taming the Beast", note = "Tame a Dire Mottled Boar", map = 1411, x = 51.4, y = 48.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6062, title = "Taming the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
					{ t = "accept", quest = 6083, title = "Taming the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
				},
			},
			{
				note = "On a Surf Crawler. Crabs. Dismiss your pet first.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15919, itemName = "Taming Rod" },
					{ t = "complete", quest = 6083, title = "Taming the Beast", note = "Tame a Surf Crawler", map = 1411, x = 57.8, y = 28.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6083, title = "Taming the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
					{ t = "accept", quest = 6082, title = "Taming the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
				},
			},
			{
				note = "On an Armored Scorpid. Dismiss your pet first.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "use", item = 15920, itemName = "Taming Rod" },
					{ t = "complete", quest = 6082, title = "Taming the Beast", note = "Tame an Armored Scorpid", map = 1411, x = 55.0, y = 38.2, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6082, title = "Taming the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
					{ t = "accept", quest = 6081, title = "Training the Beast", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
				},
			},
			{
				note = "Buy 20, or whatever you can afford. Used to feed your pet soon.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "buy", item = 117, itemName = "Tough Jerky", map = 1411, x = 51.13, y = 42.63, f = "e" },
					{ t = "vendor", npc = 3881, npcName = "Grimtak", map = 1411, x = 51.13, y = 42.63, f = "e" },
				},
			},
			{
				note = "Between the rocks. Hurry, timed quest.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 812, title = "Need for a Cure", npc = 3190, npcName = "Rhinag", map = 1411, x = 41.55, y = 18.61, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1454, x = 56.4, y = 56.75 },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 6081, title = "Training the Beast", npc = 3352, npcName = "Ormak Grimshot", map = 1454, x = 66.05, y = 18.54, f = "e" },
				},
			},
			{
				note = "Learn pet abilities from Pet Trainers. Cast Beast Training to teach your pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 837, title = "Encroachment", note = "Click Here to Continue" },
				},
			},
			{
				note = "Top of the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 10088, npcName = "Xao'tsu", map = 1454, x = 66.34, y = 14.83, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "turnin", quest = 831, title = "The Admiral's Orders", npc = 3230, npcName = "Nazgrel", map = 1454, x = 32.27, y = 35.8, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 5726, title = "Hidden Enemies", npc = 4949, npcName = "Thrall", map = 1454, x = 31.75, y = 37.82, f = "e" },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 813, title = "Finding the Antidote", npc = 3189, npcName = "Kor'ghan", map = 1454, x = 47.24, y = 53.58, f = "e" },
				},
			},
			{
				note = "Top of the tower.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "getfp", location = "Orgrimmar", map = 1454, x = 45.13, y = 63.9, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on a Venomtail Scorpid. Scorpions. New permanent pet. Dismiss your pet first.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 837, title = "Encroachment", note = "Click Here to Continue", map = 1411, x = 49.8, y = 17.4, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "accept", quest = 816, title = "Lost But Not Forgotten", npc = 3193, npcName = "Misha Tor'kren", map = 1411, x = 43.11, y = 30.24, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3173, npcName = "Swart", map = 1411, x = 54.42, y = 42.59, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "accept", quest = 2983, title = "Call of Fire", npc = 3173, npcName = "Swart", map = 1411, x = 54.42, y = 42.59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 837, npc = 3113, target = "Razormane Dustrunner", count = 4, oi = 3, map = 1411, x = 43.43, y = 39.15, f = "e" },
					{ t = "kill", quest = 837, npc = 3114, target = "Razormane Battleguard", count = 4, oi = 4, map = 1411, x = 43.43, y = 39.15, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				goals = {
					{ t = "accept", quest = 816, title = "Lost But Not Forgotten", npc = 3193, npcName = "Misha Tor'kren", map = 1411, x = 43.11, y = 30.24, f = "e" },
				},
			},
			{
				note = "Walks around.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "turnin", quest = 2983, title = "Call of Fire", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 56.03, y = 19.89, f = "e" },
					{ t = "accept", quest = 1524, title = "Call of Fire", npc = 5907, npcName = "Kranal Fiss", map = 1413, x = 56.03, y = 19.89, f = "e" },
				},
			},
			{
				note = "Top of the mountain.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1411, x = 36.59, y = 57.07 },
					{ t = "turnin", quest = 1524, title = "Call of Fire", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.55, y = 58.96, f = "e" },
					{ t = "accept", quest = 1525, title = "Call of Fire", npc = 5900, npcName = "Telf Joolam", map = 1411, x = 38.55, y = 58.96, f = "e" },
				},
			},
			{
				note = "Thornweavers and Water Seekers.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1525, item = 5026, itemName = "Fire Tar", oi = 1, map = 1413, x = 54.33, y = 24.72, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 837, title = "Encroachment", npc = 3139, npcName = "Gar'Thok", map = 1411, x = 51.95, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 806, title = "Dark Storms", npc = 3142, npcName = "Orgnil Soulscar", map = 1411, x = 52.24, y = 43.15, f = "e" },
				},
			},
			{
				note = "Inside the cave. In the back.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "collect", quest = 1525, item = 6652, itemName = "Reagent Pouch", oi = 2, map = 1411, x = 52.8, y = 28.6, f = "e" },
				},
			},
		},
	})
end

