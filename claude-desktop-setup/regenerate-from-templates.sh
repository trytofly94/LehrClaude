#!/bin/bash

# ==============================================================================
# Template-Regenerierung für LehrClaude
# ==============================================================================
# Regeneriert alle Dateien aus Templates, erkennt manuelle Edits
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
    echo -e "${BLUE}  Template-Regenerierung${NC}"
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
}

# ==============================================================================
# Hauptlogik
# ==============================================================================

print_header

# 1. Analysiere Situation
echo -e "${BLUE}Analysiere Templates...${NC}"
echo ""

# Sammle alle Templates mit neuerem Output
MANUAL_EDITS=()
while IFS= read -r -d '' template_file; do
    generated_file="${template_file%.template}"

    if [ -f "$generated_file" ]; then
        if [ "$generated_file" -nt "$template_file" ]; then
            MANUAL_EDITS+=("$generated_file")
        fi
    fi
done < <(find "$SCRIPT_DIR" -name "*.template" -type f -print0)

# 2. Warne bei manuellen Edits
if [ ${#MANUAL_EDITS[@]} -gt 0 ]; then
    echo -e "${YELLOW}⚠️  Folgende Dateien wurden möglicherweise manuell bearbeitet:${NC}"
    echo ""
    for file in "${MANUAL_EDITS[@]}"; do
        echo "  • $(basename "$file")"
    done
    echo ""
    echo -e "${YELLOW}Diese Dateien werden neu generiert. Manuelle Änderungen gehen verloren!${NC}"
    echo -e "${GREEN}Backups werden erstellt: *.manual-edit-backup${NC}"
    echo ""

    while true; do
        read -p "Fortfahren? (j/n): " confirm
        case "$confirm" in
            [jJ]|[jJ][aA])
                break
                ;;
            [nN]|[nN][eE][iI][nN])
                echo ""
                echo "Abgebrochen."
                echo ""
                echo "Alternative:"
                echo "  • Bearbeite Template-Dateien (*.template) statt generierter Dateien"
                echo "  • Führe dann setup-paths.sh aus"
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
else
    echo -e "${GREEN}✓ Keine manuellen Edits erkannt${NC}"
    echo ""
    echo "Alle generierten Dateien werden trotzdem neu erstellt."
    echo ""

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
fi

echo ""
echo -e "${BLUE}Erstelle Backups und regeneriere...${NC}"
echo ""

# 3. Erstelle Backups für manuelle Edits
for file in "${MANUAL_EDITS[@]}"; do
    backup_file="${file}.manual-edit-backup"
    cp "$file" "$backup_file"
    echo -e "${GREEN}✓ Backup erstellt:${NC} $(basename "$backup_file")"
done

if [ ${#MANUAL_EDITS[@]} -gt 0 ]; then
    echo ""
fi

# 4. Führe setup-paths.sh aus
echo -e "${BLUE}Regeneriere Dateien aus Templates...${NC}"
echo ""

# setup-paths.sh erwartet interaktive Eingaben, also übergebe Defaults
if [ ! -f "$SCRIPT_DIR/setup-paths.sh" ]; then
    echo -e "${RED}✗ FEHLER: setup-paths.sh nicht gefunden${NC}"
    exit 1
fi

# Hinweis: setup-paths.sh muss manuell ausgeführt werden (interaktiv)
echo -e "${YELLOW}HINWEIS:${NC} setup-paths.sh ist interaktiv und kann nicht automatisch ausgeführt werden."
echo ""
echo "Bitte führe manuell aus:"
echo -e "  ${BLUE}cd $SCRIPT_DIR${NC}"
echo -e "  ${BLUE}./setup-paths.sh${NC}"
echo ""
echo "Wenn du die gleichen Pfade wie vorher verwenden möchtest:"
echo "  1. Drücke Enter bei allen Prompts (nutzt Defaults)"
echo "  2. Bestätige mit 'j'"
echo ""

# 5. Zeige Diff-Anleitung
if [ ${#MANUAL_EDITS[@]} -gt 0 ]; then
    echo -e "${BLUE}Nach Regenerierung:${NC}"
    echo ""
    echo "Um Unterschiede zu prüfen:"
    echo ""
    for file in "${MANUAL_EDITS[@]}"; do
        backup_file="${file}.manual-edit-backup"
        echo -e "  ${BLUE}diff -u \"$backup_file\" \"$file\"${NC}"
    done
    echo ""
fi

# ==============================================================================
# Zusammenfassung
# ==============================================================================

echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  Nächste Schritte${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo ""

echo "1. Führe setup-paths.sh aus (siehe oben)"
echo ""
echo "2. Nach Regenerierung, prüfe Änderungen:"
echo -e "   ${BLUE}./validate-template-integrity.sh${NC}"
echo ""
echo "3. Prüfe Diffs zwischen Backup und neu generiert:"
echo "   (siehe Befehle oben)"
echo ""
echo "4. Lösche Backups wenn alles OK:"
echo -e "   ${BLUE}rm -f *.manual-edit-backup${NC}"
echo ""

exit 0
