-- TuWoW_Leveling — Guides/Leveling_Alliance_36.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-66-68-part-2",
		pack = "guides",
		title = "Levels (66-68) (Parte 2/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-66-68-part-3",
		author = "TuWoW & Zygor",
		minLevel = 66,
		maxLevel = 68,
		zone = 1946,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 10455, title = "The Encroaching Wilderness", npc = 21066, npcName = "Rina Moonspring", map = 1949, x = 36.2, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10690, title = "The Den Mother", map = 1949, x = 36.6, y = 67.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10927, title = "Killing the Crawlers", npc = 21158, npcName = "Commander Skyshadow", map = 1949, x = 36.3, y = 66.2, f = "e" },
					{ t = "accept", quest = 10502, title = "The Bloodmaul Ogres", npc = 21158, npcName = "Commander Skyshadow", map = 1949, x = 36.3, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10555, title = "Malaise", npc = 21469, npcName = "Daranelle", map = 1949, x = 37.1, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Sylvanaar|goto 35.8,63.9", text = "Sylvanaar|goto 35.8,63.9", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10510, title = "Into the Draenethyst Mine", npc = 21197, npcName = "Bronwyn Stouthammer", map = 1949, x = 37.4, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10511, title = "Strange Brew", npc = 21151, npcName = "Borgrim Stouthammer", map = 1949, x = 37.4, y = 64.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Sylvanaar", text = "Sylvanaar", map = 1949, x = 37.8, y = 61.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10455, target = "Grovestalker Lynx", count = 12, oi = 1, map = 1949, x = 37.1, y = 70.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10555, itemName = "Plucked Lashh'an Feather", count = 18, oi = 1, map = 1949, x = 35.0, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10555, title = "Malaise", map = 1949, x = 34.3, y = 77.4, f = "e" },
					{ t = "accept", quest = 10556, title = "Scratches", map = 1949, x = 34.3, y = 77.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 35.2, y = 77.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10455, title = "The Encroaching Wilderness", npc = 21066, npcName = "Rina Moonspring", map = 1949, x = 36.2, y = 67.1, f = "e" },
					{ t = "accept", quest = 10456, title = "Marauding Wolves", npc = 21066, npcName = "Rina Moonspring", map = 1949, x = 36.2, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10556, title = "Scratches", npc = 21469, npcName = "Daranelle", map = 1949, x = 37.1, y = 65.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 39.0, y = 76.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10511, itemName = "Bloodmaul Brutebane Brew", count = 16, oi = 1, map = 1949, x = 42.4, y = 79.4, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 42.4,83.4",
				goals = {
					{ t = "collect", quest = 10510, itemName = "Draenethyst Mine Crystal", count = 5, oi = 1, map = 1949, x = 42.4, y = 83.4, f = "e" },
				},
			},
			{
				note = "Go outside to 36.3,66.2",
				goals = {
					{ t = "turnin", quest = 10502, title = "The Bloodmaul Ogres", npc = 21158, npcName = "Commander Skyshadow", map = 1949, x = 36.3, y = 66.2, f = "e" },
					{ t = "accept", quest = 10504, title = "The Bladespire Ogres", npc = 21158, npcName = "Commander Skyshadow", map = 1949, x = 36.3, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10510, title = "Into the Draenethyst Mine", npc = 21197, npcName = "Bronwyn Stouthammer", map = 1949, x = 37.4, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10511, title = "Strange Brew", npc = 21151, npcName = "Borgrim Stouthammer", map = 1949, x = 37.4, y = 64.6, f = "e" },
					{ t = "accept", quest = 10512, title = "Getting the Bladespire Tanked", npc = 21151, npcName = "Borgrim Stouthammer", map = 1949, x = 37.4, y = 64.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10456, itemName = "Thunderlord Dire Wolf Tail", count = 4, oi = 1, map = 1949, x = 51.3, y = 65.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10690, npc = 21596, target = "Rema", count = 1, oi = 1, map = 1949, x = 51.6, y = 75.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10608, title = "Crystal Clear", npc = 21755, npcName = "Nickwinkle the Metro-Gnome", map = 1949, x = 60.2, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10584, title = "Picking Up Some Power Converters", npc = 21691, npcName = "Toshley", map = 1949, x = 60.5, y = 69.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 60.7, y = 69.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Toshley's Station", text = "Toshley's Station", map = 1949, x = 61.2, y = 70.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10609, title = "What Came First, the Drake or the Egg?", npc = 21110, npcName = "Fizit \"Doc\" Clocktock", map = 1949, x = 61.0, y = 68.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10557, title = "Test Flight: The Zephyrium Capacitorium", npc = 21460, npcName = "Tally Zapnabber", map = 1949, x = 60.3, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 21461, npcName = "Rally Zapnabber", map = 1949, x = 60.2, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10557, title = "Test Flight: The Zephyrium Capacitorium", npc = 21460, npcName = "Tally Zapnabber", map = 1949, x = 60.3, y = 68.4, f = "e" },
					{ t = "accept", quest = 10710, title = "Test Flight: The Singing Ridge", npc = 21460, npcName = "Tally Zapnabber", map = 1949, x = 60.3, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 58.4, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10584, title = "Picking Up Some Power Converters", npc = 21691, npcName = "Toshley", map = 1949, x = 60.5, y = 69.0, f = "e" },
					{ t = "accept", quest = 10657, title = "Ride the Lightning", npc = 21691, npcName = "Toshley", map = 1949, x = 60.5, y = 69.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10620, title = "Ridgespine Menace", npc = 21824, npcName = "Dizzy Dina", map = 1949, x = 60.4, y = 68.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10632, title = "Cutting Your Teeth", npc = 21118, npcName = "Razak Ironsides", map = 1949, x = 60.5, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 21461, npcName = "Rally Zapnabber", map = 1949, x = 60.2, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10657, itemName = "Scalewing Lightning Gland", count = 5, oi = 2, map = 1949, x = 67.9, y = 72.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10608, target = "Crystal Flayer", count = 10, oi = 1, map = 1949, x = 68.2, y = 76.2, f = "e" },
					{ t = "collect", quest = 10609, itemName = "Proto-Nether Drake Essence", count = 3, oi = 1, map = 1949, x = 68.2, y = 76.2, f = "e" },
					{ t = "collect", quest = 10609, itemName = "Adolescent Nether Drake Essence", count = 3, oi = 2, map = 1949, x = 68.2, y = 76.2, f = "e" },
					{ t = "collect", quest = 10609, itemName = "Mature Nether Drake Essence", count = 3, oi = 3, map = 1949, x = 68.2, y = 76.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10632, itemName = "Extra Sharp Daggermaw Tooth", count = 5, oi = 1, map = 1949, x = 65.0, y = 55.2, f = "e" },
					{ t = "kill", quest = 10620, target = "Ridgespine Stalker", count = 10, oi = 1, map = 1949, x = 65.0, y = 55.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10632, title = "Cutting Your Teeth", npc = 21118, npcName = "Razak Ironsides", map = 1949, x = 60.5, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10710, title = "Test Flight: The Singing Ridge", npc = 21460, npcName = "Tally Zapnabber", map = 1949, x = 60.3, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10609, title = "What Came First, the Drake or the Egg?", npc = 21110, npcName = "Fizit \"Doc\" Clocktock", map = 1949, x = 61.0, y = 68.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10657, title = "Ride the Lightning", npc = 21691, npcName = "Toshley", map = 1949, x = 60.5, y = 69.0, f = "e" },
					{ t = "accept", quest = 10674, title = "Trapping the Light Fantastic", npc = 21691, npcName = "Toshley", map = 1949, x = 60.5, y = 69.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10620, title = "Ridgespine Menace", npc = 21824, npcName = "Dizzy Dina", map = 1949, x = 60.4, y = 68.8, f = "e" },
					{ t = "accept", quest = 10671, title = "More than a Pound of Flesh", npc = 21824, npcName = "Dizzy Dina", map = 1949, x = 60.4, y = 68.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10608, title = "Crystal Clear", npc = 21755, npcName = "Nickwinkle the Metro-Gnome", map = 1949, x = 60.2, y = 68.9, f = "e" },
					{ t = "accept", quest = 10594, title = "Gauging the Resonant Frequency", npc = 21755, npcName = "Nickwinkle the Metro-Gnome", map = 1949, x = 60.2, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10711, title = "Test Flight: Razaan's Landing", npc = 21460, npcName = "Tally Zapnabber", map = 1949, x = 60.3, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Toshley's Station", text = "Toshley's Station", f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 21460, npcName = "Tally Zapnabber", map = 1949, x = 60.2, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 66.4, y = 75.9, f = "e" },
				},
			},
			{
				note = "Hearth to Toshley's Station|goto Blade's Edge Mountains,60.7,69.3,2|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10594, title = "Gauging the Resonant Frequency", npc = 21755, npcName = "Nickwinkle the Metro-Gnome", map = 1949, x = 60.2, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 21461, npcName = "Rally Zapnabber", map = 1949, x = 60.2, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 65.5, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Fiendling Flesh Beasts", count = 1, map = 1949, x = 65.8, y = 45.8, f = "e" },
					{ t = "collect", quest = 10671, itemName = "Ether-Energized Flesh", count = 5, oi = 1, map = 1949, x = 65.8, y = 45.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10711, title = "Test Flight: Razaan's Landing", npc = 21460, npcName = "Tally Zapnabber", map = 1949, x = 60.3, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10671, title = "More than a Pound of Flesh", npc = 21824, npcName = "Dizzy Dina", map = 1949, x = 60.4, y = 68.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10674, title = "Trapping the Light Fantastic", npc = 21691, npcName = "Toshley", map = 1949, x = 60.5, y = 69.0, f = "e" },
					{ t = "accept", quest = 10675, title = "Show Them Gnome Mercy!", npc = 21691, npcName = "Toshley", map = 1949, x = 60.5, y = 69.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10675, itemName = "Collection of Souls", count = 1, oi = 1, map = 1949, x = 66.3, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10675, title = "Show Them Gnome Mercy!", npc = 21691, npcName = "Toshley", map = 1949, x = 60.5, y = 69.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10690, title = "The Den Mother", npc = 21158, npcName = "Commander Skyshadow", map = 1949, x = 36.3, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10456, title = "Marauding Wolves", npc = 21066, npcName = "Rina Moonspring", map = 1949, x = 36.2, y = 67.1, f = "e" },
					{ t = "accept", quest = 10457, title = "Protecting Our Own", npc = 21066, npcName = "Rina Moonspring", map = 1949, x = 36.2, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Sylvanaar", text = "Sylvanaar", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 36.7, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10457, title = "Protecting Our Own", npc = 21066, npcName = "Rina Moonspring", map = 1949, x = 36.2, y = 67.1, f = "e" },
					{ t = "accept", quest = 10506, title = "A Dire Situation", npc = 21066, npcName = "Rina Moonspring", map = 1949, x = 36.2, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 42.3, y = 79.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10516, title = "The Trappings of a Vindicator", npc = 21277, npcName = "Vindicator Vuuleen", map = 1949, x = 44.0, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 40.3, y = 53.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10516, itemName = "Vindicator Vuuleen's Blade", count = 1, oi = 1, map = 1949, x = 39.3, y = 53.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10516, itemName = "Vindicator Vuuleen's Shield", count = 1, oi = 2, map = 1949, x = 42.1, y = 57.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10516, title = "The Trappings of a Vindicator", npc = 21277, npcName = "Vindicator Vuuleen", map = 1949, x = 44.0, y = 51.9, f = "e" },
					{ t = "accept", quest = 10517, title = "Gorr'Dim, Your Time Has Come...", npc = 21277, npcName = "Vindicator Vuuleen", map = 1949, x = 44.0, y = 51.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 39.9, y = 49.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10517, title = "Gorr'Dim, Your Time Has Come...", npc = 21277, npcName = "Vindicator Vuuleen", map = 1949, x = 44.0, y = 51.9, f = "e" },
				},
			},
			{
				note = "Hearth to Sylvanaar|goto Blade's Edge Mountains,38.3,65.3,3|use Hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "Hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10512, title = "Getting the Bladespire Tanked", npc = 21151, npcName = "Borgrim Stouthammer", map = 1949, x = 37.4, y = 64.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10504, title = "The Bladespire Ogres", npc = 21158, npcName = "Commander Skyshadow", map = 1949, x = 36.3, y = 66.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10506, title = "A Dire Situation", npc = 21066, npcName = "Rina Moonspring", map = 1949, x = 36.2, y = 67.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10712, title = "Test Flight: Ruuan Weald", npc = 21460, npcName = "Tally Zapnabber", map = 1949, x = 60.3, y = 68.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10712, itemName = "Spinning Nether-weather Vane", count = 1, oi = 2, map = 1949, x = 60.2, y = 68.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10682, title = "A Time for Negotiation...", npc = 22007, npcName = "Tree Warden Chawn", map = 1949, x = 62.0, y = 39.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "Evergrove", text = "Evergrove", map = 1949, x = 61.7, y = 39.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10770, title = "Little Embers", npc = 22053, npcName = "Mosswood the Ancient", map = 1949, x = 61.2, y = 38.4, f = "e" },
					{ t = "accept", quest = 10771, title = "From the Ashes", npc = 22053, npcName = "Mosswood the Ancient", map = 1949, x = 61.2, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10567, title = "Creating the Pendant", npc = 21782, npcName = "Timeon", map = 1949, x = 62.2, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10795, title = "A Date with Dorgok", npc = 22149, npcName = "Commander Haephus Stonewall", map = 1949, x = 62.0, y = 38.0, f = "e" },
					{ t = "accept", quest = 10796, title = "Crush the Bloodmaul Camp!", npc = 22150, npcName = "Lieutenant Fairweather", map = 1949, x = 62.0, y = 38.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10753, title = "Culling the Wild", npc = 22133, npcName = "Faradrella", map = 1949, x = 62.6, y = 38.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10712, title = "Test Flight: Ruuan Weald", npc = 22020, npcName = "O'Mally Zapnabber", map = 1949, x = 62.7, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10753, target = "Felsworn Scalewing", count = 4, oi = 1, map = 1949, x = 68.9, y = 35.6, f = "e" },
					{ t = "kill", quest = 10753, target = "Felsworn Daggermaw", count = 4, oi = 2, map = 1949, x = 68.9, y = 35.6, f = "e" },
					{ t = "kill", quest = 10753, target = "Fel Corrupter", count = 2, oi = 3, map = 1949, x = 68.9, y = 35.6, f = "e" },
					{ t = "collect", itemName = "Damaged Mask", count = 1, map = 1949, x = 68.9, y = 35.6, f = "e" },
					{ t = "accept", quest = 10810, title = "Damaged Mask", map = 1949, x = 68.9, y = 35.6, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-66-68-part-3",
		pack = "guides",
		title = "Levels (66-68) (Parte 3/3)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 66,
		maxLevel = 68,
		zone = 1946,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", map = 1949, x = 71.7, y = 22.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 71.6, y = 20.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1949, x = 71.6, y = 18.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10770, target = "Scorch Imp", count = 8, oi = 1, map = 1949, x = 70.7, y = 20.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10567, item = 30704, itemName = "Ruuan'ok Claw", count = 6, map = 1949, x = 63.9, y = 31.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10567, itemName = "Harbinger's Pendant", count = 1, oi = 1, map = 1949, x = 64.5, y = 33.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10753, title = "Culling the Wild", npc = 22133, npcName = "Faradrella", map = 1949, x = 62.6, y = 38.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10567, title = "Creating the Pendant", npc = 21782, npcName = "Timeon", map = 1949, x = 62.2, y = 39.1, f = "e" },
					{ t = "accept", quest = 10607, title = "Whispers of the Raven God", npc = 21782, npcName = "Timeon", map = 1949, x = 62.2, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10810, title = "Damaged Mask", npc = 22020, npcName = "O'Mally Zapnabber", map = 1949, x = 62.7, y = 40.4, f = "e" },
					{ t = "accept", quest = 10812, title = "Mystery Mask", npc = 22020, npcName = "O'Mally Zapnabber", map = 1949, x = 62.7, y = 40.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10812, title = "Mystery Mask", npc = 22127, npcName = "Wildlord Antelarion", map = 1949, x = 62.2, y = 40.1, f = "e" },
					{ t = "accept", quest = 10819, title = "Felsworn Gas Mask", npc = 22127, npcName = "Wildlord Antelarion", map = 1949, x = 62.2, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10770, title = "Little Embers", npc = 22053, npcName = "Mosswood the Ancient", map = 1949, x = 61.2, y = 38.4, f = "e" },
					{ t = "turnin", quest = 10771, title = "From the Ashes", npc = 22053, npcName = "Mosswood the Ancient", map = 1949, x = 61.2, y = 38.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 68, f = "e" },
				},
			},
		},
	})
end

