# Release Template für CHANGELOG.md

Nutze dieses Template für neue Versionen im CHANGELOG.md.

## [VERSION] - YYYY-MM-DD

### ⚠️ Update-Anleitung für Claude Desktop

**Betroffene Dateien:**
- ✏️ **Geändert:** `pfad/zur/datei.md` - Beschreibung der Änderung
- ➕ **Neu:** `pfad/zur/neuen-datei.md` - Was ist neu?
- ❌ **Gelöscht:** `pfad/zur/alten-datei.md` - Was wurde entfernt?
- 🔄 **Umbenannt:** `alt.md` → `neu.md` - Umbenennung

**Aktionen in Claude Desktop:**
1. [ ] **Projekt X öffnen** → "Edit Project" → Instructions ersetzen mit `projekt-X/PROJECT_INSTRUCTIONS.md`
2. [ ] **Skills:** Neue Skills installieren via ZIP
   - `skill-packages/neuer-skill.zip` hochladen
3. [ ] **Skills:** Alte Skills entfernen
   - `alter-skill-name` aus Claude Desktop löschen
4. [ ] **MCP Server:** Konfiguration aktualisieren (nur falls Pfade geändert)
   - Claude Desktop Einstellungen → MCP → `MCP_CONFIG.json` neu laden

**Geschätzte Update-Zeit:** X Minuten

**Breaking Changes?** [Ja/Nein] - Falls ja: Was muss migriert werden?

---

### Hinzugefügt
- Neue Features, neue Skills, neue Funktionen

### Geändert
- Änderungen an bestehenden Features

### Behoben
- Bugfixes

### Entfernt
- Gelöschte Features, Skills

---

## Beispiel-Eintrag

## [2.4.0] - 2025-12-15

### ⚠️ Update-Anleitung für Claude Desktop

**Betroffene Dateien:**
- ✏️ **Geändert:** `projekt-1-unterrichtsreihe/PROJECT_INSTRUCTIONS.md` - Neue Anweisungen für Differenzierung
- ✏️ **Geändert:** `projekt-2-arbeitsblatt/PROJECT_INSTRUCTIONS.md` - Verbesserte Export-Optionen
- ➕ **Neu:** `skills/neue-funktion/` - ZIP neu installieren
- ❌ **Gelöscht:** `skills/alte-funktion/` - Wird nicht mehr benötigt

**Aktionen in Claude Desktop:**
1. [ ] Projekt 1 (Unterrichtsreihe) öffnen → "Edit Project" → PROJECT_INSTRUCTIONS.md ersetzen
2. [ ] Projekt 2 (Arbeitsblatt) öffnen → "Edit Project" → PROJECT_INSTRUCTIONS.md ersetzen
3. [ ] Skills: `neue-funktion.zip` installieren
4. [ ] Skills: `alte-funktion` löschen

**Geschätzte Update-Zeit:** 5 Minuten

**Breaking Changes?** Nein - Alle bestehenden Workflows funktionieren weiter.

---

### Hinzugefügt
- Neue Differenzierungs-Optionen in Projekt 1
- Export-Vorlagen in Projekt 2
- Skill `neue-funktion` für automatische Formatierung

### Geändert
- Projekt 1: Erweiterte Anweisungen für Förderschwerpunkte
- Projekt 2: Optimierte Export-Workflows

### Behoben
- Fehler bei Markdown-Export behoben
- Platzhalter-Ersetzung in Templates korrigiert

### Entfernt
- Skill `alte-funktion` (ersetzt durch `neue-funktion`)

---

## Veröffentlichungs-Checkliste

Vor dem Release:
- [ ] Alle Änderungen in CHANGELOG.md dokumentiert
- [ ] Update-Anleitung vollständig ausgefüllt
- [ ] Betroffene Dateien korrekt markiert (✏️➕❌🔄)
- [ ] Version in MANIFEST.json aktualisiert
- [ ] `./sync-versions.sh <version> <datum>` ausgeführt
- [ ] `./coherence-check.sh` ohne Fehler
- [ ] Skills neu gepackt: `./package-skills.sh --force`
- [ ] Git Tag erstellt: `git tag v2.X.X`
- [ ] GitHub Release erstellt mit Changelog-Text

Nach dem Release:
- [ ] IT-Admins informiert (falls notwendig)
- [ ] README.md aktualisiert (falls neue Features)
