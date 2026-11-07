import os
import zipfile
import shutil

ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
DIST_DIR = os.path.join(ROOT_DIR, "dist")
ZIP_NAME = "TuWoW_Leveling.zip"
ZIP_PATH = os.path.join(DIST_DIR, ZIP_NAME)

os.makedirs(DIST_DIR, exist_ok=True)

# Addon runtime directories
INCLUDE_DIRS = [
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

INCLUDE_FILES = [
    "TuWoW_Leveling.toc",
]

# Read README.md to generate LEEME.txt
readme_path = os.path.join(ROOT_DIR, "README.md")
with open(readme_path, "r", encoding="utf-8") as f:
    readme_content = f.read()

# Filter rules
EXCLUDE_EXTENSIONS = {".md", ".py", ".tmp", ".bak", ".git"}
EXCLUDE_DIRS = {".git", "tools", "dist", ".gemini"}

print(f"Creando paquete release: {ZIP_PATH} ...")

with zipfile.ZipFile(ZIP_PATH, "w", zipfile.ZIP_DEFLATED) as zf:
    # 1. Add LEEME.txt inside TuWoW_Leveling/
    zf.writestr("TuWoW_Leveling/LEEME.txt", readme_content)
    print(" + TuWoW_Leveling/LEEME.txt")

    # 2. Add root files
    for fname in INCLUDE_FILES:
        fpath = os.path.join(ROOT_DIR, fname)
        if os.path.isfile(fpath):
            arcname = f"TuWoW_Leveling/{fname}"
            zf.write(fpath, arcname)
            print(f" + {arcname}")

    # 3. Add directory trees
    count = 0
    for dname in INCLUDE_DIRS:
        dpath = os.path.join(ROOT_DIR, dname)
        if not os.path.isdir(dpath):
            continue
        for root, dirs, files in os.walk(dpath):
            # Prune excluded dirs
            dirs[:] = [d for d in dirs if d not in EXCLUDE_DIRS]
            for file in sorted(files):
                ext = os.path.splitext(file)[1].lower()
                if ext in EXCLUDE_EXTENSIONS or file.startswith("."):
                    continue
                file_full = os.path.join(root, file)
                rel_path = os.path.relpath(file_full, ROOT_DIR).replace("\\", "/")
                arcname = f"TuWoW_Leveling/{rel_path}"
                zf.write(file_full, arcname)
                count += 1

print(f"\nEmpaquetados exitosamente {count + len(INCLUDE_FILES) + 1} archivos.")
size_mb = os.path.getsize(ZIP_PATH) / (1024 * 1024)
print(f"Tamaño final de {ZIP_NAME}: {size_mb:.2f} MB")

