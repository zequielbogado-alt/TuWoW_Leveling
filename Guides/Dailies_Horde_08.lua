-- TuWoW_Leveling — Guides/Dailies_Horde_08.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-argent-tournament-grounds-valiant-rank-dailies-part-2",
		pack = "guides",
		title = "Argent Tournament Grounds Valiant Rank Dailies (Parte 2/2)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "kill", quest = 13859, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13859, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13859, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859",
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "goto", map = 118, x = 75.5, y = 24.1, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "collect", quest = 13787, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 26.0, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "turnin", quest = 13783, title = "A Blade Fit For A Champion", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "turnin", quest = 13784, title = "A Worthy Weapon", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "turnin", quest = 13785, title = "The Edge Of Winter", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "turnin", quest = 13786, title = "A Valiant's Field Training", npc = 33538, npcName = "Kethiel Sunlance", map = 118, x = 76.4, y = 23.8, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "turnin", quest = 13787, title = "The Grand Melee", npc = 33548, npcName = "Aneera Thuron", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "turnin", quest = 13859, title = "At The Enemy's Gates", npc = 33548, npcName = "Aneera Thuron", map = 118, x = 76.5, y = 23.9, f = "e" },
				},
			},
			{
				note = "Make sure you have 25 Valiant Seals:",
				goals = {
					{ t = "collect", quest = 13697, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e", only = { races = { "Orc" } } },
					{ t = "collect", quest = 13719, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e", only = { races = { "Troll" } } },
					{ t = "collect", quest = 13720, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e", only = { races = { "Tauren" } } },
					{ t = "collect", quest = 13721, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e", only = { races = { "Scourge" } } },
					{ t = "collect", quest = 13722, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e", only = { races = { "BloodElf" } } },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "turnin", quest = 13697, title = "The Valiant's Charge", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
					{ t = "accept", quest = 13726, title = "The Valiant's Challenge", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "turnin", quest = 13719, title = "The Valiant's Charge", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
					{ t = "accept", quest = 13727, title = "The Valiant's Challenge", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 13720, title = "The Valiant's Charge", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
					{ t = "accept", quest = 13728, title = "The Valiant's Challenge", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 13721, title = "The Valiant's Charge", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
					{ t = "accept", quest = 13729, title = "The Valiant's Challenge", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "turnin", quest = 13722, title = "The Valiant's Charge", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "accept", quest = 13731, title = "The Valiant's Challenge", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "goto", map = 118, x = 72.2, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "goto", map = 118, x = 72.0, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", map = 118, x = 71.9, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", map = 118, x = 72.1, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "goto", map = 118, x = 72.2, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33518, npcName = "Squire Danny", map = 118, x = 68.6, y = 21.0, f = "e", only = { races = { "BloodElf" } } },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "turnin", quest = 13726, title = "The Valiant's Challenge", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
					{ t = "accept", quest = 13736, title = "A Champion Rises", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "turnin", quest = 13727, title = "The Valiant's Challenge", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
					{ t = "accept", quest = 13737, title = "A Champion Rises", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 13728, title = "The Valiant's Challenge", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
					{ t = "accept", quest = 13738, title = "A Champion Rises", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 13729, title = "The Valiant's Challenge", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
					{ t = "accept", quest = 13739, title = "A Champion Rises", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "turnin", quest = 13731, title = "The Valiant's Challenge", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "accept", quest = 13740, title = "A Champion Rises", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13736, title = "A Champion Rises", npc = 33817, npcName = "Justicar Mariel Trueheart", map = 118, x = 69.7, y = 22.9, f = "e", only = { races = { "Orc" } } },
					{ t = "turnin", quest = 13737, title = "A Champion Rises", npc = 33817, npcName = "Justicar Mariel Trueheart", map = 118, x = 69.7, y = 22.9, f = "e", only = { races = { "Troll" } } },
					{ t = "turnin", quest = 13738, title = "A Champion Rises", npc = 33817, npcName = "Justicar Mariel Trueheart", map = 118, x = 69.7, y = 22.9, f = "e", only = { races = { "Tauren" } } },
					{ t = "turnin", quest = 13739, title = "A Champion Rises", npc = 33817, npcName = "Justicar Mariel Trueheart", map = 118, x = 69.7, y = 22.9, f = "e", only = { races = { "Scourge" } } },
					{ t = "turnin", quest = 13740, title = "A Champion Rises", npc = 33817, npcName = "Justicar Mariel Trueheart", map = 118, x = 69.7, y = 22.9, f = "e", only = { races = { "BloodElf" } } },
					{ t = "accept", quest = 13795, title = "The Scourgebane", npc = 33817, npcName = "Justicar Mariel Trueheart", map = 118, x = 69.7, y = 22.9, f = "e", only = { classes = { "DEATHKNIGHT" } } },
					{ t = "accept", quest = 13794, title = "Eadric the Pure", npc = 33817, npcName = "Justicar Mariel Trueheart", map = 118, x = 69.7, y = 22.9, f = "e", only = { classes = { "DEATHKNIGHT" } } },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13795, title = "The Scourgebane", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13794, title = "Eadric the Pure", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-atg-champion-rank-dailies-death-knight-only",
		pack = "guides",
		title = "ATG Champion Rank Dailies - Death Knight Only",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13813, title = "Taking Battle To The Enemy", npc = 33769, npcName = "Zor'be the Bloodletter", map = 118, x = 73.8, y = 19.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13812, title = "Threat From Above", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
					{ t = "accept", quest = 13863, title = "Battle Before The Citadel", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13814, title = "Among the Champions", npc = 33770, npcName = "Illyrie Nightfall", map = 118, x = 73.6, y = 20.1, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.2, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.0, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.9, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.1, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.2, y = 22.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "collect", quest = 13814, itemName = "Mark of the Champion", count = 4, oi = 1, map = 118, x = 71.6, y = 23.8, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13813, target = "Cult of the Damned member", count = 15, oi = 1, map = 118, x = 64.3, y = 21.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13812, target = "Chillmaw", count = 1, oi = 1, map = 118, x = 44.1, y = 32.6, f = "e" },
					{ t = "kill", quest = 13812, target = "Cultist Bombardier", count = 3, oi = 2, map = 118, x = 44.1, y = 32.6, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13863, target = "Boneguard Commander", count = 3, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your hotbar to get off your mount|outvehicle |q 13863",
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13813, title = "Taking Battle To The Enemy", npc = 33769, npcName = "Zor'be the Bloodletter", map = 118, x = 73.8, y = 19.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13812, title = "Threat From Above", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
					{ t = "turnin", quest = 13863, title = "Battle Before The Citadel", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13814, title = "Among the Champions", npc = 33770, npcName = "Illyrie Nightfall", map = 118, x = 73.6, y = 20.1, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-atg-champion-rank-dailies-non-death-knight-only",
		pack = "guides",
		title = "ATG Champion Rank Dailies - Non-Death Knight Only",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13811, title = "Among the Champions", npc = 33771, npcName = "Luuri", map = 118, x = 69.9, y = 23.3, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13809, title = "Threat From Above", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
					{ t = "accept", quest = 13862, title = "Battle Before The Citadel", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13810, title = "Taking Battle To The Enemy", npc = 33763, npcName = "Cellian Daybreak", map = 118, x = 69.9, y = 23.5, f = "e" },
				},
			},
			{
				only = { races = { "Orc" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.2, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Troll" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.0, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.9, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.1, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 72.2, y = 22.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "collect", quest = 13811, itemName = "Mark of the Champion", count = 4, oi = 1, map = 118, x = 71.6, y = 23.8, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13810, target = "Cult of the Damned member", count = 15, oi = 1, map = 118, x = 64.3, y = 21.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13809, target = "Chillmaw", count = 1, oi = 1, map = 118, x = 44.1, y = 32.6, f = "e" },
					{ t = "kill", quest = 13809, target = "Cultist Bombardier", count = 3, oi = 2, map = 118, x = 44.1, y = 32.6, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13862, target = "Boneguard Commander", count = 3, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your hotbar to get off your mount|outvehicle |q 13862",
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13811, title = "Among the Champions", npc = 33771, npcName = "Luuri", map = 118, x = 69.9, y = 23.3, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13809, title = "Threat From Above", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
					{ t = "turnin", quest = 13862, title = "Battle Before The Citadel", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13810, title = "Taking Battle To The Enemy", npc = 33763, npcName = "Cellian Daybreak", map = 118, x = 69.9, y = 23.5, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-argent-tournament-grounds-crusader-dailies",
		pack = "guides",
		title = "Argent Tournament Grounds Crusader Dailies",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 14105, title = "Deathspeaker Kharos", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "accept", quest = 14101, title = "Drottinn Hrothgar", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "accept", quest = 14102, title = "Mistcaller Yngvar", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "accept", quest = 14104, title = "Ornolf The Scarred", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 14108, title = "Get Kraken!", npc = 35094, npcName = "Crusader Silverdawn", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "accept", quest = 14107, title = "The Fate Of The Fallen", npc = 35094, npcName = "Crusader Silverdawn", map = 118, x = 69.5, y = 23.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 14105, target = "Deathspeaker Kharos", count = 1, oi = 1, map = 118, x = 64.2, y = 21.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 47035, itemName = "Discarded Soul Crystal", count = 6, map = 118, x = 51.1, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 14102, target = "Mistcaller Yngvar", count = 1, oi = 1, map = 118, x = 43.9, y = 24.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 14101, target = "Drottinn Hrothgar", count = 1, oi = 1, map = 118, x = 50.7, y = 15.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 14104, target = "Ornolf the Scarred", count = 1, oi = 1, map = 118, x = 58.5, y = 31.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 14108, target = "Kvaldir Deepcaller", count = 3, oi = 2, map = 118, x = 69.8, y = 22.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 14105, title = "Deathspeaker Kharos", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "turnin", quest = 14101, title = "Drottinn Hrothgar", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "turnin", quest = 14102, title = "Mistcaller Yngvar", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "turnin", quest = 14104, title = "Ornolf The Scarred", npc = 34882, npcName = "High Crusader Adelard", map = 118, x = 69.5, y = 23.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 14108, title = "Get Kraken!", npc = 35094, npcName = "Crusader Silverdawn", map = 118, x = 69.5, y = 23.1, f = "e" },
					{ t = "turnin", quest = 14107, title = "The Fate Of The Fallen", npc = 35094, npcName = "Crusader Silverdawn", map = 118, x = 69.5, y = 23.1, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-atg-black-knight-quest-chain",
		pack = "guides",
		title = "ATG Black Knight Quest Chain",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13634, title = "The Black Knight of Silverpine?", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Sunreaver Pavilion", text = "Sunreaver Pavilion", map = 118, x = 76.1, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33849, npcName = "Helidan Lightwing", map = 118, x = 72.6, y = 22.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 125, x = 55.6, y = 23.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 4551, npcName = "Michael Garrett", map = 1458, x = 63.3, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13634, itemName = "Dusty Journal", count = 1, oi = 1, map = 1421, x = 53.2, y = 28.1, f = "e" },
				},
			},
			{
				note = "Hearth to Sunreaver Pavilion |goto Icecrown,76.1,24.0,0.5 |use Hearthstone##6948 |noway |c |q 13634",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13634, title = "The Black Knight of Silverpine?", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
					{ t = "accept", quest = 13641, title = "The Seer's Crystal", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13641, itemName = "Seer's Crystal", count = 1, oi = 1, map = 127, x = 46.5, y = 42.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13641, title = "The Seer's Crystal", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
					{ t = "accept", quest = 13643, title = "The Stories Dead Men Tell", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 79.4, y = 23.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 79.6, y = 23.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 79.6, y = 22.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13643, title = "The Stories Dead Men Tell", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
					{ t = "accept", quest = 13654, title = "There's Something About the Squire", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45080, itemName = "Large Femur", count = 1, map = 127, x = 39.9, y = 58.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13654, itemName = "Murderer's Toolkit", count = 1, oi = 1, map = 127, x = 38.3, y = 59.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13654, title = "There's Something About the Squire", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
					{ t = "accept", quest = 13663, title = "The Black Knight's Orders", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 77.8, y = 21.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13663, itemName = "Stolen Tournament Invitation", count = 1, oi = 2, map = 118, x = 54.1, y = 8.6, f = "e" },
					{ t = "collect", quest = 13663, itemName = "Black Knight's Orders", count = 1, oi = 3, map = 118, x = 54.1, y = 8.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13663, title = "The Black Knight's Orders", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
					{ t = "accept", quest = 13664, title = "The Black Knight's Fall", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 72.3, y = 22.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13664, target = "The Black Knight", count = 1, oi = 1, map = 118, x = 71.3, y = 23.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13664, title = "The Black Knight's Fall", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
					{ t = "accept", quest = 14016, title = "The Black Knight's Curse", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 79.5, y = 23.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 14016, title = "The Black Knight's Curse", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
					{ t = "accept", quest = 14017, title = "The Black Knight's Fate", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 14017, itemName = "Doctor Kohler's Orders", count = 1, oi = 1, map = 118, x = 61.5, y = 22.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 14017, title = "The Black Knight's Fate", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
				},
			},
		},
	})
end

