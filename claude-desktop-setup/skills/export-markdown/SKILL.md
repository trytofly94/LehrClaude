---
name: markdown-export
description: Dieser Skill sollte verwendet werden, wenn fertiggestellte Unterrichtsplanungen, Arbeitsblätter und andere Unterrichtsmaterialien in saubere, gut formatierte Markdown-Dateien exportiert werden sollen. Er stellt saubere Metadaten-Header, konsistente Formatierung und organisierte Struktur für alle Arten von Unterrichtsmaterialien sicher (Unterrichtsreihen, Arbeitsblätter, Präsentationen). Der Skill integriert sich mit MCP, um exportierte Dateien in das Verzeichnis 1_Exportierte_Ergebnisse/ mit standardisierten Benennungskonventionen zu schreiben.
---

# Markdown Export Skill

## Zweck

Dieser Skill standardisiert den Export von fertiggestellten Unterrichtsmaterialien (Unterrichtsplanungen, Arbeitsblätter, Präsentationen, Lernzielkontrollen) in ein sauberes, strukturiertes Markdown-Format. Er gewährleistet:

- Konsistente, professionelle Formatierung über alle exportierten Dokumente hinweg
- Korrekte Metadaten-Header (Titel, Fach, Klassenstufe, Datum, Autor)
- Organisierte hierarchische Struktur mit klaren Abschnittsmarkierungen
- Integration mit MCP-Dateisystem zur automatischen Speicherung in `1_Exportierte_Ergebnisse/`
- Standardisierte Dateibenennungskonventionen für einfache Organisation und Abrufbarkeit

## Wann dieser Skill verwendet werden soll

Aktiviere diesen Skill wenn:

- Ein Benutzer "als Markdown exportieren" oder "als Markdown speichern" oder "als MD exportieren" anfordert
- Die Phrase "als Markdown exportieren" oder "als MD speichern" verwendet wird
- Irgendwelche Unterrichtsmaterial-Ausgaben bereit für die finale Auslieferung/Speicherung sind
- Eine Unterrichtsplanung, ein Arbeitsblatt, eine Präsentationsgliederung oder eine Lernzielkontrolle fertiggestellt ist und gesichert werden muss
- Materialien in einem textfreundlichen, versionskontroll-kompatiblen Format geteilt werden müssen

## Wie dieser Skill verwendet wird

### Eingabeverarbeitung

1. **Sammle alle Inhalte** aus vorherigen Skill-Ausgaben und Planungsschritten
2. **Identifiziere den Dokumenttyp**: Unterrichtsreihe, Arbeitsblatt, Präsentation, Lernzielkontrolle oder Materialbündel
3. **Extrahiere wichtige Metadaten** vor der Formatierung:
   - Titel/Thema
   - Fach
   - Klassenstufe
   - Dauer/Zeitaufteilung
   - Autor/Ersteller
   - Erstellungsdatum
   - Relevante Standards oder Lehrpläne

### Formatierungsstandards

#### Dokumentstruktur

Organisiere alle exportierten Dokumente mit dieser Hierarchie:

```
# Haupttitel (H1)
Überschrift der obersten Ebene

## Abschnitt (H2)
Hauptinhaltliche Abschnitte

### Unterabschnitt (H3)
Detaillierte Unterabschnitte

#### Details (H4)
Spezifische Punkte, Schritte oder Lernpunkte
```

#### Metadaten-Header

Füge am Anfang jeder Markdown-Datei hinzu:

```markdown
---
title: Unterrichtsreihe: Photosynthese
subject: Biologie
grade_level: 7
duration_hours: 8
author: [Lehrkraft Name oder "LehrClaude System"]
created_date: 2025-01-08
curriculum: Lehrplan NRW (oder relevant)
---

# Unterrichtsreihe: Photosynthese
```

#### Inhaltsformatierungsregeln

1. **Verwende klare hierarchische Überschriften** für alle Hauptabschnitte:
   - Planungsphase: 01-Sachanalyse, 02-Didaktische Analyse, etc.
   - Stunden: Stunde 1, Stunde 2, etc.
   - Arbeitsblätter: Aufgabe 1, Aufgabe 2, etc.

2. **Formatiere Listen korrekt**:
   - Verwende `- ` für unsortierte Listen (Stichpunkte)
   - Verwende `1. ` für sortierte Listen (Schritte, Reihenfolge)
   - Untergeordnete Listen mit konsistenter Einrückung verschachteln

3. **Erstelle Tabellen für strukturierte Daten**:
   - Verwende Markdown-Tabellensyntax für Vergleiche, Zeitpläne, Lernziele
   - Beispiel: Lernzieltabelle mit Bloom-Taxonomiestufen

4. **Formatiere Code und spezielle Inhalte**:
   - Umschließe Code-Blöcke mit dreifachen Backticks: ` ``` `
   - Gib Sprache für Syntaxhervorhebung an: ` ```python ` oder ` ```markdown `
   - Verwende Inline-`Code` für Fachbegriffe oder Dateinamen

5. **Füge Abschnittstrennzeichen hinzu**:
   - Verwende `---` (drei Bindestriche) zwischen Hauptabschnitten
   - Verwende `---` um Einleitung, Hauptinhalt und Anhang zu trennen

6. **Verwende korrekte Hervorhebung**:
   - Verwende `**fett**` für wichtige Konzepte oder Schlüsselwörter
   - Verwende `*kursiv*` für Definitionen oder Fremdwörter
   - Verwende `> ` für Zitate oder hervorgehobene Tipps

#### Dokumenttyp-spezifische Formatierung

##### Unterrichtsreihe

```markdown
---
title: [Thema]
subject: [Fach]
grade_level: [Klasse]
duration_hours: [X Stunden]
author: [Name]
created_date: [Datum]
curriculum: [Lehrplan]
---

# [Titel]

## 1. Sachanalyse

[Inhalt aus Schritt 02]

## 2. Didaktische Analyse

[Inhalt aus Schritt 03]

## 3. Lernziele

| Ziel | Bloom-Stufe | Operator |
|------|---|---|
| ... | ... | ... |

## 4. Stundenübersicht

| Stunde | Thema | Dauer | Methoden |
|--------|-------|-------|----------|
| 1 | ... | 45 min | ... |

## 5. Detaillierter Stundenablauf

### Stunde 1: [Thema]

#### Einstieg (5 Min)
[Inhalt]

#### Erarbeitungsphase (20 Min)
[Inhalt]

#### Sicherungsphase (10 Min)
[Inhalt]

#### Ausblick (10 Min)
[Inhalt]

## 6. Materialien und Ressourcen

- [Material 1]
- [Material 2]

## 7. Lernkontrollen

[Lernzielkontrolle-Inhalt]

## 8. Differenzierung und Inklusion

[Differenzierungsstrategien]
```

##### Arbeitsblatt

```markdown
---
title: Arbeitsblatt: [Thema]
subject: [Fach]
grade_level: [Klasse]
author: [Name]
created_date: [Datum]
duration_minutes: [X Min]
---

# Arbeitsblatt: [Thema]

**Klasse:** [Klasse]
**Zeit:** [Dauer]
**Thema:** [Thema]

---

## Aufgabe 1: [Klare Beschreibung]

[Aufgabeninhalt, Bilder bei Bedarf referenziert]

### Lösung

[Lösung zur Überprüfung]

---

## Aufgabe 2: [Klare Beschreibung]

[Aufgabeninhalt]

### Lösung

[Lösung zur Überprüfung]
```

##### Präsentation

```markdown
---
title: Präsentation: [Thema]
subject: [Fach]
grade_level: [Klasse]
author: [Name]
created_date: [Datum]
slides: [X Folien]
---

# Präsentation: [Thema]

## Folie 1: Titel

**[Haupttitel]**
Untertitel oder Einleitung

## Folie 2: [Abschnittstitel]

- Punkt 1
- Punkt 2
- Punkt 3

**Sprechernotizen:** [Sprechernotizen falls verfügbar]

## Folie 3: [Inhaltsfolie]

[Strukturierter Inhalt]
```

### Dateibenennungskonvention

Generiere Dateinamen automatisch nach diesem Muster:

```
[Dokumenttyp]_[Thema/Titel]_[Datum].md
```

Beispiele:
- `Unterrichtsreihe_Photosynthese_2025-01-08.md`
- `Arbeitsblatt_Photosynthese_Einstiegsphase_2025-01-08.md`
- `Praesentation_Energiequellen_2025-01-08.md`
- `Lernzielkontrolle_Biologie_Klasse7_2025-01-08.md`

### MCP-Integration & Dateispeicherung

Beim Export als Markdown:

1. **Verwende die MCP-Dateisystemintegration** um Dateien in `1_Exportierte_Ergebnisse/` zu schreiben
2. **Erstelle ein datiertes Unterverzeichnis** zur Organisation der Exporte: `1_Exportierte_Ergebnisse/Unterrichtsreihe_[Thema]_[Datum]/`
3. **Speichere die Markdown-Datei** mit der obigen Benennungskonvention
4. **Bewahre alle Inhalte** aus Planungsphasen ohne Informationsverlust auf
5. **Bestätige erfolgreiche Speicherung** und gib dem Benutzer den Dateipfad

### Beispiel MCP-Schreibbefehl

```
@mcp_filesystem write to path: 1_Exportierte_Ergebnisse/Unterrichtsreihe_Photosynthese_2025-01-08/Unterrichtsreihe_Photosynthese_2025-01-08.md
```

## Kompletter Workflow

1. **Identifiziere Auslöser**: Benutzer fordert Markdown-Export an
2. **Sammle Inhalte**: Sammle alle Informationen aus vorherigen Schritten/Skills
3. **Bestimme Typ**: Unterrichtsreihe, Arbeitsblatt, Präsentation oder andere
4. **Extrahiere Metadaten**: Titel, Fach, Klasse, Datum, Autor, etc.
5. **Formatiere entsprechend Dokumenttyp**: Verwende die spezifische Vorlage oben
6. **Wende Formatierungsstandards an**: Überschriften, Listen, Tabellen, Hervorhebung
7. **Generiere Dateinamen**: Verwende Benennungskonvention mit aktuellem Datum
8. **Schreibe via MCP**: Speichere nach `1_Exportierte_Ergebnisse/[Unterverzeichnis]/`
9. **Bestätige Erfolg**: Zeige Benutzer den Dateipfad und gib Fertigstellungsmeldung
10. **Optional**: Biete nächste Schritte an (PDF-Export, Teilen, Anpassungen)

## Qualitätscheckliste

Vor Fertigstellung des Markdown-Exports überprüfe:

- [ ] Metadaten-Header ist vollständig und korrekt (Titel, Fach, Klasse, Datum, Autor)
- [ ] Dokumenttyp-spezifische Vorlage wird befolgt
- [ ] Hierarchische Überschriftsstruktur ist logisch und konsistent (H1 → H2 → H3 → H4)
- [ ] Alle Listen sind korrekt formatiert (sortiert oder unsortiert je nach Bedarf)
- [ ] Tabellen werden für strukturierte Daten verwendet (Ziele, Zeitpläne, Vergleiche)
- [ ] Fett/Kursiv-Hervorhebung hebt Schlüsselkonzepte hervor
- [ ] Code-Blöcke sind korrekt mit dreifachen Backticks markiert
- [ ] Abschnittstrennzeichen (---) trennen Hauptabschnitte
- [ ] Dateibennenung folgt Konvention: [Typ]_[Thema]_[Datum].md
- [ ] MCP-Schreibpfad ist korrekt: 1_Exportierte_Ergebnisse/[Unterverzeichnis]/
- [ ] Kein Informationsverlust aus dem Originalinhalt
- [ ] Markdown rendert sauber ohne Syntaxfehler
- [ ] Alle Bildreferenzen sind relativ und korrekt formatiert

## Integration mit anderen Skills

Dieser Skill arbeitet zusammen mit:

- **Planungs-Skills** (01-11): Sammelt fertiggestellte Ausgabe zur Formatierung
- **Material-Skills** (mat-01 bis mat-08): Exportiert generierte Arbeitsblätter, Lernzielkontrollen, Materialien
- **Export-Skills** (export-pdf, export-docx, export-pptx): Markdown kann in andere Formate konvertiert werden

## Fehlerbehebung

**Problem**: Tabellen rendern fehlerhaft
- **Lösung**: Stelle sicher, dass jede Zeile die gleiche Anzahl von Spalten hat; verwende Pipes `|` korrekt

**Problem**: Überschriften erstellen kein Inhaltsverzeichnis
- **Lösung**: Überprüfe, dass Überschriftssyntax `#` mit Leerzeichen verwendet und der H1 → H2 → H3 Hierarchie folgt

**Problem**: MCP-Schreibvorgang schlägt mit Berechtigungsfehler fehl
- **Lösung**: Überprüfe, dass das Verzeichnis `1_Exportierte_Ergebnisse/` existiert und Schreibrechte hat (755)

**Problem**: Sonderzeichen verursachen Markdown-Syntaxfehler
- **Lösung**: Maskiere Sonderzeichen (`#`, `*`, `_`, etc.) mit Backslash oder verwende Code-Formatierung

**Problem**: Inhalt ist abgeschnitten oder unvollständig
- **Lösung**: Überprüfe, dass alle Eingabedaten aus vorherigen Schritten gesammelt wurden, bevor die Formatierung beginnt

## Hinweise für zukünftige Verbesserungen

- Erwäge automatische Inhaltsverzeichnis-Generierung für lange Dokumente
- Erkunde Syntaxhervorhebungs-Präferenzen für Code-Blöcke
- Füge Unterstützung für eingebettete Diagramme hinzu (mermaid, ASCII-Art)
- Implementiere optionale Zitat-/Referenzformatierung (APA, MLA)
- Füge Vorlage für Differenzierungsmaterial hinzu

## Resources

Dieser Skill nutzt folgende Ressourcen:

- **Templates:** Export-Vorlagen und Formatierungsrichtlinien (noch nicht implementiert)
- **Scripts:** Hilfsskripte für Konvertierung und Formatierung (noch nicht implementiert)

Zukünftige Erweiterungen:
- Export-Templates in `resources/templates/`
- Konvertierungs-Skripte in `scripts/`

## Next Steps

Nach dem Export:
- Die Datei wurde gespeichert in `1_Exportierte_Ergebnisse/`
- Der Nutzer kann die Datei öffnen und bearbeiten
- Weitere Exporte in anderen Formaten sind möglich
