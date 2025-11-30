---
name: pptx-export-powerpoint
description: Konvertiert Präsentationsinhalte in professionelles PowerPoint-Format mit Sprechernotizen, korrekter Folienstruktur und visuellen Platzhaltern. Transformiert Markdown-formatierte Präsentationen in PPTX-Dateien über MCP-Dateisystem-Integration. Wird bei Export-Anfragen ausgelöst und integriert sich mit mat-03-powerpoint-erstellen Skill-Ausgaben.
---

# PPTX Export Skill

**Typ:** Export / Styleguide-Skill
**Projekte:** Projekt 3 (Präsentation entwerfen) - primär
**Funktion:** Transformiert Präsentationsinhalte in professionelle PowerPoint-Dateien mit vollständiger Struktur, Sprechernotizen und visuellen Platzhaltern

---

## Zweck

Dieser Skill automatisiert die Konvertierung von Präsentationsinhalten (typischerweise aus mat-03-powerpoint-erstellen) in professionelles PPTX-Format, geeignet für sofortigen Einsatz im Klassenzimmer. Er stellt korrekte Folienstrukturierung, Integration von Sprechernotizen, Verwaltung visueller Platzhalter und MCP-basierte Dateispeicherung im institutionellen Repository sicher.

---

## Wann dieser Skill anzuwenden ist

Aktiviere diesen Skill wenn:
- Eine Präsentationsstruktur mit dem mat-03-powerpoint-erstellen Skill erstellt wurde
- Der Benutzer "exportiere als PowerPoint", "als PPTX speichern" oder ähnliches anfordert
- Fertiggestellte Präsentationsinhalte in verteilbares Format konvertiert werden sollen
- Konsistente PPTX-Formatierung über alle Unterrichtsmaterialien sichergestellt werden soll
- Präsentationen im institutionellen Repository gespeichert werden sollen (über MCP)

---

## Kernfunktionen

### 1. Verarbeitung der Präsentationsstruktur

Input-Verarbeitung:
- Analysiert Markdown-formatierte Folieninhalte aus vorherigen Skill-Ausgaben
- Validiert Folienhierarchie (# für Titelfolien, ## für Abschnittstitel, ### für Inhalte)
- Extrahiert Sprechernotizen (typischerweise formatiert als > Blockquotes oder [Notes: ...])
- Organisiert Folienreihenfolge unter Beibehaltung logischer Unterrichtsprogression
- Bewahrt alle Differenzierungsstufeninfos (Basisstufe, Unterstützungsstufe, Erweiterungsstufe)

### 2. PPTX-Format-Konvertierung

Output-Generierung:
- **Folienformatierung**: Professionelles Layout mit konsistenter Typografie
- **Titelfolien**: Abschnitts-/Themeneröffnungen mit vorgeschlagenen Bildplatzhaltern
- **Inhaltsfolien**: Begrenzt auf 5-7 Kernpunkte pro Folie für optimale Lesbarkeit
- **Sprechernotizen**: Umfassende Notizen auf jeder Folie mit:
  - Unterrichtsanleitung und Gesprächspunkten
  - Zeitempfehlungen für jede Folie
  - Übergangsvorschlägen
  - Referenzen zu Lernzielen
- **Visuelle Platzhalter**: Alle Grafiken markiert mit **[Grafik: Beschreibung]** Format in rotem Fettdruck

### 3. Metadaten & Namenskonventionen

Dateiorganisation:
- **Namensformat**: `[Thema]_Praesentationen_[JJJJ-MM-TT].pptx`
- **Beispiel**: `Photosynthese_Praesentationen_2025-01-15.pptx`
- **Metadaten-Einbeziehung**:
  - Titelseite mit Themenname, Datum und vorgeschlagenem Autorenfeld
  - Folienzahl und Unterrichtseinheitsinformation
  - Copyright/Schulinformationsfelder
  - Revisionsverfolgung mit Versionsdatum

### 4. Folienarchitektur-Standards

Alle Präsentationen folgen dieser Struktur:

1. **Titelfolie**
   - Thema/Unterrichtsname
   - Erstellungsdatum
   - Jahrgangsstufe und Fach
   - Bildplatzhalter für Themenvisual
   - Autorenfeld (editierbar)

2. **Inhaltsfolien** (nach Leisens 6-Phasen-Modell)
   - **Einführungsphase**: Lernziele und Überblick
   - **Arbeitsphase**: Aufgaben auf drei Differenzierungsstufen
   - **Synthese-/Vernetzungsphase**: Zusammenfassungsaktivitäten
   - **Anwendungs-/Transferphase**: Praxisbezug
   - **Abschlussphase**: Reflexion und Vorschau

3. **Zusammenfassungsfolie**
   - Kernerkenntnisse
   - Verbindung zur nächsten Stunde (falls zutreffend)
   - Reflexionsanregungen

### 5. Verwaltung visueller Elemente

Grafik-Handhabung:
- **Keine tatsächlich eingebetteten Bilder** - stattdessen explizite Platzhalter
- **Format**: Textbasierte rote fette Platzhalter wie **[Grafik: Blütenaufbau mit Beschriftungen]**
- **Platzierung**: Positioniert wo Visuals im Folienlayout erscheinen würden
- **Anleitung**: Klare Beschreibungen ermöglichen Nutzern passende Visuals zu beschaffen/erstellen
- **Zählungen**: Zusammenfassungsbericht der Gesamtzahl an Platzhaltern hilft Nutzer bei der Planung der Grafikerstellung

### 6. Integration der Differenzierungsstufen

Bei Präsentation von Aufgaben:
- Drei separate Folien oder Abschnitte pro Aufgabensatz:
  - **Basisstufe**: Wesentliche Kerninhalte
  - **Unterstützungsstufe**: Unterstützungsgerüst
  - **Erweiterungsstufe**: Herausforderungsinhalte
- Klare visuelle Hierarchie zur Unterscheidung der Schwierigkeitsstufen
- Referenzen zu ursprünglichen Lernzielen

### 7. MCP-Integration

Dateispeicherung:
- **Schreibort**: Via @mcp_filesystem nach `1_Exportierte_Ergebnisse/`
- **Unterordnerstruktur**: Erstellt themen-datierte Unterordner
  - Beispiel: `1_Exportierte_Ergebnisse/Photosynthese_2025-01-15/`
- **Backup-Strategie**: Enthält Markdown-Version neben PPTX für Versionskontrolle
- **Zugriffspfad**: Vollständiger Pfad wird dem Nutzer zum Abruf bereitgestellt

### 8. Vorlagenreferenz

Wenn verfügbar, referenziere:
- **`2_Zentrale_Ressourcen/Templates/praesentation-master.md`**: Design-Standards und Layout-Richtlinien
- Farbschemata und Typografie konsistent mit institutionellen Standards
- Formatierungsregeln für Titel, Aufzählungspunkte und Sprechernotizen

---

## Workflow

### Phase 1: Input-Validierung

Vor der Konvertierung:
1. Vollständigkeit des Präsentationsinhalts verifizieren
2. Folienzahl und Strukturvalidität prüfen
3. Vorhandensein von Sprechernotizen validieren (falls zutreffend)
4. Bestätigen, dass alle visuellen Bedarfe mit Platzhaltern markiert sind
5. Dateinamensgebung und Metadaten-Bereitschaft validieren

### Phase 2: Format-Konvertierung

Konvertierung ausführen:
1. Markdown-Input in Folienobjekte parsen
2. PPTX-spezifische Formatierungsregeln anwenden
3. Sprechernotizen auf jeder Folie einfügen
4. Visuelle Platzhalter in PPTX-kompatibles Format konvertieren
5. Konsistenten Stil und Typografie anwenden
6. Metadaten einbetten (Titel, Datum, Fach, Jahrgangsstufe)

### Phase 3: Qualitätsprüfung

Output verifizieren:
- [ ] Alle Folien haben inhaltsfokussierte Titel
- [ ] Visuelle Platzhalter sind klar in rotem Fettdruck markiert
- [ ] Sprechernotizen sind vorhanden und umfassend
- [ ] Folienzahl und Reihenfolge stimmen mit Input überein
- [ ] Differenzierungsstufen sind klar unterschieden
- [ ] Metadaten sind vollständig und korrekt
- [ ] Dateinamensgebung folgt Konvention: [Thema]_Praesentationen_[Datum].pptx
- [ ] Dateigröße ist angemessen (typischerweise 2-5 MB für Standardpräsentationen)

### Phase 4: MCP-Speicherung & Auslieferung

Finalisieren und speichern:
1. Datierten Unterordner in MCP `1_Exportierte_Ergebnisse/` erstellen
2. PPTX-Datei mit korrekter Namensgebung speichern
3. Begleitende Markdown-Backup-Datei erstellen
4. Speicherzusammenfassung mit Dateipfaden generieren
5. Download-Link und lokalen Dateipfad dem Nutzer bereitstellen

---

## Technische Details

### Akzeptierte Input-Formate

- Markdown-formatierte Präsentationsstruktur
- YAML-Frontmatter mit Metadaten (title, date, grade_level, subject)
- Blockquote-Sprechernotizen (> Format)
- HTML/Markdown gemischte Formatierung
- Textbasierte visuelle Beschreibungen

### Output-Format

- **Format**: Microsoft PowerPoint 2010+ (.pptx)
- **Kompatibilität**: Windows, macOS, Linux + Online-Viewer (Office 365)
- **Standard-Konformität**: ISO/IEC 29500 (Office Open XML)
- **Typische Größe**: 2-5 MB für Standard 20-40 Folien Präsentationen

### Abhängigkeiten

- **MCP Filesystem**: Schreibzugriff auf `1_Exportierte_Ergebnisse/`
- **Referenzvorlage**: `2_Zentrale_Ressourcen/Templates/praesentation-master.md` (optional aber empfohlen)
- **Konvertierungstools**:
  - Marp CLI (für direkte Markdown-zu-PPTX Konvertierung, optional)
  - Pandoc (für Zwischenformat-Konvertierung, optional)
  - Python-pptx (für direkte PPTX-Generierung, empfohlen)

---

## Konfiguration & Parameter

Bei der Skill-Erstellung konfigurieren:

```yaml
Trigger Keywords:
  - "als PowerPoint exportieren"
  - "PPTX speichern"
  - "PowerPoint-Datei erstellen"
  - "Präsentation in PPTX konvertieren"
  - "exportiere als PPTX"

Input Requirements:
  - presentation_content: String (Markdown-formatierte Folien)
  - topic: String (Thema der Präsentation)
  - date: Date (Erstellungsdatum, auto-aktuelles-Datum falls nicht angegeben)
  - grade_level: String (z.B. "Klasse 7", optional)
  - subject: String (z.B. "Biologie", optional)
  - speaker_notes: Boolean (Notizen einbeziehen, Standard: true)

Output:
  - file_path: String (MCP-Pfad zur gespeicherten PPTX)
  - file_name: String (PPTX-Dateiname mit Thema und Datum)
  - storage_location: String (vollständiger Pfad in 1_Exportierte_Ergebnisse/)
  - summary: Object
    - slide_count: Integer
    - graphic_placeholder_count: Integer
    - file_size: String
```

---

## Qualitäts-Checkliste

Vor der Auslieferung verifizieren:

- [ ] **Inhaltsgenauigkeit**: Aller Folientext stimmt fehlerfrei mit Input überein
- [ ] **Folientitel**: Jede Folie hat einen inhaltsfokussierten Titel (keine Phasennamen)
- [ ] **Visuelle Platzhalter**: Alle Grafiken markiert mit **[Grafik: ...]** Format
- [ ] **Sprechernotizen**: Umfassende, handlungsorientierte Notizen auf jeder Folie
- [ ] **Differenzierung**: Aufgabenfolien zeigen alle drei Stufen klar
- [ ] **Metadaten**: Titelseite vollständig mit Thema, Datum, Fach, Jahrgangsstufe
- [ ] **Dateiformat**: Gültiges PPTX, öffnet in PowerPoint 2010+, Google Slides, LibreOffice
- [ ] **Namenskonvention**: Folgt `[Thema]_Praesentationen_[JJJJ-MM-TT].pptx`
- [ ] **MCP-Speicherung**: Datei erfolgreich in `1_Exportierte_Ergebnisse/` mit Unterordner gespeichert
- [ ] **Backup**: Markdown-Version ebenfalls für Versionskontrolle gespeichert
- [ ] **Dateigröße**: 2-5 MB Bereich für typische Präsentationen (nicht beschädigt)
- [ ] **Folienzahl**: Genaue Darstellung der Unterrichtsprogression

---

## Häufige Anwendungsfälle

### Szenario 1: Einzelthemen-Präsentation
- Input: 15-Folien Präsentation zu einem Thema mit 4 Stunden
- Output: `Photosynthese_Praesentationen_2025-01-15.pptx`
- Features: Titelfolie + 4 Themenabschnitte + Zusammenfassung
- Erwartete Platzhalter: 6-8 Grafiken
- Erstellungszeit: 15-20 Minuten

### Szenario 2: Komplexe Einheit mit vollständiger Differenzierung
- Input: 45-Folien Präsentation über 5 Themen mit allen Differenzierungsstufen
- Output: `Klimawandel_Unterrichtsreihe_Praesentationen_2025-01-20.pptx`
- Features: Titel + 5 Abschnittstitel + detaillierte Phasenfolien + Abschluss
- Erwartete Platzhalter: 15-20 Grafiken
- Differenzierungsfolien: 20+ zeigen alle drei Stufen
- Erstellungszeit: 45-60 Minuten

### Szenario 3: Schneller Stunden-Export
- Input: Einzelstunde (6-Phasen-Struktur, 10 Folien)
- Output: `Blütenaufbau_Lektion_Praesentationen_2025-01-10.pptx`
- Features: Fokussierter Inhalt, schnelles Setup
- Erwartete Platzhalter: 3-4 Grafiken
- Erstellungszeit: 8-12 Minuten

---

## MCP Ressourcen-Integration

Wenn verfügbar, referenziere:

```
2_Zentrale_Ressourcen/Templates/praesentation-master.md
├── Design Standards
├── Farbpalette
├── Typografie-Richtlinien
├── Folienlayout-Vorlagen
└── Formatierungsregeln
```

---

## Beziehung zu anderen Skills

Dieser Skill ist Teil des Export-Toolkits:

- **Erhält von**: mat-03-powerpoint-erstellen (erstellt Inhalte)
- **Paart sich mit**: export-markdown, export-pdf, export-docx (alternative Exports)
- **Ergänzt**: 05-lernziele-operationalisieren, 06-mindmap-strukturierung (Inhaltsreferenz)

---

## Notizen für Claude

- Dies ist ein **direkter Export-Skill**: Keine Zwischenverarbeitung, nur Formatkonvertierung und Speicherung
- Benutzer muss nach Export tatsächliche Grafiken hinzufügen (Platzhalter leiten dies an)
- PPTX ist optimal für Klassenraumprojektion und Bearbeitung in PowerPoint
- Präsentationen sollten sofort nutzbar sein (nur Grafiken müssen noch hinzugefügt werden)
- Versionskontrolle via Markdown-Backups ermöglicht Iteration und Verbesserung
- MCP-Speicherung gewährleistet institutionelles Repository-Management und Zugänglichkeit

---

**Status**: Bereit für skill-creator Implementierung
**Zielprojekte**: Projekt 3 (Präsentation entwerfen)
**Priorität**: Mittel (Export-Funktionalität, nicht Kernplanung)

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
