# Schülerprofil validieren

## Zweck

Dieser Skill führt eine **automatische Qualitätskontrolle** von Schülerprofilen durch. Er prüft:
- **Vollständigkeit** - Sind alle Pflichtfelder ausgefüllt?
- **Konsistenz** - Passen die Angaben zusammen?
- **Plausibilität** - Sind die Kombinationen sinnvoll?

**Kernfunktionen:**
- Automatisierte Validierungschecks
- Detailliertes Feedback mit Verbesserungsvorschlägen
- Prävention von inkonsistenten Profilen

## Wann wird dieser Skill verwendet?

Dieser Skill wird verwendet:
- **Automatisch** nach Erstellung eines Schülerprofils (durch klasse-01-schuelerprofil-erstellen)
- **Manuell** bei Aktualisierung bestehender Profile
- **Vor** Verwendung in Differenzierungs-Empfehlungen

**Trigger-Keywords:**
- "Validiere das Schülerprofil [Pseudonym]"
- "Prüfe das Profil von [Pseudonym]"
- "Ist das Schülerprofil vollständig?"

## Anwendung

### Phase 1: Profil laden

**Eingabe:**
- Pseudonym des Schülerprofils (z.B. "Schüler_A")
- ODER: Direktes Profil-Objekt (wenn von klasse-01 aufgerufen)

**Aktion:**
1. Falls Pseudonym gegeben: Profil aus MCP Filesystem laden
   - Pfad: `/Users/lennart/Schul-Materialien/4_Klassen_und_Schueler/[Klassenname]/Schuelerprofile/[Pseudonym].md`
2. Falls Profil-Objekt gegeben: Direkt validieren

**Fehlerfall:**
```
❌ **Fehler:** Profil "[Pseudonym]" wurde nicht gefunden.

Bitte prüfe:
- Ist das Pseudonym korrekt geschrieben?
- Wurde das Profil bereits erstellt?
```

### Phase 2: Vollständigkeitsprüfung

**Pflichtfelder:**
1. Basisdaten
   - ✅ Pseudonym
   - ✅ Klassenstufe
   - ✅ Schulform

2. Pädagogische Grunddaten
   - ✅ Förderschwerpunkt(e)
   - ✅ Differenzierungsstufe

**Empfohlene Felder:**
- Lernstand (mind. Deutsch ODER Mathematik)
- Unterstützungsbedarfe
- Stärken & Interessen
- Bewährte Methoden

**Output bei Fehlern:**
```
❌ **Vollständigkeitsprüfung fehlgeschlagen**

Fehlende Pflichtfelder:
- Förderschwerpunkt
- Differenzierungsstufe

⚠️ Warnungen:
- Lernstand nicht angegeben (empfohlen für präzise Differenzierung)

Bitte ergänze die fehlenden Informationen.
```

### Phase 3: Konsistenzprüfung

**Check 1: Förderschwerpunkt ↔ Unterstützungsbedarfe**

**Regel:** Bestimmte Förderschwerpunkte sollten mit bestimmten Unterstützungsbedarfen einhergehen.

**Beispiele:**
- Förderschwerpunkt "Sprache" → Empfohlen: "Sprachliche Vereinfachung", "Visualisierung"
- Förderschwerpunkt "Emotional-soziale Entwicklung" → Empfohlen: "Ruhige Arbeitsumgebung", "Strukturierung"
- Förderschwerpunkt "Lernen" → Empfohlen: "Kleinschrittigkeit", "Visualisierung"

**Output:**
```
💡 **Konsistenz-Hinweise:**

- Bei Förderschwerpunkt 'Sprache' wird 'Sprachliche Vereinfachung' empfohlen
  → Möchtest du das ergänzen?
```

**Check 2: Differenzierungsstufe ↔ Lernstand**

**Regel:** Die Differenzierungsstufe sollte zum angegebenen Lernstand passen.

**Beispiele:**
- Klassenstufe 7, Mathematik-Zahlenraum 1-20 → Differenzierungsstufe sollte "Unterstützung" sein
- Klassenstufe 7, Mathematik-Zahlenraum >1000 → "Basis" oder "Erweiterung"

**Output:**
```
⚠️ **Inkonsistenz gefunden:**

- Lernstand (Zahlenraum 1-100) liegt unter Klassenstufe 7.
  Differenzierungsstufe sollte 'Unterstützung' sein, ist aber 'Basis'.

  Möchtest du die Differenzierungsstufe auf 'Unterstützung' ändern?
```

### Phase 4: Plausibilitätsprüfung

**Check 1: Pseudonym-Format**

**Regel:** Pseudonym sollte keine echten Namen enthalten.

**Output:**
```
❌ **DATENSCHUTZ-WARNUNG:**
Das Pseudonym "Max Mustermann" sieht wie ein echter Name aus!

Bitte verwende ein anonymisiertes Pseudonym wie:
- Schüler_A
- Lernende_7
- SuS_01
```

### Phase 5: Validierungs-Report

**Bei erfolgreicher Validierung:**

```markdown
✅ **Validierung erfolgreich**

Das Schülerprofil ist vollständig und konsistent.

**Zusammenfassung:**
- ✅ Alle Pflichtfelder vorhanden
- ✅ Keine Inkonsistenzen gefunden
- ✅ Plausibilitätschecks bestanden

**Optionale Verbesserungen:**
- Lernstand für weitere Fächer könnte ergänzt werden
- Bewährte Methoden könnten detaillierter sein

**Nächste Schritte:**
- Profil speichern
- Weitere Profile erstellen
- Klassenübersicht anzeigen
```

**Bei Fehlern/Warnungen:**

```markdown
⚠️ **Validierung mit Hinweisen**

**Fehler (müssen behoben werden):**
- ❌ Förderschwerpunkt fehlt
- ❌ Differenzierungsstufe fehlt

**Warnungen (empfohlen zu beheben):**
- ⚠️ Lernstand nicht angegeben
- ⚠️ Unterstützungsbedarfe fehlen

**Konsistenz-Hinweise:**
- 💡 Bei Förderschwerpunkt 'Sprache' wird 'Sprachliche Vereinfachung' empfohlen

**Inkonsistenzen:**
- ⚠️ Lernstand (Zahlenraum 1-100) liegt unter Klassenstufe 7.
  Differenzierungsstufe sollte 'Unterstützung' sein, ist aber 'Basis'.

Möchtest du die Probleme beheben?
- [1] Ja, Profil bearbeiten
- [2] Trotzdem speichern (nur bei Fehlern nicht möglich)
- [3] Abbrechen
```

## MCP Filesystem Integration

### Lese-Zugriff
- Profil aus `/Users/lennart/Schul-Materialien/4_Klassen_und_Schueler/[Klassenname]/Schuelerprofile/[Pseudonym].md`

### Schreib-Zugriff
- Falls Profil korrigiert wird: Überschreiben der Datei

## Workflow

```
Start
  ↓
Profil laden (aus MCP oder direkt übergeben)
  ↓
Vollständigkeitsprüfung (Pflichtfelder)
  ↓
Konsistenzprüfung (Förderschwerpunkt ↔ Unterstützung, Differenzierung ↔ Lernstand)
  ↓
Plausibilitätsprüfung (Pseudonym, Methoden)
  ↓
Validierungs-Report erstellen
  ↓
Falls Fehler: Interaktive Verbesserung anbieten
  ↓
Falls erfolgreich: Bestätigung + Speicherung
  ↓
Ende
```
