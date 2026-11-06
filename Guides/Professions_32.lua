-- TuWoW_Leveling — Guides/Professions_32.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-lockpicking-1-300",
		pack = "guides",
		title = "Lockpicking (1-300)",
		category = "Professions",
		folder = "Lockpicking",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "You must be at least level 16 before you can learn Lockpicking. You are able to gain 5 levels of Lockpicking for each level your character gains. You need to be at least level 20 to reach level 100 Lockpicking in a few steps. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 20 },
				},
			},
			{
				note = "Inside the Cleft of Shadow.",
				goals = {
					{ t = "goto", text = "Train Pick Lock", map = 1454, x = 43.9, y = 54.63 },
				},
			},
			{
				note = "Inside the hut, inside the Cleft of Shadow.",
				goals = {
					{ t = "accept", quest = 2379, title = "Zando'zan", npc = 3401, npcName = "Shenthul", map = 1454, x = 43.05, y = 53.74, f = "e" },
				},
			},
			{
				note = "Inside the hut, inside the Cleft of Shadow.",
				goals = {
					{ t = "turnin", quest = 2379, title = "Zando'zan", npc = 3402, npcName = "Zando'zan", map = 1454, x = 42.73, y = 52.95, f = "e" },
					{ t = "accept", quest = 2382, title = "Wrenix of Ratchet", npc = 3402, npcName = "Zando'zan", map = 1454, x = 42.73, y = 52.95, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2382, title = "Wrenix of Ratchet", npc = 7161, npcName = "Wrenix the Wretched", map = 1413, x = 63.07, y = 36.32, f = "e" },
					{ t = "accept", quest = 2381, title = "Plundering the Plunderers", npc = 7161, npcName = "Wrenix the Wretched", map = 1413, x = 63.07, y = 36.32, f = "e" },
				},
			},
			{
				note = "Save the Thieves' Tools you get. You must keep Thieves' Tools in your bags to be able to pick locks.",
				goals = {
					{ t = "collect", quest = 2381, item = 5060, itemName = "Thieves' Tools", map = 1413, x = 63.12, y = 36.32, f = "e" },
					{ t = "collect", quest = 2381, item = 7970, itemName = "E.C.A.C.", map = 1413, x = 63.12, y = 36.32, f = "e" },
				},
			},
			{
				note = "They look like small grey metal chests on the ground around this area. Downstairs inside the ship, on the middle level.",
				goals = {
					{ t = "goto", text = "Follow the path", map = 1413, x = 62.08, y = 38.81 },
					{ t = "goto", text = "Continue following the path", map = 1413, x = 62.75, y = 39.86 },
					{ t = "goto", text = "Jump onto the front of the ship", map = 1413, x = 64.18, y = 45.49 },
					{ t = "skill", level = 100, skill = "Lockpicking" },
				},
			},
			{
				note = "Downstairs inside the ship, on the bottom level. Polly, a high level parrot will appear and attack you. Use it on Polly. It will become weaker.",
				goals = {
					{ t = "use", item = 7970, itemName = "E.C.A.C." },
					{ t = "collect", quest = 2381, item = 7968, itemName = "Southsea Treasure", oi = 1, map = 1413, x = 64.95, y = 45.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1413, x = 63.21, y = 42.64 },
					{ t = "turnin", quest = 2381, title = "Plundering the Plunderers", npc = 7161, npcName = "Wrenix the Wretched", map = 1413, x = 63.07, y = 36.32, f = "e" },
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
		id = "zygor/professions/h-mining-1-300",
		pack = "guides",
		title = "Mining (1-300)",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 300,
		zone = 1454,
		version = 1,
		steps = {
			{
				note = "You must be at least level 5 before you can learn professions. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 5 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 72.94, y = 27.48 },
					{ t = "skill", level = 75, skill = "Mining" },
				},
			},
			{
				note = "Inside the building. You must have a Mining Pick in your bags to be able to gather ore.",
				goals = {
					{ t = "buy", item = 2901, itemName = "Mining Pick", map = 1454, x = 73.31, y = 26.6, f = "e" },
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
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 72.94, y = 27.48 },
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
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 72.94, y = 27.48 },
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
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 72.94, y = 27.48 },
					{ t = "skill", level = 300, skill = "Mining" },
				},
			},
			{
				note = "Click ore as you follow the path around this area. Track them on your minimap with \"Find Minerals\".",
				goals = {
					{ t = "skill", level = 250, skill = "Mining" },
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
		id = "zygor/professions/h-copper-ore",
		pack = "guides",
		title = "Copper Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-rough-stone",
		pack = "guides",
		title = "Rough Stone",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-tin-ore",
		pack = "guides",
		title = "Tin Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-coarse-stone",
		pack = "guides",
		title = "Coarse Stone",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-silver-ore",
		pack = "guides",
		title = "Silver Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-moss-agate",
		pack = "guides",
		title = "Moss Agate",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-iron-ore",
		pack = "guides",
		title = "Iron Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-heavy-stone",
		pack = "guides",
		title = "Heavy Stone",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-gold-ore",
		pack = "guides",
		title = "Gold Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-mithril-ore",
		pack = "guides",
		title = "Mithril Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-solid-stone",
		pack = "guides",
		title = "Solid Stone",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-truesilver-ore",
		pack = "guides",
		title = "Truesilver Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-dark-iron-ore",
		pack = "guides",
		title = "Dark Iron Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-thorium-ore",
		pack = "guides",
		title = "Thorium Ore",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-dense-stone",
		pack = "guides",
		title = "Dense Stone",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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
		id = "zygor/professions/h-guardian-stone",
		pack = "guides",
		title = "Guardian Stone",
		category = "Professions",
		folder = "Mining",
		faction = "Horde",
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

