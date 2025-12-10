#!/bin/bash

# ==============================================================================
# Version-Synchronisierung für LehrClaude
# ==============================================================================
# Propagiert Version-Änderung von MANIFEST.json zu allen Dateien
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
    echo -e "${BLUE}  Version-Synchronisierung${NC}"
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
}

print_usage() {
    echo "Verwendung: $0 <version> <datum>"
    echo ""
    echo "Beispiele:"
    echo "  $0 2.4.0 2025-12-11"
    echo "  $0 3.0.0 2026-01-15"
    echo ""
    echo "Format:"
    echo "  version: X.Y.Z (Semantic Versioning)"
    echo "  datum:   YYYY-MM-DD"
    echo ""
}

# Hole aktuelle Version aus MANIFEST.json
get_current_version() {
    if [ ! -f "$REPO_ROOT/MANIFEST.json" ]; then
        echo "0.0.0"
        return
    fi

    grep '"version"' "$REPO_ROOT/MANIFEST.json" | sed 's/.*"version": *"\([^"]*\)".*/\1/'
}

# Aktualisiere Version in Datei
update_version_in_file() {
    local file="$1"
    local old_version="$2"
    local new_version="$3"
    local backup_file="${file}.backup"

    if [ ! -f "$file" ]; then
        echo -e "  ${YELLOW}⚠${NC} Überspringe (nicht gefunden): $(basename "$file")"
        return 1
    fi

    # Erstelle Backup
    cp "$file" "$backup_file"

    # Ersetze Version (verschiedene Formate)
    sed -i.tmp "s/Version: $old_version/Version: $new_version/g" "$file"
    sed -i.tmp "s/\*\*Version:\*\* $old_version/**Version:** $new_version/g" "$file"
    sed -i.tmp "s/version: $old_version/version: $new_version/g" "$file"
    sed -i.tmp "s/\"version\": \"$old_version\"/\"version\": \"$new_version\"/g" "$file"

    # Entferne temporäre Dateien
    rm -f "${file}.tmp"

    echo -e "  ${GREEN}✓${NC} $(basename "$file")"
}

# Aktualisiere Datum in Datei
update_date_in_file() {
    local file="$1"
    local old_date="$2"
    local new_date="$3"

    if [ ! -f "$file" ] || [ -z "$old_date" ]; then
        return
    fi

    # Ersetze Datum
    sed -i.tmp "s/Stand: $old_date/Stand: $new_date/g" "$file"
    sed -i.tmp "s/\*\*Stand:\*\* $old_date/**Stand:** $new_date/g" "$file"
    sed -i.tmp "s/\"releaseDate\": \"$old_date\"/\"releaseDate\": \"$new_date\"/g" "$file"

    # Entferne temporäre Dateien
    rm -f "${file}.tmp"
}

# ==============================================================================
# Hauptlogik
# ==============================================================================

# Prüfe Parameter
if [ $# -ne 2 ]; then
    print_header
    echo -e "${RED}Fehler: Falsche Anzahl Parameter${NC}"
    echo ""
    print_usage
    exit 1
fi

NEW_VERSION="$1"
NEW_DATE="$2"

# Validiere Version-Format (X.Y.Z)
if ! [[ "$NEW_VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    print_header
    echo -e "${RED}Fehler: Ungültiges Versions-Format${NC}"
    echo ""
    echo "Erwartet: X.Y.Z (z.B. 2.4.0)"
    echo "Gegeben:  $NEW_VERSION"
    echo ""
    exit 1
fi

# Validiere Datum-Format (YYYY-MM-DD)
if ! [[ "$NEW_DATE" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
    print_header
    echo -e "${RED}Fehler: Ungültiges Datums-Format${NC}"
    echo ""
    echo "Erwartet: YYYY-MM-DD (z.B. 2025-12-11)"
    echo "Gegeben:  $NEW_DATE"
    echo ""
    exit 1
fi

print_header

# Hole aktuelle Version
CURRENT_VERSION=$(get_current_version)
CURRENT_DATE=$(grep '"releaseDate"' "$REPO_ROOT/MANIFEST.json" 2>/dev/null | sed 's/.*"releaseDate": *"\([^"]*\)".*/\1/' || echo "unbekannt")

echo -e "  ${BLUE}Neue Version:${NC} $NEW_VERSION"
echo -e "  ${BLUE}Neues Datum:${NC}  $NEW_DATE"
echo ""
echo -e "  ${YELLOW}Alte Version:${NC} $CURRENT_VERSION"
echo -e "  ${YELLOW}Altes Datum:${NC}  $CURRENT_DATE"
echo ""

# Zeige betroffene Dateien
echo -e "${BLUE}Folgende Dateien werden aktualisiert:${NC}"
echo ""
echo "  • MANIFEST.json"
echo "  • README.md"
echo "  • CLAUDE.md"
echo "  • CHANGELOG.md (manuell zu aktualisieren!)"
echo ""
for project_dir in "$SCRIPT_DIR"/projekt-*/; do
    [ ! -d "$project_dir" ] && continue
    project_name=$(basename "$project_dir")
    echo "  • $project_name/PROJECT_INSTRUCTIONS.md"

    if [ -f "$project_dir/skills-checklist.md" ]; then
        echo "  • $project_name/skills-checklist.md"
    fi
done
echo ""

# Frage nach Bestätigung
while true; do
    read -p "Fortfahren? (j/n): " confirm
    case "$confirm" in
        [jJ]|[jJ][aA])
            break
            ;;
        [nN]|[nN][eE][iI][nN])
            echo ""
            echo "Abgebrochen."
            exit 0
            ;;
        "")
            echo -e "${YELLOW}⚠️  Bitte Eingabe machen (j oder n)${NC}"
            ;;
        *)
            echo -e "${YELLOW}⚠️  Ungültige Eingabe${NC}"
            ;;
    esac
done

echo ""
echo -e "${BLUE}Aktualisiere Dateien...${NC}"
echo ""

# Zähler
updated=0
skipped=0

# 1. Aktualisiere MANIFEST.json
if [ -f "$REPO_ROOT/MANIFEST.json" ]; then
    cp "$REPO_ROOT/MANIFEST.json" "$REPO_ROOT/MANIFEST.json.backup"
    sed -i.tmp "s/\"version\": \"$CURRENT_VERSION\"/\"version\": \"$NEW_VERSION\"/" "$REPO_ROOT/MANIFEST.json"
    sed -i.tmp "s/\"releaseDate\": \"$CURRENT_DATE\"/\"releaseDate\": \"$NEW_DATE\"/" "$REPO_ROOT/MANIFEST.json"
    rm -f "$REPO_ROOT/MANIFEST.json.tmp"
    echo -e "  ${GREEN}✓${NC} MANIFEST.json"
    ((updated++))
fi

# 2. Aktualisiere README.md
update_version_in_file "$REPO_ROOT/README.md" "$CURRENT_VERSION" "$NEW_VERSION" && ((updated++)) || ((skipped++))
update_date_in_file "$REPO_ROOT/README.md" "$CURRENT_DATE" "$NEW_DATE"

# 3. Aktualisiere CLAUDE.md
update_version_in_file "$REPO_ROOT/CLAUDE.md" "$CURRENT_VERSION" "$NEW_VERSION" && ((updated++)) || ((skipped++))
update_date_in_file "$REPO_ROOT/CLAUDE.md" "$CURRENT_DATE" "$NEW_DATE"

# 4. Aktualisiere alle PROJECT_INSTRUCTIONS.md
for project_dir in "$SCRIPT_DIR"/projekt-*/; do
    [ ! -d "$project_dir" ] && continue

    project_file="$project_dir/PROJECT_INSTRUCTIONS.md"
    update_version_in_file "$project_file" "$CURRENT_VERSION" "$NEW_VERSION" && ((updated++)) || ((skipped++))
    update_date_in_file "$project_file" "$CURRENT_DATE" "$NEW_DATE"
done

# 5. Aktualisiere alle skills-checklist.md
for project_dir in "$SCRIPT_DIR"/projekt-*/; do
    [ ! -d "$project_dir" ] && continue

    checklist_file="$project_dir/skills-checklist.md"
    if [ -f "$checklist_file" ]; then
        update_version_in_file "$checklist_file" "$CURRENT_VERSION" "$NEW_VERSION" && ((updated++)) || ((skipped++))
        update_date_in_file "$checklist_file" "$CURRENT_DATE" "$NEW_DATE"
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

echo -e "${GREEN}✓ Version-Synchronisierung abgeschlossen${NC}"
echo ""
echo "Statistik:"
echo "  Aktualisiert: $updated Dateien"
[ $skipped -gt 0 ] && echo "  Übersprungen: $skipped Dateien"
echo ""

echo -e "${BLUE}Backups erstellt:${NC}"
echo "  Alle geänderten Dateien haben .backup Kopien"
echo ""

echo -e "${YELLOW}WICHTIG:${NC}"
echo "  1. Prüfe Änderungen: ${BLUE}git diff${NC}"
echo "  2. Aktualisiere ${YELLOW}CHANGELOG.md manuell${NC} mit neuem Eintrag:"
echo ""
echo "     ## [$NEW_VERSION] - $NEW_DATE"
echo ""
echo "     ### Hinzugefügt / Geändert / Behoben"
echo "     - ..."
echo ""
echo "  3. Committe alle Änderungen:"
echo "     ${BLUE}git add -A${NC}"
echo "     ${BLUE}git commit -m \"chore(version): bump to $NEW_VERSION\"${NC}"
echo ""

exit 0
