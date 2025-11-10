# Skills-Checklist - Lehrkraft-Copilot-System

## Übersicht: 23 Custom Skills

Diese Checklist dient als Referenz für alle Skills im System. Sie wird von Claude im Projekt "Skill-Verwaltung" verwendet.

---

## Planungs-Skills (11 Skills)

Werden im Projekt "Unterrichtsreihe planen" verwendet.

| # | Skill-Name | Zweck | Pfad | Status |
|---|------------|-------|------|--------|
| 1 | **01-debiasing** | Bias-Vermeidung und ethische Grundlagen | `skills/01-debiasing/` | ✅ Aktiv |
| 2 | **02-sachanalyse** | Fachliche Sachanalyse mit Lehrplan-Zugriff | `skills/02-sachanalyse/` | ✅ Aktiv |
| 3 | **03-didaktische-analyse** | Klafki's 5 didaktische Fragen | `skills/03-didaktische-analyse/` | ✅ Aktiv |
| 4 | **04-fachbegriffe-klaeren** | Terminologie-Klärung und didaktische Reduktion | `skills/04-fachbegriffe-klaeren/` | ✅ Aktiv |
| 5 | **05-lernziele-operationalisieren** | SMART-Ziele nach Bloom's Taxonomie | `skills/05-lernziele-operationalisieren/` | ✅ Aktiv |
| 6 | **06-mindmap-strukturierung** | Wissensstruktur visualisieren (Lehrer & Schüler) | `skills/06-mindmap-strukturierung/` | ✅ Aktiv |
| 7 | **07-unterrichtsverlauf-planen** | Stundenplanung nach Leisen's 6-Phasen-Modell | `skills/07-unterrichtsverlauf-planen/` | ✅ Aktiv |
| 8 | **08-lernkontrollen-entwickeln** | Assessment-Design mit Differenzierung | `skills/08-lernkontrollen-entwickeln/` | ✅ Aktiv |
| 9 | **09-material-zusammenstellen** | Ressourcen organisieren und kuratieren | `skills/09-material-zusammenstellen/` | ✅ Aktiv |
| 10 | **10-reflexion-durchfuehren** | Evaluation der Unterrichtsplanung | `skills/10-reflexion-durchfuehren/` | ✅ Aktiv |
| 11 | **11-iteration-optimierung** | APOM-basierte Verbesserungsschleife | `skills/11-iteration-optimierung/` | ✅ Aktiv |

---

## Material-Skills (8 Skills)

Werden in den Projekten "Arbeitsblatt erstellen" und "Präsentation entwerfen" verwendet.

| # | Skill-Name | Zweck | Pfad | Status |
|---|------------|-------|------|--------|
| 12 | **mat-01-texterstellung** | Didaktisch aufbereitete Texte erstellen | `skills/mat-01-texterstellung/` | ✅ Aktiv |
| 13 | **mat-02-arbeitsblatt-erstellen** | Strukturierte Arbeitsblätter generieren | `skills/mat-02-arbeitsblatt-erstellen/` | ✅ Aktiv |
| 14 | **mat-03-powerpoint-erstellen** | Didaktische PowerPoint-Präsentationen | `skills/mat-03-powerpoint-erstellen/` | ✅ Aktiv |
| 15 | **mat-04-aufgaben-generieren** | Aufgaben nach KMK-Operatoren | `skills/mat-04-aufgaben-generieren/` | ✅ Aktiv |
| 16 | **mat-05-loesungen-erstellen** | Musterlösungen und Erwartungshorizonte | `skills/mat-05-loesungen-erstellen/` | ✅ Aktiv |
| 17 | **mat-06-pruefungsaufgaben** | Klausuren und Tests mit Bewertungskriterien | `skills/mat-06-pruefungsaufgaben/` | ✅ Aktiv |
| 18 | **mat-07-feedbackboegen** | Feedback-Formulare für Schüler | `skills/mat-07-feedbackboegen/` | ✅ Aktiv |
| 19 | **mat-08-lernzielkontrolle** | Assessment-Instrumente | `skills/mat-08-lernzielkontrolle/` | ✅ Aktiv |

---

## Export-Skills (4 Skills)

Werden in allen drei Projekten verwendet.

| # | Skill-Name | Zweck | Pfad | Besonderheit |
|---|------------|-------|------|--------------|
| 20 | **export-markdown** | Export nach Markdown mit MCP | `skills/export-markdown/` | ✅ Aktiv, MCP Write |
| 21 | **export-pdf** | Export nach PDF via Pandoc | `skills/export-pdf/` | ✅ Aktiv, scripts/ vorhanden |
| 22 | **export-docx** | Export nach Word (.docx) | `skills/export-docx/` | ✅ Aktiv, scripts/ vorhanden |
| 23 | **export-pptx** | Export nach PowerPoint (.pptx) | `skills/export-pptx/` | ✅ Aktiv, scripts/ vorhanden |

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
- ✅ Alle 11 Planungs-Skills (01-11)
- ✅ mat-06-pruefungsaufgaben
- ✅ mat-07-feedbackboegen
- ✅ mat-08-lernzielkontrolle
- ✅ export-markdown, export-pdf, export-docx

### Projekt 2: Arbeitsblatt erstellen
- ✅ 05-lernziele-operationalisieren
- ✅ mat-01-texterstellung
- ✅ mat-02-arbeitsblatt-erstellen
- ✅ mat-04-aufgaben-generieren
- ✅ mat-05-loesungen-erstellen
- ✅ mat-08-lernzielkontrolle
- ✅ export-markdown, export-pdf, export-docx

### Projekt 3: Präsentation entwerfen
- ✅ 05-lernziele-operationalisieren
- ✅ 06-mindmap-strukturierung
- ✅ mat-01-texterstellung
- ✅ mat-03-powerpoint-erstellen
- ✅ export-markdown, export-pptx

### Projekt 4: Skill-Verwaltung (dieses Projekt)
- Keine Skills aktiviert (arbeitet MIT den Skills, nutzt sie nicht)

---

## Didaktische Frameworks (Referenz)

**Die Skills basieren auf:**

1. **Klafki's Bildungstheoretische Didaktik**
   - 5 Fragen der didaktischen Analyse
   - Skill: 03-didaktische-analyse

2. **Leisen's 6-Phasen-Modell**
   - Strukturierung von Unterrichtsstunden
   - Skill: 07-unterrichtsverlauf-planen

3. **Wember's Differenzierungsmodell**
   - Basis / Unterstützung / Erweiterung
   - Skills: 07, 08

4. **Bloom's Taxonomie**
   - 6 kognitive Stufen (Erinnern → Erschaffen)
   - Skill: 05-lernziele-operationalisieren

5. **KMK-Operatoren**
   - Standardisierte Aufgaben-Verben
   - Skill: mat-04-aufgaben-generieren

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

**Für IT-Admins:**
- Tracking von Änderungen
- Übersicht über System-Architektur
- Dokumentation der Skill-Beziehungen

---

**Version:** 1.0
**Zuletzt aktualisiert:** 2025-11-09
**Anzahl Skills:** 23
