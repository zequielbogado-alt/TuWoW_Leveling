-- ============================================================================
-- TuWoW_Leveling — Core/CompatMaps.lua
-- Submódulo de mapas y reproyección de coordenadas Classic 1.12 <-> 3.3.5a.
-- Implementa ns.MapFrames, conversión uiMapID <-> areaID 3.3.5a y C_Map.
-- ============================================================================

local ADDON, ns = ...

local Compat = ns.Compat or {}
ns.Compat = Compat

local type, tonumber, pairs, pcall = type, tonumber, pairs, pcall
local math_sqrt = math.sqrt
local math_atan2 = math.atan2
local math_pi = math.pi

local scratch
local function vec(x, y)
	if not scratch then
		scratch = CreateVector2D and CreateVector2D(0, 0) or {}
	end
	scratch.x, scratch.y = x, y
	return scratch
end
Compat._vec = vec

local function xyOf(v)
	if not v then return nil end
	if v.GetXY then return v:GetXY() end
	return v.x, v.y
end
Compat._xyOf = xyOf

local function makeBounds(c, width, height, left, top)
	return {
		c = c,
		continent = c,
		width = width,
		height = height,
		top = top,
		bottom = top - height,
		left = left,
		right = left - width,
	}
end

ns.MapFrames = ns.MapFrames or {}
ns.MapFrames.era = ns.MapFrames.era or {
	[1411] = makeBounds(1, 5287.4996, 3524.9999, 1802.0833, 1910.4166),
	[1412] = makeBounds(1, 5137.5, 3425.0, 2991.6666, -429.1667),
	[1413] = makeBounds(1, 10133.333, 6756.2499, 4831.2499, 1791.6666),
	[1416] = makeBounds(0, 2799.9999, 1866.6667, 2133.3332, 1466.6667),
	[1417] = makeBounds(0, 3600.0, 2400.0, 716.6667, -666.6667),
	[1418] = makeBounds(0, 2487.5, 1658.3334, -1941.6667, -5870.8332),
	[1419] = makeBounds(0, 3350.0, 2233.3339, -1241.6667, -10266.6664),
	[1420] = makeBounds(0, 4518.7499, 3012.4999, 2983.3332, 3837.4999),
	[1421] = makeBounds(0, 4199.9999, 2800.0, 3733.3332, 1666.6667),
	[1422] = makeBounds(0, 4299.9999, 2866.6667, 1133.3333, 3466.6666),
	[1423] = makeBounds(0, 3870.8333, 2581.2499, -2272.9166, 3741.6665),
	[1424] = makeBounds(0, 3199.9999, 2133.3333, 1800.0, 1000.0),
	[1425] = makeBounds(0, 3850.0, 2566.6666, -1616.6666, 1266.6666),
	[1426] = makeBounds(0, 4925.0, 3283.3332, 2662.4999, -4100.0),
	[1427] = makeBounds(0, 2231.2499, 1487.4996, -239.5833, -6100.0),
	[1428] = makeBounds(0, 2929.1666, 1952.0835, -466.6667, -7031.2498),
	[1429] = makeBounds(0, 3470.8332, 2314.583, 1535.4166, -7939.5831),
	[1430] = makeBounds(0, 2499.9999, 1666.6669, -666.6666, -9866.6664),
	[1431] = makeBounds(0, 2699.9999, 1800.0, 1666.6666, -9766.6664),
	[1432] = makeBounds(0, 2758.3332, 1839.583, -512.5, -4445.8332),
	[1433] = makeBounds(0, 2170.8333, 1447.916, -1575.0, -8522.9164),
	[1434] = makeBounds(0, 6381.2498, 4254.1669, 3291.6666, -11168.7497),
	[1435] = makeBounds(0, 2293.75, 1529.1669, -2156.25, -9629.1664),
	[1436] = makeBounds(0, 3500.0, 2333.333, 3016.6666, -9400.0),
	[1437] = makeBounds(0, 4135.4166, 2756.25, 847.9167, -1891.6666),
	[1438] = makeBounds(1, 5091.6665, 3393.75, 4152.0832, 11524.9997),
	[1439] = makeBounds(1, 6550.0, 4366.6665, 4416.6665, 8266.6664),
	[1440] = makeBounds(1, 5766.6665, 3843.7499, 2999.9999, 4672.9165),
	[1441] = makeBounds(1, 4399.9999, 2933.3333, 566.6666, -3933.3332),
	[1442] = makeBounds(1, 4883.3332, 3256.2499, 5370.8332, 2852.0833),
	[1443] = makeBounds(1, 4495.8332, 2997.9165, 4722.9165, 452.0833),
	[1444] = makeBounds(1, 6949.9998, 4633.3332, 4816.6665, -2566.6666),
	[1445] = makeBounds(1, 5250.0, 3499.9999, 975.0, -2033.3333),
	[1446] = makeBounds(1, 6899.9998, 4600.0, 725.0, -5875.0),
	[1447] = makeBounds(1, 6577.0831, 4385.4165, 197.9166, 6685.4165),
	[1448] = makeBounds(1, 5749.9998, 3833.3332, 3741.6666, 7133.3331),
	[1449] = makeBounds(1, 3700.0, 2466.6666, 1666.6666, -6133.3332),
	[1450] = makeBounds(1, 2314.5833, 1543.75, -1404.1666, 8491.6664),
	[1451] = makeBounds(1, 3483.3332, 2322.9166, 3199.9999, -5958.3332),
	[1452] = makeBounds(1, 7099.9998, 4733.3332, 2233.3333, 8533.3331),
	[1453] = makeBounds(0, 1343.7499, 895.833, 1235.4166, -8256.2498),
	[1454] = makeBounds(1, 1402.6045, 935.4166, -3506.2499, 2281.2499),
	[1455] = makeBounds(0, 790.6251, 527.6045, -713.5417, -4569.2707),
	[1456] = makeBounds(1, 1043.7499, 695.8333, 537.5, -899.9999),
	[1457] = makeBounds(1, 1058.3332, 705.7295, 2916.6666, 10268.2289),
	[1458] = makeBounds(0, 959.375, 640.1041, 728.6459, 1877.6041),
	[1459] = makeBounds(451, 3170.833, 2114.583, 16979.166, 16979.166),
	[1460] = makeBounds(1, 2070.8333, 1381.25, 2337.4999, 5616.6665),
	[1461] = makeBounds(1, 2916.6666, 1943.75, -775.0, 6683.3331),
	[1941] = makeBounds(530, 5262.4998, 3508.3332, -1399.9999, 10831.2497),
	[1942] = makeBounds(530, 4925.0, 3283.3332, -2216.6666, 8050.0),
	[1943] = makeBounds(530, 2925.0, 1949.9999, 4729.1665, -5895.8332),
	[1944] = makeBounds(530, 5164.5832, 3443.7499, 5539.5832, 1481.25),
	[1946] = makeBounds(530, 5027.0832, 3352.0832, 9443.7497, 1935.4166),
	[1947] = makeBounds(530, 1070.8333, 714.5833, -11495.833, -3620.8332),
	[1948] = makeBounds(530, 5500.0, 3666.6666, 4458.3332, -1875.0),
	[1949] = makeBounds(530, 5424.9998, 3616.6666, 8445.8331, 4408.3332),
	[1950] = makeBounds(530, 2633.3333, 1756.25, -10462.4997, -3210.4166),
	[1951] = makeBounds(530, 5525.0, 3683.3332, 10295.833, -35.4167),
	[1952] = makeBounds(530, 5399.9998, 3599.9999, 7083.3331, -999.9999),
	[1953] = makeBounds(530, 5574.9998, 3716.6666, 5483.3332, 5456.2498),
	[1954] = makeBounds(530, 1211.4584, 806.7705, -6300.0, 10153.1247),
	[1955] = makeBounds(530, 1306.25, 870.8333, 5999.9998, -1495.8333),
	[1957] = makeBounds(530, 1097.9166, 733.333, -6120.8332, 12966.6663),
}

ns.MapFrames.live = ns.MapFrames.live or {
	[1423] = makeBounds(0, 4031.25, 2687.5, -2287.5, 3704.1665),
	[1453] = makeBounds(0, 1737.5, 1158.333, 1722.9166, -7995.833),
}

local uiMapToArea335 = {
	[1411] = 5,   [1412] = 10,  [1413] = 12,  [1414] = 14,  [1415] = 15,
	[1416] = 16,  [1417] = 17,  [1418] = 18,  [1419] = 20,  [1420] = 21,
	[1421] = 22,  [1422] = 23,  [1423] = 24,  [1424] = 25,  [1425] = 27,
	[1426] = 28,  [1427] = 29,  [1428] = 30,  [1429] = 31,  [1430] = 33,
	[1431] = 35,  [1432] = 36,  [1433] = 37,  [1434] = 38,  [1435] = 39,
	[1436] = 40,  [1437] = 41,  [1438] = 42,  [1439] = 43,  [1440] = 44,
	[1441] = 62,  [1442] = 82,  [1443] = 102, [1444] = 122, [1445] = 142,
	[1446] = 162, [1447] = 182, [1448] = 183, [1449] = 202, [1450] = 242,
	[1451] = 262, [1452] = 282, [1453] = 302, [1454] = 322, [1455] = 342,
	[1456] = 363, [1457] = 382, [1458] = 383, [1459] = 402, [1460] = 444,
	[1461] = 462, [1941] = 463, [1942] = 464, [1943] = 465, [1944] = 466,
	[1945] = 467, [1946] = 468, [1947] = 472, [1948] = 474, [1949] = 476,
	[1950] = 477, [1951] = 478, [1952] = 479, [1953] = 480, [1954] = 481,
	[1955] = 482, [1957] = 500,
}

local area335ToUiMap = {}
for uiMapID, area335 in pairs(uiMapToArea335) do
	area335ToUiMap[area335] = uiMapID
end

local mapNamesEN = {
	[1411] = "Durotar", [1412] = "Mulgore", [1413] = "The Barrens",
	[1414] = "Kalimdor", [1415] = "Eastern Kingdoms",
	[1416] = "Alterac Mountains", [1417] = "Arathi Highlands", [1418] = "Badlands",
	[1419] = "Blasted Lands", [1420] = "Tirisfal Glades", [1421] = "Silverpine Forest",
	[1422] = "Western Plaguelands", [1423] = "Eastern Plaguelands", [1424] = "Hillsbrad Foothills",
	[1425] = "The Hinterlands", [1426] = "Dun Morogh", [1427] = "Searing Gorge",
	[1428] = "Burning Steppes", [1429] = "Elwynn Forest", [1430] = "Deadwind Pass",
	[1431] = "Duskwood", [1432] = "Loch Modan", [1433] = "Redridge Mountains",
	[1434] = "Stranglethorn Vale", [1435] = "Swamp of Sorrows", [1436] = "Westfall",
	[1437] = "Wetlands", [1438] = "Teldrassil", [1439] = "Darkshore",
	[1440] = "Ashenvale", [1441] = "Thousand Needles", [1442] = "Stonetalon Mountains",
	[1443] = "Desolace", [1444] = "Feralas", [1445] = "Dustwallow Marsh",
	[1446] = "Tanaris", [1447] = "Azshara", [1448] = "Felwood",
	[1449] = "Un'Goro Crater", [1450] = "Moonglade", [1451] = "Silithus",
	[1452] = "Winterspring", [1453] = "Stormwind City", [1454] = "Orgrimmar",
	[1455] = "Ironforge", [1456] = "Thunder Bluff", [1457] = "Darnassus",
	[1458] = "Undercity", [1459] = "Alterac Valley", [1460] = "Warsong Gulch",
	[1461] = "Arathi Basin",
	[1941] = "Eversong Woods", [1942] = "Ghostlands", [1943] = "Azuremyst Isle",
	[1944] = "Hellfire Peninsula", [1945] = "Outland", [1946] = "Zangarmarsh",
	[1947] = "The Exodar", [1948] = "Shadowmoon Valley", [1949] = "Blade's Edge Mountains",
	[1950] = "Bloodmyst Isle", [1951] = "Nagrand", [1952] = "Terokkar Forest",
	[1953] = "Netherstorm", [1954] = "Silvermoon City", [1955] = "Shattrath City",
	[1957] = "Isle of Quel'Danas",
}

local mapNamesES = {
	[1411] = "Durotar", [1412] = "Mulgore", [1413] = "Los Baldíos",
	[1414] = "Kalimdor", [1415] = "Reinos del Este",
	[1416] = "Montañas de Alterac", [1417] = "Tierras Altas de Arathi", [1418] = "Tierras Inhóspitas",
	[1419] = "Las Tierras Devastadas", [1420] = "Claros de Tirisfal", [1421] = "Bosque de Argénteos",
	[1422] = "Tierras de la Peste del Oeste", [1423] = "Tierras de la Peste del Este", [1424] = "Laderas de Trabalomas",
	[1425] = "Tierras del Interior", [1426] = "Dun Morogh", [1427] = "La Garganta de Fuego",
	[1428] = "Las Estepas Ardientes", [1429] = "Bosque de Elwynn", [1430] = "Paso de la Muerte",
	[1431] = "Bosque del Ocaso", [1432] = "Loch Modan", [1433] = "Montañas Crestagrana",
	[1434] = "Vega de Tuercespina", [1435] = "Pantano de las Penas", [1436] = "Páramos de Poniente",
	[1437] = "Los Humedales", [1438] = "Teldrassil", [1439] = "Costa Oscura",
	[1440] = "Vallefresno", [1441] = "Las Mil Agujas", [1442] = "Sierra Espolón",
	[1443] = "Desolace", [1444] = "Feralas", [1445] = "Marjal Revolcafango",
	[1446] = "Tanaris", [1447] = "Azshara", [1448] = "Frondavil",
	[1449] = "Cráter de Un'Goro", [1450] = "Claro de la Luna", [1451] = "Silithus",
	[1452] = "Cuna del Invierno", [1453] = "Ciudad de Ventormenta", [1454] = "Orgrimmar",
	[1455] = "Forjaz", [1456] = "Cima del Trueno", [1457] = "Darnassus",
	[1458] = "Entrañas", [1459] = "Valle de Alterac", [1460] = "Garganta Grito de Guerra",
	[1461] = "Cuenca de Arathi",
	[1941] = "Bosque Canción Eterna", [1942] = "Tierras Fantasma", [1943] = "Isla Bruma Azur",
	[1944] = "Península del Fuego Infernal", [1945] = "Terrallende", [1946] = "Marisma de Zangar",
	[1947] = "El Exodar", [1948] = "Valle Sombraluna", [1949] = "Montañas Filospada",
	[1950] = "Isla Bruma de Sangre", [1951] = "Nagrand", [1952] = "Bosque de Terokkar",
	[1953] = "Tormenta Abisal", [1954] = "Ciudad de Lunargenta", [1955] = "Ciudad de Shattrath",
	[1957] = "Isla de Quel'Danas",
}

local zoneNameToUiMap = {}
for id, name in pairs(mapNamesEN) do zoneNameToUiMap[name] = id end
for id, name in pairs(mapNamesES) do zoneNameToUiMap[name] = id end

local mapContinentParent = {
	[0] = 1415,   -- Eastern Kingdoms
	[1] = 1414,   -- Kalimdor
	[530] = 1945, -- Outland
}

local function liveBoundsOf(mapID)
	local mf = ns.MapFrames
	if not mf then return nil end
	return (mf.live and mf.live[mapID]) or (mf.era and mf.era[mapID])
end

local function eraBoundsOf(mapID)
	local mf = ns.MapFrames
	return (mf and mf.era and mf.era[mapID]) or liveBoundsOf(mapID)
end

function Compat.UiMapIDFromArea335(area335)
	return area335ToUiMap[area335]
end

function Compat.Area335FromUiMapID(uiMapID)
	return uiMapToArea335[uiMapID]
end

function Compat.GetViewedMapID()
	if WorldMapFrame and WorldMapFrame.GetMapID then
		local ok, id = pcall(WorldMapFrame.GetMapID, WorldMapFrame)
		if ok and type(id) == "number" and id > 0 then return id end
	end
	local areaID = GetCurrentMapAreaID and GetCurrentMapAreaID()
	if areaID and area335ToUiMap[areaID] then
		return area335ToUiMap[areaID]
	end
	local cont = GetCurrentMapContinent and GetCurrentMapContinent()
	local zone = GetCurrentMapZone and GetCurrentMapZone()
	if cont == 1 and (not zone or zone == 0) then return 1414 end
	if cont == 2 and (not zone or zone == 0) then return 1415 end
	if cont == 3 and (not zone or zone == 0) then return 1945 end
	if cont == 0 then return 947 end
	return nil
end

local lastKnownMapID, lastKnownPx, lastKnownPy

function Compat.GetPlayerMapID()
	if not (WorldMapFrame and WorldMapFrame:IsShown()) then
		if SetMapToCurrentZone then SetMapToCurrentZone() end
		local areaID = GetCurrentMapAreaID and GetCurrentMapAreaID()
		if areaID and area335ToUiMap[areaID] then
			lastKnownMapID = area335ToUiMap[areaID]
			return lastKnownMapID
		end
	end
	local zText = GetRealZoneText and GetRealZoneText()
	if zText and zoneNameToUiMap[zText] then
		return zoneNameToUiMap[zText]
	end
	return lastKnownMapID or Compat.GetViewedMapID()
end

function Compat.GetPlayerPosition()
	local mapShown = WorldMapFrame and WorldMapFrame:IsShown()
	if not mapShown then
		if SetMapToCurrentZone then SetMapToCurrentZone() end
		local mapID = Compat.GetViewedMapID() or Compat.GetPlayerMapID()
		local px, py = GetPlayerMapPosition("player")
		if mapID and px and py and (px ~= 0 or py ~= 0) then
			lastKnownMapID, lastKnownPx, lastKnownPy = mapID, px, py
			return px, py, mapID
		end
		return nil, nil, mapID
	end
	local viewedMapID = Compat.GetViewedMapID()
	local playerMapID = Compat.GetPlayerMapID()
	local px, py = GetPlayerMapPosition("player")
	if viewedMapID and px and py and (px ~= 0 or py ~= 0) then
		if viewedMapID == playerMapID then
			lastKnownMapID, lastKnownPx, lastKnownPy = playerMapID, px, py
			return px, py, playerMapID
		elseif liveBoundsOf(viewedMapID) then
			return px, py, viewedMapID
		end
	end
	if lastKnownMapID and lastKnownPx and lastKnownPy then
		return lastKnownPx, lastKnownPy, lastKnownMapID
	end
	return nil, nil, playerMapID
end

function Compat.GetPlayerMapPosition()
	local px, py, mapID = Compat.GetPlayerPosition()
	if not px or not py or not mapID then return nil end
	return mapID, px * 100, py * 100
end

function Compat.GetMapName(uiMapID)
	if not uiMapID then return nil end
	if ns.IsSpanish and ns.IsSpanish() then
		return mapNamesES[uiMapID] or mapNamesEN[uiMapID]
	end
	return mapNamesEN[uiMapID]
end

function Compat.MapName(uiMapID)
	if not uiMapID then return nil end
	local name = Compat.GetMapName(uiMapID)
	if name and name ~= "" then return name end
	local X = ns.Codex
	local z = X and X.IsLoaded and X.IsLoaded() and X.Zone and X.Zone(uiMapID)
	return z and z.name or nil
end

function Compat.GetAreaName(areaID)
	if type(areaID) ~= "number" then return nil end
	if C_Map and C_Map.GetAreaInfo then
		local ok, name = pcall(C_Map.GetAreaInfo, areaID)
		if ok and type(name) == "string" and name ~= "" then return name end
	end
	return nil
end

function Compat.GetMapInfo(uiMapID)
	if not uiMapID then return nil end
	local b = liveBoundsOf(uiMapID)
	local c = b and (b.c or b.continent)
	local parentMapID = c and mapContinentParent[c] or 0
	return {
		mapID = uiMapID,
		name = Compat.GetMapName(uiMapID) or ("Map " .. tostring(uiMapID)),
		mapType = (uiMapID == 1414 or uiMapID == 1415 or uiMapID == 1945) and 2 or 3,
		parentMapID = parentMapID,
	}
end

function Compat.GetContinentMap(uiMapID)
	local info = Compat.GetMapInfo(uiMapID)
	if not info then return nil end
	if info.mapType == 2 then return uiMapID end
	return info.parentMapID ~= 0 and info.parentMapID or nil
end

function Compat.MapToWorld(uiMapID, x, y, frame)
	if not (uiMapID and x and y) then return nil end
	local b = (frame == "e") and eraBoundsOf(uiMapID) or liveBoundsOf(uiMapID)
	if not b then return nil end
	local c = b.c or b.continent
	local top = b.top
	local bottom = b.bottom or (b.top - b.height)
	local left = b.left
	local right = b.right or (b.left - b.width)
	return c, top + (bottom - top) * (y / 100), left + (right - left) * (x / 100)
end

function Compat.WorldToMap(continentID, wx, wy, uiMapID)
	if not (continentID and wx and wy and uiMapID) then return nil end
	local b = liveBoundsOf(uiMapID)
	if not b then return nil end
	local c = b.c or b.continent
	if c ~= continentID then return nil end
	local top = b.top
	local bottom = b.bottom or (b.top - b.height)
	local left = b.left
	local right = b.right or (b.left - b.width)
	if top == bottom or left == right then return nil end
	return (wy - left) / (right - left) * 100, (wx - top) / (bottom - top) * 100
end

Compat.MapFromWorld = Compat.WorldToMap

function Compat.GetPlayerWorldPosition()
	local map, x, y = Compat.GetPlayerMapPosition()
	if not map then return nil end
	return Compat.MapToWorld(map, x, y)
end

Compat.PlayerWorldPos = Compat.GetPlayerWorldPosition

function Compat.PlayerCont()
	local map = Compat.GetPlayerMapID()
	local b = map and liveBoundsOf(map)
	return b and (b.c or b.continent) or nil
end

function Compat.GetPlayerUnitPosition()
	local c, wx, wy = Compat.GetPlayerWorldPosition()
	if not c then return nil end
	return wx, wy, nil, c
end

function Compat.DistanceYards(map1, x1, y1, map2, x2, y2)
	local c1, wx1, wy1 = Compat.MapToWorld(map1, x1, y1)
	local c2, wx2, wy2 = Compat.MapToWorld(map2, x2, y2)
	if not c1 or not c2 or c1 ~= c2 then return nil end
	local dx = wx2 - wx1
	local dy = wy2 - wy1
	return math_sqrt(dx * dx + dy * dy)
end

function Compat.AngleBetween(map1, x1, y1, map2, x2, y2)
	local c1, wx1, wy1 = Compat.MapToWorld(map1, x1, y1)
	local c2, wx2, wy2 = Compat.MapToWorld(map2, x2, y2)
	if not c1 or not c2 or c1 ~= c2 then return nil end
	local dx = wy1 - wy2
	local dy = wx1 - wx2
	local angle = math_atan2(-dy, dx)
	if angle < 0 then angle = angle + 2 * math_pi end
	return angle
end

function Compat.SetWorldMapToUiMapID(uiMapID)
	local area335 = uiMapToArea335[uiMapID]
	if area335 and SetMapByID then
		SetMapByID(area335 - 1)
		return true
	end
	return false
end

function Compat.CanOpenWorldMap()
	return not ns.GamepadUI()
end

function Compat.OpenWorldMap(uiMapID)
	if Compat.InCombat and Compat.InCombat() then return false end
	if WorldMapFrame and not WorldMapFrame:IsShown() then
		if ToggleWorldMap then
			pcall(ToggleWorldMap)
		elseif ShowUIPanel then
			pcall(ShowUIPanel, WorldMapFrame)
		end
	end
	if uiMapID then
		Compat.SetWorldMapToUiMapID(uiMapID)
	end
	return true
end

function ns.WhereLines()
	local C = ns.Compat
	local map, x, y
	if C and C.GetPlayerMapPosition then map, x, y = C.GetPlayerMapPosition() end
	if not (map and x and y) then return nil end
	local xy = ("%.2f,%.2f live"):format(x, y)
	return { ("zone map %d"):format(map), "goto " .. xy }, xy
end

C_Map = C_Map or {}
function C_Map.GetBestMapForUnit()
	return Compat.GetPlayerMapID()
end

function C_Map.GetPlayerMapPosition(uiMapID)
	local px, py, playerMapID = Compat.GetPlayerPosition()
	if not px or not py then return nil end
	if uiMapID and playerMapID and uiMapID ~= playerMapID then
		local c, wx, wy = Compat.MapToWorld(playerMapID, px * 100, py * 100)
		if c then
			local tx, ty = Compat.WorldToMap(c, wx, wy, uiMapID)
			if tx and ty then
				return vec(tx / 100, ty / 100)
			end
		end
	end
	return vec(px, py)
end

function C_Map.GetMapInfo(uiMapID)
	return Compat.GetMapInfo(uiMapID)
end

function C_Map.GetWorldPosFromMapPos(uiMapID, mapPos)
	local nx, ny = xyOf(mapPos)
	if not (uiMapID and nx and ny) then return nil end
	local c, wx, wy = Compat.MapToWorld(uiMapID, nx * 100, ny * 100)
	if not c then return nil end
	return c, vec(wx, wy)
end

function C_Map.GetMapPosFromWorldPos(continentID, worldPos, overrideUiMapID)
	local wx, wy = xyOf(worldPos)
	local targetMapID = overrideUiMapID or Compat.GetPlayerMapID()
	if not (continentID and wx and wy and targetMapID) then return nil end
	local mx, my = Compat.WorldToMap(continentID, wx, wy, targetMapID)
	if not mx then return nil end
	return targetMapID, vec(mx / 100, my / 100)
end
