-- TuWoW_Leveling — Guides/Leveling_Alliance_22.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-35-40-part-2",
		pack = "guides",
		title = "Levels (35-40) (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 37,
		maxLevel = 40,
		zone = 1441,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", target = "Syndicate mobs", count = 1, map = 1416, x = 62.3, y = 45.4, f = "e" },
					{ t = "collect", quest = 512, itemName = "Alterac Signet Ring", count = 7, oi = 1, map = 1416, x = 62.3, y = 45.4, f = "e" },
				},
			},
			{
				note = "Hearth to Southshore|goto Hillsbrad Foothills,51.2,58.9,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 500, title = "Crushridge Bounty", npc = 2263, npcName = "Marshal Redpath", map = 1424, x = 49.5, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 512, title = "Noble Deaths", npc = 2276, npcName = "Magistrate Henry Maleb", map = 1424, x = 48.1, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 691, title = "Worth Its Weight in Gold", npc = 2788, npcName = "Apprentice Kryten", map = 1417, x = 46.2, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 642, title = "The Princess Trapped", map = 1417, x = 62.5, y = 33.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1417, x = 80.9, y = 39.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "kobolds", count = 1, map = 1417, x = 82.8, y = 36.0, f = "e" },
					{ t = "collect", quest = 642, itemName = "Mote of Myzrael", count = 12, oi = 1, map = 1417, x = 82.8, y = 36.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 642, title = "The Princess Trapped", map = 1417, x = 84.3, y = 30.9, f = "e" },
					{ t = "accept", quest = 651, title = "Stones of Binding", map = 1417, x = 84.3, y = 30.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 38, f = "e" },
				},
			},
			{
				note = "Go outside to 66.7,29.7",
				goals = {
					{ t = "collect", quest = 651, itemName = "Cresting Key", count = 1, oi = 2, map = 1417, x = 66.7, y = 29.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Witherbark trolls", count = 1, map = 1417, x = 71.7, y = 62.9, f = "e" },
					{ t = "collect", quest = 691, itemName = "Witherbark Tusk", count = 10, oi = 1, map = 1417, x = 71.7, y = 62.9, f = "e" },
					{ t = "kill", target = "Witherbark Witch Doctors", count = 1, map = 1417, x = 71.7, y = 62.9, f = "e" },
					{ t = "collect", quest = 691, itemName = "Witherbark Medicine Pouch", count = 4, oi = 2, map = 1417, x = 71.7, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Witherbark Shadow Hunters", count = 1, map = 1417, x = 68.3, y = 75.1, f = "e" },
					{ t = "collect", quest = 691, itemName = "Shadow Hunter Knife", count = 1, oi = 3, map = 1417, x = 68.3, y = 75.1, f = "e" },
				},
			},
			{
				note = "Go outside to 60.2,53.9",
				goals = {
					{ t = "turnin", quest = 659, title = "Hints of a New Plague? (1)", npc = 2712, npcName = "Quae", map = 1417, x = 60.2, y = 53.9, f = "e" },
					{ t = "accept", quest = 658, title = "Hints of a New Plague? (2)", npc = 2712, npcName = "Quae", map = 1417, x = 60.2, y = 53.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 651, itemName = "Thundering Key", count = 1, oi = 3, map = 1417, x = 52.0, y = 50.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 691, title = "Worth Its Weight in Gold", npc = 2788, npcName = "Apprentice Kryten", map = 1417, x = 46.2, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 693, title = "Wand over Fist", npc = 2789, npcName = "Skuerto", map = 1417, x = 46.6, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 693, itemName = "Trelane's Wand of Invocation", count = 1, oi = 1, map = 1417, x = 54.8, y = 81.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 693, title = "Wand over Fist", npc = 2789, npcName = "Skuerto", map = 1417, x = 46.6, y = 47.0, f = "e" },
					{ t = "accept", quest = 694, title = "Trelane's Defenses", npc = 2789, npcName = "Skuerto", map = 1417, x = 46.6, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 684, title = "Wanted!  Marez Cowl", map = 1417, x = 46.0, y = 47.7, f = "e" },
					{ t = "accept", quest = 685, title = "Wanted!  Otto and Falconcrest", map = 1417, x = 46.0, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 682, title = "Stromgarde Badges", npc = 2700, npcName = "Captain Nials", map = 1417, x = 45.8, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 651, itemName = "Burning Key", count = 1, oi = 1, map = 1417, x = 25.5, y = 30.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Syndicate mobs", count = 1, map = 1417, x = 26.1, y = 59.8, f = "e" },
					{ t = "collect", quest = 682, itemName = "Stromgarde Badge", count = 7, oi = 1, map = 1417, x = 26.1, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 684, itemName = "Marez's Head", count = 1, oi = 1, map = 1417, x = 29.6, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 685, itemName = "Otto's Head", count = 1, oi = 1, map = 1417, x = 26.0, y = 65.5, f = "e" },
					{ t = "collect", quest = 685, itemName = "Falconcrest's Head", count = 1, oi = 2, map = 1417, x = 26.0, y = 65.5, f = "e" },
				},
			},
			{
				note = "Go outside to 24.4,61.2|n",
				goals = {
					{ t = "goto", map = 1417, x = 24.4, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Boulderfist Shamans", count = 1, map = 1417, x = 21.7, y = 66.9, f = "e" },
					{ t = "collect", quest = 694, itemName = "Azure Agate", count = 1, oi = 1, map = 1417, x = 21.7, y = 66.9, f = "e" },
				},
			},
			{
				note = "Go outside Stromgarde to 36.2,57.3",
				goals = {
					{ t = "turnin", quest = 651, title = "Stones of Binding", map = 1417, x = 36.2, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1417, x = 31.5, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 663, title = "Land Ho!", npc = 2766, npcName = "Lolo the Lookout", map = 1417, x = 31.8, y = 82.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 663, title = "Land Ho!", npc = 2610, npcName = "Shakes O'Breen", map = 1417, x = 32.3, y = 81.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 662, title = "Deep Sea Salvage", npc = 2767, npcName = "First Mate Nilzlix", map = 1417, x = 32.7, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 664, title = "Drowned Sorrows", npc = 2769, npcName = "Captain Steelgut", map = 1417, x = 33.9, y = 80.6, f = "e" },
					{ t = "accept", quest = 665, title = "Sunken Treasure (1)", npc = 2768, npcName = "Professor Phizzlethorpe", map = 1417, x = 33.9, y = 80.6, f = "e" },
					{ t = "turnin", quest = 665, title = "Sunken Treasure (1)", npc = 2774, npcName = "Doctor Draxlegauge", map = 1417, x = 33.9, y = 80.6, f = "e" },
					{ t = "accept", quest = 666, title = "Sunken Treasure (2)", npc = 2774, npcName = "Doctor Draxlegauge", map = 1417, x = 33.9, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 662, itemName = "Maiden's Folly Log", count = 1, oi = 2, map = 1417, x = 23.5, y = 85.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 662, itemName = "Maiden's Folly Charts", count = 1, oi = 1, map = 1417, x = 23.1, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 662, itemName = "Spirit of Silverpine Charts", count = 1, oi = 3, map = 1417, x = 20.5, y = 85.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 662, itemName = "Spirit of Silverpine Log", count = 1, oi = 4, map = 1417, x = 20.6, y = 85.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 666, itemName = "Elven Gem", count = 10, oi = 1, map = 1417, x = 22.4, y = 83.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 664, target = "Daggerspine Raider", count = 10, oi = 1, map = 1417, x = 25.3, y = 85.2, f = "e" },
					{ t = "kill", quest = 664, target = "Daggerspine Sorceress", count = 3, oi = 2, map = 1417, x = 25.3, y = 85.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 662, title = "Deep Sea Salvage", npc = 2767, npcName = "First Mate Nilzlix", map = 1417, x = 32.7, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 666, title = "Sunken Treasure (2)", npc = 2774, npcName = "Doctor Draxlegauge", map = 1417, x = 33.9, y = 80.6, f = "e" },
					{ t = "accept", quest = 668, title = "Sunken Treasure (3)", npc = 2774, npcName = "Doctor Draxlegauge", map = 1417, x = 33.9, y = 80.6, f = "e" },
					{ t = "turnin", quest = 664, title = "Drowned Sorrows", npc = 2769, npcName = "Captain Steelgut", map = 1417, x = 33.9, y = 80.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 668, title = "Sunken Treasure (3)", npc = 2610, npcName = "Shakes O'Breen", map = 1417, x = 32.3, y = 81.4, f = "e" },
					{ t = "accept", quest = 669, title = "Sunken Treasure (4)", npc = 2610, npcName = "Shakes O'Breen", map = 1417, x = 32.3, y = 81.4, f = "e" },
				},
			},
			{
				note = "If you haven't killed the Forsaken Courier for 'Hints of a New Plague?' (2), do it now",
				goals = {
					{ t = "collect", quest = 658, itemName = "Sealed Folder", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 682, title = "Stromgarde Badges", npc = 2700, npcName = "Captain Nials", map = 1417, x = 45.8, y = 47.6, f = "e" },
					{ t = "turnin", quest = 684, title = "Wanted!  Marez Cowl", npc = 2700, npcName = "Captain Nials", map = 1417, x = 45.8, y = 47.6, f = "e" },
					{ t = "turnin", quest = 685, title = "Wanted!  Otto and Falconcrest", npc = 2700, npcName = "Captain Nials", map = 1417, x = 45.8, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 694, title = "Trelane's Defenses", npc = 2788, npcName = "Apprentice Kryten", map = 1417, x = 46.2, y = 47.8, f = "e" },
					{ t = "accept", quest = 695, title = "An Apprentice's Enchantment", npc = 2788, npcName = "Apprentice Kryten", map = 1417, x = 46.2, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 695, title = "An Apprentice's Enchantment", npc = 2789, npcName = "Skuerto", map = 1417, x = 46.6, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 39, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 658, title = "Hints of a New Plague? (2)", npc = 2712, npcName = "Quae", map = 1417, x = 60.2, y = 53.9, f = "e" },
					{ t = "accept", quest = 657, title = "Hints of a New Plague? (3)", npc = 2712, npcName = "Quae", map = 1417, x = 60.2, y = 53.9, f = "e" },
					{ t = "turnin", quest = 657, title = "Hints of a New Plague? (3)", npc = 2713, npcName = "Kinelory", map = 1417, x = 60.2, y = 53.9, f = "e" },
					{ t = "accept", quest = 660, title = "Hints of a New Plague? (4)", npc = 2713, npcName = "Kinelory", map = 1417, x = 60.2, y = 53.9, f = "e" },
					{ t = "turnin", quest = 660, title = "Hints of a New Plague? (4)", npc = 2712, npcName = "Quae", map = 1417, x = 60.2, y = 53.9, f = "e" },
					{ t = "accept", quest = 661, title = "Hints of a New Plague? (5)", npc = 2712, npcName = "Quae", map = 1417, x = 60.2, y = 53.9, f = "e" },
				},
			},
			{
				note = "Hearth to Southshore|goto Hillsbrad Foothills,51.2,58.9,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 661, title = "Hints of a New Plague? (5)", npc = 2711, npcName = "Phin Odelic", map = 1424, x = 50.3, y = 59.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11191, title = "This Old Lighthouse", npc = 23835, npcName = "Sergeant Amelyn", map = 1445, x = 67.9, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11126, title = "Traitors Among Us", npc = 23566, npcName = "Calia Hastings", map = 1445, x = 68.3, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 23602, npcName = "5 Deserter Agitator", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11214, title = "Mission to Mudsprocket", npc = 23951, npcName = "Lieutenant Aden", map = 1445, x = 65.1, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1282, title = "They Call Him Smiling Jim", npc = 4921, npcName = "Guard Byron", map = 1445, x = 66.2, y = 46.1, f = "e" },
					{ t = "accept", quest = 11212, title = "Tabetha's Farm", npc = 4921, npcName = "Guard Byron", map = 1445, x = 66.2, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Theramore", text = "Theramore", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1204, title = "Mudrock Soup and Bugs", npc = 4794, npcName = "Morgan Stern", map = 1445, x = 66.3, y = 45.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1302, title = "James Hyal", npc = 5083, npcName = "Clerk Lendry", map = 1445, x = 67.9, y = 48.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1282, title = "They Call Him Smiling Jim", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
					{ t = "accept", quest = 11123, title = "Inspecting the Ruins", npc = 4944, npcName = "Captain Garran Vimes", map = 1445, x = 68.2, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11126, title = "Traitors Among Us", npc = 23566, npcName = "Calia Hastings", map = 1445, x = 68.3, y = 51.0, f = "e" },
					{ t = "accept", quest = 11128, title = "Propaganda War", npc = 23566, npcName = "Calia Hastings", map = 1445, x = 68.3, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11128, itemName = "Deserter Propaganda", count = 1, oi = 1, map = 1445, x = 67.9, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11128, title = "Propaganda War", npc = 23566, npcName = "Calia Hastings", map = 1445, x = 68.3, y = 51.0, f = "e" },
					{ t = "accept", quest = 11133, title = "Discrediting the Deserters", npc = 23566, npcName = "Calia Hastings", map = 1445, x = 68.3, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 4979, npcName = "6 Theramore Guard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11133, title = "Discrediting the Deserters", npc = 23566, npcName = "Calia Hastings", map = 1445, x = 68.3, y = 51.0, f = "e" },
					{ t = "accept", quest = 11134, title = "The End of the Deserters", npc = 23566, npcName = "Calia Hastings", map = 1445, x = 68.3, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1445, x = 76.2, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11134, title = "The End of the Deserters", npc = 23566, npcName = "Calia Hastings", map = 1445, x = 68.3, y = 51.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11177, title = "The Hermit of Swamplight Manor", npc = 23835, npcName = "Sergeant Amelyn", map = 1445, x = 68.3, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11191, title = "This Old Lighthouse", npc = 23892, npcName = "Babs Fizzletorque", map = 1445, x = 72.0, y = 47.1, f = "e" },
					{ t = "accept", quest = 11192, title = "Thresher Oil", npc = 23892, npcName = "Babs Fizzletorque", map = 1445, x = 72.0, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Young Murk Threshers", count = 1, map = 1445, x = 72.0, y = 50.0, f = "e" },
					{ t = "collect", quest = 11192, itemName = "Thresher Oil", count = 4, oi = 1, map = 1445, x = 72.0, y = 50.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11192, title = "Thresher Oil", npc = 23892, npcName = "Babs Fizzletorque", map = 1445, x = 72.0, y = 47.1, f = "e" },
					{ t = "accept", quest = 11193, title = "Dastardly Denizens of the Deep", npc = 23892, npcName = "Babs Fizzletorque", map = 1445, x = 72.0, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11193, title = "Dastardly Denizens of the Deep", npc = 23896, npcName = "\"Dirty\" Michael Crowe", map = 1445, x = 69.1, y = 52.1, f = "e" },
					{ t = "accept", quest = 11194, title = "Is it Real?", npc = 23896, npcName = "\"Dirty\" Michael Crowe", map = 1445, x = 69.1, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11136, title = "A Disturbing Development", npc = 23951, npcName = "Lieutenant Aden", map = 1445, x = 65.1, y = 47.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11136, title = "A Disturbing Development", npc = 5086, npcName = "Captain Wymor", map = 1445, x = 59.8, y = 41.1, f = "e" },
					{ t = "accept", quest = 11137, title = "Defias in Dustwallow?", npc = 5086, npcName = "Captain Wymor", map = 1445, x = 59.8, y = 41.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "turtles", count = 1, map = 1445, x = 64.7, y = 41.3, f = "e" },
					{ t = "collect", quest = 1204, itemName = "Forked Mudrock Tongue", count = 8, oi = 1, map = 1445, x = 64.7, y = 41.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11137, itemName = "Defias Orders", count = 1, oi = 1, map = 1445, x = 64.0, y = 30.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11137, title = "Defias in Dustwallow?", npc = 5086, npcName = "Captain Wymor", map = 1445, x = 59.8, y = 41.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11177, title = "The Hermit of Swamplight Manor", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.4, y = 26.3, f = "e" },
					{ t = "accept", quest = 1218, title = "Marsh Frog Legs", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.4, y = 26.3, f = "e" },
					{ t = "accept", quest = 11180, title = "What's Haunting Witch Hill?", npc = 23843, npcName = "Mordant Grimsby", map = 1445, x = 55.4, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 1219, title = "The Orc Report", map = 1445, x = 55.4, y = 25.9, f = "e" },
				},
			},
			{
				note = "Kill Giant Marsh Frogs around \"Swamp Eye\" Jarl's house",
				goals = {
					{ t = "collect", quest = 1218, itemName = "Marsh Frog Leg", count = 10, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1218, title = "Marsh Frog Legs", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.4, y = 26.3, f = "e" },
					{ t = "accept", quest = 1206, title = "Jarl Needs Eyes", npc = 4792, npcName = "\"Swamp Eye\" Jarl", map = 1445, x = 55.4, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Risen Husks", count = 1, map = 1445, x = 55.0, y = 31.0, f = "e" },
					{ t = "kill", target = "Risen Spirits", count = 1, map = 1445, x = 55.0, y = 31.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11180, title = "What's Haunting Witch Hill?", npc = 23843, npcName = "Mordant Grimsby", map = 1445, x = 55.4, y = 26.3, f = "e" },
					{ t = "accept", quest = 11181, title = "The Witch's Bane", npc = 23843, npcName = "Mordant Grimsby", map = 1445, x = 55.4, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11181, itemName = "Witchbane", count = 9, oi = 1, map = 1445, x = 56.0, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11181, title = "The Witch's Bane", npc = 23843, npcName = "Mordant Grimsby", map = 1445, x = 55.4, y = 26.3, f = "e" },
					{ t = "accept", quest = 11183, title = "Cleansing Witch Hill", npc = 23843, npcName = "Mordant Grimsby", map = 1445, x = 55.4, y = 26.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 40, f = "e" },
				},
			},
		},
	})
end

