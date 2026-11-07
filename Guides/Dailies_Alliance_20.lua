-- TuWoW_Leveling — Guides/Dailies_Alliance_20.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-dwarf-champion-rank",
		pack = "guides",
		title = "Dwarf Champion Rank",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13703, title = "Valiant Of Ironforge", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.3, y = 19.0, f = "e" },
					{ t = "turnin", quest = 13703, title = "Valiant Of Ironforge", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.3, y = 19.0, f = "e" },
					{ t = "accept", quest = 13714, title = "The Valiant's Charge", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.3, y = 19.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13741, title = "A Blade Fit For A Champion", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
					{ t = "accept", quest = 13742, title = "A Worthy Weapon", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
					{ t = "accept", quest = 13743, title = "The Edge Of Winter", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13744, title = "A Valiant's Field Training", npc = 33315, npcName = "Rollo Sureshot", map = 118, x = 76.7, y = 19.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13745, title = "The Grand Melee", npc = 33309, npcName = "Clara Tumblebrew", map = 118, x = 76.6, y = 19.6, f = "e" },
					{ t = "accept", quest = 13851, title = "At The Enemy's Gates", npc = 33309, npcName = "Clara Tumblebrew", map = 118, x = 76.6, y = 19.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 76.3, y = 20.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13745, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 18.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 32255, target = "Converted Hero", count = 10, map = 118, x = 44.3, y = 54.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13851, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13851, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13851, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851",
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13741, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13742, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13743, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13741, title = "A Blade Fit For A Champion", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
					{ t = "turnin", quest = 13742, title = "A Worthy Weapon", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
					{ t = "turnin", quest = 13743, title = "The Edge Of Winter", npc = 33312, npcName = "Lana Stouthammer", map = 118, x = 76.6, y = 19.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13744, title = "A Valiant's Field Training", npc = 33315, npcName = "Rollo Sureshot", map = 118, x = 76.7, y = 19.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13745, title = "The Grand Melee", npc = 33309, npcName = "Clara Tumblebrew", map = 118, x = 76.6, y = 19.6, f = "e" },
					{ t = "turnin", quest = 13851, title = "At The Enemy's Gates", npc = 33309, npcName = "Clara Tumblebrew", map = 118, x = 76.6, y = 19.6, f = "e" },
				},
			},
			{
				note = "Make sure you have 25 Valiant Seals:",
				goals = {
					{ t = "collect", quest = 13717, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13714, title = "The Valiant's Charge", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.1, f = "e" },
					{ t = "accept", quest = 13713, title = "The Valiant's Challenge", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 76.3, y = 20.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33518, npcName = "Squire Danny", map = 118, x = 68.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13713, title = "The Valiant's Challenge", npc = 33592, npcName = "Jaelyne Evensong", map = 118, x = 76.3, y = 19.1, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-gnome-champion-rank",
		pack = "guides",
		title = "Gnome Champion Rank",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13704, title = "Valiant Of Gnomeregan", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
					{ t = "turnin", quest = 13704, title = "Valiant Of Gnomeregan", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
					{ t = "accept", quest = 13715, title = "The Valiant's Charge", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13746, title = "A Blade Fit For A Champion", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
					{ t = "accept", quest = 13747, title = "A Worthy Weapon", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
					{ t = "accept", quest = 13748, title = "The Edge Of Winter", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13749, title = "A Valiant's Field Training", npc = 33648, npcName = "Tickin Gearspanner", map = 118, x = 76.6, y = 19.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13750, title = "The Grand Melee", npc = 33649, npcName = "Flickin Gearspanner", map = 118, x = 76.5, y = 19.9, f = "e" },
					{ t = "accept", quest = 13852, title = "At The Enemy's Gates", npc = 33649, npcName = "Flickin Gearspanner", map = 118, x = 76.5, y = 19.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13746, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13747, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13748, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13852, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13852, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13852, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852",
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
					{ t = "goto", map = 118, x = 76.2, y = 20.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13750, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 18.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13746, title = "A Blade Fit For A Champion", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
					{ t = "turnin", quest = 13747, title = "A Worthy Weapon", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
					{ t = "turnin", quest = 13748, title = "The Edge Of Winter", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13749, title = "A Valiant's Field Training", npc = 33648, npcName = "Tickin Gearspanner", map = 118, x = 76.6, y = 19.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13750, title = "The Grand Melee", npc = 33649, npcName = "Flickin Gearspanner", map = 118, x = 76.5, y = 19.9, f = "e" },
					{ t = "turnin", quest = 13852, title = "At The Enemy's Gates", npc = 33649, npcName = "Flickin Gearspanner", map = 118, x = 76.5, y = 19.9, f = "e" },
				},
			},
			{
				note = "Make sure you have 25 Valiant Seals:",
				goals = {
					{ t = "collect", quest = 13715, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13715, title = "The Valiant's Charge", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
					{ t = "accept", quest = 13723, title = "The Valiant's Challenge", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 71.9, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33518, npcName = "Squire Danny", map = 118, x = 68.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13723, title = "The Valiant's Challenge", npc = 33335, npcName = "Ambrose Boltspark", map = 118, x = 76.5, y = 19.8, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-draenei-champion-rank",
		pack = "guides",
		title = "Draenei Champion Rank",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13705, title = "Valiant Of The Exodar", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
					{ t = "turnin", quest = 13705, title = "Valiant Of The Exodar", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
					{ t = "accept", quest = 13716, title = "The Valiant's Charge", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13752, title = "A Blade Fit For A Champion", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
					{ t = "accept", quest = 13753, title = "A Worthy Weapon", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
					{ t = "accept", quest = 13754, title = "The Edge Of Winter", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13755, title = "A Valiant's Field Training", npc = 33655, npcName = "Saandos", map = 118, x = 76.1, y = 19.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13756, title = "The Grand Melee", npc = 33656, npcName = "Ranii", map = 118, x = 76.2, y = 19.1, f = "e" },
					{ t = "accept", quest = 13854, title = "At The Enemy's Gates", npc = 33656, npcName = "Ranii", map = 118, x = 76.2, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13752, itemName = "Ashwood Brand", count = 1, oi = 1, map = 116, x = 61.2, y = 50.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45000, itemName = "Winter Hyacinth", count = 4, map = 118, x = 69.1, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13753, itemName = "Blade of Drak'Mar", count = 1, oi = 1, map = 115, x = 93.2, y = 26.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 45005, itemName = "Everburning Ember", count = 1, map = 127, x = 54.5, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13754, itemName = "Winter's Edge", count = 1, oi = 1, map = 117, x = 42.2, y = 19.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 48.9, y = 71.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13854, target = "Boneguard Footman", count = 15, oi = 1, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13854, target = "Boneguard Scout", count = 10, oi = 2, map = 118, x = 50.1, y = 74.8, f = "e" },
					{ t = "kill", quest = 13854, target = "Boneguard Lieutenant", count = 3, oi = 3, map = 118, x = 50.1, y = 74.8, f = "e" },
				},
			},
			{
				note = "Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854",
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
					{ t = "goto", map = 118, x = 76.4, y = 20.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13756, itemName = "Mark of the Valiant", count = 3, oi = 1, map = 118, x = 75.3, y = 18.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13752, title = "A Blade Fit For A Champion", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
					{ t = "turnin", quest = 13753, title = "A Worthy Weapon", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
					{ t = "turnin", quest = 13754, title = "The Edge Of Winter", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13755, title = "A Valiant's Field Training", npc = 33655, npcName = "Saandos", map = 118, x = 76.1, y = 19.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13756, title = "The Grand Melee", npc = 33656, npcName = "Ranii", map = 118, x = 76.2, y = 19.1, f = "e" },
					{ t = "turnin", quest = 13854, title = "At The Enemy's Gates", npc = 33656, npcName = "Ranii", map = 118, x = 76.2, y = 19.1, f = "e" },
				},
			},
			{
				note = "Make sure you have 25 Valiant Seals:",
				goals = {
					{ t = "collect", quest = 13716, itemName = "Valiant's Seal", count = 25, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13716, title = "The Valiant's Charge", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.2, f = "e" },
					{ t = "accept", quest = 13724, title = "The Valiant's Challenge", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 71.7, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 33518, npcName = "Squire Danny", map = 118, x = 68.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13724, title = "The Valiant's Challenge", npc = 33593, npcName = "Colosos", map = 118, x = 76.1, y = 19.2, f = "e" },
				},
			},
		},
	})
end

