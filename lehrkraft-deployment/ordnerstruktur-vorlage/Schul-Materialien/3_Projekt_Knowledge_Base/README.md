# Projekt Knowledge Base

Dieser Ordner ist für **projektspezifische Dokumente** gedacht, die nur für einzelne Unterrichtsreihen oder Projekte relevant sind.

## Unterschied zu "Zentrale Ressourcen"

| Zentrale Ressourcen (`2_Zentrale_Ressourcen/`) | Projekt Knowledge Base (`3_Projekt_Knowledge_Base/`) |
|------------------------------------------------|------------------------------------------------------|
| **Global** für alle Projekte relevant | **Spezifisch** für eine bestimmte Unterrichtsreihe |
| Lehrpläne, KMK-Operatoren, Bloom-Taxonomie | Fachartikel, Forschungspapiere, Notizen |
| Statisch, ändert sich selten | Dynamisch, wechselt pro Projekt |
| Via MCP Filesystem Server zugänglich | Via Claude Desktop Project Knowledge Base |

---

## Verwendung

**Wichtig:** Dieser Ordner wird **NICHT** über MCP verwendet!

Stattdessen nutzt du die **Project Knowledge Base** direkt in Claude Desktop:

### So funktioniert's:

1. **Öffne ein Claude Desktop Projekt** (z.B. "Unterrichtsreihe planen")

2. **Gehe zu Project Settings**

3. **Knowledge Base:**
   - Klicke auf "Add Content"
   - Lade projektspezifische Dateien hoch (z.B. Fachartikel zur Photosynthese)

4. **Claude nutzt diese Dokumente automatisch** während der Arbeit in diesem Projekt

---

## Empfohlene Struktur (optional)

Falls du lokal Backups deiner Project Knowledge Bases ablegen möchtest:

```
3_Projekt_Knowledge_Base/
├── projekt-biologie-photosynthese/
│   ├── forschungspapier-photosynthese-2023.pdf
│   ├── notizen-lehrkraft.md
│   └── schueler-vorwissen.md
│
├── projekt-geschichte-industrialisierung/
│   ├── quellensammlung.md
│   └── zeitleiste.md
│
└── projekt-mathe-integralrechnung/
    └── beispielaufgaben.pdf
```

---

## Typische Inhalte

**Projektspezifische Dokumente:**
- 📄 Forschungspapiere zu spezifischen Themen
- 📝 Notizen aus Fortbildungen
- 📰 Aktuelle News-Artikel
- 🧪 Experimentier-Protokolle
- 📊 Umfrage-Ergebnisse der eigenen Klasse
- 💡 Brainstorming-Notizen

**Was NICHT hierhin gehört:**
- ❌ Lehrpläne → `2_Zentrale_Ressourcen/Lehrplaene/`
- ❌ Allgemeine didaktische Frameworks → `2_Zentrale_Ressourcen/Didaktik/`
- ❌ Fertige Ergebnisse → `1_Exportierte_Ergebnisse/`

---

**Stand:** 2025-01-08
