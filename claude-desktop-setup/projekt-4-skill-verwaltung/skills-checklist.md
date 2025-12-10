# Skills-Checklist - Lehrkraft-Copilot-System

## Übersicht: 9 Custom Skills

Diese Checklist dient als Referenz für alle Skills im System. Sie wird von Claude im Projekt "Skill-Verwaltung" verwendet.

---

## Skill-Architektur

Das System nutzt **9 Custom Skills** für Material-Erstellung, Differenzierung, Design und Export.
Workflow-Anweisungen sind direkt in den PROJECT_INSTRUCTIONS.md der jeweiligen Projekte integriert.

Für Details zur Architektur-Entwicklung siehe [CHANGELOG.md](../../../CHANGELOG.md).

---

## Material-Skills (2 Skills)

Werden in den Projekten "Arbeitsblatt erstellen" und "Präsentation entwerfen" verwendet.

| # | Skill-Name | Zweck | Pfad | Status |
|---|------------|-------|------|--------|
| 1 | **mat-02-arbeitsblatt-erstellen** | Strukturierte Arbeitsblätter generieren | `skills/mat-02-arbeitsblatt-erstellen/` | ✅ Aktiv |
| 2 | **mat-03-powerpoint-erstellen** | Didaktische PowerPoint-Präsentationen | `skills/mat-03-powerpoint-erstellen/` | ✅ Aktiv |

---

## Export-Skills (4 Skills)

Werden in allen Projekten verwendet.

| # | Skill-Name | Zweck | Pfad | Besonderheit |
|---|------------|-------|------|--------------|
| 3 | **export-md** | Export nach Markdown mit MCP | `skills/export-md/` | ✅ Aktiv, MCP Write |
| 4 | **export-pdf** | Export nach PDF via Pandoc | `skills/export-pdf/` | ✅ Aktiv, scripts/ vorhanden |
| 5 | **export-docx** | Export nach Word (.docx) | `skills/export-docx/` | ✅ Aktiv, scripts/ vorhanden |
| 6 | **export-pptx** | Export nach PowerPoint (.pptx) | `skills/export-pptx/` | ✅ Aktiv, scripts/ vorhanden |

---

## Design-Skills (1 Skill)

| # | Skill-Name | Zweck | Pfad | Besonderheit |
|---|------------|-------|------|--------------|
| 7 | **export-stile** | Schulfarben, Themes, PowerPoint-Vorlagen | `skills/export-stile/` | ✅ Aktiv |

---

## Differenzierungs-Skills (1 Skill)

| # | Skill-Name | Zweck | Pfad | Besonderheit |
|---|------------|-------|------|--------------|
| 8 | **differenzierung-ge** | Piktogramm-unterstützte Materialien für GE | `skills/differenzierung-ge/` | ✅ Aktiv |

---

## Recherche-Skills (1 Skill)

| # | Skill-Name | Zweck | Pfad | Besonderheit |
|---|------------|-------|------|--------------|
| 9 | **quellenrecherche** | Quellenvalidierung und Zitationsformatierung | `skills/quellenrecherche/` | ✅ Aktiv

---

## Workflow-Anweisungen (keine Skills!)

**Diese sind JETZT als Markdown-Dateien in `projekt-*/anweisungen/` verfügbar:**

### Projekt 1: Unterrichtsreihe planen (11 Anweisungen)
- 01-debiasing.md - Bias-Vermeidung
- 02-sachanalyse.md - Fachliche Analyse
- 03-didaktische-analyse.md - Didaktische Reduktion
- 04-fachbegriffe-klaeren.md - Terminologie aufbereiten
- 05-lernziele-operationalisieren.md - SMART-Lernziele formulieren
- 06-mindmap-strukturierung.md - Wissensstruktur visualisieren
- 07-unterrichtsverlauf-planen.md - Stundenplanung
- 08-lernkontrollen-entwickeln.md - Assessment-Design
- 09-material-zusammenstellen.md - Ressourcen organisieren
- 10-reflexion-durchfuehren.md - Evaluation
- 11-iteration-optimierung.md - Verbesserung

### Projekt 2: Arbeitsblatt erstellen
- Lernziele formulieren
- Aufgaben generieren
- Lösungen erstellen
- Formatierung und Layout

### Projekt 3: Präsentation entwerfen
- Lernziele formulieren
- Themenstruktur visualisieren
- Folienstruktur planen
- Sprechernotizen erstellen

### Projekt 5: Klassenverwaltung
- Schülerprofile erstellen
- Schülerprofile validieren
- Klassenübersichten generieren
- Differenzierungs-Empfehlungen

---

## Skill-Struktur (Standard)

Jeder Skill hat folgende Standardstruktur:

```
skill-name/
├── SKILL.md                    # Hauptdatei (YAML + Markdown)
└── resources/
    ├── .gitkeep
    ├── templates/              # Vorlagen (noch nicht implementiert)
    └── data/                   # Referenzdaten (noch nicht implementiert)
```

**Export-Skills haben zusätzlich:**
```
skill-name/
├── SKILL.md
├── resources/
└── scripts/                    # Hilfsskripte für Export
    └── .gitkeep
```

---

## YAML Frontmatter (Pflicht)

**Jede SKILL.md beginnt mit:**
```yaml
---
name: Skill-Name für Display
description: |
  Was macht der Skill?
  Wann wird er verwendet?
  Trigger-Keywords für Discovery.
version: 2.3.0                  # Optional
---
```

---

## Wichtige Markdown-Sektionen

**Empfohlene Struktur in SKILL.md:**

```markdown
# Skill-Name

## Zweck / Overview
Kurzbeschreibung (2-3 Sätze)

## Wann wird dieser Skill verwendet?
Trigger-Bedingungen

## Anwendung / Instructions
Schritt-für-Schritt Workflow

## Workflow
Nummerierte Schritte

## Output
Erwartetes Ergebnis

## Resources
Verweis auf resources/ Ordner

## Next Steps
Was kommt als nächstes?
```

---

## Kategorisierung nach Projekt

### Projekt 1: Unterrichtsreihe planen
- Workflow in `anweisungen/` (11 Schritte)
- ✅ mat-02-arbeitsblatt-erstellen (optional)
- ✅ mat-03-powerpoint-erstellen (optional)
- ✅ export-md, export-pdf, export-docx, export-pptx

### Projekt 2: Arbeitsblatt erstellen
- Workflow in `anweisungen/`
- ✅ mat-02-arbeitsblatt-erstellen
- ✅ export-md, export-pdf, export-docx

### Projekt 3: Präsentation entwerfen
- Workflow in `anweisungen/`
- ✅ mat-03-powerpoint-erstellen
- ✅ export-md, export-pptx

### Projekt 4: Skill-Verwaltung (dieses Projekt)
- Keine Skills aktiviert (arbeitet MIT den Skills, nutzt sie nicht)

### Projekt 5: Klassenverwaltung
- Workflow in `anweisungen/`
- ✅ export-md, export-pdf (optional)

---

## Didaktische Frameworks (Referenz)

**Die Workflows basieren auf:**

1. **Klafki's Bildungstheoretische Didaktik**
   - 5 Fragen der didaktischen Analyse
   - Anweisung: anweisungen/03-didaktische-analyse.md

2. **Leisen's 6-Phasen-Modell**
   - Strukturierung von Unterrichtsstunden
   - Anweisung: anweisungen/07-unterrichtsverlauf-planen.md

3. **Wember's Differenzierungsmodell**
   - Basis / Unterstützung / Erweiterung
   - Anweisungen: 07, 08

4. **Bloom's Taxonomie**
   - 6 kognitive Stufen (Erinnern → Erschaffen)
   - Anweisung: anweisungen/05-lernziele-operationalisieren.md

5. **KMK-Operatoren**
   - Standardisierte Aufgaben-Verben
   - Integriert in Arbeitsblatt-Workflow

---

## Status-Legende

| Status | Bedeutung |
|--------|-----------|
| ✅ Aktiv | Skill ist fertig, validiert, gepackt |
| 🔄 In Bearbeitung | Skill wird gerade angepasst |
| ⚠️ Fehler | Validierung fehlgeschlagen |
| 🆕 Neu | Skill wurde neu erstellt |
| 📦 Gepackt | ZIP-Datei aktualisiert |

---

## Verwendung dieser Checklist

**Für Claude (im Projekt "Skill-Verwaltung"):**
- Referenz für alle verfügbaren Skills
- Schnelle Übersicht über Struktur und Zweck
- Mapping zu Projekten
- Erklärung der neuen Workflow-Anweisungen

**Für IT-Admins:**
- Tracking von Änderungen
- Übersicht über System-Architektur
- Dokumentation der Skill-Beziehungen

---

**Version:** 2.2
**Zuletzt aktualisiert:** 2025-12-09
**Anzahl Skills:** 9
**Anzahl Workflow-Anweisungen:** ~25 (in projekt-*/anweisungen/)
