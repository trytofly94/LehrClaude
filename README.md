# LehrClaude: KI-Tools für Lehrkräfte

> **Ein modulares Claude-basiertes Ökosystem für wissenschaftlich fundierte Unterrichtsplanung**

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

### Schritt 1: Repository vorbereiten
```bash
git clone <REPOSITORY_URL>
cd LehrClaude
```

### Schritt 2: Deployment auf Lehrkraft-Mac
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
- **Claude Pro/Team/Enterprise** Account (für Custom Skills)
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

## 📞 Support

Bei Problemen während des Setups:
1. Konsultiere die jeweiligen README-Dateien
2. Prüfe Checklisten in `skills-checklist.md`
3. Nutze Claude Code für Fehleranalyse

---

**Version:** 1.0
**Stand:** 2025-01-08
**Kompatibilität:** macOS 11+, Claude Desktop (aktuell)

---

*Dieses System macht wissenschaftlich fundierte Unterrichtsplanung zugänglich, effizient und wiederholbar – ohne die didaktische Expertise der Lehrkraft zu ersetzen, sondern sie zu verstärken.*
