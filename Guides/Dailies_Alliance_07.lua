-- TuWoW_Leveling — Guides/Dailies_Alliance_07.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-argent-tournament-grounds-valiant-rank-dailies",
		pack = "guides",
		title = "Argent Tournament Grounds Valiant Rank Dailies (Parte 1/2)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		next = "zygor/dailies/a-dai-icecrown-argent-tournament-grounds-valiant-rank-dailies-part-2",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13679, title = "The Aspirant's Challenge", npc = 33625, npcName = "Arcanist Taelis", map = 118, x = 76.5, y = 19.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 71.8, y = 20.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33447, npcName = "Squire David", map = 118, x = 71.4, y = 19.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13679, title = "The Aspirant's Challenge", npc = 33625, npcName = "Arcanist Taelis", map = 118, x = 76.5, y = 19.4, f = "e" },
					{ t = "accept", quest = 13684, title = "A Valiant Of Stormwind", npc = 33625, npcName = "Arcanist Taelis", map = 118, x = 76.5, y = 19.4, f = "e", only = { races = { "Human" } } },
					{ t = "accept", quest = 13689, title = "A Valiant Of Darnassus", npc = 33625, npcName = "Arcanist Taelis", map = 118, x = 76.5, y = 19.4, f = "e", only = { races = { "NightElf" } } },
					{ t = "accept", quest = 13685, title = "A Valiant Of Ironforge", npc = 33625, npcName = "Arcanist Taelis", map = 118, x = 76.5, y = 19.4, f = "e", only = { races = { "Dwarf" } } },
					{ t = "accept", quest = 13688, title = "A Valiant Of Gnomeregan", npc = 33625, npcName = "Arcanist Taelis", map = 118, x = 76.5, y = 19.4, f = "e", only = { races = { "Gnome" } } },
					{ t = "accept", quest = 13690, title = "A Valiant Of The Exodar", npc = 33625, npcName = "Arcanist Taelis", map = 118, x = 76.5, y = 19.4, f = "e", only = { races = { "Draenei" } } },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "turnin", quest = 13684, title = "A Valiant Of Stormwind", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.2, f = "e" },
					{ t = "accept", quest = 13718, title = "The Valiant's Charge", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.2, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "turnin", quest = 13689, title = "A Valiant Of Darnassus", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.1, f = "e" },
					{ t = "accept", quest = 13717, title = "The Valiant's Charge", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.1, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "turnin", quest = 13685, title = "A Valiant Of Ironforge", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
					{ t = "accept", quest = 13714, title = "The Valiant's Charge", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "turnin", quest = 13688, title = "A Valiant Of Gnomeregan", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
					{ t = "accept", quest = 13715, title = "The Valiant's Charge", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "turnin", quest = 13690, title = "A Valiant Of The Exodar", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.2, f = "e" },
					{ t = "accept", quest = 13716, title = "The Valiant's Charge", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.2, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "accept", quest = 13752, title = "A Blade Fit For A Champion", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
					{ t = "accept", quest = 13753, title = "A Worthy Weapon", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
					{ t = "accept", quest = 13754, title = "The Edge Of Winter", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "accept", quest = 13755, title = "A Valiant's Field Training", npc = 33655, npcName = "Saandos", map = 118, x = 76.1, y = 19.2, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "accept", quest = 13756, title = "The Grand Melee", npc = 33656, npcName = "Ranii", map = 118, x = 76.2, y = 19.1, f = "e" },
					{ t = "accept", quest = 13854, title = "At The Enemy's Gates", npc = 33656, npcName = "Ranii", map = 118, x = 76.2, y = 19.1, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "collect", quest = 13752, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "collect", quest = 13753, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "collect", quest = 13754, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "kill", quest = 13854, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13854, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13854, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854",
				only = { races = { "Draenei" } },
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "goto", map = 118, x = 76.4, y = 20.5, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "collect", quest = 13756, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 18.5, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "turnin", quest = 13752, title = "A Blade Fit For A Champion", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
					{ t = "turnin", quest = 13753, title = "A Worthy Weapon", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
					{ t = "turnin", quest = 13754, title = "The Edge Of Winter", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "turnin", quest = 13755, title = "A Valiant's Field Training", npc = 33655, npcName = "Saandos", map = 118, x = 76.1, y = 19.2, f = "e" },
				},
			},
			{
				only = { races = { "Draenei" } },
				goals = {
					{ t = "turnin", quest = 13756, title = "The Grand Melee", npc = 33656, npcName = "Ranii", map = 118, x = 76.2, y = 19.1, f = "e" },
					{ t = "turnin", quest = 13854, title = "At The Enemy's Gates", npc = 33656, npcName = "Ranii", map = 118, x = 76.2, y = 19.1, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "accept", quest = 13741, title = "A Blade Fit For A Champion", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
					{ t = "accept", quest = 13742, title = "A Worthy Weapon", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
					{ t = "accept", quest = 13743, title = "The Edge Of Winter", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "accept", quest = 13744, title = "A Valiant's Field Training", npc = 33315, npcName = "Rollo Sureshot", map = 118, x = 76.7, y = 19.4, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "accept", quest = 13745, title = "The Grand Melee", npc = 33309, npcName = "Clara Tumblebrew", map = 118, x = 76.6, y = 19.6, f = "e" },
					{ t = "accept", quest = 13851, title = "At The Enemy's Gates", npc = 33309, npcName = "Clara Tumblebrew", map = 118, x = 76.6, y = 19.6, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "collect", quest = 13741, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "collect", quest = 13742, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "collect", quest = 13743, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "kill", quest = 13851, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13851, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13851, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851",
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "goto", map = 118, x = 76.3, y = 20.5, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "collect", quest = 13745, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 18.5, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "turnin", quest = 13741, title = "A Blade Fit For A Champion", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
					{ t = "turnin", quest = 13742, title = "A Worthy Weapon", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
					{ t = "turnin", quest = 13743, title = "The Edge Of Winter", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "turnin", quest = 13744, title = "A Valiant's Field Training", npc = 33315, npcName = "Rollo Sureshot", map = 118, x = 76.7, y = 19.4, f = "e" },
				},
			},
			{
				only = { races = { "Dwarf" } },
				goals = {
					{ t = "turnin", quest = 13745, title = "The Grand Melee", npc = 33309, npcName = "Clara Tumblebrew", map = 118, x = 76.6, y = 19.6, f = "e" },
					{ t = "turnin", quest = 13851, title = "At The Enemy's Gates", npc = 33309, npcName = "Clara Tumblebrew", map = 118, x = 76.6, y = 19.6, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "accept", quest = 13603, title = "A Blade Fit For A Champion", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
					{ t = "accept", quest = 13600, title = "A Worthy Weapon", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
					{ t = "accept", quest = 13616, title = "The Edge Of Winter", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "accept", quest = 13592, title = "A Valiant's Field Training", npc = 33222, npcName = "Sir Marcus Barlowe", map = 118, x = 76.5, y = 19.1, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "accept", quest = 13665, title = "The Grand Melee", npc = 33223, npcName = "Captain Joseph Holley", map = 118, x = 76.6, y = 19.2, f = "e" },
					{ t = "accept", quest = 13847, title = "At The Enemy's Gates", npc = 33223, npcName = "Captain Joseph Holley", map = 118, x = 76.6, y = 19.2, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "collect", quest = 13603, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "collect", quest = 13600, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "collect", quest = 13616, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "kill", quest = 13847, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13847, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13847, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847",
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "goto", map = 118, x = 76.1, y = 20.5, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "collect", quest = 13665, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 18.5, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "turnin", quest = 13603, title = "A Blade Fit For A Champion", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
					{ t = "turnin", quest = 13600, title = "A Worthy Weapon", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
					{ t = "turnin", quest = 13616, title = "The Edge Of Winter", npc = 33225, npcName = "Marshal Jacob Alerius", map = 118, x = 76.6, y = 19.1, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "turnin", quest = 13592, title = "A Valiant's Field Training", npc = 33222, npcName = "Sir Marcus Barlowe", map = 118, x = 76.5, y = 19.1, f = "e" },
				},
			},
			{
				only = { races = { "Human" } },
				goals = {
					{ t = "turnin", quest = 13665, title = "The Grand Melee", npc = 33223, npcName = "Captain Joseph Holley", map = 118, x = 76.6, y = 19.2, f = "e" },
					{ t = "turnin", quest = 13847, title = "At The Enemy's Gates", npc = 33223, npcName = "Captain Joseph Holley", map = 118, x = 76.6, y = 19.2, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "accept", quest = 13757, title = "A Blade Fit For A Champion", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
					{ t = "accept", quest = 13758, title = "A Worthy Weapon", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
					{ t = "accept", quest = 13759, title = "The Edge Of Winter", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "accept", quest = 13760, title = "A Valiant's Field Training", npc = 33652, npcName = "Illestria Bladesinger", map = 118, x = 76.3, y = 19.0, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "accept", quest = 13761, title = "The Grand Melee", npc = 33654, npcName = "Airae Starseeker", map = 118, x = 76.4, y = 19.0, f = "e" },
					{ t = "accept", quest = 13855, title = "At The Enemy's Gates", npc = 33654, npcName = "Airae Starseeker", map = 118, x = 76.4, y = 19.0, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "collect", quest = 13757, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "collect", quest = 13758, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "collect", quest = 13759, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "kill", quest = 13855, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13855, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13855, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855",
				only = { races = { "NightElf" } },
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "goto", map = 118, x = 76.0, y = 20.4, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "collect", quest = 13761, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 18.5, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "turnin", quest = 13757, title = "A Blade Fit For A Champion", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
					{ t = "turnin", quest = 13758, title = "A Worthy Weapon", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
					{ t = "turnin", quest = 13759, title = "The Edge Of Winter", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.0, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "turnin", quest = 13760, title = "A Valiant's Field Training", npc = 33652, npcName = "Illestria Bladesinger", map = 118, x = 76.3, y = 19.0, f = "e" },
				},
			},
			{
				only = { races = { "NightElf" } },
				goals = {
					{ t = "turnin", quest = 13761, title = "The Grand Melee", npc = 33654, npcName = "Airae Starseeker", map = 118, x = 76.4, y = 19.0, f = "e" },
					{ t = "turnin", quest = 13855, title = "At The Enemy's Gates", npc = 33654, npcName = "Airae Starseeker", map = 118, x = 76.4, y = 19.0, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "accept", quest = 13746, title = "A Blade Fit For A Champion", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
					{ t = "accept", quest = 13747, title = "A Worthy Weapon", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
					{ t = "accept", quest = 13748, title = "The Edge Of Winter", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "accept", quest = 13749, title = "A Valiant's Field Training", npc = 33648, npcName = "Tickin Gearspanner", map = 118, x = 76.6, y = 19.8, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "accept", quest = 13750, title = "The Grand Melee", npc = 33649, npcName = "Flickin Gearspanner", map = 118, x = 76.5, y = 19.9, f = "e" },
					{ t = "accept", quest = 13852, title = "At The Enemy's Gates", npc = 33649, npcName = "Flickin Gearspanner", map = 118, x = 76.5, y = 19.9, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "collect", quest = 13746, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "collect", quest = 13747, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				only = { races = { "Gnome" } },
				goals = {
					{ t = "collect", quest = 13748, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
		},
	})
end

