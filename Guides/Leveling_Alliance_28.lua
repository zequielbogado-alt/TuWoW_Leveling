-- TuWoW_Leveling — Guides/Leveling_Alliance_28.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-50-55-part-2",
		pack = "guides",
		title = "Levels (50-55) (Parte 2/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-50-55-part-3",
		author = "TuWoW & Zygor",
		minLevel = 52,
		maxLevel = 55,
		zone = 1419,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 4292, itemName = "Lar'korwi's Head", count = 1, oi = 1, map = 1446, x = 79.9, y = 49.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4289, itemName = "Un'Goro Gorilla Pelt", count = 2, oi = 1, map = 1446, x = 65.7, y = 15.5, f = "e" },
					{ t = "collect", quest = 4289, itemName = "Un'Goro Stomper Pelt", count = 2, oi = 2, map = 1446, x = 65.7, y = 15.5, f = "e" },
					{ t = "collect", quest = 4289, itemName = "Un'Goro Thunderer Pelt", count = 2, oi = 3, map = 1446, x = 65.7, y = 15.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4243, title = "Chasing A-Me 01 (1)", npc = 9618, npcName = "Karna Remtravel", map = 1446, x = 46.4, y = 13.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3845, title = "It's a Secret to Everybody (2)", npc = 8737, npcName = "Linken", map = 1446, x = 44.7, y = 8.1, f = "e" },
					{ t = "accept", quest = 3908, title = "It's a Secret to Everybody (3)", npc = 8737, npcName = "Linken", map = 1446, x = 44.7, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Marshal's Refuge", text = "Marshal's Refuge", map = 1446, x = 45.2, y = 5.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3884, title = "Williden's Journal", npc = 9270, npcName = "Williden Marshal", map = 1446, x = 43.9, y = 7.2, f = "e" },
					{ t = "accept", quest = 3881, title = "Expedition Salvation", npc = 9270, npcName = "Williden Marshal", map = 1446, x = 43.9, y = 7.2, f = "e" },
					{ t = "accept", quest = 3883, title = "Alien Ecology", npc = 9271, npcName = "Hol'anyee Marshal", map = 1446, x = 43.9, y = 7.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3882, title = "Roll the Bones", npc = 9272, npcName = "Spark Nilminer", map = 1446, x = 43.5, y = 7.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4284, title = "Crystals of Power", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
					{ t = "turnin", quest = 4284, title = "Crystals of Power", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
					{ t = "accept", quest = 4285, title = "The Northern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
					{ t = "accept", quest = 4287, title = "The Eastern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
					{ t = "accept", quest = 4288, title = "The Western Pylon", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4501, title = "Beware of Pterrordax", map = 1446, x = 43.6, y = 8.5, f = "e" },
					{ t = "accept", quest = 4492, title = "Lost!", npc = 9997, npcName = "Spraggle Frock", map = 1446, x = 43.6, y = 8.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4141, title = "Muigin and Larion", npc = 9119, npcName = "Muigin", map = 1446, x = 42.9, y = 9.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4503, title = "Shizzle's Flyer", npc = 9998, npcName = "Shizzle", map = 1446, x = 44.2, y = 11.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Tar mobs", count = 1, map = 1446, x = 47.2, y = 18.7, f = "e" },
					{ t = "collect", quest = 4504, itemName = "Super Sticky Tar", count = 12, oi = 1, map = 1446, x = 47.2, y = 18.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 56.5, y = 12.4, f = "e" },
				},
			},
			{
				note = "Go into the gorilla cave to 67.7,16.8",
				goals = {
					{ t = "turnin", quest = 4243, title = "Chasing A-Me 01 (1)", npc = 9623, npcName = "A-Me 01", map = 1446, x = 67.7, y = 16.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Diemetradons", count = 1, map = 1446, x = 67.3, y = 32.6, f = "e" },
					{ t = "collect", quest = 4503, itemName = "Webbed Diemetradon Scale", count = 8, oi = 1, map = 1446, x = 67.3, y = 32.6, f = "e" },
					{ t = "collect", quest = 3882, itemName = "Dinosaur Bone", count = 8, oi = 1, map = 1446, x = 67.3, y = 32.6, f = "e" },
					{ t = "kill", target = "Bloodpetals", count = 1, map = 1446, x = 67.3, y = 32.6, f = "e" },
					{ t = "collect", quest = 4141, itemName = "Bloodpetal", count = 15, oi = 1, map = 1446, x = 67.3, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3881, itemName = "Crate of Foodstuffs", count = 1, oi = 1, map = 1446, x = 68.5, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 77.2, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4292, title = "The Bait for Lar'korwi", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
					{ t = "turnin", quest = 4289, title = "The Apes of Un'Goro", npc = 9619, npcName = "Torwa Pathfinder", map = 1446, x = 71.6, y = 76.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 50.5, y = 78.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3883, itemName = "Hive Wall Sample", count = 1, oi = 1, map = 1446, x = 48.7, y = 85.3, f = "e" },
				},
			},
			{
				note = "Go out of the hive to 50.5,78.4",
				goals = {
					{ t = "kill", target = "Gorishi insects", count = 1, map = 1446, x = 50.5, y = 78.4, f = "e" },
					{ t = "collect", quest = 4496, itemName = "Gorishi Scent Gland", count = 1, oi = 1, map = 1446, x = 50.5, y = 78.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3881, itemName = "Research Equipment", count = 1, oi = 2, map = 1446, x = 38.5, y = 66.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 23.8, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4501, target = "Frenzied Pterrordax", count = 10, oi = 1, map = 1446, x = 21.4, y = 59.4, f = "e" },
					{ t = "collect", quest = 4503, itemName = "Webbed Pterrordax Scale", count = 8, oi = 2, map = 1446, x = 21.4, y = 59.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 974, title = "Finding the Source", npc = 10302, npcName = "Krakle", map = 1446, x = 30.9, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "fire elementals", count = 1, map = 1446, x = 45.8, y = 53.2, f = "e" },
					{ t = "collect", quest = 4502, itemName = "Un'Goro Ash", count = 9, oi = 1, map = 1446, x = 45.8, y = 53.2, f = "e" },
				},
			},
			{
				note = "Follow the path up the moutain to 49.7,45.7",
				goals = {
					{ t = "goto", map = 1446, x = 49.7, y = 45.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 974, title = "Finding the Source", npc = 10302, npcName = "Krakle", map = 1446, x = 30.9, y = 50.4, f = "e" },
					{ t = "accept", quest = 980, title = "The New Springs", npc = 10302, npcName = "Krakle", map = 1446, x = 30.9, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4492, title = "Lost!", npc = 9999, npcName = "Ringo", map = 1446, x = 51.9, y = 49.9, f = "e" },
					{ t = "accept", quest = 4491, title = "A Little Help From My Friends", npc = 9999, npcName = "Ringo", map = 1446, x = 51.9, y = 49.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4501, title = "Beware of Pterrordax", npc = 9997, npcName = "Spraggle Frock", map = 1446, x = 43.6, y = 8.5, f = "e" },
					{ t = "turnin", quest = 4491, title = "A Little Help From My Friends", npc = 9997, npcName = "Spraggle Frock", map = 1446, x = 43.6, y = 8.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3881, title = "Expedition Salvation", npc = 9270, npcName = "Williden Marshal", map = 1446, x = 43.9, y = 7.2, f = "e" },
					{ t = "turnin", quest = 3883, title = "Alien Ecology", npc = 9271, npcName = "Hol'anyee Marshal", map = 1446, x = 43.9, y = 7.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3882, title = "Roll the Bones", npc = 9272, npcName = "Spark Nilminer", map = 1446, x = 43.5, y = 7.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4285, title = "The Northern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
					{ t = "turnin", quest = 4287, title = "The Eastern Pylon", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
					{ t = "turnin", quest = 4288, title = "The Western Pylon", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
					{ t = "accept", quest = 4321, title = "Making Sense of It", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
					{ t = "turnin", quest = 4321, title = "Making Sense of It", npc = 9117, npcName = "J.D. Collie", map = 1446, x = 41.9, y = 2.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4141, title = "Muigin and Larion", npc = 9119, npcName = "Muigin", map = 1446, x = 42.9, y = 9.6, f = "e" },
					{ t = "accept", quest = 4142, title = "A Visit to Gregan", npc = 9119, npcName = "Muigin", map = 1446, x = 42.9, y = 9.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4503, title = "Shizzle's Flyer", npc = 9998, npcName = "Shizzle", map = 1446, x = 44.2, y = 11.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1446, x = 29.3, y = 22.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Cenarion Hold", text = "Cenarion Hold", map = 1451, x = 50.6, y = 34.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4504, title = "Super Sticky", npc = 7876, npcName = "Tran'rek", map = 1446, x = 51.6, y = 26.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4496, title = "Bungle in the Jungle", npc = 5594, npcName = "Alchemist Pestlezugg", map = 1446, x = 50.9, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3764, title = "Un'Goro Soil", npc = 9047, npcName = "Jenal", map = 1457, x = 31.5, y = 8.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3781, title = "Morrowgrain Research (1)", npc = 3516, npcName = "Arch Druid Fandral Staghelm", map = 1457, x = 35.1, y = 9.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3781, title = "Morrowgrain Research (1)", npc = 4217, npcName = "Mathrengyl Bearwalker", map = 1457, x = 35.2, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 978, title = "Moontouched Wildkin", npc = 7916, npcName = "Erelas Ambersky", map = 1438, x = 55.5, y = 92.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Astranaar", text = "Astranaar", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5535, title = "Spiritual Unrest", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.4, y = 78.2, f = "e" },
					{ t = "accept", quest = 5536, title = "A Land Filled with Hatred", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.4, y = 78.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5535, target = "Highborne Apparition", count = 6, oi = 1, map = 1447, x = 17.3, y = 70.6, f = "e" },
					{ t = "kill", quest = 5535, target = "Highborne Lichling", count = 6, oi = 2, map = 1447, x = 17.3, y = 70.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5536, target = "Haldarr Satyr", count = 6, oi = 1, map = 1447, x = 19.3, y = 62.4, f = "e" },
					{ t = "kill", quest = 5536, target = "Haldarr Trickster", count = 2, oi = 2, map = 1447, x = 19.3, y = 62.4, f = "e" },
					{ t = "kill", quest = 5536, target = "Haldarr Felsworn", count = 2, oi = 3, map = 1447, x = 19.3, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5535, title = "Spiritual Unrest", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.4, y = 78.2, f = "e" },
					{ t = "turnin", quest = 5536, title = "A Land Filled with Hatred", npc = 11548, npcName = "Loh'atu", map = 1447, x = 11.4, y = 78.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3449, itemName = "Rubbing: Rune of Sael'hai", count = 1, oi = 4, map = 1447, x = 42.3, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3449, itemName = "Rubbing: Rune of Markri", count = 1, oi = 3, map = 1447, x = 39.3, y = 55.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3449, itemName = "Rubbing: Rune of Jin'yael", count = 1, oi = 2, map = 1447, x = 39.5, y = 50.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3449, itemName = "Rubbing: Rune of Beth'Amara", count = 1, oi = 1, map = 1447, x = 36.9, y = 53.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1447, x = 52.9, y = 19.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3601, title = "Kim'jael Indeed!", npc = 8420, npcName = "Kim'jael", map = 1447, x = 53.5, y = 21.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3601, itemName = "Kim'jael's Compass", count = 1, oi = 1, map = 1447, x = 58.5, y = 25.0, f = "e" },
					{ t = "collect", quest = 3601, itemName = "Kim'jael's Scope", count = 1, oi = 2, map = 1447, x = 58.5, y = 25.0, f = "e" },
					{ t = "collect", quest = 3601, itemName = "Kim'jael's Stuffed Chicken", count = 1, oi = 3, map = 1447, x = 58.5, y = 25.0, f = "e" },
					{ t = "collect", quest = 3601, itemName = "Kim'jael's Wizzlegoober", count = 1, oi = 4, map = 1447, x = 58.5, y = 25.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3601, title = "Kim'jael Indeed!", npc = 8420, npcName = "Kim'jael", map = 1447, x = 53.5, y = 21.8, f = "e" },
					{ t = "accept", quest = 5534, title = "Kim'jael's \"Missing\" Equipment", npc = 8420, npcName = "Kim'jael", map = 1447, x = 53.5, y = 21.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 54, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1447, x = 45.5, y = 37.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "nagas", count = 1, map = 1447, x = 47.2, y = 42.9, f = "e" },
					{ t = "collect", quest = 5534, itemName = "Some Rune", count = 1, oi = 1, map = 1447, x = 47.2, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1447, x = 46.1, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5534, title = "Kim'jael's \"Missing\" Equipment", npc = 8420, npcName = "Kim'jael", map = 1447, x = 53.5, y = 21.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3449, title = "Arcane Runes", npc = 8392, npcName = "Pilot Xiggs Fuselighter", map = 1447, x = 77.8, y = 91.3, f = "e" },
					{ t = "accept", quest = 3461, title = "Return to Tymor", npc = 8392, npcName = "Pilot Xiggs Fuselighter", map = 1447, x = 77.8, y = 91.3, f = "e" },
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
					{ t = "accept", quest = 4101, title = "Cleansing Felwood", npc = 9528, npcName = "Arathandris Silversky", map = 1448, x = 54.2, y = 86.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8460, title = "Timbermaw Ally", npc = 11554, npcName = "Grazle", map = 1448, x = 50.9, y = 85.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5155, title = "Forces of Jaedenar", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.2, y = 82.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4421, title = "The Corruption of the Jadefire", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.3, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5156, title = "Verifying the Corruption", npc = 10921, npcName = "Taronn Redfeather", map = 1448, x = 50.9, y = 81.7, f = "e" },
					{ t = "accept", quest = 5249, title = "To Winterspring!", npc = 10924, npcName = "Ivy Leafrunner", map = 1448, x = 50.9, y = 81.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Emerald Sanctuary", text = "Emerald Sanctuary", map = 1448, x = 51.5, y = 82.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8460, target = "Deadwood Warrior", count = 6, oi = 1, map = 1448, x = 49.1, y = 89.1, f = "e" },
					{ t = "kill", quest = 8460, target = "Deadwood Pathfinder", count = 6, oi = 2, map = 1448, x = 49.1, y = 89.1, f = "e" },
					{ t = "kill", quest = 8460, target = "Deadwood Gardener", count = 6, oi = 3, map = 1448, x = 49.1, y = 89.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8460, title = "Timbermaw Ally", npc = 11554, npcName = "Grazle", map = 1448, x = 50.9, y = 85.0, f = "e" },
					{ t = "accept", quest = 8462, title = "Speak to Nafien", npc = 11554, npcName = "Grazle", map = 1448, x = 50.9, y = 85.0, f = "e" },
				},
			},
			{
				note = "Click the Package of Empty Ooze Containers in your bags|use Package of Empty Ooze Containers##11912",
				goals = {
					{ t = "use", item = 11912, itemName = "Package of Empty Ooze Containers", f = "e" },
					{ t = "collect", quest = 4512, item = 11914, itemName = "Empty Cursed Ooze Jar", count = 6, f = "e" },
					{ t = "collect", quest = 4512, item = 11948, itemName = "Empty Tainted Ooze Jar", count = 6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Cursed Oozes", count = 1, map = 1448, x = 41.9, y = 68.2, f = "e" },
					{ t = "collect", quest = 4512, itemName = "Filled Cursed Ooze Jar", count = 6, oi = 1, map = 1448, x = 41.9, y = 68.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Tainted Oozes", count = 1, map = 1448, x = 41.0, y = 59.7, f = "e" },
					{ t = "collect", quest = 4512, itemName = "Filled Tainted Ooze Jar", count = 6, oi = 2, map = 1448, x = 41.0, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5155, target = "Jaedenar Hound", count = 4, oi = 1, map = 1448, x = 38.5, y = 59.2, f = "e" },
					{ t = "kill", quest = 5155, target = "Jaedenar Guardian", count = 4, oi = 2, map = 1448, x = 38.5, y = 59.2, f = "e" },
					{ t = "kill", quest = 5155, target = "Jaedenar Adept", count = 6, oi = 3, map = 1448, x = 38.5, y = 59.2, f = "e" },
					{ t = "kill", quest = 5155, target = "Jaedenar Cultist", count = 6, oi = 4, map = 1448, x = 38.5, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4421, target = "Jadefire Felsworn", count = 11, oi = 1, map = 1448, x = 37.5, y = 68.4, f = "e" },
					{ t = "kill", quest = 4421, target = "Jadefire Shadowstalker", count = 9, oi = 2, map = 1448, x = 37.5, y = 68.4, f = "e" },
					{ t = "kill", quest = 4421, target = "Jadefire Rogue", count = 9, oi = 3, map = 1448, x = 37.5, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4421, target = "Xavathras", count = 1, oi = 4, map = 1448, x = 32.2, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5155, title = "Forces of Jaedenar", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.2, y = 82.3, f = "e" },
					{ t = "accept", quest = 5157, title = "Collection of the Corrupt Water", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.2, y = 82.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4421, title = "The Corruption of the Jadefire", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.3, y = 81.5, f = "e" },
					{ t = "accept", quest = 4906, title = "Further Corruption", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.3, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5157, itemName = "Corrupt Moonwell Water", count = 1, oi = 1, map = 1448, x = 35.2, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5157, title = "Collection of the Corrupt Water", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.2, y = 82.3, f = "e" },
					{ t = "accept", quest = 5158, title = "Seeking Spiritual Aid", npc = 10922, npcName = "Greta Mosshoof", map = 1448, x = 51.2, y = 82.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5156, target = "Entropic Beast", count = 2, oi = 2, map = 1448, x = 41.3, y = 42.4, f = "e" },
					{ t = "kill", quest = 5156, target = "Entropic Horror", count = 2, oi = 3, map = 1448, x = 41.3, y = 42.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1448, x = 43.1, y = 21.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4906, target = "Jadefire Hellcaller", count = 8, oi = 1, map = 1448, x = 42.0, y = 19.2, f = "e" },
					{ t = "kill", quest = 4906, target = "Jadefire Betrayer", count = 8, oi = 2, map = 1448, x = 42.0, y = 19.2, f = "e" },
					{ t = "kill", quest = 4906, target = "Jadefire Trickster", count = 8, oi = 3, map = 1448, x = 42.0, y = 19.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-50-55-part-3",
		pack = "guides",
		title = "Levels (50-55) (Parte 3/3)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 54,
		maxLevel = 55,
		zone = 1419,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", itemName = "Flute of Xavaric", count = 1, map = 1448, x = 39.1, y = 22.3, f = "e" },
					{ t = "accept", quest = 939, title = "Flute of Xavaric", map = 1448, x = 39.1, y = 22.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Jadefire demons", count = 1, map = 1448, x = 39.3, y = 21.4, f = "e" },
					{ t = "collect", quest = 939, itemName = "Jadefire Felbind", count = 5, oi = 1, map = 1448, x = 39.3, y = 21.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Warpwood Tree Elementals", count = 1, map = 1448, x = 54.3, y = 16.5, f = "e" },
					{ t = "collect", quest = 4101, itemName = "Blood Amber", count = 15, oi = 1, map = 1448, x = 54.3, y = 16.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Talonbranch Glade", text = "Talonbranch Glade", map = 1448, x = 62.5, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8462, title = "Speak to Nafien", npc = 15395, npcName = "Nafien", map = 1448, x = 64.8, y = 8.1, f = "e" },
					{ t = "accept", quest = 8461, title = "Deadwood of the North", npc = 15395, npcName = "Nafien", map = 1448, x = 64.8, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8461, target = "Deadwood Den Watcher", count = 6, oi = 1, map = 1448, x = 63.1, y = 8.9, f = "e" },
					{ t = "kill", quest = 8461, target = "Deadwood Avenger", count = 6, oi = 2, map = 1448, x = 63.1, y = 8.9, f = "e" },
					{ t = "kill", quest = 8461, target = "Deadwood Shaman", count = 6, oi = 3, map = 1448, x = 63.1, y = 8.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8461, title = "Deadwood of the North", npc = 15395, npcName = "Nafien", map = 1448, x = 64.8, y = 8.1, f = "e" },
					{ t = "accept", quest = 8465, title = "Speak to Salfa", npc = 15395, npcName = "Nafien", map = 1448, x = 64.8, y = 8.1, f = "e" },
				},
			},
			{
				note = "Right outside the tunnel at 27.7,34.5|goto Winterspring,27.7,34.5",
				goals = {
					{ t = "turnin", quest = 8465, title = "Speak to Salfa", npc = 11556, npcName = "Salfa", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 980, title = "The New Springs", npc = 9298, npcName = "Donova Snowden", map = 1448, x = 31.3, y = 45.2, f = "e" },
					{ t = "accept", quest = 4842, title = "Strange Sources", npc = 9298, npcName = "Donova Snowden", map = 1448, x = 31.3, y = 45.2, f = "e" },
					{ t = "turnin", quest = 3908, title = "It's a Secret to Everybody (3)", npc = 9298, npcName = "Donova Snowden", map = 1448, x = 31.3, y = 45.2, f = "e" },
					{ t = "accept", quest = 3909, title = "The Videre Elixir", npc = 9298, npcName = "Donova Snowden", map = 1448, x = 31.3, y = 45.2, f = "e" },
					{ t = "accept", quest = 5082, title = "Threat of the Winterfall", npc = 9298, npcName = "Donova Snowden", map = 1448, x = 31.3, y = 45.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Moonglade", text = "Moonglade", map = 1450, x = 48.1, y = 67.4, f = "e" },
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
					{ t = "accept", quest = 3788, title = "Jonespyre's Request", npc = 7736, npcName = "Innkeeper Shyria", map = 1444, x = 31.0, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3788, title = "Jonespyre's Request", npc = 7879, npcName = "Quintis Jonespyre", map = 1444, x = 32.4, y = 43.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4142, title = "A Visit to Gregan", npc = 7775, npcName = "Gregan Brewspewer", map = 1444, x = 45.1, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4041, item = 11242, itemName = "Evoroot", count = 1, oi = 1, map = 1444, x = 44.9, y = 10.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3909, item = 11243, itemName = "Videre Elixir", count = 3, oi = 1, map = 1444, x = 45.1, y = 25.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1444, x = 43.5, y = 42.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 939, title = "Flute of Xavaric", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.3, y = 81.5, f = "e" },
					{ t = "turnin", quest = 4906, title = "Further Corruption", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.3, y = 81.5, f = "e" },
					{ t = "accept", quest = 4441, title = "Felbound Ancients", npc = 9116, npcName = "Eridan Bluewind", map = 1448, x = 51.3, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5156, title = "Verifying the Corruption", npc = 10921, npcName = "Taronn Redfeather", map = 1448, x = 50.9, y = 81.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4101, title = "Cleansing Felwood", npc = 9528, npcName = "Arathandris Silversky", map = 1448, x = 54.2, y = 86.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 55, f = "e" },
				},
			},
		},
	})
end

