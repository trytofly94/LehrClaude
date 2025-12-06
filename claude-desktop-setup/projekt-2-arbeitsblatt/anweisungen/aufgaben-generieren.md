# Aufgaben generieren und differenzieren

## Zweck

Dieses Skill transformiert Lernziele (insbesondere von Skill 05-lernziele-operationalisieren) in konkrete, differenzierte Aufgabenstellungen für Schüler*innen. Die generierten Aufgaben sind:
- Spezifisch auf Kernthemen und Feinziele abgestimmt
- Nach Differenzierungsniveaus strukturiert (Basis/Unterstützung/Erweiterung)
- Mit KMK-Operatoren versehen (standardisierte Aufgabenverben)
- Mit explizit angegebenen Sozialformen und Gruppengrößen
- Unter Verwendung geeigneter Unterrichtsmethoden aus einem Methodenpool

## Wann verwenden

Dieses Skill sollte eingesetzt werden, wenn:
- Aufgabenstellungen für ein Arbeitsblatt benötigt werden
- Ein Lernmodul konkrete Schüler*innen-Aufgaben braucht
- Eine Unterrichtsreihe differenzierte Aufgaben für heterogene Lerngruppen benötigt
- Lernziele in praktische, inklusive Aufgaben übersetzt werden sollen
- Bewährte didaktische Methoden bei der Aufgabenerstellung angewendet werden sollen

## Ablauf

### 1. Eingabe analysieren

Folgende Informationen werden benötigt:
- **Lernziele**: SMART-formulierte Ziele (idealerweise von Skill 05 mit Bloom-Stufen)
- **Kernthema und Feinziele**: Thematische Struktur
- **Zielgruppe**: Alter, Jahrgangsstufe, Schultyp
- **Verfügbare Ressourcen**: Materialien, Technologie, Zeit
- **Inklusion & Differenzierung**: Bekannte Förderschwerpunkte in der Lerngruppe

### 2. Klärungsfragen stellen

Falls Unklarheiten bestehen, werden präzise Klärungsfragen gestellt, bis alle Anforderungen transparent sind. **Beispiel-Klärungsfragen:**
- "Wie viel Zeit soll für diese Aufgabe zur Verfügung stehen?"
- "Welche Materialien sind verfügbar? (Bücher, Internet, Arbeitsblätter, ...)"
- "Gibt es Schüler*innen mit spezifischen Förderbedarfen in dieser Gruppe?"
- "Sollen die Aufgaben schriftlich oder mündlich gelöst werden?"
- "Wie ist die Klassengröße? (für realistische Gruppengrößen)"

### 3. Prompt optimieren

Der originale Prompt wird optimiert und zur Bestätigung vorgelegt, bevor die Ausführung erfolgt. Die optimierte Version:
- Konkretisiert alle Anforderungen
- Integriert die geklärten Informationen
- Validiert die Machbarkeit

### 4. Aufgabenstellungen generieren

**Struktur pro Kernthema/Feinziel:**

```
#### [Kernthema]: [Feinziel]

**Basis-Level:**
[Aufgabenstellung mit Format: **[Operator]** [Tätigkeit] in **[Sozialform]** (**[Gruppengröße]**)]

**Unterstützungs-Level:**
[Aufgabenstellung mit zusätzlichen Scaffolding-Elementen]

**Erweiterungs-Level:**
[Aufgabenstellung mit erhöhter kognitiver Anforderung]
```

**Formatierungsrichtlinien:**
- **Operator**: KMK-Operator in Fett (z.B. **Lesen**, **Beschreiben**, **Recherchieren**)
- **Sozialform**: In Fett (z.B. **Einzelarbeit**, **Partnerarbeit**, **Gruppenarbeit**)
- **Gruppengröße**: In Klammern (z.B. **(2er-Teams)**, **(Gruppen à 4-5)**)

**Beispiele aus dem Original-Prompt:**
- "**Lesen** Sie den Text zum Weg der Nahrung durch den Körper in **Einzelarbeit**."
- "**Beschreibe**, wofür der Körper Kohlenhydrate vorrangig nutzt."
- "**Recherchiert** in **Partnerarbeit** **(2er-Teams)** im Internet nach Antworten auf die Fragen rund um den Mond."
- "Du und dein Sitznachbar **verfasst** in **Partnerarbeit** 4 Sätze, wie ihr in dieser Situation handeln würdet."

### 5. Methodenauswahl

Für jede Aufgabe wird eine geeignete Methode aus dem Methodenpool gewählt (integriert in der Aufgabenformulierung):
- **Rezeptive Methoden**: Lesen, Beobachten, Zuhören
- **Analytische Methoden**: Analyse, Vergleich, Klassifikation
- **Kreative Methoden**: Verfassen, Gestalten, Entwerfen
- **Interaktive Methoden**: Diskussion, Debatte, Rollenspiel
- **Recherche-Methoden**: Internetrecherche, Experimente, Interviews
- **Produktive Methoden**: Präsentation, Erklären, Lehren

### 6. Qualitätskontrolle

Vor der Abgabe wird überprüft:
- **Unterscheidbarkeit**: Sind die drei Differenzierungsniveaus klar unterschiedlich?
- **Adäquatheit**: Entsprechen Aufgaben den Lernzielen und Bloom-Stufen?
- **KMK-Compliance**: Sind die Operatoren korrekt gewählt?
- **Machbarkeit**: Sind Aufgaben in realistische Zeit- und Ressourcenrahmenvorgaben lösbar?
- **Inklusion**: Sind alle Schüler*innen durch die Differenzierung adressiert?
- **Sprachlichkeit**: Sind Formulierungen altersgerecht und verständlich?

## Zusammenarbeit mit anderen Skills

- **Skill 05-lernziele-operationalisieren**: Liefert SMART-Ziele und Bloom-Klassifikationen
- **Skill 06-mindmap-strukturierung**: Kann Kernthemen und Feinziele strukturieren
- **Skill mat-01-texterstellung**: Schreibt anspruchsvollere Aufgabenformulierungen aus
- **Skill mat-02-arbeitsblatt-erstellen**: Integriert die generierten Aufgaben ins Layout
- **Skill mat-08-lernzielkontrolle**: Nutzt Aufgaben als Kontrollmechanismus

## Wichtige Hinweise

- **Klärung vor Ausführung**: Falls es an irgendeiner Stelle Unklarheiten gibt, wird erst so lange nachgefragt, bis alle Unklarheiten beseitigt sind.
- **Iterativer Prozess**: Der optimierte Prompt wird immer zur Bestätigung vorgelegt, bevor die eigentliche Aufgabengenerierung erfolgt.
- **Differenzierung ist zentral**: Alle drei Niveaustufen müssen deutlich erkennbar unterschiedlich sein und real verschiedenen Schüler*innen-Gruppen entsprechen.
- **Authentische Methoden**: Die gewählten Methoden müssen im realen Klassenzimmer praktikabel sein.

## Resources

Dieser Skill nutzt folgende Ressourcen:

- **Templates:** Vorlagen für Unterrichtsmaterialien (noch nicht implementiert)
- **Daten:** Beispiele und Referenzmaterialien (noch nicht implementiert)

Zukünftige Erweiterungen werden in `resources/` abgelegt.

## Next Steps

Nach Erstellung des Materials:
- Der Nutzer kann das Ergebnis überprüfen und anpassen
- Das Material kann exportiert werden (export-md, export-pdf, export-docx)
- Weitere Materialien können erstellt werden
