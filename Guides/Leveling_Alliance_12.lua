-- TuWoW_Leveling — Guides/Leveling_Alliance_12.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-death-knight-55-60-part-2",
		pack = "guides",
		title = "Death Knight (55-60) (Parte 2/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-death-knight-55-60-part-3",
		author = "TuWoW & Zygor",
		minLevel = 57,
		maxLevel = 60,
		zone = 1423,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 12779, title = "An End To All Things...", npc = 29110, npcName = "The Lich King", map = 1423, x = 53.6, y = 36.9, f = "e" },
					{ t = "accept", quest = 12800, title = "The Lich King's Command", npc = 29110, npcName = "The Lich King", map = 1423, x = 53.6, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1423, x = 50.4, y = 31.9, f = "e" },
				},
			},
			{
				note = "Follow the path northwest to 33.9,30.4",
				goals = {
					{ t = "turnin", quest = 12800, title = "The Lich King's Command", npc = 31082, npcName = "Scourge Commander Thalanor", map = 1423, x = 33.9, y = 30.4, f = "e" },
					{ t = "accept", quest = 12801, title = "The Light of Dawn", npc = 31082, npcName = "Scourge Commander Thalanor", map = 1423, x = 33.9, y = 30.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 29173, npcName = "Highlord Darion Mograine", map = 1423, x = 34.4, y = 31.1, f = "e" },
				},
			},
			{
				note = "Talk to Highlord Darion Mograine after the battle",
				goals = {
					{ t = "turnin", quest = 12801, title = "The Light of Dawn", f = "e" },
					{ t = "accept", quest = 13165, title = "Taking Back Acherus", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13165, title = "Taking Back Acherus", npc = 29173, npcName = "Highlord Darion Mograine", map = 1423, x = 83.4, y = 49.4, f = "e" },
					{ t = "accept", quest = 13166, title = "The Battle For The Ebon Hold", npc = 29173, npcName = "Highlord Darion Mograine", map = 1423, x = 83.4, y = 49.4, f = "e" },
				},
			},
			{
				note = "Stand on the purple circle to teleport upstairs,0.5|noway|c",
				goals = {
					{ t = "goto", map = 1423, x = 82.7, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13166, target = "Scourge", count = 10, oi = 2, map = 1423, x = 83.0, y = 48.0, f = "e" },
					{ t = "kill", quest = 13166, npc = 31099, target = "Patchwerk", count = 1, oi = 1, map = 1423, x = 83.0, y = 48.0, f = "e" },
				},
			},
			{
				note = "Stand on the purple circle to teleport downstairs,0.5|noway|c",
				goals = {
					{ t = "goto", map = 1423, x = 83.0, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13166, title = "The Battle For The Ebon Hold", npc = 31084, npcName = "Highlord Darion Mograine", map = 1423, x = 83.4, y = 49.4, f = "e" },
					{ t = "accept", quest = 13188, title = "Where Kings Walk", npc = 31084, npcName = "Highlord Darion Mograine", map = 1423, x = 83.4, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 58, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13188, title = "Where Kings Walk", npc = 29611, npcName = "King Varian Wrynn", map = 1423, x = 80.0, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 3823, title = "Extinguish the Firegut", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
					{ t = "accept", quest = 4283, title = "FIFTY! YEP!", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 3823, target = "Firegut Brute", count = 7, oi = 3, map = 1428, x = 74.2, y = 48.0, f = "e" },
					{ t = "kill", quest = 3823, target = "Firegut Ogre", count = 7, oi = 2, map = 1428, x = 74.2, y = 48.0, f = "e" },
					{ t = "kill", quest = 3823, target = "Firegut Ogre Mage", count = 15, oi = 1, map = 1428, x = 74.2, y = 48.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 4283, itemName = "Blackrock Medallion", count = 50, oi = 1, map = 1428, x = 44.4, y = 36.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3823, title = "Extinguish the Firegut", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
					{ t = "accept", quest = 3824, title = "Gor'tesh the Brute Lord", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
					{ t = "turnin", quest = 4283, title = "FIFTY! YEP!", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
				},
			},
			{
				note = "Go northwest to 39.3,55.4",
				goals = {
					{ t = "collect", quest = 3824, itemName = "Gor'tesh's Lopped Off Head", count = 1, oi = 1, map = 1428, x = 39.3, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3824, title = "Gor'tesh the Brute Lord", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
					{ t = "accept", quest = 3825, title = "Ogre Head On A Stick = Party", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
				},
			},
			{
				note = "Go north to to the top of Dreadmaul Rock 81.0,46.8",
				goals = {
					{ t = "goto", map = 1428, x = 81.0, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 3825, title = "Ogre Head On A Stick = Party", npc = 9177, npcName = "Oralius", map = 1428, x = 84.6, y = 68.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8275, title = "Taking Back Silithus", npc = 15187, npcName = "Cenarion Emissary Jademoon", map = 1455, x = 58.6, y = 47.3, f = "e" },
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
				note = "Go northeast to 54.4,30.6",
				goals = {
					{ t = "collect", quest = 8277, itemName = "Stonelash Scorpid Stinger", count = 8, oi = 1, map = 1451, x = 54.4, y = 30.6, f = "e" },
					{ t = "collect", quest = 8277, itemName = "Sand Skitterer Fang", count = 8, oi = 2, map = 1451, x = 54.4, y = 30.6, f = "e" },
					{ t = "kill", quest = 8280, target = "Dredge Striker", count = 15, oi = 1, map = 1451, x = 54.4, y = 30.6, f = "e" },
				},
			},
			{
				note = "Go west to 24.8,10.4",
				goals = {
					{ t = "collect", quest = 8284, itemName = "Twilight Tablet Fragment", count = 8, oi = 1, map = 1451, x = 24.8, y = 10.4, f = "e" },
				},
			},
			{
				note = "Hearth to Cenarion Hold|goto Silithus,50.4,36.5,3|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
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
					{ t = "accept", quest = 8304, title = "Dearest Natalia", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.2, f = "e" },
				},
			},
			{
				note = "Go southwest to 55.1,59.7",
				goals = {
					{ t = "kill", quest = 8281, target = "Dredge Crusher", count = 20, oi = 1, map = 1451, x = 55.1, y = 59.7, f = "e" },
					{ t = "collect", quest = 8278, itemName = "Stonelash Pincer Stinger", count = 3, oi = 2, map = 1451, x = 55.1, y = 59.7, f = "e" },
				},
			},
			{
				note = "Go into the cave to 67.2,69.8",
				goals = {
					{ t = "turnin", quest = 8285, title = "The Deserter", npc = 15194, npcName = "Hermit Ortell", map = 1451, x = 67.2, y = 69.8, f = "e" },
				},
			},
			{
				note = "Go southwest to 65.2,74.7",
				goals = {
					{ t = "collect", quest = 8278, itemName = "Stonelash Flayer Stinger", count = 3, oi = 1, map = 1451, x = 65.2, y = 74.7, f = "e" },
					{ t = "collect", quest = 8278, itemName = "Rock Stalker Fang", count = 3, oi = 3, map = 1451, x = 65.2, y = 74.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 15170, npcName = "Rutgar Glyphshaper", map = 1451, x = 41.3, y = 88.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 15171, npcName = "Frankal Stonebridge", map = 1451, x = 40.8, y = 88.9, f = "e" },
				},
			},
			{
				note = "Hearth to Cenarion Hold|goto Silithus,50.4,36.5,3|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8278, title = "Noggle's Last Hope", npc = 15189, npcName = "Beetix Ficklespragg", map = 1451, x = 51.6, y = 38.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8281, title = "Stepping Up Security", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.2, y = 38.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8304, title = "Dearest Natalia", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 59, f = "e" },
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
					{ t = "kill", quest = 5092, target = "Slavering Ghoul", count = 10, oi = 2, map = 1422, x = 48.2, y = 81.2, f = "e" },
					{ t = "kill", quest = 5092, target = "Skeletal Flayer", count = 10, oi = 1, map = 1422, x = 48.2, y = 81.2, f = "e" },
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
					{ t = "collect", itemName = "the Felstone Field Cauldron Key", count = 1, map = 1422, x = 37.0, y = 57.1, f = "e" },
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
					{ t = "collect", itemName = "the Dalson's Tears Cauldron Key", count = 1, map = 1422, x = 46.2, y = 52.4, f = "e" },
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
					{ t = "collect", itemName = "the Dalson Outhouse Key", count = 1, map = 1422, x = 48.1, y = 49.7, f = "e" },
					{ t = "collect", quest = 5060, item = 12739, itemName = "Dalson Cabinet Key", count = 1, oi = 1, map = 1422, x = 48.1, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5060, title = "Locked Away", map = 1422, x = 47.4, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1422, x = 50.0, y = 30.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 6004, title = "Unfinished Business (1)", npc = 11610, npcName = "Kirsta Deepshadow", map = 1422, x = 51.9, y = 28.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6004, target = "Scarlet Mage", count = 2, oi = 3, map = 1422, x = 50.3, y = 41.5, f = "e" },
					{ t = "kill", quest = 6004, target = "Scarlet Knight", count = 2, oi = 4, map = 1422, x = 50.3, y = 41.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 6004, target = "Scarlet Medic", count = 2, oi = 1, map = 1422, x = 51.1, y = 43.7, f = "e" },
					{ t = "kill", quest = 6004, target = "Scarlet Hunter", count = 2, oi = 2, map = 1422, x = 51.1, y = 43.7, f = "e" },
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
					{ t = "kill", quest = 6023, npc = 11613, target = "Huntsman Radley", count = 1, oi = 1, map = 1422, x = 57.7, y = 36.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 9474, itemName = "Mark of the Lightbringer", count = 1, oi = 1, map = 1422, x = 54.2, y = 24.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1422, x = 52.5, y = 25.2, f = "e" },
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
					{ t = "collect", itemName = "the Good Luck Other-Half-Charm", count = 1, map = 1422, x = 37.5, y = 55.0, f = "e" },
					{ t = "collect", quest = 5051, itemName = "Good Luck Charm", count = 1, oi = 1, map = 1422, x = 37.5, y = 55.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5051, title = "Two Halves Become One", npc = 10778, npcName = "Janice Felstone", map = 1422, x = 38.4, y = 54.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "the Writhing Haunt Cauldron Key", count = 1, map = 1422, x = 53.0, y = 66.0, f = "e" },
					{ t = "turnin", quest = 5222, title = "Target: Writhing Haunt", map = 1422, x = 53.0, y = 66.0, f = "e" },
					{ t = "accept", quest = 5223, title = "Return to Chillwind Camp", map = 1422, x = 53.0, y = 66.0, f = "e" },
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
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-death-knight-55-60-part-3",
		pack = "guides",
		title = "Death Knight (55-60) (Parte 3/3)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 59,
		maxLevel = 60,
		zone = 1423,
		version = 1,
		steps = {
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
					{ t = "kill", quest = 4985, target = "Diseased Grizzly", count = 8, oi = 1, map = 1422, x = 57.9, y = 61.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "the Gahrron's Withering Cauldron Key", count = 1, map = 1422, x = 62.6, y = 59.9, f = "e" },
					{ t = "turnin", quest = 5225, title = "Target: Gahrron's Withering", map = 1422, x = 62.6, y = 59.9, f = "e" },
					{ t = "accept", quest = 5226, title = "Return to Chillwind Camp", map = 1422, x = 62.6, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4985, title = "The Wildlife Suffers Too (2)", npc = 10739, npcName = "Mulgris Deepriver", map = 1422, x = 53.7, y = 64.7, f = "e" },
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
					{ t = "accept", quest = 5238, title = "Mission Accomplished!", npc = 10838, npcName = "Commander Ashlam Valorfist", map = 1422, x = 42.7, y = 84.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1455, x = 27.3, y = 7.0, f = "e" },
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

