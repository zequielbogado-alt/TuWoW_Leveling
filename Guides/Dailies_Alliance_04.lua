-- TuWoW_Leveling — Guides/Dailies_Alliance_04.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-icecrown-icecrown-full-zone-quest-path-includes-regular-dailies-pre-q-part-2",
		pack = "guides",
		title = "Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) (Parte 2/4)",
		category = "Dailies",
		folder = "Icecrown",
		faction = "Alliance",
		next = "zygor/dailies/a-dai-icecrown-icecrown-full-zone-quest-path-includes-regular-dailies-pre-q-part-3",
		author = "TuWoW & Zygor",
		zone = 118,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "talk", npc = 31304, npcName = "Dying Soldier", map = 118, x = 68.8, y = 67.2, f = "e" },
				},
			},
			{
				note = "The Skybreaker flies in a circular pattern using these points:",
				goals = {
					{ t = "talk", npc = 30824, npcName = "High Captain Justin Bartlett", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13286, title = "...All the Help We Can Get.", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "accept", quest = 13287, title = "Poke and Prod", npc = 29799, npcName = "Thassarian", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13336, title = "Blood of the Chosen", npc = 32302, npcName = "Knight-Captain Drosche", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13300, title = "Slaves to Saronite", npc = 31259, npcName = "Absalan the Pious", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13290, title = "Your Attention, Please", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
					{ t = "accept", quest = 13291, title = "Borrowed Technology", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13291, item = 43616, itemName = "Abandoned Armor", count = 3, map = 118, x = 69.9, y = 64.3, f = "e" },
					{ t = "collect", quest = 13291, item = 43610, itemName = "Abandoned Helm", count = 3, map = 118, x = 69.9, y = 64.3, f = "e" },
					{ t = "collect", quest = 13291, item = 43609, itemName = "Pile of Bones", count = 3, map = 118, x = 69.9, y = 64.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 68.8, y = 67.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 68.8, y = 66.6, f = "e" },
				},
			},
			{
				note = "The Skybreaker flies in a circular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 13287, title = "Poke and Prod", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "accept", quest = 13288, title = "That's Abominable!", npc = 29799, npcName = "Thassarian", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13291, title = "Borrowed Technology", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
					{ t = "accept", quest = 13383, title = "Killohertz", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Chilled Abomination Guts", count = 1, map = 118, x = 69.8, y = 62.9, f = "e" },
				},
			},
			{
				note = "The Skybreaker flies in a circular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 13288, title = "That's Abominable!", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "accept", quest = 13315, title = "Sneak Preview", npc = 29799, npcName = "Thassarian", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 55.1, y = 43.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 54.7, y = 38.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 57.5, y = 35.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 51.3, y = 35.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13383, title = "Killohertz", npc = 32444, npcName = "Kibli Killohertz", map = 118, x = 54.0, y = 42.9, f = "e" },
					{ t = "accept", quest = 13380, title = "Leading the Charge", npc = 32444, npcName = "Kibli Killohertz", map = 118, x = 54.0, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 31648, npcName = "Karen No", map = 118, x = 54.0, y = 43.1, f = "e" },
				},
			},
			{
				note = "You fly off in an airplane:",
				goals = {
					{ t = "kill", quest = 13380, target = "Gargoyle Ambusher", count = 15, oi = 3, f = "e" },
					{ t = "kill", quest = 13380, target = "Bombardment Infantry", count = 40, oi = 1, f = "e" },
					{ t = "kill", quest = 13380, target = "Bombardment Captain", count = 8, oi = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13380, title = "Leading the Charge", npc = 32444, npcName = "Kibli Killohertz", map = 118, x = 54.0, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 44.3, y = 21.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12887, title = "It's All Fun and Games", npc = 12887, npcName = "Baron Sliver", map = 118, x = 44.1, y = 24.7, f = "e" },
					{ t = "accept", quest = 12891, title = "I Have and Idea, But First...", npc = 12887, npcName = "Baron Sliver", map = 118, x = 44.1, y = 24.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12891, itemName = "Cultist Rod", count = 1, oi = 1, map = 118, x = 43.7, y = 24.8, f = "e" },
					{ t = "collect", quest = 12891, itemName = "Abomination Hook", count = 1, oi = 2, map = 118, x = 43.7, y = 24.8, f = "e" },
					{ t = "collect", quest = 12891, itemName = "Geist Rope", count = 1, oi = 3, map = 118, x = 43.7, y = 24.8, f = "e" },
					{ t = "collect", quest = 12891, itemName = "Scourge Essence", count = 5, oi = 4, map = 118, x = 43.7, y = 24.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12891, title = "I Have and Idea, But First...", npc = 29804, npcName = "Baron Sliver", map = 118, x = 44.1, y = 24.7, f = "e" },
					{ t = "accept", quest = 12893, title = "Free Your Mind", npc = 29804, npcName = "Baron Sliver", map = 118, x = 44.1, y = 24.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 43.4, y = 19.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 44.4, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 41.8, y = 24.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12893, title = "Free Your Mind", npc = 29804, npcName = "Baron Sliver", map = 118, x = 44.1, y = 24.7, f = "e" },
					{ t = "accept", quest = 12896, title = "If He Cannot Be Turned", npc = 29804, npcName = "Baron Sliver", map = 118, x = 44.1, y = 24.7, f = "e" },
				},
			},
			{
				note = "The entrance to the Shadow Vault starts here,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 43.7, y = 23.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12896, target = "General Lightsbane", count = 1, oi = 1, map = 118, x = 44.9, y = 19.9, f = "e" },
				},
			},
			{
				note = "Leave the Shadow Vault,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 43.7, y = 23.6, f = "e" },
				},
			},
			{
				note = "The Skybreaker flies in a circular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 12896, title = "If He Cannot Be Turned", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "accept", quest = 12898, title = "The Shadow Vault", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "turnin", quest = 13315, title = "Sneak Preview", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "accept", quest = 13318, title = "Drag and Drop", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "accept", quest = 13319, title = "Chain of Command", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "accept", quest = 13320, title = "Cannot Reproduce", npc = 29799, npcName = "Thassarian", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 53.9, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13318, itemName = "Orb of Illusion", count = 3, map = 118, x = 53.9, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 54.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 54.7, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 53.7, y = 29.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 49.7, y = 34.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 34.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 49.0, y = 33.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 49.4, y = 31.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12898, title = "The Shadow Vault", npc = 29343, npcName = "Baron Sliver", map = 118, x = 42.8, y = 24.9, f = "e" },
					{ t = "accept", quest = 12938, title = "The Duke", npc = 29343, npcName = "Baron Sliver", map = 118, x = 42.8, y = 24.9, f = "e" },
					{ t = "accept", quest = 13106, title = "Blackwatch", npc = 29343, npcName = "Baron Sliver", map = 118, x = 42.8, y = 24.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "The Shadow Vault", map = 118, x = 43.7, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "The Shadow Vault", map = 118, x = 44.0, y = 22.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12938, title = "The Duke", npc = 30002, npcName = "Duke Lankral", map = 118, x = 44.7, y = 20.3, f = "e" },
					{ t = "accept", quest = 12939, title = "Honor Challenge", npc = 30002, npcName = "Duke Lankral", map = 118, x = 44.7, y = 20.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12955, title = "Eliminate the Competition", npc = 30074, npcName = "The Leaper", map = 118, x = 43.6, y = 24.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30081, npcName = "Efrem the Faithful", map = 118, x = 37.9, y = 25.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30162, npcName = "Tinky Wickwhistle", map = 118, x = 36.1, y = 23.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 37.5, y = 24.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30086, npcName = "Sigrid Iceborn", map = 118, x = 37.1, y = 22.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30180, npcName = "Onu'zun", map = 118, x = 37.9, y = 22.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 32.4, y = 24.2, f = "e" },
				},
			},
			{
				note = "Hearth to The Shadow Vault|goto Icecrown,44.0,22.2,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12939, title = "Honor Challenge", npc = 30002, npcName = "Duke Lankral", map = 118, x = 44.7, y = 20.3, f = "e" },
					{ t = "accept", quest = 12943, title = "Shadow Vault Decree", npc = 30002, npcName = "Duke Lankral", map = 118, x = 44.7, y = 20.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13069, title = "Shoot 'Em Up", npc = 30074, npcName = "The Leaper", map = 118, x = 43.6, y = 24.7, f = "e" },
					{ t = "turnin", quest = 12955, title = "Eliminate the Competition", npc = 30074, npcName = "The Leaper", map = 118, x = 43.6, y = 24.7, f = "e" },
					{ t = "accept", quest = 12999, title = "The Bone Witch", npc = 30074, npcName = "The Leaper", map = 118, x = 43.6, y = 24.7, f = "e" },
				},
			},
			{
				note = "The entrance to the Ufrang's Hall starts here,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 38.8, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12949, title = "Get the Key", npc = 30056, npcName = "Vaelen the Flayed", map = 118, x = 41.0, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12943, target = "Thane Ulfrang the Mighty", count = 1, oi = 1, map = 118, x = 40.3, y = 23.9, f = "e" },
				},
			},
			{
				note = "Leave Ufrang's Hall,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 38.8, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12949, itemName = "Key to Vaelan's Chains", count = 1, oi = 1, map = 118, x = 36.5, y = 23.6, f = "e" },
				},
			},
			{
				note = "The entrance to the Ufrang's Hall starts here,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 38.8, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12949, title = "Get the Key", npc = 30056, npcName = "Vaelen the Flayed", map = 118, x = 41.0, y = 23.9, f = "e" },
					{ t = "accept", quest = 12951, title = "Let the Baron Know", npc = 30056, npcName = "Vaelen the Flayed", map = 118, x = 41.0, y = 23.9, f = "e" },
				},
			},
			{
				note = "Leave Ufrang's Hall,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 38.8, y = 24.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12951, title = "Let the Baron Know", npc = 29343, npcName = "Baron Sliver", map = 118, x = 42.8, y = 24.9, f = "e" },
					{ t = "accept", quest = 12995, title = "Leave Our Mark", npc = 29343, npcName = "Baron Sliver", map = 118, x = 42.8, y = 24.9, f = "e" },
					{ t = "accept", quest = 13085, title = "Vaelen Has Returned", npc = 29343, npcName = "Baron Sliver", map = 118, x = 42.8, y = 24.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12992, title = "Crush Dem Vrykuls!", npc = 30216, npcName = "Vile", map = 118, x = 43.3, y = 24.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13085, title = "Vaelen Has Returned", npc = 30218, npcName = "Vaelen the Flayed", map = 118, x = 43.1, y = 21.1, f = "e" },
					{ t = "accept", quest = 12982, title = "Ebon Blade Prisoners", npc = 30218, npcName = "Vaelen the Flayed", map = 118, x = 43.1, y = 21.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12943, title = "Shadow Vault Decree", npc = 30002, npcName = "Duke Lankral", map = 118, x = 44.7, y = 20.3, f = "e" },
					{ t = "accept", quest = 13084, title = "Vandalizing Jotunheim", npc = 30002, npcName = "Duke Lankral", map = 118, x = 44.7, y = 20.3, f = "e" },
				},
			},
			{
				note = "The Skybreaker flies in a circular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 13318, title = "Drag and Drop", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "turnin", quest = 13319, title = "Chain of Command", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "accept", quest = 13386, title = "Exploiting an Opening", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "accept", quest = 13342, title = "Not a Bug", npc = 29799, npcName = "Thassarian", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13320, title = "Cannot Reproduce", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
					{ t = "accept", quest = 13321, title = "Retest Now", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 44301, itemName = "Tainted Essence", count = 10, map = 118, x = 55.2, y = 29.1, f = "e" },
					{ t = "collect", quest = 13321, item = 44304, itemName = "Writhing Mass", count = 1, map = 118, x = 55.2, y = 29.1, f = "e" },
					{ t = "collect", quest = 13342, item = 44434, itemName = "Dark Matter", count = 5, map = 118, x = 55.2, y = 29.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 53.8, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 118, x = 49.1, y = 34.2, f = "e" },
				},
			},
			{
				note = "The Skybreaker flies in a circular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 13342, title = "Not a Bug", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "accept", quest = 13345, title = "Need More Info", npc = 29799, npcName = "Thassarian", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13321, title = "Retest Now", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 44459, itemName = "Cult of the Damned Research - Page 1", count = 1, map = 118, x = 51.9, y = 30.8, f = "e" },
					{ t = "collect", item = 44460, itemName = "Cult of the Damned Research - Page 2", count = 1, map = 118, x = 51.9, y = 30.8, f = "e" },
					{ t = "collect", item = 44461, itemName = "Cult of the Damned Research - Page 3", count = 1, map = 118, x = 51.9, y = 30.8, f = "e" },
					{ t = "collect", quest = 13345, item = 44462, itemName = "Cult of the Damned Thesis", count = 1, oi = 1, map = 118, x = 51.9, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12992, target = "Jotunheim vrykul", count = 15, oi = 1, map = 118, x = 33.0, y = 28.1, f = "e" },
					{ t = "collect", quest = 13092, item = 43089, itemName = "Vrykul Bones", count = 15, map = 118, x = 33.0, y = 28.1, f = "e" },
					{ t = "collect", quest = 12982, item = 42422, itemName = "Jotunheim Cage Key", count = 8, map = 118, x = 33.0, y = 28.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12999, title = "The Bone Witch", npc = 30232, npcName = "The Bone Witch", map = 118, x = 32.5, y = 42.9, f = "e" },
					{ t = "accept", quest = 13092, title = "Reading the Bones", npc = 30232, npcName = "The Bone Witch", map = 118, x = 32.5, y = 42.9, f = "e" },
					{ t = "turnin", quest = 13092, title = "Reading the Bones", npc = 30232, npcName = "The Bone Witch", map = 118, x = 32.5, y = 42.9, f = "e" },
					{ t = "accept", quest = 13042, title = "Deep in the Bowels of the Underhalls", npc = 30232, npcName = "The Bone Witch", map = 118, x = 32.5, y = 42.9, f = "e" },
				},
			},
			{
				note = "The entrance to The Underhalls starts here,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 32.6, y = 32.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13059, title = "Revenge for the Vargul", npc = 30406, npcName = "Bethod Feigr", map = 118, x = 36.1, y = 33.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13059, target = "Thane Illskar", count = 1, oi = 2, map = 118, x = 33.1, y = 37.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13042, npc = 30409, target = "Apprentice Osterkilgr", count = 1, oi = 2, map = 118, x = 34.0, y = 36.3, f = "e" },
					{ t = "collect", item = 42772, itemName = "Dr. Terrible's \"Building a Better Flesh Giant\"", count = 1, map = 118, x = 34.0, y = 36.3, f = "e" },
					{ t = "accept", quest = 13043, title = "The Sum is Greater than the Parts", map = 118, x = 34.0, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13043, target = "Dr. Terrible", count = 1, map = 118, x = 33.4, y = 33.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13059, title = "Revenge for the Vargul", npc = 30406, npcName = "Bethod Feigr", map = 118, x = 36.1, y = 33.0, f = "e" },
				},
			},
			{
				note = "Leave The Underhalls,0.3|c",
				goals = {
					{ t = "goto", map = 118, x = 32.6, y = 32.1, f = "e" },
				},
			},
		},
	})
end

