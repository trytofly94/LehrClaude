---
name: mindmap-strukturierung-fuer-unterrichtsreihe
description: Dieses Skill sollte verwendet werden, wenn visuelle hierarchische Übersichten einer vollständigen Unterrichtsreihe erstellt werden. Es generiert zwei komplementäre Mindmaps im Markdown-Format – eine umfassende, lehrkraftfokussierte Übersicht mit allen inhaltlichen Strukturen, didaktischen Analysen, Reduktionen und differenzierten Aufgaben sowie eine schülerfreundliche Version, die Lernziele und Schlüsselkonzepte mit Schwerpunkt auf Relevanz hervorhebt. Das Skill integriert vorherige Planungsergebnisse aus Schritten 2–5 in visuelle Mindmap-Strukturen, die mit Standard-Mindmap-Viewern kompatibel sind.
---

# Mindmap-Strukturierung für Unterrichtsreihe

## Zweck

Dieses Skill dient zur Erstellung von zwei komplementären Mindmap-Übersichten einer Unterrichtsreihe:

1. **Lehrkraft-Übersicht (Schritt 10)**: Umfassende, detaillierte Mindmap mit allen inhaltlichen Strukturen, didaktischen Analysen, didaktischen Reduktionen und differenzierten Aufgaben
2. **Schüler*innen-Übersicht (Schritt 11)**: Vereinfachte, motivierende Mindmap, die den "Warum?" erklärt und zentrale Lernziele transparent macht

Beide Mindmaps werden im Markdown-Format generiert und sind mit Standard-Mindmap-Viewern wie markmap.js kompatibel.

## Wann sollte dieses Skill verwendet werden?

Verwende dieses Skill in **Schritt 6 des 11-Schritte-Planungsprozesses**, nachdem folgende vorherige Schritte abgeschlossen sind:
- Schritt 02: Sachanalyse
- Schritt 03: Didaktische Analyse
- Schritt 04: Fachbegriffe geklärt
- Schritt 05: Lernziele operationalisiert (mit Bloom-Taxonomie und Differenzierung in Basis/Unterstützung/Erweiterung)

Das Skill wird automatisch aufgerufen, wenn die Lehrkraft eine strukturelle Übersicht der Unterrichtsreihe benötigt oder den Prozess bei Schritt 6 (Mindmap-Strukturierung) ankündigt.

## Workflow: Zwei-Mindmap-Ansatz

### Teil A: Lehrkraft-Übersicht (basierend auf Prompt 10)

Führe folgende Schritte sequenziell aus und agiere als erstklassiger MindMap-Generator:

1. **Kernthemen auflisten**
   - Alle ausgewählten Kernthemen auflisten

2. **Didaktische Analyse anhängen**
   - Jedem Kernthema die Ergebnisse der didaktischen Analyse hinzufügen

3. **Didaktische Reduktion anhängen**
   - Jedem Kernthema die Ergebnisse der didaktischen Reduktion hinzufügen

4. **Grobziele strukturieren**
   - Jedem Kernthema die entsprechenden Grobziele hinzufügen

5. **Feinziele strukturieren**
   - Jedem Grobziel die entsprechenden Feinziele hinzufügen

6. **Differenzierte Aufgaben anhängen**
   - Jedem Feinziel die Aufgaben nach Differenzierungsstufen hinzufügen:
     - **Basisstufe** (unterstützende Variante)
     - **Unterstützungsstufe** (mittleres Anforderungsniveau)
     - **Erweiterungsstufe** (vertiefende Variante)

7. **Markdown-Export**
   - Die Mindmap als Markdown-Datei exportieren
   - Die Datei zum Download bereitstellen

**Einschränkungen für Lehrkraft-Übersicht:**
- Keine Informationen zur Lerngruppe oder Lernumgebung hinzufügen
- Keine Informationen aus anderen Phasen hinzufügen
- Fokus ausschließlich auf: inhaltliche Kernthemen, Aufgaben, didaktische Analyse und didaktische Reduktion

### Teil B: Schüler*innen-Übersicht (basierend auf Prompt 11)

Führe folgende Schritte sequenziell aus und agiere als erstklassiger MindMap-Generator für Schüler*innen:

1. **Kernthemen chronologisch nummerieren und auflisten**
   - Alle ausgewählten Kernthemen auflistet
   - Diese chronologisch in der Reihenfolge ihrer Behandlung in der Unterrichtsreihe nummerieren

2. **"Warum ist das wichtig?"-Dimension hinzufügen**
   - Für jedes aufgelistete Kernthema folgende Dimensionen aus der didaktischen Analyse erfassen:
     - **Exemplarität**: Wofür steht dieses Thema stellvertretend?
     - **Gegenwartsbedeutung**: Warum ist dieses Thema heute, jetzt relevant?
     - **Zukunftsbedeutung**: Welche Auswirkungen hat dieses Thema für die Zukunft?
   - Diese unter dem Stichwort **"Warum ist das wichtig? / Warum sollte ich das kennenlernen?"** zusammenfassen

3. **Themenübersicht strukturieren**
   - Jedem aufgelisteten Kernthema einen Ast **"Themenübersicht"** hinzufügen
   - Unter "Themenübersicht" die Qualitätsebenen der entsprechenden Feinziele auflisten
   - Diese als **kurze Stichpunkte ohne Operator** formulieren, sodass deutlich wird, welchen Inhalt die Schüler*innen lernen sollen
   - Beispiel statt: "die Photosynthese erklären" → "Photosynthese-Prozess und ihre Bedeutung für Organismen"

4. **Markdown-Export**
   - Die Mindmap als Markdown-Datei exportieren
   - Die Datei zum Download bereitstellen

**Einschränkungen für Schüler*innen-Übersicht:**
- Keine Informationen zur Lerngruppe oder Lernumgebung hinzufügen
- Fokus ausschließlich auf: inhaltliche Kernthemen und didaktische Analysen
- Altersgerechte, motivierende Sprache verwenden
- Bloom-Operatoren und didaktische Fachbegriffe verstecken; Fokus auf die Inhalte selbst

## Datenquellen und Abhängigkeiten

Das Skill greift auf folgende Ergebnisse aus vorherigen Planungsschritten zu:

| Quelle | Nutzen |
|--------|--------|
| Schritt 02: Sachanalyse | Fachliche Grundlagen für die Strukturierung |
| Schritt 03: Didaktische Analyse | Exemplarität, Gegenwartsbedeutung, Zukunftsbedeutung |
| Schritt 04: Fachbegriffe | Präzise Terminologie für Mindmap-Knoten |
| Schritt 05: Lernziele & Differenzierung | Grobziele, Feinziele, Aufgaben (Basis/Unterstützung/Erweiterung) |

## Ausgabeformat und Technik

### Markdown-Mindmap-Syntax

Verwende standardisierte Markdown-Hierarchie für Mindmap-Kompatibilität:

```markdown
# Zentrale These oder Kernthema
## Untergeordnetes Konzept
### Details oder Spezifizierung
#### Weitere Ebene
```

### Kompatibilität und Viewer

Die generierten Mindmaps sind mit **https://markmap.js.org/** kompatibel sowie mit anderen Markdown-basierten Mindmap-Tools wie Obsidian.

Exportiere beide Mindmaps als separate `.md`-Dateien:
- Benenne die Lehrkraft-Mindmap: `Mindmap_Lehrkraft_[Unterrichtsreihen-Titel].md`
- Benenne die Schüler*innen-Mindmap: `Mindmap_Schueler_[Unterrichtsreihen-Titel].md`

### Benutzerhinweis

Nach Erstellung der Mindmaps folgenden Hinweis bereitstellen:
> "Zur einfachen Betrachtung der generierten Mindmaps eignet sich zum Beispiel der folgende Viewer: https://markmap.js.org/"

## Qualitätscheck

Vor Abschluss des Skills überprüfen:

### Lehrkraft-Übersicht
- Alle Kernthemen enthalten didaktische Analyse und didaktische Reduktion
- Jedes Kernthema hat zugeordnete Grobziele
- Jedes Grobziel hat zugeordnete Feinziele
- Jedes Feinziel hat differenzierte Aufgaben (Basis/Unterstützung/Erweiterung)
- Hierarchie ist logisch, navigierbar und nachvollziehbar
- Keine redundanten oder außerkontextuellen Informationen

### Schüler*innen-Übersicht
- Alle Kernthemen sind chronologisch nummeriert
- Jedes Thema beantwortet die "Warum?"-Frage mit Exemplarität, Gegenwarts- und Zukunftsbedeutung
- Jedes Thema hat eine "Themenübersicht" mit Inhaltsübersicht
- Inhalte sind altersgerecht und motivierend formuliert
- Keine Bloom-Operatoren oder didaktischen Fachbegriffe für Schüler*innen sichtbar
- Fokus liegt auf Inhalten, nicht auf Anforderungsniveaus

## Integration in den Planungsprozess

Nach Erstellung der Mindmaps:
- Die Lehrkraft kann die **Lehrkraft-Übersicht** zur Vorbereitung und Planung der Unterrichtssequenzen (Schritt 07) nutzen
- Die Lehrkraft kann die **Schüler*innen-Übersicht** zu Stundenbeginn oder als Übersichtsmaterial teilen, um Transparenz, Motivation und Selbstmonitoring zu erhöhen
- Beide Mindmaps können als Reflexionshilfen und zur Überprüfung der Lernzielentwicklung in Schritt 10 verwendet werden
- Die Strukturen unterstützen die Unterrichtsverlaufsplanung (Schritt 07) durch visuelle Orientierung
- Die Inhaltsübersichten ermöglichen ein kontinuierliches Selbstmonitoring der Schüler*innen während der Unterrichtsreihe

## Zusätzliche Hinweise

- **Interaktive Betrachtung**: Schüler*innen und Lehrkräfte können die Mindmaps mit dem kostenlosen Markmap-Viewer betrachten und interaktiv ein-/ausklappen
- **Integration in LMS**: Die Markdown-Dateien können in die meisten Learning Management Systeme und Schulplattformen importiert werden
- **Anpassbarkeit**: Nachträgliche Änderungen an Feinzielen oder Aufgaben sollten in beiden Mindmaps synchronisiert werden, um Konsistenz zu gewährleisten
- **Visuelle Unterstützung**: Mindmaps sind besonders für Lernende mit visuellem Lerntyp hilfreich und unterstützen die Wissensstrukturierung

## Resources

Dieser Skill nutzt folgende Ressourcen:

- **Templates:** Vorlagen für strukturierte Ausgaben (noch nicht implementiert)
- **Daten:** Didaktische Frameworks und Referenzmaterialien (noch nicht implementiert)

Zukünftige Erweiterungen werden in `resources/` abgelegt.

## Next Steps

Nach Abschluss dieses Skills:
- Der Nutzer kann das Ergebnis überprüfen und anpassen
- Der nächste Planungsschritt kann gestartet werden
- Das Ergebnis kann für spätere Schritte referenziert werden
