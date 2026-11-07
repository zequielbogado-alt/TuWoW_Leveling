-- TuWoW_Leveling — Guides/Leveling_Horde_48.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-74-76",
		pack = "guides",
		title = "Northrend (74-76) (Parte 1/4)",
		category = "Leveling",
		faction = "Horde",
		next = "zygor/leveling/h-northrend-74-76-part-2",
		author = "TuWoW & Zygor",
		minLevel = 74,
		maxLevel = 76,
		zone = 115,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 12221, title = "The Forsaken Blight", npc = 26505, npcName = "Doctor Sintar Malefious", map = 115, x = 36.1, y = 48.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12033, title = "Message from the West", npc = 26649, npcName = "Messenger Torvus", map = 115, x = 37.3, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 37.4, y = 46.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12033, title = "Message from the West", npc = 26649, npcName = "Messenger Torvus", map = 115, x = 37.3, y = 46.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11996, title = "Your Presence is Required at Agmar's Hammer", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 11999, title = "Rifle the Bodies", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 12791, title = "The Magical Kingdom of Dalaran", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Agmar's Hammer", f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Agmar's Hammer", map = 115, x = 37.5, y = 45.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11979, title = "The Taunka and the Tauren", npc = 26415, npcName = "Senior Sergeant Juktok", map = 115, x = 36.6, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12040, title = "An Enemy in Arthas", npc = 26653, npcName = "Kilix the Unraveler", map = 115, x = 26.2, y = 50.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 26.1, y = 49.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12040, title = "An Enemy in Arthas", npc = 26653, npcName = "Kilix the Unraveler", map = 115, x = 26.2, y = 50.8, f = "e" },
					{ t = "accept", quest = 12041, title = "The Lost Empire", npc = 26653, npcName = "Kilix the Unraveler", map = 115, x = 26.2, y = 50.8, f = "e" },
				},
			},
			{
				note = "Go outside the cave and southwest to 22.3,54.1",
				goals = {
					{ t = "collect", itemName = "Mage Hunter Personal Effects bags", count = 1, map = 115, x = 22.3, y = 54.1, f = "e" },
					{ t = "collect", quest = 11999, itemName = "Moonrest Gardens Plans", count = 1, oi = 1, map = 115, x = 22.3, y = 54.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12041, title = "The Lost Empire", npc = 26379, npcName = "Overlord Agmar", map = 115, x = 36.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11999, title = "Rifle the Bodies", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 12005, title = "Prevent the Accord", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12005, itemName = "Wind Trader Mu'fah's Remains", count = 1, oi = 1, map = 115, x = 18.4, y = 58.9, f = "e" },
				},
			},
			{
				note = "Go inside the building to 19.4,58.1",
				goals = {
					{ t = "collect", quest = 12005, itemName = "The Scales of Goramosh", count = 1, oi = 2, map = 115, x = 19.4, y = 58.1, f = "e" },
					{ t = "collect", itemName = "Goramosh's Strange Device", count = 1, map = 115, x = 19.4, y = 58.1, f = "e" },
					{ t = "accept", quest = 12059, title = "A Strange Device", map = 115, x = 19.4, y = 58.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12005, title = "Prevent the Accord", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
					{ t = "turnin", quest = 12059, title = "A Strange Device", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 12061, title = "Projections and Plans", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 22.2, y = 54.8, f = "e" },
				},
			},
			{
				note = "Use your Surge Needle Teleporter to go back down to the ground,0.3|use Surge Needle Teleporter##36747|noway|c",
				goals = {
					{ t = "use", item = 36747, itemName = "Surge Needle Teleporter", map = 115, x = 22.6, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12061, title = "Projections and Plans", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 12066, title = "The Focus on the Beach", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12006, title = "Avenge this Atrocity!", npc = 26501, npcName = "Ethenial Moonshadow", map = 115, x = 24.2, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Blue Dragonflight forces at Moonrest Gardens", count = 15, map = 115, x = 20.9, y = 60.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12006, title = "Avenge this Atrocity!", npc = 26501, npcName = "Ethenial Moonshadow", map = 115, x = 24.2, y = 60.1, f = "e" },
					{ t = "accept", quest = 12013, title = "End Arcanimus", npc = 26501, npcName = "Ethenial Moonshadow", map = 115, x = 24.2, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12013, target = "Arcanimus", count = 1, oi = 1, map = 115, x = 20.0, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12013, title = "End Arcanimus", npc = 26501, npcName = "Ethenial Moonshadow", map = 115, x = 24.2, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Ley Line Focus Control Ring", count = 1, map = 115, x = 26.4, y = 65.0, f = "e" },
				},
			},
			{
				note = "Hearth to Agmar's Hammer,1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 115, x = 38.1, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12066, title = "The Focus on the Beach", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 12084, title = "Atop the Woodlands", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12096, title = "Strengthen the Ancients", npc = 26854, npcName = "Earthwarden Grife", map = 115, x = 36.5, y = 47.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12096, item = 36786, itemName = "Bark of the Walkers", count = 3, map = 115, x = 31.2, y = 59.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 30.6, y = 63.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Ley Line Focus Amulet", count = 1, map = 115, x = 32.2, y = 70.6, f = "e" },
					{ t = "collect", itemName = "Lieutenant Ta'zinni's Letter", count = 1, map = 115, x = 32.2, y = 70.6, f = "e" },
					{ t = "accept", quest = 12085, title = "A Letter for Home", map = 115, x = 32.2, y = 70.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 32.2, y = 71.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12096, title = "Strengthen the Ancients", npc = 26854, npcName = "Earthwarden Grife", map = 115, x = 36.5, y = 47.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12084, title = "Atop the Woodlands", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 12106, title = "Search Indu'le Village", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12085, title = "A Letter for Home", npc = 26379, npcName = "Overlord Agmar", map = 115, x = 36.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12106, title = "Search Indu'le Village", map = 115, x = 40.3, y = 66.9, f = "e" },
					{ t = "accept", quest = 12110, title = "The End of the Line", map = 115, x = 40.3, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 39.8, y = 66.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 53.0, y = 66.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12110, title = "The End of the Line", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
					{ t = "accept", quest = 12122, title = "Gaining an Audience", npc = 26471, npcName = "Image of Archmage Aethas Sunreaver", map = 115, x = 38.1, y = 46.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11980, title = "Pride of the Horde", npc = 26180, npcName = "Blood Guard Roh'kill", map = 115, x = 14.2, y = 49.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11979, title = "The Taunka and the Tauren", npc = 26181, npcName = "Emissary Brighthoof", map = 115, x = 12.8, y = 48.5, f = "e" },
					{ t = "accept", quest = 11978, title = "Into the Fold", npc = 26181, npcName = "Emissary Brighthoof", map = 115, x = 12.8, y = 48.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 11980, target = "Anub'ar Ambusher", count = 15, oi = 1, map = 115, x = 15.5, y = 51.2, f = "e" },
					{ t = "collect", quest = 11978, itemName = "Horde Armaments", count = 10, oi = 1, map = 115, x = 15.5, y = 51.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11980, title = "Pride of the Horde", npc = 26180, npcName = "Blood Guard Roh'kill", map = 115, x = 14.2, y = 49.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11978, title = "Into the Fold", npc = 26181, npcName = "Emissary Brighthoof", map = 115, x = 12.8, y = 48.5, f = "e" },
					{ t = "accept", quest = 11983, title = "Blood Oath of the Horde", npc = 26181, npcName = "Emissary Brighthoof", map = 115, x = 12.8, y = 48.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26184, npcName = "Taunka'le Refugee", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11983, title = "Blood Oath of the Horde", npc = 26181, npcName = "Emissary Brighthoof", map = 115, x = 12.8, y = 48.5, f = "e" },
					{ t = "accept", quest = 12008, title = "Agmar's Hammer", npc = 26181, npcName = "Emissary Brighthoof", map = 115, x = 12.8, y = 48.5, f = "e" },
				},
			},
			{
				note = "Hearth to Agmar's Hammer,1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 115, x = 38.1, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12008, title = "Agmar's Hammer", npc = 26379, npcName = "Overlord Agmar", map = 115, x = 36.3, y = 45.6, f = "e" },
					{ t = "accept", quest = 12034, title = "Victory Nears...", npc = 26379, npcName = "Overlord Agmar", map = 115, x = 36.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12034, title = "Victory Nears...", npc = 26415, npcName = "Senior Sergeant Juktok", map = 115, x = 36.6, y = 46.6, f = "e" },
					{ t = "accept", quest = 12036, title = "From the Depths of Azjol-Nerub", npc = 26415, npcName = "Senior Sergeant Juktok", map = 115, x = 36.6, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12039, title = "Black Blood of Yogg-Saron", npc = 26564, npcName = "Borus Ironbender", map = 115, x = 36.6, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12100, title = "Containing the Rot", npc = 26504, npcName = "Soar Hawkfury", map = 115, x = 37.1, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12056, title = "Marked for Death: High Cultist Zangus", npc = 26618, npcName = "Captain Gort", map = 115, x = 35.8, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Blighted Elk and Rabid Grizzlies", count = 1, map = 115, x = 29.0, y = 50.7, f = "e" },
					{ t = "kill", quest = 12100, target = "Infected Wildlife", count = 15, oi = 1, map = 115, x = 29.0, y = 50.7, f = "e" },
					{ t = "collect", quest = 12100, itemName = "Rot Resistant Organ", count = 1, oi = 2, map = 115, x = 29.0, y = 50.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12039, itemName = "Black Blood of Yogg-Saron Sample", count = 10, oi = 1, map = 115, x = 26.5, y = 49.6, f = "e" },
				},
			},
			{
				note = "Go down into the cave to 28.9,49.7",
				goals = {
					{ t = "collect", quest = 12056, itemName = "Head of High Cultist Zangus", count = 1, oi = 1, map = 115, x = 28.9, y = 49.7, f = "e" },
				},
			},
			{
				note = "Inside the cave, go to 26.2,50.4",
				goals = {
					{ t = "goto", map = 115, x = 26.2, y = 50.4, f = "e" },
				},
			},
			{
				note = "Go outside the cave and east to 35.8,48.4",
				goals = {
					{ t = "turnin", quest = 12056, title = "Marked for Death: High Cultist Zangus", npc = 26618, npcName = "Captain Gort", map = 115, x = 35.8, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12100, title = "Containing the Rot", npc = 26504, npcName = "Soar Hawkfury", map = 115, x = 37.1, y = 48.6, f = "e" },
					{ t = "accept", quest = 12101, title = "The Good Doctor...", npc = 26504, npcName = "Soar Hawkfury", map = 115, x = 37.1, y = 48.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12101, title = "The Good Doctor...", npc = 26505, npcName = "Doctor Sintar Malefious", map = 115, x = 36.1, y = 48.9, f = "e" },
					{ t = "accept", quest = 12102, title = "In Search of the Ruby Lilac", npc = 26505, npcName = "Doctor Sintar Malefious", map = 115, x = 36.1, y = 48.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12039, title = "Black Blood of Yogg-Saron", npc = 26564, npcName = "Borus Ironbender", map = 115, x = 36.6, y = 47.2, f = "e" },
					{ t = "accept", quest = 12048, title = "Scourge Armaments", npc = 26564, npcName = "Borus Ironbender", map = 115, x = 36.6, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12036, title = "From the Depths of Azjol-Nerub", npc = 26415, npcName = "Senior Sergeant Juktok", map = 115, x = 36.6, y = 46.6, f = "e" },
					{ t = "accept", quest = 12053, title = "The Might of the Horde", npc = 26415, npcName = "Senior Sergeant Juktok", map = 115, x = 36.6, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12063, title = "Strength of Icemist", npc = 26652, npcName = "Greatmother Icemist", map = 115, x = 35.8, y = 46.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Anub'ar mobs", count = 1, map = 115, x = 26.9, y = 43.3, f = "e" },
					{ t = "collect", quest = 12048, itemName = "Scourge Armament", count = 8, oi = 1, map = 115, x = 26.9, y = 43.3, f = "e" },
					{ t = "collect", itemName = "Flesh-bound Tome", count = 1, map = 115, x = 26.9, y = 43.3, f = "e" },
					{ t = "accept", quest = 12057, title = "The Flesh-Bound Tome", map = 115, x = 26.9, y = 43.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12063, title = "Strength of Icemist", npc = 26733, npcName = "Banthok Icemist", map = 115, x = 22.6, y = 41.7, f = "e" },
					{ t = "accept", quest = 12064, title = "Chains of the Anub'ar", npc = 26733, npcName = "Banthok Icemist", map = 115, x = 22.6, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 24.8, y = 41.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12064, itemName = "Tivax's Key Fragment", count = 1, oi = 2, map = 115, x = 26.6, y = 39.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12064, itemName = "Sinok's Key Fragment", count = 1, oi = 3, map = 115, x = 26.2, y = 44.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12064, itemName = "Anok'ra's Key Fragment", count = 1, oi = 1, map = 115, x = 24.9, y = 43.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12064, title = "Chains of the Anub'ar", npc = 26733, npcName = "Banthok Icemist", map = 115, x = 22.6, y = 41.7, f = "e" },
					{ t = "accept", quest = 12069, title = "Return of the High Chief", npc = 26733, npcName = "Banthok Icemist", map = 115, x = 22.6, y = 41.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12069, itemName = "Fragment of Anub'et'kan's Husk", count = 1, oi = 1, map = 115, x = 25.6, y = 40.9, f = "e" },
				},
			},
			{
				note = "Hearth to Agmar's Hammer,1|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 115, x = 38.1, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12069, title = "Return of the High Chief", npc = 26379, npcName = "Overlord Agmar", map = 115, x = 36.3, y = 45.6, f = "e" },
					{ t = "accept", quest = 12140, title = "All Hail Roanauk!", npc = 26379, npcName = "Overlord Agmar", map = 115, x = 36.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12053, title = "The Might of the Horde", npc = 26415, npcName = "Senior Sergeant Juktok", map = 115, x = 36.6, y = 46.6, f = "e" },
					{ t = "accept", quest = 12071, title = "Attack by Air!", npc = 26415, npcName = "Senior Sergeant Juktok", map = 115, x = 36.6, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12048, title = "Scourge Armaments", npc = 26564, npcName = "Borus Ironbender", map = 115, x = 36.6, y = 47.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12057, title = "The Flesh-Bound Tome", npc = 26618, npcName = "Captain Gort", map = 115, x = 35.8, y = 48.4, f = "e" },
					{ t = "accept", quest = 12115, title = "Koltira and the Language of Death", npc = 26618, npcName = "Captain Gort", map = 115, x = 35.8, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12115, title = "Koltira and the Language of Death", npc = 26581, npcName = "Koltira Deathweaver", map = 115, x = 37.1, y = 46.5, f = "e" },
					{ t = "accept", quest = 12125, title = "In Service of Blood", npc = 26581, npcName = "Koltira Deathweaver", map = 115, x = 37.1, y = 46.5, f = "e" },
					{ t = "accept", quest = 12126, title = "In Service of the Unholy", npc = 26581, npcName = "Koltira Deathweaver", map = 115, x = 37.1, y = 46.5, f = "e" },
					{ t = "accept", quest = 12127, title = "In Service of Frost", npc = 26581, npcName = "Koltira Deathweaver", map = 115, x = 37.1, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12071, title = "Attack by Air!", npc = 26574, npcName = "Valnok Windrager", map = 115, x = 37.2, y = 45.7, f = "e" },
					{ t = "accept", quest = 12072, title = "Blightbeasts be Damned!", npc = 26574, npcName = "Valnok Windrager", map = 115, x = 37.2, y = 45.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26810, npcName = "Roanauk Icemist", map = 115, x = 36.2, y = 45.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12140, title = "All Hail Roanauk!", npc = 26379, npcName = "Overlord Agmar", map = 115, x = 36.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12125, itemName = "Filled Blood Gem", count = 1, oi = 1, map = 115, x = 37.5, y = 64.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 115, x = 27.5, y = 44.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12072, target = "Anub'ar Blightbeast", count = 25, oi = 1, map = 115, x = 27.8, y = 38.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12125, title = "In Service of Blood", npc = 26581, npcName = "Koltira Deathweaver", map = 115, x = 37.1, y = 46.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12072, title = "Blightbeasts be Damned!", npc = 26574, npcName = "Valnok Windrager", map = 115, x = 37.2, y = 45.7, f = "e" },
				},
			},
		},
	})
end

