-- TuWoW_Leveling — Guides/Dungeons_05.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-razorfen-kraul-30-40",
		pack = "guides",
		title = "Razorfen Kraul",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 30,
		maxLevel = 40,
		version = 1,
		steps = {
			{
				note = "Clear the area before engaging Roogug. If you have a warlock in your group, Banish the elemental at his side..",
				goals = {
					{ t = "talk", npc = 6168, npcName = "Roogug" },
				},
			},
			{
				note = "During the encounter, he will summon a boar. DPS should focus target the boar down then switch back to the boss.",
				goals = {
					{ t = "talk", npc = 4424, npcName = "Aggem Thorncurse" },
				},
			},
			{
				note = "For this encounter, he will be assisted by two caster allies. It is important to use CC abilities on them before starting the encounter. DPS should focus down the adds before switching to the boss. Death Speaker Jargba will use the \"Dominate Mind\" ability which will Mind Control a party member. Save all cooldowns for the boss.",
				goals = {
					{ t = "talk", npc = 4428, npcName = "Death Speaker Jargba" },
				},
			},
			{
				note = "Overlord Ramtusk deals high single target damage. He has two allies that should be CC'd. CC should be focused on the Spearhides if possible. Kill Ramtusk then the adds after.",
				goals = {
					{ t = "talk", npc = 4420, npcName = "Overlord Ramtusk" },
				},
			},
			{
				note = "Agathelos the Raging deals massive single target damage. You might need back up heals if the healer can't keep up.",
				goals = {
					{ t = "talk", npc = 4422, npcName = "Agathelos the Raging" },
				},
			},
			{
				note = "This is a rare mob that may not be available. Have the casters stop casting when Blind Hunter is using it's \"Sonic Boom\" ability. Click the line below if the boss isn't there.",
				goals = {
					{ t = "talk", npc = 4425, npcName = "Blind Hunter" },
				},
			},
			{
				note = "Clear the platform before engaging then pull the boss. Kill the totem he summons as soon as they appear. If you have a Warlock, you can banish the elemental.",
				goals = {
					{ t = "talk", npc = 4842, npcName = "Earthcaller Halmgar" },
				},
			},
			{
				note = "Charlga Razorflank deals high damage. Pull them down fromt he hut and tank them at the platform below. The group should spread out if possible. Interrupt the \"Chain Bolt\" ability whenever it's being cast.",
				goals = {
					{ t = "talk", npc = 4421, npcName = "Charlga Razorflank" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-scarlet-monastery-graveyard-29-35",
		pack = "guides",
		title = "Scarlet Monastery (Graveyard)",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 29,
		maxLevel = 35,
		zone = 1420,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1420, x = 82.65, y = 32.88 },
					{ t = "goto", text = "Enter the Portal", map = 1420, x = 84.84, y = 30.51 },
				},
			},
			{
				note = "Clear the area before engaging Interrogator Vishas. He will use \"Immolate\" throughout the fight, so be ready for extra healing.",
				goals = {
					{ t = "talk", npc = 3983, npcName = "Interrogator Vishas" },
				},
			},
			{
				note = "For this encounter, ranged DPS should spread out to avoid taking damage from AoE attacks.",
				goals = {
					{ t = "talk", npc = 4543, npcName = "Bloodmage Thalnos" },
				},
			},
			{
				note = "This is a rare mob that may not be available. If you see an \"Unfettered Spirit\", you will be able to spawn this boss. There are 6 different spawn points across the Graveyard that appear in intervals of 10 to 15 minutes. Every 10 to 15 minutes, instead of an Unfettered Spirit, Azshir the Sleepless has a chance to spawn. It will use the \"Terrify\" ability which will fear the group. It will also use an ability called \"Call of the Grave\" which will damage an ally even after the boss is dead.",
				goals = {
					{ t = "talk", npc = 6490, npcName = "Azshir the Sleepless" },
				},
			},
			{
				note = "This is a rare mob that may not be available. If you see an \"Unfettered Spirit\", you will be able to spawn this boss. There are 6 different spawn points across the Graveyard that appear in intervals of 10 to 15 minutes. Every 10 to 15 minutes, instead of an Unfettered Spirit, Azshir the Sleepless has a chance to spawn. The Fallen Champion only uses melee abilities, including \"Cleave\" so spread out when possible.",
				goals = {
					{ t = "talk", npc = 6488, npcName = "Fallen Champion" },
				},
			},
			{
				note = "This is a rare mob that may not be available. If you see an \"Unfettered Spirit\", you will be able to spawn this boss. There are 6 different spawn points across the Graveyard that appear in intervals of 10 to 15 minutes. Every 10 to 15 minutes, instead of an Unfettered Spirit, Azshir the Sleepless has a chance to spawn. Ironspine will use the ability \"Poison Cloud\" so spread out to avoid it.",
				goals = {
					{ t = "talk", npc = 6489, npcName = "Ironspine" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-scarlet-monastery-library-31-37",
		pack = "guides",
		title = "Scarlet Monastery (Library)",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 31,
		maxLevel = 37,
		zone = 1420,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1420, x = 82.65, y = 32.88 },
					{ t = "goto", text = "Enter the Portal", map = 1420, x = 85.33, y = 32.27 },
				},
			},
			{
				note = "For this encounter, Loksey will be accompanied by 3 elite Scarlet Tracking Hounds. They will need to either be CC'd or killed immidiately. Once the hounds are dealt with, kill Houndmaster Loksey.",
				goals = {
					{ t = "talk", npc = 3974, npcName = "Houndmaster Loksey" },
				},
			},
			{
				note = "For this encounter, he will cast \"Detonation\" which will damage the entire group. When he does this, use the pillars to line of sight the ability. This fight is very healing intensive, so if you have a hybrid class, additional healing may be required. He will also cast \"Silence\" on casters.",
				goals = {
					{ t = "talk", npc = 6487, npcName = "Arcanist Doan" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-scarlet-monastery-armory-35-40",
		pack = "guides",
		title = "Scarlet Monastery (Armory)",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 35,
		maxLevel = 40,
		zone = 1420,
		version = 1,
		steps = {
			{
				note = "You will need The Scarlet Key from the chest behind Arcanist Doan in the Library to open this. A rogue with 175 Lockpicking skill can pick it and a Truesilver Key opens it too. Engineers can also blast the door open.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1420, x = 82.65, y = 32.88 },
					{ t = "goto", text = "click Armory Door", map = 1420, x = 85.41, y = 31.59 },
					{ t = "goto", text = "Enter the Portal", map = 1420, x = 85.67, y = 31.76 },
				},
			},
			{
				note = "The tank should keep Herod at the center of the room. He will use the \"Whirlwind\" ability, he will become immune to magic damage. Anyone at the center of the room should move from it to avoid getting hit by it, including the tank. Casters should stay on the ledge above at all times. When Herod dies, a group of non-elites will rush the room.",
				goals = {
					{ t = "talk", npc = 3975, npcName = "Herod" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-scarlet-monastery-cathedral-36-42",
		pack = "guides",
		title = "Scarlet Monastery (Cathedral)",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 36,
		maxLevel = 42,
		zone = 1420,
		version = 1,
		steps = {
			{
				note = "You will need The Scarlet Key from the chest behind Arcanist Doan in the Library to open this. A rogue with 175 Lockpicking skill can pick it and a Truesilver Key opens it too. Engineers can also blast the door open.",
				goals = {
					{ t = "goto", text = "Enter the building", map = 1420, x = 82.65, y = 32.88 },
					{ t = "goto", text = "click Cathedral Door", map = 1420, x = 85.21, y = 30.86 },
					{ t = "goto", text = "Enter the Portal", map = 1420, x = 85.32, y = 30.48 },
				},
			},
			{
				note = "Clear the Cathedral before starting this encounter. He will use the ability \"Hammer of Justice\" which will stun the target for 3 seconds. He will use the \"Divine Shield\" ability, which will make him invulnerable to all damage.",
				goals = {
					{ t = "talk", npc = 3976, npcName = "Scarlet Commander Mograine" },
				},
			},
			{
				note = "She will primarily cast \"Holy Smite\", dealing magic damage to the tank. When she is near death, she will sleep the entire party and revive Mograine. Both of their health bars will return to full adn the tank will need to pick up Mograine immidiately. DPS should focus on Whitemane, then Mograine.",
				goals = {
					{ t = "talk", npc = 3977, npcName = "High Inquisitor Whitemane" },
				},
			},
			{
				note = "He will cast \"Curse of Blood\" on a party member, which can be dispelled by a mage or a druid. He will also use \"Fear\" and \"Sleep\" on random party members.",
				goals = {
					{ t = "talk", npc = 4542, npcName = "High Inquisitor Fairbanks" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-razorfen-downs-37-43",
		pack = "guides",
		title = "Razorfen Downs",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 37,
		maxLevel = 43,
		version = 1,
		steps = {
			{
				note = "Clear the room and ring the gong to begin the encounter. After each wave, you will need to ring the gong again until the boss appears. The tank should face the boss away from the group when it spawns. It's \"Web Spray\" ability will immobilize any ally in front of it.",
				goals = {
					{ t = "talk", npc = 7355, npcName = "Tuten'kash" },
				},
			},
			{
				note = "Before engaging, clear the enemies around Mordresh. The last pack of skeletons will draw the aggro of the boss. This boss is vulnerable to melee damage. Be sure to interrupt the \"Fireball\" ability.",
				goals = {
					{ t = "talk", npc = 7357, npcName = "Mordresh Fire Eye" },
				},
			},
			{
				note = "Have the tank move out of it's \"Disease Cloud\" ability. Heavy heals will be needed when Glutton enrages.",
				goals = {
					{ t = "talk", npc = 8567, npcName = "Glutton" },
				},
			},
			{
				note = "This is a rare mob that may not be available. He will use \"Dominate Mind\" on a random group member, including the tank or healer. It'll be important to have a back up healer or tank in case this happens. Interrupt his \"Heal\" ability when possible.",
				goals = {
					{ t = "talk", npc = 7354, npcName = "Ragglesnout" },
				},
			},
			{
				note = "The tank should tank him facing the tent where he's at. The group should then stack on top of the tank to reduce damage from \"Frost Nova\". He will summon \"Frost Spectres\". As soon as one appears, the damage should switch and kill it quickly.",
				goals = {
					{ t = "talk", npc = 7358, npcName = "Amnennar the Coldbringer" },
				},
			},
			{
				note = "This is an optional fight. Speak with Belnistrasz to start the event. Waves of enemies will spawn and may require additional off tanks. When Belnistrasz is finished channeling, Plaguemaw the Rotting will spawn.",
				goals = {
					{ t = "talk", npc = 7356, npcName = "Plaguemaw the Rotting" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-uldaman-42-52",
		pack = "guides",
		title = "Uldaman",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 42,
		maxLevel = 52,
		version = 1,
		steps = {
			{
				note = "Use Crowd Control abilities on the 2 Stonevault Rockcheres if possible. If you have no Crowd Control, burn them down before the boss. Interrupt his \"Chain Lightning\" ability when possible.",
				goals = {
					{ t = "talk", npc = 6910, npcName = "Revelosh" },
				},
			},
			{
				note = "She is immune to Damage Over Time effects. The tank should face her away from the rest of the group to avoid them being hit with \"Arcing Smash\". Range spread out.",
				goals = {
					{ t = "talk", npc = 7228, npcName = "Ironaya" },
				},
			},
			{
				note = "This boss is immunity to Damage Over Time abilities. At 66% and 33% Health, it will spawn two Obsidian Shards. DPS should switch to killing these before going back to the boss.",
				goals = {
					{ t = "talk", npc = 7023, npcName = "Obsidian Sentinel" },
				},
			},
			{
				note = "This boss has immunity to Damage Over Time abilities. It also casts the ability \"Sand Storms\", which will cast Slow and Silence on those caught in it. Range spread out.",
				goals = {
					{ t = "talk", npc = 7206, npcName = "Ancient Stone Keeper" },
				},
			},
			{
				note = "He will be accompanied by Shadowforge Geologists. Heavy AoE damage will be inflicted upon your group. The Tank should pick up Galgann Firehammer and move him away from the Shadowforge Geologist. Keep him faced away from the group. Use Crowd Control abilities on one Shadowforge Geologist, then kill the other. After, then kill the last Shadowforge Geologist. Then, switch to Galgann and kill him.",
				goals = {
					{ t = "talk", npc = 7291, npcName = "Galgann Firehammer" },
				},
			},
			{
				note = "He is accompanied by a Stonevault Geomancer, Stonevault Brawler and a Jadespine Basilisk. Use a Crowd Control ability on one of the adds. Then, use all cooldowns and burn down Grimlok as fast as possible. After, deal with the adds.",
				goals = {
					{ t = "talk", npc = 4854, npcName = "Grimlok" },
				},
			},
			{
				note = "He will summon adds through the encounter. When they appear, all DPS should kill them as soon as possible. The fight is long, so healers should conserve mana when possible.",
				goals = {
					{ t = "talk", npc = 2748, npcName = "Archaedas" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-zulfarrak-44-49",
		pack = "guides",
		title = "Zul'Farrak",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 44,
		maxLevel = 49,
		version = 1,
		steps = {
			{
				note = "During the encounter, he will summon \"Sul'lithuz Broodlings\" and \"Servants of Antu'sul\". When they appear, all DPS should switch to the adds and kill them. He will summon various totems that should be destroyed as soon as they appear.",
				goals = {
					{ t = "talk", npc = 8127, npcName = "Antu'sul" },
				},
			},
			{
				note = "This is a mini boss found in the dungeon. He will cast \"Fevered Plague\" on group members, dealing damage over time. When he reaches 30% health, he will become immune to physical and shadow damage.",
				goals = {
					{ t = "talk", npc = 7272, npcName = "Theka the Martyr" },
				},
			},
			{
				note = "Zum'rah will cast \"Shadow Bolt Volley\" which will need to be interrupted. He will also summon zombies from nearby graves that will attack you. All DPS should switch to the zombies before moving back to the boss. Whenever he summons a totem, you should also focus on those.",
				goals = {
					{ t = "talk", npc = 7271, npcName = "Witch Doctor Zum'rah" },
				},
			},
			{
				note = "He will be accompanied by Shadowpriest Sezz'ziz. Have DPS burn down Nekrum Gutchewer before burning down Sezz'ziz. Be sure to interrupt Sezz'ziz' \"Heal\" ability throughout the encounter. After Nekrum has been defeated, quickly burn down Sezz'ziz.",
				goals = {
					{ t = "talk", npc = 7275, npcName = "Shadowpriest Sezz'ziz" },
				},
			},
			{
				note = "He will be accompanied by a group of other elites. DPS should prioritize killing Murta Grimgut and Oro Eyegouge before all else.",
				goals = {
					{ t = "talk", npc = 7604, npcName = "Sergeant Bly" },
				},
			},
			{
				note = "Make sure the tank faces the bosses away from the group. Melee allies should damage him from behind to avoid its \"Cleave\" ability. Kill Ruuzlu, then Ukorz.",
				goals = {
					{ t = "talk", npc = 7267, npcName = "Chief Ukorz Sandscalp" },
				},
			},
			{
				note = "She patrols around a room filled with elite enemies. Clear as many as you can without pulling her. Once you've cleared a safe spot, pull Velratha into the hallway from where you fought Sergeant Bly.",
				goals = {
					{ t = "talk", npc = 7795, npcName = "Hydromancer Velratha" },
				},
			},
			{
				note = "To summon Gahz'rilla, you will need the \"Sacred Mallet\" that drops from Qiaga the Keeper in the Hinterlands. You will then need to use the mallet at the altar in Jintha'Alor, also found in the Hinterlands. Clear the entire room before ringing the gong with the \"Mallet of Zul'Farrak\". When engaging, the tank should face him away from the group. If you don't, the group will be tossed up in the air.",
				goals = {
					{ t = "talk", npc = 7273, npcName = "Gahz'rilla" },
				},
			},
			{
				label = "Kill_Zerillis",
				along = true,
				note = "This is a rare mob that may not be available. He wanders all over the first half of the dungeon. Line of sight him into melee range as soon as possible. Afterwards, the fight is straight forward.",
				goals = {
					{ t = "talk", npc = 10082, npcName = "Zerillis" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-maraudon-wicked-grotto-purple-45-53",
		pack = "guides",
		title = "Maraudon (Wicked Grotto - Purple)",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 45,
		maxLevel = 53,
		zone = 1443,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1443, x = 29.11, y = 62.56 },
					{ t = "goto", text = "Jump down here", map = 1443, x = 28.06, y = 64.21 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Jump down here", map = 1443, x = 27.84, y = 62.83 },
					{ t = "goto", text = "Follow the path", map = 1443, x = 29.32, y = 61.24 },
					{ t = "goto", text = "Follow the path", map = 1443, x = 29.67, y = 58.58 },
				},
			},
			{
				note = "Have the entire group stack on top of each other to avoid the bosses ranged abilities. He will occasionally use his \"Blink\" ability, causing him to move away from the group. Be sure to stack in melee range of the boss as soon as possible whenever this happens. If you have a Warlock, you can banish the one of the two adds that appear. Defeat the boss, then finish the adds.",
				goals = {
					{ t = "talk", npc = 12236, npcName = "Lord Vyletongue" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-maraudon-foulspore-cavern-orange-45-53",
		pack = "guides",
		title = "Maraudon (Foulspore Cavern - Orange)",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 45,
		maxLevel = 53,
		zone = 1443,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1443, x = 29.11, y = 62.56 },
					{ t = "goto", text = "Jump down here", map = 1443, x = 28.06, y = 64.21 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Jump down here", map = 1443, x = 27.84, y = 62.83 },
					{ t = "goto", text = "Follow the path", map = 1443, x = 29.39, y = 64.03 },
					{ t = "goto", text = "Run up the stairs", map = 1443, x = 31.3, y = 64.06 },
					{ t = "goto", text = "Follow the path", map = 1443, x = 34.29, y = 65.57 },
					{ t = "goto", text = "Follow the path", map = 1443, x = 35.14, y = 62.71 },
				},
			},
			{
				note = "Noxxion will use \"Toxic Volley\" which will deal damage to the entire group. During the fight, he will split into tiny versions of himself which need to be killed before you can resume damaging him again.",
				goals = {
					{ t = "talk", npc = 13282, npcName = "Noxxion" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-maraudon-poison-falls-inner-48-57",
		pack = "guides",
		title = "Maraudon (Poison Falls - Inner)",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 48,
		maxLevel = 57,
		zone = 1443,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1443, x = 29.11, y = 62.56 },
					{ t = "goto", text = "Jump down here", map = 1443, x = 28.06, y = 64.21 },
				},
			},
			{
				goals = {
					{ t = "goto", text = "Jump down here", map = 1443, x = 27.84, y = 62.83 },
					{ t = "goto", text = "Follow the path", map = 1443, x = 29.32, y = 61.24 },
					{ t = "goto", text = "Follow the path", map = 1443, x = 29.67, y = 58.58 },
				},
			},
			{
				note = "Meshlock patrols the waters near the start. This is a rare mob that may not be available. Ranged should stay spread out and it should be tanked away from the group. Earth Shock can interrupt spellcasting.",
				goals = {
					{ t = "talk", npc = 12237, npcName = "Meshlok the Harvester" },
				},
			},
			{
				note = "The tank should pick up Corrupt Forces of Nature whenever they spawn. Focus on killing Celebras first. Interrupt Wrath whenever possible.",
				goals = {
					{ t = "talk", npc = 12225, npcName = "Celebras the Cursed" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-maraudon-earth-song-falls-inner-48-57",
		pack = "guides",
		title = "Maraudon (Earth Song Falls - Inner)",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 48,
		maxLevel = 57,
		zone = 1443,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Enter the building", map = 1443, x = 29.11, y = 62.56 },
					{ t = "goto", text = "Jump down here", map = 1443, x = 28.06, y = 64.21 },
				},
			},
			{
				note = "This is a reward from a short quest chain given by Cavindra outside the Foulspore Cavern - Orange dungeon.",
				goals = {
					{ t = "goto", text = "Jump down here", map = 1443, x = 27.84, y = 62.83 },
					{ t = "goto", text = "Jump down here", map = 1443, x = 29.81, y = 60.75 },
					{ t = "use", item = 17191, itemName = "Scepter of Celebras" },
					{ t = "goto", text = "click Portal to Inner Maraudon", map = 1443, x = 29.24, y = 61.18 },
				},
			},
			{
				note = "The tank should keep him where he spawns. The tank should also keep their back to the wall when possible. Ranged stay at a distance. Ranged will also need to avoid the \"Theradrim Shardling\" that spawns, which will disappear once the boss dies.",
				goals = {
					{ t = "talk", npc = 12203, npcName = "Landslide" },
				},
			},
			{
				note = "She has the ability \"Repulsive Gaze\" which will fear the entire group. Use \"Fear Ward\" on the tank if possible. Warriors ability \"Berserker Rage\" can negate the fear. Also, use \"Tremor Totem\" if possible. Ranged group members should stay at max range to avoid being knocked back by \"Dust Field\".",
				goals = {
					{ t = "talk", npc = 12201, npcName = "Princess Theradras" },
				},
			},
			{
				note = "Jump down into the water. Rotgrip deals high damage, so the fight will be very heal intensive. You may need support heals. Its ability \"Puncture\" will deal damage over time increasing this damage.",
				goals = {
					{ t = "talk", npc = 13596, npcName = "Rotgrip" },
				},
			},
			{
				note = "The tank should face him away from the group to avoid taking damage from \"Gobling Dragon Gun\". After, the group should stack in close melee rang to prevent Gizlock from using his \"Bomb\" and \"Shoot\" abilities.",
				goals = {
					{ t = "talk", npc = 13601, npcName = "Tinkerer Gizlock" },
				},
			},
		},
	})
end

do
	Polestar.RegisterGuide({
		id = "zygor/dungeons/a-the-temple-of-atalhakkar-50-60",
		pack = "guides",
		title = "The Temple of Atal'Hakkar",
		category = "Dungeons",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		minLevel = 50,
		maxLevel = 60,
		zone = 1435,
		version = 1,
		steps = {
			{
				goals = {
					{ t = "goto", text = "Run up the stairs", map = 1435, x = 69.36, y = 56.89 },
					{ t = "goto", text = "Enter the building and swim under the water", map = 1435, x = 70.54, y = 49.78 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 72.69, y = 42.22 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 75.69, y = 45.78 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 78.62, y = 47.47 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 80.22, y = 49.62 },
					{ t = "goto", text = "Follow the path", map = 1435, x = 81.33, y = 42.38 },
					{ t = "goto", text = "Run down the stairs", map = 1435, x = 78.86, y = 40.74 },
					{ t = "goto", text = "Run down the ramp", map = 1435, x = 76.85, y = 38.82 },
				},
			},
			{
				note = "Clear the trash in the area as you travel around the platform. Once cleared, the group will need to spread out and click each Atal'ai Statue in the numbered order indicated on the map. The Atal'ai Statue will be green if done correctly and Atal'alrion will appear at the center of the room. He has a threat clearing abilitiy, so it will be important for the tank to keep taunt available. He will also knock players into the air who will take fall damage after. Healers should focus on the member who got knocked into the air as soon as they land. Tanks should keep the boss near a wall and be prepared to kite if the group healer gets knocked into the air.",
				goals = {
					{ t = "talk", npc = 8580, npcName = "Atal'alarion" },
				},
			},
			{
				note = "After defeating the Atal'ai Defenders, the way to Jammal'an will open up. Clear the trash in the Lair of the Chosen, watching out for Atal'ai Deathwalkers \"Fear\" abilitiy. Ghosts will spawn when some of the enemies die here, all of which you can do is kite run away from them. Engage once all enemies are clear. Separate Jammal'an and Ogum when the fight starts, killing Ogom as soon as possible. Then, spread out as best you can. Jammal'an will use the \"Hex of Jammal'an\" ability, transforming a party member into a hostil Berserker. Switch damage to the \"Hex of Jammal'an\" then burn down the boss as quick as possible.",
				goals = {
					{ t = "talk", npc = 5711, npcName = "Ogom the Wretched" },
				},
			},
			{
				note = "The tank should keep their back to the wall and keep all drakes facing away from the party. All of their abilities hit in front of it, so this will save you needless healing.",
				goals = {
					{ t = "talk", npc = 5720, npcName = "Weaver" },
				},
			},
			{
				note = "Similar to the last encounter, the tank should keep their back to the wall and keep all drakes facing away from the party. All of their abilities hit in front of it, so this will save you needless healing.",
				goals = {
					{ t = "talk", npc = 5719, npcName = "Morphaz" },
				},
			},
			{
				note = "Clear all dragon enemies before pulling this boss or they will swarm you. All ranged should stay at max distance to avoid being stunned by its \"War Stomp\" ability. The abilities \"Fade\" for Priest, \"Blessing of Salvation\" for Paladin and \"Feint\" for Rogues should be used to mitigate threat when possible. The target with the highest threat will be the target of Eranikus' \"Deep Slumber\" ability, which will make you unable to act for 15 seconds. Melee never stand in front of this boss. This is a long fight so side heals might be necessary.",
				goals = {
					{ t = "talk", npc = 5709, npcName = "Shade of Eranikus" },
				},
			},
			{
				note = "Clear trash in the Sanctum of the Fallen God. This boss can only be summoned by using the \"Egg of Hakkar\" which is for the quest \"The God Hakkar\". Players whom have completed the quest can use \"Yeh'kinya's Scroll\" to summon as well. Once used, kill adds that spawn. Eventually, a Hakkari Bloodkeeper spawns. Collect the \"Hakkari Blood\" from their corpse and extinguish the Braziers in the room. Repeat the process until all are extinguished. The Avatar of Hakkar will use \"Cause Insanity\" on random players. CC or Stun the player if possible until it wears off. He will also use \"Shadow Word: Pain\" which should be dispelled when possible.",
				goals = {
					{ t = "talk", npc = 8443, npcName = "Avatar of Hakkar" },
				},
			},
		},
	})
end

