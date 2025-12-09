---
name: quellenrecherche
description: "Dieser Skill validiert wissenschaftliche Quellen und formatiert Zitationen für akademische Abgaben. Trigger-Keywords: 'Quelle prüfen', 'Zitation erstellen', 'Quellenverzeichnis', 'Quellen validieren', 'wissenschaftliche Belege', 'Literatur nachweisen', 'Quellenangabe formatieren', 'Quelle verifizieren', 'Literaturverzeichnis'."
---

# Quellenrecherche und Zitationsformatierung

## Zweck

Dieser Skill unterstützt die wissenschaftliche Quellenarbeit für akademische Unterrichtsplanungen. Er validiert Quellen per Web-Suche und formatiert sie nach den Zitationsrichtlinien für deutschsprachige Unterrichtsplanung.

## Wann dieser Skill verwendet werden soll

Aktiviere diesen Skill wenn:

- Eine Quelle auf Existenz und Korrektheit geprüft werden soll
- Eine Inline-Zitation im Format (Autor, Jahr) benötigt wird
- Ein Quellenverzeichnis-Eintrag formatiert werden soll
- Mehrere Quellen für ein Thema recherchiert werden sollen
- Die Lehrkraft "Quelle prüfen", "Quellenverzeichnis erstellen" oder ähnliches sagt

## Workflow

### Schritt 1: Quelle verifizieren

**Vor jeder Zitation MUSS die Quelle verifiziert werden:**

1. **Web-Suche durchführen** - Suche nach Autor, Titel, Jahr
2. **Existenz bestätigen** - Quelle muss auffindbar sein
3. **Bibliographische Daten prüfen** - Autor, Jahr, Titel, Verlag korrekt?
4. **Bei Nicht-Auffindbarkeit: WARNUNG** - "Diese Quelle konnte nicht verifiziert werden"

**WICHTIG:** NIEMALS nicht-verifizierte Quellen zitieren!

### Schritt 2: Zitationsformat anwenden

**Inline-Zitation (im Fließtext):**
- Einzelautor: (Meyer, 2018)
- Mit Seitenangabe: (Meyer, 2018, S. 45)
- Zwei Autoren: (Meyer & Klafki, 2018)
- Mehr als zwei: (Meyer et al., 2018)
- Mehrere Quellen: (Hattie, 2015; Helmke, 2017)

**Quellenverzeichnis-Eintrag:**

Format: `Autor, V. (Jahr). Titel. Verlag/Zeitschrift, Band(Heft), Seiten.`

### Schritt 3: Quellenverzeichnis generieren

Am Ende des Dokuments:
- Alphabetisch nach Autor sortiert
- Alle im Text zitierten Quellen enthalten
- Einheitliches Format durchgängig

## Zitationsformat nach Quellentyp

### Buch

```
Meyer, H. (2018). Was ist guter Unterricht? (12. Aufl.). Cornelsen.
```

### Sammelband/Buchkapitel

```
Klafki, W. (1985). Neue Studien zur Bildungstheorie und Didaktik.
   In: Zeitgemäße Allgemeinbildung und kritisch-konstruktive Didaktik.
   Beltz.
```

### Zeitschriftenartikel

```
Helmke, A. (2017). Unterrichtsqualität erfassen, bewerten, verbessern.
   Pädagogik, 69(2), 10-15.
```

### Online-Quelle

```
Kultusministerkonferenz. (2024). Bildungsstandards im Fach Deutsch.
   https://www.kmk.org/... (Abgerufen am 15.01.2025)
```

### Lehrplan

```
Ministerium für Schule und Bildung NRW. (2019). Kernlehrplan Biologie
   Gymnasium Sekundarstufe I. Ritterbach Verlag.
   https://www.schulentwicklung.nrw.de/... (Abgerufen am 15.01.2025)
```

## Standardwerke Didaktik

Bei Zitationen aus folgenden Standardwerken ist die Verifikation oft einfacher:

**Bildungstheoretische Didaktik:**
- Klafki, W. - Kategoriale Bildung, Didaktische Analyse
- Klafki, W. (1985). Neue Studien zur Bildungstheorie und Didaktik. Beltz.

**Unterrichtsplanung:**
- Meyer, H. - Was ist guter Unterricht?, Merkmale guten Unterrichts
- Meyer, H. (2018). Was ist guter Unterricht? Cornelsen.
- Meyer, H. (2007). Leitfaden Unterrichtsvorbereitung. Cornelsen.

**Lehr-Lern-Modell:**
- Leisen, J. - Sprachsensibler Fachunterricht, Lernaufgaben
- Leisen, J. (2013). Handbuch Sprachförderung im Fach. Klett.

**Unterrichtsqualität:**
- Helmke, A. - Angebots-Nutzungs-Modell, Unterrichtsqualität
- Helmke, A. (2017). Unterrichtsqualität und Lehrerprofessionalität. Klett.

**Empirische Bildungsforschung:**
- Hattie, J. - Visible Learning, Effektstärken
- Hattie, J. (2015). Lernen sichtbar machen. Schneider Verlag.

**Differenzierung:**
- Wember, F. - Differenzierungsmodell (Basis/Unterstützung/Erweiterung)

**Lernzielformulierung:**
- Anderson, L. W. & Krathwohl, D. R. - Revidierte Bloom-Taxonomie
- Mager, R. F. - Operationalisierte Lernziele

## Qualitätsprüfung

### Vor Abschluss prüfen:

- [ ] Jede Quelle wurde per Web-Suche verifiziert
- [ ] Keine halluzinierten oder erfundenen Quellen
- [ ] Alle Inline-Zitationen haben Einträge im Quellenverzeichnis
- [ ] Quellenverzeichnis ist alphabetisch sortiert
- [ ] Format ist einheitlich durchgängig
- [ ] Deutschsprachige Quellen wurden bevorzugt
- [ ] Aktuelle Quellen (möglichst nicht älter als 10 Jahre, außer Standardwerke)

### Warnung bei Problemen:

Wenn eine Quelle nicht verifiziert werden kann:

```
WARNUNG: Die Quelle "[Autor, Jahr, Titel]" konnte nicht verifiziert werden.
Mögliche Gründe:
- Die Quelle existiert nicht in dieser Form
- Die bibliographischen Angaben sind unvollständig oder fehlerhaft
- Die Quelle ist nicht online auffindbar

Empfehlung: Diese Quelle NICHT verwenden oder alternative Quelle suchen.
```

## Recherche-Empfehlung für umfangreiche Arbeiten

Bei umfangreichen Unterrichtsplanungen mit vielen Quellen:

1. **Evaluiere den Umfang** - Wie viele Quellen werden benötigt?
2. **Für begrenzte Recherche:** Web-Suche nutzen (automatisch)
3. **Für umfangreiche Recherche:** Deep Research empfehlen

**Deep Research Empfehlung (falls nötig):**

```
Für dieses Thema empfehle ich Deep Research. Bitte aktivieren Sie
Deep Research in Claude und geben Sie folgenden Prompt ein:

"Recherchiere deutschsprachige fachdidaktische Literatur zum Thema
[THEMA] für die [KLASSENSTUFE]. Fokus auf: [SPEZIFISCHE ASPEKTE].
Bevorzuge peer-reviewed Quellen und aktuelle Publikationen (2015-2025)."
```

## MCP-Integration

Dieser Skill nutzt die Zitationsrichtlinien aus:
`2_Zentrale_Ressourcen/Didaktik/Zitationsrichtlinien.md`

Bei Bedarf kann Claude diese Datei lesen, um das korrekte Format zu bestätigen.

## Integration mit anderen Skills

Dieser Skill arbeitet zusammen mit:

- **Planungs-Anweisungen** (in projekt-*/anweisungen/): Liefert Quellen für Sachanalyse, Didaktische Analyse
- **export-md**: Formatiert Quellenverzeichnis im Markdown-Export
- **export-pdf, export-docx**: Übernimmt Quellenformatierung in finale Dokumente

## Beispiel-Workflow

**Anfrage:** "Ich brauche Quellen zur Handlungsorientierung im Biologieunterricht"

**Antwort:**

1. **Web-Suche** für "Handlungsorientierung Biologieunterricht Didaktik"
2. **Verifizierte Quellen:**

```
INLINE-ZITATIONEN:
- "Der handlungsorientierte Unterricht fördert..." (Meyer, 2018)
- "Biologische Erkenntnisgewinnung erfordert..." (Hammann & Asshoff, 2014)

QUELLENVERZEICHNIS:
Hammann, M. & Asshoff, R. (2014). Schülervorstellungen im
   Biologieunterricht. Klett Kallmeyer.
Meyer, H. (2018). Was ist guter Unterricht? (12. Aufl.). Cornelsen.
```

3. **Warnung (falls nötig):**

```
WARNUNG: Die Quelle "Müller, K. (2020). Handlungsorientierung heute."
konnte nicht verifiziert werden. Alternative Quelle empfohlen.
```
