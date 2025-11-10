# MCP Filesystem Server Setup-Anleitung

## Was ist MCP?

Der **Model Context Protocol (MCP) Filesystem Server** ermöglicht Claude Desktop den Zugriff auf lokale Dateien. In unserem Fall:

- **Lesen:** Zentrale Ressourcen (Lehrpläne, didaktische Frameworks)
- **Schreiben:** Exportierte Ergebnisse (fertige Unterrichtsreihen, Arbeitsblätter, etc.)

---

## Voraussetzungen

1. **Claude Desktop** muss installiert sein
2. **Node.js** muss installiert sein (für `npx`-Befehl)
3. **Schul-Materialien Ordner** muss existieren (wird durch `lehrkraft-deployment/setup.sh` erstellt)

### Node.js Installation prüfen:

```bash
node --version
npm --version
```

Falls nicht installiert: [nodejs.org](https://nodejs.org/) → LTS-Version herunterladen

---

## Schritt-für-Schritt Anleitung

### Schritt 1: Pfad anpassen

1. Öffne die Datei `MCP_CONFIG.json` in diesem Ordner
2. Ersetze `LEHRKRAFT-NAME` durch den tatsächlichen Benutzernamen:

**Beispiel:**

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "/Users/maria.schmidt/Schul-Materialien"
      ],
      "env": {}
    }
  }
}
```

**So findest du den Benutzernamen:**

```bash
echo $HOME
# Ausgabe z.B.: /Users/maria.schmidt
```

---

### Schritt 2: Config-Datei in Claude Desktop einfügen

1. **Öffne Claude Desktop**

2. **Öffne Settings:**
   - macOS: `Claude Desktop > Settings` oder `Cmd + ,`

3. **Navigiere zu "Developer":**
   - Links in der Sidebar: **"Developer"** anklicken

4. **Öffne die claude_desktop_config.json:**
   - Klicke auf **"Edit Config"**
   - Alternativ: Öffne manuell die Datei unter:
     ```
     ~/Library/Application Support/Claude/claude_desktop_config.json
     ```

5. **Füge die MCP-Konfiguration ein:**

   **Falls die Datei leer ist:**
   ```json
   {
     "mcpServers": {
       "filesystem": {
         "command": "npx",
         "args": [
           "-y",
           "@modelcontextprotocol/server-filesystem",
           "/Users/maria.schmidt/Schul-Materialien"
         ],
         "env": {}
       }
     }
   }
   ```

   **Falls bereits andere MCP-Server konfiguriert sind:**
   ```json
   {
     "mcpServers": {
       "existing-server": {
         ...
       },
       "filesystem": {
         "command": "npx",
         "args": [
           "-y",
           "@modelcontextprotocol/server-filesystem",
           "/Users/maria.schmidt/Schul-Materialien"
         ],
         "env": {}
       }
     }
   }
   ```

6. **Speichere die Datei** (`Cmd + S`)

---

### Schritt 3: Claude Desktop neu starten

1. **Beende Claude Desktop** vollständig (`Cmd + Q`)
2. **Starte Claude Desktop neu**

---

### Schritt 4: Verbindung testen

1. **Öffne ein neues Projekt** in Claude Desktop (z.B. "Unterrichtsreihe planen")

2. **Teste den MCP-Zugriff** mit diesem Prompt:

```
Kannst du den Inhalt des Ordners "2_Zentrale_Ressourcen" auflisten?
```

**Erwartete Antwort:**

```
Ich habe Zugriff auf den Ordner 2_Zentrale_Ressourcen via MCP Filesystem Server.
Hier sind die Unterordner:
- Lehrplaene/
- Didaktik/
- Templates/
```

**Falls Fehler:** Siehe Troubleshooting unten.

---

## Was kann der MCP Filesystem Server?

### Lese-Operationen:

- Ordnerinhalte auflisten
- Dateien lesen (Markdown, PDF, TXT, etc.)
- Dateien durchsuchen

**Beispiel-Prompts:**

```
"Lies die Datei 2_Zentrale_Ressourcen/Didaktik/Bloom-Taxonomie.md"
"Zeige mir alle Lehrpläne im Ordner Lehrplaene/"
```

### Schreib-Operationen:

- Dateien erstellen
- Dateien bearbeiten
- Ordner erstellen

**Beispiel (wird von Export-Skills automatisch gemacht):**

```
"Speichere dieses Arbeitsblatt unter 1_Exportierte_Ergebnisse/Arbeitsblatt_Bruchrechnung.md"
```

---

## Sicherheit & Berechtigungen

### Was der MCP Server KANN:

- Zugriff **nur** auf den Ordner `Schul-Materialien` und dessen Unterordner
- Dateien lesen/schreiben/löschen innerhalb dieses Ordners

### Was der MCP Server NICHT KANN:

- Zugriff auf andere Ordner außerhalb von `Schul-Materialien`
- Systemdateien ändern
- Programme ausführen
- Auf das Internet zugreifen

**Der Zugriff ist strikt auf den angegebenen Pfad beschränkt!**

---

## Troubleshooting

### Problem: "MCP Server nicht verfügbar" in Claude Desktop

**Lösungen:**

1. **Prüfe Node.js Installation:**
   ```bash
   node --version
   ```
   Falls nicht installiert: nodejs.org → Download

2. **Prüfe den Pfad:**
   - Öffne Terminal
   - Checke ob Ordner existiert:
     ```bash
     ls -la /Users/maria.schmidt/Schul-Materialien
     ```
   - Falls Ordner nicht existiert: Führe `lehrkraft-deployment/setup.sh` aus

3. **Prüfe JSON-Syntax:**
   - Öffne `claude_desktop_config.json` erneut
   - Nutze einen JSON-Validator: [jsonlint.com](https://jsonlint.com/)
   - Achte auf fehlende Kommata, geschweifte Klammern

4. **Logs prüfen:**
   - Claude Desktop vollständig beenden
   - Terminal öffnen
   - Claude Desktop aus Terminal starten:
     ```bash
     /Applications/Claude.app/Contents/MacOS/Claude
     ```
   - Schaue nach Fehlermeldungen im Terminal

---

### Problem: "Permission Denied" beim Schreiben

**Lösung:**

```bash
# Setze Schreibrechte für den Ordner
chmod -R 755 /Users/maria.schmidt/Schul-Materialien
```

---

### Problem: MCP funktioniert in einem Projekt, in einem anderen nicht

**Lösung:**

- MCP ist projekt-übergreifend konfiguriert
- Wenn es in einem Projekt funktioniert, sollte es überall funktionieren
- Falls nicht: Erstelle das Projekt neu und teste erneut

---

## Erweiterte Konfiguration (Optional)

### Mehrere Ordner zugänglich machen:

Falls du zusätzlich einen Ordner für private Notizen freigeben möchtest:

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "/Users/maria.schmidt/Schul-Materialien",
        "/Users/maria.schmidt/Notizen"
      ],
      "env": {}
    }
  }
}
```

**Hinweis:** Jeder zusätzliche Pfad wird als weiteres Argument hinzugefügt.

---

## Weitere Ressourcen

- **MCP Dokumentation:** [https://modelcontextprotocol.io/](https://modelcontextprotocol.io/)
- **Claude Desktop MCP Guide:** [https://docs.anthropic.com/claude/docs/model-context-protocol](https://docs.anthropic.com/claude/docs/model-context-protocol)
- **GitHub:** [@modelcontextprotocol/server-filesystem](https://github.com/modelcontextprotocol/servers/tree/main/src/filesystem)

---

**Version:** 1.0
**Zuletzt aktualisiert:** 2025-01-08
