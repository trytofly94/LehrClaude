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
