# Changelog

Alle wichtigen Änderungen am LehrClaude Projekt werden hier dokumentiert.

**Format:** Neueste Version oben (Reverse Chronological Order)
**Template für neue Releases:** Siehe `claude-desktop-setup/RELEASE_TEMPLATE.md`

## [2.3.0] - 2025-12-10

### Behoben
- **Skill-Namens-Konsistenz:** 5 Skills hatten Mismatches zwischen Ordnername und YAML-Name
  - `export-pdf`: pdf-export-via-pandoc → export-pdf
  - `export-docx`: docx-export-microsoft-word → export-docx
  - `export-pptx`: pptx-export-powerpoint → export-pptx
  - `mat-02-arbeitsblatt-erstellen`: arbeitsblatt-erstellen-und-formatieren → mat-02-arbeitsblatt-erstellen
  - `mat-03-powerpoint-erstellen`: powerpoint-praesentation-erstellen → mat-03-powerpoint-erstellen

### Geändert
- **validate-skill.sh:** Prüft jetzt automatisch auf Name-Konsistenz zwischen Ordner und YAML
- **Naming Convention dokumentiert:** Neue Regeln in CLAUDE.md für zukünftige Skills

### Update-Anleitung für IT-Administratoren

**Zusammenfassung:** Nur kosmetische Änderung - Skills funktionieren identisch. Update ist OPTIONAL.

#### Was wurde geändert?
- 5 SKILL.md Dateien haben neue YAML-Namen (kürzer, konsistent mit Ordnernamen)
- validate-skill.sh prüft jetzt automatisch auf Name-Konsistenz
- Neue ZIPs in `skill-packages/` mit aktualisierten Namen

#### Sicherer Update-Prozess (falls gewünscht)

**Option A: Vollständiges Update (empfohlen)**
```bash
# 1. Repository aktualisieren
cd /pfad/zum/claude-desktop-setup
git pull

# 2. Neue Skill-ZIPs an Lehrkraft weitergeben
# ZIPs befinden sich in: skill-packages/*.zip
# Lehrkraft lädt diese manuell in Claude Desktop hoch

# 3. Fertig - keine weiteren Schritte erforderlich
```

**Option B: Kein Update (weiterhin funktionsfähig)**
- Alte Skills funktionieren unverändert weiter
- Nur UI-Namen in Claude Desktop sind unterschiedlich
- Kein Handlungsbedarf

#### Was muss NICHT getan werden?
- ❌ Keine MCP-Konfiguration ändern
- ❌ Keine Ordnerstruktur anpassen
- ❌ Keine Scripts neu ausführen
- ❌ Kein Zwang zum Update

#### Testen nach Update (optional)
```bash
cd claude-desktop-setup

# Prüfe alle Skills auf Konsistenz
for skill in skills/*/; do
    ./validate-skill.sh $(basename "$skill")
done

# Erwartung: Alle Skills bestehen ohne Warnungen
```

#### Support
Bei Fragen zum Update: Siehe README.md Abschnitt "Troubleshooting"

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
