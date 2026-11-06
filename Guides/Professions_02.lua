-- TuWoW_Leveling — Guides/Professions_02.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-blacksmithing-1-300",
		pack = "guides",
		title = "Blacksmithing (1-300) (Parte 1/2)",
		category = "Professions",
		folder = "Blacksmithing",
		faction = "Alliance",
		next = "zygor/professions/a-blacksmithing-1-300-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1426,
		version = 1,
		steps = {
			{
				note = "You must be at least level 5 to train Apprentice professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 5 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building.", map = 1426, x = 45.9, y = 51.84, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "skill", level = 75, skill = "Blacksmithing" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 2835, itemName = "Rough Stone", count = 150 },
				},
			},
			{
				label = "Collect_Coarse_Stone_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2836, itemName = "Coarse Stone", count = 85 },
				},
			},
			{
				label = "Collect_Copper_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2840, itemName = "Copper Bar", count = 150 },
				},
			},
			{
				label = "Collect_Silver_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2842, itemName = "Silver Bar", count = 5 },
				},
			},
			{
				label = "Collect_Bronze_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky Use your mining skill to create Bronze Bars. notinsticky You can pick up copper along this path as well. notinsticky Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2771, itemName = "Tin Ore", count = 70 },
					{ t = "collect", item = 2770, itemName = "Copper Ore", count = 70 },
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 140 },
				},
			},
			{
				label = "Collect_Heavy_Stone_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2838, itemName = "Heavy Stone", count = 90 },
				},
			},
			{
				label = "Collect_Gold_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 3577, itemName = "Gold Bar", count = 5 },
				},
			},
			{
				label = "Collect_Iron_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 3575, itemName = "Iron Bar", count = 230 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Buy them from a General Trade Supplier. Use your mining ability to smelt Steel Bars. Create them with Mining or purchase them from the auction house. Create them with Mining. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 2772, itemName = "Iron Ore", count = 190 },
					{ t = "buy", item = 3857, itemName = "Coal", count = 190 },
					{ t = "collect", item = 3859, itemName = "Steel Bar", count = 190 },
				},
			},
			{
				label = "Collect_Solid_Stone_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 7912, itemName = "Solid Stone", count = 520 },
				},
			},
			{
				label = "Collect_Mithril_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky Smelt the ores into bars at a forge. notinsticky Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 3858, itemName = "Mithril Ore", count = 250 },
					{ t = "collect", item = 3860, itemName = "Mithril Bar", count = 250 },
				},
			},
			{
				label = "Collect_Mageweave_Cloth_Total",
				along = true,
				note = "Farm them from humanoid mobs or purchase them from the auction house. notinsticky Farm them from humanoid mobs. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 4338, itemName = "Mageweave Cloth", count = 60, map = 1446, x = 40.5, y = 55.5, f = "e" },
				},
			},
			{
				label = "Collect_Dense_Stone_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 12365, itemName = "Dense Stone", count = 20 },
				},
			},
			{
				label = "Collect_Thorium_Bar_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky Smelt the ores into bars at a forge. notinsticky Create them with Mining or purchase them from the auction house. notinsticky Create them with Mining. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 10620, itemName = "Thorium Ore", count = 750 },
					{ t = "collect", item = 12359, itemName = "Thorium Bar", count = 750 },
				},
			},
			{
				label = "Collect_Star_Ruby_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These are an uncommon drop. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 7910, itemName = "Star Ruby", count = 31 },
				},
			},
			{
				label = "Collect_Aquamarine_Total",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". notinsticky Farm them with Mining or purchase them from the auction house. notinsticky Farm them with Mining. notinsticky These are an uncommon drop. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 7909, itemName = "Aquamarine", count = 5 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building.", map = 1455, x = 42.05, y = 33.24, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "goto", text = "Enter the building.", map = 1439, x = 37.77, y = 41.36, only = { races = { "NightElf" } } },
					{ t = "buy", item = 2605, itemName = "Green Dye", count = 35, map = 1439, x = 38.15, y = 40.6, f = "e" },
				},
			},
			{
				label = "Begin_Profession_Leveling",
				note = "Inside the building. Save this, you will need it later.",
				goals = {
					{ t = "goto", text = "Enter the building.", map = 1426, x = 45.9, y = 51.84, only = { races = { "Dwarf", "Gnome" } } },
					{ t = "buy", item = 5956, itemName = "Blacksmith Hammer", map = 1439, x = 38.1, y = 41.1, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 2835, itemName = "Rough Stone", count = 40 },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Rough Sharpening Stone requires one Rough Stone.",
				goals = {
					{ t = "skill", level = 30, skill = "Blacksmithing" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building.", map = 1426, x = 45.9, y = 51.84, only = { races = { "Dwarf", "Gnome" } } },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 2835, itemName = "Rough Stone", count = 110 },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Rough Grinding Stone requires two Rough Stone. Save 10 of these, you will need them later.",
				goals = {
					{ t = "skill", level = 65, skill = "Blacksmithing" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building.", map = 1426, x = 45.9, y = 51.84, only = { races = { "Dwarf", "Gnome" } } },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 2836, itemName = "Coarse Stone", count = 25 },
				},
			},
			{
				note = "You may need to create a few more or less of these. Each additional Coarse Sharpening Stone requires one Coarse Stone.",
				goals = {
					{ t = "skill", level = 75, skill = "Blacksmithing" },
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
					{ t = "skill", level = 150, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 5511, npcName = "Therum Deepforge", map = 1453, x = 63.66, y = 37.0, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 2836, itemName = "Coarse Stone", count = 60 },
				},
			},
			{
				goals = {
					{ t = "collect", item = 3478, itemName = "Coarse Grinding Stone", count = 30 },
				},
			},
			{
				note = "You may need to create a few more of these. Each additional Coarse Grinding Stone requires two Coarse Stone. Save 30 of these, you will need them later.",
				goals = {
					{ t = "skill", level = 90, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 5511, npcName = "Therum Deepforge", map = 1453, x = 63.66, y = 37.0, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2770, itemName = "Copper Ore", count = 100 },
					{ t = "collect", item = 2840, itemName = "Copper Bar", count = 100 },
				},
			},
			{
				note = "Stand next to an anvil.",
				goals = {
					{ t = "skill", level = 100, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 5511, npcName = "Therum Deepforge", map = 1453, x = 63.66, y = 37.0, f = "e" },
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
				label = "Collect_Rough_Grinding_Stone_105",
				along = true,
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 3470, itemName = "Rough Grinding Stone", count = 10 },
				},
			},
			{
				note = "Stand next to an anvil.",
				goals = {
					{ t = "skill", level = 105, skill = "Blacksmithing" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Smelt the ores into bars at a forge. Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 2770, itemName = "Copper Ore", count = 50 },
					{ t = "collect", item = 2840, itemName = "Copper Bar", count = 50 },
				},
			},
			{
				note = "Stand next to an anvil.",
				goals = {
					{ t = "skill", level = 110, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 5511, npcName = "Therum Deepforge", map = 1453, x = 63.66, y = 37.0, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Save the ore if you're farming yourself. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2770, itemName = "Copper Ore", count = 45 },
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 90 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Combine these with the Copper Ore from the previous step for Bronze Bars. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2771, itemName = "Tin Ore", count = 45 },
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 90 },
				},
			},
			{
				note = "Stand next to an anvil.",
				goals = {
					{ t = "skill", level = 125, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 5511, npcName = "Therum Deepforge", map = 1453, x = 63.66, y = 37.0, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 2838, itemName = "Heavy Stone", count = 90 },
				},
			},
			{
				goals = {
					{ t = "collect", item = 3486, itemName = "Heavy Grinding Stone", count = 30 },
				},
			},
			{
				note = "You may need to create a few more of these. Each additional Heavy Grinding Stone requires three Heavy Stone. Save 30 of these, you will need them later.",
				goals = {
					{ t = "skill", level = 140, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 5511, npcName = "Therum Deepforge", map = 1453, x = 63.66, y = 37.0, f = "e" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Save the ore if you're farming yourself. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2770, itemName = "Copper Ore", count = 25 },
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 50 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Combine these with the Copper Ore from the previous step for Bronze Bars. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2771, itemName = "Tin Ore", count = 25 },
					{ t = "collect", item = 2841, itemName = "Bronze Bar", count = 50 },
				},
			},
			{
				label = "Collect_Coarse_Grinding_Stone_150",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". You created these in a previous step.",
				goals = {
					{ t = "collect", item = 3478, itemName = "Coarse Grinding Stone", count = 20 },
				},
			},
			{
				note = "Stand next to an anvil.",
				goals = {
					{ t = "skill", level = 150, skill = "Blacksmithing" },
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
				goals = {
					{ t = "skill", level = 225, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Golden Rod", map = 1455, x = 52.55, y = 41.46 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2776, itemName = "Gold Ore", count = 5 },
					{ t = "collect", item = 3577, itemName = "Gold Bar", count = 5 },
				},
			},
			{
				label = "Collect_Coarse_Grinding_Stone_155",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". You created these in a previous step.",
				goals = {
					{ t = "collect", item = 3478, itemName = "Coarse Grinding Stone", count = 10 },
				},
			},
			{
				note = "Stand next to an anvil.",
				goals = {
					{ t = "skill", level = 155, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Green Iron Leggings", map = 1455, x = 52.55, y = 41.46 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2772, itemName = "Iron Ore", count = 80 },
					{ t = "collect", item = 3575, itemName = "Iron Bar", count = 80 },
				},
			},
			{
				label = "Collect_Heavy_Grinding_Stone_165",
				along = true,
				note = "Track them on your minimap with \"Find Minerals\". You created these in a previous step.",
				goals = {
					{ t = "collect", item = 3486, itemName = "Heavy Grinding Stone", count = 10 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1455, x = 43.85, y = 29.81 },
					{ t = "buy", item = 2605, itemName = "Green Dye", count = 35, map = 1455, x = 42.96, y = 28.32, f = "e" },
				},
			},
			{
				note = "Stand next to an anvil.",
				goals = {
					{ t = "skill", level = 165, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Green Iron Bracers", map = 1455, x = 52.55, y = 41.46 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2772, itemName = "Iron Ore", count = 150 },
					{ t = "collect", item = 3575, itemName = "Iron Bar", count = 150 },
				},
			},
			{
				label = "Collect_Green_Dye_190",
				along = true,
				note = "You purchased these in a previous step.",
				goals = {
					{ t = "collect", item = 2605, itemName = "Green Dye", count = 25 },
				},
			},
			{
				note = "Stand next to an anvil.",
				goals = {
					{ t = "skill", level = 190, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Golden Scale Bracers", map = 1455, x = 52.55, y = 41.46 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Buy them from a General Trade Supplier. Smelt the ores into bars at a forge. Create them with Mining or purchase them from the auction house. Create them with Mining.",
				goals = {
					{ t = "collect", item = 2772, itemName = "Iron Ore", count = 50 },
					{ t = "buy", item = 3857, itemName = "Coal", count = 50 },
					{ t = "collect", item = 3859, itemName = "Steel Bar", count = 50 },
				},
			},
			{
				label = "Collect_Heavy_Grinding_Stone_200",
				along = true,
				note = "You created these in a previous step.",
				goals = {
					{ t = "collect", item = 3486, itemName = "Heavy Grinding Stone", count = 20 },
				},
			},
			{
				note = "Stand next to an anvil. If you intend to choose the Armorsmith specialization, keep 6 of these.",
				goals = {
					{ t = "skill", level = 200, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Solid Grinding Stone", map = 1455, x = 52.55, y = 41.46 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 7912, itemName = "Solid Stone", count = 520 },
				},
			},
			{
				note = "Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 7966, itemName = "Solid Grinding Stone", count = 130 },
				},
			},
			{
				note = "You may need to make a few more of these. Each additional Solid Grinding Stone requires four Solid Stone. Save 130 these, you will need them later.",
				goals = {
					{ t = "skill", level = 210, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Heavy Mithril Gauntlet", map = 1455, x = 52.55, y = 41.46 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Minerals\". Smelt the ores into bars at a forge. Farm them with Mining or purchase them from the auction house. Farm them with Mining.",
				goals = {
					{ t = "collect", item = 3858, itemName = "Mithril Ore", count = 90 },
					{ t = "collect", item = 3860, itemName = "Mithril Bar", count = 90 },
				},
			},
			{
				label = "Collect_Mageweave_Cloth_225",
				along = true,
				note = "Farm them from humanoid mobs or purchase them from the auction house. Create them with Mining. notinsticky",
				goals = {
					{ t = "collect", item = 4338, itemName = "Mageweave Cloth", count = 60, map = 1446, x = 40.5, y = 55.5, f = "e" },
				},
			},
			{
				note = "Stand next to an anvil.",
				goals = {
					{ t = "skill", level = 225, skill = "Blacksmithing" },
				},
			},
			{
				note = "You must be at least level 35 to train Artisan professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 35 },
				},
			},
		},
	})
end

