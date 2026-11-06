-- TuWoW_Leveling — Guides/Leveling_Horde_38.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-cenarion-field-duty-combat-assignments",
		pack = "guides",
		title = "Cenarion Field Duty Combat Assignments",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1451,
		version = 1,
		steps = {
			{
				label = "Accept_Field_Duty",
				goals = {
					{ t = "accept", quest = 8731, title = "Field Duty", npc = 15540, npcName = "Windcaller Kaldon", map = 1451, x = 49.98, y = 36.34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21143, itemName = "Unsigned Field Duty Papers" },
					{ t = "collect", quest = 8507, item = 23024, itemName = "Prepared Field Duty Papers" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8732, title = "Field Duty Papers", npc = 15612, npcName = "Krug Skullsplit", map = 1451, x = 52.21, y = 68.43, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8507, item = 20810, itemName = "Signed Field Duty Papers", oi = 1 },
				},
			},
			{
				note = "Choose a combat assignment. Combat Assignments require you to kill various elite silithid in Silithus hives.",
				goals = {
					{ t = "turnin", quest = 8507, title = "Field Duty", npc = 15540, npcName = "Windcaller Kaldon", map = 1451, x = 49.98, y = 36.34, f = "e" },
				},
			},
			{
				label = "Begin_Combat_Assignment",
				goals = {
					{ t = "use", item = 20808, itemName = "Combat Assignment" },
				},
			},
			{
				goals = {
					{ t = "use", item = 22650, itemName = "Hive'Zora Dossier" },
					{ t = "use", item = 22648, itemName = "Hive'Ashi Dossier" },
					{ t = "use", item = 22649, itemName = "Hive'Regal Dossier" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21749, itemName = "Combat Task Briefing I" },
					{ t = "accept", quest = 8770, title = "Target: Hive'Ashi Defenders" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21750, itemName = "Combat Task Briefing II" },
					{ t = "accept", quest = 8771, title = "Target: Hive'Ashi Sandstalkers" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20942, itemName = "Combat Task Briefing III" },
					{ t = "accept", quest = 8502, title = "Target: Hive'Ashi Workers" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21248, itemName = "Combat Task Briefing IV" },
					{ t = "accept", quest = 8773, title = "Target: Hive'Zora Reavers" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21249, itemName = "Combat Task Briefing V" },
					{ t = "accept", quest = 8539, title = "Target: Hive'Zora Hive Sisters" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21250, itemName = "Combat Task Briefing VI" },
					{ t = "accept", quest = 8772, title = "Target: Hive'Zora Waywatchers" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21251, itemName = "Combat Task Briefing VII" },
					{ t = "accept", quest = 8687, title = "Target: Hive'Zora Tunnelers" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21252, itemName = "Combat Task Briefing VIII" },
					{ t = "accept", quest = 8774, title = "Target: Hive'Regal Ambushers" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21253, itemName = "Combat Task Briefing IX" },
					{ t = "accept", quest = 8775, title = "Target: Hive'Regal Spitfires" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21255, itemName = "Combat Task Briefing X" },
					{ t = "accept", quest = 8776, title = "Target: Hive'Regal Slavemakers" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21256, itemName = "Combat Task Briefing XI" },
					{ t = "accept", quest = 8777, title = "Target: Hive'Regal Burrowers" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20941, itemName = "Combat Task Briefing XII" },
					{ t = "accept", quest = 8501, title = "Target: Hive'Ashi Stingers" },
				},
			},
			{
				note = "These enemies are elite and may require a group to kill.",
				goals = {
					{ t = "kill", quest = 8770, npc = 11722, target = "Hive'Ashi Defender", count = 30, oi = 1, map = 1451, x = 45.06, y = 25.78, f = "e" },
				},
			},
			{
				label = "Kill_30_Hive'Ashi_Sandstalkers",
				along = true,
				note = "These enemies are elite and may require a group to kill. notinsticky They are stealthed all over the hive.",
				goals = {
					{ t = "kill", quest = 8771, npc = 11723, target = "Hive'Ashi Sandstalker", count = 30, oi = 1, map = 1451, x = 45.06, y = 25.78, f = "e" },
				},
			},
			{
				label = "Kill_30_Hive'Ashi_Workers",
				along = true,
				note = "These enemies are elite and may require a group to kill. notinsticky",
				goals = {
					{ t = "kill", quest = 8502, npc = 11721, target = "Hive'Ashi Worker", count = 30, oi = 1, map = 1451, x = 45.06, y = 25.78, f = "e" },
				},
			},
			{
				label = "Kill_30_Hive'Zora_Reavers",
				along = true,
				note = "These enemies are elite and may require a group to kill. notinsticky",
				goals = {
					{ t = "kill", quest = 8773, npc = 11728, target = "Hive'Zora Reaver", count = 30, oi = 1, map = 1451, x = 25.15, y = 59.72, f = "e" },
				},
			},
			{
				label = "Kill_30_Hive'Zora_Hive_Sisters",
				along = true,
				note = "These enemies are elite and may require a group to kill. notinsticky",
				goals = {
					{ t = "kill", quest = 8539, npc = 11729, target = "Hive'Zora Hive Sister", count = 30, oi = 1, map = 1451, x = 25.15, y = 59.72, f = "e" },
				},
			},
			{
				label = "Kill_30_Hive'Zora_Waywatchers",
				along = true,
				note = "These enemies are elite and may require a group to kill. notinsticky",
				goals = {
					{ t = "kill", quest = 8772, npc = 11725, target = "Hive'Zora Waywatcher", count = 30, oi = 1, map = 1451, x = 25.15, y = 59.72, f = "e" },
				},
			},
			{
				label = "Kill_30_Hive'Zora_Tunnelers",
				along = true,
				note = "These enemies are elite and may require a group to kill. notinsticky They only spawn inside the hive.",
				goals = {
					{ t = "kill", quest = 8687, npc = 11726, target = "Hive'Zora Tunneler", count = 30, oi = 1, map = 1451, x = 25.2, y = 55.37, f = "e" },
				},
			},
			{
				label = "Kill_30_Hive'Regal_Ambushers",
				along = true,
				note = "These enemies are elite and may require a group to kill. notinsticky They are stealthed all over the hive.",
				goals = {
					{ t = "kill", quest = 8774, npc = 11730, target = "Hive'Regal Ambusher", count = 30, oi = 1, map = 1451, x = 57.57, y = 80.69, f = "e" },
				},
			},
			{
				label = "Kill_30_Hive'Regal_Spitfires",
				along = true,
				note = "These enemies are elite and may require a group to kill. notinsticky",
				goals = {
					{ t = "kill", quest = 8775, npc = 11732, target = "Hive'Regal Spitfire", count = 30, oi = 1, map = 1451, x = 57.57, y = 80.69, f = "e" },
				},
			},
			{
				label = "Kill_30_Hive'Regal_Slavemakers",
				along = true,
				note = "These enemies are elite and may require a group to kill. notinsticky",
				goals = {
					{ t = "kill", quest = 8776, npc = 11733, target = "Hive'Regal Slavemaker", count = 30, oi = 1, map = 1451, x = 57.57, y = 80.69, f = "e" },
				},
			},
			{
				label = "Kill_30_Hive'Regal_Burrowers",
				along = true,
				note = "These enemies are elite and may require a group to kill. notinsticky They only spawn inside the hive.",
				goals = {
					{ t = "kill", quest = 8777, npc = 11731, target = "Hive'Regal Burrower", count = 30, oi = 1, map = 1451, x = 62.05, y = 80.4, f = "e" },
				},
			},
			{
				label = "Kill_30_Hive'Ashi_Stingers",
				along = true,
				note = "These enemies are elite and may require a group to kill. notinsticky They only spawn inside the hive.",
				goals = {
					{ t = "kill", quest = 8501, npc = 11698, target = "Hive'Ashi Stinger", count = 30, oi = 1, map = 1451, x = 47.91, y = 26.31, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8770, title = "Target: Hive'Ashi Defenders", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.19, f = "e" },
					{ t = "turnin", quest = 8771, title = "Target: Hive'Ashi Sandstalkers", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.19, f = "e" },
					{ t = "turnin", quest = 8502, title = "Target: Hive'Ashi Workers", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.19, f = "e" },
					{ t = "turnin", quest = 8773, title = "Target: Hive'Zora Reavers", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.19, f = "e" },
					{ t = "turnin", quest = 8539, title = "Target: Hive'Zora Hive Sisters", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.19, f = "e" },
					{ t = "turnin", quest = 8772, title = "Target: Hive'Zora Waywatchers", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.19, f = "e" },
					{ t = "turnin", quest = 8687, title = "Target: Hive'Zora Tunnelers", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.19, f = "e" },
					{ t = "turnin", quest = 8774, title = "Target: Hive'Regal Ambushers", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.19, f = "e" },
					{ t = "turnin", quest = 8775, title = "Target: Hive'Regal Spitfires", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.19, f = "e" },
					{ t = "turnin", quest = 8776, title = "Target: Hive'Regal Slavemakers", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.19, f = "e" },
					{ t = "turnin", quest = 8777, title = "Target: Hive'Regal Burrowers", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.19, f = "e" },
					{ t = "turnin", quest = 8501, title = "Target: Hive'Ashi Stingers", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.19, f = "e" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/h-cenarion-field-duty-tactical-assignments",
		pack = "guides",
		title = "Cenarion Field Duty Tactical Assignments",
		category = "Leveling",
		faction = "Horde",
		author = "TuWoW & Zygor",
		zone = 1451,
		version = 1,
		steps = {
			{
				label = "Accept_Field_Duty",
				goals = {
					{ t = "accept", quest = 8731, title = "Field Duty", npc = 15540, npcName = "Windcaller Kaldon", map = 1451, x = 49.98, y = 36.34, f = "e" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21143, itemName = "Unsigned Field Duty Papers" },
					{ t = "collect", quest = 8507, item = 23024, itemName = "Prepared Field Duty Papers" },
				},
			},
			{
				goals = {
					{ t = "accept", quest = 8732, title = "Field Duty Papers", npc = 15612, npcName = "Krug Skullsplit", map = 1451, x = 52.21, y = 68.43, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", quest = 8507, item = 20810, itemName = "Signed Field Duty Papers", oi = 1 },
				},
			},
			{
				note = "Choose a tactical assignment. Tactical Assignments require you to fight Twilight Hammer elementals or collect reports from Silithus hives.",
				goals = {
					{ t = "turnin", quest = 8507, title = "Field Duty", npc = 15540, npcName = "Windcaller Kaldon", map = 1451, x = 49.98, y = 36.34, f = "e" },
				},
			},
			{
				label = "Begin_Tactical_Assignment",
				goals = {
					{ t = "use", item = 20809, itemName = "Tactical Assignment" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21245, itemName = "Tactical Task Briefing I" },
					{ t = "accept", quest = 8737, title = "Azure Templar" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21751, itemName = "Tactical Task Briefing III" },
					{ t = "accept", quest = 8536, title = "Earthen Templar" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21165, itemName = "Tactical Task Briefing VI" },
					{ t = "accept", quest = 8534, title = "Hive'Zora Scout Report" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21166, itemName = "Tactical Task Briefing VII" },
					{ t = "accept", quest = 8738, title = "Hive'Regal Scout Report" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20944, itemName = "Tactical Task Briefing IX" },
					{ t = "accept", quest = 8740, title = "Twilight Marauders" },
				},
			},
			{
				note = "Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle. Equip all three pieces and interact with the Lesser Wind Stone to summon a Templar. The Templar is random, so you may need to do this more than one time.",
				goals = {
					{ t = "kill", quest = 8737, npc = 15211, target = "Azure Templar", oi = 1, map = 1451, x = 38.29, y = 46.46, f = "e" },
				},
			},
			{
				note = "Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle. Equip all three pieces and interact with the Lesser Wind Stone to summon a Templar. The Templar is random, so you may need to do this more than one time.",
				goals = {
					{ t = "kill", quest = 8536, npc = 15307, target = "Earthen Templar", oi = 1, map = 1451, x = 38.29, y = 46.46, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1451, x = 25.37, y = 55.22 },
					{ t = "goto", text = "Follow the path", map = 1451, x = 26.51, y = 56.73 },
					{ t = "goto", text = "Follow the path down", map = 1451, x = 25.56, y = 61.87 },
					{ t = "collect", quest = 8534, item = 21158, itemName = "Hive'Zora Scout Report", oi = 1, map = 1451, x = 23.63, y = 62.43, f = "e" },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1451, x = 54.88, y = 88.05 },
					{ t = "goto", text = "Follow the path down", map = 1451, x = 53.57, y = 88.96 },
					{ t = "goto", text = "Follow the path down", map = 1451, x = 53.12, y = 93.24 },
					{ t = "collect", quest = 8738, item = 21160, itemName = "Hive'Regal Scout Report", oi = 1, map = 1451, x = 53.71, y = 97.48, f = "e" },
				},
			},
			{
				goals = {
					{ t = "kill", quest = 8740, npc = 15541, target = "Twilight Marauder Morna", oi = 1, map = 1451, x = 57.6, y = 17.9, f = "e" },
				},
			},
			{
				label = "Kill_Twilight_Marauders",
				along = true,
				note = "They spawn with Twilight Marauder Morna.",
				goals = {
					{ t = "kill", quest = 8740, npc = 15542, target = "Twilight Marauder", count = 5, oi = 2, map = 1451, x = 68.76, y = 35.99, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8737, title = "Azure Templar", npc = 15306, npcName = "Bor Wildmane", map = 1451, x = 48.57, y = 37.78, f = "e" },
					{ t = "turnin", quest = 8536, title = "Earthen Templar", npc = 15306, npcName = "Bor Wildmane", map = 1451, x = 48.57, y = 37.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8534, title = "Hive'Zora Scout Report", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
					{ t = "turnin", quest = 8738, title = "Hive'Regal Scout Report", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
					{ t = "turnin", quest = 8740, title = "Twilight Marauders", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
				},
			},
			{
				label = "Open_Followup_Tactical_Assignment",
				goals = {
					{ t = "use", item = 21133, itemName = "Followup Tactical Assignment" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20945, itemName = "Tactical Task Briefing II" },
					{ t = "accept", quest = 8537, title = "Crimson Templar" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20947, itemName = "Tactical Task Briefing IV" },
					{ t = "accept", quest = 8535, title = "Hoary Templar" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20948, itemName = "Tactical Task Briefing V" },
					{ t = "accept", quest = 8538, title = "The Four Dukes" },
				},
			},
			{
				goals = {
					{ t = "use", item = 21167, itemName = "Tactical Task Briefing VIII" },
					{ t = "accept", quest = 8739, title = "Hive'Ashi Scout Report" },
				},
			},
			{
				goals = {
					{ t = "use", item = 20943, itemName = "Tactical Task Briefing X" },
					{ t = "accept", quest = 8498, title = "Twilight Battle Orders" },
				},
			},
			{
				note = "Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle. Equip all three pieces and interact with the Lesser Wind Stone to summon a Templar. The Templar is random, so you may need to do this more than one time.",
				goals = {
					{ t = "kill", quest = 8537, npc = 15209, target = "Crimson Templar", oi = 1, map = 1451, x = 38.29, y = 46.46, f = "e" },
				},
			},
			{
				note = "Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle. Equip all three pieces and interact with the Lesser Wind Stone to summon a Templar. The Templar is random, so you may need to do this more than one time.",
				goals = {
					{ t = "kill", quest = 8535, npc = 15212, target = "Hoary Templar", oi = 1, map = 1451, x = 38.29, y = 46.46, f = "e" },
				},
			},
			{
				note = "Dukes are level 62 elites and will require a group. Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle. Equip all three pieces along with a Medallion of Station and interact with the Wind Stone to summon a Duke. You can acquire a Medalion of Station by bringing 3 Abyssal Crests and 1 Large Brilliant Shard to Aurel Goldleaf next to the mailbox in Cenarion Hold. Abyssal Crests are dropped by templars summoned with a Twilight Cultist set at a Lesser Windstone. The duke is random, so you may need to do this more than one time.",
				goals = {
					{ t = "kill", quest = 8538, npc = 15206, target = "The Duke of Cynders", oi = 1, map = 1451, x = 37.63, y = 44.8, f = "e" },
				},
			},
			{
				label = "Kill_The_Duke_of_Fathoms",
				along = true,
				note = "Dukes are level 62 elites and will require a group. notinsticky Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle. notinsticky Equip all three pieces along with a Medallion of Station and interact with the Wind Stone to summon a Duke. notinsticky You can acquire a Medalion of Station by bringing 3 Abyssal Crests and 1 Large Brilliant Shard to Aurel Goldleaf next to the mailbox in Cenarion Hold. notinsticky Abyssal Crests are dropped by templars summoned with a Twilight Cultist set at a Lesser Windstone. notinsticky The duke is random, so you may need to do this more than one time. notinsticky",
				goals = {
					{ t = "kill", quest = 8538, npc = 15207, target = "The Duke of Fathoms", oi = 2, map = 1451, x = 37.63, y = 44.8, f = "e" },
				},
			},
			{
				label = "Kill_The_Duke_of_Zephyrs",
				along = true,
				note = "Dukes are level 62 elites and will require a group. notinsticky Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle. notinsticky Equip all three pieces along with a Medallion of Station and interact with the Wind Stone to summon a Duke. notinsticky You can acquire a Medalion of Station by bringing 3 Abyssal Crests and 1 Large Brilliant Shard to Aurel Goldleaf next to the mailbox in Cenarion Hold. notinsticky Abyssal Crests are dropped by templars summoned with a Twilight Cultist set at a Lesser Windstone. notinsticky The duke is random, so you may need to do this more than one time. notinsticky",
				goals = {
					{ t = "kill", quest = 8538, npc = 15220, target = "The Duke of Zephyrs", oi = 3, map = 1451, x = 37.63, y = 44.8, f = "e" },
				},
			},
			{
				label = "Kill_The_Duke_of_Shards",
				along = true,
				note = "Dukes are level 62 elites and will require a group. notinsticky Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle. notinsticky Equip all three pieces along with a Medallion of Station and interact with the Wind Stone to summon a Duke. notinsticky You can acquire a Medalion of Station by bringing 3 Abyssal Crests and 1 Large Brilliant Shard to Aurel Goldleaf next to the mailbox in Cenarion Hold. notinsticky Abyssal Crests are dropped by templars summoned with a Twilight Cultist set at a Lesser Windstone. notinsticky The duke is random, so you may need to do this more than one time. notinsticky",
				goals = {
					{ t = "kill", quest = 8538, npc = 15208, target = "The Duke of Shards", oi = 4, map = 1451, x = 37.63, y = 44.8, f = "e" },
				},
			},
			{
				note = "She is stealthed.",
				goals = {
					{ t = "goto", text = "Enter the cave", map = 1451, x = 43.95, y = 16.03 },
					{ t = "collect", quest = 8739, item = 21161, itemName = "Hive'Ashi Scout Report", oi = 1, map = 1451, x = 43.94, y = 13.81, f = "e" },
				},
			},
			{
				note = "She patrols in and between the points indicated with a group of bodyguards. You may need to search around for her, especially during peak hours. She is elite, so you may need a group.",
				goals = {
					{ t = "collect", quest = 8498, item = 20803, itemName = "Twilight Battle Orders", oi = 1, map = 1451, x = 39.29, y = 42.97, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8537, title = "Crimson Templar", npc = 15306, npcName = "Bor Wildmane", map = 1451, x = 48.57, y = 37.78, f = "e" },
					{ t = "turnin", quest = 8535, title = "Hoary Templar", npc = 15306, npcName = "Bor Wildmane", map = 1451, x = 48.57, y = 37.78, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8538, title = "The Four Dukes", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.19, f = "e" },
					{ t = "turnin", quest = 8498, title = "Twilight Battle Orders", npc = 15181, npcName = "Commander Mar'alith", map = 1451, x = 49.2, y = 34.19, f = "e" },
				},
			},
			{
				goals = {
					{ t = "turnin", quest = 8739, title = "Hive'Ashi Scout Report", npc = 15191, npcName = "Windcaller Proudhorn", map = 1451, x = 51.15, y = 38.29, f = "e" },
				},
			},
			{
				goals = {
					{ t = "collect", item = 20809, itemName = "Tactical Assignment" },
				},
			},
		},
	})
end

