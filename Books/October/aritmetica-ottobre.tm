<TeXmacs|2.1.5>

<style|book>

<\body>
  <\hide-preamble>
    <assign|chapter-title|<macro|name|<style-with|src-compact|none|<new-page*><no-indent><vspace*|3.4fn><sectional-centered|<with|font-size|1.7|<arg|name>>><vspace|3.2fn><no-page-break><no-indent*>>>>
    <assign|chapter-numbered-title|<macro|title|<chapter-title|<tabular|<tformat|<cwith|1|2|1|1|cell-halign|c>|<cwith|1|1|1|1|cell-bsep|0.9fn>|<cwith|1|2|1|1|cell-lsep|0fn>|<cwith|1|2|1|1|cell-rsep|0fn>|<table|<row|<cell|<with|font-shape|small-caps|font-size|0.7|<chapter-text>
    <the-chapter>>>>|<row|<cell|<arg|title>>>>>>>>>
    <assign|appendix-numbered-title|<macro|title|<chapter-title|<tabular|<tformat|<cwith|1|2|1|1|cell-halign|c>|<cwith|1|1|1|1|cell-bsep|0.9fn>|<cwith|1|2|1|1|cell-lsep|0fn>|<cwith|1|2|1|1|cell-rsep|0fn>|<table|<row|<cell|<with|font-shape|small-caps|font-size|0.7|<appendix-text>
    <the-appendix>>>>|<row|<cell|<arg|title>>>>>>>>>
    <assign|section-title|<macro|name|<style-with|src-compact|none|<sectional-normal-bold|<vspace*|1.6fn><with|font-size|1.12|<arg|name>><vspace|0.6fn>>>>>
    <assign|subsection-toc|<macro|name|>>
    <assign|box-label|<macro|x|<with|font-shape|small-caps|font-series|bold|<arg|x>>>>
    <assign|box-head|<macro|label|title|<box-label|<arg|label>><if|<equal|<arg|title>|>||<space|0.4spc>\<cdot\><space|0.4spc><with|font-series|bold|math-font-series|bold|<arg|title>>>>>
    <assign|box2|<macro|lb|tb|bb|bg|hsep|head|body|<box3|<arg|lb>|<arg|tb>|<arg|bb>|0ln|<arg|bg>|<arg|hsep>|<arg|head>|<arg|body>>>>
    <assign|box3|<macro|lb|tb|bb|rb|bg|hsep|head|body|<surround|<no-indent>||<tabular|<tformat|<twith|table-width|1par>|<cwith|1|2|1|1|cell-width|1par>|<cwith|1|2|1|1|cell-hyphen|t>|<cwith|1|2|1|1|cell-lborder|<arg|lb>>|<cwith|1|2|1|1|cell-rborder|<arg|rb>>|<cwith|1|1|1|1|cell-tborder|<arg|tb>>|<cwith|2|2|1|1|cell-bborder|<arg|bb>>|<cwith|1|2|1|1|cell-lsep|<arg|hsep>>|<cwith|1|2|1|1|cell-rsep|<arg|hsep>>|<cwith|1|1|1|1|cell-tsep|0.75fn>|<cwith|1|1|1|1|cell-bsep|0.3fn>|<cwith|2|2|1|1|cell-tsep|0fn>|<cwith|2|2|1|1|cell-bsep|0.75fn>|<cwith|1|2|1|1|cell-background|<arg|bg>>|<table|<row|<cell|<arg|head>>>|<row|<cell|<arg|body>>>>>>>>>
    <assign|guidato|<macro|title|body|<padded|<box2|0ln|0ln|0ln|#efefeb|1.2spc|<box-head|Esempio
    guidato|<arg|title>>|<arg|body>>>>> <assign|attenzione|<macro|title|body|<padded|<box2|1.8pt|0ln|0ln||1.3spc|<box-head|Attenzione|<arg|title>>|<arg|body>>>>>
    <assign|immagine|<macro|title|body|<padded|<box3|0.45pt|0.45pt|0.45pt|0.45pt||1.2spc|<box-head|Immagine
    mentale|<arg|title>>|<arg|body>>>>> <assign|anatomia|<macro|title|body|<padded|<box2|0ln|1.2pt|0.45pt||0spc|<box-head|Anatomia
    di una dimostrazione|<arg|title>>|<arg|body>>>>>
    <assign|inbreve|<macro|body|<padded|<box2|0.45pt|0ln|0ln||1.2spc|<box-label|In
    breve>|<arg|body>>>>> <assign|verifica|<macro|num|body|<padded|<box2|0ln|0.45pt|0ln||0spc|<box-label|Verifica
    <arg|num>>|<arg|body>>>>> <assign|figura|<macro|img|cap|<padded|<surround|<no-indent>||<tabular|<tformat|<twith|table-width|1par>|<cwith|1|2|1|1|cell-width|1par>|<cwith|1|2|1|1|cell-halign|c>|<cwith|2|2|1|1|cell-hyphen|t>|<cwith|1|2|1|1|cell-lsep|0pt>|<cwith|1|2|1|1|cell-rsep|0pt>|<cwith|1|1|1|1|cell-bsep|0.5fn>|<cwith|2|2|1|1|cell-tsep|0pt>|<table|<row|<cell|<arg|img>>>|<row|<cell|<with|par-mode|center|font-size|0.86|<arg|cap>>>>>>>>>>>
    <assign|concetto|<macro|title|body|<padded|<box2|0.7pt|0ln|0ln||1.2spc|<box-head|Concetto
    chiave|<arg|title>>|<arg|body>>>>> <assign|toc-strong-2|<macro|left|right|<vspace*|1fn><with|font-series|bold|math-font-series|bold|<arg|left>><toc-dots><no-break><arg|right><vspace|0.5fn><no-page-break>>>
  </hide-preamble>

  <assign|page-this-header|><assign|page-this-footer|>

  <\with|par-mode|center>
    <vspace*|6.2cm>

    <with|font-size|3.6|Aritmetica>

    <vspace|1.6fn>

    <with|font-shape|italic|font-size|1.19|dalle idee più semplici alle
    strutture>

    <vspace|5fn>

    <with|font-shape|small-caps|font-size|1.15|ottobre 2026>
  </with>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Prima di
    cominciare> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn><no-page-break>

    Cinque idee che reggono tutto <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>

    Come leggere <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Da
    dove partono i numeri> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn><no-page-break>

    1.1<space|2spc>Numeri per contare, numeri per risolvere equazioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>

    1.2<space|2spc>Operazioni e loro proprietà
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>

    1.3<space|2spc>Come sono fatti i naturali
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>

    1.4<space|2spc>Il principio del minimo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>

    1.5<space|2spc>Il linguaggio delle somme
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>L'induzione>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn><no-page-break>

    2.1<space|2spc>L'idea del domino <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>

    2.2<space|2spc>Primi esempi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>

    2.3<space|2spc>Perché l'induzione funziona
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>

    2.4<space|2spc>Il passo base non è una formalità
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14>

    2.5<space|2spc>L'induzione forte <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>Insiemi,
    funzioni e che cosa vuol dire contare>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16><vspace|0.5fn><no-page-break>

    3.1<space|2spc>Insiemi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17>

    3.2<space|2spc>Funzioni <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-18>

    3.3<space|2spc>Che cosa vuol dire contare
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-19>

    3.4<space|2spc>Il principio dei cassetti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-20>

    3.5<space|2spc>Insiemi finiti della stessa taglia
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-21>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc>Contare:
    coppie, funzioni, sottoinsiemi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-22><vspace|0.5fn><no-page-break>

    4.1<space|2spc>Il principio del prodotto
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-23>

    4.2<space|2spc>Quante funzioni ci sono
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-24>

    4.3<space|2spc>Funzioni iniettive e liste senza ripetizioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-25>

    4.4<space|2spc>Tutti i sottoinsiemi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-26>

    4.5<space|2spc>Quando ogni oggetto è contato più volte
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-27>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc>Scegliere:
    i coefficienti binomiali> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-28><vspace|0.5fn><no-page-break>

    5.1<space|2spc>Sottoinsiemi con un numero fissato di elementi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-29>

    5.2<space|2spc>Simmetria <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-30>

    5.3<space|2spc>Il triangolo di Pascal
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-31>

    5.4<space|2spc>Il binomio di Newton <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-32>

    5.5<space|2spc>Parole con lettere ripetute
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-33>

    5.6<space|2spc>Stelle e sbarre <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-34>

    5.7<space|2spc>Contare due volte <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-35>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6<space|2spc>Includere
    ed escludere> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-36><vspace|0.5fn><no-page-break>

    6.1<space|2spc>Le funzioni caratteristiche come calcolatrice
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-37>

    6.2<space|2spc>Tre insiemi, e poi tanti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-38>

    6.3<space|2spc>Contare le funzioni suriettive
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-39>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7<space|2spc>Ricorrenze>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-40><vspace|0.5fn><no-page-break>

    7.1<space|2spc>Successioni definite per ricorrenza
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-41>

    7.2<space|2spc>Linearità <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-42>

    7.3<space|2spc>Cercare soluzioni esponenziali
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-43>

    7.4<space|2spc>I numeri di Fibonacci <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-44>

    7.5<space|2spc>Tassellare un corridoio
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-45>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8<space|2spc>La
    divisione con resto> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-46><vspace|0.5fn><no-page-break>

    8.1<space|2spc>Approssimare con i multipli
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-47>

    8.2<space|2spc>Il teorema della divisione euclidea
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-48>

    8.3<space|2spc>Divisibilità <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-49>

    8.4<space|2spc>Relazioni e ordini <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-50>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|9<space|2spc>Massimo
    comun divisore, Euclide e Bézout> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-51><vspace|0.5fn><no-page-break>

    9.1<space|2spc>Il massimo comun divisore
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-52>

    9.2<space|2spc>Il passo di Euclide <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-53>

    9.3<space|2spc>L'algoritmo di Euclide
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-54>

    9.4<space|2spc>L'identità di Bézout <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-55>

    9.5<space|2spc>Un secondo sguardo: il più piccolo elemento positivo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-56>

    9.6<space|2spc>Le conseguenze di Bézout
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-57>

    9.7<space|2spc>Euclide con le potenze
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-58>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|10<space|2spc>I
    numeri primi e la fattorizzazione unica>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-59><vspace|0.5fn><no-page-break>

    10.1<space|2spc>Primi e composti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-60>

    10.2<space|2spc>Esistenza della fattorizzazione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-61>

    10.3<space|2spc>Unicità della fattorizzazione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-62>

    10.4<space|2spc>La fattorizzazione come carta d'identità
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-63>

    10.5<space|2spc>Terne con prodotto fissato
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-64>

    10.6<space|2spc>Quanti fattori <with|mode|math|p> ci sono in
    <with|mode|math|n!> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-65>

    10.7<space|2spc>Differenze di quadrati
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-66>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|11<space|2spc>Equazioni
    negli interi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-67><vspace|0.5fn><no-page-break>

    11.1<space|2spc>Il problema e la sua immagine
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-68>

    11.2<space|2spc>Quando ci sono soluzioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-69>

    11.3<space|2spc>Tutte le soluzioni <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-70>

    11.4<space|2spc>La ricetta, e un esempio completo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-71>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|12<space|2spc>Relazioni
    di equivalenza e quozienti> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-72><vspace|0.5fn><no-page-break>

    12.1<space|2spc>Quando cose diverse sono \Sla stessa\T
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-73>

    12.2<space|2spc>Classi di equivalenza
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-74>

    12.3<space|2spc>L'insieme quoziente <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-75>

    12.4<space|2spc>I razionali come quoziente
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-76>

    12.5<space|2spc>Contare le classi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-77>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|13<space|2spc>Congruenze>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-78><vspace|0.5fn><no-page-break>

    13.1<space|2spc>L'aritmetica dell'orologio
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-79>

    13.2<space|2spc>Le classi resto <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-80>

    13.3<space|2spc>Le congruenze rispettano somma e prodotto
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-81>

    13.4<space|2spc>Criteri di divisibilità
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-82>

    13.5<space|2spc>Quadrati modulo 4 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-83>

    13.6<space|2spc>Cancellare con cautela
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-84>

    13.7<space|2spc>Congruenze lineari <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-85>

    13.8<space|2spc>L'inverso modulo <with|mode|math|n>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-86>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|14<space|2spc>Fare
    i conti con le classi: <with|mode|math|\<bbb-Z\>/n\<bbb-Z\>>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-87><vspace|0.5fn><no-page-break>

    14.1<space|2spc>Operazioni sulle classi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-88>

    14.2<space|2spc>Le proprietà si ereditano
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-89>

    14.3<space|2spc>Le tavole <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-90>

    14.4<space|2spc>Quali classi sono invertibili
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-91>

    14.5<space|2spc>Divisori dello zero e modulo primo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-92>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|15<space|2spc>Sistemi
    di congruenze: il teorema cinese del resto>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-93><vspace|0.5fn><no-page-break>

    15.1<space|2spc>Due condizioni insieme
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-94>

    15.2<space|2spc>Il metodo di sostituzione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-95>

    15.3<space|2spc>Il teorema per due moduli coprimi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-96>

    15.4<space|2spc>Quando i moduli non sono coprimi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-97>

    15.5<space|2spc>Molti moduli <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-98>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|16<space|2spc>Quando
    una frazione si ripete: gli sviluppi decimali>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-99><vspace|0.5fn><no-page-break>

    16.1<space|2spc>Sviluppi decimali <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-100>

    16.2<space|2spc>Perché le cifre di una frazione si ripetono
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-101>

    16.3<space|2spc>Dal periodo alla frazione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-102>

    16.4<space|2spc>Ogni denominatore ha un multiplo adatto
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-103>

    16.5<space|2spc>Ogni frazione è periodica
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-104>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|17<space|2spc>Gruppi,
    anelli, campi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-105><vspace|0.5fn><no-page-break>

    17.1<space|2spc>Operazioni, notazioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-106>

    17.2<space|2spc>Gruppi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-107>

    17.3<space|2spc>Le prime conseguenze degli assiomi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-108>

    17.4<space|2spc>Anelli e campi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-109>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|18<space|2spc>Omomorfismi:
    il teorema cinese come isomorfismo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-110><vspace|0.5fn><no-page-break>

    18.1<space|2spc>Funzioni che rispettano le operazioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-111>

    18.2<space|2spc>Prodotti diretti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-112>

    18.3<space|2spc>La mappa cinese <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-113>

    18.4<space|2spc>Gli invertibili <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-114>

    18.5<space|2spc>La funzione di Eulero
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-115>

    18.6<space|2spc>Ridurre a un modulo più piccolo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-116>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|19<space|2spc>Sottogruppi
    e gruppi ciclici> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-117><vspace|0.5fn><no-page-break>

    19.1<space|2spc>Sottogruppi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-118>

    19.2<space|2spc>I sottogruppi di <with|mode|math|\<bbb-Z\>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-119>

    19.3<space|2spc>Il centro di un gruppo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-120>

    19.4<space|2spc>Il sottogruppo generato da un elemento
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-121>

    19.5<space|2spc>L'ordine di un elemento
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-122>

    19.6<space|2spc>L'ordine di una potenza
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-123>

    19.7<space|2spc>I sottogruppi di un gruppo ciclico
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-124>

    19.8<space|2spc>Gruppi che non sono ciclici
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-125>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|20<space|2spc>Permutazioni>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-126><vspace|0.5fn><no-page-break>

    20.1<space|2spc>Il gruppo simmetrico <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-127>

    20.2<space|2spc>Due notazioni <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-128>

    20.3<space|2spc>Comporre: l'ordine conta
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-129>

    20.4<space|2spc>Cicli disgiunti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-130>

    20.5<space|2spc>Sottogruppi di <with|mode|math|S<rsub|3>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-131>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|21<space|2spc>Il
    teorema di Lagrange e il teorema di Eulero>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-132><vspace|0.5fn><no-page-break>

    21.1<space|2spc>Le classi laterali <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-133>

    21.2<space|2spc>Il teorema di Lagrange
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-134>

    21.3<space|2spc>Il teorema di Eulero e il piccolo teorema di Fermat
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-135>

    21.4<space|2spc>Calcolare un ordine <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-136>

    21.5<space|2spc>Ritorno ai decimali <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-137>

    21.6<space|2spc>Quando il gruppo degli invertibili è ciclico
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-138>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|22<space|2spc>Equazioni
    modulari: esponenti e polinomi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-139><vspace|0.5fn><no-page-break>

    22.1<space|2spc>Le potenze sono periodiche
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-140>

    22.2<space|2spc>Equazioni con l'incognita all'esponente
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-141>

    22.3<space|2spc>Polinomi modulo un primo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-142>

    22.4<space|2spc>Polinomi modulo una potenza di primo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-143>

    22.5<space|2spc>Una strategia complessiva
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-144>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendice
    A<space|2spc>Soluzioni delle verifiche>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-145><vspace|0.5fn><no-page-break>

    A.1<space|2spc>Capitoli 1\<#2013\>7 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-146>

    A.2<space|2spc>Capitoli 8\<#2013\>11 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-147>

    A.3<space|2spc>Capitoli 12\<#2013\>16
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-148>

    A.4<space|2spc>Capitoli 17\<#2013\>22
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-149>
  </table-of-contents>

  <chapter*|Prima di cominciare>

  Questo libro racconta l'aritmetica come una storia che si costruisce un
  passo alla volta. Non presuppone nulla oltre ai conti che si fanno a
  scuola: le operazioni tra interi e frazioni, qualche equazione, un po' di
  familiarità con le lettere. Tutto il resto, dal linguaggio degli insiemi
  alle dimostrazioni, dai gruppi agli anelli, viene costruito strada facendo,
  quando serve e perché serve.

  L'ordine dei capitoli non è quello delle lezioni. È l'ordine in cui le idee
  si appoggiano l'una sull'altra. Ogni volta che compare un concetto nuovo,
  il lettore dovrebbe già possedere tutto ciò che occorre per capirlo, e
  dovrebbe anche intuire perché qualcuno abbia avuto bisogno di inventarlo.

  <section*|Cinque idee che reggono tutto>

  A guardarla dall'alto, l'aritmetica del corso poggia su pochissime idee.
  Vale la pena nominarle subito, perché le ritroveremo continuamente.

  <\enumerate>
    <item><strong|Il principio del minimo.> Ogni insieme non vuoto di numeri
    naturali ha un elemento più piccolo. Sembra un'ovvietà, eppure da qui
    nascono l'induzione, la divisione con resto, l'algoritmo di Euclide e
    perfino la struttura dei sottogruppi. (Capitoli 1 e 2.)

    <item><strong|Contare è costruire biiezioni.> Dire che un insieme ha
    <math|n> elementi significa metterlo in corrispondenza perfetta con
    <math|<around*|{|1,\<ldots\>,n|}>>. Tutta la combinatoria è l'arte di
    trovare corrispondenze furbe: tra sottoinsiemi e funzioni, tra parole e
    scelte, tra tassellazioni e numeri di Fibonacci. (Capitoli 3\<#2013\>7.)

    <item><strong|Il resto della divisione.> Dividere un intero per un altro
    lascia un resto, più piccolo del divisore. Da questo semplice fatto
    discendono il massimo comun divisore, l'identità di Bézout, la
    fattorizzazione unica in primi e le equazioni negli interi. (Capitoli
    8\<#2013\>11.)

    <item><strong|Identificare ciò che si comporta allo stesso modo.> A volte
    oggetti diversi meritano di essere considerati \Suguali\T: le frazioni
    <math|<frac|1|2>> e <math|<frac|2|4>>, le ore 3 e 15 su un orologio. Le
    relazioni di equivalenza rendono rigorosa questa idea e producono mondi
    nuovi, come gli interi modulo <math|n>. (Capitoli 12\<#2013\>16.)

    <item><strong|Le strutture.> Quando le stesse regole di calcolo compaiono
    in contesti diversi, conviene studiarle una volta per tutte. Nascono così
    i gruppi, gli anelli, i campi e le funzioni che ne rispettano le
    operazioni. Il teorema cinese del resto, il teorema di Eulero e lo studio
    delle equazioni modulari diventano allora conseguenze naturali. (Capitoli
    17\<#2013\>22.)
  </enumerate>

  Le prime idee servono a costruire le ultime. Il principio del minimo, per
  esempio, riappare nel capitolo 19 per dimostrare che ogni sottogruppo di un
  gruppo ciclico è ciclico, con lo stesso identico ragionamento con cui nel
  capitolo 9 si dimostra l'identità di Bézout. Questi ritorni non sono
  coincidenze. Sono il segno che stiamo guardando sempre la stessa matematica
  da punti di vista diversi.

  <section*|Come leggere>

  Il testo principale procede come una spiegazione a voce: prima il problema,
  poi l'idea, infine l'argomento rigoroso. Definizioni, teoremi e
  dimostrazioni sono scritti per intero, perché il libro deve preparare
  all'esame. Accanto al testo si incontrano alcuni riquadri, ciascuno con un
  compito preciso.

  <\itemize>
    <item><strong|Concetto chiave>: una definizione o un principio da cui
    dipende molto di ciò che segue.

    <item><strong|Esempio guidato>: un calcolo svolto con calma, spiegando il
    perché di ogni mossa.

    <item><strong|Immagine mentale>: un modo intuitivo di vedere un'idea, da
    tenere a mente.

    <item><strong|Anatomia di una dimostrazione>: uno sguardo dietro le
    quinte, per capire come si sarebbe potuta inventare una dimostrazione.

    <item><strong|Attenzione>: un errore frequente e il modo di evitarlo.

    <item><strong|In breve>: un piccolo riepilogo di ciò che abbiamo
    costruito.

    <item><strong|Verifica>: un esercizio per mettersi alla prova. Le
    soluzioni, spiegate, sono nell'appendice in fondo al libro.
  </itemize>

  <strong|Convenzioni.> In questo libro <math|\<bbb-N\>=<around*|{|0,1,2,\<ldots\>|}>>:
  lo zero è un numero naturale. Scriviamo <math|a\<mid\>b> per dire che
  <math|a> divide <math|b>. Il massimo comun divisore è indicato con
  <math|<math-up|MCD>(a,b)> e il minimo comune multiplo con
  <math|<math-up|mcm>(a,b)>; quando la notazione è chiara scriviamo anche
  <math|(a,b)> per il massimo comun divisore. Quando lavoriamo modulo
  <math|n> supponiamo <math|n\<geq\>1>.

  Qualche risultato del libro va oltre ciò che è stato dimostrato a lezione:
  quando succede, il testo lo dice esplicitamente. Sono aggiunte pensate per
  chiudere i buchi logici, in modo che ogni passo poggi su qualcosa che il
  lettore ha già visto.

  <chapter|Da dove partono i numeri><label|cap-numeri>

  Prima di dimostrare qualunque cosa sui numeri, conviene chiedersi che cosa
  siano. Non è una domanda filosofica: è la domanda pratica \Squali regole
  possiamo usare?\T. In questo capitolo mettiamo in fila gli insiemi numerici
  che conosciamo, guardiamo le proprietà delle operazioni e, soprattutto,
  isoliamo la proprietà che rende i numeri naturali così speciali: il
  <em|principio del minimo>. Sarà la prima delle nostre cinque idee portanti.

  <section|Numeri per contare, numeri per risolvere equazioni>

  I numeri naturali nascono per contare. Se in una stanza ci sono cinque
  sedie, il numero <math|5> descrive quante sono. C'è un modo di dirlo che
  non usa nemmeno i numeri: se possiamo far sedere ogni bambino su una sedia,
  senza che avanzino sedie né bambini, allora bambini e sedie \Ssono tanti
  quanti\T. Questa idea, la <em|corrispondenza biunivoca>, tornerà nel
  capitolo 3 come definizione stessa di contare.

  Nel corso adottiamo la convenzione

  <\equation*>
    \<bbb-N\>=<around*|{|0,1,2,3,\<ldots\>|}>,
  </equation*>

  cioè lo zero è un numero naturale (corrisponde a contare una stanza vuota).

  La somma di due naturali è ancora un naturale: si dice che <math|\<bbb-N\>>
  è <em|chiuso> rispetto alla somma. Con la sottrazione le cose vanno
  diversamente. L'equazione

  <\equation*>
    x+3=0
  </equation*>

  non ha soluzioni in <math|\<bbb-N\>>, perché nessun naturale sommato a
  <math|3> dà <math|0>. Per risolverla allarghiamo il mondo e introduciamo
  gli <em|interi>

  <\equation*>
    \<bbb-Z\>=<around*|{|\<ldots\>,-2,-1,0,1,2,\<ldots\>|}>,
  </equation*>

  dove ogni numero ha il suo opposto. Ma anche <math|\<bbb-Z\>> non basta:
  l'equazione <math|5x+8=0> non ha soluzioni intere. Servono le frazioni,
  cioè i <em|razionali>

  <\equation*>
    \<bbb-Q\>=<around*|{|<frac|m|n> : m\<in\>\<bbb-Z\>, n\<in\>\<bbb-Z\>,
    n\<neq\>0|}>.
  </equation*>

  Qui c'è una sottigliezza che riprenderemo con cura nel capitolo 12:
  frazioni diverse possono rappresentare lo stesso numero, come
  <math|<frac|1|2>=<frac|2|4>=<frac|3|6>>. Un razionale non è una singola
  frazione, ma una famiglia di frazioni equivalenti.

  Ogni razionale ha uno sviluppo decimale finito, come
  <math|<frac|3|4>=0<text|,>75>, oppure periodico, come
  <math|<frac|1|3>=0<text|,><wide|3|\<wide-bar\>>>. Vale anche il viceversa:
  ogni sviluppo finito o periodico rappresenta un razionale. Lo dimostreremo
  nel capitolo 16, quando avremo gli strumenti giusti. Esistono però sviluppi
  che non si ripetono mai, per esempio

  <\equation*>
    0<text|,>1010010001000010\<ldots\>,
  </equation*>

  in cui fra due cifre <math|1> compaiono blocchi di zeri sempre più lunghi.
  Numeri come questo, o come <math|<sqrt|2>>, vivono nei <em|reali>
  <math|\<bbb-R\>>, che contengono i razionali e gli irrazionali. Infine, per
  risolvere un'equazione come <math|x<rsup|2>+1=0> si introducono i
  <em|complessi> <math|\<bbb-C\>>, con l'unità immaginaria <math|i> tale che
  <math|i<rsup|2>=-1>. In sintesi

  <\equation*>
    \<bbb-N\>\<subset\>\<bbb-Z\>\<subset\>\<bbb-Q\>\<subset\>\<bbb-R\>\<subset\>\<bbb-C\>,
  </equation*>

  e ogni passo è motivato da equazioni che il passo precedente non sapeva
  risolvere. In questo corso, però, il protagonista resta l'insieme più
  piccolo, <math|\<bbb-N\>>, insieme al suo fratello maggiore
  <math|\<bbb-Z\>>.

  <section|Operazioni e loro proprietà>

  Somma e prodotto sono esempi di <em|operazioni>. In generale, un'operazione
  su un insieme <math|X> è una regola che a ogni coppia ordinata <math|(a,b)>
  di elementi di <math|X> associa un unico elemento <math|a\<ast\>b> di
  <math|X>. Il fatto che il risultato stia ancora in <math|X> è parte della
  definizione: la sottrazione è un'operazione su <math|\<bbb-Z\>>, ma non su
  <math|\<bbb-N\>>.

  Le proprietà che ci interesseranno sono quattro. Siano <math|a,b,c>
  elementi qualsiasi di <math|X>.

  <\itemize>
    <item><strong|Commutatività>: <math|a\<ast\>b=b\<ast\>a>. Vale per somma
    e prodotto di numeri, non per la sottrazione (<math|5-3\<neq\>3-5>).

    <item><strong|Associatività>: <math|(a\<ast\>b)\<ast\>c=a\<ast\>(b\<ast\>c)>.
    È la proprietà che ci autorizza a scrivere <math|a+b+c> senza parentesi.

    <item><strong|Elemento neutro>: un elemento <math|e> tale che
    <math|a\<ast\>e=e\<ast\>a=a> per ogni <math|a>. Per la somma è <math|0>,
    per il prodotto è <math|1>.

    <item><strong|Inverso>: dato <math|a>, un elemento <math|a<rprime|'>>
    tale che <math|a\<ast\>a<rprime|'>=a<rprime|'>\<ast\>a=e>. Per la somma
    l'inverso di <math|a> è l'opposto <math|-a>; per il prodotto è
    <math|<frac|1|a>>, che esiste solo se <math|a\<neq\>0>.
  </itemize>

  In <math|\<bbb-N\>> quasi nessun elemento ha l'opposto; in <math|\<bbb-Z\>>
  tutti hanno l'opposto, ma quasi nessuno ha l'inverso moltiplicativo; in
  <math|\<bbb-Q\>> ogni elemento non nullo ha anche l'inverso. Gli
  ampliamenti degli insiemi numerici sono, in fondo, ampliamenti che rendono
  possibili nuovi inversi. Nel capitolo 17 daremo un nome alle combinazioni
  di queste proprietà: gruppi, anelli, campi. Per ora ci basta averle
  riconosciute.

  <section|Come sono fatti i naturali>

  Contare è un'attività così familiare che sembra non richiedere spiegazioni.
  Eppure, per ragionare con rigore, dobbiamo dire esattamente quali proprietà
  dei naturali usiamo. Le proprietà assunte come punto di partenza, senza
  dimostrazione, si chiamano <em|assiomi>.

  L'idea è semplice. C'è un primo elemento, che chiamiamo <math|0>. Ogni
  naturale <math|n> ha un <em|successore>, che indichiamo con <math|n+1>.
  Partendo da <math|0> e passando ogni volta al successore otteniamo

  <\equation*>
    0, 1, 2, 3, 4, \<ldots\>
  </equation*>

  e chiediamo che questa catena abbia tre caratteristiche:

  <\enumerate>
    <item><math|0> non è il successore di nessun naturale (la catena ha un
    inizio);

    <item>naturali diversi hanno successori diversi (la catena non si
    richiude su sé stessa);

    <item>ogni naturale si raggiunge partendo da <math|0> e applicando un
    numero finito di volte il passaggio al successore (non ci sono elementi
    \Sfuori dalla catena\T).
  </enumerate>

  Il nome \S<math|0>\T è una convenzione: avremmo potuto chiamare il primo
  elemento in un altro modo. Ciò che conta è la struttura: un inizio, un
  passo, e nient'altro. La terza proprietà è la più profonda, e la prossima
  sezione la riformula in un modo straordinariamente utile.

  <section|Il principio del minimo>

  <\concetto|Principio del minimo (buon ordinamento)>
    Ogni sottoinsieme non vuoto <math|S\<subseteq\>\<bbb-N\>> possiede un
    elemento minimo, cioè un <math|m\<in\>S> tale che <math|m\<leq\>s> per
    ogni <math|s\<in\>S>.
  </concetto>

  <\immagine|La ricerca da sinistra>
    Disponiamo i naturali su una riga, <math|0,1,2,3,\<ldots\>>, e coloriamo
    gli elementi di <math|S>. Ora camminiamo da sinistra: <math|0> è
    colorato? Se no, guardiamo <math|1>; se no, <math|2>; e così via. Poiché
    <math|S> contiene almeno un elemento, prima o poi incontriamo un punto
    colorato, e il primo che incontriamo è il minimo: tutti quelli prima non
    stavano in <math|S>.
  </immagine>

  Questa immagine funziona perché <math|\<bbb-N\>> ha un punto di partenza e
  procede a passi discreti. Basta togliere una delle due cose perché il
  principio fallisca.

  <\itemize>
    <item>In <math|\<bbb-Z\>> manca il punto di partenza: l'insieme dei
    numeri negativi non ha minimo.

    <item>Nei razionali positivi manca la discretezza: l'insieme
    <math|<around*|{|<frac|1|n>:n\<geq\>1|}>> non ha minimo, perché sotto
    ogni <math|<frac|1|n>> c'è <math|<frac|1|n+1>>.
  </itemize>

  Il principio vale anche per sottoinsiemi di <math|\<bbb-Z\>> <em|limitati
  inferiormente>: se <math|S\<subseteq\>\<bbb-Z\>> è non vuoto e tutti i suoi
  elementi sono <math|\<geq\>k>, allora traslando (cioè guardando
  <math|<around*|{|s-k:s\<in\>S|}>\<subseteq\>\<bbb-N\>>) si trova un minimo.
  Lo useremo spesso in questa forma.

  <subsection|Una prima applicazione: <math|<sqrt|2>> non è razionale>

  Il principio del minimo sembra un'osservazione innocua. Vediamolo all'opera
  su una domanda vera: <math|<sqrt|2>> si può scrivere come frazione?

  Ci serve un fatto sui numeri pari. Se <math|n> è dispari, cioè
  <math|n=2k+1>, allora

  <\equation*>
    n<rsup|2>=4k<rsup|2>+4k+1=2(2k<rsup|2>+2k)+1
  </equation*>

  è dispari. Di conseguenza, <em|se <math|n<rsup|2>> è pari, allora <math|n>
  è pari>.

  <\proposition>
    Non esistono interi <math|a,b> con <math|b\<geq\>1> tali che
    <math|<around*|(|<frac|a|b>|)><rsup|2>=2>.
  </proposition>

  <\proof>
    Supponiamo per assurdo che esistano. Allora l'insieme

    <\equation*>
      S=<around*|{|b\<in\>\<bbb-N\>:b\<geq\>1 <text| e esiste
      >a\<in\>\<bbb-Z\><text| con >a<rsup|2>=2b<rsup|2>|}>
    </equation*>

    non è vuoto, e per il principio del minimo ha un elemento minimo
    <math|b>. Sia <math|a> un intero con <math|a<rsup|2>=2b<rsup|2>>. Allora
    <math|a<rsup|2>> è pari, quindi <math|a> è pari: <math|a=2c>.
    Sostituendo, <math|4c<rsup|2>=2b<rsup|2>>, cioè
    <math|b<rsup|2>=2c<rsup|2>>. Ora è <math|b<rsup|2>> a essere pari, quindi
    <math|b=2d> con <math|1\<leq\>d\<less\>b>, e da
    <math|4d<rsup|2>=2c<rsup|2>> otteniamo <math|c<rsup|2>=2d<rsup|2>>.
    Dunque <math|d\<in\>S> e <math|d\<less\>b>, contro la minimalità di
    <math|b>.
  </proof>

  <\anatomia|Perché scegliere il minimo>
    L'idea di fondo è: \Sse esistesse una frazione, potrei semplificarla per
    <math|2> e ottenerne un'altra con denominatore più piccolo, e poi ancora,
    e ancora\T. Detto così è un procedimento infinito, che lascia un dubbio.
    Il principio del minimo lo trasforma in un argomento di una riga: invece
    di scendere all'infinito, prendiamo subito il denominatore più piccolo
    possibile e mostriamo che se ne trova uno ancora più piccolo. Questa
    strategia, \Sconsidera il controesempio minimo\T, sarà uno degli attrezzi
    più usati del libro.
  </anatomia>

  Nel capitolo 10 ritroveremo lo stesso risultato da un'altra angolazione,
  usando la fattorizzazione in primi.

  <section|Il linguaggio delle somme>

  Prima di passare all'induzione ci serve una notazione compatta per le somme
  lunghe. Scriviamo

  <\equation*>
    <big|sum><rsub|k=1><rsup|n>a<rsub|k>=a<rsub|1>+a<rsub|2>+\<cdots\>+a<rsub|n>,
  </equation*>

  che si legge \Ssomma per <math|k> da <math|1> a <math|n> di
  <math|a<rsub|k>>\T. La lettera <math|k> si chiama <em|indice> ed è una
  variabile muta: fuori dalla somma non significa nulla, e possiamo
  sostituirla con qualunque altra lettera. Per esempio

  <\equation*>
    <big|sum><rsub|k=1><rsup|4>k<rsup|2>=1+4+9+16=30=<big|sum><rsub|j=1><rsup|4>j<rsup|2>.
  </equation*>

  Due manipolazioni torneranno di continuo.

  <\itemize>
    <item><strong|Staccare l'ultimo termine>:
    <math|<big|sum><rsub|k=1><rsup|n+1>a<rsub|k>=<around*|(|<big|sum><rsub|k=1><rsup|n>a<rsub|k>|)>+a<rsub|n+1>>.

    <item><strong|Traslare l'indice>: ponendo <math|j=k+1>, quando <math|k>
    va da <math|0> a <math|n> l'indice <math|j> va da <math|1> a <math|n+1>,
    quindi <math|<big|sum><rsub|k=0><rsup|n>a<rsub|k+1>=<big|sum><rsub|j=1><rsup|n+1>a<rsub|j>>.
    Si cambiano insieme il termine e gli estremi.
  </itemize>

  <\attenzione|I puntini nascondono informazioni>
    Una scrittura come <math|1+3+5+\<cdots\>> è comoda ma ambigua: qual è
    l'ultimo termine? La notazione <math|<big|sum><rsub|i=0><rsup|n-1>(2i+1)>
    dice esattamente quali addendi ci sono (sono <math|n>, da <math|1> a
    <math|2n-1>). Quando una dimostrazione si fa delicata, conviene sempre
    passare alla scrittura con l'indice. E se un cambio di indice non è
    chiaro, si scrivono per esteso i termini in un caso piccolo, come
    <math|n=2>.
  </attenzione>

  <\inbreve>
    Gli insiemi numerici si allargano per risolvere equazioni. Le operazioni
    possono avere quattro proprietà fondamentali: commutativa, associativa,
    elemento neutro, inverso. I naturali sono una catena che parte da
    <math|0> e procede per successori, e questa struttura si riassume nel
    principio del minimo: ogni insieme non vuoto di naturali ha un minimo.
    Considerare \Sil caso minimo\T è una strategia di dimostrazione potente,
    come mostra l'irrazionalità di <math|<sqrt|2>>.
  </inbreve>

  <\verifica|1.1>
    Quali dei seguenti insiemi hanno un minimo? (a) I numeri primi. (b) Gli
    interi <math|x> con <math|x<rsup|2>\<less\>50>. (c) I razionali <math|q>
    con <math|q\<gtr\>0>. (d) Gli interi pari maggiori di <math|-7>.
  </verifica>

  <\verifica|1.2>
    Adatta la dimostrazione dell'irrazionalità di <math|<sqrt|2>> per
    dimostrare che <math|<sqrt|3>> non è razionale. (Ti servirà un fatto
    analogo a \S<math|n<rsup|2>> pari implica <math|n> pari\T: quale?)
  </verifica>

  <\verifica|1.3>
    Calcola <math|<big|sum><rsub|k=2><rsup|5>(k-1)> e riscrivi la somma con
    l'indice <math|j=k-1>. Quali sono i nuovi estremi?
  </verifica>

  <chapter|L'induzione><label|cap-induzione>

  Supponiamo di voler dimostrare che una certa formula vale per <em|ogni>
  numero naturale. Non possiamo controllarla su infiniti casi uno alla volta.
  Ci serve un modo per trasformare infiniti controlli in due soli
  ragionamenti finiti. Questo modo è il principio di induzione, ed è figlio
  diretto del principio del minimo.

  <section|L'idea del domino>

  Immaginiamo una fila infinita di tessere del domino, una per ogni naturale.
  Per essere sicuri che cadano tutte bastano due cose: che cada la prima, e
  che ogni tessera, cadendo, faccia cadere la successiva.

  <figura|<image|../../Archive/Images/aritmetica/domino-induzione.pdf|155.0mm|50.0mm||>|La
  prima tessera cade, e ognuna trascina la successiva: cadono tutte.>

  Traduciamo. Sia <math|P(n)> un'affermazione che dipende da un naturale
  <math|n>, come \S<math|1+2+\<cdots\>+n=<frac|n(n+1)|2>>\T.

  <\concetto|Principio di induzione>
    Sia <math|n<rsub|0>\<in\>\<bbb-N\>> e sia <math|P(n)> un'affermazione
    definita per ogni <math|n\<geq\>n<rsub|0>>. Supponiamo che

    <\enumerate>
      <item>(<em|passo base>) <math|P(n<rsub|0>)> sia vera;

      <item>(<em|passo induttivo>) per ogni <math|n\<geq\>n<rsub|0>>, se
      <math|P(n)> è vera allora anche <math|P(n+1)> è vera.
    </enumerate>

    Allora <math|P(n)> è vera per ogni <math|n\<geq\>n<rsub|0>>.
  </concetto>

  Nel passo induttivo l'ipotesi \S<math|P(n)> è vera\T si chiama <em|ipotesi
  induttiva>: non stiamo affermando che <math|P(n)> sia vera, stiamo
  dimostrando l'implicazione <math|P(n)\<Rightarrow\>P(n+1)>. Il passo base è
  la prima tessera, il passo induttivo è il meccanismo che trasmette la
  caduta.

  <section|Primi esempi>

  <subsection|La somma dei primi <math|n> numeri>

  Si racconta che il giovane Gauss calcolò <math|1+2+\<cdots\>+100>
  accoppiando il primo con l'ultimo, il secondo con il penultimo, e così via:
  ogni coppia vale <math|101> e le coppie sono <math|50>, dunque il totale è
  <math|5050>. Lo stesso trucco suggerisce la formula generale

  <\equation*>
    1+2+\<cdots\>+n=<frac|n(n+1)|2>.
  </equation*>

  L'induzione ci permette di dimostrarla senza preoccuparci se <math|n> sia
  pari o dispari.

  <\proposition>
    Per ogni <math|n\<geq\>1> vale <math|<big|sum><rsub|k=1><rsup|n>k=<frac|n(n+1)|2>>.
  </proposition>

  <\proof>
    Sia <math|P(n)> l'uguaglianza da dimostrare.

    <em|Passo base.> Per <math|n=1> il membro sinistro vale <math|1> e il
    destro <math|<frac|1\<#22C5\>2|2>=1>.

    <em|Passo induttivo.> Supponiamo vera <math|P(n)>. Staccando l'ultimo
    termine e usando l'ipotesi induttiva,

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|k=1><rsup|n+1>k>|<cell|=>|<cell|<around*|(|<big|sum><rsub|k=1><rsup|n>k|)>+(n+1)=<frac|n(n+1)|2>+(n+1)>>|<row|<cell|>|<cell|=>|<cell|<frac|n(n+1)+2(n+1)|2>=<frac|(n+1)(n+2)|2>,>>>>
    </eqnarray*>

    che è esattamente <math|P(n+1)>. Per il principio di induzione,
    <math|P(n)> vale per ogni <math|n\<geq\>1>.
  </proof>

  <subsection|Dimostrare non è trovare>

  L'induzione dimostra una formula che qualcuno ci ha già dato, ma non la
  inventa. Per trovarla servono altri strumenti: esperimenti, intuizioni,
  disegni. Proviamo con la somma dei primi dispari.

  <\with|par-mode|center>
    <block|<tformat|<cwith|1|1|1|-1|cell-background|#efefeb>|<table|<row|<cell|<math|n>>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>>|<row|<cell|<math|1+3+\<cdots\>+(2n-1)>>|<cell|1>|<cell|4>|<cell|9>|<cell|16>|<cell|25>>>>>
  </with>

  La tabella suggerisce che la somma sia <math|n<rsup|2>>. Una figura lo
  rende quasi evidente: un quadrato <math|n\<times\>n> si decompone in
  \Scornici\T a forma di L, e la cornice numero <math|i> (contando da
  <math|0>) contiene <math|2i+1> quadratini.

  <figura|<image|../../Archive/Images/aritmetica/dispari.pdf|99.9mm|44.6mm||>|Le
  cornici di un quadrato <math|5\<times\>5> contengono <math|1,3,5,7,9>
  quadratini.>

  Questo è un primo esempio di <em|conteggio doppio>: contiamo gli stessi
  quadratini una volta riga per riga (<math|n<rsup|2>>) e una volta cornice
  per cornice. Torneremo su questa tecnica nel capitolo 5. Ora dimostriamo la
  formula per induzione.

  <\proposition>
    Per ogni <math|n\<geq\>1> vale <math|<big|sum><rsub|i=0><rsup|n-1>(2i+1)=n<rsup|2>>.
  </proposition>

  <\proof>
    Per <math|n=1> la somma ha il solo termine <math|i=0>, che vale
    <math|1=1<rsup|2>>. Supponiamo la formula vera per <math|n>. La somma per
    <math|n+1> contiene tutti i termini della somma per <math|n> più il nuovo
    termine con <math|i=n>:

    <\equation*>
      <big|sum><rsub|i=0><rsup|n>(2i+1)=<big|sum><rsub|i=0><rsup|n-1>(2i+1)+(2n+1)=n<rsup|2>+2n+1=(n+1)<rsup|2>.
    </equation*>

    Per induzione la formula vale per ogni <math|n\<geq\>1>.
  </proof>

  <\immagine|Riconoscere la somma precedente>
    In quasi tutte le induzioni su somme il passo cruciale è lo stesso:
    guardare la somma per <math|n+1> e riconoscervi dentro la somma per
    <math|n>. Il resto è algebra.
  </immagine>

  <section|Perché l'induzione funziona>

  Abbiamo presentato l'induzione come un principio, ma possiamo dimostrarla a
  partire dal principio del minimo. Anzi, i due principi sono
  <em|equivalenti>: ciascuno implica l'altro.

  <\theorem>
    Il principio del minimo implica il principio di induzione.
  </theorem>

  <\proof>
    Supponiamo che <math|P(n<rsub|0>)> sia vera e che valga
    <math|P(n)\<Rightarrow\>P(n+1)> per ogni <math|n\<geq\>n<rsub|0>>.
    Supponiamo per assurdo che <math|P(n)> sia falsa per qualche
    <math|n\<geq\>n<rsub|0>>. Allora l'insieme dei controesempi

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>:n\<geq\>n<rsub|0><text| e >P(n)<text| è
      falsa>|}>
    </equation*>

    non è vuoto, e ha un minimo <math|m>. Poiché <math|P(n<rsub|0>)> è vera,
    <math|m\<neq\>n<rsub|0>>, dunque <math|m\<gtr\>n<rsub|0>> e
    <math|m-1\<geq\>n<rsub|0>>. Essendo <math|m-1\<less\>m>, il numero
    <math|m-1> non è un controesempio: <math|P(m-1)> è vera. Il passo
    induttivo applicato a <math|n=m-1> dà allora che <math|P(m)> è vera,
    contro <math|m\<in\>S>. L'assurdo mostra che <math|S> è vuoto.
  </proof>

  <\anatomia|Il controesempio minimo>
    La dimostrazione segue uno schema che rivedremo spesso: si suppone che la
    tesi fallisca, si raccolgono tutti i casi in cui fallisce, si prende il
    più piccolo, e si mostra che il suo predecessore, non essendo un
    controesempio, lo \Ssalva\T. Il controesempio minimo non può esistere, e
    quindi nessun controesempio esiste.
  </anatomia>

  <\theorem>
    Il principio di induzione implica il principio del minimo.
  </theorem>

  <\proof>
    Sia <math|S\<subseteq\>\<bbb-N\>> un insieme senza minimo; dimostriamo
    che <math|S> è vuoto (è la contronominale dell'enunciato). Consideriamo
    l'affermazione

    <\equation*>
      Q(n):<space|1em><text|nessuno dei numeri >0,1,\<ldots\>,n<text|
      appartiene a >S.
    </equation*>

    <em|Passo base.> Se fosse <math|0\<in\>S>, allora <math|0> sarebbe il
    minimo di <math|S>, perché nessun naturale è più piccolo di <math|0>.
    Quindi <math|0\<nin\>S> e <math|Q(0)> è vera.

    <em|Passo induttivo.> Supponiamo vera <math|Q(n)>. Se fosse
    <math|n+1\<in\>S>, poiché nessuno dei numeri <math|0,\<ldots\>,n> sta in
    <math|S>, il numero <math|n+1> sarebbe il minimo di <math|S>, che invece
    non ha minimo. Quindi <math|n+1\<nin\>S> e vale <math|Q(n+1)>.

    Per induzione <math|Q(n)> vale per ogni <math|n>; in particolare nessun
    naturale sta in <math|S>, cioè <math|S=\<varnothing\>>.
  </proof>

  Si noti la scelta di <math|Q(n)>: invece di \S<math|n\<nin\>S>\T abbiamo
  usato l'affermazione più forte \Snessun numero fino a <math|n> sta in
  <math|S>\T. Con l'affermazione debole il passo induttivo non funzionerebbe,
  perché per escludere <math|n+1> serve sapere che <em|tutti> i numeri
  precedenti sono fuori da <math|S>. Ritroveremo questo trucco tra poco,
  nell'induzione forte.

  <section|Il passo base non è una formalità>

  Un passo induttivo convincente con un passo base sbagliato produce
  sciocchezze. Ecco un celebre esempio.

  <\attenzione|Tutti hanno gli occhi dello stesso colore?>
    \STeorema\T: in ogni gruppo di <math|n\<geq\>1> persone, tutti hanno gli
    occhi dello stesso colore.

    \SDimostrazione\T: per <math|n=1> è ovvio. Supponiamo l'enunciato vero
    per gruppi di <math|n> persone e prendiamone <math|n+1>. Le prime
    <math|n> hanno occhi dello stesso colore, e così le ultime <math|n>. Le
    persone che stanno in entrambi i gruppi fanno da ponte, quindi tutte le
    <math|n+1> hanno lo stesso colore.

    L'errore sta nel passaggio da <math|n=1> a <math|n=2>. Con due persone,
    \Sle prime <math|1>\T e \Sle ultime <math|1>\T sono due gruppi senza
    elementi in comune: il ponte non esiste. Il passo induttivo funziona solo
    per <math|n\<geq\>2>, ma per farlo partire da lì servirebbe verificare il
    caso <math|n=2>, che è falso.
  </attenzione>

  <figura|<image|../../Archive/Images/aritmetica/occhi.pdf|127.5mm|37.2mm||>|Con
  tre persone i due gruppi si sovrappongono; con due no.>

  La morale è che il passo induttivo deve valere <em|a partire dal valore in
  cui è stato verificato il passo base>. A volte, invece, una proprietà è
  falsa per i primi valori e diventa vera da un certo punto in poi: allora si
  sceglie <math|n<rsub|0>> opportunamente.

  <\guidato|Quando <math|2<rsup|n>> supera <math|n<rsup|2>>>
    Confrontiamo <math|2<rsup|n>> e <math|n<rsup|2>>: per <math|n=2,3,4> si
    ha <math|4=4>, <math|8\<less\>9>, <math|16=16>, mentre per <math|n=5> si
    ha <math|32\<gtr\>25>. Dimostriamo che <math|2<rsup|n>\<gtr\>n<rsup|2>>
    per ogni <math|n\<geq\>5>.

    Il passo base <math|n=5> è appena stato verificato. Per il passo
    induttivo supponiamo <math|2<rsup|n>\<gtr\>n<rsup|2>> con
    <math|n\<geq\>5>. Allora <math|2<rsup|n+1>=2\<#22C5\>2<rsup|n>\<gtr\>2n<rsup|2>>,
    e vogliamo arrivare a <math|(n+1)<rsup|2>=n<rsup|2>+2n+1>. Basta quindi
    che <math|2n<rsup|2>\<geq\>n<rsup|2>+2n+1>, cioè
    <math|n<rsup|2>-2n-1\<geq\>0>, ossia <math|(n-1)<rsup|2>\<geq\>2>, vero
    per <math|n\<geq\>3>. Nel passo induttivo abbiamo usato <math|n\<geq\>3>,
    che è garantito da <math|n\<geq\>5>.

    Si noti come il passo base e il passo induttivo abbiano richieste
    diverse: il primo è vero solo da <math|n=5>, il secondo da <math|n=3>.
    Conta che entrambi valgano dal punto di partenza scelto.
  </guidato>

  Anche il <em|dominio> dell'affermazione conta: <math|<sqrt|n-5>> ha senso
  tra i reali solo per <math|n\<geq\>5>, e <math|<frac|5n+3|n-2>> non è
  definito per <math|n=2>. L'indice iniziale deve essere un punto in cui
  l'affermazione ha senso, insieme a tutti i successivi.

  <section|L'induzione forte>

  A volte, per dimostrare <math|P(n)>, non basta sapere che vale
  <math|P(n-1)>: serve sapere che valgono <em|tutte> le affermazioni
  precedenti, o qualcuna molto più indietro.

  <\concetto|Induzione forte (o completa)>
    Sia <math|P(n)> un'affermazione definita per <math|n\<geq\>n<rsub|0>>.
    Supponiamo che

    <\enumerate>
      <item><math|P(n<rsub|0>)> sia vera;

      <item>per ogni <math|n\<gtr\>n<rsub|0>>, se
      <math|P(n<rsub|0>),P(n<rsub|0>+1),\<ldots\>,P(n-1)> sono tutte vere,
      allora è vera anche <math|P(n)>.
    </enumerate>

    Allora <math|P(n)> è vera per ogni <math|n\<geq\>n<rsub|0>>.
  </concetto>

  Nell'immagine del domino, la tessera <math|n> può essere spinta da tutte le
  tessere già cadute, non solo dalla precedente.

  <\theorem>
    L'induzione forte e l'induzione ordinaria sono equivalenti.
  </theorem>

  <\proof>
    Se un'affermazione si dimostra con l'induzione ordinaria, si dimostra
    anche con quella forte: nel passo forte possiamo usare tutte le ipotesi
    precedenti, quindi in particolare <math|P(n-1)>.

    Viceversa, supponiamo valide le ipotesi dell'induzione forte e definiamo
    l'affermazione cumulativa

    <\equation*>
      Q(n):<space|1em>P(k)<text| è vera per ogni >k<text| con
      >n<rsub|0>\<leq\>k\<leq\>n.
    </equation*>

    Dimostriamo <math|Q(n)> per ogni <math|n\<geq\>n<rsub|0>> con l'induzione
    ordinaria. Il caso <math|Q(n<rsub|0>)> coincide con <math|P(n<rsub|0>)>,
    vera per ipotesi. Se vale <math|Q(n)>, allora
    <math|P(n<rsub|0>),\<ldots\>,P(n)> sono tutte vere; l'ipotesi
    dell'induzione forte dà <math|P(n+1)>, e quindi vale <math|Q(n+1)>.
    Dunque <math|Q(n)> vale per ogni <math|n\<geq\>n<rsub|0>>, e in
    particolare vale ogni <math|P(n)>.
  </proof>

  L'idea della dimostrazione, sostituire <math|P(n)> con l'affermazione
  cumulativa \Svale tutto fino a <math|n>\T, è la stessa che abbiamo usato
  per dedurre il principio del minimo dall'induzione.

  <\guidato|Francobolli da 4 e da 5>
    Dimostriamo che ogni importo intero <math|n\<geq\>12> si può pagare con
    francobolli da <math|4> e da <math|5>, cioè che <math|n=4a+5b> con
    <math|a,b\<in\>\<bbb-N\>>.

    Qui la dipendenza naturale non è da <math|n-1> ma da <math|n-4>: se so
    pagare <math|n-4>, aggiungo un francobollo da <math|4>. Usiamo
    l'induzione forte con quattro casi base:

    <\equation*>
      12=4\<#22C5\>3,<space|1em>13=4\<#22C5\>2+5,<space|1em>14=4+5\<#22C5\>2,<space|1em>15=5\<#22C5\>3.
    </equation*>

    Sia ora <math|n\<geq\>16> e supponiamo che tutti gli importi da <math|12>
    a <math|n-1> siano pagabili. Poiché <math|n-4\<geq\>12>, l'importo
    <math|n-4> è pagabile, <math|n-4=4a+5b>, e allora <math|n=4(a+1)+5b>.

    I casi base sono quattro perché il passo induttivo usa <math|n-4>: per i
    valori da <math|12> a <math|15> il numero <math|n-4> cadrebbe sotto
    <math|12>, dove l'affermazione è falsa (<math|11> non è pagabile).
  </guidato>

  L'esempio più importante di induzione forte arriverà nel capitolo 10: per
  dimostrare che ogni numero <math|n\<geq\>2> è un prodotto di primi, si
  scrive <math|n=a*b> con fattori più piccoli e si usa l'ipotesi su <math|a>
  e su <math|b>, che possono essere molto lontani da <math|n-1>.

  <\inbreve>
    Il principio di induzione trasforma infinite verifiche in due
    ragionamenti: il passo base e il passo induttivo. È equivalente al
    principio del minimo, e la dimostrazione dell'equivalenza usa lo schema
    del \Scontroesempio minimo\T. Il passo base va verificato proprio nel
    punto da cui parte il passo induttivo. L'induzione forte permette di
    usare tutti i casi precedenti ed è equivalente all'induzione ordinaria,
    grazie all'affermazione cumulativa \Svale tutto fino a <math|n>\T.
    Scegliere la forma giusta dipende da come il caso <math|n> si appoggia
    sui precedenti.
  </inbreve>

  <\verifica|2.1>
    Dimostra per induzione che <math|<big|sum><rsub|k=1><rsup|n>k<rsup|2>=<frac|n(n+1)(2n+1)|6>>
    per ogni <math|n\<geq\>1>.
  </verifica>

  <\verifica|2.2>
    Dimostra per induzione che <math|3> divide <math|n<rsup|3>-n> per ogni
    <math|n\<in\>\<bbb-N\>>. (Sviluppa <math|(n+1)<rsup|3>-(n+1)>.)
  </verifica>

  <\verifica|2.3>
    Dove si rompe questa \Sdimostrazione\T che <math|n=n+1> per ogni
    <math|n>? \SSe <math|n=n+1>, sommando <math|1> a entrambi i membri si ha
    <math|n+1=n+2>: il passo induttivo funziona.\T
  </verifica>

  <\verifica|2.4>
    Dimostra con l'induzione forte che ogni <math|n\<geq\>1> si scrive come
    somma di potenze di <math|2> distinte. (Se <math|n> è pari, guarda
    <math|n/2>; se è dispari, guarda <math|n-1>.)
  </verifica>

  <chapter|Insiemi, funzioni e che cosa vuol dire
  contare><label|cap-funzioni>

  Contare sembra la cosa più semplice del mondo, finché non si prova a
  contare qualcosa di complicato: i modi di sedersi a tavola, le parole che
  si ottengono anagrammando \Snonno\T, le funzioni tra due insiemi. Per farlo
  senza errori serve un linguaggio preciso. In questo capitolo lo costruiamo:
  insiemi, funzioni, e infine la definizione stessa di \Savere <math|n>
  elementi\T. È il secondo pilastro del libro: <em|contare significa
  costruire una biiezione>.

  <section|Insiemi>

  Un insieme è determinato dai suoi elementi. Scriviamo <math|x\<in\>A> se
  <math|x> appartiene ad <math|A> e <math|x\<nin\>A> altrimenti. Si dice che
  <math|A> è <em|contenuto> in <math|B>, e si scrive <math|A\<subseteq\>B>,
  se ogni elemento di <math|A> sta anche in <math|B>.

  Due insiemi sono uguali quando hanno esattamente gli stessi elementi. Il
  modo più affidabile di dimostrarlo è la <em|doppia inclusione>:

  <\equation*>
    A=B<space|1em>\<Longleftrightarrow\><space|1em>A\<subseteq\>B<text| e
    >B\<subseteq\>A.
  </equation*>

  Saper negare un'inclusione è altrettanto utile: <math|A\<nsubseteq\>B>
  significa che <em|esiste> un elemento di <math|A> che non sta in <math|B>.
  Di conseguenza <math|A\<neq\>B> significa che almeno una delle due
  inclusioni fallisce. Quando le ipotesi su <math|A> e <math|B> sono
  perfettamente simmetriche si può dire \Ssenza perdita di generalità
  supponiamo che fallisca <math|A\<subseteq\>B>\T e prendere un
  <math|x\<in\>A> con <math|x\<nin\>B>; ma la frase è lecita solo se la
  simmetria c'è davvero.

  Dati due sottoinsiemi <math|A,B> di un insieme <math|X> (che fa da
  \Suniverso\T), definiamo

  <\itemize>
    <item>l'<em|unione> <math|A\<cup\>B>: gli elementi che stanno in <math|A>
    o in <math|B> (o in entrambi);

    <item>l'<em|intersezione> <math|A\<cap\>B>: gli elementi che stanno in
    entrambi;

    <item>la <em|differenza> <math|A\<setminus\>B>: gli elementi di <math|A>
    che non stanno in <math|B>;

    <item>il <em|complementare> <math|A<rsup|c>=X\<setminus\>A>.
  </itemize>

  <figura|<image|../../Archive/Images/aritmetica/insiemi.pdf|135.0mm|39.4mm||>|Unione,
  intersezione e differenza di due insiemi.>

  <\proposition>
    <dueto|Leggi di De Morgan>Per ogni <math|A,B\<subseteq\>X> si ha
    <math|(A\<cup\>B)<rsup|c>=A<rsup|c>\<cap\>B<rsup|c>> e
    <math|(A\<cap\>B)<rsup|c>=A<rsup|c>\<cup\>B<rsup|c>>.
  </proposition>

  <\proof>
    Un elemento <math|x\<in\>X> sta in <math|(A\<cup\>B)<rsup|c>> se e solo
    se non sta in <math|A\<cup\>B>, cioè se e solo se non sta in <math|A>
    <em|e> non sta in <math|B>, cioè se e solo se
    <math|x\<in\>A<rsup|c>\<cap\>B<rsup|c>>. Abbiamo dimostrato le due
    inclusioni contemporaneamente, perché ogni passaggio è un \Sse e solo
    se\T. La seconda legge si ottiene allo stesso modo, oppure applicando la
    prima ai complementari.
  </proof>

  Le stesse leggi valgono per un numero qualsiasi di insiemi: il
  complementare di un'unione è l'intersezione dei complementari. Ci
  serviranno nel capitolo 6.

  Infine, il <em|prodotto cartesiano> di <math|X> e <math|Y> è l'insieme
  delle coppie ordinate

  <\equation*>
    X\<times\>Y=<around*|{|(x,y):x\<in\>X, y\<in\>Y|}>.
  </equation*>

  L'ordine conta: in generale <math|(x,y)\<neq\>(y,x)>, e <math|(x,x)> è una
  coppia a tutti gli effetti, non un singolo elemento.

  <section|Funzioni>

  Una <em|funzione> <math|f:X\<rightarrow\>Y> associa a ogni elemento
  <math|x> del <em|dominio> <math|X> un unico elemento <math|f(x)> del
  <em|codominio> <math|Y>. Tre insistenze in questa frase: <em|ogni> elemento
  del dominio ha un'immagine, l'immagine è <em|unica>, e il codominio fa
  parte dei dati della funzione. L'<em|immagine> di <math|f> è l'insieme dei
  valori effettivamente assunti,

  <\equation*>
    <math-up|Im>(f)=<around*|{|f(x):x\<in\>X|}>\<subseteq\>Y,
  </equation*>

  e in generale è più piccola del codominio.

  Due funzioni <math|f,g:X\<rightarrow\>Y> sono uguali se <math|f(x)=g(x)>
  per ogni <math|x\<in\>X>. Non basta che abbiano la stessa immagine:
  <math|f(x)=x> e <math|g(x)=1-x>, come funzioni da <math|<around*|{|0,1|}>>
  in sé, hanno la stessa immagine ma sono diverse.

  <\definition>
    Una funzione <math|f:X\<rightarrow\>Y> si dice

    <\itemize>
      <item><em|iniettiva> se elementi diversi hanno immagini diverse:
      <math|x<rsub|1>\<neq\>x<rsub|2>\<Rightarrow\>f(x<rsub|1>)\<neq\>f(x<rsub|2>)>,
      o equivalentemente <math|f(x<rsub|1>)=f(x<rsub|2>)\<Rightarrow\>x<rsub|1>=x<rsub|2>>;

      <item><em|suriettiva> se ogni elemento del codominio è immagine di
      qualcosa: per ogni <math|y\<in\>Y> esiste <math|x\<in\>X> con
      <math|f(x)=y>, cioè <math|<math-up|Im>(f)=Y>;

      <item><em|biiettiva> (o una <em|biiezione>) se è sia iniettiva sia
      suriettiva.
    </itemize>
  </definition>

  <figura|<image|../../Archive/Images/aritmetica/funzioni.pdf|160.0mm|47.5mm||>|Quattro
  funzioni: generica, iniettiva, suriettiva, biiettiva.>

  Una biiezione è una corrispondenza perfetta: ogni elemento di <math|Y> è
  colpito da esattamente un elemento di <math|X>. Per questo si può \Stornare
  indietro\T: la <em|funzione inversa> <math|f<rsup|-1>:Y\<rightarrow\>X>
  manda <math|y> nell'unico <math|x> con <math|f(x)=y>, e soddisfa
  <math|f<rsup|-1>(f(x))=x> e <math|f(f<rsup|-1>(y))=y>.

  La <em|composizione> di <math|f:X\<rightarrow\>Y> e
  <math|g:Y\<rightarrow\>Z> è la funzione <math|g\<circ\>f:X\<rightarrow\>Z>
  definita da <math|(g\<circ\>f)(x)=g(f(x))>: prima si applica <math|f>, poi
  <math|g>. Si legge da destra verso sinistra, ed è una convenzione da non
  dimenticare (nel capitolo 20, con le permutazioni, sarà essenziale).

  <\proposition>
    La composizione di due biiezioni è una biiezione.
  </proposition>

  <\proof>
    Siano <math|f:X\<rightarrow\>Y> e <math|g:Y\<rightarrow\>Z> biiettive. Se
    <math|g(f(x<rsub|1>))=g(f(x<rsub|2>))>, l'iniettività di <math|g> dà
    <math|f(x<rsub|1>)=f(x<rsub|2>)> e quella di <math|f> dà
    <math|x<rsub|1>=x<rsub|2>>: dunque <math|g\<circ\>f> è iniettiva. Dato
    <math|z\<in\>Z>, per la suriettività di <math|g> esiste <math|y> con
    <math|g(y)=z>, e per quella di <math|f> esiste <math|x> con
    <math|f(x)=y>; allora <math|(g\<circ\>f)(x)=z>, e <math|g\<circ\>f> è
    suriettiva.
  </proof>

  <section|Che cosa vuol dire contare>

  Quando contiamo cinque oggetti diciamo \Suno, due, tre, quattro, cinque\T
  indicandoli uno alla volta. Stiamo costruendo una biiezione tra gli oggetti
  e l'insieme <math|<around*|{|1,2,3,4,5|}>>. Indichiamo

  <\equation*>
    [r]=<around*|{|1,2,\<ldots\>,r|}>,<space|2em>[0]=\<varnothing\>.
  </equation*>

  <\concetto|Cardinalità>
    Un insieme <math|X> ha <math|r> elementi, e si scrive <math|\|X\|=r>, se
    esiste una biiezione <math|f:[r]\<rightarrow\>X>. Si dice che <math|r> è
    la <em|cardinalità> di <math|X> (si usano anche le notazioni <math|#X> e
    <math|<math-up|card>(X)>). Due insiemi hanno la stessa cardinalità se
    esiste una biiezione tra loro.
  </concetto>

  Numerare da <math|1> a <math|r> è una convenzione; si potrebbe partire da
  <math|0>, purché lo si faccia sempre. Dalla proposizione precedente segue
  che due insiemi finiti hanno la stessa cardinalità se e solo se esiste una
  biiezione tra di loro: se <math|f:[r]\<rightarrow\>X> e
  <math|g:[r]\<rightarrow\>Y> sono biiezioni, allora
  <math|g\<circ\>f<rsup|-1>:X\<rightarrow\>Y> è una biiezione; viceversa, se
  <math|h:X\<rightarrow\>Y> è una biiezione e <math|f:[r]\<rightarrow\>X>
  numera <math|X>, allora <math|h\<circ\>f> numera <math|Y>.

  <\immagine|Trasportare una numerazione>
    Una biiezione <math|h:X\<rightarrow\>Y> è come un'etichettatrice: se gli
    elementi di <math|X> hanno già un numero, <math|h> trasferisce le
    etichette agli elementi di <math|Y>. Gran parte della combinatoria
    consiste nel trovare biiezioni che trasformano un insieme difficile da
    contare in uno facile.
  </immagine>

  Perché la definizione abbia senso occorre che uno stesso insieme non possa
  avere due cardinalità diverse, cioè che non esista una biiezione tra
  <math|[r]> e <math|[s]> se <math|r\<neq\>s>. È un fatto intuitivo che segue
  dal principio dei cassetti della prossima sezione (se <math|r\<gtr\>s>,
  nessuna funzione <math|[r]\<rightarrow\>[s]> è iniettiva).

  <section|Il principio dei cassetti>

  <\concetto|Principio dei cassetti>
    Se si mettono <math|n> oggetti in <math|k> cassetti e <math|n\<gtr\>k>,
    almeno un cassetto contiene almeno due oggetti. In linguaggio di
    funzioni: se <math|X,Y> sono finiti e <math|\|X\|\<gtr\>\|Y\|>, nessuna
    funzione <math|f:X\<rightarrow\>Y> è iniettiva.
  </concetto>

  <figura|<image|../../Archive/Images/aritmetica/cassetti.pdf|110.5mm|31.9mm||>|Cinque
  oggetti in quattro cassetti: almeno un cassetto ne contiene due.>

  La giustificazione è immediata: se <math|f> fosse iniettiva, gli
  <math|\|X\|> elementi di <math|X> avrebbero immagini tutte distinte, e
  <math|Y> dovrebbe contenere almeno <math|\|X\|> elementi. (Una
  dimostrazione completamente formale si fa per induzione su <math|\|Y\|>.)
  Il principio è banale da enunciare e sorprendentemente potente da usare: il
  segreto è scegliere bene che cosa sono gli oggetti e che cosa sono i
  cassetti.

  <\guidato|Otto interi e il numero 7>
    Dimostriamo che, presi otto interi qualsiasi, ce ne sono due la cui
    differenza è divisibile per <math|7>.

    I cassetti sono i possibili resti della divisione per <math|7>:
    <math|0,1,\<ldots\>,6>, cioè sette cassetti. Gli oggetti sono gli otto
    interi, ciascuno messo nel cassetto del proprio resto. Poiché
    <math|8\<gtr\>7>, due interi <math|a> e <math|b> hanno lo stesso resto
    <math|r>: <math|a=7q+r> e <math|b=7q<rprime|'>+r>. Allora
    <math|a-b=7(q-q<rprime|'>)> è divisibile per <math|7>.

    Questo piccolo argomento contiene in germe tutta l'aritmetica modulare
    dei capitoli 13 e 14, e riapparirà nel capitolo 16 per spiegare perché
    gli sviluppi decimali delle frazioni si ripetono.
  </guidato>

  <section|Insiemi finiti della stessa taglia>

  Fra insiemi finiti con lo stesso numero di elementi, iniettività e
  suriettività sono la stessa cosa.

  <\proposition>
    Siano <math|X,Y> finiti con <math|\|X\|=\|Y\|=n> e sia
    <math|f:X\<rightarrow\>Y>. Allora <math|f> è iniettiva
    <math|\<Longleftrightarrow\>> <math|f> è suriettiva
    <math|\<Longleftrightarrow\>> <math|f> è biiettiva.
  </proposition>

  <\proof>
    Basta mostrare che iniettiva equivale a suriettiva. Se <math|f> è
    iniettiva, le <math|n> immagini degli elementi di <math|X> sono distinte,
    quindi <math|<math-up|Im>(f)> ha <math|n> elementi; essendo contenuta in
    <math|Y>, che ne ha <math|n>, coincide con <math|Y>. Se <math|f> non è
    iniettiva, due elementi di <math|X> hanno la stessa immagine, quindi
    <math|<math-up|Im>(f)> ha al più <math|n-1> elementi e non può essere
    tutto <math|Y>: <math|f> non è suriettiva.
  </proof>

  <\attenzione|Con gli insiemi infiniti è falso>
    La funzione <math|f:\<bbb-N\>\<rightarrow\>\<bbb-N\>>, <math|f(n)=n+1>, è
    iniettiva ma non suriettiva: <math|0> non è il successore di nessuno. Un
    insieme infinito può essere in biiezione con una sua parte propria (qui
    <math|\<bbb-N\>> e <math|\<bbb-N\>\<setminus\><around*|{|0|}>>), cosa
    impossibile per gli insiemi finiti. La proposizione precedente usa in
    modo essenziale la finitezza.
  </attenzione>

  Questa proposizione ci farà risparmiare molta fatica: per dimostrare che
  una funzione tra due insiemi finiti della stessa cardinalità è una
  biiezione, basta verificare una sola delle due proprietà. La useremo così
  nel teorema cinese del resto (capitolo 18).

  <\inbreve>
    Gli insiemi si confrontano con la doppia inclusione. Le funzioni hanno
    dominio, codominio e immagine, e possono essere iniettive, suriettive o
    biiettive; le biiezioni si invertono e si compongono. Contare un insieme
    significa costruire una biiezione con <math|[r]>. Il principio dei
    cassetti impedisce le funzioni iniettive verso insiemi più piccoli, e tra
    insiemi finiti della stessa taglia iniettività e suriettività coincidono.
  </inbreve>

  <\verifica|3.1>
    Siano <math|A,B,C> sottoinsiemi di <math|X>. Dimostra con la doppia
    inclusione che <math|A\<cap\>(B\<cup\>C)=(A\<cap\>B)\<cup\>(A\<cap\>C)>.
  </verifica>

  <\verifica|3.2>
    Siano <math|f:X\<rightarrow\>Y> e <math|g:Y\<rightarrow\>Z>. Dimostra che
    se <math|g\<circ\>f> è iniettiva allora <math|f> è iniettiva, e che se
    <math|g\<circ\>f> è suriettiva allora <math|g> è suriettiva. Trova un
    esempio in cui <math|g\<circ\>f> è biiettiva ma <math|g> non è iniettiva.
  </verifica>

  <\verifica|3.3>
    In un gruppo di <math|367> persone, è certo che due festeggino il
    compleanno nello stesso giorno? E fra <math|n+1> numeri scelti in
    <math|<around*|{|1,\<ldots\>,2n|}>>, è certo che ce ne siano due
    consecutivi? (Per la seconda domanda, prova i cassetti
    <math|<around*|{|1,2|}>,<around*|{|3,4|}>,\<ldots\>>.)
  </verifica>

  <chapter|Contare: coppie, funzioni, sottoinsiemi><label|cap-contare>

  Con il linguaggio del capitolo precedente possiamo cominciare a contare sul
  serio. Le formule che troveremo sono poche e semplici, ma ognuna nasce da
  un'idea che si riusa ovunque: scelte indipendenti si moltiplicano, scelte
  vincolate si contano una dopo l'altra, e quando ogni oggetto è contato più
  volte nello stesso modo si divide.

  <section|Il principio del prodotto>

  Se <math|\|X\|=n> e <math|\|Y\|=m>, quante coppie <math|(x,y)> ci sono in
  <math|X\<times\>Y>? Disponiamole in una tabella: una riga per ogni elemento
  di <math|X>, una colonna per ogni elemento di <math|Y>. Ogni casella è una
  coppia e ogni coppia occupa una casella. Le caselle sono <math|n> righe per
  <math|m> colonne:

  <\equation*>
    \|X\<times\>Y\|=\|X\|\<#22C5\>\|Y\|=n*m.
  </equation*>

  Lo stesso ragionamento, ripetuto, dà <math|\|X<rsub|1>\<times\>\<cdots\>\<times\>X<rsub|r>\|=\|X<rsub|1>\|\<cdots\>\|X<rsub|r>\|>.

  <\concetto|Principio del prodotto>
    Se un oggetto si costruisce con una sequenza di scelte, e la
    <math|i>-esima scelta si può fare in <math|c<rsub|i>> modi <em|qualunque
    siano state le scelte precedenti>, allora gli oggetti sono
    <math|c<rsub|1>c<rsub|2>\<cdots\>c<rsub|r>>, purché oggetti diversi
    corrispondano a sequenze di scelte diverse.
  </concetto>

  La clausola in corsivo è importante: il numero di possibilità per ogni
  scelta non deve dipendere da come sono andate le scelte prima (possono
  cambiare le possibilità concrete, non il loro numero). E la clausola finale
  chiede che il procedimento non produca due volte lo stesso oggetto.

  <section|Quante funzioni ci sono>

  Siano <math|X=<around*|{|x<rsub|1>,\<ldots\>,x<rsub|n>|}>> e
  <math|\|Y\|=m>. Per costruire una funzione <math|f:X\<rightarrow\>Y>
  scegliamo <math|f(x<rsub|1>)> tra <math|m> valori, poi <math|f(x<rsub|2>)>
  tra <math|m> valori, e così via fino a <math|f(x<rsub|n>)>. Le scelte sono
  indipendenti (nulla vieta che due elementi abbiano la stessa immagine, e la
  funzione può anche essere costante), e funzioni diverse corrispondono a
  scelte diverse. Quindi

  <\equation*>
    \|<around*|{|f:X\<rightarrow\>Y|}>\|=m<rsup|n>=\|Y\|<rsup|\|X\|>.
  </equation*>

  Per questo l'insieme delle funzioni da <math|X> a <math|Y> si indica spesso
  con <math|Y<rsup|X>>: la notazione è fatta apposta perché
  <math|\|Y<rsup|X>\|=\|Y\|<rsup|\|X\|>>.

  <section|Funzioni iniettive e liste senza ripetizioni>

  Se vogliamo <math|f> iniettiva, le scelte non sono più libere:
  <math|f(x<rsub|1>)> si sceglie in <math|m> modi, <math|f(x<rsub|2>)> in
  <math|m-1> (deve essere diverso dal primo), <math|f(x<rsub|3>)> in
  <math|m-2>, fino a <math|f(x<rsub|n>)> in <math|m-n+1> modi. Il numero di
  possibilità concrete cambia a seconda delle scelte fatte, ma il loro
  <em|numero> no, quindi il principio del prodotto si applica.

  <\proposition>
    Se <math|\|X\|=n> e <math|\|Y\|=m>, il numero di funzioni iniettive
    <math|X\<rightarrow\>Y> è

    <\equation*>
      m(m-1)\<cdots\>(m-n+1)=<frac|m!|(m-n)!><space|1em><text|se
      >n\<leq\>m,<space|2em>0<space|1em><text|se >n\<gtr\>m.
    </equation*>
  </proposition>

  Il caso <math|n\<gtr\>m> è il principio dei cassetti. Qui
  <math|m!=1\<#22C5\>2\<cdots\>m> è il <em|fattoriale>, e si pone per
  convenzione <math|0!=1>, in modo che la formula funzioni anche per
  <math|n=m> e per <math|n=0> (esiste esattamente una funzione dall'insieme
  vuoto: quella che non fa nulla). L'uguaglianza tra le due espressioni viene
  da <math|m!=m(m-1)\<cdots\>(m-n+1)\<#22C5\>(m-n)!>.

  Una funzione iniettiva <math|f:[n]\<rightarrow\>Y> è la stessa cosa di una
  <em|lista ordinata senza ripetizioni> <math|(f(1),\<ldots\>,f(n))> di
  elementi di <math|Y>. Contare le une o le altre è lo stesso.

  Nel caso <math|n=m>, le funzioni iniettive sono le biiezioni (capitolo 3) e
  sono <math|n!>: sono i modi di mettere in fila <math|n> oggetti distinti.
  Le biiezioni di un insieme in sé si chiamano <em|permutazioni> e saranno le
  protagoniste del capitolo 20.

  <section|Tutti i sottoinsiemi>

  L'<em|insieme delle parti> di <math|X>, indicato con <math|\<cal-P\>(X)>, è
  l'insieme di tutti i sottoinsiemi di <math|X>, compresi
  <math|\<varnothing\>> e <math|X>. Quanti sono?

  Costruire un sottoinsieme <math|A\<subseteq\>X> significa decidere, per
  ciascun elemento di <math|X>, se metterlo in <math|A> oppure no: due
  possibilità indipendenti per ognuno degli <math|n> elementi.

  <figura|<image|../../Archive/Images/aritmetica/parti.pdf|155.0mm|62.5mm||>|L'albero
  delle decisioni per <math|X=<around*|{|a,b,c|}>>: tre domande \Ssì o no\T,
  otto sottoinsiemi.>

  <\proposition>
    Se <math|\|X\|=n>, allora <math|\|\<cal-P\>(X)\|=2<rsup|n>>.
  </proposition>

  Possiamo rendere l'argomento una biiezione esplicita. A ogni
  <math|A\<subseteq\>X> associamo la sua <em|funzione caratteristica>

  <\equation*>
    \<bbb-1\><rsub|A>:X\<rightarrow\><around*|{|0,1|}>,<space|2em>\<bbb-1\><rsub|A>(x)=<choice|<tformat|<table|<row|<cell|1>|<cell|<text|se
    >x\<in\>A,>>|<row|<cell|0>|<cell|<text|se >x\<nin\>A.>>>>>
  </equation*>

  Il sottoinsieme determina la funzione, e la funzione determina il
  sottoinsieme, che si ricostruisce come <math|A=<around*|{|x\<in\>X:\<bbb-1\><rsub|A>(x)=1|}>>.
  La corrispondenza <math|A\<mapsto\>\<bbb-1\><rsub|A>> è quindi una
  biiezione tra <math|\<cal-P\>(X)> e <math|<around*|{|0,1|}><rsup|X>>, e per
  la sezione precedente

  <\equation*>
    \|\<cal-P\>(X)\|=\|<around*|{|0,1|}><rsup|X>\|=2<rsup|n>.
  </equation*>

  Per esempio, con <math|X=<around*|{|a,b,c|}>> e <math|A=<around*|{|a,c|}>>
  si ha <math|\<bbb-1\><rsub|A>(a)=1>, <math|\<bbb-1\><rsub|A>(b)=0>,
  <math|\<bbb-1\><rsub|A>(c)=1>: il sottoinsieme è codificato dalla stringa
  <math|101>. Le funzioni caratteristiche ci accompagneranno a lungo: nel
  capitolo 6 diventeranno una vera calcolatrice per le unioni e le
  intersezioni.

  <section|Quando ogni oggetto è contato più volte>

  Spesso il modo più comodo di contare produce ogni oggetto più di una volta.
  Se sappiamo che <em|ogni> oggetto compare esattamente <math|k> volte, il
  rimedio è dividere.

  <\concetto|Principio della divisione>
    Se un procedimento produce <math|N> risultati e ogni oggetto che vogliamo
    contare corrisponde esattamente a <math|k> risultati, allora gli oggetti
    sono <math|N/k>.
  </concetto>

  Il punto essenziale è che il sovraconteggio sia <em|uniforme>: se oggetti
  diversi fossero contati un numero diverso di volte, dividere per un unico
  numero sarebbe un errore.

  <\guidato|Scegliere due lettere fra tre>
    Quanti sottoinsiemi di due elementi ha <math|<around*|{|a,b,c|}>>?
    Contiamo prima le liste ordinate di due lettere distinte:
    <math|3\<#22C5\>2=6>, cioè <math|a*b,a*c,b*a,b*c,c*a,c*b>. Ogni
    sottoinsieme, per esempio <math|<around*|{|a,b|}>>, corrisponde
    esattamente a due liste, <math|a*b> e <math|b*a>. Dunque i sottoinsiemi
    sono <math|6/2=3>.
  </guidato>

  <figura|<image|../../Archive/Images/aritmetica/scelte.pdf|155.0mm|72.5mm||>|Sei
  liste ordinate, tre insiemi: ogni insieme è raggiunto da <math|2!> liste.>

  Questa idea, cioè raggruppare gli oggetti contati in famiglie della stessa
  grandezza e contare le famiglie, ha un nome preciso che incontreremo nel
  capitolo 12: stiamo contando le <em|classi di una relazione di
  equivalenza>. Nel prossimo capitolo la applichiamo in generale e otteniamo
  i coefficienti binomiali.

  <\inbreve>
    Scelte indipendenti si moltiplicano: <math|\|X\<times\>Y\|=n*m> e le
    funzioni <math|X\<rightarrow\>Y> sono <math|m<rsup|n>>. Se le scelte sono
    vincolate ma il numero di possibilità a ogni passo è fisso, si moltiplica
    ancora: le funzioni iniettive sono <math|m!/(m-n)!>, le permutazioni
    <math|n!>. I sottoinsiemi di un insieme con <math|n> elementi sono
    <math|2<rsup|n>>, in biiezione con le funzioni caratteristiche. Quando
    ogni oggetto è contato <math|k> volte, si divide per <math|k>.
  </inbreve>

  <\verifica|4.1>
    Quante sono le targhe formate da due lettere (su <math|26>), tre cifre e
    due lettere? E quante, se le quattro lettere devono essere tutte diverse?
  </verifica>

  <\verifica|4.2>
    Quante funzioni <math|f:[4]\<rightarrow\>[3]> verificano
    <math|f(1)\<neq\>f(2)>? (Contale direttamente con il principio del
    prodotto.)
  </verifica>

  <\verifica|4.3>
    In quanti modi <math|n> persone si possono sedere intorno a un tavolo
    rotondo, se due disposizioni che differiscono per una rotazione sono
    considerate uguali? Usa il principio della divisione.
  </verifica>

  <chapter|Scegliere: i coefficienti binomiali><label|cap-binomiali>

  Scegliere tre studenti da una classe, decidere quali parentesi forniscono
  una <math|a> nello sviluppo di <math|(a+b)<rsup|n>>, disporre le lettere di
  una parola: sono tutti modi di scegliere <em|senza badare all'ordine>. Il
  numero che li conta, il coefficiente binomiale, è il più importante della
  combinatoria. In questo capitolo lo costruiamo, ne scopriamo le proprietà e
  impariamo una delle tecniche più eleganti della matematica: contare la
  stessa cosa in due modi.

  <section|Sottoinsiemi con un numero fissato di elementi>

  <\definition>
    Siano <math|n,r\<in\>\<bbb-N\>>. Il <em|coefficiente binomiale>
    <math|<binom|n|r>> (si legge \S<math|n> su <math|r>\T) è il numero di
    sottoinsiemi con <math|r> elementi di un insieme con <math|n> elementi.
  </definition>

  Il numero non dipende da quale insieme scegliamo, ma solo dalla sua
  cardinalità: una biiezione tra due insiemi trasforma i sottoinsiemi di
  <math|r> elementi dell'uno in quelli dell'altro.

  <\proposition>
    Per <math|0\<leq\>r\<leq\>n> si ha <math|<binom|n|r>=<frac|n!|r!(n-r)!>>.
  </proposition>

  <\proof>
    Contiamo prima le liste ordinate di <math|r> elementi distinti: per il
    capitolo 4 sono <math|n(n-1)\<cdots\>(n-r+1)=<frac|n!|(n-r)!>>. Ogni
    sottoinsieme di <math|r> elementi corrisponde a esattamente <math|r!>
    liste, tante quante le permutazioni dei suoi elementi. Per il principio
    della divisione,

    <\equation*>
      <binom|n|r>=<frac|1|r!>\<#22C5\><frac|n!|(n-r)!>.
    </equation*>
  </proof>

  Il fattore <math|r!> è esattamente il prezzo dell'ordine: le liste
  <math|(a,b,c)> e <math|(b,a,c)> sono diverse, gli insiemi
  <math|<around*|{|a,b,c|}>> e <math|<around*|{|b,a,c|}>> no.

  Alcuni casi limite meritano attenzione. C'è un solo sottoinsieme con
  <math|0> elementi (il vuoto) e uno solo con <math|n> elementi (tutto
  l'insieme), quindi <math|<binom|n|0>=<binom|n|n>=1>, in accordo con
  <math|0!=1>. Se <math|r\<gtr\>n> non ci sono sottoinsiemi con <math|r>
  elementi. È comodo estendere la definizione ponendo

  <\equation*>
    <binom|n|r>=0<space|1em><text|se >r\<less\>0<text| oppure >r\<gtr\>n.
  </equation*>

  Questa convenzione, che corrisponde al conteggio reale, renderà le formule
  più pulite: potremo scrivere somme senza preoccuparci dei termini ai bordi.

  <section|Simmetria>

  <\proposition>
    Per <math|0\<leq\>r\<leq\>n> si ha <math|<binom|n|r>=<binom|n|n-r>>.
  </proposition>

  La formula col fattoriale lo mostra subito, ma la ragione vera è
  combinatoria. Scegliere i <math|r> elementi da prendere è lo stesso che
  scegliere gli <math|n-r> da lasciare. In termini precisi: se
  <math|\|X\|=n>, la funzione <math|A\<mapsto\>X\<setminus\>A> manda i
  sottoinsiemi di <math|r> elementi in quelli di <math|n-r> elementi, ed è
  una biiezione perché è l'inversa di sé stessa (il complementare del
  complementare è l'insieme di partenza). Due insiemi in biiezione hanno la
  stessa cardinalità.

  <\immagine|Le dimostrazioni combinatorie>
    Una formula tra numeri si può dimostrare con l'algebra, ma spesso è più
    illuminante trovare <em|che cosa contano> i due membri e costruire una
    biiezione. La dimostrazione algebrica convince; quella combinatoria
    spiega.
  </immagine>

  <section|Il triangolo di Pascal>

  <\proposition>
    <dueto|Identità di Pascal>Per ogni <math|n\<geq\>0> e ogni intero
    <math|r> si ha <math|<binom|n|r-1>+<binom|n|r>=<binom|n+1|r>>.
  </proposition>

  <\proof>
    <em|Dimostrazione combinatoria.> Sia <math|X> un insieme con <math|n+1>
    elementi e fissiamo un suo elemento <math|x>. I sottoinsiemi di <math|X>
    con <math|r> elementi si dividono in due famiglie disgiunte: quelli che
    contengono <math|x> e quelli che non lo contengono. Un sottoinsieme della
    prima famiglia è <math|x> più <math|r-1> elementi scelti tra gli altri
    <math|n>: sono <math|<binom|n|r-1>>. Uno della seconda è formato da
    <math|r> elementi scelti tra gli altri <math|n>: sono <math|<binom|n|r>>.
    Sommando si ottiene <math|<binom|n+1|r>>. (Grazie alla convenzione dei
    binomiali nulli, l'argomento funziona anche ai bordi.)

    <em|Dimostrazione algebrica.> Per <math|1\<leq\>r\<leq\>n>, portando le
    frazioni a denominatore comune,

    <\eqnarray*>
      <tformat|<table|<row|<cell|<binom|n|r-1>+<binom|n|r>>|<cell|=>|<cell|<frac|n!|(r-1)!(n-r+1)!>+<frac|n!|r!(n-r)!>=<frac|n!<space|0.2em>r|r!(n-r+1)!>+<frac|n!(n-r+1)|r!(n-r+1)!>>>|<row|<cell|>|<cell|=>|<cell|<frac|n!(n+1)|r!(n+1-r)!>=<binom|n+1|r>.>>>>
    </eqnarray*>

    I casi <math|r=0> e <math|r=n+1> si verificano direttamente.
  </proof>

  Disponendo i coefficienti in righe, una per ogni <math|n>, ogni numero è la
  somma dei due sopra di lui: è il celebre triangolo di Pascal.

  <figura|<image|../../Archive/Images/aritmetica/pascal.pdf|93.5mm|45.7mm||>|Il
  triangolo di Pascal: <math|<binom|5|2>=<binom|4|1>+<binom|4|2>=4+6=10>.>

  <section|Il binomio di Newton>

  Sviluppiamo <math|(a+b)<rsup|3>=(a+b)(a+b)(a+b)>. Applicando la proprietà
  distributiva, ogni termine dello sviluppo si ottiene scegliendo da ciascuna
  delle tre parentesi o la <math|a> o la <math|b>, e moltiplicando le scelte.
  Il monomio <math|a<rsup|2>b> compare tante volte quanti sono i modi di
  scegliere <em|quali due parentesi> forniscono la <math|a>:
  <math|<binom|3|2>=3>. In generale, il monomio <math|a<rsup|k>b<rsup|n-k>>
  nello sviluppo di <math|(a+b)<rsup|n>> compare <math|<binom|n|k>> volte.

  <\theorem>
    <dueto|Binomio di Newton>Per ogni <math|n\<in\>\<bbb-N\>> e ogni coppia
    di numeri <math|a,b> si ha

    <\equation*>
      (a+b)<rsup|n>=<big|sum><rsub|k=0><rsup|n><binom|n|k>a<rsup|k>b<rsup|n-k>.
    </equation*>
  </theorem>

  L'argomento delle parentesi è già una dimostrazione. Vediamone anche una
  per induzione: è un ottimo allenamento sulla manipolazione degli indici.

  <\proof>
    Per <math|n=0> entrambi i membri valgono <math|1>. Supponiamo la formula
    vera per <math|n>. Allora

    <\equation*>
      (a+b)<rsup|n+1>=(a+b)<big|sum><rsub|i=0><rsup|n><binom|n|i>a<rsup|i>b<rsup|n-i>=<big|sum><rsub|i=0><rsup|n><binom|n|i>a<rsup|i+1>b<rsup|n-i>+<big|sum><rsub|i=0><rsup|n><binom|n|i>a<rsup|i>b<rsup|n+1-i>.
    </equation*>

    Nella prima somma poniamo <math|j=i+1>: quando <math|i> va da <math|0> a
    <math|n>, <math|j> va da <math|1> a <math|n+1>, e il termine diventa
    <math|<binom|n|j-1>a<rsup|j>b<rsup|n+1-j>>. Nella seconda rinominiamo
    semplicemente <math|i> in <math|j>. Grazie alla convenzione
    <math|<binom|n|-1>=<binom|n|n+1>=0>, possiamo far correre entrambe le
    somme da <math|j=0> a <math|j=n+1> senza cambiarne il valore:

    <\equation*>
      (a+b)<rsup|n+1>=<big|sum><rsub|j=0><rsup|n+1><around*|[|<binom|n|j-1>+<binom|n|j>|]>a<rsup|j>b<rsup|n+1-j>=<big|sum><rsub|j=0><rsup|n+1><binom|n+1|j>a<rsup|j>b<rsup|n+1-j>,
    </equation*>

    per l'identità di Pascal. È la formula per <math|n+1>.
  </proof>

  <\attenzione|Gli indici sono variabili locali>
    Nelle due somme della dimostrazione la lettera <math|i> non è \Sla
    stessa\T: ogni indice vive solo dentro la propria somma. Proprio per
    questo possiamo traslarlo in una somma e non nell'altra. Ciò che non si
    può fare è cambiare il termine senza cambiare gli estremi, o viceversa.
  </attenzione>

  <subsection|Due conseguenze>

  Ponendo <math|a=b=1> otteniamo

  <\equation*>
    <big|sum><rsub|k=0><rsup|n><binom|n|k>=2<rsup|n>.
  </equation*>

  Anche questa ha un significato: a sinistra contiamo i sottoinsiemi di un
  insieme con <math|n> elementi raggruppandoli per cardinalità, a destra li
  contiamo tutti insieme come nel capitolo 4. È un primo esempio di conteggio
  doppio.

  Ponendo invece <math|a=-1> e <math|b=1>, per <math|n\<geq\>1> otteniamo
  <math|0=(1-1)<rsup|n>=<big|sum><rsub|k=0><rsup|n>(-1)<rsup|k><binom|n|k>>,
  cioè

  <\equation*>
    <big|sum><rsub|k<text| pari>><binom|n|k>=<big|sum><rsub|k<text|
    dispari>><binom|n|k>.
  </equation*>

  <\proposition>
    Se <math|\|X\|=n\<geq\>1>, i sottoinsiemi di <math|X> con un numero pari
    di elementi sono tanti quanti quelli con un numero dispari, e sono
    <math|2<rsup|n-1>> ciascuno.
  </proposition>

  <\proof>
    L'uguaglianza delle due somme è stata appena dimostrata; poiché insieme
    fanno <math|2<rsup|n>>, ciascuna vale <math|2<rsup|n-1>>.

    Diamo anche una dimostrazione con una biiezione. Fissiamo <math|x\<in\>X>
    e associamo a ogni sottoinsieme <math|A> il sottoinsieme
    <math|A<rprime|'>> ottenuto \Saccendendo o spegnendo\T <math|x>: se
    <math|x\<in\>A> lo togliamo, se <math|x\<nin\>A> lo aggiungiamo. Questa
    operazione cambia la cardinalità di <math|1>, quindi scambia pari e
    dispari, ed è l'inversa di sé stessa: è una biiezione tra sottoinsiemi
    pari e dispari. (In termini insiemistici
    <math|A<rprime|'>=A\<triangle\><around*|{|x|}>>, la <em|differenza
    simmetrica>.)
  </proof>

  <section|Parole con lettere ripetute>

  Quanti anagrammi ha la parola NONNO? Se le cinque lettere fossero tutte
  diverse, sarebbero <math|5!=120>. Proviamo a renderle diverse per finta,
  numerando le copie: <math|N<rsub|1>,N<rsub|2>,N<rsub|3>,O<rsub|1>,O<rsub|2>>.
  Le <math|120> disposizioni delle lettere numerate, una volta cancellati i
  numeri, si raggruppano: ogni parola vera proviene da tutte le disposizioni
  che differiscono solo per come sono numerate le N (<math|3!> modi) e le O
  (<math|2!> modi).

  <figura|<image|../../Archive/Images/aritmetica/anagrammi.pdf|155.0mm|50.0mm||>|Le
  <math|3!\<#22C5\>2!=12> versioni numerate di una stessa parola.>

  Per il principio della divisione gli anagrammi sono
  <math|<frac|5!|3!<space|0.2em>2!>=<frac|120|12>=10>.

  <\proposition>
    Una parola di lunghezza <math|n> che contiene <math|n<rsub|1>> copie di
    una prima lettera, <math|n<rsub|2>> di una seconda, \<ldots\>,
    <math|n<rsub|k>> di una <math|k>-esima (con
    <math|n<rsub|1>+\<cdots\>+n<rsub|k>=n>) ha

    <\equation*>
      <binom|n|n<rsub|1>,n<rsub|2>,\<ldots\>,n<rsub|k>>=<frac|n!|n<rsub|1>!<space|0.2em>n<rsub|2>!\<cdots\>n<rsub|k>!>
    </equation*>

    anagrammi distinti. Questo numero si chiama <em|coefficiente
    multinomiale>.
  </proposition>

  C'è un'altra lettura dello stesso numero. Un anagramma è determinato da
  <em|quali posizioni> occupa ogni lettera: le posizioni
  <math|<around*|{|1,\<ldots\>,n|}>> vengono divise in <math|k> gruppi
  etichettati, di grandezze <math|n<rsub|1>,\<ldots\>,n<rsub|k>>. Quindi il
  coefficiente multinomiale conta anche i modi di spezzare un insieme di
  <math|n> elementi in blocchi <math|X<rsub|1>,\<ldots\>,X<rsub|k>>
  disgiunti, distinguibili, con <math|\|X<rsub|i>\|=n<rsub|i>>. Con due sole
  lettere ritroviamo il binomiale: <math|<binom|n|r,n-r>=<binom|n|r>>, perché
  scegliere le posizioni della prima lettera determina tutto.

  <section|Stelle e sbarre>

  In quanti modi si possono distribuire <math|n> caramelle identiche fra
  <math|r> bambini? Equivalentemente: quante sono le soluzioni dell'equazione

  <\equation*>
    u<rsub|1>+u<rsub|2>+\<cdots\>+u<rsub|r>=n<space|2em><text|con
    >u<rsub|i>\<in\>\<bbb-N\>?
  </equation*>

  Rappresentiamo una soluzione con una fila di <math|n> stelle e <math|r-1>
  sbarre: le stelle prima della prima sbarra sono <math|u<rsub|1>>, quelle
  tra la prima e la seconda sono <math|u<rsub|2>>, e così via.

  <figura|<image|../../Archive/Images/aritmetica/stelle.pdf|126.0mm|33.8mm||>|La
  fila <math|\<star\>\<star\>\|\<star\>\<star\>\|> codifica la soluzione
  <math|x<rsub|1>=2>, <math|x<rsub|2>=2>, <math|x<rsub|3>=0> di
  <math|x<rsub|1>+x<rsub|2>+x<rsub|3>=4>.>

  Ogni fila di <math|n+r-1> simboli, di cui <math|r-1> sbarre, codifica
  esattamente una soluzione, e viceversa. Una fila è determinata da quali
  posizioni occupano le sbarre.

  <\proposition>
    <dueto|Stelle e sbarre>L'equazione <math|u<rsub|1>+\<cdots\>+u<rsub|r>=n>
    ha <math|<binom|n+r-1|r-1>> soluzioni in naturali.
  </proposition>

  Le sbarre sono sempre una in meno delle incognite. Se invece si chiedono
  soluzioni <em|positive> (<math|u<rsub|i>\<geq\>1>), si pone
  <math|u<rsub|i><rprime|'>=u<rsub|i>-1\<geq\>0>: l'equazione diventa
  <math|u<rsub|1><rprime|'>+\<cdots\>+u<rsub|r><rprime|'>=n-r>, con
  <math|<binom|n-1|r-1>> soluzioni.

  <\guidato|Scegliere senza vicini>
    In quanti modi si possono scegliere <math|3> numeri in
    <math|<around*|{|1,\<ldots\>,12|}>> in modo che due numeri scelti non
    siano mai consecutivi?

    Una scelta è una terna <math|a\<less\>b\<less\>c> con <math|b\<geq\>a+2>
    e <math|c\<geq\>b+2>. Il vincolo dà fastidio, quindi lo eliminiamo con
    una traslazione: poniamo <math|a<rprime|'>=a>, <math|b<rprime|'>=b-1>,
    <math|c<rprime|'>=c-2>. Allora <math|a<rprime|'>\<less\>b<rprime|'>\<less\>c<rprime|'>>
    sono numeri <em|qualsiasi> in <math|<around*|{|1,\<ldots\>,10|}>>, e la
    trasformazione si inverte (<math|b=b<rprime|'>+1>,
    <math|c=c<rprime|'>+2>). È una biiezione tra le scelte \Ssenza vicini\T
    in <math|[12]> e i sottoinsiemi di <math|3> elementi di <math|[10]>,
    quindi le scelte sono <math|<binom|10|3>=120>.
  </guidato>

  <figura|<image|../../Archive/Images/aritmetica/buchi.pdf|126.0mm|46.1mm||>|Spostando
  a sinistra il secondo numero di <math|1> e il terzo di <math|2>, i vincoli
  spariscono.>

  <section|Contare due volte>

  <\concetto|Conteggio doppio (double counting)>
    Se si conta lo stesso insieme finito in due modi diversi, i due risultati
    coincidono. Quando i due modi producono due espressioni diverse, si
    ottiene gratis un'identità.
  </concetto>

  Lo abbiamo già fatto due volte: con le cornici del quadrato (capitolo 2) e
  con <math|<big|sum><binom|n|k>=2<rsup|n>>. Prima di applicarlo, bisogna
  sempre dire con precisione <em|quale insieme> si sta contando, e
  controllare che i due metodi contino davvero gli stessi oggetti.

  Il conteggio doppio è anche un metodo per <em|risolvere> problemi: spesso
  un insieme si conta facilmente solo se si sceglie bene da dove partire. Gli
  esempi che seguono mostrano tre idee ricorrenti: fissare prima la parte più
  vincolata, distinguere casi disgiunti, contare con l'ordine e poi dividere.

  <\guidato|Coppie di sottoinsiemi con intersezione fissata>
    Sia <math|\|U\|=100>. Quante sono le coppie ordinate <math|(A,B)> di
    sottoinsiemi di <math|U> con <math|\|A\<cap\>B\|=30>?

    Scegliere prima <math|A> e poi <math|B> obbliga a tenere sotto controllo
    l'intersezione a ogni passo. Conviene invece fissare subito la parte più
    vincolata, l'intersezione <math|I=A\<cap\>B>: si sceglie in
    <math|<binom|100|30>> modi. Ciascuno dei <math|70> elementi rimanenti non
    può stare in entrambi gli insiemi, quindi ha esattamente tre destini:
    solo in <math|A>, solo in <math|B>, in nessuno dei due. Le scelte sono
    indipendenti, quindi le coppie sono

    <\equation*>
      <binom|100|30>\<#22C5\>3<rsup|70>.
    </equation*>

    In altre parole, abbiamo diviso <math|U> nelle quattro regioni
    <math|A\<cap\>B>, <math|A\<setminus\>B>, <math|B\<setminus\>A> e
    <math|U\<setminus\>(A\<cup\>B)> e abbiamo deciso dove mettere ogni
    elemento.
  </guidato>

  <\guidato|Una somma pari>
    Quanti sottoinsiemi di <math|<around*|{|1,\<ldots\>,100|}>> hanno
    <math|96> elementi e somma pari?

    La parità di una somma dipende solo dagli addendi dispari: è pari se e
    solo se gli addendi dispari sono in numero pari. Nell'insieme ci sono
    <math|50> pari e <math|50> dispari. Se scegliamo <math|j> dispari,
    dobbiamo scegliere <math|96-j> pari, e servono <math|j\<leq\>50> e
    <math|96-j\<leq\>50>, cioè <math|46\<leq\>j\<leq\>50>. Con <math|j> pari
    restano <math|j=46,48,50>, casi disgiunti. Il totale è

    <\equation*>
      <binom|50|46><binom|50|50>+<binom|50|48><binom|50|48>+<binom|50|50><binom|50|46>.
    </equation*>
  </guidato>

  <\guidato|Tre numeri distinti con somma 100>
    Quanti sottoinsiemi <math|<around*|{|a,b,c|}>> di tre interi positivi
    <em|distinti> hanno somma <math|100>?

    Contiamo prima con l'ordine e senza il vincolo di distinzione, poi
    correggiamo.

    <em|Terne ordinate positive.> Con <math|a<rprime|'>=a-1> ecc. l'equazione
    diventa <math|a<rprime|'>+b<rprime|'>+c<rprime|'>=97> in naturali: per
    stelle e sbarre le soluzioni sono <math|<binom|99|2>=4851>.

    <em|Terne con componenti uguali.> Se <math|a=b>, allora <math|2a+c=100>
    con <math|c\<geq\>1>, cioè <math|1\<leq\>a\<leq\>49>: <math|49> terne. Lo
    stesso per <math|a=c> e per <math|b=c>. Il caso <math|a=b=c>
    richiederebbe <math|3a=100>, impossibile, quindi questi tre gruppi sono
    disgiunti e contengono in tutto <math|147> terne. Le terne ordinate a
    componenti distinte sono <math|4851-147=4704>.

    <em|Togliere l'ordine.> Ogni insieme di tre elementi distinti corrisponde
    a <math|3!=6> terne ordinate. Gli insiemi cercati sono <math|4704/6=784>.

    Si noti che il principio della divisione si applica solo <em|dopo> aver
    eliminato le terne con ripetizioni: una terna come <math|(10,10,80)> ha
    solo tre riordinamenti, non sei, e avrebbe rovinato l'uniformità.
  </guidato>

  <\inbreve>
    <math|<binom|n|r>> conta i sottoinsiemi di <math|r> elementi e vale
    <math|<frac|n!|r!(n-r)!>>: le liste ordinate divise per gli ordinamenti.
    È simmetrico per complementazione e soddisfa l'identità di Pascal, che
    dimostra il binomio di Newton. Gli anagrammi si contano con i
    multinomiali, le distribuzioni di oggetti identici con stelle e sbarre.
    Il conteggio doppio produce identità e risolve problemi; prima di contare
    conviene sempre chiedersi: quali oggetti conto? L'ordine conta? Sono
    ammesse ripetizioni? Le scelte sono indipendenti? Ogni oggetto è contato
    una volta sola, o un numero uniforme di volte? C'è una parte vincolata da
    fissare per prima? Conviene dividere in casi?
  </inbreve>

  <\verifica|5.1>
    Dimostra con un argomento combinatorio che
    <math|k<binom|n|k>=n<binom|n-1|k-1>>. (Conta in due modi le coppie
    formate da un comitato di <math|k> persone scelte fra <math|n> e da un
    presidente scelto nel comitato.)
  </verifica>

  <\verifica|5.2>
    Quanti anagrammi ha la parola MATEMATICA? Quanti di essi cominciano con
    M?
  </verifica>

  <\verifica|5.3>
    Quante sono le soluzioni di <math|x+y+z+w=20> con <math|x,y,z,w> interi e
    <math|x\<geq\>2>, <math|y\<geq\>0>, <math|z\<geq\>1>, <math|w\<geq\>0>?
  </verifica>

  <\verifica|5.4>
    Sia <math|\|X\|=n>. Quante sono le terne ordinate <math|(A,B,C)> di
    sottoinsiemi di <math|X> con <math|A\<cup\>B\<cup\>C=X>? (Ogni elemento
    deve scegliere in quali dei tre insiemi stare.)
  </verifica>

  <chapter|Includere ed escludere><label|cap-inclusione>

  Contare un'unione di insiemi disgiunti è facile: si sommano le cardinalità.
  Ma quando gli insiemi si sovrappongono, la somma conta più volte gli
  elementi comuni. Il principio di inclusione-esclusione dice esattamente
  come correggere. Per dimostrarlo useremo un'idea molto feconda: tradurre le
  operazioni tra insiemi in operazioni tra numeri, grazie alle funzioni
  caratteristiche.

  <section|Le funzioni caratteristiche come calcolatrice>

  Ricordiamo che, per <math|A\<subseteq\>X>, la funzione caratteristica
  <math|\<bbb-1\><rsub|A>:X\<rightarrow\><around*|{|0,1|}>> vale <math|1>
  sugli elementi di <math|A> e <math|0> fuori. Se <math|X> è finito, sommando
  <math|\<bbb-1\><rsub|A>> su tutti gli elementi di <math|X> ogni elemento di
  <math|A> contribuisce <math|1> e ogni altro contribuisce <math|0>:

  <\equation*>
    \|A\|=<big|sum><rsub|x\<in\>X>\<bbb-1\><rsub|A>(x).
  </equation*>

  Le operazioni tra insiemi diventano operazioni tra funzioni.

  <\itemize>
    <item><strong|Intersezione = prodotto.>
    <math|\<bbb-1\><rsub|A\<cap\>B>=\<bbb-1\><rsub|A>\<#22C5\>\<bbb-1\><rsub|B>>:
    il prodotto vale <math|1> esattamente quando entrambi i fattori valgono
    <math|1>. Più in generale <math|\<bbb-1\><rsub|A<rsub|1>\<cap\>\<cdots\>\<cap\>A<rsub|k>>=\<bbb-1\><rsub|A<rsub|1>>\<cdots\>\<bbb-1\><rsub|A<rsub|k>>>.

    <item><strong|Complementare = uno meno.>
    <math|\<bbb-1\><rsub|A<rsup|c>>=1-\<bbb-1\><rsub|A>>.

    <item><strong|Unione di due insiemi.>
    <math|\<bbb-1\><rsub|A\<cup\>B>=\<bbb-1\><rsub|A>+\<bbb-1\><rsub|B>-\<bbb-1\><rsub|A\<cap\>B>>.
    Basta controllare i quattro casi: se <math|x> sta solo in <math|A> si ha
    <math|1+0-0=1>; solo in <math|B>, <math|0+1-0=1>; in entrambi,
    <math|1+1-1=1>; in nessuno, <math|0>.
  </itemize>

  Sommando l'ultima uguaglianza su tutti gli <math|x\<in\>X> si ottiene la
  prima formula di inclusione-esclusione:

  <\equation*>
    \|A\<cup\>B\|=\|A\|+\|B\|-\|A\<cap\>B\|.
  </equation*>

  Gli elementi comuni erano stati contati due volte, e il termine
  <math|\|A\<cap\>B\|> ne toglie una.

  <section|Tre insiemi, e poi tanti>

  Con tre insiemi si procede allo stesso modo, ma la correzione richiede un
  passo in più:

  <\eqnarray*>
    <tformat|<table|<row|<cell|\|A\<cup\>B\<cup\>C\|>|<cell|=>|<cell|\|A\|+\|B\|+\|C\|>>|<row|<cell|>|<cell|->|<cell|\|A\<cap\>B\|-\|A\<cap\>C\|-\|B\<cap\>C\|>>|<row|<cell|>|<cell|+>|<cell|\|A\<cap\>B\<cap\>C\|.>>>>
  </eqnarray*>

  Un elemento che sta in tutti e tre gli insiemi viene contato tre volte
  nella prima riga e tolto tre volte nella seconda: a quel punto il suo
  contributo è <math|0>, e la terza riga lo rimette, una volta.

  <figura|<image|../../Archive/Images/aritmetica/venn3.pdf|135.0mm|56.2mm||>|Il
  contributo di ogni zona: chi sta in due insiemi vale <math|2-1>, chi sta in
  tre vale <math|3-3+1>.>

  <\theorem>
    <dueto|Principio di inclusione-esclusione>Siano
    <math|A<rsub|1>,\<ldots\>,A<rsub|n>> sottoinsiemi di un insieme finito.
    Allora

    <\equation*>
      <around*|\||<big|cup><rsub|i=1><rsup|n>A<rsub|i>|\|>=<big|sum><rsub|\<varnothing\>\<neq\>I\<subseteq\>[n]>(-1)<rsup|\|I\|+1><around*|\||<big|cap><rsub|i\<in\>I>A<rsub|i>|\|>.
    </equation*>

    Esplicitamente: si sommano le cardinalità dei singoli insiemi, si
    sottraggono quelle delle intersezioni a due a due, si sommano quelle a
    tre a tre, e così via con segni alterni, fino a
    <math|(-1)<rsup|n+1>\|A<rsub|1>\<cap\>\<cdots\>\<cap\>A<rsub|n>\|>.
  </theorem>

  <\proof>
    Contiamo quante volte un singolo elemento <math|x> viene contato dal
    membro destro. Se <math|x> non sta in nessun <math|A<rsub|i>>, non
    compare in nessuna intersezione e contribuisce <math|0>, come nel membro
    sinistro. Supponiamo che <math|x> stia esattamente in <math|m\<geq\>1>
    degli insiemi. Allora <math|x> sta nell'intersezione
    <math|<big|cap><rsub|i\<in\>I>A<rsub|i>> se e solo se <math|I> è formato
    da indici di insiemi che contengono <math|x>; le intersezioni di <math|k>
    insiemi che contengono <math|x> sono quindi <math|<binom|m|k>>. Il
    contributo totale di <math|x> è

    <\equation*>
      <binom|m|1>-<binom|m|2>+<binom|m|3>-\<cdots\>=<big|sum><rsub|k=1><rsup|m>(-1)<rsup|k+1><binom|m|k>.
    </equation*>

    Per il binomio di Newton, <math|0=(1-1)<rsup|m>=<big|sum><rsub|k=0><rsup|m>(-1)<rsup|k><binom|m|k>=1+<big|sum><rsub|k=1><rsup|m>(-1)<rsup|k><binom|m|k>>,
    quindi la somma sopra vale esattamente <math|1>. Ogni elemento
    dell'unione è contato una e una sola volta.
  </proof>

  Ecco come la stessa dimostrazione appare con le funzioni caratteristiche,
  dove diventa puro calcolo. Per De Morgan, il complementare dell'unione è
  l'intersezione dei complementari, e l'intersezione è un prodotto:

  <\equation*>
    1-\<bbb-1\><rsub|A<rsub|1>\<cup\>\<cdots\>\<cup\>A<rsub|n>>=\<bbb-1\><rsub|A<rsub|1><rsup|c>\<cap\>\<cdots\>\<cap\>A<rsub|n><rsup|c>>=(1-\<bbb-1\><rsub|A<rsub|1>>)(1-\<bbb-1\><rsub|A<rsub|2>>)\<cdots\>(1-\<bbb-1\><rsub|A<rsub|n>>).
  </equation*>

  Sviluppando il prodotto, da ogni parentesi si prende o l'<math|1> o il
  <math|-\<bbb-1\><rsub|A<rsub|i>>>; scegliere il secondo termine dalle
  parentesi con indice in <math|I> produce
  <math|(-1)<rsup|\|I\|><big|prod><rsub|i\<in\>I>\<bbb-1\><rsub|A<rsub|i>>=(-1)<rsup|\|I\|>\<bbb-1\><rsub|<big|cap><rsub|i\<in\>I>A<rsub|i>>>.
  Quindi

  <\equation*>
    \<bbb-1\><rsub|A<rsub|1>\<cup\>\<cdots\>\<cup\>A<rsub|n>>=<big|sum><rsub|\<varnothing\>\<neq\>I\<subseteq\>[n]>(-1)<rsup|\|I\|+1>\<bbb-1\><rsub|<big|cap><rsub|i\<in\>I>A<rsub|i>>,
  </equation*>

  e sommando su tutti gli <math|x> si ritrova il teorema.

  <\immagine|Tradurre in algebra>
    Le funzioni caratteristiche trasformano un problema insiemistico (unioni
    che si sovrappongono) in un problema algebrico (sviluppare un prodotto).
    È uno stratagemma che si ritrova spesso in matematica: cambiare
    linguaggio per rendere meccanico ciò che prima richiedeva astuzia.
  </immagine>

  <\guidato|Numeri senza fattori 2, 3, 5>
    Quanti numeri fra <math|1> e <math|100> non sono divisibili né per
    <math|2>, né per <math|3>, né per <math|5>?

    Siano <math|A<rsub|2>,A<rsub|3>,A<rsub|5>> i multipli di <math|2,3,5> in
    <math|[100]>. I multipli di <math|d> in <math|[100]> sono
    <math|\<lfloor\>100/d\<rfloor\>>, e un numero è multiplo di <math|2> e di
    <math|3> se e solo se è multiplo di <math|6> (lo dimostreremo per bene
    nel capitolo 9). Quindi

    <\equation*>
      \|A<rsub|2>\<cup\>A<rsub|3>\<cup\>A<rsub|5>\|=(50+33+20)-(16+10+6)+3=74,
    </equation*>

    dove <math|16,10,6,3> sono i multipli di <math|6,10,15,30>. I numeri
    cercati sono <math|100-74=26>. Contare il complementare era la via più
    semplice: il totale si conosce, le unioni si controllano con
    l'inclusione-esclusione. Ritroveremo questo calcolo nel capitolo 18,
    quando conteremo gli interi coprimi con un numero dato.
  </guidato>

  <section|Contare le funzioni suriettive>

  Siano <math|\|X\|=n> e <math|\|Y\|=m>. Le funzioni <math|X\<rightarrow\>Y>
  sono <math|m<rsup|n>> e le iniettive si contano scegliendo un'immagine dopo
  l'altra. Le suriettive sono più difficili: il vincolo \Sogni elemento di
  <math|Y> deve essere colpito\T non si controlla un passo alla volta.

  <subsection|Un caso che si conta a mano>

  Se <math|\|Y\|=n-1>, una funzione suriettiva deve mandare esattamente due
  elementi di <math|X> nello stesso punto e gli altri biiettivamente sui
  punti rimasti. La si costruisce in tre scelte: i due elementi che collidono
  (<math|<binom|n|2>> modi), la loro immagine comune (<math|n-1> modi), la
  biiezione tra gli <math|n-2> elementi restanti e gli <math|n-2> punti
  restanti (<math|(n-2)!> modi). In tutto

  <\equation*>
    <binom|n|2>(n-1)(n-2)!=<frac|n!<space|0.2em>(n-1)|2>.
  </equation*>

  Con <math|\|Y\|=n-2> le configurazioni possibili sono già due (tre elementi
  che collidono, oppure due coppie), e la situazione peggiora rapidamente.
  Serve un metodo generale.

  <subsection|La formula generale>

  Contiamo il complementare: le funzioni <em|non> suriettive. Una funzione
  non è suriettiva se manca almeno un elemento di <math|Y>. Per ogni
  <math|y\<in\>Y> sia

  <\equation*>
    F<rsub|y>=<around*|{|f:X\<rightarrow\>Y : y\<nin\><math-up|Im>(f)|}>.
  </equation*>

  Le funzioni non suriettive sono l'unione degli <math|F<rsub|y>>, che si
  sovrappongono (una funzione può evitare più punti). Le intersezioni però si
  contano benissimo: se si evitano <math|k> punti prefissati, ogni elemento
  di <math|X> ha <math|m-k> immagini possibili, quindi

  <\equation*>
    \|F<rsub|y<rsub|1>>\<cap\>\<cdots\>\<cap\>F<rsub|y<rsub|k>>\|=(m-k)<rsup|n>,
  </equation*>

  indipendentemente da <em|quali> siano i <math|k> punti. Le intersezioni di
  <math|k> insiemi sono <math|<binom|m|k>>, tutte con la stessa cardinalità,
  e l'inclusione-esclusione dà la quantità di funzioni non suriettive.
  Togliendola dal totale:

  <\theorem>
    Il numero di funzioni suriettive da un insieme con <math|n> elementi a
    uno con <math|m> elementi è

    <\equation*>
      <big|sum><rsub|k=0><rsup|m>(-1)<rsup|k><binom|m|k>(m-k)<rsup|n>=m<rsup|n>-<binom|m|1>(m-1)<rsup|n>+<binom|m|2>(m-2)<rsup|n>-\<cdots\>.
    </equation*>
  </theorem>

  Il termine con <math|k=m> vale <math|0<rsup|n>=0> se <math|n\<geq\>1>, e si
  può omettere.

  <\guidato|Controllare una formula sui casi noti>
    Una formula nuova va messa alla prova dove conosciamo già la risposta.

    <em|Caso <math|n=4>, <math|m=3>.> La formula dà
    <math|3<rsup|4>-3\<#22C5\>2<rsup|4>+3\<#22C5\>1<rsup|4>=81-48+3=36>. Il
    conteggio a mano con <math|\|Y\|=n-1> dà <math|<frac|4!\<#22C5\>3|2>=36>.
    Coincidono.

    <em|Caso <math|m\<gtr\>n>.> Non esistono suriezioni (il dominio è troppo
    piccolo), e infatti la formula dà <math|0>; per esempio con <math|n=1>,
    <math|m=2>: <math|2-2\<#22C5\>1+0=0>.

    <em|Caso <math|m=n>.> Le suriezioni sono le biiezioni, quindi
    <math|<big|sum><rsub|k=0><rsup|n>(-1)<rsup|k><binom|n|k>(n-k)<rsup|n>=n!>.
    Questa identità non è affatto evidente a vista: l'abbiamo ottenuta
    contando lo stesso insieme in due modi.
  </guidato>

  <\inbreve>
    Con le funzioni caratteristiche le intersezioni diventano prodotti e i
    complementari diventano \Suno meno\T. Il principio di
    inclusione-esclusione conta un'unione sommando e sottraendo
    alternativamente le intersezioni: ogni elemento dell'unione viene contato
    <math|<big|sum><rsub|k\<geq\>1>(-1)<rsup|k+1><binom|m|k>=1> volta.
    Funziona bene quando le intersezioni dello stesso ordine hanno tutte la
    stessa cardinalità, come nel conteggio delle funzioni suriettive. Spesso
    conviene contare il complementare.
  </inbreve>

  <\verifica|6.1>
    In una classe di <math|30> studenti, <math|18> studiano inglese,
    <math|14> francese e <math|9> tedesco; <math|7> studiano inglese e
    francese, <math|4> inglese e tedesco, <math|3> francese e tedesco, e
    <math|2> tutte e tre le lingue. Quanti non studiano nessuna lingua?
  </verifica>

  <\verifica|6.2>
    Quante sono le funzioni suriettive da un insieme di <math|5> elementi a
    uno di <math|3>? Verifica il risultato contando a mano i due tipi di
    configurazione possibili (un punto con tre preimmagini, oppure due punti
    con due preimmagini).
  </verifica>

  <\verifica|6.3>
    Una permutazione di <math|[n]> si dice uno <em|scombussolamento> se non
    fissa nessun elemento. Usa l'inclusione-esclusione con gli insiemi
    <math|A<rsub|i>=<around*|{|\<sigma\>:\<sigma\>(i)=i|}>> per dimostrare
    che gli scombussolamenti sono <math|n!<big|sum><rsub|k=0><rsup|n><frac|(-1)<rsup|k>|k!>>,
    e calcolali per <math|n=4>.
  </verifica>

  <chapter|Ricorrenze><label|cap-ricorrenze>

  Molti problemi di conteggio hanno una struttura ricorsiva: il caso <math|n>
  si riduce ai casi più piccoli. Ne nasce una <em|ricorrenza>, cioè una
  regola che calcola ogni termine di una successione a partire dai
  precedenti. Calcolare i termini uno alla volta è facile; trovare una
  formula diretta per l'<math|n>-esimo termine è più interessante, e per una
  classe importante di ricorrenze esiste un metodo che trasforma infinite
  equazioni in una sola equazione di secondo grado.

  <section|Successioni definite per ricorrenza>

  Una <em|successione> è una funzione <math|a:\<bbb-N\>\<rightarrow\>\<bbb-C\>>,
  e si scrive <math|a<rsub|n>> invece di <math|a(n)>. Consideriamo la
  successione determinata da

  <\equation*>
    a<rsub|n+1>=3a<rsub|n>-2a<rsub|n-1><space|1em>(n\<geq\>1),<space|2em>a<rsub|0>=0,<space|1em>a<rsub|1>=1.
  </equation*>

  La regola permette di calcolare <math|a<rsub|2>=3\<#22C5\>1-2\<#22C5\>0=3>,
  poi <math|a<rsub|3>=3\<#22C5\>3-2\<#22C5\>1=7>, poi <math|a<rsub|4>=15>,
  <math|a<rsub|5>=31>, e così via. I valori iniziali sono essenziali: con
  <math|a<rsub|0>=5> e <math|a<rsub|1>=7> la stessa regola produrrebbe
  un'altra successione.

  Che una ricorrenza con due valori iniziali determini <em|una e una sola>
  successione è un fatto da non dare per scontato, e si dimostra con
  l'induzione forte: se due successioni soddisfano la stessa ricorrenza e
  hanno gli stessi <math|a<rsub|0>> e <math|a<rsub|1>>, allora coincidono in
  <math|0> e <math|1>, e se coincidono fino a <math|n> coincidono anche in
  <math|n+1>, perché <math|a<rsub|n+1>> è calcolato da <math|a<rsub|n>> e
  <math|a<rsub|n-1>>.

  Nell'esempio, i valori <math|0,1,3,7,15,31> suggeriscono
  <math|a<rsub|n>=2<rsup|n>-1>. Vediamo come lo si sarebbe potuto
  <em|trovare>, senza indovinare.

  <section|Linearità>

  La ricorrenza <math|a<rsub|n+1>=3a<rsub|n>-2a<rsub|n-1>> è <em|lineare
  omogenea>: ogni termine è una combinazione dei precedenti con coefficienti
  fissi, senza termini costanti. Questo ha una conseguenza decisiva.

  <\proposition>
    Se <math|(b<rsub|n>)> e <math|(c<rsub|n>)> soddisfano la ricorrenza,
    anche <math|d<rsub|n>=x b<rsub|n>+y c<rsub|n>> la soddisfa, per ogni
    scelta delle costanti <math|x,y\<in\>\<bbb-C\>>.
  </proposition>

  <\proof>
    <math|d<rsub|n+1>=x b<rsub|n+1>+y c<rsub|n+1>=x(3b<rsub|n>-2b<rsub|n-1>)+y(3c<rsub|n>-2c<rsub|n-1>)=3d<rsub|n>-2d<rsub|n-1>>.
  </proof>

  In linguaggio di algebra lineare: le soluzioni della ricorrenza formano uno
  <em|spazio vettoriale>. Poiché una soluzione è determinata dai due valori
  iniziali, ci aspettiamo che questo spazio abbia dimensione <math|2>, cioè
  che bastino due soluzioni \Sindipendenti\T per ottenerle tutte come
  combinazioni. Lavoriamo sui complessi perché le radici che incontreremo
  potrebbero non essere reali.

  <section|Cercare soluzioni esponenziali>

  Proviamo una soluzione della forma più semplice possibile:
  <math|b<rsub|n>=\<lambda\><rsup|n>>, con <math|\<lambda\>\<neq\>0> da
  determinare. Sostituendo,

  <\equation*>
    \<lambda\><rsup|n+1>=3\<lambda\><rsup|n>-2\<lambda\><rsup|n-1>,
  </equation*>

  e dividendo per <math|\<lambda\><rsup|n-1>>:

  <\equation*>
    \<lambda\><rsup|2>-3\<lambda\>+2=0.
  </equation*>

  Infinite equazioni, una per ogni <math|n>, si sono ridotte a <em|una sola>
  equazione di secondo grado, il <em|polinomio caratteristico> della
  ricorrenza. Le sue radici sono <math|\<lambda\><rsub|1>=1> e
  <math|\<lambda\><rsub|2>=2>, perché <math|\<lambda\><rsup|2>-3\<lambda\>+2=(\<lambda\>-1)(\<lambda\>-2)>.
  Dunque <math|1<rsup|n>=1> e <math|2<rsup|n>> sono soluzioni, e per
  linearità lo è ogni

  <\equation*>
    a<rsub|n>=x\<#22C5\>2<rsup|n>+y.
  </equation*>

  Imponiamo i valori iniziali: <math|a<rsub|0>=x+y=0> e
  <math|a<rsub|1>=2x+y=1>. Sottraendo, <math|x=1> e quindi <math|y=-1>:

  <\equation*>
    a<rsub|n>=2<rsup|n>-1.
  </equation*>

  Verifica diretta: <math|3(2<rsup|n>-1)-2(2<rsup|n-1>-1)=3\<#22C5\>2<rsup|n>-2<rsup|n>-1=2<rsup|n+1>-1>,
  e i valori iniziali tornano.

  Il metodo funziona in generale, purché le radici siano distinte.

  <\theorem>
    Consideriamo la ricorrenza <math|a<rsub|n+1>=p a<rsub|n>+q a<rsub|n-1>>,
    con <math|q\<neq\>0>, e supponiamo che il polinomio
    <math|\<lambda\><rsup|2>-p\<lambda\>-q> abbia due radici distinte
    <math|\<lambda\><rsub|1>\<neq\>\<lambda\><rsub|2>>. Allora le soluzioni
    della ricorrenza sono esattamente le successioni

    <\equation*>
      a<rsub|n>=x \<lambda\><rsub|1><rsup|n>+y
      \<lambda\><rsub|2><rsup|n>,<space|2em>x,y\<in\>\<bbb-C\>.
    </equation*>
  </theorem>

  <\proof>
    Ogni <math|\<lambda\><rsub|i><rsup|n>> è soluzione, perché
    <math|\<lambda\><rsub|i><rsup|2>=p\<lambda\><rsub|i>+q> e moltiplicando
    per <math|\<lambda\><rsub|i><rsup|n-1>> si ha
    <math|\<lambda\><rsub|i><rsup|n+1>=p\<lambda\><rsub|i><rsup|n>+q\<lambda\><rsub|i><rsup|n-1>>.
    Per linearità lo è ogni combinazione.

    Viceversa, sia <math|(a<rsub|n>)> una soluzione qualsiasi. Il sistema
    <math|x+y=a<rsub|0>>, <math|x\<lambda\><rsub|1>+y\<lambda\><rsub|2>=a<rsub|1>>
    ha soluzione, perché dalla prima equazione <math|y=a<rsub|0>-x> e la
    seconda diventa <math|x(\<lambda\><rsub|1>-\<lambda\><rsub|2>)=a<rsub|1>-a<rsub|0>\<lambda\><rsub|2>>,
    risolubile poiché <math|\<lambda\><rsub|1>-\<lambda\><rsub|2>\<neq\>0>.
    Con questi <math|x,y> la successione <math|x\<lambda\><rsub|1><rsup|n>+y\<lambda\><rsub|2><rsup|n>>
    soddisfa la ricorrenza e ha gli stessi due valori iniziali di
    <math|(a<rsub|n>)>; per l'unicità vista nella prima sezione, le due
    successioni coincidono.
  </proof>

  Se le due radici coincidono (<math|\<lambda\><rsub|1>=\<lambda\><rsub|2>=\<lambda\>>)
  servono due soluzioni diverse e la seconda risulta essere
  <math|n\<lambda\><rsup|n>>; questo caso non è stato sviluppato nel corso.

  <section|I numeri di Fibonacci>

  La successione di Fibonacci è definita da <math|F<rsub|0>=0>,
  <math|F<rsub|1>=1> e <math|F<rsub|n+1>=F<rsub|n>+F<rsub|n-1>>:

  <\equation*>
    0,1,1,2,3,5,8,13,21,34,\<ldots\>
  </equation*>

  <figura|<image|../../Archive/Images/aritmetica/fibonacci.pdf|70.1mm|40.4mm||>|Quadrati
  di lato <math|1,1,2,3,5,8>: ogni nuovo quadrato ha come lato la somma dei
  due precedenti.>

  Il polinomio caratteristico è <math|\<lambda\><rsup|2>-\<lambda\>-1>, con
  radici distinte

  <\equation*>
    \<lambda\><rsub|1>=<frac|1+<sqrt|5>|2>,<space|2em>\<lambda\><rsub|2>=<frac|1-<sqrt|5>|2>.
  </equation*>

  (<math|\<lambda\><rsub|1>\<approx\>1<text|,>618> è il celebre <em|rapporto
  aureo>.) Dunque <math|F<rsub|n>=x\<lambda\><rsub|1><rsup|n>+y\<lambda\><rsub|2><rsup|n>>.
  Da <math|F<rsub|0>=0> si ha <math|y=-x>; da <math|F<rsub|1>=1> si ha
  <math|x(\<lambda\><rsub|1>-\<lambda\><rsub|2>)=1>, e poiché
  <math|\<lambda\><rsub|1>-\<lambda\><rsub|2>=<sqrt|5>>,
  <math|x=<frac|1|<sqrt|5>>>. Otteniamo la <em|formula di Binet>

  <\equation*>
    F<rsub|n>=<frac|1|<sqrt|5>><around*|[|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>|]>.
  </equation*>

  È sorprendente: una combinazione di potenze di numeri irrazionali produce
  sempre un intero. La ricorrenza lo garantisce, perché ogni termine è somma
  di due interi.

  <section|Tassellare un corridoio>

  Le ricorrenze nascono spontaneamente dai problemi di conteggio. Vogliamo
  ricoprire una griglia <math|2\<times\>n> con tessere <math|2\<times\>1>,
  che si possono mettere in verticale (occupano una colonna) o in
  orizzontale. Sia <math|T<rsub|n>> il numero di tassellazioni.

  <figura|<image|../../Archive/Images/aritmetica/tassellazioni.pdf|155.0mm|23.0mm||>|Le
  cinque tassellazioni della griglia <math|2\<times\>4>.>

  Per <math|n=1> c'è solo la tessera verticale: <math|T<rsub|1>=1>. Per
  <math|n=2> ci sono due verticali o due orizzontali: <math|T<rsub|2>=2>.
  Conviene porre <math|T<rsub|0>=1> (la griglia vuota ha una sola
  tassellazione: quella senza tessere).

  Guardiamo come comincia una tassellazione, cioè che cosa copre la casella
  in alto a sinistra.

  <\itemize>
    <item>Se è coperta da una tessera <em|verticale>, resta da tassellare una
    griglia <math|2\<times\>(n-1)>: <math|T<rsub|n-1>> modi.

    <item>Se è coperta da una tessera <em|orizzontale>, la casella sotto non
    può che essere coperta da un'altra orizzontale, affiancata alla prima.
    Resta una griglia <math|2\<times\>(n-2)>: <math|T<rsub|n-2>> modi.
  </itemize>

  <figura|<image|../../Archive/Images/aritmetica/domino.pdf|155.0mm|33.8mm||>|Una
  tassellazione comincia con una verticale o con due orizzontali.>

  I due casi sono disgiunti ed esauriscono tutte le possibilità, quindi

  <\equation*>
    T<rsub|n>=T<rsub|n-1>+T<rsub|n-2>,<space|2em>T<rsub|0>=T<rsub|1>=1.
  </equation*>

  È la ricorrenza di Fibonacci con i valori iniziali spostati di un posto:
  <math|T<rsub|n>=F<rsub|n+1>>, cioè <math|1,1,2,3,5,8,\<ldots\>>. La
  <em|legge> della ricorrenza viene dalla struttura del problema; i
  <em|valori iniziali> decidono quale successione si ottiene.

  <subsection|Un secondo modo di contare>

  Classifichiamo ora le tassellazioni secondo il numero <math|k> di
  <em|coppie> di tessere orizzontali. Una coppia occupa due colonne, una
  verticale una colonna. Con <math|k> coppie restano <math|n-2k> verticali, e
  la tassellazione è una fila di <math|k+(n-2k)=n-k> blocchi, di cui <math|k>
  sono coppie. Basta scegliere quali posizioni occupano le coppie:
  <math|<binom|n-k|k>> modi. Il numero <math|k> va da <math|0> a
  <math|\<lfloor\>n/2\<rfloor\>>. Contando lo stesso insieme in due modi:

  <\equation*>
    <big|sum><rsub|k=0><rsup|\<lfloor\>n/2\<rfloor\>><binom|n-k|k>=T<rsub|n>=F<rsub|n+1>.
  </equation*>

  Per <math|n=4>: <math|<binom|4|0>+<binom|3|1>+<binom|2|2>=1+3+1=5=F<rsub|5>>.
  Un'identità tra coefficienti binomiali e numeri di Fibonacci, che sarebbe
  faticosa da dimostrare con l'algebra, è caduta dal cielo grazie al
  conteggio doppio.

  <\inbreve>
    Una ricorrenza con due valori iniziali determina un'unica successione. Se
    è lineare omogenea, le sue soluzioni formano uno spazio vettoriale;
    cercandole della forma <math|\<lambda\><rsup|n>> si arriva al polinomio
    caratteristico, e se le sue radici sono distinte tutte le soluzioni sono
    <math|x\<lambda\><rsub|1><rsup|n>+y\<lambda\><rsub|2><rsup|n>>, con
    <math|x,y> fissati dai valori iniziali. Così si ottiene la formula di
    Binet per Fibonacci. I problemi di conteggio producono ricorrenze
    guardando \Scome comincia\T un oggetto, e contare in due modi produce
    identità.
  </inbreve>

  <\verifica|7.1>
    Trova la formula esplicita della successione definita da
    <math|a<rsub|0>=2>, <math|a<rsub|1>=5>,
    <math|a<rsub|n+1>=5a<rsub|n>-6a<rsub|n-1>>, e verificala sui primi
    termini.
  </verifica>

  <\verifica|7.2>
    Sia <math|s<rsub|n>> il numero di stringhe di lunghezza <math|n> fatte di
    <math|0> e <math|1> che non contengono due <math|1> consecutivi. Trova
    una ricorrenza per <math|s<rsub|n>> guardando l'ultimo simbolo, e
    confrontala con i numeri di Fibonacci.
  </verifica>

  <\verifica|7.3>
    Dimostra per induzione che <math|F<rsub|1>+F<rsub|2>+\<cdots\>+F<rsub|n>=F<rsub|n+2>-1>.
  </verifica>

  <chapter|La divisione con resto><label|cap-divisione>

  Qui comincia il terzo pilastro. Tutta l'aritmetica degli interi, dal
  massimo comun divisore ai numeri primi, dalle equazioni diofantee alle
  congruenze, poggia su un fatto che impariamo alle elementari: dividendo un
  intero per un altro si ottengono un quoziente e un resto. Il nostro compito
  è dirlo con precisione e capire perché è vero.

  <section|Approssimare con i multipli>

  Dividere <math|a> per <math|b> significa cercare il multiplo di <math|b>
  \Spiù vicino da sotto\T ad <math|a>. Scriviamo <math|a=q*b+r>, dove
  <math|q*b> è il multiplo scelto e <math|r> è ciò che avanza. Ma
  un'uguaglianza del genere, da sola, non dice nulla:
  <math|17=3\<#22C5\>5+2=2\<#22C5\>5+7=4\<#22C5\>5-3>. Per avere un risultato
  ben definito bisogna chiedere che il resto sia piccolo e non negativo:
  <math|0\<leq\>r\<less\>\|b\|>. Con questa condizione la scrittura è unica.

  <figura|<image|../../Archive/Images/aritmetica/divisione.pdf|155.0mm|30.0mm||>|Dividere
  <math|-17> per <math|5>: il multiplo di <math|5> appena sotto è <math|-20>,
  e il resto è <math|3>.>

  L'esempio della figura è istruttivo: <math|-17=(-4)\<#22C5\>5+3>. Il
  quoziente non è <math|-3>, perché <math|-17=(-3)\<#22C5\>5-2> ha un resto
  negativo. Con i numeri negativi l'intuizione scolastica va corretta: il
  resto deve sempre stare fra <math|0> e <math|\|b\|-1>.

  <section|Il teorema della divisione euclidea>

  <\theorem>
    <dueto|Divisione euclidea>Siano <math|a,b\<in\>\<bbb-Z\>> con
    <math|b\<neq\>0>. Esistono e sono unici due interi <math|q,r> tali che

    <\equation*>
      a=q*b+r<space|2em><text|e><space|2em>0\<leq\>r\<less\>\|b\|.
    </equation*>

    <math|q> si chiama <em|quoziente> e <math|r> <em|resto> della divisione
    di <math|a> per <math|b>.
  </theorem>

  L'enunciato contiene due affermazioni distinte, esistenza e unicità, che
  richiedono due argomenti distinti.

  <\proof>
    <em|Esistenza, con <math|b\<gtr\>0>.> L'idea è prendere, fra tutti i
    numeri che si ottengono togliendo ad <math|a> multipli di <math|b>, il
    più piccolo non negativo. Sia

    <\equation*>
      S=<around*|{|a-q*b : q\<in\>\<bbb-Z\>,
      a-q*b\<geq\>0|}>\<subseteq\>\<bbb-N\>.
    </equation*>

    <math|S> non è vuoto: se <math|a\<geq\>0> basta <math|q=0>; se
    <math|a\<less\>0> basta <math|q=a>, perché
    <math|a-a*b=a(1-b)=\|a\|(b-1)\<geq\>0>. Per il principio del minimo
    <math|S> ha un minimo <math|r=a-q<rsub|0>b>, e <math|r\<geq\>0>. Se fosse
    <math|r\<geq\>b>, il numero <math|r-b=a-(q<rsub|0>+1)b> sarebbe ancora
    <math|\<geq\>0>, quindi in <math|S>, e più piccolo di <math|r>:
    impossibile. Dunque <math|0\<leq\>r\<less\>b> e <math|a=q<rsub|0>b+r>.

    <em|Esistenza, con <math|b\<less\>0>.> Applichiamo il caso precedente a
    <math|\|b\|=-b>: <math|a=q<rprime|'>\|b\|+r> con
    <math|0\<leq\>r\<less\>\|b\|>. Allora <math|a=(-q<rprime|'>)b+r>.

    <em|Unicità.> Supponiamo <math|a=q<rsub|1>b+r<rsub|1>=q<rsub|2>b+r<rsub|2>>
    con entrambi i resti in <math|[0,\|b\|)>. Allora
    <math|(q<rsub|1>-q<rsub|2>)b=r<rsub|2>-r<rsub|1>>. Il membro destro ha
    valore assoluto <math|\<less\>\|b\|>, perché entrambi i resti stanno in
    un intervallo di ampiezza <math|\|b\|>. Il membro sinistro è un multiplo
    di <math|b>: se <math|q<rsub|1>\<neq\>q<rsub|2>> avrebbe valore assoluto
    almeno <math|\|b\|>. Quindi <math|q<rsub|1>=q<rsub|2>>, e di conseguenza
    <math|r<rsub|1>=r<rsub|2>>.
  </proof>

  <\anatomia|Il minimo e il resto>
    La dimostrazione dell'esistenza ha una struttura che ritroveremo almeno
    tre volte: nell'identità di Bézout (capitolo 9), nella descrizione dei
    sottogruppi di <math|\<bbb-Z\>> e in quella dei sottogruppi ciclici
    (capitolo 19). Lo schema è: si considera un insieme di numeri naturali
    costruito apposta, se ne prende il minimo con il principio del minimo, e
    si mostra che qualcosa di più piccolo non può esistere. Il resto della
    divisione nasce proprio come \Sil più piccolo avanzo possibile\T.
  </anatomia>

  <section|Divisibilità>

  Il caso in cui il resto è zero merita un nome.

  <\definition>
    Siano <math|a,b\<in\>\<bbb-Z\>>. Si dice che <math|a> <em|divide>
    <math|b>, e si scrive <math|a\<mid\>b>, se esiste <math|k\<in\>\<bbb-Z\>>
    tale che <math|b=k*a>. In tal caso <math|a> è un <em|divisore> di
    <math|b> e <math|b> è un <em|multiplo> di <math|a>.
  </definition>

  Bisogna leggere con cura il verso: <math|2\<mid\>6> perché
  <math|6=3\<#22C5\>2>, mentre <math|6\<nmid\>2>. Ogni intero divide <math|0>
  (perché <math|0=0\<#22C5\>a>), mentre <math|0> divide solo <math|0>. I
  numeri <math|\<pm\>1> dividono tutto. Per <math|b\<neq\>0>, si ha
  <math|b\<mid\>a> se e solo se il resto della divisione di <math|a> per
  <math|b> è <math|0>.

  <\proposition>
    Per ogni <math|a,b,c,x,y\<in\>\<bbb-Z\>>:

    <\enumerate>
      <item><math|a\<mid\>a> (riflessività);

      <item>se <math|a\<mid\>b> e <math|b\<mid\>c>, allora <math|a\<mid\>c>
      (transitività);

      <item>se <math|a\<mid\>b> e <math|a\<mid\>c>, allora
      <math|a\<mid\>x*b+y*c>: un divisore comune divide ogni combinazione;

      <item>se <math|a\<mid\>b> e <math|b\<neq\>0>, allora
      <math|\|a\|\<leq\>\|b\|>;

      <item>se <math|a,b\<in\>\<bbb-N\>>, <math|a\<mid\>b> e
      <math|b\<mid\>a>, allora <math|a=b>.
    </enumerate>
  </proposition>

  <\proof>
    (1) <math|a=1\<#22C5\>a>. (2) Da <math|b=k<rsub|1>a> e
    <math|c=k<rsub|2>b> segue <math|c=(k<rsub|1>k<rsub|2>)a>. (3) Da
    <math|b=k*a> e <math|c=h*a> segue <math|x*b+y*c=(x*k+y*h)a>. (4) Da
    <math|b=k*a> con <math|b\<neq\>0> segue <math|k\<neq\>0>, quindi
    <math|\|k\|\<geq\>1> e <math|\|b\|=\|k\|\|a\|\<geq\>\|a\|>. (5) Se uno
    dei due è <math|0>, allora lo è anche l'altro (solo <math|0> è diviso da
    <math|0>). Altrimenti per il punto 4 si ha <math|a\<leq\>b> e
    <math|b\<leq\>a>.
  </proof>

  La proprietà 3 è quella che useremo più spesso, in mille travestimenti. Per
  esempio: se <math|d> divide <math|a> e <math|b>, divide anche <math|a-q*b>,
  cioè il resto della divisione.

  <section|Relazioni e ordini>

  La divisibilità è un esempio di <em|relazione>. In generale, una relazione
  <math|\<cal-R\>> su un insieme <math|X> è un sottoinsieme di
  <math|X\<times\>X>: si scrive <math|x\<cal-R\>y> quando la coppia
  <math|(x,y)> sta nella relazione. Le proprietà principali sono:

  <\itemize>
    <item><em|riflessiva>: <math|x\<cal-R\>x> per ogni <math|x>;

    <item><em|simmetrica>: <math|x\<cal-R\>y\<Rightarrow\>y\<cal-R\>x>;

    <item><em|antisimmetrica>: <math|x\<cal-R\>y> e <math|y\<cal-R\>x>
    implicano <math|x=y>;

    <item><em|transitiva>: <math|x\<cal-R\>y> e <math|y\<cal-R\>z> implicano
    <math|x\<cal-R\>z>.
  </itemize>

  Una relazione riflessiva, antisimmetrica e transitiva si chiama
  <em|relazione d'ordine>. Se inoltre due elementi qualsiasi sono sempre
  confrontabili (<math|x\<cal-R\>y> oppure <math|y\<cal-R\>x>), l'ordine si
  dice <em|totale>. L'ordine usuale <math|\<leq\>> sui reali è totale;
  geometricamente, la relazione <math|x\<leq\>y> è il semipiano del piano che
  sta sopra la retta <math|y=x>, retta compresa.

  La divisibilità su <math|\<bbb-N\>> è un ordine, ma non totale: <math|2> e
  <math|3> non sono confrontabili, perché nessuno dei due divide l'altro. Su
  <math|\<bbb-Z\>> non è nemmeno antisimmetrica: <math|2\<mid\>-2> e
  <math|-2\<mid\>2>, ma <math|2\<neq\>-2>. Per questo, quando parleremo del
  \Spiù grande\T divisore comune, dovremo stare attenti ai segni.

  Una relazione riflessiva, <em|simmetrica> e transitiva si chiama invece
  <em|relazione di equivalenza>: è l'idea al centro del quarto pilastro, e la
  studieremo nel capitolo 12.

  <\inbreve>
    Ogni intero <math|a> si divide per ogni <math|b\<neq\>0> in modo unico,
    con un resto <math|0\<leq\>r\<less\>\|b\|>. L'esistenza viene dal
    principio del minimo (il resto è il più piccolo avanzo non negativo),
    l'unicità dal fatto che due resti distano meno di <math|\|b\|>. La
    divisibilità <math|a\<mid\>b> significa resto nullo; è riflessiva e
    transitiva, e un divisore comune di due numeri divide ogni loro
    combinazione intera.
  </inbreve>

  <\verifica|8.1>
    Calcola quoziente e resto della divisione di <math|a> per <math|b> nei
    casi <math|(a,b)=(47,6)>, <math|(-47,6)>, <math|(47,-6)>,
    <math|(-47,-6)>.
  </verifica>

  <\verifica|8.2>
    Dimostra che il prodotto di due interi consecutivi è pari, distinguendo i
    casi secondo il resto della divisione per <math|2>. Poi dimostra che il
    prodotto di tre interi consecutivi è divisibile per <math|3>.
  </verifica>

  <\verifica|8.3>
    Sia <math|n\<in\>\<bbb-Z\>>. Dimostra che se <math|d\<mid\>n> e
    <math|d\<mid\>n+1>, allora <math|d=\<pm\>1>.
  </verifica>

  <chapter|Massimo comun divisore, Euclide e Bézout><label|cap-mcd>

  Quali numeri dividono contemporaneamente <math|45> e <math|17>? E
  <math|360> e <math|84>? Il più grande di questi divisori comuni, il massimo
  comun divisore, è un oggetto centrale dell'aritmetica. In questo capitolo
  impariamo a calcolarlo senza fattorizzare (con l'algoritmo di Euclide) e
  scopriamo una sua proprietà inattesa: si può sempre scrivere come
  combinazione intera dei due numeri. Questa è l'identità di Bézout, e da
  essa discende quasi tutto ciò che segue.

  <section|Il massimo comun divisore>

  <\definition>
    Siano <math|a,b\<in\>\<bbb-Z\>> non entrambi nulli. Il <em|massimo comun
    divisore> <math|<math-up|MCD>(a,b)> è il più grande intero positivo che
    divide sia <math|a> sia <math|b>. Se <math|<math-up|MCD>(a,b)=1>, si dice
    che <math|a> e <math|b> sono <em|coprimi>, o <em|primi tra loro>.
  </definition>

  La definizione ha senso: <math|1> è sempre un divisore comune, quindi
  l'insieme dei divisori comuni positivi non è vuoto; ed è finito, perché un
  divisore di un numero <math|c\<neq\>0> ha valore assoluto al più
  <math|\|c\|>. Un insieme finito e non vuoto di interi ha un massimo.
  Inoltre i divisori di <math|a> e di <math|-a> sono gli stessi, quindi
  <math|<math-up|MCD>(a,b)=<math-up|MCD>(\|a\|,\|b\|)>, e
  <math|<math-up|MCD>(a,0)=\|a\|>.

  Chiediamo che il MCD sia positivo per una ragione precisa: ogni divisore
  <math|d> ha il suo opposto <math|-d>, e senza la positività non sapremmo
  quale dei due scegliere. Vedremo tra poco che il MCD ha una
  caratterizzazione più forte del semplice \Sessere il più grande\T: <em|ogni
  divisore comune divide il MCD>.

  <section|Il passo di Euclide>

  L'osservazione su cui si basa tutto è la seguente.

  <\lemma>
    Siano <math|a,b,q\<in\>\<bbb-Z\>>. I divisori comuni di <math|a> e
    <math|b> sono esattamente i divisori comuni di <math|b> e <math|a-q*b>.
    In particolare, se <math|b\<neq\>0> e <math|r> è il resto della divisione
    di <math|a> per <math|b>, allora <math|<math-up|MCD>(a,b)=<math-up|MCD>(b,r)>.
  </lemma>

  <\proof>
    Se <math|d\<mid\>a> e <math|d\<mid\>b>, allora <math|d> divide la
    combinazione <math|a-q*b>. Viceversa, se <math|d\<mid\>b> e
    <math|d\<mid\>a-q*b>, allora <math|d> divide <math|(a-q*b)+q*b=a>. Gli
    insiemi dei divisori comuni coincidono, e quindi coincidono anche i loro
    massimi.
  </proof>

  Questo lemma permette di sostituire una coppia di numeri con una coppia più
  piccola senza cambiare il MCD.

  <section|L'algoritmo di Euclide>

  Siano <math|a\<geq\>b\<gtr\>0>. Dividiamo <math|a> per <math|b>, poi
  <math|b> per il resto, poi il primo resto per il secondo, e così via:

  <\eqnarray*>
    <tformat|<table|<row|<cell|a>|<cell|=>|<cell|q<rsub|1>b+r<rsub|1>,<space|2em>0\<leq\>r<rsub|1>\<less\>b,>>|<row|<cell|b>|<cell|=>|<cell|q<rsub|2>r<rsub|1>+r<rsub|2>,<space|2em>0\<leq\>r<rsub|2>\<less\>r<rsub|1>,>>|<row|<cell|r<rsub|1>>|<cell|=>|<cell|q<rsub|3>r<rsub|2>+r<rsub|3>,<space|2em>0\<leq\>r<rsub|3>\<less\>r<rsub|2>,>>|<row|<cell|>|<cell|\<vdots\>>|<cell|>>|<row|<cell|r<rsub|n-1>>|<cell|=>|<cell|q<rsub|n+1>r<rsub|n>+0.>>>>
  </eqnarray*>

  I resti decrescono strettamente: <math|b\<gtr\>r<rsub|1>\<gtr\>r<rsub|2>\<gtr\>\<cdots\>\<geq\>0>.
  Una successione strettamente decrescente di naturali non può essere
  infinita (il suo insieme di valori non avrebbe minimo), quindi prima o poi
  si trova un resto nullo e il procedimento termina.

  <\theorem>
    L'ultimo resto non nullo <math|r<rsub|n>> dell'algoritmo di Euclide è
    <math|<math-up|MCD>(a,b)>.
  </theorem>

  <\proof>
    Per il lemma, <math|<math-up|MCD>(a,b)=<math-up|MCD>(b,r<rsub|1>)=<math-up|MCD>(r<rsub|1>,r<rsub|2>)=\<cdots\>=<math-up|MCD>(r<rsub|n-1>,r<rsub|n>)>.
    Poiché <math|r<rsub|n>\<mid\>r<rsub|n-1>> (l'ultima divisione ha resto
    zero), l'ultimo MCD è <math|r<rsub|n>>.
  </proof>

  <\guidato|L'algoritmo su <math|45> e <math|17>>
    <\eqnarray*>
      <tformat|<table|<row|<cell|45>|<cell|=>|<cell|2\<#22C5\>17+11>>|<row|<cell|17>|<cell|=>|<cell|1\<#22C5\>11+6>>|<row|<cell|11>|<cell|=>|<cell|1\<#22C5\>6+5>>|<row|<cell|6>|<cell|=>|<cell|1\<#22C5\>5+1>>|<row|<cell|5>|<cell|=>|<cell|5\<#22C5\>1+0.>>>>
    </eqnarray*>

    L'ultimo resto non nullo è <math|1>: <math|45> e <math|17> sono coprimi.
    Cinque divisioni di numeri piccoli, senza bisogno di cercare i divisori.
  </guidato>

  <\immagine|Riempire un rettangolo di quadrati>
    Prendiamo un rettangolo <math|45\<times\>17>. Ritagliamo quanti più
    quadrati <math|17\<times\>17> possibile: ne stanno due, e avanza un
    rettangolo <math|11\<times\>17>. Da questo ritagliamo un quadrato
    <math|11\<times\>11>, e avanza <math|11\<times\>6>; poi un
    <math|6\<times\>6>, avanza <math|5\<times\>6>; poi un <math|5\<times\>5>,
    avanza <math|5\<times\>1>, che si riempie con cinque quadratini
    <math|1\<times\>1>. I lati dei quadrati sono esattamente i divisori
    successivi dell'algoritmo, e l'ultimo quadrato è il più grande quadrato
    con cui si possa piastrellare l'intero rettangolo: il MCD.
  </immagine>

  <figura|<image|../../Archive/Images/aritmetica/euclide.pdf|130.5mm|54.9mm||>|L'algoritmo
  di Euclide come piastrellatura del rettangolo <math|45\<times\>17>.>

  <section|L'identità di Bézout>

  Rileggiamo l'algoritmo all'indietro. La prima riga dice che
  <math|r<rsub|1>=a-q<rsub|1>b> è una combinazione intera di <math|a> e
  <math|b>. La seconda dice che <math|r<rsub|2>=b-q<rsub|2>r<rsub|1>>:
  sostituendo l'espressione di <math|r<rsub|1>>, anche <math|r<rsub|2>> è
  combinazione di <math|a> e <math|b>. Procedendo così, ogni resto lo è, e in
  particolare l'ultimo, che è il MCD.

  <\theorem>
    <dueto|Identità di Bézout>Siano <math|a,b\<in\>\<bbb-Z\>> non entrambi
    nulli. Esistono <math|u,v\<in\>\<bbb-Z\>> tali che

    <\equation*>
      <math-up|MCD>(a,b)=u*a+v*b.
    </equation*>
  </theorem>

  <\proof>
    Possiamo supporre <math|a,b\<gtr\>0> (cambiare segno ad <math|a> o
    <math|b> si compensa cambiando segno a <math|u> o <math|v>, e se
    <math|b=0> basta <math|<math-up|MCD>(a,0)=\|a\|=\<pm\>1\<#22C5\>a>).
    Dimostriamo per induzione forte su <math|k> che ogni resto
    <math|r<rsub|k>> dell'algoritmo è combinazione intera di <math|a> e
    <math|b>, ponendo per comodità <math|r<rsub|-1>=a> e <math|r<rsub|0>=b>,
    che lo sono banalmente. Il <math|k>-esimo passo dell'algoritmo è
    <math|r<rsub|k-2>=q<rsub|k>r<rsub|k-1>+r<rsub|k>>, cioè
    <math|r<rsub|k>=r<rsub|k-2>-q<rsub|k>r<rsub|k-1>>: se
    <math|r<rsub|k-2>=u*a+v*b> e <math|r<rsub|k-1>=u<rprime|'>a+v<rprime|'>b>,
    allora <math|r<rsub|k>=(u-q<rsub|k>u<rprime|'>)a+(v-q<rsub|k>v<rprime|'>)b>.
    L'ultimo resto non nullo è il MCD.
  </proof>

  <\guidato|Risalire l'algoritmo per <math|45> e <math|17>>
    Partiamo dall'ultima riga utile e sostituiamo, una riga alla volta, il
    resto più recente con la sua espressione.

    <\eqnarray*>
      <tformat|<table|<row|<cell|1>|<cell|=>|<cell|6-5>>|<row|<cell|>|<cell|=>|<cell|6-(11-6)=2\<#22C5\>6-11>>|<row|<cell|>|<cell|=>|<cell|2\<#22C5\>(17-11)-11=2\<#22C5\>17-3\<#22C5\>11>>|<row|<cell|>|<cell|=>|<cell|2\<#22C5\>17-3\<#22C5\>(45-2\<#22C5\>17)=8\<#22C5\>17-3\<#22C5\>45.>>>>
    </eqnarray*>

    Controllo: <math|8\<#22C5\>17=136> e <math|3\<#22C5\>45=135>. Dunque
    <math|1=(-3)\<#22C5\>45+8\<#22C5\>17>. Il segreto è non sviluppare i
    prodotti: tenere sempre in evidenza i due numeri \Scorrenti\T e
    raccogliere i coefficienti.
  </guidato>

  <\guidato|Lo stesso per <math|41> e <math|11>>
    L'algoritmo dà <math|41=3\<#22C5\>11+8>, <math|11=1\<#22C5\>8+3>,
    <math|8=2\<#22C5\>3+2>, <math|3=1\<#22C5\>2+1>. Risalendo:

    <\equation*>
      1=3-2=3-(8-2\<#22C5\>3)=3\<#22C5\>3-8=3(11-8)-8=3\<#22C5\>11-4\<#22C5\>8=3\<#22C5\>11-4(41-3\<#22C5\>11)=15\<#22C5\>11-4\<#22C5\>41.
    </equation*>

    Controllo: <math|165-164=1>. Questa identità ci servirà nel capitolo 11.
  </guidato>

  <section|Un secondo sguardo: il più piccolo elemento positivo>

  C'è una dimostrazione di Bézout che non usa l'algoritmo e che rivela meglio
  <em|perché> il teorema è vero. Non è stata svolta a lezione, ma conviene
  conoscerla perché la stessa idea tornerà, identica, nello studio dei
  sottogruppi.

  <\proof>
    <em|(Seconda dimostrazione.)> Consideriamo l'insieme di tutte le
    combinazioni intere positive di <math|a> e <math|b>:

    <\equation*>
      C=<around*|{|u*a+v*b : u,v\<in\>\<bbb-Z\>, u*a+v*b\<gtr\>0|}>.
    </equation*>

    È non vuoto (contiene <math|\|a\|> o <math|\|b\|>), quindi ha un minimo
    <math|d=u<rsub|0>a+v<rsub|0>b>. Dividiamo <math|a> per <math|d>:
    <math|a=q*d+r> con <math|0\<leq\>r\<less\>d>. Allora
    <math|r=a-q*d=(1-q*u<rsub|0>)a+(-q*v<rsub|0>)b> è una combinazione di
    <math|a> e <math|b> più piccola di <math|d>; non può essere positiva,
    quindi <math|r=0> e <math|d\<mid\>a>. Allo stesso modo <math|d\<mid\>b>.
    Infine ogni divisore comune di <math|a> e <math|b> divide la combinazione
    <math|d>, e quindi è <math|\<leq\>d>. Dunque <math|d=<math-up|MCD>(a,b)>.
  </proof>

  <\immagine|Il minimo e il resto, ancora>
    È lo schema già visto per la divisione euclidea: si prende il più piccolo
    elemento positivo di un insieme chiuso per somme e differenze, e la
    divisione con resto costringe ogni altro elemento a esserne un multiplo.
    Il MCD è il \Smattone\T più piccolo con cui si costruiscono tutte le
    combinazioni di <math|a> e <math|b>.
  </immagine>

  <section|Le conseguenze di Bézout>

  <\corollary>
    Siano <math|a,b> non entrambi nulli e <math|d=<math-up|MCD>(a,b)>.

    <\enumerate>
      <item>Ogni divisore comune di <math|a> e <math|b> divide <math|d>.

      <item>Le combinazioni intere <math|u*a+v*b> sono esattamente i multipli
      di <math|d>.

      <item><math|a> e <math|b> sono coprimi se e solo se esistono <math|u,v>
      con <math|u*a+v*b=1>.

      <item>Scrivendo <math|a=d*a<rsub|1>> e <math|b=d*b<rsub|1>>, i numeri
      <math|a<rsub|1>,b<rsub|1>> sono coprimi.
    </enumerate>
  </corollary>

  <\proof>
    (1) Un divisore comune divide la combinazione <math|u*a+v*b=d>. (2) Ogni
    combinazione è multipla di <math|d>, perché <math|d> divide <math|a> e
    <math|b>; viceversa <math|k*d=(k*u)a+(k*v)b>. (3) Se esiste una
    combinazione uguale a <math|1>, ogni divisore comune positivo divide
    <math|1>, quindi il MCD è <math|1>; il viceversa è Bézout. (4) Dividendo
    <math|d=u*a+v*b> per <math|d> si ottiene
    <math|1=u*a<rsub|1>+v*b<rsub|1>>, e si applica il punto 3.
  </proof>

  Il punto 1 ci dà la caratterizzazione promessa: <math|<math-up|MCD>(a,b)> è
  il divisore comune positivo che è <em|diviso> da tutti gli altri divisori
  comuni. È una descrizione che usa solo la divisibilità, non l'ordine.

  <subsection|Il lemma di Euclide>

  Ecco una conseguenza così importante da meritare un nome. Cominciamo da un
  caso concreto: se <math|3\<mid\>5t>, possiamo dire che <math|3\<mid\>t>? Il
  trucco è scrivere <math|1> come combinazione di <math|3> e <math|5>, per
  esempio <math|1=2\<#22C5\>3-5>, e moltiplicare per <math|t>:

  <\equation*>
    t=2\<#22C5\>3t-5t.
  </equation*>

  Entrambi gli addendi sono multipli di <math|3> (il primo ovviamente, il
  secondo per ipotesi), quindi <math|3\<mid\>t>. L'unico ingrediente era
  l'identità di Bézout per <math|3> e <math|5>.

  <\theorem>
    <dueto|Lemma di Euclide>Se <math|r\<mid\>s*t> e
    <math|<math-up|MCD>(r,s)=1>, allora <math|r\<mid\>t>.
  </theorem>

  <\proof>
    Per Bézout <math|1=u*r+v*s>. Moltiplicando per <math|t>:
    <math|t=(u*t)r+v(s*t)>. Il primo addendo è multiplo di <math|r>, il
    secondo pure perché <math|r\<mid\>s*t>. Quindi <math|r\<mid\>t>.
  </proof>

  <\attenzione|L'ipotesi di coprimalità è indispensabile>
    <math|6\<mid\>4\<#22C5\>3> ma <math|6\<nmid\>4> e <math|6\<nmid\>3>.
    Senza <math|<math-up|MCD>(r,s)=1> il divisore può \Sdistribuirsi\T fra i
    due fattori.
  </attenzione>

  Due conseguenze immediate, che useremo di continuo.

  <\corollary>
    <\enumerate>
      <item>Se <math|a\<mid\>c>, <math|b\<mid\>c> e
      <math|<math-up|MCD>(a,b)=1>, allora <math|a*b\<mid\>c>.

      <item>Se <math|<math-up|MCD>(a,m)=1> e <math|<math-up|MCD>(a,n)=1>,
      allora <math|<math-up|MCD>(a,m*n)=1>.
    </enumerate>
  </corollary>

  <\proof>
    (1) Scriviamo <math|c=a*k>. Poiché <math|b\<mid\>a*k> e <math|b> è
    coprimo con <math|a>, il lemma di Euclide dà <math|b\<mid\>k>, cioè
    <math|k=b*h> e <math|c=a*b*h>. (2) Da <math|1=u*a+v*m> e
    <math|1=u<rprime|'>a+v<rprime|'>n> moltiplichiamo:
    <math|1=(u*u<rprime|'>a+u*v<rprime|'>n+v*u<rprime|'>m)a+(v*v<rprime|'>)m*n>,
    che è una combinazione di <math|a> e <math|m*n>.
  </proof>

  Il primo punto giustifica ciò che abbiamo usato nel capitolo 6: un numero è
  multiplo di <math|2> e di <math|3> se e solo se è multiplo di <math|6>. Il
  secondo dice che essere coprimi con <math|a> è una proprietà che passa ai
  prodotti.

  <section|Euclide con le potenze>

  L'idea di Euclide, togliere a un numero un multiplo dell'altro senza
  cambiare il MCD, funziona anche in situazioni meno ovvie.

  <\proposition>
    Per ogni <math|a,b\<geq\>1> si ha <math|<math-up|MCD>(3<rsup|a>-1,3<rsup|b>-1)=3<rsup|<math-up|MCD>(a,b)>-1>.
  </proposition>

  <\proof>
    Sia <math|a\<geq\>b>. Togliamo a <math|3<rsup|a>-1> il multiplo
    <math|3<rsup|a-b>(3<rsup|b>-1)> del secondo numero, scelto apposta per
    cancellare <math|3<rsup|a>>:

    <\equation*>
      (3<rsup|a>-1)-3<rsup|a-b>(3<rsup|b>-1)=3<rsup|a>-1-3<rsup|a>+3<rsup|a-b>=3<rsup|a-b>-1.
    </equation*>

    Per il lemma del passo di Euclide, <math|<math-up|MCD>(3<rsup|a>-1,3<rsup|b>-1)=<math-up|MCD>(3<rsup|a-b>-1,3<rsup|b>-1)>:
    la coppia di esponenti <math|(a,b)> è diventata <math|(a-b,b)>, ed è
    ancora della stessa forma. Ripetendo, riordinando ogni volta gli
    esponenti in modo che il primo sia il maggiore, la somma degli esponenti
    diminuisce strettamente finché entrambi sono positivi (passa da
    <math|a+b> ad <math|a>). Quindi dopo un numero finito di passi uno degli
    esponenti diventa <math|0>, e la coppia è <math|(e,0)>, con
    <math|<math-up|MCD>(3<rsup|e>-1,3<rsup|0>-1)=<math-up|MCD>(3<rsup|e>-1,0)=3<rsup|e>-1>.

    Resta da capire chi è <math|e>. Le coppie di esponenti seguono la regola
    <math|(x,y)\<mapsto\>(x-y,y)>, che per il lemma del passo di Euclide
    (applicato agli esponenti) non cambia <math|<math-up|MCD>(x,y)>. Dunque
    <math|e=<math-up|MCD>(e,0)=<math-up|MCD>(a,b)>.
  </proof>

  Il ragionamento contiene un metodo generale per dimostrare che un
  procedimento termina: trovare una quantità intera non negativa (qui la
  somma degli esponenti) che diminuisce strettamente a ogni passo. Per il
  principio del minimo non può diminuire per sempre.

  <\inbreve>
    Il MCD di due numeri non cambia se a uno dei due si toglie un multiplo
    dell'altro. Ripetendo questo passo con la divisione euclidea si ottiene
    l'algoritmo di Euclide, che termina perché i resti decrescono, e il cui
    ultimo resto non nullo è il MCD. Risalendo l'algoritmo si scrive il MCD
    come combinazione intera dei due numeri: è l'identità di Bézout. Ne
    seguono la caratterizzazione del MCD come divisore comune diviso da tutti
    gli altri, il criterio di coprimalità <math|u*a+v*b=1> e il lemma di
    Euclide: se <math|r\<mid\>s*t> e <math|r> è coprimo con <math|s>, allora
    <math|r\<mid\>t>.
  </inbreve>

  <\verifica|9.1>
    Calcola <math|<math-up|MCD>(252,198)> con l'algoritmo di Euclide e
    scrivilo come combinazione intera di <math|252> e <math|198>.
  </verifica>

  <\verifica|9.2>
    Dimostra che due interi consecutivi sono sempre coprimi, e che
    <math|<math-up|MCD>(2n+1,3n+1)=1> per ogni <math|n>. (Cerca una
    combinazione uguale a <math|1>.)
  </verifica>

  <\verifica|9.3>
    Sia <math|d=<math-up|MCD>(a,b)>. Dimostra che
    <math|<math-up|MCD>(k*a,k*b)=k*d> per ogni intero <math|k\<geq\>1>.
  </verifica>

  <\verifica|9.4>
    Calcola <math|<math-up|MCD>(2<rsup|12>-1,2<rsup|18>-1)> senza calcolare
    le potenze. (L'argomento della sezione 9.7 vale con <math|2> al posto di
    <math|3>.)
  </verifica>

  <chapter|I numeri primi e la fattorizzazione unica><label|cap-primi>

  I numeri primi sono gli atomi della moltiplicazione: ogni intero maggiore
  di <math|1> si costruisce moltiplicando primi, e in un solo modo.
  L'esistenza di questa scomposizione è un esercizio di induzione forte;
  l'unicità, molto meno ovvia, è un regalo del lemma di Euclide. Una volta
  stabilita, la fattorizzazione diventa una \Scarta d'identità\T dei numeri
  che rende trasparenti divisori, MCD e minimo comune multiplo.

  <section|Primi e composti>

  <\definition>
    Un intero <math|p\<geq\>2> è <em|primo> se i suoi unici divisori positivi
    sono <math|1> e <math|p>. Un intero <math|n\<geq\>2> che non è primo si
    dice <em|composto>: in tal caso <math|n=a*b> con
    <math|1\<less\>a,b\<less\>n>.
  </definition>

  Il numero <math|1> non è primo, per scelta: se lo fosse, la fattorizzazione
  non sarebbe più unica (<math|6=2\<#22C5\>3=1\<#22C5\>2\<#22C5\>3=1\<#22C5\>1\<#22C5\>2\<#22C5\>3>\<ldots\>).
  I primi più piccoli sono <math|2,3,5,7,11,13,17,19,23,\<ldots\>>.

  Il lemma di Euclide del capitolo 9 ha, per i primi, una forma
  particolarmente pulita.

  <\proposition>
    Sia <math|p> primo. Se <math|p\<mid\>a*b>, allora <math|p\<mid\>a> oppure
    <math|p\<mid\>b>. Più in generale, se <math|p> divide un prodotto
    <math|a<rsub|1>a<rsub|2>\<cdots\>a<rsub|k>>, allora divide almeno uno dei
    fattori.
  </proposition>

  <\proof>
    Il MCD di <math|p> e <math|a> è un divisore positivo di <math|p>, quindi
    vale <math|1> oppure <math|p>. Se vale <math|p>, allora <math|p\<mid\>a>.
    Se vale <math|1>, il lemma di Euclide applicato a <math|p\<mid\>a*b> dà
    <math|p\<mid\>b>. Il caso di <math|k> fattori segue per induzione su
    <math|k>: se <math|p\<mid\>(a<rsub|1>\<cdots\>a<rsub|k-1>)a<rsub|k>>,
    allora <math|p\<mid\>a<rsub|k>> oppure
    <math|p\<mid\>a<rsub|1>\<cdots\>a<rsub|k-1>>, e in questo secondo caso si
    applica l'ipotesi induttiva.
  </proof>

  Questa proprietà caratterizza i primi: se <math|n=a*b> è composto,
  <math|n\<mid\>a*b> ma <math|n> non divide né <math|a> né <math|b>, che sono
  più piccoli.

  <section|Esistenza della fattorizzazione>

  <\theorem>
    Ogni intero <math|n\<geq\>2> è un prodotto di numeri primi (eventualmente
    di un solo primo).
  </theorem>

  <\proof>
    Induzione forte su <math|n\<geq\>2>. Per <math|n=2>, il numero è primo.
    Sia <math|n\<gtr\>2> e supponiamo che ogni intero fra <math|2> e
    <math|n-1> sia prodotto di primi. Se <math|n> è primo non c'è nulla da
    dimostrare. Altrimenti <math|n=a*b> con <math|2\<leq\>a,b\<leq\>n-1>; per
    ipotesi induttiva <math|a=p<rsub|1>\<cdots\>p<rsub|r>> e
    <math|b=q<rsub|1>\<cdots\>q<rsub|s>> sono prodotti di primi, e allora
    anche <math|n=p<rsub|1>\<cdots\>p<rsub|r>q<rsub|1>\<cdots\>q<rsub|s>> lo
    è.
  </proof>

  <figura|<image|../../Archive/Images/aritmetica/fattori.pdf|105.8mm|48.4mm||>|Si
  spezza finché i pezzi sono primi: <math|360=12\<#22C5\>30=(3\<#22C5\>4)(5\<#22C5\>6)=2<rsup|3>\<#22C5\>3<rsup|2>\<#22C5\>5>.>

  <\anatomia|Perché proprio l'induzione forte>
    Per fattorizzare <math|n> non serve sapere nulla di <math|n-1>: in
    generale <math|n-1> non ha alcun rapporto con i fattori di <math|n>.
    Servono invece i fattori <math|a> e <math|b>, che possono essere molto
    più piccoli. Per fattorizzare <math|32000=32\<#22C5\>1000> usiamo
    <math|32> e <math|1000>, non <math|31999>. L'induzione forte è la forma
    adatta, perché permette di usare <em|qualunque> caso precedente.

    Volendo, si può usare l'induzione ordinaria sull'affermazione cumulativa
    <math|Q(n)>: \Sogni <math|k> con <math|2\<leq\>k\<leq\>n> è prodotto di
    primi\T. Il passo da <math|Q(n)> a <math|Q(n+1)> richiede solo di
    fattorizzare <math|n+1>, e i suoi eventuali fattori <math|a,b> stanno fra
    <math|2> e <math|n>. È lo stesso argomento, con tutte le ipotesi
    impacchettate in una sola.
  </anatomia>

  <section|Unicità della fattorizzazione>

  <\theorem>
    <dueto|Teorema fondamentale dell'aritmetica>Ogni intero <math|n\<geq\>2>
    si scrive come prodotto di primi in modo unico a meno dell'ordine dei
    fattori: se

    <\equation*>
      n=p<rsub|1>p<rsub|2>\<cdots\>p<rsub|L>=q<rsub|1>q<rsub|2>\<cdots\>q<rsub|S>
    </equation*>

    con tutti i <math|p<rsub|i>> e <math|q<rsub|j>> primi, allora <math|L=S>
    e, riordinando i <math|q<rsub|j>>, si ha <math|p<rsub|i>=q<rsub|i>> per
    ogni <math|i>.
  </theorem>

  <\proof>
    Induzione sulla lunghezza <math|L> della prima fattorizzazione. Se
    <math|L=1>, allora <math|n=p<rsub|1>> è primo, e la seconda
    fattorizzazione non può avere due o più fattori (sarebbe una scrittura di
    un primo come prodotto di numeri più piccoli di lui); quindi <math|S=1> e
    <math|q<rsub|1>=p<rsub|1>>.

    Sia <math|L\<gtr\>1> e supponiamo l'unicità vera per le fattorizzazioni
    di lunghezza <math|L-1>. Poiché <math|p<rsub|1>\<mid\>n=q<rsub|1>\<cdots\>q<rsub|S>>,
    il primo <math|p<rsub|1>> divide uno dei <math|q<rsub|j>>; riordinando,
    <math|p<rsub|1>\<mid\>q<rsub|1>>. Ma <math|q<rsub|1>> è primo e
    <math|p<rsub|1>\<gtr\>1>, quindi <math|p<rsub|1>=q<rsub|1>>. Cancellando
    questo fattore comune,

    <\equation*>
      <frac|n|p<rsub|1>>=p<rsub|2>\<cdots\>p<rsub|L>=q<rsub|2>\<cdots\>q<rsub|S>,
    </equation*>

    e la prima è una fattorizzazione di lunghezza <math|L-1>. (Se fosse
    <math|S=1>, avremmo <math|p<rsub|2>\<cdots\>p<rsub|L>=1>, impossibile.)
    Per ipotesi induttiva <math|L-1=S-1> e i fattori coincidono a meno
    dell'ordine; aggiungendo <math|p<rsub|1>=q<rsub|1>> si conclude.
  </proof>

  <\attenzione|Unicità non vuol dire stesso ordine>
    <math|2\<#22C5\>3\<#22C5\>5=5\<#22C5\>2\<#22C5\>3>: sono la stessa
    fattorizzazione. Per evitare ambiguità si raccolgono i primi uguali e si
    scrive <math|n=p<rsub|1><rsup|\<alpha\><rsub|1>>\<cdots\>p<rsub|k><rsup|\<alpha\><rsub|k>>>
    con <math|p<rsub|1>\<less\>\<cdots\>\<less\>p<rsub|k>>: in questa forma
    l'unicità dice che i primi e gli esponenti sono determinati da <math|n>.
  </attenzione>

  <subsection|I primi sono infiniti>

  Un'osservazione classica, non svolta a lezione ma utile per orientarsi. Se
  i primi fossero solo <math|p<rsub|1>,\<ldots\>,p<rsub|k>>, il numero
  <math|N=p<rsub|1>\<cdots\>p<rsub|k>+1> avrebbe un fattore primo, che
  dovrebbe essere uno dei <math|p<rsub|i>>; ma allora <math|p<rsub|i>>
  dividerebbe <math|N-p<rsub|1>\<cdots\>p<rsub|k>=1>, assurdo. Dunque i primi
  sono infiniti.

  <section|La fattorizzazione come carta d'identità>

  <\definition>
    Sia <math|p> primo e <math|N\<geq\>1>. L'<em|esponente> (o
    <em|valutazione>) <math|v<rsub|p>(N)> è l'esponente con cui <math|p>
    compare nella fattorizzazione di <math|N>; equivalentemente, è il più
    grande <math|\<alpha\>> tale che <math|p<rsup|\<alpha\>>\<mid\>N>.
  </definition>

  Per esempio <math|24=2<rsup|3>\<#22C5\>3>, quindi <math|v<rsub|2>(24)=3>,
  <math|v<rsub|3>(24)=1>, <math|v<rsub|5>(24)=0>. Per l'unicità della
  fattorizzazione, <math|v<rsub|p>(a*b)=v<rsub|p>(a)+v<rsub|p>(b)>: gli
  esponenti di un prodotto si sommano.

  <subsection|I divisori di un numero>

  <\proposition>
    Sia <math|N=p<rsub|1><rsup|\<alpha\><rsub|1>>\<cdots\>p<rsub|k><rsup|\<alpha\><rsub|k>>>.
    I divisori positivi di <math|N> sono esattamente i numeri
    <math|p<rsub|1><rsup|\<beta\><rsub|1>>\<cdots\>p<rsub|k><rsup|\<beta\><rsub|k>>>
    con <math|0\<leq\>\<beta\><rsub|i>\<leq\>\<alpha\><rsub|i>>. Il loro
    numero è

    <\equation*>
      \<tau\>(N)=(\<alpha\><rsub|1>+1)(\<alpha\><rsub|2>+1)\<cdots\>(\<alpha\><rsub|k>+1).
    </equation*>
  </proposition>

  <\proof>
    Se <math|d\<mid\>N>, cioè <math|N=d*e>, ogni primo di <math|d> compare in
    <math|N>, e <math|v<rsub|p>(d)\<leq\>v<rsub|p>(d)+v<rsub|p>(e)=v<rsub|p>(N)>.
    Viceversa un numero di quella forma divide <math|N>, con quoziente
    <math|<big|prod>p<rsub|i><rsup|\<alpha\><rsub|i>-\<beta\><rsub|i>>>. Per
    l'unicità della fattorizzazione numeri diversi corrispondono a scelte
    diverse degli esponenti; ogni <math|\<beta\><rsub|i>> si sceglie in
    <math|\<alpha\><rsub|i>+1> modi, indipendentemente.
  </proof>

  Per esempio <math|2000=2<rsup|4>\<#22C5\>5<rsup|3>> ha <math|(4+1)(3+1)=20>
  divisori positivi. (Salvo avviso contrario, contiamo solo i divisori
  positivi.)

  <subsection|MCD e mcm con gli esponenti>

  Il <em|minimo comune multiplo> <math|<math-up|mcm>(a,b)> di due interi
  positivi è il più piccolo intero positivo multiplo di entrambi. Scriviamo
  <math|a=<big|prod>p<rsub|i><rsup|\<alpha\><rsub|i>>> e
  <math|b=<big|prod>p<rsub|i><rsup|\<beta\><rsub|i>>> usando la stessa lista
  di primi per entrambi (con esponente <math|0> per i primi che compaiono in
  uno solo dei due).

  <\theorem>
    <\equation*>
      <math-up|MCD>(a,b)=<big|prod><rsub|i>p<rsub|i><rsup|min(\<alpha\><rsub|i>,\<beta\><rsub|i>)>,<space|2em><math-up|mcm>(a,b)=<big|prod><rsub|i>p<rsub|i><rsup|max(\<alpha\><rsub|i>,\<beta\><rsub|i>)>,
    </equation*>

    e di conseguenza <math|<math-up|MCD>(a,b)\<#22C5\><math-up|mcm>(a,b)=a*b>.
    Inoltre ogni multiplo comune di <math|a> e <math|b> è multiplo di
    <math|<math-up|mcm>(a,b)>.
  </theorem>

  <\proof>
    Un numero <math|c=<big|prod>p<rsub|i><rsup|\<gamma\><rsub|i>>> è divisore
    comune se e solo se <math|\<gamma\><rsub|i>\<leq\>\<alpha\><rsub|i>> e
    <math|\<gamma\><rsub|i>\<leq\>\<beta\><rsub|i>> per ogni <math|i>, cioè
    <math|\<gamma\><rsub|i>\<leq\>min(\<alpha\><rsub|i>,\<beta\><rsub|i>)>.
    Il più grande si ottiene con gli esponenti massimi possibili, cioè i
    minimi; e ogni divisore comune divide questo numero, in accordo con il
    capitolo 9. Allo stesso modo un multiplo comune <math|c> deve avere
    <math|v<rsub|p<rsub|i>>(c)\<geq\>max(\<alpha\><rsub|i>,\<beta\><rsub|i>)>
    per ogni <math|i>: il più piccolo si ottiene con gli esponenti uguali ai
    massimi, e ogni multiplo comune è multiplo di esso. Infine
    <math|min(\<alpha\>,\<beta\>)+max(\<alpha\>,\<beta\>)=\<alpha\>+\<beta\>>,
    e moltiplicando si ottiene <math|a*b>.
  </proof>

  <figura|<image|../../Archive/Images/aritmetica/divisori72.pdf|105.8mm|56.2mm||>|I
  divisori di <math|72=2<rsup|3>\<#22C5\>3<rsup|2>> disposti su una griglia:
  <math|<math-up|MCD>(18,12)=6> e <math|<math-up|mcm>(18,12)=36>.>

  Nella figura ogni divisore <math|2<rsup|x>3<rsup|y>> sta nel punto
  <math|(x,y)>. Il MCD di due divisori è il punto che ha per coordinate i
  minimi delle coordinate, il mcm quello con i massimi. Passando dal MCD al
  mcm si scambiano sistematicamente minimi e massimi, e le disuguaglianze
  <math|\<leq\>> diventano <math|\<geq\>>.

  Dalle formule seguono due fatti che useremo nel teorema cinese del resto:
  <math|a> e <math|b> sono coprimi se e solo se non hanno primi in comune; e
  se <math|<math-up|MCD>(m,n)=1>, allora per ogni <math|a> si ha
  <math|<math-up|MCD>(a,m*n)=<math-up|MCD>(a,m)\<#22C5\><math-up|MCD>(a,n)>,
  perché i primi di <math|m> e quelli di <math|n> sono diversi e il calcolo
  dei minimi si spezza in due parti indipendenti.

  <subsection|<math|<sqrt|2>>, di nuovo>

  Se fosse <math|a<rsup|2>=2b<rsup|2>> con <math|a,b\<geq\>1>, guardando
  l'esponente di <math|2> avremmo <math|v<rsub|2>(a<rsup|2>)=2v<rsub|2>(a)>,
  un numero pari, e <math|v<rsub|2>(2b<rsup|2>)=1+2v<rsub|2>(b)>, un numero
  dispari. L'unicità della fattorizzazione rende impossibile l'uguaglianza. È
  la stessa conclusione del capitolo 1, ottenuta ora guardando la carta
  d'identità dei numeri.

  <section|Terne con prodotto fissato>

  <\guidato|Quante terne <math|(x,y,z)> con <math|x*y*z=2000>?>
    Contiamo le terne ordinate di interi positivi con prodotto
    <math|2000=2<rsup|4>5<rsup|3>>. Ognuno dei tre numeri è un divisore,
    quindi <math|x=2<rsup|\<alpha\><rsub|1>>5<rsup|\<alpha\><rsub|2>>>,
    <math|y=2<rsup|\<beta\><rsub|1>>5<rsup|\<beta\><rsub|2>>>,
    <math|z=2<rsup|\<gamma\><rsub|1>>5<rsup|\<gamma\><rsub|2>>>. Per
    l'unicità della fattorizzazione la condizione <math|x*y*z=2000> equivale
    a

    <\equation*>
      \<alpha\><rsub|1>+\<beta\><rsub|1>+\<gamma\><rsub|1>=4,<space|2em>\<alpha\><rsub|2>+\<beta\><rsub|2>+\<gamma\><rsub|2>=3,
    </equation*>

    due equazioni indipendenti in naturali. Per stelle e sbarre (capitolo 5)
    la prima ha <math|<binom|6|2>=15> soluzioni e la seconda
    <math|<binom|5|2>=10>. Le terne sono <math|15\<#22C5\>10=150>. La
    fattorizzazione ha trasformato un problema moltiplicativo in due problemi
    additivi.
  </guidato>

  <section|Quanti fattori <math|p> ci sono in <math|n!>>

  Quante volte compare il primo <math|2> nella fattorizzazione di
  <math|19!=1\<#22C5\>2\<cdots\>19>? Ogni numero pari contribuisce almeno un
  fattore <math|2>; i multipli di <math|4> ne contribuiscono un secondo;
  quelli di <math|8> un terzo; <math|16> un quarto.

  <figura|<image|../../Archive/Images/aritmetica/legendre.pdf|155.0mm|50.0mm||>|Ogni
  pallino è un fattore <math|2>: per righe si contano i multipli di
  <math|2,4,8,16>.>

  Contando i pallini riga per riga:

  <\equation*>
    v<rsub|2>(19!)=\<lfloor\><frac|19|2>\<rfloor\>+\<lfloor\><frac|19|4>\<rfloor\>+\<lfloor\><frac|19|8>\<rfloor\>+\<lfloor\><frac|19|16>\<rfloor\>=9+4+2+1=16.
  </equation*>

  Qui <math|\<lfloor\>x\<rfloor\>> è la <em|parte intera> di <math|x>, il più
  grande intero <math|\<leq\>x>; i multipli di <math|d> fra <math|1> e
  <math|n> sono <math|\<lfloor\>n/d\<rfloor\>>. Dalle potenze
  <math|2<rsup|5>=32\<gtr\>19> in poi non ci sono più multipli.

  <\theorem>
    <dueto|Formula di Legendre>Per ogni primo <math|p> e ogni
    <math|n\<geq\>1>,

    <\equation*>
      v<rsub|p>(n!)=<big|sum><rsub|k\<geq\>1>\<lfloor\><frac|n|p<rsup|k>>\<rfloor\>=\<lfloor\><frac|n|p>\<rfloor\>+\<lfloor\><frac|n|p<rsup|2>>\<rfloor\>+\<lfloor\><frac|n|p<rsup|3>>\<rfloor\>+\<cdots\>,
    </equation*>

    dove la somma è finita perché i termini con <math|p<rsup|k>\<gtr\>n> sono
    nulli.
  </theorem>

  <\proof>
    Poiché <math|v<rsub|p>(n!)=<big|sum><rsub|m=1><rsup|n>v<rsub|p>(m)>,
    contiamo i \Spallini\T: il numero <math|m> ha <math|v<rsub|p>(m)>
    pallini, uno nella riga <math|k> per ogni <math|k\<geq\>1> tale che
    <math|p<rsup|k>\<mid\>m>. <em|Per righe>: nella riga <math|k> ci sono
    tanti pallini quanti multipli di <math|p<rsup|k>> fra <math|1> e
    <math|n>, cioè <math|\<lfloor\>n/p<rsup|k>\<rfloor\>>. Sommando le righe
    si ottiene la formula.

    <em|Per colonne> si raggruppano i numeri secondo il loro esponente
    esatto: quelli con <math|v<rsub|p>(m)=k> sono
    <math|\<lfloor\>n/p<rsup|k>\<rfloor\>-\<lfloor\>n/p<rsup|k+1>\<rfloor\>>
    e contribuiscono <math|k> ciascuno, quindi
    <math|v<rsub|p>(n!)=<big|sum><rsub|k\<geq\>1>k<around*|(|\<lfloor\>n/p<rsup|k>\<rfloor\>-\<lfloor\>n/p<rsup|k+1>\<rfloor\>|)>>.
    Raccogliendo i coefficienti di ogni <math|\<lfloor\>n/p<rsup|k>\<rfloor\>>
    (che compare con <math|+k> e con <math|-(k-1)>) la somma si riduce,
    telescopicamente, alla stessa formula.
  </proof>

  Per esempio, gli zeri finali di <math|100!> sono tanti quanti i fattori
  <math|10=2\<#22C5\>5>; i fattori <math|5> sono meno dei fattori <math|2>, e
  <math|v<rsub|5>(100!)=20+4=24>. Quindi <math|100!> termina con <math|24>
  zeri.

  <section|Differenze di quadrati>

  Quali interi <math|n> si scrivono come <math|x<rsup|2>-y<rsup|2>> con
  <math|x,y\<in\>\<bbb-Z\>>? La fattorizzazione
  <math|x<rsup|2>-y<rsup|2>=(x+y)(x-y)> trasforma la domanda in una domanda
  sui divisori.

  <figura|<image|../../Archive/Images/aritmetica/quadrati.pdf|135.0mm|50.6mm||>|Togliendo
  il quadrato <math|y<rsup|2>> dal quadrato <math|x<rsup|2>> e ricomponendo,
  si ottiene un rettangolo <math|(x+y)\<times\>(x-y)>.>

  Ponendo <math|u=x+y> e <math|v=x-y> si ha <math|u*v=n>, e viceversa
  <math|x=<frac|u+v|2>>, <math|y=<frac|u-v|2>>. Questi sono interi se e solo
  se <math|u+v> e <math|u-v> sono pari, cioè se e solo se <math|u> e <math|v>
  hanno <em|la stessa parità>. Dunque:

  <\proposition>
    Le soluzioni intere di <math|x<rsup|2>-y<rsup|2>=n> corrispondono alle
    fattorizzazioni <math|n=u*v> con <math|u,v> della stessa parità. Per
    <math|n\<neq\>0>:

    <\itemize>
      <item>se <math|n> è dispari, ogni fattorizzazione va bene (i fattori
      sono entrambi dispari), e per ogni divisore <math|d> di <math|n> si ha
      la soluzione <math|x=<frac|d+n/d|2>>, <math|y=<frac|d-n/d|2>>;

      <item>se <math|n> è pari ma <math|4\<nmid\>n>, non ci sono soluzioni:
      due fattori dispari darebbero un prodotto dispari, e due fattori pari
      un prodotto multiplo di <math|4>;

      <item>se <math|4\<mid\>n>, ogni divisore <math|d> di <math|n/4> dà la
      soluzione <math|x=d+<frac|n|4d>>, <math|y=d-<frac|n|4d>>, che
      corrisponde a <math|u=2d> e <math|v=2<frac|n|4d>>.
    </itemize>
  </proposition>

  Per esempio <math|x<rsup|2>-y<rsup|2>=26> non ha soluzioni:
  <math|26=1\<#22C5\>26=2\<#22C5\>13> (e le versioni con i segni), sempre con
  fattori di parità diversa. Nel capitolo 13 rivedremo questo fatto in
  un'altra luce: un quadrato diviso per <math|4> lascia sempre resto <math|0>
  o <math|1>.

  <\inbreve>
    Ogni intero <math|n\<geq\>2> è prodotto di primi (induzione forte), in
    modo unico a meno dell'ordine (lemma di Euclide: un primo che divide un
    prodotto divide un fattore). Gli esponenti <math|v<rsub|p>> sono la carta
    d'identità di un numero: i divisori hanno esponenti più piccoli, il MCD
    prende i minimi, il mcm i massimi, e <math|<math-up|MCD>\<#22C5\><math-up|mcm>=a*b>.
    La formula di Legendre conta i fattori <math|p> in <math|n!> per righe o
    per colonne. Fattorizzare un'espressione, come
    <math|x<rsup|2>-y<rsup|2>=(x+y)(x-y)>, riduce un'equazione a un problema
    di divisori.
  </inbreve>

  <\verifica|10.1>
    Fattorizza <math|1260> e calcola il numero dei suoi divisori positivi.
    Calcola poi <math|<math-up|MCD>(1260,1512)> e
    <math|<math-up|mcm>(1260,1512)> con gli esponenti.
  </verifica>

  <\verifica|10.2>
    Con quanti zeri termina <math|1000!>? Qual è l'esponente di <math|3> in
    <math|30!>?
  </verifica>

  <\verifica|10.3>
    Trova tutte le soluzioni intere di <math|x<rsup|2>-y<rsup|2>=15> e di
    <math|x<rsup|2>-y<rsup|2>=24>.
  </verifica>

  <\verifica|10.4>
    Dimostra che un intero <math|N\<geq\>1> è un quadrato perfetto se e solo
    se <math|\<tau\>(N)> è dispari.
  </verifica>

  <chapter|Equazioni negli interi><label|cap-diofantee>

  Con monete da <math|2> e da <math|3> euro si possono pagare esattamente
  <math|9> euro? Sì: <math|3\<#22C5\>3>, oppure
  <math|3\<#22C5\>2+1\<#22C5\>3>. E con monete da <math|6> e da <math|10> si
  possono pagare <math|7> euro, anche ammettendo il resto? No: ogni
  combinazione di <math|6> e <math|10> è pari. Le <em|equazioni diofantee
  lineari> <math|a*x+b*y=c>, da risolvere negli interi, sono la domanda
  generale dietro questi esempi. Grazie a Bézout sappiamo già quasi tutto per
  risolverle.

  <section|Il problema e la sua immagine>

  Siano <math|a,b,c\<in\>\<bbb-Z\>> con <math|a,b> non entrambi nulli.
  Cerchiamo tutte le coppie <math|(x,y)\<in\>\<bbb-Z\><rsup|2>> tali che

  <\equation*>
    a*x+b*y=c.
  </equation*>

  Geometricamente l'equazione è una retta del piano, e cerchiamo i suoi punti
  a coordinate intere, cioè i punti della retta che stanno sul <em|reticolo>
  <math|\<bbb-Z\><rsup|2>>.

  <figura|<image|../../Archive/Images/aritmetica/reticolo.pdf|126.0mm|67.5mm||>|La
  retta <math|2x+3y=9> passa per i punti interi <math|(0,3)>, <math|(3,1)>,
  <math|(6,-1)>, \<ldots\>, distanziati di un passo fisso.>

  La figura suggerisce due cose: i punti interi, se ci sono, sono infiniti, e
  sono disposti a intervalli regolari. Le dimostreremo entrambe.

  <section|Quando ci sono soluzioni>

  <\theorem>
    Sia <math|d=<math-up|MCD>(a,b)>. L'equazione <math|a*x+b*y=c> ha
    soluzioni intere se e solo se <math|d\<mid\>c>.
  </theorem>

  <\proof>
    <em|Necessità.> Se <math|a*x+b*y=c> con <math|x,y> interi, allora
    <math|d>, che divide <math|a> e <math|b>, divide la combinazione
    <math|a*x+b*y=c>.

    <em|Sufficienza.> Se <math|c=d\<gamma\>>, per Bézout esistono <math|u,v>
    con <math|a*u+b*v=d>. Moltiplicando per <math|\<gamma\>>,
    <math|a(\<gamma\>u)+b(\<gamma\>v)=c>: la coppia
    <math|(x<rsub|0>,y<rsub|0>)=(\<gamma\>u,\<gamma\>v)> è una soluzione.
  </proof>

  Questo è il corollario del capitolo 9 detto con altre parole: le
  combinazioni intere di <math|a> e <math|b> sono esattamente i multipli del
  MCD. Nell'esempio iniziale, <math|<math-up|MCD>(6,10)=2\<nmid\>7>, quindi
  <math|6x+10y=7> non ha soluzioni; invece <math|<math-up|MCD>(2,3)=1> divide
  qualunque <math|c>.

  <section|Tutte le soluzioni>

  Trovata una soluzione particolare <math|(x<rsub|0>,y<rsub|0>)>, studiamo le
  altre. Se anche <math|(x,y)> è soluzione, sottraendo le due uguaglianze
  otteniamo

  <\equation*>
    a(x-x<rsub|0>)+b(y-y<rsub|0>)=0.
  </equation*>

  La differenza di due soluzioni risolve l'equazione <em|omogenea>
  <math|a*X+b*Y=0>. Risolviamo questa.

  <\lemma>
    Sia <math|d=<math-up|MCD>(a,b)> e scriviamo <math|a=d*a<rsub|1>>,
    <math|b=d*b<rsub|1>>. Le soluzioni intere di <math|a*X+b*Y=0> sono
    esattamente <math|(X,Y)=(b<rsub|1>t,-a<rsub|1>t)> con
    <math|t\<in\>\<bbb-Z\>>.
  </lemma>

  <\proof>
    Queste coppie sono soluzioni: <math|a*b<rsub|1>t-b*a<rsub|1>t=d*a<rsub|1>b<rsub|1>t-d*b<rsub|1>a<rsub|1>t=0>.
    Viceversa, se <math|a*X+b*Y=0>, dividendo per <math|d> si ha
    <math|a<rsub|1>X=-b<rsub|1>Y>. Supponiamo <math|a<rsub|1>\<neq\>0>.
    Allora <math|a<rsub|1>\<mid\>b<rsub|1>Y>, e poiché
    <math|a<rsub|1>,b<rsub|1>> sono coprimi (capitolo 9), il lemma di Euclide
    dà <math|a<rsub|1>\<mid\>Y>: <math|Y=-a<rsub|1>t> per un certo <math|t>.
    Sostituendo, <math|a<rsub|1>X=a<rsub|1>b<rsub|1>t>, e dividendo per
    <math|a<rsub|1>\<neq\>0> si ha <math|X=b<rsub|1>t>. Se invece
    <math|a<rsub|1>=0>, allora <math|b<rsub|1>=\<pm\>1> (perché
    <math|<math-up|MCD>(0,b<rsub|1>)=\|b<rsub|1>\|=1>), l'equazione dà
    <math|Y=0>, mentre <math|X> è arbitrario: ponendo <math|t=b<rsub|1>X> si
    ha <math|X=b<rsub|1>t> (perché <math|b<rsub|1><rsup|2>=1>) e
    <math|Y=0=-a<rsub|1>t>, come voluto.
  </proof>

  <\theorem>
    Se <math|d=<math-up|MCD>(a,b)\<mid\>c> e <math|(x<rsub|0>,y<rsub|0>)> è
    una soluzione di <math|a*x+b*y=c>, tutte le soluzioni sono

    <\equation*>
      x=x<rsub|0>+<frac|b|d>t,<space|2em>y=y<rsub|0>-<frac|a|d>t,<space|2em>t\<in\>\<bbb-Z\>.
    </equation*>
  </theorem>

  <\proof>
    Ogni soluzione differisce da <math|(x<rsub|0>,y<rsub|0>)> per una
    soluzione dell'omogenea, che per il lemma ha la forma
    <math|(b<rsub|1>t,-a<rsub|1>t)>. Viceversa ogni coppia di quella forma è
    soluzione, perché

    <\equation*>
      a<around*|(|x<rsub|0>+<frac|b|d>t|)>+b<around*|(|y<rsub|0>-<frac|a|d>t|)>=a*x<rsub|0>+b*y<rsub|0>+<frac|a*b|d>t-<frac|a*b|d>t=c.
    </equation*>
  </proof>

  Il vettore <math|<around*|(|<frac|b|d>,-<frac|a|d>|)>> è parallelo alla
  retta (perché <math|a<frac|b|d>+b<around*|(|-<frac|a|d>|)>=0>) ed è il
  passo più corto fra due punti interi consecutivi: è il \Ssalto\T della
  figura, <math|(3,-2)> per la retta <math|2x+3y=9>.

  <\immagine|Particolare più omogenea>
    La struttura \Ssoluzione generale = una soluzione particolare + tutte le
    soluzioni dell'omogenea\T non è un caso isolato. L'abbiamo vista nascere
    dalla linearità: la differenza di due soluzioni risolve il problema
    omogeneo. È la stessa struttura delle ricorrenze lineari del capitolo 7 e
    dei sistemi lineari di algebra lineare. Dove c'è linearità, c'è questa
    decomposizione.
  </immagine>

  <section|La ricetta, e un esempio completo>

  Per risolvere <math|a*x+b*y=c>:

  <\enumerate>
    <item>calcolare <math|d=<math-up|MCD>(a,b)> con l'algoritmo di Euclide;

    <item>se <math|d\<nmid\>c>, non ci sono soluzioni; altrimenti scrivere
    <math|c=d\<gamma\>>;

    <item>risalire l'algoritmo per trovare <math|u,v> con <math|a*u+b*v=d>;

    <item>la soluzione particolare è <math|(x<rsub|0>,y<rsub|0>)=(\<gamma\>u,\<gamma\>v)>;

    <item>tutte le soluzioni sono <math|(x<rsub|0>+<frac|b|d>t,y<rsub|0>-<frac|a|d>t)>
    con <math|t\<in\>\<bbb-Z\>>.
  </enumerate>

  Con coefficienti piccoli si può trovare la soluzione particolare a occhio:
  per <math|2x+3y=9> si vede subito <math|(0,3)>, e le soluzioni sono
  <math|(3t,3-2t)>.

  <\guidato|L'equazione <math|11x+41y=2>>
    <em|Esistenza.> <math|<math-up|MCD>(11,41)=1\<mid\>2>. L'algoritmo e la
    risalita sono stati fatti nel capitolo 9:
    <math|1=15\<#22C5\>11-4\<#22C5\>41>.

    <em|Soluzione particolare.> Moltiplicando per <math|2>:
    <math|2=30\<#22C5\>11-8\<#22C5\>41>, quindi
    <math|(x<rsub|0>,y<rsub|0>)=(30,-8)>.

    <em|Tutte le soluzioni.> <math|x=30+41t>, <math|y=-8-11t>, con
    <math|t\<in\>\<bbb-Z\>>. Controllo per <math|t=-1>: <math|(-11,3)>, e
    <math|11\<#22C5\>(-11)+41\<#22C5\>3=-121+123=2>.

    <em|Quante hanno <math|\|x\|,\|y\|\<leq\>100>?> Da
    <math|-100\<leq\>30+41t\<leq\>100> si ricava
    <math|-130\<leq\>41t\<leq\>70>, cioè <math|-<frac|130|41>\<leq\>t\<leq\><frac|70|41>>,
    e con <math|t> intero <math|t\<in\><around*|{|-3,-2,-1,0,1|}>>. Per
    questi valori <math|y=-8-11t> vale <math|25,14,3,-8,-19>, sempre entro i
    limiti. Le soluzioni richieste sono <math|5>.
  </guidato>

  <\attenzione|Formule diverse, stesse soluzioni>
    Per la stessa equazione si possono scrivere parametrizzazioni
    dall'aspetto diverso: partendo da un'altra soluzione particolare, o
    sostituendo <math|t> con <math|-t> o con <math|t+k>. Per esempio
    <math|x=30-41s>, <math|y=-8+11s> descrive esattamente le stesse coppie
    (con <math|s=-t>). Prima di dire che due risposte sono diverse, conviene
    controllare se generano lo stesso insieme di coppie.
  </attenzione>

  <\inbreve>
    <math|a*x+b*y=c> ha soluzioni intere se e solo se
    <math|<math-up|MCD>(a,b)\<mid\>c>; una soluzione particolare viene
    dall'identità di Bézout. La differenza di due soluzioni risolve
    l'equazione omogenea, che grazie al lemma di Euclide ha soluzioni
    <math|t<around*|(|<frac|b|d>,-<frac|a|d>|)>>. Quindi tutte le soluzioni
    sono una soluzione particolare più un multiplo intero di quel vettore:
    punti equidistanti su una retta.
  </inbreve>

  <\verifica|11.1>
    Risolvi negli interi <math|252x+198y=36> e <math|252x+198y=35>. (Usa la
    verifica 9.1.)
  </verifica>

  <\verifica|11.2>
    Un negozio vende penne a <math|7> euro e quaderni a <math|11> euro. In
    quanti modi si possono spendere esattamente <math|100> euro comprando un
    numero naturale di penne e di quaderni?
  </verifica>

  <\verifica|11.3>
    Per quali interi <math|c> l'equazione <math|12x+18y=c> ha soluzioni? Per
    <math|c=30> trova tutte le soluzioni con <math|x\<gtr\>0> e
    <math|y\<gtr\>0>.
  </verifica>

  <chapter|Relazioni di equivalenza e quozienti><label|cap-equivalenza>

  Il quarto pilastro nasce da un gesto che facciamo continuamente senza
  accorgercene: considerare uguali cose diverse. Le frazioni
  <math|<frac|1|2>> e <math|<frac|2|4>> sono scritte in modo diverso ma
  indicano lo stesso numero. Le ore <math|3> e <math|15> sono la stessa
  posizione della lancetta. Due insiemi con cinque elementi sono diversi, ma
  \Shanno lo stesso numero\T. La matematica rende rigoroso questo gesto con
  le relazioni di equivalenza, e il prezzo da pagare, cioè controllare che le
  definizioni non dipendano dalle scelte, è il cuore del capitolo.

  <section|Quando cose diverse sono \Sla stessa\T>

  <\definition>
    Una relazione <math|\<sim\>> su un insieme <math|A> è una <em|relazione
    di equivalenza> se è

    <\itemize>
      <item><em|riflessiva>: <math|x\<sim\>x> per ogni <math|x\<in\>A>;

      <item><em|simmetrica>: se <math|x\<sim\>y> allora <math|y\<sim\>x>;

      <item><em|transitiva>: se <math|x\<sim\>y> e <math|y\<sim\>z> allora
      <math|x\<sim\>z>.
    </itemize>
  </definition>

  Sono esattamente le proprietà che ci aspettiamo da una nozione di
  \Ssomiglianza\T ragionevole: ognuno somiglia a sé stesso, la somiglianza
  non ha un verso, e due cose simili a una terza sono simili tra loro.
  Qualche esempio:

  <\itemize>
    <item>su <math|\<bbb-Z\>>, \S<math|x\<sim\>y> se <math|x> e <math|y>
    hanno la stessa parità\T;

    <item>su <math|\<bbb-Z\>>, \S<math|x\<sim\>y> se <math|x> e <math|y>
    danno lo stesso resto nella divisione per <math|n>\T (sarà la congruenza
    del prossimo capitolo);

    <item>sugli insiemi finiti, \S<math|X\<sim\>Y> se esiste una biiezione
    <math|X\<rightarrow\>Y>\T: riflessiva per l'identità, simmetrica perché
    l'inversa di una biiezione è una biiezione, transitiva perché la
    composizione di biiezioni lo è (capitolo 3).
  </itemize>

  Invece <math|\<leq\>> non è di equivalenza (non è simmetrica), e nemmeno la
  divisibilità.

  <section|Classi di equivalenza>

  <\definition>
    Sia <math|\<sim\>> una relazione di equivalenza su <math|A>. La
    <em|classe di equivalenza> di <math|x\<in\>A> è l'insieme degli elementi
    equivalenti a <math|x>:

    <\equation*>
      [x]=<around*|{|y\<in\>A:y\<sim\>x|}>.
    </equation*>

    Ogni elemento di una classe si dice un suo <em|rappresentante>.
  </definition>

  Per la riflessività <math|x\<in\>[x]>: nessuna classe è vuota. La notazione
  <math|[x]> indica un insieme, non un elemento, e lo stesso insieme ha in
  generale molti nomi diversi, uno per ogni suo rappresentante.

  <\theorem>
    Siano <math|x,y\<in\>A>. Allora <math|[x]=[y]> se e solo se
    <math|x\<sim\>y>. Inoltre due classi o coincidono o sono disgiunte.
  </theorem>

  <\proof>
    Se <math|[x]=[y]>, allora <math|x\<in\>[x]=[y]>, cioè <math|x\<sim\>y>.
    Viceversa, sia <math|x\<sim\>y>. Se <math|z\<in\>[x]>, allora
    <math|z\<sim\>x> e <math|x\<sim\>y>, quindi <math|z\<sim\>y> per
    transitività: <math|[x]\<subseteq\>[y]>. Per simmetria <math|y\<sim\>x>,
    e lo stesso argomento dà <math|[y]\<subseteq\>[x]>.

    Infine, se due classi hanno un elemento comune
    <math|z\<in\>[x]\<cap\>[y]>, allora <math|z\<sim\>x> e <math|z\<sim\>y>;
    per simmetria <math|x\<sim\>z>, e per transitività <math|x\<sim\>y>,
    quindi <math|[x]=[y]>.
  </proof>

  <\concetto|Le classi o coincidono o sono disgiunte>
    Le classi di equivalenza non si sovrappongono mai parzialmente: ogni
    elemento di <math|A> sta in una e una sola classe. Le classi formano
    quindi una <em|partizione> di <math|A>: una famiglia di sottoinsiemi non
    vuoti, a due a due disgiunti, la cui unione è <math|A>.
  </concetto>

  Vale anche il viceversa: data una partizione di <math|A>, la relazione
  \S<math|x\<sim\>y> se <math|x> e <math|y> stanno nello stesso pezzo\T è di
  equivalenza, e le sue classi sono i pezzi. Relazioni di equivalenza e
  partizioni sono due modi di dire la stessa cosa.

  <section|L'insieme quoziente>

  <\definition>
    L'<em|insieme quoziente> <math|A/\<sim\>> è l'insieme delle classi di
    equivalenza:

    <\equation*>
      A/\<sim\>=<around*|{|[x]:x\<in\>A|}>.
    </equation*>

    La funzione <math|\<pi\>:A\<rightarrow\>A/\<sim\>>, <math|\<pi\>(x)=[x]>,
    si chiama <em|proiezione canonica>; è suriettiva, perché ogni classe è la
    classe di qualcuno.
  </definition>

  <\immagine|Incollare>
    Passare da <math|A> ad <math|A/\<sim\>> è come incollare fra loro tutti
    gli elementi equivalenti: ogni gruppo incollato diventa un solo punto del
    nuovo insieme. Gli elementi del quoziente non sono gli elementi di
    <math|A>: sono i pacchetti. Quando diciamo che due elementi \Ssono uguali
    nel quoziente\T intendiamo che stanno nello stesso pacchetto, non che
    sono uguali in <math|A>.
  </immagine>

  <section|I razionali come quoziente>

  Il primo esempio importante è <math|\<bbb-Q\>>. Una frazione è una coppia
  <math|(a,b)> con <math|a\<in\>\<bbb-Z\>> e
  <math|b\<in\>\<bbb-Z\>\<setminus\><around*|{|0|}>>, ma coppie diverse
  possono indicare lo stesso numero: <math|(1,2)>, <math|(2,4)> e
  <math|(3,6)> rappresentano tutte <math|<frac|1|2>>. Poniamo

  <\equation*>
    (a,b)\<sim\>(c,d)<space|1em>\<Longleftrightarrow\><space|1em>a*d=b*c,
  </equation*>

  che è la condizione <math|<frac|a|b>=<frac|c|d>> scritta senza divisioni.

  <\proposition>
    <math|\<sim\>> è una relazione di equivalenza su
    <math|\<bbb-Z\>\<times\>(\<bbb-Z\>\<setminus\><around*|{|0|}>)>.
  </proposition>

  <\proof>
    Riflessività e simmetria sono immediate (<math|a*b=b*a>; e <math|a*d=b*c>
    equivale a <math|c*b=d*a>). Per la transitività, supponiamo
    <math|a*d=b*c> e <math|c*f=d*e>. Moltiplicando la prima per <math|f> e
    usando la seconda, <math|a*d*f=b*c*f=b*d*e>, cioè <math|d(a*f-b*e)=0>.
    Poiché <math|d\<neq\>0>, si ha <math|a*f=b*e>, cioè
    <math|(a,b)\<sim\>(e,f)>.
  </proof>

  Si noti dove serve l'ipotesi <math|d\<neq\>0>: è proprio il denominatore
  della frazione intermedia. Ora definiamo
  <math|\<bbb-Q\>=<around*|(|\<bbb-Z\>\<times\>(\<bbb-Z\>\<setminus\><around*|{|0|}>)|)>/\<sim\>>
  e scriviamo <math|<frac|a|b>> per la classe di <math|(a,b)>. Graficamente,
  le frazioni equivalenti a <math|<frac|a|b>> sono i punti a coordinate
  intere su una stessa retta per l'origine.

  <figura|<image|../../Archive/Images/aritmetica/frazioni.pdf|88.1mm|52.5mm||>|Ogni
  razionale è una retta per l'origine: <math|<frac|1|2>,<frac|2|4>,<frac|3|6>>
  stanno sulla stessa retta, <math|<frac|2|3>> e <math|<frac|4|6>> su
  un'altra.>

  <subsection|Operazioni ben definite>

  Vogliamo sommare due razionali con la regola di sempre,

  <\equation*>
    <frac|a|b>+<frac|c|d>=<frac|a*d+b*c|b*d>.
  </equation*>

  Ma attenzione: la formula usa <em|rappresentanti>. Se al posto di
  <math|(a,b)> usiamo un'altra coppia equivalente, il risultato deve restare
  nella stessa classe, altrimenti la \Ssomma di due razionali\T non sarebbe
  un concetto sensato.

  <\proposition>
    Se <math|(a,b)\<sim\>(a<rprime|'>,b<rprime|'>)> e
    <math|(c,d)\<sim\>(c<rprime|'>,d<rprime|'>)>, allora
    <math|(a*d+b*c,b*d)\<sim\>(a<rprime|'>d<rprime|'>+b<rprime|'>c<rprime|'>,b<rprime|'>d<rprime|'>)>.
  </proposition>

  <\proof>
    Le ipotesi sono <math|a*b<rprime|'>=b*a<rprime|'>> e
    <math|c*d<rprime|'>=d*c<rprime|'>>. Dobbiamo verificare
    <math|(a*d+b*c)b<rprime|'>d<rprime|'>=b*d(a<rprime|'>d<rprime|'>+b<rprime|'>c<rprime|'>)>.
    Sviluppando il membro sinistro e usando le ipotesi:

    <\equation*>
      (a*b<rprime|'>)d*d<rprime|'>+(c*d<rprime|'>)b*b<rprime|'>=(b*a<rprime|'>)d*d<rprime|'>+(d*c<rprime|'>)b*b<rprime|'>=b*d(a<rprime|'>d<rprime|'>+b<rprime|'>c<rprime|'>).
    </equation*>
  </proof>

  <\attenzione|Una formula non è ancora una definizione>
    Ogni volta che si definisce un'operazione o una funzione su un quoziente
    usando i rappresentanti, bisogna dimostrare che il risultato non dipende
    dalla loro scelta. Si dice che l'operazione è <em|ben definita> (o
    <em|ben posta>). Un esempio di \Sdefinizione\T sbagliata:
    <math|<frac|a|b>\<mapsto\>a>, \Sil numeratore\T. Non è una funzione su
    <math|\<bbb-Q\>>, perché <math|<frac|1|2>=<frac|2|4>> darebbe due valori
    diversi.
  </attenzione>

  Solo dopo aver dimostrato la buona definizione si possono trasferire le
  proprietà: per esempio la commutatività della somma di razionali segue da
  quella degli interi, perché <math|a*d+b*c=c*b+d*a>. Lo stesso schema si
  ripeterà tra poco con gli interi modulo <math|n>.

  <section|Contare le classi>

  Il principio della divisione del capitolo 4 si rilegge in questo
  linguaggio.

  <\proposition>
    Sia <math|A> finito e <math|\<sim\>> una relazione di equivalenza le cui
    classi hanno tutte <math|k> elementi. Allora
    <math|\|A/\<sim\>\|=\|A\|/k>.
  </proposition>

  <\proof>
    Le classi sono una partizione di <math|A>: sommando le loro cardinalità
    si ottiene <math|\|A\|>. Se sono <math|N> classi da <math|k> elementi,
    <math|N*k=\|A\|>.
  </proof>

  Il coefficiente binomiale ne è l'esempio tipico: sulle liste ordinate di
  <math|r> elementi distinti di un insieme con <math|n> elementi, diciamo che
  due liste sono equivalenti se contengono gli stessi elementi. Ogni classe
  ha <math|r!> liste e le classi sono i sottoinsiemi:
  <math|<binom|n|r>=<frac|n!/(n-r)!|r!>>. Gli anagrammi del capitolo 5 sono
  le classi delle disposizioni di lettere numerate, quando si dichiarano
  equivalenti quelle che differiscono solo nella numerazione.

  <\inbreve>
    Una relazione di equivalenza è riflessiva, simmetrica e transitiva. Le
    sue classi formano una partizione: due classi o coincidono o sono
    disgiunte, e <math|[x]=[y]> esattamente quando <math|x\<sim\>y>.
    L'insieme quoziente ha per elementi le classi. Le operazioni sul
    quoziente si definiscono con i rappresentanti, ma bisogna dimostrare che
    il risultato non dipende dalla scelta. I razionali sono un quoziente
    delle coppie di interi, e contare le classi della stessa grandezza è il
    principio della divisione.
  </inbreve>

  <\verifica|12.1>
    Su <math|\<bbb-R\>> poniamo <math|x\<sim\>y> se
    <math|x-y\<in\>\<bbb-Z\>>. Dimostra che è una relazione di equivalenza e
    descrivi le classi. Quale intervallo contiene esattamente un
    rappresentante per classe?
  </verifica>

  <\verifica|12.2>
    Su <math|\<bbb-Z\>> la relazione \S<math|x\<sim\>y> se
    <math|\|x-y\|\<leq\>1>\T è di equivalenza? Quali proprietà valgono e
    quali no?
  </verifica>

  <\verifica|12.3>
    Dimostra che il prodotto di razionali
    <math|<frac|a|b>\<#22C5\><frac|c|d>=<frac|a*c|b*d>> è ben definito.
  </verifica>

  <chapter|Congruenze><label|cap-congruenze>

  Che giorno della settimana sarà fra <math|100> giorni? Non serve contare
  cento giorni: basta sapere che le settimane si ripetono ogni <math|7>, e
  che <math|100=14\<#22C5\>7+2>. Fra cento giorni sarà come fra due. Ciò che
  conta di <math|100> è il suo resto nella divisione per <math|7>. Le
  congruenze sono il linguaggio di questo modo di ragionare, e uniscono il
  terzo pilastro (il resto) al quarto (identificare).

  <section|L'aritmetica dell'orologio>

  <\definition>
    Sia <math|n\<geq\>1>. Due interi <math|a,b> sono <em|congrui modulo
    <math|n>>, e si scrive <math|a\<equiv\>b<pmod|n>>, se <math|n\<mid\>a-b>,
    cioè se <math|a=b+k*n> per qualche <math|k\<in\>\<bbb-Z\>>.
  </definition>

  Per esempio <math|17\<equiv\>2<pmod|5>>, perché <math|17-2=15>; e
  <math|-3\<equiv\>4<pmod|7>>. La definizione con la differenza è comoda
  nelle dimostrazioni; quella che segue è la più intuitiva.

  <\proposition>
    <math|a\<equiv\>b<pmod|n>> se e solo se <math|a> e <math|b> hanno lo
    stesso resto nella divisione per <math|n>.
  </proposition>

  <\proof>
    Siano <math|a=q<rsub|1>n+r<rsub|1>> e <math|b=q<rsub|2>n+r<rsub|2>> le
    divisioni euclidee. Se <math|r<rsub|1>=r<rsub|2>>, allora
    <math|a-b=(q<rsub|1>-q<rsub|2>)n>. Viceversa, se <math|a-b=k*n>, allora
    <math|a=(q<rsub|2>+k)n+r<rsub|2>> con <math|0\<leq\>r<rsub|2>\<less\>n>:
    per l'unicità della divisione euclidea di <math|a>, il resto di <math|a>
    è <math|r<rsub|2>>.
  </proof>

  <\proposition>
    La congruenza modulo <math|n> è una relazione di equivalenza su
    <math|\<bbb-Z\>>.
  </proposition>

  <\proof>
    <math|n\<mid\>a-a=0>. Se <math|n\<mid\>a-b>, allora
    <math|n\<mid\>-(a-b)=b-a>. Se <math|n\<mid\>a-b> e <math|n\<mid\>b-c>,
    allora <math|n> divide la somma <math|a-c>. (Oppure, più velocemente:
    \Savere lo stesso resto\T è evidentemente riflessiva, simmetrica e
    transitiva.)
  </proof>

  <section|Le classi resto>

  La classe di <math|a> modulo <math|n> è

  <\equation*>
    [a]<rsub|n>=<around*|{|b\<in\>\<bbb-Z\>:b\<equiv\>a<pmod|n>|}>=<around*|{|a+k*n:k\<in\>\<bbb-Z\>|}>,
  </equation*>

  una progressione aritmetica di passo <math|n> che si estende in entrambe le
  direzioni. Modulo <math|5>:

  <\eqnarray*>
    <tformat|<table|<row|<cell|[0]<rsub|5>>|<cell|=>|<cell|<around*|{|\<ldots\>,-10,-5,0,5,10,\<ldots\>|}>>>|<row|<cell|[1]<rsub|5>>|<cell|=>|<cell|<around*|{|\<ldots\>,-9,-4,1,6,11,\<ldots\>|}>>>|<row|<cell|[2]<rsub|5>>|<cell|=>|<cell|<around*|{|\<ldots\>,-8,-3,2,7,12,\<ldots\>|}>>>>>
  </eqnarray*>

  e analogamente <math|[3]<rsub|5>> e <math|[4]<rsub|5>>.

  <figura|<image|../../Archive/Images/aritmetica/spirale5.pdf|72.8mm|71.3mm||>|Avvolgendo
  gli interi su una spirale con cinque raggi, ogni raggio è una classe resto
  modulo <math|5>.>

  Per la divisione euclidea ogni intero è congruo esattamente a uno dei resti
  <math|0,1,\<ldots\>,n-1>. Quindi le classi modulo <math|n> sono esattamente
  <math|n>:

  <\equation*>
    \<bbb-Z\>/n\<bbb-Z\>=<around*|{|[0]<rsub|n>,[1]<rsub|n>,\<ldots\>,[n-1]<rsub|n>|}>.
  </equation*>

  È l'insieme quoziente di <math|\<bbb-Z\>> rispetto alla congruenza. Ogni
  classe ha infiniti nomi: <math|[1]<rsub|12>=[13]<rsub|12>=[-11]<rsub|12>>.
  Scrivere <math|x\<equiv\>a<pmod|n>> equivale a dire
  <math|x\<in\>[a]<rsub|n>>, e se le soluzioni di un problema sono
  <math|x=7+3k> possiamo scriverle indifferentemente come
  <math|x\<equiv\>7<pmod|3>> o come <math|x\<equiv\>1<pmod|3>>.

  <section|Le congruenze rispettano somma e prodotto>

  <\theorem>
    Se <math|a\<equiv\>a<rprime|'><pmod|n>> e
    <math|b\<equiv\>b<rprime|'><pmod|n>>, allora

    <\equation*>
      a+b\<equiv\>a<rprime|'>+b<rprime|'>,<space|1em>a-b\<equiv\>a<rprime|'>-b<rprime|'>,<space|1em>a*b\<equiv\>a<rprime|'>b<rprime|'><space|1em><pmod|n>.
    </equation*>

    In particolare <math|a<rsup|k>\<equiv\>a<rprime|'><rsup|k><pmod|n>> per
    ogni <math|k\<in\>\<bbb-N\>>.
  </theorem>

  <\proof>
    Scriviamo <math|a=a<rprime|'>+h*n> e <math|b=b<rprime|'>+k*n>. Allora
    <math|a\<pm\>b=a<rprime|'>\<pm\>b<rprime|'>+(h\<pm\>k)n> e

    <\equation*>
      a*b=(a<rprime|'>+h*n)(b<rprime|'>+k*n)=a<rprime|'>b<rprime|'>+(a<rprime|'>k+b<rprime|'>h+h*k*n)n.
    </equation*>

    Le potenze seguono dal prodotto per induzione su <math|k>.
  </proof>

  <\concetto|Sostituire con un congruo>
    In qualunque espressione costruita con somme, differenze e prodotti si
    può sostituire un numero con un altro a esso congruo: il risultato
    cambia, ma resta nella stessa classe. Per calcolare modulo <math|n>
    conviene quindi ridurre i numeri <em|prima> di operare.
  </concetto>

  <\guidato|Ridurre prima di calcolare>
    <em|<math|85\<#22C5\>38> modulo <math|7>.> Poiché
    <math|85=84+1\<equiv\>1> e <math|38=35+3\<equiv\>3>, si ha
    <math|85\<#22C5\>38\<equiv\>1\<#22C5\>3=3<pmod|7>>. Nessun prodotto
    grande.

    <em|Il resto di <math|2<rsup|100>> diviso <math|7>.> Osserviamo che
    <math|2<rsup|3>=8\<equiv\>1<pmod|7>>. Allora
    <math|2<rsup|99>=(2<rsup|3>)<rsup|33>\<equiv\>1<rsup|33>=1>, e
    <math|2<rsup|100>=2<rsup|99>\<#22C5\>2\<equiv\>2<pmod|7>>.

    <em|L'ultima cifra di <math|7<rsup|100>>.> L'ultima cifra è il resto
    modulo <math|10>. Si ha <math|7<rsup|2>=49\<equiv\>-1<pmod|10>>, quindi
    <math|7<rsup|4>\<equiv\>1> e <math|7<rsup|100>=(7<rsup|4>)<rsup|25>\<equiv\>1<pmod|10>>:
    l'ultima cifra è <math|1>.

    Il trucco comune è trovare una potenza che vale <math|1> (o <math|-1>).
    Nel capitolo 21 vedremo che, quando la base è coprima con il modulo, una
    tale potenza esiste sempre, e sapremo anche dove cercarla.
  </guidato>

  <section|Criteri di divisibilità>

  Un numero scritto in base dieci con cifre
  <math|a<rsub|k>\<ldots\>a<rsub|1>a<rsub|0>> vale
  <math|N=a<rsub|0>+10a<rsub|1>+10<rsup|2>a<rsub|2>+\<cdots\>+10<rsup|k>a<rsub|k>>.
  Le congruenze spiegano in una riga i criteri di divisibilità che si
  imparano a memoria a scuola.

  <\itemize>
    <item><strong|Per <math|3> e per <math|9>.> Poiché
    <math|10\<equiv\>1<pmod|9>>, anche <math|10<rsup|j>\<equiv\>1>, e quindi
    <math|N\<equiv\>a<rsub|0>+a<rsub|1>+\<cdots\>+a<rsub|k><pmod|9>>. Lo
    stesso vale modulo <math|3>. Un numero è divisibile per <math|3> (o per
    <math|9>) se e solo se lo è la somma delle sue cifre. Esempio:
    <math|12345\<equiv\>1+2+3+4+5=15\<equiv\>0<pmod|3>>.

    <item><strong|Per <math|11>.> Poiché <math|10\<equiv\>-1<pmod|11>>, si ha
    <math|10<rsup|j>\<equiv\>(-1)<rsup|j>>, e
    <math|N\<equiv\>a<rsub|0>-a<rsub|1>+a<rsub|2>-\<cdots\><pmod|11>>. Un
    numero è divisibile per <math|11> se e solo se lo è la somma a segni
    alterni delle sue cifre. Esempio: <math|918082>: <math|2-8+0-8+1-9=-22>,
    divisibile per <math|11>. (Partire dalla cifra più significativa cambia
    al più il segno, che non conta.)
  </itemize>

  <section|Quadrati modulo 4>

  Un intero è pari o dispari. Se <math|m=2k>, allora
  <math|m<rsup|2>=4k<rsup|2>\<equiv\>0<pmod|4>>; se <math|m=2k+1>, allora
  <math|m<rsup|2>=4k<rsup|2>+4k+1\<equiv\>1<pmod|4>>. Quindi <em|ogni
  quadrato è congruo a <math|0> o a <math|1> modulo <math|4>>.

  Ne segue che <math|x<rsup|2>-y<rsup|2>> modulo <math|4> può valere solo
  <math|0-0>, <math|1-1>, <math|1-0>, <math|0-1>, cioè
  <math|0,1,-1\<equiv\>3>: mai <math|2>. Ritroviamo così in un attimo il
  risultato del capitolo 10: se <math|n\<equiv\>2<pmod|4>> l'equazione
  <math|x<rsup|2>-y<rsup|2>=n> non ha soluzioni intere. Allo stesso modo
  <math|x<rsup|2>+y<rsup|2>> non è mai <math|\<equiv\>3<pmod|4>>: nessun
  numero come <math|3,7,11,\<ldots\>> è somma di due quadrati.

  <\immagine|Una congruenza come test di impossibilità>
    Se un'equazione tra interi ha una soluzione, la stessa equazione vale
    modulo qualsiasi <math|n>. Quindi, se la si riesce a rendere impossibile
    modulo un <math|n> ben scelto, è impossibile negli interi. Modulo
    <math|4> si vedono i quadrati, modulo <math|9> le somme di cifre, modulo
    <math|2> le parità.
  </immagine>

  <section|Cancellare con cautela>

  Si può sempre moltiplicare una congruenza per un intero. Semplificare un
  fattore comune, invece, è pericoloso.

  <\attenzione|<math|2a\<equiv\>2b> non implica <math|a\<equiv\>b>>
    <math|2\<#22C5\>1\<equiv\>2\<#22C5\>4<pmod|6>>, perché
    <math|2\<equiv\>8<pmod|6>>; ma <math|1\<nequiv\>4<pmod|6>>. Da
    <math|a*c\<equiv\>b*c<pmod|n>> si ricava solo <math|n\<mid\>c(a-b)>, e il
    fattore <math|c> può \Sassorbire\T una parte di <math|n>.
  </attenzione>

  <\proposition>
    Sia <math|a*c\<equiv\>b*c<pmod|n>> e <math|d=<math-up|MCD>(c,n)>. Allora
    <math|a\<equiv\>b<pmod|<frac|n|d>>>. In particolare, se
    <math|<math-up|MCD>(c,n)=1>, si può cancellare <math|c>:
    <math|a\<equiv\>b<pmod|n>>.
  </proposition>

  <\proof>
    Da <math|n\<mid\>c(a-b)>, dividendo per <math|d>, si ha
    <math|<frac|n|d>\<mid\><frac|c|d>(a-b)>. Ma <math|<frac|n|d>> e
    <math|<frac|c|d>> sono coprimi (capitolo 9), quindi per il lemma di
    Euclide <math|<frac|n|d>\<mid\>a-b>.
  </proof>

  Nell'esempio, <math|<math-up|MCD>(2,6)=2>: da <math|2a\<equiv\>2b<pmod|6>>
  si deduce soltanto <math|a\<equiv\>b<pmod|3>>, e infatti
  <math|1\<equiv\>4<pmod|3>>.

  <section|Congruenze lineari>

  Risolvere <math|a*x\<equiv\>b<pmod|n>> significa trovare gli <math|x> per
  cui <math|a*x-b=k*n> per qualche <math|k>, cioè risolvere l'equazione
  diofantea <math|a*x+n*y=b> (con <math|y=-k>). Il capitolo 11 dice già
  tutto; traduciamolo.

  <\theorem>
    Sia <math|d=<math-up|MCD>(a,n)>. La congruenza
    <math|a*x\<equiv\>b<pmod|n>> ha soluzioni se e solo se <math|d\<mid\>b>.
    In tal caso, se <math|x<rsub|0>> è una soluzione, le soluzioni sono
    esattamente gli <math|x\<equiv\>x<rsub|0><pmod|<frac|n|d>>>; modulo
    <math|n> sono le <math|d> classi

    <\equation*>
      x<rsub|0>,<space|1em>x<rsub|0>+<frac|n|d>,<space|1em>x<rsub|0>+2<frac|n|d>,<space|1em>\<ldots\>,<space|1em>x<rsub|0>+(d-1)<frac|n|d>.
    </equation*>
  </theorem>

  <\proof>
    L'esistenza è il criterio per <math|a*x+n*y=b>. Se <math|x<rsub|0>> è una
    soluzione, allora <math|x> è soluzione se e solo se
    <math|a*x\<equiv\>a*x<rsub|0><pmod|n>>, e per la proposizione sulla
    cancellazione questo implica <math|x\<equiv\>x<rsub|0><pmod|n/d>>;
    viceversa, se <math|x=x<rsub|0>+t<frac|n|d>>, allora
    <math|a*x=a*x<rsub|0>+t<frac|a|d>n\<equiv\>a*x<rsub|0><pmod|n>>. Infine
    le classi modulo <math|n> dei numeri <math|x<rsub|0>+t<frac|n|d>>
    dipendono solo da <math|t> modulo <math|d>, e i valori
    <math|t=0,\<ldots\>,d-1> danno numeri distinti modulo <math|n>
    (differiscono di meno di <math|n>).
  </proof>

  <\guidato|Tre congruenze lineari>
    <em|<math|14x\<equiv\>15<pmod|21>>.> <math|<math-up|MCD>(14,21)=7\<nmid\>15>:
    nessuna soluzione. Infatti <math|14x-15> non è mai multiplo di <math|7>.

    <em|<math|6x\<equiv\>4<pmod|10>>.> <math|<math-up|MCD>(6,10)=2\<mid\>4>:
    due classi di soluzioni. Dividendo tutto per <math|2> si ha
    <math|3x\<equiv\>2<pmod|5>>, e provando i resti si trova
    <math|x\<equiv\>4<pmod|5>> (<math|3\<#22C5\>4=12\<equiv\>2>). Modulo
    <math|10> le soluzioni sono <math|x\<equiv\>4> e <math|x\<equiv\>9>.

    <em|<math|12x\<equiv\>18<pmod|30>>.> <math|<math-up|MCD>(12,30)=6\<mid\>18>.
    Dividendo per <math|6>: <math|2x\<equiv\>3<pmod|5>>, cioè
    <math|x\<equiv\>4<pmod|5>>. Modulo <math|30> le soluzioni sono le sei
    classi <math|4,9,14,19,24,29>.

    Dividere per <math|d> coefficiente, termine noto <em|e modulo> è il modo
    pratico di applicare il teorema.
  </guidato>

  <section|L'inverso modulo <math|n>>

  Il caso <math|b=1> è il più importante: un intero <math|x> tale che
  <math|a*x\<equiv\>1<pmod|n>> si chiama <em|inverso di <math|a> modulo
  <math|n>>. Per il teorema precedente esiste se e solo se
  <math|<math-up|MCD>(a,n)=1>, ed è unico modulo <math|n>. Una volta trovato,
  ogni congruenza <math|a*x\<equiv\>b<pmod|n>> si risolve moltiplicando per
  l'inverso: <math|x\<equiv\>a<rsup|-1>b<pmod|n>>.

  <em|Con Bézout.> Se <math|u*a+v*n=1>, passando modulo <math|n> si ha
  <math|u*a\<equiv\>1>: <math|u> è l'inverso. Per esempio, dal capitolo 9
  sappiamo che <math|8\<#22C5\>17-3\<#22C5\>45=1>: dunque
  <math|17<rsup|-1>\<equiv\>8<pmod|45>> e, leggendo la stessa uguaglianza
  modulo <math|17>, <math|45<rsup|-1>\<equiv\>-3\<equiv\>14<pmod|17>>.

  <em|Per tentativi, con moduli piccoli.> Cerchiamo <math|a*K=1+b*h>: si
  provano <math|h=0,1,2,\<ldots\>> finché <math|a\<mid\>b*h+1>. Per l'inverso
  di <math|5> modulo <math|7>: <math|7\<#22C5\>0+1=1>,
  <math|7\<#22C5\>1+1=8>, <math|7\<#22C5\>2+1=15=5\<#22C5\>3>. Quindi
  <math|5<rsup|-1>\<equiv\>3<pmod|7>>, e infatti
  <math|5\<#22C5\>3=15\<equiv\>1>. Bastano al più <math|a> tentativi, perché
  conta solo <math|h> modulo <math|a>: conviene sempre lavorare con numeri
  piccoli.

  <\inbreve>
    <math|a\<equiv\>b<pmod|n>> significa che <math|n\<mid\>a-b>, cioè che
    <math|a> e <math|b> hanno lo stesso resto. È una relazione di equivalenza
    con <math|n> classi, rappresentate dai resti <math|0,\<ldots\>,n-1>. Le
    congruenze rispettano somme, prodotti e potenze, quindi si può ridurre
    prima di calcolare; così si spiegano i criteri di divisibilità e si
    dimostrano impossibilità. Si cancella un fattore solo se è coprimo con il
    modulo; in generale il modulo si divide per il MCD.
    <math|a*x\<equiv\>b<pmod|n>> è risolubile se e solo se
    <math|<math-up|MCD>(a,n)\<mid\>b>, con <math|<math-up|MCD>(a,n)> classi
    di soluzioni; l'inverso esiste esattamente quando <math|a> è coprimo con
    <math|n>.
  </inbreve>

  <\verifica|13.1>
    Calcola il resto della divisione di <math|3<rsup|50>+5<rsup|20>> per
    <math|8>.
  </verifica>

  <\verifica|13.2>
    Dimostra che un numero è divisibile per <math|4> se e solo se lo è il
    numero formato dalle sue ultime due cifre.
  </verifica>

  <\verifica|13.3>
    Risolvi <math|9x\<equiv\>6<pmod|15>> e <math|7x\<equiv\>3<pmod|19>>.
  </verifica>

  <\verifica|13.4>
    Dimostra che l'equazione <math|x<rsup|2>-3y<rsup|2>=2> non ha soluzioni
    intere. (Prova modulo <math|3>.)
  </verifica>

  <chapter|Fare i conti con le classi: <math|\<bbb-Z\>/n\<bbb-Z\>>><label|cap-zn>

  Nel capitolo precedente abbiamo calcolato con i numeri, ricordandoci a ogni
  passo che ci interessava solo il resto. Ora facciamo un salto di
  prospettiva: prendiamo come <em|oggetti> le classi stesse e definiamo
  direttamente la somma e il prodotto di due classi. Nasce un nuovo sistema
  numerico, finito, con <math|n> elementi, in cui valgono quasi tutte le
  regole dell'aritmetica, ma non proprio tutte. Capire quali valgono, e
  perché, è lo scopo di questo capitolo.

  <section|Operazioni sulle classi>

  Vogliamo porre

  <\equation*>
    [a]<rsub|n>+[b]<rsub|n>=[a+b]<rsub|n>,<space|2em>[a]<rsub|n>\<#22C5\>[b]<rsub|n>=[a*b]<rsub|n>.
  </equation*>

  Come per i razionali (capitolo 12), la formula usa dei rappresentanti, e
  prima di accettarla dobbiamo controllare che il risultato non dipenda da
  quali scegliamo.

  <\proposition>
    Somma e prodotto di classi sono ben definiti: se
    <math|[a]<rsub|n>=[a<rprime|'>]<rsub|n>> e
    <math|[b]<rsub|n>=[b<rprime|'>]<rsub|n>>, allora
    <math|[a+b]<rsub|n>=[a<rprime|'>+b<rprime|'>]<rsub|n>> e
    <math|[a*b]<rsub|n>=[a<rprime|'>b<rprime|'>]<rsub|n>>.
  </proposition>

  <\proof>
    Le ipotesi dicono <math|a\<equiv\>a<rprime|'>> e
    <math|b\<equiv\>b<rprime|'><pmod|n>>, e il teorema del capitolo 13 dà
    <math|a+b\<equiv\>a<rprime|'>+b<rprime|'>> e
    <math|a*b\<equiv\>a<rprime|'>b<rprime|'>>. Per il prodotto lo si può
    vedere anche direttamente: <math|a*b-a<rprime|'>b<rprime|'>=(a-a<rprime|'>)b+a<rprime|'>(b-b<rprime|'>)>,
    somma di due multipli di <math|n>.
  </proof>

  <\attenzione|Non tutte le formule passano al quoziente>
    Proviamo a definire una \Spotenza di classi\T
    <math|[a]<rsub|n><rsup|[k]<rsub|n>>=[a<rsup|k>]<rsub|n>>. Modulo
    <math|3>: <math|[1]<rsub|3>=[4]<rsub|3>>, ma <math|2<rsup|1>=2> e
    <math|2<rsup|4>=16\<equiv\>1<pmod|3>>. Lo stesso esponente scritto in due
    modi dà due risultati: questa \Soperazione\T non è ben definita.
    L'esponente si comporta in modo diverso dalla base: lo studieremo nel
    capitolo 22.
  </attenzione>

  <section|Le proprietà si ereditano>

  Una volta dimostrata la buona definizione, le proprietà di somma e prodotto
  passano da <math|\<bbb-Z\>> al quoziente quasi gratis, perché ogni calcolo
  con le classi si riduce a un calcolo con i rappresentanti. Per esempio,
  l'associatività:

  <\equation*>
    ([a]+[b])+[c]=[a+b]+[c]=[(a+b)+c]=[a+(b+c)]=[a]+[b+c]=[a]+([b]+[c]).
  </equation*>

  Allo stesso modo si verificano:

  <\itemize>
    <item>somma e prodotto sono associativi e commutativi;

    <item><math|[0]<rsub|n>> è neutro per la somma e <math|[1]<rsub|n>> per
    il prodotto;

    <item>ogni classe ha un opposto: <math|[a]<rsub|n>+[-a]<rsub|n>=[0]<rsub|n>>;

    <item>vale la proprietà distributiva: <math|[a]([b]+[c])=[a][b]+[a][c]>.
  </itemize>

  Un insieme con una somma e un prodotto che soddisfano queste regole si
  chiama <em|anello commutativo con unità>: <math|\<bbb-Z\>> lo è, e ora
  anche <math|\<bbb-Z\>/n\<bbb-Z\>>. Nel capitolo 17 daremo la definizione
  precisa; per ora ci interessa notare ciò che <em|manca> rispetto a
  <math|\<bbb-Q\>>: il prodotto non ha sempre un inverso.

  <section|Le tavole>

  Essendo un insieme finito, <math|\<bbb-Z\>/n\<bbb-Z\>> si può descrivere
  interamente con le sue tavole di somma e prodotto. Confrontiamo le tavole
  del prodotto modulo <math|5> e modulo <math|6> (scriviamo i rappresentanti
  <math|0,\<ldots\>,n-1> al posto delle classi).

  <figura|<image|../../Archive/Images/aritmetica/tabelle.pdf|133.0mm|51.1mm||>|Modulo
  <math|5> ogni riga non nulla contiene un <math|1>; modulo <math|6>
  compaiono degli zeri fuori dalla riga e dalla colonna dello zero.>

  Modulo <math|5> ogni classe non nulla ha un inverso:
  <math|1\<#22C5\>1=2\<#22C5\>3=4\<#22C5\>4=1>. Modulo <math|6> invece
  <math|[2]>, <math|[3]> e <math|[4]> non hanno inverso, e succede qualcosa
  di inaudito per gli interi: <math|[2]\<#22C5\>[3]=[0]>, anche se nessuno
  dei due fattori è nullo.

  <section|Quali classi sono invertibili>

  <\definition>
    Una classe <math|[a]<rsub|n>> è <em|invertibile> se esiste
    <math|[x]<rsub|n>> con <math|[a]<rsub|n>[x]<rsub|n>=[1]<rsub|n>>.
    L'insieme delle classi invertibili si indica con
    <math|(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>>.
  </definition>

  <\theorem>
    <math|[a]<rsub|n>> è invertibile se e solo se
    <math|<math-up|MCD>(a,n)=1>.
  </theorem>

  <\proof>
    <math|[a][x]=[1]> significa <math|a*x\<equiv\>1<pmod|n>>, cioè
    <math|a*x+n*y=1> per qualche <math|y>. Se questo accade, ogni divisore
    comune di <math|a> e <math|n> divide <math|1>, quindi
    <math|<math-up|MCD>(a,n)=1>. Viceversa, se <math|<math-up|MCD>(a,n)=1>,
    Bézout fornisce <math|x,y> con <math|a*x+n*y=1>.
  </proof>

  La condizione dipende solo dalla classe, come deve: se
  <math|a\<equiv\>a<rprime|'><pmod|n>>, allora <math|a<rprime|'>=a+k*n> e
  <math|<math-up|MCD>(a<rprime|'>,n)=<math-up|MCD>(a,n)> per il passo di
  Euclide.

  <\guidato|Gli invertibili modulo 12>
    Fra <math|0,1,\<ldots\>,11> i numeri coprimi con <math|12> sono
    <math|1,5,7,11>, quindi <math|(\<bbb-Z\>/12\<bbb-Z\>)<rsup|\<times\>>=<around*|{|[1],[5],[7],[11]|}>>.
    Cerchiamo gli inversi: <math|5\<#22C5\>5=25\<equiv\>1>,
    <math|7\<#22C5\>7=49\<equiv\>1>, <math|11\<#22C5\>11=121\<equiv\>1<pmod|12>>.
    Ognuno è l'inverso di sé stesso. Le altre classi, per esempio <math|[2]>,
    <math|[3]>, <math|[4]>, <math|[6]>, non hanno inverso, perché hanno un
    fattore in comune con <math|12>.
  </guidato>

  <section|Divisori dello zero e modulo primo>

  Se <math|[a]\<neq\>[0]> e <math|d=<math-up|MCD>(a,n)\<gtr\>1>, allora
  <math|[a]> non solo non è invertibile, ma è un <em|divisore dello zero>:
  con <math|b=<frac|n|d>> si ha <math|[b]\<neq\>[0]> (perché
  <math|0\<less\>b\<less\>n>) e <math|a*b=<frac|a|d>n\<equiv\>0>. Per esempio
  <math|[2]<rsub|12>[6]<rsub|12>=[0]<rsub|12>>. In
  <math|\<bbb-Z\>/n\<bbb-Z\>> ogni classe non nulla è dunque <em|o>
  invertibile <em|o> un divisore dello zero.

  Quando non ci sono divisori dello zero? Esattamente quando ogni <math|a>
  fra <math|1> e <math|n-1> è coprimo con <math|n>, cioè quando <math|n> è
  primo.

  <\concetto|<math|\<bbb-Z\>/p\<bbb-Z\>> è un campo>
    Se <math|p> è primo, ogni classe non nulla di <math|\<bbb-Z\>/p\<bbb-Z\>>
    è invertibile. Un anello commutativo con unità in cui ogni elemento non
    nullo è invertibile si chiama <em|campo>: <math|\<bbb-Z\>/p\<bbb-Z\>> è
    un campo con <math|p> elementi. Se invece <math|n> è composto,
    <math|\<bbb-Z\>/n\<bbb-Z\>> non è un campo.
  </concetto>

  In un campo vale la <em|legge di annullamento del prodotto>: se
  <math|u*v=0> allora <math|u=0> o <math|v=0> (se <math|u\<neq\>0>, si
  moltiplica per <math|u<rsup|-1>>). Modulo un primo, quindi,

  <\equation*>
    u*v\<equiv\>0<pmod|p><space|1em>\<Longrightarrow\><space|1em>u\<equiv\>0<text|
    oppure >v\<equiv\>0<pmod|p>,
  </equation*>

  che è di nuovo il lemma di Euclide per i primi. Modulo un numero composto
  la legge fallisce, e bisogna contare con cura.

  <\guidato|Quante coppie hanno prodotto nullo modulo 8?>
    Contiamo le coppie <math|(x,y)> di classi modulo <math|8> con
    <math|x*y\<equiv\>0<pmod|8>>, riga per riga, cioè fissando <math|x>.

    <\itemize>
      <item><math|x=0>: ogni <math|y> va bene, <math|8> coppie.

      <item><math|x> dispari (<math|1,3,5,7>): <math|x> è invertibile, quindi
      <math|y\<equiv\>0>: <math|1> coppia ciascuno.

      <item><math|x=2> o <math|x=6>: <math|x> è il doppio di un dispari,
      quindi <math|8\<mid\>x*y> richiede <math|4\<mid\>y>, cioè
      <math|y\<in\><around*|{|0,4|}>>: <math|2> coppie ciascuno.

      <item><math|x=4>: <math|8\<mid\>4y> richiede <math|y> pari: <math|4>
      coppie.
    </itemize>

    In totale <math|8+4+4+4=20> coppie, contro le <math|8+8-1=15> che ci
    sarebbero se valesse la legge di annullamento.
  </guidato>

  <figura|<image|../../Archive/Images/aritmetica/griglia8.pdf|73.5mm|50.8mm||>|Le
  <math|20> soluzioni di <math|x*y\<equiv\>0<pmod|8>>.>

  <\inbreve>
    Somma e prodotto di classi si definiscono con i rappresentanti e sono ben
    definiti; le proprietà di <math|\<bbb-Z\>> passano a
    <math|\<bbb-Z\>/n\<bbb-Z\>>, che è un anello commutativo con unità con
    <math|n> elementi. Una classe <math|[a]<rsub|n>> è invertibile se e solo
    se <math|<math-up|MCD>(a,n)=1>; altrimenti, se non è nulla, è un divisore
    dello zero. Modulo un primo <math|p> ogni classe non nulla è invertibile:
    <math|\<bbb-Z\>/p\<bbb-Z\>> è un campo e vale la legge di annullamento
    del prodotto, che invece fallisce per moduli composti.
  </inbreve>

  <\verifica|14.1>
    Scrivi la tavola del prodotto di <math|\<bbb-Z\>/7\<bbb-Z\>> limitata
    alle classi non nulle e trova l'inverso di ogni classe.
  </verifica>

  <\verifica|14.2>
    Elenca gli elementi di <math|(\<bbb-Z\>/15\<bbb-Z\>)<rsup|\<times\>>> e
    trova l'inverso di ciascuno. Quali classi non nulle sono divisori dello
    zero?
  </verifica>

  <\verifica|14.3>
    Dimostra che, se <math|p> è primo, le uniche soluzioni di
    <math|x<rsup|2>\<equiv\>1<pmod|p>> sono <math|x\<equiv\>\<pm\>1>. Trova
    invece quattro soluzioni di <math|x<rsup|2>\<equiv\>1<pmod|8>>.
  </verifica>

  <chapter|Sistemi di congruenze: il teorema cinese del
  resto><label|cap-cinese>

  Un antico problema chiede un numero che diviso per <math|3> dia resto
  <math|2>, diviso per <math|5> dia resto <math|3> e diviso per <math|7> dia
  resto <math|2>. Sono più condizioni sul resto, da soddisfare insieme.
  Quando i moduli sono coprimi la risposta esiste sempre ed è unica nel modo
  più forte possibile: è il teorema cinese del resto. In questo capitolo lo
  impariamo come strumento per risolvere sistemi; nel capitolo 18 lo
  rileggeremo come un'affermazione sulla struttura di
  <math|\<bbb-Z\>/n\<bbb-Z\>>.

  <section|Due condizioni insieme>

  Scriviamo i numeri da <math|0> a <math|14> in una tabella con <math|3>
  righe e <math|5> colonne, mettendo ogni numero nella riga del suo resto
  modulo <math|3> e nella colonna del suo resto modulo <math|5>.

  <figura|<image|../../Archive/Images/aritmetica/cinese.pdf|155.0mm|60.0mm||>|A
  sinistra: i numeri da <math|0> a <math|14> occupano tutte le <math|15>
  caselle, una ciascuno. A destra: modulo <math|2> e <math|4> metà delle
  caselle restano vuote.>

  Ogni casella della tabella di sinistra contiene esattamente un numero: per
  ogni coppia di resti <math|(r,s)> c'è uno e un solo numero fra <math|0> e
  <math|14> che ha resto <math|r> modulo <math|3> e resto <math|s> modulo
  <math|5>. Nella tabella di destra, con i moduli <math|2> e <math|4>, alcune
  caselle restano vuote e altre ricevono due numeri: un numero pari non può
  avere resto dispari modulo <math|4>. La differenza fra le due situazioni è
  che <math|3> e <math|5> sono coprimi, mentre <math|2> e <math|4> no.

  <section|Il metodo di sostituzione>

  <\guidato|Un sistema di due congruenze>
    Risolviamo <math|x\<equiv\>2<pmod|3>>, <math|x\<equiv\>3<pmod|5>>.

    La prima condizione dice <math|x=2+3k> per qualche
    <math|k\<in\>\<bbb-Z\>>. Sostituiamo nella seconda:
    <math|2+3k\<equiv\>3<pmod|5>>, cioè <math|3k\<equiv\>1<pmod|5>>. Poiché
    <math|3\<#22C5\>2=6\<equiv\>1>, l'inverso di <math|3> modulo <math|5> è
    <math|2>, e <math|k\<equiv\>2<pmod|5>>: <math|k=2+5h>. Allora

    <\equation*>
      x=2+3(2+5h)=8+15h,<space|2em><text|cioè><space|1em>x\<equiv\>8<pmod|15>.
    </equation*>

    Controllo: <math|8=2\<#22C5\>3+2> e <math|8=1\<#22C5\>5+3>. Il numero
    <math|8> è proprio quello nella casella (riga <math|2>, colonna <math|3>)
    della tabella.
  </guidato>

  Il metodo è sempre lo stesso: si scrive la prima congruenza come
  <math|x=a+m*k>, si sostituisce nella seconda, si ottiene una congruenza
  lineare in <math|k> e la si risolve con il capitolo 13.

  <section|Il teorema per due moduli coprimi>

  <\theorem>
    <dueto|Teorema cinese del resto>Siano <math|m,n\<geq\>1> coprimi. Per
    ogni <math|a,b\<in\>\<bbb-Z\>> il sistema

    <\equation*>
      <choice|<tformat|<table|<row|<cell|x\<equiv\>a<pmod|m>>>|<row|<cell|x\<equiv\>b<pmod|n>>>>>>
    </equation*>

    ha soluzione, e la soluzione è unica modulo <math|m*n>: se
    <math|x<rsub|0>> è una soluzione, le soluzioni sono esattamente gli
    <math|x\<equiv\>x<rsub|0><pmod|m*n>>.
  </theorem>

  <\proof>
    <em|Esistenza.> Per Bézout esistono <math|u,v> con <math|u*m+v*n=1>.
    Questa uguaglianza dice che <math|v*n\<equiv\>1<pmod|m>> e
    <math|v*n\<equiv\>0<pmod|n>>, mentre <math|u*m\<equiv\>0<pmod|m>> e
    <math|u*m\<equiv\>1<pmod|n>>. Poniamo

    <\equation*>
      x<rsub|0>=a\<#22C5\>v*n+b\<#22C5\>u*m.
    </equation*>

    Modulo <math|m> si ha <math|x<rsub|0>\<equiv\>a\<#22C5\>1+b\<#22C5\>0=a>;
    modulo <math|n> si ha <math|x<rsub|0>\<equiv\>a\<#22C5\>0+b\<#22C5\>1=b>.

    <em|Unicità.> Se <math|x> e <math|x<rsub|0>> sono soluzioni, allora
    <math|m\<mid\>x-x<rsub|0>> e <math|n\<mid\>x-x<rsub|0>>. Poiché
    <math|m,n> sono coprimi, per il corollario del lemma di Euclide (capitolo
    9) <math|m*n\<mid\>x-x<rsub|0>>. Viceversa ogni
    <math|x\<equiv\>x<rsub|0><pmod|m*n>> è congruo a <math|x<rsub|0>> sia
    modulo <math|m> sia modulo <math|n>, quindi è soluzione.
  </proof>

  <\immagine|Due interruttori>
    I numeri <math|e<rsub|1>=v*n> ed <math|e<rsub|2>=u*m> funzionano come
    interruttori: <math|e<rsub|1>> vale <math|1> modulo <math|m> e <math|0>
    modulo <math|n>, <math|e<rsub|2>> fa il contrario. Per costruire un
    numero con resti prescritti <math|a> e <math|b> basta combinarli:
    <math|a*e<rsub|1>+b*e<rsub|2>>. Con <math|m=3>, <math|n=5> e
    <math|2\<#22C5\>3-1\<#22C5\>5=1> si ha <math|e<rsub|1>=-5\<equiv\>10> ed
    <math|e<rsub|2>=6>: ogni soluzione del sistema è <math|10a+6b> modulo
    <math|15>. Per <math|a=2>, <math|b=3>: <math|38\<equiv\>8<pmod|15>>.
  </immagine>

  <section|Quando i moduli non sono coprimi>

  Il sistema <math|x\<equiv\>0<pmod|2>>, <math|x\<equiv\>1<pmod|4>> è
  impossibile: la prima condizione vuole <math|x> pari, la seconda dispari.
  In generale le due condizioni possono contraddirsi, e il criterio di
  compatibilità è il seguente.

  <\theorem>
    <dueto|Teorema cinese generalizzato>Sia <math|d=<math-up|MCD>(m,n)>. Il
    sistema <math|x\<equiv\>a<pmod|m>>, <math|x\<equiv\>b<pmod|n>> ha
    soluzione se e solo se <math|d\<mid\>b-a>. In tal caso la soluzione è
    unica modulo <math|<math-up|mcm>(m,n)=<frac|m*n|d>>.
  </theorem>

  <\proof>
    Le soluzioni della prima congruenza sono <math|x=a+m*k>. Sostituendo
    nella seconda: <math|m*k\<equiv\>b-a<pmod|n>>. Per il capitolo 13 questa
    congruenza in <math|k> ha soluzioni se e solo se
    <math|<math-up|MCD>(m,n)\<mid\>b-a>, e in tal caso le soluzioni sono
    <math|k=k<rsub|0>+<frac|n|d>t>. Sostituendo,

    <\equation*>
      x=a+m*k<rsub|0>+<frac|m*n|d>t,
    </equation*>

    quindi le soluzioni formano una sola classe modulo
    <math|<frac|m*n|d>=<math-up|mcm>(m,n)> (capitolo 10).
  </proof>

  Con <math|d=1> si ritrova il teorema precedente. La condizione
  <math|d\<mid\>b-a> ha un significato trasparente: i resti <math|a> e
  <math|b> devono essere compatibili sui divisori comuni dei moduli, perché
  un numero ha un solo resto modulo <math|d>.

  <\guidato|Un sistema con moduli non coprimi>
    Risolviamo <math|x\<equiv\>3<pmod|4>>, <math|x\<equiv\>1<pmod|6>>. Qui
    <math|d=2> e <math|1-3=-2> è pari: c'è soluzione. Da <math|x=3+4k> si ha
    <math|4k\<equiv\>-2<pmod|6>>; dividendo per <math|2>,
    <math|2k\<equiv\>-1\<equiv\>2<pmod|3>>, cioè <math|k\<equiv\>1<pmod|3>>.
    Allora <math|x=3+4(1+3t)=7+12t>: <math|x\<equiv\>7<pmod|12>>, e
    <math|12=<math-up|mcm>(4,6)>. Controllo: <math|7\<equiv\>3<pmod|4>> e
    <math|7\<equiv\>1<pmod|6>>.
  </guidato>

  <section|Molti moduli>

  <\theorem>
    Siano <math|m<rsub|1>,\<ldots\>,m<rsub|k>> a due a due coprimi. Per ogni
    <math|a<rsub|1>,\<ldots\>,a<rsub|k>> il sistema
    <math|x\<equiv\>a<rsub|i><pmod|m<rsub|i>>> (<math|i=1,\<ldots\>,k>) ha
    soluzione, unica modulo <math|M=m<rsub|1>m<rsub|2>\<cdots\>m<rsub|k>>.
  </theorem>

  <\proof>
    Induzione su <math|k>. Il caso <math|k=1> è ovvio e il caso <math|k=2> è
    il teorema cinese. Sia <math|k\<geq\>3> e supponiamo il teorema vero per
    <math|k-1> moduli. Per ipotesi induttiva esiste <math|y> che risolve le
    prime <math|k-1> congruenze, e un intero le risolve <em|se e solo se> è
    congruo a <math|y> modulo <math|M<rprime|'>=m<rsub|1>\<cdots\>m<rsub|k-1>>
    (è qui che serve l'unicità). Il sistema originale equivale quindi a

    <\equation*>
      x\<equiv\>y<pmod|M<rprime|'>>,<space|2em>x\<equiv\>a<rsub|k><pmod|m<rsub|k>>.
    </equation*>

    Poiché <math|m<rsub|k>> è coprimo con ciascun <math|m<rsub|i>>, è coprimo
    anche con il loro prodotto <math|M<rprime|'>> (capitolo 9, applicato
    ripetutamente). Per il caso di due moduli il sistema ha soluzione, unica
    modulo <math|M<rprime|'>m<rsub|k>=M>.
  </proof>

  L'ipotesi \Sa due a due coprimi\T non si può indebolire in \Scoprimi nel
  complesso\T: <math|2,4,3> hanno MCD complessivo <math|1>, ma le prime due
  congruenze possono già contraddirsi.

  <\guidato|Tre condizioni>
    Risolviamo <math|x\<equiv\>1<pmod|2>>, <math|x\<equiv\>2<pmod|3>>,
    <math|x\<equiv\>3<pmod|5>>. Le ultime due danno, come abbiamo visto,
    <math|x\<equiv\>8<pmod|15>>. Resta <math|x\<equiv\>8<pmod|15>>,
    <math|x\<equiv\>1<pmod|2>>: da <math|x=8+15k> si ha
    <math|8+15k\<equiv\>k\<equiv\>1<pmod|2>>, quindi <math|k=1+2t> e
    <math|x=23+30t>. La soluzione è <math|x\<equiv\>23<pmod|30>>: infatti
    <math|23> è dispari, <math|23=7\<#22C5\>3+2> e <math|23=4\<#22C5\>5+3>.

    Il problema dell'introduzione si risolve allo stesso modo: si trova
    <math|x\<equiv\>23<pmod|105>>.
  </guidato>

  <\inbreve>
    Un sistema di congruenze si risolve per sostituzione: <math|x=a+m*k>, poi
    una congruenza lineare in <math|k>. Se i moduli sono coprimi la soluzione
    esiste sempre ed è unica modulo il prodotto; una formula esplicita viene
    da Bézout. Se non lo sono, serve la compatibilità
    <math|<math-up|MCD>(m,n)\<mid\>b-a> e la soluzione è unica modulo il mcm.
    Con molti moduli a due a due coprimi si procede per induzione, combinando
    le congruenze due alla volta.
  </inbreve>

  <\verifica|15.1>
    Risolvi <math|x\<equiv\>4<pmod|7>>, <math|x\<equiv\>6<pmod|9>>.
  </verifica>

  <\verifica|15.2>
    Per quali <math|a> il sistema <math|x\<equiv\>a<pmod|6>>,
    <math|x\<equiv\>4<pmod|15>> ha soluzione? Risolvilo per <math|a=1>.
  </verifica>

  <\verifica|15.3>
    Trova il più piccolo intero positivo che diviso per <math|4>, <math|5> e
    <math|7> dà resti <math|3>, <math|4> e <math|6>. (C'è una scorciatoia:
    che cosa succede a <math|x+1>?)
  </verifica>

  <chapter|Quando una frazione si ripete: gli sviluppi
  decimali><label|cap-decimali>

  Nel capitolo 1 abbiamo affermato che un numero è razionale se e solo se il
  suo sviluppo decimale è finito o periodico. Ora abbiamo gli strumenti per
  dimostrarlo, ed è un bell'esempio di come le idee del libro lavorino
  insieme: la divisione con resto e il principio dei cassetti spiegano perché
  le cifre si ripetono, le congruenze e la fattorizzazione spiegano perché
  ogni frazione si può riscrivere con un denominatore \Sadatto\T.

  <section|Sviluppi decimali>

  Un reale <math|x\<geq\>0> si scrive in base dieci come

  <\equation*>
    x=a<rsub|0>+<frac|a<rsub|1>|10>+<frac|a<rsub|2>|10<rsup|2>>+<frac|a<rsub|3>|10<rsup|3>>+\<cdots\>=a<rsub|0><text|,>a<rsub|1>a<rsub|2>a<rsub|3>\<ldots\>,
  </equation*>

  con <math|a<rsub|0>\<in\>\<bbb-N\>> la parte intera e cifre
  <math|a<rsub|i>\<in\><around*|{|0,\<ldots\>,9|}>>. Lo sviluppo è
  <em|definitivamente periodico> se, dopo un tratto iniziale di <math|s>
  cifre, un blocco di <math|m> cifre si ripete per sempre:

  <\equation*>
    x=a<rsub|0><text|,>a<rsub|1>\<cdots\>a<rsub|s><wide|b<rsub|1>\<cdots\>b<rsub|m>|\<wide-bar\>>.
  </equation*>

  Uno sviluppo finito è un caso particolare (periodo <math|0>). Per esempio
  <math|<frac|1|12>=0<text|,>08<wide|3|\<wide-bar\>>> ha antiperiodo
  <math|08> e periodo <math|3>.

  <\theorem>
    Un reale è razionale se e solo se il suo sviluppo decimale è
    definitivamente periodico.
  </theorem>

  Dimostriamo le due direzioni separatamente. Basta considerare
  <math|x\<geq\>0>: per i negativi si cambia segno.

  <section|Perché le cifre di una frazione si ripetono>

  Calcoliamo <math|<frac|1|7>> con la divisione in colonna. A ogni passo si
  moltiplica il resto per <math|10>, si divide per <math|7>, si scrive il
  quoziente come nuova cifra e si tiene il nuovo resto:

  <\equation*>
    10=1\<#22C5\>7+3,<space|1em>30=4\<#22C5\>7+2,<space|1em>20=2\<#22C5\>7+6,<space|1em>60=8\<#22C5\>7+4,<space|1em>40=5\<#22C5\>7+5,<space|1em>50=7\<#22C5\>7+1.
  </equation*>

  Il resto è tornato <math|1>, il valore di partenza: da qui in poi la
  divisione ripete esattamente gli stessi passi, e quindi le stesse cifre.
  Dunque <math|<frac|1|7>=0<text|,><wide|142857|\<wide-bar\>>>.

  <figura|<image|../../Archive/Images/aritmetica/resti7.pdf|66.5mm|50.8mm||>|Dividendo
  <math|1> per <math|7> i resti percorrono il ciclo <math|1,3,2,6,4,5>; le
  cifre prodotte sono <math|1,4,2,8,5,7>.>

  Il fenomeno è generale. Dividendo <math|a> per <math|b>, ogni passo dipende
  soltanto dal resto corrente, che è uno dei <math|b> numeri
  <math|0,1,\<ldots\>,b-1>. Se a un certo punto il resto è <math|0>, la
  divisione termina e lo sviluppo è finito. Altrimenti i resti sono sempre
  fra <math|1> e <math|b-1>, e per il principio dei cassetti, entro <math|b>
  passi, un resto si ripete. Da quel momento la divisione rifà gli stessi
  passi: le cifre sono periodiche, con periodo al più <math|b-1>.

  <\immagine|Un meccanismo con pochi stati>
    Un procedimento deterministico, in cui ogni passo dipende solo dallo
    \Sstato\T attuale, e che ha un numero finito di stati possibili, prima o
    poi deve tornare in uno stato già visto; da lì in poi si ripete. È il
    principio dei cassetti applicato al tempo. Lo rivedremo nel capitolo 22
    con le potenze modulo <math|n>.
  </immagine>

  Questo argomento dimostra già che ogni razionale ha sviluppo
  definitivamente periodico. Per completezza, e perché la dimostrazione
  rivela qualcosa di più (quali denominatori producono quali periodi),
  percorriamo anche una seconda strada, più algebrica.

  <section|Dal periodo alla frazione>

  <\lemma>
    Sia <math|B> l'intero rappresentato da un blocco di <math|m> cifre
    <math|b<rsub|1>\<cdots\>b<rsub|m>>. Allora

    <\equation*>
      0<text|,><wide|b<rsub|1>\<cdots\>b<rsub|m>|\<wide-bar\>>=<frac|B|10<rsup|m>-1>.
    </equation*>
  </lemma>

  <\proof>
    Sia <math|x=0<text|,><wide|b<rsub|1>\<cdots\>b<rsub|m>|\<wide-bar\>>>.
    Moltiplicare per <math|10<rsup|m>> sposta la virgola di <math|m> posti,
    cioè di un periodo intero: davanti alla virgola compare il blocco
    <math|B> e dopo la virgola resta di nuovo <math|x>. Quindi
    <math|10<rsup|m>x=B+x>, e <math|(10<rsup|m>-1)x=B>.
  </proof>

  Per esempio <math|0<text|,><wide|34|\<wide-bar\>>=<frac|34|99>>: infatti
  <math|100\<#22C5\>0<text|,>3434\<ldots\>=34<text|,>3434\<ldots\>>, e
  sottraendo si ha <math|99x=34>.

  Ora prendiamo uno sviluppo definitivamente periodico
  <math|x=a<rsub|0><text|,>a<rsub|1>\<cdots\>a<rsub|s><wide|b<rsub|1>\<cdots\>b<rsub|m>|\<wide-bar\>>>.
  È la somma del decimale finito <math|a<rsub|0><text|,>a<rsub|1>\<cdots\>a<rsub|s>>,
  che è razionale (ha denominatore <math|10<rsup|s>>), e del periodo spostato
  di <math|s> posti:

  <\equation*>
    x=a<rsub|0><text|,>a<rsub|1>\<cdots\>a<rsub|s>+<frac|1|10<rsup|s>>\<#22C5\><frac|B|10<rsup|m>-1>.
  </equation*>

  È dunque razionale. Questa è la prima direzione del teorema, e fornisce
  un'informazione in più: <em|i denominatori naturali di uno sviluppo
  periodico sono della forma <math|10<rsup|s>(10<rsup|m>-1)>>.

  <section|Ogni denominatore ha un multiplo adatto>

  Per la direzione opposta, partendo da <math|<frac|a|b>>, vorremmo
  riscrivere la frazione con un denominatore della forma
  <math|10<rsup|s>(10<rsup|m>-1)>. Serve che <math|b> divida un numero di
  questa forma. Il primo passo è un lemma sulle potenze, che è anche la prima
  apparizione di un'idea che diventerà centrale nella quinta parte del libro.

  <\lemma>
    Siano <math|a,b> interi con <math|b\<geq\>1> e
    <math|<math-up|MCD>(a,b)=1>. Esiste <math|n\<geq\>1> tale che
    <math|a<rsup|n>\<equiv\>1<pmod|b>>.
  </lemma>

  <\proof>
    Le potenze <math|a<rsup|1>,a<rsup|2>,\<ldots\>,a<rsup|b+1>> sono
    <math|b+1> numeri, e i resti modulo <math|b> possibili sono <math|b>: per
    il principio dei cassetti due di esse hanno lo stesso resto,
    <math|a<rsup|i>\<equiv\>a<rsup|j><pmod|b>> con <math|i\<less\>j>. Cioè
    <math|a<rsup|i>\<#22C5\>a<rsup|j-i>\<equiv\>a<rsup|i>\<#22C5\>1<pmod|b>>.
    Poiché <math|a> è coprimo con <math|b>, anche <math|a<rsup|i>> lo è
    (capitolo 9), e si può cancellare (capitolo 13):
    <math|a<rsup|j-i>\<equiv\>1<pmod|b>>, con <math|n=j-i\<geq\>1>.
  </proof>

  <\attenzione|Senza coprimalità il lemma è falso>
    Le potenze di <math|2> modulo <math|12> sono
    <math|2,4,8,4,8,4,\<ldots\>>: non tornano mai a <math|1>. La
    cancellazione di <math|a<rsup|i>> è proprio il punto in cui serve
    <math|<math-up|MCD>(a,b)=1>.
  </attenzione>

  <\corollary>
    Per ogni <math|b\<geq\>1> esistono <math|s\<geq\>0> e <math|m\<geq\>1>
    tali che <math|b\<mid\>10<rsup|s>(10<rsup|m>-1)>.
  </corollary>

  <\proof>
    Separiamo dalla fattorizzazione di <math|b> le potenze di <math|2> e di
    <math|5>: <math|b=2<rsup|\<alpha\>>5<rsup|\<beta\>>b<rprime|'>> con
    <math|b<rprime|'>> coprimo con <math|10>. Con
    <math|s=max(\<alpha\>,\<beta\>)> si ha
    <math|2<rsup|\<alpha\>>5<rsup|\<beta\>>\<mid\>2<rsup|s>5<rsup|s>=10<rsup|s>>.
    Per il lemma, applicato ad <math|a=10> e a <math|b<rprime|'>>, esiste
    <math|m\<geq\>1> con <math|b<rprime|'>\<mid\>10<rsup|m>-1>. Moltiplicando
    le due divisibilità, <math|b\<mid\>10<rsup|s>(10<rsup|m>-1)>.
  </proof>

  Si noti che <math|b<rprime|'>> non deve essere primo: il lemma vale per
  qualunque modulo coprimo con <math|10>.

  <section|Ogni frazione è periodica>

  Sia <math|x=<frac|a|b>> con <math|a\<geq\>0>, <math|b\<geq\>1>. Per il
  corollario <math|10<rsup|s>(10<rsup|m>-1)=\<lambda\>b> per un certo intero
  <math|\<lambda\>>, quindi

  <\equation*>
    <frac|a|b>=<frac|\<lambda\>a|10<rsup|s>(10<rsup|m>-1)>=<frac|1|10<rsup|s>>\<#22C5\><frac|C|10<rsup|m>-1>,<space|2em>C=\<lambda\>a.
  </equation*>

  Dividiamo <math|C> per <math|10<rsup|m>-1>: <math|C=q(10<rsup|m>-1)+r> con
  <math|0\<leq\>r\<less\>10<rsup|m>-1>. Allora
  <math|<frac|C|10<rsup|m>-1>=q+<frac|r|10<rsup|m>-1>>, dove <math|q> è un
  intero e, per il lemma del periodo letto al contrario,
  <math|<frac|r|10<rsup|m>-1>=0<text|,><wide|r<rsub|1>\<cdots\>r<rsub|m>|\<wide-bar\>>>
  con <math|r<rsub|1>\<cdots\>r<rsub|m>> le cifre di <math|r> scritto con
  <math|m> cifre (aggiungendo zeri iniziali). Infine dividere per
  <math|10<rsup|s>> sposta la virgola di <math|s> posti. Il risultato è
  definitivamente periodico, e la dimostrazione del teorema è completa.

  <\guidato|<math|<frac|1|12>> passo per passo>
    <math|12=2<rsup|2>\<#22C5\>3>, quindi <math|s=2> e <math|b<rprime|'>=3>;
    già <math|10<rsup|1>-1=9> è multiplo di <math|3>, quindi <math|m=1>. Il
    numero <math|10<rsup|2>(10-1)=900=75\<#22C5\>12>, dunque

    <\equation*>
      <frac|1|12>=<frac|75|900>=<frac|1|100>\<#22C5\><frac|75|9>=<frac|1|100><around*|(|8+<frac|3|9>|)>=<frac|1|100><around*|(|8<text|,><wide|3|\<wide-bar\>>|)>=0<text|,>08<wide|3|\<wide-bar\>>.
    </equation*>

    L'antiperiodo ha due cifre perché <math|12> contiene <math|2<rsup|2>>; il
    periodo ha una cifra perché <math|3\<mid\>10-1>.
  </guidato>

  Nella dimostrazione abbiamo scelto un <math|m> qualsiasi con
  <math|b<rprime|'>\<mid\>10<rsup|m>-1>. Il periodo più corto corrisponde al
  <em|più piccolo> <math|m> con questa proprietà: per <math|<frac|1|7>> è
  <math|m=6>, perché <math|7> divide <math|999999> ma nessuno fra
  <math|9,99,\<ldots\>,99999>. Questo \Spiù piccolo esponente che riporta a
  <math|1>\T si chiamerà <em|ordine> di <math|10> modulo <math|7>, e nel
  capitolo 21 scopriremo che divide sempre un numero calcolabile in anticipo.

  <\attenzione|Due scritture per lo stesso numero>
    <math|0<text|,><wide|9|\<wide-bar\>>=<frac|9|9>=1>: per il lemma del
    periodo, uno sviluppo che termina con infiniti <math|9> è uguale a uno
    sviluppo finito. Non è un paradosso, è semplicemente il fatto che alcuni
    numeri hanno due sviluppi decimali.
  </attenzione>

  <\inbreve>
    Le cifre di una frazione si ripetono perché la divisione in colonna ha
    solo un numero finito di resti possibili. Viceversa un periodo di
    <math|m> cifre vale <math|<frac|B|10<rsup|m>-1>>, quindi ogni sviluppo
    definitivamente periodico è razionale, con denominatore
    <math|10<rsup|s>(10<rsup|m>-1)>. Ogni <math|b> divide un numero di questa
    forma: le potenze di <math|2> e <math|5> si assorbono in
    <math|10<rsup|s>>, e per la parte coprima con <math|10> esiste sempre una
    potenza <math|10<rsup|m>\<equiv\>1>, perché le potenze di un numero
    coprimo con il modulo prima o poi tornano a <math|1>.
  </inbreve>

  <\verifica|16.1>
    Scrivi come frazione ridotta i numeri
    <math|0<text|,><wide|27|\<wide-bar\>>> e
    <math|1<text|,>2<wide|45|\<wide-bar\>>>.
  </verifica>

  <\verifica|16.2>
    Senza fare la divisione, stabilisci la lunghezza dell'antiperiodo di
    <math|<frac|7|40>> e di <math|<frac|1|360>>.
  </verifica>

  <\verifica|16.3>
    Trova il più piccolo <math|m\<geq\>1> tale che
    <math|13\<mid\>10<rsup|m>-1> e deduci la lunghezza del periodo di
    <math|<frac|1|13>>.
  </verifica>

  <chapter|Gruppi, anelli, campi><label|cap-strutture>

  Fermiamoci un momento a guardare indietro. Abbiamo sommato interi, classi
  resto, razionali; abbiamo moltiplicato classi invertibili e composto
  biiezioni. In ognuno di questi mondi valgono le stesse poche regole:
  associatività, un elemento neutro, gli inversi. E ogni volta abbiamo
  dimostrato le stesse conseguenze, come l'unicità dell'inverso o la
  possibilità di semplificare. Il quinto pilastro consiste nel dare un nome a
  queste regole e dimostrare le conseguenze una volta per tutte. Così
  facendo, ogni teorema astratto diventa automaticamente vero in tutti gli
  esempi.

  <section|Operazioni, notazioni>

  Ricordiamo dal capitolo 1 che un'<em|operazione> su un insieme <math|G> è
  una funzione <math|G\<times\>G\<rightarrow\>G>,
  <math|(x,y)\<mapsto\>x\<star\>y>: il risultato deve stare in <math|G>.
  Useremo due notazioni.

  <\itemize>
    <item><em|Moltiplicativa>: <math|x*y> o <math|x\<#22C5\>y>, neutro
    <math|e> (o <math|1>), inverso <math|x<rsup|-1>>, potenze
    <math|x<rsup|n>>.

    <item><em|Additiva>, riservata alle operazioni commutative: <math|x+y>,
    neutro <math|0>, opposto <math|-x>, multipli <math|n*x>.
  </itemize>

  La notazione è solo un abito: la struttura è la stessa.

  <section|Gruppi>

  <\definition>
    Un <em|gruppo> è un insieme <math|G> con un'operazione tale che

    <\enumerate>
      <item>l'operazione è <em|associativa>: <math|(x*y)z=x(y*z)> per ogni
      <math|x,y,z\<in\>G>;

      <item>esiste un <em|elemento neutro> <math|e\<in\>G>: <math|e*x=x*e=x>
      per ogni <math|x\<in\>G>;

      <item>ogni elemento ha un <em|inverso>: per ogni <math|x\<in\>G> esiste
      <math|x<rsup|-1>\<in\>G> con <math|x*x<rsup|-1>=x<rsup|-1>x=e>.
    </enumerate>

    Se inoltre <math|x*y=y*x> per ogni <math|x,y>, il gruppo si dice
    <em|abeliano> (o commutativo). Il numero di elementi <math|\|G\|> si
    chiama <em|ordine> del gruppo.
  </definition>

  Ecco i gruppi che abbiamo già incontrato, più qualche nuovo arrivato.

  <\itemize>
    <item><math|(\<bbb-Z\>,+)>, <math|(\<bbb-Q\>,+)>, <math|(\<bbb-R\>,+)>,
    <math|(\<bbb-C\>,+)>: gruppi abeliani infiniti.

    <item><math|(\<bbb-Z\>/n\<bbb-Z\>,+)>: gruppo abeliano di ordine <math|n>
    (capitolo 14).

    <item><math|\<bbb-Q\><rsup|\<times\>>=\<bbb-Q\>\<setminus\><around*|{|0|}>>,
    <math|\<bbb-R\><rsup|\<times\>>>, <math|\<bbb-C\><rsup|\<times\>>> con il
    prodotto: lo zero va tolto perché non ha inverso.

    <item><math|(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>>, le classi
    invertibili modulo <math|n>, con il prodotto. Il prodotto di due
    invertibili è invertibile (<math|([a][b])<rsup|-1>=[b]<rsup|-1>[a]<rsup|-1>>),
    quindi l'operazione è ben definita su questo insieme; associatività e
    neutro <math|[1]> vengono da <math|\<bbb-Z\>/n\<bbb-Z\>>, e gli inversi
    ci sono per definizione. È abeliano, di ordine uguale al numero di interi
    fra <math|1> e <math|n> coprimi con <math|n>.

    <item>Le biiezioni di un insieme in sé, con la composizione: è il gruppo
    delle permutazioni, non abeliano in generale (capitolo 20).

    <item>Uno spazio vettoriale con la sola somma, dimenticando il prodotto
    per scalari.
  </itemize>

  Non sono gruppi: <math|(\<bbb-N\>,+)> (mancano gli opposti) e
  <math|(\<bbb-Z\>,\<#22C5\>)> (<math|2> non ha inverso: nessun intero
  <math|x> soddisfa <math|2x=1>).

  <subsection|Le radici dell'unità>

  Un esempio geometrico. Per <math|n\<geq\>1> sia

  <\equation*>
    \<mu\><rsub|n>=<around*|{|z\<in\>\<bbb-C\>:z<rsup|n>=1|}>.
  </equation*>

  Con il prodotto di numeri complessi è un gruppo: se
  <math|z<rsup|n>=w<rsup|n>=1> allora <math|(z*w)<rsup|n>=z<rsup|n>w<rsup|n>=1>;
  il neutro <math|1> sta in <math|\<mu\><rsub|n>>; e l'inverso di <math|z> è
  <math|z<rsup|n-1>>, perché <math|z\<#22C5\>z<rsup|n-1>=z<rsup|n>=1>. (Lo
  zero non c'è, perché <math|0<rsup|n>\<neq\>1>.) Posto
  <math|\<zeta\>=e<rsup|2\<pi\>i/n>>, cioè il punto della circonferenza
  unitaria di angolo <math|<frac|2\<pi\>|n>>, gli elementi sono

  <\equation*>
    \<mu\><rsub|n>=<around*|{|1,\<zeta\>,\<zeta\><rsup|2>,\<ldots\>,\<zeta\><rsup|n-1>|}>,
  </equation*>

  i vertici di un poligono regolare con <math|n> lati inscritto nella
  circonferenza unitaria.

  <figura|<image|../../Archive/Images/aritmetica/radici.pdf|63.8mm|56.2mm||>|Le
  sei radici seste dell'unità: moltiplicare per <math|\<zeta\>> significa
  ruotare di <math|60<rsup|\<circ\>>>.>

  Moltiplicare per <math|\<zeta\>> fa ruotare il poligono su sé stesso. Si
  vede già che <math|\<mu\><rsub|n>> e <math|\<bbb-Z\>/n\<bbb-Z\>> si
  somigliano: <math|\<zeta\><rsup|a>\<zeta\><rsup|b>=\<zeta\><rsup|a+b>>, e
  gli esponenti contano modulo <math|n>. Nel capitolo 18 renderemo precisa
  questa somiglianza.

  <section|Le prime conseguenze degli assiomi>

  <\proposition>
    Sia <math|G> un gruppo. Allora

    <\enumerate>
      <item>il neutro è unico;

      <item>l'inverso di ogni elemento è unico;

      <item><math|(g<rsup|-1>)<rsup|-1>=g>;

      <item><math|(g*h)<rsup|-1>=h<rsup|-1>g<rsup|-1>>;

      <item>(cancellazione) se <math|a*b=a*c> allora <math|b=c>, e se
      <math|b*a=c*a> allora <math|b=c>;

      <item>per ogni <math|a,b\<in\>G> l'equazione <math|a*x=b> ha l'unica
      soluzione <math|x=a<rsup|-1>b>.
    </enumerate>
  </proposition>

  <\proof>
    (1) Se <math|e,e<rprime|'>> sono neutri,
    <math|e=e*e<rprime|'>=e<rprime|'>>: la prima uguaglianza perché
    <math|e<rprime|'>> è neutro, la seconda perché lo è <math|e>.

    (2) Se <math|x,y> sono inversi di <math|g>, allora
    <math|x=x*e=x(g*y)=(x*g)y=e*y=y>. Si noti l'uso decisivo
    dell'associatività.

    (3) Le uguaglianze <math|g<rsup|-1>g=g*g<rsup|-1>=e> dicono che <math|g>
    è un inverso di <math|g<rsup|-1>>; per l'unicità, è <em|l>'inverso.

    (4) <math|(g*h)(h<rsup|-1>g<rsup|-1>)=g(h*h<rsup|-1>)g<rsup|-1>=g*e*g<rsup|-1>=e>,
    e allo stesso modo nell'altro ordine; per l'unicità dell'inverso si
    conclude.

    (5) Si moltiplica <math|a*b=a*c> a sinistra per <math|a<rsup|-1>>; il
    secondo caso a destra.

    (6) <math|x=a<rsup|-1>b> è soluzione; se <math|a*x=b=a*x<rprime|'>>, per
    cancellazione <math|x=x<rprime|'>>.
  </proof>

  <\attenzione|L'ordine si inverte>
    <math|(g*h)<rsup|-1>=h<rsup|-1>g<rsup|-1>>, non
    <math|g<rsup|-1>h<rsup|-1>>. Pensiamo a calze e scarpe: si mettono prima
    le calze e poi le scarpe, ma per toglierle si comincia dalle scarpe. In
    un gruppo abeliano l'ordine non importa, ma in generale sì.
  </attenzione>

  Queste dimostrazioni valgono per <em|ogni> gruppo. La cancellazione in
  <math|(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>>, che nel capitolo 13 abbiamo
  dimostrato con il lemma di Euclide, è qui un caso particolare del punto 5.
  Bisogna però fare attenzione a non ragionare in circolo: per dimostrare
  l'unicità dell'inverso non si può usare la cancellazione, che a sua volta
  usa l'inverso. Abbiamo usato solo gli assiomi.

  <section|Anelli e campi>

  Molti dei nostri esempi hanno <em|due> operazioni, legate dalla proprietà
  distributiva.

  <\definition>
    Un <em|anello> è un insieme <math|A> con due operazioni <math|+> e
    <math|\<#22C5\>> tali che

    <\enumerate>
      <item><math|(A,+)> è un gruppo abeliano (con neutro <math|0>);

      <item>il prodotto è associativo;

      <item>valgono le proprietà distributive <math|a(b+c)=a*b+a*c> e
      <math|(a+b)c=a*c+b*c>.
    </enumerate>

    L'anello è <em|commutativo> se <math|a*b=b*a>, e <em|con unità> se esiste
    <math|1\<in\>A> con <math|1a=a1=a>. Gli elementi che hanno un inverso per
    il prodotto si dicono <em|invertibili> e formano un gruppo
    moltiplicativo, indicato con <math|A<rsup|\<times\>>>.

    Un <em|campo> è un anello commutativo con unità, con <math|1\<neq\>0>, in
    cui ogni elemento non nullo è invertibile.
  </definition>

  <figura|<image|../../Archive/Images/aritmetica/strutture.pdf|155.0mm|43.8mm||>|Tre
  strutture, ciascuna con qualche regola in più della precedente.>

  Esempi: <math|\<bbb-Z\>> è un anello commutativo con unità ma non un campo,
  e <math|\<bbb-Z\><rsup|\<times\>>=<around*|{|\<pm\>1|}>>.
  <math|\<bbb-Q\>,\<bbb-R\>,\<bbb-C\>> sono campi.
  <math|\<bbb-Z\>/n\<bbb-Z\>> è un anello commutativo con unità, il suo
  gruppo degli invertibili è <math|(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>>,
  ed è un campo se e solo se <math|n> è primo (capitolo 14).

  Da ogni anello si estraggono quindi due gruppi: il gruppo additivo
  <math|(A,+)> e il gruppo moltiplicativo <math|A<rsup|\<times\>>>. Per
  <math|\<bbb-Z\>/12\<bbb-Z\>> il primo ha <math|12> elementi, il secondo
  <math|4>: non vanno confusi.

  <\inbreve>
    Un gruppo è un insieme con un'operazione associativa, un neutro e gli
    inversi. Sono gruppi <math|(\<bbb-Z\>,+)>,
    <math|(\<bbb-Z\>/n\<bbb-Z\>,+)>, <math|(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>>,
    <math|\<bbb-C\><rsup|\<times\>>>, le radici dell'unità
    <math|\<mu\><rsub|n>> e le permutazioni. Dagli assiomi seguono, una volta
    per tutte, l'unicità di neutro e inversi, la regola
    <math|(g*h)<rsup|-1>=h<rsup|-1>g<rsup|-1>> e la cancellazione. Un anello
    ha somma e prodotto legati dalla distributività; un campo è un anello
    commutativo in cui ogni elemento non nullo è invertibile.
  </inbreve>

  <\verifica|17.1>
    Stabilisci quali dei seguenti sono gruppi: (a) gli interi pari con la
    somma; (b) gli interi dispari con la somma; (c)
    <math|<around*|{|1,-1,i,-i|}>> con il prodotto complesso; (d) i reali
    positivi con il prodotto.
  </verifica>

  <\verifica|17.2>
    Sia <math|G> un gruppo in cui <math|g<rsup|2>=e> per ogni <math|g>.
    Dimostra che <math|G> è abeliano. (Calcola <math|(g*h)<rsup|2>>.)
  </verifica>

  <\verifica|17.3>
    Sull'insieme <math|\<bbb-R\>> definiamo <math|x\<star\>y=x+y+1>. Dimostra
    che <math|(\<bbb-R\>,\<star\>)> è un gruppo abeliano: chi è il neutro?
    Chi è l'inverso di <math|x>?
  </verifica>

  <chapter|Omomorfismi: il teorema cinese come
  isomorfismo><label|cap-omomorfismi>

  Abbiamo notato che <math|\<mu\><rsub|6>> e <math|\<bbb-Z\>/6\<bbb-Z\>> \Ssi
  somigliano\T. Nel capitolo 15 la tabella dei resti modulo <math|3> e
  <math|5> mostrava che conoscere un numero modulo <math|15> è lo stesso che
  conoscerlo modulo <math|3> e modulo <math|5>. Per dire con precisione che
  due strutture sono \Sla stessa a meno dei nomi\T servono le funzioni che
  rispettano le operazioni: gli omomorfismi. Con questo linguaggio il teorema
  cinese del resto diventa un'affermazione limpida sulla struttura di
  <math|\<bbb-Z\>/n\<bbb-Z\>>, e ne ricaveremo una formula per la funzione di
  Eulero.

  <section|Funzioni che rispettano le operazioni>

  <\definition>
    Siano <math|G,H> gruppi. Un <em|omomorfismo> è una funzione
    <math|f:G\<rightarrow\>H> tale che

    <\equation*>
      f(x*y)=f(x)f(y)<space|2em><text|per ogni >x,y\<in\>G,
    </equation*>

    dove a sinistra si opera in <math|G> e a destra in <math|H>. Se
    <math|A,B> sono anelli, un omomorfismo di anelli è una funzione che
    rispetta sia la somma sia il prodotto: <math|f(x+y)=f(x)+f(y)> e
    <math|f(x*y)=f(x)f(y)>; per gli anelli con unità si chiede anche
    <math|f(1)=1>. Un omomorfismo biiettivo si chiama <em|isomorfismo>, e due
    strutture tra cui esiste un isomorfismo si dicono <em|isomorfe>
    (<math|G\<cong\>H>).
  </definition>

  Un omomorfismo dice che \Sfare l'operazione e poi applicare <math|f>\T dà
  lo stesso risultato che \Sapplicare <math|f> e poi fare l'operazione\T.
  Esempi:

  <\itemize>
    <item>la riduzione <math|\<bbb-Z\>\<rightarrow\>\<bbb-Z\>/n\<bbb-Z\>>,
    <math|a\<mapsto\>[a]<rsub|n>>, è un omomorfismo di anelli: è proprio la
    definizione delle operazioni sulle classi;

    <item>l'esponenziale <math|(\<bbb-R\>,+)\<rightarrow\>(\<bbb-R\><rsub|\<gtr\>0>,\<#22C5\>)>,
    <math|x\<mapsto\>e<rsup|x>>, è un omomorfismo di gruppi, perché
    <math|e<rsup|x+y>=e<rsup|x>e<rsup|y>>; anzi è un isomorfismo, con inverso
    il logaritmo;

    <item>per ogni elemento <math|g> di un gruppo,
    <math|\<bbb-Z\>\<rightarrow\>G>, <math|n\<mapsto\>g<rsup|n>>, è un
    omomorfismo, perché <math|g<rsup|n+m>=g<rsup|n>g<rsup|m>> (lo useremo nel
    capitolo 19);

    <item>le applicazioni lineari fra spazi vettoriali sono omomorfismi dei
    gruppi additivi che rispettano anche il prodotto per scalari.
  </itemize>

  <\proposition>
    Se <math|f:G\<rightarrow\>H> è un omomorfismo di gruppi, allora
    <math|f(e<rsub|G>)=e<rsub|H>> e <math|f(x<rsup|-1>)=f(x)<rsup|-1>>.
  </proposition>

  <\proof>
    <math|f(e)=f(e*e)=f(e)f(e)>; cancellando <math|f(e)> si ha
    <math|e<rsub|H>=f(e)>. Poi <math|f(x)f(x<rsup|-1>)=f(x*x<rsup|-1>)=f(e)=e<rsub|H>>,
    e analogamente nell'altro ordine.
  </proof>

  <\immagine|Un isomorfismo è un cambio di nomi>
    Un isomorfismo non richiede che gli elementi siano gli stessi: richiede
    che, cambiando i loro nomi con <math|f>, le tavole delle operazioni
    diventino identiche. <math|\<mu\><rsub|n>> è fatto di numeri complessi e
    <math|\<bbb-Z\>/n\<bbb-Z\>> di classi di interi, ma
    <math|[a]<rsub|n>\<mapsto\>\<zeta\><rsup|a>> trasforma la tavola della
    somma dell'uno nella tavola del prodotto dell'altro. Per tutto ciò che
    riguarda l'operazione, sono lo stesso gruppo.
  </immagine>

  (Che <math|[a]<rsub|n>\<mapsto\>\<zeta\><rsup|a>> sia ben definita viene da
  <math|\<zeta\><rsup|n>=1>: se <math|a\<equiv\>a<rprime|'><pmod|n>>, allora
  <math|\<zeta\><rsup|a<rprime|'>>=\<zeta\><rsup|a+k*n>=\<zeta\><rsup|a>>. È
  biiettiva perché le potenze <math|\<zeta\><rsup|0>,\<ldots\>,\<zeta\><rsup|n-1>>
  sono distinte.)

  <section|Prodotti diretti>

  Dati due anelli <math|A,B>, il prodotto cartesiano <math|A\<times\>B>
  diventa un anello con le operazioni <em|componente per componente>:

  <\equation*>
    (a,b)+(a<rprime|'>,b<rprime|'>)=(a+a<rprime|'>,b+b<rprime|'>),<space|2em>(a,b)(a<rprime|'>,b<rprime|'>)=(a*a<rprime|'>,b*b<rprime|'>).
  </equation*>

  Tutte le proprietà valgono perché valgono in ciascuna componente; il neutro
  è <math|(0,0)> e l'unità <math|(1,1)>. Lo stesso vale per i gruppi. Ci
  interessa in particolare <math|\<bbb-Z\>/m\<bbb-Z\>\<times\>\<bbb-Z\>/n\<bbb-Z\>>,
  i cui elementi sono coppie di classi <math|([a]<rsub|m>,[b]<rsub|n>)>: ha
  <math|m*n> elementi. I suoi invertibili sono le coppie di invertibili, cioè
  <math|(\<bbb-Z\>/m\<bbb-Z\>\<times\>\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>=(\<bbb-Z\>/m\<bbb-Z\>)<rsup|\<times\>>\<times\>(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>>,
  perché <math|(a,b)(x,y)=(1,1)> significa <math|a*x=1> e <math|b*y=1>.

  <section|La mappa cinese>

  Consideriamo la funzione che a una classe modulo <math|m*n> associa le
  classi modulo <math|m> e modulo <math|n> di uno stesso rappresentante:

  <\equation*>
    \<psi\>:\<bbb-Z\>/m*n\<bbb-Z\>\<longrightarrow\>\<bbb-Z\>/m\<bbb-Z\>\<times\>\<bbb-Z\>/n\<bbb-Z\>,<space|2em>\<psi\>([x]<rsub|m*n>)=([x]<rsub|m>,[x]<rsub|n>).
  </equation*>

  <\proposition>
    <math|\<psi\>> è ben definita ed è un omomorfismo di anelli.
  </proposition>

  <\proof>
    <em|Buona definizione.> Se <math|[x]<rsub|m*n>=[y]<rsub|m*n>>, allora
    <math|m*n\<mid\>x-y>, quindi <math|m\<mid\>x-y> e <math|n\<mid\>x-y>: le
    immagini coincidono. Anche se la verifica è breve, non si può saltare: la
    formula è scritta in termini di un rappresentante.

    <em|Omomorfismo.> <math|\<psi\>([x]+[y])=\<psi\>([x+y])=([x+y]<rsub|m>,[x+y]<rsub|n>)=([x]<rsub|m>+[y]<rsub|m>,[x]<rsub|n>+[y]<rsub|n>)=\<psi\>([x])+\<psi\>([y])>,
    e lo stesso calcolo con il prodotto. Infine
    <math|\<psi\>([1])=([1],[1])>.
  </proof>

  <\theorem>
    <dueto|Teorema cinese del resto, forma strutturale><math|\<psi\>> è un
    isomorfismo di anelli se e solo se <math|<math-up|MCD>(m,n)=1>. In tal
    caso

    <\equation*>
      \<bbb-Z\>/m*n\<bbb-Z\>\<cong\>\<bbb-Z\>/m\<bbb-Z\>\<times\>\<bbb-Z\>/n\<bbb-Z\>.
    </equation*>
  </theorem>

  <\proof>
    <em|Se <math|m,n> sono coprimi.> Dominio e codominio hanno entrambi
    <math|m*n> elementi, quindi basta dimostrare la suriettività (capitolo
    3). Data una coppia <math|([a]<rsub|m>,[b]<rsub|n>)>, cercare una classe
    che vi sia mandata significa risolvere il sistema
    <math|x\<equiv\>a<pmod|m>>, <math|x\<equiv\>b<pmod|n>>, che ha soluzione
    per il teorema del capitolo 15 (esplicitamente <math|x=a*v*n+b*u*m>, se
    <math|u*m+v*n=1>). L'iniettività, che segue dal conteggio, è l'unicità
    modulo <math|m*n> della soluzione.

    <em|Se <math|\<psi\>> è suriettiva.> Allora esiste <math|x> con
    <math|\<psi\>([x])=([0]<rsub|m>,[1]<rsub|n>)>, cioè
    <math|x\<equiv\>0<pmod|m>> e <math|x\<equiv\>1<pmod|n>>. Un divisore
    comune <math|d> di <math|m> e <math|n> divide <math|x> (perché
    <math|m\<mid\>x>) e <math|x-1> (perché <math|n\<mid\>x-1>), quindi divide
    <math|1>. Dunque <math|<math-up|MCD>(m,n)=1>.
  </proof>

  <\guidato|<math|\<bbb-Z\>/6\<bbb-Z\>\<cong\>\<bbb-Z\>/2\<bbb-Z\>\<times\>\<bbb-Z\>/3\<bbb-Z\>>>
    Poiché <math|<math-up|MCD>(2,3)=1>, <math|\<psi\>> è un isomorfismo. Ecco
    le immagini:

    <\with|par-mode|center>
      <block|<tformat|<cwith|1|1|1|-1|cell-background|#efefeb>|<cwith|1|-1|1|-1|cell-halign|c>|<table|<row|<cell|<math|x>
      mod <math|6>>|<cell|0>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>>|<row|<cell|<math|(x<text|
      mod >2,x<text| mod >3)>>|<cell|<math|(0,0)>>|<cell|<math|(1,1)>>|<cell|<math|(0,2)>>|<cell|<math|(1,0)>>|<cell|<math|(0,1)>>|<cell|<math|(1,2)>>>>>>
    </with>

    Le sei coppie possibili compaiono ciascuna una volta. Ogni intero della
    forma <math|6k+4>, per esempio, è pari e ha resto <math|1> modulo
    <math|3>, e viceversa. Fare i conti modulo <math|6> equivale a farli
    separatamente modulo <math|2> e modulo <math|3>.
  </guidato>

  <\attenzione|Senza coprimalità la mappa non è suriettiva>
    <math|\<bbb-Z\>/8\<bbb-Z\>\<rightarrow\>\<bbb-Z\>/2\<bbb-Z\>\<times\>\<bbb-Z\>/4\<bbb-Z\>>
    non colpisce <math|([0]<rsub|2>,[1]<rsub|4>)>: nessun numero è insieme
    pari e congruo a <math|1> modulo <math|4>. La coprimalità garantisce che
    le informazioni modulo <math|m> e modulo <math|n> siano indipendenti;
    senza di essa si sovrappongono.
  </attenzione>

  Per induzione, se <math|m<rsub|1>,\<ldots\>,m<rsub|k>> sono a due a due
  coprimi, <math|\<bbb-Z\>/m<rsub|1>\<cdots\>m<rsub|k>\<bbb-Z\>\<cong\>\<bbb-Z\>/m<rsub|1>\<bbb-Z\>\<times\>\<cdots\>\<times\>\<bbb-Z\>/m<rsub|k>\<bbb-Z\>>.
  In particolare, fattorizzando <math|n=p<rsub|1><rsup|\<alpha\><rsub|1>>\<cdots\>p<rsub|r><rsup|\<alpha\><rsub|r>>>,
  ogni problema modulo <math|n> si spezza in problemi modulo le potenze di
  primi <math|p<rsub|i><rsup|\<alpha\><rsub|i>>>. È la strategia che useremo
  nel capitolo 22.

  <section|Gli invertibili>

  <\theorem>
    Se <math|<math-up|MCD>(m,n)=1>, la restrizione di <math|\<psi\>> è un
    isomorfismo di gruppi

    <\equation*>
      (\<bbb-Z\>/m*n\<bbb-Z\>)<rsup|\<times\>>\<cong\>(\<bbb-Z\>/m\<bbb-Z\>)<rsup|\<times\>>\<times\>(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>.
    </equation*>
  </theorem>

  <\proof>
    Un isomorfismo di anelli manda invertibili in invertibili, in entrambe le
    direzioni: se <math|u*v=1> allora <math|\<psi\>(u)\<psi\>(v)=\<psi\>(1)=1>,
    e lo stesso per <math|\<psi\><rsup|-1>>, che è anch'esso un omomorfismo
    (se <math|\<psi\>(u)=s> e <math|\<psi\>(v)=t>, allora
    <math|\<psi\>(u*v)=s*t>, cioè <math|\<psi\><rsup|-1>(s*t)=\<psi\><rsup|-1>(s)\<psi\><rsup|-1>(t)>).
    Quindi <math|\<psi\>> manda biiettivamente
    <math|(\<bbb-Z\>/m*n\<bbb-Z\>)<rsup|\<times\>>> sugli invertibili del
    prodotto, che sono <math|(\<bbb-Z\>/m\<bbb-Z\>)<rsup|\<times\>>\<times\>(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>>,
    rispettando il prodotto.

    Lo si può verificare anche a mano: <math|<math-up|MCD>(x,m*n)=1> se e
    solo se <math|<math-up|MCD>(x,m)=<math-up|MCD>(x,n)=1> (capitolo 9), cioè
    se e solo se entrambe le componenti di <math|\<psi\>([x])> sono
    invertibili.
  </proof>

  Modulo <math|6>: <math|(\<bbb-Z\>/6\<bbb-Z\>)<rsup|\<times\>>=<around*|{|[1],[5]|}>>,
  con <math|[1]\<mapsto\>([1],[1])> e <math|[5]\<mapsto\>([1],[2])>, che sono
  proprio gli elementi di <math|(\<bbb-Z\>/2\<bbb-Z\>)<rsup|\<times\>>\<times\>(\<bbb-Z\>/3\<bbb-Z\>)<rsup|\<times\>>=<around*|{|[1]|}>\<times\><around*|{|[1],[2]|}>>.

  <section|La funzione di Eulero>

  <\definition>
    Per <math|n\<geq\>1>, la <em|funzione di Eulero> <math|\<varphi\>(n)> è
    il numero di interi fra <math|1> e <math|n> coprimi con <math|n>.
    Equivalentemente, <math|\<varphi\>(n)=\|(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>\|>.
  </definition>

  Per esempio <math|\<varphi\>(12)=4> (sono <math|1,5,7,11>) e
  <math|\<varphi\>(1)=1>. Due casi si calcolano subito.

  <\itemize>
    <item>Se <math|p> è primo, tutti i numeri <math|1,\<ldots\>,p-1> sono
    coprimi con <math|p>: <math|\<varphi\>(p)=p-1>.

    <item>Se <math|n=p<rsup|k>>, un numero è coprimo con <math|p<rsup|k>> se
    e solo se non è multiplo di <math|p>. Fra <math|1> e <math|p<rsup|k>> i
    multipli di <math|p> sono <math|p<rsup|k-1>>, quindi
    <math|\<varphi\>(p<rsup|k>)=p<rsup|k>-p<rsup|k-1>=p<rsup|k-1>(p-1)>.
  </itemize>

  Il teorema sugli invertibili fa il resto: contando gli elementi dei due
  lati,

  <\concetto|Moltiplicatività di <math|\<varphi\>>>
    Se <math|<math-up|MCD>(m,n)=1>, allora
    <math|\<varphi\>(m*n)=\<varphi\>(m)\<varphi\>(n)>. Di conseguenza, se
    <math|n=p<rsub|1><rsup|\<alpha\><rsub|1>>\<cdots\>p<rsub|r><rsup|\<alpha\><rsub|r>>>,

    <\equation*>
      \<varphi\>(n)=<big|prod><rsub|i=1><rsup|r>p<rsub|i><rsup|\<alpha\><rsub|i>-1>(p<rsub|i>-1)=n<big|prod><rsub|i=1><rsup|r><around*|(|1-<frac|1|p<rsub|i>>|)>.
    </equation*>
  </concetto>

  Per esempio <math|\<varphi\>(100)=\<varphi\>(4)\<varphi\>(25)=2\<#22C5\>20=40>,
  <math|\<varphi\>(91)=\<varphi\>(7)\<varphi\>(13)=6\<#22C5\>12=72> e
  <math|\<varphi\>(30)=1\<#22C5\>2\<#22C5\>4=8>.

  La formula col prodotto ha anche una lettura combinatoria. Nel capitolo 6
  abbiamo contato i numeri fino a <math|100> non divisibili per <math|2,3,5>
  con l'inclusione-esclusione; per un <math|n> qualunque lo stesso calcolo,
  con i primi di <math|n>, dà

  <\equation*>
    \<varphi\>(n)=n-<big|sum><rsub|i><frac|n|p<rsub|i>>+<big|sum><rsub|i\<less\>j><frac|n|p<rsub|i>p<rsub|j>>-\<cdots\>=n<around*|(|1-<frac|1|p<rsub|1>>|)>\<cdots\><around*|(|1-<frac|1|p<rsub|r>>|)>,
  </equation*>

  dove l'ultima uguaglianza si vede sviluppando il prodotto. Due strade
  completamente diverse, il teorema cinese e l'inclusione-esclusione, portano
  alla stessa formula.

  <section|Ridurre a un modulo più piccolo>

  Se <math|d\<mid\>n>, anche la riduzione
  <math|\<bbb-Z\>/n\<bbb-Z\>\<rightarrow\>\<bbb-Z\>/d\<bbb-Z\>>,
  <math|[x]<rsub|n>\<mapsto\>[x]<rsub|d>>, è ben definita (se
  <math|n\<mid\>x-y> allora <math|d\<mid\>x-y>) ed è un omomorfismo
  suriettivo di anelli. Ogni classe modulo <math|d> proviene da esattamente
  <math|n/d> classi modulo <math|n>: le classi di
  <math|a,a+d,a+2d,\<ldots\>,a+(<frac|n|d>-1)d>. Per esempio la classe
  <math|[1]<rsub|2>> dei dispari proviene da
  <math|[1]<rsub|6>,[3]<rsub|6>,[5]<rsub|6>>. Questi \Ssollevamenti\T
  torneranno quando, nel capitolo 22, passeremo dalle soluzioni modulo
  <math|p> a quelle modulo <math|p<rsup|2>>.

  <\inbreve>
    Un omomorfismo rispetta le operazioni; un isomorfismo è un omomorfismo
    biiettivo, cioè un cambio di nomi che conserva le tavole. La mappa
    <math|[x]<rsub|m*n>\<mapsto\>([x]<rsub|m>,[x]<rsub|n>)> è un omomorfismo
    di anelli ben definito, ed è un isomorfismo esattamente quando <math|m,n>
    sono coprimi: è il teorema cinese in forma strutturale. Restringendolo
    agli invertibili si ottiene <math|\<varphi\>(m*n)=\<varphi\>(m)\<varphi\>(n)>,
    e quindi la formula <math|\<varphi\>(n)=n<big|prod>(1-1/p)>.
  </inbreve>

  <\verifica|18.1>
    Calcola <math|\<varphi\>(360)>, <math|\<varphi\>(1001)> e
    <math|\<varphi\>(2<rsup|10>)>.
  </verifica>

  <\verifica|18.2>
    Scrivi esplicitamente l'isomorfismo <math|\<bbb-Z\>/15\<bbb-Z\>\<cong\>\<bbb-Z\>/3\<bbb-Z\>\<times\>\<bbb-Z\>/5\<bbb-Z\>>
    per le classi <math|[7]>, <math|[11]>, <math|[14]>, e trova la classe
    modulo <math|15> che corrisponde a <math|([2],[4])>.
  </verifica>

  <\verifica|18.3>
    Dimostra che non esiste un omomorfismo di anelli con unità
    <math|\<bbb-Z\>/6\<bbb-Z\>\<rightarrow\>\<bbb-Z\>/4\<bbb-Z\>>. (Che cosa
    dovrebbe essere l'immagine di <math|[6]=[0]>?)
  </verifica>

  <chapter|Sottogruppi e gruppi ciclici><label|cap-ciclici>

  Dentro <math|\<bbb-Z\>> i numeri pari formano a loro volta un gruppo;
  dentro <math|\<bbb-Z\>/12\<bbb-Z\>> i multipli di <math|3> fanno lo stesso.
  Un gruppo contenuto in un altro, con la stessa operazione, si chiama
  sottogruppo. I più semplici sono quelli generati da un solo elemento,
  prendendone tutte le potenze: i gruppi ciclici. In questo capitolo li
  classifichiamo completamente, e scopriamo che la loro struttura è governata
  dalla divisibilità, cioè dal terzo pilastro, mentre lo strumento decisivo è
  ancora una volta il principio del minimo.

  <section|Sottogruppi>

  <\definition>
    Sia <math|G> un gruppo. Un sottoinsieme <math|H\<subseteq\>G> è un
    <em|sottogruppo>, e si scrive <math|H\<leq\>G>, se <math|H> è un gruppo
    con la stessa operazione di <math|G>.
  </definition>

  Ogni gruppo ha almeno due sottogruppi, <math|<around*|{|e|}>> e <math|G>
  stesso. Il neutro di un sottogruppo è necessariamente quello di <math|G>:
  se <math|e<rsub|H>> è il neutro di <math|H>, allora
  <math|e<rsub|H>e<rsub|H>=e<rsub|H>=e<rsub|H>e>, e cancellando in <math|G>
  si ha <math|e<rsub|H>=e>. Allo stesso modo l'inverso di un elemento
  calcolato in <math|H> coincide con quello calcolato in <math|G>, per
  l'unicità dell'inverso. Per riconoscere un sottogruppo non serve
  controllare l'associatività, che è ereditata da <math|G>; basta un criterio
  compatto.

  <\theorem>
    <dueto|Criterio del sottogruppo>Un sottoinsieme <math|H\<subseteq\>G> è
    un sottogruppo se e solo se <math|H\<neq\>\<varnothing\>> e
    <math|x*y<rsup|-1>\<in\>H> per ogni <math|x,y\<in\>H>.
  </theorem>

  <\proof>
    Se <math|H> è un sottogruppo, le condizioni sono ovvie. Viceversa,
    prendiamo <math|a\<in\>H>. Con <math|x=y=a> si ottiene
    <math|e=a*a<rsup|-1>\<in\>H>. Con <math|x=e> e <math|y\<in\>H> si ottiene
    <math|y<rsup|-1>\<in\>H>: <math|H> è chiuso per inversi. Infine, se
    <math|x,y\<in\>H>, allora <math|y<rsup|-1>\<in\>H> e
    <math|x*y=x(y<rsup|-1>)<rsup|-1>\<in\>H>: <math|H> è chiuso per il
    prodotto, quindi l'operazione di <math|G> è un'operazione su <math|H>.
    L'associatività vale perché vale in <math|G>.
  </proof>

  In notazione additiva la condizione diventa <math|x-y\<in\>H>.

  <\proposition>
    Siano <math|H,K\<leq\>G>. Allora <math|H\<cap\>K\<leq\>G>. Invece
    <math|H\<cup\>K> è un sottogruppo se e solo se <math|H\<subseteq\>K>
    oppure <math|K\<subseteq\>H>.
  </proposition>

  <\proof>
    <math|e\<in\>H\<cap\>K>, e se <math|x,y\<in\>H\<cap\>K> allora
    <math|x*y<rsup|-1>> sta sia in <math|H> sia in <math|K>. Per l'unione, se
    uno dei due contiene l'altro l'unione è il più grande dei due. Supponiamo
    invece che <math|H\<cup\>K> sia un sottogruppo ma che esistano
    <math|h\<in\>H\<setminus\>K> e <math|k\<in\>K\<setminus\>H>. Allora
    <math|h*k\<in\>H\<cup\>K>. Se <math|h*k\<in\>H>, allora
    <math|k=h<rsup|-1>(h*k)\<in\>H>, assurdo; se <math|h*k\<in\>K>, allora
    <math|h=(h*k)k<rsup|-1>\<in\>K>, assurdo.
  </proof>

  Per esempio <math|2\<bbb-Z\>\<cup\>3\<bbb-Z\>> non è un sottogruppo di
  <math|\<bbb-Z\>>: contiene <math|2> e <math|3> ma non <math|3-2=1>.

  <section|I sottogruppi di <math|\<bbb-Z\>>>

  Per ogni <math|d\<in\>\<bbb-Z\>> l'insieme dei multipli
  <math|d\<bbb-Z\>=<around*|{|d*k:k\<in\>\<bbb-Z\>|}>> è un sottogruppo di
  <math|(\<bbb-Z\>,+)>: contiene <math|0> e la differenza di due multipli di
  <math|d> è un multiplo di <math|d>.

  <\theorem>
    Ogni sottogruppo di <math|\<bbb-Z\>> è della forma <math|d\<bbb-Z\>> per
    un unico <math|d\<geq\>0>.
  </theorem>

  <\proof>
    Sia <math|H\<leq\>\<bbb-Z\>>. Se <math|H=<around*|{|0|}>>, allora
    <math|H=0\<bbb-Z\>>. Altrimenti <math|H> contiene un elemento non nullo
    e, con esso, il suo opposto: contiene un elemento positivo. Sia <math|d>
    il più piccolo elemento positivo di <math|H> (principio del minimo).
    Poiché <math|H> è chiuso per somme e opposti, contiene tutti i multipli
    di <math|d>: <math|d\<bbb-Z\>\<subseteq\>H>. Viceversa, se
    <math|h\<in\>H>, dividiamo: <math|h=q*d+r> con <math|0\<leq\>r\<less\>d>.
    Allora <math|r=h-q*d\<in\>H>, e per la minimalità di <math|d> non può
    essere positivo: <math|r=0>, cioè <math|h\<in\>d\<bbb-Z\>>. L'unicità:
    <math|d> è il più piccolo elemento positivo di <math|d\<bbb-Z\>>.
  </proof>

  <\immagine|Il minimo e il resto, per la terza volta>
    È lo stesso ragionamento della seconda dimostrazione di Bézout (capitolo
    9). Anzi, Bézout <em|è> questo teorema: l'insieme delle combinazioni
    <math|u*a+v*b> è un sottogruppo di <math|\<bbb-Z\>>, quindi è
    <math|d\<bbb-Z\>> per un certo <math|d>, e quel <math|d> risulta essere
    il MCD. In formule: <math|a\<bbb-Z\>+b\<bbb-Z\>=<math-up|MCD>(a,b)\<bbb-Z\>>.
  </immagine>

  Il linguaggio dei sottogruppi traduce la divisibilità.

  <\itemize>
    <item><math|d\<bbb-Z\>\<subseteq\>m\<bbb-Z\>> se e solo se
    <math|m\<mid\>d>. Infatti se <math|d\<bbb-Z\>\<subseteq\>m\<bbb-Z\>>
    allora <math|d\<in\>m\<bbb-Z\>>; se <math|d=m*q>, ogni <math|d*k=m(q*k)>.
    Attenzione al verso: il numero più grande dà il sottogruppo più piccolo,
    <math|6\<bbb-Z\>\<subseteq\>2\<bbb-Z\>>.

    <item><math|d\<bbb-Z\>\<cap\>m\<bbb-Z\>=<math-up|mcm>(d,m)\<bbb-Z\>>,
    perché gli elementi comuni sono i multipli comuni, cioè i multipli del
    mcm (capitolo 10). Per esempio <math|4\<bbb-Z\>\<cap\>6\<bbb-Z\>=12\<bbb-Z\>>.

    <item><math|d\<bbb-Z\>+m\<bbb-Z\>=<math-up|MCD>(d,m)\<bbb-Z\>>, come
    appena visto.
  </itemize>

  <section|Il centro di un gruppo>

  Un altro sottogruppo che esiste in ogni gruppo è il <em|centro>

  <\equation*>
    Z(G)=<around*|{|z\<in\>G:z*g=g*z<text| per ogni >g\<in\>G|}>,
  </equation*>

  formato dagli elementi che commutano con tutti. Contiene <math|e>. Se
  <math|x,y\<in\>Z(G)>, allora <math|(x*y)g=x(y*g)=x(g*y)=(x*g)y=(g*x)y=g(x*y)>,
  quindi <math|x*y\<in\>Z(G)>; e da <math|x*g=g*x>, moltiplicando a sinistra
  e a destra per <math|x<rsup|-1>>, si ha <math|g*x<rsup|-1>=x<rsup|-1>g>,
  quindi <math|x<rsup|-1>\<in\>Z(G)>. Dunque <math|Z(G)\<leq\>G>. Un gruppo è
  abeliano se e solo se <math|Z(G)=G>.

  <section|Il sottogruppo generato da un elemento>

  Sia <math|g\<in\>G>. Definiamo le potenze intere: <math|g<rsup|0>=e>,
  <math|g<rsup|n>=g\<cdots\>g> (<math|n> fattori) per <math|n\<gtr\>0>, e
  <math|g<rsup|-n>=(g<rsup|-1>)<rsup|n>>. Valgono le regole
  <math|g<rsup|r>g<rsup|s>=g<rsup|r+s>> e
  <math|(g<rsup|r>)<rsup|s>=g<rsup|r*s>> per ogni <math|r,s\<in\>\<bbb-Z\>>
  (si verificano distinguendo i segni). In notazione additiva le potenze sono
  i multipli <math|n*g>.

  <\definition>
    Il <em|sottogruppo generato> da <math|g> è
    <math|\<langle\>g\<rangle\>=<around*|{|g<rsup|n>:n\<in\>\<bbb-Z\>|}>>. Un
    gruppo <math|G> è <em|ciclico> se esiste <math|g> con
    <math|G=\<langle\>g\<rangle\>>; un tale <math|g> si chiama
    <em|generatore>.
  </definition>

  <math|\<langle\>g\<rangle\>> è un sottogruppo per il criterio: contiene
  <math|e=g<rsup|0>> e <math|g<rsup|r>(g<rsup|s>)<rsup|-1>=g<rsup|r-s>>. È
  sempre abeliano, perché <math|g<rsup|r>g<rsup|s>=g<rsup|r+s>=g<rsup|s>g<rsup|r>>,
  anche quando <math|G> non lo è. È il più piccolo sottogruppo che contiene
  <math|g>.

  Esempi:

  <\itemize>
    <item><math|\<bbb-Z\>=\<langle\>1\<rangle\>=\<langle\>-1\<rangle\>> è
    ciclico; se <math|\|a\|\<gtr\>1>, <math|\<langle\>a\<rangle\>=a\<bbb-Z\>\<neq\>\<bbb-Z\>>.
    I generatori di <math|\<bbb-Z\>> sono solo <math|\<pm\>1>.

    <item><math|\<bbb-Z\>/n\<bbb-Z\>=\<langle\>[1]\<rangle\>>, perché
    <math|k[1]=[k]>.

    <item><math|\<mu\><rsub|n>=\<langle\>\<zeta\>\<rangle\>>, con
    <math|\<zeta\>=e<rsup|2\<pi\>i/n>>.

    <item>In <math|\<bbb-Z\>/12\<bbb-Z\>>,
    <math|\<langle\>[3]\<rangle\>=<around*|{|[0],[3],[6],[9]|}>> e
    <math|\<langle\>[4]\<rangle\>=<around*|{|[0],[4],[8]|}>>.
  </itemize>

  <figura|<image|../../Archive/Images/aritmetica/orologio12.pdf|51.1mm|46.5mm||>|In
  <math|\<bbb-Z\>/12\<bbb-Z\>> i multipli di <math|3> formano un quadrato,
  quelli di <math|4> un triangolo.>

  <section|L'ordine di un elemento>

  <\definition>
    L'<em|ordine> di <math|g\<in\>G>, indicato con <math|<math-up|ord>(g)>, è
    il più piccolo intero <math|m\<gtr\>0> tale che <math|g<rsup|m>=e>, se
    esiste; altrimenti si dice che <math|g> ha ordine infinito.
  </definition>

  <\theorem>
    Sia <math|g\<in\>G>.

    <\enumerate>
      <item>Se <math|g> ha ordine infinito, le potenze <math|g<rsup|n>> sono
      tutte distinte e <math|\<langle\>g\<rangle\>> è infinito.

      <item>Se <math|<math-up|ord>(g)=m>, allora per ogni
      <math|k\<in\>\<bbb-Z\>> si ha <math|g<rsup|k>=e\<Longleftrightarrow\>m\<mid\>k>;
      più in generale <math|g<rsup|r>=g<rsup|s>\<Longleftrightarrow\>r\<equiv\>s<pmod|m>>.
      Quindi <math|\<langle\>g\<rangle\>=<around*|{|e,g,\<ldots\>,g<rsup|m-1>|}>>
      ha esattamente <math|m> elementi: <math|<math-up|ord>(g)=\|\<langle\>g\<rangle\>\|>.
    </enumerate>
  </theorem>

  <\proof>
    (1) Se fosse <math|g<rsup|r>=g<rsup|s>> con <math|r\<gtr\>s>,
    moltiplicando per <math|g<rsup|-s>> avremmo <math|g<rsup|r-s>=e> con
    <math|r-s\<gtr\>0>, contro l'ipotesi.

    (2) Dividiamo <math|k=q*m+r> con <math|0\<leq\>r\<less\>m>. Allora
    <math|g<rsup|k>=(g<rsup|m>)<rsup|q>g<rsup|r>=g<rsup|r>>. Se
    <math|g<rsup|k>=e>, allora <math|g<rsup|r>=e> con
    <math|0\<leq\>r\<less\>m>, e per la minimalità di <math|m> si ha
    <math|r=0>. Il viceversa è ovvio. Poiché
    <math|g<rsup|r>=g<rsup|s>\<Longleftrightarrow\>g<rsup|r-s>=e>, segue la
    seconda affermazione: le potenze <math|g<rsup|0>,\<ldots\>,g<rsup|m-1>>
    sono distinte, e ogni altra potenza è uguale a una di esse.
  </proof>

  La parte (2) è il criterio più usato nei conti: <em|se <math|g<rsup|k>=e>,
  l'ordine di <math|g> divide <math|k>>. Per dimostrare che un ordine è
  esattamente <math|m> basta quindi verificare <math|g<rsup|m>=e> ed
  escludere i divisori propri di <math|m>. L'esponente di una potenza, in un
  gruppo di ordine <math|m>, va pensato modulo <math|m>: se
  <math|<math-up|ord>(g)=3>, allora <math|g<rsup|0>=g<rsup|3>=g<rsup|6>=\<cdots\>>.

  <section|L'ordine di una potenza>

  <\theorem>
    Se <math|<math-up|ord>(g)=n> e <math|k\<in\>\<bbb-Z\>>, allora
    <math|<math-up|ord>(g<rsup|k>)=<frac|n|<math-up|MCD>(n,k)>>.
  </theorem>

  <\proof>
    Sia <math|d=<math-up|MCD>(n,k)>, <math|n=d*n<rsub|1>>,
    <math|k=d*k<rsub|1>>, con <math|n<rsub|1>,k<rsub|1>> coprimi. Per il
    teorema precedente <math|(g<rsup|k>)<rsup|m>=g<rsup|k*m>=e> se e solo se
    <math|n\<mid\>k*m>, cioè <math|d*n<rsub|1>\<mid\>d*k<rsub|1>m>, cioè
    <math|n<rsub|1>\<mid\>k<rsub|1>m>, e per il lemma di Euclide
    <math|n<rsub|1>\<mid\>m>. Il più piccolo <math|m\<gtr\>0> possibile è
    <math|n<rsub|1>=n/d>.
  </proof>

  Se <math|<math-up|ord>(g)=6>: <math|<math-up|ord>(g<rsup|2>)=3>,
  <math|<math-up|ord>(g<rsup|3>)=2>, <math|<math-up|ord>(g<rsup|4>)=3>,
  <math|<math-up|ord>(g<rsup|5>)=6>.

  <\corollary>
    Sia <math|G=\<langle\>g\<rangle\>> ciclico di ordine <math|n>. L'elemento
    <math|g<rsup|k>> è un generatore di <math|G> se e solo se
    <math|<math-up|MCD>(k,n)=1>. Quindi <math|G> ha esattamente
    <math|\<varphi\>(n)> generatori. In particolare, in
    <math|\<bbb-Z\>/n\<bbb-Z\>> l'elemento <math|[a]> ha ordine
    <math|<frac|n|<math-up|MCD>(a,n)>> e genera tutto il gruppo se e solo se
    <math|<math-up|MCD>(a,n)=1>.
  </corollary>

  <\proof>
    <math|\<langle\>g<rsup|k>\<rangle\>> ha <math|<math-up|ord>(g<rsup|k>)>
    elementi, ed è tutto <math|G> se e solo se questo numero è <math|n>, cioè
    <math|<math-up|MCD>(n,k)=1>. In <math|\<bbb-Z\>/n\<bbb-Z\>> si applica a
    <math|g=[1]> e <math|[a]=a[1]>.
  </proof>

  Così in <math|\<bbb-Z\>/12\<bbb-Z\>> l'elemento <math|[3]> ha ordine
  <math|12/3=4> (come nella figura), e i generatori sono
  <math|[1],[5],[7],[11]>. Più precisamente,
  <math|\<langle\>[a]\<rangle\>=\<langle\>[d]\<rangle\>> con
  <math|d=<math-up|MCD>(a,n)>: infatti <math|[a]> è multiplo di <math|[d]>, e
  per Bézout <math|d=u*a+v*n>, quindi <math|[d]=u[a]>. Per esempio
  <math|\<langle\>[8]\<rangle\>=\<langle\>[4]\<rangle\>=<around*|{|[0],[4],[8]|}>>
  in <math|\<bbb-Z\>/12\<bbb-Z\>>.

  <section|I sottogruppi di un gruppo ciclico>

  <\theorem>
    Ogni sottogruppo di un gruppo ciclico è ciclico. Più precisamente, se
    <math|G=\<langle\>g\<rangle\>> e <math|H\<leq\>G> con
    <math|H\<neq\><around*|{|e|}>>, allora
    <math|H=\<langle\>g<rsup|n<rsub|0>>\<rangle\>>, dove <math|n<rsub|0>> è
    il più piccolo intero positivo con <math|g<rsup|n<rsub|0>>\<in\>H>.
  </theorem>

  <\proof>
    Ogni elemento di <math|H> è una potenza <math|g<rsup|k>>. Poiché
    <math|H\<neq\><around*|{|e|}>>, contiene un <math|g<rsup|k>> con
    <math|k\<neq\>0>, e con esso <math|g<rsup|-k>>: l'insieme
    <math|S=<around*|{|k\<gtr\>0:g<rsup|k>\<in\>H|}>> non è vuoto e ha un
    minimo <math|n<rsub|0>>. Poiché <math|g<rsup|n<rsub|0>>\<in\>H>, si ha
    <math|\<langle\>g<rsup|n<rsub|0>>\<rangle\>\<subseteq\>H>. Viceversa, se
    <math|g<rsup|k>\<in\>H>, dividiamo <math|k=q*n<rsub|0>+r> con
    <math|0\<leq\>r\<less\>n<rsub|0>>: allora
    <math|g<rsup|r>=g<rsup|k>(g<rsup|n<rsub|0>>)<rsup|-q>\<in\>H>, e per la
    minimalità di <math|n<rsub|0>> si ha <math|r=0>. Quindi
    <math|g<rsup|k>=(g<rsup|n<rsub|0>>)<rsup|q>\<in\>\<langle\>g<rsup|n<rsub|0>>\<rangle\>>.
  </proof>

  Con <math|G=\<bbb-Z\>> e <math|g=1> ritroviamo il teorema sui sottogruppi
  <math|d\<bbb-Z\>>. Nel caso finito otteniamo una descrizione completa.

  <\theorem>
    Sia <math|G=\<langle\>g\<rangle\>> ciclico di ordine <math|n>. Per ogni
    divisore positivo <math|d> di <math|n> esiste uno e un solo sottogruppo
    di ordine <math|d>, cioè <math|H<rsub|d>=\<langle\>g<rsup|n/d>\<rangle\>>,
    e non ci sono altri sottogruppi. Inoltre gli elementi di ordine <math|d>
    sono esattamente i <math|\<varphi\>(d)> generatori di <math|H<rsub|d>>.
  </theorem>

  <\proof>
    <math|\<langle\>g<rsup|n/d>\<rangle\>> ha ordine
    <math|<frac|n|<math-up|MCD>(n,n/d)>=<frac|n|n/d>=d>. Sia ora <math|H> un
    sottogruppo qualsiasi; se <math|H=<around*|{|e|}>> è <math|H<rsub|1>>.
    Altrimenti <math|H=\<langle\>g<rsup|n<rsub|0>>\<rangle\>> come nel
    teorema precedente. Poiché <math|g<rsup|n>=e\<in\>H>, lo stesso argomento
    del resto mostra che <math|n<rsub|0>\<mid\>n>; allora
    <math|g<rsup|n<rsub|0>>> ha ordine <math|n/n<rsub|0>>, e un sottogruppo
    di ordine <math|d> deve avere <math|n<rsub|0>=n/d>: è <math|H<rsub|d>>.
    Infine un elemento <math|x> di ordine <math|d> genera un sottogruppo di
    ordine <math|d>, che deve essere <math|H<rsub|d>>; quindi gli elementi di
    ordine <math|d> sono i generatori di <math|H<rsub|d>>, che è ciclico di
    ordine <math|d> e ne ha <math|\<varphi\>(d)>.
  </proof>

  <\guidato|I sottogruppi di un gruppo ciclico di ordine 12>
    I divisori di <math|12> sono <math|1,2,3,4,6,12>, quindi ci sono sei
    sottogruppi:

    <\equation*>
      \<langle\>g<rsup|12>\<rangle\>=<around*|{|e|}>,<space|1em>\<langle\>g<rsup|6>\<rangle\>,<space|1em>\<langle\>g<rsup|4>\<rangle\>,<space|1em>\<langle\>g<rsup|3>\<rangle\>,<space|1em>\<langle\>g<rsup|2>\<rangle\>,<space|1em>\<langle\>g\<rangle\>=G,
    </equation*>

    di ordini <math|1,2,3,4,6,12>. Gli elementi di ordine <math|d> sono
    <math|\<varphi\>(d)>: <math|1,1,2,2,2,4>. Sommandoli si ottengono tutti i
    <math|12> elementi. In generale ogni elemento ha un ordine che divide
    <math|n>, e quindi <math|<big|sum><rsub|d\<mid\>n>\<varphi\>(d)=n>.
  </guidato>

  <section|Gruppi che non sono ciclici>

  Un gruppo finito di ordine <math|n> è ciclico se e solo se ha un elemento
  di ordine <math|n>. Per mostrare che non lo è basta vedere che tutti gli
  ordini sono più piccoli.

  <\guidato|<math|(\<bbb-Z\>/8\<bbb-Z\>)<rsup|\<times\>>> non è ciclico>
    <math|(\<bbb-Z\>/8\<bbb-Z\>)<rsup|\<times\>>=<around*|{|[1],[3],[5],[7]|}>>
    ha ordine <math|4>, ma <math|3<rsup|2>=9\<equiv\>1>,
    <math|5<rsup|2>=25\<equiv\>1>, <math|7<rsup|2>=49\<equiv\>1<pmod|8>>:
    ogni elemento diverso dal neutro ha ordine <math|2>. Nessuno genera il
    gruppo. Si noti la differenza con il gruppo <em|additivo>
    <math|\<bbb-Z\>/8\<bbb-Z\>>, che è ciclico, generato da <math|[1]>.
  </guidato>

  Lo stesso succede con <math|\<bbb-Z\>/2\<bbb-Z\>\<times\>\<bbb-Z\>/2\<bbb-Z\>>:
  ogni elemento sommato a sé stesso dà <math|(0,0)>. Invece
  <math|\<bbb-Z\>/2\<bbb-Z\>\<times\>\<bbb-Z\>/3\<bbb-Z\>> è ciclico,
  generato da <math|(1,1)>, come deve essere visto che è isomorfo a
  <math|\<bbb-Z\>/6\<bbb-Z\>>. Il teorema cinese ci dice in che cosa consiste
  la differenza: <math|2> e <math|3> sono coprimi, <math|2> e <math|2> no.

  <\inbreve>
    Un sottoinsieme non vuoto è un sottogruppo se è chiuso per
    <math|x*y<rsup|-1>>. I sottogruppi di <math|\<bbb-Z\>> sono i
    <math|d\<bbb-Z\>>, e l'inclusione fra essi rovescia la divisibilità. Le
    potenze di un elemento formano il sottogruppo ciclico
    <math|\<langle\>g\<rangle\>>, che ha tanti elementi quanto l'ordine di
    <math|g>; <math|g<rsup|k>=e> se e solo se l'ordine divide <math|k>, e
    <math|<math-up|ord>(g<rsup|k>)=n/<math-up|MCD>(n,k)>. Ogni sottogruppo di
    un ciclico è ciclico (minimo e resto), e un ciclico di ordine <math|n> ha
    esattamente un sottogruppo per ogni divisore di <math|n> e
    <math|\<varphi\>(n)> generatori.
  </inbreve>

  <\verifica|19.1>
    Elenca i sottogruppi di <math|\<bbb-Z\>/18\<bbb-Z\>> indicando un
    generatore per ciascuno. Quanti elementi di ordine <math|6> ci sono?
  </verifica>

  <\verifica|19.2>
    Determina l'ordine di ogni elemento di
    <math|(\<bbb-Z\>/7\<bbb-Z\>)<rsup|\<times\>>>. Il gruppo è ciclico? Quali
    sono i generatori?
  </verifica>

  <\verifica|19.3>
    Siano <math|g,h> elementi di un gruppo abeliano, con
    <math|<math-up|ord>(g)=m>, <math|<math-up|ord>(h)=n> e
    <math|<math-up|MCD>(m,n)=1>. Dimostra che <math|<math-up|ord>(g*h)=m*n>.
    (Mostra prima che <math|(g*h)<rsup|k>=e> implica <math|g<rsup|k*n>=e>.)
  </verifica>

  <\verifica|19.4>
    Dimostra che <math|Z(G)> e <math|\<langle\>g\<rangle\>> coincidono quando
    <math|G> è ciclico generato da <math|g>, e trova un esempio di gruppo
    abeliano non ciclico.
  </verifica>

  <chapter|Permutazioni><label|cap-permutazioni>

  Tutti i gruppi visti finora, tranne uno, erano abeliani. L'eccezione era il
  gruppo delle biiezioni di un insieme in sé, dove l'ordine delle operazioni
  conta: mescolare un mazzo e poi tagliarlo non è come tagliarlo e poi
  mescolarlo. Le permutazioni sono il primo esempio importante di gruppo non
  abeliano, e hanno una notazione, quella dei cicli, che rende i calcoli
  sorprendentemente semplici.

  <section|Il gruppo simmetrico>

  Una <em|permutazione> di un insieme <math|X> è una biiezione
  <math|\<sigma\>:X\<rightarrow\>X>. L'insieme delle permutazioni di <math|X>
  si indica con <math|S(X)>, e per <math|X=<around*|{|1,\<ldots\>,n|}>> si
  scrive <math|S<rsub|n>>.

  <\proposition>
    <math|S(X)>, con la composizione, è un gruppo. Inoltre
    <math|\|S<rsub|n>\|=n!>.
  </proposition>

  <\proof>
    La composizione di biiezioni è una biiezione (capitolo 3). È associativa,
    come ogni composizione di funzioni: entrambi i lati di
    <math|(\<sigma\>\<circ\>\<tau\>)\<circ\>\<rho\>=\<sigma\>\<circ\>(\<tau\>\<circ\>\<rho\>)>
    mandano <math|x> in <math|\<sigma\>(\<tau\>(\<rho\>(x)))>. Il neutro è
    l'identità <math|<math-up|id>>, e l'inverso di <math|\<sigma\>> è la
    funzione inversa <math|\<sigma\><rsup|-1>>. Il numero delle biiezioni di
    un insieme con <math|n> elementi è <math|n!> (capitolo 4).
  </proof>

  Scriviamo il prodotto come <math|\<sigma\>\<tau\>=\<sigma\>\<circ\>\<tau\>>,
  e ricordiamo la convenzione: <math|(\<sigma\>\<tau\>)(x)=\<sigma\>(\<tau\>(x))>,
  cioè <em|si applica prima la permutazione di destra>.

  <section|Due notazioni>

  La <em|notazione a due righe> elenca gli elementi e, sotto, le loro
  immagini:

  <\equation*>
    \<sigma\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>>|<row|<cell|3>|<cell|5>|<cell|1>|<cell|4>|<cell|2>>>>>
  </equation*>

  significa <math|\<sigma\>(1)=3>, <math|\<sigma\>(2)=5>,
  <math|\<sigma\>(3)=1>, <math|\<sigma\>(4)=4>, <math|\<sigma\>(5)=2>. È
  chiara ma ingombrante. Seguiamo invece il percorso di ogni elemento:
  <math|1\<mapsto\>3\<mapsto\>1> si chiude dopo due passi,
  <math|2\<mapsto\>5\<mapsto\>2> anche, e <math|4> resta fermo. Scriviamo

  <\equation*>
    \<sigma\>=(1<space|0.5em>3)(2<space|0.5em>5).
  </equation*>

  <\definition>
    Siano <math|a<rsub|1>,\<ldots\>,a<rsub|k>> elementi distinti. Il
    <em|ciclo> <math|(a<rsub|1><space|0.5em>a<rsub|2><space|0.5em>\<ldots\><space|0.5em>a<rsub|k>)>
    è la permutazione che manda <math|a<rsub|1>\<mapsto\>a<rsub|2>\<mapsto\>\<cdots\>\<mapsto\>a<rsub|k>\<mapsto\>a<rsub|1>>
    e fissa tutti gli altri elementi. Il numero <math|k> è la sua
    <em|lunghezza>; un ciclo di lunghezza <math|2> si chiama
    <em|trasposizione>.
  </definition>

  Un ciclo si può scrivere partendo da uno qualunque dei suoi elementi:
  <math|(1<space|0.5em>3<space|0.5em>2)=(3<space|0.5em>2<space|0.5em>1)=(2<space|0.5em>1<space|0.5em>3)>.
  Ma l'ordine ciclico conta: <math|(1<space|0.5em>3<space|0.5em>2)\<neq\>(1<space|0.5em>2<space|0.5em>3)>.
  Anzi, sono l'una inversa dell'altra: invertire un ciclo significa
  percorrerlo all'indietro,

  <\equation*>
    (a<rsub|1><space|0.5em>a<rsub|2><space|0.5em>\<ldots\><space|0.5em>a<rsub|k>)<rsup|-1>=(a<rsub|k><space|0.5em>\<ldots\><space|0.5em>a<rsub|2><space|0.5em>a<rsub|1>).
  </equation*>

  I punti fissi (cicli di lunghezza <math|1>) di solito non si scrivono.

  <section|Comporre: l'ordine conta>

  <\guidato|Due prodotti diversi>
    Siano <math|\<sigma\>=(1<space|0.5em>2<space|0.5em>3)> e
    <math|\<tau\>=(1<space|0.5em>2)> in <math|S<rsub|3>>. Calcoliamo
    <math|\<sigma\>\<tau\>>, applicando prima <math|\<tau\>> e poi
    <math|\<sigma\>>, e seguendo ogni elemento:

    <\equation*>
      1<above|\<longmapsto\>|\<tau\>>2<above|\<longmapsto\>|\<sigma\>>3,<space|2em>2<above|\<longmapsto\>|\<tau\>>1<above|\<longmapsto\>|\<sigma\>>2,<space|2em>3<above|\<longmapsto\>|\<tau\>>3<above|\<longmapsto\>|\<sigma\>>1.
    </equation*>

    Quindi <math|\<sigma\>\<tau\>> scambia <math|1> e <math|3> e fissa
    <math|2>: <math|\<sigma\>\<tau\>=(1<space|0.5em>3)>. Nell'altro ordine,
    prima <math|\<sigma\>> e poi <math|\<tau\>>:
    <math|1\<mapsto\>2\<mapsto\>1>, <math|2\<mapsto\>3\<mapsto\>3>,
    <math|3\<mapsto\>1\<mapsto\>2>, quindi
    <math|\<tau\>\<sigma\>=(2<space|0.5em>3)>. I due prodotti sono diversi.
  </guidato>

  <figura|<image|../../Archive/Images/aritmetica/permutazioni.pdf|135.0mm|56.2mm||>|I
  due prodotti seguiti freccia per freccia.>

  <\proposition>
    Se <math|\|X\|\<geq\>3>, il gruppo <math|S(X)> non è abeliano. Se
    <math|\|X\|\<leq\>2>, lo è.
  </proposition>

  <\proof>
    Se <math|\|X\|\<geq\>3>, scegliamo tre elementi distinti e chiamiamoli
    <math|1,2,3>; le permutazioni <math|\<sigma\>=(1<space|0.5em>2<space|0.5em>3)>
    e <math|\<tau\>=(1<space|0.5em>2)>, che fissano tutti gli altri elementi,
    non commutano per il calcolo appena fatto. Se <math|\|X\|\<leq\>2>, il
    gruppo ha al più due elementi, l'identità e (forse) uno scambio, che
    commutano.
  </proof>

  Con <math|\<sigma\>> e <math|\<tau\>> si scrive tutto <math|S<rsub|3>>:

  <\equation*>
    S<rsub|3>=<around*|{|<math-up|id>,\<sigma\>,\<sigma\><rsup|2>,\<tau\>,\<sigma\>\<tau\>,\<tau\>\<sigma\>|}>,<space|2em>\<sigma\><rsup|2>=(1<space|0.5em>3<space|0.5em>2),<space|1em>\<sigma\>\<tau\>=(1<space|0.5em>3),<space|1em>\<tau\>\<sigma\>=(2<space|0.5em>3),
  </equation*>

  sei elementi distinti, come deve essere, con
  <math|\<sigma\><rsup|3>=<math-up|id>> e
  <math|\<tau\><rsup|2>=<math-up|id>>. Geometricamente, <math|S<rsub|3>> è il
  gruppo delle simmetrie di un triangolo equilatero con i vertici numerati:
  <math|\<sigma\>> è la rotazione di <math|120<rsup|\<circ\>>>, le tre
  trasposizioni sono i ribaltamenti attorno agli assi.

  <figura|<image|../../Archive/Images/aritmetica/triangolo.pdf|49.5mm|40.5mm||>|La
  rotazione di <math|120<rsup|\<circ\>>> del triangolo realizza il ciclo
  <math|(1<space|0.5em>2<space|0.5em>3)>.>

  <section|Cicli disgiunti>

  Due cicli sono <em|disgiunti> se non hanno elementi in comune. Cicli
  disgiunti <em|commutano>: ciascuno muove elementi che l'altro lascia fermi,
  quindi applicarli in un ordine o nell'altro produce lo stesso effetto su
  ogni elemento.

  <\theorem>
    Ogni permutazione di un insieme finito è un prodotto di cicli disgiunti,
    in modo unico a meno dell'ordine dei cicli (e dei cicli di lunghezza
    <math|1>).
  </theorem>

  L'idea della dimostrazione è l'algoritmo che si usa nella pratica: si parte
  da un elemento <math|a>, si calcolano <math|\<sigma\>(a),\<sigma\><rsup|2>(a),\<ldots\>>
  finché si torna ad <math|a> (succede, perché l'insieme è finito e
  <math|\<sigma\>> è iniettiva: il primo elemento ripetuto non può che essere
  <math|a>), e si chiude il ciclo; poi si riparte da un elemento non ancora
  usato. I cicli così ottenuti sono le \Sorbite\T di <math|\<sigma\>>, e sono
  determinati da <math|\<sigma\>>.

  <\guidato|Scomporre una permutazione>
    <\equation*>
      \<sigma\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>|<cell|6>|<cell|7>|<cell|8>>|<row|<cell|4>|<cell|6>|<cell|7>|<cell|1>|<cell|8>|<cell|2>|<cell|5>|<cell|3>>>>>
    </equation*>

    Da <math|1>: <math|1\<mapsto\>4\<mapsto\>1>, ciclo
    <math|(1<space|0.5em>4)>. Da <math|2>: <math|2\<mapsto\>6\<mapsto\>2>,
    ciclo <math|(2<space|0.5em>6)>. Da <math|3>:
    <math|3\<mapsto\>7\<mapsto\>5\<mapsto\>8\<mapsto\>3>, ciclo
    <math|(3<space|0.5em>7<space|0.5em>5<space|0.5em>8)>. Tutti gli elementi
    sono stati usati:

    <\equation*>
      \<sigma\>=(1<space|0.5em>4)(2<space|0.5em>6)(3<space|0.5em>7<space|0.5em>5<space|0.5em>8).
    </equation*>
  </guidato>

  <\proposition>
    L'ordine di un ciclo di lunghezza <math|k> è <math|k>. Se
    <math|\<sigma\>=\<sigma\><rsub|1>\<cdots\>\<sigma\><rsub|t>> è prodotto
    di cicli disgiunti di lunghezze <math|k<rsub|1>,\<ldots\>,k<rsub|t>>,
    allora <math|<math-up|ord>(\<sigma\>)=<math-up|mcm>(k<rsub|1>,\<ldots\>,k<rsub|t>)>.
  </proposition>

  <\proof>
    Applicare <math|j> volte un ciclo di lunghezza <math|k> fa avanzare ogni
    suo elemento di <math|j> posti lungo il ciclo: si torna all'identità
    esattamente quando <math|k\<mid\>j>. Poiché i cicli disgiunti commutano,
    <math|\<sigma\><rsup|j>=\<sigma\><rsub|1><rsup|j>\<cdots\>\<sigma\><rsub|t><rsup|j>>,
    e i fattori muovono elementi diversi; quindi
    <math|\<sigma\><rsup|j>=<math-up|id>> se e solo se ogni
    <math|\<sigma\><rsub|i><rsup|j>=<math-up|id>>, cioè se e solo se ogni
    <math|k<rsub|i>> divide <math|j>, cioè se e solo se
    <math|<math-up|mcm>(k<rsub|1>,\<ldots\>,k<rsub|t>)\<mid\>j>.
  </proof>

  La permutazione dell'esempio ha ordine <math|<math-up|mcm>(2,2,4)=4>; la
  permutazione <math|(1<space|0.5em>2<space|0.5em>3)(4<space|0.5em>5)> ha
  ordine <math|<math-up|mcm>(3,2)=6>. Attenzione: la formula vale per cicli
  <em|disgiunti>. Il prodotto <math|(1<space|0.5em>2)(2<space|0.5em>3)=(1<space|0.5em>2<space|0.5em>3)>
  ha ordine <math|3>, non <math|2>.

  <section|Sottogruppi di <math|S<rsub|3>>>

  Le potenze di una permutazione formano un sottogruppo ciclico. Per esempio
  <math|\<langle\>(1<space|0.5em>2<space|0.5em>3)\<rangle\>=<around*|{|<math-up|id>,(1<space|0.5em>2<space|0.5em>3),(1<space|0.5em>3<space|0.5em>2)|}>>
  ha ordine <math|3>, e ogni trasposizione genera un sottogruppo di ordine
  <math|2>. I sottogruppi di <math|S<rsub|3>> sono

  <\equation*>
    <around*|{|<math-up|id>|}>,<space|1em>\<langle\>(1<space|0.5em>2)\<rangle\>,<space|1em>\<langle\>(1<space|0.5em>3)\<rangle\>,<space|1em>\<langle\>(2<space|0.5em>3)\<rangle\>,<space|1em>\<langle\>(1<space|0.5em>2<space|0.5em>3)\<rangle\>,<space|1em>S<rsub|3>.
  </equation*>

  Non ce ne sono altri: un sottogruppo che contiene due trasposizioni
  diverse, o una trasposizione e un 3-ciclo, contiene il loro prodotto e, con
  qualche conto, tutto <math|S<rsub|3>>. Gli ordini dei sottogruppi sono
  <math|1,2,3,6>, tutti divisori di <math|6>. Non è un caso, come vedremo
  subito.

  <\inbreve>
    Le permutazioni di un insieme formano un gruppo con la composizione,
    <math|S<rsub|n>>, di ordine <math|n!>, non abeliano per <math|n\<geq\>3>.
    Nel prodotto <math|\<sigma\>\<tau\>> si applica prima <math|\<tau\>>.
    Ogni permutazione si scrive come prodotto di cicli disgiunti, che
    commutano, seguendo le orbite degli elementi; l'inverso di un ciclo è il
    ciclo percorso al contrario, e l'ordine di una permutazione è il mcm
    delle lunghezze dei suoi cicli disgiunti.
  </inbreve>

  <\verifica|20.1>
    Siano <math|\<sigma\>=(1<space|0.5em>3<space|0.5em>5)(2<space|0.5em>4)> e
    <math|\<tau\>=(1<space|0.5em>2<space|0.5em>3<space|0.5em>4<space|0.5em>5)>
    in <math|S<rsub|5>>. Calcola <math|\<sigma\>\<tau\>>,
    <math|\<tau\>\<sigma\>>, <math|\<sigma\><rsup|-1>> e gli ordini di
    <math|\<sigma\>> e <math|\<tau\>>.
  </verifica>

  <\verifica|20.2>
    Qual è il massimo ordine di un elemento di <math|S<rsub|7>>?
  </verifica>

  <\verifica|20.3>
    Quanti sono i cicli di lunghezza <math|3> in <math|S<rsub|5>>? (Conta le
    liste di tre elementi distinti e dividi per il numero di modi di scrivere
    lo stesso ciclo.)
  </verifica>

  <chapter|Il teorema di Lagrange e il teorema di Eulero><label|cap-eulero>

  Nei gruppi ciclici l'ordine di ogni sottogruppo divide l'ordine del gruppo.
  In <math|S<rsub|3>>, che non è ciclico, succede lo stesso: i sottogruppi
  hanno ordine <math|1,2,3,6>. È un fatto generale, il teorema di Lagrange, e
  la sua dimostrazione è una bella applicazione delle relazioni di
  equivalenza. Applicato ai gruppi <math|(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>>
  produce il teorema di Eulero: per ogni <math|a> coprimo con <math|n>,
  <math|a<rsup|\<varphi\>(n)>\<equiv\>1<pmod|n>>. È il risultato che rende
  davvero calcolabili le potenze modulo <math|n>.

  A lezione i teoremi di Lagrange e di Eulero sono stati usati come
  strumenti; qui li dimostriamo, in modo che ogni passaggio poggi su ciò che
  abbiamo già costruito.

  <section|Le classi laterali>

  Sia <math|H> un sottogruppo di un gruppo <math|G>. Su <math|G> definiamo

  <\equation*>
    x\<sim\>y<space|1em>\<Longleftrightarrow\><space|1em>x<rsup|-1>y\<in\>H.
  </equation*>

  <\proposition>
    <math|\<sim\>> è una relazione di equivalenza, e la classe di <math|x> è
    la <em|classe laterale> <math|x*H=<around*|{|x*h:h\<in\>H|}>>. Tutte le
    classi laterali hanno <math|\|H\|> elementi.
  </proposition>

  <\proof>
    <em|Riflessiva>: <math|x<rsup|-1>x=e\<in\>H>. <em|Simmetrica>: se
    <math|x<rsup|-1>y\<in\>H>, anche il suo inverso
    <math|(x<rsup|-1>y)<rsup|-1>=y<rsup|-1>x> sta in <math|H>.
    <em|Transitiva>: se <math|x<rsup|-1>y\<in\>H> e
    <math|y<rsup|-1>z\<in\>H>, il prodotto
    <math|x<rsup|-1>y*y<rsup|-1>z=x<rsup|-1>z> sta in <math|H>. Si noti che
    ognuna delle tre proprietà usa uno degli assiomi di sottogruppo: neutro,
    inversi, prodotti.

    La classe di <math|x> è formata dagli <math|y> con
    <math|x<rsup|-1>y=h\<in\>H>, cioè <math|y=x*h>: è <math|x*H>. Infine la
    funzione <math|H\<rightarrow\>x*H>, <math|h\<mapsto\>x*h>, è suriettiva
    per definizione e iniettiva per la cancellazione
    (<math|x*h=x*h<rprime|'>\<Rightarrow\>h=h<rprime|'>>):
    <math|\|x*H\|=\|H\|>.
  </proof>

  <\immagine|Copie traslate>
    Le classi laterali sono copie di <math|H> \Sspostate\T moltiplicando per
    <math|x>. In <math|\<bbb-Z\>/12\<bbb-Z\>> con
    <math|H=\<langle\>[4]\<rangle\>=<around*|{|0,4,8|}>>, le classi sono
    <math|<around*|{|0,4,8|}>>, <math|<around*|{|1,5,9|}>>,
    <math|<around*|{|2,6,10|}>>, <math|<around*|{|3,7,11|}>>: quattro
    triangoli ruotati, che ricoprono l'orologio senza sovrapporsi. In
    <math|\<bbb-Z\>> con <math|H=n\<bbb-Z\>>, le classi laterali
    <math|a+n\<bbb-Z\>> sono esattamente le classi resto modulo <math|n>.
  </immagine>

  <section|Il teorema di Lagrange>

  <\theorem>
    <dueto|Lagrange>Se <math|G> è un gruppo finito e <math|H\<leq\>G>, allora
    <math|\|H\|> divide <math|\|G\|>.
  </theorem>

  <\proof>
    Le classi laterali sono le classi di una relazione di equivalenza, quindi
    formano una partizione di <math|G> (capitolo 12), e hanno tutte
    <math|\|H\|> elementi. Se sono <math|k>, allora <math|\|G\|=k\|H\|>.
  </proof>

  <\corollary>
    Sia <math|G> un gruppo finito e <math|g\<in\>G>. Allora
    <math|<math-up|ord>(g)> divide <math|\|G\|>, e quindi
    <math|g<rsup|\|G\|>=e>. Inoltre ogni gruppo di ordine primo è ciclico,
    generato da qualunque elemento diverso dal neutro.
  </corollary>

  <\proof>
    <math|<math-up|ord>(g)=\|\<langle\>g\<rangle\>\|> divide <math|\|G\|> per
    Lagrange; scrivendo <math|\|G\|=k\<#22C5\><math-up|ord>(g)> si ha
    <math|g<rsup|\|G\|>=(g<rsup|<math-up|ord>(g)>)<rsup|k>=e>. Se
    <math|\|G\|=p> è primo e <math|g\<neq\>e>, l'ordine di <math|g> è un
    divisore di <math|p> diverso da <math|1>, quindi è <math|p>, e
    <math|\<langle\>g\<rangle\>=G>.
  </proof>

  Ora possiamo chiudere il conto sui sottogruppi di <math|S<rsub|3>>: un
  sottogruppo ha ordine <math|1,2,3> o <math|6>. Quelli di ordine <math|2> e
  <math|3> hanno ordine primo, quindi sono ciclici, generati da un elemento
  di ordine <math|2> (una delle tre trasposizioni) o di ordine <math|3> (un
  3-ciclo, ed entrambi i 3-cicli generano lo stesso sottogruppo). Sono
  esattamente quelli elencati nel capitolo 20.

  <\attenzione|Il viceversa di Lagrange non vale in generale>
    Lagrange dice quali ordini sono <em|possibili> per un sottogruppo, non
    che esistano tutti. Nei gruppi ciclici, per il capitolo 19, esiste un
    sottogruppo per ogni divisore; in gruppi non ciclici può mancare qualche
    ordine. Analogamente, un gruppo di ordine <math|n> non contiene
    necessariamente un elemento di ordine <math|n>:
    <math|(\<bbb-Z\>/8\<bbb-Z\>)<rsup|\<times\>>> ha ordine <math|4> e nessun
    elemento di ordine <math|4>.
  </attenzione>

  <section|Il teorema di Eulero e il piccolo teorema di Fermat>

  Applichiamo il corollario al gruppo <math|G=(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>>,
  che ha <math|\<varphi\>(n)> elementi.

  <\concetto|Teorema di Eulero>
    Se <math|<math-up|MCD>(a,n)=1>, allora
    <math|a<rsup|\<varphi\>(n)>\<equiv\>1<pmod|n>>. Inoltre l'ordine
    moltiplicativo di <math|a> modulo <math|n> divide <math|\<varphi\>(n)>.
  </concetto>

  <\corollary>
    <dueto|Piccolo teorema di Fermat>Sia <math|p> primo. Se
    <math|p\<nmid\>a>, allora <math|a<rsup|p-1>\<equiv\>1<pmod|p>>. Per ogni
    intero <math|a> si ha <math|a<rsup|p>\<equiv\>a<pmod|p>>.
  </corollary>

  <\proof>
    <math|\<varphi\>(p)=p-1>. La seconda affermazione segue moltiplicando per
    <math|a> se <math|p\<nmid\>a>, ed è ovvia se <math|p\<mid\>a> (entrambi i
    membri sono <math|\<equiv\>0>).
  </proof>

  Per chi preferisce una dimostrazione che non passa da Lagrange, eccone una
  diretta e molto istruttiva.

  <\proof>
    <em|(Dimostrazione diretta del teorema di Eulero.)> Siano
    <math|r<rsub|1>,\<ldots\>,r<rsub|\<varphi\>(n)>> i rappresentanti delle
    classi invertibili modulo <math|n>. Moltiplichiamoli tutti per <math|a>:
    le classi <math|[a*r<rsub|1>],\<ldots\>,[a*r<rsub|\<varphi\>(n)>]> sono
    ancora invertibili, e sono distinte, perché
    <math|[a*r<rsub|i>]=[a*r<rsub|j>]> implica <math|[r<rsub|i>]=[r<rsub|j>]>
    cancellando <math|[a]>. Sono quindi <math|\<varphi\>(n)> classi
    invertibili distinte: le stesse di prima, in un altro ordine.
    Moltiplicandole tutte,

    <\equation*>
      <big|prod><rsub|i>(a*r<rsub|i>)\<equiv\><big|prod><rsub|i>r<rsub|i><pmod|n>,<space|2em><text|cioè><space|2em>a<rsup|\<varphi\>(n)><big|prod><rsub|i>r<rsub|i>\<equiv\><big|prod><rsub|i>r<rsub|i><pmod|n>.
    </equation*>

    Il prodotto dei <math|r<rsub|i>> è invertibile, e cancellandolo si
    ottiene <math|a<rsup|\<varphi\>(n)>\<equiv\>1>.
  </proof>

  <\guidato|Potenze grandi, conti piccoli>
    <em|<math|3<rsup|100>> modulo <math|7>.> <math|\<varphi\>(7)=6> e
    <math|100=16\<#22C5\>6+4>, quindi <math|3<rsup|100>=(3<rsup|6>)<rsup|16>\<#22C5\>3<rsup|4>\<equiv\>3<rsup|4>=81\<equiv\>4<pmod|7>>.

    <em|Le ultime due cifre di <math|7<rsup|2026>>.> Modulo <math|100>:
    <math|\<varphi\>(100)=40>, e <math|2026=50\<#22C5\>40+26>, quindi
    <math|7<rsup|2026>\<equiv\>7<rsup|26><pmod|100>>. Si può fare di meglio:
    <math|7<rsup|4>=2401\<equiv\>1<pmod|100>>, quindi
    <math|7<rsup|26>=(7<rsup|4>)<rsup|6>\<#22C5\>7<rsup|2>\<equiv\>49>. Le
    ultime due cifre sono <math|49>.

    Il teorema di Eulero dà sempre un esponente che riporta a <math|1>, ma
    non necessariamente il più piccolo: per <math|7> modulo <math|100>
    l'ordine è <math|4>, un divisore di <math|40>.
  </guidato>

  <section|Calcolare un ordine>

  L'ordine di <math|a> modulo <math|n> (per <math|a> coprimo con <math|n>) è
  il più piccolo <math|m\<gtr\>0> con <math|a<rsup|m>\<equiv\>1<pmod|n>>, e
  si indica con <math|<math-up|ord><rsub|n>(a)>. Per Eulero divide
  <math|\<varphi\>(n)>, e questo riduce enormemente la ricerca.

  <\concetto|Come si trova un ordine>
    <\enumerate>
      <item>Verificare che <math|<math-up|MCD>(a,n)=1> e calcolare
      <math|\<varphi\>(n)>.

      <item>L'ordine è un divisore di <math|\<varphi\>(n)>: provare i
      divisori in ordine crescente, oppure partire da <math|\<varphi\>(n)> ed
      escludere i divisori massimali.

      <item>Ricordare che se <math|a<rsup|m>\<equiv\>1>, l'ordine divide
      <math|m>; se <math|a<rsup|m>\<equiv\>-1>, l'ordine divide <math|2m> ma
      non <math|m>.
    </enumerate>
  </concetto>

  <\guidato|Ordini modulo 17>
    <math|\<varphi\>(17)=16>, quindi ogni ordine è uno fra <math|1,2,4,8,16>.

    Per <math|a=2>: <math|2<rsup|4>=16\<equiv\>-1<pmod|17>>, quindi
    <math|2<rsup|8>\<equiv\>1>, e l'ordine divide <math|8> ma non <math|4>: è
    <math|8>.

    Per <math|a=3>: <math|3<rsup|2>=9>, <math|3<rsup|4>=81\<equiv\>13\<equiv\>-4>,
    <math|3<rsup|8>\<equiv\>16\<equiv\>-1<pmod|17>>. L'ordine divide
    <math|16> ma non <math|8>: è <math|16>. Dunque <math|3> genera tutto
    <math|(\<bbb-Z\>/17\<bbb-Z\>)<rsup|\<times\>>>, che è ciclico.

    Per <math|a=4>: <math|4<rsup|2>=16\<equiv\>-1>, quindi
    <math|<math-up|ord><rsub|17>(4)=4>. In effetti <math|4=2<rsup|2>>, e
    <math|<math-up|ord>(2<rsup|2>)=<frac|8|<math-up|MCD>(8,2)>=4>, come
    prevede il capitolo 19.
  </guidato>

  <section|Ritorno ai decimali>

  Nel capitolo 16 abbiamo visto che il periodo di <math|<frac|1|b>>, per
  <math|b> coprimo con <math|10>, è legato al più piccolo <math|m> con
  <math|b\<mid\>10<rsup|m>-1>. Ora sappiamo come si chiama.

  <\proposition>
    Se <math|<math-up|MCD>(b,10)=1>, lo sviluppo di <math|<frac|1|b>> è
    periodico fin dalla prima cifra, e la lunghezza del suo periodo minimo è
    <math|<math-up|ord><rsub|b>(10)>, che divide <math|\<varphi\>(b)>.
  </proposition>

  <\proof>
    Se <math|10<rsup|m>\<equiv\>1<pmod|b>>, allora
    <math|<frac|1|b>=<frac|k|10<rsup|m>-1>> con
    <math|k=<frac|10<rsup|m>-1|b>\<less\>10<rsup|m>-1>, e per il lemma del
    periodo <math|<frac|1|b>> ha un periodo di <math|m> cifre a partire dalla
    virgola. Viceversa, se <math|<frac|1|b>=0<text|,><wide|c<rsub|1>\<cdots\>c<rsub|m>|\<wide-bar\>>>,
    allora <math|<frac|1|b>=<frac|C|10<rsup|m>-1>>, cioè
    <math|b*C=10<rsup|m>-1> e <math|10<rsup|m>\<equiv\>1<pmod|b>>. Le
    lunghezze possibili dei periodi sono quindi esattamente gli <math|m> con
    <math|10<rsup|m>\<equiv\>1>, e la minima è l'ordine.
  </proof>

  Per esempio <math|<math-up|ord><rsub|7>(10)=6=\<varphi\>(7)>, e infatti
  <math|<frac|1|7>> ha periodo <math|6>; <math|<math-up|ord><rsub|11>(10)=2>
  perché <math|100\<equiv\>1<pmod|11>>, e
  <math|<frac|1|11>=0<text|,><wide|09|\<wide-bar\>>>;
  <math|<math-up|ord><rsub|13>(10)=6>, un divisore proprio di
  <math|\<varphi\>(13)=12>, e <math|<frac|1|13>=0<text|,><wide|076923|\<wide-bar\>>>.

  <section|Quando il gruppo degli invertibili è ciclico>

  <\guidato|<math|(\<bbb-Z\>/91\<bbb-Z\>)<rsup|\<times\>>> non è ciclico>
    <math|91=7\<#22C5\>13> e <math|\<varphi\>(91)=72>. Sia <math|x> coprimo
    con <math|91>. Per Fermat <math|x<rsup|6>\<equiv\>1<pmod|7>>, quindi
    anche <math|x<rsup|12>\<equiv\>1<pmod|7>>; e
    <math|x<rsup|12>\<equiv\>1<pmod|13>>. Per il teorema cinese (o
    semplicemente perché <math|7> e <math|13> sono coprimi e dividono
    entrambi <math|x<rsup|12>-1>), <math|x<rsup|12>\<equiv\>1<pmod|91>>. Ogni
    elemento ha quindi ordine che divide <math|12>, e nessuno può avere
    ordine <math|72>: il gruppo non è ciclico.

    Lo stesso ragionamento si applica a ogni prodotto di due primi dispari
    distinti <math|p*q>: ogni <math|x> soddisfa
    <math|x<rsup|<math-up|mcm>(p-1,q-1)>\<equiv\>1>, e
    <math|<math-up|mcm>(p-1,q-1)\<less\>(p-1)(q-1)> perché <math|p-1> e
    <math|q-1> sono entrambi pari.
  </guidato>

  Quando, dunque, <math|(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>> è ciclico? La
  risposta completa è un teorema che a lezione è stato soltanto enunciato, e
  che quindi non si può usare in un esercizio senza dimostrarlo.

  <\remark>
    <math|(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>> è ciclico se e solo se
    <math|n> è <math|1,2,4>, una potenza di un primo dispari
    <math|p<rsup|k>>, oppure il doppio <math|2p<rsup|k>> di una tale potenza.
    In particolare, se <math|p> è primo, <math|(\<bbb-Z\>/p\<bbb-Z\>)<rsup|\<times\>>>
    è ciclico di ordine <math|p-1>: esiste sempre un elemento (una <em|radice
    primitiva>) le cui potenze danno tutte le classi non nulle, come <math|3>
    modulo <math|17>.
  </remark>

  <\inbreve>
    Dato <math|H\<leq\>G>, la relazione <math|x<rsup|-1>y\<in\>H> è di
    equivalenza e le sue classi, le classi laterali <math|x*H>, hanno tutte
    <math|\|H\|> elementi; per questo <math|\|H\|> divide <math|\|G\|>
    (Lagrange). In particolare l'ordine di ogni elemento divide l'ordine del
    gruppo. Nel gruppo <math|(\<bbb-Z\>/n\<bbb-Z\>)<rsup|\<times\>>> questo è
    il teorema di Eulero, <math|a<rsup|\<varphi\>(n)>\<equiv\>1>, e per
    <math|n=p> il piccolo teorema di Fermat. L'ordine di <math|a> modulo
    <math|n> si cerca fra i divisori di <math|\<varphi\>(n)>, e spiega la
    lunghezza dei periodi decimali.
  </inbreve>

  <\verifica|21.1>
    Calcola <math|5<rsup|1000>> modulo <math|13> e le ultime due cifre di
    <math|3<rsup|1000>>.
  </verifica>

  <\verifica|21.2>
    Trova l'ordine di <math|2> modulo <math|11> e quello di <math|10> modulo
    <math|21>. Qual è la lunghezza del periodo di <math|<frac|1|21>>?
  </verifica>

  <\verifica|21.3>
    Dimostra che, per ogni intero <math|a>, <math|a<rsup|13>-a> è divisibile
    per <math|2>, <math|3>, <math|5>, <math|7> e <math|13>, e quindi per
    <math|2730>.
  </verifica>

  <\verifica|21.4>
    Sia <math|G> un gruppo di ordine <math|10> e <math|g\<in\>G> con
    <math|g<rsup|2>\<neq\>e> e <math|g<rsup|5>\<neq\>e>. Dimostra che
    <math|G> è ciclico.
  </verifica>

  <chapter|Equazioni modulari: esponenti e polinomi><label|cap-equazioni>

  L'ultimo capitolo mette al lavoro tutto ciò che abbiamo costruito.
  Risolveremo due tipi di equazioni modulo <math|n>: quelle in cui
  l'incognita sta all'esponente, come <math|3<rsup|x>\<equiv\>61<pmod|91>>, e
  quelle polinomiali, come <math|x<rsup|2>+5x+3\<equiv\>0<pmod|11>> o
  <math|x<rsup|2>\<equiv\>6<pmod|25>>. Gli strumenti sono quelli dei capitoli
  precedenti: l'ordine di un elemento, il teorema cinese per spezzare il
  modulo, la legge di annullamento modulo un primo, e un modo per risalire da
  un primo alle sue potenze.

  <section|Le potenze sono periodiche>

  Se <math|<math-up|MCD>(a,m)=1> e <math|r=<math-up|ord><rsub|m>(a)>, le
  potenze di <math|a> modulo <math|m> si ripetono con periodo esattamente
  <math|r>: <math|a<rsup|x+r>\<equiv\>a<rsup|x>>, e
  <math|a<rsup|x>\<equiv\>a<rsup|y>> se e solo se <math|x\<equiv\>y<pmod|r>>
  (capitolo 19). L'esponente, dunque, vive modulo l'ordine.

  <figura|<image|../../Archive/Images/aritmetica/potenze.pdf|139.5mm|48.4mm||>|A
  sinistra le potenze di <math|3> modulo <math|13> tornano a <math|1> dopo
  tre passi. A destra le potenze di <math|2> modulo <math|12>, base non
  invertibile: dopo una \Scoda\T entrano nel ciclo <math|4,8> e non tornano
  mai a <math|1>.>

  La figura di destra ricorda perché l'ipotesi di invertibilità conta: se
  <math|<math-up|MCD>(a,m)\<gtr\>1> le potenze sono ancora definitivamente
  periodiche (ci sono solo <math|m> resti), ma non sono periodiche
  dall'inizio e non ritornano a <math|1>. In questo caso il ragionamento con
  l'ordine non si applica.

  <section|Equazioni con l'incognita all'esponente>

  <\theorem>
    Sia <math|<math-up|MCD>(a,m)=1> e <math|r=<math-up|ord><rsub|m>(a)>. La
    congruenza <math|a<rsup|x>\<equiv\>b<pmod|m>> ha soluzioni se e solo se
    <math|b> è congruo a una potenza di <math|a>, cioè se
    <math|[b]\<in\>\<langle\>[a]\<rangle\>>. In tal caso, se <math|x<rsub|0>>
    è una soluzione, le soluzioni sono esattamente gli
    <math|x\<equiv\>x<rsub|0><pmod|r>>.
  </theorem>

  <\proof>
    La prima affermazione è la definizione di <math|\<langle\>[a]\<rangle\>>.
    Se <math|a<rsup|x<rsub|0>>\<equiv\>b>, allora
    <math|a<rsup|x>\<equiv\>b\<Longleftrightarrow\>a<rsup|x>\<equiv\>a<rsup|x<rsub|0>>\<Longleftrightarrow\>x\<equiv\>x<rsub|0><pmod|r>>.
  </proof>

  <\guidato|<math|3<rsup|x>\<equiv\>1<pmod|13>>>
    <math|3<rsup|1>=3>, <math|3<rsup|2>=9>,
    <math|3<rsup|3>=27\<equiv\>1<pmod|13>>: l'ordine è <math|3>. Le soluzioni
    sono <math|x\<equiv\>0<pmod|3>>.

    Per vedere senza teoria che non ce ne sono altre: scrivendo <math|x=3q+r>
    con <math|r\<in\><around*|{|0,1,2|}>> si ha
    <math|3<rsup|x>=(3<rsup|3>)<rsup|q>3<rsup|r>\<equiv\>3<rsup|r>>, che vale
    <math|1,3,9> per <math|r=0,1,2>. Solo <math|r=0> funziona.
  </guidato>

  <\guidato|<math|4<rsup|x>\<equiv\>b<pmod|17>>>
    <math|4<rsup|2>=16\<equiv\>-1>, quindi <math|4<rsup|4>\<equiv\>1>:
    l'ordine è <math|4> e le potenze sono

    <\with|par-mode|center>
      <block|<tformat|<cwith|1|1|1|-1|cell-background|#efefeb>|<cwith|1|-1|1|-1|cell-halign|c>|<table|<row|<cell|<math|x>
      mod <math|4>>|<cell|0>|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|<math|4<rsup|x>>
      mod <math|17>>|<cell|<math|1>>|<cell|<math|4>>|<cell|<math|-1>>|<cell|<math|-4>>>>>>
    </with>

    La congruenza ha soluzione solo per <math|b\<equiv\>1,4,-1,-4<pmod|17>>,
    e per ciascuno di questi valori l'esponente è determinato modulo
    <math|4>: per esempio <math|4<rsup|x>\<equiv\>-1> se e solo se
    <math|x\<equiv\>2<pmod|4>>. Per <math|b=2>, invece, non ci sono
    soluzioni.
  </guidato>

  <subsection|Spezzare il modulo>

  Se il modulo è composto, calcolare le potenze modulo <math|m> può essere
  lungo. Il teorema cinese permette di lavorare con i fattori: se
  <math|m=m<rsub|1>m<rsub|2>> con <math|m<rsub|1>,m<rsub|2>> coprimi,

  <\equation*>
    a<rsup|x>\<equiv\>b<pmod|m<rsub|1>m<rsub|2>><space|1em>\<Longleftrightarrow\><space|1em>a<rsup|x>\<equiv\>b<pmod|m<rsub|1>><text|
    e >a<rsup|x>\<equiv\>b<pmod|m<rsub|2>>.
  </equation*>

  Ognuna delle due dà una condizione su <math|x> modulo un ordine; poi si
  risolve il sistema nelle <math|x>.

  <\guidato|<math|3<rsup|x>\<equiv\>61<pmod|91>>>
    <math|91=7\<#22C5\>13>. Studiamo le due congruenze separatamente.

    <em|Modulo 7.> <math|61\<equiv\>5>. Le potenze di <math|3> modulo
    <math|7> sono <math|3<rsup|0>,\<ldots\>,3<rsup|5>\<equiv\>1,3,2,6,4,5>, e
    <math|3<rsup|6>\<equiv\>1>: l'ordine è <math|6> e
    <math|3<rsup|5>\<equiv\>5>. Quindi <math|x\<equiv\>5<pmod|6>>.

    <em|Modulo 13.> <math|61\<equiv\>9=3<rsup|2>>, e l'ordine di <math|3> è
    <math|3>: <math|x\<equiv\>2<pmod|3>>.

    <em|Il sistema negli esponenti.> <math|x\<equiv\>5<pmod|6>> e
    <math|x\<equiv\>2<pmod|3>>. I moduli non sono coprimi, ma le condizioni
    sono compatibili: <math|5\<equiv\>2<pmod|3>>, cioè la seconda è
    conseguenza della prima. La soluzione è <math|x\<equiv\>5<pmod|6>>.

    Controllo: <math|3<rsup|5>=243=2\<#22C5\>91+61>.
  </guidato>

  Si noti come entri in gioco il teorema cinese generalizzato del capitolo
  15: gli ordini ottenuti dai vari fattori (qui <math|6> e <math|3>) in
  generale non sono coprimi.

  <section|Polinomi modulo un primo>

  Modulo un primo <math|p> vale la legge di annullamento del prodotto, e
  quindi si risolvono le equazioni come con i numeri reali: si fattorizza e
  si annulla un fattore alla volta.

  <\guidato|<math|x<rsup|2>\<equiv\>1<pmod|5>>>
    <math|x<rsup|2>-1=(x-1)(x+1)\<equiv\>0<pmod|5>>, quindi
    <math|x\<equiv\>1> oppure <math|x\<equiv\>-1\<equiv\>4<pmod|5>>.
  </guidato>

  Per le equazioni di secondo grado vale la formula risolutiva, purché si
  possa dividere per <math|2a>.

  <\proposition>
    Sia <math|p> un primo dispari e <math|p\<nmid\>a>. Posto
    <math|\<Delta\>=b<rsup|2>-4a*c>, la congruenza
    <math|a*x<rsup|2>+b*x+c\<equiv\>0<pmod|p>> ha soluzioni se e solo se
    <math|\<Delta\>> è un quadrato modulo <math|p>, cioè
    <math|\<Delta\>\<equiv\>\<delta\><rsup|2>> per qualche <math|\<delta\>>;
    in tal caso le soluzioni sono <math|x\<equiv\>(2a)<rsup|-1>(-b\<pm\>\<delta\>)<pmod|p>>.
  </proposition>

  <\proof>
    Poiché <math|p> è dispari e <math|p\<nmid\>a>, <math|4a> è invertibile
    modulo <math|p>, e moltiplicare per <math|4a> dà un'equazione
    equivalente: <math|4a<rsup|2>x<rsup|2>+4a*b*x+4a*c\<equiv\>0>, cioè
    <math|(2a*x+b)<rsup|2>\<equiv\>\<Delta\>>. Se
    <math|\<Delta\>\<equiv\>\<delta\><rsup|2>>, questa diventa
    <math|(2a*x+b-\<delta\>)(2a*x+b+\<delta\>)\<equiv\>0>, e per
    l'annullamento del prodotto <math|2a*x+b\<equiv\>\<pm\>\<delta\>>; si
    conclude moltiplicando per <math|(2a)<rsup|-1>>. Se <math|\<Delta\>> non
    è un quadrato, nessun <math|x> può dare
    <math|(2a*x+b)<rsup|2>\<equiv\>\<Delta\>>.
  </proof>

  Per <math|p=2> non si può dividere per <math|2>, ma basta provare le due
  classi <math|0> e <math|1>.

  <\guidato|Due equazioni quadratiche>
    <em|<math|x<rsup|2>+5x+3\<equiv\>0<pmod|11>>.>
    <math|\<Delta\>=25-12=13\<equiv\>2<pmod|11>>. I quadrati modulo <math|11>
    si calcolano su <math|0,\<pm\>1,\<ldots\>,\<pm\>5> (perché
    <math|(-y)<rsup|2>=y<rsup|2>>): <math|0,1,4,9,16\<equiv\>5,25\<equiv\>3>.
    I <em|residui quadratici> sono <math|<around*|{|0,1,3,4,5,9|}>>, e
    <math|2> non c'è: nessuna soluzione.

    <em|<math|x<rsup|2>+x+1\<equiv\>0<pmod|7>>.>
    <math|\<Delta\>=1-4=-3\<equiv\>4=2<rsup|2>>. L'inverso di <math|2> modulo
    <math|7> è <math|4>, quindi <math|x\<equiv\>4(-1\<pm\>2)>:
    <math|x\<equiv\>4> oppure <math|x\<equiv\>-12\<equiv\>2<pmod|7>>.
    Controllo: <math|16+4+1=21> e <math|4+2+1=7>, entrambi multipli di
    <math|7>.
  </guidato>

  <section|Polinomi modulo una potenza di primo>

  Modulo <math|p<rsup|e>> con <math|e\<geq\>2> la legge di annullamento cade:
  <math|2\<#22C5\>2\<equiv\>0<pmod|4>>. Quando un prodotto è divisibile per
  <math|p<rsup|e>>, le potenze di <math|p> possono distribuirsi fra i
  fattori.

  <\guidato|<math|x(x-1)\<equiv\>0> modulo <math|4> e modulo <math|100>>
    <em|Modulo 4.> Proviamo le quattro classi: <math|0\<#22C5\>(-1)=0>,
    <math|1\<#22C5\>0=0>, <math|2\<#22C5\>1=2>,
    <math|3\<#22C5\>2=6\<equiv\>2>. Le soluzioni sono
    <math|x\<equiv\>0,1<pmod|4>>. Qui la ragione è che <math|x> e <math|x-1>
    sono consecutivi, quindi non possono essere entrambi pari: tutte le
    potenze di <math|2> devono stare nello stesso fattore. Lo stesso
    argomento vale modulo ogni <math|p<rsup|e>>:
    <math|x(x-1)\<equiv\>0<pmod|p<rsup|e>>> ha esattamente le due soluzioni
    <math|x\<equiv\>0,1>.

    <em|Modulo 100.> Per il teorema cinese,
    <math|x<rsup|2>\<equiv\>x<pmod|100>> equivale a
    <math|x\<equiv\>0,1<pmod|4>> e <math|x\<equiv\>0,1<pmod|25>>: quattro
    combinazioni, quattro soluzioni. Risolvendo i sistemi si trova
    <math|x\<equiv\>0,1,25,76<pmod|100>>. Per esempio <math|76<rsup|2>=5776>,
    che termina proprio con <math|76>.
  </guidato>

  <subsection|Sollevare una soluzione da <math|p> a <math|p<rsup|2>>>

  Ogni soluzione modulo <math|p<rsup|2>> è anche soluzione modulo <math|p>.
  Conviene quindi risolvere prima modulo <math|p> e poi chiedersi quali
  soluzioni si possono \Ssollevare\T. Se <math|x<rsub|0>> risolve
  <math|f(x)\<equiv\>0<pmod|p>>, le classi modulo <math|p<rsup|2>> che si
  riducono a <math|x<rsub|0>> sono le <math|x=x<rsub|0>+p*h> con
  <math|h=0,\<ldots\>,p-1> (capitolo 18).

  Sia <math|f(x)=A*x<rsup|2>+B*x+C> e <math|f(x<rsub|0>)=p\<gamma\>>.
  Sviluppando,

  <\equation*>
    f(x<rsub|0>+p*h)=f(x<rsub|0>)+p*h(2A*x<rsub|0>+B)+A*p<rsup|2>h<rsup|2>=p\<gamma\>+p*h(2A*x<rsub|0>+B)+A*p<rsup|2>h<rsup|2>.
  </equation*>

  Chiedere che sia <math|\<equiv\>0<pmod|p<rsup|2>>> e dividere per <math|p>
  dà una congruenza <em|lineare> in <math|h>:

  <\concetto|Condizione di sollevamento>
    <math|x<rsub|0>+p*h> risolve <math|f(x)\<equiv\>0<pmod|p<rsup|2>>> se e
    solo se

    <\equation*>
      \<gamma\>+h(2A*x<rsub|0>+B)\<equiv\>0<pmod|p>,<space|2em><text|dove
      >p\<gamma\>=f(x<rsub|0>).
    </equation*>

    <\itemize>
      <item>Se <math|2A*x<rsub|0>+B\<nequiv\>0<pmod|p>>, c'è uno e un solo
      <math|h>: la soluzione si solleva in modo unico.

      <item>Se <math|2A*x<rsub|0>+B\<equiv\>0> e <math|\<gamma\>\<nequiv\>0>,
      non c'è nessun sollevamento.

      <item>Se <math|2A*x<rsub|0>+B\<equiv\>0> e <math|\<gamma\>\<equiv\>0>,
      ogni <math|h> va bene: <math|p> sollevamenti.
    </itemize>
  </concetto>

  La quantità <math|2A*x<rsub|0>+B> è la derivata di <math|f> calcolata in
  <math|x<rsub|0>>. Il procedimento si ripete per passare da <math|p<rsup|2>>
  a <math|p<rsup|3>>, e così via; una soluzione che non si solleva a
  <math|p<rsup|2>> non produce soluzioni modulo nessuna potenza più alta.

  <figura|<image|../../Archive/Images/aritmetica/sollevamento.pdf|155.0mm|52.5mm||>|Tre
  comportamenti: un sollevamento per radice, tre sollevamenti, nessuno.>

  <\guidato|I tre casi della figura>
    <em|<math|x<rsup|2>\<equiv\>6<pmod|25>>.> Modulo <math|5>:
    <math|x<rsup|2>\<equiv\>1>, quindi <math|x<rsub|0>\<equiv\>1> o
    <math|x<rsub|0>\<equiv\>4>. Qui <math|f(x)=x<rsup|2>-6> e
    <math|2A*x<rsub|0>+B=2x<rsub|0>\<nequiv\>0<pmod|5>>: ogni radice si
    solleva in modo unico. Per <math|x<rsub|0>=1>: <math|f(1)=-5>,
    <math|\<gamma\>=-1>, e <math|-1+2h\<equiv\>0<pmod|5>> dà
    <math|h\<equiv\>3>, <math|x=16>. Per <math|x<rsub|0>=4>: <math|f(4)=10>,
    <math|\<gamma\>=2>, e <math|2+8h\<equiv\>0<pmod|5>>, cioè
    <math|3h\<equiv\>3>, dà <math|h\<equiv\>1>, <math|x=9>. Controllo:
    <math|256=10\<#22C5\>25+6>, <math|81=3\<#22C5\>25+6>.

    <em|<math|x<rsup|2>\<equiv\>0<pmod|9>>.> Modulo <math|3> l'unica radice è
    <math|x<rsub|0>=0>, con derivata <math|0> e <math|\<gamma\>=0>: tutti e
    tre i sollevamenti <math|0,3,6> funzionano (infatti
    <math|(3h)<rsup|2>=9h<rsup|2>>).

    <em|<math|x<rsup|2>\<equiv\>3<pmod|9>>.> Modulo <math|3> si ha di nuovo
    <math|x<rsub|0>=0>, con derivata <math|0>, ma ora <math|f(0)=-3>,
    <math|\<gamma\>=-1\<nequiv\>0>: nessun sollevamento. Infatti un quadrato
    multiplo di <math|3> è multiplo di <math|9>.
  </guidato>

  <section|Una strategia complessiva>

  Davanti a un'equazione modulo <math|m> conviene procedere così.

  <\enumerate>
    <item><strong|Fattorizzare il modulo>,
    <math|m=p<rsub|1><rsup|e<rsub|1>>\<cdots\>p<rsub|r><rsup|e<rsub|r>>>, e
    per il teorema cinese studiare l'equazione modulo ciascuna potenza di
    primo.

    <item><strong|Equazioni esponenziali> <math|a<rsup|x>\<equiv\>b>:
    controllare che <math|a> sia invertibile, trovare l'ordine (fra i
    divisori di <math|\<varphi\>>), vedere se <math|b> è una potenza di
    <math|a>, e ricavare <math|x> modulo l'ordine.

    <item><strong|Equazioni polinomiali modulo <math|p>>: fattorizzare e
    usare l'annullamento; per le quadratiche usare il discriminante e i
    residui quadratici.

    <item><strong|Da <math|p> a <math|p<rsup|e>>>: non dare per scontato che
    una soluzione modulo <math|p> lo sia modulo <math|p<rsup|e>>; scrivere
    <math|x=x<rsub|0>+p*h>, sostituire, dividere per <math|p> e risolvere in
    <math|h>.

    <item><strong|Ricomporre> le condizioni ottenute con il teorema cinese,
    generalizzato se i moduli non sono coprimi.
  </enumerate>

  <\inbreve>
    Modulo <math|m>, le potenze di un elemento invertibile sono periodiche
    con periodo uguale all'ordine: <math|a<rsup|x>\<equiv\>b> si risolve
    trovando <math|x> modulo l'ordine, spezzando il modulo con il teorema
    cinese quando conviene. Modulo un primo si fattorizza e si annulla un
    fattore, e le quadratiche hanno soluzione esattamente quando il
    discriminante è un quadrato. Modulo una potenza di primo l'annullamento
    fallisce; le soluzioni si ottengono sollevando quelle modulo <math|p> con
    una congruenza lineare, il cui coefficiente è la derivata.
  </inbreve>

  <\verifica|22.1>
    Risolvi <math|2<rsup|x>\<equiv\>3<pmod|11>> e
    <math|5<rsup|x>\<equiv\>4<pmod|12>>. Nel secondo caso, che cosa succede e
    perché?
  </verifica>

  <\verifica|22.2>
    Risolvi <math|x<rsup|2>+3x+5\<equiv\>0<pmod|7>> e
    <math|x<rsup|2>\<equiv\>2<pmod|7>>.
  </verifica>

  <\verifica|22.3>
    Risolvi <math|x<rsup|2>\<equiv\>2<pmod|49>> sollevando le soluzioni
    modulo <math|7>.
  </verifica>

  <\verifica|22.4>
    Quante soluzioni ha <math|x<rsup|2>\<equiv\>1<pmod|105>>? (Usa il teorema
    cinese e conta.)
  </verifica>

  <appendix|Soluzioni delle verifiche><label|app-soluzioni>

  Le soluzioni sono scritte per essere lette dopo aver provato da soli.
  Quando conta, oltre al risultato è spiegata l'idea che lo rende
  raggiungibile.

  <section|Capitoli 1\<#2013\>7>

  <strong|1.1.> (a) Sì, <math|2>. (b) Sì: gli interi con
  <math|x<rsup|2>\<less\>50> sono <math|-7,\<ldots\>,7>, un insieme finito,
  con minimo <math|-7>. (c) No: sotto ogni <math|q\<gtr\>0> c'è <math|q/2>.
  (d) Sì, <math|-6>: l'insieme è limitato inferiormente.

  <strong|1.2.> Il fatto analogo è: <em|se <math|3\<mid\>n<rsup|2>> allora
  <math|3\<mid\>n>>. Infatti se <math|n=3k\<pm\>1>, allora
  <math|n<rsup|2>=9k<rsup|2>\<pm\>6k+1> lascia resto <math|1>. Supponiamo
  <math|a<rsup|2>=3b<rsup|2>> con <math|b\<geq\>1> minimo. Allora
  <math|3\<mid\>a<rsup|2>>, quindi <math|a=3c>, e
  <math|9c<rsup|2>=3b<rsup|2>> dà <math|b<rsup|2>=3c<rsup|2>>; allora
  <math|b=3d> e <math|c<rsup|2>=3d<rsup|2>> con <math|1\<leq\>d\<less\>b>,
  contro la minimalità.

  <strong|1.3.> <math|1+2+3+4=10>. Con <math|j=k-1> la somma diventa
  <math|<big|sum><rsub|j=1><rsup|4>j>: quando <math|k> va da <math|2> a
  <math|5>, <math|j> va da <math|1> a <math|4>.

  <strong|2.1.> Per <math|n=1>: <math|1=<frac|1\<#22C5\>2\<#22C5\>3|6>>.
  Passo: <math|<frac|n(n+1)(2n+1)|6>+(n+1)<rsup|2>=<frac|(n+1)(2n<rsup|2>+n+6n+6)|6>=<frac|(n+1)(n+2)(2n+3)|6>>,
  che è la formula per <math|n+1>.

  <strong|2.2.> Per <math|n=0> si ha <math|0>. Poi
  <math|(n+1)<rsup|3>-(n+1)=(n<rsup|3>-n)+3(n<rsup|2>+n)>: il primo addendo è
  multiplo di <math|3> per ipotesi induttiva, il secondo lo è ovviamente.

  <strong|2.3.> Il passo induttivo è corretto, ma manca il passo base:
  <math|P(0)> dice <math|0=1>, che è falso, e non c'è nessun valore da cui la
  catena parta.

  <strong|2.4.> <math|1=2<rsup|0>>. Sia <math|n\<gtr\>1> e supponiamo
  l'enunciato per tutti i numeri fra <math|1> e <math|n-1>. Se <math|n=2m>,
  allora <math|1\<leq\>m\<less\>n> e <math|m=2<rsup|e<rsub|1>>+\<cdots\>+2<rsup|e<rsub|k>>>
  con esponenti distinti; quindi <math|n=2<rsup|e<rsub|1>+1>+\<cdots\>+2<rsup|e<rsub|k>+1>>,
  con esponenti distinti e tutti <math|\<geq\>1>. Se <math|n=2m+1> con
  <math|m\<geq\>1>, allora <math|m\<less\>n>: raddoppiando la scrittura di
  <math|m> otteniamo una scrittura di <math|2m> con esponenti tutti
  <math|\<geq\>1>, e aggiungiamo <math|2<rsup|0>>, che non compariva.

  <strong|3.1.> Se <math|x\<in\>A\<cap\>(B\<cup\>C)>, allora <math|x\<in\>A>
  e <math|x> sta in <math|B> o in <math|C>, quindi in <math|A\<cap\>B> o in
  <math|A\<cap\>C>. Viceversa, se <math|x\<in\>A\<cap\>B>, allora
  <math|x\<in\>A> e <math|x\<in\>B\<subseteq\>B\<cup\>C>; lo stesso se
  <math|x\<in\>A\<cap\>C>.

  <strong|3.2.> Se <math|f(x<rsub|1>)=f(x<rsub|2>)>, applicando <math|g> si
  ha <math|(g\<circ\>f)(x<rsub|1>)=(g\<circ\>f)(x<rsub|2>)>, quindi
  <math|x<rsub|1>=x<rsub|2>>. Se <math|g\<circ\>f> è suriettiva, ogni
  <math|z> è <math|g(f(x))> per qualche <math|x>, dunque è immagine tramite
  <math|g> di <math|f(x)>. Esempio: <math|X=Z=<around*|{|1|}>>,
  <math|Y=<around*|{|1,2|}>>, <math|f(1)=1>, <math|g> costante:
  <math|g\<circ\>f> è l'identità di <math|<around*|{|1|}>>, ma <math|g> non è
  iniettiva.

  <strong|3.3.> Sì: i giorni possibili sono <math|366>, e
  <math|367\<gtr\>366>. Anche la seconda risposta è sì: i cassetti
  <math|<around*|{|1,2|}>,\<ldots\>,<around*|{|2n-1,2n|}>> sono <math|n>, e
  <math|n+1> numeri non possono stare in cassetti tutti diversi; due numeri
  nello stesso cassetto sono consecutivi.

  <strong|4.1.> <math|26<rsup|2>\<#22C5\>10<rsup|3>\<#22C5\>26<rsup|2>=456976000>.
  Con lettere distinte: <math|26\<#22C5\>25\<#22C5\>24\<#22C5\>23\<#22C5\>10<rsup|3>=358800000>.

  <strong|4.2.> <math|f(1)> in <math|3> modi, <math|f(2)\<neq\>f(1)> in
  <math|2>, <math|f(3)> e <math|f(4)> in <math|3> ciascuno: <math|54>.

  <strong|4.3.> Le disposizioni in fila sono <math|n!>; ogni disposizione al
  tavolo corrisponde esattamente alle <math|n> rotazioni, tutte distinte
  perché le persone sono distinte. Risultato <math|n!/n=(n-1)!>.

  <strong|5.1.> Contiamo le coppie (comitato, presidente). Prima il comitato
  e poi il presidente al suo interno: <math|<binom|n|k>\<#22C5\>k>. Prima il
  presidente fra tutti e poi gli altri <math|k-1> membri fra i restanti:
  <math|n<binom|n-1|k-1>>.

  <strong|5.2.> MATEMATICA ha <math|10> lettere: M, A, T ripetute
  <math|2,3,2> volte, più E, I, C. Gli anagrammi sono
  <math|<frac|10!|2!<space|0.2em>3!<space|0.2em>2!>=151200>. Fissata la M
  iniziale restano M, A<math|\<times\>3>, T<math|\<times\>2>, E, I, C:
  <math|<frac|9!|3!<space|0.2em>2!>=30240>.

  <strong|5.3.> Con <math|x<rprime|'>=x-2> e <math|z<rprime|'>=z-1>
  l'equazione diventa <math|x<rprime|'>+y+z<rprime|'>+w=17> in naturali:
  <math|<binom|20|3>=1140> soluzioni.

  <strong|5.4.> Ogni elemento deve stare in almeno uno dei tre insiemi,
  quindi sceglie un sottoinsieme non vuoto di <math|<around*|{|A,B,C|}>>:
  <math|2<rsup|3>-1=7> possibilità, indipendenti. Le terne sono
  <math|7<rsup|n>>.

  <figura|<image|../../Archive/Images/aritmetica/regioni.pdf|112.0mm|48.0mm||>|Le
  sette zone ammesse per ogni elemento.>

  <strong|6.1.> <math|\|E\<cup\>F\<cup\>T\|=(18+14+9)-(7+4+3)+2=29>, quindi
  <math|1> studente non studia lingue.

  <strong|6.2.> Formula: <math|3<rsup|5>-3\<#22C5\>2<rsup|5>+3\<#22C5\>1<rsup|5>=243-96+3=150>.
  A mano: un punto con tre preimmagini (<math|3> scelte del punto,
  <math|<binom|5|3>=10> scelte delle preimmagini, <math|2> modi per gli altri
  due elementi) dà <math|60>; un punto con una preimmagine e due con due
  (<math|3> scelte del punto singolo, <math|5> scelte della sua preimmagine,
  <math|<binom|4|2>=6> modi di dividere i rimanenti fra i due punti) dà
  <math|90>. Totale <math|150>.

  <strong|6.3.> Le permutazioni che fissano <math|k> elementi prefissati sono
  <math|(n-k)!>, e le scelte dei <math|k> elementi sono <math|<binom|n|k>>.
  Gli scombussolamenti sono <math|<big|sum><rsub|k=0><rsup|n>(-1)<rsup|k><binom|n|k>(n-k)!=n!<big|sum><rsub|k=0><rsup|n><frac|(-1)<rsup|k>|k!>>.
  Per <math|n=4>: <math|24-24+12-4+1=9>.

  <strong|7.1.> <math|\<lambda\><rsup|2>-5\<lambda\>+6=(\<lambda\>-2)(\<lambda\>-3)>,
  quindi <math|a<rsub|n>=x2<rsup|n>+y3<rsup|n>>; da <math|x+y=2> e
  <math|2x+3y=5> si ha <math|x=y=1>: <math|a<rsub|n>=2<rsup|n>+3<rsup|n>>.
  Per esempio <math|a<rsub|2>=13=5\<#22C5\>5-6\<#22C5\>2>.

  <strong|7.2.> Una stringa valida che finisce con <math|0> è una stringa
  valida di lunghezza <math|n-1> seguita da <math|0>; una che finisce con
  <math|1> deve finire con <math|01>, preceduto da una stringa valida di
  lunghezza <math|n-2>. Quindi <math|s<rsub|n>=s<rsub|n-1>+s<rsub|n-2>>, con
  <math|s<rsub|1>=2>, <math|s<rsub|2>=3>: <math|s<rsub|n>=F<rsub|n+2>>.

  <strong|7.3.> Per <math|n=1>: <math|F<rsub|1>=1=F<rsub|3>-1>. Passo:
  <math|(F<rsub|n+2>-1)+F<rsub|n+1>=F<rsub|n+3>-1>.

  <section|Capitoli 8\<#2013\>11>

  <strong|8.1.> <math|47=7\<#22C5\>6+5>; <math|-47=(-8)\<#22C5\>6+1>;
  <math|47=(-7)(-6)+5>; <math|-47=8\<#22C5\>(-6)+1>. Il resto è sempre in
  <math|[0,6)>.

  <strong|8.2.> Fra <math|n> e <math|n+1> uno ha resto <math|0> nella
  divisione per <math|2>. Fra <math|n,n+1,n+2>: se <math|n> ha resto
  <math|0>, <math|1>, <math|2> modulo <math|3>, sono divisibili per <math|3>
  rispettivamente <math|n>, <math|n+2>, <math|n+1>.

  <strong|8.3.> <math|d> divide la differenza <math|(n+1)-n=1>.

  <strong|9.1.> <math|252=1\<#22C5\>198+54>, <math|198=3\<#22C5\>54+36>,
  <math|54=1\<#22C5\>36+18>, <math|36=2\<#22C5\>18>: il MCD è <math|18>.
  Risalendo: <math|18=54-36=54-(198-3\<#22C5\>54)=4\<#22C5\>54-198=4(252-198)-198=4\<#22C5\>252-5\<#22C5\>198>.

  <strong|9.2.> <math|(n+1)-n=1> e <math|3(2n+1)-2(3n+1)=1>: in entrambi i
  casi una combinazione vale <math|1>.

  <strong|9.3.> <math|k*d> divide <math|k*a> e <math|k*b>, quindi divide il
  loro MCD (capitolo 9). D'altra parte <math|k*d=(u*a+v*b)k=u(k*a)+v(k*b)> è
  una combinazione di <math|k*a> e <math|k*b>, quindi è multiplo del loro
  MCD. Due interi positivi che si dividono a vicenda sono uguali.

  <strong|9.4.> <math|2<rsup|<math-up|MCD>(12,18)>-1=2<rsup|6>-1=63>.

  <strong|10.1.> <math|1260=2<rsup|2>\<#22C5\>3<rsup|2>\<#22C5\>5\<#22C5\>7>,
  quindi <math|\<tau\>=3\<#22C5\>3\<#22C5\>2\<#22C5\>2=36>. Con
  <math|1512=2<rsup|3>\<#22C5\>3<rsup|3>\<#22C5\>7>:
  <math|<math-up|MCD>=2<rsup|2>\<#22C5\>3<rsup|2>\<#22C5\>7=252> e
  <math|<math-up|mcm>=2<rsup|3>\<#22C5\>3<rsup|3>\<#22C5\>5\<#22C5\>7=7560>.
  Controllo: <math|252\<#22C5\>7560=1260\<#22C5\>1512>.

  <strong|10.2.> <math|v<rsub|5>(1000!)=200+40+8+1=249> zeri.
  <math|v<rsub|3>(30!)=10+3+1=14>.

  <strong|10.3.> <math|15> è dispari; le fattorizzazioni <math|u*v=15> con
  <math|u,v> positivi sono <math|(1,15),(3,5),(5,3),(15,1)>, che danno
  <math|(x,y)=(8,-7),(4,-1),(4,1),(8,7)>; i fattori negativi danno gli
  opposti. Soluzioni: <math|(\<pm\>8,\<pm\>7)> e <math|(\<pm\>4,\<pm\>1)>.
  Per <math|24=4\<#22C5\>6> si usano i divisori <math|d> di <math|6>:
  <math|d=1,2,3,6> danno <math|(7,-5),(5,-1),(5,1),(7,5)>, e i negativi gli
  opposti. Soluzioni: <math|(\<pm\>7,\<pm\>5)> e <math|(\<pm\>5,\<pm\>1)>.

  <strong|10.4.> <math|\<tau\>(N)=<big|prod>(\<alpha\><rsub|i>+1)> è dispari
  se e solo se ogni <math|\<alpha\><rsub|i>+1> è dispari, cioè ogni
  <math|\<alpha\><rsub|i>> è pari, cioè <math|N> è un quadrato.
  (Intuitivamente: i divisori si accoppiano come
  <math|d\<leftrightarrow\>N/d>, e solo <math|<sqrt|N>> resta senza
  compagno.)

  <strong|11.1.> Da 9.1, <math|18=4\<#22C5\>252-5\<#22C5\>198>. Poiché
  <math|36=2\<#22C5\>18>, una soluzione è <math|(8,-10)>; con
  <math|252/18=14> e <math|198/18=11>, tutte sono <math|x=8+11t>,
  <math|y=-10-14t>. La seconda equazione non ha soluzioni:
  <math|18\<nmid\>35>.

  <strong|11.2.> <math|1=8\<#22C5\>7-5\<#22C5\>11>, quindi <math|(800,-500)>
  risolve <math|7x+11y=100>, e tutte le soluzioni sono <math|x=800+11t>,
  <math|y=-500-7t>. Le condizioni <math|x\<geq\>0> e <math|y\<geq\>0> danno
  <math|t\<geq\>-72<text|,>7\<ldots\>> e <math|t\<leq\>-71<text|,>4\<ldots\>>,
  cioè <math|t=-72>: un solo modo, <math|8> penne e <math|4> quaderni.

  <strong|11.3.> Se e solo se <math|6\<mid\>c>. Per <math|c=30> l'equazione
  equivale a <math|2x+3y=5>, con soluzioni <math|(1+3t,1-2t)>;
  <math|x\<gtr\>0> e <math|y\<gtr\>0> impongono <math|t=0>: l'unica soluzione
  positiva è <math|(1,1)>.

  <section|Capitoli 12\<#2013\>16>

  <strong|12.1.> <math|x-x=0\<in\>\<bbb-Z\>>; se <math|x-y\<in\>\<bbb-Z\>>
  anche <math|y-x\<in\>\<bbb-Z\>>; somma di interi è intera. La classe di
  <math|x> è <math|x+\<bbb-Z\>=<around*|{|x+k:k\<in\>\<bbb-Z\>|}>>.
  L'intervallo <math|[0,1)> contiene esattamente un rappresentante per
  classe, la parte frazionaria.

  <strong|12.2.> È riflessiva e simmetrica, ma non transitiva:
  <math|0\<sim\>1> e <math|1\<sim\>2>, ma <math|\|0-2\|=2>. Non è di
  equivalenza.

  <strong|12.3.> Da <math|a*b<rprime|'>=b*a<rprime|'>> e
  <math|c*d<rprime|'>=d*c<rprime|'>> segue
  <math|(a*c)(b<rprime|'>d<rprime|'>)=(a*b<rprime|'>)(c*d<rprime|'>)=(b*a<rprime|'>)(d*c<rprime|'>)=(b*d)(a<rprime|'>c<rprime|'>)>,
  cioè <math|(a*c,b*d)\<sim\>(a<rprime|'>c<rprime|'>,b<rprime|'>d<rprime|'>)>.

  <strong|13.1.> <math|3<rsup|2>=9\<equiv\>1> e
  <math|5<rsup|2>=25\<equiv\>1<pmod|8>>, quindi <math|3<rsup|50>\<equiv\>1> e
  <math|5<rsup|20>\<equiv\>1>: il resto è <math|2>.

  <strong|13.2.> <math|N=100q+r>, dove <math|r> è il numero formato dalle
  ultime due cifre; poiché <math|100\<equiv\>0<pmod|4>>,
  <math|N\<equiv\>r<pmod|4>>.

  <strong|13.3.> <math|<math-up|MCD>(9,15)=3\<mid\>6>; dividendo,
  <math|3x\<equiv\>2<pmod|5>>, cioè <math|x\<equiv\>4<pmod|5>>: modulo
  <math|15>, <math|x\<equiv\>4,9,14>. Per la seconda,
  <math|7\<#22C5\>11=77\<equiv\>1<pmod|19>>, quindi
  <math|x\<equiv\>11\<#22C5\>3=33\<equiv\>14<pmod|19>>.

  <strong|13.4.> Modulo <math|3> l'equazione diventa
  <math|x<rsup|2>\<equiv\>2>, ma i quadrati modulo <math|3> sono <math|0> e
  <math|1>.

  <strong|14.1.> Gli inversi modulo <math|7> sono
  <math|1\<leftrightarrow\>1>, <math|2\<leftrightarrow\>4>,
  <math|3\<leftrightarrow\>5>, <math|6\<leftrightarrow\>6>. Nella tavola del
  prodotto delle classi <math|1,\<ldots\>,6>, ogni riga contiene ciascuna
  classe non nulla esattamente una volta (moltiplicare per un invertibile è
  una biiezione), e in particolare un solo <math|1>.

  <strong|14.2.> <math|(\<bbb-Z\>/15\<bbb-Z\>)<rsup|\<times\>>=<around*|{|1,2,4,7,8,11,13,14|}>>,
  con inversi <math|1\<leftrightarrow\>1>, <math|2\<leftrightarrow\>8>,
  <math|4\<leftrightarrow\>4>, <math|7\<leftrightarrow\>13>,
  <math|11\<leftrightarrow\>11>, <math|14\<leftrightarrow\>14>. Le classi non
  nulle restanti, <math|3,5,6,9,10,12>, sono divisori dello zero (per esempio
  <math|3\<#22C5\>5\<equiv\>0>, <math|6\<#22C5\>5\<equiv\>0>).

  <strong|14.3.> <math|x<rsup|2>-1=(x-1)(x+1)\<equiv\>0<pmod|p>>, e per la
  legge di annullamento <math|x\<equiv\>1> o <math|x\<equiv\>-1>. Modulo
  <math|8> le soluzioni sono <math|1,3,5,7>: i quadrati dei dispari sono
  tutti <math|\<equiv\>1<pmod|8>>, perché <math|(2k+1)<rsup|2>=4k(k+1)+1> e
  <math|k(k+1)> è pari.

  <strong|15.1.> <math|x=4+7k> e <math|7k\<equiv\>2<pmod|9>>; l'inverso di
  <math|7> modulo <math|9> è <math|4>, quindi <math|k\<equiv\>8<pmod|9>> e
  <math|x=60+63t>: <math|x\<equiv\>60<pmod|63>>.

  <strong|15.2.> Serve <math|<math-up|MCD>(6,15)=3\<mid\>4-a>, cioè
  <math|a\<equiv\>1<pmod|3>>. Per <math|a=1>: <math|x=1+6k>,
  <math|6k\<equiv\>3<pmod|15>>, cioè <math|2k\<equiv\>1<pmod|5>>,
  <math|k\<equiv\>3>: <math|x\<equiv\>19<pmod|30>>.

  <strong|15.3.> Il numero <math|x+1> è divisibile per <math|4>, <math|5> e
  <math|7>, quindi per <math|140>: il più piccolo <math|x> positivo è
  <math|139>.

  <strong|16.1.> <math|0<text|,><wide|27|\<wide-bar\>>=<frac|27|99>=<frac|3|11>>.
  <math|1<text|,>2<wide|45|\<wide-bar\>>=<frac|12|10>+<frac|1|10>\<#22C5\><frac|45|99>=<frac|1188+45|990>=<frac|1233|990>=<frac|137|110>>.

  <strong|16.2.> <math|40=2<rsup|3>\<#22C5\>5> non ha altri fattori:
  <math|<frac|7|40>=0<text|,>175> è finito, con <math|3> cifre dopo la
  virgola. <math|360=2<rsup|3>\<#22C5\>3<rsup|2>\<#22C5\>5>: antiperiodo di
  <math|3> cifre, e poiché <math|9\<mid\>10-1> il periodo ha una cifra.
  Infatti <math|<frac|1|360>=0<text|,>002<wide|7|\<wide-bar\>>>.

  <strong|16.3.> Le potenze di <math|10> modulo <math|13> sono
  <math|10,9,12,3,4,1>: <math|m=6>, e il periodo di
  <math|<frac|1|13>=0<text|,><wide|076923|\<wide-bar\>>> ha <math|6> cifre.

  <section|Capitoli 17\<#2013\>22>

  <strong|17.1.> (a) Sì. (b) No: la somma di due dispari è pari, e manca lo
  zero. (c) Sì: è <math|\<mu\><rsub|4>>. (d) Sì: prodotto e inversi di
  positivi sono positivi.

  <strong|17.2.> Ogni elemento è l'inverso di sé stesso. Allora
  <math|g*h=(g*h)<rsup|-1>=h<rsup|-1>g<rsup|-1>=h*g>.

  <strong|17.3.> <math|(x\<star\>y)\<star\>z=x+y+z+2=x\<star\>(y\<star\>z)>;
  la commutatività è evidente. Il neutro è <math|-1> (<math|x+(-1)+1=x>) e
  l'inverso di <math|x> è <math|-x-2> (<math|x+(-x-2)+1=-1>).

  <strong|18.1.> <math|\<varphi\>(360)=360\<#22C5\><frac|1|2>\<#22C5\><frac|2|3>\<#22C5\><frac|4|5>=96>;
  <math|\<varphi\>(1001)=\<varphi\>(7)\<varphi\>(11)\<varphi\>(13)=6\<#22C5\>10\<#22C5\>12=720>;
  <math|\<varphi\>(2<rsup|10>)=2<rsup|9>=512>.

  <strong|18.2.> <math|[7]\<mapsto\>([1],[2])>,
  <math|[11]\<mapsto\>([2],[1])>, <math|[14]\<mapsto\>([2],[4])>: la classe
  cercata è <math|[14]>.

  <strong|18.3.> Un tale <math|f> dovrebbe avere <math|f([1])=[1]>, e quindi
  <math|f([6])=f([1]+\<cdots\>+[1])=6[1]=[2]> in <math|\<bbb-Z\>/4\<bbb-Z\>>.
  Ma <math|[6]=[0]> in <math|\<bbb-Z\>/6\<bbb-Z\>> e
  <math|f([0])=[0]\<neq\>[2]>.

  <strong|19.1.> Uno per ogni divisore di <math|18>:
  <math|\<langle\>[0]\<rangle\>>, <math|\<langle\>[9]\<rangle\>> (ordine
  <math|2>), <math|\<langle\>[6]\<rangle\>> (<math|3>),
  <math|\<langle\>[3]\<rangle\>> (<math|6>), <math|\<langle\>[2]\<rangle\>>
  (<math|9>), <math|\<langle\>[1]\<rangle\>> (<math|18>). Gli elementi di
  ordine <math|6> sono <math|\<varphi\>(6)=2>: <math|[3]> e <math|[15]>.

  <strong|19.2.> Ordini: <math|1> per <math|1>, <math|3> per <math|2> e
  <math|4>, <math|6> per <math|3> e <math|5>, <math|2> per <math|6>. Il
  gruppo è ciclico, generato da <math|3> o da <math|5>, e i generatori sono
  <math|\<varphi\>(6)=2>.

  <strong|19.3.> <math|(g*h)<rsup|m*n>=g<rsup|m*n>h<rsup|m*n>=e> (il gruppo è
  abeliano). Se <math|(g*h)<rsup|k>=e>, allora <math|g<rsup|k>=h<rsup|-k>>;
  elevando alla <math|n>, <math|g<rsup|k*n>=h<rsup|-k*n>=e>, quindi
  <math|m\<mid\>k*n> e, per coprimalità, <math|m\<mid\>k>. Allo stesso modo
  <math|n\<mid\>k>, quindi <math|m*n\<mid\>k>.

  <strong|19.4.> Un gruppo ciclico è abeliano, quindi
  <math|Z(G)=G=\<langle\>g\<rangle\>>. Un gruppo abeliano non ciclico:
  <math|(\<bbb-Z\>/8\<bbb-Z\>)<rsup|\<times\>>>, oppure
  <math|\<bbb-Z\>/2\<bbb-Z\>\<times\>\<bbb-Z\>/2\<bbb-Z\>>.

  <strong|20.1.> <math|\<sigma\>\<tau\>=(1<space|0.5em>4)(2<space|0.5em>5<space|0.5em>3)>,
  <math|\<tau\>\<sigma\>=(1<space|0.5em>4<space|0.5em>3)(2<space|0.5em>5)>,
  <math|\<sigma\><rsup|-1>=(1<space|0.5em>5<space|0.5em>3)(2<space|0.5em>4)>.
  <math|<math-up|ord>(\<sigma\>)=<math-up|mcm>(3,2)=6> e
  <math|<math-up|ord>(\<tau\>)=5>.

  <strong|20.2.> L'ordine è il mcm delle lunghezze dei cicli, che sommano al
  più <math|7>: le scelte migliori sono <math|3+4> (mcm <math|12>),
  <math|2+5> (<math|10>), <math|7> (<math|7>). Il massimo è <math|12>.

  <strong|20.3.> Le liste di tre elementi distinti sono
  <math|5\<#22C5\>4\<#22C5\>3=60>, e ogni 3-ciclo si scrive in <math|3> modi
  (partendo da ciascuno dei suoi elementi): <math|20>.

  <strong|21.1.> <math|5<rsup|2>=25\<equiv\>-1<pmod|13>>, quindi
  <math|5<rsup|4>\<equiv\>1> e <math|5<rsup|1000>\<equiv\>1>. Modulo
  <math|100>, <math|\<varphi\>(100)=40\<mid\>1000>, quindi
  <math|3<rsup|1000>\<equiv\>1>: le ultime cifre sono <math|01>.

  <strong|21.2.> <math|2<rsup|5>=32\<equiv\>-1<pmod|11>>: l'ordine divide
  <math|10> ma non <math|5>, ed è <math|10>. Modulo <math|21>:
  <math|10<rsup|2>\<equiv\>16>, <math|10<rsup|3>\<equiv\>13>,
  <math|10<rsup|6>\<equiv\>169\<equiv\>1>, e
  <math|10<rsup|1>,10<rsup|2>,10<rsup|3>\<nequiv\>1>: l'ordine è <math|6>.
  Poiché <math|21> è coprimo con <math|10>, <math|<frac|1|21>> ha periodo
  <math|6>: <math|0<text|,><wide|047619|\<wide-bar\>>>.

  <strong|21.3.> Per <math|p\<in\><around*|{|2,3,5,7,13|}>> si ha
  <math|p-1\<mid\>12>. Se <math|p\<nmid\>a>,
  <math|a<rsup|12>=(a<rsup|p-1>)<rsup|12/(p-1)>\<equiv\>1>, quindi
  <math|a<rsup|13>\<equiv\>a>; se <math|p\<mid\>a> è ovvio. I cinque primi
  dividono <math|a<rsup|13>-a> e sono distinti, quindi lo divide il loro
  prodotto <math|2730>.

  <strong|21.4.> L'ordine di <math|g> divide <math|10>, quindi è <math|1,2,5>
  o <math|10>; le ipotesi escludono <math|2> e <math|5>, e <math|g\<neq\>e>
  (perché <math|e<rsup|2>=e>). Quindi <math|<math-up|ord>(g)=10> e
  <math|\<langle\>g\<rangle\>=G>.

  <strong|22.1.> Le potenze di <math|2> modulo <math|11> sono
  <math|2,4,8,5,10,9,7,3,6,1>: <math|2<rsup|8>\<equiv\>3> e l'ordine è
  <math|10>, quindi <math|x\<equiv\>8<pmod|10>>. Modulo <math|12>, invece,
  <math|5<rsup|2>\<equiv\>1> e le potenze di <math|5> sono solo <math|1> e
  <math|5>: non c'è soluzione. Del resto <math|4> non è invertibile modulo
  <math|12>, mentre ogni potenza di un invertibile lo è.

  <strong|22.2.> <math|\<Delta\>=9-20=-11\<equiv\>3<pmod|7>>, e i quadrati
  modulo <math|7> sono <math|0,1,2,4>: nessuna soluzione. Per
  <math|x<rsup|2>\<equiv\>2>: <math|3<rsup|2>=9\<equiv\>2> e
  <math|4<rsup|2>=16\<equiv\>2>, quindi <math|x\<equiv\>3,4<pmod|7>>.

  <strong|22.3.> Da 22.2, <math|x<rsub|0>=3> e <math|x<rsub|0>=4>, con
  <math|f(x)=x<rsup|2>-2> e derivata <math|2x<rsub|0>\<nequiv\>0<pmod|7>>.
  Per <math|x<rsub|0>=3>: <math|f(3)=7>, <math|\<gamma\>=1>, e
  <math|1+6h\<equiv\>0> dà <math|h\<equiv\>1>, <math|x=10>. Per
  <math|x<rsub|0>=4>: <math|f(4)=14>, <math|\<gamma\>=2>, e
  <math|2+8h\<equiv\>2+h\<equiv\>0> dà <math|h\<equiv\>5>, <math|x=39>.
  Soluzioni <math|x\<equiv\>10,39<pmod|49>>.

  <strong|22.4.> <math|105=3\<#22C5\>5\<#22C5\>7>, e modulo ciascuno di
  questi primi <math|x<rsup|2>\<equiv\>1> ha due soluzioni, <math|\<pm\>1>.
  Per il teorema cinese le soluzioni modulo <math|105> corrispondono alle
  <math|2\<#22C5\>2\<#22C5\>2=8> combinazioni.
</body>

<\initial>
  <\collection>
    <associate|font-base-size|11>
    <associate|language|italian>
    <associate|page-bot|22mm>
    <associate|page-even|24mm>
    <associate|page-height-margin|false>
    <associate|page-medium|paper>
    <associate|page-odd|24mm>
    <associate|page-right|24mm>
    <associate|page-top|21mm>
    <associate|page-type|a4>
    <associate|page-width-margin|false>
    <associate|par-first|0fn>
    <associate|par-par-sep|0.45fn>
    <associate|par-sep|0.15fn>
    <associate|par-width|162mm>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|app-soluzioni|<tuple|A|102>>
    <associate|auto-1|<tuple|?|6>>
    <associate|auto-10|<tuple|2|12>>
    <associate|auto-100|<tuple|16.1|72>>
    <associate|auto-101|<tuple|16.2|72>>
    <associate|auto-102|<tuple|16.3|73>>
    <associate|auto-103|<tuple|16.4|73>>
    <associate|auto-104|<tuple|16.5|74>>
    <associate|auto-105|<tuple|17|76>>
    <associate|auto-106|<tuple|17.1|76>>
    <associate|auto-107|<tuple|17.2|76>>
    <associate|auto-108|<tuple|17.3|77>>
    <associate|auto-109|<tuple|17.4|78>>
    <associate|auto-11|<tuple|2.1|12>>
    <associate|auto-110|<tuple|18|80>>
    <associate|auto-111|<tuple|18.1|80>>
    <associate|auto-112|<tuple|18.2|81>>
    <associate|auto-113|<tuple|18.3|81>>
    <associate|auto-114|<tuple|18.4|82>>
    <associate|auto-115|<tuple|18.5|82>>
    <associate|auto-116|<tuple|18.6|83>>
    <associate|auto-117|<tuple|19|84>>
    <associate|auto-118|<tuple|19.1|84>>
    <associate|auto-119|<tuple|19.2|84>>
    <associate|auto-12|<tuple|2.2|12>>
    <associate|auto-120|<tuple|19.3|85>>
    <associate|auto-121|<tuple|19.4|85>>
    <associate|auto-122|<tuple|19.5|86>>
    <associate|auto-123|<tuple|19.6|86>>
    <associate|auto-124|<tuple|19.7|87>>
    <associate|auto-125|<tuple|19.8|87>>
    <associate|auto-126|<tuple|20|89>>
    <associate|auto-127|<tuple|20.1|89>>
    <associate|auto-128|<tuple|20.2|89>>
    <associate|auto-129|<tuple|20.3|90>>
    <associate|auto-13|<tuple|2.3|14>>
    <associate|auto-130|<tuple|20.4|91>>
    <associate|auto-131|<tuple|20.5|91>>
    <associate|auto-132|<tuple|21|93>>
    <associate|auto-133|<tuple|21.1|93>>
    <associate|auto-134|<tuple|21.2|93>>
    <associate|auto-135|<tuple|21.3|94>>
    <associate|auto-136|<tuple|21.4|94>>
    <associate|auto-137|<tuple|21.5|95>>
    <associate|auto-138|<tuple|21.6|95>>
    <associate|auto-139|<tuple|22|97>>
    <associate|auto-14|<tuple|2.4|14>>
    <associate|auto-140|<tuple|22.1|97>>
    <associate|auto-141|<tuple|22.2|97>>
    <associate|auto-142|<tuple|22.3|98>>
    <associate|auto-143|<tuple|22.4|99>>
    <associate|auto-144|<tuple|22.5|100>>
    <associate|auto-145|<tuple|A|102>>
    <associate|auto-146|<tuple|A.1|102>>
    <associate|auto-147|<tuple|A.2|103>>
    <associate|auto-148|<tuple|A.3|104>>
    <associate|auto-149|<tuple|A.4|104>>
    <associate|auto-15|<tuple|2.5|15>>
    <associate|auto-16|<tuple|3|18>>
    <associate|auto-17|<tuple|3.1|18>>
    <associate|auto-18|<tuple|3.2|19>>
    <associate|auto-19|<tuple|3.3|20>>
    <associate|auto-2|<tuple|?|6>>
    <associate|auto-20|<tuple|3.4|20>>
    <associate|auto-21|<tuple|3.5|21>>
    <associate|auto-22|<tuple|4|22>>
    <associate|auto-23|<tuple|4.1|22>>
    <associate|auto-24|<tuple|4.2|22>>
    <associate|auto-25|<tuple|4.3|22>>
    <associate|auto-26|<tuple|4.4|23>>
    <associate|auto-27|<tuple|4.5|23>>
    <associate|auto-28|<tuple|5|25>>
    <associate|auto-29|<tuple|5.1|25>>
    <associate|auto-3|<tuple|5|6>>
    <associate|auto-30|<tuple|5.2|25>>
    <associate|auto-31|<tuple|5.3|26>>
    <associate|auto-32|<tuple|5.4|26>>
    <associate|auto-33|<tuple|5.5|28>>
    <associate|auto-34|<tuple|5.6|28>>
    <associate|auto-35|<tuple|5.7|29>>
    <associate|auto-36|<tuple|6|31>>
    <associate|auto-37|<tuple|6.1|31>>
    <associate|auto-38|<tuple|6.2|31>>
    <associate|auto-39|<tuple|6.3|33>>
    <associate|auto-4|<tuple|1|8>>
    <associate|auto-40|<tuple|7|35>>
    <associate|auto-41|<tuple|7.1|35>>
    <associate|auto-42|<tuple|7.2|35>>
    <associate|auto-43|<tuple|7.3|35>>
    <associate|auto-44|<tuple|7.4|36>>
    <associate|auto-45|<tuple|7.5|37>>
    <associate|auto-46|<tuple|8|39>>
    <associate|auto-47|<tuple|8.1|39>>
    <associate|auto-48|<tuple|8.2|39>>
    <associate|auto-49|<tuple|8.3|40>>
    <associate|auto-5|<tuple|1.1|8>>
    <associate|auto-50|<tuple|8.4|40>>
    <associate|auto-51|<tuple|9|42>>
    <associate|auto-52|<tuple|9.1|42>>
    <associate|auto-53|<tuple|9.2|42>>
    <associate|auto-54|<tuple|9.3|42>>
    <associate|auto-55|<tuple|9.4|43>>
    <associate|auto-56|<tuple|9.5|44>>
    <associate|auto-57|<tuple|9.6|44>>
    <associate|auto-58|<tuple|9.7|45>>
    <associate|auto-59|<tuple|10|47>>
    <associate|auto-6|<tuple|1.2|9>>
    <associate|auto-60|<tuple|10.1|47>>
    <associate|auto-61|<tuple|10.2|47>>
    <associate|auto-62|<tuple|10.3|48>>
    <associate|auto-63|<tuple|10.4|48>>
    <associate|auto-64|<tuple|10.5|50>>
    <associate|auto-65|<tuple|10.6|50>>
    <associate|auto-66|<tuple|10.7|51>>
    <associate|auto-67|<tuple|11|53>>
    <associate|auto-68|<tuple|11.1|53>>
    <associate|auto-69|<tuple|11.2|53>>
    <associate|auto-7|<tuple|1.3|9>>
    <associate|auto-70|<tuple|11.3|54>>
    <associate|auto-71|<tuple|11.4|54>>
    <associate|auto-72|<tuple|12|56>>
    <associate|auto-73|<tuple|12.1|56>>
    <associate|auto-74|<tuple|12.2|56>>
    <associate|auto-75|<tuple|12.3|57>>
    <associate|auto-76|<tuple|12.4|57>>
    <associate|auto-77|<tuple|12.5|58>>
    <associate|auto-78|<tuple|13|60>>
    <associate|auto-79|<tuple|13.1|60>>
    <associate|auto-8|<tuple|1.4|9>>
    <associate|auto-80|<tuple|13.2|60>>
    <associate|auto-81|<tuple|13.3|61>>
    <associate|auto-82|<tuple|13.4|62>>
    <associate|auto-83|<tuple|13.5|62>>
    <associate|auto-84|<tuple|13.6|62>>
    <associate|auto-85|<tuple|13.7|62>>
    <associate|auto-86|<tuple|13.8|63>>
    <associate|auto-87|<tuple|14|65>>
    <associate|auto-88|<tuple|14.1|65>>
    <associate|auto-89|<tuple|14.2|65>>
    <associate|auto-9|<tuple|1.5|11>>
    <associate|auto-90|<tuple|14.3|66>>
    <associate|auto-91|<tuple|14.4|66>>
    <associate|auto-92|<tuple|14.5|66>>
    <associate|auto-93|<tuple|15|69>>
    <associate|auto-94|<tuple|15.1|69>>
    <associate|auto-95|<tuple|15.2|69>>
    <associate|auto-96|<tuple|15.3|70>>
    <associate|auto-97|<tuple|15.4|70>>
    <associate|auto-98|<tuple|15.5|71>>
    <associate|auto-99|<tuple|16|72>>
    <associate|cap-binomiali|<tuple|5|25>>
    <associate|cap-ciclici|<tuple|19|84>>
    <associate|cap-cinese|<tuple|15|69>>
    <associate|cap-congruenze|<tuple|13|60>>
    <associate|cap-contare|<tuple|4|22>>
    <associate|cap-decimali|<tuple|16|72>>
    <associate|cap-diofantee|<tuple|11|53>>
    <associate|cap-divisione|<tuple|8|39>>
    <associate|cap-equazioni|<tuple|22|97>>
    <associate|cap-equivalenza|<tuple|12|56>>
    <associate|cap-eulero|<tuple|21|93>>
    <associate|cap-funzioni|<tuple|3|18>>
    <associate|cap-inclusione|<tuple|6|31>>
    <associate|cap-induzione|<tuple|2|12>>
    <associate|cap-mcd|<tuple|9|42>>
    <associate|cap-numeri|<tuple|1|8>>
    <associate|cap-omomorfismi|<tuple|18|80>>
    <associate|cap-permutazioni|<tuple|20|89>>
    <associate|cap-primi|<tuple|10|47>>
    <associate|cap-ricorrenze|<tuple|7|35>>
    <associate|cap-strutture|<tuple|17|76>>
    <associate|cap-zn|<tuple|14|65>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Prima
      di cominciare> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn><no-page-break>

      Cinque idee che reggono tutto <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      Come leggere <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Da
      dove partono i numeri> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn><no-page-break>

      1.1<space|2spc>Numeri per contare, numeri per risolvere equazioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>

      1.2<space|2spc>Operazioni e loro proprietà
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>

      1.3<space|2spc>Come sono fatti i naturali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>

      1.4<space|2spc>Il principio del minimo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>

      1.5<space|2spc>Il linguaggio delle somme
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>L'induzione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn><no-page-break>

      2.1<space|2spc>L'idea del domino <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>

      2.2<space|2spc>Primi esempi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>

      2.3<space|2spc>Perché l'induzione funziona
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>

      2.4<space|2spc>Il passo base non è una formalità
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>

      2.5<space|2spc>L'induzione forte <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Insiemi,
      funzioni e che cosa vuol dire contare>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn><no-page-break>

      3.1<space|2spc>Insiemi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>

      3.2<space|2spc>Funzioni <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>

      3.3<space|2spc>Che cosa vuol dire contare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>

      3.4<space|2spc>Il principio dei cassetti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>

      3.5<space|2spc>Insiemi finiti della stessa taglia
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Contare:
      coppie, funzioni, sottoinsiemi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22><vspace|0.5fn><no-page-break>

      4.1<space|2spc>Il principio del prodotto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>

      4.2<space|2spc>Quante funzioni ci sono
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>

      4.3<space|2spc>Funzioni iniettive e liste senza ripetizioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>

      4.4<space|2spc>Tutti i sottoinsiemi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>

      4.5<space|2spc>Quando ogni oggetto è contato più volte
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Scegliere:
      i coefficienti binomiali> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28><vspace|0.5fn><no-page-break>

      5.1<space|2spc>Sottoinsiemi con un numero fissato di elementi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>

      5.2<space|2spc>Simmetria <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>

      5.3<space|2spc>Il triangolo di Pascal
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>

      5.4<space|2spc>Il binomio di Newton
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>

      5.5<space|2spc>Parole con lettere ripetute
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>

      5.6<space|2spc>Stelle e sbarre <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>

      5.7<space|2spc>Contare due volte <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Includere
      ed escludere> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36><vspace|0.5fn><no-page-break>

      6.1<space|2spc>Le funzioni caratteristiche come calcolatrice
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>

      6.2<space|2spc>Tre insiemi, e poi tanti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>

      6.3<space|2spc>Contare le funzioni suriettive
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Ricorrenze>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40><vspace|0.5fn><no-page-break>

      7.1<space|2spc>Successioni definite per ricorrenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>

      7.2<space|2spc>Linearità <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>

      7.3<space|2spc>Cercare soluzioni esponenziali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>

      7.4<space|2spc>I numeri di Fibonacci
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>

      7.5<space|2spc>Tassellare un corridoio
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>La
      divisione con resto> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46><vspace|0.5fn><no-page-break>

      8.1<space|2spc>Approssimare con i multipli
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>

      8.2<space|2spc>Il teorema della divisione euclidea
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>

      8.3<space|2spc>Divisibilità <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>

      8.4<space|2spc>Relazioni e ordini <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Massimo
      comun divisore, Euclide e Bézout> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51><vspace|0.5fn><no-page-break>

      9.1<space|2spc>Il massimo comun divisore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>

      9.2<space|2spc>Il passo di Euclide <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>

      9.3<space|2spc>L'algoritmo di Euclide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>

      9.4<space|2spc>L'identità di Bézout
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>

      9.5<space|2spc>Un secondo sguardo: il più piccolo elemento positivo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>

      9.6<space|2spc>Le conseguenze di Bézout
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>

      9.7<space|2spc>Euclide con le potenze
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>I
      numeri primi e la fattorizzazione unica>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59><vspace|0.5fn><no-page-break>

      10.1<space|2spc>Primi e composti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>

      10.2<space|2spc>Esistenza della fattorizzazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>

      10.3<space|2spc>Unicità della fattorizzazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>

      10.4<space|2spc>La fattorizzazione come carta d'identità
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>

      10.5<space|2spc>Terne con prodotto fissato
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>

      10.6<space|2spc>Quanti fattori <with|mode|<quote|math>|p> ci sono in
      <with|mode|<quote|math>|n!> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>

      10.7<space|2spc>Differenze di quadrati
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Equazioni
      negli interi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-67><vspace|0.5fn><no-page-break>

      11.1<space|2spc>Il problema e la sua immagine
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>

      11.2<space|2spc>Quando ci sono soluzioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>

      11.3<space|2spc>Tutte le soluzioni <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70>

      11.4<space|2spc>La ricetta, e un esempio completo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Relazioni
      di equivalenza e quozienti> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-72><vspace|0.5fn><no-page-break>

      12.1<space|2spc>Quando cose diverse sono \Sla stessa\T
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-73>

      12.2<space|2spc>Classi di equivalenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-74>

      12.3<space|2spc>L'insieme quoziente
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-75>

      12.4<space|2spc>I razionali come quoziente
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-76>

      12.5<space|2spc>Contare le classi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-77>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|13<space|2spc>Congruenze>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-78><vspace|0.5fn><no-page-break>

      13.1<space|2spc>L'aritmetica dell'orologio
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-79>

      13.2<space|2spc>Le classi resto <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-80>

      13.3<space|2spc>Le congruenze rispettano somma e prodotto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-81>

      13.4<space|2spc>Criteri di divisibilità
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-82>

      13.5<space|2spc>Quadrati modulo 4 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-83>

      13.6<space|2spc>Cancellare con cautela
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-84>

      13.7<space|2spc>Congruenze lineari <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-85>

      13.8<space|2spc>L'inverso modulo <with|mode|<quote|math>|n>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-86>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|14<space|2spc>Fare
      i conti con le classi: <with|mode|<quote|math>|\<bbb-Z\>/n\<bbb-Z\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-87><vspace|0.5fn><no-page-break>

      14.1<space|2spc>Operazioni sulle classi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-88>

      14.2<space|2spc>Le proprietà si ereditano
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-89>

      14.3<space|2spc>Le tavole <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-90>

      14.4<space|2spc>Quali classi sono invertibili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-91>

      14.5<space|2spc>Divisori dello zero e modulo primo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-92>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|15<space|2spc>Sistemi
      di congruenze: il teorema cinese del resto>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-93><vspace|0.5fn><no-page-break>

      15.1<space|2spc>Due condizioni insieme
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-94>

      15.2<space|2spc>Il metodo di sostituzione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-95>

      15.3<space|2spc>Il teorema per due moduli coprimi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-96>

      15.4<space|2spc>Quando i moduli non sono coprimi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-97>

      15.5<space|2spc>Molti moduli <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-98>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|16<space|2spc>Quando
      una frazione si ripete: gli sviluppi decimali>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-99><vspace|0.5fn><no-page-break>

      16.1<space|2spc>Sviluppi decimali <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-100>

      16.2<space|2spc>Perché le cifre di una frazione si ripetono
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-101>

      16.3<space|2spc>Dal periodo alla frazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-102>

      16.4<space|2spc>Ogni denominatore ha un multiplo adatto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-103>

      16.5<space|2spc>Ogni frazione è periodica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-104>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|17<space|2spc>Gruppi,
      anelli, campi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-105><vspace|0.5fn><no-page-break>

      17.1<space|2spc>Operazioni, notazioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-106>

      17.2<space|2spc>Gruppi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-107>

      17.3<space|2spc>Le prime conseguenze degli assiomi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-108>

      17.4<space|2spc>Anelli e campi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-109>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|18<space|2spc>Omomorfismi:
      il teorema cinese come isomorfismo>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-110><vspace|0.5fn><no-page-break>

      18.1<space|2spc>Funzioni che rispettano le operazioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-111>

      18.2<space|2spc>Prodotti diretti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-112>

      18.3<space|2spc>La mappa cinese <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-113>

      18.4<space|2spc>Gli invertibili <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-114>

      18.5<space|2spc>La funzione di Eulero
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-115>

      18.6<space|2spc>Ridurre a un modulo più piccolo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-116>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|19<space|2spc>Sottogruppi
      e gruppi ciclici> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-117><vspace|0.5fn><no-page-break>

      19.1<space|2spc>Sottogruppi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-118>

      19.2<space|2spc>I sottogruppi di <with|mode|<quote|math>|\<bbb-Z\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-119>

      19.3<space|2spc>Il centro di un gruppo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-120>

      19.4<space|2spc>Il sottogruppo generato da un elemento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-121>

      19.5<space|2spc>L'ordine di un elemento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-122>

      19.6<space|2spc>L'ordine di una potenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-123>

      19.7<space|2spc>I sottogruppi di un gruppo ciclico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-124>

      19.8<space|2spc>Gruppi che non sono ciclici
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-125>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|20<space|2spc>Permutazioni>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-126><vspace|0.5fn><no-page-break>

      20.1<space|2spc>Il gruppo simmetrico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-127>

      20.2<space|2spc>Due notazioni <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-128>

      20.3<space|2spc>Comporre: l'ordine conta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-129>

      20.4<space|2spc>Cicli disgiunti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-130>

      20.5<space|2spc>Sottogruppi di <with|mode|<quote|math>|S<rsub|3>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-131>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|21<space|2spc>Il
      teorema di Lagrange e il teorema di Eulero>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-132><vspace|0.5fn><no-page-break>

      21.1<space|2spc>Le classi laterali <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-133>

      21.2<space|2spc>Il teorema di Lagrange
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-134>

      21.3<space|2spc>Il teorema di Eulero e il piccolo teorema di Fermat
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-135>

      21.4<space|2spc>Calcolare un ordine
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-136>

      21.5<space|2spc>Ritorno ai decimali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-137>

      21.6<space|2spc>Quando il gruppo degli invertibili è ciclico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-138>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|22<space|2spc>Equazioni
      modulari: esponenti e polinomi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-139><vspace|0.5fn><no-page-break>

      22.1<space|2spc>Le potenze sono periodiche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-140>

      22.2<space|2spc>Equazioni con l'incognita all'esponente
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-141>

      22.3<space|2spc>Polinomi modulo un primo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-142>

      22.4<space|2spc>Polinomi modulo una potenza di primo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-143>

      22.5<space|2spc>Una strategia complessiva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-144>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendice
      A<space|2spc>Soluzioni delle verifiche>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-145><vspace|0.5fn><no-page-break>

      A.1<space|2spc>Capitoli 1\<#2013\>7
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-146>

      A.2<space|2spc>Capitoli 8\<#2013\>11
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-147>

      A.3<space|2spc>Capitoli 12\<#2013\>16
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-148>

      A.4<space|2spc>Capitoli 17\<#2013\>22
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-149>
    </associate>
  </collection>
</auxiliary>