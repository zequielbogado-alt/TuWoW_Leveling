-- TuWoW_Leveling — Guides/Dailies_Alliance_13.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-the-storm-peaks-the-storm-peaks-full-zone-quest-path-includes-pre-quests-part-3",
		pack = "guides",
		title = "The Storm Peaks Full Zone Quest Path (Includes Pre-Quests) (Parte 3/3)",
		category = "Dailies",
		folder = "The Storm Peaks",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 79,
		zone = 120,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "talk", npc = 29732, npcName = "Fjorlin Frostbrow", map = 120, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12874, item = 42624, itemName = "Battered Storm Hammer", count = 1, map = 120, x = 53.6, y = 35.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12874, target = "The Iron Watcher", count = 1, oi = 1, map = 120, x = 53.5, y = 37.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12874, title = "Fervor of the Frostborn", npc = 29593, npcName = "Yorg Stormheart", map = 120, x = 30.31, y = 74.8, f = "e" },
					{ t = "accept", quest = 12875, title = "An Experienced Guide", npc = 29593, npcName = "Yorg Stormheart", map = 120, x = 30.31, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12876, title = "Unwelcome Guests", npc = 29732, npcName = "Fjorlin Frostbrow", map = 120, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 27.0, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Stormforged mobs inside this cave", count = 1, map = 120, x = 26.3, y = 66.7, f = "e" },
					{ t = "kill", quest = 12876, target = "Stormforged Invaders", count = 10, oi = 1, map = 120, x = 26.3, y = 66.7, f = "e" },
					{ t = "collect", quest = 12930, itemName = "Frostweave Cloth", count = 5, oi = 2, map = 120, x = 26.3, y = 66.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12875, title = "An Experienced Guide", npc = 29751, npcName = "Drom Frostgrip", map = 120, x = 25.2, y = 68.5, f = "e" },
					{ t = "accept", quest = 12877, title = "The Lonesome Watcher", npc = 29751, npcName = "Drom Frostgrip", map = 120, x = 25.2, y = 68.5, f = "e" },
				},
			},
			{
				note = "Go outside to 27.1,67.3",
				goals = {
					{ t = "collect", quest = 12877, itemName = "Frostgrip's Signet Ring", count = 1, oi = 1, map = 120, x = 27.1, y = 67.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12877, title = "The Lonesome Watcher", npc = 30052, npcName = "Creteus", map = 120, x = 39.6, y = 59.8, f = "e" },
					{ t = "accept", quest = 12986, title = "Fate of the Titans", npc = 30052, npcName = "Creteus", map = 120, x = 39.6, y = 59.8, f = "e" },
				},
			},
			{
				note = "Fly to the top of this temple to 52.6,56.9",
				goals = {
					{ t = "goto", map = 120, x = 52.6, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 64.3, y = 46.7, f = "e" },
				},
			},
			{
				note = "Fly to the top of this temple to 53.5,42.3",
				goals = {
					{ t = "goto", map = 120, x = 53.5, y = 42.3, f = "e" },
				},
			},
			{
				note = "Fly to the top of this temple to 45.6,49.2",
				goals = {
					{ t = "goto", map = 120, x = 45.6, y = 49.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12986, title = "Fate of the Titans", npc = 30052, npcName = "Creteus", map = 120, x = 39.6, y = 59.8, f = "e" },
					{ t = "accept", quest = 12878, title = "The Hidden Relic", npc = 30052, npcName = "Creteus", map = 120, x = 39.6, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 41.5, y = 62.1, f = "e" },
				},
			},
			{
				note = "Go inside the cave to 44.5,64.5",
				goals = {
					{ t = "turnin", quest = 12878, title = "The Hidden Relic", map = 120, x = 44.5, y = 64.5, f = "e" },
					{ t = "accept", quest = 12879, title = "Fury of the Frostborn King", map = 120, x = 44.5, y = 64.5, f = "e" },
				},
			},
			{
				note = "Go outside the cave to 38.2,61.7",
				goals = {
					{ t = "turnin", quest = 12879, title = "Fury of the Frostborn King", npc = 30082, npcName = "Creteus", map = 120, x = 38.2, y = 61.7, f = "e" },
					{ t = "accept", quest = 12880, title = "The Master Explorer", npc = 30082, npcName = "Creteus", map = 120, x = 38.2, y = 61.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12880, title = "The Master Explorer", npc = 30382, npcName = "Brann Bronzebeard", map = 120, x = 39.6, y = 56.4, f = "e" },
					{ t = "accept", quest = 12973, title = "The Brothers Bronzebeard", npc = 30382, npcName = "Brann Bronzebeard", map = 120, x = 39.6, y = 56.4, f = "e" },
				},
			},
			{
				note = "Click Brann's Flying Machine next to you",
				goals = {
					{ t = "kill", target = "the dwarves that jump on the plane as you fly", count = 1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12973, title = "The Brothers Bronzebeard", npc = 30401, npcName = "Velog Icebellow", map = 120, x = 30.3, y = 74.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12876, title = "Unwelcome Guests", npc = 29732, npcName = "Fjorlin Frostbrow", map = 120, x = 29.8, y = 75.7, f = "e" },
					{ t = "accept", quest = 12869, title = "Pushed Too Far", npc = 29732, npcName = "Fjorlin Frostbrow", map = 120, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12869, target = "Stormpeak Wyrm", count = 16, oi = 1, map = 120, x = 44.6, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12869, title = "Pushed Too Far", npc = 29732, npcName = "Fjorlin Frostbrow", map = 120, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12930, itemName = "Enchanted Earth", count = 7, oi = 1, map = 120, x = 28.3, y = 29.4, f = "e" },
				},
			},
			{
				note = "Go inside the building to 31.4,38.1",
				goals = {
					{ t = "turnin", quest = 12930, title = "Rare Earth", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 12931, title = "Fighting Back", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 12937, title = "Relief for the Fallen", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "sethome", location = "Bouldercrag's Refuge", text = "Bouldercrag's Refuge", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Stormforged Raiders and Stormforged Reavers", count = 1, map = 120, x = 28.1, y = 36.7, f = "e" },
					{ t = "kill", quest = 12931, target = "Stormforged Attacker", count = 10, oi = 1, map = 120, x = 28.1, y = 36.7, f = "e" },
				},
			},
			{
				note = "Go inside the building to 31.4,38.1",
				goals = {
					{ t = "turnin", quest = 12931, title = "Fighting Back", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
					{ t = "turnin", quest = 12937, title = "Relief for the Fallen", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 12957, title = "Slaves of the Stormforged", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 12964, title = "The Dark Ore", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				note = "Go inside the mine to 27.5,49.7",
				goals = {
					{ t = "kill", quest = 12957, target = "Stormforged Taskmaster", count = 3, oi = 2, map = 120, x = 27.5, y = 49.7, f = "e" },
					{ t = "collect", quest = 12964, itemName = "Dark Ore Sample", count = 5, oi = 1, map = 120, x = 27.5, y = 49.7, f = "e" },
				},
			},
			{
				note = "Go outside and inside the building to 31.4,38.1",
				goals = {
					{ t = "turnin", quest = 12957, title = "Slaves of the Stormforged", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
					{ t = "turnin", quest = 12964, title = "The Dark Ore", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 12965, title = "The Gifts of Loken", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12978, title = "Facing the Storm", npc = 30152, npcName = "Bruor Ironbane", map = 120, x = 31.3, y = 38.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Stormforged mobs", count = 1, map = 120, x = 25.0, y = 42.9, f = "e" },
					{ t = "kill", quest = 12978, target = "Nidavelir Stormforged", count = 10, oi = 1, map = 120, x = 25.0, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 24.0, y = 42.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 26.2, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 24.6, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12978, target = "Nidavelir Stormforged", count = 10, oi = 1, map = 120, x = 25.0, y = 42.9, f = "e" },
					{ t = "collect", item = 42203, itemName = "Dark Armor Plate", count = 1, map = 120, x = 25.0, y = 42.9, f = "e" },
					{ t = "accept", quest = 12979, title = "Armor of Darkness", map = 120, x = 25.0, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12979, itemName = "Dark Armor Sample", count = 4, oi = 1, map = 120, x = 28.7, y = 43.3, f = "e" },
				},
			},
			{
				note = "Go inside the building to 31.4,38.1",
				goals = {
					{ t = "turnin", quest = 12965, title = "The Gifts of Loken", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12978, title = "Facing the Storm", npc = 30152, npcName = "Bruor Ironbane", map = 120, x = 31.3, y = 38.2, f = "e" },
					{ t = "turnin", quest = 12979, title = "Armor of Darkness", npc = 30152, npcName = "Bruor Ironbane", map = 120, x = 31.3, y = 38.2, f = "e" },
					{ t = "accept", quest = 12980, title = "The Armor's Secrets", npc = 30152, npcName = "Bruor Ironbane", map = 120, x = 31.3, y = 38.2, f = "e" },
				},
			},
			{
				note = "The entrance to Mimir's Workshop starts here ,0.5 |c",
				goals = {
					{ t = "goto", map = 120, x = 33.6, y = 39.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 30190, npcName = "Attendant Tock", map = 120, x = 32.0, y = 40.7, f = "e" },
				},
			},
			{
				note = "Leave Mimir's Workshop ,0.5 |c",
				goals = {
					{ t = "goto", map = 120, x = 33.6, y = 39.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12980, title = "The Armor's Secrets", npc = 30152, npcName = "Bruor Ironbane", map = 120, x = 31.3, y = 38.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12984, title = "Valduran the Stormborn", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12984, target = "Valduran the Stormborn", count = 1, oi = 1, map = 120, x = 24.4, y = 52.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12984, title = "Valduran the Stormborn", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 12988, title = "Destroy the Forges!", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12991, title = "Hit Them Where it Hurts", npc = 30152, npcName = "Bruor Ironbane", map = 120, x = 31.3, y = 38.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 29.0, y = 45.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 29.5, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 30.2, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12991, target = "Stormforged Artificer", count = 10, oi = 1, map = 120, x = 30.0, y = 46.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12988, title = "Destroy the Forges!", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12991, title = "Hit Them Where it Hurts", npc = 30152, npcName = "Bruor Ironbane", map = 120, x = 31.3, y = 38.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12993, title = "A Colossal Threat", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12993, itemName = "Click the Colossus Attack Specs", count = 1, oi = 1, map = 120, x = 28.9, y = 44.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12993, itemName = "Click the Colossus Defense Specs", count = 1, oi = 2, map = 120, x = 29.9, y = 45.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12993, title = "A Colossal Threat", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 12998, title = "The Heart of the Storm", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				note = "The entrance to the big round metal door starts here ,0.5 |c |tip It's a big metal hole on in the side of the mountain.",
				goals = {
					{ t = "goto", map = 120, x = 32.4, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 36.2, y = 60.9, f = "e" },
				},
			},
			{
				note = "Go outside ,0.5 |c",
				goals = {
					{ t = "goto", map = 120, x = 32.4, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12998, title = "The Heart of the Storm", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
					{ t = "accept", quest = 13007, title = "The Iron Colossus", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 27.2, y = 35.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13007, target = "Iron Colossus", count = 1, oi = 1, map = 120, x = 27.2, y = 42.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13007, title = "The Iron Colossus", npc = 29801, npcName = "Bouldercrag the Rockshaper", map = 120, x = 31.4, y = 38.1, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-the-storm-peaks-the-sons-of-hodir-reputation-friendly",
		pack = "guides",
		title = "The Sons of Hodir Reputation (Friendly)",
		category = "Dailies",
		folder = "The Storm Peaks",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 120,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13006, title = "Polishing the Helm", map = 120, x = 64.2, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12981, title = "Hot and Cold", map = 120, x = 63.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12977, title = "Blowing Hodir's Horn", map = 120, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13006, itemName = "Viscous Oil", count = 5, oi = 1, map = 120, x = 55.6, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13006, title = "Polishing the Helm", map = 120, x = 64.2, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 42246, itemName = "Essence of Ice", count = 6, map = 120, x = 69.7, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12981, itemName = "Frozen Iron Scrap", count = 6, oi = 1, map = 120, x = 75.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 72.1, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 42780, itemName = "Relic of Ulduar", count = 1, map = 120, x = 67.0, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12981, title = "Hot and Cold", map = 120, x = 63.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12977, title = "Blowing Hodir's Horn", map = 120, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13559, title = "Hodir's Tribute", npc = 32540, npcName = "Lillehoff", map = 120, x = 66.2, y = 61.4, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-the-storm-peaks-the-sons-of-hodir-reputation-honored-pre-quest",
		pack = "guides",
		title = "The Sons of Hodir Reputation (Honored) - Pre-Quest",
		category = "Dailies",
		folder = "The Storm Peaks",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 120,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 13001, title = "Raising Hodir's Spear", npc = 30252, npcName = "Lorekeeper Randvir", map = 120, x = 64.8, y = 59.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13001, itemName = "Stoic Mammoth Hide", count = 3, oi = 2, map = 120, x = 59.0, y = 61.2, f = "e" },
				},
			},
			{
				note = "The entrance to the cave starts here ,0.5 |c |q 13001",
				goals = {
					{ t = "goto", map = 120, x = 55.9, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13001, itemName = "Everfrost Shard", count = 3, oi = 1, map = 120, x = 54.7, y = 60.8, f = "e" },
				},
			},
			{
				note = "Leave the cave ,0.5 |c |q 13001",
				goals = {
					{ t = "goto", map = 120, x = 55.9, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13001, title = "Raising Hodir's Spear", npc = 30252, npcName = "Lorekeeper Randvir", map = 120, x = 64.8, y = 59.1, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-the-storm-peaks-the-sons-of-hodir-reputation-honored",
		pack = "guides",
		title = "The Sons of Hodir Reputation (Honored)",
		category = "Dailies",
		folder = "The Storm Peaks",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 120,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12994, title = "Spy Hunter", npc = 30294, npcName = "Frostworg Denmother", map = 120, x = 63.5, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13006, title = "Polishing the Helm", map = 120, x = 64.2, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13003, title = "Thrusting Hodir's Spear", map = 120, x = 65.1, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12981, title = "Hot and Cold", map = 120, x = 63.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12977, title = "Blowing Hodir's Horn", map = 120, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 57.2, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13006, itemName = "Viscous Oil", count = 5, oi = 1, map = 120, x = 55.6, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 56.6, y = 64.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12994, title = "Spy Hunter", npc = 30294, npcName = "Frostworg Denmother", map = 120, x = 63.5, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13006, title = "Polishing the Helm", map = 120, x = 64.2, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13003, title = "Thrusting Hodir's Spear", map = 120, x = 65.1, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 42246, itemName = "Essence of Ice", count = 6, map = 120, x = 69.7, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12981, itemName = "Frozen Iron Scrap", count = 6, oi = 1, map = 120, x = 75.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 72.1, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 42780, itemName = "Relic of Ulduar", count = 1, map = 120, x = 67.0, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12981, title = "Hot and Cold", map = 120, x = 63.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12977, title = "Blowing Hodir's Horn", map = 120, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13559, title = "Hodir's Tribute", npc = 32540, npcName = "Lillehoff", map = 120, x = 66.2, y = 61.4, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-the-storm-peaks-the-sons-of-hodir-reputation-revered",
		pack = "guides",
		title = "The Sons of Hodir Reputation (Revered)",
		category = "Dailies",
		folder = "The Storm Peaks",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 120,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12994, title = "Spy Hunter", npc = 30294, npcName = "Frostworg Denmother", map = 120, x = 63.5, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13006, title = "Polishing the Helm", map = 120, x = 64.2, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13003, title = "Thrusting Hodir's Spear", map = 120, x = 65.1, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13046, title = "Feeding Arngrim", map = 120, x = 67.6, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12981, title = "Hot and Cold", map = 120, x = 63.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12977, title = "Blowing Hodir's Horn", map = 120, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 57.2, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 56.4, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13006, itemName = "Viscous Oil", count = 5, oi = 1, map = 120, x = 55.6, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 56.6, y = 64.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12994, title = "Spy Hunter", npc = 30294, npcName = "Frostworg Denmother", map = 120, x = 63.5, y = 59.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13006, title = "Polishing the Helm", map = 120, x = 64.2, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13003, title = "Thrusting Hodir's Spear", map = 120, x = 65.1, y = 60.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13046, title = "Feeding Arngrim", map = 120, x = 67.6, y = 59.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 42246, itemName = "Essence of Ice", count = 6, map = 120, x = 69.7, y = 60.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12981, itemName = "Frozen Iron Scrap", count = 6, oi = 1, map = 120, x = 75.3, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 72.1, y = 51.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 42780, itemName = "Relic of Ulduar", count = 1, map = 120, x = 67.0, y = 45.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12981, title = "Hot and Cold", map = 120, x = 63.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12977, title = "Blowing Hodir's Horn", map = 120, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13559, title = "Hodir's Tribute", npc = 32540, npcName = "Lillehoff", map = 120, x = 66.2, y = 61.4, f = "e" },
				},
			},
		},
	})
end

