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
   - Pfad: `/Users/lennart/Schul-Materialien/4_Klassen_und_Schueler/`
2. Klassen extrahieren (aus Unterverzeichnissen)
3. Liste anzeigen:

```
Verfügbare Klassen:
- Klasse_7a_LE (18 Schüler*innen)
- Klasse_8b_GE (12 Schüler*innen)
- Klasse_9a_ESE (15 Schüler*innen)

Welche möchtest du anzeigen?
```

### Phase 2: Profile laden

**Aktion:**
1. Alle Schülerprofile aus dem Klassenordner laden
   - Pfad: `/Users/lennart/Schul-Materialien/4_Klassen_und_Schueler/[Klassenname]/Schuelerprofile/`
2. Profile in interne Datenstruktur überführen

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
4. Keine Gruppierung (nur Übersicht)
```

## MCP Filesystem Integration

### Lese-Zugriff
- Alle Schülerprofile aus `/Users/lennart/Schul-Materialien/4_Klassen_und_Schueler/[Klassenname]/Schuelerprofile/`

### Schreib-Zugriff
- Übersichten speichern in `/Users/lennart/Schul-Materialien/1_Exportierte_Ergebnisse/Klassenverwaltung/`
- Dateiformat: Markdown (.md)

## Output

### Standard-Übersicht
- Markdown-Format
- Tabellen für Verteilungen
- Empfehlungen für Unterrichtsplanung

### Gruppierungen
- Gruppen mit Schüler*innen-Listen (Pseudonyme)
- Gemeinsame Merkmale pro Gruppe
- Unterrichtsmaterialien-Empfehlungen

