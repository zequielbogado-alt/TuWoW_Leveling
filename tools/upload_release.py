import os
import subprocess
import urllib.request
import json
import mimetypes

ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
ZIP_PATH = os.path.join(ROOT_DIR, "dist", "TuWoW_Leveling.zip")
TAG_NAME = "v1.0.0"
RELEASE_NAME = "TuWoW Leveling v1.0.0 - Versión Oficial para TuWoW (3.3.5a)"

# Get GitHub token from git credential manager
p = subprocess.Popen(['git', 'credential', 'fill'], stdin=subprocess.PIPE, stdout=subprocess.PIPE, text=True)
out, _ = p.communicate('protocol=https\nhost=github.com\n')
token = None
for l in out.splitlines():
    if l.startswith('password='):
        token = l.split('=', 1)[1]

if not token:
    raise RuntimeError("No se pudo obtener el token de GitHub desde Git Credential Manager")

headers = {
    'Authorization': f'token {token}',
    'User-Agent': 'TuWoW-Leveling-Uploader',
    'Accept': 'application/vnd.github.v3+json'
}

# 1. Create Git tag and push
print(f"Verificando tag {TAG_NAME}...")
subprocess.run(['git', 'tag', '-a', TAG_NAME, '-m', f"Release {TAG_NAME}"], cwd=ROOT_DIR, capture_output=True)
print(f"Empujando tag {TAG_NAME} a origin...")
push_res = subprocess.run(['git', 'push', 'origin', TAG_NAME], cwd=ROOT_DIR, capture_output=True, text=True)
print("Git push tag:", push_res.stdout.strip() or push_res.stderr.strip())

# 2. Check if release already exists
get_req = urllib.request.Request(f'https://api.github.com/repos/zequielbogado-alt/TuWoW_Leveling/releases/tags/{TAG_NAME}', headers=headers)
release = None
try:
    with urllib.request.urlopen(get_req) as resp:
        release = json.loads(resp.read().decode())
        print(f"Release existente encontrado (ID: {release['id']})")
except urllib.error.HTTPError as e:
    if e.code == 404:
        print("Release no existe aún, se creará uno nuevo.")
    else:
        raise

if not release:
    body_md = """# 🌟 TuWoW Leveling v1.0.0

Complemento oficial de aventuras, guías de leveo inteligente (1-80), catálogo panorámico de mazmorras, radar de criaturas raras y cofres con visor 3D, y asistente de misiones diarias de Rasganorte (WotLK) para el cliente **TuWoW (3.3.5a)**.

### 🚀 Instalación Rápida
1. Descarga el archivo adjunto **`TuWoW_Leveling.zip`**.
2. Descomprime el archivo directamente en la carpeta de AddOns de tu cliente de juego:
   `World of Warcraft\\Interface\\AddOns\\`
3. Asegúrate de que la carpeta resultante sea:
   `World of Warcraft\\Interface\\AddOns\\TuWoW_Leveling\\TuWoW_Leveling.toc`
4. ¡Inicia sesión en el juego y disfruta de una experiencia de leveo totalmente fluida!
"""
    data = {
        "tag_name": TAG_NAME,
        "name": RELEASE_NAME,
        "body": body_md,
        "draft": False,
        "prerelease": False
    }
    post_req = urllib.request.Request(
        'https://api.github.com/repos/zequielbogado-alt/TuWoW_Leveling/releases',
        data=json.dumps(data).encode('utf-8'),
        headers=headers,
        method='POST'
    )
    with urllib.request.urlopen(post_req) as resp:
        release = json.loads(resp.read().decode())
        print(f"Release creado con éxito (ID: {release['id']})")

# 3. Check if asset already exists on this release
release_id = release['id']
assets = release.get('assets', [])
for a in assets:
    if a['name'] == 'TuWoW_Leveling.zip':
        print(f"Eliminando asset previo '{a['name']}' (ID: {a['id']})...")
        del_req = urllib.request.Request(a['url'], headers=headers, method='DELETE')
        urllib.request.urlopen(del_req).close()

# 4. Upload TuWoW_Leveling.zip
upload_url = release['upload_url'].split('{')[0] + f"?name=TuWoW_Leveling.zip"
print(f"Subiendo {ZIP_PATH} ({os.path.getsize(ZIP_PATH)/(1024*1024):.2f} MB) a {upload_url}...")

with open(ZIP_PATH, 'rb') as fp:
    zip_bytes = fp.read()

up_headers = {
    'Authorization': f'token {token}',
    'User-Agent': 'TuWoW-Leveling-Uploader',
    'Content-Type': 'application/zip',
    'Content-Length': str(len(zip_bytes))
}

up_req = urllib.request.Request(upload_url, data=zip_bytes, headers=up_headers, method='POST')
with urllib.request.urlopen(up_req) as resp:
    asset_data = json.loads(resp.read().decode())
    print("\n✅ Subida completada con éxito!")
    print("URL de descarga directa del asset:")
    print(" ", asset_data.get('browser_download_url'))
