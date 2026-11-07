-- TuWoW_Leveling — Guides/Leveling_Alliance_33.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-64-66",
		pack = "guides",
		title = "Levels (64-66) (Parte 1/2)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-64-66-part-2",
		author = "TuWoW & Zygor",
		minLevel = 64,
		maxLevel = 66,
		zone = 1946,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", quest = 9905, target = "Mragesh", count = 1, oi = 1, map = 1946, x = 42.2, y = 41.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9709, title = "Stealing Back the Mushrooms", npc = 17831, npcName = "Watcher Leesa'oh", map = 1946, x = 23.3, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9905, title = "Maktu's Revenge", npc = 18010, npcName = "Maktu", map = 1946, x = 41.6, y = 27.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9786, title = "The Boha'mu Ruins", npc = 18003, npcName = "Anchorite Ahuurn", map = 1946, x = 68.2, y = 49.4, f = "e" },
					{ t = "accept", quest = 9787, title = "Idols of the Feralfen", npc = 18003, npcName = "Anchorite Ahuurn", map = 1946, x = 68.2, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9896, title = "Blacksting's Bane", npc = 18295, npcName = "Prospector Conall", map = 1946, x = 68.6, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9787, itemName = "Feralfen Idol", count = 6, oi = 1, map = 1946, x = 49.3, y = 60.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9787, title = "Idols of the Feralfen", npc = 18003, npcName = "Anchorite Ahuurn", map = 1946, x = 68.2, y = 49.4, f = "e" },
					{ t = "accept", quest = 9801, title = "Gathering the Reagents", npc = 18003, npcName = "Anchorite Ahuurn", map = 1946, x = 68.2, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Spore Bats", count = 1, map = 1946, x = 63.3, y = 52.1, f = "e" },
					{ t = "collect", quest = 9801, itemName = "Sporebat Eye", count = 4, oi = 1, map = 1946, x = 63.3, y = 52.1, f = "e" },
					{ t = "kill", target = "Fen Striders", count = 1, map = 1946, x = 63.3, y = 52.1, f = "e" },
					{ t = "collect", quest = 9801, itemName = "Fen Strider Tentacle", count = 4, oi = 2, map = 1946, x = 63.3, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9801, title = "Gathering the Reagents", npc = 18003, npcName = "Anchorite Ahuurn", map = 1946, x = 68.2, y = 49.4, f = "e" },
					{ t = "accept", quest = 9803, title = "Messenger to the Feralfen", npc = 18003, npcName = "Anchorite Ahuurn", map = 1946, x = 68.2, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 18197, npcName = "Elder Kuruti", map = 1946, x = 44.6, y = 66.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9803, title = "Messenger to the Feralfen", npc = 18003, npcName = "Anchorite Ahuurn", map = 1946, x = 68.2, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9720, title = "Balance Must Be Preserved", npc = 17841, npcName = "Ysiel Windsinger", map = 1946, x = 78.4, y = 62.0, f = "e" },
					{ t = "turnin", quest = 9731, title = "Drain Schematics", npc = 17841, npcName = "Ysiel Windsinger", map = 1946, x = 78.4, y = 62.0, f = "e" },
					{ t = "accept", quest = 9724, title = "Warning the Cenarion Circle", npc = 17841, npcName = "Ysiel Windsinger", map = 1946, x = 78.4, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9724, title = "Warning the Cenarion Circle", npc = 16885, npcName = "Amythiel Mistwalker", map = 1944, x = 15.7, y = 52.0, f = "e" },
					{ t = "accept", quest = 9732, title = "Return to the Marsh", npc = 16885, npcName = "Amythiel Mistwalker", map = 1944, x = 15.7, y = 52.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9732, title = "Return to the Marsh", npc = 17841, npcName = "Ysiel Windsinger", map = 1946, x = 78.4, y = 62.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10210, title = "A'dal", npc = 19684, npcName = "the Haggard War Veteran", map = 1955, x = 61.2, y = 12.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10210, title = "A'dal", npc = 18481, npcName = "A'dal", map = 1955, x = 54.0, y = 44.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10211, title = "City of Light", npc = 18166, npcName = "Khadgar", map = 1955, x = 54.8, y = 44.3, f = "e" },
				},
			},
			{
				note = "As you follow the pink voidwalker, go to 64.0,15.5|",
				goals = {
					{ t = "accept", quest = 10037, title = "Rather Be Fishin'", npc = 18653, npcName = "Seth", map = 1955, x = 64.0, y = 15.5, f = "e" },
				},
			},
			{
				note = "As you follow the pink voidwalker, go to 52.6,21.0",
				goals = {
					{ t = "accept", quest = 10847, title = "The Eyes of Skettis", npc = 22292, npcName = "Rilak the Redeemed", map = 1955, x = 52.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10211, title = "City of Light", npc = 18166, npcName = "Khadgar", map = 1955, x = 54.8, y = 44.3, f = "e" },
					{ t = "accept", quest = 10551, title = "Allegiance to the Aldor", npc = 18166, npcName = "Khadgar", map = 1955, x = 54.8, y = 44.3, f = "e" },
					{ t = "accept", quest = 10554, title = "Ishanah", npc = 18166, npcName = "Khadgar", map = 1955, x = 54.8, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10325, title = "Marks of Kil'jaeden", npc = 18537, npcName = "Adyen the Lightwarden", map = 1955, x = 30.7, y = 34.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10554, title = "Ishanah", npc = 18538, npcName = "Ishanah", map = 1955, x = 24.0, y = 29.7, f = "e" },
					{ t = "accept", quest = 10021, title = "Restoring the Light", npc = 18538, npcName = "Ishanah", map = 1955, x = 24.0, y = 29.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Shattrath City", text = "Shattrath City", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Shimmerscale Eels", count = 1, map = 1952, x = 38.6, y = 8.5, f = "e" },
					{ t = "collect", quest = 10037, itemName = "Pristine Shimmerscale Eel", count = 8, oi = 1, map = 1952, x = 38.6, y = 8.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9957, title = "What's Wrong at Cenarion Thicket?", npc = 18446, npcName = "Earthbinder Tavgren", map = 1952, x = 44.3, y = 26.3, f = "e" },
					{ t = "accept", quest = 9968, title = "Strange Energy", npc = 18446, npcName = "Earthbinder Tavgren", map = 1952, x = 44.3, y = 26.3, f = "e" },
					{ t = "accept", quest = 9971, title = "Clues in the Thicket", npc = 18446, npcName = "Earthbinder Tavgren", map = 1952, x = 44.3, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9951, title = "It's Watching You!", npc = 18424, npcName = "Warden Treelos", map = 1952, x = 45.0, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 45.1, y = 21.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9971, title = "Clues in the Thicket", npc = 18446, npcName = "Earthbinder Tavgren", map = 1952, x = 44.3, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 9951, target = "Naphthal'ar", count = 1, oi = 1, map = 1952, x = 43.4, y = 22.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9951, title = "It's Watching You!", npc = 18424, npcName = "Warden Treelos", map = 1952, x = 45.0, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Vicious Teromoths", count = 1, map = 1952, x = 44.1, y = 23.8, f = "e" },
					{ t = "collect", quest = 9968, itemName = "Vicious Teromoth Sample", count = 4, oi = 2, map = 1952, x = 44.1, y = 23.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Teromoths", count = 1, map = 1952, x = 45.8, y = 29.8, f = "e" },
					{ t = "collect", quest = 9968, itemName = "Teromoth Sample", count = 4, oi = 1, map = 1952, x = 45.8, y = 29.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9968, title = "Strange Energy", npc = 18446, npcName = "Earthbinder Tavgren", map = 1952, x = 44.3, y = 26.3, f = "e" },
					{ t = "accept", quest = 9978, title = "By Any Means Necessary", npc = 18446, npcName = "Earthbinder Tavgren", map = 1952, x = 44.3, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9978, title = "By Any Means Necessary", npc = 18482, npcName = "Empoor", map = 1952, x = 47.1, y = 27.0, f = "e" },
					{ t = "accept", quest = 9979, title = "Wind Trader Lathrai", npc = 18482, npcName = "Empoor", map = 1952, x = 47.1, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 49.2, y = 20.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 49.9, y = 16.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10847, itemName = "Eye of Veil Reskk", count = 1, oi = 1, map = 1952, x = 50.1, y = 19.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 50.7, y = 16.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 48.1, y = 14.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10847, itemName = "Eye of Veil Shienor", count = 1, oi = 2, map = 1952, x = 57.9, y = 23.2, f = "e" },
				},
			},
			{
				note = "Hearth to Shattrath City|goto Shattrath City|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10021, title = "Restoring the Light", npc = 18538, npcName = "Ishanah", map = 1955, x = 24.0, y = 29.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10847, title = "The Eyes of Skettis", npc = 22292, npcName = "Rilak the Redeemed", map = 1955, x = 52.6, y = 21.0, f = "e" },
					{ t = "accept", quest = 10849, title = "Seek Out Kirrik", npc = 22292, npcName = "Rilak the Redeemed", map = 1955, x = 52.6, y = 21.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10037, title = "Rather Be Fishin'", npc = 18653, npcName = "Seth", map = 1955, x = 64.0, y = 15.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9979, title = "Wind Trader Lathrai", npc = 18484, npcName = "Wind Trader Lathrai", map = 1955, x = 72.2, y = 30.7, f = "e" },
					{ t = "accept", quest = 10112, title = "A Personal Favor", npc = 18484, npcName = "Wind Trader Lathrai", map = 1955, x = 72.2, y = 30.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10849, title = "Seek Out Kirrik", npc = 22272, npcName = "Kirrik the Awakened", map = 1952, x = 37.4, y = 51.5, f = "e" },
					{ t = "accept", quest = 10839, title = "Veil Skith: Darkstone of Terokk", npc = 22272, npcName = "Kirrik the Awakened", map = 1952, x = 37.4, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10852, title = "Missing Friends", npc = 22365, npcName = "Ethan", map = 1952, x = 37.7, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10878, title = "Before Darkness Falls", npc = 22370, npcName = "Mekeda", map = 1952, x = 37.4, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10896, title = "The Infested Protectors", npc = 22420, npcName = "Lakotae", map = 1952, x = 37.9, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Infested Root-walkers", count = 1, map = 1952, x = 35.2, y = 48.8, f = "e" },
					{ t = "kill", target = "the Wood Mites that come out of their corpses", count = 1, map = 1952, x = 35.2, y = 48.8, f = "e" },
					{ t = "kill", quest = 10896, target = "Wood Mite", count = 25, oi = 1, map = 1952, x = 35.2, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10878, target = "Cabal Skirmisher", count = 8, oi = 1, map = 1952, x = 32.2, y = 52.8, f = "e" },
					{ t = "kill", target = "Cabal orcs", count = 1, map = 1952, x = 32.2, y = 52.8, f = "e" },
					{ t = "collect", quest = 10325, itemName = "Mark of Kil'jaeden", count = 10, oi = 1, map = 1952, x = 32.2, y = 52.8, f = "e" },
					{ t = "collect", itemName = "Cabal Orders", count = 1, map = 1952, x = 32.2, y = 52.8, f = "e" },
					{ t = "accept", quest = 10880, title = "Cabal Orders", map = 1952, x = 32.2, y = 52.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10880, title = "Cabal Orders", npc = 22370, npcName = "Mekeda", map = 1952, x = 37.4, y = 51.2, f = "e" },
					{ t = "accept", quest = 10881, title = "The Shadow Tomb", npc = 22370, npcName = "Mekeda", map = 1952, x = 37.4, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10896, title = "The Infested Protectors", npc = 22420, npcName = "Lakotae", map = 1952, x = 37.9, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10878, target = "Cabal Spell-weaver", count = 4, oi = 2, map = 1952, x = 39.4, y = 55.1, f = "e" },
					{ t = "kill", quest = 10878, target = "Cabal Initiate", count = 2, oi = 3, map = 1952, x = 39.4, y = 55.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10878, title = "Before Darkness Falls", npc = 22370, npcName = "Mekeda", map = 1952, x = 37.4, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10881, itemName = "Gavel of K'alen", count = 1, oi = 2, map = 1952, x = 29.7, y = 51.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10881, itemName = "Drape of Arunen", count = 1, oi = 1, map = 1952, x = 32.1, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10881, itemName = "Scroll of Atalor", count = 1, oi = 3, map = 1952, x = 31.2, y = 46.7, f = "e" },
				},
			},
			{
				note = "Go outside to 37.4,51.2",
				goals = {
					{ t = "turnin", quest = 10881, title = "The Shadow Tomb", npc = 22370, npcName = "Mekeda", map = 1952, x = 37.4, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "arakkoas", count = 1, map = 1952, x = 32.3, y = 41.7, f = "e" },
					{ t = "collect", quest = 10112, itemName = "Lathrai's Stolen Goods", count = 5, oi = 1, map = 1952, x = 32.3, y = 41.7, f = "e" },
					{ t = "collect", itemName = "Veil Skith Prison Keys", count = 1, map = 1952, x = 32.3, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 30.8, y = 42.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10839, title = "Veil Skith: Darkstone of Terokk", npc = 22272, npcName = "Kirrik the Awakened", map = 1952, x = 37.4, y = 51.5, f = "e" },
					{ t = "accept", quest = 10848, title = "Veil Rhaze: Unliving Evil", npc = 22272, npcName = "Kirrik the Awakened", map = 1952, x = 37.4, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10852, title = "Missing Friends", npc = 22365, npcName = "Ethan", map = 1952, x = 37.7, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10848, target = "Deathtalon Spirit", count = 4, oi = 1, map = 1952, x = 30.2, y = 51.1, f = "e" },
					{ t = "kill", quest = 10848, target = "Screeching Spirit", count = 4, oi = 2, map = 1952, x = 30.2, y = 51.1, f = "e" },
					{ t = "kill", quest = 10848, target = "Spirit Raven", count = 2, oi = 3, map = 1952, x = 30.2, y = 51.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10848, title = "Veil Rhaze: Unliving Evil", npc = 22272, npcName = "Kirrik the Awakened", map = 1952, x = 37.4, y = 51.5, f = "e" },
					{ t = "accept", quest = 10861, title = "Veil Lithic: Preemptive Strike", npc = 22272, npcName = "Kirrik the Awakened", map = 1952, x = 37.4, y = 51.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10861, target = "Malevolent Hatchling", count = 3, oi = 2, map = 1952, x = 24.2, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10913, title = "An Improper Burial", npc = 22446, npcName = "Commander Ra'vaj", map = 1952, x = 31.0, y = 76.1, f = "e" },
					{ t = "accept", quest = 10922, title = "Digging Through Bones", npc = 22458, npcName = "Chief Archaeologist Letoll", map = 1952, x = 31.0, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10922, title = "Digging Through Bones", npc = 22481, npcName = "Dwarfowitz", map = 1952, x = 31.0, y = 76.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1952, x = 35.0, y = 76.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10913, title = "An Improper Burial", npc = 22446, npcName = "Commander Ra'vaj", map = 1952, x = 31.0, y = 76.1, f = "e" },
					{ t = "accept", quest = 10914, title = "A Hero Is Needed", npc = 22446, npcName = "Commander Ra'vaj", map = 1952, x = 31.0, y = 76.1, f = "e" },
				},
			},
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
					{ t = "level", level = 65, f = "e" },
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
					{ t = "goto", map = 1952, x = 54.9, y = 66.0, f = "e" },
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
		},
	})
end

