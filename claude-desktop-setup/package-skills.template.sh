#!/bin/bash

# ==============================================================================
# Skill-Packaging-Skript für Lehrkraft-Copilot-System
# ==============================================================================
# Erstellt ZIP-Dateien für alle Custom Skills im skills/ Ordner
# Ausgabe: skill-packages/ Ordner mit allen gepackten Skills
#
# Verwendung:
#   ./package-skills.sh          # Standard: Nur geänderte Skills packen
#   ./package-skills.sh --force  # Alle Skills neu packen (ignoriert Zeitstempel)
#   ./package-skills.sh --clean  # Alte ZIPs löschen vor dem Packen
#   ./package-skills.sh --verify # ZIP-Inhalte nach dem Packen prüfen
# ==============================================================================

# Nicht bei Exit-Code 3 abbrechen (übersprungene Skills)
set -e

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
OUTPUT_DIR="{{PACKAGES_PATH}}"

# Optionen
CLEAN=false
VERIFY=false
FORCE=false

# Parameter verarbeiten
for arg in "$@"; do
    case $arg in
        --clean)
            CLEAN=true
            shift
            ;;
        --verify)
            VERIFY=true
            shift
            ;;
        --force)
            FORCE=true
            shift
            ;;
        --help|-h)
            echo "Verwendung: $0 [OPTIONEN]"
            echo ""
            echo "Optionen:"
            echo "  --force   Alle Skills neu packen (ignoriert Zeitstempel)"
            echo "  --clean   Alte ZIP-Dateien vor dem Packen löschen"
            echo "  --verify  ZIP-Inhalte nach dem Packen prüfen"
            echo "  --help    Diese Hilfe anzeigen"
            exit 0
            ;;
        *)
            echo -e "${RED}Unbekannte Option: $arg${NC}"
            echo "Nutze --help für Hilfe"
            exit 1
            ;;
    esac
done

# ==============================================================================
# Funktionen
# ==============================================================================

print_header() {
    echo ""
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}  Skill-Packaging für Claude Desktop${NC}"
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
}

check_prerequisites() {
    echo -e "${YELLOW}→${NC} Prüfe Voraussetzungen..."

    # Prüfe ob skills/ Ordner existiert
    if [ ! -d "$SKILLS_DIR" ]; then
        echo -e "${RED}✗${NC} Fehler: skills/ Ordner nicht gefunden!"
        echo "   Erwarteter Pfad: $SKILLS_DIR"
        exit 1
    fi

    # Prüfe ob zip installiert ist
    if ! command -v zip &> /dev/null; then
        echo -e "${RED}✗${NC} Fehler: 'zip' Befehl nicht gefunden!"
        echo "   Installiere zip: brew install zip"
        exit 1
    fi

    echo -e "${GREEN}✓${NC} Voraussetzungen erfüllt"
}

create_output_dir() {
    echo -e "${YELLOW}→${NC} Erstelle Ausgabe-Ordner..."

    if [ "$CLEAN" = true ] && [ -d "$OUTPUT_DIR" ]; then
        echo -e "${YELLOW}  Lösche alte ZIP-Dateien...${NC}"
        rm -rf "$OUTPUT_DIR"/*.zip 2>/dev/null || true
    fi

    mkdir -p "$OUTPUT_DIR"
    echo -e "${GREEN}✓${NC} Ausgabe-Ordner bereit: skill-packages/"
}

validate_skill() {
    local skill_dir="$1"
    local skill_name=$(basename "$skill_dir")

    # Prüfe ob SKILL.md existiert
    if [ ! -f "$skill_dir/SKILL.md" ]; then
        echo -e "${RED}✗${NC} $skill_name: SKILL.md nicht gefunden"
        return 1
    fi

    # Prüfe ob YAML Frontmatter vorhanden ist
    if ! grep -q "^---" "$skill_dir/SKILL.md"; then
        echo -e "${YELLOW}⚠${NC} $skill_name: Kein YAML Frontmatter gefunden"
        return 2
    fi

    return 0
}

needs_update() {
    local skill_dir="$1"
    local zip_file="$2"

    # Wenn --force gesetzt ist, immer neu packen
    if [ "$FORCE" = true ]; then
        return 0
    fi

    # Wenn ZIP nicht existiert, muss gepackt werden
    if [ ! -f "$zip_file" ]; then
        return 0
    fi

    # Finde neueste Datei im Skill-Ordner (rekursiv)
    local newest_file=$(find "$skill_dir" -type f -print0 | xargs -0 stat -f "%m %N" | sort -rn | head -1 | cut -d' ' -f2-)

    # Wenn kein File gefunden, skip
    if [ -z "$newest_file" ]; then
        return 1
    fi

    # Vergleiche Änderungszeitstempel
    local skill_mtime=$(stat -f "%m" "$newest_file")
    local zip_mtime=$(stat -f "%m" "$zip_file")

    # Wenn Skill neuer als ZIP, muss neu gepackt werden
    if [ "$skill_mtime" -gt "$zip_mtime" ]; then
        return 0
    fi

    # Sonst: Kein Update nötig
    return 1
}

package_skill() {
    local skill_dir="$1"
    local skill_name=$(basename "$skill_dir")
    local zip_file="$OUTPUT_DIR/${skill_name}.zip"

    # Validierung
    validate_skill "$skill_dir"
    local validation_result=$?

    if [ $validation_result -eq 1 ]; then
        return 1
    fi

    # Prüfe ob Update nötig ist
    if ! needs_update "$skill_dir" "$zip_file"; then
        echo -e "${BLUE}⏭️${NC}  $skill_name (keine Änderungen)"
        return 3  # Spezieller Return-Code für "übersprungen"
    fi

    # ZIP erstellen (wichtig: Ordner als Root!)
    cd "$(dirname "$skill_dir")"
    zip -r -q "$zip_file" "$skill_name/" -x "*/.*" "*.DS_Store"

    if [ $? -eq 0 ]; then
        local size=$(du -h "$zip_file" | cut -f1)

        # Unterscheide zwischen neu erstellt und aktualisiert
        if [ -f "$zip_file" ]; then
            echo -e "${GREEN}🔄${NC} $skill_name (${size}) - aktualisiert"
        else
            echo -e "${GREEN}✓${NC} $skill_name (${size}) - neu erstellt"
        fi

        # Optional: ZIP-Inhalt verifizieren
        if [ "$VERIFY" = true ]; then
            verify_zip "$zip_file" "$skill_name"
        fi

        return 0
    else
        echo -e "${RED}✗${NC} $skill_name: ZIP-Erstellung fehlgeschlagen"
        return 1
    fi
}

verify_zip() {
    local zip_file="$1"
    local skill_name="$2"

    # Prüfe ob ZIP korrekte Struktur hat
    local contents=$(unzip -l "$zip_file" | grep -c "${skill_name}/SKILL.md" || true)

    if [ "$contents" -eq 0 ]; then
        echo -e "${RED}  ⚠ Warnung: SKILL.md nicht im erwarteten Pfad${NC}"
        unzip -l "$zip_file" | head -5
    fi
}

# ==============================================================================
# Hauptlogik
# ==============================================================================

print_header
check_prerequisites
create_output_dir

echo ""
echo -e "${YELLOW}→${NC} Packe Skills..."
echo ""

# Zähler
total=0
success=0
warnings=0
failed=0
skipped=0

# Alle Skill-Ordner durchlaufen
for skill_dir in "$SKILLS_DIR"/*/; do
    # Überspringe nicht-Verzeichnisse und versteckte Ordner
    [ -d "$skill_dir" ] || continue
    [[ "$(basename "$skill_dir")" == .* ]] && continue

    total=$((total + 1))

    # Temporär set -e deaktivieren für package_skill
    set +e
    package_skill "$skill_dir"
    result=$?
    set -e

    if [ $result -eq 0 ]; then
        success=$((success + 1))
    elif [ $result -eq 2 ]; then
        warnings=$((warnings + 1))
        success=$((success + 1))  # Trotzdem erfolgreich gepackt
    elif [ $result -eq 3 ]; then
        skipped=$((skipped + 1))  # Übersprungen (keine Änderungen)
    else
        failed=$((failed + 1))
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
echo -e "  Gesamt:        $total Skills"
echo -e "  ${GREEN}Gepackt:       $success${NC}"
if [ $skipped -gt 0 ]; then
    echo -e "  ${BLUE}Übersprungen:  $skipped${NC} (keine Änderungen)"
fi
if [ $warnings -gt 0 ]; then
    echo -e "  ${YELLOW}Warnungen:     $warnings${NC}"
fi
if [ $failed -gt 0 ]; then
    echo -e "  ${RED}Fehlgeschlagen: $failed${NC}"
fi
echo ""
echo -e "  Ausgabe-Ordner: ${BLUE}$OUTPUT_DIR${NC}"
echo ""

# Liste aller ZIP-Dateien (nur wenn welche gepackt wurden)
if [ $success -gt 0 ]; then
    echo -e "${YELLOW}Aktualisierte Skills:${NC}"
    ls -lht "$OUTPUT_DIR"/*.zip 2>/dev/null | head -n $((success + 5)) | awk '{printf "  %s  %s\n", $5, $9}' | sed "s|$OUTPUT_DIR/||"
    echo ""
fi

# Hinweis wenn nichts zu tun war
if [ $success -eq 0 ] && [ $skipped -gt 0 ]; then
    echo -e "${GREEN}✓${NC} Alle Skills sind auf dem neuesten Stand!"
    echo -e "  Nutze ${YELLOW}--force${NC} um alle Skills neu zu packen."
    echo ""
fi

echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo ""

# Exit-Code basierend auf Ergebnis
if [ $failed -gt 0 ]; then
    exit 1
else
    exit 0
fi
