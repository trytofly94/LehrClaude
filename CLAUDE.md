# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Projektübersicht

**LehrClaude** ist ein Setup-Repository zur Implementierung eines modularen Claude Desktop Ökosystems für wissenschaftlich fundierte Unterrichtsplanung. Das System besteht aus 5 spezialisierten Claude Desktop Projekten, 6 Custom Skills und einem MCP Filesystem Server für Ressourcen-Zugriff.

### Zielgruppe & Sprache
- **IT-Administratoren**: Für Deployment und Setup
- **Deutsche Lehrkräfte**: Endnutzer des Systems
- **WICHTIG**: Alle Skills, Materialien und Outputs MÜSSEN auf Deutsch erstellt werden

## Repository-Architektur

### Zwei-Ordner-Prinzip

#### 1. `/claude-desktop-setup/` - Manuelle Konfiguration
Enthält Dateien für manuelle Claude Desktop Konfiguration:
- `README.md` - Haupt-Setup-Anleitung (1-2h)
- `MCP_CONFIG.json` - MCP Filesystem Server Template
- `projekt-{1,2,3,4,5}/PROJECT_INSTRUCTIONS.md` - Claude Desktop Project Instructions
- `projekt-{1,2,3}/anweisungen/` - Detaillierte Workflow-Anweisungen (ersetzt alte Planungs-Skills)
- `skills/` - 6 Skill-Ordner (Material-Export-Skills)
- `package-skills.sh` - Erstellt ZIP-Pakete aus Skills
- `validate-skill.sh` - Validiert Skill-Struktur
- `CONFIG.sh` - Zentrale Pfad-Konfiguration (generiert von setup-paths.sh)

#### 2. `/lehrkraft-deployment/` - Automatisches Deployment
- `setup.sh` - Erstellt Ordnerstruktur auf Lehrkraft-Mac
- `ordnerstruktur-vorlage/` - Template mit Ressourcen

#### 3. `/prompts/` - Archivierte Original-Prompts
29 Original-Prompt-Vorlagen (archiviert - jetzt in `projekt-*/anweisungen/` integriert)

## Wichtige Befehle

### ⚠️ WICHTIG: Pfad-Konfiguration (MUSS ZUERST AUSGEFÜHRT WERDEN!)
```bash
cd claude-desktop-setup
./setup-paths.sh
```
**Was passiert:** Fragt nach Installations-Pfad, erstellt `CONFIG.sh`, ersetzt alle Platzhalter in Templates (`MCP_CONFIG.json`, `PROJECT_INSTRUCTIONS.md`, etc.), macht Scripts ausführbar.

**Prüfen:** `./CONFIG.sh` zeigt alle konfigurierten Pfade an.

### Deployment auf Lehrkraft-Mac
```bash
cd lehrkraft-deployment
./setup.sh /Users/[LEHRKRAFT]/Schul-Materialien
```

### Skill-ZIP-Pakete erstellen
```bash
cd claude-desktop-setup
./package-skills.sh  # Erstellt ZIPs für alle Skills in skills/
```

**Optionen:**
- `--clean` - Alte ZIPs löschen vor dem Packen
- `--verify` - ZIP-Inhalte nach dem Packen prüfen
- `--force` - Alle Skills neu packen (ignoriert Zeitstempel)

**Intelligente Packaging:** Nur geänderte Skills werden standardmäßig neu gepackt (Zeitstempel-basiert).

### Skill validieren
```bash
cd claude-desktop-setup
./validate-skill.sh 02-sachanalyse  # Name ohne "skills/" Präfix
```

**Prüft:** YAML Frontmatter, Markdown-Struktur, Ressourcen-Ordner, Dateigröße

## Skill-Architektur

### Neue Architektur: 6 Custom Skills + Workflow-Anweisungen

**Wichtige Änderung:** Die alten 27 Skills wurden durch eine hybride Architektur ersetzt:

**Custom Skills (6 - nur für Material-Export):**
- `mat-02-arbeitsblatt-erstellen` - Erstellt Arbeitsblätter basierend auf Vorgaben
- `mat-03-powerpoint-erstellen` - Erstellt PowerPoint-Präsentationen
- `export-txt` - Exportiert in strukturiertes TXT-Format (Haupt-Export für Lehrkräfte)
- `export-pdf` - Exportiert als PDF
- `export-docx` - Exportiert als DOCX
- `export-pptx` - Exportiert als PPTX

**Workflow-Anweisungen (in `projekt-*/anweisungen/`):**
Alle Planungs- und Prozess-Funktionen sind jetzt als direkte Anweisungen in den PROJECT_INSTRUCTIONS.md integriert:
- **Projekt 1 (Unterrichtsreihe):** 11-Schritte-Prozess in `anweisungen/01-debiasing.md` bis `11-iteration.md`
- **Projekt 2 (Arbeitsblatt):** Arbeitsblatt-Workflow in `anweisungen/`
- **Projekt 3 (Präsentation):** Präsentations-Workflow in `anweisungen/`
- **Projekt 5 (Klassenverwaltung):** Förderschul-Workflows für Schülerprofile und Differenzierung

**Warum diese Änderung?**
- Skills sind teuer und langsam beim Laden
- Direkte Anweisungen in PROJECT_INSTRUCTIONS.md sind schneller und flexibler
- Skills nur noch für wiederverwendbare Material-Generierung
- Projekt-spezifische Workflows direkt in den Projekten

## Interaktiver 3-Phasen-Workflow

**Jeder der 11 Planungsschritte folgt einem expliziten 3-Phasen-Workflow:**

### Phase A: Informationen sammeln
- Rückfragen an die Lehrkraft stellen
- Auf Antworten warten
- Bei Unklarheiten: Nachfragen, nicht annehmen

### Phase B: Iterative Erarbeitung
- Inhalte basierend auf Input erarbeiten
- **Zusammenfassung** im Chat zeigen (nicht voller Text)
- Fragen: "Passt diese Richtung? Änderungswünsche?"
- Anpassen basierend auf Feedback
- Wiederholen bis Zufriedenheit

### Phase C: Abschluss
- Finale Zusammenfassung im Chat zeigen
- Fragen: "Sind Sie mit diesem Ergebnis zufrieden?"
- **Erst nach Zustimmung:** "Soll ich das als TXT speichern?"
- Export nur auf expliziten Wunsch

**VERBOTEN:**
- Direkt TXT-Dateien erstellen ohne vorherige Abstimmung
- Annehmen, dass die Lehrkraft zufrieden ist
- Inhalte generieren ohne Rückfragen

## Wissenschaftliche Quellenarbeit

**Für akademische Abgaben ist quellenbasierte Arbeit erforderlich:**

### 2-Stufen-Recherche
1. **Web-Suche (Standard):** Für begrenzte Anfragen (Fakten, Definitionen, einzelne Quellen)
2. **Deep Research (manuell):** Bei umfangreichem Recherchebedarf
   - Claude formuliert Recherche-Prompt
   - Lehrkraft aktiviert Deep Research manuell
   - Ergebnisse werden integriert

### Quellenvalidierung (PFLICHT!)
- **Jede Quelle muss vor Zitation per Web-Suche abgerufen werden**
- Existenz und Korrektheit prüfen
- NIEMALS nicht-verifizierte oder halluzinierte Quellen zitieren

### Zitationsformat
- **Inline im Text:** (Autor, Jahr) oder (Autor, Jahr, S. X)
- **Quellenverzeichnis am Ende:** Alphabetisch sortiert
- **Format-Vorlage:** `2_Zentrale_Ressourcen/Didaktik/Zitationsrichtlinien.txt`

### Quellentypen (Priorität)
1. Hochgeladene Dokumente der Lehrkraft
2. Lehrpläne via MCP-Filesystem
3. Fachdidaktische Standardwerke (Klafki, Leisen, Meyer, Helmke)
4. Aktuelle Fachliteratur via Web-Suche/Deep Research (deutschsprachig bevorzugt)

### Skill-Struktur
Jeder Skill-Ordner enthält:
- `SKILL.md` - YAML Frontmatter + Markdown-Anweisungen
- Format: `name`, `description` (mit Trigger-Keywords), Markdown-Body

### Projekt-Zuordnungen
- **Projekt 1 (Unterrichtsreihe)**: Workflow in `anweisungen/` + 2 Material-Skills + 4 Export-Skills
- **Projekt 2 (Arbeitsblatt)**: Workflow in `anweisungen/` + 1 Material-Skill + 4 Export-Skills
- **Projekt 3 (Präsentation)**: Workflow in `anweisungen/` + 1 Material-Skill + 4 Export-Skills
- **Projekt 4 (Skill-Verwaltung)**: Für IT-Admins - Skills direkt in Claude Desktop bearbeiten, validieren, packen
- **Projekt 5 (Klassenverwaltung)**: Workflow in `anweisungen/` für Schülerprofile und Differenzierung

## MCP Filesystem Server Integration

### Ordnerstruktur (auf Lehrkraft-Mac)
```
Schul-Materialien/
├── 1_Exportierte_Ergebnisse/     # SCHREIBEN (Export-Skills)
├── 2_Zentrale_Ressourcen/        # LESEN (alle Skills)
│   ├── Lehrplaene/               # Bundeslandspezifisch
│   ├── Didaktik/                 # KMK-Operatoren, Bloom-Taxonomie
│   └── Templates/                # Arbeitsblatt/Präsentations-Vorlagen
├── 3_Projekt_Knowledge_Base/     # Nur lokales Backup (NICHT via MCP)
└── 4_Klassen_und_Schueler/       # LESEN (Förderschul-Skills)
    ├── Klasse_5a_LE/             # Förderschwerpunkt Lernen
    │   ├── Klasseninfo.md
    │   └── Schuelerprofile/
    │       ├── Max_Mustermann.md
    │       └── ...
    ├── Klasse_7b_GE/             # Förderschwerpunkt Geistige Entwicklung
    │   ├── Klasseninfo.md
    │   └── Schuelerprofile/
    └── ...
```

### MCP-Konfiguration
- Template: `claude-desktop-setup/MCP_CONFIG_TEMPLATE.json`
- Wird von `setup-paths.sh` automatisch zu `MCP_CONFIG.json` generiert mit korrekten Pfaden
- Manuell anpassen falls Deployment-Pfad sich ändert

## TXT-Format für Lehrkraft-Dateien

Alle für Lehrkräfte sichtbaren Dateien werden im strukturierten TXT-Format erstellt (nicht Markdown).

### Warum TXT statt Markdown?
- **Mac-Kompatibilität:** Mac Vorschau zeigt TXT sofort korrekt an (Markdown nur als Quelltext)
- **Word-Integration:** Kopieren in Word funktioniert ohne Markdown-Syntax-Artefakte (`#`, `*`, etc.)
- **Keine Vorkenntnisse:** Lehrkräfte müssen kein Markdown kennen oder lernen
- **Universelle Lesbarkeit:** Jeder Editor kann TXT öffnen und bearbeiten

### Was bleibt .md (intern, für Lehrkraft unsichtbar):
- `SKILL.md` (Claude Desktop Requirement - muss Markdown sein)
- `PROJECT_INSTRUCTIONS.md` (in Claude Desktop Settings - nur Admin sieht diese)
- `anweisungen/*.md` (nur von Claude gelesen, Lehrkraft nutzt nur die Ergebnisse)
- `Klasseninfo.md` und `Schuelerprofile/*.md` (werden zu .txt migriert)

### Was ist .txt (für Lehrkraft sichtbar):
- **Exportierte Ergebnisse** (`1_Exportierte_Ergebnisse/`) - Alle fertigen Unterrichtsmaterialien
- **Zentrale Ressourcen** (`2_Zentrale_Ressourcen/`) - Lehrpläne, Didaktik-Frameworks, Templates
- **Schülerprofile** (`4_Klassen_und_Schueler/`) - Klasseninfo und individuelle Schülerprofile

### TXT-Formatierungsregeln für Skills:

**Überschriften:**
```
HAUPTÜBERSCHRIFT
=================

Unterüberschrift
-----------------
```

**Listen:**
```
- Einfache Bindestriche für Listen
- Keine verschachtelten Listen
```

**Hervorhebungen:**
```
WICHTIG: Großbuchstaben für wichtige Begriffe
*Sternchen* für moderate Betonung
```

**Struktur-Elemente:**
```
Abschnitte durch Leerzeilen trennen

Längere Trennlinien für visuelle Trennung:
===================================
```

**WICHTIG für Export-Skills:**
- Keine Markdown-Syntax im Output (`#`, `##`, `**bold**`, etc.)
- Stattdessen strukturierte TXT-Formatierung verwenden
- Ziel: Datei ist sofort in Mac Vorschau lesbar und in Word kopierbar

## Entwicklungs-Workflow

### Neuen Skill hinzufügen (nur für Material-Export!)
**Hinweis:** Skills sollten nur noch für wiederverwendbare Material-Generierung erstellt werden. Für Workflows nutze `projekt-*/anweisungen/`.

1. Erstelle Skill-Ordner: `mkdir claude-desktop-setup/skills/neue-funktion`
2. Erstelle `SKILL.md` mit YAML Frontmatter + Anweisungen:
   ```markdown
   ---
   name: Skill Name
   description: Klare Beschreibung mit Trigger-Keywords...
   ---

   # Skill Title

   ## Zweck
   ...

   ## Wann wird dieser Skill verwendet?
   ...
   ```
3. Validiere: `./validate-skill.sh neue-funktion`
4. Packe: `./package-skills.sh`
5. Aktualisiere entsprechende `skills-checklist.md` in Projekt-Ordnern
6. Füge Skill zu `PROJECT_INSTRUCTIONS_TEMPLATE.md` hinzu
7. Führe `./setup-paths.sh` aus um `PROJECT_INSTRUCTIONS.md` neu zu generieren

### Neuen Workflow hinzufügen (empfohlen!)
Für Planungs- und Prozess-Schritte nutze die `anweisungen/` Ordner:

1. Erstelle `projekt-X/anweisungen/neue-anweisung.md`
2. Schreibe klare, schrittweise Anweisungen in Markdown
3. Referenziere die Anweisung in `PROJECT_INSTRUCTIONS_TEMPLATE.md`
4. Führe `./setup-paths.sh` aus

### Neues Projekt hinzufügen
1. Erstelle `claude-desktop-setup/projekt-5-neue-aufgabe/`
2. Erstelle `PROJECT_INSTRUCTIONS_TEMPLATE.md` (nutze Platzhalter wie `{{INSTALLATION_PATH}}`)
3. Erstelle `skills-checklist.md` (benötigte Skills)
4. Führe `./setup-paths.sh` aus um `PROJECT_INSTRUCTIONS.md` zu generieren
5. Aktualisiere Haupt-README.md

### Template-Platzhalter System
**Wichtig:** Generierte Dateien NIEMALS manuell bearbeiten!

**Templates (manuell editieren):**
- `MCP_CONFIG_TEMPLATE.json`
- `PROJECT_INSTRUCTIONS_TEMPLATE.md` (in jedem Projekt-Ordner)
- `validate-skill_TEMPLATE.sh`
- `package-skills_TEMPLATE.sh`

**Generierte Dateien (von setup-paths.sh):**
- `MCP_CONFIG.json`
- `PROJECT_INSTRUCTIONS.md`
- `validate-skill.sh`
- `package-skills.sh`

**Änderungen vornehmen:**
1. Bearbeite `*_TEMPLATE.*` Datei
2. Führe `./setup-paths.sh` aus
3. Prüfe generierte Datei

## Git Workflow

### Commit-Richtlinien
- `feat:` - Neuer Skill, neues Projekt
- `fix:` - Bugfix in Instructions oder Skills
- `docs:` - Dokumentations-Updates
- `refactor:` - Umstrukturierung ohne Funktionsänderung

### .gitignore
- `.DS_Store` (macOS)
- Temporäre Dateien
- Lokale Test-Ordner

## Technische Voraussetzungen

- **macOS** 11+
- **Claude Desktop** (aktuell)
- **Node.js** (für MCP Filesystem Server)
- **Claude Pro/Team/Enterprise** (für Custom Skills)

### Optional
- **pandoc** (für PDF/DOCX-Export)
- **marp** (für PPTX-Export)

## Didaktische Grundlagen

Das System basiert auf:
- Klafkis Bildungstheoretische Didaktik
- Leisens Phasierung des Unterrichts (6 Phasen)
- Wembers Differenzierungsmodell (Basis/Unterstützung/Erweiterung)
- SMART-Zielformulierung
- Bloom-Taxonomie (6 kognitive Stufen)
- KMK-Operatoren (standardisierte Aufgaben-Verben)

**Basierend auf:**
- **ZfL-Lernmodul:** "Unterrichtsreihenplanung mit KI" (Universität zu Köln)
- **Originalautor:** Christopher Zimmermann
- **Link:** https://zfl-lernen.de/lernmodule/methoden/unterrichtsreihenplanung-mit-ki/

Dieses Repository ist eine eigenständige Implementierung der Konzepte als modulares Claude Desktop System.

## Förderschul-Integration

Das System unterstützt 7 Förderschwerpunkte:

1. **Lernen (LE)**: Kleinschrittigkeit, vereinfachte Sprache, mehr Wiederholung
2. **Emotional-soziale Entwicklung (ESE)**: Klare Strukturen, positive Verstärkung
3. **Sprache (SQ)**: Unterstützte Kommunikation, Piktogramme, alternative Kommunikationsformen
4. **Geistige Entwicklung (GE)**: Nur Piktogramme (kein Text!), basale Stimulation, lebenspraktische Bezüge
5. **Körperlich-motorische Entwicklung (KME)**: Barrierefreie Materialien, große Schrift, angepasste Sozialformen
6. **Hören und Kommunikation (HK)**: Gebärdensprache-Unterstützung, Visualisierungen
7. **Sehen (SE)**: Tastmaterialien, Audiodeskriptionen, hoher Kontrast, Braille/Großdruck

### Klassenverwaltung (4_Klassen_und_Schueler/)

**Struktur pro Klasse:**
```
Klasse_[STUFE][BUCHSTABE]_[FÖRDERSCHWERPUNKT]/
├── Klasseninfo.md            # Klassenübersicht (Anzahl SuS, besondere Bedingungen)
└── Schuelerprofile/          # Individuelle Schülerprofile
    ├── Vorname_Nachname.md   # Pro Schüler:in
    └── ...
```

**Beispiel Schülerprofil-Vorlage:**
```markdown
# Max Mustermann

## Stammdaten
- **Klasse**: 5a
- **Förderschwerpunkt**: Lernen (LE)
- **Alter**: 11 Jahre

## Lernausgangslage
- Leseniveau: Klasse 2
- Mathematik: Zahlenraum bis 100
- Stärken: Handwerkliche Tätigkeiten, soziale Kompetenzen
- Barrieren: Schriftsprache, abstrakte Konzepte

## Besondere Bedürfnisse
- Benötigt visuelle Stützen
- Arbeitet gut in Kleingruppen
- Braucht häufige Pausen

## Lernziel-Anpassungen
- Reduktion der Textmenge
- Mehr Beispiele und Übungen
- Handlungsorientierte Aufgaben
```

**Integration in Workflow:**
- Projekt 5 (Klassenverwaltung) enthält Anweisungen zum Laden und Verarbeiten von Schülerprofilen
- Automatische Differenzierung basierend auf Förderschwerpunkt
- Bei GE: Ausschließlich bildbasierte Materialien (keine Texte)

## Script-Übersicht

| Script | Zweck | Verwendung |
|--------|-------|------------|
| `lehrkraft-deployment/setup.sh` | Erstellt Ordnerstruktur auf Ziel-Mac | Einmalig pro Installation |
| `claude-desktop-setup/package-skills.sh` | Erstellt ZIP-Pakete aus Skills | Nach Skill-Erstellung |
| `claude-desktop-setup/validate-skill.sh` | Validiert Skill-Struktur | Vor Packaging |
| `claude-desktop-setup/setup-paths.sh` | Generiert CONFIG.sh mit Pfaden | Nach Pfad-Änderungen |

## Testing & Validierung

### MCP-Test
In beliebigem Projekt:
```
Prompt: "Zeige mir den Inhalt von 2_Zentrale_Ressourcen/Didaktik/Bloom-Taxonomie.md"
Erwartung: Inhalt wird angezeigt
```

### Projekt-Test
In "Unterrichtsreihe planen":
```
Prompt: "Ich möchte eine Unterrichtsreihe zum Thema Klimawandel, Klasse 9 planen."
Erwartung: Claude führt durch den 11-Schritte-Prozess basierend auf den Anweisungen
```

### Export-Test
Nach Material-Erstellung:
```
Prompt: "Exportiere als TXT."
Erwartung: Datei in 1_Exportierte_Ergebnisse/ gespeichert (strukturiertes TXT-Format)

Prompt: "Exportiere als PDF."
Erwartung: Datei in 1_Exportierte_Ergebnisse/ gespeichert
```

## Troubleshooting

### Problem: Skill wird nicht aufgerufen
**Symptom:** Claude nutzt den Skill nicht, obwohl er aktiviert ist.

**Lösung:**
1. Prüfe YAML `description` - muss klare Trigger-Keywords enthalten
2. Test manueller Aufruf: "Bitte nutze den Skill [NAME]"
3. Falls das funktioniert: `description` in SKILL.md verbessern und neu packen

**Hinweis:** Für Workflow-Schritte nutze jetzt die `anweisungen/` Ordner statt Skills!

### Problem: MCP "Permission Denied"
**Lösung:**
```bash
chmod -R 755 /Users/[LEHRKRAFT]/Schul-Materialien
```

### Problem: Packaging schlägt fehl
**Lösungen:**
- Prüfe ob `zip` installiert: `brew install zip`
- Lösche alte ZIPs: `./package-skills.sh --clean`
- Prüfe ZIP-Struktur: `unzip -l skill-packages/skill-name.zip`

### Problem: setup-paths.sh funktioniert nicht
**Lösungen:**
- Stelle sicher du bist im `claude-desktop-setup/` Verzeichnis
- Prüfe ob Template-Dateien vorhanden sind (`*_TEMPLATE.*`)
- Prüfe ob `CONFIG.sh` erstellt wurde: `ls -la CONFIG.sh`

### Problem: Generierte Dateien veraltet
**Lösung:** Immer nach Template-Änderungen `./setup-paths.sh` neu ausführen!

## Wichtige Dateien

- `README.md` - Hauptdokumentation für alle Nutzer
- `CLAUDE.md` - Diese Datei (für Claude Code)
- `claude-desktop-setup/README.md` - Setup-Anleitung für IT-Admins
- `claude-desktop-setup/CONFIG.sh` - Generierte Pfad-Konfiguration
- `lehrkraft-deployment/README.md` - Deployment-Details
- Alle `*_TEMPLATE.*` Dateien - Basis für Code-Generierung

## Lizenz & Credits

**Lizenz:** CC BY-SA 4.0
**Originalarbeit:** Christopher Zimmermann (Universität zu Köln)
**Repository-Transformation:** 2025

## Quick Reference: Häufigste Aufgaben

| Aufgabe | Befehl |
|---------|--------|
| **Setup initialisieren** | `cd claude-desktop-setup && ./setup-paths.sh` |
| **Deployment** | `cd lehrkraft-deployment && ./setup.sh /pfad` |
| **Skill validieren** | `cd claude-desktop-setup && ./validate-skill.sh <name>` |
| **Skills packen** | `cd claude-desktop-setup && ./package-skills.sh` |
| **Skills force repacken** | `cd claude-desktop-setup && ./package-skills.sh --force` |
| **Config prüfen** | `cd claude-desktop-setup && ./CONFIG.sh` |
| **Template ändern** | 1. Bearbeite `*_TEMPLATE.*`, 2. Führe `./setup-paths.sh` aus |

## Wichtige Hinweise für Claude Code

1. **Sprache:** Alle Skill-Inhalte, Instructions und generierte Materialien MÜSSEN auf Deutsch sein
2. **Pfad-Konfiguration:** IMMER prüfen ob `./setup-paths.sh` ausgeführt wurde bevor mit Templates gearbeitet wird
3. **Keine manuellen Edits:** Generierte Dateien (`*_CONFIG.json`, `PROJECT_INSTRUCTIONS.md`, etc.) NIEMALS direkt bearbeiten - nur Templates ändern
4. **Skill-Struktur:** YAML Frontmatter mit `name` und `description` ist zwingend erforderlich
5. **Packaging Intelligence:** `package-skills.sh` erkennt Änderungen automatisch - nur geänderte Skills werden neu gepackt
6. **MCP-Zugriff:** Skills lesen aus `2_Zentrale_Ressourcen/` und schreiben nach `1_Exportierte_Ergebnisse/`
7. **Projekt 4:** Nutze "Skill-Verwaltung" Projekt für Skill-Bearbeitung direkt in Claude Desktop

---

**Version:** 1.2
**Stand:** 2025-01-10
**Zielgruppe:** IT-Admins, Claude Code Nutzer, Entwickler
