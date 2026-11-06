-- TuWoW_Leveling — Guides/Professions_27.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-engineering-1-300",
		pack = "guides",
		title = "Engineering (1-300) (Parte 1/2)",
		category = "Professions",
		folder = "Engineering",
		faction = "Horde",
		next = "zygor/professions/h-engineering-1-300-part-2",
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
				note = "Track them on your minimap with \"Find Minerals\". notinsticky You will need level 65 Mining to collect these. notinsticky Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2836, itemName = "Coarse Stone", count = 60 },
				},
			},
			{
				label = "Collect_Heavy_Stone_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky You will need level 125 Mining to collect these. notinsticky Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2838, itemName = "Heavy Stone", count = 30 },
				},
			},
			{
				label = "Collect_Solid_Stone_Total",
				note = "Track them on your minimap with \"Find Minerals\". notinsticky You will need level 175 Mining to collect these. notinsticky Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 7912, itemName = "Solid Stone", count = 120 },
				},
			},
			{
				label = "Collect_Dense_Stone_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky You will need level 245 Mining to collect these. notinsticky Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 12365, itemName = "Dense Stone", count = 70 },
				},
			},
			{
				label = "Collect_Moss_Agate_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky You will need level 65 Mining to collect Tin Ore nodes and 75 to collect Silver Ore nodes. notinsticky Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 1206, itemName = "Moss Agate", count = 10 },
				},
			},
			{
				label = "Collect_Medium_Leather_Total",
				along = true,
				note = "Skin their corpses. notinsticky You can find more inside the cave. notinsticky You will need level 155 Skinning to collect these. notinsticky Farm them with Skinning or purchase them from the auction house. Farm them with Skinning. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2319, itemName = "Medium Leather", count = 15, map = 1424, x = 46.12, y = 31.76, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Create them with Mining or purchase them from the auction house. Create them with Mining. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 2840, itemName = "Copper Bar", count = 66 },
				},
			},
			{
				label = "Collect_Silver_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky You will need level 75 Mining to collect these. notinsticky Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2842, itemName = "Silver Bar", count = 5 },
				},
			},
			{
				label = "Collect_Bronze_Bar_Total",
				along = true,
				note = "Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 120 },
				},
			},
			{
				label = "Collect_Steel_Bar_Total",
				along = true,
				note = "Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 3859, itemName = "Steel Bar", count = 4 },
				},
			},
			{
				label = "Collect_Mithril_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky You will need level 175 Mining to collect these. notinsticky Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 3860, itemName = "Mithril Bar", count = 161 },
				},
			},
			{
				label = "Collect_Thorium_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky You will need level 245 Mining to collect these. notinsticky Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 12359, itemName = "Thorium Bar", count = 225 },
				},
			},
			{
				note = "Farm them from level 5-20 humanoid mobs or purchase them from the auction house. Farm them from level 5-20 humanoid mobs. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 2589, itemName = "Linen Cloth", count = 50 },
				},
			},
			{
				label = "Collect_Wool_Cloth_Total",
				along = true,
				note = "Farm them from level 16-30 humanoid mobs or purchase them from the auction house. Farm them from level 16-30 humanoid mobs. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2592, itemName = "Wool Cloth", count = 60 },
				},
			},
			{
				label = "Collect_Mageweave_Cloth_Total",
				along = true,
				note = "Farm them from level 38-50 humanoid mobs or purchase them from the auction house. Farm them from level 38-50 humanoid mobs. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 4338, itemName = "Mageweave Cloth", count = 20 },
				},
			},
			{
				label = "Collect_Runecloth_Total",
				along = true,
				note = "Farm them from level 50+ humanoid mobs or purchase them from the auction house. Farm them from level 50+ humanoid mobs. These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 14047, itemName = "Runecloth", count = 35 },
				},
			},
			{
				label = "Begin_Profession_Leveling",
				note = "Save this, you will need it later.",
				goals = {
					{ t = "buy", item = 5956, itemName = "Blacksmith Hammer", map = 1458, x = 75.48, y = 74.34, f = "e" },
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
					{ t = "skill", level = 30, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 4586, npcName = "Graham Van Talen", map = 1458, x = 75.34, y = 73.13, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
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
					{ t = "skill", level = 50, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 4586, npcName = "Graham Van Talen", map = 1458, x = 75.34, y = 73.13, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2840, itemName = "Copper Bar", count = 6 },
				},
			},
			{
				note = "Stand next to an anvil. Save this, you will need it later.",
				goals = {
					{ t = "skill", level = 51, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Rough Copper Bomb", map = 1454, x = 75.96, y = 24.15 },
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
				note = "Track them on your minimap with \"Find Minerals\". Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2840, itemName = "Copper Bar", count = 30 },
				},
			},
			{
				label = "Collect_Linen_Cloth_75",
				along = true,
				note = "Farm them from level 5-20 humanoid mobs or purchase them from the auction house. Farm them from level 5-20 humanoid mobs.",
				goals = {
					{ t = "collect", item = 2589, itemName = "Linen Cloth", count = 30 },
				},
			},
			{
				note = "Stand next to an anvil. You may need to create a few more or less of these. Each additional Rough Copper Bomb requires 2 Rough Blasting Powder, 1 Handful of Copper Bolts, 1 Copper Bar, and 1 Linen Cloth.",
				goals = {
					{ t = "skill", level = 75, skill = "Engineering" },
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
					{ t = "talk", npc = 11031, npcName = "Franklin Lloyd", map = 1458, x = 76.13, y = 74.07, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 65 Mining to collect these. Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
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
					{ t = "skill", level = 95, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11031, npcName = "Franklin Lloyd", map = 1458, x = 76.13, y = 74.07, f = "e" },
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
				note = "Farm them from level 5-20 humanoid mobs or purchase them from the auction house. Farm them from level 5-20 humanoid mobs.",
				goals = {
					{ t = "collect", item = 2589, itemName = "Linen Cloth", count = 20 },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Coarse Dynamite requires 3 Coarse Blasting Powder and 1 Linen Cloth.",
				goals = {
					{ t = "skill", level = 100, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11031, npcName = "Franklin Lloyd", map = 1458, x = 76.13, y = 74.07, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 75 Mining to collect these. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2842, itemName = "Silver Bar", count = 5 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 105, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11031, npcName = "Franklin Lloyd", map = 1458, x = 76.13, y = 74.07, f = "e" },
				},
			},
			{
				note = "Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 50 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 2880, itemName = "Weak Flux", count = 25, map = 1458, x = 75.48, y = 74.34, f = "e" },
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
					{ t = "skill", level = 125, skill = "Engineering" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 11031, npcName = "Franklin Lloyd", map = 1458, x = 76.13, y = 74.07, f = "e" },
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
				note = "Track them on your minimap with \"Find Minerals\". You will need level 65 Mining to collect Tin Ore nodes and 75 to collect Silver Ore nodes. Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 1206, itemName = "Moss Agate", count = 10 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 135, skill = "Engineering" },
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
					{ t = "goto", text = "Enter the building", map = 1454, x = 75.19, y = 24.59 },
					{ t = "skill", level = 225, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Heavy Blasting Powder", map = 1454, x = 76.17, y = 25.17 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Train Whirring Bronze Gizmo", map = 1454, x = 76.17, y = 25.17 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 125 Mining to collect these. Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
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
				note = "Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 30 },
				},
			},
			{
				label = "Collect_Wool_Cloth_Gizmo",
				along = true,
				note = "Farm them from level 16-30 humanoid mobs or purchase them from the auction house. Farm them from level 16-30 humanoid mobs.",
				goals = {
					{ t = "collect", item = 2592, itemName = "Wool Cloth", count = 15 },
				},
			},
			{
				note = "Stand next to an anvil. Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 4375, itemName = "Whirring Bronze Gizmo", count = 15, map = 1417, x = 79.61, y = 22.95, f = "e" },
				},
			},
			{
				note = "Stand next to an anvil. Save 15 of these, you will need them later. You may need to create a few more or less of these. Each additional Whirring Bronze Gizmo requires 2 Bronze Bars and 1 Wool Cloth.",
				goals = {
					{ t = "skill", level = 150, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 75.19, y = 24.59 },
					{ t = "goto", text = "Train Bronze Framework", map = 1454, x = 76.17, y = 25.17 },
				},
			},
			{
				note = "Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 30 },
				},
			},
			{
				label = "Collect_Medium_Leather_Framework",
				along = true,
				note = "Skin their corpses. notinsticky You can find more inside the cave. notinsticky You will need level 155 Skinning to collect these. notinsticky Farm them with Skinning or purchase them from the auction house. Farm them with Skinning.",
				goals = {
					{ t = "collect", item = 2319, itemName = "Medium Leather", count = 15, map = 1424, x = 46.12, y = 31.76, f = "e" },
				},
			},
			{
				label = "Collect_Wool_Cloth_Framework",
				along = true,
				note = "Farm them from level 16-30 humanoid mobs or purchase them from the auction house. Farm them from level 16-30 humanoid mobs.",
				goals = {
					{ t = "collect", item = 2592, itemName = "Wool Cloth", count = 15 },
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
					{ t = "skill", level = 160, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 75.19, y = 24.59 },
					{ t = "goto", text = "Train Explosive Sheep", map = 1454, x = 76.17, y = 25.17 },
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
					{ t = "collect", item = 2592, itemName = "Wool Cloth", count = 30 },
				},
			},
			{
				note = "Stand next to an anvil. Save 5 of these if you intend to specialize in Goblin Engineering later.",
				goals = {
					{ t = "skill", level = 175, skill = "Engineering" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 75.19, y = 24.59 },
					{ t = "goto", text = "Train Gyromatic Micro-Adjustor", map = 1454, x = 76.17, y = 25.17 },
				},
			},
			{
				note = "Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 3859, itemName = "Steel Bar", count = 4 },
				},
			},
			{
				note = "Stand next to an anvil. Save this, you will need it later.",
				goals = {
					{ t = "collect", item = 10498, itemName = "Gyromatic Micro-Adjustor", map = 1454, x = 79.61, y = 22.95, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 75.19, y = 24.59 },
					{ t = "goto", text = "Train Solid Blasting Powder", map = 1454, x = 76.17, y = 25.17 },
				},
			},
		},
	})
end

