---
name: export-txt
description: Dieser Skill sollte verwendet werden, wenn fertiggestellte Unterrichtsplanungen, Arbeitsblätter und andere Unterrichtsmaterialien als strukturierte TXT-Datei exportiert werden sollen. Trigger-Keywords - 'als TXT speichern', 'TXT-Export', 'in Textdatei exportieren', 'als Text speichern', 'Text-Datei erstellen', 'als TXT-Datei'. Er exportiert Materialien in ein klares, strukturiertes Textformat ohne Markdown-Syntax.
---

# TXT Export Skill

## WICHTIG: Stil-Check vor Export (PFLICHT)

**Bevor du ein Material exportierst, MUSS der `export-stile` Skill konsultiert werden!**

1. Prüfe `5_Export_Stile/` auf vorhandene `.ki.txt` Dateien
2. Falls Original-Vorlage neuer als `.ki.txt` → Neu analysieren lassen
3. Wende die Vorgaben aus `.ki.txt` auf das Material an (Kopfzeilen-Format, Schulname)
4. Erst dann: Export durchführen

**Relevante Dateien:** `schulfarben.ki.txt` (für Kopfzeilen und Schulname)

---

## Zweck

Dieser Skill standardisiert den Export von fertiggestellten Unterrichtsmaterialien (Unterrichtsplanungen, Arbeitsblätter, Präsentationen, Lernzielkontrollen) in ein sauberes, strukturiertes TXT-Format. Er gewährleistet:

- Konsistente, professionelle Formatierung über alle exportierten Dokumente hinweg
- Klare Metadaten-Header (Titel, Fach, Klassenstufe, Datum, Autor)
- Organisierte hierarchische Struktur mit deutlichen Abschnittsmarkierungen
- Integration mit MCP-Dateisystem zur automatischen Speicherung in `1_Exportierte_Ergebnisse/`
- Standardisierte Dateibenennungskonventionen für einfache Organisation und Abrufbarkeit
- Rein textbasiertes Format ohne spezielle Formatierungs-Syntax

## Wann dieser Skill verwendet werden soll

Aktiviere diesen Skill wenn:

- Ein Benutzer "als TXT exportieren" oder "als Text speichern" oder "Textdatei erstellen" anfordert
- Die Phrase "als TXT speichern" oder "TXT-Export" verwendet wird
- Irgendwelche Unterrichtsmaterial-Ausgaben bereit für die finale Auslieferung/Speicherung sind
- Eine Unterrichtsplanung, ein Arbeitsblatt, eine Präsentationsgliederung oder eine Lernzielkontrolle fertiggestellt ist und gesichert werden muss
- Materialien in einem universell lesbaren, plattformunabhängigen Format geteilt werden müssen
- Maximale Kompatibilität mit allen Textverarbeitungsprogrammen erforderlich ist

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

### TXT-Formatierungsstandards

#### WICHTIG: Keine Markdown-Syntax im Output!

Im exportierten TXT-Dokument verwende NIEMALS Markdown-Syntax wie:
- KEINE `#` für Überschriften
- KEINE `**fett**` oder `*kursiv*` Markierungen
- KEINE `- ` für Listen (verwende einfache Bindestriche oder Zahlen)
- KEINE ``` Code-Blöcke
- KEINE `|` Tabellen-Syntax

#### Strukturierungs-Regeln für TXT-Format

**1. Überschriften:**
```
HAUPTÜBERSCHRIFT (GROSSBUCHSTABEN)
=====================================

Unterüberschrift (Normal)
-------------------------

Detailüberschrift
~~~~~~~~~~~~~~~~~
```

**2. Listen:**
```
Unsortierte Listen:
- Punkt 1
- Punkt 2
  - Unterpunkt 2.1
  - Unterpunkt 2.2

Sortierte Listen:
1. Erster Schritt
2. Zweiter Schritt
3. Dritter Schritt
```

**3. Hervorhebungen:**
```
WICHTIG: Verwende GROSSBUCHSTABEN für Betonung
ACHTUNG: Schlüsselkonzepte in GROSSBUCHSTABEN
HINWEIS: Wichtige Informationen
```

**4. Abschnittstrenner:**
```
=====================================
(für Hauptabschnitte)

-------------------------------------
(für Unterabschnitte)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
(für Details)
```

**5. Tabellen (Textbasiert):**
```
+------------------+------------+----------+
| Spalte 1         | Spalte 2   | Spalte 3 |
+------------------+------------+----------+
| Wert 1           | Wert 2     | Wert 3   |
| Wert 4           | Wert 5     | Wert 6   |
+------------------+------------+----------+
```

Oder einfacher:

```
Spalte 1              Spalte 2         Spalte 3
----------------------------------------------------------------
Wert 1                Wert 2           Wert 3
Wert 4                Wert 5           Wert 6
```

#### Metadaten-Header

Füge am Anfang jeder TXT-Datei hinzu:

```
=====================================
UNTERRICHTSMATERIAL - METADATEN
=====================================

Titel:         Unterrichtsreihe: Photosynthese
Fach:          Biologie
Klassenstufe:  7
Dauer:         8 Stunden
Autor:         LehrClaude System
Erstellt am:   08.01.2025
Lehrplan:      Lehrplan NRW

=====================================
```

#### Dokumenttyp-spezifische Formatierung

##### Unterrichtsreihe

```
=====================================
UNTERRICHTSREIHE: PHOTOSYNTHESE
=====================================

Titel:         Photosynthese - Energiegewinnung in Pflanzen
Fach:          Biologie
Klassenstufe:  7
Dauer:         8 Stunden
Autor:         Max Mustermann
Erstellt am:   08.01.2025
Lehrplan:      Lehrplan NRW

=====================================


1. SACHANALYSE
=====================================

[Inhalt aus Schritt 02]


2. DIDAKTISCHE ANALYSE
-------------------------------------

[Inhalt aus Schritt 03]


3. LERNZIELE
-------------------------------------

Ziel                                    Bloom-Stufe    Operator
----------------------------------------------------------------
Die SuS können...                       Wissen         Nennen
Die SuS können...                       Verstehen      Erklären
Die SuS können...                       Anwenden       Durchführen


4. STUNDENÜBERSICHT
-------------------------------------

Stunde   Thema                    Dauer      Methoden
----------------------------------------------------------------
1        Einstieg Photosynthese   45 Min     Experiment, Gespräch
2        Lichtreaktion            45 Min     Arbeitsblatt, Video
3        Dunkelreaktion           45 Min     Gruppenarbeit


5. DETAILLIERTER STUNDENABLAUF
=====================================

Stunde 1: Einstieg in die Photosynthese
---------------------------------------

EINSTIEG (5 Min)
~~~~~~~~~~~~~~~~~
[Inhalt]

ERARBEITUNGSPHASE (20 Min)
~~~~~~~~~~~~~~~~~
[Inhalt]

SICHERUNGSPHASE (10 Min)
~~~~~~~~~~~~~~~~~
[Inhalt]

AUSBLICK (10 Min)
~~~~~~~~~~~~~~~~~
[Inhalt]


6. MATERIALIEN UND RESSOURCEN
-------------------------------------

- Arbeitsblatt 1: Photosynthese-Grundlagen
- Video: "Wie funktioniert Photosynthese?"
- Experimentierkasten Biologie


7. LERNKONTROLLEN
-------------------------------------

[Lernzielkontrolle-Inhalt]


8. DIFFERENZIERUNG UND INKLUSION
-------------------------------------

[Differenzierungsstrategien]

=====================================
ENDE DER UNTERRICHTSREIHE
=====================================
```

##### Arbeitsblatt

```
=====================================
ARBEITSBLATT: PHOTOSYNTHESE
=====================================

Klasse:        7
Zeit:          30 Minuten
Thema:         Photosynthese - Energiegewinnung in Pflanzen
Autor:         Max Mustermann
Erstellt am:   08.01.2025

=====================================


AUFGABE 1: GRUNDLAGEN DER PHOTOSYNTHESE
---------------------------------------

[Aufgabenbeschreibung]

Teilaufgaben:
1. Nenne die beiden Phasen der Photosynthese.
2. Erkläre den Unterschied zwischen Licht- und Dunkelreaktion.
3. Zeichne ein einfaches Schema der Photosynthese.


LÖSUNG ZU AUFGABE 1
~~~~~~~~~~~~~~~~~

1. Die beiden Phasen sind:
   - Lichtreaktion (Photoreaktion)
   - Dunkelreaktion (Calvin-Zyklus)

2. Unterschied:
   [Detaillierte Lösung]

3. Schema:
   [Beschreibung des Schemas]


-------------------------------------


AUFGABE 2: EXPERIMENTE ZUR PHOTOSYNTHESE
---------------------------------------

[Aufgabeninhalt]


LÖSUNG ZU AUFGABE 2
~~~~~~~~~~~~~~~~~

[Lösung zur Überprüfung]


=====================================
ENDE DES ARBEITSBLATTS
=====================================
```

##### Präsentation

```
=====================================
PRÄSENTATION: PHOTOSYNTHESE
=====================================

Titel:         Photosynthese - Energiegewinnung in Pflanzen
Fach:          Biologie
Klassenstufe:  7
Anzahl Folien: 12
Autor:         Max Mustermann
Erstellt am:   08.01.2025

=====================================


FOLIE 1: TITELFOLIE
-------------------------------------

PHOTOSYNTHESE
Energiegewinnung in Pflanzen

Klasse 7 - Biologie
Max Mustermann


FOLIE 2: INHALTSÜBERSICHT
-------------------------------------

THEMEN DER PRÄSENTATION:

1. Was ist Photosynthese?
2. Die Lichtreaktion
3. Die Dunkelreaktion
4. Bedeutung für das Leben


FOLIE 3: WAS IST PHOTOSYNTHESE?
-------------------------------------

DEFINITION:
Photosynthese ist der Prozess, bei dem Pflanzen aus Lichtenergie
chemische Energie (Glucose) herstellen.

WICHTIGE FAKTOREN:
- Licht
- Wasser
- Kohlendioxid
- Chlorophyll

SPRECHERNOTIZEN:
Beginnen Sie mit der Frage: "Was benötigen Pflanzen zum Leben?"
Führen Sie zur Definition über.


FOLIE 4: DIE LICHTREAKTION
-------------------------------------

[Strukturierter Inhalt]

SPRECHERNOTIZEN:
[Hinweise für Präsentator]


=====================================
ENDE DER PRÄSENTATION
=====================================
```

### Dateibenennungskonvention

Generiere Dateinamen automatisch nach diesem Muster:

```
[Dokumenttyp]_[Thema/Titel]_[Datum].txt
```

Beispiele:
- `Unterrichtsreihe_Photosynthese_2025-01-08.txt`
- `Arbeitsblatt_Photosynthese_Einstiegsphase_2025-01-08.txt`
- `Praesentation_Energiequellen_2025-01-08.txt`
- `Lernzielkontrolle_Biologie_Klasse7_2025-01-08.txt`

### MCP-Integration & Dateispeicherung

Beim Export als TXT:

1. **Verwende die MCP-Dateisystemintegration** um Dateien in `1_Exportierte_Ergebnisse/` zu schreiben
2. **Erstelle ein datiertes Unterverzeichnis** zur Organisation der Exporte: `1_Exportierte_Ergebnisse/Unterrichtsreihe_[Thema]_[Datum]/`
3. **Speichere die TXT-Datei** mit der obigen Benennungskonvention
4. **Bewahre alle Inhalte** aus Planungsphasen ohne Informationsverlust auf
5. **Verwende ausschließlich Textformatierung** (keine Markdown-Syntax)
6. **Bestätige erfolgreiche Speicherung** und gib dem Benutzer den Dateipfad

### Beispiel MCP-Schreibbefehl

```
@mcp_filesystem write to path: 1_Exportierte_Ergebnisse/Unterrichtsreihe_Photosynthese_2025-01-08/Unterrichtsreihe_Photosynthese_2025-01-08.txt
```

## Kompletter Workflow

1. **Identifiziere Auslöser**: Benutzer fordert TXT-Export an
2. **Sammle Inhalte**: Sammle alle Informationen aus vorherigen Schritten/Skills
3. **Bestimme Typ**: Unterrichtsreihe, Arbeitsblatt, Präsentation oder andere
4. **Extrahiere Metadaten**: Titel, Fach, Klasse, Datum, Autor, etc.
5. **Formatiere entsprechend Dokumenttyp**: Verwende die spezifische TXT-Vorlage oben
6. **Wende TXT-Formatierungsstandards an**: GROSSBUCHSTABEN für Überschriften, Trennlinien, textbasierte Listen
7. **Entferne Markdown-Syntax**: Stelle sicher, dass KEINE Markdown-Elemente im Output sind
8. **Generiere Dateinamen**: Verwende Benennungskonvention mit aktuellem Datum und .txt Endung
9. **Schreibe via MCP**: Speichere nach `1_Exportierte_Ergebnisse/[Unterverzeichnis]/`
10. **Bestätige Erfolg**: Zeige Benutzer den Dateipfad und gib Fertigstellungsmeldung
11. **Optional**: Biete nächste Schritte an (PDF-Export, DOCX-Export, Anpassungen)

## Qualitätscheckliste

Vor Fertigstellung des TXT-Exports überprüfe:

- [ ] Metadaten-Header ist vollständig und korrekt (Titel, Fach, Klasse, Datum, Autor)
- [ ] Dokumenttyp-spezifische Vorlage wird befolgt
- [ ] Hierarchische Überschriftsstruktur mit GROSSBUCHSTABEN und Trennlinien
- [ ] KEINE Markdown-Syntax im gesamten Dokument (#, **, *, `, |, etc.)
- [ ] Alle Listen verwenden einfache Bindestriche oder Zahlen
- [ ] Tabellen sind textbasiert mit Leerzeichen oder ASCII-Art erstellt
- [ ] Hervorhebungen verwenden GROSSBUCHSTABEN
- [ ] Abschnittstrennlinien (===, ---, ~~~) trennen Hauptabschnitte klar
- [ ] Dateibennenung folgt Konvention: [Typ]_[Thema]_[Datum].txt
- [ ] MCP-Schreibpfad ist korrekt: 1_Exportierte_Ergebnisse/[Unterverzeichnis]/
- [ ] Kein Informationsverlust aus dem Originalinhalt
- [ ] Text ist in jedem einfachen Texteditor lesbar
- [ ] Zeilenumbrüche sind an sinnvollen Stellen gesetzt (max. 80 Zeichen pro Zeile für Lesbarkeit)

## Integration mit anderen Skills

Dieser Skill arbeitet zusammen mit:

- **Planungs-Skills** (in Projekt-Anweisungen): Sammelt fertiggestellte Ausgabe zur Formatierung
- **Material-Skills** (mat-02, mat-03): Exportiert generierte Arbeitsblätter, Präsentationen
- **Export-Skills** (export-pdf, export-docx, export-pptx): TXT kann als Basis für andere Formate dienen

## Fehlerbehebung

**Problem**: Tabellen sind schwer lesbar
- **Lösung**: Verwende einheitliche Spaltenbreiten mit Leerzeichen oder ASCII-Box-Zeichen (+, |, -)

**Problem**: Überschriften sind nicht deutlich erkennbar
- **Lösung**: Nutze GROSSBUCHSTABEN und mindestens 30 Zeichen lange Trennlinien (=== oder ---)

**Problem**: MCP-Schreibvorgang schlägt mit Berechtigungsfehler fehl
- **Lösung**: Überprüfe, dass das Verzeichnis `1_Exportierte_Ergebnisse/` existiert und Schreibrechte hat (755)

**Problem**: Text enthält Markdown-Reste
- **Lösung**: Durchsuche das Dokument nach #, **, *, `, | und ersetze durch TXT-Äquivalente

**Problem**: Inhalt ist abgeschnitten oder unvollständig
- **Lösung**: Überprüfe, dass alle Eingabedaten aus vorherigen Schritten gesammelt wurden, bevor die Formatierung beginnt

**Problem**: Umlaute oder Sonderzeichen werden falsch dargestellt
- **Lösung**: Stelle sicher, dass UTF-8 Encoding verwendet wird (Standard für moderne Systeme)

## Vorteile des TXT-Formats

- **Universelle Kompatibilität**: Lesbar auf allen Betriebssystemen und Geräten
- **Keine spezielle Software nötig**: Jeder Texteditor kann TXT-Dateien öffnen
- **Kleine Dateigröße**: Sehr kompakt und schnell zu übertragen
- **Barrierefreiheit**: Screen-Reader können TXT-Dateien problemlos verarbeiten
- **Langzeitarchivierung**: TXT ist ein stabiles, zukunftssicheres Format
- **Einfache Bearbeitung**: Keine komplexen Formatierungsprobleme

## Hinweise für zukünftige Verbesserungen

- Erwäge automatische Inhaltsverzeichnis-Generierung mit Sprungmarken
- Optimiere Spaltenbreiten für verschiedene Terminal-Größen
- Füge optionale ASCII-Art-Diagramme hinzu
- Implementiere automatische Zeilenumbruch-Optimierung (80 Zeichen)
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
- Die TXT-Datei wurde gespeichert in `1_Exportierte_Ergebnisse/`
- Der Nutzer kann die Datei in jedem Texteditor öffnen und bearbeiten
- Weitere Exporte in anderen Formaten sind möglich (PDF, DOCX, PPTX)
- TXT-Dateien können als Basis für weitere Formatierungen dienen
