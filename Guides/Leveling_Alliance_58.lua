-- TuWoW_Leveling — Guides/Leveling_Alliance_58.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-northrend-78-80-part-4",
		pack = "guides",
		title = "Northrend (78-80) (Parte 4/4)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 78,
		maxLevel = 80,
		zone = 119,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 12866, title = "Stemming the Aggressors", npc = 29727, npcName = "Glorthal Stiffbeard", map = 120, x = 29.2, y = 74.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12867, title = "Baby Stealers", npc = 29732, npcName = "Fjorlin Frostbrow", map = 120, x = 29.8, y = 75.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12873, title = "The Frostborn King", npc = 29593, npcName = "Yorg Stormheart", map = 120, x = 30.31, y = 74.8, f = "e" },
					{ t = "accept", quest = 12874, title = "Fervor of the Frostborn", npc = 29593, npcName = "Yorg Stormheart", map = 120, x = 30.31, y = 74.8, f = "e" },
				},
			},
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
					{ t = "home", text = "Bouldercrag's Refuge", f = "e" },
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
					{ t = "kill", target = "Stormforged mobs", count = 1, map = 120, x = 25.0, y = 42.9, f = "e" },
					{ t = "kill", quest = 12978, target = "Nidavelir Stormforged", count = 10, oi = 1, map = 120, x = 25.0, y = 42.9, f = "e" },
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

