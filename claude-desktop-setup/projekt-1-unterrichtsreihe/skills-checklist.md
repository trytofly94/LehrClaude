# Skills Checklist: Projekt "Unterrichtsreihe planen"

## Anleitung für IT-Admin

Diese Checkliste zeigt, welche Skills im Claude Desktop Projekt **"Unterrichtsreihe planen"** aktiviert werden müssen.

### Wie aktiviere ich Skills?

1. Öffne Claude Desktop
2. Gehe zu **Settings > Capabilities > Skills**
3. Scrolle zur Sektion "Custom Skills" (falls du eigene hochgeladen hast)
4. Aktiviere die unten aufgeführten Skills durch Klick auf den Toggle

---

## Wichtige Änderung: Neue Architektur

**Alte Architektur (veraltet):** 11 Planungs-Skills + 3 Material-Skills + 3 Export-Skills

**Neue Architektur (aktuell):**
- **Workflow-Anweisungen** in `anweisungen/` (11 Schritte direkt in PROJECT_INSTRUCTIONS.md integriert)
- **6 Custom Skills** nur für Material-Erstellung und Export

**Warum diese Änderung?**
- Skills sind teuer und langsam beim Laden
- Direkte Anweisungen in PROJECT_INSTRUCTIONS.md sind schneller und flexibler
- Skills nur noch für wiederverwendbare Material-Generierung

---

## Benötigte Skills für dieses Projekt

### ✅ Material-Skills (WICHTIG - für Material-Erstellung im Kontext)

Diese Skills ermöglichen die Erstellung von Arbeitsblättern und Präsentationen **direkt im Kontext der Unterrichtsreihe** (Schritt 9) - ohne Projektwechsel!

- [ ] **mat-02-arbeitsblatt-erstellen** - Arbeitsblätter mit Lernzielen & Differenzierung aus der Planung
- [ ] **mat-03-powerpoint-erstellen** - Präsentationen passend zur Stundenplanung

**Status:** [ ] Material-Skills aktiviert (EMPFOHLEN)

---

### ✅ Export-Skills (PFLICHT für Ergebnis-Speicherung)

Diese Skills ermöglichen den Export der fertigen Unterrichtsreihe:

- [ ] **export-txt** - Markdown-Export
- [ ] **export-pdf** - PDF-Export
- [ ] **export-docx** - Word-Export
- [ ] **export-pptx** - PPTX-Export

**Status:** [ ] Export-Skills aktiviert

---

## Workflow-Anweisungen (keine Skills!)

Der 11-Schritte-Prozess ist jetzt direkt in den Anweisungen integriert:

**Verfügbar in `anweisungen/`:**
1. 01-debiasing.md - Bias-Vermeidung
2. 02-sachanalyse.md - Fachliche Analyse
3. 03-didaktische-analyse.md - Didaktische Reduktion
4. 04-fachbegriffe-klaeren.md - Terminologie aufbereiten
5. 05-lernziele-operationalisieren.md - SMART-Lernziele formulieren
6. 06-mindmap-strukturierung.md - Wissensstruktur visualisieren
7. 07-unterrichtsverlauf-planen.md - Stundenplanung
8. 08-lernkontrollen-entwickeln.md - Assessment-Design
9. 09-material-zusammenstellen.md - Ressourcen organisieren
10. 10-reflexion-durchfuehren.md - Evaluation
11. 11-iteration-optimierung.md - Verbesserung

Diese werden automatisch durch PROJECT_INSTRUCTIONS.md orchestriert - keine manuelle Aktivierung nötig!

---

## Gesamt-Status

**Minimalkonfiguration (funktionsfähig):**
- [ ] Mind. 1 Export-Skill (export-txt)

**Empfohlene Konfiguration:**
- [ ] Alle 4 Export-Skills
- [ ] Beide Material-Skills (für Material-Erstellung während der Planung)

**Vollständige Konfiguration:**
- [ ] Alle 6 Skills aktiviert

---

## Troubleshooting

### Problem: Workflow-Schritt wird nicht ausgeführt

**Das ist KEIN Skill-Problem!** Die Workflow-Schritte sind Anweisungen in PROJECT_INSTRUCTIONS.md.

**Lösung:**
1. Prüfe ob die entsprechende Anweisung in `anweisungen/` existiert
2. Prüfe ob PROJECT_INSTRUCTIONS.md die Anweisung referenziert
3. Bei Problemen: Frage Claude explizit nach dem nächsten Schritt

### Problem: Skill erscheint nicht in der Liste

**Lösung:**
1. Prüfe ob der Skill hochgeladen wurde (Settings > Skills > Custom Skills)
2. Falls nicht: ZIP-Datei aus `skill-packages/` hochladen
3. Upload via "Upload Custom Skill"
4. Warte 5-10 Sekunden, dann neu laden

### Problem: Export-Skill funktioniert nicht

**Lösung:**
1. Prüfe MCP-Konfiguration (claude-desktop-setup/MCP_CONFIG.json)
2. Stelle sicher, dass der Pfad zu `1_Exportierte_Ergebnisse/` korrekt ist
3. Prüfe Schreibrechte: `chmod -R 755 /Pfad/zu/Schul-Materialien`

---

## Reihenfolge der Skill-Aktivierung (für IT-Admin)

**Empfohlene Priorisierung:**

1. **Phase 1:** export-txt (für erste Tests)
2. **Phase 2:** export-pdf, export-docx (für professionelle Outputs)
3. **Phase 3:** mat-02, mat-03 (für Material-Erstellung)
4. **Phase 4:** export-pptx (optional)

**Zeitaufwand:** Ca. 10 Minuten für alle 6 Skills

---

**Version:** 2.0
**Zuletzt aktualisiert:** 2025-11-30
**Änderungen:** Umstellung auf Workflow-Anweisungen, nur noch 6 Skills
