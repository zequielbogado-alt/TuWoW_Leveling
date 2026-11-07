-- TuWoW_Leveling — Guides/Leveling_Alliance_19.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-30-35",
		pack = "guides",
		title = "Levels (30-35) (Parte 1/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-30-35-part-2",
		author = "TuWoW & Zygor",
		minLevel = 30,
		maxLevel = 35,
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c",
				goals = {
					{ t = "accept", quest = 1718, title = "The Islander", npc = 5479, npcName = "Wu Shen", map = 1453, x = 80.6, y = 59.9, f = "e" },
					{ t = "turnin", quest = 1718, title = "The Islander", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.6, y = 49.2, f = "e" },
					{ t = "accept", quest = 1719, title = "The Affray", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.6, y = 49.2, f = "e" },
					{ t = "kill", quest = 1719, target = "Big Will", count = 1, oi = 2, map = 1413, x = 68.6, y = 48.7, f = "e" },
					{ t = "turnin", quest = 1719, title = "The Affray", npc = 6236, npcName = "Klannoc Macleod", map = 1413, x = 68.6, y = 49.2, f = "e" },
					{ t = "accept", quest = 9551, title = "Call of Air (1)", npc = 17219, npcName = "Sulaa", map = 1947, x = 32.3, y = 23.9, f = "e" },
					{ t = "turnin", quest = 9551, title = "Call of Air (1)", npc = 17204, npcName = "Farseer Nobundo", map = 1947, x = 31.4, y = 27.7, f = "e" },
					{ t = "accept", quest = 9552, title = "Call of Air (2)", npc = 17204, npcName = "Farseer Nobundo", map = 1947, x = 31.4, y = 27.7, f = "e" },
					{ t = "turnin", quest = 9552, title = "Call of Air (2)", npc = 17431, npcName = "Velaada", map = 1941, x = 24.6, y = 35.6, f = "e" },
					{ t = "accept", quest = 9553, title = "Call of Air (3)", npc = 17431, npcName = "Velaada", map = 1941, x = 24.6, y = 35.6, f = "e" },
					{ t = "turnin", quest = 9553, title = "Call of Air (3)", npc = 17435, npcName = "Susurrus", map = 1941, x = 22.6, y = 32.4, f = "e" },
					{ t = "accept", quest = 9554, title = "Call of Air (4)", npc = 17435, npcName = "Susurrus", map = 1941, x = 22.6, y = 32.4, f = "e" },
					{ t = "turnin", quest = 9554, title = "Call of Air (4)", npc = 17204, npcName = "Farseer Nobundo", f = "e" },
					{ t = "goto", map = 1453, x = 22.6, y = 56.1, f = "e", only = { classes = { "WARRIOR" } } },
					{ t = "goto", map = 1453, x = 22.6, y = 56.1, f = "e", only = { classes = { "SHAMAN" } } },
					{ t = "goto", map = 1941, x = 26.8, y = 25.6, f = "e", only = { classes = { "SHAMAN" } } },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 98, itemName = "Mistmantle Family Ring", count = 1, oi = 1, map = 1431, x = 77.4, y = 36.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 98, title = "The Legend of Stalvan (13)", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.8, y = 45.3, f = "e" },
				},
			},
			{
				note = "Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c",
				goals = {
					{ t = "goto", map = 1453, x = 22.6, y = 56.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Astranaar", text = "Astranaar", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1026, item = 5475, itemName = "Wooden Key", count = 1, oi = 1, map = 1453, x = 54.4, y = 35.4, f = "e" },
					{ t = "collect", quest = 1026, itemName = "Iron Shaft", count = 1, oi = 1, map = 1453, x = 54.4, y = 35.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1453, x = 50.1, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1026, title = "Raene's Cleansing (4)", npc = 3916, npcName = "Shael'dryn", map = 1453, x = 53.5, y = 46.3, f = "e" },
					{ t = "accept", quest = 1027, title = "Raene's Cleansing (5)", npc = 3916, npcName = "Shael'dryn", map = 1453, x = 53.5, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9526, title = "Reclaiming Felfire Hill", npc = 17310, npcName = "Gnarl", map = 1453, x = 86.4, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9533, title = "A Helping Hand", npc = 17291, npcName = "Architect Nemos", map = 1453, x = 86.8, y = 44.8, f = "e" },
					{ t = "accept", quest = 9517, title = "A Shameful Waste", npc = 17291, npcName = "Architect Nemos", map = 1453, x = 86.8, y = 44.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1021, title = "Vile Satyr! Dryads in Danger!", npc = 3901, npcName = "Illiyana", map = 1453, x = 87.1, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9516, title = "Destroy the Legion", npc = 17303, npcName = "Vindicator Vedaar", map = 1453, x = 86.5, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1022, title = "The Howling Vale", npc = 3880, npcName = "Sentinel Melyria Frostshadow", map = 1453, x = 86.0, y = 44.1, f = "e" },
					{ t = "accept", quest = 9521, title = "Report from the Northern Front", npc = 17287, npcName = "Sentinel Luciel Starwhisper", map = 1453, x = 86.0, y = 44.1, f = "e" },
					{ t = "accept", quest = 9518, title = "Agents of Destruction", npc = 17287, npcName = "Sentinel Luciel Starwhisper", map = 1453, x = 86.0, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4581, title = "Kayneth Stillwind", npc = 3848, npcName = "Kayneth Stillwind", map = 1453, x = 85.2, y = 44.7, f = "e" },
					{ t = "accept", quest = 1011, title = "Forsaken Diseases", npc = 3848, npcName = "Kayneth Stillwind", map = 1453, x = 85.2, y = 44.7, f = "e" },
					{ t = "accept", quest = 9519, title = "The Lost Chalice", npc = 3848, npcName = "Kayneth Stillwind", map = 1453, x = 85.2, y = 44.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Forest Song", text = "Forest Song", map = 1453, x = 84.7, y = 43.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1021, title = "Vile Satyr! Dryads in Danger!", npc = 3920, npcName = "Anilia", map = 1453, x = 78.3, y = 44.8, f = "e" },
					{ t = "accept", quest = 1031, title = "The Branch of Cenarius", npc = 3920, npcName = "Anilia", map = 1453, x = 78.3, y = 44.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1031, itemName = "Branch of Cenarius", count = 1, oi = 1, map = 1453, x = 78.0, y = 42.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9517, itemName = "Satyrnaar Fel Wood", count = 5, oi = 2, map = 1453, x = 80.3, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9519, itemName = "Chalice of Elune", count = 1, oi = 1, map = 1453, x = 81.3, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9517, itemName = "Warsong Lumber", count = 15, oi = 1, map = 1453, x = 86.4, y = 52.9, f = "e" },
					{ t = "kill", quest = 9518, target = "Warsong Shredder", count = 2, oi = 2, map = 1453, x = 86.4, y = 52.9, f = "e" },
					{ t = "kill", quest = 9518, target = "Horde Deforester", count = 5, oi = 3, map = 1453, x = 86.4, y = 52.9, f = "e" },
					{ t = "kill", quest = 9518, target = "Horde Scout", count = 10, oi = 4, map = 1453, x = 86.4, y = 52.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9518, npc = 17304, target = "Overseer Gorthak", count = 1, oi = 1, map = 1453, x = 88.8, y = 59.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9516, target = "Mannoroc Lasher", count = 6, oi = 1, map = 1453, x = 83.8, y = 67.7, f = "e" },
					{ t = "kill", quest = 9516, target = "Roaming Felguard", count = 6, oi = 2, map = 1453, x = 83.8, y = 67.7, f = "e" },
					{ t = "kill", quest = 9516, target = "Searing Infernal", count = 6, oi = 3, map = 1453, x = 83.8, y = 67.7, f = "e" },
					{ t = "collect", itemName = "Diabolical Plans", count = 1, map = 1453, x = 83.8, y = 67.7, f = "e" },
					{ t = "accept", quest = 9520, title = "Diabolical Plans", map = 1453, x = 83.8, y = 67.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1011, itemName = "Bottle of Disease", count = 1, oi = 1, map = 1453, x = 75.3, y = 72.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1027, itemName = "Iron Pommel", count = 1, oi = 1, map = 1453, x = 74.1, y = 73.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1035, itemName = "Fallen Moonstone", count = 1, oi = 1, map = 1453, x = 66.7, y = 82.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9521, title = "Report from the Northern Front", npc = 14733, npcName = "Sentinel Farsong", map = 1453, x = 61.9, y = 83.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1453, x = 53.4, y = 33.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1453, x = 50.5, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9517, title = "A Shameful Waste", npc = 17310, npcName = "Gnarl", map = 1453, x = 86.4, y = 46.5, f = "e" },
					{ t = "turnin", quest = 9526, title = "Reclaiming Felfire Hill", npc = 17310, npcName = "Gnarl", map = 1453, x = 86.4, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1031, title = "The Branch of Cenarius", npc = 3901, npcName = "Illiyana", map = 1453, x = 87.1, y = 43.5, f = "e" },
					{ t = "accept", quest = 1032, title = "Satyr Slaying!", npc = 3901, npcName = "Illiyana", map = 1453, x = 87.1, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9516, title = "Destroy the Legion", npc = 17303, npcName = "Vindicator Vedaar", map = 1453, x = 86.5, y = 43.6, f = "e" },
					{ t = "turnin", quest = 9520, title = "Diabolical Plans", npc = 17303, npcName = "Vindicator Vedaar", map = 1453, x = 86.5, y = 43.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1022, title = "The Howling Vale", npc = 3880, npcName = "Sentinel Melyria Frostshadow", map = 1453, x = 86.0, y = 44.1, f = "e" },
					{ t = "accept", quest = 1037, title = "Velinde Starsong", npc = 3880, npcName = "Sentinel Melyria Frostshadow", map = 1453, x = 86.0, y = 44.1, f = "e" },
					{ t = "turnin", quest = 9518, title = "Agents of Destruction", npc = 17287, npcName = "Sentinel Luciel Starwhisper", map = 1453, x = 86.0, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1011, title = "Forsaken Diseases", npc = 3848, npcName = "Kayneth Stillwind", map = 1453, x = 85.2, y = 44.7, f = "e" },
					{ t = "turnin", quest = 9519, title = "The Lost Chalice", npc = 3848, npcName = "Kayneth Stillwind", map = 1453, x = 85.2, y = 44.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 31, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1032, itemName = "Satyr Horns", count = 16, oi = 1, map = 1453, x = 79.0, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1032, title = "Satyr Slaying!", npc = 3901, npcName = "Illiyana", map = 1453, x = 87.1, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Talrendis Point", text = "Talrendis Point", map = 1447, x = 11.9, y = 77.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1035, title = "Fallen Sky Lake", npc = 3894, npcName = "Pelturas Whitemoon", map = 1440, x = 37.4, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1440, x = 50.1, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1027, title = "Raene's Cleansing (5)", npc = 3916, npcName = "Shael'dryn", map = 1440, x = 53.5, y = 46.3, f = "e" },
					{ t = "accept", quest = 1028, title = "Raene's Cleansing (6)", npc = 3916, npcName = "Shael'dryn", map = 1440, x = 53.5, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1440, x = 56.0, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1028, title = "Raene's Cleansing (6)", map = 1440, x = 56.4, y = 49.2, f = "e" },
					{ t = "accept", quest = 1055, title = "Raene's Cleansing (7)", map = 1440, x = 56.4, y = 49.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1055, title = "Raene's Cleansing (7)", npc = 3916, npcName = "Shael'dryn", map = 1440, x = 53.5, y = 46.3, f = "e" },
					{ t = "accept", quest = 1029, title = "Raene's Cleansing (8)", npc = 3916, npcName = "Shael'dryn", map = 1440, x = 53.5, y = 46.3, f = "e" },
				},
			},
			{
				note = "Hearth to Astranaar|goto Ashenvale,35.5,50.2,5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1029, title = "Raene's Cleansing (8)", npc = 3691, npcName = "Raene Wolfrunner", map = 1440, x = 36.6, y = 49.6, f = "e" },
				},
			},
			{
				only = { races = { "Human", "Dwarf", "Gnome", "Draenei" } },
				goals = {
					{ t = "getfp", location = "Rut'theran Village", text = "Rut'theran Village", map = 1438, x = 58.4, y = 94.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1037, title = "Velinde Starsong", npc = 8026, npcName = "Thyn'tel Bladeweaver", map = 1457, x = 61.8, y = 39.2, f = "e" },
					{ t = "accept", quest = 1038, title = "Velinde's Effects", npc = 8026, npcName = "Thyn'tel Bladeweaver", map = 1457, x = 61.8, y = 39.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 1038, itemName = "Velinde's Journal", count = 1, oi = 1, map = 1457, x = 62.3, y = 83.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1038, title = "Velinde's Effects", npc = 8026, npcName = "Thyn'tel Bladeweaver", map = 1457, x = 61.8, y = 39.2, f = "e" },
					{ t = "accept", quest = 1039, title = "The Barrens Port", npc = 8026, npcName = "Thyn'tel Bladeweaver", map = 1457, x = 61.8, y = 39.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1302, title = "James Hyal", npc = 5082, npcName = "Vincent Hyal", map = 1437, x = 8.4, y = 61.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 289, title = "The Cursed Crew", npc = 1239, npcName = "First Mate Fitzsimmons", map = 1437, x = 10.9, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 270, title = "The Doomed Fleet", npc = 1217, npcName = "Glorin Steelbrow", map = 1437, x = 10.6, y = 60.6, f = "e" },
					{ t = "accept", quest = 321, title = "Lightforge Iron", npc = 1217, npcName = "Glorin Steelbrow", map = 1437, x = 10.6, y = 60.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Menethil Harbor", text = "Menethil Harbor", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 321, title = "Lightforge Iron", map = 1437, x = 12.1, y = 64.2, f = "e" },
					{ t = "accept", quest = 324, title = "The Lost Ingots", map = 1437, x = 12.1, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 324, itemName = "Lightforge Ingot", count = 5, oi = 1, map = 1437, x = 12.4, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 324, title = "The Lost Ingots", npc = 1217, npcName = "Glorin Steelbrow", map = 1437, x = 10.6, y = 60.6, f = "e" },
					{ t = "accept", quest = 322, title = "Blessed Arm", npc = 1217, npcName = "Glorin Steelbrow", map = 1437, x = 10.6, y = 60.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 472, title = "Fall of Dun Modr", npc = 2097, npcName = "Harlo Barnaby", map = 1437, x = 10.8, y = 55.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 289, target = "Cursed Sailor", count = 13, oi = 1, map = 1437, x = 14.1, y = 29.3, f = "e" },
					{ t = "kill", quest = 289, target = "Cursed Marine", count = 5, oi = 2, map = 1437, x = 14.1, y = 29.3, f = "e" },
				},
			},
			{
				note = "Go downstairs in the ship to 14.1,30.1",
				goals = {
					{ t = "collect", quest = 289, itemName = "Snellig's Snuffbox", count = 1, oi = 3, map = 1437, x = 14.1, y = 30.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 32, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 289, title = "The Cursed Crew", npc = 1239, npcName = "First Mate Fitzsimmons", map = 1437, x = 10.9, y = 59.6, f = "e" },
					{ t = "accept", quest = 290, title = "Lifting the Curse", npc = 1239, npcName = "First Mate Fitzsimmons", map = 1437, x = 10.9, y = 59.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 290, itemName = "Intrepid Strongbox Key", count = 1, oi = 1, map = 1437, x = 15.5, y = 23.5, f = "e" },
				},
			},
			{
				note = "Go underwater to the bottom of the ship to 14.4,24",
				goals = {
					{ t = "turnin", quest = 290, title = "Lifting the Curse", map = 1437, x = 14.4, y = 24.0, f = "e" },
					{ t = "accept", quest = 292, title = "The Eye of Paleth", map = 1437, x = 14.4, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 296, itemName = "Sarltooth's Talon", count = 1, oi = 1, map = 1437, x = 33.2, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 296, title = "Ormer's Revenge (3)", npc = 1078, npcName = "Ormer Ironbraid", map = 1437, x = 38.1, y = 51.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 465, title = "Nek'rosh's Gambit", map = 1437, x = 47.5, y = 46.9, f = "e" },
					{ t = "accept", quest = 474, title = "Defeat Nek'rosh", map = 1437, x = 47.5, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 474, itemName = "Nek'rosh's Head", count = 1, oi = 1, map = 1437, x = 53.5, y = 54.7, f = "e" },
				},
			},
			{
				note = "Hearth to Menethil Harbor|goto Wetlands,10.1,56.7,9|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 292, title = "The Eye of Paleth", npc = 1217, npcName = "Glorin Steelbrow", map = 1437, x = 10.6, y = 60.6, f = "e" },
					{ t = "accept", quest = 293, title = "Cleansing the Eye", npc = 1217, npcName = "Glorin Steelbrow", map = 1437, x = 10.6, y = 60.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 474, title = "Defeat Nek'rosh", npc = 2104, npcName = "Captain Stoutfist", map = 1437, x = 9.9, y = 57.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 472, title = "Fall of Dun Modr", npc = 1071, npcName = "Longbraid the Grim", map = 1437, x = 49.8, y = 18.3, f = "e" },
					{ t = "accept", quest = 304, title = "A Grim Task", npc = 1071, npcName = "Longbraid the Grim", map = 1437, x = 49.8, y = 18.3, f = "e" },
					{ t = "accept", quest = 631, title = "The Thandol Span (1)", npc = 1075, npcName = "Rhag Garmason", map = 1437, x = 49.8, y = 18.3, f = "e" },
					{ t = "accept", quest = 303, title = "The Dark Iron War", npc = 1074, npcName = "Motley Garmason", map = 1437, x = 49.8, y = 18.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 303, target = "Dark Iron Dwarf", count = 10, oi = 1, map = 1437, x = 62.2, y = 28.3, f = "e" },
					{ t = "kill", quest = 303, target = "Dark Iron Tunneler", count = 5, oi = 2, map = 1437, x = 62.2, y = 28.3, f = "e" },
					{ t = "kill", quest = 303, target = "Dark Iron Saboteur", count = 5, oi = 3, map = 1437, x = 62.2, y = 28.3, f = "e" },
					{ t = "kill", quest = 303, target = "Dark Iron Demolitionist", count = 5, oi = 4, map = 1437, x = 62.2, y = 28.3, f = "e" },
					{ t = "collect", quest = 304, itemName = "Ear of Balgaras", count = 1, oi = 1, map = 1437, x = 62.2, y = 28.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 304, title = "A Grim Task", npc = 1071, npcName = "Longbraid the Grim", map = 1437, x = 49.8, y = 18.3, f = "e" },
					{ t = "turnin", quest = 303, title = "The Dark Iron War", npc = 1074, npcName = "Motley Garmason", map = 1437, x = 49.8, y = 18.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 631, title = "The Thandol Span (1)", map = 1437, x = 51.3, y = 8.0, f = "e" },
					{ t = "accept", quest = 632, title = "The Thandol Span (2)", map = 1437, x = 51.3, y = 8.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 632, title = "The Thandol Span (2)", npc = 1075, npcName = "Rhag Garmason", map = 1437, x = 49.8, y = 18.3, f = "e" },
					{ t = "accept", quest = 633, title = "The Thandol Span (3)", npc = 1075, npcName = "Rhag Garmason", map = 1437, x = 49.8, y = 18.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1417, x = 48.8, y = 88.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 633, title = "The Thandol Span (3)", npc = 1075, npcName = "Rhag Garmason", map = 1437, x = 49.8, y = 18.3, f = "e" },
					{ t = "accept", quest = 634, title = "Plea To The Alliance", npc = 1075, npcName = "Rhag Garmason", map = 1437, x = 49.8, y = 18.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 634, title = "Plea To The Alliance", npc = 2700, npcName = "Captain Nials", map = 1417, x = 45.8, y = 47.6, f = "e" },
					{ t = "accept", quest = 681, title = "Northfold Manor", npc = 2700, npcName = "Captain Nials", map = 1417, x = 45.8, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Refuge Pointe", text = "Refuge Pointe", map = 1417, x = 45.8, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Southshore", text = "Southshore", map = 1424, x = 49.3, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 500, title = "Crushridge Bounty", npc = 2263, npcName = "Marshal Redpath", map = 1424, x = 49.5, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 505, title = "Syndicate Assassins", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.1, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 659, title = "Hints of a New Plague? (1)", npc = 2711, npcName = "Phin Odelic", map = 1424, x = 50.3, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9435, title = "Missing Crystals", npc = 17218, npcName = "Huraan", map = 1424, x = 51.0, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Southshore", text = "Southshore", f = "e" },
				},
			},
		},
	})
end

