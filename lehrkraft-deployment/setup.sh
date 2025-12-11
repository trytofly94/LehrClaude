#!/bin/bash

###############################################################################
# Lehrkraft-Copilot-System: Deployment Script
#
# Dieses Script erstellt die komplette Ordnerstruktur für das
# Lehrkraft-Copilot-System auf dem Rechner einer Lehrkraft.
#
# Verwendung:
#   ./setup.sh [ZIEL-VERZEICHNIS]
#
# Beispiel:
#   ./setup.sh /Users/maria.schmidt/Schul-Materialien
#
# Falls kein Ziel angegeben wird, fragt das Script interaktiv nach.
###############################################################################

set -e  # Beende bei Fehler

# Farben für Ausgaben
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# ============================================================================
# KONFIGURATION: Ordnerstruktur
# ============================================================================

# Haupt-Ordner
declare -a MAIN_FOLDERS=(
    "1_Exportierte_Ergebnisse"
    "2_Zentrale_Ressourcen"
    "3_Projekt_Knowledge_Base"
    "4_Klassen_und_Schueler"
    "5_Export_Stile"
)

# Unterordner mit relativem Pfad
declare -a SUB_FOLDERS=(
    "2_Zentrale_Ressourcen/Lehrplaene"
    "2_Zentrale_Ressourcen/Didaktik"
    "2_Zentrale_Ressourcen/Templates"
    "2_Zentrale_Ressourcen/Piktogramme"
    "2_Zentrale_Ressourcen/Piktogramme/METACOM"
    "4_Klassen_und_Schueler/_templates"
)

# Kritische Dateien die kopiert werden müssen
declare -a REQUIRED_FILES=(
    "1_Exportierte_Ergebnisse/.gitkeep"
    "2_Zentrale_Ressourcen/Lehrplaene/README.md"
    "2_Zentrale_Ressourcen/Didaktik/Bloom-Taxonomie.md"
    "2_Zentrale_Ressourcen/Didaktik/KMK-Operatoren.md"
    "2_Zentrale_Ressourcen/Didaktik/Zitationsrichtlinien.md"
    "4_Klassen_und_Schueler/_templates/schueler-vorlage.md"
    "4_Klassen_und_Schueler/_templates/lernen-vorlage.md"
    "4_Klassen_und_Schueler/_templates/ese-vorlage.md"
    "4_Klassen_und_Schueler/_templates/sprache-vorlage.md"
    "4_Klassen_und_Schueler/_templates/geistige-entwicklung-vorlage.md"
)

# Fehlerstatistik
COPY_SUCCESS=0
COPY_FAILED=0
COPY_SKIPPED=0
ERRORS_CRITICAL=()
ERRORS_WARNING=()

# ============================================================================
# FUNKTIONEN
# ============================================================================

# ----------------------------------------------------------------------------
# Hilfsfunktion: Datei kopieren mit Error-Handling
# ----------------------------------------------------------------------------
copy_file() {
    local source="$1"
    local target="$2"
    local critical="${3:-false}"  # Optional: ist die Datei kritisch?

    local filename=$(basename "$source")

    # Prüfe ob Quelle existiert
    if [ ! -f "$source" ]; then
        if [ "$critical" = "true" ]; then
            echo -e "  ${RED}✗${NC} $filename (KRITISCH - Datei fehlt in Vorlage!)"
            ERRORS_CRITICAL+=("$source fehlt in Vorlage")
            ((COPY_FAILED++))
            return 1
        else
            echo -e "  ${YELLOW}⚠${NC}  $filename (optional - nicht in Vorlage)"
            ERRORS_WARNING+=("$source optional - nicht gefunden")
            ((COPY_SKIPPED++))
            return 0
        fi
    fi

    # Ziel-Verzeichnis erstellen falls nötig
    local target_dir=$(dirname "$target")
    mkdir -p "$target_dir"

    # Kopieren (nur wenn Datei noch nicht existiert)
    if [ -f "$target" ]; then
        echo -e "  ${BLUE}⏭${NC}  $filename (existiert bereits)"
        ((COPY_SKIPPED++))
        return 0
    fi

    if cp "$source" "$target" 2>/dev/null; then
        echo -e "  ${GREEN}✓${NC} $filename"
        ((COPY_SUCCESS++))
        return 0
    else
        echo -e "  ${RED}✗${NC} $filename (Kopieren fehlgeschlagen)"
        ERRORS_CRITICAL+=("Kopieren fehlgeschlagen: $source → $target")
        ((COPY_FAILED++))
        return 1
    fi
}

# ----------------------------------------------------------------------------
# Validierung: Prüfe Voraussetzungen
# ----------------------------------------------------------------------------
validate_prerequisites() {
    local errors=0

    echo -e "${GREEN}Schritt 1/7: Validiere Voraussetzungen${NC}"
    echo ""

    # 1. Prüfe Quelle-Verzeichnis (setze globale Variablen)
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    SOURCE_DIR="$SCRIPT_DIR/ordnerstruktur-vorlage/Schul-Materialien"
    export SCRIPT_DIR SOURCE_DIR

    if [ ! -d "$SOURCE_DIR" ]; then
        echo -e "  ${RED}✗ Quelle-Verzeichnis existiert nicht:${NC}"
        echo -e "    $SOURCE_DIR"
        echo ""
        echo "Hinweis: setup.sh muss aus dem lehrkraft-deployment/ Ordner ausgeführt werden."
        ((errors++))
    else
        echo -e "  ${GREEN}✓${NC} Quelle-Verzeichnis gefunden"
    fi

    # 2. Prüfe ob ordnerstruktur-vorlage/ existiert
    if [ ! -d "$SCRIPT_DIR/ordnerstruktur-vorlage" ]; then
        echo -e "  ${RED}✗ Vorlagen-Ordner fehlt:${NC} ordnerstruktur-vorlage/"
        ((errors++))
    else
        echo -e "  ${GREEN}✓${NC} Vorlagen-Ordner vorhanden"
    fi

    # 3. Prüfe ob kritische Dateien in Vorlage vorhanden sind
    local missing_files=0
    for file in "${REQUIRED_FILES[@]}"; do
        if [ ! -f "$SOURCE_DIR/$file" ]; then
            if [ $missing_files -eq 0 ]; then
                echo -e "  ${YELLOW}⚠${NC}  Fehlende kritische Dateien in Vorlage:"
            fi
            echo -e "    - $file"
            ((missing_files++))
        fi
    done

    if [ $missing_files -gt 0 ]; then
        echo ""
        echo -e "  ${YELLOW}⚠${NC}  $missing_files kritische Dateien fehlen in der Vorlage."
        echo "     Setup kann fortfahren, aber Funktionalität ist eingeschränkt."
    else
        echo -e "  ${GREEN}✓${NC} Alle kritischen Vorlagen-Dateien vorhanden"
    fi

    # 4. Prüfe Ziel-Verzeichnis
    if [ -z "$TARGET_DIR" ]; then
        echo -e "  ${RED}✗ Kein Ziel-Verzeichnis angegeben${NC}"
        ((errors++))
    elif [ -d "$TARGET_DIR" ]; then
        echo -e "  ${BLUE}ℹ${NC}  Ziel-Verzeichnis existiert bereits"
        echo "     Vorhandene Dateien werden NICHT überschrieben"
    else
        echo -e "  ${GREEN}✓${NC} Ziel-Verzeichnis wird erstellt"
    fi

    echo ""

    # Abbruch bei kritischen Fehlern
    if [ $errors -gt 0 ]; then
        echo -e "${RED}✗ $errors kritische Fehler gefunden. Abbruch.${NC}"
        echo ""
        exit 1
    fi

    echo -e "${GREEN}✓ Alle Voraussetzungen erfüllt${NC}"
    echo ""
}

# Banner
echo -e "${BLUE}"
echo "╔══════════════════════════════════════════════════════════╗"
echo "║  Lehrkraft-Copilot-System - Deployment Script           ║"
echo "║  Version 1.0                                             ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo -e "${NC}"

###############################################################################
# Schritt 1: Zielverzeichnis bestimmen
###############################################################################

if [ -z "$1" ]; then
    echo -e "${YELLOW}Bitte gib das Zielverzeichnis für die Installation an:${NC}"
    echo -e "${BLUE}Beispiel: /Users/$(whoami)/Schul-Materialien${NC}"
    read -p "Zielverzeichnis: " TARGET_DIR
else
    TARGET_DIR="$1"
fi

# Entferne trailing slash
TARGET_DIR="${TARGET_DIR%/}"

echo ""
echo -e "${BLUE}Zielverzeichnis: ${TARGET_DIR}${NC}"
echo ""

###############################################################################
# Schritt 1: Validiere Voraussetzungen (ZUERST!)
###############################################################################

validate_prerequisites

###############################################################################
# Schritt 2: Prüfe ob Verzeichnis bereits existiert
###############################################################################

if [ -d "$TARGET_DIR" ]; then
    echo -e "${YELLOW}⚠️  Warnung: Das Verzeichnis existiert bereits!${NC}"
    echo -e "Inhalt: $(ls -la "$TARGET_DIR" | wc -l) Einträge"
    echo ""
    read -p "Möchtest du fortfahren? Bestehende Dateien werden NICHT überschrieben. (j/n): " CONFIRM

    if [ "$CONFIRM" != "j" ] && [ "$CONFIRM" != "J" ]; then
        echo -e "${RED}❌ Abbruch durch Benutzer${NC}"
        exit 1
    fi
fi

###############################################################################
# Schritt 3: Systemvoraussetzungen prüfen
###############################################################################

echo -e "${BLUE}📋 Prüfe Systemvoraussetzungen...${NC}"

# Prüfe macOS
if [[ "$OSTYPE" != "darwin"* ]]; then
    echo -e "${RED}❌ Dieses Script ist nur für macOS gedacht!${NC}"
    exit 1
fi
echo -e "${GREEN}✓ macOS erkannt${NC}"

# Prüfe Claude Desktop Installation
if [ ! -d "/Applications/Claude.app" ]; then
    echo -e "${YELLOW}⚠️  Claude Desktop nicht gefunden in /Applications/${NC}"
    echo -e "Bitte installiere Claude Desktop: https://claude.ai/download"
    read -p "Trotzdem fortfahren? (j/n): " CONFIRM
    if [ "$CONFIRM" != "j" ] && [ "$CONFIRM" != "J" ]; then
        exit 1
    fi
else
    echo -e "${GREEN}✓ Claude Desktop gefunden${NC}"
fi

# Prüfe Node.js Installation (für MCP)
if ! command -v node &> /dev/null; then
    echo -e "${YELLOW}⚠️  Node.js nicht installiert (für MCP benötigt)${NC}"
    echo -e "Empfehlung: Installiere Node.js von https://nodejs.org/"
    read -p "Trotzdem fortfahren? (j/n): " CONFIRM
    if [ "$CONFIRM" != "j" ] && [ "$CONFIRM" != "J" ]; then
        exit 1
    fi
else
    NODE_VERSION=$(node --version)
    echo -e "${GREEN}✓ Node.js ${NODE_VERSION} gefunden${NC}"
fi

echo ""

###############################################################################
# Schritt 4: Ordnerstruktur erstellen
###############################################################################

echo -e "${BLUE}📁 Erstelle Ordnerstruktur...${NC}"
echo ""

# Hauptordner
mkdir -p "$TARGET_DIR"

# Erstelle Haupt-Ordner
for folder in "${MAIN_FOLDERS[@]}"; do
    mkdir -p "$TARGET_DIR/$folder"
    echo -e "  ${GREEN}✓${NC} $folder/"
done

# Erstelle Unterordner
for folder in "${SUB_FOLDERS[@]}"; do
    mkdir -p "$TARGET_DIR/$folder"
    echo -e "  ${GREEN}✓${NC} $folder/"
done

echo ""
echo -e "${GREEN}✓ Ordnerstruktur erstellt${NC}"

###############################################################################
# Schritt 5: Vorlage-Dateien kopieren
###############################################################################

echo -e "${BLUE}📄 Kopiere Vorlage-Dateien...${NC}"
echo ""

# Kritische Dateien (MÜSSEN vorhanden sein)
copy_file "$SOURCE_DIR/1_Exportierte_Ergebnisse/.gitkeep" \
          "$TARGET_DIR/1_Exportierte_Ergebnisse/.gitkeep" \
          true

copy_file "$SOURCE_DIR/2_Zentrale_Ressourcen/Lehrplaene/README.md" \
          "$TARGET_DIR/2_Zentrale_Ressourcen/Lehrplaene/README.md" \
          true

copy_file "$SOURCE_DIR/2_Zentrale_Ressourcen/Didaktik/Bloom-Taxonomie.md" \
          "$TARGET_DIR/2_Zentrale_Ressourcen/Didaktik/Bloom-Taxonomie.md" \
          true

copy_file "$SOURCE_DIR/2_Zentrale_Ressourcen/Didaktik/KMK-Operatoren.md" \
          "$TARGET_DIR/2_Zentrale_Ressourcen/Didaktik/KMK-Operatoren.md" \
          true

copy_file "$SOURCE_DIR/2_Zentrale_Ressourcen/Didaktik/Zitationsrichtlinien.md" \
          "$TARGET_DIR/2_Zentrale_Ressourcen/Didaktik/Zitationsrichtlinien.md" \
          true

copy_file "$SOURCE_DIR/3_Projekt_Knowledge_Base/README.md" \
          "$TARGET_DIR/3_Projekt_Knowledge_Base/README.md" \
          true

# Schülerprofil-Templates (kritisch)
copy_file "$SOURCE_DIR/4_Klassen_und_Schueler/_templates/schueler-vorlage.md" \
          "$TARGET_DIR/4_Klassen_und_Schueler/_templates/schueler-vorlage.md" \
          true

copy_file "$SOURCE_DIR/4_Klassen_und_Schueler/_templates/lernen-vorlage.md" \
          "$TARGET_DIR/4_Klassen_und_Schueler/_templates/lernen-vorlage.md" \
          true

copy_file "$SOURCE_DIR/4_Klassen_und_Schueler/_templates/ese-vorlage.md" \
          "$TARGET_DIR/4_Klassen_und_Schueler/_templates/ese-vorlage.md" \
          true

copy_file "$SOURCE_DIR/4_Klassen_und_Schueler/_templates/sprache-vorlage.md" \
          "$TARGET_DIR/4_Klassen_und_Schueler/_templates/sprache-vorlage.md" \
          true

copy_file "$SOURCE_DIR/4_Klassen_und_Schueler/_templates/geistige-entwicklung-vorlage.md" \
          "$TARGET_DIR/4_Klassen_und_Schueler/_templates/geistige-entwicklung-vorlage.md" \
          true

# Piktogramme READMEs (kritisch)
copy_file "$SOURCE_DIR/2_Zentrale_Ressourcen/Piktogramme/README.md" \
          "$TARGET_DIR/2_Zentrale_Ressourcen/Piktogramme/README.md" \
          true

copy_file "$SOURCE_DIR/2_Zentrale_Ressourcen/Piktogramme/METACOM/README.md" \
          "$TARGET_DIR/2_Zentrale_Ressourcen/Piktogramme/METACOM/README.md" \
          true

# Export-Stile Dateien (kritisch)
copy_file "$SOURCE_DIR/5_Export_Stile/README.md" \
          "$TARGET_DIR/5_Export_Stile/README.md" \
          true

# Optional: schulfarben-beispiel
copy_file "$SOURCE_DIR/5_Export_Stile/schulfarben-beispiel.md" \
          "$TARGET_DIR/5_Export_Stile/schulfarben-beispiel.md" \
          false

# Templates (optional - könnten fehlen)
copy_file "$SOURCE_DIR/2_Zentrale_Ressourcen/Templates/arbeitsblatt-vorlage.md" \
          "$TARGET_DIR/2_Zentrale_Ressourcen/Templates/arbeitsblatt-vorlage.md" \
          false

copy_file "$SOURCE_DIR/2_Zentrale_Ressourcen/Templates/praesentation-vorlage.md" \
          "$TARGET_DIR/2_Zentrale_Ressourcen/Templates/praesentation-vorlage.md" \
          false

echo ""
echo -e "${GREEN}✓ Vorlage-Dateien kopiert (Details siehe oben)${NC}"

###############################################################################
# Schritt 6: Berechtigungen setzen
###############################################################################

echo -e "${BLUE}🔒 Setze Berechtigungen...${NC}"

chmod -R 755 "$TARGET_DIR"

echo -e "${GREEN}✓ Berechtigungen gesetzt${NC}"

###############################################################################
# Schritt 7: Zusammenfassung & Fehlerreport
###############################################################################

echo ""
echo -e "${BLUE}╔══════════════════════════════════════════════════════════╗${NC}"

# Prüfe ob kritische Fehler aufgetreten sind
if [ ${#ERRORS_CRITICAL[@]} -gt 0 ]; then
    echo -e "${RED}║         Setup MIT FEHLERN abgeschlossen                  ║${NC}"
    echo -e "${BLUE}╚══════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${RED}KRITISCHE FEHLER:${NC}"
    for error in "${ERRORS_CRITICAL[@]}"; do
        echo -e "  ${RED}✗${NC} $error"
    done
    echo ""

    if [ ${#ERRORS_WARNING[@]} -gt 0 ]; then
        echo -e "${YELLOW}WARNUNGEN:${NC}"
        for warning in "${ERRORS_WARNING[@]}"; do
            echo -e "  ${YELLOW}⚠${NC}  $warning"
        done
        echo ""
    fi

    echo -e "${YELLOW}Statistik:${NC}"
    echo "  Dateien erfolgreich kopiert: $COPY_SUCCESS"
    echo "  Dateien fehlgeschlagen:       $COPY_FAILED"
    echo "  Dateien übersprungen:         $COPY_SKIPPED"
    echo ""

    exit 1

elif [ ${#ERRORS_WARNING[@]} -gt 0 ]; then
    echo -e "${YELLOW}║      Setup abgeschlossen (mit Warnungen)                 ║${NC}"
    echo -e "${BLUE}╚══════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}WARNUNGEN:${NC}"
    for warning in "${ERRORS_WARNING[@]}"; do
        echo -e "  ${YELLOW}⚠${NC}  $warning"
    done
    echo ""
else
    echo -e "${GREEN}║       ✓ Setup erfolgreich abgeschlossen!                 ║${NC}"
    echo -e "${BLUE}╚══════════════════════════════════════════════════════════╝${NC}"
    echo ""
fi

echo -e "${GREEN}Statistik:${NC}"
echo "  Dateien erfolgreich kopiert: $COPY_SUCCESS"
echo "  Dateien übersprungen:         $COPY_SKIPPED"
if [ $COPY_FAILED -gt 0 ]; then
    echo "  Fehlerhafte Dateien:          $COPY_FAILED"
fi
echo ""
echo -e "${GREEN}Ziel-Verzeichnis:${NC}"
echo "  $TARGET_DIR"
echo ""

# Nächste Schritte nur bei Erfolg oder Warnungen (nicht bei kritischen Fehlern)
if [ ${#ERRORS_CRITICAL[@]} -eq 0 ]; then
    echo -e "${YELLOW}📝 Nächste Schritte:${NC}"
    echo ""
    echo -e "  1. ${BLUE}Prüfe die Ordnerstruktur:${NC}"
    echo -e "     ls -la $TARGET_DIR"
    echo ""
    echo -e "  2. ${BLUE}MCP Filesystem Server konfigurieren:${NC}"
    echo -e "     • Öffne: ../claude-desktop-setup/MCP_SETUP_ANLEITUNG.md"
    echo -e "     • Passe MCP_CONFIG.json an (Pfad: ${TARGET_DIR})"
    echo -e "     • Füge Config in Claude Desktop ein"
    echo ""
    echo -e "  3. ${BLUE}Claude Desktop Projekte einrichten:${NC}"
    echo -e "     • Öffne: ../claude-desktop-setup/README.md"
    echo -e "     • Erstelle 5 Projekte in Claude Desktop"
    echo ""
    echo -e "  4. ${BLUE}Lehrpläne hinzufügen (optional):${NC}"
    echo -e "     • Kopiere Lehrpläne nach:"
    echo -e "       ${TARGET_DIR}/2_Zentrale_Ressourcen/Lehrplaene/"
    echo ""
    echo -e "  5. ${BLUE}Schülerprofile erstellen (für Förderschule):${NC}"
    echo -e "     • Nutze Templates in: 4_Klassen_und_Schueler/_templates/"
    echo -e "     • 5 Vorlagen verfügbar: Allgemein, Lernen, ESE, Sprache, GE"
    echo ""
    echo -e "  6. ${BLUE}METACOM-Piktogramme ablegen (für GE-Material):${NC}"
    echo -e "     • Kopiere METACOM-Symbole nach:"
    echo -e "       ${TARGET_DIR}/2_Zentrale_Ressourcen/Piktogramme/METACOM/"
    echo ""
    echo -e "  7. ${BLUE}Schulfarben anpassen (optional):${NC}"
    echo -e "     • Definiere Schulfarben in: 5_Export_Stile/schulfarben.md"
    echo -e "     • Lege Schullogo ab: 5_Export_Stile/schullogo.png"
    echo ""

    echo -e "${GREEN}Viel Erfolg mit dem Lehrkraft-Copilot-System! 🎉${NC}"
    echo ""
fi
