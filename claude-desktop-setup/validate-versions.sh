#!/bin/bash

# ==============================================================================
# Version-Konsistenz-Validierung für LehrClaude
# ==============================================================================
# Prüft ob alle Dateien dieselbe Version haben (Single Source of Truth: MANIFEST.json)
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
    echo -e "${BLUE}  Version-Konsistenz-Prüfung${NC}"
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
}

# Extrahiere Version aus MANIFEST.json
get_manifest_version() {
    if [ ! -f "$REPO_ROOT/MANIFEST.json" ]; then
        echo -e "${RED}✗ FEHLER: MANIFEST.json nicht gefunden in $REPO_ROOT${NC}"
        echo ""
        echo "MANIFEST.json ist die Single Source of Truth für Versionen."
        echo "Bitte erstelle die Datei oder führe das Setup erneut aus."
        exit 1
    fi

    # Nutze grep + sed für robuste JSON-Extraktion
    local version=$(grep '"version"' "$REPO_ROOT/MANIFEST.json" | sed 's/.*"version": *"\([^"]*\)".*/\1/')

    if [ -z "$version" ]; then
        echo -e "${RED}✗ FEHLER: Keine Version in MANIFEST.json gefunden${NC}"
        exit 1
    fi

    echo "$version"
}

# Extrahiere Datum aus MANIFEST.json
get_manifest_date() {
    local date=$(grep '"releaseDate"' "$REPO_ROOT/MANIFEST.json" | sed 's/.*"releaseDate": *"\([^"]*\)".*/\1/')
    echo "$date"
}

# Prüfe Version in Datei (mit Regex-Pattern)
check_version_in_file() {
    local file="$1"
    local expected_version="$2"
    local pattern="$3"  # Optionales Such-Pattern

    if [ ! -f "$file" ]; then
        echo -e "${YELLOW}⚠${NC} Datei nicht gefunden: $(basename "$file")"
        return 2  # Warning
    fi

    # Suche Version in Datei
    if [ -z "$pattern" ]; then
        # Default: Suche nach "**Version:** X.X.X" oder "Version: X.X.X"
        local found_version=$(grep -i "version" "$file" | grep -o '[0-9]\+\.[0-9]\+\.[0-9]\+' | head -1)
    else
        # Nutze custom pattern
        local found_version=$(grep "$pattern" "$file" | grep -o '[0-9]\+\.[0-9]\+\.[0-9]\+' | head -1)
    fi

    if [ -z "$found_version" ]; then
        echo -e "${YELLOW}⚠${NC} $(basename "$file"): Keine Version gefunden"
        return 2  # Warning
    fi

    if [ "$found_version" != "$expected_version" ]; then
        echo -e "${RED}✗${NC} $(basename "$file"): $found_version ${RED}(sollte $expected_version sein)${NC}"
        return 1  # Error
    fi

    echo -e "${GREEN}✓${NC} $(basename "$file"): $found_version"
    return 0
}

# ==============================================================================
# Hauptlogik
# ==============================================================================

print_header

# 1. Hole Version aus MANIFEST.json
EXPECTED_VERSION=$(get_manifest_version)
EXPECTED_DATE=$(get_manifest_date)

echo -e "${BLUE}Single Source of Truth:${NC}"
echo -e "  MANIFEST.json: ${GREEN}$EXPECTED_VERSION${NC} (${EXPECTED_DATE})"
echo ""

# Zähler
errors=0
warnings=0

# 2. Prüfe README.md
echo -e "${BLUE}Dokumentation:${NC}"
check_version_in_file "$REPO_ROOT/README.md" "$EXPECTED_VERSION"
result=$?
[ $result -eq 1 ] && ((errors++))
[ $result -eq 2 ] && ((warnings++))

# 3. Prüfe CLAUDE.md
check_version_in_file "$REPO_ROOT/CLAUDE.md" "$EXPECTED_VERSION"
result=$?
[ $result -eq 1 ] && ((errors++))
[ $result -eq 2 ] && ((warnings++))

# 4. Prüfe CHANGELOG.md (erster Eintrag)
if [ -f "$REPO_ROOT/CHANGELOG.md" ]; then
    # Suche nach [X.X.X] Format im ersten Eintrag
    changelog_version=$(grep -m 1 '\[.*\]' "$REPO_ROOT/CHANGELOG.md" | grep -o '[0-9]\+\.[0-9]\+\.[0-9]\+')
    if [ "$changelog_version" != "$EXPECTED_VERSION" ]; then
        echo -e "${RED}✗${NC} CHANGELOG.md: [$changelog_version] ${RED}(sollte [$EXPECTED_VERSION] sein)${NC}"
        ((errors++))
    else
        echo -e "${GREEN}✓${NC} CHANGELOG.md: [$changelog_version]"
    fi
else
    echo -e "${YELLOW}⚠${NC} CHANGELOG.md: Nicht gefunden"
    ((warnings++))
fi

echo ""

# 5. Prüfe alle PROJECT_INSTRUCTIONS.md (generierte Dateien)
echo -e "${BLUE}Projekt-Instructions:${NC}"
for project_dir in "$SCRIPT_DIR"/projekt-*/; do
    [ ! -d "$project_dir" ] && continue

    project_name=$(basename "$project_dir")
    project_file="$project_dir/PROJECT_INSTRUCTIONS.md"

    check_version_in_file "$project_file" "$EXPECTED_VERSION"
    result=$?
    [ $result -eq 1 ] && ((errors++))
    [ $result -eq 2 ] && ((warnings++))
done

echo ""

# 6. Prüfe alle skills-checklist.md
echo -e "${BLUE}Skills Checklisten:${NC}"
for project_dir in "$SCRIPT_DIR"/projekt-*/; do
    [ ! -d "$project_dir" ] && continue

    checklist_file="$project_dir/skills-checklist.md"

    if [ -f "$checklist_file" ]; then
        check_version_in_file "$checklist_file" "$EXPECTED_VERSION"
        result=$?
        [ $result -eq 1 ] && ((errors++))
        [ $result -eq 2 ] && ((warnings++))
    fi
done

# ==============================================================================
# Zusammenfassung
# ==============================================================================

echo ""
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  Zusammenfassung${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo ""

if [ $errors -eq 0 ] && [ $warnings -eq 0 ]; then
    echo -e "${GREEN}✓ Alle Versionen konsistent!${NC}"
    echo ""
    echo "Aktuelle Version: $EXPECTED_VERSION"
    echo "Release-Datum:    $EXPECTED_DATE"
    exit 0
elif [ $errors -eq 0 ]; then
    echo -e "${YELLOW}⚠ Version-Konsistenz OK, aber $warnings Warnung(en)${NC}"
    echo ""
    echo "Aktuelle Version: $EXPECTED_VERSION"
    exit 0
else
    echo -e "${RED}✗ $errors Version-Inkonsistenz(en) gefunden${NC}"
    if [ $warnings -gt 0 ]; then
        echo -e "${YELLOW}⚠ Zusätzlich $warnings Warnung(en)${NC}"
    fi
    echo ""
    echo -e "${BLUE}Lösung:${NC}"
    echo "  ./sync-versions.sh $EXPECTED_VERSION $EXPECTED_DATE"
    echo ""
    exit 1
fi
