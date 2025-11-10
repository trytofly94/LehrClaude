# MCP Filesystem Server: Klassenverwaltung Setup

> **Zusätzliche Dokumentation für Förderschul-Integration**

## Übersicht

Dieses Dokument beschreibt die Einrichtung des Ordners `4_Klassen_und_Schueler/` im MCP Filesystem Server für die Verwaltung von Förderschulklassen und Schülerprofilen.

---

## Voraussetzungen

- ✅ MCP Filesystem Server ist bereits konfiguriert (siehe `MCP_SETUP_ANLEITUNG.md`)
- ✅ Basis-Ordnerstruktur `Schul-Materialien/` existiert
- ✅ Projekte 1-3 sind eingerichtet und funktionieren

---

## Ordnerstruktur

### Übersicht

```
Schul-Materialien/
└── 4_Klassen_und_Schueler/
    ├── Klasse_5a_LE/                    # Beispiel: Förderschwerpunkt Lernen
    │   ├── Klasseninfo.md
    │   └── Schuelerprofile/
    │       ├── Max_Mustermann.md
    │       ├── Anna_Beispiel.md
    │       └── ...
    ├── Klasse_7b_GE/                    # Beispiel: Förderschwerpunkt Geistige Entwicklung
    │   ├── Klasseninfo.md
    │   └── Schuelerprofile/
    │       └── ...
    └── README.md                         # Hinweise zur Nutzung
```

### Namenskonvention für Klassenordner

**Format:** `Klasse_[STUFE][BUCHSTABE]_[FÖRDERSCHWERPUNKT]/`

**Beispiele:**
- `Klasse_5a_LE/` → Klasse 5a, Förderschwerpunkt Lernen
- `Klasse_7b_GE/` → Klasse 7b, Förderschwerpunkt Geistige Entwicklung
- `Klasse_9c_ESE/` → Klasse 9c, Förderschwerpunkt Emotional-soziale Entwicklung

**Förderschwerpunkt-Kürzel:**
- LE = Lernen
- ESE = Emotional-soziale Entwicklung
- SQ = Sprache
- GE = Geistige Entwicklung
- KME = Körperlich-motorische Entwicklung
- HK = Hören und Kommunikation
- SE = Sehen

---

## Dateien erstellen

### 1. Klasseninfo.md Template

**Speicherort:** `4_Klassen_und_Schueler/Klasse_[X]_[Y]/Klasseninfo.md`

**Inhalt:**
```markdown
# Klasseninfo: Klasse [STUFE][BUCHSTABE]

## Stammdaten
- **Förderschwerpunkt**: [z.B. Lernen]
- **Anzahl Schüler:innen**: [z.B. 12]
- **Schuljahr**: [z.B. 2024/2025]
- **Klassenleitung**: [Name]

## Klassenbesonderheiten
- [z.B. Hoher Anteil nicht-deutscher Erstsprache]
- [z.B. 4 Schüler:innen mit UK-Bedarf]
- [z.B. Sehr heterogene Lernausgangslage]

## Unterrichtsorganisation
- **Raumausstattung**: [z.B. Differenzierungsraum vorhanden, höhenverstellbare Tische]
- **Personelle Unterstützung**: [z.B. 2 Schulbegleiter:innen, 1 FSJ]
- **Besondere Rituale**: [z.B. Morgenkreis, Wochenplan-Arbeit]

## Hinweise für Unterrichtsplanung
- [z.B. Materialien immer in 3 Niveaustufen bereitstellen]
- [z.B. Piktogramme für alle Arbeitsanweisungen notwendig]
- [z.B. Längere Bearbeitungszeiten einplanen]
```

### 2. Schülerprofil Template

**Speicherort:** `4_Klassen_und_Schueler/Klasse_[X]_[Y]/Schuelerprofile/Vorname_Nachname.md`

**Inhalt:**
```markdown
# [Vorname] [Nachname]

## Stammdaten
- **Klasse**: [z.B. 5a]
- **Förderschwerpunkt**: [z.B. Lernen]
- **Alter**: [z.B. 11 Jahre]
- **Geschlecht**: [optional]

## Lernausgangslage

### Kompetenzen
- **Lesen**: [z.B. Leseniveau Klasse 2, kennt alle Buchstaben, liest Wörter langsam]
- **Schreiben**: [z.B. Schreibt Wörter phonetisch, Rechtschreibung unsicher]
- **Mathematik**: [z.B. Zahlenraum bis 100, Addition/Subtraktion sicher, Multiplikation im Aufbau]
- **Sachunterricht**: [z.B. Großes Interesse an Tieren, kann Zusammenhänge verbal gut erklären]

### Stärken
- [z.B. Handwerkliche Tätigkeiten]
- [z.B. Soziale Kompetenzen, hilft anderen gerne]
- [z.B. Gutes Gedächtnis für konkrete Inhalte]

### Barrieren
- [z.B. Schriftsprache, v.a. bei längeren Texten]
- [z.B. Abstrakte Konzepte schwer zugänglich]
- [z.B. Konzentration lässt nach 20 Min. deutlich nach]

## Besondere Bedürfnisse

### Unterstützungsbedarfe
- [z.B. Benötigt visuelle Stützen (Bilder, Piktogramme)]
- [z.B. Arbeitet gut in Kleingruppen (max. 3 Personen)]
- [z.B. Braucht häufige Pausen]
- [z.B. Nutzt UK-Talker für Kommunikation]

### Hilfsmittel
- [z.B. Keine]
- [z.B. FM-Anlage]
- [z.B. Brille, Lesehilfe, Laptop]

### Nachteilsausgleich
- [z.B. Zeitverlängerung 50%]
- [z.B. Vorlesen von Aufgabenstellungen]
- [z.B. Separate Prüfungsraum]

## Lernziel-Anpassungen

### Generelle Prinzipien
- [z.B. Reduktion der Textmenge auf max. 50 Wörter]
- [z.B. Mehr Beispiele und Übungen vor Transfer-Aufgaben]
- [z.B. Handlungsorientierte, konkrete Aufgaben bevorzugen]

### Fachspezifisch
- **Deutsch**: [z.B. Fokus auf Leseverständnis, nicht Rechtschreibung]
- **Mathematik**: [z.B. Konkretes Material (Muggelsteine) immer bereitstellen]
- **Sachunterricht**: [z.B. Experimente und praktische Erfahrungen zentral]

## Soziale Situation
- [z.B. Hat 2 enge Freunde in der Klasse]
- [z.B. Wird manchmal von Mitschüler:innen ausgeschlossen]
- [z.B. Arbeitet gerne mit [Name] zusammen]

## Sonstiges
- [Weitere wichtige Informationen]
```

---

## Setup-Anleitung

### Schritt 1: Ordnerstruktur erstellen

**Automatisch (empfohlen):**
```bash
cd lehrkraft-deployment
./setup.sh /Users/[LEHRKRAFT]/Schul-Materialien
```
→ Erstellt automatisch `4_Klassen_und_Schueler/` mit README.md

**Manuell:**
```bash
cd /Users/[LEHRKRAFT]/Schul-Materialien
mkdir -p 4_Klassen_und_Schueler
```

### Schritt 2: Erste Klasse anlegen

```bash
cd 4_Klassen_und_Schueler
mkdir -p Klasse_5a_LE/Schuelerprofile
```

### Schritt 3: Klasseninfo erstellen

1. Öffne `Klasse_5a_LE/Klasseninfo.md` in einem Texteditor
2. Kopiere das Template von oben
3. Fülle die Platzhalter aus
4. Speichern

### Schritt 4: Schülerprofile erstellen

**Für jeden Schüler / jede Schülerin:**

1. Erstelle Datei: `Klasse_5a_LE/Schuelerprofile/Max_Mustermann.md`
2. Kopiere das Schülerprofil-Template
3. Fülle alle relevanten Felder aus
4. Speichern

**Tipp:** Beginne mit 2-3 exemplarischen Profilen, erweitere bei Bedarf.

### Schritt 5: MCP-Konfiguration prüfen

Die `MCP_CONFIG.json` muss den Ordner `Schul-Materialien/` freigeben (bereits in Basis-Setup enthalten):

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "/Users/[LEHRKRAFT]/Schul-Materialien"
      ]
    }
  }
}
```

✅ **Keine Änderung notwendig**, wenn MCP bereits funktioniert!

---

## Nutzung in den Projekten

### Automatische Aktivierung

**Wenn die Lehrkraft "Förderschulklasse" auswählt:**
1. Claude aktiviert automatisch die 4 Förderschul-Skills
2. Skill `foerder-01-schuelerprofile-laden` liest `4_Klassen_und_Schueler/[KLASSENNAME]/`
3. Alle Schülerprofile werden in den Planungsprozess einbezogen

### Manuelle Nutzung

**In jedem Projekt kann die Lehrkraft explizit fragen:**
```
"Lade die Schülerprofile meiner Klasse 5a."
```
→ Claude ruft `foerder-01-schuelerprofile-laden` auf

---

## Best Practices

### Datenschutz

⚠️ **WICHTIG: Datenschutz beachten!**

- **Keine Nachnamen** in Dateinamen, wenn nicht zwingend erforderlich
  - Besser: `Max_M.md` statt `Max_Mustermann.md`
- **Keine sensiblen Gesundheitsdaten** (nur unterrichtsrelevante Informationen)
- **Keine Adressen, Telefonnummern, etc.**
- **Backup verschlüsseln** (z.B. mit FileVault auf macOS)

**Empfehlung:**
- Ordner `4_Klassen_und_Schueler/` in Cloud-Backup **ausschließen**
- Nur lokale Backups auf verschlüsselten Datenträgern

### Aktualisierung

**Schülerprofile regelmäßig aktualisieren:**
- Mindestens 1x pro Halbjahr
- Nach größeren Lernfortschritten
- Bei Änderungen der Unterstützungsbedarfe

**Versionierung (optional):**
```
Klasse_5a_LE/Schuelerprofile/
├── Max_M.md                    # Aktuell
└── _archiv/
    ├── Max_M_2024-01.md       # Januar 2024
    └── Max_M_2024-08.md       # August 2024
```

### Minimalansatz (für den Start)

**Nicht alle Felder sind zwingend erforderlich!**

**Minimal-Profil (ausreichend für Basis-Differenzierung):**
```markdown
# Max M.

## Stammdaten
- **Klasse**: 5a
- **Förderschwerpunkt**: Lernen

## Lernausgangslage
- **Lesen**: Leseniveau Klasse 2
- **Stärken**: Handwerklich geschickt, sozial kompetent
- **Barrieren**: Schriftsprache, Abstraktion

## Besondere Bedürfnisse
- Benötigt visuelle Stützen
- Zeitverlängerung 50%
```

→ Reicht aus für automatische Anpassung der Materialien!

---

## Troubleshooting

### Problem: Claude findet Schülerprofile nicht

**Lösung:**
1. Prüfe Ordnerpfad: `ls -la /Users/[LEHRKRAFT]/Schul-Materialien/4_Klassen_und_Schueler/`
2. Prüfe Schreibrechte: `chmod -R 755 /Users/[LEHRKRAFT]/Schul-Materialien/`
3. Prüfe Klassenname-Format: Muss `Klasse_[X]_[Y]` sein

### Problem: Skill wird nicht aufgerufen

**Lösung:**
- Stelle sicher, dass Förderschul-Skills im Projekt aktiviert sind (siehe `skills-checklist.md`)
- Manuell aufrufen: "Bitte nutze den Skill foerder-01-schuelerprofile-laden für Klasse 5a."

### Problem: Zu viele Schülerprofile, Claude ist überfordert

**Lösung:**
- Erstelle Kurzprofile (Minimalansatz nutzen)
- Fokussiere auf die wichtigsten Informationen
- Bei großen Klassen (>15 SuS): Gruppiere nach Niveaustufen

---

## Beispiel: Komplett ausgefüllte Klassenstruktur

```
4_Klassen_und_Schueler/
├── Klasse_5a_LE/
│   ├── Klasseninfo.md
│   └── Schuelerprofile/
│       ├── Max_M.md
│       ├── Anna_B.md
│       ├── Tom_S.md
│       └── ... (insgesamt 12 Profile)
│
└── Klasse_7b_GE/
    ├── Klasseninfo.md
    └── Schuelerprofile/
        ├── Lisa_K.md
        ├── Jonas_W.md
        └── ... (insgesamt 8 Profile)
```

**Speicherbedarf:** Ca. 5-10 KB pro Profil → bei 20 Schülerprofilen ca. 100-200 KB (sehr gering!)

---

## Weiterführende Informationen

- **Förderschul-Skills Dokumentation**: Siehe `skills-platzhalter/foerder-*/SKILL.md`
- **PROJECT_INSTRUCTIONS Anpassungen**:
  - `projekt-1-unterrichtsreihe/PROJECT_INSTRUCTIONS.md` → Abschnitt "Förderschul-Modus"
  - `projekt-2-arbeitsblatt/PROJECT_INSTRUCTIONS.md` → Abschnitt "Förderschul-Anpassungen"
  - `projekt-3-praesentation/PROJECT_INSTRUCTIONS.md` → Abschnitt "Förderschul-Anpassungen für Präsentationen"

---

**Version:** 1.0
**Stand:** 2025-01-10
**Zielgruppe:** IT-Admins, Förderschul-Lehrkräfte
