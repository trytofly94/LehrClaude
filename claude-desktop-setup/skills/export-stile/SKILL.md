---
name: export-stile
description: "Definiert das visuelle Design für Unterrichtsmaterialien. Trigger-Keywords: 'Schuldesign', 'Schulfarben', 'Export-Stil', 'einheitliches Design', 'Schullogo', 'PowerPoint-Vorlage', 'Theme anwenden', 'Farbschema', 'Corporate Design', 'Branding', 'Designvorlage'."
---

# Export-Stile für Unterrichtsmaterialien

## Zweck

Dieser Skill sorgt für konsistentes, professionelles Design aller exportierten Unterrichtsmaterialien. Er ermöglicht sowohl die Verwendung vordefinierter Themes als auch individueller Schulfarben und PowerPoint-Vorlagen.

## Wann dieser Skill verwendet werden soll

Aktiviere diesen Skill wenn:

- Die Lehrkraft nach einheitlichem Design fragt
- Schulfarben oder Schullogo verwendet werden sollen
- Ein bestimmtes Theme oder Farbschema gewünscht ist
- Eine PowerPoint-Vorlage genutzt werden soll
- Materialien "professionell" oder "einheitlich" aussehen sollen

## Workflow

### Schritt 1: Prüfe Custom-Einstellungen

Prüfe den Ordner `5_Export_Stile/` auf vorhandene Dateien:

1. **`schulfarben.txt`** vorhanden?
   - Ja → Nutze diese Farben für alle Materialien
   - Nein → Weiter zu Schritt 2

2. **`powerpoint-vorlage.pptx`** vorhanden?
   - Ja → Analysiere Layouts und nutze sie für Präsentationen
   - Nein → Nutze Standard-Layouts mit gewählten Farben

3. **`schullogo.png`** vorhanden?
   - Ja → Füge Platzhalter `[SCHULLOGO]` an passenden Stellen ein
   - Nein → Keine Logo-Referenz

### Schritt 2: Theme-Auswahl (falls keine Custom-Einstellungen)

Falls keine `schulfarben.txt` vorhanden ist, frage die Lehrkraft:

"Welches Design-Theme soll ich für Ihre Materialien verwenden?"

Zeige die 5 vordefinierten Themes mit kurzer Beschreibung.

### Schritt 3: Design anwenden

Wende den gewählten Stil konsistent auf alle Materialien an:

- **Arbeitsblätter:** Kopfzeile mit Farben, einheitliche Schrift
- **Präsentationen:** Foliendesign, Farbschema, Schriften
- **Alle Exports:** Einheitliches Erscheinungsbild

---

## Vordefinierte Themes

### 1. Klassisch Schulisch

**Beschreibung:** Seriös und traditionell, für formelle Unterrichtsmaterialien

| Element | Wert |
|---------|------|
| Primärfarbe | #2C3E50 (Dunkelblau) |
| Sekundärfarbe | #ECF0F1 (Hellgrau) |
| Akzentfarbe | #E74C3C (Rot) |
| Schrift | Arial / Helvetica |
| Stil | Klassisch, professionell |

**Verwendung:**
- Überschriften: Primärfarbe
- Hintergrund: Sekundärfarbe
- Wichtige Elemente: Akzentfarbe
- Text: Schwarz auf hellem Grund

---

### 2. Modern Freundlich

**Beschreibung:** Einladend und zeitgemäß, wirkt offen und zugänglich

| Element | Wert |
|---------|------|
| Primärfarbe | #3498DB (Hellblau) |
| Sekundärfarbe | #F8F9FA (Fast-Weiß) |
| Akzentfarbe | #2ECC71 (Grün) |
| Schrift | Open Sans / Calibri |
| Stil | Modern, einladend |

**Verwendung:**
- Überschriften: Primärfarbe
- Hintergrund: Sekundärfarbe
- Erfolg/Positiv: Akzentfarbe
- Text: Dunkelgrau (#333333)

---

### 3. Förderschule Klar

**Beschreibung:** Maximaler Kontrast und große Schrift für beste Lesbarkeit

| Element | Wert |
|---------|------|
| Primärfarbe | #000000 (Schwarz) |
| Sekundärfarbe | #FFFFFF (Weiß) |
| Akzentfarbe | #FFC107 (Gelb) |
| Schrift | Verdana, mind. 14pt |
| Stil | Hoher Kontrast, barrierefrei |

**Verwendung:**
- Überschriften: Schwarz, fett, groß (mind. 18pt)
- Hintergrund: Reinweiß
- Hervorhebungen: Gelb hinterlegt
- Text: Schwarz, mind. 14pt
- Viel Weißraum zwischen Elementen

**Besondere Regeln:**
- Keine Kursivschrift
- Keine dünnen Linien
- Große Abstände
- Klare Strukturierung

---

### 4. Grundschule Bunt

**Beschreibung:** Kindgerecht und fröhlich, motivierend für jüngere Schüler

| Element | Wert |
|---------|------|
| Primärfarbe | #E91E63 (Pink) |
| Sekundärfarbe | #FFF8E1 (Creme) |
| Akzentfarbe | #4CAF50 (Grün) |
| Schrift | Comic Sans MS / Andika |
| Stil | Spielerisch, fröhlich |

**Verwendung:**
- Überschriften: Primärfarbe, groß
- Hintergrund: Warmes Creme
- Erfolg/Belohnung: Grün
- Text: Dunkelbraun (#4E342E)
- Abgerundete Ecken bei Boxen

**Besondere Regeln:**
- Größere Schrift (mind. 14pt)
- Einfache, klare Sprache
- Platz für Illustrationen
- Freundliche Ansprache

---

### 5. Oberstufe Professionell

**Beschreibung:** Minimalistisch und sachlich, für anspruchsvolle Inhalte

| Element | Wert |
|---------|------|
| Primärfarbe | #263238 (Anthrazit) |
| Sekundärfarbe | #FAFAFA (Weiß) |
| Akzentfarbe | #607D8B (Blaugrau) |
| Schrift | Roboto / Calibri |
| Stil | Elegant, reduziert |

**Verwendung:**
- Überschriften: Anthrazit, schlank
- Hintergrund: Reinweiß
- Trennlinien: Blaugrau
- Text: Anthrazit
- Minimale Dekoration

**Besondere Regeln:**
- Viel Weißraum
- Klare Typografie-Hierarchie
- Keine überflüssigen Elemente
- Wissenschaftlicher Stil

---

## Custom Schulfarben

### Dateiformat: `schulfarben.txt`

Die Lehrkraft kann eigene Schulfarben definieren. Die Datei muss im Ordner `5_Export_Stile/` liegen.

**Format:**

```
SCHULNAME: Beispielschule Musterstadt
PRIMAER: #1A5F7A
SEKUNDAER: #F5F5F5
AKZENT: #FFC857
SCHRIFT: Arial
```

**Erklärung:**
- `SCHULNAME:` Name der Schule (für Kopf-/Fußzeilen)
- `PRIMAER:` Hauptfarbe (Hex-Code) - für Überschriften, wichtige Elemente
- `SEKUNDAER:` Hintergrundfarbe (Hex-Code) - für Flächen, Hintergründe
- `AKZENT:` Akzentfarbe (Hex-Code) - für Hervorhebungen
- `SCHRIFT:` Bevorzugte Schriftart

### Anwendung

Wenn `schulfarben.txt` gefunden wird:

1. Lese die definierten Farben
2. Wende sie auf alle Materialien an
3. Informiere die Lehrkraft: "Ich verwende Ihre Schulfarben für dieses Material."

---

## Logo-Integration

### Datei: `schullogo.png`

Falls ein Schullogo im Ordner `5_Export_Stile/` abgelegt ist:

**Bei Arbeitsblättern:**
```
[SCHULLOGO]                                    Fach: ____________
                                               Datum: ___________
```

**Bei Präsentationen:**
- Titelfolie: `[SCHULLOGO]` in der Ecke
- Folgende Folien: Kleine Logo-Referenz in Fußzeile

**Hinweis für Lehrkraft:**
"Ich habe Platzhalter [SCHULLOGO] eingefügt. Ersetzen Sie diese durch Ihr Schullogo aus: 5_Export_Stile/schullogo.png"

---

## PowerPoint-Template Support

### Datei: `powerpoint-vorlage.pptx`

Falls eine PowerPoint-Vorlage im Ordner `5_Export_Stile/` abgelegt ist:

### Analyse-Workflow

1. **Template analysieren:**
   - Verfügbare Folienlayouts identifizieren
   - Farbschema extrahieren
   - Schriftarten notieren

2. **Layout-Mapping:**
   - Titelfolie → Für Präsentationstitel
   - Inhaltsfolie → Für Hauptinhalte
   - Bild-Folie → Für visuelle Inhalte
   - Abschlussfolie → Für Zusammenfassung

3. **Erstellung:**
   - Nutze die Layouts aus dem Template
   - Bewahre alle Formatierungen
   - Halte Farbschema und Schriften ein

### Template-Anforderungen

**Mindestens benötigt:**
- Titelfolie (mit Platz für Titel und Untertitel)
- Inhaltsfolie (mit Überschrift und Textbereich)

**Empfohlen:**
- Folie mit Bild/Grafik
- Folie mit zwei Spalten
- Abschlussfolie

### Anwendung

"Ich habe Ihre PowerPoint-Vorlage analysiert und verwende folgende Layouts:
- Titelfolie: [Layout-Name]
- Inhaltsfolien: [Layout-Name]
- [weitere...]"

---

## Integration mit anderen Skills

Dieser Skill arbeitet zusammen mit:

- **mat-02-arbeitsblatt-erstellen:** Übergibt Farbschema und Schriftart
- **mat-03-powerpoint-erstellen:** Übergibt Template und Farben
- **export-txt/pdf/docx/pptx:** Wendet Stil beim Export an

### Automatische Aktivierung

Dieser Skill wird automatisch konsultiert wenn:
- Ein Material-Skill (mat-02, mat-03) aktiv ist
- Ein Export-Skill verwendet wird
- Die Lehrkraft nach "Design" oder "Farben" fragt

---

## Qualitätsprüfung

### Vor Abschluss prüfen:

- [ ] Farben konsistent im gesamten Material verwendet
- [ ] Schriftart einheitlich
- [ ] Logo-Platzhalter korrekt gesetzt (falls Logo vorhanden)
- [ ] Kontrastverhältnisse ausreichend (besonders bei Förderschule Klar)
- [ ] Bei Custom-Farben: Hex-Codes korrekt übernommen

---

## Beispiel: Theme-Auswahl Dialog

**Claude:**
"Welches Design-Theme soll ich für Ihr Arbeitsblatt verwenden?

1. **Klassisch Schulisch** - Seriös, traditionell (dunkelblau/grau)
2. **Modern Freundlich** - Einladend, zeitgemäß (hellblau/grün)
3. **Förderschule Klar** - Hoher Kontrast, große Schrift (schwarz/weiß)
4. **Grundschule Bunt** - Kindgerecht, fröhlich (pink/grün)
5. **Oberstufe Professionell** - Minimalistisch, sachlich (anthrazit)

Oder haben Sie eigene Schulfarben in `5_Export_Stile/schulfarben.txt` definiert?"

**Lehrkraft:** "Nummer 2 bitte"

**Claude:**
"Ich verwende das Theme 'Modern Freundlich' mit Hellblau (#3498DB) als Hauptfarbe und Grün (#2ECC71) als Akzent."
