# Skills Checklist: Projekt "Arbeitsblatt erstellen"

## Anleitung für IT-Admin

Diese Checkliste zeigt, welche Skills im Claude Desktop Projekt **"Arbeitsblatt erstellen"** aktiviert werden müssen.

---

## Wichtige Änderung: Neue Architektur

**Alte Architektur (veraltet):** 4 Material-Skills + 2 Unterstützungs-Skills + 3 Export-Skills

**Neue Architektur (aktuell):**
- **Workflow-Anweisungen** in `anweisungen/` (Arbeitsblatt-Workflow direkt in PROJECT_INSTRUCTIONS.md integriert)
- **9 Custom Skills** für Material-Erstellung, Differenzierung, Design und Export

**Warum diese Änderung?**
- Skills sind teuer und langsam beim Laden
- Direkte Anweisungen in PROJECT_INSTRUCTIONS.md sind schneller und flexibler
- Skills nur noch für wiederverwendbare Material-Generierung

---

## Benötigte Skills für dieses Projekt

### ✅ Material-Skills (PFLICHT - Kern-Funktionalität)

- [ ] **mat-02-arbeitsblatt-erstellen** - Komplettes Arbeitsblatt (Text + Aufgaben)

**Status:** [ ] Material-Skill aktiviert

---

### ✅ Export-Skills (PFLICHT)

- [ ] **export-md** - Markdown-Export
- [ ] **export-pdf** - PDF-Export (für Druck)
- [ ] **export-docx** - Word-Export (editierbar)
- [ ] **export-pptx** - PPTX-Export (optional)

**Status:** [ ] Export-Skills aktiviert

---

## Workflow-Anweisungen (keine Skills!)

Der Arbeitsblatt-Workflow ist jetzt direkt in den Anweisungen integriert:

**Verfügbar in `anweisungen/`:**
- Lernziele formulieren
- Aufgaben generieren
- Lösungen erstellen
- Formatierung und Layout

Diese werden automatisch durch PROJECT_INSTRUCTIONS.md orchestriert - keine manuelle Aktivierung nötig!

---

## Gesamt-Status

**Minimalkonfiguration:**
- [ ] mat-02-arbeitsblatt-erstellen
- [ ] export-pdf

**Empfohlene Konfiguration:**
- [ ] mat-02-arbeitsblatt-erstellen
- [ ] Alle 3 Export-Skills (markdown, pdf, docx)

**Vollständige Konfiguration:**
- [ ] Alle 5 Skills aktiviert (mat-02 + 4 Export-Skills)

---

## Skill-Prioritäten

1. **Zuerst:** mat-02-arbeitsblatt-erstellen (Kernfunktion)
2. **Dann:** export-pdf (Ergebnis speichern und drucken)
3. **Danach:** export-docx (für Nachbearbeitung)
4. **Optional:** export-md, export-pptx

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

---

**Version:** 2.0
**Zuletzt aktualisiert:** 2025-11-30
**Änderungen:** Umstellung auf Workflow-Anweisungen, nur noch 5 Skills (1 Material + 4 Export)
