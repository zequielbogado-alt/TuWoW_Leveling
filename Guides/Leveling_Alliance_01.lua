-- TuWoW_Leveling — Guides/Leveling_Alliance_01.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-human-starter-1-13",
		pack = "guides",
		title = "Human Starter (Parte 1/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-human-starter-1-13-part-2",
		author = "TuWoW & Zygor",
		minLevel = 1,
		maxLevel = 13,
		zone = 1429,
		version = 1,
		races = { "Human" },
		steps = {
			{
				note = "Loot items worth at least 10 copper to sell. Allows training an ability early. Increases leveling speed.",
				only = { classes = { "WARRIOR", "WARLOCK" } },
				goals = {
					{ t = "goto", text = "Elwynn Forest", map = 1429, x = 45.2, y = 42.4 },
				},
			},
			{
				only = { classes = { "WARRIOR", "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 152, npcName = "Brother Danil", map = 1429, x = 47.49, y = 41.56, f = "e" },
				},
			},
			{
				note = "Outside next to the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 459, npcName = "Drusilla La Salle", map = 1429, x = 49.87, y = 42.65, f = "e" },
				},
			},
			{
				note = "Outside next to the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "accept", quest = 1598, title = "The Stolen Tome", npc = 459, npcName = "Drusilla La Salle", map = 1429, x = 49.87, y = 42.65, f = "e" },
				},
			},
			{
				note = "Ignore enemies and run inside the tent. Enemies can't hit you. Zoom camera out. From inside, click the book pile (right side) outside. Copy the link into your internet browser.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "collect", quest = 1598, item = 6785, itemName = "Powers of the Void", oi = 1, map = 1429, x = 56.74, y = 43.77, f = "e" },
				},
			},
			{
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "hearth", location = "Northshire Valley" },
				},
			},
			{
				note = "Outside next to the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 1598, title = "The Stolen Tome", npc = 459, npcName = "Drusilla La Salle", map = 1429, x = 49.87, y = 42.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 783, title = "A Threat Within", npc = 823, npcName = "Deputy Willem", map = 1429, x = 48.17, y = 42.95, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "turnin", quest = 783, title = "A Threat Within", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.92, y = 41.61, f = "e" },
					{ t = "accept", quest = 7, title = "Kobold Camp Cleanup", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.92, y = 41.61, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 911, npcName = "Llane Beshere", map = 1429, x = 50.24, y = 42.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 5261, title = "Eagan Peltskinner", npc = 823, npcName = "Deputy Willem", map = 1429, x = 48.17, y = 42.95, f = "e" },
				},
			},
			{
				note = "Outside the building.",
				goals = {
					{ t = "turnin", quest = 5261, title = "Eagan Peltskinner", npc = 196, npcName = "Eagan Peltskinner", map = 1429, x = 48.94, y = 40.16, f = "e" },
					{ t = "accept", quest = 33, title = "Wolves Across the Border", npc = 196, npcName = "Eagan Peltskinner", map = 1429, x = 48.94, y = 40.16, f = "e" },
				},
			},
			{
				label = "Kill_Kobold_Vermin",
				along = true,
				goals = {
					{ t = "kill", quest = 7, npc = 6, target = "Kobold Vermin", count = 10, oi = 1, map = 1429, x = 49.3, y = 36.1, f = "e" },
				},
			},
			{
				label = "Collect_Tough_Wolf_Meat",
				along = true,
				goals = {
					{ t = "collect", quest = 33, item = 750, itemName = "Tough Wolf Meat", count = 8, oi = 1, map = 1429, x = 48.32, y = 39.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 33, title = "Wolves Across the Border", npc = 196, npcName = "Eagan Peltskinner", map = 1429, x = 48.94, y = 40.16, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "turnin", quest = 7, title = "Kobold Camp Cleanup", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.92, y = 41.61, f = "e" },
					{ t = "accept", quest = 15, title = "Investigate Echo Ridge", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.92, y = 41.61, f = "e" },
					{ t = "accept", quest = 3104, title = "Glyphic Letter", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.92, y = 41.61, f = "e", only = { classes = { "MAGE" } } },
					{ t = "accept", quest = 3100, title = "Simple Letter", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.92, y = 41.61, f = "e", only = { classes = { "WARRIOR" } } },
					{ t = "accept", quest = 3105, title = "Tainted Letter", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.92, y = 41.61, f = "e", only = { classes = { "WARLOCK" } } },
					{ t = "accept", quest = 3102, title = "Encrypted Letter", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.92, y = 41.61, f = "e", only = { classes = { "ROGUE" } } },
					{ t = "accept", quest = 3103, title = "Hallowed Letter", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.92, y = 41.61, f = "e", only = { classes = { "PRIEST" } } },
					{ t = "accept", quest = 3101, title = "Consecrated Letter", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.92, y = 41.61, f = "e", only = { classes = { "PALADIN" } } },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "turnin", quest = 3100, title = "Simple Letter", npc = 911, npcName = "Llane Beshere", map = 1429, x = 50.24, y = 42.29, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 911, npcName = "Llane Beshere", map = 1429, x = 50.24, y = 42.29, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 3101, title = "Consecrated Letter", npc = 925, npcName = "Brother Sammuel", map = 1429, x = 50.43, y = 42.13, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 925, npcName = "Brother Sammuel", map = 1429, x = 50.43, y = 42.13, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 3103, title = "Hallowed Letter", npc = 375, npcName = "Priestess Anetta", map = 1429, x = 49.81, y = 39.49, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 375, npcName = "Priestess Anetta", map = 1429, x = 49.81, y = 39.49, f = "e" },
				},
			},
			{
				note = "Middle floor inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "turnin", quest = 3104, title = "Glyphic Letter", npc = 198, npcName = "Khelden Bremen", map = 1429, x = 49.66, y = 39.41, f = "e" },
				},
			},
			{
				note = "Middle floor inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 198, npcName = "Khelden Bremen", map = 1429, x = 49.66, y = 39.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 18, title = "Brotherhood of Thieves", npc = 823, npcName = "Deputy Willem", map = 1429, x = 48.17, y = 42.93, f = "e" },
				},
			},
			{
				label = "Kill_Kobold_Workers",
				along = true,
				goals = {
					{ t = "kill", quest = 15, npc = 257, target = "Kobold Worker", count = 10, oi = 1, map = 1429, x = 48.9, y = 35.31, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 18, item = 752, itemName = "Red Burlap Bandana", count = 12, oi = 1, map = 1429, x = 54.88, y = 46.19, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", map = 1429, x = 51.21, y = 40.81, f = "e" },
				},
			},
			{
				note = "Outside behind the building. In the stables.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "turnin", quest = 3102, title = "Encrypted Letter", npc = 915, npcName = "Jorik Kerridan", map = 1429, x = 50.31, y = 39.92, f = "e" },
				},
			},
			{
				note = "Outside behind the building. In the stables.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 915, npcName = "Jorik Kerridan", map = 1429, x = 50.31, y = 39.92, f = "e" },
				},
			},
			{
				note = "Outside next to the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "turnin", quest = 3105, title = "Tainted Letter", npc = 459, npcName = "Drusilla La Salle", map = 1429, x = 49.87, y = 42.65, f = "e" },
				},
			},
			{
				note = "Outside next to the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 459, npcName = "Drusilla La Salle", map = 1429, x = 49.87, y = 42.65, f = "e" },
				},
			},
			{
				note = "Outside the building.",
				goals = {
					{ t = "turnin", quest = 18, title = "Brotherhood of Thieves", npc = 823, npcName = "Deputy Willem", map = 1429, x = 48.17, y = 42.94, f = "e" },
					{ t = "accept", quest = 3903, title = "Milly Osworth", npc = 823, npcName = "Deputy Willem", map = 1429, x = 48.17, y = 42.94, f = "e" },
					{ t = "accept", quest = 6, title = "Bounty on Garrick Padfoot", npc = 823, npcName = "Deputy Willem", map = 1429, x = 48.17, y = 42.94, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "turnin", quest = 15, title = "Investigate Echo Ridge", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.92, y = 41.61, f = "e" },
					{ t = "accept", quest = 21, title = "Skirmish at Echo Ridge", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.92, y = 41.61, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 911, npcName = "Llane Beshere", map = 1429, x = 50.24, y = 42.29, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 925, npcName = "Brother Sammuel", map = 1429, x = 50.43, y = 42.13, f = "e" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Skinning" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Herbalism" },
				},
			},
			{
				goals = {
					{ t = "skill", level = 75, skill = "Mining" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 375, npcName = "Priestess Anetta", map = 1429, x = 49.81, y = 39.49, f = "e" },
				},
			},
			{
				note = "Middle floor inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 198, npcName = "Khelden Bremen", map = 1429, x = 49.66, y = 39.41, f = "e" },
				},
			},
			{
				note = "We will train Mining and Blacksmithing. Allows you to make and use Sharpening Stones. Allows you to make and use Weightstones. Increases damage. Mine Copper Ore as you see it. Use the Rough Stones to make sharpening stones. Use the Rough Stones to make weightstones.",
				only = { classes = { "WARRIOR", "PALADIN", "ROGUE" } },
				goals = {
					{ t = "complete", quest = 3903, title = "Milly Osworth", note = "Click Here to Continue" },
				},
			},
			{
				only = { classes = { "WARRIOR", "PALADIN", "ROGUE" } },
				goals = {
					{ t = "buy", item = 2901, itemName = "Mining Pick", map = 1429, x = 47.18, y = 32.18, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR", "PALADIN", "ROGUE" } },
				goals = {
					{ t = "skill", level = 75, skill = "Mining" },
				},
			},
			{
				note = "Elite kobold. Inside the mine.",
				goals = {
					{ t = "goto", text = "Enter the mine", map = 1429, x = 47.68, y = 31.81 },
				},
			},
			{
				label = "Kill_Kobold_Laborers",
				along = true,
				note = "Inside the mine. notinsticky",
				goals = {
					{ t = "kill", quest = 21, npc = 80, target = "Kobold Laborer", count = 12, oi = 1, map = 1429, x = 47.68, y = 31.81, f = "e" },
				},
			},
			{
				note = "Outside, behind the building.",
				goals = {
					{ t = "goto", text = "Leave the mine", map = 1429, x = 47.66, y = 31.89 },
					{ t = "turnin", quest = 3903, title = "Milly Osworth", npc = 9296, npcName = "Milly Osworth", map = 1429, x = 50.69, y = 39.35, f = "e" },
					{ t = "accept", quest = 3904, title = "Milly's Harvest", npc = 9296, npcName = "Milly Osworth", map = 1429, x = 50.69, y = 39.35, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 6, item = 182, itemName = "Garrick's Head", oi = 1, map = 1429, x = 57.51, y = 48.25, f = "e" },
				},
			},
			{
				note = "Wooden buckets.",
				goals = {
					{ t = "collect", quest = 3904, item = 11119, itemName = "Milly's Harvest", count = 8, oi = 1, map = 1429, x = 55.1, y = 49.0, f = "e" },
				},
			},
			{
				note = "Outside, behind the building.",
				goals = {
					{ t = "turnin", quest = 3904, title = "Milly's Harvest", npc = 9296, npcName = "Milly Osworth", map = 1429, x = 50.69, y = 39.35, f = "e" },
					{ t = "accept", quest = 3905, title = "Grape Manifest", npc = 9296, npcName = "Milly Osworth", map = 1429, x = 50.69, y = 39.35, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				goals = {
					{ t = "turnin", quest = 21, title = "Skirmish at Echo Ridge", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.92, y = 41.61, f = "e" },
					{ t = "accept", quest = 54, title = "Report to Goldshire", npc = 197, npcName = "Marshal McBride", map = 1429, x = 48.92, y = 41.61, f = "e" },
				},
			},
			{
				note = "Ground floor inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "accept", quest = 5623, title = "In Favor of the Light", npc = 375, npcName = "Priestess Anetta", map = 1429, x = 49.81, y = 39.49, f = "e" },
				},
			},
			{
				note = "Top floor inside the building.",
				goals = {
					{ t = "turnin", quest = 3905, title = "Grape Manifest", npc = 952, npcName = "Brother Neals", map = 1429, x = 49.47, y = 41.59, f = "e" },
				},
			},
			{
				note = "Outside the building.",
				goals = {
					{ t = "turnin", quest = 6, title = "Bounty on Garrick Padfoot", npc = 823, npcName = "Deputy Willem", map = 1429, x = 48.17, y = 42.94, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 2158, title = "Rest and Relaxation", npc = 6774, npcName = "Falkhaan Isenstrider", map = 1429, x = 45.56, y = 47.74, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 60, title = "Kobold Candles", npc = 253, npcName = "William Pestle", map = 1429, x = 43.32, y = 65.7, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2158, title = "Rest and Relaxation", npc = 295, npcName = "Innkeeper Farley", map = 1429, x = 43.77, y = 65.81, f = "e" },
				},
			},
			{
				note = "Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "train", npc = 906, npcName = "Maximillian Crowe", map = 1429, x = 44.39, y = 66.24, f = "e" },
				},
			},
			{
				note = "Buy available Grimoires. Downstairs inside the building.",
				only = { classes = { "WARLOCK" } },
				goals = {
					{ t = "vendor", npc = 6374, npcName = "Cylina Darkheart", map = 1429, x = 44.4, y = 65.99, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "MAGE" } },
				goals = {
					{ t = "train", npc = 328, npcName = "Zaldimar Wefhellt", map = 1429, x = 43.25, y = 66.19, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Human" }, classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5623, title = "In Favor of the Light", npc = 377, npcName = "Priestess Josetta", map = 1429, x = 43.28, y = 65.72, f = "e" },
					{ t = "accept", quest = 5624, title = "Garments of the Light", npc = 377, npcName = "Priestess Josetta", map = 1429, x = 43.28, y = 65.72, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "PRIEST" } },
				goals = {
					{ t = "train", npc = 377, npcName = "Priestess Josetta", map = 1429, x = 43.28, y = 65.72, f = "e" },
				},
			},
			{
				note = "Cast Lesser Heal (Rank 2) on Guard Roberts. Cast Power Word: Fortitude on Guard Roberts.",
				only = { races = { "Human" }, classes = { "PRIEST" } },
				goals = {
					{ t = "complete", quest = 5624, title = "Garments of the Light", note = "Heal and Fortify Guard Roberts", map = 1429, x = 47.01, y = 66.76, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { races = { "Human" }, classes = { "PRIEST" } },
				goals = {
					{ t = "turnin", quest = 5624, title = "Garments of the Light", npc = 377, npcName = "Priestess Josetta", map = 1429, x = 43.28, y = 65.72, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building.",
				only = { classes = { "ROGUE" } },
				goals = {
					{ t = "train", npc = 917, npcName = "Keryn Sylvius", map = 1429, x = 43.87, y = 65.94, f = "e" },
				},
			},
			{
				note = "Upstairs inside the building. If possible.",
				only = { classes = { "WARRIOR", "ROGUE" } },
				goals = {
					{ t = "skill", level = 75, skill = "First Aid" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 54, title = "Report to Goldshire", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.93, f = "e" },
					{ t = "accept", quest = 62, title = "The Fargodeep Mine", npc = 240, npcName = "Marshal Dughan", map = 1429, x = 42.1, y = 65.93, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "WARRIOR", "PALADIN", "ROGUE" } },
				goals = {
					{ t = "skill", level = 75, skill = "Blacksmithing" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 47, title = "Gold Dust Exchange", npc = 241, npcName = "Remy \"Two Times\"", map = 1429, x = 42.14, y = 67.26, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "train", npc = 927, npcName = "Brother Wilhelm", map = 1429, x = 41.1, y = 66.04, f = "e" },
				},
			},
			{
				only = { classes = { "WARRIOR" } },
				goals = {
					{ t = "train", npc = 913, npcName = "Lyria Du Lac", map = 1429, x = 41.08, y = 65.77, f = "e" },
				},
			},
			{
				only = { classes = { "HUNTER" } },
				goals = {
					{ t = "train", map = 1429, x = 41.15, y = 66.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 85, title = "Lost Necklace", npc = 246, npcName = "\"Auntie\" Bernice Stonefield", map = 1429, x = 34.48, y = 84.26, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 85, title = "Lost Necklace", npc = 247, npcName = "Billy Maclure", map = 1429, x = 43.13, y = 85.72, f = "e" },
					{ t = "accept", quest = 86, title = "Pie for Billy", npc = 247, npcName = "Billy Maclure", map = 1429, x = 43.13, y = 85.72, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 106, title = "Young Lovers", npc = 251, npcName = "Maybell Maclure", map = 1429, x = 43.15, y = 89.62, f = "e" },
				},
			},
			{
				label = "Collect_Chunks_Of_Boar_Meat",
				along = true,
				note = "Don't vendor them.",
				goals = {
					{ t = "collect", quest = 86, item = 769, itemName = "Chunk of Boar Meat", count = 4, map = 1429, x = 41.86, y = 87.12, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 106, title = "Young Lovers", npc = 252, npcName = "Tommy Joe Stonefield", map = 1429, x = 29.84, y = 85.99, f = "e" },
					{ t = "accept", quest = 111, title = "Speak with Gramma", npc = 252, npcName = "Tommy Joe Stonefield", map = 1429, x = 29.84, y = 85.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 86, title = "Pie for Billy", npc = 246, npcName = "\"Auntie\" Bernice Stonefield", map = 1429, x = 34.48, y = 84.26, f = "e" },
					{ t = "accept", quest = 84, title = "Back to Billy", npc = 246, npcName = "\"Auntie\" Bernice Stonefield", map = 1429, x = 34.48, y = 84.26, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 111, title = "Speak with Gramma", npc = 248, npcName = "Gramma Stonefield", map = 1429, x = 34.94, y = 83.86, f = "e" },
					{ t = "accept", quest = 107, title = "Note to William", npc = 248, npcName = "Gramma Stonefield", map = 1429, x = 34.94, y = 83.86, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 84, title = "Back to Billy", npc = 247, npcName = "Billy Maclure", map = 1429, x = 43.13, y = 85.72, f = "e" },
					{ t = "accept", quest = 87, title = "Goldtooth", npc = 247, npcName = "Billy Maclure", map = 1429, x = 43.13, y = 85.72, f = "e" },
				},
			},
			{
				note = "Inside the mine.",
				goals = {
					{ t = "goto", text = "Enter the mine", map = 1429, x = 38.97, y = 82.33 },
					{ t = "complete", quest = 62, title = "The Fargodeep Mine", note = "Scout Through the Fargodeep Mine", map = 1429, x = 39.61, y = 80.21, f = "e" },
				},
			},
			{
				note = "Walks around. Inside the mine.",
				goals = {
					{ t = "goto", text = "Follow the path inside the mine", map = 1429, x = 39.76, y = 79.21 },
					{ t = "collect", quest = 87, item = 981, itemName = "Bernice's Necklace", oi = 1, map = 1429, x = 41.71, y = 78.04, f = "e" },
				},
			},
			{
				label = "Collect_Large_Candles_And_Gold_Dust",
				along = true,
				note = "Inside and outside the mine. notinsticky",
				goals = {
					{ t = "collect", quest = 60, item = 772, itemName = "Large Candle", count = 8, oi = 1, map = 1429, x = 38.97, y = 82.33, f = "e" },
					{ t = "collect", quest = 47, item = 773, itemName = "Gold Dust", count = 10, oi = 1, map = 1429, x = 38.97, y = 82.33, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 87, title = "Goldtooth", npc = 246, npcName = "\"Auntie\" Bernice Stonefield", map = 1429, x = 34.49, y = 84.25, f = "e" },
				},
			},
			{
				note = "No death penalty at this level. Fast travel. Inside and outside the mine.",
				goals = {
					{ t = "complete", quest = 47, title = "Gold Dust Exchange", note = "Die on Purpose", map = 1429, x = 32.78, y = 85.47, f = "e" },
				},
			},
		},
	})
end

