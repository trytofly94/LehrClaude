# Lehrkraft-Deployment - Automatische Ordnerstruktur-Installation

Dieser Ordner enthält das **Deployment-Script** und die **Ordnerstruktur-Vorlage** für die Installation auf dem Rechner einer Lehrkraft.

---

## Zweck

Das `setup.sh`-Script erstellt **automatisch die komplette Verzeichnisstruktur** auf dem Zielrechner:

```
Schul-Materialien/
├── 1_Exportierte_Ergebnisse/        # Fertige Dokumente
├── 2_Zentrale_Ressourcen/           # Lehrpläne, Frameworks
│   ├── Lehrplaene/
│   ├── Didaktik/                    # Inkl. Zitationsrichtlinien.txt
│   └── Templates/
├── 3_Projekt_Knowledge_Base/        # Projektspezifische Dokumente
└── 4_Klassen_und_Schueler/          # Schülerprofile (Förderschule)
```

---

## Voraussetzungen

- **macOS** System
- **Terminal-Zugriff**
- **Schreibrechte** im Benutzer-Verzeichnis

---

## Verwendung

### Option 1: Mit Pfad-Angabe

```bash
./setup.sh /Users/maria.schmidt/Schul-Materialien
```

### Option 2: Interaktiv

```bash
./setup.sh
```

Das Script fragt dann nach dem Zielverzeichnis.

---

## Was das Script macht

### 1. Systemprüfungen

- ✅ macOS-Betriebssystem
- ✅ Claude Desktop Installation (warnt falls fehlend)
- ✅ Node.js Installation (warnt falls fehlend)

### 2. Ordnerstruktur erstellen

Erstellt alle benötigten Ordner:
- `1_Exportierte_Ergebnisse/`
- `2_Zentrale_Ressourcen/Lehrplaene/`
- `2_Zentrale_Ressourcen/Didaktik/`
- `2_Zentrale_Ressourcen/Templates/`
- `3_Projekt_Knowledge_Base/`
- `4_Klassen_und_Schueler/`

### 3. Vorlage-Dateien kopieren

Kopiert Beispiel-Ressourcen:
- **KMK-Operatoren.txt** (Aufgaben-Operatoren)
- **Bloom-Taxonomie.txt** (Lernzielstufen)
- **Zitationsrichtlinien.txt** (Akademisches Zitieren)
- **arbeitsblatt-vorlage.txt** (Layout-Template)
- **praesentation-master.txt** (Präsentations-Richtlinien)
- **README-Dateien** für jeden Ordner

### 4. Berechtigungen setzen

Setzt Lese- und Schreibrechte (755) für alle Ordner.

### 5. Zusammenfassung

Zeigt die erstellte Struktur und nächste Schritte an.

---

## Nach dem Setup

Das Script zeigt am Ende die **nächsten Schritte** an:

1. **MCP Filesystem Server konfigurieren**
   - Siehe: `../claude-desktop-setup/MCP_SETUP_ANLEITUNG.md`

2. **Claude Desktop Projekte einrichten**
   - Siehe: `../claude-desktop-setup/README.md`

3. **Skills erstellen**
   - Mit skill-creator in Claude Desktop

4. **Lehrpläne hinzufügen** (optional)
   - Kopiere Lehrplan-PDFs nach `Schul-Materialien/2_Zentrale_Ressourcen/Lehrplaene/`

---

## Neue Features (November 2025)

### Wissenschaftliche Quellenarbeit

Das System unterstützt akademische Abgaben mit:
- **Zitationsrichtlinien:** Siehe `2_Zentrale_Ressourcen/Didaktik/Zitationsrichtlinien.txt`
- **Inline-Zitationen:** Format (Autor, Jahr) im Fließtext
- **Quellenverzeichnis:** Alphabetisch am Dokumentende
- **2-Stufen-Recherche:** Web-Suche (automatisch) vs. Deep Research (manuell)

### Förderschul-Integration

Neue Unterstützung für **7 Förderschwerpunkte** mit individueller Differenzierung:
- Lernen (LE), Emotional-soziale Entwicklung (ESE), Sprache (SQ)
- Geistige Entwicklung (GE), Körperlich-motorische Entwicklung (KME)
- Hören und Kommunikation (HK), Sehen (SE)

**Neuer Ordner:** `4_Klassen_und_Schueler/` für Schülerprofile und Klasseninfos.

### TXT-Format für Lehrkraft-Dateien

Alle Ressourcen nutzen jetzt strukturiertes TXT-Format für optimale Mac-Vorschau-Kompatibilität.

---

## Ordnerstruktur-Erklärung

### 1_Exportierte_Ergebnisse/

**Zweck:** Hier landen alle finalen Dokumente (Unterrichtsreihen, Arbeitsblätter, Präsentationen).

**Zugriff:**
- **MCP Schreibzugriff** (Export-Skills speichern hier automatisch)
- Lehrkraft kann Dateien manuell öffnen/drucken/teilen

**Struktur nach Nutzung:**
```
1_Exportierte_Ergebnisse/
├── Unterrichtsreihe_Photosynthese_2025-01-08/
│   ├── 01_Sachanalyse.md
│   ├── 02_Didaktische_Analyse.md
│   └── ...
├── Arbeitsblatt_Bruchrechnung_2025-01-09.md
└── Praesentation_Klimawandel_2025-01-10.md
```

---

### 2_Zentrale_Ressourcen/

**Zweck:** Globale, statische Ressourcen für alle Projekte.

**Zugriff:**
- **MCP Lesezugriff** (Skills lesen automatisch)
- Lehrkraft kann manuell Lehrpläne/Dokumente hinzufügen

**Unterordner:**

#### Lehrplaene/
Lehrpläne der Bundesländer (PDF, Markdown)

**Empfohlene Struktur:**
```
Lehrplaene/
├── NRW/
│   ├── Lehrplan_Biologie_Sek1.pdf
│   └── Lehrplan_Mathematik_Sek1.pdf
├── Bayern/
└── ...
```

**Wo bekomme ich Lehrpläne?**
- NRW: [schulentwicklung.nrw.de](https://www.schulentwicklung.nrw.de/)
- Bayern: [isb.bayern.de](https://www.isb.bayern.de/)
- Baden-Württemberg: [bildungsplaene-bw.de](https://www.bildungsplaene-bw.de/)

#### Didaktik/
Frameworks, Taxonomien, Operator-Listen, Zitationsrichtlinien

**Enthält (Beispiele):**
- `KMK-Operatoren.txt` - Standardisierte Aufgaben-Operatoren
- `Bloom-Taxonomie.txt` - Kognitive Lernzielstufen
- `Zitationsrichtlinien.txt` - Format für akademische Quellen

#### Templates/
Vorlagen für Arbeitsblätter, Präsentationen

**Enthält:**
- `arbeitsblatt-vorlage.txt` - Layout-Referenz für Arbeitsblätter
- `praesentation-master.txt` - Formatierungsrichtlinien für Präsentationen

---

### 3_Projekt_Knowledge_Base/

**Zweck:** Projektspezifische, temporäre Dokumente.

**Wichtig:** Dieser Ordner wird **NICHT über MCP** genutzt!

**Verwendung:**
- Lehrkraft lädt projektspezifische Dokumente direkt in die **Claude Desktop Project Knowledge Base** hoch
- Dieser Ordner dient optional als lokales Backup

**Beispiel:**
```
3_Projekt_Knowledge_Base/
├── projekt-bio-photosynthese/
│   ├── forschungspapier-2023.pdf
│   └── notizen-lehrkraft.md
└── projekt-geschichte-industrialisierung/
    └── quellensammlung.md
```

---

## Troubleshooting

### Problem: "Permission Denied" beim Ausführen

**Lösung:**
```bash
chmod +x setup.sh
./setup.sh
```

---

### Problem: Script findet Vorlage-Dateien nicht

**Symptom:** Fehler "Vorlage-Verzeichnis nicht gefunden"

**Lösung:**
- Stelle sicher, dass du das Script aus dem `lehrkraft-deployment/`-Ordner aufrufst
- Oder verwende absoluten Pfad

---

### Problem: Ordner existiert bereits

**Symptom:** Script warnt, dass Ordner existiert

**Verhalten:**
- Script überschreibt **KEINE** bestehenden Dateien (nutzt `cp -n`)
- Sicher: Kann mehrfach ausgeführt werden ohne Datenverlust

---

## Deinstallation

Falls du die Ordnerstruktur wieder entfernen möchtest:

```bash
rm -rf /Users/[LEHRKRAFT-NAME]/Schul-Materialien
```

**Vorsicht:** Alle Daten in diesem Ordner gehen verloren!

---

## Integration mit Claude Desktop Setup

Dieses Deployment ist **Teil 1** des Gesamtsetups:

```
┌─────────────────────────────────────────┐
│ Schritt 1: Ordnerstruktur erstellen    │  ← Du bist hier
│ (lehrkraft-deployment/setup.sh)        │
└─────────────────────────────────────────┘
             ↓
┌─────────────────────────────────────────┐
│ Schritt 2: Claude Desktop konfigurieren│
│ (claude-desktop-setup/README.md)       │
└─────────────────────────────────────────┘
```

**Nach diesem Script → Weiter zu:** `../claude-desktop-setup/README.md`

---

**Version:** 1.1
**Zuletzt aktualisiert:** 2025-11-30
**Geschätzter Zeitaufwand:** 5 Minuten

**Änderungshistorie:**
- **v1.1 (2025-11-30):** Zitationsrichtlinien, 4_Klassen_und_Schueler/ Ordner, TXT-Format
- **v1.0 (2025-01-08):** Initial release
