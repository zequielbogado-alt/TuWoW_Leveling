#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
TuWoW_Leveling — tools/compile_wotlk_zygor.py
Compilador de guías oficiales de Zygor Guides WotLK 3.3.5a (UltimoWoW) para TuWoW_Leveling.
Extrae todas las guías de Leveling 1-80 (Horda y Alianza) con sus coordenadas nativas 3.3.5a,
las divide en partes de hasta 85 pasos y las exporta en archivos modulares (< 750 líneas).
"""

import os
import re
import shutil
from typing import Any, Dict, List, Optional, Set, Tuple

WORKSPACE_DIR = r"c:\TuWoW\TuWoW-Client\Interface\AddOns\TuWoW_Leveling"
GUIDES_DIR = os.path.join(WORKSPACE_DIR, "Guides")
ZYGOR_WOTLK_DIR = r"C:\Users\bogad\Downloads\ZygorGuides-UltimoWoW\ZygorGuidesViewer\Guides"

HORDE_FILE = os.path.join(ZYGOR_WOTLK_DIR, "ZygorGuidesHorde.lua")
ALLIANCE_FILE = os.path.join(ZYGOR_WOTLK_DIR, "ZygorGuidesAlliance.lua")

# Mapeo de nombres de zona en Zygor -> uiMapID (Classic 3.3.5a / TuWoW)
ZONE_TO_UIMAP: Dict[str, int] = {
    "Durotar": 1411, "Mulgore": 1412, "The Barrens": 1413, "Barrens": 1413,
    "Kalimdor": 1414, "Eastern Kingdoms": 1415,
    "Alterac Mountains": 1416, "Arathi Highlands": 1417, "Badlands": 1418,
    "Blasted Lands": 1419, "Tirisfal Glades": 1420, "Silverpine Forest": 1421,
    "Western Plaguelands": 1422, "Eastern Plaguelands": 1423, "Hillsbrad Foothills": 1424,
    "The Hinterlands": 1425, "Hinterlands": 1425, "Dun Morogh": 1426,
    "Searing Gorge": 1427, "Burning Steppes": 1428, "Elwynn Forest": 1429,
    "Deadwind Pass": 1430, "Duskwood": 1431, "Loch Modan": 1432,
    "Redridge Mountains": 1433, "Stranglethorn Vale": 1434, "Swamp of Sorrows": 1435,
    "Westfall": 1436, "Wetlands": 1437, "Teldrassil": 1438, "Darkshore": 1439,
    "Ashenvale": 1440, "Thousand Needles": 1441, "Stonetalon Mountains": 1442,
    "Desolace": 1443, "Feralas": 1444, "Dustwallow Marsh": 1445, "Tanaris": 1446,
    "Azshara": 1447, "Felwood": 1448, "Un'Goro Crater": 1449, "Moonglade": 1450,
    "Silithus": 1451, "Winterspring": 1452,
    "Stormwind City": 1453, "Stormwind": 1453, "Orgrimmar": 1454, "Ironforge": 1455,
    "Thunder Bluff": 1456, "Darnassus": 1457, "Undercity": 1458,
    "Azuremyst Isle": 1941, "Bloodmyst Isle": 1942, "Ghostlands": 1943, "Eversong Woods": 1944,
    "The Exodar": 1947, "Exodar": 1947, "Silvermoon City": 1948, "Silvermoon": 1948,
    "Hellfire Peninsula": 1944, "Zangarmarsh": 1946, "Terokkar Forest": 1952, "Nagrand": 1951,
    "Blade's Edge Mountains": 1949, "Netherstorm": 1953, "Shadowmoon Valley": 1948, "Shattrath City": 1955,
}

RACES: Dict[str, str] = {
    "human": "Human", "dwarf": "Dwarf", "nightelf": "NightElf", "night elf": "NightElf",
    "gnome": "Gnome", "orc": "Orc", "tauren": "Tauren", "troll": "Troll",
    "undead": "Scourge", "scourge": "Scourge", "bloodelf": "BloodElf", "blood elf": "BloodElf",
    "draenei": "Draenei",
}

CLASSES: Dict[str, str] = {
    "warrior": "WARRIOR", "paladin": "PALADIN", "hunter": "HUNTER",
    "rogue": "ROGUE", "priest": "PRIEST", "shaman": "SHAMAN",
    "mage": "MAGE", "warlock": "WARLOCK", "druid": "DRUID",
    "death knight": "DEATHKNIGHT", "deathknight": "DEATHKNIGHT",
}

def lua_str(s: str) -> str:
    escaped = (
        s.replace("\\", "\\\\")
        .replace('"', '\\"')
        .replace("\r", "")
        .replace("\n", "\\n")
    )
    return f'"{escaped}"'

def slugify(s: str) -> str:
    s = s.lower().replace("&", "and").replace("'", "")
    s = re.sub(r"[^a-z0-9]+", "-", s).strip("-")
    return s[:60]

def parse_zygor_guide(full_title: str, body: str, faction: str) -> Optional[Dict[str, Any]]:
    parts = [p.strip() for p in full_title.split("\\") if p.strip()]
    short_title = parts[-1]
    
    # Rango de niveles
    min_lvl, max_lvl = None, None
    lm = re.search(r'\((\d+)\s*-\s*(\d+)\)', short_title)
    if lm:
        min_lvl = int(lm.group(1))
        max_lvl = int(lm.group(2))
    else:
        lm2 = re.search(r'\((\d+)\)', short_title)
        if lm2:
            min_lvl = max_lvl = int(lm2.group(1))

    guide: Dict[str, Any] = {
        "title": short_title,
        "full_title": full_title,
        "category": "Leveling",
        "faction": faction,
        "steps": [],
    }
    if min_lvl is not None: guide["minLevel"] = min_lvl
    if max_lvl is not None: guide["maxLevel"] = max_lvl

    # Meta tags
    m_def = re.search(r'^\s*defaultfor\s+([^\n\r]+)', body, re.MULTILINE)
    if m_def:
        raw_r = m_def.group(1).strip().lower()
        if raw_r in RACES:
            guide["races"] = [RACES[raw_r]]

    m_start = re.search(r'^\s*startlevel\s+(\d+)', body, re.MULTILINE)
    if m_start and "minLevel" not in guide:
        guide["minLevel"] = int(m_start.group(1))

    m_next = re.search(r'^\s*next\s+([^\n\r]+)', body, re.MULTILINE)
    if m_next:
        guide["raw_next"] = m_next.group(1).strip().replace('\\\\', '\\')

    raw_steps = re.split(r'^\s*step\b[^\n]*', body, flags=re.MULTILINE)[1:]
    current_map = None
    current_zone_name = None

    for raw_st in raw_steps:
        st_obj: Dict[str, Any] = {"goals": []}
        lines = [ln.strip() for ln in raw_st.strip().splitlines() if ln.strip()]

        last_npc = None
        last_npc_id = None
        last_coords = None
        notes = []

        for line in lines:
            if line.startswith("//"):
                continue
            if line.startswith("'") or line.startswith("tip "):
                note_text = line[1:].strip() if line.startswith("'") else line[4:].strip()
                gm = re.search(r'\|goto\s+([0-9\.]+),([0-9\.]+)', note_text)
                if gm:
                    note_text = re.sub(r'\|goto\s+[0-9\.]+,[0-9\.]+', '', note_text).strip()
                    last_coords = (current_map, float(gm.group(1)), float(gm.group(2)))
                if note_text:
                    notes.append(note_text)
                continue

            gm = re.match(r'^goto\s+(?:([A-Za-z\s\'\-]+),)?([0-9\.]+),([0-9\.]+)', line)
            if gm:
                zname = gm.group(1)
                x = float(gm.group(2))
                y = float(gm.group(3))
                if zname:
                    zname = zname.strip()
                    current_zone_name = zname
                    current_map = ZONE_TO_UIMAP.get(zname, current_map)
                last_coords = (current_map, x, y)
                continue

            if line.startswith("only "):
                cond = line[5:].strip().lower()
                races = [r for k, r in RACES.items() if re.search(rf'\b{k}\b', cond)]
                classes = [c for k, c in CLASSES.items() if re.search(rf'\b{k}\b', cond)]
                if races or classes:
                    st_obj.setdefault("only", {})
                    if races: st_obj["only"]["races"] = races
                    if classes: st_obj["only"]["classes"] = classes
                continue

            tm = re.search(r'^\.?\.?talk(?:to)?\s+([^#\|]+)(?:##(\d+))?', line)
            if tm:
                last_npc = tm.group(1).strip()
                last_npc_id = int(tm.group(2)) if tm.group(2) else None
                continue

            am = re.search(r'^\.?\.?accept\s+([^#\|]+)(?:##(\d+))?', line)
            if am:
                qtitle = am.group(1).strip()
                qid = int(am.group(2)) if am.group(2) else None
                g = {"t": "accept", "quest": qid, "title": qtitle}
                if last_npc: g["npcName"] = last_npc
                if last_npc_id: g["npc"] = last_npc_id
                if last_coords: g["map"], g["x"], g["y"] = last_coords
                st_obj["goals"].append(g)
                continue

            turnm = re.search(r'^\.?\.?turnin\s+([^#\|]+)(?:##(\d+))?', line)
            if turnm:
                qtitle = turnm.group(1).strip()
                qid = int(turnm.group(2)) if turnm.group(2) else None
                g = {"t": "turnin", "quest": qid, "title": qtitle}
                if last_npc: g["npcName"] = last_npc
                if last_npc_id: g["npc"] = last_npc_id
                if last_coords: g["map"], g["x"], g["y"] = last_coords
                st_obj["goals"].append(g)
                continue

            km = re.search(r'^\.?\.?kill\s+(?:(\d+)\s+)?([^#\|]+)(?:##(\d+))?(?:\|q\s+(\d+)(?:/(\d+))?)?', line)
            if km:
                cnt = int(km.group(1)) if km.group(1) else 1
                tgt = km.group(2).strip()
                npcid = int(km.group(3)) if km.group(3) else None
                qid = int(km.group(4)) if km.group(4) else None
                oi = int(km.group(5)) if km.group(5) else None
                g = {"t": "kill", "target": tgt, "count": cnt}
                if npcid: g["npc"] = npcid
                if qid: g["quest"] = qid
                if oi: g["oi"] = oi
                if last_coords: g["map"], g["x"], g["y"] = last_coords
                st_obj["goals"].append(g)
                continue

            getm = re.search(r'^\.?\.?(?:get|collect)\s+(?:(\d+)\s+)?([^#\|]+)(?:##(\d+))?(?:\|q\s+(\d+)(?:/(\d+))?)?', line)
            if getm:
                cnt = int(getm.group(1)) if getm.group(1) else 1
                item_name = getm.group(2).strip()
                item_id = int(getm.group(3)) if getm.group(3) else None
                qid = int(getm.group(4)) if getm.group(4) else None
                oi = int(getm.group(5)) if getm.group(5) else None
                g = {"t": "collect", "itemName": item_name, "count": cnt}
                if item_id: g["item"] = item_id
                if qid: g["quest"] = qid
                if oi: g["oi"] = oi
                if last_coords: g["map"], g["x"], g["y"] = last_coords
                st_obj["goals"].append(g)
                continue

            buym = re.search(r'^\.?\.?buy\s+(?:(\d+)\s+)?([^#\|]+)(?:##(\d+))?', line)
            if buym:
                cnt = int(buym.group(1)) if buym.group(1) else 1
                item_name = buym.group(2).strip()
                item_id = int(buym.group(3)) if buym.group(3) else None
                g = {"t": "buy", "itemName": item_name, "count": cnt}
                if item_id: g["item"] = item_id
                if last_npc: g["npcName"] = last_npc
                if last_npc_id: g["npc"] = last_npc_id
                if last_coords: g["map"], g["x"], g["y"] = last_coords
                st_obj["goals"].append(g)
                continue

            dm = re.search(r'^\.?\.?ding\s+(\d+)', line)
            if dm:
                st_obj["goals"].append({"t": "level", "level": int(dm.group(1))})
                continue

            fm = re.search(r'^\.?\.?fpath\s+([^#\|]+)', line)
            if fm:
                g = {"t": "fpath", "text": fm.group(1).strip()}
                if last_coords: g["map"], g["x"], g["y"] = last_coords
                st_obj["goals"].append(g)
                continue

            hm = re.search(r'^\.?\.?(?:home|hearth)\s*([^\n\r]*)', line)
            if hm:
                action = "home" if "home" in line else "hearth"
                g = {"t": action, "text": hm.group(1).strip() if hm.group(1) else "Hearthstone"}
                if last_coords: g["map"], g["x"], g["y"] = last_coords
                st_obj["goals"].append(g)
                continue

        if not st_obj["goals"]:
            if last_npc:
                g = {"t": "talk", "npcName": last_npc}
                if last_npc_id: g["npc"] = last_npc_id
                if last_coords: g["map"], g["x"], g["y"] = last_coords
                st_obj["goals"].append(g)
            elif last_coords:
                st_obj["goals"].append({"t": "goto", "map": last_coords[0], "x": last_coords[1], "y": last_coords[2]})

        if notes:
            st_obj["note"] = " ".join(notes)

        if st_obj["goals"]:
            st_obj["goals"][0]["f"] = "e"
            st_obj["goals"] = [st_obj["goals"][0]] + [dict(gx, f="e") for gx in st_obj["goals"][1:]]
            guide["steps"].append(st_obj)

    if not guide["steps"]:
        return None

    # Detectar primera zona de la guía
    for st in guide["steps"]:
        for gl in st["goals"]:
            if gl.get("map"):
                guide["zone"] = gl["map"]
                break
        if guide.get("zone"):
            break

    return guide

def format_goal_lua(g: Dict[str, Any]) -> str:
    order = [
        "t", "quest", "title", "npc", "npcName", "item", "itemName", "target",
        "object", "objName", "count", "oi", "level", "skill", "location",
        "text", "note", "map", "x", "y", "f", "only",
    ]
    parts: List[str] = []
    for k in order:
        if k not in g or g[k] is None:
            continue
        v = g[k]
        if k == "only" and isinstance(v, dict):
            sub_parts: List[str] = []
            for ok in ("races", "classes", "factions"):
                if ok in v and v[ok]:
                    arr = ", ".join(lua_str(x) for x in v[ok])
                    sub_parts.append(f"{ok} = {{ {arr} }}")
            if sub_parts:
                parts.append(f"only = {{ {', '.join(sub_parts)} }}")
        elif isinstance(v, bool):
            parts.append(f"{k} = {'true' if v else 'false'}")
        elif isinstance(v, (int, float)):
            parts.append(f"{k} = {v}")
        else:
            parts.append(f"{k} = {lua_str(str(v))}")
    return "{ " + ", ".join(parts) + " }"

def format_guide_lua(g: Dict[str, Any]) -> List[str]:
    lines: List[str] = [
        "do",
        "\tPolestar.RegisterGuide({",
        f"\t\tid = {lua_str(g['id'])},",
        '\t\tpack = "guides",',
        f"\t\ttitle = {lua_str(g['title'])},",
        f"\t\tcategory = {lua_str(g['category'])},",
    ]
    for opt_str in ("folder", "faction", "next", "author"):
        if g.get(opt_str):
            lines.append(f"\t\t{opt_str} = {lua_str(g[opt_str])},")
    for opt_num in ("minLevel", "maxLevel", "zone", "version"):
        if g.get(opt_num) is not None:
            lines.append(f"\t\t{opt_num} = {g[opt_num]},")
    for opt_list in ("races", "classes"):
        if g.get(opt_list):
            arr = ", ".join(lua_str(x) for x in g[opt_list])
            lines.append(f"\t\t{opt_list} = {{ {arr} }},")

    lines.append("\t\tsteps = {")
    for st in g["steps"]:
        lines.append("\t\t\t{")
        if st.get("label"):
            lines.append(f"\t\t\t\tlabel = {lua_str(st['label'])},")
        if st.get("along") is True:
            lines.append("\t\t\t\talong = true,")
        if st.get("note"):
            lines.append(f"\t\t\t\tnote = {lua_str(st['note'])},")
        if st.get("only"):
            sub_parts = []
            for ok in ("races", "classes", "factions"):
                if ok in st["only"] and st["only"][ok]:
                    arr = ", ".join(lua_str(x) for x in st["only"][ok])
                    sub_parts.append(f"{ok} = {{ {arr} }}")
            if sub_parts:
                lines.append(f"\t\t\t\tonly = {{ {', '.join(sub_parts)} }},")
        lines.append("\t\t\t\tgoals = {")
        for goal in st["goals"]:
            lines.append(f"\t\t\t\t\t{format_goal_lua(goal)},")
        lines.append("\t\t\t\t},")
        lines.append("\t\t\t},")
    lines.append("\t\t},")
    lines.append("\t})")
    lines.append("end")
    return lines

def split_large_guide(g: Dict[str, Any], max_steps_per_part: int = 85) -> List[Dict[str, Any]]:
    if len(g.get("steps", [])) <= max_steps_per_part:
        return [g]
    steps = g["steps"]
    parts: List[Dict[str, Any]] = []
    total_parts = (len(steps) + max_steps_per_part - 1) // max_steps_per_part
    orig_next = g.get("next")
    base_title = g["title"]
    for idx in range(total_parts):
        chunk = steps[idx * max_steps_per_part : (idx + 1) * max_steps_per_part]
        part = dict(g)
        part_num = idx + 1
        part["id"] = g["id"] if part_num == 1 else f"{g['id']}-part-{part_num}"
        if total_parts > 1:
            part["title"] = f"{base_title} (Parte {part_num}/{total_parts})"
        if part_num < total_parts:
            part["next"] = f"{g['id']}-part-{part_num + 1}"
        elif orig_next:
            part["next"] = orig_next
        part["steps"] = chunk
        parts.append(part)
    return parts

def write_guide_chunks(bucket_prefix: str, guides: List[Dict[str, Any]], max_lines: int = 740) -> List[str]:
    # Limpiar archivos previos de este bucket en Guides/
    for fname in os.listdir(GUIDES_DIR):
        if fname.startswith(bucket_prefix) and fname.endswith(".lua"):
            try: os.remove(os.path.join(GUIDES_DIR, fname))
            except Exception: pass

    file_idx = 0
    cur_lines: List[str] = []
    generated: List[str] = []

    def flush():
        nonlocal file_idx, cur_lines
        if not cur_lines: return
        file_idx += 1
        fname = f"{bucket_prefix}_{file_idx:02d}.lua"
        fpath = os.path.join(GUIDES_DIR, fname)
        with open(fpath, "w", encoding="utf-8", newline="\n") as out:
            out.write(f"-- TuWoW_Leveling — Guides/{fname}\n")
            out.write("-- Compilado desde Zygor Guides WotLK 3.3.5a oficial para TuWoW.\n\n")
            out.write("\n".join(cur_lines))
            out.write("\n")
        generated.append(fname)
        cur_lines = []

    for g in guides:
        g_lines = format_guide_lua(g)
        if cur_lines and (len(cur_lines) + len(g_lines) + 2 > max_lines):
            flush()
        cur_lines.extend(g_lines)
        cur_lines.append("")

    flush()
    return generated

def main():
    print("=== Compilador de Guías Zygor WotLK 3.3.5a para TuWoW ===")
    
    # 1. Parsear Horde
    with open(HORDE_FILE, 'r', encoding='latin-1') as f:
        h_text = f.read()

    re_guide = re.compile(r'RegisterGuide\(\s*"([^"]+)"\s*,\s*\[\[(.*?)\]\]\s*\)', re.DOTALL)
    
    raw_horde: List[Dict[str, Any]] = []
    title_to_id: Dict[str, str] = {}
    
    for m in re_guide.finditer(h_text):
        full_title = m.group(1).replace('\\\\', '\\')
        body = m.group(2)
        g = parse_zygor_guide(full_title, body, "Horde")
        if g:
            short = g["title"]
            base_id = f"zygor/leveling/h-{slugify(short)}"
            g["id"] = base_id
            g["version"] = 1
            g["author"] = "TuWoW & Zygor"
            title_to_id[full_title] = base_id
            raw_horde.append(g)

    # 2. Parsear Alliance
    with open(ALLIANCE_FILE, 'r', encoding='latin-1') as f:
        a_text = f.read()

    raw_alliance: List[Dict[str, Any]] = []
    for m in re_guide.finditer(a_text):
        full_title = m.group(1).replace('\\\\', '\\')
        body = m.group(2)
        g = parse_zygor_guide(full_title, body, "Alliance")
        if g:
            short = g["title"]
            base_id = f"zygor/leveling/a-{slugify(short)}"
            g["id"] = base_id
            g["version"] = 1
            g["author"] = "TuWoW & Zygor"
            title_to_id[full_title] = base_id
            raw_alliance.append(g)

    # Conectar 'next' IDs
    for glist in (raw_horde, raw_alliance):
        for g in glist:
            rn = g.get("raw_next")
            if rn and rn in title_to_id:
                g["next"] = title_to_id[rn]

    # Dividir guías largas en partes <= 85 pasos
    final_horde: List[Dict[str, Any]] = []
    for g in raw_horde:
        final_horde.extend(split_large_guide(g, max_steps_per_part=85))

    final_alliance: List[Dict[str, Any]] = []
    for g in raw_alliance:
        final_alliance.extend(split_large_guide(g, max_steps_per_part=85))

    print(f"Horde Guides compiladas: {len(final_horde)} partes (desde {len(raw_horde)} guías Zygor)")
    print(f"Alliance Guides compiladas: {len(final_alliance)} partes (desde {len(raw_alliance)} guías Zygor)")

    # Escribir archivos modulares (< 740 líneas)
    h_files = write_guide_chunks("Leveling_Horde", final_horde, max_lines=740)
    a_files = write_guide_chunks("Leveling_Alliance", final_alliance, max_lines=740)

    print(f"Generados {len(h_files)} archivos Leveling_Horde_XX.lua")
    print(f"Generados {len(a_files)} archivos Leveling_Alliance_XX.lua")

    # Actualizar Guides.xml
    xml_path = os.path.join(GUIDES_DIR, "Guides.xml")
    with open(xml_path, "r", encoding="utf-8") as f:
        xml_content = f.read()

    # Reconstruir lista de scripts en Guides.xml
    all_lua = sorted([f for f in os.listdir(GUIDES_DIR) if f.endswith(".lua") and f != "Pack.lua"])
    
    # Subdirectorios QuestDB y Names
    qdb_files = []
    qdb_dir = os.path.join(GUIDES_DIR, "QuestDB")
    if os.path.exists(qdb_dir):
        qdb_files = [f"QuestDB/{f}" for f in sorted(os.listdir(qdb_dir)) if f.endswith(".lua")]

    name_files = []
    name_dir = os.path.join(GUIDES_DIR, "Names")
    if os.path.exists(name_dir):
        name_files = [f"Names/{f}" for f in sorted(os.listdir(name_dir)) if f.endswith(".lua")]

    xml_lines = [
        '<Ui xmlns="http://www.blizzard.com/wow/ui/">',
        '\t<Script file="Pack.lua"/>',
    ]
    for qf in qdb_files:
        xml_lines.append(f'\t<Script file="{qf}"/>')
    for nf in name_files:
        xml_lines.append(f'\t<Script file="{nf}"/>')
    for lf in all_lua:
        xml_lines.append(f'\t<Script file="{lf}"/>')
    xml_lines.append('</Ui>\n')

    with open(xml_path, "w", encoding="utf-8", newline="\n") as out:
        out.write("\n".join(xml_lines))

    print(f"Guides.xml actualizado exitosamente con {len(all_lua)} archivos de guías + DB.")

if __name__ == "__main__":
    main()
