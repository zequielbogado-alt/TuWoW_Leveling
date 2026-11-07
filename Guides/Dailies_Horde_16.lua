-- TuWoW_Leveling — Guides/Dailies_Horde_16.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-tauren-champion-rank",
		pack = "guides",
		title = "Tauren Champion Rank",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13709, title = "Valiant Of Thunder Bluff", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
					{ t = "turnin", quest = 13709, title = "Valiant Of Thunder Bluff", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
					{ t = "accept", quest = 13720, title = "The Valiant's Charge", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13773, title = "A Blade Fit For A Champion", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
					{ t = "accept", quest = 13774, title = "A Worthy Weapon", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
					{ t = "accept", quest = 13775, title = "The Edge Of Winter", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13776, title = "A Valiant's Field Training", npc = 33539, npcName = "Dern Ragetotem", map = 118, x = 76.3, y = 24.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13777, title = "The Grand Melee", npc = 33549, npcName = "Anka Clawhoof", map = 118, x = 76.1, y = 24.6, f = "e" },
					{ t = "accept", quest = 13858, title = "At The Enemy's Gates", npc = 33549, npcName = "Anka Clawhoof", map = 118, x = 76.1, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13773, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13774, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13775, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13858, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13858, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13858, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858",
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 75.5, y = 24.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13777, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 26.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13773, title = "A Blade Fit For A Champion", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
					{ t = "turnin", quest = 13774, title = "A Worthy Weapon", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
					{ t = "turnin", quest = 13775, title = "The Edge Of Winter", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13776, title = "A Valiant's Field Training", npc = 33539, npcName = "Dern Ragetotem", map = 118, x = 76.3, y = 24.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13777, title = "The Grand Melee", npc = 33549, npcName = "Anka Clawhoof", map = 118, x = 76.1, y = 24.6, f = "e" },
					{ t = "turnin", quest = 13858, title = "At The Enemy's Gates", npc = 33549, npcName = "Anka Clawhoof", map = 118, x = 76.1, y = 24.6, f = "e" },
				},
			},
			{
				note = "Make sure you have 25 Valiant Seals:",
				goals = {
					{ t = "collect", quest = 13720, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13720, title = "The Valiant's Charge", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
					{ t = "accept", quest = 13728, title = "The Valiant's Challenge", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 71.9, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33518, npcName = "Squire Danny", map = 118, x = 68.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13728, title = "The Valiant's Challenge", npc = 33403, npcName = "Runok Wildmane", map = 118, x = 76.2, y = 24.6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-troll-champion-rank",
		pack = "guides",
		title = "Troll Champion Rank",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13708, title = "Valiant Of Sen'jin", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
					{ t = "turnin", quest = 13708, title = "Valiant Of Sen'jin", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
					{ t = "accept", quest = 13719, title = "The Valiant's Charge", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13768, title = "A Blade Fit For A Champion", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
					{ t = "accept", quest = 13769, title = "A Worthy Weapon", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
					{ t = "accept", quest = 13770, title = "The Edge Of Winter", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13771, title = "A Valiant's Field Training", npc = 33540, npcName = "Shadow Hunter Mezil-kree", map = 118, x = 76.0, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13772, title = "The Grand Melee", npc = 33545, npcName = "Gahju", map = 118, x = 75.9, y = 24.4, f = "e" },
					{ t = "accept", quest = 13857, title = "At The Enemy's Gates", npc = 33545, npcName = "Gahju", map = 118, x = 75.9, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13768, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13769, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13770, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13857, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13857, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13857, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857",
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 75.6, y = 23.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13772, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 26.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13768, title = "A Blade Fit For A Champion", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
					{ t = "turnin", quest = 13769, title = "A Worthy Weapon", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
					{ t = "turnin", quest = 13770, title = "The Edge Of Winter", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13771, title = "A Valiant's Field Training", npc = 33540, npcName = "Shadow Hunter Mezil-kree", map = 118, x = 76.0, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13772, title = "The Grand Melee", npc = 33545, npcName = "Gahju", map = 118, x = 75.9, y = 24.4, f = "e" },
					{ t = "turnin", quest = 13857, title = "At The Enemy's Gates", npc = 33545, npcName = "Gahju", map = 118, x = 75.9, y = 24.4, f = "e" },
				},
			},
			{
				note = "Make sure you have 25 Valiant Seals:",
				goals = {
					{ t = "collect", quest = 13719, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13719, title = "The Valiant's Charge", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
					{ t = "accept", quest = 13727, title = "The Valiant's Challenge", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 72.0, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33518, npcName = "Squire Danny", map = 118, x = 68.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13727, title = "The Valiant's Challenge", npc = 33372, npcName = "Zul'tore", map = 118, x = 76.0, y = 24.5, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-blood-elf-champion-rank",
		pack = "guides",
		title = "Blood Elf Champion Rank",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13711, title = "Valiant Of Silvermoon", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "turnin", quest = 13711, title = "Valiant Of Silvermoon", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "accept", quest = 13722, title = "The Valiant's Charge", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13783, title = "A Blade Fit For A Champion", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "accept", quest = 13784, title = "A Worthy Weapon", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "accept", quest = 13785, title = "The Edge Of Winter", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13786, title = "A Valiant's Field Training", npc = 33538, npcName = "Kethiel Sunlance", map = 118, x = 76.4, y = 23.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13787, title = "The Grand Melee", npc = 33548, npcName = "Aneera Thuron", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "accept", quest = 13859, title = "At The Enemy's Gates", npc = 33548, npcName = "Aneera Thuron", map = 118, x = 76.5, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13783, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13784, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13785, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13859, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13859, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13859, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859",
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 75.5, y = 24.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13787, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 26.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13783, title = "A Blade Fit For A Champion", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "turnin", quest = 13784, title = "A Worthy Weapon", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "turnin", quest = 13785, title = "The Edge Of Winter", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13786, title = "A Valiant's Field Training", npc = 33538, npcName = "Kethiel Sunlance", map = 118, x = 76.4, y = 23.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13787, title = "The Grand Melee", npc = 33548, npcName = "Aneera Thuron", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "turnin", quest = 13859, title = "At The Enemy's Gates", npc = 33548, npcName = "Aneera Thuron", map = 118, x = 76.5, y = 23.9, f = "e" },
				},
			},
			{
				note = "Make sure you have 25 Valiant Seals:",
				goals = {
					{ t = "collect", quest = 13722, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13722, title = "The Valiant's Charge", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
					{ t = "accept", quest = 13731, title = "The Valiant's Challenge", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 72.2, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33518, npcName = "Squire Danny", map = 118, x = 68.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13731, title = "The Valiant's Challenge", npc = 33379, npcName = "Eressea Dawnsinger", map = 118, x = 76.5, y = 23.9, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-icecrown-undead-champion-rank",
		pack = "guides",
		title = "Undead Champion Rank",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13710, title = "Valiant Of Undercity", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
					{ t = "turnin", quest = 13710, title = "Valiant Of Undercity", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
					{ t = "accept", quest = 13721, title = "The Valiant's Charge", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13778, title = "A Blade Fit For A Champion", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
					{ t = "accept", quest = 13779, title = "A Worthy Weapon", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
					{ t = "accept", quest = 13780, title = "The Edge Of Winter", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13781, title = "A Valiant's Field Training", npc = 33541, npcName = "Sarah Chalke", map = 118, x = 76.6, y = 24.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13782, title = "The Grand Melee", npc = 33547, npcName = "Handler Dretch", map = 118, x = 76.5, y = 24.3, f = "e" },
					{ t = "accept", quest = 13860, title = "At The Enemy's Gates", npc = 33547, npcName = "Handler Dretch", map = 118, x = 76.5, y = 24.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13778, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13779, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13780, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13860, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13860, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13860, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860",
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 75.6, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13782, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 26.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13778, title = "A Blade Fit For A Champion", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
					{ t = "turnin", quest = 13779, title = "A Worthy Weapon", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
					{ t = "turnin", quest = 13780, title = "The Edge Of Winter", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13781, title = "A Valiant's Field Training", npc = 33541, npcName = "Sarah Chalke", map = 118, x = 76.6, y = 24.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13782, title = "The Grand Melee", npc = 33547, npcName = "Handler Dretch", map = 118, x = 76.5, y = 24.3, f = "e" },
					{ t = "turnin", quest = 13860, title = "At The Enemy's Gates", npc = 33547, npcName = "Handler Dretch", map = 118, x = 76.5, y = 24.3, f = "e" },
				},
			},
			{
				note = "Make sure you have 25 Valiant Seals:",
				goals = {
					{ t = "collect", quest = 13721, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13721, title = "The Valiant's Charge", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
					{ t = "accept", quest = 13729, title = "The Valiant's Challenge", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 72.1, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33518, npcName = "Squire Danny", map = 118, x = 68.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13729, title = "The Valiant's Challenge", npc = 33373, npcName = "Deathstalker Visceri", map = 118, x = 76.5, y = 24.2, f = "e" },
				},
			},
		},
	})
end

