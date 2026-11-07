-- TuWoW_Leveling — Guides/Leveling_Alliance_18.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-25-30-part-2",
		pack = "guides",
		title = "Levels (25-30) (Parte 2/2)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 27,
		maxLevel = 30,
		zone = 1437,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 173, title = "Worgen in the Woods (1)", npc = 663, npcName = "Calor", map = 1431, x = 75.7, y = 47.6, f = "e" },
					{ t = "accept", quest = 221, title = "Worgen in the Woods (2)", npc = 663, npcName = "Calor", map = 1431, x = 75.7, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 221, target = "Nightbane Dark Runner", count = 12, oi = 1, map = 1431, x = 66.0, y = 47.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 221, title = "Worgen in the Woods (2)", npc = 663, npcName = "Calor", map = 1431, x = 75.7, y = 47.6, f = "e" },
					{ t = "accept", quest = 222, title = "Worgen in the Woods (3)", npc = 663, npcName = "Calor", map = 1431, x = 75.7, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 28, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 175, title = "Look To The Stars (2)", npc = 302, npcName = "Blind Mary", map = 1431, x = 81.9, y = 59.2, f = "e" },
					{ t = "accept", quest = 177, title = "Look To The Stars (3)", npc = 302, npcName = "Blind Mary", map = 1431, x = 81.9, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 56, target = "Skeletal Warrior", count = 8, oi = 1, map = 1431, x = 79.3, y = 70.3, f = "e" },
					{ t = "kill", quest = 56, target = "Skeletal Mage", count = 6, oi = 2, map = 1431, x = 79.3, y = 70.3, f = "e" },
					{ t = "collect", quest = 101, itemName = "Skeleton Finger", count = 10, oi = 3, map = 1431, x = 79.3, y = 70.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 177, itemName = "Mary's Looking Glass", count = 1, oi = 1, map = 1431, x = 80.9, y = 71.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 222, target = "Nightbane Vile Fang", count = 8, oi = 1, map = 1431, x = 72.7, y = 69.7, f = "e" },
					{ t = "kill", quest = 222, target = "Nightbane Tainted One", count = 8, oi = 2, map = 1431, x = 72.7, y = 69.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 56, title = "The Night Watch (1)", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.5, y = 46.8, f = "e" },
					{ t = "accept", quest = 57, title = "The Night Watch (2)", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.5, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 222, title = "Worgen in the Woods (3)", npc = 663, npcName = "Calor", map = 1431, x = 75.7, y = 47.6, f = "e" },
					{ t = "accept", quest = 223, title = "Worgen in the Woods (4)", npc = 663, npcName = "Calor", map = 1431, x = 75.7, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 223, title = "Worgen in the Woods (4)", npc = 661, npcName = "Jonathan Carevin", map = 1431, x = 75.3, y = 48.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 177, title = "Look To The Stars (3)", npc = 276, npcName = "Viktori Prism'Antras", map = 1431, x = 79.8, y = 48.1, f = "e" },
					{ t = "accept", quest = 181, title = "Look To The Stars (4)", npc = 276, npcName = "Viktori Prism'Antras", map = 1431, x = 79.8, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 181, itemName = "Ogre's Monocle", count = 1, oi = 1, map = 1431, x = 36.1, y = 80.6, f = "e" },
				},
			},
			{
				note = "Go outside to 18.2,56.6",
				goals = {
					{ t = "turnin", quest = 163, title = "Raven Hill", npc = 288, npcName = "Jitters", map = 1431, x = 18.2, y = 56.6, f = "e" },
					{ t = "accept", quest = 5, title = "Jitters' Growling Gut", npc = 288, npcName = "Jitters", map = 1431, x = 18.2, y = 56.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 57, target = "Skeletal Fiend", count = 15, oi = 1, map = 1431, x = 17.6, y = 47.2, f = "e" },
					{ t = "kill", quest = 57, target = "Skeletal Horror", count = 15, oi = 2, map = 1431, x = 17.6, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 101, itemName = "Vial of Spider Venom", count = 5, oi = 2, map = 1431, x = 27.2, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 101, itemName = "Ghoul Fang", count = 10, oi = 1, map = 1431, x = 23.5, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 165, title = "The Hermit", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.0, y = 31.5, f = "e" },
					{ t = "accept", quest = 148, title = "Supplies from Darkshire", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.0, y = 31.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 225, title = "The Weathered Grave", map = 1431, x = 17.7, y = 29.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 164, title = "Deliveries to Sven", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.8, y = 34.2, f = "e" },
					{ t = "accept", quest = 95, title = "Sven's Revenge", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.8, y = 34.2, f = "e" },
				},
			},
			{
				note = "Hearth to Darkshire|goto Duskwood,73.9,44.5,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5, title = "Jitters' Growling Gut", npc = 272, npcName = "Chef Grual", map = 1431, x = 73.8, y = 43.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 57, title = "The Night Watch (2)", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.5, y = 46.8, f = "e" },
					{ t = "accept", quest = 58, title = "The Night Watch (3)", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.5, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 225, title = "The Weathered Grave", npc = 268, npcName = "Sirra Von'Indi", map = 1431, x = 72.6, y = 47.7, f = "e" },
					{ t = "accept", quest = 227, title = "Morgan Ladimore", npc = 268, npcName = "Sirra Von'Indi", map = 1431, x = 72.6, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 227, title = "Morgan Ladimore", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.5, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 101, title = "The Totem of Infliction", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.8, y = 45.3, f = "e" },
					{ t = "turnin", quest = 148, title = "Supplies from Darkshire", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.8, y = 45.3, f = "e" },
					{ t = "accept", quest = 149, title = "Ghost Hair Thread", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.8, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 181, title = "Look To The Stars (4)", npc = 276, npcName = "Viktori Prism'Antras", map = 1431, x = 79.8, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 149, title = "Ghost Hair Thread", npc = 302, npcName = "Blind Mary", map = 1431, x = 81.9, y = 59.2, f = "e" },
					{ t = "accept", quest = 154, title = "Return the Comb", npc = 302, npcName = "Blind Mary", map = 1431, x = 81.9, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 154, title = "Return the Comb", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.8, y = 45.3, f = "e" },
					{ t = "accept", quest = 157, title = "Deliver the Thread", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.8, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 95, title = "Sven's Revenge", map = 1431, x = 49.9, y = 77.7, f = "e" },
					{ t = "accept", quest = 230, title = "Sven's Camp", map = 1431, x = 49.9, y = 77.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 157, title = "Deliver the Thread", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.0, y = 31.5, f = "e" },
					{ t = "accept", quest = 158, title = "Zombie Juice", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.0, y = 31.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 58, target = "Plague Spreader", count = 20, oi = 1, map = 1431, x = 24.1, y = 32.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 230, title = "Sven's Camp", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.8, y = 34.2, f = "e" },
					{ t = "accept", quest = 262, title = "The Shadowy Figure", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.8, y = 34.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 262, title = "The Shadowy Figure", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.8, y = 45.3, f = "e" },
					{ t = "accept", quest = 265, title = "The Shadowy Search Continues", npc = 265, npcName = "Madame Eva", map = 1431, x = 75.8, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 58, title = "The Night Watch (3)", npc = 264, npcName = "Commander Althea Ebonlocke", map = 1431, x = 73.5, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 265, title = "The Shadowy Search Continues", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.5, y = 46.8, f = "e" },
					{ t = "accept", quest = 266, title = "Inquire at the Inn", npc = 267, npcName = "Clerk Daltry", map = 1431, x = 72.5, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 266, title = "Inquire at the Inn", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 74.1, y = 44.7, f = "e" },
					{ t = "accept", quest = 453, title = "Finding the Shadowy Figure", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 74.1, y = 44.7, f = "e" },
					{ t = "turnin", quest = 158, title = "Zombie Juice", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 74.1, y = 44.7, f = "e" },
					{ t = "accept", quest = 156, title = "Gather Rot Blossoms", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 74.1, y = 44.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 453, title = "Finding the Shadowy Figure", npc = 288, npcName = "Jitters", map = 1431, x = 18.2, y = 56.6, f = "e" },
					{ t = "accept", quest = 268, title = "Return to Sven", npc = 288, npcName = "Jitters", map = 1431, x = 18.2, y = 56.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 268, title = "Return to Sven", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.8, y = 34.2, f = "e" },
					{ t = "accept", quest = 323, title = "Proving Your Worth", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.8, y = 34.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 323, target = "Skeletal Raider", count = 15, oi = 1, map = 1431, x = 15.3, y = 37.6, f = "e" },
					{ t = "kill", quest = 323, target = "Skeletal Healer", count = 3, oi = 2, map = 1431, x = 15.3, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 323, target = "Skeletal Warder", count = 3, oi = 3, map = 1431, x = 15.4, y = 37.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 156, itemName = "Rot Blossom", count = 8, oi = 1, map = 1431, x = 14.2, y = 42.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 323, title = "Proving Your Worth", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.8, y = 34.2, f = "e" },
					{ t = "accept", quest = 269, title = "Seeking Wisdom", npc = 311, npcName = "Sven Yorgen", map = 1431, x = 7.8, y = 34.2, f = "e" },
				},
			},
			{
				note = "Hearth to Darkshire|goto Duskwood,73.9,44.5,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 156, title = "Gather Rot Blossoms", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 74.1, y = 44.7, f = "e" },
					{ t = "accept", quest = 159, title = "Juice Delivery", npc = 273, npcName = "Tavernkeep Smitts", map = 1431, x = 74.1, y = 44.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 269, title = "Seeking Wisdom", npc = 1212, npcName = "Bishop Farthing", map = 1453, x = 49.9, y = 46.0, f = "e" },
					{ t = "accept", quest = 270, title = "The Doomed Fleet", npc = 1212, npcName = "Bishop Farthing", map = 1453, x = 49.9, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 159, title = "Juice Delivery", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.0, y = 31.5, f = "e" },
					{ t = "accept", quest = 133, title = "Ghoulish Effigy", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.0, y = 31.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 133, itemName = "Ghoul Rib", count = 7, oi = 1, map = 1431, x = 25.5, y = 34.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 133, title = "Ghoulish Effigy", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.0, y = 31.5, f = "e" },
					{ t = "accept", quest = 134, title = "Ogre Thieves", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.0, y = 31.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 134, itemName = "Abercrombie's Crate", count = 1, oi = 1, map = 1431, x = 33.4, y = 76.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 134, title = "Ogre Thieves", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.0, y = 31.5, f = "e" },
					{ t = "accept", quest = 160, title = "Note to the Mayor", npc = 289, npcName = "Abercrombie", map = 1431, x = 28.0, y = 31.5, f = "e" },
				},
			},
			{
				note = "Hearth to Darkshire|goto Duskwood,73.9,44.5,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 160, title = "Note to the Mayor", npc = 263, npcName = "Lord Ello Ebonlocke", map = 1431, x = 71.9, y = 46.4, f = "e" },
					{ t = "accept", quest = 251, title = "Translate Abercrombie's Note", npc = 263, npcName = "Lord Ello Ebonlocke", map = 1431, x = 71.9, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 251, title = "Translate Abercrombie's Note", npc = 268, npcName = "Sirra Von'Indi", map = 1431, x = 72.6, y = 47.7, f = "e" },
					{ t = "accept", quest = 401, title = "Wait for Sirra to Finish", npc = 268, npcName = "Sirra Von'Indi", map = 1431, x = 72.6, y = 47.7, f = "e" },
					{ t = "turnin", quest = 401, title = "Wait for Sirra to Finish", npc = 268, npcName = "Sirra Von'Indi", map = 1431, x = 72.6, y = 47.7, f = "e" },
					{ t = "accept", quest = 252, title = "Translation to Ello", npc = 268, npcName = "Sirra Von'Indi", map = 1431, x = 72.6, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 252, title = "Translation to Ello", npc = 263, npcName = "Lord Ello Ebonlocke", map = 1431, x = 71.9, y = 46.4, f = "e" },
					{ t = "accept", quest = 253, title = "Bride of the Embalmer", npc = 263, npcName = "Lord Ello Ebonlocke", map = 1431, x = 71.9, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 254, title = "Digging Through the Dirt", map = 1431, x = 28.9, y = 30.8, f = "e" },
					{ t = "collect", quest = 253, itemName = "The Embalmer's Heart", count = 1, oi = 1, map = 1431, x = 28.9, y = 30.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 253, title = "Bride of the Embalmer", npc = 263, npcName = "Lord Ello Ebonlocke", map = 1431, x = 71.9, y = 46.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 30, f = "e" },
				},
			},
		},
	})
end

