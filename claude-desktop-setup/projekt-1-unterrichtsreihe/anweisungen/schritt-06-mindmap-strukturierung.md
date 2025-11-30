# Mindmap-Strukturierung für Unterrichtsreihe

## Zweck

Dieser Schritt dient zur Erstellung von zwei komplementären Mindmap-Übersichten einer Unterrichtsreihe:

1. **Lehrkraft-Übersicht**: Umfassende, detaillierte Mindmap mit allen inhaltlichen Strukturen, didaktischen Analysen, didaktischen Reduktionen und differenzierten Aufgaben
2. **Schüler*innen-Übersicht**: Vereinfachte, motivierende Mindmap, die den "Warum?" erklärt und zentrale Lernziele transparent macht

Beide Mindmaps werden im Markdown-Format generiert und sind mit Standard-Mindmap-Viewern wie markmap.js kompatibel.

## Wann wird dieser Schritt durchgeführt?

Führe diesen Schritt in **Schritt 6 des 11-Schritte-Planungsprozesses** durch, nachdem folgende vorherige Schritte abgeschlossen sind:
- Schritt 02: Sachanalyse
- Schritt 03: Didaktische Analyse
- Schritt 04: Fachbegriffe geklärt
- Schritt 05: Lernziele operationalisiert (mit Bloom-Taxonomie und Differenzierung in Basis/Unterstützung/Erweiterung)

## Workflow: Zwei-Mindmap-Ansatz

### Teil A: Lehrkraft-Übersicht

Führe folgende Schritte sequenziell aus und agiere als erstklassiger MindMap-Generator:

1. **Kernthemen auflisten** - Alle ausgewählten Kernthemen auflisten
2. **Didaktische Analyse anhängen** - Jedem Kernthema die Ergebnisse der didaktischen Analyse hinzufügen
3. **Didaktische Reduktion anhängen** - Jedem Kernthema die Ergebnisse der didaktischen Reduktion hinzufügen
4. **Grobziele strukturieren** - Jedem Kernthema die entsprechenden Grobziele hinzufügen
5. **Feinziele strukturieren** - Jedem Grobziel die entsprechenden Feinziele hinzufügen
6. **Differenzierte Aufgaben anhängen** - Jedem Feinziel die Aufgaben nach Differenzierungsstufen hinzufügen:
   - **Basisstufe** (unterstützende Variante)
   - **Unterstützungsstufe** (mittleres Anforderungsniveau)
   - **Erweiterungsstufe** (vertiefende Variante)
7. **Markdown-Export** - Die Mindmap als Markdown-Datei exportieren

**Einschränkungen für Lehrkraft-Übersicht:**
- Keine Informationen zur Lerngruppe oder Lernumgebung hinzufügen
- Keine Informationen aus anderen Phasen hinzufügen
- Fokus ausschließlich auf: inhaltliche Kernthemen, Aufgaben, didaktische Analyse und didaktische Reduktion

### Teil B: Schüler*innen-Übersicht

Führe folgende Schritte sequenziell aus:

1. **Kernthemen chronologisch nummerieren und auflisten** - Alle ausgewählten Kernthemen auflisten und chronologisch nummerieren
2. **"Warum ist das wichtig?"-Dimension hinzufügen** - Für jedes Kernthema:
   - **Exemplarität**: Wofür steht dieses Thema stellvertretend?
   - **Gegenwartsbedeutung**: Warum ist dieses Thema heute, jetzt relevant?
   - **Zukunftsbedeutung**: Welche Auswirkungen hat dieses Thema für die Zukunft?
3. **Themenübersicht strukturieren** - Jedem Kernthema einen Ast "Themenübersicht" hinzufügen mit den Qualitätsebenen der Feinziele als **kurze Stichpunkte ohne Operator**
4. **Markdown-Export** - Die Mindmap als Markdown-Datei exportieren

**Einschränkungen für Schüler*innen-Übersicht:**
- Keine Informationen zur Lerngruppe oder Lernumgebung hinzufügen
- Fokus ausschließlich auf: inhaltliche Kernthemen und didaktische Analysen
- Altersgerechte, motivierende Sprache verwenden
- Bloom-Operatoren und didaktische Fachbegriffe verstecken

## Ausgabeformat

### Markdown-Mindmap-Syntax

Verwende standardisierte Markdown-Hierarchie für Mindmap-Kompatibilität:

```markdown
# Zentrale These oder Kernthema
## Untergeordnetes Konzept
### Details oder Spezifizierung
#### Weitere Ebene
```

### Dateinamen

Exportiere beide Mindmaps als separate `.md`-Dateien:
- `Mindmap_Lehrkraft_[Unterrichtsreihen-Titel].md`
- `Mindmap_Schueler_[Unterrichtsreihen-Titel].md`

### Benutzerhinweis

Nach Erstellung der Mindmaps folgenden Hinweis bereitstellen:
> "Zur einfachen Betrachtung der generierten Mindmaps eignet sich zum Beispiel der folgende Viewer: https://markmap.js.org/"

## Qualitätscheck

Vor Abschluss des Schritts überprüfen:

**Lehrkraft-Übersicht:**
- Alle Kernthemen enthalten didaktische Analyse und didaktische Reduktion
- Jedes Kernthema hat zugeordnete Grobziele
- Jedes Grobziel hat zugeordnete Feinziele
- Jedes Feinziel hat differenzierte Aufgaben (Basis/Unterstützung/Erweiterung)

**Schüler*innen-Übersicht:**
- Alle Kernthemen sind chronologisch nummeriert
- Jedes Thema beantwortet die "Warum?"-Frage
- Jedes Thema hat eine "Themenübersicht" mit Inhaltsübersicht
- Inhalte sind altersgerecht und motivierend formuliert

## Next Steps

Nach Abschluss dieses Schritts:
- Der Nutzer kann das Ergebnis überprüfen und anpassen
- Der nächste Planungsschritt kann gestartet werden
- Das Ergebnis kann für spätere Schritte referenziert werden
