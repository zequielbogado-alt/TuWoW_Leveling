-- TuWoW_Leveling — Guides/Leveling_Alliance_38.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-68-70-part-2",
		pack = "guides",
		title = "Levels (68-70) (Parte 2/3)",
		category = "Leveling",
		faction = "Alliance",
		next = "zygor/leveling/a-levels-68-70-part-3",
		author = "TuWoW & Zygor",
		minLevel = 68,
		maxLevel = 70,
		zone = 1949,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "collect", quest = 10262, itemName = "Zaxxis Insignia", count = 10, oi = 1, map = 1953, x = 30.2, y = 75.5, f = "e" },
					{ t = "collect", quest = 10206, itemName = "Ethereal Technology", count = 10, oi = 1, map = 1953, x = 30.2, y = 75.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10206, title = "Pick Your Part", npc = 19645, npcName = "Papa Wheeler", map = 1953, x = 33.0, y = 64.7, f = "e" },
					{ t = "accept", quest = 10232, title = "In A Scrap With The Legion", npc = 19645, npcName = "Papa Wheeler", map = 1953, x = 33.0, y = 64.7, f = "e" },
					{ t = "accept", quest = 10333, title = "Help Mama Wheeler", npc = 19645, npcName = "Papa Wheeler", map = 1953, x = 33.0, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10262, title = "A Heap of Ethereals", npc = 19880, npcName = "Nether-Stalker Khay'ji", map = 1953, x = 32.4, y = 64.2, f = "e" },
					{ t = "accept", quest = 10205, title = "Warp-Raider Nesaad", npc = 19880, npcName = "Nether-Stalker Khay'ji", map = 1953, x = 32.4, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10313, title = "Measuring Warp Energies", npc = 19466, npcName = "Exarch Orelis", map = 1953, x = 32.1, y = 64.2, f = "e" },
					{ t = "turnin", quest = 10245, title = "B'naar Console Transcription", npc = 19467, npcName = "Anchorite Karja", map = 1953, x = 32.1, y = 64.2, f = "e" },
					{ t = "accept", quest = 10299, title = "Shutting Down Manaforge B'naar", npc = 19467, npcName = "Anchorite Karja", map = 1953, x = 32.1, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 69, f = "e" },
				},
			},
			{
				note = "Go inside Manaforge B'naar to 23.3,68.6",
				goals = {
					{ t = "collect", quest = 10299, itemName = "B'naar Access Crystal", count = 1, oi = 2, map = 1953, x = 23.9, y = 70.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 23.2, y = 68.1, f = "e" },
				},
			},
			{
				note = "Go outside to 32.1,64.2",
				goals = {
					{ t = "turnin", quest = 10299, title = "Shutting Down Manaforge B'naar", npc = 19467, npcName = "Anchorite Karja", map = 1953, x = 32.1, y = 64.2, f = "e" },
					{ t = "accept", quest = 10321, title = "Shutting Down Manaforge Coruu", npc = 19467, npcName = "Anchorite Karja", map = 1953, x = 32.1, y = 64.2, f = "e" },
					{ t = "accept", quest = 10246, title = "Attack on Manaforge Coruu", npc = 19466, npcName = "Exarch Orelis", map = 1953, x = 32.1, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10205, npc = 19641, target = "Warp-Raider Nesaad", count = 1, oi = 1, map = 1953, x = 28.2, y = 79.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10205, title = "Warp-Raider Nesaad", npc = 19880, npcName = "Nether-Stalker Khay'ji", map = 1953, x = 32.4, y = 64.2, f = "e" },
					{ t = "accept", quest = 10266, title = "Request for Assistance", npc = 19880, npcName = "Nether-Stalker Khay'ji", map = 1953, x = 32.4, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10246, target = "Sunfury Arcanist", count = 8, oi = 2, map = 1953, x = 45.9, y = 79.4, f = "e" },
				},
			},
			{
				note = "Go inside Manaforge Coruu to 49,81.5",
				goals = {
					{ t = "kill", quest = 10246, target = "Sunfury Researcher", count = 5, oi = 1, map = 1953, x = 49.0, y = 81.5, f = "e" },
					{ t = "collect", quest = 10321, item = 29396, itemName = "Coruu Access Crystal", count = 1, map = 1953, x = 49.0, y = 81.5, f = "e" },
				},
			},
			{
				note = "Go outside to 57.7,85.2",
				goals = {
					{ t = "accept", quest = 10334, title = "Needs More Cowbell", npc = 20464, npcName = "Thadell", map = 1953, x = 57.7, y = 85.2, f = "e" },
					{ t = "accept", quest = 10331, title = "Indispensable Tools", npc = 20463, npcName = "Apprentice Andrethan", map = 1953, x = 57.7, y = 85.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10184, title = "Malevolent Remnants", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "turnin", quest = 10174, title = "Curse of the Violet Tower", npc = 19644, npcName = "Image of Archmage Vargoth", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "accept", quest = 10188, title = "The Sigil of Krasus", npc = 19644, npcName = "Image of Archmage Vargoth", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "accept", quest = 10185, title = "A Fate Worse Than Death", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "accept", quest = 10343, title = "The Unending Invasion", npc = 19489, npcName = "Lieutenant-Sorcerer Morran", map = 1953, x = 57.5, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10334, title = "Needs More Cowbell", npc = 20415, npcName = "Bessy", map = 1953, x = 59.1, y = 78.8, f = "e" },
					{ t = "accept", quest = 10337, title = "When the Cows Come Home", npc = 20415, npcName = "Bessy", map = 1953, x = 59.1, y = 78.8, f = "e" },
				},
			},
			{
				note = "At 57.7,85.2",
				goals = {
					{ t = "turnin", quest = 10337, title = "When the Cows Come Home", npc = 20464, npcName = "Thadell", map = 1953, x = 57.7, y = 85.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Belmara's Tome", count = 1, map = 1953, x = 58.4, y = 88.3, f = "e" },
					{ t = "accept", quest = 10305, title = "Abjurist Belmara", map = 1953, x = 58.4, y = 88.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Cohlien's Cap", count = 1, map = 1953, x = 59.6, y = 87.7, f = "e" },
					{ t = "accept", quest = 10307, title = "Cohlien Frostweaver", map = 1953, x = 59.6, y = 87.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Dathric's Blade", count = 1, map = 1953, x = 60.4, y = 88.0, f = "e" },
					{ t = "accept", quest = 10182, title = "Battle-Mage Dathric", map = 1953, x = 60.4, y = 88.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Luminrath's Mantle", count = 1, map = 1953, x = 59.9, y = 85.6, f = "e" },
					{ t = "accept", quest = 10306, title = "Conjurer Luminrath", map = 1953, x = 59.9, y = 85.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10331, itemName = "Smithing Hammer", count = 1, oi = 1, map = 1953, x = 61.0, y = 85.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10331, title = "Indispensable Tools", npc = 20463, npcName = "Apprentice Andrethan", map = 1953, x = 57.7, y = 85.2, f = "e" },
					{ t = "accept", quest = 10332, title = "Master Smith Rhonsus", npc = 20463, npcName = "Apprentice Andrethan", map = 1953, x = 57.7, y = 85.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10184, title = "Malevolent Remnants", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "accept", quest = 10312, title = "The Annals of Kirin'Var", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10332, npc = 20410, target = "Rhonsus", count = 1, oi = 1, map = 1953, x = 61.3, y = 85.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10332, title = "Master Smith Rhonsus", npc = 20463, npcName = "Apprentice Andrethan", map = 1953, x = 57.7, y = 85.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 56.9, y = 86.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 56.4, y = 87.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10343, itemName = "Mana Bomb Fragment", count = 1, oi = 1, map = 1953, x = 55.7, y = 87.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 55.1, y = 87.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 55.5, y = 86.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10185, target = "Mana Seeker", count = 10, oi = 1, map = 1953, x = 55.5, y = 86.7, f = "e" },
					{ t = "kill", quest = 10185, target = "Mageslayer", count = 10, oi = 2, map = 1953, x = 55.5, y = 86.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10305, title = "Abjurist Belmara", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "turnin", quest = 10185, title = "A Fate Worse Than Death", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "turnin", quest = 10307, title = "Cohlien Frostweaver", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "turnin", quest = 10182, title = "Battle-Mage Dathric", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "turnin", quest = 10306, title = "Conjurer Luminrath", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "turnin", quest = 10343, title = "The Unending Invasion", npc = 19489, npcName = "Lieutenant-Sorcerer Morran", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "accept", quest = 10239, title = "Potential Energy Source", npc = 19489, npcName = "Lieutenant-Sorcerer Morran", map = 1953, x = 57.5, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10312, itemName = "Annals of Kirin'Var", count = 1, oi = 1, map = 1953, x = 60.4, y = 88.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10312, title = "The Annals of Kirin'Var", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "accept", quest = 10316, title = "Searching for Evidence", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10316, title = "Searching for Evidence", map = 1953, x = 60.3, y = 78.0, f = "e" },
					{ t = "accept", quest = 10314, title = "A Lingering Suspicion", map = 1953, x = 60.3, y = 78.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10314, itemName = "Loathsome Remnant", count = 10, oi = 1, map = 1953, x = 59.8, y = 79.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10314, title = "A Lingering Suspicion", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "accept", quest = 10319, title = "Capturing the Phylactery", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10319, itemName = "Naberius's Phylactery", count = 1, oi = 1, map = 1953, x = 59.9, y = 80.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10319, title = "Capturing the Phylactery", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10239, itemName = "Energy Isolation Cube", count = 10, oi = 1, map = 1953, x = 51.1, y = 82.5, f = "e" },
					{ t = "collect", quest = 10188, itemName = "Sigil of Krasus", count = 1, oi = 1, map = 1953, x = 51.1, y = 82.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10188, title = "The Sigil of Krasus", npc = 19644, npcName = "Image of Archmage Vargoth", map = 1953, x = 51.1, y = 80.7, f = "e" },
					{ t = "accept", quest = 10192, title = "Krasus's Compendium", npc = 19644, npcName = "Image of Archmage Vargoth", map = 1953, x = 51.1, y = 80.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10239, title = "Potential Energy Source", npc = 19489, npcName = "Lieutenant-Sorcerer Morran", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "accept", quest = 10240, title = "Building a Perimeter", npc = 19489, npcName = "Lieutenant-Sorcerer Morran", map = 1953, x = 57.5, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10192, itemName = "Krasus's Compendium - Chapter 2", count = 1, oi = 2, map = 1953, x = 57.6, y = 89.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10192, itemName = "Krasus's Compendium - Chapter 1", count = 1, oi = 1, map = 1953, x = 58.6, y = 89.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10192, itemName = "Krasus's Compendium - Chapter 3", count = 1, oi = 3, map = 1953, x = 58.8, y = 87.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10192, title = "Krasus's Compendium", npc = 19644, npcName = "Image of Archmage Vargoth", f = "e" },
					{ t = "accept", quest = 10301, title = "Unlocking the Compendium", npc = 19644, npcName = "Image of Archmage Vargoth", f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 59.2, y = 85.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 57.3, y = 82.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 54.3, y = 86.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10240, title = "Building a Perimeter", npc = 19489, npcName = "Lieutenant-Sorcerer Morran", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "accept", quest = 10233, title = "Torching Sunfury Hold", npc = 19489, npcName = "Lieutenant-Sorcerer Morran", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "accept", quest = 10222, title = "The Sunfury Garrison", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10222, target = "Sunfury Archer", count = 10, oi = 1, map = 1953, x = 56.5, y = 78.5, f = "e" },
					{ t = "collect", itemName = "Flaming Torch", count = 1, map = 1953, x = 56.5, y = 78.5, f = "e" },
					{ t = "collect", quest = 10301, itemName = "Heliotrope Oculus", count = 1, oi = 1, map = 1953, x = 56.5, y = 78.5, f = "e" },
				},
			},
			{
				note = "Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455",
				goals = {
					{ t = "use", item = 28455, itemName = "Archmage Vargoth's Staff", f = "e" },
					{ t = "turnin", quest = 10301, title = "Unlocking the Compendium", npc = 19644, npcName = "Image of Archmage Vargoth", f = "e" },
					{ t = "accept", quest = 10209, title = "Summoner Kanthin's Prize", npc = 19644, npcName = "Image of Archmage Vargoth", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10233, title = "Torching Sunfury Hold", npc = 19489, npcName = "Lieutenant-Sorcerer Morran", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "turnin", quest = 10222, title = "The Sunfury Garrison", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
					{ t = "accept", quest = 10223, title = "Down With Daellis", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10223, target = "Master Daellis Dawnstrike", count = 1, oi = 1, map = 1953, x = 56.6, y = 66.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10209, itemName = "Stone of Glacius", count = 1, oi = 1, map = 1953, x = 57.4, y = 64.6, f = "e" },
				},
			},
			{
				note = "Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455",
				goals = {
					{ t = "use", item = 28455, itemName = "Archmage Vargoth's Staff", f = "e" },
					{ t = "turnin", quest = 10209, title = "Summoner Kanthin's Prize", npc = 19644, npcName = "Image of Archmage Vargoth", f = "e" },
					{ t = "accept", quest = 10176, title = "Ar'kelos the Guardian", npc = 19644, npcName = "Image of Archmage Vargoth", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10223, title = "Down With Daellis", npc = 19488, npcName = "Custodian Dieworth", map = 1953, x = 57.5, y = 86.3, f = "e" },
				},
			},
			{
				note = "Go inside the tower to 58.2,86.5",
				goals = {
					{ t = "kill", quest = 10176, target = "Ar'kelos", count = 1, oi = 1, map = 1953, x = 58.2, y = 86.5, f = "e" },
				},
			},
			{
				note = "Go to the top of the tower to 58.3,86.4",
				goals = {
					{ t = "turnin", quest = 10176, title = "Ar'kelos the Guardian", npc = 19481, npcName = "Archmage Vargoth", map = 1953, x = 58.3, y = 86.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10246, title = "Attack on Manaforge Coruu", npc = 19466, npcName = "Exarch Orelis", map = 1953, x = 32.1, y = 64.2, f = "e" },
					{ t = "turnin", quest = 10321, title = "Shutting Down Manaforge Coruu", npc = 19467, npcName = "Anchorite Karja", map = 1953, x = 32.1, y = 64.2, f = "e" },
					{ t = "accept", quest = 10322, title = "Shutting Down Manaforge Duro", npc = 19467, npcName = "Anchorite Karja", map = 1953, x = 32.1, y = 64.2, f = "e" },
					{ t = "accept", quest = 10328, title = "Sunfury Briefings", npc = 19466, npcName = "Exarch Orelis", map = 1953, x = 32.1, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10266, title = "Request for Assistance", npc = 20066, npcName = "Gahruj", map = 1953, x = 46.7, y = 56.9, f = "e" },
					{ t = "accept", quest = 10267, title = "Rightful Repossession", npc = 20066, npcName = "Gahruj", map = 1953, x = 46.7, y = 56.9, f = "e" },
					{ t = "accept", quest = 10311, title = "Drijya Needs Your Help", npc = 20066, npcName = "Gahruj", map = 1953, x = 46.7, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10333, title = "Help Mama Wheeler", npc = 19728, npcName = "Mama Wheeler", map = 1953, x = 46.6, y = 56.5, f = "e" },
					{ t = "accept", quest = 10234, title = "One Demon's Trash...", npc = 19728, npcName = "Mama Wheeler", map = 1953, x = 46.6, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10417, title = "Run a Diagnostic!", npc = 20810, npcName = "Mehrdad", map = 1953, x = 46.4, y = 56.4, f = "e" },
					{ t = "accept", quest = 10348, title = "New Opportunities", npc = 20810, npcName = "Mehrdad", map = 1953, x = 46.4, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10433, title = "Keeping Up Appearances", npc = 20921, npcName = "Shauly Pore", map = 1953, x = 46.5, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10417, itemName = "Diagnostic Results", count = 1, oi = 1, map = 1953, x = 48.2, y = 55.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10348, itemName = "Ivory Bell", count = 15, oi = 1, map = 1953, x = 48.2, y = 53.9, f = "e" },
					{ t = "collect", quest = 10433, itemName = "Ripfang Lynx Pelt", count = 10, oi = 1, map = 1953, x = 48.2, y = 53.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10433, title = "Keeping Up Appearances", npc = 20921, npcName = "Shauly Pore", map = 1953, x = 46.5, y = 56.0, f = "e" },
					{ t = "accept", quest = 10434, title = "The Dynamic Duo", npc = 20921, npcName = "Shauly Pore", map = 1953, x = 46.5, y = 56.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10348, title = "New Opportunities", npc = 20810, npcName = "Mehrdad", map = 1953, x = 46.4, y = 56.4, f = "e" },
					{ t = "turnin", quest = 10417, title = "Run a Diagnostic!", npc = 20810, npcName = "Mehrdad", map = 1953, x = 46.4, y = 56.4, f = "e" },
					{ t = "accept", quest = 10418, title = "Deal With the Saboteurs", npc = 20810, npcName = "Mehrdad", map = 1953, x = 46.4, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10418, target = "Barbscale Crocolisk", count = 8, oi = 1, map = 1953, x = 46.8, y = 53.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10418, title = "Deal With the Saboteurs", npc = 20810, npcName = "Mehrdad", map = 1953, x = 46.4, y = 56.4, f = "e" },
					{ t = "accept", quest = 10423, title = "To the Stormspire", npc = 20810, npcName = "Mehrdad", map = 1953, x = 46.4, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10311, title = "Drijya Needs Your Help", npc = 20281, npcName = "Drijya", map = 1953, x = 48.1, y = 63.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10234, itemName = "Fel Reaver Part", count = 10, oi = 1, map = 1953, x = 48.4, y = 59.3, f = "e" },
					{ t = "kill", quest = 10232, target = "Gan'arg Engineer", count = 15, oi = 2, map = 1953, x = 48.4, y = 59.3, f = "e" },
					{ t = "kill", quest = 10232, target = "Mo'arg Doomsmith", count = 5, oi = 1, map = 1953, x = 48.4, y = 59.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10234, title = "One Demon's Trash...", npc = 19728, npcName = "Mama Wheeler", map = 1953, x = 46.6, y = 56.5, f = "e" },
					{ t = "accept", quest = 10235, title = "Declawing Doomclaw", npc = 19728, npcName = "Mama Wheeler", map = 1953, x = 46.6, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10235, itemName = "Doomclaw's Hand", count = 1, oi = 1, map = 1953, x = 50.7, y = 57.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10235, title = "Declawing Doomclaw", npc = 19728, npcName = "Mama Wheeler", map = 1953, x = 46.6, y = 56.5, f = "e" },
					{ t = "accept", quest = 10237, title = "Warn Area 52!", npc = 19728, npcName = "Mama Wheeler", map = 1953, x = 46.6, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Sunfury Conjurers", count = 1, map = 1953, x = 57.9, y = 63.4, f = "e" },
					{ t = "collect", quest = 10328, itemName = "Sunfury Arcane Briefing", count = 1, oi = 2, map = 1953, x = 57.9, y = 63.4, f = "e" },
					{ t = "kill", target = "Sunfury Bowmen and Sunfury Centurions", count = 1, map = 1953, x = 57.9, y = 63.4, f = "e" },
					{ t = "collect", quest = 10328, itemName = "Sunfury Military Briefing", count = 1, oi = 1, map = 1953, x = 57.9, y = 63.4, f = "e" },
					{ t = "collect", quest = 10267, itemName = "Box of Surveying Equipment", count = 10, oi = 1, map = 1953, x = 57.9, y = 63.4, f = "e" },
				},
			},
			{
				note = "Go inside Manaforge Duro to 60.0,68.5",
				goals = {
					{ t = "collect", quest = 10322, itemName = "Duro Access Crystal", count = 1, oi = 2, map = 1953, x = 60.0, y = 68.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 59.1, y = 66.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10267, title = "Rightful Repossession", npc = 20066, npcName = "Gahruj", map = 1953, x = 46.7, y = 56.9, f = "e" },
					{ t = "accept", quest = 10268, title = "An Audience with the Prince", npc = 20066, npcName = "Gahruj", map = 1953, x = 46.7, y = 56.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10426, title = "Flora of the Eco-Domes", npc = 20871, npcName = "Aurine Moonblaze", map = 1953, x = 42.3, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", target = "Mutated Farahlon Lashers", count = 1, map = 1953, x = 40.4, y = 33.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10426, title = "Flora of the Eco-Domes", npc = 20871, npcName = "Aurine Moonblaze", map = 1953, x = 42.3, y = 32.6, f = "e" },
					{ t = "accept", quest = 10427, title = "Creatures of the Eco-Domes", npc = 20871, npcName = "Aurine Moonblaze", map = 1953, x = 42.3, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 1953, x = 43.7, y = 30.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10427, title = "Creatures of the Eco-Domes", npc = 20871, npcName = "Aurine Moonblaze", map = 1953, x = 42.3, y = 32.6, f = "e" },
					{ t = "accept", quest = 10429, title = "When Nature Goes Too Far", npc = 20871, npcName = "Aurine Moonblaze", map = 1953, x = 42.3, y = 32.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10429, itemName = "Hulking Hydra Heart", count = 1, oi = 1, map = 1953, x = 44.6, y = 28.4, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-levels-68-70-part-3",
		pack = "guides",
		title = "Levels (68-70) (Parte 3/3)",
		category = "Leveling",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 68,
		maxLevel = 70,
		zone = 1949,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "turnin", quest = 10429, title = "When Nature Goes Too Far", npc = 20871, npcName = "Aurine Moonblaze", map = 1953, x = 42.3, y = 32.6, f = "e" },
				},
			},
			{
				note = "Ride the elevating platform up and go to 43.5,35.1",
				goals = {
					{ t = "turnin", quest = 10423, title = "To the Stormspire", npc = 20811, npcName = "Ghabar", map = 1953, x = 43.5, y = 35.1, f = "e" },
					{ t = "accept", quest = 10424, title = "Diagnosis: Critical", npc = 20811, npcName = "Ghabar", map = 1953, x = 43.5, y = 35.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10434, title = "The Dynamic Duo", npc = 20205, npcName = "Audi the Needle", map = 1953, x = 44.7, y = 36.7, f = "e" },
					{ t = "accept", quest = 10435, title = "Retrieving the Goods", npc = 20205, npcName = "Audi the Needle", map = 1953, x = 44.7, y = 36.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10268, title = "An Audience with the Prince", npc = 20084, npcName = "Image of Nexus-Prince Haramad", map = 1953, x = 45.9, y = 36.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "getfp", location = "The Stormspire", text = "The Stormspire", map = 1953, x = 45.3, y = 34.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10424, itemName = "Diagnostic Results", count = 1, oi = 1, map = 1953, x = 47.6, y = 26.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10424, title = "Diagnosis: Critical", npc = 20811, npcName = "Ghabar", map = 1953, x = 43.5, y = 35.1, f = "e" },
					{ t = "accept", quest = 10430, title = "Testing the Prototype", npc = 20811, npcName = "Ghabar", map = 1953, x = 43.5, y = 35.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10430, title = "Testing the Prototype", npc = 20913, npcName = "Tashar", map = 1953, x = 44.7, y = 14.6, f = "e" },
					{ t = "accept", quest = 10436, title = "All Clear!", npc = 20913, npcName = "Tashar", map = 1953, x = 44.7, y = 14.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 10436, target = "Scythetooth Raptor", count = 12, oi = 1, map = 1953, x = 44.0, y = 14.0, f = "e" },
					{ t = "collect", quest = 10435, itemName = "Dome Generator Segment", count = 10, oi = 1, map = 1953, x = 44.0, y = 14.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10436, title = "All Clear!", npc = 20913, npcName = "Tashar", map = 1953, x = 44.7, y = 14.6, f = "e" },
					{ t = "accept", quest = 10440, title = "Success!", npc = 20913, npcName = "Tashar", map = 1953, x = 44.7, y = 14.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10440, title = "Success!", npc = 20811, npcName = "Ghabar", map = 1953, x = 43.5, y = 35.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10435, title = "Retrieving the Goods", npc = 20205, npcName = "Audi the Needle", map = 1953, x = 44.7, y = 36.7, f = "e" },
				},
			},
			{
				note = "Fly to Area 52,0.5|noway|c",
				goals = {
					{ t = "goto", map = 1953, x = 33.9, y = 63.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10232, title = "In A Scrap With The Legion", npc = 19645, npcName = "Papa Wheeler", map = 1953, x = 33.0, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10237, title = "Warn Area 52!", npc = 19570, npcName = "Rocket-Chief Fuselage", map = 1953, x = 32.7, y = 65.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10328, title = "Sunfury Briefings", npc = 19466, npcName = "Exarch Orelis", map = 1953, x = 32.1, y = 64.2, f = "e" },
					{ t = "turnin", quest = 10322, title = "Shutting Down Manaforge Duro", npc = 19467, npcName = "Anchorite Karja", map = 1953, x = 32.1, y = 64.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "level", level = 70, f = "e" },
				},
			},
		},
	})
end

