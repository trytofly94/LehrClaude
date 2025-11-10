# Lehrpläne

Dieser Ordner ist für **zentrale Lehrplan-Dokumente** gedacht, die Claude Desktop via MCP Filesystem Server lesen kann.

## Empfohlene Struktur:

```
Lehrplaene/
├── NRW/
│   ├── Lehrplan_Biologie_Sek1.pdf
│   ├── Lehrplan_Mathematik_Sek1.pdf
│   └── ...
├── Bayern/
│   └── ...
└── weitere Bundeslaender/
```

## Wie nutzen die Skills diese Lehrpläne?

Der **Skill "02-sachanalyse"** (im Projekt "Unterrichtsreihe planen") greift automatisch auf diese Lehrpläne zu, wenn eine Sachanalyse erstellt wird.

**Beispiel:**
- Lehrkraft plant Unterrichtsreihe zu "Photosynthese", Klasse 7, NRW
- Claude sucht automatisch nach `Lehrplaene/NRW/Lehrplan_Biologie*.pdf`
- Bezieht relevante Abschnitte in die Sachanalyse ein

## Dateiformate

Claude kann folgende Formate lesen:
- **PDF** (wird extrahiert und als Text verarbeitet)
- **Markdown** (.md)
- **Text** (.txt)
- **Word** (.docx) - mit Einschränkungen

**Empfehlung:** Lehrpläne als PDF oder Markdown ablegen.

## Wo bekomme ich Lehrpläne?

- **NRW:** [https://www.schulentwicklung.nrw.de/](https://www.schulentwicklung.nrw.de/)
- **Bayern:** [https://www.isb.bayern.de/](https://www.isb.bayern.de/)
- **Baden-Württemberg:** [https://www.bildungsplaene-bw.de/](https://www.bildungsplaene-bw.de/)
- ... (jeweils Bildungsserver des Bundeslandes)

---

**Stand:** 2025-01-08
