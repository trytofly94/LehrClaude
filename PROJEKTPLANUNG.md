# Projektplanung - LehrClaude

**Version:** 2.3.0
**Stand:** 2025-12-12
**Status:** Privates Entwicklungsprojekt

---

## Projekt-Philosophie

LehrClaude ist ein **persönliches Tool-Projekt** für wissenschaftlich fundierte Unterrichtsplanung mit Claude Desktop. Der Fokus liegt auf:

1. **Stabilität und Wartbarkeit** - Bestehendes System robust halten
2. **Modulare Architektur** - Skills und Projekte klar getrennt
3. **Kohärenz-Sicherung** - Automatische Validierung verhindert Inkonsistenzen
4. **Didaktische Fundierung** - Basierend auf Klafki, Leisen, Bloom, etc.

**NICHT im Fokus:**
- Masse (viele Nutzer erreichen)
- Marketing und Community-Building
- Professionelle Dokumentation/Videos
- Enterprise-Features

---

## Aktuelle Prioritäten (Sofort)

### ✅ Goal 1.1: Automatisierte Tests für Kohärenz-System
**Status:** Geplant
**Aufwand:** 4-6 Stunden
**Warum jetzt:** Das Kohärenz-System ist kritisch für die Stabilität. Ohne Tests kann jede Änderung das System destabilisieren.

**Umsetzung:**
```
claude-desktop-setup/tests/
├── test-validate-versions.sh
├── test-validate-cross-references.sh
├── test-validate-template-integrity.sh
├── fixtures/
│   ├── valid-repo/
│   └── broken-repo/
└── run-all-tests.sh
```

**Erfolgs-Kriterien:**
- [ ] Alle Validierungs-Scripts haben Unit-Tests
- [ ] Integration-Test für coherence-check.sh
- [ ] Test-Fixtures für typische Fehlerszenarien
- [ ] Tests laufen automatisch vor jedem Commit

---

### ✅ Goal 3.3: Skill-Versionierung
**Status:** Geplant
**Aufwand:** 6-8 Stunden
**Warum jetzt:** Skills ändern sich unabhängig vom Hauptprojekt. Ohne Versionierung ist unklar, welche Materialien mit welchem Skill kompatibel sind.

**Umsetzung:**

Jeder Skill bekommt eigene Version in `SKILL.md`:
```yaml
---
name: mat-02-arbeitsblatt-erstellen
version: 1.2.0  # NEU
minLehrClaudeVersion: 2.3.0  # NEU (Kompatibilität)
description: ...
changelog: |
  ## 1.2.0 (2025-12-15)
  - Neue Aufgabentypen hinzugefügt

  ## 1.1.0 (2025-12-01)
  - KMK-Operatoren-Validierung
---
```

**Zusätzliche Scripts:**
- `check-skill-compatibility.sh` - Prüft ob Skill-Version mit LehrClaude-Version kompatibel ist
- `migrate-skill.sh` - Hilft bei Breaking Changes (optional)

**Erfolgs-Kriterien:**
- [ ] Alle 9 Skills haben Versionsnummern
- [ ] validate-skill.sh prüft Version-Format
- [ ] MANIFEST.json listet Skill-Versionen
- [ ] Changelog-Richtlinien für Skills dokumentiert

---

## Niedrige Priorität (Zukunft)

### 🔵 Goal 2.3: KI-Feedback-Loop für Material-Qualität
**Status:** Idee
**Aufwand:** 10-15 Stunden
**Warum später:** Nützlich, aber nicht kritisch. Lehrkräfte können Qualität selbst beurteilen.

**Konzept:**
Skill `material-reviewen` der automatisch prüft:
- Didaktische Kriterien (SMART-Lernziele, Bloom-Stufen)
- Sprachliche Barrierefreiheit (Lesbarkeit-Index)
- Konsistenz mit Lehrplan

**Wann umsetzen:** Wenn mehrere Lehrkräfte das System nutzen und Feedback geben, dass sie Hilfe bei Qualitätssicherung brauchen.

---

### 🔵 Goal 3.1: CI/CD Pipeline mit GitHub Actions
**Status:** Idee
**Aufwand:** 8-10 Stunden
**Warum später:** Erst sinnvoll wenn es regelmäßige Releases gibt oder mehrere Entwickler am Projekt arbeiten.

**Konzept:**
- Automatische Tests bei jedem Push
- Automatisches Packaging von Releases
- Changelog-Generierung

**Wann umsetzen:** Wenn das Projekt öffentlich wird oder mehrere Contributors hat.

---

## NICHT geplant (Oder: Erst bei offiziellem Projekt)

Die folgenden Goals wurden in der ursprünglichen Roadmap vorgeschlagen, sind aber **NICHT** Teil des aktuellen Plans:

### ❌ Phase 1: Quick Wins
- **Goal 1.2: Interaktiver Installer** - Setup-Komplexität ist akzeptabel für Entwicklungs-Setup
- **Goal 1.3: Error-Reporting & Logging** - Nicht nötig für persönliches Projekt

### ❌ Phase 2: Feature-Erweiterungen
- **Goal 2.1: Kollaborations-Features** - Kein Bedarf, da persönliches Tool
- **Goal 2.2: Web-basiertes Dashboard** - Zu aufwändig, Claude Desktop reicht aus

### ❌ Phase 3: Technische Verbesserungen
- **Goal 3.2: Performance-Optimierung** - Performance ist bereits ausreichend

### ❌ Phase 4: Nutzererfahrung & Dokumentation
Diese gesamte Phase ist erst relevant, wenn LehrClaude ein öffentliches, viel genutztes Projekt wird:
- **Goal 4.1: Video-Tutorials** - Nur bei größerer Nutzerbasis sinnvoll
- **Goal 4.2: Interaktive Dokumentation** - README.md und CLAUDE.md reichen aus
- **Goal 4.3: Nutzer-Feedback-System** - Erst bei Community nötig

### ❌ Phase 5: Skalierbarkeit & Wartbarkeit
Diese Phase ist noch sehr weit in der Zukunft:
- **Goal 5.1: Bundesland-spezifische Skill-Pakete** - Zu komplex für aktuellen Scope
- **Goal 5.2: Plugin-System für Custom Skills** - Erst bei aktivem Ecosystem sinnvoll

---

## Entscheidungs-Kriterien

**Wann wird ein "NICHT geplant" Goal doch umgesetzt?**

1. **Nutzer-Basis wächst:** Mehr als 10 aktive Nutzer (außer Entwickler)
2. **Community entsteht:** Contributors wollen Features beitragen
3. **Externes Interesse:** Schulen/Institutionen zeigen Interesse an offiziellem Deployment
4. **Förderung:** Projekt erhält finanzielle Unterstützung

**Bis dahin gilt:**
- Fokus auf Stabilität und Code-Qualität
- Keine Marketing-Aktivitäten
- Kein Community-Management
- Keine aufwändige Dokumentation

---

## Nächste Schritte (Konkret)

### Schritt 1: Tests implementieren (Goal 1.1)
```bash
# Erstelle Test-Struktur
mkdir -p claude-desktop-setup/tests/fixtures

# Schreibe ersten Test
touch claude-desktop-setup/tests/test-validate-versions.sh
chmod +x claude-desktop-setup/tests/test-validate-versions.sh

# Test-Runner
touch claude-desktop-setup/tests/run-all-tests.sh
chmod +x claude-desktop-setup/tests/run-all-tests.sh
```

**Zeitplan:** 1-2 Arbeitstage

---

### Schritt 2: Skill-Versionierung (Goal 3.3)
```bash
# Erweitere validate-skill.sh um Version-Check
# Füge Version zu allen 9 SKILL.md hinzu
# Dokumentiere Changelog-Format

# Update MANIFEST.json mit Skill-Versionen
```

**Zeitplan:** 1-2 Arbeitstage

---

## Status-Tracking

| Goal | Status | Priorität | Geschätzter Aufwand | Tatsächlicher Aufwand | Abgeschlossen |
|------|--------|-----------|---------------------|----------------------|---------------|
| 1.1 Tests | Geplant | Hoch | 4-6h | - | - |
| 3.3 Skill-Versionierung | Geplant | Hoch | 6-8h | - | - |
| 2.3 KI-Feedback | Idee | Niedrig | 10-15h | - | - |
| 3.1 CI/CD | Idee | Niedrig | 8-10h | - | - |

---

## Changelog dieser Planung

### 2025-12-12
- Initiale Version basierend auf Roadmap-Analyse
- Klare Abgrenzung: Was wird NICHT gemacht
- Fokus auf 2 Goals: Tests + Skill-Versionierung

---

**Verantwortlich:** Lennart
**Review-Intervall:** Monatlich (oder bei größeren Änderungen)
**Nächstes Review:** 2026-01-12
