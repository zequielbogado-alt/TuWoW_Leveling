-- TuWoW_Leveling — Guides/Leveling_Horde_34.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-outland-64-66-part-2",
		pack = "guides",
		title = "Outland (64-66) (Parte 2/2)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 64,
		maxLevel = 66,
		zone = 1946,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", quest = 10914, target = "Auchenai Initiate", count = 12, oi = 1, map = 1952, x = 36.7, y = 74.4, f = "e" },
					{ t = "kill", quest = 10914, target = "Auchenai Doomsayer", count = 5, oi = 2, map = 1952, x = 36.7, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10914, title = "A Hero Is Needed", npc = 22446, npcName = "Commander Ra'vaj", map = 1952, x = 31.0, y = 76.1, f = "e" },
					{ t = "accept", quest = 10915, title = "The Fallen Exarch", npc = 22446, npcName = "Commander Ra'vaj", map = 1952, x = 31.0, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 35.9, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10915, title = "The Fallen Exarch", npc = 22446, npcName = "Commander Ra'vaj", map = 1952, x = 31.0, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10861, title = "Veil Lithic: Preemptive Strike", npc = 22272, npcName = "Kirrik the Awakened", map = 1952, x = 37.4, y = 51.5, f = "e" },
					{ t = "accept", quest = 10874, title = "Veil Shalas: Signal Fires", npc = 22272, npcName = "Kirrik the Awakened", map = 1952, x = 37.4, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10840, title = "The Tomb of Lights", npc = 22278, npcName = "High Priest Orglum", map = 1952, x = 37.5, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10840, target = "Ethereal Nethermancer", count = 10, oi = 1, map = 1952, x = 46.3, y = 56.5, f = "e" },
					{ t = "kill", quest = 10840, target = "Ethereal Plunderer", count = 10, oi = 2, map = 1952, x = 46.3, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 54.9, y = 66.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 57.3, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 55.2, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 57.0, y = 71.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 55.5, y = 69.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 56.0, y = 72.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 56.1, y = 72.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 56.7, y = 69.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10874, title = "Veil Shalas: Signal Fires", npc = 22272, npcName = "Kirrik the Awakened", map = 1952, x = 37.4, y = 51.5, f = "e" },
					{ t = "accept", quest = 10889, title = "Return to Shattrath", npc = 22272, npcName = "Kirrik the Awakened", map = 1952, x = 37.4, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10840, title = "The Tomb of Lights", npc = 22278, npcName = "High Priest Orglum", map = 1952, x = 37.5, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 51.1, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10018, title = "Vestments of the Wolf Spirit", npc = 18384, npcName = "Malukaz", map = 1952, x = 50.2, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9993, title = "Olemba Seed Oil", npc = 18385, npcName = "Rakoria", map = 1952, x = 50.1, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10034, title = "Wanted: Bonelashers Dead!", map = 1952, x = 49.8, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9796, title = "News from Zangarmarsh", npc = 18249, npcName = "Mokasa", map = 1952, x = 49.7, y = 43.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Stonebreaker Hold", map = 1952, x = 49.2, y = 43.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9987, title = "Stymying the Arakkoa", npc = 18386, npcName = "Rokag", map = 1952, x = 49.0, y = 44.6, f = "e" },
					{ t = "accept", quest = 10039, title = "Speak with Scout Neftis", npc = 18712, npcName = "Advisor Faila", map = 1952, x = 49.0, y = 44.6, f = "e" },
					{ t = "accept", quest = 10868, title = "Arakkoa War Path", npc = 18712, npcName = "Advisor Faila", map = 1952, x = 49.0, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10000, title = "An Unwelcome Presence", npc = 18383, npcName = "Kurgatok", map = 1952, x = 48.8, y = 45.7, f = "e" },
					{ t = "accept", quest = 10027, title = "Magical Disturbances", npc = 18383, npcName = "Kurgatok", map = 1952, x = 48.8, y = 45.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Stonebreaker Hold", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10112, title = "A Personal Favor", npc = 18484, npcName = "Wind Trader Lathrai", map = 1955, x = 72.2, y = 30.7, f = "e" },
					{ t = "accept", quest = 9990, title = "Investigate Tuurem", npc = 18484, npcName = "Wind Trader Lathrai", map = 1955, x = 72.2, y = 30.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10889, title = "Return to Shattrath", npc = 22292, npcName = "Rilak the Redeemed", map = 1955, x = 52.6, y = 21.0, f = "e" },
					{ t = "accept", quest = 10879, title = "The Skettis Offensive", npc = 22373, npcName = "Defender Grashna", map = 1955, x = 52.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1955, x = 52.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10879, title = "The Skettis Offensive", npc = 22292, npcName = "Rilak the Redeemed", map = 1955, x = 52.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10034, target = "Bonelasher", count = 20, oi = 1, map = 1952, x = 41.6, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9993, itemName = "Olemba Seed", count = 30, oi = 1, map = 1952, x = 34.9, y = 42.8, f = "e" },
					{ t = "kill", quest = 10027, target = "Warp Stalker", count = 10, oi = 1, map = 1952, x = 34.9, y = 42.8, f = "e" },
					{ t = "collect", quest = 10018, itemName = "Timber Worg Pelt", count = 12, oi = 1, map = 1952, x = 34.9, y = 42.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 29.9, y = 42.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9987, target = "Urdak", count = 1, oi = 3, map = 1952, x = 31.4, y = 42.5, f = "e" },
				},
			},
			{
				note = "She puts an orc disguise on you|havebuff Shadowy Disguise",
				goals = {
					{ t = "turnin", quest = 10039, title = "Speak with Scout Neftis", npc = 18714, npcName = "Scout Neftis", map = 1952, x = 39.0, y = 43.7, f = "e" },
					{ t = "accept", quest = 10041, title = "Who Are They?", npc = 18714, npcName = "Scout Neftis", map = 1952, x = 39.0, y = 43.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 40.3, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 39.0, y = 39.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 38.4, y = 39.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10041, title = "Who Are They?", npc = 18714, npcName = "Scout Neftis", map = 1952, x = 39.0, y = 43.7, f = "e" },
					{ t = "accept", quest = 10043, title = "Kill the Shadow Council!", npc = 18714, npcName = "Scout Neftis", map = 1952, x = 39.0, y = 43.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10043, target = "Shadowmaster Grieve", count = 1, oi = 3, map = 1952, x = 40.3, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10043, target = "Shadowy Executioner", count = 10, oi = 1, map = 1952, x = 39.8, y = 40.8, f = "e" },
					{ t = "kill", quest = 10043, target = "Shadowy Summoner", count = 10, oi = 2, map = 1952, x = 39.8, y = 40.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9990, itemName = "Sealed Box", count = 1, oi = 1, map = 1952, x = 54.0, y = 30.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9990, title = "Investigate Tuurem", npc = 18446, npcName = "Earthbinder Tavgren", map = 1952, x = 44.3, y = 26.3, f = "e" },
					{ t = "accept", quest = 9995, title = "What Are These Things?", npc = 18446, npcName = "Earthbinder Tavgren", map = 1952, x = 44.3, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 49.9, y = 16.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9987, target = "Ashkaz", count = 1, oi = 1, map = 1952, x = 49.1, y = 16.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10868, target = "Shienor Talonite", count = 14, oi = 1, map = 1952, x = 48.9, y = 17.3, f = "e" },
					{ t = "kill", quest = 10868, target = "Shienor Sorcerer", count = 6, oi = 2, map = 1952, x = 48.9, y = 17.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9987, target = "Ayit", count = 1, oi = 2, map = 1952, x = 59.4, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10000, target = "Warped Peon", count = 12, oi = 1, map = 1952, x = 65.5, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10000, title = "An Unwelcome Presence", npc = 18566, npcName = "Shadowstalker Kaide", map = 1952, x = 63.4, y = 42.7, f = "e" },
					{ t = "accept", quest = 10003, title = "The Firewing Liaison", npc = 18566, npcName = "Shadowstalker Kaide", map = 1952, x = 63.4, y = 42.7, f = "e" },
					{ t = "accept", quest = 10008, title = "What Happens in Terokkar Stays in Terokkar", npc = 18566, npcName = "Shadowstalker Kaide", map = 1952, x = 63.4, y = 42.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10003, target = "Lisaile Fireweaver", count = 1, oi = 1, map = 1952, x = 68.0, y = 53.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10013, title = "An Unseen Hand", map = 1952, x = 67.9, y = 53.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10008, target = "Bonechewer Devastator", count = 10, oi = 1, map = 1952, x = 69.1, y = 53.0, f = "e" },
					{ t = "kill", quest = 10008, target = "Bonechewer Backbreaker", count = 6, oi = 2, map = 1952, x = 69.1, y = 53.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10003, title = "The Firewing Liaison", npc = 18566, npcName = "Shadowstalker Kaide", map = 1952, x = 63.4, y = 42.7, f = "e" },
					{ t = "turnin", quest = 10008, title = "What Happens in Terokkar Stays in Terokkar", npc = 18566, npcName = "Shadowstalker Kaide", map = 1952, x = 63.4, y = 42.7, f = "e" },
				},
			},
			{
				note = "Hearth to Stonebreaker Hold|goto Terokkar Forest,49.2,45.3,2.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10043, title = "Kill the Shadow Council!", npc = 18712, npcName = "Advisor Faila", map = 1952, x = 49.0, y = 44.6, f = "e" },
					{ t = "turnin", quest = 10868, title = "Arakkoa War Path", npc = 18712, npcName = "Advisor Faila", map = 1952, x = 49.0, y = 44.6, f = "e" },
					{ t = "turnin", quest = 9987, title = "Stymying the Arakkoa", npc = 18386, npcName = "Rokag", map = 1952, x = 49.0, y = 44.6, f = "e" },
					{ t = "turnin", quest = 10013, title = "An Unseen Hand", npc = 18386, npcName = "Rokag", map = 1952, x = 49.0, y = 44.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10027, title = "Magical Disturbances", npc = 18383, npcName = "Kurgatok", map = 1952, x = 48.8, y = 45.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10034, title = "Wanted: Bonelashers Dead!", npc = 18705, npcName = "Mawg Grimshot", map = 1952, x = 49.3, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10018, title = "Vestments of the Wolf Spirit", npc = 18384, npcName = "Malukaz", map = 1952, x = 50.2, y = 46.4, f = "e" },
					{ t = "accept", quest = 10023, title = "Patriarch Ironjaw", npc = 18384, npcName = "Malukaz", map = 1952, x = 50.2, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9995, title = "What Are These Things?", npc = 18447, npcName = "Tooki", map = 1952, x = 50.0, y = 45.9, f = "e" },
					{ t = "accept", quest = 10448, title = "Report to Stonebreaker Camp", npc = 18447, npcName = "Tooki", map = 1952, x = 50.0, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9993, title = "Olemba Seed Oil", npc = 18385, npcName = "Rakoria", map = 1952, x = 50.1, y = 44.9, f = "e" },
					{ t = "accept", quest = 10201, title = "And Now, the Moment of Truth", npc = 18385, npcName = "Rakoria", map = 1952, x = 50.1, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 19606, npcName = "Grek", map = 1952, x = 49.8, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10201, title = "And Now, the Moment of Truth", npc = 18385, npcName = "Rakoria", map = 1952, x = 50.1, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 66, f = "e" },
				},
			},
		},
	})
end

