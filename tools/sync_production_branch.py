#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
sync_production_branch.py - Sincroniza la rama 'produccion' de GitHub
con los archivos funcionales limpios del addon para la plataforma de TuWoW.

Excluye herramientas de desarrollo, scripts, documentación interna y zips.
"""

import os
import sys
import shutil
import subprocess
import tempfile
from pathlib import Path

ADDON_DIRS = [
    "Assets",
    "Core",
    "Dungeons",
    "Gear",
    "Guides",
    "Locales",
    "Lookup",
    "Media",
    "Nav",
    "QoL",
    "Quests",
    "Rares",
    "Theme",
    "UI",
]

ADDON_FILES = [
    "TuWoW_Leveling.toc",
    "README.md",
    "LEEME.txt",
]

FORBIDDEN_PATTERNS = [
    "tools",
    "dist",
    ".gemini",
    "GEMINI.md",
    "PLAN_DE_ACCION.md",
    "PLAN_REDISEÑO_UI.md",
    "CONTEXTO_TECNICO.md",
    ".gitignore",
]


def run_cmd(cmd, cwd=None, check=True):
    print(f">> Running: {' '.join(cmd) if isinstance(cmd, list) else cmd}")
    res = subprocess.run(
        cmd,
        cwd=cwd,
        shell=isinstance(cmd, str),
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace"
    )
    if check and res.returncode != 0:
        print(f"ERROR: Command failed with code {res.returncode}")
        print("STDOUT:", res.stdout)
        print("STDERR:", res.stderr)
        sys.exit(res.returncode)
    return res


def main():
    repo_root = Path(__file__).resolve().parent.parent
    os.chdir(repo_root)

    print(f"=== Sincronizando rama 'produccion' para TuWoW ===")
    print(f"Directorio del repositorio: {repo_root}")

    # 1. Asegurar que estamos en main y limpios
    status = run_cmd(["git", "status", "--porcelain"], cwd=repo_root)
    if status.stdout.strip():
        print("ADVERTENCIA: Hay cambios sin commitear en el directorio de trabajo:")
        print(status.stdout)

    temp_dir = tempfile.mkdtemp(prefix="tuwow_prod_worktree_")
    print(f"Creando worktree temporal en: {temp_dir}")

    try:
        # 2. Agregar worktree para la rama 'produccion'
        # Usamos -B para crear o resetear la rama produccion basada en HEAD
        run_cmd(["git", "worktree", "add", "-B", "produccion", temp_dir], cwd=repo_root)

        # 3. Limpiar todo el contenido del worktree excepto .git
        print("Limpiando directorio del worktree temporal...")
        for item in os.listdir(temp_dir):
            if item == ".git":
                continue
            item_path = os.path.join(temp_dir, item)
            if os.path.isdir(item_path):
                shutil.rmtree(item_path)
            else:
                os.remove(item_path)

        # 4. Copiar únicamente las carpetas y archivos autorizados
        print("Copiando carpetas y archivos funcionales del addon...")
        for d in ADDON_DIRS:
            src = repo_root / d
            dst = Path(temp_dir) / d
            if src.exists():
                shutil.copytree(src, dst)
                print(f"  + Carpeta: {d}/")
            else:
                print(f"  ! AVISO: Carpeta {d} no encontrada en raíz.")

        for f in ADDON_FILES:
            src = repo_root / f
            dst = Path(temp_dir) / f
            if src.exists():
                shutil.copy2(src, dst)
                print(f"  + Archivo: {f}")
            else:
                print(f"  ! AVISO: Archivo {f} no encontrado en raíz.")

        # 5. Verificación estricta de seguridad
        print("Verificando que no existan archivos prohibidos en 'produccion'...")
        for bad in FORBIDDEN_PATTERNS:
            bad_path = Path(temp_dir) / bad
            if bad_path.exists():
                raise RuntimeError(f"SEGURIDAD: Archivo o carpeta prohibida detectada en produccion: {bad}")

        toc_path = Path(temp_dir) / "TuWoW_Leveling.toc"
        if not toc_path.exists():
            raise RuntimeError("ERROR: No se encontró TuWoW_Leveling.toc en la raíz de produccion")
        
        toc_text = toc_path.read_text(encoding="utf-8", errors="replace")
        if "30300" not in toc_text:
            raise RuntimeError("ERROR: TuWoW_Leveling.toc no contiene la versión 30300")

        # 6. Git commit y push en la rama produccion
        print("Generando commit en rama 'produccion'...")
        run_cmd(["git", "add", "-A"], cwd=temp_dir)

        diff = run_cmd(["git", "diff", "--cached", "--name-only"], cwd=temp_dir)
        if not diff.stdout.strip():
            print("No hay cambios que commitear en 'produccion'. La rama ya está al día.")
        else:
            run_cmd(["git", "commit", "-m", "release(produccion): sync clean functional addon for TuWoW website"], cwd=temp_dir)

        print("Empujando rama 'produccion' a origin...")
        run_cmd(["git", "push", "-u", "origin", "produccion", "--force"], cwd=temp_dir)
        print(">>> ¡Rama 'produccion' empujada exitosamente a GitHub! <<<")

    finally:
        print("Limpiando worktree temporal...")
        run_cmd(["git", "worktree", "remove", temp_dir, "--force"], cwd=repo_root, check=False)
        run_cmd(["git", "worktree", "prune"], cwd=repo_root, check=False)
        shutil.rmtree(temp_dir, ignore_errors=True)

    print("Verificando estado final del repositorio principal:")
    run_cmd(["git", "status"], cwd=repo_root)
    print("\nProceso de sincronización completado con éxito.")


if __name__ == "__main__":
    main()

