---
name: DOCX Export (Microsoft Word)
description: Dieser Skill konvertiert Bildungsinhalte (Unterrichtsreihen, Arbeitsblätter, Präsentationen) von Markdown in professionell formatierte Microsoft Word-Dokumente (.docx) mit angemessenem Styling, Seitenlayouts und lehrerfreundlichen Bearbeitungsfunktionen.
---

# DOCX Export Skill

## Zweck

Strukturierte Bildungsinhalte in bearbeitbare Microsoft Word-Dokumente mit professioneller Formatierung, Seitenlayouts und Anpassungsmöglichkeiten für Lehrkräfte zu transformieren. Dieser Skill ermöglicht es Lehrkräften, Unterrichtsmaterialien in vertrauten Office-kompatiblen Formaten zu erhalten, die Kommentare, Änderungsverfolgung und weitere Anpassungen unterstützen.

## Wann dieser Skill verwendet wird

Aktiviere diesen Skill, wenn:
- Benutzer "als Word-Dokument exportieren" anfragt
- Benutzer "als DOCX exportieren" anfragt
- Benutzer "für Word vorbereiten" anfragt
- Die finale Ausgabe von Unterrichtsplanung, Arbeitsblatterstel lung oder Präsentationsdesign im Word-Format geliefert werden muss
- Lehrkraft ein bearbeitbares, professionell formatiertes Dokument mit Unterstützung für Kommentare und Änderungsverfolgung benötigt

## Verwendung dieses Skills

### Eingabeverarbeitung

Akzeptiere Markdown-Inhalte (strukturierter Text aus vorherigen Skills), die Folgendes enthalten:
- Hierarchische Überschriften (H1-H3 für Dokumentstruktur)
- Absätze und Listen (als Markdown formatiert)
- Tabellen (Standard-Markdown-Pipe-Tabellen)
- Codeblöcke oder hervorgehobene Inhalte
- Metadaten (Titel, Autor, Datum, Fach)

### Verarbeitungsschritte

1. **Inhaltsstruktur analysieren**
   - Hauptabschnitte identifizieren (Überschriften)
   - Tabellen, Listen und spezielle Formatierungen lokalisieren
   - Metadaten für Dokumenteigenschaften bewahren

2. **Word-optimiertes Markdown vorbereiten**
   - Sicherstellen, dass eine korrekte Überschriftenhierarchie vorliegt (Überschrift 1 für Titel, Überschrift 2 für Hauptabschnitte, Überschrift 3 für Unterabschnitte)
   - Listen mit korrekter Einrückung und Nummerierung formatieren
   - Markdown-Tabellen mit richtiger Syntax erstellen
   - Seitenumbrüche zwischen Hauptabschnitten mit `---` (horizontale Linie) hinzufügen

3. **Professionelle Formatierungselemente hinzufügen**
   - Titelseite mit Dokumentmetadaten (Titel, Autor, Datum, Fach)
   - Inhaltsverzeichnis (gekennzeichnet mit speziellem Marker für pandoc: `[TOC]`)
   - Kopf- und Fußzeilenkonfiguration bereit für Word-Anpassung
   - Konsistente Schriftfamilie (Standard: Calibri 11pt für Text, Arial für Überschriften)
   - Angemessener Zeilenabstand (1,5-facher Zeilenabstand für Lesbarkeit)

4. **Für Pandoc-Konvertierung vorbereiten**
   - Inhalt für pandocs Markdown-zu-DOCX-Konvertierung strukturieren
   - YAML-Metadatenblock am Dokumentanfang für Word-Dokumenteigenschaften einfügen:
     ```yaml
     ---
     title: Dokumenttitel
     author: Lehrkraft Name
     date: YYYY-MM-DD
     subject: Unterrichtsfach
     ---
     ```

5. **Für Lehrkraft-Bearbeitung optimieren**
   - Ausreichend Leerraum für Anmerkungen lassen
   - Klare Tabellenformatierung für einfache Modifikation verwenden
   - Listen für schnelles Scannen strukturieren
   - Randnotizen oder Kommentar-Platzhalter hinzufügen (mit Word-kompatibler Syntax)

### Ausgabeformat

Generiere ein korrekt formatiertes Markdown-Dokument, das sauber via pandoc in DOCX konvertiert werden kann:

```markdown
---
title: Unterrichtsreihe - [Thema]
author: [Lehrkraft Name]
date: [Datum]
subject: [Fach und Klasse]
---

# Titelseite-Inhalt

---

# Hauptinhalt

## Abschnitt 1

Content here...

### Unterpunkt 1.1

Details...

---

## Abschnitt 2

More content...
```

### MCP-Dateioperationen

Verwende die MCP-Filesystem-Integration, um das vorbereitete Markdown-Dokument zu schreiben:

- **Zielverzeichnis:** `1_Exportierte_Ergebnisse/`
- **Dateinamenskonvention:** `[Thema]_Unterrichtsreihe_DOCX_[YYYY-MM-DD].md`
  - Beispiel: `Photosynthese_Unterrichtsreihe_DOCX_2025-01-08.md`
- **Dateipfad:** Vollständigen Verzeichnispfad via `@mcp_filesystem` Schreiboperation angeben

Nach dem Schreiben der Markdown-Datei klare Konvertierungsanweisungen für die Lehrkraft bereitstellen:

```
✅ Dokument vorbereitet: [filename].md

Die Datei ist optimiert für DOCX-Konvertierung. Nächste Schritte:

1. Pandoc installieren (falls nicht vorhanden):
   brew install pandoc

2. In DOCX konvertieren:
   pandoc [filename].md -o [filename].docx

3. In Microsoft Word öffnen und anpassen:
   - Schriftarten konfigurieren
   - Kopf- und Fußzeilen hinzufügen
   - Seitenränder einstellen
   - Kommentare und Änderungsverfolgung nutzen
```

## Dokument-Styling-Konventionen

### Überschriftenhierarchie
- **Überschrift 1:** Dokumenttitel (erscheint einmal oben)
- **Überschrift 2:** Hauptabschnitte (Kapitel, Unterrichtsphasen)
- **Überschrift 3:** Unterabschnitte (detaillierte Themen, Lernziele)
- **Überschrift 4+:** Vermeiden (bei Bedarf stattdessen Fettdruck verwenden)

### Listenformatierung
- **Ungeordnete Listen:** Verwende `- ` Präfix (wird zu Aufzählungszeichen)
- **Geordnete Listen:** Verwende `1. `, `2. `, etc. (automatisch nummeriert)
- **Verschachtelte Listen:** Verwende 4-Leerzeichen-Einrückung für korrekte Word-Verschachtelung

### Tabellenformatierung
```markdown
| Spalte 1 | Spalte 2 | Spalte 3 |
|----------|----------|----------|
| Zelle    | Zelle    | Zelle    |
```

### Spezielle Elemente
- **Fett:** `**text**` (wird zu `<b>` in Word konvertiert)
- **Kursiv:** `*text*` (wird zu `<i>` in Word konvertiert)
- **Code:** `` `inline code` `` oder `` ```code block``` ``
- **Blockzitate:** `> text` (eingerückter Zitatstil in Word)
- **Seitenumbrüche:** Verwende `---` in eigener Zeile (horizontale Linie = Seitenumbruch in pandoc→docx)

## Anpassung & Änderungsverfolgung

Das exportierte DOCX unterstützt alle Word-Funktionen:
- **Kommentare:** Lehrkräfte können Kommentare hinzufügen, ohne den Originaltext zu ändern
- **Änderungsverfolgung:** Alle Modifikationen werden mit Autor/Zeitstempel verfolgt
- **Formatvorlagen:** Lehrkräfte können Formatvorlagen global für konsistente Formatierung ändern
- **Kopf-/Fußzeilen:** Können Schullogos, Seitenzahlen, Standardunterschriften hinzufügen

### Erwarteter Lehrkraft-Workflow
1. Generierte .md-Datei herunterladen
2. Pandoc-Konvertierung lokal ausführen (oder Online-Konverter verwenden)
3. .docx in Microsoft Word öffnen
4. Schriftarten, Farben, Seitenlayout nach Bedarf anpassen
5. Schulspezifische Kopf-/Fußzeile hinzufügen
6. Änderungsverfolgung für kollaboratives Review verwenden
7. Als PDF für Verteilung oder Druck exportieren

## Technische Hinweise

- **Pandoc-Erfordernis:** Finale DOCX-Konvertierung erfordert pandoc (Open-Source, kostenlos)
- **Markdown-Dialekt:** Verwende pandoc-flavored Markdown für maximale Kompatibilität
- **Dateigröße:** Generierte Dokumente typischerweise 100KB-500KB je nach Inhaltslänge
- **Word-Version:** Kompatibel mit Microsoft Word 2016+, Office 365, LibreOffice
- **Codierung:** UTF-8 (unterstützt deutsche Umlaute, Sonderzeichen)

## Dateinamenskonvention

Verwende konsistente Benennung für einfache Organisation:

```
[Thema]_[Dokumenttyp]_DOCX_[YYYY-MM-DD].md
```

Beispiele:
- `Photosynthese_Unterrichtsreihe_DOCX_2025-01-08.md`
- `Arbeitblatt_Quadratische_Funktionen_DOCX_2025-01-08.md`
- `Praesentationslayout_Klimawandel_DOCX_2025-01-08.md`

## Integration mit anderen Skills

Dieser Skill arbeitet zusammen mit:
- **Material Skills (mat-01 bis mat-08):** Stellen Inhalte zur Formatierung bereit
- **Planungs-Skills (01-11):** Empfangen strukturierte Ausgabe aus Unterrichtsplanungs-Workflow
- **Export Markdown:** Kann Markdown-Ausgabe in DOCX konvertieren (Alternative zum direkten PDF-Export)
- **Export PDF:** Komplementärer Export für druckfertige Verteilung

Lehrkräfte verwenden typischerweise DOCX-Export für:
1. **Bearbeitungsflexibilität:** Vor Verwendung in Word modifizieren
2. **Zusammenarbeit:** Mit Kollegen teilen für Feedback via Änderungsverfolgung
3. **Schulintegration:** Mit Schulvorlagen und Branding kombinieren
4. **Archivierung:** In schulischen Dokumentenmanagementsystemen speichern

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
