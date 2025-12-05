EXPORT-STILE - DESIGN FUER UNTERRICHTSMATERIALIEN
=================================================

Dieser Ordner ermoeglicht Ihnen, das Design Ihrer Unterrichtsmaterialien
anzupassen. Claude verwendet diese Einstellungen automatisch.


SO FUNKTIONIERT ES
==================

1. Sie legen Ihre Vorlagen hier ab (z.B. schulfarben.txt, powerpoint-vorlage.pptx)
2. Claude analysiert diese automatisch und erstellt eine .ki.txt Version
3. Bei jedem Export nutzt Claude die .ki.txt fuer konsistentes Design
4. Wenn Sie eine Vorlage aendern, erkennt Claude das und aktualisiert die .ki.txt

BEISPIEL:
- Sie legen "schulfarben.txt" ab
- Claude erstellt automatisch "schulfarben.ki.txt" (optimiert fuer KI)
- Bei jedem Export nutzt Claude die Farben aus schulfarben.ki.txt
- Aendern Sie schulfarben.txt? Die .ki.txt wird automatisch aktualisiert!


WAS SIND .ki.txt DATEIEN?
=========================

Claude erstellt fuer jede Vorlage eine optimierte .ki.txt Datei:

  schulfarben.txt       -->  schulfarben.ki.txt
  powerpoint-vorlage.pptx  -->  powerpoint-vorlage.ki.txt
  arbeitsblatt-vorlage.docx  -->  arbeitsblatt-vorlage.ki.txt

Diese .ki.txt Dateien:
- Werden AUTOMATISCH von Claude erstellt
- Enthalten eine strukturierte Version Ihrer Vorgaben
- Werden aktualisiert, wenn Ihre Originalvorlage neuer ist
- Koennen Sie sich anschauen, aber muessen Sie nicht bearbeiten

WICHTIG: Bearbeiten Sie nur Ihre Original-Dateien (ohne .ki), nicht die
.ki.txt Dateien! Diese werden automatisch neu generiert.


ORDNERINHALT
============

5_Export_Stile/
+-- README.txt                   <-- Diese Datei
+-- schulfarben-beispiel.txt     <-- Vorlage zum Kopieren
|
+-- schulfarben.txt              <-- Ihre Schulfarben (optional)
+-- schulfarben.ki.txt           <-- [automatisch erstellt]
|
+-- schullogo.png                <-- Ihr Schullogo (optional)
|
+-- powerpoint-vorlage.pptx      <-- Ihre PPTX-Vorlage (optional)
+-- powerpoint-vorlage.ki.txt    <-- [automatisch erstellt]
|
+-- arbeitsblatt-vorlage.docx    <-- Ihre DOCX-Vorlage (optional)
+-- arbeitsblatt-vorlage.ki.txt  <-- [automatisch erstellt]


VORDEFINIERTE THEMES (FALLBACK)
===============================

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
3. Die Analyse wird in "powerpoint-vorlage.ki.txt" gespeichert
4. Neue Praesentationen werden mit Ihrer Vorlage erstellt

ANFORDERUNGEN AN DIE VORLAGE:
- Mindestens: Titelfolie + Inhaltsfolie
- Empfohlen: Bild-Folie, Zwei-Spalten-Folie, Abschlussfolie
- Farbschema und Schriften werden uebernommen


ARBEITSBLATT-VORLAGE VERWENDEN
==============================

Falls Ihre Schule eine Word-Vorlage hat:

1. Speichern Sie die Vorlage als "arbeitsblatt-vorlage.docx" hier ab
2. Claude analysiert automatisch die Struktur
3. Die Analyse wird in "arbeitsblatt-vorlage.ki.txt" gespeichert
4. Neue Arbeitsblaetter werden mit Ihrer Vorlage erstellt

ANFORDERUNGEN AN DIE VORLAGE:
- Klare Kopf- und Fusszeile
- Definierte Ueberschriften-Formate
- Platz fuer Logo in der Kopfzeile


TIPPS
=====

1. SIE MUESSEN NICHTS EINSTELLEN
   Claude fragt Sie einfach nach einem Theme, wenn Sie Materialien erstellen.

2. AENDERUNGEN WERDEN ERKANNT
   Aendern Sie eine Vorlage, erkennt Claude das automatisch und aktualisiert
   die .ki.txt beim naechsten Export.

3. FARBEN TESTEN
   Erstellen Sie ein einfaches Testmaterial, um Ihre Farben zu pruefen.

4. KONTRAST BEACHTEN
   Achten Sie auf ausreichenden Kontrast zwischen Text und Hintergrund.
   Besonders wichtig bei Foerdermaterialien!

5. .ki.txt DATEIEN NICHT LOESCHEN
   Diese werden von Claude benoetigt. Wenn Sie sie loeschen, werden sie
   einfach neu erstellt.


HILFE
=====

Bei Fragen zur Farbdefinition:
- Hex-Codes bestehen aus # gefolgt von 6 Zeichen (0-9, A-F)
- Beispiel: #FF0000 = Rot, #00FF00 = Gruen, #0000FF = Blau

Online-Tools fuer Farbauswahl:
- https://coolors.co/
- https://color.adobe.com/
- https://paletton.com/


SCHNELLZUGRIFF AUF DIESEN ORDNER
================================

So finden Sie diesen Ordner im Finder:
1. Oeffnen Sie den Finder
2. Klicken Sie auf "Gehe zu" -> "Gehe zum Ordner..."
   (oder druecken Sie: Command + Shift + G)
3. Geben Sie ein: ~/Schul-Materialien/5_Export_Stile
4. Druecken Sie Enter

TIPP: Ziehen Sie den Ordner in die Finder-Seitenleiste fuer Schnellzugriff!
