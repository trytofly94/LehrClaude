---
name: Differenzierungs-Empfehlung erstellen
description: Generiert unterrichtsbezogene Differenzierungs-Empfehlungen basierend auf Schülerprofilen. Erstellt nach Wember drei Stufen (Unterstützung/Basis/Erweiterung) mit konkreten Lernzielen, Methoden, Materialien und Sozialformen für ein Unterrichtsthema. Trigger bei "Differenzierung planen", "Differenzierungs-Empfehlung", "Unterricht differenzieren".
---

# Differenzierungs-Empfehlung erstellen

## Zweck

Dieser Skill erstellt **konkrete Differenzierungs-Empfehlungen** für ein spezifisches Unterrichtsthema auf Basis der Schülerprofile einer Klasse. Er nutzt das **3-Stufen-Modell nach Wember**:

- **Unterstützungsstufe** - Vereinfachte Anforderungen, mehr Hilfestellung
- **Basisstufe** - Regelanforderungen des Lehrplans
- **Erweiterungsstufe** - Vertiefte Anforderungen, Transfer

**Kernfunktionen:**
- Automatische Gruppierung der Klasse nach Differenzierungsstufe
- Anpassung der Lernziele pro Stufe
- Konkrete Methoden und Materialien-Empfehlungen
- Sozialformen-Vorschläge
- Export als Differenzierungsplan

## Wann wird dieser Skill verwendet?

Dieser Skill wird verwendet:
- Bei der **Unterrichtsplanung** für ein spezifisches Thema
- Zur Vorbereitung **differenzierter Materialien**
- Für **Gruppeneinteilungen** im Unterricht
- Bei der **Vorbereitung von Klassenarbeiten** (differenzierte Aufgaben)

**Trigger-Keywords:**
- "Erstelle Differenzierungs-Empfehlungen für [Thema]"
- "Ich plane eine Stunde zu [Thema], wie differenziere ich?"
- "Differenzierungsplan für Klasse [X] erstellen"
- "Wie kann ich [Thema] für meine Klasse differenzieren?"

## Anwendung

### Phase 1: Kontext erfassen

**Frage 1: Klasse identifizieren**
```
Für welche Klasse möchtest du Differenzierungs-Empfehlungen erstellen?

- Klassenbezeichnung eingeben (z.B. "7a", "Klasse 9b")
- Alle verfügbaren Klassen anzeigen
```

**Frage 2: Unterrichtsthema**
```
Welches Unterrichtsthema planst du?

Beispiele:
- "Photosynthese" (Biologie)
- "Bruchrechnung" (Mathematik)
- "Französische Revolution" (Geschichte)

Bitte gib an:
- Thema: [...]
- Fach: [...]
- Geplanter Umfang: [z.B. "2 Doppelstunden", "1 Unterrichtsstunde"]
```

**Frage 3: Lernziel (optional, falls vorhanden)**
```
Hast du bereits ein Lernziel formuliert?

Falls ja: Bitte eingeben (idealerweise operationalisiert nach Bloom)
Falls nein: Ich erstelle Lernziele basierend auf dem Thema
```

### Phase 2: Schülerprofile analysieren

**Aktion:**
1. Alle Schülerprofile der Klasse aus MCP Filesystem laden
   - Pfad: `1_Exportierte_Ergebnisse/Klassenverwaltung/Schuelerprofile/`
2. Nach Differenzierungsstufe gruppieren:
   - Unterstützungsstufe
   - Basisstufe
   - Erweiterungsstufe

3. Pro Stufe: Gemeinsame Merkmale identifizieren
   - Förderschwerpunkte
   - Unterstützungsbedarfe
   - Lernstand (im relevanten Fach)
   - Stärken & Interessen
   - Bewährte Methoden

**Ausgabe (intern, für Lehrkraft transparent):**
```
📊 **Analyse der Klasse:**

Unterstützungsstufe: 6 Schüler*innen
- Gemeinsame Unterstützungsbedarfe: Kleinschrittigkeit (6/6), Visualisierung (5/6), Sprachliche Vereinfachung (4/6)
- Förderschwerpunkte: Lernen (4), Sprache (2)

Basisstufe: 10 Schüler*innen
- Förderschwerpunkte: Lernen (8), Emotional-soziale Entwicklung (2)

Erweiterungsstufe: 2 Schüler*innen
- Stärken: Transferaufgaben, selbstständiges Arbeiten
```

### Phase 3: Lernziele differenzieren

**Basierend auf dem Unterrichtsthema werden drei Lernziele formuliert:**

**Beispiel: Thema "Photosynthese" (Biologie, Klasse 7)**

#### Unterstützungsstufe
```
Lernziel (vereinfacht):
"Schüler*innen können die Grundfunktion der Photosynthese benennen."

Bloom-Stufe: Erinnern (K1)

Operationalisierung:
- Schüler*innen können sagen, dass Pflanzen Sonnenlicht brauchen
- Schüler*innen können benennen, dass bei Photosynthese Sauerstoff entsteht
```

#### Basisstufe
```
Lernziel (Standardniveau):
"Schüler*innen können die Photosynthese-Reaktion beschreiben und Eingangsstoffe sowie Produkte benennen."

Bloom-Stufe: Verstehen (K2)

Operationalisierung:
- Schüler*innen können die Gleichung der Photosynthese aufschreiben
- Schüler*innen können CO₂, H₂O, Licht als Eingangsstoffe und O₂, Glucose als Produkte identifizieren
```

#### Erweiterungsstufe
```
Lernziel (vertieft):
"Schüler*innen können den Zusammenhang zwischen Photosynthese und Ökosystemen analysieren und die Bedeutung für das Leben auf der Erde bewerten."

Bloom-Stufe: Analysieren (K4) + Bewerten (K5)

Operationalisierung:
- Schüler*innen können erklären, warum ohne Photosynthese kein Leben möglich wäre
- Schüler*innen können die Rolle von Pflanzen in Nahrungsketten darstellen
- Schüler*innen können Konsequenzen von Waldrodung auf Photosynthese bewerten
```

### Phase 4: Methoden & Materialien pro Stufe

**Pro Differenzierungsstufe werden konkrete Methoden und Materialien empfohlen:**

#### Unterstützungsstufe (6 Schüler*innen)

**Methoden:**
- Vereinfachtes Schaubild mit Beschriftung (CO₂ rein, O₂ raus)
- Wortspeicher mit Fachbegriffen (bebildert)
- Lückentext statt freie Formulierung
- Handlungsorientiert: Experiment mit Wasserpest (Sauerstoffblasen sichtbar machen)

**Materialien:**
```
📄 Arbeitsblatt Unterstützungsstufe:
- Vereinfachtes Schaubild der Pflanze
- Lückentext: "Pflanzen brauchen _____, _____ und _____. Sie produzieren _____."
- Wortspeicher: Sonnenlicht (mit Sonne-Icon), Wasser (mit Tropfen-Icon), Kohlendioxid, Sauerstoff
- Aufgabe: Beschrifte das Schaubild mit Hilfe des Wortspeichers
```

**Sozialform:**
- Partnerarbeit mit Peer-Tutor*in (aus Basisstufe)
- Lehrkraft-Unterstützung bei Bedarf

**Zeitrahmen:**
- 1 Doppelstunde (mit Experiment)

**Erfolgs-Check:**
- Können die Schüler*innen die Begriffe "Sonnenlicht", "Sauerstoff" zuordnen?

---

#### Basisstufe (10 Schüler*innen)

**Methoden:**
- Schaubild mit Beschriftungsaufgabe (ohne Wortspeicher)
- Kurze schriftliche Erklärung (3-5 Sätze)
- Experiment mit Wasserpest + Protokoll

**Materialien:**
```
📄 Arbeitsblatt Basisstufe:
- Detailliertes Schaubild der Photosynthese (Blatt-Querschnitt)
- Aufgabe 1: Beschrifte Eingangsstoffe und Produkte
- Aufgabe 2: Erkläre in 3-5 Sätzen, was bei der Photosynthese passiert
- Aufgabe 3: Protokolliere das Experiment (Beobachtung, Erklärung)
```

**Sozialform:**
- Einzelarbeit
- Gruppenarbeit beim Experiment (3-4 Schüler*innen)

**Zeitrahmen:**
- 1 Doppelstunde

**Erfolgs-Check:**
- Können die Schüler*innen die Photosynthese-Gleichung aufschreiben?

---

#### Erweiterungsstufe (2 Schüler*innen)

**Methoden:**
- Recherche-Aufgabe: "Was wäre, wenn es keine Photosynthese gäbe?"
- Transfer auf Ökosysteme
- Präsentation der Ergebnisse (5 Min vor Klasse)

**Materialien:**
```
📄 Arbeitsblatt Erweiterungsstufe:
- Aufgabe 1: Recherchiere: Welche Rolle spielt Photosynthese in Nahrungsketten?
- Aufgabe 2: Analysiere: Was passiert bei Waldrodung mit der Photosynthese weltweit?
- Aufgabe 3: Bewerte: Sollten Regenwälder geschützt werden? Begründe mit Bezug zur Photosynthese.
- Aufgabe 4: Erstelle eine Präsentation (max. 5 Min)
```

**Sozialform:**
- Projektarbeit (zu zweit)
- Selbstständige Recherche (Internet, Fachbücher)

**Zeitrahmen:**
- 1 Doppelstunde + Hausaufgabe
- Präsentation in Folgestunde

**Erfolgs-Check:**
- Können die Schüler*innen den Zusammenhang Photosynthese ↔ Ökosysteme erklären?

---

### Phase 5: Organisatorische Hinweise

**Raumaufteilung:**
```
Empfohlene Sitzordnung für differenzierte Arbeit:

Zone A (Unterstützungsstufe):
- Vorne, näher an Tafel und Lehrkraft
- 6 Plätze in 3 Zweiergruppen (mit Peer-Tutor*innen)

Zone B (Basisstufe):
- Mitte des Raums
- 10 Plätze in Einzeltischen oder 4er-Gruppen (für Experiment)

Zone C (Erweiterungsstufe):
- Hinten oder separater Tisch
- 2 Plätze, ruhig für Recherche und Projektarbeit
```

**Materialvorbereitung:**
```
Vor der Stunde bereitstellen:
- Arbeitsblätter in 3 Fassungen (Unterstützung/Basis/Erweiterung)
- Experiment-Material: Wasserpest, Reagenzglas, Lampe (für Basis + Unterstützung)
- Tablets/Laptops für Recherche (Erweiterung)
- Wortspeicher-Karten (Unterstützung)
```

**Zeitplanung:**
```
0-10 Min: Einstieg (gemeinsam, alle Stufen)
  - Kurzvideo zur Photosynthese (3 Min)
  - Aktivierung: "Was wisst ihr über Photosynthese?"

10-50 Min: Arbeitsphase (differenziert)
  - Unterstützungsstufe: Arbeitsblatt + Experiment mit Lehrkraft
  - Basisstufe: Arbeitsblatt + Experiment in Gruppen
  - Erweiterungsstufe: Recherche + Präsentationsvorbereitung

50-60 Min: Sicherung (gemeinsam)
  - Unterstützungsstufe präsentiert Schaubild
  - Basisstufe erklärt Photosynthese-Gleichung
  - Erweiterungsstufe zeigt Recherche-Ergebnis (Vorschau)

60-70 Min: Reflexion & Ausblick
  - Was haben wir gelernt?
  - Nächste Stunde: Vertiefung + Präsentation Erweiterungsstufe
```

### Phase 6: Zusammenfassung & Export

**Output:**

```markdown
# Differenzierungsplan: Photosynthese (Klasse 7a)

**Stand:** [Datum]
**Fach:** Biologie
**Thema:** Photosynthese
**Umfang:** 2 Doppelstunden

---

## Klassenanalyse

**Anzahl Schüler*innen:** 18

**Verteilung Differenzierungsstufen:**
- Unterstützung: 6 (33%)
- Basis: 10 (56%)
- Erweiterung: 2 (11%)

---

## Differenzierung nach Stufen

### Unterstützungsstufe (6 Schüler*innen)

**Lernziel:**
"Schüler*innen können die Grundfunktion der Photosynthese benennen."

**Methoden:**
- Vereinfachtes Schaubild mit Beschriftung
- Wortspeicher (bebildert)
- Lückentext
- Experiment mit Wasserpest

**Materialien:**
- Arbeitsblatt Unterstützungsstufe (siehe Anhang)
- Wortspeicher-Karten
- Experiment-Set

**Sozialform:**
- Partnerarbeit mit Peer-Tutor*in

**Zeitrahmen:**
- 1 Doppelstunde

**Erfolgs-Check:**
- Können Begriffe "Sonnenlicht", "Sauerstoff" zugeordnet werden?

---

### Basisstufe (10 Schüler*innen)

**Lernziel:**
"Schüler*innen können die Photosynthese-Reaktion beschreiben und Eingangsstoffe sowie Produkte benennen."

**Methoden:**
- Schaubild mit Beschriftungsaufgabe
- Schriftliche Erklärung (3-5 Sätze)
- Experiment + Protokoll

**Materialien:**
- Arbeitsblatt Basisstufe (siehe Anhang)
- Experiment-Set

**Sozialform:**
- Einzelarbeit
- Gruppenarbeit beim Experiment

**Zeitrahmen:**
- 1 Doppelstunde

**Erfolgs-Check:**
- Können die Photosynthese-Gleichung aufschreiben?

---

### Erweiterungsstufe (2 Schüler*innen)

**Lernziel:**
"Schüler*innen können den Zusammenhang zwischen Photosynthese und Ökosystemen analysieren und die Bedeutung bewerten."

**Methoden:**
- Recherche-Aufgabe
- Transfer auf Ökosysteme
- Präsentation

**Materialien:**
- Arbeitsblatt Erweiterungsstufe (siehe Anhang)
- Tablets/Laptops für Recherche
- Fachbücher

**Sozialform:**
- Projektarbeit (zu zweit)

**Zeitrahmen:**
- 1 Doppelstunde + Hausaufgabe
- Präsentation in Folgestunde

**Erfolgs-Check:**
- Können Zusammenhang Photosynthese ↔ Ökosysteme erklären?

---

## Organisatorische Hinweise

### Raumaufteilung
[siehe oben]

### Materialvorbereitung
[siehe oben]

### Zeitplanung
[siehe oben]

---

## Anhänge (Arbeitsblätter)

**Hinweis:** Arbeitsblätter können mit Skill `mat-02-arbeitsblatt-erstellen` erstellt werden.

- Arbeitsblatt_Unterstuetzung_Photosynthese.pdf
- Arbeitsblatt_Basis_Photosynthese.pdf
- Arbeitsblatt_Erweiterung_Photosynthese.pdf

---

**Erstellt am:** [Datum]
**Nächste Überarbeitung:** Nach Durchführung (Reflexion)
```

**Frage:**
```
Möchtest du den Differenzierungsplan exportieren?

Optionen:
1. Als Markdown speichern
2. Als PDF exportieren
3. Arbeitsblätter direkt erstellen (mit mat-02-arbeitsblatt-erstellen)
4. Nicht speichern
```

### Phase 7: Integration mit anderen Skills

**Optional: Arbeitsblätter erstellen**

Falls Lehrkraft wählt: "Arbeitsblätter direkt erstellen"
→ Skill `mat-02-arbeitsblatt-erstellen` wird aufgerufen (3x für jede Stufe)

**Optional: Lernziele operationalisieren**

Falls noch kein Lernziel formuliert war:
→ Skill `05-lernziele-operationalisieren` nutzen

## Qualitätskriterien

### Didaktische Prinzipien

1. **Wember-Konformität:**
   - Klare 3-Stufen-Struktur (Unterstützung/Basis/Erweiterung)
   - Gleiche Thematik, unterschiedliche Anforderungen

2. **Bloom-Taxonomie:**
   - Lernziele sind nach Bloom-Stufen differenziert
   - Unterstützung: K1-K2 (Erinnern, Verstehen)
   - Basis: K2-K3 (Verstehen, Anwenden)
   - Erweiterung: K4-K6 (Analysieren, Bewerten, Erschaffen)

3. **Individualisierung:**
   - Berücksichtigung der spezifischen Unterstützungsbedarfe
   - Nutzung der Stärken & Interessen (z.B. Experimente für kinästhetische Lerner*innen)

4. **Praktikabilität:**
   - Umsetzbar in einer realen Unterrichtsstunde
   - Materialien sind beschreibbar und erstellbar
   - Zeitplanung ist realistisch

## MCP Filesystem Integration

### Lese-Zugriff
- Alle Schülerprofile aus `1_Exportierte_Ergebnisse/Klassenverwaltung/Schuelerprofile/`
- Optional: Wember-Differenzierung aus `2_Zentrale_Ressourcen/Didaktik/`

### Schreib-Zugriff
- Differenzierungsplan speichern in `1_Exportierte_Ergebnisse/Klassenverwaltung/Differenzierungsplaene/`
- Dateiformat: Markdown (.md)
- Dateiname: `Klasse_[X]_[Thema]_Differenzierung_[Datum].md`

## Workflow

```
Start
  ↓
Kontext erfassen (Klasse, Thema, Lernziel)
  ↓
Schülerprofile laden und analysieren
  ↓
Nach Differenzierungsstufe gruppieren
  ↓
Lernziele pro Stufe formulieren (Bloom-Taxonomie)
  ↓
Methoden & Materialien pro Stufe entwickeln
  ↓
Organisatorische Hinweise (Raum, Zeit, Material)
  ↓
Differenzierungsplan zusammenstellen
  ↓
Export-Optionen anbieten
  ↓
Optional: Arbeitsblätter erstellen (mat-02-arbeitsblatt-erstellen)
  ↓
Ende
```

## Output

**Differenzierungsplan** als Markdown-Datei:

- Klassenanalyse
- 3 differenzierte Lernziele
- Methoden & Materialien pro Stufe
- Sozialformen
- Zeitplanung
- Organisatorische Hinweise

## Integration mit anderen Skills

```
klasse-03-klasse-verwalten
    ↓
klasse-04-differenzierungs-empfehlung [DIESER SKILL]
    ↓
Optional: 05-lernziele-operationalisieren (für präzise Lernziele)
    ↓
Optional: mat-02-arbeitsblatt-erstellen (für Arbeitsblätter)
    ↓
Optional: export-pdf (für PDF-Export)
```

## Fehlerbehandlung

### Problem: Keine Schülerprofile gefunden

**Lösung:**
```
❌ **Fehler:** Keine Schülerprofile für Klasse "[X]" gefunden.

Bitte erstelle zuerst Schülerprofile mit Skill klasse-01-schuelerprofil-erstellen.
```

### Problem: Alle Schüler*innen in einer Stufe

**Lösung:**
```
⚠️ **Hinweis:** Alle 18 Schüler*innen sind in der Basisstufe.

Differenzierung wird trotzdem erstellt, aber mit reduzierter Komplexität.
Empfehlung: Prüfe, ob die Differenzierungsstufen korrekt zugewiesen sind.
```

### Problem: Unterrichtsthema zu allgemein

**Lösung:**
```
⚠️ **Hinweis:** Das Thema "Biologie" ist sehr allgemein.

Bitte präzisiere:
- Welches spezifische Thema? (z.B. "Photosynthese", "Zellaufbau")
- Welcher Aspekt soll behandelt werden?
```

## Resources

Dieser Skill nutzt folgende Ressourcen:

- **Daten:** Schülerprofile aus MCP Filesystem
- **Didaktik:** Wember-Differenzierung, Bloom-Taxonomie
- **Templates:** Differenzierungsplan-Template (intern)

## Next Steps

Nach Erstellung eines Differenzierungsplans:
- Arbeitsblätter erstellen (mat-02-arbeitsblatt-erstellen)
- Lernziele operationalisieren (05-lernziele-operationalisieren)
- Export als PDF (export-pdf)
- Nach Durchführung: Reflexion und Anpassung (10-reflexion-durchfuehren)
