-- TuWoW_Leveling — Guides/Professions_09.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-engineering-1-300",
		pack = "guides",
		title = "Engineering (1-300) (Parte 1/2)",
		category = "Professions",
		folder = "Engineering",
		faction = "Alliance",
		next = "zygor/professions/a-engineering-1-300-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1424,
		version = 1,
		steps = {
			{
				note = "You must be at least level 5 to train Apprentice professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 5 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Engineering" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 2835, itemName = "Rough Stone", count = 60 },
				},
			},
			{
				label = "Collect_Coarse_Stone_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2836, itemName = "Coarse Stone", count = 60 },
				},
			},
			{
				label = "Collect_Heavy_Stone_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2838, itemName = "Heavy Stone", count = 30 },
				},
			},
			{
				label = "Collect_Solid_Stone_Total",
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 7912, itemName = "Solid Stone", count = 120 },
				},
			},
			{
				label = "Collect_Dense_Stone_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 12365, itemName = "Dense Stone", count = 70 },
				},
			},
			{
				label = "Collect_Moss_Agate_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These are an uncommon drop. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 1206, itemName = "Moss Agate", count = 10 },
				},
			},
			{
				label = "Collect_Medium_Leather_Total",
				along = true,
				note = "Skin their corpses. You can find more inside the cave. You will need level 155 Skinning to collect these. Farm them with Skinning or purchase them from the auction house. Farm them with Skinning. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2319, itemName = "Medium Leather", count = 15, map = 1424, x = 46.12, y = 31.76, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. Create them with Mining. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 2770, itemName = "Copper Ore" },
					{ t = "collect", item = 2840, itemName = "Copper Bar", count = 66 },
				},
			},
			{
				label = "Collect_Silver_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2775, itemName = "Silver Ore", count = 5 },
					{ t = "collect", item = 2842, itemName = "Silver Bar", count = 5 },
				},
			},
			{
				label = "Collect_Bronze_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". If you are farming Copper, save them for the next step. Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2770, itemName = "Copper Ore", count = 60 },
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 120 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Smelt the Copper and Tin Ores into Bronze Bars at a forge. Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2771, itemName = "Tin Ore", count = 60 },
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 120 },
				},
			},
			{
				label = "Collect_Steel_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". Buy them from a General Trade Supplier. Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2772, itemName = "Iron Ore", count = 4 },
					{ t = "buy", item = 3857, itemName = "Coal", count = 4 },
					{ t = "collect", item = 3859, itemName = "Steel Bar", count = 4 },
				},
			},
			{
				label = "Collect_Mithril_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 3858, itemName = "Mithril Ore", count = 161 },
					{ t = "collect", item = 3860, itemName = "Mithril Bar", count = 161 },
				},
			},
			{
				label = "Collect_Thorium_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 10620, itemName = "Thorium Ore", count = 225 },
					{ t = "collect", item = 12359, itemName = "Thorium Bar", count = 225 },
				},
			},
			{
				note = "Be sure to enter the mine as well. Farm them from level 5-20 humanoid mobs or purchase them from the auction house. Farm them from level 5-20 humanoid mobs. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 2589, itemName = "Linen Cloth", count = 50, map = 1436, x = 44.55, y = 25.01, f = "e" },
				},
			},
			{
				label = "Collect_Wool_Cloth_Total",
				along = true,
				note = "Farm them from level 16-30 humanoid mobs or purchase them from the auction house. Farm them from level 16-30 humanoid mobs. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "goto", text = "Follow the road up", map = 1433, x = 30.62, y = 43.17 },
					{ t = "goto", text = "Continue following the road", map = 1433, x = 41.97, y = 30.39 },
					{ t = "goto", text = "Follow the path up", map = 1433, x = 35.78, y = 15.0 },
					{ t = "collect", item = 2592, itemName = "Wool Cloth", count = 60, map = 1433, x = 31.13, y = 9.93, f = "e" },
				},
			},
			{
				label = "Collect_Mageweave_Cloth_Total",
				along = true,
				note = "Farm them from level 38-50 humanoid mobs or purchase them from the auction house. Farm them from level 38-50 humanoid mobs. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 4338, itemName = "Mageweave Cloth", count = 20, map = 1446, x = 40.5, y = 55.5, f = "e" },
				},
			},
			{
				label = "Collect_Runecloth_Total",
				along = true,
				note = "You can find more inside the building. Farm them from level 50+ humanoid mobs or purchase them from the auction house. Farm them from level 50+ humanoid mobs. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 14047, itemName = "Runecloth", count = 35, map = 1428, x = 42.17, y = 35.64, f = "e" },
				},
			},
			{
				label = "Begin_Profession_Leveling",
				note = "Save this, you will need it later.",
				goals = {
					{ t = "buy", item = 5956, itemName = "Blacksmith Hammer", map = 1455, x = 67.84, y = 42.5, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 2835, itemName = "Rough Stone", count = 60 },
				},
			},
			{
				goals = {
					{ t = "collect", item = 4357, itemName = "Rough Blasting Powder", count = 60 },
				},
			},
			{
				note = "Save 60 of these, you will need them later.",
				goals = {
					{ t = "skill", level = 45, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11028, npcName = "Jemma Quikswitch", map = 1455, x = 67.65, y = 44.2, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2770, itemName = "Copper Ore", count = 30 },
					{ t = "collect", item = 2840, itemName = "Copper Bar", count = 30 },
				},
			},
			{
				note = "Stand next to an anvil. Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 4359, itemName = "Handful of Copper Bolts", count = 30 },
				},
			},
			{
				note = "Stand next to an anvil. Save 30 of these, you will need them later. You may need to make a few more of these. Each additional Handful of Copper Bolts requires 1 copper bar.",
				goals = {
					{ t = "skill", level = 65, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11028, npcName = "Jemma Quikswitch", map = 1455, x = 67.65, y = 44.2, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2770, itemName = "Copper Ore", count = 6 },
					{ t = "collect", item = 2840, itemName = "Copper Bar", count = 6 },
				},
			},
			{
				note = "Stand next to an anvil. Save this, you will need it later.",
				goals = {
					{ t = "skill", level = 66, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11028, npcName = "Jemma Quikswitch", map = 1455, x = 67.65, y = 44.2, f = "e" },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4357, itemName = "Rough Blasting Powder", count = 60 },
				},
			},
			{
				label = "Collect_Handful_of_Copper_Bolts_75",
				along = true,
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4359, itemName = "Handful of Copper Bolts", count = 30 },
				},
			},
			{
				label = "Collect_Copper_Bar_75",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2770, itemName = "Copper Ore", count = 30 },
					{ t = "collect", item = 2840, itemName = "Copper Bar", count = 30 },
				},
			},
			{
				label = "Collect_Linen_Cloth_75",
				along = true,
				note = "Be sure to enter the mine as well. Farm them from level 5-20 humanoid mobs or purchase them from the auction house. Farm them from level 5-20 humanoid mobs.",
				goals = {
					{ t = "collect", item = 2589, itemName = "Linen Cloth", count = 30, map = 1436, x = 44.55, y = 25.01, f = "e" },
				},
			},
			{
				note = "Stand next to an anvil. You may need to create a few more or less of these. Each additional Rough Copper Bomb requires 2 Rough Blasting Powder, 1 Handful of Copper Bolts, 1 Copper Bar, and 1 Linen Cloth.",
				goals = {
					{ t = "skill", level = 90, skill = "Engineering" },
				},
			},
			{
				note = "You must be at least level 10 to train Journeyman professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 150, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11029, npcName = "Trixie Quikswitch", map = 1455, x = 67.48, y = 42.91, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 2836, itemName = "Coarse Stone", count = 60 },
				},
			},
			{
				note = "Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 4364, itemName = "Coarse Blasting Powder", count = 60 },
				},
			},
			{
				note = "Save 60 of these, they will be used in a later schematic.",
				goals = {
					{ t = "skill", level = 110, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11029, npcName = "Trixie Quikswitch", map = 1455, x = 67.48, y = 42.91, f = "e" },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4364, itemName = "Coarse Blasting Powder", count = 60 },
				},
			},
			{
				label = "Collect_Linen_Cloth_100",
				along = true,
				note = "Be sure to enter the mine as well. Farm them from level 5-20 humanoid mobs or purchase them from the auction house. Farm them from level 5-20 humanoid mobs.",
				goals = {
					{ t = "collect", item = 2589, itemName = "Linen Cloth", count = 20, map = 1436, x = 44.55, y = 25.01, f = "e" },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Coarse Dynamite requires 3 Coarse Blasting Powder and 1 Linen Cloth.",
				goals = {
					{ t = "skill", level = 115, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11029, npcName = "Trixie Quikswitch", map = 1455, x = 67.48, y = 42.91, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2775, itemName = "Silver Ore", count = 5 },
					{ t = "collect", item = 2842, itemName = "Silver Bar", count = 5 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 120, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11029, npcName = "Trixie Quikswitch", map = 1455, x = 67.48, y = 42.91, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". If you are farming Copper, save them for the next step. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2770, itemName = "Copper Ore", count = 25 },
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 50 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Smelt the Copper and Tin Ores into Bronze Bars at a forge. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2771, itemName = "Tin Ore", count = 25 },
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 50 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 2880, itemName = "Weak Flux", count = 25, map = 1455, x = 67.84, y = 42.5, f = "e" },
				},
			},
			{
				note = "Stand next to an anvil. Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 4371, itemName = "Bronze Tube", count = 10 },
				},
			},
			{
				note = "Stand next to an anvil. Save 10 of these, you will need them later. You may need to create a few more or less of these. Each additional Bronze Tube requires 2 Bronze Bars and 1 Weak Flux.",
				goals = {
					{ t = "skill", level = 140, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11029, npcName = "Trixie Quikswitch", map = 1455, x = 67.48, y = 42.91, f = "e" },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4371, itemName = "Bronze Tube", count = 10 },
				},
			},
			{
				label = "Collect_Moss_Agate_135",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining. This is an uncommon drop.",
				goals = {
					{ t = "collect", item = 1206, itemName = "Moss Agate", count = 10 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 150, skill = "Engineering" },
				},
			},
			{
				note = "You must be at least level 20 to train Expert professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 20 },
				},
			},
			{
				note = "For Season of Discovery, you must be at least level 26 to train Expert professions.",
				goals = {
					{ t = "level", level = 26 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "skill", level = 225, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Heavy Blasting Powder", map = 1455, x = 68.46, y = 43.56 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Whirring Bronze Gizmo", map = 1455, x = 68.46, y = 43.56 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 2838, itemName = "Heavy Stone", count = 30 },
				},
			},
			{
				note = "Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 4377, itemName = "Heavy Blasting Powder", count = 30 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". If you are farming Copper, save them for the next step. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2770, itemName = "Copper Ore", count = 15 },
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 30 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Smelt the Copper and Tin Ores into Bronze Bars at a forge. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2771, itemName = "Tin Ore", count = 15 },
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 30 },
				},
			},
			{
				label = "Collect_Wool_Cloth_Gizmo",
				along = true,
				note = "Farm them from level 16-30 humanoid mobs or purchase them from the auction house. Farm them from level 16-30 humanoid mobs.",
				goals = {
					{ t = "goto", text = "Follow the road up", map = 1433, x = 30.62, y = 43.17 },
					{ t = "goto", text = "Continue following the road", map = 1433, x = 41.97, y = 30.39 },
					{ t = "goto", text = "Follow the path up", map = 1433, x = 35.78, y = 15.0 },
					{ t = "collect", item = 2592, itemName = "Wool Cloth", count = 15, map = 1433, x = 31.13, y = 9.93, f = "e" },
				},
			},
			{
				note = "Stand next to an anvil. Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 4375, itemName = "Whirring Bronze Gizmo", count = 15, map = 1455, x = 49.83, y = 44.12, f = "e" },
				},
			},
			{
				note = "Stand next to an anvil. Save 15 of these, you will need them later. You may need to create a few more or less of these. Each additional Whirring Bronze Gizmo requires 2 Bronze Bars and 1 Wool Cloth.",
				goals = {
					{ t = "skill", level = 165, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Bronze Framework", map = 1455, x = 68.46, y = 43.56 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". If you are farming Copper, save them for the next step. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2770, itemName = "Copper Ore", count = 15 },
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 30 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Smelt the Copper and Tin Ores into Bronze Bars at a forge. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2771, itemName = "Tin Ore", count = 15 },
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 30 },
				},
			},
			{
				label = "Collect_Medium_Leather_Framework",
				along = true,
				note = "Skin their corpses. You can find more inside the cave. Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 2319, itemName = "Medium Leather", count = 15, map = 1424, x = 46.12, y = 31.76, f = "e" },
				},
			},
			{
				label = "Collect_Wool_Cloth_Framework",
				along = true,
				note = "Farm them from level 16-30 humanoid mobs or purchase them from the auction house. Farm them from level 16-30 humanoid mobs.",
				goals = {
					{ t = "goto", text = "Follow the road up", map = 1433, x = 30.62, y = 43.17 },
					{ t = "goto", text = "Continue following the road", map = 1433, x = 41.97, y = 30.39 },
					{ t = "goto", text = "Follow the path up", map = 1433, x = 35.78, y = 15.0 },
					{ t = "collect", item = 2592, itemName = "Wool Cloth", count = 15, map = 1433, x = 31.13, y = 9.93, f = "e" },
				},
			},
			{
				note = "Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 4382, itemName = "Bronze Framework", count = 15 },
				},
			},
			{
				note = "Save 15 of these, you will need them later.",
				goals = {
					{ t = "skill", level = 175, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Explosive Sheep", map = 1455, x = 68.46, y = 43.56 },
				},
			},
			{
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4377, itemName = "Heavy Blasting Powder", count = 30 },
				},
			},
			{
				label = "Collect_Whirring_Bronze_Gizmo_175",
				along = true,
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4375, itemName = "Whirring Bronze Gizmo", count = 15 },
				},
			},
			{
				label = "Collect_Bronze_Framework_175",
				along = true,
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 4382, itemName = "Bronze Framework", count = 15 },
				},
			},
			{
				label = "Collect_Wool_Cloth_175",
				along = true,
				note = "Farm them from level 16-30 humanoid mobs or purchase them from the auction house. Farm them from level 16-30 humanoid mobs.",
				goals = {
					{ t = "goto", text = "Follow the road up", map = 1433, x = 30.62, y = 43.17 },
					{ t = "goto", text = "Continue following the road", map = 1433, x = 41.97, y = 30.39 },
					{ t = "goto", text = "Follow the path up", map = 1433, x = 35.78, y = 15.0 },
					{ t = "collect", item = 2592, itemName = "Wool Cloth", count = 30, map = 1433, x = 31.13, y = 9.93, f = "e" },
				},
			},
			{
				note = "Stand next to an anvil. Save 5 of these if you intend to specialize in Goblin Engineering later.",
				goals = {
					{ t = "skill", level = 190, skill = "Engineering" },
				},
			},
		},
	})
end

