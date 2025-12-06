# Skills Checklist: Projekt "Klassenverwaltung"

## Anleitung für IT-Admin

Diese Checkliste zeigt, welche Skills im Claude Desktop Projekt **"Klassenverwaltung für Förderschullehrkräfte"** aktiviert werden müssen.

---

## Wichtige Änderung: Neue Architektur

**Alte Architektur (veraltet):** 4 Klassenverwaltungs-Skills + 3 Unterstützungs-Skills

**Neue Architektur (aktuell):**
- **Workflow-Anweisungen** in `anweisungen/` (Klassenverwaltungs-Workflow direkt in PROJECT_INSTRUCTIONS.md integriert)
- **6 Custom Skills** nur für Material-Export (optional)

**Warum diese Änderung?**
- Skills sind teuer und langsam beim Laden
- Direkte Anweisungen in PROJECT_INSTRUCTIONS.md sind schneller und flexibler
- Skills nur noch für wiederverwendbare Material-Generierung
- Klassenverwaltungs-Funktionen sind jetzt Anweisungen, keine Skills

---

## Benötigte Skills für dieses Projekt

### ✅ Export-Skills (OPTIONAL)

Diese Skills ermöglichen den Export von Schülerprofilen und Klassenübersichten:

- [ ] **export-md** - Schülerprofile als Markdown speichern
- [ ] **export-pdf** - Klassenübersichten als PDF exportieren
- [ ] **export-docx** - Differenzierungspläne als Word-Dokument
- [ ] **export-pptx** - (nicht relevant für Klassenverwaltung)

**Status:** [ ] Export-Skills aktiviert (optional)

---

## Workflow-Anweisungen (keine Skills!)

Der Klassenverwaltungs-Workflow ist jetzt direkt in den Anweisungen integriert:

**Verfügbar in `anweisungen/`:**
- Schülerprofile erstellen - Strukturierte Erfassung von Schülerprofilen
- Schülerprofile validieren - Automatische Qualitätskontrolle
- Klassenübersichten generieren - Übersicht über Schülerprofile und Gruppierungen
- Differenzierungs-Empfehlungen - Unterrichtsbezogene Differenzierungs-Empfehlungen

Diese werden automatisch durch PROJECT_INSTRUCTIONS.md orchestriert - keine manuelle Aktivierung nötig!

---

## Gesamt-Status

**Minimalkonfiguration (funktionsfähig):**
- [ ] MCP Filesystem Server konfiguriert (PFLICHT!)
- [ ] Keine Skills erforderlich (alles in Anweisungen)

**Empfohlene Konfiguration:**
- [ ] MCP Filesystem Server konfiguriert
- [ ] Mind. 1 Export-Skill (export-md)

**Vollständige Konfiguration:**
- [ ] MCP Filesystem Server konfiguriert
- [ ] Alle 3 Export-Skills aktiviert (markdown, pdf, docx)

---

## Spezielle Anforderungen

### MCP Filesystem Konfiguration

**Wichtig:** Dieses Projekt benötigt MCP Filesystem Server mit **Lese- und Schreibzugriff**!

**Erforderliche Ordner:**
```bash
# 4_Klassen_und_Schueler/ - Speicherort für Schülerprofile
mkdir -p [INSTALLATIONSPFAD]/4_Klassen_und_Schueler/
mkdir -p [INSTALLATIONSPFAD]/1_Exportierte_Ergebnisse/Klassenverwaltung/
```

**Berechtigungen setzen:**
```bash
chmod -R 755 [INSTALLATIONSPFAD]/4_Klassen_und_Schueler/
chmod -R 755 [INSTALLATIONSPFAD]/1_Exportierte_Ergebnisse/
```

### Datenschutz-Template

**Empfohlen:** Erstelle eine Datei `Datenschutz-Hinweise.md` im Ordner `2_Zentrale_Ressourcen/` mit:
- Pseudonymisierungs-Richtlinien
- Was darf/darf nicht gespeichert werden
- Schulinterne Datenschutz-Vorgaben

---

## Troubleshooting

### Problem: Workflow-Schritt wird nicht ausgeführt

**Das ist KEIN Skill-Problem!** Die Workflow-Schritte sind Anweisungen in PROJECT_INSTRUCTIONS.md.

**Lösung:**
1. Prüfe ob die entsprechende Anweisung in `anweisungen/` existiert
2. Prüfe ob PROJECT_INSTRUCTIONS.md die Anweisung referenziert
3. Bei Problemen: Frage Claude explizit nach dem nächsten Schritt

### Problem: MCP Filesystem Fehler

**Lösung:**
1. Prüfe ob der MCP Filesystem Server in `claude_desktop_config.json` konfiguriert ist
2. Prüfe ob der Pfad zu `4_Klassen_und_Schueler/` korrekt ist
3. Teste MCP-Zugriff: "Zeige mir den Inhalt von 4_Klassen_und_Schueler/"

### Problem: Schülerprofil wird nicht gespeichert

**Lösung:**
1. Prüfe Schreibrechte: `chmod -R 755 [INSTALLATIONSPFAD]/4_Klassen_und_Schueler/`
2. Prüfe ob der Ordner existiert: `ls [INSTALLATIONSPFAD]/4_Klassen_und_Schueler/`
3. Teste manuelles Speichern: Erstelle eine Test-Datei im Ordner

### Problem: Export-Skill funktioniert nicht

**Lösung:**
1. Prüfe MCP-Konfiguration (claude-desktop-setup/MCP_CONFIG.json)
2. Stelle sicher, dass der Pfad zu `1_Exportierte_Ergebnisse/` korrekt ist
3. Prüfe Schreibrechte: `chmod -R 755 /Pfad/zu/Schul-Materialien`

---

## Test-Checkliste

Nach Installation alle Workflows testen:

### Test 1: Schülerprofil erstellen
- [ ] Prompt: "Ich möchte ein neues Schülerprofil erstellen."
- [ ] Erwartung: Claude fragt interaktiv alle Daten ab
- [ ] Ergebnis: Datei wird in `4_Klassen_und_Schueler/Klasse_X/Schuelerprofile/` gespeichert

### Test 2: Validierung
- [ ] Prompt: "Validiere das Schülerprofil Vorname_Nachname."
- [ ] Erwartung: Claude prüft Vollständigkeit und Konsistenz
- [ ] Ergebnis: Feedback mit Hinweisen oder Bestätigung

### Test 3: Klassenübersicht
- [ ] Prompt: "Zeige mir eine Übersicht meiner Klasse 7a."
- [ ] Erwartung: Claude liest alle Profile und generiert Übersicht
- [ ] Ergebnis: Strukturierte Übersicht nach Förderbedarf/Differenzierungsstufe

### Test 4: Differenzierungs-Empfehlung
- [ ] Prompt: "Erstelle Differenzierungs-Empfehlungen für Klasse 7a zum Thema Photosynthese."
- [ ] Erwartung: Claude analysiert Profile und generiert Empfehlungen
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

**Version:** 2.0
**Zuletzt aktualisiert:** 2025-11-30
**Änderungen:** Umstellung auf Workflow-Anweisungen, nur noch 3 Export-Skills (optional)
