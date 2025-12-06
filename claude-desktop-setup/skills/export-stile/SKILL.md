---
name: export-stile
description: "Intelligentes Template-Management für einheitliches Design. MUSS bei JEDEM Export aufgerufen werden. Trigger-Keywords: 'Schuldesign', 'Schulfarben', 'Export-Stil', 'einheitliches Design', 'Schullogo', 'PowerPoint-Vorlage', 'Theme', 'Farbschema', 'Corporate Design', 'Branding', 'Designvorlage', 'exportieren', 'als PDF', 'als DOCX', 'als PPTX'."
---

# Export-Stile: Intelligentes Template-Management

## Zweck

Dieser Skill ist der **zentrale Design-Manager** für alle Unterrichtsmaterialien. Er sorgt für konsistentes Design durch:

1. Automatische Analyse von Vorlagen → KI-optimierte `.ki.md` Dateien
2. Versionsprüfung: Original-Vorlage neuer? → Automatische Neuanalyse
3. Fallback auf 5 vordefinierte Themes wenn keine Vorlagen existieren

**WICHTIG: Dieser Skill MUSS vor JEDEM Export aufgerufen werden!**

---

## Zentraler Ordner: `5_Export_Stile/`

Alle Design-Vorlagen liegen in einem zentralen Ordner:

```
5_Export_Stile/
├── README.md                       # Anleitung für Lehrkraft
├── schulfarben.md                  # Original: Lehrkraft-Definition
├── schulfarben.ki.md               # KI-Version (automatisch erstellt)
├── schullogo.png                   # Schullogo
├── powerpoint-vorlage.pptx         # Original: PowerPoint-Template
├── powerpoint-vorlage.ki.md        # KI-Version (automatisch erstellt)
├── arbeitsblatt-vorlage.docx       # Original: Word-Template
└── arbeitsblatt-vorlage.ki.md      # KI-Version (automatisch erstellt)
```

---

## Workflow

### Schritt 1: Vorlagen-Inventar prüfen

Prüfe den Ordner `5_Export_Stile/` auf vorhandene Dateien:

```
Für jede Datei:
  1. Ist es eine Original-Vorlage? (.pptx, .docx, .md ohne .ki, .png)
  2. Existiert eine zugehörige .ki.md?
  3. Vergleiche Änderungsdatum: Original vs. KI-Version
```

### Schritt 2: Bei Bedarf neu analysieren

```
Falls Original neuer als KI-Version ODER KI-Version fehlt:

  1. Original-Datei analysieren
  2. Strukturierte .ki.md erstellen
  3. Im Ordner 5_Export_Stile/ speichern
  4. Lehrkraft informieren: "Ich habe Ihre Vorlage [NAME] analysiert und
     eine optimierte Version erstellt."
```

### Schritt 3: KI-Version nutzen

```
Für Material-Erstellung:
  1. Lese relevante .ki.md Datei(en)
  2. Wende extrahierte Vorgaben an
  3. Erstelle Material mit korrektem Design
```

### Schritt 4: Fallback auf vordefinierte Themes

```
Falls KEINE .ki.md Dateien vorhanden:
  1. Frage Lehrkraft: "Welches Theme soll ich verwenden?"
  2. Zeige die 5 vordefinierten Themes
  3. Nutze gewähltes Theme
```

---

## Format der .ki.md Dateien

### schulfarben.ki.md

```markdown
---
template_typ: Schulfarben
analysiert_am: [Datum]
quell_datei: schulfarben.md
quell_datum: [Datum der Original-Datei]
---

# Schulfarben

## Schulname
[Name der Schule]

## Farben
- **Primär:** #XXXXXX
- **Sekundär:** #XXXXXX
- **Akzent:** #XXXXXX

## Typografie
- **Schrift:** [Schriftart]
- **Fallback:** [Alternative Schrift]

## Anwendung
- Überschriften: Primär
- Hintergründe: Sekundär
- Hervorhebungen: Akzent
```

### powerpoint-vorlage.ki.md

```markdown
---
template_typ: PowerPoint
analysiert_am: [Datum]
quell_datei: powerpoint-vorlage.pptx
quell_datum: [Datum der Original-Datei]
---

# PowerPoint-Vorlage Analyse

## Layouts

### 1. [Layout-Name]
- **Platzhalter:** [Beschreibung]
- **Hintergrund:** [Farbe/Stil]

### 2. [Layout-Name]
- **Platzhalter:** [Beschreibung]
- **Besonderheiten:** [Details]

## Farben
- **Primär:** #XXXXXX
- **Sekundär:** #XXXXXX
- **Akzent:** #XXXXXX

## Schriften
- **Überschriften:** [Schrift, Größe]
- **Text:** [Schrift, Größe]

## Logo
- **Position:** [Position]
- **Platzhalter:** `[SCHULLOGO]`
```

### arbeitsblatt-vorlage.ki.md

```markdown
---
template_typ: Arbeitsblatt
analysiert_am: [Datum]
quell_datei: arbeitsblatt-vorlage.docx
quell_datum: [Datum der Original-Datei]
---

# Arbeitsblatt-Vorlage Analyse

## Layout
- **Seitenränder:** [Werte]
- **Kopfzeile:** [Beschreibung]
- **Fußzeile:** [Beschreibung]

## Struktur
- **Titel:** [Format-Beschreibung]
- **Überschriften:** [Format-Beschreibung]
- **Fließtext:** [Format-Beschreibung]
- **Aufgaben:** [Format-Beschreibung]

## Farben
*(übernommen aus schulfarben.ki.md falls vorhanden)*

## Logo
- **Position:** [Position]
- **Platzhalter:** `[SCHULLOGO]`
```

---

## Vordefinierte Themes (Fallback)

Falls keine Custom-Vorlagen existieren, biete diese 5 Themes an:

### 1. Klassisch Schulisch

**Beschreibung:** Serioes und traditionell, fuer formelle Unterrichtsmaterialien

| Element | Wert |
|---------|------|
| Primaerfarbe | #2C3E50 (Dunkelblau) |
| Sekundaerfarbe | #ECF0F1 (Hellgrau) |
| Akzentfarbe | #E74C3C (Rot) |
| Schrift | Arial / Helvetica |

### 2. Modern Freundlich

**Beschreibung:** Einladend und zeitgemaess, wirkt offen und zugaenglich

| Element | Wert |
|---------|------|
| Primaerfarbe | #3498DB (Hellblau) |
| Sekundaerfarbe | #F8F9FA (Fast-Weiss) |
| Akzentfarbe | #2ECC71 (Gruen) |
| Schrift | Open Sans / Calibri |

### 3. Foerderschule Klar

**Beschreibung:** Maximaler Kontrast und grosse Schrift fuer beste Lesbarkeit

| Element | Wert |
|---------|------|
| Primaerfarbe | #000000 (Schwarz) |
| Sekundaerfarbe | #FFFFFF (Weiss) |
| Akzentfarbe | #FFC107 (Gelb) |
| Schrift | Verdana, mind. 14pt |

**Besondere Regeln:**
- Keine Kursivschrift
- Keine duennen Linien
- Grosse Abstaende
- Klare Strukturierung

### 4. Grundschule Bunt

**Beschreibung:** Kindgerecht und froehlich, motivierend fuer juengere Schueler

| Element | Wert |
|---------|------|
| Primaerfarbe | #E91E63 (Pink) |
| Sekundaerfarbe | #FFF8E1 (Creme) |
| Akzentfarbe | #4CAF50 (Gruen) |
| Schrift | Comic Sans MS / Andika |

**Besondere Regeln:**
- Groessere Schrift (mind. 14pt)
- Platz fuer Illustrationen
- Abgerundete Ecken bei Boxen

### 5. Oberstufe Professionell

**Beschreibung:** Minimalistisch und sachlich, fuer anspruchsvolle Inhalte

| Element | Wert |
|---------|------|
| Primaerfarbe | #263238 (Anthrazit) |
| Sekundaerfarbe | #FAFAFA (Weiss) |
| Akzentfarbe | #607D8B (Blaugrau) |
| Schrift | Roboto / Calibri |

**Besondere Regeln:**
- Viel Weissraum
- Klare Typografie-Hierarchie
- Minimale Dekoration

---

## Integration mit Export-Skills

### Automatische Erkennung

| Export-Typ | Relevante .ki.md |
|------------|------------------|
| PPTX | powerpoint-vorlage.ki.md + schulfarben.ki.md |
| DOCX | arbeitsblatt-vorlage.ki.md + schulfarben.ki.md |
| PDF | schulfarben.ki.md |
| Markdown | schulfarben.ki.md (für Kopfzeilen) |

### Workflow bei Export

1. **Prüfen:** Gibt es relevante .ki.md Dateien?
2. **Aktualisieren:** Ist Original neuer? → Neu analysieren
3. **Anwenden:** Design-Vorgaben auf Material anwenden
4. **Exportieren:** Fertiges Material speichern

---

## Logo-Integration

Falls `schullogo.png` im Ordner vorhanden:

1. Fuege Platzhalter `[SCHULLOGO]` an passenden Stellen ein
2. Gib Hinweis: "Ersetzen Sie [SCHULLOGO] durch Ihr Logo aus dem Ordner 5_Export_Stile/"

**Positionen:**
- Arbeitsblatt: Kopfzeile links
- Praesentation: Titelfolie + Fusszeile
- PDF: Kopfzeile

---

## Beispiel-Dialog

**Situation:** Lehrkraft möchte Präsentation exportieren, keine Vorlagen vorhanden

**Claude:**
"Bevor ich die Präsentation exportiere, möchte ich sicherstellen, dass das Design Ihren Wünschen entspricht.

Ich habe keine Design-Vorlagen in Ihrem Ordner `5_Export_Stile/` gefunden.

Welches Theme soll ich verwenden?

1. **Klassisch Schulisch** - Seriös, traditionell (dunkelblau/grau)
2. **Modern Freundlich** - Einladend, zeitgemäß (hellblau/grün)
3. **Förderschule Klar** - Hoher Kontrast, große Schrift (schwarz/weiß)
4. **Grundschule Bunt** - Kindgerecht, fröhlich (pink/grün)
5. **Oberstufe Professionell** - Minimalistisch, sachlich (anthrazit)

Sie können auch eigene Schulfarben definieren, indem Sie eine `schulfarben.md` in `5_Export_Stile/` ablegen."

---

## Beispiel-Dialog mit Vorlagen

**Situation:** Lehrkraft hat Vorlagen, Original wurde aktualisiert

**Claude:**
"Ich habe festgestellt, dass Ihre PowerPoint-Vorlage kürzlich aktualisiert wurde.

Ich analysiere die Vorlage neu...

Fertig! Die aktualisierte Version `powerpoint-vorlage.ki.md` wurde erstellt mit:
- 4 Folienlayouts erkannt
- Farbschema: Blau (#1A5F7A) / Weiss / Gelb (#FFC857)
- Schrift: Arial

Ich wende diese Einstellungen jetzt auf Ihre Praesentation an."

---

## Qualitaetspruefung

Vor Abschluss jeden Exports pruefen:

- [ ] Farben konsistent im gesamten Material verwendet
- [ ] Schriftart einheitlich
- [ ] Logo-Platzhalter korrekt gesetzt (falls Logo vorhanden)
- [ ] Kontrastverhaeltnisse ausreichend
- [ ] Bei Foerderschule Klar: Mindestschriftgroesse eingehalten
