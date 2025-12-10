#!/bin/bash

# ==============================================================================
# Git Pre-Commit Hook für LehrClaude
# ==============================================================================
# Führt Kohärenz-Checks vor jedem Commit aus
# ==============================================================================

# Farben
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Pfade
# Wenn als Git Hook installiert: .git/hooks/pre-commit
# Dann ist REPO_ROOT zwei Ebenen höher
if [ -d ".git" ]; then
    # Direkt im Repo ausgeführt
    REPO_ROOT="$(pwd)"
else
    # Als Git Hook ausgeführt (.git/hooks/pre-commit)
    REPO_ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
fi

COHERENCE_CHECK="$REPO_ROOT/claude-desktop-setup/coherence-check.sh"

# ==============================================================================
# Hauptlogik
# ==============================================================================

echo ""
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  Git Pre-Commit: Kohärenz-Check${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo ""

# Prüfe ob coherence-check.sh existiert
if [ ! -f "$COHERENCE_CHECK" ]; then
    echo -e "${YELLOW}⚠️  Warnung: coherence-check.sh nicht gefunden${NC}"
    echo ""
    echo "Erwarteter Pfad: $COHERENCE_CHECK"
    echo ""
    echo "Hook übersprungen. Commit wird fortgesetzt."
    echo ""
    exit 0
fi

if [ ! -x "$COHERENCE_CHECK" ]; then
    echo -e "${YELLOW}⚠️  Warnung: coherence-check.sh nicht ausführbar${NC}"
    echo ""
    echo "Lösung:"
    echo "  chmod +x $COHERENCE_CHECK"
    echo ""
    echo "Hook übersprungen. Commit wird fortgesetzt."
    echo ""
    exit 0
fi

# Führe Kohärenz-Check aus
"$COHERENCE_CHECK"
exit_code=$?

echo ""

# Interpretiere Exit-Code
if [ $exit_code -eq 0 ]; then
    # Alle Checks bestanden
    echo -e "${GREEN}✓ Kohärenz-Check bestanden - Commit wird fortgesetzt${NC}"
    echo ""
    exit 0
elif [ $exit_code -eq 2 ]; then
    # Warnungen (nicht-blockierend)
    echo -e "${YELLOW}⚠️  Kohärenz-Check mit Warnungen - Commit wird fortgesetzt${NC}"
    echo ""
    echo "Hinweis: Warnungen sollten nach dem Commit behoben werden."
    echo ""
    exit 0
else
    # Fehler (blockierend)
    echo -e "${RED}✗ Kohärenz-Check fehlgeschlagen - Commit wird blockiert${NC}"
    echo ""
    echo -e "${BLUE}Nächste Schritte:${NC}"
    echo ""
    echo "1. Behebe die Fehler (siehe Details oben)"
    echo ""
    echo "2. Nutze Auto-Fix Scripts wo möglich:"
    echo "   • Version-Inkonsistenz:"
    echo "     ${BLUE}./claude-desktop-setup/sync-versions.sh <version> <datum>${NC}"
    echo ""
    echo "   • Cross-Reference-Fehler:"
    echo "     ${BLUE}./claude-desktop-setup/fix-skill-references.sh${NC}"
    echo ""
    echo "   • Template-Probleme:"
    echo "     ${BLUE}./claude-desktop-setup/regenerate-from-templates.sh${NC}"
    echo ""
    echo "3. Führe Kohärenz-Check erneut aus:"
    echo "   ${BLUE}./claude-desktop-setup/coherence-check.sh${NC}"
    echo ""
    echo "4. Wenn alle Checks grün: git commit erneut"
    echo ""
    echo -e "${YELLOW}Bypass (NICHT empfohlen):${NC}"
    echo "  git commit --no-verify"
    echo ""
    exit 1
fi
