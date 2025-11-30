# Iteration und Optimierung der Unterrichtsreihe

## Zweck

Dieser Schritt implementiert einen kontinuierlichen Verbesserungsprozess für die erstellte Unterrichtsreihe. Er nutzt das **APOM-Muster (Automatisiertes Prompt-Optimierungs-Muster)**, um:

1. **Lehrkraft-Feedback systematisch zu erfassen** und in konkrete Verbesserungen umzuwandeln
2. **Iterative Optimierungen durchzuführen** für alle Aspekte der Unterrichtsplanung
3. **Qualitätskontrolle durchzuführen** und Konsistenz mit didaktischen Standards sicherzustellen
4. **Flexibles Refinement zu ermöglichen** – Rückgriff auf frühere Schritte ohne Neuanfang
5. **Validierung und Abschluss** der finalen Unterrichtsreihe

Der Schritt bietet eine strukturierte Schleife: **Feedback → Analyse → Optimierung → Bestätigung → Abschluss**.

## Wann wird dieser Schritt durchgeführt?

Dieser Schritt wird durchgeführt:
- Als **Schritt 11 (FINAL)** im 11-Schritte-Planungsprozess für Unterrichtsreihen
- Nach dem Reflexions-Schritt (Schritt 10) als abschließender Review-Schritt
- Wenn die Lehrkraft Änderungen oder Verbesserungen wünscht
- Bei der Validierung von Inhalten vor dem Export
- Als kontinuierliche Schleife während und nach der Planungsphase

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

## Anwendung

### Schritt 1: Einführung in APOM

Dem Nutzer die Grundidee von APOM vermitteln:

**APOM-Konzept:**
- **Automatisierte Prompt-Optimierung:** KI verbessert aktiv die Prompts
- **Iterative Schleifen:** Mehrere Durchläufe bis zur optimalen Lösung
- **Nutzer-Bestätigung:** Nach jedem Optimierungsvorschlag auf Bestätigung warten
- **Qualitätssteigerung:** Kontinuierliche Verbesserung durch strukturiertes Feedback

**Vorteile:**
- Sicherstellung didaktischer Qualität
- Flexibles Anpassen an Lehrkraft-Wünschen
- Vermeidung von Fehlplanungen durch Review-Schleifen
- Möglichkeit, einzelne Schritte zu optimieren ohne komplette Neuerstellung

### Schritt 2: Überblick über aktuelle Unterrichtsreihe

Die bisher erstellte Unterrichtsreihe zusammengefasst präsentieren:
1. Sachanalyse (Schritt 2)
2. Didaktische Analyse (Schritt 3)
3. Fachbegriffe (Schritt 4)
4. Lernziele (Schritt 5)
5. Mindmap/Strukturierung (Schritt 6)
6. Unterrichtsverlauf (Schritt 7)
7. Lernkontrollen (Schritt 8)
8. Material (Schritt 9)
9. Reflexion (Schritt 10)

Eine **Zusammenfassung in Stichworten** anbieten.

### Schritt 3: Nutzerfeedback erfassen

Systematisch Feedback einholen:

**Kategorien:**
- **Inhaltlich:** Fachliche Fehler oder Ungenauigkeiten?
- **Didaktisch:** Entspricht die Struktur dem gewünschten didaktischen Modell?
- **Praktisch:** Sind alle Elemente im schulischen Alltag umsetzbar?
- **Zielgruppe:** Entspricht der Schwierigkeitsgrad den Lernenden?
- **Zeit:** Passt der Umfang in die verfügbare Stundenzahl?
- **Material:** Sind alle benötigten Ressourcen verfügbar?
- **Spezifisches:** Welche konkreten Aspekte sollen überarbeitet werden?

### Schritt 4: APOM-Optimierungsvorschläge generieren

**Beispiel-Workflow:**
1. Nutzer-Feedback erfassen
2. Optimierungsvorschlag formulieren mit konkreten Verbesserungen
3. Auf Bestätigung warten: "Möchten Sie diese Optimierungen durchführen?"
4. Je nach Antwort: durchführen, alternative Vorschläge oder Anpassungen

### Schritt 5: Rückgriff auf frühere Schritte

**Flexible Rückkehr zu einzelnen Schritten ohne komplette Neuerstellung**

**Beispiele:**
- Sachanalyse überarbeiten: Nutzer fragt nach Komprimierung
- Lernziele neu formulieren: Anpassung an andere Klassenstufe
- Stundenplanung anpassen: Reduktion der Stundenzahl

**Implementierung:**
- Nutzer kann jederzeit sagen: "Überarbeite [Schritt-Name] mit folgenden Änderungen..."
- Claude greift auf den entsprechenden Schritt zurück
- Das Ergebnis wird in die Gesamtreihe integriert
- Alle abhängigen Schritte werden automatisch validiert/angepasst

### Schritt 6: Qualitätssicherung und Validierung

Durchführung einer strukturierten Qualitätsprüfung:

**Validierungs-Checkliste:**
- **Inhaltliche Korrektheit:** Fachliche Fehler? Fachliteratur berücksichtigt? Lehrplankonform?
- **Didaktische Qualität:** Klafkis Modell? Leisen-Phasierung? Wember-Differenzierung? Bloom-Operationalisierung?
- **Konsistenz:** Passen Lernziele zu Assessments? Materialien zu Lernzielen?
- **Praktikabilität:** Zeitlich umsetzbar? Materialien verfügbar?
- **Zielgruppengerechheit:** Schwierigkeitsgrad angemessen? Sprache verständlich?

**Bericht generieren:**
```
VALIDIERUNGSBERICHT: [Unterrichtsreihe]

BESTANDENE PRÜFUNGEN:
✓ Inhaltliche Korrektheit
✓ Didaktische Standards
✓ KMK-Operatoren korrekt

HINWEISE:
- [Optimierungspotenzial]

GESAMTBEWERTUNG: Hochwertig und einsatzbereit
```

### Schritt 7: Abschluss und Export-Vorbereitung

Nach erfolgreichen Optimierungen und Validierung:

1. **Finale Zusammenfassung** präsentieren
2. **Nächste Schritte anbieten:**
   - Export als PDF/DOCX/Markdown?
   - Weitere Optimierungen?
   - Archivierungsmaterial?
3. **Export durchführen** (über Export-Skills)

## Workflow

### Phase A: Informationssammlung
1. APOM-Konzept erklären
2. Zusammenfassung der Unterrichtsreihe zeigen
3. Feedback einholen (inhaltlich, didaktisch, praktisch, etc.)
4. Bei Unklarheiten nachfragen

### Phase B: Iterative Erarbeitung
1. APOM-Optimierungsvorschläge generieren basierend auf Feedback
2. **Zusammenfassung** der Optimierungen im Chat zeigen (nicht vollständige neue Versionen)
3. Frage: "Möchten Sie diese Optimierungen durchführen? Änderungswünsche?"
4. Verfeinerungen durchführen basierend auf Bestätigung
5. Validierung durchführen (Qualitätssicherungs-Checkliste)
6. Wiederholung bis Lehrkraft zufrieden (Feedback-Schleife)

### Phase C: Abschluss
1. Finale Zusammenfassung präsentieren
2. Zufriedenheit prüfen: "Sind Sie mit diesem Ergebnis zufrieden?"
3. Export anbieten: "Soll ich das Ergebnis als TXT-Datei speichern?"
4. Nur bei Zustimmung: TXT-Datei speichern oder Export-Skills nutzen

## Besonderheiten

### Wiedereingang in den Prozess
- Wenn neue Anforderungen entstehen: Direkter Zugriff auf vorherige Schritte
- Automatische Re-Integration: Änderungen werden nahtlos integriert

### APOM-Prinzip
- **Aktive KI-Rolle:** Claude schlägt Optimierungen vor
- **Strukturierte Schleifen:** Wiederholbar, bis Nutzer zufrieden
- **Transparente Optionen:** Nutzer sieht mehrere Wege

### Qualitätssicherung
- **Automatische Validierung:** Alle Standards werden überprüft
- **Konsistenz-Check:** Verknüpfungen zwischen Schritten validiert
- **Dokumentierter Abschluss:** Klar, wann die Reihe einsatzbereit ist

## Output

### Phase 1: Feedback & Vorschlag
Optimierungs-Vorschlag mit konkreten Maßnahmen

### Phase 2: Verfeinerungs-Ergebnis
Geänderte Komponenten und Auswirkungen

### Phase 3: Validierungsbericht
Qualitätsprüfung aller Dimensionen

### Phase 4: Abschlussoption
Verfügbare Aktionen: Exportieren, weitere Optimierungen, Speichern

## Next Steps

Nach Abschluss dieses Schritts:
1. **Zusammenfassung im Chat präsentieren** (nicht voller Inhalt)
2. **Fragen:** "Sind Sie mit diesem Ergebnis zufrieden? Änderungswünsche?"
3. **Bei Zustimmung:** "Soll ich das Ergebnis als TXT-Datei speichern?"
4. Export-Optionen stehen zur Verfügung (PDF, DOCX, Markdown)
5. Weitere Optimierungen sind jederzeit möglich
