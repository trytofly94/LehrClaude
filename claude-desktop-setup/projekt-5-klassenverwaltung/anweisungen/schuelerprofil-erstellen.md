# Schülerprofil erstellen

## Zweck

Dieser Skill unterstützt Förderschullehrkräfte bei der **strukturierten Erfassung differenzierter Schülerprofile**. Er führt durch einen interaktiven Fragebogen-Prozess, der alle didaktisch relevanten Informationen systematisch erhebt und als strukturiertes Profil speichert.

**Kernfunktionen:**
- Interaktive Datenerfassung mit klaren Fragen
- Pseudonymisierung (Datenschutz-First)
- Strukturierte Erfassung nach pädagogischen Standards
- Automatische Speicherung im MCP Filesystem

## Wann wird dieser Skill verwendet?

Dieser Skill wird verwendet:
- Wenn eine Lehrkraft ein **neues Schülerprofil** erstellen möchte
- Bei der Ersterfassung von Schüler*innen zu Schuljahresbeginn
- Bei Neuzugängen in der Klasse
- Bei Updates bestehender Profile (Lernstandsfortschritt)

**Trigger-Keywords:**
- "Ich möchte ein Schülerprofil erstellen"
- "Neues Schülerprofil anlegen"
- "Schüler erfassen"
- "Schülerdaten erfassen"

## Anwendung

### Phase 1: Initialisierung

**Begrüßung und Datenschutz-Hinweis:**

```
Gerne helfe ich dir, ein strukturiertes Schülerprofil zu erstellen!

📌 **Datenschutz-Hinweis:**
- Verwende bitte ein **Pseudonym** (z.B. "Schüler_A", "Lernende_7")
- KEINE echten Namen, Geburtsdaten oder sensible personenbezogene Daten
- Alle Daten bleiben lokal auf deinem Rechner
```

### Phase 2: Basisdaten erfassen

**Fragen:**

1. **Pseudonym:**
   - "Welches Pseudonym möchtest du verwenden?"
   - Beispiele: "Schüler_A", "Lernende_7", "SuS_01"
   - Validierung: Keine Leerzeichen, keine Sonderzeichen außer "_"

2. **Klassenstufe:**
   - "In welcher Klassenstufe befindet sich der/die Schüler*in?"
   - Beispiele: "7. Klasse", "Klasse 9"

3. **Schulform:**
   - "Welche Schulform?"
   - Optionen: Förderschule Lernen, Förderschule emotional-soziale Entwicklung, Inklusionsklasse (Regelschule), etc.

**Output-Format:**
```yaml
pseudonym: "Schüler_A"
klassenstufe: "7. Klasse"
schulform: "Förderschule Lernen"
```

### Phase 3: Förderschwerpunkt(e) erfassen

**Frage:**
```
Welche Förderschwerpunkte treffen zu? (Mehrfachnennung möglich)

Optionen:
- Lernen
- Emotional-soziale Entwicklung
- Sprache
- Körperlich-motorische Entwicklung
- Geistige Entwicklung
- Hören und Kommunikation
- Sehen
```

**Hinweis:** Mehrfachnennung ist häufig, z.B. "Lernen + Sprache"

**Output-Format:**
```yaml
foerderschwerpunkte:
  - "Lernen"
  - "Sprache"
```

### Phase 4: Lernstand erfassen

**A. Deutsch:**
```
Lernstand Deutsch:

1. Lesestufe:
   - Buchstabenkenntnis
   - Silbenlesen
   - Wortlesen
   - Satzlesen
   - Textlesen

2. Schreibkompetenz:
   - Druckschrift
   - Schreibschrift
   - Rechtschreibung (lauttreu, regelgeleitet)

3. Textverständnis:
   - Einfache Sätze
   - Kurze Texte
   - Längere Texte mit Hilfestellung
```

**B. Mathematik:**
```
Lernstand Mathematik:

1. Zahlenraum (sicher beherrscht):
   - 1-10
   - 1-20
   - 1-100
   - 1-1000
   - >1000

2. Rechenoperationen:
   - Addition (mit/ohne Zehnerübergang)
   - Subtraktion (mit/ohne Zehnerübergang)
   - Multiplikation (Einmaleins, schriftlich)
   - Division (einfache, schriftlich)

3. Anwendungsaufgaben:
   - Textaufgaben mit Hilfe
   - Selbstständig
   - Transfer auf neue Situationen
```

**C. Weitere Fächer (optional):**
- Sachunterricht / Naturwissenschaften
- Englisch
- ...

**Output-Format:**
```yaml
lernstand:
  deutsch:
    lesestufe: "Textlesen mit Unterstützung"
    schreibkompetenz: "Druckschrift, lauttreue Rechtschreibung"
    textverstaendnis: "Kurze Texte mit Hilfestellung"
  mathematik:
    zahlenraum: "1-100 sicher"
    rechenoperationen:
      - "Addition mit Zehnerübergang"
      - "Subtraktion teilweise"
      - "Multiplikation: Einmaleins 1-5"
    anwendungsaufgaben: "Textaufgaben mit visueller Hilfe"
```

### Phase 5: Differenzierungsstufe (nach Wember)

**Frage:**
```
Auf welcher Differenzierungsstufe arbeitet der/die Schüler*in primär?

- **Basis:** Regelanforderungen des Lehrplans
- **Unterstützung:** Vereinfachte Anforderungen, mehr Hilfestellung, Strukturierung
- **Erweiterung:** Vertiefte Anforderungen, Transfer, komplexe Aufgaben

💡 Hinweis: Basierend auf dem Lernstand würde ich "[Vorschlag]" empfehlen.
```

**Automatische Empfehlung** (basierend auf Lernstand):
- Falls Lernstand deutlich unter Klassenstufe → "Unterstützung"
- Falls Lernstand entspricht Klassenstufe → "Basis"
- Falls Lernstand über Klassenstufe → "Erweiterung"

**Output-Format:**
```yaml
differenzierungsstufe: "Unterstützung"
```

### Phase 6: Unterstützungsbedarfe erfassen

**Frage:**
```
Welche Unterstützungsbedarfe bestehen im Unterricht? (Mehrfachnennung möglich)

Optionen:
- Visualisierung (Bilder, Diagramme, Modelle)
- Strukturierung (Checklisten, Schrittfolgen, visuelle Zeitpläne)
- Sprachliche Vereinfachung (leichte Sprache, Wortspeicher)
- Zusätzliche Zeit
- Digitale Hilfsmittel (Tablet, Rechner, Apps)
- Peer-Unterstützung (Lernpartner*in)
- Handlungsorientierte Zugänge (Experimente, Modelle)
- Kleinschrittigkeit (Aufgaben in Teilschritten)
- Ruhige Arbeitsumgebung
- Bewegungspausen

Weitere (bitte angeben): ___
```

**Output-Format:**
```yaml
unterstuetzungsbedarfe:
  - "Visualisierung"
  - "Sprachliche Vereinfachung"
  - "Kleinschrittigkeit"
```

### Phase 7: Stärken & Interessen

**Frage:**
```
Was kann der/die Schüler*in besonders gut? Was motiviert?

1. Fachliche Stärken:
   - In welchen Bereichen zeigt er/sie gute Leistungen?

2. Interessen:
   - Welche Themen motivieren besonders?

3. Lernkanäle:
   - Auditiv (Hören)
   - Visuell (Sehen)
   - Kinästhetisch (Bewegen, Anfassen)

4. Soziale Kompetenzen:
   - Arbeitet gerne in Gruppen
   - Bevorzugt Einzelarbeit
   - Übernimmt gerne Verantwortung
```

**Output-Format:**
```yaml
staerken_interessen:
  fachlich:
    - "Gutes räumliches Vorstellungsvermögen"
    - "Interesse an Naturwissenschaften"
  interessen:
    - "Tiere"
    - "Experimente"
  lernkanaele:
    - "Kinästhetisch"
    - "Visuell"
  sozial:
    - "Arbeitet gerne in Kleingruppen"
    - "Hilft anderen gerne"
```

### Phase 8: Bewährte Methoden

**Frage:**
```
Welche Unterrichtsmethoden haben sich bewährt?
Welche sollten vermieden werden?

1. Bewährte Methoden:
   - Welche Methoden funktionieren besonders gut?

2. Zu vermeidende Methoden:
   - Welche Methoden führen zu Überforderung/Frustration?

3. Besondere Hinweise:
   - Gibt es Besonderheiten im Umgang mit dem/der Schüler*in?
```

**Output-Format:**
```yaml
bewaehrte_methoden:
  funktioniert_gut:
    - "Modelle und Visualisierungen"
    - "Schritt-für-Schritt-Anleitungen"
    - "Positive Verstärkung"
  vermeiden:
    - "Lange Texte ohne Bilder"
    - "Zeitdruck"
  besondere_hinweise:
    - "Braucht Zeit zum Ankommen zu Stundenbeginn"
```

### Phase 9: Zusammenfassung und Bestätigung

**Output:**
```markdown
# Schülerprofil: [Pseudonym]

## Basisdaten
- **Pseudonym:** [Pseudonym]
- **Klassenstufe:** [Klassenstufe]
- **Schulform:** [Schulform]

## Förderschwerpunkte
- [Liste]

## Lernstand
### Deutsch
- **Lesestufe:** [...]
- **Schreibkompetenz:** [...]
- **Textverständnis:** [...]

### Mathematik
- **Zahlenraum:** [...]
- **Rechenoperationen:** [...]
- **Anwendungsaufgaben:** [...]

## Differenzierungsstufe
- [Basis/Unterstützung/Erweiterung]

## Unterstützungsbedarfe
- [Liste]

## Stärken & Interessen
- **Fachlich:** [...]
- **Interessen:** [...]
- **Lernkanäle:** [...]
- **Sozial:** [...]

## Bewährte Methoden
- **Funktioniert gut:** [...]
- **Vermeiden:** [...]
- **Besondere Hinweise:** [...]

---
**Erstellt am:** [Datum]
**Letzte Aktualisierung:** [Datum]
```

**Frage:**
```
✅ Ist das Profil vollständig und korrekt?

Optionen:
- [1] Ja, so speichern
- [2] Nein, ich möchte etwas ändern
- [3] Abbrechen
```

### Phase 10: Speicherung

**Bei Bestätigung:**
1. Automatische Validierung starten (siehe schuelerprofil-validieren.md)
2. Falls Validierung erfolgreich:
   - Datei speichern im MCP Filesystem
   - Pfad: `/Users/lennart/Schul-Materialien/4_Klassen_und_Schueler/[Klassenname]/Schuelerprofile/[Pseudonym].md`

**Erfolgs-Meldung:**
```
✅ **Schülerprofil erfolgreich gespeichert!**

Gespeichert unter:
`/Users/lennart/Schul-Materialien/4_Klassen_und_Schueler/[Klassenname]/Schuelerprofile/[Pseudonym].md`

Möchtest du:
- [1] Ein weiteres Schülerprofil erstellen
- [2] Die Klassenübersicht anzeigen
- [3] Fertig
```

## Qualitätskriterien

### Datenschutz
- **Keine echten Namen:** System verweigert Speicherung bei verdächtigen Eingaben (z.B. "Max Mustermann")
- **Pseudonymisierung:** Nur alphanumerische Zeichen + Unterstrich
- **Lokale Speicherung:** Ausschließlich über MCP Filesystem

### Vollständigkeit
- **Pflichtfelder:** Pseudonym, Klassenstufe, Schulform, Förderschwerpunkt, Differenzierungsstufe
- **Empfohlene Felder:** Lernstand, Unterstützungsbedarfe, Stärken

### Konsistenz
- Differenzierungsstufe passt zum Lernstand
- Unterstützungsbedarfe passen zu Förderschwerpunkten

## MCP Filesystem Integration

### Lese-Zugriff
- Template aus `/Users/lennart/Schul-Materialien/2_Zentrale_Ressourcen/Templates/schuelerprofil-vorlage.md` (falls vorhanden)

### Schreib-Zugriff
- Speicherort: `/Users/lennart/Schul-Materialien/4_Klassen_und_Schueler/[Klassenname]/Schuelerprofile/[Pseudonym].md`
- Dateiformat: Markdown (.md)
- Dateiname: Genau das Pseudonym (z.B. `Schueler_A.md`)

## Workflow

```
Start
  ↓
Datenschutz-Hinweis anzeigen
  ↓
Basisdaten erfragen (Pseudonym, Klassenstufe, Schulform)
  ↓
Förderschwerpunkte erfragen
  ↓
Lernstand erfragen (Deutsch, Mathematik, weitere)
  ↓
Differenzierungsstufe bestimmen (mit Empfehlung)
  ↓
Unterstützungsbedarfe erfragen
  ↓
Stärken & Interessen erfragen
  ↓
Bewährte Methoden erfragen
  ↓
Zusammenfassung anzeigen
  ↓
Bestätigung einholen
  ↓
Validierung starten (siehe schuelerprofil-validieren.md)
  ↓
Bei Erfolg: Speichern via MCP Filesystem
  ↓
Erfolgs-Meldung + Optionen für nächste Schritte
  ↓
Ende
```

## Output

Das Schülerprofil wird als **Markdown-Datei** gespeichert:

**Dateiname:** `[Pseudonym].md` (z.B. `Schueler_A.md`)

**Struktur:** Siehe Phase 9 (Zusammenfassung)

## Integration mit anderen Workflow-Elementen

```
schuelerprofil-erstellen.md [DIESE ANWEISUNG]
    ↓
schuelerprofil-validieren.md (automatische Validierung)
    ↓
Verwendung in Projekten 1-3 (für Differenzierung)
    ↓
differenzierung-ge Skill (bei Förderschwerpunkt GE)
```

## Fehlerbehandlung

### Problem: Pseudonym bereits vergeben

**Lösung:**
```
⚠️ **Fehler:** Ein Profil mit dem Pseudonym "[Pseudonym]" existiert bereits.

Möchtest du:
- [1] Ein anderes Pseudonym wählen
- [2] Das bestehende Profil überschreiben (Achtung: Alte Daten gehen verloren!)
- [3] Das bestehende Profil aktualisieren
```

### Problem: MCP Filesystem nicht erreichbar

**Lösung:**
```
❌ **Fehler:** Kann nicht auf Speicherort zugreifen.

Bitte prüfe:
1. Ist der MCP Filesystem Server konfiguriert?
2. Existiert der Ordner `/Users/lennart/Schul-Materialien/4_Klassen_und_Schueler/`?
3. Hast du Schreibrechte?
```

### Problem: Validierung fehlgeschlagen

**Lösung:**
```
⚠️ **Validierung fehlgeschlagen**

Folgende Probleme wurden gefunden:
- [Liste der Fehler/Inkonsistenzen]

Möchtest du die Probleme beheben?
```

## Resources

Dieser Skill nutzt folgende Ressourcen:

- **Templates:** `/Users/lennart/Schul-Materialien/2_Zentrale_Ressourcen/Templates/schuelerprofil-vorlage.md` (optional)
- **Daten:** Wember-Differenzierung, Bloom-Taxonomie (für Lernstand-Einschätzung)

## Next Steps

Nach Erstellung eines Schülerprofils:
- Automatische Validierung (schuelerprofil-validieren.md)
- Weitere Profile erstellen
- Verwendung in Unterrichtsplanung (Projekte 1-3)
- Differenzierung mit differenzierung-ge Skill (bei GE)
