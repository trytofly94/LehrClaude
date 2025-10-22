# Schul-KI: KI-gestützte Unterrichtsplanung

## 🎯 Überblick

Dieses Repository dokumentiert einen wissenschaftlich fundierten, systematischen Ansatz zur Unterrichtsplanung mit Künstlicher Intelligenz. Basierend auf bewährten didaktischen Konzepten und modernem Prompt Engineering ermöglicht dieses System Lehrkräften die effiziente Erstellung vollständiger Unterrichtsreihen.

## 📚 Was ist das?

Ein transparenter, forschungsbasierter **Prompt-Katalog** zur Unterstützung von (angehenden) Lehrkräften bei der Planung und Erstellung von Unterrichtsreihen mit Large Language Models (LLMs). Das System basiert auf der Arbeit von Christopher Zimmermann (Universität zu Köln) und verbindet:

- **Klassische Didaktik** (Klafki, Leisen, Wember)
- **Moderne KI-Technologie** (GPT-4, Claude, Gemini)
- **Strukturiertes Prompt Engineering** (Templates & Patterns)

## 🔄 Der strukturierte Planungsprozess

### Grundprinzip: Iterativer Dialog mit der KI

Die Unterrichtsplanung erfolgt in **10 aufeinander aufbauenden Schritten**, bei denen jeder Schritt auf den Ergebnissen der vorherigen aufbaut. Der Prozess ist **nicht linear**, sondern erfordert aktive Anpassungen und Rückmeldungen durch die Lehrkraft.

### Die 10 Hauptschritte im Detail

#### 1️⃣ **Debiasing** (Ethische Grundlagen)
- Setzt ethische und moralische Rahmenbedingungen für die gesamte Session
- Verhindert Diskriminierung und Vorurteile
- Muss zu Beginn jeder neuen KI-Session durchgeführt werden

#### 2️⃣ **Allgemeine Informationen sammeln**
- Detaillierte Erfassung der Lerngruppe:
  - Heterogene Bedingungen (Diversität, Inklusion)
  - Lernvoraussetzungen und Vorwissen
  - Verfügbare Ressourcen und Lernumgebung
  - Zeitrahmen und curriculare Vorgaben
- **Wichtig:** Je detaillierter die Eingabe, desto präziser die Planung

#### 3️⃣ **Sachanalyse** (Fachliche Grundlagen)
- Systematische Aufarbeitung des Unterrichtsthemas
- Berücksichtigung von:
  - Kernlehrplan NRW (anpassbar für andere Bundesländer)
  - Schulinternen Curricula
  - Fachdidaktischen Standards
- Nutzt: Ultimate Prompt + Hallucination Reduction + APOP

#### 4️⃣ **Didaktische Analyse** (Nach Klafki)
Beantwortet die zentralen Fragen:
- **Exemplarität:** Wofür steht das Thema beispielhaft?
- **Gegenwartsbedeutung:** Welche aktuelle Relevanz hat es?
- **Zukunftsbedeutung:** Welche zukünftige Bedeutung?
- **Struktur:** Wie ist der Inhalt aufgebaut?
- **Zugänglichkeit:** Wie kann er vermittelt werden?

#### 5️⃣ **Didaktische Reduktion**
- Anpassung der Komplexität an die Lerngruppe
- Stoff- und Inhaltsreduktion
- Verknüpfung mit Vorwissen
- Schülergerechte Aufbereitung

#### 6️⃣ **Themenwahl** (MindMap-Generierung)
- Visualisierung aller Kernthemen
- Strukturierte Übersicht als MindMap
- Export im Markdown-Format
- Auswahl der zu behandelnden Themen

#### 7️⃣ **Lernzielformulierung** (SMART-Ziele)
**Zweischritt-Prozess:**
1. Vermittlung der Lernziel-Theorie an die KI
2. Formulierung operationalisierter Lernziele:
   - **Grobziele** (Stundenziele)
   - **Feinziele** (Teilkompetenzen)
   - Mit korrekten Operatoren nach Anforderungsbereichen

#### 8️⃣ **Differenzierte Lernproduktplanung**
**Dreischritt-Prozess nach Wember:**
1. Hintergrundwissen zu Differenzierung vermitteln
2. Lernprodukte für drei Niveaustufen erstellen:
   - **Basisstufe** (grundlegende Anforderungen)
   - **Unterstützungsstufe** (mit Hilfestellungen)
   - **Erweiterungsstufe** (vertiefende Aufgaben)
3. Konkrete Aufgabenformulierungen mit Operatoren

#### 9️⃣ **Stundenplanung** (Nach Leisen)
**Phasierung jeder Unterrichtsstunde:**
1. Im Lernkontext ankommen
2. Vorwissen aktivieren
3. Lernprodukt erstellen
4. Präsentieren/Diskutieren
5. Sichern/Vernetzen
6. Anwenden/Transfer

**Rückwärtsplanung:** Von den Lernprodukten zur Stundenstruktur

#### 🔟 **Gesamtübersicht** (Finale MindMap)
- Komplette Unterrichtsreihe visualisiert
- Alle Kernthemen, Ziele und Aufgaben
- Optional: Schülergerechte Version

### 📝 Zusätzliche Materialerstellung (8 Prompts)

Nach der Grundplanung können konkrete Unterrichtsmaterialien erstellt werden:

1. **Texterstellung:** Sach- und Informationstexte
2. **Fehlende Materialien:** Ergänzende Unterlagen
3. **Differenzierte Hilfen:** Gestufte Lernhilfen
4. **Phasenmaterialien:** Für alle Unterrichtsphasen
5. **Sprachsensible Überarbeitung:** Mit Wortspeichern
6. **Musterlösungen:** Für alle Aufgaben
7. **Arbeitsblätter:** Strukturierte Ausgabe
8. **Präsentationen:** PowerPoint-Folien

## 🛠️ Technische Voraussetzungen

### Unterstützte Large Language Models
- **GPT-4** (OpenAI/ChatGPT) - Empfohlen
- **Claude** (Anthropic)
- **Gemini** (Google)
- **Mistral** (Le Chat)

### Benötigte Tools
- **MindMap-Viewer:**
  - Online: [markmap.js.org](https://markmap.js.org/)
  - Desktop: MindNode, Xmind
- **Textverarbeitung:** Für finale Aufbereitung

## 🎓 Didaktische Grundlagen

### Verwendete Konzepte
- **Klafkis Bildungstheoretische Didaktik**
- **Leisens Phasierung des Unterrichts**
- **Wembers Differenzierungsmodell**
- **SMART-Zielformulierung**
- **Operatoren nach KMK-Standards**

### Prompt-Engineering-Patterns

 Das System nutzt fortgeschrittene Prompt-Techniken:

- **Ultimate Prompt Template:** Kontextreiche, präzise Anfragen
- **Debiasing Template:** Ethische Rahmensetzung
- **Hallucination Reduction:** Minimierung von KI-Fehlern
- **Mind Mapping Prompts:** Strukturierte Visualisierung
- **APOP (Automated Prompt Optimization):** Iterative Verbesserung

## 💡 Wichtige Hinweise für die Anwendung

### Erfolgsfaktoren

1. **Kontextbewahrung:** Alle Prompts in derselben KI-Session durchführen
2. **Aktive Mitarbeit:** Prompts müssen individuell angepasst werden
3. **Iterativer Prozess:** Mehrfache Überarbeitung ist normal
4. **Qualitätskontrolle:** Jeder Output muss geprüft werden
5. **Flexibilität:** Templates können kombiniert werden

### Typischer Zeitaufwand

- **Vollständige Unterrichtsreihe:** 2-3 Stunden
- **Einzelstunde:** 30-45 Minuten
- **Materialerstellung:** 1-2 Stunden zusätzlich

## 📂 Repository-Struktur

```
Schul-KI/
├── README.md                                          # Diese Datei
├── Unterrichtsplanung_mit_KI_Lernmodul_Zusammenfassung.md  # Technische Dokumentation
├── Lernmodul_Vollstaendige_Inhalte.md                     # Kompletter Prompt-Katalog
└── .gitignore                                              # Git-Konfiguration
```

### Dokumentation

- **Zusammenfassung:** Kompakte Übersicht mit allen 18 Prompts
- **Vollständige Inhalte:** 1:1 Kopie aller Modulinhalte (1291 Zeilen)

## 🚀 Erste Schritte

1. **LLM wählen:** Eines der unterstützten Modelle auswählen
2. **Neue Session starten:** Wichtig für Kontextbewahrung
3. **Mit Debiasing beginnen:** Ethische Grundlagen setzen
4. **Schrittweise durcharbeiten:** Jeden Prompt anpassen und ausführen
5. **Ergebnisse dokumentieren:** Outputs für spätere Verwendung sichern

## 🔮 Zukunftsperspektiven

### Geplante Entwicklungen
- CustomGPT mit allen Prompts vorinstalliert
- Integration in datenschutzkonforme, kostenlose LLMs
- Automatisierte Materialerstellung
- Direkte Schnittstellen zu Lernplattformen

## 📖 Weiterführende Ressourcen

### Literaturempfehlungen
- Klafki, W.: Neue Studien zur Bildungstheorie und Didaktik
- Leisen, J.: Handbuch Methoden im Fachunterricht
- Wember, F.: Differenzierung im Unterricht

### Online-Ressourcen
- [5 R-Freiheiten von OER](https://open-educational-resources.de/)
- [KMK Operatorenlisten](https://www.kmk.org/)
- [Markmap Viewer](https://markmap.js.org/)

## 👥 Beitragende

### Originalarbeit
**Christopher Zimmermann**  
Studienprojekt im Praxissemester  
Universität zu Köln  
Titel: "Unterrichtsgestaltung mit Hilfe von künstlicher Intelligenz"

### Repository-Aufbereitung
Dokumentation und Digitalisierung des Prompt-Katalogs für die praktische Anwendung

## 📄 Lizenz

**CC BY-SA 4.0**  
Dieses Werk ist lizenziert unter einer Creative Commons Namensnennung - Weitergabe unter gleichen Bedingungen 4.0 International Lizenz.

## ❓ FAQ

**F: Kann ich die Prompts auch mit kostenlosen KI-Modellen verwenden?**  
A: Ja, aber die Qualität kann variieren. GPT-4 oder Claude liefern die besten Ergebnisse.

**F: Muss ich alle 10 Schritte durchführen?**  
A: Die Schritte bauen aufeinander auf. Einzelne können übersprungen werden, aber das Gesamtergebnis wird weniger kohärent.

**F: Wie lange bleiben die Kontexte in der KI erhalten?**  
A: In einer Session normalerweise durchgehend. Bei Unterbrechungen sollten wichtige Outputs gesichert werden.

**F: Kann ich eigene didaktische Konzepte einbringen?**  
A: Absolut! Das System ist flexibel und kann erweitert werden.

---

*Dieses Repository versteht sich als lebendiges Dokument und wird kontinuierlich weiterentwickelt.*