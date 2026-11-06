-- TuWoW_Leveling — Guides/Professions_06.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-essence-of-undeath",
		pack = "guides",
		title = "Essence of Undeath",
		category = "Professions",
		folder = "Elements",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1422,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Follow the path", map = 1422, x = 56.61, y = 78.55 },
					{ t = "goto", text = "Continue following the path", map = 1422, x = 68.58, y = 80.14 },
					{ t = "goto", text = "Run up the stairs", map = 1422, x = 69.94, y = 74.0 },
					{ t = "goto", text = "Enter the building", map = 1415, x = 52.79, y = 26.43 },
					{ t = "goto", text = "click Scholomance Door", map = 1415, x = 52.75, y = 26.41 },
					{ t = "goto", text = "Enter the Scholomance dungeon", map = 1415, x = 52.7, y = 26.38 },
				},
			},
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 12808, itemName = "Essence of Undeath" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-heart-of-the-wild",
		pack = "guides",
		title = "Heart of the Wild",
		category = "Professions",
		folder = "Elements",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1422,
		version = 1,
		steps = {
			{
				note = "Inside the cave. Rotting Behemoths and Decaying Horrors can drop Heart of the Wild. The enemies share spawn points, so killing the oozes will spawn more elemental enemies. These have a low drop rate.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1422, x = 64.78, y = 38.69 },
					{ t = "collect", item = 10286, itemName = "Heart of the Wild", map = 1422, x = 61.43, y = 36.2, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-ichor-of-undeath",
		pack = "guides",
		title = "Ichor of Undeath",
		category = "Professions",
		folder = "Elements",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1452,
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 7972, itemName = "Ichor of Undeath", map = 1452, x = 52.59, y = 40.68, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-heart-of-fire",
		pack = "guides",
		title = "Heart of Fire",
		category = "Professions",
		folder = "Elements",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1448,
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 7077, itemName = "Heart of Fire", map = 1448, x = 40.92, y = 40.34, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-globe-of-water",
		pack = "guides",
		title = "Globe of Water",
		category = "Professions",
		folder = "Elements",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1448,
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 7079, itemName = "Globe of Water", map = 1448, x = 49.48, y = 23.46, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-core-of-earth",
		pack = "guides",
		title = "Core of Earth",
		category = "Professions",
		folder = "Elements",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1451,
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 7075, itemName = "Core of Earth", map = 1451, x = 22.94, y = 12.29, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-breath-of-wind",
		pack = "guides",
		title = "Breath of Wind",
		category = "Professions",
		folder = "Elements",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1451,
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 7081, itemName = "Breath of Wind", map = 1451, x = 31.69, y = 18.15, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-elemental-fire",
		pack = "guides",
		title = "Elemental Fire",
		category = "Professions",
		folder = "Elements",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1417,
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 7068, itemName = "Elemental Fire", map = 1417, x = 24.8, y = 29.95, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-elemental-earth",
		pack = "guides",
		title = "Elemental Earth",
		category = "Professions",
		folder = "Elements",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1418,
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1418, x = 46.37, y = 77.2 },
					{ t = "collect", item = 7067, itemName = "Elemental Earth", map = 1418, x = 43.3, y = 84.24, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-elemental-water",
		pack = "guides",
		title = "Elemental Water",
		category = "Professions",
		folder = "Elements",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1417,
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 7070, itemName = "Elemental Water", map = 1417, x = 66.7, y = 29.91, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/professions/a-elemental-air",
		pack = "guides",
		title = "Elemental Air",
		category = "Professions",
		folder = "Elements",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1417,
		version = 1,
		steps = {
			{
				note = "These have a low drop rate.",
				goals = {
					{ t = "collect", item = 7069, itemName = "Elemental Air", map = 1417, x = 52.03, y = 50.77, f = "e" },
				},
			},
		},
	})
end

