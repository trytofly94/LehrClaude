# Skills Checklist: Projekt "Präsentation entwerfen"

## Anleitung für IT-Admin

Diese Checkliste zeigt, welche Skills im Claude Desktop Projekt **"Präsentation entwerfen"** aktiviert werden müssen.

---

## Wichtige Änderung: Neue Architektur

**Alte Architektur (veraltet):** 2 Material-Skills + 2 Unterstützungs-Skills + 2 Export-Skills

**Neue Architektur (aktuell):**
- **Workflow-Anweisungen** in `anweisungen/` (Präsentations-Workflow direkt in PROJECT_INSTRUCTIONS.md integriert)
- **9 Custom Skills** für Material-Erstellung, Differenzierung, Design und Export

**Warum diese Änderung?**
- Skills sind teuer und langsam beim Laden
- Direkte Anweisungen in PROJECT_INSTRUCTIONS.md sind schneller und flexibler
- Skills nur noch für wiederverwendbare Material-Generierung

---

## Benötigte Skills für dieses Projekt

### ✅ Material-Skills (PFLICHT - Kern-Funktionalität)

- [ ] **mat-03-powerpoint-erstellen** - Komplette Präsentation

**Status:** [ ] Material-Skill aktiviert

---

### ✅ Export-Skills (PFLICHT)

- [ ] **export-md** - Markdown-Export (EMPFOHLEN für manuelle Übernahme)
- [ ] **export-pptx** - PPTX-Export (erfordert marp CLI)
- [ ] **export-pdf** - PDF-Export (Handout)
- [ ] **export-docx** - DOCX-Export (Sprechernotizen)

**Status:** [ ] Export-Skills aktiviert

---

## Workflow-Anweisungen (keine Skills!)

Der Präsentations-Workflow ist jetzt direkt in den Anweisungen integriert:

**Verfügbar in `anweisungen/`:**
- Lernziele formulieren
- Themenstruktur visualisieren (Mindmap)
- Folienstruktur planen
- Sprechernotizen erstellen

Diese werden automatisch durch PROJECT_INSTRUCTIONS.md orchestriert - keine manuelle Aktivierung nötig!

---

## Gesamt-Status

**Minimalkonfiguration:**
- [ ] mat-03-powerpoint-erstellen
- [ ] export-md

**Empfohlene Konfiguration:**
- [ ] mat-03-powerpoint-erstellen
- [ ] export-md, export-pptx

**Vollständige Konfiguration:**
- [ ] Alle 5 Skills aktiviert (mat-03 + 4 Export-Skills)

---

## Skill-Prioritäten

1. **Zuerst:** mat-03-powerpoint-erstellen (Kernfunktion)
2. **Dann:** export-md (Ergebnis speichern)
3. **Optional:** export-pptx (nur wenn marp CLI verfügbar)
4. **Optional:** export-pdf, export-docx

---

## Troubleshooting

### Problem: Workflow-Schritt wird nicht ausgeführt

**Das ist KEIN Skill-Problem!** Die Workflow-Schritte sind Anweisungen in PROJECT_INSTRUCTIONS.md.

**Lösung:**
1. Prüfe ob die entsprechende Anweisung in `anweisungen/` existiert
2. Prüfe ob PROJECT_INSTRUCTIONS.md die Anweisung referenziert
3. Bei Problemen: Frage Claude explizit nach dem nächsten Schritt

### Problem: Export-Skill funktioniert nicht

**Lösung:**
1. Prüfe MCP-Konfiguration (claude-desktop-setup/MCP_CONFIG.json)
2. Stelle sicher, dass der Pfad zu `1_Exportierte_Ergebnisse/` korrekt ist
3. Prüfe Schreibrechte: `chmod -R 755 /Pfad/zu/Schul-Materialien`

### Problem: export-pptx funktioniert nicht

**Lösung:**
1. Stelle sicher, dass marp CLI installiert ist: `npm install -g @marp-team/marp-cli`
2. Alternativ: Nutze export-md und konvertiere manuell

---

**Version:** 2.0
**Zuletzt aktualisiert:** 2025-11-30
**Änderungen:** Umstellung auf Workflow-Anweisungen, nur noch 5 Skills (1 Material + 4 Export)
