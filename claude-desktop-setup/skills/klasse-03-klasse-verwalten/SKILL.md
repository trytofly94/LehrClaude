---
name: klasse-verwalten
description: Erstellt Übersichten über alle Schülerprofile einer Klasse. Gruppiert Schüler*innen nach Förderschwerpunkt, Differenzierungsstufe oder Unterstützungsbedarfen. Exportiert Klassenübersichten für Unterrichtsplanung. Trigger bei "Klassenübersicht", "Klasse anzeigen", "Gruppierung erstellen".
---

# Klasse verwalten

## Zweck

Dieser Skill erstellt **Übersichten und Gruppierungen** von Schülerprofilen für eine Klasse. Er ermöglicht:
- **Klassenübersicht** - Alle Schüler*innen auf einen Blick
- **Gruppierung** - Nach Förderbedarf, Differenzierungsstufe, Lernstand
- **Statistiken** - Verteilungen und Häufigkeiten
- **Export** - Übersichten für Unterrichtsplanung

**Kernfunktionen:**
- Automatisches Einlesen aller Profile einer Klasse
- Flexible Gruppierungsfunktionen
- Übersichtliche, strukturierte Darstellung
- Export als Markdown oder PDF

## Wann wird dieser Skill verwendet?

Dieser Skill wird verwendet:
- Bei der **Unterrichtsplanung** (Überblick über die Lerngruppe)
- Für **Gruppeneinteilungen** (z.B. differenzierte Arbeitsgruppen)
- Zur **Statistik** (Wie viele Schüler*innen in welcher Differenzierungsstufe?)
- Bei **Elterngesprächen** oder **Klassenkonferenzen** (anonymisierte Übersicht)

**Trigger-Keywords:**
- "Zeige mir eine Übersicht meiner Klasse [Klassenname]"
- "Klassenübersicht erstellen"
- "Gruppiere die Klasse nach Förderbedarf"
- "Wie viele Schüler*innen sind in der Unterstützungsstufe?"

## Anwendung

### Phase 1: Klasse identifizieren

**Frage:**
```
Für welche Klasse möchtest du eine Übersicht erstellen?

Optionen:
- Klassenbezeichnung eingeben (z.B. "7a", "Klasse 9b")
- Alle verfügbaren Klassen anzeigen
```

**Falls "Alle verfügbaren Klassen":**
1. Alle Schülerprofile aus MCP Filesystem laden
   - Pfad: `1_Exportierte_Ergebnisse/Klassenverwaltung/Schuelerprofile/`
2. Klassen extrahieren (aus Feld `klassenstufe`)
3. Liste anzeigen:

```
Verfügbare Klassen:
- 7. Klasse (18 Schüler*innen)
- 8. Klasse (12 Schüler*innen)
- 9. Klasse (15 Schüler*innen)

Welche möchtest du anzeigen?
```

### Phase 2: Profile laden

**Aktion:**
1. Alle Schülerprofile aus dem Ordner laden
2. Nach Klassenstufe filtern (z.B. "7. Klasse")
3. Profile in interne Datenstruktur überführen

**Fehlerfall:**
```
❌ **Fehler:** Keine Schülerprofile für Klasse "[Klassenbezeichnung]" gefunden.

Möglicherweise:
- Noch keine Profile erstellt
- Klassenbezeichnung falsch geschrieben
- Profile in anderem Ordner gespeichert
```

### Phase 3: Übersicht generieren

**Standard-Übersicht:**

```markdown
# Klassenübersicht: [Klassenbezeichnung]

**Stand:** [Datum]
**Anzahl Schüler*innen:** [Anzahl]

---

## 1. Verteilung nach Förderschwerpunkt

| Förderschwerpunkt | Anzahl | Anteil |
|-------------------|--------|--------|
| Lernen | 12 | 67% |
| Emotional-soziale Entwicklung | 4 | 22% |
| Sprache | 2 | 11% |

**Mehrfachnennungen:** 3 Schüler*innen haben 2 Förderschwerpunkte

---

## 2. Verteilung nach Differenzierungsstufe

| Differenzierungsstufe | Anzahl | Anteil |
|-----------------------|--------|--------|
| Basis | 10 | 56% |
| Unterstützung | 6 | 33% |
| Erweiterung | 2 | 11% |

---

## 3. Häufigste Unterstützungsbedarfe

| Unterstützungsbedarf | Anzahl Schüler*innen |
|----------------------|----------------------|
| Visualisierung | 14 |
| Kleinschrittigkeit | 10 |
| Sprachliche Vereinfachung | 8 |
| Strukturierung | 7 |
| Zusätzliche Zeit | 5 |

---

## 4. Lernstand Mathematik (Zahlenraum)

| Zahlenraum | Anzahl |
|------------|--------|
| 1-100 | 4 |
| 1-1000 | 8 |
| >1000 | 6 |

---

## 5. Lernstand Deutsch (Lesestufe)

| Lesestufe | Anzahl |
|-----------|--------|
| Silbenlesen | 2 |
| Wortlesen | 4 |
| Satzlesen | 6 |
| Textlesen | 6 |

---

**Nächste Schritte:**
- Gruppierung nach bestimmten Kriterien erstellen
- Übersicht exportieren (Markdown/PDF)
- Einzelne Schülerprofile anzeigen
```

### Phase 4: Gruppierungsfunktionen

**Frage:**
```
Möchtest du eine spezifische Gruppierung erstellen?

Optionen:
1. Nach Förderschwerpunkt gruppieren
2. Nach Differenzierungsstufe gruppieren
3. Nach Unterstützungsbedarfen gruppieren
4. Nach Lernstand (Fach auswählen)
5. Benutzerdefinierte Gruppierung
6. Keine Gruppierung (nur Übersicht)
```

#### Option 1: Nach Förderschwerpunkt gruppieren

**Output:**

```markdown
# Gruppierung nach Förderschwerpunkt: [Klassenbezeichnung]

---

## Gruppe 1: Förderschwerpunkt "Lernen" (12 Schüler*innen)

**Schüler*innen:** Schüler_A, Schüler_C, Schüler_F, Schüler_H, ...

**Gemeinsame Unterstützungsbedarfe:**
- Kleinschrittigkeit (10/12)
- Visualisierung (9/12)
- Zusätzliche Zeit (8/12)

**Differenzierungsstufen:**
- Basis: 6
- Unterstützung: 5
- Erweiterung: 1

**Empfehlungen für Unterrichtsplanung:**
- Kleinschrittige Aufgabenstellungen verwenden
- Visualisierungen (Bilder, Diagramme) bereitstellen
- Zusätzliche Zeit einplanen

---

## Gruppe 2: Förderschwerpunkt "Emotional-soziale Entwicklung" (4 Schüler*innen)

**Schüler*innen:** Schüler_B, Schüler_D, Schüler_K, Schüler_M

**Gemeinsame Unterstützungsbedarfe:**
- Ruhige Arbeitsumgebung (4/4)
- Strukturierung (3/4)
- Bewegungspausen (3/4)

**Differenzierungsstufen:**
- Basis: 2
- Unterstützung: 2

**Empfehlungen für Unterrichtsplanung:**
- Ruhige Sitzplätze (z.B. hinten, Fensterplätze)
- Klare Strukturierung mit Checklisten
- Regelmäßige Bewegungspausen einplanen

---

## Gruppe 3: Förderschwerpunkt "Sprache" (2 Schüler*innen)

**Schüler*innen:** Schüler_E, Schüler_J

**Gemeinsame Unterstützungsbedarfe:**
- Sprachliche Vereinfachung (2/2)
- Visualisierung (2/2)
- Wortspeicher (2/2)

**Differenzierungsstufen:**
- Unterstützung: 2

**Empfehlungen für Unterrichtsplanung:**
- Arbeitsblätter in leichter Sprache
- Wortspeicher mit Fachbegriffen bereitstellen
- Visualisierungen zur Unterstützung des Textverständnisses
```

#### Option 2: Nach Differenzierungsstufe gruppieren

**Output:**

```markdown
# Gruppierung nach Differenzierungsstufe: [Klassenbezeichnung]

---

## Gruppe 1: Unterstützungsstufe (6 Schüler*innen)

**Schüler*innen:** Schüler_B, Schüler_D, Schüler_E, Schüler_J, Schüler_K, Schüler_M

**Förderschwerpunkte:**
- Lernen: 3
- Sprache: 2
- Emotional-soziale Entwicklung: 1

**Gemeinsame Unterstützungsbedarfe:**
- Kleinschrittigkeit (6/6)
- Visualisierung (5/6)
- Sprachliche Vereinfachung (4/6)

**Lernstand Mathematik:**
- Zahlenraum 1-100: 4
- Zahlenraum 1-1000: 2

**Unterrichtsmaterialien:**
- Vereinfachte Arbeitsblätter mit Hilfestellungen
- Lückentexte statt freie Formulierung
- Modelle und Anschauungsmaterial
- Checklisten für Aufgaben

---

## Gruppe 2: Basisstufe (10 Schüler*innen)

**Schüler*innen:** Schüler_A, Schüler_C, Schüler_F, ...

**Förderschwerpunkte:**
- Lernen: 8
- Emotional-soziale Entwicklung: 2

**Lernstand Mathematik:**
- Zahlenraum 1-1000: 6
- Zahlenraum >1000: 4

**Unterrichtsmaterialien:**
- Standard-Arbeitsblätter
- Regelanforderungen des Lehrplans
- Teilweise Visualisierungen

---

## Gruppe 3: Erweiterungsstufe (2 Schüler*innen)

**Schüler*innen:** Schüler_G, Schüler_N

**Förderschwerpunkte:**
- Lernen: 2 (trotzdem hoher Lernstand in Mathematik)

**Lernstand Mathematik:**
- Zahlenraum >1000: 2
- Transferaufgaben: sicher

**Unterrichtsmaterialien:**
- Vertiefende Aufgaben
- Transferaufgaben mit Anwendungsbezug
- Projektarbeiten
- Forscherfragen
```

#### Option 3: Nach Unterstützungsbedarfen gruppieren

**Output:**

```markdown
# Gruppierung nach Unterstützungsbedarfen: [Klassenbezeichnung]

**Hinweis:** Diese Gruppierung zeigt, welche Schüler*innen ähnliche Unterstützungsbedarfe haben.
Sinnvoll für die Vorbereitung von Materialien.

---

## Gruppe A: Visualisierung + Kleinschrittigkeit (8 Schüler*innen)

**Schüler*innen:** Schüler_A, Schüler_C, Schüler_F, ...

**Benötigte Materialien:**
- Bildkarten, Diagramme, Modelle
- Schritt-für-Schritt-Anleitungen
- Arbeitsblätter mit Zwischenüberschriften

---

## Gruppe B: Sprachliche Vereinfachung + Wortspeicher (6 Schüler*innen)

**Schüler*innen:** Schüler_B, Schüler_D, Schüler_E, ...

**Benötigte Materialien:**
- Arbeitsblätter in leichter Sprache
- Wortspeicher mit Fachbegriffen (bebildert)
- Textmarkierungen für wichtige Begriffe

---

## Gruppe C: Ruhige Umgebung + Strukturierung (4 Schüler*innen)

**Schüler*innen:** Schüler_B, Schüler_K, Schüler_M, ...

**Organisatorische Maßnahmen:**
- Sitzplätze: Hinten oder am Fenster
- Checklisten für jede Aufgabe
- Zeitpläne visualisieren
- Rückzugsmöglichkeiten anbieten
```

### Phase 5: Export-Optionen

**Frage:**
```
Möchtest du die Übersicht exportieren?

Optionen:
1. Als Markdown speichern (1_Exportierte_Ergebnisse/Klassenverwaltung/Klassenuebersichten/)
2. Als PDF exportieren (benötigt export-pdf Skill)
3. Direkt im Chat anzeigen (nicht speichern)
```

**Bei Option 1:**
- Dateiname: `Klasse_[Klassenbezeichnung]_Uebersicht_[Datum].md`
- Pfad: `1_Exportierte_Ergebnisse/Klassenverwaltung/Klassenuebersichten/`

**Bei Option 2:**
- Skill `export-pdf` aufrufen
- PDF generieren und speichern

### Phase 6: Interaktive Nachfragen

**Nach Anzeige der Übersicht:**

```
Was möchtest du als Nächstes tun?

1. Eine andere Gruppierung erstellen
2. Einzelnes Schülerprofil anzeigen
3. Differenzierungs-Empfehlungen für diese Klasse erstellen
4. Ein weiteres Schülerprofil erstellen
5. Fertig
```

## Qualitätskriterien

### Datenqualität
- **Vollständigkeit:** Alle Profile im Ordner werden berücksichtigt
- **Konsistenz:** Nur validierte Profile verwenden
- **Aktualität:** Datum der letzten Aktualisierung anzeigen

### Übersichtlichkeit
- **Strukturiert:** Klare Überschriften und Tabellen
- **Verständlich:** Prozentangaben und absolute Zahlen
- **Handlungsorientiert:** Empfehlungen für Unterrichtsplanung

## MCP Filesystem Integration

### Lese-Zugriff
- Alle Schülerprofile aus `1_Exportierte_Ergebnisse/Klassenverwaltung/Schuelerprofile/`
- Filter nach Klassenstufe

### Schreib-Zugriff
- Übersichten speichern in `1_Exportierte_Ergebnisse/Klassenverwaltung/Klassenuebersichten/`
- Dateiformat: Markdown (.md)

## Workflow

```
Start
  ↓
Klasse identifizieren (Eingabe oder Liste anzeigen)
  ↓
Alle Profile der Klasse laden (aus MCP Filesystem)
  ↓
Standard-Übersicht generieren (Verteilungen, Statistiken)
  ↓
Gruppierungsoption anbieten
  ↓
Falls gewählt: Spezifische Gruppierung erstellen
  ↓
Export-Optionen anbieten
  ↓
Falls gewählt: Übersicht speichern (Markdown/PDF)
  ↓
Interaktive Nachfragen (weitere Aktionen?)
  ↓
Ende
```

## Output

### Standard-Übersicht
- Markdown-Format
- Tabellen für Verteilungen
- Empfehlungen für Unterrichtsplanung

### Gruppierungen
- Gruppen mit Schüler*innen-Listen (Pseudonyme)
- Gemeinsame Merkmale pro Gruppe
- Unterrichtsmaterialien-Empfehlungen

### Export
- Datei: `Klasse_[Klassenbezeichnung]_Uebersicht_[Datum].md`
- Optional: PDF via export-pdf Skill

## Integration mit anderen Skills

```
klasse-01-schuelerprofil-erstellen
    ↓
klasse-02-schuelerprofil-validieren
    ↓
Profile in MCP Filesystem gespeichert
    ↓
klasse-03-klasse-verwalten [DIESER SKILL]
    ↓
klasse-04-differenzierungs-empfehlung (nutzt Gruppierungen)
```

## Fehlerbehandlung

### Problem: Keine Profile gefunden

**Lösung:**
```
❌ **Fehler:** Keine Schülerprofile für Klasse "[Klassenbezeichnung]" gefunden.

Möchtest du:
- [1] Ein erstes Schülerprofil für diese Klasse erstellen
- [2] Alle verfügbaren Klassen anzeigen
- [3] Abbrechen
```

### Problem: Profile unvollständig/fehlerhaft

**Lösung:**
```
⚠️ **Warnung:** 2 von 18 Profilen sind unvollständig oder fehlerhaft.

Betroffene Profile:
- Schüler_X (Fehler: Förderschwerpunkt fehlt)
- Schüler_Y (Fehler: Differenzierungsstufe fehlt)

Empfehlung: Profile validieren und vervollständigen.

Trotzdem Übersicht erstellen (nur mit gültigen Profilen)?
```

### Problem: MCP Filesystem nicht erreichbar

**Lösung:**
```
❌ **Fehler:** Kann nicht auf Schülerprofile zugreifen.

Bitte prüfe:
1. Ist der MCP Filesystem Server konfiguriert?
2. Existiert der Ordner `1_Exportierte_Ergebnisse/Klassenverwaltung/Schuelerprofile/`?
3. Hast du Leserechte?
```

## Resources

Dieser Skill nutzt folgende Ressourcen:

- **Daten:** Alle Schülerprofile aus MCP Filesystem
- **Templates:** Übersicht-Template (intern)

## Next Steps

Nach Erstellung einer Klassenübersicht:
- Differenzierungs-Empfehlungen erstellen (klasse-04-differenzierungs-empfehlung)
- Einzelne Schülerprofile anzeigen oder bearbeiten
- Export als PDF für Klassenkonferenzen
- Gruppierungen für Unterrichtsplanung nutzen
