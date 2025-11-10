# Pfad-Management-System - Dokumentation

## Übersicht

Das LehrClaude nutzt ein **zentralisiertes Pfad-Management-System**, um die Installation auf verschiedenen Rechnern zu vereinfachen.

### Kernprinzip

**Zwei Pfade, eine Konfiguration** - Das System trennt zwischen:

1. **Repository-Pfad** (wo das Git-Repository liegt) - Skills, Scripts, Projekt-Ordner
2. **Arbeitsverzeichnis-Pfad** (wo die Lehrkraft arbeitet) - Ressourcen, exportierte Materialien

Beide Pfade werden einmal festgelegt, und alle anderen Pfade werden automatisch davon abgeleitet.

---

## Komponenten

### 1. CONFIG.sh.template

**Zweck:** Vorlage für die zentrale Konfigurationsdatei

**Inhalt:**
- Platzhalter `{{BASE_PATH}}`
- Abgeleitete Pfade (SKILLS_PATH, PACKAGES_PATH, etc.)
- Export-Funktionen für andere Scripts

**Wird verwendet in:** `setup-paths.sh` zur Generierung von `CONFIG.sh`

### 2. setup-paths.sh

**Zweck:** Interaktives Setup-Skript für die Erst-Installation

**Funktionen:**
1. Fragt IT-Admin nach Basis-Pfad
2. Validiert den Pfad
3. Generiert `CONFIG.sh` aus Template
4. Findet alle `.template` Dateien rekursiv
5. Ersetzt Platzhalter in allen Templates
6. Macht Scripts ausführbar

**Verwendung:**
```bash
./setup-paths.sh
```

**Output:**
- CONFIG.sh
- MCP_CONFIG.json
- validate-skill.sh
- package-skills.sh
- Alle PROJECT_INSTRUCTIONS.md Dateien

### 3. Template-Dateien

**Erkennungsmerkmal:** `.template` Suffix

**Liste der Templates:**
- CONFIG.sh.template
- MCP_CONFIG.json.template
- validate-skill.sh.template
- package-skills.sh.template
- projekt-1-unterrichtsreihe/PROJECT_INSTRUCTIONS.md.template
- projekt-2-arbeitsblatt/PROJECT_INSTRUCTIONS.md.template
- projekt-3-praesentation/PROJECT_INSTRUCTIONS.md.template
- projekt-4-skill-verwaltung/PROJECT_INSTRUCTIONS.md.template

### 4. Platzhalter

**Verfügbare Platzhalter:**

| Platzhalter | Wird ersetzt durch | Beispiel |
|-------------|-------------------|----------|
| `{{REPO_BASE}}` | Repository-Pfad | `/Users/admin/dev/claude-desktop-setup` |
| `{{WORKSPACE_BASE}}` | Arbeitsverzeichnis-Pfad | `/Users/lehrkraft/Schul-Materialien` |
| `{{BASE_PATH}}` | `$REPO_BASE` (Legacy) | `/Users/admin/dev/claude-desktop-setup` |
| `{{SKILLS_PATH}}` | `$REPO_BASE/skills` | `/Users/admin/dev/claude-desktop-setup/skills` |
| `{{PACKAGES_PATH}}` | `$REPO_BASE/skill-packages` | `/Users/admin/dev/claude-desktop-setup/skill-packages` |
| `{{RESOURCES_PATH}}` | `$WORKSPACE_BASE/2_Zentrale_Ressourcen` | `/Users/lehrkraft/Schul-Materialien/2_Zentrale_Ressourcen` |
| `{{EXPORT_PATH}}` | `$WORKSPACE_BASE/1_Exportierte_Ergebnisse` | `/Users/lehrkraft/Schul-Materialien/1_Exportierte_Ergebnisse` |

---

## Workflow: Erste Installation

### Schritt 1: Repository klonen/entpacken

```bash
# Beispiel: Klonen in Dev-Ordner des IT-Admins
cd ~/Development
git clone https://github.com/USER/lehrkraft-copilot.git claude-desktop-setup
cd claude-desktop-setup
```

### Schritt 2: Setup-Skript ausführen

```bash
./setup-paths.sh
```

**Interaktive Eingabe:**

```
📁 Repository-Pfad (wo Skills & Scripts liegen):
Repository-Pfad [/Users/admin/Development/claude-desktop-setup]: [ENTER]

📚 Arbeitsverzeichnis (wo Lehrkraft Materialien speichert):
Arbeitsverzeichnis-Pfad [/Users/admin/Schul-Materialien]:
  /Users/lehrkraft/Schul-Materialien [ENTER]

Soll das Verzeichnis jetzt erstellt werden? (j/n): j
```

**Das Script:**
1. Validiert Repository-Pfad (skills/ muss existieren)
2. Fragt nach Arbeitsverzeichnis
3. Erstellt Arbeitsverzeichnis-Struktur falls nicht vorhanden
4. Generiert alle Konfigurationsdateien

### Schritt 3: Prüfen

```bash
# Alle konfigurierten Pfade anzeigen
./CONFIG.sh

# Testen
./validate-skill.sh 02-sachanalyse
./package-skills.sh
```

### Schritt 4: Weiter mit Hauptanleitung

Jetzt sind alle Pfade konfiguriert. Fahre fort mit `README.md` Schritt 1 (MCP konfigurieren).

---

## Workflow: Pfad nachträglich ändern

Falls der Installations-Pfad später geändert werden muss:

```bash
cd claude-desktop-setup
./setup-paths.sh
```

Das Skript erkennt, dass `CONFIG.sh` bereits existiert, und fragt:

```
⚠️  CONFIG.sh existiert bereits!
Möchtest du die Pfade neu konfigurieren?
Dies überschreibt alle bisherigen Einstellungen.
Fortfahren? (j/n):
```

Nach Bestätigung werden alle Pfade neu generiert.

---

## Vorteile dieses Systems

### ✅ Einfache Installation
- IT-Admin muss Pfade nur einmal eingeben
- Keine manuelle Suche & Ersetze-Operation in 20+ Dateien

### ✅ Konsistenz
- Alle Pfade sind immer synchron
- Keine vergessenen Platzhalter möglich

### ✅ Wartbarkeit
- Neue Pfade zentral in CONFIG.sh.template definieren
- Automatische Aktualisierung aller Dateien

### ✅ Testbarkeit
- `CONFIG.sh` zeigt alle Pfade auf einen Blick
- Einfache Validierung nach Installation

### ✅ Versionskontrolle
- Template-Dateien im Git
- Generierte Dateien in `.gitignore`
- Jeder kann sauberes Repository erhalten

---

## Git-Integration

### .gitignore

Folgende Dateien sind ignoriert (werden lokal generiert):

```
CONFIG.sh
MCP_CONFIG.json
validate-skill.sh
package-skills.sh
PROJECT_INSTRUCTIONS.md
```

### Was ist im Git?

**Vorhanden:**
- Alle `.template` Dateien
- setup-paths.sh
- README.md mit Anweisungen

**NICHT vorhanden:**
- Generierte Dateien (siehe .gitignore)
- Lokale Konfigurationen

---

## Troubleshooting

### Problem: setup-paths.sh nicht ausführbar

**Lösung:**
```bash
chmod +x setup-paths.sh
./setup-paths.sh
```

### Problem: Template-Dateien nicht gefunden

**Symptom:** Setup meldet "0 Template-Dateien verarbeitet"

**Lösung:** Prüfe ob `.template` Dateien existieren:
```bash
find . -name "*.template"
```

### Problem: Pfade doppelt (z.B. `/path/claude-desktop-setup/claude-desktop-setup/skills`)

**Ursache:** CONFIG.sh.template enthält noch redundante Pfadteile

**Lösung:** Öffne CONFIG.sh.template und korrigiere:
```bash
# Falsch:
SKILLS_PATH="$BASE_PATH/claude-desktop-setup/skills"

# Richtig:
SKILLS_PATH="$BASE_PATH/skills"
```

Dann `setup-paths.sh` erneut ausführen.

### Problem: Scripts können CONFIG.sh nicht laden

**Symptom:** `source: CONFIG.sh: No such file or directory`

**Lösung:** setup-paths.sh wurde nicht ausgeführt:
```bash
./setup-paths.sh
```

---

## Erweiterte Nutzung

### Manuelles Bearbeiten von Templates

Wenn du einen Platzhalter in einem neuen Dokument verwenden willst:

1. **Template-Datei erstellen** (mit `.template` Suffix)
2. **Platzhalter einfügen** (`{{BASE_PATH}}`, etc.)
3. **setup-paths.sh ausführen**

Das Skript findet automatisch alle `.template` Dateien und verarbeitet sie.

### Neue Platzhalter hinzufügen

1. **CONFIG.sh.template bearbeiten:**
   ```bash
   NEW_PATH="$BASE_PATH/neuer/pfad"
   export NEW_PATH
   ```

2. **setup-paths.sh anpassen:**
   Füge den Platzhalter zur sed-Befehlskette hinzu:
   ```bash
   sed -e "s|{{BASE_PATH}}|$BASE_PATH|g" \
       -e "s|{{NEW_PATH}}|$BASE_PATH/neuer/pfad|g" \
       ...
   ```

3. **In Templates verwenden:**
   ```
   Der neue Pfad ist: {{NEW_PATH}}
   ```

---

## Best Practices

### ✅ DO

- Immer setup-paths.sh als ersten Schritt ausführen
- CONFIG.sh prüfen nach Installation
- .template Dateien in Git committen
- Generierte Dateien NICHT committen

### ❌ DON'T

- CONFIG.sh manuell bearbeiten (wird überschrieben!)
- Pfade direkt in Dateien hardcoden
- .template Dateien löschen
- Generierte Dateien committen

---

**Version:** 1.0
**Datum:** 2025-01-09
**Erstellt für:** LehrClaude
