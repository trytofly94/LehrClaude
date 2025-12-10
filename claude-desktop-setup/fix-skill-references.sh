#!/bin/bash

# ==============================================================================
# Skill-Referenzen Reparatur für LehrClaude
# ==============================================================================
# Aktualisiert Skill-Anzahl in Dokumentation automatisch
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
    echo -e "${BLUE}  Skill-Referenzen Reparatur${NC}"
    echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
}

# ==============================================================================
# Hauptlogik
# ==============================================================================

print_header

# 1. Zähle tatsächliche Skills
echo -e "${BLUE}Analysiere Skills...${NC}"
echo ""

SKILLS_DIR="$SCRIPT_DIR/skills"
if [ ! -d "$SKILLS_DIR" ]; then
    echo -e "${RED}✗ skills/ Ordner nicht gefunden${NC}"
    exit 1
fi

# Sammle alle Skills
SKILL_LIST=()
for skill_dir in "$SKILLS_DIR"/*/; do
    [ ! -d "$skill_dir" ] && continue
    skill_name=$(basename "$skill_dir")
    [[ "$skill_name" == .* ]] && continue  # Überspringe versteckte Ordner
    SKILL_LIST+=("$skill_name")
done

# Sortiere alphabetisch
IFS=$'\n' SKILL_LIST=($(sort <<<"${SKILL_LIST[*]}"))
unset IFS

SKILL_COUNT=${#SKILL_LIST[@]}

echo -e "${GREEN}Gefundene Skills: $SKILL_COUNT${NC}"
echo ""
for skill in "${SKILL_LIST[@]}"; do
    echo "  • $skill"
done
echo ""

# 2. Aktualisiere MANIFEST.json
echo -e "${BLUE}[1/3] Aktualisiere MANIFEST.json...${NC}"

if [ -f "$REPO_ROOT/MANIFEST.json" ]; then
    # Erstelle Backup
    cp "$REPO_ROOT/MANIFEST.json" "$REPO_ROOT/MANIFEST.json.backup"

    # Aktualisiere architecture.skills
    sed -i.tmp "s/\"skills\": *[0-9]\+/\"skills\": $SKILL_COUNT/" "$REPO_ROOT/MANIFEST.json"
    rm -f "$REPO_ROOT/MANIFEST.json.tmp"

    echo -e "${GREEN}✓ MANIFEST.json aktualisiert${NC}"
else
    echo -e "${YELLOW}⚠ MANIFEST.json nicht gefunden${NC}"
fi

echo ""

# 3. Aktualisiere Dokumentation
echo -e "${BLUE}[2/3] Aktualisiere Dokumentation...${NC}"

# README.md
if [ -f "$REPO_ROOT/README.md" ]; then
    cp "$REPO_ROOT/README.md" "$REPO_ROOT/README.md.backup"

    # Ersetze "X Skills" oder "X Custom Skills" mit korrekte Anzahl
    sed -i.tmp "s/[0-9]\+ \(Custom \)\?Skills/${SKILL_COUNT} Skills/g" "$REPO_ROOT/README.md"
    rm -f "$REPO_ROOT/README.md.tmp"

    echo -e "${GREEN}✓ README.md aktualisiert${NC}"
fi

# CLAUDE.md
if [ -f "$REPO_ROOT/CLAUDE.md" ]; then
    cp "$REPO_ROOT/CLAUDE.md" "$REPO_ROOT/CLAUDE.md.backup"

    # Ersetze "X Skills" oder "X Custom Skills"
    sed -i.tmp "s/[0-9]\+ \(Custom \)\?Skills/${SKILL_COUNT} Skills/g" "$REPO_ROOT/CLAUDE.md"
    rm -f "$REPO_ROOT/CLAUDE.md.tmp"

    echo -e "${GREEN}✓ CLAUDE.md aktualisiert${NC}"
fi

echo ""

# 4. Generiere Skill-Manifest
echo -e "${BLUE}[3/3] Generiere Skill-Manifest...${NC}"

MANIFEST_FILE="$SCRIPT_DIR/skill-manifest.txt"

cat > "$MANIFEST_FILE" << EOF
# Skill-Manifest für LehrClaude
# Automatisch generiert am $(date +"%Y-%m-%d %H:%M:%S")
#
# Anzahl: $SKILL_COUNT Skills

EOF

# Kategorisiere Skills
echo "## Material-Skills" >> "$MANIFEST_FILE"
for skill in "${SKILL_LIST[@]}"; do
    [[ "$skill" == mat-* ]] && echo "  - $skill" >> "$MANIFEST_FILE"
done

echo "" >> "$MANIFEST_FILE"
echo "## Export-Skills" >> "$MANIFEST_FILE"
for skill in "${SKILL_LIST[@]}"; do
    [[ "$skill" == export-* ]] && echo "  - $skill" >> "$MANIFEST_FILE"
done

echo "" >> "$MANIFEST_FILE"
echo "## Spezial-Skills" >> "$MANIFEST_FILE"
for skill in "${SKILL_LIST[@]}"; do
    [[ "$skill" != mat-* ]] && [[ "$skill" != export-* ]] && echo "  - $skill" >> "$MANIFEST_FILE"
done

echo ""
echo -e "${GREEN}✓ Skill-Manifest erstellt: skill-manifest.txt${NC}"

# ==============================================================================
# Zusammenfassung
# ==============================================================================

echo ""
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  Zusammenfassung${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo ""

echo -e "${GREEN}✓ Skill-Referenzen repariert${NC}"
echo ""
echo "Statistik:"
echo "  Skills gesamt:    $SKILL_COUNT"
echo "  Material-Skills:  $(echo "${SKILL_LIST[@]}" | tr ' ' '\n' | grep -c '^mat-')"
echo "  Export-Skills:    $(echo "${SKILL_LIST[@]}" | tr ' ' '\n' | grep -c '^export-')"
echo "  Spezial-Skills:   $(echo "${SKILL_LIST[@]}" | tr ' ' '\n' | grep -vc '^mat-\|^export-')"
echo ""
echo "Aktualisierte Dateien:"
echo "  • MANIFEST.json (architecture.skills)"
echo "  • README.md (Skill-Anzahl)"
echo "  • CLAUDE.md (Skill-Anzahl)"
echo "  • skill-manifest.txt (neu erstellt)"
echo ""
echo -e "${BLUE}Backups:${NC}"
echo "  • MANIFEST.json.backup"
echo "  • README.md.backup"
echo "  • CLAUDE.md.backup"
echo ""
echo -e "${YELLOW}Nächste Schritte:${NC}"
echo "  1. Prüfe Änderungen: ${BLUE}git diff${NC}"
echo "  2. Validiere: ${BLUE}./validate-cross-references.sh${NC}"
echo "  3. Committe bei Erfolg"
echo ""

exit 0
