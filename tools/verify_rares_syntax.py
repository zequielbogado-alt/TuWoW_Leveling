# tools/verify_rares_syntax.py
import re

files_to_check = [
    r'c:\TuWoW\TuWoW-Client\Interface\AddOns\TuWoW_Leveling\Rares\RareData.lua',
    r'c:\TuWoW\TuWoW-Client\Interface\AddOns\TuWoW_Leveling\Rares\Rares.lua',
    r'c:\TuWoW\TuWoW-Client\Interface\AddOns\TuWoW_Leveling\Rares\Pins.lua',
    r'c:\TuWoW\TuWoW-Client\Interface\AddOns\TuWoW_Leveling\Rares\View.lua',
    r'c:\TuWoW\TuWoW-Client\Interface\AddOns\TuWoW_Leveling\UI\Thanks.lua',
]

def check_file(path):
    with open(path, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
    lines = content.split('\n')
    line_count = len(lines)
    
    # Check braces balance
    open_curly = content.count('{')
    close_curly = content.count('}')
    open_paren = content.count('(')
    close_paren = content.count(')')
    open_bracket = content.count('[')
    close_bracket = content.count(']')
    
    # Check string quotes balance roughly
    # Exclude escaped quotes
    unquoted = re.sub(r'\\.', '', content)
    double_quotes = unquoted.count('"')
    
    print(f"File: {path}")
    print(f"  Lines: {line_count} (Limit < 1000: {'PASS' if line_count < 1000 else 'FAIL'})")
    print(f"  Braces {{}}: {open_curly} vs {close_curly} ({'OK' if open_curly == close_curly else 'MISMATCH'})")
    print(f"  Parens (): {open_paren} vs {close_paren} ({'OK' if open_paren == close_paren else 'MISMATCH'})")
    print(f"  Brackets []: {open_bracket} vs {close_bracket} ({'OK' if open_bracket == close_bracket else 'MISMATCH'})")
    print(f"  Quotes \"\": {double_quotes} ({'EVEN' if double_quotes % 2 == 0 else 'UNEVEN'})")

for p in files_to_check:
    check_file(p)

