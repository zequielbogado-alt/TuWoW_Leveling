-- TuWoW_Leveling — Guides/Leveling_Horde_40.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-70-72",
		pack = "guides",
		title = "Northrend (70-72) (Parte 1/5)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-70-72-part-2",
		author = "TuWoW & Zygor",
		minLevel = 70,
		maxLevel = 72,
		zone = 1411,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", map = 1411, x = 41.4, y = 17.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11585, title = "Hellscream's Vigil", npc = 25273, npcName = "Warsong Recruitment Officer", map = 114, x = 41.6, y = 54.0, f = "e" },
				},
			},
			{
				note = "Go downstairs to 41.3,53.6",
				goals = {
					{ t = "turnin", quest = 11585, title = "Hellscream's Vigil", npc = 25237, npcName = "Garrosh Hellscream", map = 114, x = 41.3, y = 53.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11596, title = "The Defense of Warsong Hold", npc = 25256, npcName = "High Overlord Saurfang", map = 114, x = 41.3, y = 53.6, f = "e" },
				},
			},
			{
				note = "Go outside to 43.2,55",
				goals = {
					{ t = "turnin", quest = 11596, title = "The Defense of Warsong Hold", npc = 25279, npcName = "Overlord Razgor", map = 114, x = 43.2, y = 55.0, f = "e" },
					{ t = "accept", quest = 11598, title = "Taking Back Mightstone Quarry", npc = 25279, npcName = "Overlord Razgor", map = 114, x = 43.2, y = 55.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11606, title = "Patience is a Virtue that We Don't Need", npc = 25327, npcName = "Quartermaster Holgoth", map = 114, x = 43.3, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11611, title = "Taken by the Scourge", npc = 25280, npcName = "Foreman Mortuus", map = 114, x = 42.2, y = 56.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11598, target = "Nerub'ar", count = 15, oi = 1, map = 114, x = 43.3, y = 57.9, f = "e" },
					{ t = "collect", quest = 11606, itemName = "Warsong Munitions", count = 15, oi = 1, map = 114, x = 43.3, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 42.8, y = 58.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11611, title = "Taken by the Scourge", npc = 25280, npcName = "Foreman Mortuus", map = 114, x = 42.2, y = 56.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11606, title = "Patience is a Virtue that We Don't Need", npc = 25327, npcName = "Quartermaster Holgoth", map = 114, x = 43.3, y = 55.4, f = "e" },
					{ t = "accept", quest = 11608, title = "Bury Those Cockroaches!", npc = 25327, npcName = "Quartermaster Holgoth", map = 114, x = 43.3, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11598, title = "Taking Back Mightstone Quarry", npc = 25279, npcName = "Overlord Razgor", map = 114, x = 43.2, y = 55.0, f = "e" },
					{ t = "accept", quest = 11602, title = "Cutting Off the Source", npc = 25279, npcName = "Overlord Razgor", map = 114, x = 43.2, y = 55.0, f = "e" },
					{ t = "accept", quest = 11614, title = "Untold Truths", npc = 25394, npcName = "Shadowstalker Barthus", map = 114, x = 43.2, y = 55.0, f = "e" },
				},
			},
			{
				note = "Go south up the metal stairs to 44.6,59.3",
				goals = {
					{ t = "goto", map = 114, x = 44.6, y = 59.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 44.3, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 41.7, y = 58.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 39.8, y = 52.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11614, title = "Untold Truths", npc = 25328, npcName = "Shadowstalker Luther", map = 114, x = 40.1, y = 52.1, f = "e" },
					{ t = "accept", quest = 11615, title = "Nerub'ar Secrets", npc = 25328, npcName = "Shadowstalker Luther", map = 114, x = 40.1, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 41.3, y = 50.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11608, title = "Bury Those Cockroaches!", npc = 25327, npcName = "Quartermaster Holgoth", map = 114, x = 43.3, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11602, title = "Cutting Off the Source", npc = 25279, npcName = "Overlord Razgor", map = 114, x = 43.2, y = 55.0, f = "e" },
					{ t = "accept", quest = 11634, title = "Wind Master To'bor", npc = 25279, npcName = "Overlord Razgor", map = 114, x = 43.2, y = 55.0, f = "e" },
					{ t = "turnin", quest = 11615, title = "Nerub'ar Secrets", npc = 25394, npcName = "Shadowstalker Barthus", map = 114, x = 43.2, y = 55.0, f = "e" },
					{ t = "accept", quest = 11616, title = "Message to Hellscream", npc = 25394, npcName = "Shadowstalker Barthus", map = 114, x = 43.2, y = 55.0, f = "e" },
				},
			},
			{
				note = "Go into Warsong Hold to 41.3,53.6",
				goals = {
					{ t = "turnin", quest = 11616, title = "Message to Hellscream", npc = 25237, npcName = "Garrosh Hellscream", map = 114, x = 41.3, y = 53.6, f = "e" },
					{ t = "accept", quest = 11618, title = "Reinforcements Incoming...", npc = 25237, npcName = "Garrosh Hellscream", map = 114, x = 41.3, y = 53.6, f = "e" },
				},
			},
			{
				note = "Go to the very top of Warsong Hold to 40.4,51.4",
				goals = {
					{ t = "fpath", text = "Warsong Hold", map = 114, x = 40.4, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11634, title = "Wind Master To'bor", npc = 25289, npcName = "Wind Master To'bor", map = 114, x = 42.3, y = 54.9, f = "e" },
					{ t = "accept", quest = 11636, title = "Magic Carpet Ride", npc = 25289, npcName = "Wind Master To'bor", map = 114, x = 42.3, y = 54.9, f = "e" },
				},
			},
			{
				note = "Go northwest outside to 38.1,52.6",
				goals = {
					{ t = "turnin", quest = 11618, title = "Reinforcements Incoming...", npc = 25437, npcName = "Shadowstalker Ickoris", map = 114, x = 38.1, y = 52.6, f = "e" },
					{ t = "accept", quest = 11686, title = "The Warsong Farms", npc = 25437, npcName = "Shadowstalker Ickoris", map = 114, x = 38.1, y = 52.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11676, title = "Merciful Freedom", npc = 25438, npcName = "Shadowstalker Canarius", map = 114, x = 37.9, y = 52.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11688, title = "Damned Filthy Swine", npc = 25607, npcName = "Farmer Torp", map = 114, x = 37.9, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11688, target = "Unliving Swine", count = 10, oi = 1, map = 114, x = 37.2, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 39.5, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 25609, target = "En'kilah Necrolord", count = 1, map = 114, x = 36.4, y = 48.1, f = "e" },
					{ t = "collect", item = 34908, itemName = "Scourge Cage Key", count = 5, map = 114, x = 36.4, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 36.7, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 35.0, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11676, title = "Merciful Freedom", npc = 25438, npcName = "Shadowstalker Canarius", map = 114, x = 37.9, y = 52.6, f = "e" },
					{ t = "turnin", quest = 11686, title = "The Warsong Farms", npc = 25437, npcName = "Shadowstalker Ickoris", map = 114, x = 37.9, y = 52.6, f = "e" },
					{ t = "accept", quest = 11703, title = "Get to Getry", npc = 25437, npcName = "Shadowstalker Ickoris", map = 114, x = 37.9, y = 52.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11688, title = "Damned Filthy Swine", npc = 25607, npcName = "Farmer Torp", map = 114, x = 37.9, y = 52.3, f = "e" },
					{ t = "accept", quest = 11690, title = "Bring 'Em Back Alive", npc = 25607, npcName = "Farmer Torp", map = 114, x = 37.9, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11690, title = "Bring 'Em Back Alive", npc = 25607, npcName = "Farmer Torp", map = 114, x = 37.9, y = 52.3, f = "e" },
				},
			},
			{
				note = "Go northwest to the top of the tower at 34.6,46.4",
				goals = {
					{ t = "turnin", quest = 11703, title = "Get to Getry", npc = 25729, npcName = "Shadowstalker Getry", map = 114, x = 34.6, y = 46.4, f = "e" },
					{ t = "accept", quest = 11705, title = "Foolish Endeavors", npc = 25729, npcName = "Shadowstalker Getry", map = 114, x = 34.6, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11705, title = "Foolish Endeavors", npc = 25237, npcName = "Garrosh Hellscream", map = 114, x = 41.3, y = 53.6, f = "e" },
					{ t = "accept", quest = 11709, title = "Nork Bloodfrenzy's Charge", npc = 25237, npcName = "Garrosh Hellscream", map = 114, x = 41.3, y = 53.6, f = "e" },
				},
			},
			{
				note = "Go outside to 43.7,54.5",
				goals = {
					{ t = "turnin", quest = 11709, title = "Nork Bloodfrenzy's Charge", npc = 25379, npcName = "Warden Nork Bloodfrenzy", map = 114, x = 43.7, y = 54.5, f = "e" },
					{ t = "accept", quest = 11711, title = "Coward Delivery... Under 30 Minutes or it's Free", npc = 25379, npcName = "Warden Nork Bloodfrenzy", map = 114, x = 43.7, y = 54.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 55.3, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11711, title = "Coward Delivery... Under 30 Minutes or it's Free", npc = 25440, npcName = "Scout Tungok", map = 114, x = 53.1, y = 51.6, f = "e" },
					{ t = "accept", quest = 11714, title = "Vermin Extermination", npc = 25440, npcName = "Scout Tungok", map = 114, x = 53.1, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11716, title = "The Wondrous Bloodspore", npc = 25381, npcName = "Bloodmage Laurith", map = 114, x = 52.1, y = 52.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11716, itemName = "Bloodspore Carpel", count = 10, oi = 1, map = 114, x = 52.7, y = 52.7, f = "e" },
					{ t = "kill", quest = 11714, target = "Bloodspore Harvester", count = 8, oi = 1, map = 114, x = 52.7, y = 52.7, f = "e" },
					{ t = "kill", quest = 11714, target = "Bloodspore Firestarter", count = 5, oi = 2, map = 114, x = 52.7, y = 52.7, f = "e" },
					{ t = "kill", quest = 11714, target = "Bloodspore Roaster", count = 2, oi = 3, map = 114, x = 52.7, y = 52.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11716, title = "The Wondrous Bloodspore", npc = 25381, npcName = "Bloodmage Laurith", map = 114, x = 52.1, y = 52.5, f = "e" },
					{ t = "accept", quest = 11717, title = "Pollen from the Source", npc = 25381, npcName = "Bloodmage Laurith", map = 114, x = 52.1, y = 52.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11714, title = "Vermin Extermination", npc = 25440, npcName = "Scout Tungok", map = 114, x = 53.1, y = 51.6, f = "e" },
				},
			},
			{
				note = "Kill Bloodspore Moths all around this area",
				goals = {
					{ t = "collect", quest = 11717, itemName = "Bloodspore Moth Pollen", count = 5, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11717, title = "Pollen from the Source", npc = 25381, npcName = "Bloodmage Laurith", map = 114, x = 52.1, y = 52.5, f = "e" },
					{ t = "accept", quest = 11719, title = "A Suitable Test Subject", npc = 25381, npcName = "Bloodmage Laurith", map = 114, x = 52.1, y = 52.5, f = "e" },
					{ t = "turnin", quest = 11719, title = "A Suitable Test Subject", npc = 25381, npcName = "Bloodmage Laurith", map = 114, x = 52.1, y = 52.5, f = "e" },
					{ t = "accept", quest = 11720, title = "The Invasion of Gammoth", npc = 25381, npcName = "Bloodmage Laurith", map = 114, x = 52.1, y = 52.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11720, title = "The Invasion of Gammoth", npc = 25380, npcName = "Primal Mighthorn", map = 114, x = 52.2, y = 52.8, f = "e" },
					{ t = "accept", quest = 11721, title = "Gammothra the Tormentor", npc = 25380, npcName = "Primal Mighthorn", map = 114, x = 52.2, y = 52.8, f = "e" },
				},
			},
			{
				note = "Follow the path all the way down to 46.1,62.1",
				goals = {
					{ t = "collect", quest = 11721, itemName = "Head of Gammothra", count = 1, oi = 1, map = 114, x = 46.1, y = 62.1, f = "e" },
				},
			},
			{
				note = "Leave the cave and go southeast to 49.4,65.6|n",
				goals = {
					{ t = "goto", map = 114, x = 49.4, y = 65.6, f = "e" },
				},
			},
			{
				note = "Follow the path up and jump down to 48.5,59.1",
				goals = {
					{ t = "accept", quest = 11724, title = "Massive Moth Omelet?", map = 114, x = 48.5, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11721, title = "Gammothra the Tormentor", npc = 25380, npcName = "Primal Mighthorn", map = 114, x = 52.2, y = 52.8, f = "e" },
					{ t = "accept", quest = 11722, title = "Trophies of Gammoth", npc = 25380, npcName = "Primal Mighthorn", map = 114, x = 52.2, y = 52.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11724, title = "Massive Moth Omelet?", npc = 25381, npcName = "Bloodmage Laurith", map = 114, x = 52.2, y = 52.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11722, title = "Trophies of Gammoth", npc = 25237, npcName = "Garrosh Hellscream", map = 114, x = 41.3, y = 53.6, f = "e" },
				},
			},
			{
				note = "Go to the top of Warsong Hold to 42.3,55.7",
				goals = {
					{ t = "talk", npc = 25459, npcName = "Yanni", map = 114, x = 42.3, y = 55.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11636, title = "Magic Carpet Ride", npc = 25329, npcName = "Gorge the Corpsegrinder", map = 114, x = 32.2, y = 54.1, f = "e" },
					{ t = "accept", quest = 11642, title = "Tank Ain't Gonna Fix Itself", npc = 25329, npcName = "Gorge the Corpsegrinder", map = 114, x = 32.2, y = 54.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11642, title = "Tank Ain't Gonna Fix Itself", npc = 25475, npcName = "Mobu", map = 114, x = 32.1, y = 54.3, f = "e" },
					{ t = "accept", quest = 11643, title = "Mobu's Pneumatic Tank Transjigamarig", npc = 25475, npcName = "Mobu", map = 114, x = 32.1, y = 54.3, f = "e" },
					{ t = "accept", quest = 11644, title = "Super Strong Metal Plates!", npc = 25475, npcName = "Mobu", map = 114, x = 32.1, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11655, title = "Into the Mist", npc = 25476, npcName = "Waltor of Pal'ea", map = 114, x = 32.3, y = 54.3, f = "e" },
					{ t = "accept", quest = 11660, title = "Horn of the Ancient Mariner", npc = 25476, npcName = "Waltor of Pal'ea", map = 114, x = 32.3, y = 54.3, f = "e" },
				},
			},
			{
				note = "Go north to the top of the tower to 31.9,52.3",
				goals = {
					{ t = "accept", quest = 11664, title = "Escaping the Mist", npc = 25504, npcName = "Mootoo the Younger", map = 114, x = 31.9, y = 52.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11664, title = "Escaping the Mist", npc = 25503, npcName = "Elder Mootoo", map = 114, x = 31.7, y = 54.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11644, itemName = "Super Strong Metal Plate", count = 10, oi = 1, map = 114, x = 29.9, y = 54.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Kvaldir mobs", count = 1, map = 114, x = 30.4, y = 53.5, f = "e" },
					{ t = "collect", quest = 11655, itemName = "Tuskarr Relic", count = 8, oi = 1, map = 114, x = 30.4, y = 53.5, f = "e" },
					{ t = "kill", target = "Kvaldir Mistweavers", count = 1, map = 114, x = 30.4, y = 53.5, f = "e" },
					{ t = "collect", quest = 11660, itemName = "Horn of the Ancient Mariner", count = 1, oi = 1, map = 114, x = 30.4, y = 53.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11643, itemName = "Pneumatic Tank Transjigamarig", count = 1, oi = 1, map = 114, x = 32.4, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11643, title = "Mobu's Pneumatic Tank Transjigamarig", npc = 25475, npcName = "Mobu", map = 114, x = 32.1, y = 54.3, f = "e" },
					{ t = "turnin", quest = 11644, title = "Super Strong Metal Plates!", npc = 25475, npcName = "Mobu", map = 114, x = 32.1, y = 54.3, f = "e" },
					{ t = "accept", quest = 11651, title = "Tanks a lot...", npc = 25475, npcName = "Mobu", map = 114, x = 32.1, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11651, title = "Tanks a lot...", npc = 25329, npcName = "Gorge the Corpsegrinder", map = 114, x = 32.2, y = 54.1, f = "e" },
					{ t = "accept", quest = 11652, title = "The Plains of Nasam", npc = 25329, npcName = "Gorge the Corpsegrinder", map = 114, x = 32.2, y = 54.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11655, title = "Into the Mist", npc = 25476, npcName = "Waltor of Pal'ea", map = 114, x = 32.3, y = 54.3, f = "e" },
					{ t = "accept", quest = 11656, title = "Burn in Effigy", npc = 25476, npcName = "Waltor of Pal'ea", map = 114, x = 32.3, y = 54.3, f = "e" },
					{ t = "turnin", quest = 11660, title = "Horn of the Ancient Mariner", npc = 25476, npcName = "Waltor of Pal'ea", map = 114, x = 32.3, y = 54.3, f = "e" },
					{ t = "accept", quest = 11661, title = "Orabus the Helmsman", npc = 25476, npcName = "Waltor of Pal'ea", map = 114, x = 32.3, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 29.8, y = 52.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 31.0, y = 49.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 31.7, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11661, target = "Orabus the Helmsman", count = 1, oi = 1, map = 114, x = 26.8, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 30.1, y = 61.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11656, title = "Burn in Effigy", npc = 25476, npcName = "Waltor of Pal'ea", map = 114, x = 32.3, y = 54.3, f = "e" },
					{ t = "turnin", quest = 11661, title = "Orabus the Helmsman", npc = 25476, npcName = "Waltor of Pal'ea", map = 114, x = 32.3, y = 54.3, f = "e" },
					{ t = "accept", quest = 11662, title = "Seek Out Karuk!", npc = 25476, npcName = "Waltor of Pal'ea", map = 114, x = 32.3, y = 54.3, f = "e" },
				},
			},
			{
				note = "Ride south to 34,61.6|n",
				goals = {
					{ t = "goto", map = 114, x = 34.0, y = 61.6, f = "e" },
				},
			},
			{
				note = "Exit the tank in a safe spot and go to Warsong Hold",
				goals = {
					{ t = "turnin", quest = 11652, title = "The Plains of Nasam", npc = 25237, npcName = "Garrosh Hellscream", map = 114, x = 41.3, y = 53.6, f = "e" },
					{ t = "accept", quest = 11916, title = "Hellscream's Champion", npc = 25237, npcName = "Garrosh Hellscream", map = 114, x = 41.3, y = 53.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11574, title = "Too Close For Comfort", npc = 25247, npcName = "Endorah", map = 114, x = 41.7, y = 54.7, f = "e" },
				},
			},
			{
				note = "Go southeast outside to 47.1,75.5",
				goals = {
					{ t = "turnin", quest = 11662, title = "Seek Out Karuk!", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
					{ t = "accept", quest = 11613, title = "Karuk's Oath", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11613, target = "Skadir Raider", count = 6, oi = 1, map = 114, x = 46.5, y = 77.2, f = "e" },
					{ t = "kill", quest = 11613, target = "Skadir Longboatsman", count = 5, oi = 2, map = 114, x = 46.5, y = 77.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12471, title = "Cruelty of the Kvaldir", npc = 25636, npcName = "Captured Tuskarr Prisoner", map = 114, x = 44.2, y = 77.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11613, title = "Karuk's Oath", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
					{ t = "accept", quest = 11619, title = "Gamel the Cruel", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
					{ t = "turnin", quest = 12471, title = "Cruelty of the Kvaldir", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 114, x = 46.4, y = 78.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11619, title = "Gamel the Cruel", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
					{ t = "accept", quest = 11620, title = "A Father's Words", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11620, title = "A Father's Words", npc = 25450, npcName = "Veehja", map = 114, x = 43.6, y = 80.5, f = "e" },
					{ t = "accept", quest = 11625, title = "The Trident of Naz'jan", npc = 25450, npcName = "Veehja", map = 114, x = 43.6, y = 80.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11625, itemName = "Trident of Naz'jan", count = 1, oi = 1, map = 114, x = 54.7, y = 89.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11625, title = "The Trident of Naz'jan", npc = 25450, npcName = "Veehja", map = 114, x = 43.6, y = 80.5, f = "e" },
					{ t = "accept", quest = 11626, title = "The Emissary", npc = 25450, npcName = "Veehja", map = 114, x = 43.6, y = 80.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11626, target = "Leviroth", count = 1, oi = 1, map = 114, x = 52.2, y = 88.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11626, title = "The Emissary", npc = 25435, npcName = "Karuk", map = 114, x = 47.1, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11864, title = "A Mission Statement", npc = 25809, npcName = "Arch Druid Lathorius", map = 114, x = 57.0, y = 44.3, f = "e" },
					{ t = "accept", quest = 11866, title = "Ears of Our Enemies", npc = 25809, npcName = "Arch Druid Lathorius", map = 114, x = 57.0, y = 44.3, f = "e" },
					{ t = "accept", quest = 11876, title = "Help Those That Cannot Help Themselves", npc = 25809, npcName = "Arch Druid Lathorius", map = 114, x = 57.0, y = 44.3, f = "e" },
				},
			},
		},
	})
end

