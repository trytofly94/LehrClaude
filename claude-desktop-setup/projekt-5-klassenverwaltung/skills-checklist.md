# Skills Checklist: Projekt "Klassenverwaltung"

## Anleitung für IT-Admin

Diese Checkliste zeigt, welche Skills im Claude Desktop Projekt **"Klassenverwaltung für Förderschullehrkräfte"** aktiviert werden müssen.

### Wie aktiviere ich Skills?

1. Öffne Claude Desktop
2. Gehe zu **Settings > Capabilities > Skills**
3. Scrolle zur Sektion "Custom Skills" (falls du eigene hochgeladen hast)
4. Aktiviere die unten aufgeführten Skills durch Klick auf den Toggle

---

## Benötigte Skills für dieses Projekt

### ✅ Kern-Klassenverwaltungs-Skills (PFLICHT - alle 4 Skills)

Diese Skills bilden das Klassenverwaltungs-System ab:

- [ ] **klasse-01-schuelerprofil-erstellen** - Strukturierte Erfassung von Schülerprofilen
- [ ] **klasse-02-schuelerprofil-validieren** - Automatische Qualitätskontrolle
- [ ] **klasse-03-klasse-verwalten** - Übersicht über Schülerprofile und Gruppierungen
- [ ] **klasse-04-differenzierungs-empfehlung** - Unterrichtsbezogene Differenzierungs-Empfehlungen

**Status:** [ ] Alle 4 Klassenverwaltungs-Skills aktiviert

---

### ✅ Unterstützende Skills (OPTIONAL, aber empfohlen)

Diese Skills erweitern die Funktionalität:

- [ ] **05-lernziele-operationalisieren** - Für adaptive Lernziele pro Schülergruppe
- [ ] **export-markdown** - Schülerprofile als Markdown speichern
- [ ] **export-pdf** - Klassenübersichten als PDF exportieren

**Status:** [ ] Unterstützende Skills aktiviert (optional)

---

## Gesamt-Status

**Minimalkonfiguration (funktionsfähig):**
- [ ] Alle 4 Klassenverwaltungs-Skills (klasse-01 bis klasse-04)
- [ ] MCP Filesystem Server konfiguriert

**Empfohlene Konfiguration:**
- [ ] Alle 4 Klassenverwaltungs-Skills (klasse-01 bis klasse-04)
- [ ] Mind. 1 Export-Skill (export-markdown)
- [ ] MCP Filesystem Server konfiguriert

**Vollständige Konfiguration:**
- [ ] Alle 7 Skills aktiviert (4 Klassenverwaltungs-Skills + 3 Unterstützende)
- [ ] MCP Filesystem Server konfiguriert

---

## Spezielle Anforderungen

### MCP Filesystem Konfiguration

**Wichtig:** Dieses Projekt benötigt MCP Filesystem Server mit **Lese- und Schreibzugriff**!

**Erforderliche Ordner:**
```bash
mkdir -p [INSTALLATIONSPFAD]/1_Exportierte_Ergebnisse/Klassenverwaltung/Schuelerprofile
mkdir -p [INSTALLATIONSPFAD]/1_Exportierte_Ergebnisse/Klassenverwaltung/Klassenuebersichten
mkdir -p [INSTALLATIONSPFAD]/1_Exportierte_Ergebnisse/Klassenverwaltung/Differenzierungsplaene
mkdir -p [INSTALLATIONSPFAD]/2_Zentrale_Ressourcen/Templates
```

**Berechtigungen setzen:**
```bash
chmod -R 755 [INSTALLATIONSPFAD]/1_Exportierte_Ergebnisse/Klassenverwaltung
```

### Datenschutz-Template

**Empfohlen:** Erstelle eine Datei `Datenschutz-Hinweise.md` im Ordner `2_Zentrale_Ressourcen/` mit:
- Pseudonymisierungs-Richtlinien
- Was darf/darf nicht gespeichert werden
- Schulinterne Datenschutz-Vorgaben

---

## Troubleshooting

### Problem: Skill erscheint nicht in der Liste

**Lösung:**
1. Prüfe ob der Skill hochgeladen wurde (Settings > Skills > Custom Skills)
2. Falls nicht: ZIP-Datei aus `claude-desktop-setup/skills/[SKILL-NAME]/` erstellen
3. Upload via "Upload Custom Skill"
4. Warte 5-10 Sekunden, dann neu laden

### Problem: Skill ist aktiviert, wird aber nicht aufgerufen

**Lösung:**
1. Prüfe die `description` im YAML-Frontmatter der SKILL.md
2. Die Description muss klare Trigger-Keywords enthalten (z.B. "Schülerprofil erstellen")
3. Teste manuell im Chat: "Bitte nutze den Skill klasse-01-schuelerprofil-erstellen"

### Problem: MCP Filesystem Fehler

**Lösung:**
1. Prüfe ob der MCP Filesystem Server in `claude_desktop_config.json` konfiguriert ist
2. Prüfe ob der Pfad zu `Schul-Materialien/` oder `[INSTALLATIONSPFAD]/` korrekt ist
3. Teste MCP-Zugriff: "Zeige mir den Inhalt von 2_Zentrale_Ressourcen/Templates/"

### Problem: Schülerprofil wird nicht gespeichert

**Lösung:**
1. Prüfe Schreibrechte: `chmod -R 755 [INSTALLATIONSPFAD]/1_Exportierte_Ergebnisse/`
2. Prüfe ob der Ordner existiert: `ls [INSTALLATIONSPFAD]/1_Exportierte_Ergebnisse/Klassenverwaltung/Schuelerprofile/`
3. Teste manuelles Speichern: Erstelle eine Test-Datei im Ordner

---

## Reihenfolge der Skill-Erstellung (für IT-Admin)

**Empfohlene Priorisierung:**

1. **Phase 1:** klasse-01-schuelerprofil-erstellen (Basis-Funktionalität)
2. **Phase 2:** klasse-02-schuelerprofil-validieren (Qualitätssicherung)
3. **Phase 3:** klasse-03-klasse-verwalten (Übersichtsfunktion)
4. **Phase 4:** klasse-04-differenzierungs-empfehlung (Erweiterte Funktion)
5. **Phase 5:** Export-Skills (optional)

**Zeitaufwand:** Ca. 30-45 Minuten für alle 4 Skills (mit skill-creator)

---

## Test-Checkliste

Nach Installation alle Skills testen:

### Test 1: Schülerprofil erstellen
- [ ] Prompt: "Ich möchte ein neues Schülerprofil erstellen."
- [ ] Erwartung: Skill fragt interaktiv alle Daten ab
- [ ] Ergebnis: Datei wird in `Schuelerprofile/` gespeichert

### Test 2: Validierung
- [ ] Prompt: "Validiere das Schülerprofil Schüler_A."
- [ ] Erwartung: Skill prüft Vollständigkeit und Konsistenz
- [ ] Ergebnis: Feedback mit Hinweisen oder Bestätigung

### Test 3: Klassenübersicht
- [ ] Prompt: "Zeige mir eine Übersicht meiner Klasse 7a."
- [ ] Erwartung: Skill liest alle Profile und generiert Übersicht
- [ ] Ergebnis: Strukturierte Übersicht nach Förderbedarf/Differenzierungsstufe

### Test 4: Differenzierungs-Empfehlung
- [ ] Prompt: "Erstelle Differenzierungs-Empfehlungen für Klasse 7a zum Thema Photosynthese."
- [ ] Erwartung: Skill analysiert Profile und generiert Empfehlungen
- [ ] Ergebnis: Differenzierungsplan mit 3 Stufen (Unterstützung/Basis/Erweiterung)

---

## Datenschutz-Checkliste

**Vor Rollout an Lehrkräfte:**

- [ ] Datenschutz-Hinweise im System hinterlegt
- [ ] Lehrkräfte über Pseudonymisierung informiert
- [ ] Keine Cloud-Synchronisation aktiviert
- [ ] Lokale Speicherung sichergestellt
- [ ] Backup-Strategie für Lehrkraft definiert (extern, verschlüsselt)
- [ ] Schulleitung/Datenschutzbeauftragter informiert

---

**Zuletzt aktualisiert:** 2025-01-10
