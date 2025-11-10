# Claude Desktop Setup - IT-Admin Anleitung

Dieser Ordner enthält **alle Dateien und Anleitungen**, die du als IT-Admin benötigst, um das LehrClaude in Claude Desktop zu konfigurieren.

---

## Überblick

Das LehrClaude besteht aus:
- **3 Claude Desktop Projekten** (Unterrichtsreihe planen, Arbeitsblatt erstellen, Präsentation entwerfen)
- **23 Custom Skills** (wiederverwendbare Fähigkeiten)
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
│ 2. Drei Projekte in Claude Desktop erstellen    │
│    (15 Minuten)                                  │
└──────────────────────────────────────────────────┘
                    ↓
┌──────────────────────────────────────────────────┐
│ 3. Skills mit skill-creator erstellen           │
│    (30-60 Minuten für alle 23 Skills)           │
└──────────────────────────────────────────────────┘
                    ↓
┌──────────────────────────────────────────────────┐
│ 4. System testen                                 │
│    (10 Minuten)                                  │
└──────────────────────────────────────────────────┘

Gesamtzeit: ca. 1-2 Stunden
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

**Zeitaufwand:** 20 Minuten (4x 5 Min.)

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
   - Notiere dir die benötigten Skills (werden in Schritt 3 erstellt)

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

4. **Verwendung:**
   ```
   Admin: "Ich möchte die description von 02-sachanalyse verbessern"

   Claude:
   - Liest aktuelle SKILL.md via MCP
   - Öffnet skill-creator für Bearbeitung
   - Validiert automatisch nach Speichern
   - Packt Skill neu
   - Bestätigt: "ZIP-Datei ready für Upload"
   ```

**Vorteile:**
- ✅ Skills direkt in Claude Desktop bearbeiten
- ✅ Automatische Validierung
- ✅ Automatisches Packaging
- ✅ Keine manuelle Terminal-Nutzung nötig

**Status:** [ ] Projekt 4 erstellt

---

## Schritt 3: Custom Skills erstellen und packen

**Zeitaufwand:** 5 Minuten (mit automatischem Packaging-Skript)

### Was sind Custom Skills?

Custom Skills sind wiederverwendbare "Fähigkeiten", die Claude in verschiedenen Projekten nutzen kann. Sie enthalten spezialisierte Anweisungen für bestimmte Aufgaben (z.B. "Sachanalyse durchführen").

**Gute Nachricht:** Alle 23 Skills sind bereits fertig erstellt im `skills/` Ordner! Du musst sie nur noch packen und hochladen.

---

### Skill-Packaging (Automatisch)

Alle Skills müssen als ZIP-Dateien verpackt werden, um in Claude Desktop hochgeladen werden zu können.

**Ein-Klick-Lösung:**

```bash
cd claude-desktop-setup
./package-skills.sh
```

**Was passiert:**
- ✅ Alle 23 Skills werden automatisch als ZIP gepackt
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
├── 01-debiasing.zip
├── 02-sachanalyse.zip
├── 03-didaktische-analyse.zip
└── ... (23 ZIP-Dateien)
```

**Status:** [ ] Skills gepackt (23 ZIP-Dateien erstellt)

---

### Skills in Claude Desktop hochladen

**Für jeden Skill (Beispiel: 02-sachanalyse):**

1. **Öffne Claude Desktop:**
   - Settings > Capabilities > Skills

2. **Upload Custom Skill:**
   - Klicke "Upload custom skill"
   - Wähle `skill-packages/02-sachanalyse.zip`

3. **Skill aktivieren im Projekt:**
   - Öffne Projekt "Unterrichtsreihe planen"
   - Im Skills-Bereich: Aktiviere "Sachanalyse für Unterrichtsplanung"

**Wiederhole für alle 23 Skills** (siehe Skill-Zuordnung unten)

---

### Empfohlene Reihenfolge (Priorisierung)

**Phase 1: Kern-Skills (Projekt 1 testbar machen)**
1. 01-debiasing
2. 02-sachanalyse
3. 05-lernziele-operationalisieren
4. export-markdown

**Nach Phase 1 → Test Projekt 1** (mindestens diese 4 Skills funktionieren)

**Phase 2: Vollständiges Projekt 1**
5-11. Restliche Planungs-Skills
12. export-pdf, export-docx

**Phase 3: Projekt 2 & 3**
13-19. Material-Skills
20. export-pptx

---

### Fortschritt-Tracking

**Planungs-Skills (11):**
- [ ] 01-debiasing
- [ ] 02-sachanalyse
- [ ] 03-didaktische-analyse
- [ ] 04-fachbegriffe-klaeren
- [ ] 05-lernziele-operationalisieren
- [ ] 06-mindmap-strukturierung
- [ ] 07-unterrichtsverlauf-planen
- [ ] 08-lernkontrollen-entwickeln
- [ ] 09-material-zusammenstellen
- [ ] 10-reflexion-durchfuehren
- [ ] 11-iteration-optimierung

**Material-Skills (8):**
- [ ] mat-01-texterstellung
- [ ] mat-02-arbeitsblatt-erstellen
- [ ] mat-03-powerpoint-erstellen
- [ ] mat-04-aufgaben-generieren
- [ ] mat-05-loesungen-erstellen
- [ ] mat-06-pruefungsaufgaben
- [ ] mat-07-feedbackboegen
- [ ] mat-08-lernzielkontrolle

**Export-Skills (4):**
- [ ] export-markdown
- [ ] export-pdf
- [ ] export-docx
- [ ] export-pptx

**Gesamt:** [ ] 23/23 Skills erstellt

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
- Startet mit Skill "01-debiasing"
```

**Status:** [ ] Projekt 1 funktioniert

---

### Test 3: Projekt 2 (Arbeitsblatt erstellen)

```
Projekt: Arbeitsblatt erstellen
Prompt: "Ich brauche ein Arbeitsblatt zu Bruchrechnung, Klasse 6."

Erwartetes Ergebnis:
- Claude fragt nach Details
- Nutzt mat-02-arbeitsblatt-erstellen oder mat-04-aufgaben-generieren
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

---

### Problem: MCP "Permission Denied"

**Lösung:**
```bash
chmod -R 755 /Users/[LEHRKRAFT-NAME]/Schul-Materialien
```

---

### Problem: skill-creator generiert fehlerhafte SKILL.md

**Lösung:**
- Prüfe ob Prompt-Vorlage komplett kopiert wurde
- Versuche Prompt in kleinere Teile zu zerlegen
- Alternativ: Erstelle SKILL.md manuell basierend auf Prompt

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

**Version:** 1.0
**Zuletzt aktualisiert:** 2025-11-09
**Geschätzter Zeitaufwand:** 1-2 Stunden (Setup + Skills)
