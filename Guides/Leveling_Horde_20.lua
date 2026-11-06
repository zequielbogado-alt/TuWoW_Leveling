-- TuWoW_Leveling — Guides/Leveling_Horde_20.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-stranglethorn-vale-36-37",
		pack = "guides",
		title = "Stranglethorn Vale",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-dustwallow-marsh-37-38",
		author = "TuWoW & Zygor",
		minLevel = 36,
		maxLevel = 37,
		zone = 1434,
		version = 1,
		steps = {
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 568, title = "The Defense of Grom'gol", npc = 2464, npcName = "Commander Aggro'gosh", map = 1434, x = 32.17, y = 28.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Grom'gol", map = 1434, x = 32.54, y = 29.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 581, title = "Hunt for Yenniku", npc = 2497, npcName = "Nimboya", map = 1434, x = 32.16, y = 27.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 596, title = "Bloody Bone Necklaces", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.27, y = 27.71, f = "e" },
				},
			},
			{
				note = "Long questing session soon.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "vendor", npc = 1149, npcName = "Uthok", map = 1434, x = 31.56, y = 27.96, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 201, title = "Investigate the Camp", note = "Locate the Hunters' Camp", map = 1434, x = 35.55, y = 10.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5762, title = "Hemet Nesingwary", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
					{ t = "turnin", quest = 5763, title = "Hunting in Stranglethorn", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 583, title = "Welcome to the Jungle", npc = 716, npcName = "Barnil Stonepot", map = 1434, x = 35.66, y = 10.53, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 583, title = "Welcome to the Jungle", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
					{ t = "accept", quest = 194, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 185, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.61, y = 10.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 190, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.55, y = 10.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 185, npc = 681, target = "Young Stranglethorn Tiger", count = 10, oi = 1, map = 1434, x = 33.8, y = 13.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 185, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.61, y = 10.62, f = "e" },
					{ t = "accept", quest = 186, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.61, y = 10.62, f = "e" },
				},
			},
			{
				label = "Kill_Young_Panthers",
				along = true,
				goals = {
					{ t = "kill", quest = 190, npc = 683, target = "Young Panther", count = 10, oi = 1, map = 1434, x = 40.0, y = 10.0, f = "e" },
				},
			},
			{
				label = "Collect_Liferoot_Warrior",
				note = "Share spawns with other Kurzen enemies. Needed for important class quest soon. Don't vendor them.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1712, item = 3357, itemName = "Liferoot", count = 8, oi = 1, map = 1434, x = 44.0, y = 11.8, f = "e" },
				},
			},
			{
				note = "Skip once no more to kill. Can finish later.",
				goals = {
					{ t = "collect", quest = 605, item = 3918, itemName = "Singing Crystal Shard", count = 10, oi = 1, map = 1434, x = 47.6, y = 9.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 186, npc = 682, target = "Stranglethorn Tiger", count = 10, oi = 1, map = 1434, x = 46.4, y = 12.8, f = "e" },
				},
			},
			{
				label = "Collect_Large_River_Crocolisk_Skins",
				along = true,
				note = "Along the river.",
				goals = {
					{ t = "collect", quest = 575, item = 4053, itemName = "Large River Crocolisk Skin", count = 2, oi = 1, map = 1434, x = 36.8, y = 10.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 186, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.61, y = 10.62, f = "e" },
					{ t = "accept", quest = 187, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.61, y = 10.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 190, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.55, y = 10.55, f = "e" },
					{ t = "accept", quest = 191, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.55, y = 10.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 187, npc = 1085, target = "Elder Stranglethorn Tiger", count = 10, oi = 1, map = 1434, x = 31.4, y = 14.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 191, npc = 736, target = "Panther", count = 10, oi = 1, map = 1434, x = 28.2, y = 16.4, f = "e" },
				},
			},
			{
				label = "Kill_Stranglethorn_Raptors",
				along = true,
				goals = {
					{ t = "kill", quest = 194, npc = 685, target = "Stranglethorn Raptor", count = 10, oi = 1, map = 1434, x = 27.4, y = 14.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 605, item = 3918, itemName = "Singing Crystal Shard", count = 10, oi = 1, map = 1434, x = 24.0, y = 17.6, f = "e" },
				},
			},
			{
				label = "Collect_Bloodscalp_Items",
				along = true,
				note = "Trolls. Needed for future quest. Don't vendor them.",
				goals = {
					{ t = "collect", quest = 581, item = 3901, itemName = "Bloodscalp Tusk", count = 9, oi = 1, map = 1434, x = 28.8, y = 19.2, f = "e" },
					{ t = "collect", quest = 189, item = 1519, itemName = "Bloodscalp Ear", count = 15, oi = 1, map = 1434, x = 28.8, y = 19.2, f = "e" },
					{ t = "collect", quest = 596, item = 3915, itemName = "Bloody Bone Necklace", count = 25, oi = 1, map = 1434, x = 28.8, y = 19.2, f = "e" },
					{ t = "collect", quest = 4449, item = 4306, itemName = "Silk Cloth", count = 15, map = 1434, x = 28.8, y = 19.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 194, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
					{ t = "accept", quest = 195, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 187, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.62, y = 10.62, f = "e" },
					{ t = "accept", quest = 188, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.62, y = 10.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 191, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.55, y = 10.55, f = "e" },
					{ t = "accept", quest = 192, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.55, y = 10.55, f = "e" },
				},
			},
			{
				note = "Orange tiger. Usually on top of the hill. Walks around.",
				goals = {
					{ t = "collect", quest = 188, item = 3879, itemName = "Paw of Sin'Dall", oi = 1, map = 1434, x = 32.21, y = 17.39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 195, npc = 686, target = "Lashtail Raptor", count = 10, oi = 1, map = 1434, x = 32.2, y = 20.4, f = "e" },
					{ t = "kill", quest = 568, npc = 686, target = "Lashtail Raptor", count = 15, oi = 1, map = 1434, x = 32.2, y = 20.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 581, title = "Hunt for Yenniku", npc = 2497, npcName = "Nimboya", map = 1434, x = 32.16, y = 27.72, f = "e" },
					{ t = "accept", quest = 582, title = "Headhunting", npc = 2497, npcName = "Nimboya", map = 1434, x = 32.16, y = 27.72, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 596, title = "Bloody Bone Necklaces", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.27, y = 27.71, f = "e" },
					{ t = "accept", quest = 629, title = "The Vile Reef", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.27, y = 27.71, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 568, title = "The Defense of Grom'gol", npc = 2464, npcName = "Commander Aggro'gosh", map = 1434, x = 32.17, y = 28.91, f = "e" },
					{ t = "accept", quest = 569, title = "The Defense of Grom'gol", npc = 2464, npcName = "Commander Aggro'gosh", map = 1434, x = 32.17, y = 28.91, f = "e" },
				},
			},
			{
				note = "Avoid the elite murlocs. Underwater.",
				goals = {
					{ t = "collect", quest = 629, item = 4094, itemName = "Tablet Shard", oi = 1, map = 1434, x = 24.75, y = 22.84, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 582, item = 1532, itemName = "Shrunken Head", count = 20, oi = 1, map = 1434, x = 20.8, y = 15.2, f = "e" },
				},
			},
			{
				label = "Collect_Bloodscalp_Tusks_Warrior",
				along = true,
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "collect", quest = 1712, item = 3901, itemName = "Bloodscalp Tusk", count = 30, oi = 2, map = 1434, x = 23.4, y = 10.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 582, title = "Headhunting", npc = 2497, npcName = "Nimboya", map = 1434, x = 32.16, y = 27.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 629, title = "The Vile Reef", npc = 2519, npcName = "Kin'weelay", map = 1434, x = 32.27, y = 27.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 570, title = "Mok'thardin's Enchantment", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1434, x = 32.12, y = 29.24, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 569, npc = 1144, target = "Mosh'Ogg Witch Doctor", count = 5, oi = 2, map = 1434, x = 35.4, y = 30.8, f = "e" },
					{ t = "kill", quest = 569, npc = 1142, target = "Mosh'Ogg Brute", count = 10, oi = 1, map = 1434, x = 35.4, y = 30.8, f = "e" },
				},
			},
			{
				note = "Shared spawns with panthers. Shadowmaw Panthers are stealthed.",
				goals = {
					{ t = "collect", quest = 570, item = 3839, itemName = "Pristine Tigress Fang", oi = 2, map = 1434, x = 37.4, y = 32.8, f = "e" },
				},
			},
			{
				label = "Collect_Shadowmaw_Claws",
				along = true,
				note = "Stealthed. notinsticky Shared spawns with tigers. notinsticky",
				goals = {
					{ t = "collect", quest = 570, item = 3838, itemName = "Shadowmaw Claw", count = 8, oi = 1, map = 1434, x = 37.4, y = 32.8, f = "e" },
				},
			},
			{
				label = "Kill_Shadowmaw_Panthers",
				along = true,
				note = "Stealthed. notinsticky",
				goals = {
					{ t = "kill", quest = 192, npc = 684, target = "Shadowmaw Panther", count = 10, oi = 1, map = 1434, x = 37.4, y = 32.8, f = "e" },
				},
			},
			{
				note = "Top of the platform. Inside the building.",
				goals = {
					{ t = "collect", quest = 1182, item = 5851, itemName = "Cozzle's Key", map = 1434, x = 42.65, y = 18.35, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "collect", quest = 1182, item = 5852, itemName = "Fuel Regulator Blueprints", oi = 1, map = 1434, x = 43.34, y = 20.34, f = "e" },
				},
			},
			{
				label = "Collect_Tumbled_Crystals",
				along = true,
				goals = {
					{ t = "collect", quest = 213, item = 4106, itemName = "Tumbled Crystal", count = 8, oi = 1, map = 1434, x = 44.2, y = 20.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 195, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
					{ t = "accept", quest = 196, title = "Raptor Mastery", npc = 715, npcName = "Hemet Nesingwary", map = 1434, x = 35.66, y = 10.81, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 188, title = "Tiger Mastery", npc = 717, npcName = "Ajeck Rouack", map = 1434, x = 35.62, y = 10.62, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 192, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.56, y = 10.55, f = "e" },
					{ t = "accept", quest = 193, title = "Panther Mastery", npc = 718, npcName = "Sir S. J. Erlgadin", map = 1434, x = 35.56, y = 10.55, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 638, title = "Trollbane", npc = 2497, npcName = "Nimboya", map = 1434, x = 32.16, y = 27.73, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 569, title = "The Defense of Grom'gol", npc = 2464, npcName = "Commander Aggro'gosh", map = 1434, x = 32.17, y = 28.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 570, title = "Mok'thardin's Enchantment", npc = 2465, npcName = "Far Seer Mok'thardin", map = 1434, x = 32.12, y = 29.24, f = "e" },
				},
			},
			{
				note = "Up on the balcony of the building.",
				goals = {
					{ t = "turnin", quest = 1182, title = "Goblin Sponsorship", npc = 2496, npcName = "Baron Revilgaz", map = 1434, x = 27.23, y = 76.87, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 189, title = "Bloodscalp Ears", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.13, f = "e" },
					{ t = "turnin", quest = 213, title = "Hostile Takeover", npc = 737, npcName = "Kebok", map = 1434, x = 27.0, y = 77.13, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 201, title = "Investigate the Camp", npc = 773, npcName = "Krazek", map = 1434, x = 26.94, y = 77.21, f = "e" },
				},
			},
			{
				note = "Bottom floor inside the building",
				goals = {
					{ t = "turnin", quest = 605, title = "Singing Blue Shards", npc = 2498, npcName = "Crank Fizzlebub", map = 1434, x = 27.12, y = 77.21, f = "e" },
				},
			},
			{
				note = "Upper level of the docks. Inside the building.",
				goals = {
					{ t = "turnin", quest = 575, title = "Supply and Demand", npc = 2495, npcName = "Drizzlik", map = 1434, x = 28.29, y = 77.59, f = "e" },
				},
			},
		},
	})
end

