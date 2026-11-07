-- TuWoW_Leveling — Guides/Dailies_Horde_07.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-argent-tournament-grounds-valiant-rank-dailies",
		pack = "guides",
		title = "Argent Tournament Grounds Valiant Rank Dailies (Parte 1/2)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		next = "zygor/dailies/h-dai-icecrown-argent-tournament-grounds-valiant-rank-dailies-part-2",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13680, title = "The Aspirant's Challenge", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
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
					{ t = "turnin", quest = 13680, title = "The Aspirant's Challenge", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
					{ t = "accept", quest = 13691, title = "A Valiant Of Orgrimmar", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
					{ t = "accept", quest = 13693, title = "A Valiant Of Sen'jin", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
					{ t = "accept", quest = 13694, title = "A Valiant Of Thunder Bluff", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
					{ t = "accept", quest = 13695, title = "A Valiant Of Undercity", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
					{ t = "accept", quest = 13696, title = "A Valiant Of Silvermoon", npc = 33542, npcName = "Magister Edien Sunhollow", map = 118, x = 76.3, y = 24.4, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "turnin", quest = 13691, title = "A Valiant Of Orgrimmar", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
					{ t = "accept", quest = 13697, title = "The Valiant's Charge", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "turnin", quest = 13693, title = "A Valiant Of Sen'jin", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
					{ t = "accept", quest = 13719, title = "The Valiant's Charge", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 13694, title = "A Valiant Of Thunder Bluff", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
					{ t = "accept", quest = 13720, title = "The Valiant's Charge", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 13695, title = "A Valiant Of Undercity", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
					{ t = "accept", quest = 13721, title = "The Valiant's Charge", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "turnin", quest = 13696, title = "A Valiant Of Silvermoon", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "accept", quest = 13722, title = "The Valiant's Charge", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "accept", quest = 13762, title = "A Blade Fit For A Champion", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
					{ t = "accept", quest = 13763, title = "A Worthy Weapon", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
					{ t = "accept", quest = 13764, title = "The Edge Of Winter", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "accept", quest = 13765, title = "A Valiant's Field Training", npc = 33405, npcName = "Akinos", map = 118, x = 76.5, y = 24.5, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "accept", quest = 13767, title = "The Grand Melee", npc = 33544, npcName = "Morah Worgsister", map = 118, x = 76.4, y = 24.6, f = "e" },
					{ t = "accept", quest = 13856, title = "At The Enemy's Gates", npc = 33544, npcName = "Morah Worgsister", map = 118, x = 76.4, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "collect", quest = 13762, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "collect", quest = 13763, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "collect", quest = 13764, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "kill", quest = 13856, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13856, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13856, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856",
				only = { races = { "Orc" } },
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "goto", map = 118, x = 75.5, y = 24.0, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "collect", quest = 13767, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 26.0, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "turnin", quest = 13762, title = "A Blade Fit For A Champion", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
					{ t = "turnin", quest = 13763, title = "A Worthy Weapon", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
					{ t = "turnin", quest = 13764, title = "The Edge Of Winter", npc = 33361, npcName = "Mokra the Skullcrusher", map = 118, x = 76.5, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "turnin", quest = 13765, title = "A Valiant's Field Training", npc = 33405, npcName = "Akinos", map = 118, x = 76.5, y = 24.5, f = "e" },
				},
			},
			{
				only = { races = { "Orc" } },
				goals = {
					{ t = "turnin", quest = 13767, title = "The Grand Melee", npc = 33544, npcName = "Morah Worgsister", map = 118, x = 76.4, y = 24.6, f = "e" },
					{ t = "turnin", quest = 13856, title = "At The Enemy's Gates", npc = 33544, npcName = "Morah Worgsister", map = 118, x = 76.4, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "accept", quest = 13768, title = "A Blade Fit For A Champion", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
					{ t = "accept", quest = 13769, title = "A Worthy Weapon", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
					{ t = "accept", quest = 13770, title = "The Edge Of Winter", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "accept", quest = 13771, title = "A Valiant's Field Training", npc = 33540, npcName = "Shadow Hunter Mezil-kree", map = 118, x = 76.0, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "accept", quest = 13772, title = "The Grand Melee", npc = 33545, npcName = "Gahju", map = 118, x = 75.9, y = 24.4, f = "e" },
					{ t = "accept", quest = 13857, title = "At The Enemy's Gates", npc = 33545, npcName = "Gahju", map = 118, x = 75.9, y = 24.4, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "collect", quest = 13768, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "collect", quest = 13769, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "collect", quest = 13770, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "kill", quest = 13857, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13857, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13857, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857",
				only = { races = { "Troll" } },
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "goto", map = 118, x = 75.6, y = 23.8, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "collect", quest = 13772, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 26.0, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "turnin", quest = 13768, title = "A Blade Fit For A Champion", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
					{ t = "turnin", quest = 13769, title = "A Worthy Weapon", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
					{ t = "turnin", quest = 13770, title = "The Edge Of Winter", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "turnin", quest = 13771, title = "A Valiant's Field Training", npc = 33540, npcName = "Shadow Hunter Mezil-kree", map = 118, x = 76.0, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Troll" } },
				goals = {
					{ t = "turnin", quest = 13772, title = "The Grand Melee", npc = 33545, npcName = "Gahju", map = 118, x = 75.9, y = 24.4, f = "e" },
					{ t = "turnin", quest = 13857, title = "At The Enemy's Gates", npc = 33545, npcName = "Gahju", map = 118, x = 75.9, y = 24.4, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "accept", quest = 13773, title = "A Blade Fit For A Champion", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
					{ t = "accept", quest = 13774, title = "A Worthy Weapon", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
					{ t = "accept", quest = 13775, title = "The Edge Of Winter", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "accept", quest = 13776, title = "A Valiant's Field Training", npc = 33539, npcName = "Dern Ragetotem", map = 118, x = 76.3, y = 24.7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "accept", quest = 13777, title = "The Grand Melee", npc = 33549, npcName = "Anka Clawhoof", map = 118, x = 76.1, y = 24.6, f = "e" },
					{ t = "accept", quest = 13858, title = "At The Enemy's Gates", npc = 33549, npcName = "Anka Clawhoof", map = 118, x = 76.1, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "collect", quest = 13773, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "collect", quest = 13774, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "collect", quest = 13775, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "kill", quest = 13858, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13858, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13858, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858",
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "goto", map = 118, x = 75.5, y = 24.3, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "collect", quest = 13777, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 26.0, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 13773, title = "A Blade Fit For A Champion", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
					{ t = "turnin", quest = 13774, title = "A Worthy Weapon", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
					{ t = "turnin", quest = 13775, title = "The Edge Of Winter", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 13776, title = "A Valiant's Field Training", npc = 33539, npcName = "Dern Ragetotem", map = 118, x = 76.3, y = 24.7, f = "e" },
				},
			},
			{
				only = { races = { "Tauren" } },
				goals = {
					{ t = "turnin", quest = 13777, title = "The Grand Melee", npc = 33549, npcName = "Anka Clawhoof", map = 118, x = 76.1, y = 24.6, f = "e" },
					{ t = "turnin", quest = 13858, title = "At The Enemy's Gates", npc = 33549, npcName = "Anka Clawhoof", map = 118, x = 76.1, y = 24.6, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "accept", quest = 13778, title = "A Blade Fit For A Champion", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
					{ t = "accept", quest = 13779, title = "A Worthy Weapon", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
					{ t = "accept", quest = 13780, title = "The Edge Of Winter", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "accept", quest = 13781, title = "A Valiant's Field Training", npc = 33541, npcName = "Sarah Chalke", map = 118, x = 76.6, y = 24.1, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "accept", quest = 13782, title = "The Grand Melee", npc = 33547, npcName = "Handler Dretch", map = 118, x = 76.5, y = 24.3, f = "e" },
					{ t = "accept", quest = 13860, title = "At The Enemy's Gates", npc = 33547, npcName = "Handler Dretch", map = 118, x = 76.5, y = 24.3, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "collect", quest = 13778, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "collect", quest = 13779, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "collect", quest = 13780, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "kill", quest = 13860, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13860, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13860, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860",
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "goto", map = 118, x = 75.6, y = 23.9, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "collect", quest = 13782, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 26.0, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 13778, title = "A Blade Fit For A Champion", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
					{ t = "turnin", quest = 13779, title = "A Worthy Weapon", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
					{ t = "turnin", quest = 13780, title = "The Edge Of Winter", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 13781, title = "A Valiant's Field Training", npc = 33541, npcName = "Sarah Chalke", map = 118, x = 76.6, y = 24.1, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 13782, title = "The Grand Melee", npc = 33547, npcName = "Handler Dretch", map = 118, x = 76.5, y = 24.3, f = "e" },
					{ t = "turnin", quest = 13860, title = "At The Enemy's Gates", npc = 33547, npcName = "Handler Dretch", map = 118, x = 76.5, y = 24.3, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "accept", quest = 13783, title = "A Blade Fit For A Champion", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "accept", quest = 13784, title = "A Worthy Weapon", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "accept", quest = 13785, title = "The Edge Of Winter", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "accept", quest = 13786, title = "A Valiant's Field Training", npc = 33538, npcName = "Kethiel Sunlance", map = 118, x = 76.4, y = 23.8, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "accept", quest = 13787, title = "The Grand Melee", npc = 33548, npcName = "Aneera Thuron", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "accept", quest = 13859, title = "At The Enemy's Gates", npc = 33548, npcName = "Aneera Thuron", map = 118, x = 76.5, y = 23.9, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "collect", quest = 13783, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "collect", quest = 13784, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				only = { races = { "BloodElf" } },
				goals = {
					{ t = "collect", quest = 13785, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
		},
	})
end

