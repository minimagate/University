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

    <with|font-shape|small-caps|font-size|1.15|ottobre 2026>
  </with>

  <chapter*|Dalle domande ai limiti, dai limiti agli sviluppi>

  Una successione può avvicinarsi sempre di più a un numero senza
  raggiungerlo mai, e un grafico curvo, guardato abbastanza da vicino, può
  sembrare quasi una retta. Sono due esperienze che ognuno di noi ha già
  fatto disegnando o calcolando. L'analisi parte da qui e rende precise
  queste due idee, l'avvicinamento e l'approssimazione, in modo da poter
  giustificare ciò che un disegno si limita a suggerire.

  Per leggere il libro bastano le operazioni con i numeri e le frazioni e le
  equazioni elementari. Tutto ciò che appartiene già al linguaggio
  universitario viene introdotto lungo la strada, con esempi prima delle
  definizioni.

  Nei primi capitoli impariamo a leggere con cura un enunciato e a
  riconoscere dominio, immagine e inversa di una funzione. Con l'induzione
  scopriamo come controllare un'affermazione su tutti i naturali senza
  esaminarli uno per uno. La completezza dei reali ci darà poi uno strumento
  sorprendente, perché permette di dimostrare che un numero esiste anche
  quando non sappiamo ancora calcolarlo.

  Il cuore del percorso sono i limiti. Li incontriamo prima nelle
  successioni, dove la variabile è un indice intero che cresce, e poi nelle
  funzioni, dove la variabile si muove con continuità lungo la retta. Le
  definizioni con <math|\<varepsilon\>> e <math|\<delta\>> trasformano la
  parola \Svicino\T in una richiesta precisa, e i confronti, la monotonia e i
  limiti notevoli ci danno gli strumenti per soddisfarla.

  Nella parte finale cambia la domanda. Non ci basta più sapere a che cosa
  tende un'espressione, vogliamo sapere <em|quanto è piccolo l'errore> che
  commettiamo sostituendola con qualcosa di più semplice. I simboli di Landau
  servono a tenere traccia di quell'errore. La derivata fornisce
  l'approssimazione migliore con una retta, e gli sviluppi di Taylor la
  estendono ai polinomi di grado più alto. Gli ultimi esempi mostrano come
  decidere quanti termini tenere quando alcuni si cancellano.

  Ogni capitolo si apre con un breve paragrafo, \SIn breve\T, che racconta il
  problema del capitolo e la strada che seguiremo. I titoli di capitoli e
  sezioni nominano i concetti fondamentali, e i riquadri \SConcetto chiave\T
  permettono di ritrovarne rapidamente le definizioni. Nelle dimostrazioni
  più importanti cerchiamo sempre di spiegare perché una mossa è sensata
  prima di scrivere i passaggi.

  Gli esercizi proposti hanno tutti una soluzione ragionata nell'ultima parte
  del libro. Conviene provare prima a scegliere una strada da soli e solo
  dopo confrontarla con la soluzione. Le sezioni \SPer proseguire\T
  raccolgono varianti e sviluppi secondari, che si possono rimandare a una
  seconda lettura senza perdere il filo.

  Non occorre memorizzare ogni conto. Occorre invece capire quali ipotesi
  rendono valido un passaggio, perché è lì che si nascondono quasi tutti gli
  errori.

  Il volume raccoglie le lezioni del corso fino al 31 ottobre 2026.
  Spiegazioni aggiuntive, figure ed esercizi di consolidamento sono
  integrazioni didattiche; la corrispondenza con le fonti è documentata nei
  file che accompagnano il libro.

  <strong|Convenzioni.> Scriviamo \<bbb-N\> per i naturali, compreso lo zero,
  e quando compaiono espressioni come <math|1/n> o <math|n!> indichiamo quali
  indici sono ammessi. Le funzioni sono reali salvo avviso contrario, gli
  angoli si misurano in radianti e \Slog\T indica il logaritmo naturale. Il
  simbolo \<infty\> descrive un comportamento e non è un numero reale con cui
  fare liberamente i conti.

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

    5.5<space|2spc>Esponenziale e logaritmo: le proprietà che useremo
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

    14.2<space|2spc>Somme e prodotti: quali termini tenere
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
    \SA ciascuno piace una birra\T e \Sa tutti piace la stessa birra\T
    sembrano dire quasi la stessa cosa, eppure la prima può essere vera
    mentre la seconda è falsa. Tutta la differenza sta nell'ordine in cui
    scegliamo le cose di cui parliamo. In questo capitolo impariamo a leggere
    con precisione quantificatori, negazioni e implicazioni, e poi
    introduciamo gli insiemi, il linguaggio in cui scriveremo tutto il resto
    del libro.
  </inbreve>

  <section|Proposizioni e quantificatori: chi scegliamo prima?>

  Una <strong|proposizione> è una frase che può essere vera o falsa, come
  <math|7\<geq\>5>, che è vera. Molte frasi della matematica però non hanno
  ancora un valore di verità, perché dipendono da qualcosa che non abbiamo
  fissato. La frase <math|x\<geq\>3> è vera se <math|x=5> e falsa se
  <math|x=1>, quindi la sua verità dipende da <math|x>. Una frase di questo
  tipo si chiama <strong|predicato> e la scriviamo, per esempio,
  <math|P(x):x\<geq\>3>. Insieme al predicato dobbiamo sempre dire dove varia
  <math|x>; qui prendiamo i reali <math|\<bbb-R\>>, cioè i numeri della
  retta.

  Per trasformare un predicato in una proposizione abbiamo due possibilità.
  Il simbolo <math|\<forall\>> significa \Sper ogni\T, mentre
  <math|\<exists\>> significa \Sesiste almeno un\T. La frase
  <math|\<forall\>x\<in\>\<bbb-R\>, x\<geq\>3> è falsa, e per accorgercene
  basta un solo controesempio come <math|x=0>. La frase
  <math|\<exists\>x\<in\>\<bbb-R\>, x\<geq\>3> è invece vera, perché basta
  esibire un esempio, come <math|x=3>.

  Le variabili che non abbiamo ancora fissato si chiamano <strong|variabili
  libere>. Quando le fissiamo tutte, oppure le leghiamo a un quantificatore,
  il predicato diventa una proposizione.

  Il caso più interessante arriva quando i quantificatori sono due.
  Indichiamo con <math|P(S,B)> la frase \Sallo studente <math|S> piace la
  birra <math|B>\T e confrontiamo

  <\equation*>
    \<forall\>S\<exists\>B, P(S,B),<space|2em>\<exists\>B\<forall\>S, P(S,B).
  </equation*>

  Nella prima frase scegliamo prima lo studente e solo dopo cerchiamo una
  birra che gli piaccia, quindi la birra può cambiare da uno studente
  all'altro. Nella seconda dobbiamo scegliere subito una birra, e quella
  stessa birra deve andare bene per tutti. Se tre studenti apprezzano
  ciascuno una sola birra, diversa da quella degli altri, la prima frase è
  vera e la seconda è falsa.

  <figura|<image|assets/quantificatori.pdf|138.0mm|46.0mm||>|A sinistra la
  birra può dipendere dallo studente; a destra deve esserci una stessa birra
  gradita a tutti.>

  Le altre combinazioni si leggono nello stesso modo.
  <math|\<forall\>S\<forall\>B> dice che a ogni studente piacciono tutte le
  birre, mentre <math|\<exists\>S\<exists\>B> si accontenta di una sola
  coppia studente\<#2013\>birra favorevole. La frase
  <math|\<exists\>S\<forall\>B> chiede uno studente a cui piacciano tutte le
  birre, mentre <math|\<forall\>B\<exists\>S> permette di cambiare studente
  per ciascuna birra.

  Quando i quantificatori sono tutti dello stesso tipo, tutti universali
  oppure tutti esistenziali, possiamo scambiarli senza cambiare il
  significato. Quando invece sono di tipo diverso l'ordine conta, come
  abbiamo appena visto con gli studenti e le birre.

  <section|Negazione, implicazione e dimostrazione>

  Per combinare le frasi usiamo tre simboli. Scriviamo <math|\<neg\>P> per
  \Snon <math|P>\T, <math|P\<wedge\>Q> per \S<math|P> e <math|Q>\T e
  <math|P\<vee\>Q> per \S<math|P> oppure <math|Q>\T. L'oppure della
  matematica è inclusivo, cioè basta che almeno una delle due frasi sia vera,
  e possono esserlo anche entrambe.

  Che cosa significa negare queste combinazioni? Se non è vero che due frasi
  sono entrambe vere, allora almeno una delle due è falsa. Se non è vero che
  almeno una è vera, allora sono false tutte e due. Sono le leggi di De
  Morgan:

  <\equation*>
    \<neg\>(P\<wedge\>Q)\<Leftrightarrow\>(\<neg\>P\<vee\>\<neg\>Q),<space|2em>\<neg\>(P\<vee\>Q)\<Leftrightarrow\>(\<neg\>P\<wedge\>\<neg\>Q).
  </equation*>

  Con i quantificatori succede qualcosa di simile. Per smentire
  un'affermazione su \Stutti\T basta un solo caso contrario, mentre per
  smentire un \Sesiste\T bisogna mostrare che ogni caso fallisce.

  <\concetto|Negazione dei quantificatori>
    Negare un quantificatore lo trasforma nell'altro e sposta la negazione
    all'interno:

    <\equation*>
      \<neg\>(\<forall\>x,P(x))\<Leftrightarrow\>\<exists\>x,\<neg\>P(x),<space|1em>\<neg\>(\<exists\>x,P(x))\<Leftrightarrow\>\<forall\>x,\<neg\>P(x).
    </equation*>
  </concetto>

  Applichiamo la regola a \Sogni studente apprezza almeno una birra\T. La
  negazione diventa \Sesiste uno studente che non ne apprezza nessuna\T, cioè
  <math|\<exists\>S\<forall\>B,\<neg\>P(S,B)>. Abbiamo negato i
  quantificatori uno dopo l'altro, lasciandoli nello stesso ordine. Notiamo
  che la negazione non pretende che tutti gli studenti rifiutino tutte le
  birre, perché per smentire la frase basta un solo studente scontento.

  L'<strong|implicazione> <math|P\<Rightarrow\>Q> si legge \Sse <math|P>,
  allora <math|Q>\T. Promette soltanto che, quando <math|P> è vera, anche
  <math|Q> lo è, e quindi è falsa in un caso solo, quando <math|P> è vera e
  <math|Q> è falsa. Se <math|P> è falsa la promessa non viene messa alla
  prova, e l'implicazione è vera qualunque sia <math|Q>. Per questo
  <math|P\<Rightarrow\>Q> equivale a <math|\<neg\>P\<vee\>Q>, e la sua
  negazione è <math|P\<wedge\>\<neg\>Q>.

  Prendiamo la frase \Sse un intero è multiplo di 4, allora è pari\T. Essere
  multiplo di 4 è una condizione <strong|sufficiente> per essere pari, perché
  basta a garantirlo. Essere pari è invece una condizione <strong|necessaria>
  per essere multiplo di 4, perché senza di essa non c'è speranza. Il
  viceversa è falso, dato che 6 è pari ma non è multiplo di 4. Quando valgono
  entrambe le implicazioni scriviamo <math|P\<Leftrightarrow\>Q> e diciamo
  \Sse e solo se\T.

  Un'implicazione si può dimostrare anche passando per una frase equivalente.
  La <strong|contrapposizione> sostituisce <math|P\<Rightarrow\>Q> con
  <math|\<neg\>Q\<Rightarrow\>\<neg\>P>, che ha lo stesso significato. Nel
  nostro esempio diventa \Sun intero dispari non può essere multiplo di 4\T.
  Una prova <strong|per assurdo> segue un'altra strada ancora, perché assume
  le ipotesi insieme alla negazione della tesi e mostra che da queste segue
  una contraddizione.

  <section|Insiemi, inclusione e operazioni>

  Un insieme è una collezione di elementi. L'insieme <math|A={2,3}> contiene
  i numeri 2 e 3, e scriviamo <math|2\<in\>A> per dire che 2 appartiene ad
  <math|A>. Di un insieme conta soltanto quali elementi contiene, non
  l'ordine in cui li elenchiamo né quante volte li ripetiamo, quindi
  <math|{2,3}={3,2}={2,2,3}>.

  Spesso è più comodo descrivere un insieme attraverso una proprietà. Per
  esempio <math|{m\<in\>\<bbb-Z\>:\<exists\>k\<in\>\<bbb-Z\>,m=k<rsup|2>}>
  raccoglie gli interi che sono quadrati di un intero. Lo stesso insieme si
  scrive più brevemente <math|{k<rsup|2>:k\<in\>\<bbb-Z\>}>, elencando i
  risultati che si ottengono al variare di <math|k>.

  L'<strong|inclusione> <math|A\<subseteq\>B> dice che ogni elemento di
  <math|A> appartiene anche a <math|B>. È una relazione fra due insiemi, e
  non va confusa con l'appartenenza <math|x\<in\>A>, che riguarda un singolo
  elemento. Scriviamo <math|A\<subsetneq\>B> quando <math|A> è contenuto in
  <math|B> ma è diverso da <math|B>. L'inclusione dà anche un metodo pratico
  per dimostrare che due insiemi sono uguali, perché basta verificare che
  ciascuno è contenuto nell'altro.

  Da due insiemi ne possiamo costruire altri. L'intersezione <math|A\<cap\>B>
  raccoglie gli elementi comuni, l'unione <math|A\<cup\>B> quelli che stanno
  in almeno uno dei due insiemi e la differenza <math|A\<setminus\>B> quelli
  di <math|A> che non stanno in <math|B>. Con <math|A={1,2}> e <math|B={2,3}>
  otteniamo

  <\equation*>
    A\<cap\>B={2},<space|1em>A\<cup\>B={1,2,3},<space|1em>A\<setminus\>B={1}.
  </equation*>

  Nella differenza l'ordine conta, infatti <math|B\<setminus\>A={3}>.

  Il <strong|prodotto cartesiano> <math|A\<times\>B> contiene le coppie
  ordinate <math|(a,b)> con <math|a\<in\>A> e <math|b\<in\>B>. Qui l'ordine è
  essenziale, perché la prima e la seconda coordinata hanno ruoli diversi e
  in generale <math|(a,b)\<neq\>(b,a)>.

  L'<strong|insieme delle parti> <math|\<cal-P\>(A)> contiene tutti i
  sottoinsiemi di <math|A>. Se <math|A={1,2}>, allora
  <math|\<cal-P\>(A)={\<varnothing\>,{1},{2},{1,2}}>. Per contarli basta
  osservare che, per ciascuno dei due elementi, decidiamo se metterlo o no
  nel sottoinsieme, e queste due decisioni indipendenti danno quattro
  possibilità. Con <math|n> elementi le decisioni sono <math|n>, e i
  sottoinsiemi sono <math|2<rsup|n>>.

  L'insieme vuoto <math|\<varnothing\>> non ha elementi ed è contenuto in
  ogni insieme. Può sembrare strano, ma per smentire l'inclusione
  <math|\<varnothing\>\<subseteq\>B> servirebbe un elemento del vuoto che non
  sta in <math|B>, e un elemento del vuoto non esiste. Bisogna invece
  distinguerlo da <math|{\<varnothing\>}>, che ha esattamente un elemento, il
  vuoto stesso. In particolare <math|\<cal-P\>(\<varnothing\>)={\<varnothing\>}>.

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
    Il quadrato di 2 è 4, ma lo è anche il quadrato di \<#2212\>2, e nessun
    numero reale ha quadrato \<#2212\>1. Se conosciamo soltanto l'uscita di
    una funzione, quindi, non sempre riusciamo a risalire all'entrata. Questi
    due ostacoli ci guidano verso le idee di iniettività e suriettività, e da
    lì alla funzione inversa e al modo in cui le funzioni si combinano una
    dopo l'altra.
  </inbreve>

  <section|Una funzione comprende anche partenza e arrivo>

  Una funzione <math|f:A\<rightarrow\>B> assegna a ogni elemento
  <math|a\<in\>A> uno e un solo elemento <math|f(a)\<in\>B>. L'insieme
  <math|A> si chiama insieme di partenza, o dominio, e <math|B> insieme di
  arrivo. Una formula come <math|x<rsup|2>> da sola non basta a descrivere la
  funzione, perché dobbiamo anche dire da dove partiamo e dove vogliamo
  arrivare, e vedremo presto che cambiando questi insiemi cambiano le
  proprietà della funzione.

  Possiamo immaginare la funzione come un disegno a frecce. Da ogni elemento
  di <math|A> parte esattamente una freccia, mentre in <math|B> le cose sono
  più libere, perché due frecce possono arrivare nello stesso punto e qualche
  punto può restare senza frecce.

  I punti di <math|B> effettivamente raggiunti formano l'<strong|immagine>
  <math|f(A)={f(a):a\<in\>A}>, che è un sottoinsieme di <math|B> e può essere
  più piccola. Proprio per non confondere i due insiemi useremo sempre
  l'espressione \Sinsieme di arrivo\T per <math|B>.

  Un altro modo di guardare una funzione è raccogliere tutte le coppie
  formate da un'entrata e dalla sua uscita. Otteniamo il <strong|grafico>

  <\equation*>
    <math-up|Graf>(f)={(a,b)\<in\>A\<times\>B:b=f(a)}.
  </equation*>

  Questa idea permette anche di dare una definizione rigorosa che non parla
  di \Sassegnare\T. Fissati <math|A> e <math|B>, una funzione è rappresentata
  da un sottoinsieme <math|G\<subseteq\>A\<times\>B> tale che

  <\equation*>
    \<forall\>a\<in\>A\<exists\>!b\<in\>B,<space|1em>(a,b)\<in\>G.
  </equation*>

  Il simbolo <math|\<exists\>!> significa \Sesiste uno e un solo\T, quindi la
  condizione chiede due cose insieme, che un'uscita esista e che sia unica.
  Nel piano reale questo vuol dire che sopra ogni ascissa del dominio c'è
  esattamente un punto del grafico.

  <section|Iniettività, suriettività e biettività>

  Torniamo al primo ostacolo, il fatto che 2 e \<#2212\>2 abbiano lo stesso
  quadrato. Una funzione in cui questo non succede mai, cioè in cui uscite
  uguali provengono sempre da entrate uguali, si dice <strong|iniettiva>:

  <\equation*>
    \<forall\>a<rsub|1>,a<rsub|2>\<in\>A,<space|1em>f(a<rsub|1>)=f(a<rsub|2>)\<Rightarrow\>a<rsub|1>=a<rsub|2>.
  </equation*>

  Per dimostrarlo prendiamo due entrate qualsiasi, supponiamo che abbiano la
  stessa uscita e proviamo che sono uguali. Per smentirlo, invece, basta
  trovare due entrate diverse con la stessa uscita.

  Il secondo ostacolo era che nessun quadrato vale \<#2212\>1. Una funzione
  che raggiunge ogni punto dell'insieme di arrivo si dice
  <strong|suriettiva>:

  <\equation*>
    \<forall\>b\<in\>B\<exists\>a\<in\>A,<space|1em>f(a)=b.
  </equation*>

  Questa volta partiamo da un <math|b> qualsiasi dell'insieme di arrivo e
  cerchiamo almeno un'entrata che ci porti lì. Una funzione che ha entrambe
  le proprietà si dice <strong|biettiva>, e in essa ogni punto di <math|B>
  proviene esattamente da un punto di <math|A>.

  <figura|<image|assets/funzioni.pdf|160.0mm|47.5mm||>|Una funzione iniettiva
  non manda due entrate diverse nella stessa uscita. Una funzione suriettiva
  raggiunge ogni punto dell'insieme di arrivo.>

  Vediamo come cambia tutto con <math|f(x)=x<rsup|2>>. Come funzione da
  <math|\<bbb-R\>> a <math|\<bbb-R\>> non è iniettiva, perché
  <math|f(2)=f(-2)>, e non è suriettiva, perché non raggiunge i numeri
  negativi. Se restringiamo l'insieme di arrivo a <math|[0,+\<infty\>)>
  diventa suriettiva, ma 2 e \<#2212\>2 hanno ancora la stessa uscita. Se
  restringiamo anche la partenza a <math|[0,+\<infty\>)> eliminiamo pure
  questo problema, e la funzione diventa biettiva. Per sapere che ogni numero
  non negativo è davvero un quadrato serve l'esistenza delle radici reali,
  che collegheremo alla completezza nei capitoli 4 e 5.

  <section|L'inversa e il motivo delle due condizioni>

  Invertire una funzione significa girare tutte le frecce. Perché il
  risultato sia ancora una funzione, questa volta da <math|B> ad <math|A>, da
  ogni <math|b> deve partire una freccia, e una sola. La suriettività
  garantisce che la freccia ci sia, l'iniettività che non ce ne siano due.
  Ecco perché servono esattamente queste due condizioni.

  <\concetto|Inversa di una funzione>
    Una funzione <math|f:A\<rightarrow\>B> è invertibile se esiste
    <math|g:B\<rightarrow\>A> tale che

    <\equation*>
      g(f(a))=a<space|1em>(a\<in\>A),<space|2em>f(g(b))=b<space|1em>(b\<in\>B).
    </equation*>

    La funzione <math|g>, indicata con <math|f<rsup|-1>>, esiste se e solo se
    <math|f> è biettiva.
  </concetto>

  Dimostriamo prima che la biettività basta. Preso <math|b\<in\>B>, la
  suriettività ci dà un'entrata <math|a> con <math|f(a)=b>, e l'iniettività
  ci assicura che è l'unica. Possiamo quindi definire <math|g(b)> come questa
  entrata. Con questa definizione, andare avanti con <math|f> e tornare
  indietro con <math|g>, o fare il contrario, riporta sempre al punto di
  partenza.

  Ora il viceversa. Supponiamo che <math|g> esista e mostriamo che <math|f> è
  iniettiva. Se <math|f(a<rsub|1>)=f(a<rsub|2>)>, applicando <math|g> a
  entrambi i membri otteniamo <math|a<rsub|1>=a<rsub|2>>. Per la suriettività
  prendiamo un qualsiasi <math|b\<in\>B>. Sappiamo che <math|f(g(b))=b>,
  quindi l'entrata <math|g(b)> raggiunge <math|b>.

  L'inversa, quando esiste, è unica, perché deve mandare ogni <math|b>
  nell'unica soluzione dell'equazione <math|f(a)=b>. Per la funzione quadrato
  ristretta alle semirette non negative l'inversa è la radice,
  <math|f<rsup|-1>(y)=<sqrt|y>>.

  Attenzione a non confondere l'inversa con il reciproco <math|1/f(x)>.
  Girare le frecce e dividere 1 per l'uscita sono operazioni completamente
  diverse, anche se si scrivono con simboli simili.

  <section|Composizione: prima la funzione a destra>

  Se <math|f:A\<rightarrow\>B> e <math|g:B\<rightarrow\>C>, possiamo
  applicare prima <math|f> e poi <math|g> al risultato. Otteniamo la funzione
  composta

  <\equation*>
    g\<circ\>f:A\<rightarrow\>C,<space|2em>(g\<circ\>f)(a)=g(f(a)).
  </equation*>

  Si legge da destra verso sinistra, perché la funzione scritta a destra è
  quella che agisce per prima. L'ordine conta davvero. Con <math|f(x)=x+1> e
  <math|g(x)=x<rsup|2>> su <math|\<bbb-R\>> otteniamo
  <math|g(f(x))=(x+1)<rsup|2>>, mentre <math|f(g(x))=x<rsup|2>+1>, che è
  un'altra funzione.

  Perché la composizione abbia senso basta che le uscite effettive della
  prima funzione stiano nel dominio della seconda. Scrivendo lo stesso
  insieme <math|B> come arrivo di <math|f> e partenza di <math|g> rendiamo
  questa condizione evidente.

  Le proprietà che abbiamo appena studiato passano alla composta. Se <math|f>
  e <math|g> sono iniettive, lo è anche <math|g\<circ\>f>. Infatti, se
  <math|g(f(a<rsub|1>))=g(f(a<rsub|2>))>, l'iniettività di <math|g> dà
  <math|f(a<rsub|1>)=f(a<rsub|2>)>, e poi quella di <math|f> dà
  <math|a<rsub|1>=a<rsub|2>>. Allo stesso modo, se sono suriettive entrambe,
  lo è la composta. Dato <math|c\<in\>C> scegliamo prima <math|b> con
  <math|g(b)=c> e poi <math|a> con <math|f(a)=b>, e così <math|g(f(a))=c>.

  Possiamo anche ragionare al contrario. Se <math|g\<circ\>f> è iniettiva,
  allora <math|f> deve esserlo, perché due entrate che <math|f> manda nello
  stesso punto resterebbero unite anche dopo <math|g>. Se <math|g\<circ\>f> è
  suriettiva, allora <math|g> deve esserlo, perché ogni uscita finale passa
  per <math|g>. Le altre due conclusioni, invece, non seguono
  automaticamente.

  <section|Immagine e controimmagine di insiemi>

  Spesso non ci interessa un singolo punto ma un intero insieme. Per
  <math|E\<subseteq\>A> l'immagine <math|f(E)={f(a):a\<in\>E}> raccoglie
  tutte le uscite che si ottengono partendo da <math|E>. Possiamo anche porci
  la domanda opposta e chiederci quali entrate finiscono in un insieme
  <math|D\<subseteq\>B>. La risposta è la <strong|controimmagine>

  <\equation*>
    f<rsup|-1>(D)={a\<in\>A:f(a)\<in\>D}.
  </equation*>

  Questa domanda ha senso anche quando <math|f> non è invertibile, perché
  raccogliamo tutte le entrate adatte senza pretendere che siano uniche. Con
  il quadrato su <math|\<bbb-R\>>, per esempio, <math|f({-2,1})={1,4}> e
  <math|f<rsup|-1>({4})={-2,2}>. Il simbolo <math|f<rsup|-1>> ha quindi due
  usi, e il contesto dice quale intendiamo. La funzione inversa richiede la
  biettività, mentre la controimmagine di un insieme esiste sempre.

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
    Una formula può funzionare per i primi dieci numeri e sbagliare
    all'undicesimo, quindi controllare molti casi non basta a dimostrarla. Ci
    serve un modo per collegare ogni caso al successivo, così che la verità
    si propaghi da sola lungo tutti i naturali. È l'idea dell'induzione, che
    proviamo su alcune somme e che ci porta alla disuguaglianza di Bernoulli,
    uno strumento che useremo spesso con i limiti.
  </inbreve>

  <section|Base e passo: come raggiungere tutti i naturali>

  In questo libro <math|\<bbb-N\>={0,1,2,\<ldots\>}>. Molte proprietà
  dipendono da un indice naturale, come \Sla somma dei numeri da 1 a <math|n>
  vale <math|n(n+1)/2>\T. Per <math|n=1,2,3> possiamo controllarla a mano, e
  troviamo 1, 3 e 6, come previsto. Ma i naturali sono infiniti, e nessuna
  quantità di controlli li esaurisce. L'idea è allora di verificare un primo
  caso e poi spiegare, una volta per tutte, perché da un caso qualsiasi segue
  il successivo.

  <\concetto|Principio di induzione>
    Per dimostrare <math|P(n)> per ogni naturale <math|n\<geq\>n<rsub|0>>,
    bastano una <strong|base>, <math|P(n<rsub|0>)>, e un <strong|passo>: per
    ogni <math|n\<geq\>n<rsub|0>>, da <math|P(n)> segue <math|P(n+1)>.
  </concetto>

  Nel passo trattiamo <math|P(n)> come un'ipotesi provvisoria, detta ipotesi
  induttiva. Non stiamo dando per buona la conclusione, stiamo solo mostrando
  che, se un caso è vero, lo è anche quello dopo. È la base a mettere in moto
  la catena, come la prima tessera di una fila di domino.

  <figura|<image|assets/domino.pdf|131.8mm|42.5mm||>|La prima tessera deve
  cadere e ogni tessera deve poter far cadere la successiva. Le due
  condizioni svolgono lavori diversi.>

  Per le somme useremo un simbolo compatto. La scrittura
  <math|<big|sum><rsub|k=1><rsup|n>a<rsub|k>> abbrevia
  <math|a<rsub|1>+\<cdots\>+a<rsub|n>>, dove la lettera <math|k> indica quale
  addendo stiamo prendendo e <math|n> dice dove fermarci. Quando il limite
  superiore passa da <math|n> a <math|n+1>, la nuova somma è la vecchia più
  un addendo in più, ed è questo addendo a creare il ponte fra un caso e il
  successivo.

  <section|Una prova completa: la somma dei quadrati>

  Le prime somme dei quadrati valgono <math|0>, <math|0+1=1> e
  <math|0+1+4=5>. Una formula che le descrive tutte è

  <\equation*>
    <big|sum><rsub|k=0><rsup|n>k<rsup|2>=<frac|n(n+1)(2n+1)|6><space|2em>(n\<geq\>0).
  </equation*>

  La base <math|n=0> è immediata, perché entrambi i membri valgono 0.

  Per il passo supponiamo che la formula valga all'indice <math|n> e
  guardiamo la somma fino a <math|n+1>. Separiamo l'ultimo addendo
  <math|(n+1)<rsup|2>>, così da far comparire la somma fino a <math|n>,
  l'unica di cui sappiamo qualcosa:

  <\equation*>
    <big|sum><rsub|k=0><rsup|n+1>k<rsup|2>=<frac|n(n+1)(2n+1)|6>+(n+1)<rsup|2>.
  </equation*>

  Ora sappiamo dove vogliamo arrivare, cioè alla stessa formula con
  <math|n+1> al posto di <math|n>. Quella formula contiene il fattore
  <math|(n+1)/6>, quindi conviene raccoglierlo subito. Nel fattore che resta
  troviamo

  <\equation*>
    n(2n+1)+6(n+1)=2n<rsup|2>+7n+6=(n+2)(2n+3),
  </equation*>

  e la somma nuova diventa

  <\equation*>
    <frac|(n+1)(n+2)(2n+3)|6>.
  </equation*>

  È esattamente la formula con <math|n+1> al posto di <math|n>, perché
  <math|2(n+1)+1=2n+3>. Il passo è concluso, e con esso l'induzione.

  <subsection|La somma geometrica: far cancellare i termini>

  Non tutte le formule richiedono l'induzione. In una somma geometrica ogni
  termine è il precedente moltiplicato per lo stesso numero <math|a>, e c'è
  un trucco che fa sparire quasi tutto. Se <math|S=1+a+\<cdots\>+a<rsup|n>>,
  allora <math|a*S=a+a<rsup|2>+\<cdots\>+a<rsup|n+1>>. Le due somme hanno in
  comune tutti i termini intermedi, quindi sottraendole restano solo il primo
  e l'ultimo:

  <\equation*>
    (a-1)S=a<rsup|n+1>-1.
  </equation*>

  Se <math|a\<neq\>1> possiamo dividere e otteniamo
  <math|S=(a<rsup|n+1>-1)/(a-1)>. Se <math|a=1> dividere non è permesso, ma
  non serve, perché la somma contiene <math|n+1> addendi tutti uguali a 1 e
  vale <math|n+1>. La stessa formula si potrebbe dimostrare anche per
  induzione.

  <section|Bernoulli: controllare un prodotto con una retta>

  Immaginiamo un aumento del dieci per cento ripetuto <math|n> volte. Con
  <math|x=1/10>, il fattore complessivo è <math|(1+x)<rsup|n>>, perché ogni
  aumento si calcola anche su quelli precedenti. Se invece contassimo solo
  l'aumento semplice, senza interessi sugli interessi, otterremmo
  <math|1+n*x>. È naturale aspettarsi che il primo numero sia almeno grande
  quanto il secondo, ed è ciò che afferma la disuguaglianza di Bernoulli,
  valida per molti più valori di <math|x>.

  <\concetto|Disuguaglianza di Bernoulli>
    Per ogni naturale <math|n\<geq\>1> e ogni reale <math|x\<geq\>-1>,

    <\equation*>
      (1+x)<rsup|n>\<geq\>1+n*x.
    </equation*>
  </concetto>

  Fissiamo <math|x\<geq\>-1> e ragioniamo per induzione su <math|n>. Per
  <math|n=1> i due membri sono uguali.

  Supponiamo ora <math|(1+x)<rsup|n>\<geq\>1+n*x>. Per passare alla potenza
  successiva dobbiamo moltiplicare entrambi i membri per <math|1+x>, e qui
  l'ipotesi <math|x\<geq\>-1> diventa essenziale. Una disuguaglianza
  moltiplicata per un numero negativo cambierebbe verso, mentre
  <math|1+x\<geq\>0> ci garantisce che il verso resta lo stesso. Otteniamo

  <\equation*>
    (1+x)<rsup|n+1>\<geq\>(1+n*x)(1+x)=1+(n+1)x+n*x<rsup|2>\<geq\>1+(n+1)x,
  </equation*>

  dove nell'ultimo passaggio abbiamo tolto il termine <math|n*x<rsup|2>>, che
  non è mai negativo.

  Anche il caso estremo <math|x=-1> è compreso, perché per <math|n\<geq\>1>
  la disuguaglianza diventa <math|0\<geq\>1-n>, che è vera. Abbiamo scelto la
  base <math|n=1> invece di <math|n=0> per non dover dare un significato a
  <math|0<rsup|0>>.

  Bernoulli confronta una potenza con una retta, e per questo nei capitoli
  sui limiti ci aiuterà a tenere sotto controllo potenze e radici.

  <section|Quando conviene rafforzare l'enunciato>

  A volte l'induzione si inceppa, e il rimedio sorprendente è dimostrare
  qualcosa di più forte. Consideriamo

  <\equation*>
    S<rsub|n>=<big|sum><rsub|k=1><rsup|n><frac|1|k(k+1)>
  </equation*>

  e proviamo a dimostrare che <math|S<rsub|n>\<leq\>1>. Nel passo l'ipotesi
  <math|S<rsub|n>\<leq\>1> ci dice soltanto che <math|S<rsub|n+1>> è al
  massimo <math|1+1/((n+1)(n+2))>, un numero maggiore di 1, e quindi non
  arriviamo da nessuna parte. Il problema è che l'ipotesi non dice quanto
  margine resta sotto 1.

  Calcoliamo allora i primi valori, che sono <math|1/2>, <math|2/3> e
  <math|3/4>. Sembra che <math|S<rsub|n>=n/(n+1)>, e questa affermazione, più
  precisa, contiene l'informazione sul margine che ci mancava. La base
  <math|n=1> funziona, e il passo diventa un semplice calcolo:

  <\equation*>
    S<rsub|n+1>=<frac|n|n+1>+<frac|1|(n+1)(n+2)>=<frac|n(n+2)+1|(n+1)(n+2)>=<frac|n+1|n+2>,
  </equation*>

  dove abbiamo usato <math|n(n+2)+1=(n+1)<rsup|2>>. L'uguaglianza si
  trasmette da un caso al successivo e implica subito
  <math|S<rsub|n>\<less\>1>. Una prova per induzione, quindi, può diventare
  più facile quando porta con sé più informazioni.

  <\verifica|3>
    <strong|1.> Dimostra per induzione <math|1+2+\<cdots\>+n=n(n+1)/2> per
    <math|n\<geq\>1>. Spiega dove usi l'ipotesi.

    <strong|2.> Determina per quali naturali vale <math|n!\<geq\>2<rsup|n>>,
    dove <math|0!=1> e <math|n!=1\<cdot\>2\<cdot\>\<cdots\>\<cdot\>n> per
    <math|n\<geq\>1>. Controlla i primi casi, poi scegli una base adatta.
  </verifica>

  <chapter|Numeri reali, completezza e supremi>

  <\inbreve>
    Nessuna frazione ha quadrato 2, eppure sulla retta sentiamo che lì, fra
    1,4 e 1,5, un numero del genere dovrebbe esserci. Per esserne sicuri non
    bastano le regole di calcolo e di confronto, che valgono già per le
    frazioni. Serve una proprietà in più, la completezza, che dice che la
    retta reale non ha buchi. Da essa nasceranno il supremo e la proprietà
    archimedea, cioè il primo ponte verso i limiti.
  </inbreve>

  <section|Campo ordinato: calcoli e confronti>

  Gli insiemi numerici si sono allargati man mano che servivano a rispondere
  a nuove domande:

  <\equation*>
    \<bbb-N\>\<subseteq\>\<bbb-Z\>\<subseteq\>\<bbb-Q\>\<subseteq\>\<bbb-R\>\<subseteq\>\<bbb-C\>.
  </equation*>

  Negli interi possiamo sempre sottrarre, e nei razionali <math|p/q>, con
  <math|q\<neq\>0>, possiamo anche dividere per qualsiasi numero diverso da
  zero. I reali contengono inoltre numeri come <math|<sqrt|2>>. I complessi,
  dove esiste un numero <math|i> con <math|i<rsup|2>=-1>, non saranno il
  nostro ambiente di lavoro.

  Invece di costruire <math|\<bbb-R\>> pezzo per pezzo, lo descriviamo
  attraverso alcune proprietà di partenza, gli <strong|assiomi>, da cui
  dedurremo tutto il resto. Le prime riguardano i calcoli. Somma e prodotto
  sono associative e commutative, hanno come elementi neutri 0 e 1, con
  <math|0\<neq\>1>, ogni numero ha un opposto, ogni numero non nullo ha un
  inverso e vale la proprietà distributiva <math|a(b+c)=a*b+a*c>. Un insieme
  con queste operazioni si chiama <strong|campo>. In un campo la sottrazione
  non è un'operazione nuova, perché sottrarre significa sommare l'opposto, e
  allo stesso modo dividere significa moltiplicare per l'inverso.

  Le altre proprietà riguardano l'ordine <math|\<leq\>>. È
  <strong|riflessivo>, perché <math|a\<leq\>a>, e <strong|antisimmetrico>,
  perché da <math|a\<leq\>b> e <math|b\<leq\>a> segue <math|a=b>. È anche
  <strong|transitivo>, perché da <math|a\<leq\>b> e <math|b\<leq\>c> segue
  <math|a\<leq\>c>, e infine <strong|totale>, perché due numeri sono sempre
  confrontabili.

  Ordine e calcoli vanno d'accordo. Aggiungendo la stessa quantità ai due
  membri una disuguaglianza resta vera, e il prodotto di due numeri non
  negativi è ancora non negativo. Da queste due regole seguono tutte quelle
  che usiamo abitualmente. Per esempio, se <math|x\<leq\>y> allora
  <math|y-x\<geq\>0>, e se anche <math|z\<geq\>0> otteniamo
  <math|z(y-x)\<geq\>0>, cioè <math|x*z\<leq\>y*z>. Ripetendo il ragionamento
  con un numero negativo si vede che il verso si inverte.

  Persino il fatto che <math|1\<gtr\>0> si può dedurre. Ogni quadrato è non
  negativo, perché il quadrato di un numero negativo coincide con quello del
  suo opposto, che è positivo. In particolare <math|1=1<rsup|2>\<geq\>0>, e
  poiché <math|1\<neq\>0> la disuguaglianza è stretta. Ne segue che
  aggiungere 1 fa sempre crescere un numero, e quindi i naturali costruiti
  dentro <math|\<bbb-R\>> sono tutti distinti. Per questo basta l'ordine. Per
  dimostrare che i naturali superano qualsiasi barriera reale servirà invece
  la completezza.

  <section|La completezza: una proprietà che manca ai razionali>

  Tutte le proprietà che abbiamo elencato valgono anche in <math|\<bbb-Q\>>,
  eppure lì non c'è nessun numero con quadrato 2. Vediamo perché. Supponiamo
  che una frazione <math|p/q>, ridotta ai minimi termini, abbia quadrato 2.
  Allora <math|p<rsup|2>=2q<rsup|2>>, quindi <math|p<rsup|2>> è pari, e anche
  <math|p> deve esserlo, perché il quadrato di un dispari è dispari.

  Scriviamo allora <math|p=2k>. Sostituendo otteniamo
  <math|4k<rsup|2>=2q<rsup|2>>, cioè <math|q<rsup|2>=2k<rsup|2>>, e per lo
  stesso motivo anche <math|q> è pari. Ma allora <math|p> e <math|q> hanno il
  fattore comune 2, contro l'ipotesi di aver ridotto la frazione.

  Che cosa manca, dunque, ai razionali? Pensiamo a due gruppi di numeri
  positivi, quelli con quadrato minore di 2 e quelli con quadrato maggiore.
  Tutti i numeri del primo gruppo stanno a sinistra di tutti quelli del
  secondo, ma in <math|\<bbb-Q\>> non c'è nessun punto che faccia da confine
  fra loro. Nei reali vogliamo che un confine del genere esista sempre.

  <\concetto|Assioma di completezza dei reali>
    Se <math|A,B\<subseteq\>\<bbb-R\>> sono non vuoti e <math|a\<leq\>b> per
    ogni <math|a\<in\>A> e ogni <math|b\<in\>B>, esiste
    <math|c\<in\>\<bbb-R\>> tale che

    <\equation*>
      a\<leq\>c\<leq\>b<space|2em>\<forall\>a\<in\>A,<space|1em>\<forall\>b\<in\>B.
    </equation*>
  </concetto>

  Il punto <math|c> separa i due insiemi, ma non deve per forza appartenere a
  uno dei due e non è necessariamente unico. Fra <math|A={0}> e <math|B={2}>,
  per esempio, va bene qualsiasi punto di <math|[0,2]>. Quando invece i due
  insiemi si avvicinano fino a toccare lo stesso confine, come nell'esempio
  della radice di 2, il punto separatore è uno solo.

  Un teorema, che non dimostreremo, garantisce che un campo ordinato completo
  esiste davvero, e anche che è sostanzialmente unico. Due campi di questo
  tipo si possono infatti mettere in corrispondenza biunivoca rispettando
  somme, prodotti e ordine.

  <section|Maggioranti e massimo: una barriera può restare fuori>

  Consideriamo l'intervallo <math|A=(0,1)>. I numeri 1, 2 e 10 sono tutti
  <strong|maggioranti> di <math|A>, perché ciascuno è maggiore o uguale a
  ogni elemento dell'insieme. Nessuno di loro però è un massimo, perché
  nessuno appartiene ad <math|A>. Un <strong|massimo> è infatti un
  maggiorante che sta dentro l'insieme, e allo stesso modo un <strong|minimo>
  è un minorante che sta dentro l'insieme.

  Se un massimo esiste, è unico. Infatti, se <math|M<rsub|1>> e
  <math|M<rsub|2>> fossero entrambi massimi, ciascuno sarebbe minore o uguale
  all'altro, e quindi sarebbero uguali. I maggioranti invece non sono mai
  unici, perché una barriera si può sempre spostare più in alto.

  Un insieme è <strong|limitato superiormente> se ha almeno un maggiorante,
  <strong|limitato inferiormente> se ha almeno un minorante e
  <strong|limitato> se li ha entrambi. Nell'ultimo caso possiamo racchiuderlo
  fra due barriere simmetriche, cioè trovare <math|K\<geq\>0> con
  <math|\|a\|\<leq\>K> per ogni <math|a\<in\>A>.

  Fra tutti i maggioranti di <math|(0,1)> ce n'è uno speciale, il numero 1,
  che è il più basso possibile. Ogni numero più piccolo di 1 viene superato
  da qualche punto dell'intervallo. Questa barriera ottimale ha un nome.

  <\concetto|Estremo superiore e inferiore>
    Per un insieme non vuoto <math|A\<subseteq\>\<bbb-R\>>, il
    <strong|supremo> <math|sup A> è il più piccolo maggiorante, se l'insieme
    è limitato superiormente. L'<strong|infimo> <math|inf A> è il più grande
    minorante, se è limitato inferiormente. La completezza ne garantisce
    l'esistenza.
  </concetto>

  Se <math|A> non è limitato superiormente scriviamo <math|sup A=+\<infty\>>,
  e se non è limitato inferiormente scriviamo <math|inf A=-\<infty\>>. Sono
  soltanto convenzioni per dire che non esistono barriere reali, perché
  <math|\<pm\>\<infty\>> non sono numeri.

  Per <math|A=(0,1)> abbiamo quindi <math|sup A=1> e <math|inf A=0>, anche se
  l'insieme non ha né massimo né minimo. Quando un massimo esiste, invece,
  coincide con il supremo, e lo stesso vale per minimo e infimo.

  <section|Perché il supremo esiste e come riconoscerlo>

  Definire il supremo come \Sil più piccolo dei maggioranti\T non basta,
  perché dobbiamo ancora sapere che quel più piccolo esiste. Qui entra in
  gioco la completezza. Sia <math|A> non vuoto e limitato superiormente, e
  sia <math|B> l'insieme di tutti i suoi maggioranti. Anche <math|B> è non
  vuoto, e per definizione ogni elemento di <math|A> è minore o uguale a ogni
  elemento di <math|B>. Siamo esattamente nella situazione dell'assioma.

  L'assioma ci dà un numero <math|c> con <math|a\<leq\>c\<leq\>b> per ogni
  <math|a\<in\>A> e ogni <math|b\<in\>B>. La prima disuguaglianza dice che
  <math|c> è un maggiorante, quindi appartiene a <math|B>. La seconda dice
  che <math|c> è minore o uguale a ogni altro maggiorante. Dunque <math|c> è
  il minimo di <math|B>, cioè il supremo di <math|A>. Per l'infimo basta
  rovesciare i versi, oppure usare la relazione <math|inf A=-sup(-A)>.

  Nella pratica ci serve anche un modo per riconoscere il supremo. Se
  <math|L=sup A> e lo abbassiamo di una quantità positiva
  <math|\<varepsilon\>>, qualsiasi essa sia, il numero
  <math|L-\<varepsilon\>> non è più un maggiorante, perché <math|L> era il
  più piccolo. Deve quindi esistere un punto di <math|A> più alto di questa
  barriera abbassata.

  <figura|<image|assets/sup-eps.pdf|150.0mm|27.5mm||>|Tutti i punti restano a
  sinistra di <math|L>, ma nessuna distanza positiva può separare <math|L>
  dall'intero insieme.>

  Il supremo è caratterizzato esattamente da queste due condizioni:

  <\equation*>
    \<forall\>a\<in\>A,<space|1em>a\<leq\>L;<space|2em>\<forall\>\<varepsilon\>\<gtr\>0\<exists\>a\<in\>A,<space|1em>L-\<varepsilon\>\<less\>a\<leq\>L.
  </equation*>

  Abbiamo appena visto che il supremo le soddisfa. Viceversa, se un numero
  <math|L> le soddisfa entrambe, è il supremo. La prima condizione dice che
  <math|L> è un maggiorante. Se poi esistesse un maggiorante
  <math|M\<less\>L>, scegliendo <math|\<varepsilon\>=L-M> la seconda
  condizione ci darebbe un punto <math|a\<gtr\>L-\<varepsilon\>=M>, e
  <math|M> non sarebbe più un maggiorante. Quindi nessun maggiorante è più
  piccolo di <math|L>.

  Per l'infimo <math|l> la caratterizzazione è simmetrica. Il numero <math|l>
  deve essere un minorante, e per ogni <math|\<varepsilon\>\<gtr\>0> deve
  esistere <math|a\<in\>A> con <math|l\<leq\>a\<less\>l+\<varepsilon\>>.

  <section|La proprietà archimedea e il ponte verso i limiti>

  Ora possiamo dimostrare un fatto che sembra ovvio, ma che senza la
  completezza non sapremmo giustificare, cioè che ogni barriera reale è
  superata da qualche naturale. Supponiamo per assurdo che <math|\<bbb-N\>>
  sia limitato superiormente e chiamiamo <math|L> il suo supremo.

  Usiamo la caratterizzazione con <math|\<varepsilon\>=1/2>. Esiste un
  naturale <math|n> con <math|n\<gtr\>L-1/2>, e allora
  <math|n+1\<gtr\>L+1/2\<gtr\>L>. Ma anche <math|n+1> è un naturale, e quindi
  <math|L> non era un maggiorante di <math|\<bbb-N\>>, contro quanto avevamo
  supposto.

  Abbiamo così ottenuto la <strong|proprietà archimedea>: per ogni
  <math|M\<in\>\<bbb-R\>> esiste un naturale <math|n\<gtr\>M>. La sua
  conseguenza più utile riguarda i numeri piccoli. Per qualsiasi
  <math|\<varepsilon\>\<gtr\>0> possiamo scegliere
  <math|n\<gtr\>1/\<varepsilon\>>, e allora <math|1/n\<less\>\<varepsilon\>>.
  La completezza diventa così uno strumento per rendere un errore piccolo
  quanto vogliamo, ed è esattamente ciò che faremo con i limiti.

  Una precisazione sull'insieme vuoto. Per il vuoto ogni numero reale è sia
  maggiorante sia minorante, quindi l'esistenza del supremo che abbiamo
  dimostrato riguarda soltanto insiemi non vuoti, gli unici che ci
  serviranno.

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
    Un buon grafico risponde a molte domande con un'occhiata. Quante
    soluzioni ha un'equazione, quali valori raggiunge una funzione, dove una
    curva sta sopra un'altra. Per fidarci di quello che vediamo, però,
    dobbiamo collegare il disegno alle definizioni, e lo facciamo con
    potenze, radici, valore assoluto, esponenziali e logaritmi. Lungo la
    strada scopriremo come il supremo ci permette di costruire davvero la
    radice di 2.
  </inbreve>

  <section|Simmetrie, periodicità e monotonia>

  Alcune funzioni hanno grafici con simmetrie evidenti, e riconoscerle
  dimezza il lavoro. Una funzione è <strong|pari> se il suo dominio è
  simmetrico rispetto a 0 e <math|f(-x)=f(x)>, e allora il grafico è
  simmetrico rispetto all'asse verticale. È <strong|dispari> se il dominio è
  simmetrico e <math|f(-x)=-f(x)>, e in questo caso il grafico è simmetrico
  rispetto all'origine. Il quadrato è pari e il cubo è dispari. Una funzione
  dispari definita in 0 deve valere 0 in quel punto, perché
  <math|f(0)=-f(0)>.

  Altre funzioni si ripetono. Una funzione su <math|\<bbb-R\>> è
  <strong|periodica> se esiste <math|T\<gtr\>0> con <math|f(x+T)=f(x)> per
  ogni <math|x>, e il suo grafico si riproduce identico dopo una traslazione
  di <math|T>. Se <math|T> è un periodo lo sono anche <math|2T>, <math|3T> e
  così via, e quando esiste un periodo positivo più piccolo di tutti lo
  chiamiamo periodo minimo. Se il dominio non è tutto <math|\<bbb-R\>>,
  chiediamo anche che spostandoci di <math|\<pm\>T> si resti dentro il
  dominio.

  La <strong|monotonia> descrive invece come cambia l'uscita quando l'entrata
  cresce. Prendiamo <math|x\<less\>y> nel dominio. La funzione è debolmente
  crescente se <math|f(x)\<leq\>f(y)> e strettamente crescente se
  <math|f(x)\<less\>f(y)>, mentre è debolmente decrescente se
  <math|f(x)\<geq\>f(y)> e strettamente decrescente se
  <math|f(x)\<gtr\>f(y)>. Conviene sempre dire \Sdebolmente\T o
  \Sstrettamente\T, perché le due proprietà hanno conseguenze diverse.

  Una funzione strettamente monotona, infatti, è iniettiva. Due entrate
  diverse sono ordinate in un verso o nell'altro, e quindi le loro uscite
  sono ordinate allo stesso modo e non possono coincidere. Una funzione solo
  debolmente monotona può invece avere tratti costanti. La stretta monotonia
  ci permette anche di passare da <math|f(u)\<less\>f(v)> a <math|u\<less\>v>
  e viceversa, con il verso rovesciato se la funzione è decrescente, purché
  gli argomenti stiano nel dominio considerato.

  <section|Potenze, radici e completezza>

  Per un intero <math|k\<geq\>1>, la potenza <math|x<rsup|k>> è il prodotto
  di <math|k> fattori uguali a <math|x>. Se <math|k> è pari, la funzione è
  pari, scende sulla semiretta negativa, sale su quella positiva e ha
  immagine <math|[0,+\<infty\>)>. Se <math|k> è dispari, la funzione è
  dispari, cresce strettamente su tutto <math|\<bbb-R\>> e assume tutti i
  valori reali.

  Questa differenza decide come si invertono. Una potenza dispari è già
  biettiva su <math|\<bbb-R\>>, e la sua inversa è la radice dispari,
  definita per ogni reale. Una potenza pari va invece ristretta alla
  semiretta non negativa, e così la radice di indice pari dà sempre un numero
  non negativo. Per questo

  <\equation*>
    <sqrt|x<rsup|2>>=\|x\|,<space|2em><sqrt|x<rsup|2k>|2k>=\|x\|<space|1em>(k\<geq\>1),
  </equation*>

  mentre per una radice dispari il segno sopravvive, e per esempio
  <math|<sqrt|-27|3>=-3>. Graficamente, una funzione e la sua inversa si
  scambiano le coordinate, perché se <math|(a,b)> sta sul primo grafico,
  <math|(b,a)> sta sul secondo. I due grafici sono quindi l'uno il riflesso
  dell'altro rispetto alla retta <math|y=x>.

  <subsection|Costruire la radice di 2: scegliere il passo giusto>

  Finora abbiamo dato per scontato che le radici esistano. Vediamo come la
  completezza lo garantisce nel caso più semplice. Raccogliamo tutti i numeri
  non negativi il cui quadrato non supera 2:

  <\equation*>
    A={x\<in\>\<bbb-R\>:x\<geq\>0,x<rsup|2>\<leq\>2}.
  </equation*>

  L'insieme contiene 1 ed è maggiorato da 2, perché un numero maggiore di 2
  ha quadrato maggiore di 4. Esiste quindi il supremo <math|c=sup A>, con
  <math|1\<leq\>c\<leq\>2>. Vogliamo dimostrare che <math|c<rsup|2>=2>.
  L'idea è che, se il quadrato fosse più piccolo o più grande di 2, potremmo
  spostare un po' <math|c> e contraddire il fatto che è la barriera migliore.

  Supponiamo prima <math|c<rsup|2>\<less\>2>, e chiamiamo
  <math|d=2-c<rsup|2>\<gtr\>0> il margine che resta sotto 2. Vorremmo fare un
  piccolo passo <math|h\<gtr\>0> verso destra senza che il quadrato superi 2.
  Per capire quanto possiamo spingerci, calcoliamo di quanto aumenta il
  quadrato:

  <\equation*>
    (c+h)<rsup|2>-c<rsup|2>=2c*h+h<rsup|2>.
  </equation*>

  Questo aumento dipende da <math|h> in modo complicato, quindi lo stimiamo
  con qualcosa di più semplice. Se ci limitiamo a <math|h\<less\>1> abbiamo
  <math|h<rsup|2>\<leq\>h>, e poiché <math|c\<leq\>2> abbiamo anche
  <math|2c*h\<leq\>4h>. Allora l'aumento non supera <math|5h>, e per restare
  sotto 2 basta chiedere <math|5h\<less\>d>. Scegliamo quindi un qualsiasi
  <math|h> con <math|0\<less\>h\<less\>min(1,d/5)>, e otteniamo

  <\equation*>
    (c+h)<rsup|2>\<leq\>c<rsup|2>+5h\<less\>c<rsup|2>+d=2.
  </equation*>

  Il numero <math|c+h> appartiene dunque ad <math|A>, ma è più grande di
  <math|c>, che doveva essere un maggiorante di <math|A>. È impossibile,
  quindi il quadrato di <math|c> non può stare sotto 2.

  Supponiamo ora <math|c<rsup|2>\<gtr\>2>, e chiamiamo
  <math|d=c<rsup|2>-2\<gtr\>0> il margine dall'altra parte. Questa volta
  cerchiamo una barriera più bassa <math|c-h> che resti positiva e abbia
  ancora quadrato maggiore di 2, così da stare ancora sopra tutto l'insieme.
  Poiché <math|c\<geq\>1>, per avere <math|c-h\<gtr\>0> basta
  <math|h\<less\>1/2>. Il quadrato diminuisce di

  <\equation*>
    c<rsup|2>-(c-h)<rsup|2>=2c*h-h<rsup|2>\<leq\>2c*h\<leq\>4h,
  </equation*>

  e se chiediamo anche <math|4h\<less\>d> la diminuzione non basta a farlo
  scendere fino a 2. Con <math|0\<less\>h\<less\>min(1/2,d/4)> troviamo
  infatti

  <\equation*>
    (c-h)<rsup|2>\<geq\>c<rsup|2>-4h\<gtr\>c<rsup|2>-d=2.
  </equation*>

  Ogni <math|x\<in\>A> soddisfa allora <math|x<rsup|2>\<leq\>2\<less\>(c-h)<rsup|2>>,
  e poiché i due numeri sono non negativi ne segue <math|x\<less\>c-h>. Così
  <math|c-h> sarebbe un maggiorante più piccolo del supremo, un'altra
  contraddizione.

  Resta una sola possibilità, <math|c<rsup|2>=2>, e il numero <math|c> è
  unico perché il quadrato è strettamente crescente sui non negativi. Le
  altre radici si costruiscono nello stesso modo. La completezza fornisce il
  candidato, e la fattorizzazione della differenza di potenze permette di
  stimare quanto cambia una potenza quando spostiamo un po' la base.

  <section|Valore assoluto e trasformazioni>

  Il valore assoluto <math|\|x\|> vale <math|x> per <math|x\<geq\>0> e
  <math|-x> per <math|x\<less\>0>, e misura la distanza di <math|x> da 0.
  Allo stesso modo <math|\|x-a\|> misura la distanza da <math|a>, e la
  disuguaglianza <math|\|x-a\|\<less\>r>, con <math|r\<gtr\>0>, dice che
  <math|x> sta a meno di <math|r> da <math|a>, cioè che
  <math|a-r\<less\>x\<less\>a+r>. Questa traduzione fra distanze e intervalli
  sarà il linguaggio di base dei limiti.

  Useremo spesso anche la disuguaglianza triangolare
  <math|\|u+v\|\<leq\>\|u\|+\|v\|>. Per ricavarla basta sommare membro a
  membro <math|-\|u\|\<leq\>u\<leq\>\|u\|> e
  <math|-\|v\|\<leq\>v\<leq\>\|v\|>.

  Per capire come una formula trasforma un grafico, il modo più sicuro è
  seguire un suo punto. Supponiamo che <math|f(a)=b>. Il grafico di
  <math|f(x)+c> passa per <math|(a,b+c)>, quindi è lo stesso grafico spostato
  in verticale di <math|c>. Il grafico di <math|f(x-c)>, invece, passa per
  <math|(a+c,b)>, perché per avere <math|x-c=a> dobbiamo prendere
  <math|x=a+c>. Il grafico si sposta quindi a destra di <math|c>, e non a
  sinistra come il segno meno potrebbe far pensare.

  Con lo stesso ragionamento si vede che <math|f(-x)> riflette il grafico
  rispetto all'asse verticale e <math|-f(x)> rispetto all'asse orizzontale.
  Il valore assoluto agisce in due modi diversi a seconda di dove lo
  mettiamo. In <math|\|f(x)\|> le parti del grafico che stanno sotto l'asse
  orizzontale vengono ribaltate verso l'alto. In <math|f(\|x\|)> teniamo il
  ramo destro del grafico e lo ricopiamo a sinistra, ottenendo una funzione
  pari.

  <figura|<image|assets/trasformazioni.pdf|105.0mm|67.5mm||>|Una
  trasformazione esterna cambia l'uscita; una trasformazione interna cambia
  il punto in cui leggiamo la funzione.>

  <section|Equazioni, disequazioni, immagine e controimmagine>

  Risolvere <math|f(x)=\<lambda\>> significa tagliare il grafico con la retta
  orizzontale <math|y=\<lambda\>> e leggere le ascisse dei punti d'incontro.
  In questa immagine l'iniettività dice che ogni retta orizzontale incontra
  il grafico al massimo una volta, e la suriettività che lo incontra almeno
  una volta per ogni livello dell'insieme di arrivo. Per una disequazione
  come <math|f(x)\<leq\>\<lambda\>> raccogliamo invece le ascisse dei punti
  che stanno sotto la retta o su di essa.

  Per esempio, l'equazione <math|(x-3)<rsup|2>=\<lambda\>> non ha soluzioni
  se <math|\<lambda\>\<less\>0>, ne ha una sola se <math|\<lambda\>=0> e due
  se <math|\<lambda\>\<gtr\>0>, cioè <math|3\<pm\><sqrt|\<lambda\>>>. Basta
  pensare a una parabola con il vertice in <math|(3,0)> e a una retta
  orizzontale che sale.

  <\guidato|Confrontare una radice e una retta>
    Risolviamo <math|<sqrt|x+6>\<gtr\>x>. La radice esiste solo per
    <math|x\<geq\>-6>, quindi partiamo da questa condizione.

    Viene la tentazione di elevare subito al quadrato, ma è un'operazione
    sicura solo quando entrambi i membri sono non negativi. Separiamo quindi
    i casi secondo il segno di <math|x>. Per <math|-6\<leq\>x\<less\>0> la
    disuguaglianza è vera senza fare conti, perché la radice non è mai
    negativa mentre il membro destro lo è.

    Per <math|x\<geq\>0> entrambi i membri sono non negativi, e allora
    elevare al quadrato dà una disuguaglianza equivalente:

    <\equation*>
      x+6\<gtr\>x<rsup|2>\<Leftrightarrow\>(x-3)(x+2)\<less\>0.
    </equation*>

    Insieme alla condizione <math|x\<geq\>0> questo dà
    <math|0\<leq\>x\<less\>3>. Unendo i due casi otteniamo la soluzione
    <math|[-6,3)>. Se avessimo elevato al quadrato senza separare i casi
    avremmo rischiato di introdurre soluzioni estranee.
  </guidato>

  <figura|<image|assets/radice-retta.pdf|130.0mm|70.0mm||>|Il punto con
  ascissa <math|-2> appartiene al ramo negativo della parabola completa, ma
  quel ramo non fa parte della radice principale.>

  Anche immagine e controimmagine si leggono sul grafico, in direzioni
  opposte. Per l'immagine di un intervallo partiamo dall'asse orizzontale e
  raccogliamo tutte le altezze toccate dal grafico sopra quell'intervallo.
  Per la controimmagine partiamo dalle altezze e raccogliamo tutte le ascisse
  ammesse che le producono.

  Prendiamo <math|f(x)=\|x<rsup|2>-4\|> sull'intervallo <math|[1,4]>.
  Muovendoci da 1 a 4 il grafico scende da 3 a 0, che raggiunge in
  <math|x=2>, e poi sale fino a 12. Quindi <math|f([1,4])=[0,12]>. Se
  avessimo calcolato la funzione soltanto agli estremi avremmo trovato 3 e
  12, perdendo il minimo che sta all'interno.

  Per la controimmagine <math|f<rsup|-1>([-2,1])> la parte negativa
  dell'intervallo non conta, perché <math|f> non è mai negativa. Dobbiamo
  quindi risolvere <math|\|x<rsup|2>-4\|\<leq\>1>, cioè
  <math|3\<leq\>x<rsup|2>\<leq\>5>, e la risposta è
  <math|[-<sqrt|5>,-<sqrt|3>]\<cup\>[<sqrt|3>,<sqrt|5>]>.

  <section|Esponenziale e logaritmo: le proprietà che useremo>

  Esponenziali e logaritmi compaiono in molti esercizi del corso, quindi
  richiamiamo qui le loro proprietà. Per <math|a\<gtr\>0> le potenze con
  esponente razionale si definiscono con le radici e, per esponenti negativi,
  con i reciproci. Per passare a un esponente reale qualsiasi, quando
  <math|a\<gtr\>1>, si può usare ancora la completezza e porre

  <\equation*>
    a<rsup|x>=sup{a<rsup|q>:q\<in\>\<bbb-Q\>,q\<leq\>x}.
  </equation*>

  L'idea è che le potenze razionali con esponente sempre più vicino a
  <math|x> si avvicinano a un valore, e il supremo lo individua. Giustificare
  tutti i dettagli di questa costruzione richiederebbe però altre
  dimostrazioni, quindi qui assumiamo le proprietà fondamentali. Per
  <math|a\<gtr\>1> valgono <math|a<rsup|x+y>=a<rsup|x>a<rsup|y>> e
  <math|a<rsup|0>=1>, la funzione è strettamente crescente e la sua immagine
  è <math|(0,+\<infty\>)>. Per <math|0\<less\>a\<less\>1> poniamo
  <math|a<rsup|x>=(1/a)<rsup|-x>>, e otteniamo una funzione strettamente
  decrescente. Per <math|a=1> la funzione è costante.

  Quando <math|a\<neq\>1> l'esponenziale è quindi biettivo da
  <math|\<bbb-R\>> a <math|(0,+\<infty\>)>, e la sua inversa è il
  <strong|logaritmo in base <math|a>>. Dire <math|log<rsub|a>x=y> significa
  dire <math|a<rsup|y>=x>, e questo ha senso soltanto per <math|x\<gtr\>0>.
  Dalle proprietà delle potenze seguono le regole, valide per argomenti
  positivi,

  <\equation*>
    log<rsub|a>(u*v)=log<rsub|a>u+log<rsub|a>v,<space|1em>log<rsub|a>(u<rsup|r>)=r
    log<rsub|a>u.
  </equation*>

  Scriveremo semplicemente <math|log x> per il logaritmo in base <math|e>, il
  numero che costruiremo con le successioni. Continuità e limiti di queste
  funzioni li studieremo dopo aver definito i limiti.

  <\verifica|5>
    <strong|1.> Quante soluzioni ha <math|\|x<rsup|2>-4\|=\<lambda\>> al
    variare del reale <math|\<lambda\>>? Considera separatamente
    <math|\<lambda\>=0> e <math|\<lambda\>=4>.

    <strong|2.> Risolvi <math|log(3x+1)=log(x+5)>, dichiarando prima il
    dominio. Spiega quale proprietà permette di uguagliare gli argomenti.
  </verifica>

  <chapter|Trigonometria e funzioni inverse>

  <\inbreve>
    Se conosciamo un angolo, il seno ci dice a che altezza arriva sul
    cerchio. Spesso però il problema è al contrario: conosciamo l'altezza e
    cerchiamo l'angolo. Gli angoli con la stessa altezza sono infiniti,
    quindi dovremo imparare a sceglierne uno, sempre lo stesso. Questa
    piccola scelta guiderà tutti i calcoli del capitolo.
  </inbreve>

  <section|Radianti, circonferenza, seno e coseno>

  Tutta la trigonometria nasce da un cerchio. La <strong|circonferenza
  trigonometrica> ha centro nell'origine e raggio 1, quindi i suoi punti sono
  quelli che soddisfano <math|x<rsup|2>+y<rsup|2>=1>.

  Partiamo dal punto <math|A=(1,0)> e camminiamo lungo la circonferenza. Un
  angolo di <math|\<alpha\>> radianti corrisponde a un arco di lunghezza
  <math|\<alpha\>>, percorso in senso antiorario se <math|\<alpha\>\<gtr\>0>
  e in senso orario se <math|\<alpha\>\<less\>0>. Poiché la circonferenza ha
  lunghezza <math|2\<pi\>>, un giro completo misura <math|2\<pi\>> radianti.
  Chiamiamo <math|P> il punto in cui arriviamo. Le sue coordinate definiscono
  le due funzioni fondamentali:

  <\equation*>
    P=(cos \<alpha\>,sin \<alpha\>).
  </equation*>

  Il coseno è quindi l'ascissa del punto e il seno la sua ordinata. Poiché
  <math|P> sta sulla circonferenza, vale sempre
  <math|sin<rsup|2>\<alpha\>+cos<rsup|2>\<alpha\>=1>. Anche i segni si
  leggono direttamente dal disegno. Nel secondo quadrante, per esempio, il
  punto sta a sinistra e in alto, e quindi il coseno è negativo e il seno
  positivo.

  Per <math|0\<leq\>\<alpha\>\<leq\>2\<pi\>> il settore circolare spazzato
  dall'angolo ha area <math|\<alpha\>/2>, e per angoli qualsiasi possiamo
  pensare a un'area orientata che si accumula giro dopo giro. Per ora
  prendiamo questa descrizione geometrica come punto di partenza, perché
  definire in modo rigoroso lunghezza d'arco e area richiede strumenti che
  vedremo più avanti.

  <figura|<image|assets/circonferenza.pdf|88.2mm|69.3mm||>|Le coordinate del
  punto forniscono coseno e seno. L'intersezione della retta <math|O*P> con
  <math|x=1> fornisce la tangente come altezza orientata.>

  La <strong|tangente> è il rapporto <math|tan \<alpha\>=sin \<alpha\>/cos
  \<alpha\>>, definito quando <math|cos \<alpha\>\<neq\>0>. Anche lei ha
  un'interpretazione geometrica. Se prolunghiamo la retta <math|O*P> fino a
  incontrare la verticale <math|x=1>, il punto d'incontro si trova
  all'altezza <math|tan \<alpha\>>. Dobbiamo usare tutta la retta e non solo
  la semiretta da <math|O> verso <math|P>, perché quando <math|P> sta a
  sinistra la semiretta non raggiunge mai <math|x=1>. Quando <math|P> sta in
  cima o in fondo alla circonferenza, cioè per
  <math|\<alpha\>=\<pi\>/2+k\<pi\>> con <math|k\<in\>\<bbb-Z\>>, la retta è
  verticale e la tangente non esiste.

  <section|Simmetrie, periodi e grafici>

  Il cerchio ha molte simmetrie, e ciascuna si traduce in una proprietà delle
  funzioni. Sostituire <math|\<alpha\>> con <math|-\<alpha\>> significa
  percorrere lo stesso arco in senso opposto, e il punto <math|P> viene
  riflesso rispetto all'asse orizzontale. Il coseno quindi non cambia, mentre
  il seno cambia segno, e per questo il coseno è pari mentre il seno e la
  tangente sono dispari. Aggiungere <math|2\<pi\>> significa fare un giro
  completo e tornare allo stesso punto, quindi seno e coseno hanno periodo
  <math|2\<pi\>>.

  Aggiungere <math|\<pi\>>, cioè mezzo giro, porta invece al punto
  diametralmente opposto, e cambia segno a entrambe le coordinate. Il loro
  rapporto resta lo stesso, quindi la tangente ha periodo <math|\<pi\>>. È il
  periodo più piccolo possibile, perché la tangente si annulla esattamente
  nei multipli di <math|\<pi\>>, che distano <math|\<pi\>> l'uno dall'altro.
  Per seno e coseno il periodo minimo è invece <math|2\<pi\>>, perché per
  tornare al valore massimo 1 serve un giro intero.

  Seguendo il punto lungo un giro vediamo nascere i grafici. Il seno vale 0,
  1, 0, <math|-1> e di nuovo 0 negli angoli
  <math|0,\<pi\>/2,\<pi\>,3\<pi\>/2,2\<pi\>>. Il coseno fa lo stesso
  percorso, ma un quarto di giro prima, e infatti <math|cos
  x=sin(x+\<pi\>/2)>. La tangente cresce strettamente in ogni intervallo
  <math|(-\<pi\>/2+k\<pi\>,\<pi\>/2+k\<pi\>)>, e avvicinandosi agli estremi i
  suoi valori diventano grandi quanto vogliamo, in positivo o in negativo.
  Daremo un senso preciso a questo comportamento quando parleremo di limiti.

  Nei calcoli ci serviranno anche le formule di addizione,

  <\equation*>
    sin(u+v)=sin u cos v+cos u sin v,
  </equation*>

  <\equation*>
    cos(u+v)=cos u cos v-sin u sin v.
  </equation*>

  Dal punto di vista geometrico descrivono dove arriva un punto dopo due
  rotazioni successive, la prima di <math|u> e la seconda di <math|v>.
  Prendendo <math|u=v> otteniamo per esempio le formule di duplicazione
  <math|sin(2u)=2sin u cos u> e <math|cos(2u)=1-2sin<rsup|2>u>.

  <section|Arcoseno, arcocoseno e arcotangente>

  Cominciamo da una domanda semplice: quale angolo ha seno <math|1/2>? Viene
  subito in mente <math|\<pi\>/6>. Anche <math|5\<pi\>/6> però ha seno
  <math|1/2>, e lo stesso vale per <math|\<pi\>/6+2\<pi\>>, per
  <math|5\<pi\>/6+2\<pi\>> e così via, un giro dopo l'altro. La domanda ha
  infinite risposte, mentre una funzione inversa deve darne una sola.

  Per uscirne ci mettiamo d'accordo in anticipo su dove cercare. Per il seno
  scegliamo l'intervallo <math|[-\<pi\>/2,\<pi\>/2]>. Lì il seno sale da
  <math|-1> a 1 senza mai tornare indietro, e incontra ogni valore
  esattamente una volta. Dentro questo intervallo la nostra domanda ha una
  sola risposta, <math|\<pi\>/6>, che chiamiamo arcoseno di <math|1/2>.

  Per il coseno lo stesso intervallo non funzionerebbe. Fra <math|-\<pi\>/2>
  e <math|\<pi\>/2> il coseno prima cresce e poi cala, e prende due volte
  ogni valore compreso fra 0 e 1. Scegliamo allora <math|[0,\<pi\>]>, dove il
  coseno scende da 1 a <math|-1>. Per la tangente basta l'intervallo aperto
  <math|(-\<pi\>/2,\<pi\>/2)>, in cui cresce sempre e assume tutti i valori
  reali.

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

  Gli intervalli sono diversi, e per questo cambiano anche le risposte.
  L'angolo con coseno <math|1/2> che troviamo in <math|[0,\<pi\>]> è
  <math|\<pi\>/3>, non <math|\<pi\>/6>. L'arcotangente si lascia invece
  immaginare bene: <math|arctan t> è l'inclinazione della retta che va
  dall'origine al punto <math|(1,t)>, misurata fra <math|-\<pi\>/2> e
  <math|\<pi\>/2>.

  <figura|<image|assets/inverse-trig.pdf|124.8mm|44.9mm||>|I grafici delle
  inverse scambiano entrata e uscita dei rami scelti.>

  <subsection|Andata e ritorno>

  Partiamo da un'altezza <math|t>, troviamo il suo angolo con l'arcoseno e
  poi ne calcoliamo il seno. Torniamo esattamente a <math|t>, per ogni
  <math|t> fra <math|-1> e 1, cioè <math|sin(arcsin t)=t>. È proprio ciò per
  cui abbiamo costruito l'arcoseno.

  Il viaggio nel verso opposto può riservare una sorpresa. Partiamo da un
  angolo <math|x>, ne calcoliamo il seno e chiediamo all'arcoseno di
  ritrovarlo. Se <math|x> sta fra <math|-\<pi\>/2> e <math|\<pi\>/2> lo
  ritroviamo, e <math|arcsin(sin x)=x>. Altrimenti l'arcoseno ci dà un altro
  angolo, quello che ha la stessa altezza e si trova nell'intervallo
  concordato.

  Proviamo con <math|x=2>. Siccome <math|\<pi\>/2\<less\>2\<less\>\<pi\>>,
  l'angolo 2 cade nel secondo quadrante, fuori dal nostro intervallo. Il suo
  riflesso rispetto all'asse verticale è <math|\<pi\>-2>, che arriva alla
  stessa altezza e sta fra 0 e <math|\<pi\>/2>. Per questo

  <\equation*>
    arcsin(sin 2)=\<pi\>-2.
  </equation*>

  Con il coseno capita qualcosa di simile. L'angolo 4 sta fra <math|\<pi\>> e
  <math|2\<pi\>>, nella metà inferiore del cerchio. Se lo riflettiamo
  rispetto all'asse orizzontale arriviamo a <math|2\<pi\>-4>, che ha lo
  stesso coseno e sta in <math|[0,\<pi\>]>. Dunque <math|arccos(cos
  4)=2\<pi\>-4>.

  Davanti a composizioni come queste conviene farsi due domande, sempre in
  quest'ordine. La prima è se l'espressione ha senso: <math|cos(arccos t)>,
  per esempio, ce l'ha solo quando <math|t> sta fra <math|-1> e 1. La
  seconda, se ha senso, è se possiamo semplificarla subito o se prima
  dobbiamo riportare l'angolo nell'intervallo giusto.

  <section|Identità: il segno e l'intervallo vanno controllati>

  Gli intervalli principali non servono solo a definire le inverse, ma
  diventano decisivi anche quando calcoliamo con esse. Proviamo a esprimere
  <math|sin(arccos t)> senza funzioni trigonometriche. Chiamiamo
  <math|\<alpha\>=arccos t>, così sappiamo due cose, che <math|cos
  \<alpha\>=t> e che <math|\<alpha\>> sta in <math|[0,\<pi\>]>. Dall'identità
  fondamentale ricaviamo <math|sin<rsup|2>\<alpha\>=1-t<rsup|2>>, ma questo
  determina il seno solo a meno del segno. È l'intervallo a decidere, perché
  fra 0 e <math|\<pi\>> il seno non è mai negativo. Quindi

  <\equation*>
    sin(arccos t)=<sqrt|1-t<rsup|2>><space|2em>(-1\<leq\>t\<leq\>1).
  </equation*>

  Con lo stesso ragionamento, usando questa volta l'intervallo
  <math|[-\<pi\>/2,\<pi\>/2]> dove il coseno non è negativo, si trova
  <math|cos(arcsin t)=<sqrt|1-t<rsup|2>>>.

  L'unicità dell'angolo principale permette anche di dimostrare identità fra
  le inverse. Se <math|\<beta\>=arcsin t>, l'angolo complementare
  <math|\<pi\>/2-\<beta\>> sta in <math|[0,\<pi\>]> e ha coseno uguale a
  <math|sin \<beta\>=t>. Ma in <math|[0,\<pi\>]> c'è un solo angolo con
  coseno <math|t>, ed è <math|arccos t>. Ne segue

  <\equation*>
    arcsin t+arccos t=\<pi\>/2<space|2em>(-1\<leq\>t\<leq\>1).
  </equation*>

  Un ragionamento simile vale per l'arcotangente. Per <math|x\<gtr\>0>
  poniamo <math|\<alpha\>=arctan x>, che sta in <math|(0,\<pi\>/2)>. L'angolo
  complementare <math|\<pi\>/2-\<alpha\>> sta ancora nello stesso intervallo
  e ha tangente <math|1/x>, quindi coincide con <math|arctan(1/x)>, e
  otteniamo

  <\equation*>
    arctan x+arctan(1/x)=\<pi\>/2<space|2em>(x\<gtr\>0).
  </equation*>

  Per <math|x\<less\>0> applichiamo la formula a <math|-x>, che è positivo, e
  usiamo il fatto che l'arcotangente è dispari, così la somma vale
  <math|-\<pi\>/2>. In <math|x=0> l'espressione non ha senso, perché
  <math|1/x> non è definito. Il cambio di segno del risultato fra positivi e
  negativi viene ancora una volta dalla scelta dell'intervallo principale.

  <section|Composizioni periodiche: un esempio completo>

  Mettiamo insieme le idee del capitolo con una funzione che a prima vista
  sembra misteriosa, <math|arccos(sin x)>. Il primo passo è capire se è
  periodica. In generale, se <math|g> ha periodo <math|T> e <math|f> è
  definita su tutta l'immagine di <math|g>, allora <math|f(g(x+T))=f(g(x))>,
  e quindi anche la composta ha periodo <math|T>, anche se il suo periodo
  minimo potrebbe essere più piccolo. Questo spiega subito perché sia
  <math|arccos(sin x)> sia <math|(sin x)<rsup|3>> hanno periodo
  <math|2\<pi\>>. Se invece è periodica soltanto la funzione esterna, come in
  <math|sin(x<rsup|2>)>, non possiamo concludere nulla del genere, perché
  l'argomento interno cambia il ritmo delle oscillazioni.

  Ci basta quindi studiare <math|arccos(sin x)> su un solo periodo. Quando
  <math|-\<pi\>/2\<leq\>x\<leq\>\<pi\>/2>, l'identità della sezione
  precedente, letta con <math|t=sin x> e <math|arcsin(sin x)=x>, dà
  <math|arccos(sin x)=\<pi\>/2-x>.

  Quando <math|\<pi\>/2\<leq\>x\<leq\>3\<pi\>/2>, invece, l'angolo
  <math|x-\<pi\>/2> sta in <math|[0,\<pi\>]> e ha coseno uguale a <math|sin
  x>, quindi la composta vale <math|x-\<pi\>/2>. I due tratti sono segmenti
  di retta che si incontrano a quota 0 in <math|x=\<pi\>/2>, e il disegno si
  ripete con periodo <math|2\<pi\>>, formando un grafico a denti di sega
  triangolari.

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
    I numeri 1, 1/2, 1/3, 1/4 e così via si avvicinano a zero senza mai
    arrivarci, e chiunque li guardi lo vede. Trasformare questa impressione
    in una definizione è più difficile di quanto sembri, perché dobbiamo dire
    con precisione che cosa significa \Savvicinarsi\T. La risposta consiste
    nel fissare una tolleranza qualsiasi e mostrare che, da un certo punto in
    poi, tutti i termini la rispettano. Con questa idea studieremo limiti
    finiti e infiniti e impareremo a confrontare le successioni fra loro.
  </inbreve>

  <section|Successioni, definitivamente e frequentemente>

  Una <strong|successione reale> è una funzione che associa a ogni indice
  naturale <math|n> un numero reale <math|a<rsub|n>>, e scriviamo
  <math|(a<rsub|n>)> per indicare la successione intera. L'indice ci dice
  quale termine stiamo guardando, e conta anche l'ordine in cui i valori
  compaiono. La successione <math|a<rsub|n>=(-1)<rsup|n>>, per esempio,
  assume soltanto i due valori 1 e <math|-1>, ma li alterna senza fermarsi
  mai.

  Non serve che la formula sia definita per ogni indice, basta che lo sia da
  un certo indice in poi. La successione <math|a<rsub|n>=1/(n-4)> è definita
  per <math|n\<geq\>5>, e i primi termini mancanti non ci impediscono di
  studiare che cosa succede per <math|n> grande. Invece <math|<sqrt|2025-n>>
  è definita solo per un numero finito di indici, e quindi non è una
  successione che si possa studiare all'infinito.

  Le domande sui limiti riguardano ciò che succede \Sda un certo punto in
  poi\T, e conviene avere una parola per questo. Una proprietà vale
  <strong|definitivamente> se vale per tutti gli indici da una certa soglia
  in avanti:

  <\equation*>
    \<exists\>n<rsub|0>\<in\>\<bbb-N\><space|1em>\<forall\>n\<geq\>n<rsub|0>,<space|1em>P(n).
  </equation*>

  Una proprietà vale invece <strong|frequentemente> se, per quanto avanti ci
  spingiamo, troviamo sempre un altro indice che la soddisfa:

  <\equation*>
    \<forall\>n<rsub|0>\<in\>\<bbb-N\><space|1em>\<exists\>n\<geq\>n<rsub|0><space|1em>P(n).
  </equation*>

  La proprietà \S<math|n> è pari\T vale frequentemente, perché i pari non
  finiscono mai, ma non definitivamente, perché dopo ogni pari viene un
  dispari. La proprietà \S<math|n\<geq\>100>\T vale invece definitivamente.
  La differenza è fra incontrare ancora qualche indice buono e avere la
  garanzia che lo siano tutti, e nei limiti ci servirà proprio questa seconda
  garanzia.

  <section|Limite finito: controllare una distanza>

  Torniamo alla successione <math|a<rsub|n>=1/n>. Se chiediamo che la
  distanza da zero non superi <math|0,01>, stiamo chiedendo
  <math|1/n\<leq\>0,01>, e questo vale per tutti gli indici da 100 in poi. Se
  diventiamo più esigenti e chiediamo <math|0,001>, dobbiamo andare oltre
  1000. Ogni volta che stringiamo la tolleranza la soglia si sposta più
  avanti, ma una soglia c'è sempre. Questo è il cuore della definizione di
  limite, perché non basta che una tolleranza funzioni, dobbiamo saper
  rispondere a qualsiasi tolleranza positiva ci venga proposta.

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

  La lettera greca <math|\<varepsilon\>>, epsilon, rappresenta la tolleranza,
  cioè una distanza positiva piccola quanto vogliamo. La condizione
  <math|\|a<rsub|n>-\<#2113\>\|\<leq\>\<varepsilon\>> dice che
  <math|a<rsub|n>> sta nella striscia fra <math|\<#2113\>-\<varepsilon\>> e
  <math|\<#2113\>+\<varepsilon\>>. Potremmo usare anche la disuguaglianza
  stretta senza cambiare nulla, perché se sappiamo ottenere distanze al
  massimo <math|\<varepsilon\>/2> abbiamo anche distanze minori di
  <math|\<varepsilon\>>.

  <figura|<image|assets/striscia.pdf|155.0mm|57.5mm||>|Fissata la striscia
  fra <math|\<#2113\>-\<varepsilon\>> e <math|\<#2113\>+\<varepsilon\>>,
  tutti i termini da un certo indice in poi devono rimanerci. Entrarci
  soltanto infinite volte non basta.>

  Vediamo la definizione al lavoro con <math|1/n>. Fissiamo un
  <math|\<varepsilon\>\<gtr\>0> qualsiasi. Per <math|n\<geq\>1> la
  disuguaglianza che vogliamo, <math|1/n\<leq\>\<varepsilon\>>, equivale a
  <math|n\<geq\>1/\<varepsilon\>>. Scegliamo quindi un intero
  <math|n<rsub|0>\<geq\>max{1,1/\<varepsilon\>}>. Per ogni
  <math|n\<geq\>n<rsub|0>> abbiamo allora
  <math|0\<less\>1/n\<leq\>\<varepsilon\>>. Poiché questa scelta funziona
  qualunque sia la tolleranza di partenza, abbiamo dimostrato che
  <math|1/n\<rightarrow\>0>.

  In questo esempio sappiamo anche da che parte arrivano i termini, perché
  sono tutti positivi, e lo indichiamo scrivendo
  <math|1/n\<rightarrow\>0<rsup|+>>. In generale
  <math|a<rsub|n>\<rightarrow\>\<#2113\><rsup|+>> significa che
  <math|a<rsub|n>\<rightarrow\>\<#2113\>> e che in più
  <math|a<rsub|n>\<gtr\>\<#2113\>> definitivamente, mentre
  <math|a<rsub|n>\<rightarrow\>\<#2113\><rsup|->> richiede
  <math|a<rsub|n>\<less\>\<#2113\>>. Il segno in alto indica soltanto il lato
  da cui ci avviciniamo, non un numero nuovo.

  <section|Limiti infiniti e unicità>

  I termini di <math|n<rsup|2>> non si avvicinano a nessun numero reale, ma
  il loro comportamento è comunque molto chiaro, perché superano qualsiasi
  quota fissata. È questa l'idea che traduciamo in definizione:

  <\equation*>
    a<rsub|n>\<rightarrow\>+\<infty\><space|1em>\<Leftrightarrow\><space|1em>\<forall\>M\<in\>\<bbb-R\><space|1em>\<exists\>n<rsub|0><space|1em>\<forall\>n\<geq\>n<rsub|0>,<space|1em>a<rsub|n>\<geq\>M.
  </equation*>

  Per <math|-\<infty\>> chiediamo invece che, per ogni
  <math|M\<in\>\<bbb-R\>>, valga <math|a<rsub|n>\<leq\>M> definitivamente, e
  qui le quote interessanti sono quelle molto negative. Le successioni di
  questi due tipi si dicono <strong|divergenti> a <math|+\<infty\>> e a
  <math|-\<infty\>>.

  Verifichiamo che <math|n<rsup|2>\<rightarrow\>+\<infty\>>. Qualcuno ci
  assegna una quota <math|M>, e il nostro compito è trovare un indice oltre
  il quale tutti i termini la superano. Se <math|M\<leq\>0> non c'è nulla da
  fare, perché ogni indice va bene. Se <math|M\<gtr\>0> prendiamo un intero
  <math|n<rsub|0>\<geq\>max{1,M}>, e per <math|n\<geq\>n<rsub|0>> otteniamo
  <math|n<rsup|2>\<geq\>n\<geq\>M>.

  Un limite, quando esiste, è <strong|unico>. Nel caso finito l'idea è che
  una successione non può restare definitivamente vicina a due numeri
  diversi. Supponiamo che converga sia a <math|\<#2113\>> sia a <math|m>, con
  <math|\<#2113\>\<neq\>m>, e scegliamo una tolleranza pari a un terzo della
  loro distanza, <math|\<varepsilon\>=\|\<#2113\>-m\|/3>. Da un certo indice
  in poi entrambe le distanze sono al massimo <math|\<varepsilon\>>, e la
  disuguaglianza triangolare dà

  <\equation*>
    \|\<#2113\>-m\|\<leq\>\|\<#2113\>-a<rsub|n>\|+\|a<rsub|n>-m\|\<leq\><frac|2|3>\|\<#2113\>-m\|,
  </equation*>

  che è impossibile per una distanza positiva.

  Allo stesso modo un limite finito non può convivere con un limite infinito,
  perché una successione convergente resta definitivamente in un intervallo
  limitato. E i due infiniti si escludono a vicenda, perché non si può stare
  definitivamente sopra 1 e anche sotto <math|-1>.

  Può anche succedere che il limite <strong|non esista>. Prendiamo
  <math|(-1)<rsup|n>>. Non può divergere, perché tutti i suoi termini stanno
  fra <math|-1> e 1. Non può nemmeno convergere a un numero <math|\<#2113\>>.
  Con <math|\<varepsilon\>=1/2>, infatti, i termini uguali a 1
  richiederebbero <math|\|1-\<#2113\>\|\<leq\>1/2> e quelli uguali a
  <math|-1> richiederebbero <math|\|-1-\<#2113\>\|\<leq\>1/2>, e dalla
  disuguaglianza triangolare seguirebbe <math|2\<leq\>1>. Poiché entrambi i
  valori ricompaiono per quanto avanti andiamo, nessuna soglia permette di
  evitare il problema.

  <section|Limitatezza, segno e confronto>

  Una successione è <strong|limitata> se esiste <math|C\<geq\>0> tale che
  <math|\|a<rsub|n>\|\<leq\>C> per tutti gli indici. Ogni successione
  convergente lo è. Se <math|a<rsub|n>\<rightarrow\>\<#2113\>\<in\>\<bbb-R\>>,
  scegliendo <math|\<varepsilon\>=1> sappiamo che da un certo indice in poi
  <math|\|a<rsub|n>\|\<leq\>\|\<#2113\>\|+1>. Prima di quell'indice ci sono
  solo un numero finito di termini, e basta aumentare <math|C> quanto serve
  per includere anche loro. Il viceversa è falso, e <math|(-1)<rsup|n>>,
  limitata ma non convergente, ne è la prova.

  La stessa idea funziona per le successioni che divergono a
  <math|+\<infty\>>. La coda sta definitivamente sopra zero, e i termini
  iniziali sono in numero finito e quindi hanno un minimo, così la
  successione è limitata inferiormente. Per <math|-\<infty\>> si ottiene allo
  stesso modo una limitazione superiore.

  Se il limite è positivo, anche i termini finiscono per esserlo. È la
  <strong|permanenza del segno>: se <math|a<rsub|n>\<rightarrow\>\<#2113\>\<gtr\>0>,
  allora <math|a<rsub|n>\<gtr\>0> definitivamente. Per dimostrarlo scegliamo
  una tolleranza abbastanza piccola da non permettere di raggiungere lo zero,
  per esempio <math|\<varepsilon\>=\<#2113\>/2>, e otteniamo definitivamente
  <math|a<rsub|n>\<geq\>\<#2113\>/2\<gtr\>0>. Per <math|\<#2113\>\<less\>0>
  si ragiona allo stesso modo con <math|\<varepsilon\>=\|\<#2113\>\|/2>.
  Quando il limite è zero, invece, il segno può restare indeciso, come in
  <math|(-1)<rsup|n>/n>, che tende a zero cambiando lato a ogni passo.

  Il confronto più semplice riguarda i limiti infiniti. Se
  <math|a<rsub|n>\<leq\>b<rsub|n>> definitivamente e
  <math|a<rsub|n>\<rightarrow\>+\<infty\>>, allora anche
  <math|b<rsub|n>\<rightarrow\>+\<infty\>>. Fissata una quota <math|M>, da un
  certo indice vale <math|a<rsub|n>\<geq\>M> e da un altro vale il confronto.
  Oltre il più grande dei due indici valgono entrambe le cose, e quindi
  <math|b<rsub|n>\<geq\>M>. Allo stesso modo, se
  <math|b<rsub|n>\<rightarrow\>-\<infty\>>, anche
  <math|a<rsub|n>\<rightarrow\>-\<infty\>>.

  Per i limiti finiti serve stringere la successione da entrambi i lati.

  <\concetto|Teorema dei carabinieri>
    Se <math|a<rsub|n>\<leq\>b<rsub|n>\<leq\>c<rsub|n>> definitivamente e
    <math|a<rsub|n>\<rightarrow\>\<#2113\>>,
    <math|c<rsub|n>\<rightarrow\>\<#2113\>>, con
    <math|\<#2113\>\<in\>\<bbb-R\>>, allora
    <math|b<rsub|n>\<rightarrow\>\<#2113\>>.
  </concetto>

  L'idea è che le due successioni esterne trascinano con sé quella in mezzo.
  Fissato <math|\<varepsilon\>\<gtr\>0>, da un certo indice in poi abbiamo
  <math|a<rsub|n>\<geq\>\<#2113\>-\<varepsilon\>>, da un altro
  <math|c<rsub|n>\<leq\>\<#2113\>+\<varepsilon\>>, e da un altro ancora vale
  l'ordinamento dei tre termini. Oltre il più grande di questi indici tutto
  vale insieme, e quindi

  <\equation*>
    \<#2113\>-\<varepsilon\>\<leq\>a<rsub|n>\<leq\>b<rsub|n>\<leq\>c<rsub|n>\<leq\>\<#2113\>+\<varepsilon\>,
  </equation*>

  che è esattamente la definizione di <math|b<rsub|n>\<rightarrow\>\<#2113\>>.

  Il teorema è utile soprattutto quando il termine centrale è irregolare. Per
  esempio <math|-1/n\<leq\>sin(n<rsup|2>)/n\<leq\>1/n>, e quindi
  <math|sin(n<rsup|2>)/n\<rightarrow\>0>, anche se il seno al numeratore
  oscilla in modo imprevedibile. Un caso particolare che useremo spesso è che
  <math|a<rsub|n>\<rightarrow\>0> equivale a
  <math|\|a<rsub|n>\|\<rightarrow\>0>, perché la distanza da zero è il valore
  assoluto.

  <figura|<image|assets/carabinieri.pdf|155.0mm|55.0mm||>|I termini centrali
  possono salire e scendere. Restano però fra due successioni che tendono
  entrambe a <math|\<#2113\>>, e quindi si avvicinano anch'essi a
  <math|\<#2113\>>.>

  Le disuguaglianze passano anche ai limiti. Se due successioni hanno limiti
  finiti <math|\<#2113\>> e <math|m> e <math|a<rsub|n>\<leq\>b<rsub|n>>
  definitivamente, allora <math|\<#2113\>\<leq\>m>. Se infatti fosse
  <math|\<#2113\>\<gtr\>m>, con una tolleranza pari a <math|(\<#2113\>-m)/3>
  i termini finirebbero per essere ordinati al contrario. Le disuguaglianze
  strette, però, possono diventare uguaglianze nel limite. Per esempio
  <math|1-1/n\<less\>1> per ogni <math|n\<geq\>1>, ma il limite è 1.

  Infine, convergere non significa avvicinarsi in modo regolare. La
  successione <math|(2+(-1)<rsup|n>)/n> sta fra <math|1/n> e <math|3/n>, e
  quindi tende a <math|0<rsup|+>>, ma ogni tanto risale. Anche una
  successione divergente può salire e scendere lungo la strada. Nel prossimo
  capitolo vedremo che cosa possiamo concludere quando la monotonia c'è
  davvero.

  <\verifica|7>
    <strong|1.> Dimostra con la definizione che
    <math|n/(n+1)\<rightarrow\>1<rsup|->>. Parti dalla distanza da 1 e
    determina una soglia in funzione di <math|\<varepsilon\>>.

    <strong|2.> Studia <math|a<rsub|n>=n+2(-1)<rsup|n>>. Ha limite? È
    definitivamente crescente? Giustifica entrambe le risposte.
  </verifica>

  <chapter|Completezza, successioni monotone e numero di Nepero>

  <\inbreve>
    Capita di sapere che un limite esiste molto prima di conoscerne il
    valore. Basta che una successione cresca sempre senza mai superare una
    certa barriera, perché la completezza dei reali le offra un punto di
    arrivo. Usiamo questa idea per costruire il numero <math|e>, che non
    sapremmo definire in altro modo, e poi impariamo a calcolare limiti di
    somme, prodotti e quozienti senza ripartire ogni volta dalla definizione.
  </inbreve>

  <section|Il teorema delle successioni monotone>

  La successione <math|1-1/n>, per <math|n\<geq\>1>, cresce sempre e resta
  sotto 1, e il suo limite, cioè 1, è il più piccolo maggiorante dei suoi
  termini. Non è una coincidenza, ed è ciò che dimostreremo in questa
  sezione.

  Prima fissiamo le parole. Una successione è <strong|debolmente crescente>
  se <math|a<rsub|n+1>\<geq\>a<rsub|n>> per ogni indice e
  <strong|strettamente crescente> se la disuguaglianza è stretta. Con i versi
  rovesciati otteniamo le successioni decrescenti. Confrontare soltanto
  termini consecutivi basta a confrontare due termini qualsiasi. Se
  <math|m\<gtr\>n> e la successione è crescente, la catena dei confronti
  intermedi dà infatti <math|a<rsub|m>\<geq\>a<rsub|n>>.

  <\concetto|Convergenza delle successioni monotone>
    Una successione crescente e limitata superiormente converge al supremo
    dell'insieme dei suoi termini. Se non è limitata superiormente, tende a
    <math|+\<infty\>>.

    Una successione decrescente e limitata inferiormente converge all'infimo
    dei suoi termini. Se non è limitata inferiormente, tende a
    <math|-\<infty\>>.
  </concetto>

  Perché il candidato giusto è il supremo? Sia <math|(a<rsub|n>)> crescente e
  limitata superiormente, e sia <math|\<#2113\>=sup{a<rsub|n>}>, che esiste
  per la completezza. Tutti i termini stanno sotto <math|\<#2113\>>, quindi
  metà del lavoro è già fatta, perché nessun termine supera
  <math|\<#2113\>+\<varepsilon\>>. Resta da mostrare che da un certo punto in
  poi i termini stanno anche sopra <math|\<#2113\>-\<varepsilon\>>.

  Fissiamo <math|\<varepsilon\>\<gtr\>0>. Il numero
  <math|\<#2113\>-\<varepsilon\>> non è un maggiorante, perché è più piccolo
  del supremo, quindi esiste un termine <math|a<rsub|n<rsub|0>>\<gtr\>
  \<#2113\>-\<varepsilon\>>. Da solo questo non basterebbe, perché ci dice
  che un termine è vicino a <math|\<#2113\>>, non che lo sono tutti quelli
  successivi. Qui interviene la monotonia, perché i termini successivi non
  possono scendere sotto <math|a<rsub|n<rsub|0>>>:

  <\equation*>
    \<#2113\>-\<varepsilon\>\<less\>a<rsub|n<rsub|0>>\<leq\>a<rsub|n>\<leq\>\<#2113\>\<leq\>\<#2113\>+\<varepsilon\><space|1em>(n\<geq\>n<rsub|0>).
  </equation*>

  Questo dimostra che <math|a<rsub|n>\<rightarrow\>\<#2113\>>. Le due ipotesi
  hanno ruoli ben distinti. La completezza garantisce che il punto di arrivo
  esista, e la monotonia impedisce ai termini di allontanarsi di nuovo dopo
  esserci arrivati vicino.

  Se invece i termini non sono limitati superiormente, per ogni quota
  <math|M> esiste un termine <math|a<rsub|n<rsub|0>>\<geq\>M>, e per la
  monotonia tutti i successivi gli stanno sopra, quindi
  <math|a<rsub|n>\<rightarrow\>+\<infty\>>. Il caso decrescente si riduce al
  precedente guardando <math|-a<rsub|n>>, il cui supremo è l'opposto
  dell'infimo dei termini di partenza.

  <figura|<image|assets/monotona.pdf|150.0mm|52.5mm||>|Il supremo fornisce un
  termine sopra <math|\<#2113\>-\<varepsilon\>>. La monotonia trattiene sopra
  quella quota tutti i successivi; il fatto che <math|\<#2113\>> sia
  maggiorante li controlla dall'alto.>

  Una successione solo debolmente crescente può anche raggiungere il suo
  limite e poi restarci ferma. Se invece è strettamente crescente con limite
  finito, ogni termine è strettamente minore del limite. Se infatti un
  termine fosse uguale al limite, il successivo lo supererebbe, e il limite
  non sarebbe più un maggiorante.

  <section|Il numero di Nepero: costruire un nuovo limite>

  Consideriamo ora la successione

  <\equation*>
    e<rsub|n>=<around*|(|1+<frac|1|n>|)><rsup|n><space|2em>(n\<geq\>1).
  </equation*>

  I primi termini sono <math|2>, <math|9/4> e <math|64/27>, che sembrano
  crescere. Capire che cosa succede non è facile, perché due forze tirano in
  direzioni opposte. La base si avvicina a 1, e questo tende a rimpicciolire
  la potenza, mentre l'esponente cresce, e questo tende a ingrandirla. Invece
  di cercare subito il valore del limite, dimostreremo che la successione
  cresce e resta sotto una barriera, e il teorema appena visto farà il resto.

  <subsection|La monotonia: fare comparire Bernoulli>

  Per capire come confrontare due termini, proviamo con
  <math|e<rsub|3>=(4/3)<rsup|3>> ed <math|e<rsub|2>=(3/2)<rsup|2>>. Gli
  esponenti sono diversi, e questo rende il confronto scomodo. Possiamo però
  scrivere anche <math|e<rsub|2>> come un cubo, compensando con un fattore
  <math|2/3>, e scrivere <math|e<rsub|3>> usando la stessa base <math|3/2>:

  <\equation*>
    e<rsub|2>=<around*|(|<frac|3|2>|)><rsup|3><frac|2|3>,<space|1em>e<rsub|3>=<around*|(|<frac|3|2>|)><rsup|3><around*|(|<frac|8|9>|)><rsup|3>.
  </equation*>

  Ora il fattore <math|(3/2)<rsup|3>> è comune e positivo, quindi resta solo
  da confrontare <math|(8/9)<rsup|3>> con <math|2/3>. Ed è il genere di
  confronto che Bernoulli sa fare:

  <\equation*>
    <around*|(|1-<frac|1|9>|)><rsup|3>\<geq\>1-<frac|3|9>=<frac|2|3>.
  </equation*>

  Questo piccolo caso suggerisce la strada generale. Per <math|n\<geq\>2>
  confrontiamo <math|e<rsub|n>> con <math|e<rsub|n-1>>, portando entrambe le
  potenze allo stesso esponente <math|n>. Scriviamo

  <\equation*>
    e<rsub|n-1>=<around*|(|<frac|n|n-1>|)><rsup|n><frac|n-1|n>,
  </equation*>

  e dividiamo il confronto che vogliamo dimostrare per il fattore positivo
  <math|(n/(n-1))<rsup|n>>. Poiché <math|(n+1)(n-1)/n<rsup|2>=1-1/n<rsup|2>>,
  otteniamo l'equivalenza

  <\equation*>
    e<rsub|n>\<geq\>e<rsub|n-1><space|1em>\<Leftrightarrow\><space|1em><around*|(|1-<frac|1|n<rsup|2>>|)><rsup|n>\<geq\>1-<frac|1|n>.
  </equation*>

  L'ultima disuguaglianza è Bernoulli, <math|(1+t)<rsup|n>\<geq\>1+n*t>,
  applicato con <math|t=-1/n<rsup|2>>, che è maggiore di <math|-1>. La scelta
  di un esponente comune ci ha permesso di usare uno strumento che avevamo
  già dimostrato.

  <subsection|Una barriera superiore: controllare gli addendi>

  Per trovare una barriera conviene sviluppare la potenza. Nel caso
  <math|n=3> abbiamo

  <\equation*>
    <around*|(|1+<frac|1|3>|)><rsup|3>=1+3\<cdot\><frac|1|3>+3\<cdot\><frac|1|3<rsup|2>>+<frac|1|3<rsup|3>>.
  </equation*>

  Da dove viene il coefficiente 3 davanti a <math|1/3<rsup|2>>? Moltiplicando
  i tre fattori <math|(1+1/3)>, otteniamo <math|1/3<rsup|2>> ogni volta che
  da due dei tre fattori prendiamo <math|1/3> e dal terzo prendiamo 1. Le
  coppie di fattori si possono scegliere in tre modi. Se le contassimo in
  ordine troveremmo <math|3\<cdot\>2=6> possibilità, ma così ogni coppia
  verrebbe contata due volte, ed è per questo che il coefficiente è
  <math|6/2=3>.

  Lo stesso ragionamento funziona per <math|n> fattori. Il termine in cui
  <math|k> fattori contribuiscono con <math|1/n> compare tante volte quanti
  sono i modi di scegliere <math|k> fattori fra <math|n>. Questo numero si
  indica con <math|<binom|n|k>>, si legge \S<math|n> su <math|k>\T e si
  chiama <strong|coefficiente binomiale>. Contando le scelte in ordine
  otterremmo <math|n(n-1)\<cdot\>\<cdot\>\<cdot\>(n-k+1)> possibilità, ma
  ogni gruppo di <math|k> fattori verrebbe contato in tutti i suoi <math|k!>
  ordinamenti, dove <math|k!=1\<cdot\>2\<cdot\>\<ldots\>\<cdot\>k>. Quindi

  <\equation*>
    <binom|n|k>=<frac|n(n-1)\<cdot\>\<cdot\>\<cdot\>(n-k+1)|k!>.
  </equation*>

  Per <math|k=0> poniamo <math|0!=1> e <math|<binom|n|0>=1>, perché c'è un
  solo modo di non scegliere nessun fattore, e il prodotto vuoto vale 1. Lo
  sviluppo che otteniamo così è il <strong|binomio di Newton>.

  Ora dobbiamo stimare la somma. Guardiamo di nuovo il caso <math|n=3>. Il
  termine quadratico valeva <math|(3\<cdot\>2)/(2\<cdot\>3<rsup|2>)>, che è
  al massimo <math|1/2>, e quello cubico <math|(3\<cdot\>2\<cdot\>1)/(6\<cdot\>3<rsup|3>)>,
  che è al massimo <math|1/6>. In generale il numeratore
  <math|n(n-1)\<cdot\>\<cdot\>\<cdot\>(n-k+1)> ha <math|k> fattori, ciascuno
  al massimo <math|n>, e quindi diviso per <math|n<rsup|k>> dà al massimo 1.
  Ogni addendo è dunque al più <math|1/k!>, e

  <\equation*>
    e<rsub|n>=<big|sum><rsub|k=0><rsup|n><binom|n|k><frac|1|n<rsup|k>>\<leq\>1+<big|sum><rsub|k=1><rsup|n><frac|1|k!>.
  </equation*>

  I reciproci dei fattoriali non hanno una somma facile da calcolare, quindi
  li confrontiamo con qualcosa di più semplice. I fattoriali crescono almeno
  come le potenze di 2, perché per <math|k\<geq\>1> il prodotto <math|k!>
  contiene, dopo il fattore 1, altri <math|k-1> fattori, ciascuno almeno 2.
  Quindi <math|k!\<geq\>2<rsup|k-1>>, e la somma diventa geometrica:

  <\equation*>
    e<rsub|n>\<leq\>1+<big|sum><rsub|k=1><rsup|n><frac|1|2<rsup|k-1>>=3-<frac|1|2<rsup|n-1>>\<less\>3.
  </equation*>

  Non abbiamo avuto bisogno di somme infinite, perché questa stima vale
  separatamente per ogni <math|n>. La successione è dunque crescente e
  limitata superiormente, e quindi converge.

  <\concetto|Numero di Nepero>
    Il numero <math|e> è il limite reale

    <\equation*>
      e=lim<rsub|n\<rightarrow\>+\<infty\>><around*|(|1+<frac|1|n>|)><rsup|n>.
    </equation*>

    Vale <math|2\<less\>e\<less\>3>; il suo valore approssimato è
    <math|2,71828\<ldots\>>.
  </concetto>

  Le due disuguaglianze strette meritano un momento di attenzione. Quella
  inferiore è facile, perché la successione cresce e quindi
  <math|e\<geq\>e<rsub|2>=9/4\<gtr\>2>. Quella superiore è più delicata.
  Sapere che ogni <math|e<rsub|n>> è minore di 3 non basta, perché nel
  passaggio al limite le disuguaglianze strette possono diventare
  uguaglianze. Ci serve un margine fisso sotto 3. Lo troviamo nella nostra
  stima, dove per <math|k=3> avevamo sostituito <math|1/6> con <math|1/4>,
  aggiungendo <math|1/12> più del necessario. Per <math|n\<geq\>3> possiamo
  quindi scrivere <math|e<rsub|n>\<leq\>3-1/12=35/12>, e passando al limite
  otteniamo <math|e\<leq\>35/12\<less\>3>.

  <section|Algebra dei limiti: somma, prodotto e reciproco>

  Calcolare ogni limite partendo dalla definizione sarebbe faticoso, e per
  fortuna non serve. Se <math|a<rsub|n>\<rightarrow\>a> e
  <math|b<rsub|n>\<rightarrow\>b>, con limiti reali, allora

  <\equation*>
    a<rsub|n>+b<rsub|n>\<rightarrow\>a+b,<space|2em>a<rsub|n>b<rsub|n>\<rightarrow\>a*b,
  </equation*>

  e se in più <math|b\<neq\>0>, i termini <math|b<rsub|n>> sono
  definitivamente diversi da zero e <math|a<rsub|n>/b<rsub|n>\<rightarrow\>a/b>.
  Vale la pena capire perché, dato che le stesse idee torneranno con la
  continuità e con le derivate.

  Per la <strong|somma> la distanza dal risultato atteso si spezza in due:

  <\equation*>
    \|(a<rsub|n>+b<rsub|n>)-(a+b)\|\<leq\>\|a<rsub|n>-a\|+\|b<rsub|n>-b\|.
  </equation*>

  Fissato <math|\<varepsilon\>\<gtr\>0>, chiediamo a ciascuna delle due
  successioni di stare a distanza al massimo <math|\<varepsilon\>/2> dal
  proprio limite. Oltre il più grande dei due indici necessari valgono
  entrambe le richieste, e la somma delle distanze non supera
  <math|\<varepsilon\>>.

  Per il <strong|prodotto> serve un piccolo trucco. Vogliamo far comparire le
  distanze <math|a<rsub|n>-a> e <math|b<rsub|n>-b>, che sappiamo controllare,
  e per farlo aggiungiamo e togliamo <math|a<rsub|n>b>:

  <\equation*>
    a<rsub|n>b<rsub|n>-a*b=a<rsub|n>(b<rsub|n>-b)+b(a<rsub|n>-a).
  </equation*>

  Nel primo addendo la distanza <math|b<rsub|n>-b> è moltiplicata per
  <math|a<rsub|n>>, che cambia con <math|n>, ma poiché <math|(a<rsub|n>)>
  converge è limitata, e possiamo trovare <math|C\<geq\>1> con
  <math|\|a<rsub|n>\|\<leq\>C>. Dato <math|\<varepsilon\>\<gtr\>0>, rendiamo
  allora <math|\|b<rsub|n>-b\|\<leq\>\<varepsilon\>/(2C)> e
  <math|\|a<rsub|n>-a\|\<leq\>\<varepsilon\>/(2(\|b\|+1))>. Ciascun addendo
  non supera <math|\<varepsilon\>/2>, e il totale non supera
  <math|\<varepsilon\>>. Abbiamo scritto <math|\|b\|+1> invece di
  <math|\|b\|> perché il denominatore resti positivo anche quando <math|b=0>.

  Per il <strong|reciproco> il pericolo è che <math|b<rsub|n>> si avvicini a
  zero, rendendo <math|1/b<rsub|n>> enorme. L'ipotesi <math|b\<neq\>0> serve
  a evitarlo. Definitivamente <math|\|b<rsub|n>-b\|\<leq\>\|b\|/2>, e dalla
  disuguaglianza triangolare <math|\|b\|\<leq\>\|b-b<rsub|n>\|+\|b<rsub|n>\|>
  otteniamo <math|\|b<rsub|n>\|\<geq\>\|b\|/2\<gtr\>0>. Con questa garanzia

  <\equation*>
    <around*|\||<frac|1|b<rsub|n>>-<frac|1|b>|\|>=<frac|\|b<rsub|n>-b\||\|b<rsub|n>\|\|b\|>\<leq\><frac|2|\|b\|<rsup|2>>\|b<rsub|n>-b\|\<rightarrow\>0.
  </equation*>

  Il quoziente è il prodotto per il reciproco, e la differenza è la somma con
  l'opposto, quindi anche questi casi sono coperti.

  <section|Limiti infiniti e forme indeterminate>

  Quando entrano in gioco gli infiniti conviene lavorare nella <strong|retta
  reale estesa> <math|\<bbb-R\>\<cup\>{-\<infty\>,+\<infty\>}>. Ricordiamo
  però che i due infiniti descrivono comportamenti e non sono numeri, quindi
  con loro non possiamo fare tutte le operazioni a cuor leggero. Alcune
  regole hanno comunque un significato preciso, e conviene capirle una per
  una.

  Se <math|a<rsub|n>\<rightarrow\>+\<infty\>> e <math|(b<rsub|n>)> è limitata
  inferiormente da un numero <math|B>, allora
  <math|a<rsub|n>+b<rsub|n>\<rightarrow\>+\<infty\>>. Per superare una quota
  <math|M>, infatti, basta che <math|a<rsub|n>\<geq\>M-B>, e questo succede
  definitivamente. La regola comprende sia il caso in cui <math|b<rsub|n>> ha
  un limite finito sia quello in cui anche <math|b<rsub|n>> tende a
  <math|+\<infty\>>.

  Se <math|a<rsub|n>\<rightarrow\>a\<gtr\>0> e
  <math|b<rsub|n>\<rightarrow\>+\<infty\>>, il prodotto tende a
  <math|+\<infty\>>, perché definitivamente <math|a<rsub|n>\<geq\>a/2> e
  quindi <math|a<rsub|n>b<rsub|n>\<geq\>(a/2)b<rsub|n>>. Se <math|a\<less\>0>
  il prodotto tende invece a <math|-\<infty\>>. Il reciproco di una
  successione che tende a <math|+\<infty\>> tende a <math|0<rsup|+>>, perché
  per avere <math|0\<less\>1/b<rsub|n>\<leq\>\<varepsilon\>> basta che
  <math|b<rsub|n>\<geq\>1/\<varepsilon\>>. I casi con i segni opposti si
  ottengono cambiando segno.

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

  Anche dividere per qualcosa che tende a zero richiede attenzione al segno.
  Se <math|b<rsub|n>\<rightarrow\>0<rsup|+>> allora
  <math|1/b<rsub|n>\<rightarrow\>+\<infty\>>, se
  <math|b<rsub|n>\<rightarrow\>0<rsup|->> allora
  <math|1/b<rsub|n>\<rightarrow\>-\<infty\>>, e senza sapere da che parte
  arriva <math|b<rsub|n>> non possiamo concludere nulla in generale.

  Spesso una forma indeterminata si scioglie riscrivendo l'espressione. Per
  esempio

  <\equation*>
    <frac|n<rsup|2>+3n+1|2n<rsup|2>-7>=<frac|1+3/n+1/n<rsup|2>|2-7/n<rsup|2>>\<rightarrow\><frac|1|2>.
  </equation*>

  La forma iniziale era <math|\<infty\>/\<infty\>>, che da sola non dice
  nulla. Dividendo numeratore e denominatore per <math|n<rsup|2>> abbiamo
  ottenuto pezzi con limiti finiti e un denominatore con limite diverso da
  zero, e a quel punto le regole dell'algebra dei limiti si applicano senza
  problemi.

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
    tutte a <math|+\<infty\>>, ma con velocità molto diverse, e in un
    quoziente è proprio la velocità a decidere il risultato. Per confrontarle
    studiamo come cambia un termine rispetto al precedente, oppure quanto
    vale la sua radice <math|n>-esima. Questi due strumenti ci daranno una
    vera classifica degli infiniti, che useremo come una scorciatoia in
    moltissimi limiti.
  </inbreve>

  <section|Potenze e radici senza circolarità>

  Per dimostrare che <math|2<rsup|n>\<rightarrow\>+\<infty\>> verrebbe
  naturale risolvere <math|2<rsup|n>\<geq\>M> con un logaritmo. Ma c'è un
  problema nascosto. Per sapere che il logaritmo è definito su tutti i
  positivi dobbiamo già sapere che le potenze raggiungono ogni quota, cioè
  ciò che vogliamo dimostrare. Bernoulli ci permette di uscire da questo
  circolo vizioso, perché per <math|a\<gtr\>1>

  <\equation*>
    a<rsup|n>=(1+(a-1))<rsup|n>\<geq\>1+n(a-1)\<rightarrow\>+\<infty\>.
  </equation*>

  Gli altri casi seguono da questo. Per <math|0\<less\>a\<less\>1> passiamo
  al reciproco, <math|a<rsup|n>=1/(1/a)<rsup|n>>, e il denominatore tende a
  <math|+\<infty\>>, quindi <math|a<rsup|n>\<rightarrow\>0>. Per <math|a=1>
  la successione è costante, e per <math|a=0>, con <math|n\<geq\>1>, vale
  sempre zero. Se la base è negativa ma con valore assoluto minore di 1, i
  valori assoluti dei termini tendono a zero e quindi anche i termini. Una
  base minore o uguale a <math|-1> produce invece comportamenti diversi sugli
  indici pari e su quelli dispari, e il limite non esiste.

  Con una radice il cui indice cresce succede qualcosa di molto diverso. Per
  ogni numero fisso <math|a\<gtr\>0>

  <\equation*>
    <sqrt|a|n>\<rightarrow\>1.
  </equation*>

  Per capire perché, supponiamo <math|a\<geq\>1> e applichiamo Bernoulli con
  <math|t=(a-1)/n>. Otteniamo <math|(1+(a-1)/n)<rsup|n>\<geq\>1+(a-1)=a>, e
  prendendo la radice <math|n>-esima, che rispetta l'ordine fra numeri non
  negativi, troviamo

  <\equation*>
    1\<leq\><sqrt|a|n>\<leq\>1+<frac|a-1|n>.
  </equation*>

  Il teorema dei carabinieri conclude. Se <math|0\<less\>a\<less\>1> basta
  scrivere <math|<sqrt|a|n>> come il reciproco di <math|<sqrt|1/a|n>>, che
  tende a 1 per il caso appena visto. Notiamo che non abbiamo scritto
  <math|a<rsup|1/n>\<rightarrow\>a<rsup|0>=1>, perché quel ragionamento usa
  la continuità dell'esponenziale, che giustificheremo proprio a partire da
  questo risultato.

  Anche <math|<sqrt|n|n>\<rightarrow\>1>, ma qui il caso è più delicato,
  perché il radicando cresce insieme all'indice. La stima lineare di
  Bernoulli darebbe soltanto <math|<sqrt|n|n>\<leq\>2-1/n>, che resta lontana
  da 1. Proviamo allora a tenere il termine quadratico del binomio di Newton,
  che è più forte. Per <math|t\<geq\>0> e <math|n\<geq\>2>

  <\equation*>
    (1+t)<rsup|n>\<geq\><binom|n|2>t<rsup|2>=<frac|n(n-1)|2>t<rsup|2>.
  </equation*>

  Vorremmo che l'ultimo membro fosse almeno <math|n>, perché allora
  <math|(1+t)<rsup|n>\<geq\>n> e quindi <math|1+t\<geq\><sqrt|n|n>>.
  Risolvendo <math|n(n-1)t<rsup|2>/2=n> troviamo <math|t=<sqrt|2/(n-1)>>, e
  questa scelta tende a zero, cioè è esattamente ciò che ci serve. Otteniamo

  <\equation*>
    1\<leq\><sqrt|n|n>\<leq\>1+<sqrt|<frac|2|n-1>>\<rightarrow\>1,
  </equation*>

  dove l'ultima radice tende a zero perché, per renderla al massimo
  <math|\<varepsilon\>>, basta prendere <math|n\<geq\>1+2/\<varepsilon\><rsup|2>>.

  <section|Criteri della radice e del rapporto>

  Partiamo da due successioni geometriche. Per <math|a<rsub|n>=(3/4)<rsup|n>>
  la radice <math|n>-esima vale sempre <math|3/4> e i termini tendono a zero,
  mentre per <math|a<rsub|n>=(5/4)<rsup|n>> la radice vale sempre <math|5/4>
  e i termini tendono a <math|+\<infty\>>. In generale, se la radice
  <math|n>-esima di una successione si stabilizza sopra 1, la successione
  cresce almeno come una geometrica che esplode, e se si stabilizza sotto 1 è
  schiacciata da una geometrica che si spegne. Questo suggerisce di
  confrontare con 1 il limite della radice.

  <\concetto|Criterio della radice per successioni>
    Supponiamo <math|a<rsub|n>\<geq\>0> definitivamente e
    <math|<sqrt|a<rsub|n>|n>\<rightarrow\>\<#2113\>\<in\>[0,+\<infty\>]>. Se
    <math|\<#2113\>\<less\>1>, allora <math|a<rsub|n>\<rightarrow\>0>. Se
    <math|\<#2113\>\<gtr\>1>, incluso <math|\<#2113\>=+\<infty\>>, allora
    <math|a<rsub|n>\<rightarrow\>+\<infty\>>. Se <math|\<#2113\>=1>, il
    criterio non determina il limite di <math|(a<rsub|n>)>.
  </concetto>

  La dimostrazione rende precisa l'idea della geometrica. Se
  <math|\<#2113\>\<less\>1>, scegliamo un numero <math|q> strettamente
  compreso fra <math|\<#2113\>> e 1. Poiché la radice tende a
  <math|\<#2113\>>, che è minore di <math|q>, definitivamente
  <math|0\<leq\><sqrt|a<rsub|n>|n>\<leq\>q>, e quindi
  <math|0\<leq\>a<rsub|n>\<leq\>q<rsup|n>\<rightarrow\>0>. Se
  <math|1\<less\>\<#2113\>\<less\>+\<infty\>>, scegliamo invece <math|q> con
  <math|1\<less\>q\<less\>\<#2113\>>, e otteniamo definitivamente
  <math|a<rsub|n>\<geq\>q<rsup|n>\<rightarrow\>+\<infty\>>. Se
  <math|\<#2113\>=+\<infty\>> va bene qualunque <math|q\<gtr\>1>.

  <figura|<image|assets/geometrica.pdf|155.0mm|52.5mm||>|La scelta di un
  numero fisso <math|q> fra il limite della radice e 1 produce una geometrica
  che controlla i termini da un certo indice in poi.>

  Il <strong|criterio del rapporto> arriva alle stesse conclusioni guardando
  il rapporto fra termini consecutivi. Supponiamo <math|a<rsub|n>\<gtr\>0>
  definitivamente e <math|a<rsub|n+1>/a<rsub|n>\<rightarrow\>\<#2113\>\<in\>[0,+\<infty\>]>.
  La positività serve sia per poter dividere sia per moltiplicare le
  disuguaglianze senza cambiarne il verso. Se per esempio da un indice
  <math|N> in poi il rapporto è almeno <math|q\<gtr\>1>, allora ogni termine
  è almeno <math|q> volte il precedente, e ripetendo questo passo troviamo

  <\equation*>
    a<rsub|N+1>\<geq\>q*a<rsub|N>,<space|1em>a<rsub|N+2>\<geq\>q<rsup|2>a<rsub|N>,<space|1em>a<rsub|n>\<geq\>a<rsub|N>q<rsup|n-N>,
  </equation*>

  e l'ultimo membro tende a <math|+\<infty\>>. Se invece il rapporto è al
  massimo <math|q\<less\>1>, con <math|q\<gtr\>0>, lo stesso ragionamento dà
  <math|0\<less\>a<rsub|n>\<leq\>a<rsub|N>q<rsup|n-N>\<rightarrow\>0>. Il
  numero <math|q> si sceglie a partire dal limite del rapporto esattamente
  come per la radice. In realtà, per concludere, basta il confronto
  definitivo con <math|q>, e non serve nemmeno sapere che il rapporto ha
  limite.

  Quando <math|\<#2113\>=1> entrambi i criteri tacciono, e per una buona
  ragione. Le successioni <math|n>, <math|1/n> e <math|1> hanno tutte
  rapporto e radice <math|n>-esima che tendono a 1, eppure tendono
  rispettivamente a <math|+\<infty\>>, a zero e a 1. Ricordiamo anche che
  questi sono criteri per successioni, e che non stiamo ancora parlando di
  serie.

  <section|Dal rapporto alla radice>

  Il rapporto contiene in realtà un'informazione più precisa di quella che
  abbiamo usato. Se <math|a<rsub|n>\<gtr\>0> definitivamente e
  <math|a<rsub|n+1>/a<rsub|n>\<rightarrow\>\<#2113\>\<in\>[0,+\<infty\>]>,
  allora anche

  <\equation*>
    <sqrt|a<rsub|n>|n>\<rightarrow\>\<#2113\>.
  </equation*>

  L'idea è che, se ogni termine è circa <math|\<#2113\>> volte il precedente,
  il termine <math|n>-esimo è circa <math|\<#2113\><rsup|n>>, e la sua radice
  <math|n>-esima è circa <math|\<#2113\>>. Per rendere preciso questo
  \Scirca\T, supponiamo prima <math|0\<less\>\<#2113\>\<less\>+\<infty\>> e
  prendiamo due numeri positivi <math|p\<less\>\<#2113\>\<less\>q>.
  Definitivamente il rapporto sta fra <math|p> e <math|q>, e ripetendo il
  confronto da un opportuno indice <math|N> in poi otteniamo

  <\equation*>
    a<rsub|N>p<rsup|n-N>\<leq\>a<rsub|n>\<leq\>a<rsub|N>q<rsup|n-N>.
  </equation*>

  Prendendo le radici <math|n>-esime arriviamo a

  <\equation*>
    p<sqrt|a<rsub|N>p<rsup|-N>|n>\<leq\><sqrt|a<rsub|n>|n>\<leq\>q<sqrt|a<rsub|N>q<rsup|-N>|n>.
  </equation*>

  I radicandi ai due lati sono costanti positive, quindi le loro radici
  tendono a 1, e i due estremi tendono a <math|p> e a <math|q>. Dato
  <math|\<varepsilon\>\<gtr\>0> abbastanza piccolo rispetto a
  <math|\<#2113\>>, scegliamo <math|p=\<#2113\>-\<varepsilon\>/2> e
  <math|q=\<#2113\>+\<varepsilon\>/2>. Definitivamente il membro di sinistra
  supera <math|\<#2113\>-\<varepsilon\>> e quello di destra resta sotto
  <math|\<#2113\>+\<varepsilon\>>, e questa è la definizione di
  <math|<sqrt|a<rsub|n>|n>\<rightarrow\>\<#2113\>>.

  I casi estremi si trattano con metà della stima. Se <math|\<#2113\>=0>, per
  ogni <math|\<varepsilon\>\<gtr\>0> usiamo soltanto la stima superiore con
  <math|q=\<varepsilon\>/2>, il cui membro destro tende a
  <math|\<varepsilon\>/2> e quindi resta definitivamente sotto
  <math|\<varepsilon\>>. Se <math|\<#2113\>=+\<infty\>>, per ogni quota
  <math|M\<gtr\>0> usiamo la stima inferiore con <math|p=2M>, il cui membro
  sinistro tende a <math|2M> e quindi supera definitivamente <math|M>.

  Questo teorema funziona anche quando <math|\<#2113\>=1>, cioè dove i
  criteri precedenti non decidevano nulla, perché qui non ci interessa il
  limite dei termini ma quello delle radici. Il viceversa invece è falso. Per
  la successione <math|1,2,1,2,\<ldots\>> le radici <math|n>-esime tendono a
  1, perché stanno fra 1 e <math|<sqrt|2|n>>, ma i rapporti alternano 2 e
  <math|1/2> e non hanno limite.

  <section|La gerarchia degli infiniti>

  Ora possiamo stilare la classifica promessa. Confrontiamo <math|3<rsup|n>>
  con <math|n<rsup|5>> studiando <math|a<rsub|n>=3<rsup|n>/n<rsup|5>>. Il
  rapporto fra termini consecutivi è

  <\equation*>
    <frac|a<rsub|n+1>|a<rsub|n>>=3<around*|(|<frac|n|n+1>|)><rsup|5>\<rightarrow\>3\<gtr\>1,
  </equation*>

  e quindi <math|3<rsup|n>/n<rsup|5>\<rightarrow\>+\<infty\>>. L'esponenziale
  vince sulla potenza, per quanto alto sia l'esponente. Lo stesso calcolo
  funziona con qualsiasi base <math|a\<gtr\>1> e qualsiasi esponente intero
  fissato, e anche con un esponente reale <math|\<alpha\>\<gtr\>0>, perché
  basta scegliere un intero <math|m\<geq\>\<alpha\>> e usare
  <math|n<rsup|\<alpha\>>\<leq\>n<rsup|m>> per <math|n\<geq\>1>.

  Il fattoriale cresce ancora più in fretta. Per
  <math|b<rsub|n>=n!/3<rsup|n>> il rapporto è <math|(n+1)/3>, che tende a
  <math|+\<infty\>>. E più in alto ancora c'è <math|n<rsup|n>>, perché per
  <math|c<rsub|n>=n<rsup|n>/n!> troviamo

  <\equation*>
    <frac|c<rsub|n+1>|c<rsub|n>>=<around*|(|1+<frac|1|n>|)><rsup|n>\<rightarrow\>e\<gtr\>1.
  </equation*>

  Possiamo riassumere la classifica dicendo che, per <math|a\<gtr\>1> e
  <math|\<alpha\>\<gtr\>0>,

  <\equation*>
    <frac|n<rsup|\<alpha\>>|a<rsup|n>>\<rightarrow\>0,<space|2em><frac|a<rsup|n>|n!>\<rightarrow\>0,<space|2em><frac|n!|n<rsup|n>>\<rightarrow\>0.
  </equation*>

  Il teorema che collega rapporto e radice permette di dire anche di più. Il
  rapporto di <math|d<rsub|n>=n!/n<rsup|n>> tende a <math|1/e>, essendo il
  reciproco di quello di <math|c<rsub|n>>, e quindi

  <\equation*>
    <frac|<sqrt|n!|n>|n>=<sqrt|<frac|n!|n<rsup|n>>|n>\<rightarrow\><frac|1|e>.
  </equation*>

  In altre parole, la \Smedia geometrica\T dei numeri da 1 a <math|n> cresce
  come <math|n/e>.

  All'estremo opposto ci sono i polinomi, che dal punto di vista delle radici
  <math|n>-esime sono tutti uguali. Se <math|P(n)> ha grado <math|m\<geq\>0>
  e coefficiente dominante <math|c\<gtr\>0>, allora
  <math|<sqrt|P(n)|n>\<rightarrow\>1>. Per vederlo separiamo il termine di
  grado massimo, scrivendo <math|P(n)=c*n<rsup|m>(1+r<rsub|n>)> con
  <math|r<rsub|n>\<rightarrow\>0>. La radice <math|n>-esima di <math|c> tende
  a 1, e anche <math|(<sqrt|n|n>)<rsup|m>> tende a 1. Quanto all'ultimo
  fattore, definitivamente <math|1/2\<leq\>1+r<rsub|n>\<leq\>2>, e quindi la
  sua radice <math|n>-esima sta fra le radici di queste due costanti, che
  tendono a 1. In particolare il radicando è definitivamente positivo, e
  moltiplicando i tre fattori otteniamo il risultato.

  La classifica aiuta anche dentro una radice. Per esempio

  <\equation*>
    <sqrt|7<rsup|n>-n<rsup|7>+n<rsup|5>cos(n!)|n>=7<sqrt|1-<frac|n<rsup|7>|7<rsup|n>>+<frac|n<rsup|5>cos(n!)|7<rsup|n>>|n>\<rightarrow\>7.
  </equation*>

  Dopo aver raccolto <math|7<rsup|n>>, entrambe le correzioni dentro la
  radice tendono a zero, la seconda anche in valore assoluto, quindi il
  radicando tende a 1. In particolare sta definitivamente fra <math|1/2> e 2,
  e la sua radice <math|n>-esima sta fra <math|<sqrt|1/2|n>> e
  <math|<sqrt|2|n>>, che tendono entrambe a 1. Lo stesso confronto ci
  assicura che il radicando è positivo, e quindi che la radice è definita.

  <section|Cancellazioni e somme con molti termini>

  La classifica degli infiniti ha però un limite importante, perché non ci
  autorizza a buttare via un termine prima di una sottrazione. In
  <math|<sqrt|n<rsup|2>+7n+4>-n> i due pezzi crescono entrambi come <math|n>,
  e questa parte principale si cancella, così che a decidere il limite è
  proprio la correzione che sembrava trascurabile. Per far emergere la
  correzione usiamo l'identità <math|(u-v)(u+v)=u<rsup|2>-v<rsup|2>>:

  <\equation*>
    <sqrt|n<rsup|2>+7n+4>-n=<frac|7n+4|<sqrt|n<rsup|2>+7n+4>+n>=<frac|7+4/n|<sqrt|1+7/n+4/n<rsup|2>>+1>\<rightarrow\><frac|7|2>.
  </equation*>

  Per giustificare che la radice al denominatore tende a 1, osserviamo che
  per <math|t\<geq\>-1>

  <\equation*>
    \|<sqrt|1+t>-1\|=<frac|\|t\||<sqrt|1+t>+1>\<leq\>\|t\|,
  </equation*>

  e con <math|t=7/n+4/n<rsup|2>> il membro destro tende a zero.

  <subsection|La stessa idea per una radice cubica>

  Con le radici cubiche l'identità giusta è
  <math|u<rsup|3>-v<rsup|3>=(u-v)(u<rsup|2>+u*v+v<rsup|2>)>. Poniamo
  <math|u<rsub|n>=<sqrt|n<rsup|3>+7n<rsup|2>+4|3>>, così la differenza
  diventa

  <\equation*>
    u<rsub|n>-n=<frac|7n<rsup|2>+4|u<rsub|n><rsup|2>+n*u<rsub|n>+n<rsup|2>>=<frac|7+4/n<rsup|2>|(u<rsub|n>/n)<rsup|2>+u<rsub|n>/n+1>.
  </equation*>

  Basta allora dimostrare che <math|u<rsub|n>/n\<rightarrow\>1> per ottenere
  il limite <math|7/3>. Questo rapporto è <math|<sqrt|1+7/n+4/n<rsup|3>|3>>,
  e possiamo controllarlo come prima. Se <math|u=<sqrt|1+t|3>\<geq\>0>,
  l'identità dà <math|\|u-1\|=\|t\|/(u<rsup|2>+u+1)\<leq\>\|t\|>, quindi
  anche la radice cubica tende a 1 quando <math|t\<rightarrow\>0>.

  <subsection|Quanti addendi stiamo sommando?>

  Un altro tranello è applicare il teorema della somma quando il numero di
  addendi cresce con <math|n>. Il teorema parla di due successioni, o di un
  numero fisso di successioni, e non dice nulla su una somma che si allunga.
  Prendiamo <math|s<rsub|n>=<big|sum><rsub|k=n><rsup|2n>1/k<rsup|2>>. Ci sono
  <math|n+1> addendi, ciascuno al massimo <math|1/n<rsup|2>>, quindi

  <\equation*>
    0\<leq\>s<rsub|n>\<leq\><frac|n+1|n<rsup|2>>\<rightarrow\>0.
  </equation*>

  Qui gli addendi sono così piccoli da compensare il loro numero. Con
  <math|<big|sum><rsub|k=n><rsup|2n>1/<sqrt|k>> succede il contrario, perché
  ogni addendo è almeno <math|1/<sqrt|2n>> e la somma è almeno
  <math|(n+1)/<sqrt|2n>>, che tende a <math|+\<infty\>>, anche se ogni
  singolo addendo tende a zero. Bisogna sempre tenere d'occhio insieme la
  grandezza dei termini e il loro numero.

  <subsection|Per proseguire: una somma che richiede monotonia>

  C'è anche un caso intermedio. Per <math|h<rsub|n>=<big|sum><rsub|k=n><rsup|2n>1/k>
  le stime più semplici, ottenute sostituendo ogni addendo con il più piccolo
  o con il più grande, danno

  <\equation*>
    <frac|n+1|2n>\<leq\>h<rsub|n>\<leq\><frac|n+1|n>.
  </equation*>

  Gli estremi tendono a <math|1/2> e a 1, che sono diversi, e quindi i
  carabinieri non bastano. Possiamo però guardare come cambia la somma
  passando da <math|n> a <math|n+1>. Perdiamo il primo addendo <math|1/n> e
  ne guadagniamo due in fondo:

  <\equation*>
    h<rsub|n+1>-h<rsub|n>=<frac|1|2n+1>+<frac|1|2n+2>-<frac|1|n>\<leq\>0.
  </equation*>

  La successione è dunque decrescente e limitata inferiormente, e per il
  teorema delle successioni monotone converge, con un limite compreso fra
  <math|1/2> e 1. Per trovarne il valore esatto servirebbe un argomento in
  più, di cui qui non abbiamo bisogno.

  <\verifica|9>
    <strong|1.> Calcola il limite di <math|<sqrt|<binom|3n|n>|n>>. Scrivi
    <math|a<rsub|n>=(3n)!/(n!(2n)!)> e studia <math|a<rsub|n+1>/a<rsub|n>>.
    Nel rapporto lascia scritti soltanto i fattori nuovi: tre al numeratore,
    uno e due al denominatore. Poi usa il legame fra rapporto e radice.

    <strong|2.> Calcola <math|lim<rsub|n\<rightarrow\>+\<infty\>>(<sqrt|n<rsup|2>-7n+2>-n)>.
    Controlla che il radicando sia positivo definitivamente e confronta la
    radice con <math|n>. Che segno ti aspetti per il risultato?
  </verifica>

  <chapter|Limiti di funzioni, continuità e limiti notevoli>

  <\inbreve>
    In una successione l'indice avanza a scatti, un naturale dopo l'altro,
    mentre l'argomento di una funzione può avvicinarsi a un punto passando
    per tutti i reali. Questo capitolo porta l'idea di limite dalle
    successioni alle funzioni, a partire da una funzione con un buco nel suo
    grafico. Da lì arriveremo alla continuità e ai limiti notevoli, una
    piccola raccolta di risultati che renderà rapidi moltissimi calcoli.
  </inbreve>

  <section|Punti di accumulazione e definizione di limite>

  La funzione <math|f(x)=(x<rsup|2>-1)/(x-1)> non è definita in 1, perché lì
  il denominatore si annulla. Eppure per <math|x\<neq\>1> possiamo
  semplificare e scrivere <math|f(x)=x+1>, e allora guardando i valori vicino
  a 1 ci aspettiamo di trovare numeri vicini a 2. Il limite descrive questa
  previsione, e per questo non ha bisogno che la funzione abbia un valore nel
  punto.

  Perché la previsione abbia senso, però, il dominio deve contenere punti
  vicini a <math|x<rsub|0>> quanto vogliamo, diversi da <math|x<rsub|0>>
  stesso. In questo caso diciamo che <math|x<rsub|0>> è un <strong|punto di
  accumulazione> di <math|D>. In formule, per ogni <math|\<delta\>\<gtr\>0>
  deve esistere <math|x\<in\>D> con <math|0\<less\>\|x-x<rsub|0>\|\<leq\>\<delta\>>.

  Prendiamo per esempio <math|D=(0,1]\<cup\>{2}>. Lo zero è di accumulazione
  anche se non appartiene al dominio, perché i punti <math|1/n> gli si
  avvicinano quanto vogliamo. Il numero 2 appartiene al dominio ma è
  <strong|isolato>, perché entro distanza <math|1/2> da lui non ci sono altri
  punti di <math|D>, e quindi non ha senso chiedersi a che cosa tenda la
  funzione avvicinandosi a 2.

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

  La struttura è la stessa delle successioni, con una differenza. Al posto di
  \Sda un certo indice in poi\T troviamo \Sabbastanza vicino a
  <math|x<rsub|0>>\T, e l'intorno che consideriamo è <em|bucato>, cioè
  esclude il centro, come dice la condizione <math|0\<less\>\|x-x<rsub|0>\|>.
  Nell'esempio iniziale, per <math|x\<neq\>1> vale <math|\|f(x)-2\|=\|x-1\|>,
  e quindi, dato <math|\<varepsilon\>\<gtr\>0>, basta prendere
  <math|\<delta\>=\<varepsilon\>>. Anche se decidessimo di assegnare alla
  funzione il valore 100 nel punto 1, il limite resterebbe 2, perché il
  centro non partecipa.

  <figura|<image|assets/epsilon-delta.pdf|117.0mm|65.2mm||>|Scelta una
  striscia orizzontale di larghezza <math|2\<varepsilon\>> attorno a
  <math|\<#2113\>>, cerchiamo una distanza <math|\<delta\>> dal centro che
  trattenga il grafico nella striscia. Il punto centrale non interviene nel
  limite.>

  <subsection|Valori infiniti e avvicinamento da un lato>

  Come per le successioni, i valori possono anche crescere senza limite. La
  funzione <math|1/x<rsup|2>> vicino a zero non si avvicina a nessun numero
  reale, ma supera qualsiasi quota. Per superare una quota <math|M\<gtr\>0>,
  per esempio, basta prendere <math|0\<less\>\|x\|\<leq\>1/<sqrt|M>>. In
  generale, per definire <math|lim<rsub|x\<rightarrow\>x<rsub|0>>f(x)=+\<infty\>>
  sostituiamo la richiesta sui valori con <math|f(x)\<geq\>M>, da soddisfare
  per ogni quota <math|M\<in\>\<bbb-R\>>, e per <math|-\<infty\>> con
  <math|f(x)\<leq\>M>. Ora la distanza <math|\<delta\>\<gtr\> 0> dipende
  dalla quota <math|M>.

  Possiamo anche decidere da che parte avvicinarci al punto. Un
  <strong|limite destro> usa soltanto gli <math|x\<in\>D> con
  <math|x<rsub|0>\<less\>x\<leq\>x<rsub|0>+\<delta\>>, e un <strong|limite
  sinistro> soltanto quelli con <math|x<rsub|0>-\<delta\>\<leq\>x\<less\>x<rsub|0>>.
  In questo caso il punto deve essere di accumulazione dal lato che
  consideriamo. Per <math|f(x)=1/x>, per esempio, i valori tendono a
  <math|+\<infty\>> da destra e a <math|-\<infty\>> da sinistra, e poiché i
  due comportamenti non coincidono il limite bilatero non esiste.

  In generale, quando il dominio si avvicina al punto da entrambi i lati, il
  limite bilatero esiste se e solo se esistono i due limiti laterali e sono
  uguali. Se entrambi esistono e coincidono, infatti, basta prendere il più
  piccolo dei due <math|\<delta\>> per controllare i due lati insieme.

  Non bisogna confondere il lato da cui arriva l'argomento con quello da cui
  arrivano i valori. Per esempio <math|lim<rsub|x\<rightarrow\>0<rsup|->>x<rsup|2>=0<rsup|+>>,
  perché <math|x> arriva da sinistra, ma i suoi quadrati sono positivi. La
  notazione <math|\<#2113\><rsup|+>> chiede che vicino al punto valga
  <math|\<#2113\>\<less\>f(x)\<leq\>\<#2113\>+\<varepsilon\>>, mentre
  <math|\<#2113\><rsup|->> chiede <math|\<#2113\>-\<varepsilon\>\<leq\>f(x)\<less\>\<#2113\>>.

  <subsection|Quando l'argomento va all'infinito>

  Possiamo anche chiederci che cosa succede quando l'argomento cresce senza
  limite. Perché <math|x\<rightarrow\>+\<infty\>> abbia senso il dominio deve
  essere illimitato superiormente, e la vicinanza al punto viene sostituita
  da una condizione del tipo <math|x\<geq\>K>. Per esempio

  <\equation*>
    lim<rsub|x\<rightarrow\>+\<infty\>>f(x)=\<#2113\>\<in\>\<bbb-R\><space|1em>\<Leftrightarrow\><space|1em>\<forall\>\<varepsilon\>\<gtr\>0<space|1em>\<exists\>K\<in\>\<bbb-R\><space|1em>\<forall\>x\<in\>D,<space|1em>x\<geq\>K\<Rightarrow\>\|f(x)-\<#2113\>\|\<leq\>\<varepsilon\>.
  </equation*>

  Per un limite infinito sostituiamo, come sempre, la tolleranza sui valori
  con una quota da superare. Per <math|x\<rightarrow\>-\<infty\>> chiediamo
  un dominio illimitato inferiormente e usiamo condizioni del tipo
  <math|x\<leq\>K>. In tutte queste definizioni gli esiti possibili sono gli
  stessi quattro: un limite reale, <math|+\<infty\>>, <math|-\<infty\>>,
  oppure nessun limite.

  Il cambio di variabile <math|y=-x> trasforma un argomento che tende a
  <math|-\<infty\>> in uno che tende a <math|+\<infty\>>. Per esempio
  <math|<sqrt|x<rsup|2>+7x+2>+x> diventa <math|<sqrt|y<rsup|2>-7y+2>-y>, cioè
  lo stesso calcolo dell'esercizio 9.2, ora con una variabile reale. Se
  preferiamo razionalizzare direttamente, dobbiamo ricordare che per
  <math|x\<less\>0> vale <math|<sqrt|x<rsup|2>>=\|x\|=-x>, e il risultato è
  ancora <math|-7/2>.

  <section|Continuità e composizione>

  Il limite fa una previsione a partire dai valori vicini. La
  <strong|continuità> chiede che questa previsione coincida con il valore
  effettivo della funzione nel punto, e quindi questa volta il punto deve
  appartenere al dominio.

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

  I teoremi sulle successioni passano alle funzioni quasi senza modifiche.
  Confronto, carabinieri e algebra dei limiti valgono anche qui, e nelle
  dimostrazioni basta sostituire \Soltre un certo indice\T con \Sabbastanza
  vicino al punto\T, oppure con \Sabbastanza avanti sulla semiretta\T. In
  particolare somme e prodotti di funzioni continue sono continui, e i
  quozienti lo sono dove il denominatore non si annulla.

  <subsection|La composta: chiedere la precisione nel giusto ordine>

  Anche la <strong|composta di funzioni continue> è continua, ma qui il
  ragionamento ha una piccola sottigliezza, che conviene vedere prima su un
  esempio. Prendiamo <math|f(x)=x+1> e <math|g(y)=y<rsup|2>>, e guardiamo la
  composta vicino a <math|x=0>. La prima funzione porta <math|x> vicino a 1,
  e la seconda deve portare quel valore vicino a <math|1<rsup|2>=1>.

  Da dove cominciamo? La precisione richiesta riguarda l'uscita finale,
  quindi dobbiamo prima capire quanto <math|y> deve essere vicino a 1 perché
  <math|y<rsup|2>> rispetti quella precisione. Solo dopo chiediamo a <math|f>
  di portare <math|x> abbastanza vicino. Le scelte vanno fatte a ritroso,
  dall'uscita verso l'entrata.

  Facciamo una richiesta concreta, <math|\|y<rsup|2>-1\|\<leq\>1/10>. Se
  intanto ci limitiamo a <math|\|y-1\|\<leq\>1>, cioè a
  <math|0\<leq\>y\<leq\>2>, abbiamo <math|\|y+1\|\<leq\>3>, e la
  fattorizzazione dà

  <\equation*>
    \|y<rsup|2>-1\|=\|y-1\|\|y+1\|\<leq\>3\|y-1\|.
  </equation*>

  Basta quindi chiedere <math|\|y-1\|\<leq\>1/30>. Con <math|y=f(x)=x+1>
  questa precisione si ottiene per <math|\|x\|\<leq\>1/30>, e siamo così
  risaliti dalla precisione finale alla distanza iniziale.

  Il caso generale segue lo stesso schema. Supponiamo <math|f> continua in
  <math|x<rsub|0>> e <math|g> continua in <math|y<rsub|0>=f(x<rsub|0>)>, con
  i valori di <math|f> nel dominio di <math|g>. Dato
  <math|\<varepsilon\>\<gtr\>0>, la continuità della funzione esterna ci dà
  una distanza <math|\<eta\>\<gtr\>0> tale che

  <\equation*>
    \|y-y<rsub|0>\|\<leq\>\<eta\>\<Rightarrow\>\|g(y)-g(y<rsub|0>)\|\<leq\>\<varepsilon\>.
  </equation*>

  Ora usiamo la continuità di <math|f>, chiedendole la precisione
  <math|\<eta\>>, e otteniamo <math|\<delta\>\<gtr\>0> tale che

  <\equation*>
    \|x-x<rsub|0>\|\<leq\>\<delta\>\<Rightarrow\>\|f(x)-y<rsub|0>\|\<leq\>\<eta\>.
  </equation*>

  Mettendo <math|y=f(x)> nella prima implicazione otteniamo
  <math|\|g(f(x))-g(f(x<rsub|0>))\|\<leq\>\<varepsilon\>>, come volevamo.

  <subsection|Perché l'esponenziale è continuo>

  Nel capitolo 5 abbiamo assunto alcune proprietà delle potenze, e ora
  possiamo dimostrare che l'esponenziale è continuo senza usare derivate. Sia
  <math|a\<gtr\>1>. Sappiamo già che <math|a<rsup|1/n>\<rightarrow\>1>, e il
  trucco è sfruttare questo fatto per gli esponenti piccoli.

  Se <math|0\<leq\>h\<leq\>1/n>, la monotonia dà
  <math|0\<leq\>a<rsup|h>-1\<leq\>a<rsup|1/n>-1>. Se invece
  <math|-1/n\<leq\>h\<leq\>0>, poniamo <math|t=-h> e osserviamo che

  <\equation*>
    0\<leq\>1-a<rsup|h>=1-a<rsup|-t>=<frac|a<rsup|t>-1|a<rsup|t>>\<leq\>a<rsup|1/n>-1,
  </equation*>

  perché <math|a<rsup|t>\<geq\>1>. In entrambi i casi
  <math|\|a<rsup|h>-1\|\<leq\>a<rsup|1/n>-1>. Fissati un punto
  <math|x<rsub|0>> e una tolleranza <math|\<varepsilon\>\<gtr\>0>, scegliamo
  <math|n> abbastanza grande da rendere quest'ultima quantità al massimo
  <math|\<varepsilon\>/a<rsup|x<rsub|0>>>. Con <math|\<delta\>=1/n> otteniamo

  <\equation*>
    \|a<rsup|x<rsub|0>+h>-a<rsup|x<rsub|0>>\|=a<rsup|x<rsub|0>>\|a<rsup|h>-1\|\<leq\>\<varepsilon\>.
  </equation*>

  Per <math|0\<less\>a\<less\>1> basta scrivere
  <math|a<rsup|x>=1/(1/a)<rsup|x>>, e per <math|a=1> la funzione è costante.

  <subsection|La continuità dell'inversa: il caso del logaritmo>

  Anche l'inversa di una funzione continua e strettamente monotona fra due
  intervalli è continua. L'idea è racchiudere l'argomento dell'inversa fra
  due valori della funzione di partenza, e la vediamo nel caso del logaritmo.
  Fissiamo <math|x<rsub|0>\<gtr\>0>, poniamo <math|y<rsub|0>=log x<rsub|0>> e
  prendiamo <math|\<varepsilon\>\<gtr\>0>. Poiché l'esponenziale è crescente,

  <\equation*>
    e<rsup|y<rsub|0>-\<varepsilon\>>\<less\>x<rsub|0>\<less\>e<rsup|y<rsub|0>+\<varepsilon\>>.
  </equation*>

  Scegliamo <math|\<delta\>\<gtr\>0> più piccolo delle distanze di
  <math|x<rsub|0>> dai due estremi. Se <math|\|x-x<rsub|0>\|\<leq\>\<delta\>>,
  il punto <math|x> resta fra <math|e<rsup|y<rsub|0>-\<varepsilon\>>> ed
  <math|e<rsup|y<rsub|0>+\<varepsilon\>>>, e poiché il logaritmo è crescente
  <math|y<rsub|0>-\<varepsilon\>\<less\>log
  x\<less\>y<rsub|0>+\<varepsilon\>>. Il logaritmo è quindi continuo su tutto
  <math|(0,+\<infty\>)>.

  <section|Il limite del seno e i limiti notevoli trigonometrici>

  Vicino a zero il seno di un angolo e l'angolo stesso sono quasi uguali,
  purché l'angolo sia misurato in radianti. È proprio questa unità di misura
  a far coincidere, sulla circonferenza unitaria, l'angolo con la lunghezza
  dell'arco. Il confronto preciso, per <math|0\<less\>x\<less\>\<pi\>/2>,
  viene dalla geometria:

  <\equation*>
    sin x\<leq\>x\<leq\>tan x.
  </equation*>

  La prima disuguaglianza confronta una corda con un arco. La corda che
  unisce i punti di angolo <math|-x> e <math|x> è lunga <math|2 sin x>, e
  l'arco fra gli stessi punti è lungo <math|2x>. Per la seconda confrontiamo
  due aree. Il settore circolare fra gli angoli zero e <math|x> ha area
  <math|x/2> ed è contenuto nel triangolo formato dal raggio orizzontale e
  dalla retta tangente alla circonferenza in <math|(1,0)>, che ha area
  <math|tan x/2>.

  <figura|<image|assets/seno-x-tan.pdf|139.5mm|63.0mm||>|La corda e l'arco
  danno <math|sin x\<leq\>x>. Il settore e il triangolo esterno danno
  <math|x\<leq\>tan x>. Sono confronti geometrici, precedenti alle derivate.>

  Prima di usare questi confronti con i carabinieri ci serve sapere che
  <math|cos x\<rightarrow\>1>. Dalla prima disuguaglianza e dal fatto che il
  seno è dispari ricaviamo <math|\|sin h\|\<leq\>\|h\|> vicino a zero, quindi
  <math|sin h\<rightarrow\>0>. L'identità <math|1-cos h=2 sin<rsup|2>(h/2)>
  dà allora <math|0\<leq\>1-cos h\<leq\>h<rsup|2>/2>, che tende a zero. Con
  le formule di addizione questi due fatti diventano la continuità di seno e
  coseno in qualsiasi punto. Per esempio

  <\equation*>
    sin(a+h)-sin a=sin a(cos h-1)+cos a sin h\<rightarrow\>0.
  </equation*>

  Lo stesso argomento usato per il logaritmo, che racchiude l'argomento fra
  due valori della funzione, mostra poi che anche le inverse trigonometriche
  sono continue sui loro intervalli, usando un solo lato agli estremi del
  dominio.

  Torniamo al confronto geometrico. Dividendo per <math|x\<gtr\>0> e
  ricordando che <math|tan x=sin x/cos x>, otteniamo

  <\equation*>
    cos x\<leq\><frac|sin x|x>\<leq\>1.
  </equation*>

  Il coseno tende a 1, quindi i carabinieri danno il limite destro 1. Poiché
  il quoziente è una funzione pari, lo stesso vale a sinistra.

  <\concetto|Limite fondamentale del seno>
    Con gli angoli in radianti,

    <\equation*>
      lim<rsub|x\<rightarrow\>0><frac|sin x|x>=1.
    </equation*>

    Il seno e il suo argomento hanno lo stesso comportamento al primo ordine
    vicino a zero. Non abbiamo usato né derivate né de L'Hôpital.
  </concetto>

  <subsection|Dal seno al coseno, alla tangente e alle inverse>

  Da questo limite discendono tutti gli altri limiti trigonometrici. Per il
  coseno usiamo l'identità <math|(1-cos x)(1+cos x)=sin<rsup|2>x>, che
  permette di far comparire il seno:

  <\equation*>
    <frac|1-cos x|x<rsup|2>>=<around*|(|<frac|sin
    x|x>|)><rsup|2><frac|1|1+cos x>\<rightarrow\><frac|1|2>.
  </equation*>

  Per la tangente basta scrivere <math|tan x/x=(sin x/x)/cos x>, che tende a
  1. Per le inverse conviene cambiare variabile. Se poniamo <math|y=arcsin
  x>, allora <math|x=sin y>, e per la continuità dell'inversa
  <math|y\<rightarrow\>0> quando <math|x\<rightarrow\>0>. Il quoziente
  <math|arcsin x/x> diventa così <math|y/sin y>, che tende a 1. Allo stesso
  modo, con <math|y=arctan x>, il quoziente diventa <math|y/tan
  y\<rightarrow\>1>. Riassumendo,

  <\equation*>
    <frac|tan x|x>\<rightarrow\>1,<space|1em><frac|arcsin
    x|x>\<rightarrow\>1,<space|1em><frac|arctan
    x|x>\<rightarrow\>1<space|1em>(x\<rightarrow\>0).
  </equation*>

  <section|Dal numero e ai limiti di logaritmo ed esponenziale>

  Sappiamo che <math|(1+1/n)<rsup|n>\<rightarrow\>e> quando <math|n> percorre
  gli interi. Viene la tentazione di scrivere subito lo stesso limite con una
  variabile reale <math|x>, ma non è lecito senza un argomento, perché
  dobbiamo controllare anche i punti che stanno fra due interi consecutivi.

  <subsection|Fra due interi consecutivi>

  Guardiamo prima che cosa succede per <math|3\<leq\>x\<less\>4>. La base
  <math|1+1/x> sta fra <math|1+1/4> e <math|1+1/3>, e l'esponente sta fra 3 e
  4. Poiché le basi sono maggiori di 1, diminuire sia la base sia l'esponente
  rende la potenza più piccola, e aumentarli entrambi la rende più grande:

  <\equation*>
    <around*|(|1+<frac|1|4>|)><rsup|3>\<leq\><around*|(|1+<frac|1|x>|)><rsup|x>\<leq\><around*|(|1+<frac|1|3>|)><rsup|4>.
  </equation*>

  Lo stesso confronto, per <math|x\<in\>[n,n+1)> con <math|n\<geq\>1>, dà

  <\equation*>
    <around*|(|1+<frac|1|n+1>|)><rsup|n>\<leq\><around*|(|1+<frac|1|x>|)><rsup|x>\<leq\><around*|(|1+<frac|1|n>|)><rsup|n+1>.
  </equation*>

  Entrambi gli estremi tendono a <math|e>. Quello destro è
  <math|e<rsub|n>(1+1/n)>, e quello sinistro è
  <math|e<rsub|n+1>/(1+1/(n+1))>.

  Gli estremi però sono costanti su ciascun intervallo <math|[n,n+1)>, come i
  gradini di una scala, e ci serve un modo per passare dalle successioni alle
  funzioni. Se una funzione vale <math|b<rsub|n>> su ciascun intervallo
  <math|[n,n+1)> e <math|b<rsub|n>\<rightarrow\>e>, allora la funzione tende
  a <math|e> per <math|x\<rightarrow\>+\<infty\>>. Dato
  <math|\<varepsilon\>\<gtr\>0>, infatti, tutti i gradini da un certo intero
  in poi rispettano la tolleranza. Lo chiamiamo <strong|lemma dei gradini>.
  Applicandolo ai due estremi e usando i carabinieri otteniamo

  <\equation*>
    lim<rsub|x\<rightarrow\>+\<infty\>><around*|(|1+<frac|1|x>|)><rsup|x>=e.
  </equation*>

  <figura|<image|assets/gradini.pdf|126.0mm|58.5mm||>|I due confronti sono
  costanti su ciascun intervallo unitario. Entrambi tendono a <math|e> e
  controllano la funzione anche fra un intero e il successivo.>

  <subsection|L'altro infinito e il passaggio al logaritmo>

  Per <math|x\<rightarrow\>-\<infty\>> poniamo <math|y=-x>, che tende a
  <math|+\<infty\>>. Per <math|y\<gtr\>1> un po' di algebra riporta al caso
  precedente:

  <\equation*>
    <around*|(|1-<frac|1|y>|)><rsup|-y>=<around*|(|1+<frac|1|y-1>|)><rsup|y-1><around*|(|1+<frac|1|y-1>|)>\<rightarrow\>e.
  </equation*>

  Con il cambio <math|t=1/x> i due lati si riuniscono in un unico limite,
  <math|(1+t)<rsup|1/t>\<rightarrow\>e> per <math|t\<rightarrow\>0>. Vicino a
  zero la base è positiva, e possiamo applicare il logaritmo, che sappiamo
  essere continuo in <math|e>:

  <\equation*>
    <frac|log(1+t)|t>=log((1+t)<rsup|1/t>)\<rightarrow\>log e=1.
  </equation*>

  Per l'esponenziale cambiamo ancora variabile, ponendo <math|t=e<rsup|u>-1>.
  Quando <math|u\<rightarrow\>0> anche <math|t\<rightarrow\>0>, e per
  <math|u\<neq\>0> vale <math|t\<neq\>0>. Il rapporto appena studiato diventa
  <math|u/(e<rsup|u>-1)>, che quindi tende a 1, e passando al reciproco
  otteniamo il limite dell'esponenziale.

  <\concetto|Limiti notevoli di logaritmo ed esponenziale>
    Per <math|x\<rightarrow\>0>,

    <\equation*>
      <frac|log(1+x)|x>\<rightarrow\>1,<space|2em><frac|e<rsup|x>-1|x>\<rightarrow\>1.
    </equation*>

    Per ogni base <math|a\<gtr\>0> vale inoltre
    <math|(a<rsup|x>-1)/x\<rightarrow\>log a>.
  </concetto>

  L'ultima formula si ottiene scrivendo <math|a<rsup|x>=e<rsup|x log a>> e
  moltiplicando il limite dell'esponenziale per <math|log a>. Il caso
  <math|a=1> va trattato a parte, per non dividere per <math|log a=0>, ma è
  banale, perché il quoziente è sempre nullo.

  <subsection|Un'applicazione: potenze e logaritmi vicino a zero>

  Il lemma dei gradini permette anche di portare la gerarchia degli infiniti
  alla variabile reale. Su <math|[n,n+1)> vale per esempio
  <math|3<rsup|x>/x<rsup|m>\<geq\>3<rsup|n>/(n+1)<rsup|m>>, che tende a
  <math|+\<infty\>> per ogni intero <math|m\<geq\>1>, e per un esponente
  reale positivo basta maggiorarlo con un intero.

  Questo risultato dice qualcosa anche vicino a zero. Ponendo <math|z=-log
  x>, che tende a <math|+\<infty\>> quando <math|x\<rightarrow\>0<rsup|+>>,
  otteniamo

  <\equation*>
    x log x=-<frac|z|e<rsup|z>>\<rightarrow\>0<space|1em>(x\<rightarrow\>0<rsup|+>).
  </equation*>

  Più in generale <math|x<rsup|a>\|log x\|<rsup|b>\<rightarrow\>0> per
  <math|a,b\<gtr\>0>, perché lo stesso cambio produce
  <math|z<rsup|b>/e<rsup|a*z>>, e l'esponenziale vince sulla potenza.

  <section|Usare un limite notevole: argomento, dominio e scala>

  Per usare bene un limite notevole bisogna riconoscerlo con esattamente lo
  stesso argomento. Calcoliamo <math|lim<rsub|x\<rightarrow\>0>(e<rsup|3x>-1)/sin
  x>. Nell'esponenziale l'argomento è <math|3x>, quindi vogliamo che anche al
  denominatore compaia <math|3x>, e lo facciamo comparire moltiplicando e
  dividendo:

  <\equation*>
    <frac|e<rsup|3x>-1|sin x>=<frac|e<rsup|3x>-1|3x>\<cdot\>3\<cdot\><frac|x|sin
    x>\<rightarrow\>1\<cdot\>3\<cdot\>1=3.
  </equation*>

  Tutti i denominatori sono diversi da zero in un intorno bucato abbastanza
  piccolo di 0. Il primo fattore tende a 1 grazie al cambio
  <math|u=3x\<rightarrow\>0>, e il terzo è il reciproco del limite del seno.

  Ogni cambio di variabile richiede di controllare dove va a finire il nuovo
  argomento. In <math|sin(cos x)/cos x>, per <math|x\<rightarrow\>0>,
  l'argomento <math|cos x> tende a 1 e non a 0, quindi il limite notevole del
  seno non c'entra. Basta invece la continuità nel punto 1, e il limite vale
  <math|sin 1>.

  <subsection|Quando si possono comporre due limiti?>

  Dietro questi passaggi c'è una regola precisa. Se
  <math|u(x)\<rightarrow\>a> e <math|g(y)\<rightarrow\>L> per
  <math|y\<rightarrow\>a>, possiamo concludere che
  <math|g(u(x))\<rightarrow\>L> purché <math|u(x)> stia nel dominio di
  <math|g> e resti diverso da <math|a> vicino al punto. Se invece <math|u(x)>
  può essere uguale ad <math|a>, serve che <math|g> sia definita e continua
  in <math|a>. Il motivo è che il limite di <math|g> guarda soltanto un
  intorno bucato, e quindi non dice nulla sul valore <math|g(a)>.

  <subsection|Il logaritmo del coseno e una potenza variabile>

  Il prossimo esempio mostra che il coseno, vicino a zero, si allontana da 1
  come <math|x<rsup|2>>. Facciamo comparire i due limiti notevoli che
  conosciamo:

  <\equation*>
    <frac|log(cos x)|x<rsup|2>>=<frac|log(1+(cos x-1))|cos
    x-1>\<cdot\><frac|cos x-1|x<rsup|2>>\<rightarrow\>1\<cdot\><around*|(|-<frac|1|2>|)>=-<frac|1|2>.
  </equation*>

  Tutti i passaggi sono leciti. Vicino a zero <math|cos x\<gtr\>0>, quindi il
  logaritmo è definito, e per <math|0\<less\>\|x\|\<less\>2\<pi\>> vale
  <math|cos x\<neq\>1>, quindi possiamo dividere per <math|cos x-1>. Il segno
  meno viene da <math|cos x-1>, che è negativo, mentre il limite di
  <math|(1-cos x)/x<rsup|2>> è positivo.

  Lo stesso calcolo risolve una <strong|potenza con base ed esponente
  variabili>, come <math|(cos x)<rsup|1/sin<rsup|2>x>>. In questi casi
  conviene scrivere <math|A<rsup|B>=exp(B log A)>, che vale per
  <math|A\<gtr\>0>, e studiare l'esponente:

  <\equation*>
    <frac|log(cos x)|sin<rsup|2>x>=<frac|log(cos
    x)|x<rsup|2>>\<cdot\><around*|(|<frac|x|sin
    x>|)><rsup|2>\<rightarrow\>-<frac|1|2>.
  </equation*>

  Per la continuità dell'esponenziale concludiamo che <math|(cos
  x)<rsup|1/sin<rsup|2>x>\<rightarrow\>e<rsup|-1/2>>. L'espressione è
  definita vicino a zero, perché lì <math|cos x\<gtr\>0> e <math|sin
  x\<neq\>0> per <math|x\<neq\>0>.

  <section|Sottosuccessioni e limiti che non esistono>

  Per dimostrare che un limite esiste abbiamo molti strumenti, ma come si
  dimostra che non esiste? L'idea è guardare la successione solo lungo una
  parte dei suoi indici. Una <strong|sottosuccessione> si ottiene scegliendo
  indici naturali strettamente crescenti <math|n<rsub|k>> e considerando i
  termini <math|a<rsub|n<rsub|k>>>, nell'ordine originale. Prendere solo gli
  indici pari, solo i dispari o solo i quadrati sono tre esempi. Per
  induzione si vede che <math|n<rsub|k>\<geq\>k>, quindi gli indici scelti
  tendono a <math|+\<infty\>>.

  Se <math|a<rsub|n>\<rightarrow\>\<#2113\>>, finito o infinito, ogni
  sottosuccessione tende allo stesso <math|\<#2113\>>. Ogni controllo valido
  per <math|n\<geq\>N>, infatti, vale anche per <math|a<rsub|n<rsub|k>>>
  quando <math|k\<geq\>N>. Il ragionamento funziona anche se chiediamo
  soltanto che <math|n<rsub|k>\<rightarrow\>+\<infty\>>, senza pretendere che
  gli indici siano crescenti.

  <figura|<image|assets/sottosucc.pdf|126.0mm|33.8mm||>|Selezionando gli
  indici pari di <math|(-1)<rsup|n>> isoliamo i termini uguali a 1. La
  sottosuccessione dispari isola invece <math|-1>.>

  Basta quindi trovare due sottosuccessioni con limiti diversi per concludere
  che la successione non ha limite. Per esempio
  <math|n<rsup|3>+(-1)<rsup|n>n<rsup|5>> tende a <math|+\<infty\>> lungo i
  pari e a <math|-\<infty\>> lungo i dispari. Però non basta vedere un segno
  alterno nella formula. In <math|n<rsup|5>+(-1)<rsup|n>n<rsup|3>=n<rsup|5>(1+(-1)<rsup|n>/n<rsup|2>)>
  la parte alterna è una correzione che tende a zero, e la successione tende
  a <math|+\<infty\>>.

  <subsection|Da un limite di funzione a una successione di valori>

  Lo stesso principio collega funzioni e successioni. Se
  <math|f(x)\<rightarrow\>\<#2113\>> per <math|x\<rightarrow\>x<rsub|0>> e
  <math|x<rsub|n>\<rightarrow\>x<rsub|0>>, con <math|x<rsub|n>\<in\>D> e
  <math|x<rsub|n>\<neq\>x<rsub|0>> definitivamente, allora
  <math|f(x<rsub|n>)\<rightarrow\>\<#2113\>>. In altre parole, il limite vale
  anche lungo ogni successione di argomenti ammessi che si avvicina al punto.
  Nel caso finito, dato <math|\<varepsilon\>\<gtr\>0>, il limite della
  funzione ci dà un <math|\<delta\>>, e la convergenza di <math|x<rsub|n>>
  porta definitivamente gli argomenti nell'intorno bucato di raggio
  <math|\<delta\>>, dove i valori rispettano la tolleranza. Se il punto o i
  valori sono infiniti si usano le soglie corrispondenti, e per un limite
  laterale bisogna arrivare dal lato giusto.

  Possiamo quindi <strong|dimostrare la non esistenza di un limite di
  funzione> trovando due successioni ammesse che arrivano allo stesso punto
  ma producono limiti diversi. Per <math|sin x> a <math|+\<infty\>>, per
  esempio, lungo gli argomenti <math|2\<pi\>n> il seno vale sempre zero,
  mentre lungo <math|\<pi\>/2+2\<pi\>n> vale sempre 1.

  Per <math|cos(1/x<rsup|2>)> a <math|0<rsup|+>> scegliamo invece gli
  argomenti che rendono <math|1/x<rsup|2>> uguale a <math|2\<pi\>n> o a
  <math|2\<pi\>n+\<pi\>/2>, cioè

  <\equation*>
    x<rsub|n>=<frac|1|<sqrt|2\<pi\>n>>,<space|2em>y<rsub|n>=<frac|1|<sqrt|2\<pi\>n+\<pi\>/2>><space|1em>(n\<geq\>1).
  </equation*>

  Entrambe le successioni tendono a <math|0<rsup|+>>, ma lungo la prima il
  coseno vale 1 e lungo la seconda vale zero, quindi il limite non esiste. Se
  però moltiplichiamo la stessa funzione per <math|x>, otteniamo <math|\|x
  cos(1/x<rsup|2>)\|\<leq\>\|x\|\<rightarrow\>0>. Un'oscillazione limitata
  viene spenta da un fattore che tende a zero.

  <subsection|Un parametro nell'esponente>

  Il passaggio dalle funzioni alle successioni permette anche di usare i
  limiti notevoli lungo <math|x=1/n>. Per esempio <math|n
  sin(1/n)\<rightarrow\>1>. Vediamo un caso con un parametro reale
  <math|\<alpha\>>, riscrivendo la potenza come esponenziale:

  <\equation*>
    <around*|(|1+<frac|1|n>|)><rsup|n<rsup|\<alpha\>>>=exp<around*|(|n<rsup|\<alpha\>-1><frac|log(1+1/n)|1/n>|)>.
  </equation*>

  Il rapporto con il logaritmo tende a 1, quindi tutto dipende da
  <math|n<rsup|\<alpha\>-1>>. L'esponente tende a zero se
  <math|\<alpha\>\<less\>1>, a 1 se <math|\<alpha\>=1> e a <math|+\<infty\>>
  se <math|\<alpha\>\<gtr\>1>, e di conseguenza la potenza tende
  rispettivamente a 1, a <math|e> e a <math|+\<infty\>>.

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
    Sappiamo che <math|sin x/x> tende a 1 vicino a zero, e quindi viene
    voglia di sostituire il seno con <math|x> dentro i calcoli. A volte la
    sostituzione funziona benissimo, altre volte produce risultati sbagliati,
    e per capire la differenza dobbiamo sapere quanto è grande l'errore che
    commettiamo. I simboli di Landau servono proprio a questo, perché
    permettono di scrivere un errore senza conoscerlo esattamente, dicendo
    soltanto quanto è piccolo.
  </inbreve>

  <section|O piccolo: misurare un errore rispetto a una scala>

  Confrontiamo <math|x+x<rsup|2>> con <math|x> vicino a zero. La differenza è
  <math|x<rsup|2>>, e dividendola per <math|x> otteniamo <math|x>, che tende
  a zero. L'errore che commettiamo sostituendo <math|x+x<rsup|2>> con
  <math|x> è quindi piccolo anche in confronto alla quantità con cui stiamo
  lavorando, e lo scriviamo così:

  <\equation*>
    x+x<rsup|2>=x+o(x)<space|2em>(x\<rightarrow\>0).
  </equation*>

  La lettera <math|o> si legge \So piccolo\T. La scrittura non ci dice quanto
  vale l'errore, ci dice solo una sua proprietà, cioè che diventa
  trascurabile rispetto a <math|x>. In questo esempio l'errore è esattamente
  <math|x<rsup|2>>, ma anche <math|x<rsup|3>> o <math|x sin x> avrebbero la
  stessa proprietà, e tutti verrebbero indicati con <math|o(x)>.

  <\concetto|O piccolo>
    Fissato un limite <math|x\<rightarrow\>x<rsub|0>>, scriviamo
    <math|f=o(g)> se, vicino al punto considerato, possiamo scrivere
    <math|f(x)=g(x)\<omega\>(x)> con <math|\<omega\>(x)\<rightarrow\>0>. Se
    <math|g(x)\<neq\>0> nell'intorno bucato, ciò equivale a
    <math|f(x)/g(x)\<rightarrow\>0>.
  </concetto>

  Il punto <math|x<rsub|0>> può essere finito o infinito, e può anche essere
  raggiunto da un solo lato, ma va sempre dichiarato, perché cambiando punto
  cambia tutto. Per <math|x\<rightarrow\>0> vale <math|x<rsup|2>=o(x)>,
  mentre per <math|x\<rightarrow\>+\<infty\>> vale il contrario,
  <math|x=o(x<rsup|2>)>. Lo stesso rapporto che vicino a zero è piccolo
  diventa grande all'infinito.

  Vicino a zero le potenze si ordinano in modo semplice. Per esponenti
  interi, <math|x<rsup|a>=o(x<rsup|b>)> esattamente quando <math|a\<gtr\>b>,
  perché il rapporto è <math|x<rsup|a-b>>. Per esponenti reali non interi
  conviene limitarsi a <math|x\<rightarrow\>0<rsup|+>>, dove le potenze sono
  definite. Notiamo anche che l'o piccolo non richiede che le funzioni
  tendano a zero. Per esempio <math|1/x<rsup|2>=o(1/x<rsup|3>)> per
  <math|x\<rightarrow\>0>, anche se entrambe esplodono.

  <figura|<image|assets/potenze-zero.pdf|105.0mm|62.5mm||>|Per
  <math|0\<less\>x\<less\>1>, le potenze più alte sono più piccole. Il
  rapporto distingue la scala: <math|x<rsup|3>/x<rsup|2>=x\<rightarrow\>0>.>

  Scrivere <math|f=g+o(g)> significa quindi che la differenza <math|f-g> è
  trascurabile rispetto a <math|g>. Non significa che <math|f> e <math|g>
  siano uguali, perché il resto è una funzione vera, in generale diversa da
  zero, e come vedremo a volte è proprio lei a decidere il risultato.

  <section|Equivalenza asintotica e O grande>

  Quando due quantità hanno lo stesso comportamento relativo, il loro
  rapporto tende a 1. In questo caso scriviamo <math|f\<sim\>g> e parliamo di
  <strong|equivalenza asintotica>. Per esempio <math|sin x\<sim\>x> per
  <math|x\<rightarrow\>0>. Come per l'o piccolo, la definizione generale usa
  una fattorizzazione, <math|f=g\<omega\>> con
  <math|\<omega\>\<rightarrow\>1>, e quando <math|g> non si annulla vicino al
  punto le tre scritture seguenti dicono la stessa cosa:

  <\equation*>
    f\<sim\>g<space|1em>\<Leftrightarrow\><space|1em><frac|f|g>\<rightarrow\>1<space|1em>\<Leftrightarrow\><space|1em>f=g+o(g).
  </equation*>

  Il simbolo <math|f=O(g)>, che si legge \SO grande\T, è meno esigente.
  Chiede soltanto che <math|f=g\<omega\>> con <math|\<omega\>> limitata
  vicino al punto, e se <math|g\<neq\>0> questo significa che esiste
  <math|C\<gtr\>0> con <math|\|f(x)\|\<leq\>C\|g(x)\|>. Per esempio <math|x
  sin(1/x)=O(x)> per <math|x\<rightarrow\>0>, perché il rapporto con <math|x>
  sta fra <math|-1> e 1, ma non è <math|o(x)>, perché quel rapporto continua
  a oscillare senza tendere a zero. Ogni o piccolo è anche un O grande, ma
  non viceversa.

  Le equivalenze si comportano bene con prodotti e quozienti. Se
  <math|f\<sim\>g> e <math|u\<sim\>v>, allora <math|f*u\<sim\>g*v>, perché
  <math|(f*u)/(g*v)=(f/g)(u/v)\<rightarrow\>1>, e lo stesso ragionamento
  funziona per i quozienti, dove hanno senso.

  Con le differenze, invece, bisogna fare molta attenzione. Le due quantità
  <math|x+x<rsup|2>> e <math|x> sono entrambe equivalenti a <math|x>, ma la
  loro differenza esatta è

  <\equation*>
    (x+x<rsup|2>)-x=x<rsup|2>.
  </equation*>

  Se prima sostituissimo entrambe con <math|x>, la differenza diventerebbe
  zero. L'equivalenza ha buttato via il termine che, dopo la sottrazione,
  diventa l'unico rimasto. Per ritrovarlo dobbiamo conoscere l'errore a una
  scala più piccola, ed è il lavoro che faremo con gli sviluppi.

  <section|Calcolare con i resti e comporre>

  Per usare i resti nei calcoli ci servono alcune regole, e tutte seguono
  dalla definizione con la fattorizzazione. Basta seguire il fattore che
  tende a zero. Se <math|r<rsub|1>=g\<omega\><rsub|1>> e
  <math|r<rsub|2>=g\<omega\><rsub|2>>, con
  <math|\<omega\><rsub|1>,\<omega\><rsub|2>\<rightarrow\>0>, allora

  <\equation*>
    r<rsub|1>+r<rsub|2>=g(\<omega\><rsub|1>+\<omega\><rsub|2>)=o(g),
  </equation*>

  e la stessa prova funziona per la differenza e per la moltiplicazione per
  una costante. Per un prodotto troviamo <math|r<rsub|1>r<rsub|2>=g<rsup|2>\<omega\><rsub|1>\<omega\><rsub|2>=o(g<rsup|2>)>,
  e quindi, per esempio, <math|o(x)\<cdot\>o(x)=o(x<rsup|2>)>. Moltiplicare
  un resto per una potenza cambia la scala nel modo prevedibile,
  <math|x<rsup|k>o(x<rsup|m>)=o(x<rsup|m+k>)>. Anche la transitività è
  immediata, perché se <math|f=g\<omega\><rsub|1>> e
  <math|g=h\<omega\><rsub|2>>, allora <math|f=h\<omega\><rsub|2>\<omega\><rsub|1>=o(h)>.

  C'è però un'abitudine di scrittura da tenere presente. Due simboli
  <math|o(x)> nella stessa riga possono indicare resti diversi. La scrittura
  <math|o(x)-o(x)=o(x)> non dice che due resti uguali si cancellano, ma che
  la differenza fra due resti di questo tipo è ancora un resto dello stesso
  tipo. Per lo stesso motivo non c'è nessuna regola generale per
  <math|o(x)/o(x)>. Per esempio <math|x<rsup|2>/x<rsup|3>> diverge, mentre il
  suo reciproco tende a zero.

  <subsection|Sostituire l'argomento in un resto>

  Nelle composizioni dobbiamo controllare dove va a finire l'argomento. Sia
  <math|m\<geq\>1> un intero e sia <math|r(t)=t<rsup|m>\<omega\>(t)>, con
  <math|\<omega\>(t)\<rightarrow\>0> per <math|t\<rightarrow\>0>. Se
  sostituiamo <math|t=x<rsup|3>> troviamo

  <\equation*>
    r(x<rsup|3>)=x<rsup|3m>\<omega\>(x<rsup|3>)=o(x<rsup|3m>),
  </equation*>

  perché anche <math|x<rsup|3>> tende a zero. Più in generale possiamo
  sostituire un argomento <math|u(x)\<rightarrow\>0> che sia <math|O(x)>. Per
  <math|x\<neq\>0>

  <\equation*>
    <frac|r(u(x))|x<rsup|m>>=<around*|(|<frac|u(x)|x>|)><rsup|m>\<omega\>(u(x)),
  </equation*>

  dove il primo fattore è limitato e il secondo tende a zero, quindi
  <math|r(u(x))=o(x<rsup|m>)>. C'è un dettaglio a cui badare, perché
  <math|u(x)> potrebbe annullarsi anche per <math|x\<neq\>0>. Per non dover
  dividere per l'argomento interno prolunghiamo il resto con il valore zero
  in <math|t=0> e poniamo <math|\<omega\>(0)=0>. Così l'identità vale anche
  quando <math|u(x)=0>. Questa precisazione ci servirà negli sviluppi delle
  funzioni composte.

  <section|Dai limiti notevoli ai primi sviluppi>

  Con questo linguaggio i limiti notevoli diventano formule da usare nei
  calcoli. Dire che <math|sin x/x\<rightarrow\>1> equivale a dire che
  <math|(sin x-x)/x\<rightarrow\>0>, cioè che <math|sin x=x+o(x)>. Allo
  stesso modo i limiti dell'esponenziale e del logaritmo diventano

  <\equation*>
    e<rsup|x>=1+x+o(x),<space|2em>log(1+x)=x+o(x).
  </equation*>

  Per il coseno sappiamo già qualcosa di più preciso, perché <math|(1-cos
  x)/x<rsup|2>\<rightarrow\>1/2> significa

  <\equation*>
    cos x=1-<frac|x<rsup|2>|2>+o(x<rsup|2>).
  </equation*>

  Da qui segue anche la versione più grossolana <math|cos x=1+o(x)>, perché
  <math|x<rsup|2>=o(x)>. Il contrario non si può fare, perché la scrittura
  breve ha perso il coefficiente del termine quadratico. Altre formule che
  useremo sono <math|arctan x=x+o(x)>, <math|tan x=x+o(x)>, <math|arcsin
  x=x+o(x)> e

  <\equation*>
    (1+x)<rsup|a>=1+a*x+o(x)<space|2em>(a\<in\>\<bbb-R\>).
  </equation*>

  L'ultima si ricava scrivendo <math|(1+x)<rsup|a>=e<rsup|a log(1+x)>>. Per
  <math|a\<neq\>0>, dividendo l'incremento <math|(1+x)<rsup|a>-1> per
  <math|x>, compaiono i due rapporti notevoli <math|(e<rsup|t>-1)/t>, con
  <math|t=a log(1+x)>, e <math|log(1+x)/x>, che tendono entrambi a 1, e il
  risultato tende ad <math|a>. Per <math|a=0> la funzione è costante e la
  formula è esatta. Vicino a zero <math|1+x\<gtr\>0>, quindi tutte le potenze
  reali sono definite.

  <\guidato|Un limite senza cancellazione della parte lineare>
    Calcoliamo <math|lim<rsub|x\<rightarrow\>0><frac|sin(2x)+e<rsup|3x>-cos
    x|arctan x+tan<rsup|2>x>>. Al numeratore le costanti si cancellano,
    perché <math|e<rsup|3x>> e <math|cos x> partono entrambi da 1, quindi il
    primo termine che può sopravvivere è quello lineare.

    Usiamo allora <math|sin(2x)=2x+o(x)>, <math|e<rsup|3x>=1+3x+o(x)> e
    <math|cos x=1+o(x)>. Il numeratore diventa <math|5x+o(x)>.

    Al denominatore abbiamo <math|arctan x=x+o(x)>, mentre
    <math|tan<rsup|2>x=x<rsup|2>+o(x<rsup|2>)> è un <math|o(x)>. Dividendo
    numeratore e denominatore per <math|x> otteniamo

    <\equation*>
      <frac|5x+o(x)|x+o(x)>=<frac|5+o(1)|1+o(1)>\<rightarrow\>5.
    </equation*>

    Il primo ordine è bastato perché sia sopra sia sotto è rimasto un
    coefficiente diverso da zero. Se il coefficiente lineare si fosse
    annullato, avremmo dovuto cercare un'informazione più precisa.
  </guidato>

  Per le successioni la definizione è la stessa. Scriviamo
  <math|a<rsub|n>=o(b<rsub|n>)> se <math|a<rsub|n>=b<rsub|n>\<omega\><rsub|n>>
  con <math|\<omega\><rsub|n>\<rightarrow\>0>. Per esempio
  <math|n\<cdot\>o(1/n)=o(1)>, perché il fattore <math|n> annulla la scala
  <math|1/n> e lascia soltanto qualcosa che tende a zero.

  <\verifica|11>
    <strong|1.> Per <math|x\<rightarrow\>0>, confronta <math|x<rsup|2>> e
    <math|x<rsup|3>> con l'o piccolo. Che cosa cambia per
    <math|x\<rightarrow\>+\<infty\>>? Spiega anche perché <math|x sin(1/x)> è
    O grande, ma non o piccolo, di <math|x> vicino a zero.

    <strong|2.> Calcola <math|lim<rsub|x\<rightarrow\>0><frac|e<rsup|arctan(2x)>-(1+x)<rsup|1/3>|sin(5x)+log(1-x)>>
    tenendo i resti in tutte le somme.
  </verifica>

  <chapter|Derivate e differenziabilità>

  <\inbreve>
    Quando passiamo da 2 a <math|2+h>, il quadrato cambia di
    <math|4h+h<rsup|2>>. Se <math|h> è piccolo, il termine <math|h<rsup|2>> è
    minuscolo rispetto a <math|4h>, e quasi tutto il cambiamento è descritto
    dalla parte lineare. Da questa osservazione nasce la derivata, che misura
    quanto rapidamente cambia una funzione, e insieme a lei il differenziale,
    che esprime la stessa idea con il linguaggio dei resti. Poi ricaveremo le
    regole che permettono di derivare praticamente ogni funzione che
    incontriamo.
  </inbreve>

  <section|Rapporto incrementale e retta tangente>

  Sia <math|x<rsub|0>> un punto interno al dominio di <math|f>, cioè un punto
  attorno al quale <math|f> è definita su un piccolo intervallo aperto. Se ci
  spostiamo da <math|x<rsub|0>> a <math|x<rsub|0>+h>, con <math|h\<neq\>0>
  piccolo, la funzione passa da <math|f(x<rsub|0>)> a <math|f(x<rsub|0>+h)>.
  Il <strong|rapporto incrementale>

  <\equation*>
    <frac|f(x<rsub|0>+h)-f(x<rsub|0>)|h>
  </equation*>

  divide l'incremento verticale per quello orizzontale, ed è quindi la
  pendenza della retta secante che passa per i due punti del grafico. Se
  avviciniamo il secondo punto al primo, la secante ruota, e possiamo
  chiederci se la sua pendenza si stabilizzi.

  <\concetto|Derivata>
    La funzione è derivabile in <math|x<rsub|0>> se il rapporto incrementale
    ha un limite reale finito per <math|h\<rightarrow\>0>. Quel limite si
    chiama derivata e si indica con <math|f<rprime|'>(x<rsub|0>)>. La
    tangente ha equazione

    <\equation*>
      y=f(x<rsub|0>)+f<rprime|'>(x<rsub|0>)(x-x<rsub|0>).
    </equation*>
  </concetto>

  Nella definizione contano due dettagli. Il limite deve essere finito,
  quindi un rapporto incrementale che tende all'infinito non dà una derivata
  reale. E il limite è bilatero, quindi le pendenze calcolate da destra e da
  sinistra devono andare d'accordo.

  Per <math|f(x)=x<rsup|2>> il calcolo è esatto:

  <\equation*>
    <frac|(x<rsub|0>+h)<rsup|2>-x<rsub|0><rsup|2>|h>=2x<rsub|0>+h\<rightarrow\>2x<rsub|0>.
  </equation*>

  La derivata è quindi <math|f<rprime|'>(x<rsub|0>)=2x<rsub|0>>, e nel punto
  <math|x<rsub|0>=2> la tangente è la retta <math|y=4+4(x-2)>.

  <figura|<image|assets/secante.pdf|130.0mm|70.0mm||>|La pendenza della
  secante dipende da <math|h>. Quando il rapporto incrementale converge, la
  pendenza limite definisce la tangente.>

  <section|Differenziale: la stessa informazione come sviluppo>

  Torniamo all'identità <math|(x<rsub|0>+h)<rsup|2>=x<rsub|0><rsup|2>+2x<rsub|0>h+h<rsup|2>>.
  Poiché <math|h<rsup|2>=o(h)>, la funzione si divide in tre parti, il valore
  di partenza, una variazione lineare in <math|h> e un errore trascurabile
  rispetto all'incremento. Questa scomposizione è un altro modo di dire che
  la funzione è derivabile.

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

  Dimostriamo l'equivalenza. Se <math|f> è derivabile, il rapporto
  incrementale tende a <math|f<rprime|'>(x<rsub|0>)>, e quindi

  <\equation*>
    <frac|f(x<rsub|0>+h)-f(x<rsub|0>)-f<rprime|'>(x<rsub|0>)h|h>\<rightarrow\>0.
  </equation*>

  Questo dice esattamente che il numeratore è un <math|o(h)>, ed è lo
  sviluppo richiesto con <math|\<alpha\>=f<rprime|'>(x<rsub|0>)>. Viceversa,
  se conosciamo uno sviluppo con un certo coefficiente <math|\<alpha\>>,
  dividendo l'incremento per <math|h> otteniamo <math|\<alpha\>+o(h)/h>, che
  tende ad <math|\<alpha\>>. La derivata esiste e vale <math|\<alpha\>>, e
  questo mostra anche che il coefficiente lineare non può essere scelto in
  due modi diversi.

  <figura|<image|assets/differenziale.pdf|130.0mm|72.5mm||>|Il valore sul
  grafico si ottiene dal valore iniziale <math|A*B>, aggiungendo il
  contributo lineare <math|B*C=\<alpha\>h> e lo scarto <math|C*D=o(h)>. Il
  disegno mostra un incremento positivo; i termini algebrici possono avere
  segno.>

  Una prima conseguenza è che <strong|derivabile implica continua>. Infatti
  <math|f(x<rsub|0>+h)-f(x<rsub|0>)=f<rprime|'>(x<rsub|0>)h+o(h)>, e il
  membro destro tende a zero. Il viceversa è falso. La funzione <math|\|x\|>
  è continua in zero, ma il suo rapporto incrementale vale 1 per
  <math|h\<gtr\>0> e <math|-1> per <math|h\<less\>0>, e le due pendenze non
  si accordano.

  <section|Derivate delle funzioni elementari>

  Ora raccogliamo i frutti dei limiti notevoli, che abbiamo costruito senza
  usare derivate e che adesso ci danno direttamente i coefficienti lineari.
  Per l'esponenziale

  <\equation*>
    e<rsup|x<rsub|0>+h>=e<rsup|x<rsub|0>>(1+h+o(h))=e<rsup|x<rsub|0>>+e<rsup|x<rsub|0>>h+o(h),
  </equation*>

  e il coefficiente di <math|h> ci dice che
  <math|(e<rsup|x>)<rprime|'>=e<rsup|x>>.

  Per il logaritmo, con <math|x<rsub|0>\<gtr\>0>, conviene scrivere
  l'incremento come una variazione relativa, così da far comparire
  <math|log(1+t)>:

  <\equation*>
    log(x<rsub|0>+h)=log x<rsub|0>+log(1+h/x<rsub|0>)=log
    x<rsub|0>+<frac|h|x<rsub|0>>+o(h).
  </equation*>

  Quindi <math|(log x)<rprime|'>=1/x>. Notiamo che non abbiamo avuto bisogno
  della formula per la derivata dell'inversa, perché la derivata viene
  direttamente dal limite del logaritmo.

  Per il seno la formula di addizione separa ciò che dipende da <math|h> da
  ciò che dipende solo dal punto:

  <\equation*>
    sin(x<rsub|0>+h)=sin x<rsub|0> cos h+cos x<rsub|0> sin h.
  </equation*>

  Sostituendo <math|cos h=1+o(h)> e <math|sin h=h+o(h)> troviamo come
  coefficiente lineare <math|cos x<rsub|0>>. Con la formula di addizione del
  coseno, allo stesso modo, il coefficiente è <math|-sin x<rsub|0>>.
  Otteniamo così

  <\equation*>
    (sin x)<rprime|'>=cos x,<space|2em>(cos x)<rprime|'>=-sin x.
  </equation*>

  Per <math|x<rsup|n>>, con <math|n\<geq\>1> intero, il binomio di Newton dà
  un solo termine lineare, <math|n*x<rsub|0><rsup|n-1>h>, mentre tutti gli
  altri contengono almeno <math|h<rsup|2>>. Quindi
  <math|(x<rsup|n>)<rprime|'>=n*x<rsup|n-1>>. Infine la derivata di una
  costante è zero, perché il suo incremento è sempre nullo.

  <section|Somme, prodotti e quozienti>

  Se <math|f> e <math|g> sono derivabili nello stesso punto, possiamo sommare
  i loro sviluppi, e allora si sommano anche i coefficienti lineari. Così
  <math|(f+g)<rprime|'>=f<rprime|'>+g<rprime|'>>, e per una costante
  <math|\<lambda\>> vale <math|(\<lambda\>f)<rprime|'>=\<lambda\>f<rprime|'>>.

  Il prodotto è più interessante, perché il cambiamento ha due sorgenti. Una
  parte viene dalla variazione di <math|f>, mentre <math|g> resta al suo
  valore iniziale, e l'altra dalla variazione di <math|g>, mentre <math|f>
  resta ferma. Per vederlo abbreviamo <math|f<rsub|0>=f(x<rsub|0>)>,
  <math|g<rsub|0>=g(x<rsub|0>)>, <math|a=f<rprime|'>(x<rsub|0>)> e
  <math|b=g<rprime|'>(x<rsub|0>)>, e moltiplichiamo i due sviluppi

  <\equation*>
    (f<rsub|0>+a*h+o(h))(g<rsub|0>+b*h+o(h)).
  </equation*>

  Il termine costante è <math|f<rsub|0>g<rsub|0>> e quello lineare è
  <math|(a*g<rsub|0>+f<rsub|0>b)h>. Tutti gli altri prodotti sono
  <math|o(h)>, perché contengono un resto moltiplicato per una quantità
  limitata, oppure almeno un fattore <math|h<rsup|2>>. Ne segue la regola di
  Leibniz

  <\equation*>
    (f*g)<rprime|'>=f<rprime|'>g+f*g<rprime|'>.
  </equation*>

  Per il reciproco supponiamo <math|g(x<rsub|0>)\<neq\>0>. Poiché <math|g> è
  continua in <math|x<rsub|0>>, resta diversa da zero in un piccolo intorno,
  e lì il reciproco è definito. Portando a denominatore comune il suo
  rapporto incrementale otteniamo

  <\equation*>
    <frac|1/g(x<rsub|0>+h)-1/g(x<rsub|0>)|h>=-<frac|g(x<rsub|0>+h)-g(x<rsub|0>)|h>\<cdot\><frac|1|g(x<rsub|0>+h)g(x<rsub|0>)>.
  </equation*>

  Il primo fattore tende a <math|-g<rprime|'>(x<rsub|0>)> e il secondo,
  sempre per la continuità, a <math|1/g(x<rsub|0>)<rsup|2>>. Quindi
  <math|(1/g)<rprime|'>=-g<rprime|'>/g<rsup|2>>, e applicando la regola del
  prodotto a <math|f/g=f\<cdot\>(1/g)> troviamo

  <\equation*>
    <around*|(|<frac|f|g>|)><rprime|'>=<frac|f<rprime|'>g-f*g<rprime|'>|g<rsup|2>><space|2em>(g\<neq\>0).
  </equation*>

  Per esempio, dove <math|cos x\<neq\>0>,

  <\equation*>
    (tan x)<rprime|'>=<frac|cos<rsup|2>x+sin<rsup|2>x|cos<rsup|2>x>=<frac|1|cos<rsup|2>x>=1+tan<rsup|2>x.
  </equation*>

  <section|Derivata della funzione composta>

  Nella funzione <math|cos(x<rsup|3>)> un piccolo spostamento di <math|x>
  modifica prima <math|x<rsup|3>>, e questa modifica viene poi trasmessa al
  coseno. In ciascun passaggio la funzione si comporta localmente come una
  moltiplicazione per la sua derivata, quindi le due proporzioni si
  moltiplicano. Vicino a <math|x=1>, per esempio, il cubo cambia di circa
  <math|3h>. Vicino al valore 1, il coseno cambia di circa <math|-sin 1>
  volte l'incremento che riceve, e la composta cambia quindi di circa
  <math|-3sin 1\<cdot\>h>.

  In generale, se <math|f> è derivabile in <math|x<rsub|0>> e <math|g> è
  derivabile in <math|y<rsub|0>=f(x<rsub|0>)>, con domini aperti appropriati,
  vale la regola della catena

  <\equation*>
    (g\<circ\>f)<rprime|'>(x<rsub|0>)=g<rprime|'>(f(x<rsub|0>))f<rprime|'>(x<rsub|0>).
  </equation*>

  <subsection|La prova: controllare anche gli incrementi nulli>

  La dimostrazione più naturale sembrerebbe moltiplicare e dividere per
  l'incremento della funzione interna. Questo incremento però può essere zero
  anche quando <math|h\<neq\>0>, come succede se la funzione interna è
  costante, e allora non potremmo dividere. Per questo usiamo lo sviluppo,
  che funziona anche con un incremento nullo.

  Chiamiamo <math|k=f(x<rsub|0>+h)-f(x<rsub|0>)>. Sappiamo che
  <math|k=a*h+o(h)>, con <math|a=f<rprime|'>(x<rsub|0>)>, quindi il rapporto
  <math|k/h> tende ad <math|a> ed è limitato vicino a zero, e inoltre
  <math|k\<rightarrow\>0>. La differenziabilità di <math|g> si scrive
  <math|g(y<rsub|0>+k)=g(y<rsub|0>)+b*k+k\<varepsilon\>(k)>, con
  <math|b=g<rprime|'>(y<rsub|0>)> ed <math|\<varepsilon\>(k)\<rightarrow\>0>.
  Ponendo <math|\<varepsilon\>(0)=0> questa identità vale anche per
  <math|k=0>.

  Dopo la sostituzione dobbiamo controllare il resto rispetto ad <math|h>, e
  non soltanto rispetto a <math|k>. Dividendo <math|k\<varepsilon\>(k)> per
  <math|h> otteniamo <math|(k/h)\<varepsilon\>(k)>, prodotto di un fattore
  limitato e di uno che tende a zero, quindi <math|k\<varepsilon\>(k)=o(h)>.
  Sostituendo anche <math|k=a*h+o(h)> arriviamo a

  <\equation*>
    g(f(x<rsub|0>+h))=g(f(x<rsub|0>))+b*a*h+o(h),
  </equation*>

  e il coefficiente lineare è <math|b*a>, come volevamo, senza mai dividere
  per <math|k>.

  Nella pratica bisogna riconoscere bene quale funzione è interna e quale
  esterna. Per esempio <math|(cos(x<rsup|3>))<rprime|'>=-sin(x<rsup|3>)\<cdot\>3x<rsup|2>>,
  mentre <math|((cos x)<rsup|3>)<rprime|'>=3cos<rsup|2>x\<cdot\>(-sin x)>,
  perché spostare la potenza scambia i ruoli delle due funzioni.

  <section|Derivata dell'inversa e potenze variabili>

  Se una funzione si comporta localmente come una moltiplicazione per
  <math|f<rprime|'>(x<rsub|0>)>, è naturale aspettarsi che la sua inversa si
  comporti come una divisione per lo stesso numero. Il risultato preciso è
  questo. Sia <math|f:I\<rightarrow\>J> biiettiva fra intervalli aperti, sia
  <math|g=f<rsup|-1>> e sia <math|y<rsub|0>=f(x<rsub|0>)>. Supponiamo che
  <math|f> sia derivabile in <math|x<rsub|0>>, con
  <math|f<rprime|'>(x<rsub|0>)\<neq\>0>, e che <math|g> sia continua in
  <math|y<rsub|0>>. Allora

  <\equation*>
    g<rprime|'>(y<rsub|0>)=<frac|1|f<rprime|'>(x<rsub|0>)>.
  </equation*>

  Per le funzioni elementari che usiamo l'ipotesi di continuità è già nota,
  perché le loro restrizioni sono continue e strettamente monotone.

  Per la dimostrazione poniamo <math|x=g(y)>. Se <math|y\<neq\>y<rsub|0>>,
  l'iniettività dà <math|x\<neq\>x<rsub|0>>, e la continuità di <math|g> dà
  <math|x\<rightarrow\>x<rsub|0>> quando <math|y\<rightarrow\>y<rsub|0>>.
  Quindi

  <\equation*>
    <frac|g(y)-g(y<rsub|0>)|y-y<rsub|0>>=<frac|1|<frac|f(x)-f(x<rsub|0>)|x-x<rsub|0>>>\<rightarrow\><frac|1|f<rprime|'>(x<rsub|0>)>.
  </equation*>

  In questo modo la derivabilità dell'inversa viene dimostrata, invece di
  essere data per scontata derivando l'identità <math|f(g(y))=y>. Applicando
  il risultato alle restrizioni delle funzioni trigonometriche otteniamo

  <\equation*>
    (arctan x)<rprime|'>=<frac|1|1+x<rsup|2>>,<space|1.5em>(arcsin
    x)<rprime|'>=<frac|1|<sqrt|1-x<rsup|2>>>,
  </equation*>

  e per l'arcocoseno, che è decrescente, <math|(arccos
  x)<rprime|'>=-1/<sqrt|1-x<rsup|2>>>. Le ultime due formule valgono per
  <math|-1\<less\>x\<less\>1>, perché agli estremi il denominatore si annulla
  e la tangente al grafico diventa verticale.

  <subsection|Quando varia anche l'esponente>

  Le potenze con esponente reale si derivano riscrivendole come esponenziali.
  Per <math|a\<gtr\>0> abbiamo <math|a<rsup|x>=e<rsup|x log a>>, e la regola
  della catena dà <math|(a<rsup|x>)<rprime|'>=a<rsup|x>log a>. Per
  <math|x\<gtr\>0> e <math|a\<in\>\<bbb-R\>>, da <math|x<rsup|a>=e<rsup|a log
  x>> otteniamo <math|(x<rsup|a>)<rprime|'>=a*x<rsup|a-1>>.

  La stessa trasformazione funziona anche quando variano sia la base sia
  l'esponente, e separa i due contributi. Per <math|f(x)=u(x)<rsup|v(x)>>,
  con <math|u\<gtr\>0> e <math|u,v> derivabili, scriviamo <math|f=e<rsup|v
  log u>> e troviamo

  <\equation*>
    f<rprime|'>(x)=u(x)<rsup|v(x)><around*|(|v<rprime|'>(x)log
    u(x)+v(x)<frac|u<rprime|'>(x)|u(x)>|)>.
  </equation*>

  Il primo addendo è il contributo dell'esponente che cambia, il secondo
  quello della base.

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
    A volte, in un limite, tutto ciò che conosciamo si cancella. Le costanti
    spariscono, anche i termini lineari spariscono, e lo sviluppo al primo
    ordine ci lascia con un resto che non sappiamo controllare. Per andare
    avanti serve un'informazione più fine, e qui ne incontriamo due fonti
    diverse. Il teorema di De L'Hôpital sposta il problema sulle derivate,
    mentre la formula di Taylor costruisce un polinomio che approssima la
    funzione con la precisione che ci serve.
  </inbreve>

  Partiamo da un limite concreto,

  <\equation*>
    lim<rsub|x\<rightarrow\>0><frac|e<rsup|x>-cos x-sin
    x+x<rsup|2>|x<rsup|2>>.
  </equation*>

  Al numeratore le costanti si cancellano, perché <math|e<rsup|x>> e
  <math|cos x> partono entrambi da 1, e si cancellano anche i termini
  lineari, perché <math|e<rsup|x>> e <math|sin x> crescono entrambi come
  <math|x>. Gli sviluppi al primo ordine ci lasciano allora soltanto resti
  <math|o(x)>, che divisi per <math|x<rsup|2>> non sappiamo controllare.
  Basta pensare che <math|x<rsup|2>> stesso è un <math|o(x)>, eppure il suo
  rapporto con <math|x<rsup|2>> vale 1. Dobbiamo conoscere il comportamento
  delle funzioni al secondo ordine.

  In questo capitolo vediamo due modi per farlo. De L'Hôpital trasforma il
  limite in un rapporto di derivate, a patto di rispettare ipotesi precise.
  Taylor costruisce invece direttamente un polinomio con un errore abbastanza
  piccolo. Useremo entrambi gli strumenti, facendo sempre attenzione ai
  risultati su cui si appoggiano.

  <section|Il teorema di De L'Hôpital e le sue ipotesi>

  Cominciamo da una versione da destra in un punto finito <math|a>. Siano
  <math|f> e <math|g> definite e derivabili su tutto un intervallo
  <math|(a,a+\<delta\>)>, e supponiamo che in quell'intervallo
  <math|g(x)\<neq\>0> e <math|g<rprime|'>(x)\<neq\>0>. Supponiamo inoltre che
  valga una di queste due condizioni:

  <\itemize>
    <item><math|f(x)\<rightarrow\>0> e <math|g(x)\<rightarrow\>0> per
    <math|x\<rightarrow\>a<rsup|+>>;

    <item><math|g(x)\<rightarrow\>+\<infty\>> oppure
    <math|g(x)\<rightarrow\>-\<infty\>> per <math|x\<rightarrow\>a<rsup|+>>.
  </itemize>

  Allora, se il rapporto delle derivate <math|f<rprime|'>(x)/g<rprime|'>(x)>
  ha un limite <math|\<#2113\>> nella retta estesa, anche
  <math|f(x)/g(x)\<rightarrow\>\<#2113\>>. Nel secondo caso, curiosamente,
  non serve sapere nulla del limite di <math|f>.

  Lo stesso enunciato vale da sinistra, usando l'intervallo
  <math|(a-\<delta\>,a)>, e anche all'infinito, usando un'intera semiretta.
  Per un limite bilatero applichiamo il risultato separatamente sui due lati
  e confrontiamo le conclusioni.

  <\concetto|De L'Hôpital>
    Sotto le ipotesi appena indicate, il limite del rapporto delle derivate
    determina il limite del rapporto delle funzioni. Il teorema si usa nelle
    forme <math|0/0> o con denominatore divergente. Non afferma che
    <math|f/g=f<rprime|'>/g<rprime|'>>.
  </concetto>

  Non dimostreremo questo teorema e lo useremo come uno strumento. È
  importante però prendere sul serio le sue ipotesi. La richiesta di
  derivabilità su un intervallo intero, per esempio, non è un dettaglio
  tecnico, perché impedisce al ragionamento di scavalcare infiniti buchi nel
  dominio.

  <subsection|Tre casi in cui il teorema non dà la risposta>

  Il modo migliore per capire le ipotesi è vedere che cosa succede quando
  mancano. Prendiamo <math|cos x/x> per <math|x\<rightarrow\>0>. Il
  numeratore tende a 1, quindi non siamo nel caso <math|0/0>. Se derivassimo
  comunque sopra e sotto otterremmo <math|-sin x>, che tende a zero, mentre i
  veri limiti laterali sono <math|+\<infty\>> da destra e <math|-\<infty\>>
  da sinistra.

  Il secondo caso è più sottile. Il limite di <math|(2x+sin x)/x> per
  <math|x\<rightarrow\>+\<infty\>> vale 2, perché <math|sin
  x/x\<rightarrow\>0>. Il rapporto delle derivate, invece, è <math|2+cos x>,
  che non ha limite. Questo non contraddice il teorema. Manca un'ipotesi,
  cioè l'esistenza del limite delle derivate, e quindi il teorema
  semplicemente non dice nulla. In particolare, il fatto che il rapporto
  delle derivate non abbia limite non dimostra che non lo abbia quello
  originale.

  Il terzo caso riguarda il dominio. Il rapporto
  <math|\<lfloor\>x\<rfloor\>/x> tende a 1 per
  <math|x\<rightarrow\>+\<infty\>>, anche se restringiamo <math|x> ai numeri
  non interi. Fra due interi la parte intera è costante e ha derivata zero,
  ma non è derivabile su nessuna semiretta intera, perché salta in ogni
  intero. Se applicassimo il teorema sul dominio bucato concluderemmo che il
  limite è zero, il che è falso.

  <section|Un'applicazione e una dipendenza da rispettare>

  Per <math|x\<rightarrow\>0<rsup|+>> il rapporto <math|arccos(1-x)/<sqrt|x>>
  è della forma <math|0/0>. Le due funzioni sono derivabili su un intervallo
  <math|(0,\<delta\>)> con <math|\<delta\>\<less\>1>, e la derivata del
  denominatore non si annulla, quindi possiamo applicare il teorema. Il
  rapporto delle derivate è

  <\equation*>
    <frac|1/<sqrt|1-(1-x)<rsup|2>>|1/(2<sqrt|x>)>=<frac|2|<sqrt|2-x>>\<rightarrow\><sqrt|2>,
  </equation*>

  e quindi anche il limite di partenza vale <math|<sqrt|2>>. Possiamo
  controllarlo con un argomento indipendente. Ponendo <math|t=arccos(1-x)>
  abbiamo <math|x=1-cos t> e <math|t\<rightarrow\>0<rsup|+>>, e il rapporto
  diventa <math|t/<sqrt|1-cos t>>. Il limite notevole del coseno dice che
  <math|1-cos t> si comporta come <math|t<rsup|2>/2>, e il risultato è di
  nuovo <math|<sqrt|2>>.

  <subsection|Due applicazioni successive>

  Torniamo al limite iniziale. Possiamo applicare De L'Hôpital due volte, ma
  dobbiamo controllare anche il passaggio intermedio. Dopo la prima
  applicazione troviamo

  <\equation*>
    <frac|e<rsup|x>+sin x-cos x+2x|2x>,
  </equation*>

  che è ancora della forma <math|0/0>. Derivando di nuovo otteniamo

  <\equation*>
    <frac|e<rsup|x>+cos x+sin x+2|2>\<rightarrow\>2.
  </equation*>

  Le due applicazioni sono lecite, perché su ciascun lato di zero la derivata
  del denominatore originale, cioè <math|2x>, è diversa da zero, e lo è anche
  quella del secondo denominatore, che vale 2. Il limite iniziale vale quindi
  2.

  <\attenzione|Le derivate non possono dimostrare il proprio fondamento>
    Per ricavare <math|(sin x)<rprime|'>=cos x> abbiamo usato <math|sin
    h/h\<rightarrow\>1>. Applicare De L'Hôpital a quel rapporto, usando già
    la derivata del seno, verifica una conseguenza di un fatto noto; non ne
    dà una dimostrazione indipendente. Nel percorso del libro la geometria
    viene prima delle derivate proprio per evitare questo circolo.
  </attenzione>

  <section|Polinomio di Taylor e resto di Peano>

  Al primo ordine la retta tangente approssima la funzione con un errore
  <math|o(x)>, e se poi dobbiamo dividere per <math|x<rsup|2>> questo
  controllo non basta. L'idea naturale è aggiungere un termine quadratico,
  cioè approssimare la funzione con una parabola invece che con una retta.

  <subsection|Prima il grado 2: da dove viene il coefficiente 1/2?>

  Cerchiamo un polinomio <math|P<rsub|2>(x)=A+B*x+C*x<rsup|2>> che stia il
  più vicino possibile a <math|f> attorno a zero. La retta tangente aveva lo
  stesso valore e la stessa derivata di <math|f>, e ora chiediamo che il
  polinomio abbia anche la stessa derivata seconda. Le tre richieste sono

  <\equation*>
    A=f(0),<space|1em>B=f<rprime|'>(0),<space|1em>2C=f<rprime|''>(0),
  </equation*>

  dove il 2 compare perché la derivata seconda di <math|C*x<rsup|2>> è
  <math|2C>. Il candidato è quindi

  <\equation*>
    P<rsub|2>(x)=f(0)+f<rprime|'>(0)x+<frac|f<rprime|''>(0)|2>x<rsup|2>.
  </equation*>

  Per l'esponenziale le tre derivate in zero valgono tutte 1, e il candidato
  è <math|1+x+x<rsup|2>/2>. Per il coseno valgono 1, 0 e <math|-1>, e il
  candidato è <math|1-x<rsup|2>/2>, in accordo con quello che sapevamo già.
  Il coefficiente quadratico non è la derivata seconda, ma la sua metà.

  <subsection|La prova al secondo ordine>

  Ora dobbiamo dimostrare che il candidato funziona davvero, cioè che
  l'errore è <math|o(x<rsup|2>)>. Supponiamo che <math|f> sia derivabile in
  un intorno di zero e che esista <math|f<rprime|''>(0)>, e chiamiamo
  <math|R=f-P<rsub|2>> l'errore. Grazie alla scelta dei coefficienti,

  <\equation*>
    R(0)=0,<space|1em>R<rprime|'>(0)=0,<space|1em>R<rprime|''>(0)=0.
  </equation*>

  Vogliamo mostrare che <math|R(x)/x<rsup|2>\<rightarrow\>0>. Il rapporto è
  della forma <math|0/0>, perché <math|R> è derivabile, e quindi continua, in
  zero. Applicando De L'Hôpital, il rapporto delle derivate è
  <math|R<rprime|'>(x)/(2x)>, e resta da capire a che cosa tende. Qui non
  serve applicare il teorema una seconda volta, perché la definizione di
  derivata seconda nel centro dà direttamente la risposta:

  <\equation*>
    <frac|R<rprime|'>(x)|2x>=<frac|1|2><frac|R<rprime|'>(x)-R<rprime|'>(0)|x-0>\<rightarrow\><frac|1|2>R<rprime|''>(0)=0.
  </equation*>

  De L'Hôpital, applicato sui due lati di zero, dà allora
  <math|R(x)/x<rsup|2>\<rightarrow\>0>, e abbiamo dimostrato che

  <\equation*>
    f(x)=f(0)+f<rprime|'>(0)x+<frac|f<rprime|''>(0)|2>x<rsup|2>+o(x<rsup|2>).
  </equation*>

  Notiamo che non abbiamo chiesto l'esistenza di <math|f<rprime|''>> fuori da
  zero, perché il limite del rapporto derivato è venuto dalla sola
  definizione di <math|f<rprime|''>(0)>.

  <subsection|Il teorema a un ordine qualunque>

  Lo stesso ragionamento funziona per i gradi successivi. La derivata
  <math|k>-esima di <math|x<rsup|k>> vale <math|k!>, quindi per fare in modo
  che il polinomio abbia in zero la stessa derivata <math|k>-esima di
  <math|f> dobbiamo usare il coefficiente <math|f<rsup|(k)>(0)/k!>.

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

  Il polinomio ha grado al massimo <math|n>, perché termini di grado più alto
  sarebbero comunque trascurabili rispetto a <math|x<rsup|n>>. Per <math|n=1>
  ritroviamo la differenziabilità, e all'ordine zero la scrittura
  <math|f(x)=f(0)+o(1)> esprime soltanto la continuità. Le ipotesi del
  teorema sono sufficienti ma non necessarie, perché uno sviluppo polinomiale
  può esistere anche senza tutte le derivate richieste. Per poter
  identificare i coefficienti con le derivate, però, dobbiamo sapere che il
  teorema si applica.

  <subsection|Perché la prova si ripete>

  Sia <math|P> il polinomio della formula e sia <math|R=f-P>. La scelta dei
  coefficienti assicura che <math|R<rsup|(j)>(0)=0> per ogni
  <math|0\<leq\>j\<leq\>n>. I casi <math|n=1> e <math|n=2> li abbiamo già
  visti. Al grado 3 la strada è una catena di tre rapporti,

  <\equation*>
    <frac|R(x)|x<rsup|3>>,<space|1em><frac|R<rprime|'>(x)|3x<rsup|2>>,<space|1em><frac|R<rprime|''>(x)|6x>,
  </equation*>

  ciascuno dei quali è il rapporto delle derivate del precedente. L'ultimo
  tende a zero per la definizione di <math|R<rsup|(3)>(0)=0>, e De L'Hôpital
  assegna allora limite zero al secondo e poi al primo. È lo stesso
  ragionamento del secondo ordine, con un passaggio in più.

  All'ordine <math|n> l'ultimo rapporto della catena è

  <\equation*>
    <frac|R<rsup|(n-1)>(x)|n!x>=<frac|1|n!><frac|R<rsup|(n-1)>(x)-R<rsup|(n-1)>(0)|x>\<rightarrow\>0,
  </equation*>

  e il suo limite viene ancora dalla definizione dell'ultima derivata nel
  centro. Il rapporto che lo precede è <math|R<rsup|(n-2)>(x)/((n!/2!)x<rsup|2>)>,
  e il rapporto delle sue derivate è quello appena scritto, quindi De
  L'Hôpital gli assegna limite zero.

  Ripetendo il passaggio arriviamo fino a
  <math|R(x)/x<rsup|n>\<rightarrow\>0>. A ogni passo le ipotesi del teorema
  sono soddisfatte. Il numeratore tende a zero, perché è derivabile nel
  centro e lì vale zero, tutte le derivate necessarie esistono nell'intorno e
  i denominatori, con le loro derivate, non si annullano fuori da zero. Come
  sempre applichiamo il teorema separatamente sui due lati.

  La prova usa la derivata <math|n>-esima soltanto nel centro, e non ne
  chiede né la continuità né l'esistenza altrove.

  <subsection|Perché il polinomio è unico>

  Supponiamo che due polinomi <math|P> e <math|Q>, di grado al massimo
  <math|n>, approssimino entrambi <math|f> con errore <math|o(x<rsup|n>)>.
  Sottraendo le due approssimazioni otteniamo <math|P-Q=o(x<rsup|n>)>. Se la
  differenza non fosse il polinomio nullo, avrebbe un termine di grado minimo
  con coefficiente diverso da zero, diciamo <math|a<rsub|k>x<rsup|k>> con
  <math|k\<leq\>n>. Dividendo <math|P-Q> per <math|x<rsup|k>> otterremmo un
  limite uguale ad <math|a<rsub|k>\<neq\>0>, perché tutti i termini di grado
  più alto tendono a zero. Ma dividendo per la stessa potenza un
  <math|o(x<rsup|n>)> troviamo <math|x<rsup|n-k>o(1)>, che tende a zero
  perché <math|n-k\<geq\>0>. Questa contraddizione dimostra che i due
  polinomi coincidono.

  <figura|<image|assets/taylor-cos.pdf|155.0mm|60.0mm||>|Il coseno e i
  polinomi ottenuti fino ai gradi 2, 4 e 6. L'approssimazione descrive il
  comportamento vicino a zero; il teorema locale non promette accuratezza
  uniforme lontano dal centro.>

  <section|Sviluppi elementari e significato dei coefficienti>

  Ora possiamo calcolare gli sviluppi delle funzioni elementari. Per
  l'esponenziale tutte le derivate valgono 1 in zero, quindi

  <\equation*>
    e<rsup|x>=1+x+<frac|x<rsup|2>|2>+<frac|x<rsup|3>|6>+<frac|x<rsup|4>|24>+<frac|x<rsup|5>|120>+o(x<rsup|5>).
  </equation*>

  Le derivate del seno girano in tondo, passando per coseno, meno seno, meno
  coseno e di nuovo seno. In zero i loro valori sono quindi
  <math|0,1,0,-1,0,1>, mentre per il coseno sono <math|1,0,-1,0,1,0>.
  Otteniamo

  <\equation*>
    sin x=x-<frac|x<rsup|3>|6>+<frac|x<rsup|5>|120>+o(x<rsup|5>),
  </equation*>

  <\equation*>
    cos x=1-<frac|x<rsup|2>|2>+<frac|x<rsup|4>|24>+o(x<rsup|5>).
  </equation*>

  <subsection|Logaritmo e potenze>

  Per <math|f(x)=log(1+x)>, derivando più volte si trova, per
  <math|k\<geq\>1>,

  <\equation*>
    f<rsup|(k)>(x)=(-1)<rsup|k+1><frac|(k-1)!|(1+x)<rsup|k>>.
  </equation*>

  La formula si controlla per induzione. Derivando una volta compare un
  fattore <math|-k>, che cambia il segno e trasforma <math|(k-1)!> in
  <math|k!>. Nel teorema di Taylor dividiamo per <math|k!>, e il coefficiente
  che resta è <math|(-1)<rsup|k+1>/k>, quindi

  <\equation*>
    log(1+x)=x-<frac|x<rsup|2>|2>+<frac|x<rsup|3>|3>-<frac|x<rsup|4>|4>+<frac|x<rsup|5>|5>+o(x<rsup|5>).
  </equation*>

  Per una potenza reale le derivate successive producono i fattori <math|a>,
  <math|a(a-1)>, <math|a(a-1)(a-2)> e così via, e per <math|1+x\<gtr\>0>
  otteniamo

  <\equation*>
    (1+x)<rsup|a>=1+a*x+<frac|a(a-1)|2>x<rsup|2>+<frac|a(a-1)(a-2)|6>x<rsup|3>+o(x<rsup|3>).
  </equation*>

  All'ordine <math|k> il coefficiente è il binomiale generalizzato
  <math|<binom|a|k>=a(a-1)\<cdots\>(a-k+1)/k!>, che per <math|a> intero
  coincide con quello che già conosciamo. Il caso <math|a=-1> dà
  <math|1/(1+x)=1-x+x<rsup|2>-x<rsup|3>+o(x<rsup|3>)>, e sostituendo
  <math|x<rsup|2>> al posto di <math|x> otteniamo
  <math|1/(1+x<rsup|2>)=1-x<rsup|2>+x<rsup|4>+o(x<rsup|4>)>.

  <subsection|Ricavare l'arcotangente dalla sua derivata>

  Quest'ultimo sviluppo ci regala quello dell'arcotangente,

  <\equation*>
    arctan x=x-<frac|x<rsup|3>|3>+<frac|x<rsup|5>|5>+o(x<rsup|5>).
  </equation*>

  Il motivo è che <math|(arctan x)<rprime|'>=1/(1+x<rsup|2>)>, e conoscere lo
  sviluppo della derivata significa conoscere le derivate successive in zero.
  Il termine costante 1 della derivata corrisponde al termine <math|x>
  dell'arcotangente, perché la derivata di <math|x> è 1. Il termine
  <math|-x<rsup|2>> corrisponde a <math|-x<rsup|3>/3>, che ha derivata
  <math|-x<rsup|2>>, e allo stesso modo <math|x<rsup|4>> corrisponde a
  <math|x<rsup|5>/5>.

  Per rendere preciso questo ragionamento usiamo il teorema di Taylor e
  l'unicità. Entrambe le funzioni sono derivabili quante volte vogliamo
  vicino a zero. Se nello sviluppo della derivata il coefficiente di
  <math|x<rsup|k>> è <math|c<rsub|k>>, allora la derivata <math|k>-esima di
  <math|1/(1+x<rsup|2>)> in zero vale <math|k!c<rsub|k>>, e questa è la
  derivata <math|(k+1)>-esima dell'arcotangente. Dividendo per <math|(k+1)!>
  troviamo il coefficiente <math|c<rsub|k>/(k+1)>. In questo modo non abbiamo
  mai dovuto derivare un resto, di cui non conosciamo la regolarità.

  Tutte queste formule sono finite, ciascuna con il suo resto. Non stiamo
  affermando che una funzione sia uguale a una somma infinita, che è una
  questione diversa e più delicata.

  <section|Parità e precisione del resto>

  La simmetria di una funzione si vede anche nei suoi sviluppi. Se <math|f> è
  pari e ha uno sviluppo con polinomio <math|P>, allora anche <math|P(-x)>
  approssima <math|f(-x)=f(x)> con lo stesso ordine, e per l'unicità
  <math|P(-x)=P(x)>, quindi i coefficienti dispari sono nulli. Se <math|f> è
  dispari, lo stesso argomento applicato a <math|-P(-x)> elimina i
  coefficienti pari. Ecco perché il seno contiene solo potenze dispari e il
  coseno solo potenze pari.

  Questa osservazione ci regala un ordine di precisione in più. All'ordine 4,
  per esempio, il teorema di Taylor dà <math|sin
  x=x-x<rsup|3>/6+o(x<rsup|4>)>, perché il coefficiente di grado 4 è zero. Lo
  stesso polinomio non va però bene con resto <math|o(x<rsup|5>)>, perché gli
  manca il termine <math|x<rsup|5>/120>, che non è trascurabile rispetto a
  <math|x<rsup|5>>.

  <subsection|Ritornare al limite iniziale>

  Ora l'esempio da cui siamo partiti si risolve senza derivare più volte.
  Usiamo gli sviluppi all'ordine 2,

  <\equation*>
    e<rsup|x>=1+x+<frac|x<rsup|2>|2>+o(x<rsup|2>),<space|1em>sin
    x=x+o(x<rsup|2>),
  </equation*>

  insieme a <math|cos x=1-x<rsup|2>/2+o(x<rsup|2>)>. Il numeratore diventa

  <\equation*>
    1+x+<frac|x<rsup|2>|2>-1+<frac|x<rsup|2>|2>-x+x<rsup|2>+o(x<rsup|2>)=2x<rsup|2>+o(x<rsup|2>),
  </equation*>

  e dividendo per <math|x<rsup|2>> resta <math|2+o(1)>, che tende a 2. Il
  termine <math|x<rsup|2>/2> dell'esponenziale, insieme a quello del coseno,
  è l'informazione che lo sviluppo al primo ordine aveva perso.

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
    Conoscere gli sviluppi delle funzioni elementari è solo metà del lavoro.
    Nei limiti veri le funzioni compaiono moltiplicate, composte, elevate a
    potenze variabili, e a ogni operazione dobbiamo chiederci quanto è grande
    l'errore che ci portiamo dietro. Questo capitolo è una palestra in cui
    impariamo a scegliere quanti termini tenere, né troppi né troppo pochi, e
    dove incontriamo anche le funzioni iperboliche, parenti strette
    dell'esponenziale.
  </inbreve>

  <section|Cambiare centro: lavorare con l'incremento>

  Gli sviluppi che conosciamo sono tutti centrati in zero, ma spesso ci
  interessa una funzione vicino a un altro punto. Per studiare il logaritmo
  vicino a 2, per esempio, scriviamo <math|x=2+h>, così la quantità che tende
  a zero è <math|h=x-2>. Poi separiamo il valore di partenza:

  <\equation*>
    log(2+h)=log 2+log(1+h/2).
  </equation*>

  Ora l'argomento piccolo è <math|h/2>, e possiamo usare lo sviluppo di
  <math|log(1+t)> con <math|t=h/2>, ottenendo

  <\equation*>
    log(2+h)=log 2+<frac|h|2>-<frac|h<rsup|2>|8>+<frac|h<rsup|3>|24>+o(h<rsup|3>).
  </equation*>

  Scrivere invece <math|log x=log(1+(x-1))> non servirebbe a nulla per
  <math|x\<rightarrow\>2>, perché in quel caso <math|x-1> tende a 1, mentre
  lo sviluppo che conosciamo richiede un argomento che tenda a zero.

  In generale, per studiare <math|f> vicino a <math|x<rsub|0>> poniamo
  <math|h=x-x<rsub|0>> e applichiamo Taylor alla funzione
  <math|h\<mapsto\>f(x<rsub|0>+h)>. Con le ipotesi del capitolo precedente,
  trasportate nel nuovo centro, troviamo

  <\equation*>
    f(x<rsub|0>+h)=<big|sum><rsub|k=0><rsup|m><frac|f<rsup|(k)>(x<rsub|0>)|k!>h<rsup|k>+o(h<rsup|m>).
  </equation*>

  <section|Somme e prodotti: quali termini tenere>

  Supponiamo di conoscere due sviluppi con la stessa precisione,
  <math|f=P+o(x<rsup|m>)> e <math|g=Q+o(x<rsup|m>)>, dove <math|P> e <math|Q>
  sono polinomi di grado al massimo <math|m> e <math|m\<geq\>1> è un intero.
  Per la somma non c'è nessuna sorpresa, perché <math|f+g=P+Q+o(x<rsup|m>)> e
  la precisione resta la stessa.

  Per il prodotto scriviamo i resti come <math|x<rsup|m>\<omega\><rsub|1>> e
  <math|x<rsup|m>\<omega\><rsub|2>>, con <math|\<omega\><rsub|1>,\<omega\><rsub|2>\<rightarrow\>0>,
  e moltiplichiamo:

  <\equation*>
    f*g=P*Q+x<rsup|m>(P\<omega\><rsub|2>+Q\<omega\><rsub|1>+x<rsup|m>\<omega\><rsub|1>\<omega\><rsub|2>).
  </equation*>

  I polinomi sono limitati vicino a zero e gli <math|\<omega\><rsub|i>>
  tendono a zero, quindi tutta la parentesi tende a zero e
  <math|f*g=P*Q+o(x<rsup|m>)>. Il prodotto <math|P*Q> può avere grado più
  alto di <math|m>, ma i termini in più sono già <math|o(x<rsup|m>)> e
  possiamo buttarli via.

  Vediamolo con <math|sin x cos x> fino al grado 5. Moltiplichiamo
  <math|x-x<rsup|3>/6+x<rsup|5>/120> per <math|1-x<rsup|2>/2+x<rsup|4>/24>,
  ma invece di sviluppare tutto il prodotto cerchiamo soltanto le coppie di
  termini che danno i gradi che ci interessano. Al grado 3 contribuiscono
  <math|x\<cdot\>(-x<rsup|2>/2)> e <math|(-x<rsup|3>/6)\<cdot\>1>. Al grado 5
  contribuiscono <math|x\<cdot\>x<rsup|4>/24>,
  <math|(-x<rsup|3>/6)(-x<rsup|2>/2)> e <math|(x<rsup|5>/120)\<cdot\>1>. I
  coefficienti sono quindi

  <\equation*>
    -<frac|1|2>-<frac|1|6>=-<frac|2|3>,<space|2em><frac|1|24>+<frac|1|12>+<frac|1|120>=<frac|2|15>,
  </equation*>

  e otteniamo <math|sin x cos x=x-2x<rsup|3>/3+2x<rsup|5>/15+o(x<rsup|5>)>.
  Possiamo controllare il risultato con lo sviluppo di <math|sin(2x)/2>, che
  deve dare gli stessi coefficienti.

  <section|Composizione: argomento e precisione>

  Nelle composizioni l'errore più frequente è sostituire l'argomento soltanto
  in una parte dello sviluppo. Consideriamo <math|sin(x+x<rsup|3>)> e
  cerchiamo uno sviluppo con resto <math|o(x<rsup|3>)>. L'argomento interno
  tende a zero, quindi possiamo partire dallo sviluppo del seno in zero, ma
  dobbiamo sostituire l'argomento intero in ciascuna delle sue potenze.

  <\guidato|Prima comporre, poi scegliere i gradi>
    Poniamo <math|u=x+x<rsup|3>>. Lo sviluppo del seno dà <math|sin
    u=u-u<rsup|3>/6+o(u<rsup|3>)>. Il termine lineare diventa semplicemente
    <math|x+x<rsup|3>>. Per il cubo facciamo il conto completo:

    <\equation*>
      (x+x<rsup|3>)<rsup|3>=x<rsup|3>+3x<rsup|5>+3x<rsup|7>+x<rsup|9>.
    </equation*>

    Ci interessano i gradi fino a 3, e i gradi 5, 7 e 9 sono tutti
    <math|o(x<rsup|3>)>, quindi il cubo contribuisce soltanto con
    <math|x<rsup|3>>.

    Anche il resto esterno va controllato. Se lo scriviamo come
    <math|u<rsup|3>\<omega\>(u)> con <math|\<omega\>(u)\<rightarrow\>0>, dopo
    la sostituzione diventa

    <\equation*>
      x<rsup|3>(1+x<rsup|2>)<rsup|3>\<omega\>(x+x<rsup|3>)=o(x<rsup|3>),
    </equation*>

    perché il fattore <math|(1+x<rsup|2>)<rsup|3>> è limitato e l'altro tende
    a zero. Possiamo allora raccogliere i termini del grado che ci interessa:

    <\equation*>
      sin(x+x<rsup|3>)=x+x<rsup|3>-<frac|x<rsup|3>|6>+o(x<rsup|3>)=x+<frac|5|6>x<rsup|3>+o(x<rsup|3>).
    </equation*>

    Se avessimo sostituito l'argomento solo nel termine lineare avremmo
    trovato il coefficiente 1 invece di <math|5/6>. Il cubo dell'argomento
    contribuisce allo stesso grado, e non possiamo ignorarlo.
  </guidato>

  <subsection|Un argomento che cambia la scala del resto>

  In <math|sin(x<rsup|3>)> i gradi cambiano in un altro modo, perché ogni
  potenza dell'argomento diventa una potenza di grado triplo in <math|x>, e i
  primi gradi che compaiono sono 3, 9 e 15. Supponiamo di volere un resto
  <math|o(x<rsup|14>)>. Nel polinomio finale bastano i primi due termini, ma
  per giustificare l'errore conviene partire da uno sviluppo che controlli
  anche il grado successivo. Taylor del seno fino all'ordine 5 dà

  <\equation*>
    sin(x<rsup|3>)=x<rsup|3>-<frac|x<rsup|9>|6>+<frac|x<rsup|15>|120>+o(x<rsup|15>),
  </equation*>

  e il termine di grado 15, insieme al suo resto, è <math|o(x<rsup|14>)>.
  Quindi

  <\equation*>
    sin(x<rsup|3>)=x<rsup|3>-<frac|x<rsup|9>|6>+o(x<rsup|14>).
  </equation*>

  In generale, sostituendo <math|t=a*x<rsup|b>> in un resto
  <math|o(t<rsup|m>)>, con <math|a\<neq\>0> e <math|b\<gtr\>0>, otteniamo
  <math|o(x<rsup|b*m>)>, perché il resto diventa
  <math|a<rsup|m>x<rsup|b*m>\<omega\>(a*x<rsup|b>)>. Per esponenti non interi
  scegliamo un lato su cui le potenze siano definite.

  <subsection|La composizione di due sviluppi: perché funziona>

  Possiamo ora giustificare il procedimento in generale. Supponiamo che
  <math|f> e <math|g> abbiano in zero polinomi di Taylor <math|P> e <math|Q>
  di ordine <math|m\<geq\>1>, e che <math|f(0)=0>. Allora, sul dominio della
  composta,

  <\equation*>
    g(f(x))=Q(P(x))+o(x<rsup|m>),
  </equation*>

  e dal polinomio composto possiamo poi scartare i gradi maggiori di
  <math|m>. Per dimostrarlo dobbiamo controllare due errori, quello già
  presente nello sviluppo esterno e quello che commettiamo sostituendo
  <math|P> al posto di <math|f>.

  Il primo errore è un <math|o(t<rsup|m>)> calcolato in <math|t=f(x)>. Poiché
  <math|P(0)=0>, il polinomio <math|P> è uguale a <math|x> per un altro
  polinomio, e quindi lo sviluppo di <math|f> dà <math|f(x)=O(x)> e
  <math|f(x)\<rightarrow\>0>. La regola sui resti del capitolo 11 permette
  allora di concludere che <math|o(f(x)<rsup|m>)=o(x<rsup|m>)>.

  Per il secondo errore guardiamo prima un quadrato. La fattorizzazione

  <\equation*>
    f<rsup|2>-P<rsup|2>=(f-P)(f+P)
  </equation*>

  mostra che la differenza è il prodotto di un <math|o(x<rsup|m>)> per una
  quantità limitata vicino a zero, quindi è ancora un <math|o(x<rsup|m>)>.
  Per una potenza qualsiasi la stessa idea usa la fattorizzazione

  <\equation*>
    f<rsup|k>-P<rsup|k>=(f-P)<big|sum><rsub|j=0><rsup|k-1>f<rsup|k-1-j>P<rsup|j><space|1em>(k\<geq\>1),
  </equation*>

  in cui la somma ha un numero fisso di termini, tutti limitati. Ogni potenza
  cambia quindi soltanto di un <math|o(x<rsup|m>)>, e possiamo sostituire
  <math|f> con <math|P> in ciascun termine di <math|Q> e sommare gli errori.
  Se <math|f(x)=0> in qualche punto, usiamo il resto esterno prolungato con
  valore zero nel centro, come nel capitolo 11. Infine i termini di
  <math|Q(P)> di grado maggiore di <math|m> sono già <math|o(x<rsup|m>)>, e
  questo giustifica l'ultima selezione dei gradi.

  <subsection|Il centro esterno: coseno del seno e seno del coseno>

  Nella composizione bisogna anche guardare dove va a finire l'argomento
  della funzione esterna. Per <math|cos(sin x)> l'argomento tende a zero,
  quindi usiamo lo sviluppo del coseno in zero. Prima calcoliamo le potenze
  dell'argomento che ci servono,

  <\equation*>
    sin<rsup|2>x=x<rsup|2>-<frac|x<rsup|4>|3>+o(x<rsup|4>),<space|1em>sin<rsup|4>x=x<rsup|4>+o(x<rsup|4>),
  </equation*>

  e poi le inseriamo in <math|cos u=1-u<rsup|2>/2+u<rsup|4>/24+o(u<rsup|4>)>.
  Il coefficiente di grado 4 è <math|1/6+1/24=5/24>, e otteniamo

  <\equation*>
    cos(sin x)=1-<frac|x<rsup|2>|2>+<frac|5|24>x<rsup|4>+o(x<rsup|4>).
  </equation*>

  Per <math|sin(cos x)> la situazione è diversa, perché l'argomento tende a
  1. Dobbiamo quindi sviluppare il seno attorno a 1, scrivendo l'argomento
  come <math|1+h> con

  <\equation*>
    h=cos x-1=-<frac|x<rsup|2>|2>+o(x<rsup|3>).
  </equation*>

  Supponiamo di volere un resto <math|o(x<rsup|3>)>. Lo sviluppo lineare del
  seno, con errore <math|o(h)>, darebbe soltanto un errore
  <math|o(x<rsup|2>)>, che non basta. Passiamo allora al secondo ordine:

  <\equation*>
    sin(1+h)=sin 1+cos 1\<cdot\>h-<frac|sin 1|2>h<rsup|2>+o(h<rsup|2>).
  </equation*>

  Poiché <math|h=O(x<rsup|2>)>, il suo quadrato è <math|O(x<rsup|4>)>, che è
  un <math|o(x<rsup|3>)>, e anche il resto composto è trascurabile alla scala
  che ci interessa. Rimane

  <\equation*>
    sin(cos x)=sin 1-<frac|cos 1|2>x<rsup|2>+o(x<rsup|3>).
  </equation*>

  Il termine quadratico dello sviluppo esterno non compare nel risultato, ma
  ci è servito a garantire che il resto fosse abbastanza piccolo.

  <section|Parte principale e ordine di infinitesimo>

  Confrontiamo <math|sin x> e <math|arctan x>. Entrambe le funzioni
  cominciano con <math|x>, quindi nella loro differenza i termini lineari si
  cancellano e dobbiamo guardare il grado successivo:

  <\equation*>
    sin x-arctan x=<around*|(|-<frac|1|6>+<frac|1|3>|)>x<rsup|3>+o(x<rsup|3>)=<frac|x<rsup|3>|6>+o(x<rsup|3>).
  </equation*>

  Il primo termine che sopravvive ci dice quanto è piccola la differenza, e
  merita un nome.

  <\concetto|Parte principale>
    Se <math|f(x)=a*x<rsup|b>+o(x<rsup|b>)>, con <math|a\<neq\>0>, il monomio
    <math|a*x<rsup|b>> è la parte principale di <math|f> rispetto a <math|x>.
    Quando <math|b\<gtr\>0>, <math|f> è un infinitesimo di ordine <math|b>.
    Con Taylor cerchiamo il monomio di grado più basso con coefficiente non
    nullo, dopo le cancellazioni.
  </concetto>

  Con le parti principali molti limiti diventano immediati. Per esempio
  <math|(sin x-arctan x)/(e<rsup|x<rsup|3>>-1)\<rightarrow\>1/6>, perché al
  numeratore abbiamo <math|x<rsup|3>/6+o(x<rsup|3>)> e al denominatore
  <math|x<rsup|3>+o(x<rsup|3>)>, e raccogliendo <math|x<rsup|3>> resta un
  rapporto di quantità che tendono a <math|1/6> e a 1.

  Per una differenza di reciproci conviene prima fare il denominatore comune,
  così la cancellazione diventa visibile:

  <\equation*>
    <frac|1|sin x>-<frac|1|x>=<frac|x-sin x|x sin
    x>=<frac|x<rsup|3>/6+o(x<rsup|3>)|x<rsup|2>+o(x<rsup|2>)>=<frac|x|6>+o(x).
  </equation*>

  Gli sviluppi permettono anche di leggere le derivate dai coefficienti,
  purché sappiamo già che quelle derivate esistono.

  Prendiamo <math|f(x)=(sin x)<rsup|3>> e moltiplichiamo tre copie di
  <math|x-x<rsup|3>/6+o(x<rsup|3>)>. Il termine di grado 3 si ottiene
  prendendo <math|x> da tutti e tre i fattori. Per arrivare al grado 5
  dobbiamo prendere il termine cubico da uno dei fattori e quello lineare
  dagli altri due, e ci sono tre modi di farlo, quindi il contributo è
  <math|3x<rsup|2>(-x<rsup|3>/6)=-x<rsup|5>/2>. Anche il resto ha la
  precisione giusta. Ogni <math|o(x<rsup|3>)> viene moltiplicato per due
  fattori <math|O(x)> e diventa un <math|o(x<rsup|5>)>, e i prodotti con
  almeno due termini cubici hanno grado almeno 7. Otteniamo così
  <math|f=x<rsup|3>-x<rsup|5>/2+o(x<rsup|5>)>.

  La funzione è derivabile quante volte vogliamo, quindi per Taylor e per
  l'unicità il coefficiente di <math|x<rsup|5>> è <math|f<rsup|(5)>(0)/5!>.
  Da <math|f<rsup|(5)>(0)/5!=-1/2> ricaviamo <math|f<rsup|(5)>(0)=-60>.
  L'unicità permette di riconoscere il coefficiente, ma non crea derivate che
  non sapessimo già esistere.

  <section|Reciproci e potenze variabili>

  Per ottenere lo sviluppo della tangente dividiamo quello del seno per
  quello del coseno. Conviene prima invertire il denominatore, usando
  <math|1/(1+t)=1-t+t<rsup|2>-t<rsup|3>+o(t<rsup|3>)> con

  <\equation*>
    t=cos x-1=-<frac|x<rsup|2>|2>+<frac|x<rsup|4>|24>+o(x<rsup|5>).
  </equation*>

  Poiché <math|t=O(x<rsup|2>)>, il suo cubo e il resto composto sono
  <math|o(x<rsup|5>)>. Il termine <math|-t> contribuisce con
  <math|x<rsup|2>/2-x<rsup|4>/24> e il termine <math|t<rsup|2>> con
  <math|x<rsup|4>/4+o(x<rsup|5>)>, quindi il coefficiente di grado 4 è
  <math|-1/24+1/4=5/24> e

  <\equation*>
    <frac|1|cos x>=1+<frac|x<rsup|2>|2>+<frac|5|24>x<rsup|4>+o(x<rsup|5>).
  </equation*>

  Ora moltiplichiamo per <math|sin x=x-x<rsup|3>/6+x<rsup|5>/120+o(x<rsup|5>)>.
  Al grado 3 il coefficiente è <math|1/2-1/6=1/3>, e al grado 5 è
  <math|5/24-1/12+1/120=2/15>. Dunque

  <\equation*>
    tan x=x+<frac|x<rsup|3>|3>+<frac|2x<rsup|5>|15>+o(x<rsup|5>).
  </equation*>

  Possiamo controllare il risultato con l'inversa. Se inseriamo
  <math|x+a*x<rsup|3>+b*x<rsup|5>> nello sviluppo dell'arcotangente e
  imponiamo <math|arctan(tan x)=x>, troviamo le condizioni <math|a-1/3=0> e
  <math|b-a+1/5=0>, che danno di nuovo <math|a=1/3> e <math|b=2/15>.

  <subsection|Una potenza variabile: prima studiare l'esponente>

  Con le potenze variabili il primo passo è sempre passare all'esponenziale.
  Per <math|(1+sin x)<rsup|x>> la base è positiva vicino a zero, e possiamo
  scrivere

  <\equation*>
    (1+sin x)<rsup|x>=e<rsup|u(x)>,<space|2em>u(x)=x log(1+sin x).
  </equation*>

  Quanti termini del logaritmo ci servono? Il fattore <math|x> davanti alza
  tutti i gradi di uno, quindi per avere l'esponente fino al grado 3 basta il
  logaritmo fino al grado 2. Troviamo <math|log(1+sin
  x)=x-x<rsup|2>/2+o(x<rsup|2>)>, e quindi
  <math|u=x<rsup|2>-x<rsup|3>/2+o(x<rsup|3>)>. Poiché <math|u=O(x<rsup|2>)>,
  nello sviluppo <math|e<rsup|u>=1+u+u<rsup|2>/2+o(u<rsup|2>)> il termine
  <math|u<rsup|2>/2> e il resto sono già <math|o(x<rsup|3>)>. Ne segue

  <\equation*>
    (1+sin x)<rsup|x>=1+x<rsup|2>-<frac|x<rsup|3>|2>+o(x<rsup|3>).
  </equation*>

  <subsection|Una potenza che tende a e>

  Sappiamo che <math|(1+x)<rsup|1/x>\<rightarrow\>e>, e ora ci chiediamo con
  quale velocità. Per studiare <math|(1+x)<rsup|1/x>-e> dobbiamo capire
  quanto l'esponente <math|log(1+x)/x> si discosta da 1, e lo sviluppo del
  logaritmo dà

  <\equation*>
    <frac|log(1+x)|x>=1-<frac|x|2>+o(x).
  </equation*>

  Raccogliendo <math|e> e usando <math|e<rsup|v>-1=v+o(v)>, con
  <math|v=log(1+x)/x-1=-x/2+o(x)>, otteniamo

  <\equation*>
    (1+x)<rsup|1/x>-e=e<around*|(|e<rsup|log(1+x)/x-1>-1|)>=-<frac|e|2>x+o(x).
  </equation*>

  La parte principale è quindi <math|-e*x/2>. Il passaggio al logaritmo ha
  trasformato una potenza variabile in un piccolo incremento dell'esponente,
  che sappiamo trattare.

  <section|Funzioni iperboliche: una nuova lettura dell'esponenziale>

  Ogni funzione definita su <math|\<bbb-R\>> si può scrivere come somma di
  una parte pari e di una dispari, e per l'esponenziale queste due parti sono
  così utili da avere un nome. La metà della somma di <math|e<rsup|x>> ed
  <math|e<rsup|-x>> è pari, e la metà della loro differenza è dispari.
  Definiamo

  <\equation*>
    sinh x=<frac|e<rsup|x>-e<rsup|-x>|2>,<space|1.5em>cosh
    x=<frac|e<rsup|x>+e<rsup|-x>|2>,<space|1.5em>tanh x=<frac|sinh x|cosh x>.
  </equation*>

  Sono il <strong|seno iperbolico>, il <strong|coseno iperbolico> e la
  <strong|tangente iperbolica>. Il coseno iperbolico è sempre positivo,
  quindi tutte e tre sono definite su <math|\<bbb-R\>>, e per costruzione
  <math|cosh x+sinh x=e<rsup|x>>. Non servono nuovi strumenti per studiarle,
  perché tutto si ricava dalle proprietà dell'esponenziale.

  Il seno e la tangente iperbolici sono dispari, mentre il coseno iperbolico
  è pari. Per <math|x\<rightarrow\>+\<infty\>> sia <math|sinh x> sia
  <math|cosh x> tendono a <math|+\<infty\>>, mentre

  <\equation*>
    tanh x=<frac|1-e<rsup|-2x>|1+e<rsup|-2x>>\<rightarrow\>1.
  </equation*>

  Per simmetria, a <math|-\<infty\>> il seno iperbolico tende a
  <math|-\<infty\>>, il coseno a <math|+\<infty\>> e la tangente a <math|-1>.
  Nonostante i nomi, nessuna di queste funzioni è periodica.

  <subsection|Monotonia e identità fondamentali>

  Il seno iperbolico è strettamente crescente, perché è la metà della somma
  di <math|e<rsup|x>> e di <math|-e<rsup|-x>>, che crescono entrambe. Anche
  la tangente iperbolica cresce, perché si scrive <math|(z-1)/(z+1)> con
  <math|z=e<rsup|2x>>, e sia <math|z> come funzione di <math|x> sia
  <math|(z-1)/(z+1)> come funzione di <math|z\<gtr\>0> sono crescenti.

  Il coseno iperbolico ha invece un minimo, che vale 1 ed è raggiunto in
  zero, perché <math|e<rsup|x>+e<rsup|-x>-2=(e<rsup|x/2>-e<rsup|-x/2>)<rsup|2>\<geq\>0>.
  Sul semiasse positivo cresce. Per vederlo prendiamo
  <math|1\<leq\>z\<less\>w> e confrontiamo <math|w+1/w> con <math|z+1/z>. La
  loro differenza è <math|(w-z)(1-1/(w*z))>, che è positiva, e applicando
  questo confronto a <math|z=e<rsup|x>> otteniamo la crescenza.

  <figura|<image|assets/iperboliche.pdf|130.0mm|72.5mm||>|Il coseno
  iperbolico è pari e ha minimo 1; il seno iperbolico passa per l'origine. La
  tangente iperbolica resta tra <math|-1> e 1 e si avvicina ai due asintoti.>

  Se eleviamo al quadrato le definizioni e sottraiamo, i termini
  <math|e<rsup|2x>> ed <math|e<rsup|-2x>> si cancellano e resta la relazione
  fondamentale

  <\equation*>
    cosh<rsup|2>x-sinh<rsup|2>x=1.
  </equation*>

  Sommando invece i quadrati otteniamo <math|cosh(2x)=cosh<rsup|2>x+sinh<rsup|2>x>,
  e moltiplicando le definizioni troviamo <math|sinh(2x)=2sinh x cosh x>. Le
  formule assomigliano a quelle trigonometriche, ma con segni diversi, e la
  differenza più importante è che qui la relazione fondamentale è una
  differenza di quadrati.

  <subsection|Derivate e sviluppi>

  Derivando gli esponenziali nelle definizioni troviamo

  <\equation*>
    (sinh x)<rprime|'>=cosh x,<space|1.5em>(cosh x)<rprime|'>=sinh
    x,<space|1.5em>(tanh x)<rprime|'>=<frac|1|cosh<rsup|2>x>=1-tanh<rsup|2>x,
  </equation*>

  senza i segni meno che compaiono nelle derivate trigonometriche. Prendendo
  la metà della somma e della differenza degli sviluppi di <math|e<rsup|x>>
  ed <math|e<rsup|-x>> otteniamo

  <\equation*>
    sinh x=x+<frac|x<rsup|3>|6>+<frac|x<rsup|5>|120>+o(x<rsup|5>),
  </equation*>

  <\equation*>
    cosh x=1+<frac|x<rsup|2>|2>+<frac|x<rsup|4>|24>+o(x<rsup|5>).
  </equation*>

  Sono gli stessi sviluppi di seno e coseno, ma con tutti i coefficienti
  positivi. In particolare <math|tanh x\<sim\>x> per <math|x\<rightarrow\>0>.

  <subsection|Per proseguire: inverse e settori iperbolici>

  Il seno iperbolico è una biiezione da <math|\<bbb-R\>> in <math|\<bbb-R\>>,
  e la tangente iperbolica da <math|\<bbb-R\>> in <math|(-1,1)>. Il coseno
  iperbolico, invece, per essere invertibile va ristretto a
  <math|[0,+\<infty\>)>, e la sua immagine è <math|[1,+\<infty\>)>. Le
  inverse si chiamano <strong|settori iperbolici>, e qui le indichiamo con
  <math|<math-up|Sett sinh>>, <math|<math-up|Sett cosh>> e
  <math|<math-up|Sett tanh>>.

  Poiché le funzioni iperboliche sono costruite con l'esponenziale, le loro
  inverse si possono scrivere con il logaritmo. Ricaviamo la formula per il
  settore coseno iperbolico. Per <math|y\<geq\>1> cerchiamo <math|t\<geq\>0>
  con <math|cosh t=y>. Ponendo <math|z=e<rsup|t>> l'equazione diventa
  <math|z<rsup|2>-2y*z+1=0>, che ha le radici
  <math|y\<pm\><sqrt|y<rsup|2>-1>>. Entrambe sono positive e il loro prodotto
  è 1, quindi una è maggiore o uguale a 1 e l'altra minore o uguale. Poiché
  <math|t\<geq\>0> richiede <math|z\<geq\>1>, scegliamo il segno positivo:

  <\equation*>
    <math-up|Sett cosh>(y)=log(y+<sqrt|y<rsup|2>-1>)<space|2em>(y\<geq\>1).
  </equation*>

  Da dove viene il nome \Ssettore\T? La relazione fondamentale dice che il
  punto <math|(cosh \<alpha\>,sinh \<alpha\>)> sta sull'iperbole
  <math|X<rsup|2>-Y<rsup|2>=1>, come <math|(cos \<alpha\>,sin \<alpha\>)> sta
  sulla circonferenza. Per <math|\<alpha\>\<geq\>0>, il parametro
  <math|\<alpha\>> è il doppio dell'area del settore compreso fra l'asse
  orizzontale, l'arco di iperbole e il raggio che va dall'origine a quel
  punto. Non dimostriamo questo fatto geometrico, che qui serve solo come
  interpretazione e non come strumento di calcolo.

  <figura|<image|assets/iperbole.pdf|155.0mm|65.0mm||>|Il parametro circolare
  e quello iperbolico si leggono attraverso l'area di un settore: in entrambi
  i disegni l'area indicata è <math|\<alpha\>/2>. Le curve soddisfano
  rispettivamente una somma e una differenza di quadrati uguale a 1.>

  La somiglianza con la trigonometria ha anche una ragione più profonda, che
  si vede con i numeri complessi. Usando la formula di Eulero e l'estensione
  complessa delle funzioni si trova <math|cosh(i*x)=cos x> e
  <math|sinh(i*x)=i sin x>. È un collegamento che incontreremo più avanti. Il
  teorema di Taylor con resto di Peano, da solo, non permette né di
  sostituire numeri complessi né di trasformare uno sviluppo finito in una
  somma infinita.

  <section|Scegliere l'ordine: un limite completo>

  Chiudiamo con un limite che mette insieme quasi tutto ciò che abbiamo
  visto, quello per <math|x\<rightarrow\>0> del rapporto

  <\equation*>
    <frac|log(1+sin<rsup|2>x)-x<rsup|2>|sin<rsup|2>(tanh<rsup|2>x)-x<rsup|5>>.
  </equation*>

  La domanda chiave è fino a quale ordine sviluppare ciascun pezzo, e la
  risposta cambia fra numeratore e denominatore. Cominciamo dal denominatore.
  Poiché <math|tanh x\<sim\>x>, abbiamo <math|tanh<rsup|2>x\<sim\>x<rsup|2>>
  e quindi <math|sin(tanh<rsup|2>x)\<sim\>x<rsup|2>>, e il suo quadrato è
  <math|x<rsup|4>+o(x<rsup|4>)>. Il termine <math|x<rsup|5>> è trascurabile,
  e la parte principale del denominatore è <math|x<rsup|4>>. Qui le
  equivalenze sono bastate perché non c'era nessuna cancellazione.

  Al numeratore, invece, il termine di grado 2 viene sottratto, e per sapere
  che cosa resta dobbiamo arrivare fino al grado 4, lo stesso del
  denominatore. Sviluppiamo prima il quadrato del seno,

  <\equation*>
    sin<rsup|2>x=x<rsup|2>-<frac|x<rsup|4>|3>+o(x<rsup|4>),
  </equation*>

  e poi sostituiamo <math|t=sin<rsup|2>x> in
  <math|log(1+t)=t-t<rsup|2>/2+o(t<rsup|2>)>. Poiché
  <math|t\<sim\>x<rsup|2>>, il resto diventa <math|o(x<rsup|4>)>, e il
  termine <math|t<rsup|2>/2> contribuisce con
  <math|x<rsup|4>/2+o(x<rsup|4>)>. Ne segue

  <\equation*>
    log(1+sin<rsup|2>x)=x<rsup|2>-<frac|x<rsup|4>|3>-<frac|x<rsup|4>|2>+o(x<rsup|4>)=x<rsup|2>-<frac|5|6>x<rsup|4>+o(x<rsup|4>).
  </equation*>

  Il numeratore è quindi <math|-5x<rsup|4>/6+o(x<rsup|4>)>, e il limite del
  rapporto vale <math|-5/6>. Abbiamo usato ordini diversi nei due pezzi,
  perché al denominatore bastavano le equivalenze, mentre al numeratore la
  cancellazione ci obbligava a cercare un termine in più.

  <subsection|Controllare il centro anche nelle successioni>

  Con le successioni vale la stessa attenzione al centro dello sviluppo. Un
  argomento come <math|1/n> tende a zero, e possiamo usare gli sviluppi in
  zero. Un argomento come <math|n>, invece, tende all'infinito. In
  <math|(2cos n-2+n<rsup|2>)/n<rsup|4>>, per esempio, non possiamo sostituire
  il polinomio di Taylor del coseno, perché <math|n> non è vicino a zero. Qui
  basta la limitatezza <math|\|cos n\|\<leq\>1>, che dà subito il limite
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

  Le soluzioni seguono l'ordine dei capitoli, e il numero 4.1 indica il primo
  esercizio della Verifica 4. Prima di leggere una soluzione conviene provare
  almeno a scegliere il primo passaggio e a spiegarsi perché lo si sceglie.
  Nelle soluzioni facciamo attenzione anche alle condizioni di dominio e al
  controllo degli errori, perché è lì che si nascondono gli sbagli più
  comuni.

  <subsection*|Capitolo 1 \<#2014\> Logica e insiemi>

  <strong|1.1.> Indichiamo con <math|P(a,s,e)> la frase \Snell'anno <math|a>
  lo studente <math|s> fallisce l'esame <math|e>\T. L'enunciato diventa
  allora <math|\<forall\>a\<exists\>s\<forall\>e,P(a,s,e)>.

  Neghiamo i quantificatori uno alla volta, partendo dall'esterno. \SPer ogni
  anno\T diventa \Sesiste un anno\T, \Sesiste uno studente\T diventa \Sper
  ogni studente\T e \Stutti gli esami\T diventa \Sesiste un esame\T, mentre
  il predicato viene negato. Otteniamo <math|\<exists\>a\<forall\>s\<exists\>e,\<neg\>P(a,s,e)>,
  cioè esiste un anno in cui ogni studente supera almeno un esame, se
  assumiamo che non fallire un esame significhi superarlo. Notiamo che
  l'esame superato può cambiare da uno studente all'altro, e quindi non serve
  un esame superato da tutti.

  <strong|1.2.> Per formare un sottoinsieme di <math|{a,b}>, con
  <math|a\<neq\>b>, decidiamo se prendere <math|a> e se prendere <math|b>. Le
  quattro scelte danno <math|\<cal-P\>({a,b})={\<varnothing\>,{a},{b},{a,b}}>.

  La frase <math|\<varnothing\>\<in\>{\<varnothing\>}> è vera, perché il
  vuoto è l'unico elemento dell'insieme a destra. Anche
  <math|\<varnothing\>\<subseteq\>{\<varnothing\>}> è vera, perché il vuoto è
  contenuto in ogni insieme. La frase <math|{\<varnothing\>}\<subseteq\>\<varnothing\>>
  è invece falsa, perché il primo insieme ha un elemento, il vuoto, che non
  può appartenere a un insieme senza elementi.

  <subsection*|Capitolo 2 \<#2014\> Funzioni>

  <strong|2.1.> Per capire se ogni <math|y> viene raggiunto risolviamo
  <math|y=3x-2> rispetto a <math|x>, e troviamo <math|x=(y+2)/3>. Per ogni
  <math|y\<in\>\<bbb-R\>> questo dà un'entrata, quindi <math|f> è suriettiva.
  L'entrata è anche unica, perché l'equazione ha una sola soluzione. Possiamo
  verificarlo anche direttamente, perché <math|3x<rsub|1>-2=3x<rsub|2>-2>
  implica <math|x<rsub|1>=x<rsub|2>>, e quindi <math|f> è iniettiva.

  L'inversa è dunque <math|f<rsup|-1>(y)=(y+2)/3>, e sostituendo si controlla
  che entrambe le composizioni danno l'identità.

  <strong|2.2.> Sull'intervallo <math|[-1,2]> il quadrato raggiunge il valore
  minimo 0 in un punto interno, cioè in <math|x=0>, e il massimo 4 in
  <math|x=2>. Ogni valore intermedio fra 0 e 4 viene raggiunto, perché la sua
  radice non negativa sta in <math|[0,2]>. Quindi <math|q([-1,2])=[0,4]>. Se
  avessimo calcolato la funzione soltanto agli estremi avremmo trovato 1 e 4,
  e avremmo concluso erroneamente <math|[1,4]>, perdendo il minimo interno.

  Per la controimmagine ci chiediamo quali entrate hanno quadrato compreso
  fra 1 e 4. Dobbiamo avere <math|1\<leq\>x<rsup|2>\<leq\>4>, cioè
  <math|1\<leq\>\|x\|\<leq\>2>, e la risposta è <math|[-2,-1]\<cup\>[1,2]>.

  <subsection*|Capitolo 3 \<#2014\> Induzione>

  <strong|3.1.> Per <math|n=1> entrambi i membri valgono 1. Supponiamo ora
  che <math|1+\<cdots\>+n=n(n+1)/2> e aggiungiamo il nuovo addendo
  <math|n+1>:

  <\equation*>
    1+\<cdots\>+n+(n+1)=<frac|n(n+1)|2>+(n+1)=<frac|(n+1)(n+2)|2>.
  </equation*>

  L'ipotesi induttiva entra nella prima uguaglianza, dove sostituiamo la
  somma fino a <math|n> con la sua formula. L'ultima espressione è la formula
  con <math|n+1> al posto di <math|n>, e l'induzione è conclusa.

  <strong|3.2.> Cominciamo dai primi casi. Per <math|n=0> la disuguaglianza è
  <math|1\<geq\>1>, vera. Per 1, 2 e 3 è falsa, perché confrontiamo 1 con 2,
  2 con 4 e 6 con 8. Per <math|n=4> torna vera, perché <math|24\<geq\>16>, e
  da qui proviamo a ripartire.

  Supponiamo che <math|n!\<geq\>2<rsup|n>> per un certo <math|n\<geq\>4>. Nel
  fattoriale successivo separiamo il fattore nuovo e otteniamo

  <\equation*>
    (n+1)!=(n+1)n!\<geq\>(n+1)2<rsup|n>\<geq\>2\<cdot\>2<rsup|n>=2<rsup|n+1>,
  </equation*>

  dove l'ultimo confronto usa <math|n+1\<geq\>2>. La base 4 e il passo
  coprono tutti i casi successivi, e la risposta completa è <math|n=0> oppure
  <math|n\<geq\>4>. Questo esercizio mostra perché la scelta della base
  conta. Il caso <math|n=0> è vero, ma da solo non può propagarsi attraverso
  i tre casi falsi che lo seguono.

  <subsection*|Capitolo 4 \<#2014\> Completezza ed estremi>

  <strong|4.1.> Per <math|n\<geq\>1> abbiamo <math|1-1/n\<geq\>0>, e con
  <math|n=1> otteniamo 0. Lo zero è quindi un elemento dell'insieme ed è
  minore o uguale a tutti gli altri, cioè <math|min A=inf A=0>.

  Tutti gli elementi sono minori di 1, che è quindi un maggiorante. Per
  vedere che è il più piccolo usiamo la caratterizzazione con
  <math|\<varepsilon\>>. Dato <math|\<varepsilon\>\<gtr\>0>, la proprietà
  archimedea ci permette di scegliere <math|n\<gtr\>1/\<varepsilon\>>, e
  allora <math|1-1/n\<gtr\>1-\<varepsilon\>>. Quindi <math|sup A=1>. Il
  massimo non esiste, perché 1 non appartiene ad <math|A>.

  <strong|4.2.> Chiamiamo <math|l=inf A>. Poiché <math|l\<leq\>a> per ogni
  <math|a\<in\>A>, cambiando segno otteniamo <math|-a\<leq\>-l>, e quindi
  <math|-l> è un maggiorante di <math|-A>.

  Resta da mostrare che è il più piccolo. Supponiamo per assurdo che esista
  un maggiorante <math|M> di <math|-A> con <math|M\<less\>-l>. Allora
  <math|-a\<leq\>M> per ogni <math|a\<in\>A>, cioè <math|-M\<leq\>a>, e
  quindi <math|-M> sarebbe un minorante di <math|A>. Ma <math|-M\<gtr\>l>, e
  un minorante non può essere maggiore dell'infimo. Dunque
  <math|sup(-A)=-l=-inf A>.

  <subsection*|Capitolo 5 \<#2014\> Grafici e funzioni elementari>

  <strong|5.1.> Un valore assoluto non è mai negativo, quindi per
  <math|\<lambda\>\<less\>0> non ci sono soluzioni. Per <math|\<lambda\>=0>
  dobbiamo avere <math|x<rsup|2>-4=0>, e le soluzioni sono due,
  <math|x=\<pm\>2>.

  Per <math|\<lambda\>\<gtr\>0> la quantità dentro il modulo può valere
  <math|\<lambda\>> oppure <math|-\<lambda\>>, quindi dobbiamo risolvere le
  due equazioni

  <\equation*>
    x<rsup|2>=4+\<lambda\>,<space|2em>x<rsup|2>=4-\<lambda\>.
  </equation*>

  La prima ha sempre due soluzioni, perché <math|4+\<lambda\>\<gtr\>0>. Nella
  seconda il numero a destra cambia segno in <math|\<lambda\>=4>, e quindi le
  soluzioni sono due per <math|0\<less\>\<lambda\>\<less\>4>, una per
  <math|\<lambda\>=4> e nessuna per <math|\<lambda\>\<gtr\>4>. In totale
  abbiamo quattro soluzioni per <math|0\<less\>\<lambda\>\<less\>4>, tre per
  <math|\<lambda\>=4> e due per <math|\<lambda\>\<gtr\>4>. Mettendo insieme
  tutti i casi, al crescere di <math|\<lambda\>> il numero di soluzioni è 0,
  2, 4, 3, 2.

  Il caso <math|\<lambda\>=0> va tenuto separato perché lì le due equazioni
  coincidono, e contandole entrambe conteremmo due volte le stesse soluzioni.

  <strong|5.2.> Prima il dominio. Gli argomenti dei logaritmi devono essere
  positivi, quindi <math|3x+1\<gtr\>0> e <math|x+5\<gtr\>0>, e insieme danno
  <math|x\<gtr\>-1/3>.

  Il logaritmo è iniettivo sui positivi, quindi due logaritmi sono uguali
  solo se lo sono i loro argomenti, e l'equazione equivale a <math|3x+1=x+5>.
  Troviamo <math|x=2>, che appartiene al dominio, e infatti entrambi gli
  argomenti valgono 7. Senza il controllo del dominio non potremmo dire che
  le due equazioni sono equivalenti.

  <subsection*|Capitolo 6 \<#2014\> Trigonometria e inverse>

  <strong|6.1.> Il seno di <math|5\<pi\>/6> vale <math|1/2>, ma
  <math|5\<pi\>/6> non sta nell'intervallo <math|[-\<pi\>/2,\<pi\>/2]>.
  L'angolo di quell'intervallo che ha lo stesso seno è <math|\<pi\>/6>,
  quindi <math|arcsin(sin(5\<pi\>/6))=\<pi\>/6>.

  Allo stesso modo il coseno di <math|7\<pi\>/4> vale <math|<sqrt|2>/2>, e
  l'angolo di <math|[0,\<pi\>]> con quel coseno è <math|\<pi\>/4>. Quindi
  <math|arccos(cos(7\<pi\>/4))=\<pi\>/4>.

  <strong|6.2.> Perché l'arcocoseno sia definito serve <math|t\<in\>[-1,1]>.
  Posto <math|\<alpha\>=arccos t>, sappiamo che <math|cos \<alpha\>=t> e,
  come nel capitolo, che <math|sin \<alpha\>=<sqrt|1-t<rsup|2>>>.

  La tangente di <math|\<alpha\>> esiste quando <math|cos \<alpha\>\<neq\>0>,
  cioè quando <math|t\<neq\>0>. Il dominio è quindi
  <math|[-1,0)\<cup\>(0,1]>, e su questo dominio

  <\equation*>
    tan(arccos t)=<frac|<sqrt|1-t<rsup|2>>|t>.
  </equation*>

  Agli estremi <math|t=\<pm\>1> il numeratore si annulla mentre il
  denominatore no, e la formula dà correttamente 0. Per <math|t\<less\>0> il
  rapporto è negativo, come deve essere la tangente di un angolo del secondo
  quadrante.

  <subsection*|Capitolo 7 \<#2014\> Successioni e definizione di limite>

  <strong|7.1.> Il limite proposto è 1, quindi conviene calcolare la distanza
  da 1. Per <math|n\<geq\>0> otteniamo

  <\equation*>
    <around*|\||<frac|n|n+1>-1|\|>=<frac|1|n+1>.
  </equation*>

  Fissiamo <math|\<varepsilon\>\<gtr\>0> e scegliamo un intero
  <math|N\<geq\>1/\<varepsilon\>>. Per ogni <math|n\<geq\>N> abbiamo
  <math|1/(n+1)\<less\>1/N\<leq\>\<varepsilon\>>, e questo dimostra il limite
  con la definizione. Inoltre <math|n/(n+1)\<less\>1> per ogni
  <math|n\<geq\>0>, quindi i termini arrivano da sinistra e possiamo scrivere
  <math|1<rsup|->>.

  <strong|7.2.> Il termine alterno <math|2(-1)<rsup|n>> non è mai minore di
  <math|-2>, quindi <math|a<rsub|n>\<geq\>n-2>, che tende a
  <math|+\<infty\>>. Per confronto anche <math|a<rsub|n>\<rightarrow\>+\<infty\>>.

  La monotonia è un'altra questione. Confrontando un indice pari con il
  dispari successivo troviamo

  <\equation*>
    a<rsub|2k>=2k+2,<space|2em>a<rsub|2k+1>=2k-1,
  </equation*>

  quindi in ciascuno di questi passaggi la successione scende di 3, e questo
  succede per quanto avanti andiamo. La successione non è dunque
  definitivamente crescente, neppure in senso debole. L'esempio mostra che
  una successione può superare qualsiasi quota pur continuando a fare qualche
  passo indietro.

  <subsection*|Capitolo 8 \<#2014\> Monotonia e algebra dei limiti>

  <strong|8.1.> La forma della ricorrenza suggerisce di dimostrare insieme
  che i termini sono definiti e che stanno fra 1 e 2. Per <math|n=1> il
  controllo <math|1\<leq\>a<rsub|n>\<leq\>2> è vero. Se vale all'indice
  <math|n>, allora <math|3\<leq\>2+a<rsub|n>\<leq\>4>, e prendendo la radice
  <math|1\<leq\><sqrt|2+a<rsub|n>>\<leq\>2>. L'induzione dimostra quindi che
  la successione è limitata e che tutti i termini sono definiti.

  Per la crescita, il primo confronto è <math|a<rsub|2>=<sqrt|3>\<gtr\>1=a<rsub|1>>.
  Se <math|a<rsub|n>\<gtr\>a<rsub|n-1>>, poiché la radice è crescente abbiamo
  <math|a<rsub|n+1>=<sqrt|2+a<rsub|n>>\<gtr\><sqrt|2+a<rsub|n-1>>=a<rsub|n>>,
  e un'altra induzione dimostra la crescita stretta. Il teorema delle
  successioni monotone garantisce allora l'esistenza di un limite reale
  <math|L>, che sta in <math|[1,2]>.

  Per calcolare <math|L> non abbiamo bisogno della continuità della radice.
  Anche i termini <math|a<rsub|n+1>> tendono a <math|L>, perché spostare la
  successione di un posto non cambia il limite. Nell'identità
  <math|a<rsub|n+1><rsup|2>=2+a<rsub|n>> compaiono solo somme e prodotti,
  quindi passando al limite otteniamo <math|L<rsup|2>=2+L>. La
  fattorizzazione <math|(L-2)(L+1)=0> dà <math|L=2> oppure <math|L=-1>, e la
  condizione <math|L\<in\>[1,2]> lascia soltanto <math|L=2>.

  Conviene notare l'ordine dei passaggi. L'equazione <math|L<rsup|2>=2+L> da
  sola non dimostra che il limite esiste, perché la abbiamo ottenuta
  supponendo che ci fosse. Prima l'esistenza, data da monotonia e
  limitatezza, e solo dopo il calcolo.

  <strong|8.2.> Il coseno è al massimo 1 e <math|n\<geq\>0>, quindi <math|n
  cos n\<leq\>n> e

  <\equation*>
    n<rsup|2>-n cos n\<geq\>n<rsup|2>-n=n(n-1).
  </equation*>

  Per <math|n\<geq\>2> il membro destro è almeno <math|n<rsup|2>/2>, che
  tende a <math|+\<infty\>>, e il confronto conclude. Non abbiamo avuto
  bisogno di sapere nulla sul comportamento di <math|cos n>, ci è bastato
  sapere che resta fra <math|-1> e 1.

  <subsection*|Capitolo 9 \<#2014\> Radici, rapporti e cancellazioni>

  <strong|9.1.> Poniamo <math|b<rsub|n>=<binom|3n|n>=(3n)!/((2n)!n!)>, che è
  sempre positivo. Nel rapporto fra termini consecutivi scriviamo prima tutti
  i fattoriali:

  <\equation*>
    <frac|b<rsub|n+1>|b<rsub|n>>=<frac|(3n+3)!|(2n+2)!(n+1)!>\<cdot\><frac|(2n)!n!|(3n)!>.
  </equation*>

  Molti fattori si semplificano. Il quoziente <math|(3n+3)!/(3n)!> lascia
  soltanto i tre fattori nuovi <math|(3n+3)(3n+2)(3n+1)>, e allo stesso modo
  al denominatore restano due fattori da <math|(2n+2)!/(2n)!> e uno da
  <math|(n+1)!/n!>. Quindi

  <\equation*>
    <frac|b<rsub|n+1>|b<rsub|n>>=<frac|(3n+3)(3n+2)(3n+1)|(2n+2)(2n+1)(n+1)>\<rightarrow\><frac|27|4>.
  </equation*>

  Per vedere l'ultimo limite basta dividere numeratore e denominatore per
  <math|n<rsup|3>>, e restano i prodotti dei coefficienti dominanti,
  <math|3\<cdot\>3\<cdot\>3=27> e <math|2\<cdot\>2\<cdot\>1=4>. Il teorema
  che collega rapporto e radice dà allora
  <math|<sqrt|b<rsub|n>|n>\<rightarrow\>27/4>. Il criterio del rapporto ci
  avrebbe detto soltanto che <math|b<rsub|n>\<rightarrow\>+\<infty\>>, mentre
  qui ci serviva l'informazione più precisa sulla radice.

  <strong|9.2.> Per <math|n\<geq\>7> il radicando è positivo, perché
  <math|n<rsup|2>-7n+2=n(n-7)+2\<geq\>2>. La radice di <math|n<rsup|2>-7n+2>
  è più piccola di <math|n>, quindi ci aspettiamo un risultato negativo.
  Razionalizzando otteniamo

  <\equation*>
    <sqrt|n<rsup|2>-7n+2>-n=<frac|-7n+2|<sqrt|n<rsup|2>-7n+2>+n>=<frac|-7+2/n|<sqrt|1-7/n+2/n<rsup|2>>+1>\<rightarrow\>-<frac|7|2>,
  </equation*>

  dove abbiamo diviso per <math|n\<gtr\>0> e usato la stima della radice
  vicino a 1 dimostrata nel capitolo. Il segno negativo conferma la
  previsione.

  <subsection*|Capitolo 10 \<#2014\> Limiti di funzioni e limiti notevoli>

  <strong|10.1.> Perché il limite da sinistra abbia senso, 2 deve essere un
  punto di accumulazione da sinistra del dominio <math|D>, cioè per ogni
  <math|\<delta\>\<gtr\>0> l'insieme <math|D\<cap\>[2-\<delta\>,2)> deve
  essere non vuoto. Con questa ipotesi, <math|lim<rsub|x\<rightarrow\>2<rsup|->>f(x)=+\<infty\>>
  significa che per ogni <math|M\<in\>\<bbb-R\>> esiste
  <math|\<delta\>\<gtr\>0> tale che <math|f(x)\<geq\>M> per ogni
  <math|x\<in\>D\<cap\>[2-\<delta\>,2)>.

  Per la continuità di <math|f(x)=3x+1> in un punto qualsiasi
  <math|x<rsub|0>\<in\>\<bbb-R\>> calcoliamo direttamente la distanza fra i
  valori, <math|\|f(x)-f(x<rsub|0>)\|=3\|x-x<rsub|0>\|>. Dato
  <math|\<varepsilon\>\<gtr\>0>, scegliamo <math|\<delta\>=\<varepsilon\>/3>.
  Se <math|\|x-x<rsub|0>\|\<leq\>\<delta\>>, la distanza fra i valori non
  supera <math|\<varepsilon\>>, come richiesto.

  <strong|10.2.> Nel primo limite gli argomenti piccoli sono <math|5x> e
  <math|2x>, e vogliamo farli comparire anche nei denominatori dei limiti
  notevoli:

  <\equation*>
    <frac|tan(5x)|log(1+2x)>=<frac|tan(5x)|5x>\<cdot\><frac|5|2>\<cdot\><frac|2x|log(1+2x)>\<rightarrow\>1\<cdot\><frac|5|2>\<cdot\>1=<frac|5|2>.
  </equation*>

  Tutte le funzioni sono definite e i denominatori sono diversi da zero per
  <math|x\<neq\>0> abbastanza vicino a zero.

  Nel secondo limite l'argomento tende a <math|3\<pi\>/2>, non a zero, quindi
  spostiamo il centro ponendo <math|y=x-3\<pi\>/2>. Allora
  <math|y\<rightarrow\>0>, <math|2x-3\<pi\>=2y> e la formula di addizione dà
  <math|cos(3\<pi\>/2+y)=sin y>. Dunque

  <\equation*>
    <frac|cos x|2x-3\<pi\>>=<frac|sin y|2y>\<rightarrow\><frac|1|2>.
  </equation*>

  Il segno positivo è coerente con quello che succede a destra di
  <math|3\<pi\>/2>, dove sia <math|sin y> sia il denominatore sono positivi.

  <strong|10.3.> Per <math|g> basta osservare che <math|2+sin x\<geq\>1>.
  Quando <math|x\<gtr\>0> otteniamo <math|g(x)\<geq\>x>, e quindi
  <math|g(x)\<rightarrow\>+\<infty\>>.

  Per <math|f> la stessa idea darebbe soltanto <math|f(x)\<geq\>0>, che non
  basta, perché il fattore <math|1+sin x> torna a zero per quanto avanti
  andiamo. Proviamo allora con due successioni di argomenti. Lungo
  <math|u<rsub|n>=\<pi\>n> il seno vale zero e
  <math|f(u<rsub|n>)=\<pi\>n\<rightarrow\>+\<infty\>>, mentre lungo
  <math|v<rsub|n>=3\<pi\>/2+2\<pi\>n> il seno vale <math|-1> e
  <math|f(v<rsub|n>)=0>. Entrambe le successioni tendono a <math|+\<infty\>>,
  ma i valori hanno limiti diversi, quindi il limite di <math|f> non esiste.

  <subsection*|Capitolo 11 \<#2014\> Simboli di Landau>

  <strong|11.1.> Vicino a zero <math|x<rsup|3>/x<rsup|2>=x\<rightarrow\>0>,
  quindi <math|x<rsup|3>=o(x<rsup|2>)>, mentre il rapporto opposto <math|1/x>
  non tende a zero. Per <math|x\<rightarrow\>+\<infty\>> i ruoli si
  scambiano, perché <math|x<rsup|2>/x<rsup|3>=1/x\<rightarrow\>0>, e quindi
  <math|x<rsup|2>=o(x<rsup|3>)>.

  Per <math|x sin(1/x)> il rapporto con <math|x> è <math|sin(1/x)>, che è
  limitato ma non tende a zero. Lungo <math|x<rsub|n>=1/(\<pi\>/2+2\<pi\>n)>
  vale 1, e lungo <math|y<rsub|n>=1/(3\<pi\>/2+2\<pi\>n)> vale <math|-1>. La
  funzione è quindi <math|O(x)>, ma non <math|o(x)>.

  <strong|11.2.> Al numeratore le due funzioni tendono entrambe a 1, quindi
  le costanti si cancellano e dobbiamo guardare i termini lineari.
  L'argomento dell'esponenziale è <math|arctan(2x)=2x+o(x)>, e sostituendolo
  in <math|e<rsup|t>=1+t+o(t)> otteniamo <math|e<rsup|arctan(2x)>=1+2x+o(x)>.
  Lo sviluppo binomiale dà <math|(1+x)<rsup|1/3>=1+x/3+o(x)>. La differenza è
  quindi <math|5x/3+o(x)>, mentre il denominatore è <math|5x-x+o(x)=4x+o(x)>.

  Dividendo numeratore e denominatore per <math|x> resta un rapporto che
  tende a <math|(5/3)/4=5/12>. Sono stati i resti espliciti a permetterci di
  sottrarre con sicurezza due quantità che tendono entrambe a 1.

  <subsection*|Capitolo 12 \<#2014\> Derivate>

  <strong|12.1.> Per l'esponenziale <math|f(0)=1> e <math|f<rprime|'>(0)=1>,
  quindi la tangente in zero è <math|y=1+x>.

  La funzione <math|\|x\|> si comporta in modo diverso. È continua in zero,
  perché i suoi valori tendono a zero da entrambi i lati, ma il suo rapporto
  incrementale è <math|\|h\|/h>, che vale 1 da destra e <math|-1> da
  sinistra, e quindi la derivata non esiste. Continuità e derivabilità non
  coincidono. La prima controlla soltanto i valori, mentre la seconda chiede
  anche che ci sia un'unica pendenza.

  <strong|12.2.> Per <math|x\<gtr\>0> scriviamo <math|x<rsup|x>=e<rsup|x log
  x>>. Derivando l'esponente con la regola del prodotto troviamo <math|(x log
  x)<rprime|'>=log x+1>, e la regola della catena dà
  <math|(x<rsup|x>)<rprime|'>=x<rsup|x>(log x+1)>.

  Per l'altra funzione scriviamo <math|(sin x)<rsup|cos x>=e<rsup|cos x
  log(sin x)>>. L'esponente ha derivata <math|-sin x log(sin
  x)+cos<rsup|2>x/sin x>, e moltiplicando per l'esponenziale otteniamo

  <\equation*>
    [(sin x)<rsup|cos x>]<rprime|'>=(sin x)<rsup|cos x><around*|(|-sin x
    log(sin x)+<frac|cos<rsup|2>x|sin x>|)>.
  </equation*>

  La condizione sulla base serve perché la potenza reale è definita
  attraverso il logaritmo, che richiede una base positiva, e perché le regole
  di derivazione si applicano su un intervallo aperto dove la base resta
  positiva.

  <subsection*|Capitolo 13 \<#2014\> De L'Hôpital e Taylor>

  <strong|13.1.> Usiamo la formula binomiale con <math|a=1/2>. Il
  coefficiente quadratico è <math|a(a-1)/2=-1/8>, quindi

  <\equation*>
    <sqrt|1+x>=1+<frac|x|2>-<frac|x<rsup|2>|8>+o(x<rsup|2>).
  </equation*>

  Togliendo il termine costante e quello lineare resta
  <math|-x<rsup|2>/8+o(x<rsup|2>)>, e dividendo per <math|x<rsup|2>> il
  limite vale <math|-1/8>. Il dominio non crea problemi, perché vicino a zero
  <math|1+x\<gtr\>0>.

  <strong|13.2.> Il rapporto delle derivate <math|1-sin x> non ha limite.
  Manca quindi un'ipotesi del teorema, e De L'Hôpital non dice nulla sul
  rapporto di partenza, né che ha limite né che non lo ha.

  Basta però riscrivere la frazione come <math|(x+cos x)/x=1+cos x/x>. Poiché
  <math|\|cos x/x\|\<leq\>1/x\<rightarrow\>0> per
  <math|x\<rightarrow\>+\<infty\>>, il limite vale 1.

  <subsection*|Capitolo 14 \<#2014\> Operazioni con gli sviluppi>

  <strong|14.1.> Per scegliere l'ordine guardiamo i fattori esterni.
  L'arcotangente è moltiplicata per <math|n>, e poi tutto è moltiplicato per
  <math|n<rsup|2>>, quindi ci serve un resto che, moltiplicato per
  <math|n<rsup|3>>, tenda ancora a zero. Taylor all'ordine 3 dà

  <\equation*>
    arctan(1/n)=<frac|1|n>-<frac|1|3n<rsup|3>>+o(1/n<rsup|3>),
  </equation*>

  e quindi <math|n arctan(1/n)=1-1/(3n<rsup|2>)+o(1/n<rsup|2>)>. Sottraendo
  da 1 e moltiplicando per <math|n<rsup|2>> resta <math|1/3+o(1)>, e il
  limite vale <math|1/3>. Non serviva arrivare al grado 4.

  <strong|14.2.> Per la frazione possiamo fare un conto esatto,

  <\equation*>
    <frac|n<rsup|3>+5|n<rsup|3>-2>=1+<frac|7|n<rsup|3>-2>=1+o(1/n),
  </equation*>

  mentre per la radice usiamo l'esponenziale, <math|4<rsup|1/n>=e<rsup|(log
  4)/n>=1+(log 4)/n+o(1/n)>.

  Il secondo termine si allontana da 1 alla scala <math|1/n>, il primo alla
  scala molto più piccola <math|1/n<rsup|3>>. È quindi la radice a
  discostarsi da 1 più lentamente, e nella differenza la parte principale è
  <math|-(log 4)/n>. Il segno meno corrisponde al fatto che, definitivamente,
  il secondo termine è il più grande dei due.

  <strong|14.3.> Il coefficiente quadratico di <math|(1+x)<rsup|1/3>> è
  <math|(1/3)(-2/3)/2=-1/9>, e sostituendo anche <math|-x> al posto di
  <math|x> troviamo

  <\equation*>
    (1\<pm\>x)<rsup|1/3>=1\<pm\><frac|x|3>-<frac|x<rsup|2>|9>+o(x<rsup|2>).
  </equation*>

  Nella somma i termini lineari, con segni opposti, si cancellano, mentre
  quelli quadratici si sommano, e il numeratore diventa
  <math|-2x<rsup|2>/9+o(x<rsup|2>)>. Il denominatore è
  <math|x<rsup|2>/2+o(x<rsup|2>)>, perché <math|x<rsup|4>=o(x<rsup|2>)>. Il
  limite vale quindi <math|(-2/9)/(1/2)=-4/9>.
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
    <associate|auto-10|<tuple|2.4|10>>
    <associate|auto-11|<tuple|2.5|10>>
    <associate|auto-12|<tuple|3|11>>
    <associate|auto-13|<tuple|3.1|11>>
    <associate|auto-14|<tuple|3.2|11>>
    <associate|auto-15|<tuple|3.3|12>>
    <associate|auto-16|<tuple|3.4|13>>
    <associate|auto-17|<tuple|4|14>>
    <associate|auto-18|<tuple|4.1|14>>
    <associate|auto-19|<tuple|4.2|14>>
    <associate|auto-2|<tuple|1|5>>
    <associate|auto-20|<tuple|4.3|15>>
    <associate|auto-21|<tuple|4.4|15>>
    <associate|auto-22|<tuple|4.5|16>>
    <associate|auto-23|<tuple|5|17>>
    <associate|auto-24|<tuple|5.1|17>>
    <associate|auto-25|<tuple|5.2|17>>
    <associate|auto-26|<tuple|5.3|18>>
    <associate|auto-27|<tuple|5.4|19>>
    <associate|auto-28|<tuple|5.5|20>>
    <associate|auto-29|<tuple|6|21>>
    <associate|auto-3|<tuple|1.1|5>>
    <associate|auto-30|<tuple|6.1|21>>
    <associate|auto-31|<tuple|6.2|22>>
    <associate|auto-32|<tuple|6.3|22>>
    <associate|auto-33|<tuple|6.4|23>>
    <associate|auto-34|<tuple|6.5|24>>
    <associate|auto-35|<tuple|7|25>>
    <associate|auto-36|<tuple|7.1|25>>
    <associate|auto-37|<tuple|7.2|25>>
    <associate|auto-38|<tuple|7.3|26>>
    <associate|auto-39|<tuple|7.4|27>>
    <associate|auto-4|<tuple|1.2|6>>
    <associate|auto-40|<tuple|8|29>>
    <associate|auto-41|<tuple|8.1|29>>
    <associate|auto-42|<tuple|8.2|30>>
    <associate|auto-43|<tuple|8.3|32>>
    <associate|auto-44|<tuple|8.4|32>>
    <associate|auto-45|<tuple|9|34>>
    <associate|auto-46|<tuple|9.1|34>>
    <associate|auto-47|<tuple|9.2|35>>
    <associate|auto-48|<tuple|9.3|35>>
    <associate|auto-49|<tuple|9.4|36>>
    <associate|auto-5|<tuple|1.3|6>>
    <associate|auto-50|<tuple|9.5|37>>
    <associate|auto-51|<tuple|10|39>>
    <associate|auto-52|<tuple|10.1|39>>
    <associate|auto-53|<tuple|10.2|41>>
    <associate|auto-54|<tuple|10.3|42>>
    <associate|auto-55|<tuple|10.4|43>>
    <associate|auto-56|<tuple|10.5|45>>
    <associate|auto-57|<tuple|10.6|46>>
    <associate|auto-58|<tuple|11|48>>
    <associate|auto-59|<tuple|11.1|48>>
    <associate|auto-6|<tuple|2|8>>
    <associate|auto-60|<tuple|11.2|49>>
    <associate|auto-61|<tuple|11.3|49>>
    <associate|auto-62|<tuple|11.4|50>>
    <associate|auto-63|<tuple|12|52>>
    <associate|auto-64|<tuple|12.1|52>>
    <associate|auto-65|<tuple|12.2|53>>
    <associate|auto-66|<tuple|12.3|54>>
    <associate|auto-67|<tuple|12.4|54>>
    <associate|auto-68|<tuple|12.5|55>>
    <associate|auto-69|<tuple|12.6|56>>
    <associate|auto-7|<tuple|2.1|8>>
    <associate|auto-70|<tuple|13|57>>
    <associate|auto-71|<tuple|13.1|57>>
    <associate|auto-72|<tuple|13.2|58>>
    <associate|auto-73|<tuple|13.3|59>>
    <associate|auto-74|<tuple|13.4|61>>
    <associate|auto-75|<tuple|13.5|62>>
    <associate|auto-76|<tuple|14|63>>
    <associate|auto-77|<tuple|14.1|63>>
    <associate|auto-78|<tuple|14.2|63>>
    <associate|auto-79|<tuple|14.3|64>>
    <associate|auto-8|<tuple|2.2|8>>
    <associate|auto-80|<tuple|14.4|66>>
    <associate|auto-81|<tuple|14.5|66>>
    <associate|auto-82|<tuple|14.6|67>>
    <associate|auto-83|<tuple|14.7|70>>
    <associate|auto-84|<tuple|A|71>>
    <associate|auto-9|<tuple|2.3|9>>
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

      5.5<space|2spc>Esponenziale e logaritmo: le proprietà che useremo
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

      14.2<space|2spc>Somme e prodotti: quali termini tenere
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