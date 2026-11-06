-- TuWoW_Leveling — Guides/Dungeons_02.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-temple-of-ahnqiraj-legs-quest",
		pack = "guides",
		title = "Temple of Ahn'Qiraj Legs Quest",
		category = "Dungeons",
		folder = "Gear & Raid Quests",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 60 },
				},
			},
			{
				note = "He is located inside the Temple of Ahn'Qiraj raid. After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.",
				goals = {
					{ t = "accept", quest = 8668, title = "Genesis Trousers", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "accept", quest = 8658, title = "Striker's Leggings", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "accept", quest = 8631, title = "Enigma Leggings", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "accept", quest = 8629, title = "Avenger's Legguards", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "accept", quest = 8593, title = "Trousers of the Oracle", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "accept", quest = 8640, title = "Deathdealer's Leggings", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "accept", quest = 8624, title = "Stormcaller's Leggings", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "accept", quest = 8663, title = "Doomcaller's Trousers", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "accept", quest = 8560, title = "Conqueror's Legguards", npc = 15503, npcName = "Kandrostrasz" },
				},
			},
			{
				note = "This has a chance to drop from Ouro in the Ruins of Ahn'Qiraj raid.",
				goals = {
					{ t = "collect", quest = 8668, item = 20931, itemName = "Skin of the Great Sandworm", oi = 1 },
					{ t = "collect", quest = 8658, item = 20931, itemName = "Skin of the Great Sandworm", oi = 1 },
					{ t = "collect", quest = 8631, item = 20927, itemName = "Ouro's Intact Hide", oi = 1 },
					{ t = "collect", quest = 8629, item = 20931, itemName = "Skin of the Great Sandworm", oi = 1 },
					{ t = "collect", quest = 8593, item = 20927, itemName = "Ouro's Intact Hide", oi = 1 },
					{ t = "collect", quest = 8640, item = 20927, itemName = "Ouro's Intact Hide", oi = 1 },
					{ t = "collect", quest = 8624, item = 20931, itemName = "Skin of the Great Sandworm", oi = 1 },
					{ t = "collect", quest = 8663, item = 20931, itemName = "Skin of the Great Sandworm", oi = 1 },
					{ t = "collect", quest = 8560, item = 20927, itemName = "Ouro's Intact Hide", oi = 1 },
				},
			},
			{
				label = "Collect_Idols",
				along = true,
				note = "These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.",
				goals = {
					{ t = "collect", quest = 8668, item = 20882, itemName = "Idol of War", count = 2, oi = 2 },
					{ t = "collect", quest = 8658, item = 20874, itemName = "Idol of the Sun", count = 2, oi = 2 },
					{ t = "collect", quest = 8631, item = 20877, itemName = "Idol of the Sage", count = 2, oi = 2 },
					{ t = "collect", quest = 8629, item = 20881, itemName = "Idol of Strife", count = 2, oi = 2 },
					{ t = "collect", quest = 8593, item = 20879, itemName = "Idol of Life", count = 2, oi = 2 },
					{ t = "collect", quest = 8640, item = 20875, itemName = "Idol of Night", count = 2, oi = 2 },
					{ t = "collect", quest = 8624, item = 20881, itemName = "Idol of Strife", count = 2, oi = 2 },
					{ t = "collect", quest = 8663, item = 20878, itemName = "Idol of Rebirth", count = 2, oi = 2 },
					{ t = "collect", quest = 8560, item = 20876, itemName = "Idol of Death", count = 2, oi = 2 },
				},
			},
			{
				label = "Collect_First_Scarab_Set",
				along = true,
				note = "These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.",
				goals = {
					{ t = "collect", quest = 8668, item = 20858, itemName = "Stone Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8658, item = 20860, itemName = "Silver Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8631, item = 20860, itemName = "Silver Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8629, item = 20865, itemName = "Ivory Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8593, item = 20859, itemName = "Gold Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8640, item = 20858, itemName = "Stone Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8624, item = 20865, itemName = "Ivory Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8663, item = 20859, itemName = "Gold Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8560, item = 20861, itemName = "Bronze Scarab", count = 5, oi = 3 },
				},
			},
			{
				label = "Collect_Second_Scarab_Set",
				along = true,
				note = "These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.",
				goals = {
					{ t = "collect", quest = 8668, item = 20862, itemName = "Crystal Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8658, item = 20864, itemName = "Bone Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8631, item = 20864, itemName = "Bone Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8629, item = 20861, itemName = "Bronze Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8593, item = 20863, itemName = "Clay Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8640, item = 20862, itemName = "Crystal Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8624, item = 20861, itemName = "Bronze Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8663, item = 20863, itemName = "Clay Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8560, item = 20865, itemName = "Ivory Scarab", count = 5, oi = 4 },
				},
			},
			{
				note = "He is located inside the Temple of Ahn'Qiraj raid. After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.",
				goals = {
					{ t = "turnin", quest = 8668, title = "Genesis Trousers", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "turnin", quest = 8658, title = "Striker's Leggings", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "turnin", quest = 8631, title = "Enigma Leggings", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "turnin", quest = 8629, title = "Avenger's Legguards", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "turnin", quest = 8593, title = "Trousers of the Oracle", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "turnin", quest = 8640, title = "Deathdealer's Leggings", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "turnin", quest = 8624, title = "Stormcaller's Leggings", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "turnin", quest = 8663, title = "Doomcaller's Trousers", npc = 15503, npcName = "Kandrostrasz" },
					{ t = "turnin", quest = 8560, title = "Conqueror's Legguards", npc = 15503, npcName = "Kandrostrasz" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-temple-of-ahnqiraj-chest-quest",
		pack = "guides",
		title = "Temple of Ahn'Qiraj Chest Quest",
		category = "Dungeons",
		folder = "Gear & Raid Quests",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		version = 1,
		steps = {
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 60 },
				},
			},
			{
				note = "She is located inside the Temple of Ahn'Qiraj raid. After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.",
				goals = {
					{ t = "accept", quest = 8666, title = "Genesis Vest", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8656, title = "Striker's Hauberk", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8633, title = "Enigma Robes", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8627, title = "Avenger's Breastplate", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8603, title = "Vestments of the Oracle", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8638, title = "Deathdealer's Vest", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8622, title = "Stormcaller's Hauberk", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8661, title = "Doomcaller's Robes", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8562, title = "Conqueror's Breastplate", npc = 15504, npcName = "Vethsera" },
				},
			},
			{
				note = "This has a chance to drop from C'Thun in the Ruins of Ahn'Qiraj raid.",
				goals = {
					{ t = "collect", quest = 8666, item = 20933, itemName = "Husk of the Old God", oi = 1 },
					{ t = "collect", quest = 8656, item = 20929, itemName = "Carapace of the Old God", oi = 1 },
					{ t = "collect", quest = 8633, item = 20933, itemName = "Husk of the Old God", oi = 1 },
					{ t = "collect", quest = 8627, item = 20929, itemName = "Carapace of the Old God", oi = 1 },
					{ t = "collect", quest = 8603, item = 20933, itemName = "Husk of the Old God", oi = 1 },
					{ t = "collect", quest = 8638, item = 20929, itemName = "Carapace of the Old God", oi = 1 },
					{ t = "collect", quest = 8622, item = 20929, itemName = "Carapace of the Old God", oi = 1 },
					{ t = "collect", quest = 8661, item = 20933, itemName = "Husk of the Old God", oi = 1 },
					{ t = "collect", quest = 8562, item = 20929, itemName = "Carapace of the Old God", oi = 1 },
				},
			},
			{
				label = "Collect_Idols",
				along = true,
				note = "These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.",
				goals = {
					{ t = "collect", quest = 8666, item = 20878, itemName = "Idol of Rebirth", count = 2, oi = 2 },
					{ t = "collect", quest = 8656, item = 20879, itemName = "Idol of Life", count = 2, oi = 2 },
					{ t = "collect", quest = 8633, item = 20874, itemName = "Idol of the Sun", count = 2, oi = 2 },
					{ t = "collect", quest = 8627, item = 20877, itemName = "Idol of the Sage", count = 2, oi = 2 },
					{ t = "collect", quest = 8603, item = 20876, itemName = "Idol of Death", count = 2, oi = 2 },
					{ t = "collect", quest = 8638, item = 20881, itemName = "Idol of Strife", count = 2, oi = 2 },
					{ t = "collect", quest = 8622, item = 20877, itemName = "Idol of the Sage", count = 2, oi = 2 },
					{ t = "collect", quest = 8661, item = 20875, itemName = "Idol of Night", count = 2, oi = 2 },
					{ t = "collect", quest = 8562, item = 20882, itemName = "Idol of War", count = 2, oi = 2 },
				},
			},
			{
				label = "Collect_First_Scarab_Set",
				along = true,
				note = "These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.",
				goals = {
					{ t = "collect", quest = 8666, item = 20861, itemName = "Bronze Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8656, item = 20859, itemName = "Gold Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8633, item = 20859, itemName = "Gold Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8627, item = 20860, itemName = "Silver Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8603, item = 20858, itemName = "Stone Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8638, item = 20861, itemName = "Bronze Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8622, item = 20860, itemName = "Silver Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8661, item = 20862, itemName = "Crystal Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8562, item = 20860, itemName = "Silver Scarab", count = 5, oi = 3 },
				},
			},
			{
				label = "Collect_Second_Scarab_Set",
				along = true,
				note = "These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.",
				goals = {
					{ t = "collect", quest = 8666, item = 20865, itemName = "Ivory Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8656, item = 20863, itemName = "Clay Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8633, item = 20863, itemName = "Clay Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8627, item = 20864, itemName = "Bone Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8603, item = 20862, itemName = "Crystal Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8638, item = 20865, itemName = "Ivory Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8622, item = 20864, itemName = "Bone Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8661, item = 20858, itemName = "Stone Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8562, item = 20864, itemName = "Bone Scarab", count = 5, oi = 4 },
				},
			},
			{
				note = "She is located inside the Temple of Ahn'Qiraj raid. After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.",
				goals = {
					{ t = "accept", quest = 8666, title = "Genesis Vest", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8656, title = "Striker's Hauberk", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8633, title = "Enigma Robes", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8627, title = "Avenger's Breastplate", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8603, title = "Vestments of the Oracle", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8638, title = "Deathdealer's Vest", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8622, title = "Stormcaller's Hauberk", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8661, title = "Doomcaller's Robes", npc = 15504, npcName = "Vethsera" },
					{ t = "accept", quest = 8562, title = "Conqueror's Breastplate", npc = 15504, npcName = "Vethsera" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-signet-ring-of-the-bronze-dragonflight",
		pack = "guides",
		title = "Signet Ring of the Bronze Dragonflight",
		category = "Dungeons",
		folder = "Gear & Raid Quests",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1446,
		version = 1,
		steps = {
			{
				note = "Accepting one of these quests will lock you into that questline until you complete it. You can switch to a different ring after you complete your first questline. This quest grants an intellect-based caster ring. This quest grants a strength-based defensive ring. This quest grants an agility-based offensive ring.",
				goals = {
					{ t = "accept", quest = 8757, title = "The Path of the Invoker", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8747, title = "The Path of the Protector", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8752, title = "The Path of the Conqueror", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8758, title = "The Path of the Invoker", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8748, title = "The Path of the Protector", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8753, title = "The Path of the Conqueror", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8759, title = "The Path of the Invoker", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8749, title = "The Path of the Protector", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8754, title = "The Path of the Conqueror", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8760, title = "The Path of the Invoker", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8750, title = "The Path of the Protector", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8755, title = "The Path of the Conqueror", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8761, title = "The Grand Invoker", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8751, title = "The Protector of Kalimdor", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
					{ t = "accept", quest = 8756, title = "The Qiraji Conqueror", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.27, y = 50.03, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8765, item = 20861, itemName = "Bronze Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Crystal_Scarabs",
				along = true,
				goals = {
					{ t = "collect", quest = 8765, item = 20862, itemName = "Crystal Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Clay_Scarabs",
				along = true,
				goals = {
					{ t = "collect", quest = 8765, item = 20863, itemName = "Clay Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Stone_Scarabs_8764",
				along = true,
				goals = {
					{ t = "collect", quest = 8764, item = 20858, itemName = "Stone Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Gold_Scarabs",
				along = true,
				goals = {
					{ t = "collect", quest = 8764, item = 20859, itemName = "Gold Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Silver_Scarabs",
				along = true,
				goals = {
					{ t = "collect", quest = 8764, item = 20860, itemName = "Silver Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Bone_Scarabs",
				along = true,
				goals = {
					{ t = "collect", quest = 8766, item = 20864, itemName = "Bone Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Ivory_Scarabs",
				along = true,
				goals = {
					{ t = "collect", quest = 8766, item = 20865, itemName = "Ivory Scarab", count = 15 },
				},
			},
			{
				label = "Collect_Stone_Scarabs_8766",
				along = true,
				goals = {
					{ t = "collect", quest = 8766, item = 20858, itemName = "Stone Scarab", count = 15 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8765, title = "The Changing of Paths - Invoker No More", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.3, y = 50.0, f = "e" },
					{ t = "accept", quest = 8764, title = "The Changing of Paths - Protector No More", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.3, y = 50.0, f = "e" },
					{ t = "accept", quest = 8766, title = "The Changing of Paths - Conqueror No More", npc = 15192, npcName = "Anachronos", map = 1446, x = 65.3, y = 50.0, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-cenarion-battlegear",
		pack = "guides",
		title = "Cenarion Battlegear",
		category = "Dungeons",
		folder = "Gear & Raid Quests",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1451,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 8800, title = "Cenarion Battlegear", npc = 15540, npcName = "Windcaller Kaldon", map = 1451, x = 49.98, y = 36.36, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8800, title = "Cenarion Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8548, title = "Volunteer's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				note = "Use the \"Cenarion Field Duty Combat Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8548, item = 20802, itemName = "Cenarion Combat Badge", count = 5, oi = 1 },
				},
			},
			{
				label = "Collect_Cenarion_Logistics_Badge_8548",
				along = true,
				note = "Use the \"Cenarion Field Duty Logistics Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8548, item = 20800, itemName = "Cenarion Logistics Badge", count = 3, oi = 2 },
				},
			},
			{
				label = "Collect_Cenarion_Tactical_Badge_8548",
				along = true,
				note = "Use the \"Cenarion Field Duty Tactical Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8548, item = 20801, itemName = "Cenarion Tactical Badge", count = 7, oi = 3 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8548, title = "Volunteer's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8572, title = "Veteran's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				note = "Use the \"Cenarion Field Duty Combat Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8572, item = 20802, itemName = "Cenarion Combat Badge", count = 7, oi = 1 },
				},
			},
			{
				label = "Collect_Cenarion_Logistics_Badge_8572",
				along = true,
				note = "Use the \"Cenarion Field Duty Logistics Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8572, item = 20800, itemName = "Cenarion Logistics Badge", count = 4, oi = 2 },
				},
			},
			{
				label = "Collect_Cenarion_Tactical_Badge_8572",
				along = true,
				note = "Use the \"Cenarion Field Duty Tactical Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8572, item = 20801, itemName = "Cenarion Tactical Badge", count = 4, oi = 3 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8572, title = "Veteran's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8573, title = "Champion's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				note = "Use the \"Cenarion Field Duty Combat Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8573, item = 20802, itemName = "Cenarion Combat Badge", count = 15, oi = 1 },
				},
			},
			{
				label = "Collect_Cenarion_Logistics_Badge_8573",
				along = true,
				note = "Use the \"Cenarion Field Duty Logistics Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8573, item = 20800, itemName = "Cenarion Logistics Badge", count = 20, oi = 2 },
				},
			},
			{
				label = "Collect_Cenarion_Tactical_Badge_8573",
				along = true,
				note = "Use the \"Cenarion Field Duty Tactical Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8573, item = 20801, itemName = "Cenarion Tactical Badge", count = 20, oi = 3 },
				},
			},
			{
				label = "Collect_Mark_of_Cenarius_8573",
				along = true,
				note = "Use the \"Cenarion Field Duty Tactical Assignments\" leveling guide to collect these. This item is a reward exclusive to the followup tactical assignment quest \"The Four Dukes.\"",
				goals = {
					{ t = "collect", quest = 8573, item = 21508, itemName = "Mark of Cenarius", oi = 4 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8573, title = "Champion's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8574, title = "Stalwart's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
			{
				note = "Use the \"Cenarion Field Duty Combat Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8574, item = 20802, itemName = "Cenarion Combat Badge", count = 15, oi = 1 },
				},
			},
			{
				label = "Collect_Cenarion_Logistics_Badge_8574",
				along = true,
				note = "Use the \"Cenarion Field Duty Logistics Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8574, item = 20800, itemName = "Cenarion Logistics Badge", count = 20, oi = 2 },
				},
			},
			{
				label = "Collect_Cenarion_Tactical_Badge_8574",
				along = true,
				note = "Use the \"Cenarion Field Duty Tactical Assignments\" leveling guide to collect these.",
				goals = {
					{ t = "collect", quest = 8574, item = 20801, itemName = "Cenarion Tactical Badge", count = 17, oi = 3 },
				},
			},
			{
				label = "Collect_Mark_of_Remulos_8574",
				along = true,
				note = "Use the \"Cenarion Field Duty Logistics Assignments\" leveling guide to collect these. This item is a reward exclusive to the followup logistics assignment quest \"The Ultimate Deception.\"",
				goals = {
					{ t = "collect", quest = 8574, item = 21515, itemName = "Mark of Remulos", oi = 4 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8574, title = "Stalwart's Battlegear", npc = 15176, npcName = "Vargus", map = 1451, x = 51.22, y = 38.85, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-ruins-of-ahnqiraj-cloak-quest",
		pack = "guides",
		title = "Ruins of Ahn'Qiraj Cloak Quest",
		category = "Dungeons",
		folder = "Gear & Raid Quests",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1451,
		version = 1,
		steps = {
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 60 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8692, title = "Cloak of Unending Life", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "accept", quest = 8696, title = "Cloak of the Unseen Path", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "accept", quest = 8691, title = "Drape of Vaulted Secrets", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "accept", quest = 8695, title = "Cape of Eternal Justice", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "accept", quest = 8689, title = "Shroud of Infinite Wisdom", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "accept", quest = 8693, title = "Cloak of Veiled Shadows", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "accept", quest = 8690, title = "Cloak of the Gathering Storm", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "accept", quest = 8694, title = "Shroud of Unspoken Names", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "accept", quest = 8557, title = "Drape of Unyielding Strength", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
				},
			},
			{
				note = "This has a chance to drop from General Rajaxx, Kurinnaxx, Ayamiss the Hunter, and Buru the Gorger in the Ruins of Ahn'Qiraj raid.",
				goals = {
					{ t = "collect", quest = 8692, item = 20889, itemName = "Qiraji Regal Drape", oi = 1 },
					{ t = "collect", quest = 8696, item = 20889, itemName = "Qiraji Regal Drape", oi = 1 },
					{ t = "collect", quest = 8691, item = 20885, itemName = "Qiraji Martial Drape", oi = 1 },
					{ t = "collect", quest = 8695, item = 20889, itemName = "Qiraji Regal Drape", oi = 1 },
					{ t = "collect", quest = 8689, item = 20885, itemName = "Qiraji Martial Drape", oi = 1 },
					{ t = "collect", quest = 8693, item = 20885, itemName = "Qiraji Martial Drape", oi = 1 },
					{ t = "collect", quest = 8690, item = 20889, itemName = "Qiraji Regal Drape", oi = 1 },
					{ t = "collect", quest = 8694, item = 20889, itemName = "Qiraji Regal Drape", oi = 1 },
					{ t = "collect", quest = 8557, item = 20885, itemName = "Qiraji Martial Drape", oi = 1 },
				},
			},
			{
				label = "Collect_Idols",
				along = true,
				note = "These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.",
				goals = {
					{ t = "collect", quest = 8692, item = 20872, itemName = "Vermillion Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8696, item = 20868, itemName = "Lambent Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8691, item = 20873, itemName = "Alabaster Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8695, item = 20871, itemName = "Obsidian Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8689, item = 20870, itemName = "Jasper Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8693, item = 20866, itemName = "Azure Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8690, item = 20871, itemName = "Obsidian Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8694, item = 20869, itemName = "Amber Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8557, item = 20867, itemName = "Onyx Idol", count = 2, oi = 2 },
				},
			},
			{
				label = "Collect_First_Scarab_Set",
				along = true,
				note = "These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.",
				goals = {
					{ t = "collect", quest = 8692, item = 20864, itemName = "Bone Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8696, item = 20858, itemName = "Stone Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8691, item = 20858, itemName = "Stone Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8695, item = 20859, itemName = "Gold Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8689, item = 20859, itemName = "Gold Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8693, item = 20861, itemName = "Bronze Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8690, item = 20863, itemName = "Clay Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8694, item = 20861, itemName = "Bronze Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8557, item = 20864, itemName = "Bone Scarab", count = 5, oi = 3 },
				},
			},
			{
				label = "Collect_Second_Scarab_Set",
				along = true,
				note = "These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.",
				goals = {
					{ t = "collect", quest = 8692, item = 20860, itemName = "Silver Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8696, item = 20862, itemName = "Crystal Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8691, item = 20862, itemName = "Crystal Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8695, item = 20863, itemName = "Clay Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8689, item = 20863, itemName = "Clay Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8693, item = 20865, itemName = "Ivory Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8690, item = 20859, itemName = "Gold Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8694, item = 20865, itemName = "Ivory Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8557, item = 20860, itemName = "Silver Scarab", count = 5, oi = 4 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8692, title = "Cloak of Unending Life", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "turnin", quest = 8696, title = "Cloak of the Unseen Path", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "turnin", quest = 8691, title = "Drape of Vaulted Secrets", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "turnin", quest = 8695, title = "Cape of Eternal Justice", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "turnin", quest = 8689, title = "Shroud of Infinite Wisdom", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "turnin", quest = 8693, title = "Cloak of Veiled Shadows", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "turnin", quest = 8690, title = "Cloak of the Gathering Storm", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "turnin", quest = 8694, title = "Shroud of Unspoken Names", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
					{ t = "turnin", quest = 8557, title = "Drape of Unyielding Strength", npc = 15500, npcName = "Keyl Swiftclaw", map = 1451, x = 51.76, y = 39.53, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-ruins-of-ahnqiraj-ring-quest",
		pack = "guides",
		title = "Ruins of Ahn'Qiraj Ring Quest",
		category = "Dungeons",
		folder = "Gear & Raid Quests",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1451,
		version = 1,
		steps = {
			{
				note = "Use the leveling guides to accomplish this.",
				goals = {
					{ t = "level", level = 60 },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8700, title = "Band of Unending Life", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "accept", quest = 8704, title = "Signet of the Unseen Path", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "accept", quest = 8699, title = "Band of Vaulted Secrets", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "accept", quest = 8703, title = "Ring of Eternal Justice", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "accept", quest = 8697, title = "Ring of Infinite Wisdom", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "accept", quest = 8701, title = "Band of Veiled Shadows", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "accept", quest = 8698, title = "Ring of the Gathering Storm", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "accept", quest = 8702, title = "Ring of Unspoken Names", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "accept", quest = 8556, title = "Signet of Unyielding Strength", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
				},
			},
			{
				note = "This has a chance to drop from Ayamiss the Hunter, Buru the Gorger, Moam, General Rajax, Kurinnaxx, and Ossirian the Unscarred in the Ruins of Ahn'Qiraj raid.",
				goals = {
					{ t = "collect", quest = 8700, item = 20884, itemName = "Qiraji Magisterial Ring", oi = 1 },
					{ t = "collect", quest = 8704, item = 20888, itemName = "Qiraji Ceremonial Ring", oi = 1 },
					{ t = "collect", quest = 8699, item = 20884, itemName = "Qiraji Magisterial Ring", oi = 1 },
					{ t = "collect", quest = 8703, item = 20884, itemName = "Qiraji Magisterial Ring", oi = 1 },
					{ t = "collect", quest = 8697, item = 20888, itemName = "Qiraji Ceremonial Ring", oi = 1 },
					{ t = "collect", quest = 8701, item = 20888, itemName = "Qiraji Ceremonial Ring", oi = 1 },
					{ t = "collect", quest = 8698, item = 20884, itemName = "Qiraji Magisterial Ring", oi = 1 },
					{ t = "collect", quest = 8702, item = 20888, itemName = "Qiraji Ceremonial Ring", oi = 1 },
					{ t = "collect", quest = 8556, item = 20884, itemName = "Qiraji Magisterial Ring", oi = 1 },
				},
			},
			{
				label = "Collect_Idols",
				along = true,
				note = "These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.",
				goals = {
					{ t = "collect", quest = 8700, item = 20873, itemName = "Alabaster Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8704, item = 20869, itemName = "Amber Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8699, item = 20866, itemName = "Azure Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8703, item = 20872, itemName = "Vermillion Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8697, item = 20871, itemName = "Obsidian Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8701, item = 20867, itemName = "Onyx Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8698, item = 20872, itemName = "Vermillion Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8702, item = 20870, itemName = "Jasper Idol", count = 2, oi = 2 },
					{ t = "collect", quest = 8556, item = 20868, itemName = "Lambent Idol", count = 2, oi = 2 },
				},
			},
			{
				label = "Collect_First_Scarab_Set",
				along = true,
				note = "These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.",
				goals = {
					{ t = "collect", quest = 8700, item = 20861, itemName = "Bronze Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8704, item = 20859, itemName = "Gold Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8699, item = 20859, itemName = "Gold Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8703, item = 20860, itemName = "Silver Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8697, item = 20860, itemName = "Silver Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8701, item = 20858, itemName = "Stone Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8698, item = 20860, itemName = "Silver Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8702, item = 20858, itemName = "Stone Scarab", count = 5, oi = 3 },
					{ t = "collect", quest = 8556, item = 20861, itemName = "Bronze Scarab", count = 5, oi = 3 },
				},
			},
			{
				label = "Collect_Second_Scarab_Set",
				along = true,
				note = "These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.",
				goals = {
					{ t = "collect", quest = 8700, item = 20865, itemName = "Ivory Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8704, item = 20863, itemName = "Clay Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8699, item = 20863, itemName = "Clay Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8703, item = 20864, itemName = "Bone Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8697, item = 20864, itemName = "Bone Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8701, item = 20862, itemName = "Crystal Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8698, item = 20861, itemName = "Bronze Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8702, item = 20862, itemName = "Crystal Scarab", count = 5, oi = 4 },
					{ t = "collect", quest = 8556, item = 20865, itemName = "Ivory Scarab", count = 5, oi = 4 },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8700, title = "Band of Unending Life", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "turnin", quest = 8704, title = "Signet of the Unseen Path", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "turnin", quest = 8699, title = "Band of Vaulted Secrets", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "turnin", quest = 8703, title = "Ring of Eternal Justice", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "turnin", quest = 8697, title = "Ring of Infinite Wisdom", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "turnin", quest = 8701, title = "Band of Veiled Shadows", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "turnin", quest = 8698, title = "Ring of the Gathering Storm", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "turnin", quest = 8702, title = "Ring of Unspoken Names", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
					{ t = "turnin", quest = 8556, title = "Signet of Unyielding Strength", npc = 15498, npcName = "Windcaller Yessendra", map = 1451, x = 52.04, y = 38.15, f = "e" },
				},
			},
		},
	})
end

