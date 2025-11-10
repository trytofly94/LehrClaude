#!/bin/bash

# ============================================================================
# Setup-Script für Lehrkraft-Copilot-System: Pfad-Konfiguration
# ============================================================================
#
# Dieses Script muss EINMAL bei der ersten Installation ausgeführt werden.
# Es fragt den IT-Admin nach zwei Pfaden:
#   1. Repository-Pfad (wo dieses Script liegt)
#   2. Arbeitsverzeichnis-Pfad (wo die Lehrkraft arbeitet)
#
# Verwendung:
#   ./setup-paths.sh
#
# ============================================================================

set -e  # Bei Fehler abbrechen

# Farben für Output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Script-Verzeichnis ermitteln
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "${BLUE}╔═══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║     Lehrkraft-Copilot-System: Pfad-Konfiguration            ║${NC}"
echo -e "${BLUE}╚═══════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo "Dieses Script konfiguriert zwei wichtige Pfade:"
echo ""
echo "  1️⃣  Repository-Pfad (wo Skills & Scripts liegen)"
echo "  2️⃣  Arbeitsverzeichnis (wo Lehrkraft Materialien speichert)"
echo ""
echo "Das Script muss nur einmal bei der Installation ausgeführt werden."
echo ""

# ============================================================================
# 1. Prüfe ob CONFIG.sh bereits existiert
# ============================================================================

if [ -f "$SCRIPT_DIR/CONFIG.sh" ]; then
    echo -e "${YELLOW}⚠️  CONFIG.sh existiert bereits!${NC}"
    echo ""
    echo "Möchtest du die Pfade neu konfigurieren?"
    echo "Dies überschreibt alle bisherigen Einstellungen."
    echo ""
    read -p "Fortfahren? (j/n): " confirm

    if [[ ! "$confirm" =~ ^[jJ]$ ]]; then
        echo -e "${BLUE}ℹ️  Abbruch. Keine Änderungen vorgenommen.${NC}"
        exit 0
    fi

    echo ""
fi

# ============================================================================
# 2. Frage nach Repository-Pfad
# ============================================================================

echo -e "${GREEN}Schritt 1/5: Repository-Pfad festlegen${NC}"
echo ""
echo "📁 Dies ist der Pfad, wo dieses Repository geklont wurde."
echo "   Hier liegen die Skills, Scripts und Projekt-Ordner."
echo ""
echo -e "   Vorschlag: ${BLUE}$SCRIPT_DIR${NC}"
echo ""

# Default-Wert: Das Verzeichnis, in dem das Script liegt
default_repo_path="$SCRIPT_DIR"

read -p "Repository-Pfad [$default_repo_path]: " user_repo_path

# Wenn leer, nutze default
if [ -z "$user_repo_path" ]; then
    REPO_BASE="$default_repo_path"
else
    REPO_BASE="$user_repo_path"
fi

# Entferne trailing slash falls vorhanden
REPO_BASE="${REPO_BASE%/}"

echo ""
echo -e "${BLUE}➜ Repository-Pfad: $REPO_BASE${NC}"
echo ""

# ============================================================================
# 3. Validiere Repository-Pfad
# ============================================================================

echo -e "${GREEN}Schritt 2/5: Repository-Pfad validieren${NC}"
echo ""

# Prüfe ob Pfad existiert
if [ ! -d "$REPO_BASE" ]; then
    echo -e "${RED}✗ Fehler: Pfad existiert nicht: $REPO_BASE${NC}"
    exit 1
fi

# Prüfe ob Skills-Ordner existiert
if [ ! -d "$REPO_BASE/skills" ]; then
    echo -e "${YELLOW}⚠️  Warnung: skills/ Ordner nicht gefunden in $REPO_BASE${NC}"
    echo "Möchtest du trotzdem fortfahren?"
    read -p "(j/n): " confirm

    if [[ ! "$confirm" =~ ^[jJ]$ ]]; then
        echo -e "${BLUE}ℹ️  Abbruch.${NC}"
        exit 0
    fi
fi

echo -e "${GREEN}✓ Repository-Pfad validiert${NC}"
echo ""

# ============================================================================
# 4. Frage nach Arbeitsverzeichnis-Pfad
# ============================================================================

echo -e "${GREEN}Schritt 3/5: Arbeitsverzeichnis-Pfad festlegen${NC}"
echo ""
echo "📚 Dies ist das Arbeitsverzeichnis der Lehrkraft."
echo "   Hier werden Ressourcen (Lehrpläne, etc.) und exportierte"
echo "   Ergebnisse (Unterrichtsreihen, Arbeitsblätter) gespeichert."
echo ""
echo "   Typische Pfade:"
echo "     - /Users/LEHRKRAFT/Schul-Materialien"
echo "     - /Users/LEHRKRAFT/Documents/Schule"
echo "     - ~/Schul-Materialien"
echo ""

# Default: ~/Schul-Materialien
default_workspace_path="$HOME/Schul-Materialien"

read -p "Arbeitsverzeichnis-Pfad [$default_workspace_path]: " user_workspace_path

# Wenn leer, nutze default
if [ -z "$user_workspace_path" ]; then
    WORKSPACE_BASE="$default_workspace_path"
else
    WORKSPACE_BASE="$user_workspace_path"
fi

# Entferne trailing slash falls vorhanden
WORKSPACE_BASE="${WORKSPACE_BASE%/}"

# Expandiere ~ zu $HOME
WORKSPACE_BASE="${WORKSPACE_BASE/#\~/$HOME}"

echo ""
echo -e "${BLUE}➜ Arbeitsverzeichnis: $WORKSPACE_BASE${NC}"
echo ""

# ============================================================================
# 5. Validiere/Erstelle Arbeitsverzeichnis
# ============================================================================

echo -e "${GREEN}Schritt 4/5: Arbeitsverzeichnis prüfen${NC}"
echo ""

# Prüfe ob Pfad existiert
if [ ! -d "$WORKSPACE_BASE" ]; then
    echo -e "${YELLOW}⚠️  Arbeitsverzeichnis existiert noch nicht: $WORKSPACE_BASE${NC}"
    echo ""
    echo "Soll das Verzeichnis jetzt erstellt werden?"
    echo "Folgende Struktur wird angelegt:"
    echo ""
    echo "  $WORKSPACE_BASE/"
    echo "  ├── 1_Exportierte_Ergebnisse/"
    echo "  └── 2_Zentrale_Ressourcen/"
    echo "      ├── Lehrplaene/"
    echo "      ├── Didaktik/"
    echo "      └── Templates/"
    echo ""
    read -p "Verzeichnisstruktur erstellen? (j/n): " create_workspace

    if [[ "$create_workspace" =~ ^[jJ]$ ]]; then
        mkdir -p "$WORKSPACE_BASE/1_Exportierte_Ergebnisse"
        mkdir -p "$WORKSPACE_BASE/2_Zentrale_Ressourcen/Lehrplaene"
        mkdir -p "$WORKSPACE_BASE/2_Zentrale_Ressourcen/Didaktik"
        mkdir -p "$WORKSPACE_BASE/2_Zentrale_Ressourcen/Templates"
        echo -e "${GREEN}✓ Verzeichnisstruktur erstellt${NC}"
    else
        echo -e "${YELLOW}⚠️  Verzeichnis wurde nicht erstellt.${NC}"
        echo "   Du musst es manuell anlegen, bevor du das System nutzen kannst."
    fi
else
    echo -e "${GREEN}✓ Arbeitsverzeichnis existiert bereits${NC}"
fi

echo ""

# ============================================================================
# 6. Erstelle CONFIG.sh aus Template
# ============================================================================

echo -e "${GREEN}Schritt 5/5: Konfigurationsdateien generieren${NC}"
echo ""

if [ ! -f "$SCRIPT_DIR/CONFIG.sh.template" ]; then
    echo -e "${RED}✗ Fehler: CONFIG.sh.template nicht gefunden${NC}"
    exit 1
fi

# Ersetze Platzhalter
sed -e "s|{{REPO_BASE}}|$REPO_BASE|g" \
    -e "s|{{WORKSPACE_BASE}}|$WORKSPACE_BASE|g" \
    -e "s|{{BASE_PATH}}|$REPO_BASE|g" \
    "$SCRIPT_DIR/CONFIG.sh.template" > "$SCRIPT_DIR/CONFIG.sh"

# Mache ausführbar
chmod +x "$SCRIPT_DIR/CONFIG.sh"

echo -e "${GREEN}✓ CONFIG.sh erstellt${NC}"
echo ""

# ============================================================================
# 7. Ersetze Platzhalter in allen Template-Dateien
# ============================================================================

echo -e "  ${BLUE}Verarbeite Template-Dateien...${NC}"
echo ""

# Funktion zum Ersetzen von Platzhaltern
process_template() {
    local template_file="$1"
    local output_file="${template_file%.template}"

    echo -e "    ${BLUE}➜${NC} $(basename "$template_file")"

    # Ersetze alle Platzhalter
    sed -e "s|{{REPO_BASE}}|$REPO_BASE|g" \
        -e "s|{{WORKSPACE_BASE}}|$WORKSPACE_BASE|g" \
        -e "s|{{BASE_PATH}}|$REPO_BASE|g" \
        -e "s|{{SKILLS_PATH}}|$REPO_BASE/skills|g" \
        -e "s|{{PACKAGES_PATH}}|$REPO_BASE/skill-packages|g" \
        -e "s|{{RESOURCES_PATH}}|$WORKSPACE_BASE/2_Zentrale_Ressourcen|g" \
        -e "s|{{EXPORT_PATH}}|$WORKSPACE_BASE/1_Exportierte_Ergebnisse|g" \
        "$template_file" > "$output_file"

    # Wenn .sh Datei, mache ausführbar
    if [[ "$output_file" == *.sh ]]; then
        chmod +x "$output_file"
    fi
}

# Finde alle .template Dateien (rekursiv)
template_count=0
while IFS= read -r -d '' template_file; do
    process_template "$template_file"
    ((template_count++))
done < <(find "$SCRIPT_DIR" -name "*.template" -type f -print0)

echo ""
echo -e "${GREEN}✓ $template_count Template-Dateien verarbeitet${NC}"
echo ""

# ============================================================================
# 8. Zusammenfassung
# ============================================================================

echo -e "${BLUE}╔═══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                    Setup abgeschlossen!                      ║${NC}"
echo -e "${BLUE}╚═══════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${GREEN}✓${NC} Repository:              $REPO_BASE"
echo -e "${GREEN}✓${NC} Arbeitsverzeichnis:      $WORKSPACE_BASE"
echo -e "${GREEN}✓${NC} CONFIG.sh erstellt"
echo -e "${GREEN}✓${NC} $template_count Template-Dateien verarbeitet"
echo ""
echo "Nächste Schritte:"
echo ""
echo "1. Prüfe die Konfiguration:"
echo -e "   ${BLUE}./CONFIG.sh${NC}"
echo ""
echo "2. Prüfe ob Arbeitsverzeichnis korrekt ist:"
echo -e "   ${BLUE}ls -la $WORKSPACE_BASE${NC}"
echo ""
echo "3. Validiere einen Skill:"
echo -e "   ${BLUE}./validate-skill.sh 02-sachanalyse${NC}"
echo ""
echo "4. Fahre fort mit README.md:"
echo -e "   ${BLUE}Schritt 1: MCP Filesystem Server konfigurieren${NC}"
echo ""
echo -e "${YELLOW}Hinweis:${NC} Wenn du Pfade später ändern musst,"
echo "         führe einfach dieses Script erneut aus:"
echo -e "         ${BLUE}./setup-paths.sh${NC}"
echo ""
