# Differenzierungs-Empfehlung erstellen

## Zweck

Dieser Skill erstellt **konkrete Differenzierungs-Empfehlungen** für ein spezifisches Unterrichtsthema auf Basis der Schülerprofile einer Klasse. Er nutzt das **3-Stufen-Modell nach Wember**:

- **Unterstützungsstufe** - Vereinfachte Anforderungen, mehr Hilfestellung
- **Basisstufe** - Regelanforderungen des Lehrplans
- **Erweiterungsstufe** - Vertiefte Anforderungen, Transfer

**Kernfunktionen:**
- Automatische Gruppierung der Klasse nach Differenzierungsstufe
- Anpassung der Lernziele pro Stufe
- Konkrete Methoden und Materialien-Empfehlungen
- Sozialformen-Vorschläge
- Export als Differenzierungsplan

## Anwendung

### Phase 1: Kontext erfassen

**Frage 1: Klasse identifizieren**
```
Für welche Klasse möchtest du Differenzierungs-Empfehlungen erstellen?
```

**Frage 2: Unterrichtsthema**
```
Welches Unterrichtsthema planst du?

Bitte gib an:
- Thema: [...]
- Fach: [...]
- Geplanter Umfang: [z.B. "2 Doppelstunden", "1 Unterrichtsstunde"]
```

### Phase 2: Schülerprofile analysieren

**Aktion:**
1. Alle Schülerprofile der Klasse aus `/Users/lennart/Schul-Materialien/4_Klassen_und_Schueler/[Klassenname]/Schuelerprofile/` laden
2. Nach Differenzierungsstufe gruppieren
3. Pro Stufe: Gemeinsame Merkmale identifizieren

### Phase 3: Lernziele differenzieren

Basierend auf dem Unterrichtsthema werden drei Lernziele formuliert (nach Bloom-Taxonomie).

### Phase 4: Methoden & Materialien pro Stufe

Pro Differenzierungsstufe werden konkrete Methoden und Materialien empfohlen.

## MCP Filesystem Integration

### Lese-Zugriff
- Alle Schülerprofile aus `/Users/lennart/Schul-Materialien/4_Klassen_und_Schueler/[Klassenname]/Schuelerprofile/`
- Optional: Wember-Differenzierung aus `/Users/lennart/Schul-Materialien/2_Zentrale_Ressourcen/Didaktik/`

### Schreib-Zugriff
- Differenzierungsplan speichern in `/Users/lennart/Schul-Materialien/1_Exportierte_Ergebnisse/Klassenverwaltung/`
- Dateiformat: Markdown (.md)

