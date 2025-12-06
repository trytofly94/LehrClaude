# Export-Stile - Design für Unterrichtsmaterialien

Dieser Ordner ermöglicht Ihnen, das Design Ihrer Unterrichtsmaterialien anzupassen. Claude verwendet diese Einstellungen automatisch.

---

## So funktioniert es

1. Sie legen Ihre Vorlagen hier ab (z.B. `schulfarben.md`, `powerpoint-vorlage.pptx`)
2. Claude analysiert diese automatisch und erstellt eine `.ki.md` Version
3. Bei jedem Export nutzt Claude die `.ki.md` für konsistentes Design
4. Wenn Sie eine Vorlage ändern, erkennt Claude das und aktualisiert die `.ki.md`

### Beispiel

- Sie legen `schulfarben.md` ab
- Claude erstellt automatisch `schulfarben.ki.md` (optimiert für KI)
- Bei jedem Export nutzt Claude die Farben aus `schulfarben.ki.md`
- Ändern Sie `schulfarben.md`? Die `.ki.md` wird automatisch aktualisiert!

---

## Was sind .ki.md Dateien?

Claude erstellt für jede Vorlage eine optimierte `.ki.md` Datei:

| Original | KI-Version |
|----------|------------|
| `schulfarben.md` | `schulfarben.ki.md` |
| `powerpoint-vorlage.pptx` | `powerpoint-vorlage.ki.md` |
| `arbeitsblatt-vorlage.docx` | `arbeitsblatt-vorlage.ki.md` |

Diese `.ki.md` Dateien:
- Werden **automatisch** von Claude erstellt
- Enthalten eine strukturierte Version Ihrer Vorgaben
- Werden aktualisiert, wenn Ihre Originalvorlage neuer ist
- Können Sie sich anschauen, aber müssen Sie nicht bearbeiten

**Wichtig:** Bearbeiten Sie nur Ihre Original-Dateien (ohne `.ki`), nicht die `.ki.md` Dateien! Diese werden automatisch neu generiert.

---

## Ordnerinhalt

```
5_Export_Stile/
├── README.md                   ← Diese Datei
├── schulfarben-beispiel.md     ← Vorlage zum Kopieren
│
├── schulfarben.md              ← Ihre Schulfarben (optional)
├── schulfarben.ki.md           ← [automatisch erstellt]
│
├── schullogo.png               ← Ihr Schullogo (optional)
│
├── powerpoint-vorlage.pptx     ← Ihre PPTX-Vorlage (optional)
├── powerpoint-vorlage.ki.md    ← [automatisch erstellt]
│
├── arbeitsblatt-vorlage.docx   ← Ihre DOCX-Vorlage (optional)
└── arbeitsblatt-vorlage.ki.md  ← [automatisch erstellt]
```

---

## Vordefinierte Themes (Fallback)

Falls Sie keine eigenen Einstellungen vornehmen, fragt Claude Sie nach einem der 5 vordefinierten Themes:

### 1. Klassisch Schulisch
- Dunkelblau/Grau, seriös, traditionell
- Gut für: Formelle Materialien, Oberstufe

### 2. Modern Freundlich
- Hellblau/Grün, einladend, zeitgemäß
- Gut für: Allgemeine Materialien, alle Klassenstufen

### 3. Förderschule Klar
- Schwarz/Weiß, hoher Kontrast, große Schrift
- Gut für: Barrierefreie Materialien, Förderschule

### 4. Grundschule Bunt
- Pink/Grün, kindgerecht, fröhlich
- Gut für: Grundschule, motivierende Materialien

### 5. Oberstufe Professionell
- Anthrazit/Weiß, minimalistisch, sachlich
- Gut für: Wissenschaftliche Inhalte, Abitur

---

## Eigene Schulfarben definieren

Erstellen Sie eine Datei `schulfarben.md` in diesem Ordner mit folgendem Inhalt:

```markdown
# Schulfarben

## Farbschema
- **Schulname:** Ihre Schule
- **Primärfarbe:** #1A5F7A
- **Sekundärfarbe:** #F5F5F5
- **Akzentfarbe:** #FFC857
- **Schriftart:** Arial
```

Ersetzen Sie die Hex-Codes durch Ihre Schulfarben.

### Wo finde ich meine Schulfarben?
- Fragen Sie Ihre Schulleitung oder den Webmaster
- Schauen Sie auf Ihrer Schulwebsite (Rechtsklick → Element untersuchen)
- Nutzen Sie ein Online-Tool wie coolors.co

### Beispiel-Datei
Eine Vorlage finden Sie unter: `schulfarben-beispiel.md`

---

## Schullogo hinzufügen

Legen Sie Ihr Schullogo als `schullogo.png` in diesem Ordner ab.

**Anforderungen:**
- Format: PNG (mit transparentem Hintergrund empfohlen)
- Größe: Mind. 200x200 Pixel
- Dateiname: `schullogo.png` (exakt so)

Claude wird dann Platzhalter `[SCHULLOGO]` in Materialien einfügen, die Sie durch Ihr Logo ersetzen können.

---

## PowerPoint-Vorlage verwenden

Falls Ihre Schule eine PowerPoint-Vorlage hat:

1. Speichern Sie die Vorlage als `powerpoint-vorlage.pptx` hier ab
2. Claude analysiert automatisch die verfügbaren Layouts
3. Die Analyse wird in `powerpoint-vorlage.ki.md` gespeichert
4. Neue Präsentationen werden mit Ihrer Vorlage erstellt

**Anforderungen an die Vorlage:**
- Mindestens: Titelfolie + Inhaltsfolie
- Empfohlen: Bild-Folie, Zwei-Spalten-Folie, Abschlussfolie
- Farbschema und Schriften werden übernommen

---

## Arbeitsblatt-Vorlage verwenden

Falls Ihre Schule eine Word-Vorlage hat:

1. Speichern Sie die Vorlage als `arbeitsblatt-vorlage.docx` hier ab
2. Claude analysiert automatisch die Struktur
3. Die Analyse wird in `arbeitsblatt-vorlage.ki.md` gespeichert
4. Neue Arbeitsblätter werden mit Ihrer Vorlage erstellt

**Anforderungen an die Vorlage:**
- Klare Kopf- und Fußzeile
- Definierte Überschriften-Formate
- Platz für Logo in der Kopfzeile

---

## Tipps

1. **Sie müssen nichts einstellen**
   Claude fragt Sie einfach nach einem Theme, wenn Sie Materialien erstellen.

2. **Änderungen werden erkannt**
   Ändern Sie eine Vorlage, erkennt Claude das automatisch und aktualisiert die `.ki.md` beim nächsten Export.

3. **Farben testen**
   Erstellen Sie ein einfaches Testmaterial, um Ihre Farben zu prüfen.

4. **Kontrast beachten**
   Achten Sie auf ausreichenden Kontrast zwischen Text und Hintergrund. Besonders wichtig bei Fördermaterialien!

5. **`.ki.md` Dateien nicht löschen**
   Diese werden von Claude benötigt. Wenn Sie sie löschen, werden sie einfach neu erstellt.

---

## Hilfe

### Hex-Farbcodes
- Bestehen aus `#` gefolgt von 6 Zeichen (0-9, A-F)
- Beispiele: `#FF0000` = Rot, `#00FF00` = Grün, `#0000FF` = Blau

### Online-Tools für Farbauswahl
- https://coolors.co/
- https://color.adobe.com/
- https://paletton.com/

---

## Schnellzugriff auf diesen Ordner

So finden Sie diesen Ordner im Finder:

1. Öffnen Sie den Finder
2. Klicken Sie auf "Gehe zu" → "Gehe zum Ordner..." (oder drücken Sie: `⌘ + Shift + G`)
3. Geben Sie ein: `~/Schul-Materialien/5_Export_Stile`
4. Drücken Sie Enter

**Tipp:** Ziehen Sie den Ordner in die Finder-Seitenleiste für Schnellzugriff!
