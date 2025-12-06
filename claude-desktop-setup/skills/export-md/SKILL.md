---
name: export-md
description: Dieser Skill sollte verwendet werden, wenn fertiggestellte Unterrichtsplanungen, Arbeitsblätter und andere Unterrichtsmaterialien als Markdown-Datei (.md) exportiert werden sollen. Trigger-Keywords - 'als Markdown speichern', 'MD-Export', 'als MD speichern', 'Markdown-Datei erstellen', 'als .md speichern'. Er exportiert Materialien in professionell formatiertes Markdown.
---

# Markdown Export Skill

## WICHTIG: Stil-Check vor Export (PFLICHT)

**Bevor du ein Material exportierst, MUSS der `export-stile` Skill konsultiert werden!**

1. Prüfe `5_Export_Stile/` auf vorhandene `.ki.md` Dateien
2. Falls Original-Vorlage neuer als `.ki.md` → Neu analysieren lassen
3. Wende die Vorgaben aus `.ki.md` auf das Material an (Kopfzeilen-Format, Schulname)
4. Erst dann: Export durchführen

**Relevante Dateien:** `schulfarben.ki.md` (für Kopfzeilen und Schulname)

---

## Zweck

Dieser Skill standardisiert den Export von fertiggestellten Unterrichtsmaterialien (Unterrichtsplanungen, Arbeitsblätter, Präsentationen, Lernzielkontrollen) in professionell formatierte Markdown-Dateien. Er gewährleistet:

- Konsistente, professionelle Formatierung über alle exportierten Dokumente hinweg
- Klare Metadaten-Header (Titel, Fach, Klassenstufe, Datum, Autor)
- Organisierte hierarchische Struktur mit Markdown-Überschriften
- Integration mit MCP-Dateisystem zur automatischen Speicherung in `1_Exportierte_Ergebnisse/`
- Standardisierte Dateibenennungskonventionen für einfache Organisation und Abrufbarkeit
- Volle Markdown-Syntax für optimale Lesbarkeit und Weiterverarbeitung

## Wann dieser Skill verwendet werden soll

Aktiviere diesen Skill wenn:

- Ein Benutzer "als Markdown exportieren" oder "als MD speichern" anfordert
- Die Phrase "Markdown-Export" oder "MD-Datei erstellen" verwendet wird
- Irgendwelche Unterrichtsmaterial-Ausgaben bereit für die finale Auslieferung/Speicherung sind
- Eine Unterrichtsplanung, ein Arbeitsblatt, eine Präsentationsgliederung oder eine Lernzielkontrolle fertiggestellt ist und gesichert werden muss
- Materialien in einem gut strukturierten, weiterverarbeitbaren Format gespeichert werden sollen

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

### Markdown-Formatierungsstandards

#### Volle Markdown-Syntax erlaubt!

Im exportierten Markdown-Dokument verwende die Standard-Markdown-Syntax:
- `#`, `##`, `###` für Überschriften
- `**fett**` und `*kursiv*` für Hervorhebungen
- `-` oder `*` für ungeordnete Listen
- `1.`, `2.`, `3.` für geordnete Listen
- ``` für Code-Blöcke
- `|` für Tabellen

#### Metadaten-Header (YAML Frontmatter)

Füge am Anfang jeder Markdown-Datei YAML Frontmatter hinzu:

```markdown
---
title: "Unterrichtsreihe: Photosynthese"
subject: Biologie
grade: 7
duration: 8 Stunden
author: LehrClaude System
date: 2025-01-08
curriculum: Lehrplan NRW
---
```

### Dokumenttyp-spezifische Vorlagen

#### Unterrichtsreihe

```markdown
---
title: "Unterrichtsreihe: Photosynthese"
subject: Biologie
grade: 7
duration: 8 Stunden
author: Max Mustermann
date: 2025-01-08
curriculum: Lehrplan NRW
---

# Unterrichtsreihe: Photosynthese

## 1. Sachanalyse

[Inhalt aus Schritt 02]

## 2. Didaktische Analyse

[Inhalt aus Schritt 03]

## 3. Lernziele

| Ziel | Bloom-Stufe | Operator |
|------|-------------|----------|
| Die SuS können... | Wissen | Nennen |
| Die SuS können... | Verstehen | Erklären |
| Die SuS können... | Anwenden | Durchführen |

## 4. Stundenübersicht

| Stunde | Thema | Dauer | Methoden |
|--------|-------|-------|----------|
| 1 | Einstieg Photosynthese | 45 Min | Experiment, Gespräch |
| 2 | Lichtreaktion | 45 Min | Arbeitsblatt, Video |
| 3 | Dunkelreaktion | 45 Min | Gruppenarbeit |

## 5. Detaillierter Stundenablauf

### Stunde 1: Einstieg in die Photosynthese

#### Einstieg (5 Min)
[Inhalt]

#### Erarbeitungsphase (20 Min)
[Inhalt]

#### Sicherungsphase (10 Min)
[Inhalt]

#### Ausblick (10 Min)
[Inhalt]

## 6. Materialien und Ressourcen

- Arbeitsblatt 1: Photosynthese-Grundlagen
- Video: "Wie funktioniert Photosynthese?"
- Experimentierkasten Biologie

## 7. Lernkontrollen

[Lernzielkontrolle-Inhalt]

## 8. Differenzierung und Inklusion

[Differenzierungsstrategien]
```

#### Arbeitsblatt

```markdown
---
title: "Arbeitsblatt: Photosynthese"
subject: Biologie
grade: 7
duration: 30 Minuten
author: Max Mustermann
date: 2025-01-08
---

# Arbeitsblatt: Photosynthese

## Aufgabe 1: Grundlagen der Photosynthese

[Aufgabenbeschreibung]

**Teilaufgaben:**
1. Nenne die beiden Phasen der Photosynthese.
2. Erkläre den Unterschied zwischen Licht- und Dunkelreaktion.
3. Zeichne ein einfaches Schema der Photosynthese.

---

### Lösung zu Aufgabe 1

1. Die beiden Phasen sind:
   - Lichtreaktion (Photoreaktion)
   - Dunkelreaktion (Calvin-Zyklus)

2. Unterschied:
   [Detaillierte Lösung]

3. Schema:
   [Beschreibung des Schemas]

---

## Aufgabe 2: Experimente zur Photosynthese

[Aufgabeninhalt]

### Lösung zu Aufgabe 2

[Lösung zur Überprüfung]
```

#### Präsentation

```markdown
---
title: "Präsentation: Photosynthese"
subject: Biologie
grade: 7
slides: 12
author: Max Mustermann
date: 2025-01-08
---

# Präsentation: Photosynthese

## Folie 1: Titelfolie

# PHOTOSYNTHESE
### Energiegewinnung in Pflanzen

*Klasse 7 - Biologie*
*Max Mustermann*

---

## Folie 2: Inhaltsübersicht

### Themen der Präsentation:

1. Was ist Photosynthese?
2. Die Lichtreaktion
3. Die Dunkelreaktion
4. Bedeutung für das Leben

---

## Folie 3: Was ist Photosynthese?

**Definition:**
Photosynthese ist der Prozess, bei dem Pflanzen aus Lichtenergie chemische Energie (Glucose) herstellen.

**Wichtige Faktoren:**
- Licht
- Wasser
- Kohlendioxid
- Chlorophyll

> **Sprechernotizen:** Beginnen Sie mit der Frage: "Was benötigen Pflanzen zum Leben?" Führen Sie zur Definition über.

---

## Folie 4: Die Lichtreaktion

[Strukturierter Inhalt]

> **Sprechernotizen:** [Hinweise für Präsentator]
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
5. **Verwende vollständige Markdown-Syntax** für optimale Formatierung
6. **Bestätige erfolgreiche Speicherung** und gib dem Benutzer den Dateipfad

### Beispiel MCP-Schreibbefehl

```
@mcp_filesystem write to path: 1_Exportierte_Ergebnisse/Unterrichtsreihe_Photosynthese_2025-01-08/Unterrichtsreihe_Photosynthese_2025-01-08.md
```

## Kompletter Workflow

1. **Identifiziere Auslöser**: Benutzer fordert Markdown-Export an
2. **Sammle Inhalte**: Sammle alle Informationen aus vorherigen Schritten/Skills
3. **Bestimme Typ**: Unterrichtsreihe, Arbeitsblatt, Präsentation oder andere
4. **Extrahiere Metadaten**: Titel, Fach, Klasse, Datum, Autor, etc.
5. **Formatiere entsprechend Dokumenttyp**: Verwende die spezifische Markdown-Vorlage oben
6. **Wende Markdown-Formatierungsstandards an**: Überschriften, Tabellen, Listen
7. **Füge YAML Frontmatter hinzu**: Metadaten am Dokumentanfang
8. **Generiere Dateinamen**: Verwende Benennungskonvention mit aktuellem Datum und .md Endung
9. **Schreibe via MCP**: Speichere nach `1_Exportierte_Ergebnisse/[Unterverzeichnis]/`
10. **Bestätige Erfolg**: Zeige Benutzer den Dateipfad und gib Fertigstellungsmeldung
11. **Optional**: Biete nächste Schritte an (PDF-Export, DOCX-Export, Anpassungen)

## Qualitätscheckliste

Vor Fertigstellung des Markdown-Exports überprüfe:

- [ ] YAML Frontmatter ist vollständig und korrekt (title, subject, grade, date, author)
- [ ] Dokumenttyp-spezifische Vorlage wird befolgt
- [ ] Hierarchische Überschriftsstruktur mit `#`, `##`, `###`
- [ ] Tabellen sind korrekt formatiert mit `|` und Ausrichtung
- [ ] Listen verwenden konsistente Syntax (`-` oder `1.`)
- [ ] Hervorhebungen nutzen `**fett**` und `*kursiv*`
- [ ] Abschnittstrenner `---` werden sinnvoll eingesetzt
- [ ] Dateibennenung folgt Konvention: [Typ]_[Thema]_[Datum].md
- [ ] MCP-Schreibpfad ist korrekt: 1_Exportierte_Ergebnisse/[Unterverzeichnis]/
- [ ] Kein Informationsverlust aus dem Originalinhalt
- [ ] Markdown ist valide und rendert korrekt
- [ ] UTF-8 Encoding für deutsche Umlaute

## Integration mit anderen Skills

Dieser Skill arbeitet zusammen mit:

- **Planungs-Skills** (in Projekt-Anweisungen): Sammelt fertiggestellte Ausgabe zur Formatierung
- **Material-Skills** (mat-02, mat-03): Exportiert generierte Arbeitsblätter, Präsentationen
- **Export-Skills** (export-pdf, export-docx, export-pptx): Markdown kann als Basis für andere Formate dienen

## Vorteile des Markdown-Formats

- **Universelle Kompatibilität**: Lesbar auf allen Betriebssystemen und Geräten
- **Strukturierte Formatierung**: Überschriften, Listen, Tabellen werden korrekt dargestellt
- **Einfache Konvertierung**: Kann leicht in PDF, DOCX, HTML umgewandelt werden
- **Versionskontrolle**: Ideal für Git-basierte Workflows
- **Kleine Dateigröße**: Sehr kompakt und schnell zu übertragen
- **Barrierefreiheit**: Screen-Reader können Markdown-Dateien gut verarbeiten
- **Langzeitarchivierung**: Markdown ist ein stabiles, zukunftssicheres Format
- **Mac-Vorschau**: Wird direkt als formatierter Text angezeigt

## Fehlerbehebung

**Problem**: Tabellen werden nicht korrekt gerendert
- **Lösung**: Stelle sicher, dass Kopfzeile und Trennzeile (`|---|---|`) vorhanden sind

**Problem**: MCP-Schreibvorgang schlägt mit Berechtigungsfehler fehl
- **Lösung**: Überprüfe, dass das Verzeichnis `1_Exportierte_Ergebnisse/` existiert und Schreibrechte hat (755)

**Problem**: Umlaute werden falsch dargestellt
- **Lösung**: Stelle sicher, dass UTF-8 Encoding verwendet wird (Standard für moderne Systeme)

**Problem**: Inhalt ist abgeschnitten oder unvollständig
- **Lösung**: Überprüfe, dass alle Eingabedaten aus vorherigen Schritten gesammelt wurden

## Resources

Dieser Skill nutzt folgende Ressourcen:

- **Templates:** Export-Vorlagen und Formatierungsrichtlinien (noch nicht implementiert)
- **Scripts:** Hilfsskripte für Konvertierung und Formatierung (noch nicht implementiert)

Zukünftige Erweiterungen:
- Export-Templates in `resources/templates/`
- Konvertierungs-Skripte in `scripts/`

## Next Steps

Nach dem Export:
- Die Markdown-Datei wurde gespeichert in `1_Exportierte_Ergebnisse/`
- Der Nutzer kann die Datei in jedem Markdown-Editor öffnen und bearbeiten
- Mac Vorschau zeigt die Datei formatiert an
- Weitere Exporte in anderen Formaten sind möglich (PDF, DOCX, PPTX)
- Markdown-Dateien können als Basis für weitere Formatierungen dienen
