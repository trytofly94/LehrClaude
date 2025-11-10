# LehrClaude

> **Wissenschaftlich fundierte Unterrichtsplanung mit Claude Desktop**

Ein modulares Setup-Repository für IT-Admins zur Implementierung eines KI-gestützten Assistenzsystems für Lehrkräfte.

---

## 🎯 Projektidee

Statt eines monolithischen Tools bietet dieses System **3 spezialisierte Claude Desktop Projekte**:

1. **Unterrichtsreihe planen** – 11-Schritte-Prozess (Klafki, Leisen, Wember)
2. **Arbeitsblatt erstellen** – Schneller Workflow für Unterrichtsmaterial
3. **Präsentation entwerfen** – Didaktisch strukturierte Präsentationen

**Kernprinzip:** Jedes Projekt ist eine "App" für eine spezifische Aufgabe im Lehreralltag.

---

## 📐 Architektur

```
┌─────────────────────────────────────────────┐
│         LehrClaude            │
│  3 Claude Desktop Projekte + 23 Skills      │
└─────────────────────────────────────────────┘
                    ↓
        ┌───────────┴────────────┐
        │                        │
┌───────────────┐     ┌─────────────────────┐
│ Claude Desktop│     │ Lokales Dateisystem │
│               │     │                     │
│ • Projekte    │◄────│ Schul-Materialien/  │
│ • Skills      │ MCP │ • Lehrpläne         │
│ • Instructions│     │ • Frameworks        │
└───────────────┘     │ • Exportierte       │
                      │   Ergebnisse        │
                      └─────────────────────┘
```

### Modulare Architektur

**23 Custom Skills** (wiederverwendbar):
- **11 Planungs-Skills:** Debiasing → Iteration & Optimierung
- **8 Material-Skills:** Texterstellung, Arbeitsblätter, PowerPoint
- **4 Export-Skills:** Markdown, PDF, DOCX, PPTX

**MCP Filesystem Server:**
- **Lesen:** Lehrpläne, KMK-Operatoren, Bloom-Taxonomie
- **Schreiben:** Exportierte Unterrichtsreihen & Materialien

---

## 🚀 Quick Start für IT-Admins

### Schritt 1: Repository klonen
```bash
git clone <REPOSITORY_URL>
cd LehrClaude
```

### Schritt 2: Deployment auf Lehrkraft-Mac
```bash
cd lehrkraft-deployment
./setup.sh /Users/[LEHRKRAFT-NAME]/Schul-Materialien
```

### Schritt 3: Claude Desktop Setup
```bash
cd ../claude-desktop-setup
open README.md  # Folge der detaillierten Anleitung
```

**Zeitaufwand:** 1-2 Stunden

---

## 📂 Repository-Struktur

```
LehrClaude/
├── README.md                    # Haupt-Dokumentation für IT-Admins
├── CLAUDE.md                    # Projekt-Anleitung für Claude & Entwickler
├── PROJECT_README.md            # Diese Datei (Projekt-Übersicht)
│
├── claude-desktop-setup/        # Manuelles Setup in Claude Desktop
│   ├── README.md                # Schritt-für-Schritt Anleitung
│   ├── MCP_CONFIG.json          # Template für MCP Server
│   ├── projekt-1-unterrichtsreihe/
│   ├── projekt-2-arbeitsblatt/
│   ├── projekt-3-praesentation/
│   └── skills-platzhalter/      # 23 Skills (Platzhalter für skill-creator)
│
├── lehrkraft-deployment/        # Automatisches Deployment
│   ├── setup.sh                 # Erstellt Ordnerstruktur auf Zielrechner
│   └── ordnerstruktur-vorlage/  # Template mit Beispiel-Ressourcen
│
└── prompts/                     # Original-Prompts (Basis für Skills)
    └── 01-11 + mat_01-08
```

---

## 🎓 Didaktische Grundlagen

Das System basiert auf wissenschaftlich fundierten Konzepten:

- **Klafkis Bildungstheoretische Didaktik** (Sachanalyse, Didaktische Analyse)
- **Leisens Phasierung des Unterrichts** (6-Phasen-Modell)
- **Wembers Differenzierungsmodell** (Basis/Unterstützung/Erweiterung)
- **SMART-Zielformulierung** (Operationalisierte Lernziele)
- **Bloom-Taxonomie** (Kognitive Lernzielstufen)
- **KMK-Operatoren** (Standardisierte Aufgabenstellung)

**Originalarbeit:** Christopher Zimmermann, Universität zu Köln

---

## 💡 Beispiel-Nutzung (Lehrkraft)

### Unterrichtsreihe planen

```
1. Öffne Claude Desktop
2. Projekt: "Unterrichtsreihe planen"
3. Prompt: "Ich möchte eine Unterrichtsreihe zu Photosynthese planen,
            Klasse 7, NRW, 8 Stunden."

→ Claude führt automatisch durch 11 Schritte
→ Greift auf Lehrplan NRW zu (via MCP)
→ Erstellt strukturierte Planung
→ Export als PDF → Speicherung in Schul-Materialien/
```

### Arbeitsblatt erstellen

```
1. Projekt: "Arbeitsblatt erstellen"
2. Prompt: "Ich brauche ein Arbeitsblatt zu Bruchrechnung, Klasse 6,
            30 Min. Bearbeitungszeit, mit Differenzierung."

→ Claude erstellt Aufgaben (Basis/Standard/Erweiterung)
→ Optional: Lösungen
→ Export als PDF → Druckfertig
```

---

## 🔧 Technische Voraussetzungen

### Hardware/OS:
- macOS 11+
- Claude Desktop installiert

### Software:
- Node.js (für MCP Filesystem Server)
- Claude Pro/Team/Enterprise Account (für Custom Skills)

### Optional:
- pandoc (für PDF/DOCX-Export)
- marp (für PPTX-Export)

---

## 📚 Dokumentation

- **README.md** - Haupt-Dokumentation für IT-Admins
- **CLAUDE.md** - Technische Projektanleitung für Claude & Entwickler
- **claude-desktop-setup/README.md** - Setup-Anleitung (1-2h)
- **lehrkraft-deployment/README.md** - Deployment-Details
- **MCP_SETUP_ANLEITUNG.md** - MCP-Konfiguration

---

## 🔮 Vision & Ziel

**Ziel:** Wissenschaftlich fundierte Unterrichtsplanung zugänglich, effizient und wiederholbar machen – ohne die didaktische Expertise der Lehrkraft zu ersetzen, sondern sie zu verstärken.

**Vision:**
- Lehrkräfte sparen Zeit bei administrativen Aufgaben
- Fokus auf pädagogische Kernarbeit
- Qualitativ hochwertige, standardisierte Unterrichtsmaterialien
- Wiederverwendung & Anpassung von Ressourcen
- Integration in schulische Workflows

---

## 🤝 Contribution

### Originalarbeit
**Christopher Zimmermann**
Universität zu Köln
Studienprojekt im Praxissemester

### Repository-Transformation
Transformation des Prompt-Katalogs in ein modulares Claude Desktop System (2025)

### Lizenz
**CC BY-SA 4.0** - Creative Commons Namensnennung - Weitergabe unter gleichen Bedingungen

---

## 📊 Projekt-Status

**Version:** 1.0
**Stand:** 2025-01-08
**Status:** ✅ Production-Ready

**Was funktioniert:**
- ✅ Vollständige Setup-Dokumentation
- ✅ 23 Skill-Platzhalter (ready for skill-creator)
- ✅ 3 Projekt-Instructions (vollständig)
- ✅ MCP Filesystem Server Integration
- ✅ Automatisches Deployment-Script
- ✅ Beispiel-Ressourcen (KMK, Bloom, Templates)

**Roadmap:**
- [ ] Video-Tutorials für IT-Admins
- [ ] Automatisierte Skill-Erstellung via Script
- [ ] Windows/Linux Support
- [ ] Integration weiterer Bundesländer
- [ ] Claude Desktop API-basiertes Setup

---

## 🏷️ Tags

`claude-desktop` `education` `didaktik` `unterrichtsplanung` `custom-skills` `mcp` `lehrkraft` `ki-assistenz` `setup-repository`

---

**Kontakt:** Siehe README.md für Support-Informationen

---

*Ein System, das didaktische Expertise verstärkt, nicht ersetzt.*
