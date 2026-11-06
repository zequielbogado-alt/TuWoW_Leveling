-- Engine state, live helpers, chain needs, layout, and goal availability
-- Modular part of ns.Engine (< 1000 lines).

local ADDON, ns = ...
local Engine = {}
ns.Engine = Engine
local Own = {}
Engine._own = Own
local _env = ns.ModuleEnv({ Engine = Engine, Own = Own, Guides = ns.Guides }, { "absent", "activeIndex", "aim", "ARRIVAL_POLL", "arrived", "autoChain", "chainNeedsCache", "classTrainers", "completedFired", "computed", "contextGen", "current", "DEFAULT_RADIUS", "focusCache", "generation", "goalDone", "guide", "guideTitles", "lastEval", "lastSig", "layoutCache", "levelSeen", "LIST_WINDOW", "listedAt", "livePos", "loaded", "logReady", "MANUAL", "MAX_TABS", "MIN_INTERVAL", "NONE", "openKind", "openNpc", "Own", "passedUpTo", "pendingChoices", "pendingCompleted", "picks", "pin", "pinDone", "PLACE_SECONDS", "placing", "PLANNED", "player", "QUEST_VERBS", "RANK_CAPS", "RANK_NAMES", "requestUpdate", "ROUTE_TIE", "RUN_SPEED", "sawIncomplete", "scheduled", "shapeCache", "sigParts", "skillNames", "Spots", "tabs", "tabsDirty", "TEXT_IS_PLACE", "ticker", "TOO_HIGH", "TRAIN_LOOKAHEAD", "trainChecked", "trainerClasses", "turnedIn", "unavailable", "UNMEASURED", "waypoint", "WHO_VERBS", "worldOf" })
Engine._env = _env
setfenv(1, _env)

ns.RegisterDefaults("behavior", {
	autoAccept = true,
	autoTurnin = true,
	guideEnd = "ask", -- "ask" | "continue": at the end of a leveling guide the guide-end window asks (UI/GuideEnd.lua), or the next guide loads by itself; other guides always go on (Own.endAsks)
	autoSelectGuide = true,
	skipGrey = false,
	deathskips = false, -- `die` goals (deathskips) apply; never on a Hardcore character (Own.deathskips)
	warnClosing = false, -- name what an offered quest closes for good, and leave its accept to the player (Closes.lua)
	closeSkipped = true, -- close the quest window the game opens after an auto accept/turn-in when it shows only quests the guide skips (Automation.lua)
	routeChoice = "ask", -- "ask" | "recommended": what happens where a guide offers several next zones
	trainReminder = "2", -- "2" | "1" | "off": remind to visit the class trainer every 2 levels, every level, never
	offerClassQuests = true, -- offer a Class guide in a tab when it opens for the character (QoL/ClassQuests.lua)
	groupQuests = "ask", -- "ask" | "do" | "skip": the answer at a group quest (`when group`) the player has not answered (Own.groupAnswer)
	suggestFrom = "guides", -- pack id the suggestions come from (Guides.SuggestSource); ours fill in
})

-- behavior.autoNextGuide (a toggle, on by default) became behavior.guideEnd
-- in 0.3.1: a stored value was only ever `false`, and both old values start
-- on the new default, "ask".
ns.OnInit(function()
	local b = ns.DB().settings.behavior
	if type(b) == "table" then b.autoNextGuide = nil end
end)

outleveled = {}


DEFAULT_RADIUS = 8 -- yards
MIN_INTERVAL = 0.1 -- seconds between event-driven evaluations
ARRIVAL_POLL = 0.5 -- seconds between goto arrival checks

-- Step state of the loaded tab (see "Tabs" below); at rest, the active tab.
guide = nil -- the tab's guide table or nil
current = nil -- current step index (pin or computed), nil when none
computed = nil -- first open step by live state, nil when the guide is complete
pin, pinDone = nil, nil -- Prev/Next/Goto view of another step than the live one, and its done state
aim = nil -- the goal the player chose for the arrow in the current step (session), or nil
passedUpTo = 0 -- steps 1..passedUpTo had their transient goals latched
autoChain, sawIncomplete = nil, nil -- may chain to `next` on completion
lastSig = nil -- goal status signature of the current step
-- The tab's guide was just loaded: the quest log places it (place), until the
-- first evaluation once the log is readable, PLACE_SECONDS after the load
-- (GetTime() deadline), or the player's first navigation, whichever is first.
placing = nil
PLACE_SECONDS = 10

completedFired = {} -- guideId -> true, GUIDE_COMPLETED once per session
waypoint = nil -- last announced waypoint (active tab only)
player = nil -- Compat.GetPlayerInfo() of the last evaluation
levelSeen = 0 -- PLAYER_LEVEL_UP payload; UnitLevel can lag the event
turnedIn = {} -- QUEST_TURNED_IN this session; the completed flag can lag
openNpc, openKind = nil, nil -- NPC and kind ("talk"/"train"/"vendor") of the open NPC frame
generation = 0 -- evaluations (and active-tab announcements) so far
logReady = false -- QUEST_LOG_UPDATE seen this session: the quest log can be read

-- goto goals the player reached this session (goal table -> true).
arrived = setmetatable({}, { __mode = "k" })

function Compat() return ns.Compat end

---------------------------------------------------------------------------
-- Live state helpers
---------------------------------------------------------------------------

function refreshPlayer()
	player = Compat().GetPlayerInfo()
	-- The client's XP is still the old level's until UnitLevel catches up.
	if levelSeen > (player.level or 0) then player.level, player.xp = levelSeen, 0 end
end

-- A step is for this character (`only`) and, with `when`, its predicates
-- hold (Own.whenHolds: as stored once the route passed the step, else live).
function stepApplies(step)
	return Guides.Matches(step.only, player) and (step.when == nil or Own.whenHolds(step))
end

function questDone(q)
	return turnedIn[q] or Compat().IsQuestCompleted(q)
end

-- First blocking prerequisite of an `accept` the character still lacks, or
-- nil. The compiler drops breadcrumbs: every `preAll` must be done, and one
-- of `pre` when it lists any.
function missingPre(goal)
	if type(goal.preAll) == "table" then
		for _, q in ipairs(goal.preAll) do
			if not questDone(q) then return q end
		end
	end
	if type(goal.pre) == "table" and #goal.pre > 0 then
		for _, q in ipairs(goal.pre) do
			if questDone(q) then return nil end
		end
		return goal.pre[1]
	end
	return nil
end

-- Every accept of a guide and of the guides after it (`next`, every route
-- choice), and each quest's prerequisite lists: { accepts, pres }. Cached
-- per guide. A `next` option whose `when` can no longer hold
-- (Own.optionClosed) is left out; one that may still hold at the hand-off
-- stays, and the cache is built again once it is closed.
chainNeedsCache = setmetatable({}, { __mode = "k" })
function Own.chainOf(g)
	local c = chainNeedsCache[g]
	if c and c.chain then
		local stale = false
		for _, o in ipairs(c.open) do
			if Own.optionClosed(o.from, o.id) then
				stale = true
				break
			end
		end
		if not stale then return c.chain end
		c = nil
	end
	if not c then
		c = {}
		chainNeedsCache[g] = c
	end
	local open = {}
	local pres, accepts = {}, {}
	local seenIds, queue, head = {}, { g }, 1
	while queue[head] and head <= 200 do
		local cur = queue[head]
		head = head + 1
		if not seenIds[cur.id] then
			seenIds[cur.id] = true
			for _, step in ipairs(cur.steps) do
				for _, goal in ipairs(step.goals) do
					if goal.t == "accept" and goal.quest then
						local list = pres[goal.quest]
						if not list then
							list = {}
							pres[goal.quest] = list
						end
						-- Named, not walked: a list of key names here was a table
						-- per accept of every guide down the chain (#60).
						if type(goal.pre) == "table" then list[#list + 1] = goal.pre end
						if type(goal.preAll) == "table" then list[#list + 1] = goal.preAll end
						accepts[#accepts + 1] = goal
					end
				end
			end
			for _, id in ipairs(cur.nextChoices or { cur.next }) do
				if not Own.optionClosed(cur, id) then
					if cur.nextWhen and cur.nextWhen[id] then open[#open + 1] = { from = cur, id = id } end
					local nxt = Guides.Get(id)
					if nxt then queue[#queue + 1] = nxt end
				end
			end
		end
	end
	c.chain, c.open = { accepts = accepts, pres = pres }, open
	return c.chain
end

-- The quests the accepts in `open` need, down their prerequisites, each
-- mapped to the accept of `open` it leads to. Breadth first from every open
-- accept at once: a quest's nearest open accept is the one that reached it
-- first.
function Own.needsFrom(pres, open)
	local set = {}
	local by, queue, head = {}, {}, 1
	for _, goal in ipairs(open) do
		if not by[goal.quest] then
			by[goal.quest] = goal
			queue[#queue + 1] = goal.quest
		end
	end
	while queue[head] do
		local q = queue[head]
		head = head + 1
		for _, list in ipairs(pres[q] or {}) do
			for _, p in ipairs(list) do
				if not set[p] then set[p] = by[q] end
				if not by[p] then
					by[p] = by[q]
					queue[#queue + 1] = p
				end
			end
		end
	end
	return set
end

-- Quests a guide or any guide after it (via `next` and every route choice)
-- still needs at a character level: the prerequisites (`pre`, `preAll`) of
-- every accept that is not grey at that level, and of every accept a needed
-- quest's own accept is, down the chain (a grey Buzzbox 827 opens the Buzzbox
-- quests that still give full experience). A quest's own turn-in and
-- objectives are not a need: they go with its accept. Each needed quest maps
-- to the accept that is not grey it leads to, the nearest down the chain
-- (the first in guide order among equals). Cached per guide and level.
function chainNeeds(g, level)
	local chain = Own.chainOf(g)
	local c = chainNeedsCache[g]
	local set = c[level]
	if set then return set end
	local C = Compat()
	-- The accepts that are not grey, needed as they are.
	local open = {}
	for _, goal in ipairs(chain.accepts) do
		if not (goal.qlvl and C.IsQuestTrivial(tonumber(goal.qlvl), level)) then open[#open + 1] = goal end
	end
	set = Own.needsFrom(chain.pres, open)
	c[level] = set
	return set
end

-- Whether every step of guide g is to be done, grey quests and quests behind
-- the player's progress included: any guide but a leveling one (an item, a
-- mount, a reputation, a profession, a class quest).
function Own.everyStep(g)
	return g ~= nil and not (g.category == nil or g.category == "Leveling")
end

-- behavior.skipGrey: an accept for a quest already grey for the character
-- (or a `turnin ... direct`, handed in with no accept, the compiler giving it
-- its quest's level too), not taken yet and not a prerequisite of a quest
-- later in the guide or its chain, no longer applies (status "na", never
-- blocks, never auto-accepted);
-- its turn-in and objectives go with it (orphaned). greyNeed gives false for
-- such an accept; for a grey accept that is not taken yet but kept, the open
-- accept it leads to; nil when the setting is off or the accept is not grey
-- and open.
function greyNeed(goal)
	if not (goal.t == "accept" or goal.direct) or not goal.qlvl or not ns.Get("behavior.skipGrey") or Own.everyStep(guide) then return nil end
	local C = Compat()
	local level = player.level or 1
	if not C.IsQuestTrivial(tonumber(goal.qlvl), level) then return nil end
	local q = goal.quest
	if C.IsOnQuest(q) or questDone(q) then return nil end
	return chainNeeds(guide, level)[q] or false
end

-- Per guide: each goal's step index, and each quest's accept, turn-in and
-- abandon goals ({ s, key = "s:g", step, goal }).
NONE = {}
layoutCache = setmetatable({}, { __mode = "k" })
function layoutOf(g)
	local l = layoutCache[g]
	if l then return l end
	l = { stepOf = {}, accepts = {}, turnins = {}, abandons = {} }
	for s, step in ipairs(g.steps) do
		for gi, goal in ipairs(step.goals) do
			l.stepOf[goal] = s
			local by = goal.quest and (goal.t == "accept" and l.accepts or goal.t == "turnin" and l.turnins or goal.t == "abandon" and l.abandons)
			if by then
				local list = by[goal.quest]
				if not list then
					list = {}
					by[goal.quest] = list
				end
				list[#list + 1] = { s = s, key = s .. ":" .. gi, step = step, goal = goal }
			end
		end
	end
	layoutCache[g] = l
	return l
end

-- A turn-in, complete or objective goal for a quest the character neither
-- has nor has done, and that this guide does not (for this character) accept
-- at or before that step, in a step the player has not skipped, with an
-- accept that is not optional nor left out as grey: it was picked up on
-- another route, or skipped, so it cannot be done here and no longer applies.
-- An accept the player ticked by hand still counts as the guide's accept: a
-- tick never says the quest is in the log (#739), so its lines stay and the
-- accept reopens (goalDone). An `optional` accept the player did not take is
-- the same: its turn-in holds only those who took the quest.
-- Taking the quest brings the goals back.
-- A `turnin ... direct` has no accept by definition: it is handed in from the
-- giver's own window, so it is never orphaned. Nor is an `abandon`: a quest
-- the character does not have is already off the log, so it is done, and
-- taking the quest later must not bring the step back.
function orphaned(goal)
	local q = goal.quest
	if not q or goal.t == "accept" or goal.t == "abandon" or goal.direct or not guide then return false end
	local C = Compat()
	if C.IsOnQuest(q) or questDone(q) then return false end
	local l = layoutOf(guide)
	local s = l.stepOf[goal]
	if not s then return false end
	local skipped = ns.CharState().skipped[guide.id]
	for _, a in ipairs(l.accepts[q] or NONE) do
		if a.s <= s and not a.goal.optional and not (skipped and skipped[a.s])
			and stepApplies(a.step) and Guides.Matches(a.goal.only, player) and not Own.barred(a.goal) and greyNeed(a.goal) ~= false then
			return false
		end
	end
	return true
end

-- A goal of a quest only characters with a profession can take (`profLine`,
-- `profName`, `profRank`: the quest's required skill) is not this
-- character's without the profession or below that rank, like another
-- class's goals; learning it brings them back (SKILL_LINES_CHANGED). A quest
-- in the log or done keeps its goals, and a client that cannot read skills
-- shows them. A `die` goal (a deathskip) is only for players who chose
-- deathskips (Own.deathskips): without it, its step passes and the next
-- step's travel takes the player there. In another race's starting zone, a
-- quest the character can never take is not theirs either (Own.barred).
-- (Inline: the main chunk is at Lua's 200 locals.)
function goalApplies(goal)
	if not Guides.Matches(goal.only, player) or Own.barred(goal) then return false end
	if goal.t == "die" and not Own.deathskips() then return false end
	if goal.profLine or goal.profName then
		local C = Compat()
		local q = goal.quest
		if C.GetSkillRank and C.Supports("skill") and not (q and (C.IsOnQuest(q) or questDone(q))) then
			local rank = goal.profLine and C.GetSkillRank(goal.profLine)
			if not rank and goal.profName then rank = C.GetSkillRank(goal.profName) end
			if (rank or 0) < (goal.profRank or 1) then return false end
		end
	end
	local out = goal.quest and guide and Own.leftOut[guide.id]
	local why = out and out[goal.quest]
	if why and not questDone(goal.quest) then
		-- "log": a quest in the log, left out until it is ready to hand in;
		-- true: one not taken, left out until the player takes it.
		local C, q = Compat(), goal.quest
		if why == "log" and not C.IsQuestReadyForTurnIn(q) or why ~= "log" and not C.IsOnQuest(q) then return false end
	end
	return greyNeed(goal) ~= false and not orphaned(goal)
end

-- The catch-up's quests left out, per guide (guideId -> { [questID] = true |
-- "log" }), for the session; placement works them out again (Own.catchUp).
-- Taken by hand, a quest is back; one in the log ("log") is back once done.
Own.leftOut = {}
-- Guides placement passed whole (guideId -> true), for the session: the
-- guide list checks such a guide only once every quest of it is done
-- (Engine.GetGuideState). placedThrough: the ones opened for the player
-- (autoChain), which chain to `next` like a finished guide; placedChain: the
-- guides passed on the way to the one placed, for GUIDE_PLACED.
Own.passedWhole, Own.placedThrough, Own.placedChain = {}, {}, {}
-- Goals a guide passed for the player passes for the session only (guideId
-- -> { ["s:g"] = true }): a flight path, a hearth or training in a guide the
-- character is past and may never have been in is no check-off to store.
Own.passedNow = {}
-- Quests that left the log this session (QUEST_REMOVED), until taken again:
-- only these are held when the live step would go back (Own.holdLost), so
-- bringing back a step the player skipped asks nothing.
Own.removed = {}
-- When each `wait` goal's countdown began (goal -> GetTime()), for the
-- session: once the goals before it in its step are done (Own.startWaits).
Own.waitStart = setmetatable({}, { __mode = "k" })
-- Guides just opened in a tab, until placed (guideId -> true): by the player
-- or for them, not brought back by a login or reload. Only these chain on
-- when passed whole (with autoChain) and announce GUIDE_PLACED.
Own.opened = {}
-- The guides a catch-up passed whole on its current run (guideId -> true),
-- so a loop of `next` stops it.
Own.chainSeen = {}

-- Quests found unavailable at their giver this session (questID ->
-- { reason, accept }): the giver's window opened without offering them. Such a
-- quest's goals count as skipped until it is taken or done, or its giver
-- offers it. A level-up or a turn-in can unlock it, so they clear the marks
-- (Own.clearMarks), except the giver's refusals ("offer") of accepts the route
-- has moved past: the guide never goes back to a giver who said no for no
-- reason the data knows; seeing that giver again checks afresh.
unavailable = {}
-- Quests a giver's window offered this session (questID -> true): the
-- giver's word beats a prerequisite the data names (Own.preBlocked).
Own.offered = {}
-- The "pre" mark of each accept whose prerequisite is known to be missing,
-- one table per accept goal.
Own.preMarks = setmetatable({}, { __mode = "k" })

-- Quests the player skipped (Engine.SkipQuest): saved per character by quest
-- id (CharState().skippedQuests), so in every guide. Until the quest is
-- done, each of its goals (accept, objectives, turn-in) reads as skipped,
-- "You skipped this quest", even with the quest in the log; its follow-ups
-- go with it, their prerequisite no longer coming (Own.preBlocked).
function Own.questSkipped(q)
	local list = ns.CharState().skippedQuests
	return type(list) == "table" and list[q] == true
end

Own.skipMarks = {}
function Own.skipMark(goal)
	local q = goal.quest
	local m = Own.skipMarks[q]
	if not m then
		m = { reason = "skipped" }
		Own.skipMarks[q] = m
	end
	-- The accept the text and the undo go by: this one, else this guide's.
	local a = goal.t == "accept" and goal or nil
	if not a and guide then
		local list = layoutOf(guide).accepts[q]
		a = list and list[1] and list[1].goal or nil
	end
	m.accept = a or m.accept or goal
	return m
end

-- Per quest, a goal's unavailable mark or nil. First, a quest the player
-- skipped (Own.questSkipped) reads as "skipped" until it is done, even in the
-- log. Known in advance when an accept of the quest in this guide is closed
-- for good (reason "closed"): one of its `closedBy` (the quest a breadcrumb
-- leads to, or one exclusive with it) is in the log or done, so the giver
-- never offers it again. Else the mark its giver's window left this session.
-- Else, also known in advance, "pre": the accept lacks a prerequisite the
-- route no longer brings (Own.preBlocked), a mark that goes the moment that
-- prerequisite is done. `depth`: how far Own.coming has followed a chain of
-- prerequisites.
function unavailableFor(goal, depth)
	local q = goal.quest
	if not q then return nil end
	if Own.questSkipped(q) and not questDone(q) then return Own.skipMark(goal) end
	local C = Compat()
	if C.IsOnQuest(q) or questDone(q) then return nil end
	local own = goal.t == "accept"
	local list = not own and guide and layoutOf(guide).accepts[q] or NONE
	for i = 1, own and 1 or #list do
		local a = own and goal or list[i].goal
		if type(a.closedBy) == "table" then
			for _, by in ipairs(a.closedBy) do
				if C.IsOnQuest(by) or questDone(by) then
					local u = unavailable[q]
					if not (u and u.reason == "closed" and u.accept == a and u.by == by) then
						u = { reason = "closed", accept = a, by = by }
						unavailable[q] = u
					end
					return u
				end
			end
		end
	end
	local u = unavailable[q]
	if u and u.reason == "closed" then
		-- Its closing quest was abandoned since (or it is another tab's mark).
		unavailable[q] = nil
		u = nil
	end
	-- A chain followed this deep (or looping in the data) proves nothing.
	if u or Own.offered[q] or (depth or 0) > 8 then return u end
	for i = 1, own and 1 or #list do
		local a = own and goal or list[i].goal
		local pre = (a.pre or a.preAll) and Own.preBlocked(a, depth)
		if pre then
			local m = Own.preMarks[a]
			if not m then
				m = { reason = "pre", accept = a }
				Own.preMarks[a] = m
			end
			m.pre = pre
			return m
		end
	end
	return nil
end

function same(a, b)
	return a ~= nil and b ~= nil and a:lower() == b:lower()
end

-- Conditions checked during play (`when` on a step, format 4;
-- docs/GUIDE_FORMAT.md, "Conditions checked during play"). Each predicate
-- holds or not on the live state; a step applies while all of its hold. Once
-- the route moves past a step (latchPassed) with the quest log readable,
-- the outcome is stored (Own.latchWhen): a step whose `when` held in
-- CharState().when[guideId][step], one whose `when` failed as skipped, so
-- it never comes back when the condition changes later (money spent, an
-- item used up, a zone left), a step that applied stays applied, and the
-- player can still Unskip a step stored off by mistake.

-- Quest `p.q` can be taken now: not in the log or done, the level reached,
-- its prerequisites done (missingPre, as an accept's) and none of the quests
-- that close it taken or done.
function Own.availableNow(p)
	local C, q = Compat(), p.q
	if C.IsOnQuest(q) or questDone(q) then return false end
	if p.minLevel and (player.level or 1) < p.minLevel then return false end
	if missingPre(p) then return false end
	for _, by in ipairs(type(p.closedBy) == "table" and p.closedBy or NONE) do
		if C.IsOnQuest(by) or questDone(by) then return false end
	end
	return true
end

-- A place predicate's text (zone, subzone or bind location) reads as its
-- area's name in the client's language, or as the name the guide wrote.
function Own.samePlace(text, p)
	local C = Compat()
	local area = p.area and C.GetAreaName and C.GetAreaName(p.area)
	return same(text, area) or same(text, p.name)
end

-- Whether the character has reached `level`, and with `frac` (0-1) that
-- share of its XP: a `level 12.5` goal is done at level 12 with half the
-- level's XP, or at any later level.
function Own.levelReached(level, frac)
	local lvl = player.level or 1
	if lvl ~= level or not frac then return lvl >= level end
	local max = player.xpMax or 0
	return max > 0 and (player.xp or 0) / max >= frac
end

-- XP still to earn for a `level` goal: the rest of the levels below its
-- level (the 1.12 table, Levels.LEVEL_XP; the client's own XP to level for
-- the one the character is at) and its share of that level. nil once it is
-- reached, or while the client tells no XP.
function Own.xpLeft(goal)
	local lvl, xp, max = player.level or 1, player.xp or 0, player.xpMax or 0
	if max <= 0 or Own.levelReached(goal.level, goal.frac) then return nil end
	-- The share of a level as XP; the epsilon keeps 0.4 x 1400 at 560.
	local function share(total) return goal.frac and math.ceil(goal.frac * total - 1e-6) or 0 end
	if lvl == goal.level then return share(max) - xp end
	local levels = ns.Levels and ns.Levels.LEVEL_XP
	if not levels then return nil end
	local left = max - xp
	for l = lvl + 1, goal.level - 1 do left = left + (levels[l] or 0) end
	return left + share(levels[goal.level] or 0)
end

-- Deathskips (`die` goals) are the player's choice (behavior.deathskips, off
-- by default) and never a Hardcore character's: a death there is the end.
function Own.deathskips()
	if not ns.Get("behavior.deathskips") then return false end
	local rules = C_GameRules
	return not (rules and rules.IsHardcoreActive and rules.IsHardcoreActive())
end

-- `when upgrade`: Polestar's gear advice (Gear.IsUpgrade: wearable now and at
-- least the "minimum upgrade" better than what is worn) rates the item an
-- upgrade. When it cannot judge (gear advice off, the item's stats or the
-- spec's weights unknown) the item counts as one, so the step is shown and
-- the player decides.
function Own.isUpgrade(item)
	local G, link = ns.Gear, "item:" .. item
	if not (G and G.IsEnabled and G.IsEnabled() and G.CompareToEquipped(link)) then return true end
	return G.IsUpgrade(link) and true or false
end

-- `when cooldown`: the item or spell is cooling down, the global cooldown
-- (1.5 s or less) aside. A cooldown runs out without an event, so one that
-- holds asks for an update when it ends; one starting comes with
-- BAG_UPDATE_COOLDOWN or SPELL_UPDATE_COOLDOWN, heard once a guide has asked.
function Own.onCooldown(p)
	Own.cooldownAsked = true
	local C = Compat()
	local start, duration
	if p.item then start, duration = C.GetItemCooldown(p.item) else start, duration = C.GetSpellCooldown(p.spell) end
	if duration <= 1.5 then return false end
	local ends, now = start + duration, GetTime()
	if ends <= now then return false end
	local wake = Own.cooldownWake
	if not (wake and wake > now and wake <= ends) then
		Own.cooldownWake = ends
		ns.After(ends - now, function()
			if Own.cooldownWake == ends then Own.cooldownWake = nil end
			Engine.RequestUpdate()
		end)
	end
	return true
end

-- `when group <quest>`: the player's answer to "do this group quest?",
-- per character (CharState().groupQuests[q]: "do" or "skip"; Engine.AnswerGroup),
-- else the answer for every group quest (behavior.groupQuests "do" or "skip";
-- "ask": none, so the route asks). Never guessed from the quest log: a solo
-- alternative (`when !group`) may be for a quest the player already has.
function Own.groupAnswer(q)
	local answer = ns.CharState().groupQuests[q]
	if answer ~= nil then return answer end
	local all = ns.Get("behavior.groupQuests")
	if all == "do" or all == "skip" then return all end
	return nil
end

-- The quest of the first unanswered `group` predicate of a step, or nil. Such
-- a step applies but is not done (stepDone), so the route waits there until
-- the player answers; an along step never waits (the route passes over it).
-- Nor does a step with nothing to do for the quest now (Own.groupOpen): it
-- then applies as it would without the question, and the route asks once
-- the quest can be taken.
function Own.groupPending(step)
	if step.along or not step.when then return nil end
	for _, p in ipairs(step.when) do
		if p.k == "group" and Own.groupAnswer(p.q) == nil and Own.groupOpen(step, p.q) then return p.q end
	end
	return nil
end

-- Whether group quest q is worth asking about at step: not handed in nor
-- skipped by the player (Own.questSkipped), and in the log or, when the step
-- takes it, with an accept the character can take now. Not one the catch-up
-- left out (grey), one closed for good, or one not open yet (level,
-- prerequisite): the route would pass that accept anyway.
function Own.groupOpen(step, q)
	local C = Compat()
	if questDone(q) or Own.questSkipped(q) then return false end
	if C.IsOnQuest(q) then return true end
	local takes = false
	for _, goal in ipairs(step.goals) do
		if goal.t == "accept" and goal.quest == q then
			takes = true
			local lvl = tonumber(goal.minLevel)
			if goalApplies(goal) and not unavailableFor(goal) and not (lvl and (player.level or 1) < lvl) and not missingPre(goal) then
				return true
			end
		end
	end
	return not takes
end

function Own.predicateHolds(p)
	local C, k, ok = Compat(), p.k, false
	if k == "level" then
		local level, n, op = player.level or 1, p.n, p.op
		if p.frac then
			-- A point inside a level: the level plus the share of it done.
			local max = player.xpMax or 0
			if max > 0 then level = level + (player.xp or 0) / max end
			n = n + p.frac
		end
		return (op == "<" and level < n) or (op == "<=" and level <= n) or (op == ">" and level > n) or (op == ">=" and level >= n)
	elseif k == "money" then
		local money, n, op = C.GetMoney(), p.n, p.op
		return (op == "<" and money < n) or (op == "<=" and money <= n) or (op == ">" and money > n) or (op == ">=" and money >= n)
	elseif k == "onquest" then
		for _, q in ipairs(p.q) do
			if C.IsOnQuest(q) then
				ok = true
				break
			end
		end
	elseif k == "complete" then
		ok = C.IsQuestReadyForTurnIn(p.q)
	elseif k == "turnedin" then
		ok = questDone(p.q) and true or false
	elseif k == "available" then
		ok = Own.availableNow(p)
	elseif k == "has" then
		ok = (C.GetItemCount(p.item) or 0) >= (p.n or 1)
	elseif k == "upgrade" then
		ok = Own.isUpgrade(p.item)
	elseif k == "zone" or k == "subzone" then
		local zone, sub = C.GetZoneText()
		ok = Own.samePlace(k == "zone" and zone or sub, p)
	elseif k == "bound" then
		ok = Own.samePlace(C.GetBindLocation(), p)
	elseif k == "dungeon" then
		ok = p.map ~= nil and Engine.DungeonChosen(p.map)
	elseif k == "done" then
		ok = Own.labelDone(p.label)
	elseif k == "skill" then
		-- Not learned reads as rank 0, so `!skill Herbalism 1` is "has no Herbalism".
		ok = (C.GetSkillRank and C.GetSkillRank(p.skillLine or p.name) or 0) >= p.n
	elseif k == "cooldown" then
		ok = Own.onCooldown(p)
	elseif k == "knows" then
		-- IsPlayerSpell too: Forever's spellbook check says no for weapon skills.
		ok = C.IsSpellKnown(p.spell) or C.IsPlayerSpell(p.spell) == true
	elseif k == "group" then
		local answer = Own.groupAnswer(p.q)
		-- Unanswered: the step applies either way, and waits (Own.groupPending).
		if answer == nil then return true end
		ok = answer == "do"
	end
	if p.neg then return not ok end
	return ok
end

-- The first predicate of a step's `when` that does not hold now, or nil.
function Own.whenFails(step)
	for _, p in ipairs(step.when or NONE) do
		if not Own.predicateHolds(p) then return p end
	end
	return nil
end

-- A `next` option's `when` (from.nextWhen[id], format 4): whether it holds
-- now. Checked each time Polestar lists the options (routeOptions,
-- ChooseRoute, Engine.RouteOffered: Guides.OfferedBy, the guide menu), on
-- the character as they are then: at the hand-off, that decides the route.
function Own.optionHolds(from, id)
	local list = from.nextWhen and from.nextWhen[id]
	if not list then return true end
	if not player then refreshPlayer() end
	for _, p in ipairs(list) do
		if not Own.predicateHolds(p) then return false end
	end
	return true
end

-- A `next` option whose `when` can no longer hold, whatever the character
-- does: a `level<N` or `level<=N` they are past, or `!turnedin` of a quest
-- handed in. Any other may hold by the hand-off.
function Own.optionClosed(from, id)
	local list = from.nextWhen and from.nextWhen[id]
	if not list then return false end
	local level = player and player.level
	for _, p in ipairs(list) do
		if p.k == "level" and level and ((p.op == "<" and level >= p.n) or (p.op == "<=" and level > p.n)) then return true end
		if p.k == "turnedin" and p.neg and questDone(p.q) then return true end
	end
	return false
end

-- The loaded guide's step numbers by step table, built once per guide.
Own.stepNumbers = setmetatable({}, { __mode = "k" })
function Own.stepNumber(step)
	if not guide then return nil end
	local map = Own.stepNumbers[guide]
	if not map then
		map = {}
		for s, st in ipairs(guide.steps) do map[st] = s end
		Own.stepNumbers[guide] = map
	end
	return map[step]
end

-- Stored as held, or skipped (it applies, the player passed it): applies;
-- else its predicates live.
function Own.whenHolds(step)
	local s = Own.stepNumber(step)
	if s then
		local state = ns.CharState()
		local held, skipped = state.when[guide.id], state.skipped[guide.id]
		if (held and held[s]) or (skipped and skipped[s]) then return true end
	end
	return Own.whenFails(step) == nil
end

-- Store step s's `when` outcome once the route has moved past it
-- (latchPassed): held in `when`, failed as a skip. Not before the quest log
-- can be read (it lags PLAYER_LOGIN; Own.latchCaughtUp stores the steps
-- passed meanwhile). A step for other characters (`only`) stores nothing.
function Own.latchWhen(s)
	local step = guide.steps[s]
	if not logReady or not (step and step.when) or not Guides.Matches(step.only, player) then return end
	local state = ns.CharState()
	local held, skipped = state.when[guide.id], state.skipped[guide.id]
	if (held and held[s]) or (skipped and skipped[s]) then return end
	local field = Own.whenFails(step) == nil and "when" or "skipped"
	local t = state[field][guide.id]
	if not t then
		t = {}
		state[field][guide.id] = t
	end
	t[s] = true
end

-- Once per loaded guide, after the quest log can be read: store the
-- outcomes of steps 1..passed the route moved past before it could.
Own.caughtUp = setmetatable({}, { __mode = "k" })
function Own.latchCaughtUp(passed)
	if not logReady or Own.caughtUp[guide] then return end
	Own.caughtUp[guide] = true
	for s = 1, passed do Own.latchWhen(s) end
end

-- The player stands in a hearth's or flight's place: the zone or subzone
-- text is its area's name (`area`, C_Map.GetAreaInfo: both in the client's
-- language), else, for a goal the compiler gave no area, its location.
function inPlace(goal)
	local C = Compat()
	local place = C.GetAreaName and C.GetAreaName(goal.area) or goal.location
	local zone, sub = C.GetZoneText()
	return same(zone, place) or same(sub, place)
end

-- Whether the player stands in a goto's place, by the subzone text: true or
-- false for a goto whose area (`area`, its label's) the client names, nil
-- for any other. A zone's name is never a goto's place: a label naming the
-- zone (the zone text) would put the player there anywhere in it.
function Own.inSubzone(goal)
	local C = Compat()
	local place = goal.area and C.GetAreaName and C.GetAreaName(goal.area)
	if not place then return nil end
	local zone, sub = C.GetZoneText()
	return same(sub, place) and not same(zone, place)
end

-- Discovered flight paths, CharState().flags.fp; recreated if lost.
function fpTable()
	local flags = ns.CharState().flags
	if type(flags.fp) ~= "table" then flags.fp = {} end
	return flags.fp
end

-- A getfp's flight path is known: by its taxi node when the compiler gave
-- one (`node`, among the nodes Nav/Travel.lua records from the flight map in
-- CharState().flags.taxi), else by name: taxi node names read "Stormwind,
-- Elwynn"; guides say "Stormwind".
function fpKnown(goal)
	if goal.node then
		local taxi = ns.CharState().flags.taxi
		return type(taxi) == "table" and taxi[goal.node] == true
	end
	local want = goal.location:lower()
	for name in pairs(fpTable()) do
		local n = name:lower()
		if n == want or n:match("^([^,]+)") == want then return true end
	end
	return false
end

