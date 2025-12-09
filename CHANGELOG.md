# Changelog

Alle wichtigen Änderungen am LehrClaude Projekt werden hier dokumentiert.

## [2.2.0] - 2025-12-09

### Geändert
- Skill-Anzahl-Dokumentation von 6 auf 9 korrigiert
- Alle Dateien verwenden jetzt Markdown-Format (.md) statt TXT
- Alt/Neu-Architektur-Vergleiche aus Dokumentation entfernt (nur noch in CHANGELOG)
- Nicht-existierende Skill-Referenzen entfernt (mat-01, mat-04-08, klasse-*, foerder-*)
- Projekt-3 und Projekt-5 Templates auf Workflow-Anweisungen umgestellt
- Alle Versionen auf 2.2 und Daten auf 2025-12-09 vereinheitlicht

### Behoben
- Template-Platzhalter `{{INSTALLATION_PATH}}` durch `{{WORKSPACE_BASE}}` ersetzt
- TXT-Format-Referenzen zu Markdown korrigiert
- Zitationsrichtlinien-Pfad von .txt auf .md aktualisiert

---

## [2.1.0] - 2025-12-06

### Hinzugefügt
- Kontext-Laden für bestehende Unterrichtsreihen in PROJECT_INSTRUCTIONS
- Update-Strategie für Lehrkräfte in README.md
- 3 zusätzliche Skills: export-stile, differenzierung-ge, quellenrecherche

## [2.0.0] - 2025-12-06

### Architektur-Migration
Die ursprüngliche Architektur mit 23+ Skills wurde auf eine hybride Architektur umgestellt:

**Entfernt:**
- 11 Planungs-Skills (01-debiasing bis 11-iteration) → Jetzt Workflow-Anweisungen in `anweisungen/`
- 6 Material-Skills (mat-01, mat-04 bis mat-08) → Workflow-Anweisungen
- 4 Klassenverwaltungs-Skills (klasse-01 bis klasse-04) → Workflow-Anweisungen

**Behalten:**
- 2 Material-Skills: mat-02-arbeitsblatt-erstellen, mat-03-powerpoint-erstellen
- 4 Export-Skills: export-md, export-pdf, export-docx, export-pptx

**Neu hinzugefügt:**
- export-stile (Design/Styling)
- differenzierung-ge (Förderschul-Differenzierung)
- quellenrecherche (Akademische Quellenarbeit)

**Warum diese Änderung:**
- Skills sind teuer und langsam beim Laden
- Direkte Anweisungen in PROJECT_INSTRUCTIONS.md sind schneller
- Unter dem 20-Skill-Limit für Claude Pro

### Hinzugefügt
- Projekt 5: Klassenverwaltung für Förderschullehrkräfte
- 7 Förderschwerpunkte mit individueller Differenzierung
- Interaktiver 3-Phasen-Workflow (A: Sammeln → B: Erarbeiten → C: Abschluss)
- Wissenschaftliche Quellenarbeit mit Inline-Zitationen
- 2-Stufen-Recherche (Web-Suche + Deep Research)

## [1.0.0] - 2025-01-08

### Initial Release
- 3 Claude Desktop Projekte (Unterrichtsreihe, Arbeitsblatt, Präsentation)
- 23 Custom Skills
- MCP Filesystem Server Integration
- Deployment-Script für Lehrkraft-Macs
