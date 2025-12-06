---
name: differenzierung-ge
description: "Dieser Skill erstellt Material für Schüler mit Förderschwerpunkt Geistige Entwicklung (GE). Trigger-Keywords: 'GE-Material', 'Geistige Entwicklung', 'Piktogramme', 'basale Stimulation', 'lebenspraktisch', 'GE-Differenzierung', 'METACOM', 'Piktogramm-Arbeitsblatt', 'stark vereinfacht', 'Förderschwerpunkt GE', 'schwere Behinderung'."
---

# Differenzierung für Förderschwerpunkt Geistige Entwicklung

## Zweck

Dieser Skill erstellt piktogramm-unterstützte Materialien für Schüler:innen mit Förderschwerpunkt Geistige Entwicklung (GE). Er berücksichtigt die besonderen Lernbedürfnisse dieser Zielgruppe und integriert visuelle Unterstützung durch METACOM-Symbole.

## Wann dieser Skill verwendet werden soll

Aktiviere diesen Skill wenn:

- Materialien für Schüler:innen mit Förderschwerpunkt GE erstellt werden sollen
- Piktogramm-unterstützte Arbeitsblätter benötigt werden
- Stark vereinfachte Versionen von Unterrichtsmaterial gewünscht sind
- Die Lehrkraft "GE-Material", "Piktogramme", "METACOM" oder "basale Stimulation" erwähnt
- Lebenspraktische Bezüge im Vordergrund stehen
- Kommunikationstafeln oder Tagesstrukturpläne erstellt werden sollen

## Piktogramm-Integration

### METACOM-Ressourcen

Die Lehrkraft hat Zugriff auf METACOM-Symbole. Diese sind gespeichert unter:

```
2_Zentrale_Ressourcen/Piktogramme/METACOM/
```

**Workflow:**
1. Prüfe, ob relevante Piktogramme im Ordner vorhanden sind
2. Falls ja: Verweise auf konkrete Dateinamen
3. Falls nein: Füge Platzhalter ein

### Platzhalter-System

Wo Piktogramme benötigt werden, füge beschreibende Platzhalter ein:

```
[PIKTOGRAMM: Händewaschen]
[PIKTOGRAMM: Frühstück]
[PIKTOGRAMM: Pause]
[PIKTOGRAMM: Toilette]
[PIKTOGRAMM: Arbeiten]
[PIKTOGRAMM: Spielen]
```

**Format der Platzhalter:**
- Klare, eindeutige Beschreibung
- Substantiv oder kurze Handlungsbeschreibung
- Konsistent im gesamten Dokument

Die Lehrkraft ersetzt diese Platzhalter später mit den entsprechenden METACOM-Symbolen.

### Vorhandene Piktogramme nutzen

Falls Piktogramme im MCP-Ordner vorhanden sind:

```
Siehe Piktogramm: 2_Zentrale_Ressourcen/Piktogramme/METACOM/haende_waschen.png
```

## Material-Typen

### 1. Bildkarten mit Piktogrammen

**Struktur:**
```
=====================================
BILDKARTE: [THEMA]
=====================================

[PIKTOGRAMM: Thema]

TEXT (stark vereinfacht):
[1-2 Wörter oder kurzer Satz]

-------------------------------------
```

### 2. Kommunikationstafeln

**Struktur:**
```
=====================================
KOMMUNIKATIONSTAFEL: [SITUATION]
=====================================

+-------------------+-------------------+
| [PIKTOGRAMM: Ja]  | [PIKTOGRAMM: Nein]|
|       JA          |       NEIN        |
+-------------------+-------------------+
| [PIKTOGRAMM: X]   | [PIKTOGRAMM: Y]   |
|       [Text]      |       [Text]      |
+-------------------+-------------------+
```

### 3. Handlungsabläufe (Schritt-für-Schritt)

**Struktur:**
```
=====================================
HANDLUNGSABLAUF: [AKTIVITÄT]
=====================================

SCHRITT 1
---------
[PIKTOGRAMM: Schritt 1]
[Kurze Anweisung]

SCHRITT 2
---------
[PIKTOGRAMM: Schritt 2]
[Kurze Anweisung]

SCHRITT 3
---------
[PIKTOGRAMM: Schritt 3]
[Kurze Anweisung]

-------------------------------------
FERTIG!
[PIKTOGRAMM: Daumen hoch / Fertig]
=====================================
```

### 4. Tagesstrukturpläne

**Struktur:**
```
=====================================
TAGESPLAN: [TAG/DATUM]
=====================================

08:00  [PIKTOGRAMM: Ankommen]     Ankommen
08:15  [PIKTOGRAMM: Morgenkreis]  Morgenkreis
08:45  [PIKTOGRAMM: Arbeiten]     Arbeiten
09:30  [PIKTOGRAMM: Pause]        Pause
...

=====================================
```

### 5. Stark vereinfachte Arbeitsblätter

**Struktur:**
```
=====================================
ARBEITSBLATT: [THEMA]
=====================================

Name: _______________________

[PIKTOGRAMM: Thema]

AUFGABE
-------
[Sehr einfache Anweisung]
[Mit Piktogramm-Unterstützung]

[Großer Arbeitsbereich]





-------------------------------------
[PIKTOGRAMM: Fertig]  Fertig!
=====================================
```

## Didaktische Prinzipien

### Basale Stimulation

- Multisensorische Zugänge anbieten
- Taktile, visuelle, auditive Reize einbeziehen
- Körperbezogene Erfahrungen ermöglichen

### Lebenspraktische Bezüge

- Inhalte mit Alltagssituationen verknüpfen
- Praktische Anwendbarkeit im Vordergrund
- Selbstständigkeit fördern

### Ritualisierung und Wiederholung

- Gleichbleibende Strukturen verwenden
- Vertraute Abläufe beibehalten
- Häufige Wiederholung einplanen

### Handlungsorientierung

- Aktives Tun ermöglichen
- Konkrete Materialien einsetzen
- Bewegung einbeziehen

### Multisensorische Zugänge

- Verschiedene Sinne ansprechen
- Hören, Sehen, Tasten kombinieren
- Redundanz der Informationen

### Kleine Lernschritte

- Komplexe Aufgaben zerteilen
- Einzelne Teilschritte klar benennen
- Erfolgserlebnisse ermöglichen

## Sprachliche Vereinfachung

### Regeln für Text in GE-Materialien:

1. **Kurze Sätze** - Maximal 5-7 Wörter
2. **Bekannte Wörter** - Alltagsvokabular verwenden
3. **Einfache Struktur** - Subjekt-Prädikat-Objekt
4. **Wiederholende Muster** - Gleiche Satzstrukturen
5. **Große Schrift** - Mindestens 14pt, besser 18pt+
6. **Klare Schriftart** - Serifenlos (Arial, Verdana)
7. **Viel Weißraum** - Übersichtliche Gestaltung

### Beispiele:

**Zu komplex:**
"Die Schülerinnen und Schüler sollen sich die Hände waschen, bevor sie zum Frühstück gehen."

**Vereinfacht:**
"Hände waschen. [PIKTOGRAMM: Händewaschen]
Dann Frühstück. [PIKTOGRAMM: Frühstück]"

## Hinweise für die Lehrkraft

Am Ende jedes Materials für die Lehrkraft hinzufügen:

```
=====================================
HINWEISE FUER DIE LEHRKRAFT
=====================================

PIKTOGRAMME EINFUEGEN:
Die Platzhalter [PIKTOGRAMM: ...] durch METACOM-Symbole ersetzen.
Symbole finden Sie unter: 2_Zentrale_Ressourcen/Piktogramme/METACOM/

DRUCKEMPFEHLUNG:
- Papierformat: A4 oder größer
- Farbdruck empfohlen
- Laminieren für Haltbarkeit

DIFFERENZIERUNG:
- Bei Bedarf Text weiter vereinfachen oder entfernen
- Mehr/weniger Piktogramme je nach Schüler:in
- Größe der Symbole anpassen

INDIVIDUELLE ANPASSUNGEN:
- Berücksichtigen Sie die Lernausgangslage der einzelnen Schüler:innen
- Schülerprofil konsultieren unter: 4_Klassen_und_Schueler/
=====================================
```

## MCP-Integration

Dieser Skill nutzt folgende MCP-Ressourcen:

**Lesen:**
- `2_Zentrale_Ressourcen/Piktogramme/METACOM/` - METACOM-Symbole
- `4_Klassen_und_Schueler/Klasse_*/Schuelerprofile/` - Individuelle Schülerprofile

**Schreiben:**
- `1_Exportierte_Ergebnisse/` - Fertige GE-Materialien

## Integration mit anderen Skills

Dieser Skill arbeitet zusammen mit:

- **mat-02-arbeitsblatt-erstellen**: Liefert Grundstruktur für Arbeitsblätter
- **export-md**: Exportiert GE-Materialien im Markdown-Format
- **projekt-5-klassenverwaltung/anweisungen/**: Liefert Schülerprofile für Differenzierung

## Qualitätsprüfung

### Vor Abschluss prüfen:

- [ ] Alle Piktogramm-Platzhalter sind korrekt beschrieben
- [ ] Text ist maximal vereinfacht
- [ ] Schritt-für-Schritt-Struktur ist klar erkennbar
- [ ] Genug Weißraum für Übersichtlichkeit
- [ ] Lehrkraft-Hinweise sind enthalten
- [ ] Lebenspraktischer Bezug ist gegeben
- [ ] Material ist altersangemessen (nicht infantilisierend!)

## Beispiel: Handlungsablauf "Hände waschen"

```
=====================================
HANDLUNGSABLAUF: HAENDE WASCHEN
=====================================

SCHRITT 1
---------
[PIKTOGRAMM: Wasserhahn aufdrehen]

Wasser an.


SCHRITT 2
---------
[PIKTOGRAMM: Hände nass machen]

Hände nass.


SCHRITT 3
---------
[PIKTOGRAMM: Seife]

Seife nehmen.


SCHRITT 4
---------
[PIKTOGRAMM: Hände einseifen]

Hände einseifen.


SCHRITT 5
---------
[PIKTOGRAMM: Hände abspülen]

Abspülen.


SCHRITT 6
---------
[PIKTOGRAMM: Wasserhahn zudrehen]

Wasser aus.


SCHRITT 7
---------
[PIKTOGRAMM: Hände abtrocknen]

Abtrocknen.


-------------------------------------
FERTIG!
[PIKTOGRAMM: Daumen hoch]
=====================================


=====================================
HINWEISE FUER DIE LEHRKRAFT
=====================================

PIKTOGRAMME EINFUEGEN:
Die Platzhalter durch METACOM-Symbole ersetzen.
Empfohlene Kategorie: Koerperpflege, Handlungen

DRUCKEMPFEHLUNG:
- A4 Hochformat
- Farbdruck
- Laminieren empfohlen
- Ggf. am Waschbecken aufhängen

DIFFERENZIERUNG:
- Bei motorischen Einschränkungen: Bilderfolge verkürzen
- Bei höherem Unterstützungsbedarf: 1:1-Begleitung
- Bei Selbstständigkeit: Als Checkliste zum Abhaken
=====================================
```
