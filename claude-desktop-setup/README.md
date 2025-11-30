# Claude Desktop Setup - IT-Admin Anleitung

Dieser Ordner enthält **alle Dateien und Anleitungen**, die du als IT-Admin benötigst, um das LehrClaude in Claude Desktop zu konfigurieren.

---

## Überblick

Das LehrClaude besteht aus:
- **5 Claude Desktop Projekten** (Unterrichtsreihe, Arbeitsblatt, Präsentation, Skill-Verwaltung, Klassenverwaltung)
- **6 Custom Skills** (Material-Erstellung und Export)
- **Workflow-Anweisungen** (in `projekt-*/anweisungen/` für Planungs-Prozesse)
- **MCP Filesystem Server** (Zugriff auf lokale Ressourcen)

**Deine Aufgabe:** Diese Komponenten manuell in Claude Desktop einrichten (mit Unterstützung von Claude Code).

---

## Voraussetzungen

### Software installiert:
- ✅ **Claude Desktop** ([claude.ai/download](https://claude.ai/download))
- ✅ **Node.js** (für MCP) ([nodejs.org](https://nodejs.org/))
- ✅ **Claude Code** (für diese Anleitung)

### System:
- ✅ **macOS** (getestet auf macOS 11+)

### Zugriff:
- ✅ **Claude Pro, Team oder Enterprise Account** (für Custom Skills)

---

## Setup-Workflow (Gesamtübersicht)

```
┌──────────────────────────────────────────────────┐
│ 0. Pfade konfigurieren (setup-paths.sh)         │
│    (2 Minuten)                                   │
│    ⚠️  WICHTIG: Muss zuerst ausgeführt werden!   │
└──────────────────────────────────────────────────┘
                    ↓
┌──────────────────────────────────────────────────┐
│ 1. MCP Filesystem Server konfigurieren          │
│    (10 Minuten)                                  │
└──────────────────────────────────────────────────┘
                    ↓
┌──────────────────────────────────────────────────┐
│ 2. Fünf Projekte in Claude Desktop erstellen    │
│    (25 Minuten)                                  │
└──────────────────────────────────────────────────┘
                    ↓
┌──────────────────────────────────────────────────┐
│ 3. Skills packen und hochladen                  │
│    (10 Minuten für 6 Skills)                    │
└──────────────────────────────────────────────────┘
                    ↓
┌──────────────────────────────────────────────────┐
│ 4. System testen                                 │
│    (10 Minuten)                                  │
└──────────────────────────────────────────────────┘

Gesamtzeit: ca. 45-60 Minuten
```

---

## Schritt 0: Pfade konfigurieren (WICHTIG!)

**Zeitaufwand:** 2 Minuten

⚠️ **Dieser Schritt MUSS zuerst ausgeführt werden!**

### Was macht setup-paths.sh?

Das Setup-Skript:
1. Fragt nach dem Installations-Pfad (Basis-Verzeichnis)
2. Erstellt eine zentrale Konfigurationsdatei `CONFIG.sh`
3. Ersetzt alle Pfad-Platzhalter in allen Template-Dateien
4. Macht Scripts ausführbar

### Anleitung:

1. **Öffne Terminal**

2. **Navigiere zu diesem Ordner:**
   ```bash
   cd /pfad/zu/claude-desktop-setup
   ```

3. **Führe Setup-Skript aus:**
   ```bash
   ./setup-paths.sh
   ```

4. **Folge den Anweisungen:**
   - Das Skript schlägt automatisch den aktuellen Pfad vor
   - Drücke Enter um zu bestätigen, oder gib einen anderen Pfad ein

5. **Prüfe das Ergebnis:**
   ```bash
   ./CONFIG.sh
   ```

   Dies zeigt alle konfigurierten Pfade an.

**Wichtig:** Nach diesem Schritt sind alle Dateien bereit:
- `MCP_CONFIG.json` (aus Template erstellt)
- `validate-skill.sh` (aus Template erstellt)
- `package-skills.sh` (aus Template erstellt)
- Alle `PROJECT_INSTRUCTIONS.md` (aus Templates erstellt)

**Status:** [ ] Pfade konfiguriert

---

## Schritt 1: MCP Filesystem Server konfigurieren

**Zeitaufwand:** 10 Minuten

### Was ist MCP?

Der Model Context Protocol (MCP) Filesystem Server ermöglicht Claude Desktop den Zugriff auf lokale Ordner:
- **Lesen:** Lehrpläne, didaktische Frameworks
- **Schreiben:** Exportierte Ergebnisse

### Anleitung:

1. **MCP Config kopieren:**
   ```bash
   cat MCP_CONFIG.json
   ```

   Die Datei wurde bereits von `setup-paths.sh` mit den korrekten Pfaden erstellt.

2. **In Claude Desktop einfügen:**
   - Öffne Claude Desktop
   - Settings > Developer > Edit Config
   - Füge den Inhalt von `MCP_CONFIG.json` ein
   - Speichern

3. **Claude Desktop neu starten**

4. **Test:**
   - Öffne Claude Desktop
   - Neuer Chat: "Kannst du den Ordner 2_Zentrale_Ressourcen auflisten?"
   - Erwartete Antwort: Liste der Unterordner

**Hinweis:** Die Pfade in `MCP_CONFIG.json` wurden automatisch durch `setup-paths.sh` konfiguriert.

**Status:** [ ] MCP konfiguriert und getestet

---

## Schritt 2: Claude Desktop Projekte erstellen

**Zeitaufwand:** 25 Minuten (5x 5 Min.)

**Wichtige Änderung:** Die alte Skill-Architektur wurde durch eine hybride Lösung ersetzt:
- **Custom Skills** nur noch für Material-Erstellung und Export (6 Skills)
- **Workflow-Anweisungen** direkt in den Projekten unter `anweisungen/` (schneller, flexibler)

### Projekt 1: "Unterrichtsreihe planen"

1. **Öffne Claude Desktop**
2. **Erstelle neues Projekt:**
   - Klicke auf "+New Project"
   - Name: "Unterrichtsreihe planen"

3. **Kopiere Project Instructions:**
   - Öffne: `projekt-1-unterrichtsreihe/PROJECT_INSTRUCTIONS.md`
   - Kopiere **kompletten** Inhalt
   - In Claude Desktop: Project Settings > Instructions > Einfügen

4. **Skills vorbereiten (später aktivieren):**
   - Öffne: `projekt-1-unterrichtsreihe/skills-checklist.md`
   - Notiere dir die benötigten Skills (6 Skills, werden in Schritt 3 hochgeladen)

**Status:** [ ] Projekt 1 erstellt

---

### Projekt 2: "Arbeitsblatt erstellen"

1. **Erstelle neues Projekt:** "Arbeitsblatt erstellen"

2. **Kopiere Project Instructions:**
   - Öffne: `projekt-2-arbeitsblatt/PROJECT_INSTRUCTIONS.md`
   - Kopiere **kompletten** Inhalt
   - In Claude Desktop: Project Settings > Instructions > Einfügen

3. **Skills-Checklist:**
   - Öffne: `projekt-2-arbeitsblatt/skills-checklist.md`

**Status:** [ ] Projekt 2 erstellt

---

### Projekt 3: "Präsentation entwerfen"

1. **Erstelle neues Projekt:** "Präsentation entwerfen"

2. **Kopiere Project Instructions:**
   - Öffne: `projekt-3-praesentation/PROJECT_INSTRUCTIONS.md`
   - Kopiere **kompletten** Inhalt
   - In Claude Desktop: Project Settings > Instructions > Einfügen

3. **Skills-Checklist:**
   - Öffne: `projekt-3-praesentation/skills-checklist.md`

**Status:** [ ] Projekt 3 erstellt

---

### Projekt 4: "Skill-Verwaltung" (für IT-Admins)

**Zweck:** Skills direkt in Claude Desktop bearbeiten, validieren und packen

1. **Erstelle neues Projekt:** "Skill-Verwaltung"

2. **Kopiere Project Instructions:**
   - Öffne: `projekt-4-skill-verwaltung/PROJECT_INSTRUCTIONS.md`
   - Kopiere **kompletten** Inhalt
   - In Claude Desktop: Project Settings > Instructions > Einfügen

3. **Aktiviere skill-creator:**
   - Settings > Capabilities > Skills
   - Suche "skill-creator"
   - Aktiviere in diesem Projekt

**Vorteile:**
- ✅ Skills direkt in Claude Desktop bearbeiten
- ✅ Automatische Validierung
- ✅ Automatisches Packaging
- ✅ Keine manuelle Terminal-Nutzung nötig

**Status:** [ ] Projekt 4 erstellt

---

### Projekt 5: "Klassenverwaltung für Förderschullehrkräfte"

**Zweck:** Schülerprofile verwalten und Material differenzieren

1. **Erstelle neues Projekt:** "Klassenverwaltung für Förderschullehrkräfte"

2. **Kopiere Project Instructions:**
   - Öffne: `projekt-5-klassenverwaltung/PROJECT_INSTRUCTIONS.md`
   - Kopiere **kompletten** Inhalt
   - In Claude Desktop: Project Settings > Instructions > Einfügen

3. **Workflow:**
   - Schülerprofile erstellen und verwalten
   - Automatische Differenzierung nach Förderschwerpunkt
   - Materialien an individuelle Bedürfnisse anpassen

**Status:** [ ] Projekt 5 erstellt

---

## Schritt 3: Custom Skills packen und hochladen

**Zeitaufwand:** 10 Minuten

### Was sind Custom Skills?

Custom Skills sind wiederverwendbare "Fähigkeiten", die Claude in verschiedenen Projekten nutzen kann.

**Wichtige Änderung:** Statt 23 Skills nutzen wir jetzt nur noch **6 Skills** für Material-Erstellung und Export. Alle Planungs- und Workflow-Schritte sind jetzt direkt in den PROJECT_INSTRUCTIONS.md integriert.

**Die 6 verbleibenden Skills:**
- `mat-02-arbeitsblatt-erstellen` - Arbeitsblätter erstellen
- `mat-03-powerpoint-erstellen` - PowerPoint-Präsentationen erstellen
- `export-markdown` - Export als Markdown
- `export-pdf` - Export als PDF
- `export-docx` - Export als DOCX
- `export-pptx` - Export als PPTX

**Gute Nachricht:** Alle 6 Skills sind bereits fertig im `skills/` Ordner! Du musst sie nur noch packen und hochladen.

---

### Skill-Packaging (Automatisch)

Alle Skills müssen als ZIP-Dateien verpackt werden, um in Claude Desktop hochgeladen werden zu können.

**Ein-Klick-Lösung:**

```bash
cd claude-desktop-setup
./package-skills.sh
```

**Was passiert:**
- ✅ Alle 6 Skills werden automatisch als ZIP gepackt
- ✅ Korrekte Ordnerstruktur wird sichergestellt
- ✅ Ausgabe in `skill-packages/` Ordner
- ✅ Validierung: Prüft ob SKILL.md existiert

**Optionen:**
```bash
./package-skills.sh --clean   # Alte ZIPs löschen vor dem Packen
./package-skills.sh --verify  # ZIP-Inhalte nach dem Packen prüfen
./package-skills.sh --help    # Hilfe anzeigen
```

**Ergebnis:**
```
skill-packages/
├── export-docx.zip
├── export-markdown.zip
├── export-pdf.zip
├── export-pptx.zip
├── mat-02-arbeitsblatt-erstellen.zip
└── mat-03-powerpoint-erstellen.zip
```

**Status:** [ ] Skills gepackt (6 ZIP-Dateien erstellt)

---

### Skills in Claude Desktop hochladen

**Für jeden der 6 Skills:**

1. **Öffne Claude Desktop:**
   - Settings > Capabilities > Skills

2. **Upload Custom Skill:**
   - Klicke "Upload custom skill"
   - Wähle die entsprechende ZIP aus `skill-packages/`

3. **Skill aktivieren in den Projekten:**
   - Die Skills werden automatisch in allen relevanten Projekten verfügbar
   - Aktiviere sie bei Bedarf

---

### Fortschritt-Tracking

**Material-Skills (2):**
- [ ] mat-02-arbeitsblatt-erstellen
- [ ] mat-03-powerpoint-erstellen

**Export-Skills (4):**
- [ ] export-markdown
- [ ] export-pdf
- [ ] export-docx
- [ ] export-pptx

**Gesamt:** [ ] 6/6 Skills hochgeladen

---

## Schritt 4: System testen

**Zeitaufwand:** 10 Minuten

### Test 1: MCP Filesystem

```
Projekt: Beliebig
Prompt: "Zeige mir den Inhalt von 2_Zentrale_Ressourcen/Didaktik/Bloom-Taxonomie.md"

Erwartetes Ergebnis: Inhalt der Bloom-Taxonomie wird angezeigt
```

**Status:** [ ] MCP funktioniert

---

### Test 2: Projekt 1 (Unterrichtsreihe planen)

```
Projekt: Unterrichtsreihe planen
Prompt: "Ich möchte eine Unterrichtsreihe planen zum Thema Klimawandel, Klasse 9."

Erwartetes Ergebnis:
- Claude begrüßt dich
- Erklärt den 11-Schritte-Prozess
- Fragt nach Details (Fach, Stunden, etc.)
- Führt durch die Schritte basierend auf den Anweisungen in anweisungen/
```

**Status:** [ ] Projekt 1 funktioniert

---

### Test 3: Projekt 2 (Arbeitsblatt erstellen)

```
Projekt: Arbeitsblatt erstellen
Prompt: "Ich brauche ein Arbeitsblatt zu Bruchrechnung, Klasse 6."

Erwartetes Ergebnis:
- Claude fragt nach Details
- Nutzt mat-02-arbeitsblatt-erstellen Skill
- Erstellt strukturiertes Arbeitsblatt
```

**Status:** [ ] Projekt 2 funktioniert

---

### Test 4: Export

```
Projekt: Arbeitsblatt erstellen
(Nach Erstellung eines Arbeitsblatts)
Prompt: "Exportiere das Arbeitsblatt als Markdown."

Erwartetes Ergebnis:
- Claude nutzt export-markdown Skill
- Speichert Datei via MCP in 1_Exportierte_Ergebnisse/
- Bestätigt Speicherort
```

**Status:** [ ] Export funktioniert

---

## Troubleshooting

### Problem: Skill wird nicht aufgerufen

**Symptom:** Claude nutzt den Skill nicht, obwohl er aktiviert ist.

**Lösung:**
1. Prüfe YAML Frontmatter in SKILL.md:
   - `description` muss klare Trigger-Keywords enthalten
2. Test: "Bitte nutze den Skill [NAME]" (manueller Aufruf)
3. Falls das funktioniert: `description` verbessern

**Hinweis:** Für Workflow-Schritte nutze die `anweisungen/` Ordner in den Projekten statt Skills!

---

### Problem: MCP "Permission Denied"

**Lösung:**
```bash
chmod -R 755 /Users/[LEHRKRAFT-NAME]/Schul-Materialien
```

---

### Problem: Workflow-Schritt wird nicht erkannt

**Lösung:**
- Prüfe ob die entsprechende Anweisung in `projekt-*/anweisungen/` existiert
- Prüfe ob die Anweisung in PROJECT_INSTRUCTIONS.md referenziert ist
- Bei Bedarf: Füge explizite Trigger in PROJECT_INSTRUCTIONS.md hinzu

---

## Hilfreiche Links

- **Claude Desktop Docs:** [docs.anthropic.com/claude](https://docs.anthropic.com/claude)
- **MCP Dokumentation:** [modelcontextprotocol.io](https://modelcontextprotocol.io/)
- **Custom Skills Guide:** [docs.anthropic.com/claude/docs/custom-skills](https://docs.anthropic.com/claude/docs/custom-skills)

---

## Support

Falls du während des Setups Probleme hast:

1. **Prüfe Checklisten** in diesem README
2. **Lies spezifische Anleitungen:**
   - `MCP_SETUP_ANLEITUNG.md` für MCP-Probleme
   - `skills-checklist.md` in Projekt-Ordnern

3. **Nutze Claude Code** für Debugging
   - Claude Code kann dir helfen, Fehler zu analysieren

---

## Skill-Bearbeitung

### Workflow: Skills anpassen und neu packen

**1. Skill bearbeiten (mit beliebigem Editor)**

Öffne die SKILL.md Datei mit deinem bevorzugten Markdown-Editor:

```bash
# Beispiel mit verschiedenen Editoren:
marktext skills/02-sachanalyse/SKILL.md    # MarkText (empfohlen)
code skills/02-sachanalyse/SKILL.md        # VS Code
vim skills/02-sachanalyse/SKILL.md         # vim
nano skills/02-sachanalyse/SKILL.md        # nano
```

**2. Skill validieren**

```bash
./validate-skill.sh 02-sachanalyse
```

**Prüft:**
- ✅ YAML Frontmatter (name, description)
- ✅ Markdown-Struktur (wichtige Sektionen)
- ✅ Ressourcen-Ordner (resources/, scripts/)
- ✅ Dateigröße und Format

**Ausgabe:**
```
✓ name: Sachanalyse für Unterrichtsplanung
✓ description: 245 Zeichen
✓ Sektion gefunden: ## Zweck
✓ resources/ Ordner existiert
✓ Skill ist vollständig und korrekt!
```

**3. Skills packen**

```bash
./package-skills.sh
```

**Features:**
- ✅ Nur geänderte Skills werden neu gepackt (spart Zeit)
- ✅ Intelligente Änderungs-Erkennung (Zeitstempel-basiert)
- ✅ Automatische Validierung während Packaging

**Optionen:**
```bash
./package-skills.sh --force    # Alle Skills neu packen
./package-skills.sh --verify   # ZIP-Inhalte prüfen
./package-skills.sh --clean    # Alte ZIPs löschen
```

---

### Verfügbare Skripte

| Skript | Zweck | Verwendung |
|--------|-------|------------|
| `validate-skill.sh` | Skill validieren | `./validate-skill.sh <skill-name>` |
| `package-skills.sh` | Skills packen | `./package-skills.sh [--force]` |

---

### Best Practices

1. **Immer validieren vor Upload:** `./validate-skill.sh` verhindert Fehler
2. **Regelmäßig committen:** Git-Versionskontrolle nutzen
3. **Inkrementell testen:** Einen Skill ändern → validieren → packen → testen in Claude Desktop
4. **Ressourcen dokumentieren:** `## Resources` Sektion pflegen bei Änderungen

---

### Troubleshooting

**Problem: Validierung schlägt fehl**
- Prüfe YAML Frontmatter (muss mit `---` beginnen/enden)
- Stelle sicher dass `name:` und `description:` vorhanden sind

**Problem: Packaging schlägt fehl**
- Prüfe ob `zip` installiert ist: `brew install zip`
- Lösche alte ZIPs: `./package-skills.sh --clean`

**Problem: Skill wird nicht erkannt in Claude Desktop**
- Validiere YAML `description` - muss Trigger-Keywords enthalten
- Prüfe ob ZIP korrekte Struktur hat: `unzip -l skill-packages/skill-name.zip`

---

**Version:** 2.0
**Zuletzt aktualisiert:** 2025-11-30
**Geschätzter Zeitaufwand:** 45-60 Minuten (Setup + 6 Skills)

**Änderungshistorie:**
- **v2.0 (2025-11-30):** Architektur-Überarbeitung - 6 Skills statt 27, Workflows in anweisungen/
- **v1.0 (2025-11-09):** Initial release mit 23 Skills
