# Skills-Checklist - Lehrkraft-Copilot-System

## Übersicht: 6 Custom Skills

Diese Checklist dient als Referenz für alle Skills im System. Sie wird von Claude im Projekt "Skill-Verwaltung" verwendet.

---

## Wichtige Änderung: Neue Architektur (Version 2.0)

**Alte Architektur (veraltet):** 23 Skills (11 Planungs-Skills + 8 Material-Skills + 4 Export-Skills)

**Neue Architektur (aktuell):**
- **6 Custom Skills** nur für Material-Erstellung und Export
- **Workflow-Anweisungen** direkt in PROJECT_INSTRUCTIONS.md integriert (in `projekt-*/anweisungen/`)

**Warum diese Änderung?**
- Skills sind teuer und langsam beim Laden
- Direkte Anweisungen in PROJECT_INSTRUCTIONS.md sind schneller und flexibler
- Skills nur noch für wiederverwendbare Material-Generierung
- Planungs- und Prozess-Schritte sind jetzt Anweisungen, keine Skills

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
| 3 | **export-txt** | Export nach Markdown mit MCP | `skills/export-txt/` | ✅ Aktiv, MCP Write |
| 4 | **export-pdf** | Export nach PDF via Pandoc | `skills/export-pdf/` | ✅ Aktiv, scripts/ vorhanden |
| 5 | **export-docx** | Export nach Word (.docx) | `skills/export-docx/` | ✅ Aktiv, scripts/ vorhanden |
| 6 | **export-pptx** | Export nach PowerPoint (.pptx) | `skills/export-pptx/` | ✅ Aktiv, scripts/ vorhanden |

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
version: 1.0.0                  # Optional
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
- ✅ export-txt, export-pdf, export-docx, export-pptx

### Projekt 2: Arbeitsblatt erstellen
- Workflow in `anweisungen/`
- ✅ mat-02-arbeitsblatt-erstellen
- ✅ export-txt, export-pdf, export-docx

### Projekt 3: Präsentation entwerfen
- Workflow in `anweisungen/`
- ✅ mat-03-powerpoint-erstellen
- ✅ export-txt, export-pptx

### Projekt 4: Skill-Verwaltung (dieses Projekt)
- Keine Skills aktiviert (arbeitet MIT den Skills, nutzt sie nicht)

### Projekt 5: Klassenverwaltung
- Workflow in `anweisungen/`
- ✅ export-txt, export-pdf (optional)

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
- Migration Guide (Alt → Neu)

---

## Migration Guide: Von 23 Skills zu 6 Skills

**Was wurde entfernt:**
- 11 Planungs-Skills (01-11) → Jetzt in `anweisungen/`
- 6 Material-Skills (mat-01, mat-04 bis mat-08) → Workflow-Anweisungen
- 4 Klassenverwaltungs-Skills (klasse-01 bis klasse-04) → Workflow-Anweisungen

**Was wurde behalten:**
- 2 Material-Skills (mat-02, mat-03) - Wiederverwendbare Material-Generierung
- 4 Export-Skills - Technische Export-Funktionen

**Neue Dateien:**
- `projekt-1-unterrichtsreihe/anweisungen/*.md` (11 Dateien)
- `projekt-2-arbeitsblatt/anweisungen/*.md`
- `projekt-3-praesentation/anweisungen/*.md`
- `projekt-5-klassenverwaltung/anweisungen/*.md`

---

**Version:** 2.0
**Zuletzt aktualisiert:** 2025-11-30
**Anzahl Skills:** 6 (reduziert von 23)
**Anzahl Workflow-Anweisungen:** ~20+ (in projekt-*/anweisungen/)
