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

# Hauptordner
mkdir -p "$TARGET_DIR"

# Unterordner
mkdir -p "$TARGET_DIR/1_Exportierte_Ergebnisse"
mkdir -p "$TARGET_DIR/2_Zentrale_Ressourcen/Lehrplaene"
mkdir -p "$TARGET_DIR/2_Zentrale_Ressourcen/Didaktik"
mkdir -p "$TARGET_DIR/2_Zentrale_Ressourcen/Templates"
mkdir -p "$TARGET_DIR/3_Projekt_Knowledge_Base"
mkdir -p "$TARGET_DIR/4_Klassen_und_Schueler/_templates"

echo -e "${GREEN}✓ Ordnerstruktur erstellt${NC}"

###############################################################################
# Schritt 5: Vorlage-Dateien kopieren
###############################################################################

echo -e "${BLUE}📄 Kopiere Vorlage-Dateien...${NC}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="$SCRIPT_DIR/ordnerstruktur-vorlage/Schul-Materialien"

# Prüfe ob Vorlage existiert
if [ ! -d "$SOURCE_DIR" ]; then
    echo -e "${RED}❌ Fehler: Vorlage-Verzeichnis nicht gefunden: ${SOURCE_DIR}${NC}"
    exit 1
fi

# Kopiere Dateien (überschreibe nicht)
cp -n "$SOURCE_DIR/1_Exportierte_Ergebnisse/.gitkeep" "$TARGET_DIR/1_Exportierte_Ergebnisse/" 2>/dev/null || true
cp -n "$SOURCE_DIR/2_Zentrale_Ressourcen/Lehrplaene/README.md" "$TARGET_DIR/2_Zentrale_Ressourcen/Lehrplaene/" 2>/dev/null || true
cp -n "$SOURCE_DIR/2_Zentrale_Ressourcen/Didaktik/"*.md "$TARGET_DIR/2_Zentrale_Ressourcen/Didaktik/" 2>/dev/null || true
cp -n "$SOURCE_DIR/2_Zentrale_Ressourcen/Templates/"*.md "$TARGET_DIR/2_Zentrale_Ressourcen/Templates/" 2>/dev/null || true
cp -n "$SOURCE_DIR/3_Projekt_Knowledge_Base/README.md" "$TARGET_DIR/3_Projekt_Knowledge_Base/" 2>/dev/null || true

# Kopiere Schülerprofil-Templates
if [ -d "$SOURCE_DIR/4_Klassen_und_Schueler/_templates" ]; then
    cp -n "$SOURCE_DIR/4_Klassen_und_Schueler/_templates/"*.md "$TARGET_DIR/4_Klassen_und_Schueler/_templates/" 2>/dev/null || true
    echo -e "${GREEN}✓ Schülerprofil-Templates kopiert (5 Vorlagen)${NC}"
fi

echo -e "${GREEN}✓ Vorlage-Dateien kopiert${NC}"

###############################################################################
# Schritt 6: Berechtigungen setzen
###############################################################################

echo -e "${BLUE}🔒 Setze Berechtigungen...${NC}"

chmod -R 755 "$TARGET_DIR"

echo -e "${GREEN}✓ Berechtigungen gesetzt${NC}"

###############################################################################
# Schritt 7: Zusammenfassung
###############################################################################

echo ""
echo -e "${GREEN}╔══════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║  ✓ Installation erfolgreich abgeschlossen!              ║${NC}"
echo -e "${GREEN}╚══════════════════════════════════════════════════════════╝${NC}"
echo ""

echo -e "${BLUE}📂 Installierte Ordnerstruktur:${NC}"
echo ""
tree -L 2 "$TARGET_DIR" 2>/dev/null || ls -lR "$TARGET_DIR"
echo ""

echo -e "${YELLOW}📝 Nächste Schritte:${NC}"
echo ""
echo -e "  1. ${BLUE}MCP Filesystem Server konfigurieren:${NC}"
echo -e "     • Öffne: ../claude-desktop-setup/MCP_SETUP_ANLEITUNG.md"
echo -e "     • Passe MCP_CONFIG.json an (Pfad: ${TARGET_DIR})"
echo -e "     • Füge Config in Claude Desktop ein"
echo ""
echo -e "  2. ${BLUE}Claude Desktop Projekte einrichten:${NC}"
echo -e "     • Öffne: ../claude-desktop-setup/README.md"
echo -e "     • Erstelle 3 Projekte in Claude Desktop"
echo -e "     • Kopiere Project Instructions"
echo ""
echo -e "  3. ${BLUE}Skills erstellen:${NC}"
echo -e "     • Aktiviere 'skill-creator' in Claude Desktop"
echo -e "     • Erstelle Skills basierend auf Platzhaltern"
echo -e "     • Siehe: ../claude-desktop-setup/skills-platzhalter/"
echo ""
echo -e "  4. ${BLUE}Lehrpläne hinzufügen (optional):${NC}"
echo -e "     • Kopiere Lehrpläne nach: ${TARGET_DIR}/2_Zentrale_Ressourcen/Lehrplaene/"
echo ""
echo -e "  5. ${BLUE}Schülerprofile erstellen (für Projekt 5):${NC}"
echo -e "     • Nutze Templates in: ${TARGET_DIR}/4_Klassen_und_Schueler/_templates/"
echo -e "     • 5 Vorlagen verfügbar: Allgemein, Lernen, ESE, Sprache, Geistige Entwicklung"
echo -e "     • Siehe README.md im Template-Ordner für Anleitung"
echo ""

echo -e "${GREEN}Viel Erfolg mit dem Lehrkraft-Copilot-System! 🎉${NC}"
echo ""
