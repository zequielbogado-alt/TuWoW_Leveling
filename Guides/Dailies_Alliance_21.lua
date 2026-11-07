-- TuWoW_Leveling — Guides/Dailies_Alliance_21.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/a-dai-speed-gold-runs-level-80-dailies-speed-gold-run-no-atg-dailies",
		pack = "guides",
		title = "Level 80 Dailies Speed Gold Run (No ATG Dailies)",
		category = "Dailies",
		folder = "Speed Gold Runs",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 120,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "accept", quest = 12833, title = "Overstock", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", npc = 29619, target = "Garm Invader", count = 12, map = 120, x = 43.1, y = 81.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12833, title = "Overstock", npc = 29428, npcName = "Ricket", map = 120, x = 40.9, y = 85.3, f = "e" },
				},
			},
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
					{ t = "turnin", quest = 12981, title = "Hot and Cold", map = 120, x = 63.2, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12977, title = "Blowing Hodir's Horn", map = 120, x = 64.1, y = 65.1, f = "e" },
				},
			},
			{
				note = "The Skybreaker flies in a circular pattern using these points:",
				goals = {
					{ t = "accept", quest = 13333, title = "Capture More Dispatches", npc = 30344, npcName = "High Captain Justin Bartlett", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "accept", quest = 13289, title = "That's Abominable!", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "accept", quest = 13323, title = "Drag and Drop", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "accept", quest = 13344, title = "Not a Bug", npc = 29799, npcName = "Thassarian", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "accept", quest = 13300, title = "Slaves to Saronite", npc = 31259, npcName = "Absalan the Pious", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "accept", quest = 13336, title = "Blood of the Chosen", npc = 32302, npcName = "Knight-Captain Drosche", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "accept", quest = 13292, title = "The Solution Solution", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
					{ t = "accept", quest = 13322, title = "Retest Now", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13309, title = "Assault by Air", npc = 31808, npcName = "Ground Commander Koup", map = 120, x = 62.6, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 62.6, y = 50.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13309, title = "Assault by Air", npc = 31808, npcName = "Ground Commander Koup", map = 120, x = 62.6, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13284, title = "Assault by Ground", npc = 31737, npcName = "Skybreaker Squad Leader", map = 120, x = 62.5, y = 51.1, f = "e" },
				},
			},
			{
				note = "The entrance to the cave starts here, go inside the cave ,0.3 |c",
				goals = {
					{ t = "goto", map = 120, x = 57.0, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 56.0, y = 57.6, f = "e" },
				},
			},
			{
				note = "Go outside the cave ,0.3 |c",
				goals = {
					{ t = "goto", map = 120, x = 57.0, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13336, target = "Ymirheim Vrykul", count = 20, oi = 1, map = 120, x = 57.3, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13280, title = "King of the Mountain", npc = 31776, npcName = "Frazzle Geargrinder", map = 120, x = 57.0, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 57.0, y = 62.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 54.9, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13280, title = "King of the Mountain", npc = 31776, npcName = "Frazzle Geargrinder", map = 120, x = 57.0, y = 62.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13284, title = "Assault by Ground", npc = 31808, npcName = "Ground Commander Koup", map = 120, x = 62.6, y = 51.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 43616, itemName = "Abandoned Armor", count = 3, map = 120, x = 69.9, y = 64.3, f = "e" },
					{ t = "collect", item = 43610, itemName = "Abandoned Helm", count = 3, map = 120, x = 69.9, y = 64.3, f = "e" },
					{ t = "collect", item = 43609, itemName = "Pile of Bones", count = 3, map = 120, x = 69.9, y = 64.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 68.8, y = 67.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Chilled Abomination Guts", count = 1, map = 120, x = 69.8, y = 62.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13333, itemName = "Orgrim's Hammer Dispatch", count = 6, oi = 1, map = 120, x = 43.3, y = 58.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13323, itemName = "Orb of Illusion", count = 3, map = 120, x = 53.9, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 54.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13404, title = "Static Shock Troops: the Bombardment", npc = 32444, npcName = "Kibli Killohertz", map = 120, x = 54.0, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 31648, npcName = "Karen No", map = 120, x = 54.0, y = 43.1, f = "e" },
				},
			},
			{
				note = "You fly off in an airplane:",
				goals = {
					{ t = "kill", quest = 13404, target = "Gargoyle Ambusher", count = 20, oi = 3, f = "e" },
					{ t = "kill", quest = 13404, target = "Bombardment Infantry", count = 50, oi = 1, f = "e" },
					{ t = "kill", quest = 13404, target = "Bombardment Captain", count = 10, oi = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13404, title = "Static Shock Troops: the Bombardment", npc = 32444, npcName = "Kibli Killohertz", map = 120, x = 54.0, y = 42.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 44301, itemName = "Tainted Essence", count = 10, map = 120, x = 55.2, y = 29.1, f = "e" },
					{ t = "collect", item = 44304, itemName = "Writhing Mass", count = 1, map = 120, x = 55.2, y = 29.1, f = "e" },
					{ t = "collect", item = 44434, itemName = "Dark Matter", count = 5, map = 120, x = 55.2, y = 29.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 53.8, y = 33.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 49.1, y = 34.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12995, title = "Leave Our Mark", npc = 29804, npcName = "Baron Sliver", map = 120, x = 42.8, y = 24.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13069, title = "Shoot 'Em Up", npc = 30074, npcName = "The Leaper", map = 120, x = 43.6, y = 25.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13071, title = "Vile Like Fire!", npc = 30216, npcName = "Vile", map = 120, x = 43.1, y = 25.2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 33.0, y = 23.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 33.0, y = 27.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 27.2, y = 39.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 28.4, y = 37.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12813, title = "From Their Corpses, Rise!", npc = 29396, npcName = "Setaal Darkmender", map = 120, x = 19.7, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12838, title = "Intelligence Gathering", npc = 29456, npcName = "Aurochs Grimbane", map = 120, x = 19.9, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 12815, title = "No Fly Zone", npc = 29405, npcName = "Uzo Deathcaller", map = 120, x = 19.6, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 40652, itemName = "Scarlet Onslaught Trunk Key", count = 1, map = 120, x = 9.6, y = 44.3, f = "e" },
					{ t = "collect", quest = 12838, itemName = "Onslaught Intel Documents", count = 5, oi = 1, map = 120, x = 9.6, y = 44.3, f = "e" },
				},
			},
			{
				note = "Use your Bone Gryphon in your bags while in Onslaught Harbor|use Bone Gryphon##40600",
				goals = {
					{ t = "use", item = 40600, itemName = "Bone Gryphon", f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 12815, target = "Onslaught Gryphon Rider", count = 10, oi = 1, map = 120, x = 10.2, y = 41.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12813, title = "From Their Corpses, Rise!", npc = 29396, npcName = "Setaal Darkmender", map = 118, x = 19.7, y = 48.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12838, title = "Intelligence Gathering", npc = 29456, npcName = "Aurochs Grimbane", map = 118, x = 19.9, y = 48.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12815, title = "No Fly Zone", npc = 29405, npcName = "Uzo Deathcaller", map = 118, x = 19.6, y = 47.8, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 12995, title = "Leave Our Mark", npc = 29804, npcName = "Baron Sliver", map = 118, x = 42.8, y = 24.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13069, title = "Shoot 'Em Up", npc = 30074, npcName = "The Leaper", map = 118, x = 43.6, y = 25.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13071, title = "Vile Like Fire!", npc = 30216, npcName = "Vile", map = 118, x = 43.1, y = 25.2, f = "e" },
				},
			},
			{
				note = "The Skybreaker flies in a circular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 13333, title = "Capture More Dispatches", npc = 30344, npcName = "High Captain Justin Bartlett", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13289, title = "That's Abominable!", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "turnin", quest = 13323, title = "Drag and Drop", npc = 29799, npcName = "Thassarian", f = "e" },
					{ t = "turnin", quest = 13344, title = "Not a Bug", npc = 29799, npcName = "Thassarian", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13300, title = "Slaves to Saronite", npc = 31259, npcName = "Absalan the Pious", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13336, title = "Blood of the Chosen", npc = 32302, npcName = "Knight-Captain Drosche", f = "e" },
				},
			},
			{
				note = "On the Skybreaker airship:",
				goals = {
					{ t = "turnin", quest = 13292, title = "The Solution Solution", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
					{ t = "turnin", quest = 13322, title = "Retest Now", npc = 30345, npcName = "Chief Engineer Boltwrench", f = "e" },
				},
			},
		},
	})
end

