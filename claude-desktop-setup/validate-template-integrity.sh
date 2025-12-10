#!/bin/bash

# ==============================================================================
# Template-Integritäts-Validierung für LehrClaude
# ==============================================================================
# Erkennt manuelle Edits an generierten Dateien
# ==============================================================================

# Farben
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Pfade
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(dirname "$SCRIPT_DIR")"

# ==============================================================================
# Funktionen
# ==============================================================================

print_header() {
    echo ""
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}  Template-Integritäts-Prüfung${NC}"
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
}

# Prüfe ob generierte Datei neuer ist als Template
check_timestamp() {
    local template_file="$1"
    local generated_file="${template_file%.template}"
    local errors=0

    # Überspringe wenn generierte Datei nicht existiert
    if [ ! -f "$generated_file" ]; then
        return 0
    fi

    # Vergleiche Zeitstempel
    if [ "$generated_file" -nt "$template_file" ]; then
        echo -e "${RED}✗${NC} $(basename "$generated_file") ist neuer als Template"
        echo -e "   ${YELLOW}→ Möglicherweise wurde die Datei manuell bearbeitet${NC}"
        echo -e "   ${YELLOW}→ Template: $(basename "$template_file")${NC}"
        ((errors++))
    else
        echo -e "${GREEN}✓${NC} $(basename "$generated_file")"
    fi

    return $errors
}

# Prüfe auf unreplaced Platzhalter in generierter Datei
check_placeholders() {
    local generated_file="$1"
    local errors=0

    if [ ! -f "$generated_file" ]; then
        return 0
    fi

    # Suche nach Platzhaltern: {{VARIABLE}}
    local placeholders=$(grep -o '{{[A-Z_]*}}' "$generated_file" 2>/dev/null || true)

    if [ -n "$placeholders" ]; then
        echo -e "${RED}✗${NC} $(basename "$generated_file"): Unreplaced Platzhalter gefunden"
        echo "$placeholders" | sort -u | sed 's/^/   /' | head -5
        ((errors++))
    fi

    return $errors
}

# ==============================================================================
# Hauptlogik
# ==============================================================================

print_header

# Zähler
total=0
errors=0
warnings=0

# 1. Prüfe Zeitstempel aller Template-Dateien
echo -e "${BLUE}1. Zeitstempel-Prüfung${NC}"
echo ""

# Finde alle .template Dateien
while IFS= read -r -d '' template_file; do
    ((total++))
    check_timestamp "$template_file"
    result=$?
    errors=$((errors + result))
done < <(find "$SCRIPT_DIR" -name "*.template" -type f -print0)

if [ $errors -eq 0 ]; then
    echo ""
    echo -e "${GREEN}✓ Alle generierten Dateien haben korrekte Zeitstempel${NC}"
fi

echo ""

# 2. Prüfe auf unreplaced Platzhalter
echo -e "${BLUE}2. Platzhalter-Prüfung${NC}"
echo ""

placeholder_errors=0

# Prüfe CONFIG.sh
if [ -f "$SCRIPT_DIR/CONFIG.sh" ]; then
    check_placeholders "$SCRIPT_DIR/CONFIG.sh"
    placeholder_errors=$((placeholder_errors + $?))
fi

# Prüfe MCP_CONFIG.json
if [ -f "$SCRIPT_DIR/MCP_CONFIG.json" ]; then
    check_placeholders "$SCRIPT_DIR/MCP_CONFIG.json"
    placeholder_errors=$((placeholder_errors + $?))
fi

# Prüfe alle PROJECT_INSTRUCTIONS.md
for project_dir in "$SCRIPT_DIR"/projekt-*/; do
    [ ! -d "$project_dir" ] && continue
    project_file="$project_dir/PROJECT_INSTRUCTIONS.md"

    if [ -f "$project_file" ]; then
        check_placeholders "$project_file"
        placeholder_errors=$((placeholder_errors + $?))
    fi
done

# Prüfe validate-skill.sh und package-skills.sh
for script in "$SCRIPT_DIR/validate-skill.sh" "$SCRIPT_DIR/package-skills.sh"; do
    if [ -f "$script" ]; then
        check_placeholders "$script"
        placeholder_errors=$((placeholder_errors + $?))
    fi
done

if [ $placeholder_errors -eq 0 ]; then
    echo -e "${GREEN}✓ Keine unreplaced Platzhalter gefunden${NC}"
fi

errors=$((errors + placeholder_errors))

# ==============================================================================
# Zusammenfassung
# ==============================================================================

echo ""
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  Zusammenfassung${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo ""

echo "Statistik:"
echo "  Geprüfte Templates: $total"

if [ $errors -eq 0 ]; then
    echo -e "  ${GREEN}Fehler:             0${NC}"
    echo ""
    echo -e "${GREEN}✓ Template-Integrität OK${NC}"
    echo ""
    exit 0
else
    echo -e "  ${RED}Fehler:             $errors${NC}"
    echo ""
    echo -e "${RED}✗ Template-Integritätsprobleme gefunden${NC}"
    echo ""
    echo -e "${BLUE}Mögliche Ursachen:${NC}"
    echo ""
    echo "1. ${YELLOW}Manuelle Bearbeitung generierter Dateien${NC}"
    echo "   Lösung: Bearbeite Template-Datei, nicht generierte Datei"
    echo "   Auto-Fix: ./regenerate-from-templates.sh"
    echo ""
    echo "2. ${YELLOW}setup-paths.sh wurde nicht ausgeführt${NC}"
    echo "   Lösung: cd claude-desktop-setup && ./setup-paths.sh"
    echo ""
    echo "3. ${YELLOW}Unreplaced Platzhalter ({{VARIABLE}})${NC}"
    echo "   Lösung: Führe setup-paths.sh erneut aus"
    echo ""
    exit 1
fi
