#!/bin/bash

# ==============================================================================
# Batch-Validierung aller Skills für LehrClaude
# ==============================================================================
# Wrapper um validate-skill.sh für alle Skills im skills/ Ordner
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
    echo -e "${BLUE}  Batch-Validierung aller Skills${NC}"
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
}

# ==============================================================================
# Hauptlogik
# ==============================================================================

# Prüfe ob validate-skill.sh existiert
if [ ! -f "$SCRIPT_DIR/validate-skill.sh" ]; then
    echo -e "${RED}✗ FEHLER: validate-skill.sh nicht gefunden${NC}"
    echo ""
    echo "Benötigt: $SCRIPT_DIR/validate-skill.sh"
    exit 1
fi

if [ ! -x "$SCRIPT_DIR/validate-skill.sh" ]; then
    echo -e "${RED}✗ FEHLER: validate-skill.sh nicht ausführbar${NC}"
    echo ""
    echo "Lösung:"
    echo "  chmod +x $SCRIPT_DIR/validate-skill.sh"
    exit 1
fi

print_header

# Zähler
total=0
passed=0
warnings=0
failed=0

# Sammle alle Skills
SKILLS_DIR="$SCRIPT_DIR/skills"
if [ ! -d "$SKILLS_DIR" ]; then
    echo -e "${RED}✗ skills/ Ordner nicht gefunden${NC}"
    exit 1
fi

# Durchlaufe alle Skill-Ordner
for skill_dir in "$SKILLS_DIR"/*/; do
    [ ! -d "$skill_dir" ] && continue

    skill_name=$(basename "$skill_dir")
    [[ "$skill_name" == .* ]] && continue  # Überspringe versteckte Ordner

    ((total++))

    echo -e "${BLUE}▶ $skill_name${NC}"

    # Führe validate-skill.sh aus (unterdrücke Header-Output)
    if output=$("$SCRIPT_DIR/validate-skill.sh" "$skill_name" 2>&1); then
        exit_code=$?

        # Prüfe Exit-Code
        if [ $exit_code -eq 0 ]; then
            # Prüfe ob Warnungen vorhanden (auch bei Exit 0)
            if echo "$output" | grep -q "⚠"; then
                echo -e "${YELLOW}⚠ $skill_name (Warnungen)${NC}"
                ((warnings++))
            else
                echo -e "${GREEN}✓ $skill_name${NC}"
                ((passed++))
            fi
        else
            echo -e "${RED}✗ $skill_name (Fehler)${NC}"
            # Zeige erste 3 Fehlerzeilen
            echo "$output" | grep -E "^✗|Error" | head -3 | sed 's/^/  /'
            ((failed++))
        fi
    else
        echo -e "${RED}✗ $skill_name (Validierung fehlgeschlagen)${NC}"
        ((failed++))
    fi

    echo ""
done

# ==============================================================================
# Zusammenfassung
# ==============================================================================

echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  Zusammenfassung${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo ""

echo "Statistik:"
echo "  Skills gesamt:    $total"
echo "  Bestanden:        $passed"
if [ $warnings -gt 0 ]; then
    echo -e "  ${YELLOW}Warnungen:        $warnings${NC}"
fi
if [ $failed -gt 0 ]; then
    echo -e "  ${RED}Fehler:           $failed${NC}"
fi
echo ""

if [ $failed -eq 0 ] && [ $warnings -eq 0 ]; then
    echo -e "${GREEN}✓ Alle Skills gültig!${NC}"
    echo ""
    exit 0
elif [ $failed -eq 0 ]; then
    echo -e "${YELLOW}⚠ Alle Skills gültig, aber mit Warnungen${NC}"
    echo ""
    echo "Hinweis: Warnungen sind nicht-kritisch."
    echo ""
    echo "Um Details zu sehen:"
    echo "  ./validate-skill.sh <skill-name>"
    echo ""
    exit 0
else
    echo -e "${RED}✗ $failed Skills haben Fehler${NC}"
    echo ""
    echo "Um Details zu sehen:"
    echo "  ./validate-skill.sh <skill-name>"
    echo ""
    echo "Häufige Probleme:"
    echo "  • Fehlende YAML Frontmatter"
    echo "  • Ungültige Skill-Namen (Ordnername ≠ YAML name)"
    echo "  • Fehlende Ressourcen-Ordner"
    echo ""
    exit 1
fi
