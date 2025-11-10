# Skills Checklist: Projekt "Unterrichtsreihe planen"

## Anleitung für IT-Admin

Diese Checkliste zeigt, welche Skills im Claude Desktop Projekt **"Unterrichtsreihe planen"** aktiviert werden müssen.

### Wie aktiviere ich Skills?

1. Öffne Claude Desktop
2. Gehe zu **Settings > Capabilities > Skills**
3. Scrolle zur Sektion "Custom Skills" (falls du eigene hochgeladen hast)
4. Aktiviere die unten aufgeführten Skills durch Klick auf den Toggle

---

## Benötigte Skills für dieses Projekt

### ✅ Kern-Planungs-Skills (PFLICHT - alle 11 Skills)

Diese Skills bilden den 11-Schritte-Prozess ab:

- [ ] **01-debiasing** - Bias-Vermeidung
- [ ] **02-sachanalyse** - Fachliche Analyse
- [ ] **03-didaktische-analyse** - Didaktische Reduktion
- [ ] **04-fachbegriffe-klaeren** - Terminologie aufbereiten
- [ ] **05-lernziele-operationalisieren** - SMART-Lernziele formulieren
- [ ] **06-mindmap-strukturierung** - Wissensstruktur visualisieren
- [ ] **07-unterrichtsverlauf-planen** - Stundenplanung
- [ ] **08-lernkontrollen-entwickeln** - Assessment-Design
- [ ] **09-material-zusammenstellen** - Ressourcen organisieren
- [ ] **10-reflexion-durchfuehren** - Evaluation
- [ ] **11-iteration-optimierung** - Verbesserung

**Status:** [ ] Alle 11 Planungs-Skills aktiviert

---

### ✅ Material-Skills (OPTIONAL, aber empfohlen)

Diese Skills erweitern die Funktionalität für konkrete Materialerstellung:

- [ ] **mat-06-pruefungsaufgaben** - Klausuren erstellen
- [ ] **mat-07-feedbackboegen** - Evaluationsinstrumente
- [ ] **mat-08-lernzielkontrolle** - Formative Assessments

**Status:** [ ] Material-Skills aktiviert (optional)

---

### ✅ Export-Skills (PFLICHT für Ergebnis-Speicherung)

Diese Skills ermöglichen den Export der fertigen Unterrichtsreihe:

- [ ] **export-markdown** - Markdown-Export
- [ ] **export-pdf** - PDF-Export
- [ ] **export-docx** - Word-Export

**Status:** [ ] Export-Skills aktiviert

---

## Gesamt-Status

**Minimalkonfiguration (funktionsfähig):**
- [ ] Alle 11 Planungs-Skills (01-11)
- [ ] Mind. 1 Export-Skill (export-markdown)

**Empfohlene Konfiguration:**
- [ ] Alle 11 Planungs-Skills (01-11)
- [ ] Alle 3 Export-Skills
- [ ] Mind. 1 Material-Skill

**Vollständige Konfiguration:**
- [ ] Alle 17 Skills aktiviert

---

## Troubleshooting

### Problem: Skill erscheint nicht in der Liste

**Lösung:**
1. Prüfe ob der Skill hochgeladen wurde (Settings > Skills > Custom Skills)
2. Falls nicht: ZIP-Datei aus `claude-desktop-setup/skills-platzhalter/[SKILL-NAME]/` erstellen
3. Upload via "Upload Custom Skill"
4. Warte 5-10 Sekunden, dann neu laden

### Problem: Skill ist aktiviert, wird aber nicht aufgerufen

**Lösung:**
1. Prüfe die `description` im YAML-Frontmatter der SKILL.md
2. Die Description muss klare Trigger-Keywords enthalten
3. Teste manuell im Chat: "Bitte nutze den Skill [NAME]"

### Problem: MCP Filesystem Fehler

**Lösung:**
1. Das ist KEIN Skill-Problem, sondern MCP-Konfiguration
2. Siehe `claude-desktop-setup/MCP_CONFIG.json`
3. Prüfe ob der Pfad zu `Schul-Materialien/` korrekt ist

---

## Reihenfolge der Skill-Erstellung (für IT-Admin)

**Empfohlene Priorisierung:**

1. **Phase 1:** Skills 01-05 (Basis-Planung)
2. **Phase 2:** export-markdown (für erste Tests)
3. **Phase 3:** Skills 06-11 (erweiterte Planung)
4. **Phase 4:** export-pdf, export-docx
5. **Phase 5:** Material-Skills (optional)

**Zeitaufwand:** Ca. 30-60 Minuten für alle Skills (mit skill-creator)

---

**Zuletzt aktualisiert:** 2025-01-08
