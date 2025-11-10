---
name: Feedbackbögen erstellen
description: Erstellt kriterienbasierte Feedbackbögen für formative Assessments, Peer-Feedback und Selbsteinschätzung, aligned mit Lernzielen und Kompetenzen
triggers:
  - Feedbackbogen
  - Bewertungskriterien
  - Schülerfeedback
  - Selbsteinschätzung
  - Peerfeedback
  - Formatives Assessment
---

# Feedbackbögen erstellen Skill

**Skill-ID:** mat-07-feedbackboegen
**Kategorie:** Material-Skill (Evaluation & Assessment)
**Komplexität:** Mittel
**Sektor:** Unterrichtsbegleitung, Lernprozessunterstützung

## Skill-Beschreibung

Dieser Skill assistiert Lehrkräften dabei, differenzierte, kriterienbasierte Feedbackbögen für verschiedene Kontexte zu erstellen:

- **Fremdbeurteilungs-Feedbackbögen** (Lehrkraft → Schüler)
- **Selbsteinschätzungs-Bögen** (Schüler reflektiert eigene Leistung)
- **Peer-Feedback-Formulare** (Schüler bewerten sich gegenseitig)
- **Schüler-Feedback an Lehrkraft** (Reflexion des Unterrichts)
- **Prozessbeobachtungs-Checklisten** (Während Gruppenarbeit/Projekte)

## Didaktische Grundlagen

### Theoretischer Rahmen
- **Formatives Assessment** (Black & Wiliam): Lernbegleitung mit regelmäßigem Feedback
- **Konstruktives Feedback** (Hattie): Zielorientiert, spezifisch, ermutigend
- **Selbstreguliertes Lernen** (Zimmerman): Schüler lernen durch Selbstreflexion
- **Kompetenzorientierung** (KMK): Ausrichtung an Lernzielen und Anforderungsbereichen

### Feedback-Qualitätsmerkmale
1. **Spezifisch** - Bezieht sich auf konkrete Leistungen, nicht auf Person
2. **Konstruktiv** - Weist auf Verbesserungen hin, nicht nur Mängel
3. **Zeitnah** - Unmittelbar oder kurz nach der Leistung
4. **Verständlich** - Für Schüler nachvollziehbar, altersgerecht
5. **Handlungsorientiert** - Gibt nächste Schritte vor

## Funktionalität

### 1. Automatische Kriterienentwicklung
- **Eingabe:** Lernziele aus Schritt 05-lernziele-operationalisieren
- **Ausgabe:** Konkrete, beobachtbare Bewertungskriterien
- **Beispiel:**
  - Lernziel: "Schüler können die Photosynthese erklären"
  - Kriterium: "Beschreibt die Rolle von Licht, Wasser und CO₂ korrekt"

### 2. Skalierte Bewertungskriterien
- **4er oder 5er Skala** (je nach Vorliebe der Schule)
- **Deskriptoren pro Stufe** statt nur Punkte
- **Beispiel:**
  ```
  Kriterium: Fachliche Korrektheit
  ☐ Unzureichend (0/5 Fehler oder mehr)
  ☐ Teilweise erfüllt (1-2 Fehler)
  ☐ Erfüllt (keine wesentlichen Fehler)
  ☐ Vollständig erfüllt (präzise, vollständig, korrekt)
  ```

### 3. Differenzierte Versionen
- **Basis/Unterstützung/Erweiterung:** Kriterien angepasst an Differenzierungsstufen
- **Mehrsprachig:** Formulierungen für DaZ-Schüler vereinfacht
- **Format-Varianten:** Checkliste, Skala, Rubrik, Narratives Feedback

### 4. Konstruktive Feedback-Phrasen
- Automatische Generierung von Feedback-Satzmustern
- Beispiele:
  - "Stärke: Du hast... erkannt/beschrieben/berechnet"
  - "Entwicklungsfeld: Nächstes Mal könntest du..."
  - "Konkrete nächste Schritte: Probiere..."

### 5. Export-Optionen
- **PDF-Formular** (zum Ausdrucken und von Hand ausfüllen)
- **Digitales Google-Formular** oder **Excel-Vorlage** (zum Online-Eintrag)
- **Markdown-Vorlage** (zur manuellen Anpassung)

## Einsatz-Szenarien

### Szenario 1: Präsentation bewerten
```
Eingabe: Schüler stellen Ergebnisse ihrer Sachanalyse vor
Ausgabe: Feedbackbogen mit Kriterien:
- Fachliche Genauigkeit
- Präsentationstechniken
- Schriftliche Unterstützung (Plakate, Folien)
- Zeitmanagement
```

### Szenario 2: Schriftliche Arbeit (Aufsatz, Sachtext)
```
Eingabe: Schüler schreiben einen erklärenden Sachtext zur Photosynthese
Ausgabe: Analytischer Bewertungsbogen mit:
- Fachliche Korrektheit
- Strukturiertheit & Klarheit
- Sprachliche Angemessenheit
- Länge & Vollständigkeit
```

### Szenario 3: Gruppenarbeit-Peer-Feedback
```
Eingabe: Schüler arbeiten in Gruppen an Experimenten
Ausgabe: Peer-Feedback-Formular für Gruppen:
- Einhaltung von Sicherheitsrichtlinien
- Kooperatives Verhalten
- Datenaufzeichnung & Genauigkeit
- Eigenständige Problemlösung
```

### Szenario 4: Selbsteinschätzung
```
Eingabe: Nach jeder Lerneinheit
Ausgabe: Selbsteinschätzungs-Bogen:
- "Ich kann diesen Aspekt erklären: Ja / Teilweise / Nein"
- "Meine Stärke war..."
- "Ich möchte verbessern..."
- "Damit brauche ich Unterstützung..."
```

## Prompt-Struktur

Der Skill arbeitet nach folgendem Workflow:

1. **Kontextualisierung**
   - Lerngruppe & Jahrgangsstufe
   - Fachgebiet & Thema
   - Art der Leistung (Präsentation, Schriftarbeit, Prozess, Produkt)

2. **Kriterienentwicklung** (basierend auf Lernzielen)
   - Zentrale Leistungsdimensionen identifizieren
   - 4-6 Bewertungskriterien definieren
   - Für jede Stufe deskriptive Anker entwickeln

3. **Feedback-Struktur**
   - Format wählen (Checkliste, Rubrik, Narrativ)
   - Differenzierungsstufen berücksichtigen
   - Konstruktive Formulierungen vorbereiten

4. **Qualitätssicherung**
   - Kriterien sind beobachtbar und messbar
   - Feedback-Phrasen sind konstruktiv und ermutigend
   - Sprache ist altersgerecht
   - Umfang ist praktikabel (max. 6-8 Kriterien)

5. **Export & Anpassung**
   - Vorlage in gewähltem Format exportieren
   - Bereit für Druck oder digitale Nutzung

## Integrationen

- **Eingabe:** Lernziele aus Skill 05-lernziele-operationalisieren
- **Eingabe:** Aufgaben/Lernprodukte aus Skill 08-lernkontrollen-entwickeln
- **Ausgabe:** Bögen können als Anhang zur Unterrichtsreihe exportiert werden (Export-Skills)

## Qualitätskriterien

Der erstellte Feedbackbogen erfüllt diese Standards:

✓ **Ausrichtung:** Direkt verankert in den Lernzielen der Unterrichtsreihe
✓ **Klarheit:** Kriterien und Deskriptoren sind eindeutig verständlich
✓ **Konstruktivität:** Feedback-Phrasen ermutigen und motivieren
✓ **Praktikabilität:** Ausfüllbar in angemessener Zeit (<10 Min pro Schüler)
✓ **Differenzierung:** Berücksichtigung heterogener Lerngruppen
✓ **Transparenz:** Schüler verstehen die Erwartungen vorab

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
