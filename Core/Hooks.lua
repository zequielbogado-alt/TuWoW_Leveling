-- ============================================================================
-- TuWoW_Leveling — Core/Hooks.lua
-- Centralized tooltip and item-click hooks for WoW 3.3.5a (Interface 30300).
-- Supports unit tooltips, item tooltips, world GameObject tooltips, and
-- modified clicks on items.
-- ============================================================================

local ADDON, ns = ...

local Hooks = {}
ns.Hooks = Hooks

local type, pcall, tonumber, ipairs = type, pcall, tonumber, ipairs

local secret = ns.Compat.IsSecret

local function report(err)
	ns.NoteError(err)
	local handler = geterrorhandler and geterrorhandler()
	if handler then pcall(handler, err) end
end

local lists = { item = {}, unit = {}, object = {}, click = {} }
local installers = {}

local function register(kind, owner, fn)
	if owner == nil then return false end
	local list = lists[kind]
	for i = 1, #list do
		if list[i].owner == owner then
			if fn == nil then
				table.remove(list, i)
			else
				list[i].fn = fn
			end
			return true
		end
	end
	if type(fn) ~= "function" then return false end
	list[#list + 1] = { owner = owner, fn = fn }
	if installers[kind] then
		local install = installers[kind]
		installers[kind] = nil
		install()
	end
	return true
end

function Hooks.ItemLines(owner, fn) return register("item", owner, fn) end
function Hooks.UnitLines(owner, fn) return register("unit", owner, fn) end
function Hooks.ObjectLines(owner, fn) return register("object", owner, fn) end
function Hooks.ItemClick(owner, fn) return register("click", owner, fn) end

local function run(kind, ...)
	local list = lists[kind]
	local n = #list
	if n == 0 then return 0 end
	local fns = {}
	for i = 1, n do fns[i] = list[i].fn end
	local ok = 0
	for i = 1, n do
		local done, err = pcall(fns[i], ...)
		if done then ok = ok + 1 else report(err) end
	end
	return ok
end

function Hooks.AddLine(tooltip, left, right, r, g, b, rr, rg, rb)
	if not tooltip or left == nil then return end
	if right ~= nil and tooltip.AddDoubleLine then
		tooltip:AddDoubleLine(left, right, r, g, b, rr, rg, rb)
	elseif tooltip.AddLine then
		tooltip:AddLine(left, r, g, b)
	end
end

---------------------------------------------------------------------------
-- Tooltips (3.3.5a OnTooltipSetItem / OnTooltipSetUnit / OnShow for Objects)
---------------------------------------------------------------------------

local function forbidden(tooltip)
	if not (tooltip and tooltip.IsForbidden) then return false end
	local ok, f = pcall(tooltip.IsForbidden, tooltip)
	if not ok or secret(f) then return true end
	return f and true or false
end

local function numLines(tooltip)
	if not tooltip.NumLines then return nil end
	local ok, n = pcall(tooltip.NumLines, tooltip)
	if ok and type(n) == "number" and not secret(n) then return n end
	return nil
end

local added = setmetatable({}, { __mode = "k" })
local clearChecked = setmetatable({}, { __mode = "k" })

local function clearAdded(tooltip)
	added[tooltip] = nil
end

local function decorate(kind, tooltip, key, ...)
	if not clearChecked[tooltip] then
		clearChecked[tooltip] = true
		if tooltip.HookScript then
			local ok, supported = true, true
			if tooltip.HasScript then ok, supported = pcall(tooltip.HasScript, tooltip, "OnTooltipCleared") end
			if not ok then
				ns.NoteError(supported)
			elseif supported ~= false then
				local installed, err = pcall(tooltip.HookScript, tooltip, "OnTooltipCleared", clearAdded)
				if not installed then ns.NoteError(err) end
			end
		end
	end
	local before = numLines(tooltip)
	local last = added[tooltip]
	if last and last.key == key and last.kind == kind and before and before >= last.lines then return 0 end
	run(kind, tooltip, ...)
	local after = numLines(tooltip)
	if after and before and after > before then
		added[tooltip] = { kind = kind, key = key, lines = after }
		return after - before
	end
	added[tooltip] = nil
	return 0
end

local function linkOf(tooltip)
	local link
	if tooltip.GetItem then
		local ok, _, l = pcall(tooltip.GetItem, tooltip)
		if ok then link = l end
	end
	if type(link) ~= "string" or secret(link) then return nil end
	return link
end

local function idOfLink(link)
	return type(link) == "string" and tonumber(link:match("item:(%d+)")) or nil
end

local function itemTooltip(tooltip, data)
	if tooltip ~= GameTooltip and tooltip ~= ItemRefTooltip then return 0 end
	if forbidden(tooltip) or #lists.item == 0 then return 0 end
	local id = data and data.id
	if secret(id) or type(id) ~= "number" then id = nil end
	local link = linkOf(tooltip)
	if not id then id = idOfLink(link) end
	if not id then return 0 end
	return decorate("item", tooltip, link or id, link, id)
end
Hooks.OnItemTooltip = itemTooltip

local function unitOf(tooltip)
	if tooltip.GetUnit then
		local ok, _, unit = pcall(tooltip.GetUnit, tooltip)
		if ok and type(unit) == "string" and not secret(unit) then return unit end
	end
	return nil
end

local function unitTooltip(tooltip, data)
	if tooltip ~= GameTooltip or forbidden(tooltip) or #lists.unit == 0 then return 0 end
	local unit = unitOf(tooltip, data)
	if not unit then return 0 end
	local guid = UnitGUID and UnitGUID(unit)
	if secret(guid) then guid = nil end
	return decorate("unit", tooltip, guid or unit, unit)
end
Hooks.OnUnitTooltip = unitTooltip

local function objectIdOfGUID(guid)
	if type(guid) ~= "string" or secret(guid) then return nil end
	return ns.Compat.GetObjectIDFromGUID and ns.Compat.GetObjectIDFromGUID(guid) or nil
end

local function objectTooltip(tooltip, data)
	if tooltip ~= GameTooltip or forbidden(tooltip) or #lists.object == 0 or type(data) ~= "table" then return 0 end
	local id = data.id
	if secret(id) or type(id) ~= "number" then id = objectIdOfGUID(data.guid) end
	local name
	local lines = data.lines
	if type(lines) == "table" and not secret(lines) then
		local first = lines[1]
		if type(first) == "table" and not secret(first) then
			local text = first.leftText
			if type(text) == "string" and not secret(text) and text ~= "" then name = text end
		end
	end
	if not (id or name) then return 0 end
	return decorate("object", tooltip, id or name, id, name)
end
Hooks.OnObjectTooltip = objectTooltip

local function showIfAdded(tooltip, n)
	if n > 0 and tooltip.Show then tooltip:Show() end
end

installers.item = function()
	for _, tooltip in ipairs({ GameTooltip, ItemRefTooltip }) do
		if tooltip and tooltip.HookScript then
			tooltip:HookScript("OnTooltipSetItem", function(tt) showIfAdded(tt, itemTooltip(tt, nil)) end)
		end
	end
end

installers.unit = function()
	if GameTooltip and GameTooltip.HookScript then
		GameTooltip:HookScript("OnTooltipSetUnit", function(tt) showIfAdded(tt, unitTooltip(tt, nil)) end)
	end
end

installers.object = function()
	if GameTooltip and GameTooltip.HookScript then
		GameTooltip:HookScript("OnShow", function(tt)
			if #lists.object == 0 or forbidden(tt) then return end
			if tt.GetUnit and select(2, tt:GetUnit()) then return end
			if tt.GetItem and select(2, tt:GetItem()) then return end
			if tt.GetSpell and tt:GetSpell() then return end
			local line1 = _G.GameTooltipTextLeft1
			local text = line1 and line1:GetText()
			if type(text) == "string" and text ~= "" then
				showIfAdded(tt, objectTooltip(tt, { lines = { { leftText = text } } }))
			end
		end)
	end
end

---------------------------------------------------------------------------
-- Modified clicks on items
---------------------------------------------------------------------------

local function itemClick(link)
	if type(link) ~= "string" or secret(link) then return end
	local id = idOfLink(link)
	if not id then return end
	run("click", link, id)
end
Hooks.OnItemClick = itemClick

installers.click = function()
	if type(HandleModifiedItemClick) == "function" and hooksecurefunc then
		hooksecurefunc("HandleModifiedItemClick", itemClick)
	end
end

