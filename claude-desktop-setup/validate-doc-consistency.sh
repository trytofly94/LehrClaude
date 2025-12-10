#!/bin/bash

# ==============================================================================
# Dokumentations-Konsistenz-Validierung für LehrClaude
# ==============================================================================
# Prüft ob README.md und CLAUDE.md synchron sind
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
    echo -e "${BLUE}  Dokumentations-Konsistenz-Prüfung${NC}"
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
}

# Extrahiere Wert aus Datei (generisch)
extract_value() {
    local file="$1"
    local pattern="$2"

    if [ ! -f "$file" ]; then
        echo ""
        return 1
    fi

    grep "$pattern" "$file" | head -1 | sed "$3"
}

# ==============================================================================
# Hauptlogik
# ==============================================================================

print_header

# Zähler
warnings=0

# 1. Extrahiere Werte aus README.md
echo -e "${BLUE}Analysiere README.md...${NC}"

if [ ! -f "$REPO_ROOT/README.md" ]; then
    echo -e "${RED}✗ README.md nicht gefunden${NC}"
    exit 1
fi

README_VERSION=$(grep -i "version" "$REPO_ROOT/README.md" | grep -o '[0-9]\+\.[0-9]\+\.[0-9]\+' | head -1)
README_DATE=$(grep -i "stand" "$REPO_ROOT/README.md" | grep -o '[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}' | head -1)
README_PROJECTS=$(grep -i "projekte" "$REPO_ROOT/README.md" | grep -o '[0-9]\+' | head -1)
README_SKILLS=$(grep -i "skills" "$REPO_ROOT/README.md" | grep -o '[0-9]\+ \(Custom \)\?Skills' | head -1 | grep -o '[0-9]\+')

echo "  Version:   ${README_VERSION:-nicht gefunden}"
echo "  Datum:     ${README_DATE:-nicht gefunden}"
echo "  Projekte:  ${README_PROJECTS:-nicht gefunden}"
echo "  Skills:    ${README_SKILLS:-nicht gefunden}"
echo ""

# 2. Extrahiere Werte aus CLAUDE.md
echo -e "${BLUE}Analysiere CLAUDE.md...${NC}"

if [ ! -f "$REPO_ROOT/CLAUDE.md" ]; then
    echo -e "${RED}✗ CLAUDE.md nicht gefunden${NC}"
    exit 1
fi

CLAUDE_VERSION=$(grep -i "version" "$REPO_ROOT/CLAUDE.md" | grep -o '[0-9]\+\.[0-9]\+\.[0-9]\+' | head -1)
CLAUDE_DATE=$(grep -i "stand" "$REPO_ROOT/CLAUDE.md" | grep -o '[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}' | head -1)
CLAUDE_PROJECTS=$(grep -i "projekte" "$REPO_ROOT/CLAUDE.md" | grep -o '[0-9]\+' | head -1)
CLAUDE_SKILLS=$(grep -i "skills" "$REPO_ROOT/CLAUDE.md" | grep -o '[0-9]\+ \(Custom \)\?Skills' | head -1 | grep -o '[0-9]\+')

echo "  Version:   ${CLAUDE_VERSION:-nicht gefunden}"
echo "  Datum:     ${CLAUDE_DATE:-nicht gefunden}"
echo "  Projekte:  ${CLAUDE_PROJECTS:-nicht gefunden}"
echo "  Skills:    ${CLAUDE_SKILLS:-nicht gefunden}"
echo ""

# 3. Vergleiche Werte
echo -e "${BLUE}Vergleiche Dokumente...${NC}"
echo ""

# Version
if [ -n "$README_VERSION" ] && [ -n "$CLAUDE_VERSION" ]; then
    if [ "$README_VERSION" != "$CLAUDE_VERSION" ]; then
        echo -e "${YELLOW}⚠${NC} Version: README.md=$README_VERSION, CLAUDE.md=$CLAUDE_VERSION"
        ((warnings++))
    else
        echo -e "${GREEN}✓${NC} Version konsistent: $README_VERSION"
    fi
else
    echo -e "${YELLOW}⚠${NC} Version in einem Dokument nicht gefunden"
    ((warnings++))
fi

# Datum
if [ -n "$README_DATE" ] && [ -n "$CLAUDE_DATE" ]; then
    if [ "$README_DATE" != "$CLAUDE_DATE" ]; then
        echo -e "${YELLOW}⚠${NC} Datum: README.md=$README_DATE, CLAUDE.md=$CLAUDE_DATE"
        ((warnings++))
    else
        echo -e "${GREEN}✓${NC} Datum konsistent: $README_DATE"
    fi
fi

# Projekt-Anzahl
if [ -n "$README_PROJECTS" ] && [ -n "$CLAUDE_PROJECTS" ]; then
    if [ "$README_PROJECTS" != "$CLAUDE_PROJECTS" ]; then
        echo -e "${YELLOW}⚠${NC} Projekt-Anzahl: README.md=$README_PROJECTS, CLAUDE.md=$CLAUDE_PROJECTS"
        ((warnings++))
    else
        echo -e "${GREEN}✓${NC} Projekt-Anzahl konsistent: $README_PROJECTS"
    fi
fi

# Skill-Anzahl
if [ -n "$README_SKILLS" ] && [ -n "$CLAUDE_SKILLS" ]; then
    if [ "$README_SKILLS" != "$CLAUDE_SKILLS" ]; then
        echo -e "${YELLOW}⚠${NC} Skill-Anzahl: README.md=$README_SKILLS, CLAUDE.md=$CLAUDE_SKILLS"
        ((warnings++))
    else
        echo -e "${GREEN}✓${NC} Skill-Anzahl konsistent: $README_SKILLS"
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

if [ $warnings -eq 0 ]; then
    echo -e "${GREEN}✓ README.md und CLAUDE.md sind konsistent!${NC}"
    echo ""
    exit 0
else
    echo -e "${YELLOW}⚠ $warnings Dokumentations-Inkonsistenz(en)${NC}"
    echo ""
    echo -e "${BLUE}Hinweis:${NC}"
    echo "  Dies ist eine Warnung, kein Fehler."
    echo "  Dokumentations-Drift ist nicht-kritisch, sollte aber behoben werden."
    echo ""
    echo -e "${BLUE}Lösung:${NC}"
    echo "  1. Prüfe welches Dokument korrekt ist"
    echo "  2. Synchronisiere manuell (oder nutze sync-versions.sh für Version/Datum)"
    echo "  3. Für Skill-Anzahl: ./fix-skill-references.sh"
    echo ""
    exit 2  # Exit 2 = Warning (nicht blockierend)
fi
