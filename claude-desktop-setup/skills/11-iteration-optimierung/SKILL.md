---
name: iteration-und-optimierung-der-unterrichtsreihe
description: Aktiviert iterative Verbesserungen und Optimierungen der Unterrichtsreihe basierend auf Lehrkraft-Feedback mittels APOM (Automatisiertes Prompt-Optimierungs-Muster). Ermöglicht kontinuierliche Verfeinerungs-Schleifen für alle vorherigen Planungsschritte, Qualitätssicherung und Validierung. Dieser Skill wird als finaler Schritt 11 im Planungsprozess verwendet.
---

# Iteration und Optimierung der Unterrichtsreihe

## Zweck

Dieser Skill implementiert einen kontinuierlichen Verbesserungsprozess für die erstellte Unterrichtsreihe. Er nutzt das **APOM-Muster (Automatisiertes Prompt-Optimierungs-Muster)**, um:

1. **Lehrkraft-Feedback systematisch zu erfassen** und in konkrete Verbesserungen umzuwandeln
2. **Iterative Optimierungen durchzuführen** für alle Aspekte der Unterrichtsplanung
3. **Qualitätskontrolle durchzuführen** und Konsistenz mit didaktischen Standards sicherzustellen
4. **Flexibles Refinement zu ermöglichen** – Rückgriff auf frühere Schritte ohne Start von vorne
5. **Validierung und Abschluss** der finalen Unterrichtsreihe

Der Skill bietet eine strukturierte Schleife: **Feedback → Analyse → Optimierung → Bestätigung → Abschluss**.

## Wann wird dieser Skill verwendet?

Dieser Skill wird verwendet:
- Als **Schritt 11 (FINAL)** im 11-Schritte-Planungsprozess für Unterrichtsreihen
- Nach dem Reflexions-Schritt (Skill 10) als abschließender Review-Schritt
- Wenn die Lehrkraft Änderungen oder Verbesserungen an der kompletten Unterrichtsreihe wünscht
- Bei der Validierung von Inhalten vor dem Export
- Um alternative Varianten oder Optimierungen zu erkunden
- Als kontinuierliche Schleife während und nach der Planungsphase

## Anwendung

### Schritt 1: Einführung in APOM (Automatisiertes Prompt-Optimierungs-Muster)

Dem Nutzer die Grundidee von APOM vermitteln:

**APOM-Konzept:**
- **Automatisierte Prompt-Optimierung:** Die KI verbessert aktiv die Prompts und Anforderungen des Nutzers
- **Iterative Schleifen:** Mehrere Durchläufe bis zur optimalen Lösung
- **Nutzer-Bestätigung:** Nach jedem Optimierungsvorschlag wartet die KI auf Bestätigung vor Fortsetzung
- **Qualitätssteigerung:** Kontinuierliche Verbesserung durch strukturiertes Feedback

**Vorteile für die Unterrichtsplanung:**
- Sicherstellung didaktischer Qualität
- Flexibles Anpassen an Lehrkraft-Wünschen
- Vermeidung von Fehlplanungen durch Review-Schleifen
- Möglichkeit, einzelne Schritte zu optimieren ohne komplette Neuerstellung

### Schritt 2: Überblick über aktuelle Unterrichtsreihe

Die bisher erstellte Unterrichtsreihe zusammengefasst präsentieren:

1. **Sachanalyse** (Schritt 2) – Fachliche Grundlagen
2. **Didaktische Analyse** (Schritt 3) – Rahmenbedingungen
3. **Fachbegriffe** (Schritt 4) – Terminologie
4. **Lernziele** (Schritt 5) – Operationalisierte Ziele
5. **Mindmap/Strukturierung** (Schritt 6) – Wissensstruktur
6. **Unterrichtsverlauf** (Schritt 7) – Stundenplanung
7. **Lernkontrollen** (Schritt 8) – Assessment
8. **Material** (Schritt 9) – Ressourcen
9. **Reflexion** (Schritt 10) – Evaluation

Eine **Zusammenfassung in Stichworten** anbieten, sodass die Lehrkraft schnell überblicken kann, was vorhanden ist.

### Schritt 3: Nutzerfeedback erfassen

Systematisch Feedback einholen mit spezifischen Fragen:

**Kategorien des Feedbacks:**
- **Inhaltlich:** „Gibt es fachliche Fehler oder Ungenauigkeiten?"
- **Didaktisch:** „Entspricht die Struktur dem gewünschten didaktischen Modell?"
- **Praktisch:** „Sind alle Elemente im schulischen Alltag umsetzbar?"
- **Zielgruppe:** „Entspricht der Schwierigkeitsgrad den Lernenden?"
- **Zeit:** „Passt der Umfang in die verfügbare Stundenzahl?"
- **Material:** „Sind alle benötigten Ressourcen verfügbar?"
- **Spezifisches:** „Welche konkreten Aspekte sollen überarbeitet werden?"

Den Nutzer auffordern:
> „Welche Aspekte der Unterrichtsreihe möchten Sie optimieren oder verändern? Beschreiben Sie die Punkte, die noch nicht Ihren Anforderungen entsprechen."

### Schritt 4: APOM-Optimierungsvorschläge generieren

**Beispiel-Workflow für APOM:**

1. **Nutzer-Feedback erfassen** (z.B. „Die Sachanalyse ist zu ausführlich, die Lernziele sind unklar")

2. **Optimierungsvorschlag formulieren:**
   > „Basierend auf Ihrem Feedback schlage ich folgende Optimierungen vor:
   >
   > **Optimierung 1: Sachanalyse verschlanken**
   > - Aktuell: 12 Absätze mit detaillierter Literaturanalyse
   > - Vorschlag: 4–5 Absätze mit Kernaussagen + vereinfachte Struktur
   > - Effekt: Bessere Übersichtlichkeit, schneller zu lesen
   >
   > **Optimierung 2: Lernziele präzisieren**
   > - Aktuell: Grobziele ohne klare Handlungsebene
   > - Vorschlag: Jedes Grobziel mit 2–3 Feinzielen + Operatoren nach KMK
   > - Effekt: Klare Messbarkeit, bessere Vergleichbarkeit mit Assessments
   >
   > Sollen diese Optimierungen durchgeführt werden?"

3. **Auf Bestätigung warten:** „Möchten Sie diese Optimierungen durchführen? Ja / Nein / Anpassungen erforderlich"

4. **Je nach Antwort:**
   - **Ja:** Optimierungen durchführen und speichern
   - **Nein:** Alternative Vorschläge präsentieren
   - **Anpassungen:** Mit Nutzer Spezifikationen überarbeiten und neuen Vorschlag machen

### Schritt 5: Rückgriff auf frühere Schritte (Verfeinerungs-Schleife)

Der Schlüsselvorteil dieses Skills: **Flexible Rückkehr zu einzelnen Schritten ohne komplette Neuerstellung**

**Beispiele für Verfeinerung:**

1. **Sachanalyse überarbeiten:**
   > „Ich möchte die Sachanalyse komprimieren. Claude, nutze Skill 02 mit folgenden neuen Parametern..."

2. **Lernziele neu formulieren:**
   > „Die Lernziele sind zu anspruchsvoll. Überarbeite sie mit Skill 05 für Klasse 7 statt Klasse 9..."

3. **Stundenplanung anpassen:**
   > „Ich habe nur 6 Stunden, nicht 8. Nutze Skill 07, um die Stundenplanung anzupassen..."

**Implementierung:**
- Nutzer kann jederzeit sagen: „Überarbeite [Skill-Name] mit folgenden Änderungen..."
- Claude greift auf den entsprechenden Skill zurück
- Das Ergebnis wird in die Gesamtreihe integriert
- Alle abhängigen Schritte werden automatisch validiert/angepasst

### Schritt 6: Qualitätssicherung und Validierung

Durchführung einer strukturierten Qualitätsprüfung:

**Validierungs-Checkliste:**

- **Inhaltliche Korrektheit:**
  - Fachliche Fehler?
  - Aktuelle Fachliteratur berücksichtigt?
  - Lehrplankonformität?

- **Didaktische Qualität:**
  - Klafkis Modell angewendet (Sachanalyse, Didaktische Analyse)?
  - Leisen-Phasierung in der Stundenplanung?
  - Differenzierung nach Wember implementiert?
  - Lernziele nach Bloom operationalisiert?
  - KMK-Operatoren verwendet?

- **Konsistenz:**
  - Passen Lernziele zu Assessments?
  - Passen Unterrichtsmaterialien zu Lernzielen?
  - Sind Reflexionsfragen auf die Ziele abgestimmt?

- **Praktikabilität:**
  - Zeitlich im Schulalltag umsetzbar?
  - Alle benötigten Materialien verfügbar?
  - Technische Anforderungen (z.B. Tafel, Beamer) erfüllbar?

- **Zielgruppengerechheit:**
  - Schwierigkeitsgrad angemessen?
  - Sprache verständlich?
  - Interessen der Zielgruppe berücksichtigt?

**Bericht generieren:**
```
VALIDIERUNGSBERICHT: [Unterrichtsreihe]

BESTANDENE PRÜFUNGEN:
✓ Inhaltliche Korrektheit
✓ Didaktische Standards
✓ KMK-Operatoren korrekt

HINWEISE / OPTIMIERUNGSPOTENZIAL:
- Lernzielkontrolle könnte konkretisiert werden
- Material-Beschaffung für Experiment prüfen

GESAMTBEWERTUNG: Hochwertig und einsatzbereit
```

### Schritt 7: Abschluss und Export-Vorbereitung

Nach erfolgreichen Optimierungen und Validierung:

1. **Finale Zusammenfassung** präsentieren:
   - Alle 9 Komponenten der Unterrichtsreihe
   - Durchgeführte Optimierungen
   - Validierungsergebnis

2. **Nächste Schritte anbieten:**
   - „Möchten Sie die Unterrichtsreihe als PDF/DOCX/Markdown exportieren?"
   - „Sollen einzelne Elemente noch weiter optimiert werden?"
   - „Möchten Sie ein Archivierungsmaterial für zukünftige Nutzung?"

3. **Export durchführen** (über Export-Skills)

## Workflow

1. **APOM-Konzept erklären:** Iterative Verbesserung durch Nutzer-Bestätigung
2. **Zusammenfassung zeigen:** Überblick über alle 9 Komponenten
3. **Feedback einholen:** Spezifische Fragen zu Optimierungsbedarf
4. **Vorschlag-Analyse:** APOM-Optimierungsvorschläge generieren
5. **Bestätigung warten:** Nutzer genehmigt, lehnt ab oder verändert
6. **Verfeinerung durchführen:** Einzelne Schritte neu bearbeiten oder Optimierungen umsetzen
7. **Validierung:** Qualitätsprüfung durchführen
8. **Feedback-Schleife:** Zurück zu Schritt 3 bei weiteren Änderungswünschen
9. **Abschluss:** Finale Zusammenfassung und Export-Option

## Besonderheiten dieses Skills

### Wiedereingang in den Prozess
- **Wenn neue Anforderungen entstehen:** „Nutze Skill 02, um die Sachanalyse zu [Anpassung] zu ändern"
- **Direkter Zugriff auf vorherige Skills:** Alle 10 vorherigen Skills können aufgerufen werden
- **Automatische Re-Integration:** Änderungen werden nahtlos in die Gesamtreihe integriert

### APOM-Prinzip
- **Aktive KI-Rolle:** Claude schlägt Optimierungen vor, wartet auf Bestätigung
- **Strukturierte Schleifen:** Wiederholbar, bis Nutzer zufrieden ist
- **Transparente Optionen:** Nutzer sieht mehrere Wege, kann wählen

### Qualitätssicherung
- **Automatische Validierung:** Alle Standards werden überprüft
- **Konsistenz-Check:** Verknüpfungen zwischen Schritten werden validiert
- **Dokumentierter Abschluss:** Klar, wann die Reihe einsatzbereit ist

## Output

Die Iteration und Optimierung erfolgt in mehreren Phasen:

### Phase 1: Feedback & Vorschlag
```
OPTIMIERUNGS-VORSCHLAG

Basierend auf Ihrem Feedback:
„Die Sachanalyse ist zu lang, die Lernziele unklar"

Folgende Optimierungen werden vorgeschlagen:

1. SACHANALYSE KOMPRIMIEREN (Skill 02)
   - Reduzierung von 8 auf 4 Kernabschnitte
   - Fokus auf lehrplanrelevante Inhalte

2. LERNZIELE PRÄZISIEREN (Skill 05)
   - Ergänzung von Feinzielen
   - KMK-Operatoren-Einsatz klärend

Sollen diese durchgeführt werden?
[ Ja – durchführen ] [ Nein – alternative Vorschläge ] [ Anpassungen erforderlich ]
```

### Phase 2: Verfeinerungs-Ergebnis
```
VERFEINERUNG ABGESCHLOSSEN

Geänderte Komponenten:
✓ Sachanalyse (gekürzt und strukturiert)
✓ Lernziele (mit Feinzielen und Operatoren)

Auswirkungen auf andere Schritte:
✓ Mindmap-Strukturierung bleibt konsistent
✓ Unterrichtsverlauf automatisch validiert
✓ Lernkontrollen weiterhin passend

Weitere Optimierungen gewünscht?
```

### Phase 3: Validierungsbericht
```
VALIDIERUNGSBERICHT

INHALTLICH: ✓ Bestanden
DIDAKTISCH: ✓ Bestanden
KONSISTENZ: ✓ Bestanden
PRAKTIKABILITÄT: ✓ Bestanden
ZIELGRUPPE: ✓ Bestanden

GESAMTBEWERTUNG: HOCHWERTIG & EINSATZBEREIT
```

### Phase 4: Abschlussoption
```
Ihre Unterrichtsreihe ist optimiert und validiert.

Verfügbare Aktionen:
[ Exportieren als PDF ]
[ Exportieren als DOCX ]
[ Exportieren als Markdown ]
[ Weitere Optimierungen ]
[ Speichern & Beenden ]
```

Das Ergebnis ermöglicht iterative Verbesserungen über unbegrenzte Schleifen, bis die Lehrkraft zufrieden ist. Der Skill schließt die 11-Schritte-Planung ab und bereitet den Weg für den Export oder weitere Arbeit.

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
