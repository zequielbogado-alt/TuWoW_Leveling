#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
TuWoW_Leveling — tools/zygor_parser.py
Compilador y depurador del DSL de ZygorGuidesViewerForever hacia el formato
validado de TuWoW_Leveling (Core/GuidesValidate.lua), purgando misiones, NPCs,
objetos, razas y mazmorras exclusivas de WoW Forever y reconciliando con 3.3.5a.
"""

import os
import re
from typing import Dict, List, Optional, Set, Tuple
from classic_db import ClassicDatabase

ZYGOR_GUIDES_DIR = r"C:\Program Files (x86)\World of Warcraft\_forever_\Interface\AddOns\ZygorGuidesViewerForever\Guides-Forever"
POLESTAR_GUIDES_FILE = r"C:\Program Files (x86)\World of Warcraft\_forever_\Interface\AddOns\Polestar_Guides\Guides.lua"

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
    "Stonetalon Mountain": 1442, "Desolace": 1443, "Feralas": 1444,
    "Dustwallow Marsh": 1445, "Tanaris": 1446, "Azshara": 1447, "Felwood": 1448,
    "Un'Goro Crater": 1449, "Moonglade": 1450, "Silithus": 1451, "Winterspring": 1452,
    "Stormwind City": 1453, "Stormwind": 1453, "Orgrimmar": 1454, "Ironforge": 1455,
    "Thunder Bluff": 1456, "Darnassus": 1457, "Undercity": 1458,
    "Alterac Valley": 1459, "Warsong Gulch": 1460, "Arathi Basin": 1461,
}

# Zonas o instancias exclusivas de WoW Forever que deben descartarse
FOREVER_ZONE_NAMES: Set[str] = {
    "Stormbreaker Point", "Talonrest", "Hall of Thanes", "The Hall of Thanes",
    "Ruins of Lordaeron", "Excavation Site", "City of Dalaran", "Darkspear Islands",
}

# Guías completas exclusivas de WoW Forever / SoD que deben omitirse en TuWoW 3.3.5a
SKIP_GUIDE_PATTERNS: Tuple[str, ...] = (
    "Startup Guide Wizard",
    "Skyborne",
    "Hall of Thanes",
    "Ruins of Lordaeron",
    "Excavation Site",
    "City of Dalaran",
    "Blackfathom Deeps Raid",
    "Gnomeregan Raid",
    "Sunken Temple Raid",
)

VALID_RACES: Dict[str, str] = {
    "human": "Human", "dwarf": "Dwarf", "nightelf": "NightElf", "gnome": "Gnome",
    "orc": "Orc", "tauren": "Tauren", "troll": "Troll",
    "undead": "Scourge", "scourge": "Scourge",
}

VALID_CLASSES: Dict[str, str] = {
    "warrior": "WARRIOR", "paladin": "PALADIN", "hunter": "HUNTER",
    "rogue": "ROGUE", "priest": "PRIEST", "shaman": "SHAMAN",
    "mage": "MAGE", "warlock": "WARLOCK", "druid": "DRUID",
}

STANDING_MAP: Dict[str, int] = {
    "hated": 1, "hostile": 2, "unfriendly": 3, "neutral": 4,
    "friendly": 5, "honored": 6, "revered": 7, "exalted": 8,
}


class ZygorCompiler:
    def __init__(self, db: ClassicDatabase) -> None:
        self.db = db
        self.includes: Dict[str, str] = {}
        self.stats = {
            "guides_compiled": 0,
            "guides_skipped_forever": 0,
            "steps_compiled": 0,
            "steps_dropped_orphan": 0,
            "purged_forever_quests": 0,
            "purged_forever_npcs": 0,
            "purged_forever_items": 0,
            "reconciled_npcs": 0,
            "reconciled_coords": 0,
            "by_category": {},
        }
        self._purged_quest_ids: Set[int] = set()
        self._purged_npc_ids: Set[int] = set()
        self._purged_item_ids: Set[int] = set()

    def load_includes(self) -> None:
        inc_root = os.path.join(ZYGOR_GUIDES_DIR, "Includes")
        if not os.path.exists(inc_root):
            return
        re_inc = re.compile(
            r'RegisterInclude\(\s*"([^"]+)"\s*,\s*\[\[(.*?)\]\]\s*\)',
            re.DOTALL,
        )
        for root, _, files in os.walk(inc_root):
            for fname in files:
                if not fname.endswith(".lua"):
                    continue
                fpath = os.path.join(root, fname)
                with open(fpath, "r", encoding="utf-8", errors="replace") as f:
                    text = f.read()
                for m in re_inc.finditer(text):
                    self.includes[m.group(1)] = m.group(2)

    @staticmethod
    def clean_text(s: str) -> str:
        s = re.sub(r"\{[a-zA-Z]*\}", "", s)
        s = re.sub(r"_([^_]+)_", r"\1", s)
        s = s.replace("''", "'").replace("|", " ")
        s = re.sub(r"\s+", " ", s).strip()
        return s

    @staticmethod
    def slugify(s: str) -> str:
        s = s.lower().replace("&", "and").replace("'", "")
        s = re.sub(r"[^a-z0-9]+", "-", s).strip("-")
        return s[:60]

    def expand_includes(self, body: str) -> str:
        re_inc_line = re.compile(r'^\s*\|?include\s+"([^"]+)"(.*)$', re.MULTILINE)

        def repl(m: re.Match) -> str:
            inc_name = m.group(1)
            args_str = m.group(2)
            tpl = self.includes.get(inc_name, "")
            if not tpl:
                return ""
            for kv in re.finditer(r'(\w+)\s*=\s*"([^"]*)"', args_str):
                tpl = tpl.replace(f"%{kv.group(1)}%", kv.group(2))
            return tpl

        for _ in range(3):
            if "include " not in body:
                break
            body = re_inc_line.sub(repl, body)
        return body

    def parse_only(self, cond_str: str) -> Tuple[bool, Optional[dict]]:
        """Devuelve (keep, only_dict). Si keep es False, el paso/línea debe descartarse."""
        s = cond_str.strip()
        if not s:
            return True, None
        low = s.lower()
        # Pasos de advertencia "Wrong Character Race" (|only if not Human)
        if re.search(r"\bnot\s+(human|dwarf|nightelf|gnome|orc|tauren|troll|undead|scourge)\b", low):
            if "warlock" not in low and "warrior" not in low:
                return False, None
        if "skyborne" in low:
            # Si solo aplica a Skyborne, descartar
            other_races = [r for k, r in VALID_RACES.items() if re.search(rf"\b{k}\b", low)]
            if not other_races:
                return False, None

        races: List[str] = []
        classes: List[str] = []
        for k, r_name in VALID_RACES.items():
            if re.search(rf"(?<!not\s)\b{k}\b", low) and r_name not in races:
                races.append(r_name)
        for k, c_name in VALID_CLASSES.items():
            if re.search(rf"(?<!not\s)\b{k}\b", low) and c_name not in classes:
                classes.append(c_name)

        only: dict = {}
        if races:
            only["races"] = races
        if classes:
            only["classes"] = classes
        return True, (only if only else None)

    @staticmethod
    def parse_goto(line: str, default_map: Optional[int] = None) -> Tuple[Optional[int], Optional[float], Optional[float], Optional[str]]:
        m = re.search(r"\|goto\s+([^|]+)", line)
        if not m:
            return None, None, None, None
        raw = m.group(1).strip()
        cm = re.search(r"^(.*?)\s*([0-9]{1,2}(?:\.[0-9]+)?)\s*,\s*([0-9]{1,2}(?:\.[0-9]+)?)", raw)
        if not cm:
            return None, None, None, None
        zone_part = cm.group(1).strip()
        zone_part = re.sub(r"/\d+$", "", zone_part).strip()
        x, y = float(cm.group(2)), float(cm.group(3))
        if x <= 0.01 and y <= 0.01:
            return None, None, None, (zone_part or None)
        x = max(0.1, min(99.9, round(x, 2)))
        y = max(0.1, min(99.9, round(y, 2)))
        if zone_part in FOREVER_ZONE_NAMES:
            return -1, x, y, zone_part
        uimap = ZONE_TO_UIMAP.get(zone_part) if zone_part else default_map
        return uimap, x, y, (zone_part or None)

    def compile_all_zygor_files(self) -> List[dict]:
        self.load_includes()
        files_to_parse = [
            ("Leveling\\ZygorLevelingAllianceCLASSIC.lua", "Alliance", "Leveling"),
            ("Leveling\\ZygorLevelingHordeCLASSIC.lua", "Horde", "Leveling"),
            ("Dungeons\\ZygorDungeonAllianceCLASSIC.lua", "Alliance", "Dungeons"),
            ("Dungeons\\ZygorDungeonHordeCLASSIC.lua", "Horde", "Dungeons"),
            ("Dungeons\\ZygorGearCommonCLASSIC.lua", None, "Dungeons"),
            ("Professions\\ZygorProfessionsAllianceCLASSIC.lua", "Alliance", "Professions"),
            ("Professions\\ZygorProfessionsHordeCLASSIC.lua", "Horde", "Professions"),
            ("Reputations\\ZygorReputationsAllianceCLASSIC.lua", "Alliance", "Reputation"),
            ("Reputations\\ZygorReputationsHordeCLASSIC.lua", "Horde", "Reputation"),
            ("Events\\ZygorEventsAllianceCLASSIC.lua", "Alliance", "Events"),
            ("Events\\ZygorEventsHordeCLASSIC.lua", "Horde", "Events"),
        ]

        re_guide = re.compile(
            r'ZygorGuidesViewer:RegisterGuide\(\s*"([^"]+)"\s*,\s*\{(.*?)\}\s*,\s*\[\[(.*?)\]\]\s*\)',
            re.DOTALL,
        )

        raw_guides: List[Tuple[str, str, Optional[str], str, str]] = []
        title_to_id: Dict[Tuple[Optional[str], str], str] = {}
        seen_ids: Set[str] = set()

        for rel_path, faction, default_cat in files_to_parse:
            fpath = os.path.join(ZYGOR_GUIDES_DIR, rel_path)
            if not os.path.exists(fpath):
                continue
            with open(fpath, "r", encoding="utf-8", errors="replace") as f:
                content = f.read()
            for m in re_guide.finditer(content):
                full_title = m.group(1).replace("\\\\", "\\")
                meta_str = m.group(2)
                body_str = m.group(3)
                if any(pat.lower() in full_title.lower() for pat in SKIP_GUIDE_PATTERNS):
                    self.stats["guides_skipped_forever"] += 1
                    continue
                f_prefix = (faction[0].lower() + "-") if faction else "c-"
                cat_slug = self.slugify(default_cat)
                short_title = full_title.split("\\")[-1]
                base_id = f"zygor/{cat_slug}/{f_prefix}{self.slugify(short_title)}"
                gid = base_id
                idx = 2
                while gid in seen_ids:
                    gid = f"{base_id}-{idx}"
                    idx += 1
                seen_ids.add(gid)
                title_to_id[(faction, full_title)] = gid
                raw_guides.append((gid, full_title, faction, default_cat, meta_str + "\n<<<BODY>>>\n" + body_str))

        compiled_guides: List[dict] = []
        for gid, full_title, faction, default_cat, combined in raw_guides:
            meta_str, body_str = combined.split("\n<<<BODY>>>\n", 1)
            g = self._compile_single_guide(gid, full_title, faction, default_cat, meta_str, body_str, title_to_id)
            if g:
                compiled_guides.append(g)
                self.stats["guides_compiled"] += 1
                cat = g.get("category", "Leveling")
                self.stats["by_category"][cat] = self.stats["by_category"].get(cat, 0) + 1

        # Añadir guías de Coleccionables (Monturas/Mascotas) y Exploración de Polestar_Guides depuradas
        extra = self._load_polestar_collectibles(seen_ids)
        compiled_guides.extend(extra)

        return compiled_guides

    def _compile_single_guide(
        self,
        gid: str,
        full_title: str,
        faction: Optional[str],
        default_cat: str,
        meta_str: str,
        body_str: str,
        title_to_id: Dict[Tuple[Optional[str], str], str],
    ) -> Optional[dict]:
        parts = [p.strip() for p in full_title.split("\\") if p.strip()]
        short_title = parts[-1]
        folder = parts[1] if len(parts) > 2 else None

        # Categoría
        category = default_cat
        if "Class Quests" in short_title:
            category = "Class"
        elif "Ahn'Qiraj Gear" in full_title or "Gear" in parts[0]:
            category = "Dungeons"
            folder = "Gear & Raid Quests"

        # Rango de niveles desde el título "(13-15)" o "(25)"
        min_lvl, max_lvl = None, None
        lm = re.search(r"\((\d+)\s*-\s*(\d+)\)", short_title)
        if lm:
            min_lvl, max_lvl = int(lm.group(1)), int(lm.group(2))
            if max_lvl <= 60:
                short_title = re.sub(r"\s*\(\d+\s*-\s*\d+\)", "", short_title).strip()
        else:
            lm2 = re.search(r"\((\d+)\)", short_title)
            if lm2 and int(lm2.group(1)) <= 60:
                min_lvl = max_lvl = int(lm2.group(1))

        # Siguiente guía
        next_id = None
        nm = re.search(r'next\s*=\s*"([^"]+)"', meta_str)
        if nm:
            next_raw = nm.group(1).replace("\\\\", "\\")
            next_id = title_to_id.get((faction, next_raw))

        # Razas / Clases por defecto de la guía
        body_str = self.expand_includes(body_str)
        guide_races: Optional[List[str]] = None
        guide_classes: Optional[List[str]] = None
        dm = re.search(r"^\s*defaultfor\s+(.+)$", body_str, re.MULTILINE)
        if dm:
            _, only_def = self.parse_only(dm.group(1))
            if only_def:
                guide_races = only_def.get("races")
                guide_classes = only_def.get("classes")
        if not guide_classes and category == "Class":
            for k, c_up in VALID_CLASSES.items():
                if k in short_title.lower():
                    guide_classes = [c_up]
                    break

        # Detectar sticky labels referenciados por stickystart
        sticky_labels: Set[str] = set()
        for sm in re.finditer(r'^\s*stickystart\s+"([^"]+)"', body_str, re.MULTILINE):
            sticky_labels.add(sm.group(1))

        # Dividir en bloques step
        raw_steps = re.split(r"^\s*step\b[^\r\n]*", body_str, flags=re.MULTILINE)[1:]
        compiled_steps: List[dict] = []
        used_labels: Set[str] = set()
        first_zone: Optional[int] = None

        for raw_step in raw_steps:
            step = self._parse_step(raw_step, sticky_labels, used_labels)
            if step:
                compiled_steps.append(step)
                self.stats["steps_compiled"] += 1
                if not first_zone:
                    for g in step["goals"]:
                        if "map" in g:
                            first_zone = g["map"]
                            break

        if not compiled_steps:
            return None

        guide_def: dict = {
            "id": gid,
            "pack": "guides",
            "title": short_title,
            "category": category,
            "author": "TuWoW & Zygor",
            "version": 1,
            "steps": compiled_steps,
        }
        if folder:
            guide_def["folder"] = folder
        if faction in ("Alliance", "Horde"):
            guide_def["faction"] = faction
        if min_lvl:
            guide_def["minLevel"] = min_lvl
        if max_lvl:
            guide_def["maxLevel"] = max_lvl
        if first_zone:
            guide_def["zone"] = first_zone
        if next_id:
            guide_def["next"] = next_id
        if guide_races:
            guide_def["races"] = guide_races
        if guide_classes:
            guide_def["classes"] = guide_classes

        return guide_def

    def _parse_step(self, raw_step: str, sticky_labels: Set[str], used_labels: Set[str]) -> Optional[dict]:
        lines = [ln.strip() for ln in raw_step.splitlines() if ln.strip()]
        if not lines:
            return None

        step_label: Optional[str] = None
        step_only: Optional[dict] = None
        step_map: Optional[int] = None
        tips: List[str] = []
        goals: List[dict] = []

        context_npc_id: Optional[int] = None
        context_npc_name: Optional[str] = None
        context_npc_coords: Tuple[Optional[int], Optional[float], Optional[float]] = (None, None, None)
        had_purged_forever_content = False

        for line in lines:
            if line.startswith("'") or line.startswith("//") or line.startswith("path") or line.startswith("|mapmarker"):
                continue
            if line.startswith("stickystart") or line.startswith("stickystop") or line.startswith("defaultfor"):
                continue
            if "|popuptext" in line or "confirm begin" in line or "You''re all set" in line:
                continue

            # Mapa por defecto del paso
            if line.startswith("map "):
                zname = re.sub(r"/\d+$", "", line[4:].strip()).strip()
                if zname in FOREVER_ZONE_NAMES:
                    return None
                step_map = ZONE_TO_UIMAP.get(zname, step_map)
                continue

            # Etiqueta del paso
            lm = re.match(r'^label\s+"([^"]+)"', line)
            if lm:
                lbl = lm.group(1)
                if lbl not in used_labels:
                    step_label = lbl
                    used_labels.add(lbl)
                continue

            # Condición |only if de nivel de paso
            if line.startswith("|only if"):
                keep, parsed_only = self.parse_only(line[8:])
                if not keep:
                    return None
                if parsed_only:
                    step_only = parsed_only
                continue

            # Tip / Nota del paso
            if line.startswith("|tip "):
                tip_txt = line[5:]
                if "|only if" in tip_txt:
                    tip_txt, cond = tip_txt.split("|only if", 1)
                    keep, _ = self.parse_only(cond)
                    if not keep:
                        continue
                cleaned_tip = self.clean_text(tip_txt)
                if cleaned_tip and "Wrong Character Race" not in cleaned_tip:
                    tips.append(cleaned_tip)
                continue

            # Condición inline |only if
            line_only: Optional[dict] = None
            if "|only if" in line:
                base_line, cond_part = line.split("|only if", 1)
                keep, line_only = self.parse_only(cond_part)
                if not keep:
                    continue
                line = base_line.strip()

            # Coordenadas inline
            g_map, g_x, g_y, g_loc = self.parse_goto(line, step_map)
            if g_map == -1:
                had_purged_forever_content = True
                continue

            # Verificar si la línea referencia una misión `|q ID`
            qm = re.search(r"\|q\s+(\d+)(?:/(\d+))?", line)
            q_id = int(qm.group(1)) if qm else None
            q_oi = int(qm.group(2)) if (qm and qm.group(2)) else None
            is_future_or_meta_q = "|future" in line or "|trainer" in line or "|vendor" in line

            if q_id is not None and q_id not in self.db.valid_quests:
                if not is_future_or_meta_q:
                    self._record_purged_quest(q_id)
                    had_purged_forever_content = True
                    continue
                else:
                    q_id, q_oi = None, None

            # 1. talk NPC##ID
            tm = re.match(r"^talk\s+([^#|]+?)(?:##(\d+))?(?:\s*\||\s*$)", line)
            if tm:
                npc_name = self.clean_text(tm.group(1))
                npc_id = int(tm.group(2)) if tm.group(2) else None
                if npc_id and (npc_id >= 200000 or npc_id not in self.db.valid_npcs):
                    self._record_purged_npc(npc_id)
                    had_purged_forever_content = True
                    continue
                if npc_id:
                    context_npc_id = npc_id
                    context_npc_name = self.db.npcs[npc_id]["name"]
                    context_npc_coords = (g_map, g_x, g_y)
                continue

            # 2. accept Title##ID
            am = re.match(r"^accept\s+([^#|]+?)##(\d+)", line)
            if am:
                qid = int(am.group(2))
                if qid not in self.db.valid_quests:
                    self._record_purged_quest(qid)
                    had_purged_forever_content = True
                    continue
                q_info = self.db.quests[qid]
                goal = {
                    "t": "accept",
                    "quest": qid,
                    "title": q_info["title"] or self.clean_text(am.group(1)),
                }
                self._attach_quest_npc_and_coords(
                    goal, q_info.get("start_npc"), context_npc_id, context_npc_name, g_map, g_x, g_y, context_npc_coords
                )
                if line_only:
                    goal["only"] = line_only
                goals.append(goal)
                continue

            # 3. turnin Title##ID
            tim = re.match(r"^turnin\s+([^#|]+?)##(\d+)", line)
            if tim:
                qid = int(tim.group(2))
                if qid not in self.db.valid_quests:
                    self._record_purged_quest(qid)
                    had_purged_forever_content = True
                    continue
                q_info = self.db.quests[qid]
                goal = {
                    "t": "turnin",
                    "quest": qid,
                    "title": q_info["title"] or self.clean_text(tim.group(1)),
                }
                self._attach_quest_npc_and_coords(
                    goal, q_info.get("finish_npc"), context_npc_id, context_npc_name, g_map, g_x, g_y, context_npc_coords
                )
                if line_only:
                    goal["only"] = line_only
                goals.append(goal)
                continue

            # 4. kill [N] Target##ID
            km = re.match(r"^kill\s+(?:(\d+)\s+)?([^#|]+?)(?:##(\d+)\+?)?(?:\s*,|\s*\||\s*$)", line)
            if km:
                cnt = int(km.group(1)) if km.group(1) else None
                target_name = self.clean_text(km.group(2))
                npc_id = int(km.group(3)) if km.group(3) else None
                if npc_id and (npc_id >= 200000 or npc_id not in self.db.valid_npcs):
                    self._record_purged_npc(npc_id)
                    had_purged_forever_content = True
                    continue
                # Si es una línea `kill Mob##ID` sin cantidad ni |q ni |goto, es contexto para el `collect` siguiente
                if not cnt and not q_id and not g_map and "|confirm" not in line:
                    if npc_id:
                        context_npc_id = npc_id
                        context_npc_name = self.db.npcs[npc_id]["name"]
                    continue
                if npc_id and npc_id in self.db.npcs:
                    target_name = self.db.npcs[npc_id]["name"]
                goal = {"t": "kill", "target": target_name or "Enemy"}
                if npc_id:
                    goal["npc"] = npc_id
                if cnt and cnt > 1:
                    goal["count"] = cnt
                if q_id:
                    goal["quest"] = q_id
                    if q_oi and q_oi >= 1:
                        goal["oi"] = q_oi
                self._set_coords(goal, g_map, g_x, g_y, npc_id)
                if line_only:
                    goal["only"] = line_only
                goals.append(goal)
                continue

            # 5. collect / get / buy [N] Item##ID
            cm = re.match(r"^(collect|get|buy)\s+(?:(\d+)\s+)?([^#|]+?)##(\d+)", line)
            if cm:
                verb_raw = cm.group(1)
                cnt = int(cm.group(2)) if cm.group(2) else 1
                item_name = self.clean_text(cm.group(3))
                item_id = int(cm.group(4))
                if item_id >= 200000 or item_id not in self.db.valid_items:
                    self._record_purged_item(item_id)
                    had_purged_forever_content = True
                    continue
                item_name = self.db.items.get(item_id, item_name)
                goal = {
                    "t": "buy" if verb_raw == "buy" else "collect",
                    "item": item_id,
                    "itemName": item_name,
                }
                if cnt > 1:
                    goal["count"] = cnt
                if q_id and verb_raw != "buy":
                    goal["quest"] = q_id
                    if q_oi and q_oi >= 1:
                        goal["oi"] = q_oi
                self._set_coords(goal, g_map, g_x, g_y, context_npc_id)
                if line_only:
                    goal["only"] = line_only
                goals.append(goal)
                continue

            # 6. use Item##ID
            um = re.match(r"^use\s+([^#|]+?)##(\d+)", line)
            if um:
                item_id = int(um.group(2))
                if item_id == 6948:
                    # Se maneja en la línea Hearth to ...
                    continue
                if item_id >= 200000 or item_id not in self.db.valid_items:
                    self._record_purged_item(item_id)
                    had_purged_forever_content = True
                    continue
                goal = {
                    "t": "use",
                    "item": item_id,
                    "itemName": self.db.items.get(item_id, self.clean_text(um.group(1))),
                }
                self._set_coords(goal, g_map, g_x, g_y, None)
                goals.append(goal)
                continue

            # 7. trash Item##ID -> Omitir destruir Piedra de Hogar o ítems de Forever
            if line.startswith("trash "):
                had_purged_forever_content = True
                continue

            # 8. fpath / home / hearth / ding / skillmax / trainer / vendor
            fpm = re.match(r"^fpath\s+([^|]+)", line)
            if fpm:
                goal = {"t": "getfp", "location": self.clean_text(fpm.group(1)) or "Flight Master"}
                self._set_coords(goal, g_map, g_x, g_y, context_npc_id)
                goals.append(goal)
                continue

            hm = re.match(r"^home\s+([^|]+)", line)
            if hm:
                goal = {"t": "sethome", "location": self.clean_text(hm.group(1)) or "Inn"}
                self._set_coords(goal, g_map, g_x, g_y, context_npc_id)
                goals.append(goal)
                continue

            if line.startswith("Hearth to ") or line.startswith("hearth "):
                loc = self.clean_text(re.sub(r"^(Hearth to|hearth)\s+", "", line.split("|")[0]))
                goals.append({"t": "hearth", "location": loc or "Inn"})
                continue

            dm = re.search(r"\|ding\s+(\d+)", line)
            if dm:
                goals.append({"t": "level", "level": int(dm.group(1))})
                continue

            skm = re.search(r"\|skill(?:max)?\s+([A-Za-z ]+)\s*,\s*(\d+)", line)
            if skm:
                goals.append({"t": "skill", "skill": skm.group(1).strip(), "level": int(skm.group(2))})
                continue

            if "|trainer" in line:
                goal = {"t": "train"}
                if context_npc_id:
                    goal["npc"] = context_npc_id
                    goal["npcName"] = context_npc_name
                self._set_coords(goal, g_map, g_x, g_y, context_npc_id)
                if line_only:
                    goal["only"] = line_only
                goals.append(goal)
                continue

            if "|vendor" in line:
                goal = {"t": "vendor"}
                if context_npc_id:
                    goal["npc"] = context_npc_id
                    goal["npcName"] = context_npc_name
                self._set_coords(goal, g_map, g_x, g_y, context_npc_id)
                if line_only:
                    goal["only"] = line_only
                goals.append(goal)
                continue

            # 9. Línea con |q ID/OI genérica (goal / click / objective)
            if q_id and not is_future_or_meta_q:
                q_info = self.db.quests[q_id]
                head_txt = self.clean_text(line.split("|")[0])
                goal = {"t": "complete", "quest": q_id, "title": q_info["title"]}
                if head_txt and head_txt.lower() != q_info["title"].lower():
                    goal["note"] = head_txt
                self._set_coords(goal, g_map, g_x, g_y, context_npc_id)
                if line_only:
                    goal["only"] = line_only
                goals.append(goal)
                continue

            # 10. Línea de desplazamiento |goto sin misión
            if g_map and g_x and g_y and not had_purged_forever_content:
                head_txt = self.clean_text(line.split("|")[0])
                if head_txt.lower().startswith("click here"):
                    head_txt = g_loc or "Waypoint"
                goal = {"t": "goto", "map": g_map, "x": g_x, "y": g_y}
                if head_txt:
                    goal["text"] = head_txt
                if line_only:
                    goal["only"] = line_only
                goals.append(goal)

        # Si el paso solo tenía un `talk NPC` legítimo y nada fue purgado por Forever
        if not goals and context_npc_id and not had_purged_forever_content:
            goal = {"t": "talk", "npc": context_npc_id, "npcName": context_npc_name or "NPC"}
            self._set_coords(goal, context_npc_coords[0], context_npc_coords[1], context_npc_coords[2], context_npc_id)
            goals.append(goal)

        if not goals:
            if had_purged_forever_content:
                self.stats["steps_dropped_orphan"] += 1
            return None

        step_out: dict = {"goals": goals}
        if step_label:
            step_out["label"] = step_label
            if step_label in sticky_labels:
                step_out["along"] = True
        if tips:
            step_out["note"] = " ".join(tips)
        if step_only:
            step_out["only"] = step_only
        return step_out

    def _attach_quest_npc_and_coords(
        self,
        goal: dict,
        classic_npc_id: Optional[int],
        context_npc_id: Optional[int],
        context_npc_name: Optional[str],
        g_map: Optional[int],
        g_x: Optional[float],
        g_y: Optional[float],
        context_coords: Tuple[Optional[int], Optional[float], Optional[float]],
    ) -> None:
        npc_id = context_npc_id
        if not npc_id and classic_npc_id and classic_npc_id in self.db.valid_npcs:
            npc_id = classic_npc_id
            self.stats["reconciled_npcs"] += 1
        if npc_id and npc_id in self.db.npcs:
            goal["npc"] = npc_id
            goal["npcName"] = self.db.npcs[npc_id]["name"]
        elif context_npc_name:
            goal["npcName"] = context_npc_name

        m_id = g_map or context_coords[0]
        x = g_x if g_x is not None else context_coords[1]
        y = g_y if g_y is not None else context_coords[2]
        self._set_coords(goal, m_id, x, y, npc_id)

    def _set_coords(
        self,
        goal: dict,
        m_id: Optional[int],
        x: Optional[float],
        y: Optional[float],
        npc_id: Optional[int],
    ) -> None:
        if (m_id is None or x is None or y is None) and npc_id and npc_id in self.db.npcs:
            n_info = self.db.npcs[npc_id]
            if n_info.get("map") and n_info.get("x") is not None and n_info.get("y") is not None:
                m_id = n_info["map"]
                x = round(float(n_info["x"]), 2)
                y = round(float(n_info["y"]), 2)
                self.stats["reconciled_coords"] += 1
        if m_id and x is not None and y is not None and 0 <= x <= 100 and 0 <= y <= 100:
            goal["map"] = m_id
            goal["x"] = x
            goal["y"] = y
            goal["f"] = "e"

    def _record_purged_quest(self, qid: int) -> None:
        self.stats["purged_forever_quests"] += 1
        self._purged_quest_ids.add(qid)

    def _record_purged_npc(self, nid: int) -> None:
        self.stats["purged_forever_npcs"] += 1
        self._purged_npc_ids.add(nid)

    def _record_purged_item(self, iid: int) -> None:
        self.stats["purged_forever_items"] += 1
        self._purged_item_ids.add(iid)

    def _load_polestar_collectibles(self, seen_ids: Set[str]) -> List[dict]:
        """Extrae las guías de Collectibles (Mascotas/Monturas) y Exploration de Polestar_Guides depuradas."""
        if not os.path.exists(POLESTAR_GUIDES_FILE):
            return []
        with open(POLESTAR_GUIDES_FILE, "r", encoding="utf-8") as f:
            content = f.read()
        blocks = content.split("-- Source: ")[1:]
        kept_blocks: List[dict] = []
        for blk in blocks:
            if 'category = "Collectibles"' not in blk and 'category = "Exploration"' not in blk:
                continue
            # Descartar guías con misiones >= 90000 o mapas Forever (2482, 2521, 2524, 2548)
            if re.search(r"quest\s*=\s*9\d{4}", blk) or re.search(r"map\s*=\s*2[459]\d{2}", blk):
                self.stats["guides_skipped_forever"] += 1
                continue
            if re.search(r"item\s*=\s*2\d{5}", blk) or re.search(r"npc\s*=\s*2\d{5}", blk):
                self.stats["guides_skipped_forever"] += 1
                continue
            # Limpiar raza Skyborne de listas races
            blk = re.sub(r',\s*"Skyborne"', "", blk)
            blk = re.sub(r'"Skyborne"\s*,\s*', "", blk)
            if '"Skyborne"' in blk:
                continue
            m_id = re.search(r'id\s*=\s*"([^"]+)"', blk)
            if not m_id or m_id.group(1) in seen_ids:
                continue
            seen_ids.add(m_id.group(1))
            cat = "Collectibles" if 'category = "Collectibles"' in blk else "Exploration"
            self.stats["guides_compiled"] += 1
            self.stats["by_category"][cat] = self.stats["by_category"].get(cat, 0) + 1
            kept_blocks.append({"_raw_lua": "-- Source: " + blk.strip(), "category": cat})
        return kept_blocks

