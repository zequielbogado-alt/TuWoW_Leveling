#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
TuWoW_Leveling — tools/convert_zygor_guides.py
Script principal del compilador de guías (Zygor Forever -> TuWoW Classic 3.3.5a).
Ejecuta la depuración contra Questie-335, escribe archivos .lua modulares (< 800 líneas)
en Guides/, genera Guides/Guides.xml y produce el reporte tools/conversion_report.md.
"""

import os
import shutil
from typing import Any, Dict, List
from classic_db import ClassicDatabase
from zygor_parser import ZygorCompiler

WORKSPACE_DIR = r"c:\TuWoW\TuWoW-Client\Interface\AddOns\TuWoW_Leveling"
GUIDES_DIR = os.path.join(WORKSPACE_DIR, "Guides")
REPORT_PATH = os.path.join(WORKSPACE_DIR, "tools", "conversion_report.md")


def lua_str(s: str) -> str:
    escaped = (
        s.replace("\\", "\\\\")
        .replace('"', '\\"')
        .replace("\r", "")
        .replace("\n", "\\n")
    )
    return f'"{escaped}"'


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
    if "_raw_lua" in g:
        return g["_raw_lua"].splitlines()

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
    if "_raw_lua" in g or len(g.get("steps", [])) <= max_steps_per_part:
        return [g]
    steps = g["steps"]
    parts: List[Dict[str, Any]] = []
    total_parts = (len(steps) + max_steps_per_part - 1) // max_steps_per_part
    orig_next = g.get("next")
    for idx in range(total_parts):
        chunk = steps[idx * max_steps_per_part : (idx + 1) * max_steps_per_part]
        part = dict(g)
        part_num = idx + 1
        part["id"] = g["id"] if part_num == 1 else f"{g['id']}-part-{part_num}"
        if total_parts > 1:
            part["title"] = f"{g['title']} (Parte {part_num}/{total_parts})"
        if part_num < total_parts:
            part["next"] = f"{g['id']}-part-{part_num + 1}"
        elif orig_next:
            part["next"] = orig_next
        part["steps"] = chunk
        parts.append(part)
    return parts


def write_guide_batches(guides: List[Dict[str, Any]], max_lines: int = 760) -> List[str]:
    groups: Dict[str, List[Dict[str, Any]]] = {}
    for raw_g in guides:
        for g in split_large_guide(raw_g):
            cat = g.get("category", "Leveling")
            fac = g.get("faction")
            if cat == "Leveling":
                bucket = f"Leveling_{fac}" if fac in ("Alliance", "Horde") else "Leveling_Common"
            elif cat in ("Dungeons", "Professions", "Reputation", "Events", "Class"):
                bucket = cat
            else:
                bucket = "Extras"
            groups.setdefault(bucket, []).append(g)

    generated_files: List[str] = []
    for bucket, glist in groups.items():
        file_idx = 0
        cur_lines: List[str] = []

        def flush_bucket() -> None:
            nonlocal file_idx, cur_lines
            if not cur_lines:
                return
            file_idx += 1
            fname = f"{bucket}_{file_idx:02d}.lua"
            fpath = os.path.join(GUIDES_DIR, fname)
            with open(fpath, "w", encoding="utf-8", newline="\n") as out:
                out.write(f"-- TuWoW_Leveling — Guides/{fname}\n")
                out.write("-- Compilado desde ZygorGuidesViewerForever y depurado para TuWoW 3.3.5a.\n\n")
                for ln in cur_lines:
                    out.write(ln + "\n")
            generated_files.append(fname)
            cur_lines = []

        for g in glist:
            g_lines = format_guide_lua(g)
            if cur_lines and (len(cur_lines) + len(g_lines) + 4 > max_lines):
                flush_bucket()
            cur_lines.extend(g_lines)
            cur_lines.append("")
        flush_bucket()

    return generated_files


def main() -> None:
    if os.path.exists(GUIDES_DIR):
        shutil.rmtree(GUIDES_DIR)
    os.makedirs(GUIDES_DIR, exist_ok=True)

    print("[1/4] Cargando base de datos Classic 3.3.5a (Questie-335 + Polestar_QuestDB)...")
    db = ClassicDatabase()
    db.load_all()
    print(
        f"      Misiones válidas: {len(db.valid_quests)} | NPCs: {len(db.valid_npcs)} | "
        f"Ítems: {len(db.valid_items)} | Objetos: {len(db.valid_objects)}"
    )

    print("[2/4] Exportando QuestDB 3.3.5a y Traducciones esES modulares (< 800 líneas)...")
    qdb_files = db.export_questdb_chunks(os.path.join(GUIDES_DIR, "QuestDB"), max_lines=740)
    name_files = db.export_spanish_names(os.path.join(GUIDES_DIR, "Names"), max_lines=740)

    print("[3/4] Compilando y depurando guías de Zygor Forever -> TuWoW 3.3.5a...")
    compiler = ZygorCompiler(db)
    guides = compiler.compile_all_zygor_files()
    guide_files = write_guide_batches(guides, max_lines=740)

    # Escribir Pack.lua
    pack_path = os.path.join(GUIDES_DIR, "Pack.lua")
    with open(pack_path, "w", encoding="utf-8", newline="\n") as out:
        out.write("-- TuWoW_Leveling — Guides/Pack.lua\n")
        out.write("local ADDON = ...\n\n")
        out.write(
            'Polestar.RegisterPack({\n'
            '\taddon = ADDON,\n'
            '\tid = "guides",\n'
            '\tformat = 8,\n'
            '\ttitle = "TuWoW Leveling Guides (Zygor 1-60)",\n'
            '\tauthor = "TuWoW & Zygor",\n'
            '\tversion = "1.0.0",\n'
            '\tlicense = "All Rights Reserved",\n'
            '\tnotes = "Catálogo de guías 1-60 de Zygor depurado para TuWoW 3.3.5a (sin misiones exclusivas de Forever).",\n'
            '})\n'
        )

    # Escribir Guides/Guides.xml
    xml_path = os.path.join(GUIDES_DIR, "Guides.xml")
    with open(xml_path, "w", encoding="utf-8", newline="\n") as out:
        out.write('<Ui xmlns="http://www.blizzard.com/wow/ui/">\n')
        out.write('\t<Script file="Pack.lua"/>\n')
        for f in qdb_files:
            out.write(f'\t<Script file="{f}"/>\n')
        for f in name_files:
            out.write(f'\t<Script file="{f}"/>\n')
        for f in guide_files:
            out.write(f'\t<Script file="{f}"/>\n')
        out.write("</Ui>\n")

    # Escribir reporte de auditoría tools/conversion_report.md
    st = compiler.stats
    with open(REPORT_PATH, "w", encoding="utf-8", newline="\n") as rep:
        rep.write("# Reporte de Auditoría de Conversión — `Zygor Forever` $\\rightarrow$ `TuWoW_Leveling` (3.3.5a)\n\n")
        rep.write("## 1. Resumen General de Compilación\n\n")
        rep.write(f"- **Guías totales compiladas para TuWoW 3.3.5a:** `{st['guides_compiled']}`\n")
        rep.write(f"- **Pasos totales compilados y validados:** `{st['steps_compiled']}`\n")
        rep.write(f"- **Guías exclusivas de WoW Forever/SoD omitidas:** `{st['guides_skipped_forever']}`\n")
        rep.write(f"- **Pasos huérfanos descartados (100% Forever):** `{st['steps_dropped_orphan']}`\n")
        rep.write(f"- **Archivos modulares generados en `Guides/` (< 800 líneas c/u):** `{1 + len(qdb_files) + len(name_files) + len(guide_files)}`\n\n")
        rep.write("## 2. Desglose de Guías por Categoría\n\n")
        rep.write("| Categoría | Guías Compiladas |\n| :--- | :---: |\n")
        for cat, cnt in sorted(st["by_category"].items()):
            rep.write(f"| **{cat}** | `{cnt}` |\n")
        rep.write("\n## 3. Auditoría de Purga de Contenido Exclusivo de WoW Forever\n\n")
        rep.write(
            f"- **Referencias a misiones de Forever eliminadas (`ID >= 90000` o inexistentes en 3.3.5a):** "
            f"`{st['purged_forever_quests']}` (`{len(compiler._purged_quest_ids)}` IDs únicos)\n"
        )
        rep.write(
            f"- **Referencias a NPCs de Forever eliminadas (`ID >= 200000` o inexistentes en 3.3.5a):** "
            f"`{st['purged_forever_npcs']}` (`{len(compiler._purged_npc_ids)}` IDs únicos)\n"
        )
        rep.write(
            f"- **Referencias a ítems de Forever eliminadas (`ID >= 200000` o inexistentes en 3.3.5a):** "
            f"`{st['purged_forever_items']}` (`{len(compiler._purged_item_ids)}` IDs únicos)\n"
        )
        rep.write(f"- **NPCs reconciliados con `Questie-335` (`startedBy`/`finishedBy`):** `{st['reconciled_npcs']}`\n")
        rep.write(f"- **Coordenadas reconciliadas con `Questie-335` / `Polestar_QuestDB`:** `{st['reconciled_coords']}`\n")

    print(
        f"[4/4] ¡Completado! Guías compiladas: {st['guides_compiled']} | "
        f"Archivos de guías: {len(guide_files)} | QDB: {len(qdb_files)} | Names: {len(name_files)}"
    )


if __name__ == "__main__":
    main()

