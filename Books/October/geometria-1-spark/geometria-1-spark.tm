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

    <with|font-size|3.6|Geometria 1>

    <vspace|1.4fn>

    <with|font-shape|small-caps|font-size|1.5|Spark>

    <vspace|1.4fn>

    <with|font-shape|small-caps|font-size|1.15|ottobre 2026 \<cdot\> volume
    1>
  </with>

  <chapter*|Dalle coordinate alle strutture>

  Una freccia nel piano, un polinomio e una lista di numeri sembrano oggetti
  diversi. Eppure possiamo sommarli e moltiplicarli per numeri seguendo le
  stesse regole. Questa somiglianza ci permetterà di studiarli insieme.

  Le coordinate saranno il nostro strumento per calcolare. Impareremo anche a
  distinguere il vettore dai numeri con cui lo descriviamo: cambiando base,
  cambiano le coordinate, ma il vettore resta lo stesso.

  Il libro presuppone frazioni, equazioni elementari e la trigonometria del
  triangolo e della circonferenza. Introduce il linguaggio universitario e
  spiega le mosse delle dimostrazioni. Quando una prova è impegnativa,
  conviene rileggere prima l'esempio che la prepara e poi chiedersi quale
  ostacolo risolve ciascun passaggio.

  <section*|Mappa del percorso>

  I primi tre capitoli costruiscono il linguaggio degli <strong|insiemi e
  delle applicazioni>, i <strong|campi>, i <strong|numeri complessi> e la
  <strong|fattorizzazione dei polinomi>. I complessi insegnano anche una
  prima distinzione decisiva: la stessa operazione si capisce meglio
  cambiando rappresentazione.

  I capitoli 4 e 5 introducono <strong|spazi e sottospazi vettoriali>,
  <strong|span>, <strong|indipendenza lineare>, <strong|basi e coordinate>.
  La domanda è: con quali vettori possiamo costruire tutti gli altri, senza
  introdurre ambiguità?

  Nel capitolo 6 la <strong|dimensione> misura quanti vettori servono; nel 7
  la <strong|somma diretta> e la <strong|formula di Grassmann> spiegano come
  combinare sottospazi senza contare due volte la parte comune.

  Gli ultimi tre capitoli collegano <strong|matrici e applicazioni lineari>,
  <strong|nucleo e immagine>, <strong|eliminazione di Gauss>, <strong|rango e
  sistemi lineari>. Qui le idee astratte diventano strumenti per calcolare, e
  i calcoli aiutano a vedere le idee.

  Le definizioni essenziali sono raccolte in riquadri \SConcetto chiave\T.
  Gli esempi spiegano le scelte oltre ai conti. Gli esercizi finali
  permettono di provare in autonomia: ogni domanda ha una soluzione ragionata
  in appendice. Le parti \SPer proseguire\T raccolgono dettagli secondari che
  puoi riprendere dopo il primo studio.

  <strong|Convenzioni.> <math|K> indica un campo, con <math|0\<neq\>1>.

  I vettori scritti come tuple sono letti come colonne quando compaiono in un
  prodotto matriciale. <math|K<rsub|d>[X]> indica i polinomi di grado al più
  <math|d>, compreso il polinomio nullo. Quando il campo influenza una
  conclusione, lo indichiamo espressamente. Una combinazione lineare contiene
  sempre un numero finito di termini.

  <section*|Il periodo e le fonti>

  Il periodo coperto va dal 23 settembre, prima lezione disponibile, al 31
  ottobre 2026; l'ultima registrazione nel periodo è del 27 ottobre. Le fonti
  disponibili sono dodici note e dodici trascrizioni. Novembre appartiene al
  volume successivo. Le motivazioni, le figure e gli esercizi aggiunti sono
  rielaborazioni didattiche, non citazioni del docente. La documentazione
  delle fonti accompagna il libro in file separati.

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Dalle
    coordinate alle strutture> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn><no-page-break>

    Mappa del percorso <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>

    Il periodo e le fonti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Insiemi,
    applicazioni e campi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn><no-page-break>

    1.1<space|2spc>Insiemi e uguaglianza: guardare gli elementi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>

    1.2<space|2spc>Applicazioni, iniettività e suriettività
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>

    1.3<space|2spc>Composizione e inversa: tornare al punto di partenza
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>

    1.4<space|2spc>Campi: quali regole servono per calcolare?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>

    1.5<space|2spc>Un campo piccolo: due elementi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Numeri
    complessi: operazioni, forma polare e radici>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn><no-page-break>

    2.1<space|2spc>Da una coppia reale a un numero complesso
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>

    2.2<space|2spc>Modulo e coniugato: costruire l'inverso
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>

    2.3<space|2spc>Forma polare e significato del prodotto
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>

    2.4<space|2spc>Radici ennesime: perché sono più di una?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>Polinomi:
    fattorizzazione e molteplicità delle radici>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15><vspace|0.5fn><no-page-break>

    3.1<space|2spc>Una radice permette di estrarre un fattore
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16>

    3.2<space|2spc>Teorema fondamentale dell'algebra e induzione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17>

    3.3<space|2spc>Molteplicità e numero massimo di radici
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-18>

    3.4<space|2spc>Coefficienti reali e coppie coniugate
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-19>

    3.5<space|2spc>Equazioni quadratiche complesse
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-20>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc>Spazi
    vettoriali e sottospazi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-21><vspace|0.5fn><no-page-break>

    4.1<space|2spc>Spazio vettoriale: le regole di somma e scalari
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-22>

    4.2<space|2spc>Polinomi, funzioni e matrici come vettori
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-23>

    4.3<space|2spc>Sottospazi: quando le operazioni restano dentro
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-24>

    4.4<space|2spc>Intersezione e unione di sottospazi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-25>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc>Span,
    indipendenza lineare e basi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-26><vspace|0.5fn><no-page-break>

    5.1<space|2spc>Combinazioni lineari, span e generatori
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-27>

    5.2<space|2spc>Indipendenza lineare: rendere unica la scrittura
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-28>

    5.3<space|2spc>Basi e coordinate rispetto a una base
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-29>

    5.4<space|2spc>Il campo cambia le combinazioni ammesse
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-30>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6<space|2spc>Dimensione
    e lemma di scambio> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-31><vspace|0.5fn><no-page-break>

    6.1<space|2spc>Estrarre una base e completare una famiglia indipendente
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-32>

    6.2<space|2spc>Lemma di scambio: sostituire senza perdere informazioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-33>

    6.3<space|2spc>Dimensione: un numero che non dipende dalla base
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-34>

    6.4<space|2spc>Completamento, sottospazi e criteri per una base
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-35>

    6.5<space|2spc>Basi di sottospazi di polinomi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-36>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7<space|2spc>Somme,
    somma diretta e formula di Grassmann>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-37><vspace|0.5fn><no-page-break>

    7.1<space|2spc>Somma di sottospazi e somma diretta
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-38>

    7.2<space|2spc>Basi della somma diretta e supplementari
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-39>

    7.3<space|2spc>Formula di Grassmann: contare la parte comune una volta
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-40>

    7.4<space|2spc>Matrici simmetriche e antisimmetriche
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-41>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8<space|2spc>Matrici,
    applicazioni lineari e nucleo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-42><vspace|0.5fn><no-page-break>

    8.1<space|2spc>Il prodotto di matrici: righe per colonne
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-43>

    8.2<space|2spc>Sistemi lineari e combinazioni delle colonne
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-44>

    8.3<space|2spc>Applicazioni lineari, nucleo e immagine
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-45>

    8.4<space|2spc>Tutte le soluzioni: una particolare più il nucleo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-46>

    8.5<space|2spc>Rango e teorema rango\<#2013\>nullità
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-47>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|9<space|2spc>Eliminazione
    di Gauss e sistemi a scala> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-48><vspace|0.5fn><no-page-break>

    9.1<space|2spc>Pivot e variabili libere
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-49>

    9.2<space|2spc>Operazioni di riga: cambiare la forma conservando le
    soluzioni <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-50>

    9.3<space|2spc>L'algoritmo e una riduzione completa
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-51>

    9.4<space|2spc>Contare i parametri e costruire una base del nucleo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-52>

    9.5<space|2spc>Dalle equazioni ai generatori, e viceversa
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-53>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|10<space|2spc>Rango,
    Rouché\<#2013\>Capelli e matrici elementari>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-54><vspace|0.5fn><no-page-break>

    10.1<space|2spc>Rouché\<#2013\>Capelli: quando esistono soluzioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-55>

    10.2<space|2spc>Perché il rango è il numero di pivot
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-56>

    10.3<space|2spc>Rango per righe e rango per colonne
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-57>

    10.4<space|2spc>Matrici elementari: scrivere le mosse come prodotti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-58>

    10.5<space|2spc>Invertibilità e gruppo lineare generale
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-59>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Appendice
    A<space|2spc>Soluzioni ragionate> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-60><vspace|0.5fn><no-page-break>

    A.1<space|2spc>Insiemi, applicazioni e campi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-61>

    A.2<space|2spc>Numeri complessi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-62>

    A.3<space|2spc>Polinomi e radici <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-63>

    A.4<space|2spc>Spazi vettoriali e sottospazi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-64>

    A.5<space|2spc>Span, indipendenza e basi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-65>

    A.6<space|2spc>Dimensione e completamento
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-66>

    A.7<space|2spc>Somme e formula di Grassmann
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-67>

    A.8<space|2spc>Matrici, nucleo e immagine
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-68>

    A.9<space|2spc>Gauss e sottospazi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-69>

    A.10<space|2spc>Rango e invertibilità
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-70>
  </table-of-contents>

  <chapter|Insiemi, applicazioni e campi>

  <\inbreve>
    Come si descrive con precisione una funzione? Partiamo da insiemi e
    semplici equazioni, poi distinguiamo dominio, codominio e valori
    raggiunti. Alla fine vedremo quali regole di calcolo definiscono un
    campo.
  </inbreve>

  <section|Insiemi e uguaglianza: guardare gli elementi>

  Prendiamo <math|X={1,2,3}> e <math|Y={2,3,4}>. Il simbolo <math|2\<in\>X>
  significa che 2 appartiene a <math|X>; <math|4\<nin\>X> dice che 4 non vi
  appartiene.

  L'<strong|intersezione> <math|X\<cap\>Y={2,3}> raccoglie gli elementi
  comuni; l'<strong|unione> <math|X\<cup\>Y={1,2,3,4}> quelli presenti in
  almeno uno dei due insiemi. \SOppure\T comprende anche il caso in cui un
  elemento stia in entrambi. L'insieme senza elementi si indica con
  <math|\<varnothing\>>.

  Scriviamo <math|A\<subseteq\>B> quando ogni elemento di <math|A> appartiene
  a <math|B>. L'inclusione permette l'uguaglianza.

  Per mostrare <math|A\<subseteq\>B> non basta controllare alcuni esempi:
  prendiamo un elemento qualsiasi di <math|A> e mostriamo che appartiene a
  <math|B>. Per provare <math|A=B> facciamo questo lavoro nelle due
  direzioni.

  Per esempio, per tre insiemi vale

  <\equation*>
    X\<cap\>(Y\<cup\>Z)=(X\<cap\>Y)\<cup\>(X\<cap\>Z).
  </equation*>

  Perché? A sinistra chiediamo di stare in <math|X> e, inoltre, in <math|Y>
  oppure in <math|Z>. Se un elemento soddisfa queste richieste, sta in
  <math|X\<cap\>Y> oppure in <math|X\<cap\>Z>: appartiene al membro destro.

  Viceversa, un elemento del membro destro sta in una di queste due
  intersezioni; in entrambi i casi sta in <math|X> e in almeno uno fra
  <math|Y,Z>. Appartiene quindi al membro sinistro. Abbiamo provato entrambe
  le inclusioni.

  <figura|<image|assets/distributiva.pdf|150.0mm|50.0mm||>|Le due espressioni
  descrivono la stessa zona. La dimostrazione spiega perché questo accade per
  qualsiasi insieme, anche quando non possiamo disegnarlo.>

  Vale anche <math|X\<cup\>(Y\<cap\>Z)=(X\<cup\>Y)\<cap\>(X\<cup\>Z)>. Se un
  elemento sta in <math|X>, soddisfa entrambi i requisiti a destra. Se non
  sta in <math|X>, a sinistra deve stare sia in <math|Y> sia in <math|Z>,
  esattamente come a destra.

  Il <strong|prodotto cartesiano> <math|X\<times\>Y> contiene le coppie
  ordinate <math|(x,y)> con <math|x\<in\>X> e <math|y\<in\>Y>. L'ordine
  conta: <math|(1,2)\<neq\>(2,1)>. Il piano
  <math|\<bbb-R\><rsup|2>=\<bbb-R\>\<times\>\<bbb-R\>> è l'insieme delle
  coppie reali; lo spazio <math|\<bbb-R\><rsup|3>> quello delle terne.

  La coppia <math|((x,y),z)> e la terna <math|(x,y,z)> hanno forme diverse,
  ma le identifichiamo mediante la corrispondenza che toglie le parentesi
  interne.

  <section|Applicazioni, iniettività e suriettività>

  Consideriamo <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>>,
  <math|f(x)=x<rsup|2>>. A ogni reale assegna un unico reale. L'insieme di
  partenza è il <strong|dominio>, quello dichiarato all'arrivo è il
  <strong|codominio>. I valori effettivamente raggiunti formano
  l'<strong|immagine>, qui <math|[0,+\<infty\>)>. Codominio e immagine
  possono dunque essere diversi.

  <\concetto|Applicazione>
    Un'applicazione <math|f:X\<rightarrow\>Y> assegna a ogni <math|x\<in\>X>
    uno e un solo elemento <math|f(x)\<in\>Y>. Dominio, codominio e
    assegnazione fanno parte della definizione.
  </concetto>

  Il <strong|grafico> è l'insieme delle coppie <math|(x,f(x))> nel prodotto
  <math|X\<times\>Y>. Una relazione <math|\<Gamma\>\<subseteq\>X\<times\>Y> è
  il grafico di una funzione precisamente quando contiene, per ogni
  <math|x\<in\>X>, una sola coppia con prima voce <math|x>.

  Il simbolo <math|\<forall\>> significa \Sper ogni\T, <math|\<exists\>>
  \Sesiste\T, <math|\<exists\>!> \Sesiste uno e un solo\T: la richiesta è
  <math|\<forall\>x\<in\>X<space|0.5em>\<exists\>!y\<in\>Y> con
  <math|(x,y)\<in\>\<Gamma\>>.

  Una funzione è <strong|iniettiva> quando non confonde elementi diversi:
  <math|f(x)=f(x')> implica <math|x=x'>. Non lo è se troviamo due elementi
  distinti con la stessa immagine. Il quadrato su <math|\<bbb-R\>> non è
  iniettivo, perché <math|f(1)=f(-1)>.

  È <strong|suriettiva> quando raggiunge ogni elemento del codominio: per
  ogni <math|y\<in\>Y> esiste almeno un <math|x\<in\>X> con <math|f(x)=y>. Il
  quadrato <math|\<bbb-R\>\<rightarrow\>\<bbb-R\>> non è suriettivo: non
  raggiunge <math|-1>.

  Se cambiamo il codominio in <math|[0,+\<infty\>)>, diventa suriettivo;
  restringendo anche il dominio a <math|[0,+\<infty\>)>, diventa iniettivo.
  Una funzione insieme iniettiva e suriettiva si dice <strong|biiettiva>.

  <figura|<image|assets/funzioni.pdf|154.4mm|44.2mm||>|Ogni elemento del
  dominio deve avere una sola freccia in uscita. L'iniettività riguarda le
  frecce che arrivano allo stesso punto; la suriettività richiede di
  raggiungere tutti i punti del codominio.>

  <section|Composizione e inversa: tornare al punto di partenza>

  Se <math|f:X\<rightarrow\>Y> e <math|g:Y\<rightarrow\>Z>, la
  <strong|composizione> <math|g\<circ\>f> applica prima <math|f>, poi
  <math|g>: <math|(g\<circ\>f)(x)=g(f(x))>.

  Le parentesi non cambiano il risultato di tre applicazioni compatibili,
  perché entrambe le composizioni danno <math|h(g(f(x)))>.
  L'<strong|identità> <math|<math-up|id><rsub|X>> lascia fermo ogni elemento
  di <math|X>.

  Per <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>>, <math|f(x)=2x+1>, possiamo
  recuperare <math|x> da <math|y>: sottraiamo 1 e dividiamo per 2. La
  funzione <math|g(y)=(y-1)/2> soddisfa <math|g(f(x))=x> e <math|f(g(y))=y>.
  Si chiama <strong|inversa> di <math|f> e si indica con <math|f<rsup|-1>>:
  qui l'esponente non significa reciproco del valore.

  In generale, se <math|f> è biiettiva, per definire <math|f<rsup|-1>(y)>
  cerchiamo l'elemento <math|x> con <math|f(x)=y>. La suriettività assicura
  che esista; l'iniettività che sia unico. Questa scelta definisce una
  funzione e dà le due identità

  <\equation*>
    f<rsup|-1>\<circ\>f=<math-up|id><rsub|X>,<space|2em>f\<circ\>f<rsup|-1>=<math-up|id><rsub|Y>.
  </equation*>

  Viceversa, se una funzione <math|g> soddisfa entrambe le identità,
  <math|f(x)=f(x')> dà <math|g(f(x))=g(f(x'))>, dunque <math|x=x'>; inoltre
  ogni <math|y> è <math|f(g(y))>, dunque è raggiunto. Le due identità
  caratterizzano quindi l'invertibilità.

  L'inversa è unica: se anche <math|h> è inversa,
  <math|g=g\<circ\>(f\<circ\>h)=(g\<circ\>f)\<circ\>h=h>.

  <section|Campi: quali regole servono per calcolare?>

  L'equazione <math|2x=1> ha soluzione nei razionali, ma non negli interi. La
  possibilità di dividere dipende dunque dall'insieme in cui lavoriamo.
  Un'<strong|operazione interna> su <math|K> è una funzione
  <math|K\<times\>K\<rightarrow\>K>: combina due elementi e rimane in
  <math|K>.

  <\concetto|Campo>
    Un campo <math|K> possiede due operazioni interne, somma e prodotto, con
    elementi <math|0\<neq\>1>, e soddisfa le seguenti regole per tutti i suoi
    elementi.

    <\itemize>
      <item>La somma è associativa e commutativa: <math|(a+b)+c=a+(b+c)> e
      <math|a+b=b+a>. Lo zero è neutro, <math|a+0=a>; ogni <math|a> ha un
      opposto <math|-a> con <math|a+(-a)=0>.

      <item>Il prodotto è associativo e commutativo: <math|(a*b)c=a(b*c)> e
      <math|a*b=b*a>. L'unità è neutra, <math|a\<cdot\>1=a>; ogni
      <math|a\<neq\>0> ha un inverso <math|a<rsup|-1>> con
      <math|a*a<rsup|-1>=1>.

      <item>Vale la distributività: <math|a(b+c)=a*b+a*c>. Per commutatività
      vale anche <math|(a+b)c=a*c+b*c>.
    </itemize>
  </concetto>

  Sono campi <math|\<bbb-Q\>> e <math|\<bbb-R\>>; <math|\<bbb-Z\>> non lo è
  perché manca, per esempio, l'inverso di 2. Nel prossimo capitolo
  costruiremo <math|\<bbb-C\>>.

  Queste regole permettono di dimostrare le proprietà del calcolo, senza
  dipendere da come sono fatti gli elementi. Per esempio, da <math|a+b=a+c>
  sommiamo <math|-a> ai due membri e otteniamo <math|b=c>: è la cancellazione
  nella somma.

  <subsection|Perché zero, opposto e inverso sono unici>

  Gli assiomi chiedono che questi elementi esistano. Vediamo perché non
  possiamo sceglierli in due modi diversi. Se <math|e,e'> sono entrambi
  neutri della somma, la somma <math|e+e'> vale <math|e'> perché <math|e> è
  neutro e vale <math|e> perché <math|e'> è neutro: perciò coincidono.

  Se <math|a+b=a+c=0>, la cancellazione dà <math|b=c>, dunque l'opposto è
  unico.

  Se <math|a*b=a*c=1>, abbiamo

  <\equation*>
    b=b\<cdot\>1=b(a*c)=(b*a)c=1\<cdot\>c=c:
  </equation*>

  anche l'inverso è unico. L'unità moltiplicativa è unica con lo stesso
  ragionamento usato per il neutro additivo.

  <subsection|Moltiplicare per zero e cancellare un fattore>

  Per risolvere <math|3x=0> nei reali dividiamo per 3. In un campo possiamo
  ripetere questo passo con ogni fattore non nullo. Prima serve sapere che
  cosa produce la moltiplicazione per zero.

  Dimostriamo <math|a\<cdot\>0=0>. La distributività dà
  <math|a\<cdot\>0=a(0+0)=a\<cdot\>0+a\<cdot\>0>; cancellando un addendo
  otteniamo il risultato.

  Lo zero non può avere inverso perché ogni suo prodotto è zero e
  <math|0\<neq\>1>.

  Se <math|a*b=0> e <math|a\<neq\>0>, moltiplicando per <math|a<rsup|-1>>
  ricaviamo <math|b=0>. È la <strong|legge di annullamento del prodotto>: un
  prodotto nullo ha almeno un fattore nullo.

  Il nome <strong|gruppo abeliano> riassume le regole della somma:
  associatività, commutatività, neutro e opposti. Anche gli elementi non
  nulli formano un gruppo abeliano con il prodotto. Useremo soprattutto le
  singole regole, appena messe alla prova.

  <section|Un campo piccolo: due elementi>

  Separiamo i numeri interi in pari e dispari. La somma di due dispari è
  pari; il prodotto di due dispari è dispari. Indichiamo queste due
  possibilità con 0 e 1. Otteniamo il campo <math|<math-up|F><rsub|2>={0,1}>,
  con

  <\equation*>
    0+0=0,<space|1em>0+1=1+0=1,<space|1em>1+1=0,
  </equation*>

  <\equation*>
    0\<cdot\>0=0\<cdot\>1=1\<cdot\>0=0,<space|2em>1\<cdot\>1=1.
  </equation*>

  Le proprietà associative e distributive discendono da quelle delle
  operazioni sugli interi, passando alla parità. Entrambi gli elementi hanno
  un opposto (ognuno è opposto di sé stesso); l'unico elemento non nullo è 1,
  inverso di sé stesso. Sono soddisfatti tutti gli assiomi.

  In questo campo <math|2=1+1=0>. Perciò da <math|2a=0> non possiamo
  concludere <math|a=0>, né dividere per 2. Negli spazi vettoriali il campo
  degli scalari andrà sempre dichiarato.

  <\verifica|1>
    <strong|1.1.> Studia iniettività e suriettività di
    <math|f:\<bbb-R\>\<rightarrow\>[0,+\<infty\>)>, <math|f(x)=x<rsup|2>>.
    Trova una restrizione del dominio che la renda biiettiva e scrivine
    l'inversa.

    <strong|1.2.> Nei reali, da <math|a=-a> segue <math|a=0>. Spiega il
    passaggio e decidi se la conclusione vale anche in
    <math|<math-up|F><rsub|2>>.
  </verifica>

  <chapter|Numeri complessi: operazioni, forma polare e radici>

  <\inbreve>
    Come possiamo risolvere un'equazione come <math|z<rsup|2>=-1>? Costruiamo
    i numeri complessi a partire da coppie reali. Impareremo poi a leggere
    prodotti e radici nel piano.
  </inbreve>

  <section|Da una coppia reale a un numero complesso>

  Un numero complesso è una coppia di reali <math|(a,b)>, scritta
  <math|a+i*b>. Si pone <math|i=(0,1)> e si identifica il reale <math|a> con
  <math|(a,0)>.

  Le parti <strong|reale> e <strong|immaginaria> sono rispettivamente
  <math|a> e <math|b>; la parte immaginaria è dunque un numero reale, senza
  il fattore <math|i>. Due complessi sono uguali quando coincidono entrambe
  le parti.

  Per sommare, operiamo separatamente sulle due componenti:

  <\equation*>
    (a+i*b)+(c+i*d)=(a+c)+i(b+d).
  </equation*>

  Per moltiplicare vogliamo poter sviluppare le parentesi e sostituire
  <math|i<rsup|2>> con <math|-1>. Questo suggerisce la definizione

  <\equation*>
    (a+i*b)(c+i*d)=(a*c-b*d)+i(a*d+b*c).
  </equation*>

  La definizione usa solo operazioni reali e produce ancora una coppia reale.
  Con <math|a=c=0> e <math|b=d=1> dà proprio <math|i<rsup|2>=-1>. Per
  esempio,

  <\equation*>
    (2+i)+(3-2i)=5-i,
  </equation*>

  <\equation*>
    (2+i)(3-2i)=6-4i+3i-2i<rsup|2>=8-i.
  </equation*>

  Le operazioni coincidono con quelle usuali quando <math|b=d=0>, perciò
  possiamo considerare <math|\<bbb-R\>> dentro <math|\<bbb-C\>>. La somma ha
  zero <math|0+i0> e opposto <math|-a-i*b>; il prodotto ha unità <math|1+i0>.
  Associatività e commutatività della somma si verificano sulle singole
  componenti reali.

  Anche il prodotto è commutativo: scambiando le due coppie, <math|a*c-b*d> e
  <math|a*d+b*c> rimangono uguali.

  Per l'associatività, prendiamo un terzo numero <math|e+i*f>. Sviluppando
  sia <math|((a+i*b)(c+i*d))(e+i*f)> sia <math|(a+i*b)((c+i*d)(e+i*f))> si
  trovano la stessa parte reale <math|a*c*e-b*d*e-a*d*f-b*c*f> e la stessa
  parte immaginaria <math|a*c*f-b*d*f+a*d*e+b*c*e>.

  La distributività si verifica sviluppando il prodotto con una somma: ogni
  componente si distribuisce con le regole reali. Resta da costruire
  l'inverso di ogni complesso non nullo.

  <section|Modulo e coniugato: costruire l'inverso>

  Rappresentiamo <math|z=a+i*b> come punto <math|(a,b)> del piano. La
  distanza dall'origine è il <strong|modulo>:

  <\equation*>
    \|z\|=<sqrt|a<rsup|2>+b<rsup|2>>.
  </equation*>

  È un reale non negativo. È zero soltanto per <math|z=0>, perché una somma
  di quadrati reali può essere zero solo se entrambi sono nulli. Sui numeri
  reali il modulo coincide con il valore assoluto.

  Il <strong|coniugato> <math|<wide|z|\<bar\>>=a-i*b> è il punto riflesso
  rispetto all'asse reale. Coniugare due volte restituisce <math|z>; inoltre
  <math|z=<wide|z|\<bar\>>> esattamente quando <math|b=0>, cioè quando
  <math|z> è reale.

  Il coniugio rispetta somme e prodotti:

  <\equation*>
    <wide|z+w|\<bar\>>=<wide|z|\<bar\>>+<wide|w|\<bar\>>,<space|2em><wide|z*w|\<bar\>>=<wide|z|\<bar\>><wide|w|\<bar\>>.
  </equation*>

  Per la somma, entrambi i membri sono <math|(a+c)-i(b+d)>. Per il prodotto,
  entrambi sono <math|(a*c-b*d)-i(a*d+b*c)>: basta applicare le due
  definizioni. La combinazione più utile è

  <\equation*>
    z<wide|z|\<bar\>>=(a+i*b)(a-i*b)=a<rsup|2>+b<rsup|2>=\|z\|<rsup|2>.
  </equation*>

  I termini immaginari si cancellano. Se vogliamo ottenere 1, questo prodotto
  ci porta già a un numero reale positivo: basta dividere il coniugato per
  quel numero.

  <\concetto|Inverso complesso>
    Per <math|z\<neq\>0>,

    <\equation*>
      z<rsup|-1>=<frac|<wide|z|\<bar\>>|\|z\|<rsup|2>>=<frac|a-i*b|a<rsup|2>+b<rsup|2>>.
    </equation*>

    Moltiplicando per <math|z> otteniamo <math|\|z\|<rsup|2>/\|z\|<rsup|2>=1>.
    Il denominatore è non nullo proprio perché <math|z\<neq\>0>. Questo
    completa la verifica che <math|\<bbb-C\>> è un campo.
  </concetto>

  Per dividere <math|3-2i> per <math|1-i>, moltiplichiamo per l'inverso del
  denominatore, cioè <math|(1+i)/2>:

  <\equation*>
    <frac|3-2i|1-i>=<frac|(3-2i)(1+i)|2>=<frac|3+i-2i<rsup|2>|2>=<frac|5+i|2>.
  </equation*>

  Il controllo consiste nel moltiplicare il risultato per <math|1-i>:
  ritroviamo <math|3-2i>.

  <section|Forma polare e significato del prodotto>

  Per indicare un punto diverso dall'origine possiamo dare la distanza
  <math|\<rho\>=\|z\|> e un angolo <math|\<theta\>> dal semiasse reale
  positivo, misurato in senso antiorario. L'angolo si chiama
  <strong|argomento>. Le coordinate del punto sono
  <math|a=\<rho\>cos\<theta\>> e <math|b=\<rho\>sin\<theta\>>, quindi

  <\equation*>
    z=\<rho\>(cos\<theta\>+i\<cdot\>sin\<theta\>).
  </equation*>

  Angoli che differiscono di <math|2k\<pi\>>, con <math|k\<in\>\<bbb-Z\>>,
  rappresentano lo stesso punto. L'argomento di zero non è definito: il punto
  nell'origine non sceglie alcuna direzione.

  <figura|<image|assets/piano-complesso.pdf|150.0mm|65.0mm||>|Lo stesso
  numero si descrive con due coordinate oppure con modulo e argomento. Il
  coniugato cambia il segno della coordinata verticale.>

  Per <math|z=-1-i>, il modulo è <math|<sqrt|2>>. Le due coordinate sono
  negative, dunque scegliamo <math|\<theta\>=5\<pi\>/4>, oppure
  <math|-3\<pi\>/4>. La sola uguaglianza <math|tan\<theta\>=b/a=1> non
  distinguerebbe questo punto da <math|1+i>, che ha argomento
  <math|\<pi\>/4>.

  Se usiamo <math|arctan(b/a)> dobbiamo controllare il quadrante; se
  <math|a=0> usiamo direttamente <math|\<pi\>/2> per <math|b\<gtr\>0> e
  <math|-\<pi\>/2> per <math|b\<less\>0>.

  Per ricavare la formula supponiamo <math|z,w\<neq\>0>, così
  <math|\<rho\>,\<lambda\>\<gtr\>0>. Scriviamo ora
  <math|w=\<lambda\>(cos\<varphi\>+i\<cdot\>sin\<varphi\>)>.

  Applicando la definizione del prodotto, la parte reale di
  <math|z*w/(\<rho\>\<lambda\>)> è <math|cos\<theta\>cos\<varphi\>-sin\<theta\>sin\<varphi\>>;
  quella immaginaria è <math|cos\<theta\>sin\<varphi\>+sin\<theta\>cos\<varphi\>>.

  Le formule di addizione della trigonometria riconoscono queste espressioni
  come <math|cos(\<theta\>+\<varphi\>)> e <math|sin(\<theta\>+\<varphi\>)>.
  Perciò

  <\equation*>
    z*w=\<rho\>\<lambda\>(cos(\<theta\>+\<varphi\>)+i\<cdot\>sin(\<theta\>+\<varphi\>)).
  </equation*>

  <strong|I moduli si moltiplicano, gli angoli si sommano.> In particolare
  <math|\|z*w\|=\|z\|\|w\|>, anche quando un fattore è zero. Moltiplicare per
  <math|i> ruota di <math|\<pi\>/2> senza cambiare lunghezza; moltiplicare
  per 2 raddoppia la lunghezza senza ruotare.

  Ripetendo il prodotto <math|n> volte, con <math|n\<geq\>1> intero,
  otteniamo la <strong|formula di De Moivre>:

  <\equation*>
    z<rsup|n>=\<rho\><rsup|n>(cos(n\<theta\>)+i\<cdot\>sin(n\<theta\>)).
  </equation*>

  La giustificazione è anche una piccola induzione: la formula vale per
  <math|n=1>; moltiplicando il caso <math|n> per <math|z> si moltiplica il
  modulo per <math|\<rho\>> e si aggiunge un altro <math|\<theta\>>.

  Talvolta scriveremo <math|e<rsup|i\<theta\>>> come abbreviazione di
  <math|cos\<theta\>+i\<cdot\>sin\<theta\>>; qui questa notazione non
  richiede di studiare la funzione esponenziale complessa.

  <section|Radici ennesime: perché sono più di una?>

  Cerchiamo prima le soluzioni di <math|z<rsup|3>=-8>. Il modulo deve
  soddisfare <math|\<rho\><rsup|3>=8>, quindi <math|\<rho\>=2>. Un argomento
  di <math|-8> è <math|\<pi\>>, ma possiamo usare anche
  <math|\<pi\>+2k\<pi\>>. Perciò l'angolo di una radice deve soddisfare
  <math|3\<theta\>=\<pi\>+2k\<pi\>>:

  <\equation*>
    \<theta\>=<frac|\<pi\>|3>+<frac|2k\<pi\>|3>.
  </equation*>

  Per <math|k=0,1,2> troviamo <math|\<pi\>/3,\<pi\>,5\<pi\>/3>. Da <math|k=3>
  in poi ripassiamo sugli stessi angoli, perché abbiamo aggiunto un giro
  completo. Le soluzioni sono

  <\equation*>
    1+i<sqrt|3>,<space|2em>-2,<space|2em>1-i<sqrt|3>.
  </equation*>

  Il passaggio decisivo è avere conservato <math|2k\<pi\>> <em|prima> di
  dividere per 3: quel giro completo diventa un terzo di giro e produce
  radici diverse.

  <\concetto|Radici ennesime di un complesso>
    Sia <math|n\<geq\>1> intero. Se <math|w=R(cos\<varphi\>+i\<cdot\>sin\<varphi\>)\<neq\>0>,
    tutte le soluzioni di <math|z<rsup|n>=w> sono

    <\equation*>
      z<rsub|k>=<sqrt|R|n><around*|(|cos<around*|(|<frac|\<varphi\>+2k\<pi\>|n>|)>+i\<cdot\>sin<around*|(|<frac|\<varphi\>+2k\<pi\>|n>|)>|)>,
    </equation*>

    con <math|k=0,\<ldots\>,n-1>. Sono <math|n> soluzioni distinte,
    equidistanti in angolo sulla circonferenza di raggio <math|<sqrt|R|n>>.
    Se <math|w=0>, l'unica soluzione è <math|z=0>.
  </concetto>

  La formula si ricava confrontando il modulo e l'angolo nella formula di De
  Moivre, come abbiamo appena fatto.

  Due indici fra 0 e <math|n-1> danno lo stesso punto solo se la loro
  differenza è multipla di <math|n>, e quindi solo se sono uguali. Ogni
  indice intero si riporta a uno di questi sottraendo multipli di <math|n>:
  la lista è completa.

  Per <math|w=1> otteniamo le <strong|radici dell'unità>, con modulo 1 e
  angoli <math|2k\<pi\>/n>.

  Le radici seste hanno angoli <math|0,\<pi\>/3,2\<pi\>/3,\<pi\>,4\<pi\>/3,5\<pi\>/3>.
  I loro valori sono <math|1,-1> e i quattro numeri
  <math|\<pm\>1/2\<pm\>i<sqrt|3>/2>, scegliendo indipendentemente i due
  segni.

  <figura|<image|assets/radici.pdf|150.0mm|62.5mm||>|A sinistra le radici
  cubiche di <math|-8>; a destra le radici seste di 1. Scelta la prima
  radice, troviamo le altre avanzando di <math|2\<pi\>/n>.>

  Se conosciamo una radice <math|z<rsub|0>> di un complesso non nullo,
  otteniamo tutte le altre moltiplicandola per le radici ennesime dell'unità:
  il prodotto ha la stessa potenza, perché
  <math|(z<rsub|0>u)<rsup|n>=z<rsub|0><rsup|n>u<rsup|n>=w>. La formula polare
  mostra che queste sono tutte le possibilità.

  <\verifica|2>
    <strong|2.1.> Calcola <math|(2+i)/(1+i)> e verifica il risultato
    moltiplicando per il denominatore.

    <strong|2.2.> Trova tutte le soluzioni di <math|z<rsup|4>=1>. Poi trova
    quelle di <math|z<rsup|4>=-1>: spiega quale rotazione trasforma la prima
    figura nella seconda.
  </verifica>

  <chapter|Polinomi: fattorizzazione e molteplicità delle radici>

  <\inbreve>
    Che cosa ci dice una radice su un polinomio? Dalla divisione per un
    fattore lineare arriveremo alla fattorizzazione. Capiremo anche come
    contare le radici ripetute e che cosa cambia quando i coefficienti sono
    reali.
  </inbreve>

  <section|Una radice permette di estrarre un fattore>

  Partiamo da <math|P(z)=z<rsup|2>-3z+2>. Sostituendo <math|z=1> otteniamo
  <math|1-3+2=0>: diciamo che 1 è una <strong|radice>. Che cosa ci permette
  di fare questa informazione?

  Per dividere per <math|z-1>, togliamo prima <math|z(z-1)=z<rsup|2>-z>:
  rimane <math|-2z+2>.

  Togliamo poi <math|-2(z-1)=-2z+2>: il resto è zero. Il quoziente raccoglie
  i due termini scelti, <math|z-2>, quindi <math|P(z)=(z-1)(z-2)>.

  Questo prodotto mostra entrambe le radici: per l'annullamento del prodotto,
  <math|P(z)=0> esattamente per <math|z=1> oppure <math|z=2>.

  Un polinomio <math|P(z)=a<rsub|n>z<rsup|n>+\<cdots\>+a<rsub|1>z+a<rsub|0>>,
  con <math|a<rsub|n>\<neq\>0>, ha <strong|grado> <math|n>.

  Il numero <math|a<rsub|n>> è il coefficiente direttivo; se vale 1, il
  polinomio si dice <strong|monico>.

  I polinomi a coefficienti in un campo <math|K> formano l'insieme
  <math|K[z]>. Una <strong|radice> è un valore <math|r> per cui
  <math|P(r)=0>.

  Perché possiamo sempre trasformare una radice in un fattore? Dividendo un
  polinomio per <math|z-r> otteniamo

  <\equation*>
    P(z)=(z-r)Q(z)+c,
  </equation*>

  dove il resto <math|c> è costante, perché deve avere grado minore di 1.
  Ponendo <math|z=r>, il prodotto si annulla e rimane <math|P(r)=c>. Dunque
  il resto è zero precisamente quando <math|r> è radice.

  <\concetto|Teorema del fattore>
    Siano <math|K> un campo, <math|P\<in\>K[z]> e <math|r\<in\>K>. Allora
    <math|P(r)=0> se e solo se esiste <math|Q\<in\>K[z]> con
    <math|P(z)=(z-r)Q(z)>. Si scrive anche <math|(z-r)\<mid\>P(z)>: la barra
    significa \Sdivide\T. Se <math|P> ha grado <math|n\<geq\>1>, il quoziente
    ha grado <math|n-1>.
  </concetto>

  Una divisione con resto non nullo non è una fattorizzazione: c'è ancora un
  addendo. Il vantaggio del resto zero è proprio poter usare l'annullamento
  del prodotto e ridurre il problema a un polinomio di grado minore.

  <section|Teorema fondamentale dell'algebra e induzione>

  Nei reali, un polinomio non costante può non avere radici:
  <math|x<rsup|2>+1> ne è un esempio. Nei complessi vale invece il seguente
  risultato.

  <\concetto|Teorema fondamentale dell'algebra>
    Ogni polinomio non costante a coefficienti complessi ha almeno una radice
    complessa.
  </concetto>

  Accettiamo qui il teorema senza dimostrarlo: la sua prova richiede
  strumenti ulteriori rispetto a quelli del volume. Possiamo però dimostrarne
  la conseguenza che useremo. Ogni polinomio complesso di grado
  <math|n\<geq\>1>, con coefficiente direttivo <math|a>, si scrive

  <\equation*>
    P(z)=a(z-z<rsub|1>)\<cdots\>(z-z<rsub|n>).
  </equation*>

  L'idea è cercare una radice, estrarre il fattore corrispondente e
  ricominciare sul quoziente. Il grado scende ogni volta di uno: questo
  suggerisce una <strong|dimostrazione per induzione sul grado>.

  Nel caso iniziale <math|n=1>, abbiamo <math|P(z)=a*z+b=a(z+b/a)>, con
  radice <math|-b/a>.

  Supponiamo ora di saper fattorizzare <em|ogni> polinomio complesso di grado
  <math|n>, e prendiamone uno di grado <math|n+1>. Il teorema fondamentale
  fornisce una radice <math|z<rsub|1>>; il teorema del fattore dà

  <\equation*>
    P(z)=(z-z<rsub|1>)Q(z).
  </equation*>

  Il quoziente ha grado <math|n> e lo stesso coefficiente direttivo <math|a>,
  perché il fattore estratto ha coefficiente direttivo 1. Per l'ipotesi
  induttiva, <math|Q(z)=a(z-z<rsub|2>)\<cdots\>(z-z<rsub|n+1>)>. Sostituendo
  questa espressione ritroviamo la fattorizzazione richiesta per il grado
  <math|n+1>.

  Abbiamo così verificato il primo caso e il passaggio da ogni caso al
  successivo. L'induzione conclude che la proprietà vale per tutti i gradi
  positivi: dal caso 1 segue il 2, dal 2 il 3, e così via. L'ipotesi sul
  grado <math|n> non presume già vera l'intera conclusione: è ciò da cui
  dimostriamo il caso successivo.

  <figura|<image|assets/fattori.pdf|155.0mm|27.5mm||>|Ogni radice estratta
  abbassa il grado. Il teorema fondamentale assicura che possiamo continuare
  finché il quoziente è non costante.>

  Si può formulare l'induzione anche assumendo, nel passo, tutti i casi
  precedenti. Le due forme sono equivalenti: basta applicare l'induzione
  ordinaria alla proprietà cumulativa \Svalgono tutti i casi fino a
  <math|n>\T. In questa prova ci è bastato il grado immediatamente
  precedente.

  Il teorema fondamentale garantisce l'esistenza delle radici, senza darne
  una formula generale di calcolo. Le sue ipotesi contano: un'espressione che
  contiene il modulo, come <math|\|z\|<rsup|2>+1>, non è un polinomio nella
  variabile complessa <math|z>. Questa espressione non si annulla mai; il
  teorema non le si applica.

  <section|Molteplicità e numero massimo di radici>

  Il polinomio <math|(z-1)<rsup|3>> ha grado 3 ma una sola radice distinta,
  1. Il fattore <math|z-1> compare tre volte. La fattorizzazione non promette
  che i valori <math|z<rsub|1>,\<ldots\>,z<rsub|n>> siano diversi.

  <\concetto|Molteplicità di una radice>
    Per un polinomio non nullo, <math|r> ha molteplicità <math|m\<geq\>1>
    quando

    <\equation*>
      P(z)=(z-r)<rsup|m>Q(z),<space|2em>Q(r)\<neq\>0.
    </equation*>

    Il fattore <math|z-r> si può estrarre <math|m> volte, ma non <math|m+1>
    volte.
  </concetto>

  Per <math|P(z)=(z-1)<rsup|2>(z-3)<rsup|4>(z-5)<rsup|3>>, le radici distinte
  sono tre, con molteplicità 2, 4 e 3. La somma è 9, uguale al grado.

  In generale, raggruppando i fattori uguali nella fattorizzazione complessa,
  le molteplicità sommano al grado: un polinomio complesso di grado <math|n>
  ha <strong|esattamente <math|n> radici contate con molteplicità>.

  In un campo qualunque abbiamo invece un limite superiore: un polinomio non
  nullo di grado <math|n> ha al più <math|n> radici, anche contando le
  molteplicità delle radici che appartengono al campo. Non serve il teorema
  fondamentale per dimostrarlo.

  Prima guardiamo <math|P(z)=(z-1)(z-2)<rsup|2>>. Togliere <math|z-1> lascia
  <math|Q(z)=(z-2)<rsup|2>>: la radice 2 è ancora doppia. Il fattore tolto
  vale 1 nel punto 2, perciò non contribuiva ad annullare il prodotto in quel
  punto.

  Estraiamo ora il fattore di una prima radice in generale: <math|P=(z-r)Q>.
  Ogni altra radice <math|s\<neq\>r> rimane una radice di <math|Q>, perché
  <math|0=P(s)=(s-r)Q(s)> e <math|s-r\<neq\>0>.

  Per tener conto delle molteplicità, se <math|Q=(z-s)<rsup|m>H> con
  <math|H(s)\<neq\>0>, allora <math|P=(z-s)<rsup|m>((z-r)H)> e
  <math|(s-r)H(s)\<neq\>0>: la molteplicità di <math|s> è rimasta <math|m>.

  Possiamo quindi estrarre, una per volta, tutte le radici con le loro
  ripetizioni. Ogni estrazione abbassa il grado di uno; dopo <math|n>
  estrazioni rimane una costante non nulla, che non ha radici. Più di
  <math|n> estrazioni sono impossibili. Questo argomento non suppone in
  partenza che le radici siano già tutte state trovate.

  Il polinomio nullo è escluso: si annulla in ogni punto e non ha un grado
  finito come quelli considerati qui.

  <section|Coefficienti reali e coppie coniugate>

  Un polinomio reale è anche complesso, ma le sue radici non devono essere
  reali. Ha però una simmetria. Se <math|P(z)=a<rsub|n>z<rsup|n>+\<cdots\>+a<rsub|0>>
  e i coefficienti sono reali, le proprietà del coniugio danno

  <\equation*>
    P(<wide|z|\<bar\>>)=a<rsub|n><wide|z|\<bar\>><rsup|n>+\<cdots\>+a<rsub|0>=<wide|P(z)|\<bar\>>.
  </equation*>

  Il punto essenziale è che coniugare i coefficienti non li cambia. Se
  <math|P(r)=0>, la stessa uguaglianza dà <math|P(<wide|r|\<bar\>>)=0>. Ogni
  radice non reale è accompagnata dalla sua coniugata.

  Per esempio, nel polinomio reale <math|(z<rsup|2>+1)<rsup|2>=(z-i)<rsup|2>(z+i)<rsup|2>>,
  sia <math|i> sia <math|-i> sono radici doppie. La simmetria conserva dunque
  anche quante volte compare una radice.

  Dimostriamolo. Se <math|P(z)=(z-r)<rsup|m>Q(z)> con <math|Q(r)\<neq\>0>,
  coniughiamo tutti i coefficienti dell'identità, lasciando ferma la
  variabile formale <math|z>. Il polinomio <math|P> rimane uguale, e
  otteniamo

  <\equation*>
    P(z)=(z-<wide|r|\<bar\>>)<rsup|m><wide|Q|\<bar\>>(z).
  </equation*>

  Qui <math|<wide|Q|\<bar\>>> indica il polinomio dai coefficienti coniugati.
  Nel punto <math|<wide|r|\<bar\>>> esso vale
  <math|<wide|Q(r)|\<bar\>>\<neq\>0>. Dunque la molteplicità è proprio
  <math|m>, non soltanto almeno <math|m>.

  <figura|<image|assets/coniugate.pdf|90.0mm|62.5mm||>|Un esempio di radici
  reali e coppie non reali coniugate. I numeri indicano le molteplicità: 1 è
  doppia, <math|-2> semplice, <math|-1\<pm\>2i> triple e <math|2\<pm\>i>
  semplici. Il grado è <math|2+1+3+3+1+1=11>.>

  Una coppia <math|r=a+i*b>, <math|<wide|r|\<bar\>>=a-i*b>, con
  <math|b\<neq\>0>, produce il fattore reale

  <\equation*>
    (z-r)(z-<wide|r|\<bar\>>)=z<rsup|2>-2a*z+a<rsup|2>+b<rsup|2>.
  </equation*>

  Per esempio <math|r=-1+2i> dà <math|z<rsup|2>+2z+5>. Questo fattore non ha
  radici reali, perché per <math|z=x\<in\>\<bbb-R\>> vale
  <math|(x-a)<rsup|2>+b<rsup|2>\<gtr\>0>.

  Raggruppando tutte le coppie coniugate, <strong|ogni polinomio reale non
  nullo è una costante reale per fattori lineari reali e fattori quadratici
  reali senza radici reali>. I fattori ripetuti mantengono le rispettive
  molteplicità. Per le costanti il prodotto è vuoto.

  <section|Equazioni quadratiche complesse>

  Per <math|a*z<rsup|2>+b*z+c=0>, con <math|a\<neq\>0>, completiamo il
  quadrato moltiplicando per <math|4a>:

  <\equation*>
    (2a*z+b)<rsup|2>=b<rsup|2>-4a*c=\<Delta\>.
  </equation*>

  Se scegliamo un numero <math|u> con <math|u<rsup|2>=\<Delta\>>, le due
  possibilità sono <math|2a*z+b=\<pm\>u>, quindi

  <\equation*>
    z=<frac|-b\<pm\>u|2a>.
  </equation*>

  Per <math|\<Delta\>\<neq\>0> le radici quadrate <math|u,-u> sono distinte e
  opposte; per <math|\<Delta\>=0> coincidono in zero e danno una radice
  doppia. La scrittura <math|\<pm\><sqrt|\<Delta\>>> significa scegliere
  entrambe le radici quadrate, senza una preferenza naturale per una di esse
  nei complessi.

  Per <math|z<rsup|2>+(1-i)z-i=0>, abbiamo <math|a=1>, <math|b=1-i>,
  <math|c=-i>.

  Calcoliamo prima <math|(1-i)<rsup|2>=-2i>; perciò
  <math|\<Delta\>=-2i+4i=2i>. Una radice quadrata di <math|2i> è <math|1+i>,
  come si controlla elevando al quadrato. La formula dà

  <\equation*>
    z=<frac|-1+i\<pm\>(1+i)|2>.
  </equation*>

  Con il segno più otteniamo <math|i>, con il meno otteniamo <math|-1>. Il
  controllo è la fattorizzazione <math|(z-i)(z+1)=z<rsup|2>+(1-i)z-i>. I
  coefficienti non sono tutti reali: non c'è motivo di aspettarsi due radici
  coniugate.

  <subsection|Per proseguire: due letture delle radici seste>

  Il capitolo precedente ha trovato le radici di <math|z<rsup|6>=1> con la
  forma polare. Ritroviamole usando i fattori:

  <\equation*>
    z<rsup|6>-1=(z<rsup|3>-1)(z<rsup|3>+1)
  </equation*>

  <\equation*>
    =(z-1)(z+1)(z<rsup|2>+z+1)(z<rsup|2>-z+1).
  </equation*>

  I fattori lineari danno <math|1,-1>; i due quadratici danno rispettivamente
  <math|(-1\<pm\>i<sqrt|3>)/2> e <math|(1\<pm\>i<sqrt|3>)/2>. È la stessa
  lista. Forma polare e fattorizzazione sono due modi di usare la struttura
  del problema: scegliamo quello che rende trasparenti i passaggi.

  <\verifica|3>
    <strong|3.1.> Trova le radici distinte e le molteplicità di
    <math|(z<rsup|2>+1)<rsup|3>>. Un polinomio reale di grado 3 può avere
    contemporaneamente le radici <math|i>, <math|2i>, 1?

    <strong|3.2.> Scrivi un polinomio reale monico di grado 4 che abbia
    <math|2+i> come radice doppia. Spiega perché le condizioni determinano
    tutte le sue radici e verifica il grado.
  </verifica>

  <chapter|Spazi vettoriali e sottospazi>

  <\inbreve>
    Che cosa hanno in comune frecce, polinomi e matrici? Sappiamo sommarli e
    moltiplicarli per numeri. Raccoglieremo le regole comuni nella
    definizione di spazio vettoriale e impareremo a riconoscerne i
    sottospazi.
  </inbreve>

  <section|Spazio vettoriale: le regole di somma e scalari>

  Con <math|u=(1,2)> e <math|v=(3,-1)> otteniamo <math|u+v=(4,1)> e
  <math|2u=(2,4)>. Per le frecce la somma segue il parallelogramma; un
  multiplo cambia lunghezza e, se negativo, verso. Zero dà la freccia nulla.
  Conserveremo queste regole anche per oggetti diversi.

  Sia <math|K> un campo, come <math|\<bbb-R\>> o <math|\<bbb-C\>>. I suoi
  elementi saranno gli <strong|scalari>.

  Uno <strong|spazio vettoriale su <math|K>> è un insieme <math|V>, i cui
  elementi chiamiamo vettori, con una somma <math|V\<times\>V\<rightarrow\>V>
  e un prodotto per scalare <math|K\<times\>V\<rightarrow\>V>. Le operazioni
  devono restituire vettori di <math|V>. Per ogni <math|u,v,w\<in\>V> e
  <math|\<alpha\>,\<beta\>\<in\>K> richiediamo:

  <\itemize>
    <item><math|(u+v)+w=u+(v+w)> e <math|u+v=v+u>;

    <item>esiste un vettore nullo <math|0<rsub|V>> con <math|v+0<rsub|V>=v>;

    <item>ogni <math|v> ha un opposto <math|-v> con <math|v+(-v)=0<rsub|V>>;

    <item><math|\<alpha\>(u+v)=\<alpha\>u+\<alpha\>v> e
    <math|(\<alpha\>+\<beta\>)v=\<alpha\>v+\<beta\>v>;

    <item><math|(\<alpha\>\<beta\>)v=\<alpha\>(\<beta\>v)> e
    <math|1<rsub|K>v=v>.
  </itemize>

  Non richiediamo un prodotto di due vettori. In <math|\<alpha\>\<beta\>>
  moltiplichiamo due scalari; in <math|\<alpha\>v> uno scalare e un vettore.
  Anche i due segni di somma in <math|(\<alpha\>+\<beta\>)v=\<alpha\>v+\<beta\>v>
  agiscono su insiemi diversi.

  <\concetto|Spazio vettoriale>
    Il punto comune fra frecce, polinomi, funzioni e matrici è poter fare
    somme e prodotti per scalari con queste regole. Dire su quale campo
    lavoriamo è parte della definizione.
  </concetto>

  In <math|K<rsup|n>> definiamo le operazioni componente per componente:

  <\equation*>
    x+y=(x<rsub|1>+y<rsub|1>,\<ldots\>,x<rsub|n>+y<rsub|n>),
  </equation*>

  <\equation*>
    \<alpha\>x=(\<alpha\>x<rsub|1>,\<ldots\>,\<alpha\>x<rsub|n>).
  </equation*>

  Per capire una verifica, guardiamo l'associatività. La componente <math|i>
  di <math|(x+y)+z> è <math|(x<rsub|i>+y<rsub|i>)+z<rsub|i>>. Nel campo
  questa vale <math|x<rsub|i>+(y<rsub|i>+z<rsub|i>)>, componente di
  <math|x+(y+z)>. Tutte le componenti coincidono, dunque coincidono i
  vettori.

  Le due distributività, la compatibilità e l'azione dell'unità si verificano
  applicando la corrispondente regola del campo a ciascuna componente. Zero e
  opposto sono <math|(0,\<ldots\>,0)> e <math|(-x<rsub|1>,\<ldots\>,-x<rsub|n>)>.

  <subsection|Che cosa significa moltiplicare per zero>

  Lo zero del campo e il vettore nullo sono oggetti diversi. Gli assiomi
  collegano i loro ruoli. Da <math|0<rsub|K>v=(0<rsub|K>+0<rsub|K>)v=0<rsub|K>v+0<rsub|K>v>,
  sottraendo <math|0<rsub|K>v> ai due membri, segue
  <math|0<rsub|K>v=0<rsub|V>>.

  Da <math|\<alpha\>0<rsub|V>=\<alpha\>(0<rsub|V>+0<rsub|V>)=\<alpha\>0<rsub|V>+\<alpha\>0<rsub|V>>
  segue nello stesso modo <math|\<alpha\>0<rsub|V>=0<rsub|V>>.

  Infine <math|v+(-1<rsub|K>)v=(1<rsub|K>-1<rsub|K>)v=0<rsub|V>>, quindi
  <math|(-1<rsub|K>)v=-v>.

  Nel seguito scriveremo spesso soltanto 0: il contesto dirà se è uno scalare
  oppure un vettore.

  <section|Polinomi, funzioni e matrici come vettori>

  <subsection|Polinomi: lavorare sui coefficienti>

  Per <strong|polinomi formali> <math|K[X]> sommiamo i coefficienti della
  stessa potenza e moltiplichiamo tutti i coefficienti per lo scalare. Per
  esempio <math|(1+2X)+(3-X)=4+X>. Il vettore nullo ha tutti i coefficienti
  zero. Le regole del campo valgono coefficiente per coefficiente. Il simbolo
  <math|X> è formale: due polinomi sono uguali quando hanno gli stessi
  coefficienti.

  I polinomi di grado al più <math|d>, incluso il polinomio nullo, formano
  <math|K<rsub|d>[X]>. Le operazioni non alzano il grado oltre <math|d>. Il
  grado può invece abbassarsi: <math|(X<rsup|2>+X)+(-X<rsup|2>+1)=X+1>.
  Perciò i polinomi di grado <em|esattamente> 2 non formano uno spazio con
  queste operazioni; manca anche il polinomio nullo.

  <subsection|Funzioni: lavorare punto per punto>

  Per le <strong|funzioni> <math|f,g:D\<rightarrow\>K>, con dominio fissato
  <math|D>, le operazioni sono punto per punto:

  <\equation*>
    (f+g)(t)=f(t)+g(t),<space|2em>(\<alpha\>f)(t)=\<alpha\>f(t).
  </equation*>

  Se <math|f(3)=5> e <math|g(3)=7>, la funzione <math|f+g> vale 12 nel punto
  3. Il vettore nullo è la funzione sempre nulla.

  Verificare un assioma significa verificarlo per ogni <math|t>: per esempio
  le due funzioni <math|(f+g)+h> e <math|f+(g+h)> hanno valori
  <math|(f(t)+g(t))+h(t)> e <math|f(t)+(g(t)+h(t))>, uguali nel campo.

  <subsection|Matrici: lavorare casella per casella>

  Una <strong|matrice> <math|A=(a<rsub|i*j>)> di tipo <math|m\<times\>n> è
  una tabella con <math|m> righe e <math|n> colonne. Il primo indice indica
  la riga, il secondo la colonna.

  In <math|M<rsub|m,n>(K)> poniamo <math|(A+B)<rsub|i*j>=a<rsub|i*j>+b<rsub|i*j>>
  e <math|(\<alpha\>A)<rsub|i*j>=\<alpha\>a<rsub|i*j>>. Zero è la tabella di
  tutti zeri.

  Gli assiomi si verificano casella per casella; le matrici da sommare devono
  avere lo stesso tipo. Il prodotto tra matrici sarà un'altra operazione,
  introdotta più avanti.

  <subsection|Lo stesso insieme su campi diversi>

  Infine <math|\<bbb-C\>> è uno spazio su <math|\<bbb-C\>> con il prodotto
  usuale come prodotto per scalare. Possiamo anche ammettere soltanto scalari
  reali e considerarlo su <math|\<bbb-R\>>.

  Entrambe le strutture rispettano gli assiomi, ma le combinazioni consentite
  cambiano: <math|i\<cdot\>1> è lecito nella prima, mentre nella seconda il
  coefficiente <math|i> non è ammesso. Ritroveremo questa differenza
  studiando basi e dimensione.

  <section|Sottospazi: quando le operazioni restano dentro>

  Dentro <math|\<bbb-R\><rsup|2>> consideriamo la retta
  <math|L={t(1,2):t\<in\>\<bbb-R\>}>. Sommare due suoi vettori dà
  <math|s(1,2)+t(1,2)=(s+t)(1,2)>, ancora sulla retta. Anche moltiplicare per
  <math|\<alpha\>> dà <math|(\<alpha\>s)(1,2)>. La retta conserva le due
  operazioni.

  Un <strong|sottospazio> <math|W> di <math|V> è un sottoinsieme che è uno
  spazio vettoriale con le stesse operazioni e lo stesso campo di <math|V>.
  Gli assiomi di uguaglianza, come associatività e distributività, sono già
  veri nello spazio ambiente. Dobbiamo garantire che i risultati restino in
  <math|W> e che vi siano zero e opposti.

  <\concetto|Criterio di sottospazio>
    Un sottoinsieme <math|W\<subseteq\>V> è un sottospazio se e solo se
    contiene <math|0<rsub|V>>, è chiuso per somma ed è chiuso per prodotto
    con ogni scalare di <math|K>.
  </concetto>

  La necessità segue dalla definizione; in particolare, preso
  <math|w\<in\>W>, anche <math|0<rsub|K>w=0<rsub|V>> deve stare in <math|W>.
  Viceversa, le tre condizioni garantiscono operazioni interne, il vettore
  nullo e gli opposti, perché <math|-w=(-1)w\<in\>W>. Gli altri assiomi sono
  ereditati da <math|V>. Abbiamo così dimostrato la sufficienza.

  Al posto di chiedere <math|0\<in\>W> possiamo chiedere
  <math|W\<neq\>\<varnothing\>>: con la chiusura per scalari, un qualunque
  elemento produce zero. La sola chiusura non basta: l'insieme vuoto la
  soddisfa senza essere uno spazio.

  <figura|<image|assets/rette.pdf|135.0mm|51.8mm||>|Una retta per l'origine
  conserva somme e multipli. Una retta che non contiene l'origine non è un
  sottospazio: manca il vettore nullo.>

  Il piano <math|{(x,y,0):x,y\<in\>\<bbb-R\>}> è un sottospazio di
  <math|\<bbb-R\><rsup|3>>. È una copia di <math|\<bbb-R\><rsup|2>>, ma i
  suoi elementi sono terne: non bisogna confondere la coppia <math|(x,y)> con
  la terna <math|(x,y,0)>.

  Un esempio più utile è <math|W={(x,y,z)\<in\>\<bbb-R\><rsup|3>:2x-y+3z=0}>.
  Se <math|u=(x,y,z)> e <math|u'=(x',y',z')> stanno in <math|W>, allora

  <\equation*>
    2(x+x')-(y+y')+3(z+z')=(2x-y+3z)+(2x'-y'+3z')=0.
  </equation*>

  Per un multiplo l'espressione diventa <math|\<alpha\>(2x-y+3z)=0>. Zero
  soddisfa l'equazione. È dunque un sottospazio. Lo stesso argomento vale per
  qualunque sistema di equazioni lineari omogenee. Con termine noto 1 lo zero
  non soddisfa l'equazione, quindi il criterio fallisce.

  Possiamo anche costruire tutti i vettori di <math|W>. Isoliamo
  <math|y=2x+3z> e lasciamo liberi <math|x=s,z=t>. Otteniamo

  <\equation*>
    (s,2s+3t,t)=s(1,2,0)+t(0,3,1).
  </equation*>

  Le equazioni indicano quali vettori sono ammessi; i parametri mostrano come
  ottenerli. Nel prossimo capitolo daremo un nome all'insieme di queste
  combinazioni.

  <section|Intersezione e unione di sottospazi>

  Se <math|U,W> sono sottospazi dello stesso <math|V>, la loro
  <strong|intersezione> è sempre un sottospazio. Contiene zero. Due vettori
  nell'intersezione stanno in entrambi i sottospazi; la loro somma e ogni
  multiplo stanno ancora in entrambi, dunque nell'intersezione. La
  dimostrazione vale anche per una famiglia arbitraria di sottospazi.

  Per l'<strong|unione> la situazione cambia. Nell'unione dei due assi di
  <math|\<bbb-R\><rsup|2>> troviamo <math|(1,0)> e <math|(0,1)>, ma non
  <math|(1,1)>: la chiusura per somma fallisce.

  Precisamente, <math|U\<cup\>W> è un sottospazio se e solo se
  <math|U\<subseteq\>W> oppure <math|W\<subseteq\>U>. Se uno contiene
  l'altro, l'unione coincide col più grande.

  Se nessuno contiene l'altro, scegliamo <math|u\<in\>U> fuori da <math|W> e
  <math|w\<in\>W> fuori da <math|U>. La somma <math|u+w> non può stare
  nell'unione: se stesse in <math|U>, avremmo <math|w=(u+w)-u\<in\>U>; se
  stesse in <math|W>, avremmo <math|u=(u+w)-w\<in\>W>. Entrambi i casi
  contraddicono la scelta. Manca dunque la chiusura per somma.

  <\verifica|4>
    <strong|4.1.> L'insieme dei polinomi <math|p\<in\>\<bbb-R\><rsub|3>[X]>
    con <math|p(1)=0> è un sottospazio? E quello con <math|p(1)=2>? Usa il
    comportamento della valutazione rispetto alle due operazioni.

    <strong|4.2.> In <math|\<bbb-R\><rsup|3>> considera
    <math|H={(x,y,z):x+y+z=0}>. Descrivi tutti i suoi vettori con due
    parametri. Decidi se <math|(1,1,-2)> appartiene a <math|H> e spiega
    perché.
  </verifica>

  <chapter|Span, indipendenza lineare e basi>

  <\inbreve>
    Quali vettori possiamo costruire partendo da quelli che conosciamo? Le
    combinazioni lineari descriveranno tutte le possibilità. Separando
    esistenza e unicità della scrittura arriveremo alle basi e alle
    coordinate.
  </inbreve>

  <section|Combinazioni lineari, span e generatori>

  Prendiamo <math|u=(1,2)> e <math|v=(2,4)>. Possiamo moltiplicarli per
  coefficienti reali e sommare:

  <\equation*>
    \<alpha\>(1,2)+\<beta\>(2,4)=(\<alpha\>+2\<beta\>,2\<alpha\>+4\<beta\>)=(\<alpha\>+2\<beta\>)(1,2).
  </equation*>

  Ogni risultato è dunque un multiplo di <math|(1,2)>. Possiamo ottenere
  <math|(3,6)>: per esempio scegliendo <math|\<alpha\>=\<beta\>=1>, oppure
  <math|\<alpha\>=3,\<beta\>=0>. La scrittura non è unica.

  Possiamo ottenere anche <math|(1,0)>? No: ogni risultato ha la seconda
  componente doppia della prima, mentre <math|(1,0)> non rispetta questa
  condizione. Abbiamo descritto sia ciò che possiamo raggiungere sia ciò che
  rimane fuori.

  Con <math|(1,0)> e <math|(0,1)> la situazione cambia:
  <math|\<alpha\>(1,0)+\<beta\>(0,1)=(\<alpha\>,\<beta\>)>. Ogni vettore del
  piano si ottiene scegliendo le sue due componenti come coefficienti.

  Fissati <math|v<rsub|1>,\<ldots\>,v<rsub|r>\<in\>V>, una
  <strong|combinazione lineare> è un vettore
  <math|\<alpha\><rsub|1>v<rsub|1>+\<cdots\>+\<alpha\><rsub|r>v<rsub|r>>, con
  coefficienti <math|\<alpha\><rsub|j>\<in\>K>. I vettori sono fissati;
  cambiano i coefficienti. Lo <strong|span>, o sottospazio generato, è
  l'insieme di tutte le combinazioni:

  <\equation*>
    <math-up|span>(v<rsub|1>,\<ldots\>,v<rsub|r>)={\<alpha\><rsub|1>v<rsub|1>+\<cdots\>+\<alpha\><rsub|r>v<rsub|r>:\<alpha\><rsub|j>\<in\>K}.
  </equation*>

  <\concetto|Span e generatori>
    Lo span raccoglie tutti i vettori che possiamo ottenere con combinazioni
    lineari dei vettori dati. Questi sono <strong|generatori> di <math|V> se
    lo span coincide con tutto <math|V>.
  </concetto>

  La somma di due combinazioni si ottiene sommando i coefficienti dello
  stesso vettore; un multiplo moltiplica tutti i coefficienti. In
  particolare,

  <\equation*>
    <big|sum><rsub|j=1><rsup|r>\<alpha\><rsub|j>v<rsub|j>+<big|sum><rsub|j=1><rsup|r>\<beta\><rsub|j>v<rsub|j>=<big|sum><rsub|j=1><rsup|r>(\<alpha\><rsub|j>+\<beta\><rsub|j>)v<rsub|j>.
  </equation*>

  Scegliendo tutti i coefficienti zero otteniamo zero. Il criterio del
  capitolo precedente dimostra quindi che lo span è un sottospazio.

  <figura|<image|assets/span.pdf|160.0mm|50.0mm||>|I multipli di un vettore
  non nullo formano una retta. Due direzioni non parallele generano un piano.
  Tre vettori che restano in un piano non possono produrre vettori fuori da
  esso.>

  Per un insieme <math|A> anche infinito, <math|<math-up|span>(A)> comprende
  tutte le combinazioni di un numero <em|finito> di vettori di <math|A>. Non
  sono ammesse somme infinite. Se sommiamo due combinazioni finite, usiamo al
  più l'unione dei due insiemi finiti di vettori: la dimostrazione della
  chiusura resta valida. Poniamo <math|<math-up|span>(\<varnothing\>)={0}>,
  usando la somma vuota.

  Ogni <math|a\<in\>A> sta nello span perché <math|a=1a>. Inoltre un
  sottospazio che contiene <math|A> contiene ogni sua combinazione finita.
  Dunque lo span è il <strong|più piccolo sottospazio che contiene <math|A>>.
  Equivalentemente è l'intersezione di tutti i sottospazi che contengono
  <math|A>. Fare lo span una seconda volta non aggiunge nulla:
  <math|<math-up|span>(<math-up|span>(A))=<math-up|span>(A)>.

  La condizione <math|<math-up|span>(A)=V> garantisce che ogni vettore sia
  raggiungibile. Non garantisce che i coefficienti siano unici: <math|(3,6)>
  ci ha già dato due scritture diverse.

  <section|Indipendenza lineare: rendere unica la scrittura>

  Per <math|u=(1,2)> e <math|v=(2,4)> la combinazione <math|2u-v=0> ha
  coefficienti non tutti nulli. Questa relazione permette di modificare i
  coefficienti di una rappresentazione senza cambiare il risultato. È
  l'ostacolo all'unicità.

  <\concetto|Indipendenza lineare>
    I vettori <math|v<rsub|1>,\<ldots\>,v<rsub|r>> sono linearmente
    indipendenti se

    <\equation*>
      \<alpha\><rsub|1>v<rsub|1>+\<cdots\>+\<alpha\><rsub|r>v<rsub|r>=0<space|1em>\<Rightarrow\><space|1em>\<alpha\><rsub|1>=\<cdots\>=\<alpha\><rsub|r>=0.
    </equation*>

    Sono dipendenti se esiste una relazione nulla con almeno un coefficiente
    non nullo. Per una famiglia infinita si richiede l'indipendenza di ogni
    sottofamiglia finita.
  </concetto>

  Perché basta controllare le rappresentazioni di zero? Supponiamo che
  <math|v=<big|sum>\<alpha\><rsub|j>v<rsub|j>=<big|sum>\<beta\><rsub|j>v<rsub|j>>.
  Sottraendo otteniamo <math|<big|sum>(\<alpha\><rsub|j>-\<beta\><rsub|j>)v<rsub|j>=0>.
  Se i vettori sono indipendenti, tutti i coefficienti della differenza sono
  zero: <math|\<alpha\><rsub|j>=\<beta\><rsub|j>>. Viceversa, se le
  rappresentazioni sono uniche per i vettori dello span, lo sono per zero,
  che ha già la rappresentazione con tutti i coefficienti nulli. Le due
  proprietà sono equivalenti.

  L'indipendenza assicura <em|al più> una scrittura; l'esistenza dipende
  dalla generazione.

  Un solo vettore è indipendente esattamente quando è non nullo. Infatti, se
  <math|\<alpha\>v=0> con <math|\<alpha\>\<neq\>0>, moltiplicare per
  <math|\<alpha\><rsup|-1>> darebbe <math|v=0>. Il vettore nullo invece ha la
  relazione non banale <math|1\<cdot\>0=0>.

  Due vettori sono dipendenti esattamente quando almeno uno è multiplo
  dell'altro: basta isolare un vettore il cui coefficiente è non nullo in una
  relazione <math|\<alpha\>u+\<beta\>v=0>.

  La stessa idea vale per più vettori. Da una relazione
  <math|<big|sum>\<alpha\><rsub|j>v<rsub|j>=0> con
  <math|\<alpha\><rsub|i>\<neq\>0> si ricava

  <\equation*>
    v<rsub|i>=-<big|sum><rsub|j\<neq\>i><frac|\<alpha\><rsub|j>|\<alpha\><rsub|i>>v<rsub|j>.
  </equation*>

  Quel vettore si può ottenere dagli altri: eliminarlo non cambia lo span.

  Viceversa, portando a sinistra una sua espressione mediante gli altri, il
  coefficiente di <math|v<rsub|i>> è 1, e abbiamo una relazione non banale.
  <strong|Dipendenza significa dunque presenza di un vettore superfluo.> Un
  sottoinsieme di indipendenti rimane indipendente; aggiungere vettori a
  dipendenti conserva la relazione già presente e quindi la dipendenza.

  <\guidato|Leggere prima una coordinata utile>
    Consideriamo <math|v<rsub|1>=(-1,1,0)> e <math|v<rsub|2>=(-2,1,1)>. Nella
    terza posizione soltanto il secondo vettore contribuisce. È utile
    cominciare lì:

    <\equation*>
      \<alpha\>v<rsub|1>+\<beta\>v<rsub|2>=(-\<alpha\>-2\<beta\>,\<alpha\>+\<beta\>,\<beta\>)=(0,0,0).
    </equation*>

    La terza componente impone <math|\<beta\>=0>; poi la seconda impone
    <math|\<alpha\>=0>. Abbiamo esaurito tutte le possibilità: i due vettori
    sono indipendenti. Non occorre che ogni vettore abbia una sola entrata
    non nulla.
  </guidato>

  <section|Basi e coordinate rispetto a una base>

  Nel piano prendiamo <math|b<rsub|1>=(1,1)> e <math|b<rsub|2>=(1,-1)>. Per
  ottenere <math|(3,1)> cerchiamo <math|\<alpha\>b<rsub|1>+\<beta\>b<rsub|2>=(3,1)>.
  Le componenti danno <math|\<alpha\>+\<beta\>=3> e
  <math|\<alpha\>-\<beta\>=1>. Sommando le uguaglianze otteniamo
  <math|2\<alpha\>=4>, quindi <math|\<alpha\>=2> e <math|\<beta\>=1>.

  Per un vettore qualunque <math|(p,q)> troviamo allo stesso modo

  <\equation*>
    \<alpha\>=<frac|p+q|2>,<space|2em>\<beta\>=<frac|p-q|2>.
  </equation*>

  Le formule forniscono una e una sola coppia per ogni vettore: abbiamo sia
  generazione sia indipendenza.

  <\concetto|Base e coordinate>
    Una base di <math|V> è una famiglia che genera <math|V> ed è linearmente
    indipendente. Ogni vettore si scrive quindi in modo unico come
    combinazione finita dei vettori della base. Fissato l'ordine
    <math|B=(b<rsub|1>,\<ldots\>,b<rsub|n>)>, se
    <math|v=x<rsub|1>b<rsub|1>+\<cdots\>+x<rsub|n>b<rsub|n>>, le coordinate
    sono <math|[v]<rsub|B>=(x<rsub|1>,\<ldots\>,x<rsub|n>)>, intese come
    colonna.
  </concetto>

  Non è necessario che le direzioni di una base siano perpendicolari. Per
  esempio anche <math|((1,0),(1,1))> è una base: ogni <math|(p,q)> si scrive
  in modo unico come <math|(p-q)(1,0)+q(1,1)>. In questo riferimento obliquo
  <math|(3,1)=2(1,0)+(1,1)>.

  L'ordine è necessario: scambiare i due vettori di base scambia le due
  coordinate. Per la base appena studiata, <math|[(3,1)]<rsub|B>=(2,1)>.
  Nella base canonica <math|E=((1,0),(0,1))> lo stesso vettore ha coordinate
  <math|(3,1)>.

  <figura|<image|assets/coordinate-basi.pdf|110.0mm|42.5mm||>|Il vettore
  geometrico è lo stesso. Cambiando le direzioni di riferimento cambiano i
  coefficienti necessari per ricostruirlo.>

  In <math|K<rsup|n>> la base canonica è <math|e<rsub|1>,\<ldots\>,e<rsub|n>>,
  dove <math|e<rsub|j>> ha 1 nella posizione <math|j> e zero nelle altre.
  Ogni <math|x> si scrive <math|<big|sum>x<rsub|j>e<rsub|j>>. In una
  combinazione nulla la componente <math|j> è proprio il coefficiente di
  <math|e<rsub|j>>, che deve quindi essere zero. Questo dimostra entrambe le
  proprietà della base.

  Per i polinomi, <math|1,X,X<rsup|2>,\<ldots\>> è una base di <math|K[X]>:
  genera per la forma di ogni polinomio; è indipendente perché una
  combinazione finita è il polinomio nullo solo se tutti i coefficienti sono
  zero. Per <math|K<rsub|d>[X]> bastano <math|1,X,\<ldots\>,X<rsup|d>>. Lo
  span dei soli monomi di esponente pari contiene esattamente i polinomi con
  sole potenze pari; non raggiunge, per esempio, <math|X>.

  Nessun insieme finito di polinomi genera <math|K[X]>: se non sono tutti
  nulli, i loro gradi hanno un massimo <math|d>, e nessuna combinazione può
  dare <math|X<rsup|d+1>>. Se sono tutti nulli, generano soltanto zero.

  <subsection|Per proseguire: coordinate in una base infinita>

  Nella base infinita dei monomi, <math|2-X<rsup|3>> ha coordinate 2 davanti
  a 1, <math|-1> davanti a <math|X<rsup|3>> e zero altrove. Il
  <strong|supporto>, ossia l'insieme delle posizioni con coordinata non
  nulla, è finito.

  In generale le coordinate in una base infinita <math|B> sono funzioni
  <math|B\<rightarrow\>K> a supporto finito: non tutte le funzioni
  <math|B\<rightarrow\>K> possono essere coordinate.

  <section|Il campo cambia le combinazioni ammesse>

  In <math|\<bbb-C\><rsup|2>> consideriamo <math|v=(1,i)> e <math|w=(i,-1)>.
  Su <math|\<bbb-C\>> sono dipendenti, perché <math|w=i*v>. Con coefficienti
  reali, invece, dalla prima coordinata di <math|\<alpha\>v+\<beta\>w=0>
  otteniamo <math|\<alpha\>+i\<beta\>=0>. Parte reale e parte immaginaria
  impongono <math|\<alpha\>=\<beta\>=0>: su <math|\<bbb-R\>> sono
  indipendenti.

  Passando da scalari reali a complessi aumentano le relazioni consentite.
  Una relazione reale rimane complessa; dunque una famiglia indipendente sui
  complessi è anche indipendente sui reali. Il contrario può fallire, come
  nell'esempio. Non può accadere che gli stessi vettori siano dipendenti sui
  reali e indipendenti sui complessi.

  Anche dividere per 2 dipende dal campo. La base <math|(1,1),(1,-1)> usata
  sopra funziona su <math|\<bbb-R\>> e su <math|\<bbb-C\>>. In
  <math|<math-up|F><rsub|2>> vale <math|-1=1>: i due vettori coincidono e non
  sono indipendenti. In un campo scriviamo <math|2=1<rsub|K>+1<rsub|K>>;
  possiamo dividere per 2 soltanto se questo elemento è non nullo.

  <\verifica|5>
    <strong|5.1.> In <math|\<bbb-R\><rsup|2>>, che cosa generano <math|(1,2)>
    e <math|(2,4)>? Sono indipendenti? Dopo aver deciso, trova due scritture
    diverse di <math|(3,6)> come loro combinazione.

    <strong|5.2.> Trova le coordinate di <math|(5,-1)> nella base
    <math|((1,1),(1,-1))>. Spiega anche perché una famiglia che contiene zero
    non può essere una base.
  </verifica>

  <chapter|Dimensione e lemma di scambio>

  <\inbreve>
    Perché tutte le basi del piano hanno due vettori? Sappiamo riconoscere
    una base, ma dobbiamo ancora confrontare basi diverse. Impareremo a
    togliere, aggiungere e scambiare vettori per dare un significato preciso
    alla dimensione.
  </inbreve>

  <section|Estrarre una base e completare una famiglia indipendente>

  Nel piano, la famiglia <math|(e<rsub|1>,e<rsub|2>,e<rsub|1>+e<rsub|2>)>
  genera tutto, ma contiene un vettore di troppo. Togliamo
  <math|e<rsub|1>+e<rsub|2>>: i due vettori rimasti lo ricostruiscono. Rimane
  la base canonica. Questo è un esempio di <strong|estrazione di una base> da
  generatori.

  Possiamo anche partire da troppo poco. Il solo <math|e<rsub|1>> è
  indipendente, ma genera soltanto l'asse orizzontale. Aggiungendo
  <math|e<rsub|2>>, che non sta su quell'asse, otteniamo una base. È un
  <strong|completamento>.

  Perché aggiungere un vettore fuori dallo span conserva l'indipendenza? Se
  <math|b<rsub|1>,\<ldots\>,b<rsub|r>> sono indipendenti e <math|v> è fuori
  dal loro span, consideriamo

  <\equation*>
    \<alpha\><rsub|1>b<rsub|1>+\<cdots\>+\<alpha\><rsub|r>b<rsub|r>+\<beta\>v=0.
  </equation*>

  Un coefficiente <math|\<beta\>\<neq\>0> permetterebbe di isolare <math|v> e
  scriverlo nello span, contro la scelta. Dunque <math|\<beta\>=0>;
  l'indipendenza iniziale annulla anche gli altri coefficienti.

  Torniamo ora a una famiglia finita che genera <math|V>. Se è dipendente, il
  capitolo precedente permette di eliminare un vettore senza cambiare lo
  span. Ripetiamo finché la famiglia è indipendente. A ogni passo il numero
  di vettori diminuisce: il procedimento termina e lascia una base. Per
  <math|V={0}> la base è la famiglia vuota. Dunque <strong|ogni famiglia
  finita di generatori contiene una base>.

  <section|Lemma di scambio: sostituire senza perdere informazioni>

  Nella base canonica del piano, <math|w=(2,1)> si scrive
  <math|w=2e<rsub|1>+e<rsub|2>>. Possiamo sostituire <math|e<rsub|1>> con
  <math|w>? Sì: l'identità <math|e<rsub|1>=(w-e<rsub|2>)/2> ci permette di
  recuperare il vettore tolto. Non abbiamo perso la possibilità di generare
  il piano.

  La nuova coppia <math|(w,e<rsub|2>)> è anche indipendente: da
  <math|\<alpha\>w+\<beta\>e<rsub|2>=(2\<alpha\>,\<alpha\>+\<beta\>)=0> segue
  prima <math|\<alpha\>=0>, poi <math|\<beta\>=0>.

  Facciamo entrare un secondo vettore, <math|z=(1,1)>. La coppia <math|(w,z)>
  è indipendente: le equazioni <math|2\<alpha\>+\<beta\>=0> e
  <math|\<alpha\>+\<beta\>=0> danno <math|\<alpha\>=\<beta\>=0>. Vogliamo
  inserire <math|z> senza togliere <math|w>, già inserito.

  Scriviamo <math|z> nella base attuale:

  <\equation*>
    z=<frac|1|2>w+<frac|1|2>e<rsub|2>.
  </equation*>

  Il coefficiente di <math|e<rsub|2>> è non nullo. Possiamo perciò
  recuperarlo come <math|e<rsub|2>=2z-w> e sostituirlo con <math|z>. Abbiamo
  eseguito due scambi:

  <\equation*>
    (e<rsub|1>,e<rsub|2>)<space|1em>\<rightarrow\><space|1em>(w,e<rsub|2>)<space|1em>\<rightarrow\><space|1em>(w,z).
  </equation*>

  Nel secondo passo abbiamo tolto il vecchio vettore rimasto, conservando il
  nuovo già inserito. È questa la scelta che dovremo giustificare quando gli
  scambi saranno molti.

  <subsection|Il singolo scambio in generale>

  Questo recupero spiega la condizione generale. Siano
  <math|u<rsub|1>,\<ldots\>,u<rsub|r>> indipendenti e

  <\equation*>
    w=a<rsub|1>u<rsub|1>+\<cdots\>+a<rsub|r>u<rsub|r>,<space|2em>a<rsub|1>\<neq\>0.
  </equation*>

  Allora <math|w,u<rsub|2>,\<ldots\>,u<rsub|r>> sono indipendenti e hanno lo
  stesso span dei vecchi vettori. Per lo span, basta isolare

  <\equation*>
    u<rsub|1>=<frac|1|a<rsub|1>>(w-a<rsub|2>u<rsub|2>-\<cdots\>-a<rsub|r>u<rsub|r>).
  </equation*>

  Ogni nuovo vettore era combinazione dei vecchi e ogni vecchio vettore è
  combinazione dei nuovi: i due span coincidono.

  Per l'indipendenza, partiamo da una relazione nulla fra i nuovi vettori:

  <\equation*>
    \<beta\>w+<big|sum><rsub|j=2><rsup|r>\<beta\><rsub|j>u<rsub|j>=0.
  </equation*>

  Sostituiamo l'espressione di <math|w>. Il coefficiente di <math|u<rsub|1>>
  diventa <math|\<beta\>a<rsub|1>>; quello di <math|u<rsub|j>> per
  <math|j\<geq\>2> è <math|\<beta\>a<rsub|j>+\<beta\><rsub|j>>.

  L'indipendenza dei vecchi vettori impone <math|\<beta\>a<rsub|1>=0>. Poiché
  <math|a<rsub|1>\<neq\>0>, segue <math|\<beta\>=0>, e poi
  <math|\<beta\><rsub|j>=0> per ogni <math|j>. La nuova famiglia è
  indipendente. Se il coefficiente non nullo era in un'altra posizione, si
  scambia quel vettore.

  <subsection|Più scambi: il lemma di Steinitz>

  Ora partiamo da una base <math|u<rsub|1>,\<ldots\>,u<rsub|n>> e da vettori
  indipendenti <math|w<rsub|1>,\<ldots\>,w<rsub|m>> di <math|V>. Vogliamo far
  entrare tutti i <math|w> nella base. Scriviamo <math|w<rsub|1>> nella base:
  è non nullo, quindi qualche coefficiente è non nullo e permette il primo
  scambio.

  Al passo <math|k> abbiamo una base con <math|w<rsub|1>,\<ldots\>,w<rsub|k-1>>
  e alcuni <math|u> originari. Scriviamo <math|w<rsub|k>> in questa base.
  <strong|Almeno un coefficiente su un <math|u> rimasto è non nullo.>

  Se non lo fosse, <math|w<rsub|k>> sarebbe combinazione soltanto dei
  <math|w> precedenti, contraddicendo l'indipendenza. Possiamo quindi
  scambiare un <math|u>, senza togliere nessun <math|w> già inserito.

  <figura|<image|assets/scambio.pdf|140.0mm|50.0mm||>|Ogni scambio fa entrare
  un vettore indipendente <math|w> e sostituisce un vecchio vettore <math|u>.
  La famiglia continua a essere una base.>

  Non possiamo avere <math|m\<gtr\>n>. Dopo <math|n> scambi la base
  conterrebbe soltanto i primi <math|n> vettori <math|w>; il successivo
  sarebbe loro combinazione, contro l'indipendenza. Abbiamo provato il
  <strong|lemma di scambio di Steinitz>: <math|m\<leq\>n>, e l'insieme
  indipendente si completa a una base con alcuni vettori della base iniziale.

  <section|Dimensione: un numero che non dipende dalla base>

  Se due basi finite hanno <math|n> e <math|m> vettori, lo scambio applicato
  nei due sensi dà <math|m\<leq\>n> e <math|n\<leq\>m>. Quindi <math|m=n>.
  Inoltre, in uno spazio con una base di <math|n> vettori non esiste una base
  infinita: scegliendone <math|n+1> elementi avremmo una famiglia
  indipendente troppo lunga.

  <\concetto|Dimensione>
    La dimensione <math|dim<rsub|K>V> di uno spazio finitamente generato è il
    numero di vettori di una sua base. Lo scambio assicura che la scelta
    della base non cambia questo numero. Lo spazio <math|{0}> ha dimensione
    zero.
  </concetto>

  Abbiamo <math|dim<rsub|K>K<rsup|n>=n> e <math|dim<rsub|K>K<rsub|d>[X]=d+1>.
  Per le matrici, <math|E<rsub|i*j>> indica quella con 1 nella casella
  <math|(i,j)> e zero nelle altre. Ogni matrice si scrive
  <math|A=<big|sum><rsub|i,j>a<rsub|i*j>E<rsub|i*j>>. In una combinazione
  nulla la casella <math|(i,j)> dà il coefficiente di <math|E<rsub|i*j>>, che
  deve essere zero.

  Queste <math|m*n> matrici sono quindi una base e
  <math|dim<rsub|K>M<rsub|m,n>(K)=m*n>.

  <subsection|La dimensione dipende dal campo>

  Per <math|\<bbb-C\>> su <math|\<bbb-C\>> basta la base <math|(1)>: la
  dimensione è 1. Su <math|\<bbb-R\>> ogni <math|a+i*b> ha coefficienti reali
  unici rispetto a <math|(1,i)>: la dimensione è 2.

  Più in generale <math|\<bbb-C\><rsup|n>> ha dimensione <math|n> sui
  complessi e <math|2n> sui reali: una base reale è data da
  <math|e<rsub|1>,i*e<rsub|1>,\<ldots\>,e<rsub|n>,i*e<rsub|n>>. Ogni entrata
  complessa richiede due coordinate reali.

  <subsection|Le coordinate conservano le operazioni>

  La mappa delle coordinate <math|\<Phi\><rsub|B>:V\<rightarrow\>K<rsup|n>>,
  <math|v\<mapsto\>[v]<rsub|B>>, è una biiezione: l'esistenza e l'unicità
  dello sviluppo lo dimostrano.

  Rispetta anche le operazioni. Se <math|v=<big|sum>x<rsub|j>b<rsub|j>> e
  <math|w=<big|sum>y<rsub|j>b<rsub|j>>, i coefficienti di <math|v+w> sono
  <math|x<rsub|j>+y<rsub|j>>, e quelli di <math|\<alpha\>v> sono
  <math|\<alpha\>x<rsub|j>>. Quindi

  <\equation*>
    [v+w]<rsub|B>=[v]<rsub|B>+[w]<rsub|B>,<space|2em>[\<alpha\>v]<rsub|B>=\<alpha\>[v]<rsub|B>.
  </equation*>

  Un'applicazione che rispetta queste due operazioni si chiama
  <strong|lineare>; se è anche biiettiva, è un <strong|isomorfismo>.

  Dunque, scelta una base, <math|V\<cong\>K<rsup|n>>: le coordinate
  conservano tutta la struttura di spazio vettoriale, non soltanto i suoi
  elementi.

  <section|Completamento, sottospazi e criteri per una base>

  Sia <math|dim V=n>. Dal lemma di scambio un insieme indipendente ha al più
  <math|n> elementi e si completa a una base. Un insieme finito di generatori
  contiene una base e ha quindi almeno <math|n> elementi.

  Se i generatori sono infiniti, ne possiamo comunque estrarre un numero
  finito che genera: scriviamo ciascun vettore di una base finita mediante
  essi e raccogliamo tutti i vettori usati.

  Ogni scrittura è finita, e le scritture sono <math|n>; la loro unione è
  finita. Da lì estraiamo una base.

  Perciò <strong|<math|n> vettori indipendenti in <math|V> formano una base>;
  nel completamento non rimane alcun posto da riempire. Anche
  <strong|<math|n> generatori formano una base>, perché la base estratta ha
  già <math|n> vettori.

  Il numero corretto, da solo, non basta: due vettori paralleli nel piano
  continuano a fallire entrambe le proprietà.

  E per un sottospazio <math|W\<subseteq\>V>, che non sappiamo ancora essere
  finitamente generato? Partiamo dalla famiglia vuota e aggiungiamo un
  vettore di <math|W> fuori dallo span dei precedenti, finché è possibile.
  Ogni aggiunta mantiene l'indipendenza, come abbiamo dimostrato all'inizio
  del capitolo.

  Non possiamo fare più di <math|n> aggiunte. Quando ci fermiamo, non c'è più
  alcun vettore di <math|W> fuori dallo span: abbiamo una base finita di
  <math|W>. Così giustifichiamo anche la sua esistenza, prima di usarne la
  dimensione.

  La base di <math|W> è indipendente in <math|V>; quindi <math|dim
  W\<leq\>dim V>. Se le dimensioni coincidono, quella base è anche base di
  <math|V> e <math|W=V>. Viceversa, per ogni <math|0\<leq\>k\<leq\>n>, lo
  span di <math|k> elementi di una base di <math|V> ha dimensione <math|k>.

  Ora possiamo classificare i sottospazi geometrici. In
  <math|\<bbb-R\><rsup|2>> le dimensioni sono 0, 1, 2: rispettivamente il
  solo zero, una retta per l'origine e tutto il piano. In
  <math|\<bbb-R\><rsup|3>> si aggiungono i piani per l'origine, di dimensione
  2, mentre la dimensione 3 dà tutto lo spazio. Non ci sono altre
  possibilità.

  <subsection|Una sola equazione: prima un esempio>

  In <math|\<bbb-R\><rsup|3>>, l'equazione <math|2x-y+3z=0> lascia liberi
  <math|y,z>. Isoliamo <math|x=y/2-3z/2>:

  <\equation*>
    (x,y,z)=y(1/2,1,0)+z(-3/2,0,1).
  </equation*>

  I due vettori generano tutte le soluzioni. Sono indipendenti: la seconda
  componente di una loro combinazione nulla annulla il primo coefficiente, la
  terza annulla il secondo. Quindi lo spazio delle soluzioni ha dimensione 2.
  Non stiamo soltanto contando parametri: abbiamo verificato una base.

  Una singola equazione <math|a<rsub|1>x<rsub|1>+\<cdots\>+a<rsub|n>x<rsub|n>=0>
  con <math|a<rsub|1>\<neq\>0> ha come base i <math|n-1> vettori

  <\equation*>
    f<rsub|j>=e<rsub|j>-<frac|a<rsub|j>|a<rsub|1>>e<rsub|1>,<space|2em>j=2,\<ldots\>,n.
  </equation*>

  Se il primo coefficiente è zero ma un altro è non nullo, rinominiamo le
  coordinate portando quello in prima posizione.

  Infatti l'equazione determina <math|x<rsub|1>> e lascia libere
  <math|x<rsub|2>,\<ldots\>,x<rsub|n>>, così ogni soluzione è
  <math|<big|sum><rsub|j=2><rsup|n>x<rsub|j>f<rsub|j>>. Nella componente
  <math|j\<geq\>2> una combinazione dei <math|f> mostra soltanto il proprio
  coefficiente: se è nulla, tutti i coefficienti sono zero. La dimensione è
  <math|n-1>.

  Se tutti gli <math|a<rsub|j>> sono nulli, invece, l'equazione è <math|0=0>
  e non pone vincoli: la dimensione rimane <math|n>.

  <section|Basi di sottospazi di polinomi>

  Torniamo a <math|\<bbb-R\><rsub|3>[X]>, che ha dimensione 4. Una condizione
  come <math|p(0)=0> è facile da leggere sui coefficienti: se
  <math|p=a<rsub|0>+a<rsub|1>X+a<rsub|2>X<rsup|2>+a<rsub|3>X<rsup|3>>, impone
  <math|a<rsub|0>=0>. Quindi <math|W<rsub|0>={p:p(0)=0}> ha base
  <math|(X,X<rsup|2>,X<rsup|3>)> e dimensione 3.

  Per <math|W<rsub|1>={p:p(1)=0}> il teorema del fattore dà <math|p=(X-1)q>,
  con <math|q\<in\>\<bbb-R\><rsub|2>[X]>. Una base è
  <math|(X-1,X(X-1),X<rsup|2>(X-1))>. Genera perché sviluppiamo <math|q> in
  <math|1,X,X<rsup|2>>.

  È indipendente perché i tre polinomi hanno gradi distinti: in una relazione
  nulla il termine di grado massimo può provenire da un solo polinomio, il
  cui coefficiente deve essere zero. Eliminato quello, si ripete sui
  restanti.

  Questo argomento vale per qualunque famiglia finita di polinomi non nulli
  con gradi distinti.

  Per l'intersezione <math|W<rsub|0,1>> chiediamo entrambe le condizioni.
  Scriviamo <math|p=X*q> grazie a <math|p(0)=0>; valutando in 1 ricaviamo
  <math|q(1)=0>. Allora <math|q=(X-1)r> e

  <\equation*>
    p=X(X-1)(a+b*X).
  </equation*>

  Il quoziente ha grado al più 1. Una base è <math|(X(X-1),X<rsup|2>(X-1))> e
  la dimensione è 2, con generazione data dalla formula e indipendenza dai
  gradi 2 e 3.

  <figura|<image|assets/polinomi01.pdf|82.5mm|30.5mm||>|I due polinomi della
  base di <math|W<rsub|0,1>> si annullano in 0 e in 1. Nel disegno la curva
  continua è <math|X(X-1)>, quella tratteggiata è <math|X<rsup|2>(X-1)>.>

  Infine chiediamo soltanto <math|p(0)=p(1)>. I polinomi costanti sono
  ammessi. Per riusare l'intersezione precedente, sottraiamo la costante
  <math|p(0)>: il polinomio <math|q=p-p(0)> si annulla in entrambi i punti.
  Otteniamo quindi

  <\equation*>
    p=p(0)\<cdot\>1+a*X(X-1)+b*X<rsup|2>(X-1).
  </equation*>

  Questa formula dà la generazione; i gradi distinti 0, 2, 3 danno
  l'indipendenza. La base è <math|(1,X(X-1),X<rsup|2>(X-1))> e la dimensione
  è 3. Le condizioni considerate definiscono sottospazi perché la valutazione
  rispetta somme e multipli, come nell'esercizio 4.1.

  <subsection|Per proseguire: basi massimali e generatori minimali>

  Due altri modi di riconoscere una base sono utili per capire che cosa
  abbiamo raggiunto. Un insieme indipendente è <strong|massimale per
  inclusione> quando non possiamo aggiungere altri vettori mantenendo
  l'indipendenza.

  Un sistema di generatori è <strong|minimale per inclusione> quando non
  possiamo togliere vettori mantenendo la generazione. Non sono definizioni
  basate sul numero di elementi.

  Una base è indipendente massimale: se aggiungiamo <math|v> fuori dalla
  base, il fatto che essa generi scrive <math|v> mediante i suoi vettori e
  produce una relazione non banale.

  Viceversa, un insieme indipendente massimale genera. Infatti, se <math|v>
  fosse fuori dal suo span, una relazione
  <math|\<beta\>v+<big|sum>\<alpha\><rsub|j>b<rsub|j>=0> non potrebbe avere
  <math|\<beta\>\<neq\>0>, altrimenti esprimerebbe <math|v> nello span. Con
  <math|\<beta\>=0> anche gli altri coefficienti sarebbero zero per
  l'indipendenza. Potremmo quindi aggiungere <math|v>, contro la massimalità.

  Una base è anche generatore minimale: togliere un vettore renderebbe
  impossibile ricostruire proprio quel vettore, per l'indipendenza.

  Viceversa, un sistema minimale di generatori non può essere dipendente: una
  relazione non banale offrirebbe un vettore eliminabile, contro la
  minimalità.

  Le tre caratterizzazioni coincidono. Le prove funzionano anche per famiglie
  infinite, perché ogni relazione usa soltanto un numero finito di vettori;
  qui useremo soprattutto il caso finito.

  <subsection|Per proseguire: basi infinite>

  La base dei monomi mostra che <math|K[X]> non è finitamente generato. Anche
  per basi infinite si può parlare di dimensione come cardinalità, ed è vero
  che due basi dello stesso spazio sono equipotenti. Il confronto generale
  richiede argomenti ulteriori: il lemma finito dimostrato qui non ne
  costituisce una prova. Nel resto del volume i teoremi di dimensione si
  applicano a spazi finiti.

  <\verifica|6>
    <strong|6.1.> Trova una base e la dimensione di
    <math|W={p\<in\>\<bbb-R\><rsub|2>[X]:p(2)=0}>. Controlla sia la
    generazione sia l'indipendenza.

    <strong|6.2.> Completa <math|v=(2,3)> a una base di
    <math|\<bbb-R\><rsup|2>> scegliendo un vettore della base canonica. Poi
    spiega perché quattro vettori di <math|\<bbb-R\><rsup|3>> sono sempre
    dipendenti.
  </verifica>

  <chapter|Somme, somma diretta e formula di Grassmann>

  <\inbreve>
    Come possiamo unire due sottospazi? Partiamo dalle somme dei loro vettori
    e chiediamoci quando la decomposizione è unica. La formula di Grassmann
    ci insegnerà a contare le dimensioni senza contare due volte la parte
    comune.
  </inbreve>

  <section|Somma di sottospazi e somma diretta>

  Con l'asse orizzontale e quello verticale del piano possiamo ottenere
  <math|(3,2)> sommando <math|(3,0)> e <math|(0,2)>. Quel vettore non
  appartiene all'unione dei due assi. Se vogliamo un sottospazio che li
  contenga entrambi, dobbiamo includere anche queste somme.

  Per sottospazi <math|U,W\<subseteq\>V> definiamo

  <\equation*>
    U+W={u+w:u\<in\>U,w\<in\>W}.
  </equation*>

  Questa è la <strong|somma dei sottospazi>. Contiene zero, scritto
  <math|0+0>. Se <math|x=u<rsub|1>+w<rsub|1>> e <math|y=u<rsub|2>+w<rsub|2>>,
  allora <math|x+y=(u<rsub|1>+u<rsub|2>)+(w<rsub|1>+w<rsub|2>)> è ancora
  nella somma. Anche <math|\<alpha\>x=\<alpha\>u<rsub|1>+\<alpha\>w<rsub|1>>
  vi appartiene. È quindi un sottospazio.

  Contiene <math|U> perché <math|u=u+0>, e contiene <math|W> perché
  <math|w=0+w>. Qualunque sottospazio che contiene entrambi contiene ogni
  <math|u+w>. Dunque <math|U+W> è il più piccolo sottospazio che li contiene:
  <math|U+W=<math-up|span>(U\<cup\>W)>. Unire generatori di <math|U> e
  <math|W> fornisce generatori della somma; può però introdurre dipendenze.

  Per esempio, i due assi nel piano hanno solo zero in comune. Ogni
  <math|(x,y)> si scrive <math|(x,0)+(0,y)>, in un solo modo.

  Se invece <math|U=W> è l'asse orizzontale, il vettore <math|(1,0)> si
  scrive sia <math|(1,0)+(0,0)> sia <math|(2,0)+(-1,0)>. Una direzione comune
  permette di spostare un contributo da un addendo all'altro.

  <\concetto|Somma diretta>
    La somma <math|U+W> si chiama diretta, e si indica <math|U\<#2295\>W>,
    quando <math|U\<cap\>W={0}>. Ciò equivale a dire che ogni vettore della
    somma ha un'unica decomposizione <math|u+w>, con <math|u\<in\>U> e
    <math|w\<in\>W>.
  </concetto>

  Dimostriamo l'equivalenza. Se <math|u+w=u'+w'>, separiamo i contributi dei
  due sottospazi:

  <\equation*>
    u-u'=w'-w.
  </equation*>

  Il vettore a sinistra appartiene a <math|U>, quello a destra a <math|W>.
  Essendo uguali, sono un vettore dell'intersezione. Se l'intersezione è
  zero, entrambi sono zero: <math|u=u'> e <math|w=w'>.

  Viceversa, un vettore non nullo <math|t\<in\>U\<cap\>W> darebbe le due
  decomposizioni diverse <math|t=t+0=0+t>. L'unicità impedisce che esista.

  Più precisamente, da una decomposizione <math|z=u+w> e da un qualsiasi
  <math|t\<in\>U\<cap\>W> otteniamo <math|z=(u+t)+(w-t)>. Tutte le
  decomposizioni si ottengono così, perché la differenza di due primi addendi
  è nell'intersezione. Su un campo infinito un'intersezione non nulla produce
  quindi infinite decomposizioni.

  <figura|<image|assets/somma-diretta.pdf|155.0mm|55.0mm||>|Un piano e una
  retta non contenuta nel piano in <math|\<bbb-R\><rsup|3>> sono in somma
  diretta. Due piani distinti hanno una retta comune: la loro somma è tutto
  lo spazio, ma la decomposizione non è unica.>

  <section|Basi della somma diretta e supplementari>

  Supponiamo in questa sezione che i sottospazi abbiano dimensione finita. Se
  <math|U\<cap\>W={0}>, uniamo una base <math|u<rsub|1>,\<ldots\>,u<rsub|r>>
  di <math|U> e una base <math|w<rsub|1>,\<ldots\>,w<rsub|s>> di <math|W>. La
  famiglia genera la somma: sviluppiamo separatamente i due addendi di
  <math|z=u+w> e poi sommiamo.

  Per l'indipendenza, da <math|<big|sum>\<alpha\><rsub|i>u<rsub|i>+<big|sum>\<beta\><rsub|j>w<rsub|j>=0>
  ricaviamo <math|<big|sum>\<alpha\><rsub|i>u<rsub|i>=-<big|sum>\<beta\><rsub|j>w<rsub|j>>.
  Il vettore comune appartiene a <math|U\<cap\>W={0}>. Le due somme sono
  quindi nulle, e l'indipendenza di ciascuna base impone tutti i coefficienti
  zero. È una base di <math|U\<#2295\>W>, perciò

  <\equation*>
    dim(U\<#2295\>W)=dim U+dim W.
  </equation*>

  Leggiamo lo stesso fatto al contrario. Se dividiamo una famiglia
  indipendente in due gruppi e chiamiamo <math|U,W> i loro span, ogni
  combinazione si separa nei due gruppi, quindi lo span totale è <math|U+W>.

  Se un vettore fosse in entrambi gli span, avremmo due espressioni, una per
  gruppo. Sottraendole otterremmo una relazione nella famiglia indipendente:
  tutti i coefficienti sarebbero zero. Dunque l'intersezione è <math|{0}> e
  la somma è diretta.

  Un sottospazio <math|W> si dice <strong|supplementare> di <math|U> in
  <math|V> quando <math|V=U\<#2295\>W>. In dimensione finita ne costruiamo
  uno completando una base di <math|U> a una base di <math|V>: i vettori
  aggiunti generano <math|W>, e il risultato appena dimostrato assicura la
  somma diretta.

  Il supplementare non è in generale unico. All'asse orizzontale di
  <math|\<bbb-R\><rsup|2>> possiamo aggiungere l'asse verticale oppure
  qualunque retta per l'origine diversa dall'asse orizzontale.

  <section|Formula di Grassmann: contare la parte comune una volta>

  Prendiamo <math|U={(x,y,0)}> e <math|W={(x,0,z)}> in
  <math|\<bbb-R\><rsup|3>>. Un vettore che appartiene a entrambi deve avere
  sia terza sia seconda componente nulla. Dunque

  <\equation*>
    U\<cap\>W={(x,0,0)}=<math-up|span>(e<rsub|1>).
  </equation*>

  La somma è invece tutto lo spazio: ogni <math|(x,y,z)> si scrive
  <math|(x,y,0)+(0,0,z)>, con il primo addendo in <math|U> e il secondo in
  <math|W>.

  Le basi <math|(e<rsub|1>,e<rsub|2>)> e <math|(e<rsub|1>,e<rsub|3>)> hanno
  una direzione in comune. Conservandone una sola copia otteniamo
  <math|(e<rsub|1>,e<rsub|2>,e<rsub|3>)>, base della somma. Per questo la
  dimensione è <math|2+2-1=3>, anziché 4.

  Proviamo sullo stesso esempio la mossa che servirà nella dimostrazione. Se
  <math|\<gamma\>e<rsub|1>+\<alpha\>e<rsub|2>+\<beta\>e<rsub|3>=0>, isoliamo
  <math|t=\<beta\>e<rsub|3>>. È in <math|W>, ma è anche uguale a
  <math|-\<gamma\>e<rsub|1>-\<alpha\>e<rsub|2>>, quindi sta in <math|U>.

  Essendo comune, <math|t> deve stare sull'asse <math|x>. Ma
  <math|\<beta\>e<rsub|3>=(0,0,\<beta\>)> sta anche sull'asse <math|z>:
  l'unico caso possibile è <math|\<beta\>=0>. Rimane
  <math|\<gamma\>e<rsub|1>+\<alpha\>e<rsub|2>=0>, che annulla gli altri
  coefficienti.

  Nella prova generale non potremo leggere tre componenti così facilmente. Al
  loro posto useremo le coordinate nelle basi dei due sottospazi.

  <\concetto|Formula di Grassmann>
    Per due sottospazi di dimensione finita vale

    <\equation*>
      dim(U+W)=dim U+dim W-dim(U\<cap\>W).
    </equation*>
  </concetto>

  La correzione sottrae una volta le dimensioni comuni. Per provarla non
  basta l'analogia con gli insiemi finiti: dobbiamo costruire una base della
  somma senza ridondanze.

  Poniamo <math|dim U=n>, <math|dim W=p>, <math|dim(U\<cap\>W)=q>.

  Partiamo da una base <math|v<rsub|1>,\<ldots\>,v<rsub|q>> dell'intersezione
  e completiamola due volte: a una base <math|(v<rsub|1>,\<ldots\>,v<rsub|q>,u<rsub|q+1>,\<ldots\>,u<rsub|n>)>
  di <math|U>, e a una base <math|(v<rsub|1>,\<ldots\>,v<rsub|q>,w<rsub|q+1>,\<ldots\>,w<rsub|p>)>
  di <math|W>. Il completamento è disponibile dal capitolo 6.

  Prendiamo ora una sola copia dei vettori comuni e tutti quelli aggiunti:

  <\equation*>
    B=(v<rsub|1>,\<ldots\>,v<rsub|q>,u<rsub|q+1>,\<ldots\>,u<rsub|n>,w<rsub|q+1>,\<ldots\>,w<rsub|p>).
  </equation*>

  La famiglia genera <math|U+W>, perché ogni <math|z=u+w> si sviluppa nelle
  due basi: i coefficienti dei <math|v<rsub|i>> si sommano, gli altri
  rimangono separati.

  Il passo delicato è l'indipendenza. Supponiamo

  <\equation*>
    <big|sum><rsub|i=1><rsup|q>\<gamma\><rsub|i>v<rsub|i>+<big|sum><rsub|i=q+1><rsup|n>\<alpha\><rsub|i>u<rsub|i>+<big|sum><rsub|j=q+1><rsup|p>\<beta\><rsub|j>w<rsub|j>=0.
  </equation*>

  Chiamiamo <math|t> l'ultima somma. È in <math|W>; dall'uguaglianza è anche
  l'opposto delle prime due somme, quindi è in <math|U>. Dunque
  <math|t\<in\>U\<cap\>W>. Possiamo scriverlo
  <math|t=<big|sum><rsub|i=1><rsup|q>\<delta\><rsub|i>v<rsub|i>>.
  Confrontiamo questa scrittura con quella iniziale di <math|t>:

  <\equation*>
    <big|sum><rsub|i=1><rsup|q>\<delta\><rsub|i>v<rsub|i>-<big|sum><rsub|j=q+1><rsup|p>\<beta\><rsub|j>w<rsub|j>=0.
  </equation*>

  È una relazione fra vettori della base di <math|W>. Perciò tutti i
  <math|\<beta\><rsub|j>> sono zero, e anche tutti i
  <math|\<delta\><rsub|i>>. Nell'uguaglianza originale restano soltanto i
  vettori della base di <math|U>: anche <math|\<gamma\><rsub|i>> e
  <math|\<alpha\><rsub|i>> sono zero. Abbiamo provato l'indipendenza di
  <math|B>.

  La base costruita ha <math|q+(n-q)+(p-q)=n+p-q> vettori: è la formula
  cercata. Se un blocco è vuoto, le sue somme valgono zero e la dimostrazione
  resta valida.

  <figura|<image|assets/grassmann.pdf|130.0mm|50.0mm||>|Partiamo dalla base
  dell'intersezione e la completiamo prima in un sottospazio, poi nell'altro.
  I <math|q> vettori comuni compaiono una sola volta nella base della somma.>

  <subsection|Due piani e un piano con una retta>

  Per due piani distinti in <math|\<bbb-R\><rsup|3>>, l'intersezione ha
  dimensione almeno 1: Grassmann e <math|dim(U+W)\<leq\>3> danno
  <math|dim(U\<cap\>W)\<geq\>1>. Non può avere dimensione 2, perché allora
  coinciderebbe con entrambi i piani. È quindi una retta e la somma ha
  dimensione <math|2+2-1=3>.

  Per un piano e una retta non contenuta nel piano l'intersezione è invece
  zero: la somma ha dimensione <math|2+1=3> ed è diretta.

  <section|Matrici simmetriche e antisimmetriche>

  La <strong|trasposta> di <math|M=(m<rsub|i*j>)\<in\>M<rsub|m,n>(K)> è la
  matrice <math|M<rsup|T>\<in\>M<rsub|n,m>(K)> con
  <math|(M<rsup|T>)<rsub|i*j>=m<rsub|j*i>>: le righe diventano colonne.

  Per matrici quadrate, <math|M> è <strong|simmetrica> se <math|M<rsup|T>=M>
  e <strong|antisimmetrica> se <math|M<rsup|T>=-M>. Poiché la trasposizione
  rispetta somme e multipli, le matrici dei due tipi formano sottospazi, che
  indichiamo <math|S<rsub|n>> e <math|A<rsub|n>>.

  Lavoriamo su un campo in cui <math|2\<neq\>0>, per esempio <math|\<bbb-R\>>
  o <math|\<bbb-C\>>. Se una matrice è sia simmetrica sia antisimmetrica,
  vale <math|M=-M>, quindi <math|2M=0> e <math|M=0>. L'intersezione dei due
  sottospazi è nulla. Sulla diagonale di un'antisimmetrica, allo stesso modo,
  <math|m<rsub|i*i>=-m<rsub|i*i>> impone <math|m<rsub|i*i>=0>.

  Resta da scomporre una matrice qualsiasi. L'espressione <math|M+M<rsup|T>>
  è simmetrica; <math|M-M<rsup|T>> è antisimmetrica. Sommandole troviamo
  <math|2M>, quindi dividiamo ciascuna per 2:

  <\equation*>
    M=<frac|M+M<rsup|T>|2>+<frac|M-M<rsup|T>|2>.
  </equation*>

  La trasposta del primo addendo è <math|(M<rsup|T>+M)/2>, cioè il primo
  addendo stesso. Quella del secondo è <math|(M<rsup|T>-M)/2>, il suo
  opposto. Questo dimostra <math|M<rsub|n>(K)=S<rsub|n>\<#2295\>A<rsub|n>>.
  La scomposizione è unica per la proprietà della somma diretta.

  Per esempio, per <math|M=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|4>|<cell|3>>>>>>
  otteniamo

  <\equation*>
    S=<matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|3>|<cell|3>>>>>,<space|2em>A=<matrix|<tformat|<table|<row|<cell|0>|<cell|-1>>|<row|<cell|1>|<cell|0>>>>>.
  </equation*>

  Infatti, fuori dalla diagonale la media <math|(2+4)/2=3> fornisce la parte
  simmetrica; lo scarto <math|(2-4)/2=-1> e il suo opposto forniscono la
  parte antisimmetrica. La somma ricostruisce le quattro entrate di <math|M>.

  <\attenzione|Perché l'ipotesi sul campo è necessaria>
    Se <math|2=0> nel campo, non possiamo usare <math|1/2>. Inoltre
    <math|-M=M>, così simmetrica e antisimmetrica significano la stessa cosa.
    L'intersezione non è più necessariamente nulla: la conclusione sulla
    somma diretta richiede proprio <math|2\<neq\>0>.
  </attenzione>

  <\verifica|7>
    <strong|7.1.> Trova un supplementare di <math|U=<math-up|span>((1,1))> in
    <math|\<bbb-R\><rsup|2>> e scrivi <math|(3,1)> come somma dei due
    contributi. Spiega perché la scrittura è unica.

    <strong|7.2.> In <math|\<bbb-R\><rsup|4>> due sottospazi <math|U,W> hanno
    entrambi dimensione 3. Quali valori può avere <math|dim(U\<cap\>W)>? Per
    ogni valore possibile fornisci un esempio usando vettori della base
    canonica.
  </verifica>

  <chapter|Matrici, applicazioni lineari e nucleo>

  <\inbreve>
    Come si collega un sistema di equazioni a una trasformazione di vettori?
    Sappiamo costruire vettori mediante combinazioni lineari. Le matrici ci
    aiuteranno a descrivere i risultati raggiungibili, le direzioni mandate a
    zero e tutte le soluzioni di un sistema.
  </inbreve>

  <section|Il prodotto di matrici: righe per colonne>

  Consideriamo le due espressioni <math|x<rsub|1>+x<rsub|2>> e
  <math|x<rsub|2>+x<rsub|3>>. Possiamo raccogliere i loro coefficienti nella
  matrice

  <\equation*>
    A=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>,<space|2em>x=<matrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>|<row|<cell|x<rsub|3>>>>>>.
  </equation*>

  La prima riga legge <math|1\<cdot\>x<rsub|1>+1\<cdot\>x<rsub|2>+0\<cdot\>x<rsub|3>>;
  la seconda legge <math|0\<cdot\>x<rsub|1>+1\<cdot\>x<rsub|2>+1\<cdot\>x<rsub|3>>.
  Definiamo quindi

  <\equation*>
    A*x=<matrix|<tformat|<table|<row|<cell|x<rsub|1>+x<rsub|2>>>|<row|<cell|x<rsub|2>+x<rsub|3>>>>>>.
  </equation*>

  Per esempio, con <math|x=(2,-1,3)<rsup|T>> otteniamo
  <math|A*x=(1,2)<rsup|T>>. La lettera <math|T> significa \Strasposto\T: una
  lista scritta in orizzontale viene pensata come colonna.

  In generale <math|A=(a<rsub|i*j>)\<in\>M<rsub|m,n>(K)> può moltiplicare una
  colonna di <math|n> componenti. Il risultato ha <math|m> componenti e la
  componente <math|i> è

  <\equation*>
    (A*x)<rsub|i>=<big|sum><rsub|j=1><rsup|n>a<rsub|i*j>x<rsub|j>.
  </equation*>

  Non moltiplichiamo soltanto elementi che occupano la stessa posizione in
  due matrici. Prendiamo una <em|riga intera> e una <em|colonna intera>,
  moltiplichiamo le entrate corrispondenti e sommiamo.

  Se al posto di una sola colonna mettiamo una matrice
  <math|B\<in\>M<rsub|n,p>(K)>, facciamo lo stesso conto per ciascuna sua
  colonna. Otteniamo <math|A*B\<in\>M<rsub|m,p>(K)>, con

  <\equation*>
    (A*B)<rsub|i*j>=<big|sum><rsub|k=1><rsup|n>a<rsub|i*k>b<rsub|k*j>.
  </equation*>

  Le dimensioni interne devono coincidere: <math|(m\<times\>n)(n\<times\>p)>
  dà <math|m\<times\>p>. Quando i prodotti sono definiti valgono
  associatività e distributività:

  <\equation*>
    (A*B)C=A(B*C),<space|1em>A(B+C)=A*B+A*C,
  </equation*>

  <\equation*>
    (A+B)C=A*C+B*C.
  </equation*>

  L'associatività si vede anche dalla formula: l'entrata <math|(i,j)> di
  entrambi i membri è la somma di <math|a<rsub|i*k>b<rsub|k*h>c<rsub|h*j>> su
  tutti gli indici interni <math|k,h>. Cambia il raggruppamento, non i
  termini sommati. Le distributività si ottengono distribuendo i prodotti in
  ogni entrata.

  L'ordine dei fattori conta. Per esempio, ponendo

  <\equation*>
    P=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>>>>>,<space|2em>Q=<matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>>>>>,
  </equation*>

  si trova <math|P*Q=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|0>>>>>>
  e <math|Q*P=<matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|1>>>>>>:
  sono diversi. Il prodotto matriciale <strong|non è commutativo>.

  <section|Sistemi lineari e combinazioni delle colonne>

  Un sistema lineare in <math|n> incognite ha equazioni della forma
  <math|a<rsub|i1>x<rsub|1>+\<cdots\>+a<rsub|i*n>x<rsub|n>=b<rsub|i>>. I
  coefficienti sono dati; le incognite non vengono moltiplicate tra loro.
  Imporre il sistema significa chiedere che tutte le equazioni siano vere
  contemporaneamente.

  Raccogliendo i coefficienti in <math|A> e i termini noti nella colonna
  <math|b>, il sistema diventa <math|A*x=b>. La <strong|matrice completa>
  <math|(A\|b)> affianca a <math|A> la colonna <math|b>. La sbarretta è
  soltanto un separatore.

  Se <math|b=0>, il sistema si dice <strong|omogeneo> e ammette sempre almeno
  la soluzione <math|x=0>.

  Nel nostro esempio le colonne sono <math|A<rsub|1>=(1,0)<rsup|T>>,
  <math|A<rsub|2>=(1,1)<rsup|T>>, <math|A<rsub|3>=(0,1)<rsup|T>>. Possiamo
  riscrivere il prodotto come

  <\equation*>
    A*x=x<rsub|1>A<rsub|1>+x<rsub|2>A<rsub|2>+x<rsub|3>A<rsub|3>.
  </equation*>

  Vale lo stesso per ogni matrice: <math|A*x> è la combinazione delle colonne
  con coefficienti <math|x<rsub|j>>. Perciò

  <\concetto|La domanda di compatibilità>
    Il sistema <math|A*x=b> è <strong|compatibile>, cioè ha almeno una
    soluzione, se e solo se <math|b> appartiene allo span delle colonne di
    <math|A>.
  </concetto>

  Nel nostro esempio qualunque <math|b=(s,t)<rsup|T>> è raggiungibile: basta
  scegliere <math|x=(s,0,t)<rsup|T>>. Se le colonne sono tutte multipli di
  uno stesso vettore non nullo e almeno una è non nulla, si raggiunge
  soltanto una retta. Se sono tutte nulle, si raggiunge soltanto il vettore
  zero.

  <figura|<image|assets/colonne.pdf|139.5mm|51.8mm||>|Leggere per colonne
  significa cercare una combinazione che dia <math|b>. Nel piano, due colonne
  indipendenti raggiungono ogni vettore; due colonne parallele, con almeno
  una non nulla, raggiungono soltanto la loro retta.>

  Esiste anche la lettura per righe: in <math|\<bbb-R\><rsup|2>> ogni
  equazione non degenere descrive una retta e le soluzioni sono i punti
  comuni alle rette. Le due letture descrivono la stessa domanda: una guarda
  le condizioni imposte alle incognite, l'altra gli oggetti che possiamo
  costruire.

  <section|Applicazioni lineari, nucleo e immagine>

  La matrice dell'esempio trasforma ogni vettore di <math|K<rsup|3>> in uno
  di <math|K<rsup|2>>. La trasformazione <math|F<rsub|A>(x)=A*x> conserva le
  combinazioni lineari. Infatti, calcolando componente per componente,
  <math|A(x+y)=A*x+A*y> e <math|A(\<alpha\>x)=\<alpha\>A*x>.

  <\concetto|Applicazione lineare>
    Se <math|V,W> sono spazi sullo stesso campo <math|K>, una funzione
    <math|F:V\<rightarrow\>W> è <strong|lineare> quando, per ogni
    <math|u,v\<in\>V> e <math|\<alpha\>\<in\>K>,

    <\equation*>
      F(u+v)=F(u)+F(v),<space|2em>F(\<alpha\>u)=\<alpha\>F(u).
    </equation*>

    Il <strong|nucleo> è <math|ker F=<around|{|v\<in\>V:F(v)=0|}>>.
    L'<strong|immagine> è <math|<math-up|Im> F=<around|{|F(v):v\<in\>V|}>>.
  </concetto>

  Il nucleo vive nello spazio di partenza; l'immagine nello spazio di arrivo.
  Per una matrice <math|A> sono, rispettivamente, le soluzioni di
  <math|A*x=0> e lo span delle colonne. Un nucleo non nullo indica che
  informazioni diverse possono dare lo stesso risultato.

  Prima di verificare che sono sottospazi, osserviamo che <math|F(0)=0>:
  dalla linearità <math|F(0)=F(0+0)=F(0)+F(0)> e sottraiamo <math|F(0)>.

  Nel nucleo, se <math|F(u)=F(v)=0>, allora <math|F(u+v)=0> e
  <math|F(\<alpha\>u)=0>.

  Nell'immagine, se <math|w=F(u)> e <math|z=F(v)>, allora <math|w+z=F(u+v)> e
  <math|\<alpha\>w=F(\<alpha\>u)>. Entrambi contengono zero e soddisfano il
  criterio di sottospazio.

  Nel nostro esempio, risolvere <math|F<rsub|A>(x)=0> significa imporre
  <math|x<rsub|1>+x<rsub|2>=0> e <math|x<rsub|2>+x<rsub|3>=0>. Scelto
  <math|x<rsub|2>=-t>, le altre due componenti devono valere <math|t>. Dunque
  <math|ker F<rsub|A>=<math-up|span>((1,-1,1)<rsup|T>)>.

  L'immagine è tutto <math|K<rsup|2>>, perché la prima e la terza colonna
  sono la base canonica.

  <strong|Quando è iniettiva una funzione lineare?> Basta controllare se
  <math|ker F=<around|{|0|}>>. Se <math|F> è iniettiva, da <math|F(v)=0=F(0)>
  segue <math|v=0>.

  Per l'altra direzione immaginiamo <math|F(u)=F(v)>: il problema è
  confrontare due vettori. La linearità permette di riunirli in uno solo,
  perché <math|F(u-v)=0>. Se il nucleo contiene soltanto zero, allora
  <math|u-v=0>, dunque <math|u=v>. Questa sottrazione sarà utile anche per i
  sistemi.

  <section|Tutte le soluzioni: una particolare più il nucleo>

  Torniamo a <math|x<rsub|1>+x<rsub|2>=s>, <math|x<rsub|2>+x<rsub|3>=t>.
  Abbiamo già una soluzione <math|\<xi\>=(s,0,t)<rsup|T>>. Se aggiungiamo
  <math|h(1,-1,1)<rsup|T>>, le due somme non cambiano: aggiungiamo <math|h> a
  una componente e lo togliamo all'altra. Le soluzioni sono quindi

  <\equation*>
    x=(s,0,t)<rsup|T>+h(1,-1,1)<rsup|T>,<space|1em>h\<in\>K.
  </equation*>

  Non è una coincidenza del nostro esempio. Supponiamo che <math|A\<xi\>=b>.
  Per sapere che cosa può cambiare da una soluzione all'altra, prendiamo una
  seconda soluzione <math|x> e sottraiamo le equazioni:

  <\equation*>
    A(x-\<xi\>)=A*x-A\<xi\>=b-b=0.
  </equation*>

  La differenza appartiene al nucleo. Viceversa, se <math|A*z=0>, allora
  <math|A(\<xi\>+z)=b+0=b>. Abbiamo dimostrato entrambe le inclusioni e
  quindi

  <\concetto|Struttura delle soluzioni>
    Se <math|A*x=b> è compatibile e <math|\<xi\>> è una sua soluzione,
    l'insieme di tutte le soluzioni è <math|\<xi\>+ker F<rsub|A>>.
  </concetto>

  È un <strong|traslato> di un sottospazio, chiamato anche sottospazio
  affine. Se <math|b\<neq\>0>, non contiene l'origine e non è un sottospazio
  vettoriale. Se il nucleo è nullo, ogni sistema compatibile ha una sola
  soluzione. Per descrivere un sistema in generale ci servono quindi una
  soluzione particolare e una base del nucleo.

  <figura|<image|assets/traslato.pdf|80.8mm|37.5mm||>|Nell'esempio geometrico
  il nucleo è una retta per l'origine. Le soluzioni del sistema non omogeneo
  si ottengono traslandola fino a una soluzione particolare <math|\<xi\>>.>

  <section|Rango e teorema rango\<#2013\>nullità>

  La nostra applicazione parte da tre coordinate e ne produce due. Una
  direzione, <math|(1,-1,1)<rsup|T>>, viene mandata a zero; restano due
  direzioni indipendenti nell'immagine. Il teorema delle dimensioni rende
  preciso questo conteggio. Prima vediamo come scegliere le tre direzioni.

  <subsection|Una base che separa il nucleo dal resto>

  Lavoriamo ancora con <math|F(x<rsub|1>,x<rsub|2>,x<rsub|3>)=(x<rsub|1>+x<rsub|2>,x<rsub|2>+x<rsub|3>)>.
  Il nucleo ha base <math|k=(1,-1,1)>. Proviamo a completarla con
  <math|e<rsub|1>> ed <math|e<rsub|3>>.

  Per controllare l'indipendenza scriviamo

  <\equation*>
    \<alpha\>k+\<beta\>e<rsub|1>+\<gamma\>e<rsub|3>=(\<alpha\>+\<beta\>,-\<alpha\>,\<alpha\>+\<gamma\>)=0.
  </equation*>

  La seconda componente dà <math|\<alpha\>=0>; la prima e la terza danno poi
  <math|\<beta\>=\<gamma\>=0>. I tre vettori indipendenti formano una base di
  <math|K<rsup|3>>.

  Le loro immagini sono <math|F(k)=0>, <math|F(e<rsub|1>)=(1,0)> e
  <math|F(e<rsub|3>)=(0,1)>. Il primo vettore scompare, gli altri due danno
  una base dell'immagine. Ecco perché in questo caso <math|3=1+2>.

  Per esempio <math|(2,-1,3)=k+e<rsub|1>+2e<rsub|3>>. Applicando <math|F>, il
  termine <math|k> scompare e rimane <math|(1,2)>. La stessa scelta di base
  permette di leggere il comportamento di ogni vettore.

  <subsection|Il conteggio in generale>

  Il <strong|rango> di <math|A> è <math|<math-up|rank>(A)=dim<space|0.2em><math-up|Im>
  F<rsub|A>>: la dimensione dello span delle colonne. La <strong|nullità> è
  la dimensione del nucleo.

  <\concetto|Teorema rango\<#2013\>nullità>
    Se <math|F:V\<rightarrow\>W> è lineare e <math|V> ha dimensione finita,
    allora

    <\equation*>
      dim V=dim ker F+dim<space|0.2em><math-up|Im> F.
    </equation*>
  </concetto>

  Per dimostrarlo vogliamo scegliere una base che faccia vedere separatamente
  ciò che scompare e ciò che resta.

  Prendiamo una base <math|v<rsub|1>,\<ldots\>,v<rsub|k>> del nucleo e
  completiamola a una base <math|v<rsub|1>,\<ldots\>,v<rsub|n>> di <math|V>.
  Il completamento è possibile per il capitolo 6. Mostriamo che
  <math|F(v<rsub|k+1>),\<ldots\>,F(v<rsub|n>)> è una base dell'immagine.

  <strong|Generazione.> Ogni elemento dell'immagine è <math|F(v)> per qualche
  <math|v>. Scriviamo <math|v=\<alpha\><rsub|1>v<rsub|1>+\<cdots\>+\<alpha\><rsub|n>v<rsub|n>>.
  Applicando <math|F>, i primi <math|k> termini diventano zero e rimane

  <\equation*>
    F(v)=\<alpha\><rsub|k+1>F(v<rsub|k+1>)+\<cdots\>+\<alpha\><rsub|n>F(v<rsub|n>).
  </equation*>

  <strong|Indipendenza.> Supponiamo che la combinazione a destra valga zero.
  Per linearità il vettore <math|u=\<alpha\><rsub|k+1>v<rsub|k+1>+\<cdots\>+\<alpha\><rsub|n>v<rsub|n>>
  appartiene al nucleo. Possiamo allora scriverlo anche come
  <math|u=\<beta\><rsub|1>v<rsub|1>+\<cdots\>+\<beta\><rsub|k>v<rsub|k>>.

  Portando tutto allo stesso membro otteniamo una relazione nulla tra i
  vettori della base di <math|V>. L'indipendenza di quella base impone che
  tutti i coefficienti siano zero, compresi gli
  <math|\<alpha\><rsub|k+1>,\<ldots\>,\<alpha\><rsub|n>> che volevamo
  controllare.

  La base dell'immagine ha dunque <math|n-k> elementi. Sommando le dimensioni
  otteniamo <math|k+(n-k)=n>, come richiesto. Il ragionamento comprende anche
  nucleo nullo o immagine nulla: il relativo blocco della base è vuoto.

  <figura|<image|assets/rango-nullita.pdf|99.0mm|36.0mm||>|Scegliamo prima
  una base del nucleo, poi la completiamo. Le immagini dei vettori aggiunti
  formano una base dell'immagine. La scelta iniziale dei vettori del nucleo
  rende possibile questo conteggio.>

  Per <math|A\<in\>M<rsub|m,n>(K)> il dominio è <math|K<rsup|n>>, quindi
  <math|dim ker F<rsub|A>=n-<math-up|rank>(A)>. Conta il numero di
  <em|incognite>, cioè le colonne, non quello delle equazioni. Nei prossimi
  capitoli vedremo come calcolare il rango e una base del nucleo con Gauss.

  <\verifica|8>
    <strong|8.1.> Una matrice reale di dimensioni <math|3\<times\>5> ha rango
    3. Qual è la dimensione del nucleo? Il sistema <math|A*x=b> è compatibile
    per ogni <math|b\<in\>\<bbb-R\><rsup|3>>? L'applicazione associata è
    iniettiva?

    <strong|8.2.> Sia <math|A=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|4>|<cell|5>|<cell|6>>|<row|<cell|7>|<cell|8>|<cell|9>>>>>>.
    Considera <math|A> come matrice reale. Per il nucleo, prova a sottrarre
    quattro volte la prima equazione dalla seconda; osserva poi che la terza
    riga è due volte la seconda meno la prima. Trova nucleo e immagine,
    verificando che le loro dimensioni sommino a 3. Sapendo che
    <math|\<xi\>=(1,0,0)<rsup|T>> risolve <math|A*x=(1,4,7)<rsup|T>>,
    descrivi tutte le soluzioni.
  </verifica>

  <chapter|Eliminazione di Gauss e sistemi a scala>

  <\inbreve>
    Come possiamo risolvere un sistema senza indovinare i valori delle
    incognite? Partiamo da sistemi nei quali le equazioni si leggono una dopo
    l'altra. Con operazioni reversibili impareremo a portare anche gli altri
    sistemi in questa forma.
  </inbreve>

  <section|Pivot e variabili libere>

  Partiamo da un sistema già semplice:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|2x<rsub|1>+x<rsub|2>-2x<rsub|3>=2>>|<row|<cell|x<rsub|2>-2x<rsub|3>=3>>>>>.
  </equation*>

  Qui lavoriamo su <math|\<bbb-R\>>. L'ultima equazione permette di scrivere
  <math|x<rsub|2>=3+2x<rsub|3>>. Sostituendo nella prima si ottiene
  <math|2x<rsub|1>+3=2>, quindi <math|x<rsub|1>=-1/2>.

  Il valore di <math|x<rsub|3>> non è imposto da altre equazioni: scelto
  <math|x<rsub|3>=t>, tutte le soluzioni sono <math|(-1/2,3+2t,t)<rsup|T>>.

  Perché abbiamo potuto risolvere così? La prima equazione comincia con
  <math|x<rsub|1>>, la seconda con <math|x<rsub|2>>. Ogni nuova equazione
  comincia più a destra: non reintroduce l'incognita che ci siamo lasciati
  alle spalle.

  <\concetto|Matrice a scala e pivot>
    Una matrice è <strong|a scala> se le righe nulle sono in fondo e,
    passando da una riga non nulla alla successiva, la prima entrata non
    nulla si sposta strettamente a destra. Quella prima entrata si chiama
    <strong|pivot>. Sotto ogni pivot ci sono zeri.
  </concetto>

  <figura|<image|assets/scala.pdf|85.5mm|45.0mm||>|I pivot, indicati con
  <math|p\<neq\>0>, avanzano verso destra. Le stelle indicano entrate che
  possono avere qualsiasi valore, anche zero. Le righe completamente nulle
  sono in fondo.>

  Le colonne delle incognite con pivot individuano le <strong|variabili
  pivot>; le altre individuano le <strong|variabili libere>. Assegniamo
  valori alle libere e ricaviamo le pivot a ritroso. Questa scelta dei
  parametri viene dalla forma a scala adottata; la famiglia di soluzioni può
  essere riscritta anche con altri parametri, purché descriva esattamente gli
  stessi vettori.

  Occorre guardare anche i termini noti. Se nella matrice completa compare
  una riga <math|(0,\<ldots\>,0\|c)> con <math|c\<neq\>0>, essa impone
  <math|0=c>: il sistema è incompatibile. È un pivot nell'ultima colonna,
  quella che non corrisponde a un'incognita.

  In una matrice completa a scala questa è l'unica possibile ostruzione: se
  non compare, la sostituzione dal basso trova sempre le variabili pivot,
  dividendo per pivot non nulli.

  <section|Operazioni di riga: cambiare la forma conservando le soluzioni>

  Se una prima equazione contiene <math|x+2y> e una seconda contiene
  <math|2x+3y>, sottrarre due volte la prima dalla seconda elimina <math|x>.
  Vogliamo usare questa idea senza perdere o aggiungere soluzioni.

  Le tre <strong|operazioni elementari di riga> sulla matrice completa sono:

  <\enumerate>
    <item>scambiare due righe;

    <item>moltiplicare una riga per <math|\<lambda\>\<neq\>0>;

    <item>sostituire <math|R<rsub|i>> con
    <math|R<rsub|i>+\<lambda\>R<rsub|j>>, per <math|i\<neq\>j>.
  </enumerate>

  Ogni operazione ha un'inversa: ripetere lo scambio; moltiplicare per
  <math|\<lambda\><rsup|-1>>; sottrarre lo stesso multiplo.

  Per la terza, chi soddisfa entrambe le equazioni iniziali soddisfa la loro
  combinazione; viceversa recuperiamo la vecchia equazione sottraendo
  <math|\<lambda\>> volte la riga che abbiamo conservato. Quindi
  <strong|l'insieme delle soluzioni resta identico in entrambe le direzioni>.

  La condizione <math|\<lambda\>\<neq\>0> evita di trasformare un'equazione
  informativa in <math|0=0>. Nella terza operazione la riga di appoggio deve
  essere un'altra: aggiungere alla stessa riga il suo opposto la
  cancellerebbe.

  <\attenzione|Trasformare anche i termini noti>
    L'operazione si applica alla riga <em|intera> di <math|(A\|b)>. Se
    sostituiamo la seconda equazione con la seconda meno il doppio della
    prima, dobbiamo fare la stessa sottrazione anche sui termini noti.
    Cambiare soltanto i coefficienti produce un altro problema.
  </attenzione>

  Le mosse conservano anche lo span delle righe: ogni nuova riga è
  combinazione delle vecchie e la reversibilità dà l'inclusione opposta.

  Per le colonne, invece, lo span può cambiare. La colonna
  <math|(1,1)<rsup|T>> diventa <math|(1,0)<rsup|T>> dopo
  <math|R<rsub|2>\<leftarrow\>R<rsub|2>-R<rsub|1>>: prima generava una retta
  obliqua, poi un asse. Nel capitolo 10 vedremo perché la <em|dimensione>
  dello spazio delle colonne rimane comunque la stessa.

  <section|L'algoritmo e una riduzione completa>

  Supponiamo che nella colonna scelta il pivot sia <math|p\<neq\>0> e che
  sotto di esso compaia <math|a>. Quale multiplo della riga pivot dobbiamo
  sottrarre? Vogliamo <math|a-\<lambda\>p=0>, quindi scegliamo
  <math|\<lambda\>=a/p>. Questa divisione è consentita perché lavoriamo su un
  campo e il pivot non è zero.

  Gauss ripete questa decisione su rettangoli sempre più piccoli:

  <\enumerate>
    <item>Nel rettangolo ancora da sistemare, cerca la prima colonna non
    tutta nulla. Le colonne nulle si saltano; se tutto il rettangolo è nullo,
    fermati.

    <item>Porta un elemento non nullo in cima a quella colonna, scambiando
    righe se necessario. Sceglilo come pivot.

    <item>Per ciascuna riga sottostante, sottrai <math|a/p> volte la riga
    pivot, dove <math|a> è l'entrata che vuoi annullare.

    <item>Ripeti nel rettangolo sotto la riga pivot e a destra della sua
    colonna.
  </enumerate>

  Le righe già sistemate restano scritte; non si cancellano. A ogni pivot il
  rettangolo perde una riga e almeno una colonna. Ci sono soltanto un numero
  finito di righe e colonne: il procedimento termina.

  Gli zeri creati a sinistra dei nuovi pivot restano zero, perché le righe
  usate nei passi successivi hanno zero in quelle posizioni.

  <figura|<image|assets/gauss-passi.pdf|139.5mm|33.8mm||>|Il rettangolo
  grigio è la parte ancora da sistemare. Ogni nuovo pivot riduce il lavoro
  rimanente, lasciando intatti gli zeri già ottenuti.>

  <subsection|Una riduzione svolta>

  Vediamo tutte le scelte su un esempio reale:

  <\equation*>
    (A\|b)=<matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|2>|<cell|3>|<cell|1>|<cell|3>>>>>.
  </equation*>

  La prima entrata è zero, ma nella prima colonna ci sono elementi non nulli.
  Scambiamo <math|R<rsub|1>> e <math|R<rsub|2>>, scegliendo il pivot 1.
  Otteniamo

  <\equation*>
    <matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|3>|<cell|1>|<cell|3>>>>>.
  </equation*>

  Sotto il pivot la seconda riga ha già zero; la terza ha 2. Facciamo
  <math|R<rsub|3>\<leftarrow\>R<rsub|3>-2R<rsub|1>>.

  Poi nel rettangolo rimasto il pivot è l'1 della seconda riga. Per eliminare
  il <math|-1> sotto di esso sommiamo la seconda riga alla terza:

  <\equation*>
    <matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|-1>|<cell|-1>|<cell|-1>>>>><space|1em>\<rightarrow\><space|1em><matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>.
  </equation*>

  La terza riga dice <math|0=0>, quindi non impone altri vincoli. Poniamo
  <math|x<rsub|3>=t>. La seconda riga dà <math|x<rsub|2>=1-t>; la prima dà
  <math|x<rsub|1>=2-2(1-t)-t=t>. Tutte le soluzioni sono

  <\equation*>
    x=(0,1,0)<rsup|T>+t(1,-1,1)<rsup|T>,<space|1em>t\<in\>\<bbb-R\>.
  </equation*>

  <subsection|Leggere e controllare le soluzioni>

  Controlliamo nel sistema originale: <math|x<rsub|2>+x<rsub|3>=1>,
  <math|x<rsub|1>+2x<rsub|2>+x<rsub|3>=2>,
  <math|2x<rsub|1>+3x<rsub|2>+x<rsub|3>=3>. Sostituendo la formula, il
  parametro si cancella in ciascuna equazione. Vediamo anche la struttura del
  capitolo precedente: una soluzione particolare più un multiplo di un
  vettore del nucleo.

  <section|Contare i parametri e costruire una base del nucleo>

  Se un sistema a scala compatibile ha <math|n> incognite e <math|k> pivot
  nella parte dei coefficienti, ci sono <math|n-k> variabili libere. Ogni
  scelta di quei valori determina una e una sola soluzione: l'esistenza viene
  dalla sostituzione all'indietro e l'unicità dal fatto che a ogni passo si
  divide per un pivot non nullo.

  Su un campo infinito, almeno una variabile libera dà infinite soluzioni. Su
  un campo con <math|q> elementi, le scelte sono esattamente
  <math|q<rsup|n-k>>. Quando <math|k=n>, l'unica scelta è quella senza
  parametri e la soluzione è unica.

  Un esempio con due parametri, tratto dalla lezione del 22 ottobre, è

  <\equation*>
    x<rsub|1>+x<rsub|2>-x<rsub|3>+2x<rsub|4>=2,<space|1em>x<rsub|3>+x<rsub|4>=-1.
  </equation*>

  I pivot sono nelle colonne 1 e 3. Scegliamo <math|x<rsub|2>=s>,
  <math|x<rsub|4>=t>. L'ultima equazione dà <math|x<rsub|3>=-1-t>; la prima
  dà <math|x<rsub|1>=2-s+(-1-t)-2t=1-s-3t>. Raccogliendo:

  <\equation*>
    x=(1,0,-1,0)<rsup|T>+s(-1,1,0,0)<rsup|T>+t(-3,0,-1,1)<rsup|T>.
  </equation*>

  Togliendo la soluzione particolare, i due vettori che moltiplicano
  <math|s,t> formano una base del nucleo.

  Perché sono indipendenti? Nella componente 2 soltanto il primo ha un 1;
  nella componente 4 soltanto il secondo ha un 1. Una combinazione nulla
  obbliga quindi entrambi i coefficienti a essere zero.

  La stessa giustificazione vale in generale. Nel sistema omogeneo assegniamo
  a turno il valore 1 a una variabile libera e 0 alle altre; ricaviamo le
  pivot. I vettori ottenuti generano tutte le soluzioni e, guardando le
  componenti libere, sono indipendenti. Otteniamo così una base, non soltanto
  una lista di generatori.

  <section|Dalle equazioni ai generatori, e viceversa>

  Consideriamo <math|W\<subseteq\>\<bbb-R\><rsup|4>> definito dalle equazioni
  <math|x<rsub|1>+x<rsub|2>+x<rsub|3>+x<rsub|4>=0> e
  <math|x<rsub|3>-x<rsub|4>=0>. Sono già a scala. Con <math|x<rsub|2>=s> e
  <math|x<rsub|4>=t> otteniamo <math|x<rsub|3>=t>, <math|x<rsub|1>=-s-2t>.
  Dunque

  <\equation*>
    W=<math-up|span>((-1,1,0,0)<rsup|T>,(-2,0,1,1)<rsup|T>).
  </equation*>

  I due vettori sono indipendenti guardando le componenti libere, perciò sono
  una base e <math|dim W=2>. Abbiamo tradotto condizioni in possibilità di
  costruzione.

  <subsection|Dai generatori a un'equazione>

  Per fare il percorso inverso, supponiamo di conoscere i generatori
  <math|v<rsub|1>=(1,-1,0)<rsup|T>> e <math|v<rsub|2>=(0,1,-1)<rsup|T>>. Un
  vettore generico <math|w=(x,y,z)<rsup|T>> sta nel loro span se esistono
  coefficienti <math|a,b> con <math|a*v<rsub|1>+b*v<rsub|2>=w>. La matrice
  completa è

  <\equation*>
    <matrix|<tformat|<cwith|1|-1|3|3|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|0>|<cell|x>>|<row|<cell|-1>|<cell|1>|<cell|y>>|<row|<cell|0>|<cell|-1>|<cell|z>>>>>.
  </equation*>

  Sommiamo la prima riga alla seconda; poi sommiamo la nuova seconda riga
  alla terza. Otteniamo

  <\equation*>
    <matrix|<tformat|<cwith|1|-1|3|3|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|0>|<cell|x>>|<row|<cell|0>|<cell|1>|<cell|x+y>>|<row|<cell|0>|<cell|0>|<cell|x+y+z>>>>>.
  </equation*>

  L'ultima equazione impone <math|x+y+z=0>. Se vale, le prime due determinano
  <math|a=x>, <math|b=x+y>; quindi la condizione è anche sufficiente. Abbiamo
  trovato esattamente il piano

  <\equation*>
    <math-up|span>(v<rsub|1>,v<rsub|2>)=<around|{|(x,y,z)<rsup|T>:x+y+z=0|}>.
  </equation*>

  <figura|<image|assets/piano-span.pdf|81.0mm|54.0mm||>|Lo stesso piano è
  descritto da due generatori indipendenti oppure dall'equazione
  <math|x+y+z=0>. Gauss permette di passare da una descrizione all'altra.>

  Questo collega anche le operazioni sui sottospazi. Per trovare
  un'intersezione, imponiamo insieme le equazioni dei due sottospazi e
  risolviamo il sistema omogeneo.

  Per trovare una somma, riuniamo i generatori. Se serve una base della
  somma, eliminiamo i generatori superflui: possiamo verificarli uno alla
  volta risolvendo un sistema di appartenenza allo span dei precedenti. La
  scelta degli indici pivot, giustificata nel capitolo successivo, rende più
  rapido questo passaggio.

  <\verifica|9>
    <strong|9.1.> Risolvi il sistema reale con matrice completa
    <math|<matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|2>|<cell|2>|<cell|0>|<cell|2>>>>>>.
    Prima individua se serve uno scambio; poi scrivi le soluzioni come una
    particolare più il nucleo.

    <strong|9.2.> In <math|\<bbb-R\><rsup|3>>, siano
    <math|U=<math-up|span>((1,-1,0)<rsup|T>,(0,1,-1)<rsup|T>)> e
    <math|W=<around|{|(x,y,z)<rsup|T>:x=z|}>>. Trova una base
    dell'intersezione e determina <math|U+W>. Prova prima a scegliere quali
    descrizioni convengono.
  </verifica>

  <chapter|Rango, Rouché\<#2013\>Capelli e matrici elementari>

  <\inbreve>
    Quali informazioni conserva Gauss mentre cambia le righe? Dal nucleo e
    dall'immagine sappiamo già che cosa misura il rango. Ora lo leggeremo nei
    pivot e collegheremo compatibilità, righe, colonne e invertibilità.
  </inbreve>

  <section|Rouché\<#2013\>Capelli: quando esistono soluzioni>

  Prendiamo due colonne che generano un piano. Se aggiungiamo un vettore del
  piano, non otteniamo nuove direzioni; se ne aggiungiamo uno fuori, lo
  spazio generato cresce. È la domanda già incontrata per <math|A*x=b>:
  possiamo costruire <math|b> con le colonne che abbiamo?

  Per esempio, le colonne <math|(1,0,0)<rsup|T>> e <math|(0,1,0)<rsup|T>>
  generano il piano <math|z=0>. Aggiungere <math|b=(2,3,0)<rsup|T>> lascia il
  rango uguale a 2: i coefficienti 2 e 3 risolvono il sistema. Aggiungere
  <math|b=(0,0,1)<rsup|T>> porta invece il rango a 3: nessuna combinazione
  delle colonne iniziali può produrre la terza componente 1.

  <\concetto|Teorema di Rouché\<#2013\>Capelli>
    Per <math|A\<in\>M<rsub|m,n>(K)> e <math|b\<in\>K<rsup|m>>, il sistema
    <math|A*x=b> è compatibile se e solo se

    <\equation*>
      <math-up|rank>(A)=<math-up|rank>(A\|b).
    </equation*>
  </concetto>

  Scriviamo <math|U> per lo span delle colonne di <math|A> e <math|U'> per
  quello delle colonne di <math|(A\|b)>. Abbiamo sempre
  <math|U\<subseteq\>U'>.

  Se il sistema è compatibile, <math|b\<in\>U>: sostituendo a <math|b> una
  sua combinazione delle colonne, ogni combinazione in <math|U'> diventa una
  combinazione in <math|U>. Quindi <math|U'=U> e i ranghi coincidono.

  Viceversa, se i ranghi coincidono, <math|U,U'> sono sottospazi di
  dimensione finita uguale, con <math|U\<subseteq\>U'>. Per il risultato del
  capitolo 6, sono uguali. In particolare <math|b\<in\>U'> appartiene a
  <math|U>, quindi è una combinazione delle colonne di <math|A>. Il sistema è
  compatibile.

  <figura|<image|assets/rouche.pdf|135.0mm|47.2mm||>|Il sistema è compatibile
  quando aggiungere <math|b> lascia invariata la dimensione dello spazio
  delle colonne. Nel caso illustrato il rango resta 2 se <math|b> è nel
  piano; sale a 3 se ne esce.>

  Il criterio decide l'esistenza. Per l'unicità serve anche il nucleo: se il
  rango comune è <math|r>, un sistema compatibile ha <math|n-r> parametri
  liberi, perché <math|dim ker F<rsub|A>=n-r>. Le informazioni lavorano
  insieme: prima confrontiamo i ranghi, poi sottraiamo dal numero delle
  incognite.

  <section|Perché il rango è il numero di pivot>

  Cominciamo con una riduzione concreta. Le mosse
  <math|R<rsub|2>\<leftarrow\>R<rsub|2>-2R<rsub|1>>,
  <math|R<rsub|3>\<leftarrow\>R<rsub|3>-R<rsub|1>> e poi
  <math|R<rsub|3>\<leftarrow\>R<rsub|3>-R<rsub|2>> portano da <math|A> a
  <math|S>:

  <\equation*>
    A=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|2>|<cell|5>|<cell|7>>|<row|<cell|1>|<cell|3>|<cell|4>>>>>,<space|2em>S=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>.
  </equation*>

  In <math|S> i pivot sono nelle colonne 1 e 2. Le due colonne
  <math|S<rsub|1>=(1,0,0)<rsup|T>> e <math|S<rsub|2>=(2,1,0)<rsup|T>> sono
  indipendenti. Nella relazione <math|\<alpha\>S<rsub|1>+\<beta\>S<rsub|2>=0>
  leggiamo prima la seconda componente: dà <math|\<beta\>=0>. La prima dà poi
  <math|\<alpha\>=0>.

  La terza colonna è <math|S<rsub|3>=S<rsub|1>+S<rsub|2>>. Le prime due
  formano dunque una base dello spazio delle colonne: il rango è 2, come il
  numero dei pivot.

  <subsection|Perché le colonne pivot sono indipendenti>

  Prendiamo ora una matrice <math|S> già a scala, con <math|k> righe non
  nulle e pivot nelle colonne <math|j<rsub|1>\<less\>\<cdots\>\<less\>j<rsub|k>>.
  Le sue colonne pivot sono indipendenti. Ripetiamo la lettura dal basso
  fatta nell'esempio.

  Per vederlo, supponiamo una loro combinazione nulla e guardiamo la riga
  <math|k>: le prime <math|k-1> colonne pivot hanno lì zero, mentre l'ultima
  ha il pivot <math|p<rsub|k>\<neq\>0>. Il coefficiente dell'ultima colonna
  deve essere zero. Nella riga <math|k-1> resta allora soltanto il penultimo
  coefficiente moltiplicato per il suo pivot: anch'esso è zero. Risalendo li
  annulliamo tutti.

  <subsection|Perché bastano e perché il rango si conserva>

  Tutte le colonne di <math|S> hanno zero nelle componenti dalla <math|k+1>
  in poi. Stanno quindi nel sottospazio <math|<math-up|span>(e<rsub|1>,\<ldots\>,e<rsub|k>)>,
  di dimensione <math|k>.

  Le <math|k> colonne pivot, indipendenti in quello spazio, ne formano una
  base. Generano perciò tutte le altre colonne. Abbiamo dimostrato
  <math|<math-up|rank>(S)=k>. Se <math|S=0>, lo spazio delle colonne è nullo
  e il risultato vale con <math|k=0>.

  Rimane il punto delicato: perché il rango della matrice iniziale <math|A> è
  lo stesso? Le operazioni di riga possono cambiare lo span delle colonne;
  non possiamo dire che gli spazi siano uguali.

  Possiamo però usare qualcosa che sappiamo restare uguale: le soluzioni del
  sistema omogeneo. Se Gauss porta <math|A> in <math|S>, allora <math|ker
  F<rsub|A>=ker F<rsub|S>>. Il teorema rango\<#2013\>nullità dà

  <\equation*>
    n-<math-up|rank>(A)=dim ker F<rsub|A>=dim ker
    F<rsub|S>=n-<math-up|rank>(S).
  </equation*>

  Sottraendo, i ranghi coincidono. Dunque <strong|il rango di una matrice è
  il numero dei pivot di qualunque sua forma a scala>. La dimostrazione non
  ha usato l'uguaglianza tra rango per righe e per colonne: la dimostreremo
  adesso.

  <section|Rango per righe e rango per colonne>

  In una matrice <math|m\<times\>n> le righe sono vettori di
  <math|K<rsup|n>>, le colonne di <math|K<rsup|m>>. I loro span possono
  vivere in spazi diversi. Eppure hanno la stessa dimensione.

  Riguardiamo la matrice <math|S> appena calcolata. Le righe non nulle sono
  <math|r<rsub|1>=(1,2,3)> e <math|r<rsub|2>=(0,1,1)>. Se
  <math|\<alpha\>r<rsub|1>+\<beta\>r<rsub|2>=0>, la prima componente dà
  <math|\<alpha\>=0>; la seconda dà poi <math|\<beta\>=0>.

  Per le colonne avevamo letto dal basso; per le righe cominciamo da
  sinistra. Otteniamo in entrambi i casi due vettori indipendenti.

  Passiamo ora a una qualunque forma a scala <math|S>. Abbiamo appena
  dimostrato che lo spazio delle colonne ha dimensione <math|k>.

  Anche le <math|k> righe non nulle sono indipendenti: in una combinazione
  nulla, la colonna del primo pivot obbliga il coefficiente della prima riga
  a essere zero. Nella colonna del secondo pivot, tolto quel primo
  contributo, deve annullarsi il secondo coefficiente. Proseguendo si
  annullano tutti.

  Queste righe generano lo spazio delle righe, quindi anche il rango per
  righe di <math|S> è <math|k>.

  Le operazioni di riga conservano lo span delle righe, come dimostrato nel
  capitolo 9; conservano il rango per colonne, come appena dimostrato
  mediante il nucleo. Tornando ad <math|A>, entrambi i ranghi rimangono
  <math|k>. È provata l'uguaglianza.

  Ne seguono due fatti utili: <math|<math-up|rank>(A)\<leq\>min(m,n)> e
  <math|<math-up|rank>(A<rsup|T>)=<math-up|rank>(A)>. Il primo viene dal
  numero massimo di vettori indipendenti e dalla dimensione degli ambienti;
  il secondo perché trasporre scambia righe e colonne.

  <subsection|Quali colonne conservare nella matrice iniziale?>

  Nel nostro esempio <math|A<rsub|3>=A<rsub|1>+A<rsub|2>>, esattamente come
  per <math|S>. Le due colonne iniziali <math|A<rsub|1>=(1,2,1)<rsup|T>> e
  <math|A<rsub|2>=(2,5,3)<rsup|T>> sono indipendenti: le prime due componenti
  di una relazione nulla danno <math|\<alpha\>+2\<beta\>=0> e
  <math|2\<alpha\>+5\<beta\>=0>, da cui <math|\<beta\>=\<alpha\>=0>. Sono
  quindi una base dello spazio delle colonne di <math|A>.

  Abbiamo scelto le colonne 1 e 2 in <math|S>, poi abbiamo preso le colonne
  con gli stessi indici in <math|A>. Ecco la giustificazione generale. Gli
  indici delle colonne pivot della forma a scala scelgono una base fra le
  colonne <em|originali>.

  Infatti <math|A*c=0\<Leftrightarrow\>S*c=0> per ogni colonna di
  coefficienti <math|c>: tutte le relazioni lineari tra le colonne si
  conservano. Le colonne pivot di <math|S> sono indipendenti e ogni altra
  colonna è una loro combinazione.

  Queste relazioni conservate giustificano la scelta delle corrispondenti
  colonne di <math|A> come base.

  <section|Matrici elementari: scrivere le mosse come prodotti>

  Per combinare le righe di una matrice possiamo usare un'altra matrice a
  sinistra. La riga <math|i> di <math|P*A> è la combinazione delle righe di
  <math|A> con coefficienti dati dalla riga <math|i> di <math|P>. In
  particolare <math|e<rsub|i><rsup|T>A> seleziona la riga <math|i>.

  L'identità <math|I<rsub|m>> ha 1 sulla diagonale e zero altrove, quindi
  lascia ferme tutte le righe. Cambiandone una o due otteniamo le tre
  <strong|matrici elementari>:

  <\itemize>
    <item><math|P<rsub|i*j>> è l'identità con le righe <math|i,j> scambiate.
    Il prodotto <math|P<rsub|i*j>A> scambia quelle righe; ripetendo lo
    scambio si torna indietro, quindi <math|P<rsub|i*j><rsup|-1>=P<rsub|i*j>>.

    <item><math|D<rsub|i>(\<lambda\>)> è l'identità con
    <math|\<lambda\>\<neq\>0> al posto dell'1 diagonale in posizione
    <math|i>. Il prodotto moltiplica soltanto la riga <math|i> per
    <math|\<lambda\>>. L'inversa è <math|D<rsub|i>(\<lambda\><rsup|-1>)>.

    <item><math|T<rsub|i*j>(\<lambda\>)=I<rsub|m>+\<lambda\>E<rsub|i*j>>, per
    <math|i\<neq\>j>, dove <math|E<rsub|i*j>> ha un solo 1 in posizione
    <math|(i,j)>. Il prodotto sostituisce <math|R<rsub|i>> con
    <math|R<rsub|i>+\<lambda\>R<rsub|j>>. L'inversa è
    <math|T<rsub|i*j>(-\<lambda\>)>.
  </itemize>

  Usiamo <math|T<rsub|i*j>(\<lambda\>)> per distinguere la matrice che esegue
  la mossa dalla matrice canonica <math|E<rsub|i*j>>. Per esempio

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-4>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|4>|<cell|5>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|-3>>>>>.
  </equation*>

  La seconda riga è diventata la seconda meno quattro volte la prima.
  Cambiando <math|-4> in 4 nella matrice a sinistra annulliamo la mossa.

  Una matrice diagonale è invertibile se tutti gli elementi diagonali sono
  non nulli: basta invertirli. Se uno è zero, il corrispondente vettore
  canonico va a zero, impedendo l'invertibilità.

  <section|Invertibilità e gruppo lineare generale>

  Una matrice quadrata <math|A> è <strong|invertibile> se esiste <math|B> con
  <math|A*B=B*A=I>. Scriviamo <math|B=A<rsup|-1>>.

  Il <strong|gruppo lineare generale> <math|<math-up|GL><rsub|m>(K)>
  raccoglie le invertibili di ordine <math|m>. Il prodotto è associativo, ha
  l'identità come neutro e rimane invertibile, perché

  <\equation*>
    (P*Q)<rsup|-1>=Q<rsup|-1>P<rsup|-1>.
  </equation*>

  Infatti <math|(P*Q)(Q<rsup|-1>P<rsup|-1>)=P(Q*Q<rsup|-1>)P<rsup|-1>=I>; lo
  stesso conto nell'altro ordine dà <math|I>.

  L'inversa è unica: se <math|B,C> sono inverse di <math|A>, allora
  <math|B=B(A*C)=(B*A)C=C>.

  Per <math|m=1> otteniamo gli scalari non nulli. Per <math|m\<geq\>2> il
  prodotto non è commutativo: usiamo le invertibili <math|P,Q> del capitolo
  8, lasciando ferme le eventuali altre coordinate.

  Se Gauss esegue prima la mossa <math|E<rsub|1>>, poi <math|E<rsub|2>>, fino
  a <math|E<rsub|r>>, il risultato è

  <\equation*>
    S=E<rsub|r>\<cdots\>E<rsub|2>E<rsub|1>A.
  </equation*>

  La prima mossa è il fattore più vicino ad <math|A>. Il prodotto delle
  elementari è invertibile, perché ogni fattore lo è.

  <strong|Criterio di invertibilità.> Per una matrice quadrata di ordine
  <math|m>, essere invertibile equivale ad avere rango <math|m>.

  Se è invertibile, <math|A*x=0> implica <math|x=A<rsup|-1>0=0>;
  rango\<#2013\>nullità dà rango <math|m>.

  Per l'altra direzione, se il rango è <math|m>, la forma a scala ha un pivot
  in ogni riga e in ogni colonna. Possiamo dividere ogni riga per il pivot e,
  risalendo dal basso, annullare anche gli elementi sopra i pivot. Arriviamo
  a <math|I<rsub|m>>.

  Dunque <math|E*A=I<rsub|m>> per un prodotto invertibile <math|E> di
  elementari. Moltiplicando per <math|E<rsup|-1>> otteniamo
  <math|A=E<rsup|-1>>: anche <math|A> è invertibile e <math|A<rsup|-1>=E>.

  Lo stesso ragionamento mostra che <strong|ogni matrice invertibile è
  prodotto di matrici elementari>: se <math|E<rsub|r>\<cdots\>E<rsub|1>A=I>,
  allora <math|A=E<rsub|1><rsup|-1>\<cdots\>E<rsub|r><rsup|-1>>, e anche le
  inverse sono elementari. \SGenerare\T qui significa ottenere per
  <em|prodotti>, non per combinazioni lineari.

  <subsection|Per proseguire: equivalenza e forma completamente ridotta>

  Due matrici <math|A,B\<in\>M<rsub|m,n>(K)> sono <strong|equivalenti a
  sinistra> se <math|B=P*A> con <math|P> invertibile. L'identità,
  <math|A=P<rsup|-1>B> e <math|C=Q*B=Q*P*A> danno riflessività, simmetria e
  transitività. Poiché le invertibili sono prodotti di elementari, equivale a
  passare da <math|A> a <math|B> con mosse di riga.

  Una matrice a scala è <strong|completamente ridotta> se ogni pivot è 1 e le
  altre entrate della sua colonna sono nulle. Dividiamo per i pivot e
  annulliamo sopra di essi, dal basso: questo ne prova l'esistenza. In ogni
  classe di equivalenza a sinistra questa forma è unica; riportiamo l'unicità
  senza prova, come nel corso.

  L'<strong|equivalenza a destra> richiede <math|B=A*Q> con <math|Q>
  invertibile. Corrisponde alle tre mosse sulle colonne: scambio, prodotto
  per uno scalare non nullo, aggiunta di un multiplo di un'altra colonna. Per
  esempio <math|A(I+\<lambda\>E<rsub|i*j>)> aggiunge <math|\<lambda\>> volte
  la colonna <math|i> alla <math|j>. Identità, inversa e prodotto verificano
  le tre proprietà come a sinistra.

  Per mantenere le stesse incognite usiamo mosse di <em|riga> sulla matrice
  completa. Le mosse di colonna richiedono un cambiamento di variabili.

  <\verifica|10>
    <strong|10.1.> Per quali <math|h\<in\>\<bbb-R\>> il sistema <math|x+y=1>,
    <math|2x+2y=h> è compatibile? Spiega con Rouché\<#2013\>Capelli e
    descrivi tutte le soluzioni nei casi compatibili.

    <strong|10.2.> Riduci la matrice reale
    <math|A=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|2>>>>>>
    a identità. Scrivi le due matrici elementari delle mosse e ricava
    <math|A<rsup|-1>>. Verifica il prodotto in entrambi gli ordini.
  </verifica>

  <appendix|Soluzioni ragionate>

  Prova a scegliere un primo passo prima di leggere. Le soluzioni motivano le
  scelte, svolgono i passaggi e controllano il risultato. I numeri richiamano
  il capitolo e l'esercizio.

  <section|Insiemi, applicazioni e campi>

  <strong|1.1.> Il quadrato manda sia 1 sia <math|-1> in 1: non è iniettivo
  su <math|\<bbb-R\>>.

  È invece suriettivo sul codominio <math|[0,+\<infty\>)>: dato
  <math|y\<geq\>0>, il reale <math|x=<sqrt|y>> soddisfa <math|x<rsup|2>=y>.

  Restringiamo il dominio a <math|[0,+\<infty\>)>. Se
  <math|x<rsup|2>=x'<rsup|2>> con <math|x,x'\<geq\>0>, allora
  <math|(x-x')(x+x')=0>. Se <math|x+x'=0>, entrambi sono zero; altrimenti
  <math|x-x'=0>. In entrambi i casi <math|x=x'>.

  La restrizione è dunque biiettiva e la sua inversa è <math|g(y)=<sqrt|y>>.
  Controlliamo le due composizioni: <math|(<sqrt|y>)<rsup|2>=y> per
  <math|y\<geq\>0>, e <math|<sqrt|x<rsup|2>>=x> per <math|x\<geq\>0>. La
  seconda uguaglianza spiega perché abbiamo ristretto il dominio.

  <strong|1.2.> Da <math|a=-a> sommiamo <math|a> ai due membri e otteniamo
  <math|2a=0>. Nei reali, 2 è non nullo: moltiplicando per <math|1/2> segue
  <math|a=0>.

  In <math|<math-up|F><rsub|2>> invece <math|1=-1>, perché <math|1+1=0>.
  Quindi <math|a=1> è un controesempio alla conclusione. Il passaggio che
  fallisce è la divisione per 2, che in questo campo è zero.

  <section|Numeri complessi>

  <strong|2.1.> Per rendere reale il denominatore usiamo il coniugato
  <math|1-i>:

  <\equation*>
    <frac|2+i|1+i>=<frac|(2+i)(1-i)|2>=<frac|2-2i+i-i<rsup|2>|2>=<frac|3-i|2>.
  </equation*>

  Verifichiamo nella direzione inversa: <math|((3-i)/2)(1+i)=(3+3i-i-i<rsup|2>)/2=(4+2i)/2=2+i>.
  Non basta cambiare il segno nel denominatore: il coniugato moltiplica anche
  il numeratore.

  <strong|2.2.> Per <math|z<rsup|4>=1> il modulo è 1 e gli argomenti sono
  <math|k\<pi\>/2>, con <math|k=0,1,2,3>. Otteniamo <math|1,i,-1,-i>, vertici
  di un quadrato sugli assi.

  Per <math|z<rsup|4>=-1> gli argomenti sono
  <math|(\<pi\>+2k\<pi\>)/4=\<pi\>/4+k\<pi\>/2>. Il nuovo quadrato è ruotato
  di <math|\<pi\>/4>, non di <math|\<pi\>>: l'angolo del termine noto è stato
  diviso per 4.

  Le radici sono i quattro numeri <math|(\<pm\>1\<pm\>i)/<sqrt|2>>, con segni
  indipendenti. Il quadrato di ciascuno è <math|i> oppure <math|-i>, quindi
  la quarta potenza è <math|-1>. La formula generale assicura che la lista è
  completa.

  <section|Polinomi e radici>

  <strong|3.1.> Fattorizziamo il pezzo interno:
  <math|z<rsup|2>+1=(z-i)(z+i)>. Quindi il polinomio dato è
  <math|(z-i)<rsup|3>(z+i)<rsup|3>>. Ha due radici distinte, <math|i> e
  <math|-i>, entrambe di molteplicità 3; la somma delle molteplicità è 6,
  uguale al grado.

  Un polinomio reale che avesse radici <math|i>, <math|2i>, 1 dovrebbe avere
  anche <math|-i> e <math|-2i>. Sono cinque valori distinti, troppi per un
  polinomio di grado 3. La richiesta è impossibile.

  <strong|3.2.> Poiché i coefficienti sono reali, a <math|2+i> deve
  accompagnarsi <math|2-i> con la stessa molteplicità 2. Le due radici
  esauriscono già il grado 4.

  Il prodotto dei loro fattori è <math|(z-(2+i))(z-(2-i))=z<rsup|2>-4z+5>.
  Dunque il polinomio cercato è

  <\equation*>
    P(z)=(z<rsup|2>-4z+5)<rsup|2>=z<rsup|4>-8z<rsup|3>+26z<rsup|2>-40z+25.
  </equation*>

  È monico (coefficiente direttivo 1), reale e di grado 4. La fattorizzazione
  mostra le due radici doppie; non resta spazio per altri fattori. Il
  requisito \Smonico\T fissa il coefficiente e rende unico il polinomio.

  <section|Spazi vettoriali e sottospazi>

  <strong|4.1.> La valutazione nel punto 1 rispetta le due operazioni:
  <math|(p+q)(1)=p(1)+q(1)> e <math|(\<alpha\>p)(1)=\<alpha\>p(1)>. Se
  <math|p(1)=q(1)=0>, anche la somma vale zero in 1; così ogni multiplo. Il
  polinomio nullo appartiene all'insieme. I tre controlli dimostrano che è un
  sottospazio.

  L'insieme con <math|p(1)=2> non contiene il polinomio nullo, quindi non è
  un sottospazio. Per esempio contiene il polinomio costante 2, ma non il suo
  multiplo per zero.

  <strong|4.2.> Isoliamo <math|z=-x-y> e lasciamo liberi <math|x=s,y=t>. Ogni
  soluzione si scrive

  <\equation*>
    (s,t,-s-t)=s(1,0,-1)+t(0,1,-1).
  </equation*>

  Viceversa, questa espressione ha sempre somma delle tre componenti zero,
  quindi non produce vettori estranei a <math|H>. Per <math|s=t=1> otteniamo
  <math|(1,1,-2)>, che appartiene a <math|H>. Il controllo diretto
  <math|1+1-2=0> conferma il risultato.

  <section|Span, indipendenza e basi>

  <strong|5.1.> Il secondo vettore è il doppio del primo. Ogni combinazione è

  <\equation*>
    \<alpha\>(1,2)+\<beta\>(2,4)=(\<alpha\>+2\<beta\>)(1,2).
  </equation*>

  Lo span è quindi la retta <math|{t(1,2):t\<in\>\<bbb-R\>}>.

  La relazione <math|2(1,2)-(2,4)=0> è non banale, dunque i vettori sono
  dipendenti.

  Per il vettore richiesto abbiamo, per esempio, <math|(3,6)=3(1,2)+0(2,4)> e
  <math|(3,6)=1(1,2)+1(2,4)>. La dipendenza permette proprio queste scritture
  diverse.

  <strong|5.2.> Cerchiamo <math|\<alpha\>,\<beta\>> con
  <math|\<alpha\>(1,1)+\<beta\>(1,-1)=(5,-1)>. Le componenti impongono
  <math|\<alpha\>+\<beta\>=5> e <math|\<alpha\>-\<beta\>=-1>. Sommandole
  troviamo <math|2\<alpha\>=4>, quindi <math|\<alpha\>=2> e
  <math|\<beta\>=3>.

  Le coordinate sono <math|(2,3)>; ricostruendo,
  <math|2(1,1)+3(1,-1)=(5,-1)>.

  Una famiglia contenente zero ha la relazione <math|1\<cdot\>0=0>, con
  coefficienti nulli sugli altri vettori: non è indipendente, e quindi non è
  una base.

  <section|Dimensione e completamento>

  <strong|6.1.> Dal teorema del fattore <math|p(2)=0> equivale a
  <math|p=(X-2)q>, con <math|q> di grado al più 1, incluso zero. Scriviamo
  <math|q=a+b*X>. Allora

  <\equation*>
    p=a(X-2)+b*X(X-2).
  </equation*>

  Quindi <math|(X-2,X(X-2))> genera <math|W>.

  Per l'indipendenza, nella relazione <math|a(X-2)+b*X(X-2)=0> il
  coefficiente di <math|X<rsup|2>> è <math|b>, che deve essere zero. Rimane
  <math|a(X-2)=0>, il cui coefficiente di <math|X> è <math|a>, dunque
  anch'esso è zero. La famiglia è una base di due elementi: <math|dim W=2>.

  <strong|6.2.> Possiamo aggiungere <math|e<rsub|2>=(0,1)>. Da
  <math|\<alpha\>(2,3)+\<beta\>(0,1)=(0,0)> la prima componente dà
  <math|2\<alpha\>=0>, quindi <math|\<alpha\>=0>. La seconda dà allora
  <math|\<beta\>=0>. I due vettori sono indipendenti e sono tanti quanti la
  dimensione 2 del piano, quindi formano una base.

  Quattro vettori di <math|\<bbb-R\><rsup|3>> sono invece più della
  dimensione: se fossero indipendenti, il lemma di scambio imporrebbe
  <math|4\<leq\>3>, impossibile. Dunque sono sempre dipendenti.

  <section|Somme e formula di Grassmann>

  <strong|7.1.> Scegliamo <math|W=<math-up|span>((1,-1))>. Le due rette sono
  distinte e il sistema <math|\<alpha\>(1,1)=\<beta\>(1,-1)> dà
  <math|\<alpha\>=\<beta\>> e <math|\<alpha\>=-\<beta\>>, quindi
  <math|\<alpha\>=\<beta\>=0>: l'intersezione è nulla.

  I due vettori formano la base studiata nel capitolo 5 e generano il piano.
  Abbiamo quindi <math|\<bbb-R\><rsup|2>=U\<#2295\>W>. La scomposizione è

  <\equation*>
    (3,1)=2(1,1)+1(1,-1)=(2,2)+(1,-1).
  </equation*>

  È unica perché la differenza fra due primi addendi dovrebbe stare
  nell'intersezione, che contiene soltanto zero.

  <strong|7.2.> Poniamo <math|q=dim(U\<cap\>W)>. Grassmann dà
  <math|dim(U+W)=6-q>. La somma è contenuta in <math|\<bbb-R\><rsup|4>>,
  perciò <math|6-q\<leq\>4> e <math|q\<geq\>2>. L'intersezione è contenuta in
  ciascuno spazio di dimensione 3, quindi <math|q\<leq\>3>. I soli valori
  possibili sono 2 e 3.

  Per 2 scegliamo <math|U=<math-up|span>(e<rsub|1>,e<rsub|2>,e<rsub|3>)> e
  <math|W=<math-up|span>(e<rsub|1>,e<rsub|2>,e<rsub|4>)>: l'intersezione è
  <math|<math-up|span>(e<rsub|1>,e<rsub|2>)>.

  Per 3 basta scegliere <math|U=W=<math-up|span>(e<rsub|1>,e<rsub|2>,e<rsub|3>)>.
  I due esempi realizzano tutti i valori consentiti.

  <section|Matrici, nucleo e immagine>

  <strong|8.1.> Il rango è la dimensione dell'immagine. Un sottospazio di
  <math|\<bbb-R\><rsup|3>> di dimensione 3 coincide con tutto
  <math|\<bbb-R\><rsup|3>>, quindi ogni <math|b> è raggiunto: tutti i sistemi
  <math|A*x=b> sono compatibili.

  Il dominio ha dimensione 5; rango\<#2013\>nullità dà <math|dim ker
  F<rsub|A>=5-3=2>. Il nucleo contiene vettori non nulli, perciò
  l'applicazione non è iniettiva. Ogni sistema ha una soluzione particolare
  più due parametri di libertà.

  <strong|8.2.> Per trovare il nucleo scriviamo le tre equazioni di
  <math|A*x=0>. Sottraiamo quattro volte la prima dalla seconda: otteniamo
  <math|-3x<rsub|2>-6x<rsub|3>=0>, dunque <math|x<rsub|2>=-2x<rsub|3>>. La
  prima diventa <math|x<rsub|1>=x<rsub|3>>.

  La terza riga della matrice è due volte la seconda meno la prima, quindi
  non aggiunge un vincolo. Ne segue

  <\equation*>
    ker F<rsub|A>=<math-up|span>((1,-2,1)<rsup|T>).
  </equation*>

  La terza colonna è due volte la seconda meno la prima.

  Le prime due, <math|c<rsub|1>=(1,4,7)<rsup|T>> e
  <math|c<rsub|2>=(2,5,8)<rsup|T>>, sono indipendenti: se
  <math|a*c<rsub|1>+b*c<rsub|2>=0>, le prime due componenti impongono
  <math|a+2b=0>, <math|4a+5b=0>; sostituendo <math|a=-2b> ricaviamo
  <math|-3b=0>, poi <math|a=0>.

  Sono una base dell'immagine, che ha dimensione 2.

  Entrambe soddisfano <math|x-2y+z=0>: l'immagine coincide con quel piano,
  perché è un sottospazio di dimensione 2 contenuto in un piano di dimensione
  2.

  Le dimensioni sommano a <math|1+2=3>. Infine
  <math|A(1,0,0)<rsup|T>=c<rsub|1>>. Ogni soluzione cercata è quindi

  <\equation*>
    x=(1,0,0)<rsup|T>+t(1,-2,1)<rsup|T>,<space|1em>t\<in\>\<bbb-R\>.
  </equation*>

  Il controllo consiste in <math|A(1,-2,1)<rsup|T>=c<rsub|1>-2c<rsub|2>+c<rsub|3>=0>:
  il termine con il parametro non cambia il risultato.

  <section|Gauss e sottospazi>

  <strong|9.1.> In prima posizione compare zero. Scambiamo le prime due
  righe: il sistema diventa <math|x<rsub|1>+x<rsub|2>=1>,
  <math|x<rsub|2>+x<rsub|3>=2>, <math|2x<rsub|1>+2x<rsub|2>=2>.

  Sottraendo due volte la prima dalla terza otteniamo <math|0=0>. Ci sono due
  pivot e tre incognite, quindi una variabile libera.

  Poniamo <math|x<rsub|3>=t>: la seconda dà <math|x<rsub|2>=2-t>, la prima
  <math|x<rsub|1>=t-1>. Pertanto

  <\equation*>
    x=(-1,2,0)<rsup|T>+t(1,-1,1)<rsup|T>,<space|1em>t\<in\>\<bbb-R\>.
  </equation*>

  Il primo vettore è una soluzione particolare; il secondo genera il nucleo.
  Nel sistema originale le tre espressioni diventano, rispettivamente,
  <math|(2-t)+t=2>, <math|(t-1)+(2-t)=1> e <math|2(t-1)+2(2-t)=2>.

  <strong|9.2.> Per l'intersezione conviene usare equazioni: dal capitolo
  sappiamo che <math|U> ha equazione <math|x+y+z=0>. Aggiungiamo <math|x=z>,
  che descrive <math|W>. Ponendo <math|z=t>, otteniamo <math|x=t>,
  <math|y=-2t>. Dunque una base di <math|U\<cap\>W> è il solo vettore
  <math|(1,-2,1)<rsup|T>>.

  Entrambi gli spazi sono piani: <math|U> ha i due generatori indipendenti
  dati, mentre <math|W=<math-up|span>((1,0,1)<rsup|T>,(0,1,0)<rsup|T>)>.

  Grassmann dà <math|dim(U+W)=2+2-1=3>, quindi <math|U+W=\<bbb-R\><rsup|3>>.

  Possiamo anche vederne una base: ai due generatori di <math|U> aggiungiamo
  <math|(0,1,0)<rsup|T>\<in\>W>. Questo vettore non sta in <math|U>, perché
  la somma delle sue componenti è 1, e quindi completa i due generatori a una
  base dello spazio.

  <section|Rango e invertibilità>

  <strong|10.1.> La matrice dei coefficienti ha due righe proporzionali non
  nulle, quindi rango 1.

  Nella matrice completa sottrarre due volte la prima riga dalla seconda dà
  la riga <math|(0,0\|h-2)>. Se <math|h\<neq\>2>, la matrice completa ha
  rango 2 e il sistema è incompatibile.

  Se <math|h=2>, i ranghi sono entrambi 1 e rimane soltanto <math|x+y=1>.
  Ponendo <math|y=t>, tutte le soluzioni sono <math|(x,y)=(1-t,t)>,
  <math|t\<in\>\<bbb-R\>>. C'è un parametro, come prevede
  <math|2-<math-up|rank>(A)=1>.

  <strong|10.2.> Per eliminare l'1 sotto il primo pivot, sottraiamo la prima
  riga dalla seconda. Rimane la matrice con righe <math|(1,1)> e
  <math|(0,1)>.

  Ora sottraiamo la seconda dalla prima e arriviamo all'identità. Le due
  mosse sono

  <\equation*>
    E<rsub|1>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|1>>>>>,<space|2em>E<rsub|2>=<matrix|<tformat|<table|<row|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|1>>>>>.
  </equation*>

  Abbiamo <math|E<rsub|2>E<rsub|1>A=I>, perciò
  <math|A<rsup|-1>=E<rsub|2>E<rsub|1>>. Il prodotto dà

  <\equation*>
    A<rsup|-1>=<matrix|<tformat|<table|<row|<cell|2>|<cell|-1>>|<row|<cell|-1>|<cell|1>>>>>.
  </equation*>

  Nel prodotto <math|A*A<rsup|-1>> le quattro entrate sono <math|2-1=1>,
  <math|-1+1=0>, <math|2-2=0>, <math|-1+2=1>.

  Nel prodotto <math|A<rsup|-1>A> sono <math|2-1=1>, <math|2-2=0>,
  <math|-1+1=0>, <math|-1+2=1>. Otteniamo l'identità in entrambi gli ordini,
  come richiede la definizione.
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
    <associate|auto-10|<tuple|2|9>>
    <associate|auto-11|<tuple|2.1|9>>
    <associate|auto-12|<tuple|2.2|9>>
    <associate|auto-13|<tuple|2.3|10>>
    <associate|auto-14|<tuple|2.4|11>>
    <associate|auto-15|<tuple|3|13>>
    <associate|auto-16|<tuple|3.1|13>>
    <associate|auto-17|<tuple|3.2|13>>
    <associate|auto-18|<tuple|3.3|14>>
    <associate|auto-19|<tuple|3.4|15>>
    <associate|auto-2|<tuple|?|2>>
    <associate|auto-20|<tuple|3.5|16>>
    <associate|auto-21|<tuple|4|17>>
    <associate|auto-22|<tuple|4.1|17>>
    <associate|auto-23|<tuple|4.2|18>>
    <associate|auto-24|<tuple|4.3|19>>
    <associate|auto-25|<tuple|4.4|20>>
    <associate|auto-26|<tuple|5|21>>
    <associate|auto-27|<tuple|5.1|21>>
    <associate|auto-28|<tuple|5.2|22>>
    <associate|auto-29|<tuple|5.3|23>>
    <associate|auto-3|<tuple|?|2>>
    <associate|auto-30|<tuple|5.4|24>>
    <associate|auto-31|<tuple|6|25>>
    <associate|auto-32|<tuple|6.1|25>>
    <associate|auto-33|<tuple|6.2|25>>
    <associate|auto-34|<tuple|6.3|27>>
    <associate|auto-35|<tuple|6.4|27>>
    <associate|auto-36|<tuple|6.5|28>>
    <associate|auto-37|<tuple|7|30>>
    <associate|auto-38|<tuple|7.1|30>>
    <associate|auto-39|<tuple|7.2|31>>
    <associate|auto-4|<tuple|1|5>>
    <associate|auto-40|<tuple|7.3|31>>
    <associate|auto-41|<tuple|7.4|33>>
    <associate|auto-42|<tuple|8|34>>
    <associate|auto-43|<tuple|8.1|34>>
    <associate|auto-44|<tuple|8.2|35>>
    <associate|auto-45|<tuple|8.3|35>>
    <associate|auto-46|<tuple|8.4|36>>
    <associate|auto-47|<tuple|8.5|37>>
    <associate|auto-48|<tuple|9|39>>
    <associate|auto-49|<tuple|9.1|39>>
    <associate|auto-5|<tuple|1.1|5>>
    <associate|auto-50|<tuple|9.2|40>>
    <associate|auto-51|<tuple|9.3|40>>
    <associate|auto-52|<tuple|9.4|41>>
    <associate|auto-53|<tuple|9.5|42>>
    <associate|auto-54|<tuple|10|44>>
    <associate|auto-55|<tuple|10.1|44>>
    <associate|auto-56|<tuple|10.2|45>>
    <associate|auto-57|<tuple|10.3|45>>
    <associate|auto-58|<tuple|10.4|46>>
    <associate|auto-59|<tuple|10.5|47>>
    <associate|auto-6|<tuple|1.2|6>>
    <associate|auto-60|<tuple|A|48>>
    <associate|auto-61|<tuple|A.1|48>>
    <associate|auto-62|<tuple|A.2|48>>
    <associate|auto-63|<tuple|A.3|48>>
    <associate|auto-64|<tuple|A.4|49>>
    <associate|auto-65|<tuple|A.5|49>>
    <associate|auto-66|<tuple|A.6|49>>
    <associate|auto-67|<tuple|A.7|50>>
    <associate|auto-68|<tuple|A.8|50>>
    <associate|auto-69|<tuple|A.9|50>>
    <associate|auto-7|<tuple|1.3|6>>
    <associate|auto-70|<tuple|A.10|51>>
    <associate|auto-8|<tuple|1.4|7>>
    <associate|auto-9|<tuple|1.5|8>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Dalle
      coordinate alle strutture> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn><no-page-break>

      Mappa del percorso <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      Il periodo e le fonti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Insiemi,
      applicazioni e campi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn><no-page-break>

      1.1<space|2spc>Insiemi e uguaglianza: guardare gli elementi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>

      1.2<space|2spc>Applicazioni, iniettività e suriettività
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>

      1.3<space|2spc>Composizione e inversa: tornare al punto di partenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>

      1.4<space|2spc>Campi: quali regole servono per calcolare?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>

      1.5<space|2spc>Un campo piccolo: due elementi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Numeri
      complessi: operazioni, forma polare e radici>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn><no-page-break>

      2.1<space|2spc>Da una coppia reale a un numero complesso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>

      2.2<space|2spc>Modulo e coniugato: costruire l'inverso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>

      2.3<space|2spc>Forma polare e significato del prodotto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>

      2.4<space|2spc>Radici ennesime: perché sono più di una?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Polinomi:
      fattorizzazione e molteplicità delle radici>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn><no-page-break>

      3.1<space|2spc>Una radice permette di estrarre un fattore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>

      3.2<space|2spc>Teorema fondamentale dell'algebra e induzione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>

      3.3<space|2spc>Molteplicità e numero massimo di radici
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>

      3.4<space|2spc>Coefficienti reali e coppie coniugate
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>

      3.5<space|2spc>Equazioni quadratiche complesse
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Spazi
      vettoriali e sottospazi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21><vspace|0.5fn><no-page-break>

      4.1<space|2spc>Spazio vettoriale: le regole di somma e scalari
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>

      4.2<space|2spc>Polinomi, funzioni e matrici come vettori
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>

      4.3<space|2spc>Sottospazi: quando le operazioni restano dentro
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>

      4.4<space|2spc>Intersezione e unione di sottospazi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Span,
      indipendenza lineare e basi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26><vspace|0.5fn><no-page-break>

      5.1<space|2spc>Combinazioni lineari, span e generatori
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>

      5.2<space|2spc>Indipendenza lineare: rendere unica la scrittura
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>

      5.3<space|2spc>Basi e coordinate rispetto a una base
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>

      5.4<space|2spc>Il campo cambia le combinazioni ammesse
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Dimensione
      e lemma di scambio> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31><vspace|0.5fn><no-page-break>

      6.1<space|2spc>Estrarre una base e completare una famiglia indipendente
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>

      6.2<space|2spc>Lemma di scambio: sostituire senza perdere informazioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>

      6.3<space|2spc>Dimensione: un numero che non dipende dalla base
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>

      6.4<space|2spc>Completamento, sottospazi e criteri per una base
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>

      6.5<space|2spc>Basi di sottospazi di polinomi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Somme,
      somma diretta e formula di Grassmann>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37><vspace|0.5fn><no-page-break>

      7.1<space|2spc>Somma di sottospazi e somma diretta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>

      7.2<space|2spc>Basi della somma diretta e supplementari
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>

      7.3<space|2spc>Formula di Grassmann: contare la parte comune una volta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>

      7.4<space|2spc>Matrici simmetriche e antisimmetriche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Matrici,
      applicazioni lineari e nucleo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42><vspace|0.5fn><no-page-break>

      8.1<space|2spc>Il prodotto di matrici: righe per colonne
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>

      8.2<space|2spc>Sistemi lineari e combinazioni delle colonne
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>

      8.3<space|2spc>Applicazioni lineari, nucleo e immagine
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>

      8.4<space|2spc>Tutte le soluzioni: una particolare più il nucleo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>

      8.5<space|2spc>Rango e teorema rango\<#2013\>nullità
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Eliminazione
      di Gauss e sistemi a scala> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48><vspace|0.5fn><no-page-break>

      9.1<space|2spc>Pivot e variabili libere
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>

      9.2<space|2spc>Operazioni di riga: cambiare la forma conservando le
      soluzioni <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>

      9.3<space|2spc>L'algoritmo e una riduzione completa
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>

      9.4<space|2spc>Contare i parametri e costruire una base del nucleo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>

      9.5<space|2spc>Dalle equazioni ai generatori, e viceversa
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Rango,
      Rouché\<#2013\>Capelli e matrici elementari>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54><vspace|0.5fn><no-page-break>

      10.1<space|2spc>Rouché\<#2013\>Capelli: quando esistono soluzioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>

      10.2<space|2spc>Perché il rango è il numero di pivot
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>

      10.3<space|2spc>Rango per righe e rango per colonne
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>

      10.4<space|2spc>Matrici elementari: scrivere le mosse come prodotti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>

      10.5<space|2spc>Invertibilità e gruppo lineare generale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendice
      A<space|2spc>Soluzioni ragionate> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60><vspace|0.5fn><no-page-break>

      A.1<space|2spc>Insiemi, applicazioni e campi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>

      A.2<space|2spc>Numeri complessi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>

      A.3<space|2spc>Polinomi e radici <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>

      A.4<space|2spc>Spazi vettoriali e sottospazi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>

      A.5<space|2spc>Span, indipendenza e basi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>

      A.6<space|2spc>Dimensione e completamento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>

      A.7<space|2spc>Somme e formula di Grassmann
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-67>

      A.8<space|2spc>Matrici, nucleo e immagine
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>

      A.9<space|2spc>Gauss e sottospazi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>

      A.10<space|2spc>Rango e invertibilità
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70>
    </associate>
  </collection>
</auxiliary>