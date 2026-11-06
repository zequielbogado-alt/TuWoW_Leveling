-- ============================================================================
-- TuWoW_Leveling — Core/Data.lua
-- Data pack management (supports both embedded data inside TuWoW_Leveling and
-- optional companion addons without nagging players with technical warnings).
-- ============================================================================

local ADDON, ns = ...

local Data = {}
ns.Data = Data

local type, pcall, tostring = type, pcall, tostring
local lower = string.lower

local state = {} -- name -> { loaded = bool, reason = string|nil }
local embedded = {
	[ADDON] = true,
	["TuWoW_Leveling"] = true,
	["Polestar_Guides"] = true,
	["Polestar_QuestDB"] = true,
	["Polestar_esES"] = true,
	["Polestar_ItemDB"] = true,
	["Polestar_Codex"] = true,
	["TuWoW_Leveling_ItemDB"] = true,
	["TuWoW_Leveling_Codex"] = true,
}

local readable = ns.Compat.Readable

function Data.MarkEmbedded(name)
	if type(name) == "string" and name ~= "" then
		embedded[name] = true
		state[name] = { loaded = true }
	end
end

local function alreadyLoaded(name)
	if embedded[name] then return true end
	local isLoaded = C_AddOns and C_AddOns.IsAddOnLoaded
	if not isLoaded then return false end
	local ok, loading, loaded = pcall(isLoaded, name)
	if not ok then return false end
	if loaded == nil then loaded = loading end
	return readable(loaded) == true
end

function Data.Pack(name)
	if type(name) ~= "string" or name == "" then return false, "missing" end
	local s = state[name]
	if s then
		if s.loaded then return true end
		if s.reason ~= "combat" then return false, s.reason end
	end
	if alreadyLoaded(name) then
		state[name] = { loaded = true }
		return true
	end
	if InCombatLockdown and InCombatLockdown() then
		state[name] = { loaded = false, reason = "combat" }
		return false, "combat"
	end
	local load = C_AddOns and C_AddOns.LoadAddOn
	if not load then
		state[name] = { loaded = false, reason = "unavailable" }
		return false, "unavailable"
	end
	local ok, loaded, reason = pcall(load, name)
	if not ok then
		ns.Debug("Data.Pack:", name, tostring(loaded))
		state[name] = { loaded = false, reason = "error" }
		return false, "error"
	end
	loaded = readable(loaded)
	if loaded then
		state[name] = { loaded = true }
		return true
	end
	reason = readable(reason)
	reason = type(reason) == "string" and reason ~= "" and lower(reason) or "unknown"
	state[name] = { loaded = false, reason = reason }
	return false, reason
end

function Data.Info(name)
	local s = state[name]
	local info = { loaded = (s and s.loaded) or alreadyLoaded(name), reason = s and s.reason or nil }
	if info.loaded and UpdateAddOnMemoryUsage and GetAddOnMemoryUsage then
		local target = embedded[name] and ADDON or name
		local ok = pcall(UpdateAddOnMemoryUsage)
		if ok then
			local got, kb = pcall(GetAddOnMemoryUsage, target)
			kb = got and readable(kb) or nil
			if type(kb) == "number" then info.memoryKB = kb end
		end
	end
	return info
end

function Data.CheckInstall()
	return {}, {}, {}
end

