import os
import re
import sys

def strip_lua(code):
    # Remove block comments --[[ ... ]] and [=[ ... ]=]
    code = re.sub(r'--\[(=*)\[.*?\]\1\]', '', code, flags=re.DOTALL)
    # Remove single line comments
    code = re.sub(r'--[^\n]*', '', code)
    # Remove block strings
    code = re.sub(r'\[(=*)\[.*?\]\1\]', '""', code, flags=re.DOTALL)
    # Remove single/double quoted strings
    code = re.sub(r'"(?:[^"\\]|\\.)*"', '""', code)
    code = re.sub(r"'(?:[^'\\]|\\.)*'", "''", code)
    return code

def audit_syntax():
    print("=== 1. AUDITING LUA SYNTAX & BLOCK BALANCE ===")
    imbalance = []
    total = 0
    for root, dirs, files in os.walk('.'):
        if '.git' in root or 'tools' in root: continue
        for f in files:
            if not f.endswith('.lua'): continue
            total += 1
            fpath = os.path.join(root, f)
            with open(fpath, 'r', encoding='utf-8', errors='ignore') as fl:
                raw = fl.read()
            clean = strip_lua(raw)
            tokens = re.findall(r'\b(function|then|do|repeat|end|until)\b', clean)
            depth = 0
            for idx, t in enumerate(tokens):
                if t in ['function', 'then', 'do', 'repeat']:
                    depth += 1
                elif t in ['end', 'until']:
                    depth -= 1
                if depth < 0:
                    imbalance.append((fpath, f'Negative depth at token {idx} ({t})'))
                    break
            if depth != 0 and fpath not in [x[0] for x in imbalance]:
                imbalance.append((fpath, f'Unclosed block: depth={depth} at EOF'))

    print(f"Total lua files scanned: {total}")
    print(f"Syntax/block balance issues: {len(imbalance)}")
    for p, err in imbalance[:15]:
        print(f"  [ERROR] {p}: {err}")
    return len(imbalance) == 0

def audit_guides():
    print("\n=== 2. AUDITING COMPILED GUIDES ===")
    guide_dir = 'Guides'
    guide_files = [f for f in os.listdir(guide_dir) if f.endswith('.lua')]
    print(f"Total guide/data files in Guides/: {len(guide_files)}")
    
    forever_ids = []
    registered_guides = 0
    guides_by_cat = {}
    guides_by_fac = {}
    all_guide_ids = {}
    next_links = []
    
    for f in guide_files:
        fpath = os.path.join(guide_dir, f)
        with open(fpath, 'r', encoding='utf-8', errors='ignore') as fl:
            content = fl.read()
        
        # Match RegisterGuide
        matches = re.finditer(r'RegisterGuide\s*\(\s*\{\s*id\s*=\s*["\']([^"\']+)["\']', content)
        for m in matches:
            registered_guides += 1
            gid = m.group(1)
            all_guide_ids[gid] = f
        
        # Check categories
        for cat in re.findall(r'category\s*=\s*["\']([^"\']+)["\']', content):
            guides_by_cat[cat] = guides_by_cat.get(cat, 0) + 1
        
        # Check factions
        for fac in re.findall(r'faction\s*=\s*["\']([^"\']+)["\']', content):
            guides_by_fac[fac] = guides_by_fac.get(fac, 0) + 1

        # Check next chains
        for nxt in re.findall(r'next\s*=\s*["\']([^"\']+)["\']', content):
            next_links.append((f, nxt))
        
        # Check for Forever custom IDs >= 90000 in quest goals
        if not f.startswith('QDB_') and not f.startswith('Names_'):
            custom_q = re.findall(r'(?:\|q\s*|quest\s*=\s*|q\s*=\s*)(9\d{4})', content)
            if custom_q:
                forever_ids.append((f, custom_q))

    print(f"Total Registered Guides: {registered_guides}")
    print(f"Unique Guide IDs: {len(all_guide_ids)}")
    print(f"Categories: {guides_by_cat}")
    print(f"Factions: {guides_by_fac}")
    print(f"Forever custom IDs found (>= 90000): {len(forever_ids)}")
    
    broken_next = []
    for f, nxt in next_links:
        if nxt not in all_guide_ids:
            broken_next.append((f, nxt))
    print(f"Broken 'next' links: {len(broken_next)}")
    for f, nxt in broken_next[:10]:
        print(f"  [WARN] In {f}: next='{nxt}' does not exist")

def audit_client_apis():
    print("\n=== 3. AUDITING 3.3.5a COMPATIBILITY & RETAIL APIS ===")
    
    # Check for direct calls to C_ namespaces not routed through ns.Compat
    # (Excluding Core/Compat*.lua which define the shims)
    c_namespace_calls = []
    
    patterns = {
        'C_QuestLog': re.compile(r'\bC_QuestLog\.([A-Za-z0-9_]+)'),
        'C_Map': re.compile(r'\bC_Map\.([A-Za-z0-9_]+)'),
        'C_Timer': re.compile(r'\bC_Timer\.([A-Za-z0-9_]+)'),
        'C_Spell': re.compile(r'\bC_Spell\.([A-Za-z0-9_]+)'),
        'C_GossipInfo': re.compile(r'\bC_GossipInfo\.([A-Za-z0-9_]+)'),
        'C_Item': re.compile(r'\bC_Item\.([A-Za-z0-9_]+)'),
        'SetEnabled': re.compile(r':SetEnabled\('),
        'SetObeyStepOnDrag': re.compile(r':SetObeyStepOnDrag\('),
        'BackdropTemplate': re.compile(r'BackdropTemplate'),
    }
    
    findings = {k: [] for k in patterns}
    
    for root, dirs, files in os.walk('.'):
        if '.git' in root or 'tools' in root: continue
        for f in files:
            if not f.endswith('.lua'): continue
            fpath = os.path.join(root, f)
            # Skip Compat files that implement the polyfills
            if 'Compat' in f: continue
            
            with open(fpath, 'r', encoding='utf-8', errors='ignore') as fl:
                for line_no, line in enumerate(fl, 1):
                    line_clean = line.strip()
                    if line_clean.startswith('--'): continue
                    for name, pat in patterns.items():
                        m = pat.search(line)
                        if m:
                            findings[name].append((fpath, line_no, line_clean))

    for name, matches in findings.items():
        print(f"Occurrences of {name} outside Compat: {len(matches)}")
        if matches and name in ['SetEnabled', 'SetObeyStepOnDrag', 'BackdropTemplate']:
            for fp, ln, code in matches[:5]:
                print(f"  {fp}:{ln} -> {code}")

if __name__ == '__main__':
    audit_syntax()
    audit_guides()
    audit_client_apis()
