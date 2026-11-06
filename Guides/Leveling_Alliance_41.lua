-- TuWoW_Leveling — Guides/Leveling_Alliance_41.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-cenarion-field-duty-logistics-assignments",
		pack = "guides",
		title = "Cenarion Field Duty Logistics Assignments",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1451,
		version = 1,
		steps = {
			{
				label = "Accept_Field_Duty",
				goals = {
					{ t = "accept", quest = 8507, title = "Field Duty", npc = 15540, npcName = "Windcaller Kaldon", map = 1451, x = 49.98, y = 36.34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21143, itemName = "Unsigned Field Duty Papers" },
					{ t = "collect", quest = 8507, item = 23024, itemName = "Prepared Field Duty Papers" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8508, title = "Field Duty Papers", npc = 15440, npcName = "Captain Blackanvil", map = 1451, x = 32.96, y = 52.08, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8507, item = 20810, itemName = "Signed Field Duty Papers", oi = 1 },
				},
			},
			{
				note = "Choose a logistics assignment. Logistics Assignments require you to donate various materials to the Cenarion effort.",
				goals = {
					{ t = "turnin", quest = 8507, title = "Field Duty", npc = 15540, npcName = "Windcaller Kaldon", map = 1451, x = 49.98, y = 36.34, f = "e" },
				},
			},
			{
				label = "Begin_Logistics_Assignment",
				goals = {
					{ t = "use", item = 21132, itemName = "Logistics Assignment" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21257, itemName = "Logistics Task Briefing IV" },
					{ t = "accept", quest = 8778, title = "The Ironforge Brigade Needs Explosives!" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21259, itemName = "Logistics Task Briefing V" },
					{ t = "accept", quest = 8779, title = "Scrying Materials" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21260, itemName = "Logistics Task Briefing VI" },
					{ t = "accept", quest = 8781, title = "Arms for the Field" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21263, itemName = "Logistics Task Briefing VII" },
					{ t = "accept", quest = 8780, title = "Armor Kits for the Field" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20806, itemName = "Logistics Task Briefing X" },
					{ t = "accept", quest = 8496, title = "Bandages for the Field" },
				},
			},
			{
				note = "Craft them with Alchemy or purchase them from the Auction House. You can create them with Alchemy. Each one requires 1 Firebloom, 1 Goldthorn, and 1 Crystal Vial to create.",
				goals = {
					{ t = "collect", quest = 8778, item = 8956, itemName = "Oil of Immolation", count = 6, oi = 1 },
				},
			},
			{
				label = "Collect_5_Goblin_Rocket_Fuel",
				along = true,
				note = "Craft them with Alchemy or purchase them from the Auction House. You can create them with Alchemy. Each one requires 1 Firebloom, 1 Volatile Rum, and 1 Leaded Vial to create.",
				goals = {
					{ t = "collect", quest = 8778, item = 9061, itemName = "Goblin Rocket Fuel", count = 5, oi = 2 },
				},
			},
			{
				label = "Collect_10_Dense_Blasting_Powder",
				along = true,
				note = "Craft them with Engineering or purchase them from the Auction House. Each one requires 2 Dense Stone to create.",
				goals = {
					{ t = "collect", quest = 8778, item = 15992, itemName = "Dense Blasting Powder", count = 10, oi = 3 },
				},
			},
			{
				note = "Disenchant item level 56-65 rare items or purchase it from the Auction House. Disenchant item level 56-65 rare items. Blackrock Depths and Dire Maul are good sources for these items.",
				goals = {
					{ t = "collect", quest = 8779, item = 14344, itemName = "Large Brilliant Shard", oi = 1 },
				},
			},
			{
				label = "Collect_1_Large_Radiant_Shard",
				along = true,
				note = "Disenchant item level 46-50 rare items or purchase it from the Auction House. Disenchant item level 46-50 rare items. Zul'Farrak, Dire Maul, and Stratholme are good sources for these items.",
				goals = {
					{ t = "collect", quest = 8779, item = 11178, itemName = "Large Radiant Shard", oi = 2 },
				},
			},
			{
				label = "Collect_1_Huge_Emerald",
				along = true,
				note = "Gather it with Mining or purchase it from the Auction House. Gather it with Mining. It can be mined from any type of Thorium vein.",
				goals = {
					{ t = "collect", quest = 8779, item = 12364, itemName = "Huge Emerald", oi = 3 },
				},
			},
			{
				note = "Craft them with Blacksmithing or purchase them from the Auction House. Craft them with Blacksmithing. Each one requires 8 Steel Bars, 2 Strong Flux, 2 Heavy Grinding Stones, 3 Moonstone, and 3 Heavy Leather to create.",
				goals = {
					{ t = "collect", quest = 8781, item = 3853, itemName = "Moonsteel Broadsword", count = 2, oi = 1 },
				},
			},
			{
				note = "Craft them with Leatherworking or purchase them from the Auction House. Craft them with Leatherworking. Each one requires 5 Rugged Leather to create.",
				goals = {
					{ t = "collect", quest = 8780, item = 15564, itemName = "Rugged Armor Kit", count = 8, oi = 1 },
				},
			},
			{
				label = "Collect_8_Heavy_Armor_Kits",
				along = true,
				note = "Craft them with Leatherworking or purchase them from the Auction House. Craft them with Leatherworking. Each one requires 5 Heavy Leather and 1 Fine Thread to create.",
				goals = {
					{ t = "collect", quest = 8780, item = 4265, itemName = "Heavy Armor Kit", count = 8, oi = 2 },
				},
			},
			{
				note = "Craft them with First Aid or purchase them from the Auction House. Craft them with First Aid. Each one requires 2 Runecloth to create.",
				goals = {
					{ t = "collect", quest = 8496, item = 14530, itemName = "Heavy Runecloth Bandage", count = 30, oi = 1 },
				},
			},
			{
				label = "Collect_30_Heavy_Mageweave_Bandage",
				along = true,
				note = "Craft them with First Aid or purchase them from the Auction House. Craft them with First Aid. Each one requires 2 Mageweave Cloth to create.",
				goals = {
					{ t = "collect", quest = 8496, item = 8545, itemName = "Heavy Mageweave Bandage", count = 30, oi = 2 },
				},
			},
			{
				label = "Collect_30_Heavy_Silk_Bandage",
				along = true,
				note = "Craft them with First Aid or purchase them from the Auction House. Craft them with First Aid. Each one requires 2 Silk Cloth to create.",
				goals = {
					{ t = "collect", quest = 8496, item = 6451, itemName = "Heavy Silk Bandage", count = 30, oi = 3 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8779, title = "Scrying Materials", npc = 15183, npcName = "Geologist Larksbane", map = 1451, x = 49.67, y = 37.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8496, title = "Bandages for the Field", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8778, title = "The Ironforge Brigade Needs Explosives!", npc = 15444, npcName = "Arcanist Nozzlespring", map = 1451, x = 32.54, y = 52.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8781, title = "Arms for the Field", npc = 15443, npcName = "Janela Stouthammer", map = 1451, x = 32.88, y = 52.53, f = "e" },
					{ t = "turnin", quest = 8780, title = "Armor Kits for the Field", npc = 15443, npcName = "Janela Stouthammer", map = 1451, x = 32.88, y = 52.53, f = "e" },
				},
			},
			{
				label = "Open_Followup_Logistics_Assignment",
				goals = {
					{ t = "use", item = 20805, itemName = "Followup Logistics Assignment" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20807, itemName = "Logistics Task Briefing I" },
					{ t = "accept", quest = 8497, title = "Desert Survival Kits" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20939, itemName = "Logistics Task Briefing II" },
					{ t = "accept", quest = 8805, title = "Boots for the Guard" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20940, itemName = "Logistics Task Briefing III" },
					{ t = "accept", quest = 8541, title = "Grinding Stones for the Guard" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21262, itemName = "Logistics Task Briefing VIII" },
					{ t = "accept", quest = 8782, title = "Uniform Supplies" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21265, itemName = "Logistics Task Briefing IX" },
					{ t = "accept", quest = 8783, title = "Extraordinary Materials" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21514, itemName = "Logistics Task Briefing XI" },
					{ t = "accept", quest = 8829, title = "The Ultimate Deception" },
				},
			},
			{
				note = "You can also purchase these from the Auction House.",
				goals = {
					{ t = "collect", quest = 8497, item = 7079, itemName = "Globe of Water", count = 4, oi = 1, map = 1448, x = 48.75, y = 24.16, f = "e" },
				},
			},
			{
				label = "Collect_Powerful_Anti-Venom",
				along = true,
				note = "Craft them with First Aid or purchase them from the Auction House. Craft them with First Aid. Each one requires 1 Huge Venom Sac to create.",
				goals = {
					{ t = "collect", quest = 8497, item = 19440, itemName = "Powerful Anti-Venom", count = 4, oi = 2 },
				},
			},
			{
				label = "Collect_Smoked_Desert_Dumplings",
				along = true,
				note = "Craft them with Cooking or purchase them from the Auction House. Craft them with Cooking. Each one requires 1 Sandworm Meat and 1 Soothing Spices to create.",
				goals = {
					{ t = "collect", quest = 8497, item = 20452, itemName = "Smoked Desert Dumplings", count = 4, oi = 3 },
				},
			},
			{
				note = "Craft them with Blacksmithing or purchase them from the Auction House. Craft them with Blacksmithing. Each one requires 14 Mithril Bars, 2 Truesilver Bars, 4 Thick Leather, 1 Solid Grinding Stone, and 1 Aquamarine to create.",
				goals = {
					{ t = "collect", quest = 8805, item = 7936, itemName = "Ornate Mithril Boots", count = 3, oi = 1 },
				},
			},
			{
				note = "Craft them with Blacksmithing or purchase them from the Auction House. Craft them with Blacksmithing. Each one requires 4 Dense Stone to create.",
				goals = {
					{ t = "collect", quest = 8541, item = 12644, itemName = "Dense Grinding Stone", count = 10, oi = 1 },
				},
			},
			{
				label = "Collect_Solid_Grinding_Stone",
				along = true,
				note = "Craft them with Blacksmithing or purchase them from the Auction House. Craft them with Blacksmithing. Each one requires 4 Solid Stone to create.",
				goals = {
					{ t = "collect", quest = 8541, item = 7966, itemName = "Solid Grinding Stone", count = 10, oi = 2 },
				},
			},
			{
				label = "Collect_Heavy_Grinding_Stone",
				along = true,
				note = "Craft them with Blacksmithing or purchase them from the Auction House. Craft them with Blacksmithing. Each one requires 3 Heavy Stone to create.",
				goals = {
					{ t = "collect", quest = 8541, item = 3486, itemName = "Heavy Grinding Stone", count = 10, oi = 3 },
				},
			},
			{
				note = "Craft it with Tailoring or purchase it from the Auction House. Craft them with Tailoring. It requires 2 Felcloth and a daily Tailoring cooldown to create.",
				goals = {
					{ t = "collect", quest = 8782, item = 14342, itemName = "Mooncloth", oi = 1 },
				},
			},
			{
				label = "Collect_Bolt_of_Runecloth",
				along = true,
				note = "Craft them with Tailoring or purchase them from the Auction House. Craft them with Tailoring. Each one requires 5 Runecloth to create.",
				goals = {
					{ t = "collect", quest = 8782, item = 14048, itemName = "Bolt of Runecloth", count = 2, oi = 2 },
				},
			},
			{
				label = "Collect_Ironweb_Spider_Silk",
				along = true,
				note = "You can also purchase it from the Auction House.",
				goals = {
					{ t = "collect", quest = 8782, item = 14227, itemName = "Ironweb Spider Silk", oi = 3, map = 1422, x = 62.2, y = 49.48, f = "e" },
				},
			},
			{
				note = "Craft them with Enchanting or purchase them from the Auction House. Craft them with Enchanting. Each one requires 1 Thorium Bar and 3 Dream Dust to create.",
				goals = {
					{ t = "collect", quest = 8783, item = 12655, itemName = "Enchanted Thorium Bar", count = 10, oi = 1 },
				},
			},
			{
				label = "Collect_Enchanted_Leather",
				along = true,
				note = "Craft them with Enchanting or purchase them from the Auction House. Craft them with Enchanting. Each one requires 1 Rugged Leather and 1 Lesser Eternal Essence to create.",
				goals = {
					{ t = "collect", quest = 8783, item = 12810, itemName = "Enchanted Leather", count = 10, oi = 2 },
				},
			},
			{
				note = "This has a chance to drop from Risen Bonewarders and Risen Constructs in the Scholomance dungeon.",
				goals = {
					{ t = "collect", quest = 8829, item = 12753, itemName = "Skin of Shadow", oi = 1 },
				},
			},
			{
				label = "Collect_Frayed_Abomination_Stitching",
				along = true,
				note = "These drop from Abomination enemies as well as Ramstein the Gorger in the Undead Stratholme dungeon.",
				goals = {
					{ t = "collect", quest = 8829, item = 12735, itemName = "Frayed Abomination Stitching", count = 3, oi = 2 },
				},
			},
			{
				label = "Collect_Twilight_Cultist_Robe",
				along = true,
				note = "You can also purchase it from the Auction House.",
				goals = {
					{ t = "collect", quest = 8829, item = 20407, itemName = "Twilight Cultist Robe", oi = 3, map = 1451, x = 38.64, y = 44.97, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 8497, title = "Desert Survival Kits", npc = 15174, npcName = "Calandrath", map = 1451, x = 51.87, y = 39.14, f = "e" },
				},
			},
			{
				note = "At the top of the tower.",
				goals = {
					{ t = "turnin", quest = 8541, title = "Grinding Stones for the Guard", npc = 15182, npcName = "Vish Kozus", map = 1451, x = 50.75, y = 33.65, f = "e" },
					{ t = "turnin", quest = 8805, title = "Boots for the Guard", npc = 15182, npcName = "Vish Kozus", map = 1451, x = 50.75, y = 33.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8782, title = "Uniform Supplies", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8783, title = "Extraordinary Materials", npc = 15176, npcName = "Vargus", map = 1451, x = 51.23, y = 38.86, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8829, title = "The Ultimate Deception", npc = 15282, npcName = "Aurel Goldleaf", map = 1451, x = 51.96, y = 38.15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 21132, itemName = "Logistics Assignment" },
				},
			},
		},
	})
end

