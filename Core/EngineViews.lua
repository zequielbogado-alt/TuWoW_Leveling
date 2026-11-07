-- Engine step/goal view models, focus grouping, and waypoint selection
-- Modular part of ns.Engine (< 1000 lines).

local ADDON, ns = ...
setfenv(1, ns.Engine._env)

-- Focus: one person at a time (ARCHITECTURE "Focus"). A step's goals form
-- groups in authored order by who they are done with; the focus is the
-- first group with a blocking goal still open.
---------------------------------------------------------------------------

WHO_VERBS = {
	accept = true, turnin = true, talk = true, train = true, vendor = true, sethome = true,
	getfp = true, learn = true, buy = true, interact = true,
}

-- kind ("npc" | "object" | "here"), id and name of whom a goal is done with.
-- An interact for a quest objective (totems, mounds, cages, braziers) is
-- field work done where you are, like a kill or a collect, not a visit: it
-- shows with the step's kills instead of waiting behind them. A plain
-- interact (no quest) is still a visit to that object.
function whoOf(goal)
	if WHO_VERBS[goal.t] then
		local npc, name = npcOf(goal)
		if npc then return "npc", npc, name end
		if goal.object and not (goal.t == "interact" and goal.quest) then
			return "object", goal.object, ns.Names.Object(goal.object) or goal.objName
		end
	end
	return "here"
end

-- Applicable, not skipped, not done, and blocking.
function stillBlocks(s, g, goal)
	return blocks(goal) and goalApplies(goal) and not unavailableFor(goal) and not goalDone(s, g, goal)
end

-- groups = { { kind, id, name, goals = { goalIndex, ... }, map, x, y, f,
-- pending, done }, ... }, focus (group index or nil), groupOf (goalIndex ->
-- group index). Goals that do not apply to the character never split a
-- group: they join the group around them.
function stepGroups(s)
	local goals = guide.steps[s].goals
	local groups, groupOf = {}, {}
	local cur, held
	local function add(grp, g)
		grp.goals[#grp.goals + 1] = g
		groupOf[g] = grp.index
	end
	for g = 1, #goals do
		local goal = goals[g]
		if not goalApplies(goal) then
			if cur then
				add(cur, g)
			else
				held = held or {}
				held[#held + 1] = g
			end
		else
			local kind, id, name = whoOf(goal)
			if not cur or cur.kind ~= kind or cur.id ~= id then
				cur = { index = #groups + 1, kind = kind, id = id, name = name, goals = {} }
				groups[cur.index] = cur
				if held then
					for _, h in ipairs(held) do add(cur, h) end
					held = nil
				end
			elseif not cur.name and name then
				cur.name = name
			end
			add(cur, g)
		end
	end
	if held then
		cur = { index = 1, kind = "here", goals = {} }
		groups[1] = cur
		for _, h in ipairs(held) do add(cur, h) end
	end
	local focus
	for _, grp in ipairs(groups) do
		local pending = 0
		for _, g in ipairs(grp.goals) do
			local goal = goals[g]
			if stillBlocks(s, g, goal) then pending = pending + 1 end
			if not grp.map and goalApplies(goal) then
				local map, x, y, f, _, z = posOf(goal)
				if map and x and y then grp.map, grp.x, grp.y, grp.f, grp.z = map, x, y, f, z end
			end
		end
		grp.pending, grp.done = pending, pending == 0
		if not focus and pending > 0 then focus = grp.index end
	end
	return groups, focus, groupOf
end

---------------------------------------------------------------------------
-- View models
---------------------------------------------------------------------------

guideTitles = setmetatable({}, { __mode = "k" }) -- guide -> { [quest] = title }

function titleMap()
	local map = guideTitles[guide]
	if not map then
		map = {}
		for _, step in ipairs(guide.steps) do
			for _, gl in ipairs(step.goals) do
				if gl.quest and gl.title and not map[gl.quest] then map[gl.quest] = gl.title end
			end
		end
		guideTitles[guide] = map
	end
	return map
end

-- A non-English client's own title (or its names pack's) comes before the
-- guide's English one; on an English client Names gives nil and the guide's
-- title wins over the client's.
function questTitle(goal)
	local q = goal.quest
	if not q then return nil end
	local t = ns.Names.Quest(q) or goal.title or Compat().GetQuestTitle(q)
	if t then return t end
	return titleMap()[q] or (L["Quest"] .. " " .. q)
end

-- Title of any quest the guide names (e.g. a prerequisite).
function titleOfQuest(q, hint)
	return ns.Names.Quest(q) or (hint and hint[q]) or titleMap()[q] or Compat().GetQuestTitle(q) or (L["Quest"] .. " " .. q)
end

-- Player-facing explanation of an unavailable mark.
function unavailableText(u)
	if u.reason == "skipped" then return L["You skipped this quest"] end
	local a = u.accept
	if u.reason == "closed" then return L["No longer offered: you took %s"]:format(titleOfQuest(u.by, a.preTitles)) end
	if u.reason == "level" then return L["Requires level %d"]:format(tonumber(a.minLevel) or 0) end
	if u.reason == "pre" then
		local pre = u.pre or missingPre(a)
		if pre then return L["Requires %s first"]:format(titleOfQuest(pre, a.preTitles)) end
	end
	local N = ns.Names
	return L["Not offered by %s"]:format(N.Npc(a.npc) or a.npcName or N.Object(a.object) or a.objName or L["the quest giver"])
end

-- What an open accept's line says about the game's own word on it: ticked by
-- hand while the quest is not in the log (the tick does not stand for it,
-- #739), or its giver's window did not list it (Own.notListed: never a skip,
-- #741; the player is asked to report it).
function Own.acceptNotice(s, g, goal, status)
	if goal.t ~= "accept" or not goal.quest or (status ~= "active" and status ~= "pending") then return nil end
	if checked(s, g) then return L["%s isn't in your quest log"]:format(questTitle(goal) or titleOfQuest(goal.quest)) end
	if Own.notListed[goal.quest] then
		local N = ns.Names
		return L["Not offered by %s? Report it with /polestar"]:format(N.Npc(goal.npc) or goal.npcName or N.Object(goal.object) or goal.objName or L["the quest giver"])
	end
	return nil
end

-- A translated pattern (L["from %s"]) filled with value; nil without one.
function fmt(pattern, value)
	if not value then return nil end
	return pattern:format(value)
end

-- verb, subject, subjectKind, detail. An accept above the character's level
-- says from which level (an attunement's quests stay in its guide until then).
-- Quests, NPCs, objects and items are named in the client's language where
-- Polestar.Names has them, else as the guide names them.
function describe(goal)
	local t = goal.t
	local C = Compat()
	local N = ns.Names
	-- A place goal's area (`area`) as the client names it, in its language.
	local place = C.GetAreaName and C.GetAreaName(goal.area) or nil
	if t == "accept" then
		local detail = fmt(L["from %s"], N.Npc(goal.npc) or goal.npcName or N.Object(goal.object) or goal.objName or N.Item(goal.item) or goal.itemName)
		local lvl = tonumber(goal.minLevel)
		if lvl and player and (player.level or 1) < lvl then
			detail = detail and L["%s, from level %d"]:format(detail, lvl) or L["From level %d"]:format(lvl)
		end
		return L["Accept"], questTitle(goal), "quest", detail
	elseif t == "turnin" then
		return L["Turn in"], questTitle(goal), "quest", fmt(L["at %s"], N.Npc(goal.npc) or goal.npcName or N.Object(goal.object) or goal.objName)
	elseif t == "complete" then
		return L["Complete"], questTitle(goal), "quest", nil
	elseif t == "abandon" then
		return L["Abandon"], questTitle(goal), "quest", nil
	elseif t == "wait" then
		return L["Wait"], goal.text or L["%d seconds"]:format(tonumber(goal.seconds) or 0), "text", nil
	elseif t == "destroy" then
		return L["Destroy"], N.Item(goal.item) or goal.itemName, "item", nil
	elseif t == "kill" then
		-- `tame`: kill credit for taming the beast (a Lookup guide's Taming the Beast).
		return goal.tame and L["Tame"] or L["Kill"], N.Npc(goal.npc) or goal.target, "npc", goal.quest and fmt(L["for %s"], questTitle(goal)) or nil
	elseif t == "collect" then
		local item = N.Item(goal.item) or goal.itemName
		if goal.quest then return L["Collect"], item, "item", fmt(L["for %s"], questTitle(goal)) end
		local _, npcName = npcOf(goal)
		return L["Collect"], item, "item", fmt(L["from %s"], npcName)
	elseif t == "goto" then
		local mapName = C.GetMapName(goal.map)
		if place or goal.text then return L["Go to"], place or goal.text, "place", mapName end
		local lx, ly = liveXY(goal)
		return L["Go to"], ("%.1f, %.1f"):format(lx or goal.x, ly or goal.y), "place", mapName
	elseif t == "talk" then
		return L["Talk to"], N.Npc(goal.npc) or goal.npcName, "npc", nil
	elseif t == "interact" then
		return L["Click"], N.Object(goal.object) or goal.objName, "object", goal.quest and fmt(L["for %s"], questTitle(goal)) or nil
	elseif t == "use" then
		return L["Use"], N.Item(goal.item) or goal.itemName, "item", goal.quest and fmt(L["for %s"], questTitle(goal)) or nil
	elseif t == "sethome" or t == "home" then
		local _, npcName = npcOf(goal)
		local loc = place or goal.location or goal.text
		if loc then return L["Set your home to"], loc, "place", fmt(L["at %s"], npcName) end
		return L["Set your home at"], npcName or L["the nearest inn"], npcName and "npc" or "text", nil
	elseif t == "hearth" then
		return L["Hearth to"], place or goal.location or goal.text or "Hearthstone", "place", nil
	elseif t == "die" then
		return L["Die and resurrect at"], goal.location, "place", nil
	elseif t == "enter" then
		return L["Go to"], place or goal.location, "place", nil
	elseif t == "getfp" or t == "fpath" then
		local loc = place or (goal.node and N.Taxi(goal.node)) or goal.location or goal.text
		return L["Get the flight path at"], loc, "place", fmt(L["from %s"], N.Npc(goal.npc) or goal.npcName)
	elseif t == "fly" then
		return L["Fly to"], place or N.Taxi(goal.node) or goal.location, "place", nil
	elseif t == "train" then
		local _, npcName = npcOf(goal)
		if goal.skillLine and rankCap(goal) then
			local name = skillName(goal)
			return L["Train"], name, "skill", fmt(L["at %s"], npcName)
		end
		if npcName then return L["Train at"], npcName, "npc", nil end
		return L["Train at"], L["your trainer"], "text", nil
	elseif t == "buy" then
		local _, npcName = npcOf(goal)
		return L["Buy"], N.Item(goal.item) or goal.itemName, "item", fmt(L["from %s"], npcName)
	elseif t == "vendor" then
		local _, npcName = npcOf(goal)
		if npcName then return L["Sell and repair at"], npcName, "npc", nil end
		return L["Sell and repair at"], L["a vendor"], "text", nil
	elseif t == "level" then
		if goal.frac then return L["Reach level"], ns.LC("level and share of it", "%d (%d%%)"):format(goal.level, math.floor(goal.frac * 100 + 0.5)), "level", nil end
		return L["Reach level"], tostring(goal.level), "level", nil
	elseif t == "skill" then
		return L["Raise"], skillName(goal), "skill", fmt(L["to %d"], goal.level)
	elseif t == "cast" then
		return L["Cast"], N.Spell(goal.spell) or goal.spellName, "spell", nil
	elseif t == "learn" then
		local _, npcName = npcOf(goal)
		return L["Learn"], N.Spell(goal.spell) or goal.spellName, "spell", fmt(L["from %s"], npcName)
	elseif t == "craft" then
		local detail
		if goal.untilSkill then
			local name = skillName(goal)
			detail = name and L["until %s %d"]:format(name, goal.untilSkill) or fmt(L["until skill %d"], goal.untilSkill)
		end
		return L["Craft"], N.Spell(goal.spell) or goal.spellName, "spell", detail
	elseif t == "rep" then
		return L["Reach %s with"]:format(standingName(goal.standing)), N.Faction(goal.faction) or goal.factionName, "faction", nil
	elseif t == "explore" then
		local mapName = C.GetMapName(goal.map)
		if place or goal.text then return L["Explore"], place or goal.text, "area", mapName end
		local lx, ly = liveXY(goal)
		return L["Explore"], ("%.1f, %.1f"):format(lx or goal.x, ly or goal.y), "area", mapName
	elseif t == "achieve" then
		local detail
		if goal.criteria and C.GetAchievement then
			local a = C.GetAchievement(goal.achievement)
			local c = a and a.criteria and a.criteria[goal.criteria]
			if c and c.text ~= "" then detail = c.text end
		end
		return L["Complete"], goal.achievementName, "achievement", detail
	elseif t == "money" then
		return L["Have at least"], ns.MoneyText(goal.money or 0), "text", nil
	end
	return "", goal.text or "", "text", nil -- note, task
end

-- Goals whose count shows as a progress bar instead of in the text.
function tracksProgress(goal)
	local t = goal.t
	return (goal.quest and goal.oi) or t == "buy" or (t == "collect" and not goal.quest)
		or (t == "craft" and craftMode(goal) ~= "manual")
end

-- Display text overrides the default except where `text` names a place.
TEXT_IS_PLACE = { ["goto"] = true, explore = true }

-- Plain text, independent of the goal's state: "Kill Kobold Vermin" (with a
-- progress bar), "Kill 5 Young Wolf" (manual, no tracking). Second: a
-- collect's compiled source (`from`, `fromAlso`, named in the client's
-- language by `fromId`, `fromAlsoId`; `fromKind`, `fromRank`, `fromFaction`;
-- an NPC of a faction that is not the character's own is one to kill),
-- `inText` when the text names it.
function goalText(goal, verb, subject, detail)
	local fromKind = goal.fromKind or "npc"
	local nameOf = fromKind == "object" and ns.Names.Object or ns.Names.Npc
	local src = goal.from and {
		name = nameOf(goal.fromId) or goal.from, also = goal.fromAlso and (nameOf(goal.fromAlsoId) or goal.fromAlso),
		kind = fromKind, rank = goal.fromRank,
		enemy = fromKind == "npc" and not (goal.fromFaction == "AH"
			or (goal.fromFaction == "A" and player and player.faction == "Alliance")
			or (goal.fromFaction == "H" and player and player.faction == "Horde")),
	} or nil
	if goal.text and not TEXT_IS_PLACE[goal.t] then return goal.text, src end
	if verb == "" then return subject, src end
	if goal.t == "skill" then return verb .. " " .. tostring(subject) .. " " .. detail, src end
	local counted = goal.count and goal.count > 1 and not tracksProgress(goal)
	-- "Kill Grell or Grellkin for Fel Moss", "Collect Oats from Sack of Oats":
	-- a collect whose source is known says where the item comes from (the
	-- game's objective only names the item); not an object named as the item
	-- (the item lying there).
	if goal.t == "collect" and subject and src and goal.from ~= goal.itemName then
		local item = counted and (goal.count .. " " .. subject) or subject
		local who = src.name
		local rank = src.rank and ({ L["elite"], L["rare elite"], L["boss"], L["rare"] })[src.rank]
		if rank then who = who .. " (" .. rank .. ")" end
		if src.also then who = L["%s or %s"]:format(who, src.also) end
		src.inText = true
		if src.enemy then return L["Kill %s for %s"]:format(who, item), src end
		return L["Collect %s from %s"]:format(item, who), src
	end
	if counted then
		return verb .. " " .. goal.count .. " " .. tostring(subject), src
	end
	return verb .. " " .. tostring(subject), src
end

function goalView(s, g, goal, stepStatus, group)
	local status, cur, max, label, pkind
	if stepStatus == "na" then
		status = "na"
	else
		status, cur, max, label, pkind = goalStatus(s, g, goal, stepStatus == "current")
	end
	local progress = (cur and max) and { cur = cur, max = max, label = label, kind = pkind or "count" } or nil
	local verb, subject, kind, detail = describe(goal)
	local npc, npcName = npcOf(goal)
	local map, x, y, f, _, z = posOf(goal)
	local alternatives
	if goal.candidates then
		local n = #pickFor(goal).list
		alternatives = n > 0 and n - 1 or 0
	end
	local unavail = status == "skipped" and unavailableFor(goal) or nil
	local text, src = goalText(goal, verb, subject, detail)
	local need = player and greyNeed(goal)
	-- A grey accept "Skip grey quests" keeps: the open accept it leads to.
	local opens = need or nil
	return {
		index = g,
		group = group,
		t = goal.t,
		status = status,
		text = text,
		verb = verb,
		subject = subject,
		subjectKind = kind,
		detail = detail,
		progress = progress,
		manual = isManual(goal),
		-- The player can tick any goal but a note (ToggleGoal); `ticked`: a
		-- stored check-off they can clear. `dismissed`: an optional goal they
		-- skipped (SkipGoal), status "skipped".
		tickable = goal.t ~= "note" and status ~= "na",
		ticked = checked(s, g),
		dismissed = Own.goalSkipped(s, g) or nil,
		optional = goal.optional and true or false,
		note = goal.note,
		map = map, x = x, y = y, f = f, z = z,
		quest = goal.quest, oi = goal.oi, npc = npc, npcName = npcName, item = goal.item,
		alternatives = alternatives,
		spots = goal.spots and #goal.spots or nil, spread = goal.spread or nil,
		lvl = goal.candidates and chosen(goal) and chosen(goal).lvl or nil,
		unavailable = unavail and unavail.reason or nil,
		unavailableText = unavail and unavailableText(unavail) or nil,
		-- An open accept the game does not confirm: ticked but not in the
		-- quest log, or not listed by its giver (Own.acceptNotice).
		noticeText = Own.acceptNotice(s, g, goal, status),
		skippedGrey = need == false or nil,
		keptGrey = opens and opens.quest or nil,
		keptGreyText = opens and L["Grey, kept: opens %s"]:format(questTitle(opens)) or nil,
		-- A hearth goal still to do while the Hearthstone waits, or while
		-- travelling there is about as fast (#576, Own.hearthText).
		hearthText = (status == "active" or status == "pending") and Own.hearthText(goal) or nil,
		-- A level goal still to reach: the XP it takes (Own.xpLeft).
		xpLeft = goal.t == "level" and (status == "active" or status == "pending") and Own.xpLeft(goal) or nil,
		skillLine = goal.skillLine, spell = goal.spell, faction = goal.faction,
		standing = goal.standing, standingName = goal.standing and standingName(goal.standing) or nil,
		achievement = goal.achievement, criteria = goal.criteria,
		rewards = goal.rewards,
		objectives = goal.t == "complete" and (status == "active" or status == "pending") and select(3, Own.completeState(goal.quest, true)) or nil,
		-- Group content (compiled `group`: elite, dungeon, raid or an author's
		-- group size); `group` above is the goal's field group.
		party = type(goal.group) == "table" and type(goal.group.kind) == "string" and goal.group or nil,
		-- An escort quest's accept or objective (compiled `escort`).
		escort = goal.escort == true or nil,
		-- A collect's source (compiled `from`); `inText`: the goal's text
		-- already names it.
		source = src,
	}
end

function stepStatusOf(s)
	local step = guide.steps[s]
	if not stepApplies(step) then return "na" end
	if s == current then return "current" end
	if current and s > current then return "upcoming" end
	if stepDone(s) then return "done" end
	-- Behind a look-ahead: still to do. Otherwise passed without being done:
	-- skipped, or live state regressed since the last evaluation (the next
	-- one corrects it).
	if computed and s >= computed and not isSkipped(s) then return "upcoming" end
	return "skipped"
end

---------------------------------------------------------------------------
-- Waypoint and goto arrival
---------------------------------------------------------------------------

-- A hearth goal while the Hearthstone cannot take the player there (#576):
-- seconds until it is ready, 0 with no Hearthstone in the bags; nil when it
-- is ready (or QoL, which reads it, is not loaded).
function Own.hearthWait(goal)
	if goal.t ~= "hearth" then return nil end
	local Q = ns.QoL
	local h = Q and Q.GetHearth and Q.GetHearth()
	if not h then return nil end
	if not h.have then return 0 end
	if (h.remaining or 0) > 0 then return h.remaining end
	return nil
end

-- The inn a hearth goal's location names (Nav/Travel.lua's inns), to walk to.
function Own.hearthInn(goal)
	local nav = ns.Nav
	local inn = nav and nav.FindInn and nav.FindInn(goal.npc, goal.location)
	if inn and inn.map and inn.x and inn.y then return inn end
	return nil
end

-- A hearth goal whose Hearthstone is bound at another inn (#667): the bind
-- location, as the client names it. nil when bound at the goal's inn (the
-- same check as `sethome`), and when the data does not know both inns, so
-- an inn it cannot place never reads as elsewhere.
function Own.hearthElsewhere(goal)
	if goal.t ~= "hearth" then return nil end
	local nav = ns.Nav
	local want = nav and nav.FindInn and nav.FindInn(goal.npc, goal.location)
	local bound = want and nav.BoundInn and nav.BoundInn()
	if not bound or bound == want then return nil end
	local C = Compat()
	local loc, areaName = C.GetBindLocation(), C.GetAreaName
	if not loc or loc == "" or same(loc, goal.location) then return nil end
	if areaName and (same(loc, areaName(want.area)) or same(loc, areaName(goal.area))) then return nil end
	return loc
end

-- Seconds the way to a hearth goal's inn takes without the Hearthstone:
-- walks, flights and boats as the arrow would plan them (Nav.EstimateTravel
-- with noHearth, cached there for a few seconds); nil when unknown.
function Own.hearthTrip(inn)
	local nav = ns.Nav
	if not (inn and nav and nav.EstimateTravel) then return nil end
	local ok, s = pcall(nav.EstimateTravel, nil, inn, nil, true)
	if ok and type(s) == "number" then return s end
	return nil
end

-- What a Hearthstone costs and is worth, as the route planner prices it
-- (Nav/Travel.lua): its cast and loading screen, and the time it must save
-- before its hour's cooldown is spent on a trip.
function Own.hearthCost()
	local nav = ns.Nav
	return (nav and nav.HEARTH_SECONDS) or 15, (nav and nav.HEARTH_MARGIN) or 120
end

-- How to make a hearth goal's trip now: wait (Own.hearthWait), the inn
-- (Own.hearthInn), the trip there without the Hearthstone in seconds
-- (Own.hearthTrip, only while the inn is known), and `go`: travel there
-- yourself, as the Hearthstone waits, is missing or is bound at another inn
-- (Own.hearthElsewhere, #667), or, ready, saves less
-- than the planner's margin over the trip (the inn is close or a short
-- flight away). Never holds the step: arriving checks the goal off either way.
function Own.hearthPlan(goal)
	local wait = Own.hearthWait(goal)
	local inn = goal.t == "hearth" and Own.hearthInn(goal) or nil
	local trip = inn and Own.hearthTrip(inn)
	local cast, margin = Own.hearthCost()
	local go = wait ~= nil or Own.hearthElsewhere(goal) ~= nil or (trip ~= nil and trip <= cast + margin)
	return wait, inn, trip, go
end

-- "under a minute", "23 min".
function Own.minutes(seconds)
	return seconds < 60 and L["under a minute"] or L["%d min"]:format(math.ceil(seconds / 60))
end

-- The line under a hearth goal: how long the Hearthstone waits and, where
-- the trip there is known, whether to set off now or wait for it; with the
-- Hearthstone ready, that travelling is about as fast when it is. Bound at
-- another inn, that first: hearthing would land there (#667). nil when
-- hearthing is the way.
function Own.hearthText(goal)
	if goal.t ~= "hearth" then return nil end
	local wait, inn, trip, go = Own.hearthPlan(goal)
	local elsewhere = Own.hearthElsewhere(goal)
	if elsewhere then
		local _, subject = describe(goal)
		return (inn and L["Your Hearthstone is bound to %s, not %s: walk to the inn"] or L["Your Hearthstone is bound to %s, not %s"]):format(elsewhere, subject)
	end
	if not wait then
		if go then return L["The inn is only %s away: travel there and keep the Hearthstone"]:format(Own.minutes(trip)) end
		return nil
	end
	if wait == 0 then
		return inn and L["No Hearthstone in your bags: walk to the inn"] or L["No Hearthstone in your bags"]
	end
	local left = Own.minutes(wait)
	if trip then
		local cast = Own.hearthCost()
		if trip <= wait + cast then return L["Hearthstone ready in %s; the trip takes %s: set off now"]:format(left, Own.minutes(trip)) end
		return L["Hearthstone ready in %s, sooner than the %s trip: wait for it"]:format(left, Own.minutes(trip))
	end
	return (inn and L["Hearthstone ready in %s: walk to the inn, or wait for it"] or L["Hearthstone ready in %s"]):format(left)
end

-- Ranks for a fallback waypoint: blocking goals first, then optional goals,
-- then notes (which never complete).
function waypointRank(goal)
	if goal.t == "note" then return 3 end
	if goal.optional then return 2 end
	return 1
end

-- `area`: the spawn area's radius in yards when the goal has spots (Nav
-- counts the whole area as reached); `r` stays the arrival margin. An area
-- objective's waypoint also carries `search` (Nav never says arrived),
-- `spots` (the goal's list, for the map marks) and `spot` (its index).
-- `z`: the goal's height at that point (posOf), for the walking engine's floor.
-- `at`: a group (stepGroups) whose place stands in for the goal's own.
-- `s`: the goal's step, when not the current one (an along goal).
function waypointOf(g, goal, at, s)
	s = s or current
	local map, x, y, f, area, z
	local walk
	if at then
		map, x, y, f, z = at.map, at.x, at.y, at.f, at.z
	else
		map, x, y, f, area, z = posOf(goal)
		-- A hearth goal has no place of its own; while the Hearthstone waits,
		-- is bound at another inn (#667) or travelling is about as fast
		-- (Own.hearthPlan), the arrow leads to its inn (#576).
		if not map and goal.t == "hearth" then
			local _, inn, _, go = Own.hearthPlan(goal)
			if go and inn then map, x, y, f, walk = inn.map, inn.x, inn.y, inn.f, true end
		end
	end
	if not (map and x and y) or not goalApplies(goal) or unavailableFor(goal) or Own.goalSkipped(s, g)
		or goalDone(s, g, goal) then return nil end
	local verb, subject, _, detail = describe(goal)
	local many = area and #goal.spots > 1
	return {
		map = map, x = x, y = y, f = f, z = z,
		label = walk and L["Walk to %s"]:format(subject) or (goalText(goal, verb, subject, detail)),
		stepIndex = s, goalIndex = g, kind = goal.t,
		r = goal.r or DEFAULT_RADIUS, area = area,
		search = area and goal.spread or nil,
		spots = many and goal.spots or nil, spot = many and Spots.index(goal) or nil,
	}
end

-- A "Go to" naming its step (the window's header) in a field group that holds
-- other goals: it names the area those goals are in, not a goal of its own.
function Own.isHeader(step, goal, grp)
	if goal.t ~= "goto" or not step.title or goal.text ~= step.title or not grp or grp.kind ~= "here" then return false end
	for _, j in ipairs(grp.goals) do
		local other = step.goals[j]
		if other ~= goal and other.t ~= "note" and goalApplies(other) then return true end
	end
	return false
end

-- The current goal of step s, the one the window marks and the arrow leads
-- to: in the focus group, the first open blocking goal, else the first open
-- optional one; the group's header only when nothing else is open. When that
-- first blocking goal is a field goal (kill, collect, interact with a place)
-- and the group has two or more such goals open, the nearest of them to the
-- player takes its place (Own.nearestField: sticky, never switched in a
-- fight). Returns its index (or nil) and the open header's index (or nil).
function Own.currentGoal(s, groups, focus)
	local grp = focus and groups[focus]
	if not grp then return nil end
	local step = guide.steps[s]
	local header, optional, first, fields
	for _, g in ipairs(grp.goals) do
		local goal = step.goals[g]
		if goal.t ~= "note" and goalApplies(goal) and not unavailableFor(goal) and not Own.goalSkipped(s, g)
			and not goalDone(s, g, goal) then
			if Own.isHeader(step, goal, grp) then
				header = header or g
			elseif not goal.optional then
				first = first or g
				if Own.isField(goal) then
					fields = fields or {}
					fields[#fields + 1] = g
				end
			else
				optional = optional or g
			end
		end
	end
	if first then
		if fields and #fields >= 2 and fields[1] == first then
			first = Own.nearestField(s, fields)
		else
			Own.nearPick[step] = nil
		end
		return first, header or Own.headerOf(s, grp, first)
	end
	return optional or header, header
end

-- The open header of a group after goal index `after` (a header comes first,
-- so this is rarely reached).
function Own.headerOf(s, grp, after)
	local step = guide.steps[s]
	for _, g in ipairs(grp.goals) do
		local goal = step.goals[g]
		if g > after and Own.isHeader(step, goal, grp) and not goalDone(s, g, goal) then return g end
	end
	return nil
end

-- Whether group grp holds a goal for quest q.
function Own.dealsWith(grp, goals, q)
	for _, g in ipairs(grp.goals) do
		if goals[g].quest == q then return true end
	end
	return false
end

-- The arrow's goal: the one the player chose in the current step (a row
-- click, the next spot), while it is open; else the current goal's own place;
-- else the header's; else the focus group's first open located goal
-- (blocking, then optional, then notes); else, for a quest's current goal,
-- the place of the focus group or of the nearest group before it for that
-- quest. The arrow only ever points at a goal the guide window shows. A done
-- step (no focus, e.g. viewed with Prev) has nothing to point at, even when
-- optional goals are left open; nor has a Class guide the character cannot
-- start yet (Own.startGate), or another race's starting zone the player has
-- not reached (Own.awayStart), on its live step. An along goal the player
-- chose (Engine.AimAlong) leads while it is listed and open.
function findWaypoint()
	if not current or (current == computed and (Own.startGate(guide) or Own.awayStart(guide))) then return nil end
	local goals = guide.steps[current].goals
	if aim then
		for g, goal in ipairs(goals) do
			if goal == aim then
				local wp = waypointOf(g, goal)
				if wp then return wp end
			end
		end
		local as, ag = Own.alongOf(aim)
		local wp = as and waypointOf(ag, aim, nil, as)
		if wp then return wp end
	end
	local groups, focus = stepGroups(current)
	local grp = focus and groups[focus]
	if not grp then return nil end
	local cg, header = Own.currentGoal(current, groups, focus)
	local wp = cg and waypointOf(cg, goals[cg])
	if wp then return wp end
	wp = header and waypointOf(header, goals[header])
	if wp then return wp end
	for rank = 1, 3 do
		for _, g in ipairs(grp.goals) do
			local goal = goals[g]
			if waypointRank(goal) == rank then
				wp = waypointOf(g, goal)
				if wp then return wp end
			end
		end
	end
	-- Nothing open in the focus group has a place (a bare `complete` after its
	-- giver's goals, #256): a quest's goal takes the place of its group's work
	-- (a goto already reached), else of the nearest group before it that
	-- deals with the same quest (the giver, an escort's start). Never a later
	-- group's: the window does not show it yet, and a turn-in's place does not
	-- lead to the objective.
	local quest = cg and goals[cg].quest
	if quest then
		if grp.map then return waypointOf(cg, goals[cg], grp) end
		for i = focus - 1, 1, -1 do
			local before = groups[i]
			if before.map and Own.dealsWith(before, goals, quest) then return waypointOf(cg, goals[cg], before) end
		end
	end
	return nil
end

function sameWaypoint(a, b)
	if a == b then return true end
	if not a or not b then return false end
	return a.stepIndex == b.stepIndex and a.goalIndex == b.goalIndex and a.map == b.map
		and a.x == b.x and a.y == b.y and a.f == b.f
		and a.label == b.label and a.kind == b.kind and a.r == b.r
end

worldOf = setmetatable({}, { __mode = "k" }) -- goal -> { c, wx, wy }

function goalWorld(goal)
	local w = worldOf[goal]
	if not w then
		local c, wx, wy = Compat().MapToWorld(goal.map, goal.x, goal.y, goal.f)
		if not c then return nil end
		w = { c, wx, wy }
		worldOf[goal] = w
	end
	return w[1], w[2], w[3]
end

-- Field goals: work done out at a place, where a step can hold several
-- (Garren's Haunt: the Graverobbers, the Mongrels, the Doom Weed). With two
-- or more open, the arrow leads to the nearest (Own.currentGoal); written
-- order still orders the window's list. Sticky: another goal takes over
-- only once it is NEAR_SHARE of the current one's distance and NEAR_YARDS
-- nearer, or the current one is done; never while the player is in a fight.
Own.FIELD = { kill = true, collect = true, interact = true }
Own.NEAR_SHARE, Own.NEAR_YARDS = 0.75, 40
Own.nearPick = setmetatable({}, { __mode = "k" }) -- step -> goal index the arrow is on

function Own.isField(goal)
	return Own.FIELD[goal.t] == true and not goal.candidates and (goal.spots ~= nil or (goal.map ~= nil and goal.x ~= nil and goal.y ~= nil))
end

-- Yards from the player (c, px, py) to a field goal's nearest spawn area
-- (its edge; alternatives left out, as the spot picks leave them), else to
-- its point; nil on another continent.
function Own.fieldDistance(goal, c, px, py)
	local best
	for _, s in ipairs(goal.spots or NONE) do
		if not s.alt then
			local d = Spots.edge(goal, s, c, px, py)
			if d and (not best or d < best) then best = d end
		end
	end
	if best or not (goal.map and goal.x and goal.y) then return best end
	local gc, gx, gy = goalWorld(goal)
	if gc ~= c then return nil end
	return ((gx - px) ^ 2 + (gy - py) ^ 2) ^ 0.5
end

-- Of step s's open field goals `list` (indexes, written order), the one the
-- arrow is on: the one it was on while it is open and nothing is clearly
-- nearer, or the player fights; else the nearest. Where nothing is
-- measurable (no position, another continent), the first. Sets
-- Own.nearMoved when the pick changes (the arrival poll re-evaluates then).
function Own.nearestField(s, list)
	local step = guide.steps[s]
	local cur = Own.nearPick[step]
	local open = false
	for _, g in ipairs(list) do
		if g == cur then open = true end
	end
	if not open then cur = nil end
	local c, px, py = Compat().GetPlayerWorldPosition()
	local fighting = UnitAffectingCombat and UnitAffectingCombat("player")
	local pick = cur
	if c and not (cur and fighting) then
		local best, bestD, curD
		for _, g in ipairs(list) do
			local d = Own.fieldDistance(step.goals[g], c, px, py)
			if g == cur then curD = d end
			if d and (not bestD or d < bestD) then best, bestD = g, d end
		end
		if best and (not cur or not curD or (bestD < curD * Own.NEAR_SHARE and bestD < curD - Own.NEAR_YARDS)) then pick = best end
	end
	pick = pick or list[1]
	if pick ~= Own.nearPick[step] then
		Own.nearPick[step] = pick
		Own.nearMoved = true
		-- Its spawn area from where the player stands now, not from where it
		-- was first picked.
		local goal = step.goals[pick]
		if c and goal.spots and Spots.chosen[goal] then Spots.repick(goal, c, px, py) end
	end
	return pick
end

---------------------------------------------------------------------------
