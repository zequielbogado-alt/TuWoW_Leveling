# tools/build_rares_data.py
import re
import os

rarescan_path = r'c:\TuWoW\TuWoW-Client\Interface\AddOns\TuWoW_RareScan\TuWoW_RareScan.ClassicData.lua'
questie_item_path = r'c:\TuWoW\TuWoW-Client\Interface\AddOns\Questie-335\Database\Classic\classicItemDB.lua'
questie_obj_path = r'c:\TuWoW\TuWoW-Client\Interface\AddOns\Questie-335\Database\Classic\classicObjectDB.lua'
questie_zones_path = r'c:\TuWoW\TuWoW-Client\Interface\AddOns\Questie-335\Database\Zones\zoneTables.lua'
output_path = r'c:\TuWoW\TuWoW-Client\Interface\AddOns\TuWoW_Leveling\Rares\RareData.lua'

def fold_str(s):
    s = s.lower()
    s = re.sub(r'[\'\"`\.,;:!\?]', '', s)
    s = re.sub(r'\s+', ' ', s).strip()
    accents = {
        'á': 'a', 'é': 'e', 'í': 'i', 'ó': 'o', 'ú': 'u',
        'à': 'a', 'è': 'e', 'ì': 'i', 'ò': 'o', 'ù': 'u',
        'ä': 'a', 'ë': 'e', 'ï': 'i', 'ö': 'o', 'ü': 'u',
        'ñ': 'n',
    }
    for k, v in accents.items():
        s = s.replace(k, v)
    return s

# 1. Zone Map: areaId -> uiMapId
area_to_uimap = {}
with open(questie_zones_path, 'r', encoding='utf-8', errors='ignore') as f:
    for line in f:
        m = re.search(r'\[(\d+)\]\s*=\s*(\d+)', line)
        if m:
            area_to_uimap[int(m.group(1))] = int(m.group(2))

area_to_uimap[2597] = 1459 # Alterac Valley

# 2. Rares from RareScan
with open(rarescan_path, 'r', encoding='utf-8', errors='ignore') as f:
    rs_text = f.read()

pattern = re.compile(
    r'\[(\d+)\]\s*=\s*\{[^}]*?NameEN\s*=\s*"([^"]+)"[^}]*?NameES\s*=\s*"([^"]*)"[^}]*?MinLvl\s*=\s*(\d+)[^}]*?MaxLvl\s*=\s*(\d+)[^}]*?Rank\s*=\s*(\d+)[^}]*?ZoneID\s*=\s*(\d+)[^}]*?Spawns\s*=\s*(\{[^}]+\})',
    re.DOTALL
)

rare_dict = {}
for m in pattern.findall(rs_text):
    nid = int(m[0])
    name_en = m[1]
    name_es = m[2] if m[2] else name_en
    min_lvl = int(m[3])
    max_lvl = int(m[4])
    rank = int(m[5]) # 2 = rare elite, 4 = rare
    zone_id = int(m[6])
    spawns_raw = m[7]

    ui_map = area_to_uimap.get(zone_id, 1429)
    coord_pairs = re.findall(r'\{\s*([\d\.]+)\s*,\s*([\d\.]+)\s*\}', spawns_raw)
    spawns = [(float(x), float(y)) for x, y in coord_pairs]
    rare_dict[nid] = {
        'id': nid,
        'name_en': name_en,
        'name_es': name_es,
        'min_lvl': min_lvl,
        'max_lvl': max_lvl,
        'elite': (rank == 2),
        'zone_id': zone_id,
        'ui_map': ui_map,
        'spawns': spawns,
        'loot': []
    }

# 3. Read Questie itemDB for drops
with open(questie_item_path, 'r', encoding='utf-8', errors='ignore') as f:
    item_text = f.read()

item_pat = re.compile(r'\[(\d+)\]\s*=\s*\{[^\}]*?,\s*(\{[^\}]+\}|nil)')
for m in item_pat.finditer(item_text):
    item_id = int(m.group(1))
    npc_drops_str = m.group(2)
    if npc_drops_str != 'nil':
        for npc_id_str in re.findall(r'\d+', npc_drops_str):
            npc_id = int(npc_id_str)
            if npc_id in rare_dict:
                if item_id not in rare_dict[npc_id]['loot']:
                    rare_dict[npc_id]['loot'].append(item_id)

# 4. Read Chests/Treasures
with open(questie_obj_path, 'r', encoding='utf-8', errors='ignore') as f:
    obj_lines = f.readlines()

chests = {}
for line in obj_lines:
    m = re.search(r'\[(\d+)\]\s*=\s*\{"([^"]+)"', line)
    if m:
        oid = int(m.group(1))
        name = m.group(2)
        if any(w in name for w in ['Battered Chest', 'Solid Chest', 'Large Iron Bound Chest', 'Waterlogged Footlocker', 'Heavy Chest', 'Reinforced Chest', 'Worn Wooden Chest', 'Bound Wooden Chest', 'Un\'Goro Dirt Pile', 'Giant Clam', 'Hidden Strongbox', 'Dented Footlocker']):
            spawns_list = []
            for zm in re.finditer(r'\[(\d+)\]\s*=\s*\{(\{[0-9\.,\s\-]+\}(?:,\s*\{[0-9\.,\s\-]+\})*)\}', line):
                zid = int(zm.group(1))
                coords_blob = zm.group(2)
                ui_map = area_to_uimap.get(zid, 1429)
                pairs = re.findall(r'\{\s*([\d\.\-]+)\s*,\s*([\d\.\-]+)\s*\}', coords_blob)
                for x, y in pairs:
                    fx, fy = float(x), float(y)
                    if fx > 0 and fy > 0:
                        spawns_list.append((ui_map, fx, fy))
            if spawns_list:
                chests[oid] = {
                    'id': oid,
                    'name': name,
                    'spawns': spawns_list
                }

# 5. Build Search Index lines
rare_index_lines = []
for r in rare_dict.values():
    f_es = fold_str(r['name_es'])
    q = 4 if r['elite'] else 3
    rare_index_lines.append(f"\\002{f_es}\\001{r['id']},{q},,{len(r['name_es'])}\\n")
    if r['name_en'] and r['name_en'] != r['name_es']:
        f_en = fold_str(r['name_en'])
        rare_index_lines.append(f"\\002{f_en}\\001{r['id']},{q},,{len(r['name_en'])}\\n")

treasure_index_lines = []
for c in chests.values():
    f_c = fold_str(c['name'])
    treasure_index_lines.append(f"\\002{f_c}\\001{c['id']},2,,{len(c['name'])}\\n")

rare_index_blob = "".join(rare_index_lines)
treasure_index_blob = "".join(treasure_index_lines)

# 6. Format Lua file
lines = []
lines.append('-- ============================================================================')
lines.append('-- TuWoW_Leveling — Rares/RareData.lua')
lines.append('-- Base de datos nativa, visor 3D e indice de busqueda para Raros y Tesoros.')
lines.append('-- ============================================================================')
lines.append('')
lines.append('local ADDON, ns = ...')
lines.append('')
lines.append('local RareData = {}')
lines.append('ns.RareData = RareData')
lines.append('')
lines.append('-- Diccionario de 403 Raros Clasicos (1-60) con coordenadas y loot verificado')
lines.append('local RARES = {')

sorted_rares = sorted(rare_dict.values(), key=lambda r: r['id'])
for r in sorted_rares:
    name_es = r['name_es'].replace('"', '\\"')
    name_en = r['name_en'].replace('"', '\\"')
    e_bool = 'true' if r['elite'] else 'false'
    sp_strs = [f"{{{round(x, 2)},{round(y, 2)}}}" for x, y in r['spawns'][:10]]
    sp_lua = "{" + ",".join(sp_strs) + "}"
    loot_strs = [str(lid) for lid in r['loot'][:8]]
    loot_lua = "{" + ",".join(loot_strs) + "}"
    lines.append(f'\t[{r["id"]}] = {{ n = "{name_es}", en = "{name_en}", l = {r["min_lvl"]}, h = {r["max_lvl"]}, e = {e_bool}, m = {r["ui_map"]}, sp = {sp_lua}, lt = {loot_lua} }},')

lines.append('}')
lines.append('')
lines.append('-- Diccionario de Tesoros y Cofres de Mundo Clasico')
lines.append('local TREASURES = {')

sorted_chests = sorted(chests.values(), key=lambda c: c['id'])
for c in sorted_chests:
    name = c['name'].replace('"', '\\"')
    sp_strs = [f"{{{m},{round(x, 2)},{round(y, 2)}}}" for m, x, y in c['spawns'][:10]]
    sp_lua = "{" + ",".join(sp_strs) + "}"
    lines.append(f'\t[{c["id"]}] = {{ n = "{name}", sp = {sp_lua} }},')

lines.append('}')
lines.append('')

# Add Lua logic methods
logic = f"""
local tonumber, pairs, ipairs, select = tonumber, pairs, ipairs, select
local GetItemInfo = GetItemInfo

local cacheRares = {{}}
local cacheTreasures = {{}}

local function formatSpawns(mapID, coordsList)
	local spawns = {{}}
	for i = 1, #coordsList do
		local c = coordsList[i]
		spawns[#spawns + 1] = {{ map = mapID, x = c[1], y = c[2], f = "e" }}
	end
	return spawns
end

local function formatChestSpawns(coordsList)
	local spawns = {{}}
	for i = 1, #coordsList do
		local c = coordsList[i]
		spawns[#spawns + 1] = {{ map = c[1], x = c[2], y = c[3], f = "e" }}
	end
	return spawns
end

function RareData.Get(kind, id)
	id = tonumber(id)
	if not id then return nil end
	if kind == "treasure" then
		if cacheTreasures[id] then return cacheTreasures[id] end
		local d = TREASURES[id]
		if not d then return nil end
		local rec = {{
			kind = "treasure",
			id = id,
			name = d.n,
			spawns = formatChestSpawns(d.sp),
			loot = {{}},
		}}
		cacheTreasures[id] = rec
		return rec
	end

	if cacheRares[id] then return cacheRares[id] end
	local d = RARES[id]
	if not d then return nil end
	local rec = {{
		kind = "rare",
		id = id,
		name = d.n,
		level = d.l,
		levelMax = d.h,
		elite = d.e,
		boss = false,
		spawns = formatSpawns(d.m, d.sp),
		loot = d.lt or {{}},
	}}
	cacheRares[id] = rec
	return rec
end

function RareData.Known(kind, id)
	id = tonumber(id)
	if not id then return false end
	if kind == "treasure" then return TREASURES[id] ~= nil end
	return RARES[id] ~= nil
end

function RareData.ListOf(kind)
	local list = {{}}
	if kind == "treasure" then
		for id in pairs(TREASURES) do
			local rec = RareData.Get("treasure", id)
			if rec and #rec.spawns > 0 then list[#list + 1] = rec end
		end
		table.sort(list, function(a, b) return a.id < b.id end)
		return list
	end

	for id in pairs(RARES) do
		local rec = RareData.Get("rare", id)
		if rec and #rec.spawns > 0 then list[#list + 1] = rec end
	end
	table.sort(list, function(a, b) return a.id < b.id end)
	return list
end

function RareData.Each(kind, fn)
	if type(fn) ~= "function" then return end
	if kind == "treasure" then
		for id, d in pairs(TREASURES) do
			if fn(id, d.n) == false then return end
		end
	else
		for id, d in pairs(RARES) do
			if fn(id, d.n) == false then return end
		end
	end
end

function RareData.Npc(id)
	return RareData.Get("rare", id)
end

function RareData.Object(id)
	return RareData.Get("treasure", id)
end

function RareData.Loot(kind, id)
	local rec = RareData.Get(kind, id)
	return rec and rec.loot or {{}}
end

function RareData.Name(kind, id)
	local rec = RareData.Get(kind, id)
	return rec and rec.name or nil
end

function RareData.Item(id)
	id = tonumber(id)
	if not id then return nil end
	local name, link, quality, ilvl, reqLvl = GetItemInfo(id)
	return {{
		id = id,
		name = name or ("Objeto " .. id),
		quality = quality or 1,
		reqLevel = reqLvl or 0,
	}}
end

function RareData.IsLoaded()
	return true
end

function RareData.Load()
	return true
end

-- Indice precompilado de busqueda rapida para el Buscador (Core/Search.lua)
local RARE_BLOB = "{rare_index_blob}"
local TREASURE_BLOB = "{treasure_index_blob}"

function RareData.Index(kind)
	if kind == "rare" then return RARE_BLOB end
	if kind == "treasure" then return TREASURE_BLOB end
	return nil
end

-- Integracion y registro en el namespace Codex nativo de TuWoW
if ns.Codex then
	ns.Codex.Register("meta", {{ name = "TuWoW Leveling Codex", version = "1.0", author = "TuWoW" }})
	ns.Codex.RegisterIndex("rare", RARE_BLOB)
	ns.Codex.RegisterIndex("treasure", TREASURE_BLOB)
	
	local origIndex = ns.Codex.Index
	ns.Codex.Index = function(kind)
		local b = RareData.Index(kind)
		if b then return b end
		return origIndex and origIndex(kind)
	end

	local origNpc = ns.Codex.Npc
	ns.Codex.Npc = function(id)
		local rec = RareData.Get("rare", id)
		if rec then return rec end
		return origNpc and origNpc(id)
	end
	
	local origObject = ns.Codex.Object
	ns.Codex.Object = function(id)
		local rec = RareData.Get("treasure", id)
		if rec then return rec end
		return origObject and origObject(id)
	end

	local origItem = ns.Codex.Item
	ns.Codex.Item = function(id)
		if origItem then
			local it = origItem(id)
			if it then return it end
		end
		return RareData.Item(id)
	end

	local origEach = ns.Codex.Each
	ns.Codex.Each = function(kind, fn)
		if kind == "rare" or kind == "treasure" then
			RareData.Each(kind, fn)
			return
		end
		if origEach then origEach(kind, fn) end
	end

	local origName = ns.Codex.Name
	ns.Codex.Name = function(kind, id)
		local n = RareData.Name(kind, id)
		if n then return n end
		return origName and origName(kind, id)
	end

	local origLoot = ns.Codex.Loot
	ns.Codex.Loot = function(kind, id)
		local l = RareData.Loot(kind, id)
		if l and #l > 0 then return l end
		return origLoot and origLoot(kind, id) or {{}}
	end
end
"""

lines.append(logic.strip())
lines.append('')

content = "\n".join(lines)
with open(output_path, 'w', encoding='utf-8') as f:
    f.write(content)

print(f"Generated {output_path} successfully!")
print(f"Total lines: {len(lines)}")
