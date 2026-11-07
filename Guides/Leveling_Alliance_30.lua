-- TuWoW_Leveling — Guides/Leveling_Alliance_30.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-55-60-part-2",
		pack = "guides",
		title = "Levels (55-60) (Parte 2/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-55-60-part-3",
		author = "TuWoW & Zygor",
		minLevel = 57,
		maxLevel = 60,
		zone = 1448,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 4005, itemName = "Silver Totem of Aquementas", count = 1, oi = 1, map = 1446, x = 70.4, y = 49.9, f = "e" },
				},
			},
			{
				note = "Hearth to Gadgetzan|goto Tanaris,51.7,27.8,6|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1449, x = 43.7, y = 9.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4005, title = "Aquementas", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.9, y = 2.7, f = "e" },
					{ t = "accept", quest = 3961, title = "Linken's Adventure", npc = 9117, npcName = "J.D. Collie", map = 1449, x = 41.9, y = 2.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3961, title = "Linken's Adventure", npc = 8737, npcName = "Linken", map = 1449, x = 44.7, y = 8.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8284, title = "The Twilight Mystery", npc = 15183, npcName = "Geologist Larksbane", map = 1451, x = 49.7, y = 37.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8275, title = "Taking Back Silithus", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.2, y = 38.3, f = "e" },
					{ t = "accept", quest = 8280, title = "Securing the Supply Lines", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.2, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Cenarion Hold", text = "Cenarion Hold", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8277, title = "Deadly Desert Venom", npc = 15189, npcName = "Beetix Ficklespragg", map = 1451, x = 51.6, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8280, target = "Dredge Striker", count = 15, oi = 1, map = 1451, x = 54.4, y = 30.6, f = "e" },
					{ t = "kill", target = "Stonelash Scorpids", count = 1, map = 1451, x = 54.4, y = 30.6, f = "e" },
					{ t = "collect", quest = 8277, itemName = "Stonelash Scorpid Stinger", count = 8, oi = 1, map = 1451, x = 54.4, y = 30.6, f = "e" },
					{ t = "kill", target = "Sand Skitterers", count = 1, map = 1451, x = 54.4, y = 30.6, f = "e" },
					{ t = "collect", quest = 8277, itemName = "Sand Skitterer Fang", count = 8, oi = 2, map = 1451, x = 54.4, y = 30.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1124, title = "Wasteland", npc = 13220, npcName = "Layo Starstrike", map = 1451, x = 81.9, y = 18.9, f = "e" },
					{ t = "accept", quest = 1125, title = "The Spirits of Southwind", npc = 13220, npcName = "Layo Starstrike", map = 1451, x = 81.9, y = 18.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8284, itemName = "Twilight Tablet Fragment", count = 8, oi = 1, map = 1451, x = 24.8, y = 10.4, f = "e" },
				},
			},
			{
				note = "Hearth to Cenarion Hold,0.5|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", map = 1451, x = 51.9, y = 39.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8277, title = "Deadly Desert Venom", npc = 15189, npcName = "Beetix Ficklespragg", map = 1451, x = 51.6, y = 38.6, f = "e" },
					{ t = "accept", quest = 8278, title = "Noggle's Last Hope", npc = 15189, npcName = "Beetix Ficklespragg", map = 1451, x = 51.6, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8280, title = "Securing the Supply Lines", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.2, y = 38.3, f = "e" },
					{ t = "accept", quest = 8281, title = "Stepping Up Security", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.2, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8284, title = "The Twilight Mystery", npc = 15183, npcName = "Geologist Larksbane", map = 1451, x = 49.7, y = 37.5, f = "e" },
					{ t = "accept", quest = 8285, title = "The Deserter", npc = 15183, npcName = "Geologist Larksbane", map = 1451, x = 49.7, y = 37.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 1125, target = "Tortured Druid", count = 8, oi = 1, map = 1451, x = 60.8, y = 48.1, f = "e" },
					{ t = "kill", quest = 1125, target = "Tortured Sentinel", count = 8, oi = 2, map = 1451, x = 60.8, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8281, target = "Dredge Crusher", count = 20, oi = 1, map = 1451, x = 55.1, y = 59.7, f = "e" },
					{ t = "kill", target = "Stonelash Pincers", count = 1, map = 1451, x = 55.1, y = 59.7, f = "e" },
					{ t = "collect", quest = 8278, itemName = "Stonelash Pincer Stinger", count = 3, oi = 2, map = 1451, x = 55.1, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8285, title = "The Deserter", npc = 15194, npcName = "Hermit Ortell", map = 1451, x = 67.2, y = 69.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Stonelash Flayers", count = 1, map = 1451, x = 65.2, y = 74.7, f = "e" },
					{ t = "collect", quest = 8278, itemName = "Stonelash Flayer Stinger", count = 3, oi = 1, map = 1451, x = 65.2, y = 74.7, f = "e" },
					{ t = "kill", target = "Rock Stalkers", count = 1, map = 1451, x = 65.2, y = 74.7, f = "e" },
					{ t = "collect", quest = 8278, itemName = "Rock Stalker Fang", count = 3, oi = 3, map = 1451, x = 65.2, y = 74.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8281, title = "Stepping Up Security", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.2, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8278, title = "Noggle's Last Hope", npc = 15189, npcName = "Beetix Ficklespragg", map = 1451, x = 51.6, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1125, title = "The Spirits of Southwind", npc = 13220, npcName = "Layo Starstrike", map = 1451, x = 81.9, y = 18.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5090, title = "A Call to Arms: The Plaguelands!", npc = 10877, npcName = "Courier Hammerfall", map = 1455, x = 29.4, y = 22.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Ironforge", text = "Ironforge", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6028, title = "The Everlook Report", npc = 10840, npcName = "Argent Officer Pureheart", map = 1422, x = 43.0, y = 83.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5090, title = "A Call to Arms: The Plaguelands!", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.0, f = "e" },
					{ t = "accept", quest = 5092, title = "Clear the Way", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 9474, title = "The Mark of the Lightbringer", npc = 17238, npcName = "Anchorite Truuen", map = 1422, x = 42.9, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Chillwind Camp", text = "Chillwind Camp", map = 1422, x = 42.9, y = 85.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5092, target = "Skeletal Flayer", count = 10, oi = 1, map = 1422, x = 48.2, y = 81.2, f = "e" },
					{ t = "kill", quest = 5092, target = "Slavering Ghoul", count = 10, oi = 2, map = 1422, x = 48.2, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5092, title = "Clear the Way", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.0, f = "e" },
					{ t = "accept", quest = 5215, title = "The Scourge Cauldrons", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.0, f = "e" },
					{ t = "accept", quest = 5097, title = "All Along the Watchtowers", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5215, title = "The Scourge Cauldrons", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.9, y = 84.5, f = "e" },
					{ t = "accept", quest = 5216, title = "Target: Felstone Field", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.9, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1422, x = 49.3, y = 73.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1422, x = 46.6, y = 71.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1422, x = 40.0, y = 71.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1422, x = 42.3, y = 66.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1422, x = 44.3, y = 63.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Felstone Field Cauldron Key", count = 1, map = 1422, x = 37.0, y = 57.1, f = "e" },
					{ t = "turnin", quest = 5216, title = "Target: Felstone Field", map = 1422, x = 37.0, y = 57.1, f = "e" },
					{ t = "accept", quest = 5217, title = "Return to Chillwind Camp", map = 1422, x = 37.0, y = 57.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5021, title = "Better Late Than Never (1)", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5021, title = "Better Late Than Never (1)", map = 1422, x = 38.7, y = 55.3, f = "e" },
					{ t = "accept", quest = 5022, title = "Better Late Than Never (2)", map = 1422, x = 38.7, y = 55.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5097, title = "All Along the Watchtowers", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.0, f = "e" },
					{ t = "accept", quest = 5533, title = "Scholomance", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.0, f = "e" },
					{ t = "turnin", quest = 5533, title = "Scholomance", npc = 11056, npcName = "Alchemist Arbington", map = 1422, x = 42.7, y = 84.0, f = "e" },
					{ t = "accept", quest = 5537, title = "Skeletal Fragments", npc = 11056, npcName = "Alchemist Arbington", map = 1422, x = 42.7, y = 84.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5217, title = "Return to Chillwind Camp", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.9, y = 84.5, f = "e" },
					{ t = "accept", quest = 5219, title = "Target: Dalson's Tears", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.9, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Dalson's Tears Cauldron Key", count = 1, map = 1422, x = 46.2, y = 52.4, f = "e" },
					{ t = "turnin", quest = 5219, title = "Target: Dalson's Tears", map = 1422, x = 46.2, y = 52.4, f = "e" },
					{ t = "accept", quest = 5220, title = "Return to Chillwind Camp", map = 1422, x = 46.2, y = 52.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5058, title = "Mrs. Dalson's Diary", map = 1422, x = 47.7, y = 50.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Dalson Outhouse Key", count = 1, map = 1422, x = 48.1, y = 49.7, f = "e" },
					{ t = "collect", quest = 5060, item = 12739, itemName = "Dalson Cabinet Key", count = 1, map = 1422, x = 48.1, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5059, title = "Locked Away", map = 1422, x = 47.4, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1422, x = 50.0, y = 30.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6004, title = "Unfinished Business (1)", npc = 11610, npcName = "Kirsta Deepshadow", map = 1422, x = 51.9, y = 28.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6004, target = "Scarlet Knight", count = 2, oi = 4, map = 1422, x = 50.3, y = 41.5, f = "e" },
					{ t = "kill", quest = 6004, target = "Scarlet Mage", count = 2, oi = 3, map = 1422, x = 50.3, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6004, target = "Scarlet Hunter", count = 2, oi = 2, map = 1422, x = 51.1, y = 43.7, f = "e" },
					{ t = "kill", quest = 6004, target = "Scarlet Medic", count = 2, oi = 1, map = 1422, x = 51.1, y = 43.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6004, title = "Unfinished Business (1)", npc = 11610, npcName = "Kirsta Deepshadow", map = 1422, x = 51.9, y = 28.0, f = "e" },
					{ t = "accept", quest = 6023, title = "Unfinished Business (2)", npc = 11610, npcName = "Kirsta Deepshadow", map = 1422, x = 51.9, y = 28.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1422, x = 56.4, y = 34.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6023, target = "Huntsman Radley", count = 1, oi = 1, map = 1422, x = 57.7, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6023, target = "Cavalier Durgen", count = 1, oi = 2, map = 1422, x = 54.2, y = 24.2, f = "e" },
					{ t = "collect", quest = 9474, itemName = "Mark of the Lightbringer", count = 1, oi = 1, map = 1422, x = 54.2, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1422, x = 52.8, y = 25.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6023, title = "Unfinished Business (2)", npc = 11610, npcName = "Kirsta Deepshadow", map = 1422, x = 51.9, y = 28.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5220, title = "Return to Chillwind Camp", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.9, y = 84.5, f = "e" },
					{ t = "accept", quest = 5222, title = "Target: Writhing Haunt", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.9, y = 84.5, f = "e" },
					{ t = "turnin", quest = 9474, title = "The Mark of the Lightbringer", npc = 17238, npcName = "Anchorite Truuen", map = 1422, x = 42.9, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5022, title = "Better Late Than Never (2)", npc = 10782, npcName = "Royal Factor Bathrilor", map = 1453, x = 57.2, y = 48.1, f = "e" },
					{ t = "accept", quest = 5048, title = "Good Natured Emma", npc = 10782, npcName = "Royal Factor Bathrilor", map = 1453, x = 57.2, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5048, title = "Good Natured Emma", npc = 3520, npcName = "Ol' Emma", map = 1453, x = 60.2, y = 57.0, f = "e" },
					{ t = "accept", quest = 5050, title = "Good Luck Charm", npc = 3520, npcName = "Ol' Emma", map = 1453, x = 60.2, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6182, title = "The First and the Last", npc = 29611, npcName = "King Varian Wrynn", map = 1453, x = 80.0, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6182, title = "The First and the Last", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.3, y = 70.7, f = "e" },
					{ t = "accept", quest = 6183, title = "Honor the Dead", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.3, y = 70.7, f = "e" },
					{ t = "turnin", quest = 6183, title = "Honor the Dead", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.3, y = 70.7, f = "e" },
					{ t = "accept", quest = 6184, title = "Flint Shadowmore", npc = 332, npcName = "Master Mathias Shaw", map = 1453, x = 78.3, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6184, title = "Flint Shadowmore", npc = 12425, npcName = "Flint Shadowmore", map = 1422, x = 43.6, y = 84.5, f = "e" },
					{ t = "accept", quest = 6185, title = "The Eastern Plagues", npc = 12425, npcName = "Flint Shadowmore", map = 1422, x = 43.6, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5050, title = "Good Luck Charm", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.0, f = "e" },
					{ t = "accept", quest = 5051, title = "Two Halves Become One", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "a Jabbering Ghoul", count = 1, map = 1422, x = 37.5, y = 55.0, f = "e" },
					{ t = "collect", itemName = "Good Luck Other-Half Charm", count = 1, map = 1422, x = 37.5, y = 55.0, f = "e" },
					{ t = "collect", quest = 5051, itemName = "Good Luck Charm", count = 1, oi = 1, map = 1422, x = 37.5, y = 55.0, f = "e" },
					{ t = "kill", target = "skeletons", count = 1, map = 1422, x = 37.5, y = 55.0, f = "e" },
					{ t = "collect", quest = 5537, itemName = "Skeletal Fragments", count = 15, oi = 1, map = 1422, x = 37.5, y = 55.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5051, title = "Two Halves Become One", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Writhing Haunt Cauldron Key", count = 1, map = 1422, x = 53.0, y = 66.0, f = "e" },
					{ t = "turnin", quest = 5222, title = "Target: Writhing Haunt", map = 1422, x = 53.0, y = 66.0, f = "e" },
					{ t = "accept", quest = 5223, title = "Return to Chillwind Camp", map = 1422, x = 53.0, y = 66.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5537, title = "Skeletal Fragments", npc = 11056, npcName = "Alchemist Arbington", map = 1422, x = 42.7, y = 84.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5223, title = "Return to Chillwind Camp", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.9, y = 84.5, f = "e" },
					{ t = "accept", quest = 5225, title = "Target: Gahrron's Withering", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.9, y = 84.5, f = "e" },
					{ t = "accept", quest = 9446, title = "Tomb of the Lightbringer", npc = 17238, npcName = "Anchorite Truuen", map = 1422, x = 42.9, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 4984, title = "The Wildlife Suffers Too (1)", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.7, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4984, target = "Diseased Wolf", count = 8, oi = 1, map = 1422, x = 42.8, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4984, title = "The Wildlife Suffers Too (1)", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.7, y = 64.7, f = "e" },
					{ t = "accept", quest = 4985, title = "The Wildlife Suffers Too (2)", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.7, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 59, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4985, target = "Diseased Grizzly", count = 8, oi = 1, map = 1422, x = 57.9, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4985, title = "The Wildlife Suffers Too (2)", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.7, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Gahrron's Withering Cauldron Key", count = 1, map = 1422, x = 62.6, y = 59.9, f = "e" },
					{ t = "turnin", quest = 5225, title = "Target: Gahrron's Withering", map = 1422, x = 62.6, y = 59.9, f = "e" },
					{ t = "accept", quest = 5226, title = "Return to Chillwind Camp", map = 1422, x = 62.6, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Thondroril River", text = "Thondroril River", map = 1422, x = 69.2, y = 49.6, f = "e" },
				},
			},
			{
				note = "Go north up the coast to 4.7,38.4|goto Eastern Plaguelands,4.7,38.4",
				goals = {
					{ t = "accept", quest = 5542, title = "Demon Dogs", npc = 1855, npcName = "Tirion Fordring", f = "e" },
					{ t = "accept", quest = 5543, title = "Blood Tinged Skies", npc = 1855, npcName = "Tirion Fordring", f = "e" },
					{ t = "accept", quest = 5544, title = "Carrion Grubbage", npc = 1855, npcName = "Tirion Fordring", f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6185, item = 16003, itemName = "SI:7 Insignia (Rutger)", count = 1, oi = 2, map = 1422, x = 25.1, y = 73.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6185, item = 16002, itemName = "SI:7 Insignia (Turyen)", count = 1, oi = 4, map = 1422, x = 25.1, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6185, item = 16001, itemName = "SI:7 Insignia (Fredo)", count = 1, oi = 3, map = 1422, x = 23.5, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5542, target = "Plaguehound Runt", count = 20, oi = 1, map = 1422, x = 24.9, y = 63.6, f = "e" },
					{ t = "kill", quest = 5543, target = "Plaguebat", count = 30, oi = 1, map = 1422, x = 24.9, y = 63.6, f = "e" },
					{ t = "kill", target = "Carrion Grubs", count = 1, map = 1422, x = 24.9, y = 63.6, f = "e" },
					{ t = "collect", quest = 5544, itemName = "Slab of Carrion Worm Meat", count = 15, oi = 1, map = 1422, x = 24.9, y = 63.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5601, title = "Sister Pamela", npc = 10926, npcName = "Pamela Redpath", map = 1422, x = 32.4, y = 83.7, f = "e" },
					{ t = "accept", quest = 5149, title = "Pamela's Doll", npc = 10926, npcName = "Pamela Redpath", map = 1422, x = 32.4, y = 83.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Pamela's Doll's Head", count = 1, map = 1422, x = 35.0, y = 84.3, f = "e" },
					{ t = "collect", itemName = "Pamela's Doll's Left Side", count = 1, map = 1422, x = 35.0, y = 84.3, f = "e" },
					{ t = "collect", itemName = "Pamela's Doll's Right Side", count = 1, map = 1422, x = 35.0, y = 84.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5149, title = "Pamela's Doll", npc = 10926, npcName = "Pamela Redpath", map = 1422, x = 32.4, y = 83.7, f = "e" },
					{ t = "accept", quest = 5241, title = "Uncle Carlin", npc = 10926, npcName = "Pamela Redpath", map = 1422, x = 32.4, y = 83.7, f = "e" },
					{ t = "accept", quest = 5152, title = "Auntie Marlene", npc = 10926, npcName = "Pamela Redpath", map = 1422, x = 32.4, y = 83.7, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-55-60-part-3",
		pack = "guides",
		title = "Levels (55-60) (Parte 3/3)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 59,
		maxLevel = 60,
		zone = 1448,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "kill", quest = 5542, target = "Plaguehound", count = 5, oi = 2, map = 1422, x = 52.5, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 5542, target = "Frenzied Plaguehound", count = 5, oi = 3, map = 1422, x = 50.3, y = 25.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6030, title = "Duke Nicholas Zverenhoff", npc = 11039, npcName = "Duke Nicholas Zverenhoff", map = 1422, x = 75.7, y = 53.9, f = "e" },
					{ t = "turnin", quest = 5241, title = "Uncle Carlin", npc = 11063, npcName = "Carlin Redpath", map = 1422, x = 75.7, y = 53.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Light's Hope Chapel", text = "Light's Hope Chapel", map = 1422, x = 75.9, y = 53.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 9446, title = "Tomb of the Lightbringer", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.9, y = 84.5, f = "e" },
					{ t = "turnin", quest = 5226, title = "Return to Chillwind Camp", npc = 11053, npcName = "High Priestess MacDonnell", map = 1422, x = 42.9, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6185, title = "The Eastern Plagues", npc = 12425, npcName = "Flint Shadowmore", map = 1422, x = 43.6, y = 84.5, f = "e" },
					{ t = "accept", quest = 6186, title = "The Blightcaller Cometh", npc = 12425, npcName = "Flint Shadowmore", map = 1422, x = 43.6, y = 84.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 6186, title = "The Blightcaller Cometh", npc = 29611, npcName = "King Varian Wrynn", map = 1453, x = 80.0, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5152, title = "Auntie Marlene", npc = 10927, npcName = "Marlene Redpath", map = 1422, x = 49.2, y = 78.5, f = "e" },
					{ t = "accept", quest = 5153, title = "A Strange Historian", npc = 10927, npcName = "Marlene Redpath", map = 1422, x = 49.2, y = 78.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5153, itemName = "Joseph's Wedding Ring", count = 1, oi = 1, map = 1422, x = 49.7, y = 76.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5153, title = "A Strange Historian", npc = 10667, npcName = "Chromie", map = 1422, x = 39.5, y = 66.8, f = "e" },
					{ t = "accept", quest = 5154, title = "The Annals of Darrowshire", npc = 10667, npcName = "Chromie", map = 1422, x = 39.5, y = 66.8, f = "e" },
					{ t = "accept", quest = 4971, title = "A Matter of Time", npc = 10667, npcName = "Chromie", map = 1422, x = 39.5, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 5154, itemName = "Annals of Darrowshire", count = 1, oi = 1, map = 1422, x = 43.5, y = 69.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 4971, target = "Temporal Parasite", count = 10, oi = 1, map = 1422, x = 46.9, y = 65.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5154, title = "The Annals of Darrowshire", npc = 10667, npcName = "Chromie", map = 1422, x = 39.5, y = 66.8, f = "e" },
					{ t = "turnin", quest = 4971, title = "A Matter of Time", npc = 10667, npcName = "Chromie", map = 1422, x = 39.5, y = 66.8, f = "e" },
					{ t = "accept", quest = 4972, title = "Counting Out Time", npc = 10667, npcName = "Chromie", map = 1422, x = 39.5, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4972, itemName = "Andorhal Watch", count = 5, oi = 1, map = 1422, x = 38.8, y = 68.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4972, title = "Counting Out Time", npc = 10667, npcName = "Chromie", map = 1422, x = 39.5, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 12596, npcName = "Bibilfaz Featherwhistle", map = 1422, x = 42.9, y = 85.1, f = "e" },
				},
			},
			{
				note = "Go north up the coast to 4.7,38.4|goto Eastern Plaguelands,4.7,38.4",
				goals = {
					{ t = "turnin", quest = 5542, title = "Demon Dogs", npc = 1855, npcName = "Tirion Fordring", f = "e" },
					{ t = "turnin", quest = 5543, title = "Blood Tinged Skies", npc = 1855, npcName = "Tirion Fordring", f = "e" },
					{ t = "turnin", quest = 5544, title = "Carrion Grubbage", npc = 1855, npcName = "Tirion Fordring", f = "e" },
					{ t = "accept", quest = 5742, title = "Redemption", npc = 1855, npcName = "Tirion Fordring", f = "e" },
					{ t = "turnin", quest = 5742, title = "Redemption", npc = 1855, npcName = "Tirion Fordring", f = "e" },
				},
			},
			{
				note = "Hearth to Ironforge|goto Ironforge|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				note = "Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c",
				goals = {
					{ t = "goto", map = 1453, x = 22.6, y = 56.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5163, title = "Are We There, Yeti? (3)", npc = 10305, npcName = "Umi Rumplesnicker", map = 1452, x = 60.9, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4808, title = "Felnok Steelspring", npc = 10468, npcName = "Felnok Steelspring", map = 1452, x = 61.6, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1457, x = 40.4, y = 82.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 60, f = "e" },
				},
			},
		},
	})
end

