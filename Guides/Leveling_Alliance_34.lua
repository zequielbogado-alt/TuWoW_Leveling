-- TuWoW_Leveling — Guides/Leveling_Alliance_34.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-64-66-part-2",
		pack = "guides",
		title = "Levels (64-66) (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-66-68",
		author = "TuWoW & Zygor",
		minLevel = 64,
		maxLevel = 66,
		zone = 1946,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 10874, title = "Veil Shalas: Signal Fires", npc = 22272, npcName = "Kirrik the Awakened", map = 1952, x = 37.4, y = 51.5, f = "e" },
					{ t = "accept", quest = 10889, title = "Return to Shattrath", npc = 22272, npcName = "Kirrik the Awakened", map = 1952, x = 37.4, y = 51.5, f = "e" },
					{ t = "turnin", quest = 10840, title = "The Tomb of Lights", npc = 22278, npcName = "High Priest Orglum", map = 1952, x = 37.4, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10033, title = "Wanted: Bonelashers Dead!", map = 1952, x = 57.6, y = 54.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9992, title = "Olemba Seeds", npc = 18390, npcName = "Ros'eleth", map = 1952, x = 57.4, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10038, title = "Speak with Private Weeks", npc = 18713, npcName = "Lieutenant Gravelhammer", map = 1952, x = 57.5, y = 55.8, f = "e" },
					{ t = "accept", quest = 10869, title = "Thin the Flock", npc = 18713, npcName = "Lieutenant Gravelhammer", map = 1952, x = 57.5, y = 55.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9986, title = "Stymying the Arakkoa", npc = 18389, npcName = "Thander", map = 1952, x = 57.8, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9998, title = "Unruly Neighbors", npc = 18387, npcName = "Bertelm", map = 1952, x = 58.3, y = 54.8, f = "e" },
					{ t = "accept", quest = 10016, title = "Timber Worg Tails", npc = 18387, npcName = "Bertelm", map = 1952, x = 58.3, y = 54.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9793, title = "The Fate of Tuurem", npc = 18252, npcName = "Andarl", map = 1952, x = 58.5, y = 53.6, f = "e" },
					{ t = "accept", quest = 10026, title = "Magical Disturbances", npc = 18252, npcName = "Andarl", map = 1952, x = 58.5, y = 53.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Allerian Stronghold", f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Allerian Stronghold", map = 1952, x = 59.4, y = 55.4, f = "e" },
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
					{ t = "turnin", quest = 10325, title = "Marks of Kil'jaeden", npc = 18537, npcName = "Adyen the Lightwarden", map = 1955, x = 30.7, y = 34.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10033, target = "Bonelasher", count = 20, oi = 1, map = 1952, x = 41.6, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9992, itemName = "Olemba Seed", count = 30, oi = 1, map = 1952, x = 34.9, y = 42.8, f = "e" },
					{ t = "kill", quest = 10026, target = "Warp Stalker", count = 10, oi = 1, map = 1952, x = 34.9, y = 42.8, f = "e" },
					{ t = "collect", quest = 10016, itemName = "Timber Worg Tail", count = 12, oi = 1, map = 1952, x = 34.9, y = 42.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 30.1, y = 42.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9986, npc = 18541, target = "Urdak", count = 1, oi = 3, map = 1952, x = 31.4, y = 42.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10038, title = "Speak with Private Weeks", npc = 18715, npcName = "Private Weeks", map = 1952, x = 40.5, y = 36.2, f = "e" },
					{ t = "accept", quest = 10040, title = "Who Are They?", npc = 18715, npcName = "Private Weeks", map = 1952, x = 40.5, y = 36.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 18719, npcName = "Shadowy Advisor", map = 1952, x = 40.3, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 18716, npcName = "Shadowy Initiate", map = 1952, x = 39.0, y = 39.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 18717, npcName = "Shadowy Laborer", map = 1952, x = 38.4, y = 39.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10040, title = "Who Are They?", npc = 18715, npcName = "Private Weeks", map = 1952, x = 40.5, y = 36.2, f = "e" },
					{ t = "accept", quest = 10042, title = "Kill the Shadow Council!", npc = 18715, npcName = "Private Weeks", map = 1952, x = 40.5, y = 36.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10042, npc = 18720, target = "Shadowmaster Grieve", count = 1, oi = 3, map = 1952, x = 40.3, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10042, target = "Shadowy Executioner", count = 10, oi = 1, map = 1952, x = 39.8, y = 40.8, f = "e" },
					{ t = "kill", quest = 10042, target = "Shadowy Summoner", count = 10, oi = 2, map = 1952, x = 39.8, y = 40.8, f = "e" },
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
					{ t = "accept", quest = 9994, title = "What Are These Things?", npc = 18446, npcName = "Earthbinder Tavgren", map = 1952, x = 44.3, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 49.9, y = 16.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9986, npc = 18539, target = "Ashkaz", count = 1, oi = 1, map = 1952, x = 49.1, y = 16.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10869, target = "Shienor Talonite", count = 14, oi = 1, map = 1952, x = 48.9, y = 17.3, f = "e" },
					{ t = "kill", quest = 10869, target = "Shienor Sorcerer", count = 6, oi = 2, map = 1952, x = 48.9, y = 17.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9986, npc = 18540, target = "Ayit", count = 1, oi = 2, map = 1952, x = 59.4, y = 23.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9998, target = "Warped Peon", count = 12, oi = 1, map = 1952, x = 65.5, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9998, title = "Unruly Neighbors", npc = 18565, npcName = "Theloria Shadecloak", map = 1952, x = 69.7, y = 44.2, f = "e" },
					{ t = "accept", quest = 10002, title = "The Firewing Liaison", npc = 18565, npcName = "Theloria Shadecloak", map = 1952, x = 69.7, y = 44.2, f = "e" },
					{ t = "accept", quest = 10007, title = "Thinning the Ranks", npc = 18565, npcName = "Theloria Shadecloak", map = 1952, x = 69.7, y = 44.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10002, npc = 18583, target = "Lisaile Fireweaver", count = 1, oi = 1, map = 1952, x = 68.0, y = 53.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10012, title = "Fel Orc Plans", map = 1952, x = 67.9, y = 53.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10007, target = "Bonechewer Devastator", count = 10, oi = 1, map = 1952, x = 66.3, y = 55.0, f = "e" },
					{ t = "kill", quest = 10007, target = "Bonechewer Backbreaker", count = 6, oi = 2, map = 1952, x = 66.3, y = 55.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10002, title = "The Firewing Liaison", npc = 18565, npcName = "Theloria Shadecloak", map = 1952, x = 69.7, y = 44.2, f = "e" },
					{ t = "turnin", quest = 10007, title = "Thinning the Ranks", npc = 18565, npcName = "Theloria Shadecloak", map = 1952, x = 69.7, y = 44.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9994, title = "What Are These Things?", npc = 18459, npcName = "Jenai Starwhisper", map = 1952, x = 57.0, y = 53.5, f = "e" },
					{ t = "accept", quest = 10444, title = "Report to the Allerian Post", npc = 18459, npcName = "Jenai Starwhisper", map = 1952, x = 57.0, y = 53.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9992, title = "Olemba Seeds", npc = 18390, npcName = "Ros'eleth", map = 1952, x = 57.4, y = 55.4, f = "e" },
					{ t = "accept", quest = 10028, title = "Vessels of Power", npc = 18390, npcName = "Ros'eleth", map = 1952, x = 57.4, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10042, title = "Kill the Shadow Council!", npc = 18713, npcName = "Lieutenant Gravelhammer", map = 1952, x = 57.5, y = 55.8, f = "e" },
					{ t = "turnin", quest = 10869, title = "Thin the Flock", npc = 18713, npcName = "Lieutenant Gravelhammer", map = 1952, x = 57.5, y = 55.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9986, title = "Stymying the Arakkoa", npc = 18389, npcName = "Thander", map = 1952, x = 57.8, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10016, title = "Timber Worg Tails", npc = 18387, npcName = "Bertelm", map = 1952, x = 58.3, y = 54.8, f = "e" },
					{ t = "accept", quest = 10022, title = "The Elusive Ironjaw", npc = 18387, npcName = "Bertelm", map = 1952, x = 58.3, y = 54.8, f = "e" },
					{ t = "turnin", quest = 10012, title = "Fel Orc Plans", npc = 18387, npcName = "Bertelm", map = 1952, x = 58.3, y = 54.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10026, title = "Magical Disturbances", npc = 18252, npcName = "Andarl", map = 1952, x = 58.5, y = 53.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10033, title = "Wanted: Bonelashers Dead!", npc = 18704, npcName = "Taela Everstride", map = 1952, x = 58.1, y = 53.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10444, title = "Report to the Allerian Post", npc = 21006, npcName = "Lieutenant Meridian", map = 1952, x = 69.7, y = 44.2, f = "e" },
					{ t = "accept", quest = 9996, title = "Attack on Firewing Point", npc = 21006, npcName = "Lieutenant Meridian", map = 1952, x = 69.7, y = 44.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10022, itemName = "Ironjaw's Pelt", count = 1, oi = 1, map = 1952, x = 66.3, y = 34.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9996, target = "Firewing Defender", count = 10, oi = 1, map = 1952, x = 68.1, y = 36.5, f = "e" },
					{ t = "kill", quest = 9996, target = "Firewing Bloodwarder", count = 10, oi = 2, map = 1952, x = 68.1, y = 36.5, f = "e" },
					{ t = "kill", quest = 9996, target = "Firewing Warlock", count = 10, oi = 3, map = 1952, x = 68.1, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10051, title = "Escape from Firewing Point!", npc = 18760, npcName = "Isla Starmane", map = 1952, x = 73.9, y = 35.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10028, itemName = "Draenei Vessel", count = 8, oi = 1, map = 1952, x = 54.1, y = 32.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10028, title = "Vessels of Power", npc = 18390, npcName = "Ros'eleth", map = 1952, x = 57.4, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10051, title = "Escape from Firewing Point!", npc = 18745, npcName = "Captain Auric Sunchaser", map = 1952, x = 57.2, y = 55.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10022, title = "The Elusive Ironjaw", npc = 18387, npcName = "Bertelm", map = 1952, x = 58.3, y = 54.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9996, title = "Attack on Firewing Point", npc = 21006, npcName = "Lieutenant Meridian", map = 1952, x = 69.7, y = 44.2, f = "e" },
					{ t = "accept", quest = 10446, title = "The Final Code", npc = 21006, npcName = "Lieutenant Meridian", map = 1952, x = 69.7, y = 44.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 73.3, y = 34.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10446, item = 29912, itemName = "The Final Code", count = 1, map = 1952, x = 73.9, y = 35.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 74.2, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 71.3, y = 37.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10446, title = "The Final Code", npc = 18459, npcName = "Jenai Starwhisper", map = 1952, x = 57.0, y = 53.5, f = "e" },
					{ t = "accept", quest = 10005, title = "Letting Earthbinder Tavgren Know", npc = 18459, npcName = "Jenai Starwhisper", map = 1952, x = 57.0, y = 53.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10005, title = "Letting Earthbinder Tavgren Know", npc = 18446, npcName = "Earthbinder Tavgren", map = 1952, x = 44.3, y = 26.3, f = "e" },
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

