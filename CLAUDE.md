# LehrClaude: Projektanleitung für Claude

## Projektübersicht

Dieses Projekt ist ein **Setup-Repository für IT-Administratoren**, um ein modulares Claude Desktop Ökosystem für wissenschaftlich fundierte Unterrichtsplanung zu implementieren.

---

## ⚠️ WICHTIG: Deutsche Sprache

**ALLE Inhalte, Skills, Materialien und Outputs in diesem Projekt MÜSSEN auf Deutsch erstellt werden.**

### Grund für die ausschließliche Verwendung von Deutsch:

1. **Zielgruppe:** Deutsche Lehrkräfte, die ausschließlich auf Deutsch arbeiten
2. **Unterrichtsmaterialien:** Alle Arbeitsblätter, Präsentationen und Planungen sind für deutsche Schulen
3. **Anpassbarkeit:** Lehrkräfte müssen die generierten Materialien direkt bearbeiten und anpassen können, ohne Übersetzungen vornehmen zu müssen
4. **Konsistenz:** Durchgängig deutsche Sprache vom Planungsprozess bis zum fertigen Material

### Was bedeutet das konkret?

- **Skills (SKILL.md):** Alle Anweisungen, Workflows und Outputs auf Deutsch
- **Project Instructions:** Vollständig auf Deutsch
- **Generierte Materialien:** Arbeitsblätter, Unterrichtspläne, Präsentationen - alles auf Deutsch
- **Prompts und Templates:** Ausschließlich deutsche Sprache
- **Kommunikation mit Lehrkräften:** Nur auf Deutsch

### Ausnahmen:

- **Technische Dokumentation für Entwickler:** Kann Englisch enthalten (z.B. diese CLAUDE.md)
- **YAML Frontmatter in Skills:** Kann englische Schlüsselwörter verwenden (`name`, `description`)
- **Code und Befehle:** Technische Befehle bleiben in ihrer Originalsprache

---

## Architektur & Philosophie

### Modulares Multi-Projekt-System

Das System basiert auf **3 spezialisierten Claude Desktop Projekten**, nicht einem monolithischen Tool:

1. **Unterrichtsreihe planen** - Vollständiger 11-Schritte-Prozess (Klafki, Leisen, Wember)
2. **Arbeitsblatt erstellen** - Schneller, fokussierter Workflow
3. **Präsentation entwerfen** - Didaktisch strukturierte Präsentationen

**Kernprinzip:** Jedes Projekt ist eine "App" für eine spezifische Aufgabe im Lehreralltag.

### Skill-basierte Architektur

**23 Custom Skills** (wiederverwendbare Fähigkeiten):
- **11 Planungs-Skills** (01-11): Debiasing bis Iteration & Optimierung
- **8 Material-Skills** (mat-01 bis mat-08): Texterstellung bis Lernzielkontrolle
- **4 Export-Skills**: Markdown, PDF, DOCX, PPTX

**Wiederverwendbarkeit:** Ein Skill (z.B. "05-lernziele-operationalisieren") kann in mehreren Projekten aktiviert werden.

### MCP Filesystem Server Integration

**Zentrale Ressourcen-Bibliothek:**
- **Lesen:** Lehrpläne, KMK-Operatoren, Bloom-Taxonomie, Templates
- **Schreiben:** Exportierte Ergebnisse (fertige Unterrichtsreihen, Arbeitsblätter, etc.)

**Pfade:**
- `2_Zentrale_Ressourcen/` - Globale, statische Ressourcen
- `1_Exportierte_Ergebnisse/` - Ausgabeordner für Export-Skills

---

## Repository-Struktur

### Zwei-Ordner-Prinzip

#### 1. `/claude-desktop-setup/` - Für IT-Admin (manuell)

**Zweck:** Enthält alle Dateien, die manuell in Claude Desktop konfiguriert werden müssen.

**Inhalte:**
- `README.md` - Schritt-für-Schritt Anleitung (1-2h)
- `MCP_CONFIG.json` - Template für Filesystem Server
- `projekt-1-unterrichtsreihe/PROJECT_INSTRUCTIONS.md` - Copy-Paste in Claude Desktop
- `projekt-2-arbeitsblatt/PROJECT_INSTRUCTIONS.md`
- `projekt-3-praesentation/PROJECT_INSTRUCTIONS.md`
- `skills-platzhalter/` - 23 Skill-Ordner mit SKILL.md (Platzhalter für skill-creator)

**Workflow:** IT-Admin nutzt skill-creator in Claude Desktop, um aus Platzhaltern + Original-Prompts (`/prompts/`) echte Skills zu generieren.

#### 2. `/lehrkraft-deployment/` - Deployment auf Lehrkraft-Mac

**Zweck:** Automatisches Setup-Script + Ordnerstruktur-Vorlage.

**Inhalte:**
- `setup.sh` - Erstellt automatisch `Schul-Materialien/` auf Zielrechner
- `ordnerstruktur-vorlage/` - Template mit Beispiel-Ressourcen (KMK-Operatoren, Bloom-Taxonomie, etc.)

**Workflow:** IT-Admin führt Script aus → Komplette Verzeichnisstruktur wird angelegt.

---

## Workflow: Von der Installation zur Nutzung

### Phase 1: Deployment (IT-Admin)

1. **Setup-Script ausführen:**
   ```bash
   cd lehrkraft-deployment
   ./setup.sh /Users/[LEHRKRAFT]/Schul-Materialien
   ```
   → Erstellt Ordnerstruktur auf Zielrechner

2. **MCP konfigurieren:**
   - `MCP_CONFIG.json` anpassen (Pfad zum Schul-Materialien-Ordner)
   - In Claude Desktop einfügen (Settings > Developer > Edit Config)

3. **Projekte erstellen:**
   - 3x neues Projekt in Claude Desktop
   - PROJECT_INSTRUCTIONS.md jeweils copy-pasten

4. **Skills generieren:**
   - skill-creator in Claude Desktop aktivieren
   - Für jeden der 23 Platzhalter:
     - Prompt-Vorlage aus `/prompts/` lesen
     - Mit skill-creator SKILL.md generieren
     - Als ZIP hochladen in Claude Desktop
     - Im entsprechenden Projekt aktivieren

### Phase 2: Nutzung (Lehrkraft)

**Beispiel: Unterrichtsreihe planen**
1. Öffne Projekt "Unterrichtsreihe planen"
2. Prompt: "Ich möchte eine Unterrichtsreihe zu Photosynthese planen, Klasse 7, NRW, 8 Stunden."
3. Claude orchestriert automatisch die 11 Skills
4. Greift via MCP auf Lehrplan NRW zu (falls vorhanden in `2_Zentrale_Ressourcen/Lehrplaene/`)
5. Am Ende: "Als PDF exportieren" → Automatische Speicherung in `1_Exportierte_Ergebnisse/`

---

## Didaktische Grundlagen

Das System basiert auf:

- **Klafkis Bildungstheoretische Didaktik** (Sachanalyse, Didaktische Analyse)
- **Leisens Phasierung des Unterrichts** (6 Phasen pro Stunde)
- **Wembers Differenzierungsmodell** (Basis/Unterstützung/Erweiterung)
- **SMART-Zielformulierung** (Spezifisch, Messbar, Akzeptiert, Realistisch, Terminiert)
- **Bloom-Taxonomie** (6 kognitive Stufen: Erinnern → Erschaffen)
- **KMK-Operatoren** (Standardisierte Aufgaben-Verben nach Anforderungsbereichen)

**Originalarbeit:** Christopher Zimmermann (Universität zu Köln)

---

## Skill-Struktur & Zuordnung

### Projekt 1: Unterrichtsreihe planen

**11 Planungs-Skills (sequenziell):**
1. 01-debiasing → Bias-Vermeidung
2. 02-sachanalyse → Fachliche Grundlagen (mit Lehrplan-Zugriff)
3. 03-didaktische-analyse → Klafki's 5 Fragen
4. 04-fachbegriffe-klaeren → Terminologie aufbereiten
5. 05-lernziele-operationalisieren → SMART-Ziele nach Bloom
6. 06-mindmap-strukturierung → Wissensstruktur visualisieren
7. 07-unterrichtsverlauf-planen → Stundenplanung nach Leisen
8. 08-lernkontrollen-entwickeln → Assessment-Design
9. 09-material-zusammenstellen → Ressourcen organisieren
10. 10-reflexion-durchfuehren → Evaluation
11. 11-iteration-optimierung → Verbesserungsschleife

**Material-Skills (optional):**
- mat-06-pruefungsaufgaben
- mat-07-feedbackboegen
- mat-08-lernzielkontrolle

**Export-Skills:**
- export-markdown, export-pdf, export-docx

### Projekt 2: Arbeitsblatt erstellen

**Material-Skills (Kern):**
- mat-01-texterstellung
- mat-02-arbeitsblatt-erstellen
- mat-04-aufgaben-generieren
- mat-05-loesungen-erstellen

**Unterstützend:**
- 05-lernziele-operationalisieren
- mat-08-lernzielkontrolle

**Export:**
- export-markdown, export-pdf, export-docx

### Projekt 3: Präsentation entwerfen

**Material-Skills:**
- mat-01-texterstellung
- mat-03-powerpoint-erstellen

**Unterstützend:**
- 05-lernziele-operationalisieren
- 06-mindmap-strukturierung

**Export:**
- export-markdown, export-pptx

---

## MCP Filesystem Server: Ordnerstruktur

```
Schul-Materialien/
├── 1_Exportierte_Ergebnisse/          # SCHREIBEN (Export-Skills)
│   └── Unterrichtsreihe_Photosynthese_2025-01-08/
│       ├── 01_Sachanalyse.md
│       └── ...
│
├── 2_Zentrale_Ressourcen/             # LESEN (alle Skills)
│   ├── Lehrplaene/
│   │   ├── NRW/
│   │   │   └── Lehrplan_Biologie_Sek1.pdf
│   │   └── Bayern/
│   ├── Didaktik/
│   │   ├── KMK-Operatoren.md          # Aufgaben-Operatoren nach Anforderungsbereichen
│   │   └── Bloom-Taxonomie.md         # Lernzielstufen
│   └── Templates/
│       ├── arbeitsblatt-vorlage.md    # Layout-Referenz
│       └── praesentation-master.md    # Formatierungsrichtlinien
│
└── 3_Projekt_Knowledge_Base/          # Projektspezifisch (NICHT via MCP!)
    └── README.md                       # Hinweis auf Claude Desktop Project KB
```

**Wichtig:**
- `2_Zentrale_Ressourcen/` wird aktiv von Skills genutzt (MCP READ)
- `3_Projekt_Knowledge_Base/` ist nur für lokales Backup - tatsächliche Knowledge Base läuft über Claude Desktop Projects

---

## Entwicklungs-Workflow (für Erweiterungen)

### Neuen Skill hinzufügen

1. **Erstelle Prompt-Vorlage** in `/prompts/` (z.B. `12_neue_funktion.md`)
2. **Erstelle Platzhalter:**
   ```bash
   mkdir claude-desktop-setup/skills-platzhalter/12-neue-funktion
   ```
3. **SKILL.md** mit TODO + Anweisungen für skill-creator
4. **Aktualisiere entsprechende** `skills-checklist.md`
5. **Aktualisiere PROJECT_INSTRUCTIONS.md** (wo der Skill aufgerufen wird)

### Neues Projekt hinzufügen

1. **Erstelle Ordner** `claude-desktop-setup/projekt-4-neue-aufgabe/`
2. **PROJECT_INSTRUCTIONS.md** schreiben (Orchestrierung der Skills)
3. **skills-checklist.md** erstellen (welche Skills werden benötigt?)
4. **Haupt-README.md aktualisieren**

---

## Testing & Validierung

### MCP-Test
```
Projekt: Beliebig
Prompt: "Zeige mir den Inhalt von 2_Zentrale_Ressourcen/Didaktik/Bloom-Taxonomie.md"
Erwartung: Inhalt wird angezeigt
```

### Projekt-Test
```
Projekt: Unterrichtsreihe planen
Prompt: "Ich möchte eine Unterrichtsreihe planen zum Thema Klimawandel, Klasse 9."
Erwartung: Claude startet 11-Schritte-Prozess, nutzt Skills automatisch
```

### Export-Test
```
Nach Erstellung eines Arbeitsblatts
Prompt: "Exportiere als PDF."
Erwartung: Datei in 1_Exportierte_Ergebnisse/ gespeichert
```

---

## Troubleshooting (häufige Probleme)

### Skill wird nicht aufgerufen
**Ursache:** `description` im YAML Frontmatter der SKILL.md zu unspezifisch
**Lösung:** Trigger-Keywords hinzufügen, z.B. "Trigger: Wenn eine Sachanalyse für Unterrichtsplanung benötigt wird"

### MCP Permission Denied
**Ursache:** Fehlende Schreibrechte
**Lösung:** `chmod -R 755 /Users/[NAME]/Schul-Materialien`

### Skill generiert fehlerhafte SKILL.md
**Ursache:** Prompt-Vorlage zu lang oder zu komplex
**Lösung:** Prompt in kleinere Teile zerlegen oder manuell erstellen

---

## Wichtige Befehle

### Deployment
```bash
# Ordnerstruktur auf Zielrechner erstellen
cd lehrkraft-deployment
./setup.sh /Users/[LEHRKRAFT]/Schul-Materialien

# Berechtigungen setzen
chmod -R 755 /Users/[LEHRKRAFT]/Schul-Materialien
```

### Skill-ZIP erstellen
```bash
cd claude-desktop-setup/skills-platzhalter
zip -r 02-sachanalyse.zip 02-sachanalyse/
```

### Repository-Struktur prüfen
```bash
tree -L 3 .
```

---

## Git Workflow

### .gitignore
Folgende Dateien/Ordner sind ignoriert:
- `.DS_Store` (macOS)
- Temporäre Dateien
- Lokale Test-Ordner

### Commit-Richtlinien
- **feat:** Neuer Skill, neues Projekt
- **fix:** Bugfix in Instructions oder Skills
- **docs:** Dokumentations-Updates
- **refactor:** Umstrukturierung ohne Funktionsänderung

---

## Technische Voraussetzungen (Zusammenfassung)

- **macOS** 11+
- **Claude Desktop** (aktuell)
- **Node.js** (für MCP)
- **Claude Pro/Team/Enterprise** (für Custom Skills)
- **Claude Code** (empfohlen für IT-Admin Setup)

---

## Lizenz & Credits

**Lizenz:** CC BY-SA 4.0
**Originalarbeit:** Christopher Zimmermann (Universität zu Köln)
**Repository-Transformation:** 2025

---

**Version:** 1.0
**Stand:** 2025-01-08
**Zielgruppe:** IT-Admins, Claude Code Nutzer, Entwickler
