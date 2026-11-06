-- Polestar.MapCanvas: adaptado para TuWoW 3.3.5a (WorldMapDetailFrame / WorldMapButton)
-- manteniendo compatibilidad con GetCanvas/GetMapID si existen.

local ADDON, ns = ...

local MapCanvas = {}
ns.MapCanvas = MapCanvas

local views = {}

local View = {}
View.__index = View

local function fire(view, what, elapsed)
	local list, muted = view.listeners, view.muted
	if what == "show" then wipe(muted) end
	for i = 1, #list do
		local fn = list[i]
		if not muted[fn] then
			local ok, err = pcall(fn, view, what, elapsed)
			if not ok then
				muted[fn] = true
				ns.NoteError(err)
				if geterrorhandler then geterrorhandler()(err) end
			end
		end
	end
end

local function readMapID(map)
	if map.GetMapID then
		local ok, id = pcall(map.GetMapID, map)
		if ok and type(id) == "number" and id > 0 then return id end
	end
	if ns.Compat and ns.Compat.GetViewedMapID then
		return ns.Compat.GetViewedMapID()
	end
	return nil
end

local function resolveCanvas(map)
	if map.GetCanvas then
		local ok, c = pcall(map.GetCanvas, map)
		if ok and c then return c end
	end
	if map == WorldMapFrame then
		return WorldMapDetailFrame or WorldMapButton or WorldMapFrame
	end
	return nil
end

local function read(view)
	local map, canvas = view.map, view.canvas
	local id = readMapID(map)
	local w, h = canvas:GetWidth() or 0, canvas:GetHeight() or 0
	local s = (map.GetCanvasScale and map:GetCanvasScale()) or canvas:GetScale() or 1
	if not s or s <= 0 then s = 1 end
	local z = 0
	if map.GetCanvasZoomPercent and (not map.HasZoomLevels or map:HasZoomLevels()) then
		z = map:GetCanvasZoomPercent() or 0
		if z < 0 then z = 0 elseif z > 1 then z = 1 end
	end
	local ps = map.GetGlobalPinScale and map:GetGlobalPinScale() or 1
	local a = (map.GetGlobalAlpha and map:GetGlobalAlpha()) or map:GetAlpha() or 1
	return id, w, h, s, z, ps, a
end

local function update(view, elapsed)
	local id, w, h, s, z, ps, a = read(view)
	local first = not view.shown
	local mapChanged = id ~= view.mapID
	local sized = w ~= view.width or h ~= view.height
	local scaled = s ~= view.scale or z ~= view.zoom or ps ~= view.pinScale
	local faded = a ~= view.alpha
	view.mapID, view.width, view.height, view.scale, view.zoom, view.pinScale, view.alpha = id, w, h, s, z, ps, a
	if first then
		view.shown = true
		fire(view, "show")
	elseif mapChanged then
		fire(view, "map")
	else
		if sized then fire(view, "size") end
		if scaled then fire(view, "scale") end
		if faded then fire(view, "alpha") end
	end
	if elapsed then fire(view, "tick", elapsed) end
end

function View:Level(levelType)
	local map = self.map
	local levels = map.GetPinFrameLevelsManager and map:GetPinFrameLevelsManager()
	local level = levels and levels.GetValidFrameLevel and levels:GetValidFrameLevel(levelType)
	if level then return level end
	local base = self.canvas:GetFrameLevel() or 1
	if WorldMapButton and WorldMapButton.GetFrameLevel then
		local btnLevel = WorldMapButton:GetFrameLevel() or 0
		if btnLevel > base then base = btnLevel end
	end
	if levelType == "PIN_FRAME_LEVEL_SUPER_TRACKED_QUEST" then
		return base + 3
	end
	return base + 1
end

function View:PinScale(startScale, endScale)
	return (startScale + (endScale - startScale) * (self.zoom or 0)) * (self.pinScale or 1) / (self.scale or 1)
end

function MapCanvas.Watch(map, fn)
	local view = views[map]
	if not view then
		if type(map) ~= "table" then return nil end
		local canvas = resolveCanvas(map)
		if not canvas then return nil end
		view = setmetatable({ map = map, canvas = canvas, shown = false, listeners = {}, muted = {} }, View)
		local f = ns.CreateFrameUnder("Frame", nil, canvas)
		f:SetScript("OnUpdate", ns.Safe(function(_, elapsed) update(view, elapsed or 0) end))
		f:SetScript("OnHide", function()
			if not view.shown then return end
			view.shown = false
			fire(view, "hide")
		end)
		views[map] = view
	end
	if fn then view.listeners[#view.listeners + 1] = fn end
	return view
end

function MapCanvas.Get(map)
	return views[map]
end

