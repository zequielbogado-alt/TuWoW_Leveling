-- TuWoW_Leveling — Guides/Leveling_Horde_39.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-outland-68-70-part-3",
		pack = "guides",
		title = "Outland (68-70) (Parte 3/3)",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 68,
		maxLevel = 70,
		zone = 1949,
		version = 1,
		steps = {
			{
				note = "Go inside Manaforge Coruu to 49,81.5",
				goals = {
					{ t = "collect", quest = 10330, itemName = "Coruu Access Crystal", count = 1, oi = 1, map = 1953, x = 49.0, y = 81.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10330, title = "Shutting Down Manaforge Coruu", npc = 19840, npcName = "Caledis Brightdawn", f = "e" },
					{ t = "accept", quest = 10200, title = "Return to Thalodien", npc = 19840, npcName = "Caledis Brightdawn", f = "e" },
				},
			},
			{
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
				goals = {
					{ t = "turnin", quest = 10337, title = "When the Cows Come Home", npc = 20464, npcName = "Thadell", f = "e" },
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
					{ t = "kill", quest = 10332, target = "Rhonsus", count = 1, oi = 1, map = 1953, x = 61.3, y = 85.0, f = "e" },
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
				},
			},
			{
				note = "Hearth to Area 52|goto Netherstorm,32.3,65.5,3|use hearthstone##6948|noway|c",
				goals = {
					{ t = "use", item = 6948, itemName = "hearthstone", f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10200, title = "Return to Thalodien", npc = 19468, npcName = "Spymaster Thalodien", map = 1953, x = 32.0, y = 64.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10333, title = "Help Mama Wheeler", npc = 19645, npcName = "Papa Wheeler", map = 1953, x = 33.0, y = 64.7, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10333, title = "Help Mama Wheeler", npc = 19728, npcName = "Mama Wheeler", map = 1953, x = 46.6, y = 56.5, f = "e" },
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
					{ t = "turnin", quest = 10348, title = "New Opportunities", npc = 20810, npcName = "Mehrdad", map = 1953, x = 46.4, y = 56.4, f = "e" },
					{ t = "turnin", quest = 10417, title = "Run a Diagnostic!", npc = 20810, npcName = "Mehrdad", map = 1953, x = 46.4, y = 56.4, f = "e" },
					{ t = "accept", quest = 10418, title = "Deal With the Saboteurs", npc = 20810, npcName = "Mehrdad", map = 1953, x = 46.4, y = 56.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10433, title = "Keeping Up Appearances", npc = 20921, npcName = "Shauly Pore", map = 1953, x = 46.5, y = 56.0, f = "e" },
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
				},
			},
			{
				goals = {
					{ t = "accept", quest = 10234, title = "One Demon's Trash...", npc = 19728, npcName = "Mama Wheeler", map = 1953, x = 46.6, y = 56.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 10234, itemName = "Fel Reaver Part", count = 10, oi = 1, map = 1953, x = 49.0, y = 59.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 10234, title = "One Demon's Trash...", npc = 19728, npcName = "Mama Wheeler", map = 1953, x = 46.6, y = 56.5, f = "e" },
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

