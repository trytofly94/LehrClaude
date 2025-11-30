---
name: schuelerprofil-validieren
description: Validiert Schülerprofile auf Vollständigkeit, Konsistenz und Plausibilität. Prüft Pflichtfelder, Zusammenhänge zwischen Förderschwerpunkt und Unterstützungsbedarfen sowie Differenzierungsstufe und Lernstand. Trigger bei "Profil validieren", "Schülerprofil prüfen", automatisch nach Profil-Erstellung.
---

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
   - Pfad: `1_Exportierte_Ergebnisse/Klassenverwaltung/Schuelerprofile/[Pseudonym].md`
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

**Validierungs-Logik:**

```python
def validate_vollstaendigkeit(profil):
    fehler = []
    warnungen = []

    # Pflichtfelder prüfen
    if not profil.pseudonym:
        fehler.append("Pseudonym fehlt")

    if not profil.klassenstufe:
        fehler.append("Klassenstufe fehlt")

    if not profil.schulform:
        fehler.append("Schulform fehlt")

    if not profil.foerderschwerpunkte or len(profil.foerderschwerpunkte) == 0:
        fehler.append("Förderschwerpunkt fehlt")

    if not profil.differenzierungsstufe:
        fehler.append("Differenzierungsstufe fehlt")

    # Empfohlene Felder prüfen
    if not profil.lernstand:
        warnungen.append("Lernstand nicht angegeben (empfohlen für präzise Differenzierung)")

    if not profil.unterstuetzungsbedarfe:
        warnungen.append("Unterstützungsbedarfe nicht angegeben")

    return fehler, warnungen
```

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

**Validierungs-Logik:**

```python
def validate_foerderschwerpunkt_unterstuetzung(profil):
    hinweise = []

    if "Sprache" in profil.foerderschwerpunkte:
        if "Sprachliche Vereinfachung" not in profil.unterstuetzungsbedarfe:
            hinweise.append("Bei Förderschwerpunkt 'Sprache' wird 'Sprachliche Vereinfachung' empfohlen")

    if "Emotional-soziale Entwicklung" in profil.foerderschwerpunkte:
        if "Ruhige Arbeitsumgebung" not in profil.unterstuetzungsbedarfe:
            hinweise.append("Bei Förderschwerpunkt 'Emotional-soziale Entwicklung' wird 'Ruhige Arbeitsumgebung' empfohlen")

    return hinweise
```

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

**Validierungs-Logik:**

```python
def validate_differenzierung_lernstand(profil):
    inkonsistenzen = []

    klassenstufe_zahl = extract_zahl(profil.klassenstufe)  # z.B. 7 aus "7. Klasse"

    # Beispiel: Mathematik-Zahlenraum
    if profil.lernstand and profil.lernstand.mathematik:
        zahlenraum = profil.lernstand.mathematik.zahlenraum

        # Erwarteter Zahlenraum für Klassenstufe
        erwarteter_zahlenraum = get_erwarteter_zahlenraum(klassenstufe_zahl)

        if zahlenraum < erwarteter_zahlenraum and profil.differenzierungsstufe != "Unterstützung":
            inkonsistenzen.append(
                f"Lernstand (Zahlenraum {zahlenraum}) liegt unter Klassenstufe {klassenstufe_zahl}. "
                f"Differenzierungsstufe sollte 'Unterstützung' sein, ist aber '{profil.differenzierungsstufe}'."
            )

    return inkonsistenzen
```

**Output:**
```
⚠️ **Inkonsistenz gefunden:**

- Lernstand (Zahlenraum 1-100) liegt unter Klassenstufe 7.
  Differenzierungsstufe sollte 'Unterstützung' sein, ist aber 'Basis'.

  Möchtest du die Differenzierungsstufe auf 'Unterstützung' ändern?
```

**Check 3: Stärken ↔ Interessen**

**Regel:** Wenn Stärken angegeben sind, sollten auch Interessen vorhanden sein (und umgekehrt).

**Validierungs-Logik:**

```python
def validate_staerken_interessen(profil):
    warnungen = []

    if profil.staerken_interessen:
        if profil.staerken_interessen.fachlich and not profil.staerken_interessen.interessen:
            warnungen.append("Fachliche Stärken angegeben, aber keine Interessen. Empfohlen für motivierenden Unterricht.")

    return warnungen
```

### Phase 4: Plausibilitätsprüfung

**Check 1: Pseudonym-Format**

**Regel:** Pseudonym sollte keine echten Namen enthalten.

**Validierungs-Logik:**

```python
def validate_pseudonym(pseudonym):
    # Verdächtige Muster
    verdaechtige_muster = [
        r"[A-Z][a-z]+\s[A-Z][a-z]+",  # z.B. "Max Mustermann"
        r"^\d{2}\.\d{2}\.\d{4}$",      # Datum
    ]

    for muster in verdaechtige_muster:
        if re.match(muster, pseudonym):
            return "❌ DATENSCHUTZ-WARNUNG: Pseudonym sieht wie ein echter Name aus!"

    # Empfohlenes Format
    if not re.match(r"^[A-Za-z0-9_]+$", pseudonym):
        return "⚠️ Empfohlenes Format: 'Schüler_A' (nur Buchstaben, Zahlen, Unterstrich)"

    return None
```

**Output:**
```
❌ **DATENSCHUTZ-WARNUNG:**
Das Pseudonym "Max Mustermann" sieht wie ein echter Name aus!

Bitte verwende ein anonymisiertes Pseudonym wie:
- Schüler_A
- Lernende_7
- SuS_01
```

**Check 2: Bewährte Methoden**

**Regel:** "Bewährte Methoden" und "Zu vermeiden" sollten sich nicht widersprechen.

**Validierungs-Logik:**

```python
def validate_methoden(profil):
    inkonsistenzen = []

    if profil.bewaehrte_methoden:
        gut = profil.bewaehrte_methoden.funktioniert_gut or []
        vermeiden = profil.bewaehrte_methoden.vermeiden or []

        # Überschneidungen finden
        ueberschneidungen = set(gut) & set(vermeiden)

        if ueberschneidungen:
            inkonsistenzen.append(
                f"Widerspruch: Folgende Methoden sind sowohl in 'funktioniert gut' als auch in 'vermeiden': {list(ueberschneidungen)}"
            )

    return inkonsistenzen
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

### Phase 6: Interaktive Verbesserung (optional)

**Falls Lehrkraft "Profil bearbeiten" wählt:**

```
Welches Feld möchtest du ändern?

1. Förderschwerpunkt ergänzen
2. Differenzierungsstufe anpassen
3. Lernstand ergänzen
4. Unterstützungsbedarfe ergänzen
5. Alle Probleme automatisch beheben (soweit möglich)
```

**Bei automatischer Behebung:**
- Fehlende Pflichtfelder: Nachfragen
- Inkonsistenzen: Vorschlag zur Korrektur
- Warnungen: Optionale Ergänzung anbieten

## Qualitätskriterien

### Validierungs-Ebenen

1. **Kritische Fehler** (verhindern Speicherung):
   - Fehlende Pflichtfelder
   - Datenschutz-Verstöße (echter Name als Pseudonym)

2. **Warnungen** (Speicherung möglich, aber Hinweis):
   - Fehlende empfohlene Felder
   - Konsistenz-Hinweise

3. **Verbesserungsvorschläge** (optional):
   - Weitere Detaillierung
   - Ergänzung von Kontextinformationen

## MCP Filesystem Integration

### Lese-Zugriff
- Profil aus `1_Exportierte_Ergebnisse/Klassenverwaltung/Schuelerprofile/[Pseudonym].md`

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

## Output

**Validierungs-Report** als strukturierte Ausgabe:

```yaml
status: "erfolgreich" | "mit_warnungen" | "fehlgeschlagen"
fehler: [Liste der kritischen Fehler]
warnungen: [Liste der Warnungen]
hinweise: [Liste der Verbesserungsvorschläge]
inkonsistenzen: [Liste der gefundenen Inkonsistenzen]
```

## Integration mit anderen Skills

```
klasse-01-schuelerprofil-erstellen
    ↓
klasse-02-schuelerprofil-validieren [DIESER SKILL]
    ↓ (bei Erfolg)
Speicherung in MCP Filesystem
    ↓
klasse-03-klasse-verwalten (nutzt validierte Profile)
klasse-04-differenzierungs-empfehlung (nutzt validierte Profile)
```

## Fehlerbehandlung

### Problem: Profil nicht gefunden

**Lösung:**
```
❌ **Fehler:** Profil "[Pseudonym]" wurde nicht gefunden.

Möchtest du:
- [1] Ein neues Profil mit diesem Pseudonym erstellen
- [2] Ein anderes Pseudonym versuchen
- [3] Alle vorhandenen Profile anzeigen
```

### Problem: Profil ist leer

**Lösung:**
```
❌ **Fehler:** Die Profil-Datei ist leer oder beschädigt.

Bitte prüfe die Datei oder erstelle das Profil neu.
```

## Resources

Dieser Skill nutzt folgende Ressourcen:

- **Validierungsregeln:** Interne Logik basierend auf pädagogischen Standards
- **Daten:** Wember-Differenzierung, erwartete Lernstände pro Klassenstufe

## Next Steps

Nach erfolgreicher Validierung:
- Profil wird gespeichert (falls von klasse-01 aufgerufen)
- Lehrkraft kann weitere Profile erstellen
- Lehrkraft kann Klassenübersicht anzeigen (klasse-03)
- Lehrkraft kann Differenzierungs-Empfehlungen erstellen (klasse-04)
