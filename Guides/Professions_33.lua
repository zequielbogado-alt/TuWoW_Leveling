-- TuWoW_Leveling — Guides/Professions_33.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-skinning-1-300",
		pack = "guides",
		title = "Skinning (1-300)",
		category = "Professions",
		folder = "Skinning",
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
					{ t = "goto", text = "Enter the building", map = 1454, x = 62.23, y = 45.64 },
					{ t = "skill", level = 75, skill = "Skinning" },
				},
			},
			{
				note = "Inside the building. You must have a Skinning Knife in your bags to be able to skin enemies.",
				goals = {
					{ t = "buy", item = 7005, itemName = "Skinning Knife", map = 1454, x = 63.04, y = 45.53, f = "e" },
				},
			},
			{
				note = "Only beast enemies, or certain humanoid enemies such as yetis or worgen, will be skinnable. Skin their corpses.",
				goals = {
					{ t = "skill", level = 75, skill = "Skinning" },
				},
			},
			{
				note = "You must be at least level 10 to become a Journeyman in a profession. Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 10 },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1454, x = 62.23, y = 45.64 },
					{ t = "skill", level = 150, skill = "Skinning" },
				},
			},
			{
				note = "Only beast enemies will be skinnable. Skin their corpses.",
				goals = {
					{ t = "skill", level = 90, skill = "Skinning" },
				},
			},
			{
				note = "Skin their corpses.",
				goals = {
					{ t = "skill", level = 130, skill = "Skinning" },
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
					{ t = "skill", level = 225, skill = "Skinning" },
				},
			},
			{
				note = "Skin their corpses.",
				goals = {
					{ t = "skill", level = 165, skill = "Skinning" },
				},
			},
			{
				note = "All around in the Shimmering Flats. Skin their corpses.",
				goals = {
					{ t = "skill", level = 220, skill = "Skinning" },
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
					{ t = "goto", text = "Enter the building", map = 1444, x = 74.69, y = 42.99 },
					{ t = "skill", level = 300, skill = "Skinning" },
				},
			},
			{
				note = "They look like yetis. Skin their corpses. You can find more through the tunnel.",
				goals = {
					{ t = "skill", level = 270, skill = "Skinning" },
				},
			},
			{
				note = "Skin their corpses.",
				goals = {
					{ t = "skill", level = 300, skill = "Skinning" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-green-whelp-scale",
		pack = "guides",
		title = "Green Whelp Scale",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1435,
		version = 1,
		steps = {
			{
				note = "Skin their corpses. You will need level 170 Skinning to collect these. These have a low drop rate.",
				goals = {
					{ t = "collect", item = 7392, itemName = "Green Whelp Scale", map = 1435, x = 13.29, y = 64.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-black-whelp-scale",
		pack = "guides",
		title = "Black Whelp Scale",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1433,
		version = 1,
		steps = {
			{
				note = "Skin their corpses. You will need level 70 Skinning to collect these.",
				goals = {
					{ t = "collect", item = 7286, itemName = "Black Whelp Scale", map = 1433, x = 29.76, y = 69.67, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-ruined-leather-scraps",
		pack = "guides",
		title = "Ruined Leather Scraps",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1411,
		version = 1,
		steps = {
			{
				note = "Skin their corpses.",
				goals = {
					{ t = "collect", item = 2934, itemName = "Ruined Leather Scraps", map = 1411, x = 43.89, y = 17.49, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-light-leather",
		pack = "guides",
		title = "Light Leather",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1411,
		version = 1,
		steps = {
			{
				note = "Skin their corpses.",
				goals = {
					{ t = "collect", item = 2318, itemName = "Light Leather", map = 1411, x = 43.89, y = 17.49, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-thin-kodo-leather",
		pack = "guides",
		title = "Thin Kodo Leather",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 5082, itemName = "Thin Kodo Leather" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-light-hide",
		pack = "guides",
		title = "Light Hide",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Only beast enemies will be skinnable. Skin their corpses. You will need level 100 Skinning to collect these. These have a low drop rate.",
				goals = {
					{ t = "collect", item = 783, itemName = "Light Hide" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-slimy-murloc-scale",
		pack = "guides",
		title = "Slimy Murloc Scale",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1421,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 5784, itemName = "Slimy Murloc Scale", map = 1421, x = 78.3, y = 30.76, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-medium-leather",
		pack = "guides",
		title = "Medium Leather",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1424,
		version = 1,
		steps = {
			{
				note = "Skin their corpses. You can find more inside the cave. You will need level 155 Skinning to collect these.",
				goals = {
					{ t = "collect", item = 2319, itemName = "Medium Leather", map = 1424, x = 46.12, y = 31.76, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-medium-hide",
		pack = "guides",
		title = "Medium Hide",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1442,
		version = 1,
		steps = {
			{
				note = "Skin their corpses. You will need level 115 Skinning to collect these. These have a low drop rate.",
				goals = {
					{ t = "collect", item = 4232, itemName = "Medium Hide", map = 1442, x = 44.88, y = 41.82, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-heavy-leather",
		pack = "guides",
		title = "Heavy Leather",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1445,
		version = 1,
		steps = {
			{
				note = "Only beast enemies will be skinnable. Skin their corpses. You will need level 185 Skinning to collect these.",
				goals = {
					{ t = "collect", item = 4234, itemName = "Heavy Leather", map = 1445, x = 40.73, y = 58.37, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-raptor-hide",
		pack = "guides",
		title = "Raptor Hide",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1417,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 4461, itemName = "Raptor Hide", map = 1417, x = 52.39, y = 67.61, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-heavy-hide",
		pack = "guides",
		title = "Heavy Hide",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1425,
		version = 1,
		steps = {
			{
				note = "Skin their corpses. You will need level 205 Skinning to collect these. These have a low drop rate.",
				goals = {
					{ t = "collect", item = 4235, itemName = "Heavy Hide", map = 1425, x = 16.19, y = 50.97, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-turtle-scale",
		pack = "guides",
		title = "Turtle Scale",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Skin their corpses. You will need level 210 Skinning to collect these.",
				goals = {
					{ t = "collect", item = 8167, itemName = "Turtle Scale", map = 1446, x = 67.22, y = 25.77, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-thick-murloc-scale",
		pack = "guides",
		title = "Thick Murloc Scale",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1445,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", item = 5785, itemName = "Thick Murloc Scale", map = 1445, x = 58.78, y = 9.45, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-thick-leather",
		pack = "guides",
		title = "Thick Leather",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1449,
		version = 1,
		steps = {
			{
				note = "Skin their corpses. You will need level 250 Skinning to collect these.",
				goals = {
					{ t = "collect", item = 4304, itemName = "Thick Leather", map = 1449, x = 67.37, y = 72.59, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-thick-hide",
		pack = "guides",
		title = "Thick Hide",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1449,
		version = 1,
		steps = {
			{
				note = "Only beast enemies will be skinnable. Skin their corpses. You will need level 245 Skinning to collect these. These have a low drop rate.",
				goals = {
					{ t = "collect", item = 8169, itemName = "Thick Hide", map = 1449, x = 67.37, y = 72.59, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-worn-dragonscale",
		pack = "guides",
		title = "Worn Dragonscale",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1445,
		version = 1,
		steps = {
			{
				note = "Skin their corpses. You will need level 205 Skinning to collect these. These have a low drop rate.",
				goals = {
					{ t = "collect", item = 8165, itemName = "Worn Dragonscale", map = 1445, x = 44.75, y = 66.19, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-scorpid-scale",
		pack = "guides",
		title = "Scorpid Scale",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Skin their corpses. You will need level 215 Skinning to collect these.",
				goals = {
					{ t = "collect", item = 8154, itemName = "Scorpid Scale", map = 1446, x = 50.93, y = 42.32, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-devilsaur-leather",
		pack = "guides",
		title = "Devilsaur Leather",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1449,
		version = 1,
		steps = {
			{
				note = "Skin their corpses. These are level 54-56 Elite enemies. It is recommended you clear the area of other enemies before fighting the Devilsaur. You will need level 270 Skinning to collect these.",
				goals = {
					{ t = "collect", item = 15417, itemName = "Devilsaur Leather", map = 1449, x = 34.25, y = 38.82, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-rugged-leather",
		pack = "guides",
		title = "Rugged Leather",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1452,
		version = 1,
		steps = {
			{
				note = "You can find more inside the cave. Skin their corpses. You will need level 275 Skinning to collect these.",
				goals = {
					{ t = "collect", item = 8170, itemName = "Rugged Leather", map = 1452, x = 66.43, y = 44.38, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-warbear-leather",
		pack = "guides",
		title = "Warbear Leather",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1422,
		version = 1,
		steps = {
			{
				note = "Skin their corpses. You will need level 275 Skinning to collect these. These have a low drop rate.",
				goals = {
					{ t = "collect", item = 15419, itemName = "Warbear Leather", map = 1422, x = 56.81, y = 63.63, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-green-dragonscale",
		pack = "guides",
		title = "Green Dragonscale",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Any Scalebane, Wyrmkin, Green or Dragonkin enemy. Skin their corpses. You will need level 205 Skinning to collect these. These have a low drop rate.",
				goals = {
					{ t = "collect", item = 15412, itemName = "Green Dragonscale" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-blue-dragonscale",
		pack = "guides",
		title = "Blue Dragonscale",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1447,
		version = 1,
		steps = {
			{
				note = "Any Draconic or Blue enemy. These are level 50-54 Elite enemies. Skin their corpses. You will need level 250 Skinning to collect these. These have a low drop rate.",
				goals = {
					{ t = "collect", item = 15415, itemName = "Blue Dragonscale", map = 1447, x = 36.21, y = 75.55, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-rugged-hide",
		pack = "guides",
		title = "Rugged Hide",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1452,
		version = 1,
		steps = {
			{
				note = "You can find more inside the cave. Skin their corpses. You will need level 275 Skinning to collect these. These have a low drop rate.",
				goals = {
					{ t = "collect", item = 8171, itemName = "Rugged Hide", map = 1452, x = 66.43, y = 44.38, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-black-dragonscale",
		pack = "guides",
		title = "Black Dragonscale",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1428,
		version = 1,
		steps = {
			{
				note = "Most of the enemies around this area are Elite. Skin their corpses. You will need level 260 Skinning to collect these. These have a low drop rate.",
				goals = {
					{ t = "collect", item = 15416, itemName = "Black Dragonscale", map = 1428, x = 91.3, y = 35.07, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-heavy-scorpid-scale",
		pack = "guides",
		title = "Heavy Scorpid Scale",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1451,
		version = 1,
		steps = {
			{
				note = "Skin their corpses. You will need level 270 Skinning to collect these.",
				goals = {
					{ t = "collect", item = 15408, itemName = "Heavy Scorpid Scale", map = 1451, x = 31.4, y = 38.23, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/h-red-dragonscale",
		pack = "guides",
		title = "Red Dragonscale",
		category = "Professions",
		folder = "Skinning",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1437,
		version = 1,
		steps = {
			{
				note = "These are level 57-62 Elite enemies. Skin their corpses. You will need level 300 Skinning to collect these. Level 61's require 305 Skinning and level 62's require 310 Skinning. These have a low drop rate.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1437, x = 74.18, y = 47.32 },
					{ t = "collect", item = 15414, itemName = "Red Dragonscale", map = 1437, x = 86.54, y = 51.83, f = "e" },
				},
			},
		},
	})
end

