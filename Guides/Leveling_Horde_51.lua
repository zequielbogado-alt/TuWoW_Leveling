-- TuWoW_Leveling — Guides/Leveling_Horde_51.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-northrend-74-76-part-4",
		pack = "guides",
		title = "Northrend (74-76) (Parte 4/4)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 74,
		maxLevel = 76,
		zone = 115,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 12412, title = "My Enemy's Friend", npc = 26860, npcName = "Conqueror Krenna", map = 116, x = 20.7, y = 64.2, f = "e" },
					{ t = "accept", quest = 12413, title = "Attack on Silverbrook", npc = 26860, npcName = "Conqueror Krenna", map = 116, x = 20.7, y = 64.2, f = "e" },
					{ t = "turnin", quest = 12423, title = "Mikhail's Journal", npc = 26860, npcName = "Conqueror Krenna", map = 116, x = 20.7, y = 64.2, f = "e" },
					{ t = "accept", quest = 12424, title = "Gorgonna", npc = 26860, npcName = "Conqueror Krenna", map = 116, x = 20.7, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12424, title = "Gorgonna", npc = 27102, npcName = "Gorgonna", map = 116, x = 21.0, y = 64.0, f = "e" },
					{ t = "accept", quest = 12422, title = "Tactical Clemency", npc = 27102, npcName = "Gorgonna", map = 116, x = 21.0, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12208, title = "Good Troll Hunting", npc = 27266, npcName = "Sergeant Thurkin", map = 116, x = 22.2, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12453, title = "Eyes Above", npc = 27262, npcName = "Windseer Grayhorn", map = 116, x = 22.5, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12208, title = "Good Troll Hunting", npc = 26424, npcName = "Samir", map = 116, x = 16.2, y = 47.6, f = "e" },
					{ t = "accept", quest = 11984, title = "Filling the Cages", npc = 26424, npcName = "Samir", map = 116, x = 16.2, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26429, npcName = "Budd", map = 116, x = 16.4, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 13.2, y = 60.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11984, title = "Filling the Cages", npc = 26424, npcName = "Samir", map = 116, x = 16.2, y = 47.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 11989, title = "Truce?", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11989, item = 38083, itemName = "Dull Carving Knife", count = 1, map = 116, x = 16.5, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11989, title = "Truce?", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
					{ t = "accept", quest = 11990, title = "Vial of Visions", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "buy", npc = 26474, npcName = "Ameenah", itemName = "Imbued Vial", count = 1, map = 116, x = 16.0, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11990, itemName = "Haze Leaf", count = 3, oi = 2, map = 116, x = 14.6, y = 45.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 11990, itemName = "Waterweed Frond", count = 1, oi = 3, map = 116, x = 15.2, y = 40.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11990, title = "Vial of Visions", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
					{ t = "accept", quest = 11991, title = "Subject to Interpretation", npc = 26423, npcName = "Drakuru", map = 116, x = 16.4, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12484, title = "Scourgekabob", npc = 26519, npcName = "Prigmon", map = 116, x = 15.7, y = 46.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12484, item = 38149, itemName = "Scourged Troll Mummy", count = 1, map = 116, x = 15.7, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 16.9, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12484, title = "Scourgekabob", npc = 26604, npcName = "Mack Fearsen", map = 116, x = 16.7, y = 48.3, f = "e" },
					{ t = "accept", quest = 12029, title = "Seared Scourge", npc = 26604, npcName = "Mack Fearsen", map = 116, x = 16.7, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12483, title = "Shimmercap Stew", npc = 26519, npcName = "Prigmon", map = 116, x = 15.7, y = 46.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12483, itemName = "Shimmering Snowcap", count = 5, oi = 2, map = 116, x = 11.1, y = 61.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Ice Serpents", count = 1, map = 116, x = 13.3, y = 58.5, f = "e" },
					{ t = "collect", quest = 12483, itemName = "Ice Serpent Eye", count = 5, oi = 1, map = 116, x = 13.3, y = 58.5, f = "e" },
					{ t = "kill", target = "trolls", count = 1, map = 116, x = 13.3, y = 58.5, f = "e" },
					{ t = "collect", quest = 11991, item = 35799, itemName = "Frozen Mojo", count = 5, map = 116, x = 13.3, y = 58.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 11991, title = "Subject to Interpretation", npc = 26500, npcName = "Image of Drakuru", map = 116, x = 13.2, y = 60.9, f = "e" },
					{ t = "accept", quest = 12007, title = "Sacrifices Must be Made", npc = 26500, npcName = "Image of Drakuru", map = 116, x = 13.2, y = 60.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 12483, itemName = "Sweetroot", count = 5, oi = 3, map = 116, x = 18.4, y = 38.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Warlord Zim'bo", count = 1, map = 116, x = 14.5, y = 38.0, f = "e" },
					{ t = "collect", quest = 12007, item = 35836, itemName = "Zim'bo's Mojo", count = 1, map = 116, x = 14.5, y = 38.0, f = "e" },
				},
			},
			{
				note = "Go up the huge stairs to 17.9,36.5",
				goals = {
					{ t = "collect", quest = 12007, itemName = "Eye of the Prophets", count = 1, oi = 1, map = 116, x = 17.9, y = 36.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12007, title = "Sacrifices Must be Made", npc = 26543, npcName = "Image of Drakuru", map = 116, x = 17.4, y = 36.4, f = "e" },
					{ t = "accept", quest = 12042, title = "Heart of the Ancients", npc = 26543, npcName = "Image of Drakuru", map = 116, x = 17.4, y = 36.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 16.0, y = 29.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12422, title = "Tactical Clemency", npc = 27497, npcName = "Captured Trapper", map = 116, x = 21.9, y = 29.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12413, target = "Silverbrook Defender", count = 8, oi = 1, map = 116, x = 24.0, y = 33.6, f = "e" },
				},
			},
			{
				note = "Go on top of the control station to 36.9,32.4",
				goals = {
					{ t = "turnin", quest = 12042, title = "Heart of the Ancients", map = 116, x = 36.9, y = 32.4, f = "e" },
					{ t = "accept", quest = 12802, title = "My Heart is in Your Hands", map = 116, x = 36.9, y = 32.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Drakkari Defenders", count = 1, map = 116, x = 44.2, y = 30.4, f = "e" },
					{ t = "collect", quest = 12802, item = 36743, itemName = "Desperate Mojo", count = 5, map = 116, x = 44.2, y = 30.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12802, title = "My Heart is in Your Hands", npc = 26701, npcName = "Image of Drakuru", map = 116, x = 45.0, y = 28.4, f = "e" },
					{ t = "accept", quest = 12068, title = "Voices From the Dust", npc = 26701, npcName = "Image of Drakuru", map = 116, x = 45.0, y = 28.4, f = "e" },
				},
			},
			{
				note = "Hearth to Conquest Hold,0.5|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", map = 116, x = 20.9, y = 64.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12413, title = "Attack on Silverbrook", npc = 26860, npcName = "Conqueror Krenna", map = 116, x = 20.7, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12207, title = "Vordrassil's Fall", npc = 27262, npcName = "Windseer Grayhorn", map = 116, x = 22.5, y = 62.8, f = "e" },
					{ t = "accept", quest = 12213, title = "The Darkness Beneath", npc = 27262, npcName = "Windseer Grayhorn", map = 116, x = 22.5, y = 62.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12029, title = "Seared Scourge", npc = 26604, npcName = "Mack Fearsen", map = 116, x = 16.7, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12483, title = "Shimmercap Stew", npc = 26519, npcName = "Prigmon", map = 116, x = 15.7, y = 46.7, f = "e" },
					{ t = "accept", quest = 12190, title = "Say Hello to My Little Friend", npc = 26519, npcName = "Prigmon", map = 116, x = 15.7, y = 46.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Entropic Oozes", count = 1, map = 116, x = 26.5, y = 46.6, f = "e" },
					{ t = "collect", quest = 12207, itemName = "Slime Sample", count = 6, oi = 1, map = 116, x = 26.5, y = 46.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 116, x = 28.6, y = 45.1, f = "e" },
				},
			},
			{
				note = "Go underground to 30.5,43.9",
				goals = {
					{ t = "goto", map = 116, x = 30.5, y = 43.9, f = "e" },
				},
			},
			{
				note = "Go outside the tunnel to 33.3,48.5|n",
				goals = {
					{ t = "goto", map = 116, x = 33.3, y = 48.5, f = "e" },
				},
			},
			{
				note = "Go underground to 32.2,45.8",
				goals = {
					{ t = "goto", map = 116, x = 32.2, y = 45.8, f = "e" },
				},
			},
			{
				note = "Go outside the tunnel to 40.7,52|n",
				goals = {
					{ t = "goto", map = 116, x = 40.7, y = 52.0, f = "e" },
				},
			},
			{
				note = "Go underground to 41.2,54.7",
				goals = {
					{ t = "goto", map = 116, x = 41.2, y = 54.7, f = "e" },
				},
			},
			{
				note = "Go outside the tunnel to 43.8,53.3",
				goals = {
					{ t = "goto", map = 116, x = 43.8, y = 53.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "fpath", text = "Camp Oneqwah", map = 116, x = 65.0, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12415, title = "The Horse Hollerer", npc = 26944, npcName = "Soulok Stormfury", map = 116, x = 65.0, y = 47.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12451, title = "Onward to Camp Oneqwah", npc = 26666, npcName = "Scout Vor'takh", map = 116, x = 65.2, y = 47.7, f = "e" },
					{ t = "accept", quest = 12074, title = "An Expedient Ally", npc = 26666, npcName = "Scout Vor'takh", map = 116, x = 65.2, y = 47.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12195, title = "The Unexpected 'Guest'", npc = 27221, npcName = "Tormak the Scarred", map = 116, x = 65.3, y = 47.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "home", text = "Camp Oneqwah", f = "e" },
				},
			},
			{
				note = "Fly to Conquest Hold,0.5|noway|c",
				goals = {
					{ t = "goto", map = 116, x = 22.0, y = 64.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12425, title = "Ruuna the Blind", npc = 27102, npcName = "Gorgonna", map = 116, x = 21.0, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12207, title = "Vordrassil's Fall", npc = 27262, npcName = "Windseer Grayhorn", map = 116, x = 22.5, y = 62.8, f = "e" },
					{ t = "turnin", quest = 12213, title = "The Darkness Beneath", npc = 27262, npcName = "Windseer Grayhorn", map = 116, x = 22.5, y = 62.8, f = "e" },
					{ t = "turnin", quest = 12453, title = "Eyes Above", npc = 27262, npcName = "Windseer Grayhorn", map = 116, x = 22.5, y = 62.8, f = "e" },
					{ t = "accept", quest = 12229, title = "A Possible Link", npc = 27262, npcName = "Windseer Grayhorn", map = 116, x = 22.5, y = 62.8, f = "e" },
					{ t = "accept", quest = 12231, title = "The Bear God's Offspring", npc = 27262, npcName = "Windseer Grayhorn", map = 116, x = 22.5, y = 62.8, f = "e" },
				},
			},
			{
				note = "Fly to Camp Oneqwah,0.5|noway|c",
				goals = {
					{ t = "goto", map = 116, x = 64.9, y = 46.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Silvercoat Stags", count = 1, map = 116, x = 60.4, y = 54.3, f = "e" },
					{ t = "collect", quest = 12195, itemName = "Mature Stag Horn", count = 5, oi = 1, map = 116, x = 60.4, y = 54.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 27275, npcName = "Kodian", map = 116, x = 66.9, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Redfang furbolgs", count = 1, map = 116, x = 63.6, y = 57.9, f = "e" },
					{ t = "collect", quest = 12229, itemName = "Crazed Furbolg Blood", count = 8, oi = 1, map = 116, x = 63.6, y = 57.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 27274, npcName = "Orsonn", map = 116, x = 48.1, y = 58.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12425, title = "Ruuna the Blind", npc = 27581, npcName = "Ruuna the Blind", map = 116, x = 44.0, y = 47.9, f = "e" },
					{ t = "accept", quest = 12328, title = "Ruuna's Request", npc = 27581, npcName = "Ruuna the Blind", map = 116, x = 44.0, y = 47.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Fern Feeder Moths", count = 1, map = 116, x = 46.8, y = 35.7, f = "e" },
					{ t = "collect", quest = 12328, itemName = "Gossamer Dust", count = 4, oi = 1, map = 116, x = 46.8, y = 35.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12328, title = "Ruuna's Request", npc = 27581, npcName = "Ruuna the Blind", map = 116, x = 44.0, y = 47.9, f = "e" },
					{ t = "accept", quest = 12327, title = "Out of Body Experience", npc = 27581, npcName = "Ruuna the Blind", map = 116, x = 44.0, y = 47.9, f = "e" },
				},
			},
			{
				note = "Drink the Gossamer Potion in your bags next to Ruuna's Crystal Ball right next to you|use Gossamer Potion##37661",
				goals = {
					{ t = "use", item = 37661, itemName = "Gossamer Potion", f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 76, f = "e" },
				},
			},
		},
	})
end

