# Unterrichtsplanung mit KI - Lernmodul Zusammenfassung

## Überblick
Dieses Lernmodul bietet einen umfassenden Prompt-Katalog zur Unterstützung von (angehenden) Lehrkräften bei der Planung und Erstellung von Unterrichtsreihen mit Hilfe von Large Language Models (LLM).

**Autor:** Christopher Zimmermann (Studienprojekt im Praxissemester, Universität zu Köln)
**Lizenz:** CC BY-SA 4.0
**Technische Umsetzung:** H5P-Portfolio mit 19 Kapiteln

## Technischer Hintergrund

### H5P-Struktur
- **Format:** H5P-Portfolio (Version 0.9)
- **Kapitelanzahl:** 19 interaktive Kapitel
- **Komponenten:** 
  - H5P.AdvancedText für Textinhalte
  - H5P.Accordion für aufklappbare Inhalte
  - H5P.Image für Visualisierungen
  - H5P.PortfolioPlaceholder für strukturierte Layouts

### Kernkomponenten des Systems

#### Prompt-Templates (Grundbausteine)
1. **Ultimate Prompt Template:** Mischung aus Kontextangaben und Präzision
2. **Debiasing Template:** Ethische und moralische Rahmenbedingungen
3. **Hallucination Reduction Template:** Minimierung von KI-Halluzinationen
4. **Automated Mind Mapping Prompt:** MindMap-Generierung
5. **Automated Prompt Optimization Pattern (APOP):** Iterative Prompt-Verbesserung

## Hauptmodule und Prompts

### Kapitel 1-4: Einführung und Grundlagen
- Willkommen und Zielsetzungen
- Transparenz des Prompt-Katalogs
- Forschungsbasierte Inhalte
- OER-Prinzipien (5 R-Freiheiten)

### Kapitel 5: Debiasing
**Prompt-Zusammenfassung:**
Setzt ethische Rahmenbedingungen für die gesamte Session. Fordert faire, vorurteilsfreie Behandlung aller Menschen und vermeidet Diskriminierung.

### Kapitel 6: Allgemeine Informationen
**Prompt-Zusammenfassung:**
Sammelt detaillierte Informationen über:
- Heterogene Bedingungen der Klasse
- Lerngruppenanalyse
- Lernvoraussetzungen
- Individuelle Bedürfnisse
- Lernumgebungsgestaltung

### Kapitel 7: Sachanalyse
**Prompt-Zusammenfassung:**
Führt fachliche Grundlagenanalyse durch. Nutzt Ultimate Prompting + Hallucination Reduction + APOP. Fragt nach Thema, Schulform, Klassenstufe und Fach. Berücksichtigt Kernlehrplan NRW und schulinterne Vorgaben.

### Kapitel 8: Didaktische Analyse
**Prompt-Zusammenfassung:**
Wendet Klafkis didaktische Analyse an. Fokus auf:
- Exemplarität
- Gegenwartsbedeutung
- Zukunftsbedeutung
- Struktur des Inhalts
- Zugänglichkeit

### Kapitel 9: Didaktische Reduktion
**Prompt-Zusammenfassung:**
Führt Stoff- und Inhaltsreduktion durch. Passt Komplexität an Lernvoraussetzungen an. Knüpft an Vorwissen an.

### Kapitel 10: Themenwahl
**Prompt-Zusammenfassung:**
Generiert MindMap aller Kernthemen mit didaktischer Analyse und Reduktion. Output im Markdown-Format für MindMap-Tools.

### Kapitel 11: Lernzielformulierung
**Zweischritt-Prozess:**

**Prompt 1 - Hintergrundinformationen:**
Vermittelt Struktur von Lernzielen (Grob-/Feinziele, Qualitäts-/Handlungsebene, Operatoren nach Anforderungsbereichen).

**Prompt 2 - Lernziele formulieren:**
Erstellt operationalisierte SMART-Lernziele mit korrekten Operatoren für verschiedene Anforderungsbereiche.

### Kapitel 12: Differenzierte Lernproduktplanung
**Dreischritt-Prozess:**

**Prompt 1:** Hintergrundinformationen zu Differenzierung (Wember-Modell: Basis-, Unterstützungs-, Erweiterungsstufe)

**Prompt 2:** Erstellt differenzierte Lernprodukte für jedes Feinziel

**Prompt 3:** Formuliert konkrete Aufgabenstellungen mit Operatoren, Sozialformen und Gruppengrößen

### Kapitel 13: Stundenplanung
**Zweischritt-Prozess:**

**Prompt 1:** Vermittelt Phasierung nach Leisen:
- Im Lernkontext ankommen
- Vorwissen aktivieren
- Lernprodukt erstellen
- Präsentieren/Diskutieren
- Sichern/Vernetzen
- Anwenden/Transfer

**Prompt 2:** Erstellt tabellarische Verlaufsplanung (Rückwärtsplanung von Lernprodukten)

### Kapitel 14: Gesamtübersicht
**Prompt-Zusammenfassung:**
Generiert umfassende MindMap der Unterrichtsreihe mit allen Kernthemen, Zielen und Aufgaben.

### Kapitel 15: Optional - MindMap für Schüler
**Prompt-Zusammenfassung:**
Erstellt schülergerechte Übersicht der Unterrichtsreihe mit Begründungen und wichtigsten Inhalten.

### Kapitel 16-17: Ausblick und Materialerstellung

#### Materialerstellung (8 Prompts):
1. **Texterstellung:** Sach- und Informationstexte zu allen Aufgaben
2. **Fehlende Materialien:** Ergänzung notwendiger Unterlagen
3. **Differenzierte Hilfsmaterialien:** Gestufte Lernhilfen
4. **Weitere Materialien:** Für alle Unterrichtsphasen
5. **Sprachsensible Überarbeitung:** Mit Wortspeichern
6. **Musterlösungen:** Für alle Aufgaben
7. **Ausgabe zur Weiterverarbeitung:** Strukturierte Arbeitsblätter
8. **PowerPoint-Präsentation:** Visuelle Aufbereitung

### Kapitel 18-19: Literatur und Rückmeldung
Umfangreiche Literaturliste zu:
- Didaktik und Methodik
- Künstliche Intelligenz
- Prompt Engineering

## Technische Empfehlungen

### Unterstützte LLMs:
- GPT-4 (OpenAI/ChatGPT)
- Claude (Anthropic)
- Gemini (Google)
- Mistral (Le Chat)

### MindMap-Viewer:
- Online: https://markmap.js.org/
- Desktop: MindNode, Xmind

### Wichtige Hinweise:
1. **Iterativer Prozess:** Prompts müssen aktiv angepasst werden
2. **Kontextbewahrung:** Alle Prompts bauen aufeinander auf
3. **Qualitätskontrolle:** Korrektheit-Checks in jedem Prompt
4. **Flexibilität:** Templates können kombiniert und angepasst werden

## Langfristige Zielsetzungen
- Entwicklung eines CustomGPT mit allen Inhalten
- Integration in kostenlose, datenschutzkonforme LLMs
- Kontinuierliche Weiterentwicklung als OER

## Prompt-Engineering-Patterns

### Verwendete Patterns:
- **Kontextaufbau:** Schrittweise Informationssammlung
- **Rollenspiel:** LLM nimmt verschiedene Perspektiven ein
- **Iterative Optimierung:** Prompts werden vor Ausführung optimiert
- **Strukturierte Ausgabe:** Vorgabe von Formaten (Listen, Tabellen, MindMaps)
- **Qualitätssicherung:** Eingebaute Korrektheitsprüfungen

### Technische Merkmale:
- **Token-Optimierung:** Aufteilung komplexer Aufgaben
- **Kontext-Management:** Referenzierung vorheriger Ergebnisse
- **Format-Kontrolle:** Präzise Ausgabevorgaben
- **Fehlerminimierung:** Explizite Einschränkungen und Validierungen

## Zusammenfassung
Das Lernmodul bietet einen vollständigen, transparenten und forschungsbasierten Workflow zur KI-gestützten Unterrichtsplanung. Die modulare Struktur mit 10 Hauptprompts und 8 Materialerstellungs-Prompts ermöglicht eine systematische Erstellung kompletter Unterrichtsreihen unter Berücksichtigung didaktischer Prinzipien und individueller Differenzierung.