# Projekt: Klassenverwaltung für Förderschullehrkräfte

## Zweck

Dieses Claude Desktop Projekt ist ein **Klassenverwaltungs-Assistent**, der Förderschullehrkräfte bei der systematischen Erfassung, Verwaltung und Nutzung von Schülerprofilen unterstützt. Das System ermöglicht:

- Strukturierte Erstellung differenzierter Schülerprofile
- Validierung und Qualitätssicherung der erfassten Daten
- Übersichtliche Klassenverwaltung mit Gruppierungsfunktionen
- Automatische Differenzierungs-Empfehlungen basierend auf Schülerprofilen

**Zielgruppe:** Lehrkräfte an Förderschulen und inklusiven Schulen

---

## Grundprinzipien

### 1. Datenschutz-First-Ansatz

**Pseudonymisierung:**
- Alle Schülerprofile verwenden **Pseudonyme** (z.B. "Schüler_A", "Lernende_7")
- KEINE echten Namen, Geburtsdaten oder personenbezogene Daten werden gespeichert
- Lehrkraft führt extern (analog) eine verschlüsselte Zuordnungstabelle

**Lokale Speicherung:**
- Alle Daten bleiben auf dem lokalen Rechner (via MCP Filesystem)
- Keine Cloud-Speicherung, keine Weitergabe an Dritte
- Volle Kontrolle der Lehrkraft über alle Dateien

**Minimalprinzip:**
- Nur didaktisch relevante Informationen werden erfasst
- Keine medizinischen Details (nur pädagogische Auswirkungen)
- Fokus auf Lernstand, Förderbedarfe und Unterrichtsmethoden

### 2. Validierung & Qualitätssicherung

**Automatische Checks:**
- Vollständigkeit der Pflichtfelder
- Konsistenz der Angaben (z.B. Förderschwerpunkt ↔ Unterstützungsbedarfe)
- Plausibilität der Differenzierungsstufen

**Feedback-Schleifen:**
- System gibt Hinweise bei fehlenden oder inkonsistenten Angaben
- Vorschläge für Vervollständigung
- Warnung bei ungewöhnlichen Kombinationen

### 3. Template-basierter Ansatz

**Standardisierte Struktur:**
- Alle Schülerprofile folgen demselben Schema
- Vereinfacht Vergleichbarkeit und Übersichtlichkeit
- Erleichtert automatische Differenzierungs-Empfehlungen

**Anpassbar:**
- Templates können von Lehrkraft erweitert werden
- Zusätzliche Felder für schulspezifische Anforderungen

---

## Benötigte Skills

Dieses Projekt nutzt **4 spezialisierte Klassenverwaltungs-Skills**:

### Kern-Skills (alle 4 erforderlich)

1. **klasse-01-schuelerprofil-erstellen**
   - Strukturierte Erfassung von Schülerprofilen
   - Interaktiver Fragebogen-Ansatz
   - Output: Validiertes Schülerprofil (Markdown)

2. **klasse-02-schuelerprofil-validieren**
   - Automatische Qualitätskontrolle
   - Konsistenzprüfung
   - Verbesserungsvorschläge

3. **klasse-03-klasse-verwalten**
   - Übersicht über alle Schülerprofile einer Klasse
   - Gruppierungsfunktionen (nach Förderbedarf, Leistungsniveau)
   - Export von Klassenübersichten

4. **klasse-04-differenzierungs-empfehlung**
   - Generiert unterrichtsbezogene Differenzierungs-Empfehlungen
   - Basiert auf Schülerprofilen und Unterrichtsthema
   - Output: Konkrete Differenzierungsvorschläge (nach Wember)

### Unterstützende Skills (optional, aus anderen Projekten)

- **05-lernziele-operationalisieren** - Für adaptive Lernziele pro Schülergruppe
- **export-markdown** - Schülerprofile als Markdown speichern
- **export-pdf** - Klassenübersichten als PDF exportieren

---

## MCP Filesystem Integration

### Lese-Zugriff (Ressourcen)

Das System greift auf folgende zentrale Ressourcen zu:

```
{{INSTALLATION_PATH}}/2_Zentrale_Ressourcen/
├── Didaktik/
│   ├── Wember-Differenzierung.md       # 3-Stufen-Modell
│   └── Bloom-Taxonomie.md              # Für Lernziel-Anpassung
└── Templates/
    └── schuelerprofil-vorlage.md       # Standard-Template
```

### Schreib-Zugriff (Speicherort)

Alle Schülerprofile und Klassenübersichten werden hier gespeichert:

```
{{INSTALLATION_PATH}}/1_Exportierte_Ergebnisse/Klassenverwaltung/
├── Schuelerprofile/
│   ├── Schueler_A.md
│   ├── Schueler_B.md
│   └── ...
├── Klassenuebersichten/
│   ├── Klasse_7a_Uebersicht.md
│   └── Klasse_7a_Gruppierung_Foerderbedarf.md
└── Differenzierungsplaene/
    └── Klasse_7a_Photosynthese_Differenzierung.md
```

---

## Workflow: Schülerprofil erstellen

### Schritt 1: Initialisierung

**Prompt der Lehrkraft:**
```
"Ich möchte ein neues Schülerprofil erstellen."
```

**Claude startet Skill:** `klasse-01-schuelerprofil-erstellen`

### Schritt 2: Interaktive Erfassung

Der Skill fragt folgende Informationen ab:

#### A. Basisdaten
- **Pseudonym** (z.B. "Schüler_A", "Lernende_7")
- **Klassenstufe** (z.B. "7. Klasse")
- **Schulform** (z.B. "Förderschule Lernen")

#### B. Förderschwerpunkt(e)
- Lernen
- Emotional-soziale Entwicklung
- Sprache
- Körperlich-motorische Entwicklung
- Geistige Entwicklung
- Hören und Kommunikation
- Sehen

(Mehrfachnennung möglich)

#### C. Lernstand (nach Fächern)
- **Deutsch:** Lesestufe, Schreibkompetenz, Textverständnis
- **Mathematik:** Zahlenraum, Rechenoperationen, Anwendungsaufgaben
- **Weitere Fächer** (optional)

#### D. Differenzierungsstufe (nach Wember)
- **Basis:** Regelanforderungen des Lehrplans
- **Unterstützung:** Vereinfachte Anforderungen, mehr Hilfestellung
- **Erweiterung:** Vertiefte Anforderungen, Transfer

#### E. Unterstützungsbedarfe
- Visualisierung (Bilder, Diagramme, Modelle)
- Strukturierung (Checklisten, Schrittfolgen)
- Sprachliche Vereinfachung
- Zusätzliche Zeit
- Digitale Hilfsmittel
- Peer-Unterstützung
- ...

#### F. Stärken & Interessen
- Was kann der/die Schüler*in besonders gut?
- Welche Themen motivieren?
- Welche Lernkanäle funktionieren am besten (auditiv, visuell, kinästhetisch)?

#### G. Bewährte Methoden
- Welche Unterrichtsmethoden haben sich bewährt?
- Welche sollten vermieden werden?

### Schritt 3: Validierung

**Claude startet automatisch:** `klasse-02-schuelerprofil-validieren`

Der Skill prüft:
- Sind alle Pflichtfelder ausgefüllt?
- Passt der Förderschwerpunkt zu den Unterstützungsbedarfen?
- Ist die Differenzierungsstufe plausibel zum Lernstand?

**Falls Fehler/Inkonsistenzen:**
- Claude gibt konkrete Hinweise
- Lehrkraft kann nachbessern
- Erneute Validierung

### Schritt 4: Speicherung

**Nach erfolgreicher Validierung:**
```
Schülerprofil wurde erfolgreich erstellt und gespeichert:
{{INSTALLATION_PATH}}/1_Exportierte_Ergebnisse/Klassenverwaltung/Schuelerprofile/Schueler_A.md
```

---

## Workflow: Klasse verwalten

### Schritt 1: Klassenübersicht anfordern

**Prompt der Lehrkraft:**
```
"Zeige mir eine Übersicht meiner Klasse 7a."
```

**Claude startet:** `klasse-03-klasse-verwalten`

### Schritt 2: Übersicht generieren

Der Skill liest alle Schülerprofile aus dem Ordner:
```
{{INSTALLATION_PATH}}/1_Exportierte_Ergebnisse/Klassenverwaltung/Schuelerprofile/
```

**Output:**
```markdown
# Klassenübersicht: Klasse 7a

## Gesamtzahl: 18 Schüler*innen

### Nach Förderschwerpunkt
- Lernen: 12
- Emotional-soziale Entwicklung: 4
- Sprache: 2

### Nach Differenzierungsstufe
- Basis: 10
- Unterstützung: 6
- Erweiterung: 2

### Nach Lernstand Mathematik
- Zahlenraum 1-100: 4
- Zahlenraum 1-1000: 8
- Zahlenraum >1000: 6
```

### Schritt 3: Gruppierung (optional)

**Prompt:**
```
"Gruppiere die Klasse nach Förderbedarf für die Unterrichtsplanung."
```

**Output:**
```markdown
# Gruppierung nach Förderbedarf: Klasse 7a

## Gruppe 1: Visuelle Unterstützung (8 Schüler*innen)
- Schüler_A, Schüler_C, Schüler_F, ...

**Benötigte Materialien:**
- Bildkarten, Diagramme, Modelle

## Gruppe 2: Sprachliche Vereinfachung (6 Schüler*innen)
- Schüler_B, Schüler_D, ...

**Benötigte Materialien:**
- Arbeitsblätter in leichter Sprache, Wortspeicher

## Gruppe 3: Erweiterung (4 Schüler*innen)
- Schüler_E, Schüler_G, ...

**Benötigte Materialien:**
- Vertiefende Aufgaben, Transferaufgaben
```

---

## Workflow: Differenzierungs-Empfehlung

### Schritt 1: Unterrichtsthema angeben

**Prompt der Lehrkraft:**
```
"Ich plane eine Unterrichtsstunde zum Thema Photosynthese für Klasse 7a.
Erstelle Differenzierungs-Empfehlungen."
```

**Claude startet:** `klasse-04-differenzierungs-empfehlung`

### Schritt 2: Schülerprofile analysieren

Der Skill:
1. Liest alle Schülerprofile der Klasse 7a
2. Gruppiert nach Differenzierungsstufe (Basis/Unterstützung/Erweiterung)
3. Berücksichtigt individuelle Unterstützungsbedarfe

### Schritt 3: Empfehlungen generieren

**Output:**
```markdown
# Differenzierungsplan: Photosynthese (Klasse 7a)

## Unterstützungsstufe (6 Schüler*innen)

**Lernziel (vereinfacht):**
"Schüler*innen können die Grundfunktion der Photosynthese benennen."

**Methoden:**
- Vereinfachtes Schaubild mit Beschriftung (CO₂ rein, O₂ raus)
- Wortspeicher mit Fachbegriffen
- Lückentext statt freie Formulierung

**Materialien:**
- Arbeitsblatt Unterstützungsstufe (siehe Anhang)
- Modell einer Pflanzenzelle

**Sozialform:**
- Partnerarbeit mit Peer-Tutor*in

---

## Basisstufe (10 Schüler*innen)

**Lernziel (Standardniveau):**
"Schüler*innen können die Photosynthese-Reaktion beschreiben und Eingangsstoffe sowie Produkte benennen."

**Methoden:**
- Schaubild mit Beschriftungsaufgabe
- Kurze schriftliche Erklärung

**Materialien:**
- Arbeitsblatt Basisstufe

**Sozialform:**
- Einzelarbeit mit Lehrkraft-Unterstützung

---

## Erweiterungsstufe (2 Schüler*innen)

**Lernziel (vertieft):**
"Schüler*innen können den Zusammenhang zwischen Photosynthese und Ökosystemen analysieren."

**Methoden:**
- Recherche-Aufgabe: "Was wäre, wenn es keine Photosynthese gäbe?"
- Präsentation der Ergebnisse

**Materialien:**
- Zusatzmaterial: Zeitungsartikel, Fachtext

**Sozialform:**
- Projektarbeit
```

### Schritt 4: Export

**Speicherung:**
```
{{INSTALLATION_PATH}}/1_Exportierte_Ergebnisse/Klassenverwaltung/Differenzierungsplaene/
Klasse_7a_Photosynthese_Differenzierung.md
```

---

## Beispiel-Dialog

**Lehrkraft:**
> "Ich möchte ein neues Schülerprofil erstellen."

**Claude (klasse-01-schuelerprofil-erstellen):**
> Gerne! Ich helfe dir dabei, ein strukturiertes Schülerprofil zu erstellen.
>
> **1. Basisdaten**
> - Welches Pseudonym möchtest du verwenden? (z.B. "Schüler_A", "Lernende_7")
> - Klassenstufe?
> - Schulform?

**Lehrkraft:**
> - Pseudonym: "Schüler_M"
> - Klassenstufe: 7. Klasse
> - Schulform: Förderschule Lernen

**Claude:**
> Perfekt!
>
> **2. Förderschwerpunkt(e)**
> Welche Förderschwerpunkte treffen zu? (Mehrfachnennung möglich)
> - Lernen
> - Emotional-soziale Entwicklung
> - Sprache
> - ...

**Lehrkraft:**
> - Lernen
> - Sprache

**Claude:**
> Verstanden.
>
> **3. Lernstand Mathematik**
> - In welchem Zahlenraum arbeitet Schüler_M sicher?
> - Welche Rechenoperationen beherrscht er/sie?

**Lehrkraft:**
> - Zahlenraum 1-100 sicher
> - Addition/Subtraktion mit Zehnerübergang teilweise
> - Multiplikation noch Schwierigkeiten

**Claude:**
> Danke!
>
> **4. Differenzierungsstufe nach Wember**
> Basierend auf den Angaben würde ich "Unterstützung" empfehlen. Passt das?
> - [ ] Basis
> - [x] Unterstützung
> - [ ] Erweiterung

**Lehrkraft:**
> Ja, Unterstützung passt.

[... weitere Fragen ...]

**Claude (nach Abschluss, startet klasse-02-schuelerprofil-validieren):**
> ✅ **Validierung erfolgreich**
>
> Das Schülerprofil ist vollständig und konsistent.
>
> **Gespeichert unter:**
> `{{INSTALLATION_PATH}}/1_Exportierte_Ergebnisse/Klassenverwaltung/Schuelerprofile/Schueler_M.md`
>
> Möchtest du:
> - [1] Ein weiteres Schülerprofil erstellen
> - [2] Die Klassenübersicht anzeigen
> - [3] Differenzierungs-Empfehlungen erstellen

---

## Technische Anforderungen

### MCP Filesystem Konfiguration

In der `claude_desktop_config.json` muss der MCP Filesystem Server konfiguriert sein:

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "{{INSTALLATION_PATH}}"
      ]
    }
  }
}
```

### Skills aktivieren

In Claude Desktop:
1. Settings > Capabilities > Skills
2. Aktiviere alle 4 Klassenverwaltungs-Skills:
   - klasse-01-schuelerprofil-erstellen
   - klasse-02-schuelerprofil-validieren
   - klasse-03-klasse-verwalten
   - klasse-04-differenzierungs-empfehlung

### Ordnerstruktur vorbereiten

Stelle sicher, dass folgende Ordner existieren:

```bash
mkdir -p {{INSTALLATION_PATH}}/1_Exportierte_Ergebnisse/Klassenverwaltung/Schuelerprofile
mkdir -p {{INSTALLATION_PATH}}/1_Exportierte_Ergebnisse/Klassenverwaltung/Klassenuebersichten
mkdir -p {{INSTALLATION_PATH}}/1_Exportierte_Ergebnisse/Klassenverwaltung/Differenzierungsplaene
```

---

## Datenschutz-Hinweise für Lehrkräfte

### Was du NICHT im System speichern solltest:

- Echte Namen von Schüler*innen
- Geburtsdaten
- Adressen
- Medizinische Diagnosen (nur pädagogische Auswirkungen)
- Sensible familiäre Informationen

### Was du im System speichern darfst:

- Pseudonyme (Schüler_A, Lernende_7)
- Lernstand (Zahlenraum, Kompetenzen)
- Förderschwerpunkte (offizielle pädagogische Kategorien)
- Unterrichtsmethoden, die funktionieren
- Differenzierungsbedarfe

### Empfohlenes Vorgehen:

1. **Verschlüsselte Zuordnungsliste** (analog, außerhalb des Systems):
   ```
   Schüler_A → Max Mustermann
   Schüler_B → Anna Schmidt
   ```
   (Aufbewahrung: Abschließbarer Schrank, NICHT digital)

2. **Regelmäßige Datenlöschung:**
   - Am Ende des Schuljahres: Alte Schülerprofile archivieren oder löschen
   - Nur aktuelle Klassen im System behalten

3. **Keine Cloud-Synchronisation:**
   - Keine Dropbox, Google Drive, iCloud für Schülerprofile
   - Nur lokale Speicherung auf dem Schul-Rechner

---

## Troubleshooting

### Problem: Skill wird nicht aufgerufen

**Lösung:**
1. Prüfe, ob alle 4 Skills in Claude Desktop aktiviert sind
2. Teste manuell: "Bitte nutze den Skill klasse-01-schuelerprofil-erstellen"

### Problem: MCP Permission Denied

**Lösung:**
```bash
chmod -R 755 {{INSTALLATION_PATH}}/1_Exportierte_Ergebnisse/Klassenverwaltung
```

### Problem: Schülerprofil wird nicht gefunden

**Lösung:**
- Prüfe, ob die Datei im richtigen Ordner liegt
- Achte auf exakte Schreibweise des Pseudonyms

---

## Version & Lizenz

**Version:** 1.0
**Stand:** 2025-01-10
**Lizenz:** CC BY-SA 4.0
**Datenschutz:** DSGVO-konform (bei Einhaltung der Hinweise)

---

**Nächste Schritte:**

1. Aktiviere alle 4 Skills in Claude Desktop
2. Erstelle die Ordnerstruktur (siehe oben)
3. Starte mit: "Ich möchte ein neues Schülerprofil erstellen."
