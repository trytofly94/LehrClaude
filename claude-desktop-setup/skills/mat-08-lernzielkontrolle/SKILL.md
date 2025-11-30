---
name: lernzielkontrollen-entwickeln
description: Erstellt formative und summative Assessments, die die Erreichung operationalisierter Lernziele überprüfen
triggers:
  - "Ich möchte Lernzielkontrollen entwickeln"
  - "Erstelle Assessment-Aufgaben für meine Lernziele"
  - "Entwickle Überprüfungsmöglichkeiten für die Lernziele"
  - "Ich benötige Evaluationsmöglichkeiten für die definierten Kompetenzen"
projects:
  - "Unterrichtsreihe planen"
  - "Arbeitsblatt erstellen"
skill_type: "Material-Skill (Assessment)"
depends_on:
  - "05-lernziele-operationalisieren"
related_skills:
  - "08-lernkontrollen-entwickeln"
  - "mat-01-texterstellung"
---

# Lernzielkontrolle erstellen Skill

**Status:** Produktionsreif
**Prompt-Vorlage:** `/prompts/mat_08_lernzielkontrolle.md` (wird generiert)
**Integration:** Direkt nach 05-lernziele-operationalisieren
**Didaktischer Kern:** Bloom-Taxonomie-ausgerichtetes Assessment-Design

---

## Skill-Beschreibung

Dieser Skill unterstützt Lehrkräfte dabei, **formative und summative Lernzielkontrollen zu entwickeln**, die direkt an operationalisierten Lernzielen ausgerichtet sind.

### Kernaufgaben

1. **Formative Assessments** - Laufende Überprüfung während des Unterrichts
   - Selbsteinschätzungen durch Schüler*innen
   - Kurze Check-in-Aufgaben am Stundenbeginn/-ende
   - Beobachtungsaufgaben für Lerngruppe
   - Dialogische Überprüfungsformate

2. **Summative Assessments** - Abschließende Leistungsüberprüfung
   - Klassenarbeiten / Tests
   - Projektprüfungen
   - Portfolios
   - Mündliche Prüfungen

3. **Rubrik- & Kriterienentwicklung**
   - Explizite Erfolgs- und Bewertungskriterien
   - Differenzierte Leistungsstufen (nach Wember)
   - Transparent für Schüler*innen und Lehrkraft

4. **Bloom-Taxonomie-Ausrichtung**
   - Jedes Assessment ist auf Bloom-Stufe des Lernziels abgestimmt
   - Aufgaben-Verben aus KMK-Operatoren
   - Kognitive Anforderungsbereiche strukturiert

5. **Differenzierung in Assessments**
   - Basisstufe: Standardaufgaben zur Überprüfung Kernkompetenzen
   - Unterstützungsstufe: Vereinfachte Zugänge, Hilfestrukturen
   - Erweiterungsstufe: Vertiefende, komplexere Aufgaben

---

## Workflow im Unterricht

### Phase 1: Eingabe & Klärung
- Lehrkraft gibt operationalisierte Lernziele ein (Output aus 05-lernziele-operationalisieren)
- Skill fragt nach:
  - **Lerngruppen-Kontext:** Klassenstufe, Schulform, Heterogenität
  - **Zeitrahmen:** Wann erfolgt die Kontrolle? (laufend vs. abschließend)
  - **Gewichtung:** Welche Ziele sind zentral?
  - **Schon erprobte Methoden:** Welche Assessment-Formate funktionieren in der Gruppe?

### Phase 2: Assessment-Design
Für **jedes Lernziel** generiert der Skill:

#### A. Formatives Assessment (Spontan überprüfbar)
```
Lernziel: "Schüler*innen können die Photosynthese-Reaktion beschreiben (Bloom: Verstehen)"

Formatives Format 1 - Think-Pair-Share:
- Einzeln (1 Min): "Schreib stichpunktartig auf: Welche Stoffe werden bei der Photosynthese verbraucht, welche entstehen?"
- Paarweise (2 Min): Vergleicht eure Antworten und einigt euch
- Plenum (3 Min): Zwei Paare präsentieren, Lehrkraft hört aktiv zu

Erfolgs-Check: Können sie CO₂-Input und O₂-Output benennen?
```

#### B. Summatives Assessment (Klassenarbeit/Test)
```
Aufgabe (Bloom: Verstehen):
Skizziere schematisch den Ablauf der Photosynthese. Beschrifte Eingangsstoffe und Produkte.

Bewertungs-Rubrik:
- 🟢 Vollständig: Beiden Phasen, alle Stoffe, korrekte Beschriftung (4 Punkte)
- 🟡 Teilweise: Eine Phase unvollständig oder 1-2 Stoffe falsch (2 Punkte)
- 🔴 Unzureichend: Grundstruktur nicht erkennbar (0 Punkte)
```

#### C. Differenzierte Fassungen
```
Unterstützungsstufe:
"Fülle die Lücken aus. Die Photosynthese braucht _____ und _____ und produziert _____."

Basisstufe:
"Beschreibe die Eingangsstoffe und Produkte der Photosynthese."

Erweiterungsstufe:
"Erkläre, warum Pflanzen ohne Photosynthese nicht überleben könnten und welche Konsequenzen das für Ökosysteme hätte."
```

### Phase 3: Kriterien & Rubrik

Der Skill generiert **explizite Bewertungskriterien**:

**Rubrik-Struktur (3-stufig):**
| Kriterium | Vollständig (4) | Teilweise (2) | Unzureichend (0) |
|-----------|-----------------|---------------|-----------------|
| Fachliche Korrektheit | Alle Aussagen sind korrekt | 1-2 Fehler | >2 Fehler oder grundsätzlich falsch |
| Vollständigkeit | Alle geforderten Aspekte | 75% der Aspekte | <75% |
| Klarheit der Formulierung | Präzise, verständlich | Teilweise unklar | Nicht verständlich |

**Transparenz:** Rubrik wird den Schüler*innen **vor** der Aufgabe gezeigt.

### Phase 4: Iteration & Reflexion
Nach Durchführung des Assessments:
- Welcher Prozentsatz hat das Lernziel erreicht?
- Wo gab es Missverständnisse?
- Muss der Unterricht angepasst werden (Remediation)?

---

## Eingabe-Struktur (vom Skill erwartet)

```yaml
# Aus Skill 05-lernziele-operationalisieren:
lernziele:
  - "Schüler*innen können die Photosynthese-Reaktion beschreiben (Bloom: Verstehen)"
  - "Schüler*innen können Chlorophyll-Funktion erklären (Bloom: Verstehen)"
  - "Schüler*innen können Photosynthese und Zellatmung vergleichen (Bloom: Analysieren)"

# Lehrkraft gibt zusätzlich an:
kontext:
  klassenstufe: "7. Klasse"
  schulform: "Regelschule"
  lerngruppe_groesse: 25
  besonderheiten: "2 Schüler mit Förderquoten, 3 sehr leistungsstarke"

assessment_planung:
  formativ:
    - frequenz: "jede Stunde"
    - methoden: ["Think-Pair-Share", "Exit-Ticket", "Beobachtung"]
  summativ:
    - form: "Klassenarbeit"
    - dauer: "45 Minuten"
    - gewichtung: "40% der Gesamtnote"

ressourcen:
  available: ["Tafel", "Beamer", "Arbeitsblätter", "Modelle"]
  excluded: ["Tablets/Laptops nicht verfügbar"]
```

---

## Ausgabe-Struktur

Der Skill generiert ein **Assessment-Portfolio**:

```markdown
# Lernzielkontrolle: Photosynthese (Klasse 7, NRW)

## 1. Formative Assessments
### Woche 1 - Stunde 1: Aktivierungsbauer (5 Min)
- Format: Murmelgruppen
- Aufgabe: "Wo findet Photosynthese statt?"
- Erfolgs-Check: Können Schüler*innen min. 2 Orte nennen?

### Woche 2 - Stunde 3: Exit-Ticket
- Aufgabe: "Schreib auf: Braucht Photosynthese Licht oder Schatten?"
- Analyse: Zeigt sofortige Missverständnisse

## 2. Summatives Assessment
### Klassenarbeit (45 Min, 16 Punkte)
**Teil A - Reproduktion (4 Punkte, Bloom: Erinnern)**
Aufgabe 1: Benenne die 3 Eingangsstoffe der Photosynthese.

**Teil B - Verständnis (8 Punkte, Bloom: Verstehen)**
Aufgabe 2: Erkläre die Rolle von Chlorophyll.
Aufgabe 3: Skizziere die Photosynthese-Reaktion und beschrifte.

**Teil C - Anwendung/Analyse (4 Punkte, Bloom: Analysieren)**
Aufgabe 4: Vergleiche Photosynthese und Zellatmung in einer Tabelle.

## 3. Rubrik für Klassenarbeit
[Detaillierte Bewertungs-Matrizen für jede Aufgabe]

## 4. Differenzierte Fassungen
[Vereinfachte & erweiterte Versionen für jede Aufgabe]

## 5. Handlungsempfehlungen bei Nicht-Erreichen
- Falls <60% das Ziel erreichen: Remediation-Maßnahmen
- Gruppenarbeit mit Peer-Tutoring
- Zusätzliche visuelle Hilfsmittel
```

---

## Didaktische Prinzipien (im Skill verankert)

### 1. **Ausrichtung** (Wiggins & McTighe)
- Assessment-Aufgaben spiegeln genau die operationalisierten Lernziele wider
- Kein Testen von "verborgenem Lehrplan"

### 2. **Bloom-Taxonomie-Zuordnung**
Jede Aufgabe ist einer Bloom-Stufe zugeordnet:
- **Erinnern** (K1): Abrufen von Fakten → Aufgaben: "Benenne", "Liste auf"
- **Verstehen** (K2): Konzepte erfassen → Aufgaben: "Erkläre", "Beschreibe"
- **Anwenden** (K3): In neuen Kontexten nutzen → Aufgaben: "Nutze", "Wende an"
- **Analysieren** (K4): Strukturen zerlegen → Aufgaben: "Vergleiche", "Unterscheide"
- **Bewerten** (K5): Urteile treffen → Aufgaben: "Beurteile", "Begründe"
- **Erschaffen** (K6): Neues zusammensetzen → Aufgaben: "Entwerfe", "Konstruiere"

### 3. **Wember-Differenzierung**
Jedes Assessment liegt in 3 Fassungen vor:
- **Basisstufe** (Kernlehrplan)
- **Unterstützungsstufe** (Gerüste + Hinweise)
- **Erweiterungsstufe** (tiefere Anforderungen)

### 4. **Formative & Summative Balance**
- 80% formativ (tägliche Checks, Feedback)
- 20% summativ (Klassenarbeiten, Abschlussprüfung)

### 5. **Transparenz**
Alle Kriterien und Rubriken sind den Schüler*innen bekannt → sie wissen, woran sie bewertet werden.

---

## Integration mit anderen Skills

```
05-lernziele-operationalisieren
    ↓
mat-08-lernzielkontrolle ← [DIESER SKILL]
    ↓
10-reflexion-durchfuehren (Evaluiere: Haben Schüler*innen Ziele erreicht?)
    ↓
11-iteration-optimierung (Optimiere Unterricht basierend auf Assessment-Daten)
```

**Rückwärts-Integration:**
Falls Assessment zeigt, dass Ziele nicht erreicht wurden → Zurück zu Skill 05, ggfs. Lernziele neu formulieren oder splitten.

---

## KMK-Operatoren (Integration)

Der Skill nutzt **KMK-Operatoren** aus `@mcp_filesystem 2_Zentrale_Ressourcen/Didaktik/KMK-Operatoren.md`:

- **Anforderungsbereich I (Reproduktion):** nennen, angeben, aufzählen
- **Anforderungsbereich II (Reorganisation):** beschreiben, erklären, darstellen
- **Anforderungsbereich III (Transfer/Reflexion):** analysieren, vergleichen, bewerten, beurteilen

Jede Assessment-Aufgabe wird nach Anforderungsbereich klassifiziert.

---

## Häufige Missverständnisse

### Mythos 1: "Assessment = Benotung"
**Richtig:** Assessments sind primär **Lernwerkzeuge**, nicht nur Bewertungstools.
Formative Assessments haben keinen Notenwert, sondern dienen dem **Feedback**.

### Mythos 2: "Schriftliche Tests sind das Einzige"
**Richtig:** Assessments können sein: mündlich, praktisch, performativ, schriftlich, peer-basiert, selbst-reflektiv.

### Mythos 3: "Assessment muss objektiv sein"
**Richtig:** Mit **expliziten Rubriken** erreichen wir **Reliabilität** auch bei subjektiveren Formaten wie Beobachtungen.

---

## Technische Anforderungen

- **Eingabe:** Operationalisierte Lernziele (aus 05-lernzielkontrolle)
- **MCP-Ressourcen:**
  - `@mcp_filesystem 2_Zentrale_Ressourcen/Didaktik/KMK-Operatoren.md`
  - `@mcp_filesystem 2_Zentrale_Ressourcen/Didaktik/Bloom-Taxonomie.md` (falls vorhanden)
- **Ausgabe:** Markdown-Datei oder direkter Textexport

---

## Verwendete Prompt-Vorlagen

- **Ultimate Prompting Template** (für Komplexität)
- **Hallucination Reduction** (für didaktische Genauigkeit)
- **Chain-of-Thought** (für transparente Rubrik-Entwicklung)

---

## Version & Änderungshistorie

- **v1.0** (08.11.2024): Erstversion, basierend auf Klafki, Bloom, KMK, Wember
- **v1.1** (geplant): Integration mit automatisiertem Notenstandardisierungs-Tool

---

## Kontakt & Support

Fragen zum Skill? Überprüfe:
1. Sind alle Lernziele wirklich operationalisiert (SMART + Bloom)?
2. Sind Assessment-Formate an Lerngruppe angepasst?
3. Sind Rubriken für Schüler*innen verständlich?

## Resources

Dieser Skill nutzt folgende Ressourcen:

- **Templates:** Vorlagen für Unterrichtsmaterialien (noch nicht implementiert)
- **Daten:** Beispiele und Referenzmaterialien (noch nicht implementiert)

Zukünftige Erweiterungen werden in `resources/` abgelegt.

## Next Steps

Nach Erstellung des Materials:
- Der Nutzer kann das Ergebnis überprüfen und anpassen
- Das Material kann exportiert werden (export-markdown, export-pdf, export-docx)
- Weitere Materialien können erstellt werden
