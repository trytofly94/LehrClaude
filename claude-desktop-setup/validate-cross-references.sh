#!/bin/bash

# ==============================================================================
# Cross-Reference-Validierung für LehrClaude
# ==============================================================================
# Prüft ob alle Skill-Referenzen auflösbar sind
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
    echo -e "${BLUE}  Cross-Reference-Validierung${NC}"
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
}

# Hole Skills aus MANIFEST.json
get_manifest_skills() {
    if [ ! -f "$REPO_ROOT/MANIFEST.json" ]; then
        echo ""
        return 1
    fi

    # Extrahiere Skill-Namen aus JSON (nur innerhalb des skills-Arrays)
    # Suche zwischen "skills": [ und dem nächsten ]
    sed -n '/"skills": \[/,/\]/p' "$REPO_ROOT/MANIFEST.json" | \
        grep '"name":' | \
        sed 's/.*"name": *"\([^"]*\)".*/\1/' | \
        sort
}

# Hole tatsächlich vorhandene Skills aus skills/ Ordner
get_actual_skills() {
    local skills_dir="$SCRIPT_DIR/skills"

    if [ ! -d "$skills_dir" ]; then
        echo ""
        return 1
    fi

    for skill_dir in "$skills_dir"/*/; do
        [ ! -d "$skill_dir" ] && continue
        skill_name=$(basename "$skill_dir")
        [[ "$skill_name" == .* ]] && continue
        echo "$skill_name"
    done | sort
}

# Vergleiche zwei Listen
compare_lists() {
    local list1="$1"
    local list2="$2"
    local name1="$3"
    local name2="$4"

    local errors=0

    # In list1 aber nicht in list2
    while IFS= read -r item; do
        [ -z "$item" ] && continue
        if ! echo "$list2" | grep -q "^${item}$"; then
            echo -e "${RED}✗${NC} In $name1 aber nicht in $name2: $item"
            ((errors++))
        fi
    done <<< "$list1"

    # In list2 aber nicht in list1
    while IFS= read -r item; do
        [ -z "$item" ] && continue
        if ! echo "$list1" | grep -q "^${item}$"; then
            echo -e "${RED}✗${NC} In $name2 aber nicht in $name1: $item"
            ((errors++))
        fi
    done <<< "$list2"

    return $errors
}

# ==============================================================================
# Hauptlogik
# ==============================================================================

print_header

# Zähler
errors=0
warnings=0

# 1. Vergleiche MANIFEST.json vs. tatsächliche Ordner
echo -e "${BLUE}1. MANIFEST.json vs. skills/ Ordner${NC}"
echo ""

MANIFEST_SKILLS=$(get_manifest_skills)
ACTUAL_SKILLS=$(get_actual_skills)

if [ -z "$MANIFEST_SKILLS" ]; then
    echo -e "${RED}✗ Konnte Skills aus MANIFEST.json nicht lesen${NC}"
    ((errors++))
elif [ -z "$ACTUAL_SKILLS" ]; then
    echo -e "${RED}✗ Konnte skills/ Ordner nicht lesen${NC}"
    ((errors++))
else
    MANIFEST_COUNT=$(echo "$MANIFEST_SKILLS" | wc -l | tr -d ' ')
    ACTUAL_COUNT=$(echo "$ACTUAL_SKILLS" | wc -l | tr -d ' ')

    echo "MANIFEST.json:  $MANIFEST_COUNT Skills"
    echo "skills/ Ordner: $ACTUAL_COUNT Skills"
    echo ""

    if [ "$MANIFEST_COUNT" -ne "$ACTUAL_COUNT" ]; then
        echo -e "${YELLOW}⚠ Skill-Anzahl unterschiedlich${NC}"
        echo ""
    fi

    compare_lists "$MANIFEST_SKILLS" "$ACTUAL_SKILLS" "MANIFEST.json" "skills/"
    result=$?
    if [ $result -eq 0 ]; then
        echo -e "${GREEN}✓ MANIFEST.json und skills/ Ordner konsistent${NC}"
    else
        errors=$((errors + result))
    fi
fi

echo ""

# 2. Prüfe Skill-Anzahl in Dokumentation
echo -e "${BLUE}2. Skill-Anzahl in Dokumentation${NC}"
echo ""

if [ -n "$ACTUAL_SKILLS" ]; then
    ACTUAL_COUNT=$(echo "$ACTUAL_SKILLS" | wc -l | tr -d ' ')

    # Prüfe README.md
    if [ -f "$REPO_ROOT/README.md" ]; then
        # Suche nach "9 Skills" oder "9 Custom Skills"
        README_COUNT=$(grep -i "skills" "$REPO_ROOT/README.md" | grep -o '[0-9]\+ \(Custom \)\?Skills' | head -1 | grep -o '[0-9]\+')
        if [ -n "$README_COUNT" ]; then
            if [ "$README_COUNT" -ne "$ACTUAL_COUNT" ]; then
                echo -e "${RED}✗${NC} README.md: $README_COUNT Skills ${RED}(tatsächlich $ACTUAL_COUNT)${NC}"
                ((errors++))
            else
                echo -e "${GREEN}✓${NC} README.md: $README_COUNT Skills"
            fi
        else
            echo -e "${YELLOW}⚠${NC} README.md: Skill-Anzahl nicht gefunden"
            ((warnings++))
        fi
    fi

    # Prüfe CLAUDE.md
    if [ -f "$REPO_ROOT/CLAUDE.md" ]; then
        CLAUDE_COUNT=$(grep -i "skills" "$REPO_ROOT/CLAUDE.md" | grep -o '[0-9]\+ \(Custom \)\?Skills' | head -1 | grep -o '[0-9]\+')
        if [ -n "$CLAUDE_COUNT" ]; then
            if [ "$CLAUDE_COUNT" -ne "$ACTUAL_COUNT" ]; then
                echo -e "${RED}✗${NC} CLAUDE.md: $CLAUDE_COUNT Skills ${RED}(tatsächlich $ACTUAL_COUNT)${NC}"
                ((errors++))
            else
                echo -e "${GREEN}✓${NC} CLAUDE.md: $CLAUDE_COUNT Skills"
            fi
        else
            echo -e "${YELLOW}⚠${NC} CLAUDE.md: Skill-Anzahl nicht gefunden"
            ((warnings++))
        fi
    fi

    # Prüfe MANIFEST.json architecture.skills
    if [ -f "$REPO_ROOT/MANIFEST.json" ]; then
        # Extrahiere nur die Zahl aus "skills": 9,
        MANIFEST_ARCH_COUNT=$(grep '"skills":' "$REPO_ROOT/MANIFEST.json" | grep -v '\[' | grep -o '[0-9]\+' | head -1)
        if [ -n "$MANIFEST_ARCH_COUNT" ] && [[ "$MANIFEST_ARCH_COUNT" =~ ^[0-9]+$ ]]; then
            if [ "$MANIFEST_ARCH_COUNT" -ne "$ACTUAL_COUNT" ]; then
                echo -e "${RED}✗${NC} MANIFEST.json (architecture): $MANIFEST_ARCH_COUNT ${RED}(tatsächlich $ACTUAL_COUNT)${NC}"
                ((errors++))
            else
                echo -e "${GREEN}✓${NC} MANIFEST.json (architecture): $MANIFEST_ARCH_COUNT"
            fi
        fi
    fi
fi

echo ""

# 3. Prüfe skills-checklist.md Referenzen
echo -e "${BLUE}3. skills-checklist.md Referenzen${NC}"
echo ""

checklist_errors=0
for project_dir in "$SCRIPT_DIR"/projekt-*/; do
    [ ! -d "$project_dir" ] && continue

    checklist_file="$project_dir/skills-checklist.md"
    if [ ! -f "$checklist_file" ]; then
        continue
    fi

    project_name=$(basename "$project_dir")

    # Extrahiere Skill-Referenzen (nur **skill-name** Pattern)
    while IFS= read -r skill_ref; do
        [ -z "$skill_ref" ] && continue

        # Prüfe ob Skill existiert
        if ! echo "$ACTUAL_SKILLS" | grep -q "^${skill_ref}$"; then
            echo -e "${RED}✗${NC} $project_name: Referenziert nicht-existierenden Skill: $skill_ref"
            ((checklist_errors++))
        fi
    done < <(grep -oE '\*\*[a-z0-9-]+\*\*' "$checklist_file" | sed 's/\*\*//g' | sort -u)
done

if [ $checklist_errors -eq 0 ]; then
    echo -e "${GREEN}✓ Alle Skill-Referenzen in skills-checklist.md gültig${NC}"
else
    echo -e "${RED}✗ $checklist_errors ungültige Referenzen gefunden${NC}"
    errors=$((errors + checklist_errors))
fi

echo ""

# 4. Prüfe Projekt-Anzahl
echo -e "${BLUE}4. Projekt-Anzahl${NC}"
echo ""

ACTUAL_PROJECTS=$(find "$SCRIPT_DIR" -maxdepth 1 -type d -name "projekt-*" | wc -l | tr -d ' ')

if [ -f "$REPO_ROOT/MANIFEST.json" ]; then
    # Extrahiere nur die Zahl aus "projects": X,
    MANIFEST_PROJECTS=$(grep '"projects":' "$REPO_ROOT/MANIFEST.json" | grep -o '[0-9]\+' | head -1)
    if [ -n "$MANIFEST_PROJECTS" ] && [[ "$MANIFEST_PROJECTS" =~ ^[0-9]+$ ]]; then
        if [ "$MANIFEST_PROJECTS" -ne "$ACTUAL_PROJECTS" ]; then
            echo -e "${RED}✗${NC} MANIFEST.json: $MANIFEST_PROJECTS Projekte ${RED}(tatsächlich $ACTUAL_PROJECTS)${NC}"
            ((errors++))
        else
            echo -e "${GREEN}✓${NC} MANIFEST.json: $MANIFEST_PROJECTS Projekte"
        fi
    fi
fi

# ==============================================================================
# Zusammenfassung
# ==============================================================================

echo ""
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  Zusammenfassung${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo ""

if [ $errors -eq 0 ] && [ $warnings -eq 0 ]; then
    echo -e "${GREEN}✓ Alle Cross-Referenzen konsistent!${NC}"
    echo ""
    exit 0
elif [ $errors -eq 0 ]; then
    echo -e "${YELLOW}⚠ Cross-Referenzen OK, aber $warnings Warnung(en)${NC}"
    echo ""
    exit 0
else
    echo -e "${RED}✗ $errors Cross-Reference-Fehler gefunden${NC}"
    if [ $warnings -gt 0 ]; then
        echo -e "${YELLOW}⚠ Zusätzlich $warnings Warnung(en)${NC}"
    fi
    echo ""
    echo -e "${BLUE}Lösung:${NC}"
    echo "  ./fix-skill-references.sh  # Automatische Reparatur"
    echo ""
    exit 1
fi
