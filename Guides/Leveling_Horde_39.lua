-- TuWoW_Leveling — Guides/Leveling_Horde_39.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-cenarion-field-duty-logistics-assignments",
		pack = "guides",
		title = "Cenarion Field Duty Logistics Assignments",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1451,
		version = 1,
		steps = {
			{
				label = "Accept_Field_Duty",
				goals = {
					{ t = "accept", quest = 8731, title = "Field Duty", npc = 15540, npcName = "Windcaller Kaldon", map = 1451, x = 49.98, y = 36.34, f = "e" },
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
					{ t = "accept", quest = 8732, title = "Field Duty Papers", npc = 15612, npcName = "Krug Skullsplit", map = 1451, x = 52.21, y = 68.43, f = "e" },
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
					{ t = "use", item = 21266, itemName = "Logistics Assignment" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21258, itemName = "Logistics Task Briefing IV" },
					{ t = "accept", quest = 8785, title = "The Orgrimmar Legion Needs Mojo!" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21382, itemName = "Logistics Task Briefing V" },
					{ t = "accept", quest = 8807, title = "Scrying Materials" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21261, itemName = "Logistics Task Briefing VI" },
					{ t = "accept", quest = 8786, title = "Arms for the Field" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21264, itemName = "Logistics Task Briefing VII" },
					{ t = "accept", quest = 8787, title = "Armor Kits for the Field" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21385, itemName = "Logistics Task Briefing X" },
					{ t = "accept", quest = 8810, title = "Bandages for the Field" },
				},
			},
			{
				note = "Craft them with Alchemy or purchase them from the Auction House. Craft them with Alchemy. Each one requires 1 Firebloom, 1 Goldthorn, and 1 Crystal Vial to create.",
				goals = {
					{ t = "collect", quest = 8785, item = 8956, itemName = "Oil of Immolation", count = 8, oi = 1 },
				},
			},
			{
				label = "Collect_6_Flask_of_Big_Mojo",
				along = true,
				note = "You can also purchase them from the Auction House.",
				goals = {
					{ t = "collect", quest = 8785, item = 8152, itemName = "Flask of Big Mojo", count = 6, oi = 2, map = 1425, x = 66.48, y = 68.75, f = "e" },
				},
			},
			{
				label = "Collect_6_Powerful_Mojo",
				along = true,
				note = "You can also purchase them from the Auction House.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1423, x = 56.03, y = 17.85 },
					{ t = "collect", quest = 8785, item = 15992, itemName = "Dense Blasting Powder", count = 6, oi = 3, map = 1423, x = 61.08, y = 12.25, f = "e" },
				},
			},
			{
				note = "Disenchant item level 56-65 rare items or purchase it from the Auction House. Disenchant item level 56-65 rare items. Blackrock Depths and Dire Maul are good sources for these items.",
				goals = {
					{ t = "collect", quest = 8807, item = 14344, itemName = "Large Brilliant Shard", oi = 1 },
				},
			},
			{
				label = "Collect_1_Large_Radiant_Shard",
				along = true,
				note = "Disenchant item level 46-50 rare items or purchase it from the Auction House. Disenchant item level 46-50 rare items. Zul'Farrak, Dire Maul, and Stratholme are good sources for these items.",
				goals = {
					{ t = "collect", quest = 8807, item = 11178, itemName = "Large Radiant Shard", oi = 2 },
				},
			},
			{
				label = "Collect_1_Huge_Emerald",
				along = true,
				note = "Gather it with Mining or purchase it from the Auction House. Gather it with Mining . It can be mined from any type of Thorium vein.",
				goals = {
					{ t = "collect", quest = 8807, item = 12364, itemName = "Huge Emerald", oi = 3 },
				},
			},
			{
				note = "Craft them with Blacksmithing or purchase them from the Auction House. Craft them with Blacksmithing. Each one requires 14 Iron Bars, 2 Strong Flux, 2 Heavy Grinding Stones, 4 Gold Bars, and 2 Heavy Leather to create.",
				goals = {
					{ t = "collect", quest = 8786, item = 3855, itemName = "Massive Iron Axe", count = 2, oi = 1 },
				},
			},
			{
				note = "Craft them with Leatherworking or purchase them from the Auction House. Craft them with Leatherworking. Each one requires 5 Rugged Leather to create.",
				goals = {
					{ t = "collect", quest = 8787, item = 15564, itemName = "Rugged Armor Kit", count = 8, oi = 1 },
				},
			},
			{
				label = "Collect_8_Heavy_Armor_Kits",
				along = true,
				note = "Craft them with Leatherworking or purchase them from the Auction House. Craft them with Leatherworking. Each one requires 5 Heavy Leather and 1 Fine Thread to create.",
				goals = {
					{ t = "collect", quest = 8787, item = 4265, itemName = "Heavy Armor Kit", count = 8, oi = 2 },
				},
			},
			{
				note = "Craft them with First Aid or purchase them from the Auction House. Each one requires 2 Runecloth to create.",
				goals = {
					{ t = "collect", quest = 8810, item = 14530, itemName = "Heavy Runecloth Bandage", count = 30, oi = 1 },
				},
			},
			{
				label = "Collect_30_Heavy_Mageweave_Bandage",
				along = true,
				note = "Craft them with First Aid or purchase them from the Auction House. Craft them with First Aid. Each one requires 2 Mageweave Cloth to create.",
				goals = {
					{ t = "collect", quest = 8810, item = 8545, itemName = "Heavy Mageweave Bandage", count = 30, oi = 2 },
				},
			},
			{
				label = "Collect_30_Heavy_Silk_Bandage",
				along = true,
				note = "Craft them with First Aid or purchase them from the Auction House. Craft them with First Aid. Each one requires 2 Silk Cloth to create.",
				goals = {
					{ t = "collect", quest = 8810, item = 6451, itemName = "Heavy Silk Bandage", count = 30, oi = 3 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8807, title = "Scrying Materials", npc = 15183, npcName = "Geologist Larksbane", map = 1451, x = 49.67, y = 37.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8810, title = "Bandages for the Field", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8785, title = "The Orgrimmar Legion Needs Mojo!", npc = 15615, npcName = "Shadow Priestess Shai", map = 1451, x = 51.34, y = 68.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8786, title = "Arms for the Field", npc = 15613, npcName = "Merok Longstride", map = 1451, x = 51.85, y = 67.96, f = "e" },
					{ t = "turnin", quest = 8787, title = "Armor Kits for the Field", npc = 15613, npcName = "Merok Longstride", map = 1451, x = 51.85, y = 67.96, f = "e" },
				},
			},
			{
				label = "Open_Followup_Logistics_Assignment",
				goals = {
					{ t = "use", item = 21386, itemName = "Followup Logistics Assignment" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21378, itemName = "Logistics Task Briefing I" },
					{ t = "accept", quest = 8804, title = "Desert Survival Kits" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21379, itemName = "Logistics Task Briefing II" },
					{ t = "accept", quest = 8805, title = "Boots for the Guard" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21380, itemName = "Logistics Task Briefing III" },
					{ t = "accept", quest = 8806, title = "Grinding Stones for the Guard" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21384, itemName = "Logistics Task Briefing VIII" },
					{ t = "accept", quest = 8808, title = "Uniform Supplies" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21381, itemName = "Logistics Task Briefing IX" },
					{ t = "accept", quest = 8809, title = "Extraordinary Materials" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21514, itemName = "Logistics Task Briefing XI" },
					{ t = "accept", quest = 8829, title = "The Ultimate Deception" },
				},
			},
			{
				note = "Craft them with Blacksmithing or purchase them from the Auction House. Craft them with Blacksmithing. Each one requires 14 Mithril Bars, 2 Truesilver Bars, 4 Thick Leather, 1 Solid Grinding Stone, and 1 Aquamarine to create.",
				goals = {
					{ t = "collect", quest = 8805, item = 7936, itemName = "Ornate Mithril Boots", count = 3, oi = 1 },
				},
			},
			{
				note = "You can also purchase these from the Auction House.",
				goals = {
					{ t = "collect", quest = 8804, item = 7079, itemName = "Globe of Water", count = 4, oi = 1, map = 1448, x = 48.75, y = 24.16, f = "e" },
				},
			},
			{
				label = "Collect_Powerful_Anti-Venom",
				along = true,
				note = "Craft them with First Aid or purchase them from the Auction House. Craft them with First Aid. Each one requires 1 Huge Venom Sac to create.",
				goals = {
					{ t = "collect", quest = 8804, item = 19440, itemName = "Powerful Anti-Venom", count = 4, oi = 2 },
				},
			},
			{
				label = "Collect_Smoked_Desert_Dumplings",
				along = true,
				note = "Craft them with Cooking or purchase them from the Auction House. Craft them with Cooking. Each one requires 1 Sandworm Meat and 1 Soothing Spices to create.",
				goals = {
					{ t = "collect", quest = 8804, item = 20452, itemName = "Smoked Desert Dumplings", count = 4, oi = 3 },
				},
			},
			{
				note = "Craft them with Blacksmithing or purchase them from the Auction House. Craft them with Blacksmithing. Each one requires 4 Dense Stone to create.",
				goals = {
					{ t = "collect", quest = 8806, item = 12644, itemName = "Dense Grinding Stone", count = 10, oi = 1 },
				},
			},
			{
				label = "Collect_Solid_Grinding_Stone",
				along = true,
				note = "Craft them with Blacksmithing or purchase them from the Auction House. Craft them with Blacksmithing. Each one requires 4 Solid Stone to create.",
				goals = {
					{ t = "collect", quest = 8806, item = 7966, itemName = "Solid Grinding Stone", count = 10, oi = 2 },
				},
			},
			{
				label = "Collect_Heavy_Grinding_Stone",
				along = true,
				note = "Craft them with Blacksmithing or purchase them from the Auction House. Craft them with Blacksmithing. Each one requires 3 Heavy Stone to create.",
				goals = {
					{ t = "collect", quest = 8806, item = 3486, itemName = "Heavy Grinding Stone", count = 10, oi = 3 },
				},
			},
			{
				note = "Craft it with Tailoring or purchase it from the Auction House. Craft it with Tailoring. It requires 2 Felcloth and a daily Tailoring cooldown to create.",
				goals = {
					{ t = "collect", quest = 8808, item = 14342, itemName = "Mooncloth", oi = 1 },
				},
			},
			{
				label = "Collect_Bolt_of_Runecloth",
				along = true,
				note = "Craft them with Tailoring or purchase them from the Auction House. Craft them with Tailoring. Each one requires 5 Runecloth to create.",
				goals = {
					{ t = "collect", quest = 8808, item = 14048, itemName = "Bolt of Runecloth", count = 2, oi = 2 },
				},
			},
			{
				label = "Collect_Ironweb_Spider_Silk",
				along = true,
				note = "You can also purchase it from the Auction House.",
				goals = {
					{ t = "collect", quest = 8808, item = 14227, itemName = "Ironweb Spider Silk", oi = 3, map = 1422, x = 62.2, y = 49.48, f = "e" },
				},
			},
			{
				note = "Craft them with Enchanting or purchase them from the Auction House. Craft them with Enchanting. Each one requires 1 Thorium Bar and 3 Dream Dust to create.",
				goals = {
					{ t = "collect", quest = 8809, item = 12655, itemName = "Enchanted Thorium Bar", count = 10, oi = 1 },
				},
			},
			{
				label = "Collect_Enchanted_Leather",
				along = true,
				note = "Craft them with Enchanting or purchase them from the Auction House. Craft them with Enchanting. Each one requires 1 Rugged Leather and 1 Lesser Eternal Essence to create.",
				goals = {
					{ t = "collect", quest = 8809, item = 12810, itemName = "Enchanted Leather", count = 10, oi = 2 },
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
					{ t = "turnin", quest = 8804, title = "Desert Survival Kits", npc = 15174, npcName = "Calandrath", map = 1451, x = 51.87, y = 39.14, f = "e" },
				},
			},
			{
				note = "At the top of the tower.",
				goals = {
					{ t = "turnin", quest = 8806, title = "Grinding Stones for the Guard", npc = 15182, npcName = "Vish Kozus", map = 1451, x = 50.75, y = 33.65, f = "e" },
					{ t = "turnin", quest = 8805, title = "Boots for the Guard", npc = 15182, npcName = "Vish Kozus", map = 1451, x = 50.75, y = 33.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8808, title = "Uniform Supplies", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8809, title = "Extraordinary Materials", npc = 15176, npcName = "Vargus", map = 1451, x = 51.23, y = 38.86, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8829, title = "The Ultimate Deception", npc = 15282, npcName = "Aurel Goldleaf", map = 1451, x = 51.96, y = 38.15, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 21266, itemName = "Logistics Assignment" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-cozy-sleeping-bag",
		pack = "guides",
		title = "Cozy Sleeping Bag",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1442,
		version = 1,
		steps = {
			{
				note = "On top of a wooden crate, next to a tent.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1442, x = 51.02, y = 52.41 },
					{ t = "goto", text = "Follow the path through the mountains", map = 1442, x = 46.1, y = 53.58 },
				},
			},
			{
				note = "It looks like a small eagle statue. On the ledge, overlooking the waterfall.",
				goals = {
					{ t = "goto", text = "Run onto the dam", map = 1432, x = 40.61, y = 13.54 },
					{ t = "goto", text = "Jump down carefully here", map = 1432, x = 49.5, y = 13.38 },
				},
			},
			{
				note = "It looks like a hanging brown pouch. Next to the doorway on top of the wall.",
				goals = {
					{ t = "goto", text = "Jump up the cart to get onto the wall", map = 1424, x = 87.58, y = 47.88 },
				},
			},
		},
	})
end

