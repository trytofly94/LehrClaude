# Changelog

Alle wichtigen Änderungen am LehrClaude System werden in dieser Datei dokumentiert.

Das Format basiert auf [Keep a Changelog](https://keepachangelog.com/de/1.0.0/).

---

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
- Kontext-Laden bei bestehenden Projekten
- Update-Strategie für Lehrkräfte (Git-basiert)

### Geändert
- Migration von TXT zu Markdown-Format systemweit

---

## [2.0.0] - 2025-12-06

### Architektur-Migration

**Von 27 Skills zu 9 Skills + Workflow-Anweisungen**

Diese Version markiert eine grundlegende Architektur-Änderung:

#### Entfernte Skills (zu Workflow-Anweisungen konvertiert)
- **11 Planungs-Skills** (01-debiasing bis 11-iteration) → `projekt-1/anweisungen/`
- **6 Material-Skills** (mat-01, mat-04 bis mat-08) → Workflow-Anweisungen
- **4 Klassenverwaltungs-Skills** (klasse-01 bis klasse-04) → `projekt-5/anweisungen/`
- **4 Förderschul-Skills** (foerder-01 bis foerder-04) → Integriert in Projekt-Instructions

#### Beibehaltene Skills (9)
**Material-Skills (2):**
- `mat-02-arbeitsblatt-erstellen`
- `mat-03-powerpoint-erstellen`

**Export-Skills (4):**
- `export-md`
- `export-pdf`
- `export-docx`
- `export-pptx`

**Spezial-Skills (3):**
- `quellenrecherche` - Wissenschaftliche Quellen validieren
- `differenzierung-ge` - Piktogramm-Materialien für GE
- `export-stile` - Schulfarben und Design-Templates

#### Warum diese Änderung?
- Skills sind teuer und langsam beim Laden
- Direkte Anweisungen in PROJECT_INSTRUCTIONS.md sind schneller und flexibler
- Skills nur noch für wiederverwendbare Material-Generierung
- Projekt-spezifische Workflows direkt in den Projekten

---

## [1.0.0] - 2025-11-09

### Initial Release
- 5 Claude Desktop Projekte
- 23 Custom Skills (alte Architektur)
- MCP Filesystem Server Integration
- Deployment-Scripts für Lehrkraft-Macs

---

**Hinweis:** Historische Architektur-Informationen sind hier dokumentiert.
Die aktuelle Dokumentation (README.md, CLAUDE.md, skills-checklist.md) zeigt nur den aktuellen Stand.
