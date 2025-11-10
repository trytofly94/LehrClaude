#!/bin/bash

# ==============================================================================
# Skill-Validierungs-Skript für Lehrkraft-Copilot-System
# ==============================================================================
# Validiert einen einzelnen Skill auf Vollständigkeit und Korrektheit
#
# Verwendung:
#   ./validate-skill.sh <skill-name>
#   ./validate-skill.sh 02-sachanalyse
# ==============================================================================

# Farben für Output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Lade zentrale Pfad-Konfiguration
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/CONFIG.sh"

# Verzeichnisse (aus CONFIG.sh)
SKILLS_DIR="{{SKILLS_PATH}}"

# ==============================================================================
# Funktionen
# ==============================================================================

print_header() {
    echo ""
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}  Skill-Validierung${NC}"
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
}

print_usage() {
    echo "Verwendung: $0 <skill-name>"
    echo ""
    echo "Beispiele:"
    echo "  $0 02-sachanalyse"
    echo "  $0 export-pdf"
    echo ""
    echo "Verfügbare Skills:"
    for skill_dir in "$SKILLS_DIR"/*/; do
        [ -d "$skill_dir" ] || continue
        skill_name=$(basename "$skill_dir")
        [[ "$skill_name" == .* ]] && continue
        echo "  - $skill_name"
    done
}

validate_yaml_frontmatter() {
    local skill_md="$1"
    local errors=0

    # Prüfe ob YAML Frontmatter existiert
    if ! grep -q "^---" "$skill_md"; then
        echo -e "${RED}✗${NC} Kein YAML Frontmatter gefunden"
        echo -e "   ${YELLOW}→${NC} SKILL.md muss mit '---' beginnen"
        return 1
    fi

    # Extrahiere YAML Frontmatter
    local yaml_content=$(sed -n '/^---$/,/^---$/p' "$skill_md" | sed '1d;$d')

    # Prüfe Pflichtfelder: name
    if ! echo "$yaml_content" | grep -q "^name:"; then
        echo -e "${RED}✗${NC} Pflichtfeld 'name' fehlt im YAML Frontmatter"
        errors=$((errors + 1))
    else
        local name_value=$(echo "$yaml_content" | grep "^name:" | sed 's/name: *//')
        echo -e "${GREEN}✓${NC} name: $name_value"

        # Validiere name Format
        if [[ ! "$name_value" =~ ^[a-z0-9-]+$ ]] && [[ ! "$name_value" =~ ^[A-Za-z] ]]; then
            echo -e "${YELLOW}⚠${NC} name sollte lowercase mit hyphens sein (außer für Display-Namen)"
        fi
    fi

    # Prüfe Pflichtfeld: description
    if ! echo "$yaml_content" | grep -q "^description:"; then
        echo -e "${RED}✗${NC} Pflichtfeld 'description' fehlt im YAML Frontmatter"
        errors=$((errors + 1))
    else
        local desc_line=$(echo "$yaml_content" | grep -A 10 "^description:" | head -1)
        local desc_length=$(echo "$yaml_content" | sed -n '/^description:/,/^[a-z]/p' | sed '$d' | wc -c | tr -d ' ')

        if [ "$desc_length" -lt 20 ]; then
            echo -e "${YELLOW}⚠${NC} description sehr kurz (< 20 Zeichen)"
        elif [ "$desc_length" -gt 1024 ]; then
            echo -e "${YELLOW}⚠${NC} description sehr lang (> 1024 Zeichen)"
        else
            echo -e "${GREEN}✓${NC} description: ${desc_length} Zeichen"
        fi
    fi

    # Optionale Felder prüfen
    if echo "$yaml_content" | grep -q "^version:"; then
        local version=$(echo "$yaml_content" | grep "^version:" | sed 's/version: *//')
        echo -e "${GREEN}✓${NC} version: $version"
    fi

    return $errors
}

validate_markdown_structure() {
    local skill_md="$1"
    local warnings=0

    echo ""
    echo -e "${BLUE}Markdown-Struktur:${NC}"

    # Prüfe auf wichtige Sektionen
    local sections=(
        "Overview:Übersicht"
        "Zweck:Zweck"
        "Anwendung:Anwendung"
        "Instructions:Anleitung"
        "Resources:Ressourcen"
        "Next Steps:Nächste Schritte"
    )

    for section_pair in "${sections[@]}"; do
        IFS=':' read -r en de <<< "$section_pair"
        if grep -q "^## $en" "$skill_md" || grep -q "^## $de" "$skill_md"; then
            echo -e "${GREEN}✓${NC} Sektion gefunden: ## $en / ## $de"
        fi
    done

    # Prüfe auf Code-Blöcke
    local code_blocks=$(grep -c '```' "$skill_md")
    if [ "$code_blocks" -gt 0 ]; then
        echo -e "${GREEN}✓${NC} Code-Beispiele vorhanden ($((code_blocks / 2)) Blöcke)"
    fi

    return $warnings
}

validate_resources() {
    local skill_dir="$1"
    local skill_name=$(basename "$skill_dir")

    echo ""
    echo -e "${BLUE}Ressourcen-Struktur:${NC}"

    # Prüfe resources/ Ordner
    if [ -d "$skill_dir/resources" ]; then
        echo -e "${GREEN}✓${NC} resources/ Ordner existiert"

        if [ -d "$skill_dir/resources/templates" ]; then
            echo -e "${GREEN}✓${NC} resources/templates/ vorhanden"
        fi

        if [ -d "$skill_dir/resources/data" ]; then
            echo -e "${GREEN}✓${NC} resources/data/ vorhanden"
        fi
    else
        echo -e "${YELLOW}⚠${NC} resources/ Ordner fehlt (empfohlen)"
    fi

    # Prüfe scripts/ Ordner (nur für Export-Skills)
    if [[ "$skill_name" == export-* ]]; then
        if [ -d "$skill_dir/scripts" ]; then
            echo -e "${GREEN}✓${NC} scripts/ Ordner existiert (Export-Skill)"
        else
            echo -e "${YELLOW}⚠${NC} scripts/ Ordner fehlt (empfohlen für Export-Skills)"
        fi
    fi
}

# ==============================================================================
# Hauptlogik
# ==============================================================================

# Prüfe Parameter
if [ $# -eq 0 ]; then
    print_header
    echo -e "${RED}Fehler: Kein Skill-Name angegeben${NC}"
    echo ""
    print_usage
    exit 1
fi

if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    print_header
    print_usage
    exit 0
fi

SKILL_NAME="$1"
SKILL_DIR="$SKILLS_DIR/$SKILL_NAME"
SKILL_MD="$SKILL_DIR/SKILL.md"

# Prüfe ob Skill existiert
if [ ! -d "$SKILL_DIR" ]; then
    print_header
    echo -e "${RED}✗ Skill nicht gefunden: $SKILL_NAME${NC}"
    echo ""
    print_usage
    exit 1
fi

# Prüfe ob SKILL.md existiert
if [ ! -f "$SKILL_MD" ]; then
    print_header
    echo -e "${RED}✗ SKILL.md nicht gefunden in: $SKILL_DIR${NC}"
    exit 1
fi

# Starte Validierung
print_header
echo -e "${BLUE}Validiere Skill:${NC} $SKILL_NAME"
echo -e "${BLUE}Pfad:${NC} $SKILL_DIR"
echo ""

# Zähler
errors=0
warnings=0

# Validierung: YAML Frontmatter
echo -e "${BLUE}YAML Frontmatter:${NC}"
validate_yaml_frontmatter "$SKILL_MD"
result=$?
if [ $result -gt 0 ]; then
    errors=$((errors + result))
fi

# Validierung: Markdown-Struktur
validate_markdown_structure "$SKILL_MD"
result=$?
warnings=$((warnings + result))

# Validierung: Ressourcen
validate_resources "$SKILL_DIR"

# Dateigrößen-Info
echo ""
echo -e "${BLUE}Dateigrößen:${NC}"
skill_md_size=$(wc -c < "$SKILL_MD")
skill_md_lines=$(wc -l < "$SKILL_MD")
echo -e "${GREEN}✓${NC} SKILL.md: $skill_md_size Bytes, $skill_md_lines Zeilen"

# Zusammenfassung
echo ""
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  Zusammenfassung${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo ""

if [ $errors -eq 0 ] && [ $warnings -eq 0 ]; then
    echo -e "${GREEN}✓ Skill ist vollständig und korrekt!${NC}"
    exit 0
elif [ $errors -eq 0 ]; then
    echo -e "${YELLOW}⚠ Skill ist gültig, aber mit $warnings Warnung(en)${NC}"
    exit 0
else
    echo -e "${RED}✗ Skill hat $errors Fehler${NC}"
    if [ $warnings -gt 0 ]; then
        echo -e "${YELLOW}⚠ Zusätzlich $warnings Warnung(en)${NC}"
    fi
    exit 1
fi
