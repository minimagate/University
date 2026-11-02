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
    <vspace*|6.7cm>

    <with|font-size|3.6|Analisi 1>

    <vspace|1.4fn>

    <with|font-shape|small-caps|font-size|1.5|Spark>

    <vspace|1.4fn>

    <with|font-shape|small-caps|font-size|1.15|settembre e ottobre 2026>
  </with>

  <chapter*|Dalle domande ai limiti, dai limiti agli sviluppi>

  Una successione può avvicinarsi sempre di più a un numero senza mai
  raggiungerlo. Un grafico curvo può assomigliare a una retta quando lo
  osserviamo vicino a un punto. L'analisi rende precise queste due idee:
  avvicinamento e approssimazione. In questo volume impareremo a usarle e a
  giustificare quello che un disegno può suggerire.

  Il punto di partenza sono le operazioni con numeri, frazioni ed equazioni
  elementari. Le nozioni universitarie vengono introdotte nel testo.

  Prima impariamo a leggere un enunciato e a riconoscere dominio, immagine e
  inversa di una funzione. L'induzione ci insegna a controllare affermazioni
  su tutti i naturali. La completezza dei reali ci darà poi uno strumento per
  dimostrare l'esistenza di numeri che non sappiamo ancora calcolare.

  I limiti sono il centro del percorso. Cominciamo dalle successioni, nelle
  quali la variabile è un indice intero; passiamo alle funzioni, nelle quali
  la variabile si muove lungo la retta.

  Le definizioni con <math|\<varepsilon\>> e <math|\<delta\>> traducono la
  parola \Svicino\T in richieste precise. Confronti, monotonia e limiti
  notevoli forniscono strumenti per rispondere a quelle richieste.

  Nella parte finale una domanda cambia il modo di calcolare: <em|quanto è
  piccolo l'errore?> I simboli di Landau permettono di conservarne l'ordine.
  La derivata offre un'approssimazione lineare; Taylor la estende a polinomi
  di grado più alto. Gli ultimi esempi insegnano a scegliere quanti termini
  servono quando alcuni si cancellano.

  Ogni capitolo comincia con \SIn breve\T: poche frasi per capire la domanda,
  il punto di partenza e il passo che faremo. I titoli dei capitoli e delle
  sezioni nominano i concetti fondamentali. I riquadri \SConcetto chiave\T
  aiutano a ritrovarne le definizioni. Le dimostrazioni spiegano le scelte
  prima di mettere in fila i passaggi.

  Per gli esercizi proposti trovi soluzioni ragionate nell'ultima parte:
  prova prima a scegliere una strada, poi confrontala con la soluzione.

  Le parti \SPer proseguire\T raccolgono varianti secondarie. Il percorso
  conserva gli argomenti principali del periodo e sceglie gli esempi in modo
  che ciascuno insegni un passaggio utile. Non occorre memorizzare ogni
  conto: occorre capire quali ipotesi rendono valido un passaggio.

  Il volume 1 rielabora le fonti disponibili dal <strong|23 settembre al 31
  ottobre 2026>; l'ultima lezione presente è del 29 ottobre. Settembre è
  incluso.

  Le spiegazioni aggiuntive, le figure e gli esercizi di consolidamento sono
  integrazioni didattiche. La corrispondenza con le fonti e le correzioni
  matematiche sono documentate nei file che accompagnano il libro.

  <strong|Convenzioni.> Scriviamo \<bbb-N\> per i naturali comprendendo lo
  zero; quando compaiono 1/n o n!, indichiamo gli indici ammessi.

  Tutte le funzioni sono reali salvo avviso. Gli angoli si misurano in
  radianti. \Slog\T indica il logaritmo naturale. Il simbolo \<infty\>
  descrive un comportamento, non un numero reale con cui eseguire liberamente
  le operazioni.

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Dalle domande
    ai limiti, dai limiti agli sviluppi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn><no-page-break>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Logica,
    quantificatori e insiemi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn><no-page-break>

    1.1<space|2spc>Proposizioni e quantificatori: chi scegliamo prima?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>

    1.2<space|2spc>Negazione, implicazione e dimostrazione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>

    1.3<space|2spc>Insiemi, inclusione e operazioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Funzioni,
    composizione e inverse> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn><no-page-break>

    2.1<space|2spc>Una funzione comprende anche partenza e arrivo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>

    2.2<space|2spc>Iniettività, suriettività e biettività
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>

    2.3<space|2spc>L'inversa e il motivo delle due condizioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>

    2.4<space|2spc>Composizione: prima la funzione a destra
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>

    2.5<space|2spc>Immagine e controimmagine di insiemi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>Induzione
    e disuguaglianza di Bernoulli> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn><no-page-break>

    3.1<space|2spc>Base e passo: come raggiungere tutti i naturali
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>

    3.2<space|2spc>Una prova completa: la somma dei quadrati
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14>

    3.3<space|2spc>Bernoulli: controllare un prodotto con una retta
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15>

    3.4<space|2spc>Quando conviene rafforzare l'enunciato
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc>Numeri
    reali, completezza e supremi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17><vspace|0.5fn><no-page-break>

    4.1<space|2spc>Campo ordinato: calcoli e confronti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-18>

    4.2<space|2spc>La completezza: una proprietà che manca ai razionali
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-19>

    4.3<space|2spc>Maggioranti e massimo: una barriera può restare fuori
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-20>

    4.4<space|2spc>Perché il supremo esiste e come riconoscerlo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-21>

    4.5<space|2spc>La proprietà archimedea e il ponte verso i limiti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-22>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc>Funzioni
    elementari e lettura dei grafici> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-23><vspace|0.5fn><no-page-break>

    5.1<space|2spc>Simmetrie, periodicità e monotonia
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-24>

    5.2<space|2spc>Potenze, radici e completezza
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-25>

    5.3<space|2spc>Valore assoluto e trasformazioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-26>

    5.4<space|2spc>Equazioni, disequazioni, immagine e controimmagine
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-27>

    5.5<space|2spc>Esponenziale e logaritmo: un ponte per ottobre
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-28>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6<space|2spc>Trigonometria
    e funzioni inverse> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-29><vspace|0.5fn><no-page-break>

    6.1<space|2spc>Radianti, circonferenza, seno e coseno
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-30>

    6.2<space|2spc>Simmetrie, periodi e grafici
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-31>

    6.3<space|2spc>Arcoseno, arcocoseno e arcotangente
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-32>

    6.4<space|2spc>Identità: il segno e l'intervallo vanno controllati
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-33>

    6.5<space|2spc>Composizioni periodiche: un esempio completo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-34>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7<space|2spc>Successioni
    e definizione di limite> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-35><vspace|0.5fn><no-page-break>

    7.1<space|2spc>Successioni, definitivamente e frequentemente
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-36>

    7.2<space|2spc>Limite finito: controllare una distanza
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-37>

    7.3<space|2spc>Limiti infiniti e unicità
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-38>

    7.4<space|2spc>Limitatezza, segno e confronto
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-39>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8<space|2spc>Completezza,
    successioni monotone e numero di Nepero>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-40><vspace|0.5fn><no-page-break>

    8.1<space|2spc>Il teorema delle successioni monotone
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-41>

    8.2<space|2spc>Il numero di Nepero: costruire un nuovo limite
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-42>

    8.3<space|2spc>Algebra dei limiti: somma, prodotto e reciproco
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-43>

    8.4<space|2spc>Limiti infiniti e forme indeterminate
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-44>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|9<space|2spc>Radici,
    rapporti e gerarchia degli infiniti> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-45><vspace|0.5fn><no-page-break>

    9.1<space|2spc>Potenze e radici senza circolarità
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-46>

    9.2<space|2spc>Criteri della radice e del rapporto
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-47>

    9.3<space|2spc>Dal rapporto alla radice
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-48>

    9.4<space|2spc>La gerarchia degli infiniti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-49>

    9.5<space|2spc>Cancellazioni e somme con molti termini
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-50>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|10<space|2spc>Limiti
    di funzioni, continuità e limiti notevoli>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-51><vspace|0.5fn><no-page-break>

    10.1<space|2spc>Punti di accumulazione e definizione di limite
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-52>

    10.2<space|2spc>Continuità e composizione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-53>

    10.3<space|2spc>Il limite del seno e i limiti notevoli trigonometrici
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-54>

    10.4<space|2spc>Dal numero e ai limiti di logaritmo ed esponenziale
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-55>

    10.5<space|2spc>Usare un limite notevole: argomento, dominio e scala
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-56>

    10.6<space|2spc>Sottosuccessioni e limiti che non esistono
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-57>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|11<space|2spc>Simboli
    di Landau ed equivalenze asintotiche>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-58><vspace|0.5fn><no-page-break>

    11.1<space|2spc>O piccolo: misurare un errore rispetto a una scala
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-59>

    11.2<space|2spc>Equivalenza asintotica e O grande
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-60>

    11.3<space|2spc>Calcolare con i resti e comporre
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-61>

    11.4<space|2spc>Dai limiti notevoli ai primi sviluppi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-62>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|12<space|2spc>Derivate
    e differenziabilità> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-63><vspace|0.5fn><no-page-break>

    12.1<space|2spc>Rapporto incrementale e retta tangente
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-64>

    12.2<space|2spc>Differenziale: la stessa informazione come sviluppo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-65>

    12.3<space|2spc>Derivate delle funzioni elementari
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-66>

    12.4<space|2spc>Somme, prodotti e quozienti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-67>

    12.5<space|2spc>Derivata della funzione composta
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-68>

    12.6<space|2spc>Derivata dell'inversa e potenze variabili
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-69>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|13<space|2spc>De
    L'Hôpital e Taylor\<#2013\>Peano> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-70><vspace|0.5fn><no-page-break>

    13.1<space|2spc>Il teorema di De L'Hôpital e le sue ipotesi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-71>

    13.2<space|2spc>Un'applicazione e una dipendenza da rispettare
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-72>

    13.3<space|2spc>Polinomio di Taylor e resto di Peano
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-73>

    13.4<space|2spc>Sviluppi elementari e significato dei coefficienti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-74>

    13.5<space|2spc>Parità e precisione del resto
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-75>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|14<space|2spc>Taylor
    e funzioni iperboliche> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-76><vspace|0.5fn><no-page-break>

    14.1<space|2spc>Cambiare centro: lavorare con l'incremento
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-77>

    14.2<space|2spc>Somme e prodotti: quali termini conservare
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-78>

    14.3<space|2spc>Composizione: argomento e precisione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-79>

    14.4<space|2spc>Parte principale e ordine di infinitesimo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-80>

    14.5<space|2spc>Reciproci e potenze variabili
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-81>

    14.6<space|2spc>Funzioni iperboliche: una nuova lettura dell'esponenziale
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-82>

    14.7<space|2spc>Scegliere l'ordine: un limite completo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-83>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendice
    A<space|2spc>Soluzioni ragionate> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-84><vspace|0.5fn><no-page-break>
  </table-of-contents>

  <chapter|Logica, quantificatori e insiemi>

  <\inbreve>
    Come distinguiamo \Sa ciascuno piace una birra\T da \Sa tutti piace la
    stessa birra\T? Partiamo da frasi comuni per imparare a leggere
    quantificatori, negazioni e implicazioni. Introduciamo poi gli insiemi e
    le loro operazioni.
  </inbreve>

  <section|Proposizioni e quantificatori: chi scegliamo prima?>

  Una <strong|proposizione> è una frase che può essere vera o falsa. Per
  esempio, <math|7\<geq\>5> è vera.

  Un <strong|predicato> dipende invece da una o più variabili. Per esempio
  <math|P(x):x\<geq\>3> diventa vero con <math|x=5> e falso con <math|x=1>.
  Va anche dichiarato dove varia <math|x>: qui nei reali <math|\<bbb-R\>>, i
  numeri della retta.

  Il simbolo <math|\<forall\>> significa \Sper ogni\T; <math|\<exists\>>
  significa \Sesiste almeno un\T. La frase <math|\<forall\>x\<in\>\<bbb-R\>,
  x\<geq\>3> è falsa: <math|x=0> è un controesempio. La frase
  <math|\<exists\>x\<in\>\<bbb-R\>, x\<geq\>3> è vera: basta trovare un
  esempio, come <math|x=3>.

  Le variabili ancora da scegliere si chiamano <strong|variabili libere>.
  Quando le fissiamo tutte, oppure le leghiamo a quantificatori, otteniamo
  una proposizione.

  Indichiamo con <math|P(S,B)> la frase \Sallo studente <math|S> piace la
  birra <math|B>\T. Confrontiamo

  <\equation*>
    \<forall\>S\<exists\>B, P(S,B),<space|2em>\<exists\>B\<forall\>S, P(S,B).
  </equation*>

  Nella prima scegliamo uno studente, poi possiamo trovare una birra adatta a
  lui. Nella seconda dobbiamo scegliere subito una birra che vada bene per
  tutti. Se tre studenti apprezzano soltanto tre birre diverse, la prima
  frase è vera e la seconda falsa.

  <figura|<image|assets/quantificatori.pdf|138.0mm|46.0mm||>|A sinistra la
  birra può dipendere dallo studente; a destra deve esserci una stessa birra
  gradita a tutti.>

  <math|\<forall\>S\<forall\>B> dice che a ogni studente piacciono tutte le
  birre. <math|\<exists\>S\<exists\>B> chiede soltanto una coppia
  studente\<#2013\>birra favorevole.

  La frase <math|\<exists\>S\<forall\>B> cerca uno studente a cui piacciano
  tutte le birre; <math|\<forall\>B\<exists\>S> permette invece di cambiare
  studente per ciascuna birra.

  Quantificatori tutti universali si possono scambiare fra loro; lo stesso
  vale per quelli tutti esistenziali. Quando i tipi sono diversi, l'ordine
  può cambiare il significato.

  <section|Negazione, implicazione e dimostrazione>

  Scriviamo <math|\<neg\>P> per \Snon <math|P>\T, <math|P\<wedge\>Q> per
  \S<math|P> e <math|Q>\T e <math|P\<vee\>Q> per \S<math|P> oppure
  <math|Q>\T. L'oppure è inclusivo: basta che almeno una frase sia vera, e
  possono esserlo entrambe.

  Negare \Ssono vere entrambe\T significa che almeno una è falsa; negare
  \Salmeno una è vera\T significa che sono false entrambe. Sono le leggi di
  De Morgan:

  <\equation*>
    \<neg\>(P\<wedge\>Q)\<Leftrightarrow\>(\<neg\>P\<vee\>\<neg\>Q),<space|2em>\<neg\>(P\<vee\>Q)\<Leftrightarrow\>(\<neg\>P\<wedge\>\<neg\>Q).
  </equation*>

  <\concetto|Negazione dei quantificatori>
    Smentire \Stutti\T richiede un solo caso contrario; smentire \Sesiste\T
    richiede che ogni caso fallisca:

    <\equation*>
      \<neg\>(\<forall\>x,P(x))\<Leftrightarrow\>\<exists\>x,\<neg\>P(x),<space|1em>\<neg\>(\<exists\>x,P(x))\<Leftrightarrow\>\<forall\>x,\<neg\>P(x).
    </equation*>
  </concetto>

  Perciò la negazione di \Sogni studente apprezza almeno una birra\T è
  \Sesiste uno studente che non ne apprezza nessuna\T:
  <math|\<exists\>S\<forall\>B,\<neg\>P(S,B)>. I quantificatori si negano uno
  dopo l'altro, conservandone l'ordine. La negazione non richiede che tutti
  gli studenti rifiutino tutte le birre.

  L'<strong|implicazione> <math|P\<Rightarrow\>Q> significa \Sse <math|P>,
  allora <math|Q>\T. È falsa soltanto quando <math|P> è vera e <math|Q> è
  falsa. Se <math|P> è falsa, l'implicazione è vera qualunque sia <math|Q>.

  Quindi <math|P\<Rightarrow\>Q> equivale a <math|\<neg\>P\<vee\>Q>; la sua
  negazione è <math|P\<wedge\>\<neg\>Q>.

  In \Sse un intero è multiplo di 4, è pari\T, essere multiplo di 4 è una
  condizione <strong|sufficiente> per essere pari; essere pari è una
  condizione <strong|necessaria> per essere multiplo di 4. Il viceversa
  fallisce: 6 è pari ma non multiplo di 4. Scrivere
  <math|P\<Leftrightarrow\>Q>, \Sse e solo se\T, richiede invece entrambe le
  implicazioni.

  La <strong|contrapposizione> sostituisce <math|P\<Rightarrow\>Q> con
  l'equivalente <math|\<neg\>Q\<Rightarrow\>\<neg\>P>. Nel nostro esempio: un
  intero dispari non può essere multiplo di 4.

  Una prova <strong|per assurdo> assume le ipotesi e la negazione della tesi,
  poi ne ricava una contraddizione.

  <section|Insiemi, inclusione e operazioni>

  Un insieme raccoglie elementi. <math|A={2,3}> contiene 2 e 3;
  <math|2\<in\>A> indica appartenenza. L'ordine e le ripetizioni non cambiano
  l'insieme: <math|{2,3}={3,2}={2,2,3}>.

  Possiamo descrivere un insieme anche con una proprietà:
  <math|{m\<in\>\<bbb-Z\>:\<exists\>k\<in\>\<bbb-Z\>,m=k<rsup|2>}> raccoglie
  i quadrati degli interi. La scrittura più breve
  <math|{k<rsup|2>:k\<in\>\<bbb-Z\>}> elenca i risultati facendo variare
  <math|k>.

  L'<strong|inclusione> <math|A\<subseteq\>B> dice che ogni elemento di
  <math|A> appartiene a <math|B>. Non va confusa con <math|x\<in\>A>, che
  riguarda un singolo elemento. Scriviamo <math|A\<subsetneq\>B> quando vale
  anche <math|A\<neq\>B>. Per dimostrare <math|A=B> possiamo verificare le
  due inclusioni.

  L'intersezione <math|A\<cap\>B> raccoglie gli elementi comuni; l'unione
  <math|A\<cup\>B> quelli di almeno uno dei due insiemi; la differenza
  <math|A\<setminus\>B> quelli di <math|A> che non stanno in <math|B>. Con
  <math|A={1,2}> e <math|B={2,3}>, per esempio, abbiamo

  <\equation*>
    A\<cap\>B={2},<space|1em>A\<cup\>B={1,2,3},<space|1em>A\<setminus\>B={1}.
  </equation*>

  L'ordine nella differenza conta: <math|B\<setminus\>A={3}>.

  Il <strong|prodotto cartesiano> <math|A\<times\>B> contiene le coppie
  ordinate <math|(a,b)> con <math|a\<in\>A> e <math|b\<in\>B>. In generale
  <math|(a,b)\<neq\>(b,a)>: prima e seconda coordinata hanno ruoli diversi.

  L'<strong|insieme delle parti> <math|\<cal-P\>(A)> contiene tutti i
  sottoinsiemi di <math|A>. Se <math|A={1,2}>, allora
  <math|\<cal-P\>(A)={\<varnothing\>,{1},{2},{1,2}}>. Per ciascuno dei due
  elementi possiamo decidere se inserirlo: quattro scelte complessive. Con
  <math|n> elementi otteniamo <math|2<rsup|n>> sottoinsiemi.

  L'insieme vuoto <math|\<varnothing\>> non ha elementi ed è contenuto in
  ogni insieme: non esiste un suo elemento che violi l'inclusione.

  Invece <math|{\<varnothing\>}> ha un elemento, proprio il vuoto. In
  particolare <math|\<cal-P\>(\<varnothing\>)={\<varnothing\>}>.

  <\verifica|1>
    <strong|1.> Nega \Sper ogni anno esiste uno studente che fallisce tutti
    gli esami\T. Scrivi prima il predicato con tre variabili.

    <strong|2.> Elenca <math|\<cal-P\>({a,b})>. Stabilisci poi quali frasi
    sono vere: <math|\<varnothing\>\<in\>{\<varnothing\>}>,
    <math|\<varnothing\>\<subseteq\>{\<varnothing\>}>,
    <math|{\<varnothing\>}\<subseteq\>\<varnothing\>>.
  </verifica>

  <chapter|Funzioni, composizione e inverse>

  <\inbreve>
    Come risaliamo dall'uscita di una funzione alla sua entrata? Il quadrato
    di 2 e di \<#2212\>2 è 4, mentre nessun quadrato reale vale \<#2212\>1.
    Partendo da questi due ostacoli, capiremo quando esiste una funzione
    inversa e come si combinano le funzioni.
  </inbreve>

  <section|Una funzione comprende anche partenza e arrivo>

  Una funzione <math|f:A\<rightarrow\>B> assegna a ogni elemento
  <math|a\<in\>A> uno e un solo elemento <math|f(a)\<in\>B>. Chiamiamo
  <math|A> insieme di partenza, o dominio, e <math|B> insieme di arrivo. La
  formula da sola non descrive tutta la funzione: dobbiamo dichiarare anche
  dove partiamo e dove arriviamo.

  Nel disegno a frecce, da ogni elemento di <math|A> deve partire esattamente
  una freccia. Può accadere che due frecce arrivino nello stesso punto,
  oppure che un punto di <math|B> non venga raggiunto.

  L'<strong|immagine> <math|f(A)={f(a):a\<in\>A}> raccoglie gli arrivi
  effettivi ed è un sottoinsieme di <math|B>. Useremo \Sinsieme di arrivo\T
  per evitare di confonderlo con l'immagine.

  Il <strong|grafico> raccoglie le coppie entrata\<#2013\>uscita:

  <\equation*>
    <math-up|Graf>(f)={(a,b)\<in\>A\<times\>B:b=f(a)}.
  </equation*>

  Possiamo rendere rigorosa la definizione dicendo che una funzione, con
  <math|A> e <math|B> dichiarati, è rappresentata da un sottoinsieme
  <math|G\<subseteq\>A\<times\>B> che soddisfa

  <\equation*>
    \<forall\>a\<in\>A\<exists\>!b\<in\>B,<space|1em>(a,b)\<in\>G.
  </equation*>

  Il simbolo <math|\<exists\>!> significa \Sesiste uno e un solo\T: servono
  sia l'esistenza sia l'unicità dell'uscita. Nel piano reale significa avere
  esattamente un punto del grafico sopra ogni ascissa del dominio.

  <section|Iniettività, suriettività e biettività>

  Se gli arrivi distinguono sempre le partenze, la funzione è
  <strong|iniettiva>. Per verificarlo prendiamo due entrate qualsiasi.
  Supponiamo che abbiano la stessa uscita e proviamo che devono coincidere:

  <\equation*>
    \<forall\>a<rsub|1>,a<rsub|2>\<in\>A,<space|1em>f(a<rsub|1>)=f(a<rsub|2>)\<Rightarrow\>a<rsub|1>=a<rsub|2>.
  </equation*>

  Per smentire l'iniettività basta trovare due entrate diverse con la stessa
  uscita.

  Se invece ogni punto dell'insieme di arrivo è raggiunto, la funzione è
  <strong|suriettiva>:

  <\equation*>
    \<forall\>b\<in\>B\<exists\>a\<in\>A,<space|1em>f(a)=b.
  </equation*>

  Qui prendiamo un <math|b> qualsiasi nell'insieme di arrivo e cerchiamo
  almeno un'entrata che lo raggiunga.

  Essere <strong|biettiva> significa soddisfare entrambe le proprietà: ogni
  punto di <math|B> ha esattamente una partenza.

  <figura|<image|assets/funzioni.pdf|160.0mm|47.5mm||>|Una funzione iniettiva
  non manda due entrate diverse nella stessa uscita. Una funzione suriettiva
  raggiunge ogni punto dell'insieme di arrivo.>

  Riprendiamo <math|f(x)=x<rsup|2>>. Da <math|\<bbb-R\>> a <math|\<bbb-R\>>
  non è iniettiva, perché <math|f(2)=f(-2)>, e non è suriettiva, perché non
  raggiunge i negativi.

  Cambiando l'arrivo in <math|[0,+\<infty\>)> otteniamo la suriettività, ma 2
  e \<#2212\>2 hanno ancora la stessa uscita. Restringendo invece la partenza
  a <math|[0,+\<infty\>)> otteniamo l'iniettività. Restringendo entrambe, la
  funzione diventa biettiva. L'esistenza delle radici reali necessaria qui
  sarà collegata alla completezza nei capitoli 4 e 5.

  <section|L'inversa e il motivo delle due condizioni>

  Vogliamo invertire tutte le frecce. Perché il risultato sia una funzione da
  <math|B> ad <math|A>, ogni <math|b> deve avere una freccia in uscita e deve
  averne una sola. La suriettività fornisce la prima condizione;
  l'iniettività la seconda.

  <\concetto|Inversa di una funzione>
    Una funzione <math|f:A\<rightarrow\>B> è invertibile se esiste
    <math|g:B\<rightarrow\>A> tale che

    <\equation*>
      g(f(a))=a<space|1em>(a\<in\>A),<space|2em>f(g(b))=b<space|1em>(b\<in\>B).
    </equation*>

    La funzione <math|g>, indicata con <math|f<rsup|-1>>, esiste se e solo se
    <math|f> è biettiva.
  </concetto>

  Dimostriamo prima che la biettività basta. Per ogni <math|b\<in\>B> esiste
  un'entrata <math|a>, perché <math|f> è suriettiva. È unica, perché <math|f>
  è iniettiva. Definiamo <math|g(b)> proprio come questa entrata. Tornare
  indietro dopo essere andati avanti, o viceversa, ci riporta così al punto
  iniziale.

  Dimostriamo ora che l'esistenza di <math|g> impone le due proprietà. Se
  <math|f(a<rsub|1>)=f(a<rsub|2>)>, applichiamo <math|g> ai due membri:
  otteniamo <math|a<rsub|1>=a<rsub|2>>. Quindi <math|f> è iniettiva.

  Per ogni <math|b\<in\>B>, inoltre, sappiamo che <math|f(g(b))=b>. Abbiamo
  trovato un'entrata che raggiunge <math|b>, cioè <math|g(b)>. Quindi
  <math|f> è anche suriettiva.

  L'inversa è unica: qualsiasi inversa deve mandare <math|b> proprio
  nell'unica soluzione di <math|f(a)=b>. Per la funzione quadrato sulle
  semirette non negative essa è <math|f<rsup|-1>(y)=<sqrt|y>>.

  L'inversa non è il reciproco <math|1/f(x)>: invertire le frecce e dividere
  1 per l'uscita sono operazioni diverse.

  <section|Composizione: prima la funzione a destra>

  Se <math|f:A\<rightarrow\>B> e <math|g:B\<rightarrow\>C>, possiamo eseguire
  prima <math|f> e poi <math|g>. La composta è

  <\equation*>
    g\<circ\>f:A\<rightarrow\>C,<space|2em>(g\<circ\>f)(a)=g(f(a)).
  </equation*>

  Per esempio, con <math|f(x)=x+1> e <math|g(x)=x<rsup|2>> su
  <math|\<bbb-R\>>, otteniamo <math|g(f(x))=(x+1)<rsup|2>>, mentre
  <math|f(g(x))=x<rsup|2>+1>. L'ordine cambia il risultato.

  Perché la composizione sia definita, è sufficiente che gli arrivi effettivi
  della prima funzione appartengano al dominio della seconda; la scrittura
  con l'intero insieme intermedio <math|B> rende questa condizione esplicita.

  La composizione conserva l'iniettività: se
  <math|g(f(a<rsub|1>))=g(f(a<rsub|2>))>, l'iniettività di <math|g> dà
  <math|f(a<rsub|1>)=f(a<rsub|2>)>, poi quella di <math|f> dà
  <math|a<rsub|1>=a<rsub|2>>.

  La composizione conserva anche la suriettività: dato <math|c\<in\>C>,
  scegliamo <math|b> con <math|g(b)=c>, poi <math|a> con <math|f(a)=b>. Così
  <math|g(f(a))=c>.

  Si possono leggere due informazioni anche al contrario. Se
  <math|g\<circ\>f> è iniettiva, <math|f> deve esserlo: due entrate unite da
  <math|f> resterebbero unite dopo <math|g>.

  Se <math|g\<circ\>f> è suriettiva, <math|g> deve esserlo: l'uscita finale
  passa sempre per <math|g>. Non seguono automaticamente le altre due
  proprietà dei singoli fattori.

  <section|Immagine e controimmagine di insiemi>

  Per <math|E\<subseteq\>A>, l'immagine <math|f(E)={f(a):a\<in\>E}> raccoglie
  tutte le uscite ottenute partendo da <math|E>. Per <math|D\<subseteq\>B>,
  la <strong|controimmagine> è invece

  <\equation*>
    f<rsup|-1>(D)={a\<in\>A:f(a)\<in\>D}.
  </equation*>

  Questa domanda ha senso anche se <math|f> non è invertibile: stiamo
  raccogliendo tutte le entrate adatte, senza pretendere che siano uniche.

  Con il quadrato su <math|\<bbb-R\>>, per esempio, <math|f({-2,1})={1,4}>,
  mentre <math|f<rsup|-1>({4})={-2,2}>. Il significato di <math|f<rsup|-1>>
  si riconosce dal contesto: una funzione inversa richiede biettività; la
  controimmagine di un insieme esiste sempre.

  <\verifica|2>
    <strong|1.> Considera <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>>,
    <math|f(x)=3x-2>. Dimostra che è biettiva e trova l'inversa risolvendo
    <math|y=3x-2> rispetto a <math|x>.

    <strong|2.> Per <math|q(x)=x<rsup|2>> su <math|\<bbb-R\>>, determina
    <math|q([-1,2])> e <math|q<rsup|-1>([1,4])>. Spiega perché non puoi
    ottenere l'immagine sostituendo soltanto gli estremi.
  </verifica>

  <chapter|Induzione e disuguaglianza di Bernoulli>

  <\inbreve>
    Come dimostriamo una formula per tutti i naturali senza controllarli uno
    alla volta? Partiamo da somme e prodotti che sappiamo calcolare.
    L'induzione collegherà ogni caso al successivo e ci permetterà di
    dimostrare anche la disuguaglianza di Bernoulli.
  </inbreve>

  <section|Base e passo: come raggiungere tutti i naturali>

  Useremo <math|\<bbb-N\>={0,1,2,\<ldots\>}>. Una proprietà <math|P(n)> può
  dipendere da un indice naturale. Per esempio \Sla somma da 1 a <math|n>
  vale <math|n(n+1)/2>\T. Con <math|n=1,2,3> possiamo controllarla
  direttamente. Ma per dimostrarla da 1 in poi dobbiamo verificare un primo
  caso e spiegare come passare da un caso qualsiasi al successivo.

  <\concetto|Principio di induzione>
    Per dimostrare <math|P(n)> per ogni naturale <math|n\<geq\>n<rsub|0>>,
    bastano una <strong|base>, <math|P(n<rsub|0>)>, e un <strong|passo>: per
    ogni <math|n\<geq\>n<rsub|0>>, da <math|P(n)> segue <math|P(n+1)>.
  </concetto>

  Nel passo, <math|P(n)> è un'ipotesi temporanea. Non stiamo assumendo tutta
  la conclusione: proviamo che, se un caso è vero, lo sarà il seguente. La
  base mette in moto questo collegamento.

  <figura|<image|assets/domino.pdf|131.8mm|42.5mm||>|La prima tessera deve
  cadere e ogni tessera deve poter far cadere la successiva. Le due
  condizioni svolgono lavori diversi.>

  Il simbolo <math|<big|sum><rsub|k=1><rsup|n>a<rsub|k>> abbrevia
  <math|a<rsub|1>+\<cdots\>+a<rsub|n>>. La lettera <math|k> indica quale
  addendo stiamo sommando; <math|n> indica dove fermarci.

  Quando il limite superiore diventa <math|n+1>, la nuova somma contiene
  quella vecchia più un addendo. Questo è il punto in cui l'ipotesi induttiva
  può essere utile.

  <section|Una prova completa: la somma dei quadrati>

  Le prime somme sono <math|0=0>, <math|0+1=1>, <math|0+1+4=5>. Una formula
  che le descrive è

  <\equation*>
    <big|sum><rsub|k=0><rsup|n>k<rsup|2>=<frac|n(n+1)(2n+1)|6><space|2em>(n\<geq\>0).
  </equation*>

  La base <math|n=0> dà <math|0=0>.

  Per il passo supponiamo valida la formula all'indice <math|n>. Il caso
  nuovo contiene l'addendo <math|(n+1)<rsup|2>>; lo separiamo proprio per far
  comparire la somma su cui abbiamo informazioni:

  <\equation*>
    <big|sum><rsub|k=0><rsup|n+1>k<rsup|2>=<frac|n(n+1)(2n+1)|6>+(n+1)<rsup|2>.
  </equation*>

  Vogliamo riconoscere la formula con <math|n+1> al posto di <math|n>.
  Raccogliamo perciò il fattore <math|(n+1)/6>, che deve comparire nel
  risultato. Nel fattore rimasto troviamo

  <\equation*>
    n(2n+1)+6(n+1)=2n<rsup|2>+7n+6=(n+2)(2n+3).
  </equation*>

  Quindi la somma nuova è

  <\equation*>
    <frac|(n+1)(n+2)(2n+3)|6>,
  </equation*>

  cioè la stessa formula con <math|n+1> al posto di <math|n>. Questo conclude
  il passo e dunque l'induzione.

  <subsection|La somma geometrica: far cancellare i termini>

  In una somma geometrica ogni termine si ottiene moltiplicando il precedente
  per lo stesso numero. Per calcolarla possiamo cercare una cancellazione. Se
  <math|S=1+a+\<cdots\>+a<rsup|n>>, allora
  <math|a*S=a+a<rsup|2>+\<cdots\>+a<rsup|n+1>>. Sottraendo, i termini
  intermedi scompaiono:

  <\equation*>
    (a-1)S=a<rsup|n+1>-1.
  </equation*>

  Per <math|a\<neq\>1> otteniamo <math|S=(a<rsup|n+1>-1)/(a-1)>.

  Per <math|a=1> non dividiamo per zero: contiamo <math|n+1> addendi uguali a
  1, quindi <math|S=n+1>. L'induzione offre una prova alternativa.

  <section|Bernoulli: controllare un prodotto con una retta>

  Con <math|x=1/10>, l'espressione <math|(1+x)<rsup|n>> applica ripetutamente
  un aumento del dieci per cento. La quantità <math|1+n*x> tiene soltanto
  l'aumento semplice. La disuguaglianza di Bernoulli precisa che il prodotto
  ripetuto non è più piccolo:

  <\concetto|Disuguaglianza di Bernoulli>
    Per ogni naturale <math|n\<geq\>1> e ogni reale <math|x\<geq\>-1>,

    <\equation*>
      (1+x)<rsup|n>\<geq\>1+n*x.
    </equation*>
  </concetto>

  Fissiamo <math|x\<geq\>-1> e procediamo per induzione su <math|n>. La base
  <math|n=1> è un'uguaglianza.

  Supponiamo <math|(1+x)<rsup|n>\<geq\>1+n*x>. Per arrivare alla potenza
  successiva dobbiamo moltiplicare per <math|1+x>. È qui che serve l'ipotesi
  sul segno: <math|1+x\<geq\>0>, perciò il verso si conserva. Otteniamo

  <\equation*>
    (1+x)<rsup|n+1>\<geq\>(1+n*x)(1+x)=1+(n+1)x+n*x<rsup|2>\<geq\>1+(n+1)x.
  </equation*>

  L'ultimo passaggio elimina il termine non negativo <math|n*x<rsup|2>>.

  Il caso <math|x=-1> è compreso: per <math|n\<geq\>1>, <math|0\<geq\>1-n>.
  Per <math|n=0> la formula vale quando la potenza è definita, ma scegliendo
  la base 1 evitiamo di dover attribuire un significato a <math|0<rsup|0>>.

  Bernoulli confronta una potenza con una retta. Nei limiti ci permetterà di
  controllare potenze e radici.

  <section|Quando conviene rafforzare l'enunciato>

  Consideriamo <math|S<rsub|n>=<big|sum><rsub|k=1><rsup|n>1/(k(k+1))>. Per
  dimostrare <math|S<rsub|n>\<leq\>1>, l'ipotesi <math|S<rsub|n>\<leq\>1>
  sembra poco utile: aggiungere un termine positivo dà soltanto un numero
  minore o uguale a <math|1+1/((n+1)(n+2))>, che supera 1.

  Ci serve sapere quanto margine rimane. I primi risultati sono
  <math|1/2,2/3,3/4>. Proviamo l'affermazione più precisa
  <math|S<rsub|n>=n/(n+1)>. La base <math|n=1> funziona.

  Nel passo,

  <\equation*>
    S<rsub|n+1>=<frac|n|n+1>+<frac|1|(n+1)(n+2)>=<frac|n(n+2)+1|(n+1)(n+2)>=<frac|n+1|n+2>.
  </equation*>

  Abbiamo usato <math|n(n+2)+1=(n+1)<rsup|2>>. L'uguaglianza più forte si
  lascia trasportare al caso successivo e implica <math|S<rsub|n>\<less\>1>.
  Una prova può quindi diventare più semplice quando conserva più
  informazioni.

  <\verifica|3>
    <strong|1.> Dimostra per induzione <math|1+2+\<cdots\>+n=n(n+1)/2> per
    <math|n\<geq\>1>. Spiega dove usi l'ipotesi.

    <strong|2.> Determina per quali naturali vale <math|n!\<geq\>2<rsup|n>>,
    dove <math|0!=1> e <math|n!=1\<cdot\>2\<cdot\>\<cdots\>\<cdot\>n> per
    <math|n\<geq\>1>. Controlla i primi casi, poi scegli una base adatta.
  </verifica>

  <chapter|Numeri reali, completezza e supremi>

  <\inbreve>
    Cerchiamo un numero il cui quadrato sia 2, ma nessuna frazione risolve il
    problema. Che cosa ci assicura che questo numero esista fra i reali?
    Partiamo dalle operazioni e dall'ordine per arrivare alla completezza e
    al supremo.
  </inbreve>

  <section|Campo ordinato: calcoli e confronti>

  Gli insiemi numerici si allargano quando nuove domande lo richiedono:

  <\equation*>
    \<bbb-N\>\<subseteq\>\<bbb-Z\>\<subseteq\>\<bbb-Q\>\<subseteq\>\<bbb-R\>\<subseteq\>\<bbb-C\>.
  </equation*>

  Gli interi permettono tutte le sottrazioni; i razionali <math|p/q>, con
  <math|q\<neq\>0>, permettono le divisioni per numeri non nulli. I reali
  includono anche numeri come <math|<sqrt|2>>. I complessi, in cui compare
  <math|i<rsup|2>=-1>, non saranno il nostro ambiente di lavoro.

  Descriviamo <math|\<bbb-R\>> mediante proprietà di partenza, dette
  <strong|assiomi>.

  Le operazioni di somma e prodotto sono associative e commutative; hanno
  neutri 0 e 1, con <math|0\<neq\>1>; ogni numero ha un opposto e ogni numero
  non nullo ha un inverso moltiplicativo. Infine vale <math|a(b+c)=a*b+a*c>.

  Un insieme di numeri con queste operazioni e proprietà si chiama
  <strong|campo>. La sottrazione significa sommare l'opposto, la divisione
  moltiplicare per l'inverso.

  L'ordine <math|\<leq\>> è <strong|riflessivo>: <math|a\<leq\>a>. È
  <strong|antisimmetrico>: da <math|a\<leq\>b> e <math|b\<leq\>a> segue
  <math|a=b>. È <strong|transitivo>: da <math|a\<leq\>b> e <math|b\<leq\>c>
  segue <math|a\<leq\>c>. Infine è <strong|totale>: due numeri sono sempre
  confrontabili.

  L'ordine è compatibile con i calcoli: aggiungere la stessa quantità
  conserva le disuguaglianze e il prodotto di due numeri non negativi è non
  negativo.

  Per esempio, da <math|x\<leq\>y> segue <math|y-x\<geq\>0>. Se
  <math|z\<geq\>0>, allora <math|z(y-x)\<geq\>0>, cioè <math|y*z-x*z\<geq\>0>
  e quindi <math|x*z\<leq\>y*z>. Moltiplicando per un numero negativo il
  verso si inverte. Le usuali regole si deducono dunque dagli assiomi.

  Anche <math|1\<gtr\>0> si deduce: ogni quadrato è non negativo, perché per
  un numero negativo si può usare il suo opposto positivo. In particolare
  <math|1=1<rsup|2>\<geq\>0>, e <math|1\<neq\>0>.

  Aggiungere 1 aumenta quindi strettamente un numero: i naturali costruiti
  dentro <math|\<bbb-R\>> sono distinti. Per questo fatto basta l'ordine; la
  completezza servirà per dimostrare che questi naturali superano ogni
  barriera reale.

  <section|La completezza: una proprietà che manca ai razionali>

  Somma, prodotto e ordine funzionano anche in <math|\<bbb-Q\>>. Eppure non
  vi troviamo un numero di quadrato 2. Perché?

  Supponiamo che una frazione <math|p/q>, ridotta ai minimi termini, abbia
  quadrato 2. Allora <math|p<rsup|2>=2q<rsup|2>>, quindi <math|p> è pari: il
  quadrato di un dispari sarebbe dispari.

  Scriviamo <math|p=2k> e sostituiamo. Otteniamo
  <math|4k<rsup|2>=2q<rsup|2>>, cioè <math|q<rsup|2>=2k<rsup|2>>. Anche
  <math|q> è pari. Ma così <math|p> e <math|q> hanno il fattore comune 2,
  contro l'ipotesi di aver ridotto la frazione.

  Per descrivere ciò che manca pensiamo a due gruppi di numeri: quelli che
  stanno prima del confine cercato e quelli che stanno dopo. Nei reali
  vogliamo poter collocare un punto tra i due gruppi. La prossima proprietà
  esprime questa richiesta.

  <\concetto|Assioma di completezza dei reali>
    Se <math|A,B\<subseteq\>\<bbb-R\>> sono non vuoti e <math|a\<leq\>b> per
    ogni <math|a\<in\>A> e ogni <math|b\<in\>B>, esiste
    <math|c\<in\>\<bbb-R\>> tale che

    <\equation*>
      a\<leq\>c\<leq\>b<space|2em>\<forall\>a\<in\>A,<space|1em>\<forall\>b\<in\>B.
    </equation*>
  </concetto>

  Il punto <math|c> separa i due insiemi. Non deve appartenere a uno di essi,
  né deve essere unico: tra <math|A={0}> e <math|B={2}> ogni punto di
  <math|[0,2]> va bene. Quando gli insiemi arrivano fino allo stesso confine,
  invece, il punto può essere unico.

  Un teorema assicura che esiste un campo ordinato completo, cioè un insieme
  con tutte le proprietà richieste. Il teorema ne dà anche l'unicità: due
  campi di questo tipo si possono mettere in corrispondenza biunivoca
  preservando somme, prodotti e ordine. Non svolgeremo qui questa
  costruzione.

  <section|Maggioranti e massimo: una barriera può restare fuori>

  Per <math|A=(0,1)>, i numeri 1, 2 e 10 sono tutti <strong|maggioranti>:
  ciascuno è maggiore o uguale a ogni elemento di <math|A>. Nessuno è però un
  massimo, perché non appartiene ad <math|A>.

  Un <strong|massimo> è precisamente un maggiorante che appartiene
  all'insieme. Il <strong|minimo> è, simmetricamente, un minorante che
  appartiene all'insieme.

  Un massimo, quando esiste, è unico. Se <math|M<rsub|1>> e <math|M<rsub|2>>
  fossero entrambi massimi, avremmo <math|M<rsub|1>\<leq\>M<rsub|2>> e
  <math|M<rsub|2>\<leq\>M<rsub|1>>, dunque sarebbero uguali. I maggioranti,
  invece, non sono unici: una barriera può essere spostata più in alto.

  Un insieme è <strong|limitato superiormente> se ha un maggiorante;
  <strong|limitato inferiormente> se ha un minorante; <strong|limitato> se ha
  entrambi. Equivalentemente, esiste <math|K\<geq\>0> con
  <math|\|a\|\<leq\>K> per ogni <math|a\<in\>A>: possiamo racchiuderlo fra
  due barriere simmetriche <math|-K> e <math|K>.

  <\concetto|Estremo superiore e inferiore>
    Per un insieme non vuoto <math|A\<subseteq\>\<bbb-R\>>, il
    <strong|supremo> <math|sup A> è il più piccolo maggiorante, se l'insieme
    è limitato superiormente. L'<strong|infimo> <math|inf A> è il più grande
    minorante, se è limitato inferiormente. La completezza ne garantisce
    l'esistenza.
  </concetto>

  Se <math|A> non è limitato superiormente scriviamo <math|sup A=+\<infty\>>;
  se non è limitato inferiormente scriviamo <math|inf A=-\<infty\>>. Sono
  convenzioni per l'assenza di barriere reali: <math|\<pm\>\<infty\>> non
  sono numeri reali.

  Per <math|A=(0,1)> abbiamo <math|sup A=1> e <math|inf A=0>, senza massimo
  né minimo. Quando un massimo esiste, coincide con il supremo; analogamente
  per il minimo e l'infimo.

  <section|Perché il supremo esiste e come riconoscerlo>

  Non basta chiamare il supremo \Sil minimo dei maggioranti\T: dobbiamo
  sapere che quel minimo esiste. Sia <math|A> non vuoto e limitato
  superiormente, e sia <math|B> l'insieme di tutti i suoi maggioranti. Anche
  <math|B> è non vuoto; inoltre <math|a\<leq\>b> per ogni <math|a\<in\>A>,
  <math|b\<in\>B>. È proprio la situazione dell'assioma di completezza.

  Otteniamo <math|c> con <math|a\<leq\>c\<leq\>b> per tutte queste scelte. La
  prima disuguaglianza dice che <math|c> è un maggiorante, quindi
  <math|c\<in\>B>. La seconda dice che è minore o uguale a ogni altro
  maggiorante. Perciò è il minimo di <math|B>, cioè <math|sup A>. L'infimo si
  ottiene cambiando i versi, oppure usando <math|inf A=-sup(-A)>.

  Come distinguiamo il supremo da una barriera troppo alta? Se <math|L=sup A>
  e abbassiamo <math|L> di un qualsiasi <math|\<varepsilon\>\<gtr\>0>, il
  numero <math|L-\<varepsilon\>> non può più essere un maggiorante. Deve
  quindi esserci un punto di <math|A> sopra quella barriera abbassata.

  <figura|<image|assets/sup-eps.pdf|150.0mm|27.5mm||>|Tutti i punti restano a
  sinistra di <math|L>, ma nessuna distanza positiva può separare <math|L>
  dall'intero insieme.>

  La caratterizzazione completa richiede entrambe le condizioni:

  <\equation*>
    \<forall\>a\<in\>A,<space|1em>a\<leq\>L;<space|2em>\<forall\>\<varepsilon\>\<gtr\>0\<exists\>a\<in\>A,<space|1em>L-\<varepsilon\>\<less\>a\<leq\>L.
  </equation*>

  Le due condizioni sono dunque necessarie. Vediamo che bastano a riconoscere
  il supremo.

  Per il viceversa, se <math|M\<less\>L> fosse un maggiorante, scegliendo
  <math|\<varepsilon\>=L-M\<gtr\>0> la seconda condizione fornirebbe
  <math|a\<gtr\>L-\<varepsilon\>=M>, contraddizione. Quindi nessun
  maggiorante è più piccolo di <math|L>.

  Per l'infimo la condizione simmetrica è
  <math|\<forall\>\<varepsilon\>\<gtr\>0\<exists\>a\<in\>A,
  l\<leq\>a\<less\>l+\<varepsilon\>>, insieme alla proprietà di minorante di
  <math|l>.

  <section|La proprietà archimedea e il ponte verso i limiti>

  Ogni barriera reale è superata da qualche naturale. Per provarlo
  supponiamo, per assurdo, che <math|\<bbb-N\>> sia limitato e poniamo
  <math|L=sup \<bbb-N\>>.

  Il supremo dovrebbe essere avvicinato dai naturali. La caratterizzazione
  con <math|\<varepsilon\>=1/2> fornisce <math|n\<in\>\<bbb-N\>> tale che
  <math|n\<gtr\>L-1/2>. Ma allora <math|n+1\<gtr\>L+1/2\<gtr\>L>, mentre
  <math|n+1> è ancora un naturale. Contraddizione: <math|L> doveva
  maggiorarli tutti.

  Dunque <math|\<forall\>M\<in\>\<bbb-R\>\<exists\>n\<in\>\<bbb-N\>,n\<gtr\>M>.
  Questa <strong|proprietà archimedea> implica che possiamo rendere
  <math|1/n> più piccolo di qualsiasi <math|\<varepsilon\>\<gtr\>0>:
  scegliamo <math|n\<gtr\>1/\<varepsilon\>>. La completezza è così diventata
  uno strumento per controllare errori piccoli.

  Consideriamo supremi e infimi di insiemi non vuoti. Il vuoto ha tutti i
  reali come maggioranti e minoranti, quindi non rientra nell'enunciato
  d'esistenza appena dimostrato. Eventuali convenzioni sugli estremi del
  vuoto non servono al percorso.

  <\verifica|4>
    <strong|1.> Per <math|A={1-1/n:n\<geq\>1}>, determina infimo, supremo,
    eventuale minimo e massimo. Per il supremo usa la caratterizzazione con
    <math|\<varepsilon\>>.

    <strong|2.> Se <math|A> è non vuoto e limitato, dimostra che
    <math|sup(-A)=-inf A>, dove <math|-A={-a:a\<in\>A}>. Parti dal
    significato di minorante.
  </verifica>

  <chapter|Funzioni elementari e lettura dei grafici>

  <\inbreve>
    Come leggiamo dal grafico le soluzioni di un'equazione e i valori
    raggiunti da una funzione? Usiamo potenze, radici e valore assoluto per
    collegare il disegno alle definizioni. Vedremo anche come il supremo ci
    permette di costruire una radice irrazionale.
  </inbreve>

  <section|Simmetrie, periodicità e monotonia>

  Una funzione è <strong|pari> se il suo dominio è simmetrico rispetto a 0 e
  <math|f(-x)=f(x)>: il grafico si riflette nell'asse verticale.

  È <strong|dispari> se il dominio è simmetrico e <math|f(-x)=-f(x)>: il
  grafico si riflette nell'origine. Il quadrato è pari; il cubo è dispari. Se
  una funzione dispari è definita in 0, necessariamente <math|f(0)=0>, perché
  <math|f(0)=-f(0)>.

  Una funzione su <math|\<bbb-R\>> è <strong|periodica> se esiste
  <math|T\<gtr\>0> con <math|f(x+T)=f(x)> per ogni <math|x>. Il grafico si
  ripete dopo una traslazione di <math|T>.

  Anche <math|2T,3T,\<ldots\>> sono periodi; il periodo minimo, quando
  esiste, è il più piccolo periodo positivo. Per domini diversi da
  <math|\<bbb-R\>> richiediamo anche che le traslazioni di <math|\<pm\>T>
  conservino il dominio.

  La <strong|monotonia> confronta due entrate. Per <math|x\<less\>y> nel
  dominio, la funzione è debolmente crescente se <math|f(x)\<leq\>f(y)>,
  strettamente crescente se <math|f(x)\<less\>f(y)>.

  È debolmente decrescente se <math|f(x)\<geq\>f(y)> e strettamente
  decrescente se <math|f(x)\<gtr\>f(y)>, sempre per <math|x\<less\>y>.
  Specificare \Sdebolmente\T o \Sstrettamente\T evita di perdere
  informazioni.

  La stretta monotonia implica iniettività: due entrate distinte sono
  ordinate in un verso, quindi le loro uscite sono diverse. La monotonia
  debole può invece avere tratti costanti.

  Per una funzione strettamente crescente possiamo quindi passare da
  <math|f(u)\<less\>f(v)> a <math|u\<less\>v> e viceversa. Per una
  strettamente decrescente il verso si inverte. In ogni caso gli argomenti
  devono appartenere al dominio considerato.

  <section|Potenze, radici e completezza>

  Per un intero <math|k\<geq\>1>, <math|x<rsup|k>> è un prodotto di <math|k>
  fattori. Se <math|k> è pari, è una funzione pari, strettamente decrescente
  sulla semiretta negativa e strettamente crescente sulla positiva. La sua
  immagine è <math|[0,+\<infty\>)>.

  Se <math|k> è dispari, la funzione è dispari e strettamente crescente su
  tutto <math|\<bbb-R\>>, con immagine <math|\<bbb-R\>>.

  L'inversa delle potenze pari va presa sulle semirette non negative; quella
  delle potenze dispari su tutto <math|\<bbb-R\>>. La radice di indice pari
  restituisce sempre un numero non negativo. Perciò

  <\equation*>
    <sqrt|x<rsup|2>>=\|x\|,<space|2em><sqrt|x<rsup|2k>|2k>=\|x\|<space|1em>(k\<geq\>1),
  </equation*>

  mentre <math|<sqrt|-27|3>=-3>. Nel grafico, una funzione invertibile e la
  sua inversa scambiano le coordinate: <math|(a,b)> diventa <math|(b,a)>. È
  la riflessione nella retta <math|y=x>.

  <subsection|Costruire la radice di 2: scegliere il passo giusto>

  La parte delicata è l'esistenza delle radici. Per trovare un numero di
  quadrato 2 raccogliamo prima tutti i numeri non negativi il cui quadrato
  non supera 2:

  <\equation*>
    A={x\<in\>\<bbb-R\>:x\<geq\>0,x<rsup|2>\<leq\>2}.
  </equation*>

  L'insieme contiene 1 ed è maggiorato da 2. Esiste quindi <math|c=sup A>,
  con <math|1\<leq\>c\<leq\>2>. Vogliamo provare che il suo quadrato è
  proprio 2: se fosse più piccolo o più grande, potremmo migliorare la
  barriera.

  Supponiamo prima <math|c<rsup|2>\<less\>2>. Tra il quadrato e 2 rimane un
  margine <math|d=2-c<rsup|2>\<gtr\>0>. Vorremmo fare un passo
  <math|h\<gtr\>0> verso destra mantenendo il quadrato sotto 2. Quanto
  aumenta il quadrato?

  <\equation*>
    (c+h)<rsup|2>-c<rsup|2>=2c*h+h<rsup|2>.
  </equation*>

  Per controllare questo aumento imponiamo prima <math|h\<less\>1>. Allora
  <math|h<rsup|2>\<leq\>h>; inoltre <math|c\<leq\>2>, dunque
  <math|2c*h\<leq\>4h>. In totale l'aumento non supera <math|5h>.

  Adesso sappiamo come scegliere il passo: basta anche <math|5h\<less\>d>.
  Prendiamo perciò un qualsiasi <math|0\<less\>h\<less\>min(1,d/5)>.
  Otteniamo

  <\equation*>
    (c+h)<rsup|2>\<leq\>c<rsup|2>+5h\<less\>c<rsup|2>+d=2.
  </equation*>

  Così <math|c+h> appartiene ad <math|A> ed è più grande del suo maggiorante
  <math|c>. È impossibile: il quadrato non può essere sotto 2.

  Supponiamo ora <math|c<rsup|2>\<gtr\>2> e chiamiamo
  <math|d=c<rsup|2>-2\<gtr\>0> il margine dall'altro lato. Cerchiamo una
  barriera più bassa, <math|c-h>, che resti positiva e abbia ancora quadrato
  sopra 2. In questo modo sarebbe ancora sopra tutti gli elementi di
  <math|A>.

  Per avere <math|c-h\<gtr\>0> basta imporre <math|h\<less\>1/2>, perché
  <math|c\<geq\>1>. La diminuzione del quadrato è

  <\equation*>
    c<rsup|2>-(c-h)<rsup|2>=2c*h-h<rsup|2>\<leq\>2c*h\<leq\>4h.
  </equation*>

  Se chiediamo anche <math|4h\<less\>d>, il quadrato non può scendere fino a
  2. Scegliamo dunque <math|0\<less\>h\<less\>min(1/2,d/4)> e troviamo

  <\equation*>
    (c-h)<rsup|2>\<geq\>c<rsup|2>-4h\<gtr\>c<rsup|2>-d=2.
  </equation*>

  Ogni <math|x\<in\>A> soddisfa <math|x<rsup|2>\<leq\>2\<less\>(c-h)<rsup|2>>.
  Poiché entrambi i numeri sono non negativi, segue <math|x\<less\>c-h>. Ma
  così <math|c-h> sarebbe un maggiorante più piccolo del supremo: un'altra
  contraddizione.

  Rimane soltanto <math|c<rsup|2>=2>. La stretta crescenza del quadrato sui
  non negativi dà l'unicità. Per le altre radici la completezza svolge lo
  stesso ruolo; la fattorizzazione della differenza di potenze permette di
  controllare quanto cambia una potenza.

  <section|Valore assoluto e trasformazioni>

  Il valore assoluto <math|\|x\|> vale <math|x> per <math|x\<geq\>0> e
  <math|-x> per <math|x\<less\>0>. Rappresenta la distanza da 0. Più in
  generale <math|\|x-a\|> è la distanza da <math|a>, e
  <math|\|x-a\|\<less\>r>, con <math|r\<gtr\>0>, equivale a
  <math|a-r\<less\>x\<less\>a+r>. Questa forma sarà centrale nei limiti.

  Useremo anche la disuguaglianza triangolare
  <math|\|u+v\|\<leq\>\|u\|+\|v\|>, che si ricava sommando
  <math|-\|u\|\<leq\>u\<leq\>\|u\|> e <math|-\|v\|\<leq\>v\<leq\>\|v\|>.

  Per trasformare un grafico seguiamo un suo punto. Se <math|f(a)=b>, allora
  <math|f(x)+c> passa per <math|(a,b+c)>: trasliamo verticalmente di
  <math|c>.

  Invece <math|f(x-c)> passa per <math|(a+c,b)>: trasliamo a destra di
  <math|c>. Il segno interno agisce così perché <math|x-c=a> richiede
  <math|x=a+c>.

  <math|f(-x)> riflette nell'asse verticale; <math|-f(x)> nell'asse
  orizzontale.

  Con <math|\|f(x)\|> si riflette verso l'alto soltanto la parte sotto l'asse
  orizzontale. Con <math|f(\|x\|)> si conserva il ramo destro e lo si copia a
  sinistra: la funzione ottenuta è pari sul suo dominio naturale.

  <figura|<image|assets/trasformazioni.pdf|105.0mm|67.5mm||>|Una
  trasformazione esterna cambia l'uscita; una trasformazione interna cambia
  il punto in cui leggiamo la funzione.>

  <section|Equazioni, disequazioni, immagine e controimmagine>

  Risolvere <math|f(x)=\<lambda\>> significa intersecare il grafico con
  <math|y=\<lambda\>> e leggere le ascisse. L'iniettività richiede al massimo
  un'intersezione per ogni livello; la suriettività almeno una per ogni
  livello dell'insieme di arrivo. Per <math|f(x)\<leq\>\<lambda\>> prendiamo
  invece le ascisse dei punti sotto la retta o sulla retta.

  Per esempio <math|(x-3)<rsup|2>=\<lambda\>> non ha soluzioni se
  <math|\<lambda\>\<less\>0>, ne ha una se <math|\<lambda\>=0>, e due se
  <math|\<lambda\>\<gtr\>0>. In quest'ultimo caso sono
  <math|3\<pm\><sqrt|\<lambda\>>>. La parabola traslata rende visibili i tre
  casi.

  <\guidato|Confrontare una radice e una retta>
    Risolviamo <math|<sqrt|x+6>\<gtr\>x>. Prima imponiamo <math|x\<geq\>-6>.

    Per <math|-6\<leq\>x\<less\>0> la disuguaglianza è vera: la radice è non
    negativa, mentre il membro destro è negativo.

    Per <math|x\<geq\>0> entrambi i membri sono non negativi, quindi il
    quadrato conserva l'equivalenza:

    <\equation*>
      x+6\<gtr\>x<rsup|2>\<Leftrightarrow\>(x-3)(x+2)\<less\>0.
    </equation*>

    Con <math|x\<geq\>0> otteniamo <math|0\<leq\>x\<less\>3>. Unendo i due
    tratti, la soluzione è <math|[-6,3)>. La separazione dei segni giustifica
    il quadramento: applicarlo senza condizioni può introdurre soluzioni
    estranee.
  </guidato>

  <figura|<image|assets/radice-retta.pdf|130.0mm|70.0mm||>|Il punto con
  ascissa <math|-2> appartiene al ramo negativo della parabola completa, ma
  quel ramo non fa parte della radice principale.>

  Per l'immagine di un intervallo partiamo dall'asse orizzontale e
  raccogliamo tutte le altezze del grafico; per la controimmagine partiamo
  dalle altezze e raccogliamo tutte le ascisse ammesse.

  Con <math|f(x)=\|x<rsup|2>-4\|>, sul tratto <math|[1,4]> scendiamo da 3 a 0
  e poi saliamo a 12: <math|f([1,4])=[0,12]>. Sostituire soltanto gli estremi
  avrebbe perso il valore minimo interno.

  Per trovare <math|f<rsup|-1>([-2,1])>, la parte negativa dell'intervallo in
  arrivo non conta, poiché <math|f\<geq\>0>. Risolviamo
  <math|\|x<rsup|2>-4\|\<leq\>1>, cioè <math|3\<leq\>x<rsup|2>\<leq\>5>. La
  risposta è <math|[-<sqrt|5>,-<sqrt|3>]\<cup\>[<sqrt|3>,<sqrt|5>]>.

  <section|Esponenziale e logaritmo: un ponte per ottobre>

  Richiamiamo le proprietà di queste funzioni, già usate negli esercizi
  successivi del corso. Per <math|a\<gtr\>0>, le potenze con esponente
  razionale si definiscono mediante radici e, per esponenti negativi,
  reciproci. Per <math|a\<gtr\>1> l'estensione ai reali si può costruire
  mediante

  <\equation*>
    a<rsup|x>=sup{a<rsup|q>:q\<in\>\<bbb-Q\>,q\<leq\>x}.
  </equation*>

  La completezza fornisce il punto di arrivo delle potenze razionali.
  Giustificare tutta la costruzione richiede però dimostrazioni ulteriori.

  Qui assumiamo le proprietà fondamentali, senza usare le derivate:
  <math|a<rsup|x+y>=a<rsup|x>a<rsup|y>>, <math|a<rsup|0>=1>, immagine
  <math|(0,+\<infty\>)> e stretta crescenza.

  Per <math|0\<less\>a\<less\>1> definiamo <math|a<rsup|x>=(1/a)<rsup|-x>> e
  otteniamo stretta decrescenza. Per <math|a=1> la funzione è costante.

  Se <math|a\<neq\>1>, l'inversa è il <strong|logaritmo in base <math|a>>:
  <math|log<rsub|a>x=y> significa <math|a<rsup|y>=x>, con <math|x\<gtr\>0>.

  Per argomenti positivi valgono le regole

  <\equation*>
    log<rsub|a>(u*v)=log<rsub|a>u+log<rsub|a>v,<space|1em>log<rsub|a>(u<rsup|r>)=r
    log<rsub|a>u.
  </equation*>

  Scriveremo <math|log x> per la base <math|e>, il numero che costruiremo con
  le successioni. La continuità e i limiti di queste funzioni saranno
  affrontati dopo le definizioni di limite.

  <\verifica|5>
    <strong|1.> Quante soluzioni ha <math|\|x<rsup|2>-4\|=\<lambda\>> al
    variare del reale <math|\<lambda\>>? Considera separatamente
    <math|\<lambda\>=0> e <math|\<lambda\>=4>.

    <strong|2.> Risolvi <math|log(3x+1)=log(x+5)>, dichiarando prima il
    dominio. Spiega quale proprietà permette di uguagliare gli argomenti.
  </verifica>

  <chapter|Trigonometria e funzioni inverse>

  <\inbreve>
    Il seno dà un'altezza: come risaliamo all'angolo? Partiamo dal cerchio
    unitario e dai grafici. Per costruire le inverse sceglieremo un
    intervallo preciso, che ci guiderà anche nelle composizioni.
  </inbreve>

  <section|Radianti, circonferenza, seno e coseno>

  La <strong|circonferenza trigonometrica> ha centro nell'origine e raggio 1:
  i suoi punti soddisfano <math|x<rsup|2>+y<rsup|2>=1>.

  Partiamo da <math|A=(1,0)> e percorriamo un arco orientato. Un angolo di
  <math|\<alpha\>> radianti corrisponde a un arco di lunghezza orientata
  <math|\<alpha\>> sul cerchio unitario, in senso antiorario se
  <math|\<alpha\>\<gtr\>0> e orario se <math|\<alpha\>\<less\>0>. Un giro
  completo misura <math|2\<pi\>>.

  Le coordinate del punto raggiunto <math|P> definiscono le due funzioni:

  <\equation*>
    P=(cos \<alpha\>,sin \<alpha\>).
  </equation*>

  Il coseno è l'ascissa, il seno l'ordinata. Perciò
  <math|sin<rsup|2>\<alpha\>+cos<rsup|2>\<alpha\>=1>. I segni si leggono dai
  quadranti: per esempio, nel secondo il coseno è negativo e il seno
  positivo.

  Per <math|0\<leq\>\<alpha\>\<leq\>2\<pi\>> l'area del settore è
  <math|\<alpha\>/2>; per angoli arbitrari si interpreta come area orientata
  accumulata. Assumiamo qui questa descrizione geometrica: per definire
  rigorosamente arco e area servono strumenti ulteriori.

  <figura|<image|assets/circonferenza.pdf|88.2mm|69.3mm||>|Le coordinate del
  punto forniscono coseno e seno. L'intersezione della retta <math|O*P> con
  <math|x=1> fornisce la tangente come altezza orientata.>

  La <strong|tangente> è <math|tan \<alpha\>=sin \<alpha\>/cos \<alpha\>>,
  dove <math|cos \<alpha\>\<neq\>0>. La retta <math|O*P> incontra la
  verticale <math|x=1> a quota <math|tan \<alpha\>>.

  Occorre usare la retta, anche prolungandola nel verso opposto: se <math|P>
  è a sinistra, la sola semiretta dall'origine verso <math|P> non raggiunge
  <math|x=1>. La tangente è esclusa per <math|\<alpha\>=\<pi\>/2+k\<pi\>>,
  con <math|k\<in\>\<bbb-Z\>>.

  <section|Simmetrie, periodi e grafici>

  Sostituire <math|\<alpha\>> con <math|-\<alpha\>> riflette <math|P>
  nell'asse orizzontale: il coseno resta uguale e il seno cambia segno.
  Dunque il coseno è pari, il seno e la tangente sono dispari. Aggiungere
  <math|2\<pi\>> riporta al medesimo punto: seno e coseno hanno periodo
  <math|2\<pi\>>.

  Aggiungere <math|\<pi\>> porta al punto opposto e cambia segno a entrambe
  le coordinate. Il loro rapporto resta uguale: la tangente ha periodo
  <math|\<pi\>>. È il periodo minimo, perché i suoi zeri sono precisamente i
  multipli di <math|\<pi\>>. Seno e coseno hanno periodo minimo
  <math|2\<pi\>>: il ritorno al valore massimo richiede un giro completo.

  Il seno passa, nell'ordine, per i valori 0, 1, 0, <math|-1>, 0 agli angoli
  <math|0,\<pi\>/2,\<pi\>,3\<pi\>/2,2\<pi\>>. Il coseno è lo stesso andamento
  anticipato di un quarto di giro: <math|cos x=sin(x+\<pi\>/2)>.

  La tangente cresce strettamente in ogni intervallo
  <math|(-\<pi\>/2+k\<pi\>,\<pi\>/2+k\<pi\>)> e vicino agli estremi i suoi
  valori non restano limitati. Preciseremo questo comportamento con i limiti.

  Per i calcoli successivi servono anche le formule di addizione:

  <\equation*>
    sin(u+v)=sin u cos v+cos u sin v,
  </equation*>

  <\equation*>
    cos(u+v)=cos u cos v-sin u sin v.
  </equation*>

  Geometricamente esprimono le coordinate di un punto dopo due rotazioni
  successive. Con <math|u=v> danno, per esempio, <math|sin(2u)=2sin u cos u>
  e <math|cos(2u)=1-2sin<rsup|2>u>.

  <section|Arcoseno, arcocoseno e arcotangente>

  Una funzione periodica ripete i valori e quindi non può essere iniettiva
  sul dominio intero. Per costruire un'inversa scegliamo un ramo che
  raggiunga ogni valore dell'immagine una sola volta.

  <\concetto|Intervalli principali delle inverse trigonometriche>
    <math|arcsin:[-1,1]\<rightarrow\>[-\<pi\>/2,\<pi\>/2]> è l'inversa del
    seno ristretto a <math|[-\<pi\>/2,\<pi\>/2]>, dove il seno è strettamente
    crescente.

    <math|arccos:[-1,1]\<rightarrow\>[0,\<pi\>]> è l'inversa del coseno
    ristretto a <math|[0,\<pi\>]>, dove il coseno è strettamente decrescente.

    <math|arctan:\<bbb-R\>\<rightarrow\>(-\<pi\>/2,\<pi\>/2)> è l'inversa
    della tangente ristretta a <math|(-\<pi\>/2,\<pi\>/2)>, dove la tangente
    è strettamente crescente.
  </concetto>

  Per esempio <math|arcsin(1/2)=\<pi\>/6>: scegliamo l'unico angolo
  dell'intervallo principale il cui seno vale <math|1/2>.
  <math|arccos(1/2)=\<pi\>/3> compie una scelta diversa, perché cerca un
  coseno.

  <math|arctan t> è l'angolo della retta che unisce l'origine al punto
  <math|(1,t)>, scelto fra <math|-\<pi\>/2> e <math|\<pi\>/2>.

  <figura|<image|assets/inverse-trig.pdf|124.8mm|44.9mm||>|I grafici delle
  inverse scambiano entrata e uscita dei rami scelti.>

  Per definizione, <math|sin(arcsin t)=t> per ogni <math|t\<in\>[-1,1]>.

  Nel verso opposto <math|arcsin(sin x)=x> vale solo per
  <math|x\<in\>[-\<pi\>/2,\<pi\>/2]>. Fuori da quell'intervallo l'espressione
  continua ad avere senso, ma riporta all'angolo principale. Per esempio
  <math|2\<in\>(\<pi\>/2,\<pi\>)>, quindi il punto con angolo <math|\<pi\>-2>
  ha lo stesso seno ed è nel ramo corretto:

  <\equation*>
    arcsin(sin 2)=\<pi\>-2.
  </equation*>

  Analogamente <math|arccos(cos 4)=2\<pi\>-4>, perché
  <math|4\<in\>(\<pi\>,2\<pi\>)> e la riflessione nell'asse orizzontale porta
  nel ramo superiore. Invece <math|cos(arccos t)=t> è definita soltanto per
  <math|t\<in\>[-1,1]>. Dobbiamo quindi farci due domande: la composizione è
  definita? E, se lo è, possiamo semplificarla?

  <section|Identità: il segno e l'intervallo vanno controllati>

  Per calcolare <math|sin(arccos t)>, chiamiamo <math|\<alpha\>=arccos t>.
  Sappiamo due cose: <math|cos \<alpha\>=t> e
  <math|\<alpha\>\<in\>[0,\<pi\>]>. Dall'identità fondamentale otteniamo
  <math|sin<rsup|2>\<alpha\>=1-t<rsup|2>>; l'intervallo assicura <math|sin
  \<alpha\>\<geq\>0>, quindi

  <\equation*>
    sin(arccos t)=<sqrt|1-t<rsup|2>><space|2em>(-1\<leq\>t\<leq\>1).
  </equation*>

  L'equazione al quadrato da sola non avrebbe scelto il segno. Allo stesso
  modo <math|cos(arcsin t)=<sqrt|1-t<rsup|2>>>.

  Inoltre, se <math|\<beta\>=arcsin t>, l'angolo <math|\<pi\>/2-\<beta\>>
  appartiene a <math|[0,\<pi\>]> e ha coseno <math|t>. Per unicità
  dell'angolo principale,

  <\equation*>
    arcsin t+arccos t=\<pi\>/2<space|2em>(-1\<leq\>t\<leq\>1).
  </equation*>

  Per <math|x\<gtr\>0>, poniamo <math|\<alpha\>=arctan x\<in\>(0,\<pi\>/2)>.
  L'angolo complementare soddisfa <math|tan(\<pi\>/2-\<alpha\>)=1/x> e
  appartiene anch'esso al ramo principale. Ne segue
  <math|arctan(1/x)=\<pi\>/2-\<alpha\>>, dunque

  <\equation*>
    arctan x+arctan(1/x)=\<pi\>/2<space|2em>(x\<gtr\>0).
  </equation*>

  Per <math|x\<less\>0> usiamo la disparità dell'arcotangente e applichiamo
  la formula a <math|-x\<gtr\>0>: la somma vale <math|-\<pi\>/2>. In
  <math|x=0> l'espressione <math|1/x> non è definita. Il cambio di segno del
  risultato dipende proprio dall'intervallo principale.

  <new-page>

  <section|Composizioni periodiche: un esempio completo>

  Se <math|g> ha periodo <math|T> e <math|f> è definita su tutta la sua
  immagine, allora <math|f(g(x+T))=f(g(x))>. Quindi <math|T> è un periodo
  della composta; il minimo può essere più piccolo. Questo spiega subito la
  periodicità di <math|arccos(sin x)> e di <math|(sin x)<rsup|3>>.

  Non basta invece che sia periodica la funzione esterna, come in
  <math|sin(x<rsup|2>)>: l'argomento interno cambia il ritmo delle
  oscillazioni.

  Studiamo <math|arccos(sin x)> per un periodo. Se
  <math|-\<pi\>/2\<leq\>x\<leq\>\<pi\>/2>, l'identità precedente dà
  <math|arccos(sin x)=\<pi\>/2-x>.

  Se <math|\<pi\>/2\<leq\>x\<leq\>3\<pi\>/2>, l'angolo <math|x-\<pi\>/2>
  appartiene a <math|[0,\<pi\>]> e ha coseno <math|sin x>; dunque la composta
  vale <math|x-\<pi\>/2>. I due tratti si incontrano a quota 0 e si ripetono
  con periodo <math|2\<pi\>>.

  <figura|<image|assets/dente.pdf|120.9mm|33.1mm||>|La composizione
  restituisce sempre angoli fra 0 e <math|\<pi\>>. Il grafico triangolare
  nasce dal riportare ogni angolo nel ramo principale.>

  <\verifica|6>
    <strong|1.> Calcola <math|arcsin(sin(5\<pi\>/6))> e
    <math|arccos(cos(7\<pi\>/4))>. Verifica sia il valore trigonometrico sia
    l'appartenenza all'intervallo principale.

    <strong|2.> Trova dominio e formula di <math|tan(arccos t)>. Il risultato
    deve tenere conto dei punti in cui la tangente non esiste.
  </verifica>

  <chapter|Successioni e definizione di limite>

  <\inbreve>
    I termini 1, 1/2, 1/3 e così via si avvicinano a zero senza diventare
    zero. Come rendiamo precisa questa idea? Impareremo a controllare tutti i
    termini dopo una certa soglia e a confrontare le successioni.
  </inbreve>

  <section|Successioni, definitivamente e frequentemente>

  Una <strong|successione reale> è una funzione che associa a ogni indice
  naturale <math|n> un numero reale <math|a<rsub|n>>. Si scrive
  <math|(a<rsub|n>)> per indicare l'intera successione.

  L'indice dice quale termine stiamo considerando: nella successione
  <math|a<rsub|n>=(-1)<rsup|n>> i valori sono soltanto due, ma il loro ordine
  continua a cambiare.

  Nel seguito basta che la formula sia definita da un certo indice in poi.
  Per esempio <math|a<rsub|n>=1/(n-4)> è definita per ogni <math|n\<geq\>5>.
  I primi termini mancanti non impediscono di studiare che cosa accade per
  <math|n> grande.

  Invece <math|<sqrt|2025-n>> è definita soltanto per un numero finito di
  indici: non dà una successione reale da studiare all'infinito.

  Dire che una proprietà vale <strong|definitivamente> significa che vale per
  tutti gli indici successivi a una certa soglia:

  <\equation*>
    \<exists\>n<rsub|0>\<in\>\<bbb-N\><space|1em>\<forall\>n\<geq\>n<rsub|0>,<space|1em>P(n).
  </equation*>

  Dire che vale <strong|frequentemente> significa invece che, per quanto
  avanti andiamo, incontriamo ancora un indice che la soddisfa:

  <\equation*>
    \<forall\>n<rsub|0>\<in\>\<bbb-N\><space|1em>\<exists\>n\<geq\>n<rsub|0><space|1em>P(n).
  </equation*>

  Per esempio \S<math|n> è pari\T è vera frequentemente, ma non
  definitivamente. \S<math|n\<geq\>100>\T è vera definitivamente. La
  differenza è fra trovare ancora qualche indice e controllare tutti gli
  indici successivi. Nei limiti servirà il secondo tipo di controllo.

  <section|Limite finito: controllare una distanza>

  Per <math|a<rsub|n>=1/n>, chiedere una distanza da zero non superiore a
  <math|0,01> significa chiedere <math|1/n\<leq\>0,01>. Tutti gli indici
  <math|n\<geq\>100> funzionano. Se chiediamo <math|0,001>, basta andare
  oltre <math|1000>.

  Il punto non è trovare una sola tolleranza che funzioni: dobbiamo saper
  rispondere a ogni tolleranza positiva.

  <\concetto|Limite finito di una successione>
    Scriviamo <math|a<rsub|n>\<rightarrow\>\<#2113\>>, con
    <math|\<#2113\>\<in\>\<bbb-R\>>, se

    <\equation*>
      \<forall\>\<varepsilon\>\<gtr\>0<space|1em>\<exists\>n<rsub|0>\<in\>\<bbb-N\><space|1em>\<forall\>n\<geq\>n<rsub|0>,<space|1em>\|a<rsub|n>-\<#2113\>\|\<leq\>\<varepsilon\>.
    </equation*>

    L'indice <math|n<rsub|0>> può dipendere da <math|\<varepsilon\>>. La
    disuguaglianza deve poi valere per tutti gli indici successivi. In questo
    caso la successione si dice <strong|convergente>.
  </concetto>

  Il simbolo <math|\<varepsilon\>> è la lettera greca epsilon e indica una
  distanza positiva, piccola quanto si vuole. La condizione equivale a
  <math|\<#2113\>-\<varepsilon\>\<leq\>a<rsub|n>\<leq\>\<#2113\>+\<varepsilon\>>
  definitivamente.

  Si può usare anche la disuguaglianza stretta: se sappiamo ottenere una
  distanza <math|\<leq\>\<varepsilon\>/2>, otteniamo una distanza
  <math|\<less\>\<varepsilon\>>.

  <figura|<image|assets/striscia.pdf|155.0mm|57.5mm||>|Fissata la striscia
  fra <math|\<#2113\>-\<varepsilon\>> e <math|\<#2113\>+\<varepsilon\>>,
  tutti i termini da un certo indice in poi devono rimanerci. Entrarci
  soltanto infinite volte non basta.>

  Torniamo a <math|1/n>. Fissiamo un qualunque <math|\<varepsilon\>\<gtr\>0>.
  La disuguaglianza desiderata <math|1/n\<leq\>\<varepsilon\>> equivale, per
  <math|n\<geq\>1>, a <math|n\<geq\>1/\<varepsilon\>>.

  Scegliamo dunque un intero <math|n<rsub|0>\<geq\>max{1,1/\<varepsilon\>}>.
  Per ogni <math|n\<geq\>n<rsub|0>> abbiamo
  <math|0\<less\>1/n\<leq\>\<varepsilon\>>. Abbiamo dimostrato il limite,
  perché la scelta funziona per ogni <math|\<varepsilon\>> iniziale.

  Scriviamo anche <math|1/n\<rightarrow\>0<rsup|+>>: il limite è zero e i
  termini sono strettamente positivi definitivamente. In generale
  <math|a<rsub|n>\<rightarrow\>\<#2113\><rsup|+>> aggiunge a
  <math|a<rsub|n>\<rightarrow\>\<#2113\>> la condizione
  <math|a<rsub|n>\<gtr\>\<#2113\>> definitivamente; <math|\<#2113\><rsup|->>
  richiede <math|a<rsub|n>\<less\>\<#2113\>>. Il segno indica il lato dal
  quale i termini si avvicinano, non un nuovo numero.

  <section|Limiti infiniti e unicità>

  I termini di <math|n<rsup|2>> non si avvicinano a un numero reale: superano
  ogni quota fissata. Scriviamo

  <\equation*>
    a<rsub|n>\<rightarrow\>+\<infty\><space|1em>\<Leftrightarrow\><space|1em>\<forall\>M\<in\>\<bbb-R\><space|1em>\<exists\>n<rsub|0><space|1em>\<forall\>n\<geq\>n<rsub|0>,<space|1em>a<rsub|n>\<geq\>M.
  </equation*>

  Per <math|-\<infty\>> si richiede invece <math|a<rsub|n>\<leq\>M>
  definitivamente, per ogni <math|M\<in\>\<bbb-R\>>. Le soglie possono essere
  molto negative. Queste successioni si dicono <strong|divergenti>
  rispettivamente a <math|+\<infty\>> e a <math|-\<infty\>>.

  Per verificare <math|n<rsup|2>\<rightarrow\>+\<infty\>>, fissiamo <math|M>.
  Se <math|M\<leq\>0>, ogni indice funziona. Se <math|M\<gtr\>0>, prendiamo
  un intero <math|n<rsub|0>\<geq\>max{1,M}>. Allora, per
  <math|n\<geq\>n<rsub|0>>, vale <math|n<rsup|2>\<geq\>n\<geq\>M>. La quota
  <math|M> era stata assegnata. Il nostro lavoro è stato trovare un indice
  dopo il quale tutti i termini la superano.

  Un limite, se esiste, è <strong|unico>. Per capire il caso finito,
  supponiamo che una successione converga sia a <math|\<#2113\>> sia a
  <math|m>, con <math|\<#2113\>\<neq\>m>. Scegliamo
  <math|\<varepsilon\>=\|\<#2113\>-m\|/3>. Definitivamente entrambe le
  distanze sarebbero <math|\<leq\>\<varepsilon\>>; dalla disuguaglianza
  triangolare seguirebbe

  <\equation*>
    \|\<#2113\>-m\|\<leq\>\|\<#2113\>-a<rsub|n>\|+\|a<rsub|n>-m\|\<leq\><frac|2|3>\|\<#2113\>-m\|,
  </equation*>

  impossibile per una distanza positiva.

  Un limite finito non può convivere con un limite infinito, perché i termini
  convergenti restano definitivamente in un intervallo limitato. E
  <math|+\<infty\>> e <math|-\<infty\>> si escludono: non si può essere
  definitivamente sopra 1 e sotto <math|-1>.

  Resta possibile che il limite <strong|non esista>. Per <math|(-1)<rsup|n>>
  escludiamo gli infiniti perché tutti i termini stanno fra <math|-1> e 1.

  Nessun limite finito funziona: con <math|\<varepsilon\>=1/2>, i termini
  uguali a 1 imporrebbero <math|\|1-\<#2113\>\|\<leq\>1/2>, quelli uguali a
  <math|-1> imporrebbero <math|\|-1-\<#2113\>\|\<leq\>1/2>. La triangolare
  darebbe <math|2\<leq\>1>. Entrambi i valori ricompaiono arbitrariamente
  avanti, quindi nessuna soglia evita il problema.

  <section|Limitatezza, segno e confronto>

  Una successione è <strong|limitata> se esiste <math|C\<geq\>0> tale che
  <math|\|a<rsub|n>\|\<leq\>C> per tutti gli indici del suo dominio. Se
  <math|a<rsub|n>\<rightarrow\>\<#2113\>\<in\>\<bbb-R\>>, scegliendo
  <math|\<varepsilon\>=1> controlliamo la coda con
  <math|\|a<rsub|n>\|\<leq\>\|\<#2113\>\|+1>.

  I termini che la precedono sono finiti: basta aumentare <math|C> per
  includerli. Ogni successione convergente è dunque limitata. Il viceversa è
  falso: <math|(-1)<rsup|n>> è il nostro controesempio.

  Se <math|a<rsub|n>\<rightarrow\>+\<infty\>>, la stessa idea dà una
  limitazione inferiore: la coda sta sopra zero e il prefisso finito ha un
  minimo. Per <math|-\<infty\>> si ottiene una limitazione superiore.

  La <strong|permanenza del segno> dice che, se
  <math|a<rsub|n>\<rightarrow\>\<#2113\>\<gtr\>0>, allora
  <math|a<rsub|n>\<gtr\>0> definitivamente. Cerchiamo una distanza che
  impedisca di raggiungere zero: <math|\<varepsilon\>=\<#2113\>/2> dà
  <math|a<rsub|n>\<geq\>\<#2113\>/2\<gtr\>0>. Per <math|\<#2113\>\<less\>0>
  si ragiona con <math|\<varepsilon\>=\|\<#2113\>\|/2>.

  Quando il limite è zero non segue un segno: <math|(-1)<rsup|n>/n> tende a
  zero cambiando lato a ogni passo.

  Se <math|a<rsub|n>\<leq\>b<rsub|n>> definitivamente e
  <math|a<rsub|n>\<rightarrow\>+\<infty\>>, allora
  <math|b<rsub|n>\<rightarrow\>+\<infty\>>.

  Infatti, fissata <math|M>, da un certo indice valgono sia
  <math|a<rsub|n>\<geq\>M> sia il confronto, dunque <math|b<rsub|n>\<geq\>M>.
  Prendiamo il massimo delle due soglie per far valere insieme le due
  informazioni. Analogamente, <math|b<rsub|n>\<rightarrow\>-\<infty\>> forza
  <math|a<rsub|n>\<rightarrow\>-\<infty\>>.

  <\concetto|Teorema dei carabinieri>
    Se <math|a<rsub|n>\<leq\>b<rsub|n>\<leq\>c<rsub|n>> definitivamente e
    <math|a<rsub|n>\<rightarrow\>\<#2113\>>,
    <math|c<rsub|n>\<rightarrow\>\<#2113\>>, con
    <math|\<#2113\>\<in\>\<bbb-R\>>, allora
    <math|b<rsub|n>\<rightarrow\>\<#2113\>>.
  </concetto>

  La ragione è che i due estremi chiudono la distanza da entrambi i lati.
  Fissato <math|\<varepsilon\>\<gtr\>0>, definitivamente abbiamo
  <math|a<rsub|n>\<geq\>\<#2113\>-\<varepsilon\>>,
  <math|c<rsub|n>\<leq\>\<#2113\>+\<varepsilon\>> e l'ordinamento dei tre
  termini. Oltre il massimo degli indici necessari,

  <\equation*>
    \<#2113\>-\<varepsilon\>\<leq\>a<rsub|n>\<leq\>b<rsub|n>\<leq\>c<rsub|n>\<leq\>\<#2113\>+\<varepsilon\>.
  </equation*>

  Questa è la definizione cercata.

  Per esempio <math|-1/n\<leq\>sin(n<rsup|2>)/n\<leq\>1/n>, quindi il termine
  centrale tende a zero anche se il seno oscilla. In generale
  <math|a<rsub|n>\<rightarrow\>0> equivale a
  <math|\|a<rsub|n>\|\<rightarrow\>0>, perché la distanza da zero è proprio
  il valore assoluto.

  <figura|<image|assets/carabinieri.pdf|155.0mm|55.0mm||>|I termini centrali
  possono salire e scendere. Restano però fra due successioni che tendono
  entrambe a <math|\<#2113\>>, e quindi si avvicinano anch'essi a
  <math|\<#2113\>>.>

  Se due successioni hanno limiti finiti e sono ordinate definitivamente, i
  limiti conservano l'ordine largo. Per esempio, se fosse
  <math|\<#2113\>\<gtr\>m> pur avendo <math|a<rsub|n>\<leq\>b<rsub|n>>,
  scegliendo tolleranza <math|(\<#2113\>-m)/3> i termini sarebbero
  definitivamente ordinati al contrario.

  Le disuguaglianze strette invece possono diventare uguaglianze:
  <math|1-1/n\<less\>1> per ogni <math|n\<geq\>1>, ma il limite è 1.

  Convergere non significa essere monotoni: <math|(2+(-1)<rsup|n>)/n> tende a
  <math|0<rsup|+>>, perché sta fra <math|1/n> e <math|3/n>, ma continua a
  risalire.

  Anche divergere non impone la monotonia. Nel capitolo successivo vedremo
  ciò che la monotonia permette davvero di concludere.

  <\verifica|7>
    <strong|1.> Dimostra con la definizione che
    <math|n/(n+1)\<rightarrow\>1<rsup|->>. Parti dalla distanza da 1 e
    determina una soglia in funzione di <math|\<varepsilon\>>.

    <strong|2.> Studia <math|a<rsub|n>=n+2(-1)<rsup|n>>. Ha limite? È
    definitivamente crescente? Giustifica entrambe le risposte.
  </verifica>

  <chapter|Completezza, successioni monotone e numero di Nepero>

  <\inbreve>
    Possiamo sapere che un limite esiste prima di conoscerne il valore?
    Ripartiamo dal supremo e da una successione che cresce senza superare una
    barriera. Costruiremo così il numero e; poi impareremo a calcolare somme,
    prodotti e quozienti di limiti.
  </inbreve>

  <section|Il teorema delle successioni monotone>

  La successione <math|1-1/n>, per <math|n\<geq\>1>, cresce e resta sotto 1.
  Il suo limite è il più piccolo maggiorante dei termini. Non è un caso
  isolato.

  Una successione è <strong|debolmente crescente> se
  <math|a<rsub|n+1>\<geq\>a<rsub|n>> per ogni indice; è <strong|strettamente
  crescente> se vale <math|\<gtr\>>. Con <math|\<leq\>> o <math|\<less\>>
  otteniamo le versioni decrescenti.

  Confrontare termini consecutivi equivale a confrontare due indici
  qualsiasi: se <math|m\<gtr\>n>, la catena dei confronti intermedi dà
  <math|a<rsub|m>\<geq\>a<rsub|n>> nel caso crescente.

  <\concetto|Convergenza delle successioni monotone>
    Una successione crescente e limitata superiormente converge al supremo
    dell'insieme dei suoi termini. Se non è limitata superiormente, tende a
    <math|+\<infty\>>.

    Una successione decrescente e limitata inferiormente converge all'infimo
    dei suoi termini. Se non è limitata inferiormente, tende a
    <math|-\<infty\>>.
  </concetto>

  Vediamo perché il supremo è la scelta giusta. Sia
  <math|\<#2113\>=sup{a<rsub|n>}> finito. Tutti i termini stanno sotto
  <math|\<#2113\>>, dunque metà del controllo è già disponibile.

  Per ottenere l'altra metà fissiamo <math|\<varepsilon\>\<gtr\>0>. Il numero
  <math|\<#2113\>-\<varepsilon\>> non è un maggiorante, perciò esiste un
  termine <math|a<rsub|n<rsub|0>>\<gtr\>\<#2113\>-\<varepsilon\>>. Da solo
  sarebbe soltanto un termine vicino al supremo. La monotonia lo trasforma
  nel controllo di tutta la coda:

  <\equation*>
    \<#2113\>-\<varepsilon\>\<less\>a<rsub|n<rsub|0>>\<leq\>a<rsub|n>\<leq\>\<#2113\>\<leq\>\<#2113\>+\<varepsilon\><space|1em>(n\<geq\>n<rsub|0>).
  </equation*>

  Abbiamo così dimostrato <math|a<rsub|n>\<rightarrow\>\<#2113\>>. Qui la
  completezza garantisce l'esistenza di <math|\<#2113\>>; la monotonia
  impedisce di tornare indietro dopo averlo avvicinato.

  Se i termini non sono limitati superiormente, fissata <math|M> ne esiste
  uno con <math|a<rsub|n<rsub|0>>\<geq\>M>. Tutti i successivi gli stanno
  sopra, quindi <math|a<rsub|n>\<rightarrow\>+\<infty\>>.

  Per la versione decrescente applichiamo quanto provato a <math|-a<rsub|n>>:
  il suo supremo è l'opposto dell'infimo dei termini originali.

  <figura|<image|assets/monotona.pdf|150.0mm|52.5mm||>|Il supremo fornisce un
  termine sopra <math|\<#2113\>-\<varepsilon\>>. La monotonia trattiene sopra
  quella quota tutti i successivi; il fatto che <math|\<#2113\>> sia
  maggiorante li controlla dall'alto.>

  Una successione debolmente crescente può raggiungere il proprio limite e
  poi restarci. Per questo non sempre arriva da sinistra in senso stretto. Se
  è strettamente crescente e ha limite finito, ogni termine è invece
  strettamente minore del limite: raggiungerlo costringerebbe il termine
  successivo a superare il supremo.

  <section|Il numero di Nepero: costruire un nuovo limite>

  Consideriamo <math|e<rsub|n>=(1+1/n)<rsup|n>>, per <math|n\<geq\>1>. I
  primi termini sono <math|2>, <math|9/4>, <math|64/27>. La base diminuisce e
  l'esponente cresce: non basta guardare uno dei due per capire il risultato.
  Dimostreremo che <math|(e<rsub|n>)> cresce e rimane limitata. Il teorema
  appena provato farà esistere il limite.

  <subsection|La monotonia: fare comparire Bernoulli>

  Proviamo prima a confrontare <math|e<rsub|3>=(4/3)<rsup|3>> con
  <math|e<rsub|2>=(3/2)<rsup|2>>. Hanno esponenti diversi. Portiamo la
  seconda potenza al cubo, compensando con un fattore <math|2/3>:

  <\equation*>
    e<rsub|2>=<around*|(|<frac|3|2>|)><rsup|3><frac|2|3>,<space|1em>e<rsub|3>=<around*|(|<frac|3|2>|)><rsup|3><around*|(|<frac|8|9>|)><rsup|3>.
  </equation*>

  Ora il fattore <math|(3/2)<rsup|3>> è comune e positivo. Resta da
  confrontare <math|(8/9)<rsup|3>> con <math|2/3>. Bernoulli ci dà proprio

  <\equation*>
    <around*|(|1-<frac|1|9>|)><rsup|3>\<geq\>1-<frac|3|9>=<frac|2|3>.
  </equation*>

  Questa prova suggerisce il passaggio generale: confrontare <math|e<rsub|n>>
  con <math|e<rsub|n-1>>, per <math|n\<geq\>2>, portando entrambe le potenze
  all'esponente <math|n>. Scriviamo

  <\equation*>
    e<rsub|n-1>=<around*|(|<frac|n|n-1>|)><rsup|n><frac|n-1|n>.
  </equation*>

  Tutti i fattori sono positivi. Dividendo il confronto desiderato per
  <math|(n/(n-1))<rsup|n>>, otteniamo l'equivalenza

  <\equation*>
    e<rsub|n>\<geq\>e<rsub|n-1><space|1em>\<Leftrightarrow\><space|1em><around*|(|1-<frac|1|n<rsup|2>>|)><rsup|n>\<geq\>1-<frac|1|n>.
  </equation*>

  Ora riconosciamo Bernoulli: <math|(1+t)<rsup|n>\<geq\>1+n*t> per
  <math|t\<geq\>-1>. Con <math|t=-1/n<rsup|2>> dà esattamente l'ultima
  disuguaglianza. La scelta dell'esponente comune ha dunque reso applicabile
  uno strumento già dimostrato.

  <subsection|Una barriera superiore: controllare gli addendi>

  Per trovare una barriera proviamo a sviluppare il prodotto nel caso
  <math|n=3>:

  <\equation*>
    <around*|(|1+<frac|1|3>|)><rsup|3>=1+3\<cdot\><frac|1|3>+3\<cdot\><frac|1|3<rsup|2>>+<frac|1|3<rsup|3>>.
  </equation*>

  Il coefficiente 3 davanti a <math|1/3<rsup|2>> conta i modi di scegliere
  due dei tre fattori da cui prendere <math|1/3>. Se contassimo le scelte in
  ordine avremmo <math|3\<cdot\>2=6> possibilità; ogni coppia sarebbe contata
  due volte. Perciò il coefficiente è <math|3\<cdot\>2/2=3>.

  In generale, nel prodotto di <math|n> fattori <math|(1+1/n)>, il termine
  con <math|k> fattori uguali a <math|1/n> compare <math|<binom|n|k>> volte.
  Il simbolo <math|<binom|n|k>> si legge \Sn su k\T ed è un
  <strong|coefficiente binomiale>. Ponendo
  <math|k!=1\<cdot\>2\<cdot\>\<ldots\>\<cdot\>k> e <math|0!=1>, abbiamo

  <\equation*>
    <binom|n|k>=<frac|n(n-1)\<cdot\>\<cdot\>\<cdot\>(n-k+1)|k!>.
  </equation*>

  La formula conta le scelte dei <math|k> fattori: contandole in ordine
  avremmo <math|n(n-1)\<cdot\>\<cdot\>\<cdot\>(n-k+1)> possibilità, ma ogni
  scelta è ripetuta <math|k!> volte.

  Per <math|k=0> si pone <math|<binom|n|0>=1>: non scegliere nessun fattore è
  una sola possibilità e il prodotto vuoto vale 1. Questa espansione è il
  <strong|binomio di Newton>.

  Come rendiamo la somma più semplice? Nel caso con tre fattori, il termine
  quadratico era <math|(3\<cdot\>2)/(2\<cdot\>3<rsup|2>)\<leq\>1/2> e quello
  cubico era <math|(3\<cdot\>2\<cdot\>1)/(6\<cdot\>3<rsup|3>)\<leq\>1/6>. In
  generale ogni fattore del numeratore è <math|\<leq\>n>. Dopo aver diviso
  per <math|n<rsup|k>>, resta una quantità al più <math|1/k!>. Perciò

  <\equation*>
    e<rsub|n>=<big|sum><rsub|k=0><rsup|n><binom|n|k><frac|1|n<rsup|k>>\<leq\>1+<big|sum><rsub|k=1><rsup|n><frac|1|k!>.
  </equation*>

  Resta da controllare i reciproci dei fattoriali con una somma che sappiamo
  calcolare. I primi confronti sono <math|1!=1>, <math|2!=2>,
  <math|3!=6\<geq\>4>.

  Per ogni <math|k\<geq\>1> vale <math|k!\<geq\>2<rsup|k-1>>: dopo il fattore
  1 ci sono <math|k-1> fattori, ciascuno almeno 2. Quindi

  <\equation*>
    e<rsub|n>\<leq\>1+<big|sum><rsub|k=1><rsup|n><frac|1|2<rsup|k-1>>=3-<frac|1|2<rsup|n-1>>\<less\>3.
  </equation*>

  La somma è geometrica. Non serve introdurre una somma infinita: abbiamo una
  stima per ciascun <math|n>. La successione è dunque crescente e limitata
  superiormente.

  <\concetto|Numero di Nepero>
    Il numero <math|e> è il limite reale

    <\equation*>
      e=lim<rsub|n\<rightarrow\>+\<infty\>><around*|(|1+<frac|1|n>|)><rsup|n>.
    </equation*>

    Vale <math|2\<less\>e\<less\>3>; il suo valore approssimato è
    <math|2,71828\<ldots\>>.
  </concetto>

  Le disuguaglianze strette meritano attenzione. Dal lato inferiore
  <math|e\<geq\>e<rsub|2>=9/4\<gtr\>2>.

  Dal lato superiore, sapere <math|e<rsub|n>\<less\>3> non esclude da solo il
  limite 3. Per escluderlo dobbiamo restare sotto 3 di una distanza fissa.
  Nella stima del termine <math|k=3> abbiamo sostituito <math|1/6> con
  <math|1/4>, aumentando la somma di <math|1/12>. Possiamo recuperare almeno
  questo margine. Per <math|n\<geq\>3> possiamo quindi migliorare la stima in
  <math|e<rsub|n>\<leq\>3-1/12=35/12>. Passando al limite otteniamo
  <math|e\<leq\>35/12\<less\>3>.

  <section|Algebra dei limiti: somma, prodotto e reciproco>

  Per usare un limite dentro un calcolo dobbiamo sapere quali operazioni lo
  conservano. Se <math|a<rsub|n>\<rightarrow\>a> e
  <math|b<rsub|n>\<rightarrow\>b> con limiti reali, allora

  <\equation*>
    a<rsub|n>+b<rsub|n>\<rightarrow\>a+b,<space|2em>a<rsub|n>b<rsub|n>\<rightarrow\>a*b.
  </equation*>

  Se inoltre <math|b\<neq\>0>, allora <math|b<rsub|n>\<neq\>0>
  definitivamente e <math|a<rsub|n>/b<rsub|n>\<rightarrow\>a/b>. Vediamo le
  ragioni, perché gli stessi passaggi torneranno nella continuità e nelle
  derivate.

  Per la <strong|somma>, la distanza dal risultato desiderato è al più

  <\equation*>
    \|(a<rsub|n>+b<rsub|n>)-(a+b)\|\<leq\>\|a<rsub|n>-a\|+\|b<rsub|n>-b\|.
  </equation*>

  Fissato <math|\<varepsilon\>\<gtr\>0>, chiediamo a ciascuna successione una
  distanza <math|\<leq\>\<varepsilon\>/2>. Le due condizioni valgono insieme
  oltre il massimo dei rispettivi indici. La somma delle distanze è allora
  <math|\<leq\>\<varepsilon\>>.

  Per il <strong|prodotto> cerchiamo di far comparire le distanze già
  controllabili. Aggiungiamo e sottraiamo <math|a<rsub|n>b>:

  <\equation*>
    a<rsub|n>b<rsub|n>-a*b=a<rsub|n>(b<rsub|n>-b)+b(a<rsub|n>-a).
  </equation*>

  Poiché <math|(a<rsub|n>)> converge, esiste <math|C\<geq\>1> con
  <math|\|a<rsub|n>\|\<leq\>C>.

  Dato <math|\<varepsilon\>\<gtr\>0>, rendiamo
  <math|\|b<rsub|n>-b\|\<leq\>\<varepsilon\>/(2C)> e
  <math|\|a<rsub|n>-a\|\<leq\>\<varepsilon\>/(2(\|b\|+1))>. La triangolare dà
  allora una distanza dal prodotto limite
  <math|\<leq\>\<varepsilon\>/2+\<varepsilon\>/2=\<varepsilon\>>. I
  denominatori sono positivi anche quando <math|b=0>.

  Per il <strong|reciproco>, se <math|b\<neq\>0>, la convergenza garantisce
  definitivamente <math|\|b<rsub|n>-b\|\<leq\>\|b\|/2>.

  Scrivendo <math|b=(b-b<rsub|n>)+b<rsub|n>> e usando la triangolare,
  otteniamo <math|\|b\|\<leq\>\|b-b<rsub|n>\|+\|b<rsub|n>\|>. Quindi
  <math|\|b<rsub|n>\|\<geq\>\|b\|/2\<gtr\>0>. Ora

  <\equation*>
    <around*|\||<frac|1|b<rsub|n>>-<frac|1|b>|\|>=<frac|\|b<rsub|n>-b\||\|b<rsub|n>\|\|b\|>\<leq\><frac|2|\|b\|<rsup|2>>\|b<rsub|n>-b\|\<rightarrow\>0.
  </equation*>

  Il quoziente si ottiene come prodotto per il reciproco. La sottrazione è
  una somma con l'opposto.

  <section|Limiti infiniti e forme indeterminate>

  La scrittura <math|\<bbb-R\>\<cup\>{-\<infty\>,+\<infty\>}> indica la
  <strong|retta reale estesa>. Gli infiniti descrivono comportamenti, non
  sono numeri reali su cui eseguire liberamente tutte le operazioni.

  Alcune regole hanno un significato preciso: se
  <math|a<rsub|n>\<rightarrow\>+\<infty\>> e <math|(b<rsub|n>)> è limitata
  inferiormente da <math|B>, allora <math|a<rsub|n>+b<rsub|n>\<rightarrow\>+\<infty\>>.
  Infatti, per superare una soglia <math|M>, basta che
  <math|a<rsub|n>\<geq\>M-B>. Questo copre sia una somma con un limite finito
  sia una somma di due termini che tendono a <math|+\<infty\>>.

  Se <math|a<rsub|n>\<rightarrow\>a\<gtr\>0> e
  <math|b<rsub|n>\<rightarrow\>+\<infty\>>, il prodotto tende a
  <math|+\<infty\>>, perché definitivamente <math|a<rsub|n>\<geq\>a/2>. Se
  <math|a\<less\>0>, il prodotto tende a <math|-\<infty\>>.

  Un reciproco di una successione che tende a <math|+\<infty\>> tende a
  <math|0<rsup|+>>: per avere <math|0\<less\>1/b<rsub|n>\<leq\>\<varepsilon\>>
  basta imporre <math|b<rsub|n>\<geq\>1/\<varepsilon\>>. I casi con segni
  opposti si ricavano cambiando segno.

  <\attenzione|Forma indeterminata non significa limite inesistente>
    Le forme <math|\<infty\>-\<infty\>>, <math|0\<cdot\>\<infty\>>,
    <math|0/0> e <math|\<infty\>/\<infty\>> non determinano un risultato dai
    soli limiti dei pezzi.

    Per esempio <math|2n-n\<rightarrow\>+\<infty\>> e
    <math|2n-3n\<rightarrow\>-\<infty\>>. Invece
    <math|2n-(2n-5)\<rightarrow\>5>, mentre <math|2n-(2n+(-1)<rsup|n>)> non
    ha limite. In tutti i casi sottraiamo due successioni che tendono a
    <math|+\<infty\>>.
  </attenzione>

  Anche una divisione per un termine che tende a zero richiede cura:
  <math|1/b<rsub|n>\<rightarrow\>+\<infty\>> se
  <math|b<rsub|n>\<rightarrow\>0<rsup|+>>, e tende a <math|-\<infty\>> se
  <math|b<rsub|n>\<rightarrow\>0<rsup|->>. Senza informazione sul segno non
  c'è una conclusione generale.

  Un esempio utile è

  <\equation*>
    <frac|n<rsup|2>+3n+1|2n<rsup|2>-7>=<frac|1+3/n+1/n<rsup|2>|2-7/n<rsup|2>>\<rightarrow\><frac|1|2>.
  </equation*>

  Abbiamo diviso sopra e sotto per <math|n<rsup|2>> per ottenere limiti
  finiti e un denominatore limite non nullo. Le regole si applicano alla
  nuova scrittura, mentre la forma iniziale <math|\<infty\>/\<infty\>> non
  permetteva di concludere.

  <\verifica|8>
    <strong|1.> Una successione è definita da <math|a<rsub|1>=1>,
    <math|a<rsub|n+1>=<sqrt|2+a<rsub|n>>>. Dimostra per induzione che è
    crescente e che <math|1\<leq\>a<rsub|n>\<leq\>2>. Deduci l'esistenza del
    limite e calcolalo usando l'identità <math|a<rsub|n+1><rsup|2>=2+a<rsub|n>>.

    <strong|2.> Calcola il limite di <math|n<rsup|2>-n cos n>. Cerca un
    confronto che controlli anche i valori negativi del coseno.
  </verifica>

  <chapter|Radici, rapporti e gerarchia degli infiniti>

  <\inbreve>
    Le successioni <math|n<rsup|5>>, <math|2<rsup|n>> e <math|n!> tendono
    tutte a <math|+\<infty\>>: come capiamo quale cresce più rapidamente?
    Studieremo i loro quozienti. Una radice o il rapporto fra termini
    consecutivi ci aiuterà spesso a semplificare il confronto.
  </inbreve>

  <section|Potenze e radici senza circolarità>

  Per dimostrare <math|2<rsup|n>\<rightarrow\>+\<infty\>> potremmo essere
  tentati di risolvere <math|2<rsup|n>\<geq\>M> con un logaritmo. Ma la
  possibilità di raggiungere ogni quota serve proprio a giustificare il
  dominio del logaritmo. Bernoulli evita questo circolo:

  <\equation*>
    a<rsup|n>=(1+(a-1))<rsup|n>\<geq\>1+n(a-1)\<rightarrow\>+\<infty\><space|1em>(a\<gtr\>1).
  </equation*>

  Per <math|0\<less\>a\<less\>1> passiamo al reciproco:
  <math|a<rsup|n>=1/(1/a)<rsup|n>\<rightarrow\>0>. Per <math|a=1> il limite è
  1; per <math|a=0>, con <math|n\<geq\>1>, è zero.

  Se la base è negativa e di valore assoluto minore di 1, il valore assoluto
  dei termini tende a zero e quindi anche i termini tendono a zero. Una base
  <math|\<leq\>-1> produce invece due comportamenti diversi sui pari e sui
  dispari.

  Per una radice a indice variabile il fenomeno è diverso: per ogni numero
  fisso <math|a\<gtr\>0> vale

  <\equation*>
    <sqrt|a|n>\<rightarrow\>1.
  </equation*>

  Se <math|a\<geq\>1>, Bernoulli con <math|t=(a-1)/n> dà
  <math|(1+(a-1)/n)<rsup|n>\<geq\>a>. Prendendo la radice, che conserva
  l'ordine dei numeri non negativi,

  <\equation*>
    1\<leq\><sqrt|a|n>\<leq\>1+<frac|a-1|n>.
  </equation*>

  I carabinieri concludono. Se <math|0\<less\>a\<less\>1>, usiamo il
  reciproco della radice di <math|1/a>.

  Non abbiamo scritto <math|a<rsup|1/n>\<rightarrow\>a<rsup|0>>: la
  continuità dell'esponenziale verrà giustificata proprio usando questo
  risultato.

  Anche <math|<sqrt|n|n>\<rightarrow\>1>, ma qui il radicando non è fisso. La
  stima lineare di Bernoulli darebbe soltanto <math|<sqrt|n|n>\<leq\>2-1/n>,
  troppo lontano da 1. Proviamo allora a conservare il termine quadratico del
  binomio di Newton. Per <math|t\<geq\>0> e <math|n\<geq\>2>,

  <\equation*>
    (1+t)<rsup|n>\<geq\><binom|n|2>t<rsup|2>=<frac|n(n-1)|2>t<rsup|2>.
  </equation*>

  Vogliamo che l'ultimo membro sia almeno <math|n>, perché allora
  <math|(1+t)<rsup|n>\<geq\>n> e quindi <math|1+t\<geq\><sqrt|n|n>>.
  Risolviamo <math|n(n-1)t<rsup|2>/2=n>: otteniamo <math|t=<sqrt|2/(n-1)>>.
  Questa scelta tende a zero, proprio ciò che ci serve.

  Troviamo così

  <\equation*>
    1\<leq\><sqrt|n|n>\<leq\>1+<sqrt|<frac|2|n-1>>\<rightarrow\>1.
  </equation*>

  L'ultima radice tende a zero direttamente dalla definizione: per renderla
  <math|\<leq\>\<varepsilon\>> basta <math|n\<geq\>1+2/\<varepsilon\><rsup|2>>.

  <section|Criteri della radice e del rapporto>

  Per la successione geometrica <math|a<rsub|n>=(3/4)<rsup|n>> la radice
  <math|n>-esima vale sempre <math|3/4>, e i termini tendono a zero. Per
  <math|a<rsub|n>=(5/4)<rsup|n>> la radice vale <math|5/4>, e i termini
  tendono a <math|+\<infty\>>.

  Questo suggerisce di confrontare con 1 il limite <math|\<#2113\>> di
  <math|<sqrt|a<rsub|n>|n>>, quando i termini sono definitivamente non
  negativi. Una radice stabilmente sopra 1 significa che <math|a<rsub|n>>
  contiene almeno una crescita geometrica; stabilmente sotto 1 significa che
  è schiacciata da una geometrica che si annulla.

  <\concetto|Criterio della radice per successioni>
    Supponiamo <math|a<rsub|n>\<geq\>0> definitivamente e
    <math|<sqrt|a<rsub|n>|n>\<rightarrow\>\<#2113\>\<in\>[0,+\<infty\>]>. Se
    <math|\<#2113\>\<less\>1>, allora <math|a<rsub|n>\<rightarrow\>0>. Se
    <math|\<#2113\>\<gtr\>1>, incluso <math|\<#2113\>=+\<infty\>>, allora
    <math|a<rsub|n>\<rightarrow\>+\<infty\>>. Se <math|\<#2113\>=1>, il
    criterio non determina il limite di <math|(a<rsub|n>)>.
  </concetto>

  Per la prova, se <math|\<#2113\>\<less\>1>, scegliamo un numero <math|q>
  strettamente fra <math|\<#2113\>> e 1. Definitivamente
  <math|0\<leq\><sqrt|a<rsub|n>|n>\<leq\>q>, dunque
  <math|0\<leq\>a<rsub|n>\<leq\>q<rsup|n>\<rightarrow\>0>.

  Se <math|1\<less\>\<#2113\>\<less\>+\<infty\>>, scegliamo
  <math|1\<less\>q\<less\>\<#2113\>>; definitivamente
  <math|a<rsub|n>\<geq\>q<rsup|n>\<rightarrow\>+\<infty\>>. Per
  <math|\<#2113\>=+\<infty\>> funziona qualunque <math|q\<gtr\>1>.

  <figura|<image|assets/geometrica.pdf|155.0mm|52.5mm||>|La scelta di un
  numero fisso <math|q> fra il limite della radice e 1 produce una geometrica
  che controlla i termini da un certo indice in poi.>

  Il <strong|criterio del rapporto> ha la stessa conclusione se
  <math|a<rsub|n>\<gtr\>0> definitivamente e
  <math|a<rsub|n+1>/a<rsub|n>\<rightarrow\>\<#2113\>\<in\>[0,+\<infty\>]>. La
  positività serve a dividere e a ripetere le disuguaglianze senza cambiarne
  il verso.

  Se, per esempio, il rapporto è <math|\<geq\>q\<gtr\>1> per
  <math|n\<geq\>N>, allora

  <\equation*>
    a<rsub|N+1>\<geq\>q*a<rsub|N>,<space|1em>a<rsub|N+2>\<geq\>q<rsup|2>a<rsub|N>,<space|1em>a<rsub|n>\<geq\>a<rsub|N>q<rsup|n-N>.
  </equation*>

  L'ultimo membro tende a <math|+\<infty\>>. Se il rapporto è invece
  <math|\<leq\>q\<less\>1>, con <math|q\<gtr\>0>, l'iterazione dà
  <math|0\<less\>a<rsub|n>\<leq\>a<rsub|N>q<rsup|n-N>\<rightarrow\>0>.

  Dal limite del rapporto scegliamo un <math|q> opportuno esattamente come
  per la radice. In realtà basta il confronto definitivo con <math|q>:
  conoscere l'intero limite non è necessario.

  Per <math|\<#2113\>=1> troviamo esempi molto diversi: <math|a<rsub|n>=n>,
  <math|a<rsub|n>=1/n> e <math|a<rsub|n>=1> hanno tutti rapporto e radice
  <math|n>-esima tendenti a 1, ma i termini tendono rispettivamente a
  <math|+\<infty\>>, a zero e a 1. Questi sono criteri per successioni; non
  stiamo ancora studiando la convergenza di serie.

  <section|Dal rapporto alla radice>

  Il rapporto offre anche un'informazione più precisa: se
  <math|a<rsub|n>\<gtr\>0> definitivamente e
  <math|a<rsub|n+1>/a<rsub|n>\<rightarrow\>\<#2113\>\<in\>[0,+\<infty\>]>,
  allora

  <\equation*>
    <sqrt|a<rsub|n>|n>\<rightarrow\>\<#2113\>.
  </equation*>

  Per <math|0\<less\>\<#2113\>\<less\>+\<infty\>>, prendiamo due numeri
  positivi <math|p\<less\>\<#2113\>\<less\>q>. Definitivamente
  <math|p\<leq\>a<rsub|n+1>/a<rsub|n>\<leq\>q>. Iterando a partire da un
  opportuno <math|N>, troviamo

  <\equation*>
    a<rsub|N>p<rsup|n-N>\<leq\>a<rsub|n>\<leq\>a<rsub|N>q<rsup|n-N>.
  </equation*>

  Prendiamo le radici:

  <\equation*>
    p<sqrt|a<rsub|N>p<rsup|-N>|n>\<leq\><sqrt|a<rsub|n>|n>\<leq\>q<sqrt|a<rsub|N>q<rsup|-N>|n>.
  </equation*>

  I radicandi ai lati sono costanti positive, perciò le loro radici tendono a
  1. I due estremi tendono a <math|p> e a <math|q>.

  Dato un <math|\<varepsilon\>\<gtr\>0> piccolo rispetto a <math|\<#2113\>>,
  scegliamo <math|p=\<#2113\>-\<varepsilon\>/2>,
  <math|q=\<#2113\>+\<varepsilon\>/2>. Definitivamente il membro sinistro
  supera <math|\<#2113\>-\<varepsilon\>> e il destro è minore di
  <math|\<#2113\>+\<varepsilon\>>: è la definizione del limite della radice.

  Se <math|\<#2113\>=0>, per ogni <math|\<varepsilon\>\<gtr\>0> usiamo
  soltanto la stima superiore con <math|q=\<varepsilon\>/2>; il suo membro
  tende a <math|\<varepsilon\>/2>, dunque è definitivamente
  <math|\<less\>\<varepsilon\>>.

  Se <math|\<#2113\>=+\<infty\>>, per ogni soglia <math|M\<gtr\>0> usiamo la
  stima inferiore con <math|p=2M>; il suo membro tende a <math|2M> e supera
  definitivamente <math|M>. Questo completa anche i casi estremi.

  Il teorema vale per <math|\<#2113\>=1>, mentre i due criteri precedenti lì
  non decidevano il limite dei termini.

  Il viceversa non vale: per la successione <math|1,2,1,2,\<ldots\>> le
  radici tendono a 1, strette fra 1 e <math|<sqrt|2|n>>, ma i rapporti
  alternano 2 e <math|1/2>.

  <section|La gerarchia degli infiniti>

  Confrontiamo ora <math|3<rsup|n>> con <math|n<rsup|5>>. Per
  <math|a<rsub|n>=3<rsup|n>/n<rsup|5>> il rapporto vale

  <\equation*>
    <frac|a<rsub|n+1>|a<rsub|n>>=3<around*|(|<frac|n|n+1>|)><rsup|5>\<rightarrow\>3\<gtr\>1.
  </equation*>

  Quindi <math|3<rsup|n>/n<rsup|5>\<rightarrow\>+\<infty\>>: l'esponenziale
  cresce più rapidamente della potenza.

  Lo stesso conto vale per una base <math|a\<gtr\>1> e un esponente intero
  fissato. Vale anche per ogni esponente reale <math|\<alpha\>\<gtr\>0>:
  basta scegliere un intero <math|m\<geq\>\<alpha\>> e confrontare
  <math|n<rsup|\<alpha\>>\<leq\>n<rsup|m>> per <math|n\<geq\>1>.

  Per <math|b<rsub|n>=n!/3<rsup|n>> il rapporto è
  <math|(n+1)/3\<rightarrow\>+\<infty\>>, dunque il fattoriale cresce più
  rapidamente dell'esponenziale.

  Per <math|c<rsub|n>=n<rsup|n>/n!> troviamo invece

  <\equation*>
    <frac|c<rsub|n+1>|c<rsub|n>>=<around*|(|1+<frac|1|n>|)><rsup|n>\<rightarrow\>e\<gtr\>1.
  </equation*>

  Perciò <math|n<rsup|n>> cresce più rapidamente del fattoriale. In forma
  compatta, per <math|a\<gtr\>1> e <math|\<alpha\>\<gtr\>0>,

  <\equation*>
    <frac|n<rsup|\<alpha\>>|a<rsup|n>>\<rightarrow\>0,<space|2em><frac|a<rsup|n>|n!>\<rightarrow\>0,<space|2em><frac|n!|n<rsup|n>>\<rightarrow\>0.
  </equation*>

  Il rapporto del reciproco dell'ultima successione tende a <math|e>; quello
  di <math|d<rsub|n>=n!/n<rsup|n>> tende a <math|1/e>. Il teorema
  rapporto-radice dà quindi il risultato più preciso

  <\equation*>
    <frac|<sqrt|n!|n>|n>=<sqrt|<frac|n!|n<rsup|n>>|n>\<rightarrow\><frac|1|e>.
  </equation*>

  Per un polinomio <math|P(n)> di grado <math|m\<geq\>0> con coefficiente
  dominante <math|c\<gtr\>0>, la radice <math|n>-esima tende a 1.

  Separiamo il termine di grado massimo scrivendo
  <math|P(n)=c*n<rsup|m>(1+r<rsub|n>)>, con <math|r<rsub|n>\<rightarrow\>0>.
  Il fattore <math|<sqrt|c|n>> tende a 1 e <math|(<sqrt|n|n>)<rsup|m>> tende
  a 1.

  Definitivamente <math|1/2\<leq\>1+r<rsub|n>\<leq\>2>, quindi anche la
  radice dell'ultimo fattore tende a 1 per confronto fra le radici delle due
  costanti. Il radicando è positivo definitivamente; moltiplicando i tre
  fattori otteniamo il limite cercato.

  Le gerarchie aiutano anche dentro una radice. Per esempio

  <\equation*>
    <sqrt|7<rsup|n>-n<rsup|7>+n<rsup|5>cos(n!)|n>=7<sqrt|1-<frac|n<rsup|7>|7<rsup|n>>+<frac|n<rsup|5>cos(n!)|7<rsup|n>>|n>\<rightarrow\>7.
  </equation*>

  Il radicando finale tende a 1 perché entrambe le correzioni tendono a zero,
  la seconda anche in valore assoluto. È dunque definitivamente fra
  <math|1/2> e 2; la sua radice <math|n>-esima è fra <math|<sqrt|1/2|n>> e
  <math|<sqrt|2|n>>, che tendono a 1. Questo passaggio controlla anche che la
  radice sia definita definitivamente.

  <section|Cancellazioni e somme con molti termini>

  Le gerarchie non autorizzano a perdere un termine prima di una sottrazione.
  In <math|<sqrt|n<rsup|2>+7n+4>-n> la parte di ordine <math|n> si cancella:
  proprio la correzione apparentemente piccola determina il limite. Usiamo
  l'identità <math|(u-v)(u+v)=u<rsup|2>-v<rsup|2>>:

  <\equation*>
    <sqrt|n<rsup|2>+7n+4>-n=<frac|7n+4|<sqrt|n<rsup|2>+7n+4>+n>=<frac|7+4/n|<sqrt|1+7/n+4/n<rsup|2>>+1>\<rightarrow\><frac|7|2>.
  </equation*>

  Per giustificare il limite della radice basta osservare che, per
  <math|t\<geq\>-1>,

  <\equation*>
    \|<sqrt|1+t>-1\|=<frac|\|t\||<sqrt|1+t>+1>\<leq\>\|t\|.
  </equation*>

  Con <math|t=7/n+4/n<rsup|2>> il membro destro tende a zero.

  <subsection|La stessa idea per una radice cubica>

  Per radici cubiche si usa <math|u<rsup|3>-v<rsup|3>=(u-v)(u<rsup|2>+u*v+v<rsup|2>)>.
  Poniamo <math|u<rsub|n>=<sqrt|n<rsup|3>+7n<rsup|2>+4|3>>. La differenza
  diventa

  <\equation*>
    u<rsub|n>-n=<frac|7n<rsup|2>+4|u<rsub|n><rsup|2>+n*u<rsub|n>+n<rsup|2>>=<frac|7+4/n<rsup|2>|(u<rsub|n>/n)<rsup|2>+u<rsub|n>/n+1>.
  </equation*>

  Basta quindi provare <math|u<rsub|n>/n\<rightarrow\>1> per ottenere il
  limite <math|7/3>. Questo rapporto è <math|<sqrt|1+7/n+4/n<rsup|3>|3>>. Per
  controllarlo, ponendo <math|u=<sqrt|1+t|3>\<geq\>0> otteniamo
  <math|\|u-1\|=\|t\|/(u<rsup|2>+u+1)\<leq\>\|t\|>. Quindi anche la radice
  cubica tende a 1 quando <math|t\<rightarrow\>0>.

  <subsection|Quanti addendi stiamo sommando?>

  Un altro pericolo è applicare il teorema della somma quando il numero degli
  addendi cresce. Per <math|s<rsub|n>=<big|sum><rsub|k=n><rsup|2n>1/k<rsup|2>>
  ci sono <math|n+1> termini, ciascuno al più <math|1/n<rsup|2>>. Pertanto

  <\equation*>
    0\<leq\>s<rsub|n>\<leq\><frac|n+1|n<rsup|2>>\<rightarrow\>0.
  </equation*>

  Invece <math|<big|sum><rsub|k=n><rsup|2n>1/<sqrt|k>\<geq\>(n+1)/<sqrt|2n>\<rightarrow\>+\<infty\>>,
  benché ogni addendo sia piccolo. Occorre controllare insieme la grandezza
  dei termini e il loro numero.

  <subsection|Per proseguire: una somma che richiede monotonia>

  Per <math|h<rsub|n>=<big|sum><rsub|k=n><rsup|2n>1/k> le stime estreme danno

  <\equation*>
    <frac|n+1|2n>\<leq\>h<rsub|n>\<leq\><frac|n+1|n>.
  </equation*>

  I limiti dei due estremi sono diversi, <math|1/2> e 1: non possiamo
  applicare i carabinieri. Ma nel passaggio da <math|h<rsub|n>> a
  <math|h<rsub|n+1>> perdiamo <math|1/n> e acquistiamo due termini:

  <\equation*>
    h<rsub|n+1>-h<rsub|n>=<frac|1|2n+1>+<frac|1|2n+2>-<frac|1|n>\<leq\>0.
  </equation*>

  La successione è decrescente e limitata inferiormente, quindi converge. Le
  stime collocano il limite in <math|[1/2,1]>. Determinarne il valore esatto
  richiede un ulteriore argomento, che qui non serve.

  <\verifica|9>
    <strong|1.> Calcola il limite di <math|<sqrt|<binom|3n|n>|n>>. Scrivi
    <math|a<rsub|n>=(3n)!/(n!(2n)!)> e studia <math|a<rsub|n+1>/a<rsub|n>>.
    Nel rapporto lascia scritti soltanto i fattori nuovi: tre al numeratore,
    uno e due al denominatore. Poi usa il legame fra rapporto e radice.

    <strong|2.> Calcola <math|lim<rsub|n\<rightarrow\>+\<infty\>>(<sqrt|n<rsup|2>-7n+2>-n)>.
    Controlla che il radicando sia positivo definitivamente e confronta la
    radice con <math|n> per prevedere il segno del risultato.
  </verifica>

  <chapter|Limiti di funzioni, continuità e limiti notevoli>

  <\inbreve>
    Per una successione l'indice avanza fra i naturali: come cambia il limite
    quando lavoriamo con una funzione? Partiamo da una funzione con un buco,
    osservando i valori vicini al punto. Arriveremo alla continuità e ai
    limiti notevoli, un passaggio alla volta.
  </inbreve>

  <section|Punti di accumulazione e definizione di limite>

  La funzione <math|f(x)=(x<rsup|2>-1)/(x-1)> non è definita in 1. Eppure per
  <math|x\<neq\>1> vale <math|f(x)=x+1>: guardando i valori vicini a 1
  prevediamo il valore 2. Il limite descrive questa previsione e non richiede
  che la funzione abbia un valore nel punto.

  Per poterci avvicinare a <math|x<rsub|0>> serve che il dominio abbia punti
  arbitrariamente vicini, diversi da <math|x<rsub|0>>. Si dice allora che
  <math|x<rsub|0>> è un <strong|punto di accumulazione> di <math|D>.
  Precisamente, per ogni <math|\<delta\>\<gtr\>0> esiste <math|x\<in\>D> con
  <math|0\<less\>\|x-x<rsub|0>\|\<leq\>\<delta\>>.

  Per esempio, se <math|D=(0,1]\<cup\>{2}>, zero è di accumulazione anche se
  non appartiene al dominio: i punti <math|1/n> gli si avvicinano. Il numero
  2 appartiene al dominio, ma è <strong|isolato>: entro distanza <math|1/2>
  non ci sono altri punti di <math|D>.

  <\concetto|Limite finito in un punto>
    Siano <math|f:D\<rightarrow\>\<bbb-R\>> e <math|x<rsub|0>> un punto di
    accumulazione di <math|D>. Scriviamo <math|lim<rsub|x\<rightarrow\>x<rsub|0>>f(x)=\<#2113\>\<in\>\<bbb-R\>>
    se, per ogni <math|\<varepsilon\>\<gtr\>0>, esiste
    <math|\<delta\>\<gtr\>0> tale che

    <\equation*>
      x\<in\>D,<space|1em>0\<less\>\|x-x<rsub|0>\|\<leq\>\<delta\><space|1em>\<Rightarrow\><space|1em>\|f(x)-\<#2113\>\|\<leq\>\<varepsilon\>.
    </equation*>

    La tolleranza <math|\<varepsilon\>> riguarda i valori della funzione. La
    distanza <math|\<delta\>> riguarda gli argomenti e può dipendere da
    <math|\<varepsilon\>>.
  </concetto>

  L'intervallo vicino a <math|x<rsub|0>> è <em|bucato>: esclude il centro.
  Nell'esempio iniziale <math|\|f(x)-2\|=\|x-1\|> per <math|x\<neq\>1>; dato
  <math|\<varepsilon\>\<gtr\>0>, basta <math|\<delta\>=\<varepsilon\>>. Se
  decidessimo di assegnare alla funzione il valore 100 in 1, il limite
  rimarrebbe 2.

  <figura|<image|assets/epsilon-delta.pdf|117.0mm|65.2mm||>|Scelta una
  striscia orizzontale di larghezza <math|2\<varepsilon\>> attorno a
  <math|\<#2113\>>, cerchiamo una distanza <math|\<delta\>> dal centro che
  trattenga il grafico nella striscia. Il punto centrale non interviene nel
  limite.>

  <subsection|Valori infiniti e avvicinamento da un lato>

  Prima di cambiare il modo in cui ci avviciniamo, cambiamo soltanto ciò che
  chiediamo ai valori. La funzione <math|1/x<rsup|2>> vicino a zero non si
  avvicina a un reale: supera ogni quota assegnata. Per superare una quota
  <math|M\<gtr\>0> basta <math|0\<less\>\|x\|\<leq\>1/<sqrt|M>>.

  In generale, per <math|lim<rsub|x\<rightarrow\>x<rsub|0>>f(x)=+\<infty\>>
  sostituiamo la conclusione con <math|f(x)\<geq\>M>, per ogni soglia
  <math|M\<in\>\<bbb-R\>>; per <math|-\<infty\>> con <math|f(x)\<leq\>M>. La
  distanza <math|\<delta\>\<gtr\>0> dipende ora da <math|M>.

  Un <strong|limite destro> usa soltanto <math|x\<in\>D> con
  <math|x<rsub|0>\<less\>x\<leq\>x<rsub|0>+\<delta\>>; un <strong|limite
  sinistro> soltanto <math|x<rsub|0>-\<delta\>\<leq\>x\<less\>x<rsub|0>>.
  Serve accumulazione dal lato considerato.

  Per <math|f(x)=1/x>, per esempio, i valori tendono a <math|+\<infty\>> da
  destra e a <math|-\<infty\>> da sinistra. I due limiti non coincidono,
  quindi non esiste un limite bilatero.

  Se entrambi i lati sono presenti, il limite bilatero esiste se e solo se i
  due limiti laterali esistono e coincidono: due controlli laterali si
  combinano prendendo il minimo dei rispettivi <math|\<delta\>>.

  Il lato dell'argomento è diverso dal lato di arrivo dei valori. Per esempio
  <math|lim<rsub|x\<rightarrow\>0<rsup|->>x<rsup|2>=0<rsup|+>>: <math|x>
  arriva da sinistra, ma i quadrati sono positivi.

  La notazione <math|\<#2113\><rsup|+>> richiede
  <math|\<#2113\>\<less\>f(x)\<leq\>\<#2113\>+\<varepsilon\>> vicino al
  punto; <math|\<#2113\><rsup|->> richiede
  <math|\<#2113\>-\<varepsilon\>\<leq\>f(x)\<less\>\<#2113\>>.

  <subsection|Quando l'argomento va all'infinito>

  Per <math|x\<rightarrow\>+\<infty\>> il dominio deve essere illimitato
  superiormente. La condizione sugli argomenti diventa <math|x\<in\>D>,
  <math|x\<geq\>K>. Per esempio

  <\equation*>
    lim<rsub|x\<rightarrow\>+\<infty\>>f(x)=\<#2113\>\<in\>\<bbb-R\><space|1em>\<Leftrightarrow\><space|1em>\<forall\>\<varepsilon\>\<gtr\>0<space|1em>\<exists\>K\<in\>\<bbb-R\><space|1em>\<forall\>x\<in\>D,<space|1em>x\<geq\>K\<Rightarrow\>\|f(x)-\<#2113\>\|\<leq\>\<varepsilon\>.
  </equation*>

  Per un limite infinito sostituiamo di nuovo il controllo dei valori con
  <math|f(x)\<geq\>M> o <math|f(x)\<leq\>M>, per ogni <math|M>.

  Per <math|x\<rightarrow\>-\<infty\>> chiediamo un dominio illimitato
  inferiormente e usiamo <math|x\<leq\>K>. Tutte queste definizioni ammettono
  gli stessi quattro esiti: limite reale, <math|+\<infty\>>,
  <math|-\<infty\>>, oppure nessun limite.

  Il cambio <math|y=-x> riporta un argomento che tende a <math|-\<infty\>> a
  uno che tende a <math|+\<infty\>>.

  Per esempio <math|<sqrt|x<rsup|2>+7x+2>+x> diventa
  <math|<sqrt|y<rsup|2>-7y+2>-y>: è lo stesso calcolo dell'esercizio 9.2, ora
  con variabile reale. La razionalizzazione usa
  <math|<sqrt|x<rsup|2>>=\|x\|=-x> per <math|x\<less\>0>, e dà ancora il
  limite <math|-7/2>.

  <section|Continuità e composizione>

  La <strong|continuità> chiede che la previsione data dai valori vicini
  coincida con il valore effettivo. Ora è necessario <math|x<rsub|0>\<in\>D>.

  <\concetto|Continuità in un punto>
    La funzione <math|f:D\<rightarrow\>\<bbb-R\>> è continua in
    <math|x<rsub|0>\<in\>D> se, per ogni <math|\<varepsilon\>\<gtr\>0>,
    esiste <math|\<delta\>\<gtr\>0> tale che

    <\equation*>
      x\<in\>D,<space|1em>\|x-x<rsub|0>\|\<leq\>\<delta\><space|1em>\<Rightarrow\><space|1em>\|f(x)-f(x<rsub|0>)\|\<leq\>\<varepsilon\>.
    </equation*>

    Se il punto è di accumulazione, equivale a
    <math|lim<rsub|x\<rightarrow\>x<rsub|0>>f(x)=f(x<rsub|0>)>. Un punto
    isolato soddisfa automaticamente la definizione: possiamo scegliere
    <math|\<delta\>> così piccolo che l'unico argomento ammesso sia il centro
    stesso.
  </concetto>

  Confronto, carabinieri e algebra dei limiti valgono anche per le funzioni:
  nelle prove si sostituisce \Soltre un certo indice\T con \Sabbastanza
  vicino al punto\T oppure \Sabbastanza avanti sulla semiretta\T. Le somme e
  i prodotti di funzioni continue sono quindi continui; i quozienti lo sono
  dove il denominatore non si annulla.

  <subsection|La composta: chiedere la precisione nel giusto ordine>

  Anche la <strong|composta di funzioni continue> è continua. Per capire il
  ragionamento, consideriamo <math|f(x)=x+1> e <math|g(y)=y<rsup|2>> vicino a
  <math|x=0>. La prima funzione porta <math|x> vicino a 1; la seconda deve
  portare quel valore vicino a 1.

  La domanda da fare prima è: quanto deve essere vicino <math|y> a 1 perché
  <math|y<rsup|2>> abbia la precisione richiesta? Dopo aver trovato questa
  distanza, chiediamo a <math|f> di rispettarla. Le scelte si fanno
  dall'uscita finale verso l'entrata iniziale.

  Facciamo una richiesta concreta: vogliamo
  <math|\|y<rsup|2>-1\|\<leq\>1/10>. Se chiediamo prima
  <math|\|y-1\|\<leq\>1>, abbiamo <math|0\<leq\>y\<leq\>2> e quindi
  <math|\|y+1\|\<leq\>3>. La fattorizzazione dà

  <\equation*>
    \|y<rsup|2>-1\|=\|y-1\|\|y+1\|\<leq\>3\|y-1\|.
  </equation*>

  Basta dunque chiedere <math|\|y-1\|\<leq\>1/30>. Per ottenere questa
  precisione con <math|y=f(x)=x+1>, basta <math|\|x\|\<leq\>1/30>. Abbiamo
  trovato la distanza iniziale risalendo dai due controlli richiesti.

  In generale supponiamo <math|f> continua in <math|x<rsub|0>> e <math|g>
  continua in <math|y<rsub|0>=f(x<rsub|0>)>. I valori di <math|f> devono
  appartenere al dominio di <math|g>. Dato <math|\<varepsilon\>\<gtr\>0>, la
  continuità della funzione esterna fornisce una distanza
  <math|\<eta\>\<gtr\>0> tale che

  <\equation*>
    \|y-y<rsub|0>\|\<leq\>\<eta\>\<Rightarrow\>\|g(y)-g(y<rsub|0>)\|\<leq\>\<varepsilon\>.
  </equation*>

  Ora usiamo la continuità di <math|f> con la precisione <math|\<eta\>>.
  Otteniamo <math|\<delta\>\<gtr\>0> tale che

  <\equation*>
    \|x-x<rsub|0>\|\<leq\>\<delta\>\<Rightarrow\>\|f(x)-y<rsub|0>\|\<leq\>\<eta\>.
  </equation*>

  Ponendo <math|y=f(x)> nella prima implicazione troviamo il controllo finale
  <math|\<leq\>\<varepsilon\>>.

  <subsection|Perché l'esponenziale è continuo>

  Giustifichiamo la <strong|continuità dell'esponenziale> senza usare
  derivate. Per <math|a\<gtr\>1> sappiamo già che
  <math|a<rsup|1/n>\<rightarrow\>1>.

  Se <math|0\<leq\>h\<leq\>1/n>, la monotonia dà
  <math|0\<leq\>a<rsup|h>-1\<leq\>a<rsup|1/n>-1>.

  Se <math|-1/n\<leq\>h\<leq\>0>, poniamo <math|t=-h> e osserviamo

  <\equation*>
    0\<leq\>1-a<rsup|h>=1-a<rsup|-t>=<frac|a<rsup|t>-1|a<rsup|t>>\<leq\>a<rsup|1/n>-1.
  </equation*>

  Fissato <math|\<varepsilon\>\<gtr\>0>, scegliamo <math|n> tanto grande che
  l'ultima quantità sia <math|\<leq\>\<varepsilon\>/a<rsup|x<rsub|0>>>. Con
  <math|\<delta\>=1/n> otteniamo

  <\equation*>
    \|a<rsup|x<rsub|0>+h>-a<rsup|x<rsub|0>>\|=a<rsup|x<rsub|0>>\|a<rsup|h>-1\|\<leq\>\<varepsilon\>.
  </equation*>

  Per <math|0\<less\>a\<less\>1> usiamo <math|a<rsup|x>=1/(1/a)<rsup|x>>; per
  <math|a=1> la funzione è costante. Abbiamo usato le proprietà delle potenze
  assunte nel capitolo 5; ora ne abbiamo dimostrato la continuità.

  <subsection|La continuità dell'inversa: il caso del logaritmo>

  Anche le inverse delle funzioni continue strettamente monotone fra
  intervalli sono continue. L'idea è racchiudere l'argomento dell'inversa fra
  due valori della funzione originaria.

  Per il logaritmo, dato <math|y<rsub|0>=log x<rsub|0>> e
  <math|\<varepsilon\>\<gtr\>0>, abbiamo

  <\equation*>
    e<rsup|y<rsub|0>-\<varepsilon\>>\<less\>x<rsub|0>\<less\>e<rsup|y<rsub|0>+\<varepsilon\>>.
  </equation*>

  Prendiamo <math|\<delta\>\<gtr\>0> più piccolo delle due distanze da
  <math|x<rsub|0>> agli estremi. Se <math|\|x-x<rsub|0>\|\<leq\>\<delta\>>,
  la monotonia impone <math|y<rsub|0>-\<varepsilon\>\<less\>log
  x\<less\>y<rsub|0>+\<varepsilon\>>. Questo dimostra la continuità di
  <math|log> su <math|(0,+\<infty\>)>.

  <section|Il limite del seno e i limiti notevoli trigonometrici>

  Confrontare <math|sin x> con <math|x> ha senso vicino a zero. Gli angoli
  devono essere in radianti: è questa unità che fa coincidere, sulla
  circonferenza unitaria, angolo e lunghezza dell'arco.

  Per <math|0\<less\>x\<less\>\<pi\>/2> la geometria dà

  <\equation*>
    sin x\<leq\>x\<leq\>tan x.
  </equation*>

  La prima disuguaglianza si legge confrontando la corda che unisce i punti
  di angoli <math|-x> e <math|x>, lunga <math|2 sin x>, con l'arco, lungo
  <math|2x>.

  Per la seconda, il settore fra gli angoli zero e <math|x>, di area
  <math|x/2>, è contenuto nel triangolo formato dal raggio orizzontale e
  dalla tangente alla circonferenza in <math|(1,0)>; il triangolo ha area
  <math|tan x/2>.

  <figura|<image|assets/seno-x-tan.pdf|139.5mm|63.0mm||>|La corda e l'arco
  danno <math|sin x\<leq\>x>. Il settore e il triangolo esterno danno
  <math|x\<leq\>tan x>. Sono confronti geometrici, precedenti alle derivate.>

  Prima di usarlo nei carabinieri, giustifichiamo che <math|cos
  x\<rightarrow\>1>. Dalla prima disuguaglianza e dalla disparità del seno
  abbiamo <math|\|sin h\|\<leq\>\|h\|> vicino a zero, quindi <math|sin
  h\<rightarrow\>0>.

  Poi l'identità <math|1-cos h=2 sin<rsup|2>(h/2)> dà <math|0\<leq\>1-cos
  h\<leq\>h<rsup|2>/2\<rightarrow\>0>.

  Le formule di addizione mostrano poi la continuità di seno e coseno in
  qualsiasi punto: per esempio

  <\equation*>
    sin(a+h)-sin a=sin a(cos h-1)+cos a sin h\<rightarrow\>0.
  </equation*>

  Ora la stessa prova per confronto degli estremi usata per il logaritmo dà
  la continuità delle inverse trigonometriche sui loro intervalli; agli
  estremi del dominio si usa un solo lato.

  Torniamo al confronto geometrico. Dividendo per <math|x\<gtr\>0> e usando
  <math|tan x=sin x/cos x>, otteniamo

  <\equation*>
    cos x\<leq\><frac|sin x|x>\<leq\>1.
  </equation*>

  I carabinieri danno il limite destro 1; il quoziente è pari, quindi vale
  anche a sinistra.

  <\concetto|Limite fondamentale del seno>
    Con gli angoli in radianti,

    <\equation*>
      lim<rsub|x\<rightarrow\>0><frac|sin x|x>=1.
    </equation*>

    Il seno e il suo argomento hanno lo stesso comportamento al primo ordine
    vicino a zero. Non abbiamo usato né derivate né de L'Hôpital.
  </concetto>

  <subsection|Dal seno al coseno, alla tangente e alle inverse>

  Gli altri limiti trigonometrici si ricavano da questo. L'identità
  <math|(1-cos x)(1+cos x)=sin<rsup|2>x> dà

  <\equation*>
    <frac|1-cos x|x<rsup|2>>=<around*|(|<frac|sin
    x|x>|)><rsup|2><frac|1|1+cos x>\<rightarrow\><frac|1|2>.
  </equation*>

  Inoltre <math|tan x/x=(sin x/x)/cos x\<rightarrow\>1>.

  Per <math|arcsin x/x> poniamo <math|y=arcsin x>: per la continuità
  dell'inversa <math|y\<rightarrow\>0>, <math|x=sin y>, e il quoziente
  diventa <math|y/sin y\<rightarrow\>1>.

  Con <math|y=arctan x> otteniamo <math|y/tan y\<rightarrow\>1>. In sintesi,

  <\equation*>
    <frac|tan x|x>\<rightarrow\>1,<space|1em><frac|arcsin
    x|x>\<rightarrow\>1,<space|1em><frac|arctan
    x|x>\<rightarrow\>1<space|1em>(x\<rightarrow\>0).
  </equation*>

  <section|Dal numero e ai limiti di logaritmo ed esponenziale>

  Sappiamo che <math|(1+1/n)<rsup|n>\<rightarrow\>e> quando <math|n> è
  intero. Per usare un argomento reale non basta sostituire una lettera:
  dobbiamo controllare anche i punti fra due interi consecutivi.

  <subsection|Fra due interi consecutivi>

  Consideriamo prima <math|3\<leq\>x\<less\>4>. La base <math|1+1/x> è fra
  <math|1+1/4> e <math|1+1/3>; l'esponente è fra 3 e 4. Le basi sono maggiori
  di 1, quindi diminuire sia la base sia l'esponente dà un valore più
  piccolo; aumentarli dà un valore più grande:

  <\equation*>
    <around*|(|1+<frac|1|4>|)><rsup|3>\<leq\><around*|(|1+<frac|1|x>|)><rsup|x>\<leq\><around*|(|1+<frac|1|3>|)><rsup|4>.
  </equation*>

  Ripetiamo il confronto per <math|x\<in\>[n,n+1)>, con <math|n\<geq\>1>:

  <\equation*>
    <around*|(|1+<frac|1|n+1>|)><rsup|n>\<leq\><around*|(|1+<frac|1|x>|)><rsup|x>\<leq\><around*|(|1+<frac|1|n>|)><rsup|n+1>.
  </equation*>

  L'estremo destro è <math|e<rsub|n>(1+1/n)\<rightarrow\>e>; il sinistro è
  <math|e<rsub|n+1>/(1+1/(n+1))\<rightarrow\>e>.

  Una funzione che su ciascun intervallo <math|[n,n+1)> vale un termine
  <math|b<rsub|n>\<rightarrow\>e> tende a <math|e> per
  <math|x\<rightarrow\>+\<infty\>>: dato <math|\<varepsilon\>>, tutti i
  gradini da un certo intero in poi rispettano la tolleranza. È il
  <strong|lemma dei gradini>.

  Applicandolo ai due estremi e usando i carabinieri otteniamo

  <\equation*>
    lim<rsub|x\<rightarrow\>+\<infty\>><around*|(|1+<frac|1|x>|)><rsup|x>=e.
  </equation*>

  <figura|<image|assets/gradini.pdf|126.0mm|58.5mm||>|I due confronti sono
  costanti su ciascun intervallo unitario. Entrambi tendono a <math|e> e
  controllano la funzione anche fra un intero e il successivo.>

  <subsection|L'altro infinito e il passaggio al logaritmo>

  Per <math|x\<rightarrow\>-\<infty\>> poniamo
  <math|y=-x\<rightarrow\>+\<infty\>>. Per <math|y\<gtr\>1>,

  <\equation*>
    <around*|(|1-<frac|1|y>|)><rsup|-y>=<around*|(|1+<frac|1|y-1>|)><rsup|y-1><around*|(|1+<frac|1|y-1>|)>\<rightarrow\>e.
  </equation*>

  Il cambio <math|t=1/x> riunisce i due lati nel limite
  <math|(1+t)<rsup|1/t>\<rightarrow\>e> per <math|t\<rightarrow\>0>. La base
  è positiva vicino a zero. Applichiamo il logaritmo, già dimostrato continuo
  in <math|e>:

  <\equation*>
    <frac|log(1+t)|t>=log((1+t)<rsup|1/t>)\<rightarrow\>log e=1.
  </equation*>

  Ora poniamo <math|t=e<rsup|u>-1>. Quando <math|u\<rightarrow\>0> abbiamo
  <math|t\<rightarrow\>0>, e per <math|u\<neq\>0> anche <math|t\<neq\>0>. Il
  rapporto appena studiato diventa <math|u/(e<rsup|u>-1)\<rightarrow\>1>.
  Passando al reciproco ricaviamo il limite dell'esponenziale.

  <\concetto|Limiti notevoli di logaritmo ed esponenziale>
    Per <math|x\<rightarrow\>0>,

    <\equation*>
      <frac|log(1+x)|x>\<rightarrow\>1,<space|2em><frac|e<rsup|x>-1|x>\<rightarrow\>1.
    </equation*>

    Per ogni base <math|a\<gtr\>0> vale inoltre
    <math|(a<rsup|x>-1)/x\<rightarrow\>log a>.
  </concetto>

  L'ultima formula si ottiene scrivendo <math|a<rsup|x>=e<rsup|x log a>> e
  moltiplicando il limite dell'esponenziale per <math|log a>. Per <math|a=1>
  il quoziente è identicamente nullo: lo trattiamo separatamente per non
  dividere per <math|log a=0>.

  <subsection|Un'applicazione: potenze e logaritmi vicino a zero>

  Il lemma dei gradini estende anche la gerarchia degli infiniti alla
  variabile reale. Per esempio, su <math|[n,n+1)> vale
  <math|3<rsup|x>/x<rsup|m>\<geq\>3<rsup|n>/(n+1)<rsup|m>\<rightarrow\>+\<infty\>>
  per ogni intero <math|m\<geq\>1>. Per un esponente positivo reale basta
  maggiorarlo con un intero.

  Così, ponendo <math|z=-log x\<rightarrow\>+\<infty\>>, otteniamo

  <\equation*>
    x log x=-<frac|z|e<rsup|z>>\<rightarrow\>0<space|1em>(x\<rightarrow\>0<rsup|+>).
  </equation*>

  Più in generale <math|x<rsup|a>\|log x\|<rsup|b>\<rightarrow\>0> per
  <math|a,b\<gtr\>0>: il cambio produce <math|z<rsup|b>/e<rsup|a*z>>,
  dominato dall'esponenziale.

  <section|Usare un limite notevole: argomento, dominio e scala>

  Per calcolare <math|lim<rsub|x\<rightarrow\>0>(e<rsup|3x>-1)/sin x>,
  vogliamo riconoscere separatamente il comportamento dell'esponenziale e del
  seno. L'argomento dell'esponenziale è <math|3x>, quindi deve comparire lo
  stesso <math|3x> nel suo denominatore:

  <\equation*>
    <frac|e<rsup|3x>-1|sin x>=<frac|e<rsup|3x>-1|3x>\<cdot\>3\<cdot\><frac|x|sin
    x>\<rightarrow\>1\<cdot\>3\<cdot\>1=3.
  </equation*>

  Tutti i denominatori sono non nulli in un intorno bucato sufficientemente
  piccolo. Il primo fattore usa il limite con il cambio
  <math|u=3x\<rightarrow\>0>; il terzo è il reciproco del limite del seno.

  Un cambio di variabile richiede sempre di controllare il nuovo punto di
  arrivo. Per esempio <math|sin(cos x)/cos x\<rightarrow\>sin 1> per
  <math|x\<rightarrow\>0>: l'argomento <math|cos x> tende a 1, quindi non si
  applica il limite notevole in zero. Usiamo invece la continuità nel punto
  1.

  <subsection|Quando si possono comporre due limiti?>

  Più precisamente, se <math|u(x)\<rightarrow\>a> e
  <math|g(y)\<rightarrow\>L> per <math|y\<rightarrow\>a>, possiamo comporre i
  limiti se <math|u(x)> appartiene al dominio di <math|g> e resta diverso da
  <math|a> vicino al punto.

  Se <math|u(x)=a> può accadere, basta che <math|g> sia definita e continua
  in <math|a>. La distinzione serve perché il limite bucato di <math|g> non
  controlla il valore <math|g(a)>.

  <subsection|Il logaritmo del coseno e una potenza variabile>

  Un altro esempio rivela la scala quadratica del coseno:

  <\equation*>
    <frac|log(cos x)|x<rsup|2>>=<frac|log(1+(cos x-1))|cos
    x-1>\<cdot\><frac|cos x-1|x<rsup|2>>\<rightarrow\>1\<cdot\><around*|(|-<frac|1|2>|)>=-<frac|1|2>.
  </equation*>

  Vicino a zero <math|cos x\<gtr\>0>, quindi il logaritmo è definito; per
  <math|0\<less\>\|x\|\<less\>2\<pi\>> vale <math|cos x\<neq\>1>, quindi la
  divisione aggiunta è lecita.

  Il segno negativo deriva da <math|cos x-1>, mentre il limite di
  <math|(1-cos x)/x<rsup|2>> è positivo.

  Per una <strong|potenza con base ed esponente variabili>, come <math|(cos
  x)<rsup|1/sin<rsup|2>x>>, usiamo la scrittura <math|A<rsup|B>=exp(B log
  A)>, valida per <math|A\<gtr\>0>. Qui l'esponente trasformato è

  <\equation*>
    <frac|log(cos x)|sin<rsup|2>x>=<frac|log(cos
    x)|x<rsup|2>>\<cdot\><around*|(|<frac|x|sin
    x>|)><rsup|2>\<rightarrow\>-<frac|1|2>.
  </equation*>

  La continuità dell'esponenziale dà dunque <math|(cos
  x)<rsup|1/sin<rsup|2>x>\<rightarrow\>e<rsup|-1/2>>. Il dominio vicino a
  zero è garantito da <math|cos x\<gtr\>0> e <math|sin x\<neq\>0> per
  <math|x\<neq\>0> abbastanza piccolo.

  <section|Sottosuccessioni e limiti che non esistono>

  Una <strong|sottosuccessione> mantiene alcuni termini nell'ordine
  originario. Si scelgono indici naturali strettamente crescenti
  <math|n<rsub|k>> e si considera <math|a<rsub|n<rsub|k>>>. Pari, dispari e
  quadrati sono tre scelte possibili. Poiché <math|n<rsub|k>\<geq\>k> per
  induzione, gli indici scelti vanno a <math|+\<infty\>>.

  Se <math|a<rsub|n>\<rightarrow\>\<#2113\>>, ogni sottosuccessione tende
  allo stesso <math|\<#2113\>>, finito o infinito. Infatti ogni controllo
  valido per <math|n\<geq\>N> vale anche per <math|a<rsub|n<rsub|k>>> quando
  <math|k\<geq\>N>. Funziona anche se chiediamo soltanto
  <math|n<rsub|k>\<rightarrow\>+\<infty\>>, senza monotonia degli indici.

  <figura|<image|assets/sottosucc.pdf|126.0mm|33.8mm||>|Selezionando gli
  indici pari di <math|(-1)<rsup|n>> isoliamo i termini uguali a 1. La
  sottosuccessione dispari isola invece <math|-1>.>

  Due sottosuccessioni con limiti diversi provano quindi che la successione
  originale non ha limite. Per esempio <math|n<rsup|3>+(-1)<rsup|n>n<rsup|5>>
  tende a <math|+\<infty\>> sui pari e a <math|-\<infty\>> sui dispari.

  Non basta invece vedere un segno alterno nella formula:
  <math|n<rsup|5>+(-1)<rsup|n>n<rsup|3>=n<rsup|5>(1+(-1)<rsup|n>/n<rsup|2>)\<rightarrow\>+\<infty\>>,
  perché la correzione tende a zero.

  <subsection|Da un limite di funzione a una successione di valori>

  Un limite di funzione si conserva lungo ogni successione di argomenti
  ammessi che si avvicini al punto: se <math|f(x)\<rightarrow\>\<#2113\>> per
  <math|x\<rightarrow\>x<rsub|0>> e <math|x<rsub|n>\<rightarrow\>x<rsub|0>>,
  con <math|x<rsub|n>\<in\>D> e <math|x<rsub|n>\<neq\>x<rsub|0>>
  definitivamente, allora <math|f(x<rsub|n>)\<rightarrow\>\<#2113\>>.

  Nel caso finito, dato <math|\<varepsilon\>>, il limite di funzione fornisce
  <math|\<delta\>>; la convergenza di <math|x<rsub|n>> porta definitivamente
  gli argomenti nell'intorno bucato di raggio <math|\<delta\>>. Da quel
  momento i valori rispettano <math|\<varepsilon\>>.

  Per punti o valori infiniti si sostituiscono le distanze con le soglie
  corrispondenti; per un limite laterale si deve arrivare dal lato corretto.

  Possiamo dunque <strong|dimostrare la non esistenza di un limite di
  funzione> trovando due successioni ammesse che arrivino allo stesso punto e
  producano limiti diversi. Per <math|sin x> a <math|+\<infty\>>, gli
  argomenti <math|2\<pi\>n> danno zero e <math|\<pi\>/2+2\<pi\>n> danno 1.

  Per <math|cos(1/x<rsup|2>)> a <math|0<rsup|+>>, scegliamo invece

  <\equation*>
    x<rsub|n>=<frac|1|<sqrt|2\<pi\>n>>,<space|2em>y<rsub|n>=<frac|1|<sqrt|2\<pi\>n+\<pi\>/2>><space|1em>(n\<geq\>1).
  </equation*>

  Entrambe tendono a <math|0<rsup|+>>, ma i valori del coseno sono
  rispettivamente 1 e zero. Il limite non esiste.

  Se moltiplichiamo la funzione oscillante per <math|x>, otteniamo invece
  <math|\|x cos(1/x<rsup|2>)\|\<leq\>\|x\|\<rightarrow\>0>: un'oscillazione
  limitata può essere annullata da un fattore piccolo.

  <subsection|Un parametro nell'esponente>

  Lo stesso passaggio dalle funzioni alle successioni permette di usare i
  limiti notevoli lungo <math|1/n>. Per esempio <math|n
  sin(1/n)\<rightarrow\>1>. Con un parametro reale <math|\<alpha\>>,
  riscriviamo

  <\equation*>
    <around*|(|1+<frac|1|n>|)><rsup|n<rsup|\<alpha\>>>=exp<around*|(|n<rsup|\<alpha\>-1><frac|log(1+1/n)|1/n>|)>.
  </equation*>

  Il rapporto logaritmico tende a 1. L'esponente tende quindi a zero se
  <math|\<alpha\>\<less\>1>, a 1 se <math|\<alpha\>=1>, a <math|+\<infty\>>
  se <math|\<alpha\>\<gtr\>1>.

  I limiti della potenza sono rispettivamente 1, <math|e> e
  <math|+\<infty\>>.

  <\verifica|10>
    <strong|1.> Scrivi la definizione completa di
    <math|lim<rsub|x\<rightarrow\>2<rsup|->>f(x)=+\<infty\>>, includendo
    l'ipotesi sul dominio. Poi dimostra che <math|f(x)=3x+1> è continua in
    ogni punto.

    <strong|2.> Calcola <math|lim<rsub|x\<rightarrow\>0>tan(5x)/log(1+2x)> e
    <math|lim<rsub|x\<rightarrow\>3\<pi\>/2>cos x/(2x-3\<pi\>)>. Nel secondo
    riporta l'argomento vicino a zero prima di scegliere il limite notevole.

    <strong|3.> Studia <math|f(x)=x(1+sin x)> e <math|g(x)=x(2+sin x)> per
    <math|x\<rightarrow\>+\<infty\>>. Non assumere che la presenza del seno
    renda necessariamente inesistente il limite.
  </verifica>

  <chapter|Simboli di Landau ed equivalenze asintotiche>

  <\inbreve>
    Sappiamo che <math|sin x/x> tende a 1 vicino a zero. Quanto errore
    commettiamo se sostituiamo il seno con x in un calcolo? Partiamo da
    differenze semplici per imparare i simboli di Landau e capire quali
    termini possiamo trascurare.
  </inbreve>

  <section|O piccolo: misurare un errore rispetto a una scala>

  Confrontiamo <math|x+x<rsup|2>> con <math|x>. La differenza è
  <math|x<rsup|2>>: dividendo per <math|x> otteniamo <math|x\<rightarrow\>0>.
  Dunque l'errore è piccolo anche rispetto alla quantità con cui stiamo
  lavorando. Scriviamo

  <\equation*>
    x+x<rsup|2>=x+o(x)<space|2em>(x\<rightarrow\>0).
  </equation*>

  La lettera <math|o> si legge \So piccolo\T. La scrittura non dà il valore
  dell'errore: ne dà una proprietà. In questo esempio l'errore è esattamente
  <math|x<rsup|2>>; altri errori, come <math|x<rsup|3>> o <math|x sin x>,
  avrebbero la stessa proprietà.

  <\concetto|O piccolo>
    Fissato un limite <math|x\<rightarrow\>x<rsub|0>>, scriviamo
    <math|f=o(g)> se, vicino al punto considerato, possiamo scrivere
    <math|f(x)=g(x)\<omega\>(x)> con <math|\<omega\>(x)\<rightarrow\>0>. Se
    <math|g(x)\<neq\>0> nell'intorno bucato, ciò equivale a
    <math|f(x)/g(x)\<rightarrow\>0>.
  </concetto>

  Il punto <math|x<rsub|0>> può essere finito, un infinito oppure un punto
  raggiunto da un solo lato. Va sempre dichiarato: <math|x<rsup|2>=o(x)> per
  <math|x\<rightarrow\>0>, mentre <math|x=o(x<rsup|2>)> per
  <math|x\<rightarrow\>+\<infty\>>. Lo stesso rapporto che vicino a zero è
  piccolo diventa grande all'infinito.

  Per potenze intere, vicino a zero <math|x<rsup|a>=o(x<rsup|b>)> esattamente
  quando <math|a\<gtr\>b>: il rapporto è <math|x<rsup|a-b>>.

  Per esponenti reali non interi consideriamo
  <math|x\<rightarrow\>0<rsup|+>>, così le potenze sono definite.

  L'o piccolo non richiede che le due funzioni tendano a zero: anche
  <math|1/x<rsup|2>=o(1/x<rsup|3>)> per <math|x\<rightarrow\>0>.

  <figura|<image|assets/potenze-zero.pdf|105.0mm|62.5mm||>|Per
  <math|0\<less\>x\<less\>1>, le potenze più alte sono più piccole. Il
  rapporto distingue la scala: <math|x<rsup|3>/x<rsup|2>=x\<rightarrow\>0>.>

  Scrivere <math|f=g+o(g)> significa dunque che <math|f-g> è trascurabile
  rispetto a <math|g>. Non significa che <math|f=g>: il resto è una funzione,
  generalmente diversa da zero.

  <section|Equivalenza asintotica e O grande>

  Due quantità non nulle hanno lo stesso comportamento relativo se il loro
  rapporto tende a 1. Si scrive <math|f\<sim\>g> e si parla di
  <strong|equivalenza asintotica>. Per esempio, <math|sin x\<sim\>x> per
  <math|x\<rightarrow\>0>.

  In generale, la definizione tramite fattorizzazione è <math|f=g\<omega\>>
  con <math|\<omega\>\<rightarrow\>1>.

  Quando <math|g> è non nulla vicino al punto, valgono le equivalenze

  <\equation*>
    f\<sim\>g<space|1em>\<Leftrightarrow\><space|1em><frac|f|g>\<rightarrow\>1<space|1em>\<Leftrightarrow\><space|1em>f=g+o(g).
  </equation*>

  Il simbolo <math|f=O(g)>, \SO grande\T, richiede invece <math|f=g\<omega\>>
  con <math|\<omega\>> limitata vicino al punto. Se <math|g\<neq\>0>, ciò
  significa che esiste <math|C\<gtr\>0> con <math|\|f(x)\|\<leq\>C\|g(x)\|>.

  Per esempio <math|x sin(1/x)=O(x)> per <math|x\<rightarrow\>0>, ma non è
  <math|o(x)>: il rapporto oscilla. Ogni o piccolo è anche O grande; il
  contrario è falso.

  Le equivalenze si possono moltiplicare e dividere, dove i quozienti hanno
  senso. Se <math|f\<sim\>g> e <math|u\<sim\>v>, allora <math|f*u\<sim\>g*v>,
  perché <math|(f*u)/(g*v)=(f/g)(u/v)\<rightarrow\>1>. Lo stesso ragionamento
  vale per i quozienti.

  Nelle differenze occorre più attenzione. Confrontiamo le due quantità
  <math|x+x<rsup|2>> e <math|x>: entrambe sono equivalenti a <math|x>. Ma la
  loro differenza esatta è

  <\equation*>
    (x+x<rsup|2>)-x=x<rsup|2>.
  </equation*>

  Se prima sostituiamo entrambe con <math|x>, la differenza diventa zero.
  L'equivalenza ha perso proprio il termine che dopo la sottrazione diventa
  decisivo. Per ritrovarlo dobbiamo conoscere l'errore a una scala più
  piccola.

  <section|Calcolare con i resti e comporre>

  Scriviamo due resti come <math|r<rsub|1>=g\<omega\><rsub|1>> e
  <math|r<rsub|2>=g\<omega\><rsub|2>>, con entrambi gli
  <math|\<omega\><rsub|i>\<rightarrow\>0>. Allora

  <\equation*>
    r<rsub|1>+r<rsub|2>=g(\<omega\><rsub|1>+\<omega\><rsub|2>)=o(g).
  </equation*>

  La stessa prova vale per la differenza e per la moltiplicazione per una
  costante.

  Per un prodotto, <math|r<rsub|1>r<rsub|2>=g<rsup|2>\<omega\><rsub|1>\<omega\><rsub|2>=o(g<rsup|2>)>.
  Per esempio <math|o(x)\<cdot\>o(x)=o(x<rsup|2>)>.

  Se moltiplichiamo un resto per una potenza, cambia la scala:
  <math|x<rsup|k>o(x<rsup|m>)=o(x<rsup|m+k>)>. Queste regole vengono tutte
  dalla fattorizzazione: seguiamo il fattore che tende a zero.

  Due simboli <math|o(x)> in una stessa riga possono indicare resti diversi.
  La scrittura <math|o(x)-o(x)=o(x)> dice quindi che la differenza di due
  resti di questo tipo è ancora un resto dello stesso tipo. I due simboli non
  rappresentano necessariamente la stessa funzione.

  Non c'è invece una regola generale per <math|o(x)/o(x)>:
  <math|x<rsup|2>/x<rsup|3>> diverge, mentre il reciproco tende a zero.

  Anche la transitività segue dai fattori: se <math|f=g\<omega\><rsub|1>> e
  <math|g=h\<omega\><rsub|2>>, allora <math|f=h\<omega\><rsub|2>\<omega\><rsub|1>=o(h)>.

  <subsection|Sostituire l'argomento in un resto>

  Per le composizioni dobbiamo controllare dove va l'argomento. Per un intero
  <math|m\<geq\>1>, se <math|r(t)=t<rsup|m>\<omega\>(t)> con
  <math|\<omega\>(t)\<rightarrow\>0> per <math|t\<rightarrow\>0>, sostituendo
  <math|t=x<rsup|3>> troviamo

  <\equation*>
    r(x<rsup|3>)=x<rsup|3m>\<omega\>(x<rsup|3>)=o(x<rsup|3m>).
  </equation*>

  Passiamo a un argomento più generale <math|u(x)\<rightarrow\>0>, con
  <math|u(x)=O(x)>. Per <math|x\<neq\>0> abbiamo

  <\equation*>
    <frac|r(u(x))|x<rsup|m>>=<around*|(|<frac|u(x)|x>|)><rsup|m>\<omega\>(u(x)).
  </equation*>

  Il primo fattore è limitato; il secondo tende a zero. Dunque
  <math|r(u(x))=o(x<rsup|m>)>.

  Qui prolunghiamo il resto con valore zero in <math|t=0> e poniamo
  <math|\<omega\>(0)=0>. Così l'identità vale anche quando <math|u(x)=0>,
  senza dividere per l'argomento interno. Questa precisazione tornerà negli
  sviluppi delle composte.

  <section|Dai limiti notevoli ai primi sviluppi>

  Il limite <math|sin x/x\<rightarrow\>1> equivale a <math|(sin
  x-x)/x\<rightarrow\>0>, quindi a <math|sin x=x+o(x)>. Il limite
  esponenziale e quello logaritmico danno allo stesso modo

  <\equation*>
    e<rsup|x>=1+x+o(x),<space|2em>log(1+x)=x+o(x).
  </equation*>

  Per il coseno conosciamo un'informazione più precisa:

  <\equation*>
    cos x=1-<frac|x<rsup|2>|2>+o(x<rsup|2>).
  </equation*>

  Da questa segue anche <math|cos x=1+o(x)>, perché <math|x<rsup|2>=o(x)>.

  Il contrario non si può dedurre: la scrittura più breve perde il
  coefficiente quadratico. Altre forme che useremo sono <math|arctan
  x=x+o(x)>, <math|tan x=x+o(x)>, <math|arcsin x=x+o(x)> e

  <\equation*>
    (1+x)<rsup|a>=1+a*x+o(x)<space|2em>(a\<in\>\<bbb-R\>).
  </equation*>

  Quest'ultima discende da <math|(1+x)<rsup|a>=e<rsup|a log(1+x)>>: per
  <math|a\<neq\>0>, dividendo l'incremento per <math|x> compaiono i due
  rapporti notevoli <math|(e<rsup|t>-1)/t\<rightarrow\>1> e
  <math|log(1+x)/x\<rightarrow\>1>.

  Per <math|a=0> la funzione è costante e l'affermazione è esatta con resto
  nullo. Vicino a zero abbiamo <math|1+x\<gtr\>0>, quindi tutte le potenze
  reali sono definite.

  <\guidato|Un limite senza cancellazione della parte lineare>
    Calcoliamo <math|lim<rsub|x\<rightarrow\>0><frac|sin(2x)+e<rsup|3x>-cos
    x|arctan x+tan<rsup|2>x>>. I termini costanti al numeratore si
    cancellano; cerchiamo quindi l'ordine lineare.

    Usiamo <math|sin(2x)=2x+o(x)>, <math|e<rsup|3x>=1+3x+o(x)> e <math|cos
    x=1+o(x)>. Il numeratore diventa <math|5x+o(x)>.

    Al denominatore <math|arctan x=x+o(x)> e
    <math|tan<rsup|2>x=x<rsup|2>+o(x<rsup|2>)=o(x)>. Dividendo entrambi per
    <math|x> otteniamo

    <\equation*>
      <frac|5x+o(x)|x+o(x)>=<frac|5+o(1)|1+o(1)>\<rightarrow\>5.
    </equation*>

    Qui il primo ordine basta perché resta un coefficiente non nullo sia
    sopra sia sotto. Se il coefficiente lineare fosse zero, dovremmo cercare
    un'informazione più precisa.
  </guidato>

  Per le successioni la definizione resta la stessa:
  <math|a<rsub|n>=o(b<rsub|n>)> significa
  <math|a<rsub|n>=b<rsub|n>\<omega\><rsub|n>> con
  <math|\<omega\><rsub|n>\<rightarrow\>0>.

  Per esempio <math|n\<cdot\>o(1/n)=o(1)>: il fattore <math|n> cancella la
  scala <math|1/n>, lasciando soltanto qualcosa che tende a zero.

  <\verifica|11>
    <strong|1.> Per <math|x\<rightarrow\>0>, confronta <math|x<rsup|2>> e
    <math|x<rsup|3>> con l'o piccolo. Che cosa cambia per
    <math|x\<rightarrow\>+\<infty\>>? Spiega anche perché <math|x sin(1/x)> è
    O grande, ma non o piccolo, di <math|x> vicino a zero.

    <strong|2.> Calcola <math|lim<rsub|x\<rightarrow\>0><frac|e<rsup|arctan(2x)>-(1+x)<rsup|1/3>|sin(5x)+log(1-x)>>
    conservando i resti nelle somme.
  </verifica>

  <chapter|Derivate e differenziabilità>

  <\inbreve>
    Quanto cambia il quadrato quando passiamo da 2 a <math|2+h>? Il conto dà
    <math|4h+h<rsup|2>>: per <math|h> piccolo il termine lineare descrive
    quasi tutto il cambiamento. Da questo esempio costruiremo la derivata, il
    differenziale e le regole per calcolarli.
  </inbreve>

  <section|Rapporto incrementale e retta tangente>

  Sia <math|x<rsub|0>> interno al dominio di <math|f>: esiste un piccolo
  intervallo aperto attorno a <math|x<rsub|0>> sul quale <math|f> è definita.
  Per <math|h\<neq\>0> sufficientemente piccolo, il <strong|rapporto
  incrementale>

  <\equation*>
    <frac|f(x<rsub|0>+h)-f(x<rsub|0>)|h>
  </equation*>

  è l'incremento verticale diviso l'incremento orizzontale. È quindi la
  pendenza della secante che unisce due punti del grafico. Facendo avvicinare
  i due punti, possiamo cercare una pendenza limite.

  <\concetto|Derivata>
    La funzione è derivabile in <math|x<rsub|0>> se il rapporto incrementale
    ha un limite reale finito per <math|h\<rightarrow\>0>. Quel limite si
    chiama derivata e si indica con <math|f<rprime|'>(x<rsub|0>)>. La
    tangente ha equazione

    <\equation*>
      y=f(x<rsub|0>)+f<rprime|'>(x<rsub|0>)(x-x<rsub|0>).
    </equation*>
  </concetto>

  La parola \Sfinito\T conta: un limite infinito del rapporto incrementale
  non è una derivata reale secondo questa definizione. Anche il limite
  bilatero conta: le pendenze da destra e da sinistra devono accordarsi.

  Per <math|f(x)=x<rsup|2>> il conto è esatto:

  <\equation*>
    <frac|(x<rsub|0>+h)<rsup|2>-x<rsub|0><rsup|2>|h>=2x<rsub|0>+h\<rightarrow\>2x<rsub|0>.
  </equation*>

  Quindi <math|f<rprime|'>(x<rsub|0>)=2x<rsub|0>>. In <math|x<rsub|0>=2> la
  tangente è <math|y=4+4(x-2)>.

  <figura|<image|assets/secante.pdf|130.0mm|70.0mm||>|La pendenza della
  secante dipende da <math|h>. Quando il rapporto incrementale converge, la
  pendenza limite definisce la tangente.>

  <section|Differenziale: la stessa informazione come sviluppo>

  Torniamo all'identità <math|(x<rsub|0>+h)<rsup|2>=x<rsub|0><rsup|2>+2x<rsub|0>h+h<rsup|2>>.
  Siccome <math|h<rsup|2>=o(h)>, la funzione si separa in valore iniziale,
  variazione lineare ed errore trascurabile rispetto all'incremento.

  <\concetto|Differenziabilità in una variabile>
    La funzione <math|f> è differenziabile in <math|x<rsub|0>> se esiste
    <math|\<alpha\>\<in\>\<bbb-R\>> tale che

    <\equation*>
      f(x<rsub|0>+h)=f(x<rsub|0>)+\<alpha\>h+o(h).
    </equation*>

    L'applicazione lineare <math|h\<mapsto\>\<alpha\>h> è il differenziale.
    In una variabile, derivabilità e differenziabilità sono equivalenti e
    <math|\<alpha\>=f<rprime|'>(x<rsub|0>)>.
  </concetto>

  Per dimostrarlo, partiamo dalla derivabilità. Il rapporto incrementale
  tende a <math|f<rprime|'>(x<rsub|0>)>, dunque

  <\equation*>
    <frac|f(x<rsub|0>+h)-f(x<rsub|0>)-f<rprime|'>(x<rsub|0>)h|h>\<rightarrow\>0.
  </equation*>

  Il numeratore è quindi <math|o(h)>, che dà lo sviluppo richiesto.

  Viceversa, se conosciamo lo sviluppo con coefficiente <math|\<alpha\>>,
  dividendo l'incremento per <math|h> otteniamo
  <math|\<alpha\>+o(h)/h\<rightarrow\>\<alpha\>>: esiste la derivata e vale
  <math|\<alpha\>>. Questo prova anche l'unicità del coefficiente lineare.

  <figura|<image|assets/differenziale.pdf|130.0mm|72.5mm||>|Il valore sul
  grafico si ottiene dal valore iniziale <math|A*B>, aggiungendo il
  contributo lineare <math|B*C=\<alpha\>h> e lo scarto <math|C*D=o(h)>. Il
  disegno mostra un incremento positivo; i termini algebrici possono avere
  segno.>

  Una prima conseguenza è <strong|derivabile implica continua>. Infatti
  <math|f(x<rsub|0>+h)-f(x<rsub|0>)=f<rprime|'>(x<rsub|0>)h+o(h)\<rightarrow\>0>.

  Il viceversa è falso: <math|\|x\|> è continua in zero, ma il suo rapporto
  incrementale è 1 per <math|h\<gtr\>0> e <math|-1> per <math|h\<less\>0>.

  <section|Derivate delle funzioni elementari>

  I limiti notevoli costruiti prima delle derivate ora danno i coefficienti
  lineari. Per l'esponenziale,

  <\equation*>
    e<rsup|x<rsub|0>+h>=e<rsup|x<rsub|0>>(1+h+o(h))=e<rsup|x<rsub|0>>+e<rsup|x<rsub|0>>h+o(h).
  </equation*>

  Leggiamo <math|(e<rsup|x>)<rprime|'>=e<rsup|x>>.

  Per il logaritmo, con <math|x<rsub|0>\<gtr\>0>, scriviamo l'incremento come
  una variazione relativa:

  <\equation*>
    log(x<rsub|0>+h)=log x<rsub|0>+log(1+h/x<rsub|0>)=log
    x<rsub|0>+<frac|h|x<rsub|0>>+o(h).
  </equation*>

  Quindi <math|(log x)<rprime|'>=1/x>. Non abbiamo usato la formula
  dell'inversa: stiamo ricavando la derivata direttamente dal limite
  logaritmico.

  Per il seno la formula di addizione permette di separare ciò che dipende da
  <math|h>:

  <\equation*>
    sin(x<rsub|0>+h)=sin x<rsub|0> cos h+cos x<rsub|0> sin h.
  </equation*>

  Sostituiamo <math|cos h=1+o(h)> e <math|sin h=h+o(h)>: il coefficiente
  lineare è <math|cos x<rsub|0>>. Analogamente, nella formula del coseno
  compare il coefficiente <math|-sin x<rsub|0>>. Otteniamo

  <\equation*>
    (sin x)<rprime|'>=cos x,<space|2em>(cos x)<rprime|'>=-sin x.
  </equation*>

  Per <math|x<rsup|n>>, <math|n\<geq\>1> intero, il binomio fornisce un
  termine lineare <math|n*x<rsub|0><rsup|n-1>h>; tutti gli altri contengono
  almeno <math|h<rsup|2>>. Quindi <math|(x<rsup|n>)<rprime|'>=n*x<rsup|n-1>>.
  La derivata di una costante è zero, perché il suo incremento è nullo.

  <section|Somme, prodotti e quozienti>

  Se <math|f,g> sono derivabili nello stesso punto, sommando i loro sviluppi
  si sommano i coefficienti lineari: <math|(f+g)<rprime|'>=f<rprime|'>+g<rprime|'>>.
  Allo stesso modo <math|(\<lambda\>f)<rprime|'>=\<lambda\>f<rprime|'>> per
  una costante <math|\<lambda\>>.

  Nel prodotto contano due contributi: varia <math|f> mentre il valore
  iniziale di <math|g> resta fermo, e varia <math|g> mentre resta fermo
  quello di <math|f>.

  Per vederlo abbreviamo i valori iniziali con <math|f<rsub|0>=f(x<rsub|0>)>,
  <math|g<rsub|0>=g(x<rsub|0>)>, <math|a=f<rprime|'>(x<rsub|0>)>,
  <math|b=g<rprime|'>(x<rsub|0>)>. Moltiplichiamo

  <\equation*>
    (f<rsub|0>+a*h+o(h))(g<rsub|0>+b*h+o(h)).
  </equation*>

  Il termine costante è <math|f<rsub|0>g<rsub|0>>; il termine lineare è
  <math|(a*g<rsub|0>+f<rsub|0>b)h>.

  Tutti gli altri sono <math|o(h)>: contengono un resto moltiplicato per una
  quantità limitata, oppure almeno <math|h<rsup|2>>. Perciò

  <\equation*>
    (f*g)<rprime|'>=f<rprime|'>g+f*g<rprime|'>.
  </equation*>

  Per il reciproco supponiamo <math|g(x<rsub|0>)\<neq\>0>. La continuità
  garantisce <math|g\<neq\>0> in un piccolo intorno, quindi il reciproco è
  definito. Portiamo a denominatore comune il suo rapporto incrementale:

  <\equation*>
    <frac|1/g(x<rsub|0>+h)-1/g(x<rsub|0>)|h>=-<frac|g(x<rsub|0>+h)-g(x<rsub|0>)|h>\<cdot\><frac|1|g(x<rsub|0>+h)g(x<rsub|0>)>.
  </equation*>

  I due fattori tendono a <math|-g<rprime|'>(x<rsub|0>)> e
  <math|1/g(x<rsub|0>)<rsup|2>>. Quindi <math|(1/g)<rprime|'>=-g<rprime|'>/g<rsup|2>>.

  Applicando la regola del prodotto a <math|f/g=f\<cdot\>(1/g)> troviamo

  <\equation*>
    <around*|(|<frac|f|g>|)><rprime|'>=<frac|f<rprime|'>g-f*g<rprime|'>|g<rsup|2>><space|2em>(g\<neq\>0).
  </equation*>

  Per esempio, dove <math|cos x\<neq\>0>,

  <\equation*>
    (tan x)<rprime|'>=<frac|cos<rsup|2>x+sin<rsup|2>x|cos<rsup|2>x>=<frac|1|cos<rsup|2>x>=1+tan<rsup|2>x.
  </equation*>

  <section|Derivata della funzione composta>

  Nella funzione <math|cos(x<rsup|3>)>, un piccolo cambiamento di <math|x>
  modifica prima <math|x<rsup|3>>, poi il coseno. Le due proporzioni locali
  si moltiplicano. Per esempio, vicino a <math|x=1> il cubo cambia circa di
  <math|3h>; vicino al suo valore 1, il coseno cambia circa di <math|-sin1>
  volte l'incremento ricevuto. La composta cambia quindi circa di
  <math|-3sin1\<cdot\>h>.

  In generale, se <math|f> è derivabile in <math|x<rsub|0>> e <math|g> è
  derivabile in <math|y<rsub|0>=f(x<rsub|0>)>, con domini aperti appropriati,
  vale

  <\equation*>
    (g\<circ\>f)<rprime|'>(x<rsub|0>)=g<rprime|'>(f(x<rsub|0>))f<rprime|'>(x<rsub|0>).
  </equation*>

  <subsection|La prova: controllare anche gli incrementi nulli>

  Potremmo provare a dividere per l'incremento della funzione interna. Ma
  questo può essere zero anche per <math|h\<neq\>0>: basta pensare a una
  funzione interna costante. Usiamo perciò lo sviluppo, che vale anche per un
  incremento nullo.

  Scriviamo <math|k=f(x<rsub|0>+h)-f(x<rsub|0>)=a*h+o(h)>, con
  <math|a=f<rprime|'>(x<rsub|0>)>. Il rapporto <math|k/h> tende ad <math|a>,
  quindi è limitato; inoltre <math|k\<rightarrow\>0>.

  La differenziabilità di <math|g> dice <math|g(y<rsub|0>+k)=g(y<rsub|0>)+b*k+k\<varepsilon\>(k)>,
  con <math|b=g<rprime|'>(y<rsub|0>)> ed <math|\<varepsilon\>(k)\<rightarrow\>0>.
  Poniamo <math|\<varepsilon\>(0)=0>, così l'identità vale anche per
  <math|k=0>.

  Dopo la sostituzione dobbiamo controllare il resto rispetto ad <math|h>,
  non soltanto rispetto a <math|k>. Dividendo per <math|h> otteniamo
  <math|(k/h)\<varepsilon\>(k)>: il primo fattore è limitato, il secondo
  tende a zero. Perciò <math|k\<varepsilon\>(k)=o(h)>.

  Sostituendo anche <math|k=a*h+o(h)> troviamo

  <\equation*>
    g(f(x<rsub|0>+h))=g(f(x<rsub|0>))+b*a*h+o(h).
  </equation*>

  Il coefficiente cercato è <math|b*a>. Non è stato necessario dividere per
  <math|k>.

  Per esempio <math|(cos(x<rsup|3>))<rprime|'>=-sin(x<rsup|3>)\<cdot\>3x<rsup|2>>,
  mentre <math|((cos x)<rsup|3>)<rprime|'>=3cos<rsup|2>x\<cdot\>(-sin x)>. La
  posizione della potenza cambia la funzione interna ed esterna.

  <section|Derivata dell'inversa e potenze variabili>

  Sia <math|f:I\<rightarrow\>J> biiettiva tra intervalli aperti,
  <math|g=f<rsup|-1>>, <math|y<rsub|0>=f(x<rsub|0>)>. Supponiamo che <math|f>
  sia derivabile in <math|x<rsub|0>>, con
  <math|f<rprime|'>(x<rsub|0>)\<neq\>0>, e che <math|g> sia continua in
  <math|y<rsub|0>>. Allora

  <\equation*>
    g<rprime|'>(y<rsub|0>)=<frac|1|f<rprime|'>(x<rsub|0>)>.
  </equation*>

  La continuità dell'inversa è nota per le restrizioni monotone e continue
  delle funzioni elementari che usiamo.

  Per provare la formula, poniamo <math|x=g(y)>. Se <math|y\<neq\>y<rsub|0>>,
  per iniettività <math|x\<neq\>x<rsub|0>>; inoltre
  <math|x\<rightarrow\>x<rsub|0>> per la continuità di <math|g>. Quindi

  <\equation*>
    <frac|g(y)-g(y<rsub|0>)|y-y<rsub|0>>=<frac|1|<frac|f(x)-f(x<rsub|0>)|x-x<rsub|0>>>\<rightarrow\><frac|1|f<rprime|'>(x<rsub|0>)>.
  </equation*>

  La derivabilità dell'inversa è così dimostrata, anziché presupposta
  derivando <math|f(g(y))=y>. Applicando il risultato alle restrizioni
  trigonometriche otteniamo

  <\equation*>
    (arctan x)<rprime|'>=<frac|1|1+x<rsup|2>>,<space|1.5em>(arcsin
    x)<rprime|'>=<frac|1|<sqrt|1-x<rsup|2>>>.
  </equation*>

  Per <math|arccos> il segno è negativo: <math|(arccos
  x)<rprime|'>=-1/<sqrt|1-x<rsup|2>>>. Le ultime due formule valgono per
  <math|-1\<less\>x\<less\>1>; ai bordi il denominatore si annulla.

  <subsection|Quando varia anche l'esponente>

  Per <math|a\<gtr\>0> scriviamo <math|a<rsup|x>=e<rsup|x log a>>: la
  composta dà <math|(a<rsup|x>)<rprime|'>=a<rsup|x>log a>.

  Per <math|x\<gtr\>0> e <math|a\<in\>\<bbb-R\>>, <math|x<rsup|a>=e<rsup|a
  log x>> dà <math|(x<rsup|a>)<rprime|'>=a*x<rsup|a-1>>.

  Se anche l'esponente varia, la stessa trasformazione separa i due
  contributi. Per <math|f(x)=u(x)<rsup|v(x)>>, con <math|u\<gtr\>0> e
  <math|u,v> derivabili, otteniamo

  <\equation*>
    f<rprime|'>(x)=u(x)<rsup|v(x)><around*|(|v<rprime|'>(x)log
    u(x)+v(x)<frac|u<rprime|'>(x)|u(x)>|)>.
  </equation*>

  <\verifica|12>
    <strong|1.> Trova la tangente a <math|e<rsup|x>> in zero. Poi confronta
    questo comportamento con quello di <math|\|x\|> nello stesso punto:
    continuità e derivabilità coincidono?

    <strong|2.> Calcola la derivata di <math|x<rsup|x>> per <math|x\<gtr\>0>
    e di <math|(sin x)<rsup|cos x>> dove <math|sin x\<gtr\>0>. Spiega perché
    serve la condizione sulla base.
  </verifica>

  <chapter|De L'Hôpital e Taylor\<#2013\>Peano>

  <\inbreve>
    Che cosa facciamo quando, in un limite, i termini che conosciamo si
    cancellano? Ripartiamo dagli sviluppi al primo ordine e vediamo perché
    talvolta non bastano. De L'Hôpital e Taylor ci daranno due modi diversi
    per trovare il termine che decide il limite.
  </inbreve>

  Consideriamo il limite

  <\equation*>
    lim<rsub|x\<rightarrow\>0><frac|e<rsup|x>-cos x-sin
    x+x<rsup|2>|x<rsup|2>>.
  </equation*>

  I termini costanti si cancellano. Anche quelli lineari si cancellano.

  Gli sviluppi al primo ordine ci lasciano resti <math|o(x)> che, divisi per
  <math|x<rsup|2>>, non sono controllati: per esempio <math|x<rsup|2>> è
  <math|o(x)>, ma il rapporto con <math|x<rsup|2>> vale 1. Occorre conoscere
  il comportamento al secondo ordine.

  In questo capitolo incontriamo due risposte. De L'Hôpital trasferisce il
  problema a un rapporto di derivate, sotto precise ipotesi. Taylor
  costruisce direttamente un polinomio con un errore abbastanza piccolo.
  Useremo entrambi sapendo da quali risultati dipendono.

  <section|Il teorema di De L'Hôpital e le sue ipotesi>

  Presentiamo prima una versione destra in un punto finito <math|a>. Siano
  <math|f,g> definite e derivabili in tutto un intervallo
  <math|(a,a+\<delta\>)>, con <math|g(x)\<neq\>0> e
  <math|g<rprime|'>(x)\<neq\>0> in tale intervallo. Supponiamo inoltre una
  delle due condizioni:

  <\itemize>
    <item><math|f(x)\<rightarrow\>0> e <math|g(x)\<rightarrow\>0> per
    <math|x\<rightarrow\>a<rsup|+>>;

    <item><math|g(x)\<rightarrow\>+\<infty\>> oppure
    <math|g(x)\<rightarrow\>-\<infty\>> per <math|x\<rightarrow\>a<rsup|+>>.
  </itemize>

  Se esiste il limite <math|f<rprime|'>(x)/g<rprime|'>(x)\<rightarrow\>\<#2113\>>
  nella retta estesa, allora <math|f(x)/g(x)\<rightarrow\>\<#2113\>>. Nel
  secondo caso non occorre imporre un limite a <math|f>.

  Lo stesso enunciato vale da sinistra, sostituendo l'intervallo con
  <math|(a-\<delta\>,a)>, e agli infiniti, usando un'intera semiretta. Per un
  limite bilatero applichiamo il risultato sui due lati e confrontiamo le
  conclusioni.

  <\concetto|De L'Hôpital>
    Sotto le ipotesi appena indicate, il limite del rapporto delle derivate
    determina il limite del rapporto delle funzioni. Il teorema si usa nelle
    forme <math|0/0> o con denominatore divergente. Non afferma che
    <math|f/g=f<rprime|'>/g<rprime|'>>.
  </concetto>

  Assumiamo questo teorema senza dimostrazione, come nelle fonti del corso.
  La richiesta di un intervallo intero non è un dettaglio: impedisce che il
  ragionamento salti attraverso infiniti buchi del dominio.

  <subsection|Tre casi in cui il teorema non dà la risposta>

  Per capire le ipotesi, guardiamo tre casi. In <math|cos x/x> per
  <math|x\<rightarrow\>0> il numeratore tende a 1: non siamo nel caso
  <math|0/0>. Derivare sopra e sotto darebbe un limite zero, mentre i veri
  limiti laterali sono <math|+\<infty\>> e <math|-\<infty\>>.

  Invece <math|(2x+sin x)/x\<rightarrow\>2> per
  <math|x\<rightarrow\>+\<infty\>>, perché <math|sin x/x\<rightarrow\>0>. Il
  rapporto delle derivate è <math|2+cos x>, che non ha limite.

  Questo non contraddice il teorema: manca un'ipotesi, quindi non possiamo
  trarne una conclusione. In particolare, il mancato limite delle derivate
  non dimostra il mancato limite originale.

  Infine <math|\<lfloor\>x\<rfloor\>/x\<rightarrow\>1>, anche restringendo
  <math|x> ai non interi. Su ciascun intervallo tra interi la parte intera ha
  derivata zero, ma non è derivabile su nessuna semiretta intera. Non
  possiamo applicare il teorema sul dominio bucato e concludere zero.

  <section|Un'applicazione e una dipendenza da rispettare>

  Per <math|x\<rightarrow\>0<rsup|+>>, il rapporto
  <math|arccos(1-x)/<sqrt|x>> è <math|0/0>. Le funzioni sono derivabili su un
  intervallo <math|(0,\<delta\>)> con <math|\<delta\>\<less\>1>, e la
  derivata del denominatore non si annulla. Il rapporto delle derivate è

  <\equation*>
    <frac|1/<sqrt|1-(1-x)<rsup|2>>|1/(2<sqrt|x>)>=<frac|2|<sqrt|2-x>>\<rightarrow\><sqrt|2>.
  </equation*>

  Il limite originale vale dunque <math|<sqrt|2>>.

  Abbiamo anche un controllo indipendente: ponendo <math|t=arccos(1-x)>
  otteniamo <math|x=1-cos t> e <math|t\<rightarrow\>0<rsup|+>>. Il rapporto
  diventa <math|t/<sqrt|1-cos t>> e il limite notevole del coseno dà lo
  stesso risultato.

  <subsection|Due applicazioni successive>

  Nell'esempio iniziale possiamo derivare due volte, ma dobbiamo controllare
  il passaggio intermedio. Al primo passo troviamo

  <\equation*>
    <frac|e<rsup|x>+sin x-cos x+2x|2x>,
  </equation*>

  ancora una forma <math|0/0>. Le seconde derivate danno

  <\equation*>
    <frac|e<rsup|x>+cos x+sin x+2|2>\<rightarrow\>2.
  </equation*>

  Su ciascun lato di zero il denominatore del primo rapporto ha derivata non
  nulla e quello originale ha derivata <math|2x\<neq\>0>. Le applicazioni
  sono quindi lecite e il limite iniziale vale 2.

  <\attenzione|Le derivate non possono dimostrare il proprio fondamento>
    Per ricavare <math|(sin x)<rprime|'>=cos x> abbiamo usato <math|sin
    h/h\<rightarrow\>1>. Applicare De L'Hôpital a quel rapporto, usando già
    la derivata del seno, verifica una conseguenza di un fatto noto; non ne
    dà una dimostrazione indipendente. Nel percorso del libro la geometria
    viene prima delle derivate proprio per evitare questo circolo.
  </attenzione>

  <section|Polinomio di Taylor e resto di Peano>

  Al primo ordine la retta tangente ci dà un errore <math|o(x)>. Se dobbiamo
  poi dividere per <math|x<rsup|2>>, quel controllo non basta. Proviamo ad
  aggiungere un termine quadratico.

  <subsection|Prima il grado 2: da dove viene il coefficiente 1/2?>

  Cerchiamo <math|P<rsub|2>(x)=A+B*x+C*x<rsup|2>>. Vogliamo che il polinomio
  abbia in zero lo stesso valore, la stessa derivata e la stessa derivata
  seconda di <math|f>. Le tre richieste sono

  <\equation*>
    A=f(0),<space|1em>B=f<rprime|'>(0),<space|1em>2C=f<rprime|''>(0).
  </equation*>

  Il fattore 2 compare perché la derivata seconda di <math|C*x<rsup|2>> è
  <math|2C>. Ecco quindi il candidato:

  <\equation*>
    P<rsub|2>(x)=f(0)+f<rprime|'>(0)x+<frac|f<rprime|''>(0)|2>x<rsup|2>.
  </equation*>

  Per l'esponenziale, i tre valori sono tutti 1 e il candidato è
  <math|1+x+x<rsup|2>/2>. Per il coseno sono <math|1,0,-1>, quindi il
  candidato è <math|1-x<rsup|2>/2>. Il coefficiente quadratico non è la
  derivata seconda stessa: dobbiamo dividerla per 2.

  <subsection|La prova al secondo ordine>

  Supponiamo che <math|f> sia derivabile in un intorno di zero e che esista
  <math|f<rprime|''>(0)>. Poniamo <math|R=f-P<rsub|2>>. Grazie ai
  coefficienti appena scelti,

  <\equation*>
    R(0)=0,<space|1em>R<rprime|'>(0)=0,<space|1em>R<rprime|''>(0)=0.
  </equation*>

  Vogliamo dimostrare <math|R(x)/x<rsup|2>\<rightarrow\>0>. Il rapporto è
  della forma <math|0/0>: <math|R> è continua in zero perché vi è derivabile.
  Se applichiamo De L'Hôpital, il rapporto delle derivate è
  <math|R<rprime|'>(x)/(2x)>. Come ne conosciamo il limite?

  Usiamo direttamente la definizione di derivata seconda nel centro:

  <\equation*>
    <frac|R<rprime|'>(x)|2x>=<frac|1|2><frac|R<rprime|'>(x)-R<rprime|'>(0)|x-0>\<rightarrow\><frac|1|2>R<rprime|''>(0)=0.
  </equation*>

  Dunque, applicando De L'Hôpital sui due lati di zero, otteniamo
  <math|R(x)/x<rsup|2>\<rightarrow\>0>. Abbiamo provato

  <\equation*>
    f(x)=f(0)+f<rprime|'>(0)x+<frac|f<rprime|''>(0)|2>x<rsup|2>+o(x<rsup|2>).
  </equation*>

  Non abbiamo chiesto che <math|f<rprime|''>> esista fuori da zero: il limite
  del rapporto derivato viene dalla definizione di <math|f<rprime|''>(0)>.

  <subsection|Il teorema a un ordine qualunque>

  La stessa scelta funziona per i gradi successivi. La derivata di ordine
  <math|k> di <math|x<rsup|k>> vale <math|k!>; per uguagliare la derivata
  <math|f<rsup|(k)>(0)> dobbiamo quindi usare il coefficiente
  <math|f<rsup|(k)>(0)/k!>.

  <\concetto|Teorema di Taylor\<#2013\>Peano>
    Sia <math|n\<geq\>1>. Se <math|f> è derivabile <math|n-1> volte in un
    intorno di zero e possiede anche la derivata <math|n>-esima in zero,
    allora

    <\equation*>
      f(x)=<big|sum><rsub|k=0><rsup|n><frac|f<rsup|(k)>(0)|k!>x<rsup|k>+o(x<rsup|n>).
    </equation*>

    Qui <math|f<rsup|(k)>> è la derivata di ordine <math|k>,
    <math|f<rsup|(0)>=f> e <math|0!=1>. La formula con centro zero si chiama
    anche formula di Maclaurin. L'errore <math|o(x<rsup|n>)> si chiama
    <strong|resto di Peano>.
  </concetto>

  Il polinomio ha grado al più <math|n>. Termini di grado maggiore sarebbero
  già trascurabili rispetto a <math|x<rsup|n>>. Per <math|n=1> ritroviamo la
  differenziabilità; all'ordine zero <math|f(x)=f(0)+o(1)> esprime soltanto
  la continuità.

  Queste sono condizioni sufficienti. Uno sviluppo polinomiale può esistere
  anche senza tutte le derivate richieste. Per identificarne i coefficienti
  con le derivate, però, dobbiamo sapere che il teorema si applica.

  <subsection|Perché la prova si ripete>

  Sia <math|P> il polinomio della formula e poniamo <math|R=f-P>. La scelta
  dei coefficienti dà <math|R<rsup|(j)>(0)=0> per ogni
  <math|0\<leq\>j\<leq\>n>. Il caso <math|n=1> è già noto; per <math|n=2>
  abbiamo appena visto tutti i passaggi.

  Al grado 3, per esempio, cerchiamo il limite del primo rapporto nella
  catena

  <\equation*>
    <frac|R(x)|x<rsup|3>>,<space|1em><frac|R<rprime|'>(x)|3x<rsup|2>>,<space|1em><frac|R<rprime|''>(x)|6x>.
  </equation*>

  L'ultimo tende a zero per la definizione di <math|R<rsup|(3)>(0)=0>. De
  L'Hôpital assegna allora limite zero al secondo e poi al primo. È lo stesso
  ragionamento dell'ordine 2, con un passaggio in più.

  All'ordine <math|n> l'ultimo rapporto della catena è

  <\equation*>
    <frac|R<rsup|(n-1)>(x)|n!x>=<frac|1|n!><frac|R<rsup|(n-1)>(x)-R<rsup|(n-1)>(0)|x>\<rightarrow\>0.
  </equation*>

  Il suo limite viene dalla definizione dell'ultima derivata al centro. Il
  rapporto precedente è <math|R<rsup|(n-2)>(x)/((n!/2!)x<rsup|2>)>; il
  rapporto delle sue derivate coincide con quello appena scritto. De
  L'Hôpital gli assegna quindi limite zero.

  Ripetiamo questo passaggio fino a <math|R(x)/x<rsup|n>\<rightarrow\>0>. A
  ogni passo il numeratore tende a zero perché è derivabile nel centro e vi
  vale zero. Nell'intorno esistono tutte le derivate necessarie e i
  denominatori e le loro derivate non si annullano fuori da zero. Applichiamo
  il teorema separatamente sui due lati.

  La prova richiede l'esistenza della derivata <math|n>-esima soltanto nel
  centro. Non ne richiede la continuità, né l'esistenza fuori dal centro.

  <subsection|Perché il polinomio è unico>

  Supponiamo che due polinomi <math|P,Q> di grado al più <math|n> abbiano
  entrambi errore <math|o(x<rsup|n>)>. Sottraendo, otteniamo
  <math|P-Q=o(x<rsup|n>)>.

  Se la differenza non fosse nulla, avrebbe un termine di grado minimo con
  coefficiente non nullo, diciamo <math|a<rsub|k>x<rsup|k>> con
  <math|k\<leq\>n>. Dividendo il polinomio per <math|x<rsup|k>>, il limite
  sarebbe <math|a<rsub|k>\<neq\>0>: i termini di grado maggiore tendono tutti
  a zero.

  Ma dividendo il resto per la stessa potenza troviamo limite zero. Infatti
  <math|o(x<rsup|n>)/x<rsup|k>=x<rsup|n-k>o(1)\<rightarrow\>0>, perché
  <math|n-k\<geq\>0>. La contraddizione prova l'unicità.

  <figura|<image|assets/taylor-cos.pdf|155.0mm|60.0mm||>|Il coseno e i
  polinomi ottenuti fino ai gradi 2, 4 e 6. L'approssimazione descrive il
  comportamento vicino a zero; il teorema locale non promette accuratezza
  uniforme lontano dal centro.>

  <section|Sviluppi elementari e significato dei coefficienti>

  Per l'esponenziale tutte le derivate valgono 1 in zero. Quindi

  <\equation*>
    e<rsup|x>=1+x+<frac|x<rsup|2>|2>+<frac|x<rsup|3>|6>+<frac|x<rsup|4>|24>+<frac|x<rsup|5>|120>+o(x<rsup|5>).
  </equation*>

  Le derivate del seno tornano ciclicamente a seno, coseno, meno seno e meno
  coseno. In zero i valori sono <math|0,1,0,-1,0,1>. Per il coseno iniziano
  con <math|1,0,-1,0,1,0>. Otteniamo

  <\equation*>
    sin x=x-<frac|x<rsup|3>|6>+<frac|x<rsup|5>|120>+o(x<rsup|5>),
  </equation*>

  <\equation*>
    cos x=1-<frac|x<rsup|2>|2>+<frac|x<rsup|4>|24>+o(x<rsup|5>).
  </equation*>

  <subsection|Logaritmo e potenze>

  Per <math|f(x)=log(1+x)>, derivando ripetutamente si trova, per
  <math|k\<geq\>1>,

  <\equation*>
    f<rsup|(k)>(x)=(-1)<rsup|k+1><frac|(k-1)!|(1+x)<rsup|k>>.
  </equation*>

  Il passo si controlla derivando: il fattore <math|-k> cambia il segno e
  trasforma <math|(k-1)!> in <math|k!>. Dividendo per <math|k!> nel teorema
  resta <math|(-1)<rsup|k+1>/k>. Così

  <\equation*>
    log(1+x)=x-<frac|x<rsup|2>|2>+<frac|x<rsup|3>|3>-<frac|x<rsup|4>|4>+<frac|x<rsup|5>|5>+o(x<rsup|5>).
  </equation*>

  Per una potenza reale le derivate danno successivamente i fattori <math|a>,
  <math|a(a-1)>, <math|a(a-1)(a-2)>; dunque, per <math|1+x\<gtr\>0>,

  <\equation*>
    (1+x)<rsup|a>=1+a*x+<frac|a(a-1)|2>x<rsup|2>+<frac|a(a-1)(a-2)|6>x<rsup|3>+o(x<rsup|3>).
  </equation*>

  All'ordine <math|k> il coefficiente è il binomiale generalizzato
  <math|<binom|a|k>=a(a-1)\<cdots\>(a-k+1)/k!>.

  In particolare <math|a=-1> dà <math|1/(1+x)=1-x+x<rsup|2>-x<rsup|3>+o(x<rsup|3>)>.
  Sostituendo <math|x<rsup|2>> otteniamo <math|1/(1+x<rsup|2>)=1-x<rsup|2>+x<rsup|4>+o(x<rsup|4>)>.

  <subsection|Ricavare l'arcotangente dalla sua derivata>

  Da qui ricaviamo

  <\equation*>
    arctan x=x-<frac|x<rsup|3>|3>+<frac|x<rsup|5>|5>+o(x<rsup|5>).
  </equation*>

  Per giustificare i coefficienti, ricordiamo che <math|(arctan
  x)<rprime|'>=1/(1+x<rsup|2>)>. Entrambe sono derivabili a ogni ordine
  vicino a zero.

  Il termine costante 1 della derivata dà il termine <math|x>
  dell'arcotangente. Il termine <math|-x<rsup|2>> dà <math|-x<rsup|3>/3>,
  perché la sua derivata deve essere <math|-x<rsup|2>>. Allo stesso modo
  <math|x<rsup|4>> dà <math|x<rsup|5>/5>.

  In generale, se il coefficiente di <math|x<rsup|k>> nello sviluppo della
  derivata è <math|c<rsub|k>>, Taylor e unicità danno
  <math|arctan<rsup|(k+1)>(0)=k!c<rsub|k>>. Il coefficiente successivo
  nell'arcotangente è quindi <math|c<rsub|k>/(k+1)>. Non abbiamo derivato un
  resto senza conoscerne la regolarità.

  Le formule scritte sono finite, ciascuna con il proprio resto. Non stiamo
  ancora affermando che una funzione sia uguale a una somma infinita.

  <section|Parità e precisione del resto>

  Se <math|f> è pari e ammette uno sviluppo, anche <math|P(-x)> approssima
  <math|f(x)> con lo stesso ordine. Per unicità <math|P(-x)=P(x)>, quindi i
  coefficienti dispari sono nulli.

  Se <math|f> è dispari, lo stesso argomento applicato a <math|-P(-x)>
  elimina i coefficienti pari. Questo spiega i soli gradi dispari nel seno e
  i soli gradi pari nel coseno.

  Per una funzione regolare come il seno, Taylor all'ordine 4 dà <math|sin
  x=x-x<rsup|3>/6+o(x<rsup|4>)>, perché il coefficiente di grado 4 è zero.

  Ma non possiamo scrivere lo stesso polinomio con resto <math|o(x<rsup|5>)>:
  manca il termine <math|x<rsup|5>/120>, che non è trascurabile rispetto a
  <math|x<rsup|5>>.

  <subsection|Ritornare al limite iniziale>

  Ora l'esempio iniziale si risolve senza derivate successive. Usiamo gli
  sviluppi all'ordine 2:

  <\equation*>
    e<rsup|x>=1+x+<frac|x<rsup|2>|2>+o(x<rsup|2>),<space|1em>sin
    x=x+o(x<rsup|2>).
  </equation*>

  Insieme a <math|cos x=1-x<rsup|2>/2+o(x<rsup|2>)>, questi danno un
  numeratore

  <\equation*>
    1+x+<frac|x<rsup|2>|2>-1+<frac|x<rsup|2>|2>-x+x<rsup|2>+o(x<rsup|2>)=2x<rsup|2>+o(x<rsup|2>).
  </equation*>

  Dividendo per <math|x<rsup|2>> resta <math|2+o(1)\<rightarrow\>2>. Il
  termine <math|x<rsup|2>/2> dell'esponenziale è proprio l'informazione che
  lo sviluppo al primo ordine aveva perso.

  <\verifica|13>
    <strong|1.> Scrivi lo sviluppo di <math|<sqrt|1+x>> fino all'ordine 2.
    Usa un resto esplicito per calcolare <math|lim<rsub|x\<rightarrow\>0><frac|<sqrt|1+x>-1-x/2|x<rsup|2>>>.

    <strong|2.> Un'applicazione di De L'Hôpital a <math|(x+cos x)/x> per
    <math|x\<rightarrow\>+\<infty\>> porta a <math|1-sin x>. Che cosa
    permette di concludere il teorema? Calcola il limite originale con un
    altro argomento.
  </verifica>

  <chapter|Taylor e funzioni iperboliche>

  <\inbreve>
    Come usiamo Taylor in un prodotto, in una composizione o in una potenza
    variabile? Partiamo dagli sviluppi già noti e controlliamo l'errore dopo
    ogni operazione. Impareremo a scegliere quanti termini conservare e
    incontreremo le funzioni iperboliche.
  </inbreve>

  <section|Cambiare centro: lavorare con l'incremento>

  Vicino a 2, per usare lo sviluppo del logaritmo, scriviamo <math|x=2+h>. È
  <math|h=x-2> che tende a zero. Separiamo il valore di partenza:

  <\equation*>
    log(2+h)=log2+log(1+h/2).
  </equation*>

  Adesso l'argomento piccolo è <math|h/2>. Possiamo usare lo sviluppo di
  <math|log(1+t)> in <math|t=0> e ottenere

  <\equation*>
    log(2+h)=log2+<frac|h|2>-<frac|h<rsup|2>|8>+<frac|h<rsup|3>|24>+o(h<rsup|3>).
  </equation*>

  Scrivere invece <math|log x=log(1+(x-1))> non aiuterebbe per
  <math|x\<rightarrow\>2>: in quel caso <math|x-1\<rightarrow\>1>, mentre lo
  sviluppo che conosciamo richiede un argomento che tenda a zero.

  In generale, per studiare <math|f> vicino a <math|x<rsub|0>>, poniamo
  <math|h=x-x<rsub|0>> e applichiamo Taylor alla funzione
  <math|h\<mapsto\>f(x<rsub|0>+h)>. Con le ipotesi del capitolo precedente,
  traslate nel nuovo centro, troviamo

  <\equation*>
    f(x<rsub|0>+h)=<big|sum><rsub|k=0><rsup|m><frac|f<rsup|(k)>(x<rsub|0>)|k!>h<rsup|k>+o(h<rsup|m>).
  </equation*>

  <section|Somme e prodotti: quali termini conservare>

  Supponiamo <math|f=P+o(x<rsup|m>)> e <math|g=Q+o(x<rsup|m>)>, dove
  <math|P,Q> sono polinomi di grado al più <math|m>, con <math|m\<geq\>1>
  intero.

  Sommando, troviamo <math|f+g=P+Q+o(x<rsup|m>)>. La precisione comune resta
  la stessa.

  Nel prodotto, scriviamo i resti come <math|x<rsup|m>\<omega\><rsub|1>> e
  <math|x<rsup|m>\<omega\><rsub|2>>. Allora

  <\equation*>
    f*g=P*Q+x<rsup|m>(P\<omega\><rsub|2>+Q\<omega\><rsub|1>+x<rsup|m>\<omega\><rsub|1>\<omega\><rsub|2>).
  </equation*>

  I polinomi sono limitati vicino a zero e gli <math|\<omega\><rsub|i>>
  tendono a zero: la parentesi tende a zero. Quindi
  <math|f*g=P*Q+o(x<rsup|m>)>.

  Il prodotto dei polinomi può avere grado maggiore di <math|m>, ma quei
  termini aggiuntivi sono già <math|o(x<rsup|m>)> e si possono scartare.

  Per esempio, per conoscere <math|sin x cos x> fino al grado 5
  moltiplichiamo <math|x-x<rsup|3>/6+x<rsup|5>/120> per
  <math|1-x<rsup|2>/2+x<rsup|4>/24>.

  Al grado 3 contribuiscono <math|x\<cdot\>(-x<rsup|2>/2)> e
  <math|(-x<rsup|3>/6)\<cdot\>1>. Al grado 5 contribuiscono
  <math|x\<cdot\>x<rsup|4>/24>, <math|(-x<rsup|3>/6)(-x<rsup|2>/2)> e
  <math|(x<rsup|5>/120)\<cdot\>1>. I coefficienti sono quindi

  <\equation*>
    -<frac|1|2>-<frac|1|6>=-<frac|2|3>,<space|2em><frac|1|24>+<frac|1|12>+<frac|1|120>=<frac|2|15>.
  </equation*>

  Dunque <math|sin x cos x=x-2x<rsup|3>/3+2x<rsup|5>/15+o(x<rsup|5>)>. Lo
  sviluppo di <math|sin(2x)/2> fornisce un controllo indipendente degli
  stessi coefficienti.

  <section|Composizione: argomento e precisione>

  Consideriamo <math|sin(x+x<rsup|3>)> e cerchiamo uno sviluppo con resto
  <math|o(x<rsup|3>)>. L'argomento interno tende a zero: possiamo partire
  dallo sviluppo del seno in zero. Dobbiamo però sostituire l'intero
  argomento in ogni sua potenza.

  <\guidato|Prima comporre, poi scegliere i gradi>
    Poniamo <math|u=x+x<rsup|3>>. Lo sviluppo del seno dà <math|sin
    u=u-u<rsup|3>/6+o(u<rsup|3>)>. Il termine lineare diventa
    <math|x+x<rsup|3>>. Per il cubo facciamo il conto completo:

    <\equation*>
      (x+x<rsup|3>)<rsup|3>=x<rsup|3>+3x<rsup|5>+3x<rsup|7>+x<rsup|9>.
    </equation*>

    Ci interessano i gradi fino a 3. I gradi 5, 7 e 9 sono tutti
    <math|o(x<rsup|3>)>, quindi il cubo contribuisce con <math|x<rsup|3>> e
    un resto trascurabile.

    Anche il resto esterno va controllato. Se lo scriviamo
    <math|u<rsup|3>\<omega\>(u)> con <math|\<omega\>(u)\<rightarrow\>0>, dopo
    la sostituzione diventa

    <\equation*>
      x<rsup|3>(1+x<rsup|2>)<rsup|3>\<omega\>(x+x<rsup|3>)=o(x<rsup|3>).
    </equation*>

    Il fattore <math|(1+x<rsup|2>)<rsup|3>> è limitato e l'altro tende a
    zero. Possiamo quindi raccogliere i termini del grado richiesto:

    <\equation*>
      sin(x+x<rsup|3>)=x+x<rsup|3>-<frac|x<rsup|3>|6>+o(x<rsup|3>)=x+<frac|5|6>x<rsup|3>+o(x<rsup|3>).
    </equation*>

    Sostituire soltanto nel termine lineare avrebbe dato il coefficiente 1 al
    posto di <math|5/6>. Il cubo dell'argomento contribuisce allo stesso
    grado e deve essere considerato.
  </guidato>

  <subsection|Un argomento che cambia la scala del resto>

  In <math|sin(x<rsup|3>)> i gradi cambiano in un altro modo: ogni potenza
  dell'argomento diventa una potenza di grado triplo in <math|x>. I primi
  gradi sono quindi 3, 9 e 15.

  Se vogliamo un resto <math|o(x<rsup|14>)>, i primi due termini bastano nel
  polinomio finale. Per giustificare l'errore, però, partiamo da un ordine
  che controlli anche il grado successivo. Taylor del seno fino all'ordine 5
  dà

  <\equation*>
    sin(x<rsup|3>)=x<rsup|3>-<frac|x<rsup|9>|6>+<frac|x<rsup|15>|120>+o(x<rsup|15>).
  </equation*>

  Il termine di grado 15 e il suo resto sono entrambi <math|o(x<rsup|14>)>.
  Quindi

  <\equation*>
    sin(x<rsup|3>)=x<rsup|3>-<frac|x<rsup|9>|6>+o(x<rsup|14>).
  </equation*>

  In generale, sostituendo <math|t=a*x<rsup|b>> in un resto
  <math|o(t<rsup|m>)>, con <math|a\<neq\>0> e <math|b\<gtr\>0>, otteniamo
  <math|o(x<rsup|b*m>)>. Infatti il resto diventa
  <math|a<rsup|m>x<rsup|b*m>\<omega\>(a*x<rsup|b>)>. Per esponenti non interi
  scegliamo un lato sul quale le potenze siano definite.

  <subsection|La composizione di due sviluppi: perché funziona>

  Supponiamo che <math|f,g> abbiano in zero polinomi di Taylor <math|P,Q>
  all'ordine <math|m\<geq\>1> e che <math|f(0)=0>. Sul dominio della composta
  vale

  <\equation*>
    g(f(x))=Q(P(x))+o(x<rsup|m>).
  </equation*>

  Dal polinomio composto scartiamo poi i gradi maggiori di <math|m>. Per
  giustificare la formula dobbiamo controllare due errori: quello già
  presente nello sviluppo esterno e quello prodotto sostituendo <math|P> a
  <math|f>.

  Il primo è <math|o(t<rsup|m>)> con <math|t=f(x)>. Poiché <math|P(0)=0>, il
  polinomio <math|P> è <math|x> per un altro polinomio. Dallo sviluppo di
  <math|f> segue quindi <math|f(x)=O(x)> e <math|f(x)\<rightarrow\>0>. La
  regola sui resti del capitolo 11 dà <math|o(f(x)<rsup|m>)=o(x<rsup|m>)>.

  Per il secondo errore guardiamo prima un quadrato:

  <\equation*>
    f<rsup|2>-P<rsup|2>=(f-P)(f+P).
  </equation*>

  Il primo fattore è <math|o(x<rsup|m>)>; il secondo è limitato vicino a
  zero. Anche la loro differenza di quadrati è dunque <math|o(x<rsup|m>)>.

  Per una potenza qualsiasi usiamo la stessa fattorizzazione:

  <\equation*>
    f<rsup|k>-P<rsup|k>=(f-P)<big|sum><rsub|j=0><rsup|k-1>f<rsup|k-1-j>P<rsup|j><space|1em>(k\<geq\>1).
  </equation*>

  La somma ha un numero fisso di termini, tutti limitati. Quindi ogni potenza
  cambia soltanto di <math|o(x<rsup|m>)>. Possiamo sostituire <math|f> con
  <math|P> in ciascun termine di <math|Q> e sommare gli errori.

  Se <math|f(x)=0> in qualche punto, usiamo il resto esterno prolungato con
  valore zero nel centro, come nel capitolo 11. I termini di <math|Q(P)> con
  grado maggiore di <math|m> sono già <math|o(x<rsup|m>)>, e questo
  giustifica l'ultima selezione dei gradi.

  <subsection|Il centro esterno: coseno del seno e seno del coseno>

  Per <math|cos(sin x)> il centro esterno è zero. Prima calcoliamo le potenze
  dell'argomento che servono:

  <\equation*>
    sin<rsup|2>x=x<rsup|2>-<frac|x<rsup|4>|3>+o(x<rsup|4>),<space|1em>sin<rsup|4>x=x<rsup|4>+o(x<rsup|4>).
  </equation*>

  Inserendole in <math|cos u=1-u<rsup|2>/2+u<rsup|4>/24+o(u<rsup|4>)>,
  otteniamo

  <\equation*>
    cos(sin x)=1-<frac|x<rsup|2>|2>+<frac|5|24>x<rsup|4>+o(x<rsup|4>).
  </equation*>

  Per <math|sin(cos x)> il centro esterno è invece 1. Per usare Taylor
  scriviamo l'argomento come <math|1+h>, dove

  <\equation*>
    h=cos x-1=-<frac|x<rsup|2>|2>+o(x<rsup|3>).
  </equation*>

  Vogliamo conservare un resto <math|o(x<rsup|3>)>. Lo sviluppo lineare del
  seno con errore <math|o(h)> darebbe soltanto <math|o(x<rsup|2>)>, che non
  basta. Passiamo perciò al secondo ordine esterno:

  <\equation*>
    sin(1+h)=sin1+cos1\<cdot\>h-<frac|sin1|2>h<rsup|2>+o(h<rsup|2>).
  </equation*>

  Poiché <math|h=O(x<rsup|2>)>, il suo quadrato è
  <math|O(x<rsup|4>)=o(x<rsup|3>)>. Anche il resto composto è trascurabile
  alla scala richiesta. Rimane

  <\equation*>
    sin(cos x)=sin1-<frac|cos1|2>x<rsup|2>+o(x<rsup|3>).
  </equation*>

  Il termine quadratico esterno non compare nel risultato, ma è servito a
  garantire la precisione del resto.

  <section|Parte principale e ordine di infinitesimo>

  Confrontiamo <math|sin x> e <math|arctan x>. Entrambe iniziano con
  <math|x>, quindi nella differenza i termini lineari scompaiono. Al grado 3
  troviamo

  <\equation*>
    sin x-arctan x=<around*|(|-<frac|1|6>+<frac|1|3>|)>x<rsup|3>+o(x<rsup|3>)=<frac|x<rsup|3>|6>+o(x<rsup|3>).
  </equation*>

  Il primo termine che rimane descrive la nuova scala della differenza.

  <\concetto|Parte principale>
    Se <math|f(x)=a*x<rsup|b>+o(x<rsup|b>)>, con <math|a\<neq\>0>, il monomio
    <math|a*x<rsup|b>> è la parte principale di <math|f> rispetto a <math|x>.
    Quando <math|b\<gtr\>0>, <math|f> è un infinitesimo di ordine <math|b>.
    Con Taylor cerchiamo il monomio di grado più basso con coefficiente non
    nullo, dopo le cancellazioni.
  </concetto>

  Perciò <math|(sin x-arctan x)/(e<rsup|x<rsup|3>>-1)\<rightarrow\>1/6>:
  sopra abbiamo <math|x<rsup|3>/6+o(x<rsup|3>)>, sotto
  <math|x<rsup|3>+o(x<rsup|3>)>. Raccogliendo <math|x<rsup|3>> compare un
  rapporto di quantità che tendono a <math|1/6> e 1.

  Per una differenza di reciproci è utile prima fare il denominatore comune:

  <\equation*>
    <frac|1|sin x>-<frac|1|x>=<frac|x-sin x|x sin
    x>=<frac|x<rsup|3>/6+o(x<rsup|3>)|x<rsup|2>+o(x<rsup|2>)>=<frac|x|6>+o(x).
  </equation*>

  Anche le derivate si possono leggere dai coefficienti, se sappiamo già che
  esistono.

  Per <math|f(x)=(sin x)<rsup|3>> moltiplichiamo tre copie di
  <math|x-x<rsup|3>/6+o(x<rsup|3>)>. Il termine di grado 3 viene scegliendo
  <math|x> in tutti i fattori. Per arrivare al grado 5 dobbiamo scegliere il
  termine cubico in uno dei tre fattori e il termine lineare negli altri due:
  ci sono tre scelte.

  Il contributo è quindi <math|3x<rsup|2>(-x<rsup|3>/6)=-x<rsup|5>/2>.

  Anche il resto ha la precisione richiesta: ciascun <math|o(x<rsup|3>)>
  viene moltiplicato per due fattori <math|O(x)>, e dà quindi
  <math|o(x<rsup|5>)>. I prodotti con almeno due termini cubici hanno grado
  almeno 7, già trascurabile. Otteniamo <math|f=x<rsup|3>-x<rsup|5>/2+o(x<rsup|5>)>.
  Dal coefficiente <math|f<rsup|(5)>(0)/5!=-1/2> otteniamo
  <math|f<rsup|(5)>(0)=-60>. L'unicità identifica il coefficiente; non crea
  derivate che non abbiamo giustificato.

  <section|Reciproci e potenze variabili>

  Per ottenere lo sviluppo di <math|tan x> dividiamo quelli del seno e del
  coseno. Invertiamo prima il denominatore con
  <math|1/(1+t)=1-t+t<rsup|2>-t<rsup|3>+o(t<rsup|3>)>.

  Qui <math|t=cos x-1=-x<rsup|2>/2+x<rsup|4>/24+o(x<rsup|5>)> è
  <math|O(x<rsup|2>)>. Il cubo e il resto composto sono <math|o(x<rsup|5>)>.

  Nel termine <math|-t> troviamo <math|x<rsup|2>/2-x<rsup|4>/24>; nel termine
  <math|t<rsup|2>> troviamo <math|x<rsup|4>/4+o(x<rsup|5>)>. Il coefficiente
  di grado 4 è dunque <math|-1/24+1/4=5/24>. Quindi

  <\equation*>
    <frac|1|cos x>=1+<frac|x<rsup|2>|2>+<frac|5|24>x<rsup|4>+o(x<rsup|5>).
  </equation*>

  Moltiplichiamo per <math|sin x=x-x<rsup|3>/6+x<rsup|5>/120+o(x<rsup|5>)>.
  Al grado 3 il coefficiente è <math|1/2-1/6=1/3>; al grado 5 è
  <math|5/24-1/12+1/120=2/15>. Dunque

  <\equation*>
    tan x=x+<frac|x<rsup|3>|3>+<frac|2x<rsup|5>|15>+o(x<rsup|5>).
  </equation*>

  Un controllo usa l'inversa: inserendo <math|x+a*x<rsup|3>+b*x<rsup|5>>
  nello sviluppo di <math|arctan> e imponendo <math|arctan(tan x)=x> troviamo
  <math|a-1/3=0> e <math|b-a+1/5=0>. Ritornano gli stessi coefficienti.

  <subsection|Una potenza variabile: prima studiare l'esponente>

  Nelle potenze variabili usiamo prima esponenziale e logaritmo. Per
  <math|(1+sin x)<rsup|x>> la base è positiva vicino a zero e

  <\equation*>
    (1+sin x)<rsup|x>=e<rsup|u(x)>,<space|2em>u(x)=x log(1+sin x).
  </equation*>

  Il fattore esterno <math|x> indica che, per arrivare al grado 3
  nell'esponente, basta il logaritmo al grado 2. Troviamo <math|log(1+sin
  x)=x-x<rsup|2>/2+o(x<rsup|2>)>, dunque <math|u=x<rsup|2>-x<rsup|3>/2+o(x<rsup|3>)>.

  Poiché <math|u=O(x<rsup|2>)>, lo sviluppo
  <math|e<rsup|u>=1+u+u<rsup|2>/2+o(u<rsup|2>)> garantisce un errore
  <math|o(x<rsup|3>)> dopo il termine lineare. Ne segue

  <\equation*>
    (1+sin x)<rsup|x>=1+x<rsup|2>-<frac|x<rsup|3>|2>+o(x<rsup|3>).
  </equation*>

  <subsection|Una potenza che tende a e>

  Per <math|(1+x)<rsup|1/x>-e> dobbiamo isolare quanto l'esponente si
  discosta da 1. Lo sviluppo del logaritmo dà

  <\equation*>
    <frac|log(1+x)|x>=1-<frac|x|2>+o(x).
  </equation*>

  Usiamo <math|e<rsup|v>-1=v+o(v)> con <math|v=log(1+x)/x-1=-x/2+o(x)>.
  Otteniamo

  <\equation*>
    (1+x)<rsup|1/x>-e=e<around*|(|e<rsup|log(1+x)/x-1>-1|)>=-<frac|e|2>x+o(x),
  </equation*>

  La parte principale è dunque <math|-e*x/2>. Il passaggio al logaritmo ha
  trasformato una potenza variabile in un piccolo incremento dell'esponente.

  <section|Funzioni iperboliche: una nuova lettura dell'esponenziale>

  L'esponenziale si può separare in una parte pari e una dispari. La metà
  della somma di <math|e<rsup|x>> ed <math|e<rsup|-x>> è pari; la metà della
  loro differenza è dispari. Definiamo

  <\equation*>
    sinh x=<frac|e<rsup|x>-e<rsup|-x>|2>,<space|1.5em>cosh
    x=<frac|e<rsup|x>+e<rsup|-x>|2>,<space|1.5em>tanh x=<frac|sinh x|cosh x>.
  </equation*>

  Sono il <strong|seno iperbolico>, il <strong|coseno iperbolico> e la
  <strong|tangente iperbolica>. Il coseno iperbolico è sempre positivo,
  quindi tutte e tre sono definite su <math|\<bbb-R\>>. Inoltre <math|cosh
  x+sinh x=e<rsup|x>>. Queste definizioni non richiedono nuovi tipi di
  limite: tutto si ricava dagli esponenziali.

  Il seno e la tangente iperbolici sono dispari; il coseno iperbolico è pari.
  Per <math|x\<rightarrow\>+\<infty\>>, <math|sinh x> e <math|cosh x> tendono
  a <math|+\<infty\>>, mentre

  <\equation*>
    tanh x=<frac|1-e<rsup|-2x>|1+e<rsup|-2x>>\<rightarrow\>1.
  </equation*>

  Per simmetria, a <math|-\<infty\>> il seno tende a <math|-\<infty\>>, il
  coseno a <math|+\<infty\>> e la tangente a <math|-1>. Non sono periodiche.

  <subsection|Monotonia e identità fondamentali>

  <math|sinh> cresce strettamente perché <math|e<rsup|x>> cresce e
  <math|-e<rsup|-x>> cresce;

  <math|tanh> cresce perché <math|(z-1)/(z+1)> cresce per <math|z\<gtr\>0> e
  <math|z=e<rsup|2x>> cresce.

  Il minimo di <math|cosh> è 1 in zero: <math|e<rsup|x>+e<rsup|-x>-2=(e<rsup|x/2>-e<rsup|-x/2>)<rsup|2>\<geq\>0>.
  Sul semiasse positivo cresce. Per vederlo, se <math|1\<leq\>z\<less\>w>, la
  differenza fra i valori <math|w+1/w> e <math|z+1/z> è
  <math|(w-z)(1-1/(w*z))\<gtr\>0>. Applichiamo questo confronto a
  <math|z=e<rsup|x>>.

  <figura|<image|assets/iperboliche.pdf|130.0mm|72.5mm||>|Il coseno
  iperbolico è pari e ha minimo 1; il seno iperbolico passa per l'origine. La
  tangente iperbolica resta tra <math|-1> e 1 e si avvicina ai due asintoti.>

  Sottraendo i quadrati delle definizioni si cancellano <math|e<rsup|2x>> ed
  <math|e<rsup|-2x>>. Resta la relazione fondamentale

  <\equation*>
    cosh<rsup|2>x-sinh<rsup|2>x=1.
  </equation*>

  Sommando invece i quadrati otteniamo <math|cosh(2x)=cosh<rsup|2>x+sinh<rsup|2>x>;
  moltiplicando le definizioni troviamo <math|sinh(2x)=2sinh x cosh x>. I
  segni differiscono da quelli trigonometrici: qui la relazione fondamentale
  è una differenza di quadrati.

  <subsection|Derivate e sviluppi>

  Derivando gli esponenziali nelle definizioni troviamo

  <\equation*>
    (sinh x)<rprime|'>=cosh x,<space|1.5em>(cosh x)<rprime|'>=sinh
    x,<space|1.5em>(tanh x)<rprime|'>=<frac|1|cosh<rsup|2>x>=1-tanh<rsup|2>x.
  </equation*>

  La metà della somma e la metà della differenza degli sviluppi di
  <math|e<rsup|x>> ed <math|e<rsup|-x>> danno

  <\equation*>
    sinh x=x+<frac|x<rsup|3>|6>+<frac|x<rsup|5>|120>+o(x<rsup|5>),
  </equation*>

  <\equation*>
    cosh x=1+<frac|x<rsup|2>|2>+<frac|x<rsup|4>|24>+o(x<rsup|5>).
  </equation*>

  I coefficienti presenti sono tutti positivi. In particolare <math|tanh
  x\<sim\>x> per <math|x\<rightarrow\>0>.

  <subsection|Per proseguire: inverse e settori iperbolici>

  Il seno iperbolico è una biiezione <math|\<bbb-R\>\<rightarrow\>\<bbb-R\>>;
  la tangente iperbolica è una biiezione <math|\<bbb-R\>\<rightarrow\>(-1,1)>.
  Il coseno iperbolico va ristretto a <math|[0,+\<infty\>)> per essere
  invertibile; la sua immagine è <math|[1,+\<infty\>)>.

  Le inverse si chiamano anche <strong|settori iperbolici>, qui indicati con
  <math|<math-up|Sett sinh>>, <math|<math-up|Sett cosh>> e
  <math|<math-up|Sett tanh>>.

  Ricaviamo la formula del settore coseno iperbolico. Per <math|y\<geq\>1>
  cerchiamo <math|t\<geq\>0> con <math|cosh t=y>. Ponendo <math|z=e<rsup|t>>
  l'equazione diventa <math|z<rsup|2>-2y*z+1=0>, con radici
  <math|y\<pm\><sqrt|y<rsup|2>-1>>. Entrambe sono positive e hanno prodotto
  1.

  Siccome <math|t\<geq\>0> richiede <math|z\<geq\>1>, scegliamo il segno
  positivo:

  <\equation*>
    <math-up|Sett cosh>(y)=log(y+<sqrt|y<rsup|2>-1>)<space|2em>(y\<geq\>1).
  </equation*>

  La relazione fondamentale colloca <math|(cosh \<alpha\>,sinh \<alpha\>)>
  sull'iperbole <math|X<rsup|2>-Y<rsup|2>=1>. Il parametro
  <math|\<alpha\>\<geq\>0> misura il doppio dell'area del settore compreso
  tra l'asse orizzontale, l'arco di iperbole e il raggio verso quel punto.
  Questo fatto geometrico è enunciato senza dimostrazione nelle fonti e qui
  resta un'interpretazione, non uno strumento di calcolo.

  <figura|<image|assets/iperbole.pdf|155.0mm|65.0mm||>|Il parametro circolare
  e quello iperbolico si leggono attraverso l'area di un settore: in entrambi
  i disegni l'area indicata è <math|\<alpha\>/2>. Le curve soddisfano
  rispettivamente una somma e una differenza di quadrati uguale a 1.>

  La lezione anticipa anche il legame complesso: usando la formula di Eulero
  e le estensioni complesse delle funzioni, <math|cosh(i*x)=cos x> e
  <math|sinh(i*x)=i sin x>. Si tratta di un collegamento futuro. Il teorema
  reale di Taylor con resto di Peano, da solo, non autorizza a sostituire
  numeri complessi né a trasformare uno sviluppo finito in una serie
  infinita.

  <new-page>

  <section|Scegliere l'ordine: un limite completo>

  Consideriamo il rapporto

  <\equation*>
    <frac|log(1+sin<rsup|2>x)-x<rsup|2>|sin<rsup|2>(tanh<rsup|2>x)-x<rsup|5>>.
  </equation*>

  Prima guardiamo il denominatore. Siccome <math|tanh x\<sim\>x>, abbiamo
  <math|tanh<rsup|2>x\<sim\>x<rsup|2>> e <math|sin(tanh<rsup|2>x)\<sim\>x<rsup|2>>.
  Quindi il suo quadrato è <math|x<rsup|4>+o(x<rsup|4>)>. Il termine
  <math|x<rsup|5>> è trascurabile e la parte principale del denominatore è
  <math|x<rsup|4>>.

  Al numeratore invece il termine di grado 2 viene sottratto: dobbiamo
  arrivare al grado 4. Sviluppiamo prima il quadrato del seno:

  <\equation*>
    sin<rsup|2>x=x<rsup|2>-<frac|x<rsup|4>|3>+o(x<rsup|4>).
  </equation*>

  Poi sostituiamo <math|t=sin<rsup|2>x> in
  <math|log(1+t)=t-t<rsup|2>/2+o(t<rsup|2>)>. Poiché
  <math|t\<sim\>x<rsup|2>>, il resto è <math|o(x<rsup|4>)>. Ne segue

  <\equation*>
    log(1+sin<rsup|2>x)=x<rsup|2>-<frac|x<rsup|4>|3>-<frac|x<rsup|4>|2>+o(x<rsup|4>)=x<rsup|2>-<frac|5|6>x<rsup|4>+o(x<rsup|4>).
  </equation*>

  Il limite del rapporto vale quindi <math|-5/6>. Abbiamo usato ordini
  diversi nei singoli pezzi: al denominatore bastavano equivalenze che non
  subivano cancellazioni; al numeratore occorreva un termine ulteriore.

  <subsection|Controllare il centro anche nelle successioni>

  Per una successione vale lo stesso criterio sul centro. L'argomento
  <math|1/n> tende a zero e ammette gli sviluppi in zero. L'argomento
  <math|n> tende invece all'infinito: in <math|(2cos
  n-2+n<rsup|2>)/n<rsup|4>> non si può sostituire il polinomio locale del
  coseno. La limitatezza <math|\|cos n\|\<leq\>1> dà direttamente il limite
  zero.

  <\verifica|14>
    <strong|1.> Calcola <math|lim<rsub|n\<rightarrow\>+\<infty\>>n<rsup|2>(1-n
    arctan(1/n))>. Spiega fino a quale ordine serve conoscere l'arcotangente.

    <strong|2.> Determina la parte principale di
    <math|(n<rsup|3>+5)/(n<rsup|3>-2)-4<rsup|1/n>> per
    <math|n\<rightarrow\>+\<infty\>>. I due termini tendono a 1: quale si
    discosta da 1 più lentamente?

    <strong|3.> Calcola <math|lim<rsub|x\<rightarrow\>0><frac|(1+x)<rsup|1/3>+(1-x)<rsup|1/3>-2|1-cos
    x+x<rsup|4>>>.
  </verifica>

  <appendix|Soluzioni ragionate>

  Ogni sezione richiama un capitolo. Il numero 4.1 indica il primo esercizio
  della Verifica 4. Prima di leggere, prova a scegliere il primo passaggio e
  a spiegarne il motivo. Nelle soluzioni seguiamo anche le condizioni di
  dominio e il controllo dell'errore.

  <subsection*|Capitolo 1 \<#2014\> Logica e insiemi>

  <strong|1.1.> Indichiamo con <math|P(a,s,e)> la frase \Snell'anno <math|a>
  lo studente <math|s> fallisce l'esame <math|e>\T. L'enunciato è
  <math|\<forall\>a\<exists\>s\<forall\>e,P(a,s,e)>.

  Neghiamo i quantificatori dall'esterno: \Sper ogni anno\T diventa \Sesiste
  un anno\T; \Sesiste uno studente\T diventa \Sper ogni studente\T; \Stutti
  gli esami\T diventa \Sesiste un esame\T. Otteniamo
  <math|\<exists\>a\<forall\>s\<exists\>e,\<neg\>P(a,s,e)>.

  Esiste quindi un anno in cui ogni studente supera almeno un esame,
  assumendo che l'alternativa sia superare o fallire. Non si richiede uno
  stesso esame superato da tutti: la scelta può dipendere dallo studente.

  <strong|1.2.> Per formare un sottoinsieme di <math|{a,b}> decidiamo se
  prendere <math|a> e se prendere <math|b>. Otteniamo
  <math|\<cal-P\>({a,b})={\<varnothing\>,{a},{b},{a,b}}>, supponendo
  <math|a\<neq\>b>.

  La frase <math|\<varnothing\>\<in\>{\<varnothing\>}> è vera perché il vuoto
  è l'unico elemento dell'insieme a destra. Anche
  <math|\<varnothing\>\<subseteq\>{\<varnothing\>}> è vera, perché il vuoto è
  contenuto in ogni insieme.

  La frase <math|{\<varnothing\>}\<subseteq\>\<varnothing\>> è falsa:
  l'elemento <math|\<varnothing\>> del primo insieme non appartiene al
  secondo, che non ha elementi.

  <subsection*|Capitolo 2 \<#2014\> Funzioni>

  <strong|2.1.> L'equazione <math|y=3x-2> equivale a <math|x=(y+2)/3>. Per
  ogni <math|y\<in\>\<bbb-R\>> questo fornisce una partenza, quindi <math|f>
  è suriettiva.

  L'entrata è unica, perché l'equazione risolta per <math|x> ammette un solo
  risultato. Possiamo anche verificarlo direttamente:
  <math|3x<rsub|1>-2=3x<rsub|2>-2> implica <math|x<rsub|1>=x<rsub|2>>. Quindi
  <math|f> è iniettiva.

  Dunque <math|f<rsup|-1>(y)=(y+2)/3>. Sostituendo si verifica che entrambe
  le composizioni sono identità.

  <strong|2.2.> Su <math|[-1,2]> il quadrato assume il minimo 0 in un punto
  interno e il massimo 4 in 2; ogni valore intermedio viene raggiunto
  prendendo la radice non negativa, che sta in <math|[0,2]>. Quindi
  <math|q([-1,2])=[0,4]>, mentre sostituire soltanto gli estremi avrebbe
  suggerito erroneamente <math|[1,4]>.

  Per la controimmagine chiediamo quali entrate abbiano quadrato fra 1 e 4.
  Serve <math|1\<leq\>x<rsup|2>\<leq\>4>, cioè <math|1\<leq\>\|x\|\<leq\>2>:
  otteniamo <math|[-2,-1]\<cup\>[1,2]>.

  <subsection*|Capitolo 3 \<#2014\> Induzione>

  <strong|3.1.> Per <math|n=1> entrambi i membri valgono 1. Supponiamo
  <math|1+\<cdots\>+n=n(n+1)/2>. Aggiungiamo il nuovo addendo <math|n+1>:

  <\equation*>
    1+\<cdots\>+n+(n+1)=<frac|n(n+1)|2>+(n+1)=<frac|(n+1)(n+2)|2>.
  </equation*>

  L'ipotesi è usata nella prima uguaglianza, dove sostituiamo la somma
  precedente. L'ultima espressione è la formula con indice <math|n+1>, quindi
  l'induzione conclude.

  <strong|3.2.> Per <math|n=0> vale <math|1=1>.

  Per 1, 2 e 3 la proprietà è falsa: confrontiamo 1 con 2, 2 con 4 e 6 con 8.

  Per <math|n=4> vale <math|24\<geq\>16>. Questa è la base dalla quale
  proviamo a procedere. Supponiamo <math|n!\<geq\>2<rsup|n>> a un indice
  <math|n\<geq\>4>. Nel fattoriale successivo separiamo il fattore nuovo:

  <\equation*>
    (n+1)!=(n+1)n!\<geq\>(n+1)2<rsup|n>\<geq\>2\<cdot\>2<rsup|n>=2<rsup|n+1>.
  </equation*>

  L'ultimo confronto usa <math|n+1\<geq\>2>. La base 4 e il passo danno tutti
  i casi successivi. La risposta completa è <math|n=0> oppure
  <math|n\<geq\>4>: una base vera a 0 non attraversa da sola i tre casi
  falsi.

  <subsection*|Capitolo 4 \<#2014\> Completezza ed estremi>

  <strong|4.1.> Per <math|n\<geq\>1>, <math|1-1/n\<geq\>0>, e con <math|n=1>
  si ottiene 0. Quindi <math|min A=inf A=0>.

  Tutti gli elementi sono minori di 1, che è un maggiorante. Dato
  <math|\<varepsilon\>\<gtr\>0>, la proprietà archimedea permette di
  scegliere <math|n\<gtr\>1/\<varepsilon\>>, così
  <math|1-1/n\<gtr\>1-\<varepsilon\>>. La caratterizzazione dà <math|sup
  A=1>. Il massimo non esiste, perché 1 non appartiene ad <math|A>.

  <strong|4.2.> Poniamo <math|l=inf A>. Dalla proprietà <math|l\<leq\>a> per
  ogni <math|a\<in\>A> segue <math|-a\<leq\>-l>: <math|-l> è un maggiorante
  di <math|-A>.

  Per provare che è il più piccolo, supponiamo che <math|M> sia un
  maggiorante con <math|M\<less\>-l>. Allora <math|-a\<leq\>M> per ogni
  <math|a\<in\>A>, cioè <math|-M\<leq\>a>. Ma <math|-M\<gtr\>l> sarebbe un
  minorante di <math|A> maggiore dell'infimo, impossibile. Dunque
  <math|sup(-A)=-l>.

  <subsection*|Capitolo 5 \<#2014\> Grafici e funzioni elementari>

  <strong|5.1.> Un valore assoluto non è negativo: per
  <math|\<lambda\>\<less\>0> non ci sono soluzioni. Se <math|\<lambda\>=0>,
  dobbiamo avere <math|x<rsup|2>-4=0>, quindi le soluzioni sono due:
  <math|x=\<pm\>2>.

  Per <math|\<lambda\>\<gtr\>0> il valore dentro il modulo può essere
  <math|\<lambda\>> oppure <math|-\<lambda\>>. Risolviamo quindi le due
  equazioni

  <\equation*>
    x<rsup|2>=4+\<lambda\>,<space|2em>x<rsup|2>=4-\<lambda\>.
  </equation*>

  La prima ha sempre due soluzioni, perché <math|4+\<lambda\>\<gtr\>0>. Nella
  seconda il numero a destra cambia segno al valore <math|\<lambda\>=4>:
  abbiamo due soluzioni per <math|0\<less\>\<lambda\>\<less\>4>, una per
  <math|\<lambda\>=4> e nessuna per <math|\<lambda\>\<gtr\>4>.

  In totale le soluzioni sono quattro per
  <math|0\<less\>\<lambda\>\<less\>4>, tre per <math|\<lambda\>=4>, due per
  <math|\<lambda\>\<gtr\>4>. Con i primi due casi, il conteggio completo è
  dunque 0, 2, 4, 3, 2.

  Il caso <math|\<lambda\>=0> resta separato perché le due equazioni
  coincidono: contandole entrambe avremmo contato due volte le stesse
  soluzioni.

  <strong|5.2.> Il dominio richiede <math|3x+1\<gtr\>0> e <math|x+5\<gtr\>0>,
  dunque <math|x\<gtr\>-1/3>.

  Il logaritmo è iniettivo sui positivi, quindi l'equazione equivale a
  <math|3x+1=x+5>. Otteniamo <math|x=2>, che appartiene al dominio; entrambi
  gli argomenti valgono 7. La verifica del dominio completa l'equivalenza.

  <subsection*|Capitolo 6 \<#2014\> Trigonometria e inverse>

  <strong|6.1.> Il seno di <math|5\<pi\>/6> vale <math|1/2>; l'angolo con lo
  stesso seno nell'intervallo <math|[-\<pi\>/2,\<pi\>/2]> è <math|\<pi\>/6>.
  Quindi <math|arcsin(sin(5\<pi\>/6))=\<pi\>/6>.

  Il coseno di <math|7\<pi\>/4> vale <math|<sqrt|2>/2>; l'angolo del ramo
  <math|[0,\<pi\>]> con quel coseno è <math|\<pi\>/4>. Quindi
  <math|arccos(cos(7\<pi\>/4))=\<pi\>/4>.

  <strong|6.2.> Prima occorre <math|t\<in\>[-1,1]> perché l'arcocoseno sia
  definito. Posto <math|\<alpha\>=arccos t>, abbiamo <math|cos \<alpha\>=t> e
  <math|sin \<alpha\>=<sqrt|1-t<rsup|2>>>.

  La tangente esiste se <math|cos \<alpha\>\<neq\>0>, cioè <math|t\<neq\>0>.
  Pertanto il dominio è <math|[-1,0)\<cup\>(0,1]> e

  <\equation*>
    tan(arccos t)=<frac|<sqrt|1-t<rsup|2>>|t>.
  </equation*>

  Negli estremi <math|t=\<pm\>1> il numeratore è zero e il denominatore non
  nullo: la formula restituisce correttamente 0. Per <math|t\<less\>0> il
  rapporto è negativo, come la tangente nel secondo quadrante.

  <subsection*|Capitolo 7 \<#2014\> Successioni e definizione di limite>

  <strong|7.1.> Il limite proposto suggerisce di misurare la distanza da 1.
  Per <math|n\<geq\>0> otteniamo

  <\equation*>
    <around*|\||<frac|n|n+1>-1|\|>=<frac|1|n+1>.
  </equation*>

  Fissiamo <math|\<varepsilon\>\<gtr\>0> e scegliamo un intero
  <math|N\<geq\>1/\<varepsilon\>>. Se <math|n\<geq\>N>, allora
  <math|1/(n+1)\<leq\>\<varepsilon\>>. Questo dimostra il limite con la
  definizione.

  Inoltre <math|n/(n+1)\<less\>1> per ogni <math|n\<geq\>0>, quindi l'arrivo
  è da sinistra: <math|1<rsup|->>.

  <strong|7.2.> Il termine alterno è sempre almeno <math|-2>, perciò
  <math|a<rsub|n>\<geq\>n-2\<rightarrow\>+\<infty\>>. Il confronto dimostra
  <math|a<rsub|n>\<rightarrow\>+\<infty\>>.

  La monotonia è una domanda diversa. Fra un indice pari e il dispari
  successivo troviamo

  <\equation*>
    a<rsub|2k>=2k+2,<space|2em>a<rsub|2k+1>=2k-1.
  </equation*>

  La successione scende di 3 in tutti questi passaggi, arbitrariamente
  avanti. Non è dunque definitivamente crescente, neppure in senso debole. Il
  fatto che le discese continuino non impedisce a tutti i termini di superare
  infine ogni soglia.

  <subsection*|Capitolo 8 \<#2014\> Monotonia e algebra dei limiti>

  <strong|8.1.> La ricorrenza suggerisce di mantenere il controllo
  <math|1\<leq\>a<rsub|n>\<leq\>2>. Vale per <math|n=1>.

  Se vale all'indice <math|n>, allora <math|3\<leq\>2+a<rsub|n>\<leq\>4>,
  dunque <math|1\<leq\><sqrt|2+a<rsub|n>>\<leq\>2>. L'induzione dimostra la
  limitatezza e garantisce che tutti i termini siano definiti.

  Per la crescita, il primo confronto è <math|a<rsub|2>=<sqrt|3>\<gtr\>a<rsub|1>>.
  Se <math|a<rsub|n>\<gtr\>a<rsub|n-1>>, la radice crescente dà
  <math|a<rsub|n+1>=<sqrt|2+a<rsub|n>>\<gtr\><sqrt|2+a<rsub|n-1>>=a<rsub|n>>.
  Un'altra induzione dimostra la crescita stretta.

  Per il teorema delle monotone esiste un limite reale <math|L\<in\>[1,2]>.

  Per calcolarlo non occorre ancora usare la continuità della radice. I
  termini <math|a<rsub|n+1>> tendono allo stesso <math|L> perché spostare di
  un posto una coda non cambia il limite.

  Nell'identità <math|a<rsub|n+1><rsup|2>=2+a<rsub|n>> usiamo soltanto somma
  e prodotto: <math|L<rsup|2>=2+L>. La fattorizzazione <math|(L-2)(L+1)=0> dà
  <math|L=2> oppure <math|L=-1>. La condizione <math|L\<in\>[1,2]> seleziona
  <math|L=2>.

  Non abbiamo dedotto l'esistenza del limite dalla sola equazione: l'abbiamo
  prima ottenuta con monotonia e limitatezza.

  <strong|8.2.> Poiché <math|cos n\<leq\>1> e <math|n\<geq\>0>, vale
  <math|n<rsup|2>-n cos n\<geq\>n<rsup|2>-n=n(n-1)>.

  Per <math|n\<geq\>2>, il membro destro è almeno <math|n<rsup|2>/2>, che
  tende a <math|+\<infty\>>. Il confronto conclude. Non occorre conoscere un
  limite del coseno: basta una sua limitazione uniforme.

  <subsection*|Capitolo 9 \<#2014\> Radici, rapporti e cancellazioni>

  <strong|9.1.> Poniamo <math|b<rsub|n>=<binom|3n|n>=(3n)!/((2n)!n!)>. I
  termini sono positivi. Nel rapporto fra termini consecutivi scriviamo prima
  tutte le frazioni:

  <\equation*>
    <frac|b<rsub|n+1>|b<rsub|n>>=<frac|(3n+3)!|(2n+2)!(n+1)!>\<cdot\><frac|(2n)!n!|(3n)!>.
  </equation*>

  Per esempio, <math|(3n+3)!/(3n)!> lascia soltanto i tre fattori nuovi
  <math|(3n+3)(3n+2)(3n+1)>. Allo stesso modo, al denominatore restano due
  fattori da <math|(2n+2)!/(2n)!> e uno da <math|(n+1)!/n!>. Quindi

  <\equation*>
    <frac|b<rsub|n+1>|b<rsub|n>>=<frac|(3n+3)(3n+2)(3n+1)|(2n+2)(2n+1)(n+1)>\<rightarrow\><frac|27|4>.
  </equation*>

  Per leggere l'ultimo limite dividiamo numeratore e denominatore per
  <math|n<rsup|3>>: rimangono i prodotti dei coefficienti dominanti,
  <math|3\<cdot\>3\<cdot\>3> e <math|2\<cdot\>2\<cdot\>1>.

  Il teorema che collega rapporto e radice dà
  <math|<sqrt|b<rsub|n>|n>\<rightarrow\>27/4>. Il criterio del rapporto
  avrebbe dato soltanto <math|b<rsub|n>\<rightarrow\>+\<infty\>>; qui serviva
  l'informazione più precisa sulla radice.

  <strong|9.2.> Per <math|n\<geq\>7> il radicando è positivo, perché
  <math|n<rsup|2>-7n+2=n(n-7)+2\<geq\>2>.

  La radice è minore di <math|n>, quindi il risultato sarà negativo.
  Razionalizzando otteniamo

  <\equation*>
    <sqrt|n<rsup|2>-7n+2>-n=<frac|-7n+2|<sqrt|n<rsup|2>-7n+2>+n>=<frac|-7+2/n|<sqrt|1-7/n+2/n<rsup|2>>+1>\<rightarrow\>-<frac|7|2>.
  </equation*>

  Abbiamo diviso per <math|n\<gtr\>0> e usato la stima della radice vicino a
  1 dimostrata nel capitolo. Il limite negativo conferma il confronto
  iniziale.

  <subsection*|Capitolo 10 \<#2014\> Limiti di funzioni e limiti notevoli>

  <strong|10.1.> Occorre che 2 sia punto di accumulazione da sinistra del
  dominio <math|D>: per ogni <math|\<delta\>\<gtr\>0>, l'insieme
  <math|D\<cap\>[2-\<delta\>,2)> è non vuoto.

  La definizione del limite richiesto è: per ogni <math|M\<in\>\<bbb-R\>>
  esiste <math|\<delta\>\<gtr\>0> tale che, per ogni
  <math|x\<in\>D\<cap\>[2-\<delta\>,2)>, vale <math|f(x)\<geq\>M>.

  Per la continuità di <math|f(x)=3x+1> in un qualunque
  <math|x<rsub|0>\<in\>\<bbb-R\>>, misuriamo direttamente la differenza:
  <math|\|f(x)-f(x<rsub|0>)\|=3\|x-x<rsub|0>\|>. Dato
  <math|\<varepsilon\>\<gtr\>0>, scegliamo <math|\<delta\>=\<varepsilon\>/3>.
  Per <math|\|x-x<rsub|0>\|\<leq\>\<delta\>> la distanza dei valori è
  <math|\<leq\>\<varepsilon\>>, come richiesto.

  <strong|10.2.> Nel primo limite gli argomenti piccoli sono <math|5x> e
  <math|2x>. Facciamoli comparire anche nei denominatori:

  <\equation*>
    <frac|tan(5x)|log(1+2x)>=<frac|tan(5x)|5x>\<cdot\><frac|5|2>\<cdot\><frac|2x|log(1+2x)>\<rightarrow\>1\<cdot\><frac|5|2>\<cdot\>1=<frac|5|2>.
  </equation*>

  Tutte le funzioni sono definite e i denominatori sono non nulli per
  <math|x\<neq\>0> abbastanza vicino a zero.

  Nel secondo limite poniamo <math|y=x-3\<pi\>/2>. Allora
  <math|y\<rightarrow\>0>, <math|2x-3\<pi\>=2y> e la formula di addizione dà
  <math|cos(3\<pi\>/2+y)=sin y>. Dunque

  <\equation*>
    <frac|cos x|2x-3\<pi\>>=<frac|sin y|2y>\<rightarrow\><frac|1|2>.
  </equation*>

  Il segno è positivo: a destra del centro, sia il seno del piccolo
  incremento sia il denominatore sono positivi.

  <strong|10.3.> Per <math|g> basta <math|2+sin x\<geq\>1>. Quando
  <math|x\<gtr\>0>, otteniamo <math|g(x)\<geq\>x\<rightarrow\>+\<infty\>>,
  quindi <math|g(x)\<rightarrow\>+\<infty\>>.

  Per <math|f> la stima corrispondente sarebbe soltanto <math|f(x)\<geq\>0>,
  insufficiente. Il fattore <math|1+sin x> si annulla ancora arbitrariamente
  avanti. Per <math|u<rsub|n>=\<pi\>n> abbiamo
  <math|f(u<rsub|n>)=\<pi\>n\<rightarrow\>+\<infty\>>; per
  <math|v<rsub|n>=3\<pi\>/2+2\<pi\>n> abbiamo <math|f(v<rsub|n>)=0>.

  Le due successioni di argomenti vanno entrambe a <math|+\<infty\>>, ma i
  valori hanno limiti diversi. Il limite di <math|f> non esiste.

  <subsection*|Capitolo 11 \<cdot\> Simboli di Landau>

  <strong|11.1.> Vicino a zero, <math|x<rsup|3>/x<rsup|2>=x\<rightarrow\>0>,
  quindi <math|x<rsup|3>=o(x<rsup|2>)>. Il rapporto opposto è <math|1/x>, che
  non tende a zero.

  Per <math|x\<rightarrow\>+\<infty\>> i ruoli si scambiano:
  <math|x<rsup|2>/x<rsup|3>=1/x\<rightarrow\>0>.

  Per <math|x sin(1/x)> il rapporto con <math|x> è <math|sin(1/x)>, limitato
  ma non convergente a zero: lungo <math|x<rsub|n>=1/(\<pi\>/2+2\<pi\>n)>
  vale 1, lungo <math|y<rsub|n>=1/(3\<pi\>/2+2\<pi\>n)> vale <math|-1>.
  Abbiamo dunque O grande, ma non o piccolo.

  <strong|11.2.> L'argomento dell'esponenziale è <math|arctan(2x)=2x+o(x)>.
  Sostituendolo in <math|e<rsup|t>=1+t+o(t)> otteniamo
  <math|e<rsup|arctan(2x)>=1+2x+o(x)>.

  Lo sviluppo binomiale dà <math|(1+x)<rsup|1/3>=1+x/3+o(x)>. La differenza è
  <math|5x/3+o(x)>, mentre il denominatore è <math|5x-x+o(x)=4x+o(x)>.

  Dividendo per <math|x> resta un rapporto con limite <math|(5/3)/4=5/12>. I
  resti espliciti giustificano la sottrazione delle due quantità che tendono
  a 1.

  <subsection*|Capitolo 12 \<cdot\> Derivate>

  <strong|12.1.> Nell'esponenziale <math|f(0)=1> e <math|f<rprime|'>(0)=1>;
  la tangente è <math|y=1+x>.

  Per <math|\|x\|>, invece, il valore tende a zero da entrambi i lati: la
  funzione è continua in zero.

  Il rapporto incrementale è <math|\|h\|/h>, uguale a 1 da destra e <math|-1>
  da sinistra. La derivata non esiste. La continuità controlla il valore, la
  derivabilità richiede anche un'unica pendenza locale.

  <strong|12.2.> Per <math|x\<gtr\>0> scriviamo <math|x<rsup|x>=e<rsup|x log
  x>>. Derivando prima l'esponente con il prodotto, troviamo <math|(x log
  x)<rprime|'>=log x+1>. Quindi <math|(x<rsup|x>)<rprime|'>=x<rsup|x>(log
  x+1)>.

  Per l'altra funzione scriviamo <math|(sin x)<rsup|cos x>=e<rsup|cos x
  log(sin x)>>. L'esponente ha derivata <math|-sin x log(sin
  x)+cos<rsup|2>x/sin x>. Moltiplicando per l'esponenziale otteniamo

  <\equation*>
    [(sin x)<rsup|cos x>]<rprime|'>=(sin x)<rsup|cos x><around*|(|-sin x
    log(sin x)+<frac|cos<rsup|2>x|sin x>|)>.
  </equation*>

  La base deve essere positiva per definire la potenza reale attraverso il
  logaritmo e applicare queste regole su un intervallo aperto.

  <subsection*|Capitolo 13 \<cdot\> De L'Hôpital e Taylor>

  <strong|13.1.> Nella formula binomiale poniamo <math|a=1/2>. Il
  coefficiente quadratico è <math|a(a-1)/2=-1/8>. Scriviamo quindi

  <\equation*>
    <sqrt|1+x>=1+<frac|x|2>-<frac|x<rsup|2>|8>+o(x<rsup|2>).
  </equation*>

  Sottraendo il termine costante e quello lineare resta
  <math|-x<rsup|2>/8+o(x<rsup|2>)>. Dividendo per <math|x<rsup|2>> il limite
  vale <math|-1/8>. Il dominio è rispettato perché <math|1+x\<gtr\>0> vicino
  a zero.

  <strong|13.2.> Il rapporto delle derivate <math|1-sin x> non ha limite:
  quindi l'ipotesi necessaria per applicare il teorema non è soddisfatta e De
  L'Hôpital non dà una conclusione sul rapporto originale.

  Scrivendo invece <math|(x+cos x)/x=1+cos x/x>, osserviamo <math|\|cos
  x/x\|\<leq\>1/x\<rightarrow\>0> per <math|x\<rightarrow\>+\<infty\>>. Il
  limite è 1.

  <subsection*|Capitolo 14 \<cdot\> Operazioni con gli sviluppi>

  <strong|14.1.> Il fattore esterno complessivo è <math|n<rsup|3>> sul
  termine dell'arcotangente: serve un resto che, moltiplicato per
  <math|n<rsup|3>>, tenda a zero. Taylor all'ordine 3 dà

  <\equation*>
    arctan(1/n)=<frac|1|n>-<frac|1|3n<rsup|3>>+o(1/n<rsup|3>).
  </equation*>

  Quindi <math|n arctan(1/n)=1-1/(3n<rsup|2>)+o(1/n<rsup|2>)>.

  Dopo la sottrazione da 1 e la moltiplicazione per <math|n<rsup|2>> rimane
  <math|1/3+o(1)>. Il limite vale <math|1/3>. Non era necessario arrivare al
  grado 4.

  <strong|14.2.> Prima riscriviamo la frazione in modo esatto:

  <\equation*>
    <frac|n<rsup|3>+5|n<rsup|3>-2>=1+<frac|7|n<rsup|3>-2>=1+o(1/n).
  </equation*>

  Per la radice usiamo l'esponenziale: <math|4<rsup|1/n>=e<rsup|(log4)/n>=1+(log4)/n+o(1/n)>.

  Il secondo termine si scosta da 1 alla scala <math|1/n>, mentre il primo
  alla scala <math|1/n<rsup|3>>. Sottraendo, la parte principale è
  <math|-(log4)/n>; il segno negativo corrisponde al fatto che,
  definitivamente, il secondo termine è maggiore.

  <strong|14.3.> Il coefficiente quadratico di <math|(1+x)<rsup|1/3>> è
  <math|(1/3)(-2/3)/2=-1/9>. Sostituendo anche <math|-x> troviamo

  <\equation*>
    (1\<pm\>x)<rsup|1/3>=1\<pm\><frac|x|3>-<frac|x<rsup|2>|9>+o(x<rsup|2>).
  </equation*>

  I termini lineari hanno segni opposti e si cancellano; quelli quadratici si
  sommano. Il numeratore è <math|-2x<rsup|2>/9+o(x<rsup|2>)>.

  Il denominatore è <math|x<rsup|2>/2+o(x<rsup|2>)>, perché
  <math|x<rsup|4>=o(x<rsup|2>)>. Il limite vale <math|(-2/9)/(1/2)=-4/9>.
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
    <associate|auto-1|<tuple|?|2>>
    <associate|auto-10|<tuple|2.4|8>>
    <associate|auto-11|<tuple|2.5|9>>
    <associate|auto-12|<tuple|3|10>>
    <associate|auto-13|<tuple|3.1|10>>
    <associate|auto-14|<tuple|3.2|10>>
    <associate|auto-15|<tuple|3.3|11>>
    <associate|auto-16|<tuple|3.4|12>>
    <associate|auto-17|<tuple|4|13>>
    <associate|auto-18|<tuple|4.1|13>>
    <associate|auto-19|<tuple|4.2|13>>
    <associate|auto-2|<tuple|1|5>>
    <associate|auto-20|<tuple|4.3|14>>
    <associate|auto-21|<tuple|4.4|14>>
    <associate|auto-22|<tuple|4.5|15>>
    <associate|auto-23|<tuple|5|16>>
    <associate|auto-24|<tuple|5.1|16>>
    <associate|auto-25|<tuple|5.2|16>>
    <associate|auto-26|<tuple|5.3|17>>
    <associate|auto-27|<tuple|5.4|18>>
    <associate|auto-28|<tuple|5.5|19>>
    <associate|auto-29|<tuple|6|20>>
    <associate|auto-3|<tuple|1.1|5>>
    <associate|auto-30|<tuple|6.1|20>>
    <associate|auto-31|<tuple|6.2|21>>
    <associate|auto-32|<tuple|6.3|21>>
    <associate|auto-33|<tuple|6.4|22>>
    <associate|auto-34|<tuple|6.5|23>>
    <associate|auto-35|<tuple|7|24>>
    <associate|auto-36|<tuple|7.1|24>>
    <associate|auto-37|<tuple|7.2|24>>
    <associate|auto-38|<tuple|7.3|25>>
    <associate|auto-39|<tuple|7.4|26>>
    <associate|auto-4|<tuple|1.2|5>>
    <associate|auto-40|<tuple|8|28>>
    <associate|auto-41|<tuple|8.1|28>>
    <associate|auto-42|<tuple|8.2|29>>
    <associate|auto-43|<tuple|8.3|31>>
    <associate|auto-44|<tuple|8.4|31>>
    <associate|auto-45|<tuple|9|33>>
    <associate|auto-46|<tuple|9.1|33>>
    <associate|auto-47|<tuple|9.2|34>>
    <associate|auto-48|<tuple|9.3|34>>
    <associate|auto-49|<tuple|9.4|35>>
    <associate|auto-5|<tuple|1.3|6>>
    <associate|auto-50|<tuple|9.5|36>>
    <associate|auto-51|<tuple|10|38>>
    <associate|auto-52|<tuple|10.1|38>>
    <associate|auto-53|<tuple|10.2|39>>
    <associate|auto-54|<tuple|10.3|41>>
    <associate|auto-55|<tuple|10.4|42>>
    <associate|auto-56|<tuple|10.5|44>>
    <associate|auto-57|<tuple|10.6|44>>
    <associate|auto-58|<tuple|11|46>>
    <associate|auto-59|<tuple|11.1|46>>
    <associate|auto-6|<tuple|2|7>>
    <associate|auto-60|<tuple|11.2|47>>
    <associate|auto-61|<tuple|11.3|47>>
    <associate|auto-62|<tuple|11.4|48>>
    <associate|auto-63|<tuple|12|49>>
    <associate|auto-64|<tuple|12.1|49>>
    <associate|auto-65|<tuple|12.2|50>>
    <associate|auto-66|<tuple|12.3|50>>
    <associate|auto-67|<tuple|12.4|51>>
    <associate|auto-68|<tuple|12.5|52>>
    <associate|auto-69|<tuple|12.6|52>>
    <associate|auto-7|<tuple|2.1|7>>
    <associate|auto-70|<tuple|13|54>>
    <associate|auto-71|<tuple|13.1|54>>
    <associate|auto-72|<tuple|13.2|55>>
    <associate|auto-73|<tuple|13.3|55>>
    <associate|auto-74|<tuple|13.4|58>>
    <associate|auto-75|<tuple|13.5|59>>
    <associate|auto-76|<tuple|14|60>>
    <associate|auto-77|<tuple|14.1|60>>
    <associate|auto-78|<tuple|14.2|60>>
    <associate|auto-79|<tuple|14.3|61>>
    <associate|auto-8|<tuple|2.2|7>>
    <associate|auto-80|<tuple|14.4|63>>
    <associate|auto-81|<tuple|14.5|63>>
    <associate|auto-82|<tuple|14.6|64>>
    <associate|auto-83|<tuple|14.7|67>>
    <associate|auto-84|<tuple|A|68>>
    <associate|auto-9|<tuple|2.3|8>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Dalle
      domande ai limiti, dai limiti agli sviluppi>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn><no-page-break>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Logica,
      quantificatori e insiemi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn><no-page-break>

      1.1<space|2spc>Proposizioni e quantificatori: chi scegliamo prima?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      1.2<space|2spc>Negazione, implicazione e dimostrazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>

      1.3<space|2spc>Insiemi, inclusione e operazioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Funzioni,
      composizione e inverse> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn><no-page-break>

      2.1<space|2spc>Una funzione comprende anche partenza e arrivo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>

      2.2<space|2spc>Iniettività, suriettività e biettività
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>

      2.3<space|2spc>L'inversa e il motivo delle due condizioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>

      2.4<space|2spc>Composizione: prima la funzione a destra
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>

      2.5<space|2spc>Immagine e controimmagine di insiemi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Induzione
      e disuguaglianza di Bernoulli> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn><no-page-break>

      3.1<space|2spc>Base e passo: come raggiungere tutti i naturali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>

      3.2<space|2spc>Una prova completa: la somma dei quadrati
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>

      3.3<space|2spc>Bernoulli: controllare un prodotto con una retta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>

      3.4<space|2spc>Quando conviene rafforzare l'enunciato
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Numeri
      reali, completezza e supremi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn><no-page-break>

      4.1<space|2spc>Campo ordinato: calcoli e confronti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>

      4.2<space|2spc>La completezza: una proprietà che manca ai razionali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>

      4.3<space|2spc>Maggioranti e massimo: una barriera può restare fuori
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>

      4.4<space|2spc>Perché il supremo esiste e come riconoscerlo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>

      4.5<space|2spc>La proprietà archimedea e il ponte verso i limiti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Funzioni
      elementari e lettura dei grafici> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23><vspace|0.5fn><no-page-break>

      5.1<space|2spc>Simmetrie, periodicità e monotonia
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>

      5.2<space|2spc>Potenze, radici e completezza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>

      5.3<space|2spc>Valore assoluto e trasformazioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>

      5.4<space|2spc>Equazioni, disequazioni, immagine e controimmagine
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>

      5.5<space|2spc>Esponenziale e logaritmo: un ponte per ottobre
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Trigonometria
      e funzioni inverse> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29><vspace|0.5fn><no-page-break>

      6.1<space|2spc>Radianti, circonferenza, seno e coseno
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>

      6.2<space|2spc>Simmetrie, periodi e grafici
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>

      6.3<space|2spc>Arcoseno, arcocoseno e arcotangente
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>

      6.4<space|2spc>Identità: il segno e l'intervallo vanno controllati
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>

      6.5<space|2spc>Composizioni periodiche: un esempio completo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Successioni
      e definizione di limite> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35><vspace|0.5fn><no-page-break>

      7.1<space|2spc>Successioni, definitivamente e frequentemente
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>

      7.2<space|2spc>Limite finito: controllare una distanza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>

      7.3<space|2spc>Limiti infiniti e unicità
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>

      7.4<space|2spc>Limitatezza, segno e confronto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Completezza,
      successioni monotone e numero di Nepero>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40><vspace|0.5fn><no-page-break>

      8.1<space|2spc>Il teorema delle successioni monotone
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>

      8.2<space|2spc>Il numero di Nepero: costruire un nuovo limite
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>

      8.3<space|2spc>Algebra dei limiti: somma, prodotto e reciproco
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>

      8.4<space|2spc>Limiti infiniti e forme indeterminate
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Radici,
      rapporti e gerarchia degli infiniti>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45><vspace|0.5fn><no-page-break>

      9.1<space|2spc>Potenze e radici senza circolarità
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>

      9.2<space|2spc>Criteri della radice e del rapporto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>

      9.3<space|2spc>Dal rapporto alla radice
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>

      9.4<space|2spc>La gerarchia degli infiniti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>

      9.5<space|2spc>Cancellazioni e somme con molti termini
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Limiti
      di funzioni, continuità e limiti notevoli>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51><vspace|0.5fn><no-page-break>

      10.1<space|2spc>Punti di accumulazione e definizione di limite
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>

      10.2<space|2spc>Continuità e composizione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>

      10.3<space|2spc>Il limite del seno e i limiti notevoli trigonometrici
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>

      10.4<space|2spc>Dal numero e ai limiti di logaritmo ed esponenziale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>

      10.5<space|2spc>Usare un limite notevole: argomento, dominio e scala
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>

      10.6<space|2spc>Sottosuccessioni e limiti che non esistono
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Simboli
      di Landau ed equivalenze asintotiche>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58><vspace|0.5fn><no-page-break>

      11.1<space|2spc>O piccolo: misurare un errore rispetto a una scala
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>

      11.2<space|2spc>Equivalenza asintotica e O grande
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>

      11.3<space|2spc>Calcolare con i resti e comporre
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>

      11.4<space|2spc>Dai limiti notevoli ai primi sviluppi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Derivate
      e differenziabilità> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63><vspace|0.5fn><no-page-break>

      12.1<space|2spc>Rapporto incrementale e retta tangente
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>

      12.2<space|2spc>Differenziale: la stessa informazione come sviluppo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>

      12.3<space|2spc>Derivate delle funzioni elementari
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>

      12.4<space|2spc>Somme, prodotti e quozienti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-67>

      12.5<space|2spc>Derivata della funzione composta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>

      12.6<space|2spc>Derivata dell'inversa e potenze variabili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|13<space|2spc>De
      L'Hôpital e Taylor\<#2013\>Peano> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70><vspace|0.5fn><no-page-break>

      13.1<space|2spc>Il teorema di De L'Hôpital e le sue ipotesi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71>

      13.2<space|2spc>Un'applicazione e una dipendenza da rispettare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-72>

      13.3<space|2spc>Polinomio di Taylor e resto di Peano
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-73>

      13.4<space|2spc>Sviluppi elementari e significato dei coefficienti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-74>

      13.5<space|2spc>Parità e precisione del resto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-75>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|14<space|2spc>Taylor
      e funzioni iperboliche> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-76><vspace|0.5fn><no-page-break>

      14.1<space|2spc>Cambiare centro: lavorare con l'incremento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-77>

      14.2<space|2spc>Somme e prodotti: quali termini conservare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-78>

      14.3<space|2spc>Composizione: argomento e precisione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-79>

      14.4<space|2spc>Parte principale e ordine di infinitesimo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-80>

      14.5<space|2spc>Reciproci e potenze variabili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-81>

      14.6<space|2spc>Funzioni iperboliche: una nuova lettura
      dell'esponenziale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-82>

      14.7<space|2spc>Scegliere l'ordine: un limite completo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-83>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendice
      A<space|2spc>Soluzioni ragionate> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-84><vspace|0.5fn><no-page-break>
    </associate>
  </collection>
</auxiliary>