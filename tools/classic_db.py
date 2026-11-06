#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
TuWoW_Leveling — tools/classic_db.py
Carga la base de datos Classic 3.3.5a de Questie-335 y la reconcilia con
Polestar_QuestDB, Polestar_esES y Zygor Localization-Forever (esES).
Genera fragmentos modulares (< 800 líneas por archivo) en Guides/QuestDB/ y Guides/Names/.
"""

import os
import re
from typing import Dict, List, Optional, Set, Tuple

QUESTIE_DIR = r"c:\TuWoW\TuWoW-Client\Interface\AddOns\Questie-335\Database\Classic"
POLESTAR_QDB_DIR = r"C:\Program Files (x86)\World of Warcraft\_forever_\Interface\AddOns\Polestar_QuestDB"
POLESTAR_ITEMDB_DIR = r"C:\Program Files (x86)\World of Warcraft\_forever_\Interface\AddOns\Polestar_ItemDB"
POLESTAR_CODEX_DIR = r"C:\Program Files (x86)\World of Warcraft\_forever_\Interface\AddOns\Polestar_Codex"
POLESTAR_ES_DIR = r"C:\Program Files (x86)\World of Warcraft\_forever_\Interface\AddOns\Polestar_esES"
ZYGOR_LOC_DIR = r"C:\Program Files (x86)\World of Warcraft\_forever_\Interface\AddOns\ZygorGuidesViewerForever\Localization-Forever"

# Mapas exclusivos de WoW Forever (Skyborne / Islas / Instancias custom)
FOREVER_MAPS: Set[int] = {2482, 2521, 2524, 2548, 2959, 2998, 2999, 3065}

# Mapeo AreaTable.dbc (Questie 1.12) -> uiMapID (Classic Era / TuWoW)
AREA_TO_UIMAP: Dict[int, int] = {
    1: 1426, 3: 1418, 4: 1419, 8: 1435, 10: 1431, 11: 1437, 12: 1429, 14: 1411,
    15: 1445, 16: 1447, 17: 1413, 28: 1422, 33: 1434, 36: 1416, 38: 1432, 40: 1436,
    41: 1430, 44: 1433, 45: 1417, 46: 1428, 47: 1425, 51: 1427, 85: 1420, 130: 1421,
    139: 1423, 141: 1438, 148: 1439, 215: 1412, 267: 1424, 331: 1440, 357: 1444,
    361: 1448, 400: 1441, 405: 1443, 406: 1442, 440: 1446, 490: 1449, 493: 1450,
    618: 1452, 1377: 1451, 1497: 1458, 1519: 1453, 1537: 1455, 1637: 1454, 1638: 1456,
    1657: 1457, 2597: 1459, 3277: 1460, 3358: 1461,
}


class ClassicDatabase:
    def __init__(self) -> None:
        self.valid_quests: Set[int] = set()
        self.valid_npcs: Set[int] = set()
        self.valid_items: Set[int] = set()
        self.valid_objects: Set[int] = set()

        self.quests: Dict[int, dict] = {}
        self.npcs: Dict[int, dict] = {}
        self.items: Dict[int, str] = {}
        self.objects: Dict[int, dict] = {}

    def load_all(self) -> None:
        self._load_questie_classic()
        self._load_polestar_questdb()

    def _load_questie_classic(self) -> None:
        re_id_name = re.compile(r"^\[(\d+)\]\s*=\s*\{(['\"])((?:\\.|(?!\2).)*)\2")
        re_quest_full = re.compile(
            r"^\[(\d+)\]\s*=\s*\{(['\"])((?:\\.|(?!\2).)*)\2,"
            r"(\{.*?\}|nil),(\{.*?\}|nil),(\d+|nil),(\d+|nil)"
        )
        re_npc_spawn = re.compile(r"\[(\d+)\]=\{\{([0-9.]+),([0-9.]+)\}")

        # 1. Quests
        q_path = os.path.join(QUESTIE_DIR, "classicQuestDB.lua")
        with open(q_path, "r", encoding="utf-8", errors="replace") as f:
            for line in f:
                m = re_quest_full.match(line)
                if m:
                    qid = int(m.group(1))
                    if qid >= 90000:
                        continue
                    title = m.group(3).replace("\\'", "'").replace('\\"', '"')
                    started_raw, finished_raw = m.group(4), m.group(5)
                    req_lvl = int(m.group(6)) if m.group(6) != "nil" else 1
                    q_lvl = int(m.group(7)) if m.group(7) != "nil" else req_lvl
                    start_npc = self._first_int(started_raw)
                    finish_npc = self._first_int(finished_raw)
                    self.valid_quests.add(qid)
                    self.quests[qid] = {
                        "title": title,
                        "minLevel": max(1, req_lvl),
                        "level": max(1, q_lvl),
                        "start_npc": start_npc,
                        "finish_npc": finish_npc,
                    }
                else:
                    m2 = re_id_name.match(line)
                    if m2:
                        qid = int(m2.group(1))
                        if qid < 90000:
                            self.valid_quests.add(qid)
                            self.quests[qid] = {
                                "title": m2.group(3).replace("\\'", "'"),
                                "minLevel": 1,
                                "level": 1,
                                "start_npc": None,
                                "finish_npc": None,
                            }

        # 2. NPCs
        n_path = os.path.join(QUESTIE_DIR, "classicNpcDB.lua")
        with open(n_path, "r", encoding="utf-8", errors="replace") as f:
            for line in f:
                m = re_id_name.match(line)
                if not m:
                    continue
                nid = int(m.group(1))
                if nid >= 200000:
                    continue
                name = m.group(3).replace("\\'", "'").replace('\\"', '"')
                self.valid_npcs.add(nid)
                uimap, x, y = None, None, None
                sm = re_npc_spawn.search(line)
                if sm:
                    area_id = int(sm.group(1))
                    uimap = AREA_TO_UIMAP.get(area_id)
                    x, y = float(sm.group(2)), float(sm.group(3))
                self.npcs[nid] = {"name": name, "map": uimap, "x": x, "y": y}

        # 3. Items
        i_path = os.path.join(QUESTIE_DIR, "classicItemDB.lua")
        with open(i_path, "r", encoding="utf-8", errors="replace") as f:
            for line in f:
                m = re_id_name.match(line)
                if not m:
                    continue
                iid = int(m.group(1))
                if iid >= 200000:
                    continue
                name = m.group(3).replace("\\'", "'").replace('\\"', '"')
                self.valid_items.add(iid)
                self.items[iid] = name

        # 4. Objects
        o_path = os.path.join(QUESTIE_DIR, "classicObjectDB.lua")
        with open(o_path, "r", encoding="utf-8", errors="replace") as f:
            for line in f:
                m = re_id_name.match(line)
                if not m:
                    continue
                oid = int(m.group(1))
                if oid >= 300000:
                    continue
                name = m.group(3).replace("\\'", "'").replace('\\"', '"')
                self.valid_objects.add(oid)
                uimap, x, y = None, None, None
                sm = re_npc_spawn.search(line)
                if sm:
                    area_id = int(sm.group(1))
                    uimap = AREA_TO_UIMAP.get(area_id)
                    x, y = float(sm.group(2)), float(sm.group(3))
                self.objects[oid] = {"name": name, "map": uimap, "x": x, "y": y}

    @staticmethod
    def _first_int(raw: str) -> Optional[int]:
        if not raw or raw == "nil":
            return None
        m = re.search(r"\{\{(\d+)", raw)
        return int(m.group(1)) if m else None

    @staticmethod
    def _unescape_polestar(text: str) -> str:
        if text.startswith("'"):
            text = text[1:]
        return re.sub(r"%([0-9A-Fa-f]{2})", lambda m: chr(int(m.group(1), 16)), text)

    def _load_polestar_questdb(self) -> None:
        # Enriquecer coordenadas uiMapID desde Polestar_QuestDB para IDs válidos en 3.3.5a
        n_path = os.path.join(POLESTAR_QDB_DIR, "Npcs.lua")
        if os.path.exists(n_path):
            with open(n_path, "r", encoding="utf-8") as f:
                for line in f:
                    if "\t'" not in line:
                        continue
                    id_str, payload = line.rstrip("\r\n").split("\t", 1)
                    nid = int(id_str)
                    if nid not in self.valid_npcs:
                        continue
                    parts = payload.split(";")
                    name = self._unescape_polestar(parts[0])
                    rec = self.npcs.setdefault(nid, {"name": name, "map": None, "x": None, "y": None})
                    if len(parts) >= 6:
                        try:
                            m_id = int(parts[1])
                            if m_id not in FOREVER_MAPS:
                                rec["map"] = m_id
                                rec["x"] = float(parts[4])
                                rec["y"] = float(parts[5])
                        except ValueError:
                            pass

        q_path = os.path.join(POLESTAR_QDB_DIR, "Quests.lua")
        if os.path.exists(q_path):
            with open(q_path, "r", encoding="utf-8") as f:
                for line in f:
                    if "\t'" not in line:
                        continue
                    id_str, payload = line.rstrip("\r\n").split("\t", 1)
                    qid = int(id_str)
                    if qid not in self.valid_quests:
                        continue
                    parts = payload.split(";")
                    rec = self.quests[qid]
                    if parts[0]:
                        rec["title"] = self._unescape_polestar(parts[0])
                    if len(parts) > 2 and parts[2].isdigit():
                        rec["minLevel"] = max(1, int(parts[2]))
                    if len(parts) > 1 and parts[1].isdigit():
                        rec["level"] = max(1, int(parts[1]))
                    if len(parts) > 6 and parts[6].lstrip("-").isdigit():
                        s_id = int(parts[6])
                        if s_id > 0 and s_id in self.valid_npcs:
                            rec["start_npc"] = s_id
                    if len(parts) > 7 and parts[7].lstrip("-").isdigit():
                        f_id = int(parts[7])
                        if f_id > 0 and f_id in self.valid_npcs:
                            rec["finish_npc"] = f_id

    def export_questdb_chunks(self, out_dir: str, max_lines: int = 750) -> List[str]:
        os.makedirs(out_dir, exist_ok=True)
        generated_files: List[str] = []

        # 1. Filtrar y exportar Quests, Npcs, Objects, Items
        kinds = [
            ("quests", "Quests.lua", self.valid_quests),
            ("npcs", "Npcs.lua", self.valid_npcs),
            ("objects", "Objects.lua", self.valid_objects),
            ("items", "Items.lua", self.valid_items),
        ]
        counts: Dict[str, int] = {}

        for kind, src_name, valid_set in kinds:
            src_path = os.path.join(POLESTAR_QDB_DIR, src_name)
            entries: List[Tuple[int, str]] = []
            with open(src_path, "r", encoding="utf-8") as f:
                for line in f:
                    if "\t" not in line:
                        continue
                    id_part, rest = line.rstrip("\r\n").split("\t", 1)
                    if not id_part.isdigit():
                        continue
                    eid = int(id_part)
                    if eid not in valid_set:
                        continue
                    # Omitir referencias a mapas exclusivos de Forever (2521, 2524, etc.)
                    if ";2521" in rest or ";2524" in rest or ";2482" in rest or ";2548" in rest:
                        continue
                    entries.append((eid, f"{eid}\t{rest}"))

            counts[kind] = len(entries)
            file_idx = 0
            pos = 0
            while pos < len(entries):
                file_idx += 1
                batch = entries[pos : pos + (max_lines - 40)]
                pos += len(batch)
                fname = f"QDB_{kind.capitalize()}_{file_idx:02d}.lua"
                fpath = os.path.join(out_dir, fname)
                with open(fpath, "w", encoding="utf-8", newline="\n") as out:
                    out.write(f"-- TuWoW_Leveling — Guides/QuestDB/{fname} (Classic 3.3.5a depurado)\n")
                    out.write("local Q = Polestar and Polestar.QuestDB\n")
                    out.write("if not (Q and Q.AddChunk) then return end\n")
                    out.write("local R = Q.AddChunk\n")
                    # Sub-chunks de ~200 registros para búsqueda binaria óptima en LuaChunks
                    for c_start in range(0, len(batch), 200):
                        sub = batch[c_start : c_start + 200]
                        lo, hi = sub[0][0], sub[-1][0]
                        out.write(f'R("{kind}", {lo}, {hi}, [[\n')
                        for _, row_text in sub:
                            out.write(row_text + "\n")
                        out.write("]])\n")
                generated_files.append(f"QuestDB\\{fname}")

        # 2. MapFrames.lua con SetMeta actualizado a los conteos reales de Classic 3.3.5a
        mf_name = "QDB_MapFrames.lua"
        mf_path = os.path.join(out_dir, mf_name)
        src_mf = os.path.join(POLESTAR_QDB_DIR, "MapFrames.lua")
        with open(src_mf, "r", encoding="utf-8") as f:
            mf_lines = f.readlines()
        with open(mf_path, "w", encoding="utf-8", newline="\n") as out:
            out.write("-- TuWoW_Leveling — Guides/QuestDB/QDB_MapFrames.lua\n")
            for line in mf_lines:
                if line.startswith("Q.SetMeta("):
                    out.write(
                        f"Q.SetMeta({{items={counts['items']},npcs={counts['npcs']},"
                        f"objects={counts['objects']},quests={counts['quests']},schema=2}})\n"
                    )
                elif any(f"[{m}]" in line for m in FOREVER_MAPS):
                    continue
                else:
                    out.write(line)
        generated_files.insert(0, f"QuestDB\\{mf_name}")

        # 3. DungeonsData.lua (sin mazmorras exclusivas de Forever)
        d_src = os.path.join(POLESTAR_CODEX_DIR, "Dungeons1.lua")
        if os.path.exists(d_src):
            d_name = "QDB_Dungeons.lua"
            d_path = os.path.join(out_dir, d_name)
            forever_dungeons = (
                '["city-of-dalaran"]',
                '["excavation-site-wetlands"]',
                '["ruins-of-lordaeron"]',
                '["the-hall-of-thanes"]',
            )
            with open(d_src, "r", encoding="utf-8") as f, open(d_path, "w", encoding="utf-8", newline="\n") as out:
                out.write("-- TuWoW_Leveling — Guides/QuestDB/QDB_Dungeons.lua (Classic 3.3.5a)\n")
                for line in f:
                    if any(line.strip().startswith(fd) for fd in forever_dungeons):
                        continue
                    out.write(line)
            generated_files.append(f"QuestDB\\{d_name}")

        return generated_files

    def export_spanish_names(self, out_dir: str, max_lines: int = 750) -> List[str]:
        os.makedirs(out_dir, exist_ok=True)
        generated_files: List[str] = []

        # 1. Leer traducciones adicionales desde Zygor Localization-Forever (esES)
        zygor_quests_es: Dict[int, str] = {}
        zygor_npcs_es: Dict[int, str] = {}
        re_zygor_loc = re.compile(r"\[(\d+)\]\s*=\s*\"([^\"]+)\"")

        zq_file = os.path.join(ZYGOR_LOC_DIR, "Quests_esES.lua")
        if os.path.exists(zq_file):
            with open(zq_file, "r", encoding="utf-8", errors="replace") as f:
                for line in f:
                    m = re_zygor_loc.search(line)
                    if m:
                        qid = int(m.group(1))
                        if qid in self.valid_quests:
                            zygor_quests_es[qid] = m.group(2)

        zn_file = os.path.join(ZYGOR_LOC_DIR, "NPCs_esES.lua")
        if os.path.exists(zn_file):
            with open(zn_file, "r", encoding="utf-8", errors="replace") as f:
                for line in f:
                    m = re_zygor_loc.search(line)
                    if m:
                        nid = int(m.group(1))
                        if nid in self.valid_npcs:
                            zygor_npcs_es[nid] = m.group(2)

        # 2. Leer Polestar_esES/Names.lua y combinar con Zygor esES filtrando IDs de Forever
        names_by_kind: Dict[str, Dict[int, str]] = {
            "quest": dict(zygor_quests_es),
            "npc": dict(zygor_npcs_es),
            "item": {},
            "object": {},
            "area": {},
            "faction": {},
            "spell": {},
        }
        src_es = os.path.join(POLESTAR_ES_DIR, "Names.lua")
        if os.path.exists(src_es):
            curr_kind: Optional[str] = None
            re_chunk_hdr = re.compile(r'^R\("([a-z]+)",\s*(\d+),\s*(\d+),')
            with open(src_es, "r", encoding="utf-8") as f:
                for line in f:
                    hm = re_chunk_hdr.match(line)
                    if hm:
                        curr_kind = hm.group(1)
                        continue
                    if curr_kind and "\t" in line:
                        id_str, val = line.rstrip("\r\n").split("\t", 1)
                        if not id_str.isdigit():
                            continue
                        eid = int(id_str)
                        if curr_kind == "quest" and eid >= 90000:
                            continue
                        if curr_kind in ("npc", "item") and eid >= 200000:
                            continue
                        if curr_kind == "object" and eid >= 300000:
                            continue
                        if curr_kind in names_by_kind:
                            names_by_kind[curr_kind][eid] = val

        # 3. Escribir archivos modulares (< 800 líneas cada uno)
        all_blocks: List[Tuple[str, int, int, List[str]]] = []
        for kind in ("quest", "npc", "item", "object", "area", "faction", "spell"):
            kmap = names_by_kind.get(kind, {})
            if not kmap:
                continue
            sorted_ids = sorted(kmap.keys())
            for i in range(0, len(sorted_ids), 220):
                sub_ids = sorted_ids[i : i + 220]
                lo, hi = sub_ids[0], sub_ids[-1]
                rows = [f"{eid}\t{kmap[eid]}" for eid in sub_ids]
                all_blocks.append((kind, lo, hi, rows))

        file_idx = 0
        cur_blocks: List[Tuple[str, int, int, List[str]]] = []
        cur_lines = 10

        def flush_file() -> None:
            nonlocal file_idx, cur_blocks, cur_lines
            if not cur_blocks:
                return
            file_idx += 1
            fname = f"Names_esES_{file_idx:02d}.lua"
            fpath = os.path.join(out_dir, fname)
            with open(fpath, "w", encoding="utf-8", newline="\n") as out:
                out.write(f"-- TuWoW_Leveling — Guides/Names/{fname} (Traducciones esES/esMX)\n")
                out.write("local N = Polestar and Polestar.Names\n")
                out.write("if not (N and N.AddChunk) then return end\n")
                out.write('local function R(kind, lo, hi, text) N.AddChunk("esES", kind, lo, hi, text) end\n')
                for kind, lo, hi, rows in cur_blocks:
                    out.write(f'R("{kind}", {lo}, {hi}, [[\n')
                    for r in rows:
                        out.write(r + "\n")
                    out.write("]])\n")
            generated_files.append(f"Names\\{fname}")
            cur_blocks = []
            cur_lines = 10

        for block in all_blocks:
            block_len = len(block[3]) + 3
            if cur_lines + block_len > max_lines and cur_blocks:
                flush_file()
            cur_blocks.append(block)
            cur_lines += block_len
        flush_file()

        return generated_files

