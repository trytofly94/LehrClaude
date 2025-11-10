---
name: Sachanalyse für Unterrichtsplanung
description: Führt die fachliche Sachanalyse als Grundlage der Unterrichtsplanung durch. Analysiert Kerninhalte, fachliche Zusammenhänge und Besonderheiten eines Unterrichtsthemas unter Berücksichtigung von Lehrplänen und wissenschaftlichen Quellen. Dieser Skill wird als Schritt 2 im Planungsprozess verwendet.
---

# Sachanalyse für Unterrichtsplanung

## Zweck

Dieser Skill führt eine fundierte fachliche Sachanalyse durch, die als Grundlage für die gesamte Unterrichtsplanung dient. Er analysiert das Unterrichtsthema systematisch hinsichtlich fachlicher Grundlagen, Kerninhalte, wissenschaftlicher Zusammenhänge und fachspezifischer Besonderheiten.

## Wann wird dieser Skill verwendet?

Dieser Skill wird verwendet:
- Als **Schritt 2** im 11-Schritte-Planungsprozess für Unterrichtsreihen
- Nach dem Debiasing und vor der didaktischen Analyse
- Wenn eine fachlich fundierte Grundlage für ein Unterrichtsthema benötigt wird
- Zur wissenschaftlichen Erschließung eines neuen Unterrichtsinhalts

## Anwendung

### Informationsbeschaffung

Zunächst folgende Informationen vom Nutzer einholen:
1. **Thema der Unterrichtsreihe** - Welcher fachliche Inhalt soll behandelt werden?
2. **Schulform** - Gymnasium, Realschule, Gesamtschule, etc.
3. **Klassenstufe** - Welche Jahrgangsstufe?
4. **Fach** - Welches Unterrichtsfach?

### Zugang zu Ressourcen via MCP

Auf folgende Ressourcen via MCP Filesystem Server zugreifen:
- **Lehrpläne** aus `2_Zentrale_Ressourcen/Lehrplaene/[Bundesland]/` lesen
- **Fachdidaktische Literatur** aus `2_Zentrale_Ressourcen/Didaktik/` konsultieren
- **Vorhandene Templates** aus `2_Zentrale_Ressourcen/Templates/` nutzen

### Optionale Erweiterungen

Den Nutzer fragen, ob folgende optionale Quellen einbezogen werden sollen:
- **Kernlehrplan des Bundeslandes** (falls vorhanden in MCP)
- **Schulinterner Lehrplan** (falls vom Nutzer bereitgestellt)
- **Interne Absprachen / persönliche Präferenzen**
- **Zusätzliche Informationen:**
  - Unterrichtsmaterialien von Fachverlagen
  - Unterrichtsmaterialien von Fachwebseiten
  - Fachwebseiten / sonstige Quellen

### Durchführung der Sachanalyse

Die Sachanalyse umfasst:

1. **Fachliche Grundlagen klären**
   - Zentrale Begriffe und Konzepte definieren
   - Wissenschaftliche Modelle und Theorien darstellen
   - Aktuelle Forschungsstand berücksichtigen

2. **Kerninhalte identifizieren**
   - Welche Inhalte sind für das Thema essentiell?
   - Welche Teilthemen gehören dazu?
   - Welche Zusammenhänge bestehen?

3. **Fachliche Zusammenhänge herausarbeiten**
   - Wie hängen die Teilinhalte zusammen?
   - Welche Voraussetzungen müssen erfüllt sein?
   - Welche weiterführenden Perspektiven gibt es?

4. **Fachspezifische Besonderheiten beachten**
   - Gibt es häufige Fehlvorstellungen?
   - Welche Schwierigkeiten sind bekannt?
   - Welche didaktischen Chancen bietet das Thema?

### Qualitätskriterien

Folgende Einschränkungen strikt beachten:

- **Korrektheit:** Genauigkeit und Präzision priorisieren. Antworten auf verifizierte Daten und etabliertes Wissen stützen. Bei Unklarheit oder Unsicherheit dies explizit kommunizieren. Spekulationen, Annahmen und Extrapolationen vermeiden.

- **Neuformulierung nach Änderungen:** Nach jeder Eingabe durch den Nutzer die gesamte Antwort neu ausgeben.

- **Evidenzbasierung:** Nur auf wissenschaftlich fundierte Quellen zurückgreifen.

## Workflow

1. **Informationen einholen:** Thema, Schulform, Klassenstufe, Fach erfragen
2. **Lehrplan konsultieren:** Via MCP auf Lehrpläne zugreifen
3. **Optionale Quellen erfragen:** Nutzer nach zusätzlichen Materialien fragen
4. **Sachanalyse durchführen:** Fachliche Grundlagen systematisch analysieren
5. **Rückfragen stellen:** Bei Unklarheiten nachfragen, bis alle Punkte geklärt sind
6. **Iterative Optimierung:** APOP-Prinzip anwenden - Prompt-Optimierung vorschlagen und auf Bestätigung warten

## Output

Die Sachanalyse als **nummerierte Liste** ausgeben mit folgender Struktur:

```
Sachanalyse: [Thema]

1. Fachliche Grundlagen
   - [Grundlegendes Konzept 1]
   - [Grundlegendes Konzept 2]
   - ...

2. Kerninhalte
   - [Kerninhalt 1]
   - [Kerninhalt 2]
   - ...

3. Fachliche Zusammenhänge
   - [Zusammenhang 1]
   - [Zusammenhang 2]
   - ...

4. Fachspezifische Besonderheiten
   - [Besonderheit 1]
   - [Besonderheit 2]
   - ...
```

Das Ergebnis dient als Grundlage für die nachfolgende didaktische Analyse (Skill 03).

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
