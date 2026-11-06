-- TuWoW_Leveling — Guides/Professions_20.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-alchemy-1-300",
		pack = "guides",
		title = "Alchemy (1-300) (Parte 1/2)",
		category = "Professions",
		folder = "Alchemy",
		faction = "Horde",
		next = "zygor/professions/h-alchemy-1-300-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "You must be at least level 5 to train professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 5 },
				},
			},
			{
				note = "Inside the building. Inside the tent. Inside the chamber.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 56.48, y = 35.25, only = { races = { "Orc", "Troll" } } },
					{ t = "goto", text = "Enter the tent", map = 1456, x = 47.81, y = 35.93, only = { races = { "Tauren" } } },
					{ t = "goto", text = "Enter the tunnel", map = 1458, x = 52.9, y = 77.36, only = { races = { "Scourge" } } },
					{ t = "goto", text = "Go down the tunel", map = 1458, x = 51.53, y = 80.39, only = { races = { "Scourge" } } },
					{ t = "skill", level = 75, skill = "Alchemy" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 2447, itemName = "Peacebloom", count = 65 },
				},
			},
			{
				label = "Collect_Silverleaf_Total",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 765, itemName = "Silverleaf", count = 65 },
				},
			},
			{
				label = "Collect_Briarthorn_Total",
				along = true,
				note = "Briarthorn can share a spawn with other herbs in the area, so pick them all. Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2450, itemName = "Briarthorn", count = 100 },
				},
			},
			{
				note = "Briarthorn can share a spawn with other herbs in the area, so pick them all. Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2450, itemName = "Briarthorn", count = 100 },
				},
			},
			{
				label = "Collect_Bruiseweed_Total",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2453, itemName = "Bruiseweed", count = 35 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 2453, itemName = "Bruiseweed", count = 35 },
				},
			},
			{
				label = "Collect_Mageroyal_Total",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 785, itemName = "Mageroyal", count = 20 },
				},
			},
			{
				label = "Collect_Stranglekelp_Total",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". They are underwater along the path. Bring Water Walking Potions. Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 3820, itemName = "Stranglekelp", count = 50 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". They are underwater along the path. Bring Water Walking Potions. Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 3820, itemName = "Stranglekelp", count = 50 },
				},
			},
			{
				label = "Collect_Liferoot_Total",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 3357, itemName = "Liferoot", count = 35 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 3357, itemName = "Liferoot", count = 35 },
				},
			},
			{
				label = "Collect_Kingsblood_Total",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 3356, itemName = "Kingsblood", count = 35 },
				},
			},
			{
				label = "Collect_60_Goldthron_Loop",
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 3821, itemName = "Goldthorn", count = 60 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism. These totals are approximate. You may need slightly more or less than the indicated amount.",
				goals = {
					{ t = "collect", item = 3821, itemName = "Goldthorn", count = 60 },
				},
			},
			{
				label = "Collect_Wild_Steelbloom_Total",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 3355, itemName = "Wild Steelbloom", count = 5 },
				},
			},
			{
				label = "Collect_Sungrass_Total",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 8838, itemName = "Sungrass", count = 90 },
				},
			},
			{
				label = "Collect_Khadgar's_Whisker_Total",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 3358, itemName = "Khadgar's Whisker", count = 15 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 3358, itemName = "Khadgar's Whisker", count = 15 },
				},
			},
			{
				label = "Collect_Arthas'_Tears_Total",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 8836, itemName = "Arthas' Tears", count = 25 },
				},
			},
			{
				label = "Collect_Blindweed_Total",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 8839, itemName = "Blindweed", count = 50 },
				},
			},
			{
				label = "Collect_Golden_Sansam_Total",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 13464, itemName = "Golden Sansam", count = 50 },
				},
			},
			{
				label = "Collect_Mountain_Silversage_Total",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. notinsticky Farm them with Herbalism. notinsticky These totals are approximate. notinsticky You may need slightly more or less than the indicated amount. notinsticky",
				goals = {
					{ t = "collect", item = 13465, itemName = "Mountain Silversage", count = 25 },
				},
			},
			{
				note = "Inside the building. Inside the tent.",
				goals = {
					{ t = "buy", item = 3371, itemName = "Empty Vial", count = 85, map = 1458, x = 51.71, y = 74.67, f = "e" },
					{ t = "buy", item = 3372, itemName = "Leaded Vial", count = 105, map = 1458, x = 51.71, y = 74.67, f = "e" },
					{ t = "buy", item = 8925, itemName = "Crystal Vial", count = 115, map = 1458, x = 51.71, y = 74.67, f = "e" },
				},
			},
			{
				label = "Begin_Profession_Leveling",
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 2447, itemName = "Peacebloom", count = 65 },
				},
			},
			{
				label = "Collect_Silverleaf_60",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 765, itemName = "Silverleaf", count = 65 },
				},
			},
			{
				note = "Inside the building. Inside the tent.",
				goals = {
					{ t = "buy", item = 3371, itemName = "Empty Vial", count = 65, map = 1458, x = 51.71, y = 74.67, f = "e" },
				},
			},
			{
				note = "Save these, you will need them later.",
				goals = {
					{ t = "collect", item = 118, itemName = "Minor Healing Potion", count = 65 },
				},
			},
			{
				note = "You may need to create a few more of these. Save 65 of these, you will need them later. Each additional one requires one Peacebloom, one Silverleaf, and one Empty Vial.",
				goals = {
					{ t = "skill", level = 60, skill = "Alchemy" },
				},
			},
			{
				note = "You must be at least level 10 to train Journeyman professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				note = "Inside the building. Inside the tent.",
				goals = {
					{ t = "skill", level = 150, skill = "Alchemy" },
				},
			},
			{
				note = "Inside the building. Inside the tent.",
				goals = {
					{ t = "talk", npc = 4609, npcName = "Doctor Marsh", map = 1458, x = 50.91, y = 74.57, f = "e" },
				},
			},
			{
				label = "Collect_65_Briarthorn_Loop",
				note = "Briarthorn can share a spawn with other herbs in the area, so pick them all. Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 2450, itemName = "Briarthorn", count = 65 },
				},
			},
			{
				note = "Briarthorn can share a spawn with other herbs in the area, so pick them all. Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 2450, itemName = "Briarthorn", count = 65 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 110, skill = "Alchemy" },
				},
			},
			{
				note = "Inside the building. Inside the tent.",
				goals = {
					{ t = "talk", npc = 4609, npcName = "Doctor Marsh", map = 1458, x = 50.91, y = 74.57, f = "e" },
				},
			},
			{
				label = "Collect_35_Briarthorn_Loop",
				note = "Briarthorn can share a spawn with other herbs in the area, so pick them all. Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 2450, itemName = "Briarthorn", count = 35 },
				},
			},
			{
				note = "Briarthorn can share a spawn with other herbs in the area, so pick them all. Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 2450, itemName = "Briarthorn", count = 35 },
				},
			},
			{
				label = "Collect_Bruiseweed_140",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 2453, itemName = "Bruiseweed", count = 35 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 2453, itemName = "Bruiseweed", count = 35 },
				},
			},
			{
				note = "Inside the building. Inside the tent.",
				goals = {
					{ t = "buy", item = 3372, itemName = "Leaded Vial", count = 35, map = 1458, x = 51.71, y = 74.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 140, skill = "Alchemy" },
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
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.87, y = 77.53 },
					{ t = "skill", level = 225, skill = "Alchemy" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.87, y = 77.53 },
					{ t = "goto", text = "Train Lesser Mana Potion", map = 1458, x = 47.78, y = 73.32 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 785, itemName = "Mageroyal", count = 20 },
				},
			},
			{
				label = "Collect_Stranglekelp_155",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". They are underwater along the path. Bring Water Walking Potions. Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3820, itemName = "Stranglekelp", count = 20 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". They are underwater along the path. Bring Water Walking Potions. Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3820, itemName = "Stranglekelp", count = 20 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 3371, itemName = "Empty Vial", count = 20, map = 1458, x = 51.71, y = 74.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 155, skill = "Alchemy" },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.87, y = 77.53 },
					{ t = "goto", text = "Train Greater Healing Potion", map = 1458, x = 47.78, y = 73.32 },
				},
			},
			{
				label = "Collect_35_Liferoot_Loop",
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3357, itemName = "Liferoot", count = 35 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3357, itemName = "Liferoot", count = 35 },
				},
			},
			{
				label = "Collect_Kingsblood_185",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3356, itemName = "Kingsblood", count = 35 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 3372, itemName = "Leaded Vial", count = 35, map = 1458, x = 51.71, y = 74.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 185, skill = "Alchemy" },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.87, y = 77.53 },
					{ t = "goto", text = "Train Elixir of Agility", map = 1458, x = 47.78, y = 73.32 },
				},
			},
			{
				label = "Collect_30_Goldthorn_Loop",
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3821, itemName = "Goldthorn", count = 30 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3821, itemName = "Goldthorn", count = 30 },
				},
			},
			{
				label = "Collect_Stranglekelp_210",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". They are underwater along the path. Bring Water Walking Potions. Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3820, itemName = "Stranglekelp", count = 30 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". They are underwater along the path. Bring Water Walking Potions. Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3820, itemName = "Stranglekelp", count = 30 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 3372, itemName = "Leaded Vial", count = 30, map = 1458, x = 51.71, y = 74.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 210, skill = "Alchemy" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.87, y = 77.53 },
					{ t = "goto", text = "Train Elixir of Greater Defense", map = 1458, x = 47.78, y = 73.32 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3355, itemName = "Wild Steelbloom", count = 5 },
				},
			},
			{
				label = "Collect_Goldthorn_215",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3821, itemName = "Goldthorn", count = 5 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3821, itemName = "Goldthorn", count = 5 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 3372, itemName = "Leaded Vial", count = 5, map = 1458, x = 51.71, y = 74.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 215, skill = "Alchemy" },
				},
			},
			{
				note = "You must be at least level 35 to train Artisan professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 35 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1435, x = 47.16, y = 54.27 },
					{ t = "skill", level = 300, skill = "Alchemy" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Train Superior Healing Potion", map = 1435, x = 48.52, y = 55.83 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 8838, itemName = "Sungrass", count = 15 },
				},
			},
			{
				label = "Collect_Khadgar's_Whisker_230",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3358, itemName = "Khadgar's Whisker", count = 15 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3358, itemName = "Khadgar's Whisker", count = 15 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 8925, itemName = "Crystal Vial", count = 15, map = 1435, x = 45.78, y = 52.83, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 230, skill = "Alchemy" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1435, x = 47.16, y = 54.27 },
					{ t = "goto", text = "Train Elixir of Detect Undead", map = 1435, x = 48.52, y = 55.83 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 8836, itemName = "Arthas' Tears", count = 25 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 8925, itemName = "Crystal Vial", count = 25, map = 1454, x = 45.78, y = 52.83, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 250, skill = "Alchemy" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1435, x = 47.16, y = 54.27 },
					{ t = "goto", text = "Train Elixir of Greater Agility", map = 1435, x = 48.52, y = 55.83 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 8838, itemName = "Sungrass", count = 25 },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-alchemy-1-300-part-2",
		pack = "guides",
		title = "Alchemy (1-300) (Parte 2/2)",
		category = "Professions",
		folder = "Alchemy",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1454,
		version = 1,
		steps = {
			{
				label = "Collect_Goldthorn_265",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3821, itemName = "Goldthorn", count = 25 },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 3821, itemName = "Goldthorn", count = 25 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "buy", item = 8925, itemName = "Crystal Vial", count = 25, map = 1454, x = 45.78, y = 52.83, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 265, skill = "Alchemy" },
				},
			},
			{
				note = "This is a limited supply item that can also be purchased from the auction house. This is a limited supply item.",
				goals = {
					{ t = "buy", item = 13477, itemName = "Recipe: Superior Mana Potion", map = 1458, x = 51.71, y = 74.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 13477, itemName = "Recipe: Superior Mana Potion" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 8838, itemName = "Sungrass", count = 50 },
				},
			},
			{
				label = "Collect_Blindweed_285",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 8839, itemName = "Blindweed", count = 50 },
				},
			},
			{
				goals = {
					{ t = "buy", item = 8925, itemName = "Crystal Vial", count = 25, map = 1458, x = 51.71, y = 74.67, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 285, skill = "Alchemy" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1452, x = 60.56, y = 38.2 },
					{ t = "goto", text = "Enter the building", map = 1452, x = 60.83, y = 37.85 },
					{ t = "buy", item = 8925, itemName = "Crystal Vial", count = 25, map = 1452, x = 60.75, y = 37.78, f = "e" },
				},
			},
			{
				note = "Inside the building. This is a limited supply item that can also be purchased from the auction house. This is a limited supply item.",
				goals = {
					{ t = "buy", item = 13480, itemName = "Recipe: Major Healing Potion", map = 1452, x = 60.75, y = 37.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 13480, itemName = "Recipe: Major Healing Potion" },
				},
			},
			{
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 13464, itemName = "Golden Sansam", count = 50 },
				},
			},
			{
				label = "Collect_Mountain_Silversage_300",
				along = true,
				note = "Track them on your minimap with \"Find Herbs\". Farm them with Herbalism or purchase them from the auction house. Farm them with Herbalism.",
				goals = {
					{ t = "collect", item = 13465, itemName = "Mountain Silversage", count = 25 },
				},
			},
			{
				goals = {
					{ t = "skill", level = 300, skill = "Alchemy" },
				},
			},
		},
	})
end

