-- TuWoW_Leveling — Guides/Dailies_Horde_23.lua
-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.

do
	Polestar.RegisterGuide({
		id = "zygor/dailies/h-dai-speed-gold-runs-level-80-dailies-speed-gold-run-no-atg-dailies",
		pack = "guides",
		title = "Level 80 Dailies Speed Gold Run (No ATG Dailies)",
		category = "Dailies",
		folder = "Speed Gold Runs",
		faction = "Horde",
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
					{ t = "kill", quest = 12833, target = "Garm Invader", count = 12, oi = 1, map = 120, x = 43.1, y = 81.2, f = "e" },
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
				note = "Orgrim's Hammer flies in a triangular pattern using these points:",
				goals = {
					{ t = "accept", quest = 13353, title = "Drag and Drop", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
					{ t = "accept", quest = 13365, title = "Not a Bug", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
					{ t = "accept", quest = 13276, title = "That's Abominable!", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "accept", quest = 13331, title = "Keeping the Alliance Blind", npc = 30824, npcName = "Sky-Reaver Korm Blackscar", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "accept", quest = 13330, title = "Blood of the Chosen", npc = 32301, npcName = "Warbringer Davos Rioht", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "accept", quest = 13302, title = "Slaves to Saronite", npc = 31261, npcName = "Brother Keltan", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "accept", quest = 13261, title = "Volatility", npc = 30825, npcName = "Chief Engineer Copperclaw", f = "e" },
					{ t = "accept", quest = 13357, title = "Retest Now", npc = 30825, npcName = "Chief Engineer Copperclaw", f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13310, title = "Assault by Air", npc = 31834, npcName = "Ground Commander Xutjja", map = 120, x = 58.3, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 59.5, y = 45.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13310, title = "Assault by Air", npc = 31834, npcName = "Ground Commander Xutjja", map = 120, x = 58.3, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13301, title = "Assault by Ground", npc = 31833, npcName = "Kor'kron Squad Leader", map = 120, x = 58.2, y = 45.9, f = "e" },
				},
			},
			{
				note = "The entrance to the cave starts here, go inside the cave,0.3|c",
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
				note = "Go outside the cave,0.3|c",
				goals = {
					{ t = "goto", map = 120, x = 57.0, y = 57.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 13330, target = "Ymirheim Vrykul", count = 20, oi = 1, map = 120, x = 57.3, y = 57.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13283, title = "King of the Mountain", npc = 31781, npcName = "Blast Thunderbomb", map = 120, x = 51.9, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 51.9, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 54.9, y = 60.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13283, title = "King of the Mountain", npc = 31781, npcName = "Blast Thunderbomb", map = 120, x = 51.9, y = 57.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13301, title = "Assault by Ground", npc = 31834, npcName = "Ground Commander Xutjja", map = 120, x = 58.3, y = 46.0, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13261, item = 43616, itemName = "Abandoned Armor", count = 3, map = 120, x = 69.9, y = 64.3, f = "e" },
					{ t = "collect", quest = 13261, item = 43610, itemName = "Abandoned Helm", count = 3, map = 120, x = 69.9, y = 64.3, f = "e" },
					{ t = "collect", quest = 13261, item = 43609, itemName = "Pile of Bones", count = 3, map = 120, x = 69.9, y = 64.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 68.8, y = 67.5, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", itemName = "Chilled Abomination Guts", count = 1, map = 120, x = 69.8, y = 62.4, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 13353, itemName = "Orb of Illusion", count = 3, map = 120, x = 53.9, y = 46.1, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 54.3, y = 45.6, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", map = 120, x = 49.4, y = 39.3, f = "e" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 13406, title = "Riding the Wavelength: The Bombardment", npc = 32430, npcName = "Fringe Engineer Tezzla", map = 120, x = 54.0, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "talk", npc = 31839, npcName = "Rizzy Ratchwiggle", map = 120, x = 54.0, y = 36.7, f = "e" },
				},
			},
			{
				note = "You fly off in an airplane:",
				goals = {
					{ t = "kill", quest = 13406, target = "Gargoyle Ambusher", count = 20, oi = 3, f = "e" },
					{ t = "kill", quest = 13406, target = "Bombardment Infantry", count = 50, oi = 1, f = "e" },
					{ t = "kill", quest = 13406, target = "Bombardment Captain", count = 10, oi = 2, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 13406, title = "Riding the Wavelength: The Bombardment", npc = 32430, npcName = "Fringe Engineer Tezzla", map = 120, x = 54.0, y = 36.9, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 44301, itemName = "Tainted Essence", count = 10, map = 120, x = 55.2, y = 29.1, f = "e" },
					{ t = "collect", quest = 13357, item = 44304, itemName = "Writhing Mass", count = 1, map = 120, x = 55.2, y = 29.1, f = "e" },
					{ t = "collect", quest = 13365, item = 44434, itemName = "Dark Matter", count = 5, map = 120, x = 55.2, y = 29.1, f = "e" },
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
				note = "Orgrim's Hammer flies in a triangular pattern using these points:",
				goals = {
					{ t = "turnin", quest = 13353, title = "Drag and Drop", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
					{ t = "turnin", quest = 13365, title = "Not a Bug", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
					{ t = "turnin", quest = 13276, title = "That's Abominable!", npc = 29795, npcName = "Koltira Deathweaver", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "turnin", quest = 13331, title = "Keeping the Alliance Blind", npc = 30824, npcName = "Sky-Reaver Korm Blackscar", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "turnin", quest = 13330, title = "Blood of the Chosen", npc = 32301, npcName = "Warbringer Davos Rioht", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "turnin", quest = 13302, title = "Slaves to Saronite", npc = 31261, npcName = "Brother Keltan", f = "e" },
				},
			},
			{
				note = "On the Orgim's Hammer airship:",
				goals = {
					{ t = "turnin", quest = 13261, title = "Volatility", npc = 30825, npcName = "Chief Engineer Copperclaw", f = "e" },
					{ t = "turnin", quest = 13357, title = "Retest Now", npc = 30825, npcName = "Chief Engineer Copperclaw", f = "e" },
				},
			},
		},
	})
end

