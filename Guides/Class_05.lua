-- TuWoW_Leveling — Guides/Class_05.lua
-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.

do
	Polestar.RegisterGuide({
		id = "zygor/leveling/a-paladin-class-quests-part-2",
		pack = "guides",
		title = "Paladin Class Quests (Parte 2/2)",
		category = "Class",
		faction = "Alliance",
		author = "TuWoW & Zygor",
		zone = 1453,
		version = 1,
		classes = { "PALADIN" },
		steps = {
			{
				note = "These are gathered with the mining profession. Refer to the Thorium farming guide to gather them. You can also purchase it from the auction house.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 7646, item = 12800, itemName = "Azerothian Diamond", oi = 1 },
				},
			},
			{
				note = "These are a random world drop. High level instance enemies have a chance to drop them. You can also purchase them from the auction house.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "collect", quest = 7646, item = 18335, itemName = "Pristine Black Diamond", oi = 2 },
				},
			},
			{
				note = "Inside the building.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "turnin", quest = 7646, title = "The Divination Scryer", npc = 928, npcName = "Lord Grayson Shadowbreaker", map = 1453, x = 48.41, y = 50.18, f = "e" },
					{ t = "accept", quest = 7647, title = "Judgment and Redemption", npc = 928, npcName = "Lord Grayson Shadowbreaker", map = 1453, x = 48.41, y = 50.18, f = "e" },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "use", item = 18804, itemName = "Lord Grayson's Satchel" },
					{ t = "collect", item = 18746, itemName = "Divination Scryer" },
					{ t = "collect", quest = 7647, item = 18792, itemName = "Blessed Arcanite Barding", oi = 2 },
				},
			},
			{
				note = "The next couple of steps will be taking you to the Scholomance dungeon. You will need a group to complete the dungeon as well as the quest. If you don't have a group, wait until you do before continuing.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "complete", quest = 7647, title = "Judgment and Redemption", note = "Click Here to Continue" },
				},
			},
			{
				note = "Use it in the room with the boss Rattlegore after you have cleared it. They will spawn in waves. Make sure your group is prepared before using the Divination Scryer. If you wipe you will need to abandon and restart the quest.",
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "use", item = 18746, itemName = "Divination Scryer" },
					{ t = "collect", quest = 7647, item = 18749, itemName = "Charger's Lost Soul", oi = 1 },
				},
			},
			{
				only = { classes = { "PALADIN" } },
				goals = {
					{ t = "use", item = 18749, itemName = "Charger's Lost Soul" },
					{ t = "turnin", quest = 7647, title = "Judgment and Redemption", npc = 14568, npcName = "Darkreaver's Fallen Charger" },
				},
			},
		},
	})
end

