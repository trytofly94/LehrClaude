---
name: powerpoint-praesentation-erstellen
description: Dieser Skill erstellt professionelle, didaktisch strukturierte PowerPoint-Präsentationen für vollständige Unterrichtsreihen. Er transformiert Planungsinhalte (Lernziele, Unterrichtsverläufe, Aufgaben und Materialien) in kohärente Foliensätze mit Notizen für Vortragende. Der Skill sollte ausgelöst werden, wenn eine Präsentation für eine vollständige Unterrichtsreihe erstellt werden soll, die bereits geplant wurde (z.B. nach Abschluss des 11-Schritte-Planungsprozesses). Bei Anforderung der Präsentationserstellung sind die vollständigen Inhalte der Unterrichtsreihe, aktuelle Lernziele, Details zum Unterrichtsverlauf und spezifische Designanforderungen anzugeben.
---

## Zweck

Dieser Skill transformiert umfassende Unterrichtsreihenplanungen in professionelle PowerPoint-Präsentationen im strukturierten TXT-Format, die für den Einsatz im Unterricht geeignet sind. Nach Abschluss einer vollständigen Unterrichtsreihenplanung (unter Verwendung des 11-Schritte-Planungsprozesses) erstellt dieser Skill eine strukturierte Präsentation, die didaktischen Prinzipien folgt, Inhalte aus allen Planungsphasen integriert und klare visuelle Orientierung für die Unterrichtsdurchführung bietet.

## Wann dieser Skill verwendet werden sollte

Löse diesen Skill aus, wenn:
- Eine vollständige Unterrichtsreihe geplant und dokumentiert wurde
- Unterrichtsreiheninhalte in präsentierbare Form für die Unterrichtsdurchführung umgewandelt werden sollen
- Foliensätze erstellt werden, die den Unterrichtsverlaufsphasen folgen (nach Leisens 6-Phasen-Modell)
- Präsentationen nach Themen mit klarer Hierarchie strukturiert werden müssen
- Lernziele, Aufgaben auf verschiedenen Differenzierungsebenen und visuelle Platzhalter integriert werden sollen

## Hauptmerkmale

### 1. Didaktisch strukturierte Folien

Präsentationen sind entsprechend der Unterrichtsverlaufsstruktur organisiert:

- **Thementitelfolien**: Jedes Thema/jede Stunde erhält eine eigene Titelfolie mit Datum und Bildvorschlag
- **Phasenbasierte Organisation**: Eine Folie pro Phase in jeder Stunde (nach Leisens 6-Phasen-Modell)
- **Differenzierte Aufgabenfolien**: Während der Arbeitsphasen werden Aufgaben auf drei Schwierigkeitsstufen angezeigt:
  - Aufgaben Basisniveau
  - Aufgaben Unterstützungsniveau
  - Aufgaben Erweiterungsniveau
- **Synthese- und Anwendungsfolien**: Spezielle Folien für die Phasen "Sichern und Vernetzen" und "Anwenden/Transfer" zeigen entsprechende Aufgabenstellungen

### 2. Inhaltsintegration

Für die Präsentationserstellung sind folgende Inhalte zu sammeln und zu referenzieren:

- Vollständiger Unterrichtsreihenplan aus dem Planungsprozess (Skills 01-11)
- Lernziele mit Bloom-Taxonomiestufen
- Details zum Unterrichtsverlauf aus jedem Stundenplan
- Aufgabenstrukturen mit Differenzierungsebenen
- Material- und Ressourcenlisten
- Bewertungsstrategien und Kontrollmaßnahmen

### 3. Standards für Folientitel

Wende diese Richtlinien auf alle Folien an:
- Titel müssen **tatsächliche Fachinhalte** widerspiegeln, nicht Phasennamen
  - Gut: "Aufbau von Blüten"
  - Vermeiden: "Aufgabe Blüten"
- Inhaltsorientierte Titel verbessern Klarheit und professionelles Erscheinungsbild
- Titelrelevanz zum tatsächlichen Unterrichtsinhalt gewährleistet kohärente Präsentationsnarration

### 4. Verwaltung visueller Elemente

Behandle alle Grafiken, Diagramme und Bilder mit expliziten Platzhaltern:

- Wann immer ein visuelles Element benötigt wird, NICHT versuchen, Bilder einzubetten oder zu generieren
- Stattdessen einen **Platzhalter in GROSSBUCHSTABEN** einfügen, der beschreibt, welches Bild hinzugefügt werden soll
  - Format: **[GRAFIK: Aufbau einer Blütenknospe]** oder **[SCHAUBILD: Kreislauf des Wassers]**
- Klare, prägnante Beschreibungen verwenden, damit Nutzer später geeignete Bilder beschaffen oder erstellen können
- Anzahl der Platzhalter in der Präsentationszusammenfassung für Nutzerbewusstsein angeben

### 5. Ausgabeformat & Übergabe

Präsentationen werden geliefert als:

- **Dateiformat**: TXT (strukturiertes Text-Format zur Weiterverarbeitung in PPTX)
- **Dateiendung**: `.txt`
- **Notizen für Vortragende**: Umfassende Notizen auf jeder Folie mit:
  - Detaillierter Erklärung des Folieninhalts
  - Vorgeschlagenen Gesprächspunkten und Übergängen
  - Unterrichtstipps und Hinweisen zur Zeiteinteilung
  - Verweis auf adressierte Lernziele
- **Nutzerfinalisierung**: Präsentationen sind bereit für den Unterrichtseinsatz, erfordern jedoch vom Nutzer:
  - Konvertierung in PPTX-Format
  - Hinzufügen aller Grafiken/Diagramme (unter Verwendung der markierten Platzhalter als Leitfaden)
  - Anpassung von visuellem Design und Farben
  - Hinzufügen von Animationen oder Übergängen nach Wunsch
  - Anpassung von Branding oder schulspezifischer Formatierung

## Arbeitsablauf

### Phase 1: Inhaltsvorbereitung

Sammle und organisiere alle Informationen zur Unterrichtsreihe:
1. Extrahiere den Unterrichtsverlauf aus dem vollständigen Reihenplan
2. Identifiziere alle Lernziele und ihre Bloom-Stufen
3. Sammle Aufgabenstrukturen mit Differenzierungsebenen
4. Liste alle zu referenzierenden Ressourcen und Materialien auf
5. Notiere besondere Anforderungen (Themen, Zeitbeschränkungen, spezifische Bilder)

### Phase 2: Folienarchitektur

Plane die Präsentationsstruktur:
1. **Eröffnungsabschnitt**: Titelfolie mit Kursinformationen, Datum und Bildvorschlag
2. **Themenabschnitte**: Eine Titelfolie pro Hauptthema mit Bildvorschlag und Datum
3. **Stundenfolien**: Für jede Stunde in der Reihe:
   - Einführungs-/Eröffnungsphasenfolien
   - Arbeitsphasenfolien (zeigen Aufgaben auf Basis-, Unterstützungs- und Erweiterungsebene)
   - Synthese-/Vernetzungsfolien (zeigen Aufgabenstellungen)
   - Anwendungs-/Transferfolien (zeigen Aufgabenstellungen)
   - Abschluss-/Schlussfolien nach Bedarf
4. **Schlussabschnitt**: Zusammenfassungs-/Reflexionsfolie

### Phase 3: Klärungsprozess

Vor Erstellung der vollständigen Präsentation:

1. Überprüfe die vollständige Anfrage auf Genauigkeit und Vollständigkeit
2. Stelle bei Bedarf klärende Fragen:
   - Gibt es spezifische Designvorlieben? (Layout, Farbschema, etc.)
   - Sollten bestimmte Themen erweitert behandelt werden?
   - Gibt es bestimmte Lernziele, die hervorgehoben werden sollen?
   - Sollen Notizen für Vortragende spezifische Bewertungskriterien enthalten?
3. Biete dem Nutzer eine optimierte Version des Ansatzes an
4. Fahre erst nach Nutzerbestätigung fort

### Phase 4: Präsentationserstellung

Erstelle die Präsentation im TXT-Format mit:

1. **Strukturiertem Inhalt**: Folge dem Unterrichtsverlauf exakt
2. **Klaren Titeln**: Inhaltsorientierte Titel für jede Folie
3. **Aufgabenintegration**: Zeige Aufgaben auf angemessenen Ebenen auf Arbeitsphasenfolien
4. **Visuellen Platzhaltern**: Markiere alle benötigten Grafiken in GROSSBUCHSTABEN
5. **Notizen für Vortragende**: Umfassende Notizen auf jeder Folie
6. **TXT-Formatierung**: Professionelles, übersichtliches TXT-Layout zur Unterstützung der Lesbarkeit

### Phase 5: Iterative Verfeinerung

Implementiere Nutzerfeedback:

1. Nach jeder Nutzereingabe mit Änderungswünschen die **vollständige Präsentation neu** bereitstellen
2. Behalte alle bestehenden Inhalte bei, sofern nicht explizit geändert
3. Integriere Modifikationen nahtlos in die Präsentationsstruktur
4. Liefere vollständige Präsentation erneut (keine teilweisen Updates)
5. Setze Iteration fort, bis Nutzer Zufriedenheit bestätigt

## MCP-Ressourcenintegration

Referenziere diese Ressourcen vom MCP Filesystem Server, wenn verfügbar:

- **`2_Zentrale_Ressourcen/Templates/praesentation-master.txt`**: Richtlinien für TXT-Formatierung, Layoutstandards und Designkonsistenz
- **Ausgaben der Unterrichtsreihenplanung**: Inhalte aus den Ausgaben der Skills 01-11, gespeichert im Projektkontext

## TXT-Formatierungsregeln für Präsentationen

WICHTIG: Alle Outputs MÜSSEN im strukturierten TXT-Format erstellt werden. KEINE Markdown-Syntax verwenden!

**Folienseparator:**
```
================================================================================
FOLIE [NUMMER]: [FOLIENTITEL]
================================================================================
```

**Folieninhalt:**
```
INHALT:
-------
- Stichpunkt 1
- Stichpunkt 2

NOTIZEN FÜR VORTRAGENDE:
------------------------
Detaillierte Erklärungen, Hinweise, Timing-Tipps...
```

**Überschriften auf Folien:**
```
HAUPTPUNKT (GROSSBUCHSTABEN)
----------------------------
```

**Listen:**
```
- Listenpunkt 1
- Listenpunkt 2
  - Unterpunkt (2 Leerzeichen Einrückung)
```

**Hervorhebungen:**
```
WICHTIG: Dieser Punkt ist zentral.
*Dieser Text ist betont*
```

**Visuelle Platzhalter:**
```
[GRAFIK: Beschreibung des Bildes]
[SCHAUBILD: Beschreibung des Diagramms]
```

**VERBOTEN - NICHT VERWENDEN:**
- KEINE Markdown Heading-Syntax (#, ##, ###)
- KEINE Markdown Bold/Italic (**text**, _text_)
- KEINE Code-Blöcke (```)
- KEINE Markdown-Links ([text](url))

**Dateiendung:** Alle generierten Präsentationen erhalten die Endung `.txt`

## Qualitätscheckliste

Vor Auslieferung der Präsentationen überprüfen:

- [ ] Jede Folie hat einen inhaltsorientierten Titel (keinen Phasennamen)
- [ ] Alle visuellen Bedarfe sind mit GROSSBUCHSTABEN-Platzhaltern markiert
- [ ] Notizen für Vortragende sind umfassend und umsetzbar
- [ ] Differenzierungsebenen erscheinen auf Aufgabenfolien
- [ ] Unterrichtsverlauf fließt logisch durch die Präsentation
- [ ] Alle Inhalte der Unterrichtsreihe sind repräsentiert
- [ ] Dateiformat ist TXT mit strukturierter Formatierung
- [ ] Präsentationsstruktur entspricht den Unterrichtsverlaufsphasen
- [ ] KEINE Markdown-Syntax verwendet (siehe TXT-Formatierungsregeln)

## Häufige Szenarien

**Szenario 1: Einfache Themenstruktur**
- Unterrichtsreihe mit 3 Themen, jeweils 2 Stunden
- Ergebnis: Eröffnung + 3 Thementitelfolien + 6 Stundenabschnitte + Schluss
- Durchschnittliche Folienanzahl: 20-25 Folien abhängig von der Stundenkomplexität

**Szenario 2: Komplexe Reihe mit hoher Differenzierung**
- Unterrichtsreihe mit 5 Themen, jeweils 3-4 Stunden, detaillierte Aufgaben auf allen Ebenen
- Ergebnis: Eröffnung + 5 Thementitel + 12-15 Stundenabschnitte + Schluss
- Durchschnittliche Folienanzahl: 40-50 Folien mit umfangreichen Aufgabendetails

**Szenario 3: Einzelthema-Vertiefung**
- Unterrichtsreihe konzentriert auf ein komplexes Thema mit 4-5 Stunden
- Ergebnis: Eröffnung + Thementitel + 4-5 detaillierte Stundenabschnitte + Schluss
- Durchschnittliche Folienanzahl: 15-20 Folien mit detaillierter Phasenaufschlüsselung

## Hinweise für Claude

- Dieser Skill wird typischerweise **nach** dem vollständigen 11-Schritte-Planungsprozess verwendet
- Integration mit Skills 05 (Lernziele), 06 (Mindmap) und 07 (Unterrichtsverlauf) gewährleistet Inhaltsgenauigkeit
- Nutzer benötigen Zugang zu Grafikerstellungswerkzeugen oder -ressourcen zur Finalisierung visueller Elemente
- Präsentationen im TXT-Format müssen vom Nutzer in PPTX konvertiert werden
- TXT-Ausgaben sind strukturiert zur einfachen Konvertierung in PowerPoint
- Konsistenz mit vorhandenen Schul-/Bezirkspräsentationsstandards wahren, die im Projektkontext referenziert sind

## Resources

Dieser Skill nutzt folgende Ressourcen:

- **Templates:** Vorlagen für Unterrichtsmaterialien (noch nicht implementiert)
- **Daten:** Beispiele und Referenzmaterialien (noch nicht implementiert)

Zukünftige Erweiterungen werden in `resources/` abgelegt.

## Next Steps

Nach Erstellung des Materials:
- Der Nutzer kann das Ergebnis überprüfen und anpassen
- Das Material kann exportiert werden (export-txt, export-pdf, export-docx)
- Weitere Materialien können erstellt werden
