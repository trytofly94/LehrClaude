# LehrClaude: KI-Tools für Lehrkräfte

> **Ein modulares Claude-basiertes Ökosystem für wissenschaftlich fundierte Unterrichtsplanung**

[![Lizenz: CC BY-SA 4.0](https://img.shields.io/badge/Lizenz-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/deed.de)
[![macOS](https://img.shields.io/badge/Platform-macOS%2011+-blue.svg)](https://www.apple.com/de/macos/)
[![Claude Desktop](https://img.shields.io/badge/Claude-Desktop-purple.svg)](https://claude.ai/download)

**🔗 Repository:** [github.com/trytofly94/LehrClaude](https://github.com/trytofly94/LehrClaude)

---

> 💡 **Basierend auf dem [ZfL-Lernmodul "Unterrichtsreihenplanung mit KI"](https://zfl-lernen.de/lernmodule/methoden/unterrichtsreihenplanung-mit-ki/)** (Universität zu Köln)
> Dieses Repository ist eine eigenständige Implementierung als modulares Claude Desktop System mit erweiterten Features für Förderschulen.

---

## 📖 Inhaltsverzeichnis

- [Für wen ist dieses System?](#-für-wen-ist-dieses-system)
- [Was ist das?](#-was-ist-das)
- [Architektur-Übersicht](#-architektur-übersicht)
- [Repository-Struktur](#-repository-struktur)
- [Quick Start für IT-Admins](#-quick-start-für-it-admins)
- [Systemvoraussetzungen](#-systemvoraussetzungen)
- [Was dieses System bietet](#-was-dieses-system-bietet)
- [Förderschul-Integration](#-förderschul-integration)
- [Didaktische Grundlagen](#-didaktische-grundlagen)
- [Für Lehrkräfte: So nutzt du das System](#-für-lehrkräfte-so-nutzt-du-das-system)
- [FAQ](#-faq)
- [Weiterführende Dokumentation](#-weiterführende-dokumentation)
- [Roadmap](#-roadmap)
- [Support & Community](#-support--community)
- [Lizenz](#-lizenz)

---

## ⚠️ WICHTIG: Ausschließlich deutsche Sprache

**Alle Skills, Materialien und Outputs in diesem System werden ausschließlich auf Deutsch erstellt.**

- **Zielgruppe:** Deutsche Lehrkräfte
- **Unterrichtsmaterialien:** Für deutsche Schulen
- **Anpassbarkeit:** Lehrkräfte können Materialien direkt ohne Übersetzung bearbeiten
- **Durchgängigkeit:** Vom Planungsprozess bis zum fertigen Arbeitsblatt - alles auf Deutsch

Dies gilt für alle 27 Skills, Project Instructions und alle generierten Inhalte.

---

## 👥 Für wen ist dieses System?

### Lehrkräfte
Sie nutzen das fertig eingerichtete System für ihre tägliche Unterrichtsvorbereitung. **Keine technischen Kenntnisse erforderlich.**

### Einrichtung
Das System kann **selbst eingerichtet** werden (1-2 Stunden mit Anleitung) oder durch eine **technisch versierte Person** (z.B. IT-Support, Kolleg:in) installiert werden. Die ausführlichen Schritt-für-Schritt-Anleitungen machen den Prozess für alle zugänglich.

**Benötigte Kenntnisse:**
- Grundlegende Bedienung von macOS
- Installation von Software (ähnlich wie andere Apps)
- Folgen einer Anleitung

**Hilfe ist optional, nicht erforderlich!**

---

## 🎯 Was ist das?

Dieses Repository ist ein **vollständiges Setup-Kit** zur Einrichtung von **LehrClaude** auf macOS-Rechnern von Lehrkräften.

### Kernkonzept

Statt eines monolithischen Tools bietet dieses System **3 spezialisierte Claude Desktop Projekte**:

1. **Unterrichtsreihe planen** – 11-Schritte-Prozess für vollständige Unterrichtsreihen
2. **Arbeitsblatt erstellen** – Schnelle, fokussierte Arbeitsblatt-Erstellung
3. **Präsentation entwerfen** – Didaktisch strukturierte Unterrichtspräsentationen

Jedes Projekt nutzt **Custom Skills** (wiederverwendbare Fähigkeiten) und greift via **MCP Filesystem Server** auf zentrale Ressourcen (Lehrpläne, didaktische Frameworks) zu.

---

## 🏗️ Architektur-Übersicht

```
┌─────────────────────────────────────────────────────────────┐
│                         LehrClaude                          │
└─────────────────────────────────────────────────────────────┘
                              │
          ┌───────────────────┴───────────────────┐
          │                                       │
┌─────────────────────┐               ┌──────────────────────┐
│ Claude Desktop      │               │ Lokales Dateisystem  │
│                     │               │                      │
│ • 3 Projekte        │◄──MCP────────►│ Schul-Materialien/   │
│ • 23 Custom Skills  │   Server      │ ├─ Lehrpläne         │
│ • Project Instructions│              │ ├─ Frameworks        │
└─────────────────────┘               │ └─ Exportierte       │
                                      │    Ergebnisse        │
                                      └──────────────────────┘
```

**Modular:** Skills werden projekt-übergreifend wiederverwendet
**Ressourcen-basiert:** Zentrale Knowledge Base für alle Projekte
**Förderschul-Integration:** Spezialisierung auf 7 Förderschwerpunkte mit individuellen Schülerprofilen
**Export-fähig:** Fertige Dokumente (MD, PDF, DOCX, PPTX)

---

## 📂 Repository-Struktur

```
LehrClaude/
├── README.md                          # Diese Datei
│
├── claude-desktop-setup/              # FÜR IT-ADMIN (manuelles Setup)
│   ├── README.md                      # Haupt-Anleitung (START HIER!)
│   ├── MCP_CONFIG.json                # MCP Template
│   ├── MCP_SETUP_ANLEITUNG.md         # MCP Detailanleitung
│   │
│   ├── projekt-1-unterrichtsreihe/
│   │   ├── PROJECT_INSTRUCTIONS.md    # Instructions für Claude Desktop
│   │   └── skills-checklist.md        # Benötigte Skills
│   │
│   ├── projekt-2-arbeitsblatt/
│   │   ├── PROJECT_INSTRUCTIONS.md
│   │   └── skills-checklist.md
│   │
│   ├── projekt-3-praesentation/
│   │   ├── PROJECT_INSTRUCTIONS.md
│   │   └── skills-checklist.md
│   │
│   └── skills-platzhalter/           # 23 Skill-Templates
│       ├── 01-debiasing/SKILL.md
│       ├── 02-sachanalyse/SKILL.md
│       ├── ... (21 weitere)
│       └── export-pptx/SKILL.md
│
├── lehrkraft-deployment/              # DEPLOYMENT AUF LEHRKRAFT-MAC
│   ├── README.md                      # Deployment-Anleitung
│   ├── setup.sh                       # Automatisches Setup-Script
│   └── ordnerstruktur-vorlage/       # Template für Zielrechner
│       └── Schul-Materialien/
│           ├── 1_Exportierte_Ergebnisse/
│           ├── 2_Zentrale_Ressourcen/
│           │   ├── Lehrplaene/
│           │   ├── Didaktik/
│           │   │   ├── KMK-Operatoren.md
│           │   │   └── Bloom-Taxonomie.md
│           │   └── Templates/
│           │       ├── arbeitsblatt-vorlage.md
│           │       └── praesentation-master.md
│           ├── 3_Projekt_Knowledge_Base/
│           └── 4_Klassen_und_Schueler/   # Förderschul-Integration
│               ├── Klasse_5a_LE/
│               │   ├── Klasseninfo.md
│               │   └── Schuelerprofile/
│               └── Klasse_7b_GE/
│
└── prompts/                           # Original-Prompts (Basis für Skills)
    ├── 01_debiasing_prompt.md
    ├── 02_sachanalyse_prompt.md
    ├── ... (Insgesamt 30 Prompts)
    └── mat_08_lernzielkontrolle.md
```

---

## 🚀 Quick Start für IT-Admins

### Schritt 0: Repository klonen
```bash
git clone https://github.com/trytofly94/LehrClaude.git
cd LehrClaude
```

### Schritt 1: Deployment auf Lehrkraft-Mac
```bash
cd lehrkraft-deployment
./setup.sh /Users/[LEHRKRAFT-NAME]/Schul-Materialien
```

**→ Erstellt automatisch die komplette Ordnerstruktur**

### Schritt 3: Claude Desktop Setup
```bash
cd ../claude-desktop-setup
open README.md  # Folge der Anleitung
```

**→ Manuelles Setup:**
1. MCP Filesystem Server konfigurieren
2. 3 Projekte erstellen (Instructions copy-pasten)
3. 23 Skills mit `skill-creator` erstellen

### Gesamtzeit: 1-2 Stunden

**Detaillierte Schritt-für-Schritt Anleitungen** findest du in:
- `claude-desktop-setup/README.md` (Hauptanleitung)
- `lehrkraft-deployment/README.md` (Deployment-Details)

---

## 🔧 Systemvoraussetzungen

### Hardware/OS:
- **macOS** (getestet auf 11+)
- **Claude Desktop** installiert

### Software:
- **Node.js** (für MCP Filesystem Server)
- **Claude Pro Account** (⚠️ **WICHTIG: Stark empfohlen!**)
  - Custom Skills sind nur mit Pro/Team/Enterprise verfügbar
  - Höhere Nutzungslimits für umfangreiche Unterrichtsplanung
  - Zugriff auf neueste Modelle (Sonnet 4.5)
  - **Alternative:** Team oder Enterprise Account
- **Claude Code** (für IT-Admin bei Setup-Prozess empfohlen)

### Optional:
- **pandoc** (für PDF/DOCX-Export)
- **marp** (für PPTX-Export)

---

## 📦 Was dieses System bietet

### 3 Spezialisierte Projekte

#### 1. Unterrichtsreihe planen
**11-Schritte-Prozess** basierend auf Klafki, Leisen, Wember:
- Debiasing
- Sachanalyse (mit Lehrplan-Zugriff)
- Didaktische Analyse
- Fachbegriffe klären
- Lernziele operationalisieren (SMART, Bloom)
- Mindmap-Strukturierung
- Unterrichtsverlauf planen
- Lernkontrollen entwickeln
- Material zusammenstellen
- Reflexion durchführen
- Iteration & Optimierung

**Skills:** 11 Planungs-Skills + 3 Material-Skills + 4 Förderschul-Skills (optional) + 3 Export-Skills

---

#### 2. Arbeitsblatt erstellen
**Schneller 4-6-Schritte-Workflow:**
- Kontext erfassen (Thema, Klasse, Lernziele)
- Struktur festlegen (Übungsblatt, Informationsblatt, etc.)
- Inhalte generieren (Texte + Aufgaben)
- Layout & Differenzierung
- Lösungen erstellen (optional)
- Export (MD, PDF, DOCX)

**Skills:** 4 Material-Skills + 2 Unterstützungs-Skills + 4 Förderschul-Skills (optional) + 3 Export-Skills

---

#### 3. Präsentation entwerfen
**5-Schritte-Workflow für Unterrichtspräsentationen:**
- Kontext erfassen (Thema, Zeitrahmen, Lernziele)
- Gliederung erstellen (Folienstruktur)
- Inhalte generieren (Stichpunkte, Sprechernotizen)
- Visuelle Elemente vorschlagen (Bilder, Diagramme)
- Export (MD für manuelle Übernahme, oder PPTX)

**Skills:** 2 Material-Skills + 2 Unterstützungs-Skills + 4 Förderschul-Skills (optional) + 2 Export-Skills

---

### 27 Custom Skills (Wiederverwendbar)

| Kategorie | Anzahl | Beispiele |
|-----------|--------|-----------|
| **Planungs-Skills** | 11 | Sachanalyse, Lernziele, Stundenplanung |
| **Material-Skills** | 8 | Arbeitsblatt erstellen, PowerPoint, Texterstellung |
| **Förderschul-Skills** | 4 | Schülerprofile laden, Lernziele differenzieren, Piktogramm-Materialien |
| **Export-Skills** | 4 | Markdown, PDF, DOCX, PPTX |

**Besonderheit:** Ein Skill (z.B. "Lernziele operationalisieren") kann in **mehreren Projekten** verwendet werden.

---

### MCP Filesystem Server Integration

**Lesen (automatisch durch Skills):**
- Lehrpläne (bundeslandspezifisch)
- Didaktische Frameworks (Bloom, KMK-Operatoren)
- Templates (Arbeitsblatt-Vorlagen, Präsentations-Master)

**Schreiben (durch Export-Skills):**
- Fertige Unterrichtsreihen
- Arbeitsblätter
- Präsentationen

**Sicherheit:** Zugriff nur auf den konfigurierten Ordner `Schul-Materialien/`

---

## 🎓 Förderschul-Integration

Das System bietet **spezialisierte Unterstützung für 7 Förderschwerpunkte** mit individueller Differenzierung:

### Unterstützte Förderschwerpunkte:

1. **Lernen (LE)**: Kleinschrittigkeit, vereinfachte Sprache, mehr Wiederholung
2. **Emotional-soziale Entwicklung (ESE)**: Klare Strukturen, positive Verstärkung
3. **Sprache (SQ)**: Unterstützte Kommunikation (UK), Piktogramme, alternative Kommunikationsformen
4. **Geistige Entwicklung (GE)**: NUR Piktogramme (kein Text!), basale Stimulation, lebenspraktische Bezüge
5. **Körperlich-motorische Entwicklung (KME)**: Barrierefreie Materialien, große Schrift, angepasste Sozialformen
6. **Hören und Kommunikation (HK)**: Gebärdensprache-Unterstützung (DGS), verstärkte Visualisierungen
7. **Sehen (SE)**: Tastmaterialien, Audiodeskriptionen, hoher Kontrast, Braille/Großdruck

### Klassenverwaltung & Schülerprofile:

**Lokale Verwaltung** in `4_Klassen_und_Schueler/`:
```
4_Klassen_und_Schueler/
├── Klasse_5a_LE/              # Förderschwerpunkt Lernen
│   ├── Klasseninfo.md
│   └── Schuelerprofile/
│       ├── Max_Mustermann.md
│       └── Anna_Beispiel.md
└── Klasse_7b_GE/              # Förderschwerpunkt Geistige Entwicklung
    ├── Klasseninfo.md
    └── Schuelerprofile/
        └── ...
```

**Automatische Integration:**
- Bei Auswahl "Förderschulklasse" werden Schülerprofile automatisch geladen
- Materialien werden förderschwerpunkt-spezifisch angepasst
- Differenzierung in 3 Niveaustufen (Basis/Standard/Erweiterung) – außer bei GE
- **Spezialfall GE**: Ausschließlich bildbasierte, textfreie Materialien

### Beispiel-Workflow Förderschule:

**Arbeitsblatt für Förderschwerpunkt Lernen:**
```
Lehrkraft: "Ich brauche ein Arbeitsblatt zu 'Gesunde Ernährung', Klasse 5, Förderschwerpunkt Lernen."

Claude:
1. Lädt Schülerprofile aus 4_Klassen_und_Schueler/Klasse_5a_LE/
2. Erstellt DREI differenzierte Versionen:
   - Basis: 6 Aufgaben, viel Scaffolding, Bildstützen, vereinfachte Sprache
   - Standard: 8 Aufgaben, mittlere Hilfen
   - Erweiterung: 10 Aufgaben, Transfer-Aufgabe
3. Exportiert alle Versionen als PDF
```

**Präsentation für Förderschwerpunkt Geistige Entwicklung:**
```
Lehrkraft: "Ich brauche eine Präsentation zu 'Wetter', Klasse 4, Förderschwerpunkt GE."

Claude:
1. Lädt Schülerprofile
2. Erstellt bildbasierte Präsentation (KEIN Text auf Folien!)
3. Jede Folie = 1 großes, klares Foto oder Piktogramm
4. Sprechernotizen mit Vorschlägen für Gebärden und Interaktionen
5. Exportiert als PPTX
```

---

## 🎓 Didaktische Grundlagen

Das System basiert auf wissenschaftlich fundierten Konzepten:

- **Klafkis Bildungstheoretische Didaktik** (Sachanalyse, Didaktische Analyse)
- **Leisens Phasierung des Unterrichts** (Stundenplanung)
- **Wembers Differenzierungsmodell** (Niveaustufen)
- **SMART-Zielformulierung** (Lernziele)
- **Bloom-Taxonomie** (Kognitive Lernzielstufen)
- **KMK-Operatoren** (Standardisierte Aufgabenstellungen)

**Originalarbeit:**
Christopher Zimmermann, Universität zu Köln
Studienprojekt: "Unterrichtsgestaltung mit Hilfe von künstlicher Intelligenz"

---

## 💡 Für Lehrkräfte: So nutzt du das System

Nach der Installation durch den IT-Admin:

### Unterrichtsreihe planen (Beispiel)

1. **Öffne Claude Desktop**
2. **Wähle Projekt:** "Unterrichtsreihe planen"
3. **Starte Chat:**
   > "Ich möchte eine Unterrichtsreihe planen zum Thema Photosynthese, Klasse 7, NRW, 8 Stunden."

4. **Claude führt dich durch 11 Schritte:**
   - Fragt nach Details
   - Nutzt automatisch Skills (Sachanalyse, Lernziele, etc.)
   - Greift auf Lehrplan NRW zu (via MCP)
   - Erstellt strukturierte Planung

5. **Am Ende: Export**
   > "Bitte als PDF exportieren."
   → Datei wird automatisch gespeichert in `Schul-Materialien/1_Exportierte_Ergebnisse/`

### Arbeitsblatt erstellen (Beispiel)

1. **Projekt:** "Arbeitsblatt erstellen"
2. **Prompt:**
   > "Ich brauche ein Arbeitsblatt zu Bruchrechnung, Klasse 6, 30 Minuten Bearbeitungszeit, mit Differenzierung."

3. **Claude erstellt:**
   - Aufgaben mit steigendem Schwierigkeitsgrad
   - Basis/Standard/Erweiterung
   - Optional: Lösungen

4. **Export als PDF** → Druckfertig

---

## 🔍 FAQ

**F: Kann ich eigene Lehrpläne hinzufügen?**
A: Ja! Kopiere PDFs nach `Schul-Materialien/2_Zentrale_Ressourcen/Lehrplaene/`. Claude greift automatisch darauf zu.

**F: Wie lange dauert die Installation?**
A: IT-Admin Setup: 1-2 Stunden. Lehrkraft kann danach sofort starten.

**F: Funktioniert das auch für andere Bundesländer?**
A: Ja! Die Ordnerstruktur unter `Lehrplaene/` kann um beliebige Bundesländer erweitert werden (Bayern, BW, etc.).

**F: Was ist mit Datenschutz?**
A: Alle Daten bleiben lokal auf dem Rechner der Lehrkraft. Claude Desktop nutzt nur die Anthropic Cloud für Verarbeitung (DSGVO-konform).

**F: Kann ich die Skills anpassen?**
A: Ja! Die SKILL.md-Dateien sind editierbar. Einfach ZIP neu erstellen und erneut hochladen.

**F: Brauche ich alle 23 Skills?**
A: Nein. Minimalkonfiguration: 4 Planungs-Skills + 1 Export-Skill (siehe `skills-checklist.md`).

---

## 📚 Weiterführende Dokumentation

- **`claude-desktop-setup/README.md`** – Hauptanleitung für IT-Admins
- **`lehrkraft-deployment/README.md`** – Deployment-Details
- **`claude-desktop-setup/MCP_SETUP_ANLEITUNG.md`** – MCP-Konfiguration
- **`prompts/`** – Original-Prompts (Basis für Skills)

---

## 🤝 Contribution & Lizenz

### Originalarbeit
**Christopher Zimmermann**
Universität zu Köln
Studienprojekt im Praxissemester

### Repository-Aufbereitung
Transformation des Prompt-Katalogs in ein modulares Claude Desktop System.

### Lizenz
**CC BY-SA 4.0**
Creative Commons Namensnennung - Weitergabe unter gleichen Bedingungen 4.0 International

---

## 🔮 Roadmap

**Nächste Schritte:**

### Erweiterung der Skills
- [ ] Weitere Planungs-Skills für spezifische Unterrichtsmethoden
- [ ] Zusätzliche Material-Skills (z.B. Klausuren, Lernstandserhebungen)
- [ ] Skills für Elternkommunikation und Zeugniserstellung

### Neue Module für Lehrkräfte
- [ ] Modul: Jahresplanung & Stoffverteilungsplan
- [ ] Modul: Leistungsbewertung & Notenverwaltung
- [ ] Modul: Individualisierung & Förderplanung
- [ ] Modul: Fächerübergreifende Projekte

### Automatisierungs-Tools
- [ ] Batch-Verarbeitung: Mehrere Arbeitsblätter auf einmal erstellen
- [ ] Batch-Export: Automatischer Export in verschiedene Formate
- [ ] Vorlagen-Management: Eigene Templates verwalten und wiederverwenden
- [ ] Curriculum-Synchronisation: Automatisches Update von Lehrplan-Ressourcen

---

## 📞 Support & Community

### Bei Problemen während des Setups:
1. **Dokumentation prüfen:**
   - `claude-desktop-setup/README.md` - Haupt-Setup-Anleitung
   - `CLAUDE.md` - Technische Details für Entwickler
   - `MCP_KLASSENVERWALTUNG_SETUP.md` - Förderschul-Setup

2. **Checklisten nutzen:**
   - `skills-checklist.md` in jedem Projekt-Ordner
   - Troubleshooting-Sektionen in den READMEs

3. **Issues erstellen:**
   - [GitHub Issues](https://github.com/trytofly94/LehrClaude/issues)
   - Beschreibe das Problem detailliert
   - Füge Screenshots hinzu wenn möglich

### 🤝 Contributing

Beiträge sind willkommen! Dieses Projekt lebt von der Community.

**Wie du beitragen kannst:**
- 🐛 **Bugs melden** - Erstelle ein Issue mit detaillierter Beschreibung
- 💡 **Features vorschlagen** - Teile deine Ideen für neue Skills oder Projekte
- 📝 **Dokumentation verbessern** - Rechtschreibung, Klarheit, Beispiele
- 🎓 **Neue Skills erstellen** - Besonders für weitere Fächer/Schulformen
- 🌍 **Bundesländer ergänzen** - Lehrpläne und spezifische Anforderungen

**Pull Requests:**
1. Forke das Repository
2. Erstelle einen Feature-Branch (`git checkout -b feature/neue-funktion`)
3. Committe deine Änderungen (`git commit -m 'feat: Beschreibung'`)
4. Pushe den Branch (`git push origin feature/neue-funktion`)
5. Öffne einen Pull Request

**Commit-Konventionen:**
- `feat:` - Neues Feature
- `fix:` - Bugfix
- `docs:` - Dokumentation
- `refactor:` - Code-Umstrukturierung

---

## 📜 Lizenz

**CC BY-SA 4.0** - Creative Commons Namensnennung - Weitergabe unter gleichen Bedingungen 4.0 International

**Das bedeutet:**
- ✅ Nutzung für beliebige Zwecke (auch kommerziell)
- ✅ Anpassung und Weitergabe erlaubt
- ⚠️ Namensnennung erforderlich (Christopher Zimmermann, Universität zu Köln)
- ⚠️ Weitergabe unter gleicher Lizenz

Vollständiger Lizenztext: [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.de)

---

## 🙏 Credits & Inspiration

### Basierend auf:

**ZfL Lernmodul: Unterrichtsreihenplanung mit KI**
- Zentrum für LehrerInnenbildung (ZfL), Universität zu Köln
- [Online-Lernmodul](https://zfl-lernen.de/lernmodule/methoden/unterrichtsreihenplanung-mit-ki/)
- **Originalautor:** Christopher Zimmermann
- **Studienprojekt:** "Unterrichtsgestaltung mit Hilfe von künstlicher Intelligenz"

⚠️ **Hinweis:** Dieses Repository ist eine **eigenständige Implementierung** der Konzepte aus dem ZfL-Lernmodul als modulares Claude Desktop System. Es handelt sich um einen Versuch, die wissenschaftlich fundierten Methoden in ein praktisch nutzbares Tool-Ökosystem zu überführen.

### Repository-Entwicklung:

**Transformation (2025):**
- Von Prompt-Katalog zum modularen System
- Förderschul-Integration mit 7 Förderschwerpunkten
- 27 Custom Skills für Claude Desktop
- Automatisierte Deployment-Workflows

**Erweitert um:**
- MCP Filesystem Server Integration
- Klassenverwaltung & Schülerprofile
- Template-basierte Differenzierung
- Batch-Export-Funktionen

### Didaktische Grundlagen:

- **Wolfgang Klafki** - Bildungstheoretische Didaktik
- **Josef Leisen** - Phasierung des Unterrichts
- **Rainer Wember** - Differenzierungsmodell für Förderschulen
- **Benjamin Bloom** - Taxonomie kognitiver Lernziele
- **KMK** - Standardisierte Operatoren für Aufgabenstellungen

---

**Version:** 1.1
**Stand:** 2025-01-10
**Kompatibilität:** macOS 11+, Claude Desktop (aktuell)

---

*Dieses System macht wissenschaftlich fundierte Unterrichtsplanung zugänglich, effizient und wiederholbar – ohne die didaktische Expertise der Lehrkraft zu ersetzen, sondern sie zu verstärken.*

**⭐ Wenn dir dieses Projekt hilft, gib ihm einen Stern auf GitHub!**
