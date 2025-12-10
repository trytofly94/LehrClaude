#!/bin/bash

# ==============================================================================
# LehrClaude Kohärenz-Check (Master Script)
# ==============================================================================
# Orchestriert alle Validierungs-Scripts und gibt Gesamt-Status
# ==============================================================================

# Farben
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Pfade
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# ==============================================================================
# Funktionen
# ==============================================================================

print_header() {
    echo ""
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}  LehrClaude Kohärenz-Check${NC}"
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
}

# Führe Validierungs-Script aus
run_check() {
    local script_name="$1"
    local display_name="$2"
    local script_path="$SCRIPT_DIR/$script_name"

    echo -e "${BLUE}▶ $display_name${NC}"

    if [ ! -f "$script_path" ]; then
        echo -e "${YELLOW}⚠ Script nicht gefunden: $script_name${NC}"
        echo -e "${YELLOW}  (Noch nicht implementiert)${NC}"
        echo ""
        return 2  # Warning
    fi

    if [ ! -x "$script_path" ]; then
        echo -e "${RED}✗ Script nicht ausführbar: $script_name${NC}"
        echo ""
        return 1  # Error
    fi

    # Führe Script aus und fange Output ab
    local output
    output=$("$script_path" 2>&1)
    local exit_code=$?

    # Zeige nur Zusammenfassung, nicht kompletten Output
    if [ $exit_code -eq 0 ]; then
        echo -e "${GREEN}✓ $display_name OK${NC}"
        echo ""
        return 0
    elif [ $exit_code -eq 2 ]; then
        echo -e "${YELLOW}⚠ $display_name: Warnungen${NC}"
        # Zeige relevante Warnungen
        echo "$output" | grep -E "^⚠|^Warning" | head -5
        echo ""
        return 2  # Warning
    else
        echo -e "${RED}✗ $display_name: Fehler gefunden${NC}"
        # Zeige relevante Fehler
        echo "$output" | grep -E "^✗|^Error" | head -10
        echo ""
        return 1  # Error
    fi
}

# ==============================================================================
# Hauptlogik
# ==============================================================================

print_header

# Zähler
total_checks=0
passed_checks=0
failed_checks=0
warning_checks=0

# 1. Template-Integrität (verhindert manuelle Edits an generierten Dateien)
run_check "validate-template-integrity.sh" "Template-Integrität"
result=$?
((total_checks++))
[ $result -eq 0 ] && ((passed_checks++))
[ $result -eq 1 ] && ((failed_checks++))
[ $result -eq 2 ] && ((warning_checks++))

# 2. Version-Konsistenz (MANIFEST.json als Single Source of Truth)
run_check "validate-versions.sh" "Version-Konsistenz"
result=$?
((total_checks++))
[ $result -eq 0 ] && ((passed_checks++))
[ $result -eq 1 ] && ((failed_checks++))
[ $result -eq 2 ] && ((warning_checks++))

# 3. Cross-Referenzen (Skills existieren, Anzahl stimmt)
run_check "validate-cross-references.sh" "Cross-Referenzen"
result=$?
((total_checks++))
[ $result -eq 0 ] && ((passed_checks++))
[ $result -eq 1 ] && ((failed_checks++))
[ $result -eq 2 ] && ((warning_checks++))

# 4. Dokumentations-Konsistenz (README.md ≠ CLAUDE.md)
run_check "validate-doc-consistency.sh" "Dokumentations-Konsistenz"
result=$?
((total_checks++))
[ $result -eq 0 ] && ((passed_checks++))
[ $result -eq 1 ] && ((failed_checks++))
[ $result -eq 2 ] && ((warning_checks++))

# 5. Skill-Struktur (alle Skills validiert)
run_check "validate-all-skills.sh" "Skill-Struktur"
result=$?
((total_checks++))
[ $result -eq 0 ] && ((passed_checks++))
[ $result -eq 1 ] && ((failed_checks++))
[ $result -eq 2 ] && ((warning_checks++))

# ==============================================================================
# Zusammenfassung
# ==============================================================================

echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  Zusammenfassung${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo ""

echo "Statistik:"
echo "  Checks gesamt:    $total_checks"
echo "  Bestanden:        $passed_checks"
if [ $failed_checks -gt 0 ]; then
    echo -e "  ${RED}Fehler:           $failed_checks${NC}"
fi
if [ $warning_checks -gt 0 ]; then
    echo -e "  ${YELLOW}Warnungen:        $warning_checks${NC}"
fi
echo ""

if [ $failed_checks -eq 0 ] && [ $warning_checks -eq 0 ]; then
    echo -e "${GREEN}✓ Alle Checks bestanden - System kohärent!${NC}"
    echo ""
    exit 0
elif [ $failed_checks -eq 0 ]; then
    echo -e "${YELLOW}⚠ Alle Checks bestanden, aber mit Warnungen${NC}"
    echo ""
    echo "Hinweis: Warnungen sind nicht-kritisch, sollten aber überprüft werden."
    echo ""
    exit 0
else
    echo -e "${RED}✗ System inkohärent - $failed_checks Fehler gefunden${NC}"
    echo ""
    echo -e "${BLUE}Nächste Schritte:${NC}"
    echo "  1. Prüfe Details in fehlgeschlagenen Checks (siehe oben)"
    echo "  2. Nutze Auto-Fix Scripts wo möglich:"
    echo "     - ${BLUE}./sync-versions.sh <version> <datum>${NC}"
    echo "     - ${BLUE}./fix-skill-references.sh${NC}"
    echo "     - ${BLUE}./regenerate-from-templates.sh${NC}"
    echo "  3. Führe diesen Check erneut aus: ${BLUE}./coherence-check.sh${NC}"
    echo ""
    exit 1
fi
