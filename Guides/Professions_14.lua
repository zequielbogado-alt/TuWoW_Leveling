-- TuWoW_Leveling — Guides/Professions_14.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-lockpicking-1-300",
		pack = "guides",
		title = "Lockpicking (1-300)",
		category = "Professions",
		folder = "Lockpicking",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "You must be at least level 16 before you can learn Lockpicking. You are able to gain 5 levels of Lockpicking for each level your character gains. You need to be at least level 20 to reach level 100 Lockpicking in a few steps. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 20 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Train Pick Lock", map = 1453, x = 77.43, y = 65.31 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 77.51, y = 66.0 },
					{ t = "goto", text = "Enter the building", map = 1453, x = 79.35, y = 69.33 },
					{ t = "accept", quest = 2281, title = "Redridge Rendezvous", npc = 6946, npcName = "Renzik \"The Shiv\"", map = 1453, x = 78.29, y = 71.14, f = "e" },
				},
			},
			{
				note = "Save the Thieves' Tools you get as a reward. You must keep Thieves' Tools in your bags to be able to pick locks.",
				goals = {
					{ t = "turnin", quest = 2281, title = "Redridge Rendezvous", npc = 6966, npcName = "Lucius", map = 1433, x = 22.97, y = 52.04, f = "e" },
					{ t = "accept", quest = 2282, title = "Alther's Mill", npc = 6966, npcName = "Lucius", map = 1433, x = 22.97, y = 52.04, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Follow the road", map = 1433, x = 28.12, y = 47.22 },
					{ t = "goto", text = "Follow the path", map = 1433, x = 38.27, y = 37.56 },
					{ t = "skill", level = 100, skill = "Lockpicking" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "collect", quest = 2282, item = 7871, itemName = "Token of Thievery", oi = 1, map = 1433, x = 46.95, y = 44.69, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the road", map = 1433, x = 37.78, y = 37.52 },
					{ t = "turnin", quest = 2282, title = "Alther's Mill", npc = 6966, npcName = "Lucius", map = 1433, x = 22.97, y = 52.04, f = "e" },
				},
			},
			{
				note = "You are able to gain 5 levels of Lockpicking for each level your character gains. You need to be at least level 30 to reach level 150 Lockpicking in a few steps. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 30 },
				},
			},
			{
				note = "They look like small yellow and brown wooden chests on the ground around this area.",
				goals = {
					{ t = "skill", level = 150, skill = "Lockpicking" },
				},
			},
			{
				note = "You are able to gain 5 levels of Lockpicking for each level your character gains. You need to be at least level 40 to reach level 200 Lockpicking in a few steps. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 40 },
				},
			},
			{
				note = "You can also farm under the water in Desolace with Water Breathing. There are boxes off the coast at 35.02,21.03",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1418, x = 43.03, y = 30.08 },
					{ t = "goto", text = "Run up the stairs", map = 1418, x = 39.62, y = 27.22 },
				},
			},
			{
				note = "They look like small wooden chests upstairs inside the building. You can also farm under the water in Desolace with Water Breathing. There are boxes off the coast at 35.02,21.03",
				goals = {
					{ t = "skill", level = 175, skill = "Lockpicking" },
				},
			},
			{
				note = "You can also farm under the water in Desolace with Water Breathing. There are boxes off the coast at 35.02,21.03",
				goals = {
					{ t = "goto", text = "Jump down and follow the path", map = 1418, x = 42.29, y = 27.96 },
					{ t = "goto", text = "Run down the stairs", map = 1418, x = 42.17, y = 26.73 },
				},
			},
			{
				note = "They look like small wooden chests downstairs inside the building. You can also farm under the water in Desolace with Water Breathing. There are boxes off the coast at 35.02,21.03",
				goals = {
					{ t = "skill", level = 200, skill = "Lockpicking" },
				},
			},
			{
				note = "You are able to gain 5 levels of Lockpicking for each level your character gains. You need to be at least level 50 to reach level 250 Lockpicking in a few steps. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 50 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1427, x = 63.41, y = 38.52 },
					{ t = "goto", text = "Run up the ramp", map = 1427, x = 46.75, y = 53.52 },
					{ t = "goto", text = "Enter the cave", map = 1427, x = 41.38, y = 53.89 },
				},
			},
			{
				note = "They look like small wooden chests on the ground around this area inside the cave, in the lower section. You can also try to pickpocket enemies around this area to get Sturdy Junkboxes to unlock.",
				goals = {
					{ t = "skill", level = 225, skill = "Lockpicking" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1427, x = 44.22, y = 24.36 },
					{ t = "goto", text = "Follow the path", map = 1427, x = 42.47, y = 30.78 },
				},
			},
			{
				note = "They look like small wooden chests on the ground around this area inside the cave, in the upper section. You can also try to pickpocket enemies around this area to get Sturdy Junkboxes to unlock.",
				goals = {
					{ t = "skill", level = 250, skill = "Lockpicking" },
				},
			},
			{
				note = "You are able to gain 5 levels of Lockpicking for each level your character gains. You need to be at least level 60 to reach level 300 Lockpicking in a few steps. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 60 },
				},
			},
			{
				note = "The waypoint arrow will stop working after you enter the doors. Once you enter through the huge doors, take the first left you come to. Walk up onto the large chain and follow it to the island in the middle of the lava. Run down the stairs and follow the path to another large chain. Walk across the large chain and follow the path into the Grinding Quarry. Once in the Grinding Quarry, follow the path northwest through the tunnel to find the dungeon portal entrance.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1427, x = 33.53, y = 75.22 },
					{ t = "goto", text = "Enter Blackrock Mountain", map = 1427, x = 34.76, y = 83.98 },
				},
			},
			{
				note = "Pick the following locks inside the dungon. You can also pickpocket enemies inside the dungeon to get Strong Junkboxes and Heavy Junkboxes to unlock. Lock #1: Once inside the dungeon, immediately turn left, pick the locked door and walk through it. Lock #2: Up ahead, on the right, pick the locked door and walk through it. Lock #3: Up ahead, on the left, pick the locked door and walk through it. Lock #4: Straight ahead, under the huge gear, pick the Shadowforge Lock. After you pick these 4 locks, leave the dungeon the way you came. Outside the dungeon portal, right-click your player portrait. Select \"Reset all instances\" and re-enter the dungeon to repeat this process.",
				goals = {
					{ t = "skill", level = 300, skill = "Lockpicking" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-mining-1-300",
		pack = "guides",
		title = "Mining (1-300)",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1453,
		version = 1,
		steps = {
			{
				note = "You must be at least level 5 to train Apprentice professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 5 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 60.23, y = 36.95 },
					{ t = "skill", level = 75, skill = "Mining" },
				},
			},
			{
				note = "Inside the building. You must have a Mining Pick in your bags to be able to gather ore.",
				goals = {
					{ t = "buy", item = 2901, itemName = "Mining Pick", map = 1453, x = 59.15, y = 37.48, f = "e" },
				},
			},
			{
				note = "Click ore as you follow the path around this area. Track them on your minimap with \"Find Minerals\". You can smelt Copper Ore from skill level 1-47 for additional points.",
				goals = {
					{ t = "skill", level = 65, skill = "Mining" },
				},
			},
			{
				note = "You must be at least level 10 to train Journeyman professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1453, x = 60.23, y = 36.95 },
					{ t = "skill", level = 150, skill = "Mining" },
				},
			},
			{
				note = "Click ore as you follow the path around this area. Track them on your minimap with \"Find Minerals\". You can smelt Bronze Bars with leftover Tin and Copper Bars from skill level 65-90 for additional points. You can smelt Silver Ore from skill level 75-112 for additional points.",
				goals = {
					{ t = "skill", level = 125, skill = "Mining" },
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
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1455, x = 51.88, y = 29.67 },
					{ t = "goto", text = "Enter the building", map = 1455, x = 49.57, y = 28.51 },
					{ t = "skill", level = 225, skill = "Mining" },
				},
			},
			{
				note = "Click ore as you follow the path around this area. Track them on your minimap with \"Find Minerals\". You can smelt Iron Ore from skill level 125-135 for additional points. You can smelt Gold Ore from skill level 155-184 for additional points.",
				goals = {
					{ t = "skill", level = 175, skill = "Mining" },
				},
			},
			{
				note = "Click ore as you follow the path around this area. Track them on your minimap with \"Find Minerals\". You can smelt Gold Ore from skill level 155-184 for additional points.",
				goals = {
					{ t = "skill", level = 200, skill = "Mining" },
				},
			},
			{
				note = "You must be at least level 35 to train Artisan professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 35 },
				},
			},
			{
				note = "Downstairs inside the building.",
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1455, x = 51.88, y = 29.67 },
					{ t = "goto", text = "Enter the building", map = 1455, x = 49.57, y = 28.51 },
					{ t = "skill", level = 300, skill = "Mining" },
				},
			},
			{
				note = "Click ore as you follow the path around this area. Track them on your minimap with \"Find Minerals\".",
				goals = {
					{ t = "skill", level = 230, skill = "Mining" },
				},
			},
			{
				note = "Click ore as you follow the path around this area. Track them on your minimap with \"Find Minerals\".",
				goals = {
					{ t = "skill", level = 300, skill = "Mining" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-copper-ore",
		pack = "guides",
		title = "Copper Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\".",
				goals = {
					{ t = "collect", item = 2770, itemName = "Copper Ore" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-rough-stone",
		pack = "guides",
		title = "Rough Stone",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\".",
				goals = {
					{ t = "collect", item = 2835, itemName = "Rough Stone" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-tin-ore",
		pack = "guides",
		title = "Tin Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 65 Mining to collect these.",
				goals = {
					{ t = "collect", item = 2771, itemName = "Tin Ore" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-coarse-stone",
		pack = "guides",
		title = "Coarse Stone",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 65 Mining to collect these.",
				goals = {
					{ t = "collect", item = 2836, itemName = "Coarse Stone" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-silver-ore",
		pack = "guides",
		title = "Silver Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 75 Mining to collect these.",
				goals = {
					{ t = "collect", item = 2775, itemName = "Silver Ore" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-moss-agate",
		pack = "guides",
		title = "Moss Agate",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 65 Mining to collect Tin Ore nodes and 75 to collect Silver Ore nodes. These are a rare drop from Tin and Silver Ore nodes.",
				goals = {
					{ t = "collect", item = 1206, itemName = "Moss Agate" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-iron-ore",
		pack = "guides",
		title = "Iron Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 125 Mining to collect these.",
				goals = {
					{ t = "collect", item = 2772, itemName = "Iron Ore" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-heavy-stone",
		pack = "guides",
		title = "Heavy Stone",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 125 Mining to collect these.",
				goals = {
					{ t = "collect", item = 2838, itemName = "Heavy Stone" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-gold-ore",
		pack = "guides",
		title = "Gold Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 155 Mining to collect these.",
				goals = {
					{ t = "collect", item = 2776, itemName = "Gold Ore" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-mithril-ore",
		pack = "guides",
		title = "Mithril Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 175 Mining to collect these.",
				goals = {
					{ t = "collect", item = 3858, itemName = "Mithril Ore" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-solid-stone",
		pack = "guides",
		title = "Solid Stone",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 175 Mining to collect these.",
				goals = {
					{ t = "collect", item = 7912, itemName = "Solid Stone" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-truesilver-ore",
		pack = "guides",
		title = "Truesilver Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 230 Mining to collect these.",
				goals = {
					{ t = "collect", item = 7911, itemName = "Truesilver Ore" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-dark-iron-ore",
		pack = "guides",
		title = "Dark Iron Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 230 Mining to collect these. These are a rare spawn. However, they can be found more consistently inside the Blackrock Depths dungeon and Molten Core raid.",
				goals = {
					{ t = "collect", item = 11370, itemName = "Dark Iron Ore" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-thorium-ore",
		pack = "guides",
		title = "Thorium Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 245 Mining to collect these.",
				goals = {
					{ t = "collect", item = 10620, itemName = "Thorium Ore" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-dense-stone",
		pack = "guides",
		title = "Dense Stone",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Track them on your minimap with \"Find Minerals\". You will need level 245 Mining to collect these.",
				goals = {
					{ t = "collect", item = 12365, itemName = "Dense Stone" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-guardian-stone",
		pack = "guides",
		title = "Guardian Stone",
		category = "Professions",
		folder = "Mining",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "These are level 60-61 Elite enemies.",
				goals = {
					{ t = "collect", item = 12809, itemName = "Guardian Stone" },
				},
			},
		},
	})
end

