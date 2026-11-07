-- TuWoW_Leveling — Guides/Leveling_Alliance_51.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-76-78",
		pack = "guides",
		title = "Northrend (76-78) (Parte 1/4)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-northrend-76-78-part-2",
		author = "TuWoW & Zygor",
		minLevel = 76,
		maxLevel = 78,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 12093, title = "Runes of Compulsion", npc = 26420, npcName = "Gavrock", x = 79.8, y = 33.6, f = "e" },
					{ t = "accept", quest = 12094, title = "Latent Power", npc = 26420, npcName = "Gavrock", x = 79.8, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 78.8, y = 39.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 74.1, y = 44.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 71.3, y = 39.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "killed by Warlord Jin'arrak", count = 1, x = 71.5, y = 24.7, f = "e" },
				},
			},
			{
				note = "While dead, go inside the crypt to 69.4,19.5",
				goals = {
					{ t = "turnin", quest = 12121, title = "See You on the Other Side", npc = 26924, npcName = "Gan'jo", x = 69.4, y = 19.5, f = "e" },
					{ t = "accept", quest = 12137, title = "Chill Out, Mon", npc = 26924, npcName = "Gan'jo", x = 69.4, y = 19.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12137, itemName = "Snow of Eternal Slumber", count = 1, oi = 1, x = 69.4, y = 19.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26924, npcName = "Gan'jo", x = 69.4, y = 19.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12137, itemName = "Drakkari Spirit Particles", count = 5, oi = 2, x = 70.0, y = 20.4, f = "e" },
				},
			},
			{
				note = "Go outside to 73.9,34.1",
				goals = {
					{ t = "turnin", quest = 12137, title = "Chill Out, Mon", npc = 26886, npcName = "Kraz", x = 73.9, y = 34.1, f = "e" },
					{ t = "accept", quest = 12152, title = "Jin'arrak's End", npc = 26886, npcName = "Kraz", x = 73.9, y = 34.1, f = "e" },
				},
			},
			{
				note = "Go into the crypt to 71.3,19.6",
				goals = {
					{ t = "collect", itemName = "Sacred Drakkari Offering", count = 1, x = 71.3, y = 19.6, f = "e" },
					{ t = "collect", quest = 12152, item = 37063, itemName = "Infused Drakkari Offering", count = 1, x = 71.3, y = 19.6, f = "e" },
				},
			},
			{
				note = "Go outside to 71.4,24.4",
				goals = {
					{ t = "goto", x = 71.4, y = 24.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12152, title = "Jin'arrak's End", npc = 26886, npcName = "Kraz", x = 73.9, y = 34.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12094, title = "Latent Power", npc = 26420, npcName = "Gavrock", x = 79.8, y = 33.6, f = "e" },
					{ t = "accept", quest = 12099, title = "Free at Last", npc = 26420, npcName = "Gavrock", x = 79.8, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 76.2, y = 37.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12099, title = "Free at Last", npc = 26420, npcName = "Gavrock", x = 79.8, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12279, title = "A Bear of an Appetite", npc = 26484, npcName = "Hugh Glass", x = 69.1, y = 40.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12180, title = "The Captive Prospectors", npc = 26885, npcName = "Mountaineer Kilian", x = 77.0, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12128, title = "Check Up on Raegar", npc = 26883, npcName = "Raegar Breakbrow", x = 77.1, y = 48.6, f = "e" },
					{ t = "accept", quest = 12129, title = "The Perfect Plan", npc = 26883, npcName = "Raegar Breakbrow", x = 77.1, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Iron Rune-Smiths", count = 1, x = 76.6, y = 55.1, f = "e" },
					{ t = "collect", quest = 12180, item = 37013, itemName = "Dun Argol Cage Key", count = 3, x = 76.6, y = 55.1, f = "e" },
					{ t = "collect", item = 36849, itemName = "Golem Blueprint Section 1", count = 1, x = 76.6, y = 55.1, f = "e" },
					{ t = "collect", item = 36850, itemName = "Golem Blueprint Section 2", count = 1, x = 76.6, y = 55.1, f = "e" },
					{ t = "collect", item = 36851, itemName = "Golem Blueprint Section 3", count = 1, x = 76.6, y = 55.1, f = "e" },
					{ t = "collect", quest = 12129, item = 36848, itemName = "War Golem Blueprint", count = 1, oi = 1, x = 76.6, y = 55.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 76.5, y = 55.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 76.3, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 76.0, y = 61.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12129, title = "The Perfect Plan", npc = 26883, npcName = "Raegar Breakbrow", x = 77.1, y = 48.6, f = "e" },
					{ t = "accept", quest = 12130, title = "Why Fabricate When You Can Appropriate?", npc = 26883, npcName = "Raegar Breakbrow", x = 77.1, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12180, title = "The Captive Prospectors", npc = 26885, npcName = "Mountaineer Kilian", x = 77.0, y = 48.4, f = "e" },
					{ t = "accept", quest = 12183, title = "Looking the Part", npc = 26885, npcName = "Mountaineer Kilian", x = 77.0, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12183, itemName = "Overseer's Uniform", count = 1, oi = 1, x = 76.6, y = 54.8, f = "e" },
					{ t = "collect", quest = 12130, itemName = "War Golem Part", count = 8, oi = 1, x = 76.6, y = 54.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12130, title = "Why Fabricate When You Can Appropriate?", npc = 26883, npcName = "Raegar Breakbrow", x = 77.1, y = 48.6, f = "e" },
					{ t = "accept", quest = 12131, title = "We Have the Power", npc = 26883, npcName = "Raegar Breakbrow", x = 77.1, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12183, title = "Looking the Part", npc = 26885, npcName = "Mountaineer Kilian", x = 77.0, y = 48.4, f = "e" },
					{ t = "accept", quest = 12184, title = "Cultivating an Image", npc = 26885, npcName = "Mountaineer Kilian", x = 77.0, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Iron dwarves", count = 1, x = 76.1, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12131, itemName = "Kathorn's Power Cell", count = 1, oi = 2, x = 76.8, y = 59.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12131, itemName = "Durar's Power Cell", count = 1, oi = 1, x = 74.9, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12131, title = "We Have the Power", npc = 26883, npcName = "Raegar Breakbrow", x = 77.1, y = 48.6, f = "e" },
					{ t = "accept", quest = 12138, title = "... Or Maybe We Don't", npc = 26883, npcName = "Raegar Breakbrow", x = 77.1, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12184, title = "Cultivating an Image", npc = 26885, npcName = "Mountaineer Kilian", x = 77.0, y = 48.4, f = "e" },
					{ t = "accept", quest = 12185, title = "Put on Your Best Face for Loken", npc = 26885, npcName = "Mountaineer Kilian", x = 77.0, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Lightning Sentries", count = 1, x = 76.6, y = 51.4, f = "e" },
					{ t = "collect", quest = 12138, itemName = "Charge Level", count = 10, oi = 1, x = 76.6, y = 51.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 81.5, y = 60.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12138, title = "... Or Maybe We Don't", npc = 26883, npcName = "Raegar Breakbrow", x = 77.1, y = 48.6, f = "e" },
					{ t = "accept", quest = 12153, title = "The Iron Thane and His Anvil", npc = 26883, npcName = "Raegar Breakbrow", x = 77.1, y = 48.6, f = "e" },
					{ t = "accept", quest = 12154, title = "Blackout", npc = 26883, npcName = "Raegar Breakbrow", x = 77.1, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12185, title = "Put on Your Best Face for Loken", npc = 26885, npcName = "Mountaineer Kilian", x = 77.0, y = 48.4, f = "e" },
				},
			},
			{
				note = "Go into this building and downstairs to 77,63",
				goals = {
					{ t = "goto", x = 76.5, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12153, npc = 26405, target = "Iron Thane Furyhammer", count = 1, oi = 1, x = 76.2, y = 63.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12153, title = "The Iron Thane and His Anvil", npc = 26883, npcName = "Raegar Breakbrow", x = 77.1, y = 48.6, f = "e" },
					{ t = "turnin", quest = 12154, title = "Blackout", npc = 26883, npcName = "Raegar Breakbrow", x = 77.1, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12248, title = "Vordrassil's Sapling", npc = 27295, npcName = "Hierophant Thayreen", x = 31.2, y = 59.5, f = "e" },
					{ t = "turnin", quest = 12250, title = "Vordrassil's Seeds", npc = 27295, npcName = "Hierophant Thayreen", x = 31.2, y = 59.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Zim'Torga", x = 60.0, y = 56.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13099, title = "Just Checkin'", npc = 28527, npcName = "Chronicler To'kini", x = 60.0, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Zim'Torga", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12974, title = "The Champion's Call!", npc = 30007, npcName = "Gurgthock", x = 48.4, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "The Argent Stand", x = 41.6, y = 64.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Light's Breach", x = 32.2, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12789, title = "Into the Breach!", npc = 29137, npcName = "Sergeant Riannah", x = 32.0, y = 74.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12859, title = "This Just In: Fire Still Hot!", npc = 29733, npcName = "Elder Shaman Moky", x = 32.0, y = 75.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12902, title = "In Search Of Answers", npc = 29687, npcName = "Crusader Lord Lantinga", x = 32.2, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12861, title = "Trolls Is Gone Crazy!", npc = 29690, npcName = "Chief Rageclaw", x = 32.2, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12902, title = "In Search Of Answers", x = 34.9, y = 83.9, f = "e" },
					{ t = "accept", quest = 12883, title = "Orders From Drakuru", x = 34.9, y = 83.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Drakuru mobs", count = 1, x = 34.9, y = 81.0, f = "e" },
					{ t = "collect", itemName = "Drakuru \"Lock Openers\"", count = 1, x = 34.9, y = 81.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12883, title = "Orders From Drakuru", npc = 29687, npcName = "Crusader Lord Lantinga", x = 32.2, y = 75.7, f = "e" },
					{ t = "accept", quest = 12884, title = "The Ebon Watch", npc = 29687, npcName = "Crusader Lord Lantinga", x = 32.2, y = 75.7, f = "e" },
					{ t = "accept", quest = 12894, title = "Crusader Forward Camp", npc = 29687, npcName = "Crusader Lord Lantinga", x = 32.2, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12861, title = "Trolls Is Gone Crazy!", npc = 29690, npcName = "Chief Rageclaw", x = 32.2, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12859, title = "This Just In: Fire Still Hot!", npc = 29733, npcName = "Elder Shaman Moky", x = 32.0, y = 75.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Ebon Watch", x = 14.0, y = 73.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12884, title = "The Ebon Watch", npc = 28518, npcName = "Stefan Vadu", x = 14.1, y = 73.8, f = "e" },
					{ t = "accept", quest = 12630, title = "Kickin' Nass and Takin' Manes", npc = 28518, npcName = "Stefan Vadu", x = 14.1, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Withered Trolls", count = 1, x = 15.5, y = 69.8, f = "e" },
					{ t = "collect", itemName = "a Writhing Choker", count = 1, x = 15.5, y = 69.8, f = "e" },
					{ t = "accept", quest = 12633, title = "Darkness Calling", x = 15.5, y = 69.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12630, title = "Kickin' Nass and Takin' Manes", npc = 28518, npcName = "Stefan Vadu", x = 14.1, y = 73.8, f = "e" },
					{ t = "turnin", quest = 12633, title = "Darkness Calling", npc = 28518, npcName = "Stefan Vadu", x = 14.1, y = 73.8, f = "e" },
					{ t = "accept", quest = 12638, title = "Close Call", npc = 28518, npcName = "Stefan Vadu", x = 14.1, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12795, title = "Taking a Stand", npc = 28532, npcName = "Bloodrose Datura", x = 14.3, y = 74.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12637, title = "Close Call", npc = 28518, npcName = "Stefan Vadu", x = 14.1, y = 73.8, f = "e" },
					{ t = "accept", quest = 12643, title = "Silver Lining", npc = 28518, npcName = "Stefan Vadu", x = 14.1, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Putrid Abominations", count = 1, x = 19.9, y = 73.5, f = "e" },
					{ t = "collect", quest = 12643, itemName = "Putrid Abomination Guts", count = 5, oi = 1, x = 19.9, y = 73.5, f = "e" },
					{ t = "collect", quest = 12643, itemName = "Gooey Ghoul Drool", count = 5, oi = 2, x = 19.9, y = 73.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12643, title = "Silver Lining", npc = 28518, npcName = "Stefan Vadu", x = 14.1, y = 73.8, f = "e" },
					{ t = "accept", quest = 12649, title = "Suit Up!", npc = 28518, npcName = "Stefan Vadu", x = 14.1, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12652, title = "Feedin' Da Goolz", npc = 28589, npcName = "Gristlegut", x = 19.9, y = 75.5, f = "e" },
					{ t = "buy", npc = 28589, npcName = "Gristlegut", itemName = "Bitter Plasma", count = 1, x = 19.9, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 20.5, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12652, title = "Feedin' Da Goolz", npc = 28589, npcName = "Gristlegut", x = 19.9, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12649, title = "Suit Up!", npc = 28518, npcName = "Stefan Vadu", x = 14.1, y = 73.8, f = "e" },
					{ t = "accept", quest = 12661, title = "Infiltrating Voltarus", npc = 28518, npcName = "Stefan Vadu", x = 14.1, y = 73.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12894, title = "Crusader Forward Camp", npc = 29689, npcName = "Crusader MacKellar", x = 25.3, y = 64.0, f = "e" },
					{ t = "accept", quest = 12903, title = "That's What Friends Are For...", npc = 29689, npcName = "Crusader MacKellar", x = 25.3, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12901, title = "Making Something Out Of Nothing", npc = 29688, npcName = "Engineer Reed", x = 25.3, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12901, itemName = "Scourge Scrap Metal", count = 10, oi = 1, x = 19.4, y = 61.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12904, title = "Light Won't Grant Me Vengeance", npc = 29455, npcName = "Gerk", x = 17.6, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 15.7, y = 59.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12904, target = "Vargul", count = 15, oi = 1, x = 16.9, y = 58.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12904, title = "Light Won't Grant Me Vengeance", npc = 29455, npcName = "Gerk", x = 17.6, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12912, title = "A Great Storm Approaches", npc = 29647, npcName = "Gymer", x = 19.7, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 25.1, y = 51.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12664, title = "Dark Horizon", npc = 28503, npcName = "Overlord Drakuru", x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 28666, npcName = "Gorebag", x = 29.9, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12664, title = "Dark Horizon", npc = 28503, npcName = "Overlord Drakuru", x = 27.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				note = "Use Stefan's Horn in your bags|use Stefan's Horn##41390",
				goals = {
					{ t = "turnin", quest = 12661, title = "Infiltrating Voltarus", npc = 28518, npcName = "Stefan Vadu", f = "e" },
					{ t = "accept", quest = 12669, title = "So Far, So Bad", npc = 28518, npcName = "Stefan Vadu", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", x = 28.4, y = 44.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12673, title = "It Rolls Downhill", npc = 28503, npcName = "Overlord Drakuru", x = 27.1, y = 46.2, f = "e" },
				},
			},
		},
	})
end

