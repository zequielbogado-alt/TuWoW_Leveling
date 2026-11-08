-- TuWoW_Leveling — Guides/Leveling_Horde_59.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-78-80-part-4",
		pack = "guides",
		title = "Northrend (78-80) (Parte 4/4)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 79,
		maxLevel = 80,
		zone = 119,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 12977, title = "Blowing Hodir's Horn", map = 120, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 64.3, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12987, title = "Mounting Hodir's Helm", npc = 30127, npcName = "Njormeld", map = 120, x = 63.2, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13006, title = "Polishing the Helm", map = 120, x = 64.2, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Viscous Oils inside this cave", count = 1, map = 120, x = 55.6, y = 63.4, f = "e" },
					{ t = "collect", quest = 13006, itemName = "Viscous Oil", count = 5, oi = 1, map = 120, x = 55.6, y = 63.4, f = "e" },
					{ t = "collect", quest = 13011, item = 42733, itemName = "Icemaw Bear Flank", count = 1, map = 120, x = 55.6, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13011, target = "Jormuttar", count = 1, oi = 1, map = 120, x = 54.7, y = 60.8, f = "e" },
				},
			},
			{
				note = "Go outside and go to 33.4,58.0",
				goals = {
					{ t = "turnin", quest = 13009, title = "A New Beginning", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
					{ t = "accept", quest = 13050, title = "Veranus", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13050, itemName = "Small Proto-Drake Egg", count = 5, oi = 1, map = 120, x = 43.7, y = 67.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13050, title = "Veranus", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
					{ t = "accept", quest = 13051, title = "Territorial Trespass", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 38.7, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13051, title = "Territorial Trespass", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
					{ t = "accept", quest = 13010, title = "Krolmir, Hammer of Storms", npc = 29445, npcName = "Thorim", map = 120, x = 33.4, y = 58.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13006, title = "Polishing the Helm", map = 120, x = 64.2, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13011, title = "Jormuttar is Soo Fat...", npc = 30105, npcName = "King Jokkum", map = 120, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30105, npcName = "King Jokkum", map = 120, x = 65.4, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13010, title = "Krolmir, Hammer of Storms", npc = 30390, npcName = "Thorim", map = 120, x = 71.4, y = 48.8, f = "e" },
					{ t = "accept", quest = 13057, title = "The Terrace of the Makers", npc = 30390, npcName = "Thorim", map = 120, x = 71.4, y = 48.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13057, title = "The Terrace of the Makers", npc = 30295, npcName = "Thorim", map = 120, x = 56.2, y = 51.3, f = "e" },
					{ t = "accept", quest = 13005, title = "The Earthen Oath", npc = 30295, npcName = "Thorim", map = 120, x = 56.2, y = 51.3, f = "e" },
					{ t = "accept", quest = 13035, title = "Loken's Lackeys", npc = 30295, npcName = "Thorim", map = 120, x = 56.2, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13005, target = "Iron Sentinel", count = 7, oi = 1, map = 120, x = 57.3, y = 46.7, f = "e" },
					{ t = "kill", quest = 13005, target = "Iron Dwarf Assailant", count = 20, oi = 2, map = 120, x = 57.3, y = 46.7, f = "e" },
				},
			},
			{
				note = "Fly up into the building to 55.3,43.3",
				goals = {
					{ t = "kill", quest = 13035, target = "Eisenfaust", count = 1, oi = 1, map = 120, x = 55.3, y = 43.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13035, target = "Halefnir the Windborn", count = 1, oi = 2, map = 120, x = 48.6, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13035, target = "Duronn the Runewrought", count = 1, oi = 3, map = 120, x = 45.0, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13005, title = "The Earthen Oath", npc = 30295, npcName = "Thorim", map = 120, x = 56.3, y = 51.4, f = "e" },
					{ t = "turnin", quest = 13035, title = "Loken's Lackeys", npc = 30295, npcName = "Thorim", map = 120, x = 56.3, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Grom'arsh Crash-Site", text = "Grom'arsh Crash-Site", map = 120, x = 36.2, y = 49.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13054, title = "The Missing Tracker", npc = 30247, npcName = "Bloodguard Lorga", map = 120, x = 36.4, y = 49.1, f = "e" },
					{ t = "accept", quest = 13000, title = "Emergency Measures", npc = 30247, npcName = "Bloodguard Lorga", map = 120, x = 36.4, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12882, title = "Ancient Relics", npc = 30472, npcName = "Olut Alegut", map = 120, x = 37.0, y = 49.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12895, title = "The Missing Bronzebeard", npc = 29651, npcName = "Boktar Bloodfury", map = 120, x = 37.3, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Grom'arsh Crash-Site", text = "Grom'arsh Crash-Site", f = "e" },
				},
			},
			{
				note = "Go inside the cave to 48.5,54.3",
				goals = {
					{ t = "turnin", quest = 13054, title = "The Missing Tracker", npc = 30469, npcName = "Tracker Val'zij", map = 120, x = 48.5, y = 54.3, f = "e" },
					{ t = "accept", quest = 13055, title = "Cave Medicine", npc = 30469, npcName = "Tracker Val'zij", map = 120, x = 48.5, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13055, item = 42926, itemName = "Cave Mushroom", count = 8, f = "e" },
					{ t = "kill", target = "Infesting Jormungars", count = 1, f = "e" },
					{ t = "collect", quest = 13055, item = 42927, itemName = "Toxin Gland", count = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13055, title = "Cave Medicine", npc = 30469, npcName = "Tracker Val'zij", map = 120, x = 48.5, y = 54.3, f = "e" },
					{ t = "accept", quest = 13056, title = "There's Always Time for Revenge", npc = 30469, npcName = "Tracker Val'zij", map = 120, x = 48.5, y = 54.3, f = "e" },
				},
			},
			{
				note = "Go deeper into the cave to 48.2,48.1",
				goals = {
					{ t = "collect", quest = 13056, item = 42510, itemName = "Worg Fur", count = 6, map = 120, x = 48.2, y = 48.1, f = "e" },
					{ t = "kill", quest = 13056, target = "Gimorak", count = 1, oi = 1, map = 120, x = 48.2, y = 48.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13056, title = "There's Always Time for Revenge", npc = 30469, npcName = "Tracker Val'zij", map = 120, x = 48.5, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12895, item = 40947, itemName = "Burlap-Wrapped Note", count = 1, map = 120, x = 36.1, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13000, title = "Emergency Measures", npc = 30247, npcName = "Bloodguard Lorga", map = 120, x = 36.4, y = 49.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12895, title = "The Missing Bronzebeard", npc = 29651, npcName = "Boktar Bloodfury", map = 120, x = 37.3, y = 49.7, f = "e" },
					{ t = "accept", quest = 12909, title = "The Nose Knows", npc = 29651, npcName = "Boktar Bloodfury", map = 120, x = 37.3, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12909, title = "The Nose Knows", npc = 29855, npcName = "Khaliisi", map = 120, x = 40.8, y = 51.2, f = "e" },
					{ t = "accept", quest = 12910, title = "Sniffing Out the Perpetrator", npc = 29855, npcName = "Khaliisi", map = 120, x = 40.8, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12910, target = "Tracker Thulin", count = 1, oi = 2, map = 120, x = 48.5, y = 60.8, f = "e" },
					{ t = "collect", quest = 12910, item = 40971, itemName = "Brann's Communicator", count = 1, map = 120, x = 48.5, y = 60.8, f = "e" },
				},
			},
			{
				note = "Use Brann's Communicator in your bags|use Brann's Communicator##40971",
				goals = {
					{ t = "use", item = 40971, itemName = "Brann's Communicator", f = "e" },
					{ t = "turnin", quest = 12910, title = "Sniffing Out the Perpetrator", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
					{ t = "accept", quest = 12913, title = "Speak Orcish, Man!", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12913, title = "Speak Orcish, Man!", npc = 29937, npcName = "Moteha Windborn", map = 120, x = 37.3, y = 49.7, f = "e" },
					{ t = "accept", quest = 12917, title = "Speaking with the Wind's Voice", npc = 29937, npcName = "Moteha Windborn", map = 120, x = 37.3, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12917, item = 41514, itemName = "Voice of the Wind", count = 5, map = 120, x = 28.5, y = 48.5, f = "e" },
					{ t = "collect", quest = 12882, item = 42780, itemName = "Relic of Ulduar", count = 10, map = 120, x = 28.5, y = 48.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12882, title = "Ancient Relics", npc = 30472, npcName = "Olut Alegut", map = 120, x = 37.0, y = 49.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12917, title = "Speaking with the Wind's Voice", npc = 29937, npcName = "Moteha Windborn", map = 120, x = 37.3, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12920, title = "Catching up with Brann", npc = 29651, npcName = "Boktar Bloodfury", map = 120, x = 37.3, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12920, title = "Catching up with Brann", npc = 29651, npcName = "Boktar Bloodfury", map = 120, x = 37.3, y = 49.7, f = "e" },
					{ t = "accept", quest = 12926, title = "Pieces of the Puzzle", npc = 29651, npcName = "Boktar Bloodfury", map = 120, x = 37.3, y = 49.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12926, item = 41130, itemName = "Inventor's Disk Fragment", count = 6, map = 120, x = 37.9, y = 43.9, f = "e" },
				},
			},
			{
				note = "Click the Inventor's Disk Fragment|use Inventor's Disk Fragment##41130",
				goals = {
					{ t = "use", item = 41130, itemName = "Inventor's Disk Fragment", f = "e" },
					{ t = "collect", quest = 12926, itemName = "The Inventor's Disk", count = 1, oi = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12926, title = "Pieces of the Puzzle", npc = 29579, npcName = "Brann Bronzebeard", f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 80, f = "e" },
				},
			},
		},
	})
end

