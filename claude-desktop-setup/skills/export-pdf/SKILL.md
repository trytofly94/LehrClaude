---
name: pdf-export-via-pandoc
description: Konvertiert strukturierte Unterrichtsmaterialien in professionelle PDF-Dokumente mit A4-Formatierung, Inhaltsverzeichnis, Seitenzahlen und Fußzeilen. Nutzt Pandoc für die Konvertierung und MCP für die Speicherung in der zentralen Ergebnisbibliothek.
---

# PDF Export Skill

**Typ:** Export / Styleguide-Skill
**Projekte:** Alle Projekte (Unterrichtsreihe planen, Arbeitsblatt erstellen, Präsentation entwerfen)
**Funktion:** Konvertiert Markdown-Inhalte in professionelle, druckfähige PDF-Dokumente mit vollständiger Formatierung

---

## Zweck

Dieser Skill transformiert fertig strukturierte Unterrichtsmaterialien (als Markdown oder Text) in hochwertige PDF-Dokumente im DIN A4-Format. Er automatisiert die Formatierung, Seitennummerierung, Inhaltsverzeichnis-Generierung und stellt sicher, dass alle Dokumente ein professionelles, einheitliches Aussehen haben.

---

## Wann wird dieser Skill verwendet?

Dieser Skill wird automatisch aufgerufen, wenn:
- Nutzer sagt "als PDF exportieren"
- Nutzer sagt "druckfähige Version erstellen"
- Nutzer sagt "PDF speichern"
- Nutzer fragt "kann ich das als PDF herunterladen?"
- Am Ende eines Unterrichtsplanungs- oder Materialerstellungsprozesses

---

## Eingabe & Ausgabe

**Eingabe:**
- Strukturiertes Markdown-Dokument aus vorherigen Skills
- Oder beliebiger Text/Inhalt, der exportiert werden soll
- Metadaten: Titel, Autor, Datum, Thema

**Ausgabe:**
- Professionell formatiertes PDF-Dokument (DIN A4)
- Dateiname-Format: `[Thema]_[Untertitel]_[JJJJ-MM-TT].pdf`
- Beispiel: `Unterrichtsreihe_Photosynthese_2025-01-08.pdf`
- Gespeichert via MCP in: `1_Exportierte_Ergebnisse/`

---

## Funktionsspezifikationen

### 1. Titelseite
- Großer Titel (Hauptthema)
- Untertitel (falls vorhanden)
- Autor/Lehrkraft
- Datum (Erstellungsdatum)
- Schulklasse/Lerngruppe (falls vorhanden)
- Fach/Bundesland (falls vorhanden)
- Seitenumbruch

### 2. Inhaltsverzeichnis
- Automatisch generiert aus Überschriften (# ## ###)
- Maximale Tiefe: 3 Ebenen
- Mit automatischen Seitenzahlen
- Nach Titelseite, vor Inhaltsseite

### 3. Seitenlayout & Formatierung

#### Seitenformat
- **Format:** DIN A4 (210 × 297 mm)
- **Ränder:** Oben 2,5 cm, Unten 2,5 cm, Links 2,5 cm, Rechts 2,0 cm
- **Zeilenhöhe:** 1,5 Zeilen (für bessere Lesbarkeit)

#### Typografie
- **Schriftart:** Calibri oder Segoe UI (standard, gut lesbar)
- **Überschrift 1 (#):** 18pt, Bold, Farbe: Dunkelblau (RGB 0,51,102)
- **Überschrift 2 (##):** 14pt, Bold, Farbe: Dunkelblau
- **Überschrift 3 (###):** 12pt, Bold, Farbe: Grau (RGB 64,64,64)
- **Fließtext:** 11pt, Farbe: Schwarz
- **Tabellen:** 10pt, zentriert

### 4. Seitennummerierung & Kopf-/Fußzeilen
- **Fußzeile auf jeder Seite ab Seite 2:**
  ```
  [Schulname] | [Fach] | [Datum]        [Seitennummer]
  ```
  - Linksbündig: `[Schulname] | [Fach] | [Datum]`
  - Rechtsbündig: `Seite [Seitennummer]`

- **Kopfzeile (optional):** Großer Thema-Titel auf geraden Seiten

### 5. Inhaltsstruktur & Absätze
- **Absatzabstand:** 0,5 cm vor, 0,5 cm nach
- **Aufzählungen:** Automatisch formatiert mit Bullet Points
- **Nummerierte Listen:** Automatisch formatiert mit 1), 2), 3)
- **Fette Hervorhebung:** Für Schlüsselbegriffe
- **Kursive Hervorhebung:** Für fremdsprachige oder technische Begriffe

### 6. Tabellen
- Abwechselnde Zeilenfarben (Grau 10% für jeden zweiten Hintergrund)
- Rahmen: Dünn, Farbe Grau
- Kopfzeile: Fett, Dunkelblau Hintergrund, weiße Schrift

### 7. Bilder & Diagramme
- **Größe:** Automatisch skaliert auf max. 95% der Seitenbreite
- **Rahmen:** Dünn grau umrahmt
- **Beschriftung:** Unter dem Bild mit "Abb. X: [Beschreibung]"
- **Zentriert:** Alle Bilder mittig auf Seite

### 8. Code-Blöcke
- **Hintergrund:** Hellgrau (RGB 245,245,245)
- **Schriftart:** Monospace (Courier New)
- **Größe:** 9pt
- **Rahmen:** Dünn schwarz

### 9. Hervorhebungs-Kästen
- **Infobox:** Hellblauer Hintergrund (RGB 230,240,255) für Hinweise
- **Warnbox:** Hellroter Hintergrund (RGB 255,230,230) für Wichtiges
- **Beispielbox:** Hellgrüner Hintergrund (RGB 230,245,235) für Beispiele

### 10. Seitenumbrüche
- Automatisch vor Überschrift 1 (neues Kapitel)
- Manuelle Seitenumbrüche an markanten Stellen

---

## Dateinamenskonvention

```
[Kategorie]_[Thema]_[Untertitel]_[JJJJ-MM-TT].pdf
```

**Beispiele:**
- `Unterrichtsreihe_Photosynthese_Klasse7_2025-01-08.pdf`
- `Arbeitsblatt_Energieumwandlung_Grundlagen_2025-01-08.pdf`
- `Praesentation_Kreislauf_Einfuehrung_2025-01-08.pdf`
- `Lernzielkontrolle_Chemische_Reaktionen_Test_2025-01-08.pdf`

---

## Technische Anforderungen

### Pandoc Integration
- **Tool:** Pandoc (für Markdown zu PDF Konvertierung)
- **Befehl-Vorlage:**
  ```bash
  pandoc \
    --from markdown \
    --to pdf \
    --pdf-engine=xelatex \
    --toc \
    --toc-depth=3 \
    --variable="geometry:margin=2.5cm" \
    --variable="linestretch=1.5" \
    --variable="fontsize=11pt" \
    --variable="header-includes=\usepackage{fancyhdr}" \
    --output output.pdf \
    input.md
  ```

- **Alternative (falls Pandoc nicht verfügbar):**
  - Generiere PDF-optimiertes Markdown
  - Nutze wkhtmltopdf oder ähnliches
  - Oder speichere als Markdown zur manuellen Konvertierung

### MCP Integration
- **Zielordner:** `1_Exportierte_Ergebnisse/`
- **Aktion:** Schreibe PDF-Datei via MCP Filesystem Server
- **Beispiel-Pfad:** `/Users/[NAME]/Schul-Materialien/1_Exportierte_Ergebnisse/Unterrichtsreihe_Photosynthese_2025-01-08.pdf`

---

## Arbeitsablauf im Skill

1. **Eingabe validieren**
   - Stelle sicher, dass Markdown/Text vorhanden ist
   - Extrahiere Metadaten (Titel, Autor, Datum)

2. **Markdown-Vorbereitung**
   - Füge YAML-Frontmatter mit Pandoc-Variablen hinzu
   - Ergänze Titelseite + Inhaltsverzeichnis am Anfang
   - Strukturiere Inhalte mit konsistenten Überschriften

3. **PDF-Generierung**
   - Rufe Pandoc auf (oder Alternative)
   - Wende Formatierungs-Einstellungen an
   - Prüfe auf Fehler während Konvertierung

4. **Speicherung via MCP**
   - Schreibe PDF via MCP in `1_Exportierte_Ergebnisse/`
   - Verwende standardisierte Dateinamenskonvention
   - Bestätige erfolgreiche Speicherung

5. **Bestätigung an Nutzer**
   - Zeige Dateipfad
   - Gebe Größe und Seitenzahl an
   - Biete Option zum Öffnen/Download

---

## Beispiel-Pandoc-Vorlage (YAML-Frontmatter)

```yaml
---
title: "Unterrichtsreihe Photosynthese"
subtitle: "Klasse 7, Biologie, 8 Unterrichtsstunden"
author: "Lehrkraft Name"
date: "Januar 8, 2025"
subject: "Biologie"
school: "Schulname"
class: "Klasse 7b"
geometry:
  - margin=2.5cm
linestretch: 1.5
fontsize: 11pt
documentclass: scrartcl
lang: de-DE
colorlinks: true
linkcolor: blue
toc: true
toc-depth: 3
toc-title: "Inhaltsverzeichnis"
---
```

---

## Fehlerbehandlung

- **Fehler bei Pandoc:** Zeige Fehlermeldung und Alternative (Markdown-Export)
- **MCP-Schreibfehler:** Informiere Nutzer, erkundige dich nach Berechtigungen
- **Zu großes Dokument:** Schlage Aufteilung vor oder setze Seitengrenze

---

## Optionale Erweiterungen (für zukünftige Versionen)

- Farbcodierung nach Differenzierungsstufen (Basis/Unterstützung/Erweiterung)
- Wasserzeichen (z.B. "Entwurf" oder "LehrClaude generiert")
- QR-Codes für Verlinkung zu digitalen Ressourcen
- Mehrsprachige Inhaltsverzeichnisse
- Automatische Backup-Speicherung
- PDF/A-Format für Langzeitspeicherung

---

## Qualitätssicherungs-Checkliste

Vor Speicherung sollte der Skill prüfen:
- [ ] Alle Überschriften vorhanden und korrekt formatiert
- [ ] Inhaltsverzeichnis automatisch generiert
- [ ] Seitenzahlen auf jeder Seite (ab Seite 2)
- [ ] Fußzeilen mit Metadaten
- [ ] Bilder/Tabellen korrekt skaliert und zentriert
- [ ] Keine Formatierungsfehler oder unlesbaren Zeichen
- [ ] PDF öffnet und ist druckbar
- [ ] Dateigröße angemessen (< 20MB)

---

## Nach Erstellung

**ZIP-Paket für Hochladen in Claude Desktop:**
1. Ordner `export-pdf/` (mit dieser aktualisierten SKILL.md)
2. Ggf. zusätzliche Dateien (Pandoc-Templates, CSS, etc.)
3. In `.zip` packen
4. In Claude Desktop hochladen
5. **In allen 3 Projekten aktivieren:**
   - Projekt 1: Unterrichtsreihe planen
   - Projekt 2: Arbeitsblatt erstellen
   - Projekt 3: Präsentation entwerfen

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
