-- TuWoW_Leveling — Guides/Leveling_Horde_09.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-silverpine-forest-13-15",
		pack = "guides",
		title = "Silverpine Forest",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-the-barrens-and-stonetalon-mountain-15-21",
		author = "TuWoW & Zygor",
		minLevel = 13,
		maxLevel = 15,
		zone = 1421,
		version = 1,
		steps = {
			{
				note = "Escort quest. Wait until he respawns, if missing. Inside the building.",
				goals = {
					{ t = "accept", quest = 435, title = "Escorting Erland", npc = 1978, npcName = "Deathstalker Erland", map = 1421, x = 56.19, y = 9.18, f = "e" },
				},
			},
			{
				note = "Follow and protect Deathstalker Erland.",
				goals = {
					{ t = "complete", quest = 435, title = "Escorting Erland", note = "Erland Must Reach Rane Yorick", map = 1421, x = 54.3, y = 13.43, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 435, title = "Escorting Erland", npc = 1950, npcName = "Rane Yorick", map = 1421, x = 53.46, y = 13.43, f = "e" },
					{ t = "accept", quest = 449, title = "The Deathstalkers' Report", npc = 1950, npcName = "Rane Yorick", map = 1421, x = 53.46, y = 13.43, f = "e" },
					{ t = "accept", quest = 429, title = "Wild Hearts", npc = 1950, npcName = "Rane Yorick", map = 1421, x = 53.46, y = 13.42, f = "e" },
				},
			},
			{
				note = "Black wolves.",
				goals = {
					{ t = "collect", quest = 429, item = 3164, itemName = "Discolored Worg Heart", count = 3, oi = 1, map = 1421, x = 57.4, y = 12.8, f = "e" },
				},
			},
			{
				note = "Cast Tame Beast on a Ferocious Grizzled Bear. Abandon your pet first. New permanent pet.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "complete", quest = 449, title = "The Deathstalkers' Report", note = "Click Here to Continue", map = 1421, x = 51.2, y = 21.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "The Sepulcher", map = 1421, x = 45.62, y = 42.6, f = "e" },
				},
			},
			{
				note = "Open the flight map. Allows guide to learn your flight paths.",
				only = { races = { "Scourge" } },
				goals = {
					{ t = "getfp", location = "Undercity", map = 1421, x = 45.62, y = 42.6, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "accept", quest = 421, title = "Prove Your Worth", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.73, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 477, title = "Border Crossings", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 43.98, y = 40.93, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "accept", quest = 6321, title = "Supplying the Sepulcher", npc = 6389, npcName = "Deathguard Podrig", map = 1421, x = 43.43, y = 41.68, f = "e" },
				},
			},
			{
				note = "Downstairs inside the crypt.",
				goals = {
					{ t = "goto", text = "Enter the crypt", map = 1421, x = 43.09, y = 41.39 },
					{ t = "turnin", quest = 449, title = "The Deathstalkers' Report", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.43, y = 40.87, f = "e" },
					{ t = "accept", quest = 3221, title = "Speak with Renferrel", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.43, y = 40.87, f = "e" },
					{ t = "accept", quest = 437, title = "The Dead Fields", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.43, y = 40.87, f = "e" },
				},
			},
			{
				note = "Outside the crypt.",
				goals = {
					{ t = "turnin", quest = 445, title = "Delivery to Silverpine Forest", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.86, f = "e" },
					{ t = "turnin", quest = 3221, title = "Speak with Renferrel", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.86, f = "e" },
					{ t = "accept", quest = 1359, title = "Zinge's Delivery", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.86, f = "e" },
					{ t = "turnin", quest = 429, title = "Wild Hearts", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.86, f = "e" },
					{ t = "accept", quest = 430, title = "Return to Quinn", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.86, f = "e" },
					{ t = "accept", quest = 447, title = "A Recipe For Death", npc = 1937, npcName = "Apothecary Renferrel", map = 1421, x = 42.8, y = 40.86, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 6321, title = "Supplying the Sepulcher", npc = 2226, npcName = "Karos Razok", map = 1421, x = 45.62, y = 42.6, f = "e" },
					{ t = "accept", quest = 6323, title = "Ride to the Undercity", npc = 2226, npcName = "Karos Razok", map = 1421, x = 45.62, y = 42.6, f = "e" },
				},
			},
			{
				note = "Worgen.",
				goals = {
					{ t = "kill", quest = 421, npc = 1769, target = "Moonrage Whitescalp", count = 5, oi = 1, map = 1421, x = 51.62, y = 39.98, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 421, title = "Prove Your Worth", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.78, f = "e" },
					{ t = "accept", quest = 422, title = "Arugal's Folly", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.78, f = "e" },
				},
			},
			{
				note = "You will be attacked. Upstairs inside the building.",
				goals = {
					{ t = "goto", text = "Cross the bridge", map = 1421, x = 49.75, y = 30.07 },
					{ t = "collect", quest = 422, item = 3155, itemName = "Remedy of Arugal", oi = 1, map = 1421, x = 52.82, y = 28.58, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				goals = {
					{ t = "turnin", quest = 430, title = "Return to Quinn", npc = 1951, npcName = "Quinn Yorick", map = 1421, x = 53.43, y = 12.59, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 422, title = "Arugal's Folly", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.78, f = "e" },
					{ t = "accept", quest = 423, title = "Arugal's Folly", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.2, y = 39.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 477, title = "Border Crossings", map = 1421, x = 49.91, y = 60.32, f = "e" },
					{ t = "accept", quest = 478, title = "Maps and Runes", map = 1421, x = 49.91, y = 60.32, f = "e" },
				},
			},
			{
				note = "Outside the building.",
				goals = {
					{ t = "accept", quest = 425, title = "Ivar the Foul", npc = 1950, npcName = "Rane Yorick", map = 1421, x = 53.46, y = 13.43, f = "e" },
				},
			},
			{
				note = "Three ghouls with him. Wait for one to walk outside, then kill it. Inside the building.",
				goals = {
					{ t = "collect", quest = 425, item = 3621, itemName = "Ivar's Head", oi = 1, map = 1421, x = 51.53, y = 13.91, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 425, title = "Ivar the Foul", npc = 1950, npcName = "Rane Yorick", map = 1421, x = 53.46, y = 13.43, f = "e" },
				},
			},
			{
				note = "Avoid Son of Arugal. Higher level elite black worgen. Walks around a large area.",
				goals = {
					{ t = "complete", quest = 437, title = "The Dead Fields", note = "Click Here to Continue" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 437, title = "The Dead Fields", note = "Enter the Dead Fields", map = 1421, x = 45.44, y = 21.01, f = "e" },
				},
			},
			{
				label = "Collect_Essence_Of_Nightlash",
				note = "Gnolls. Eventually spawns here.",
				goals = {
					{ t = "collect", quest = 437, item = 3622, itemName = "Essence of Nightlash", oi = 1, map = 1421, x = 45.44, y = 21.01, f = "e" },
				},
			},
			{
				label = "Collect_Grizzled_Bear_Hearts",
				along = true,
				goals = {
					{ t = "collect", quest = 447, item = 3253, itemName = "Grizzled Bear Heart", count = 6, oi = 1, map = 1421, x = 40.75, y = 17.83, f = "e" },
				},
			},
			{
				label = "Collect_Skittering_Blood",
				along = true,
				note = "Spiders. Inside and outside the mine. notinsticky",
				goals = {
					{ t = "collect", quest = 447, item = 3254, itemName = "Skittering Blood", count = 6, oi = 2, map = 1421, x = 35.65, y = 13.58, f = "e" },
				},
			},
			{
				label = "Collect_Darksoul_Shackles",
				along = true,
				note = "Worgen. Avoid Son of Arugal. notinsticky Higher level elite black worgen. notinsticky",
				goals = {
					{ t = "goto", text = "Leave the mine", map = 1421, x = 35.65, y = 13.58 },
					{ t = "collect", quest = 423, item = 3157, itemName = "Darksoul Shackle", count = 3, oi = 2, map = 1421, x = 39.83, y = 24.99, f = "e" },
				},
			},
			{
				label = "Collect_Glutton_Shackles",
				along = true,
				note = "Worgen. Avoid Son of Arugal. notinsticky Higher level elite black worgen. notinsticky",
				goals = {
					{ t = "goto", text = "Leave the mine", map = 1421, x = 35.65, y = 13.58 },
					{ t = "collect", quest = 423, item = 3156, itemName = "Glutton Shackle", count = 6, oi = 1, map = 1421, x = 39.83, y = 24.99, f = "e" },
				},
			},
			{
				note = "Fast travel. Don't worry about resurrection sickness. Traveling around soon.",
				goals = {
					{ t = "complete", quest = 423, title = "Arugal's Folly", note = "Die on Purpose", map = 1421, x = 39.83, y = 24.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "complete", quest = 423, title = "Arugal's Folly", note = "Resurrect at the Spirit Healer", map = 1421, x = 44.31, y = 41.51, f = "e" },
				},
			},
			{
				note = "Follow the road.",
				goals = {
					{ t = "turnin", quest = 478, title = "Maps and Runes", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 43.98, y = 40.93, f = "e" },
					{ t = "accept", quest = 481, title = "Dalar's Analysis", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 43.98, y = 40.93, f = "e" },
				},
			},
			{
				note = "Walks around.",
				goals = {
					{ t = "turnin", quest = 423, title = "Arugal's Folly", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.19, y = 39.78, f = "e" },
					{ t = "turnin", quest = 481, title = "Dalar's Analysis", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.19, y = 39.78, f = "e" },
					{ t = "accept", quest = 482, title = "Dalaran's Intentions", npc = 1938, npcName = "Dalar Dawnweaver", map = 1421, x = 44.19, y = 39.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 482, title = "Dalaran's Intentions", npc = 2121, npcName = "Shadow Priest Allister", map = 1421, x = 43.98, y = 40.93, f = "e" },
				},
			},
			{
				note = "Downstairs inside the crypt.",
				goals = {
					{ t = "goto", text = "Enter the crypt", map = 1421, x = 43.09, y = 41.39 },
					{ t = "turnin", quest = 437, title = "The Dead Fields", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.43, y = 40.87, f = "e" },
					{ t = "accept", quest = 438, title = "The Decrepit Ferry", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.43, y = 40.87, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 438, title = "The Decrepit Ferry", map = 1421, x = 58.39, y = 34.84, f = "e" },
					{ t = "accept", quest = 439, title = "Rot Hide Clues", map = 1421, x = 58.39, y = 34.84, f = "e" },
				},
			},
			{
				note = "Downstairs inside the crypt.",
				goals = {
					{ t = "goto", text = "Enter the crypt", map = 1421, x = 43.09, y = 41.39 },
					{ t = "turnin", quest = 439, title = "Rot Hide Clues", npc = 1952, npcName = "High Executor Hadrec", map = 1421, x = 43.43, y = 40.87, f = "e" },
				},
			},
			{
				note = "Upstairs inside Undercity.",
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 6323, title = "Ride to the Undercity", npc = 4556, npcName = "Gordon Wendham", map = 1458, x = 61.49, y = 41.8, f = "e" },
					{ t = "accept", quest = 6322, title = "Michael Garrett", npc = 4556, npcName = "Gordon Wendham", map = 1458, x = 61.49, y = 41.8, f = "e" },
				},
			},
			{
				note = "Upstairs inside Undercity.",
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 6322, title = "Michael Garrett", npc = 4551, npcName = "Michael Garrett", map = 1458, x = 63.26, y = 48.56, f = "e" },
					{ t = "accept", quest = 6324, title = "Return to Podrig", npc = 4551, npcName = "Michael Garrett", map = 1458, x = 63.26, y = 48.56, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" } },
				goals = {
					{ t = "turnin", quest = 6324, title = "Return to Podrig", npc = 6389, npcName = "Deathguard Podrig", map = 1421, x = 43.43, y = 41.68, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Follow the path down", map = 1458, x = 52.84, y = 77.62 },
					{ t = "turnin", quest = 447, title = "A Recipe For Death", npc = 2055, npcName = "Master Apothecary Faranell", map = 1458, x = 48.82, y = 69.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 1359, title = "Zinge's Delivery", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 50.13, y = 67.99, f = "e" },
					{ t = "accept", quest = 1358, title = "Sample for Helbrim", npc = 5204, npcName = "Apothecary Zinge", map = 1458, x = 50.13, y = 67.99, f = "e" },
				},
			},
			{
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 4608, npcName = "Father Lazarus", map = 1458, x = 47.57, y = 18.9, f = "e" },
				},
			},
			{
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 4582, npcName = "Carolyn Ward", map = 1458, x = 83.86, y = 72.07, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 4568, npcName = "Anastasia Hartwell", map = 1458, x = 85.14, y = 10.03, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 4563, npcName = "Kaal Soulreaper", map = 1458, x = 86.21, y = 15.93, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 5753, npcName = "Martha Strain", map = 1458, x = 85.7, y = 16.08, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 4595, npcName = "Baltus Fowler", map = 1458, x = 47.4, y = 17.29, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 1886, title = "The Deathstalkers", npc = 6467, npcName = "Mennet Carkad", map = 1458, x = 83.51, y = 69.11, f = "e" },
					{ t = "accept", quest = 1898, title = "The Deathstalkers", npc = 6467, npcName = "Mennet Carkad", map = 1458, x = 83.51, y = 69.11, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 1898, title = "The Deathstalkers", npc = 6522, npcName = "Andron Gant", map = 1458, x = 54.82, y = 76.3, f = "e" },
					{ t = "accept", quest = 1899, title = "The Deathstalkers", npc = 6522, npcName = "Andron Gant", map = 1458, x = 54.82, y = 76.3, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "ROGUE" } },
				goals = {
					{ t = "collect", quest = 1899, item = 7294, itemName = "Andron's Ledger", oi = 1, map = 1458, x = 55.42, y = 77.05, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 1899, title = "The Deathstalkers", npc = 6467, npcName = "Mennet Carkad", map = 1458, x = 83.51, y = 69.11, f = "e" },
					{ t = "accept", quest = 1978, title = "The Deathstalkers", npc = 6467, npcName = "Mennet Carkad", map = 1458, x = 65.53, y = 79.73, f = "e" },
				},
			},
			{
				only = { races = { "Scourge" }, classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 1978, title = "The Deathstalkers", npc = 2425, npcName = "Varimathras", map = 1458, x = 59.75, y = 84.64, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", map = 1458, x = 47.39, y = 14.89, f = "e" },
				},
			},
			{
				only = { classes = { "DRUID" } },
				goals = {
					{ t = "train", npc = 12042, npcName = "Loganaar", map = 1450, x = 52.53, y = 40.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "SHAMAN" } },
				goals = {
					{ t = "train", npc = 3173, npcName = "Swart", map = 1411, x = 54.42, y = 42.59, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", npc = 3171, npcName = "Thotar", map = 1411, x = 51.85, y = 43.49, f = "e" },
				},
			},
		},
	})
end

