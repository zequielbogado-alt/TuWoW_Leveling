-- TuWoW_Leveling — Guides/Leveling_Alliance_33.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-feralas-and-azshara-52-53",
		pack = "guides",
		title = "Feralas & Azshara",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-ungoro-crater-53-54",
		author = "TuWoW & Zygor",
		minLevel = 52,
		maxLevel = 53,
		zone = 1444,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 7733, title = "Improved Quality", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2943, title = "Return to Troyas", npc = 7764, npcName = "Troyas Moonbreeze", map = 1444, x = 31.78, y = 45.5, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 2879, title = "The Stave of Equinex", npc = 7764, npcName = "Troyas Moonbreeze", map = 1444, x = 31.78, y = 45.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 7003, title = "Zapped Giants", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.81, y = 43.42, f = "e" },
					{ t = "accept", quest = 7721, title = "Fuel for the Zapping", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.81, y = 43.42, f = "e" },
				},
			},
			{
				note = "On Strider enemies. Tall green giants. Makes them non-elite. Item lasts 2 hours. Abandon quest and accept again if you need another.",
				goals = {
					{ t = "use", item = 18904, itemName = "Zorbin's Ultra-Shrinker" },
					{ t = "collect", quest = 7003, item = 18956, itemName = "Miniaturization Residue", count = 15, oi = 1, map = 1444, x = 44.4, y = 49.8, f = "e" },
				},
			},
			{
				label = "Collect_Water_Elemental_Cores",
				along = true,
				note = "Water elementals.",
				goals = {
					{ t = "collect", quest = 7721, item = 18958, itemName = "Water Elemental Core", count = 10, oi = 1, map = 1444, x = 44.2, y = 50.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7003, title = "Zapped Giants", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.81, y = 43.42, f = "e" },
					{ t = "turnin", quest = 7721, title = "Fuel for the Zapping", npc = 14637, npcName = "Zorbin Fandazzle", map = 1444, x = 44.81, y = 43.42, f = "e" },
				},
			},
			{
				note = "Run onto the huge ramp. Careful, elite enemies. Run away after. Needed for quest later.",
				goals = {
					{ t = "goto", text = "Discover Dire Maul", map = 1444, x = 59.12, y = 44.62 },
				},
			},
			{
				note = "Yetis. Skin them. Inside and outside the cave.",
				goals = {
					{ t = "collect", item = 18969, itemName = "Pristine Yeti Hide", map = 1444, x = 53.0, y = 32.0, f = "e" },
					{ t = "use", item = 18969, itemName = "Pristine Yeti Hide" },
					{ t = "accept", quest = 7735, title = "Pristine Yeti Hide", npc = 5299, npcName = "Ferocious Rage Scar", map = 1444, x = 51.4, y = 32.4, f = "e" },
				},
			},
			{
				label = "Collect_Rage_Scar_Yeti_Hides",
				along = true,
				note = "Yetis. notinsticky Inside and outside the cave. notinsticky",
				goals = {
					{ t = "collect", quest = 7733, item = 18947, itemName = "Rage Scar Yeti Hide", count = 10, oi = 1, map = 1444, x = 51.4, y = 32.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Leave the cave", map = 1444, x = 53.32, y = 31.85 },
					{ t = "accept", quest = 2844, title = "The Giant Guardian", npc = 7765, npcName = "Rockbiter", map = 1444, x = 42.38, y = 22.0, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "goto", text = "Jump onto this break in the wall from the nearby ledge", map = 1444, x = 44.62, y = 9.81 },
					{ t = "collect", quest = 3909, item = 11242, itemName = "Evoroot", map = 1444, x = 44.55, y = 10.13, f = "e" },
				},
			},
			{
				note = "Up on the ledge.",
				goals = {
					{ t = "goto", text = "Jump up on the ledge", map = 1444, x = 40.33, y = 11.04 },
					{ t = "goto", text = "Jump across here", map = 1444, x = 40.59, y = 11.45 },
					{ t = "goto", text = "Jump up here", map = 1444, x = 40.97, y = 11.87 },
					{ t = "collect", quest = 2879, item = 9257, itemName = "Samha Essence", map = 1444, x = 40.54, y = 12.65, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2879, item = 9256, itemName = "Imbel Essence", map = 1444, x = 39.93, y = 9.44, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2879, item = 9255, itemName = "Lahassa Essence", map = 1444, x = 37.76, y = 12.17, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2879, item = 9258, itemName = "Byltan Essence", map = 1444, x = 38.5, y = 15.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 9263, itemName = "Troyas' Stave" },
					{ t = "collect", quest = 2879, item = 9306, itemName = "Stave of Equinex", oi = 1, map = 1444, x = 38.87, y = 13.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2879, title = "The Stave of Equinex", map = 1444, x = 38.87, y = 13.23, f = "e" },
					{ t = "accept", quest = 2942, title = "The Morrow Stone", map = 1444, x = 38.87, y = 13.23, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2844, title = "The Giant Guardian", npc = 7774, npcName = "Shay Leafrunner", map = 1444, x = 38.22, y = 10.3, f = "e" },
					{ t = "accept", quest = 2845, title = "Wandering Shay", npc = 7774, npcName = "Shay Leafrunner", map = 1444, x = 38.22, y = 10.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 2845, item = 9189, itemName = "Shay's Bell", oi = 1, map = 1444, x = 38.25, y = 10.29, f = "e" },
				},
			},
			{
				note = "Protect Shay Leafrunner as she follows you. Stay close, she wanders off. Message in chat when she wanders off. When she wanders off. HURRY, timed quest.",
				goals = {
					{ t = "use", item = 9189, itemName = "Shay's Bell" },
					{ t = "complete", quest = 2845, title = "Wandering Shay", note = "Take Shay Leafrunner to Rockbiter's Camp", map = 1444, x = 42.38, y = 22.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 2845, title = "Wandering Shay", npc = 7765, npcName = "Rockbiter", map = 1444, x = 42.38, y = 22.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 4142, title = "A Visit to Gregan", npc = 7775, npcName = "Gregan Brewspewer", map = 1444, x = 45.12, y = 25.57, f = "e" },
				},
			},
			{
				note = "Complete The Videre Elixir quest. DO NOT DRINK IT. Kills you.",
				goals = {
					{ t = "collect", quest = 3909, item = 11243, itemName = "Videre Elixir", oi = 1, map = 1444, x = 45.12, y = 25.57, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "turnin", quest = 2942, title = "The Morrow Stone", npc = 7764, npcName = "Troyas Moonbreeze", map = 1444, x = 31.78, y = 45.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 7733, title = "Improved Quality", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
					{ t = "turnin", quest = 7735, title = "Pristine Yeti Hide", npc = 7852, npcName = "Pratt McGrubben", map = 1444, x = 30.63, y = 42.71, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 5158, title = "Seeking Spiritual Aid", npc = 5901, npcName = "Islen Waterseer", map = 1413, x = 65.83, y = 43.78, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "sethome", location = "Ratchet", map = 1413, x = 62.05, y = 39.41, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3444, item = 10556, itemName = "Stone Circle", oi = 1, map = 1413, x = 62.5, y = 38.54, f = "e" },
				},
			},
			{
				note = "Inside the building.",
				goals = {
					{ t = "accept", quest = 4502, title = "Volcanic Activity", npc = 8496, npcName = "Liv Rizzlefix", map = 1413, x = 62.45, y = 38.74, f = "e" },
				},
			},
			{
				note = "Collect from the bank.",
				goals = {
					{ t = "collect", quest = 3449, item = 10445, itemName = "Drawing Kit", map = 1413, x = 62.64, y = 37.42, f = "e" },
					{ t = "collect", quest = 3449, item = 10444, itemName = "Standard Issue Flare Gun", map = 1413, x = 62.64, y = 37.42, f = "e" },
				},
			},
			{
				note = "Desposit into the bank.",
				goals = {
					{ t = "complete", quest = 3444, title = "The Stone Circle", note = "bank Stone Circle##10556", map = 1413, x = 62.64, y = 37.42, f = "e" },
					{ t = "complete", quest = 4441, title = "Felbound Ancients", note = "bank Eridan's Vial##11682", map = 1413, x = 62.64, y = 37.42, f = "e" },
					{ t = "complete", quest = 4512, title = "A Little Slime Goes a Long Way", note = "bank Filled Cursed Ooze Jar##11947", map = 1413, x = 62.64, y = 37.42, f = "e" },
					{ t = "complete", quest = 4512, title = "A Little Slime Goes a Long Way", note = "bank Filled Tainted Ooze Jar##11949", map = 1413, x = 62.64, y = 37.42, f = "e" },
					{ t = "complete", quest = 978, title = "Moontouched Wildkin", note = "bank Moontouched Feather##12383", map = 1413, x = 62.64, y = 37.42, f = "e" },
					{ t = "complete", quest = 3909, title = "The Videre Elixir", note = "bank Videre Elixir##11243", map = 1413, x = 62.64, y = 37.42, f = "e" },
				},
			},
			{
				note = "Top of the hill.",
				goals = {
					{ t = "accept", quest = 3601, title = "Kim'jael Indeed!", npc = 8420, npcName = "Kim'jael", map = 1447, x = 53.45, y = 21.82, f = "e" },
				},
			},
			{
				note = "Wooden boxes. Some may be empty. Respawn quickly. Careful, enemies can be VERY dangerous.",
				goals = {
					{ t = "collect", quest = 3601, item = 10717, itemName = "Kim'Jael's Compass", oi = 1, map = 1447, x = 56.1, y = 30.1, f = "e" },
					{ t = "collect", quest = 3601, item = 10715, itemName = "Kim'Jael's Scope", oi = 2, map = 1447, x = 56.1, y = 30.1, f = "e" },
					{ t = "collect", quest = 3601, item = 10722, itemName = "Kim'Jael's Stuffed Chicken", oi = 3, map = 1447, x = 56.1, y = 30.1, f = "e" },
					{ t = "collect", quest = 3601, item = 10718, itemName = "Kim'Jael's Wizzlegoober", oi = 4, map = 1447, x = 56.1, y = 30.1, f = "e" },
				},
			},
			{
				note = "Top of the hill.",
				goals = {
					{ t = "turnin", quest = 3601, title = "Kim'jael Indeed!", npc = 8420, npcName = "Kim'jael", map = 1447, x = 53.45, y = 21.82, f = "e" },
					{ t = "accept", quest = 5534, title = "Kim'jael's \"Missing\" Equipment", npc = 8420, npcName = "Kim'jael", map = 1447, x = 53.45, y = 21.82, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3449, item = 10564, itemName = "Rubbing: Rune of Jin'yael", oi = 2, map = 1447, x = 39.56, y = 50.31, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3449, item = 10563, itemName = "Rubbing: Rune of Beth'Amara", oi = 1, map = 1447, x = 36.87, y = 53.19, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3449, item = 10565, itemName = "Rubbing: Rune of Markri", oi = 3, map = 1447, x = 39.3, y = 55.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 3449, item = 10566, itemName = "Rubbing: Rune of Sael'hai", oi = 4, map = 1447, x = 42.34, y = 64.13, f = "e" },
				},
			},
			{
				label = "Collect_Some_Rune",
				along = true,
				note = "Sirens and Myrmidons. Nagas.",
				goals = {
					{ t = "collect", quest = 5534, item = 13815, itemName = "Some Rune", oi = 1, map = 1447, x = 45.4, y = 54.0, f = "e" },
				},
			},
			{
				note = "Top of the hill.",
				goals = {
					{ t = "goto", text = "Follow the path up", map = 1447, x = 45.95, y = 38.62 },
					{ t = "turnin", quest = 5534, title = "Kim'jael's \"Missing\" Equipment", npc = 8420, npcName = "Kim'jael", map = 1447, x = 53.45, y = 21.82, f = "e" },
				},
			},
			{
				note = "Elite enemies in southern Azshara. Avoid them as you run. Run the long way around the Ruins of Eldarath. Don't try to run on the beach.",
				goals = {
					{ t = "complete", quest = 3449, title = "Arcane Runes", note = "Click Here to Continue" },
				},
			},
			{
				note = "Center of the wooden platform. Eventually appears nearby. Sometimes few minutes.",
				goals = {
					{ t = "goto", text = "Run around the Ruins of Eldarath and cross the bridge", map = 1447, x = 62.36, y = 82.0 },
					{ t = "goto", text = "Cross the bridge", map = 1447, x = 65.09, y = 82.32 },
					{ t = "goto", text = "Jump down carefully", map = 1447, x = 74.04, y = 87.38 },
					{ t = "use", item = 10444, itemName = "Standard Issue Flare Gun" },
					{ t = "turnin", quest = 3449, title = "Arcane Runes", npc = 8392, npcName = "Pilot Xiggs Fuselighter", map = 1447, x = 77.8, y = 91.32, f = "e" },
					{ t = "accept", quest = 3461, title = "Return to Tymor", npc = 8392, npcName = "Pilot Xiggs Fuselighter", map = 1447, x = 77.8, y = 91.32, f = "e" },
				},
			},
		},
	})
end

