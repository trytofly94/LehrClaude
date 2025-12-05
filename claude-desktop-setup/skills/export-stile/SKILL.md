---
name: export-stile
description: "Intelligentes Template-Management für einheitliches Design. MUSS bei JEDEM Export aufgerufen werden. Trigger-Keywords: 'Schuldesign', 'Schulfarben', 'Export-Stil', 'einheitliches Design', 'Schullogo', 'PowerPoint-Vorlage', 'Theme', 'Farbschema', 'Corporate Design', 'Branding', 'Designvorlage', 'exportieren', 'als PDF', 'als DOCX', 'als PPTX'."
---

# Export-Stile: Intelligentes Template-Management

## Zweck

Dieser Skill ist der **zentrale Design-Manager** für alle Unterrichtsmaterialien. Er sorgt für konsistentes Design durch:

1. Automatische Analyse von Vorlagen → KI-optimierte `.ki.txt` Dateien
2. Versionsprüfung: Original-Vorlage neuer? → Automatische Neuanalyse
3. Fallback auf 5 vordefinierte Themes wenn keine Vorlagen existieren

**WICHTIG: Dieser Skill MUSS vor JEDEM Export aufgerufen werden!**

---

## Zentraler Ordner: `5_Export_Stile/`

Alle Design-Vorlagen liegen in einem zentralen Ordner:

```
5_Export_Stile/
├── README.txt                      # Anleitung für Lehrkraft
├── schulfarben.txt                 # Original: Lehrkraft-Definition
├── schulfarben.ki.txt              # KI-Version (automatisch erstellt)
├── schullogo.png                   # Schullogo
├── powerpoint-vorlage.pptx         # Original: PowerPoint-Template
├── powerpoint-vorlage.ki.txt       # KI-Version (automatisch erstellt)
├── arbeitsblatt-vorlage.docx       # Original: Word-Template
└── arbeitsblatt-vorlage.ki.txt     # KI-Version (automatisch erstellt)
```

---

## Workflow

### Schritt 1: Vorlagen-Inventar prüfen

Prüfe den Ordner `5_Export_Stile/` auf vorhandene Dateien:

```
Für jede Datei:
  1. Ist es eine Original-Vorlage? (.pptx, .docx, .txt ohne .ki, .png)
  2. Existiert eine zugehörige .ki.txt?
  3. Vergleiche Änderungsdatum: Original vs. KI-Version
```

### Schritt 2: Bei Bedarf neu analysieren

```
Falls Original neuer als KI-Version ODER KI-Version fehlt:

  1. Original-Datei analysieren
  2. Strukturierte .ki.txt erstellen
  3. Im Ordner 5_Export_Stile/ speichern
  4. Lehrkraft informieren: "Ich habe Ihre Vorlage [NAME] analysiert und
     eine optimierte Version erstellt."
```

### Schritt 3: KI-Version nutzen

```
Für Material-Erstellung:
  1. Lese relevante .ki.txt Datei(en)
  2. Wende extrahierte Vorgaben an
  3. Erstelle Material mit korrektem Design
```

### Schritt 4: Fallback auf vordefinierte Themes

```
Falls KEINE .ki.txt Dateien vorhanden:
  1. Frage Lehrkraft: "Welches Theme soll ich verwenden?"
  2. Zeige die 5 vordefinierten Themes
  3. Nutze gewähltes Theme
```

---

## Format der .ki.txt Dateien

### schulfarben.ki.txt

```
TEMPLATE_TYP: Schulfarben
ANALYSIERT_AM: [Datum]
QUELL_DATEI: schulfarben.txt
QUELL_DATUM: [Datum der Original-Datei]

---

SCHULNAME: [Name der Schule]

FARBEN:
  PRIMAER: #XXXXXX
  SEKUNDAER: #XXXXXX
  AKZENT: #XXXXXX

TYPOGRAFIE:
  SCHRIFT: [Schriftart]
  FALLBACK: [Alternative Schrift]

ANWENDUNG:
  - Ueberschriften: PRIMAER
  - Hintergruende: SEKUNDAER
  - Hervorhebungen: AKZENT
```

### powerpoint-vorlage.ki.txt

```
TEMPLATE_TYP: PowerPoint
ANALYSIERT_AM: [Datum]
QUELL_DATEI: powerpoint-vorlage.pptx
QUELL_DATUM: [Datum der Original-Datei]

---

LAYOUTS:
  1. [Layout-Name]
     - Platzhalter: [Beschreibung]
     - Hintergrund: [Farbe/Stil]

  2. [Layout-Name]
     - Platzhalter: [Beschreibung]
     - Besonderheiten: [Details]

FARBEN:
  PRIMAER: #XXXXXX
  SEKUNDAER: #XXXXXX
  AKZENT: #XXXXXX

SCHRIFTEN:
  UEBERSCHRIFTEN: [Schrift, Groesse]
  TEXT: [Schrift, Groesse]

LOGO:
  POSITION: [Position]
  PLATZHALTER: [SCHULLOGO]
```

### arbeitsblatt-vorlage.ki.txt

```
TEMPLATE_TYP: Arbeitsblatt
ANALYSIERT_AM: [Datum]
QUELL_DATEI: arbeitsblatt-vorlage.docx
QUELL_DATUM: [Datum der Original-Datei]

---

LAYOUT:
  SEITENRAENDER: [Werte]
  KOPFZEILE: [Beschreibung]
  FUSSZEILE: [Beschreibung]

STRUKTUR:
  TITEL: [Format-Beschreibung]
  UEBERSCHRIFTEN: [Format-Beschreibung]
  FLIESSTEXT: [Format-Beschreibung]
  AUFGABEN: [Format-Beschreibung]

FARBEN:
  (uebernommen aus schulfarben.ki.txt falls vorhanden)

LOGO:
  POSITION: [Position]
  PLATZHALTER: [SCHULLOGO]
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

| Export-Typ | Relevante .ki.txt |
|------------|-------------------|
| PPTX | powerpoint-vorlage.ki.txt + schulfarben.ki.txt |
| DOCX | arbeitsblatt-vorlage.ki.txt + schulfarben.ki.txt |
| PDF | schulfarben.ki.txt |
| TXT | schulfarben.ki.txt (fuer Kopfzeilen) |

### Workflow bei Export

1. **Pruefen:** Gibt es relevante .ki.txt Dateien?
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

**Situation:** Lehrkraft moechte Praesentation exportieren, keine Vorlagen vorhanden

**Claude:**
"Bevor ich die Praesentation exportiere, moechte ich sicherstellen, dass das Design Ihren Wuenschen entspricht.

Ich habe keine Design-Vorlagen in Ihrem Ordner `5_Export_Stile/` gefunden.

Welches Theme soll ich verwenden?

1. **Klassisch Schulisch** - Serioes, traditionell (dunkelblau/grau)
2. **Modern Freundlich** - Einladend, zeitgemaess (hellblau/gruen)
3. **Foerderschule Klar** - Hoher Kontrast, grosse Schrift (schwarz/weiss)
4. **Grundschule Bunt** - Kindgerecht, froehlich (pink/gruen)
5. **Oberstufe Professionell** - Minimalistisch, sachlich (anthrazit)

Sie koennen auch eigene Schulfarben definieren, indem Sie eine `schulfarben.txt` in `5_Export_Stile/` ablegen."

---

## Beispiel-Dialog mit Vorlagen

**Situation:** Lehrkraft hat Vorlagen, Original wurde aktualisiert

**Claude:**
"Ich habe festgestellt, dass Ihre PowerPoint-Vorlage kuerzlich aktualisiert wurde.

Ich analysiere die Vorlage neu...

Fertig! Die aktualisierte Version `powerpoint-vorlage.ki.txt` wurde erstellt mit:
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
