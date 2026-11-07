-- TuWoW_Leveling — Guides/Dailies_Alliance_08.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-argent-tournament-grounds-valiant-rank-dailies-part-2",
		pack = "guides",
		title = "Argent Tournament Grounds Valiant Rank Dailies (Parte 2/2)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "kill", quest = 13852, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13852, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13852, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852",
				only = { races = { "Gnome" } },
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "goto", map = 118, x = 76.2, y = 20.5, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "collect", quest = 13750, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 18.5, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "turnin", quest = 13746, title = "A Blade Fit For A Champion", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
					{ t = "turnin", quest = 13747, title = "A Worthy Weapon", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
					{ t = "turnin", quest = 13748, title = "The Edge Of Winter", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "turnin", quest = 13749, title = "A Valiant's Field Training", npc = 33648, npcName = "Tickin Gearspanner", map = 118, x = 76.6, y = 19.8, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "turnin", quest = 13750, title = "The Grand Melee", npc = 33649, npcName = "Flickin Gearspanner", map = 118, x = 76.5, y = 19.9, f = "e" },
					{ t = "turnin", quest = 13852, title = "At The Enemy's Gates", npc = 33649, npcName = "Flickin Gearspanner", map = 118, x = 76.5, y = 19.9, f = "e" },
				},
			},
			{
				note = "Make sure you have 25 Valiant Seals:",
				goals = {
					{ t = "collect", quest = 13718, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e", only = { races = { "Human" } } },
					{ t = "collect", quest = 13714, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e", only = { races = { "Dwarf" } } },
					{ t = "collect", quest = 13717, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e", only = { races = { "NightElf" } } },
					{ t = "collect", quest = 13715, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e", only = { races = { "Gnome" } } },
					{ t = "collect", quest = 13716, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e", only = { races = { "Draenei" } } },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "turnin", quest = 13718, title = "The Valiant's Charge", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.2, f = "e" },
					{ t = "accept", quest = 13699, title = "The Valiant's Challenge", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.2, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "turnin", quest = 13717, title = "The Valiant's Charge", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.1, f = "e" },
					{ t = "accept", quest = 13725, title = "The Valiant's Challenge", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.1, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "turnin", quest = 13714, title = "The Valiant's Charge", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
					{ t = "accept", quest = 13713, title = "The Valiant's Challenge", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "turnin", quest = 13715, title = "The Valiant's Charge", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
					{ t = "accept", quest = 13723, title = "The Valiant's Challenge", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "turnin", quest = 13716, title = "The Valiant's Charge", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.2, f = "e" },
					{ t = "accept", quest = 13724, title = "The Valiant's Challenge", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.2, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", map = 118, x = 71.6, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "goto", map = 118, x = 71.6, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "goto", map = 118, x = 71.8, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "goto", map = 118, x = 71.9, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "goto", map = 118, x = 71.7, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33518, npcName = "Squire Danny", map = 118, x = 68.6, y = 21.0, f = "e", only = { races = { "Draenei" } } },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "turnin", quest = 13699, title = "The Valiant's Challenge", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.2, f = "e" },
					{ t = "accept", quest = 13702, title = "A Champion Rises", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.2, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "turnin", quest = 13725, title = "The Valiant's Challenge", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.1, f = "e" },
					{ t = "accept", quest = 13735, title = "A Champion Rises", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.1, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "turnin", quest = 13713, title = "The Valiant's Challenge", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
					{ t = "accept", quest = 13732, title = "A Champion Rises", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "turnin", quest = 13723, title = "The Valiant's Challenge", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
					{ t = "accept", quest = 13733, title = "A Champion Rises", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "turnin", quest = 13724, title = "The Valiant's Challenge", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.2, f = "e" },
					{ t = "accept", quest = 13734, title = "A Champion Rises", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13702, title = "A Champion Rises", npc = 33817, npcName = "Justicar Mariel Trueheart", map = 118, x = 69.7, y = 22.9, f = "e", only = { races = { "Human" } } },
					{ t = "turnin", quest = 13735, title = "A Champion Rises", npc = 33817, npcName = "Justicar Mariel Trueheart", map = 118, x = 69.7, y = 22.9, f = "e", only = { races = { "NightElf" } } },
					{ t = "turnin", quest = 13732, title = "A Champion Rises", npc = 33817, npcName = "Justicar Mariel Trueheart", map = 118, x = 69.7, y = 22.9, f = "e", only = { races = { "Dwarf" } } },
					{ t = "turnin", quest = 13733, title = "A Champion Rises", npc = 33817, npcName = "Justicar Mariel Trueheart", map = 118, x = 69.7, y = 22.9, f = "e", only = { races = { "Gnome" } } },
					{ t = "turnin", quest = 13734, title = "A Champion Rises", npc = 33817, npcName = "Justicar Mariel Trueheart", map = 118, x = 69.7, y = 22.9, f = "e", only = { races = { "Draenei" } } },
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
		id = "zygor/dailies/a-dai-icecrown-atg-champion-rank-dailies-death-knight-only",
		pack = "guides",
		title = "ATG Champion Rank Dailies - Death Knight Only",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13791, title = "Taking Battle To The Enemy", npc = 33769, npcName = "Zor'be the Bloodletter", map = 118, x = 73.8, y = 19.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13788, title = "Threat From Above", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
					{ t = "accept", quest = 13864, title = "Battle Before The Citadel", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "accept", quest = 13793, title = "Among the Champions", npc = 33770, npcName = "Illyrie Nightfall", map = 118, x = 73.6, y = 20.1, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.7, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.8, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Human" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.6, y = 22.4, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.6, y = 22.5, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" }, classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 71.9, y = 22.5, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "collect", quest = 13793, itemName = "Mark of the Champion", count = 4, oi = 1, map = 118, x = 71.6, y = 23.8, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13791, target = "Cult of the Damned member", count = 15, oi = 1, map = 118, x = 64.3, y = 21.4, f = "e" },
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
					{ t = "kill", quest = 13864, target = "Boneguard Commander", count = 3, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your hotbar to get off your mount|outvehicle |q 13864",
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "kill", quest = 13788, target = "Chillmaw", count = 1, oi = 1, map = 118, x = 44.1, y = 32.6, f = "e" },
					{ t = "kill", quest = 13788, target = "Cultist Bombardier", count = 3, oi = 2, map = 118, x = 44.1, y = 32.6, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13791, title = "Taking Battle To The Enemy", npc = 33769, npcName = "Zor'be the Bloodletter", map = 118, x = 73.8, y = 19.4, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13788, title = "Threat From Above", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
					{ t = "turnin", quest = 13864, title = "Battle Before The Citadel", npc = 33762, npcName = "Crok Scourgebane", map = 118, x = 73.8, y = 20.1, f = "e" },
				},
			},
			{
				only = { classes = { "DEATHKNIGHT" } },
				goals = {
					{ t = "turnin", quest = 13793, title = "Among the Champions", npc = 33770, npcName = "Illyrie Nightfall", map = 118, x = 73.6, y = 20.1, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-atg-champion-rank-dailies-non-death-knight-only",
		pack = "guides",
		title = "ATG Champion Rank Dailies - Non-Death Knight Only",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				note = "Click the red arrow on your hotbar to get off your mount|outvehicle |q 13861",
				goals = {
					{ t = "accept", quest = 13790, title = "Among the Champions", npc = 33771, npcName = "Luuri", map = 118, x = 69.9, y = 23.3, f = "e" },
					{ t = "accept", quest = 13682, title = "Threat From Above", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
					{ t = "accept", quest = 13861, title = "Battle Before The Citadel", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
					{ t = "accept", quest = 13789, title = "Taking Battle To The Enemy", npc = 33763, npcName = "Cellian Daybreak", map = 118, x = 69.9, y = 23.5, f = "e" },
					{ t = "collect", quest = 13790, itemName = "Mark of the Champion", count = 4, oi = 1, map = 118, x = 71.6, y = 23.8, f = "e" },
					{ t = "kill", quest = 13789, target = "Cult of the Damned member", count = 15, oi = 1, map = 118, x = 64.3, y = 21.4, f = "e" },
					{ t = "kill", quest = 13682, target = "Chillmaw", count = 1, oi = 1, map = 118, x = 44.1, y = 32.6, f = "e" },
					{ t = "kill", quest = 13682, target = "Cultist Bombardier", count = 3, oi = 2, map = 118, x = 44.1, y = 32.6, f = "e" },
					{ t = "kill", quest = 13861, target = "Boneguard Commander", count = 3, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "turnin", quest = 13790, title = "Among the Champions", npc = 33771, npcName = "Luuri", map = 118, x = 69.9, y = 23.3, f = "e" },
					{ t = "turnin", quest = 13682, title = "Threat From Above", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
					{ t = "turnin", quest = 13861, title = "Battle Before The Citadel", npc = 33759, npcName = "Eadric the Pure", map = 118, x = 70.0, y = 23.4, f = "e" },
					{ t = "turnin", quest = 13789, title = "Taking Battle To The Enemy", npc = 33763, npcName = "Cellian Daybreak", map = 118, x = 69.9, y = 23.5, f = "e" },
					{ t = "goto", map = 118, x = 71.7, y = 22.4, f = "e", only = { classes = { "WARRIOR", "PALADIN", "HUNTER", "PRIEST", "SHAMAN", "MAGE" } } },
					{ t = "goto", map = 118, x = 71.8, y = 22.5, f = "e", only = { classes = { "WARRIOR", "PALADIN", "HUNTER", "ROGUE", "PRIEST", "DEATHKNIGHT" } } },
					{ t = "goto", map = 118, x = 71.6, y = 22.4, f = "e", only = { classes = { "WARRIOR", "PALADIN", "ROGUE", "PRIEST", "MAGE", "WARLOCK", "DEATHKNIGHT" } } },
					{ t = "goto", map = 118, x = 71.6, y = 22.5, f = "e", only = { classes = { "WARRIOR", "HUNTER", "ROGUE", "PRIEST", "DRUID", "DEATHKNIGHT" } } },
					{ t = "goto", map = 118, x = 71.9, y = 22.5, f = "e", only = { classes = { "WARRIOR", "ROGUE", "MAGE", "WARLOCK", "DEATHKNIGHT" } } },
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e", only = { classes = { "DEATHKNIGHT" } } },
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e", only = { classes = { "DEATHKNIGHT" } } },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-argent-tournament-grounds-crusader-dailies",
		pack = "guides",
		title = "Argent Tournament Grounds Crusader Dailies",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
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
		id = "zygor/dailies/a-dai-icecrown-atg-black-knight-quest-chain",
		pack = "guides",
		title = "ATG Black Knight Quest Chain",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13633, title = "The Black Knight of Westfall?", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Silver Covenant Pavilion", text = "Silver Covenant Pavilion", map = 118, x = 76.2, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33849, npcName = "Helidan Lightwing", map = 118, x = 72.6, y = 22.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 125, x = 40.1, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 352, npcName = "Dungar Longdrink", map = 1453, x = 71.0, y = 72.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13633, itemName = "Dusty Journal", count = 1, oi = 1, map = 1436, x = 42.1, y = 69.7, f = "e" },
				},
			},
			{
				note = "Hearth to Silver Covenant Pavilion |goto Icecrown,76.2,19.6,0.5 |use Hearthstone##6948 |noway |c |q 13633",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13633, title = "The Black Knight of Westfall?", npc = 33417, npcName = "Crusader Rhydalla", map = 118, x = 69.4, y = 23.0, f = "e" },
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

