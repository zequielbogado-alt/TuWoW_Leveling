-- Engine public API, tab API, and route choice API
-- Modular part of ns.Engine (< 1000 lines).

local ADDON, ns = ...
setfenv(1, ns.Engine._env)

-- Tab API
---------------------------------------------------------------------------

-- Already open: activates it (unless activate == false). Full: nil. `auto`:
-- opened for the player rather than by them (Engine.StartGuide), so a guide
-- the catch-up passes whole chains on to the next, as the login's pick does,
-- instead of staying open, finished.
function Engine.OpenTab(id, activate, auto)
	local g = id and Guides.Get(id)
	if not g or not ns.IsLoggedIn() then return nil end
	local open = tabIndexOf(id)
	if open then
		if activate ~= false then Engine.SelectTab(open) end
		return open
	end
	if #tabs >= MAX_TABS then return nil end
	local tab = { guide = g, passedUpTo = 0, autoChain = auto and true or false, sawIncomplete = false, placing = GetTime() + PLACE_SECONDS }
	-- Finished or passed earlier this session, it may finish and chain again.
	completedFired[id] = nil
	Own.opened[id] = true
	Own.endOpen[id], Own.lastOpen[id] = nil, nil -- seen afresh once placed (Own.noteEnd)
	tabs[#tabs + 1] = tab
	local index = #tabs
	tabsDirty = true
	if activate ~= false or activeIndex == 0 then
		activeIndex = index
		useActive()
		persist()
		ns.Fire("GUIDE_CHANGED", id)
	else
		persist()
	end
	evaluate()
	return index
end

function Engine.SelectTab(index)
	if type(index) ~= "number" or not tabs[index] or index == activeIndex then return end
	activeIndex = index
	useActive()
	persist()
	tabsDirty = true
	announceActive()
	evaluate()
end

-- Closing the active tab activates its right neighbour (else the left one);
-- closing the last tab leaves no guide.
function Engine.CloseTab(index)
	if type(index) ~= "number" or not tabs[index] then return end
	sync()
	table.remove(tabs, index)
	tabsDirty = true
	if index == activeIndex then
		activeIndex = math.min(index, #tabs)
		useActive()
		persist()
		announceActive()
	else
		if index < activeIndex then activeIndex = activeIndex - 1 end
		persist()
	end
	evaluate()
end

function Engine.MoveTab(from, to)
	if type(from) ~= "number" or type(to) ~= "number" or not tabs[from] then return end
	if to < 1 then to = 1 elseif to > #tabs then to = #tabs end
	if from == to then return end
	local activeTab = tabs[activeIndex]
	local tab = table.remove(tabs, from)
	table.insert(tabs, to, tab)
	for i = 1, #tabs do
		if tabs[i] == activeTab then activeIndex = i end
	end
	persist()
	fireTabs()
end

-- For the picker: "new", "started" (opened in a tab before, or has
-- check-offs/skips) or "done" (finished this session, or open and finished;
-- a guide the catch-up passed whole is done only once every quest the
-- character can take in it is turned in, not for its quests left out);
-- doneSteps/totalSteps when the guide is open in a tab.
function Engine.GetGuideState(id)
	local g = id and Guides.Get(id)
	if not g then return nil end
	if not player then refreshPlayer() end
	local open = tabIndexOf(id)
	local done, total
	local finished = completedFired[id]
	if open then
		use(tabs[open])
		done, total = progressLoaded()
		finished = finished or computed == nil
		useActive()
	end
	if finished and not (Own.passedWhole[id] and Own.allQuestsDone(g) == false) then return "done", done, total end
	local s = ns.CharState()
	local started = type(s.flags.started) == "table" and s.flags.started[id]
	if open or started or s.manual[id] or s.skipped[id] then return "started", done, total end
	return "new", done, total
end

---------------------------------------------------------------------------
-- Public API
---------------------------------------------------------------------------

function Engine.GetGuide() return guide end

-- Replaces the active tab's guide (opens a first tab when none is open); a
-- guide already open in another tab is selected instead of duplicated. nil
-- closes the active tab.
function Engine.SetGuide(id)
	if id ~= nil and not Guides.Get(id) then return false end
	if not ns.IsLoggedIn() then
		local s = ns.CharState()
		local list = type(s.tabs) == "table" and s.tabs or {}
		local a = math.min(math.max(tonumber(s.activeTab) or 1, 1), #list + 1)
		if id then
			list[a] = id
		else
			table.remove(list, a)
			a = math.min(a, #list)
		end
		s.tabs, s.activeTab, s.guide = list, a > 0 and a or nil, list[a]
		return true
	end
	if id == nil then
		if activeIndex > 0 then Engine.CloseTab(activeIndex) end
		return true
	end
	if guide and guide.id == id then
		evaluate()
		return true
	end
	local open = tabIndexOf(id)
	if open then
		Engine.SelectTab(open)
	elseif activeIndex == 0 then
		Engine.OpenTab(id)
	else
		resetLoaded(id, false)
		persist()
		ns.Fire("GUIDE_CHANGED", id)
		evaluate()
	end
	return true
end

---------------------------------------------------------------------------
-- Route choice API (see "Route choice" above)
---------------------------------------------------------------------------

-- Where a guide's zone art centres. A goal's place on the guide's zone map,
-- in that map's live frame (percent; its own figures when its frame is not
-- registered), or nil when it is elsewhere.
function onZone(g, goal)
	if not (g.zone and goal.map == g.zone and goal.x and goal.y) then return nil end
	local x, y = goal.x, goal.y
	if goal.f then
		local C = Compat()
		local c, wx, wy = C.MapToWorld(goal.map, goal.x, goal.y, goal.f)
		if c then x, y = C.WorldToMap(c, wx, wy, goal.map) end
	end
	if x and y then return { x = x, y = y } end
	return nil
end

-- The first goal of a step placed on the guide's zone map, or nil.
function stepFocus(g, step)
	for _, goal in ipairs(step.goals) do
		local f = onZone(g, goal)
		if f then return f end
	end
	return nil
end

-- Where the guide starts: its first goal on its zone map, or nil.
focusCache = setmetatable({}, { __mode = "k" })
function zoneFocus(g)
	local f = focusCache[g]
	if f == nil then
		f = false
		for _, step in ipairs(g.steps) do
			f = stepFocus(g, step) or false
			if f then break end
		end
		focusCache[g] = f
	end
	return f or nil
end

-- Live-frame percent of where a guide is for this character (the guide
-- menu's zone art), or nil: its current step's place when the guide is open
-- in a tab, unfinished, and that step is on the guide's zone map; otherwise
-- where it starts (zoneFocus).
function Engine.GuideFocus(id)
	local g = id and Guides.Get(id)
	if not g then return nil end
	local open = tabIndexOf(id)
	local t = open and tabs[open]
	local step = t and t.computed ~= nil and t.current and g.steps[t.current]
	local f = step and stepFocus(g, step) or zoneFocus(g)
	if not f then return nil end
	return f.x, f.y
end

-- What the choice after `fromId` offers this character, or nil (no choice,
-- or nothing fits): { from, fromTitle, recommended, chosen, joinsAt,
-- options = { { id, title, zone, zoneName, focusX, focusY, minLevel, maxLevel,
-- pitch, pros, cons, seconds, quests, steps, recommended, chosen, outleveled,
-- open }, ... } }. zone is the guide's uiMapID (for its art), focusX/Y where
-- the route starts on it (live-frame percent); joinsAt: the title of the
-- guide every option continues to, when they share one.
function Engine.GetRouteChoice(fromId)
	local from = fromId and Guides.Get(fromId)
	if not (from and from.nextChoices) then return nil end
	local options = routeOptions(from)
	if #options == 0 then return nil end
	local rec = rankRoutes(options)
	local chosenId = routesTable()[from.id]
	local out = { from = from.id, fromTitle = from.title, recommended = rec.guide.id, chosen = chosenId, options = {} }
	local joins = options[1].guide.next
	for i, o in ipairs(options) do
		local g = o.guide
		if g.next ~= joins then joins = nil end
		local quests = 0
		for _, step in ipairs(g.steps) do
			if Guides.Matches(step.only, player) then
				for _, goal in ipairs(step.goals) do
					if goal.t == "accept" and Guides.Matches(goal.only, player) then quests = quests + 1 end
				end
			end
		end
		local focus = zoneFocus(g)
		out.options[i] = {
			id = g.id, title = g.title, zone = g.zone, zoneName = g.zoneName, focusX = focus and focus.x, focusY = focus and focus.y,
			minLevel = g.minLevel, maxLevel = g.maxLevel,
			pitch = g.pitch, pros = g.pros, cons = g.cons, seconds = o.seconds, quests = quests, steps = #g.steps,
			recommended = o == rec, chosen = g.id == chosenId, outleveled = o.outleveled, open = tabIndexOf(g.id) ~= nil,
		}
	end
	local joinGuide = joins and Guides.Get(joins)
	out.joinsAt = joinGuide and joinGuide.title or nil
	return out
end

-- Continue `fromId`'s route with `toId` (one of its options): remembered for
-- the character and loaded in place of the finished guide, else of the open
-- option being changed, else in the active tab. Fires ROUTE_CHOSEN.
function Engine.ChooseRoute(fromId, toId)
	local from, to = fromId and Guides.Get(fromId), toId and Guides.Get(toId)
	if not (from and to and from.nextChoices) then return false end
	local offered = false
	for _, id in ipairs(from.nextChoices) do
		if id == toId then offered = Own.optionHolds(from, id) end
	end
	if not offered then return false end
	routesTable()[fromId] = toId
	if not ns.IsLoggedIn() then return true end
	local index = tabIndexOf(toId)
	if index then
		Engine.SelectTab(index)
	else
		index = tabIndexOf(fromId)
		if not index then
			for _, id in ipairs(from.nextChoices) do
				index = tabIndexOf(id)
				if index then break end
			end
		end
		if not index and activeIndex == 0 then
			Engine.OpenTab(toId)
		else
			use(tabs[index or activeIndex])
			resetLoaded(toId, true)
			activeIndex = index or activeIndex
			useActive()
			persist()
			ns.Fire("GUIDE_CHANGED", toId)
			evaluate()
		end
	end
	ns.Fire("ROUTE_CHOSEN", fromId, toId)
	return true
end

-- The dungeons the player runs in leveling guides (`when dungeon`, the
-- Options' "Dungeons in leveling guides"): CharState().dungeons[map] = true,
-- by the instance's Map id; none by default, so the solo route is the
-- default. A change re-evaluates the guides at once; a step the route has
-- passed keeps its stored outcome (Own.latchWhen).
function Engine.DungeonChosen(map)
	return ns.CharState().dungeons[map] == true
end

function Engine.ChooseDungeon(map, on)
	if type(map) ~= "number" then return end
	ns.CharState().dungeons[map] = on and true or nil
	requestUpdate()
end

-- The group quest the live step waits on (`when group`, unanswered): its
-- quest id and title (the step's goal for it, else the guide's accept, else
-- the step's title), or nil.
function Engine.GroupQuestion()
	local step = guide and computed and guide.steps[computed]
	local q = step and Own.groupPending(step)
	if not q then return nil end
	for _, goal in ipairs(step.goals) do
		if goal.quest == q and goal.title then return q, goal.title end
	end
	local a = layoutOf(guide).accepts[q]
	return q, (a and a[1].goal.title) or step.title
end

-- The group quests (`when group`) of the guides for this character (the
-- guide's faction, races and classes, the step's `only`): { { quest, title } },
-- each quest once, in guide and step order. For the Options list.
function Engine.GroupQuests()
	if not player then refreshPlayer() end
	local out, seen = {}, {}
	for _, h in ipairs(Guides.List()) do
		local g = Guides.Get(h.id)
		-- A race part's guide not read in lists them in its header.
		if g and Guides.GuideMatches(g, player) and rawget(g, "steps") == nil and type(rawget(g, "stepsSrc")) == "string" then
			for _, gq in ipairs(type(g.groupQuests) == "table" and g.groupQuests or NONE) do
				if type(gq) == "table" and type(gq.quest) == "number" and not seen[gq.quest] then
					seen[gq.quest] = true
					out[#out + 1] = { quest = gq.quest, title = gq.title }
				end
			end
		elseif g and Guides.GuideMatches(g, player) then
			for _, step in ipairs(g.steps) do
				for _, p in ipairs(Guides.Matches(step.only, player) and step.when or NONE) do
					if p.k == "group" and not seen[p.q] then
						seen[p.q] = true
						local title
						for _, goal in ipairs(step.goals) do
							if goal.quest == p.q and goal.title then title = goal.title break end
						end
						out[#out + 1] = { quest = p.q, title = title or step.title }
					end
				end
			end
		end
	end
	return out
end

-- The player's answer for group quest q: "do", "skip", or nil to ask again.
-- Per character, for every guide (CharState().groupQuests); a quest not
-- answered takes behavior.groupQuests ("do", "skip"; "ask": nil).
function Engine.GroupAnswer(q) return Own.groupAnswer(q) end

function Engine.AnswerGroup(q, answer)
	if type(q) ~= "number" or (answer ~= nil and answer ~= "do" and answer ~= "skip") then return end
	ns.CharState().groupQuests[q] = answer
	requestUpdate()
end

-- The quest the active guide holds for the player's answer (it left the log
-- after the route had passed its accept, Own.holdLost): its id and title, the
-- lowest id first, or nil.
function Engine.LostQuestion()
	local all = guide and ns.CharState().lostQuests
	local mine = all and all[guide.id]
	if not mine then return nil end
	local q
	for id in pairs(mine) do
		if not q or id < q then q = id end
	end
	local a = layoutOf(guide).accepts[q]
	return q, a and questTitle(a[1].goal) or nil
end

-- The answer for a held quest: "back" lets the route go back to its giver,
-- "skip" skips it and the quests that follow from it (Engine.SkipQuest).
function Engine.AnswerLost(q, answer)
	local all = ns.CharState().lostQuests
	if type(q) ~= "number" or not all or (answer ~= "back" and answer ~= "skip") then return end
	Own.removed[q] = nil
	for id, mine in pairs(all) do
		mine[q] = nil
		if not next(mine) then all[id] = nil end
	end
	if not next(all) then ns.CharState().lostQuests = nil end
	if answer == "skip" then
		Engine.SkipQuest(q, true)
	else
		placing = nil
		evaluate()
	end
end

-- The active tab's finished guide when its route choice waits for the
-- player, else nil.
function Engine.PendingRouteChoice()
	if not (guide and guide.nextChoices) or computed ~= nil or current ~= nil then return nil end
	if not player then refreshPlayer() end
	local _, asks = routeNext(guide)
	return asks and guide.id or nil
end

-- Whether `fromId`'s `next` offers `toId` now: one of its guides, and its
-- `when`, if any, holds (Own.optionHolds). Guides.OfferedBy and the guide
-- menu ask this.
function Engine.RouteOffered(fromId, toId)
	local from = fromId and Guides.Get(fromId)
	if not (from and toId) then return false end
	local listed = from.next == toId
	for _, id in ipairs(from.nextChoices or NONE) do
		if id == toId then listed = true end
	end
	return listed and Own.optionHolds(from, toId)
end

-- Whether the player reached the end of leveling guide `id` (Own.noteEnd;
-- per character): the guide window then offers the next guide.
function Engine.GuideEnded(id)
	return id ~= nil and ns.CharState().guideEnds[id] == true
end

-- Start the guide that follows `fromId` now (Engine.NextGuide) in fromId's
-- tab, as the hand-off does by itself (the catch-up may pass it whole and go
-- on), and make that tab the active one; a next guide already open in a tab
-- is selected instead, and with fromId in no tab it opens in a new one. The
-- guide-end window's Start and the guide window's banner. False with no next
-- guide, or a route choice to make first (Engine.GetRouteChoice).
function Engine.StartNext(fromId)
	local nextId = Engine.NextGuide(fromId)
	if not (nextId and Guides.Get(nextId) and ns.IsLoggedIn()) then return false end
	local open = tabIndexOf(nextId)
	if open then
		Engine.SelectTab(open)
		return true
	end
	local index = tabIndexOf(fromId)
	if not index then return Engine.OpenTab(nextId, true, true) ~= nil end
	use(tabs[index])
	Own.opened[fromId] = nil
	completedFired[nextId] = nil
	resetLoaded(nextId, true)
	activeIndex = index
	useActive()
	persist()
	ns.Fire("GUIDE_CHANGED", nextId)
	evaluate()
	return true
end

-- The guide Polestar goes on with after `fromId` now (as at its hand-off),
-- or nil: none is offered, or the player has to choose first.
function Engine.NextGuide(fromId)
	local from = fromId and Guides.Get(fromId)
	if not from then return nil end
	if not player then refreshPlayer() end
	local id, asks = routeNext(from)
	if asks then return nil end
	return id
end

-- The choice that offers guide `id` to this character (to change route), or nil.
function Engine.RouteChoiceFor(id)
	local from = id and choiceOffering(id)
	return from and from.id or nil
end

-- `/polestar path`: the waiting choice of the active tab, else the choice that
-- offered the active guide. Fires ROUTE_CHOICE; returns the from-guide id or nil.
function Engine.OfferRouteChoice()
	local fromId = Engine.PendingRouteChoice() or (guide and Engine.RouteChoiceFor(guide.id))
	if fromId then ns.Fire("ROUTE_CHOICE", fromId) end
	return fromId
end

function Engine.GetStepIndex() return current end

function Engine.GetStepCount() return guide and #guide.steps or 0 end

function Engine.GetStepView(i)
	if not guide or type(i) ~= "number" then return nil end
	local step = guide.steps[i]
	if not step then return nil end
	if not player then refreshPlayer() end
	local status = stepStatusOf(i)
	local groups, focus, groupOf = stepGroups(i)
	local goals = {}
	for g, goal in ipairs(step.goals) do
		goals[g] = goalView(i, g, goal, status, groupOf[g])
		if Own.pinOpen(i, goal) then goals[g].pinOpen = true end
	end
	-- A quest that starts from an item reads as one line, the accept, with how
	-- to get the item under it (`starter`). Until the item is in the bags the
	-- collect's row stands for both (`starterOf` = the accept's index: the
	-- window words it as the accept; its waypoint, spots and index stay the
	-- collect's). After that, or once the quest is taken or out of reach, the
	-- accept's own row ("in your bags, right-click it"). The other goal is
	-- `folded`: not a row of its own. Statuses and verbs stay as they are.
	for a, av in ipairs(goals) do
		local ag = step.goals[a]
		if ag.t == "accept" and ag.item and not ag.npc and not ag.object and av.status ~= "na" then
			for c = a - 1, 1, -1 do
				local cg = step.goals[c]
				if cg.t == "collect" and cg.item == ag.item and not cg.quest then
					local cv = goals[c]
					if cv.status ~= "na" and groupOf[c] == groupOf[a] then
						local starter = { item = ns.Names.Item(ag.item) or ag.itemName or cg.itemName, source = cv.source, note = cv.note }
						local open = av.status ~= "done" and av.status ~= "skipped"
						if open and cv.status ~= "done" and cv.status ~= "skipped" then
							av.folded = true
							cv.starter, cv.starterOf = starter, a
						else
							cv.folded = true
							starter.held = (open and cv.status == "done") or nil
							av.starter = starter
						end
					end
					break
				end
			end
		end
	end
	-- A "Go to" naming the step's own place repeats a field group's header.
	for g, gv in ipairs(goals) do
		local grp = groups[groupOf[g]]
		if gv.t == "goto" and step.title and step.goals[g].text == step.title and grp and grp.kind == "here" then
			gv.header = true
		end
	end
	local outGroups = {}
	for k, grp in ipairs(groups) do
		outGroups[k] = {
			kind = grp.kind,
			npc = grp.kind == "npc" and grp.id or nil,
			object = grp.kind == "object" and grp.id or nil,
			name = grp.name,
			map = grp.map, x = grp.x, y = grp.y, f = grp.f, z = grp.z,
			goals = grp.goals, done = grp.done, pending = grp.pending,
		}
	end
	-- `current`: the goal the window marks and the arrow leads to (the
	-- current step only); `skipped`: the player skipped this step (Unskip);
	-- `image`: the step's picture ({ file, w, h, texture }, Guides.lua).
	return {
		index = i, title = step.title, note = step.note, image = step.image, status = status, goals = goals,
		groups = outGroups, focus = focus,
		current = status == "current" and (Own.currentGoal(i, groups, focus)) or nil,
		skipped = isSkipped(i), live = computed,
		along = step.along, label = step.label,
	}
end

-- The open goals of the along steps behind the live step (Own.alongListed),
-- in step order, then those of the quests the player pinned (Own.pinGoals):
-- { { index = step, title, goals = { goal view, ... } }, ... }; a pinned
-- quest's entry has `pin` (the quest) and no index, each goal view its
-- `step` (Engine.AimAlong, Engine.AlongGoal). Notes are left out; a step or
-- quest with nothing open is not listed.
function Engine.GetAlong()
	local out = {}
	if not guide then return out end
	if not player then refreshPlayer() end
	for _, s in ipairs(Own.marksOf().along) do
		if Own.alongListed(s) then
			local step, goals = guide.steps[s], {}
			for g, goal in ipairs(step.goals) do
				if goal.t ~= "note" then
					local view = goalView(s, g, goal, "current", nil)
					if view.status == "active" then
						view.step = s
						goals[#goals + 1] = view
					end
				end
			end
			if #goals > 0 then out[#out + 1] = { index = s, title = step.title, goals = goals } end
		end
	end
	for _, q in ipairs(Own.pinList()) do
		local goals = {}
		for _, e in ipairs(Own.pinGoals(q)) do
			local view = goalView(e[1], e[2], e[3], "current", nil)
			if view.status == "active" then
				view.step, view.pinned = e[1], q
				goals[#goals + 1] = view
			end
		end
		if #goals > 0 then out[#out + 1] = { pin = q, title = titleOfQuest(q), goals = goals } end
	end
	return out
end

---------------------------------------------------------------------------
