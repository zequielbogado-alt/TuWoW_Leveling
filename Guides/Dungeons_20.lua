-- TuWoW_Leveling — Guides/Dungeons_20.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-blackrock-depths-52-60",
		pack = "guides",
		title = "Blackrock Depths",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 52,
		maxLevel = 60,
		zone = 1427,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Run down the chain", map = 1427, x = 37.25, y = 94.39 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 35.91, y = 10.0 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Continue down and run down the chain", map = 1427, x = 34.86, y = 99.2 },
					{ t = "goto", text = "Enter the building", map = 1427, x = 32.55, y = 94.94 },
					{ t = "goto", text = "Follow the path", map = 1427, x = 26.88, y = 83.87 },
				},
			},
			{
				note = "Her most dangerous ability is \"Psychic Scream\" which will fear the entire group, possibly leading to adds being pulled. \"Fear Ward\" and \"Tremor Totem\" will come in very handy during this encounter. Fight her in a corner of the room to try and control where your party runs during fear. Dispel her \"Shadow Word: Pain\" when applicable. Interrupt her \"Mana Burn\" when possible also. The \"Prison Cell Key\" is important to loot from her before moving on.",
				goals = {
					{ t = "talk", npc = 9018, npcName = "High Interrogator Gerstahn" },
				},
			},
			{
				note = "This boss can use \"Earth Shock\" which will interrupt any casters spells and prevent casting for 2 seconds. It also casts \"Flame Shock\" which will leave a dot on a party member.",
				goals = {
					{ t = "talk", npc = 9025, npcName = "Lord Roccor" },
				},
			},
			{
				note = "Before engaging him, pull and kill the two packs of hounds patrolling the room with him. Range should keep their distance to avoid being interrupted with \"Pummel\". Other than that, this is a pretty straight forward encounter.",
				goals = {
					{ t = "talk", npc = 9319, npcName = "Houndmaster Grebmar" },
				},
			},
			{
				note = "Clear all enemies along the path he patrols before engaging. This boss hits very hard, so extra healing may be required. Be sure to interrupt his \"Holy Light\" as to not prolong the encounter. Ranged should keep their distance as he will interrupt you otherwise.",
				goals = {
					{ t = "talk", npc = 9056, npcName = "Fineous Darkvire" },
				},
			},
			{
				note = "The most important thing for this encounter is to not get knocked off the platform. Avoid its \"Mighty Blow\" ability to ensure that.",
				goals = {
					{ t = "talk", npc = 9017, npcName = "Lord Incendius" },
				},
			},
			{
				note = "This is an optional boss and may be skipped. Destroy his totems when they are summoned.",
				goals = {
					{ t = "talk", npc = 9024, npcName = "Pyromancer Loregrain" },
				},
			},
			{
				note = "This is an optional boss and may be skipped. He will spawn adds which need to be killed quickly. The tank will need to face him away from the group to prevent damage from \"Magma Splash\".",
				goals = {
					{ t = "talk", npc = 9016, npcName = "Bael'Gar" },
				},
			},
			{
				note = "This boss is optional. During the encounter, he will summon adds which need to be AoE'd down. Aside from the tanks picking up adds, the fight is straight forward.",
				goals = {
					{ t = "talk", npc = 9033, npcName = "General Angerforge" },
				},
			},
			{
				note = "This boss is optional. Have the group spread out as far as possible.",
				goals = {
					{ t = "talk", npc = 8983, npcName = "Golem Lord Argelmach" },
				},
			},
			{
				note = "Purchase 6 Dark Iron Ale Mugs from Plugger and give them to Private Rocknot. This will enrage him and cause Phalanx to burst through the door. The group should spread out as far as possible to avoid \"Thunderclap\". Heavy AoE healing will be needed for the encounter.",
				goals = {
					{ t = "talk", npc = 9502, npcName = "Phalanx" },
				},
			},
			{
				note = "During the encounter, adds will spawn. They will need to be killed before reaching Flamelash.",
				goals = {
					{ t = "talk", npc = 9156, npcName = "Ambassador Flamelash" },
				},
			},
			{
				note = "This is a rare mob that may not be available. Casters need to watch out for its \"Spell Reflection\" ability.",
				goals = {
					{ t = "talk", npc = 8923, npcName = "Panzor the Invincible" },
				},
			},
			{
				note = "To open the door, kill Shadowforge Flame Keepers and collect two Shadowforge Torches. Use them to light the braziers that open the door to Magmus. For this encounter, the tank will need to position Magmus properly. If this doesn't happen, the group will take heavy damage from the flame vents in the room.",
				goals = {
					{ t = "talk", npc = 9938, npcName = "Magmus" },
				},
			},
			{
				note = "During the encounter, your group will need to decide what to do with Princess Moira Bronzebeard. Keep her CC'd if you chose to save her while keeping her away from AoE damage. If you fail to keep her controlled, have a group member dedicated to interrupting her healing abilities. Kill adds then focus on the boss.",
				goals = {
					{ t = "talk", npc = 9019, npcName = "Emperor Dagran Thaurissan" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-scholomance-58-60",
		pack = "guides",
		title = "Scholomance",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 58,
		maxLevel = 60,
		version = 1,
		steps = {
			{
				note = "She has 3 abilities to look out for: \"Curse of Impotence\" reduces magic damage output on the target and can be removed by a Mage or Druid. \"Curse of Weakness\" reduces the melee damage output on the target and can be removed by a Mage or Druid. \"Paralyzing Poison\" should be removed by a Druid, Shaman or Paladin if possible.",
				goals = {
					{ t = "talk", npc = 14861, npcName = "Blood Steward of Kirtonos" },
				},
			},
			{
				note = "This boss is summoned by \"Blood of Innocents\", obtained from Blood Steward of Kirtonos, Doctor Theolen Krastinov and Jandice Barov. Use it on the porch to summon Kirtonos. The tank should keep their back to the wall to prevent knockback. While in human form, he will use various curses that can be dispelled by Mages and Druids. Once he transforms into a Gargoyle, the fight becomes very straight forward.",
				goals = {
					{ t = "talk", npc = 10506, npcName = "Kirtonos the Herald" },
				},
			},
			{
				note = "She will use the ability \"Curse of Blood\" which should be dispelled by Mages and Druids. She will also summon Illusions of herself, which will need to be killed. They cannot be AoE'd so you will need to single target damage all of them.",
				goals = {
					{ t = "talk", npc = 10503, npcName = "Jandice Barov" },
				},
			},
			{
				note = "Carefully clear the area around Rattlegore before engaging. He hits hard, so this fight will be healing intensive. The tank should face him away from the group. The Viewing Room Key comes from this encounter, which lets you progress further into the dungeon.",
				goals = {
					{ t = "talk", npc = 11622, npcName = "Rattlegore" },
				},
			},
			{
				note = "The tank should keep Marduk stationary when possible. Range should stand far enough back to avoid being hit by Defiling Aura. When he casts \"Shadow Shield\", melee will take extra damage each time they hit.",
				goals = {
					{ t = "talk", npc = 10433, npcName = "Marduk Blackpool" },
				},
			},
			{
				note = "Avoid standing in his \"Flamestrikes\" radius when cast.",
				goals = {
					{ t = "talk", npc = 10432, npcName = "Vectus" },
				},
			},
			{
				note = "Clear the area around him before engaging. The tank should face him away from the group. If possible, interrupt his \"Fear\" ability, as well as his \"Frostbolt Volley\".",
				goals = {
					{ t = "talk", npc = 10508, npcName = "Ras Frostwhisper" },
				},
			},
			{
				note = "For this encounter, it is important to interrupt her \"Heal\" ability. Druids and Mages should keep an eye out for \"Call of the Grave\" which sould be dispelled as soon as possible.",
				goals = {
					{ t = "talk", npc = 10505, npcName = "Instructor Malicia" },
				},
			},
			{
				note = "The tank should pull Theolen and keep their back to the wall. The tank should also save defensive abilities for when the boss reaches 50% health. He will gain 50% increased attack speed at that point, making the fight healing intensive.",
				goals = {
					{ t = "talk", npc = 11261, npcName = "Doctor Theolen Krastinov" },
				},
			},
			{
				note = "He should be tanked at the lower level of the room, while all ranged stay at the top level and DPS/Heal from the balcony. Anyone afflicted by \"Volatile Infection\" needs to move away from the rest of the party.",
				goals = {
					{ t = "talk", npc = 10901, npcName = "Lorekeeper Polkelt" },
				},
			},
			{
				note = "The tank should stand with their back to a wall, facing Ravenian away from the group. Melee watch out for its \"Cleave\" and \"Sundering Cleave\" ability.",
				goals = {
					{ t = "talk", npc = 10507, npcName = "The Ravenian" },
				},
			},
			{
				note = "He is accompanied by two skeleton body guards which can be CC'd with either a Priests \"Shackle Undead\" or a Paladins \"Turn Undead\". In the room, there is green liquid on the ground which the group must stay out of. The tank must bull Alexei to max range from range so they don't take damage from \"Unholy Aura\". Mages and Druids must dispel \"Veil of Shadow\" when a party member is afflicted with it.",
				goals = {
					{ t = "talk", npc = 10504, npcName = "Lord Alexei Barov" },
				},
			},
			{
				note = "She used the \"Dominate Mind\" ability on random party members. Use CC abilities on them when it happens. Clear the entire room to avoid pulling adds from her \"Fear\" ability. She also uses the \"Silence\" ability, which will disable nearby casters from using spells.",
				goals = {
					{ t = "talk", npc = 10502, npcName = "Lady Illucia Barov" },
				},
			},
			{
				note = "The tank should keep him where he spawns if possible, while ranged stay stay at the top of the stairs. During the encounter, he will teleport a random player to one of the rooms where previous bosses were. That player will be locked in until the kill all enemies inside. This includes the tank! If the tank is teleported, you will need to kit the boss around the room until they are out. Interrupt \"Arcane Missile\" on rotation. Mages and Druids should dispel \"Improved Shadow Bolt\" as soon as possible.",
				goals = {
					{ t = "talk", npc = 1853, npcName = "Darkmaster Gandling" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-stratholme-live-58-60",
		pack = "guides",
		title = "Stratholme - Live",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 58,
		maxLevel = 60,
		version = 1,
		steps = {
			{
				note = "It's a small wooden box on the ground. Spread out as best you can to avoid being hit by \"Flame Breath\". He will use \"Smoke Bomb\" which will stun anybody caught by it.",
				goals = {
					{ t = "talk", npc = 11058, npcName = "Fras Siabi" },
				},
			},
			{
				note = "This is a rare mob that may not be available. There are two spots he can spawn; Just before Fras Siabi and on the east portion of the map. Interrup its spells when possible.",
				goals = {
					{ t = "talk", npc = 10393, npcName = "Skul" },
				},
			},
			{
				note = "This is a rare mob that may not be available. He can spawn after the rat gate. Spread out a little to avoid being hit with \"Multi-Shot\". He will randomly cast \"Enchanting Lullaby\" on a random player.",
				goals = {
					{ t = "talk", npc = 10558, npcName = "Hearthsinger Forresten" },
				},
			},
			{
				note = "This boss spawns as you walk through the gate at the opposite end to where Timmy the Cruel is. Be sure your health and mana are healed up before passing through the gate. He will have non elite adds along with him.",
				goals = {
					{ t = "talk", npc = 10516, npcName = "The Unforgiven" },
				},
			},
			{
				label = "Kill_Postmaster_Malown",
				along = true,
				note = "To summon this boss, kill \"Stratholme Couriers\" found throughout the instance. Collect the \"Market Row Postbox Keys\". Next, find and open 3 of the locked Mailboxes. Each mailbox will spawn a group of hard-hitting elites. Let the tank open them if possible. On the 3rd, Malown will spawn close to where Fras Siabi was. If you haven't already, clear the area to avoid pulling adds during \"Fear\". Mages and Druids should dispel \"Curse of Tongues\" when possible.",
				goals = {
					{ t = "talk", npc = 11143, npcName = "Postmaster Malown" },
				},
			},
			{
				note = "He will heal while using \"Ravenous Claw\", but other than that the fight is straight forward.",
				goals = {
					{ t = "talk", npc = 10808, npcName = "Timmy the Cruel" },
				},
			},
			{
				note = "During the fight, he will use the \"Lay on Hands\" ability which will heal him significantly. The chest behind him contains the \"Medallion of Faith\" for the quest The Medallion of Faith.",
				goals = {
					{ t = "talk", npc = 11032, npcName = "Malor the Zealous" },
				},
			},
			{
				note = "They are on the floor near boxes in the room. This mob can be skipped if no one in the group needs the \"Bottom Half of Advanced Armorsmithing: Volume II\" for Blacksmithing.",
				goals = {
					{ t = "talk", npc = 11120, npcName = "Crimson Hammersmith" },
				},
			},
			{
				note = "He has no special abilities to account for.",
				goals = {
					{ t = "talk", npc = 10997, npcName = "Cannon Master Willey" },
				},
			},
			{
				note = "His ability \"Burning Winds\" is a high damage DoT that will make this fight healing intensive. If the tank is hit with the ability, the Galford may swap targets.",
				goals = {
					{ t = "talk", npc = 10811, npcName = "Archivist Galford" },
				},
			},
			{
				note = "He uses the \"Domination\" ability on random players in the group. Use CC on them to mitigate any damage they might do to the part. Casters should stand at max range to avoid being feared.",
				goals = {
					{ t = "talk", npc = 10813, npcName = "Balnazzar" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-stratholme-undead-58-60",
		pack = "guides",
		title = "Stratholme - Undead",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 58,
		maxLevel = 60,
		zone = 1423,
		version = 1,
		steps = {
			{
				note = "This requires the Key to the City, which drops from Magistrate barthilas in Stratholme - Live.",
				goals = {
					{ t = "goto", text = "click Elders' Square Service Gate", map = 1423, x = 41.43, y = 17.71 },
				},
			},
			{
				note = "The tank should keep their back to the wall. He uses the \"Mighty Blow\" ability which will knockback the tank.",
				goals = {
					{ t = "talk", npc = 10435, npcName = "Magistrate Barthilas" },
				},
			},
			{
				note = "During the fight, it will summon \"Crypt Scarabs\" which will need to be AoE'd down. It also uses \"Pierce Armor\" on the tank. When this happens, the tank should use damage mitigating abilities.",
				goals = {
					{ t = "talk", npc = 10437, npcName = "Nerub'enkan" },
				},
			},
			{
				note = "They are near the buildings to the right of Baroness Anastari. This mob can be skipped if no one in the group needs the \"Bottom Half of Advanced Armorsmithing: Volume I\" for Blacksmithing.",
				goals = {
					{ t = "talk", npc = 11121, npcName = "Black Guard Swordsmith" },
				},
			},
			{
				note = "She will use the \"Possess\" ability which will mind control a random party member. To break the Possess, you will need to damage the target to 50% health. \"Banshee Curse\" should be dispelled by Mages and Druids. She will also use the \"Silence\" ability randomly throughout the encounter.",
				goals = {
					{ t = "talk", npc = 10436, npcName = "Baroness Anastari" },
				},
			},
			{
				label = "Kill_Stonespine",
				along = true,
				note = "This is a rare mob that may not be available. It uses the \"Vicious Rend\" ability which will inflict heavy damage to the target.",
				goals = {
					{ t = "talk", npc = 10809, npcName = "Stonespine" },
				},
			},
			{
				note = "He uses the ability \"Ice Tomb\" which most of the time will target the tank. DPS should slow when this happen so they don't pull aggro.",
				goals = {
					{ t = "talk", npc = 10438, npcName = "Maleki the Pallid" },
				},
			},
			{
				note = "Clear the room before engaging the boss. Tank him with your back when possible.",
				goals = {
					{ t = "talk", npc = 10439, npcName = "Ramstein the Gorger" },
				},
			},
			{
				note = "The tank should pull him to the right side of the room. Ranged should stand atop the bone piles located throughout the room. Melee stack up behind the boss to avoid the \"Cleave\" ability. When the adds spawn, dps should focus them down before going back to the boss.",
				goals = {
					{ t = "talk", npc = 10440, npcName = "Baron Rivendare" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-dire-maul-east-58-60",
		pack = "guides",
		title = "Dire Maul East",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 58,
		maxLevel = 60,
		zone = 1444,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1444, x = 59.13, y = 44.67 },
					{ t = "goto", text = "Follow the path", map = 1444, x = 59.52, y = 39.51 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.72, y = 38.78 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.15, y = 34.87 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 64.85, y = 30.18 },
				},
			},
			{
				note = "He drops the \"Crescent Key\" which is needed for progression in the dungeon. To start, engaging him will cause 4 Wildspawn Imps to spawn. AoE them down as quickly as possible. Interrupt his \"Fireball\" ability when possible. When he has the \"Spirit of Runn Tum\" buff, he has a 50% chance to reflect spells back to casters.",
				goals = {
					{ t = "talk", npc = 14354, npcName = "Pusillin" },
				},
			},
			{
				note = "Interrupt her \"Void Bolt\" when possible. Mages and Druids should dispel \"Curse of Tongues\" and \"Curse of Thorns\" when group members are afflicted. Kill her imp, Pimgib, then her after.",
				goals = {
					{ t = "talk", npc = 14327, npcName = "Lethtendris" },
				},
			},
			{
				note = "Kill the Hydrolings that spawn before focusing on the boss.",
				goals = {
					{ t = "talk", npc = 13280, npcName = "Hydrospawn" },
				},
			},
			{
				note = "During the encounter, he will teleport random group members to his ritual and cast \"Sacrifice\" on them. The target will need big heals to survive. He will also use an AoE ability \"Shadow Word: Pain\" which should be dispelled as quickly as possible.",
				goals = {
					{ t = "talk", npc = 11490, npcName = "Zevrim Thornhoof" },
				},
			},
			{
				note = "Clear all mobs as you go down the ramp, or they will aggro as adds when you begin the encounter. During the encounter, Alzzin will shapeshift, dropping all established aggro. Give the tank time to establish aggro before resuming DPS. Cleanse the \"Wither\" spell he casts when possible. When he casts \"Wither\" it can also be interrupted.",
				goals = {
					{ t = "talk", npc = 11492, npcName = "Alzzin the Wildshaper" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-dire-maul-north-58-60",
		pack = "guides",
		title = "Dire Maul North",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 58,
		maxLevel = 60,
		zone = 1444,
		version = 1,
		steps = {
			{
				note = "You need a Crescent Key to unlock this door. This drops from Pusillin in the \"Dire Maul - East\" dungeon.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1444, x = 59.13, y = 44.67 },
					{ t = "goto", text = "Follow the path", map = 1444, x = 59.52, y = 39.51 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.72, y = 38.78 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.15, y = 34.87 },
					{ t = "goto", text = "click Door", map = 1444, x = 62.49, y = 24.89 },
				},
			},
			{
				note = "Ranged should keep at a distance to avoid his \"Knock Away\" and \"Shield Charge\" abilities.",
				goals = {
					{ t = "talk", npc = 14326, npcName = "Guard Mol'dar" },
				},
			},
			{
				note = "His main ability is \"Booze Spit\" which will reduce the groups accuracy by 75%.",
				goals = {
					{ t = "talk", npc = 14322, npcName = "Stomper Kreeg" },
				},
			},
			{
				note = "Like Mol'dar, ranged should keep a distance to avoid being hit by \"Knock Away\" and \"Shield Charge\".",
				goals = {
					{ t = "talk", npc = 14321, npcName = "Guard Fengus" },
				},
			},
			{
				note = "Like Mol'dar, ranged should keep a distance to avoid being hit by \"Knock Away\" and \"Shield Charge\".",
				goals = {
					{ t = "talk", npc = 14323, npcName = "Guard Slip'kik" },
				},
			},
			{
				note = "He hits hard so the fight will be healing intensive. He uses the ability \"Intimidating Shout\" which will fear your group, so clear the room. At 50% Health he summons 2 Gordok Reavers, which should be CC'd. Casters stay at max range of the boss.",
				goals = {
					{ t = "talk", npc = 14325, npcName = "Captain Kromcrush" },
				},
			},
			{
				note = "DPS should focus on killing Cho'Rush first. Keep an eye out for King Gordok's \"Heal\" ability and interrupt it when possible.",
				goals = {
					{ t = "talk", npc = 11501, npcName = "King Gordok" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-dire-maul-north-tribute-58-60",
		pack = "guides",
		title = "Dire Maul North Tribute",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 58,
		maxLevel = 60,
		zone = 1444,
		version = 1,
		steps = {
			{
				note = "An Alchemist can make this with 4 Khadgar's Whisker, 2 Wintersbite and 1 Leaded Vial. You can also purchase this from the Auction House.",
				goals = {
					{ t = "collect", item = 3829, itemName = "Frost Oil" },
				},
			},
			{
				note = "An Engineer can make this with 3 Thorium Bars and 1 Runecloth. You can also purchase this from the Auction House.",
				goals = {
					{ t = "collect", item = 15994, itemName = "Thorium Widget" },
				},
			},
			{
				note = "You need a Crescent Key to unlock this door. This drops from Pusillin in the \"Dire Maul - East\" dungeon. In the Tribute run, you won't be killing any boss save for King Gordok.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1444, x = 59.13, y = 44.67 },
					{ t = "goto", text = "Follow the path", map = 1444, x = 59.52, y = 39.51 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.72, y = 38.78 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.15, y = 34.87 },
					{ t = "goto", text = "click Door", map = 1444, x = 62.49, y = 24.89 },
				},
			},
			{
				note = "Hug the right side of the room, the use the ramp up North to sneak to Fengus' Chest. He patrols around the area so keep an eye out.",
				goals = {
					{ t = "collect", item = 18266, itemName = "Gordok Courtyard Key" },
				},
			},
			{
				note = "Clear the room of trash while watching for his patrol. Activate the trap, then drag Guard Slip'kik to it.",
				goals = {
					{ t = "turnin", quest = 1193, title = "A Broken Trap" },
				},
			},
			{
				note = "Clear nearby trash without pulling him before doing this. If someone else in the group has the suit and you don't, they will need to do this. A member of the group will need the Gordok Inner Door Key from Guard Mol'dar from a previous run.",
				goals = {
					{ t = "use", item = 18258, itemName = "Gordok Ogre Suit" },
				},
			},
			{
				note = "Use CC on Cho'Rush the Observer when possible. Be sure not to kill Cho'Rush the Observer.",
				goals = {
					{ t = "talk", npc = 11501, npcName = "King Gordok" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-dire-maul-west-58-60",
		pack = "guides",
		title = "Dire Maul West",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 58,
		maxLevel = 60,
		zone = 1444,
		version = 1,
		steps = {
			{
				note = "You need a Crescent Key to unlock this door. This drops from Pusillin in the \"Dire Maul - East\" dungeon.",
				goals = {
					{ t = "goto", text = "Run up the ramp", map = 1444, x = 59.13, y = 44.67 },
					{ t = "goto", text = "Follow the path", map = 1444, x = 59.52, y = 39.51 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.72, y = 38.78 },
					{ t = "goto", text = "Continue following the path", map = 1444, x = 61.15, y = 34.87 },
					{ t = "goto", text = "click Door", map = 1444, x = 60.32, y = 30.16 },
				},
			},
			{
				note = "Clear all ancients in the area before engaging Tendris. Melee should move away when it uses the \"Trample\" ability. Range stand at max distance to avoid being hit with \"Entangle\".",
				goals = {
					{ t = "talk", npc = 11489, npcName = "Tendris Warpwood" },
				},
			},
			{
				note = "Dispel \"Shadow Word: Pain\" when an ally is afflicted by it. Interrupt his \"Mind Blast\" and \"Mind Flay\" spells when possible. Use CC abilities on group members who are afflicted by \"Dominate Mind\".",
				goals = {
					{ t = "talk", npc = 11487, npcName = "Magister Kalendris" },
				},
			},
			{
				note = "This will be a healing intensive encounter. Dispel her \"Blind\" ability on allies when afflicted.",
				goals = {
					{ t = "talk", npc = 11467, npcName = "Tsu'zee" },
				},
			},
			{
				note = "The group should stand in melee range to avoid her abilities. Kill Illyanna, then Ferra after.",
				goals = {
					{ t = "talk", npc = 11488, npcName = "Illyanna Ravenoak" },
				},
			},
			{
				note = "He will use the \"Eye of Immol'thar\" ability during the encounter, spawning eye enemies around the room. Designate a ranged attack to deal with them. At 50% health, he will enrage, increasing his attack speed by 60%. At this point, it will become a healing intensive encounter.",
				goals = {
					{ t = "talk", npc = 11496, npcName = "Immol'thar" },
				},
			},
			{
				note = "This is a healing intensive fight. The tank should face their back to the wall to avoid being knocked back by his \"Arcane Blast\" ability. When Arcane Blast is used, his aggro will reset, so it's best to stop DPS until the tank can establish aggro once more.",
				goals = {
					{ t = "talk", npc = 11486, npcName = "Prince Tortheldrin" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/h-lower-blackrock-spire-55-60",
		pack = "guides",
		title = "Lower Blackrock Spire",
		category = "Dungeons",
		faction = "Horde",
		author = "TuWoW & Zygor",
		minLevel = 55,
		maxLevel = 60,
		zone = 1427,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Run up the chain", map = 1427, x = 37.25, y = 94.29 },
					{ t = "goto", text = "Jump down here", map = 1427, x = 37.79, y = 92.44 },
					{ t = "goto", text = "Jump to the balcony", map = 1427, x = 39.72, y = 95.58 },
				},
			},
			{
				note = "This is a rare mob that may not be available.",
				goals = {
					{ t = "talk", npc = 9219, npcName = "Spirestone Butcher" },
				},
			},
			{
				note = "This is a rare mob that may not be available.",
				goals = {
					{ t = "talk", npc = 9218, npcName = "Spirestone Battle Lord" },
				},
			},
			{
				note = "CC one of the two adds that accompany him. The tank should stand away from the group after picking up Highlord Omokk. Ranged should stand with their backs to a wall. If you can't CC more than one, kill the add, then Omokk. Omokk hits hard so the fight will be healing intensive.",
				goals = {
					{ t = "talk", npc = 9196, npcName = "Highlord Omokk" },
				},
			},
			{
				note = "She will be accompanied by 2 \"Smolderthorn Shadow Priests\". CC one of them. The tank should take Shadow Hunter Vosh'gajin away from the group. DPS down the Priests one at a time, then focus on Shadow Hunter Vosh'gajin. Mages and Druids should remove the \"Curse of Blood\" ability. Spread out as best as possible to avoid multiple group members being afflicted by \"Hex\".",
				goals = {
					{ t = "talk", npc = 9236, npcName = "Shadow Hunter Vosh'gajin" },
				},
			},
			{
				note = "Clear the rooms leading up to him before engaging. War master Voone hits hard, so this will be a healing intensive fight. Wait for the tank to establish aggro before DPS jumps in. The tank should have their back to a wall during the encounter. If Voone changes targets, all DPS should stop until the tank re establishes aggro.",
				goals = {
					{ t = "talk", npc = 9237, npcName = "War Master Voone" },
				},
			},
			{
				note = "This is a rare mob that may not be available. He can spawn in any of the packs of mobs around tents, and sometimes patrols.",
				goals = {
					{ t = "talk", npc = 9596, npcName = "Bannok Grimaxe" },
				},
			},
			{
				note = "On the way to her, Druids can use the \"Hibernate\" ability to CC them if one is available. When you reach her, the tank should face her away from the group to avoid her \"Crystallize\" ability. Her \"Mother's Milk\" ability will temporarily stun party members.",
				goals = {
					{ t = "talk", npc = 10596, npcName = "Mother Smolderweb" },
				},
			},
			{
				note = "This is a rare mob that may not be available.",
				goals = {
					{ t = "talk", npc = 10376, npcName = "Crystal Fang" },
				},
			},
			{
				note = "Collect the Pike on the ledge just after Mother Smolderweb. Whoever picked up Omokk's Head should do this. Clear the room of ogres then combine the two to summon Urok Doomhowl. After, waves of elite ogres will spawn. Clicking the pike will insta kill one of the ogres every 30 seconds. Use CC on additional ogres to mitigate damage to the group. Eventually, Urok will spawn. Let your tank establish aggro before engaging.",
				goals = {
					{ t = "talk", npc = 10584, npcName = "Urok Doomhowl" },
				},
			},
			{
				note = "Clear the entire room that he patrols before engaging him. Avoid him when possible, until the room is clear by waiting for him to patrol past the group.",
				goals = {
					{ t = "talk", npc = 9736, npcName = "Quartermaster Zigris" },
				},
			},
			{
				note = "Halycon will be accompanied by \"Worg Pups\" which will need to be AoE'd down. The tank should pick up Halycon while this is happening, establishing aggro. Once the adds are taken care of, DPS should move to Halycon. Replenish health and mana as soon as it dies as the next boss will be entering the room.",
				goals = {
					{ t = "talk", npc = 10220, npcName = "Halycon" },
				},
			},
			{
				note = "This boss hits hard, so it will be a healing intensive fight. It heals with each use of \"Fatal Bite\", dealing out massive damage to the tank. It will also use the \"Infected Bite\" ability on your tank. Let the tank establish aggro before starting DPS.",
				goals = {
					{ t = "talk", npc = 10268, npcName = "Gizrul the Slavener" },
				},
			},
			{
				note = "The tank needs to face Wyrmthalak away from the group. Melee be sure to stand behind him to avoid its \"Cleave\" ability. CC adds as the spawn and DPS Overlord Wyrmthalak as fast as possible, moving to the adds after he is dealth with.",
				goals = {
					{ t = "talk", npc = 9568, npcName = "Overlord Wyrmthalak" },
				},
			},
		},
	})
end

