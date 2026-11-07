-- TuWoW_Leveling — Guides/Dailies_Horde_06.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-icecrown-full-zone-quest-path-includes-regular-dailies-pre-q-part-4",
		pack = "guides",
		title = "Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) (Parte 4/4)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", map = 118, x = 7.0, y = 41.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 5.7, y = 41.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 19.6, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12814, title = "You'll Need a Gryphon", npc = 29405, npcName = "Uzo Deathcaller", map = 118, x = 19.6, y = 47.8, f = "e" },
					{ t = "accept", quest = 12815, title = "No Fly Zone", npc = 29405, npcName = "Uzo Deathcaller", map = 118, x = 19.6, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12840, title = "In Strict Confidence", npc = 29344, npcName = "Lord-Commander Arete", map = 118, x = 19.5, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 12.5, y = 44.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12815, target = "Onslaught Gryphon Rider", count = 10, oi = 1, map = 118, x = 10.2, y = 41.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12815, title = "No Fly Zone", npc = 29405, npcName = "Uzo Deathcaller", map = 118, x = 19.6, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13138, title = "I'm Smelting... Smelting!", npc = 30708, npcName = "Crusader Olakin Sainrith", map = 118, x = 35.5, y = 66.4, f = "e" },
					{ t = "turnin", quest = 13140, title = "The Runesmiths of Malykriss", npc = 30708, npcName = "Crusader Olakin Sainrith", map = 118, x = 35.5, y = 66.4, f = "e" },
					{ t = "accept", quest = 13211, title = "By Fire Be Purged", npc = 30708, npcName = "Crusader Olakin Sainrith", map = 118, x = 35.5, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13152, title = "A Visit to the Doctor", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
				},
			},
			{
				note = "The entrance to the Sanctum of Reanimation starts here,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 34.4, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 34.6, y = 67.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 35.8, y = 67.0, f = "e" },
				},
			},
			{
				note = "Leave the Sanctum of Reanimation,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 34.4, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13152, title = "A Visit to the Doctor", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13211, title = "By Fire Be Purged", npc = 30708, npcName = "Crusader Olakin Sainrith", map = 118, x = 35.5, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13144, title = "Killing Two Scourge With One Skeleton", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 35.1, y = 69.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13144, title = "Killing Two Scourge With One Skeleton", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
					{ t = "accept", quest = 13212, title = "He's Gone to Pieces", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13212, itemName = "Olakin's Torso", count = 1, oi = 1, map = 118, x = 34.0, y = 69.2, f = "e" },
					{ t = "collect", quest = 13212, itemName = "Olakin's Legs", count = 1, oi = 2, map = 118, x = 34.0, y = 69.2, f = "e" },
					{ t = "collect", quest = 13212, itemName = "Olakin's Left Arm", count = 1, oi = 3, map = 118, x = 34.0, y = 69.2, f = "e" },
					{ t = "collect", quest = 13212, itemName = "Olakin's Right Arm", count = 1, oi = 4, map = 118, x = 34.0, y = 69.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13212, title = "He's Gone to Pieces", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
					{ t = "accept", quest = 13220, title = "Putting Olakin Back Together Again", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
				},
			},
			{
				note = "The entrance to the Sanctum of Reanimation starts here,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 34.4, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13220, itemName = "Spool of Thread", count = 1, map = 118, x = 34.7, y = 66.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13220, itemName = "The Doctor's Cleaver", count = 1, map = 118, x = 36.6, y = 67.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 35.6, y = 66.7, f = "e" },
				},
			},
			{
				note = "Leave the Sanctum of Reanimation,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 34.4, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13220, title = "Putting Olakin Back Together Again", npc = 30631, npcName = "Darkrider Arly", map = 118, x = 35.4, y = 66.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13481, title = "Let's Get Out of Here!", npc = 31279, npcName = "Father Kamaros", map = 118, x = 31.8, y = 64.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13360, title = "Time for Answers", npc = 32497, npcName = "Matthias Lehner", map = 118, x = 49.2, y = 73.1, f = "e" },
					{ t = "accept", quest = 13361, title = "The Hunter and the Prince", npc = 32497, npcName = "Matthias Lehner", map = 118, x = 49.2, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 49.2, y = 73.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13361, title = "The Hunter and the Prince", npc = 32497, npcName = "Matthias Lehner", map = 118, x = 49.2, y = 73.1, f = "e" },
					{ t = "accept", quest = 13362, title = "Knowledge is a Terrible Burden", npc = 32497, npcName = "Matthias Lehner", map = 118, x = 49.2, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13155, title = "Vereth the Cunning", npc = 30944, npcName = "Vereth the Cunning", map = 118, x = 54.1, y = 71.2, f = "e" },
					{ t = "accept", quest = 13143, title = "New Recruit", npc = 30944, npcName = "Vereth the Cunning", map = 118, x = 54.1, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 55.5, y = 71.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13143, title = "New Recruit", npc = 30944, npcName = "Vereth the Cunning", map = 118, x = 54.1, y = 71.2, f = "e" },
					{ t = "accept", quest = 13145, title = "The Vile Hold", npc = 30944, npcName = "Vereth the Cunning", map = 118, x = 54.1, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 56.1, y = 79.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 59.0, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 58.0, y = 71.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 60.4, y = 68.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13145, title = "The Vile Hold", npc = 30944, npcName = "Vereth the Cunning", map = 118, x = 54.1, y = 71.2, f = "e" },
					{ t = "accept", quest = 13146, title = "Generosity Abounds", npc = 30944, npcName = "Vereth the Cunning", map = 118, x = 54.1, y = 71.2, f = "e" },
					{ t = "accept", quest = 13147, title = "Matchmaker", npc = 30944, npcName = "Vereth the Cunning", map = 118, x = 54.1, y = 71.2, f = "e" },
					{ t = "accept", quest = 13160, title = "Stunning View", npc = 30944, npcName = "Vereth the Cunning", map = 118, x = 54.1, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 54.3, y = 70.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 57.7, y = 73.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 59.6, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13146, title = "Generosity Abounds", npc = 30944, npcName = "Vereth the Cunning", map = 118, x = 54.1, y = 71.2, f = "e" },
					{ t = "turnin", quest = 13147, title = "Matchmaker", npc = 30944, npcName = "Vereth the Cunning", map = 118, x = 54.1, y = 71.2, f = "e" },
					{ t = "turnin", quest = 13160, title = "Stunning View", npc = 30944, npcName = "Vereth the Cunning", map = 118, x = 54.1, y = 71.2, f = "e" },
				},
			},
			{
				note = "Orgrim's Hammer flies in a triangular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 13362, title = "Knowledge is a Terrible Burden", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
					{ t = "accept", quest = 13363, title = "Argent Aid", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "turnin", quest = 13481, title = "Let's Get Out of Here!", npc = 31261, npcName = "Brother Keltan", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13363, title = "Argent Aid", npc = 31044, npcName = "Highlord Tirion Fordring", map = 118, x = 79.8, y = 71.8, f = "e" },
					{ t = "accept", quest = 13364, title = "Tirion's Gambit", npc = 31044, npcName = "Highlord Tirion Fordring", map = 118, x = 79.8, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13364, item = 44784, itemName = "Cultist Acolyte's Hood", count = 1, map = 118, x = 45.2, y = 77.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 32239, npcName = "Highlord Tirion Fordring", map = 118, x = 44.4, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 42.8, y = 78.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13364, title = "Tirion's Gambit", npc = 31044, npcName = "Highlord Tirion Fordring", map = 118, x = 79.8, y = 71.8, f = "e" },
				},
			},
			{
				note = "Hearth to The Shadow Vault|goto Icecrown,44.0,22.2,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13071, title = "Vile Like Fire!", npc = 30216, npcName = "Vile", map = 118, x = 43.3, y = 24.8, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-argent-tournament-grounds-pre-quests",
		pack = "guides",
		title = "Argent Tournament Grounds Pre-Quests",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "fpath", text = "Argent Tournament Grounds", map = 118, x = 72.6, y = 22.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13668, title = "The Argent Tournament", npc = 33817, npcName = "Justicar Mariel Trueheart", map = 118, x = 69.7, y = 22.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13668, title = "The Argent Tournament", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
					{ t = "accept", quest = 13829, title = "Mastery Of Melee", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13839, title = "Mastery Of The Charge", npc = 33658, npcName = "Amariel Sunsworn", map = 118, x = 76.3, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13838, title = "Mastery Of The Shield-Breaker", npc = 33659, npcName = "Galathia Brightdawn", map = 118, x = 76.2, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 75.6, y = 23.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33973, npcName = "Jeran Lockwood", map = 118, x = 72.5, y = 19.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33972, npcName = "Rugan Steelbelly", map = 118, x = 72.7, y = 18.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33974, npcName = "Valis Windchaser", map = 118, x = 73.2, y = 19.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 73.1, y = 19.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 72.9, y = 18.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 72.6, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13829, title = "Mastery Of Melee", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13839, title = "Mastery Of The Charge", npc = 33658, npcName = "Amariel Sunsworn", map = 118, x = 76.3, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13838, title = "Mastery Of The Shield-Breaker", npc = 33659, npcName = "Galathia Brightdawn", map = 118, x = 76.2, y = 24.4, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-argent-tournament-grounds-aspirant-rank-dailies",
		pack = "guides",
		title = "Argent Tournament Grounds Aspirant Rank Dailies",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13678, title = "Up To The Challenge", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13673, title = "A Blade Fit For A Champion", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
					{ t = "accept", quest = 13674, title = "A Worthy Weapon", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
					{ t = "accept", quest = 13675, title = "The Edge of Winter", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13676, title = "Training in the Field", npc = 33658, npcName = "Amariel Sunsworn", map = 118, x = 76.3, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13677, title = "Learning the Reins", npc = 33659, npcName = "Galathia Brightdawn", map = 118, x = 76.2, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13673, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13674, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13675, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13676, target = "Icecrown Scourge", count = 8, oi = 1, map = 118, x = 74.8, y = 35.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 75.6, y = 23.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 73.1, y = 24.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 72.9, y = 25.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 73.3, y = 25.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13673, title = "A Blade Fit For A Champion", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
					{ t = "turnin", quest = 13674, title = "A Worthy Weapon", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
					{ t = "turnin", quest = 13675, title = "The Edge of Winter", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13676, title = "Training in the Field", npc = 33658, npcName = "Amariel Sunsworn", map = 118, x = 76.3, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13677, title = "Learning the Reins", npc = 33659, npcName = "Galathia Brightdawn", map = 118, x = 76.2, y = 24.4, f = "e" },
				},
			},
			{
				note = "Make sure you have 15 Aspirant's Seals:",
				goals = {
					{ t = "collect", quest = 13678, itemName = "Aspirant's Seal", count = 15, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13678, title = "Up To The Challenge", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
				},
			},
		},
	})
end

