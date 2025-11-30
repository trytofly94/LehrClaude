# Sachanalyse für Unterrichtsplanung

## Zweck

Dieser Schritt führt eine fundierte fachliche Sachanalyse durch, die als Grundlage für die gesamte Unterrichtsplanung dient. Er analysiert das Unterrichtsthema systematisch hinsichtlich fachlicher Grundlagen, Kerninhalte, wissenschaftlicher Zusammenhänge und fachspezifischer Besonderheiten.

## Wann wird dieser Schritt durchgeführt?

Dieser Schritt wird durchgeführt:
- Als **Schritt 2** im 11-Schritte-Planungsprozess für Unterrichtsreihen
- Nach dem Debiasing und vor der didaktischen Analyse
- Wenn eine fachlich fundierte Grundlage für ein Unterrichtsthema benötigt wird
- Zur wissenschaftlichen Erschließung eines neuen Unterrichtsinhalts

## Interaktiver Workflow (WICHTIG!)

**NIEMALS direkt Dateien erstellen ohne Abstimmung mit der Lehrkraft!**

### Phase A: Informationen sammeln
1. Stelle alle notwendigen Rückfragen
2. Warte auf Antworten der Lehrkraft
3. Bei Unklarheiten: Nachfragen, nicht annehmen

### Phase B: Iterative Erarbeitung
1. Erarbeite die Inhalte basierend auf dem Input
2. Zeige eine **Zusammenfassung** im Chat (nicht den vollen Text)
3. Frage explizit: "Passt diese Richtung? Haben Sie Änderungswünsche?"
4. Passe an basierend auf Feedback
5. Wiederhole bis die Lehrkraft zufrieden ist

### Phase C: Abschluss
1. Zeige die **finale Zusammenfassung** im Chat
2. Frage: "Sind Sie mit diesem Ergebnis zufrieden?"
3. **Erst nach Zustimmung:** "Soll ich das Ergebnis als TXT-Datei speichern?"
4. Speichere nur auf expliziten Wunsch

### VERBOTEN:
- Direkt TXT-Dateien erstellen ohne vorherige Abstimmung
- Annehmen, dass die Lehrkraft zufrieden ist
- Inhalte generieren ohne Rückfragen

## Wissenschaftliche Quellenarbeit

### Recherche-Workflow:
1. **Umfang evaluieren:** Wie viele Quellen werden für diesen Schritt benötigt?
2. **Hochgeladene Dokumente prüfen:** "Haben Sie relevante Dokumente hochgeladen?"
3. **MCP-Ressourcen nutzen:** Lehrpläne und Didaktik-Frameworks abrufen
4. **Web-Suche (bei Bedarf):** Für einzelne Fakten und spezifische Quellen
5. **Deep Research (bei umfangreicher Recherche):**
   - Recherche-Prompt formulieren
   - Lehrkraft bitten, Deep Research zu aktivieren
   - Auf Ergebnisse warten

### Quellenvalidierung (PFLICHT!):
- **Jede Quelle vor dem Zitieren abrufen** (Web-Suche)
- Existenz und Korrektheit der Angaben prüfen
- NIEMALS nicht-verifizierte Quellen zitieren

### Zitationsformat:
- **Inline im Text:** (Autor, Jahr) oder (Autor, Jahr, S. X)
- **Quellenverzeichnis am Ende:** Alphabetisch sortiert

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

### Phase A: Informationen sammeln
1. **Informationen einholen:** Thema, Schulform, Klassenstufe, Fach erfragen
2. **Lehrplan konsultieren:** Via MCP auf Lehrpläne zugreifen
3. **Optionale Quellen erfragen:** Nutzer nach zusätzlichen Materialien fragen
4. **Rückfragen stellen:** Bei Unklarheiten nachfragen, bis alle Punkte geklärt sind

### Phase B: Iterative Erarbeitung
1. **Sachanalyse durchführen:** Fachliche Grundlagen systematisch analysieren
2. **Zusammenfassung präsentieren:** Kernpunkte der Sachanalyse im Chat zeigen
3. **Fragen:** "Passt diese Richtung? Haben Sie Änderungswünsche?"
4. **Iterative Optimierung:** APOP-Prinzip anwenden - Anpassungen vornehmen basierend auf Feedback
5. **Wiederholung:** Bis die Lehrkraft zufrieden ist

### Phase C: Abschluss
1. **Finale Zusammenfassung zeigen:** Vollständige Sachanalyse im Chat präsentieren
2. **Zufriedenheit prüfen:** "Sind Sie mit diesem Ergebnis zufrieden?"
3. **Export anbieten:** "Soll ich das Ergebnis als TXT-Datei speichern?"
4. **Nur bei Zustimmung:** TXT-Datei speichern

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

QUELLENVERZEICHNIS
==================
[Alphabetisch sortierte Liste aller zitierten Quellen]
```

Das Ergebnis dient als Grundlage für die nachfolgende didaktische Analyse (Schritt 03).

## Next Steps

Nach Abschluss dieses Schritts:
1. **Zusammenfassung im Chat präsentieren** (nicht voller Inhalt)
2. **Fragen:** "Sind Sie mit diesem Ergebnis zufrieden? Änderungswünsche?"
3. **Bei Zustimmung:** "Soll ich das Ergebnis als TXT-Datei speichern?"
4. Der nächste Planungsschritt kann gestartet werden
