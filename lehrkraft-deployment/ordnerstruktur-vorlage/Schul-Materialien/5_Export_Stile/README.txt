EXPORT-STILE - DESIGN FUER UNTERRICHTSMATERIALIEN
=================================================

Dieser Ordner ermoeglicht Ihnen, das Design Ihrer Unterrichtsmaterialien
anzupassen. Claude verwendet diese Einstellungen automatisch.


VORDEFINIERTE THEMES
====================

Falls Sie keine eigenen Einstellungen vornehmen, fragt Claude Sie nach
einem der 5 vordefinierten Themes:

1. KLASSISCH SCHULISCH
   - Dunkelblau/Grau, serioes, traditionell
   - Gut fuer: Formelle Materialien, Oberstufe

2. MODERN FREUNDLICH
   - Hellblau/Gruen, einladend, zeitgemaess
   - Gut fuer: Allgemeine Materialien, alle Klassenstufen

3. FOERDERSCHULE KLAR
   - Schwarz/Weiss, hoher Kontrast, grosse Schrift
   - Gut fuer: Barrierefreie Materialien, Foerderschule

4. GRUNDSCHULE BUNT
   - Pink/Gruen, kindgerecht, froehlich
   - Gut fuer: Grundschule, motivierende Materialien

5. OBERSTUFE PROFESSIONELL
   - Anthrazit/Weiss, minimalistisch, sachlich
   - Gut fuer: Wissenschaftliche Inhalte, Abitur


EIGENE SCHULFARBEN DEFINIEREN
=============================

Erstellen Sie eine Datei "schulfarben.txt" in diesem Ordner mit folgendem
Inhalt:

    SCHULNAME: Ihre Schule
    PRIMAER: #1A5F7A
    SEKUNDAER: #F5F5F5
    AKZENT: #FFC857
    SCHRIFT: Arial

Ersetzen Sie die Hex-Codes durch Ihre Schulfarben.

WO FINDE ICH MEINE SCHULFARBEN?
- Fragen Sie Ihre Schulleitung oder den Webmaster
- Schauen Sie auf Ihrer Schulwebsite (Rechtsklick > Element untersuchen)
- Nutzen Sie ein Online-Tool wie coolors.co

BEISPIEL-DATEI:
Eine Vorlage finden Sie unter: schulfarben-beispiel.txt


SCHULLOGO HINZUFUEGEN
=====================

Legen Sie Ihr Schullogo als "schullogo.png" in diesem Ordner ab.

ANFORDERUNGEN:
- Format: PNG (mit transparentem Hintergrund empfohlen)
- Groesse: Mind. 200x200 Pixel
- Dateiname: schullogo.png (exakt so)

Claude wird dann Platzhalter [SCHULLOGO] in Materialien einfuegen,
die Sie durch Ihr Logo ersetzen koennen.


POWERPOINT-VORLAGE VERWENDEN
============================

Falls Ihre Schule eine PowerPoint-Vorlage hat:

1. Speichern Sie die Vorlage als "powerpoint-vorlage.pptx" hier ab
2. Claude analysiert automatisch die verfuegbaren Layouts
3. Neue Praesentationen werden mit Ihrer Vorlage erstellt

ANFORDERUNGEN AN DIE VORLAGE:
- Mindestens: Titelfolie + Inhaltsfolie
- Empfohlen: Bild-Folie, Zwei-Spalten-Folie, Abschlussfolie
- Farbschema und Schriften werden uebernommen


ORDNERINHALT (OPTIONAL)
=======================

5_Export_Stile/
├── README.txt              <-- Diese Datei
├── schulfarben.txt         <-- Ihre Schulfarben (optional)
├── schullogo.png           <-- Ihr Schullogo (optional)
└── powerpoint-vorlage.pptx <-- Ihre PPTX-Vorlage (optional)


TIPPS
=====

1. SIE MUESSEN NICHTS EINSTELLEN
   Claude fragt Sie einfach nach einem Theme, wenn Sie Materialien erstellen.

2. AENDERUNGEN SOFORT WIRKSAM
   Aendern Sie schulfarben.txt und Ihr naechstes Material nutzt die neuen Farben.

3. FARBEN TESTEN
   Erstellen Sie ein einfaches Testmaterial, um Ihre Farben zu pruefen.

4. KONTRAST BEACHTEN
   Achten Sie auf ausreichenden Kontrast zwischen Text und Hintergrund.
   Besonders wichtig bei Foerdermaterialien!


HILFE
=====

Bei Fragen zur Farbdefinition:
- Hex-Codes bestehen aus # gefolgt von 6 Zeichen (0-9, A-F)
- Beispiel: #FF0000 = Rot, #00FF00 = Gruen, #0000FF = Blau

Online-Tools fuer Farbauswahl:
- https://coolors.co/
- https://color.adobe.com/
- https://paletton.com/
