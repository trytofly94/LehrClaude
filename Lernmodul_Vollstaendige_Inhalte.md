# Unterrichtsplanung mit KI - Vollständige Modulinhalte

Dieses Dokument enthält alle Texte und Inhalte des H5P-Lernmoduls in der originalen Reihenfolge.

================================================================================


# KAPITEL 1



**Herzlich willkommen!**

Dieses Modul bietet umfassende und transparente Einblicke in einen Prompt-Katalog, der (angehende) Lehrkräfte bei der Planung und Erstellung einer Unterrichtsreihe unterstützen soll. 

Es wurde inhaltlich von Christopher Zimmermann im Rahmen seines **Studienprojektes** im Praxissemester an der Universität zu Köln erarbeitet. Der ursprüngliche Titel der Arbeit lautet "Unterrichtsgestaltung mit Hilfe von **künstlicher Intelligenz**." Ziel der Arbeit war es, herauszufinden, inwiefern Lehrkräfte bei ihrer **Unterrichtsgestaltung **durch **Large Language Models **(LLM) unterstützt werden können bzw. wie ein konkreter **Handlungsleitfaden **für die Schule aussehen könnte. 
Einen ausführlichen Abstract zur Arbeit befindet sich am Ende dieser Seite.



In diesem Modul wurden die zentralen Ergebnisse mit Blick auf den umfänglichen **Prompt-Katalog** zusammengetragen und in Teilen leicht abgeändert, um die praktische Umsetzung mithilfe von LLM in den Fokus zu rücken.

Die Arbeit von Christopher Zimmermann und die Darstellung in Form dieses Moduls zeichnen sich dabei besonders durch folgende Aspekte und **langfristige Zielsetzungen** aus:


### Langfristige Zielsetzungen

Dieses Modul versteht sich als

• transparente Darstellung der forschungsbasierten Inhalte und Zusammenhänge innerhalb des Prompt-Katalogs.
• Ausgangslage für die Entwicklung eines CustomGPT, der die hier abgebildeten Inhalte in Form eines Large Language Models zukünftig im Dialog mit Nutzer*innen bearbeitet - siehe hierfür auch das Kapitel 'Ausblick'.


### Vorteile und Besonderheiten dieses Prompt-Katalogs

• Ergebnisse basieren auf grundlegender und aktueller **Forschungsliteratur**; diese ist am Ende des Moduls einsehbar
• volle **Transparenz **über den gesamten Prompt-Katalog, dessen Zusammenhang/Genese und die Zusammensetzung der einzelnen Prompts (im Gegensatz zu aktuell verbreiteten kommerziellen Angeboten)
• dadurch ist gleichzeitig ein sukzessiver **Kompetenzerwerb **auf Seiten der Anwendenden in folgenden Bereichen möglich:
• Prompt-Engineering
• Unterrichtsplanung (didaktisch und methodisch)

• die Inhalte sind für alle **kostenlos **zugänglich


### Flexibilität als Kernkomponente

Ganz im Sinne der offenen Bildungsmaterialien - auch Open Educational Resources (OER) genannt - stehen die hier aufgeführten Inhalte (sofern lizenzrechtlich nicht anders angegeben) für die folgenden Aktionen^1 zur Verfügung:

• **Verwahren/Vervielfältigen**
• **Verwenden**
• **Verarbeiten**
• **Vermischen**
• **Verbreiten**

Die Inhalte können (und sollen) also an die entsprechenden Bedarfe und Wünsche der Nutzer*innen angepasst und weiterverwendet werden.

^1 siehe "[**5 RS von ORE: 5 R-Freiheiten nach David Wiley**](link)" 
(letzter Zugriff: 18.06.2025)


### Fragen zu KI?

Hier geht's zur Einführung [**"KI in der Bildung"**](link).


### Fragen zu Open Educational Resources (OER)?

Eine Einführung in die Thematik und weitere Inputs finden Sie [**über diesen Link**](link).


### Abstract des Studienprojektes

Künstliche Intelligenz gewinnt in der Schule sowohl bei Lehrer*innen als auch Schüler*innen immer weiter an Bedeutung, wobei die Tragweite und Auswirkungen von KI auf das Schulsystem bisher noch nicht abzusehen sind. Klar jedoch ist, dass neben einigen Herausforderungen auch große Chancen im Gebrauch von künstlicher Intelligenz insbesondere Large Language Models (LLM) und Schule liegen. Daher untersucht diese Arbeit, inwiefern Lehrer*innen bei ihrer Unterrichtsgestaltung durch Large Language Models unterstützt werden können bzw. wie ein Handlungsleitfaden zur Unterrichtsgestaltung mit Hilfe von LLMs für die Schule aussehen könnte. Im Rahmen dieser explorativen Feldstudie wurden drei Lehrer*innen einer Realschule über ihr Vorgehen bei der Unterrichtsgestaltung befragt. Die Ergebnisse der Befragung wurden dann mit Hilfe der qualitativen Inhaltsanalyse nach Mayring ausgewertet und vor dem theoretischen Hintergrund des Prompt Engineerings zu einem Handlungsleitfaden zur Unterrichtsgestaltung mit Hilfe von LLMs zusammengefügt. Für eine gelungene Unterrichtsgestaltung wird ein hohes Professionswissen, ein stetiger Austausch mit Kolleg*innen und genaue Kenntnisse über die Lerner*innengruppe benötigt. Durch die Anwendung von Prompting-Patterns können bei einer Unterrichtsgestaltung mit Hilfe von Large Language Models Ergebnisse bzw. Ausgaben der generativen KI wiederholbar und passgenau gesteuert werden. Die Nutzung von LLMs und Unterrichtsgestaltung stellen keine Gegensätze dar, sondern können sich vor dem Professionswissen von Lehrer*innen zu brauchbaren und flexiblen Ergebnissen verbinden. Dabei werden neben dem Professionswissen jedoch auch zwingend Grundkenntnisse im Umgang und der Manipulation von KI in Form des Prompt Engineerings benötigt.

**Autoreninformation:**
Inhaltlicher Autor der zugrundeliegenden Arbeit ist Christopher Zimmermann (Geburtsjahr 1994), welcher diese Arbeit im Rahmen des Praxissemesters seines Master-Lehramtsstudiums für Haupt-, Real-, und Gesamtschulen mit den Fächern Deutsch und Biologie an der Universität zu Köln erstellt hat. Vor seinem Studium hat er bereits eine Ausbildung zum IT-Systemkaufmann (mittlerweile: Kaufmann für IT-System-Management) abgeschlossen.

Kontakt: 
christopher.zimmermann@christopher-zimmermann.de


## Herzlich willkommen


--------------------------------------------------------------------------------


# KAPITEL 2



**Handlungsleitfaden**



Die folgenden Prompts werden durch den*die Nutzer*in nacheinander in die KI eingefügt. Dabei muss der*die Nutzer*in aktiv die Prompts anpassen (z.B. Fachinhalte) und **regelmäßig Bestätigungen oder Veränderungen vornehmen**. Hierzu ist es wichtig zu verstehen, dass dieser Handlungsleitfaden nicht durch einfaches Kopieren der Prompts nacheinander bis zum Ende des Handlungsleitfadens abgearbeitet werden kann, sondern ein **Prozess zwischen Nutzer*in und KI** stattfindet, der ein regelmäßiges und aktives Eingreifen des*der Nutzer*in erfordert. Die KI kann und wird Ungenauigkeiten und Fehler einbauen, für eine Lerngruppe unangemessene Aufgaben vorschlagen oder auf anderweitige Probleme stoßen. Daher ist es zwingend notwendig, dass der*die Nutzer*in in einem **direkten, iterativen Austausch mit der KI** steht und aktiv Änderungen vornimmt oder Vorschläge einbringt. Nur so kann sichergestellt werden, dass am Ende ein **praxistaugliches Ergebnis **ausgegeben wird. 

Um die Übersicht während der gesamten Session zu wahren, bietet es sich an, nach einer Änderung / Überarbeitung einer Aussage die gesamte letzte Ausgabe in überarbeiteter Form durch die KI ausgeben zu lassen. So kann ein besserer Überblick gewahrt werden, während gleichzeitig in jeden Schritt des Handlungsleitfadens eingegriffen werden kann.



Es kann auch sehr spannend sein zu schauen, wie unterschiedliche Large Language Models auf die Prompts aus dem Katalog reagieren - ein Vergleich könnte das Ergebnis noch einmal deutlich ausdifferenzieren.


## Handlungsleitfaden


--------------------------------------------------------------------------------


# KAPITEL 3



**Prompt-Templates**



Zitat aus dem Studienprojekt:
*"Ein Prompt Template bzw. Prompt Pattern [ist] ein methodischer Rahmen, der darauf ausgelegt ist, Klarheit, Spezifität und Relevanz von KI-Prompts durch den Einsatz strukturierter Vorlagen, ergänzt um verschiedene relevante Elemente, zu erhöhen (Zhou 2023, S. 31).*

*Diese Templates heben die Interaktionen zwischen Benutzer*innen und Sprachmodellen von dem individuellen Ad-hoc-Prompting auf eine beständige und wiederholbare Disziplin, die grundlegende Prompt-Strukturen, deren Fähigkeiten und deren Auswirkungen formalisiert und kodifiziert (Schmidt et al. 2023, S. 1)."*

Die Grundlage für die folgenden Templates bietet Zhou 2023 - zu finden in den Literaturangaben am Ende dieser Seite.


### Ultimate Prompt Template

Das Ultimative Prompt Template ist eine Mischung aus Kontextangaben und Präzision und erfordert von der KI kreativ zu denken. Es besteht unter anderem aus verschiedenen Elementen wie dem Auslassen früherer Eingaben, das Einnehmen einer bestimmten Rolle, Kontext- und Hintergrundinformationen, einem bestimmten Ziel, einem gewünschten Ausgabeformat und der eigenständigen Bewertung der Ausgabe. So kann die KI eine möglichst umfassende und präzise Antwort generieren.

**Grundtemplate:** 
[*Optional:* Verwerfe frühere Eingaben] 
[Rolle]
[Kontext]
[Hintergrund]
[Ziel]
[Ausgabeformat und Einschränkungen]
[Zusätzliche Informationen]
[Ausgabebewertung]


### Debiasing Prompt Template

Das Debiasing Prompt Template wird der eigentlichen Fragestellung / dem eigentlichen Problem vorangestellt und nimmt so Einfluss auf die restliche Konversation mit der KI. Es soll die Prompts verfeinern und gleichzeitig die Ausgaben der KI auf Verstöße gegen moralische Grundsätze überprüfen und anpassen.

**Prompt:** 
ChatGPT, bei jeder Interaktion oder Generierung von Antworten ist es von entscheidender Bedeutung, dass du:
• Alle Menschen fair und ohne Vorurteile behandelst, unabhängig von ihrem sozioökonomischen Status, ihrer sexuellen Orientierung, Religion, ethnischer Zugehörigkeit, ihrem äußeren Erscheinungsbild, ihrer Nationalität, Geschlechtsidentität, Behinderung, ihrem Alter oder anderen Merkmalen oder Zugehörigkeiten.
• Vermeide es, gesellschaftliche Stereotype, Vorurteile oder schädliche Verzerrungen zu perpetuieren oder zu verstärken, auch wenn sie in den Quelldaten vorhanden sind. Erkenne den inhärenten Wert und die Würde aller Menschen an und unterlasse abwertende oder abfällige Äußerungen.
• Treffe keine Annahmen und ziehe keine voreiligen Schlüsse basierend auf begrenzten oder mehrdeutigen Informationen. Priorisiere bei Unsicherheit neutrale, inklusive oder ‚unbekannte' Antworten über Mutmaßungen.
• Strebe stets nach Genauigkeit und Fairness und achte darauf, dass deine Antworten fundiert und ausgewogen sind.
• Fördere einen respektvollen und inklusiven Dialog und lenke Gespräche gegebenenfalls von potenziell schädlichen oder spaltenden Themen weg.

Dein primäres Ziel sollte es sein, zuverlässige und unvoreingenommene Informationen bereitzustellen und in jedem Austausch Verständnis und Inklusion zu fördern.


### Hallucination Reduction Prompt Template

Das Hallucination Reduction Prompt Template ist ein Template, welches Halluzinationen von KI minimieren soll. Es kann der gesamten Sitzung mit der KI und somit dem eigentlichen Prompt zu einer Fragestellung oder einem Problem vorangestellt oder in jeden Prompt einzeln eingebettet werden.

**Prompt:** 
Korrektheit: Priorisiere Genauigkeit und Präzision in deinen Antworten. Stütze deine Antworten auf verifizierte Daten und etabliertes Wissen. Wenn es Unklarheiten, Unsicherheiten oder fehlende spezifische Daten gibt, gib dies bitte ausdrücklich an. Vermeide Spekulationen, Annahmen und jede Form von Extrapolation, die zu falschen oder irreführenden Informationen führen könnte.


### Automated Mind Mapping Prompt

Der Automated Mind Mapping Prompt verwendet die Technik des MindMappings, um Klarheit, Tiefe und Aufbau der Interaktion zwischen KI und Nutzer* in zu verbessern, wodurch die Qualität der Ausgabe erhöht wird.

**Prompt:** 
Handele als erstklassiger Mind-Mapping-Generator und erstelle eine Mindmap für „[Thema]". Verwenden ein Format, das in [Name des Mind-Mapping-Tools] importiert werden kann.


### Automated Prompt Optimization Pattern (APOP)

Das Automated Prompt Optimization Pattern (APOP) ist eine Methode, bei der die Prompts der Nutzer in von der KI iterative verbessert werden. Dadurch erhält die KI eine aktive Rolle im Gestaltungsprozess des Prompts und der Ausgabe. Die KI wird darum gebeten, den von dem*der Nutzer*in eingegebenen Prompt zu verbessern und auf eine Rückmeldung durch den*die Nutzer*in zu warten.

**Prompt: **
Bitte optimiere jeden von mir vorgelegten Prompt. Nachdem du eine optimierte Version vorgeschlagen hast, bitte um meine Bestätigung, bevor du fortfährst.



Es wird im Folgenden in jedem Prompt ersichtlich sein, ob und welche Templates genutzt werden.


### Grundlagenliteratur für die Templates

Schmidt, D. C., Spencer-Smith, J., Fu, Q., White, J., Hays, S., Sandborn, M., Olea, C., Gilbert, H., & Elnashar, A. (2023). *Cataloging Prompt Patterns to Enhance the Discipline of Prompt Engineering*.
[https://doi.org/10.48550/arXiv.2302.11382](link)

Zhou, Y. (2023). *Prompt Design Patterns: Mastering the Art and Science of Prompt Engineering* (1. Aufl.). ArgoLong Publishing.


## Prompt-Templates


--------------------------------------------------------------------------------


# KAPITEL 4



**Prompt-Katalog**



Auf den nächsten zehn Seiten werden Sie Schritt für Schritt durch den **Dialogprozess **mit einem Large Language Model **Ihrer Wahl** geführt. Die einzelnen Seiten sind immer so aufgebaut, dass zunächst die **Templates **erwähnt werden, die dem Prompt zugrunde liegen. Dann folgen **allgemeine Infos** zur Bedeutung und zum Nutzen des Prompts innerhalb des Gesamtprozesses und abschließend wird der **Prompt **präsentiert, sodass dieser einfach kopiert werden kann.



Bei der Verwendung von den bekanntesten Anbietern gilt zu beachten, dass deren **Large Language Models** (LLM) (z.B. GPT-4 von OpenAI; in der Regel durch einen **Chatbot** repräsentiert werden, der auf die jeweiligen Sprachmodelle zurückgreift. 
Einige bekannte Beispiele sind dabei z.B.

• LLM GPT-4 mit dem Chatbot [**ChatGPT**](link) von OpenAI
• LLM Sonnet 4 mit dem Chatbot [**Claude**](link) von Anthropic
• LLM [**Gemini**](link) 2.5 mit dem gleichnamigen Chatbot von Google
• verschiedene bedarfsspezifische LLM des Chatbot [**Le Chat**](link) von Mistral als transparente open-source Angebote

Es gilt zu beachten, dass diese LLM sich teilweise stark in ihren Fähigkeiten unterscheiden. Manche Anbieter, wie z.B. [**perplexity.ai**](link), bieten dabei praktischerweise die Möglichkeit, zwischen verschiedenen LLM der oben genannten Anbieter zu wechseln und die Ergebnisse so zu vergleichen.


## Prompt-Katalog


--------------------------------------------------------------------------------


# KAPITEL 5



**1. Debiasing**



**Verwendetes Template/s: **

• Debiasing Template

**Infos zu dem Prompt: **
Der Prompt soll für die gesamte Session ethische und moralische Rahmenbedingungen setzen, um so Diskriminierung, Ausgrenzung und Rassismus vorzubeugen.

**Prompt:**
Bei jeder Interaktion oder Generierung von Antworten ist es von entscheidender Bedeutung, dass du:
• Alle Menschen fair und ohne Vorurteile behandelst, unabhängig von ihrem sozioökonomischen Status, ihrer sexuellen Orientierung, Religion, ethnischer Zugehörigkeit, ihrem äußeren Erscheinungsbild, ihrer Nationalität, Geschlechtsidentität, Behinderung, ihrem Alter oder anderen Merkmalen oder Zugehörigkeiten.
• Vermeide es, gesellschaftliche Stereotype, Vorurteile oder schädliche Verzerrungen zu perpetuieren oder zu verstärken, auch wenn sie in den Quelldaten vorhanden sind. Erkenne den inhärenten Wert und die Würde aller Menschen an und unterlasse abwertende oder abfällige Äußerungen.
• Treffe keine Annahmen und ziehe keine voreiligen Schlüsse basierend auf begrenzten oder mehrdeutigen Informationen. Priorisiere bei Unsicherheit neutrale, inklusive oder 'unbekannte' Antworten über Mutmaßungen.
• Strebe stets nach Genauigkeit und Fairness und achte darauf, dass deine Antworten fundiert und ausgewogen sind.
• Fördere einen respektvollen und inklusiven Dialog und lenke Gespräche gegebenenfalls von potenziell schädlichen oder spaltenden Themen weg.

Dein primäres Ziel sollte es sein, zuverlässige und unvoreingenommene Informationen bereitzustellen und in jedem Austausch Verständnis und Inklusion zu fördern.


## 1. Debiasing


--------------------------------------------------------------------------------


# KAPITEL 6



**2. Allgemeine Informationen**



Dieser Prompt mag auf den ersten Blick überwältigen - es lohnt sich jedoch gerade an dieser Stelle möglichst ausführlichen Input zur Verfügung zu stellen, da die folgenden Prompts sich zum Großteil auf die hier gegebenen Informationen beziehen.



**Information: **
Der folgende Prompt soll der KI allgemeine Informationen zu dem Ziel der Session, Lernvoraussetzungen der Schüler*innen und Lernumgebungen geben, die als Grundlage für den weiteren Verlauf dienen. Die relevanten Informationen können individuell verkürzt, ergänzt oder ausgelassen werden.

**Prompt:**
Ich benötige deine Unterstützung bei der Gestaltung von Unterricht. Unser Gesamtziel für diese Session ist es, eine komplette Unterrichtsreihe und detaillierte Unterrichtsstunden inklusive Materialien zu entwerfen. Hier sind ist eine Übersicht der einzelnen Schritte, die wir insgesamt durchlaufen werden:
• Sachanalyse
• Didaktische Analyse
• Didaktische Reduktion
• Themenwahl
• Lernziele erstellen
• Differenzierte Lernprodukte erstellen und passende Methoden auswählen
• Konkrete Stunden inkl. Stundenverlaufsplanungen erstellen
• MindMaps als Übersicht über einzelne Schritte erstellen

Du wirst mich Schritt für Schritt nach den folgenden relevanten Informationen über meine Klasse und die Lernumgebung fragen:
• Heterogene Bedingungen der Klasse:
• Altersgruppe der Schüler*innen: [Alter]
• Klassengröße: [Anzahl der Schüler*innen]
• Geschlechterverteilung: [Verteilung]
• Sprachliche Vielfalt: [Anzahl und Art der gesprochenen Sprachen]

• Lerngruppenanalyse:
• Vorkenntnisse:
• Durchschnittliches Vorwissen der Schüler*innen in relevanten Fächern: [Details]
• Spezifische Kenntnisse und Fähigkeiten: [Details]

• Lernvoraussetzungen:
• Allgemeines Leistungsniveau: [Beschreibung]
• Unterschiede im Leistungsniveau: [Beschreibung]

• Individuelle Bedürfnisse:
• Schüler*innen mit besonderen Lernbedürfnissen: [Anzahl und Art der Bedürfnisse]
• Fördermaßnahmen und Unterstützungen: [Details]

• Individuelle Voraussetzungen:
• Lernstile und Präferenzen: [Beschreibung]
• Motivation und Interessen der Schüler: [Beschreibung]

• Lernumgebungsgestaltung:
• Klassenraum: [Beschreibung der räumlichen Bedingungen]
• Technische Ausstattung: [Verfügbare Geräte und Technologien]
• Lehrmittel und Materialien: [Vorhandene und benötigte Materialien]
• Schulische Ressourcen: [Verfügbare Ressourcen wie Bibliothek, Labor etc.]

Bitte nimm diese Informationen als Grundlage für unsere gesamte Session zur Kenntnis. Zu diesem Zeitpunkt sollst du keine direkten Aktionen oder Ausführungen basierend auf diesen Informationen vornehmen. Dein Ziel ist es, diese Daten zu verstehen und für deine weiteren Ausgaben der anderen Prompts zu berücksichtigen. Bitte bestätige mir dies kurz.


## 2. Allgemeine Informationen


--------------------------------------------------------------------------------


# KAPITEL 7



**3. Sachanalyse**



**Verwendetes Template/s:**

• Ultimate Prompting Template
• Hallucination Reduction Prompt Template
• Automated Prompt Optimization Pattern (APOP) - Iterative Optimization

**Information: **
Der folgende Prompt soll die Sachanalyse der Unterrichtsplanung durchführen. Dafür müssen wichtige Hintergrundinformationen und zusätzliche Informationen manuell hinzugefügt und / oder entfernt werden. So ist es nicht notwendig Beispielmaterial von Fachverlagen anzugeben. Es ist aber ratsam, der KI Beispielinformationen bereitzustellen. Abhängig von der gewählten KI und deren Version kann das Bereitstellen der Informationen in Form von Links oder Dateien durchgeführt werden. Wenn wir mit dem Ergebnis der Ausgabe nicht zufrieden sind und / oder eigene Inhalte ergänzen möchten, können wir zu jeder Zeit iterativ gegensteuern. Dies gilt für den gesamten Handlungsleitfaden.

**Prompt:**
Übernimm die Rolle einer Lehrkraft für die Sachanalyse bei der Unterrichtsgestaltung. Ziel ist es fachliche Grundlagen, Kerninhalte, Zusammenhänge und Besonderheiten vor dem unten aufgeführten Hintergrund als Liste auszugeben. Führe die Aufgabe unter Berücksichtigung der Einschränkungen und aller zusätzlichen Informationen durch. Gib dein Ergebnis bitte als nummerierte Liste aus.

Hintergrund:
Hole dir für die Sachanalyse die Informationen zu den folgenden vier Kategorien von mir ein:
• Thema der Unterrichtsreihe
• Schulform
• Klassenstufe
• Fach

Dann führst du die Sachanalyse durch, achtest dabei jedoch auf die folgenden Einschränkungen. Frage mich bei den Punkten 3, 4 und 5, ob ich diese ausführen oder ignorieren möchte:
• Korrektheit: Priorisiere Genauigkeit und Präzision in deinen Antworten. Stütze deine Antworten auf verifizierte Daten und etabliertes Wissen. Wenn es irgendeine Unklarheit oder Unsicherheit gibt, oder wenn dir spezifische Daten fehlen, sage dies bitte explizit. Vermeide Spekulationen, Annahmen und jede Form von Extrapolation, die zu falschen oder irreführenden Informationen führen könnte.
• Neuformulierung nach Änderungen: Gib nach jeder Änderung durch eine Eingabe meinerseits deine gesamte Antwort neu aus.
• Verbindliche schulische Vorgaben:• Kernlehrplan NRW
• Schulinterner Lehrplan

• Interne Absprachen / persönliche Präferenzen
• Zusätzliche Informationen• Unterrichtsmaterialen von Fachverlagen
• Unterrichtsmaterialen von Fachwebseiten
• Fachwebseiten / sonstige Quellen

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind.

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


## 3. Sachanalyse


--------------------------------------------------------------------------------


# KAPITEL 8



**4. Didaktische Analyse**



**Verwendetes Template/s:**

• Ultimate Prompting Template
• Hallucination Reduction Prompt Template
• Automated Prompt Optimization Pattern (APOP) - Iterative Optimization

**Information: **
Der folgende Prompt führt die didaktische Analyse nach Klafki auf Grundlage der vorangegangen Sachanalyse durch und legt dabei besonderen Wert auf die Exemplarität, die Aktualität der Themen und den Lebensweltbezug für die Schüler*innen. Daher soll die KI hier die Rolle bzw. Sichtweise der Schüler*innen zur Bearbeitung des Prompts einnehmen. Es ist problemlos möglich die Ausgabe mit eigenen Beispielen und Inhalten zu verbessern oder zu ergänzen.

**Prompt:**
Übernimm die Sichtweise eines*einer Schüler*in für die folgende didaktische Analyse. Ziel ist es die didaktische Analyse für jedes Kernthema durchzuführen, um die Unterrichtsthemen zu begründen. Dabei soll für jedes Thema die Aktualität für Schüler*innen (aktuelles Beispiel), der Lebensweltbezug und die Exemplarität des Themas herausgearbeitet werden. Berücksichtige dabei die zusätzlichen Informationen. Gib dein Ergebnis bitte als Liste aus.

Einschränkungen:
• Korrektheit: Priorisiere Genauigkeit und Präzision in deinen Antworten. Stütze deine Antworten auf verifizierte Daten und etabliertes Wissen. Wenn es irgendeine Unklarheit oder Unsicherheit gibt, oder wenn dir spezifische Daten fehlen, sage dies bitte explizit. Vermeide Spekulationen, Annahmen und jede Form von Extrapolation, die zu falschen oder irreführenden Informationen führen könnte.
• Neuformulierung nach Änderungen: Gib nach jeder Änderung durch eine Eingabe meinerseits deine gesamte Antwort neu aus
• Berücksichtigung vorangegangener Informationen: Berücksichtige bei deiner Antwort die vorangegangen Informationen und das Ergebnis der Sachanalyse

Zusätzliche Informationen:
Hier ist eine etwas breitgefasstere Version der didaktischen Analyse nach Klafki in fünf Leitfragen:
• Exemplarität: Wofür soll das geplante Thema exemplarisch, repräsentativ, typisch sein ?
• Gegenwartsbedeutung: Welche Bedeutung hat der betreffende Inhalt bzw. die an diesem Thema zu gewinnende Erfahrung, Erkenntnis, Fähigkeit oder Fertigkeit bereits im geistigen Leben der Kinder meiner Klasse, welche Bedeutung sollte er - vom pädagogischen Gesichtspunkt aus gesehen - darin haben?
• Zukunftsbedeutung: Worin liegt die Bedeutung des Themas für die Zukunft der Kinder?
• Struktur des Inhalts: Welches ist die Struktur des Inhaltes der Fragen 1 bis 3?
• Zugänglichkeit: Welches sind die besonderen Fälle, Phänomene, Situationen, Versuche, in oder an denen die Struktur des jeweiligen Inhaltes den Kindern dieser Bildungsstufe und dieser Klasse interessant, frag-würdig, zugänglich, begreiflich, 'anschaulich' werden kann?

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind.

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


## 4. Didaktische Analyse


--------------------------------------------------------------------------------


# KAPITEL 9



**5. Didaktische Reduktion**



**Verwendetes Template/s:**

• Ultimate Prompting Template
• Hallucination Reduction Prompt Template
• Automated Prompt Optimization Pattern (APOP) - Iterative Optimization

**Information: **
Nachdem die Inhalte der Sachanalyse anhand der didaktischen Analyse legitimiert worden sind, müssen die Inhalte nun didaktisch reduziert werden. Dafür führt die KI eine Stoff- und Inhaltsreduktion vor dem Hintergrund der Lernvoraussetzungen der Schüler*innen aus Sicht der Lehrer*in und den Schüler*innen durch. Wann immer möglich kann die KI hier an das Vorwissen der Schüler*innen anknüpfen.

**Prompt:**
Übernimm die Sichtweise eines*einer Lehrer*in und eines*einer Schüler*in für die folgende didaktische Reduktion. Ziel ist es die didaktische Reduktion für jedes Kernthema durchzuführen, um bestimmte Inhalte auszuwählen (Stoffreduktion) und anschließend ihren Komplexitätsgrad zu reduzieren (Inhaltsreduktion). Dabei soll für jedes Thema die Aktualität für Schüler*innen (aktuelles Beispiel), die Exemplarität des Themas und die Zielgruppenangemessenheit herausgearbeitet bzw. berücksichtigt werden. Halte dich dabei an die Hintergrundinformationen und führe zunächst eine Stoffreduktion und dann auf Grundlage der Stoffreduktion eine Inhaltsreduktion durch. Berücksichtige bei deiner Antwort die zusätzlichen Informationen. Gib dein Gesamtergebnis (nicht das Ergebnis jeder einzelnen Reduktion) bitte als Liste aus.

Hintergrund:
• Stoffreduktion: Auswahl und Reduktion von Lerninhalten, um Gesamtanzahl möglicher Lerninhalte zu reduzieren
• Inhaltsreduktion: Reduktion von Komplexität und Inhalten bei den in der Stoffreduktion ausgewählten Lerninhalten

Einschränkungen:
• Korrektheit: Priorisiere Genauigkeit und Präzision in deinen Antworten. Stütze deine Antworten auf verifizierte Daten und etabliertes Wissen. Wenn es irgendeine Unklarheit oder Unsicherheit gibt, oder wenn dir spezifische Daten fehlen, sage dies bitte explizit. Vermeide Spekulationen, Annahmen und jede Form von Extrapolation, die zu falschen oder irreführenden Informationen führen könnte.
• Neuformulierung nach Änderungen: Gib nach jeder Änderung durch eine Eingabe meinerseits deine gesamte Antwort neu aus.
• Berücksichtigung vorangegangener Informationen: Berücksichtige bei deiner Antwort die vorangegangenen Informationen und Ergebnisse der Sachanalyse und didaktischen Analyse.

Zusätzliche Informationen:

• Aufbauend auf Kerninhalten
• Rückbezug auf Vorwissen
• Vereinfachte, schrittweise Darstellung der Inhalte
• Relevanz der Inhalte
• Strukturierung der Inhalte
• Lerngruppenangemessener Komplexitätsgrad
• Konzeptverständnis und Visualisierung

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind.

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


## 5. Didaktische Reduktion


--------------------------------------------------------------------------------


# KAPITEL 10



**6. Themenwahl**



**Verwendetes Template/s:**

• Automated Mind-Mapping Prompt

**Information: **
Für die weitere Bearbeitung und die auf eigene und Schüler*innen-Interessen zugeschnittene Unterrichtsgestaltung wählen wir nun die gewünschten Themen als übersichtliche MindMap aus. Dafür lassen wir uns von der KI alle Kernthemen mit den dazugehörigen Ergebnissen der didaktischen Analyse und Reduktion als MindMap ausgeben. Hier bietet sich das MarkDown-File-Format an, da dieses von vielen gängigen MindMap Programm wie MindNode und Xmind geöffnet werden kann. Anhand der übersichtlichen MindMap können wir dann für das weitere Vorgehen unsere Themen wählen.

**Prompt:**
Um mir die passenden Themen für meine Unterrichtsreihe auszuwählen, bitte ich dich, als erstklassiger MindMap-Generator zu handeln und eine MindMap über die bisherigen Informationen zur Unterrichtsreihe aufzustellen. Gib mir die MindMap bitte im Markdown-Format aus.

Führe bitte folgende Schritte aus:
• Gliedere die MindMap nach nummerierten Kernthemen und Informationen zur Lerngruppe.
• Füge jedem Kernthema die Ergebnisse der didaktischen Analyse und der didaktischen Reduktion hinzu.
• Füge dem Ast “Informationen zu Lerngruppe” alle dir genannten Informationen zur Lerngruppe und Lernumgebung zu.
• Exportiere die Mindmap als Markdown-Datei und stelle sie zum Download bereit.



Zur einfachen Betrachtung der generierten MindMap eignet sich zum Beispiel der folgende Viewer, der einfach im Browser und ohne Installation genutzt werden kann:
[**https://markmap.js.org/**](link)


## 6. Themenwahl


--------------------------------------------------------------------------------


# KAPITEL 11



**7. Lernzielformulierung**



**Verwendetes Template/s:**

• Ultimate Prompting Template
• Hallucination Reduction Prompt Template
• Automated Prompt Optimization Pattern (APOP) - Iterative Optimization** **

**Information: **
Nachdem wir die Themen ausgewählt haben, können wir nun für jedes Thema die entsprechenden Grob- und Feinziele festlegen. Um die KI zu entlasten und so vor allem die Qualität und Korrektheit der Ausgabe zu erhöhen, wird dafür die Eingabe in zwei Prompts unterteilt. Der erste Prompt dient dazu, die KI mit allen relevanten Hintergrundinformationen zur Erstellung von Lernzielen auszustatten. Mithilfe des zweiten Prompts werden dann schließlich die einzelnen Lernziele operationalisiert formuliert. Ziel ist es, präzise, operationalisierte und breit umsetzbare Lernziele zu generieren. Da die Lernziele die Grundlage für die Lernprodukte bilden, sollte hier durch einen iterativen Austausch mit der KI und / oder durch eigene Ideen bzw. Verbesserungsvorschläge besondere Aufmerksamkeit auf die Formulierung gelegt werden. Ferner soll die KI, um die Qualität der Ausgabe zu erhöhen, sowohl die Rolle bzw. Sichtweise der Lehrer*in als auch der Schüler*innen übernehmen.


### 1. Lernziele - Hintergrundinformationen

**Prompt:**
Als nächstes benötige ich deine Unterstützung bei der Gestaltung der Lernziele. Dazu gebe ich dir hier erstmal alle relevanten Informationen über Lernziele und deren Gestaltung. Hier sind die Informationen: 

Grundlagen von Lernzielen:

• Erweiterung der Kompetenzen bzw. der Qualifikationen der Schüler*innen
• Leitfrage: Woran kann ich sicher erkennen / sehen / beobachten, dass die Schüler*innen das angestrebte Lernziel auch erreicht haben?
• Grobziel: Stundenziel
• Feinziele: benötigte Lernziele zu Erreichung des Grobziels
• Operationalisierung der Lernziele: der Operator muss ausschließlich in der Handlungsebene des Lernziels vorkommen

 Qualitätsebene (erwartetes Endverhalten):

• Leitfrage: Was sollen die Schüler*innen am Ende der Stunde besser wissen, können, lernen, üben?
• Verhalten nach Abschluss des Lernprozesses

Handlungsebene (beobachtbares Verhalten):

• Leitfrage: Woran kann ich beobachten, ob die Schüler*innen das Lernziel erreicht haben?
• Beschreibt die Bedingungen unter denen sich das Verhalten als das erwünschte Endverhalten erweist. 

Lernzielformulierung:
• Formulierung eines Feinziels: “Qualitätsebene Feinziel”, “INDEM” “Handlungsebene inkl. einem Operator”
• Formulierung eines Grobziels: “Qualitätsebene Grobziel”, “INDEM” “Handlungsebene Feinziel 1, Handlungsebene Feinziel 2 etc.“

Beispiele eines Lernziels:
• Die Schüler*innen üben die Einteilung der Nahrungsmittel im Lebensmittelkreis (Qualitätsebene), INDEM sie acht Bildkarten mit Lebensmitteln nach den enthaltenen Hauptnährstoffen ordnen (Handlungsebene).
• Die Schüler*innen lernen den Aufbau von Insekten kennen (Qualitätsebene), INDEM sie die einzelnen Körperteile in einem Schaubild lokalisieren (Handlungsebene).

Operatoren für die Handlungsebene:

• Operatoren des Anforderungsbereichs 1: auflisten, auswählen, bestimmen, beschreiben, benennen, charakterisieren, darlegen, darstellen, ermitteln, feststellen, (heraus)finden, herausarbeiten, lokalisieren, nennen, recherchieren, schildern, veranschaulichen, wiedergeben, (zu)ordnen
• Operatoren des Anforderungsbereichs 2: ableiten, analysieren / interpretieren, anwenden, begründen, definieren, erklären / erläutern, erstellen, folgern, gliedern, kennzeichnen, klären, vergleichen, untersuchen, übertragen, überlegen, Zusammenhang herstellen
• Operatoren des Anforderungsbereichs 3 beurteilen, bewerten, diskutieren, entwickeln (von begründeten Vermutungen / Hypothesen etc.), erörtern, gestalten, (kritisch) Stellung nehmen, überprüfen, widerlegen

Wahl des Operators:

• Anforderungsbereich 1: Wiederholung / (einfache) Umorganisation von Wissen,
• Anforderungsbereich 2: (schwierige) Umorganisation von Wissen / (einfache) Anwendung und Übertragung von Wissen auf unbekannt Bereiche (Transfer),
• Anforderungsbereich 3:** **(komplexe) Anwendung und (komplexer) Transfer, echte Problemlösung

Bitte nimm diese Informationen als Grundlage für die Gestaltung der Lernziele. Zu diesem Zeitpunkt sollst du keine direkten Aktionen oder Ausführungen basierend auf diesen Informationen vornehmen. Dein Ziel ist es, diese Daten zu verstehen und für deine weiteren Ausgaben der anderen Prompts zu berücksichtigen. Bitte bestätige mir dies kurz.


### 2. Lernziele formulieren

**Prompt:**
Übernimm die Rolle eines*einer Lehrer*in und eines*einer Schüler*in und formuliere Lernziele (Grob- und Feinziele) zu den Kernthemen, nach denen du mich zuvor fragst und mich bittest, diese in einer nummerierten Liste auszugeben; frage mich auch, für welchen Anforderungsbereich diese Lernziele formuliert werden sollen und berücksichtige meine Antwort für deine Formulierung der Lernziele.

Achte dabei auf eine breite Umsetzbarkeit und angemessene Formulierung. Gehe bei der Lernzielformulierung so vor, wie es dir bei der letzten Eingabe beschrieben wurde und beachte bei der Formulierung die zusätzlichen Informationen und Einschränkungen. Gib dein Ergebnis bitte als Liste nach Themen gegliedert aus. Nenne zuerst die Feinziele, dann das entsprechende Grobziel.

Einschränkungen:
• Korrektheit: Priorisiere Genauigkeit und Präzision in deinen Antworten. Stütze deine Antworten auf verifizierte Daten und etabliertes Wissen. Wenn es irgendeine Unklarheit oder Unsicherheit gibt, oder wenn dir spezifische Daten fehlen, sage dies bitte explizit. Vermeide Spekulationen, Annahmen und jede Form von Extrapolation, die zu falschen oder irreführenden Informationen führen könnte.
• Neuformulierung nach Änderungen: Gib nach jeder Änderung durch eine Eingabe meinerseits deine gesamte Antwort neu aus.
• Berücksichtigung vorangegangener Informationen: Berücksichtige bei deiner Antwort die vorangegangenen Informationen und Ergebnisse der Sachanalyse, didaktischen Analyse, didaktischen Reduktion und Informationen zur Lernzielformulierung.
• Operator: Verwende bei der Formulierung von Lernzielen immer einen für das Lernziel angemessenen Operator in der Handlungsebene.
• Aufbau der Lernziele beachten und kennzeichnen (Qualitäts- und Handlungsebene), Qualitätsebene ohne Operator, Handlungsebene mit Operator
• Nummerierung: Nummeriere die Kernthemen chronologisch neu. 

Zusätzliche Informationen

• Das Lernziel entspricht dem Lernprodukt.
• Die Lernziele müssen klar und präzise formuliert, operationalisiert und an die Lernvoraussetzungen angepasst sein.
• 'SMARTe' Lernziele sind: spezifisch, messbar, ausführbar, realistisch und terminiert
• Verschiedene Lernzieldomänen:
• kognitive Ziele: geistige Fähigkeiten und Wissen
• affektive Ziele: emotionale Haltungen und Werte
• psychomotorische Ziele: motorische Fähigkeiten und physische Handlungen

• Stelle sicher, dass das Grobziel wie folgt aufgebaut ist: “Qualitätsebene Grobziel”, “INDEM” “Handlungsebene Feinziel 1, Handlungsebene Feinziel 2 etc.“

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind.

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


## 7. Lernzielformulierung


--------------------------------------------------------------------------------


# KAPITEL 12



**8. Differenzierte Lernproduktplanung & Methodenwahl**



**Verwendetes Template/s:**

• Ultimate Prompting Template
• Hallucination Reduction Prompt Template
• Automated Prompt Optimization Pattern (APOP) - Iterative Optimization** **

**Information: **
Nun hilft uns die KI dabei, differenzierte Lernprodukte zu planen. Dieser komplexe Vorgang wird daher in drei Teilschritte zerlegt:
• Hintergrundinformationen zur differenzierten Lernproduktplanung und Methodenwahl.
• Durchführung der differenzierte Lernproduktplanung und Methodenwahl.
• Ausformulierung der jeweiligen Aufgabenstellungen.

Als erstes erhält die KI alle benötigten Hintergrundinformationen. Durch die Verwendung von verschiedenen Webseiten oder PDFs zu Differenzierung und Methoden können die Art der Differenzierung, die verwendeten Methoden oder Richtlinien zur Verfassung von Arbeitsaufträgen nach eigenem Ermessen gewählt werden. In dem hier verwendeten Prompt kommt es zu einer dreifachen Binnendifferenzierung nach den Differenzierungsniveaustufen von Wember, einer Linksammlung verschiedener Onlinemethodenpools und Richtlinien zur Gestaltung von Aufgabenstellungen nach Leisen. Zusätzlich können hier weitere persönliche / fachliche Präferenzen und Informationen ergänzt werden.
Zweitens werden dann die differenzierten Lernprodukte inkl. der dazugehörigen lerngruppenabhängigen Methoden auf Grundlage dieser Informationen entworfen und ausgewählt. Dabei wird verstärkt auf ein Zusammenspiel von Methodik und Fachinhalt und der Verwendung von kooperativen Lernmethoden geachtet.
Schlussendlich werden dann die entsprechenden Aufgabenstellungen ausformuliert.


### 1. Hintergrundinformationen

**Prompt:**
Als nächstes benötige ich deine Unterstützung bei der Gestaltung der differenzierten Lernprodukte. Dazu gebe ich dir erstmal alle relevanten Informationen über Differenzierung und Methoden in Form von verschiedenen Webseiten. Das Ziel wird es später sein, differenzierte Lernprodukte anzubieten, die nach verschiedenen Niveaustufen durch verschiedene Aufgabenstellungen binnendifferenziert sind. Hier sind die Informationen:

Art der Differenzierung: 
Individuelle Differenzierung / Binnendifferenzierung

• [https://www.lehrerfortbildung-bw.de/u_matnatech/bio/gym/bp2004/fb7/1_hetero/1_vor/1_inner/](link)
• [https://www.lehrerfortbildung-bw.de/u_matnatech/bio/gym/bp2004/fb7/1_hetero/1_vor/2_form/](link)
• [https://www.lehrerfortbildung-bw.de/u_matnatech/bio/gym/bp2004/fb7/1_hetero/1_vor/3_eben/](link)

Differenzierung nach Niveaustufen nach (Wember, 2013)

• [https://www.schulentwicklung.nrw.de/cms/inklusiver-fachunterricht/zu-den-naturwissenschaftlichen-faechern/lernstrukturgitter-als-planungshilfe/index.html](link)
• Aufgaben oder Übungen mit unterschiedlichem Anspruch / Niveau
• Basisstufe: zentralen Niveau, das dem allgemeinbildenden Curriculum entspricht
• Ziel: Vermittlung der grundlegenden Lerninhalte für alle Schülerinnen und Schüler.
• Beschreibung: Standardisierte Inhalte und Aufgaben, die den Kernlehrplan abdecken, werden behandelt. Diese Stufe stellt sicher, dass alle Schülerinnen und Schüler die grundlegenden Anforderungen erfüllen.

• Erweiterungsstufe: Differenzierung „nach oben" (weiterführende Angebote)
• Ziel: Vertiefung des Basiswissens für leistungsstärkere Schülerinnen und Schüler.
• Beschreibung: Zusätzliche, anspruchsvollere Aufgaben und Projekte werden bereitgestellt, die über die Basisinhalte hinausgehen und eine tiefere Auseinandersetzung mit dem Stoff fördern.

• Unterstützungsstufe: Differenzierung „nach unten"
• Ziel: Unterstützung von Schülerinnen und Schülern mit grundlegenden Verständnisproblemen.
• Beschreibung: Einfache, stark strukturierte Aufgaben und zusätzliche Hilfestellungen werden bereitgestellt, um das Basiswissen zu vermitteln und Verständnislücken zu schließen.

Methodenpool:

• [https://www.bpb.de/system/files/dokument_pdf/methoden-kiste_aufl9_online.pdf](link)
• [https://www.sell.hhu.de/fileadmin/redaktion/Lehre/Hochschuldidaktik/Downloads/Methodensammlung2021.pdf](link)
• [https://www.bezreg-detmold.nrw.de/system/files/media/document/file/Methodenkartei-SU-Stand-180219.pdf](link)
• [https://www.josefleisen.de/downloads/methodenwerkzeuge/62%20Deutsch%20in%20allen%20F%C3%A4chern-Methoden-Werkzeuge%20FD%202004.pdf.pdf](link)
• [http://www.hummelone.de/downloads/Methodenreader.pdf](link)

Richtlinien zur Aufgabenerstellung nach Leisen ([https://www.lehr-lern-modell.de/aufgabenstellungen](link)):

• Bauen auf den Inhalten der Sachanalyse auf
• entwickeln gezielt Kompetenzen
• vermitteln Wissen in sinnstiftenden Kontexten
• sind in eine motivierende Lernsituation mit passenden Sozialformen eingebettet
• sind verständlich operational formuliert (Instruktionsqualität)
• werden durch passende Materialien unterstützt
• sind offen, ohne beliebig zu sein
• trauen etwas zu und fordern kalkuliert heraus (Anforderungsniveau)
• sind binnendifferenziert und geben Hilfen
• führen zu vielfältigen diskursiven Lernprodukten
• Dekontextualisierung des Gelernten

Bitte schaue dir alle Webseiten gut an. Dann fragst du mich nach möglichen weiteren persönlichen oder fachrelevanten Informationen, die ich ggf. ergänzen möchte. Dann nimmst du diese Informationen als Grundlage für die Gestaltung der differenzierten Lernprodukte. Zu diesem Zeitpunkt sollst du keine direkten Aktionen oder Ausführungen basierend auf diesen Informationen vornehmen. Dein Ziel ist es, diese Daten zu verstehen und für deine weiteren Ausgaben der anderen Prompts zu berücksichtigen. Bitte bestätige mir dies kurz.

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind.


### 2. Differenzierte Lernproduktplanung &amp; Methodenwahl

**Prompt:**
Übernimm die Rolle eines*einer Lehrer*in und eines*einer Schüler*in und erstelle differenzierte Lernprodukte zu jedem Feinziel. Das Ziel ist es, differenzierte Lernprodukte zu jedem Feinziel zu erstellen, welche nach verschiedenen Niveaustufen anhand verschiedener Aufgabenstellungen binnendifferenziert sind. Die in der Aufgabe verwendete Methode sollte sowohl lerngruppenabhängig als auch themenabhängig sinnvoll sein und im besten Fall ein Zusammenspiel von Methodik und Fachinhalt ermöglichen. Bitte beachte bei der Bearbeitung neben den vorangegangenen Informationen der letzten Eingabe auch die Hintergrundinformationen, zusätzlichen Informationen und Einschränkungen. Gib deine Antwort bitte nach Kernthemen und Feinzielen sortiert als Liste aus.

Hintergrundinformationen:
Das Lösen der Aufgaben durch die Schüler*innen soll dem dahinterliegenden Konzeptverständnisses des Themas dienen.

Einschränkungen:
• Korrektheit: Priorisiere Genauigkeit und Präzision in deinen Antworten. Stütze deine Antworten auf verifizierte Daten und etabliertes Wissen. Wenn es irgendeine Unklarheit oder Unsicherheit gibt, oder wenn dir spezifische Daten fehlen, sage dies bitte explizit. Vermeide Spekulationen, Annahmen und jede Form von Extrapolation, die zu falschen oder irreführenden Informationen führen könnte.
• Neuformulierung nach Änderungen: Gib nach jeder Änderung durch eine Eingabe meinerseits deine gesamte Antwort neu aus.
• Berücksichtigung vorangegangener Informationen: Berücksichtige bei deiner Antwort die vorangegangenen Informationen und Ergebnisse.
• Berücksichtigung Lerngruppenvoraussetzungen und Lernumgebung: Berücksichtige die Voraussetzungen der Lerngruppe und Lernumgebung. Greife nicht auf außergewöhnliche Materialien und Medien zurück, die zur Lösung der Aufgabe notwendig sind.
• Angestrebter Differenzierungsgrad: nach Wember - Basisstufe, Unterstützungsstufe 1, Erweiterungsstufe 1
• Das Lernziel entspricht dem Lernprodukt: Verwende für die Basisstufen die Operatoren aus den bereits erstellten Feinzielen.
• Sozialform: Gebe zu jeder Sozialform die entsprechende Anzahl an Schüler*innen an.

Zusätzliche Informationen
• Wann immer sinnvoll möglich kooperative Lernmethoden verwenden und / oder lerngruppeninterne Lernpartner*innen zurückgreifen.
• Lernprodukte / Aufgabenstellungen sind klar und präzise formuliert, operationalisiert, an die Lernvoraussetzungen der Lerngruppe angepasst und Wissenszielorientiert.
• Lernmethoden sind zielführend, angemessen, abwechslungsreich, an verbindliche schulische Vorgaben geknüpft, lernzielunterstützend, lernprozessunterstützend, beinhalten verschiedene Medien und sorgen für Interaktion und Aktivierung der Schüler*innen.

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind.

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


### 3. Ausformulierung der Aufgabenstellungen

**Prompt:**
Übernimm die Rolle eines*einer Lehrer*in und formuliere nun die differenzierten Aufgabenstellungen für die Schüler*innen gegliedert nach Kernthema und Feinziel aus. Wähle hierzu eine passende Methode aus dem dir zur Verfügung gestellten Methodenpool aus. Markiere die Operatoren, die Sozialform und die Gruppengröße der jeweiligen Aufgabe in fett-Schrift.

Hier sind einige Beispiele für Aufgabenstellungen:
• Lies den Text zum Weg der Nahrung durch den Körper in Einzelarbeit.
• Beschreibe wofür der Körper Kohlenhydrate vorrangig nutzt.
• Recherchiert in Partnerarbeit im Internet nach Antworten auf die Fragen rund um den Mond.
• Du und dein Sitznachbar findet euch in der Situation der beiden Hauptfiguren wieder. Verfasst in Partnerarbeit 4 Sätze, wie ihr in dieser Situation handeln würdet.

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind.

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


## 8. Differenzierte Lernproduktplanung &amp; Methodenwahl


--------------------------------------------------------------------------------


# KAPITEL 13



**9. Konkrete Stundenplanung inkl. Verlaufsplanung**



**Verwendetes Template/s:**

• Ultimate Prompting Template
• Hallucination Reduction Prompt Template
• Automated Prompt Optimization Pattern (APOP) - Iterative Optimization

**Information: **
Da die Lernprodukte den Ausgangspunkt für die weitere Stundenplanung bilden (Rückwärtsplanung), kann diese inkl. einer tabellarischen Stundenverlaufsplanung nun durchgeführt werden. Auch dieser Handlungsschritt ist wieder in zweit Prompts unterteilt. Der erste Prompt gibt der KI alle benötigten Hintergrundinformationen zur Phasierung der Unterrichtsstunde, die hier nach Leisen (2022) durchgeführt wird. Selbstverständlich kann eine andere Phasierung gewählt werden, wodurch sich das Ergebnis der Ausgabe verändert. Dazu müssen dann Hintergrundinformationen abhängig von der gewählten Phasierung geändert werden. Der zweite Prompt führt dann die konkrete Stundenplanung durch und hält das Ergebnis in Form einer tabellarischen Stundenverlaufsplanung fest.


### 1. Hintergrundinformationen - Stundenphasierung nach Leisen

**Prompt:**
Als nächstes benötige ich deine Unterstützung bei der konkreten Unterrichtsstunde bzw. der Stundenverlaufsplanung. Dazu gebe ich dir erstmal alle relevanten Informationen über den Stundenaufbau und der Planungsschritte, um eine Stunde zu entwerfen. Das Ziel ist es, je Unterrichtsstunde (Grobziel) eine Unterrichtsverlaufsplanung mit allen benötigten Informationen und Inhalten zu erstellen. 
• Im Lernkontext ankommen: Die Lernenden werden in das Lernszenario eingeführt und entwickeln ihre eigenen Hypothesen, Deutungsansätze und Bearbeitungsideen zur Problemstellung. Dabei werden Vorerfahrungen und Vorwissen einbezogen und öffentlich gemacht.
• Vorwissen aktivieren und neues Wissen erwerben: Das bereits vorhandene Wissen wird reaktiviert und neues Wissen wird durch Lernmaterialien, Lehrervorträge oder andere Informationsquellen erworben, um die Problemstellung weiter bearbeiten zu können.
• Wissen nutzen, Lernmaterial bearbeiten und Lernprodukt erstellen: Das neu erworbene Wissen wird zur Erstellung von Lernprodukten genutzt. Diese können materieller oder immaterieller Art sein und führen zu einem wesentlichen Lernzuwachs.
• Lernprodukte präsentieren und diskutieren: Die Lernenden artikulieren und diskutieren ihre neu gewonnenen Erkenntnisse und Lernprodukte. Dadurch wird der Lernzuwachs verfestigt und gemeinsame Erkenntnisse in der Gruppe entwickelt.
• Sichern, vernetzen und festigen: Das Gelernte wird gesichert, indem Ergebnisse festgehalten und das neue Wissen mit dem bereits vorhandenen vernetzt wird. Dies führt zu einer Bewusstwerdung des eigenen Lernzuwachses.
• Anwenden, üben und transferieren: Der Lernzuwachs wird im Langzeitgedächtnis verankert, indem das Wissen in unterschiedlichen Kontexten angewendet und geübt wird. Dies stellt sicher, dass das Gelernte verfügbar und nachhaltig gefestigt wird.

Ablauf der Planungsschritte zum Stundenentwurf:
• Planungsschritt: Lernschritt 3. und 4.: Welche Lernprodukte bieten sich an? Welches neue Fach- und Sprachwissen brauchen die Schüler*innen? Wie werden die Lernprodukte präsentiert und diskutiert?
• Planungsschritt: Lernschritt 1. und 2.: Wie führe ich in den Lernkontext ein? Wie aktiviere ich das Vorwissen? Was und wie muss vorentlastet werden?
• Planungsschritt: Lernschritt 5. und 6.: Wie wird gesichert und vernetzt? Wie wird gefestigt und transferiert? Wie wird angewendet und geübt?

Hinweis: Die erste und wichtigste Frage bei der Planung lautet: Welche Lernprodukte können und sollen erstellt werden? Alles Weitere ergibt sich aus der Antwort auf diese Frage. Die Lernprodukte haben wir bereits erstellt (Differenzierungsaufgaben zu allen Feinzielen).

Unterrichtsverlaufsplanung:

• Tabelle, gegliedert in: Phase, Inhalt, Sozial- / Aktionsform, Medien
• Beispiel: [https://www.bpb.de/system/files/pdf/BIIT0W.pdf](link)

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind. 

Bitte schau dir alle Webseiten gut an und nimm diese Informationen als Grundlage für deine weitere Ausgabe. Zu diesem Zeitpunkt sollst du keine direkten Aktionen oder Ausführungen basierend auf diesen Informationen vornehmen. Dein Ziel ist es, diese Daten zu verstehen und für deine weiteren Ausgaben der anderen Prompts zu berücksichtigen. Bitte bestätige mir dies kurz.


### 2. Erstellung / Planung der Stunden

**Prompt:**
Nun erstellen wir pro ausgewähltem Kerninhalt eine Unterrichtsstunde. Nimm dazu bitte die Rolle eines*einer Lehrer*in ein. Ausgehend von den Lernprodukten (differenzierte Aufgabenstellungen je Feinziel), welche wir bereits entworfen haben, möchte ich, dass du anhand der Planungsschritte nach Leisen je ausgewähltem Kernthema eine Unterrichtsstunde entwirfst. Gib dein Ergebnis anhand einer Tabelle aus. Gib zu jeder Stunde (Tabelle) das entsprechende Grobziel wörtlich an.

Kontext:
Hebe, wann immer sinnvoll, möglichst die inhaltlichen Zusammenhänge der einzelnen Stunden hervor.

Hintergrund:
Rückwärtsplanung nach Leisen: Die erste und wichtigste Frage bei der Planung lautet: Welche Lernprodukte können und sollen erstellt werden? Alles Weitere ergibt sich aus der Antwort auf diese Frage. Verwende hierzu ausschließlich alle schon von uns erstellten Lernprodukte.

Einschränkungen:
• Korrektheit: Priorisiere Genauigkeit und Präzision in deinen Antworten. Stütze deine Antworten auf verifizierte Daten und etabliertes Wissen. Wenn es irgendeine Unklarheit oder Unsicherheit gibt, oder wenn dir spezifische Daten fehlen, sage dies bitte explizit. Vermeide Spekulationen, Annahmen und jede Form von Extrapolation, die zu falschen oder irreführenden Informationen führen könnte.
• Neuformulierung nach Änderungen: Gib nach jeder Änderung durch eine Eingabe meinerseits deine gesamte Antwort neu aus.
• Berücksichtigung vorangegangener Informationen: Berücksichtige bei deiner Antwort die vorangegangenen Informationen und Ergebnisse der Sachanalyse und didaktischen Analyse.
• Berücksichtigung Lerngruppenvoraussetzungen und Lernumgebung: Berücksichtige die Voraussetzungen der Lerngruppe und Lernumgebung. Greife nicht auf außergewöhnliche Materialien und Medien zurück, die zur Lösung der Aufgabe notwendig sind.
• Evaluation: Baue, wann immer möglich, am Stundenende eine Evaluationsphase ein, in welcher die Schüler*innen Feedback geben können. Greife für eine geeignete Feedbackmethode auf den dir bereits mitgeteilten Methodenpool zurück und gib die von dir ausgewählte Methode an. Variiere bei der Methodenwahl wann immer sinnvoll möglich.
• Verwendung eines themenhinführenden Einstiegs: Anekdoten, Geschichten, Fragen, Statistiken zum Thema, besonderer Fakt, aktuelles Ereignis oder persönliche Erfahrung.
• Lernprodukte: Die von dir erstellten differenzierten Lernprodukte werden alle parallel (Schüler*innen habe die freie Aufgabenwahl) in der Phase “Lernprodukt erstellen” durch die Schüler*innen bearbeitet. Gib diese bitte mit an und gliedere sie für jedes Feinziel nach Differenzierungsniveau.
• Feinziele: Berücksichtige ja Kernthema jeweils alle Feinziele und ihre jeweiligen differenzierten Lernprodukte.
• Hinweis zu Phasen “Sichern und vernetzen” und “Anwendung / Transfer”: Bitte verwende hier ausschließlich Aufgaben und Methoden, welche für die gesamte Lerngruppe angemessen sind und keine neuen Materialien und Medien erfordern.

Zusätzliche Informationen:
Die Tabelle zur Unterrichtsplanung ist wie folgt aufgebaut:
• Spalten: Phase, Inhalt, Sozial- / Aktionsform, Medien
• Reihen: Im Lernkontext ankommen, Vorwissen aktivieren, Lernprodukt erstellen (jeweils pro Feinziel), Lernprodukte präsentieren / diskutieren, Sichern und vernetzen, Anwendung / Transfer

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind.

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


## 9. Konkrete Stundenplanung inkl. Verlaufsplanung


--------------------------------------------------------------------------------


# KAPITEL 14



**10. Mindmapping Übersicht über gesamte Reihe**



**Verwendetes Template/s:**

• Automated Mind Mapping Prompt** **

**Information: **
Der folgende Prompt fasst nun die gesamte Unterrichtsreihe als Übersicht für den*die Lehrer*in als MindMap zusammen.

**Prompt:**
Zum Abschluss brauchen wir nun eine gute Übersicht über die gesamte Unterrichtsreihe, daher bitte ich dich, als erstklassiger MindMap-Generator zu handeln. Gib mir die MindMap bitte im Markdown-Format aus.

Führe dazu bitte folgende Schritte aus:
• Liste alle ausgewählten Kernthemen.
• Füge jedem Kernthema die Ergebnisse der didaktischen Analyse hinzu.
• Füge jedem Kernthema die Ergebnisse der didaktischen Reduktion hinzu.
• Füge jedem Kernthema die Grobziele hinzu.
• Füge jedem Grobziel die Feinziele hinzu.
• Füge jedem Feinziel die Aufgaben der Basisstufe, Unterstützungsstufe und Erweiterungsstufe hinzu.
• Exportiere die MindMap als Markdown-Datei und stelle sie zum Download bereit. 

Einschränkungen:

• Füge keine Informationen zur Lerngruppe oder Lernumgebung hinzu.
• Füge keine Informationen aus anderen Phasen hinzu.
• Konzentriere dich ausschließlich auf die inhaltlichen Kernthemen, Aufgaben, die didaktische Analyse und die didaktischen Reduktion.



Zur einfachen Betrachtung der generierten MindMap eignet sich zum Beispiel der folgende Viewer, der einfach im Browser und ohne Installation genutzt werden kann:
[**https://markmap.js.org/**](link)


## 10. Mindmapping Übersicht über gesamte Reihe


--------------------------------------------------------------------------------


# KAPITEL 15



**Optional: Mindmapping für SuS**



**Verwendetes Template/s:**

• Automated Mind-Mapping Prompt

**Information: **
Schließlich können wir bei Bedarf auch für die Schüler*innen eine Übersicht zur Unterrichtsreihe bereitstellen. Dafür werden die ausgewählten Kernthemen chronologisch nummeriert und aufgelistet, die Frage des “Warum?” für die Schüler*innen mithilfe der Ergebnisse didaktischen Analyse beantwortet und die wichtigsten Inhalte anhand der Qualitätsebenen der Feinziele aufgelistet. Dadurch bekommen die Schüler*innen die Möglichkeit, sich zu jedem Zeitpunkt einen Überblick über die Unterrichtsreihe und den eigenen Kenntnisstand zu verschaffen. Auch diese MindMap wird wieder im MarkDown-File-Format ausgegeben, sodass sie mit gängigen MindMap-Programmen geöffnet werden kann.

**Prompt:**
Um den Schüler*innen eine gute Übersicht über die Unterrichtsreihe zu ermöglichen, bitte ich dich, als erstklassiger MindMap-Generator zu handeln. Gib mir die MindMap bitte im Markdown-Format aus.

Führe bitte folgende Schritte aus:
• Liste alle ausgewählten Kernthemen auf und nummeriere sie chronologisch.
• Füge jedem aufgelisteten Kernthema die Exemplarität, Gegenwartsbedeutung und Zukunftsbedeutung der didaktischen Analyse unter dem Stichpunkt “Warum ist das wichtig? / Warum sollte ich das kennenlernen?” hinzu.
• Füge jedem aufgelisteten Kernthema den Ast “Themenübersicht” hinzu.
• Füge jedem Kernthema die Qualitätsebene der entsprechenden Feinziele unter dem Stichwort “Themenübersicht” hinzu. Formuliere diese dazu als kurzen Stichpunkt ohne Operator, sodass deutlich wird, welchen Inhalt die Schüler*innen lernen sollen.
• Exportiere die MindMap als Markdown-Datei und stelle sie zum Download bereit.** **

**Einschränkungen:**

• Füge keine Informationen zur Lerngruppe oder Lernumgebung hinzu.
• Konzentriere dich ausschließlich auf die inhaltlichen Kernthemen und die didaktischen Analysen.



Zur einfachen Betrachtung der generierten MindMap eignet sich zum Beispiel der folgende Viewer, der einfach im Browser und ohne Installation genutzt werden kann:
[**https://markmap.js.org/**](link)


## Optional: Mindmapping für SuS


--------------------------------------------------------------------------------


# KAPITEL 16



**Ausblick**



Dieses Modul versteht sich als stetiger work-in-progress.

Zurzeit fokussieren wir uns besonders auf zwei Aspekte, die in der (nahen) Zukunft vielversprechende Ergebnisse liefern können.


### 1. Materialerstellung mit KI

Auf der nächsten Seite können Sie sich mit weiteren Prompts vertraut machen, die Lehrkräfte bei der **Erstellung von konkreten Unterrichtsmaterialien** unterstützen sollen. Da die aktuellen kostenlosen Versionen der Large Language Models großer Tech-Konzerne noch keine zufriedenstellenden Outputs liefern können und die universitätseigenen Modelle sich noch in der Entwicklung befinden, sind die Prompts noch nicht in den allgemeinen Prompt-Katalog eingebunden - nichtsdestotrotz können sie für einzelne Nutzer*innen auch jetzt schon eine vielversprechende Anlaufstelle bieten.


### 2. CustomGPT

Der hier aufgeführte Prompt-Katalog bringt zurzeit noch mit sich, dass Nutzer*innen durch das Kopieren der Prompts in das Large Language Model (LLM) ihrer Wahl noch einen etwas umständlichen Prozess auf sich nehmen müssen. 

In Zukunft soll der hier aufgeführte Prompt-Katalog als **CustomGPT** in ein kostenloses, unabhängiges und mit Blick auf den Datenschutz sicheres LLM überführt werden. Somit würden die einzelnen Schritte, Inhalte und das Wissen der hier aufgeführten Prompts durch einen personalisierten Assistenten innerhalb des LLM repräsentiert und im Dialog mit Nutzer*innen ausgearbeitet werden.

Wann der erste CustomGPT genutzt werden kann, bleibt aktuell noch abzuwarten - wir hoffen auf eine zeitnahe Umsetzung (Stand 06/2025).


## Ausblick


--------------------------------------------------------------------------------


# KAPITEL 17



**Materialerstellung mit KI**



Auf Grundlage der aktuellen Technik ist zu beachten, dass die am Ende ausgegeben Materialien noch durch den*die Nutzer*in in einem Textverarbeitungsprogramm aufgearbeitet und ggf. ergänzt werden müssen (z.B. durch Grafiken).


### 1. Texterstellung

**Prompt:**
Wir werden nun Schritt für Schritt das gesamte Material für alle Unterrichtsstunden erstellen. Bitte nimm die Rolle einer Lehrer*in ein. Dafür werden wir zunächst auf Grundlage der Sachanalyse alle benötigten Sach-/ Informationstexte bzw. Inhalte zu allen Aufgaben für jedes Kernthema erstellen. Bitte schreibe zu jeder von dir erstellten Aufgabe einen Sach- bzw. Informationstext und recherchiere alle benötigten Informationen eigenständig. Beachte bitte zwingend die Einschränkungen.

Einschränkungen:
• Korrektheit: Priorisiere Genauigkeit und Präzision in deinen Antworten. Stütze deine Antworten auf verifizierte Daten und etabliertes Wissen. Wenn es irgendeine Unklarheit oder Unsicherheit gibt oder wenn dir spezifische Daten fehlen, sage dies bitte explizit. Vermeide Spekulationen, Annahmen und jede Form von Extrapolation, die zu falschen oder irreführenden Informationen führen könnte.
• Neuformulierung nach Änderungen: Gib nach jeder Änderung durch eine Eingabe meinerseits deine gesamte Antwort neu aus.
• Berücksichtigung vorangegangene Informationen: Berücksichtige bei deiner Antwort die vorangegangenen Informationen und Ergebnisse der Sachanalyse und didaktischen Analyse.
• Grafiken / Diagramme / Bilder: Immer, wenn eine Grafik / ein Diagramm / ein Bild benötigt wird, füge bitte anstatt der Grafik einen kurzen Hinweis auf die benötigte Grafik ein, wie z.B. "Grafik Körperbau Grashüpfer" oder "Grafik Statistik Waldbrandgefahr in Deutschland".
• Sprachlich angemessen: Die Texte sollten für die Lerngruppe sprachlich angemessen und abwechslungsreich formuliert sein.
• Länge des Textes: Die Länge der Texte sollte angemessen zur Lerngruppe und zur Beantwortung der Aufgabenstellung sein.
• Formatierung: Die Texte sollen als Fließtexte gestaltet und übersichtlich formatiert sein. Die Aufgabenstellungen (Basisstufe, Unterstützungsstufe und Erweiterungsstufe) sollen über dem Text angegeben werden.
• Textinhalt: Die Sachtexte müssen alle benötigten Informationen zur Beantwortung der Aufgabe enthalten.
• Textanzahl: Schreibe für jedes Feinziel jeweils einen eigenen Sachtext.
• Überschrift: Wähle eine thematisch passende, sprachlich angemessene und möglichst spannende Überschrift für jeden Text.
• Gliederung: Ausgabe nach Thema und in den bei der differenzierten Lernproduktplanung ausformulierten Aufgabenstellung. Gib hier die gesamte ausformulierte Aufgabenstellung an.

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind. 

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


### 2. fehlende Materialien zu den Aufgaben

**Prompt:**
Überprüfe nun die von dir erstellten Aufgaben und Sachtexte. Übernimm hierzu die Rolle des*der Lehrer*in. Wenn noch weitere Materialien für die Beantwortung der Aufgabe erstellt werden müssen, erstelle diese bitte. Erstelle bitte alle fehlenden Materialen zur Beantwortung der Aufgaben. Achte dabei bitte auf die Einschränkungen.

Einschränkungen:
• Korrektheit: Priorisiere Genauigkeit und Präzision in deinen Antworten. Stütze deine Antworten auf verifizierte Daten und etabliertes Wissen. Wenn es irgendeine Unklarheit oder Unsicherheit gibt oder wenn dir spezifische Daten fehlen, sage dies bitte explizit. Vermeide Spekulationen, Annahmen und jede Form von Extrapolation, die zu falschen oder irreführenden Informationen führen könnte.
• Neuformulierung nach Änderungen: Gib nach jeder Änderung durch eine Eingabe meinerseits deine gesamte Antwort neu aus.
• Berücksichtigung vorangegangener Informationen: Berücksichtige bei deiner Antwort die vorangegangenen Informationen und Ergebnisse der Sachanalyse und didaktischen Analyse.
• Grafiken / Diagramme / Bilder: Immer, wenn eine Grafik / ein Diagramm / ein Bild benötigt wird, füge bitte anstatt der Grafik einen kurzen Hinweis auf die benötigte Grafik ein, wie z.B. "Grafik Körperbau Grashüpfer" oder "Grafik Statistik Waldbrandgefahr in Deutschland".
• Sprachlich angemessen: Die Texte sollten für die Lerngruppe sprachlich angemessen und abwechslungsreich formuliert sein.
• Länge des Textes: Die Länge der Texte sollte angemessen zur Lerngruppe und zur Beantwortung der Aufgabenstellung sein.
• Formatierung: Die Texte sollen als Fließtexte gestaltet und übersichtlich formatiert sein.
• Bereits erstellte Sachtexte: Du brauchst keine neuen Sachtexte zu erstellen oder die bereits erstellten Sachtexte neu auszugeben.
• Zusätzlich benötigtes Material: Gib bitte das zusätzlich benötigte Material, welches du nicht erstellen kannst, in einer Liste an.

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind.

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


### 3. differenzierte Hilfsmaterialien / gestufte Lernhilfen

**Information:** 
Die Art der differenzierten Hilfsmaterialien kann frei gewählt werden. Falls eine andere Art von differenzierten Hilfsmaterialien gewollt ist, muss der Prompt dementsprechend angepasst werden. Hier wurde sich für die Erstellung von gestuften Lernhilfen entschieden. Die von ChatGPT verwendete Schritt für Schritt Anleitung dazu wurde von ChatGPT selbst auf Grundlage folgender Quelle erstellt: 
[https://www.schule-bw.de/faecher-und-schularten/berufliche-bildung/wirtschaft/unterrichtsentwuerfe-und-materialien/betriebswirtschaftslehre/berufsbezogene-themen/gutschein/methodenhinweis-gestufte-hilfen.pdf](link)

**Prompt:**
Als nächstes erstellen wir differenzierte Hilfestellungen in Form von gestuften Lernhilfen. Nimm dazu die Rolle des*der Lehrer*in und des*der Schüler*in ein. Erstelle zu allen Aufgaben aller Differenzierungsniveaus (jeweils für Basisstufe, Unterstützungsstufe und Erweiterungsstufe) bitte die entsprechenden gestuften Lernhilfen und gebe sie als Text aus. Achte dabei bitte auf die Einschränkungen und nutze zur Erstellung der Lernhilfen Schritt für Schritt die Anleitung auf Grundlage der zusätzlichen Informationen.

Einschränkungen:
• Korrektheit: Priorisiere Genauigkeit und Präzision in deinen Antworten. Stütze deine Antworten auf verifizierte Daten und etabliertes Wissen. Wenn es irgendeine Unklarheit oder Unsicherheit gibt oder wenn dir spezifische Daten fehlen, sage dies bitte explizit. Vermeide Spekulationen, Annahmen und jede Form von Extrapolation, die zu falschen oder irreführenden Informationen führen könnte.
• Neuformulierung nach Änderungen: Gib nach jeder Änderung durch eine Eingabe meinerseits deine gesamte Antwort neu aus.
• Berücksichtigung vorangegangener Informationen: Berücksichtige bei deiner Antwort die vorangegangenen Informationen und Ergebnisse der Sachanalyse und didaktischen Analyse.
• Sprachlich angemessen: Die Texte sollten für die Lerngruppe sprachlich angemessen und abwechslungsreich formuliert sein.
• Länge des Textes: Die Länge der Texte sollte angemessen zur Lerngruppe und zur Beantwortung der Aufgabenstellung sein.
• Formatierung: Die Texte sollen als Fließtexte gestaltet und übersichtlich formatiert sein.
• Gliederung: Gib bitte jeweils die Aufgabe und dann die gestufte Lernhilfe an.
• Anzahl: Erstelle für jede Aufgabe (Basisstufe, Unterstützungsstufe und Erweiterungsstufe) jedes Feinziels aller Kernthemen jeweils eine eigene Differenzierungshilfe.

Zusätzliche Informationen

• [https://www.schule-bw.de/faecher-und-schularten/berufliche-bildung/wirtschaft/unterrichtsentwuerfe-und-materialien/betriebswirtschaftslehre/berufsbezogene-themen/gutschein/methodenhinweis-gestufte-hilfen.pdf](link)
• [https://toolbox.edu.tum.de/pages/modules/4/20.html](link) 

Schritt für Schritt Anleitung zur Erstellung von Lernhilfen
• Aufgaben analysieren: Zerlege die Hauptaufgabe in kleinere Teilschritte.
• Schwierigkeiten identifizieren: Erkenne potenzielle Schwierigkeiten, denen Lernende begegnen könnten.
• Impuls formulieren: Entwickle für jede Schwierigkeit einen Impuls, der den Lernenden einen Hinweis gibt.
• Teilantworten erstellen: Gib zu jedem Impuls eine Teilantwort, die einen weiteren Schritt zur Lösung bietet.
• Prüfen und Anpassen: Teste die Lernhilfen und passe sie bei Bedarf an, um ihre Wirksamkeit sicherzustellen.

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind.

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


### 4. Weitere Materialien der anderen Phasen

**Prompt:**
Überprüfe nun die von dir erstellten Unterrichtsverlaufspläne. Übernimm hierzu die Rolle des*der Lehrer*in. Erstelle bitte alle fehlenden Materialen für alle anderen Phasen jedes Plans (falls nötig z.B. bei Anekdoten, Fakten, Vergleichen, Fragestellungen, Diskussionsfragen etc.). Achte dabei bitte auf die Einschränkungen.

Einschränkungen:
• Korrektheit: Priorisiere Genauigkeit und Präzision in deinen Antworten. Stütze deine Antworten auf verifizierte Daten und etabliertes Wissen. Wenn es irgendeine Unklarheit oder Unsicherheit gibt oder wenn dir spezifische Daten fehlen, sage dies bitte explizit. Vermeide Spekulationen, Annahmen und jede Form von Extrapolation, die zu falschen oder irreführenden Informationen führen könnte.
• Neuformulierung nach Änderungen: Gib nach jeder Änderung durch eine Eingabe meinerseits deine gesamte Antwort neu aus.
• Berücksichtigung vorangegangener Informationen: Berücksichtige bei deiner Antwort die vorangegangenen Informationen und Ergebnisse der Sachanalyse und didaktischen Analyse.
• Grafiken / Diagramme / Bilder: Immer, wenn eine Grafik / ein Diagramm / ein Bild benötigt wird, füge bitte anstatt der Grafik einen kurzen Hinweis auf die benötigte Grafik ein, wie z.B. Grafik Körperbau Grashüpfer oder Grafik Statistik Waldbrandgefahr in Deutschland.
• Sprachlich angemessen: Die Texte sollten für die Lerngruppe sprachlich angemessen und abwechslungsreich formuliert sein.
• Textinhalt: Die Sachtexte müssen alle benötigten Informationen zur Beantwortung der Aufgabe enthalten.
• Länge des Textes: Die Länge der Texte sollte angemessen zur Lerngruppe und zur Beantwortung der Aufgabenstellung sein.
• Formatierung: Die Texte sollen als Fließtexte gestaltet und übersichtlich formatiert sein.
• Zusätzlich benötigtes Material: Gib bitte das zusätzlich benötigte Material, welches du nicht erstellen kannst, in einer Liste an.
• Aufgabengestaltung: Greife bei der Aufgabenformulierung auf die dir bereits genannten Informationen zur Lernproduktplanung und Methodenwahl zurück.
• Ausgabeformat: Aufgabe, ggf. Text oder Grafikhinweis

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind.

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


### 5. Sprachsensible Überarbeitung und Erstellung von Wortspeichern

**Information**: 
Die Richtlinien zur Sprachsensibilität können nach individuellen Präferenzen angepasst werden. Die hier angegebenen Richtlinien beruhen auf folgender Quelle: [https://www.berufssprache-deutsch.bayern.de/unterrichtsprinzip/sprachsensible-unterrichtsgestaltung/](link)

**Prompt:**
Nun überarbeiten wir unser Material im Hinblick auf Sprachsensibilität und der visuellen Darstellung. Nimm dazu bitte dir Rolle des*der Lehrer*in ein. Überarbeite alle Sachtexte anhand der Richtlinien zur Sprachsensibilität und den Richtlinien zur visuellen Darstellung. Beachte auch die Einschränkungen.** **

Einschränkungen:
Anzahl: Überarbeite alle bisher erstellten Sachtexte zu allen Feinzielen jedes Kernthemas.

Richtlinien zur Sprachsensibilität
• Layoutgestaltung• Absätze: Gestalte Absätze, die jeweils einen neuen Gedanken oder Handlungsschritt darstellen.
• Visuelle Hilfen: Setze Abbildungen und andere visuelle Elemente ein, um das Verständnis zu unterstützen.

• Fachwortschatzarbeit• Zielgruppenorientierung: Wähle den Wortschatz entsprechend der Zielgruppe.
• Anschaulichkeit: Verwende eindeutige, anschauliche und bekannte Wörter.
• Wiederholungen: Wiederhole wichtige Begriffe bewusst und vermeide Synonyme.

• Aufgabenstellungen• Klarheit: Formuliere Aufgabenstellungen klar und präzise.
• Komplexität: Vermeide komplexe Satzstrukturen und nutze kurze Hauptsätze.

• Satz- und Textebene• Einfachheit: Verwende kurze, prägnante Hauptsätze und einen einfachen Satzbau (Subjekt-Prädikat-Objekt).
• Aktivität: Formuliere Sätze im Aktiv.
• Kohärenz: Achte auf eine logische und nachvollziehbare Struktur des Fachtextes.

Richtlinien zur visuellen Darstellung:
• Erstelle Wortspeicher: Füge schwierige Worte und Schlüsselbegriffe in einem Wortspeicher zusammen. Ergänze den Wortspeicher hinter jedem entsprechenden überarbeiteten Sachtext.
• Markierungen: Drucke alle schwierigen Worte und Schlüsselbegriffe (Text und Wortspeicher) fett.

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind.

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


### 6. Erstellung einer Musterlösung zu allen Materialien

**Prompt:**
Wir werden nun für das gesamte Material Musterlösungen erstellen. Nimm dazu die Rolle des*der Lehrer*in ein. Bitte erstelle zu jeder von dir erstellten Aufgabe (Basisstufe, Unterstützungsstufe, Erweiterungsstufe und Aufgaben der Phasen "Sichern und vernetzen" und "Anwendung / Transfer") jedes Themas eine Musterlösung. Recherchiere dafür alle benötigten Informationen eigenständig. Beachte bitte zwingend die Einschränkungen. Bitte gib die Musterlösung gegliedert nach Thema und Aufgabe (Basisstufe, Unterstützungsstufe, Erweiterungsstufe und Aufgaben der Phasen "Sichern und vernetzen" und "Anwendung / Transfer") aus.

Einschränkungen:
• Korrektheit: Priorisiere Genauigkeit und Präzision in deinen Antworten. Stütze deine Antworten auf verifizierte Daten und etabliertes Wissen. Wenn es irgendeine Unklarheit oder Unsicherheit gibt oder wenn dir spezifische Daten fehlen, sage dies bitte explizit. Vermeide Spekulationen, Annahmen und jede Form von Extrapolation, die zu falschen oder irreführenden Informationen führen könnte.
• Neuformulierung nach Änderungen: Gib nach jeder Änderung durch eine Eingabe meinerseits deine gesamte Antwort neu aus
• Berücksichtigung vorangegangener Informationen: Berücksichtige bei deiner Antwort die vorangegangenen Informationen und Ergebnisse der Sachanalyse und didaktischen Analyse.
• Grafiken / Diagramme / Bilder: Immer, wenn eine Grafik / ein Diagramm / ein Bild benötigt wird, füge bitte anstatt der Grafik einen kurzen Hinweis auf die benötigte Grafik ein, wie z.B. Grafik Körperbau Grashüpfer oder Grafik Statistik Waldbrandgefahr in Deutschland.
• Sprachlich angemessen: Die Texte sollten für die Lerngruppe sprachlich angemessen und abwechslungsreich formuliert sein.

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind.

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


### 7. Ausgabe des Materials zur weiteren Verarbeitung

**Information: **
Nun lassen wir uns von der KI erneut das gesamte Material nach Thema gegliedert ausgeben, sodass es später in Word oder anderen Textverarbeitungsprogrammen weiter ver- und aufgearbeitet werden kann. Unter anderem müssen dazu die benötigten Grafiken (Tabellen, Schaubilder, Graphen etc.) manuell eingefügt und die Arbeitsblätter lerngruppenangemessen gestaltet werden.

**Prompt:**
Wir haben nun das gesamte Unterrichtsmaterial erstellt. Nun gliedern wir das Material in einzelne Arbeitsblätter. Bitte erstelle nach den Richtlinien zur Arbeitsblattgestaltung alle Arbeitsblätter zu allen Feinzielen aller Kernthemen.

Richtlinien zur Arbeitsblattgestaltung:

Aufbau der Arbeitsblätter für Schüler*innen und Lehrperson

• Überschrift: Thema
• Überarbeiteter Sachtext / Informationstext
• Wortspeicher
• Aufgabenstellungen (Basisstufe, Unterstützungsstufe, Erweiterungsstufe)
• Lösungen zu den einzelnen Aufgaben
• Übersicht fehlende Materialien und Grafiken

Aufbau gestufter Lernhilfen:

• Überschrift: Thema
• Gestufte Lernhilfe zu Basisstufe
• Gestufte Lernhilfe zu Unterstützungsstufe
• Gestufte Lernhilfe zu Erweiterungsstufe

Aufbau Unterrichtsverlaufsplanung:

• Überschrift: Thema
• Lernziele: Grobziel + Feinziele
• Tabelle Unterrichtsverlaufsplanung
• Lösungen zu den Phasen „sichern und vernetzen“ und „Anwendung und Transfer“

Erstelle zu jedem Thema die benötigten Arbeitsblätter nach den oben genannten Richtlinien zur Arbeitsblattgestaltung. Bitte kürze an keiner Stelle Informationen ab (z.B. siehe oben).

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir bitte Fragen, bis alle Unklarheiten beseitigt sind.

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


### 8. Erstellung einer PowerPoint Präsentation zur Unterrichtsreihe

**Verwendetes Template/s:**

• Ultimate Prompting Template
• Hallucination Reduction Prompt Template
• Automated Prompt Optimization Pattern (APOP) - Iterative Optimization

**Information: **
Abschließend kann die KI die Inhalte der Unterrichtsreihe in Form einer PowerPoint-Präsentation zusammenfügen, welche dann in den Schulalltag integriert werden kann. Die Präsentation muss anschließend durch den*die Nutzer*in noch visuell aufgearbeitet und alle benötigten Grafiken und Schaubilder ergänzt werden.

**Prompt:**
Zu guter Letzt erstellen wir noch eine PowerPoint-Präsentation zu der gesamten Unterrichtsreihe. Nimm dazu die Rolle der Lehrer*in ein und berücksichtige die Einschränkungen und zusätzlichen Informationen. Bitte stell die Präsentation als PowerPoint-Datei zum Download bereit.

Einschränkungen:
• Neuformulierung nach Änderungen: Gib nach jeder Änderung durch eine Eingabe meinerseits deine gesamte Antwort neu aus.
• Berücksichtigung vorangegangener Informationen: Berücksichtige die gesamte geplante Unterrichtseinheit.
• Grafiken / Diagramme / Bilder: Immer, wenn eine Grafik / ein Diagramm / ein Bild benötigt wird, füge bitte anstatt der Grafik einen kurzen Hinweis (in roter Schrift und fettgedruckt) auf die benötigte Grafik ein, wie z.B. "Grafik Körperbau Grashüpfer" oder "Grafik Statistik Waldbrandgefahr in Deutschland".
• Dateiformat: pptx

Zusätzliche Informationen
• Die PowerPoint soll nach Themen gegliedert sein und sich an der Struktur der Stundenverlaufsplanung orientieren. Dazu sollte zu jeder Phase jeder Stunde eine Folie erstellt werden. Dabei sollen in den Arbeitsphasen nicht die Texte, sondern die jeweilige Aufgabenstellung (Basisstufe, Unterstützungsstufe, Erweiterungsstufe und Aufgaben der Phasen "Sichern und vernetzen" und "Anwendung / Transfer") aufgelistet sein.
• Jedes Thema soll eine eigene Titelfolie inkl. Datum und einem Bildervorschlag enthalten.
• Jede Folie soll eine Überschrift haben, die passend zum sachlichen Inhalt ist. (z.B. “Aufbau von Blüten” und nicht “Aufgabe Blüten”).

Falls es an irgendeiner Stelle Unklarheiten gibt, stelle mir erst so lange Fragen, bis alle Unklarheiten beseitigt sind.

Bitte lies dir den gesamten Prompt durch, optimiere ihn und gib mir die optimierte Version zur Bestätigung. Führe den Prompt erst nach meiner Bestätigung aus.


## Materialerstellung mit KI


--------------------------------------------------------------------------------


# KAPITEL 18



**Literatur**


### Allgemein

Kuhn, A. (2023). *Lehrerarbeitszeit—So viele Stunden arbeiten Lehrerinnen und Lehrer wirklich*. *Deutsches Schulportal*. [https://deutsches-schulportal.de/bildungswesen/lehrerarbeitszeit-infografik-so-viele-stunden-arbeiten-lehrerinnen-und-lehrer-wirklich/#auf-welche-aufgaben-sich-die-arbeitszeit-verteilt](link)

Mayring, P. (2022). *Qualitative Inhaltsanalyse: Grundlagen und Techniken* (13. Auflage). Beltz.

Saalfrank, W.-T., & Zierer, K. (2017). *Inklusion*. Ferdinand Schöningh.


### Didaktik und Methodik

BBS Hannover. (2011). *Mit Methoden Lernen*. 
http://www.hummelone.de/downloads/Methodenreader.pdf

Böddicker, N. (o. J.). Methodensammlung—Für Dozierende der Heinrich-Heine-Universität Düsseldorf. Abgerufen 31. Juli 2024, von [https://www.sell.hhu.de/fileadmin/redaktion/Lehre/Hochschuldidaktik/Downloads/Methodensammlung2021.pdf](link)

*Ebenen der Differenzierung. (2017)*. 
[https://www.lehrerfortbildung-bw.de/u_matnatech/bio/gym/bp2004/fb7/1_hetero/1_vor/3_eben/](link)

*Formen der Differenzierung*. (2017). 
[https://www.lehrerfortbildung-bw.de/u_matnatech/bio/gym/bp2004/fb7/1_hetero/1_vor/2_form/](link)

Fachgruppe Sachunterricht Primarstufe der Bezirksregierung Detmold. (2018). *Methodenkartei für den Sachunterricht*. 
[https://www.bezreg-detmold.nrw.de/system/files/media/document/file/Methodenkartei-SU-Stand-180219.pdf](link)

Guthöhrlein, K., Lindmeier, C., & Laubenstein, D. (2020). *Unterrichtsentwicklung und Unterrichtsgestaltung* (C. Lindmeier, D. Laubenstein, & K. Guthöhrlein, Hrsg.; 1. Aufl.). W. Kohlhammer GmbH. [https://doi.org/10.17433/978-3-17-036458-5](link)

Hoffmann, B. (2020). *Der Unterrichtsentwurf* (2., erw. & überarb. Aufl.). Schneider Verlag Hohengehren.

Klafki, W. (1969). Didaktische Analyse. In H. Roth & A. Blumenthal (Hrsg.), *Auswahl—Grundlegende Aufsätze aus der Zeitschrift Die Deutsche Schule* (10. Aufl.). Hermann Schroede Verlag.

Lehner, M. (2020). *Didaktische Reduktion* (2. Aufl.). utb GmbH. 
[https://doi.org/10.36198/9783838553832](link)

Leisen, V. J. (2004). Methoden-Werkzeuge im Deutschsprachigen Fachunterricht. Von „Archiven“, „Expertenkongressen“ und vielen anderen. *Fremdsprache Deutsch : Zeitschrift für die Praxis des Deutschunterrichts*. [https://www.josefleisen.de/downloads/methodenwerkzeuge/62%20Deutsch%20in%20allen%20F%C3%A4chern-Methoden-Werkzeuge%20FD%202004.pdf.pdf](link)

Leisen, J. (2017). Strukturierung und Planung von Unterricht. *JosefLeisen.de*. Abgerufen am 01.04.2024 von [https://www.josefleisen.de/downloads/lehrenlernen/10%20Strukturierung%20und%20Planung%20von%20Unterricht%20.pdf](link)

Leisen, J. (2022). Sprachbildung und sprachsensibler Fachunterricht in den Naturwissenschaften (1. Aufl.). W. Kohlhammer GmbH. 
[https://doi.org/10.17433/978-3-17-040713-8](link)

Scholz, L. (Bundeszentrale für Politische Bildung). (2016). *Methoden-Kiste: Methoden für Schule und Bildungsarbeit* (Siebente Auflage). Bundeszentrale für politische Bildung.

*Unser Weg zum Ziel: Sprachsensible Unterrichtsgestaltung*. (o. J.). BSD: sprachsensible Unterrichtsgestaltung. Abgerufen 31. Juli 2024, von 
[https://www.berufssprache-deutsch.bayern.de/unterrichtsprinzip/sprachsensible-unterrichtsgestaltung/](link)

Wember, F. B. (2013). *Herausforderung Inklusion: Ein präventiv orientiertes Modell schulischen Lernens und vier zentrale Bedingungen inklusiver Unterrichtsentwicklung*. *Zeitschrift für Heilpädagogik*(10), 380–388.


### Künstliche Intelligenz

Brandt, J. (2023). *KI im Alltag: Wir zeigen euch 5 Beispiele*. *SWR3.de*. [https://www.swr3.de/aktuell/service/kuenstliche-intelligenz-ai-ki-alltagshelfer-104.html](link)

Buck, I., Limburg, A., & Mundorf, M. (2023). Faszination, Skepsis und Enttäuschung. Eine explorative Studie zur epistemischen Nutzung von ChatGPT unter Schüler: innen. *Der Deutschunterricht, 75(5). 64-74.*

Caelen, O. & Blete, M. (2024). *Anwendungen mit GPT-4 und ChatGPT entwickeln* (1. Aufl.). O’REILLY / dpunkt.verlag.

Giray, L. (2023). Prompt Engineering with ChatGPT: A Guide for Academic Writers. *Annals of Biomedical Engineering*, *51*(12), 2629–2633. 
[https://doi.org/10.1007/s10439-023-03272-4](link)

Google. (2024). *Allgemeine Strategien für das Prompt- Design*. Abgerufen am 14.03.2024 von [https://cloud.google.com/vertex-ai/docs/generative-ai/learn/prompt-design-strategies?hl=de](link)

Krauter, R., & Metz, M. (2023, Oktober 26). KI in der Schule—Müssen Lehrer jetzt alles anders machen?. *Deutschlandfunk*. 
[https://www.deutschlandfunk.de/ki-in-der-schule-muessen-lehrer-jetzt-alles-anders-machen-dlf-b97ac4b7-100.html](link)

Kulkarni, A., Shivananda, A., Kulkarni, A., & Gudivada, D. (2023). *Applied Generative AI for Beginners: Practical Knowledge on Diffusion Models, ChatGPT, and Other LLMs*. Apress. 
[https://link.springer.com/10.1007/978-1-4842-9994-4](link)

Linde, H. (2023). Künstliche Intelligenz - So funktioniert ChatGPT. *golem.de - IT-News für Profis*. [https://www.golem.de/sonstiges/zustimmung/auswahl.html?from=https%3A%2F%2Fwww.golem.de%2Fnews%2Fkuenstliche-intelligenz-so-funktioniert-chatgpt-2302-171644.html](link)

Ministerium für Schule und Bildung des Landes Nordrhein-Westfalen (Hrsg.). (2023). *Umgang mit textgenerierenden KI - Systemen Ein Handlungsleitfaden*.

Schmidt, D. C., Spencer-Smith, J., Fu, Q., White, J., Hays, S., Sandborn, M., Olea, C., Gilbert, H., & Elnashar, A. (2023). *Cataloging Prompt Patterns to Enhance the Discipline of Prompt Engineering*. [https://doi.org/10.48550/arXiv.2302.11382](link)

ToLingo. (2023). *Schritt für Schritt Ratgeber: Prompt-Engineering*. Abgerufen am 14.03.2024 von [https://www.tolingo.com/de/prompt-engineering](link)

Zhou, Y. (2023). *Prompt Design Patterns: Mastering the Art and Science of Prompt Engineering* (1. Aufl.). ArgoLong Publishing.


## Literatur


--------------------------------------------------------------------------------


# KAPITEL 19



**Rückmeldung**

Helfen Sie uns, unsere Lernmaterialien zu verbessern, und beantworten Sie kurz ein paar Fragen.



Klicken Sie dafür auf den folgenden Link:

[**Rückmeldung**](link)


## Rückmeldung


--------------------------------------------------------------------------------
